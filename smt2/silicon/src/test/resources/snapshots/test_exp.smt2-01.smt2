(get-info :version)
; (:version "4.12.1")
; Started: 2024-12-27 09:59:38
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
; /field_value_functions_declarations.smt2 [f: Int]
(declare-fun $FVF.domain_f ($FVF<f>) Set<$Ref>)
(declare-fun $FVF.lookup_f ($FVF<f> $Ref) Int)
(declare-fun $FVF.after_f ($FVF<f> $FVF<f>) Bool)
(declare-fun $FVF.loc_f (Int $Ref) Bool)
(declare-fun $FVF.perm_f ($FPM $Ref) $Perm)
(declare-const $fvfTOP_f $FVF<f>)
; Declaring symbols related to program functions (from program analysis)
(declare-fun dangling ($Snap $Ref) Bool)
(declare-fun dangling%limited ($Snap $Ref) Bool)
(declare-fun dangling%stateless ($Ref) Bool)
(declare-fun dangling%precondition ($Snap $Ref) Bool)
(declare-fun zero ($Snap $Ref) Bool)
(declare-fun zero%limited ($Snap $Ref) Bool)
(declare-fun zero%stateless ($Ref) Bool)
(declare-fun zero%precondition ($Snap $Ref) Bool)
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
(assert (forall ((s@$ $Snap) (x@0@00 $Ref)) (!
  (= (dangling%limited s@$ x@0@00) (dangling s@$ x@0@00))
  :pattern ((dangling s@$ x@0@00))
  :qid |quant-u-4853|)))
(assert (forall ((s@$ $Snap) (x@0@00 $Ref)) (!
  (dangling%stateless x@0@00)
  :pattern ((dangling%limited s@$ x@0@00))
  :qid |quant-u-4854|)))
(assert (forall ((s@$ $Snap) (x@0@00 $Ref)) (!
  (=>
    (dangling%precondition s@$ x@0@00)
    (= (dangling s@$ x@0@00) (= x@0@00 $Ref.null)))
  :pattern ((dangling s@$ x@0@00))
  :qid |quant-u-4857|)))
(assert (forall ((s@$ $Snap) (x@0@00 $Ref)) (!
  true
  :pattern ((dangling s@$ x@0@00))
  :qid |quant-u-4858|)))
(assert (forall ((s@$ $Snap) (x@2@00 $Ref)) (!
  (= (zero%limited s@$ x@2@00) (zero s@$ x@2@00))
  :pattern ((zero s@$ x@2@00))
  :qid |quant-u-4855|)))
(assert (forall ((s@$ $Snap) (x@2@00 $Ref)) (!
  (zero%stateless x@2@00)
  :pattern ((zero%limited s@$ x@2@00))
  :qid |quant-u-4856|)))
(assert (forall ((s@$ $Snap) (x@2@00 $Ref)) (!
  (=>
    (zero%precondition s@$ x@2@00)
    (= (zero s@$ x@2@00) (= ($SortWrappers.$SnapToInt s@$) 0)))
  :pattern ((zero s@$ x@2@00))
  :qid |quant-u-4859|)))
(assert (forall ((s@$ $Snap) (x@2@00 $Ref)) (!
  true
  :pattern ((zero s@$ x@2@00))
  :qid |quant-u-4860|)))
; End function- and predicate-related preamble
; ------------------------------------------------------------
; ---------- test00 ----------
(declare-const xs@0@01 Set<$Ref>)
(declare-const y@1@01 $Ref)
(declare-const xs@2@01 Set<$Ref>)
(declare-const y@3@01 $Ref)
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
; inhale (forall x: Ref :: { zero(x) } x == y ==> dangling(x))
(declare-const $t@4@01 $Snap)
(assert (= $t@4@01 $Snap.unit))
; [eval] (forall x: Ref :: { zero(x) } x == y ==> dangling(x))
(declare-const x@5@01 $Ref)
(push) ; 3
; [eval] x == y ==> dangling(x)
; [eval] x == y
(push) ; 4
; [then-branch: 0 | x@5@01 == y@3@01 | live]
; [else-branch: 0 | x@5@01 != y@3@01 | live]
(push) ; 5
; [then-branch: 0 | x@5@01 == y@3@01]
(assert (= x@5@01 y@3@01))
; [eval] dangling(x)
(push) ; 6
(assert (dangling%precondition $Snap.unit x@5@01))
(pop) ; 6
; Joined path conditions
(assert (dangling%precondition $Snap.unit x@5@01))
(pop) ; 5
(push) ; 5
; [else-branch: 0 | x@5@01 != y@3@01]
(assert (not (= x@5@01 y@3@01)))
(pop) ; 5
(pop) ; 4
; Joined path conditions
(assert (=>
  (= x@5@01 y@3@01)
  (and (= x@5@01 y@3@01) (dangling%precondition $Snap.unit x@5@01))))
