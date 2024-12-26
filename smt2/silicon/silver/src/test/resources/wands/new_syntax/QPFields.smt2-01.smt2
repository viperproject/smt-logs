(get-info :version)
; (:version "4.12.1")
; Started: 2024-12-26 19:36:59
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
(declare-sort $FVF<f> 0)
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
; /field_value_functions_declarations.smt2 [f: Int]
(declare-fun $FVF.domain_f ($FVF<f>) Set<$Ref>)
(declare-fun $FVF.lookup_f ($FVF<f> $Ref) Int)
(declare-fun $FVF.after_f ($FVF<f> $FVF<f>) Bool)
(declare-fun $FVF.loc_f (Int $Ref) Bool)
(declare-fun $FVF.perm_f ($FPM $Ref) $Perm)
(declare-const $fvfTOP_f $FVF<f>)
(declare-fun MWSF_apply ($MWSF $Snap) $Snap)
; Declaring symbols related to program functions (from program analysis)
; Snapshot variable to be used during function verification
(declare-fun s@$ () $Snap)
; Declaring predicate trigger functions
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
; /field_value_functions_axioms.smt2 [f: Int]
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
(assert (forall ((r $Ref) (f Int)) (!
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
  :qid |quant-u-21129|)))
(assert (forall ((r $Ref)) (!
  (=> (img@5@01 r) (= (inv@4@01 r) r))
  :pattern ((inv@4@01 r))
  :qid |f-fctOfInv|)))
; Permissions are non-negative
; Field permissions are at most one
; Permission implies non-null receiver
(assert (forall ((y@3@01 $Ref)) (!
  (not (= y@3@01 $Ref.null))
  :pattern ((inv@4@01 y@3@01))
  :pattern ((img@5@01 y@3@01))
  :qid |f-permImpliesNonNull|)))
(assert (= ($Snap.second $t@2@01) $Snap.unit))
; [eval] x.f == 0
(push) ; 2
(assert (not (img@5@01 x@1@01)))
(check-sat)
; unsat
(pop) ; 2
; 0.00s
; (get-info :all-statistics)
(assert (= ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@2@01)) x@1@01) 0))
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
;   assert acc(x.f, write) && x.f == 0
; }
(push) ; 3
(declare-const $t@6@01 $Snap)
(assert (= $t@6@01 $Snap.unit))
; [exec]
; assert acc(x.f, write) && x.f == 0
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
(assert (not (forall ((r $Ref)) (!
  (=> (= r x@1@01) false)
  
  :qid |quant-u-21130|))))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; Done removing quantified permissions
(declare-const sm@7@01 $FVF<f>)
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
(assert (not (forall ((r $Ref)) (!
  (=> (= r x@1@01) false)
  
  :qid |quant-u-21131|))))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; Done removing quantified permissions
(declare-const sm@8@01 $FVF<f>)
; Definitional axioms for snapshot map values (instantiated)
(assert (= (as sm@7@01  $FVF<f>) (as sm@8@01  $FVF<f>)))
(set-option :timeout 10)
(check-sat)
; unknown
; Precomputing data for removing quantified permissions
(define-fun pTaken@9@01 ((r $Ref)) $Perm
  (ite
    (= r x@1@01)
    ($Perm.min (ite (img@5@01 r) $Perm.Write $Perm.No) $Perm.Write)
    $Perm.No))
; Done precomputing, updating quantified chunks
; State saturation: before repetition
(check-sat)
; unknown
; Chunk depleted?
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 500)
(assert (not (forall ((r $Ref)) (!
  (= (- (ite (img@5@01 r) $Perm.Write $Perm.No) (pTaken@9@01 r)) $Perm.No)
  
  :qid |quant-u-21133|))))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not (forall ((r $Ref)) (!
  (= (pTaken@9@01 r) $Perm.No)
  
  :qid |quant-u-21134|))))
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
  (=> (= r x@1@01) (= (- $Perm.Write (pTaken@9@01 r)) $Perm.No))
  
  :qid |quant-u-21135|))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; Final check if taken enough permissions
; Done removing quantified permissions
(declare-const sm@10@01 $FVF<f>)
; Definitional axioms for snapshot map values (instantiated)
(assert (=>
  (img@5@01 x@1@01)
  (=
    ($FVF.lookup_f (as sm@10@01  $FVF<f>) x@1@01)
    ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@2@01)) x@1@01))))
(assert (= (as sm@7@01  $FVF<f>) (as sm@10@01  $FVF<f>)))
(set-option :timeout 10)
(check-sat)
; unknown
(declare-const $t@11@01 $FVF<f>)
(declare-const $t@12@01 $FVF<f>)
(assert (forall ((r $Ref)) (!
  (=>
    (= r x@1@01)
    (= ($FVF.lookup_f $t@12@01 r) ($FVF.lookup_f (as sm@10@01  $FVF<f>) r)))
  :pattern (($FVF.lookup_f $t@11@01 r))
  :pattern (($FVF.lookup_f (as sm@10@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f $t@12@01 r))
  :qid |quant-u-21137|)))
; [eval] x.f == 0
(set-option :timeout 0)
(push) ; 4
(assert (not (= ($FVF.lookup_f $t@12@01 x@1@01) 0)))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(assert (= ($FVF.lookup_f $t@12@01 x@1@01) 0))
; Create MagicWandSnapFunction for wand true --* true
(declare-const mwsf@13@01 $MWSF)
(assert (forall (($t@6@01 $Snap)) (!
  (= (MWSF_apply mwsf@13@01 $t@6@01) $Snap.unit)
  :pattern ((MWSF_apply mwsf@13@01 $t@6@01))
  :qid |quant-u-21138|)))
(pop) ; 3
(push) ; 3
(assert (forall (($t@6@01 $Snap)) (!
  (= (MWSF_apply mwsf@13@01 $t@6@01) $Snap.unit)
  :pattern ((MWSF_apply mwsf@13@01 $t@6@01))
  :qid |quant-u-21139|)))
(assert (and
  (= (as sm@7@01  $FVF<f>) (as sm@8@01  $FVF<f>))
  (=>
    (img@5@01 x@1@01)
    (=
      ($FVF.lookup_f (as sm@10@01  $FVF<f>) x@1@01)
      ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@2@01)) x@1@01)))
  (= (as sm@7@01  $FVF<f>) (as sm@10@01  $FVF<f>))))
; [exec]
; assert (forall y: Ref ::y != x ==> acc(y.f, write))
(declare-const y@14@01 $Ref)
(push) ; 4
; [eval] y != x
(assert (not (= y@14@01 x@1@01)))
(pop) ; 4
(declare-fun inv@15@01 ($Ref) $Ref)
(declare-fun img@16@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
; Check receiver injectivity
(push) ; 4
(assert (not (forall ((y1@14@01 $Ref) (y2@14@01 $Ref)) (!
  (=>
    (and
      (not (= y1@14@01 x@1@01))
      (not (= y2@14@01 x@1@01))
      (= y1@14@01 y2@14@01))
    (= y1@14@01 y2@14@01))
  
  :qid |f-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((y@14@01 $Ref)) (!
  (=>
    (not (= y@14@01 x@1@01))
    (and (= (inv@15@01 y@14@01) y@14@01) (img@16@01 y@14@01)))
  :pattern ((inv@15@01 y@14@01))
  :pattern ((img@16@01 y@14@01))
  :qid |f-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=> (and (img@16@01 r) (not (= (inv@15@01 r) x@1@01))) (= (inv@15@01 r) r))
  :pattern ((inv@15@01 r))
  :qid |f-fctOfInv|)))
; Precomputing data for removing quantified permissions
(define-fun pTaken@17@01 ((r $Ref)) $Perm
  (ite
    (and (not (= (inv@15@01 r) x@1@01)) (img@16@01 r) (= r (inv@15@01 r)))
    ($Perm.min
      (ite (img@5@01 r) (- $Perm.Write (pTaken@9@01 r)) $Perm.No)
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
(assert (not (forall ((r $Ref)) (!
  (=
    (-
      (ite (img@5@01 r) (- $Perm.Write (pTaken@9@01 r)) $Perm.No)
      (pTaken@17@01 r))
    $Perm.No)
  
  :qid |quant-u-21142|))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; Intermediate check if already taken enough permissions
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 500)
(assert (not (forall ((r $Ref)) (!
  (=>
    (and (not (= (inv@15@01 r) x@1@01)) (img@16@01 r) (= r (inv@15@01 r)))
    (= (- $Perm.Write (pTaken@17@01 r)) $Perm.No))
  
  :qid |quant-u-21143|))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; Final check if taken enough permissions
; Done removing quantified permissions
; [exec]
; assert (forall y: Ref ::y != x ==> acc(y.f, write))
(declare-const y@18@01 $Ref)
(set-option :timeout 0)
(push) ; 4
; [eval] y != x
(assert (not (= y@18@01 x@1@01)))
(pop) ; 4
(declare-fun inv@19@01 ($Ref) $Ref)
(declare-fun img@20@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
; Check receiver injectivity
(push) ; 4
(assert (not (forall ((y1@18@01 $Ref) (y2@18@01 $Ref)) (!
  (=>
    (and
      (not (= y1@18@01 x@1@01))
      (not (= y2@18@01 x@1@01))
      (= y1@18@01 y2@18@01))
    (= y1@18@01 y2@18@01))
  
  :qid |f-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((y@18@01 $Ref)) (!
  (=>
    (not (= y@18@01 x@1@01))
    (and (= (inv@19@01 y@18@01) y@18@01) (img@20@01 y@18@01)))
  :pattern ((inv@19@01 y@18@01))
  :pattern ((img@20@01 y@18@01))
  :qid |f-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=> (and (img@20@01 r) (not (= (inv@19@01 r) x@1@01))) (= (inv@19@01 r) r))
  :pattern ((inv@19@01 r))
  :qid |f-fctOfInv|)))
; Precomputing data for removing quantified permissions
(define-fun pTaken@21@01 ((r $Ref)) $Perm
  (ite
    (and (not (= (inv@19@01 r) x@1@01)) (img@20@01 r) (= r (inv@19@01 r)))
    ($Perm.min
      (ite (img@5@01 r) (- $Perm.Write (pTaken@9@01 r)) $Perm.No)
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
(assert (not (forall ((r $Ref)) (!
  (=
    (-
      (ite (img@5@01 r) (- $Perm.Write (pTaken@9@01 r)) $Perm.No)
      (pTaken@21@01 r))
    $Perm.No)
  
  :qid |quant-u-21146|))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; Intermediate check if already taken enough permissions
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 500)
(assert (not (forall ((r $Ref)) (!
  (=>
    (and (not (= (inv@19@01 r) x@1@01)) (img@20@01 r) (= r (inv@19@01 r)))
    (= (- $Perm.Write (pTaken@21@01 r)) $Perm.No))
  
  :qid |quant-u-21147|))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; Final check if taken enough permissions
; Done removing quantified permissions
; [exec]
; assert (forall y: Ref ::true ==> acc(y.f, write))
(declare-const y@22@01 $Ref)
(set-option :timeout 0)
(push) ; 4
(pop) ; 4
(declare-fun inv@23@01 ($Ref) $Ref)
(declare-fun img@24@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
; Check receiver injectivity
; Definitional axioms for inverse functions
(assert (forall ((y@22@01 $Ref)) (!
  (and (= (inv@23@01 y@22@01) y@22@01) (img@24@01 y@22@01))
  :pattern ((inv@23@01 y@22@01))
  :pattern ((img@24@01 y@22@01))
  :qid |f-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=> (img@24@01 r) (= (inv@23@01 r) r))
  :pattern ((inv@23@01 r))
  :qid |f-fctOfInv|)))
; Precomputing data for removing quantified permissions
(define-fun pTaken@25@01 ((r $Ref)) $Perm
  (ite
    (and (img@24@01 r) (= r (inv@23@01 r)))
    ($Perm.min
      (ite (img@5@01 r) (- $Perm.Write (pTaken@9@01 r)) $Perm.No)
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
(assert (not (forall ((r $Ref)) (!
  (=
    (-
      (ite (img@5@01 r) (- $Perm.Write (pTaken@9@01 r)) $Perm.No)
      (pTaken@25@01 r))
    $Perm.No)
  
  :qid |quant-u-21150|))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; Intermediate check if already taken enough permissions
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 500)
(assert (not (forall ((r $Ref)) (!
  (=>
    (and (img@24@01 r) (= r (inv@23@01 r)))
    (= (- $Perm.Write (pTaken@25@01 r)) $Perm.No))
  
  :qid |quant-u-21151|))))
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
    (and (img@24@01 r) (= r (inv@23@01 r)))
    (= (- $Perm.Write (pTaken@25@01 r)) $Perm.No))
  
  :qid |quant-u-21151|))))
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
(declare-const sm@26@01 $FVF<f>)
; Definitional axioms for snapshot map values
(assert (forall ((r $Ref)) (!
  (=>
    (ite (img@5@01 r) (< $Perm.No (- $Perm.Write (pTaken@9@01 r))) false)
    (=
      ($FVF.lookup_f (as sm@26@01  $FVF<f>) r)
      ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@2@01)) r)))
  :pattern (($FVF.lookup_f (as sm@26@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@2@01)) r))
  :qid |qp.fvfValDef1|)))
(declare-const pm@27@01 $FPM)
(assert (forall ((r $Ref)) (!
  (=
    ($FVF.perm_f (as pm@27@01  $FPM) r)
    (ite (img@5@01 r) (- $Perm.Write (pTaken@9@01 r)) $Perm.No))
  :pattern (($FVF.perm_f (as pm@27@01  $FPM) r))
  :qid |qp.resPrmSumDef2|)))
; Assume upper permission bound for field f
(assert (forall ((r $Ref)) (!
  (<= ($FVF.perm_f (as pm@27@01  $FPM) r) $Perm.Write)
  :pattern ((inv@4@01 r))
  :qid |qp-fld-prm-bnd|)))
(declare-const y@28@01 $Ref)
(set-option :timeout 0)
(push) ; 4
(pop) ; 4
(declare-fun inv@29@01 ($Ref) $Ref)
(declare-fun img@30@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
; Check receiver injectivity
; Definitional axioms for inverse functions
(assert (forall ((y@28@01 $Ref)) (!
  (and (= (inv@29@01 y@28@01) y@28@01) (img@30@01 y@28@01))
  :pattern ((inv@29@01 y@28@01))
  :pattern ((img@30@01 y@28@01))
  :qid |f-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=> (img@30@01 r) (= (inv@29@01 r) r))
  :pattern ((inv@29@01 r))
  :qid |f-fctOfInv|)))
; Precomputing data for removing quantified permissions
(define-fun pTaken@31@01 ((r $Ref)) $Perm
  (ite
    (and (img@30@01 r) (= r (inv@29@01 r)))
    ($Perm.min
      (ite (img@5@01 r) (- $Perm.Write (pTaken@9@01 r)) $Perm.No)
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
(assert (not (forall ((r $Ref)) (!
  (=
    (-
      (ite (img@5@01 r) (- $Perm.Write (pTaken@9@01 r)) $Perm.No)
      (pTaken@31@01 r))
    $Perm.No)
  
  :qid |quant-u-21154|))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; Intermediate check if already taken enough permissions
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 500)
(assert (not (forall ((r $Ref)) (!
  (=>
    (and (img@30@01 r) (= r (inv@29@01 r)))
    (= (- $Perm.Write (pTaken@31@01 r)) $Perm.No))
  
  :qid |quant-u-21155|))))
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
    (and (img@30@01 r) (= r (inv@29@01 r)))
    (= (- $Perm.Write (pTaken@31@01 r)) $Perm.No))
  
  :qid |quant-u-21155|))))
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
(declare-const y@32@01 $Ref)
; [exec]
; y := new()
(declare-const y@33@01 $Ref)
(assert (not (= y@33@01 $Ref.null)))
(assert (not (= y@33@01 y@32@01)))
; [exec]
; package true --* true {
;   inhale (forall x: Ref ::true ==> acc(x.f, write))
;   assert (forall x: Ref ::true ==> acc(x.f, write))
;   exhale acc(y.f, write)
;   assert (forall x: Ref ::x != y ==> acc(x.f, write))
;   assert (forall x: Ref ::x != y ==> acc(x.f, write))
;   assert (forall x: Ref ::true ==> acc(x.f, write))
; }
(push) ; 3
(declare-const $t@34@01 $Snap)
(assert (= $t@34@01 $Snap.unit))
; [exec]
; inhale (forall x: Ref ::true ==> acc(x.f, write))
(declare-const x@35@01 $Ref)
(push) ; 4
(pop) ; 4
(declare-const $t@36@01 $FVF<f>)
(declare-fun inv@37@01 ($Ref) $Ref)
(declare-fun img@38@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
; Check receiver injectivity
; Definitional axioms for inverse functions
(assert (forall ((x@35@01 $Ref)) (!
  (and (= (inv@37@01 x@35@01) x@35@01) (img@38@01 x@35@01))
  :pattern ((inv@37@01 x@35@01))
  :pattern ((img@38@01 x@35@01))
  :qid |quant-u-21157|)))
(assert (forall ((r $Ref)) (!
  (=> (img@38@01 r) (= (inv@37@01 r) r))
  :pattern ((inv@37@01 r))
  :qid |f-fctOfInv|)))
; Permissions are non-negative
; Field permissions are at most one
; Permission implies non-null receiver
(assert (forall ((x@35@01 $Ref)) (!
  (not (= x@35@01 $Ref.null))
  :pattern ((inv@37@01 x@35@01))
  :pattern ((img@38@01 x@35@01))
  :qid |f-permImpliesNonNull|)))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; assert (forall x: Ref ::true ==> acc(x.f, write))
(declare-const x@39@01 $Ref)
(set-option :timeout 0)
(push) ; 4
(pop) ; 4
(declare-fun inv@40@01 ($Ref) $Ref)
(declare-fun img@41@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
; Check receiver injectivity
; Definitional axioms for inverse functions
(assert (forall ((x@39@01 $Ref)) (!
  (and (= (inv@40@01 x@39@01) x@39@01) (img@41@01 x@39@01))
  :pattern ((inv@40@01 x@39@01))
  :pattern ((img@41@01 x@39@01))
  :qid |f-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=> (img@41@01 r) (= (inv@40@01 r) r))
  :pattern ((inv@40@01 r))
  :qid |f-fctOfInv|)))
(push) ; 4
(set-option :timeout 10)
(assert (not (forall ((r $Ref)) (!
  false
  
  :qid |quant-u-21159|))))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; Precomputing data for removing quantified permissions
(define-fun pTaken@42@01 ((r $Ref)) $Perm
  (ite
    (and (img@41@01 r) (= r (inv@40@01 r)))
    ($Perm.min (ite (img@38@01 r) $Perm.Write $Perm.No) $Perm.Write)
    $Perm.No))
; Done precomputing, updating quantified chunks
; State saturation: before repetition
(check-sat)
; unknown
; Chunk depleted?
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 500)
(assert (not (forall ((r $Ref)) (!
  (= (- (ite (img@38@01 r) $Perm.Write $Perm.No) (pTaken@42@01 r)) $Perm.No)
  
  :qid |quant-u-21161|))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; Intermediate check if already taken enough permissions
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 500)
(assert (not (forall ((r $Ref)) (!
  (=>
    (and (img@41@01 r) (= r (inv@40@01 r)))
    (= (- $Perm.Write (pTaken@42@01 r)) $Perm.No))
  
  :qid |quant-u-21162|))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; Final check if taken enough permissions
; Done removing quantified permissions
(declare-const sm@43@01 $FVF<f>)
; Definitional axioms for snapshot map values
(assert (forall ((r $Ref)) (!
  (=>
    (img@38@01 r)
    (= ($FVF.lookup_f (as sm@43@01  $FVF<f>) r) ($FVF.lookup_f $t@36@01 r)))
  :pattern (($FVF.lookup_f (as sm@43@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f $t@36@01 r))
  :qid |qp.fvfValDef3|)))
(declare-fun inv@44@01 ($Ref) $Ref)
(declare-fun img@45@01 ($Ref) Bool)
(assert (forall ((r $Ref)) (!
  (=> (img@45@01 r) (= (inv@44@01 r) r))
  :pattern ((inv@44@01 r))
  :qid |f-fctOfInv|)))
(assert (forall ((x@39@01 $Ref)) (!
  (and (= (inv@44@01 x@39@01) x@39@01) (img@45@01 x@39@01))
  :pattern ((inv@44@01 x@39@01))
  :pattern ((img@45@01 x@39@01))
  :qid |f-invOfFct|)))
(set-option :timeout 10)
(check-sat)
; unknown
; [exec]
; exhale acc(y.f, write)
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
(define-fun pTaken@46@01 ((r $Ref)) $Perm
  (ite
    (= r y@33@01)
    ($Perm.min (ite (img@45@01 r) $Perm.Write $Perm.No) $Perm.Write)
    $Perm.No))
; Done precomputing, updating quantified chunks
; State saturation: before repetition
(check-sat)
; unknown
; Chunk depleted?
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 500)
(assert (not (forall ((r $Ref)) (!
  (= (- (ite (img@45@01 r) $Perm.Write $Perm.No) (pTaken@46@01 r)) $Perm.No)
  
  :qid |quant-u-21164|))))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not (forall ((r $Ref)) (!
  (= (pTaken@46@01 r) $Perm.No)
  
  :qid |quant-u-21165|))))
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
  (=> (= r y@33@01) (= (- $Perm.Write (pTaken@46@01 r)) $Perm.No))
  
  :qid |quant-u-21166|))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; Final check if taken enough permissions
; Done removing quantified permissions
(declare-const sm@47@01 $FVF<f>)
; Definitional axioms for snapshot map values (instantiated)
(assert (=>
  (img@45@01 y@33@01)
  (=
    ($FVF.lookup_f (as sm@47@01  $FVF<f>) y@33@01)
    ($FVF.lookup_f (as sm@43@01  $FVF<f>) y@33@01))))
(set-option :timeout 10)
(check-sat)
; unknown
; [exec]
; assert (forall x: Ref ::x != y ==> acc(x.f, write))
(declare-const x@48@01 $Ref)
(set-option :timeout 0)
(push) ; 4
; [eval] x != y
(assert (not (= x@48@01 y@33@01)))
(pop) ; 4
(declare-fun inv@49@01 ($Ref) $Ref)
(declare-fun img@50@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
; Check receiver injectivity
(push) ; 4
(assert (not (forall ((x1@48@01 $Ref) (x2@48@01 $Ref)) (!
  (=>
    (and
      (not (= x1@48@01 y@33@01))
      (not (= x2@48@01 y@33@01))
      (= x1@48@01 x2@48@01))
    (= x1@48@01 x2@48@01))
  
  :qid |f-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((x@48@01 $Ref)) (!
  (=>
    (not (= x@48@01 y@33@01))
    (and (= (inv@49@01 x@48@01) x@48@01) (img@50@01 x@48@01)))
  :pattern ((inv@49@01 x@48@01))
  :pattern ((img@50@01 x@48@01))
  :qid |f-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=> (and (img@50@01 r) (not (= (inv@49@01 r) y@33@01))) (= (inv@49@01 r) r))
  :pattern ((inv@49@01 r))
  :qid |f-fctOfInv|)))
(push) ; 4
(set-option :timeout 10)
(assert (not (forall ((r $Ref)) (!
  false
  
  :qid |quant-u-21168|))))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; Precomputing data for removing quantified permissions
(define-fun pTaken@51@01 ((r $Ref)) $Perm
  (ite
    (and (not (= (inv@49@01 r) y@33@01)) (img@50@01 r) (= r (inv@49@01 r)))
    ($Perm.min
      (ite (img@45@01 r) (- $Perm.Write (pTaken@46@01 r)) $Perm.No)
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
(assert (not (forall ((r $Ref)) (!
  (=
    (-
      (ite (img@45@01 r) (- $Perm.Write (pTaken@46@01 r)) $Perm.No)
      (pTaken@51@01 r))
    $Perm.No)
  
  :qid |quant-u-21170|))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; Intermediate check if already taken enough permissions
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 500)
(assert (not (forall ((r $Ref)) (!
  (=>
    (and (not (= (inv@49@01 r) y@33@01)) (img@50@01 r) (= r (inv@49@01 r)))
    (= (- $Perm.Write (pTaken@51@01 r)) $Perm.No))
  
  :qid |quant-u-21171|))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; Final check if taken enough permissions
; Done removing quantified permissions
(declare-const sm@52@01 $FVF<f>)
; Definitional axioms for snapshot map values
(assert (forall ((r $Ref)) (!
  (=>
    (ite (img@45@01 r) (< $Perm.No (- $Perm.Write (pTaken@46@01 r))) false)
    (=
      ($FVF.lookup_f (as sm@52@01  $FVF<f>) r)
      ($FVF.lookup_f (as sm@43@01  $FVF<f>) r)))
  :pattern (($FVF.lookup_f (as sm@52@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f (as sm@43@01  $FVF<f>) r))
  :qid |qp.fvfValDef5|)))
(declare-fun inv@53@01 ($Ref) $Ref)
(declare-fun img@54@01 ($Ref) Bool)
(assert (forall ((r $Ref)) (!
  (=> (and (img@54@01 r) (not (= (inv@49@01 r) y@33@01))) (= (inv@53@01 r) r))
  :pattern ((inv@53@01 r))
  :qid |f-fctOfInv|)))
(assert (forall ((x@48@01 $Ref)) (!
  (=>
    (not (= (inv@49@01 x@48@01) y@33@01))
    (and (= (inv@53@01 x@48@01) x@48@01) (img@54@01 x@48@01)))
  :pattern ((inv@53@01 x@48@01))
  :pattern ((img@54@01 x@48@01))
  :qid |f-invOfFct|)))
(set-option :timeout 10)
(check-sat)
; unknown
; [exec]
; assert (forall x: Ref ::x != y ==> acc(x.f, write))
(declare-const x@55@01 $Ref)
(set-option :timeout 0)
(push) ; 4
; [eval] x != y
(assert (not (= x@55@01 y@33@01)))
(pop) ; 4
(declare-fun inv@56@01 ($Ref) $Ref)
(declare-fun img@57@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
; Check receiver injectivity
(push) ; 4
(assert (not (forall ((x1@55@01 $Ref) (x2@55@01 $Ref)) (!
  (=>
    (and
      (not (= x1@55@01 y@33@01))
      (not (= x2@55@01 y@33@01))
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
    (not (= x@55@01 y@33@01))
    (and (= (inv@56@01 x@55@01) x@55@01) (img@57@01 x@55@01)))
  :pattern ((inv@56@01 x@55@01))
  :pattern ((img@57@01 x@55@01))
  :qid |f-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=> (and (img@57@01 r) (not (= (inv@56@01 r) y@33@01))) (= (inv@56@01 r) r))
  :pattern ((inv@56@01 r))
  :qid |f-fctOfInv|)))
(push) ; 4
(set-option :timeout 10)
(assert (not (forall ((r $Ref)) (!
  false
  
  :qid |quant-u-21173|))))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; Precomputing data for removing quantified permissions
(define-fun pTaken@58@01 ((r $Ref)) $Perm
  (ite
    (and (not (= (inv@56@01 r) y@33@01)) (img@57@01 r) (= r (inv@56@01 r)))
    ($Perm.min
      (ite
        (and (img@54@01 r) (not (= (inv@49@01 r) y@33@01)))
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
(assert (not (forall ((r $Ref)) (!
  (=
    (-
      (ite
        (and (img@54@01 r) (not (= (inv@49@01 r) y@33@01)))
        $Perm.Write
        $Perm.No)
      (pTaken@58@01 r))
    $Perm.No)
  
  :qid |quant-u-21175|))))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not (forall ((r $Ref)) (!
  (= (pTaken@58@01 r) $Perm.No)
  
  :qid |quant-u-21176|))))
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
    (and (not (= (inv@56@01 r) y@33@01)) (img@57@01 r) (= r (inv@56@01 r)))
    (= (- $Perm.Write (pTaken@58@01 r)) $Perm.No))
  
  :qid |quant-u-21177|))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; Final check if taken enough permissions
; Done removing quantified permissions
(declare-const sm@59@01 $FVF<f>)
; Definitional axioms for snapshot map values
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@54@01 r) (not (= (inv@49@01 r) y@33@01)))
    (=
      ($FVF.lookup_f (as sm@59@01  $FVF<f>) r)
      ($FVF.lookup_f (as sm@52@01  $FVF<f>) r)))
  :pattern (($FVF.lookup_f (as sm@59@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f (as sm@52@01  $FVF<f>) r))
  :qid |qp.fvfValDef6|)))
(declare-fun inv@60@01 ($Ref) $Ref)
(declare-fun img@61@01 ($Ref) Bool)
(assert (forall ((r $Ref)) (!
  (=> (and (img@61@01 r) (not (= (inv@56@01 r) y@33@01))) (= (inv@60@01 r) r))
  :pattern ((inv@60@01 r))
  :qid |f-fctOfInv|)))
(assert (forall ((x@55@01 $Ref)) (!
  (=>
    (not (= (inv@56@01 x@55@01) y@33@01))
    (and (= (inv@60@01 x@55@01) x@55@01) (img@61@01 x@55@01)))
  :pattern ((inv@60@01 x@55@01))
  :pattern ((img@61@01 x@55@01))
  :qid |f-invOfFct|)))
(set-option :timeout 10)
(check-sat)
; unknown
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not (forall ((r $Ref)) (!
  (and
    (= x@55@01 x@48@01)
    (=
      (and (img@61@01 r) (not (= (inv@56@01 r) y@33@01)))
      (and (img@54@01 r) (not (= (inv@49@01 r) y@33@01)))))
  
  :qid |quant-u-21178|))))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; [exec]
; assert (forall x: Ref ::true ==> acc(x.f, write))
(declare-const x@62@01 $Ref)
(set-option :timeout 0)
(push) ; 4
(pop) ; 4
(declare-fun inv@63@01 ($Ref) $Ref)
(declare-fun img@64@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
; Check receiver injectivity
; Definitional axioms for inverse functions
(assert (forall ((x@62@01 $Ref)) (!
  (and (= (inv@63@01 x@62@01) x@62@01) (img@64@01 x@62@01))
  :pattern ((inv@63@01 x@62@01))
  :pattern ((img@64@01 x@62@01))
  :qid |f-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=> (img@64@01 r) (= (inv@63@01 r) r))
  :pattern ((inv@63@01 r))
  :qid |f-fctOfInv|)))
(push) ; 4
(set-option :timeout 10)
(assert (not (forall ((r $Ref)) (!
  false
  
  :qid |quant-u-21180|))))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; Precomputing data for removing quantified permissions
(define-fun pTaken@65@01 ((r $Ref)) $Perm
  (ite
    (and (img@64@01 r) (= r (inv@63@01 r)))
    ($Perm.min
      (ite
        (and (img@54@01 r) (not (= (inv@49@01 r) y@33@01)))
        (- $Perm.Write (pTaken@58@01 r))
        $Perm.No)
      $Perm.Write)
    $Perm.No))
(define-fun pTaken@66@01 ((r $Ref)) $Perm
  (ite
    (and (img@64@01 r) (= r (inv@63@01 r)))
    ($Perm.min
      (ite
        (and (img@61@01 r) (not (= (inv@56@01 r) y@33@01)))
        $Perm.Write
        $Perm.No)
      (- $Perm.Write (pTaken@65@01 r)))
    $Perm.No))
; Done precomputing, updating quantified chunks
; State saturation: before repetition
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
        (and (img@54@01 r) (not (= (inv@49@01 r) y@33@01)))
        (- $Perm.Write (pTaken@58@01 r))
        $Perm.No)
      (pTaken@65@01 r))
    $Perm.No)
  
  :qid |quant-u-21182|))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; Intermediate check if already taken enough permissions
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 500)
(assert (not (forall ((r $Ref)) (!
  (=>
    (and (img@64@01 r) (= r (inv@63@01 r)))
    (= (- $Perm.Write (pTaken@65@01 r)) $Perm.No))
  
  :qid |quant-u-21183|))))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; Chunk depleted?
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 500)
(assert (not (forall ((r $Ref)) (!
  (=
    (-
      (ite
        (and (img@61@01 r) (not (= (inv@56@01 r) y@33@01)))
        $Perm.Write
        $Perm.No)
      (pTaken@66@01 r))
    $Perm.No)
  
  :qid |quant-u-21184|))))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not (forall ((r $Ref)) (!
  (= (pTaken@66@01 r) $Perm.No)
  
  :qid |quant-u-21185|))))
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
    (and (img@64@01 r) (= r (inv@63@01 r)))
    (= (- (- $Perm.Write (pTaken@65@01 r)) (pTaken@66@01 r)) $Perm.No))
  
  :qid |quant-u-21186|))))
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
    (and (img@64@01 r) (= r (inv@63@01 r)))
    (= (- (- $Perm.Write (pTaken@65@01 r)) (pTaken@66@01 r)) $Perm.No))
  
  :qid |quant-u-21186|))))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; Done removing quantified permissions
