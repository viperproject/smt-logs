(get-info :version)
; (:version "4.12.1")
; Started: 2025-01-13 17:36:12
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
(declare-fun fun2 ($Snap Set<$Ref> $Ref $Ref) Int)
(declare-fun fun2%limited ($Snap Set<$Ref> $Ref $Ref) Int)
(declare-fun fun2%stateless (Set<$Ref> $Ref $Ref) Bool)
(declare-fun fun2%precondition ($Snap Set<$Ref> $Ref $Ref) Bool)
(declare-fun fun1 ($Snap Set<$Ref> $Ref) Int)
(declare-fun fun1%limited ($Snap Set<$Ref> $Ref) Int)
(declare-fun fun1%stateless (Set<$Ref> $Ref) Bool)
(declare-fun fun1%precondition ($Snap Set<$Ref> $Ref) Bool)
(declare-fun fun6 ($Snap $Ref $Ref $Ref) Int)
(declare-fun fun6%limited ($Snap $Ref $Ref $Ref) Int)
(declare-fun fun6%stateless ($Ref $Ref $Ref) Bool)
(declare-fun fun6%precondition ($Snap $Ref $Ref $Ref) Bool)
(declare-fun fun4 ($Snap $Ref $Ref $Ref) Int)
(declare-fun fun4%limited ($Snap $Ref $Ref $Ref) Int)
(declare-fun fun4%stateless ($Ref $Ref $Ref) Bool)
(declare-fun fun4%precondition ($Snap $Ref $Ref $Ref) Bool)
(declare-fun fun3 ($Snap $Ref $Ref $Ref) Int)
(declare-fun fun3%limited ($Snap $Ref $Ref $Ref) Int)
(declare-fun fun3%stateless ($Ref $Ref $Ref) Bool)
(declare-fun fun3%precondition ($Snap $Ref $Ref $Ref) Bool)
(declare-fun fun5 ($Snap $Ref $Ref $Ref) Int)
(declare-fun fun5%limited ($Snap $Ref $Ref $Ref) Int)
(declare-fun fun5%stateless ($Ref $Ref $Ref) Bool)
(declare-fun fun5%precondition ($Snap $Ref $Ref $Ref) Bool)
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
; ---------- FUNCTION fun2----------
(declare-fun xs@0@00 () Set<$Ref>)
(declare-fun x@1@00 () $Ref)
(declare-fun y@2@00 () $Ref)
(declare-fun result@3@00 () Int)
; ----- Well-definedness of specifications -----
(set-option :timeout 0)
(push) ; 1
(assert (= s@$ ($Snap.combine ($Snap.first s@$) ($Snap.second s@$))))
(assert (= ($Snap.first s@$) $Snap.unit))
; [eval] (x in xs)
(assert (Set_in x@1@00 xs@0@00))
(declare-const r@23@00 $Ref)
(push) ; 2
; [eval] (r in xs)
(assert (Set_in r@23@00 xs@0@00))
(pop) ; 2
(declare-fun inv@24@00 ($Snap Set<$Ref> $Ref $Ref $Ref) $Ref)
(declare-fun img@25@00 ($Snap Set<$Ref> $Ref $Ref $Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
; Check receiver injectivity
(push) ; 2
(assert (not (forall ((r1@23@00 $Ref) (r2@23@00 $Ref)) (!
  (=>
    (and
      (Set_in r1@23@00 xs@0@00)
      (Set_in r2@23@00 xs@0@00)
      (= r1@23@00 r2@23@00))
    (= r1@23@00 r2@23@00))
  
  :qid |f-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 2
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((r@23@00 $Ref)) (!
  (=>
    (Set_in r@23@00 xs@0@00)
    (and
      (= (inv@24@00 s@$ xs@0@00 x@1@00 y@2@00 r@23@00) r@23@00)
      (img@25@00 s@$ xs@0@00 x@1@00 y@2@00 r@23@00)))
  :pattern ((Set_in r@23@00 xs@0@00))
  :pattern ((inv@24@00 s@$ xs@0@00 x@1@00 y@2@00 r@23@00))
  :pattern ((img@25@00 s@$ xs@0@00 x@1@00 y@2@00 r@23@00))
  :qid |quant-u-5706|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@25@00 s@$ xs@0@00 x@1@00 y@2@00 r)
      (Set_in (inv@24@00 s@$ xs@0@00 x@1@00 y@2@00 r) xs@0@00))
    (= (inv@24@00 s@$ xs@0@00 x@1@00 y@2@00 r) r))
  :pattern ((inv@24@00 s@$ xs@0@00 x@1@00 y@2@00 r))
  :qid |f-fctOfInv|)))
; Permissions are non-negative
; Permission implies non-null receiver
(assert (forall ((r@23@00 $Ref)) (!
  (=> (Set_in r@23@00 xs@0@00) (not (= r@23@00 $Ref.null)))
  :pattern ((Set_in r@23@00 xs@0@00))
  :pattern ((inv@24@00 s@$ xs@0@00 x@1@00 y@2@00 r@23@00))
  :pattern ((img@25@00 s@$ xs@0@00 x@1@00 y@2@00 r@23@00))
  :qid |f-permImpliesNonNull|)))
(pop) ; 1
(assert (forall ((s@$ $Snap) (xs@0@00 Set<$Ref>) (x@1@00 $Ref) (y@2@00 $Ref)) (!
  (= (fun2%limited s@$ xs@0@00 x@1@00 y@2@00) (fun2 s@$ xs@0@00 x@1@00 y@2@00))
  :pattern ((fun2 s@$ xs@0@00 x@1@00 y@2@00))
  :qid |quant-u-5693|)))
(assert (forall ((s@$ $Snap) (xs@0@00 Set<$Ref>) (x@1@00 $Ref) (y@2@00 $Ref)) (!
  (fun2%stateless xs@0@00 x@1@00 y@2@00)
  :pattern ((fun2%limited s@$ xs@0@00 x@1@00 y@2@00))
  :qid |quant-u-5694|)))
; ----- Verification of function body and postcondition -----
(push) ; 1
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@25@00 s@$ xs@0@00 x@1@00 y@2@00 r)
      (Set_in (inv@24@00 s@$ xs@0@00 x@1@00 y@2@00 r) xs@0@00))
    (= (inv@24@00 s@$ xs@0@00 x@1@00 y@2@00 r) r))
  :pattern ((inv@24@00 s@$ xs@0@00 x@1@00 y@2@00 r))
  :qid |f-fctOfInv|)))
(assert (forall ((r@23@00 $Ref)) (!
  (=>
    (Set_in r@23@00 xs@0@00)
    (and
      (= (inv@24@00 s@$ xs@0@00 x@1@00 y@2@00 r@23@00) r@23@00)
      (img@25@00 s@$ xs@0@00 x@1@00 y@2@00 r@23@00)))
  :pattern ((Set_in r@23@00 xs@0@00))
  :pattern ((inv@24@00 s@$ xs@0@00 x@1@00 y@2@00 r@23@00))
  :pattern ((img@25@00 s@$ xs@0@00 x@1@00 y@2@00 r@23@00))
  :qid |quant-u-5706|)))
(assert (forall ((r@23@00 $Ref)) (!
  (=> (Set_in r@23@00 xs@0@00) (not (= r@23@00 $Ref.null)))
  :pattern ((Set_in r@23@00 xs@0@00))
  :pattern ((inv@24@00 s@$ xs@0@00 x@1@00 y@2@00 r@23@00))
  :pattern ((img@25@00 s@$ xs@0@00 x@1@00 y@2@00 r@23@00))
  :qid |f-permImpliesNonNull|)))
(assert (= s@$ ($Snap.combine ($Snap.first s@$) ($Snap.second s@$))))
(assert (= ($Snap.first s@$) $Snap.unit))
(assert (Set_in x@1@00 xs@0@00))
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
; [eval] x.f + ((y in xs) ? y.f : x.f)
(set-option :timeout 0)
(push) ; 2
(assert (not (and
  (img@25@00 s@$ xs@0@00 x@1@00 y@2@00 x@1@00)
  (Set_in (inv@24@00 s@$ xs@0@00 x@1@00 y@2@00 x@1@00) xs@0@00))))
(check-sat)
; unsat
(pop) ; 2
; 0.00s
; (get-info :all-statistics)
; [eval] ((y in xs) ? y.f : x.f)
; [eval] (y in xs)
(push) ; 2
(push) ; 3
(set-option :timeout 10)
(assert (not (not (Set_in y@2@00 xs@0@00))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (Set_in y@2@00 xs@0@00)))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; [then-branch: 0 | y@2@00 in xs@0@00 | live]
; [else-branch: 0 | !(y@2@00 in xs@0@00) | live]
(set-option :timeout 0)
(push) ; 3
; [then-branch: 0 | y@2@00 in xs@0@00]
(assert (Set_in y@2@00 xs@0@00))
(push) ; 4
(assert (not (and
  (img@25@00 s@$ xs@0@00 x@1@00 y@2@00 y@2@00)
  (Set_in (inv@24@00 s@$ xs@0@00 x@1@00 y@2@00 y@2@00) xs@0@00))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(pop) ; 3
(push) ; 3
; [else-branch: 0 | !(y@2@00 in xs@0@00)]
(assert (not (Set_in y@2@00 xs@0@00)))
(push) ; 4
(assert (not (and
  (img@25@00 s@$ xs@0@00 x@1@00 y@2@00 x@1@00)
  (Set_in (inv@24@00 s@$ xs@0@00 x@1@00 y@2@00 x@1@00) xs@0@00))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(pop) ; 3
(pop) ; 2
; Joined path conditions
; Joined path conditions
(assert (or (not (Set_in y@2@00 xs@0@00)) (Set_in y@2@00 xs@0@00)))
(assert (=
  result@3@00
  (+
    ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.second s@$)) x@1@00)
    (ite
      (Set_in y@2@00 xs@0@00)
      ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.second s@$)) y@2@00)
      ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.second s@$)) x@1@00)))))
(pop) ; 1
(assert (forall ((s@$ $Snap) (xs@0@00 Set<$Ref>) (x@1@00 $Ref) (y@2@00 $Ref)) (!
  (and
    (forall ((r@23@00 $Ref)) (!
      (=>
        (Set_in r@23@00 xs@0@00)
        (and
          (= (inv@24@00 s@$ xs@0@00 x@1@00 y@2@00 r@23@00) r@23@00)
          (img@25@00 s@$ xs@0@00 x@1@00 y@2@00 r@23@00)))
      :pattern ((Set_in r@23@00 xs@0@00))
      :pattern ((inv@24@00 s@$ xs@0@00 x@1@00 y@2@00 r@23@00))
      :pattern ((img@25@00 s@$ xs@0@00 x@1@00 y@2@00 r@23@00))
      :qid |quant-u-5706|))
    (forall ((r $Ref)) (!
      (=>
        (and
          (img@25@00 s@$ xs@0@00 x@1@00 y@2@00 r)
          (Set_in (inv@24@00 s@$ xs@0@00 x@1@00 y@2@00 r) xs@0@00))
        (= (inv@24@00 s@$ xs@0@00 x@1@00 y@2@00 r) r))
      :pattern ((inv@24@00 s@$ xs@0@00 x@1@00 y@2@00 r))
      :qid |f-fctOfInv|))
    (=>
      (fun2%precondition s@$ xs@0@00 x@1@00 y@2@00)
      (=
        (fun2 s@$ xs@0@00 x@1@00 y@2@00)
        (+
          ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.second s@$)) x@1@00)
          (ite
            (Set_in y@2@00 xs@0@00)
            ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.second s@$)) y@2@00)
            ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.second s@$)) x@1@00))))))
  :pattern ((fun2 s@$ xs@0@00 x@1@00 y@2@00))
  :qid |quant-u-5707|)))
(assert (forall ((s@$ $Snap) (xs@0@00 Set<$Ref>) (x@1@00 $Ref) (y@2@00 $Ref)) (!
  true
  :pattern ((fun2 s@$ xs@0@00 x@1@00 y@2@00))
  :qid |quant-u-5708|)))
; ---------- FUNCTION fun1----------
(declare-fun xs@4@00 () Set<$Ref>)
(declare-fun x@5@00 () $Ref)
(declare-fun result@6@00 () Int)
; ----- Well-definedness of specifications -----
(push) ; 1
(assert (= s@$ ($Snap.combine ($Snap.first s@$) ($Snap.second s@$))))
(assert (= ($Snap.first s@$) $Snap.unit))
; [eval] (x in xs)
(assert (Set_in x@5@00 xs@4@00))
(declare-const r@26@00 $Ref)
(push) ; 2
; [eval] (r in xs)
(assert (Set_in r@26@00 xs@4@00))
(pop) ; 2
(declare-fun inv@27@00 ($Snap Set<$Ref> $Ref $Ref) $Ref)
(declare-fun img@28@00 ($Snap Set<$Ref> $Ref $Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
; Check receiver injectivity
(push) ; 2
(assert (not (forall ((r1@26@00 $Ref) (r2@26@00 $Ref)) (!
  (=>
    (and
      (Set_in r1@26@00 xs@4@00)
      (Set_in r2@26@00 xs@4@00)
      (= r1@26@00 r2@26@00))
    (= r1@26@00 r2@26@00))
  
  :qid |f-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 2
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((r@26@00 $Ref)) (!
  (=>
    (Set_in r@26@00 xs@4@00)
    (and
      (= (inv@27@00 s@$ xs@4@00 x@5@00 r@26@00) r@26@00)
      (img@28@00 s@$ xs@4@00 x@5@00 r@26@00)))
  :pattern ((Set_in r@26@00 xs@4@00))
  :pattern ((inv@27@00 s@$ xs@4@00 x@5@00 r@26@00))
  :pattern ((img@28@00 s@$ xs@4@00 x@5@00 r@26@00))
  :qid |quant-u-5710|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@28@00 s@$ xs@4@00 x@5@00 r)
      (Set_in (inv@27@00 s@$ xs@4@00 x@5@00 r) xs@4@00))
    (= (inv@27@00 s@$ xs@4@00 x@5@00 r) r))
  :pattern ((inv@27@00 s@$ xs@4@00 x@5@00 r))
  :qid |f-fctOfInv|)))
; Permissions are non-negative
; Permission implies non-null receiver
(assert (forall ((r@26@00 $Ref)) (!
  (=> (Set_in r@26@00 xs@4@00) (not (= r@26@00 $Ref.null)))
  :pattern ((Set_in r@26@00 xs@4@00))
  :pattern ((inv@27@00 s@$ xs@4@00 x@5@00 r@26@00))
  :pattern ((img@28@00 s@$ xs@4@00 x@5@00 r@26@00))
  :qid |f-permImpliesNonNull|)))
(pop) ; 1
(assert (forall ((s@$ $Snap) (xs@4@00 Set<$Ref>) (x@5@00 $Ref)) (!
  (= (fun1%limited s@$ xs@4@00 x@5@00) (fun1 s@$ xs@4@00 x@5@00))
  :pattern ((fun1 s@$ xs@4@00 x@5@00))
  :qid |quant-u-5695|)))
(assert (forall ((s@$ $Snap) (xs@4@00 Set<$Ref>) (x@5@00 $Ref)) (!
  (fun1%stateless xs@4@00 x@5@00)
  :pattern ((fun1%limited s@$ xs@4@00 x@5@00))
  :qid |quant-u-5696|)))
; ----- Verification of function body and postcondition -----
(push) ; 1
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@28@00 s@$ xs@4@00 x@5@00 r)
      (Set_in (inv@27@00 s@$ xs@4@00 x@5@00 r) xs@4@00))
    (= (inv@27@00 s@$ xs@4@00 x@5@00 r) r))
  :pattern ((inv@27@00 s@$ xs@4@00 x@5@00 r))
  :qid |f-fctOfInv|)))
(assert (forall ((r@26@00 $Ref)) (!
  (=>
    (Set_in r@26@00 xs@4@00)
    (and
      (= (inv@27@00 s@$ xs@4@00 x@5@00 r@26@00) r@26@00)
      (img@28@00 s@$ xs@4@00 x@5@00 r@26@00)))
  :pattern ((Set_in r@26@00 xs@4@00))
  :pattern ((inv@27@00 s@$ xs@4@00 x@5@00 r@26@00))
  :pattern ((img@28@00 s@$ xs@4@00 x@5@00 r@26@00))
  :qid |quant-u-5710|)))
(assert (forall ((r@26@00 $Ref)) (!
  (=> (Set_in r@26@00 xs@4@00) (not (= r@26@00 $Ref.null)))
  :pattern ((Set_in r@26@00 xs@4@00))
  :pattern ((inv@27@00 s@$ xs@4@00 x@5@00 r@26@00))
  :pattern ((img@28@00 s@$ xs@4@00 x@5@00 r@26@00))
  :qid |f-permImpliesNonNull|)))
(assert (= s@$ ($Snap.combine ($Snap.first s@$) ($Snap.second s@$))))
(assert (= ($Snap.first s@$) $Snap.unit))
(assert (Set_in x@5@00 xs@4@00))
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
(set-option :timeout 0)
(push) ; 2
(assert (not (and
  (img@28@00 s@$ xs@4@00 x@5@00 x@5@00)
  (Set_in (inv@27@00 s@$ xs@4@00 x@5@00 x@5@00) xs@4@00))))
(check-sat)
; unsat
(pop) ; 2
; 0.00s
; (get-info :all-statistics)
(assert (=
  result@6@00
  ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.second s@$)) x@5@00)))