; Joined path conditions
(assert (or (not (= x@5@01 y@3@01)) (= x@5@01 y@3@01)))
; [eval] zero(x)
(push) ; 4
(check-sat)
; unknown
; [state consolidation]
; State saturation: before repetition
(set-option :timeout 10)
(check-sat)
; unknown
(set-option :timeout 0)
(push) ; 5
(set-option :timeout 10)
(assert (not false))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(check-sat)
; unknown
; [state consolidation]
; State saturation: before repetition
(set-option :timeout 10)
(check-sat)
; unknown
(set-option :timeout 0)
(push) ; 5
(set-option :timeout 10)
(assert (not false))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(check-sat)
; unknown
; [state consolidation]
; State saturation: before repetition
(set-option :timeout 10)
(check-sat)
; unknown
(set-option :timeout 0)
(push) ; 5
(set-option :timeout 10)
(assert (not false))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(check-sat)
; unknown
(pop) ; 4
(pop) ; 3
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall ((x@5@01 $Ref)) (!
  (and
    (=>
      (= x@5@01 y@3@01)
      (and (= x@5@01 y@3@01) (dangling%precondition $Snap.unit x@5@01)))
    (or (not (= x@5@01 y@3@01)) (= x@5@01 y@3@01)))
  
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/snapshots/test_exp.vpr@11@10@12@27-aux|)))
(assert (forall ((x@5@01 $Ref)) (!
  (=> (= x@5@01 y@3@01) (dangling $Snap.unit x@5@01))
  
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/snapshots/test_exp.vpr@11@10@12@27|)))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
(pop) ; 2
(pop) ; 1
; ---------- test01 ----------
(declare-const xs@6@01 Set<$Ref>)
(declare-const y@7@01 $Ref)
(declare-const xs@8@01 Set<$Ref>)
(declare-const y@9@01 $Ref)
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
; inhale (forall x: Ref ::(x in xs) ==> acc(x.f, write))
(declare-const x@10@01 $Ref)
(push) ; 3
; [eval] (x in xs)
(assert (Set_in x@10@01 xs@8@01))
(pop) ; 3
(declare-const $t@11@01 $FVF<f>)
(declare-fun inv@12@01 ($Ref) $Ref)
(declare-fun img@13@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
; Check receiver injectivity
(push) ; 3
(assert (not (forall ((x1@10@01 $Ref) (x2@10@01 $Ref)) (!
  (=>
    (and
      (Set_in x1@10@01 xs@8@01)
      (Set_in x2@10@01 xs@8@01)
      (= x1@10@01 x2@10@01))
    (= x1@10@01 x2@10@01))
  
  :qid |f-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((x@10@01 $Ref)) (!
  (=>
    (Set_in x@10@01 xs@8@01)
    (and (= (inv@12@01 x@10@01) x@10@01) (img@13@01 x@10@01)))
  :pattern ((Set_in x@10@01 xs@8@01))
  :pattern ((inv@12@01 x@10@01))
  :pattern ((img@13@01 x@10@01))
  :qid |quant-u-4862|)))
(assert (forall ((r $Ref)) (!
  (=> (and (img@13@01 r) (Set_in (inv@12@01 r) xs@8@01)) (= (inv@12@01 r) r))
  :pattern ((inv@12@01 r))
  :qid |f-fctOfInv|)))
; Permissions are non-negative
; Field permissions are at most one
; Permission implies non-null receiver
(assert (forall ((x@10@01 $Ref)) (!
  (=> (Set_in x@10@01 xs@8@01) (not (= x@10@01 $Ref.null)))
  :pattern ((Set_in x@10@01 xs@8@01))
  :pattern ((inv@12@01 x@10@01))
  :pattern ((img@13@01 x@10@01))
  :qid |f-permImpliesNonNull|)))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale (forall x: Ref :: { zero(x) } x == y ==> dangling(x))
(declare-const $t@14@01 $Snap)
(assert (= $t@14@01 $Snap.unit))
; [eval] (forall x: Ref :: { zero(x) } x == y ==> dangling(x))
(declare-const x@15@01 $Ref)
(set-option :timeout 0)
(push) ; 3
; [eval] x == y ==> dangling(x)
; [eval] x == y
(push) ; 4
; [then-branch: 1 | x@15@01 == y@9@01 | live]
; [else-branch: 1 | x@15@01 != y@9@01 | live]
(push) ; 5
; [then-branch: 1 | x@15@01 == y@9@01]
(assert (= x@15@01 y@9@01))
; [eval] dangling(x)
(push) ; 6
(assert (dangling%precondition $Snap.unit x@15@01))
(pop) ; 6
; Joined path conditions
(assert (dangling%precondition $Snap.unit x@15@01))
(pop) ; 5
(push) ; 5
; [else-branch: 1 | x@15@01 != y@9@01]
(assert (not (= x@15@01 y@9@01)))
(pop) ; 5
(pop) ; 4
; Joined path conditions
(assert (=>
  (= x@15@01 y@9@01)
  (and (= x@15@01 y@9@01) (dangling%precondition $Snap.unit x@15@01))))
; Joined path conditions
(assert (or (not (= x@15@01 y@9@01)) (= x@15@01 y@9@01)))
; [eval] zero(x)
(push) ; 4
(push) ; 5
(assert (not (forall ((r $Ref)) (!
  (=>
    (= r x@15@01)
    (>
      (ite
        (and (img@13@01 r) (Set_in (inv@12@01 r) xs@8@01))
        $Perm.Write
        $Perm.No)
      $Perm.No))
  
  :qid |quant-u-4863|))))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
; [state consolidation]
; State saturation: before repetition
(set-option :timeout 10)
(check-sat)
; unknown
(declare-const sm@16@01 $FVF<f>)
; Definitional axioms for snapshot map domain
; Definitional axioms for snapshot map values
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@13@01 r) (Set_in (inv@12@01 r) xs@8@01))
    (= ($FVF.lookup_f (as sm@16@01  $FVF<f>) r) ($FVF.lookup_f $t@11@01 r)))
  :pattern (($FVF.lookup_f (as sm@16@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f $t@11@01 r))
  :qid |qp.fvfValDef0|)))
