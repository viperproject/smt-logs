(get-info :version)
; (:version "4.12.1")
; Started: 2024-12-27 10:01:41
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
(declare-sort Set<Set<$Ref>> 0)
(declare-sort Set<$Snap> 0)
(declare-sort $FVF<left> 0)
(declare-sort $FVF<p> 0)
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
(declare-fun $SortWrappers.Set<Set<$Ref>>To$Snap (Set<Set<$Ref>>) $Snap)
(declare-fun $SortWrappers.$SnapToSet<Set<$Ref>> ($Snap) Set<Set<$Ref>>)
(assert (forall ((x Set<Set<$Ref>>)) (!
    (= x ($SortWrappers.$SnapToSet<Set<$Ref>>($SortWrappers.Set<Set<$Ref>>To$Snap x)))
    :pattern (($SortWrappers.Set<Set<$Ref>>To$Snap x))
    :qid |$Snap.$SnapToSet<Set<$Ref>>To$Snap|
    )))
(assert (forall ((x $Snap)) (!
    (= x ($SortWrappers.Set<Set<$Ref>>To$Snap($SortWrappers.$SnapToSet<Set<$Ref>> x)))
    :pattern (($SortWrappers.$SnapToSet<Set<$Ref>> x))
    :qid |$Snap.Set<Set<$Ref>>To$SnapToSet<Set<$Ref>>|
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
(declare-fun $SortWrappers.$FVF<left>To$Snap ($FVF<left>) $Snap)
(declare-fun $SortWrappers.$SnapTo$FVF<left> ($Snap) $FVF<left>)
(assert (forall ((x $FVF<left>)) (!
    (= x ($SortWrappers.$SnapTo$FVF<left>($SortWrappers.$FVF<left>To$Snap x)))
    :pattern (($SortWrappers.$FVF<left>To$Snap x))
    :qid |$Snap.$SnapTo$FVF<left>To$Snap|
    )))
(assert (forall ((x $Snap)) (!
    (= x ($SortWrappers.$FVF<left>To$Snap($SortWrappers.$SnapTo$FVF<left> x)))
    :pattern (($SortWrappers.$SnapTo$FVF<left> x))
    :qid |$Snap.$FVF<left>To$SnapTo$FVF<left>|
    )))
(declare-fun $SortWrappers.$FVF<p>To$Snap ($FVF<p>) $Snap)
(declare-fun $SortWrappers.$SnapTo$FVF<p> ($Snap) $FVF<p>)
(assert (forall ((x $FVF<p>)) (!
    (= x ($SortWrappers.$SnapTo$FVF<p>($SortWrappers.$FVF<p>To$Snap x)))
    :pattern (($SortWrappers.$FVF<p>To$Snap x))
    :qid |$Snap.$SnapTo$FVF<p>To$Snap|
    )))
(assert (forall ((x $Snap)) (!
    (= x ($SortWrappers.$FVF<p>To$Snap($SortWrappers.$SnapTo$FVF<p> x)))
    :pattern (($SortWrappers.$SnapTo$FVF<p> x))
    :qid |$Snap.$FVF<p>To$SnapTo$FVF<p>|
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
(declare-fun Set_card (Set<Set<$Ref>>) Int)
(declare-const Set_empty Set<Set<$Ref>>)
(declare-fun Set_in (Set<$Ref> Set<Set<$Ref>>) Bool)
(declare-fun Set_singleton (Set<$Ref>) Set<Set<$Ref>>)
(declare-fun Set_unionone (Set<Set<$Ref>> Set<$Ref>) Set<Set<$Ref>>)
(declare-fun Set_union (Set<Set<$Ref>> Set<Set<$Ref>>) Set<Set<$Ref>>)
(declare-fun Set_intersection (Set<Set<$Ref>> Set<Set<$Ref>>) Set<Set<$Ref>>)
(declare-fun Set_difference (Set<Set<$Ref>> Set<Set<$Ref>>) Set<Set<$Ref>>)
(declare-fun Set_subset (Set<Set<$Ref>> Set<Set<$Ref>>) Bool)
(declare-fun Set_equal (Set<Set<$Ref>> Set<Set<$Ref>>) Bool)
(declare-fun Set_skolem_diff (Set<Set<$Ref>> Set<Set<$Ref>>) Set<$Ref>)
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
; /field_value_functions_declarations.smt2 [left: Ref]
(declare-fun $FVF.domain_left ($FVF<left>) Set<$Ref>)
(declare-fun $FVF.lookup_left ($FVF<left> $Ref) $Ref)
(declare-fun $FVF.after_left ($FVF<left> $FVF<left>) Bool)
(declare-fun $FVF.loc_left ($Ref $Ref) Bool)
(declare-fun $FVF.perm_left ($FPM $Ref) $Perm)
(declare-const $fvfTOP_left $FVF<left>)
; /field_value_functions_declarations.smt2 [p: Ref]
(declare-fun $FVF.domain_p ($FVF<p>) Set<$Ref>)
(declare-fun $FVF.lookup_p ($FVF<p> $Ref) $Ref)
(declare-fun $FVF.after_p ($FVF<p> $FVF<p>) Bool)
(declare-fun $FVF.loc_p ($Ref $Ref) Bool)
(declare-fun $FVF.perm_p ($FPM $Ref) $Perm)
(declare-const $fvfTOP_p $FVF<p>)
; Declaring symbols related to program functions (from program analysis)
; Snapshot variable to be used during function verification
(declare-fun s@$ () $Snap)
; Declaring predicate trigger functions
(declare-fun inv%trigger ($Snap $Ref) Bool)
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
(assert (forall ((s Set<Set<$Ref>>)) (!
  (<= 0 (Set_card s))
  :pattern ((Set_card s))
  )))
(assert (forall ((o Set<$Ref>)) (!
  (not (Set_in o (as Set_empty  Set<Set<$Ref>>)))
  :pattern ((Set_in o (as Set_empty  Set<Set<$Ref>>)))
  )))
(assert (forall ((s Set<Set<$Ref>>)) (!
  (and
    (=> (= (Set_card s) 0) (= s (as Set_empty  Set<Set<$Ref>>)))
    (=> (not (= (Set_card s) 0)) (exists ((x Set<$Ref>))  (Set_in x s))))
  :pattern ((Set_card s))
  )))
(assert (forall ((r Set<$Ref>)) (!
  (Set_in r (Set_singleton r))
  :pattern ((Set_singleton r))
  )))
(assert (forall ((r Set<$Ref>) (o Set<$Ref>)) (!
  (= (Set_in o (Set_singleton r)) (= r o))
  :pattern ((Set_in o (Set_singleton r)))
  )))
(assert (forall ((r Set<$Ref>)) (!
  (= (Set_card (Set_singleton r)) 1)
  :pattern ((Set_card (Set_singleton r)))
  )))
(assert (forall ((a Set<Set<$Ref>>) (x Set<$Ref>) (o Set<$Ref>)) (!
  (= (Set_in o (Set_unionone a x)) (or (= o x) (Set_in o a)))
  :pattern ((Set_in o (Set_unionone a x)))
  )))
(assert (forall ((a Set<Set<$Ref>>) (x Set<$Ref>)) (!
  (Set_in x (Set_unionone a x))
  :pattern ((Set_unionone a x))
  )))
(assert (forall ((a Set<Set<$Ref>>) (x Set<$Ref>) (y Set<$Ref>)) (!
  (=> (Set_in y a) (Set_in y (Set_unionone a x)))
  :pattern ((Set_unionone a x) (Set_in y a))
  )))
(assert (forall ((a Set<Set<$Ref>>) (x Set<$Ref>)) (!
  (=> (Set_in x a) (= (Set_card (Set_unionone a x)) (Set_card a)))
  :pattern ((Set_card (Set_unionone a x)))
  )))
(assert (forall ((a Set<Set<$Ref>>) (x Set<$Ref>)) (!
  (=> (not (Set_in x a)) (= (Set_card (Set_unionone a x)) (+ (Set_card a) 1)))
  :pattern ((Set_card (Set_unionone a x)))
  )))
(assert (forall ((a Set<Set<$Ref>>) (b Set<Set<$Ref>>) (o Set<$Ref>)) (!
  (= (Set_in o (Set_union a b)) (or (Set_in o a) (Set_in o b)))
  :pattern ((Set_in o (Set_union a b)))
  )))
(assert (forall ((a Set<Set<$Ref>>) (b Set<Set<$Ref>>) (y Set<$Ref>)) (!
  (=> (Set_in y a) (Set_in y (Set_union a b)))
  :pattern ((Set_union a b) (Set_in y a))
  )))
(assert (forall ((a Set<Set<$Ref>>) (b Set<Set<$Ref>>) (y Set<$Ref>)) (!
  (=> (Set_in y b) (Set_in y (Set_union a b)))
  :pattern ((Set_union a b) (Set_in y b))
  )))
(assert (forall ((a Set<Set<$Ref>>) (b Set<Set<$Ref>>) (o Set<$Ref>)) (!
  (= (Set_in o (Set_intersection a b)) (and (Set_in o a) (Set_in o b)))
  :pattern ((Set_in o (Set_intersection a b)))
  :pattern ((Set_intersection a b) (Set_in o a))
  :pattern ((Set_intersection a b) (Set_in o b))
  )))
(assert (forall ((a Set<Set<$Ref>>) (b Set<Set<$Ref>>)) (!
  (= (Set_union (Set_union a b) b) (Set_union a b))
  :pattern ((Set_union (Set_union a b) b))
  )))
(assert (forall ((a Set<Set<$Ref>>) (b Set<Set<$Ref>>)) (!
  (= (Set_union a (Set_union a b)) (Set_union a b))
  :pattern ((Set_union a (Set_union a b)))
  )))
(assert (forall ((a Set<Set<$Ref>>) (b Set<Set<$Ref>>)) (!
  (= (Set_intersection (Set_intersection a b) b) (Set_intersection a b))
  :pattern ((Set_intersection (Set_intersection a b) b))
  )))
(assert (forall ((a Set<Set<$Ref>>) (b Set<Set<$Ref>>)) (!
  (= (Set_intersection a (Set_intersection a b)) (Set_intersection a b))
  :pattern ((Set_intersection a (Set_intersection a b)))
  )))
(assert (forall ((a Set<Set<$Ref>>) (b Set<Set<$Ref>>)) (!
  (=
    (+ (Set_card (Set_union a b)) (Set_card (Set_intersection a b)))
    (+ (Set_card a) (Set_card b)))
  :pattern ((Set_card (Set_union a b)))
  :pattern ((Set_card (Set_intersection a b)))
  )))
(assert (forall ((a Set<Set<$Ref>>) (b Set<Set<$Ref>>) (o Set<$Ref>)) (!
  (= (Set_in o (Set_difference a b)) (and (Set_in o a) (not (Set_in o b))))
  :pattern ((Set_in o (Set_difference a b)))
  :pattern ((Set_difference a b) (Set_in o a))
  )))
(assert (forall ((a Set<Set<$Ref>>) (b Set<Set<$Ref>>) (y Set<$Ref>)) (!
  (=> (Set_in y b) (not (Set_in y (Set_difference a b))))
  :pattern ((Set_difference a b) (Set_in y b))
  )))
(assert (forall ((a Set<Set<$Ref>>) (b Set<Set<$Ref>>)) (!
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
(assert (forall ((a Set<Set<$Ref>>) (b Set<Set<$Ref>>)) (!
  (=
    (Set_subset a b)
    (forall ((o Set<$Ref>)) (!
      (=> (Set_in o a) (Set_in o b))
      :pattern ((Set_in o a))
      :pattern ((Set_in o b))
      )))
  :pattern ((Set_subset a b))
  )))
(assert (forall ((a Set<Set<$Ref>>) (b Set<Set<$Ref>>)) (!
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
(assert (forall ((a Set<Set<$Ref>>) (b Set<Set<$Ref>>)) (!
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
; /field_value_functions_axioms.smt2 [left: Ref]
(assert (forall ((vs $FVF<left>) (ws $FVF<left>)) (!
    (=>
      (and
        (Set_equal ($FVF.domain_left vs) ($FVF.domain_left ws))
        (forall ((x $Ref)) (!
          (=>
            (Set_in x ($FVF.domain_left vs))
            (= ($FVF.lookup_left vs x) ($FVF.lookup_left ws x)))
          :pattern (($FVF.lookup_left vs x) ($FVF.lookup_left ws x))
          :qid |qp.$FVF<left>-eq-inner|
          )))
      (= vs ws))
    :pattern (($SortWrappers.$FVF<left>To$Snap vs)
              ($SortWrappers.$FVF<left>To$Snap ws)
              )
    :qid |qp.$FVF<left>-eq-outer|
    )))
(assert (forall ((r $Ref) (pm $FPM)) (!
    ($Perm.isValidVar ($FVF.perm_left pm r))
    :pattern (($FVF.perm_left pm r)))))
(assert (forall ((r $Ref) (f $Ref)) (!
    (= ($FVF.loc_left f r) true)
    :pattern (($FVF.loc_left f r)))))
; /field_value_functions_axioms.smt2 [p: Ref]
(assert (forall ((vs $FVF<p>) (ws $FVF<p>)) (!
    (=>
      (and
        (Set_equal ($FVF.domain_p vs) ($FVF.domain_p ws))
        (forall ((x $Ref)) (!
          (=>
            (Set_in x ($FVF.domain_p vs))
            (= ($FVF.lookup_p vs x) ($FVF.lookup_p ws x)))
          :pattern (($FVF.lookup_p vs x) ($FVF.lookup_p ws x))
          :qid |qp.$FVF<p>-eq-inner|
          )))
      (= vs ws))
    :pattern (($SortWrappers.$FVF<p>To$Snap vs)
              ($SortWrappers.$FVF<p>To$Snap ws)
              )
    :qid |qp.$FVF<p>-eq-outer|
    )))
(assert (forall ((r $Ref) (pm $FPM)) (!
    ($Perm.isValidVar ($FVF.perm_p pm r))
    :pattern (($FVF.perm_p pm r)))))
(assert (forall ((r $Ref) (f $Ref)) (!
    (= ($FVF.loc_p f r) true)
    :pattern (($FVF.loc_p f r)))))
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
; ---------- Dmm ----------
(declare-const this@0@01 $Ref)
(declare-const this@1@01 $Ref)
(set-option :timeout 0)
(push) ; 1
(declare-const $t@2@01 $Snap)
(assert (= $t@2@01 ($Snap.combine ($Snap.first $t@2@01) ($Snap.second $t@2@01))))
(declare-const sm@3@01 $FVF<p>)
; Definitional axioms for singleton-SM's value
(assert (=
  ($FVF.lookup_p (as sm@3@01  $FVF<p>) this@1@01)
  ($SortWrappers.$SnapTo$Ref ($Snap.first $t@2@01))))
(assert (not (= this@1@01 $Ref.null)))
(assert (=
  ($Snap.second $t@2@01)
  ($Snap.combine
    ($Snap.first ($Snap.second $t@2@01))
    ($Snap.second ($Snap.second $t@2@01)))))
(assert (=
  ($Snap.second ($Snap.second $t@2@01))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second $t@2@01)))
    ($Snap.second ($Snap.second ($Snap.second $t@2@01))))))
(assert (= ($Snap.first ($Snap.second ($Snap.second $t@2@01))) $Snap.unit))
; [eval] this.s == Set(this)
; [eval] Set(this)
(assert (Set_equal ($SortWrappers.$SnapToSet<$Ref> ($Snap.first ($Snap.second $t@2@01))) (Set_singleton this@1@01)))
(assert (= ($Snap.second ($Snap.second ($Snap.second $t@2@01))) $Snap.unit))
; [eval] this.p == null
(assert (= ($FVF.lookup_p (as sm@3@01  $FVF<p>) this@1@01) $Ref.null))
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
(set-option :timeout 0)
(push) ; 2
(pop) ; 2
(push) ; 2
; [exec]
; exhale acc(this.s, write) &&
;   ((forall x: Ref ::(x in this.s) ==> acc(x.p, 1 / 2)) &&
;   (forall x: Ref ::(x in this.s) && x.p == null ==> acc(x.p, 1 / 2)))
(declare-const x@4@01 $Ref)
(push) ; 3
; [eval] (x in this.s)
(assert (Set_in x@4@01 ($SortWrappers.$SnapToSet<$Ref> ($Snap.first ($Snap.second $t@2@01)))))
(pop) ; 3
(declare-fun inv@5@01 ($Ref) $Ref)
(declare-fun img@6@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
; Check receiver injectivity
(push) ; 3
(assert (not (forall ((x1@4@01 $Ref) (x2@4@01 $Ref)) (!
  (=>
    (and
      (Set_in x1@4@01 ($SortWrappers.$SnapToSet<$Ref> ($Snap.first ($Snap.second $t@2@01))))
      (Set_in x2@4@01 ($SortWrappers.$SnapToSet<$Ref> ($Snap.first ($Snap.second $t@2@01))))
      (= x1@4@01 x2@4@01))
    (= x1@4@01 x2@4@01))
  
  :qid |p-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((x@4@01 $Ref)) (!
  (=>
    (Set_in x@4@01 ($SortWrappers.$SnapToSet<$Ref> ($Snap.first ($Snap.second $t@2@01))))
    (and (= (inv@5@01 x@4@01) x@4@01) (img@6@01 x@4@01)))
  :pattern ((Set_in x@4@01 ($SortWrappers.$SnapToSet<$Ref> ($Snap.first ($Snap.second $t@2@01)))))
  :pattern ((inv@5@01 x@4@01))
  :pattern ((img@6@01 x@4@01))
  :qid |p-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@6@01 r)
      (Set_in (inv@5@01 r) ($SortWrappers.$SnapToSet<$Ref> ($Snap.first ($Snap.second $t@2@01)))))
    (= (inv@5@01 r) r))
  :pattern ((inv@5@01 r))
  :qid |p-fctOfInv|)))
; Precomputing data for removing quantified permissions
(define-fun pTaken@7@01 ((r $Ref)) $Perm
  (ite
    (and
      (Set_in (inv@5@01 r) ($SortWrappers.$SnapToSet<$Ref> ($Snap.first ($Snap.second $t@2@01))))
      (img@6@01 r)
      (= r (inv@5@01 r)))
    ($Perm.min
      (ite (= r this@1@01) $Perm.Write $Perm.No)
      (/ (to_real 1) (to_real 2)))
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
(assert (not (= (- $Perm.Write (pTaken@7@01 this@1@01)) $Perm.No)))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (forall ((r $Ref)) (!
  (= (pTaken@7@01 r) $Perm.No)
  
  :qid |quant-u-13190|))))
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
      (Set_in (inv@5@01 r) ($SortWrappers.$SnapToSet<$Ref> ($Snap.first ($Snap.second $t@2@01))))
      (img@6@01 r)
      (= r (inv@5@01 r)))
    (= (- (/ (to_real 1) (to_real 2)) (pTaken@7@01 r)) $Perm.No))
  
  :qid |quant-u-13191|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Final check if taken enough permissions
; Done removing quantified permissions
(declare-const x@8@01 $Ref)
(set-option :timeout 0)
(push) ; 3
; [eval] (x in this.s) && x.p == null
; [eval] (x in this.s)
(push) ; 4
; [then-branch: 0 | !(x@8@01 in First:(Second:($t@2@01))) | live]
; [else-branch: 0 | x@8@01 in First:(Second:($t@2@01)) | live]
(push) ; 5
; [then-branch: 0 | !(x@8@01 in First:(Second:($t@2@01)))]
(assert (not
  (Set_in x@8@01 ($SortWrappers.$SnapToSet<$Ref> ($Snap.first ($Snap.second $t@2@01))))))
(pop) ; 5
(push) ; 5
; [else-branch: 0 | x@8@01 in First:(Second:($t@2@01))]
(assert (Set_in x@8@01 ($SortWrappers.$SnapToSet<$Ref> ($Snap.first ($Snap.second $t@2@01)))))
; [eval] x.p == null
(push) ; 6
(assert (not (= x@8@01 this@1@01)))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(pop) ; 5
(pop) ; 4
; Joined path conditions
; Joined path conditions
(assert (or
  (Set_in x@8@01 ($SortWrappers.$SnapToSet<$Ref> ($Snap.first ($Snap.second $t@2@01))))
  (not
    (Set_in x@8@01 ($SortWrappers.$SnapToSet<$Ref> ($Snap.first ($Snap.second $t@2@01)))))))
(assert (and
  (Set_in x@8@01 ($SortWrappers.$SnapToSet<$Ref> ($Snap.first ($Snap.second $t@2@01))))
  (= ($FVF.lookup_p (as sm@3@01  $FVF<p>) x@8@01) $Ref.null)))
(pop) ; 3
(declare-fun inv@9@01 ($Ref) $Ref)
(declare-fun img@10@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
(assert (forall ((x@8@01 $Ref)) (!
  (=>
    (and
      (Set_in x@8@01 ($SortWrappers.$SnapToSet<$Ref> ($Snap.first ($Snap.second $t@2@01))))
      (= ($FVF.lookup_p (as sm@3@01  $FVF<p>) x@8@01) $Ref.null))
    (or
      (Set_in x@8@01 ($SortWrappers.$SnapToSet<$Ref> ($Snap.first ($Snap.second $t@2@01))))
      (not
        (Set_in x@8@01 ($SortWrappers.$SnapToSet<$Ref> ($Snap.first ($Snap.second $t@2@01)))))))
  :pattern ((Set_in x@8@01 ($SortWrappers.$SnapToSet<$Ref> ($Snap.first ($Snap.second $t@2@01)))))
  :pattern (($FVF.lookup_p (as sm@3@01  $FVF<p>) x@8@01))
  :pattern ((inv@9@01 x@8@01))
  :pattern ((img@10@01 x@8@01))
  :qid |p-aux|)))
; Check receiver injectivity
(push) ; 3
(assert (not (forall ((x1@8@01 $Ref) (x2@8@01 $Ref)) (!
  (=>
    (and
      (and
        (Set_in x1@8@01 ($SortWrappers.$SnapToSet<$Ref> ($Snap.first ($Snap.second $t@2@01))))
        (= ($FVF.lookup_p (as sm@3@01  $FVF<p>) x1@8@01) $Ref.null))
      (and
        (Set_in x2@8@01 ($SortWrappers.$SnapToSet<$Ref> ($Snap.first ($Snap.second $t@2@01))))
        (= ($FVF.lookup_p (as sm@3@01  $FVF<p>) x2@8@01) $Ref.null))
      (= x1@8@01 x2@8@01))
    (= x1@8@01 x2@8@01))
  
  :qid |p-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((x@8@01 $Ref)) (!
  (=>
    (and
      (Set_in x@8@01 ($SortWrappers.$SnapToSet<$Ref> ($Snap.first ($Snap.second $t@2@01))))
      (= ($FVF.lookup_p (as sm@3@01  $FVF<p>) x@8@01) $Ref.null))
    (and (= (inv@9@01 x@8@01) x@8@01) (img@10@01 x@8@01)))
  :pattern ((Set_in x@8@01 ($SortWrappers.$SnapToSet<$Ref> ($Snap.first ($Snap.second $t@2@01)))))
  :pattern (($FVF.lookup_p (as sm@3@01  $FVF<p>) x@8@01))
  :pattern ((inv@9@01 x@8@01))
  :pattern ((img@10@01 x@8@01))
  :qid |p-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@10@01 r)
      (and
        (Set_in (inv@9@01 r) ($SortWrappers.$SnapToSet<$Ref> ($Snap.first ($Snap.second $t@2@01))))
        (= ($FVF.lookup_p (as sm@3@01  $FVF<p>) (inv@9@01 r)) $Ref.null)))
    (= (inv@9@01 r) r))
  :pattern ((inv@9@01 r))
  :qid |p-fctOfInv|)))
; Precomputing data for removing quantified permissions
(define-fun pTaken@11@01 ((r $Ref)) $Perm
  (ite
    (and
      (and
        (Set_in (inv@9@01 r) ($SortWrappers.$SnapToSet<$Ref> ($Snap.first ($Snap.second $t@2@01))))
        (= ($FVF.lookup_p (as sm@3@01  $FVF<p>) (inv@9@01 r)) $Ref.null))
      (img@10@01 r)
      (= r (inv@9@01 r)))
    ($Perm.min
      (ite (= r this@1@01) (- $Perm.Write (pTaken@7@01 r)) $Perm.No)
      (/ (to_real 1) (to_real 2)))
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
(assert (not (= (- (- $Perm.Write (pTaken@7@01 this@1@01)) (pTaken@11@01 this@1@01)) $Perm.No)))
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
      (and
        (Set_in (inv@9@01 r) ($SortWrappers.$SnapToSet<$Ref> ($Snap.first ($Snap.second $t@2@01))))
        (= ($FVF.lookup_p (as sm@3@01  $FVF<p>) (inv@9@01 r)) $Ref.null))
      (img@10@01 r)
      (= r (inv@9@01 r)))
    (= (- (/ (to_real 1) (to_real 2)) (pTaken@11@01 r)) $Perm.No))
  
  :qid |quant-u-13195|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Final check if taken enough permissions
; Done removing quantified permissions
(pop) ; 2
(pop) ; 1
; ---------- Dmm2 ----------
(declare-const this@12@01 $Ref)
(declare-const this@13@01 $Ref)
(set-option :timeout 0)
(push) ; 1
(declare-const $t@14@01 $Snap)
(assert (= $t@14@01 ($Snap.combine ($Snap.first $t@14@01) ($Snap.second $t@14@01))))
(declare-const sm@15@01 $FVF<p>)
; Definitional axioms for singleton-SM's value
(assert (=
  ($FVF.lookup_p (as sm@15@01  $FVF<p>) this@13@01)
  ($SortWrappers.$SnapTo$Ref ($Snap.first $t@14@01))))
(assert (not (= this@13@01 $Ref.null)))
(assert (=
  ($Snap.second $t@14@01)
  ($Snap.combine
    ($Snap.first ($Snap.second $t@14@01))
    ($Snap.second ($Snap.second $t@14@01)))))
(assert (=
  ($Snap.second ($Snap.second $t@14@01))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second $t@14@01)))
    ($Snap.second ($Snap.second ($Snap.second $t@14@01))))))
(assert (= ($Snap.first ($Snap.second ($Snap.second $t@14@01))) $Snap.unit))
; [eval] (this in this.s)
(assert (Set_in this@13@01 ($SortWrappers.$SnapToSet<$Ref> ($Snap.first ($Snap.second $t@14@01)))))
(assert (= ($Snap.second ($Snap.second ($Snap.second $t@14@01))) $Snap.unit))
; [eval] this.p == null
(assert (= ($FVF.lookup_p (as sm@15@01  $FVF<p>) this@13@01) $Ref.null))
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
(set-option :timeout 0)
(push) ; 2
(pop) ; 2
(push) ; 2
; [exec]
; exhale acc(this.s, write) &&
;   ((forall x: Ref ::(x in this.s) ==> acc(x.p, 1 / 2)) &&
;   (forall x: Ref ::(x in this.s) && x.p == null ==> acc(x.p, 1 / 2)))
(declare-const x@16@01 $Ref)
(push) ; 3
; [eval] (x in this.s)
(assert (Set_in x@16@01 ($SortWrappers.$SnapToSet<$Ref> ($Snap.first ($Snap.second $t@14@01)))))
(pop) ; 3
(declare-fun inv@17@01 ($Ref) $Ref)
(declare-fun img@18@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
; Check receiver injectivity
(push) ; 3
(assert (not (forall ((x1@16@01 $Ref) (x2@16@01 $Ref)) (!
  (=>
    (and
      (Set_in x1@16@01 ($SortWrappers.$SnapToSet<$Ref> ($Snap.first ($Snap.second $t@14@01))))
      (Set_in x2@16@01 ($SortWrappers.$SnapToSet<$Ref> ($Snap.first ($Snap.second $t@14@01))))
      (= x1@16@01 x2@16@01))
    (= x1@16@01 x2@16@01))
  
  :qid |p-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((x@16@01 $Ref)) (!
  (=>
    (Set_in x@16@01 ($SortWrappers.$SnapToSet<$Ref> ($Snap.first ($Snap.second $t@14@01))))
    (and (= (inv@17@01 x@16@01) x@16@01) (img@18@01 x@16@01)))
  :pattern ((Set_in x@16@01 ($SortWrappers.$SnapToSet<$Ref> ($Snap.first ($Snap.second $t@14@01)))))
  :pattern ((inv@17@01 x@16@01))
  :pattern ((img@18@01 x@16@01))
  :qid |p-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@18@01 r)
      (Set_in (inv@17@01 r) ($SortWrappers.$SnapToSet<$Ref> ($Snap.first ($Snap.second $t@14@01)))))
    (= (inv@17@01 r) r))
  :pattern ((inv@17@01 r))
  :qid |p-fctOfInv|)))
; Precomputing data for removing quantified permissions
(define-fun pTaken@19@01 ((r $Ref)) $Perm
  (ite
    (and
      (Set_in (inv@17@01 r) ($SortWrappers.$SnapToSet<$Ref> ($Snap.first ($Snap.second $t@14@01))))
      (img@18@01 r)
      (= r (inv@17@01 r)))
    ($Perm.min
      (ite (= r this@13@01) $Perm.Write $Perm.No)
      (/ (to_real 1) (to_real 2)))
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
(assert (not (= (- $Perm.Write (pTaken@19@01 this@13@01)) $Perm.No)))
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
  
  :qid |quant-u-13199|))))
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
      (Set_in (inv@17@01 r) ($SortWrappers.$SnapToSet<$Ref> ($Snap.first ($Snap.second $t@14@01))))
      (img@18@01 r)
      (= r (inv@17@01 r)))
    (= (- (/ (to_real 1) (to_real 2)) (pTaken@19@01 r)) $Perm.No))
  
  :qid |quant-u-13200|))))
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
      (Set_in (inv@17@01 r) ($SortWrappers.$SnapToSet<$Ref> ($Snap.first ($Snap.second $t@14@01))))
      (img@18@01 r)
      (= r (inv@17@01 r)))
    (= (- (/ (to_real 1) (to_real 2)) (pTaken@19@01 r)) $Perm.No))
  
  :qid |quant-u-13200|))))
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
(declare-const sm@20@01 $FVF<p>)
; Definitional axioms for snapshot map values
(assert (forall ((r $Ref)) (!
  (=>
    (= r this@13@01)
    (=
      ($FVF.lookup_p (as sm@20@01  $FVF<p>) r)
      ($FVF.lookup_p (as sm@15@01  $FVF<p>) r)))
  :pattern (($FVF.lookup_p (as sm@20@01  $FVF<p>) r))
  :pattern (($FVF.lookup_p (as sm@15@01  $FVF<p>) r))
  :qid |qp.fvfValDef0|)))