(pop) ; 1
(assert (forall ((s@$ $Snap) (xs@4@00 Set<$Ref>) (x@5@00 $Ref)) (!
  (and
    (forall ((r@26@00 $Ref)) (!
      (=>
        (Set_in r@26@00 xs@4@00)
        (and
          (= (inv@27@00 s@$ xs@4@00 x@5@00 r@26@00) r@26@00)
          (img@28@00 s@$ xs@4@00 x@5@00 r@26@00)))
      :pattern ((Set_in r@26@00 xs@4@00))
      :pattern ((inv@27@00 s@$ xs@4@00 x@5@00 r@26@00))
      :pattern ((img@28@00 s@$ xs@4@00 x@5@00 r@26@00))
      :qid |quant-u-5710|))
    (forall ((r $Ref)) (!
      (=>
        (and
          (img@28@00 s@$ xs@4@00 x@5@00 r)
          (Set_in (inv@27@00 s@$ xs@4@00 x@5@00 r) xs@4@00))
        (= (inv@27@00 s@$ xs@4@00 x@5@00 r) r))
      :pattern ((inv@27@00 s@$ xs@4@00 x@5@00 r))
      :qid |f-fctOfInv|))
    (=>
      (fun1%precondition s@$ xs@4@00 x@5@00)
      (=
        (fun1 s@$ xs@4@00 x@5@00)
        ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.second s@$)) x@5@00))))
  :pattern ((fun1 s@$ xs@4@00 x@5@00))
  :qid |quant-u-5711|)))
(assert (forall ((s@$ $Snap) (xs@4@00 Set<$Ref>) (x@5@00 $Ref)) (!
  true
  :pattern ((fun1 s@$ xs@4@00 x@5@00))
  :qid |quant-u-5712|)))
; ---------- FUNCTION fun6----------
(declare-fun x@7@00 () $Ref)
(declare-fun y@8@00 () $Ref)
(declare-fun z@9@00 () $Ref)
(declare-fun result@10@00 () Int)
; ----- Well-definedness of specifications -----
(push) ; 1
(assert (= s@$ ($Snap.combine ($Snap.first s@$) ($Snap.second s@$))))
(declare-fun sm@29@00 ($Snap $Ref $Ref $Ref) $FVF<f>)
; Definitional axioms for singleton-SM's value
(assert (=
  ($FVF.lookup_f (sm@29@00 s@$ x@7@00 y@8@00 z@9@00) x@7@00)
  ($SortWrappers.$SnapToInt ($Snap.first s@$))))
(assert (not (= x@7@00 $Ref.null)))
(assert (=
  ($Snap.second s@$)
  ($Snap.combine
    ($Snap.first ($Snap.second s@$))
    ($Snap.second ($Snap.second s@$)))))
(declare-fun sm@30@00 ($Snap $Ref $Ref $Ref) $FVF<f>)
; Definitional axioms for singleton-SM's value
(assert (=
  ($FVF.lookup_f (sm@30@00 s@$ x@7@00 y@8@00 z@9@00) y@8@00)
  ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second s@$)))))
(push) ; 2
(set-option :timeout 10)
(assert (not (= y@8@00 x@7@00)))
(check-sat)
; unknown
(pop) ; 2
; 0.00s
; (get-info :all-statistics)
(assert (not (= y@8@00 $Ref.null)))
(declare-fun sm@31@00 ($Snap $Ref $Ref $Ref) $FVF<f>)
; Definitional axioms for singleton-SM's value
(assert (=
  ($FVF.lookup_f (sm@31@00 s@$ x@7@00 y@8@00 z@9@00) z@9@00)
  ($SortWrappers.$SnapToInt ($Snap.second ($Snap.second s@$)))))
(set-option :timeout 0)
(push) ; 2
(set-option :timeout 10)
(assert (not (= z@9@00 y@8@00)))
(check-sat)
; unknown
(pop) ; 2
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 2
(set-option :timeout 10)
(assert (not (= z@9@00 x@7@00)))
(check-sat)
; unknown
(pop) ; 2
; 0.00s
; (get-info :all-statistics)
(assert (not (= z@9@00 $Ref.null)))
(pop) ; 1
(assert (forall ((s@$ $Snap) (x@7@00 $Ref) (y@8@00 $Ref) (z@9@00 $Ref)) (!
  (= (fun6%limited s@$ x@7@00 y@8@00 z@9@00) (fun6 s@$ x@7@00 y@8@00 z@9@00))
  :pattern ((fun6 s@$ x@7@00 y@8@00 z@9@00))
  :qid |quant-u-5697|)))
(assert (forall ((s@$ $Snap) (x@7@00 $Ref) (y@8@00 $Ref) (z@9@00 $Ref)) (!
  (fun6%stateless x@7@00 y@8@00 z@9@00)
  :pattern ((fun6%limited s@$ x@7@00 y@8@00 z@9@00))
  :qid |quant-u-5698|)))
; ----- Verification of function body and postcondition -----
(set-option :timeout 0)
(push) ; 1
(assert (=
  ($FVF.lookup_f (sm@31@00 s@$ x@7@00 y@8@00 z@9@00) z@9@00)
  ($SortWrappers.$SnapToInt ($Snap.second ($Snap.second s@$)))))
(assert (not (= z@9@00 $Ref.null)))
(assert (=
  ($FVF.lookup_f (sm@30@00 s@$ x@7@00 y@8@00 z@9@00) y@8@00)
  ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second s@$)))))
(assert (not (= y@8@00 $Ref.null)))
(assert (=
  ($FVF.lookup_f (sm@29@00 s@$ x@7@00 y@8@00 z@9@00) x@7@00)
  ($SortWrappers.$SnapToInt ($Snap.first s@$))))
(assert (not (= x@7@00 $Ref.null)))
(assert (=
  ($Snap.second s@$)
  ($Snap.combine
    ($Snap.first ($Snap.second s@$))
    ($Snap.second ($Snap.second s@$)))))
(assert (= s@$ ($Snap.combine ($Snap.first s@$) ($Snap.second s@$))))
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
; [eval] x.f + y.f + z.f + fun2(Set(x, z), x, y)
; [eval] x.f + y.f + z.f
; [eval] x.f + y.f
(declare-fun sm@32@00 ($Snap $Ref $Ref $Ref) $FVF<f>)
; Definitional axioms for snapshot map values
(assert (forall ((r $Ref)) (!
  (=>
    (= r x@7@00)
    (=
      ($FVF.lookup_f (sm@32@00 s@$ x@7@00 y@8@00 z@9@00) r)
      ($FVF.lookup_f (sm@29@00 s@$ x@7@00 y@8@00 z@9@00) r)))
  :pattern (($FVF.lookup_f (sm@32@00 s@$ x@7@00 y@8@00 z@9@00) r))
  :pattern (($FVF.lookup_f (sm@29@00 s@$ x@7@00 y@8@00 z@9@00) r))
  :qid |qp.fvfValDef0|)))
(assert (forall ((r $Ref)) (!
  (=>
    (= r y@8@00)
    (=
      ($FVF.lookup_f (sm@32@00 s@$ x@7@00 y@8@00 z@9@00) r)
      ($FVF.lookup_f (sm@30@00 s@$ x@7@00 y@8@00 z@9@00) r)))
  :pattern (($FVF.lookup_f (sm@32@00 s@$ x@7@00 y@8@00 z@9@00) r))
  :pattern (($FVF.lookup_f (sm@30@00 s@$ x@7@00 y@8@00 z@9@00) r))
  :qid |qp.fvfValDef1|)))
(assert (forall ((r $Ref)) (!
  (=>
    (= r z@9@00)
    (=
      ($FVF.lookup_f (sm@32@00 s@$ x@7@00 y@8@00 z@9@00) r)
      ($FVF.lookup_f (sm@31@00 s@$ x@7@00 y@8@00 z@9@00) r)))
  :pattern (($FVF.lookup_f (sm@32@00 s@$ x@7@00 y@8@00 z@9@00) r))
  :pattern (($FVF.lookup_f (sm@31@00 s@$ x@7@00 y@8@00 z@9@00) r))
  :qid |qp.fvfValDef2|)))
(declare-const pm@33@00 $FPM)
(assert (forall ((r $Ref)) (!
  (=
    ($FVF.perm_f (as pm@33@00  $FPM) r)
    (+
      (+
        (ite (= r x@7@00) $Perm.Write $Perm.No)
        (ite (= r y@8@00) $Perm.Write $Perm.No))
      (ite (= r z@9@00) $Perm.Write $Perm.No)))
  :pattern (($FVF.perm_f (as pm@33@00  $FPM) r))
  :qid |qp.resPrmSumDef3|)))
(set-option :timeout 0)
(push) ; 2
(assert (not (< $Perm.No ($FVF.perm_f (as pm@33@00  $FPM) x@7@00))))
(check-sat)
; unsat
(pop) ; 2
; 0.00s
; (get-info :all-statistics)
(assert (and
  (forall ((r $Ref)) (!
    (=>
      (= r x@7@00)
      (=
        ($FVF.lookup_f (sm@32@00 s@$ x@7@00 y@8@00 z@9@00) r)
        ($FVF.lookup_f (sm@29@00 s@$ x@7@00 y@8@00 z@9@00) r)))
    :pattern (($FVF.lookup_f (sm@32@00 s@$ x@7@00 y@8@00 z@9@00) r))
    :pattern (($FVF.lookup_f (sm@29@00 s@$ x@7@00 y@8@00 z@9@00) r))
    :qid |qp.fvfValDef0|))
  (forall ((r $Ref)) (!
    (=>
      (= r y@8@00)
      (=
        ($FVF.lookup_f (sm@32@00 s@$ x@7@00 y@8@00 z@9@00) r)
        ($FVF.lookup_f (sm@30@00 s@$ x@7@00 y@8@00 z@9@00) r)))
    :pattern (($FVF.lookup_f (sm@32@00 s@$ x@7@00 y@8@00 z@9@00) r))
    :pattern (($FVF.lookup_f (sm@30@00 s@$ x@7@00 y@8@00 z@9@00) r))
    :qid |qp.fvfValDef1|))
  (forall ((r $Ref)) (!
    (=>
      (= r z@9@00)
      (=
        ($FVF.lookup_f (sm@32@00 s@$ x@7@00 y@8@00 z@9@00) r)
        ($FVF.lookup_f (sm@31@00 s@$ x@7@00 y@8@00 z@9@00) r)))
    :pattern (($FVF.lookup_f (sm@32@00 s@$ x@7@00 y@8@00 z@9@00) r))
    :pattern (($FVF.lookup_f (sm@31@00 s@$ x@7@00 y@8@00 z@9@00) r))
    :qid |qp.fvfValDef2|))))
(push) ; 2
(assert (not (<
  $Perm.No
  (+
    (+ (ite (= y@8@00 x@7@00) $Perm.Write $Perm.No) $Perm.Write)
    (ite (= y@8@00 z@9@00) $Perm.Write $Perm.No)))))
(check-sat)
; unsat
(pop) ; 2
; 0.00s
; (get-info :all-statistics)
(assert (and
  (forall ((r $Ref)) (!
    (=>
      (= r x@7@00)
      (=
        ($FVF.lookup_f (sm@32@00 s@$ x@7@00 y@8@00 z@9@00) r)
        ($FVF.lookup_f (sm@29@00 s@$ x@7@00 y@8@00 z@9@00) r)))
    :pattern (($FVF.lookup_f (sm@32@00 s@$ x@7@00 y@8@00 z@9@00) r))
    :pattern (($FVF.lookup_f (sm@29@00 s@$ x@7@00 y@8@00 z@9@00) r))
    :qid |qp.fvfValDef0|))
  (forall ((r $Ref)) (!
    (=>
      (= r y@8@00)
      (=
        ($FVF.lookup_f (sm@32@00 s@$ x@7@00 y@8@00 z@9@00) r)
        ($FVF.lookup_f (sm@30@00 s@$ x@7@00 y@8@00 z@9@00) r)))
    :pattern (($FVF.lookup_f (sm@32@00 s@$ x@7@00 y@8@00 z@9@00) r))
    :pattern (($FVF.lookup_f (sm@30@00 s@$ x@7@00 y@8@00 z@9@00) r))
    :qid |qp.fvfValDef1|))
  (forall ((r $Ref)) (!
    (=>
      (= r z@9@00)
      (=
        ($FVF.lookup_f (sm@32@00 s@$ x@7@00 y@8@00 z@9@00) r)
        ($FVF.lookup_f (sm@31@00 s@$ x@7@00 y@8@00 z@9@00) r)))
    :pattern (($FVF.lookup_f (sm@32@00 s@$ x@7@00 y@8@00 z@9@00) r))
    :pattern (($FVF.lookup_f (sm@31@00 s@$ x@7@00 y@8@00 z@9@00) r))
    :qid |qp.fvfValDef2|))))
(push) ; 2
(assert (not (<
  $Perm.No
  (+
    (+
      (ite (= z@9@00 x@7@00) $Perm.Write $Perm.No)
      (ite (= z@9@00 y@8@00) $Perm.Write $Perm.No))
    $Perm.Write))))
(check-sat)
; unsat
(pop) ; 2
; 0.00s
; (get-info :all-statistics)
; [eval] fun2(Set(x, z), x, y)
; [eval] Set(x, z)
(push) ; 2
; [eval] (x in xs)
(push) ; 3
(assert (not (Set_in x@7@00 (Set_unionone (Set_singleton x@7@00) z@9@00))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(assert (Set_in x@7@00 (Set_unionone (Set_singleton x@7@00) z@9@00)))
(declare-const r@34@00 $Ref)
(push) ; 3
; [eval] (r in xs)
(assert (Set_in r@34@00 (Set_unionone (Set_singleton x@7@00) z@9@00)))
(pop) ; 3
(declare-fun inv@35@00 ($Snap $Ref $Ref $Ref $Ref) $Ref)
(declare-fun img@36@00 ($Snap $Ref $Ref $Ref $Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
; Check receiver injectivity
(push) ; 3
(assert (not (forall ((r1@34@00 $Ref) (r2@34@00 $Ref)) (!
  (=>
    (and
      (Set_in r1@34@00 (Set_unionone (Set_singleton x@7@00) z@9@00))
      (Set_in r2@34@00 (Set_unionone (Set_singleton x@7@00) z@9@00))
      (= r1@34@00 r2@34@00))
    (= r1@34@00 r2@34@00))
  
  :qid |f-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((r@34@00 $Ref)) (!
  (=>
    (Set_in r@34@00 (Set_unionone (Set_singleton x@7@00) z@9@00))
    (and
      (= (inv@35@00 s@$ x@7@00 y@8@00 z@9@00 r@34@00) r@34@00)
      (img@36@00 s@$ x@7@00 y@8@00 z@9@00 r@34@00)))
  :pattern ((Set_in r@34@00 (Set_unionone (Set_singleton x@7@00) z@9@00)))
  :pattern ((inv@35@00 s@$ x@7@00 y@8@00 z@9@00 r@34@00))
  :pattern ((img@36@00 s@$ x@7@00 y@8@00 z@9@00 r@34@00))
  :qid |f-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@36@00 s@$ x@7@00 y@8@00 z@9@00 r)
      (Set_in (inv@35@00 s@$ x@7@00 y@8@00 z@9@00 r) (Set_unionone (Set_singleton x@7@00) z@9@00)))
    (= (inv@35@00 s@$ x@7@00 y@8@00 z@9@00 r) r))
  :pattern ((inv@35@00 s@$ x@7@00 y@8@00 z@9@00 r))
  :qid |f-fctOfInv|)))
(push) ; 3
(assert (not (forall ((r $Ref)) (!
  (=>
    (and
      (Set_in (inv@35@00 s@$ x@7@00 y@8@00 z@9@00 r) (Set_unionone (Set_singleton x@7@00) z@9@00))
      (img@36@00 s@$ x@7@00 y@8@00 z@9@00 r)
      (= r (inv@35@00 s@$ x@7@00 y@8@00 z@9@00 r)))
    (>
      (+
        (+
          (ite (= r x@7@00) $Perm.Write $Perm.No)
          (ite (= r y@8@00) $Perm.Write $Perm.No))
        (ite (= r z@9@00) $Perm.Write $Perm.No))
      $Perm.No))
  
  :qid |quant-u-5714|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(declare-fun sm@37@00 ($Snap $Ref $Ref $Ref) $FVF<f>)
; Definitional axioms for snapshot map domain
(assert (forall ((r $Ref)) (!
  (and
    (=>
      (Set_in r ($FVF.domain_f (sm@37@00 s@$ x@7@00 y@8@00 z@9@00)))
      (and
        (Set_in (inv@35@00 s@$ x@7@00 y@8@00 z@9@00 r) (Set_unionone (Set_singleton x@7@00) z@9@00))
        (img@36@00 s@$ x@7@00 y@8@00 z@9@00 r)))
    (=>
      (and
        (Set_in (inv@35@00 s@$ x@7@00 y@8@00 z@9@00 r) (Set_unionone (Set_singleton x@7@00) z@9@00))
        (img@36@00 s@$ x@7@00 y@8@00 z@9@00 r))
      (Set_in r ($FVF.domain_f (sm@37@00 s@$ x@7@00 y@8@00 z@9@00)))))
  :pattern ((Set_in r ($FVF.domain_f (sm@37@00 s@$ x@7@00 y@8@00 z@9@00))))
  :qid |qp.fvfDomDef7|)))
; Definitional axioms for snapshot map values
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and
        (Set_in (inv@35@00 s@$ x@7@00 y@8@00 z@9@00 r) (Set_unionone (Set_singleton x@7@00) z@9@00))
        (img@36@00 s@$ x@7@00 y@8@00 z@9@00 r))
      (= r x@7@00))
    (=
      ($FVF.lookup_f (sm@37@00 s@$ x@7@00 y@8@00 z@9@00) r)
      ($FVF.lookup_f (sm@29@00 s@$ x@7@00 y@8@00 z@9@00) r)))
  :pattern (($FVF.lookup_f (sm@37@00 s@$ x@7@00 y@8@00 z@9@00) r))
  :pattern (($FVF.lookup_f (sm@29@00 s@$ x@7@00 y@8@00 z@9@00) r))
  :qid |qp.fvfValDef4|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and
        (Set_in (inv@35@00 s@$ x@7@00 y@8@00 z@9@00 r) (Set_unionone (Set_singleton x@7@00) z@9@00))
        (img@36@00 s@$ x@7@00 y@8@00 z@9@00 r))
      (= r y@8@00))
    (=
      ($FVF.lookup_f (sm@37@00 s@$ x@7@00 y@8@00 z@9@00) r)
      ($FVF.lookup_f (sm@30@00 s@$ x@7@00 y@8@00 z@9@00) r)))
  :pattern (($FVF.lookup_f (sm@37@00 s@$ x@7@00 y@8@00 z@9@00) r))
  :pattern (($FVF.lookup_f (sm@30@00 s@$ x@7@00 y@8@00 z@9@00) r))
  :qid |qp.fvfValDef5|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and
        (Set_in (inv@35@00 s@$ x@7@00 y@8@00 z@9@00 r) (Set_unionone (Set_singleton x@7@00) z@9@00))
        (img@36@00 s@$ x@7@00 y@8@00 z@9@00 r))
      (= r z@9@00))
    (=
      ($FVF.lookup_f (sm@37@00 s@$ x@7@00 y@8@00 z@9@00) r)
      ($FVF.lookup_f (sm@31@00 s@$ x@7@00 y@8@00 z@9@00) r)))
  :pattern (($FVF.lookup_f (sm@37@00 s@$ x@7@00 y@8@00 z@9@00) r))
  :pattern (($FVF.lookup_f (sm@31@00 s@$ x@7@00 y@8@00 z@9@00) r))
  :qid |qp.fvfValDef6|)))