(declare-const pm@17@01 $FPM)
(assert (forall ((r $Ref)) (!
  (=
    ($FVF.perm_f (as pm@17@01  $FPM) r)
    (ite (and (img@13@01 r) (Set_in (inv@12@01 r) xs@8@01)) $Perm.Write $Perm.No))
  :pattern (($FVF.perm_f (as pm@17@01  $FPM) r))
  :qid |qp.resPrmSumDef1|)))
; Assume upper permission bound for field f
(assert (forall ((r $Ref)) (!
  (<= ($FVF.perm_f (as pm@17@01  $FPM) r) $Perm.Write)
  :pattern ((inv@12@01 r))
  :qid |qp-fld-prm-bnd|)))
(set-option :timeout 0)
(push) ; 5
(assert (not (forall ((r $Ref)) (!
  (=>
    (= r x@15@01)
    (>
      (ite
        (and (img@13@01 r) (Set_in (inv@12@01 r) xs@8@01))
        $Perm.Write
        $Perm.No)
      $Perm.No))
  
  :qid |quant-u-4864|))))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(pop) ; 4
(pop) ; 3
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall ((x@15@01 $Ref)) (!
  (and
    (=>
      (= x@15@01 y@9@01)
      (and (= x@15@01 y@9@01) (dangling%precondition $Snap.unit x@15@01)))
    (or (not (= x@15@01 y@9@01)) (= x@15@01 y@9@01)))
  
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/snapshots/test_exp.vpr@18@10@19@27-aux|)))
(assert (forall ((x@15@01 $Ref)) (!
  (=> (= x@15@01 y@9@01) (dangling $Snap.unit x@15@01))
  
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/snapshots/test_exp.vpr@18@10@19@27|)))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
(pop) ; 2
(pop) ; 1
; ---------- test02 ----------
(declare-const xs@18@01 Set<$Ref>)
(declare-const y@19@01 $Ref)
(declare-const xs@20@01 Set<$Ref>)
(declare-const y@21@01 $Ref)
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
; inhale (forall x: Ref ::(x in xs) ==> acc(x.f, write))
(declare-const x@22@01 $Ref)
(push) ; 3
; [eval] (x in xs)
(assert (Set_in x@22@01 xs@20@01))
(pop) ; 3
(declare-const $t@23@01 $FVF<f>)
(declare-fun inv@24@01 ($Ref) $Ref)
(declare-fun img@25@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
; Check receiver injectivity
(push) ; 3
(assert (not (forall ((x1@22@01 $Ref) (x2@22@01 $Ref)) (!
  (=>
    (and
      (Set_in x1@22@01 xs@20@01)
      (Set_in x2@22@01 xs@20@01)
      (= x1@22@01 x2@22@01))
    (= x1@22@01 x2@22@01))
  
  :qid |f-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((x@22@01 $Ref)) (!
  (=>
    (Set_in x@22@01 xs@20@01)
    (and (= (inv@24@01 x@22@01) x@22@01) (img@25@01 x@22@01)))
  :pattern ((Set_in x@22@01 xs@20@01))
  :pattern ((inv@24@01 x@22@01))
  :pattern ((img@25@01 x@22@01))
  :qid |quant-u-4866|)))
(assert (forall ((r $Ref)) (!
  (=> (and (img@25@01 r) (Set_in (inv@24@01 r) xs@20@01)) (= (inv@24@01 r) r))
  :pattern ((inv@24@01 r))
  :qid |f-fctOfInv|)))
; Permissions are non-negative
; Field permissions are at most one
; Permission implies non-null receiver
(assert (forall ((x@22@01 $Ref)) (!
  (=> (Set_in x@22@01 xs@20@01) (not (= x@22@01 $Ref.null)))
  :pattern ((Set_in x@22@01 xs@20@01))
  :pattern ((inv@24@01 x@22@01))
  :pattern ((img@25@01 x@22@01))
  :qid |f-permImpliesNonNull|)))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale acc(y.f, write)
(declare-const $t@26@01 Int)
(declare-const sm@27@01 $FVF<f>)
; Definitional axioms for singleton-SM's value
(assert (= ($FVF.lookup_f (as sm@27@01  $FVF<f>) y@21@01) $t@26@01))
(assert (not (= y@21@01 $Ref.null)))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale (forall x: Ref :: { zero(x) } x == y ==> dangling(x))
(declare-const $t@28@01 $Snap)
(assert (= $t@28@01 $Snap.unit))
; [eval] (forall x: Ref :: { zero(x) } x == y ==> dangling(x))
(declare-const x@29@01 $Ref)
(set-option :timeout 0)
(push) ; 3
; [eval] x == y ==> dangling(x)
; [eval] x == y
(push) ; 4
; [then-branch: 2 | x@29@01 == y@21@01 | live]
; [else-branch: 2 | x@29@01 != y@21@01 | live]
(push) ; 5
; [then-branch: 2 | x@29@01 == y@21@01]
(assert (= x@29@01 y@21@01))
; [eval] dangling(x)
(push) ; 6
(assert (dangling%precondition $Snap.unit x@29@01))
(pop) ; 6
; Joined path conditions
(assert (dangling%precondition $Snap.unit x@29@01))
(pop) ; 5
(push) ; 5
; [else-branch: 2 | x@29@01 != y@21@01]
(assert (not (= x@29@01 y@21@01)))
(pop) ; 5
(pop) ; 4
; Joined path conditions
(assert (=>
  (= x@29@01 y@21@01)
  (and (= x@29@01 y@21@01) (dangling%precondition $Snap.unit x@29@01))))
; Joined path conditions
(assert (or (not (= x@29@01 y@21@01)) (= x@29@01 y@21@01)))
; [eval] zero(x)
(push) ; 4
(push) ; 5
(set-option :timeout 10)
(assert (not (= y@21@01 x@29@01)))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 5
(assert (not (forall ((r $Ref)) (!
  (=>
    (= r x@29@01)
    (>
      (+
        (ite
          (and (img@25@01 r) (Set_in (inv@24@01 r) xs@20@01))
          $Perm.Write
          $Perm.No)
        (ite (= r y@21@01) $Perm.Write $Perm.No))
      $Perm.No))
  
  :qid |quant-u-4867|))))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
; [state consolidation]
; State saturation: before repetition
(set-option :timeout 10)
(check-sat)
; unknown
(declare-const sm@30@01 $FVF<f>)
; Definitional axioms for snapshot map domain
; Definitional axioms for snapshot map values
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@25@01 r) (Set_in (inv@24@01 r) xs@20@01))
    (= ($FVF.lookup_f (as sm@30@01  $FVF<f>) r) ($FVF.lookup_f $t@23@01 r)))
  :pattern (($FVF.lookup_f (as sm@30@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f $t@23@01 r))
  :qid |qp.fvfValDef2|)))