(declare-const sm@67@01 $FVF<f>)
; Definitional axioms for snapshot map values
(assert (forall ((r $Ref)) (!
  (=>
    (ite
      (and (img@54@01 r) (not (= (inv@49@01 r) y@33@01)))
      (< $Perm.No (- $Perm.Write (pTaken@58@01 r)))
      false)
    (=
      ($FVF.lookup_f (as sm@67@01  $FVF<f>) r)
      ($FVF.lookup_f (as sm@52@01  $FVF<f>) r)))
  :pattern (($FVF.lookup_f (as sm@67@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f (as sm@52@01  $FVF<f>) r))
  :qid |qp.fvfValDef7|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@61@01 r) (not (= (inv@56@01 r) y@33@01)))
    (=
      ($FVF.lookup_f (as sm@67@01  $FVF<f>) r)
      ($FVF.lookup_f (as sm@59@01  $FVF<f>) r)))
  :pattern (($FVF.lookup_f (as sm@67@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f (as sm@59@01  $FVF<f>) r))
  :qid |qp.fvfValDef8|)))
(declare-fun inv@68@01 ($Ref) $Ref)
(declare-fun img@69@01 ($Ref) Bool)
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@69@01 r)
      (<
        $Perm.No
        (- $Perm.Write (- (- $Perm.Write (pTaken@65@01 r)) (pTaken@66@01 r)))))
    (= (inv@68@01 r) r))
  :pattern ((inv@68@01 r))
  :qid |f-fctOfInv|)))
(assert (forall ((x@62@01 $Ref)) (!
  (=>
    (<
      $Perm.No
      (-
        $Perm.Write
        (- (- $Perm.Write (pTaken@65@01 x@62@01)) (pTaken@66@01 x@62@01))))
    (and (= (inv@68@01 x@62@01) x@62@01) (img@69@01 x@62@01)))
  :pattern ((inv@68@01 x@62@01))
  :pattern ((img@69@01 x@62@01))
  :qid |f-invOfFct|)))
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
(assert (not (forall ((r $Ref)) (!
  (=>
    (and (img@64@01 r) (= r (inv@63@01 r)))
    (= (- (- $Perm.Write (pTaken@65@01 r)) (pTaken@66@01 r)) $Perm.No))
  
  :qid |quant-u-21187|))))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; Done removing quantified permissions
(declare-const sm@70@01 $FVF<f>)
; Definitional axioms for snapshot map values
(declare-fun inv@71@01 ($Ref) $Ref)
(declare-fun img@72@01 ($Ref) Bool)
(assert (= (as sm@67@01  $FVF<f>) (as sm@70@01  $FVF<f>)))
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
(assert (not (forall ((r $Ref)) (!
  (=>
    (and (img@64@01 r) (= r (inv@63@01 r)))
    (= (- (- $Perm.Write (pTaken@65@01 r)) (pTaken@66@01 r)) $Perm.No))
  
  :qid |quant-u-21188|))))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; Done removing quantified permissions
(declare-const sm@73@01 $FVF<f>)
; Definitional axioms for snapshot map values
(declare-fun inv@74@01 ($Ref) $Ref)
(declare-fun img@75@01 ($Ref) Bool)
(assert (= (as sm@67@01  $FVF<f>) (as sm@73@01  $FVF<f>)))
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
(assert (not (forall ((r $Ref)) (!
  (and
    (= x@48@01 x@55@01)
    (=
      (and (img@54@01 r) (not (= (inv@49@01 r) y@33@01)))
      (and (img@61@01 r) (not (= (inv@56@01 r) y@33@01)))))
  
  :qid |quant-u-21189|))))
(check-sat)
; unknown
(pop) ; 4
; 0.01s
; (get-info :all-statistics)
(declare-const sm@76@01 $FVF<f>)
; Definitional axioms for snapshot map values
(assert (forall ((r $Ref)) (!
  (=>
    (ite
      (and (img@54@01 r) (not (= (inv@49@01 r) y@33@01)))
      (< $Perm.No (- $Perm.Write (pTaken@58@01 r)))
      false)
    (=
      ($FVF.lookup_f (as sm@76@01  $FVF<f>) r)
      ($FVF.lookup_f (as sm@52@01  $FVF<f>) r)))
  :pattern (($FVF.lookup_f (as sm@76@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f (as sm@52@01  $FVF<f>) r))
  :qid |qp.fvfValDef9|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@61@01 r) (not (= (inv@56@01 r) y@33@01)))
    (=
      ($FVF.lookup_f (as sm@76@01  $FVF<f>) r)
      ($FVF.lookup_f (as sm@59@01  $FVF<f>) r)))
  :pattern (($FVF.lookup_f (as sm@76@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f (as sm@59@01  $FVF<f>) r))
  :qid |qp.fvfValDef10|)))
(declare-const pm@77@01 $FPM)
(assert (forall ((r $Ref)) (!
  (=
    ($FVF.perm_f (as pm@77@01  $FPM) r)
    (+
      (ite
        (and (img@54@01 r) (not (= (inv@49@01 r) y@33@01)))
        (- $Perm.Write (pTaken@58@01 r))
        $Perm.No)
      (ite
        (and (img@61@01 r) (not (= (inv@56@01 r) y@33@01)))
        $Perm.Write
        $Perm.No)))
  :pattern (($FVF.perm_f (as pm@77@01  $FPM) r))
  :qid |qp.resPrmSumDef11|)))
; Assume upper permission bound for field f
(assert (forall ((r $Ref)) (!
  (<= ($FVF.perm_f (as pm@77@01  $FPM) r) $Perm.Write)
  :pattern ((inv@53@01 r))
  :qid |qp-fld-prm-bnd|)))
; Assume upper permission bound for field f
(assert (forall ((r $Ref)) (!
  (<= ($FVF.perm_f (as pm@77@01  $FPM) r) $Perm.Write)
  :pattern ((inv@60@01 r))
  :qid |qp-fld-prm-bnd|)))
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not (forall ((r $Ref)) (!
  false
  
  :qid |quant-u-21190|))))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; Precomputing data for removing quantified permissions
(define-fun pTaken@78@01 ((r $Ref)) $Perm
  (ite
    (and (img@64@01 r) (= r (inv@63@01 r)))
    ($Perm.min
      (ite
        (and (img@61@01 r) (not (= (inv@56@01 r) y@33@01)))
        $Perm.Write
        $Perm.No)
      $Perm.Write)
    $Perm.No))
(define-fun pTaken@79@01 ((r $Ref)) $Perm
  (ite
    (and (img@64@01 r) (= r (inv@63@01 r)))
    ($Perm.min
      (ite
        (and (img@54@01 r) (not (= (inv@49@01 r) y@33@01)))
        (- $Perm.Write (pTaken@58@01 r))
        $Perm.No)
      (- $Perm.Write (pTaken@78@01 r)))
    $Perm.No))
; Done precomputing, updating quantified chunks
; State saturation: before repetition
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
        (and (img@61@01 r) (not (= (inv@56@01 r) y@33@01)))
        $Perm.Write
        $Perm.No)
      (pTaken@78@01 r))
    $Perm.No)
  
  :qid |quant-u-21192|))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; Intermediate check if already taken enough permissions
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 500)
(assert (not (forall ((r $Ref)) (!
  (=>
    (and (img@64@01 r) (= r (inv@63@01 r)))
    (= (- $Perm.Write (pTaken@78@01 r)) $Perm.No))
  
  :qid |quant-u-21193|))))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; Chunk depleted?
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 500)
(assert (not (forall ((r $Ref)) (!
  (=
    (-
      (ite
        (and (img@54@01 r) (not (= (inv@49@01 r) y@33@01)))
        (- $Perm.Write (pTaken@58@01 r))
        $Perm.No)
      (pTaken@79@01 r))
    $Perm.No)
  
  :qid |quant-u-21194|))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; Intermediate check if already taken enough permissions
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 500)
(assert (not (forall ((r $Ref)) (!
  (=>
    (and (img@64@01 r) (= r (inv@63@01 r)))
    (= (- (- $Perm.Write (pTaken@78@01 r)) (pTaken@79@01 r)) $Perm.No))
  
  :qid |quant-u-21195|))))
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
    (and (img@64@01 r) (= r (inv@63@01 r)))
    (= (- (- $Perm.Write (pTaken@78@01 r)) (pTaken@79@01 r)) $Perm.No))
  
  :qid |quant-u-21195|))))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; Done removing quantified permissions
(declare-const sm@80@01 $FVF<f>)
; Definitional axioms for snapshot map values
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@61@01 r) (not (= (inv@56@01 r) y@33@01)))
    (=
      ($FVF.lookup_f (as sm@80@01  $FVF<f>) r)
      ($FVF.lookup_f (as sm@59@01  $FVF<f>) r)))
  :pattern (($FVF.lookup_f (as sm@80@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f (as sm@59@01  $FVF<f>) r))
  :qid |qp.fvfValDef12|)))
(assert (forall ((r $Ref)) (!
  (=>
    (ite
      (and (img@54@01 r) (not (= (inv@49@01 r) y@33@01)))
      (< $Perm.No (- $Perm.Write (pTaken@58@01 r)))
      false)
    (=
      ($FVF.lookup_f (as sm@80@01  $FVF<f>) r)
      ($FVF.lookup_f (as sm@52@01  $FVF<f>) r)))
  :pattern (($FVF.lookup_f (as sm@80@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f (as sm@52@01  $FVF<f>) r))
  :qid |qp.fvfValDef13|)))
(declare-fun inv@81@01 ($Ref) $Ref)
(declare-fun img@82@01 ($Ref) Bool)
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@82@01 r)
      (<
        $Perm.No
        (- $Perm.Write (- (- $Perm.Write (pTaken@78@01 r)) (pTaken@79@01 r)))))
    (= (inv@81@01 r) r))
  :pattern ((inv@81@01 r))
  :qid |f-fctOfInv|)))
(assert (forall ((x@62@01 $Ref)) (!
  (=>
    (<
      $Perm.No
      (-
        $Perm.Write
        (- (- $Perm.Write (pTaken@78@01 x@62@01)) (pTaken@79@01 x@62@01))))
    (and (= (inv@81@01 x@62@01) x@62@01) (img@82@01 x@62@01)))
  :pattern ((inv@81@01 x@62@01))
  :pattern ((img@82@01 x@62@01))
  :qid |f-invOfFct|)))
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
(assert (not (forall ((r $Ref)) (!
  (=>
    (and (img@64@01 r) (= r (inv@63@01 r)))
    (= (- (- $Perm.Write (pTaken@78@01 r)) (pTaken@79@01 r)) $Perm.No))
  
  :qid |quant-u-21196|))))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; Done removing quantified permissions
(declare-const sm@83@01 $FVF<f>)
; Definitional axioms for snapshot map values
(declare-fun inv@84@01 ($Ref) $Ref)
(declare-fun img@85@01 ($Ref) Bool)
(assert (= (as sm@80@01  $FVF<f>) (as sm@83@01  $FVF<f>)))
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
(assert (not (forall ((r $Ref)) (!
  (=>
    (and (img@64@01 r) (= r (inv@63@01 r)))
    (= (- (- $Perm.Write (pTaken@78@01 r)) (pTaken@79@01 r)) $Perm.No))
  
  :qid |quant-u-21197|))))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; Done removing quantified permissions
(declare-const sm@86@01 $FVF<f>)
; Definitional axioms for snapshot map values
(declare-fun inv@87@01 ($Ref) $Ref)
(declare-fun img@88@01 ($Ref) Bool)
(assert (= (as sm@80@01  $FVF<f>) (as sm@86@01  $FVF<f>)))
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
(assert (not (forall ((r $Ref)) (!
  (and
    (= x@48@01 x@55@01)
    (=
      (and (img@54@01 r) (not (= (inv@49@01 r) y@33@01)))
      (and (img@61@01 r) (not (= (inv@56@01 r) y@33@01)))))
  
  :qid |quant-u-21198|))))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(declare-const sm@89@01 $FVF<f>)
; Definitional axioms for snapshot map values
(assert (forall ((r $Ref)) (!
  (=>
    (ite
      (and (img@54@01 r) (not (= (inv@49@01 r) y@33@01)))
      (< $Perm.No (- $Perm.Write (pTaken@58@01 r)))
      false)
    (=
      ($FVF.lookup_f (as sm@89@01  $FVF<f>) r)
      ($FVF.lookup_f (as sm@52@01  $FVF<f>) r)))
  :pattern (($FVF.lookup_f (as sm@89@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f (as sm@52@01  $FVF<f>) r))
  :qid |qp.fvfValDef14|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@61@01 r) (not (= (inv@56@01 r) y@33@01)))
    (=
      ($FVF.lookup_f (as sm@89@01  $FVF<f>) r)
      ($FVF.lookup_f (as sm@59@01  $FVF<f>) r)))
  :pattern (($FVF.lookup_f (as sm@89@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f (as sm@59@01  $FVF<f>) r))
  :qid |qp.fvfValDef15|)))
(declare-const pm@90@01 $FPM)
(assert (forall ((r $Ref)) (!
  (=
    ($FVF.perm_f (as pm@90@01  $FPM) r)
    (+
      (ite
        (and (img@54@01 r) (not (= (inv@49@01 r) y@33@01)))
        (- $Perm.Write (pTaken@58@01 r))
        $Perm.No)
      (ite
        (and (img@61@01 r) (not (= (inv@56@01 r) y@33@01)))
        $Perm.Write
        $Perm.No)))
  :pattern (($FVF.perm_f (as pm@90@01  $FPM) r))
  :qid |qp.resPrmSumDef16|)))
; Assume upper permission bound for field f
(assert (forall ((r $Ref)) (!
  (<= ($FVF.perm_f (as pm@90@01  $FPM) r) $Perm.Write)
  :pattern ((inv@53@01 r))
  :qid |qp-fld-prm-bnd|)))
; Assume upper permission bound for field f
(assert (forall ((r $Ref)) (!
  (<= ($FVF.perm_f (as pm@90@01  $FPM) r) $Perm.Write)
  :pattern ((inv@60@01 r))
  :qid |qp-fld-prm-bnd|)))
(declare-const x@91@01 $Ref)
(set-option :timeout 0)
(push) ; 4
(pop) ; 4
(declare-fun inv@92@01 ($Ref) $Ref)
(declare-fun img@93@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
; Check receiver injectivity
; Definitional axioms for inverse functions
(assert (forall ((x@91@01 $Ref)) (!
  (and (= (inv@92@01 x@91@01) x@91@01) (img@93@01 x@91@01))
  :pattern ((inv@92@01 x@91@01))
  :pattern ((img@93@01 x@91@01))
  :qid |f-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=> (img@93@01 r) (= (inv@92@01 r) r))
  :pattern ((inv@92@01 r))
  :qid |f-fctOfInv|)))
(push) ; 4
(set-option :timeout 10)
(assert (not (forall ((r $Ref)) (!
  false
  
  :qid |quant-u-21200|))))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; Precomputing data for removing quantified permissions
(define-fun pTaken@94@01 ((r $Ref)) $Perm
  (ite
    (and (img@93@01 r) (= r (inv@92@01 r)))
    ($Perm.min
      (ite
        (and (img@61@01 r) (not (= (inv@56@01 r) y@33@01)))
        $Perm.Write
        $Perm.No)
      $Perm.Write)
    $Perm.No))
(define-fun pTaken@95@01 ((r $Ref)) $Perm
  (ite
    (and (img@93@01 r) (= r (inv@92@01 r)))
    ($Perm.min
      (ite
        (and (img@54@01 r) (not (= (inv@49@01 r) y@33@01)))
        (- $Perm.Write (pTaken@58@01 r))
        $Perm.No)
      (- $Perm.Write (pTaken@94@01 r)))
    $Perm.No))
; Done precomputing, updating quantified chunks
; State saturation: before repetition
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
        (and (img@61@01 r) (not (= (inv@56@01 r) y@33@01)))
        $Perm.Write
        $Perm.No)
      (pTaken@94@01 r))
    $Perm.No)
  
  :qid |quant-u-21202|))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; Intermediate check if already taken enough permissions
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 500)
(assert (not (forall ((r $Ref)) (!
  (=>
    (and (img@93@01 r) (= r (inv@92@01 r)))
    (= (- $Perm.Write (pTaken@94@01 r)) $Perm.No))
  
  :qid |quant-u-21203|))))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; Chunk depleted?
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 500)
(assert (not (forall ((r $Ref)) (!
  (=
    (-
      (ite
        (and (img@54@01 r) (not (= (inv@49@01 r) y@33@01)))
        (- $Perm.Write (pTaken@58@01 r))
        $Perm.No)
      (pTaken@95@01 r))
    $Perm.No)
  
  :qid |quant-u-21204|))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; Intermediate check if already taken enough permissions
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 500)
(assert (not (forall ((r $Ref)) (!
  (=>
    (and (img@93@01 r) (= r (inv@92@01 r)))
    (= (- (- $Perm.Write (pTaken@94@01 r)) (pTaken@95@01 r)) $Perm.No))
  
  :qid |quant-u-21205|))))
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
    (and (img@93@01 r) (= r (inv@92@01 r)))
    (= (- (- $Perm.Write (pTaken@94@01 r)) (pTaken@95@01 r)) $Perm.No))
  
  :qid |quant-u-21205|))))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; Done removing quantified permissions
(declare-const sm@96@01 $FVF<f>)
; Definitional axioms for snapshot map values
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@61@01 r) (not (= (inv@56@01 r) y@33@01)))
    (=
      ($FVF.lookup_f (as sm@96@01  $FVF<f>) r)
      ($FVF.lookup_f (as sm@59@01  $FVF<f>) r)))
  :pattern (($FVF.lookup_f (as sm@96@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f (as sm@59@01  $FVF<f>) r))
  :qid |qp.fvfValDef17|)))
(assert (forall ((r $Ref)) (!
  (=>
    (ite
      (and (img@54@01 r) (not (= (inv@49@01 r) y@33@01)))
      (< $Perm.No (- $Perm.Write (pTaken@58@01 r)))
      false)
    (=
      ($FVF.lookup_f (as sm@96@01  $FVF<f>) r)
      ($FVF.lookup_f (as sm@52@01  $FVF<f>) r)))
  :pattern (($FVF.lookup_f (as sm@96@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f (as sm@52@01  $FVF<f>) r))
  :qid |qp.fvfValDef18|)))
(declare-fun inv@97@01 ($Ref) $Ref)
(declare-fun img@98@01 ($Ref) Bool)
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@98@01 r)
      (<
        $Perm.No
        (- $Perm.Write (- (- $Perm.Write (pTaken@94@01 r)) (pTaken@95@01 r)))))
    (= (inv@97@01 r) r))
  :pattern ((inv@97@01 r))
  :qid |f-fctOfInv|)))
(assert (forall ((x@91@01 $Ref)) (!
  (=>
    (<
      $Perm.No
      (-
        $Perm.Write
        (- (- $Perm.Write (pTaken@94@01 x@91@01)) (pTaken@95@01 x@91@01))))
    (and (= (inv@97@01 x@91@01) x@91@01) (img@98@01 x@91@01)))
  :pattern ((inv@97@01 x@91@01))
  :pattern ((img@98@01 x@91@01))
  :qid |f-invOfFct|)))
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
(assert (not (forall ((r $Ref)) (!
  (=>
    (and (img@93@01 r) (= r (inv@92@01 r)))
    (= (- (- $Perm.Write (pTaken@94@01 r)) (pTaken@95@01 r)) $Perm.No))
  
  :qid |quant-u-21206|))))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; Done removing quantified permissions
(declare-const sm@99@01 $FVF<f>)
; Definitional axioms for snapshot map values
(declare-fun inv@100@01 ($Ref) $Ref)
(declare-fun img@101@01 ($Ref) Bool)
(assert (= (as sm@96@01  $FVF<f>) (as sm@99@01  $FVF<f>)))
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
(assert (not (forall ((r $Ref)) (!
  (=>
    (and (img@93@01 r) (= r (inv@92@01 r)))
    (= (- (- $Perm.Write (pTaken@94@01 r)) (pTaken@95@01 r)) $Perm.No))
  
  :qid |quant-u-21207|))))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; Done removing quantified permissions
(declare-const sm@102@01 $FVF<f>)
; Definitional axioms for snapshot map values
(declare-fun inv@103@01 ($Ref) $Ref)
(declare-fun img@104@01 ($Ref) Bool)
(assert (= (as sm@96@01  $FVF<f>) (as sm@102@01  $FVF<f>)))
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
(assert (not (forall ((r $Ref)) (!
  (and
    (= x@55@01 x@48@01)
    (=
      (and (img@61@01 r) (not (= (inv@56@01 r) y@33@01)))
      (and (img@54@01 r) (not (= (inv@49@01 r) y@33@01)))))
  
  :qid |quant-u-21208|))))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(declare-const sm@105@01 $FVF<f>)
; Definitional axioms for snapshot map values
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@61@01 r) (not (= (inv@56@01 r) y@33@01)))
    (=
      ($FVF.lookup_f (as sm@105@01  $FVF<f>) r)
      ($FVF.lookup_f (as sm@59@01  $FVF<f>) r)))
  :pattern (($FVF.lookup_f (as sm@105@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f (as sm@59@01  $FVF<f>) r))
  :qid |qp.fvfValDef19|)))
(assert (forall ((r $Ref)) (!
  (=>
    (ite
      (and (img@54@01 r) (not (= (inv@49@01 r) y@33@01)))
      (< $Perm.No (- $Perm.Write (pTaken@58@01 r)))
      false)
    (=
      ($FVF.lookup_f (as sm@105@01  $FVF<f>) r)
      ($FVF.lookup_f (as sm@52@01  $FVF<f>) r)))
  :pattern (($FVF.lookup_f (as sm@105@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f (as sm@52@01  $FVF<f>) r))
  :qid |qp.fvfValDef20|)))
(declare-const pm@106@01 $FPM)
(assert (forall ((r $Ref)) (!
  (=
    ($FVF.perm_f (as pm@106@01  $FPM) r)
    (+
      (ite
        (and (img@61@01 r) (not (= (inv@56@01 r) y@33@01)))
        $Perm.Write
        $Perm.No)
      (ite
        (and (img@54@01 r) (not (= (inv@49@01 r) y@33@01)))
        (- $Perm.Write (pTaken@58@01 r))
        $Perm.No)))
  :pattern (($FVF.perm_f (as pm@106@01  $FPM) r))
  :qid |qp.resPrmSumDef21|)))
; Assume upper permission bound for field f
(assert (forall ((r $Ref)) (!
  (<= ($FVF.perm_f (as pm@106@01  $FPM) r) $Perm.Write)
  :pattern ((inv@60@01 r))
  :qid |qp-fld-prm-bnd|)))
; Assume upper permission bound for field f
(assert (forall ((r $Ref)) (!
  (<= ($FVF.perm_f (as pm@106@01  $FPM) r) $Perm.Write)
  :pattern ((inv@53@01 r))
  :qid |qp-fld-prm-bnd|)))
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not (forall ((r $Ref)) (!
  false
  
  :qid |quant-u-21209|))))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; Precomputing data for removing quantified permissions
(define-fun pTaken@107@01 ((r $Ref)) $Perm
  (ite
    (and (img@93@01 r) (= r (inv@92@01 r)))
    ($Perm.min
      (ite
        (and (img@54@01 r) (not (= (inv@49@01 r) y@33@01)))
        (- $Perm.Write (pTaken@58@01 r))
        $Perm.No)
      $Perm.Write)
    $Perm.No))
(define-fun pTaken@108@01 ((r $Ref)) $Perm
  (ite
    (and (img@93@01 r) (= r (inv@92@01 r)))
    ($Perm.min
      (ite
        (and (img@61@01 r) (not (= (inv@56@01 r) y@33@01)))
        $Perm.Write
        $Perm.No)
      (- $Perm.Write (pTaken@107@01 r)))
    $Perm.No))
; Done precomputing, updating quantified chunks
; State saturation: before repetition
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
        (and (img@54@01 r) (not (= (inv@49@01 r) y@33@01)))
        (- $Perm.Write (pTaken@58@01 r))
        $Perm.No)
      (pTaken@107@01 r))
    $Perm.No)
  
  :qid |quant-u-21211|))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; Intermediate check if already taken enough permissions
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 500)
(assert (not (forall ((r $Ref)) (!
  (=>
    (and (img@93@01 r) (= r (inv@92@01 r)))
    (= (- $Perm.Write (pTaken@107@01 r)) $Perm.No))
  
  :qid |quant-u-21212|))))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; Chunk depleted?
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 500)
(assert (not (forall ((r $Ref)) (!
  (=
    (-
      (ite
        (and (img@61@01 r) (not (= (inv@56@01 r) y@33@01)))
        $Perm.Write
        $Perm.No)
      (pTaken@108@01 r))
    $Perm.No)
  
  :qid |quant-u-21213|))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; Intermediate check if already taken enough permissions
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 500)
(assert (not (forall ((r $Ref)) (!
  (=>
    (and (img@93@01 r) (= r (inv@92@01 r)))
    (= (- (- $Perm.Write (pTaken@107@01 r)) (pTaken@108@01 r)) $Perm.No))
  
  :qid |quant-u-21214|))))
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
    (and (img@93@01 r) (= r (inv@92@01 r)))
    (= (- (- $Perm.Write (pTaken@107@01 r)) (pTaken@108@01 r)) $Perm.No))
  
  :qid |quant-u-21214|))))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; Done removing quantified permissions
(declare-const sm@109@01 $FVF<f>)
; Definitional axioms for snapshot map values
(assert (forall ((r $Ref)) (!
  (=>
    (ite
      (and (img@54@01 r) (not (= (inv@49@01 r) y@33@01)))
      (< $Perm.No (- $Perm.Write (pTaken@58@01 r)))
      false)
    (=
      ($FVF.lookup_f (as sm@109@01  $FVF<f>) r)
      ($FVF.lookup_f (as sm@52@01  $FVF<f>) r)))
  :pattern (($FVF.lookup_f (as sm@109@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f (as sm@52@01  $FVF<f>) r))
  :qid |qp.fvfValDef22|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@61@01 r) (not (= (inv@56@01 r) y@33@01)))
    (=
      ($FVF.lookup_f (as sm@109@01  $FVF<f>) r)
      ($FVF.lookup_f (as sm@59@01  $FVF<f>) r)))
  :pattern (($FVF.lookup_f (as sm@109@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f (as sm@59@01  $FVF<f>) r))
  :qid |qp.fvfValDef23|)))