(assert (fun2%precondition ($Snap.combine
  $Snap.unit
  ($SortWrappers.$FVF<f>To$Snap (sm@37@00 s@$ x@7@00 y@8@00 z@9@00))) (Set_unionone (Set_singleton x@7@00) z@9@00) x@7@00 y@8@00))
(pop) ; 2
; Joined path conditions
(assert (forall ((r@34@00 $Ref)) (!
  (=>
    (Set_in r@34@00 (Set_unionone (Set_singleton x@7@00) z@9@00))
    (and
      (= (inv@35@00 s@$ x@7@00 y@8@00 z@9@00 r@34@00) r@34@00)
      (img@36@00 s@$ x@7@00 y@8@00 z@9@00 r@34@00)))
  :pattern ((Set_in r@34@00 (Set_unionone (Set_singleton x@7@00) z@9@00)))
  :pattern ((inv@35@00 s@$ x@7@00 y@8@00 z@9@00 r@34@00))
  :pattern ((img@36@00 s@$ x@7@00 y@8@00 z@9@00 r@34@00))
  :qid |f-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@36@00 s@$ x@7@00 y@8@00 z@9@00 r)
      (Set_in (inv@35@00 s@$ x@7@00 y@8@00 z@9@00 r) (Set_unionone (Set_singleton x@7@00) z@9@00)))
    (= (inv@35@00 s@$ x@7@00 y@8@00 z@9@00 r) r))
  :pattern ((inv@35@00 s@$ x@7@00 y@8@00 z@9@00 r))
  :qid |f-fctOfInv|)))
(assert (forall ((r $Ref)) (!
  (and
    (=>
      (Set_in r ($FVF.domain_f (sm@37@00 s@$ x@7@00 y@8@00 z@9@00)))
      (and
        (Set_in (inv@35@00 s@$ x@7@00 y@8@00 z@9@00 r) (Set_unionone (Set_singleton x@7@00) z@9@00))
        (img@36@00 s@$ x@7@00 y@8@00 z@9@00 r)))
    (=>
      (and
        (Set_in (inv@35@00 s@$ x@7@00 y@8@00 z@9@00 r) (Set_unionone (Set_singleton x@7@00) z@9@00))
        (img@36@00 s@$ x@7@00 y@8@00 z@9@00 r))
      (Set_in r ($FVF.domain_f (sm@37@00 s@$ x@7@00 y@8@00 z@9@00)))))
  :pattern ((Set_in r ($FVF.domain_f (sm@37@00 s@$ x@7@00 y@8@00 z@9@00))))
  :qid |qp.fvfDomDef7|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and
        (Set_in (inv@35@00 s@$ x@7@00 y@8@00 z@9@00 r) (Set_unionone (Set_singleton x@7@00) z@9@00))
        (img@36@00 s@$ x@7@00 y@8@00 z@9@00 r))
      (= r x@7@00))
    (=
      ($FVF.lookup_f (sm@37@00 s@$ x@7@00 y@8@00 z@9@00) r)
      ($FVF.lookup_f (sm@29@00 s@$ x@7@00 y@8@00 z@9@00) r)))
  :pattern (($FVF.lookup_f (sm@37@00 s@$ x@7@00 y@8@00 z@9@00) r))
  :pattern (($FVF.lookup_f (sm@29@00 s@$ x@7@00 y@8@00 z@9@00) r))
  :qid |qp.fvfValDef4|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and
        (Set_in (inv@35@00 s@$ x@7@00 y@8@00 z@9@00 r) (Set_unionone (Set_singleton x@7@00) z@9@00))
        (img@36@00 s@$ x@7@00 y@8@00 z@9@00 r))
      (= r y@8@00))
    (=
      ($FVF.lookup_f (sm@37@00 s@$ x@7@00 y@8@00 z@9@00) r)
      ($FVF.lookup_f (sm@30@00 s@$ x@7@00 y@8@00 z@9@00) r)))
  :pattern (($FVF.lookup_f (sm@37@00 s@$ x@7@00 y@8@00 z@9@00) r))
  :pattern (($FVF.lookup_f (sm@30@00 s@$ x@7@00 y@8@00 z@9@00) r))
  :qid |qp.fvfValDef5|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and
        (Set_in (inv@35@00 s@$ x@7@00 y@8@00 z@9@00 r) (Set_unionone (Set_singleton x@7@00) z@9@00))
        (img@36@00 s@$ x@7@00 y@8@00 z@9@00 r))
      (= r z@9@00))
    (=
      ($FVF.lookup_f (sm@37@00 s@$ x@7@00 y@8@00 z@9@00) r)
      ($FVF.lookup_f (sm@31@00 s@$ x@7@00 y@8@00 z@9@00) r)))
  :pattern (($FVF.lookup_f (sm@37@00 s@$ x@7@00 y@8@00 z@9@00) r))
  :pattern (($FVF.lookup_f (sm@31@00 s@$ x@7@00 y@8@00 z@9@00) r))
  :qid |qp.fvfValDef6|)))
(assert (and
  (Set_in x@7@00 (Set_unionone (Set_singleton x@7@00) z@9@00))
  (fun2%precondition ($Snap.combine
    $Snap.unit
    ($SortWrappers.$FVF<f>To$Snap (sm@37@00 s@$ x@7@00 y@8@00 z@9@00))) (Set_unionone (Set_singleton x@7@00) z@9@00) x@7@00 y@8@00)))
(assert (=
  result@10@00
  (+
    (+
      (+
        ($FVF.lookup_f (sm@32@00 s@$ x@7@00 y@8@00 z@9@00) x@7@00)
        ($FVF.lookup_f (sm@32@00 s@$ x@7@00 y@8@00 z@9@00) y@8@00))
      ($FVF.lookup_f (sm@32@00 s@$ x@7@00 y@8@00 z@9@00) z@9@00))
    (fun2 ($Snap.combine
      $Snap.unit
      ($SortWrappers.$FVF<f>To$Snap (sm@37@00 s@$ x@7@00 y@8@00 z@9@00))) (Set_unionone (Set_singleton x@7@00) z@9@00) x@7@00 y@8@00))))
(pop) ; 1
(assert (forall ((s@$ $Snap) (x@7@00 $Ref) (y@8@00 $Ref) (z@9@00 $Ref)) (!
  (and
    (forall ((r@34@00 $Ref)) (!
      (=>
        (Set_in r@34@00 (Set_unionone (Set_singleton x@7@00) z@9@00))
        (and
          (= (inv@35@00 s@$ x@7@00 y@8@00 z@9@00 r@34@00) r@34@00)
          (img@36@00 s@$ x@7@00 y@8@00 z@9@00 r@34@00)))
      :pattern ((Set_in r@34@00 (Set_unionone (Set_singleton x@7@00) z@9@00)))
      :pattern ((inv@35@00 s@$ x@7@00 y@8@00 z@9@00 r@34@00))
      :pattern ((img@36@00 s@$ x@7@00 y@8@00 z@9@00 r@34@00))
      :qid |f-invOfFct|))
    (forall ((r $Ref)) (!
      (=>
        (and
          (img@36@00 s@$ x@7@00 y@8@00 z@9@00 r)
          (Set_in (inv@35@00 s@$ x@7@00 y@8@00 z@9@00 r) (Set_unionone (Set_singleton x@7@00) z@9@00)))
        (= (inv@35@00 s@$ x@7@00 y@8@00 z@9@00 r) r))
      :pattern ((inv@35@00 s@$ x@7@00 y@8@00 z@9@00 r))
      :qid |f-fctOfInv|))
    (=
      ($FVF.lookup_f (sm@29@00 s@$ x@7@00 y@8@00 z@9@00) x@7@00)
      ($SortWrappers.$SnapToInt ($Snap.first s@$)))
    (=
      ($FVF.lookup_f (sm@30@00 s@$ x@7@00 y@8@00 z@9@00) y@8@00)
      ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second s@$))))
    (=
      ($FVF.lookup_f (sm@31@00 s@$ x@7@00 y@8@00 z@9@00) z@9@00)
      ($SortWrappers.$SnapToInt ($Snap.second ($Snap.second s@$))))
    (forall ((r $Ref)) (!
      (=>
        (= r x@7@00)
        (=
          ($FVF.lookup_f (sm@32@00 s@$ x@7@00 y@8@00 z@9@00) r)
          ($FVF.lookup_f (sm@29@00 s@$ x@7@00 y@8@00 z@9@00) r)))
      :pattern (($FVF.lookup_f (sm@32@00 s@$ x@7@00 y@8@00 z@9@00) r))
      :pattern (($FVF.lookup_f (sm@29@00 s@$ x@7@00 y@8@00 z@9@00) r))
      :qid |qp.fvfValDef0|))
    (forall ((r $Ref)) (!
      (=>
        (= r y@8@00)
        (=
          ($FVF.lookup_f (sm@32@00 s@$ x@7@00 y@8@00 z@9@00) r)
          ($FVF.lookup_f (sm@30@00 s@$ x@7@00 y@8@00 z@9@00) r)))
      :pattern (($FVF.lookup_f (sm@32@00 s@$ x@7@00 y@8@00 z@9@00) r))
      :pattern (($FVF.lookup_f (sm@30@00 s@$ x@7@00 y@8@00 z@9@00) r))
      :qid |qp.fvfValDef1|))
    (forall ((r $Ref)) (!
      (=>
        (= r z@9@00)
        (=
          ($FVF.lookup_f (sm@32@00 s@$ x@7@00 y@8@00 z@9@00) r)
          ($FVF.lookup_f (sm@31@00 s@$ x@7@00 y@8@00 z@9@00) r)))
      :pattern (($FVF.lookup_f (sm@32@00 s@$ x@7@00 y@8@00 z@9@00) r))
      :pattern (($FVF.lookup_f (sm@31@00 s@$ x@7@00 y@8@00 z@9@00) r))
      :qid |qp.fvfValDef2|))
    (forall ((r $Ref)) (!
      (and
        (=>
          (Set_in r ($FVF.domain_f (sm@37@00 s@$ x@7@00 y@8@00 z@9@00)))
          (and
            (Set_in (inv@35@00 s@$ x@7@00 y@8@00 z@9@00 r) (Set_unionone (Set_singleton x@7@00) z@9@00))
            (img@36@00 s@$ x@7@00 y@8@00 z@9@00 r)))
        (=>
          (and
            (Set_in (inv@35@00 s@$ x@7@00 y@8@00 z@9@00 r) (Set_unionone (Set_singleton x@7@00) z@9@00))
            (img@36@00 s@$ x@7@00 y@8@00 z@9@00 r))
          (Set_in r ($FVF.domain_f (sm@37@00 s@$ x@7@00 y@8@00 z@9@00)))))
      :pattern ((Set_in r ($FVF.domain_f (sm@37@00 s@$ x@7@00 y@8@00 z@9@00))))
      :qid |qp.fvfDomDef7|))
    (forall ((r $Ref)) (!
      (=>
        (and
          (and
            (Set_in (inv@35@00 s@$ x@7@00 y@8@00 z@9@00 r) (Set_unionone (Set_singleton x@7@00) z@9@00))
            (img@36@00 s@$ x@7@00 y@8@00 z@9@00 r))
          (= r x@7@00))
        (=
          ($FVF.lookup_f (sm@37@00 s@$ x@7@00 y@8@00 z@9@00) r)
          ($FVF.lookup_f (sm@29@00 s@$ x@7@00 y@8@00 z@9@00) r)))
      :pattern (($FVF.lookup_f (sm@37@00 s@$ x@7@00 y@8@00 z@9@00) r))
      :pattern (($FVF.lookup_f (sm@29@00 s@$ x@7@00 y@8@00 z@9@00) r))
      :qid |qp.fvfValDef4|))
    (forall ((r $Ref)) (!
      (=>
        (and
          (and
            (Set_in (inv@35@00 s@$ x@7@00 y@8@00 z@9@00 r) (Set_unionone (Set_singleton x@7@00) z@9@00))
            (img@36@00 s@$ x@7@00 y@8@00 z@9@00 r))
          (= r y@8@00))
        (=
          ($FVF.lookup_f (sm@37@00 s@$ x@7@00 y@8@00 z@9@00) r)
          ($FVF.lookup_f (sm@30@00 s@$ x@7@00 y@8@00 z@9@00) r)))
      :pattern (($FVF.lookup_f (sm@37@00 s@$ x@7@00 y@8@00 z@9@00) r))
      :pattern (($FVF.lookup_f (sm@30@00 s@$ x@7@00 y@8@00 z@9@00) r))
      :qid |qp.fvfValDef5|))
    (forall ((r $Ref)) (!
      (=>
        (and
          (and
            (Set_in (inv@35@00 s@$ x@7@00 y@8@00 z@9@00 r) (Set_unionone (Set_singleton x@7@00) z@9@00))
            (img@36@00 s@$ x@7@00 y@8@00 z@9@00 r))
          (= r z@9@00))
        (=
          ($FVF.lookup_f (sm@37@00 s@$ x@7@00 y@8@00 z@9@00) r)
          ($FVF.lookup_f (sm@31@00 s@$ x@7@00 y@8@00 z@9@00) r)))
      :pattern (($FVF.lookup_f (sm@37@00 s@$ x@7@00 y@8@00 z@9@00) r))
      :pattern (($FVF.lookup_f (sm@31@00 s@$ x@7@00 y@8@00 z@9@00) r))
      :qid |qp.fvfValDef6|))
    (=>
      (fun6%precondition s@$ x@7@00 y@8@00 z@9@00)
      (=
        (fun6 s@$ x@7@00 y@8@00 z@9@00)
        (+
          (+
            (+
              ($FVF.lookup_f (sm@32@00 s@$ x@7@00 y@8@00 z@9@00) x@7@00)
              ($FVF.lookup_f (sm@32@00 s@$ x@7@00 y@8@00 z@9@00) y@8@00))
            ($FVF.lookup_f (sm@32@00 s@$ x@7@00 y@8@00 z@9@00) z@9@00))
          (fun2 ($Snap.combine
            $Snap.unit
            ($SortWrappers.$FVF<f>To$Snap (sm@37@00 s@$ x@7@00 y@8@00 z@9@00))) (Set_unionone (Set_singleton x@7@00) z@9@00) x@7@00 y@8@00)))))
  :pattern ((fun6 s@$ x@7@00 y@8@00 z@9@00))
  :qid |quant-u-5715|)))
(assert (forall ((s@$ $Snap) (x@7@00 $Ref) (y@8@00 $Ref) (z@9@00 $Ref)) (!
  (=>
    (fun6%precondition s@$ x@7@00 y@8@00 z@9@00)
    (fun2%precondition ($Snap.combine
      $Snap.unit
      ($SortWrappers.$FVF<f>To$Snap (sm@37@00 s@$ x@7@00 y@8@00 z@9@00))) (Set_unionone (Set_singleton x@7@00) z@9@00) x@7@00 y@8@00))
  :pattern ((fun6 s@$ x@7@00 y@8@00 z@9@00))
  :qid |quant-u-5716|)))
; ---------- FUNCTION fun4----------
(declare-fun x@11@00 () $Ref)
(declare-fun y@12@00 () $Ref)
(declare-fun z@13@00 () $Ref)
(declare-fun result@14@00 () Int)
; ----- Well-definedness of specifications -----
(push) ; 1
(assert (= s@$ ($Snap.combine ($Snap.first s@$) ($Snap.second s@$))))
(declare-fun sm@38@00 ($Snap $Ref $Ref $Ref) $FVF<f>)
; Definitional axioms for singleton-SM's value
(assert (=
  ($FVF.lookup_f (sm@38@00 s@$ x@11@00 y@12@00 z@13@00) x@11@00)
  ($SortWrappers.$SnapToInt ($Snap.first s@$))))
(assert (not (= x@11@00 $Ref.null)))
(assert (=
  ($Snap.second s@$)
  ($Snap.combine
    ($Snap.first ($Snap.second s@$))
    ($Snap.second ($Snap.second s@$)))))