(declare-const pm@21@01 $FPM)
(assert (forall ((r $Ref)) (!
  (=
    ($FVF.perm_p (as pm@21@01  $FPM) r)
    (ite (= r this@13@01) $Perm.Write $Perm.No))
  :pattern (($FVF.perm_p (as pm@21@01  $FPM) r))
  :qid |qp.resPrmSumDef1|)))
(assert (<= ($FVF.perm_p (as pm@21@01  $FPM) this@13@01) $Perm.Write))
(declare-const x@22@01 $Ref)
(set-option :timeout 0)
(push) ; 3
; [eval] (x in this.s)
(assert (Set_in x@22@01 ($SortWrappers.$SnapToSet<$Ref> ($Snap.first ($Snap.second $t@14@01)))))
(pop) ; 3
(declare-fun inv@23@01 ($Ref) $Ref)
(declare-fun img@24@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
; Check receiver injectivity
(push) ; 3
(assert (not (forall ((x1@22@01 $Ref) (x2@22@01 $Ref)) (!
  (=>
    (and
      (Set_in x1@22@01 ($SortWrappers.$SnapToSet<$Ref> ($Snap.first ($Snap.second $t@14@01))))
      (Set_in x2@22@01 ($SortWrappers.$SnapToSet<$Ref> ($Snap.first ($Snap.second $t@14@01))))
      (= x1@22@01 x2@22@01))
    (= x1@22@01 x2@22@01))
  
  :qid |p-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((x@22@01 $Ref)) (!
  (=>
    (Set_in x@22@01 ($SortWrappers.$SnapToSet<$Ref> ($Snap.first ($Snap.second $t@14@01))))
    (and (= (inv@23@01 x@22@01) x@22@01) (img@24@01 x@22@01)))
  :pattern ((Set_in x@22@01 ($SortWrappers.$SnapToSet<$Ref> ($Snap.first ($Snap.second $t@14@01)))))
  :pattern ((inv@23@01 x@22@01))
  :pattern ((img@24@01 x@22@01))
  :qid |p-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@24@01 r)
      (Set_in (inv@23@01 r) ($SortWrappers.$SnapToSet<$Ref> ($Snap.first ($Snap.second $t@14@01)))))
    (= (inv@23@01 r) r))
  :pattern ((inv@23@01 r))
  :qid |p-fctOfInv|)))