(declare-fun inv@110@01 ($Ref) $Ref)
(declare-fun img@111@01 ($Ref) Bool)
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@111@01 r)
      (<
        $Perm.No
        (- $Perm.Write (- (- $Perm.Write (pTaken@107@01 r)) (pTaken@108@01 r)))))
    (= (inv@110@01 r) r))
  :pattern ((inv@110@01 r))
  :qid |f-fctOfInv|)))
(assert (forall ((x@91@01 $Ref)) (!
  (=>
    (<
      $Perm.No
      (-
        $Perm.Write
        (- (- $Perm.Write (pTaken@107@01 x@91@01)) (pTaken@108@01 x@91@01))))
    (and (= (inv@110@01 x@91@01) x@91@01) (img@111@01 x@91@01)))
  :pattern ((inv@110@01 x@91@01))
  :pattern ((img@111@01 x@91@01))
  :qid |f-invOfFct|)))
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
(assert (not (forall ((r $Ref)) (!
  (=>
    (and (img@93@01 r) (= r (inv@92@01 r)))
    (= (- (- $Perm.Write (pTaken@107@01 r)) (pTaken@108@01 r)) $Perm.No))
  
  :qid |quant-u-21215|))))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; Done removing quantified permissions
(declare-const sm@112@01 $FVF<f>)
; Definitional axioms for snapshot map values
(declare-fun inv@113@01 ($Ref) $Ref)
(declare-fun img@114@01 ($Ref) Bool)
(assert (= (as sm@109@01  $FVF<f>) (as sm@112@01  $FVF<f>)))
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
(assert (not (forall ((r $Ref)) (!
  (=>
    (and (img@93@01 r) (= r (inv@92@01 r)))
    (= (- (- $Perm.Write (pTaken@107@01 r)) (pTaken@108@01 r)) $Perm.No))
  
  :qid |quant-u-21216|))))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; Done removing quantified permissions
(declare-const sm@115@01 $FVF<f>)
; Definitional axioms for snapshot map values
(declare-fun inv@116@01 ($Ref) $Ref)
(declare-fun img@117@01 ($Ref) Bool)
(assert (= (as sm@109@01  $FVF<f>) (as sm@115@01  $FVF<f>)))
(set-option :timeout 10)
(check-sat)
; unknown
(pop) ; 3
(declare-const $t@118@01 $Snap)
(declare-const $t@119@01 $Snap)
; Create MagicWandSnapFunction for wand true --* true
(declare-const mwsf@120@01 $MWSF)
(assert (forall (($t@118@01 $Snap)) (!
  (= (MWSF_apply mwsf@120@01 $t@118@01) $t@119@01)
  :pattern ((MWSF_apply mwsf@120@01 $t@118@01))
  :qid |quant-u-21217|)))
(pop) ; 2
(pop) ; 1
; ---------- test2 ----------
(declare-const x@121@01 $Ref)
(declare-const x@122@01 $Ref)
(set-option :timeout 0)
(push) ; 1
(declare-const $t@123@01 $Snap)
(assert (= $t@123@01 ($Snap.combine ($Snap.first $t@123@01) ($Snap.second $t@123@01))))
(declare-const y@124@01 $Ref)
(push) ; 2
(pop) ; 2
(declare-fun inv@125@01 ($Ref) $Ref)
(declare-fun img@126@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
; Check receiver injectivity
; Definitional axioms for inverse functions
(assert (forall ((y@124@01 $Ref)) (!
  (and (= (inv@125@01 y@124@01) y@124@01) (img@126@01 y@124@01))
  :pattern ((inv@125@01 y@124@01))
  :pattern ((img@126@01 y@124@01))
  :qid |quant-u-21220|)))
(assert (forall ((r $Ref)) (!
  (=> (img@126@01 r) (= (inv@125@01 r) r))
  :pattern ((inv@125@01 r))
  :qid |f-fctOfInv|)))
; Permissions are non-negative
; Field permissions are at most one
; Permission implies non-null receiver
(assert (forall ((y@124@01 $Ref)) (!
  (not (= y@124@01 $Ref.null))
  :pattern ((inv@125@01 y@124@01))
  :pattern ((img@126@01 y@124@01))
  :qid |f-permImpliesNonNull|)))
(assert (= ($Snap.second $t@123@01) $Snap.unit))
; [eval] x.f == 0
(push) ; 2
(assert (not (img@126@01 x@122@01)))
(check-sat)
; unsat
(pop) ; 2
; 0.00s
; (get-info :all-statistics)
(assert (=
  ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@123@01)) x@122@01)
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
; package (forall y: Ref ::true ==> acc(y.f, 1 / 2)) --*
; acc(x.f, write) && x.f == 0 {
; }
(push) ; 3
(declare-const $t@127@01 $Snap)
(declare-const y@128@01 $Ref)
(push) ; 4
(pop) ; 4
(declare-fun inv@129@01 ($Ref) $Ref)
(declare-fun img@130@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
; Check receiver injectivity
; Definitional axioms for inverse functions
(assert (forall ((y@128@01 $Ref)) (!
  (and (= (inv@129@01 y@128@01) y@128@01) (img@130@01 y@128@01))
  :pattern ((inv@129@01 y@128@01))
  :pattern ((img@130@01 y@128@01))
  :qid |quant-u-21222|)))
(assert (forall ((r $Ref)) (!
  (=> (img@130@01 r) (= (inv@129@01 r) r))
  :pattern ((inv@129@01 r))
  :qid |f-fctOfInv|)))
; Permissions are non-negative
; Field permissions are at most one
; Permission implies non-null receiver
(assert (forall ((y@128@01 $Ref)) (!
  (not (= y@128@01 $Ref.null))
  :pattern ((inv@129@01 y@128@01))
  :pattern ((img@130@01 y@128@01))
  :qid |f-permImpliesNonNull|)))
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
(assert (not (forall ((r $Ref)) (!
  (=> (= r x@122@01) false)
  
  :qid |quant-u-21223|))))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; Done removing quantified permissions
(declare-const sm@131@01 $FVF<f>)
; Definitional axioms for snapshot map values (instantiated)
(set-option :timeout 10)
(check-sat)
; unknown
; Precomputing data for removing quantified permissions
(define-fun pTaken@132@01 ((r $Ref)) $Perm
  (ite
    (= r x@122@01)
    ($Perm.min
      (ite (img@130@01 r) (/ (to_real 1) (to_real 2)) $Perm.No)
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
(assert (not (forall ((r $Ref)) (!
  (=
    (-
      (ite (img@130@01 r) (/ (to_real 1) (to_real 2)) $Perm.No)
      (pTaken@132@01 r))
    $Perm.No)
  
  :qid |quant-u-21225|))))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not (forall ((r $Ref)) (!
  (= (pTaken@132@01 r) $Perm.No)
  
  :qid |quant-u-21226|))))
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
  (=> (= r x@122@01) (= (- $Perm.Write (pTaken@132@01 r)) $Perm.No))
  
  :qid |quant-u-21227|))))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; Final check if taken enough permissions
(set-option :timeout 0)
(push) ; 4
(assert (not (forall ((r $Ref)) (!
  (=> (= r x@122@01) (= (- $Perm.Write (pTaken@132@01 r)) $Perm.No))
  
  :qid |quant-u-21227|))))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; Done removing quantified permissions
(declare-const sm@133@01 $FVF<f>)
; Definitional axioms for snapshot map values (instantiated)
(assert (=>
  (img@130@01 x@122@01)
  (=
    ($FVF.lookup_f (as sm@133@01  $FVF<f>) x@122@01)
    ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> $t@127@01) x@122@01))))
(assert (= (as sm@131@01  $FVF<f>) (as sm@133@01  $FVF<f>)))
(set-option :timeout 10)
(check-sat)
; unknown
; Precomputing data for removing quantified permissions
(define-fun pTaken@134@01 ((r $Ref)) $Perm
  (ite
    (= r x@122@01)
    ($Perm.min
      (ite (img@126@01 r) (/ (to_real 1) (to_real 2)) $Perm.No)
      (- $Perm.Write (pTaken@132@01 r)))
    $Perm.No))
; Done precomputing, updating quantified chunks
; State saturation: before repetition
(check-sat)
; unknown
; Chunk depleted?
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 500)
(assert (not (forall ((r $Ref)) (!
  (=
    (-
      (ite (img@126@01 r) (/ (to_real 1) (to_real 2)) $Perm.No)
      (pTaken@134@01 r))
    $Perm.No)
  
  :qid |quant-u-21229|))))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not (forall ((r $Ref)) (!
  (= (pTaken@134@01 r) $Perm.No)
  
  :qid |quant-u-21230|))))
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
    (= r x@122@01)
    (= (- (- $Perm.Write (pTaken@132@01 r)) (pTaken@134@01 r)) $Perm.No))
  
  :qid |quant-u-21231|))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; Final check if taken enough permissions
; Done removing quantified permissions
(declare-const sm@135@01 $FVF<f>)
; Definitional axioms for snapshot map values (instantiated)
(assert (=>
  (img@126@01 x@122@01)
  (=
    ($FVF.lookup_f (as sm@135@01  $FVF<f>) x@122@01)
    ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@123@01)) x@122@01))))
(assert (= (as sm@131@01  $FVF<f>) (as sm@135@01  $FVF<f>)))
(set-option :timeout 10)
(check-sat)
; unknown
(declare-const $t@136@01 $FVF<f>)
(declare-const $t@137@01 $FVF<f>)
(assert (forall ((r $Ref)) (!
  (=>
    (ite (= r x@122@01) (< $Perm.No (pTaken@132@01 r)) false)
    (= ($FVF.lookup_f $t@136@01 r) ($FVF.lookup_f (as sm@133@01  $FVF<f>) r)))
  :pattern (($FVF.lookup_f (as sm@131@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f (as sm@133@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f $t@136@01 r))
  :qid |quant-u-21232|)))
(assert (forall ((r $Ref)) (!
  (and
    (=>
      (ite (= r x@122@01) (< $Perm.No (pTaken@132@01 r)) false)
      (= ($FVF.lookup_f $t@137@01 r) ($FVF.lookup_f $t@136@01 r)))
    (=>
      (ite (= r x@122@01) (< $Perm.No (- $Perm.Write (pTaken@132@01 r))) false)
      (= ($FVF.lookup_f $t@137@01 r) ($FVF.lookup_f (as sm@135@01  $FVF<f>) r))))
  :pattern (($FVF.lookup_f $t@136@01 r))
  :pattern (($FVF.lookup_f (as sm@135@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f $t@137@01 r))
  :qid |quant-u-21233|)))
; [eval] x.f == 0
(declare-const sm@138@01 $FVF<f>)
; Definitional axioms for snapshot map values
(assert (forall ((r $Ref)) (!
  (=>
    (ite
      (img@130@01 r)
      (< $Perm.No (- (/ (to_real 1) (to_real 2)) (pTaken@132@01 r)))
      false)
    (=
      ($FVF.lookup_f (as sm@138@01  $FVF<f>) r)
      ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> $t@127@01) r)))
  :pattern (($FVF.lookup_f (as sm@138@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> $t@127@01) r))
  :qid |qp.fvfValDef26|)))
(assert (forall ((r $Ref)) (!
  (=>
    (= r x@122@01)
    (= ($FVF.lookup_f (as sm@138@01  $FVF<f>) r) ($FVF.lookup_f $t@137@01 r)))
  :pattern (($FVF.lookup_f (as sm@138@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f $t@137@01 r))
  :qid |qp.fvfValDef27|)))
(declare-const pm@139@01 $FPM)
(assert (forall ((r $Ref)) (!
  (=
    ($FVF.perm_f (as pm@139@01  $FPM) r)
    (+
      (ite
        (img@130@01 r)
        (- (/ (to_real 1) (to_real 2)) (pTaken@132@01 r))
        $Perm.No)
      (ite (= r x@122@01) $Perm.Write $Perm.No)))
  :pattern (($FVF.perm_f (as pm@139@01  $FPM) r))
  :qid |qp.resPrmSumDef28|)))
(set-option :timeout 0)
(push) ; 4
(assert (not (< $Perm.No ($FVF.perm_f (as pm@139@01  $FPM) x@122@01))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(push) ; 4
(assert (not (= ($FVF.lookup_f (as sm@138@01  $FVF<f>) x@122@01) 0)))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(assert (= ($FVF.lookup_f (as sm@138@01  $FVF<f>) x@122@01) 0))
; Create MagicWandSnapFunction for wand (forall y: Ref ::true ==> acc(y.f, 1 / 2)) --* acc(x.f, write) && x.f == 0
(declare-const mwsf@140@01 $MWSF)
(assert (forall (($t@127@01 $Snap)) (!
  (=
    (MWSF_apply mwsf@140@01 $t@127@01)
    ($Snap.combine
      ($SortWrappers.IntTo$Snap ($FVF.lookup_f (as sm@135@01  $FVF<f>) x@122@01))
      $Snap.unit))
  :pattern ((MWSF_apply mwsf@140@01 $t@127@01))
  :qid |quant-u-21234|)))
(pop) ; 3
(push) ; 3
(assert (forall (($t@127@01 $Snap)) (!
  (and
    (and
      (=>
        (img@130@01 x@122@01)
        (=
          ($FVF.lookup_f (as sm@133@01  $FVF<f>) x@122@01)
          ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> $t@127@01) x@122@01)))
      (= (as sm@131@01  $FVF<f>) (as sm@133@01  $FVF<f>))
      (=>
        (img@126@01 x@122@01)
        (=
          ($FVF.lookup_f (as sm@135@01  $FVF<f>) x@122@01)
          ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@123@01)) x@122@01)))
      (= (as sm@131@01  $FVF<f>) (as sm@135@01  $FVF<f>)))
    (=
      (MWSF_apply mwsf@140@01 $t@127@01)
      ($Snap.combine
        ($SortWrappers.IntTo$Snap ($FVF.lookup_f (as sm@135@01  $FVF<f>) x@122@01))
        $Snap.unit)))
  :pattern ((MWSF_apply mwsf@140@01 $t@127@01))
  :qid |quant-u-21235|)))
(assert (forall ((r $Ref)) (!
  (=> (img@130@01 r) (= (inv@129@01 r) r))
  :pattern ((inv@129@01 r))
  :qid |f-fctOfInv|)))
(assert (forall ((y@128@01 $Ref)) (!
  (and (= (inv@129@01 y@128@01) y@128@01) (img@130@01 y@128@01))
  :pattern ((inv@129@01 y@128@01))
  :pattern ((img@130@01 y@128@01))
  :qid |quant-u-21222|)))
; [exec]
; assert (forall y: Ref ::y != x ==> acc(y.f, 1 / 2))
(declare-const y@141@01 $Ref)
(push) ; 4
; [eval] y != x
(assert (not (= y@141@01 x@122@01)))
(pop) ; 4
(declare-fun inv@142@01 ($Ref) $Ref)
(declare-fun img@143@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
; Check receiver injectivity
(push) ; 4
(assert (not (forall ((y1@141@01 $Ref) (y2@141@01 $Ref)) (!
  (=>
    (and
      (not (= y1@141@01 x@122@01))
      (not (= y2@141@01 x@122@01))
      (= y1@141@01 y2@141@01))
    (= y1@141@01 y2@141@01))
  
  :qid |f-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((y@141@01 $Ref)) (!
  (=>
    (not (= y@141@01 x@122@01))
    (and (= (inv@142@01 y@141@01) y@141@01) (img@143@01 y@141@01)))
  :pattern ((inv@142@01 y@141@01))
  :pattern ((img@143@01 y@141@01))
  :qid |f-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@143@01 r) (not (= (inv@142@01 r) x@122@01)))
    (= (inv@142@01 r) r))
  :pattern ((inv@142@01 r))
  :qid |f-fctOfInv|)))
; Precomputing data for removing quantified permissions
(define-fun pTaken@144@01 ((r $Ref)) $Perm
  (ite
    (and (not (= (inv@142@01 r) x@122@01)) (img@143@01 r) (= r (inv@142@01 r)))
    ($Perm.min
      (ite
        (img@126@01 r)
        (- (/ (to_real 1) (to_real 2)) (pTaken@134@01 r))
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
(assert (not (forall ((r $Ref)) (!
  (=
    (-
      (ite
        (img@126@01 r)
        (- (/ (to_real 1) (to_real 2)) (pTaken@134@01 r))
        $Perm.No)
      (pTaken@144@01 r))
    $Perm.No)
  
  :qid |quant-u-21238|))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; Intermediate check if already taken enough permissions
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 500)
(assert (not (forall ((r $Ref)) (!
  (=>
    (and (not (= (inv@142@01 r) x@122@01)) (img@143@01 r) (= r (inv@142@01 r)))
    (= (- (/ (to_real 1) (to_real 2)) (pTaken@144@01 r)) $Perm.No))
  
  :qid |quant-u-21239|))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; Final check if taken enough permissions
; Done removing quantified permissions
; [exec]
; assert (forall y: Ref ::true ==> acc(y.f, 1 / 2))
(declare-const y@145@01 $Ref)
(set-option :timeout 0)
(push) ; 4
(pop) ; 4
(declare-fun inv@146@01 ($Ref) $Ref)
(declare-fun img@147@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
; Check receiver injectivity
; Definitional axioms for inverse functions
(assert (forall ((y@145@01 $Ref)) (!
  (and (= (inv@146@01 y@145@01) y@145@01) (img@147@01 y@145@01))
  :pattern ((inv@146@01 y@145@01))
  :pattern ((img@147@01 y@145@01))
  :qid |f-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=> (img@147@01 r) (= (inv@146@01 r) r))
  :pattern ((inv@146@01 r))
  :qid |f-fctOfInv|)))
; Precomputing data for removing quantified permissions
(define-fun pTaken@148@01 ((r $Ref)) $Perm
  (ite
    (and (img@147@01 r) (= r (inv@146@01 r)))
    ($Perm.min
      (ite
        (img@126@01 r)
        (- (/ (to_real 1) (to_real 2)) (pTaken@134@01 r))
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
(assert (not (forall ((r $Ref)) (!
  (=
    (-
      (ite
        (img@126@01 r)
        (- (/ (to_real 1) (to_real 2)) (pTaken@134@01 r))
        $Perm.No)
      (pTaken@148@01 r))
    $Perm.No)
  
  :qid |quant-u-21242|))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; Intermediate check if already taken enough permissions
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 500)
(assert (not (forall ((r $Ref)) (!
  (=>
    (and (img@147@01 r) (= r (inv@146@01 r)))
    (= (- (/ (to_real 1) (to_real 2)) (pTaken@148@01 r)) $Perm.No))
  
  :qid |quant-u-21243|))))
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
    (and (img@147@01 r) (= r (inv@146@01 r)))
    (= (- (/ (to_real 1) (to_real 2)) (pTaken@148@01 r)) $Perm.No))
  
  :qid |quant-u-21243|))))
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
(declare-const sm@149@01 $FVF<f>)
; Definitional axioms for snapshot map values
(assert (forall ((r $Ref)) (!
  (=>
    (ite
      (img@126@01 r)
      (< $Perm.No (- (/ (to_real 1) (to_real 2)) (pTaken@134@01 r)))
      false)
    (=
      ($FVF.lookup_f (as sm@149@01  $FVF<f>) r)
      ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@123@01)) r)))
  :pattern (($FVF.lookup_f (as sm@149@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@123@01)) r))
  :qid |qp.fvfValDef29|)))
(declare-const pm@150@01 $FPM)
(assert (forall ((r $Ref)) (!
  (=
    ($FVF.perm_f (as pm@150@01  $FPM) r)
    (ite
      (img@126@01 r)
      (- (/ (to_real 1) (to_real 2)) (pTaken@134@01 r))
      $Perm.No))
  :pattern (($FVF.perm_f (as pm@150@01  $FPM) r))
  :qid |qp.resPrmSumDef30|)))
; Assume upper permission bound for field f
(assert (forall ((r $Ref)) (!
  (<= ($FVF.perm_f (as pm@150@01  $FPM) r) $Perm.Write)
  :pattern ((inv@125@01 r))
  :qid |qp-fld-prm-bnd|)))
(declare-const y@151@01 $Ref)
(set-option :timeout 0)
(push) ; 4
(pop) ; 4
(declare-fun inv@152@01 ($Ref) $Ref)
(declare-fun img@153@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
; Check receiver injectivity
; Definitional axioms for inverse functions
(assert (forall ((y@151@01 $Ref)) (!
  (and (= (inv@152@01 y@151@01) y@151@01) (img@153@01 y@151@01))
  :pattern ((inv@152@01 y@151@01))
  :pattern ((img@153@01 y@151@01))
  :qid |f-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=> (img@153@01 r) (= (inv@152@01 r) r))
  :pattern ((inv@152@01 r))
  :qid |f-fctOfInv|)))
; Precomputing data for removing quantified permissions
(define-fun pTaken@154@01 ((r $Ref)) $Perm
  (ite
    (and (img@153@01 r) (= r (inv@152@01 r)))
    ($Perm.min
      (ite
        (img@126@01 r)
        (- (/ (to_real 1) (to_real 2)) (pTaken@134@01 r))
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
(assert (not (forall ((r $Ref)) (!
  (=
    (-
      (ite
        (img@126@01 r)
        (- (/ (to_real 1) (to_real 2)) (pTaken@134@01 r))
        $Perm.No)
      (pTaken@154@01 r))
    $Perm.No)
  
  :qid |quant-u-21246|))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; Intermediate check if already taken enough permissions
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 500)
(assert (not (forall ((r $Ref)) (!
  (=>
    (and (img@153@01 r) (= r (inv@152@01 r)))
    (= (- (/ (to_real 1) (to_real 2)) (pTaken@154@01 r)) $Perm.No))
  
  :qid |quant-u-21247|))))
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
    (and (img@153@01 r) (= r (inv@152@01 r)))
    (= (- (/ (to_real 1) (to_real 2)) (pTaken@154@01 r)) $Perm.No))
  
  :qid |quant-u-21247|))))
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
(declare-const x@155@01 $Ref)
(declare-const x@156@01 $Ref)
(push) ; 1
(declare-const $t@157@01 $Snap)
(assert (= $t@157@01 ($Snap.combine ($Snap.first $t@157@01) ($Snap.second $t@157@01))))
(declare-const y@158@01 $Ref)
(push) ; 2
(pop) ; 2
(declare-fun inv@159@01 ($Ref) $Ref)
(declare-fun img@160@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
; Check receiver injectivity
; Definitional axioms for inverse functions
(assert (forall ((y@158@01 $Ref)) (!
  (and (= (inv@159@01 y@158@01) y@158@01) (img@160@01 y@158@01))
  :pattern ((inv@159@01 y@158@01))
  :pattern ((img@160@01 y@158@01))
  :qid |quant-u-21249|)))
(assert (forall ((r $Ref)) (!
  (=> (img@160@01 r) (= (inv@159@01 r) r))
  :pattern ((inv@159@01 r))
  :qid |f-fctOfInv|)))
; Permissions are non-negative
; Field permissions are at most one
; Permission implies non-null receiver
(assert (forall ((y@158@01 $Ref)) (!
  (not (= y@158@01 $Ref.null))
  :pattern ((inv@159@01 y@158@01))
  :pattern ((img@160@01 y@158@01))
  :qid |f-permImpliesNonNull|)))
(assert (= ($Snap.second $t@157@01) $Snap.unit))
; [eval] x.f == 0
(push) ; 2
(assert (not (img@160@01 x@156@01)))
(check-sat)
; unsat
(pop) ; 2
; 0.00s
; (get-info :all-statistics)
(assert (=
  ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@157@01)) x@156@01)
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
; package (forall y: Ref ::true ==> acc(y.f, 1 / 2)) --* true {
;   assert (forall y: Ref ::true ==> acc(y.f, write))
;   assert x.f == 0
; }
(push) ; 3
(declare-const $t@161@01 $Snap)
(declare-const y@162@01 $Ref)
(push) ; 4
(pop) ; 4
(declare-fun inv@163@01 ($Ref) $Ref)
(declare-fun img@164@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
; Check receiver injectivity
; Definitional axioms for inverse functions
(assert (forall ((y@162@01 $Ref)) (!
  (and (= (inv@163@01 y@162@01) y@162@01) (img@164@01 y@162@01))
  :pattern ((inv@163@01 y@162@01))
  :pattern ((img@164@01 y@162@01))
  :qid |quant-u-21251|)))
(assert (forall ((r $Ref)) (!
  (=> (img@164@01 r) (= (inv@163@01 r) r))
  :pattern ((inv@163@01 r))
  :qid |f-fctOfInv|)))
; Permissions are non-negative
; Field permissions are at most one
; Permission implies non-null receiver
(assert (forall ((y@162@01 $Ref)) (!
  (not (= y@162@01 $Ref.null))
  :pattern ((inv@163@01 y@162@01))
  :pattern ((img@164@01 y@162@01))
  :qid |f-permImpliesNonNull|)))
; [exec]
; assert (forall y: Ref ::true ==> acc(y.f, write))
(declare-const y@165@01 $Ref)
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
  :qid |f-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=> (img@167@01 r) (= (inv@166@01 r) r))
  :pattern ((inv@166@01 r))
  :qid |f-fctOfInv|)))
(push) ; 4
(set-option :timeout 10)
(assert (not (forall ((r $Ref)) (!
  false
  
  :qid |quant-u-21253|))))
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
(assert (not (forall ((r $Ref)) (!
  (=> (and (img@167@01 r) (= r (inv@166@01 r))) false)
  
  :qid |quant-u-21254|))))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; Done removing quantified permissions
(declare-const sm@168@01 $FVF<f>)
; Definitional axioms for snapshot map values
(declare-fun inv@169@01 ($Ref) $Ref)
(declare-fun img@170@01 ($Ref) Bool)
(set-option :timeout 10)
(check-sat)
; unknown
; Precomputing data for removing quantified permissions
(define-fun pTaken@171@01 ((r $Ref)) $Perm
  (ite
    (and (img@167@01 r) (= r (inv@166@01 r)))
    ($Perm.min
      (ite (img@164@01 r) (/ (to_real 1) (to_real 2)) $Perm.No)
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
(assert (not (forall ((r $Ref)) (!
  (=
    (-
      (ite (img@164@01 r) (/ (to_real 1) (to_real 2)) $Perm.No)
      (pTaken@171@01 r))
    $Perm.No)
  
  :qid |quant-u-21256|))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; Intermediate check if already taken enough permissions
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 500)
(assert (not (forall ((r $Ref)) (!
  (=>
    (and (img@167@01 r) (= r (inv@166@01 r)))
    (= (- $Perm.Write (pTaken@171@01 r)) $Perm.No))
  
  :qid |quant-u-21257|))))
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
    (and (img@167@01 r) (= r (inv@166@01 r)))
    (= (- $Perm.Write (pTaken@171@01 r)) $Perm.No))
  
  :qid |quant-u-21257|))))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; Done removing quantified permissions
(declare-const sm@172@01 $FVF<f>)
; Definitional axioms for snapshot map values
(assert (forall ((r $Ref)) (!
  (=>
    (img@164@01 r)
    (=
      ($FVF.lookup_f (as sm@172@01  $FVF<f>) r)
      ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> $t@161@01) r)))
  :pattern (($FVF.lookup_f (as sm@172@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> $t@161@01) r))
  :qid |qp.fvfValDef31|)))
(declare-fun inv@173@01 ($Ref) $Ref)
(declare-fun img@174@01 ($Ref) Bool)
(assert (forall ((r $Ref)) (!
  (=> (and (img@174@01 r) (< $Perm.No (pTaken@171@01 r))) (= (inv@173@01 r) r))
  :pattern ((inv@173@01 r))
  :qid |f-fctOfInv|)))
(assert (forall ((y@165@01 $Ref)) (!
  (=>
    (< $Perm.No (pTaken@171@01 y@165@01))
    (and (= (inv@173@01 y@165@01) y@165@01) (img@174@01 y@165@01)))
  :pattern ((inv@173@01 y@165@01))
  :pattern ((img@174@01 y@165@01))
  :qid |f-invOfFct|)))
(assert (= (as sm@168@01  $FVF<f>) (as sm@172@01  $FVF<f>)))
(set-option :timeout 10)
(check-sat)
; unknown
; Precomputing data for removing quantified permissions
(define-fun pTaken@175@01 ((r $Ref)) $Perm
  (ite
    (and (img@167@01 r) (= r (inv@166@01 r)))
    ($Perm.min
      (ite (img@160@01 r) (/ (to_real 1) (to_real 2)) $Perm.No)
      (- $Perm.Write (pTaken@171@01 r)))
    $Perm.No))
; Done precomputing, updating quantified chunks
; State saturation: before repetition
(check-sat)
; unknown
; Chunk depleted?
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 500)
(assert (not (forall ((r $Ref)) (!
  (=
    (-
      (ite (img@160@01 r) (/ (to_real 1) (to_real 2)) $Perm.No)
      (pTaken@175@01 r))
    $Perm.No)
  
  :qid |quant-u-21259|))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; Intermediate check if already taken enough permissions
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 500)
(assert (not (forall ((r $Ref)) (!
  (=>
    (and (img@167@01 r) (= r (inv@166@01 r)))
    (= (- (- $Perm.Write (pTaken@171@01 r)) (pTaken@175@01 r)) $Perm.No))
  
  :qid |quant-u-21260|))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; Final check if taken enough permissions
; Done removing quantified permissions
(declare-const sm@176@01 $FVF<f>)
; Definitional axioms for snapshot map values
(assert (forall ((r $Ref)) (!
  (=>
    (img@160@01 r)
    (=
      ($FVF.lookup_f (as sm@176@01  $FVF<f>) r)
      ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@157@01)) r)))
  :pattern (($FVF.lookup_f (as sm@176@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@157@01)) r))
  :qid |qp.fvfValDef32|)))