(declare-fun sm@39@00 ($Snap $Ref $Ref $Ref) $FVF<f>)
; Definitional axioms for singleton-SM's value
(assert (=
  ($FVF.lookup_f (sm@39@00 s@$ x@11@00 y@12@00 z@13@00) y@12@00)
  ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second s@$)))))
(push) ; 2
(set-option :timeout 10)
(assert (not (= y@12@00 x@11@00)))
(check-sat)
; unknown
(pop) ; 2
; 0.00s
; (get-info :all-statistics)
(assert (not (= y@12@00 $Ref.null)))
(declare-fun sm@40@00 ($Snap $Ref $Ref $Ref) $FVF<f>)
; Definitional axioms for singleton-SM's value
(assert (=
  ($FVF.lookup_f (sm@40@00 s@$ x@11@00 y@12@00 z@13@00) z@13@00)
  ($SortWrappers.$SnapToInt ($Snap.second ($Snap.second s@$)))))
(set-option :timeout 0)
(push) ; 2
(set-option :timeout 10)
(assert (not (= z@13@00 y@12@00)))
(check-sat)
; unknown
(pop) ; 2
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 2
(set-option :timeout 10)
(assert (not (= z@13@00 x@11@00)))
(check-sat)
; unknown
(pop) ; 2
; 0.00s
; (get-info :all-statistics)
(assert (not (= z@13@00 $Ref.null)))
(pop) ; 1
(assert (forall ((s@$ $Snap) (x@11@00 $Ref) (y@12@00 $Ref) (z@13@00 $Ref)) (!
  (=
    (fun4%limited s@$ x@11@00 y@12@00 z@13@00)
    (fun4 s@$ x@11@00 y@12@00 z@13@00))
  :pattern ((fun4 s@$ x@11@00 y@12@00 z@13@00))
  :qid |quant-u-5699|)))
(assert (forall ((s@$ $Snap) (x@11@00 $Ref) (y@12@00 $Ref) (z@13@00 $Ref)) (!
  (fun4%stateless x@11@00 y@12@00 z@13@00)
  :pattern ((fun4%limited s@$ x@11@00 y@12@00 z@13@00))
  :qid |quant-u-5700|)))
; ----- Verification of function body and postcondition -----
(set-option :timeout 0)
(push) ; 1
(assert (=
  ($FVF.lookup_f (sm@40@00 s@$ x@11@00 y@12@00 z@13@00) z@13@00)
  ($SortWrappers.$SnapToInt ($Snap.second ($Snap.second s@$)))))
(assert (not (= z@13@00 $Ref.null)))
(assert (=
  ($FVF.lookup_f (sm@39@00 s@$ x@11@00 y@12@00 z@13@00) y@12@00)
  ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second s@$)))))
(assert (not (= y@12@00 $Ref.null)))
(assert (=
  ($FVF.lookup_f (sm@38@00 s@$ x@11@00 y@12@00 z@13@00) x@11@00)
  ($SortWrappers.$SnapToInt ($Snap.first s@$))))
(assert (not (= x@11@00 $Ref.null)))
(assert (=
  ($Snap.second s@$)
  ($Snap.combine
    ($Snap.first ($Snap.second s@$))
    ($Snap.second ($Snap.second s@$)))))
(assert (= s@$ ($Snap.combine ($Snap.first s@$) ($Snap.second s@$))))
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
; [eval] x.f + y.f + z.f + fun1(Set(x), x)
; [eval] x.f + y.f + z.f
; [eval] x.f + y.f
(declare-fun sm@41@00 ($Snap $Ref $Ref $Ref) $FVF<f>)
; Definitional axioms for snapshot map values
(assert (forall ((r $Ref)) (!
  (=>
    (= r x@11@00)
    (=
      ($FVF.lookup_f (sm@41@00 s@$ x@11@00 y@12@00 z@13@00) r)
      ($FVF.lookup_f (sm@38@00 s@$ x@11@00 y@12@00 z@13@00) r)))
  :pattern (($FVF.lookup_f (sm@41@00 s@$ x@11@00 y@12@00 z@13@00) r))
  :pattern (($FVF.lookup_f (sm@38@00 s@$ x@11@00 y@12@00 z@13@00) r))
  :qid |qp.fvfValDef8|)))
(assert (forall ((r $Ref)) (!
  (=>
    (= r y@12@00)
    (=
      ($FVF.lookup_f (sm@41@00 s@$ x@11@00 y@12@00 z@13@00) r)
      ($FVF.lookup_f (sm@39@00 s@$ x@11@00 y@12@00 z@13@00) r)))
  :pattern (($FVF.lookup_f (sm@41@00 s@$ x@11@00 y@12@00 z@13@00) r))
  :pattern (($FVF.lookup_f (sm@39@00 s@$ x@11@00 y@12@00 z@13@00) r))
  :qid |qp.fvfValDef9|)))
(assert (forall ((r $Ref)) (!
  (=>
    (= r z@13@00)
    (=
      ($FVF.lookup_f (sm@41@00 s@$ x@11@00 y@12@00 z@13@00) r)
      ($FVF.lookup_f (sm@40@00 s@$ x@11@00 y@12@00 z@13@00) r)))
  :pattern (($FVF.lookup_f (sm@41@00 s@$ x@11@00 y@12@00 z@13@00) r))
  :pattern (($FVF.lookup_f (sm@40@00 s@$ x@11@00 y@12@00 z@13@00) r))
  :qid |qp.fvfValDef10|)))
(declare-const pm@42@00 $FPM)
(assert (forall ((r $Ref)) (!
  (=
    ($FVF.perm_f (as pm@42@00  $FPM) r)
    (+
      (+
        (ite (= r x@11@00) $Perm.Write $Perm.No)
        (ite (= r y@12@00) $Perm.Write $Perm.No))
      (ite (= r z@13@00) $Perm.Write $Perm.No)))
  :pattern (($FVF.perm_f (as pm@42@00  $FPM) r))
  :qid |qp.resPrmSumDef11|)))
(set-option :timeout 0)
(push) ; 2
(assert (not (< $Perm.No ($FVF.perm_f (as pm@42@00  $FPM) x@11@00))))
(check-sat)
; unsat
(pop) ; 2
; 0.00s
; (get-info :all-statistics)
(assert (and
  (forall ((r $Ref)) (!
    (=>
      (= r x@11@00)
      (=
        ($FVF.lookup_f (sm@41@00 s@$ x@11@00 y@12@00 z@13@00) r)
        ($FVF.lookup_f (sm@38@00 s@$ x@11@00 y@12@00 z@13@00) r)))
    :pattern (($FVF.lookup_f (sm@41@00 s@$ x@11@00 y@12@00 z@13@00) r))
    :pattern (($FVF.lookup_f (sm@38@00 s@$ x@11@00 y@12@00 z@13@00) r))
    :qid |qp.fvfValDef8|))
  (forall ((r $Ref)) (!
    (=>
      (= r y@12@00)
      (=
        ($FVF.lookup_f (sm@41@00 s@$ x@11@00 y@12@00 z@13@00) r)
        ($FVF.lookup_f (sm@39@00 s@$ x@11@00 y@12@00 z@13@00) r)))
    :pattern (($FVF.lookup_f (sm@41@00 s@$ x@11@00 y@12@00 z@13@00) r))
    :pattern (($FVF.lookup_f (sm@39@00 s@$ x@11@00 y@12@00 z@13@00) r))
    :qid |qp.fvfValDef9|))
  (forall ((r $Ref)) (!
    (=>
      (= r z@13@00)
      (=
        ($FVF.lookup_f (sm@41@00 s@$ x@11@00 y@12@00 z@13@00) r)
        ($FVF.lookup_f (sm@40@00 s@$ x@11@00 y@12@00 z@13@00) r)))
    :pattern (($FVF.lookup_f (sm@41@00 s@$ x@11@00 y@12@00 z@13@00) r))
    :pattern (($FVF.lookup_f (sm@40@00 s@$ x@11@00 y@12@00 z@13@00) r))
    :qid |qp.fvfValDef10|))))
(push) ; 2
(assert (not (<
  $Perm.No
  (+
    (+ (ite (= y@12@00 x@11@00) $Perm.Write $Perm.No) $Perm.Write)
    (ite (= y@12@00 z@13@00) $Perm.Write $Perm.No)))))
(check-sat)
; unsat
(pop) ; 2
; 0.00s
; (get-info :all-statistics)
(assert (and
  (forall ((r $Ref)) (!
    (=>
      (= r x@11@00)
      (=
        ($FVF.lookup_f (sm@41@00 s@$ x@11@00 y@12@00 z@13@00) r)
        ($FVF.lookup_f (sm@38@00 s@$ x@11@00 y@12@00 z@13@00) r)))
    :pattern (($FVF.lookup_f (sm@41@00 s@$ x@11@00 y@12@00 z@13@00) r))
    :pattern (($FVF.lookup_f (sm@38@00 s@$ x@11@00 y@12@00 z@13@00) r))
    :qid |qp.fvfValDef8|))
  (forall ((r $Ref)) (!
    (=>
      (= r y@12@00)
      (=
        ($FVF.lookup_f (sm@41@00 s@$ x@11@00 y@12@00 z@13@00) r)
        ($FVF.lookup_f (sm@39@00 s@$ x@11@00 y@12@00 z@13@00) r)))
    :pattern (($FVF.lookup_f (sm@41@00 s@$ x@11@00 y@12@00 z@13@00) r))
    :pattern (($FVF.lookup_f (sm@39@00 s@$ x@11@00 y@12@00 z@13@00) r))
    :qid |qp.fvfValDef9|))
  (forall ((r $Ref)) (!
    (=>
      (= r z@13@00)
      (=
        ($FVF.lookup_f (sm@41@00 s@$ x@11@00 y@12@00 z@13@00) r)
        ($FVF.lookup_f (sm@40@00 s@$ x@11@00 y@12@00 z@13@00) r)))
    :pattern (($FVF.lookup_f (sm@41@00 s@$ x@11@00 y@12@00 z@13@00) r))
    :pattern (($FVF.lookup_f (sm@40@00 s@$ x@11@00 y@12@00 z@13@00) r))
    :qid |qp.fvfValDef10|))))
(push) ; 2
(assert (not (<
  $Perm.No
  (+
    (+
      (ite (= z@13@00 x@11@00) $Perm.Write $Perm.No)
      (ite (= z@13@00 y@12@00) $Perm.Write $Perm.No))
    $Perm.Write))))
(check-sat)
; unsat
(pop) ; 2
; 0.00s
; (get-info :all-statistics)
; [eval] fun1(Set(x), x)
; [eval] Set(x)
(push) ; 2
; [eval] (x in xs)
(push) ; 3
(assert (not (Set_in x@11@00 (Set_singleton x@11@00))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(assert (Set_in x@11@00 (Set_singleton x@11@00)))
(declare-const r@43@00 $Ref)
(push) ; 3
; [eval] (r in xs)
(assert (Set_in r@43@00 (Set_singleton x@11@00)))
(pop) ; 3
(declare-fun inv@44@00 ($Snap $Ref $Ref $Ref $Ref) $Ref)
(declare-fun img@45@00 ($Snap $Ref $Ref $Ref $Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
; Check receiver injectivity
(push) ; 3
(assert (not (forall ((r1@43@00 $Ref) (r2@43@00 $Ref)) (!
  (=>
    (and
      (Set_in r1@43@00 (Set_singleton x@11@00))
      (Set_in r2@43@00 (Set_singleton x@11@00))
      (= r1@43@00 r2@43@00))
    (= r1@43@00 r2@43@00))
  
  :qid |f-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((r@43@00 $Ref)) (!
  (=>
    (Set_in r@43@00 (Set_singleton x@11@00))
    (and
      (= (inv@44@00 s@$ x@11@00 y@12@00 z@13@00 r@43@00) r@43@00)
      (img@45@00 s@$ x@11@00 y@12@00 z@13@00 r@43@00)))
  :pattern ((Set_in r@43@00 (Set_singleton x@11@00)))
  :pattern ((inv@44@00 s@$ x@11@00 y@12@00 z@13@00 r@43@00))
  :pattern ((img@45@00 s@$ x@11@00 y@12@00 z@13@00 r@43@00))
  :qid |f-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@45@00 s@$ x@11@00 y@12@00 z@13@00 r)
      (Set_in (inv@44@00 s@$ x@11@00 y@12@00 z@13@00 r) (Set_singleton x@11@00)))
    (= (inv@44@00 s@$ x@11@00 y@12@00 z@13@00 r) r))
  :pattern ((inv@44@00 s@$ x@11@00 y@12@00 z@13@00 r))
  :qid |f-fctOfInv|)))
(push) ; 3
(assert (not (forall ((r $Ref)) (!
  (=>
    (and
      (Set_in (inv@44@00 s@$ x@11@00 y@12@00 z@13@00 r) (Set_singleton x@11@00))
      (img@45@00 s@$ x@11@00 y@12@00 z@13@00 r)
      (= r (inv@44@00 s@$ x@11@00 y@12@00 z@13@00 r)))
    (>
      (+
        (+
          (ite (= r x@11@00) $Perm.Write $Perm.No)
          (ite (= r y@12@00) $Perm.Write $Perm.No))
        (ite (= r z@13@00) $Perm.Write $Perm.No))
      $Perm.No))
  
  :qid |quant-u-5718|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(declare-fun sm@46@00 ($Snap $Ref $Ref $Ref) $FVF<f>)
; Definitional axioms for snapshot map domain
(assert (forall ((r $Ref)) (!
  (and
    (=>
      (Set_in r ($FVF.domain_f (sm@46@00 s@$ x@11@00 y@12@00 z@13@00)))
      (and
        (Set_in (inv@44@00 s@$ x@11@00 y@12@00 z@13@00 r) (Set_singleton x@11@00))
        (img@45@00 s@$ x@11@00 y@12@00 z@13@00 r)))
    (=>
      (and
        (Set_in (inv@44@00 s@$ x@11@00 y@12@00 z@13@00 r) (Set_singleton x@11@00))
        (img@45@00 s@$ x@11@00 y@12@00 z@13@00 r))
      (Set_in r ($FVF.domain_f (sm@46@00 s@$ x@11@00 y@12@00 z@13@00)))))
  :pattern ((Set_in r ($FVF.domain_f (sm@46@00 s@$ x@11@00 y@12@00 z@13@00))))
  :qid |qp.fvfDomDef15|)))
; Definitional axioms for snapshot map values
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and
        (Set_in (inv@44@00 s@$ x@11@00 y@12@00 z@13@00 r) (Set_singleton x@11@00))
        (img@45@00 s@$ x@11@00 y@12@00 z@13@00 r))
      (= r x@11@00))
    (=
      ($FVF.lookup_f (sm@46@00 s@$ x@11@00 y@12@00 z@13@00) r)
      ($FVF.lookup_f (sm@38@00 s@$ x@11@00 y@12@00 z@13@00) r)))
  :pattern (($FVF.lookup_f (sm@46@00 s@$ x@11@00 y@12@00 z@13@00) r))
  :pattern (($FVF.lookup_f (sm@38@00 s@$ x@11@00 y@12@00 z@13@00) r))
  :qid |qp.fvfValDef12|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and
        (Set_in (inv@44@00 s@$ x@11@00 y@12@00 z@13@00 r) (Set_singleton x@11@00))
        (img@45@00 s@$ x@11@00 y@12@00 z@13@00 r))
      (= r y@12@00))
    (=
      ($FVF.lookup_f (sm@46@00 s@$ x@11@00 y@12@00 z@13@00) r)
      ($FVF.lookup_f (sm@39@00 s@$ x@11@00 y@12@00 z@13@00) r)))
  :pattern (($FVF.lookup_f (sm@46@00 s@$ x@11@00 y@12@00 z@13@00) r))
  :pattern (($FVF.lookup_f (sm@39@00 s@$ x@11@00 y@12@00 z@13@00) r))
  :qid |qp.fvfValDef13|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and
        (Set_in (inv@44@00 s@$ x@11@00 y@12@00 z@13@00 r) (Set_singleton x@11@00))
        (img@45@00 s@$ x@11@00 y@12@00 z@13@00 r))
      (= r z@13@00))
    (=
      ($FVF.lookup_f (sm@46@00 s@$ x@11@00 y@12@00 z@13@00) r)
      ($FVF.lookup_f (sm@40@00 s@$ x@11@00 y@12@00 z@13@00) r)))
  :pattern (($FVF.lookup_f (sm@46@00 s@$ x@11@00 y@12@00 z@13@00) r))
  :pattern (($FVF.lookup_f (sm@40@00 s@$ x@11@00 y@12@00 z@13@00) r))
  :qid |qp.fvfValDef14|)))
(assert (fun1%precondition ($Snap.combine
  $Snap.unit
  ($SortWrappers.$FVF<f>To$Snap (sm@46@00 s@$ x@11@00 y@12@00 z@13@00))) (Set_singleton x@11@00) x@11@00))
(pop) ; 2
; Joined path conditions
(assert (forall ((r@43@00 $Ref)) (!
  (=>
    (Set_in r@43@00 (Set_singleton x@11@00))
    (and
      (= (inv@44@00 s@$ x@11@00 y@12@00 z@13@00 r@43@00) r@43@00)
      (img@45@00 s@$ x@11@00 y@12@00 z@13@00 r@43@00)))
  :pattern ((Set_in r@43@00 (Set_singleton x@11@00)))
  :pattern ((inv@44@00 s@$ x@11@00 y@12@00 z@13@00 r@43@00))
  :pattern ((img@45@00 s@$ x@11@00 y@12@00 z@13@00 r@43@00))
  :qid |f-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@45@00 s@$ x@11@00 y@12@00 z@13@00 r)
      (Set_in (inv@44@00 s@$ x@11@00 y@12@00 z@13@00 r) (Set_singleton x@11@00)))
    (= (inv@44@00 s@$ x@11@00 y@12@00 z@13@00 r) r))
  :pattern ((inv@44@00 s@$ x@11@00 y@12@00 z@13@00 r))
  :qid |f-fctOfInv|)))