; Precomputing data for removing quantified permissions
(define-fun pTaken@25@01 ((r $Ref)) $Perm
  (ite
    (and
      (Set_in (inv@23@01 r) ($SortWrappers.$SnapToSet<$Ref> ($Snap.first ($Snap.second $t@14@01))))
      (img@24@01 r)
      (= r (inv@23@01 r)))
    ($Perm.min
      (ite (= r this@13@01) $Perm.Write $Perm.No)
      (/ (to_real 1) (to_real 2)))
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
(assert (not (= (- $Perm.Write (pTaken@25@01 this@13@01)) $Perm.No)))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (forall ((r $Ref)) (!
  (= (pTaken@25@01 r) $Perm.No)
  
  :qid |quant-u-13204|))))
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
      (Set_in (inv@23@01 r) ($SortWrappers.$SnapToSet<$Ref> ($Snap.first ($Snap.second $t@14@01))))
      (img@24@01 r)
      (= r (inv@23@01 r)))
    (= (- (/ (to_real 1) (to_real 2)) (pTaken@25@01 r)) $Perm.No))
  
  :qid |quant-u-13205|))))
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
      (Set_in (inv@23@01 r) ($SortWrappers.$SnapToSet<$Ref> ($Snap.first ($Snap.second $t@14@01))))
      (img@24@01 r)
      (= r (inv@23@01 r)))
    (= (- (/ (to_real 1) (to_real 2)) (pTaken@25@01 r)) $Perm.No))
  
  :qid |quant-u-13205|))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Done removing quantified permissions