(declare-fun inv@177@01 ($Ref) $Ref)
(declare-fun img@178@01 ($Ref) Bool)
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@178@01 r) (< $Perm.No (- $Perm.Write (pTaken@171@01 r))))
    (= (inv@177@01 r) r))
  :pattern ((inv@177@01 r))
  :qid |f-fctOfInv|)))
(assert (forall ((y@165@01 $Ref)) (!
  (=>
    (< $Perm.No (- $Perm.Write (pTaken@171@01 y@165@01)))
    (and (= (inv@177@01 y@165@01) y@165@01) (img@178@01 y@165@01)))
  :pattern ((inv@177@01 y@165@01))
  :pattern ((img@178@01 y@165@01))
  :qid |f-invOfFct|)))
(assert (= (as sm@168@01  $FVF<f>) (as sm@176@01  $FVF<f>)))
(set-option :timeout 10)
(check-sat)
; unknown
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not (forall ((r $Ref)) (!
  (= (img@174@01 r) (img@170@01 r))
  
  :qid |quant-u-21261|))))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not (forall ((r $Ref)) (!
  (= (img@178@01 r) (img@174@01 r))
  
  :qid |quant-u-21262|))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(assert (forall ((r $Ref)) (!
  (= (img@178@01 r) (img@174@01 r))
  
  :qid |quant-u-21262|)))
(declare-const $t@179@01 $FVF<f>)
(assert (forall ((r $Ref)) (!
  (and
    (=>
      (ite (img@174@01 r) (< $Perm.No (pTaken@171@01 r)) false)
      (= ($FVF.lookup_f $t@179@01 r) ($FVF.lookup_f (as sm@172@01  $FVF<f>) r)))
    (=>
      (ite (img@178@01 r) (< $Perm.No (- $Perm.Write (pTaken@171@01 r))) false)
      (= ($FVF.lookup_f $t@179@01 r) ($FVF.lookup_f (as sm@176@01  $FVF<f>) r))))
  :pattern (($FVF.lookup_f (as sm@172@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f (as sm@176@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f $t@179@01 r))
  :qid |quant-u-21263|)))
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not (forall ((r $Ref)) (!
  (= (img@170@01 r) (img@174@01 r))
  
  :qid |quant-u-21264|))))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; [exec]
; assert x.f == 0
; [eval] x.f == 0
(declare-const sm@180@01 $FVF<f>)
; Definitional axioms for snapshot map values
(assert (forall ((r $Ref)) (!
  (=>
    (img@174@01 r)
    (= ($FVF.lookup_f (as sm@180@01  $FVF<f>) r) ($FVF.lookup_f $t@179@01 r)))
  :pattern (($FVF.lookup_f (as sm@180@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f $t@179@01 r))
  :qid |qp.fvfValDef33|)))
(declare-const pm@181@01 $FPM)
(assert (forall ((r $Ref)) (!
  (=
    ($FVF.perm_f (as pm@181@01  $FPM) r)
    (ite (img@174@01 r) $Perm.Write $Perm.No))
  :pattern (($FVF.perm_f (as pm@181@01  $FPM) r))
  :qid |qp.resPrmSumDef35|)))
(set-option :timeout 0)
(push) ; 4
(assert (not (< $Perm.No ($FVF.perm_f (as pm@181@01  $FPM) x@156@01))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(push) ; 4
(assert (not (= ($FVF.lookup_f (as sm@180@01  $FVF<f>) x@156@01) 0)))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(assert (= ($FVF.lookup_f (as sm@180@01  $FVF<f>) x@156@01) 0))
; Create MagicWandSnapFunction for wand (forall y: Ref ::true ==> acc(y.f, 1 / 2)) --* true
(declare-const mwsf@182@01 $MWSF)
(assert (forall (($t@161@01 $Snap)) (!
  (= (MWSF_apply mwsf@182@01 $t@161@01) $Snap.unit)
  :pattern ((MWSF_apply mwsf@182@01 $t@161@01))
  :qid |quant-u-21265|)))
(pop) ; 3
(push) ; 3
(assert (forall (($t@161@01 $Snap)) (!
  (and
    (forall ((r $Ref)) (!
      (=>
        (img@164@01 r)
        (=
          ($FVF.lookup_f (as sm@172@01  $FVF<f>) r)
          ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> $t@161@01) r)))
      :pattern (($FVF.lookup_f (as sm@172@01  $FVF<f>) r))
      :pattern (($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> $t@161@01) r))
      :qid |qp.fvfValDef31|))
    (= (MWSF_apply mwsf@182@01 $t@161@01) $Snap.unit))
  :pattern ((MWSF_apply mwsf@182@01 $t@161@01))
  :qid |quant-u-21266|)))
(assert (forall ((r $Ref)) (!
  (=> (img@164@01 r) (= (inv@163@01 r) r))
  :pattern ((inv@163@01 r))
  :qid |f-fctOfInv|)))
(assert (forall ((y@162@01 $Ref)) (!
  (and (= (inv@163@01 y@162@01) y@162@01) (img@164@01 y@162@01))
  :pattern ((inv@163@01 y@162@01))
  :pattern ((img@164@01 y@162@01))
  :qid |quant-u-21251|)))
(assert (forall ((r $Ref)) (!
  (=> (and (img@174@01 r) (< $Perm.No (pTaken@171@01 r))) (= (inv@173@01 r) r))
  :pattern ((inv@173@01 r))
  :qid |f-fctOfInv|)))
(assert (forall ((y@165@01 $Ref)) (!
  (=>
    (< $Perm.No (pTaken@171@01 y@165@01))
    (and (= (inv@173@01 y@165@01) y@165@01) (img@174@01 y@165@01)))
  :pattern ((inv@173@01 y@165@01))
  :pattern ((img@174@01 y@165@01))
  :qid |f-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=>
    (img@160@01 r)
    (=
      ($FVF.lookup_f (as sm@176@01  $FVF<f>) r)
      ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@157@01)) r)))
  :pattern (($FVF.lookup_f (as sm@176@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@157@01)) r))
  :qid |qp.fvfValDef32|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@178@01 r) (< $Perm.No (- $Perm.Write (pTaken@171@01 r))))
    (= (inv@177@01 r) r))
  :pattern ((inv@177@01 r))
  :qid |f-fctOfInv|)))
(assert (forall ((y@165@01 $Ref)) (!
  (=>
    (< $Perm.No (- $Perm.Write (pTaken@171@01 y@165@01)))
    (and (= (inv@177@01 y@165@01) y@165@01) (img@178@01 y@165@01)))
  :pattern ((inv@177@01 y@165@01))
  :pattern ((img@178@01 y@165@01))
  :qid |f-invOfFct|)))
(assert (and
  (= (as sm@168@01  $FVF<f>) (as sm@172@01  $FVF<f>))
  (= (as sm@168@01  $FVF<f>) (as sm@176@01  $FVF<f>))))
; [exec]
; assert (forall y: Ref ::y != x ==> acc(y.f, 1 / 2))
(declare-const y@183@01 $Ref)
(push) ; 4
; [eval] y != x
(assert (not (= y@183@01 x@156@01)))
(pop) ; 4
(declare-fun inv@184@01 ($Ref) $Ref)
(declare-fun img@185@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
; Check receiver injectivity
(push) ; 4
(assert (not (forall ((y1@183@01 $Ref) (y2@183@01 $Ref)) (!
  (=>
    (and
      (not (= y1@183@01 x@156@01))
      (not (= y2@183@01 x@156@01))
      (= y1@183@01 y2@183@01))
    (= y1@183@01 y2@183@01))
  
  :qid |f-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((y@183@01 $Ref)) (!
  (=>
    (not (= y@183@01 x@156@01))
    (and (= (inv@184@01 y@183@01) y@183@01) (img@185@01 y@183@01)))
  :pattern ((inv@184@01 y@183@01))
  :pattern ((img@185@01 y@183@01))
  :qid |f-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@185@01 r) (not (= (inv@184@01 r) x@156@01)))
    (= (inv@184@01 r) r))
  :pattern ((inv@184@01 r))
  :qid |f-fctOfInv|)))
; Precomputing data for removing quantified permissions
; Done precomputing, updating quantified chunks
; State saturation: before repetition
(set-option :timeout 10)
(check-sat)
; unknown
; Final check if taken enough permissions
(set-option :timeout 0)
(push) ; 4
(assert (not (forall ((r $Ref)) (!
  (=>
    (and (not (= (inv@184@01 r) x@156@01)) (img@185@01 r) (= r (inv@184@01 r)))
    false)
  
  :qid |quant-u-21268|))))
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
(declare-const y@186@01 $Ref)
(set-option :timeout 0)
(push) ; 4
; [eval] y != x
(assert (not (= y@186@01 x@156@01)))
(pop) ; 4
(declare-fun inv@187@01 ($Ref) $Ref)
(declare-fun img@188@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
; Check receiver injectivity
(push) ; 4
(assert (not (forall ((y1@186@01 $Ref) (y2@186@01 $Ref)) (!
  (=>
    (and
      (not (= y1@186@01 x@156@01))
      (not (= y2@186@01 x@156@01))
      (= y1@186@01 y2@186@01))
    (= y1@186@01 y2@186@01))
  
  :qid |f-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((y@186@01 $Ref)) (!
  (=>
    (not (= y@186@01 x@156@01))
    (and (= (inv@187@01 y@186@01) y@186@01) (img@188@01 y@186@01)))
  :pattern ((inv@187@01 y@186@01))
  :pattern ((img@188@01 y@186@01))
  :qid |f-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@188@01 r) (not (= (inv@187@01 r) x@156@01)))
    (= (inv@187@01 r) r))
  :pattern ((inv@187@01 r))
  :qid |f-fctOfInv|)))
; Precomputing data for removing quantified permissions
; Done precomputing, updating quantified chunks
; State saturation: before repetition
(set-option :timeout 10)
(check-sat)
; unknown
; Final check if taken enough permissions
(set-option :timeout 0)
(push) ; 4
(assert (not (forall ((r $Ref)) (!
  (=>
    (and (not (= (inv@187@01 r) x@156@01)) (img@188@01 r) (= r (inv@187@01 r)))
    false)
  
  :qid |quant-u-21270|))))
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
(declare-const x@189@01 $Ref)
(declare-const x@190@01 $Ref)
(push) ; 1
(declare-const $t@191@01 $Snap)
(assert (= $t@191@01 ($Snap.combine ($Snap.first $t@191@01) ($Snap.second $t@191@01))))
(declare-const y@192@01 $Ref)
(push) ; 2
(pop) ; 2
(declare-fun inv@193@01 ($Ref) $Ref)
(declare-fun img@194@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
; Check receiver injectivity
; Definitional axioms for inverse functions
(assert (forall ((y@192@01 $Ref)) (!
  (and (= (inv@193@01 y@192@01) y@192@01) (img@194@01 y@192@01))
  :pattern ((inv@193@01 y@192@01))
  :pattern ((img@194@01 y@192@01))
  :qid |quant-u-21272|)))
(assert (forall ((r $Ref)) (!
  (=> (img@194@01 r) (= (inv@193@01 r) r))
  :pattern ((inv@193@01 r))
  :qid |f-fctOfInv|)))
; Permissions are non-negative
; Field permissions are at most one
; Permission implies non-null receiver
(assert (forall ((y@192@01 $Ref)) (!
  (not (= y@192@01 $Ref.null))
  :pattern ((inv@193@01 y@192@01))
  :pattern ((img@194@01 y@192@01))
  :qid |f-permImpliesNonNull|)))
(assert (= ($Snap.second $t@191@01) $Snap.unit))
; [eval] x.f == 0
(push) ; 2
(assert (not (img@194@01 x@190@01)))
(check-sat)
; unsat
(pop) ; 2
; 0.00s
; (get-info :all-statistics)
(assert (=
  ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@191@01)) x@190@01)
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
; package (forall y: Ref ::y != x ==> acc(y.f, write)) --* true {
;   assert (forall y: Ref ::true ==> acc(y.f, write))
;   assert x.f == 0
; }
(push) ; 3
(declare-const $t@195@01 $Snap)
(declare-const y@196@01 $Ref)
(push) ; 4
; [eval] y != x
(assert (not (= y@196@01 x@190@01)))
(pop) ; 4
(declare-fun inv@197@01 ($Ref) $Ref)
(declare-fun img@198@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
; Check receiver injectivity
(push) ; 4
(assert (not (forall ((y1@196@01 $Ref) (y2@196@01 $Ref)) (!
  (=>
    (and
      (not (= y1@196@01 x@190@01))
      (not (= y2@196@01 x@190@01))
      (= y1@196@01 y2@196@01))
    (= y1@196@01 y2@196@01))
  
  :qid |f-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((y@196@01 $Ref)) (!
  (=>
    (not (= y@196@01 x@190@01))
    (and (= (inv@197@01 y@196@01) y@196@01) (img@198@01 y@196@01)))
  :pattern ((inv@197@01 y@196@01))
  :pattern ((img@198@01 y@196@01))
  :qid |quant-u-21274|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@198@01 r) (not (= (inv@197@01 r) x@190@01)))
    (= (inv@197@01 r) r))
  :pattern ((inv@197@01 r))
  :qid |f-fctOfInv|)))
; Permissions are non-negative
; Field permissions are at most one
; Permission implies non-null receiver
(assert (forall ((y@196@01 $Ref)) (!
  (=> (not (= y@196@01 x@190@01)) (not (= y@196@01 $Ref.null)))
  :pattern ((inv@197@01 y@196@01))
  :pattern ((img@198@01 y@196@01))
  :qid |f-permImpliesNonNull|)))
; [exec]
; assert (forall y: Ref ::true ==> acc(y.f, write))
(declare-const y@199@01 $Ref)
(push) ; 4
(pop) ; 4
(declare-fun inv@200@01 ($Ref) $Ref)
(declare-fun img@201@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
; Check receiver injectivity
; Definitional axioms for inverse functions
(assert (forall ((y@199@01 $Ref)) (!
  (and (= (inv@200@01 y@199@01) y@199@01) (img@201@01 y@199@01))
  :pattern ((inv@200@01 y@199@01))
  :pattern ((img@201@01 y@199@01))
  :qid |f-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=> (img@201@01 r) (= (inv@200@01 r) r))
  :pattern ((inv@200@01 r))
  :qid |f-fctOfInv|)))
(push) ; 4
(set-option :timeout 10)
(assert (not (forall ((r $Ref)) (!
  false
  
  :qid |quant-u-21276|))))
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
(assert (not (forall ((r $Ref)) (!
  (=> (and (img@201@01 r) (= r (inv@200@01 r))) false)
  
  :qid |quant-u-21277|))))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; Done removing quantified permissions
(declare-const sm@202@01 $FVF<f>)
; Definitional axioms for snapshot map values
(declare-fun inv@203@01 ($Ref) $Ref)
(declare-fun img@204@01 ($Ref) Bool)
(set-option :timeout 10)
(check-sat)
; unknown
; Precomputing data for removing quantified permissions
(define-fun pTaken@205@01 ((r $Ref)) $Perm
  (ite
    (and (img@201@01 r) (= r (inv@200@01 r)))
    ($Perm.min
      (ite
        (and (img@198@01 r) (not (= (inv@197@01 r) x@190@01)))
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
(assert (not (forall ((r $Ref)) (!
  (=
    (-
      (ite
        (and (img@198@01 r) (not (= (inv@197@01 r) x@190@01)))
        $Perm.Write
        $Perm.No)
      (pTaken@205@01 r))
    $Perm.No)
  
  :qid |quant-u-21279|))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; Intermediate check if already taken enough permissions
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 500)
(assert (not (forall ((r $Ref)) (!
  (=>
    (and (img@201@01 r) (= r (inv@200@01 r)))
    (= (- $Perm.Write (pTaken@205@01 r)) $Perm.No))
  
  :qid |quant-u-21280|))))
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
    (and (img@201@01 r) (= r (inv@200@01 r)))
    (= (- $Perm.Write (pTaken@205@01 r)) $Perm.No))
  
  :qid |quant-u-21280|))))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; Done removing quantified permissions
(declare-const sm@206@01 $FVF<f>)
; Definitional axioms for snapshot map values
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@198@01 r) (not (= (inv@197@01 r) x@190@01)))
    (=
      ($FVF.lookup_f (as sm@206@01  $FVF<f>) r)
      ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> $t@195@01) r)))
  :pattern (($FVF.lookup_f (as sm@206@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> $t@195@01) r))
  :qid |qp.fvfValDef36|)))
(declare-fun inv@207@01 ($Ref) $Ref)
(declare-fun img@208@01 ($Ref) Bool)
(assert (forall ((r $Ref)) (!
  (=> (and (img@208@01 r) (< $Perm.No (pTaken@205@01 r))) (= (inv@207@01 r) r))
  :pattern ((inv@207@01 r))
  :qid |f-fctOfInv|)))
(assert (forall ((y@199@01 $Ref)) (!
  (=>
    (< $Perm.No (pTaken@205@01 y@199@01))
    (and (= (inv@207@01 y@199@01) y@199@01) (img@208@01 y@199@01)))
  :pattern ((inv@207@01 y@199@01))
  :pattern ((img@208@01 y@199@01))
  :qid |f-invOfFct|)))
(assert (= (as sm@202@01  $FVF<f>) (as sm@206@01  $FVF<f>)))
(set-option :timeout 10)
(check-sat)
; unknown
; Precomputing data for removing quantified permissions
(define-fun pTaken@209@01 ((r $Ref)) $Perm
  (ite
    (and (img@201@01 r) (= r (inv@200@01 r)))
    ($Perm.min
      (ite (img@194@01 r) $Perm.Write $Perm.No)
      (- $Perm.Write (pTaken@205@01 r)))
    $Perm.No))
; Done precomputing, updating quantified chunks
; State saturation: before repetition
(check-sat)
; unknown
; Chunk depleted?
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 500)
(assert (not (forall ((r $Ref)) (!
  (= (- (ite (img@194@01 r) $Perm.Write $Perm.No) (pTaken@209@01 r)) $Perm.No)
  
  :qid |quant-u-21282|))))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not (forall ((r $Ref)) (!
  (= (pTaken@209@01 r) $Perm.No)
  
  :qid |quant-u-21283|))))
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
    (and (img@201@01 r) (= r (inv@200@01 r)))
    (= (- (- $Perm.Write (pTaken@205@01 r)) (pTaken@209@01 r)) $Perm.No))
  
  :qid |quant-u-21284|))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; Final check if taken enough permissions
; Done removing quantified permissions
(declare-const sm@210@01 $FVF<f>)
; Definitional axioms for snapshot map values
(assert (forall ((r $Ref)) (!
  (=>
    (img@194@01 r)
    (=
      ($FVF.lookup_f (as sm@210@01  $FVF<f>) r)
      ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@191@01)) r)))
  :pattern (($FVF.lookup_f (as sm@210@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@191@01)) r))
  :qid |qp.fvfValDef37|)))
(declare-fun inv@211@01 ($Ref) $Ref)
(declare-fun img@212@01 ($Ref) Bool)
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@212@01 r) (< $Perm.No (- $Perm.Write (pTaken@205@01 r))))
    (= (inv@211@01 r) r))
  :pattern ((inv@211@01 r))
  :qid |f-fctOfInv|)))
(assert (forall ((y@199@01 $Ref)) (!
  (=>
    (< $Perm.No (- $Perm.Write (pTaken@205@01 y@199@01)))
    (and (= (inv@211@01 y@199@01) y@199@01) (img@212@01 y@199@01)))
  :pattern ((inv@211@01 y@199@01))
  :pattern ((img@212@01 y@199@01))
  :qid |f-invOfFct|)))
(assert (= (as sm@202@01  $FVF<f>) (as sm@210@01  $FVF<f>)))
(set-option :timeout 10)
(check-sat)
; unknown
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not (forall ((r $Ref)) (!
  (= (img@208@01 r) (img@204@01 r))
  
  :qid |quant-u-21285|))))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not (forall ((r $Ref)) (!
  (= (img@212@01 r) (img@208@01 r))
  
  :qid |quant-u-21286|))))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not (forall ((r $Ref)) (!
  (= (img@212@01 r) (img@204@01 r))
  
  :qid |quant-u-21287|))))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not (forall ((r $Ref)) (!
  (= (img@208@01 r) (img@212@01 r))
  
  :qid |quant-u-21288|))))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not (forall ((r $Ref)) (!
  (= (img@204@01 r) (img@208@01 r))
  
  :qid |quant-u-21289|))))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not (forall ((r $Ref)) (!
  (= (img@204@01 r) (img@212@01 r))
  
  :qid |quant-u-21290|))))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; [exec]
; assert x.f == 0
; [eval] x.f == 0
(declare-const sm@213@01 $FVF<f>)
; Definitional axioms for snapshot map values
(assert (forall ((r $Ref)) (!
  (=>
    (ite (img@212@01 r) (< $Perm.No (- $Perm.Write (pTaken@205@01 r))) false)
    (=
      ($FVF.lookup_f (as sm@213@01  $FVF<f>) r)
      ($FVF.lookup_f (as sm@210@01  $FVF<f>) r)))
  :pattern (($FVF.lookup_f (as sm@213@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f (as sm@210@01  $FVF<f>) r))
  :qid |qp.fvfValDef38|)))
(assert (forall ((r $Ref)) (!
  (=>
    (ite (img@208@01 r) (< $Perm.No (pTaken@205@01 r)) false)
    (=
      ($FVF.lookup_f (as sm@213@01  $FVF<f>) r)
      ($FVF.lookup_f (as sm@206@01  $FVF<f>) r)))
  :pattern (($FVF.lookup_f (as sm@213@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f (as sm@206@01  $FVF<f>) r))
  :qid |qp.fvfValDef39|)))
(declare-const pm@214@01 $FPM)
(assert (forall ((r $Ref)) (!
  (=
    ($FVF.perm_f (as pm@214@01  $FPM) r)
    (+
      (ite (img@212@01 r) (- $Perm.Write (pTaken@205@01 r)) $Perm.No)
      (ite (img@208@01 r) (pTaken@205@01 r) $Perm.No)))
  :pattern (($FVF.perm_f (as pm@214@01  $FPM) r))
  :qid |qp.resPrmSumDef41|)))
(set-option :timeout 0)
(push) ; 4
(assert (not (< $Perm.No ($FVF.perm_f (as pm@214@01  $FPM) x@190@01))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(push) ; 4
(assert (not (= ($FVF.lookup_f (as sm@213@01  $FVF<f>) x@190@01) 0)))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(assert (= ($FVF.lookup_f (as sm@213@01  $FVF<f>) x@190@01) 0))
; Create MagicWandSnapFunction for wand (forall y: Ref ::y != x ==> acc(y.f, write)) --* true
(declare-const mwsf@215@01 $MWSF)
(assert (forall (($t@195@01 $Snap)) (!
  (= (MWSF_apply mwsf@215@01 $t@195@01) $Snap.unit)
  :pattern ((MWSF_apply mwsf@215@01 $t@195@01))
  :qid |quant-u-21291|)))
(pop) ; 3
(push) ; 3
(assert (forall (($t@195@01 $Snap)) (!
  (and
    (forall ((r $Ref)) (!
      (=>
        (and (img@198@01 r) (not (= (inv@197@01 r) x@190@01)))
        (=
          ($FVF.lookup_f (as sm@206@01  $FVF<f>) r)
          ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> $t@195@01) r)))
      :pattern (($FVF.lookup_f (as sm@206@01  $FVF<f>) r))
      :pattern (($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> $t@195@01) r))
      :qid |qp.fvfValDef36|))
    (= (MWSF_apply mwsf@215@01 $t@195@01) $Snap.unit))
  :pattern ((MWSF_apply mwsf@215@01 $t@195@01))
  :qid |quant-u-21292|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@198@01 r) (not (= (inv@197@01 r) x@190@01)))
    (= (inv@197@01 r) r))
  :pattern ((inv@197@01 r))
  :qid |f-fctOfInv|)))
(assert (forall ((y@196@01 $Ref)) (!
  (=>
    (not (= y@196@01 x@190@01))
    (and (= (inv@197@01 y@196@01) y@196@01) (img@198@01 y@196@01)))
  :pattern ((inv@197@01 y@196@01))
  :pattern ((img@198@01 y@196@01))
  :qid |quant-u-21274|)))
(assert (forall ((r $Ref)) (!
  (=> (and (img@208@01 r) (< $Perm.No (pTaken@205@01 r))) (= (inv@207@01 r) r))
  :pattern ((inv@207@01 r))
  :qid |f-fctOfInv|)))
(assert (forall ((y@199@01 $Ref)) (!
  (=>
    (< $Perm.No (pTaken@205@01 y@199@01))
    (and (= (inv@207@01 y@199@01) y@199@01) (img@208@01 y@199@01)))
  :pattern ((inv@207@01 y@199@01))
  :pattern ((img@208@01 y@199@01))
  :qid |f-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=>
    (img@194@01 r)
    (=
      ($FVF.lookup_f (as sm@210@01  $FVF<f>) r)
      ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@191@01)) r)))
  :pattern (($FVF.lookup_f (as sm@210@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@191@01)) r))
  :qid |qp.fvfValDef37|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@212@01 r) (< $Perm.No (- $Perm.Write (pTaken@205@01 r))))
    (= (inv@211@01 r) r))
  :pattern ((inv@211@01 r))
  :qid |f-fctOfInv|)))
(assert (forall ((y@199@01 $Ref)) (!
  (=>
    (< $Perm.No (- $Perm.Write (pTaken@205@01 y@199@01)))
    (and (= (inv@211@01 y@199@01) y@199@01) (img@212@01 y@199@01)))
  :pattern ((inv@211@01 y@199@01))
  :pattern ((img@212@01 y@199@01))
  :qid |f-invOfFct|)))
(assert (and
  (= (as sm@202@01  $FVF<f>) (as sm@206@01  $FVF<f>))
  (= (as sm@202@01  $FVF<f>) (as sm@210@01  $FVF<f>))))
; [exec]
; assert (forall y: Ref ::y != x ==> acc(y.f, write))
(declare-const y@216@01 $Ref)
(push) ; 4
; [eval] y != x
(assert (not (= y@216@01 x@190@01)))
(pop) ; 4
(declare-fun inv@217@01 ($Ref) $Ref)
(declare-fun img@218@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
; Check receiver injectivity
(push) ; 4
(assert (not (forall ((y1@216@01 $Ref) (y2@216@01 $Ref)) (!
  (=>
    (and
      (not (= y1@216@01 x@190@01))
      (not (= y2@216@01 x@190@01))
      (= y1@216@01 y2@216@01))
    (= y1@216@01 y2@216@01))
  
  :qid |f-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((y@216@01 $Ref)) (!
  (=>
    (not (= y@216@01 x@190@01))
    (and (= (inv@217@01 y@216@01) y@216@01) (img@218@01 y@216@01)))
  :pattern ((inv@217@01 y@216@01))
  :pattern ((img@218@01 y@216@01))
  :qid |f-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@218@01 r) (not (= (inv@217@01 r) x@190@01)))
    (= (inv@217@01 r) r))
  :pattern ((inv@217@01 r))
  :qid |f-fctOfInv|)))
; Precomputing data for removing quantified permissions
(define-fun pTaken@219@01 ((r $Ref)) $Perm
  (ite
    (and (not (= (inv@217@01 r) x@190@01)) (img@218@01 r) (= r (inv@217@01 r)))
    ($Perm.min
      (ite (img@194@01 r) (- $Perm.Write (pTaken@209@01 r)) $Perm.No)
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
(assert (not (forall ((r $Ref)) (!
  (=
    (-
      (ite (img@194@01 r) (- $Perm.Write (pTaken@209@01 r)) $Perm.No)
      (pTaken@219@01 r))
    $Perm.No)
  
  :qid |quant-u-21295|))))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not (forall ((r $Ref)) (!
  (= (pTaken@219@01 r) $Perm.No)
  
  :qid |quant-u-21296|))))
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
    (and (not (= (inv@217@01 r) x@190@01)) (img@218@01 r) (= r (inv@217@01 r)))
    (= (- $Perm.Write (pTaken@219@01 r)) $Perm.No))
  
  :qid |quant-u-21297|))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; Final check if taken enough permissions
; Done removing quantified permissions
; [exec]
; assert (forall y: Ref ::true ==> acc(y.f, write))
(declare-const y@220@01 $Ref)
(set-option :timeout 0)
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
  :qid |f-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=> (img@222@01 r) (= (inv@221@01 r) r))
  :pattern ((inv@221@01 r))
  :qid |f-fctOfInv|)))
; Precomputing data for removing quantified permissions
(define-fun pTaken@223@01 ((r $Ref)) $Perm
  (ite
    (and (img@222@01 r) (= r (inv@221@01 r)))
    ($Perm.min
      (ite (img@194@01 r) (- $Perm.Write (pTaken@209@01 r)) $Perm.No)
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
(assert (not (forall ((r $Ref)) (!
  (=
    (-
      (ite (img@194@01 r) (- $Perm.Write (pTaken@209@01 r)) $Perm.No)
      (pTaken@223@01 r))
    $Perm.No)
  
  :qid |quant-u-21300|))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; Intermediate check if already taken enough permissions
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 500)
(assert (not (forall ((r $Ref)) (!
  (=>
    (and (img@222@01 r) (= r (inv@221@01 r)))
    (= (- $Perm.Write (pTaken@223@01 r)) $Perm.No))
  
  :qid |quant-u-21301|))))
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
    (and (img@222@01 r) (= r (inv@221@01 r)))
    (= (- $Perm.Write (pTaken@223@01 r)) $Perm.No))
  
  :qid |quant-u-21301|))))
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
(declare-const sm@224@01 $FVF<f>)
; Definitional axioms for snapshot map values
(assert (forall ((r $Ref)) (!
  (=>
    (ite (img@194@01 r) (< $Perm.No (- $Perm.Write (pTaken@209@01 r))) false)
    (=
      ($FVF.lookup_f (as sm@224@01  $FVF<f>) r)
      ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@191@01)) r)))
  :pattern (($FVF.lookup_f (as sm@224@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@191@01)) r))
  :qid |qp.fvfValDef42|)))