(assert (forall ((r $Ref)) (!
  (and
    (=>
      (Set_in r ($FVF.domain_f (sm@46@00 s@$ x@11@00 y@12@00 z@13@00)))
      (and
        (Set_in (inv@44@00 s@$ x@11@00 y@12@00 z@13@00 r) (Set_singleton x@11@00))
        (img@45@00 s@$ x@11@00 y@12@00 z@13@00 r)))
    (=>
      (and
        (Set_in (inv@44@00 s@$ x@11@00 y@12@00 z@13@00 r) (Set_singleton x@11@00))
        (img@45@00 s@$ x@11@00 y@12@00 z@13@00 r))
      (Set_in r ($FVF.domain_f (sm@46@00 s@$ x@11@00 y@12@00 z@13@00)))))
  :pattern ((Set_in r ($FVF.domain_f (sm@46@00 s@$ x@11@00 y@12@00 z@13@00))))
  :qid |qp.fvfDomDef15|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and
        (Set_in (inv@44@00 s@$ x@11@00 y@12@00 z@13@00 r) (Set_singleton x@11@00))
        (img@45@00 s@$ x@11@00 y@12@00 z@13@00 r))
      (= r x@11@00))
    (=
      ($FVF.lookup_f (sm@46@00 s@$ x@11@00 y@12@00 z@13@00) r)
      ($FVF.lookup_f (sm@38@00 s@$ x@11@00 y@12@00 z@13@00) r)))
  :pattern (($FVF.lookup_f (sm@46@00 s@$ x@11@00 y@12@00 z@13@00) r))
  :pattern (($FVF.lookup_f (sm@38@00 s@$ x@11@00 y@12@00 z@13@00) r))
  :qid |qp.fvfValDef12|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and
        (Set_in (inv@44@00 s@$ x@11@00 y@12@00 z@13@00 r) (Set_singleton x@11@00))
        (img@45@00 s@$ x@11@00 y@12@00 z@13@00 r))
      (= r y@12@00))
    (=
      ($FVF.lookup_f (sm@46@00 s@$ x@11@00 y@12@00 z@13@00) r)
      ($FVF.lookup_f (sm@39@00 s@$ x@11@00 y@12@00 z@13@00) r)))
  :pattern (($FVF.lookup_f (sm@46@00 s@$ x@11@00 y@12@00 z@13@00) r))
  :pattern (($FVF.lookup_f (sm@39@00 s@$ x@11@00 y@12@00 z@13@00) r))
  :qid |qp.fvfValDef13|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and
        (Set_in (inv@44@00 s@$ x@11@00 y@12@00 z@13@00 r) (Set_singleton x@11@00))
        (img@45@00 s@$ x@11@00 y@12@00 z@13@00 r))
      (= r z@13@00))
    (=
      ($FVF.lookup_f (sm@46@00 s@$ x@11@00 y@12@00 z@13@00) r)
      ($FVF.lookup_f (sm@40@00 s@$ x@11@00 y@12@00 z@13@00) r)))
  :pattern (($FVF.lookup_f (sm@46@00 s@$ x@11@00 y@12@00 z@13@00) r))
  :pattern (($FVF.lookup_f (sm@40@00 s@$ x@11@00 y@12@00 z@13@00) r))
  :qid |qp.fvfValDef14|)))
(assert (and
  (Set_in x@11@00 (Set_singleton x@11@00))
  (fun1%precondition ($Snap.combine
    $Snap.unit
    ($SortWrappers.$FVF<f>To$Snap (sm@46@00 s@$ x@11@00 y@12@00 z@13@00))) (Set_singleton x@11@00) x@11@00)))
(assert (=
  result@14@00
  (+
    (+
      (+
        ($FVF.lookup_f (sm@41@00 s@$ x@11@00 y@12@00 z@13@00) x@11@00)
        ($FVF.lookup_f (sm@41@00 s@$ x@11@00 y@12@00 z@13@00) y@12@00))
      ($FVF.lookup_f (sm@41@00 s@$ x@11@00 y@12@00 z@13@00) z@13@00))
    (fun1 ($Snap.combine
      $Snap.unit
      ($SortWrappers.$FVF<f>To$Snap (sm@46@00 s@$ x@11@00 y@12@00 z@13@00))) (Set_singleton x@11@00) x@11@00))))
(pop) ; 1
(assert (forall ((s@$ $Snap) (x@11@00 $Ref) (y@12@00 $Ref) (z@13@00 $Ref)) (!
  (and
    (forall ((r@43@00 $Ref)) (!
      (=>
        (Set_in r@43@00 (Set_singleton x@11@00))
        (and
          (= (inv@44@00 s@$ x@11@00 y@12@00 z@13@00 r@43@00) r@43@00)
          (img@45@00 s@$ x@11@00 y@12@00 z@13@00 r@43@00)))
      :pattern ((Set_in r@43@00 (Set_singleton x@11@00)))
      :pattern ((inv@44@00 s@$ x@11@00 y@12@00 z@13@00 r@43@00))
      :pattern ((img@45@00 s@$ x@11@00 y@12@00 z@13@00 r@43@00))
      :qid |f-invOfFct|))
    (forall ((r $Ref)) (!
      (=>
        (and
          (img@45@00 s@$ x@11@00 y@12@00 z@13@00 r)
          (Set_in (inv@44@00 s@$ x@11@00 y@12@00 z@13@00 r) (Set_singleton x@11@00)))
        (= (inv@44@00 s@$ x@11@00 y@12@00 z@13@00 r) r))
      :pattern ((inv@44@00 s@$ x@11@00 y@12@00 z@13@00 r))
      :qid |f-fctOfInv|))
    (=
      ($FVF.lookup_f (sm@38@00 s@$ x@11@00 y@12@00 z@13@00) x@11@00)
      ($SortWrappers.$SnapToInt ($Snap.first s@$)))
    (=
      ($FVF.lookup_f (sm@39@00 s@$ x@11@00 y@12@00 z@13@00) y@12@00)
      ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second s@$))))
    (=
      ($FVF.lookup_f (sm@40@00 s@$ x@11@00 y@12@00 z@13@00) z@13@00)
      ($SortWrappers.$SnapToInt ($Snap.second ($Snap.second s@$))))
    (forall ((r $Ref)) (!
      (=>
        (= r x@11@00)
        (=
          ($FVF.lookup_f (sm@41@00 s@$ x@11@00 y@12@00 z@13@00) r)
          ($FVF.lookup_f (sm@38@00 s@$ x@11@00 y@12@00 z@13@00) r)))
      :pattern (($FVF.lookup_f (sm@41@00 s@$ x@11@00 y@12@00 z@13@00) r))
      :pattern (($FVF.lookup_f (sm@38@00 s@$ x@11@00 y@12@00 z@13@00) r))
      :qid |qp.fvfValDef8|))
    (forall ((r $Ref)) (!
      (=>
        (= r y@12@00)
        (=
          ($FVF.lookup_f (sm@41@00 s@$ x@11@00 y@12@00 z@13@00) r)
          ($FVF.lookup_f (sm@39@00 s@$ x@11@00 y@12@00 z@13@00) r)))
      :pattern (($FVF.lookup_f (sm@41@00 s@$ x@11@00 y@12@00 z@13@00) r))
      :pattern (($FVF.lookup_f (sm@39@00 s@$ x@11@00 y@12@00 z@13@00) r))
      :qid |qp.fvfValDef9|))
    (forall ((r $Ref)) (!
      (=>
        (= r z@13@00)
        (=
          ($FVF.lookup_f (sm@41@00 s@$ x@11@00 y@12@00 z@13@00) r)
          ($FVF.lookup_f (sm@40@00 s@$ x@11@00 y@12@00 z@13@00) r)))
      :pattern (($FVF.lookup_f (sm@41@00 s@$ x@11@00 y@12@00 z@13@00) r))
      :pattern (($FVF.lookup_f (sm@40@00 s@$ x@11@00 y@12@00 z@13@00) r))
      :qid |qp.fvfValDef10|))
    (forall ((r $Ref)) (!
      (and
        (=>
          (Set_in r ($FVF.domain_f (sm@46@00 s@$ x@11@00 y@12@00 z@13@00)))
          (and
            (Set_in (inv@44@00 s@$ x@11@00 y@12@00 z@13@00 r) (Set_singleton x@11@00))
            (img@45@00 s@$ x@11@00 y@12@00 z@13@00 r)))
        (=>
          (and
            (Set_in (inv@44@00 s@$ x@11@00 y@12@00 z@13@00 r) (Set_singleton x@11@00))
            (img@45@00 s@$ x@11@00 y@12@00 z@13@00 r))
          (Set_in r ($FVF.domain_f (sm@46@00 s@$ x@11@00 y@12@00 z@13@00)))))
      :pattern ((Set_in r ($FVF.domain_f (sm@46@00 s@$ x@11@00 y@12@00 z@13@00))))
      :qid |qp.fvfDomDef15|))
    (forall ((r $Ref)) (!
      (=>
        (and
          (and
            (Set_in (inv@44@00 s@$ x@11@00 y@12@00 z@13@00 r) (Set_singleton x@11@00))
            (img@45@00 s@$ x@11@00 y@12@00 z@13@00 r))
          (= r x@11@00))
        (=
          ($FVF.lookup_f (sm@46@00 s@$ x@11@00 y@12@00 z@13@00) r)
          ($FVF.lookup_f (sm@38@00 s@$ x@11@00 y@12@00 z@13@00) r)))
      :pattern (($FVF.lookup_f (sm@46@00 s@$ x@11@00 y@12@00 z@13@00) r))
      :pattern (($FVF.lookup_f (sm@38@00 s@$ x@11@00 y@12@00 z@13@00) r))
      :qid |qp.fvfValDef12|))
    (forall ((r $Ref)) (!
      (=>
        (and
          (and
            (Set_in (inv@44@00 s@$ x@11@00 y@12@00 z@13@00 r) (Set_singleton x@11@00))
            (img@45@00 s@$ x@11@00 y@12@00 z@13@00 r))
          (= r y@12@00))
        (=
          ($FVF.lookup_f (sm@46@00 s@$ x@11@00 y@12@00 z@13@00) r)
          ($FVF.lookup_f (sm@39@00 s@$ x@11@00 y@12@00 z@13@00) r)))
      :pattern (($FVF.lookup_f (sm@46@00 s@$ x@11@00 y@12@00 z@13@00) r))
      :pattern (($FVF.lookup_f (sm@39@00 s@$ x@11@00 y@12@00 z@13@00) r))
      :qid |qp.fvfValDef13|))
    (forall ((r $Ref)) (!
      (=>
        (and
          (and
            (Set_in (inv@44@00 s@$ x@11@00 y@12@00 z@13@00 r) (Set_singleton x@11@00))
            (img@45@00 s@$ x@11@00 y@12@00 z@13@00 r))
          (= r z@13@00))
        (=
          ($FVF.lookup_f (sm@46@00 s@$ x@11@00 y@12@00 z@13@00) r)
          ($FVF.lookup_f (sm@40@00 s@$ x@11@00 y@12@00 z@13@00) r)))
      :pattern (($FVF.lookup_f (sm@46@00 s@$ x@11@00 y@12@00 z@13@00) r))
      :pattern (($FVF.lookup_f (sm@40@00 s@$ x@11@00 y@12@00 z@13@00) r))
      :qid |qp.fvfValDef14|))
    (=>
      (fun4%precondition s@$ x@11@00 y@12@00 z@13@00)
      (=
        (fun4 s@$ x@11@00 y@12@00 z@13@00)
        (+
          (+
            (+
              ($FVF.lookup_f (sm@41@00 s@$ x@11@00 y@12@00 z@13@00) x@11@00)
              ($FVF.lookup_f (sm@41@00 s@$ x@11@00 y@12@00 z@13@00) y@12@00))
            ($FVF.lookup_f (sm@41@00 s@$ x@11@00 y@12@00 z@13@00) z@13@00))
          (fun1 ($Snap.combine
            $Snap.unit
            ($SortWrappers.$FVF<f>To$Snap (sm@46@00 s@$ x@11@00 y@12@00 z@13@00))) (Set_singleton x@11@00) x@11@00)))))
  :pattern ((fun4 s@$ x@11@00 y@12@00 z@13@00))
  :qid |quant-u-5719|)))
(assert (forall ((s@$ $Snap) (x@11@00 $Ref) (y@12@00 $Ref) (z@13@00 $Ref)) (!
  (=>
    (fun4%precondition s@$ x@11@00 y@12@00 z@13@00)
    (fun1%precondition ($Snap.combine
      $Snap.unit
      ($SortWrappers.$FVF<f>To$Snap (sm@46@00 s@$ x@11@00 y@12@00 z@13@00))) (Set_singleton x@11@00) x@11@00))
  :pattern ((fun4 s@$ x@11@00 y@12@00 z@13@00))
  :qid |quant-u-5720|)))
; ---------- FUNCTION fun3----------
(declare-fun x@15@00 () $Ref)
(declare-fun y@16@00 () $Ref)
(declare-fun z@17@00 () $Ref)
(declare-fun result@18@00 () Int)
; ----- Well-definedness of specifications -----
(push) ; 1
(assert (= s@$ ($Snap.combine ($Snap.first s@$) ($Snap.second s@$))))
(declare-const r@47@00 $Ref)
(push) ; 2
; [eval] (r in Set(x, y, z))
; [eval] Set(x, y, z)
(assert (Set_in r@47@00 (Set_unionone (Set_unionone (Set_singleton x@15@00) y@16@00) z@17@00)))
(pop) ; 2
(declare-fun inv@48@00 ($Snap $Ref $Ref $Ref $Ref) $Ref)
(declare-fun img@49@00 ($Snap $Ref $Ref $Ref $Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
; Check receiver injectivity
(push) ; 2
(assert (not (forall ((r1@47@00 $Ref) (r2@47@00 $Ref)) (!
  (=>
    (and
      (Set_in r1@47@00 (Set_unionone (Set_unionone (Set_singleton x@15@00) y@16@00) z@17@00))
      (Set_in r2@47@00 (Set_unionone (Set_unionone (Set_singleton x@15@00) y@16@00) z@17@00))
      (= r1@47@00 r2@47@00))
    (= r1@47@00 r2@47@00))
  
  :qid |f-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 2
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((r@47@00 $Ref)) (!
  (=>
    (Set_in r@47@00 (Set_unionone (Set_unionone (Set_singleton x@15@00) y@16@00) z@17@00))
    (and
      (= (inv@48@00 s@$ x@15@00 y@16@00 z@17@00 r@47@00) r@47@00)
      (img@49@00 s@$ x@15@00 y@16@00 z@17@00 r@47@00)))
  :pattern ((Set_in r@47@00 (Set_unionone (Set_unionone (Set_singleton x@15@00) y@16@00) z@17@00)))
  :pattern ((inv@48@00 s@$ x@15@00 y@16@00 z@17@00 r@47@00))
  :pattern ((img@49@00 s@$ x@15@00 y@16@00 z@17@00 r@47@00))
  :qid |quant-u-5722|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@49@00 s@$ x@15@00 y@16@00 z@17@00 r)
      (Set_in (inv@48@00 s@$ x@15@00 y@16@00 z@17@00 r) (Set_unionone (Set_unionone (Set_singleton x@15@00) y@16@00) z@17@00)))
    (= (inv@48@00 s@$ x@15@00 y@16@00 z@17@00 r) r))
  :pattern ((inv@48@00 s@$ x@15@00 y@16@00 z@17@00 r))
  :qid |f-fctOfInv|)))
; Permissions are non-negative
; Permission implies non-null receiver
(assert (forall ((r@47@00 $Ref)) (!
  (=>
    (Set_in r@47@00 (Set_unionone (Set_unionone (Set_singleton x@15@00) y@16@00) z@17@00))
    (not (= r@47@00 $Ref.null)))
  :pattern ((Set_in r@47@00 (Set_unionone (Set_unionone (Set_singleton x@15@00) y@16@00) z@17@00)))
  :pattern ((inv@48@00 s@$ x@15@00 y@16@00 z@17@00 r@47@00))
  :pattern ((img@49@00 s@$ x@15@00 y@16@00 z@17@00 r@47@00))
  :qid |f-permImpliesNonNull|)))
(assert (=
  ($Snap.second s@$)
  ($Snap.combine
    ($Snap.first ($Snap.second s@$))
    ($Snap.second ($Snap.second s@$)))))
(assert (= ($Snap.first ($Snap.second s@$)) $Snap.unit))
; [eval] x != null
(assert (not (= x@15@00 $Ref.null)))
(assert (=
  ($Snap.second ($Snap.second s@$))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second s@$)))
    ($Snap.second ($Snap.second ($Snap.second s@$))))))
(assert (= ($Snap.first ($Snap.second ($Snap.second s@$))) $Snap.unit))
; [eval] y != null
(assert (not (= y@16@00 $Ref.null)))
(assert (= ($Snap.second ($Snap.second ($Snap.second s@$))) $Snap.unit))
; [eval] z != null
(assert (not (= z@17@00 $Ref.null)))
(pop) ; 1
(assert (forall ((s@$ $Snap) (x@15@00 $Ref) (y@16@00 $Ref) (z@17@00 $Ref)) (!
  (=
    (fun3%limited s@$ x@15@00 y@16@00 z@17@00)
    (fun3 s@$ x@15@00 y@16@00 z@17@00))
  :pattern ((fun3 s@$ x@15@00 y@16@00 z@17@00))
  :qid |quant-u-5701|)))