(pop) ; 2
(pop) ; 1
; ---------- foo ----------
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
; var x: Ref
(declare-const x@26@01 $Ref)
; [exec]
; var t: Ref
(declare-const t@27@01 $Ref)
; [exec]
; inhale acc(x.left, write) && x.left == null
(declare-const $t@28@01 $Snap)
(assert (= $t@28@01 ($Snap.combine ($Snap.first $t@28@01) ($Snap.second $t@28@01))))
(declare-const sm@29@01 $FVF<left>)
; Definitional axioms for singleton-SM's value
(assert (=
  ($FVF.lookup_left (as sm@29@01  $FVF<left>) x@26@01)
  ($SortWrappers.$SnapTo$Ref ($Snap.first $t@28@01))))
(assert (not (= x@26@01 $Ref.null)))
(assert (= ($Snap.second $t@28@01) $Snap.unit))
; [eval] x.left == null
(assert (= ($FVF.lookup_left (as sm@29@01  $FVF<left>) x@26@01) $Ref.null))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale acc(t.all, write) && t.all == Set(x)
(declare-const $t@30@01 $Snap)
(assert (= $t@30@01 ($Snap.combine ($Snap.first $t@30@01) ($Snap.second $t@30@01))))
(assert (not (= t@27@01 $Ref.null)))
(assert (= ($Snap.second $t@30@01) $Snap.unit))
; [eval] t.all == Set(x)
; [eval] Set(x)
(assert (Set_equal ($SortWrappers.$SnapToSet<$Ref> ($Snap.first $t@30@01)) (Set_singleton x@26@01)))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; fold acc(inv(t), write)
(declare-const q@31@01 $Ref)
(set-option :timeout 0)
(push) ; 3
; [eval] (q in this.all)
(assert (Set_in q@31@01 ($SortWrappers.$SnapToSet<$Ref> ($Snap.first $t@30@01))))
(pop) ; 3
(declare-fun inv@32@01 ($Ref) $Ref)
(declare-fun img@33@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
; Check receiver injectivity
(push) ; 3
(assert (not (forall ((q1@31@01 $Ref) (q2@31@01 $Ref)) (!
  (=>
    (and
      (Set_in q1@31@01 ($SortWrappers.$SnapToSet<$Ref> ($Snap.first $t@30@01)))
      (Set_in q2@31@01 ($SortWrappers.$SnapToSet<$Ref> ($Snap.first $t@30@01)))
      (= q1@31@01 q2@31@01))
    (= q1@31@01 q2@31@01))
  
  :qid |left-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((q@31@01 $Ref)) (!
  (=>
    (Set_in q@31@01 ($SortWrappers.$SnapToSet<$Ref> ($Snap.first $t@30@01)))
    (and (= (inv@32@01 q@31@01) q@31@01) (img@33@01 q@31@01)))
  :pattern ((Set_in q@31@01 ($SortWrappers.$SnapToSet<$Ref> ($Snap.first $t@30@01))))
  :pattern ((inv@32@01 q@31@01))
  :pattern ((img@33@01 q@31@01))
  :qid |left-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@33@01 r)
      (Set_in (inv@32@01 r) ($SortWrappers.$SnapToSet<$Ref> ($Snap.first $t@30@01))))
    (= (inv@32@01 r) r))
  :pattern ((inv@32@01 r))
  :qid |left-fctOfInv|)))