(declare-const pm@225@01 $FPM)
(assert (forall ((r $Ref)) (!
  (=
    ($FVF.perm_f (as pm@225@01  $FPM) r)
    (ite (img@194@01 r) (- $Perm.Write (pTaken@209@01 r)) $Perm.No))
  :pattern (($FVF.perm_f (as pm@225@01  $FPM) r))
  :qid |qp.resPrmSumDef43|)))
; Assume upper permission bound for field f
(assert (forall ((r $Ref)) (!
  (<= ($FVF.perm_f (as pm@225@01  $FPM) r) $Perm.Write)
  :pattern ((inv@193@01 r))
  :qid |qp-fld-prm-bnd|)))
(declare-const y@226@01 $Ref)
(set-option :timeout 0)
(push) ; 4
(pop) ; 4
(declare-fun inv@227@01 ($Ref) $Ref)
(declare-fun img@228@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
; Check receiver injectivity
; Definitional axioms for inverse functions
(assert (forall ((y@226@01 $Ref)) (!
  (and (= (inv@227@01 y@226@01) y@226@01) (img@228@01 y@226@01))
  :pattern ((inv@227@01 y@226@01))
  :pattern ((img@228@01 y@226@01))
  :qid |f-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=> (img@228@01 r) (= (inv@227@01 r) r))
  :pattern ((inv@227@01 r))
  :qid |f-fctOfInv|)))
; Precomputing data for removing quantified permissions
(define-fun pTaken@229@01 ((r $Ref)) $Perm
  (ite
    (and (img@228@01 r) (= r (inv@227@01 r)))
    ($Perm.min
      (ite (img@194@01 r) (- $Perm.Write (pTaken@209@01 r)) $Perm.No)
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
(assert (not (forall ((r $Ref)) (!
  (=
    (-
      (ite (img@194@01 r) (- $Perm.Write (pTaken@209@01 r)) $Perm.No)
      (pTaken@229@01 r))
    $Perm.No)
  
  :qid |quant-u-21304|))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; Intermediate check if already taken enough permissions
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 500)
(assert (not (forall ((r $Ref)) (!
  (=>
    (and (img@228@01 r) (= r (inv@227@01 r)))
    (= (- $Perm.Write (pTaken@229@01 r)) $Perm.No))
  
  :qid |quant-u-21305|))))
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
    (and (img@228@01 r) (= r (inv@227@01 r)))
    (= (- $Perm.Write (pTaken@229@01 r)) $Perm.No))
  
  :qid |quant-u-21305|))))
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
(declare-const x@230@01 $Ref)
(declare-const x@231@01 $Ref)
(push) ; 1
(declare-const y@232@01 $Ref)
(push) ; 2
(pop) ; 2
(declare-const $t@233@01 $FVF<f>)
(declare-fun inv@234@01 ($Ref) $Ref)
(declare-fun img@235@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
; Check receiver injectivity
; Definitional axioms for inverse functions
(assert (forall ((y@232@01 $Ref)) (!
  (and (= (inv@234@01 y@232@01) y@232@01) (img@235@01 y@232@01))
  :pattern ((inv@234@01 y@232@01))
  :pattern ((img@235@01 y@232@01))
  :qid |quant-u-21307|)))
(assert (forall ((r $Ref)) (!
  (=> (img@235@01 r) (= (inv@234@01 r) r))
  :pattern ((inv@234@01 r))
  :qid |f-fctOfInv|)))
; Permissions are non-negative
; Field permissions are at most one
; Permission implies non-null receiver
(assert (forall ((y@232@01 $Ref)) (!
  (not (= y@232@01 $Ref.null))
  :pattern ((inv@234@01 y@232@01))
  :pattern ((img@235@01 y@232@01))
  :qid |f-permImpliesNonNull|)))
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
(set-option :timeout 0)
(push) ; 2
(pop) ; 2
(push) ; 2
; [exec]
; package (forall y: Ref ::y != x ==> acc(y.f, 1 / 2)) --*
; (forall y: Ref ::true ==> acc(y.f, write)) {
; }
(push) ; 3
(declare-const $t@236@01 $Snap)
(declare-const y@237@01 $Ref)
(push) ; 4
; [eval] y != x
(assert (not (= y@237@01 x@231@01)))
(pop) ; 4
(declare-fun inv@238@01 ($Ref) $Ref)
(declare-fun img@239@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
; Check receiver injectivity
(push) ; 4
(assert (not (forall ((y1@237@01 $Ref) (y2@237@01 $Ref)) (!
  (=>
    (and
      (not (= y1@237@01 x@231@01))
      (not (= y2@237@01 x@231@01))
      (= y1@237@01 y2@237@01))
    (= y1@237@01 y2@237@01))
  
  :qid |f-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((y@237@01 $Ref)) (!
  (=>
    (not (= y@237@01 x@231@01))
    (and (= (inv@238@01 y@237@01) y@237@01) (img@239@01 y@237@01)))
  :pattern ((inv@238@01 y@237@01))
  :pattern ((img@239@01 y@237@01))
  :qid |quant-u-21309|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@239@01 r) (not (= (inv@238@01 r) x@231@01)))
    (= (inv@238@01 r) r))
  :pattern ((inv@238@01 r))
  :qid |f-fctOfInv|)))
; Permissions are non-negative
; Field permissions are at most one
; Permission implies non-null receiver
(assert (forall ((y@237@01 $Ref)) (!
  (=> (not (= y@237@01 x@231@01)) (not (= y@237@01 $Ref.null)))
  :pattern ((inv@238@01 y@237@01))
  :pattern ((img@239@01 y@237@01))
  :qid |f-permImpliesNonNull|)))
(declare-const y@240@01 $Ref)
(push) ; 4
(pop) ; 4
(declare-fun inv@241@01 ($Ref) $Ref)
(declare-fun img@242@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
; Check receiver injectivity
; Definitional axioms for inverse functions
(assert (forall ((y@240@01 $Ref)) (!
  (and (= (inv@241@01 y@240@01) y@240@01) (img@242@01 y@240@01))
  :pattern ((inv@241@01 y@240@01))
  :pattern ((img@242@01 y@240@01))
  :qid |f-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=> (img@242@01 r) (= (inv@241@01 r) r))
  :pattern ((inv@241@01 r))
  :qid |f-fctOfInv|)))
(push) ; 4
(set-option :timeout 10)
(assert (not (forall ((r $Ref)) (!
  false
  
  :qid |quant-u-21311|))))
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
(assert (not (forall ((r $Ref)) (!
  (=> (and (img@242@01 r) (= r (inv@241@01 r))) false)
  
  :qid |quant-u-21312|))))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; Done removing quantified permissions
(declare-const sm@243@01 $FVF<f>)
; Definitional axioms for snapshot map values
(declare-fun inv@244@01 ($Ref) $Ref)
(declare-fun img@245@01 ($Ref) Bool)
(set-option :timeout 10)
(check-sat)
; unknown
; Precomputing data for removing quantified permissions
(define-fun pTaken@246@01 ((r $Ref)) $Perm
  (ite
    (and (img@242@01 r) (= r (inv@241@01 r)))
    ($Perm.min
      (ite
        (and (img@239@01 r) (not (= (inv@238@01 r) x@231@01)))
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
(assert (not (forall ((r $Ref)) (!
  (=
    (-
      (ite
        (and (img@239@01 r) (not (= (inv@238@01 r) x@231@01)))
        (/ (to_real 1) (to_real 2))
        $Perm.No)
      (pTaken@246@01 r))
    $Perm.No)
  
  :qid |quant-u-21314|))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; Intermediate check if already taken enough permissions
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 500)
(assert (not (forall ((r $Ref)) (!
  (=>
    (and (img@242@01 r) (= r (inv@241@01 r)))
    (= (- $Perm.Write (pTaken@246@01 r)) $Perm.No))
  
  :qid |quant-u-21315|))))
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
    (and (img@242@01 r) (= r (inv@241@01 r)))
    (= (- $Perm.Write (pTaken@246@01 r)) $Perm.No))
  
  :qid |quant-u-21315|))))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; Done removing quantified permissions
(declare-const sm@247@01 $FVF<f>)
; Definitional axioms for snapshot map values
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@239@01 r) (not (= (inv@238@01 r) x@231@01)))
    (=
      ($FVF.lookup_f (as sm@247@01  $FVF<f>) r)
      ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> $t@236@01) r)))
  :pattern (($FVF.lookup_f (as sm@247@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> $t@236@01) r))
  :qid |qp.fvfValDef44|)))
(declare-fun inv@248@01 ($Ref) $Ref)
(declare-fun img@249@01 ($Ref) Bool)
(assert (forall ((r $Ref)) (!
  (=> (and (img@249@01 r) (< $Perm.No (pTaken@246@01 r))) (= (inv@248@01 r) r))
  :pattern ((inv@248@01 r))
  :qid |f-fctOfInv|)))
(assert (forall ((y@240@01 $Ref)) (!
  (=>
    (< $Perm.No (pTaken@246@01 y@240@01))
    (and (= (inv@248@01 y@240@01) y@240@01) (img@249@01 y@240@01)))
  :pattern ((inv@248@01 y@240@01))
  :pattern ((img@249@01 y@240@01))
  :qid |f-invOfFct|)))
(assert (= (as sm@243@01  $FVF<f>) (as sm@247@01  $FVF<f>)))
(set-option :timeout 10)
(check-sat)
; unknown
; Precomputing data for removing quantified permissions
(define-fun pTaken@250@01 ((r $Ref)) $Perm
  (ite
    (and (img@242@01 r) (= r (inv@241@01 r)))
    ($Perm.min
      (ite (img@235@01 r) $Perm.Write $Perm.No)
      (- $Perm.Write (pTaken@246@01 r)))
    $Perm.No))
; Done precomputing, updating quantified chunks
; State saturation: before repetition
(check-sat)
; unknown
; Chunk depleted?
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 500)
(assert (not (forall ((r $Ref)) (!
  (= (- (ite (img@235@01 r) $Perm.Write $Perm.No) (pTaken@250@01 r)) $Perm.No)
  
  :qid |quant-u-21317|))))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not (forall ((r $Ref)) (!
  (= (pTaken@250@01 r) $Perm.No)
  
  :qid |quant-u-21318|))))
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
    (and (img@242@01 r) (= r (inv@241@01 r)))
    (= (- (- $Perm.Write (pTaken@246@01 r)) (pTaken@250@01 r)) $Perm.No))
  
  :qid |quant-u-21319|))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; Final check if taken enough permissions
; Done removing quantified permissions
(declare-const sm@251@01 $FVF<f>)
; Definitional axioms for snapshot map values
(assert (forall ((r $Ref)) (!
  (=>
    (img@235@01 r)
    (= ($FVF.lookup_f (as sm@251@01  $FVF<f>) r) ($FVF.lookup_f $t@233@01 r)))
  :pattern (($FVF.lookup_f (as sm@251@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f $t@233@01 r))
  :qid |qp.fvfValDef45|)))
(declare-fun inv@252@01 ($Ref) $Ref)
(declare-fun img@253@01 ($Ref) Bool)
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@253@01 r) (< $Perm.No (- $Perm.Write (pTaken@246@01 r))))
    (= (inv@252@01 r) r))
  :pattern ((inv@252@01 r))
  :qid |f-fctOfInv|)))
(assert (forall ((y@240@01 $Ref)) (!
  (=>
    (< $Perm.No (- $Perm.Write (pTaken@246@01 y@240@01)))
    (and (= (inv@252@01 y@240@01) y@240@01) (img@253@01 y@240@01)))
  :pattern ((inv@252@01 y@240@01))
  :pattern ((img@253@01 y@240@01))
  :qid |f-invOfFct|)))
(assert (= (as sm@243@01  $FVF<f>) (as sm@251@01  $FVF<f>)))
(set-option :timeout 10)
(check-sat)
; unknown
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not (forall ((r $Ref)) (!
  (= (img@249@01 r) (img@245@01 r))
  
  :qid |quant-u-21320|))))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not (forall ((r $Ref)) (!
  (= (img@253@01 r) (img@249@01 r))
  
  :qid |quant-u-21321|))))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not (forall ((r $Ref)) (!
  (= (img@253@01 r) (img@245@01 r))
  
  :qid |quant-u-21322|))))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; Create MagicWandSnapFunction for wand (forall y: Ref ::y != x ==> acc(y.f, 1 / 2)) --* (forall y: Ref ::true ==> acc(y.f, write))
(declare-const mwsf@254@01 $MWSF)
(assert (forall (($t@236@01 $Snap)) (!
  (=
    (MWSF_apply mwsf@254@01 $t@236@01)
    ($SortWrappers.$FVF<f>To$Snap (as sm@251@01  $FVF<f>)))
  :pattern ((MWSF_apply mwsf@254@01 $t@236@01))
  :qid |quant-u-21323|)))
(pop) ; 3
(set-option :timeout 0)
(push) ; 3
(assert (forall (($t@236@01 $Snap)) (!
  (and
    (forall ((r $Ref)) (!
      (=>
        (and (img@239@01 r) (not (= (inv@238@01 r) x@231@01)))
        (=
          ($FVF.lookup_f (as sm@247@01  $FVF<f>) r)
          ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> $t@236@01) r)))
      :pattern (($FVF.lookup_f (as sm@247@01  $FVF<f>) r))
      :pattern (($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> $t@236@01) r))
      :qid |qp.fvfValDef44|))
    (=
      (MWSF_apply mwsf@254@01 $t@236@01)
      ($SortWrappers.$FVF<f>To$Snap (as sm@251@01  $FVF<f>))))
  :pattern ((MWSF_apply mwsf@254@01 $t@236@01))
  :qid |quant-u-21324|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@239@01 r) (not (= (inv@238@01 r) x@231@01)))
    (= (inv@238@01 r) r))
  :pattern ((inv@238@01 r))
  :qid |f-fctOfInv|)))
(assert (forall ((y@237@01 $Ref)) (!
  (=>
    (not (= y@237@01 x@231@01))
    (and (= (inv@238@01 y@237@01) y@237@01) (img@239@01 y@237@01)))
  :pattern ((inv@238@01 y@237@01))
  :pattern ((img@239@01 y@237@01))
  :qid |quant-u-21309|)))
(assert (forall ((r $Ref)) (!
  (=> (and (img@249@01 r) (< $Perm.No (pTaken@246@01 r))) (= (inv@248@01 r) r))
  :pattern ((inv@248@01 r))
  :qid |f-fctOfInv|)))
(assert (forall ((y@240@01 $Ref)) (!
  (=>
    (< $Perm.No (pTaken@246@01 y@240@01))
    (and (= (inv@248@01 y@240@01) y@240@01) (img@249@01 y@240@01)))
  :pattern ((inv@248@01 y@240@01))
  :pattern ((img@249@01 y@240@01))
  :qid |f-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=>
    (img@235@01 r)
    (= ($FVF.lookup_f (as sm@251@01  $FVF<f>) r) ($FVF.lookup_f $t@233@01 r)))
  :pattern (($FVF.lookup_f (as sm@251@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f $t@233@01 r))
  :qid |qp.fvfValDef45|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@253@01 r) (< $Perm.No (- $Perm.Write (pTaken@246@01 r))))
    (= (inv@252@01 r) r))
  :pattern ((inv@252@01 r))
  :qid |f-fctOfInv|)))
(assert (forall ((y@240@01 $Ref)) (!
  (=>
    (< $Perm.No (- $Perm.Write (pTaken@246@01 y@240@01)))
    (and (= (inv@252@01 y@240@01) y@240@01) (img@253@01 y@240@01)))
  :pattern ((inv@252@01 y@240@01))
  :pattern ((img@253@01 y@240@01))
  :qid |f-invOfFct|)))
(assert (and
  (= (as sm@243@01  $FVF<f>) (as sm@247@01  $FVF<f>))
  (= (as sm@243@01  $FVF<f>) (as sm@251@01  $FVF<f>))))
; [exec]
; assert (forall y: Ref ::y != x ==> acc(y.f, 1 / 2))
(declare-const y@255@01 $Ref)
(push) ; 4
; [eval] y != x
(assert (not (= y@255@01 x@231@01)))
(pop) ; 4
(declare-fun inv@256@01 ($Ref) $Ref)
(declare-fun img@257@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
; Check receiver injectivity
(push) ; 4
(assert (not (forall ((y1@255@01 $Ref) (y2@255@01 $Ref)) (!
  (=>
    (and
      (not (= y1@255@01 x@231@01))
      (not (= y2@255@01 x@231@01))
      (= y1@255@01 y2@255@01))
    (= y1@255@01 y2@255@01))
  
  :qid |f-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((y@255@01 $Ref)) (!
  (=>
    (not (= y@255@01 x@231@01))
    (and (= (inv@256@01 y@255@01) y@255@01) (img@257@01 y@255@01)))
  :pattern ((inv@256@01 y@255@01))
  :pattern ((img@257@01 y@255@01))
  :qid |f-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@257@01 r) (not (= (inv@256@01 r) x@231@01)))
    (= (inv@256@01 r) r))
  :pattern ((inv@256@01 r))
  :qid |f-fctOfInv|)))
; Precomputing data for removing quantified permissions
(define-fun pTaken@258@01 ((r $Ref)) $Perm
  (ite
    (and (not (= (inv@256@01 r) x@231@01)) (img@257@01 r) (= r (inv@256@01 r)))
    ($Perm.min
      (ite (img@235@01 r) (- $Perm.Write (pTaken@250@01 r)) $Perm.No)
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
(assert (not (forall ((r $Ref)) (!
  (=
    (-
      (ite (img@235@01 r) (- $Perm.Write (pTaken@250@01 r)) $Perm.No)
      (pTaken@258@01 r))
    $Perm.No)
  
  :qid |quant-u-21327|))))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not (forall ((r $Ref)) (!
  (= (pTaken@258@01 r) $Perm.No)
  
  :qid |quant-u-21328|))))
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
    (and (not (= (inv@256@01 r) x@231@01)) (img@257@01 r) (= r (inv@256@01 r)))
    (= (- (/ (to_real 1) (to_real 2)) (pTaken@258@01 r)) $Perm.No))
  
  :qid |quant-u-21329|))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; Final check if taken enough permissions
; Done removing quantified permissions
; [exec]
; assert (forall y: Ref ::true ==> acc(y.f, 1 / 2))
(declare-const y@259@01 $Ref)
(set-option :timeout 0)
(push) ; 4
(pop) ; 4
(declare-fun inv@260@01 ($Ref) $Ref)
(declare-fun img@261@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
; Check receiver injectivity
; Definitional axioms for inverse functions
(assert (forall ((y@259@01 $Ref)) (!
  (and (= (inv@260@01 y@259@01) y@259@01) (img@261@01 y@259@01))
  :pattern ((inv@260@01 y@259@01))
  :pattern ((img@261@01 y@259@01))
  :qid |f-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=> (img@261@01 r) (= (inv@260@01 r) r))
  :pattern ((inv@260@01 r))
  :qid |f-fctOfInv|)))
; Precomputing data for removing quantified permissions
(define-fun pTaken@262@01 ((r $Ref)) $Perm
  (ite
    (and (img@261@01 r) (= r (inv@260@01 r)))
    ($Perm.min
      (ite (img@235@01 r) (- $Perm.Write (pTaken@250@01 r)) $Perm.No)
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
(assert (not (forall ((r $Ref)) (!
  (=
    (-
      (ite (img@235@01 r) (- $Perm.Write (pTaken@250@01 r)) $Perm.No)
      (pTaken@262@01 r))
    $Perm.No)
  
  :qid |quant-u-21332|))))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not (forall ((r $Ref)) (!
  (= (pTaken@262@01 r) $Perm.No)
  
  :qid |quant-u-21333|))))
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
    (and (img@261@01 r) (= r (inv@260@01 r)))
    (= (- (/ (to_real 1) (to_real 2)) (pTaken@262@01 r)) $Perm.No))
  
  :qid |quant-u-21334|))))
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
    (and (img@261@01 r) (= r (inv@260@01 r)))
    (= (- (/ (to_real 1) (to_real 2)) (pTaken@262@01 r)) $Perm.No))
  
  :qid |quant-u-21334|))))
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
(declare-const sm@263@01 $FVF<f>)
; Definitional axioms for snapshot map values
(assert (forall ((r $Ref)) (!
  (=>
    (ite (img@235@01 r) (< $Perm.No (- $Perm.Write (pTaken@250@01 r))) false)
    (= ($FVF.lookup_f (as sm@263@01  $FVF<f>) r) ($FVF.lookup_f $t@233@01 r)))
  :pattern (($FVF.lookup_f (as sm@263@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f $t@233@01 r))
  :qid |qp.fvfValDef46|)))
(declare-const pm@264@01 $FPM)
(assert (forall ((r $Ref)) (!
  (=
    ($FVF.perm_f (as pm@264@01  $FPM) r)
    (ite (img@235@01 r) (- $Perm.Write (pTaken@250@01 r)) $Perm.No))
  :pattern (($FVF.perm_f (as pm@264@01  $FPM) r))
  :qid |qp.resPrmSumDef47|)))
; Assume upper permission bound for field f
(assert (forall ((r $Ref)) (!
  (<= ($FVF.perm_f (as pm@264@01  $FPM) r) $Perm.Write)
  :pattern ((inv@234@01 r))
  :qid |qp-fld-prm-bnd|)))
(declare-const y@265@01 $Ref)
(set-option :timeout 0)
(push) ; 4
(pop) ; 4
(declare-fun inv@266@01 ($Ref) $Ref)
(declare-fun img@267@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
; Check receiver injectivity
; Definitional axioms for inverse functions
(assert (forall ((y@265@01 $Ref)) (!
  (and (= (inv@266@01 y@265@01) y@265@01) (img@267@01 y@265@01))
  :pattern ((inv@266@01 y@265@01))
  :pattern ((img@267@01 y@265@01))
  :qid |f-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=> (img@267@01 r) (= (inv@266@01 r) r))
  :pattern ((inv@266@01 r))
  :qid |f-fctOfInv|)))
; Precomputing data for removing quantified permissions
(define-fun pTaken@268@01 ((r $Ref)) $Perm
  (ite
    (and (img@267@01 r) (= r (inv@266@01 r)))
    ($Perm.min
      (ite (img@235@01 r) (- $Perm.Write (pTaken@250@01 r)) $Perm.No)
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
(assert (not (forall ((r $Ref)) (!
  (=
    (-
      (ite (img@235@01 r) (- $Perm.Write (pTaken@250@01 r)) $Perm.No)
      (pTaken@268@01 r))
    $Perm.No)
  
  :qid |quant-u-21337|))))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not (forall ((r $Ref)) (!
  (= (pTaken@268@01 r) $Perm.No)
  
  :qid |quant-u-21338|))))
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
    (and (img@267@01 r) (= r (inv@266@01 r)))
    (= (- (/ (to_real 1) (to_real 2)) (pTaken@268@01 r)) $Perm.No))
  
  :qid |quant-u-21339|))))
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
    (and (img@267@01 r) (= r (inv@266@01 r)))
    (= (- (/ (to_real 1) (to_real 2)) (pTaken@268@01 r)) $Perm.No))
  
  :qid |quant-u-21339|))))
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
(declare-const x@269@01 $Ref)
(declare-const x@270@01 $Ref)
(push) ; 1
(declare-const $t@271@01 $Snap)
(assert (= $t@271@01 ($Snap.combine ($Snap.first $t@271@01) ($Snap.second $t@271@01))))
(declare-const y@272@01 $Ref)
(push) ; 2
(pop) ; 2
(declare-fun inv@273@01 ($Ref) $Ref)
(declare-fun img@274@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
; Check receiver injectivity
; Definitional axioms for inverse functions
(assert (forall ((y@272@01 $Ref)) (!
  (and (= (inv@273@01 y@272@01) y@272@01) (img@274@01 y@272@01))
  :pattern ((inv@273@01 y@272@01))
  :pattern ((img@274@01 y@272@01))
  :qid |quant-u-21341|)))
(assert (forall ((r $Ref)) (!
  (=> (img@274@01 r) (= (inv@273@01 r) r))
  :pattern ((inv@273@01 r))
  :qid |f-fctOfInv|)))
; Permissions are non-negative
; Field permissions are at most one
; Permission implies non-null receiver
(assert (forall ((y@272@01 $Ref)) (!
  (not (= y@272@01 $Ref.null))
  :pattern ((inv@273@01 y@272@01))
  :pattern ((img@274@01 y@272@01))
  :qid |f-permImpliesNonNull|)))
(assert (= ($Snap.second $t@271@01) $Snap.unit))
; [eval] x.f == 0
(push) ; 2
(assert (not (img@274@01 x@270@01)))
(check-sat)
; unsat
(pop) ; 2
; 0.00s
; (get-info :all-statistics)
(assert (=
  ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@271@01)) x@270@01)
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
; package (forall y: Ref ::true ==> acc(y.f, 1 / 2)) --* true {
;   assert acc(x.f, write) && x.f == 0
; }
(push) ; 3
(declare-const $t@275@01 $Snap)
(declare-const y@276@01 $Ref)
(push) ; 4
(pop) ; 4
(declare-fun inv@277@01 ($Ref) $Ref)
(declare-fun img@278@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
; Check receiver injectivity
; Definitional axioms for inverse functions
(assert (forall ((y@276@01 $Ref)) (!
  (and (= (inv@277@01 y@276@01) y@276@01) (img@278@01 y@276@01))
  :pattern ((inv@277@01 y@276@01))
  :pattern ((img@278@01 y@276@01))
  :qid |quant-u-21343|)))
(assert (forall ((r $Ref)) (!
  (=> (img@278@01 r) (= (inv@277@01 r) r))
  :pattern ((inv@277@01 r))
  :qid |f-fctOfInv|)))
; Permissions are non-negative
; Field permissions are at most one
; Permission implies non-null receiver
(assert (forall ((y@276@01 $Ref)) (!
  (not (= y@276@01 $Ref.null))
  :pattern ((inv@277@01 y@276@01))
  :pattern ((img@278@01 y@276@01))
  :qid |f-permImpliesNonNull|)))
; [exec]
; assert acc(x.f, write) && x.f == 0
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
(assert (not (forall ((r $Ref)) (!
  (=> (= r x@270@01) false)
  
  :qid |quant-u-21344|))))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; Done removing quantified permissions
(declare-const sm@279@01 $FVF<f>)
; Definitional axioms for snapshot map values (instantiated)
(set-option :timeout 10)
(check-sat)
; unknown
; Precomputing data for removing quantified permissions
(define-fun pTaken@280@01 ((r $Ref)) $Perm
  (ite
    (= r x@270@01)
    ($Perm.min
      (ite (img@278@01 r) (/ (to_real 1) (to_real 2)) $Perm.No)
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
(assert (not (forall ((r $Ref)) (!
  (=
    (-
      (ite (img@278@01 r) (/ (to_real 1) (to_real 2)) $Perm.No)
      (pTaken@280@01 r))
    $Perm.No)
  
  :qid |quant-u-21346|))))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not (forall ((r $Ref)) (!
  (= (pTaken@280@01 r) $Perm.No)
  
  :qid |quant-u-21347|))))
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
  (=> (= r x@270@01) (= (- $Perm.Write (pTaken@280@01 r)) $Perm.No))
  
  :qid |quant-u-21348|))))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; Final check if taken enough permissions
(set-option :timeout 0)
(push) ; 4
(assert (not (forall ((r $Ref)) (!
  (=> (= r x@270@01) (= (- $Perm.Write (pTaken@280@01 r)) $Perm.No))
  
  :qid |quant-u-21348|))))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; Done removing quantified permissions
(declare-const sm@281@01 $FVF<f>)
; Definitional axioms for snapshot map values (instantiated)
(assert (=>
  (img@278@01 x@270@01)
  (=
    ($FVF.lookup_f (as sm@281@01  $FVF<f>) x@270@01)
    ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> $t@275@01) x@270@01))))
(assert (= (as sm@279@01  $FVF<f>) (as sm@281@01  $FVF<f>)))
(set-option :timeout 10)
(check-sat)
; unknown
; Precomputing data for removing quantified permissions
(define-fun pTaken@282@01 ((r $Ref)) $Perm
  (ite
    (= r x@270@01)
    ($Perm.min
      (ite (img@274@01 r) (/ (to_real 1) (to_real 2)) $Perm.No)
      (- $Perm.Write (pTaken@280@01 r)))
    $Perm.No))
; Done precomputing, updating quantified chunks
; State saturation: before repetition
(check-sat)
; unknown
; Chunk depleted?
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 500)
(assert (not (forall ((r $Ref)) (!
  (=
    (-
      (ite (img@274@01 r) (/ (to_real 1) (to_real 2)) $Perm.No)
      (pTaken@282@01 r))
    $Perm.No)
  
  :qid |quant-u-21350|))))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not (forall ((r $Ref)) (!
  (= (pTaken@282@01 r) $Perm.No)
  
  :qid |quant-u-21351|))))
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
    (= r x@270@01)
    (= (- (- $Perm.Write (pTaken@280@01 r)) (pTaken@282@01 r)) $Perm.No))
  
  :qid |quant-u-21352|))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; Final check if taken enough permissions
; Done removing quantified permissions
(declare-const sm@283@01 $FVF<f>)
; Definitional axioms for snapshot map values (instantiated)
(assert (=>
  (img@274@01 x@270@01)
  (=
    ($FVF.lookup_f (as sm@283@01  $FVF<f>) x@270@01)
    ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@271@01)) x@270@01))))