(assert (forall ((s@$ $Snap) (x@15@00 $Ref) (y@16@00 $Ref) (z@17@00 $Ref)) (!
  (fun3%stateless x@15@00 y@16@00 z@17@00)
  :pattern ((fun3%limited s@$ x@15@00 y@16@00 z@17@00))
  :qid |quant-u-5702|)))
; ----- Verification of function body and postcondition -----
(push) ; 1
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@49@00 s@$ x@15@00 y@16@00 z@17@00 r)
      (Set_in (inv@48@00 s@$ x@15@00 y@16@00 z@17@00 r) (Set_unionone (Set_unionone (Set_singleton x@15@00) y@16@00) z@17@00)))
    (= (inv@48@00 s@$ x@15@00 y@16@00 z@17@00 r) r))
  :pattern ((inv@48@00 s@$ x@15@00 y@16@00 z@17@00 r))
  :qid |f-fctOfInv|)))
(assert (forall ((r@47@00 $Ref)) (!
  (=>
    (Set_in r@47@00 (Set_unionone (Set_unionone (Set_singleton x@15@00) y@16@00) z@17@00))
    (and
      (= (inv@48@00 s@$ x@15@00 y@16@00 z@17@00 r@47@00) r@47@00)
      (img@49@00 s@$ x@15@00 y@16@00 z@17@00 r@47@00)))
  :pattern ((Set_in r@47@00 (Set_unionone (Set_unionone (Set_singleton x@15@00) y@16@00) z@17@00)))
  :pattern ((inv@48@00 s@$ x@15@00 y@16@00 z@17@00 r@47@00))
  :pattern ((img@49@00 s@$ x@15@00 y@16@00 z@17@00 r@47@00))
  :qid |quant-u-5722|)))
(assert (forall ((r@47@00 $Ref)) (!
  (=>
    (Set_in r@47@00 (Set_unionone (Set_unionone (Set_singleton x@15@00) y@16@00) z@17@00))
    (not (= r@47@00 $Ref.null)))
  :pattern ((Set_in r@47@00 (Set_unionone (Set_unionone (Set_singleton x@15@00) y@16@00) z@17@00)))
  :pattern ((inv@48@00 s@$ x@15@00 y@16@00 z@17@00 r@47@00))
  :pattern ((img@49@00 s@$ x@15@00 y@16@00 z@17@00 r@47@00))
  :qid |f-permImpliesNonNull|)))
(assert (=
  ($Snap.second s@$)
  ($Snap.combine
    ($Snap.first ($Snap.second s@$))
    ($Snap.second ($Snap.second s@$)))))
(assert (= ($Snap.first ($Snap.second s@$)) $Snap.unit))
(assert (not (= x@15@00 $Ref.null)))
(assert (=
  ($Snap.second ($Snap.second s@$))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second s@$)))
    ($Snap.second ($Snap.second ($Snap.second s@$))))))
(assert (= ($Snap.first ($Snap.second ($Snap.second s@$))) $Snap.unit))
(assert (not (= y@16@00 $Ref.null)))
(assert (= ($Snap.second ($Snap.second ($Snap.second s@$))) $Snap.unit))
(assert (not (= z@17@00 $Ref.null)))
(assert (= s@$ ($Snap.combine ($Snap.first s@$) ($Snap.second s@$))))
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
; [eval] x.f + y.f + z.f + fun2(Set(x, z), x, y)
; [eval] x.f + y.f + z.f
; [eval] x.f + y.f
(set-option :timeout 0)
(push) ; 2
(assert (not (and
  (img@49@00 s@$ x@15@00 y@16@00 z@17@00 x@15@00)
  (Set_in (inv@48@00 s@$ x@15@00 y@16@00 z@17@00 x@15@00) (Set_unionone (Set_unionone (Set_singleton x@15@00) y@16@00) z@17@00)))))
(check-sat)
; unsat
(pop) ; 2
; 0.00s
; (get-info :all-statistics)
(push) ; 2
(assert (not (and
  (img@49@00 s@$ x@15@00 y@16@00 z@17@00 y@16@00)
  (Set_in (inv@48@00 s@$ x@15@00 y@16@00 z@17@00 y@16@00) (Set_unionone (Set_unionone (Set_singleton x@15@00) y@16@00) z@17@00)))))
(check-sat)
; unsat
(pop) ; 2
; 0.00s
; (get-info :all-statistics)
(push) ; 2
(assert (not (and
  (img@49@00 s@$ x@15@00 y@16@00 z@17@00 z@17@00)
  (Set_in (inv@48@00 s@$ x@15@00 y@16@00 z@17@00 z@17@00) (Set_unionone (Set_unionone (Set_singleton x@15@00) y@16@00) z@17@00)))))
(check-sat)
; unsat
(pop) ; 2
; 0.00s
; (get-info :all-statistics)
; [eval] fun2(Set(x, z), x, y)
; [eval] Set(x, z)
(push) ; 2
; [eval] (x in xs)
(push) ; 3
(assert (not (Set_in x@15@00 (Set_unionone (Set_singleton x@15@00) z@17@00))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(assert (Set_in x@15@00 (Set_unionone (Set_singleton x@15@00) z@17@00)))
(declare-const r@50@00 $Ref)
(push) ; 3
; [eval] (r in xs)
(assert (Set_in r@50@00 (Set_unionone (Set_singleton x@15@00) z@17@00)))
(pop) ; 3
(declare-fun inv@51@00 ($Snap $Ref $Ref $Ref $Ref) $Ref)
(declare-fun img@52@00 ($Snap $Ref $Ref $Ref $Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
; Check receiver injectivity
(push) ; 3
(assert (not (forall ((r1@50@00 $Ref) (r2@50@00 $Ref)) (!
  (=>
    (and
      (Set_in r1@50@00 (Set_unionone (Set_singleton x@15@00) z@17@00))
      (Set_in r2@50@00 (Set_unionone (Set_singleton x@15@00) z@17@00))
      (= r1@50@00 r2@50@00))
    (= r1@50@00 r2@50@00))
  
  :qid |f-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((r@50@00 $Ref)) (!
  (=>
    (Set_in r@50@00 (Set_unionone (Set_singleton x@15@00) z@17@00))
    (and
      (= (inv@51@00 s@$ x@15@00 y@16@00 z@17@00 r@50@00) r@50@00)
      (img@52@00 s@$ x@15@00 y@16@00 z@17@00 r@50@00)))
  :pattern ((Set_in r@50@00 (Set_unionone (Set_singleton x@15@00) z@17@00)))
  :pattern ((inv@51@00 s@$ x@15@00 y@16@00 z@17@00 r@50@00))
  :pattern ((img@52@00 s@$ x@15@00 y@16@00 z@17@00 r@50@00))
  :qid |f-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@52@00 s@$ x@15@00 y@16@00 z@17@00 r)
      (Set_in (inv@51@00 s@$ x@15@00 y@16@00 z@17@00 r) (Set_unionone (Set_singleton x@15@00) z@17@00)))
    (= (inv@51@00 s@$ x@15@00 y@16@00 z@17@00 r) r))
  :pattern ((inv@51@00 s@$ x@15@00 y@16@00 z@17@00 r))
  :qid |f-fctOfInv|)))
(push) ; 3
(assert (not (forall ((r $Ref)) (!
  (=>
    (and
      (Set_in (inv@51@00 s@$ x@15@00 y@16@00 z@17@00 r) (Set_unionone (Set_singleton x@15@00) z@17@00))
      (img@52@00 s@$ x@15@00 y@16@00 z@17@00 r)
      (= r (inv@51@00 s@$ x@15@00 y@16@00 z@17@00 r)))
    (>
      (ite
        (and
          (img@49@00 s@$ x@15@00 y@16@00 z@17@00 r)
          (Set_in (inv@48@00 s@$ x@15@00 y@16@00 z@17@00 r) (Set_unionone (Set_unionone (Set_singleton x@15@00) y@16@00) z@17@00)))
        $Perm.Write
        $Perm.No)
      $Perm.No))
  
  :qid |quant-u-5724|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(declare-fun sm@53@00 ($Snap $Ref $Ref $Ref) $FVF<f>)
; Definitional axioms for snapshot map domain
(assert (forall ((r $Ref)) (!
  (and
    (=>
      (Set_in r ($FVF.domain_f (sm@53@00 s@$ x@15@00 y@16@00 z@17@00)))
      (and
        (Set_in (inv@51@00 s@$ x@15@00 y@16@00 z@17@00 r) (Set_unionone (Set_singleton x@15@00) z@17@00))
        (img@52@00 s@$ x@15@00 y@16@00 z@17@00 r)))
    (=>
      (and
        (Set_in (inv@51@00 s@$ x@15@00 y@16@00 z@17@00 r) (Set_unionone (Set_singleton x@15@00) z@17@00))
        (img@52@00 s@$ x@15@00 y@16@00 z@17@00 r))
      (Set_in r ($FVF.domain_f (sm@53@00 s@$ x@15@00 y@16@00 z@17@00)))))
  :pattern ((Set_in r ($FVF.domain_f (sm@53@00 s@$ x@15@00 y@16@00 z@17@00))))
  :qid |qp.fvfDomDef17|)))
; Definitional axioms for snapshot map values
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and
        (Set_in (inv@51@00 s@$ x@15@00 y@16@00 z@17@00 r) (Set_unionone (Set_singleton x@15@00) z@17@00))
        (img@52@00 s@$ x@15@00 y@16@00 z@17@00 r))
      (and
        (img@49@00 s@$ x@15@00 y@16@00 z@17@00 r)
        (Set_in (inv@48@00 s@$ x@15@00 y@16@00 z@17@00 r) (Set_unionone (Set_unionone (Set_singleton x@15@00) y@16@00) z@17@00))))
    (=
      ($FVF.lookup_f (sm@53@00 s@$ x@15@00 y@16@00 z@17@00) r)
      ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first s@$)) r)))
  :pattern (($FVF.lookup_f (sm@53@00 s@$ x@15@00 y@16@00 z@17@00) r))
  :pattern (($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first s@$)) r))
  :qid |qp.fvfValDef16|)))
(assert (fun2%precondition ($Snap.combine
  $Snap.unit
  ($SortWrappers.$FVF<f>To$Snap (sm@53@00 s@$ x@15@00 y@16@00 z@17@00))) (Set_unionone (Set_singleton x@15@00) z@17@00) x@15@00 y@16@00))
(pop) ; 2
; Joined path conditions
(assert (forall ((r@50@00 $Ref)) (!
  (=>
    (Set_in r@50@00 (Set_unionone (Set_singleton x@15@00) z@17@00))
    (and
      (= (inv@51@00 s@$ x@15@00 y@16@00 z@17@00 r@50@00) r@50@00)
      (img@52@00 s@$ x@15@00 y@16@00 z@17@00 r@50@00)))
  :pattern ((Set_in r@50@00 (Set_unionone (Set_singleton x@15@00) z@17@00)))
  :pattern ((inv@51@00 s@$ x@15@00 y@16@00 z@17@00 r@50@00))
  :pattern ((img@52@00 s@$ x@15@00 y@16@00 z@17@00 r@50@00))
  :qid |f-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@52@00 s@$ x@15@00 y@16@00 z@17@00 r)
      (Set_in (inv@51@00 s@$ x@15@00 y@16@00 z@17@00 r) (Set_unionone (Set_singleton x@15@00) z@17@00)))
    (= (inv@51@00 s@$ x@15@00 y@16@00 z@17@00 r) r))
  :pattern ((inv@51@00 s@$ x@15@00 y@16@00 z@17@00 r))
  :qid |f-fctOfInv|)))
(assert (forall ((r $Ref)) (!
  (and
    (=>
      (Set_in r ($FVF.domain_f (sm@53@00 s@$ x@15@00 y@16@00 z@17@00)))
      (and
        (Set_in (inv@51@00 s@$ x@15@00 y@16@00 z@17@00 r) (Set_unionone (Set_singleton x@15@00) z@17@00))
        (img@52@00 s@$ x@15@00 y@16@00 z@17@00 r)))
    (=>
      (and
        (Set_in (inv@51@00 s@$ x@15@00 y@16@00 z@17@00 r) (Set_unionone (Set_singleton x@15@00) z@17@00))
        (img@52@00 s@$ x@15@00 y@16@00 z@17@00 r))
      (Set_in r ($FVF.domain_f (sm@53@00 s@$ x@15@00 y@16@00 z@17@00)))))
  :pattern ((Set_in r ($FVF.domain_f (sm@53@00 s@$ x@15@00 y@16@00 z@17@00))))
  :qid |qp.fvfDomDef17|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and
        (Set_in (inv@51@00 s@$ x@15@00 y@16@00 z@17@00 r) (Set_unionone (Set_singleton x@15@00) z@17@00))
        (img@52@00 s@$ x@15@00 y@16@00 z@17@00 r))
      (and
        (img@49@00 s@$ x@15@00 y@16@00 z@17@00 r)
        (Set_in (inv@48@00 s@$ x@15@00 y@16@00 z@17@00 r) (Set_unionone (Set_unionone (Set_singleton x@15@00) y@16@00) z@17@00))))
    (=
      ($FVF.lookup_f (sm@53@00 s@$ x@15@00 y@16@00 z@17@00) r)
      ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first s@$)) r)))
  :pattern (($FVF.lookup_f (sm@53@00 s@$ x@15@00 y@16@00 z@17@00) r))
  :pattern (($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first s@$)) r))
  :qid |qp.fvfValDef16|)))
(assert (and
  (Set_in x@15@00 (Set_unionone (Set_singleton x@15@00) z@17@00))
  (fun2%precondition ($Snap.combine
    $Snap.unit
    ($SortWrappers.$FVF<f>To$Snap (sm@53@00 s@$ x@15@00 y@16@00 z@17@00))) (Set_unionone (Set_singleton x@15@00) z@17@00) x@15@00 y@16@00)))
(assert (=
  result@18@00
  (+
    (+
      (+
        ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first s@$)) x@15@00)
        ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first s@$)) y@16@00))
      ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first s@$)) z@17@00))
    (fun2 ($Snap.combine
      $Snap.unit
      ($SortWrappers.$FVF<f>To$Snap (sm@53@00 s@$ x@15@00 y@16@00 z@17@00))) (Set_unionone (Set_singleton x@15@00) z@17@00) x@15@00 y@16@00))))
(pop) ; 1
(assert (forall ((s@$ $Snap) (x@15@00 $Ref) (y@16@00 $Ref) (z@17@00 $Ref)) (!
  (and
    (forall ((r@47@00 $Ref)) (!
      (=>
        (Set_in r@47@00 (Set_unionone (Set_unionone (Set_singleton x@15@00) y@16@00) z@17@00))
        (and
          (= (inv@48@00 s@$ x@15@00 y@16@00 z@17@00 r@47@00) r@47@00)
          (img@49@00 s@$ x@15@00 y@16@00 z@17@00 r@47@00)))
      :pattern ((Set_in r@47@00 (Set_unionone (Set_unionone (Set_singleton x@15@00) y@16@00) z@17@00)))
      :pattern ((inv@48@00 s@$ x@15@00 y@16@00 z@17@00 r@47@00))
      :pattern ((img@49@00 s@$ x@15@00 y@16@00 z@17@00 r@47@00))
      :qid |quant-u-5722|))
    (forall ((r $Ref)) (!
      (=>
        (and
          (img@49@00 s@$ x@15@00 y@16@00 z@17@00 r)
          (Set_in (inv@48@00 s@$ x@15@00 y@16@00 z@17@00 r) (Set_unionone (Set_unionone (Set_singleton x@15@00) y@16@00) z@17@00)))
        (= (inv@48@00 s@$ x@15@00 y@16@00 z@17@00 r) r))
      :pattern ((inv@48@00 s@$ x@15@00 y@16@00 z@17@00 r))
      :qid |f-fctOfInv|))
    (forall ((r@50@00 $Ref)) (!
      (=>
        (Set_in r@50@00 (Set_unionone (Set_singleton x@15@00) z@17@00))
        (and
          (= (inv@51@00 s@$ x@15@00 y@16@00 z@17@00 r@50@00) r@50@00)
          (img@52@00 s@$ x@15@00 y@16@00 z@17@00 r@50@00)))
      :pattern ((Set_in r@50@00 (Set_unionone (Set_singleton x@15@00) z@17@00)))
      :pattern ((inv@51@00 s@$ x@15@00 y@16@00 z@17@00 r@50@00))
      :pattern ((img@52@00 s@$ x@15@00 y@16@00 z@17@00 r@50@00))
      :qid |f-invOfFct|))
    (forall ((r $Ref)) (!
      (=>
        (and
          (img@52@00 s@$ x@15@00 y@16@00 z@17@00 r)
          (Set_in (inv@51@00 s@$ x@15@00 y@16@00 z@17@00 r) (Set_unionone (Set_singleton x@15@00) z@17@00)))
        (= (inv@51@00 s@$ x@15@00 y@16@00 z@17@00 r) r))
      :pattern ((inv@51@00 s@$ x@15@00 y@16@00 z@17@00 r))
      :qid |f-fctOfInv|))
    (forall ((r $Ref)) (!
      (and
        (=>
          (Set_in r ($FVF.domain_f (sm@53@00 s@$ x@15@00 y@16@00 z@17@00)))
          (and
            (Set_in (inv@51@00 s@$ x@15@00 y@16@00 z@17@00 r) (Set_unionone (Set_singleton x@15@00) z@17@00))
            (img@52@00 s@$ x@15@00 y@16@00 z@17@00 r)))
        (=>
          (and
            (Set_in (inv@51@00 s@$ x@15@00 y@16@00 z@17@00 r) (Set_unionone (Set_singleton x@15@00) z@17@00))
            (img@52@00 s@$ x@15@00 y@16@00 z@17@00 r))
          (Set_in r ($FVF.domain_f (sm@53@00 s@$ x@15@00 y@16@00 z@17@00)))))
      :pattern ((Set_in r ($FVF.domain_f (sm@53@00 s@$ x@15@00 y@16@00 z@17@00))))
      :qid |qp.fvfDomDef17|))
    (forall ((r $Ref)) (!
      (=>
        (and
          (and
            (Set_in (inv@51@00 s@$ x@15@00 y@16@00 z@17@00 r) (Set_unionone (Set_singleton x@15@00) z@17@00))
            (img@52@00 s@$ x@15@00 y@16@00 z@17@00 r))
          (and
            (img@49@00 s@$ x@15@00 y@16@00 z@17@00 r)
            (Set_in (inv@48@00 s@$ x@15@00 y@16@00 z@17@00 r) (Set_unionone (Set_unionone (Set_singleton x@15@00) y@16@00) z@17@00))))
        (=
          ($FVF.lookup_f (sm@53@00 s@$ x@15@00 y@16@00 z@17@00) r)
          ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first s@$)) r)))
      :pattern (($FVF.lookup_f (sm@53@00 s@$ x@15@00 y@16@00 z@17@00) r))
      :pattern (($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first s@$)) r))
      :qid |qp.fvfValDef16|))
    (=>
      (fun3%precondition s@$ x@15@00 y@16@00 z@17@00)
      (=
        (fun3 s@$ x@15@00 y@16@00 z@17@00)
        (+
          (+
            (+
              ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first s@$)) x@15@00)
              ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first s@$)) y@16@00))
            ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first s@$)) z@17@00))
          (fun2 ($Snap.combine
            $Snap.unit
            ($SortWrappers.$FVF<f>To$Snap (sm@53@00 s@$ x@15@00 y@16@00 z@17@00))) (Set_unionone (Set_singleton x@15@00) z@17@00) x@15@00 y@16@00)))))
  :pattern ((fun3 s@$ x@15@00 y@16@00 z@17@00))
  :qid |quant-u-5725|)))