; Precomputing data for removing quantified permissions
(define-fun pTaken@34@01 ((r $Ref)) $Perm
  (ite
    (and
      (Set_in (inv@32@01 r) ($SortWrappers.$SnapToSet<$Ref> ($Snap.first $t@30@01)))
      (img@33@01 r)
      (= r (inv@32@01 r)))
    ($Perm.min
      (ite (= r x@26@01) $Perm.Write $Perm.No)
      (/ (to_real 1) (to_real 2)))
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
(assert (not (= (- $Perm.Write (pTaken@34@01 x@26@01)) $Perm.No)))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (forall ((r $Ref)) (!
  (= (pTaken@34@01 r) $Perm.No)
  
  :qid |quant-u-13209|))))
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
      (Set_in (inv@32@01 r) ($SortWrappers.$SnapToSet<$Ref> ($Snap.first $t@30@01)))
      (img@33@01 r)
      (= r (inv@32@01 r)))
    (= (- (/ (to_real 1) (to_real 2)) (pTaken@34@01 r)) $Perm.No))
  
  :qid |quant-u-13210|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Final check if taken enough permissions
; Done removing quantified permissions
(declare-const sm@35@01 $FVF<left>)
; Definitional axioms for snapshot map domain
(assert (forall ((r $Ref)) (!
  (and
    (=>
      (Set_in r ($FVF.domain_left (as sm@35@01  $FVF<left>)))
      (and
        (Set_in (inv@32@01 r) ($SortWrappers.$SnapToSet<$Ref> ($Snap.first $t@30@01)))
        (img@33@01 r)))
    (=>
      (and
        (Set_in (inv@32@01 r) ($SortWrappers.$SnapToSet<$Ref> ($Snap.first $t@30@01)))
        (img@33@01 r))
      (Set_in r ($FVF.domain_left (as sm@35@01  $FVF<left>)))))
  :pattern ((Set_in r ($FVF.domain_left (as sm@35@01  $FVF<left>))))
  :qid |qp.fvfDomDef3|)))
; Definitional axioms for snapshot map values
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and
        (Set_in (inv@32@01 r) ($SortWrappers.$SnapToSet<$Ref> ($Snap.first $t@30@01)))
        (img@33@01 r))
      (= r x@26@01))
    (=
      ($FVF.lookup_left (as sm@35@01  $FVF<left>) r)
      ($FVF.lookup_left (as sm@29@01  $FVF<left>) r)))
  :pattern (($FVF.lookup_left (as sm@35@01  $FVF<left>) r))
  :pattern (($FVF.lookup_left (as sm@29@01  $FVF<left>) r))
  :qid |qp.fvfValDef2|)))