(assert (= (as sm@279@01  $FVF<f>) (as sm@283@01  $FVF<f>)))
(set-option :timeout 10)
(check-sat)
; unknown
(declare-const $t@284@01 $FVF<f>)
(declare-const $t@285@01 $FVF<f>)
(assert (forall ((r $Ref)) (!
  (=>
    (ite (= r x@270@01) (< $Perm.No (pTaken@280@01 r)) false)
    (= ($FVF.lookup_f $t@284@01 r) ($FVF.lookup_f (as sm@281@01  $FVF<f>) r)))
  :pattern (($FVF.lookup_f (as sm@279@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f (as sm@281@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f $t@284@01 r))
  :qid |quant-u-21353|)))
(assert (forall ((r $Ref)) (!
  (and
    (=>
      (ite (= r x@270@01) (< $Perm.No (pTaken@280@01 r)) false)
      (= ($FVF.lookup_f $t@285@01 r) ($FVF.lookup_f $t@284@01 r)))
    (=>
      (ite (= r x@270@01) (< $Perm.No (- $Perm.Write (pTaken@280@01 r))) false)
      (= ($FVF.lookup_f $t@285@01 r) ($FVF.lookup_f (as sm@283@01  $FVF<f>) r))))
  :pattern (($FVF.lookup_f $t@284@01 r))
  :pattern (($FVF.lookup_f (as sm@283@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f $t@285@01 r))
  :qid |quant-u-21354|)))
; [eval] x.f == 0
(declare-const sm@286@01 $FVF<f>)
; Definitional axioms for snapshot map values
(assert (forall ((r $Ref)) (!
  (=>
    (ite
      (img@278@01 r)
      (< $Perm.No (- (/ (to_real 1) (to_real 2)) (pTaken@280@01 r)))
      false)
    (=
      ($FVF.lookup_f (as sm@286@01  $FVF<f>) r)
      ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> $t@275@01) r)))
  :pattern (($FVF.lookup_f (as sm@286@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> $t@275@01) r))
  :qid |qp.fvfValDef50|)))
(assert (forall ((r $Ref)) (!
  (=>
    (= r x@270@01)
    (= ($FVF.lookup_f (as sm@286@01  $FVF<f>) r) ($FVF.lookup_f $t@285@01 r)))
  :pattern (($FVF.lookup_f (as sm@286@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f $t@285@01 r))
  :qid |qp.fvfValDef51|)))
(declare-const pm@287@01 $FPM)
(assert (forall ((r $Ref)) (!
  (=
    ($FVF.perm_f (as pm@287@01  $FPM) r)
    (+
      (ite
        (img@278@01 r)
        (- (/ (to_real 1) (to_real 2)) (pTaken@280@01 r))
        $Perm.No)
      (ite (= r x@270@01) $Perm.Write $Perm.No)))
  :pattern (($FVF.perm_f (as pm@287@01  $FPM) r))
  :qid |qp.resPrmSumDef52|)))
(set-option :timeout 0)
(push) ; 4
(assert (not (< $Perm.No ($FVF.perm_f (as pm@287@01  $FPM) x@270@01))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(push) ; 4
(assert (not (= ($FVF.lookup_f (as sm@286@01  $FVF<f>) x@270@01) 0)))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(assert (= ($FVF.lookup_f (as sm@286@01  $FVF<f>) x@270@01) 0))
; Create MagicWandSnapFunction for wand (forall y: Ref ::true ==> acc(y.f, 1 / 2)) --* true
(declare-const mwsf@288@01 $MWSF)
(assert (forall (($t@275@01 $Snap)) (!
  (= (MWSF_apply mwsf@288@01 $t@275@01) $Snap.unit)
  :pattern ((MWSF_apply mwsf@288@01 $t@275@01))
  :qid |quant-u-21355|)))
(pop) ; 3
(push) ; 3
(assert (forall (($t@275@01 $Snap)) (!
  (and
    (and
      (=>
        (img@278@01 x@270@01)
        (=
          ($FVF.lookup_f (as sm@281@01  $FVF<f>) x@270@01)
          ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> $t@275@01) x@270@01)))
      (= (as sm@279@01  $FVF<f>) (as sm@281@01  $FVF<f>))
      (=>
        (img@274@01 x@270@01)
        (=
          ($FVF.lookup_f (as sm@283@01  $FVF<f>) x@270@01)
          ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@271@01)) x@270@01)))
      (= (as sm@279@01  $FVF<f>) (as sm@283@01  $FVF<f>)))
    (= (MWSF_apply mwsf@288@01 $t@275@01) $Snap.unit))
  :pattern ((MWSF_apply mwsf@288@01 $t@275@01))
  :qid |quant-u-21356|)))
(assert (forall ((r $Ref)) (!
  (=> (img@278@01 r) (= (inv@277@01 r) r))
  :pattern ((inv@277@01 r))
  :qid |f-fctOfInv|)))
(assert (forall ((y@276@01 $Ref)) (!
  (and (= (inv@277@01 y@276@01) y@276@01) (img@278@01 y@276@01))
  :pattern ((inv@277@01 y@276@01))
  :pattern ((img@278@01 y@276@01))
  :qid |quant-u-21343|)))
; [exec]
; assert (forall y: Ref ::y != x ==> acc(y.f, 1 / 2))
(declare-const y@289@01 $Ref)
(push) ; 4
; [eval] y != x
(assert (not (= y@289@01 x@270@01)))
(pop) ; 4
(declare-fun inv@290@01 ($Ref) $Ref)
(declare-fun img@291@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
; Check receiver injectivity
(push) ; 4
(assert (not (forall ((y1@289@01 $Ref) (y2@289@01 $Ref)) (!
  (=>
    (and
      (not (= y1@289@01 x@270@01))
      (not (= y2@289@01 x@270@01))
      (= y1@289@01 y2@289@01))
    (= y1@289@01 y2@289@01))
  
  :qid |f-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((y@289@01 $Ref)) (!
  (=>
    (not (= y@289@01 x@270@01))
    (and (= (inv@290@01 y@289@01) y@289@01) (img@291@01 y@289@01)))
  :pattern ((inv@290@01 y@289@01))
  :pattern ((img@291@01 y@289@01))
  :qid |f-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@291@01 r) (not (= (inv@290@01 r) x@270@01)))
    (= (inv@290@01 r) r))
  :pattern ((inv@290@01 r))
  :qid |f-fctOfInv|)))
; Precomputing data for removing quantified permissions
(define-fun pTaken@292@01 ((r $Ref)) $Perm
  (ite
    (and (not (= (inv@290@01 r) x@270@01)) (img@291@01 r) (= r (inv@290@01 r)))
    ($Perm.min
      (ite
        (img@274@01 r)
        (- (/ (to_real 1) (to_real 2)) (pTaken@282@01 r))
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
(assert (not (forall ((r $Ref)) (!
  (=
    (-
      (ite
        (img@274@01 r)
        (- (/ (to_real 1) (to_real 2)) (pTaken@282@01 r))
        $Perm.No)
      (pTaken@292@01 r))
    $Perm.No)
  
  :qid |quant-u-21359|))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; Intermediate check if already taken enough permissions
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 500)
(assert (not (forall ((r $Ref)) (!
  (=>
    (and (not (= (inv@290@01 r) x@270@01)) (img@291@01 r) (= r (inv@290@01 r)))
    (= (- (/ (to_real 1) (to_real 2)) (pTaken@292@01 r)) $Perm.No))
  
  :qid |quant-u-21360|))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; Final check if taken enough permissions
; Done removing quantified permissions
; [exec]
; assert (forall y: Ref ::true ==> acc(y.f, 1 / 2))
(declare-const y@293@01 $Ref)
(set-option :timeout 0)
(push) ; 4
(pop) ; 4
(declare-fun inv@294@01 ($Ref) $Ref)
(declare-fun img@295@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
; Check receiver injectivity
; Definitional axioms for inverse functions
(assert (forall ((y@293@01 $Ref)) (!
  (and (= (inv@294@01 y@293@01) y@293@01) (img@295@01 y@293@01))
  :pattern ((inv@294@01 y@293@01))
  :pattern ((img@295@01 y@293@01))
  :qid |f-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=> (img@295@01 r) (= (inv@294@01 r) r))
  :pattern ((inv@294@01 r))
  :qid |f-fctOfInv|)))
; Precomputing data for removing quantified permissions
(define-fun pTaken@296@01 ((r $Ref)) $Perm
  (ite
    (and (img@295@01 r) (= r (inv@294@01 r)))
    ($Perm.min
      (ite
        (img@274@01 r)
        (- (/ (to_real 1) (to_real 2)) (pTaken@282@01 r))
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
(assert (not (forall ((r $Ref)) (!
  (=
    (-
      (ite
        (img@274@01 r)
        (- (/ (to_real 1) (to_real 2)) (pTaken@282@01 r))
        $Perm.No)
      (pTaken@296@01 r))
    $Perm.No)
  
  :qid |quant-u-21363|))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; Intermediate check if already taken enough permissions
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 500)
(assert (not (forall ((r $Ref)) (!
  (=>
    (and (img@295@01 r) (= r (inv@294@01 r)))
    (= (- (/ (to_real 1) (to_real 2)) (pTaken@296@01 r)) $Perm.No))
  
  :qid |quant-u-21364|))))
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
    (and (img@295@01 r) (= r (inv@294@01 r)))
    (= (- (/ (to_real 1) (to_real 2)) (pTaken@296@01 r)) $Perm.No))
  
  :qid |quant-u-21364|))))
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
(declare-const sm@297@01 $FVF<f>)
; Definitional axioms for snapshot map values
(assert (forall ((r $Ref)) (!
  (=>
    (ite
      (img@274@01 r)
      (< $Perm.No (- (/ (to_real 1) (to_real 2)) (pTaken@282@01 r)))
      false)
    (=
      ($FVF.lookup_f (as sm@297@01  $FVF<f>) r)
      ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@271@01)) r)))
  :pattern (($FVF.lookup_f (as sm@297@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@271@01)) r))
  :qid |qp.fvfValDef53|)))
(declare-const pm@298@01 $FPM)
(assert (forall ((r $Ref)) (!
  (=
    ($FVF.perm_f (as pm@298@01  $FPM) r)
    (ite
      (img@274@01 r)
      (- (/ (to_real 1) (to_real 2)) (pTaken@282@01 r))
      $Perm.No))
  :pattern (($FVF.perm_f (as pm@298@01  $FPM) r))
  :qid |qp.resPrmSumDef54|)))
; Assume upper permission bound for field f
(assert (forall ((r $Ref)) (!
  (<= ($FVF.perm_f (as pm@298@01  $FPM) r) $Perm.Write)
  :pattern ((inv@273@01 r))
  :qid |qp-fld-prm-bnd|)))
(declare-const y@299@01 $Ref)
(set-option :timeout 0)
(push) ; 4
(pop) ; 4
(declare-fun inv@300@01 ($Ref) $Ref)
(declare-fun img@301@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
; Check receiver injectivity
; Definitional axioms for inverse functions
(assert (forall ((y@299@01 $Ref)) (!
  (and (= (inv@300@01 y@299@01) y@299@01) (img@301@01 y@299@01))
  :pattern ((inv@300@01 y@299@01))
  :pattern ((img@301@01 y@299@01))
  :qid |f-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=> (img@301@01 r) (= (inv@300@01 r) r))
  :pattern ((inv@300@01 r))
  :qid |f-fctOfInv|)))
; Precomputing data for removing quantified permissions
(define-fun pTaken@302@01 ((r $Ref)) $Perm
  (ite
    (and (img@301@01 r) (= r (inv@300@01 r)))
    ($Perm.min
      (ite
        (img@274@01 r)
        (- (/ (to_real 1) (to_real 2)) (pTaken@282@01 r))
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
(assert (not (forall ((r $Ref)) (!
  (=
    (-
      (ite
        (img@274@01 r)
        (- (/ (to_real 1) (to_real 2)) (pTaken@282@01 r))
        $Perm.No)
      (pTaken@302@01 r))
    $Perm.No)
  
  :qid |quant-u-21367|))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; Intermediate check if already taken enough permissions
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 500)
(assert (not (forall ((r $Ref)) (!
  (=>
    (and (img@301@01 r) (= r (inv@300@01 r)))
    (= (- (/ (to_real 1) (to_real 2)) (pTaken@302@01 r)) $Perm.No))
  
  :qid |quant-u-21368|))))
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
    (and (img@301@01 r) (= r (inv@300@01 r)))
    (= (- (/ (to_real 1) (to_real 2)) (pTaken@302@01 r)) $Perm.No))
  
  :qid |quant-u-21368|))))
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
(declare-const x@303@01 $Ref)
(declare-const x@304@01 $Ref)
(push) ; 1
(declare-const $t@305@01 $Snap)
(assert (= $t@305@01 ($Snap.combine ($Snap.first $t@305@01) ($Snap.second $t@305@01))))
(declare-const y@306@01 $Ref)
(push) ; 2
(pop) ; 2
(declare-fun inv@307@01 ($Ref) $Ref)
(declare-fun img@308@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
; Check receiver injectivity
; Definitional axioms for inverse functions
(assert (forall ((y@306@01 $Ref)) (!
  (and (= (inv@307@01 y@306@01) y@306@01) (img@308@01 y@306@01))
  :pattern ((inv@307@01 y@306@01))
  :pattern ((img@308@01 y@306@01))
  :qid |quant-u-21370|)))
(assert (forall ((r $Ref)) (!
  (=> (img@308@01 r) (= (inv@307@01 r) r))
  :pattern ((inv@307@01 r))
  :qid |f-fctOfInv|)))
; Permissions are non-negative
; Field permissions are at most one
; Permission implies non-null receiver
(assert (forall ((y@306@01 $Ref)) (!
  (not (= y@306@01 $Ref.null))
  :pattern ((inv@307@01 y@306@01))
  :pattern ((img@308@01 y@306@01))
  :qid |f-permImpliesNonNull|)))
(assert (= ($Snap.second $t@305@01) $Snap.unit))
; [eval] x.f == 0
(push) ; 2
(assert (not (img@308@01 x@304@01)))
(check-sat)
; unsat
(pop) ; 2
; 0.00s
; (get-info :all-statistics)
(assert (=
  ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@305@01)) x@304@01)
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
; package (forall y: Ref ::true ==> acc(y.f, write)) --*
; (forall y: Ref ::true ==> acc(y.f, write)) {
; }
(push) ; 3
(declare-const $t@309@01 $Snap)
(declare-const y@310@01 $Ref)
(push) ; 4
(pop) ; 4
(declare-fun inv@311@01 ($Ref) $Ref)
(declare-fun img@312@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
; Check receiver injectivity
; Definitional axioms for inverse functions
(assert (forall ((y@310@01 $Ref)) (!
  (and (= (inv@311@01 y@310@01) y@310@01) (img@312@01 y@310@01))
  :pattern ((inv@311@01 y@310@01))
  :pattern ((img@312@01 y@310@01))
  :qid |quant-u-21372|)))
(assert (forall ((r $Ref)) (!
  (=> (img@312@01 r) (= (inv@311@01 r) r))
  :pattern ((inv@311@01 r))
  :qid |f-fctOfInv|)))
; Permissions are non-negative
; Field permissions are at most one
; Permission implies non-null receiver
(assert (forall ((y@310@01 $Ref)) (!
  (not (= y@310@01 $Ref.null))
  :pattern ((inv@311@01 y@310@01))
  :pattern ((img@312@01 y@310@01))
  :qid |f-permImpliesNonNull|)))
(declare-const y@313@01 $Ref)
(push) ; 4
(pop) ; 4
(declare-fun inv@314@01 ($Ref) $Ref)
(declare-fun img@315@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
; Check receiver injectivity
; Definitional axioms for inverse functions
(assert (forall ((y@313@01 $Ref)) (!
  (and (= (inv@314@01 y@313@01) y@313@01) (img@315@01 y@313@01))
  :pattern ((inv@314@01 y@313@01))
  :pattern ((img@315@01 y@313@01))
  :qid |f-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=> (img@315@01 r) (= (inv@314@01 r) r))
  :pattern ((inv@314@01 r))
  :qid |f-fctOfInv|)))
(push) ; 4
(set-option :timeout 10)
(assert (not (forall ((r $Ref)) (!
  false
  
  :qid |quant-u-21374|))))
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
(assert (not (forall ((r $Ref)) (!
  (=> (and (img@315@01 r) (= r (inv@314@01 r))) false)
  
  :qid |quant-u-21375|))))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; Done removing quantified permissions
(declare-const sm@316@01 $FVF<f>)
; Definitional axioms for snapshot map values
(declare-fun inv@317@01 ($Ref) $Ref)
(declare-fun img@318@01 ($Ref) Bool)
(set-option :timeout 10)
(check-sat)
; unknown
; Precomputing data for removing quantified permissions
(define-fun pTaken@319@01 ((r $Ref)) $Perm
  (ite
    (and (img@315@01 r) (= r (inv@314@01 r)))
    ($Perm.min (ite (img@312@01 r) $Perm.Write $Perm.No) $Perm.Write)
    $Perm.No))
; Done precomputing, updating quantified chunks
; State saturation: before repetition
(check-sat)
; unknown
; Chunk depleted?
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 500)
(assert (not (forall ((r $Ref)) (!
  (= (- (ite (img@312@01 r) $Perm.Write $Perm.No) (pTaken@319@01 r)) $Perm.No)
  
  :qid |quant-u-21377|))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; Intermediate check if already taken enough permissions
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 500)
(assert (not (forall ((r $Ref)) (!
  (=>
    (and (img@315@01 r) (= r (inv@314@01 r)))
    (= (- $Perm.Write (pTaken@319@01 r)) $Perm.No))
  
  :qid |quant-u-21378|))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; Final check if taken enough permissions
; Done removing quantified permissions
(declare-const sm@320@01 $FVF<f>)
; Definitional axioms for snapshot map values
(assert (forall ((r $Ref)) (!
  (=>
    (img@312@01 r)
    (=
      ($FVF.lookup_f (as sm@320@01  $FVF<f>) r)
      ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> $t@309@01) r)))
  :pattern (($FVF.lookup_f (as sm@320@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> $t@309@01) r))
  :qid |qp.fvfValDef55|)))
(declare-fun inv@321@01 ($Ref) $Ref)
(declare-fun img@322@01 ($Ref) Bool)
(assert (forall ((r $Ref)) (!
  (=> (img@322@01 r) (= (inv@321@01 r) r))
  :pattern ((inv@321@01 r))
  :qid |f-fctOfInv|)))
(assert (forall ((y@313@01 $Ref)) (!
  (and (= (inv@321@01 y@313@01) y@313@01) (img@322@01 y@313@01))
  :pattern ((inv@321@01 y@313@01))
  :pattern ((img@322@01 y@313@01))
  :qid |f-invOfFct|)))
(assert (= (as sm@316@01  $FVF<f>) (as sm@320@01  $FVF<f>)))
(set-option :timeout 10)
(check-sat)
; unknown
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not (forall ((r $Ref)) (!
  (= (img@322@01 r) (img@318@01 r))
  
  :qid |quant-u-21379|))))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; Create MagicWandSnapFunction for wand (forall y: Ref ::true ==> acc(y.f, write)) --* (forall y: Ref ::true ==> acc(y.f, write))
(declare-const mwsf@323@01 $MWSF)
(assert (forall (($t@309@01 $Snap)) (!
  (=
    (MWSF_apply mwsf@323@01 $t@309@01)
    ($SortWrappers.$FVF<f>To$Snap (as sm@320@01  $FVF<f>)))
  :pattern ((MWSF_apply mwsf@323@01 $t@309@01))
  :qid |quant-u-21380|)))
(pop) ; 3
(set-option :timeout 0)
(push) ; 3
(assert (forall (($t@309@01 $Snap)) (!
  (and
    (forall ((r $Ref)) (!
      (=>
        (img@312@01 r)
        (=
          ($FVF.lookup_f (as sm@320@01  $FVF<f>) r)
          ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> $t@309@01) r)))
      :pattern (($FVF.lookup_f (as sm@320@01  $FVF<f>) r))
      :pattern (($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> $t@309@01) r))
      :qid |qp.fvfValDef55|))
    (=
      (MWSF_apply mwsf@323@01 $t@309@01)
      ($SortWrappers.$FVF<f>To$Snap (as sm@320@01  $FVF<f>))))
  :pattern ((MWSF_apply mwsf@323@01 $t@309@01))
  :qid |quant-u-21381|)))
(assert (forall ((r $Ref)) (!
  (=> (img@312@01 r) (= (inv@311@01 r) r))
  :pattern ((inv@311@01 r))
  :qid |f-fctOfInv|)))
(assert (forall ((y@310@01 $Ref)) (!
  (and (= (inv@311@01 y@310@01) y@310@01) (img@312@01 y@310@01))
  :pattern ((inv@311@01 y@310@01))
  :pattern ((img@312@01 y@310@01))
  :qid |quant-u-21372|)))
(assert (forall ((r $Ref)) (!
  (=> (img@322@01 r) (= (inv@321@01 r) r))
  :pattern ((inv@321@01 r))
  :qid |f-fctOfInv|)))
(assert (forall ((y@313@01 $Ref)) (!
  (and (= (inv@321@01 y@313@01) y@313@01) (img@322@01 y@313@01))
  :pattern ((inv@321@01 y@313@01))
  :pattern ((img@322@01 y@313@01))
  :qid |f-invOfFct|)))
(assert (= (as sm@316@01  $FVF<f>) (as sm@320@01  $FVF<f>)))
; [exec]
; apply (forall y: Ref ::true ==> acc(y.f, write)) --*
;   (forall y: Ref ::true ==> acc(y.f, write))
(declare-const y@324@01 $Ref)
(push) ; 4
(pop) ; 4
(declare-fun inv@325@01 ($Ref) $Ref)
(declare-fun img@326@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
; Check receiver injectivity
; Definitional axioms for inverse functions
(assert (forall ((y@324@01 $Ref)) (!
  (and (= (inv@325@01 y@324@01) y@324@01) (img@326@01 y@324@01))
  :pattern ((inv@325@01 y@324@01))
  :pattern ((img@326@01 y@324@01))
  :qid |f-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=> (img@326@01 r) (= (inv@325@01 r) r))
  :pattern ((inv@325@01 r))
  :qid |f-fctOfInv|)))
; Precomputing data for removing quantified permissions
(define-fun pTaken@327@01 ((r $Ref)) $Perm
  (ite
    (and (img@326@01 r) (= r (inv@325@01 r)))
    ($Perm.min (ite (img@308@01 r) $Perm.Write $Perm.No) $Perm.Write)
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
  (= (- (ite (img@308@01 r) $Perm.Write $Perm.No) (pTaken@327@01 r)) $Perm.No)
  
  :qid |quant-u-21384|))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; Intermediate check if already taken enough permissions
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 500)
(assert (not (forall ((r $Ref)) (!
  (=>
    (and (img@326@01 r) (= r (inv@325@01 r)))
    (= (- $Perm.Write (pTaken@327@01 r)) $Perm.No))
  
  :qid |quant-u-21385|))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; Final check if taken enough permissions
; Done removing quantified permissions
(declare-const sm@328@01 $FVF<f>)
; Definitional axioms for snapshot map values
(assert (forall ((r $Ref)) (!
  (=>
    (img@308@01 r)
    (=
      ($FVF.lookup_f (as sm@328@01  $FVF<f>) r)
      ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@305@01)) r)))
  :pattern (($FVF.lookup_f (as sm@328@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@305@01)) r))
  :qid |qp.fvfValDef56|)))
(declare-const y@329@01 $Ref)
(set-option :timeout 0)
(push) ; 4
(pop) ; 4
(declare-fun inv@330@01 ($Ref) $Ref)
(declare-fun img@331@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
; Check receiver injectivity
; Definitional axioms for inverse functions
(assert (forall ((y@329@01 $Ref)) (!
  (and (= (inv@330@01 y@329@01) y@329@01) (img@331@01 y@329@01))
  :pattern ((inv@330@01 y@329@01))
  :pattern ((img@331@01 y@329@01))
  :qid |quant-u-21387|)))
(assert (forall ((r $Ref)) (!
  (=> (img@331@01 r) (= (inv@330@01 r) r))
  :pattern ((inv@330@01 r))
  :qid |f-fctOfInv|)))
; Permissions are non-negative
; Field permissions are at most one
; Permission implies non-null receiver
(assert (forall ((y@329@01 $Ref)) (!
  (not (= y@329@01 $Ref.null))
  :pattern ((inv@330@01 y@329@01))
  :pattern ((img@331@01 y@329@01))
  :qid |f-permImpliesNonNull|)))
; [state consolidation]
; State saturation: before repetition
(set-option :timeout 10)
(check-sat)
; unknown
(declare-const sm@332@01 $FVF<f>)
; Definitional axioms for snapshot map values
(assert (forall ((r $Ref)) (!
  (=>
    (img@331@01 r)
    (=
      ($FVF.lookup_f (as sm@332@01  $FVF<f>) r)
      ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> (MWSF_apply mwsf@323@01 ($SortWrappers.$FVF<f>To$Snap (as sm@328@01  $FVF<f>)))) r)))
  :pattern (($FVF.lookup_f (as sm@332@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> (MWSF_apply mwsf@323@01 ($SortWrappers.$FVF<f>To$Snap (as sm@328@01  $FVF<f>)))) r))
  :qid |qp.fvfValDef57|)))
(declare-const pm@333@01 $FPM)
(assert (forall ((r $Ref)) (!
  (=
    ($FVF.perm_f (as pm@333@01  $FPM) r)
    (ite (img@331@01 r) $Perm.Write $Perm.No))
  :pattern (($FVF.perm_f (as pm@333@01  $FPM) r))
  :qid |qp.resPrmSumDef58|)))
; Assume upper permission bound for field f
(assert (forall ((r $Ref)) (!
  (<= ($FVF.perm_f (as pm@333@01  $FPM) r) $Perm.Write)
  :pattern ((inv@330@01 r))
  :qid |qp-fld-prm-bnd|)))
; [exec]
; assert x.f == 0
; [eval] x.f == 0
(set-option :timeout 0)
(push) ; 4
(assert (not (img@331@01 x@304@01)))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(push) ; 4
(assert (not (= ($FVF.lookup_f (as sm@332@01  $FVF<f>) x@304@01) 0)))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(assert (= ($FVF.lookup_f (as sm@332@01  $FVF<f>) x@304@01) 0))
(pop) ; 3
(pop) ; 2
(pop) ; 1
; ---------- test8 ----------
(declare-const x@334@01 $Ref)
(declare-const x@335@01 $Ref)
(push) ; 1
(declare-const $t@336@01 $Snap)
(assert (= $t@336@01 ($Snap.combine ($Snap.first $t@336@01) ($Snap.second $t@336@01))))
(declare-const y@337@01 $Ref)
(push) ; 2
(pop) ; 2
(declare-fun inv@338@01 ($Ref) $Ref)
(declare-fun img@339@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
; Check receiver injectivity
; Definitional axioms for inverse functions
(assert (forall ((y@337@01 $Ref)) (!
  (and (= (inv@338@01 y@337@01) y@337@01) (img@339@01 y@337@01))
  :pattern ((inv@338@01 y@337@01))
  :pattern ((img@339@01 y@337@01))
  :qid |quant-u-21389|)))
(assert (forall ((r $Ref)) (!
  (=> (img@339@01 r) (= (inv@338@01 r) r))
  :pattern ((inv@338@01 r))
  :qid |f-fctOfInv|)))
; Permissions are non-negative
; Field permissions are at most one
; Permission implies non-null receiver
(assert (forall ((y@337@01 $Ref)) (!
  (not (= y@337@01 $Ref.null))
  :pattern ((inv@338@01 y@337@01))
  :pattern ((img@339@01 y@337@01))
  :qid |f-permImpliesNonNull|)))
(assert (= ($Snap.second $t@336@01) $Snap.unit))
; [eval] x.f == 0
(push) ; 2
(assert (not (img@339@01 x@335@01)))
(check-sat)
; unsat
(pop) ; 2
; 0.00s
; (get-info :all-statistics)
(assert (=
  ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@336@01)) x@335@01)
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
; package true --* (forall y: Ref ::true ==> acc(y.f, write)) {
; }
(push) ; 3
(declare-const $t@340@01 $Snap)
(assert (= $t@340@01 $Snap.unit))
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
  :qid |f-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=> (img@343@01 r) (= (inv@342@01 r) r))
  :pattern ((inv@342@01 r))
  :qid |f-fctOfInv|)))
(push) ; 4
(set-option :timeout 10)
(assert (not (forall ((r $Ref)) (!
  false
  
  :qid |quant-u-21391|))))
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
(assert (not (forall ((r $Ref)) (!
  (=> (and (img@343@01 r) (= r (inv@342@01 r))) false)
  
  :qid |quant-u-21392|))))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; Done removing quantified permissions
(declare-const sm@344@01 $FVF<f>)
; Definitional axioms for snapshot map values
(declare-fun inv@345@01 ($Ref) $Ref)
(declare-fun img@346@01 ($Ref) Bool)
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
(assert (not (forall ((r $Ref)) (!
  (=> (and (img@343@01 r) (= r (inv@342@01 r))) false)
  
  :qid |quant-u-21393|))))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; Done removing quantified permissions
(declare-const sm@347@01 $FVF<f>)
; Definitional axioms for snapshot map values
(declare-fun inv@348@01 ($Ref) $Ref)
(declare-fun img@349@01 ($Ref) Bool)
(assert (= (as sm@344@01  $FVF<f>) (as sm@347@01  $FVF<f>)))
(set-option :timeout 10)
(check-sat)
; unknown
; Precomputing data for removing quantified permissions
(define-fun pTaken@350@01 ((r $Ref)) $Perm
  (ite
    (and (img@343@01 r) (= r (inv@342@01 r)))
    ($Perm.min (ite (img@339@01 r) $Perm.Write $Perm.No) $Perm.Write)
    $Perm.No))