(assert (forall ((r $Ref)) (!
  (=>
    (= r y@21@01)
    (=
      ($FVF.lookup_f (as sm@30@01  $FVF<f>) r)
      ($FVF.lookup_f (as sm@27@01  $FVF<f>) r)))
  :pattern (($FVF.lookup_f (as sm@30@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f (as sm@27@01  $FVF<f>) r))
  :qid |qp.fvfValDef3|)))
(declare-const pm@31@01 $FPM)
(assert (forall ((r $Ref)) (!
  (=
    ($FVF.perm_f (as pm@31@01  $FPM) r)
    (+
      (ite
        (and (img@25@01 r) (Set_in (inv@24@01 r) xs@20@01))
        $Perm.Write
        $Perm.No)
      (ite (= r y@21@01) $Perm.Write $Perm.No)))
  :pattern (($FVF.perm_f (as pm@31@01  $FPM) r))
  :qid |qp.resPrmSumDef4|)))
; Assume upper permission bound for field f
(assert (forall ((r $Ref)) (!
  (<= ($FVF.perm_f (as pm@31@01  $FPM) r) $Perm.Write)
  :pattern ((inv@24@01 r))
  :qid |qp-fld-prm-bnd|)))
(assert (<= ($FVF.perm_f (as pm@31@01  $FPM) y@21@01) $Perm.Write))
(set-option :timeout 0)
(push) ; 5
(set-option :timeout 10)
(assert (not (= y@21@01 x@29@01)))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 5
(assert (not (forall ((r $Ref)) (!
  (=>
    (= r x@29@01)
    (>
      (+
        (ite
          (and (img@25@01 r) (Set_in (inv@24@01 r) xs@20@01))
          $Perm.Write
          $Perm.No)
        (ite (= r y@21@01) $Perm.Write $Perm.No))
      $Perm.No))
  
  :qid |quant-u-4868|))))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(pop) ; 4
(pop) ; 3
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall ((x@29@01 $Ref)) (!
  (and
    (=>
      (= x@29@01 y@21@01)
      (and (= x@29@01 y@21@01) (dangling%precondition $Snap.unit x@29@01)))
    (or (not (= x@29@01 y@21@01)) (= x@29@01 y@21@01)))
  
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/snapshots/test_exp.vpr@26@10@27@27-aux|)))
(assert (forall ((x@29@01 $Ref)) (!
  (=> (= x@29@01 y@21@01) (dangling $Snap.unit x@29@01))
  
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/snapshots/test_exp.vpr@26@10@27@27|)))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
(pop) ; 2
(pop) ; 1
; ---------- test03 ----------
(declare-const xs@32@01 Set<$Ref>)
(declare-const y@33@01 $Ref)
(declare-const xs@34@01 Set<$Ref>)
(declare-const y@35@01 $Ref)
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
; inhale (forall x: Ref :: { zero(x) } x == y ==> zero(x))
(declare-const $t@36@01 $Snap)
(assert (= $t@36@01 $Snap.unit))
; [eval] (forall x: Ref :: { zero(x) } x == y ==> zero(x))
(declare-const x@37@01 $Ref)
(push) ; 3
; [eval] x == y ==> zero(x)
; [eval] x == y
(push) ; 4
; [then-branch: 3 | x@37@01 == y@35@01 | live]
; [else-branch: 3 | x@37@01 != y@35@01 | live]
(push) ; 5
; [then-branch: 3 | x@37@01 == y@35@01]
(assert (= x@37@01 y@35@01))
; [eval] zero(x)
(push) ; 6
(check-sat)
; unknown
; [state consolidation]
; State saturation: before repetition
(set-option :timeout 10)
(check-sat)
; unknown
(set-option :timeout 0)
(push) ; 7
(set-option :timeout 10)
(assert (not false))
(check-sat)
; unknown
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(check-sat)
; unknown
; [state consolidation]
; State saturation: before repetition
(set-option :timeout 10)
(check-sat)
; unknown
(set-option :timeout 0)
(push) ; 7
(set-option :timeout 10)
(assert (not false))
(check-sat)
; unknown
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(check-sat)
; unknown
; [state consolidation]
; State saturation: before repetition
(set-option :timeout 10)
(check-sat)
; unknown
(set-option :timeout 0)
(push) ; 7
(set-option :timeout 10)
(assert (not false))
(check-sat)
; unknown
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(check-sat)
; unknown
(pop) ; 6
(pop) ; 5
(pop) ; 4
(pop) ; 3
(pop) ; 2
(pop) ; 1
; ---------- test04 ----------
(declare-const xs@38@01 Set<$Ref>)
(declare-const y@39@01 $Ref)
(declare-const xs@40@01 Set<$Ref>)
(declare-const y@41@01 $Ref)
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
; inhale (forall x: Ref ::(x in xs) ==> acc(x.f, write))
(declare-const x@42@01 $Ref)
(push) ; 3
; [eval] (x in xs)
(assert (Set_in x@42@01 xs@40@01))
(pop) ; 3
(declare-const $t@43@01 $FVF<f>)
(declare-fun inv@44@01 ($Ref) $Ref)
(declare-fun img@45@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
; Check receiver injectivity
(push) ; 3
(assert (not (forall ((x1@42@01 $Ref) (x2@42@01 $Ref)) (!
  (=>
    (and
      (Set_in x1@42@01 xs@40@01)
      (Set_in x2@42@01 xs@40@01)
      (= x1@42@01 x2@42@01))
    (= x1@42@01 x2@42@01))
  
  :qid |f-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((x@42@01 $Ref)) (!
  (=>
    (Set_in x@42@01 xs@40@01)
    (and (= (inv@44@01 x@42@01) x@42@01) (img@45@01 x@42@01)))
  :pattern ((Set_in x@42@01 xs@40@01))
  :pattern ((inv@44@01 x@42@01))
  :pattern ((img@45@01 x@42@01))
  :qid |quant-u-4870|)))
(assert (forall ((r $Ref)) (!
  (=> (and (img@45@01 r) (Set_in (inv@44@01 r) xs@40@01)) (= (inv@44@01 r) r))
  :pattern ((inv@44@01 r))
  :qid |f-fctOfInv|)))
; Permissions are non-negative
; Field permissions are at most one
; Permission implies non-null receiver
(assert (forall ((x@42@01 $Ref)) (!
  (=> (Set_in x@42@01 xs@40@01) (not (= x@42@01 $Ref.null)))
  :pattern ((Set_in x@42@01 xs@40@01))
  :pattern ((inv@44@01 x@42@01))
  :pattern ((img@45@01 x@42@01))
  :qid |f-permImpliesNonNull|)))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale (forall x: Ref :: { zero(x) } x == y ==> zero(x))
(declare-const $t@46@01 $Snap)
(assert (= $t@46@01 $Snap.unit))
; [eval] (forall x: Ref :: { zero(x) } x == y ==> zero(x))
(declare-const x@47@01 $Ref)
(set-option :timeout 0)
(push) ; 3
; [eval] x == y ==> zero(x)
; [eval] x == y
(push) ; 4
; [then-branch: 4 | x@47@01 == y@41@01 | live]
; [else-branch: 4 | x@47@01 != y@41@01 | live]
(push) ; 5
; [then-branch: 4 | x@47@01 == y@41@01]
(assert (= x@47@01 y@41@01))
; [eval] zero(x)
(push) ; 6
(push) ; 7
(assert (not (forall ((r $Ref)) (!
  (=>
    (= r x@47@01)
    (>
      (ite
        (and (img@45@01 r) (Set_in (inv@44@01 r) xs@40@01))
        $Perm.Write
        $Perm.No)
      $Perm.No))
  
  :qid |quant-u-4871|))))
(check-sat)
; unknown
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
; [state consolidation]
; State saturation: before repetition
(set-option :timeout 10)
(check-sat)
; unknown
(declare-const sm@48@01 $FVF<f>)
; Definitional axioms for snapshot map domain
; Definitional axioms for snapshot map values
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@45@01 r) (Set_in (inv@44@01 r) xs@40@01))
    (= ($FVF.lookup_f (as sm@48@01  $FVF<f>) r) ($FVF.lookup_f $t@43@01 r)))
  :pattern (($FVF.lookup_f (as sm@48@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f $t@43@01 r))
  :qid |qp.fvfValDef5|)))