(declare-const x@36@01 $Ref)
(set-option :timeout 0)
(push) ; 3
; [eval] (x in this.all) && x.left == null
; [eval] (x in this.all)
(push) ; 4
; [then-branch: 1 | !(x@36@01 in First:($t@30@01)) | live]
; [else-branch: 1 | x@36@01 in First:($t@30@01) | live]
(push) ; 5
; [then-branch: 1 | !(x@36@01 in First:($t@30@01))]
(assert (not (Set_in x@36@01 ($SortWrappers.$SnapToSet<$Ref> ($Snap.first $t@30@01)))))
(pop) ; 5
(push) ; 5
; [else-branch: 1 | x@36@01 in First:($t@30@01)]
(assert (Set_in x@36@01 ($SortWrappers.$SnapToSet<$Ref> ($Snap.first $t@30@01))))
; [eval] x.left == null
(push) ; 6
(assert (not (= x@36@01 x@26@01)))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(pop) ; 5
(pop) ; 4
; Joined path conditions
; Joined path conditions
(assert (or
  (Set_in x@36@01 ($SortWrappers.$SnapToSet<$Ref> ($Snap.first $t@30@01)))
  (not (Set_in x@36@01 ($SortWrappers.$SnapToSet<$Ref> ($Snap.first $t@30@01))))))
(assert (and
  (Set_in x@36@01 ($SortWrappers.$SnapToSet<$Ref> ($Snap.first $t@30@01)))
  (= ($FVF.lookup_left (as sm@29@01  $FVF<left>) x@36@01) $Ref.null)))
(pop) ; 3
(declare-fun inv@37@01 ($Ref) $Ref)
(declare-fun img@38@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
(assert (forall ((x@36@01 $Ref)) (!
  (=>
    (and
      (Set_in x@36@01 ($SortWrappers.$SnapToSet<$Ref> ($Snap.first $t@30@01)))
      (= ($FVF.lookup_left (as sm@29@01  $FVF<left>) x@36@01) $Ref.null))
    (or
      (Set_in x@36@01 ($SortWrappers.$SnapToSet<$Ref> ($Snap.first $t@30@01)))
      (not
        (Set_in x@36@01 ($SortWrappers.$SnapToSet<$Ref> ($Snap.first $t@30@01))))))
  :pattern ((Set_in x@36@01 ($SortWrappers.$SnapToSet<$Ref> ($Snap.first $t@30@01))))
  :pattern (($FVF.lookup_left (as sm@29@01  $FVF<left>) x@36@01))
  :pattern ((inv@37@01 x@36@01))
  :pattern ((img@38@01 x@36@01))
  :qid |left-aux|)))
; Check receiver injectivity
(push) ; 3
(assert (not (forall ((x1@36@01 $Ref) (x2@36@01 $Ref)) (!
  (=>
    (and
      (and
        (Set_in x1@36@01 ($SortWrappers.$SnapToSet<$Ref> ($Snap.first $t@30@01)))
        (= ($FVF.lookup_left (as sm@29@01  $FVF<left>) x1@36@01) $Ref.null))
      (and
        (Set_in x2@36@01 ($SortWrappers.$SnapToSet<$Ref> ($Snap.first $t@30@01)))
        (= ($FVF.lookup_left (as sm@29@01  $FVF<left>) x2@36@01) $Ref.null))
      (= x1@36@01 x2@36@01))
    (= x1@36@01 x2@36@01))
  
  :qid |left-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((x@36@01 $Ref)) (!
  (=>
    (and
      (Set_in x@36@01 ($SortWrappers.$SnapToSet<$Ref> ($Snap.first $t@30@01)))
      (= ($FVF.lookup_left (as sm@29@01  $FVF<left>) x@36@01) $Ref.null))
    (and (= (inv@37@01 x@36@01) x@36@01) (img@38@01 x@36@01)))
  :pattern ((Set_in x@36@01 ($SortWrappers.$SnapToSet<$Ref> ($Snap.first $t@30@01))))
  :pattern (($FVF.lookup_left (as sm@29@01  $FVF<left>) x@36@01))
  :pattern ((inv@37@01 x@36@01))
  :pattern ((img@38@01 x@36@01))
  :qid |left-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@38@01 r)
      (and
        (Set_in (inv@37@01 r) ($SortWrappers.$SnapToSet<$Ref> ($Snap.first $t@30@01)))
        (= ($FVF.lookup_left (as sm@29@01  $FVF<left>) (inv@37@01 r)) $Ref.null)))
    (= (inv@37@01 r) r))
  :pattern ((inv@37@01 r))
  :qid |left-fctOfInv|)))
; Precomputing data for removing quantified permissions
(define-fun pTaken@39@01 ((r $Ref)) $Perm
  (ite
    (and
      (and
        (Set_in (inv@37@01 r) ($SortWrappers.$SnapToSet<$Ref> ($Snap.first $t@30@01)))
        (= ($FVF.lookup_left (as sm@29@01  $FVF<left>) (inv@37@01 r)) $Ref.null))
      (img@38@01 r)
      (= r (inv@37@01 r)))
    ($Perm.min
      (ite (= r x@26@01) (- $Perm.Write (pTaken@34@01 r)) $Perm.No)
      (/ (to_real 1) (to_real 2)))
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
(assert (not (= (- (- $Perm.Write (pTaken@34@01 x@26@01)) (pTaken@39@01 x@26@01)) $Perm.No)))
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
      (and
        (Set_in (inv@37@01 r) ($SortWrappers.$SnapToSet<$Ref> ($Snap.first $t@30@01)))
        (= ($FVF.lookup_left (as sm@29@01  $FVF<left>) (inv@37@01 r)) $Ref.null))
      (img@38@01 r)
      (= r (inv@37@01 r)))
    (= (- (/ (to_real 1) (to_real 2)) (pTaken@39@01 r)) $Perm.No))
  
  :qid |quant-u-13214|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Final check if taken enough permissions
; Done removing quantified permissions
(declare-const sm@40@01 $FVF<left>)
; Definitional axioms for snapshot map domain
(assert (forall ((r $Ref)) (!
  (and
    (=>
      (Set_in r ($FVF.domain_left (as sm@40@01  $FVF<left>)))
      (and
        (and
          (Set_in (inv@37@01 r) ($SortWrappers.$SnapToSet<$Ref> ($Snap.first $t@30@01)))
          (=
            ($FVF.lookup_left (as sm@29@01  $FVF<left>) (inv@37@01 r))
            $Ref.null))
        (img@38@01 r)))
    (=>
      (and
        (and
          (Set_in (inv@37@01 r) ($SortWrappers.$SnapToSet<$Ref> ($Snap.first $t@30@01)))
          (=
            ($FVF.lookup_left (as sm@29@01  $FVF<left>) (inv@37@01 r))
            $Ref.null))
        (img@38@01 r))
      (Set_in r ($FVF.domain_left (as sm@40@01  $FVF<left>)))))
  :pattern ((Set_in r ($FVF.domain_left (as sm@40@01  $FVF<left>))))
  :qid |qp.fvfDomDef5|)))
; Definitional axioms for snapshot map values
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and
        (and
          (Set_in (inv@37@01 r) ($SortWrappers.$SnapToSet<$Ref> ($Snap.first $t@30@01)))
          (=
            ($FVF.lookup_left (as sm@29@01  $FVF<left>) (inv@37@01 r))
            $Ref.null))
        (img@38@01 r))
      (ite (= r x@26@01) (< $Perm.No (- $Perm.Write (pTaken@34@01 r))) false))
    (=
      ($FVF.lookup_left (as sm@40@01  $FVF<left>) r)
      ($FVF.lookup_left (as sm@29@01  $FVF<left>) r)))
  :pattern (($FVF.lookup_left (as sm@40@01  $FVF<left>) r))
  :pattern (($FVF.lookup_left (as sm@29@01  $FVF<left>) r))
  :qid |qp.fvfValDef4|)))
(assert (inv%trigger ($Snap.combine
  ($Snap.first $t@30@01)
  ($Snap.combine
    ($SortWrappers.$FVF<left>To$Snap (as sm@35@01  $FVF<left>))
    ($SortWrappers.$FVF<left>To$Snap (as sm@40@01  $FVF<left>)))) t@27@01))