(assert (forall ((s@$ $Snap) (x@15@00 $Ref) (y@16@00 $Ref) (z@17@00 $Ref)) (!
  (=>
    (fun3%precondition s@$ x@15@00 y@16@00 z@17@00)
    (fun2%precondition ($Snap.combine
      $Snap.unit
      ($SortWrappers.$FVF<f>To$Snap (sm@53@00 s@$ x@15@00 y@16@00 z@17@00))) (Set_unionone (Set_singleton x@15@00) z@17@00) x@15@00 y@16@00))
  :pattern ((fun3 s@$ x@15@00 y@16@00 z@17@00))
  :qid |quant-u-5726|)))
; ---------- FUNCTION fun5----------
(declare-fun x@19@00 () $Ref)
(declare-fun y@20@00 () $Ref)
(declare-fun z@21@00 () $Ref)
(declare-fun result@22@00 () Int)
; ----- Well-definedness of specifications -----
(push) ; 1
(assert (= s@$ ($Snap.combine ($Snap.first s@$) ($Snap.second s@$))))
(declare-fun sm@54@00 ($Snap $Ref $Ref $Ref) $FVF<f>)
; Definitional axioms for singleton-SM's value
(assert (=
  ($FVF.lookup_f (sm@54@00 s@$ x@19@00 y@20@00 z@21@00) x@19@00)
  ($SortWrappers.$SnapToInt ($Snap.first s@$))))
(assert (not (= x@19@00 $Ref.null)))
(assert (=
  ($Snap.second s@$)
  ($Snap.combine
    ($Snap.first ($Snap.second s@$))
    ($Snap.second ($Snap.second s@$)))))
(declare-fun sm@55@00 ($Snap $Ref $Ref $Ref) $FVF<f>)
; Definitional axioms for singleton-SM's value
(assert (=
  ($FVF.lookup_f (sm@55@00 s@$ x@19@00 y@20@00 z@21@00) y@20@00)
  ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second s@$)))))
(push) ; 2
(set-option :timeout 10)
(assert (not (= y@20@00 x@19@00)))
(check-sat)
; unknown
(pop) ; 2
; 0.00s
; (get-info :all-statistics)
(assert (not (= y@20@00 $Ref.null)))
(declare-fun sm@56@00 ($Snap $Ref $Ref $Ref) $FVF<f>)
; Definitional axioms for singleton-SM's value
(assert (=
  ($FVF.lookup_f (sm@56@00 s@$ x@19@00 y@20@00 z@21@00) z@21@00)
  ($SortWrappers.$SnapToInt ($Snap.second ($Snap.second s@$)))))
(set-option :timeout 0)
(push) ; 2
(set-option :timeout 10)
(assert (not (= z@21@00 y@20@00)))
(check-sat)
; unknown
(pop) ; 2
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 2
(set-option :timeout 10)
(assert (not (= z@21@00 x@19@00)))
(check-sat)
; unknown
(pop) ; 2
; 0.00s
; (get-info :all-statistics)
(assert (not (= z@21@00 $Ref.null)))
(pop) ; 1
(assert (forall ((s@$ $Snap) (x@19@00 $Ref) (y@20@00 $Ref) (z@21@00 $Ref)) (!
  (=
    (fun5%limited s@$ x@19@00 y@20@00 z@21@00)
    (fun5 s@$ x@19@00 y@20@00 z@21@00))
  :pattern ((fun5 s@$ x@19@00 y@20@00 z@21@00))
  :qid |quant-u-5703|)))
(assert (forall ((s@$ $Snap) (x@19@00 $Ref) (y@20@00 $Ref) (z@21@00 $Ref)) (!
  (fun5%stateless x@19@00 y@20@00 z@21@00)
  :pattern ((fun5%limited s@$ x@19@00 y@20@00 z@21@00))
  :qid |quant-u-5704|)))
; ----- Verification of function body and postcondition -----
(set-option :timeout 0)
(push) ; 1
(assert (=
  ($FVF.lookup_f (sm@56@00 s@$ x@19@00 y@20@00 z@21@00) z@21@00)
  ($SortWrappers.$SnapToInt ($Snap.second ($Snap.second s@$)))))
(assert (not (= z@21@00 $Ref.null)))
(assert (=
  ($FVF.lookup_f (sm@55@00 s@$ x@19@00 y@20@00 z@21@00) y@20@00)
  ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second s@$)))))
(assert (not (= y@20@00 $Ref.null)))
(assert (=
  ($FVF.lookup_f (sm@54@00 s@$ x@19@00 y@20@00 z@21@00) x@19@00)
  ($SortWrappers.$SnapToInt ($Snap.first s@$))))
(assert (not (= x@19@00 $Ref.null)))
(assert (=
  ($Snap.second s@$)
  ($Snap.combine
    ($Snap.first ($Snap.second s@$))
    ($Snap.second ($Snap.second s@$)))))
(assert (= s@$ ($Snap.combine ($Snap.first s@$) ($Snap.second s@$))))
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
; [eval] x.f + y.f + z.f + fun1(Set(x, y), x)
; [eval] x.f + y.f + z.f
; [eval] x.f + y.f
(declare-fun sm@57@00 ($Snap $Ref $Ref $Ref) $FVF<f>)
; Definitional axioms for snapshot map values
(assert (forall ((r $Ref)) (!
  (=>
    (= r x@19@00)
    (=
      ($FVF.lookup_f (sm@57@00 s@$ x@19@00 y@20@00 z@21@00) r)
      ($FVF.lookup_f (sm@54@00 s@$ x@19@00 y@20@00 z@21@00) r)))
  :pattern (($FVF.lookup_f (sm@57@00 s@$ x@19@00 y@20@00 z@21@00) r))
  :pattern (($FVF.lookup_f (sm@54@00 s@$ x@19@00 y@20@00 z@21@00) r))
  :qid |qp.fvfValDef18|)))
(assert (forall ((r $Ref)) (!
  (=>
    (= r y@20@00)
    (=
      ($FVF.lookup_f (sm@57@00 s@$ x@19@00 y@20@00 z@21@00) r)
      ($FVF.lookup_f (sm@55@00 s@$ x@19@00 y@20@00 z@21@00) r)))
  :pattern (($FVF.lookup_f (sm@57@00 s@$ x@19@00 y@20@00 z@21@00) r))
  :pattern (($FVF.lookup_f (sm@55@00 s@$ x@19@00 y@20@00 z@21@00) r))
  :qid |qp.fvfValDef19|)))
(assert (forall ((r $Ref)) (!
  (=>
    (= r z@21@00)
    (=
      ($FVF.lookup_f (sm@57@00 s@$ x@19@00 y@20@00 z@21@00) r)
      ($FVF.lookup_f (sm@56@00 s@$ x@19@00 y@20@00 z@21@00) r)))
  :pattern (($FVF.lookup_f (sm@57@00 s@$ x@19@00 y@20@00 z@21@00) r))
  :pattern (($FVF.lookup_f (sm@56@00 s@$ x@19@00 y@20@00 z@21@00) r))
  :qid |qp.fvfValDef20|)))
(declare-const pm@58@00 $FPM)
(assert (forall ((r $Ref)) (!
  (=
    ($FVF.perm_f (as pm@58@00  $FPM) r)
    (+
      (+
        (ite (= r x@19@00) $Perm.Write $Perm.No)
        (ite (= r y@20@00) $Perm.Write $Perm.No))
      (ite (= r z@21@00) $Perm.Write $Perm.No)))
  :pattern (($FVF.perm_f (as pm@58@00  $FPM) r))
  :qid |qp.resPrmSumDef21|)))
(set-option :timeout 0)
(push) ; 2
(assert (not (< $Perm.No ($FVF.perm_f (as pm@58@00  $FPM) x@19@00))))
(check-sat)
; unsat
(pop) ; 2
; 0.00s
; (get-info :all-statistics)
(assert (and
  (forall ((r $Ref)) (!
    (=>
      (= r x@19@00)
      (=
        ($FVF.lookup_f (sm@57@00 s@$ x@19@00 y@20@00 z@21@00) r)
        ($FVF.lookup_f (sm@54@00 s@$ x@19@00 y@20@00 z@21@00) r)))
    :pattern (($FVF.lookup_f (sm@57@00 s@$ x@19@00 y@20@00 z@21@00) r))
    :pattern (($FVF.lookup_f (sm@54@00 s@$ x@19@00 y@20@00 z@21@00) r))
    :qid |qp.fvfValDef18|))
  (forall ((r $Ref)) (!
    (=>
      (= r y@20@00)
      (=
        ($FVF.lookup_f (sm@57@00 s@$ x@19@00 y@20@00 z@21@00) r)
        ($FVF.lookup_f (sm@55@00 s@$ x@19@00 y@20@00 z@21@00) r)))
    :pattern (($FVF.lookup_f (sm@57@00 s@$ x@19@00 y@20@00 z@21@00) r))
    :pattern (($FVF.lookup_f (sm@55@00 s@$ x@19@00 y@20@00 z@21@00) r))
    :qid |qp.fvfValDef19|))
  (forall ((r $Ref)) (!
    (=>
      (= r z@21@00)
      (=
        ($FVF.lookup_f (sm@57@00 s@$ x@19@00 y@20@00 z@21@00) r)
        ($FVF.lookup_f (sm@56@00 s@$ x@19@00 y@20@00 z@21@00) r)))
    :pattern (($FVF.lookup_f (sm@57@00 s@$ x@19@00 y@20@00 z@21@00) r))
    :pattern (($FVF.lookup_f (sm@56@00 s@$ x@19@00 y@20@00 z@21@00) r))
    :qid |qp.fvfValDef20|))))
(push) ; 2
(assert (not (<
  $Perm.No
  (+
    (+ (ite (= y@20@00 x@19@00) $Perm.Write $Perm.No) $Perm.Write)
    (ite (= y@20@00 z@21@00) $Perm.Write $Perm.No)))))
(check-sat)
; unsat
(pop) ; 2
; 0.00s
; (get-info :all-statistics)
(assert (and
  (forall ((r $Ref)) (!
    (=>
      (= r x@19@00)
      (=
        ($FVF.lookup_f (sm@57@00 s@$ x@19@00 y@20@00 z@21@00) r)
        ($FVF.lookup_f (sm@54@00 s@$ x@19@00 y@20@00 z@21@00) r)))
    :pattern (($FVF.lookup_f (sm@57@00 s@$ x@19@00 y@20@00 z@21@00) r))
    :pattern (($FVF.lookup_f (sm@54@00 s@$ x@19@00 y@20@00 z@21@00) r))
    :qid |qp.fvfValDef18|))
  (forall ((r $Ref)) (!
    (=>
      (= r y@20@00)
      (=
        ($FVF.lookup_f (sm@57@00 s@$ x@19@00 y@20@00 z@21@00) r)
        ($FVF.lookup_f (sm@55@00 s@$ x@19@00 y@20@00 z@21@00) r)))
    :pattern (($FVF.lookup_f (sm@57@00 s@$ x@19@00 y@20@00 z@21@00) r))
    :pattern (($FVF.lookup_f (sm@55@00 s@$ x@19@00 y@20@00 z@21@00) r))
    :qid |qp.fvfValDef19|))
  (forall ((r $Ref)) (!
    (=>
      (= r z@21@00)
      (=
        ($FVF.lookup_f (sm@57@00 s@$ x@19@00 y@20@00 z@21@00) r)
        ($FVF.lookup_f (sm@56@00 s@$ x@19@00 y@20@00 z@21@00) r)))
    :pattern (($FVF.lookup_f (sm@57@00 s@$ x@19@00 y@20@00 z@21@00) r))
    :pattern (($FVF.lookup_f (sm@56@00 s@$ x@19@00 y@20@00 z@21@00) r))
    :qid |qp.fvfValDef20|))))
(push) ; 2
(assert (not (<
  $Perm.No
  (+
    (+
      (ite (= z@21@00 x@19@00) $Perm.Write $Perm.No)
      (ite (= z@21@00 y@20@00) $Perm.Write $Perm.No))
    $Perm.Write))))
(check-sat)
; unsat
(pop) ; 2
; 0.00s
; (get-info :all-statistics)
; [eval] fun1(Set(x, y), x)
; [eval] Set(x, y)
(push) ; 2
; [eval] (x in xs)
(push) ; 3
(assert (not (Set_in x@19@00 (Set_unionone (Set_singleton x@19@00) y@20@00))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(assert (Set_in x@19@00 (Set_unionone (Set_singleton x@19@00) y@20@00)))
(declare-const r@59@00 $Ref)
(push) ; 3
; [eval] (r in xs)
(assert (Set_in r@59@00 (Set_unionone (Set_singleton x@19@00) y@20@00)))
(pop) ; 3
(declare-fun inv@60@00 ($Snap $Ref $Ref $Ref $Ref) $Ref)
(declare-fun img@61@00 ($Snap $Ref $Ref $Ref $Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
; Check receiver injectivity
(push) ; 3
(assert (not (forall ((r1@59@00 $Ref) (r2@59@00 $Ref)) (!
  (=>
    (and
      (Set_in r1@59@00 (Set_unionone (Set_singleton x@19@00) y@20@00))
      (Set_in r2@59@00 (Set_unionone (Set_singleton x@19@00) y@20@00))
      (= r1@59@00 r2@59@00))
    (= r1@59@00 r2@59@00))
  
  :qid |f-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((r@59@00 $Ref)) (!
  (=>
    (Set_in r@59@00 (Set_unionone (Set_singleton x@19@00) y@20@00))
    (and
      (= (inv@60@00 s@$ x@19@00 y@20@00 z@21@00 r@59@00) r@59@00)
      (img@61@00 s@$ x@19@00 y@20@00 z@21@00 r@59@00)))
  :pattern ((Set_in r@59@00 (Set_unionone (Set_singleton x@19@00) y@20@00)))
  :pattern ((inv@60@00 s@$ x@19@00 y@20@00 z@21@00 r@59@00))
  :pattern ((img@61@00 s@$ x@19@00 y@20@00 z@21@00 r@59@00))
  :qid |f-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@61@00 s@$ x@19@00 y@20@00 z@21@00 r)
      (Set_in (inv@60@00 s@$ x@19@00 y@20@00 z@21@00 r) (Set_unionone (Set_singleton x@19@00) y@20@00)))
    (= (inv@60@00 s@$ x@19@00 y@20@00 z@21@00 r) r))
  :pattern ((inv@60@00 s@$ x@19@00 y@20@00 z@21@00 r))
  :qid |f-fctOfInv|)))
(push) ; 3
(assert (not (forall ((r $Ref)) (!
  (=>
    (and
      (Set_in (inv@60@00 s@$ x@19@00 y@20@00 z@21@00 r) (Set_unionone (Set_singleton x@19@00) y@20@00))
      (img@61@00 s@$ x@19@00 y@20@00 z@21@00 r)
      (= r (inv@60@00 s@$ x@19@00 y@20@00 z@21@00 r)))
    (>
      (+
        (+
          (ite (= r x@19@00) $Perm.Write $Perm.No)
          (ite (= r y@20@00) $Perm.Write $Perm.No))
        (ite (= r z@21@00) $Perm.Write $Perm.No))
      $Perm.No))
  
  :qid |quant-u-5728|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(declare-fun sm@62@00 ($Snap $Ref $Ref $Ref) $FVF<f>)
; Definitional axioms for snapshot map domain
(assert (forall ((r $Ref)) (!
  (and
    (=>
      (Set_in r ($FVF.domain_f (sm@62@00 s@$ x@19@00 y@20@00 z@21@00)))
      (and
        (Set_in (inv@60@00 s@$ x@19@00 y@20@00 z@21@00 r) (Set_unionone (Set_singleton x@19@00) y@20@00))
        (img@61@00 s@$ x@19@00 y@20@00 z@21@00 r)))
    (=>
      (and
        (Set_in (inv@60@00 s@$ x@19@00 y@20@00 z@21@00 r) (Set_unionone (Set_singleton x@19@00) y@20@00))
        (img@61@00 s@$ x@19@00 y@20@00 z@21@00 r))
      (Set_in r ($FVF.domain_f (sm@62@00 s@$ x@19@00 y@20@00 z@21@00)))))
  :pattern ((Set_in r ($FVF.domain_f (sm@62@00 s@$ x@19@00 y@20@00 z@21@00))))
  :qid |qp.fvfDomDef25|)))
; Definitional axioms for snapshot map values
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and
        (Set_in (inv@60@00 s@$ x@19@00 y@20@00 z@21@00 r) (Set_unionone (Set_singleton x@19@00) y@20@00))
        (img@61@00 s@$ x@19@00 y@20@00 z@21@00 r))
      (= r x@19@00))
    (=
      ($FVF.lookup_f (sm@62@00 s@$ x@19@00 y@20@00 z@21@00) r)
      ($FVF.lookup_f (sm@54@00 s@$ x@19@00 y@20@00 z@21@00) r)))
  :pattern (($FVF.lookup_f (sm@62@00 s@$ x@19@00 y@20@00 z@21@00) r))
  :pattern (($FVF.lookup_f (sm@54@00 s@$ x@19@00 y@20@00 z@21@00) r))
  :qid |qp.fvfValDef22|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and
        (Set_in (inv@60@00 s@$ x@19@00 y@20@00 z@21@00 r) (Set_unionone (Set_singleton x@19@00) y@20@00))
        (img@61@00 s@$ x@19@00 y@20@00 z@21@00 r))
      (= r y@20@00))
    (=
      ($FVF.lookup_f (sm@62@00 s@$ x@19@00 y@20@00 z@21@00) r)
      ($FVF.lookup_f (sm@55@00 s@$ x@19@00 y@20@00 z@21@00) r)))
  :pattern (($FVF.lookup_f (sm@62@00 s@$ x@19@00 y@20@00 z@21@00) r))
  :pattern (($FVF.lookup_f (sm@55@00 s@$ x@19@00 y@20@00 z@21@00) r))
  :qid |qp.fvfValDef23|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and
        (Set_in (inv@60@00 s@$ x@19@00 y@20@00 z@21@00 r) (Set_unionone (Set_singleton x@19@00) y@20@00))
        (img@61@00 s@$ x@19@00 y@20@00 z@21@00 r))
      (= r z@21@00))
    (=
      ($FVF.lookup_f (sm@62@00 s@$ x@19@00 y@20@00 z@21@00) r)
      ($FVF.lookup_f (sm@56@00 s@$ x@19@00 y@20@00 z@21@00) r)))
  :pattern (($FVF.lookup_f (sm@62@00 s@$ x@19@00 y@20@00 z@21@00) r))
  :pattern (($FVF.lookup_f (sm@56@00 s@$ x@19@00 y@20@00 z@21@00) r))
  :qid |qp.fvfValDef24|)))