; Done precomputing, updating quantified chunks
; State saturation: before repetition
(check-sat)
; unknown
; Chunk depleted?
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 500)
(assert (not (forall ((r $Ref)) (!
  (= (- (ite (img@339@01 r) $Perm.Write $Perm.No) (pTaken@350@01 r)) $Perm.No)
  
  :qid |quant-u-21395|))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; Intermediate check if already taken enough permissions
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 500)
(assert (not (forall ((r $Ref)) (!
  (=>
    (and (img@343@01 r) (= r (inv@342@01 r)))
    (= (- $Perm.Write (pTaken@350@01 r)) $Perm.No))
  
  :qid |quant-u-21396|))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; Final check if taken enough permissions
; Done removing quantified permissions
(declare-const sm@351@01 $FVF<f>)
; Definitional axioms for snapshot map values
(assert (forall ((r $Ref)) (!
  (=>
    (img@339@01 r)
    (=
      ($FVF.lookup_f (as sm@351@01  $FVF<f>) r)
      ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@336@01)) r)))
  :pattern (($FVF.lookup_f (as sm@351@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@336@01)) r))
  :qid |qp.fvfValDef59|)))
(declare-fun inv@352@01 ($Ref) $Ref)
(declare-fun img@353@01 ($Ref) Bool)
(assert (forall ((r $Ref)) (!
  (=> (img@353@01 r) (= (inv@352@01 r) r))
  :pattern ((inv@352@01 r))
  :qid |f-fctOfInv|)))
(assert (forall ((y@341@01 $Ref)) (!
  (and (= (inv@352@01 y@341@01) y@341@01) (img@353@01 y@341@01))
  :pattern ((inv@352@01 y@341@01))
  :pattern ((img@353@01 y@341@01))
  :qid |f-invOfFct|)))
(assert (= (as sm@344@01  $FVF<f>) (as sm@351@01  $FVF<f>)))
(set-option :timeout 10)
(check-sat)
; unknown
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not (forall ((r $Ref)) (!
  (= (img@349@01 r) (img@346@01 r))
  
  :qid |quant-u-21397|))))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not (forall ((r $Ref)) (!
  (= (img@353@01 r) (img@349@01 r))
  
  :qid |quant-u-21398|))))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not (forall ((r $Ref)) (!
  (= (img@353@01 r) (img@346@01 r))
  
  :qid |quant-u-21399|))))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; Create MagicWandSnapFunction for wand true --* (forall y: Ref ::true ==> acc(y.f, write))
(declare-const mwsf@354@01 $MWSF)
(assert (forall (($t@340@01 $Snap)) (!
  (=
    (MWSF_apply mwsf@354@01 $t@340@01)
    ($SortWrappers.$FVF<f>To$Snap (as sm@351@01  $FVF<f>)))
  :pattern ((MWSF_apply mwsf@354@01 $t@340@01))
  :qid |quant-u-21400|)))
(pop) ; 3
(set-option :timeout 0)
(push) ; 3
(assert (forall (($t@340@01 $Snap)) (!
  (=
    (MWSF_apply mwsf@354@01 $t@340@01)
    ($SortWrappers.$FVF<f>To$Snap (as sm@351@01  $FVF<f>)))
  :pattern ((MWSF_apply mwsf@354@01 $t@340@01))
  :qid |quant-u-21401|)))
(assert (forall ((r $Ref)) (!
  (=>
    (img@339@01 r)
    (=
      ($FVF.lookup_f (as sm@351@01  $FVF<f>) r)
      ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@336@01)) r)))
  :pattern (($FVF.lookup_f (as sm@351@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@336@01)) r))
  :qid |qp.fvfValDef59|)))
(assert (forall ((r $Ref)) (!
  (=> (img@353@01 r) (= (inv@352@01 r) r))
  :pattern ((inv@352@01 r))
  :qid |f-fctOfInv|)))
(assert (forall ((y@341@01 $Ref)) (!
  (and (= (inv@352@01 y@341@01) y@341@01) (img@353@01 y@341@01))
  :pattern ((inv@352@01 y@341@01))
  :pattern ((img@353@01 y@341@01))
  :qid |f-invOfFct|)))
(assert (and
  (= (as sm@344@01  $FVF<f>) (as sm@347@01  $FVF<f>))
  (= (as sm@344@01  $FVF<f>) (as sm@351@01  $FVF<f>))))
; [exec]
; apply true --* (forall y: Ref ::true ==> acc(y.f, write))
(declare-const y@355@01 $Ref)
(push) ; 4
(pop) ; 4
(declare-fun inv@356@01 ($Ref) $Ref)
(declare-fun img@357@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
; Check receiver injectivity
; Definitional axioms for inverse functions
(assert (forall ((y@355@01 $Ref)) (!
  (and (= (inv@356@01 y@355@01) y@355@01) (img@357@01 y@355@01))
  :pattern ((inv@356@01 y@355@01))
  :pattern ((img@357@01 y@355@01))
  :qid |quant-u-21403|)))
(assert (forall ((r $Ref)) (!
  (=> (img@357@01 r) (= (inv@356@01 r) r))
  :pattern ((inv@356@01 r))
  :qid |f-fctOfInv|)))
; Permissions are non-negative
; Field permissions are at most one
; Permission implies non-null receiver
(assert (forall ((y@355@01 $Ref)) (!
  (not (= y@355@01 $Ref.null))
  :pattern ((inv@356@01 y@355@01))
  :pattern ((img@357@01 y@355@01))
  :qid |f-permImpliesNonNull|)))
; [state consolidation]
; State saturation: before repetition
(set-option :timeout 10)
(check-sat)
; unknown
(declare-const sm@358@01 $FVF<f>)
; Definitional axioms for snapshot map values
(assert (forall ((r $Ref)) (!
  (=>
    (img@357@01 r)
    (=
      ($FVF.lookup_f (as sm@358@01  $FVF<f>) r)
      ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> (MWSF_apply mwsf@354@01 $Snap.unit)) r)))
  :pattern (($FVF.lookup_f (as sm@358@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> (MWSF_apply mwsf@354@01 $Snap.unit)) r))
  :qid |qp.fvfValDef60|)))
(declare-const pm@359@01 $FPM)
(assert (forall ((r $Ref)) (!
  (=
    ($FVF.perm_f (as pm@359@01  $FPM) r)
    (ite (img@357@01 r) $Perm.Write $Perm.No))
  :pattern (($FVF.perm_f (as pm@359@01  $FPM) r))
  :qid |qp.resPrmSumDef61|)))
; Assume upper permission bound for field f
(assert (forall ((r $Ref)) (!
  (<= ($FVF.perm_f (as pm@359@01  $FPM) r) $Perm.Write)
  :pattern ((inv@356@01 r))
  :qid |qp-fld-prm-bnd|)))
; [exec]
; assert x.f == 0
; [eval] x.f == 0
(set-option :timeout 0)
(push) ; 4
(assert (not (img@357@01 x@335@01)))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(push) ; 4
(assert (not (= ($FVF.lookup_f (as sm@358@01  $FVF<f>) x@335@01) 0)))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(assert (= ($FVF.lookup_f (as sm@358@01  $FVF<f>) x@335@01) 0))
(pop) ; 3
(pop) ; 2
(pop) ; 1
; ---------- test9 ----------
(declare-const x@360@01 $Ref)
(declare-const x@361@01 $Ref)
(push) ; 1
(declare-const $t@362@01 $Snap)
(assert (= $t@362@01 ($Snap.combine ($Snap.first $t@362@01) ($Snap.second $t@362@01))))
(declare-const y@363@01 $Ref)
(push) ; 2
(pop) ; 2
(declare-fun inv@364@01 ($Ref) $Ref)
(declare-fun img@365@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
; Check receiver injectivity
; Definitional axioms for inverse functions
(assert (forall ((y@363@01 $Ref)) (!
  (and (= (inv@364@01 y@363@01) y@363@01) (img@365@01 y@363@01))
  :pattern ((inv@364@01 y@363@01))
  :pattern ((img@365@01 y@363@01))
  :qid |quant-u-21405|)))
(assert (forall ((r $Ref)) (!
  (=> (img@365@01 r) (= (inv@364@01 r) r))
  :pattern ((inv@364@01 r))
  :qid |f-fctOfInv|)))
; Permissions are non-negative
; Field permissions are at most one
; Permission implies non-null receiver
(assert (forall ((y@363@01 $Ref)) (!
  (not (= y@363@01 $Ref.null))
  :pattern ((inv@364@01 y@363@01))
  :pattern ((img@365@01 y@363@01))
  :qid |f-permImpliesNonNull|)))
(assert (= ($Snap.second $t@362@01) $Snap.unit))
; [eval] x.f == 0
(push) ; 2
(assert (not (img@365@01 x@361@01)))
(check-sat)
; unsat
(pop) ; 2
; 0.00s
; (get-info :all-statistics)
(assert (=
  ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@362@01)) x@361@01)
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
; package (forall y: Ref ::true ==> acc(y.f, write)) --* acc(x.f, write) {
; }
(push) ; 3
(declare-const $t@366@01 $Snap)
(declare-const y@367@01 $Ref)
(push) ; 4
(pop) ; 4
(declare-fun inv@368@01 ($Ref) $Ref)
(declare-fun img@369@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
; Check receiver injectivity
; Definitional axioms for inverse functions
(assert (forall ((y@367@01 $Ref)) (!
  (and (= (inv@368@01 y@367@01) y@367@01) (img@369@01 y@367@01))
  :pattern ((inv@368@01 y@367@01))
  :pattern ((img@369@01 y@367@01))
  :qid |quant-u-21407|)))
(assert (forall ((r $Ref)) (!
  (=> (img@369@01 r) (= (inv@368@01 r) r))
  :pattern ((inv@368@01 r))
  :qid |f-fctOfInv|)))
; Permissions are non-negative
; Field permissions are at most one
; Permission implies non-null receiver
(assert (forall ((y@367@01 $Ref)) (!
  (not (= y@367@01 $Ref.null))
  :pattern ((inv@368@01 y@367@01))
  :pattern ((img@369@01 y@367@01))
  :qid |f-permImpliesNonNull|)))
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
(assert (not (forall ((r $Ref)) (!
  (=> (= r x@361@01) false)
  
  :qid |quant-u-21408|))))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; Done removing quantified permissions
(declare-const sm@370@01 $FVF<f>)
; Definitional axioms for snapshot map values (instantiated)
(set-option :timeout 10)
(check-sat)
; unknown
; Precomputing data for removing quantified permissions
(define-fun pTaken@371@01 ((r $Ref)) $Perm
  (ite
    (= r x@361@01)
    ($Perm.min (ite (img@369@01 r) $Perm.Write $Perm.No) $Perm.Write)
    $Perm.No))
; Done precomputing, updating quantified chunks
; State saturation: before repetition
(check-sat)
; unknown
; Chunk depleted?
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 500)
(assert (not (forall ((r $Ref)) (!
  (= (- (ite (img@369@01 r) $Perm.Write $Perm.No) (pTaken@371@01 r)) $Perm.No)
  
  :qid |quant-u-21410|))))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not (forall ((r $Ref)) (!
  (= (pTaken@371@01 r) $Perm.No)
  
  :qid |quant-u-21411|))))
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
  (=> (= r x@361@01) (= (- $Perm.Write (pTaken@371@01 r)) $Perm.No))
  
  :qid |quant-u-21412|))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; Final check if taken enough permissions
; Done removing quantified permissions
(declare-const sm@372@01 $FVF<f>)
; Definitional axioms for snapshot map values (instantiated)
(assert (=>
  (img@369@01 x@361@01)
  (=
    ($FVF.lookup_f (as sm@372@01  $FVF<f>) x@361@01)
    ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> $t@366@01) x@361@01))))
(assert (= (as sm@370@01  $FVF<f>) (as sm@372@01  $FVF<f>)))
(set-option :timeout 10)
(check-sat)
; unknown
(declare-const $t@373@01 $FVF<f>)
(assert (forall ((r $Ref)) (!
  (=>
    (= r x@361@01)
    (= ($FVF.lookup_f $t@373@01 r) ($FVF.lookup_f (as sm@372@01  $FVF<f>) r)))
  :pattern (($FVF.lookup_f (as sm@370@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f (as sm@372@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f $t@373@01 r))
  :qid |quant-u-21413|)))
; Create MagicWandSnapFunction for wand (forall y: Ref ::true ==> acc(y.f, write)) --* acc(x.f, write)
(declare-const mwsf@374@01 $MWSF)
(assert (forall (($t@366@01 $Snap)) (!
  (=
    (MWSF_apply mwsf@374@01 $t@366@01)
    ($SortWrappers.IntTo$Snap ($FVF.lookup_f (as sm@372@01  $FVF<f>) x@361@01)))
  :pattern ((MWSF_apply mwsf@374@01 $t@366@01))
  :qid |quant-u-21414|)))
(pop) ; 3
(set-option :timeout 0)
(push) ; 3
(assert (forall (($t@366@01 $Snap)) (!
  (and
    (and
      (=>
        (img@369@01 x@361@01)
        (=
          ($FVF.lookup_f (as sm@372@01  $FVF<f>) x@361@01)
          ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> $t@366@01) x@361@01)))
      (= (as sm@370@01  $FVF<f>) (as sm@372@01  $FVF<f>)))
    (=
      (MWSF_apply mwsf@374@01 $t@366@01)
      ($SortWrappers.IntTo$Snap ($FVF.lookup_f (as sm@372@01  $FVF<f>) x@361@01))))
  :pattern ((MWSF_apply mwsf@374@01 $t@366@01))
  :qid |quant-u-21415|)))
(assert (forall ((r $Ref)) (!
  (=> (img@369@01 r) (= (inv@368@01 r) r))
  :pattern ((inv@368@01 r))
  :qid |f-fctOfInv|)))
(assert (forall ((y@367@01 $Ref)) (!
  (and (= (inv@368@01 y@367@01) y@367@01) (img@369@01 y@367@01))
  :pattern ((inv@368@01 y@367@01))
  :pattern ((img@369@01 y@367@01))
  :qid |quant-u-21407|)))
; [exec]
; apply (forall y: Ref ::true ==> acc(y.f, write)) --* acc(x.f, write)
(declare-const y@375@01 $Ref)
(push) ; 4
(pop) ; 4
(declare-fun inv@376@01 ($Ref) $Ref)
(declare-fun img@377@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
; Check receiver injectivity
; Definitional axioms for inverse functions
(assert (forall ((y@375@01 $Ref)) (!
  (and (= (inv@376@01 y@375@01) y@375@01) (img@377@01 y@375@01))
  :pattern ((inv@376@01 y@375@01))
  :pattern ((img@377@01 y@375@01))
  :qid |f-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=> (img@377@01 r) (= (inv@376@01 r) r))
  :pattern ((inv@376@01 r))
  :qid |f-fctOfInv|)))
; Precomputing data for removing quantified permissions
(define-fun pTaken@378@01 ((r $Ref)) $Perm
  (ite
    (and (img@377@01 r) (= r (inv@376@01 r)))
    ($Perm.min (ite (img@365@01 r) $Perm.Write $Perm.No) $Perm.Write)
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
  (= (- (ite (img@365@01 r) $Perm.Write $Perm.No) (pTaken@378@01 r)) $Perm.No)
  
  :qid |quant-u-21418|))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; Intermediate check if already taken enough permissions
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 500)
(assert (not (forall ((r $Ref)) (!
  (=>
    (and (img@377@01 r) (= r (inv@376@01 r)))
    (= (- $Perm.Write (pTaken@378@01 r)) $Perm.No))
  
  :qid |quant-u-21419|))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; Final check if taken enough permissions
; Done removing quantified permissions
(declare-const sm@379@01 $FVF<f>)
; Definitional axioms for snapshot map values
(assert (forall ((r $Ref)) (!
  (=>
    (img@365@01 r)
    (=
      ($FVF.lookup_f (as sm@379@01  $FVF<f>) r)
      ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@362@01)) r)))
  :pattern (($FVF.lookup_f (as sm@379@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@362@01)) r))
  :qid |qp.fvfValDef63|)))
(declare-const sm@380@01 $FVF<f>)
; Definitional axioms for singleton-SM's value
(assert (=
  ($FVF.lookup_f (as sm@380@01  $FVF<f>) x@361@01)
  ($SortWrappers.$SnapToInt (MWSF_apply mwsf@374@01 ($SortWrappers.$FVF<f>To$Snap (as sm@379@01  $FVF<f>))))))
(assert (not (= x@361@01 $Ref.null)))
; [state consolidation]
; State saturation: before repetition
(set-option :timeout 10)
(check-sat)
; unknown
(declare-const sm@381@01 $FVF<f>)
; Definitional axioms for snapshot map values
(assert (forall ((r $Ref)) (!
  (=>
    (= r x@361@01)
    (=
      ($FVF.lookup_f (as sm@381@01  $FVF<f>) r)
      ($FVF.lookup_f (as sm@380@01  $FVF<f>) r)))
  :pattern (($FVF.lookup_f (as sm@381@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f (as sm@380@01  $FVF<f>) r))
  :qid |qp.fvfValDef64|)))
(declare-const pm@382@01 $FPM)
(assert (forall ((r $Ref)) (!
  (=
    ($FVF.perm_f (as pm@382@01  $FPM) r)
    (ite (= r x@361@01) $Perm.Write $Perm.No))
  :pattern (($FVF.perm_f (as pm@382@01  $FPM) r))
  :qid |qp.resPrmSumDef65|)))
(assert (<= ($FVF.perm_f (as pm@382@01  $FPM) x@361@01) $Perm.Write))
; [exec]
; assert x.f == 0
; [eval] x.f == 0
(set-option :timeout 0)
(push) ; 4
(assert (not (= ($FVF.lookup_f (as sm@381@01  $FVF<f>) x@361@01) 0)))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(assert (= ($FVF.lookup_f (as sm@381@01  $FVF<f>) x@361@01) 0))
(pop) ; 3
(pop) ; 2
(pop) ; 1
; ---------- test10 ----------
(declare-const x@383@01 $Ref)
(declare-const x@384@01 $Ref)
(push) ; 1
(declare-const $t@385@01 $Snap)
(assert (= $t@385@01 ($Snap.combine ($Snap.first $t@385@01) ($Snap.second $t@385@01))))
(declare-const y@386@01 $Ref)
(push) ; 2
(pop) ; 2
(declare-fun inv@387@01 ($Ref) $Ref)
(declare-fun img@388@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
; Check receiver injectivity
; Definitional axioms for inverse functions
(assert (forall ((y@386@01 $Ref)) (!
  (and (= (inv@387@01 y@386@01) y@386@01) (img@388@01 y@386@01))
  :pattern ((inv@387@01 y@386@01))
  :pattern ((img@388@01 y@386@01))
  :qid |quant-u-21421|)))
(assert (forall ((r $Ref)) (!
  (=> (img@388@01 r) (= (inv@387@01 r) r))
  :pattern ((inv@387@01 r))
  :qid |f-fctOfInv|)))
; Permissions are non-negative
; Field permissions are at most one
; Permission implies non-null receiver
(assert (forall ((y@386@01 $Ref)) (!
  (not (= y@386@01 $Ref.null))
  :pattern ((inv@387@01 y@386@01))
  :pattern ((img@388@01 y@386@01))
  :qid |f-permImpliesNonNull|)))
(assert (= ($Snap.second $t@385@01) $Snap.unit))
; [eval] x.f == 0
(push) ; 2
(assert (not (img@388@01 x@384@01)))
(check-sat)
; unsat
(pop) ; 2
; 0.00s
; (get-info :all-statistics)
(assert (=
  ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@385@01)) x@384@01)
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
; package true --* acc(x.f, write) {
; }
(push) ; 3
(declare-const $t@389@01 $Snap)
(assert (= $t@389@01 $Snap.unit))
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
(assert (not (forall ((r $Ref)) (!
  (=> (= r x@384@01) false)
  
  :qid |quant-u-21422|))))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; Done removing quantified permissions
(declare-const sm@390@01 $FVF<f>)
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
(assert (not (forall ((r $Ref)) (!
  (=> (= r x@384@01) false)
  
  :qid |quant-u-21423|))))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; Done removing quantified permissions
(declare-const sm@391@01 $FVF<f>)
; Definitional axioms for snapshot map values (instantiated)
(assert (= (as sm@390@01  $FVF<f>) (as sm@391@01  $FVF<f>)))
(set-option :timeout 10)
(check-sat)
; unknown
; Precomputing data for removing quantified permissions
(define-fun pTaken@392@01 ((r $Ref)) $Perm
  (ite
    (= r x@384@01)
    ($Perm.min (ite (img@388@01 r) $Perm.Write $Perm.No) $Perm.Write)
    $Perm.No))
; Done precomputing, updating quantified chunks
; State saturation: before repetition
(check-sat)
; unknown
; Chunk depleted?
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 500)
(assert (not (forall ((r $Ref)) (!
  (= (- (ite (img@388@01 r) $Perm.Write $Perm.No) (pTaken@392@01 r)) $Perm.No)
  
  :qid |quant-u-21425|))))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not (forall ((r $Ref)) (!
  (= (pTaken@392@01 r) $Perm.No)
  
  :qid |quant-u-21426|))))
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
  (=> (= r x@384@01) (= (- $Perm.Write (pTaken@392@01 r)) $Perm.No))
  
  :qid |quant-u-21427|))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; Final check if taken enough permissions
; Done removing quantified permissions
(declare-const sm@393@01 $FVF<f>)
; Definitional axioms for snapshot map values (instantiated)
(assert (=>
  (img@388@01 x@384@01)
  (=
    ($FVF.lookup_f (as sm@393@01  $FVF<f>) x@384@01)
    ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@385@01)) x@384@01))))
(assert (= (as sm@390@01  $FVF<f>) (as sm@393@01  $FVF<f>)))
(set-option :timeout 10)
(check-sat)
; unknown
(declare-const $t@394@01 $FVF<f>)
(declare-const $t@395@01 $FVF<f>)
(assert (forall ((r $Ref)) (!
  (=>
    (= r x@384@01)
    (= ($FVF.lookup_f $t@395@01 r) ($FVF.lookup_f (as sm@393@01  $FVF<f>) r)))
  :pattern (($FVF.lookup_f $t@394@01 r))
  :pattern (($FVF.lookup_f (as sm@393@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f $t@395@01 r))
  :qid |quant-u-21429|)))
; Create MagicWandSnapFunction for wand true --* acc(x.f, write)
(declare-const mwsf@396@01 $MWSF)
(assert (forall (($t@389@01 $Snap)) (!
  (=
    (MWSF_apply mwsf@396@01 $t@389@01)
    ($SortWrappers.IntTo$Snap ($FVF.lookup_f (as sm@393@01  $FVF<f>) x@384@01)))
  :pattern ((MWSF_apply mwsf@396@01 $t@389@01))
  :qid |quant-u-21430|)))
(pop) ; 3
(set-option :timeout 0)
(push) ; 3
(assert (forall (($t@389@01 $Snap)) (!
  (=
    (MWSF_apply mwsf@396@01 $t@389@01)
    ($SortWrappers.IntTo$Snap ($FVF.lookup_f (as sm@393@01  $FVF<f>) x@384@01)))
  :pattern ((MWSF_apply mwsf@396@01 $t@389@01))
  :qid |quant-u-21431|)))
(assert (and
  (= (as sm@390@01  $FVF<f>) (as sm@391@01  $FVF<f>))
  (=>
    (img@388@01 x@384@01)
    (=
      ($FVF.lookup_f (as sm@393@01  $FVF<f>) x@384@01)
      ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@385@01)) x@384@01)))
  (= (as sm@390@01  $FVF<f>) (as sm@393@01  $FVF<f>))))
; [exec]
; apply true --* acc(x.f, write)
(declare-const sm@397@01 $FVF<f>)
; Definitional axioms for singleton-SM's value
(assert (=
  ($FVF.lookup_f (as sm@397@01  $FVF<f>) x@384@01)
  ($SortWrappers.$SnapToInt (MWSF_apply mwsf@396@01 $Snap.unit))))
(assert (not (= x@384@01 $Ref.null)))
; [state consolidation]
; State saturation: before repetition
(set-option :timeout 10)
(check-sat)
; unknown
(declare-const sm@398@01 $FVF<f>)
; Definitional axioms for snapshot map values
(assert (forall ((r $Ref)) (!
  (=>
    (ite (img@388@01 r) (< $Perm.No (- $Perm.Write (pTaken@392@01 r))) false)
    (=
      ($FVF.lookup_f (as sm@398@01  $FVF<f>) r)
      ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@385@01)) r)))
  :pattern (($FVF.lookup_f (as sm@398@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@385@01)) r))
  :qid |qp.fvfValDef67|)))
(assert (forall ((r $Ref)) (!
  (=>
    (= r x@384@01)
    (=
      ($FVF.lookup_f (as sm@398@01  $FVF<f>) r)
      ($FVF.lookup_f (as sm@397@01  $FVF<f>) r)))
  :pattern (($FVF.lookup_f (as sm@398@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f (as sm@397@01  $FVF<f>) r))
  :qid |qp.fvfValDef68|)))
(declare-const pm@399@01 $FPM)
(assert (forall ((r $Ref)) (!
  (=
    ($FVF.perm_f (as pm@399@01  $FPM) r)
    (+
      (ite (img@388@01 r) (- $Perm.Write (pTaken@392@01 r)) $Perm.No)
      (ite (= r x@384@01) $Perm.Write $Perm.No)))
  :pattern (($FVF.perm_f (as pm@399@01  $FPM) r))
  :qid |qp.resPrmSumDef69|)))
; Assume upper permission bound for field f
(assert (forall ((r $Ref)) (!
  (<= ($FVF.perm_f (as pm@399@01  $FPM) r) $Perm.Write)
  :pattern ((inv@387@01 r))
  :qid |qp-fld-prm-bnd|)))
(assert (<= ($FVF.perm_f (as pm@399@01  $FPM) x@384@01) $Perm.Write))
; [exec]
; assert x.f == 0
; [eval] x.f == 0
(declare-const sm@400@01 $FVF<f>)
; Definitional axioms for snapshot map values
(assert (forall ((r $Ref)) (!
  (=>
    (= r x@384@01)
    (=
      ($FVF.lookup_f (as sm@400@01  $FVF<f>) r)
      ($FVF.lookup_f (as sm@397@01  $FVF<f>) r)))
  :pattern (($FVF.lookup_f (as sm@400@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f (as sm@397@01  $FVF<f>) r))
  :qid |qp.fvfValDef70|)))
(assert (forall ((r $Ref)) (!
  (=>
    (ite (img@388@01 r) (< $Perm.No (- $Perm.Write (pTaken@392@01 r))) false)
    (=
      ($FVF.lookup_f (as sm@400@01  $FVF<f>) r)
      ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@385@01)) r)))
  :pattern (($FVF.lookup_f (as sm@400@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@385@01)) r))
  :qid |qp.fvfValDef71|)))
(declare-const pm@401@01 $FPM)
(assert (forall ((r $Ref)) (!
  (=
    ($FVF.perm_f (as pm@401@01  $FPM) r)
    (+
      (ite (= r x@384@01) $Perm.Write $Perm.No)
      (ite (img@388@01 r) (- $Perm.Write (pTaken@392@01 r)) $Perm.No)))
  :pattern (($FVF.perm_f (as pm@401@01  $FPM) r))
  :qid |qp.resPrmSumDef72|)))