(pop) ; 2
(pop) ; 1
; ---------- goo ----------
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
; var x: Ref
(declare-const x@41@01 $Ref)
; [exec]
; var t: Ref
(declare-const t@42@01 $Ref)
; [exec]
; inhale acc(inv(t), write)
(declare-const $t@43@01 $Snap)
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; unfold acc(inv(t), write)
(assert (= $t@43@01 ($Snap.combine ($Snap.first $t@43@01) ($Snap.second $t@43@01))))
(assert (not (= t@42@01 $Ref.null)))
(assert (=
  ($Snap.second $t@43@01)
  ($Snap.combine
    ($Snap.first ($Snap.second $t@43@01))
    ($Snap.second ($Snap.second $t@43@01)))))
(declare-const q@44@01 $Ref)
(set-option :timeout 0)
(push) ; 3
; [eval] (q in this.all)
(assert (Set_in q@44@01 ($SortWrappers.$SnapToSet<$Ref> ($Snap.first $t@43@01))))
(pop) ; 3
(declare-fun inv@45@01 ($Ref) $Ref)
(declare-fun img@46@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
; Check receiver injectivity
(push) ; 3
(assert (not (forall ((q1@44@01 $Ref) (q2@44@01 $Ref)) (!
  (=>
    (and
      (Set_in q1@44@01 ($SortWrappers.$SnapToSet<$Ref> ($Snap.first $t@43@01)))
      (Set_in q2@44@01 ($SortWrappers.$SnapToSet<$Ref> ($Snap.first $t@43@01)))
      (= q1@44@01 q2@44@01))
    (= q1@44@01 q2@44@01))
  
  :qid |left-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((q@44@01 $Ref)) (!
  (=>
    (Set_in q@44@01 ($SortWrappers.$SnapToSet<$Ref> ($Snap.first $t@43@01)))
    (and (= (inv@45@01 q@44@01) q@44@01) (img@46@01 q@44@01)))
  :pattern ((Set_in q@44@01 ($SortWrappers.$SnapToSet<$Ref> ($Snap.first $t@43@01))))
  :pattern ((inv@45@01 q@44@01))
  :pattern ((img@46@01 q@44@01))
  :qid |quant-u-13216|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@46@01 r)
      (Set_in (inv@45@01 r) ($SortWrappers.$SnapToSet<$Ref> ($Snap.first $t@43@01))))
    (= (inv@45@01 r) r))
  :pattern ((inv@45@01 r))
  :qid |left-fctOfInv|)))
; Permissions are non-negative
; Field permissions are at most one
; Permission implies non-null receiver
(assert (forall ((q@44@01 $Ref)) (!
  (=>
    (Set_in q@44@01 ($SortWrappers.$SnapToSet<$Ref> ($Snap.first $t@43@01)))
    (not (= q@44@01 $Ref.null)))
  :pattern ((Set_in q@44@01 ($SortWrappers.$SnapToSet<$Ref> ($Snap.first $t@43@01))))
  :pattern ((inv@45@01 q@44@01))
  :pattern ((img@46@01 q@44@01))
  :qid |left-permImpliesNonNull|)))
(declare-const x@47@01 $Ref)
(push) ; 3
; [eval] (x in this.all) && x.left == null
; [eval] (x in this.all)
(push) ; 4
; [then-branch: 2 | !(x@47@01 in First:($t@43@01)) | live]
; [else-branch: 2 | x@47@01 in First:($t@43@01) | live]
(push) ; 5
; [then-branch: 2 | !(x@47@01 in First:($t@43@01))]
(assert (not (Set_in x@47@01 ($SortWrappers.$SnapToSet<$Ref> ($Snap.first $t@43@01)))))
(pop) ; 5
(push) ; 5
; [else-branch: 2 | x@47@01 in First:($t@43@01)]
(assert (Set_in x@47@01 ($SortWrappers.$SnapToSet<$Ref> ($Snap.first $t@43@01))))
; [eval] x.left == null
(push) ; 6
(assert (not (and
  (img@46@01 x@47@01)
  (Set_in (inv@45@01 x@47@01) ($SortWrappers.$SnapToSet<$Ref> ($Snap.first $t@43@01))))))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(pop) ; 5
(pop) ; 4
; Joined path conditions
; Joined path conditions
(assert (or
  (Set_in x@47@01 ($SortWrappers.$SnapToSet<$Ref> ($Snap.first $t@43@01)))
  (not (Set_in x@47@01 ($SortWrappers.$SnapToSet<$Ref> ($Snap.first $t@43@01))))))
(assert (and
  (Set_in x@47@01 ($SortWrappers.$SnapToSet<$Ref> ($Snap.first $t@43@01)))
  (=
    ($FVF.lookup_left ($SortWrappers.$SnapTo$FVF<left> ($Snap.first ($Snap.second $t@43@01))) x@47@01)
    $Ref.null)))
(pop) ; 3
(declare-fun inv@48@01 ($Ref) $Ref)
(declare-fun img@49@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
(assert (forall ((x@47@01 $Ref)) (!
  (=>
    (and
      (Set_in x@47@01 ($SortWrappers.$SnapToSet<$Ref> ($Snap.first $t@43@01)))
      (=
        ($FVF.lookup_left ($SortWrappers.$SnapTo$FVF<left> ($Snap.first ($Snap.second $t@43@01))) x@47@01)
        $Ref.null))
    (or
      (Set_in x@47@01 ($SortWrappers.$SnapToSet<$Ref> ($Snap.first $t@43@01)))
      (not
        (Set_in x@47@01 ($SortWrappers.$SnapToSet<$Ref> ($Snap.first $t@43@01))))))
  :pattern ((Set_in x@47@01 ($SortWrappers.$SnapToSet<$Ref> ($Snap.first $t@43@01))))
  :pattern (($FVF.lookup_left ($SortWrappers.$SnapTo$FVF<left> ($Snap.first ($Snap.second $t@43@01))) x@47@01))
  :pattern ((inv@48@01 x@47@01))
  :pattern ((img@49@01 x@47@01))
  :qid |left-aux|)))
; Check receiver injectivity
(push) ; 3
(assert (not (forall ((x1@47@01 $Ref) (x2@47@01 $Ref)) (!
  (=>
    (and
      (and
        (Set_in x1@47@01 ($SortWrappers.$SnapToSet<$Ref> ($Snap.first $t@43@01)))
        (=
          ($FVF.lookup_left ($SortWrappers.$SnapTo$FVF<left> ($Snap.first ($Snap.second $t@43@01))) x1@47@01)
          $Ref.null))
      (and
        (Set_in x2@47@01 ($SortWrappers.$SnapToSet<$Ref> ($Snap.first $t@43@01)))
        (=
          ($FVF.lookup_left ($SortWrappers.$SnapTo$FVF<left> ($Snap.first ($Snap.second $t@43@01))) x2@47@01)
          $Ref.null))
      (= x1@47@01 x2@47@01))
    (= x1@47@01 x2@47@01))
  
  :qid |left-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((x@47@01 $Ref)) (!
  (=>
    (and
      (Set_in x@47@01 ($SortWrappers.$SnapToSet<$Ref> ($Snap.first $t@43@01)))
      (=
        ($FVF.lookup_left ($SortWrappers.$SnapTo$FVF<left> ($Snap.first ($Snap.second $t@43@01))) x@47@01)
        $Ref.null))
    (and (= (inv@48@01 x@47@01) x@47@01) (img@49@01 x@47@01)))
  :pattern ((Set_in x@47@01 ($SortWrappers.$SnapToSet<$Ref> ($Snap.first $t@43@01))))
  :pattern (($FVF.lookup_left ($SortWrappers.$SnapTo$FVF<left> ($Snap.first ($Snap.second $t@43@01))) x@47@01))
  :pattern ((inv@48@01 x@47@01))
  :pattern ((img@49@01 x@47@01))
  :qid |quant-u-13218|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@49@01 r)
      (and
        (Set_in (inv@48@01 r) ($SortWrappers.$SnapToSet<$Ref> ($Snap.first $t@43@01)))
        (=
          ($FVF.lookup_left ($SortWrappers.$SnapTo$FVF<left> ($Snap.first ($Snap.second $t@43@01))) (inv@48@01 r))
          $Ref.null)))
    (= (inv@48@01 r) r))
  :pattern ((inv@48@01 r))
  :qid |left-fctOfInv|)))
