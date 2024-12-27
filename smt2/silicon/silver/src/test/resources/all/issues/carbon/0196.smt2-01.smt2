(get-info :version)
; (:version "4.12.1")
; Started: 2024-12-27 01:59:17
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
(declare-sort $FVF<q> 0)
(declare-sort $PSF<Q> 0)
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
(declare-fun $SortWrappers.$FVF<q>To$Snap ($FVF<q>) $Snap)
(declare-fun $SortWrappers.$SnapTo$FVF<q> ($Snap) $FVF<q>)
(assert (forall ((x $FVF<q>)) (!
    (= x ($SortWrappers.$SnapTo$FVF<q>($SortWrappers.$FVF<q>To$Snap x)))
    :pattern (($SortWrappers.$FVF<q>To$Snap x))
    :qid |$Snap.$SnapTo$FVF<q>To$Snap|
    )))
(assert (forall ((x $Snap)) (!
    (= x ($SortWrappers.$FVF<q>To$Snap($SortWrappers.$SnapTo$FVF<q> x)))
    :pattern (($SortWrappers.$SnapTo$FVF<q> x))
    :qid |$Snap.$FVF<q>To$SnapTo$FVF<q>|
    )))
; Declaring additional sort wrappers
(declare-fun $SortWrappers.$PSF<Q>To$Snap ($PSF<Q>) $Snap)
(declare-fun $SortWrappers.$SnapTo$PSF<Q> ($Snap) $PSF<Q>)
(assert (forall ((x $PSF<Q>)) (!
    (= x ($SortWrappers.$SnapTo$PSF<Q>($SortWrappers.$PSF<Q>To$Snap x)))
    :pattern (($SortWrappers.$PSF<Q>To$Snap x))
    :qid |$Snap.$SnapTo$PSF<Q>To$Snap|
    )))