(set-option :timeout 0)
(push) ; 4
(assert (not (< $Perm.No ($FVF.perm_f (as pm@401@01  $FPM) x@384@01))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(push) ; 4
(assert (not (= ($FVF.lookup_f (as sm@400@01  $FVF<f>) x@384@01) 0)))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(assert (= ($FVF.lookup_f (as sm@400@01  $FVF<f>) x@384@01) 0))
(pop) ; 3
(pop) ; 2
(pop) ; 1
; ---------- test11 ----------
(declare-const x@402@01 $Ref)
(declare-const x@403@01 $Ref)
(push) ; 1
(declare-const $t@404@01 $Snap)
(assert (= $t@404@01 ($Snap.combine ($Snap.first $t@404@01) ($Snap.second $t@404@01))))
(declare-const sm@405@01 $FVF<f>)
; Definitional axioms for singleton-SM's value
(assert (=
  ($FVF.lookup_f (as sm@405@01  $FVF<f>) x@403@01)
  ($SortWrappers.$SnapToInt ($Snap.first $t@404@01))))
(assert (not (= x@403@01 $Ref.null)))
(assert (= ($Snap.second $t@404@01) $Snap.unit))
; [eval] x.f == 0
(assert (= ($FVF.lookup_f (as sm@405@01  $FVF<f>) x@403@01) 0))
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
(set-option :timeout 0)
(push) ; 2
(pop) ; 2
(push) ; 2
; [exec]
; package (forall y: Ref ::y != x ==> acc(y.f, write)) --*
; (forall y: Ref ::true ==> acc(y.f, write)) {
; }
(push) ; 3
(declare-const $t@406@01 $Snap)
(declare-const y@407@01 $Ref)
(push) ; 4
; [eval] y != x
(assert (not (= y@407@01 x@403@01)))
(pop) ; 4
(declare-fun inv@408@01 ($Ref) $Ref)
(declare-fun img@409@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
; Check receiver injectivity
(push) ; 4
(assert (not (forall ((y1@407@01 $Ref) (y2@407@01 $Ref)) (!
  (=>
    (and
      (not (= y1@407@01 x@403@01))
      (not (= y2@407@01 x@403@01))
      (= y1@407@01 y2@407@01))
    (= y1@407@01 y2@407@01))
  
  :qid |f-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((y@407@01 $Ref)) (!
  (=>
    (not (= y@407@01 x@403@01))
    (and (= (inv@408@01 y@407@01) y@407@01) (img@409@01 y@407@01)))
  :pattern ((inv@408@01 y@407@01))
  :pattern ((img@409@01 y@407@01))
  :qid |quant-u-21433|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@409@01 r) (not (= (inv@408@01 r) x@403@01)))
    (= (inv@408@01 r) r))
  :pattern ((inv@408@01 r))
  :qid |f-fctOfInv|)))
; Permissions are non-negative
; Field permissions are at most one
; Permission implies non-null receiver
(assert (forall ((y@407@01 $Ref)) (!
  (=> (not (= y@407@01 x@403@01)) (not (= y@407@01 $Ref.null)))
  :pattern ((inv@408@01 y@407@01))
  :pattern ((img@409@01 y@407@01))
  :qid |f-permImpliesNonNull|)))
(declare-const y@410@01 $Ref)
(push) ; 4
(pop) ; 4
(declare-fun inv@411@01 ($Ref) $Ref)
(declare-fun img@412@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
; Check receiver injectivity
; Definitional axioms for inverse functions
(assert (forall ((y@410@01 $Ref)) (!
  (and (= (inv@411@01 y@410@01) y@410@01) (img@412@01 y@410@01))
  :pattern ((inv@411@01 y@410@01))
  :pattern ((img@412@01 y@410@01))
  :qid |f-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=> (img@412@01 r) (= (inv@411@01 r) r))
  :pattern ((inv@411@01 r))
  :qid |f-fctOfInv|)))
(push) ; 4
(set-option :timeout 10)
(assert (not (forall ((r $Ref)) (!
  false
  
  :qid |quant-u-21435|))))
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
(assert (not (forall ((r $Ref)) (!
  (=> (and (img@412@01 r) (= r (inv@411@01 r))) false)
  
  :qid |quant-u-21436|))))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; Done removing quantified permissions
(declare-const sm@413@01 $FVF<f>)
; Definitional axioms for snapshot map values
(declare-fun inv@414@01 ($Ref) $Ref)
(declare-fun img@415@01 ($Ref) Bool)
(set-option :timeout 10)
(check-sat)
; unknown
; Precomputing data for removing quantified permissions
(define-fun pTaken@416@01 ((r $Ref)) $Perm
  (ite
    (and (img@412@01 r) (= r (inv@411@01 r)))
    ($Perm.min
      (ite
        (and (img@409@01 r) (not (= (inv@408@01 r) x@403@01)))
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
(assert (not (forall ((r $Ref)) (!
  (=
    (-
      (ite
        (and (img@409@01 r) (not (= (inv@408@01 r) x@403@01)))
        $Perm.Write
        $Perm.No)
      (pTaken@416@01 r))
    $Perm.No)
  
  :qid |quant-u-21438|))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; Intermediate check if already taken enough permissions
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 500)
(assert (not (forall ((r $Ref)) (!
  (=>
    (and (img@412@01 r) (= r (inv@411@01 r)))
    (= (- $Perm.Write (pTaken@416@01 r)) $Perm.No))
  
  :qid |quant-u-21439|))))
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
    (and (img@412@01 r) (= r (inv@411@01 r)))
    (= (- $Perm.Write (pTaken@416@01 r)) $Perm.No))
  
  :qid |quant-u-21439|))))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; Done removing quantified permissions
(declare-const sm@417@01 $FVF<f>)
; Definitional axioms for snapshot map values
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@409@01 r) (not (= (inv@408@01 r) x@403@01)))
    (=
      ($FVF.lookup_f (as sm@417@01  $FVF<f>) r)
      ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> $t@406@01) r)))
  :pattern (($FVF.lookup_f (as sm@417@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> $t@406@01) r))
  :qid |qp.fvfValDef73|)))
(declare-fun inv@418@01 ($Ref) $Ref)
(declare-fun img@419@01 ($Ref) Bool)
(assert (forall ((r $Ref)) (!
  (=> (and (img@419@01 r) (< $Perm.No (pTaken@416@01 r))) (= (inv@418@01 r) r))
  :pattern ((inv@418@01 r))
  :qid |f-fctOfInv|)))
(assert (forall ((y@410@01 $Ref)) (!
  (=>
    (< $Perm.No (pTaken@416@01 y@410@01))
    (and (= (inv@418@01 y@410@01) y@410@01) (img@419@01 y@410@01)))
  :pattern ((inv@418@01 y@410@01))
  :pattern ((img@419@01 y@410@01))
  :qid |f-invOfFct|)))
(assert (= (as sm@413@01  $FVF<f>) (as sm@417@01  $FVF<f>)))
(set-option :timeout 10)
(check-sat)
; unknown
; Precomputing data for removing quantified permissions
(define-fun pTaken@420@01 ((r $Ref)) $Perm
  (ite
    (and (img@412@01 r) (= r (inv@411@01 r)))
    ($Perm.min
      (ite (= r x@403@01) $Perm.Write $Perm.No)
      (- $Perm.Write (pTaken@416@01 r)))
    $Perm.No))
; Done precomputing, updating quantified chunks
; State saturation: before repetition
(check-sat)
; unknown
; Chunk depleted?
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 500)
(assert (not (= (- $Perm.Write (pTaken@420@01 x@403@01)) $Perm.No)))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; Intermediate check if already taken enough permissions
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 500)
(assert (not (forall ((r $Ref)) (!
  (=>
    (and (img@412@01 r) (= r (inv@411@01 r)))
    (= (- (- $Perm.Write (pTaken@416@01 r)) (pTaken@420@01 r)) $Perm.No))
  
  :qid |quant-u-21442|))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; Final check if taken enough permissions
; Done removing quantified permissions
(declare-const sm@421@01 $FVF<f>)
; Definitional axioms for snapshot map values
(assert (forall ((r $Ref)) (!
  (=>
    (= r x@403@01)
    (=
      ($FVF.lookup_f (as sm@421@01  $FVF<f>) r)
      ($FVF.lookup_f (as sm@405@01  $FVF<f>) r)))
  :pattern (($FVF.lookup_f (as sm@421@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f (as sm@405@01  $FVF<f>) r))
  :qid |qp.fvfValDef74|)))
(declare-fun inv@422@01 ($Ref) $Ref)
(declare-fun img@423@01 ($Ref) Bool)
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@423@01 r) (< $Perm.No (- $Perm.Write (pTaken@416@01 r))))
    (= (inv@422@01 r) r))
  :pattern ((inv@422@01 r))
  :qid |f-fctOfInv|)))
(assert (forall ((y@410@01 $Ref)) (!
  (=>
    (< $Perm.No (- $Perm.Write (pTaken@416@01 y@410@01)))
    (and (= (inv@422@01 y@410@01) y@410@01) (img@423@01 y@410@01)))
  :pattern ((inv@422@01 y@410@01))
  :pattern ((img@423@01 y@410@01))
  :qid |f-invOfFct|)))
(assert (= (as sm@413@01  $FVF<f>) (as sm@421@01  $FVF<f>)))
(set-option :timeout 10)
(check-sat)
; unknown
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not (forall ((r $Ref)) (!
  (= (img@419@01 r) (img@415@01 r))
  
  :qid |quant-u-21443|))))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not (forall ((r $Ref)) (!
  (= (img@423@01 r) (img@419@01 r))
  
  :qid |quant-u-21444|))))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not (forall ((r $Ref)) (!
  (= (img@423@01 r) (img@415@01 r))
  
  :qid |quant-u-21445|))))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; Create MagicWandSnapFunction for wand (forall y: Ref ::y != x ==> acc(y.f, write)) --* (forall y: Ref ::true ==> acc(y.f, write))
(declare-const mwsf@424@01 $MWSF)
(assert (forall (($t@406@01 $Snap)) (!
  (=
    (MWSF_apply mwsf@424@01 $t@406@01)
    ($SortWrappers.$FVF<f>To$Snap (as sm@421@01  $FVF<f>)))
  :pattern ((MWSF_apply mwsf@424@01 $t@406@01))
  :qid |quant-u-21446|)))
(pop) ; 3
(set-option :timeout 0)
(push) ; 3
(assert (forall (($t@406@01 $Snap)) (!
  (and
    (forall ((r $Ref)) (!
      (=>
        (and (img@409@01 r) (not (= (inv@408@01 r) x@403@01)))
        (=
          ($FVF.lookup_f (as sm@417@01  $FVF<f>) r)
          ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> $t@406@01) r)))
      :pattern (($FVF.lookup_f (as sm@417@01  $FVF<f>) r))
      :pattern (($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> $t@406@01) r))
      :qid |qp.fvfValDef73|))
    (=
      (MWSF_apply mwsf@424@01 $t@406@01)
      ($SortWrappers.$FVF<f>To$Snap (as sm@421@01  $FVF<f>))))
  :pattern ((MWSF_apply mwsf@424@01 $t@406@01))
  :qid |quant-u-21447|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@409@01 r) (not (= (inv@408@01 r) x@403@01)))
    (= (inv@408@01 r) r))
  :pattern ((inv@408@01 r))
  :qid |f-fctOfInv|)))
(assert (forall ((y@407@01 $Ref)) (!
  (=>
    (not (= y@407@01 x@403@01))
    (and (= (inv@408@01 y@407@01) y@407@01) (img@409@01 y@407@01)))
  :pattern ((inv@408@01 y@407@01))
  :pattern ((img@409@01 y@407@01))
  :qid |quant-u-21433|)))
(assert (forall ((r $Ref)) (!
  (=> (and (img@419@01 r) (< $Perm.No (pTaken@416@01 r))) (= (inv@418@01 r) r))
  :pattern ((inv@418@01 r))
  :qid |f-fctOfInv|)))
(assert (forall ((y@410@01 $Ref)) (!
  (=>
    (< $Perm.No (pTaken@416@01 y@410@01))
    (and (= (inv@418@01 y@410@01) y@410@01) (img@419@01 y@410@01)))
  :pattern ((inv@418@01 y@410@01))
  :pattern ((img@419@01 y@410@01))
  :qid |f-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=>
    (= r x@403@01)
    (=
      ($FVF.lookup_f (as sm@421@01  $FVF<f>) r)
      ($FVF.lookup_f (as sm@405@01  $FVF<f>) r)))
  :pattern (($FVF.lookup_f (as sm@421@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f (as sm@405@01  $FVF<f>) r))
  :qid |qp.fvfValDef74|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@423@01 r) (< $Perm.No (- $Perm.Write (pTaken@416@01 r))))
    (= (inv@422@01 r) r))
  :pattern ((inv@422@01 r))
  :qid |f-fctOfInv|)))
(assert (forall ((y@410@01 $Ref)) (!
  (=>
    (< $Perm.No (- $Perm.Write (pTaken@416@01 y@410@01)))
    (and (= (inv@422@01 y@410@01) y@410@01) (img@423@01 y@410@01)))
  :pattern ((inv@422@01 y@410@01))
  :pattern ((img@423@01 y@410@01))
  :qid |f-invOfFct|)))
(assert (and
  (= (as sm@413@01  $FVF<f>) (as sm@417@01  $FVF<f>))
  (= (as sm@413@01  $FVF<f>) (as sm@421@01  $FVF<f>))))
; [exec]
; inhale (forall y: Ref ::y != x ==> acc(y.f, write))
(declare-const y@425@01 $Ref)
(push) ; 4
; [eval] y != x
(assert (not (= y@425@01 x@403@01)))
(pop) ; 4
(declare-const $t@426@01 $FVF<f>)
(declare-fun inv@427@01 ($Ref) $Ref)
(declare-fun img@428@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
; Check receiver injectivity
(push) ; 4
(assert (not (forall ((y1@425@01 $Ref) (y2@425@01 $Ref)) (!
  (=>
    (and
      (not (= y1@425@01 x@403@01))
      (not (= y2@425@01 x@403@01))
      (= y1@425@01 y2@425@01))
    (= y1@425@01 y2@425@01))
  
  :qid |f-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((y@425@01 $Ref)) (!
  (=>
    (not (= y@425@01 x@403@01))
    (and (= (inv@427@01 y@425@01) y@425@01) (img@428@01 y@425@01)))
  :pattern ((inv@427@01 y@425@01))
  :pattern ((img@428@01 y@425@01))
  :qid |quant-u-21449|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@428@01 r) (not (= (inv@427@01 r) x@403@01)))
    (= (inv@427@01 r) r))
  :pattern ((inv@427@01 r))
  :qid |f-fctOfInv|)))
; Permissions are non-negative
; Field permissions are at most one
; Permission implies non-null receiver
(assert (forall ((y@425@01 $Ref)) (!
  (=> (not (= y@425@01 x@403@01)) (not (= y@425@01 $Ref.null)))
  :pattern ((inv@427@01 y@425@01))
  :pattern ((img@428@01 y@425@01))
  :qid |f-permImpliesNonNull|)))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; apply (forall y: Ref ::y != x ==> acc(y.f, write)) --*
;   (forall y: Ref ::true ==> acc(y.f, write))
(declare-const y@429@01 $Ref)
(set-option :timeout 0)
(push) ; 4
; [eval] y != x
(assert (not (= y@429@01 x@403@01)))
(pop) ; 4
(declare-fun inv@430@01 ($Ref) $Ref)
(declare-fun img@431@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
; Check receiver injectivity
(push) ; 4
(assert (not (forall ((y1@429@01 $Ref) (y2@429@01 $Ref)) (!
  (=>
    (and
      (not (= y1@429@01 x@403@01))
      (not (= y2@429@01 x@403@01))
      (= y1@429@01 y2@429@01))
    (= y1@429@01 y2@429@01))
  
  :qid |f-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((y@429@01 $Ref)) (!
  (=>
    (not (= y@429@01 x@403@01))
    (and (= (inv@430@01 y@429@01) y@429@01) (img@431@01 y@429@01)))
  :pattern ((inv@430@01 y@429@01))
  :pattern ((img@431@01 y@429@01))
  :qid |f-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@431@01 r) (not (= (inv@430@01 r) x@403@01)))
    (= (inv@430@01 r) r))
  :pattern ((inv@430@01 r))
  :qid |f-fctOfInv|)))
; Precomputing data for removing quantified permissions
(define-fun pTaken@432@01 ((r $Ref)) $Perm
  (ite
    (and (not (= (inv@430@01 r) x@403@01)) (img@431@01 r) (= r (inv@430@01 r)))
    ($Perm.min
      (ite
        (and (img@428@01 r) (not (= (inv@427@01 r) x@403@01)))
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
(assert (not (forall ((r $Ref)) (!
  (=
    (-
      (ite
        (and (img@428@01 r) (not (= (inv@427@01 r) x@403@01)))
        $Perm.Write
        $Perm.No)
      (pTaken@432@01 r))
    $Perm.No)
  
  :qid |quant-u-21452|))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; Intermediate check if already taken enough permissions
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 500)
(assert (not (forall ((r $Ref)) (!
  (=>
    (and (not (= (inv@430@01 r) x@403@01)) (img@431@01 r) (= r (inv@430@01 r)))
    (= (- $Perm.Write (pTaken@432@01 r)) $Perm.No))
  
  :qid |quant-u-21453|))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; Final check if taken enough permissions
; Done removing quantified permissions
(declare-const sm@433@01 $FVF<f>)
; Definitional axioms for snapshot map values
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@428@01 r) (not (= (inv@427@01 r) x@403@01)))
    (= ($FVF.lookup_f (as sm@433@01  $FVF<f>) r) ($FVF.lookup_f $t@426@01 r)))
  :pattern (($FVF.lookup_f (as sm@433@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f $t@426@01 r))
  :qid |qp.fvfValDef75|)))
(declare-const y@434@01 $Ref)
(set-option :timeout 0)
(push) ; 4
(pop) ; 4
(declare-fun inv@435@01 ($Ref) $Ref)
(declare-fun img@436@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
; Check receiver injectivity
; Definitional axioms for inverse functions
(assert (forall ((y@434@01 $Ref)) (!
  (and (= (inv@435@01 y@434@01) y@434@01) (img@436@01 y@434@01))
  :pattern ((inv@435@01 y@434@01))
  :pattern ((img@436@01 y@434@01))
  :qid |quant-u-21455|)))
(assert (forall ((r $Ref)) (!
  (=> (img@436@01 r) (= (inv@435@01 r) r))
  :pattern ((inv@435@01 r))
  :qid |f-fctOfInv|)))
; Permissions are non-negative
; Field permissions are at most one
; Permission implies non-null receiver
(assert (forall ((y@434@01 $Ref)) (!
  (not (= y@434@01 $Ref.null))
  :pattern ((inv@435@01 y@434@01))
  :pattern ((img@436@01 y@434@01))
  :qid |f-permImpliesNonNull|)))
; [state consolidation]
; State saturation: before repetition
(set-option :timeout 10)
(check-sat)
; unknown
(declare-const sm@437@01 $FVF<f>)
; Definitional axioms for snapshot map values
(assert (forall ((r $Ref)) (!
  (=>
    (img@436@01 r)
    (=
      ($FVF.lookup_f (as sm@437@01  $FVF<f>) r)
      ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> (MWSF_apply mwsf@424@01 ($SortWrappers.$FVF<f>To$Snap (as sm@433@01  $FVF<f>)))) r)))
  :pattern (($FVF.lookup_f (as sm@437@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> (MWSF_apply mwsf@424@01 ($SortWrappers.$FVF<f>To$Snap (as sm@433@01  $FVF<f>)))) r))
  :qid |qp.fvfValDef76|)))
(declare-const pm@438@01 $FPM)
(assert (forall ((r $Ref)) (!
  (=
    ($FVF.perm_f (as pm@438@01  $FPM) r)
    (ite (img@436@01 r) $Perm.Write $Perm.No))
  :pattern (($FVF.perm_f (as pm@438@01  $FPM) r))
  :qid |qp.resPrmSumDef77|)))
; Assume upper permission bound for field f
(assert (forall ((r $Ref)) (!
  (<= ($FVF.perm_f (as pm@438@01  $FPM) r) $Perm.Write)
  :pattern ((inv@435@01 r))
  :qid |qp-fld-prm-bnd|)))
; [exec]
; assert x.f == 0
; [eval] x.f == 0
(set-option :timeout 0)
(push) ; 4
(assert (not (img@436@01 x@403@01)))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(push) ; 4
(assert (not (= ($FVF.lookup_f (as sm@437@01  $FVF<f>) x@403@01) 0)))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(assert (= ($FVF.lookup_f (as sm@437@01  $FVF<f>) x@403@01) 0))
(pop) ; 3
(pop) ; 2
(pop) ; 1
; ---------- test12 ----------
(declare-const x@439@01 $Ref)
(declare-const x@440@01 $Ref)
(push) ; 1
(declare-const y@441@01 $Ref)
(push) ; 2
(pop) ; 2
(declare-const $t@442@01 $FVF<f>)
(declare-fun inv@443@01 ($Ref) $Ref)
(declare-fun img@444@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
; Check receiver injectivity
; Definitional axioms for inverse functions
(assert (forall ((y@441@01 $Ref)) (!
  (and (= (inv@443@01 y@441@01) y@441@01) (img@444@01 y@441@01))
  :pattern ((inv@443@01 y@441@01))
  :pattern ((img@444@01 y@441@01))
  :qid |quant-u-21457|)))
(assert (forall ((r $Ref)) (!
  (=> (img@444@01 r) (= (inv@443@01 r) r))
  :pattern ((inv@443@01 r))
  :qid |f-fctOfInv|)))
; Permissions are non-negative
; Field permissions are at most one
; Permission implies non-null receiver
(assert (forall ((y@441@01 $Ref)) (!
  (not (= y@441@01 $Ref.null))
  :pattern ((inv@443@01 y@441@01))
  :pattern ((img@444@01 y@441@01))
  :qid |f-permImpliesNonNull|)))
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
(set-option :timeout 0)
(push) ; 2
(pop) ; 2
(push) ; 2
; [exec]
; package (forall y: Ref ::true ==> acc(y.f, 1 / 2)) && x.f == 0 --* true {
;   assert acc(x.f, write) && x.f == 0
; }
(push) ; 3
(declare-const $t@445@01 $Snap)
(assert (= $t@445@01 ($Snap.combine ($Snap.first $t@445@01) ($Snap.second $t@445@01))))
(declare-const y@446@01 $Ref)
(push) ; 4
(pop) ; 4
(declare-fun inv@447@01 ($Ref) $Ref)
(declare-fun img@448@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
; Check receiver injectivity
; Definitional axioms for inverse functions
(assert (forall ((y@446@01 $Ref)) (!
  (and (= (inv@447@01 y@446@01) y@446@01) (img@448@01 y@446@01))
  :pattern ((inv@447@01 y@446@01))
  :pattern ((img@448@01 y@446@01))
  :qid |quant-u-21459|)))
(assert (forall ((r $Ref)) (!
  (=> (img@448@01 r) (= (inv@447@01 r) r))
  :pattern ((inv@447@01 r))
  :qid |f-fctOfInv|)))
; Permissions are non-negative
; Field permissions are at most one
; Permission implies non-null receiver
(assert (forall ((y@446@01 $Ref)) (!
  (not (= y@446@01 $Ref.null))
  :pattern ((inv@447@01 y@446@01))
  :pattern ((img@448@01 y@446@01))
  :qid |f-permImpliesNonNull|)))
(assert (= ($Snap.second $t@445@01) $Snap.unit))
; [eval] x.f == 0
(push) ; 4
(assert (not (img@448@01 x@440@01)))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(assert (=
  ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@445@01)) x@440@01)
  0))
; [exec]
; assert acc(x.f, write) && x.f == 0
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
(assert (not (forall ((r $Ref)) (!
  (=> (= r x@440@01) false)
  
  :qid |quant-u-21460|))))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; Done removing quantified permissions
(declare-const sm@449@01 $FVF<f>)
; Definitional axioms for snapshot map values (instantiated)
(set-option :timeout 10)
(check-sat)
; unknown
; Precomputing data for removing quantified permissions
(define-fun pTaken@450@01 ((r $Ref)) $Perm
  (ite
    (= r x@440@01)
    ($Perm.min
      (ite (img@448@01 r) (/ (to_real 1) (to_real 2)) $Perm.No)
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
(assert (not (forall ((r $Ref)) (!
  (=
    (-
      (ite (img@448@01 r) (/ (to_real 1) (to_real 2)) $Perm.No)
      (pTaken@450@01 r))
    $Perm.No)
  
  :qid |quant-u-21462|))))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not (forall ((r $Ref)) (!
  (= (pTaken@450@01 r) $Perm.No)
  
  :qid |quant-u-21463|))))
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
  (=> (= r x@440@01) (= (- $Perm.Write (pTaken@450@01 r)) $Perm.No))
  
  :qid |quant-u-21464|))))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; Final check if taken enough permissions
(set-option :timeout 0)
(push) ; 4
(assert (not (forall ((r $Ref)) (!
  (=> (= r x@440@01) (= (- $Perm.Write (pTaken@450@01 r)) $Perm.No))
  
  :qid |quant-u-21464|))))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; Done removing quantified permissions
(declare-const sm@451@01 $FVF<f>)
; Definitional axioms for snapshot map values (instantiated)
(assert (=>
  (img@448@01 x@440@01)
  (=
    ($FVF.lookup_f (as sm@451@01  $FVF<f>) x@440@01)
    ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@445@01)) x@440@01))))
(assert (= (as sm@449@01  $FVF<f>) (as sm@451@01  $FVF<f>)))
(set-option :timeout 10)
(check-sat)
; unknown
; Precomputing data for removing quantified permissions
(define-fun pTaken@452@01 ((r $Ref)) $Perm
  (ite
    (= r x@440@01)
    ($Perm.min
      (ite (img@444@01 r) (/ (to_real 1) (to_real 2)) $Perm.No)
      (- $Perm.Write (pTaken@450@01 r)))
    $Perm.No))
; Done precomputing, updating quantified chunks
; State saturation: before repetition
(check-sat)
; unknown
; Chunk depleted?
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 500)
(assert (not (forall ((r $Ref)) (!
  (=
    (-
      (ite (img@444@01 r) (/ (to_real 1) (to_real 2)) $Perm.No)
      (pTaken@452@01 r))
    $Perm.No)
  
  :qid |quant-u-21466|))))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not (forall ((r $Ref)) (!
  (= (pTaken@452@01 r) $Perm.No)
  
  :qid |quant-u-21467|))))
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
    (= r x@440@01)
    (= (- (- $Perm.Write (pTaken@450@01 r)) (pTaken@452@01 r)) $Perm.No))
  
  :qid |quant-u-21468|))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; Final check if taken enough permissions
; Done removing quantified permissions
(declare-const sm@453@01 $FVF<f>)
; Definitional axioms for snapshot map values (instantiated)
(assert (=>
  (img@444@01 x@440@01)
  (=
    ($FVF.lookup_f (as sm@453@01  $FVF<f>) x@440@01)
    ($FVF.lookup_f $t@442@01 x@440@01))))
(assert (= (as sm@449@01  $FVF<f>) (as sm@453@01  $FVF<f>)))
(set-option :timeout 10)
(check-sat)
; unknown
(declare-const $t@454@01 $FVF<f>)
(declare-const $t@455@01 $FVF<f>)
(assert (forall ((r $Ref)) (!
  (=>
    (ite (= r x@440@01) (< $Perm.No (pTaken@450@01 r)) false)
    (= ($FVF.lookup_f $t@454@01 r) ($FVF.lookup_f (as sm@451@01  $FVF<f>) r)))
  :pattern (($FVF.lookup_f (as sm@449@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f (as sm@451@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f $t@454@01 r))
  :qid |quant-u-21469|)))
(assert (forall ((r $Ref)) (!
  (and
    (=>
      (ite (= r x@440@01) (< $Perm.No (pTaken@450@01 r)) false)
      (= ($FVF.lookup_f $t@455@01 r) ($FVF.lookup_f $t@454@01 r)))
    (=>
      (ite (= r x@440@01) (< $Perm.No (- $Perm.Write (pTaken@450@01 r))) false)
      (= ($FVF.lookup_f $t@455@01 r) ($FVF.lookup_f (as sm@453@01  $FVF<f>) r))))
  :pattern (($FVF.lookup_f $t@454@01 r))
  :pattern (($FVF.lookup_f (as sm@453@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f $t@455@01 r))
  :qid |quant-u-21470|)))
; [eval] x.f == 0
(declare-const sm@456@01 $FVF<f>)
; Definitional axioms for snapshot map values
(assert (forall ((r $Ref)) (!
  (=>
    (ite
      (img@448@01 r)
      (< $Perm.No (- (/ (to_real 1) (to_real 2)) (pTaken@450@01 r)))
      false)
    (=
      ($FVF.lookup_f (as sm@456@01  $FVF<f>) r)
      ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@445@01)) r)))
  :pattern (($FVF.lookup_f (as sm@456@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@445@01)) r))
  :qid |qp.fvfValDef80|)))
(assert (forall ((r $Ref)) (!
  (=>
    (= r x@440@01)
    (= ($FVF.lookup_f (as sm@456@01  $FVF<f>) r) ($FVF.lookup_f $t@455@01 r)))
  :pattern (($FVF.lookup_f (as sm@456@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f $t@455@01 r))
  :qid |qp.fvfValDef81|)))
(declare-const pm@457@01 $FPM)
(assert (forall ((r $Ref)) (!
  (=
    ($FVF.perm_f (as pm@457@01  $FPM) r)
    (+
      (ite
        (img@448@01 r)
        (- (/ (to_real 1) (to_real 2)) (pTaken@450@01 r))
        $Perm.No)
      (ite (= r x@440@01) $Perm.Write $Perm.No)))
  :pattern (($FVF.perm_f (as pm@457@01  $FPM) r))
  :qid |qp.resPrmSumDef82|)))
(set-option :timeout 0)
(push) ; 4
(assert (not (< $Perm.No ($FVF.perm_f (as pm@457@01  $FPM) x@440@01))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(push) ; 4
(assert (not (= ($FVF.lookup_f (as sm@456@01  $FVF<f>) x@440@01) 0)))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(assert (= ($FVF.lookup_f (as sm@456@01  $FVF<f>) x@440@01) 0))
; Create MagicWandSnapFunction for wand (forall y: Ref ::true ==> acc(y.f, 1 / 2)) && x.f == 0 --* true
(declare-const mwsf@458@01 $MWSF)
(assert (forall (($t@445@01 $Snap)) (!
  (= (MWSF_apply mwsf@458@01 $t@445@01) $Snap.unit)
  :pattern ((MWSF_apply mwsf@458@01 $t@445@01))
  :qid |quant-u-21471|)))
(pop) ; 3
(push) ; 3
(assert (forall (($t@445@01 $Snap)) (!
  (and
    (and
      (=>
        (img@448@01 x@440@01)
        (=
          ($FVF.lookup_f (as sm@451@01  $FVF<f>) x@440@01)
          ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@445@01)) x@440@01)))
      (= (as sm@449@01  $FVF<f>) (as sm@451@01  $FVF<f>))
      (=>
        (img@444@01 x@440@01)
        (=
          ($FVF.lookup_f (as sm@453@01  $FVF<f>) x@440@01)
          ($FVF.lookup_f $t@442@01 x@440@01)))
      (= (as sm@449@01  $FVF<f>) (as sm@453@01  $FVF<f>)))
    (= (MWSF_apply mwsf@458@01 $t@445@01) $Snap.unit))
  :pattern ((MWSF_apply mwsf@458@01 $t@445@01))
  :qid |quant-u-21472|)))
(assert (forall ((r $Ref)) (!
  (=> (img@448@01 r) (= (inv@447@01 r) r))
  :pattern ((inv@447@01 r))
  :qid |f-fctOfInv|)))
(assert (forall ((y@446@01 $Ref)) (!
  (and (= (inv@447@01 y@446@01) y@446@01) (img@448@01 y@446@01))
  :pattern ((inv@447@01 y@446@01))
  :pattern ((img@448@01 y@446@01))
  :qid |quant-u-21459|)))
(pop) ; 3
(pop) ; 2
(pop) ; 1