(declare-const pm@49@01 $FPM)
(assert (forall ((r $Ref)) (!
  (=
    ($FVF.perm_f (as pm@49@01  $FPM) r)
    (ite
      (and (img@45@01 r) (Set_in (inv@44@01 r) xs@40@01))
      $Perm.Write
      $Perm.No))
  :pattern (($FVF.perm_f (as pm@49@01  $FPM) r))
  :qid |qp.resPrmSumDef6|)))
; Assume upper permission bound for field f
(assert (forall ((r $Ref)) (!
  (<= ($FVF.perm_f (as pm@49@01  $FPM) r) $Perm.Write)
  :pattern ((inv@44@01 r))
  :qid |qp-fld-prm-bnd|)))
(set-option :timeout 0)
(push) ; 7
(assert (not (forall ((r $Ref)) (!
  (=>
    (= r x@47@01)
    (>
      (ite
        (and (img@45@01 r) (Set_in (inv@44@01 r) xs@40@01))
        $Perm.Write
        $Perm.No)
      $Perm.No))
  
  :qid |quant-u-4872|))))
(check-sat)
; unknown
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(pop) ; 6
(pop) ; 5
(pop) ; 4
(pop) ; 3
(pop) ; 2
(pop) ; 1
; ---------- test05 ----------
(declare-const xs@50@01 Set<$Ref>)
(declare-const y@51@01 $Ref)
(declare-const xs@52@01 Set<$Ref>)
(declare-const y@53@01 $Ref)
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
; inhale (forall x: Ref ::(x in xs) ==> acc(x.f, write))
(declare-const x@54@01 $Ref)
(push) ; 3
; [eval] (x in xs)
(assert (Set_in x@54@01 xs@52@01))
(pop) ; 3
(declare-const $t@55@01 $FVF<f>)
(declare-fun inv@56@01 ($Ref) $Ref)
(declare-fun img@57@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
; Check receiver injectivity
(push) ; 3
(assert (not (forall ((x1@54@01 $Ref) (x2@54@01 $Ref)) (!
  (=>
    (and
      (Set_in x1@54@01 xs@52@01)
      (Set_in x2@54@01 xs@52@01)
      (= x1@54@01 x2@54@01))
    (= x1@54@01 x2@54@01))
  
  :qid |f-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((x@54@01 $Ref)) (!
  (=>
    (Set_in x@54@01 xs@52@01)
    (and (= (inv@56@01 x@54@01) x@54@01) (img@57@01 x@54@01)))
  :pattern ((Set_in x@54@01 xs@52@01))
  :pattern ((inv@56@01 x@54@01))
  :pattern ((img@57@01 x@54@01))
  :qid |quant-u-4874|)))
(assert (forall ((r $Ref)) (!
  (=> (and (img@57@01 r) (Set_in (inv@56@01 r) xs@52@01)) (= (inv@56@01 r) r))
  :pattern ((inv@56@01 r))
  :qid |f-fctOfInv|)))
; Permissions are non-negative
; Field permissions are at most one
; Permission implies non-null receiver
(assert (forall ((x@54@01 $Ref)) (!
  (=> (Set_in x@54@01 xs@52@01) (not (= x@54@01 $Ref.null)))
  :pattern ((Set_in x@54@01 xs@52@01))
  :pattern ((inv@56@01 x@54@01))
  :pattern ((img@57@01 x@54@01))
  :qid |f-permImpliesNonNull|)))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale acc(y.f, write)
(declare-const $t@58@01 Int)
(declare-const sm@59@01 $FVF<f>)
; Definitional axioms for singleton-SM's value
(assert (= ($FVF.lookup_f (as sm@59@01  $FVF<f>) y@53@01) $t@58@01))
(assert (not (= y@53@01 $Ref.null)))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale (forall x: Ref :: { zero(x) } x == y ==> zero(x))
(declare-const $t@60@01 $Snap)
(assert (= $t@60@01 $Snap.unit))
; [eval] (forall x: Ref :: { zero(x) } x == y ==> zero(x))
(declare-const x@61@01 $Ref)
(set-option :timeout 0)
(push) ; 3
; [eval] x == y ==> zero(x)
; [eval] x == y
(push) ; 4
; [then-branch: 5 | x@61@01 == y@53@01 | live]
; [else-branch: 5 | x@61@01 != y@53@01 | live]
(push) ; 5
; [then-branch: 5 | x@61@01 == y@53@01]
(assert (= x@61@01 y@53@01))
; [eval] zero(x)
(push) ; 6
(push) ; 7
(set-option :timeout 10)
(assert (not (= y@53@01 x@61@01)))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 7
(assert (not (forall ((r $Ref)) (!
  (=>
    (= r x@61@01)
    (>
      (+
        (ite (= r y@53@01) $Perm.Write $Perm.No)
        (ite
          (and (img@57@01 r) (Set_in (inv@56@01 r) xs@52@01))
          $Perm.Write
          $Perm.No))
      $Perm.No))
  
  :qid |quant-u-4875|))))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(declare-const sm@62@01 $FVF<f>)
; Definitional axioms for snapshot map domain (instantiated)
; Definitional axioms for snapshot map values (instantiated)
(assert (=>
  (and (img@57@01 x@61@01) (Set_in (inv@56@01 x@61@01) xs@52@01))
  (=
    ($FVF.lookup_f (as sm@62@01  $FVF<f>) x@61@01)
    ($FVF.lookup_f $t@55@01 x@61@01))))
(assert (=>
  (= x@61@01 y@53@01)
  (=
    ($FVF.lookup_f (as sm@62@01  $FVF<f>) x@61@01)
    ($FVF.lookup_f (as sm@59@01  $FVF<f>) x@61@01))))
(assert (zero%precondition ($SortWrappers.IntTo$Snap ($FVF.lookup_f (as sm@62@01  $FVF<f>) x@61@01)) x@61@01))
(pop) ; 6
; Joined path conditions
(assert (and
  (=>
    (and (img@57@01 x@61@01) (Set_in (inv@56@01 x@61@01) xs@52@01))
    (=
      ($FVF.lookup_f (as sm@62@01  $FVF<f>) x@61@01)
      ($FVF.lookup_f $t@55@01 x@61@01)))
  (=>
    (= x@61@01 y@53@01)
    (=
      ($FVF.lookup_f (as sm@62@01  $FVF<f>) x@61@01)
      ($FVF.lookup_f (as sm@59@01  $FVF<f>) x@61@01)))
  (zero%precondition ($SortWrappers.IntTo$Snap ($FVF.lookup_f (as sm@62@01  $FVF<f>) x@61@01)) x@61@01)))
(pop) ; 5
(push) ; 5
; [else-branch: 5 | x@61@01 != y@53@01]
(assert (not (= x@61@01 y@53@01)))
(pop) ; 5
(pop) ; 4
; Joined path conditions
(assert (=>
  (= x@61@01 y@53@01)
  (and
    (= x@61@01 y@53@01)
    (=>
      (and (img@57@01 x@61@01) (Set_in (inv@56@01 x@61@01) xs@52@01))
      (=
        ($FVF.lookup_f (as sm@62@01  $FVF<f>) x@61@01)
        ($FVF.lookup_f $t@55@01 x@61@01)))
    (=>
      (= x@61@01 y@53@01)
      (=
        ($FVF.lookup_f (as sm@62@01  $FVF<f>) x@61@01)
        ($FVF.lookup_f (as sm@59@01  $FVF<f>) x@61@01)))
    (zero%precondition ($SortWrappers.IntTo$Snap ($FVF.lookup_f (as sm@62@01  $FVF<f>) x@61@01)) x@61@01))))
; Joined path conditions
(assert (or (not (= x@61@01 y@53@01)) (= x@61@01 y@53@01)))
(pop) ; 3
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall ((x@61@01 $Ref)) (!
  (and
    (=>
      (= x@61@01 y@53@01)
      (and
        (= x@61@01 y@53@01)
        (=>
          (and (img@57@01 x@61@01) (Set_in (inv@56@01 x@61@01) xs@52@01))
          (=
            ($FVF.lookup_f (as sm@62@01  $FVF<f>) x@61@01)
            ($FVF.lookup_f $t@55@01 x@61@01)))
        (=>
          (= x@61@01 y@53@01)
          (=
            ($FVF.lookup_f (as sm@62@01  $FVF<f>) x@61@01)
            ($FVF.lookup_f (as sm@59@01  $FVF<f>) x@61@01)))
        (zero%precondition ($SortWrappers.IntTo$Snap ($FVF.lookup_f (as sm@62@01  $FVF<f>) x@61@01)) x@61@01)))
    (or (not (= x@61@01 y@53@01)) (= x@61@01 y@53@01)))
  :pattern ((zero%limited ($SortWrappers.IntTo$Snap ($FVF.lookup_f (as sm@62@01  $FVF<f>) x@61@01)) x@61@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/snapshots/test_exp.vpr@49@10@50@23-aux|)))
(assert (forall ((x@61@01 $Ref)) (!
  (=>
    (= x@61@01 y@53@01)
    (zero ($SortWrappers.IntTo$Snap ($FVF.lookup_f (as sm@62@01  $FVF<f>) x@61@01)) x@61@01))
  :pattern ((zero%limited ($SortWrappers.IntTo$Snap ($FVF.lookup_f (as sm@62@01  $FVF<f>) x@61@01)) x@61@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/snapshots/test_exp.vpr@49@10@50@23|)))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
(pop) ; 2
(pop) ; 1