(assert (forall ((x $Snap)) (!
    (= x ($SortWrappers.$PSF<Q>To$Snap($SortWrappers.$SnapTo$PSF<Q> x)))
    :pattern (($SortWrappers.$SnapTo$PSF<Q> x))
    :qid |$Snap.$PSF<Q>To$SnapTo$PSF<Q>|
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
; /field_value_functions_declarations.smt2 [q: Ref]
(declare-fun $FVF.domain_q ($FVF<q>) Set<$Ref>)
(declare-fun $FVF.lookup_q ($FVF<q> $Ref) $Ref)
(declare-fun $FVF.after_q ($FVF<q> $FVF<q>) Bool)
(declare-fun $FVF.loc_q ($Ref $Ref) Bool)
(declare-fun $FVF.perm_q ($FPM $Ref) $Perm)
(declare-const $fvfTOP_q $FVF<q>)
; /predicate_snap_functions_declarations.smt2 [Q: Snap]
(declare-fun $PSF.domain_Q ($PSF<Q>) Set<$Snap>)
(declare-fun $PSF.lookup_Q ($PSF<Q> $Snap) $Snap)
(declare-fun $PSF.after_Q ($PSF<Q> $PSF<Q>) Bool)
(declare-fun $PSF.loc_Q ($Snap $Snap) Bool)
(declare-fun $PSF.perm_Q ($PPM $Snap) $Perm)
(declare-const $psfTOP_Q $PSF<Q>)
; Declaring symbols related to program functions (from program analysis)
(declare-fun refs ($Snap $Ref) Set<$Ref>)
(declare-fun refs%limited ($Snap $Ref) Set<$Ref>)
(declare-fun refs%stateless ($Ref) Bool)
(declare-fun refs%precondition ($Snap $Ref) Bool)
(declare-fun testerfieldFull ($Snap $Ref) $Ref)
(declare-fun testerfieldFull%limited ($Snap $Ref) $Ref)
(declare-fun testerfieldFull%stateless ($Ref) Bool)
(declare-fun testerfieldFull%precondition ($Snap $Ref) Bool)
(declare-fun testerFull ($Snap $Ref) $Ref)
(declare-fun testerFull%limited ($Snap $Ref) $Ref)
(declare-fun testerFull%stateless ($Ref) Bool)
(declare-fun testerFull%precondition ($Snap $Ref) Bool)
(declare-fun get ($Snap $Ref) $Ref)
(declare-fun get%limited ($Snap $Ref) $Ref)
(declare-fun get%stateless ($Ref) Bool)
(declare-fun get%precondition ($Snap $Ref) Bool)
(declare-fun testerfield ($Snap $Ref) $Ref)
(declare-fun testerfield%limited ($Snap $Ref) $Ref)
(declare-fun testerfield%stateless ($Ref) Bool)
(declare-fun testerfield%precondition ($Snap $Ref) Bool)
(declare-fun tester ($Snap $Ref) $Ref)
(declare-fun tester%limited ($Snap $Ref) $Ref)
(declare-fun tester%stateless ($Ref) Bool)
(declare-fun tester%precondition ($Snap $Ref) Bool)
; Snapshot variable to be used during function verification
(declare-fun s@$ () $Snap)
; Declaring predicate trigger functions
(declare-fun P%trigger ($Snap $Ref) Bool)
(declare-fun P2%trigger ($Snap $Ref) Bool)
(declare-fun R%trigger ($Snap $Ref) Bool)
(declare-fun R2%trigger ($Snap $Ref) Bool)
(declare-fun Q%trigger ($Snap $Ref) Bool)
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
; /field_value_functions_axioms.smt2 [q: Ref]
(assert (forall ((vs $FVF<q>) (ws $FVF<q>)) (!
    (=>
      (and
        (Set_equal ($FVF.domain_q vs) ($FVF.domain_q ws))
        (forall ((x $Ref)) (!
          (=>
            (Set_in x ($FVF.domain_q vs))
            (= ($FVF.lookup_q vs x) ($FVF.lookup_q ws x)))
          :pattern (($FVF.lookup_q vs x) ($FVF.lookup_q ws x))
          :qid |qp.$FVF<q>-eq-inner|
          )))
      (= vs ws))
    :pattern (($SortWrappers.$FVF<q>To$Snap vs)
              ($SortWrappers.$FVF<q>To$Snap ws)
              )
    :qid |qp.$FVF<q>-eq-outer|
    )))
(assert (forall ((r $Ref) (pm $FPM)) (!
    ($Perm.isValidVar ($FVF.perm_q pm r))
    :pattern (($FVF.perm_q pm r)))))
(assert (forall ((r $Ref) (f $Ref)) (!
    (= ($FVF.loc_q f r) true)
    :pattern (($FVF.loc_q f r)))))
; /predicate_snap_functions_axioms.smt2 [Q: Snap]
(assert (forall ((vs $PSF<Q>) (ws $PSF<Q>)) (!
    (=>
      (and
        (Set_equal ($PSF.domain_Q vs) ($PSF.domain_Q ws))
        (forall ((x $Snap)) (!
          (=>
            (Set_in x ($PSF.domain_Q vs))
            (= ($PSF.lookup_Q vs x) ($PSF.lookup_Q ws x)))
          :pattern (($PSF.lookup_Q vs x) ($PSF.lookup_Q ws x))
          :qid |qp.$PSF<Q>-eq-inner|
          )))
      (= vs ws))
    :pattern (($SortWrappers.$PSF<Q>To$Snap vs)
              ($SortWrappers.$PSF<Q>To$Snap ws)
              )
    :qid |qp.$PSF<Q>-eq-outer|
    )))
(assert (forall ((s $Snap) (pm $PPM)) (!
    ($Perm.isValidVar ($PSF.perm_Q pm s))
    :pattern (($PSF.perm_Q pm s)))))
(assert (forall ((s $Snap) (f $Snap)) (!
    (= ($PSF.loc_Q f s) true)
    :pattern (($PSF.loc_Q f s)))))
; End preamble
; ------------------------------------------------------------
; State saturation: after preamble
(set-option :timeout 100)
(check-sat)
; unknown
; ------------------------------------------------------------
; Begin function- and predicate-related preamble
; Declaring symbols related to program functions (from verification)
(declare-fun $k@13@00 () $Perm)
(declare-fun $k@14@00 () $Perm)
(assert (forall ((s@$ $Snap) (r@0@00 $Ref)) (!
  (= (refs%limited s@$ r@0@00) (refs s@$ r@0@00))
  :pattern ((refs s@$ r@0@00))
  :qid |quant-u-23017|)))
(assert (forall ((s@$ $Snap) (r@0@00 $Ref)) (!
  (refs%stateless r@0@00)
  :pattern ((refs%limited s@$ r@0@00))
  :qid |quant-u-23018|)))
(assert (forall ((s@$ $Snap) (r@2@00 $Ref)) (!
  (= (testerfieldFull%limited s@$ r@2@00) (testerfieldFull s@$ r@2@00))
  :pattern ((testerfieldFull s@$ r@2@00))
  :qid |quant-u-23019|)))
(assert (forall ((s@$ $Snap) (r@2@00 $Ref)) (!
  (testerfieldFull%stateless r@2@00)
  :pattern ((testerfieldFull%limited s@$ r@2@00))
  :qid |quant-u-23020|)))
(assert (forall ((s@$ $Snap) (r@4@00 $Ref)) (!
  (= (testerFull%limited s@$ r@4@00) (testerFull s@$ r@4@00))
  :pattern ((testerFull s@$ r@4@00))
  :qid |quant-u-23021|)))
(assert (forall ((s@$ $Snap) (r@4@00 $Ref)) (!
  (testerFull%stateless r@4@00)
  :pattern ((testerFull%limited s@$ r@4@00))
  :qid |quant-u-23022|)))
(assert (forall ((s@$ $Snap) (r@6@00 $Ref)) (!
  (= (get%limited s@$ r@6@00) (get s@$ r@6@00))
  :pattern ((get s@$ r@6@00))
  :qid |quant-u-23023|)))
(assert (forall ((s@$ $Snap) (r@6@00 $Ref)) (!
  (get%stateless r@6@00)
  :pattern ((get%limited s@$ r@6@00))
  :qid |quant-u-23024|)))
(assert (forall ((s@$ $Snap) (r@6@00 $Ref)) (!
  (let ((result@7@00 (get%limited s@$ r@6@00))) (=>
    (get%precondition s@$ r@6@00)
    (Set_in result@7@00 (refs $Snap.unit r@6@00))))
  :pattern ((get%limited s@$ r@6@00))
  :qid |quant-u-23029|)))
(assert (forall ((s@$ $Snap) (r@6@00 $Ref)) (!
  (let ((result@7@00 (get%limited s@$ r@6@00))) (=>
    (get%precondition s@$ r@6@00)
    (refs%precondition $Snap.unit r@6@00)))
  :pattern ((get%limited s@$ r@6@00))
  :qid |quant-u-23030|)))
(assert (forall ((s@$ $Snap) (r@8@00 $Ref)) (!
  (= (testerfield%limited s@$ r@8@00) (testerfield s@$ r@8@00))
  :pattern ((testerfield s@$ r@8@00))
  :qid |quant-u-23025|)))
(assert (forall ((s@$ $Snap) (r@8@00 $Ref)) (!
  (testerfield%stateless r@8@00)
  :pattern ((testerfield%limited s@$ r@8@00))
  :qid |quant-u-23026|)))
(assert (forall ((s@$ $Snap) (r@10@00 $Ref)) (!
  (= (tester%limited s@$ r@10@00) (tester s@$ r@10@00))
  :pattern ((tester s@$ r@10@00))
  :qid |quant-u-23027|)))
(assert (forall ((s@$ $Snap) (r@10@00 $Ref)) (!
  (tester%stateless r@10@00)
  :pattern ((tester%limited s@$ r@10@00))
  :qid |quant-u-23028|)))
; End function- and predicate-related preamble
; ------------------------------------------------------------
; ---------- pred1 ----------
(declare-const r@0@01 $Ref)
(declare-const r@1@01 $Ref)
(set-option :timeout 0)
(push) ; 1
(declare-const $k@2@01 $Perm)
(assert ($Perm.isReadVar $k@2@01))
(declare-const $t@3@01 $Snap)
(assert (<= $Perm.No $k@2@01))
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
(set-option :timeout 0)
(push) ; 2
(pop) ; 2
(push) ; 2
; [exec]
; var r2: Ref
(declare-const r2@4@01 $Ref)
; [exec]
; var r3: Ref
(declare-const r3@5@01 $Ref)
; [exec]
; unfold acc(P(r), wildcard)
(declare-const $k@6@01 $Perm)
(assert ($Perm.isReadVar $k@6@01))
(push) ; 3
(set-option :timeout 10)
(assert (not (not (= $k@2@01 $Perm.No))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(assert (< $k@6@01 $k@2@01))
(assert (<= $Perm.No (- $k@2@01 $k@6@01)))
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (< $Perm.No $k@6@01)))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(declare-const e@7@01 $Ref)
(set-option :timeout 0)
(push) ; 3
; [eval] (e in refs(r))
; [eval] refs(r)
(push) ; 4
(assert (refs%precondition $Snap.unit r@1@01))
(pop) ; 4
; Joined path conditions
(assert (refs%precondition $Snap.unit r@1@01))
(assert (Set_in e@7@01 (refs $Snap.unit r@1@01)))
(declare-const $k@8@01 $Perm)
(assert ($Perm.isReadVar $k@8@01))
(pop) ; 3
(declare-fun inv@9@01 ($Ref) $Ref)
(declare-fun img@10@01 ($Ref) Bool)
; Nested auxiliary terms: globals
(assert ($Perm.isReadVar $k@8@01))
; Nested auxiliary terms: non-globals
(assert (forall ((e@7@01 $Ref)) (!
  (=>
    (Set_in e@7@01 (refs $Snap.unit r@1@01))
    (refs%precondition $Snap.unit r@1@01))
  :pattern ((Set_in e@7@01 (refs $Snap.unit r@1@01)))
  :pattern ((inv@9@01 e@7@01))
  :pattern ((img@10@01 e@7@01))
  :qid |Q-aux|)))
(push) ; 3
(assert (not (forall ((e@7@01 $Ref)) (!
  (=>
    (and
      (refs%precondition $Snap.unit r@1@01)
      (Set_in e@7@01 (refs $Snap.unit r@1@01)))
    (or (= $k@8@01 $Perm.No) (< $Perm.No $k@8@01)))
  
  :qid |quant-u-23039|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Check receiver injectivity
(assert (forall ((e1@7@01 $Ref) (e2@7@01 $Ref)) (!
  (and
    (refs%precondition $Snap.unit r@1@01)
    (=>
      (and (Set_in e1@7@01 (refs $Snap.unit r@1@01)) (< $Perm.No $k@8@01))
      (refs%precondition $Snap.unit r@1@01)))
  
  :qid |Q-rcvrInj|)))
(push) ; 3
(assert (not (forall ((e1@7@01 $Ref) (e2@7@01 $Ref)) (!
  (=>
    (and
      (and (Set_in e1@7@01 (refs $Snap.unit r@1@01)) (< $Perm.No $k@8@01))
      (and (Set_in e2@7@01 (refs $Snap.unit r@1@01)) (< $Perm.No $k@8@01))
      (= e1@7@01 e2@7@01))
    (= e1@7@01 e2@7@01))
  
  :qid |Q-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((e@7@01 $Ref)) (!
  (refs%precondition $Snap.unit r@1@01)
  :pattern ((Set_in e@7@01 (refs $Snap.unit r@1@01)))
  :pattern ((inv@9@01 e@7@01))
  :pattern ((img@10@01 e@7@01))
  :qid |quant-u-23040|)))
(assert (forall ((r $Ref)) (!
  (=> (img@10@01 r) (refs%precondition $Snap.unit r@1@01))
  :pattern ((inv@9@01 r))
  :qid |Q-fctOfInv|)))
(assert (forall ((e@7@01 $Ref)) (!
  (=>
    (and
      (Set_in e@7@01 (refs $Snap.unit r@1@01))
      (< $Perm.No (* $k@8@01 $k@6@01)))
    (and (= (inv@9@01 e@7@01) e@7@01) (img@10@01 e@7@01)))
  :pattern ((Set_in e@7@01 (refs $Snap.unit r@1@01)))
  :pattern ((inv@9@01 e@7@01))
  :pattern ((img@10@01 e@7@01))
  :qid |quant-u-23040|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@10@01 r)
      (and
        (Set_in (inv@9@01 r) (refs $Snap.unit r@1@01))
        (< $Perm.No (* $k@8@01 $k@6@01))))
    (= (inv@9@01 r) r))
  :pattern ((inv@9@01 r))
  :qid |Q-fctOfInv|)))
; Permissions are non-negative
(assert (forall ((e@7@01 $Ref)) (!
  (<= $Perm.No (* $k@8@01 $k@6@01))
  :pattern ((Set_in e@7@01 (refs $Snap.unit r@1@01)))
  :pattern ((inv@9@01 e@7@01))
  :pattern ((img@10@01 e@7@01))
  :qid |Q-permAtLeastZero|)))
; State saturation: after unfold
(set-option :timeout 40)
(check-sat)
; unknown
(assert (P%trigger $t@3@01 r@1@01))
; [exec]
; fold acc(P(r), wildcard)
(declare-const $k@11@01 $Perm)
(assert ($Perm.isReadVar $k@11@01))
(declare-const e@12@01 $Ref)
(set-option :timeout 0)
(push) ; 3
; [eval] (e in refs(r))
; [eval] refs(r)
(push) ; 4
(assert (refs%precondition $Snap.unit r@1@01))
(pop) ; 4
; Joined path conditions
(assert (refs%precondition $Snap.unit r@1@01))
(assert (Set_in e@12@01 (refs $Snap.unit r@1@01)))
(declare-const $k@13@01 $Perm)
(assert ($Perm.isReadVar $k@13@01))
(pop) ; 3
(declare-fun inv@14@01 ($Ref) $Ref)
(declare-fun img@15@01 ($Ref) Bool)
; Nested auxiliary terms: globals
(assert ($Perm.isReadVar $k@13@01))
; Nested auxiliary terms: non-globals
(assert (forall ((e@12@01 $Ref)) (!
  (=>
    (Set_in e@12@01 (refs $Snap.unit r@1@01))
    (refs%precondition $Snap.unit r@1@01))
  :pattern ((Set_in e@12@01 (refs $Snap.unit r@1@01)))
  :pattern ((inv@14@01 e@12@01))
  :pattern ((img@15@01 e@12@01))
  :qid |Q-aux|)))
(push) ; 3
(assert (not (forall ((e@12@01 $Ref)) (!
  (=>
    (and
      (refs%precondition $Snap.unit r@1@01)
      (Set_in e@12@01 (refs $Snap.unit r@1@01)))
    (or (= $k@13@01 $Perm.No) (< $Perm.No $k@13@01)))
  
  :qid |quant-u-23041|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Check receiver injectivity
(assert (forall ((e1@12@01 $Ref) (e2@12@01 $Ref)) (!
  (and
    (refs%precondition $Snap.unit r@1@01)
    (=>
      (and (Set_in e1@12@01 (refs $Snap.unit r@1@01)) (< $Perm.No $k@13@01))
      (refs%precondition $Snap.unit r@1@01)))
  
  :qid |Q-rcvrInj|)))
(push) ; 3
(assert (not (forall ((e1@12@01 $Ref) (e2@12@01 $Ref)) (!
  (=>
    (and
      (and (Set_in e1@12@01 (refs $Snap.unit r@1@01)) (< $Perm.No $k@13@01))
      (and (Set_in e2@12@01 (refs $Snap.unit r@1@01)) (< $Perm.No $k@13@01))
      (= e1@12@01 e2@12@01))
    (= e1@12@01 e2@12@01))
  
  :qid |Q-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((e@12@01 $Ref)) (!
  (refs%precondition $Snap.unit r@1@01)
  :pattern ((Set_in e@12@01 (refs $Snap.unit r@1@01)))
  :pattern ((inv@14@01 e@12@01))
  :pattern ((img@15@01 e@12@01))
  :qid |Q-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=> (img@15@01 r) (refs%precondition $Snap.unit r@1@01))
  :pattern ((inv@14@01 r))
  :qid |Q-fctOfInv|)))
(assert (forall ((e@12@01 $Ref)) (!
  (=>
    (and (Set_in e@12@01 (refs $Snap.unit r@1@01)) (< $Perm.No $k@13@01))
    (and (= (inv@14@01 e@12@01) e@12@01) (img@15@01 e@12@01)))
  :pattern ((Set_in e@12@01 (refs $Snap.unit r@1@01)))
  :pattern ((inv@14@01 e@12@01))
  :pattern ((img@15@01 e@12@01))
  :qid |Q-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@15@01 r)
      (and (Set_in (inv@14@01 r) (refs $Snap.unit r@1@01)) (< $Perm.No $k@13@01)))
    (= (inv@14@01 r) r))
  :pattern ((inv@14@01 r))
  :qid |Q-fctOfInv|)))
; Precomputing data for removing quantified permissions
(define-fun pTaken@16@01 ((r $Ref)) $Perm
  (ite
    (and
      (Set_in (inv@14@01 r) (refs $Snap.unit r@1@01))
      (img@15@01 r)
      (= r (inv@14@01 r)))
    ($Perm.min
      (ite
        (and (img@10@01 r) (Set_in (inv@9@01 r) (refs $Snap.unit r@1@01)))
        (* $k@8@01 $k@6@01)
        $Perm.No)
      (* $k@13@01 $k@11@01))
    $Perm.No))
; Done precomputing, updating quantified chunks
; State saturation: before repetition
(set-option :timeout 10)
(check-sat)
; unknown
; Constrain original permissions $k@13@01 * $k@11@01
(assert (forall ((r $Ref)) (!
  (=>
    (not
      (=
        (ite
          (and (img@10@01 r) (Set_in (inv@9@01 r) (refs $Snap.unit r@1@01)))
          (* $k@8@01 $k@6@01)
          $Perm.No)
        $Perm.No))
    (ite
      (and (img@10@01 r) (Set_in (inv@9@01 r) (refs $Snap.unit r@1@01)))
      (<
        (ite
          (and
            (Set_in (inv@14@01 r) (refs $Snap.unit r@1@01))
            (img@15@01 r)
            (= r (inv@14@01 r)))
          (* $k@13@01 $k@11@01)
          $Perm.No)
        (* $k@8@01 $k@6@01))
      (<
        (ite
          (and
            (Set_in (inv@14@01 r) (refs $Snap.unit r@1@01))
            (img@15@01 r)
            (= r (inv@14@01 r)))
          (* $k@13@01 $k@11@01)
          $Perm.No)
        $Perm.No)))
  :pattern ((img@10@01 r))
  :pattern ((Set_in (inv@9@01 r) (refs $Snap.unit r@1@01)))
  :pattern ((Set_in (inv@14@01 r) (refs $Snap.unit r@1@01)))
  :pattern ((img@15@01 r))
  :qid |qp.srp0|)))
; Intermediate check if already taken enough permissions
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 500)
(assert (not (forall ((r $Ref)) (!
  (=>
    (and
      (Set_in (inv@14@01 r) (refs $Snap.unit r@1@01))
      (img@15@01 r)
      (= r (inv@14@01 r)))
    (= (- (* $k@13@01 $k@11@01) (pTaken@16@01 r)) $Perm.No))
  
  :qid |quant-u-23044|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Final check if taken enough permissions
; Done removing quantified permissions
(declare-const sm@17@01 $PSF<Q>)
(declare-const s@18@01 $Snap)
; Definitional axioms for snapshot map domain
(assert (forall ((s@18@01 $Snap)) (!
  (and
    (=>
      (Set_in s@18@01 ($PSF.domain_Q (as sm@17@01  $PSF<Q>)))
      (and
        (Set_in (inv@14@01 ($SortWrappers.$SnapTo$Ref s@18@01)) (refs $Snap.unit r@1@01))
        (< $Perm.No (* $k@13@01 $k@11@01))
        (img@15@01 ($SortWrappers.$SnapTo$Ref s@18@01))))
    (=>
      (and
        (Set_in (inv@14@01 ($SortWrappers.$SnapTo$Ref s@18@01)) (refs $Snap.unit r@1@01))
        (< $Perm.No (* $k@13@01 $k@11@01))
        (img@15@01 ($SortWrappers.$SnapTo$Ref s@18@01)))
      (Set_in s@18@01 ($PSF.domain_Q (as sm@17@01  $PSF<Q>)))))
  :pattern ((Set_in s@18@01 ($PSF.domain_Q (as sm@17@01  $PSF<Q>))))
  :qid |qp.psmDomDef2|)))
; Definitional axioms for snapshot map values
(assert (forall ((s@18@01 $Snap)) (!
  (=>
    (and
      (and
        (Set_in (inv@14@01 ($SortWrappers.$SnapTo$Ref s@18@01)) (refs $Snap.unit r@1@01))
        (< $Perm.No (* $k@13@01 $k@11@01))
        (img@15@01 ($SortWrappers.$SnapTo$Ref s@18@01)))
      (ite
        (and
          (img@10@01 ($SortWrappers.$SnapTo$Ref s@18@01))
          (Set_in (inv@9@01 ($SortWrappers.$SnapTo$Ref s@18@01)) (refs $Snap.unit r@1@01)))
        (< $Perm.No (* $k@8@01 $k@6@01))
        false))
    (and
      (not (= s@18@01 $Snap.unit))
      (=
        ($PSF.lookup_Q (as sm@17@01  $PSF<Q>) s@18@01)
        ($PSF.lookup_Q ($SortWrappers.$SnapTo$PSF<Q> $t@3@01) s@18@01))))
  :pattern (($PSF.lookup_Q (as sm@17@01  $PSF<Q>) s@18@01))
  :pattern (($PSF.lookup_Q ($SortWrappers.$SnapTo$PSF<Q> $t@3@01) s@18@01))
  :qid |qp.psmValDef1|)))
(assert (P%trigger ($SortWrappers.$PSF<Q>To$Snap (as sm@17@01  $PSF<Q>)) r@1@01))
(declare-const $t@19@01 $Snap)
(assert (and
  (=> (< $Perm.No (- $k@2@01 $k@6@01)) (= $t@19@01 $t@3@01))
  (=>
    (< $Perm.No $k@11@01)
    (= $t@19@01 ($SortWrappers.$PSF<Q>To$Snap (as sm@17@01  $PSF<Q>))))))
(assert (<= $Perm.No (+ (- $k@2@01 $k@6@01) $k@11@01)))
; [exec]
; unfold acc(P(r), wildcard)
(declare-const $k@20@01 $Perm)
(assert ($Perm.isReadVar $k@20@01))
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (not (= (+ (- $k@2@01 $k@6@01) $k@11@01) $Perm.No))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(assert (< $k@20@01 (+ (- $k@2@01 $k@6@01) $k@11@01)))
(assert (<= $Perm.No (- (+ (- $k@2@01 $k@6@01) $k@11@01) $k@20@01)))
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (< $Perm.No $k@20@01)))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(declare-const e@21@01 $Ref)
(set-option :timeout 0)
(push) ; 3
; [eval] (e in refs(r))
; [eval] refs(r)
(push) ; 4
(assert (refs%precondition $Snap.unit r@1@01))
(pop) ; 4
; Joined path conditions
(assert (refs%precondition $Snap.unit r@1@01))
(assert (Set_in e@21@01 (refs $Snap.unit r@1@01)))
(declare-const $k@22@01 $Perm)
(assert ($Perm.isReadVar $k@22@01))
(pop) ; 3
(declare-fun inv@23@01 ($Ref) $Ref)
(declare-fun img@24@01 ($Ref) Bool)
; Nested auxiliary terms: globals
(assert ($Perm.isReadVar $k@22@01))
; Nested auxiliary terms: non-globals
(assert (forall ((e@21@01 $Ref)) (!
  (=>
    (Set_in e@21@01 (refs $Snap.unit r@1@01))
    (refs%precondition $Snap.unit r@1@01))
  :pattern ((Set_in e@21@01 (refs $Snap.unit r@1@01)))
  :pattern ((inv@23@01 e@21@01))
  :pattern ((img@24@01 e@21@01))
  :qid |Q-aux|)))
(push) ; 3
(assert (not (forall ((e@21@01 $Ref)) (!
  (=>
    (and
      (refs%precondition $Snap.unit r@1@01)
      (Set_in e@21@01 (refs $Snap.unit r@1@01)))
    (or (= $k@22@01 $Perm.No) (< $Perm.No $k@22@01)))
  
  :qid |quant-u-23045|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Check receiver injectivity
(assert (forall ((e1@21@01 $Ref) (e2@21@01 $Ref)) (!
  (and
    (refs%precondition $Snap.unit r@1@01)
    (=>
      (and (Set_in e1@21@01 (refs $Snap.unit r@1@01)) (< $Perm.No $k@22@01))
      (refs%precondition $Snap.unit r@1@01)))
  
  :qid |Q-rcvrInj|)))
(push) ; 3
(assert (not (forall ((e1@21@01 $Ref) (e2@21@01 $Ref)) (!
  (=>
    (and
      (and (Set_in e1@21@01 (refs $Snap.unit r@1@01)) (< $Perm.No $k@22@01))
      (and (Set_in e2@21@01 (refs $Snap.unit r@1@01)) (< $Perm.No $k@22@01))
      (= e1@21@01 e2@21@01))
    (= e1@21@01 e2@21@01))
  
  :qid |Q-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((e@21@01 $Ref)) (!
  (refs%precondition $Snap.unit r@1@01)
  :pattern ((Set_in e@21@01 (refs $Snap.unit r@1@01)))
  :pattern ((inv@23@01 e@21@01))
  :pattern ((img@24@01 e@21@01))
  :qid |quant-u-23046|)))
(assert (forall ((r $Ref)) (!
  (=> (img@24@01 r) (refs%precondition $Snap.unit r@1@01))
  :pattern ((inv@23@01 r))
  :qid |Q-fctOfInv|)))
(assert (forall ((e@21@01 $Ref)) (!
  (=>
    (and
      (Set_in e@21@01 (refs $Snap.unit r@1@01))
      (< $Perm.No (* $k@22@01 $k@20@01)))
    (and (= (inv@23@01 e@21@01) e@21@01) (img@24@01 e@21@01)))
  :pattern ((Set_in e@21@01 (refs $Snap.unit r@1@01)))
  :pattern ((inv@23@01 e@21@01))
  :pattern ((img@24@01 e@21@01))
  :qid |quant-u-23046|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@24@01 r)
      (and
        (Set_in (inv@23@01 r) (refs $Snap.unit r@1@01))
        (< $Perm.No (* $k@22@01 $k@20@01))))
    (= (inv@23@01 r) r))
  :pattern ((inv@23@01 r))
  :qid |Q-fctOfInv|)))
; Permissions are non-negative
(assert (forall ((e@21@01 $Ref)) (!
  (<= $Perm.No (* $k@22@01 $k@20@01))
  :pattern ((Set_in e@21@01 (refs $Snap.unit r@1@01)))
  :pattern ((inv@23@01 e@21@01))
  :pattern ((img@24@01 e@21@01))
  :qid |Q-permAtLeastZero|)))
(push) ; 3
(set-option :timeout 10)
(assert (not (forall ((r $Ref)) (!
  (and
    (= e@21@01 e@7@01)
    (=
      (and (img@24@01 r) (Set_in (inv@23@01 r) (refs $Snap.unit r@1@01)))
      (and (img@10@01 r) (Set_in (inv@9@01 r) (refs $Snap.unit r@1@01)))))
  
  :qid |quant-u-23047|))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; State saturation: after unfold
(set-option :timeout 40)
(check-sat)
; unknown
(assert (P%trigger $t@19@01 r@1@01))
; [exec]
; r2 := tester(get(r))
; [eval] tester(get(r))
; [eval] get(r)
(set-option :timeout 0)
(push) ; 3
(assert (get%precondition $Snap.unit r@1@01))
(pop) ; 3
; Joined path conditions
(assert (get%precondition $Snap.unit r@1@01))
(push) ; 3
(declare-const $k@25@01 $Perm)
(assert ($Perm.isReadVar $k@25@01))
(push) ; 4
(assert (not (forall ((r $Ref)) (!
  (=>
    (and (= r (get $Snap.unit r@1@01)) (> $k@25@01 $Perm.No))
    (>
      (+
        (ite
          (and (img@10@01 r) (Set_in (inv@9@01 r) (refs $Snap.unit r@1@01)))
          (- (* $k@8@01 $k@6@01) (pTaken@16@01 r))
          $Perm.No)
        (ite
          (and (img@24@01 r) (Set_in (inv@23@01 r) (refs $Snap.unit r@1@01)))
          (* $k@22@01 $k@20@01)
          $Perm.No))
      $Perm.No))
  
  :qid |quant-u-23048|))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(declare-const sm@26@01 $PSF<Q>)
(declare-const s@27@01 $Snap)
; Definitional axioms for snapshot map domain (instantiated)
; Definitional axioms for snapshot map values (instantiated)
(assert (=>
  (ite
    (and
      (img@10@01 (get $Snap.unit r@1@01))
      (Set_in (inv@9@01 (get $Snap.unit r@1@01)) (refs $Snap.unit r@1@01)))
    (< $Perm.No (- (* $k@8@01 $k@6@01) (pTaken@16@01 (get $Snap.unit r@1@01))))
    false)
  (and
    (not (= ($SortWrappers.$RefTo$Snap (get $Snap.unit r@1@01)) $Snap.unit))
    (=
      ($PSF.lookup_Q (as sm@26@01  $PSF<Q>) ($SortWrappers.$RefTo$Snap (get $Snap.unit r@1@01)))
      ($PSF.lookup_Q ($SortWrappers.$SnapTo$PSF<Q> $t@3@01) ($SortWrappers.$RefTo$Snap (get $Snap.unit r@1@01)))))))
(assert (=>
  (ite
    (and
      (img@24@01 (get $Snap.unit r@1@01))
      (Set_in (inv@23@01 (get $Snap.unit r@1@01)) (refs $Snap.unit r@1@01)))
    (< $Perm.No (* $k@22@01 $k@20@01))
    false)
  (and
    (not (= ($SortWrappers.$RefTo$Snap (get $Snap.unit r@1@01)) $Snap.unit))
    (=
      ($PSF.lookup_Q (as sm@26@01  $PSF<Q>) ($SortWrappers.$RefTo$Snap (get $Snap.unit r@1@01)))
      ($PSF.lookup_Q ($SortWrappers.$SnapTo$PSF<Q> $t@19@01) ($SortWrappers.$RefTo$Snap (get $Snap.unit r@1@01)))))))
(assert (tester%precondition ($PSF.lookup_Q (as sm@26@01  $PSF<Q>) ($SortWrappers.$RefTo$Snap (get $Snap.unit r@1@01))) (get $Snap.unit r@1@01)))
(pop) ; 3
; Joined path conditions
(assert ($Perm.isReadVar $k@25@01))
(assert (and
  (=>
    (ite
      (and
        (img@10@01 (get $Snap.unit r@1@01))
        (Set_in (inv@9@01 (get $Snap.unit r@1@01)) (refs $Snap.unit r@1@01)))
      (< $Perm.No (- (* $k@8@01 $k@6@01) (pTaken@16@01 (get $Snap.unit r@1@01))))
      false)
    (and
      (not (= ($SortWrappers.$RefTo$Snap (get $Snap.unit r@1@01)) $Snap.unit))
      (=
        ($PSF.lookup_Q (as sm@26@01  $PSF<Q>) ($SortWrappers.$RefTo$Snap (get $Snap.unit r@1@01)))
        ($PSF.lookup_Q ($SortWrappers.$SnapTo$PSF<Q> $t@3@01) ($SortWrappers.$RefTo$Snap (get $Snap.unit r@1@01))))))
  (=>
    (ite
      (and
        (img@24@01 (get $Snap.unit r@1@01))
        (Set_in (inv@23@01 (get $Snap.unit r@1@01)) (refs $Snap.unit r@1@01)))
      (< $Perm.No (* $k@22@01 $k@20@01))
      false)
    (and
      (not (= ($SortWrappers.$RefTo$Snap (get $Snap.unit r@1@01)) $Snap.unit))
      (=
        ($PSF.lookup_Q (as sm@26@01  $PSF<Q>) ($SortWrappers.$RefTo$Snap (get $Snap.unit r@1@01)))
        ($PSF.lookup_Q ($SortWrappers.$SnapTo$PSF<Q> $t@19@01) ($SortWrappers.$RefTo$Snap (get $Snap.unit r@1@01))))))
  (tester%precondition ($PSF.lookup_Q (as sm@26@01  $PSF<Q>) ($SortWrappers.$RefTo$Snap (get $Snap.unit r@1@01))) (get $Snap.unit r@1@01))))
(declare-const r2@28@01 $Ref)
(assert (=
  r2@28@01
  (tester ($PSF.lookup_Q (as sm@26@01  $PSF<Q>) ($SortWrappers.$RefTo$Snap (get $Snap.unit r@1@01))) (get $Snap.unit r@1@01))))
; [exec]
; r3 := testerFull(get(r))
; [eval] testerFull(get(r))
; [eval] get(r)
(push) ; 3
(pop) ; 3
; Joined path conditions
(push) ; 3
(push) ; 4
(assert (not (forall ((r $Ref)) (!
  (=>
    (= r (get $Snap.unit r@1@01))
    (>
      (+
        (ite
          (and (img@10@01 r) (Set_in (inv@9@01 r) (refs $Snap.unit r@1@01)))
          (- (* $k@8@01 $k@6@01) (pTaken@16@01 r))
          $Perm.No)
        (ite
          (and (img@24@01 r) (Set_in (inv@23@01 r) (refs $Snap.unit r@1@01)))
          (* $k@22@01 $k@20@01)
          $Perm.No))
      $Perm.No))
  
  :qid |quant-u-23049|))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for snapshot map domain (instantiated)
; Definitional axioms for snapshot map values (instantiated)
(assert (testerFull%precondition ($PSF.lookup_Q (as sm@26@01  $PSF<Q>) ($SortWrappers.$RefTo$Snap (get $Snap.unit r@1@01))) (get $Snap.unit r@1@01)))
(pop) ; 3
; Joined path conditions
(assert (testerFull%precondition ($PSF.lookup_Q (as sm@26@01  $PSF<Q>) ($SortWrappers.$RefTo$Snap (get $Snap.unit r@1@01))) (get $Snap.unit r@1@01)))
(declare-const r3@29@01 $Ref)
(assert (=
  r3@29@01
  (testerFull ($PSF.lookup_Q (as sm@26@01  $PSF<Q>) ($SortWrappers.$RefTo$Snap (get $Snap.unit r@1@01))) (get $Snap.unit r@1@01))))
(pop) ; 2
(pop) ; 1
; ---------- pred2 ----------
(declare-const r@30@01 $Ref)
(declare-const r@31@01 $Ref)
(push) ; 1
(declare-const $t@32@01 $Snap)
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
(set-option :timeout 0)
(push) ; 2
(pop) ; 2
(push) ; 2
; [exec]
; var r2: Ref
(declare-const r2@33@01 $Ref)
; [exec]
; var r3: Ref
(declare-const r3@34@01 $Ref)
; [exec]
; unfold acc(P(r), write)
(declare-const e@35@01 $Ref)
(push) ; 3
; [eval] (e in refs(r))
; [eval] refs(r)
(push) ; 4
(assert (refs%precondition $Snap.unit r@31@01))
(pop) ; 4
; Joined path conditions
(assert (refs%precondition $Snap.unit r@31@01))
(assert (Set_in e@35@01 (refs $Snap.unit r@31@01)))
(declare-const $k@36@01 $Perm)
(assert ($Perm.isReadVar $k@36@01))
(pop) ; 3
(declare-fun inv@37@01 ($Ref) $Ref)
(declare-fun img@38@01 ($Ref) Bool)
; Nested auxiliary terms: globals
(assert ($Perm.isReadVar $k@36@01))
; Nested auxiliary terms: non-globals
(assert (forall ((e@35@01 $Ref)) (!
  (=>
    (Set_in e@35@01 (refs $Snap.unit r@31@01))
    (refs%precondition $Snap.unit r@31@01))
  :pattern ((Set_in e@35@01 (refs $Snap.unit r@31@01)))
  :pattern ((inv@37@01 e@35@01))
  :pattern ((img@38@01 e@35@01))
  :qid |Q-aux|)))
(push) ; 3
(assert (not (forall ((e@35@01 $Ref)) (!
  (=>
    (and
      (refs%precondition $Snap.unit r@31@01)
      (Set_in e@35@01 (refs $Snap.unit r@31@01)))
    (or (= $k@36@01 $Perm.No) (< $Perm.No $k@36@01)))
  
  :qid |quant-u-23050|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Check receiver injectivity
(assert (forall ((e1@35@01 $Ref) (e2@35@01 $Ref)) (!
  (and
    (refs%precondition $Snap.unit r@31@01)
    (=>
      (and (Set_in e1@35@01 (refs $Snap.unit r@31@01)) (< $Perm.No $k@36@01))
      (refs%precondition $Snap.unit r@31@01)))
  
  :qid |Q-rcvrInj|)))
(push) ; 3
(assert (not (forall ((e1@35@01 $Ref) (e2@35@01 $Ref)) (!
  (=>
    (and
      (and (Set_in e1@35@01 (refs $Snap.unit r@31@01)) (< $Perm.No $k@36@01))
      (and (Set_in e2@35@01 (refs $Snap.unit r@31@01)) (< $Perm.No $k@36@01))
      (= e1@35@01 e2@35@01))
    (= e1@35@01 e2@35@01))
  
  :qid |Q-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((e@35@01 $Ref)) (!
  (refs%precondition $Snap.unit r@31@01)
  :pattern ((Set_in e@35@01 (refs $Snap.unit r@31@01)))
  :pattern ((inv@37@01 e@35@01))
  :pattern ((img@38@01 e@35@01))
  :qid |quant-u-23051|)))
(assert (forall ((r $Ref)) (!
  (=> (img@38@01 r) (refs%precondition $Snap.unit r@31@01))
  :pattern ((inv@37@01 r))
  :qid |Q-fctOfInv|)))
(assert (forall ((e@35@01 $Ref)) (!
  (=>
    (and (Set_in e@35@01 (refs $Snap.unit r@31@01)) (< $Perm.No $k@36@01))
    (and (= (inv@37@01 e@35@01) e@35@01) (img@38@01 e@35@01)))
  :pattern ((Set_in e@35@01 (refs $Snap.unit r@31@01)))
  :pattern ((inv@37@01 e@35@01))
  :pattern ((img@38@01 e@35@01))
  :qid |quant-u-23051|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@38@01 r)
      (and
        (Set_in (inv@37@01 r) (refs $Snap.unit r@31@01))
        (< $Perm.No $k@36@01)))
    (= (inv@37@01 r) r))
  :pattern ((inv@37@01 r))
  :qid |Q-fctOfInv|)))
; Permissions are non-negative
(assert (forall ((e@35@01 $Ref)) (!
  (<= $Perm.No $k@36@01)
  :pattern ((Set_in e@35@01 (refs $Snap.unit r@31@01)))
  :pattern ((inv@37@01 e@35@01))
  :pattern ((img@38@01 e@35@01))
  :qid |Q-permAtLeastZero|)))
; State saturation: after unfold
(set-option :timeout 40)
(check-sat)
; unknown
(assert (P%trigger $t@32@01 r@31@01))
; [exec]
; fold acc(P(r), write)
(declare-const e@39@01 $Ref)
(set-option :timeout 0)
(push) ; 3
; [eval] (e in refs(r))
; [eval] refs(r)
(push) ; 4
(assert (refs%precondition $Snap.unit r@31@01))
(pop) ; 4
; Joined path conditions
(assert (refs%precondition $Snap.unit r@31@01))
(assert (Set_in e@39@01 (refs $Snap.unit r@31@01)))
(declare-const $k@40@01 $Perm)
(assert ($Perm.isReadVar $k@40@01))
(pop) ; 3
(declare-fun inv@41@01 ($Ref) $Ref)
(declare-fun img@42@01 ($Ref) Bool)
; Nested auxiliary terms: globals
(assert ($Perm.isReadVar $k@40@01))
; Nested auxiliary terms: non-globals
(assert (forall ((e@39@01 $Ref)) (!
  (=>
    (Set_in e@39@01 (refs $Snap.unit r@31@01))
    (refs%precondition $Snap.unit r@31@01))
  :pattern ((Set_in e@39@01 (refs $Snap.unit r@31@01)))
  :pattern ((inv@41@01 e@39@01))
  :pattern ((img@42@01 e@39@01))
  :qid |Q-aux|)))
(push) ; 3
(assert (not (forall ((e@39@01 $Ref)) (!
  (=>
    (and
      (refs%precondition $Snap.unit r@31@01)
      (Set_in e@39@01 (refs $Snap.unit r@31@01)))
    (or (= $k@40@01 $Perm.No) (< $Perm.No $k@40@01)))
  
  :qid |quant-u-23052|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Check receiver injectivity
(assert (forall ((e1@39@01 $Ref) (e2@39@01 $Ref)) (!
  (and
    (refs%precondition $Snap.unit r@31@01)
    (=>
      (and (Set_in e1@39@01 (refs $Snap.unit r@31@01)) (< $Perm.No $k@40@01))
      (refs%precondition $Snap.unit r@31@01)))
  
  :qid |Q-rcvrInj|)))
(push) ; 3
(assert (not (forall ((e1@39@01 $Ref) (e2@39@01 $Ref)) (!
  (=>
    (and
      (and (Set_in e1@39@01 (refs $Snap.unit r@31@01)) (< $Perm.No $k@40@01))
      (and (Set_in e2@39@01 (refs $Snap.unit r@31@01)) (< $Perm.No $k@40@01))
      (= e1@39@01 e2@39@01))
    (= e1@39@01 e2@39@01))
  
  :qid |Q-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((e@39@01 $Ref)) (!
  (refs%precondition $Snap.unit r@31@01)
  :pattern ((Set_in e@39@01 (refs $Snap.unit r@31@01)))
  :pattern ((inv@41@01 e@39@01))
  :pattern ((img@42@01 e@39@01))
  :qid |Q-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=> (img@42@01 r) (refs%precondition $Snap.unit r@31@01))
  :pattern ((inv@41@01 r))
  :qid |Q-fctOfInv|)))
(assert (forall ((e@39@01 $Ref)) (!
  (=>
    (and (Set_in e@39@01 (refs $Snap.unit r@31@01)) (< $Perm.No $k@40@01))
    (and (= (inv@41@01 e@39@01) e@39@01) (img@42@01 e@39@01)))
  :pattern ((Set_in e@39@01 (refs $Snap.unit r@31@01)))
  :pattern ((inv@41@01 e@39@01))
  :pattern ((img@42@01 e@39@01))
  :qid |Q-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@42@01 r)
      (and
        (Set_in (inv@41@01 r) (refs $Snap.unit r@31@01))
        (< $Perm.No $k@40@01)))
    (= (inv@41@01 r) r))
  :pattern ((inv@41@01 r))
  :qid |Q-fctOfInv|)))
; Precomputing data for removing quantified permissions
(define-fun pTaken@43@01 ((r $Ref)) $Perm
  (ite
    (and
      (Set_in (inv@41@01 r) (refs $Snap.unit r@31@01))
      (img@42@01 r)
      (= r (inv@41@01 r)))
    ($Perm.min
      (ite
        (and (img@38@01 r) (Set_in (inv@37@01 r) (refs $Snap.unit r@31@01)))
        $k@36@01
        $Perm.No)
      $k@40@01)
    $Perm.No))
; Done precomputing, updating quantified chunks
; State saturation: before repetition
(set-option :timeout 10)
(check-sat)
; unknown
; Constrain original permissions $k@40@01
(assert (forall ((r $Ref)) (!
  (=>
    (not
      (=
        (ite
          (and (img@38@01 r) (Set_in (inv@37@01 r) (refs $Snap.unit r@31@01)))
          $k@36@01
          $Perm.No)
        $Perm.No))
    (ite
      (and (img@38@01 r) (Set_in (inv@37@01 r) (refs $Snap.unit r@31@01)))
      (<
        (ite
          (and
            (Set_in (inv@41@01 r) (refs $Snap.unit r@31@01))
            (img@42@01 r)
            (= r (inv@41@01 r)))
          $k@40@01
          $Perm.No)
        $k@36@01)
      (<
        (ite
          (and
            (Set_in (inv@41@01 r) (refs $Snap.unit r@31@01))
            (img@42@01 r)
            (= r (inv@41@01 r)))
          $k@40@01
          $Perm.No)
        $Perm.No)))
  :pattern ((img@38@01 r))
  :pattern ((Set_in (inv@37@01 r) (refs $Snap.unit r@31@01)))
  :pattern ((Set_in (inv@41@01 r) (refs $Snap.unit r@31@01)))
  :pattern ((img@42@01 r))
  :qid |qp.srp5|)))
; Intermediate check if already taken enough permissions
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 500)
(assert (not (forall ((r $Ref)) (!
  (=>
    (and
      (Set_in (inv@41@01 r) (refs $Snap.unit r@31@01))
      (img@42@01 r)
      (= r (inv@41@01 r)))
    (= (- $k@40@01 (pTaken@43@01 r)) $Perm.No))
  
  :qid |quant-u-23055|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Final check if taken enough permissions
; Done removing quantified permissions
(declare-const sm@44@01 $PSF<Q>)
(declare-const s@45@01 $Snap)
; Definitional axioms for snapshot map domain
(assert (forall ((s@45@01 $Snap)) (!
  (and
    (=>
      (Set_in s@45@01 ($PSF.domain_Q (as sm@44@01  $PSF<Q>)))
      (and
        (Set_in (inv@41@01 ($SortWrappers.$SnapTo$Ref s@45@01)) (refs $Snap.unit r@31@01))
        (< $Perm.No $k@40@01)
        (img@42@01 ($SortWrappers.$SnapTo$Ref s@45@01))))
    (=>
      (and
        (Set_in (inv@41@01 ($SortWrappers.$SnapTo$Ref s@45@01)) (refs $Snap.unit r@31@01))
        (< $Perm.No $k@40@01)
        (img@42@01 ($SortWrappers.$SnapTo$Ref s@45@01)))
      (Set_in s@45@01 ($PSF.domain_Q (as sm@44@01  $PSF<Q>)))))
  :pattern ((Set_in s@45@01 ($PSF.domain_Q (as sm@44@01  $PSF<Q>))))
  :qid |qp.psmDomDef7|)))
; Definitional axioms for snapshot map values
(assert (forall ((s@45@01 $Snap)) (!
  (=>
    (and
      (and
        (Set_in (inv@41@01 ($SortWrappers.$SnapTo$Ref s@45@01)) (refs $Snap.unit r@31@01))
        (< $Perm.No $k@40@01)
        (img@42@01 ($SortWrappers.$SnapTo$Ref s@45@01)))
      (ite
        (and
          (img@38@01 ($SortWrappers.$SnapTo$Ref s@45@01))
          (Set_in (inv@37@01 ($SortWrappers.$SnapTo$Ref s@45@01)) (refs $Snap.unit r@31@01)))
        (< $Perm.No $k@36@01)
        false))
    (and
      (not (= s@45@01 $Snap.unit))
      (=
        ($PSF.lookup_Q (as sm@44@01  $PSF<Q>) s@45@01)
        ($PSF.lookup_Q ($SortWrappers.$SnapTo$PSF<Q> $t@32@01) s@45@01))))
  :pattern (($PSF.lookup_Q (as sm@44@01  $PSF<Q>) s@45@01))
  :pattern (($PSF.lookup_Q ($SortWrappers.$SnapTo$PSF<Q> $t@32@01) s@45@01))
  :qid |qp.psmValDef6|)))
(assert (P%trigger ($SortWrappers.$PSF<Q>To$Snap (as sm@44@01  $PSF<Q>)) r@31@01))
; [exec]
; unfold acc(P(r), write)
(declare-const e@46@01 $Ref)
(set-option :timeout 0)
(push) ; 3
; [eval] (e in refs(r))
; [eval] refs(r)
(push) ; 4
(assert (refs%precondition $Snap.unit r@31@01))
(pop) ; 4
; Joined path conditions
(assert (refs%precondition $Snap.unit r@31@01))
(assert (Set_in e@46@01 (refs $Snap.unit r@31@01)))
(declare-const $k@47@01 $Perm)
(assert ($Perm.isReadVar $k@47@01))
(pop) ; 3
(declare-fun inv@48@01 ($Ref) $Ref)
(declare-fun img@49@01 ($Ref) Bool)
; Nested auxiliary terms: globals
(assert ($Perm.isReadVar $k@47@01))
; Nested auxiliary terms: non-globals
(assert (forall ((e@46@01 $Ref)) (!
  (=>
    (Set_in e@46@01 (refs $Snap.unit r@31@01))
    (refs%precondition $Snap.unit r@31@01))
  :pattern ((Set_in e@46@01 (refs $Snap.unit r@31@01)))
  :pattern ((inv@48@01 e@46@01))
  :pattern ((img@49@01 e@46@01))
  :qid |Q-aux|)))
(push) ; 3
(assert (not (forall ((e@46@01 $Ref)) (!
  (=>
    (and
      (refs%precondition $Snap.unit r@31@01)
      (Set_in e@46@01 (refs $Snap.unit r@31@01)))
    (or (= $k@47@01 $Perm.No) (< $Perm.No $k@47@01)))
  
  :qid |quant-u-23056|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Check receiver injectivity
(assert (forall ((e1@46@01 $Ref) (e2@46@01 $Ref)) (!
  (and
    (refs%precondition $Snap.unit r@31@01)
    (=>
      (and (Set_in e1@46@01 (refs $Snap.unit r@31@01)) (< $Perm.No $k@47@01))
      (refs%precondition $Snap.unit r@31@01)))
  
  :qid |Q-rcvrInj|)))
(push) ; 3
(assert (not (forall ((e1@46@01 $Ref) (e2@46@01 $Ref)) (!
  (=>
    (and
      (and (Set_in e1@46@01 (refs $Snap.unit r@31@01)) (< $Perm.No $k@47@01))
      (and (Set_in e2@46@01 (refs $Snap.unit r@31@01)) (< $Perm.No $k@47@01))
      (= e1@46@01 e2@46@01))
    (= e1@46@01 e2@46@01))
  
  :qid |Q-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((e@46@01 $Ref)) (!
  (refs%precondition $Snap.unit r@31@01)
  :pattern ((Set_in e@46@01 (refs $Snap.unit r@31@01)))
  :pattern ((inv@48@01 e@46@01))
  :pattern ((img@49@01 e@46@01))
  :qid |quant-u-23057|)))
(assert (forall ((r $Ref)) (!
  (=> (img@49@01 r) (refs%precondition $Snap.unit r@31@01))
  :pattern ((inv@48@01 r))
  :qid |Q-fctOfInv|)))
(assert (forall ((e@46@01 $Ref)) (!
  (=>
    (and (Set_in e@46@01 (refs $Snap.unit r@31@01)) (< $Perm.No $k@47@01))
    (and (= (inv@48@01 e@46@01) e@46@01) (img@49@01 e@46@01)))
  :pattern ((Set_in e@46@01 (refs $Snap.unit r@31@01)))
  :pattern ((inv@48@01 e@46@01))
  :pattern ((img@49@01 e@46@01))
  :qid |quant-u-23057|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@49@01 r)
      (and
        (Set_in (inv@48@01 r) (refs $Snap.unit r@31@01))
        (< $Perm.No $k@47@01)))
    (= (inv@48@01 r) r))
  :pattern ((inv@48@01 r))
  :qid |Q-fctOfInv|)))
; Permissions are non-negative
(assert (forall ((e@46@01 $Ref)) (!
  (<= $Perm.No $k@47@01)
  :pattern ((Set_in e@46@01 (refs $Snap.unit r@31@01)))
  :pattern ((inv@48@01 e@46@01))
  :pattern ((img@49@01 e@46@01))
  :qid |Q-permAtLeastZero|)))
(push) ; 3
(set-option :timeout 10)
(assert (not (forall ((r $Ref)) (!
  (and
    (= e@46@01 e@35@01)
    (=
      (and (img@49@01 r) (Set_in (inv@48@01 r) (refs $Snap.unit r@31@01)))
      (and (img@38@01 r) (Set_in (inv@37@01 r) (refs $Snap.unit r@31@01)))))
  
  :qid |quant-u-23058|))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; State saturation: after unfold
(set-option :timeout 40)
(check-sat)
; unknown
; [exec]
; r2 := tester(get(r))
; [eval] tester(get(r))
; [eval] get(r)
(set-option :timeout 0)
(push) ; 3
(assert (get%precondition $Snap.unit r@31@01))
(pop) ; 3
; Joined path conditions
(assert (get%precondition $Snap.unit r@31@01))
(push) ; 3
(declare-const $k@50@01 $Perm)
(assert ($Perm.isReadVar $k@50@01))
(push) ; 4
(assert (not (forall ((r $Ref)) (!
  (=>
    (and (= r (get $Snap.unit r@31@01)) (> $k@50@01 $Perm.No))
    (>
      (+
        (ite
          (and (img@38@01 r) (Set_in (inv@37@01 r) (refs $Snap.unit r@31@01)))
          (- $k@36@01 (pTaken@43@01 r))
          $Perm.No)
        (ite
          (and (img@49@01 r) (Set_in (inv@48@01 r) (refs $Snap.unit r@31@01)))
          $k@47@01
          $Perm.No))
      $Perm.No))
  
  :qid |quant-u-23059|))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(declare-const sm@51@01 $PSF<Q>)
(declare-const s@52@01 $Snap)
; Definitional axioms for snapshot map domain (instantiated)
; Definitional axioms for snapshot map values (instantiated)
(assert (=>
  (ite
    (and
      (img@38@01 (get $Snap.unit r@31@01))
      (Set_in (inv@37@01 (get $Snap.unit r@31@01)) (refs $Snap.unit r@31@01)))
    (< $Perm.No (- $k@36@01 (pTaken@43@01 (get $Snap.unit r@31@01))))
    false)
  (and
    (not (= ($SortWrappers.$RefTo$Snap (get $Snap.unit r@31@01)) $Snap.unit))
    (=
      ($PSF.lookup_Q (as sm@51@01  $PSF<Q>) ($SortWrappers.$RefTo$Snap (get $Snap.unit r@31@01)))
      ($PSF.lookup_Q ($SortWrappers.$SnapTo$PSF<Q> $t@32@01) ($SortWrappers.$RefTo$Snap (get $Snap.unit r@31@01)))))))
(assert (=>
  (ite
    (and
      (img@49@01 (get $Snap.unit r@31@01))
      (Set_in (inv@48@01 (get $Snap.unit r@31@01)) (refs $Snap.unit r@31@01)))
    (< $Perm.No $k@47@01)
    false)
  (and
    (not (= ($SortWrappers.$RefTo$Snap (get $Snap.unit r@31@01)) $Snap.unit))
    (=
      ($PSF.lookup_Q (as sm@51@01  $PSF<Q>) ($SortWrappers.$RefTo$Snap (get $Snap.unit r@31@01)))
      ($PSF.lookup_Q (as sm@44@01  $PSF<Q>) ($SortWrappers.$RefTo$Snap (get $Snap.unit r@31@01)))))))
(assert (tester%precondition ($PSF.lookup_Q (as sm@51@01  $PSF<Q>) ($SortWrappers.$RefTo$Snap (get $Snap.unit r@31@01))) (get $Snap.unit r@31@01)))
(pop) ; 3
; Joined path conditions
(assert ($Perm.isReadVar $k@50@01))
(assert (and
  (=>
    (ite
      (and
        (img@38@01 (get $Snap.unit r@31@01))
        (Set_in (inv@37@01 (get $Snap.unit r@31@01)) (refs $Snap.unit r@31@01)))
      (< $Perm.No (- $k@36@01 (pTaken@43@01 (get $Snap.unit r@31@01))))
      false)
    (and
      (not (= ($SortWrappers.$RefTo$Snap (get $Snap.unit r@31@01)) $Snap.unit))
      (=
        ($PSF.lookup_Q (as sm@51@01  $PSF<Q>) ($SortWrappers.$RefTo$Snap (get $Snap.unit r@31@01)))
        ($PSF.lookup_Q ($SortWrappers.$SnapTo$PSF<Q> $t@32@01) ($SortWrappers.$RefTo$Snap (get $Snap.unit r@31@01))))))
  (=>
    (ite
      (and
        (img@49@01 (get $Snap.unit r@31@01))
        (Set_in (inv@48@01 (get $Snap.unit r@31@01)) (refs $Snap.unit r@31@01)))
      (< $Perm.No $k@47@01)
      false)
    (and
      (not (= ($SortWrappers.$RefTo$Snap (get $Snap.unit r@31@01)) $Snap.unit))
      (=
        ($PSF.lookup_Q (as sm@51@01  $PSF<Q>) ($SortWrappers.$RefTo$Snap (get $Snap.unit r@31@01)))
        ($PSF.lookup_Q (as sm@44@01  $PSF<Q>) ($SortWrappers.$RefTo$Snap (get $Snap.unit r@31@01))))))
  (tester%precondition ($PSF.lookup_Q (as sm@51@01  $PSF<Q>) ($SortWrappers.$RefTo$Snap (get $Snap.unit r@31@01))) (get $Snap.unit r@31@01))))
(declare-const r2@53@01 $Ref)
(assert (=
  r2@53@01
  (tester ($PSF.lookup_Q (as sm@51@01  $PSF<Q>) ($SortWrappers.$RefTo$Snap (get $Snap.unit r@31@01))) (get $Snap.unit r@31@01))))
; [exec]
; r3 := testerFull(get(r))
; [eval] testerFull(get(r))
; [eval] get(r)
(push) ; 3
(pop) ; 3
; Joined path conditions
(push) ; 3
(push) ; 4
(assert (not (forall ((r $Ref)) (!
  (=>
    (= r (get $Snap.unit r@31@01))
    (>
      (+
        (ite
          (and (img@38@01 r) (Set_in (inv@37@01 r) (refs $Snap.unit r@31@01)))
          (- $k@36@01 (pTaken@43@01 r))
          $Perm.No)
        (ite
          (and (img@49@01 r) (Set_in (inv@48@01 r) (refs $Snap.unit r@31@01)))
          $k@47@01
          $Perm.No))
      $Perm.No))
  
  :qid |quant-u-23060|))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for snapshot map domain (instantiated)
; Definitional axioms for snapshot map values (instantiated)
(assert (testerFull%precondition ($PSF.lookup_Q (as sm@51@01  $PSF<Q>) ($SortWrappers.$RefTo$Snap (get $Snap.unit r@31@01))) (get $Snap.unit r@31@01)))
(pop) ; 3
; Joined path conditions
(assert (testerFull%precondition ($PSF.lookup_Q (as sm@51@01  $PSF<Q>) ($SortWrappers.$RefTo$Snap (get $Snap.unit r@31@01))) (get $Snap.unit r@31@01)))
(declare-const r3@54@01 $Ref)
(assert (=
  r3@54@01
  (testerFull ($PSF.lookup_Q (as sm@51@01  $PSF<Q>) ($SortWrappers.$RefTo$Snap (get $Snap.unit r@31@01))) (get $Snap.unit r@31@01))))
(pop) ; 2
(pop) ; 1
; ---------- pred3 ----------
(declare-const r@55@01 $Ref)
(declare-const r@56@01 $Ref)
(push) ; 1
(declare-const $t@57@01 $Snap)
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
(set-option :timeout 0)
(push) ; 2
(pop) ; 2
(push) ; 2
; [exec]
; var r2: Ref
(declare-const r2@58@01 $Ref)
; [exec]
; var r3: Ref
(declare-const r3@59@01 $Ref)
; [exec]
; unfold acc(P(r), 1 / 2)
(push) ; 3
(set-option :timeout 10)
(assert (not false))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(declare-const e@60@01 $Ref)
(set-option :timeout 0)
(push) ; 3
; [eval] (e in refs(r))
; [eval] refs(r)
(push) ; 4
(assert (refs%precondition $Snap.unit r@56@01))
(pop) ; 4
; Joined path conditions
(assert (refs%precondition $Snap.unit r@56@01))
(assert (Set_in e@60@01 (refs $Snap.unit r@56@01)))
(declare-const $k@61@01 $Perm)
(assert ($Perm.isReadVar $k@61@01))
(pop) ; 3
(declare-fun inv@62@01 ($Ref) $Ref)
(declare-fun img@63@01 ($Ref) Bool)
; Nested auxiliary terms: globals
(assert ($Perm.isReadVar $k@61@01))
; Nested auxiliary terms: non-globals
(assert (forall ((e@60@01 $Ref)) (!
  (=>
    (Set_in e@60@01 (refs $Snap.unit r@56@01))
    (refs%precondition $Snap.unit r@56@01))
  :pattern ((Set_in e@60@01 (refs $Snap.unit r@56@01)))
  :pattern ((inv@62@01 e@60@01))
  :pattern ((img@63@01 e@60@01))
  :qid |Q-aux|)))
(push) ; 3
(assert (not (forall ((e@60@01 $Ref)) (!
  (=>
    (and
      (refs%precondition $Snap.unit r@56@01)
      (Set_in e@60@01 (refs $Snap.unit r@56@01)))
    (or (= $k@61@01 $Perm.No) (< $Perm.No $k@61@01)))
  
  :qid |quant-u-23061|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Check receiver injectivity
(assert (forall ((e1@60@01 $Ref) (e2@60@01 $Ref)) (!
  (and
    (refs%precondition $Snap.unit r@56@01)
    (=>
      (and (Set_in e1@60@01 (refs $Snap.unit r@56@01)) (< $Perm.No $k@61@01))
      (refs%precondition $Snap.unit r@56@01)))
  
  :qid |Q-rcvrInj|)))
(push) ; 3
(assert (not (forall ((e1@60@01 $Ref) (e2@60@01 $Ref)) (!
  (=>
    (and
      (and (Set_in e1@60@01 (refs $Snap.unit r@56@01)) (< $Perm.No $k@61@01))
      (and (Set_in e2@60@01 (refs $Snap.unit r@56@01)) (< $Perm.No $k@61@01))
      (= e1@60@01 e2@60@01))
    (= e1@60@01 e2@60@01))
  
  :qid |Q-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((e@60@01 $Ref)) (!
  (refs%precondition $Snap.unit r@56@01)
  :pattern ((Set_in e@60@01 (refs $Snap.unit r@56@01)))
  :pattern ((inv@62@01 e@60@01))
  :pattern ((img@63@01 e@60@01))
  :qid |quant-u-23062|)))
(assert (forall ((r $Ref)) (!
  (=> (img@63@01 r) (refs%precondition $Snap.unit r@56@01))
  :pattern ((inv@62@01 r))
  :qid |Q-fctOfInv|)))
(assert (forall ((e@60@01 $Ref)) (!
  (=>
    (and
      (Set_in e@60@01 (refs $Snap.unit r@56@01))
      (< $Perm.No (* $k@61@01 (/ (to_real 1) (to_real 2)))))
    (and (= (inv@62@01 e@60@01) e@60@01) (img@63@01 e@60@01)))
  :pattern ((Set_in e@60@01 (refs $Snap.unit r@56@01)))
  :pattern ((inv@62@01 e@60@01))
  :pattern ((img@63@01 e@60@01))
  :qid |quant-u-23062|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@63@01 r)
      (and
        (Set_in (inv@62@01 r) (refs $Snap.unit r@56@01))
        (< $Perm.No (* $k@61@01 (/ (to_real 1) (to_real 2))))))
    (= (inv@62@01 r) r))
  :pattern ((inv@62@01 r))
  :qid |Q-fctOfInv|)))
; Permissions are non-negative
(assert (forall ((e@60@01 $Ref)) (!
  (<= $Perm.No (* $k@61@01 (/ (to_real 1) (to_real 2))))
  :pattern ((Set_in e@60@01 (refs $Snap.unit r@56@01)))
  :pattern ((inv@62@01 e@60@01))
  :pattern ((img@63@01 e@60@01))
  :qid |Q-permAtLeastZero|)))
; State saturation: after unfold
(set-option :timeout 40)
(check-sat)
; unknown
(assert (P%trigger $t@57@01 r@56@01))
; [exec]
; fold acc(P(r), 1 / 2)
(declare-const e@64@01 $Ref)
(set-option :timeout 0)
(push) ; 3
; [eval] (e in refs(r))
; [eval] refs(r)
(push) ; 4
(assert (refs%precondition $Snap.unit r@56@01))
(pop) ; 4
; Joined path conditions
(assert (refs%precondition $Snap.unit r@56@01))
(assert (Set_in e@64@01 (refs $Snap.unit r@56@01)))
(declare-const $k@65@01 $Perm)
(assert ($Perm.isReadVar $k@65@01))
(pop) ; 3
(declare-fun inv@66@01 ($Ref) $Ref)
(declare-fun img@67@01 ($Ref) Bool)
; Nested auxiliary terms: globals
(assert ($Perm.isReadVar $k@65@01))
; Nested auxiliary terms: non-globals
(assert (forall ((e@64@01 $Ref)) (!
  (=>
    (Set_in e@64@01 (refs $Snap.unit r@56@01))
    (refs%precondition $Snap.unit r@56@01))
  :pattern ((Set_in e@64@01 (refs $Snap.unit r@56@01)))
  :pattern ((inv@66@01 e@64@01))
  :pattern ((img@67@01 e@64@01))
  :qid |Q-aux|)))
(push) ; 3
(assert (not (forall ((e@64@01 $Ref)) (!
  (=>
    (and
      (refs%precondition $Snap.unit r@56@01)
      (Set_in e@64@01 (refs $Snap.unit r@56@01)))
    (or (= $k@65@01 $Perm.No) (< $Perm.No $k@65@01)))
  
  :qid |quant-u-23063|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Check receiver injectivity
(assert (forall ((e1@64@01 $Ref) (e2@64@01 $Ref)) (!
  (and
    (refs%precondition $Snap.unit r@56@01)
    (=>
      (and (Set_in e1@64@01 (refs $Snap.unit r@56@01)) (< $Perm.No $k@65@01))
      (refs%precondition $Snap.unit r@56@01)))
  
  :qid |Q-rcvrInj|)))
(push) ; 3
(assert (not (forall ((e1@64@01 $Ref) (e2@64@01 $Ref)) (!
  (=>
    (and
      (and (Set_in e1@64@01 (refs $Snap.unit r@56@01)) (< $Perm.No $k@65@01))
      (and (Set_in e2@64@01 (refs $Snap.unit r@56@01)) (< $Perm.No $k@65@01))
      (= e1@64@01 e2@64@01))
    (= e1@64@01 e2@64@01))
  
  :qid |Q-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((e@64@01 $Ref)) (!
  (refs%precondition $Snap.unit r@56@01)
  :pattern ((Set_in e@64@01 (refs $Snap.unit r@56@01)))
  :pattern ((inv@66@01 e@64@01))
  :pattern ((img@67@01 e@64@01))
  :qid |Q-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=> (img@67@01 r) (refs%precondition $Snap.unit r@56@01))
  :pattern ((inv@66@01 r))
  :qid |Q-fctOfInv|)))
(assert (forall ((e@64@01 $Ref)) (!
  (=>
    (and (Set_in e@64@01 (refs $Snap.unit r@56@01)) (< $Perm.No $k@65@01))
    (and (= (inv@66@01 e@64@01) e@64@01) (img@67@01 e@64@01)))
  :pattern ((Set_in e@64@01 (refs $Snap.unit r@56@01)))
  :pattern ((inv@66@01 e@64@01))
  :pattern ((img@67@01 e@64@01))
  :qid |Q-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@67@01 r)
      (and
        (Set_in (inv@66@01 r) (refs $Snap.unit r@56@01))
        (< $Perm.No $k@65@01)))
    (= (inv@66@01 r) r))
  :pattern ((inv@66@01 r))
  :qid |Q-fctOfInv|)))
; Precomputing data for removing quantified permissions
(define-fun pTaken@68@01 ((r $Ref)) $Perm
  (ite
    (and
      (Set_in (inv@66@01 r) (refs $Snap.unit r@56@01))
      (img@67@01 r)
      (= r (inv@66@01 r)))
    ($Perm.min
      (ite
        (and (img@63@01 r) (Set_in (inv@62@01 r) (refs $Snap.unit r@56@01)))
        (* $k@61@01 (/ (to_real 1) (to_real 2)))
        $Perm.No)
      (* $k@65@01 (/ (to_real 1) (to_real 2))))
    $Perm.No))
; Done precomputing, updating quantified chunks
; State saturation: before repetition
(set-option :timeout 10)
(check-sat)
; unknown
; Constrain original permissions $k@65@01 * 1/2
(assert (forall ((r $Ref)) (!
  (=>
    (not
      (=
        (ite
          (and (img@63@01 r) (Set_in (inv@62@01 r) (refs $Snap.unit r@56@01)))
          (* $k@61@01 (/ (to_real 1) (to_real 2)))
          $Perm.No)
        $Perm.No))
    (ite
      (and (img@63@01 r) (Set_in (inv@62@01 r) (refs $Snap.unit r@56@01)))
      (<
        (ite
          (and
            (Set_in (inv@66@01 r) (refs $Snap.unit r@56@01))
            (img@67@01 r)
            (= r (inv@66@01 r)))
          (* $k@65@01 (/ (to_real 1) (to_real 2)))
          $Perm.No)
        (* $k@61@01 (/ (to_real 1) (to_real 2))))
      (<
        (ite
          (and
            (Set_in (inv@66@01 r) (refs $Snap.unit r@56@01))
            (img@67@01 r)
            (= r (inv@66@01 r)))
          (* $k@65@01 (/ (to_real 1) (to_real 2)))
          $Perm.No)
        $Perm.No)))
  :pattern ((img@63@01 r))
  :pattern ((Set_in (inv@62@01 r) (refs $Snap.unit r@56@01)))
  :pattern ((Set_in (inv@66@01 r) (refs $Snap.unit r@56@01)))
  :pattern ((img@67@01 r))
  :qid |qp.srp10|)))
; Intermediate check if already taken enough permissions
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 500)
(assert (not (forall ((r $Ref)) (!
  (=>
    (and
      (Set_in (inv@66@01 r) (refs $Snap.unit r@56@01))
      (img@67@01 r)
      (= r (inv@66@01 r)))
    (= (- (* $k@65@01 (/ (to_real 1) (to_real 2))) (pTaken@68@01 r)) $Perm.No))
  
  :qid |quant-u-23066|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Final check if taken enough permissions
; Done removing quantified permissions
(declare-const sm@69@01 $PSF<Q>)
(declare-const s@70@01 $Snap)
; Definitional axioms for snapshot map domain
(assert (forall ((s@70@01 $Snap)) (!
  (and
    (=>
      (Set_in s@70@01 ($PSF.domain_Q (as sm@69@01  $PSF<Q>)))
      (and
        (Set_in (inv@66@01 ($SortWrappers.$SnapTo$Ref s@70@01)) (refs $Snap.unit r@56@01))
        (< $Perm.No (* $k@65@01 (/ (to_real 1) (to_real 2))))
        (img@67@01 ($SortWrappers.$SnapTo$Ref s@70@01))))
    (=>
      (and
        (Set_in (inv@66@01 ($SortWrappers.$SnapTo$Ref s@70@01)) (refs $Snap.unit r@56@01))
        (< $Perm.No (* $k@65@01 (/ (to_real 1) (to_real 2))))
        (img@67@01 ($SortWrappers.$SnapTo$Ref s@70@01)))
      (Set_in s@70@01 ($PSF.domain_Q (as sm@69@01  $PSF<Q>)))))
  :pattern ((Set_in s@70@01 ($PSF.domain_Q (as sm@69@01  $PSF<Q>))))
  :qid |qp.psmDomDef12|)))
; Definitional axioms for snapshot map values
(assert (forall ((s@70@01 $Snap)) (!
  (=>
    (and
      (and
        (Set_in (inv@66@01 ($SortWrappers.$SnapTo$Ref s@70@01)) (refs $Snap.unit r@56@01))
        (< $Perm.No (* $k@65@01 (/ (to_real 1) (to_real 2))))
        (img@67@01 ($SortWrappers.$SnapTo$Ref s@70@01)))
      (ite
        (and
          (img@63@01 ($SortWrappers.$SnapTo$Ref s@70@01))
          (Set_in (inv@62@01 ($SortWrappers.$SnapTo$Ref s@70@01)) (refs $Snap.unit r@56@01)))
        (< $Perm.No (* $k@61@01 (/ (to_real 1) (to_real 2))))
        false))
    (and
      (not (= s@70@01 $Snap.unit))
      (=
        ($PSF.lookup_Q (as sm@69@01  $PSF<Q>) s@70@01)
        ($PSF.lookup_Q ($SortWrappers.$SnapTo$PSF<Q> $t@57@01) s@70@01))))
  :pattern (($PSF.lookup_Q (as sm@69@01  $PSF<Q>) s@70@01))
  :pattern (($PSF.lookup_Q ($SortWrappers.$SnapTo$PSF<Q> $t@57@01) s@70@01))
  :qid |qp.psmValDef11|)))
(assert (P%trigger ($SortWrappers.$PSF<Q>To$Snap (as sm@69@01  $PSF<Q>)) r@56@01))
(assert (= $t@57@01 ($SortWrappers.$PSF<Q>To$Snap (as sm@69@01  $PSF<Q>))))
; [exec]
; unfold acc(P(r), 1 / 2)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not false))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(declare-const e@71@01 $Ref)
(set-option :timeout 0)
(push) ; 3
; [eval] (e in refs(r))
; [eval] refs(r)
(push) ; 4
(assert (refs%precondition $Snap.unit r@56@01))
(pop) ; 4
; Joined path conditions
(assert (refs%precondition $Snap.unit r@56@01))
(assert (Set_in e@71@01 (refs $Snap.unit r@56@01)))
(declare-const $k@72@01 $Perm)
(assert ($Perm.isReadVar $k@72@01))
(pop) ; 3
(declare-fun inv@73@01 ($Ref) $Ref)
(declare-fun img@74@01 ($Ref) Bool)
; Nested auxiliary terms: globals
(assert ($Perm.isReadVar $k@72@01))
; Nested auxiliary terms: non-globals
(assert (forall ((e@71@01 $Ref)) (!
  (=>
    (Set_in e@71@01 (refs $Snap.unit r@56@01))
    (refs%precondition $Snap.unit r@56@01))
  :pattern ((Set_in e@71@01 (refs $Snap.unit r@56@01)))
  :pattern ((inv@73@01 e@71@01))
  :pattern ((img@74@01 e@71@01))
  :qid |Q-aux|)))
(push) ; 3
(assert (not (forall ((e@71@01 $Ref)) (!
  (=>
    (and
      (refs%precondition $Snap.unit r@56@01)
      (Set_in e@71@01 (refs $Snap.unit r@56@01)))
    (or (= $k@72@01 $Perm.No) (< $Perm.No $k@72@01)))
  
  :qid |quant-u-23067|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Check receiver injectivity
(assert (forall ((e1@71@01 $Ref) (e2@71@01 $Ref)) (!
  (and
    (refs%precondition $Snap.unit r@56@01)
    (=>
      (and (Set_in e1@71@01 (refs $Snap.unit r@56@01)) (< $Perm.No $k@72@01))
      (refs%precondition $Snap.unit r@56@01)))
  
  :qid |Q-rcvrInj|)))
(push) ; 3
(assert (not (forall ((e1@71@01 $Ref) (e2@71@01 $Ref)) (!
  (=>
    (and
      (and (Set_in e1@71@01 (refs $Snap.unit r@56@01)) (< $Perm.No $k@72@01))
      (and (Set_in e2@71@01 (refs $Snap.unit r@56@01)) (< $Perm.No $k@72@01))
      (= e1@71@01 e2@71@01))
    (= e1@71@01 e2@71@01))
  
  :qid |Q-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((e@71@01 $Ref)) (!
  (refs%precondition $Snap.unit r@56@01)
  :pattern ((Set_in e@71@01 (refs $Snap.unit r@56@01)))
  :pattern ((inv@73@01 e@71@01))
  :pattern ((img@74@01 e@71@01))
  :qid |quant-u-23068|)))
(assert (forall ((r $Ref)) (!
  (=> (img@74@01 r) (refs%precondition $Snap.unit r@56@01))
  :pattern ((inv@73@01 r))
  :qid |Q-fctOfInv|)))
(assert (forall ((e@71@01 $Ref)) (!
  (=>
    (and
      (Set_in e@71@01 (refs $Snap.unit r@56@01))
      (< $Perm.No (* $k@72@01 (/ (to_real 1) (to_real 2)))))
    (and (= (inv@73@01 e@71@01) e@71@01) (img@74@01 e@71@01)))
  :pattern ((Set_in e@71@01 (refs $Snap.unit r@56@01)))
  :pattern ((inv@73@01 e@71@01))
  :pattern ((img@74@01 e@71@01))
  :qid |quant-u-23068|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@74@01 r)
      (and
        (Set_in (inv@73@01 r) (refs $Snap.unit r@56@01))
        (< $Perm.No (* $k@72@01 (/ (to_real 1) (to_real 2))))))
    (= (inv@73@01 r) r))
  :pattern ((inv@73@01 r))
  :qid |Q-fctOfInv|)))
; Permissions are non-negative
(assert (forall ((e@71@01 $Ref)) (!
  (<= $Perm.No (* $k@72@01 (/ (to_real 1) (to_real 2))))
  :pattern ((Set_in e@71@01 (refs $Snap.unit r@56@01)))
  :pattern ((inv@73@01 e@71@01))
  :pattern ((img@74@01 e@71@01))
  :qid |Q-permAtLeastZero|)))
(push) ; 3
(set-option :timeout 10)
(assert (not (forall ((r $Ref)) (!
  (and
    (= e@71@01 e@60@01)
    (=
      (and (img@74@01 r) (Set_in (inv@73@01 r) (refs $Snap.unit r@56@01)))
      (and (img@63@01 r) (Set_in (inv@62@01 r) (refs $Snap.unit r@56@01)))))
  
  :qid |quant-u-23069|))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; State saturation: after unfold
(set-option :timeout 40)
(check-sat)
; unknown
; [exec]
; r2 := tester(get(r))
; [eval] tester(get(r))
; [eval] get(r)
(set-option :timeout 0)
(push) ; 3
(assert (get%precondition $Snap.unit r@56@01))
(pop) ; 3
; Joined path conditions
(assert (get%precondition $Snap.unit r@56@01))
(push) ; 3
(declare-const $k@75@01 $Perm)
(assert ($Perm.isReadVar $k@75@01))
(push) ; 4
(assert (not (forall ((r $Ref)) (!
  (=>
    (and (= r (get $Snap.unit r@56@01)) (> $k@75@01 $Perm.No))
    (>
      (+
        (ite
          (and (img@63@01 r) (Set_in (inv@62@01 r) (refs $Snap.unit r@56@01)))
          (- (* $k@61@01 (/ (to_real 1) (to_real 2))) (pTaken@68@01 r))
          $Perm.No)
        (ite
          (and (img@74@01 r) (Set_in (inv@73@01 r) (refs $Snap.unit r@56@01)))
          (* $k@72@01 (/ (to_real 1) (to_real 2)))
          $Perm.No))
      $Perm.No))
  
  :qid |quant-u-23070|))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(declare-const sm@76@01 $PSF<Q>)
(declare-const s@77@01 $Snap)
; Definitional axioms for snapshot map domain (instantiated)
; Definitional axioms for snapshot map values (instantiated)
(assert (=>
  (ite
    (and
      (img@63@01 (get $Snap.unit r@56@01))
      (Set_in (inv@62@01 (get $Snap.unit r@56@01)) (refs $Snap.unit r@56@01)))
    (<
      $Perm.No
      (-
        (* $k@61@01 (/ (to_real 1) (to_real 2)))
        (pTaken@68@01 (get $Snap.unit r@56@01))))
    false)
  (and
    (not (= ($SortWrappers.$RefTo$Snap (get $Snap.unit r@56@01)) $Snap.unit))
    (=
      ($PSF.lookup_Q (as sm@76@01  $PSF<Q>) ($SortWrappers.$RefTo$Snap (get $Snap.unit r@56@01)))
      ($PSF.lookup_Q ($SortWrappers.$SnapTo$PSF<Q> $t@57@01) ($SortWrappers.$RefTo$Snap (get $Snap.unit r@56@01)))))))
(assert (=>
  (ite
    (and
      (img@74@01 (get $Snap.unit r@56@01))
      (Set_in (inv@73@01 (get $Snap.unit r@56@01)) (refs $Snap.unit r@56@01)))
    (< $Perm.No (* $k@72@01 (/ (to_real 1) (to_real 2))))
    false)
  (and
    (not (= ($SortWrappers.$RefTo$Snap (get $Snap.unit r@56@01)) $Snap.unit))
    (=
      ($PSF.lookup_Q (as sm@76@01  $PSF<Q>) ($SortWrappers.$RefTo$Snap (get $Snap.unit r@56@01)))
      ($PSF.lookup_Q ($SortWrappers.$SnapTo$PSF<Q> $t@57@01) ($SortWrappers.$RefTo$Snap (get $Snap.unit r@56@01)))))))
(assert (tester%precondition ($PSF.lookup_Q (as sm@76@01  $PSF<Q>) ($SortWrappers.$RefTo$Snap (get $Snap.unit r@56@01))) (get $Snap.unit r@56@01)))
(pop) ; 3
; Joined path conditions
(assert ($Perm.isReadVar $k@75@01))
(assert (and
  (=>
    (ite
      (and
        (img@63@01 (get $Snap.unit r@56@01))
        (Set_in (inv@62@01 (get $Snap.unit r@56@01)) (refs $Snap.unit r@56@01)))
      (<
        $Perm.No
        (-
          (* $k@61@01 (/ (to_real 1) (to_real 2)))
          (pTaken@68@01 (get $Snap.unit r@56@01))))
      false)
    (and
      (not (= ($SortWrappers.$RefTo$Snap (get $Snap.unit r@56@01)) $Snap.unit))
      (=
        ($PSF.lookup_Q (as sm@76@01  $PSF<Q>) ($SortWrappers.$RefTo$Snap (get $Snap.unit r@56@01)))
        ($PSF.lookup_Q ($SortWrappers.$SnapTo$PSF<Q> $t@57@01) ($SortWrappers.$RefTo$Snap (get $Snap.unit r@56@01))))))
  (=>
    (ite
      (and
        (img@74@01 (get $Snap.unit r@56@01))
        (Set_in (inv@73@01 (get $Snap.unit r@56@01)) (refs $Snap.unit r@56@01)))
      (< $Perm.No (* $k@72@01 (/ (to_real 1) (to_real 2))))
      false)
    (and
      (not (= ($SortWrappers.$RefTo$Snap (get $Snap.unit r@56@01)) $Snap.unit))
      (=
        ($PSF.lookup_Q (as sm@76@01  $PSF<Q>) ($SortWrappers.$RefTo$Snap (get $Snap.unit r@56@01)))
        ($PSF.lookup_Q ($SortWrappers.$SnapTo$PSF<Q> $t@57@01) ($SortWrappers.$RefTo$Snap (get $Snap.unit r@56@01))))))
  (tester%precondition ($PSF.lookup_Q (as sm@76@01  $PSF<Q>) ($SortWrappers.$RefTo$Snap (get $Snap.unit r@56@01))) (get $Snap.unit r@56@01))))
(declare-const r2@78@01 $Ref)
(assert (=
  r2@78@01
  (tester ($PSF.lookup_Q (as sm@76@01  $PSF<Q>) ($SortWrappers.$RefTo$Snap (get $Snap.unit r@56@01))) (get $Snap.unit r@56@01))))
; [exec]
; r3 := testerFull(get(r))
; [eval] testerFull(get(r))
; [eval] get(r)
(push) ; 3
(pop) ; 3
; Joined path conditions
(push) ; 3
(push) ; 4
(assert (not (forall ((r $Ref)) (!
  (=>
    (= r (get $Snap.unit r@56@01))
    (>
      (+
        (ite
          (and (img@63@01 r) (Set_in (inv@62@01 r) (refs $Snap.unit r@56@01)))
          (- (* $k@61@01 (/ (to_real 1) (to_real 2))) (pTaken@68@01 r))
          $Perm.No)
        (ite
          (and (img@74@01 r) (Set_in (inv@73@01 r) (refs $Snap.unit r@56@01)))
          (* $k@72@01 (/ (to_real 1) (to_real 2)))
          $Perm.No))
      $Perm.No))
  
  :qid |quant-u-23071|))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for snapshot map domain (instantiated)
; Definitional axioms for snapshot map values (instantiated)
(assert (testerFull%precondition ($PSF.lookup_Q (as sm@76@01  $PSF<Q>) ($SortWrappers.$RefTo$Snap (get $Snap.unit r@56@01))) (get $Snap.unit r@56@01)))
(pop) ; 3
; Joined path conditions
(assert (testerFull%precondition ($PSF.lookup_Q (as sm@76@01  $PSF<Q>) ($SortWrappers.$RefTo$Snap (get $Snap.unit r@56@01))) (get $Snap.unit r@56@01)))
(declare-const r3@79@01 $Ref)
(assert (=
  r3@79@01
  (testerFull ($PSF.lookup_Q (as sm@76@01  $PSF<Q>) ($SortWrappers.$RefTo$Snap (get $Snap.unit r@56@01))) (get $Snap.unit r@56@01))))
(pop) ; 2
(pop) ; 1
; ---------- pred4 ----------
(declare-const r@80@01 $Ref)
(declare-const r@81@01 $Ref)
(push) ; 1
(declare-const $t@82@01 $Snap)
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
(set-option :timeout 0)
(push) ; 2
(pop) ; 2
(push) ; 2
; [exec]
; var r2: Ref
(declare-const r2@83@01 $Ref)
; [exec]
; var r3: Ref
(declare-const r3@84@01 $Ref)
; [exec]
; unfold acc(P2(r), wildcard)
(declare-const $k@85@01 $Perm)
(assert ($Perm.isReadVar $k@85@01))
(assert (< $k@85@01 $Perm.Write))
(assert (<= $Perm.No (- $Perm.Write $k@85@01)))
(push) ; 3
(set-option :timeout 10)
(assert (not (< $Perm.No $k@85@01)))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(declare-const e@86@01 $Ref)
(set-option :timeout 0)
(push) ; 3
; [eval] (e in refs(r))
; [eval] refs(r)
(push) ; 4
(assert (refs%precondition $Snap.unit r@81@01))
(pop) ; 4
; Joined path conditions
(assert (refs%precondition $Snap.unit r@81@01))
(assert (Set_in e@86@01 (refs $Snap.unit r@81@01)))
(pop) ; 3
(declare-fun inv@87@01 ($Ref) $Ref)
(declare-fun img@88@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
(assert (forall ((e@86@01 $Ref)) (!
  (=>
    (Set_in e@86@01 (refs $Snap.unit r@81@01))
    (refs%precondition $Snap.unit r@81@01))
  :pattern ((Set_in e@86@01 (refs $Snap.unit r@81@01)))
  :pattern ((inv@87@01 e@86@01))
  :pattern ((img@88@01 e@86@01))
  :qid |Q-aux|)))
; Check receiver injectivity
(assert (forall ((e1@86@01 $Ref) (e2@86@01 $Ref)) (!
  (and
    (refs%precondition $Snap.unit r@81@01)
    (=>
      (Set_in e1@86@01 (refs $Snap.unit r@81@01))
      (refs%precondition $Snap.unit r@81@01)))
  
  :qid |Q-rcvrInj|)))
(push) ; 3
(assert (not (forall ((e1@86@01 $Ref) (e2@86@01 $Ref)) (!
  (=>
    (and
      (Set_in e1@86@01 (refs $Snap.unit r@81@01))
      (Set_in e2@86@01 (refs $Snap.unit r@81@01))
      (= e1@86@01 e2@86@01))
    (= e1@86@01 e2@86@01))
  
  :qid |Q-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((e@86@01 $Ref)) (!
  (refs%precondition $Snap.unit r@81@01)
  :pattern ((Set_in e@86@01 (refs $Snap.unit r@81@01)))
  :pattern ((inv@87@01 e@86@01))
  :pattern ((img@88@01 e@86@01))
  :qid |quant-u-23073|)))
(assert (forall ((r $Ref)) (!
  (=> (img@88@01 r) (refs%precondition $Snap.unit r@81@01))
  :pattern ((inv@87@01 r))
  :qid |Q-fctOfInv|)))
(assert (forall ((e@86@01 $Ref)) (!
  (=>
    (and
      (Set_in e@86@01 (refs $Snap.unit r@81@01))
      (< $Perm.No (* (/ (to_real 1) (to_real 2)) $k@85@01)))
    (and (= (inv@87@01 e@86@01) e@86@01) (img@88@01 e@86@01)))
  :pattern ((Set_in e@86@01 (refs $Snap.unit r@81@01)))
  :pattern ((inv@87@01 e@86@01))
  :pattern ((img@88@01 e@86@01))
  :qid |quant-u-23073|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@88@01 r)
      (and
        (Set_in (inv@87@01 r) (refs $Snap.unit r@81@01))
        (< $Perm.No (* (/ (to_real 1) (to_real 2)) $k@85@01))))
    (= (inv@87@01 r) r))
  :pattern ((inv@87@01 r))
  :qid |Q-fctOfInv|)))
; Permissions are non-negative
(assert (forall ((e@86@01 $Ref)) (!
  (<= $Perm.No (* (/ (to_real 1) (to_real 2)) $k@85@01))
  :pattern ((Set_in e@86@01 (refs $Snap.unit r@81@01)))
  :pattern ((inv@87@01 e@86@01))
  :pattern ((img@88@01 e@86@01))
  :qid |Q-permAtLeastZero|)))
; State saturation: after unfold
(set-option :timeout 40)
(check-sat)
; unknown
(assert (P2%trigger $t@82@01 r@81@01))
; [exec]
; fold acc(P2(r), wildcard)
(declare-const $k@89@01 $Perm)
(assert ($Perm.isReadVar $k@89@01))
(declare-const e@90@01 $Ref)
(set-option :timeout 0)
(push) ; 3
; [eval] (e in refs(r))
; [eval] refs(r)
(push) ; 4
(assert (refs%precondition $Snap.unit r@81@01))
(pop) ; 4
; Joined path conditions
(assert (refs%precondition $Snap.unit r@81@01))
(assert (Set_in e@90@01 (refs $Snap.unit r@81@01)))
(pop) ; 3
(declare-fun inv@91@01 ($Ref) $Ref)
(declare-fun img@92@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
(assert (forall ((e@90@01 $Ref)) (!
  (=>
    (Set_in e@90@01 (refs $Snap.unit r@81@01))
    (refs%precondition $Snap.unit r@81@01))
  :pattern ((Set_in e@90@01 (refs $Snap.unit r@81@01)))
  :pattern ((inv@91@01 e@90@01))
  :pattern ((img@92@01 e@90@01))
  :qid |Q-aux|)))
; Check receiver injectivity
(assert (forall ((e1@90@01 $Ref) (e2@90@01 $Ref)) (!
  (and
    (refs%precondition $Snap.unit r@81@01)
    (=>
      (Set_in e1@90@01 (refs $Snap.unit r@81@01))
      (refs%precondition $Snap.unit r@81@01)))
  
  :qid |Q-rcvrInj|)))
(push) ; 3
(assert (not (forall ((e1@90@01 $Ref) (e2@90@01 $Ref)) (!
  (=>
    (and
      (Set_in e1@90@01 (refs $Snap.unit r@81@01))
      (Set_in e2@90@01 (refs $Snap.unit r@81@01))
      (= e1@90@01 e2@90@01))
    (= e1@90@01 e2@90@01))
  
  :qid |Q-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((e@90@01 $Ref)) (!
  (refs%precondition $Snap.unit r@81@01)
  :pattern ((Set_in e@90@01 (refs $Snap.unit r@81@01)))
  :pattern ((inv@91@01 e@90@01))
  :pattern ((img@92@01 e@90@01))
  :qid |Q-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=> (img@92@01 r) (refs%precondition $Snap.unit r@81@01))
  :pattern ((inv@91@01 r))
  :qid |Q-fctOfInv|)))
(assert (forall ((e@90@01 $Ref)) (!
  (=>
    (Set_in e@90@01 (refs $Snap.unit r@81@01))
    (and (= (inv@91@01 e@90@01) e@90@01) (img@92@01 e@90@01)))
  :pattern ((Set_in e@90@01 (refs $Snap.unit r@81@01)))
  :pattern ((inv@91@01 e@90@01))
  :pattern ((img@92@01 e@90@01))
  :qid |Q-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@92@01 r) (Set_in (inv@91@01 r) (refs $Snap.unit r@81@01)))
    (= (inv@91@01 r) r))
  :pattern ((inv@91@01 r))
  :qid |Q-fctOfInv|)))
; Precomputing data for removing quantified permissions
(define-fun pTaken@93@01 ((r $Ref)) $Perm
  (ite
    (and
      (Set_in (inv@91@01 r) (refs $Snap.unit r@81@01))
      (img@92@01 r)
      (= r (inv@91@01 r)))
    ($Perm.min
      (ite
        (and (img@88@01 r) (Set_in (inv@87@01 r) (refs $Snap.unit r@81@01)))
        (* (/ (to_real 1) (to_real 2)) $k@85@01)
        $Perm.No)
      (* (/ (to_real 1) (to_real 2)) $k@89@01))
    $Perm.No))
; Done precomputing, updating quantified chunks
; State saturation: before repetition
(set-option :timeout 10)
(check-sat)
; unknown
; Constrain original permissions 1/2 * $k@89@01
(assert (forall ((r $Ref)) (!
  (=>
    (not
      (=
        (ite
          (and (img@88@01 r) (Set_in (inv@87@01 r) (refs $Snap.unit r@81@01)))
          (* (/ (to_real 1) (to_real 2)) $k@85@01)
          $Perm.No)
        $Perm.No))
    (ite
      (and (img@88@01 r) (Set_in (inv@87@01 r) (refs $Snap.unit r@81@01)))
      (<
        (ite
          (and
            (Set_in (inv@91@01 r) (refs $Snap.unit r@81@01))
            (img@92@01 r)
            (= r (inv@91@01 r)))
          (* (/ (to_real 1) (to_real 2)) $k@89@01)
          $Perm.No)
        (* (/ (to_real 1) (to_real 2)) $k@85@01))
      (<
        (ite
          (and
            (Set_in (inv@91@01 r) (refs $Snap.unit r@81@01))
            (img@92@01 r)
            (= r (inv@91@01 r)))
          (* (/ (to_real 1) (to_real 2)) $k@89@01)
          $Perm.No)
        $Perm.No)))
  :pattern ((img@88@01 r))
  :pattern ((Set_in (inv@87@01 r) (refs $Snap.unit r@81@01)))
  :pattern ((Set_in (inv@91@01 r) (refs $Snap.unit r@81@01)))
  :pattern ((img@92@01 r))
  :qid |qp.srp15|)))
; Intermediate check if already taken enough permissions
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 500)
(assert (not (forall ((r $Ref)) (!
  (=>
    (and
      (Set_in (inv@91@01 r) (refs $Snap.unit r@81@01))
      (img@92@01 r)
      (= r (inv@91@01 r)))
    (= (- (* (/ (to_real 1) (to_real 2)) $k@89@01) (pTaken@93@01 r)) $Perm.No))
  
  :qid |quant-u-23077|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Final check if taken enough permissions
; Done removing quantified permissions
(declare-const sm@94@01 $PSF<Q>)
(declare-const s@95@01 $Snap)
; Definitional axioms for snapshot map domain
(assert (forall ((s@95@01 $Snap)) (!
  (and
    (=>
      (Set_in s@95@01 ($PSF.domain_Q (as sm@94@01  $PSF<Q>)))
      (and
        (Set_in (inv@91@01 ($SortWrappers.$SnapTo$Ref s@95@01)) (refs $Snap.unit r@81@01))
        (< $Perm.No (* (/ (to_real 1) (to_real 2)) $k@89@01))
        (img@92@01 ($SortWrappers.$SnapTo$Ref s@95@01))))
    (=>
      (and
        (Set_in (inv@91@01 ($SortWrappers.$SnapTo$Ref s@95@01)) (refs $Snap.unit r@81@01))
        (< $Perm.No (* (/ (to_real 1) (to_real 2)) $k@89@01))
        (img@92@01 ($SortWrappers.$SnapTo$Ref s@95@01)))
      (Set_in s@95@01 ($PSF.domain_Q (as sm@94@01  $PSF<Q>)))))
  :pattern ((Set_in s@95@01 ($PSF.domain_Q (as sm@94@01  $PSF<Q>))))
  :qid |qp.psmDomDef17|)))
; Definitional axioms for snapshot map values
(assert (forall ((s@95@01 $Snap)) (!
  (=>
    (and
      (and
        (Set_in (inv@91@01 ($SortWrappers.$SnapTo$Ref s@95@01)) (refs $Snap.unit r@81@01))
        (< $Perm.No (* (/ (to_real 1) (to_real 2)) $k@89@01))
        (img@92@01 ($SortWrappers.$SnapTo$Ref s@95@01)))
      (ite
        (and
          (img@88@01 ($SortWrappers.$SnapTo$Ref s@95@01))
          (Set_in (inv@87@01 ($SortWrappers.$SnapTo$Ref s@95@01)) (refs $Snap.unit r@81@01)))
        (< $Perm.No (* (/ (to_real 1) (to_real 2)) $k@85@01))
        false))
    (and
      (not (= s@95@01 $Snap.unit))
      (=
        ($PSF.lookup_Q (as sm@94@01  $PSF<Q>) s@95@01)
        ($PSF.lookup_Q ($SortWrappers.$SnapTo$PSF<Q> $t@82@01) s@95@01))))
  :pattern (($PSF.lookup_Q (as sm@94@01  $PSF<Q>) s@95@01))
  :pattern (($PSF.lookup_Q ($SortWrappers.$SnapTo$PSF<Q> $t@82@01) s@95@01))
  :qid |qp.psmValDef16|)))
(assert (P2%trigger ($SortWrappers.$PSF<Q>To$Snap (as sm@94@01  $PSF<Q>)) r@81@01))
(declare-const $t@96@01 $Snap)
(assert (and
  (=> (< $Perm.No (- $Perm.Write $k@85@01)) (= $t@96@01 $t@82@01))
  (=>
    (< $Perm.No $k@89@01)
    (= $t@96@01 ($SortWrappers.$PSF<Q>To$Snap (as sm@94@01  $PSF<Q>))))))
(assert (<= $Perm.No (+ (- $Perm.Write $k@85@01) $k@89@01)))
; [exec]
; unfold acc(P2(r), wildcard)
(declare-const $k@97@01 $Perm)
(assert ($Perm.isReadVar $k@97@01))
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (not (= (+ (- $Perm.Write $k@85@01) $k@89@01) $Perm.No))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(assert (< $k@97@01 (+ (- $Perm.Write $k@85@01) $k@89@01)))
(assert (<= $Perm.No (- (+ (- $Perm.Write $k@85@01) $k@89@01) $k@97@01)))
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (< $Perm.No $k@97@01)))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(declare-const e@98@01 $Ref)
(set-option :timeout 0)
(push) ; 3
; [eval] (e in refs(r))
; [eval] refs(r)
(push) ; 4
(assert (refs%precondition $Snap.unit r@81@01))
(pop) ; 4
; Joined path conditions
(assert (refs%precondition $Snap.unit r@81@01))
(assert (Set_in e@98@01 (refs $Snap.unit r@81@01)))
(pop) ; 3
(declare-fun inv@99@01 ($Ref) $Ref)
(declare-fun img@100@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
(assert (forall ((e@98@01 $Ref)) (!
  (=>
    (Set_in e@98@01 (refs $Snap.unit r@81@01))
    (refs%precondition $Snap.unit r@81@01))
  :pattern ((Set_in e@98@01 (refs $Snap.unit r@81@01)))
  :pattern ((inv@99@01 e@98@01))
  :pattern ((img@100@01 e@98@01))
  :qid |Q-aux|)))
; Check receiver injectivity
(assert (forall ((e1@98@01 $Ref) (e2@98@01 $Ref)) (!
  (and
    (refs%precondition $Snap.unit r@81@01)
    (=>
      (Set_in e1@98@01 (refs $Snap.unit r@81@01))
      (refs%precondition $Snap.unit r@81@01)))
  
  :qid |Q-rcvrInj|)))
(push) ; 3
(assert (not (forall ((e1@98@01 $Ref) (e2@98@01 $Ref)) (!
  (=>
    (and
      (Set_in e1@98@01 (refs $Snap.unit r@81@01))
      (Set_in e2@98@01 (refs $Snap.unit r@81@01))
      (= e1@98@01 e2@98@01))
    (= e1@98@01 e2@98@01))
  
  :qid |Q-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((e@98@01 $Ref)) (!
  (refs%precondition $Snap.unit r@81@01)
  :pattern ((Set_in e@98@01 (refs $Snap.unit r@81@01)))
  :pattern ((inv@99@01 e@98@01))
  :pattern ((img@100@01 e@98@01))
  :qid |quant-u-23079|)))
(assert (forall ((r $Ref)) (!
  (=> (img@100@01 r) (refs%precondition $Snap.unit r@81@01))
  :pattern ((inv@99@01 r))
  :qid |Q-fctOfInv|)))
(assert (forall ((e@98@01 $Ref)) (!
  (=>
    (and
      (Set_in e@98@01 (refs $Snap.unit r@81@01))
      (< $Perm.No (* (/ (to_real 1) (to_real 2)) $k@97@01)))
    (and (= (inv@99@01 e@98@01) e@98@01) (img@100@01 e@98@01)))
  :pattern ((Set_in e@98@01 (refs $Snap.unit r@81@01)))
  :pattern ((inv@99@01 e@98@01))
  :pattern ((img@100@01 e@98@01))
  :qid |quant-u-23079|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@100@01 r)
      (and
        (Set_in (inv@99@01 r) (refs $Snap.unit r@81@01))
        (< $Perm.No (* (/ (to_real 1) (to_real 2)) $k@97@01))))
    (= (inv@99@01 r) r))
  :pattern ((inv@99@01 r))
  :qid |Q-fctOfInv|)))
; Permissions are non-negative
(assert (forall ((e@98@01 $Ref)) (!
  (<= $Perm.No (* (/ (to_real 1) (to_real 2)) $k@97@01))
  :pattern ((Set_in e@98@01 (refs $Snap.unit r@81@01)))
  :pattern ((inv@99@01 e@98@01))
  :pattern ((img@100@01 e@98@01))
  :qid |Q-permAtLeastZero|)))
(push) ; 3
(set-option :timeout 10)
(assert (not (forall ((r $Ref)) (!
  (and
    (= e@98@01 e@86@01)
    (=
      (and (img@100@01 r) (Set_in (inv@99@01 r) (refs $Snap.unit r@81@01)))
      (and (img@88@01 r) (Set_in (inv@87@01 r) (refs $Snap.unit r@81@01)))))
  
  :qid |quant-u-23080|))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; State saturation: after unfold
(set-option :timeout 40)
(check-sat)
; unknown
(assert (P2%trigger $t@96@01 r@81@01))
; [exec]
; r2 := tester(get(r))
; [eval] tester(get(r))
; [eval] get(r)
(set-option :timeout 0)
(push) ; 3
(assert (get%precondition $Snap.unit r@81@01))
(pop) ; 3
; Joined path conditions
(assert (get%precondition $Snap.unit r@81@01))
(push) ; 3
(declare-const $k@101@01 $Perm)
(assert ($Perm.isReadVar $k@101@01))
(push) ; 4
(assert (not (forall ((r $Ref)) (!
  (=>
    (and (= r (get $Snap.unit r@81@01)) (> $k@101@01 $Perm.No))
    (>
      (+
        (ite
          (and (img@88@01 r) (Set_in (inv@87@01 r) (refs $Snap.unit r@81@01)))
          (- (* (/ (to_real 1) (to_real 2)) $k@85@01) (pTaken@93@01 r))
          $Perm.No)
        (ite
          (and (img@100@01 r) (Set_in (inv@99@01 r) (refs $Snap.unit r@81@01)))
          (* (/ (to_real 1) (to_real 2)) $k@97@01)
          $Perm.No))
      $Perm.No))
  
  :qid |quant-u-23081|))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(declare-const sm@102@01 $PSF<Q>)
(declare-const s@103@01 $Snap)
; Definitional axioms for snapshot map domain (instantiated)
; Definitional axioms for snapshot map values (instantiated)
(assert (=>
  (ite
    (and
      (img@88@01 (get $Snap.unit r@81@01))
      (Set_in (inv@87@01 (get $Snap.unit r@81@01)) (refs $Snap.unit r@81@01)))
    (<
      $Perm.No
      (-
        (* (/ (to_real 1) (to_real 2)) $k@85@01)
        (pTaken@93@01 (get $Snap.unit r@81@01))))
    false)
  (and
    (not (= ($SortWrappers.$RefTo$Snap (get $Snap.unit r@81@01)) $Snap.unit))
    (=
      ($PSF.lookup_Q (as sm@102@01  $PSF<Q>) ($SortWrappers.$RefTo$Snap (get $Snap.unit r@81@01)))
      ($PSF.lookup_Q ($SortWrappers.$SnapTo$PSF<Q> $t@82@01) ($SortWrappers.$RefTo$Snap (get $Snap.unit r@81@01)))))))
(assert (=>
  (ite
    (and
      (img@100@01 (get $Snap.unit r@81@01))
      (Set_in (inv@99@01 (get $Snap.unit r@81@01)) (refs $Snap.unit r@81@01)))
    (< $Perm.No (* (/ (to_real 1) (to_real 2)) $k@97@01))
    false)
  (and
    (not (= ($SortWrappers.$RefTo$Snap (get $Snap.unit r@81@01)) $Snap.unit))
    (=
      ($PSF.lookup_Q (as sm@102@01  $PSF<Q>) ($SortWrappers.$RefTo$Snap (get $Snap.unit r@81@01)))
      ($PSF.lookup_Q ($SortWrappers.$SnapTo$PSF<Q> $t@96@01) ($SortWrappers.$RefTo$Snap (get $Snap.unit r@81@01)))))))
(assert (tester%precondition ($PSF.lookup_Q (as sm@102@01  $PSF<Q>) ($SortWrappers.$RefTo$Snap (get $Snap.unit r@81@01))) (get $Snap.unit r@81@01)))
(pop) ; 3
; Joined path conditions
(assert ($Perm.isReadVar $k@101@01))
(assert (and
  (=>
    (ite
      (and
        (img@88@01 (get $Snap.unit r@81@01))
        (Set_in (inv@87@01 (get $Snap.unit r@81@01)) (refs $Snap.unit r@81@01)))
      (<
        $Perm.No
        (-
          (* (/ (to_real 1) (to_real 2)) $k@85@01)
          (pTaken@93@01 (get $Snap.unit r@81@01))))
      false)
    (and
      (not (= ($SortWrappers.$RefTo$Snap (get $Snap.unit r@81@01)) $Snap.unit))
      (=
        ($PSF.lookup_Q (as sm@102@01  $PSF<Q>) ($SortWrappers.$RefTo$Snap (get $Snap.unit r@81@01)))
        ($PSF.lookup_Q ($SortWrappers.$SnapTo$PSF<Q> $t@82@01) ($SortWrappers.$RefTo$Snap (get $Snap.unit r@81@01))))))
  (=>
    (ite
      (and
        (img@100@01 (get $Snap.unit r@81@01))
        (Set_in (inv@99@01 (get $Snap.unit r@81@01)) (refs $Snap.unit r@81@01)))
      (< $Perm.No (* (/ (to_real 1) (to_real 2)) $k@97@01))
      false)
    (and
      (not (= ($SortWrappers.$RefTo$Snap (get $Snap.unit r@81@01)) $Snap.unit))
      (=
        ($PSF.lookup_Q (as sm@102@01  $PSF<Q>) ($SortWrappers.$RefTo$Snap (get $Snap.unit r@81@01)))
        ($PSF.lookup_Q ($SortWrappers.$SnapTo$PSF<Q> $t@96@01) ($SortWrappers.$RefTo$Snap (get $Snap.unit r@81@01))))))
  (tester%precondition ($PSF.lookup_Q (as sm@102@01  $PSF<Q>) ($SortWrappers.$RefTo$Snap (get $Snap.unit r@81@01))) (get $Snap.unit r@81@01))))
(declare-const r2@104@01 $Ref)
(assert (=
  r2@104@01
  (tester ($PSF.lookup_Q (as sm@102@01  $PSF<Q>) ($SortWrappers.$RefTo$Snap (get $Snap.unit r@81@01))) (get $Snap.unit r@81@01))))
; [exec]
; r3 := testerFull(get(r))
; [eval] testerFull(get(r))
; [eval] get(r)
(push) ; 3
(pop) ; 3
; Joined path conditions
(push) ; 3
(push) ; 4
(assert (not (forall ((r $Ref)) (!
  (=>
    (= r (get $Snap.unit r@81@01))
    (>
      (+
        (ite
          (and (img@88@01 r) (Set_in (inv@87@01 r) (refs $Snap.unit r@81@01)))
          (- (* (/ (to_real 1) (to_real 2)) $k@85@01) (pTaken@93@01 r))
          $Perm.No)
        (ite
          (and (img@100@01 r) (Set_in (inv@99@01 r) (refs $Snap.unit r@81@01)))
          (* (/ (to_real 1) (to_real 2)) $k@97@01)
          $Perm.No))
      $Perm.No))
  
  :qid |quant-u-23082|))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for snapshot map domain (instantiated)
; Definitional axioms for snapshot map values (instantiated)
(assert (testerFull%precondition ($PSF.lookup_Q (as sm@102@01  $PSF<Q>) ($SortWrappers.$RefTo$Snap (get $Snap.unit r@81@01))) (get $Snap.unit r@81@01)))
(pop) ; 3
; Joined path conditions
(assert (testerFull%precondition ($PSF.lookup_Q (as sm@102@01  $PSF<Q>) ($SortWrappers.$RefTo$Snap (get $Snap.unit r@81@01))) (get $Snap.unit r@81@01)))
(declare-const r3@105@01 $Ref)
(assert (=
  r3@105@01
  (testerFull ($PSF.lookup_Q (as sm@102@01  $PSF<Q>) ($SortWrappers.$RefTo$Snap (get $Snap.unit r@81@01))) (get $Snap.unit r@81@01))))
(pop) ; 2
(pop) ; 1
; ---------- func1 ----------
(declare-const r@106@01 $Ref)
(declare-const r@107@01 $Ref)
(push) ; 1
(declare-const $k@108@01 $Perm)
(assert ($Perm.isReadVar $k@108@01))
(declare-const $t@109@01 $FVF<q>)
(assert (<= $Perm.No $k@108@01))
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
(set-option :timeout 0)
(push) ; 2
(pop) ; 2
(push) ; 2
; [exec]
; var r2: Ref
(declare-const r2@110@01 $Ref)
; [exec]
; var r3: Ref
(declare-const r3@111@01 $Ref)
; [exec]
; unfold acc(R(r), wildcard)
(declare-const $k@112@01 $Perm)
(assert ($Perm.isReadVar $k@112@01))
(push) ; 3
(set-option :timeout 10)
(assert (not (not (= $k@108@01 $Perm.No))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(assert (< $k@112@01 $k@108@01))
(assert (<= $Perm.No (- $k@108@01 $k@112@01)))
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (< $Perm.No $k@112@01)))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(declare-const e@113@01 $Ref)
(set-option :timeout 0)
(push) ; 3
; [eval] (e in refs(r))
; [eval] refs(r)
(push) ; 4
(assert (refs%precondition $Snap.unit r@107@01))
(pop) ; 4
; Joined path conditions
(assert (refs%precondition $Snap.unit r@107@01))
(assert (Set_in e@113@01 (refs $Snap.unit r@107@01)))
(declare-const $k@114@01 $Perm)
(assert ($Perm.isReadVar $k@114@01))
(pop) ; 3
(declare-fun inv@115@01 ($Ref) $Ref)
(declare-fun img@116@01 ($Ref) Bool)
; Nested auxiliary terms: globals
(assert ($Perm.isReadVar $k@114@01))
; Nested auxiliary terms: non-globals
(assert (forall ((e@113@01 $Ref)) (!
  (=>
    (Set_in e@113@01 (refs $Snap.unit r@107@01))
    (refs%precondition $Snap.unit r@107@01))
  :pattern ((Set_in e@113@01 (refs $Snap.unit r@107@01)))
  :pattern ((inv@115@01 e@113@01))
  :pattern ((img@116@01 e@113@01))
  :qid |q-aux|)))
(push) ; 3
(assert (not (forall ((e@113@01 $Ref)) (!
  (=>
    (and
      (refs%precondition $Snap.unit r@107@01)
      (Set_in e@113@01 (refs $Snap.unit r@107@01)))
    (or (= $k@114@01 $Perm.No) (< $Perm.No $k@114@01)))
  
  :qid |quant-u-23083|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Check receiver injectivity
(assert (forall ((e1@113@01 $Ref) (e2@113@01 $Ref)) (!
  (and
    (refs%precondition $Snap.unit r@107@01)
    (=>
      (and (Set_in e1@113@01 (refs $Snap.unit r@107@01)) (< $Perm.No $k@114@01))
      (refs%precondition $Snap.unit r@107@01)))
  
  :qid |q-rcvrInj|)))
(push) ; 3
(assert (not (forall ((e1@113@01 $Ref) (e2@113@01 $Ref)) (!
  (=>
    (and
      (and (Set_in e1@113@01 (refs $Snap.unit r@107@01)) (< $Perm.No $k@114@01))
      (and (Set_in e2@113@01 (refs $Snap.unit r@107@01)) (< $Perm.No $k@114@01))
      (= e1@113@01 e2@113@01))
    (= e1@113@01 e2@113@01))
  
  :qid |q-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((e@113@01 $Ref)) (!
  (refs%precondition $Snap.unit r@107@01)
  :pattern ((Set_in e@113@01 (refs $Snap.unit r@107@01)))
  :pattern ((inv@115@01 e@113@01))
  :pattern ((img@116@01 e@113@01))
  :qid |quant-u-23084|)))
(assert (forall ((r $Ref)) (!
  (=> (img@116@01 r) (refs%precondition $Snap.unit r@107@01))
  :pattern ((inv@115@01 r))
  :qid |q-fctOfInv|)))
(assert (forall ((e@113@01 $Ref)) (!
  (=>
    (and
      (Set_in e@113@01 (refs $Snap.unit r@107@01))
      (< $Perm.No (* $k@114@01 $k@112@01)))
    (and (= (inv@115@01 e@113@01) e@113@01) (img@116@01 e@113@01)))
  :pattern ((Set_in e@113@01 (refs $Snap.unit r@107@01)))
  :pattern ((inv@115@01 e@113@01))
  :pattern ((img@116@01 e@113@01))
  :qid |quant-u-23084|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@116@01 r)
      (and
        (Set_in (inv@115@01 r) (refs $Snap.unit r@107@01))
        (< $Perm.No (* $k@114@01 $k@112@01))))
    (= (inv@115@01 r) r))
  :pattern ((inv@115@01 r))
  :qid |q-fctOfInv|)))
; Permissions are non-negative
(assert (forall ((e@113@01 $Ref)) (!
  (<= $Perm.No (* $k@114@01 $k@112@01))
  :pattern ((Set_in e@113@01 (refs $Snap.unit r@107@01)))
  :pattern ((inv@115@01 e@113@01))
  :pattern ((img@116@01 e@113@01))
  :qid |q-permAtLeastZero|)))
; Field permissions are at most one
(assert (forall ((e@113@01 $Ref)) (!
  (<= (* $k@114@01 $k@112@01) $Perm.Write)
  :pattern ((Set_in e@113@01 (refs $Snap.unit r@107@01)))
  :pattern ((inv@115@01 e@113@01))
  :pattern ((img@116@01 e@113@01))
  :qid |q-permAtMostOne|)))
; Permission implies non-null receiver
(assert (forall ((e@113@01 $Ref)) (!
  (=>
    (and
      (Set_in e@113@01 (refs $Snap.unit r@107@01))
      (< $Perm.No (* $k@114@01 $k@112@01)))
    (not (= e@113@01 $Ref.null)))
  :pattern ((Set_in e@113@01 (refs $Snap.unit r@107@01)))
  :pattern ((inv@115@01 e@113@01))
  :pattern ((img@116@01 e@113@01))
  :qid |q-permImpliesNonNull|)))
; State saturation: after unfold
(set-option :timeout 40)
(check-sat)
; unknown
(assert (R%trigger ($SortWrappers.$FVF<q>To$Snap $t@109@01) r@107@01))
; [exec]
; fold acc(R(r), wildcard)
(declare-const $k@117@01 $Perm)
(assert ($Perm.isReadVar $k@117@01))
(declare-const e@118@01 $Ref)
(set-option :timeout 0)
(push) ; 3
; [eval] (e in refs(r))
; [eval] refs(r)
(push) ; 4
(assert (refs%precondition $Snap.unit r@107@01))
(pop) ; 4
; Joined path conditions
(assert (refs%precondition $Snap.unit r@107@01))
(assert (Set_in e@118@01 (refs $Snap.unit r@107@01)))
(declare-const $k@119@01 $Perm)
(assert ($Perm.isReadVar $k@119@01))
(pop) ; 3
(declare-fun inv@120@01 ($Ref) $Ref)
(declare-fun img@121@01 ($Ref) Bool)
; Nested auxiliary terms: globals
(assert ($Perm.isReadVar $k@119@01))
; Nested auxiliary terms: non-globals
(assert (forall ((e@118@01 $Ref)) (!
  (=>
    (Set_in e@118@01 (refs $Snap.unit r@107@01))
    (refs%precondition $Snap.unit r@107@01))
  :pattern ((Set_in e@118@01 (refs $Snap.unit r@107@01)))
  :pattern ((inv@120@01 e@118@01))
  :pattern ((img@121@01 e@118@01))
  :qid |q-aux|)))
(push) ; 3
(assert (not (forall ((e@118@01 $Ref)) (!
  (=>
    (and
      (refs%precondition $Snap.unit r@107@01)
      (Set_in e@118@01 (refs $Snap.unit r@107@01)))
    (or (= $k@119@01 $Perm.No) (< $Perm.No $k@119@01)))
  
  :qid |quant-u-23085|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Check receiver injectivity
(assert (forall ((e1@118@01 $Ref) (e2@118@01 $Ref)) (!
  (and
    (refs%precondition $Snap.unit r@107@01)
    (=>
      (and (Set_in e1@118@01 (refs $Snap.unit r@107@01)) (< $Perm.No $k@119@01))
      (refs%precondition $Snap.unit r@107@01)))
  
  :qid |q-rcvrInj|)))
(push) ; 3
(assert (not (forall ((e1@118@01 $Ref) (e2@118@01 $Ref)) (!
  (=>
    (and
      (and (Set_in e1@118@01 (refs $Snap.unit r@107@01)) (< $Perm.No $k@119@01))
      (and (Set_in e2@118@01 (refs $Snap.unit r@107@01)) (< $Perm.No $k@119@01))
      (= e1@118@01 e2@118@01))
    (= e1@118@01 e2@118@01))
  
  :qid |q-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((e@118@01 $Ref)) (!
  (refs%precondition $Snap.unit r@107@01)
  :pattern ((Set_in e@118@01 (refs $Snap.unit r@107@01)))
  :pattern ((inv@120@01 e@118@01))
  :pattern ((img@121@01 e@118@01))
  :qid |q-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=> (img@121@01 r) (refs%precondition $Snap.unit r@107@01))
  :pattern ((inv@120@01 r))
  :qid |q-fctOfInv|)))
(assert (forall ((e@118@01 $Ref)) (!
  (=>
    (and (Set_in e@118@01 (refs $Snap.unit r@107@01)) (< $Perm.No $k@119@01))
    (and (= (inv@120@01 e@118@01) e@118@01) (img@121@01 e@118@01)))
  :pattern ((Set_in e@118@01 (refs $Snap.unit r@107@01)))
  :pattern ((inv@120@01 e@118@01))
  :pattern ((img@121@01 e@118@01))
  :qid |q-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@121@01 r)
      (and
        (Set_in (inv@120@01 r) (refs $Snap.unit r@107@01))
        (< $Perm.No $k@119@01)))
    (= (inv@120@01 r) r))
  :pattern ((inv@120@01 r))
  :qid |q-fctOfInv|)))
; Precomputing data for removing quantified permissions
(define-fun pTaken@122@01 ((r $Ref)) $Perm
  (ite
    (and
      (Set_in (inv@120@01 r) (refs $Snap.unit r@107@01))
      (img@121@01 r)
      (= r (inv@120@01 r)))
    ($Perm.min
      (ite
        (and (img@116@01 r) (Set_in (inv@115@01 r) (refs $Snap.unit r@107@01)))
        (* $k@114@01 $k@112@01)
        $Perm.No)
      (* $k@119@01 $k@117@01))
    $Perm.No))
; Done precomputing, updating quantified chunks
; State saturation: before repetition
(set-option :timeout 10)
(check-sat)
; unknown
; Constrain original permissions $k@119@01 * $k@117@01
(assert (forall ((r $Ref)) (!
  (=>
    (not
      (=
        (ite
          (and (img@116@01 r) (Set_in (inv@115@01 r) (refs $Snap.unit r@107@01)))
          (* $k@114@01 $k@112@01)
          $Perm.No)
        $Perm.No))
    (ite
      (and (img@116@01 r) (Set_in (inv@115@01 r) (refs $Snap.unit r@107@01)))
      (<
        (ite
          (and
            (Set_in (inv@120@01 r) (refs $Snap.unit r@107@01))
            (img@121@01 r)
            (= r (inv@120@01 r)))
          (* $k@119@01 $k@117@01)
          $Perm.No)
        (* $k@114@01 $k@112@01))
      (<
        (ite
          (and
            (Set_in (inv@120@01 r) (refs $Snap.unit r@107@01))
            (img@121@01 r)
            (= r (inv@120@01 r)))
          (* $k@119@01 $k@117@01)
          $Perm.No)
        $Perm.No)))
  :pattern ((img@116@01 r))
  :pattern ((Set_in (inv@115@01 r) (refs $Snap.unit r@107@01)))
  :pattern ((Set_in (inv@120@01 r) (refs $Snap.unit r@107@01)))
  :pattern ((img@121@01 r))
  :qid |qp.srp20|)))
; Intermediate check if already taken enough permissions
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 500)
(assert (not (forall ((r $Ref)) (!
  (=>
    (and
      (Set_in (inv@120@01 r) (refs $Snap.unit r@107@01))
      (img@121@01 r)
      (= r (inv@120@01 r)))
    (= (- (* $k@119@01 $k@117@01) (pTaken@122@01 r)) $Perm.No))
  
  :qid |quant-u-23088|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Final check if taken enough permissions
; Done removing quantified permissions
(declare-const sm@123@01 $FVF<q>)
; Definitional axioms for snapshot map domain
(assert (forall ((r $Ref)) (!
  (and
    (=>
      (Set_in r ($FVF.domain_q (as sm@123@01  $FVF<q>)))
      (and
        (Set_in (inv@120@01 r) (refs $Snap.unit r@107@01))
        (< $Perm.No (* $k@119@01 $k@117@01))
        (img@121@01 r)))
    (=>
      (and
        (Set_in (inv@120@01 r) (refs $Snap.unit r@107@01))
        (< $Perm.No (* $k@119@01 $k@117@01))
        (img@121@01 r))
      (Set_in r ($FVF.domain_q (as sm@123@01  $FVF<q>)))))
  :pattern ((Set_in r ($FVF.domain_q (as sm@123@01  $FVF<q>))))
  :qid |qp.fvfDomDef22|)))
; Definitional axioms for snapshot map values
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and
        (Set_in (inv@120@01 r) (refs $Snap.unit r@107@01))
        (< $Perm.No (* $k@119@01 $k@117@01))
        (img@121@01 r))
      (ite
        (and (img@116@01 r) (Set_in (inv@115@01 r) (refs $Snap.unit r@107@01)))
        (< $Perm.No (* $k@114@01 $k@112@01))
        false))
    (= ($FVF.lookup_q (as sm@123@01  $FVF<q>) r) ($FVF.lookup_q $t@109@01 r)))
  :pattern (($FVF.lookup_q (as sm@123@01  $FVF<q>) r))
  :pattern (($FVF.lookup_q $t@109@01 r))
  :qid |qp.fvfValDef21|)))
(assert (R%trigger ($SortWrappers.$FVF<q>To$Snap (as sm@123@01  $FVF<q>)) r@107@01))
(declare-const $t@124@01 $Snap)
(assert (and
  (=>
    (< $Perm.No (- $k@108@01 $k@112@01))
    (= $t@124@01 ($SortWrappers.$FVF<q>To$Snap $t@109@01)))
  (=>
    (< $Perm.No $k@117@01)
    (= $t@124@01 ($SortWrappers.$FVF<q>To$Snap (as sm@123@01  $FVF<q>))))))
(assert (<= $Perm.No (+ (- $k@108@01 $k@112@01) $k@117@01)))
; [exec]
; unfold acc(R(r), wildcard)
(declare-const $k@125@01 $Perm)
(assert ($Perm.isReadVar $k@125@01))
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (not (= (+ (- $k@108@01 $k@112@01) $k@117@01) $Perm.No))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(assert (< $k@125@01 (+ (- $k@108@01 $k@112@01) $k@117@01)))
(assert (<= $Perm.No (- (+ (- $k@108@01 $k@112@01) $k@117@01) $k@125@01)))
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (< $Perm.No $k@125@01)))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(declare-const e@126@01 $Ref)
(set-option :timeout 0)
(push) ; 3
; [eval] (e in refs(r))
; [eval] refs(r)
(push) ; 4
(assert (refs%precondition $Snap.unit r@107@01))
(pop) ; 4
; Joined path conditions
(assert (refs%precondition $Snap.unit r@107@01))
(assert (Set_in e@126@01 (refs $Snap.unit r@107@01)))
(declare-const $k@127@01 $Perm)
(assert ($Perm.isReadVar $k@127@01))
(pop) ; 3
(declare-fun inv@128@01 ($Ref) $Ref)
(declare-fun img@129@01 ($Ref) Bool)
; Nested auxiliary terms: globals
(assert ($Perm.isReadVar $k@127@01))
; Nested auxiliary terms: non-globals
(assert (forall ((e@126@01 $Ref)) (!
  (=>
    (Set_in e@126@01 (refs $Snap.unit r@107@01))
    (refs%precondition $Snap.unit r@107@01))
  :pattern ((Set_in e@126@01 (refs $Snap.unit r@107@01)))
  :pattern ((inv@128@01 e@126@01))
  :pattern ((img@129@01 e@126@01))
  :qid |q-aux|)))
(push) ; 3
(assert (not (forall ((e@126@01 $Ref)) (!
  (=>
    (and
      (refs%precondition $Snap.unit r@107@01)
      (Set_in e@126@01 (refs $Snap.unit r@107@01)))
    (or (= $k@127@01 $Perm.No) (< $Perm.No $k@127@01)))
  
  :qid |quant-u-23089|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Check receiver injectivity
(assert (forall ((e1@126@01 $Ref) (e2@126@01 $Ref)) (!
  (and
    (refs%precondition $Snap.unit r@107@01)
    (=>
      (and (Set_in e1@126@01 (refs $Snap.unit r@107@01)) (< $Perm.No $k@127@01))
      (refs%precondition $Snap.unit r@107@01)))
  
  :qid |q-rcvrInj|)))
(push) ; 3
(assert (not (forall ((e1@126@01 $Ref) (e2@126@01 $Ref)) (!
  (=>
    (and
      (and (Set_in e1@126@01 (refs $Snap.unit r@107@01)) (< $Perm.No $k@127@01))
      (and (Set_in e2@126@01 (refs $Snap.unit r@107@01)) (< $Perm.No $k@127@01))
      (= e1@126@01 e2@126@01))
    (= e1@126@01 e2@126@01))
  
  :qid |q-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((e@126@01 $Ref)) (!
  (refs%precondition $Snap.unit r@107@01)
  :pattern ((Set_in e@126@01 (refs $Snap.unit r@107@01)))
  :pattern ((inv@128@01 e@126@01))
  :pattern ((img@129@01 e@126@01))
  :qid |quant-u-23090|)))
(assert (forall ((r $Ref)) (!
  (=> (img@129@01 r) (refs%precondition $Snap.unit r@107@01))
  :pattern ((inv@128@01 r))
  :qid |q-fctOfInv|)))
(assert (forall ((e@126@01 $Ref)) (!
  (=>
    (and
      (Set_in e@126@01 (refs $Snap.unit r@107@01))
      (< $Perm.No (* $k@127@01 $k@125@01)))
    (and (= (inv@128@01 e@126@01) e@126@01) (img@129@01 e@126@01)))
  :pattern ((Set_in e@126@01 (refs $Snap.unit r@107@01)))
  :pattern ((inv@128@01 e@126@01))
  :pattern ((img@129@01 e@126@01))
  :qid |quant-u-23090|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@129@01 r)
      (and
        (Set_in (inv@128@01 r) (refs $Snap.unit r@107@01))
        (< $Perm.No (* $k@127@01 $k@125@01))))
    (= (inv@128@01 r) r))
  :pattern ((inv@128@01 r))
  :qid |q-fctOfInv|)))
; Permissions are non-negative
(assert (forall ((e@126@01 $Ref)) (!
  (<= $Perm.No (* $k@127@01 $k@125@01))
  :pattern ((Set_in e@126@01 (refs $Snap.unit r@107@01)))
  :pattern ((inv@128@01 e@126@01))
  :pattern ((img@129@01 e@126@01))
  :qid |q-permAtLeastZero|)))
; Field permissions are at most one
(assert (forall ((e@126@01 $Ref)) (!
  (<= (* $k@127@01 $k@125@01) $Perm.Write)
  :pattern ((Set_in e@126@01 (refs $Snap.unit r@107@01)))
  :pattern ((inv@128@01 e@126@01))
  :pattern ((img@129@01 e@126@01))
  :qid |q-permAtMostOne|)))
; Permission implies non-null receiver
(assert (forall ((e@126@01 $Ref)) (!
  (=>
    (and
      (Set_in e@126@01 (refs $Snap.unit r@107@01))
      (< $Perm.No (* $k@127@01 $k@125@01)))
    (not (= e@126@01 $Ref.null)))
  :pattern ((Set_in e@126@01 (refs $Snap.unit r@107@01)))
  :pattern ((inv@128@01 e@126@01))
  :pattern ((img@129@01 e@126@01))
  :qid |q-permImpliesNonNull|)))
(push) ; 3
(set-option :timeout 10)
(assert (not (forall ((r $Ref)) (!
  (and
    (= e@126@01 e@113@01)
    (=
      (and (img@129@01 r) (Set_in (inv@128@01 r) (refs $Snap.unit r@107@01)))
      (and (img@116@01 r) (Set_in (inv@115@01 r) (refs $Snap.unit r@107@01)))))
  
  :qid |quant-u-23091|))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; State saturation: after unfold
(set-option :timeout 40)
(check-sat)
; unknown
(assert (R%trigger $t@124@01 r@107@01))
; [exec]
; r2 := testerfield(get(r))
; [eval] testerfield(get(r))
; [eval] get(r)
(set-option :timeout 0)
(push) ; 3
(assert (get%precondition $Snap.unit r@107@01))
(pop) ; 3
; Joined path conditions
(assert (get%precondition $Snap.unit r@107@01))
(push) ; 3
(declare-const $k@130@01 $Perm)
(assert ($Perm.isReadVar $k@130@01))
(push) ; 4
(assert (not (forall ((r $Ref)) (!
  (=>
    (and (= r (get $Snap.unit r@107@01)) (> $k@130@01 $Perm.No))
    (>
      (+
        (ite
          (and (img@116@01 r) (Set_in (inv@115@01 r) (refs $Snap.unit r@107@01)))
          (- (* $k@114@01 $k@112@01) (pTaken@122@01 r))
          $Perm.No)
        (ite
          (and (img@129@01 r) (Set_in (inv@128@01 r) (refs $Snap.unit r@107@01)))
          (* $k@127@01 $k@125@01)
          $Perm.No))
      $Perm.No))
  
  :qid |quant-u-23092|))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(declare-const sm@131@01 $FVF<q>)
; Definitional axioms for snapshot map domain (instantiated)
; Definitional axioms for snapshot map values (instantiated)
(assert (=>
  (ite
    (and
      (img@116@01 (get $Snap.unit r@107@01))
      (Set_in (inv@115@01 (get $Snap.unit r@107@01)) (refs $Snap.unit r@107@01)))
    (<
      $Perm.No
      (- (* $k@114@01 $k@112@01) (pTaken@122@01 (get $Snap.unit r@107@01))))
    false)
  (=
    ($FVF.lookup_q (as sm@131@01  $FVF<q>) (get $Snap.unit r@107@01))
    ($FVF.lookup_q $t@109@01 (get $Snap.unit r@107@01)))))
(assert (=>
  (ite
    (and
      (img@129@01 (get $Snap.unit r@107@01))
      (Set_in (inv@128@01 (get $Snap.unit r@107@01)) (refs $Snap.unit r@107@01)))
    (< $Perm.No (* $k@127@01 $k@125@01))
    false)
  (=
    ($FVF.lookup_q (as sm@131@01  $FVF<q>) (get $Snap.unit r@107@01))
    ($FVF.lookup_q ($SortWrappers.$SnapTo$FVF<q> $t@124@01) (get $Snap.unit r@107@01)))))
(assert (testerfield%precondition ($SortWrappers.$RefTo$Snap ($FVF.lookup_q (as sm@131@01  $FVF<q>) (get $Snap.unit r@107@01))) (get $Snap.unit r@107@01)))
(pop) ; 3
; Joined path conditions
(assert ($Perm.isReadVar $k@130@01))
(assert (and
  (=>
    (ite
      (and
        (img@116@01 (get $Snap.unit r@107@01))
        (Set_in (inv@115@01 (get $Snap.unit r@107@01)) (refs $Snap.unit r@107@01)))
      (<
        $Perm.No
        (- (* $k@114@01 $k@112@01) (pTaken@122@01 (get $Snap.unit r@107@01))))
      false)
    (=
      ($FVF.lookup_q (as sm@131@01  $FVF<q>) (get $Snap.unit r@107@01))
      ($FVF.lookup_q $t@109@01 (get $Snap.unit r@107@01))))
  (=>
    (ite
      (and
        (img@129@01 (get $Snap.unit r@107@01))
        (Set_in (inv@128@01 (get $Snap.unit r@107@01)) (refs $Snap.unit r@107@01)))
      (< $Perm.No (* $k@127@01 $k@125@01))
      false)
    (=
      ($FVF.lookup_q (as sm@131@01  $FVF<q>) (get $Snap.unit r@107@01))
      ($FVF.lookup_q ($SortWrappers.$SnapTo$FVF<q> $t@124@01) (get $Snap.unit r@107@01))))
  (testerfield%precondition ($SortWrappers.$RefTo$Snap ($FVF.lookup_q (as sm@131@01  $FVF<q>) (get $Snap.unit r@107@01))) (get $Snap.unit r@107@01))))
(declare-const r2@132@01 $Ref)
(assert (=
  r2@132@01
  (testerfield ($SortWrappers.$RefTo$Snap ($FVF.lookup_q (as sm@131@01  $FVF<q>) (get $Snap.unit r@107@01))) (get $Snap.unit r@107@01))))
; [exec]
; r3 := testerfieldFull(get(r))
; [eval] testerfieldFull(get(r))
; [eval] get(r)
(push) ; 3
(pop) ; 3
; Joined path conditions
(push) ; 3
(push) ; 4
(assert (not (forall ((r $Ref)) (!
  (=>
    (= r (get $Snap.unit r@107@01))
    (>
      (+
        (ite
          (and (img@116@01 r) (Set_in (inv@115@01 r) (refs $Snap.unit r@107@01)))
          (- (* $k@114@01 $k@112@01) (pTaken@122@01 r))
          $Perm.No)
        (ite
          (and (img@129@01 r) (Set_in (inv@128@01 r) (refs $Snap.unit r@107@01)))
          (* $k@127@01 $k@125@01)
          $Perm.No))
      $Perm.No))
  
  :qid |quant-u-23093|))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for snapshot map domain (instantiated)
; Definitional axioms for snapshot map values (instantiated)
(assert (testerfieldFull%precondition ($SortWrappers.$RefTo$Snap ($FVF.lookup_q (as sm@131@01  $FVF<q>) (get $Snap.unit r@107@01))) (get $Snap.unit r@107@01)))
(pop) ; 3
; Joined path conditions
(assert (testerfieldFull%precondition ($SortWrappers.$RefTo$Snap ($FVF.lookup_q (as sm@131@01  $FVF<q>) (get $Snap.unit r@107@01))) (get $Snap.unit r@107@01)))
(declare-const r3@133@01 $Ref)
(assert (=
  r3@133@01
  (testerfieldFull ($SortWrappers.$RefTo$Snap ($FVF.lookup_q (as sm@131@01  $FVF<q>) (get $Snap.unit r@107@01))) (get $Snap.unit r@107@01))))
(pop) ; 2
(pop) ; 1
; ---------- func2 ----------
(declare-const r@134@01 $Ref)
(declare-const r@135@01 $Ref)
(push) ; 1
(declare-const $t@136@01 $FVF<q>)
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
(set-option :timeout 0)
(push) ; 2
(pop) ; 2
(push) ; 2
; [exec]
; var r2: Ref
(declare-const r2@137@01 $Ref)
; [exec]
; var r3: Ref
(declare-const r3@138@01 $Ref)
; [exec]
; unfold acc(R(r), write)
(declare-const e@139@01 $Ref)
(push) ; 3
; [eval] (e in refs(r))
; [eval] refs(r)
(push) ; 4
(assert (refs%precondition $Snap.unit r@135@01))
(pop) ; 4
; Joined path conditions
(assert (refs%precondition $Snap.unit r@135@01))
(assert (Set_in e@139@01 (refs $Snap.unit r@135@01)))
(declare-const $k@140@01 $Perm)
(assert ($Perm.isReadVar $k@140@01))
(pop) ; 3
(declare-fun inv@141@01 ($Ref) $Ref)
(declare-fun img@142@01 ($Ref) Bool)
; Nested auxiliary terms: globals
(assert ($Perm.isReadVar $k@140@01))
; Nested auxiliary terms: non-globals
(assert (forall ((e@139@01 $Ref)) (!
  (=>
    (Set_in e@139@01 (refs $Snap.unit r@135@01))
    (refs%precondition $Snap.unit r@135@01))
  :pattern ((Set_in e@139@01 (refs $Snap.unit r@135@01)))
  :pattern ((inv@141@01 e@139@01))
  :pattern ((img@142@01 e@139@01))
  :qid |q-aux|)))
(push) ; 3
(assert (not (forall ((e@139@01 $Ref)) (!
  (=>
    (and
      (refs%precondition $Snap.unit r@135@01)
      (Set_in e@139@01 (refs $Snap.unit r@135@01)))
    (or (= $k@140@01 $Perm.No) (< $Perm.No $k@140@01)))
  
  :qid |quant-u-23094|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Check receiver injectivity
(assert (forall ((e1@139@01 $Ref) (e2@139@01 $Ref)) (!
  (and
    (refs%precondition $Snap.unit r@135@01)
    (=>
      (and (Set_in e1@139@01 (refs $Snap.unit r@135@01)) (< $Perm.No $k@140@01))
      (refs%precondition $Snap.unit r@135@01)))
  
  :qid |q-rcvrInj|)))
(push) ; 3
(assert (not (forall ((e1@139@01 $Ref) (e2@139@01 $Ref)) (!
  (=>
    (and
      (and (Set_in e1@139@01 (refs $Snap.unit r@135@01)) (< $Perm.No $k@140@01))
      (and (Set_in e2@139@01 (refs $Snap.unit r@135@01)) (< $Perm.No $k@140@01))
      (= e1@139@01 e2@139@01))
    (= e1@139@01 e2@139@01))
  
  :qid |q-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((e@139@01 $Ref)) (!
  (refs%precondition $Snap.unit r@135@01)
  :pattern ((Set_in e@139@01 (refs $Snap.unit r@135@01)))
  :pattern ((inv@141@01 e@139@01))
  :pattern ((img@142@01 e@139@01))
  :qid |quant-u-23095|)))
(assert (forall ((r $Ref)) (!
  (=> (img@142@01 r) (refs%precondition $Snap.unit r@135@01))
  :pattern ((inv@141@01 r))
  :qid |q-fctOfInv|)))
(assert (forall ((e@139@01 $Ref)) (!
  (=>
    (and (Set_in e@139@01 (refs $Snap.unit r@135@01)) (< $Perm.No $k@140@01))
    (and (= (inv@141@01 e@139@01) e@139@01) (img@142@01 e@139@01)))
  :pattern ((Set_in e@139@01 (refs $Snap.unit r@135@01)))
  :pattern ((inv@141@01 e@139@01))
  :pattern ((img@142@01 e@139@01))
  :qid |quant-u-23095|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@142@01 r)
      (and
        (Set_in (inv@141@01 r) (refs $Snap.unit r@135@01))
        (< $Perm.No $k@140@01)))
    (= (inv@141@01 r) r))
  :pattern ((inv@141@01 r))
  :qid |q-fctOfInv|)))
; Permissions are non-negative
(assert (forall ((e@139@01 $Ref)) (!
  (<= $Perm.No $k@140@01)
  :pattern ((Set_in e@139@01 (refs $Snap.unit r@135@01)))
  :pattern ((inv@141@01 e@139@01))
  :pattern ((img@142@01 e@139@01))
  :qid |q-permAtLeastZero|)))
; Field permissions are at most one
(assert (forall ((e@139@01 $Ref)) (!
  (<= $k@140@01 $Perm.Write)
  :pattern ((Set_in e@139@01 (refs $Snap.unit r@135@01)))
  :pattern ((inv@141@01 e@139@01))
  :pattern ((img@142@01 e@139@01))
  :qid |q-permAtMostOne|)))
; Permission implies non-null receiver
(assert (forall ((e@139@01 $Ref)) (!
  (=>
    (and (Set_in e@139@01 (refs $Snap.unit r@135@01)) (< $Perm.No $k@140@01))
    (not (= e@139@01 $Ref.null)))
  :pattern ((Set_in e@139@01 (refs $Snap.unit r@135@01)))
  :pattern ((inv@141@01 e@139@01))
  :pattern ((img@142@01 e@139@01))
  :qid |q-permImpliesNonNull|)))
; State saturation: after unfold
(set-option :timeout 40)
(check-sat)
; unknown
(assert (R%trigger ($SortWrappers.$FVF<q>To$Snap $t@136@01) r@135@01))
; [exec]
; fold acc(R(r), write)
(declare-const e@143@01 $Ref)
(set-option :timeout 0)
(push) ; 3
; [eval] (e in refs(r))
; [eval] refs(r)
(push) ; 4
(assert (refs%precondition $Snap.unit r@135@01))
(pop) ; 4
; Joined path conditions
(assert (refs%precondition $Snap.unit r@135@01))
(assert (Set_in e@143@01 (refs $Snap.unit r@135@01)))
(declare-const $k@144@01 $Perm)
(assert ($Perm.isReadVar $k@144@01))
(pop) ; 3
(declare-fun inv@145@01 ($Ref) $Ref)
(declare-fun img@146@01 ($Ref) Bool)
; Nested auxiliary terms: globals
(assert ($Perm.isReadVar $k@144@01))
; Nested auxiliary terms: non-globals
(assert (forall ((e@143@01 $Ref)) (!
  (=>
    (Set_in e@143@01 (refs $Snap.unit r@135@01))
    (refs%precondition $Snap.unit r@135@01))
  :pattern ((Set_in e@143@01 (refs $Snap.unit r@135@01)))
  :pattern ((inv@145@01 e@143@01))
  :pattern ((img@146@01 e@143@01))
  :qid |q-aux|)))
(push) ; 3
(assert (not (forall ((e@143@01 $Ref)) (!
  (=>
    (and
      (refs%precondition $Snap.unit r@135@01)
      (Set_in e@143@01 (refs $Snap.unit r@135@01)))
    (or (= $k@144@01 $Perm.No) (< $Perm.No $k@144@01)))
  
  :qid |quant-u-23096|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Check receiver injectivity
(assert (forall ((e1@143@01 $Ref) (e2@143@01 $Ref)) (!
  (and
    (refs%precondition $Snap.unit r@135@01)
    (=>
      (and (Set_in e1@143@01 (refs $Snap.unit r@135@01)) (< $Perm.No $k@144@01))
      (refs%precondition $Snap.unit r@135@01)))
  
  :qid |q-rcvrInj|)))
(push) ; 3
(assert (not (forall ((e1@143@01 $Ref) (e2@143@01 $Ref)) (!
  (=>
    (and
      (and (Set_in e1@143@01 (refs $Snap.unit r@135@01)) (< $Perm.No $k@144@01))
      (and (Set_in e2@143@01 (refs $Snap.unit r@135@01)) (< $Perm.No $k@144@01))
      (= e1@143@01 e2@143@01))
    (= e1@143@01 e2@143@01))
  
  :qid |q-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((e@143@01 $Ref)) (!
  (refs%precondition $Snap.unit r@135@01)
  :pattern ((Set_in e@143@01 (refs $Snap.unit r@135@01)))
  :pattern ((inv@145@01 e@143@01))
  :pattern ((img@146@01 e@143@01))
  :qid |q-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=> (img@146@01 r) (refs%precondition $Snap.unit r@135@01))
  :pattern ((inv@145@01 r))
  :qid |q-fctOfInv|)))
(assert (forall ((e@143@01 $Ref)) (!
  (=>
    (and (Set_in e@143@01 (refs $Snap.unit r@135@01)) (< $Perm.No $k@144@01))
    (and (= (inv@145@01 e@143@01) e@143@01) (img@146@01 e@143@01)))
  :pattern ((Set_in e@143@01 (refs $Snap.unit r@135@01)))
  :pattern ((inv@145@01 e@143@01))
  :pattern ((img@146@01 e@143@01))
  :qid |q-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@146@01 r)
      (and
        (Set_in (inv@145@01 r) (refs $Snap.unit r@135@01))
        (< $Perm.No $k@144@01)))
    (= (inv@145@01 r) r))
  :pattern ((inv@145@01 r))
  :qid |q-fctOfInv|)))
; Precomputing data for removing quantified permissions
(define-fun pTaken@147@01 ((r $Ref)) $Perm
  (ite
    (and
      (Set_in (inv@145@01 r) (refs $Snap.unit r@135@01))
      (img@146@01 r)
      (= r (inv@145@01 r)))
    ($Perm.min
      (ite
        (and (img@142@01 r) (Set_in (inv@141@01 r) (refs $Snap.unit r@135@01)))
        $k@140@01
        $Perm.No)
      $k@144@01)
    $Perm.No))
; Done precomputing, updating quantified chunks
; State saturation: before repetition
(set-option :timeout 10)
(check-sat)
; unknown
; Constrain original permissions $k@144@01
(assert (forall ((r $Ref)) (!
  (=>
    (not
      (=
        (ite
          (and (img@142@01 r) (Set_in (inv@141@01 r) (refs $Snap.unit r@135@01)))
          $k@140@01
          $Perm.No)
        $Perm.No))
    (ite
      (and (img@142@01 r) (Set_in (inv@141@01 r) (refs $Snap.unit r@135@01)))
      (<
        (ite
          (and
            (Set_in (inv@145@01 r) (refs $Snap.unit r@135@01))
            (img@146@01 r)
            (= r (inv@145@01 r)))
          $k@144@01
          $Perm.No)
        $k@140@01)
      (<
        (ite
          (and
            (Set_in (inv@145@01 r) (refs $Snap.unit r@135@01))
            (img@146@01 r)
            (= r (inv@145@01 r)))
          $k@144@01
          $Perm.No)
        $Perm.No)))
  :pattern ((img@142@01 r))
  :pattern ((Set_in (inv@141@01 r) (refs $Snap.unit r@135@01)))
  :pattern ((Set_in (inv@145@01 r) (refs $Snap.unit r@135@01)))
  :pattern ((img@146@01 r))
  :qid |qp.srp25|)))
; Intermediate check if already taken enough permissions
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 500)
(assert (not (forall ((r $Ref)) (!
  (=>
    (and
      (Set_in (inv@145@01 r) (refs $Snap.unit r@135@01))
      (img@146@01 r)
      (= r (inv@145@01 r)))
    (= (- $k@144@01 (pTaken@147@01 r)) $Perm.No))
  
  :qid |quant-u-23099|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Final check if taken enough permissions
; Done removing quantified permissions
(declare-const sm@148@01 $FVF<q>)
; Definitional axioms for snapshot map domain
(assert (forall ((r $Ref)) (!
  (and
    (=>
      (Set_in r ($FVF.domain_q (as sm@148@01  $FVF<q>)))
      (and
        (Set_in (inv@145@01 r) (refs $Snap.unit r@135@01))
        (< $Perm.No $k@144@01)
        (img@146@01 r)))
    (=>
      (and
        (Set_in (inv@145@01 r) (refs $Snap.unit r@135@01))
        (< $Perm.No $k@144@01)
        (img@146@01 r))
      (Set_in r ($FVF.domain_q (as sm@148@01  $FVF<q>)))))
  :pattern ((Set_in r ($FVF.domain_q (as sm@148@01  $FVF<q>))))
  :qid |qp.fvfDomDef27|)))
; Definitional axioms for snapshot map values
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and
        (Set_in (inv@145@01 r) (refs $Snap.unit r@135@01))
        (< $Perm.No $k@144@01)
        (img@146@01 r))
      (ite
        (and (img@142@01 r) (Set_in (inv@141@01 r) (refs $Snap.unit r@135@01)))
        (< $Perm.No $k@140@01)
        false))
    (= ($FVF.lookup_q (as sm@148@01  $FVF<q>) r) ($FVF.lookup_q $t@136@01 r)))
  :pattern (($FVF.lookup_q (as sm@148@01  $FVF<q>) r))
  :pattern (($FVF.lookup_q $t@136@01 r))
  :qid |qp.fvfValDef26|)))
(assert (R%trigger ($SortWrappers.$FVF<q>To$Snap (as sm@148@01  $FVF<q>)) r@135@01))
; [exec]
; unfold acc(R(r), write)
(declare-const e@149@01 $Ref)
(set-option :timeout 0)
(push) ; 3
; [eval] (e in refs(r))
; [eval] refs(r)
(push) ; 4
(assert (refs%precondition $Snap.unit r@135@01))
(pop) ; 4
; Joined path conditions
(assert (refs%precondition $Snap.unit r@135@01))
(assert (Set_in e@149@01 (refs $Snap.unit r@135@01)))
(declare-const $k@150@01 $Perm)
(assert ($Perm.isReadVar $k@150@01))
(pop) ; 3
(declare-fun inv@151@01 ($Ref) $Ref)
(declare-fun img@152@01 ($Ref) Bool)
; Nested auxiliary terms: globals
(assert ($Perm.isReadVar $k@150@01))
; Nested auxiliary terms: non-globals
(assert (forall ((e@149@01 $Ref)) (!
  (=>
    (Set_in e@149@01 (refs $Snap.unit r@135@01))
    (refs%precondition $Snap.unit r@135@01))
  :pattern ((Set_in e@149@01 (refs $Snap.unit r@135@01)))
  :pattern ((inv@151@01 e@149@01))
  :pattern ((img@152@01 e@149@01))
  :qid |q-aux|)))
(push) ; 3
(assert (not (forall ((e@149@01 $Ref)) (!
  (=>
    (and
      (refs%precondition $Snap.unit r@135@01)
      (Set_in e@149@01 (refs $Snap.unit r@135@01)))
    (or (= $k@150@01 $Perm.No) (< $Perm.No $k@150@01)))
  
  :qid |quant-u-23100|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Check receiver injectivity
(assert (forall ((e1@149@01 $Ref) (e2@149@01 $Ref)) (!
  (and
    (refs%precondition $Snap.unit r@135@01)
    (=>
      (and (Set_in e1@149@01 (refs $Snap.unit r@135@01)) (< $Perm.No $k@150@01))
      (refs%precondition $Snap.unit r@135@01)))
  
  :qid |q-rcvrInj|)))
(push) ; 3
(assert (not (forall ((e1@149@01 $Ref) (e2@149@01 $Ref)) (!
  (=>
    (and
      (and (Set_in e1@149@01 (refs $Snap.unit r@135@01)) (< $Perm.No $k@150@01))
      (and (Set_in e2@149@01 (refs $Snap.unit r@135@01)) (< $Perm.No $k@150@01))
      (= e1@149@01 e2@149@01))
    (= e1@149@01 e2@149@01))
  
  :qid |q-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((e@149@01 $Ref)) (!
  (refs%precondition $Snap.unit r@135@01)
  :pattern ((Set_in e@149@01 (refs $Snap.unit r@135@01)))
  :pattern ((inv@151@01 e@149@01))
  :pattern ((img@152@01 e@149@01))
  :qid |quant-u-23101|)))
(assert (forall ((r $Ref)) (!
  (=> (img@152@01 r) (refs%precondition $Snap.unit r@135@01))
  :pattern ((inv@151@01 r))
  :qid |q-fctOfInv|)))
(assert (forall ((e@149@01 $Ref)) (!
  (=>
    (and (Set_in e@149@01 (refs $Snap.unit r@135@01)) (< $Perm.No $k@150@01))
    (and (= (inv@151@01 e@149@01) e@149@01) (img@152@01 e@149@01)))
  :pattern ((Set_in e@149@01 (refs $Snap.unit r@135@01)))
  :pattern ((inv@151@01 e@149@01))
  :pattern ((img@152@01 e@149@01))
  :qid |quant-u-23101|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@152@01 r)
      (and
        (Set_in (inv@151@01 r) (refs $Snap.unit r@135@01))
        (< $Perm.No $k@150@01)))
    (= (inv@151@01 r) r))
  :pattern ((inv@151@01 r))
  :qid |q-fctOfInv|)))
; Permissions are non-negative
(assert (forall ((e@149@01 $Ref)) (!
  (<= $Perm.No $k@150@01)
  :pattern ((Set_in e@149@01 (refs $Snap.unit r@135@01)))
  :pattern ((inv@151@01 e@149@01))
  :pattern ((img@152@01 e@149@01))
  :qid |q-permAtLeastZero|)))
; Field permissions are at most one
(assert (forall ((e@149@01 $Ref)) (!
  (<= $k@150@01 $Perm.Write)
  :pattern ((Set_in e@149@01 (refs $Snap.unit r@135@01)))
  :pattern ((inv@151@01 e@149@01))
  :pattern ((img@152@01 e@149@01))
  :qid |q-permAtMostOne|)))
; Permission implies non-null receiver
(assert (forall ((e@149@01 $Ref)) (!
  (=>
    (and (Set_in e@149@01 (refs $Snap.unit r@135@01)) (< $Perm.No $k@150@01))
    (not (= e@149@01 $Ref.null)))
  :pattern ((Set_in e@149@01 (refs $Snap.unit r@135@01)))
  :pattern ((inv@151@01 e@149@01))
  :pattern ((img@152@01 e@149@01))
  :qid |q-permImpliesNonNull|)))
(push) ; 3
(set-option :timeout 10)
(assert (not (forall ((r $Ref)) (!
  (and
    (= e@149@01 e@139@01)
    (=
      (and (img@152@01 r) (Set_in (inv@151@01 r) (refs $Snap.unit r@135@01)))
      (and (img@142@01 r) (Set_in (inv@141@01 r) (refs $Snap.unit r@135@01)))))
  
  :qid |quant-u-23102|))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; State saturation: after unfold
(set-option :timeout 40)
(check-sat)
; unknown
; [exec]
; r2 := testerfield(get(r))
; [eval] testerfield(get(r))
; [eval] get(r)
(set-option :timeout 0)
(push) ; 3
(assert (get%precondition $Snap.unit r@135@01))
(pop) ; 3
; Joined path conditions
(assert (get%precondition $Snap.unit r@135@01))
(push) ; 3
(declare-const $k@153@01 $Perm)
(assert ($Perm.isReadVar $k@153@01))
(push) ; 4
(assert (not (forall ((r $Ref)) (!
  (=>
    (and (= r (get $Snap.unit r@135@01)) (> $k@153@01 $Perm.No))
    (>
      (+
        (ite
          (and (img@142@01 r) (Set_in (inv@141@01 r) (refs $Snap.unit r@135@01)))
          (- $k@140@01 (pTaken@147@01 r))
          $Perm.No)
        (ite
          (and (img@152@01 r) (Set_in (inv@151@01 r) (refs $Snap.unit r@135@01)))
          $k@150@01
          $Perm.No))
      $Perm.No))
  
  :qid |quant-u-23103|))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(declare-const sm@154@01 $FVF<q>)
; Definitional axioms for snapshot map domain (instantiated)
; Definitional axioms for snapshot map values (instantiated)
(assert (=>
  (ite
    (and
      (img@142@01 (get $Snap.unit r@135@01))
      (Set_in (inv@141@01 (get $Snap.unit r@135@01)) (refs $Snap.unit r@135@01)))
    (< $Perm.No (- $k@140@01 (pTaken@147@01 (get $Snap.unit r@135@01))))
    false)
  (=
    ($FVF.lookup_q (as sm@154@01  $FVF<q>) (get $Snap.unit r@135@01))
    ($FVF.lookup_q $t@136@01 (get $Snap.unit r@135@01)))))
(assert (=>
  (ite
    (and
      (img@152@01 (get $Snap.unit r@135@01))
      (Set_in (inv@151@01 (get $Snap.unit r@135@01)) (refs $Snap.unit r@135@01)))
    (< $Perm.No $k@150@01)
    false)
  (=
    ($FVF.lookup_q (as sm@154@01  $FVF<q>) (get $Snap.unit r@135@01))
    ($FVF.lookup_q (as sm@148@01  $FVF<q>) (get $Snap.unit r@135@01)))))
(assert (testerfield%precondition ($SortWrappers.$RefTo$Snap ($FVF.lookup_q (as sm@154@01  $FVF<q>) (get $Snap.unit r@135@01))) (get $Snap.unit r@135@01)))
(pop) ; 3
; Joined path conditions
(assert ($Perm.isReadVar $k@153@01))
(assert (and
  (=>
    (ite
      (and
        (img@142@01 (get $Snap.unit r@135@01))
        (Set_in (inv@141@01 (get $Snap.unit r@135@01)) (refs $Snap.unit r@135@01)))
      (< $Perm.No (- $k@140@01 (pTaken@147@01 (get $Snap.unit r@135@01))))
      false)
    (=
      ($FVF.lookup_q (as sm@154@01  $FVF<q>) (get $Snap.unit r@135@01))
      ($FVF.lookup_q $t@136@01 (get $Snap.unit r@135@01))))
  (=>
    (ite
      (and
        (img@152@01 (get $Snap.unit r@135@01))
        (Set_in (inv@151@01 (get $Snap.unit r@135@01)) (refs $Snap.unit r@135@01)))
      (< $Perm.No $k@150@01)
      false)
    (=
      ($FVF.lookup_q (as sm@154@01  $FVF<q>) (get $Snap.unit r@135@01))
      ($FVF.lookup_q (as sm@148@01  $FVF<q>) (get $Snap.unit r@135@01))))
  (testerfield%precondition ($SortWrappers.$RefTo$Snap ($FVF.lookup_q (as sm@154@01  $FVF<q>) (get $Snap.unit r@135@01))) (get $Snap.unit r@135@01))))
(declare-const r2@155@01 $Ref)
(assert (=
  r2@155@01
  (testerfield ($SortWrappers.$RefTo$Snap ($FVF.lookup_q (as sm@154@01  $FVF<q>) (get $Snap.unit r@135@01))) (get $Snap.unit r@135@01))))
; [exec]
; r3 := testerfieldFull(get(r))
; [eval] testerfieldFull(get(r))
; [eval] get(r)
(push) ; 3
(pop) ; 3
; Joined path conditions
(push) ; 3
(push) ; 4
(assert (not (forall ((r $Ref)) (!
  (=>
    (= r (get $Snap.unit r@135@01))
    (>
      (+
        (ite
          (and (img@142@01 r) (Set_in (inv@141@01 r) (refs $Snap.unit r@135@01)))
          (- $k@140@01 (pTaken@147@01 r))
          $Perm.No)
        (ite
          (and (img@152@01 r) (Set_in (inv@151@01 r) (refs $Snap.unit r@135@01)))
          $k@150@01
          $Perm.No))
      $Perm.No))
  
  :qid |quant-u-23104|))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for snapshot map domain (instantiated)
; Definitional axioms for snapshot map values (instantiated)
(assert (testerfieldFull%precondition ($SortWrappers.$RefTo$Snap ($FVF.lookup_q (as sm@154@01  $FVF<q>) (get $Snap.unit r@135@01))) (get $Snap.unit r@135@01)))
(pop) ; 3
; Joined path conditions
(assert (testerfieldFull%precondition ($SortWrappers.$RefTo$Snap ($FVF.lookup_q (as sm@154@01  $FVF<q>) (get $Snap.unit r@135@01))) (get $Snap.unit r@135@01)))
(declare-const r3@156@01 $Ref)
(assert (=
  r3@156@01
  (testerfieldFull ($SortWrappers.$RefTo$Snap ($FVF.lookup_q (as sm@154@01  $FVF<q>) (get $Snap.unit r@135@01))) (get $Snap.unit r@135@01))))
(pop) ; 2
(pop) ; 1
; ---------- func3 ----------
(declare-const r@157@01 $Ref)
(declare-const r@158@01 $Ref)
(push) ; 1
(declare-const $t@159@01 $FVF<q>)
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
(set-option :timeout 0)
(push) ; 2
(pop) ; 2
(push) ; 2
; [exec]
; var r2: Ref
(declare-const r2@160@01 $Ref)
; [exec]
; var r3: Ref
(declare-const r3@161@01 $Ref)
; [exec]
; unfold acc(R(r), 1 / 2)
(push) ; 3
(set-option :timeout 10)
(assert (not false))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(declare-const e@162@01 $Ref)
(set-option :timeout 0)
(push) ; 3
; [eval] (e in refs(r))
; [eval] refs(r)
(push) ; 4
(assert (refs%precondition $Snap.unit r@158@01))
(pop) ; 4
; Joined path conditions
(assert (refs%precondition $Snap.unit r@158@01))
(assert (Set_in e@162@01 (refs $Snap.unit r@158@01)))
(declare-const $k@163@01 $Perm)
(assert ($Perm.isReadVar $k@163@01))
(pop) ; 3
(declare-fun inv@164@01 ($Ref) $Ref)
(declare-fun img@165@01 ($Ref) Bool)
; Nested auxiliary terms: globals
(assert ($Perm.isReadVar $k@163@01))
; Nested auxiliary terms: non-globals
(assert (forall ((e@162@01 $Ref)) (!
  (=>
    (Set_in e@162@01 (refs $Snap.unit r@158@01))
    (refs%precondition $Snap.unit r@158@01))
  :pattern ((Set_in e@162@01 (refs $Snap.unit r@158@01)))
  :pattern ((inv@164@01 e@162@01))
  :pattern ((img@165@01 e@162@01))
  :qid |q-aux|)))
(push) ; 3
(assert (not (forall ((e@162@01 $Ref)) (!
  (=>
    (and
      (refs%precondition $Snap.unit r@158@01)
      (Set_in e@162@01 (refs $Snap.unit r@158@01)))
    (or (= $k@163@01 $Perm.No) (< $Perm.No $k@163@01)))
  
  :qid |quant-u-23105|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Check receiver injectivity
(assert (forall ((e1@162@01 $Ref) (e2@162@01 $Ref)) (!
  (and
    (refs%precondition $Snap.unit r@158@01)
    (=>
      (and (Set_in e1@162@01 (refs $Snap.unit r@158@01)) (< $Perm.No $k@163@01))
      (refs%precondition $Snap.unit r@158@01)))
  
  :qid |q-rcvrInj|)))
(push) ; 3
(assert (not (forall ((e1@162@01 $Ref) (e2@162@01 $Ref)) (!
  (=>
    (and
      (and (Set_in e1@162@01 (refs $Snap.unit r@158@01)) (< $Perm.No $k@163@01))
      (and (Set_in e2@162@01 (refs $Snap.unit r@158@01)) (< $Perm.No $k@163@01))
      (= e1@162@01 e2@162@01))
    (= e1@162@01 e2@162@01))
  
  :qid |q-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((e@162@01 $Ref)) (!
  (refs%precondition $Snap.unit r@158@01)
  :pattern ((Set_in e@162@01 (refs $Snap.unit r@158@01)))
  :pattern ((inv@164@01 e@162@01))
  :pattern ((img@165@01 e@162@01))
  :qid |quant-u-23106|)))
(assert (forall ((r $Ref)) (!
  (=> (img@165@01 r) (refs%precondition $Snap.unit r@158@01))
  :pattern ((inv@164@01 r))
  :qid |q-fctOfInv|)))
(assert (forall ((e@162@01 $Ref)) (!
  (=>
    (and
      (Set_in e@162@01 (refs $Snap.unit r@158@01))
      (< $Perm.No (* $k@163@01 (/ (to_real 1) (to_real 2)))))
    (and (= (inv@164@01 e@162@01) e@162@01) (img@165@01 e@162@01)))
  :pattern ((Set_in e@162@01 (refs $Snap.unit r@158@01)))
  :pattern ((inv@164@01 e@162@01))
  :pattern ((img@165@01 e@162@01))
  :qid |quant-u-23106|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@165@01 r)
      (and
        (Set_in (inv@164@01 r) (refs $Snap.unit r@158@01))
        (< $Perm.No (* $k@163@01 (/ (to_real 1) (to_real 2))))))
    (= (inv@164@01 r) r))
  :pattern ((inv@164@01 r))
  :qid |q-fctOfInv|)))
; Permissions are non-negative
(assert (forall ((e@162@01 $Ref)) (!
  (<= $Perm.No (* $k@163@01 (/ (to_real 1) (to_real 2))))
  :pattern ((Set_in e@162@01 (refs $Snap.unit r@158@01)))
  :pattern ((inv@164@01 e@162@01))
  :pattern ((img@165@01 e@162@01))
  :qid |q-permAtLeastZero|)))
; Field permissions are at most one
(assert (forall ((e@162@01 $Ref)) (!
  (<= (* $k@163@01 (/ (to_real 1) (to_real 2))) $Perm.Write)
  :pattern ((Set_in e@162@01 (refs $Snap.unit r@158@01)))
  :pattern ((inv@164@01 e@162@01))
  :pattern ((img@165@01 e@162@01))
  :qid |q-permAtMostOne|)))
; Permission implies non-null receiver
(assert (forall ((e@162@01 $Ref)) (!
  (=>
    (and
      (Set_in e@162@01 (refs $Snap.unit r@158@01))
      (< $Perm.No (* $k@163@01 (/ (to_real 1) (to_real 2)))))
    (not (= e@162@01 $Ref.null)))
  :pattern ((Set_in e@162@01 (refs $Snap.unit r@158@01)))
  :pattern ((inv@164@01 e@162@01))
  :pattern ((img@165@01 e@162@01))
  :qid |q-permImpliesNonNull|)))
; State saturation: after unfold
(set-option :timeout 40)
(check-sat)
; unknown
(assert (R%trigger ($SortWrappers.$FVF<q>To$Snap $t@159@01) r@158@01))
; [exec]
; fold acc(R(r), 1 / 2)
(declare-const e@166@01 $Ref)
(set-option :timeout 0)
(push) ; 3
; [eval] (e in refs(r))
; [eval] refs(r)
(push) ; 4
(assert (refs%precondition $Snap.unit r@158@01))
(pop) ; 4
; Joined path conditions
(assert (refs%precondition $Snap.unit r@158@01))
(assert (Set_in e@166@01 (refs $Snap.unit r@158@01)))
(declare-const $k@167@01 $Perm)
(assert ($Perm.isReadVar $k@167@01))
(pop) ; 3
(declare-fun inv@168@01 ($Ref) $Ref)
(declare-fun img@169@01 ($Ref) Bool)
; Nested auxiliary terms: globals
(assert ($Perm.isReadVar $k@167@01))
; Nested auxiliary terms: non-globals
(assert (forall ((e@166@01 $Ref)) (!
  (=>
    (Set_in e@166@01 (refs $Snap.unit r@158@01))
    (refs%precondition $Snap.unit r@158@01))
  :pattern ((Set_in e@166@01 (refs $Snap.unit r@158@01)))
  :pattern ((inv@168@01 e@166@01))
  :pattern ((img@169@01 e@166@01))
  :qid |q-aux|)))
(push) ; 3
(assert (not (forall ((e@166@01 $Ref)) (!
  (=>
    (and
      (refs%precondition $Snap.unit r@158@01)
      (Set_in e@166@01 (refs $Snap.unit r@158@01)))
    (or (= $k@167@01 $Perm.No) (< $Perm.No $k@167@01)))
  
  :qid |quant-u-23107|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Check receiver injectivity
(assert (forall ((e1@166@01 $Ref) (e2@166@01 $Ref)) (!
  (and
    (refs%precondition $Snap.unit r@158@01)
    (=>
      (and (Set_in e1@166@01 (refs $Snap.unit r@158@01)) (< $Perm.No $k@167@01))
      (refs%precondition $Snap.unit r@158@01)))
  
  :qid |q-rcvrInj|)))
(push) ; 3
(assert (not (forall ((e1@166@01 $Ref) (e2@166@01 $Ref)) (!
  (=>
    (and
      (and (Set_in e1@166@01 (refs $Snap.unit r@158@01)) (< $Perm.No $k@167@01))
      (and (Set_in e2@166@01 (refs $Snap.unit r@158@01)) (< $Perm.No $k@167@01))
      (= e1@166@01 e2@166@01))
    (= e1@166@01 e2@166@01))
  
  :qid |q-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((e@166@01 $Ref)) (!
  (refs%precondition $Snap.unit r@158@01)
  :pattern ((Set_in e@166@01 (refs $Snap.unit r@158@01)))
  :pattern ((inv@168@01 e@166@01))
  :pattern ((img@169@01 e@166@01))
  :qid |q-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=> (img@169@01 r) (refs%precondition $Snap.unit r@158@01))
  :pattern ((inv@168@01 r))
  :qid |q-fctOfInv|)))
(assert (forall ((e@166@01 $Ref)) (!
  (=>
    (and (Set_in e@166@01 (refs $Snap.unit r@158@01)) (< $Perm.No $k@167@01))
    (and (= (inv@168@01 e@166@01) e@166@01) (img@169@01 e@166@01)))
  :pattern ((Set_in e@166@01 (refs $Snap.unit r@158@01)))
  :pattern ((inv@168@01 e@166@01))
  :pattern ((img@169@01 e@166@01))
  :qid |q-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@169@01 r)
      (and
        (Set_in (inv@168@01 r) (refs $Snap.unit r@158@01))
        (< $Perm.No $k@167@01)))
    (= (inv@168@01 r) r))
  :pattern ((inv@168@01 r))
  :qid |q-fctOfInv|)))
; Precomputing data for removing quantified permissions
(define-fun pTaken@170@01 ((r $Ref)) $Perm
  (ite
    (and
      (Set_in (inv@168@01 r) (refs $Snap.unit r@158@01))
      (img@169@01 r)
      (= r (inv@168@01 r)))
    ($Perm.min
      (ite
        (and (img@165@01 r) (Set_in (inv@164@01 r) (refs $Snap.unit r@158@01)))
        (* $k@163@01 (/ (to_real 1) (to_real 2)))
        $Perm.No)
      (* $k@167@01 (/ (to_real 1) (to_real 2))))
    $Perm.No))
; Done precomputing, updating quantified chunks
; State saturation: before repetition
(set-option :timeout 10)
(check-sat)
; unknown
; Constrain original permissions $k@167@01 * 1/2
(assert (forall ((r $Ref)) (!
  (=>
    (not
      (=
        (ite
          (and (img@165@01 r) (Set_in (inv@164@01 r) (refs $Snap.unit r@158@01)))
          (* $k@163@01 (/ (to_real 1) (to_real 2)))
          $Perm.No)
        $Perm.No))
    (ite
      (and (img@165@01 r) (Set_in (inv@164@01 r) (refs $Snap.unit r@158@01)))
      (<
        (ite
          (and
            (Set_in (inv@168@01 r) (refs $Snap.unit r@158@01))
            (img@169@01 r)
            (= r (inv@168@01 r)))
          (* $k@167@01 (/ (to_real 1) (to_real 2)))
          $Perm.No)
        (* $k@163@01 (/ (to_real 1) (to_real 2))))
      (<
        (ite
          (and
            (Set_in (inv@168@01 r) (refs $Snap.unit r@158@01))
            (img@169@01 r)
            (= r (inv@168@01 r)))
          (* $k@167@01 (/ (to_real 1) (to_real 2)))
          $Perm.No)
        $Perm.No)))
  :pattern ((img@165@01 r))
  :pattern ((Set_in (inv@164@01 r) (refs $Snap.unit r@158@01)))
  :pattern ((Set_in (inv@168@01 r) (refs $Snap.unit r@158@01)))
  :pattern ((img@169@01 r))
  :qid |qp.srp30|)))
; Intermediate check if already taken enough permissions
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 500)
(assert (not (forall ((r $Ref)) (!
  (=>
    (and
      (Set_in (inv@168@01 r) (refs $Snap.unit r@158@01))
      (img@169@01 r)
      (= r (inv@168@01 r)))
    (= (- (* $k@167@01 (/ (to_real 1) (to_real 2))) (pTaken@170@01 r)) $Perm.No))
  
  :qid |quant-u-23110|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Final check if taken enough permissions
; Done removing quantified permissions
(declare-const sm@171@01 $FVF<q>)
; Definitional axioms for snapshot map domain
(assert (forall ((r $Ref)) (!
  (and
    (=>
      (Set_in r ($FVF.domain_q (as sm@171@01  $FVF<q>)))
      (and
        (Set_in (inv@168@01 r) (refs $Snap.unit r@158@01))
        (< $Perm.No (* $k@167@01 (/ (to_real 1) (to_real 2))))
        (img@169@01 r)))
    (=>
      (and
        (Set_in (inv@168@01 r) (refs $Snap.unit r@158@01))
        (< $Perm.No (* $k@167@01 (/ (to_real 1) (to_real 2))))
        (img@169@01 r))
      (Set_in r ($FVF.domain_q (as sm@171@01  $FVF<q>)))))
  :pattern ((Set_in r ($FVF.domain_q (as sm@171@01  $FVF<q>))))
  :qid |qp.fvfDomDef32|)))
; Definitional axioms for snapshot map values
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and
        (Set_in (inv@168@01 r) (refs $Snap.unit r@158@01))
        (< $Perm.No (* $k@167@01 (/ (to_real 1) (to_real 2))))
        (img@169@01 r))
      (ite
        (and (img@165@01 r) (Set_in (inv@164@01 r) (refs $Snap.unit r@158@01)))
        (< $Perm.No (* $k@163@01 (/ (to_real 1) (to_real 2))))
        false))
    (= ($FVF.lookup_q (as sm@171@01  $FVF<q>) r) ($FVF.lookup_q $t@159@01 r)))
  :pattern (($FVF.lookup_q (as sm@171@01  $FVF<q>) r))
  :pattern (($FVF.lookup_q $t@159@01 r))
  :qid |qp.fvfValDef31|)))
(assert (R%trigger ($SortWrappers.$FVF<q>To$Snap (as sm@171@01  $FVF<q>)) r@158@01))
(assert (=
  ($SortWrappers.$FVF<q>To$Snap $t@159@01)
  ($SortWrappers.$FVF<q>To$Snap (as sm@171@01  $FVF<q>))))
; [exec]
; unfold acc(R(r), 1 / 2)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not false))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(declare-const e@172@01 $Ref)
(set-option :timeout 0)
(push) ; 3
; [eval] (e in refs(r))
; [eval] refs(r)
(push) ; 4
(assert (refs%precondition $Snap.unit r@158@01))
(pop) ; 4
; Joined path conditions
(assert (refs%precondition $Snap.unit r@158@01))
(assert (Set_in e@172@01 (refs $Snap.unit r@158@01)))
(declare-const $k@173@01 $Perm)
(assert ($Perm.isReadVar $k@173@01))
(pop) ; 3
(declare-fun inv@174@01 ($Ref) $Ref)
(declare-fun img@175@01 ($Ref) Bool)
; Nested auxiliary terms: globals
(assert ($Perm.isReadVar $k@173@01))
; Nested auxiliary terms: non-globals
(assert (forall ((e@172@01 $Ref)) (!
  (=>
    (Set_in e@172@01 (refs $Snap.unit r@158@01))
    (refs%precondition $Snap.unit r@158@01))
  :pattern ((Set_in e@172@01 (refs $Snap.unit r@158@01)))
  :pattern ((inv@174@01 e@172@01))
  :pattern ((img@175@01 e@172@01))
  :qid |q-aux|)))
(push) ; 3
(assert (not (forall ((e@172@01 $Ref)) (!
  (=>
    (and
      (refs%precondition $Snap.unit r@158@01)
      (Set_in e@172@01 (refs $Snap.unit r@158@01)))
    (or (= $k@173@01 $Perm.No) (< $Perm.No $k@173@01)))
  
  :qid |quant-u-23111|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Check receiver injectivity
(assert (forall ((e1@172@01 $Ref) (e2@172@01 $Ref)) (!
  (and
    (refs%precondition $Snap.unit r@158@01)
    (=>
      (and (Set_in e1@172@01 (refs $Snap.unit r@158@01)) (< $Perm.No $k@173@01))
      (refs%precondition $Snap.unit r@158@01)))
  
  :qid |q-rcvrInj|)))
(push) ; 3
(assert (not (forall ((e1@172@01 $Ref) (e2@172@01 $Ref)) (!
  (=>
    (and
      (and (Set_in e1@172@01 (refs $Snap.unit r@158@01)) (< $Perm.No $k@173@01))
      (and (Set_in e2@172@01 (refs $Snap.unit r@158@01)) (< $Perm.No $k@173@01))
      (= e1@172@01 e2@172@01))
    (= e1@172@01 e2@172@01))
  
  :qid |q-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((e@172@01 $Ref)) (!
  (refs%precondition $Snap.unit r@158@01)
  :pattern ((Set_in e@172@01 (refs $Snap.unit r@158@01)))
  :pattern ((inv@174@01 e@172@01))
  :pattern ((img@175@01 e@172@01))
  :qid |quant-u-23112|)))
(assert (forall ((r $Ref)) (!
  (=> (img@175@01 r) (refs%precondition $Snap.unit r@158@01))
  :pattern ((inv@174@01 r))
  :qid |q-fctOfInv|)))
(assert (forall ((e@172@01 $Ref)) (!
  (=>
    (and
      (Set_in e@172@01 (refs $Snap.unit r@158@01))
      (< $Perm.No (* $k@173@01 (/ (to_real 1) (to_real 2)))))
    (and (= (inv@174@01 e@172@01) e@172@01) (img@175@01 e@172@01)))
  :pattern ((Set_in e@172@01 (refs $Snap.unit r@158@01)))
  :pattern ((inv@174@01 e@172@01))
  :pattern ((img@175@01 e@172@01))
  :qid |quant-u-23112|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@175@01 r)
      (and
        (Set_in (inv@174@01 r) (refs $Snap.unit r@158@01))
        (< $Perm.No (* $k@173@01 (/ (to_real 1) (to_real 2))))))
    (= (inv@174@01 r) r))
  :pattern ((inv@174@01 r))
  :qid |q-fctOfInv|)))
; Permissions are non-negative
(assert (forall ((e@172@01 $Ref)) (!
  (<= $Perm.No (* $k@173@01 (/ (to_real 1) (to_real 2))))
  :pattern ((Set_in e@172@01 (refs $Snap.unit r@158@01)))
  :pattern ((inv@174@01 e@172@01))
  :pattern ((img@175@01 e@172@01))
  :qid |q-permAtLeastZero|)))
; Field permissions are at most one
(assert (forall ((e@172@01 $Ref)) (!
  (<= (* $k@173@01 (/ (to_real 1) (to_real 2))) $Perm.Write)
  :pattern ((Set_in e@172@01 (refs $Snap.unit r@158@01)))
  :pattern ((inv@174@01 e@172@01))
  :pattern ((img@175@01 e@172@01))
  :qid |q-permAtMostOne|)))
; Permission implies non-null receiver
(assert (forall ((e@172@01 $Ref)) (!
  (=>
    (and
      (Set_in e@172@01 (refs $Snap.unit r@158@01))
      (< $Perm.No (* $k@173@01 (/ (to_real 1) (to_real 2)))))
    (not (= e@172@01 $Ref.null)))
  :pattern ((Set_in e@172@01 (refs $Snap.unit r@158@01)))
  :pattern ((inv@174@01 e@172@01))
  :pattern ((img@175@01 e@172@01))
  :qid |q-permImpliesNonNull|)))
(push) ; 3
(set-option :timeout 10)
(assert (not (forall ((r $Ref)) (!
  (and
    (= e@172@01 e@162@01)
    (=
      (and (img@175@01 r) (Set_in (inv@174@01 r) (refs $Snap.unit r@158@01)))
      (and (img@165@01 r) (Set_in (inv@164@01 r) (refs $Snap.unit r@158@01)))))
  
  :qid |quant-u-23113|))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; State saturation: after unfold
(set-option :timeout 40)
(check-sat)
; unknown
; [exec]
; r2 := testerfield(get(r))
; [eval] testerfield(get(r))
; [eval] get(r)
(set-option :timeout 0)
(push) ; 3
(assert (get%precondition $Snap.unit r@158@01))
(pop) ; 3
; Joined path conditions
(assert (get%precondition $Snap.unit r@158@01))
(push) ; 3
(declare-const $k@176@01 $Perm)
(assert ($Perm.isReadVar $k@176@01))
(push) ; 4
(assert (not (forall ((r $Ref)) (!
  (=>
    (and (= r (get $Snap.unit r@158@01)) (> $k@176@01 $Perm.No))
    (>
      (+
        (ite
          (and (img@165@01 r) (Set_in (inv@164@01 r) (refs $Snap.unit r@158@01)))
          (- (* $k@163@01 (/ (to_real 1) (to_real 2))) (pTaken@170@01 r))
          $Perm.No)
        (ite
          (and (img@175@01 r) (Set_in (inv@174@01 r) (refs $Snap.unit r@158@01)))
          (* $k@173@01 (/ (to_real 1) (to_real 2)))
          $Perm.No))
      $Perm.No))
  
  :qid |quant-u-23114|))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(declare-const sm@177@01 $FVF<q>)
; Definitional axioms for snapshot map domain (instantiated)
; Definitional axioms for snapshot map values (instantiated)
(assert (=>
  (ite
    (and
      (img@165@01 (get $Snap.unit r@158@01))
      (Set_in (inv@164@01 (get $Snap.unit r@158@01)) (refs $Snap.unit r@158@01)))
    (<
      $Perm.No
      (-
        (* $k@163@01 (/ (to_real 1) (to_real 2)))
        (pTaken@170@01 (get $Snap.unit r@158@01))))
    false)
  (=
    ($FVF.lookup_q (as sm@177@01  $FVF<q>) (get $Snap.unit r@158@01))
    ($FVF.lookup_q $t@159@01 (get $Snap.unit r@158@01)))))
(assert (=>
  (ite
    (and
      (img@175@01 (get $Snap.unit r@158@01))
      (Set_in (inv@174@01 (get $Snap.unit r@158@01)) (refs $Snap.unit r@158@01)))
    (< $Perm.No (* $k@173@01 (/ (to_real 1) (to_real 2))))
    false)
  (=
    ($FVF.lookup_q (as sm@177@01  $FVF<q>) (get $Snap.unit r@158@01))
    ($FVF.lookup_q $t@159@01 (get $Snap.unit r@158@01)))))
(assert (testerfield%precondition ($SortWrappers.$RefTo$Snap ($FVF.lookup_q (as sm@177@01  $FVF<q>) (get $Snap.unit r@158@01))) (get $Snap.unit r@158@01)))
(pop) ; 3
; Joined path conditions
(assert ($Perm.isReadVar $k@176@01))
(assert (and
  (=>
    (ite
      (and
        (img@165@01 (get $Snap.unit r@158@01))
        (Set_in (inv@164@01 (get $Snap.unit r@158@01)) (refs $Snap.unit r@158@01)))
      (<
        $Perm.No
        (-
          (* $k@163@01 (/ (to_real 1) (to_real 2)))
          (pTaken@170@01 (get $Snap.unit r@158@01))))
      false)
    (=
      ($FVF.lookup_q (as sm@177@01  $FVF<q>) (get $Snap.unit r@158@01))
      ($FVF.lookup_q $t@159@01 (get $Snap.unit r@158@01))))
  (=>
    (ite
      (and
        (img@175@01 (get $Snap.unit r@158@01))
        (Set_in (inv@174@01 (get $Snap.unit r@158@01)) (refs $Snap.unit r@158@01)))
      (< $Perm.No (* $k@173@01 (/ (to_real 1) (to_real 2))))
      false)
    (=
      ($FVF.lookup_q (as sm@177@01  $FVF<q>) (get $Snap.unit r@158@01))
      ($FVF.lookup_q $t@159@01 (get $Snap.unit r@158@01))))
  (testerfield%precondition ($SortWrappers.$RefTo$Snap ($FVF.lookup_q (as sm@177@01  $FVF<q>) (get $Snap.unit r@158@01))) (get $Snap.unit r@158@01))))
(declare-const r2@178@01 $Ref)
(assert (=
  r2@178@01
  (testerfield ($SortWrappers.$RefTo$Snap ($FVF.lookup_q (as sm@177@01  $FVF<q>) (get $Snap.unit r@158@01))) (get $Snap.unit r@158@01))))
; [exec]
; r3 := testerfieldFull(get(r))
; [eval] testerfieldFull(get(r))
; [eval] get(r)
(push) ; 3
(pop) ; 3
; Joined path conditions
(push) ; 3
(push) ; 4
(assert (not (forall ((r $Ref)) (!
  (=>
    (= r (get $Snap.unit r@158@01))
    (>
      (+
        (ite
          (and (img@165@01 r) (Set_in (inv@164@01 r) (refs $Snap.unit r@158@01)))
          (- (* $k@163@01 (/ (to_real 1) (to_real 2))) (pTaken@170@01 r))
          $Perm.No)
        (ite
          (and (img@175@01 r) (Set_in (inv@174@01 r) (refs $Snap.unit r@158@01)))
          (* $k@173@01 (/ (to_real 1) (to_real 2)))
          $Perm.No))
      $Perm.No))
  
  :qid |quant-u-23115|))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for snapshot map domain (instantiated)
; Definitional axioms for snapshot map values (instantiated)
(assert (testerfieldFull%precondition ($SortWrappers.$RefTo$Snap ($FVF.lookup_q (as sm@177@01  $FVF<q>) (get $Snap.unit r@158@01))) (get $Snap.unit r@158@01)))
(pop) ; 3
; Joined path conditions
(assert (testerfieldFull%precondition ($SortWrappers.$RefTo$Snap ($FVF.lookup_q (as sm@177@01  $FVF<q>) (get $Snap.unit r@158@01))) (get $Snap.unit r@158@01)))
(declare-const r3@179@01 $Ref)
(assert (=
  r3@179@01
  (testerfieldFull ($SortWrappers.$RefTo$Snap ($FVF.lookup_q (as sm@177@01  $FVF<q>) (get $Snap.unit r@158@01))) (get $Snap.unit r@158@01))))
(pop) ; 2
(pop) ; 1
; ---------- func4 ----------
(declare-const r@180@01 $Ref)
(declare-const r@181@01 $Ref)
(push) ; 1
(declare-const $t@182@01 $FVF<q>)
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
(set-option :timeout 0)
(push) ; 2
(pop) ; 2
(push) ; 2
; [exec]
; var r2: Ref
(declare-const r2@183@01 $Ref)
; [exec]
; var r3: Ref
(declare-const r3@184@01 $Ref)
; [exec]
; unfold acc(R2(r), wildcard)
(declare-const $k@185@01 $Perm)
(assert ($Perm.isReadVar $k@185@01))
(assert (< $k@185@01 $Perm.Write))
(assert (<= $Perm.No (- $Perm.Write $k@185@01)))
(push) ; 3
(set-option :timeout 10)
(assert (not (< $Perm.No $k@185@01)))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(declare-const e@186@01 $Ref)
(set-option :timeout 0)
(push) ; 3
; [eval] (e in refs(r))
; [eval] refs(r)
(push) ; 4
(assert (refs%precondition $Snap.unit r@181@01))
(pop) ; 4
; Joined path conditions
(assert (refs%precondition $Snap.unit r@181@01))
(assert (Set_in e@186@01 (refs $Snap.unit r@181@01)))
(pop) ; 3
(declare-fun inv@187@01 ($Ref) $Ref)
(declare-fun img@188@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
(assert (forall ((e@186@01 $Ref)) (!
  (=>
    (Set_in e@186@01 (refs $Snap.unit r@181@01))
    (refs%precondition $Snap.unit r@181@01))
  :pattern ((Set_in e@186@01 (refs $Snap.unit r@181@01)))
  :pattern ((inv@187@01 e@186@01))
  :pattern ((img@188@01 e@186@01))
  :qid |q-aux|)))
; Check receiver injectivity
(assert (forall ((e1@186@01 $Ref) (e2@186@01 $Ref)) (!
  (and
    (refs%precondition $Snap.unit r@181@01)
    (=>
      (Set_in e1@186@01 (refs $Snap.unit r@181@01))
      (refs%precondition $Snap.unit r@181@01)))
  
  :qid |q-rcvrInj|)))
(push) ; 3
(assert (not (forall ((e1@186@01 $Ref) (e2@186@01 $Ref)) (!
  (=>
    (and
      (Set_in e1@186@01 (refs $Snap.unit r@181@01))
      (Set_in e2@186@01 (refs $Snap.unit r@181@01))
      (= e1@186@01 e2@186@01))
    (= e1@186@01 e2@186@01))
  
  :qid |q-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((e@186@01 $Ref)) (!
  (refs%precondition $Snap.unit r@181@01)
  :pattern ((Set_in e@186@01 (refs $Snap.unit r@181@01)))
  :pattern ((inv@187@01 e@186@01))
  :pattern ((img@188@01 e@186@01))
  :qid |quant-u-23117|)))
(assert (forall ((r $Ref)) (!
  (=> (img@188@01 r) (refs%precondition $Snap.unit r@181@01))
  :pattern ((inv@187@01 r))
  :qid |q-fctOfInv|)))
(assert (forall ((e@186@01 $Ref)) (!
  (=>
    (and
      (Set_in e@186@01 (refs $Snap.unit r@181@01))
      (< $Perm.No (* (/ (to_real 1) (to_real 2)) $k@185@01)))
    (and (= (inv@187@01 e@186@01) e@186@01) (img@188@01 e@186@01)))
  :pattern ((Set_in e@186@01 (refs $Snap.unit r@181@01)))
  :pattern ((inv@187@01 e@186@01))
  :pattern ((img@188@01 e@186@01))
  :qid |quant-u-23117|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@188@01 r)
      (and
        (Set_in (inv@187@01 r) (refs $Snap.unit r@181@01))
        (< $Perm.No (* (/ (to_real 1) (to_real 2)) $k@185@01))))
    (= (inv@187@01 r) r))
  :pattern ((inv@187@01 r))
  :qid |q-fctOfInv|)))
; Permissions are non-negative
(assert (forall ((e@186@01 $Ref)) (!
  (<= $Perm.No (* (/ (to_real 1) (to_real 2)) $k@185@01))
  :pattern ((Set_in e@186@01 (refs $Snap.unit r@181@01)))
  :pattern ((inv@187@01 e@186@01))
  :pattern ((img@188@01 e@186@01))
  :qid |q-permAtLeastZero|)))
; Field permissions are at most one
(assert (forall ((e@186@01 $Ref)) (!
  (<= (* (/ (to_real 1) (to_real 2)) $k@185@01) $Perm.Write)
  :pattern ((Set_in e@186@01 (refs $Snap.unit r@181@01)))
  :pattern ((inv@187@01 e@186@01))
  :pattern ((img@188@01 e@186@01))
  :qid |q-permAtMostOne|)))
; Permission implies non-null receiver
(assert (forall ((e@186@01 $Ref)) (!
  (=>
    (and
      (Set_in e@186@01 (refs $Snap.unit r@181@01))
      (< $Perm.No (* (/ (to_real 1) (to_real 2)) $k@185@01)))
    (not (= e@186@01 $Ref.null)))
  :pattern ((Set_in e@186@01 (refs $Snap.unit r@181@01)))
  :pattern ((inv@187@01 e@186@01))
  :pattern ((img@188@01 e@186@01))
  :qid |q-permImpliesNonNull|)))
; State saturation: after unfold
(set-option :timeout 40)
(check-sat)
; unknown
(assert (R2%trigger ($SortWrappers.$FVF<q>To$Snap $t@182@01) r@181@01))
; [exec]
; fold acc(R2(r), wildcard)
(declare-const $k@189@01 $Perm)
(assert ($Perm.isReadVar $k@189@01))
(declare-const e@190@01 $Ref)
(set-option :timeout 0)
(push) ; 3
; [eval] (e in refs(r))
; [eval] refs(r)
(push) ; 4
(assert (refs%precondition $Snap.unit r@181@01))
(pop) ; 4
; Joined path conditions
(assert (refs%precondition $Snap.unit r@181@01))
(assert (Set_in e@190@01 (refs $Snap.unit r@181@01)))
(pop) ; 3
(declare-fun inv@191@01 ($Ref) $Ref)
(declare-fun img@192@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
(assert (forall ((e@190@01 $Ref)) (!
  (=>
    (Set_in e@190@01 (refs $Snap.unit r@181@01))
    (refs%precondition $Snap.unit r@181@01))
  :pattern ((Set_in e@190@01 (refs $Snap.unit r@181@01)))
  :pattern ((inv@191@01 e@190@01))
  :pattern ((img@192@01 e@190@01))
  :qid |q-aux|)))
; Check receiver injectivity
(assert (forall ((e1@190@01 $Ref) (e2@190@01 $Ref)) (!
  (and
    (refs%precondition $Snap.unit r@181@01)
    (=>
      (Set_in e1@190@01 (refs $Snap.unit r@181@01))
      (refs%precondition $Snap.unit r@181@01)))
  
  :qid |q-rcvrInj|)))
(push) ; 3
(assert (not (forall ((e1@190@01 $Ref) (e2@190@01 $Ref)) (!
  (=>
    (and
      (Set_in e1@190@01 (refs $Snap.unit r@181@01))
      (Set_in e2@190@01 (refs $Snap.unit r@181@01))
      (= e1@190@01 e2@190@01))
    (= e1@190@01 e2@190@01))
  
  :qid |q-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((e@190@01 $Ref)) (!
  (refs%precondition $Snap.unit r@181@01)
  :pattern ((Set_in e@190@01 (refs $Snap.unit r@181@01)))
  :pattern ((inv@191@01 e@190@01))
  :pattern ((img@192@01 e@190@01))
  :qid |q-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=> (img@192@01 r) (refs%precondition $Snap.unit r@181@01))
  :pattern ((inv@191@01 r))
  :qid |q-fctOfInv|)))
(assert (forall ((e@190@01 $Ref)) (!
  (=>
    (Set_in e@190@01 (refs $Snap.unit r@181@01))
    (and (= (inv@191@01 e@190@01) e@190@01) (img@192@01 e@190@01)))
  :pattern ((Set_in e@190@01 (refs $Snap.unit r@181@01)))
  :pattern ((inv@191@01 e@190@01))
  :pattern ((img@192@01 e@190@01))
  :qid |q-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@192@01 r) (Set_in (inv@191@01 r) (refs $Snap.unit r@181@01)))
    (= (inv@191@01 r) r))
  :pattern ((inv@191@01 r))
  :qid |q-fctOfInv|)))
; Precomputing data for removing quantified permissions
(define-fun pTaken@193@01 ((r $Ref)) $Perm
  (ite
    (and
      (Set_in (inv@191@01 r) (refs $Snap.unit r@181@01))
      (img@192@01 r)
      (= r (inv@191@01 r)))
    ($Perm.min
      (ite
        (and (img@188@01 r) (Set_in (inv@187@01 r) (refs $Snap.unit r@181@01)))
        (* (/ (to_real 1) (to_real 2)) $k@185@01)
        $Perm.No)
      (* (/ (to_real 1) (to_real 2)) $k@189@01))
    $Perm.No))
; Done precomputing, updating quantified chunks
; State saturation: before repetition
(set-option :timeout 10)
(check-sat)
; unknown
; Constrain original permissions 1/2 * $k@189@01
(assert (forall ((r $Ref)) (!
  (=>
    (not
      (=
        (ite
          (and (img@188@01 r) (Set_in (inv@187@01 r) (refs $Snap.unit r@181@01)))
          (* (/ (to_real 1) (to_real 2)) $k@185@01)
          $Perm.No)
        $Perm.No))
    (ite
      (and (img@188@01 r) (Set_in (inv@187@01 r) (refs $Snap.unit r@181@01)))
      (<
        (ite
          (and
            (Set_in (inv@191@01 r) (refs $Snap.unit r@181@01))
            (img@192@01 r)
            (= r (inv@191@01 r)))
          (* (/ (to_real 1) (to_real 2)) $k@189@01)
          $Perm.No)
        (* (/ (to_real 1) (to_real 2)) $k@185@01))
      (<
        (ite
          (and
            (Set_in (inv@191@01 r) (refs $Snap.unit r@181@01))
            (img@192@01 r)
            (= r (inv@191@01 r)))
          (* (/ (to_real 1) (to_real 2)) $k@189@01)
          $Perm.No)
        $Perm.No)))
  :pattern ((img@188@01 r))
  :pattern ((Set_in (inv@187@01 r) (refs $Snap.unit r@181@01)))
  :pattern ((Set_in (inv@191@01 r) (refs $Snap.unit r@181@01)))
  :pattern ((img@192@01 r))
  :qid |qp.srp35|)))
; Intermediate check if already taken enough permissions
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 500)
(assert (not (forall ((r $Ref)) (!
  (=>
    (and
      (Set_in (inv@191@01 r) (refs $Snap.unit r@181@01))
      (img@192@01 r)
      (= r (inv@191@01 r)))
    (= (- (* (/ (to_real 1) (to_real 2)) $k@189@01) (pTaken@193@01 r)) $Perm.No))
  
  :qid |quant-u-23121|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Final check if taken enough permissions
; Done removing quantified permissions
(declare-const sm@194@01 $FVF<q>)
; Definitional axioms for snapshot map domain
(assert (forall ((r $Ref)) (!
  (and
    (=>
      (Set_in r ($FVF.domain_q (as sm@194@01  $FVF<q>)))
      (and
        (Set_in (inv@191@01 r) (refs $Snap.unit r@181@01))
        (< $Perm.No (* (/ (to_real 1) (to_real 2)) $k@189@01))
        (img@192@01 r)))
    (=>
      (and
        (Set_in (inv@191@01 r) (refs $Snap.unit r@181@01))
        (< $Perm.No (* (/ (to_real 1) (to_real 2)) $k@189@01))
        (img@192@01 r))
      (Set_in r ($FVF.domain_q (as sm@194@01  $FVF<q>)))))
  :pattern ((Set_in r ($FVF.domain_q (as sm@194@01  $FVF<q>))))
  :qid |qp.fvfDomDef37|)))
; Definitional axioms for snapshot map values
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and
        (Set_in (inv@191@01 r) (refs $Snap.unit r@181@01))
        (< $Perm.No (* (/ (to_real 1) (to_real 2)) $k@189@01))
        (img@192@01 r))
      (ite
        (and (img@188@01 r) (Set_in (inv@187@01 r) (refs $Snap.unit r@181@01)))
        (< $Perm.No (* (/ (to_real 1) (to_real 2)) $k@185@01))
        false))
    (= ($FVF.lookup_q (as sm@194@01  $FVF<q>) r) ($FVF.lookup_q $t@182@01 r)))
  :pattern (($FVF.lookup_q (as sm@194@01  $FVF<q>) r))
  :pattern (($FVF.lookup_q $t@182@01 r))
  :qid |qp.fvfValDef36|)))
(assert (R2%trigger ($SortWrappers.$FVF<q>To$Snap (as sm@194@01  $FVF<q>)) r@181@01))
(declare-const $t@195@01 $Snap)
(assert (and
  (=>
    (< $Perm.No (- $Perm.Write $k@185@01))
    (= $t@195@01 ($SortWrappers.$FVF<q>To$Snap $t@182@01)))
  (=>
    (< $Perm.No $k@189@01)
    (= $t@195@01 ($SortWrappers.$FVF<q>To$Snap (as sm@194@01  $FVF<q>))))))
(assert (<= $Perm.No (+ (- $Perm.Write $k@185@01) $k@189@01)))
; [exec]
; unfold acc(R2(r), wildcard)
(declare-const $k@196@01 $Perm)
(assert ($Perm.isReadVar $k@196@01))
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (not (= (+ (- $Perm.Write $k@185@01) $k@189@01) $Perm.No))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(assert (< $k@196@01 (+ (- $Perm.Write $k@185@01) $k@189@01)))
(assert (<= $Perm.No (- (+ (- $Perm.Write $k@185@01) $k@189@01) $k@196@01)))
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (< $Perm.No $k@196@01)))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(declare-const e@197@01 $Ref)
(set-option :timeout 0)
(push) ; 3
; [eval] (e in refs(r))
; [eval] refs(r)
(push) ; 4
(assert (refs%precondition $Snap.unit r@181@01))
(pop) ; 4
; Joined path conditions
(assert (refs%precondition $Snap.unit r@181@01))
(assert (Set_in e@197@01 (refs $Snap.unit r@181@01)))
(pop) ; 3
(declare-fun inv@198@01 ($Ref) $Ref)
(declare-fun img@199@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
(assert (forall ((e@197@01 $Ref)) (!
  (=>
    (Set_in e@197@01 (refs $Snap.unit r@181@01))
    (refs%precondition $Snap.unit r@181@01))
  :pattern ((Set_in e@197@01 (refs $Snap.unit r@181@01)))
  :pattern ((inv@198@01 e@197@01))
  :pattern ((img@199@01 e@197@01))
  :qid |q-aux|)))
; Check receiver injectivity
(assert (forall ((e1@197@01 $Ref) (e2@197@01 $Ref)) (!
  (and
    (refs%precondition $Snap.unit r@181@01)
    (=>
      (Set_in e1@197@01 (refs $Snap.unit r@181@01))
      (refs%precondition $Snap.unit r@181@01)))
  
  :qid |q-rcvrInj|)))
(push) ; 3
(assert (not (forall ((e1@197@01 $Ref) (e2@197@01 $Ref)) (!
  (=>
    (and
      (Set_in e1@197@01 (refs $Snap.unit r@181@01))
      (Set_in e2@197@01 (refs $Snap.unit r@181@01))
      (= e1@197@01 e2@197@01))
    (= e1@197@01 e2@197@01))
  
  :qid |q-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((e@197@01 $Ref)) (!
  (refs%precondition $Snap.unit r@181@01)
  :pattern ((Set_in e@197@01 (refs $Snap.unit r@181@01)))
  :pattern ((inv@198@01 e@197@01))
  :pattern ((img@199@01 e@197@01))
  :qid |quant-u-23123|)))
(assert (forall ((r $Ref)) (!
  (=> (img@199@01 r) (refs%precondition $Snap.unit r@181@01))
  :pattern ((inv@198@01 r))
  :qid |q-fctOfInv|)))
(assert (forall ((e@197@01 $Ref)) (!
  (=>
    (and
      (Set_in e@197@01 (refs $Snap.unit r@181@01))
      (< $Perm.No (* (/ (to_real 1) (to_real 2)) $k@196@01)))
    (and (= (inv@198@01 e@197@01) e@197@01) (img@199@01 e@197@01)))
  :pattern ((Set_in e@197@01 (refs $Snap.unit r@181@01)))
  :pattern ((inv@198@01 e@197@01))
  :pattern ((img@199@01 e@197@01))
  :qid |quant-u-23123|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@199@01 r)
      (and
        (Set_in (inv@198@01 r) (refs $Snap.unit r@181@01))
        (< $Perm.No (* (/ (to_real 1) (to_real 2)) $k@196@01))))
    (= (inv@198@01 r) r))
  :pattern ((inv@198@01 r))
  :qid |q-fctOfInv|)))
; Permissions are non-negative
(assert (forall ((e@197@01 $Ref)) (!
  (<= $Perm.No (* (/ (to_real 1) (to_real 2)) $k@196@01))
  :pattern ((Set_in e@197@01 (refs $Snap.unit r@181@01)))
  :pattern ((inv@198@01 e@197@01))
  :pattern ((img@199@01 e@197@01))
  :qid |q-permAtLeastZero|)))
; Field permissions are at most one
(assert (forall ((e@197@01 $Ref)) (!
  (<= (* (/ (to_real 1) (to_real 2)) $k@196@01) $Perm.Write)
  :pattern ((Set_in e@197@01 (refs $Snap.unit r@181@01)))
  :pattern ((inv@198@01 e@197@01))
  :pattern ((img@199@01 e@197@01))
  :qid |q-permAtMostOne|)))
; Permission implies non-null receiver
(assert (forall ((e@197@01 $Ref)) (!
  (=>
    (and
      (Set_in e@197@01 (refs $Snap.unit r@181@01))
      (< $Perm.No (* (/ (to_real 1) (to_real 2)) $k@196@01)))
    (not (= e@197@01 $Ref.null)))
  :pattern ((Set_in e@197@01 (refs $Snap.unit r@181@01)))
  :pattern ((inv@198@01 e@197@01))
  :pattern ((img@199@01 e@197@01))
  :qid |q-permImpliesNonNull|)))
(push) ; 3
(set-option :timeout 10)
(assert (not (forall ((r $Ref)) (!
  (and
    (= e@197@01 e@186@01)
    (=
      (and (img@199@01 r) (Set_in (inv@198@01 r) (refs $Snap.unit r@181@01)))
      (and (img@188@01 r) (Set_in (inv@187@01 r) (refs $Snap.unit r@181@01)))))
  
  :qid |quant-u-23124|))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; State saturation: after unfold
(set-option :timeout 40)
(check-sat)
; unknown
(assert (R2%trigger $t@195@01 r@181@01))
; [exec]
; r2 := testerfield(get(r))
; [eval] testerfield(get(r))
; [eval] get(r)
(set-option :timeout 0)
(push) ; 3
(assert (get%precondition $Snap.unit r@181@01))
(pop) ; 3
; Joined path conditions
(assert (get%precondition $Snap.unit r@181@01))
(push) ; 3
(declare-const $k@200@01 $Perm)
(assert ($Perm.isReadVar $k@200@01))
(push) ; 4
(assert (not (forall ((r $Ref)) (!
  (=>
    (and (= r (get $Snap.unit r@181@01)) (> $k@200@01 $Perm.No))
    (>
      (+
        (ite
          (and (img@188@01 r) (Set_in (inv@187@01 r) (refs $Snap.unit r@181@01)))
          (- (* (/ (to_real 1) (to_real 2)) $k@185@01) (pTaken@193@01 r))
          $Perm.No)
        (ite
          (and (img@199@01 r) (Set_in (inv@198@01 r) (refs $Snap.unit r@181@01)))
          (* (/ (to_real 1) (to_real 2)) $k@196@01)
          $Perm.No))
      $Perm.No))
  
  :qid |quant-u-23125|))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(declare-const sm@201@01 $FVF<q>)
; Definitional axioms for snapshot map domain (instantiated)
; Definitional axioms for snapshot map values (instantiated)
(assert (=>
  (ite
    (and
      (img@188@01 (get $Snap.unit r@181@01))
      (Set_in (inv@187@01 (get $Snap.unit r@181@01)) (refs $Snap.unit r@181@01)))
    (<
      $Perm.No
      (-
        (* (/ (to_real 1) (to_real 2)) $k@185@01)
        (pTaken@193@01 (get $Snap.unit r@181@01))))
    false)
  (=
    ($FVF.lookup_q (as sm@201@01  $FVF<q>) (get $Snap.unit r@181@01))
    ($FVF.lookup_q $t@182@01 (get $Snap.unit r@181@01)))))
(assert (=>
  (ite
    (and
      (img@199@01 (get $Snap.unit r@181@01))
      (Set_in (inv@198@01 (get $Snap.unit r@181@01)) (refs $Snap.unit r@181@01)))
    (< $Perm.No (* (/ (to_real 1) (to_real 2)) $k@196@01))
    false)
  (=
    ($FVF.lookup_q (as sm@201@01  $FVF<q>) (get $Snap.unit r@181@01))
    ($FVF.lookup_q ($SortWrappers.$SnapTo$FVF<q> $t@195@01) (get $Snap.unit r@181@01)))))
(assert (testerfield%precondition ($SortWrappers.$RefTo$Snap ($FVF.lookup_q (as sm@201@01  $FVF<q>) (get $Snap.unit r@181@01))) (get $Snap.unit r@181@01)))
(pop) ; 3
; Joined path conditions
(assert ($Perm.isReadVar $k@200@01))
(assert (and
  (=>
    (ite
      (and
        (img@188@01 (get $Snap.unit r@181@01))
        (Set_in (inv@187@01 (get $Snap.unit r@181@01)) (refs $Snap.unit r@181@01)))
      (<
        $Perm.No
        (-
          (* (/ (to_real 1) (to_real 2)) $k@185@01)
          (pTaken@193@01 (get $Snap.unit r@181@01))))
      false)
    (=
      ($FVF.lookup_q (as sm@201@01  $FVF<q>) (get $Snap.unit r@181@01))
      ($FVF.lookup_q $t@182@01 (get $Snap.unit r@181@01))))
  (=>
    (ite
      (and
        (img@199@01 (get $Snap.unit r@181@01))
        (Set_in (inv@198@01 (get $Snap.unit r@181@01)) (refs $Snap.unit r@181@01)))
      (< $Perm.No (* (/ (to_real 1) (to_real 2)) $k@196@01))
      false)
    (=
      ($FVF.lookup_q (as sm@201@01  $FVF<q>) (get $Snap.unit r@181@01))
      ($FVF.lookup_q ($SortWrappers.$SnapTo$FVF<q> $t@195@01) (get $Snap.unit r@181@01))))
  (testerfield%precondition ($SortWrappers.$RefTo$Snap ($FVF.lookup_q (as sm@201@01  $FVF<q>) (get $Snap.unit r@181@01))) (get $Snap.unit r@181@01))))
(declare-const r2@202@01 $Ref)
(assert (=
  r2@202@01
  (testerfield ($SortWrappers.$RefTo$Snap ($FVF.lookup_q (as sm@201@01  $FVF<q>) (get $Snap.unit r@181@01))) (get $Snap.unit r@181@01))))
; [exec]
; r3 := testerfieldFull(get(r))
; [eval] testerfieldFull(get(r))
; [eval] get(r)
(push) ; 3
(pop) ; 3
; Joined path conditions
(push) ; 3
(push) ; 4
(assert (not (forall ((r $Ref)) (!
  (=>
    (= r (get $Snap.unit r@181@01))
    (>
      (+
        (ite
          (and (img@188@01 r) (Set_in (inv@187@01 r) (refs $Snap.unit r@181@01)))
          (- (* (/ (to_real 1) (to_real 2)) $k@185@01) (pTaken@193@01 r))
          $Perm.No)
        (ite
          (and (img@199@01 r) (Set_in (inv@198@01 r) (refs $Snap.unit r@181@01)))
          (* (/ (to_real 1) (to_real 2)) $k@196@01)
          $Perm.No))
      $Perm.No))
  
  :qid |quant-u-23126|))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for snapshot map domain (instantiated)
; Definitional axioms for snapshot map values (instantiated)
(assert (testerfieldFull%precondition ($SortWrappers.$RefTo$Snap ($FVF.lookup_q (as sm@201@01  $FVF<q>) (get $Snap.unit r@181@01))) (get $Snap.unit r@181@01)))
(pop) ; 3
; Joined path conditions
(assert (testerfieldFull%precondition ($SortWrappers.$RefTo$Snap ($FVF.lookup_q (as sm@201@01  $FVF<q>) (get $Snap.unit r@181@01))) (get $Snap.unit r@181@01)))
(declare-const r3@203@01 $Ref)
(assert (=
  r3@203@01
  (testerfieldFull ($SortWrappers.$RefTo$Snap ($FVF.lookup_q (as sm@201@01  $FVF<q>) (get $Snap.unit r@181@01))) (get $Snap.unit r@181@01))))
(pop) ; 2
(pop) ; 1