(assert (fun1%precondition ($Snap.combine
  $Snap.unit
  ($SortWrappers.$FVF<f>To$Snap (sm@62@00 s@$ x@19@00 y@20@00 z@21@00))) (Set_unionone (Set_singleton x@19@00) y@20@00) x@19@00))
(pop) ; 2
; Joined path conditions
(assert (forall ((r@59@00 $Ref)) (!
  (=>
    (Set_in r@59@00 (Set_unionone (Set_singleton x@19@00) y@20@00))
    (and
      (= (inv@60@00 s@$ x@19@00 y@20@00 z@21@00 r@59@00) r@59@00)
      (img@61@00 s@$ x@19@00 y@20@00 z@21@00 r@59@00)))
  :pattern ((Set_in r@59@00 (Set_unionone (Set_singleton x@19@00) y@20@00)))
  :pattern ((inv@60@00 s@$ x@19@00 y@20@00 z@21@00 r@59@00))
  :pattern ((img@61@00 s@$ x@19@00 y@20@00 z@21@00 r@59@00))
  :qid |f-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@61@00 s@$ x@19@00 y@20@00 z@21@00 r)
      (Set_in (inv@60@00 s@$ x@19@00 y@20@00 z@21@00 r) (Set_unionone (Set_singleton x@19@00) y@20@00)))
    (= (inv@60@00 s@$ x@19@00 y@20@00 z@21@00 r) r))
  :pattern ((inv@60@00 s@$ x@19@00 y@20@00 z@21@00 r))
  :qid |f-fctOfInv|)))
(assert (forall ((r $Ref)) (!
  (and
    (=>
      (Set_in r ($FVF.domain_f (sm@62@00 s@$ x@19@00 y@20@00 z@21@00)))
      (and
        (Set_in (inv@60@00 s@$ x@19@00 y@20@00 z@21@00 r) (Set_unionone (Set_singleton x@19@00) y@20@00))
        (img@61@00 s@$ x@19@00 y@20@00 z@21@00 r)))
    (=>
      (and
        (Set_in (inv@60@00 s@$ x@19@00 y@20@00 z@21@00 r) (Set_unionone (Set_singleton x@19@00) y@20@00))
        (img@61@00 s@$ x@19@00 y@20@00 z@21@00 r))
      (Set_in r ($FVF.domain_f (sm@62@00 s@$ x@19@00 y@20@00 z@21@00)))))
  :pattern ((Set_in r ($FVF.domain_f (sm@62@00 s@$ x@19@00 y@20@00 z@21@00))))
  :qid |qp.fvfDomDef25|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and
        (Set_in (inv@60@00 s@$ x@19@00 y@20@00 z@21@00 r) (Set_unionone (Set_singleton x@19@00) y@20@00))
        (img@61@00 s@$ x@19@00 y@20@00 z@21@00 r))
      (= r x@19@00))
    (=
      ($FVF.lookup_f (sm@62@00 s@$ x@19@00 y@20@00 z@21@00) r)
      ($FVF.lookup_f (sm@54@00 s@$ x@19@00 y@20@00 z@21@00) r)))
  :pattern (($FVF.lookup_f (sm@62@00 s@$ x@19@00 y@20@00 z@21@00) r))
  :pattern (($FVF.lookup_f (sm@54@00 s@$ x@19@00 y@20@00 z@21@00) r))
  :qid |qp.fvfValDef22|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and
        (Set_in (inv@60@00 s@$ x@19@00 y@20@00 z@21@00 r) (Set_unionone (Set_singleton x@19@00) y@20@00))
        (img@61@00 s@$ x@19@00 y@20@00 z@21@00 r))
      (= r y@20@00))
    (=
      ($FVF.lookup_f (sm@62@00 s@$ x@19@00 y@20@00 z@21@00) r)
      ($FVF.lookup_f (sm@55@00 s@$ x@19@00 y@20@00 z@21@00) r)))
  :pattern (($FVF.lookup_f (sm@62@00 s@$ x@19@00 y@20@00 z@21@00) r))
  :pattern (($FVF.lookup_f (sm@55@00 s@$ x@19@00 y@20@00 z@21@00) r))
  :qid |qp.fvfValDef23|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and
        (Set_in (inv@60@00 s@$ x@19@00 y@20@00 z@21@00 r) (Set_unionone (Set_singleton x@19@00) y@20@00))
        (img@61@00 s@$ x@19@00 y@20@00 z@21@00 r))
      (= r z@21@00))
    (=
      ($FVF.lookup_f (sm@62@00 s@$ x@19@00 y@20@00 z@21@00) r)
      ($FVF.lookup_f (sm@56@00 s@$ x@19@00 y@20@00 z@21@00) r)))
  :pattern (($FVF.lookup_f (sm@62@00 s@$ x@19@00 y@20@00 z@21@00) r))
  :pattern (($FVF.lookup_f (sm@56@00 s@$ x@19@00 y@20@00 z@21@00) r))
  :qid |qp.fvfValDef24|)))
(assert (and
  (Set_in x@19@00 (Set_unionone (Set_singleton x@19@00) y@20@00))
  (fun1%precondition ($Snap.combine
    $Snap.unit
    ($SortWrappers.$FVF<f>To$Snap (sm@62@00 s@$ x@19@00 y@20@00 z@21@00))) (Set_unionone (Set_singleton x@19@00) y@20@00) x@19@00)))
(assert (=
  result@22@00
  (+
    (+
      (+
        ($FVF.lookup_f (sm@57@00 s@$ x@19@00 y@20@00 z@21@00) x@19@00)
        ($FVF.lookup_f (sm@57@00 s@$ x@19@00 y@20@00 z@21@00) y@20@00))
      ($FVF.lookup_f (sm@57@00 s@$ x@19@00 y@20@00 z@21@00) z@21@00))
    (fun1 ($Snap.combine
      $Snap.unit
      ($SortWrappers.$FVF<f>To$Snap (sm@62@00 s@$ x@19@00 y@20@00 z@21@00))) (Set_unionone (Set_singleton x@19@00) y@20@00) x@19@00))))
(pop) ; 1
(assert (forall ((s@$ $Snap) (x@19@00 $Ref) (y@20@00 $Ref) (z@21@00 $Ref)) (!
  (and
    (forall ((r@59@00 $Ref)) (!
      (=>
        (Set_in r@59@00 (Set_unionone (Set_singleton x@19@00) y@20@00))
        (and
          (= (inv@60@00 s@$ x@19@00 y@20@00 z@21@00 r@59@00) r@59@00)
          (img@61@00 s@$ x@19@00 y@20@00 z@21@00 r@59@00)))
      :pattern ((Set_in r@59@00 (Set_unionone (Set_singleton x@19@00) y@20@00)))
      :pattern ((inv@60@00 s@$ x@19@00 y@20@00 z@21@00 r@59@00))
      :pattern ((img@61@00 s@$ x@19@00 y@20@00 z@21@00 r@59@00))
      :qid |f-invOfFct|))
    (forall ((r $Ref)) (!
      (=>
        (and
          (img@61@00 s@$ x@19@00 y@20@00 z@21@00 r)
          (Set_in (inv@60@00 s@$ x@19@00 y@20@00 z@21@00 r) (Set_unionone (Set_singleton x@19@00) y@20@00)))
        (= (inv@60@00 s@$ x@19@00 y@20@00 z@21@00 r) r))
      :pattern ((inv@60@00 s@$ x@19@00 y@20@00 z@21@00 r))
      :qid |f-fctOfInv|))
    (=
      ($FVF.lookup_f (sm@54@00 s@$ x@19@00 y@20@00 z@21@00) x@19@00)
      ($SortWrappers.$SnapToInt ($Snap.first s@$)))
    (=
      ($FVF.lookup_f (sm@55@00 s@$ x@19@00 y@20@00 z@21@00) y@20@00)
      ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second s@$))))
    (=
      ($FVF.lookup_f (sm@56@00 s@$ x@19@00 y@20@00 z@21@00) z@21@00)
      ($SortWrappers.$SnapToInt ($Snap.second ($Snap.second s@$))))
    (forall ((r $Ref)) (!
      (=>
        (= r x@19@00)
        (=
          ($FVF.lookup_f (sm@57@00 s@$ x@19@00 y@20@00 z@21@00) r)
          ($FVF.lookup_f (sm@54@00 s@$ x@19@00 y@20@00 z@21@00) r)))
      :pattern (($FVF.lookup_f (sm@57@00 s@$ x@19@00 y@20@00 z@21@00) r))
      :pattern (($FVF.lookup_f (sm@54@00 s@$ x@19@00 y@20@00 z@21@00) r))
      :qid |qp.fvfValDef18|))
    (forall ((r $Ref)) (!
      (=>
        (= r y@20@00)
        (=
          ($FVF.lookup_f (sm@57@00 s@$ x@19@00 y@20@00 z@21@00) r)
          ($FVF.lookup_f (sm@55@00 s@$ x@19@00 y@20@00 z@21@00) r)))
      :pattern (($FVF.lookup_f (sm@57@00 s@$ x@19@00 y@20@00 z@21@00) r))
      :pattern (($FVF.lookup_f (sm@55@00 s@$ x@19@00 y@20@00 z@21@00) r))
      :qid |qp.fvfValDef19|))
    (forall ((r $Ref)) (!
      (=>
        (= r z@21@00)
        (=
          ($FVF.lookup_f (sm@57@00 s@$ x@19@00 y@20@00 z@21@00) r)
          ($FVF.lookup_f (sm@56@00 s@$ x@19@00 y@20@00 z@21@00) r)))
      :pattern (($FVF.lookup_f (sm@57@00 s@$ x@19@00 y@20@00 z@21@00) r))
      :pattern (($FVF.lookup_f (sm@56@00 s@$ x@19@00 y@20@00 z@21@00) r))
      :qid |qp.fvfValDef20|))
    (forall ((r $Ref)) (!
      (and
        (=>
          (Set_in r ($FVF.domain_f (sm@62@00 s@$ x@19@00 y@20@00 z@21@00)))
          (and
            (Set_in (inv@60@00 s@$ x@19@00 y@20@00 z@21@00 r) (Set_unionone (Set_singleton x@19@00) y@20@00))
            (img@61@00 s@$ x@19@00 y@20@00 z@21@00 r)))
        (=>
          (and
            (Set_in (inv@60@00 s@$ x@19@00 y@20@00 z@21@00 r) (Set_unionone (Set_singleton x@19@00) y@20@00))
            (img@61@00 s@$ x@19@00 y@20@00 z@21@00 r))
          (Set_in r ($FVF.domain_f (sm@62@00 s@$ x@19@00 y@20@00 z@21@00)))))
      :pattern ((Set_in r ($FVF.domain_f (sm@62@00 s@$ x@19@00 y@20@00 z@21@00))))
      :qid |qp.fvfDomDef25|))
    (forall ((r $Ref)) (!
      (=>
        (and
          (and
            (Set_in (inv@60@00 s@$ x@19@00 y@20@00 z@21@00 r) (Set_unionone (Set_singleton x@19@00) y@20@00))
            (img@61@00 s@$ x@19@00 y@20@00 z@21@00 r))
          (= r x@19@00))
        (=
          ($FVF.lookup_f (sm@62@00 s@$ x@19@00 y@20@00 z@21@00) r)
          ($FVF.lookup_f (sm@54@00 s@$ x@19@00 y@20@00 z@21@00) r)))
      :pattern (($FVF.lookup_f (sm@62@00 s@$ x@19@00 y@20@00 z@21@00) r))
      :pattern (($FVF.lookup_f (sm@54@00 s@$ x@19@00 y@20@00 z@21@00) r))
      :qid |qp.fvfValDef22|))
    (forall ((r $Ref)) (!
      (=>
        (and
          (and
            (Set_in (inv@60@00 s@$ x@19@00 y@20@00 z@21@00 r) (Set_unionone (Set_singleton x@19@00) y@20@00))
            (img@61@00 s@$ x@19@00 y@20@00 z@21@00 r))
          (= r y@20@00))
        (=
          ($FVF.lookup_f (sm@62@00 s@$ x@19@00 y@20@00 z@21@00) r)
          ($FVF.lookup_f (sm@55@00 s@$ x@19@00 y@20@00 z@21@00) r)))
      :pattern (($FVF.lookup_f (sm@62@00 s@$ x@19@00 y@20@00 z@21@00) r))
      :pattern (($FVF.lookup_f (sm@55@00 s@$ x@19@00 y@20@00 z@21@00) r))
      :qid |qp.fvfValDef23|))
    (forall ((r $Ref)) (!
      (=>
        (and
          (and
            (Set_in (inv@60@00 s@$ x@19@00 y@20@00 z@21@00 r) (Set_unionone (Set_singleton x@19@00) y@20@00))
            (img@61@00 s@$ x@19@00 y@20@00 z@21@00 r))
          (= r z@21@00))
        (=
          ($FVF.lookup_f (sm@62@00 s@$ x@19@00 y@20@00 z@21@00) r)
          ($FVF.lookup_f (sm@56@00 s@$ x@19@00 y@20@00 z@21@00) r)))
      :pattern (($FVF.lookup_f (sm@62@00 s@$ x@19@00 y@20@00 z@21@00) r))
      :pattern (($FVF.lookup_f (sm@56@00 s@$ x@19@00 y@20@00 z@21@00) r))
      :qid |qp.fvfValDef24|))
    (=>
      (fun5%precondition s@$ x@19@00 y@20@00 z@21@00)
      (=
        (fun5 s@$ x@19@00 y@20@00 z@21@00)
        (+
          (+
            (+
              ($FVF.lookup_f (sm@57@00 s@$ x@19@00 y@20@00 z@21@00) x@19@00)
              ($FVF.lookup_f (sm@57@00 s@$ x@19@00 y@20@00 z@21@00) y@20@00))
            ($FVF.lookup_f (sm@57@00 s@$ x@19@00 y@20@00 z@21@00) z@21@00))
          (fun1 ($Snap.combine
            $Snap.unit
            ($SortWrappers.$FVF<f>To$Snap (sm@62@00 s@$ x@19@00 y@20@00 z@21@00))) (Set_unionone (Set_singleton x@19@00) y@20@00) x@19@00)))))
  :pattern ((fun5 s@$ x@19@00 y@20@00 z@21@00))
  :qid |quant-u-5729|)))
(assert (forall ((s@$ $Snap) (x@19@00 $Ref) (y@20@00 $Ref) (z@21@00 $Ref)) (!
  (=>
    (fun5%precondition s@$ x@19@00 y@20@00 z@21@00)
    (fun1%precondition ($Snap.combine
      $Snap.unit
      ($SortWrappers.$FVF<f>To$Snap (sm@62@00 s@$ x@19@00 y@20@00 z@21@00))) (Set_unionone (Set_singleton x@19@00) y@20@00) x@19@00))
  :pattern ((fun5 s@$ x@19@00 y@20@00 z@21@00))
  :qid |quant-u-5730|)))