; Permissions are non-negative
; Field permissions are at most one
; Permission implies non-null receiver
(assert (forall ((x@47@01 $Ref)) (!
  (=>
    (and
      (Set_in x@47@01 ($SortWrappers.$SnapToSet<$Ref> ($Snap.first $t@43@01)))
      (=
        ($FVF.lookup_left ($SortWrappers.$SnapTo$FVF<left> ($Snap.first ($Snap.second $t@43@01))) x@47@01)
        $Ref.null))
    (not (= x@47@01 $Ref.null)))
  :pattern ((Set_in x@47@01 ($SortWrappers.$SnapToSet<$Ref> ($Snap.first $t@43@01))))
  :pattern (($FVF.lookup_left ($SortWrappers.$SnapTo$FVF<left> ($Snap.first ($Snap.second $t@43@01))) x@47@01))
  :pattern ((inv@48@01 x@47@01))
  :pattern ((img@49@01 x@47@01))
  :qid |left-permImpliesNonNull|)))
(push) ; 3
(set-option :timeout 10)
(assert (not (forall ((r $Ref)) (!
  (and
    (= x@47@01 q@44@01)
    (=
      (and
        (img@49@01 r)
        (and
          (Set_in (inv@48@01 r) ($SortWrappers.$SnapToSet<$Ref> ($Snap.first $t@43@01)))
          (=
            ($FVF.lookup_left ($SortWrappers.$SnapTo$FVF<left> ($Snap.first ($Snap.second $t@43@01))) (inv@48@01 r))
            $Ref.null)))
      (and
        (img@46@01 r)
        (Set_in (inv@45@01 r) ($SortWrappers.$SnapToSet<$Ref> ($Snap.first $t@43@01))))))
  
  :qid |quant-u-13219|))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; State saturation: after unfold
(set-option :timeout 40)
(check-sat)
; unknown
(assert (inv%trigger $t@43@01 t@42@01))
; [exec]
; inhale (x in t.all) && x.left == null
(declare-const $t@50@01 $Snap)
(assert (= $t@50@01 ($Snap.combine ($Snap.first $t@50@01) ($Snap.second $t@50@01))))
(assert (= ($Snap.first $t@50@01) $Snap.unit))
; [eval] (x in t.all)
(assert (Set_in x@41@01 ($SortWrappers.$SnapToSet<$Ref> ($Snap.first $t@43@01))))
(assert (= ($Snap.second $t@50@01) $Snap.unit))
; [eval] x.left == null
(declare-const sm@51@01 $FVF<left>)
; Definitional axioms for snapshot map values
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@46@01 r)
      (Set_in (inv@45@01 r) ($SortWrappers.$SnapToSet<$Ref> ($Snap.first $t@43@01))))
    (=
      ($FVF.lookup_left (as sm@51@01  $FVF<left>) r)
      ($FVF.lookup_left ($SortWrappers.$SnapTo$FVF<left> ($Snap.first ($Snap.second $t@43@01))) r)))
  :pattern (($FVF.lookup_left (as sm@51@01  $FVF<left>) r))
  :pattern (($FVF.lookup_left ($SortWrappers.$SnapTo$FVF<left> ($Snap.first ($Snap.second $t@43@01))) r))
  :qid |qp.fvfValDef6|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@49@01 r)
      (and
        (Set_in (inv@48@01 r) ($SortWrappers.$SnapToSet<$Ref> ($Snap.first $t@43@01)))
        (=
          ($FVF.lookup_left ($SortWrappers.$SnapTo$FVF<left> ($Snap.first ($Snap.second $t@43@01))) (inv@48@01 r))
          $Ref.null)))
    (=
      ($FVF.lookup_left (as sm@51@01  $FVF<left>) r)
      ($FVF.lookup_left ($SortWrappers.$SnapTo$FVF<left> ($Snap.second ($Snap.second $t@43@01))) r)))
  :pattern (($FVF.lookup_left (as sm@51@01  $FVF<left>) r))
  :pattern (($FVF.lookup_left ($SortWrappers.$SnapTo$FVF<left> ($Snap.second ($Snap.second $t@43@01))) r))
  :qid |qp.fvfValDef7|)))
(declare-const pm@52@01 $FPM)
(assert (forall ((r $Ref)) (!
  (=
    ($FVF.perm_left (as pm@52@01  $FPM) r)
    (+
      (ite
        (and
          (img@46@01 r)
          (Set_in (inv@45@01 r) ($SortWrappers.$SnapToSet<$Ref> ($Snap.first $t@43@01))))
        (/ (to_real 1) (to_real 2))
        $Perm.No)
      (ite
        (and
          (img@49@01 r)
          (and
            (Set_in (inv@48@01 r) ($SortWrappers.$SnapToSet<$Ref> ($Snap.first $t@43@01)))
            (=
              ($FVF.lookup_left ($SortWrappers.$SnapTo$FVF<left> ($Snap.first ($Snap.second $t@43@01))) (inv@48@01 r))
              $Ref.null)))
        (/ (to_real 1) (to_real 2))
        $Perm.No)))
  :pattern (($FVF.perm_left (as pm@52@01  $FPM) r))
  :qid |qp.resPrmSumDef8|)))
(set-option :timeout 0)
(push) ; 3
(assert (not (< $Perm.No ($FVF.perm_left (as pm@52@01  $FPM) x@41@01))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(assert (= ($FVF.lookup_left (as sm@51@01  $FVF<left>) x@41@01) $Ref.null))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; exhale acc(x.left, write)
; Precomputing data for removing quantified permissions
(define-fun pTaken@53@01 ((r $Ref)) $Perm
  (ite
    (= r x@41@01)
    ($Perm.min
      (ite
        (and
          (img@46@01 r)
          (Set_in (inv@45@01 r) ($SortWrappers.$SnapToSet<$Ref> ($Snap.first $t@43@01))))
        (/ (to_real 1) (to_real 2))
        $Perm.No)
      $Perm.Write)
    $Perm.No))
(define-fun pTaken@54@01 ((r $Ref)) $Perm
  (ite
    (= r x@41@01)
    ($Perm.min
      (ite
        (and
          (img@49@01 r)
          (and
            (Set_in (inv@48@01 r) ($SortWrappers.$SnapToSet<$Ref> ($Snap.first $t@43@01)))
            (=
              ($FVF.lookup_left ($SortWrappers.$SnapTo$FVF<left> ($Snap.first ($Snap.second $t@43@01))) (inv@48@01 r))
              $Ref.null)))
        (/ (to_real 1) (to_real 2))
        $Perm.No)
      (- $Perm.Write (pTaken@53@01 r)))
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
        (and
          (img@46@01 r)
          (Set_in (inv@45@01 r) ($SortWrappers.$SnapToSet<$Ref> ($Snap.first $t@43@01))))
        (/ (to_real 1) (to_real 2))
        $Perm.No)
      (pTaken@53@01 r))
    $Perm.No)
  
  :qid |quant-u-13221|))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (forall ((r $Ref)) (!
  (= (pTaken@53@01 r) $Perm.No)
  
  :qid |quant-u-13222|))))
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
  (=> (= r x@41@01) (= (- $Perm.Write (pTaken@53@01 r)) $Perm.No))
  
  :qid |quant-u-13223|))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Chunk depleted?
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 500)
(assert (not (forall ((r $Ref)) (!
  (=
    (-
      (ite
        (and
          (img@49@01 r)
          (and
            (Set_in (inv@48@01 r) ($SortWrappers.$SnapToSet<$Ref> ($Snap.first $t@43@01)))
            (=
              ($FVF.lookup_left ($SortWrappers.$SnapTo$FVF<left> ($Snap.first ($Snap.second $t@43@01))) (inv@48@01 r))
              $Ref.null)))
        (/ (to_real 1) (to_real 2))
        $Perm.No)
      (pTaken@54@01 r))
    $Perm.No)
  
  :qid |quant-u-13224|))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (forall ((r $Ref)) (!
  (= (pTaken@54@01 r) $Perm.No)
  
  :qid |quant-u-13225|))))
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
    (= r x@41@01)
    (= (- (- $Perm.Write (pTaken@53@01 r)) (pTaken@54@01 r)) $Perm.No))
  
  :qid |quant-u-13226|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Final check if taken enough permissions
; Done removing quantified permissions
(pop) ; 2
(pop) ; 1
