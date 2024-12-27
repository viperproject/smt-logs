(get-info :version)
; (:version "4.12.1")
; Started: 2024-12-27 01:59:56
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
(declare-sort TrClo 0)
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
(declare-fun $SortWrappers.TrCloTo$Snap (TrClo) $Snap)
(declare-fun $SortWrappers.$SnapToTrClo ($Snap) TrClo)
(assert (forall ((x TrClo)) (!
    (= x ($SortWrappers.$SnapToTrClo($SortWrappers.TrCloTo$Snap x)))
    :pattern (($SortWrappers.TrCloTo$Snap x))
    :qid |$Snap.$SnapToTrCloTo$Snap|
    )))
(assert (forall ((x $Snap)) (!
    (= x ($SortWrappers.TrCloTo$Snap($SortWrappers.$SnapToTrClo x)))
    :pattern (($SortWrappers.$SnapToTrClo x))
    :qid |$Snap.TrCloTo$SnapToTrClo|
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
(declare-fun exists_path<Bool> (Set<Int> $Ref $Ref) Bool)
; /field_value_functions_declarations.smt2 [next: Ref]
(declare-fun $FVF.domain_next ($FVF<next>) Set<$Ref>)
(declare-fun $FVF.lookup_next ($FVF<next> $Ref) $Ref)
(declare-fun $FVF.after_next ($FVF<next> $FVF<next>) Bool)
(declare-fun $FVF.loc_next ($Ref $Ref) Bool)
(declare-fun $FVF.perm_next ($FPM $Ref) $Perm)
(declare-const $fvfTOP_next $FVF<next>)
; Declaring symbols related to program functions (from program analysis)
(declare-fun $$ ($Snap Set<$Ref>) Set<Int>)
(declare-fun $$%limited ($Snap Set<$Ref>) Set<Int>)
(declare-fun $$%stateless (Set<$Ref>) Bool)
(declare-fun $$%precondition ($Snap Set<$Ref>) Bool)
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
(declare-fun inv@3@00 ($Snap Set<$Ref> $Ref) $Ref)
(declare-fun img@4@00 ($Snap Set<$Ref> $Ref) Bool)
(assert (forall ((s@$ $Snap) (refs@0@00 Set<$Ref>)) (!
  (= ($$%limited s@$ refs@0@00) ($$ s@$ refs@0@00))
  :pattern (($$ s@$ refs@0@00))
  :qid |quant-u-23852|)))
(assert (forall ((s@$ $Snap) (refs@0@00 Set<$Ref>)) (!
  ($$%stateless refs@0@00)
  :pattern (($$%limited s@$ refs@0@00))
  :qid |quant-u-23853|)))
; End function- and predicate-related preamble
; ------------------------------------------------------------
; ---------- append ----------
(declare-const g@0@01 Set<$Ref>)
(declare-const x@1@01 $Ref)
(declare-const g@2@01 Set<$Ref>)
(declare-const x@3@01 $Ref)
(set-option :timeout 0)
(push) ; 1
(declare-const $t@4@01 $Snap)
(assert (= $t@4@01 ($Snap.combine ($Snap.first $t@4@01) ($Snap.second $t@4@01))))
(declare-const n@5@01 $Ref)
(push) ; 2
; [eval] (n in g)
(assert (Set_in n@5@01 g@2@01))
(pop) ; 2
(declare-fun inv@6@01 ($Ref) $Ref)
(declare-fun img@7@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
; Check receiver injectivity
(push) ; 2
(assert (not (forall ((n1@5@01 $Ref) (n2@5@01 $Ref)) (!
  (=>
    (and (Set_in n1@5@01 g@2@01) (Set_in n2@5@01 g@2@01) (= n1@5@01 n2@5@01))
    (= n1@5@01 n2@5@01))
  
  :qid |next-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 2
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((n@5@01 $Ref)) (!
  (=>
    (Set_in n@5@01 g@2@01)
    (and (= (inv@6@01 n@5@01) n@5@01) (img@7@01 n@5@01)))
  :pattern ((Set_in n@5@01 g@2@01))
  :pattern ((inv@6@01 n@5@01))
  :pattern ((img@7@01 n@5@01))
  :qid |quant-u-23857|)))
(assert (forall ((r $Ref)) (!
  (=> (and (img@7@01 r) (Set_in (inv@6@01 r) g@2@01)) (= (inv@6@01 r) r))
  :pattern ((inv@6@01 r))
  :qid |next-fctOfInv|)))
; Permissions are non-negative
; Field permissions are at most one
; Permission implies non-null receiver
(assert (forall ((n@5@01 $Ref)) (!
  (=> (Set_in n@5@01 g@2@01) (not (= n@5@01 $Ref.null)))
  :pattern ((Set_in n@5@01 g@2@01))
  :pattern ((inv@6@01 n@5@01))
  :pattern ((img@7@01 n@5@01))
  :qid |next-permImpliesNonNull|)))
(assert (=
  ($Snap.second $t@4@01)
  ($Snap.combine
    ($Snap.first ($Snap.second $t@4@01))
    ($Snap.second ($Snap.second $t@4@01)))))
(assert (= ($Snap.first ($Snap.second $t@4@01)) $Snap.unit))
; [eval] (x in g)
(assert (Set_in x@3@01 g@2@01))
(assert (= ($Snap.second ($Snap.second $t@4@01)) $Snap.unit))
; [eval] (forall n: Ref :: { (n in g) } { exists_path($$(g), x, n) } (n in g) ==> exists_path($$(g), x, n))
(declare-const n@8@01 $Ref)
(push) ; 2
; [eval] (n in g) ==> exists_path($$(g), x, n)
; [eval] (n in g)
(push) ; 3
; [then-branch: 0 | n@8@01 in g@2@01 | live]
; [else-branch: 0 | !(n@8@01 in g@2@01) | live]
(push) ; 4
; [then-branch: 0 | n@8@01 in g@2@01]
(assert (Set_in n@8@01 g@2@01))
; [eval] exists_path($$(g), x, n)
; [eval] $$(g)
(push) ; 5
(declare-const n@9@01 $Ref)
(push) ; 6
; [eval] (n in refs)
(assert (Set_in n@9@01 g@2@01))
(pop) ; 6
(declare-fun inv@10@01 ($Ref) $Ref)
(declare-fun img@11@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
; Check receiver injectivity
(push) ; 6
(assert (not (forall ((n1@9@01 $Ref) (n2@9@01 $Ref)) (!
  (=>
    (and (Set_in n1@9@01 g@2@01) (Set_in n2@9@01 g@2@01) (= n1@9@01 n2@9@01))
    (= n1@9@01 n2@9@01))
  
  :qid |next-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((n@9@01 $Ref)) (!
  (=>
    (Set_in n@9@01 g@2@01)
    (and (= (inv@10@01 n@9@01) n@9@01) (img@11@01 n@9@01)))
  :pattern ((Set_in n@9@01 g@2@01))
  :pattern ((inv@10@01 n@9@01))
  :pattern ((img@11@01 n@9@01))
  :qid |next-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=> (and (img@11@01 r) (Set_in (inv@10@01 r) g@2@01)) (= (inv@10@01 r) r))
  :pattern ((inv@10@01 r))
  :qid |next-fctOfInv|)))
(push) ; 6
(assert (not (forall ((r $Ref)) (!
  (=>
    (and (Set_in (inv@10@01 r) g@2@01) (img@11@01 r) (= r (inv@10@01 r)))
    (>
      (ite (and (img@7@01 r) (Set_in (inv@6@01 r) g@2@01)) $Perm.Write $Perm.No)
      $Perm.No))
  
  :qid |quant-u-23859|))))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(declare-const sm@12@01 $FVF<next>)
; Definitional axioms for snapshot map domain
(assert (forall ((r $Ref)) (!
  (and
    (=>
      (Set_in r ($FVF.domain_next (as sm@12@01  $FVF<next>)))
      (and (Set_in (inv@10@01 r) g@2@01) (img@11@01 r)))
    (=>
      (and (Set_in (inv@10@01 r) g@2@01) (img@11@01 r))
      (Set_in r ($FVF.domain_next (as sm@12@01  $FVF<next>)))))
  :pattern ((Set_in r ($FVF.domain_next (as sm@12@01  $FVF<next>))))
  :qid |qp.fvfDomDef1|)))
; Definitional axioms for snapshot map values
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and (Set_in (inv@10@01 r) g@2@01) (img@11@01 r))
      (and (img@7@01 r) (Set_in (inv@6@01 r) g@2@01)))
    (=
      ($FVF.lookup_next (as sm@12@01  $FVF<next>) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first $t@4@01)) r)))
  :pattern (($FVF.lookup_next (as sm@12@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first $t@4@01)) r))
  :qid |qp.fvfValDef0|)))
(assert ($$%precondition ($SortWrappers.$FVF<next>To$Snap (as sm@12@01  $FVF<next>)) g@2@01))
(pop) ; 5
; Joined path conditions
(assert (forall ((n@9@01 $Ref)) (!
  (=>
    (Set_in n@9@01 g@2@01)
    (and (= (inv@10@01 n@9@01) n@9@01) (img@11@01 n@9@01)))
  :pattern ((Set_in n@9@01 g@2@01))
  :pattern ((inv@10@01 n@9@01))
  :pattern ((img@11@01 n@9@01))
  :qid |next-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=> (and (img@11@01 r) (Set_in (inv@10@01 r) g@2@01)) (= (inv@10@01 r) r))
  :pattern ((inv@10@01 r))
  :qid |next-fctOfInv|)))
(assert (forall ((r $Ref)) (!
  (and
    (=>
      (Set_in r ($FVF.domain_next (as sm@12@01  $FVF<next>)))
      (and (Set_in (inv@10@01 r) g@2@01) (img@11@01 r)))
    (=>
      (and (Set_in (inv@10@01 r) g@2@01) (img@11@01 r))
      (Set_in r ($FVF.domain_next (as sm@12@01  $FVF<next>)))))
  :pattern ((Set_in r ($FVF.domain_next (as sm@12@01  $FVF<next>))))
  :qid |qp.fvfDomDef1|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and (Set_in (inv@10@01 r) g@2@01) (img@11@01 r))
      (and (img@7@01 r) (Set_in (inv@6@01 r) g@2@01)))
    (=
      ($FVF.lookup_next (as sm@12@01  $FVF<next>) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first $t@4@01)) r)))
  :pattern (($FVF.lookup_next (as sm@12@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first $t@4@01)) r))
  :qid |qp.fvfValDef0|)))
(assert ($$%precondition ($SortWrappers.$FVF<next>To$Snap (as sm@12@01  $FVF<next>)) g@2@01))
(pop) ; 4
(push) ; 4
; [else-branch: 0 | !(n@8@01 in g@2@01)]
(assert (not (Set_in n@8@01 g@2@01)))
(pop) ; 4
(pop) ; 3
; Joined path conditions
(assert (forall ((n@9@01 $Ref)) (!
  (=>
    (Set_in n@9@01 g@2@01)
    (and (= (inv@10@01 n@9@01) n@9@01) (img@11@01 n@9@01)))
  :pattern ((Set_in n@9@01 g@2@01))
  :pattern ((inv@10@01 n@9@01))
  :pattern ((img@11@01 n@9@01))
  :qid |next-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=> (and (img@11@01 r) (Set_in (inv@10@01 r) g@2@01)) (= (inv@10@01 r) r))
  :pattern ((inv@10@01 r))
  :qid |next-fctOfInv|)))
(assert (forall ((r $Ref)) (!
  (and
    (=>
      (Set_in r ($FVF.domain_next (as sm@12@01  $FVF<next>)))
      (and (Set_in (inv@10@01 r) g@2@01) (img@11@01 r)))
    (=>
      (and (Set_in (inv@10@01 r) g@2@01) (img@11@01 r))
      (Set_in r ($FVF.domain_next (as sm@12@01  $FVF<next>)))))
  :pattern ((Set_in r ($FVF.domain_next (as sm@12@01  $FVF<next>))))
  :qid |qp.fvfDomDef1|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and (Set_in (inv@10@01 r) g@2@01) (img@11@01 r))
      (and (img@7@01 r) (Set_in (inv@6@01 r) g@2@01)))
    (=
      ($FVF.lookup_next (as sm@12@01  $FVF<next>) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first $t@4@01)) r)))
  :pattern (($FVF.lookup_next (as sm@12@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first $t@4@01)) r))
  :qid |qp.fvfValDef0|)))
(assert (=>
  (Set_in n@8@01 g@2@01)
  (and
    (Set_in n@8@01 g@2@01)
    ($$%precondition ($SortWrappers.$FVF<next>To$Snap (as sm@12@01  $FVF<next>)) g@2@01))))
; Joined path conditions
(assert (or (not (Set_in n@8@01 g@2@01)) (Set_in n@8@01 g@2@01)))
(pop) ; 2
; Nested auxiliary terms: globals (aux)
(assert (forall ((n@9@01 $Ref)) (!
  (=>
    (Set_in n@9@01 g@2@01)
    (and (= (inv@10@01 n@9@01) n@9@01) (img@11@01 n@9@01)))
  :pattern ((Set_in n@9@01 g@2@01))
  :pattern ((inv@10@01 n@9@01))
  :pattern ((img@11@01 n@9@01))
  :qid |next-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=> (and (img@11@01 r) (Set_in (inv@10@01 r) g@2@01)) (= (inv@10@01 r) r))
  :pattern ((inv@10@01 r))
  :qid |next-fctOfInv|)))
(assert (forall ((r $Ref)) (!
  (and
    (=>
      (Set_in r ($FVF.domain_next (as sm@12@01  $FVF<next>)))
      (and (Set_in (inv@10@01 r) g@2@01) (img@11@01 r)))
    (=>
      (and (Set_in (inv@10@01 r) g@2@01) (img@11@01 r))
      (Set_in r ($FVF.domain_next (as sm@12@01  $FVF<next>)))))
  :pattern ((Set_in r ($FVF.domain_next (as sm@12@01  $FVF<next>))))
  :qid |qp.fvfDomDef1|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and (Set_in (inv@10@01 r) g@2@01) (img@11@01 r))
      (and (img@7@01 r) (Set_in (inv@6@01 r) g@2@01)))
    (=
      ($FVF.lookup_next (as sm@12@01  $FVF<next>) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first $t@4@01)) r)))
  :pattern (($FVF.lookup_next (as sm@12@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first $t@4@01)) r))
  :qid |qp.fvfValDef0|)))
; Nested auxiliary terms: non-globals (aux)
(assert (forall ((n@8@01 $Ref)) (!
  (and
    (=>
      (Set_in n@8@01 g@2@01)
      (and
        (Set_in n@8@01 g@2@01)
        ($$%precondition ($SortWrappers.$FVF<next>To$Snap (as sm@12@01  $FVF<next>)) g@2@01)))
    (or (not (Set_in n@8@01 g@2@01)) (Set_in n@8@01 g@2@01)))
  :pattern ((Set_in n@8@01 g@2@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/all/issues/carbon/0209.vpr@16@14@16@63-aux|)))
(assert (forall ((n@8@01 $Ref)) (!
  (and
    (=>
      (Set_in n@8@01 g@2@01)
      (and
        (Set_in n@8@01 g@2@01)
        ($$%precondition ($SortWrappers.$FVF<next>To$Snap (as sm@12@01  $FVF<next>)) g@2@01)))
    (or (not (Set_in n@8@01 g@2@01)) (Set_in n@8@01 g@2@01)))
  :pattern ((exists_path<Bool> ($$ ($SortWrappers.$FVF<next>To$Snap (as sm@12@01  $FVF<next>)) g@2@01) x@3@01 n@8@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/all/issues/carbon/0209.vpr@16@14@16@63-aux|)))
(assert (forall ((n@8@01 $Ref)) (!
  (=>
    (Set_in n@8@01 g@2@01)
    (exists_path<Bool> ($$ ($SortWrappers.$FVF<next>To$Snap (as sm@12@01  $FVF<next>)) g@2@01) x@3@01 n@8@01))
  :pattern ((Set_in n@8@01 g@2@01))
  :pattern ((exists_path<Bool> ($$ ($SortWrappers.$FVF<next>To$Snap (as sm@12@01  $FVF<next>)) g@2@01) x@3@01 n@8@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/all/issues/carbon/0209.vpr@16@14@16@63|)))
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
(set-option :timeout 0)
(push) ; 2
(pop) ; 2
(push) ; 2
; [exec]
; var old_g: Set[Int]
(declare-const old_g@13@01 Set<Int>)
; [exec]
; label l0
; [exec]
; assert $$(g) == old[l0]($$(g))
; [eval] $$(g) == old[l0]($$(g))
; [eval] $$(g)
(push) ; 3
(declare-const n@14@01 $Ref)
(push) ; 4
; [eval] (n in refs)
(assert (Set_in n@14@01 g@2@01))
(pop) ; 4
(declare-fun inv@15@01 ($Ref) $Ref)
(declare-fun img@16@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
; Check receiver injectivity
(push) ; 4
(assert (not (forall ((n1@14@01 $Ref) (n2@14@01 $Ref)) (!
  (=>
    (and (Set_in n1@14@01 g@2@01) (Set_in n2@14@01 g@2@01) (= n1@14@01 n2@14@01))
    (= n1@14@01 n2@14@01))
  
  :qid |next-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((n@14@01 $Ref)) (!
  (=>
    (Set_in n@14@01 g@2@01)
    (and (= (inv@15@01 n@14@01) n@14@01) (img@16@01 n@14@01)))
  :pattern ((Set_in n@14@01 g@2@01))
  :pattern ((inv@15@01 n@14@01))
  :pattern ((img@16@01 n@14@01))
  :qid |next-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=> (and (img@16@01 r) (Set_in (inv@15@01 r) g@2@01)) (= (inv@15@01 r) r))
  :pattern ((inv@15@01 r))
  :qid |next-fctOfInv|)))
(push) ; 4
(assert (not (forall ((r $Ref)) (!
  (=>
    (and (Set_in (inv@15@01 r) g@2@01) (img@16@01 r) (= r (inv@15@01 r)))
    (>
      (ite (and (img@7@01 r) (Set_in (inv@6@01 r) g@2@01)) $Perm.Write $Perm.No)
      $Perm.No))
  
  :qid |quant-u-23861|))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(declare-const sm@17@01 $FVF<next>)
; Definitional axioms for snapshot map domain
(assert (forall ((r $Ref)) (!
  (and
    (=>
      (Set_in r ($FVF.domain_next (as sm@17@01  $FVF<next>)))
      (and (Set_in (inv@15@01 r) g@2@01) (img@16@01 r)))
    (=>
      (and (Set_in (inv@15@01 r) g@2@01) (img@16@01 r))
      (Set_in r ($FVF.domain_next (as sm@17@01  $FVF<next>)))))
  :pattern ((Set_in r ($FVF.domain_next (as sm@17@01  $FVF<next>))))
  :qid |qp.fvfDomDef3|)))
; Definitional axioms for snapshot map values
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and (Set_in (inv@15@01 r) g@2@01) (img@16@01 r))
      (and (img@7@01 r) (Set_in (inv@6@01 r) g@2@01)))
    (=
      ($FVF.lookup_next (as sm@17@01  $FVF<next>) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first $t@4@01)) r)))
  :pattern (($FVF.lookup_next (as sm@17@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first $t@4@01)) r))
  :qid |qp.fvfValDef2|)))
(assert ($$%precondition ($SortWrappers.$FVF<next>To$Snap (as sm@17@01  $FVF<next>)) g@2@01))
(pop) ; 3
; Joined path conditions
(assert (forall ((n@14@01 $Ref)) (!
  (=>
    (Set_in n@14@01 g@2@01)
    (and (= (inv@15@01 n@14@01) n@14@01) (img@16@01 n@14@01)))
  :pattern ((Set_in n@14@01 g@2@01))
  :pattern ((inv@15@01 n@14@01))
  :pattern ((img@16@01 n@14@01))
  :qid |next-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=> (and (img@16@01 r) (Set_in (inv@15@01 r) g@2@01)) (= (inv@15@01 r) r))
  :pattern ((inv@15@01 r))
  :qid |next-fctOfInv|)))
(assert (forall ((r $Ref)) (!
  (and
    (=>
      (Set_in r ($FVF.domain_next (as sm@17@01  $FVF<next>)))
      (and (Set_in (inv@15@01 r) g@2@01) (img@16@01 r)))
    (=>
      (and (Set_in (inv@15@01 r) g@2@01) (img@16@01 r))
      (Set_in r ($FVF.domain_next (as sm@17@01  $FVF<next>)))))
  :pattern ((Set_in r ($FVF.domain_next (as sm@17@01  $FVF<next>))))
  :qid |qp.fvfDomDef3|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and (Set_in (inv@15@01 r) g@2@01) (img@16@01 r))
      (and (img@7@01 r) (Set_in (inv@6@01 r) g@2@01)))
    (=
      ($FVF.lookup_next (as sm@17@01  $FVF<next>) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first $t@4@01)) r)))
  :pattern (($FVF.lookup_next (as sm@17@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first $t@4@01)) r))
  :qid |qp.fvfValDef2|)))
(assert ($$%precondition ($SortWrappers.$FVF<next>To$Snap (as sm@17@01  $FVF<next>)) g@2@01))
; [eval] old[l0]($$(g))
; [eval] $$(g)
(push) ; 3
(declare-const n@18@01 $Ref)
(push) ; 4
; [eval] (n in refs)
(assert (Set_in n@18@01 g@2@01))
(pop) ; 4
(declare-fun inv@19@01 ($Ref) $Ref)
(declare-fun img@20@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
; Check receiver injectivity
(push) ; 4
(assert (not (forall ((n1@18@01 $Ref) (n2@18@01 $Ref)) (!
  (=>
    (and (Set_in n1@18@01 g@2@01) (Set_in n2@18@01 g@2@01) (= n1@18@01 n2@18@01))
    (= n1@18@01 n2@18@01))
  
  :qid |next-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((n@18@01 $Ref)) (!
  (=>
    (Set_in n@18@01 g@2@01)
    (and (= (inv@19@01 n@18@01) n@18@01) (img@20@01 n@18@01)))
  :pattern ((Set_in n@18@01 g@2@01))
  :pattern ((inv@19@01 n@18@01))
  :pattern ((img@20@01 n@18@01))
  :qid |next-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=> (and (img@20@01 r) (Set_in (inv@19@01 r) g@2@01)) (= (inv@19@01 r) r))
  :pattern ((inv@19@01 r))
  :qid |next-fctOfInv|)))
(push) ; 4
(assert (not (forall ((r $Ref)) (!
  (=>
    (and (Set_in (inv@19@01 r) g@2@01) (img@20@01 r) (= r (inv@19@01 r)))
    (>
      (ite (and (img@7@01 r) (Set_in (inv@6@01 r) g@2@01)) $Perm.Write $Perm.No)
      $Perm.No))
  
  :qid |quant-u-23863|))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(declare-const sm@21@01 $FVF<next>)
; Definitional axioms for snapshot map domain
(assert (forall ((r $Ref)) (!
  (and
    (=>
      (Set_in r ($FVF.domain_next (as sm@21@01  $FVF<next>)))
      (and (Set_in (inv@19@01 r) g@2@01) (img@20@01 r)))
    (=>
      (and (Set_in (inv@19@01 r) g@2@01) (img@20@01 r))
      (Set_in r ($FVF.domain_next (as sm@21@01  $FVF<next>)))))
  :pattern ((Set_in r ($FVF.domain_next (as sm@21@01  $FVF<next>))))
  :qid |qp.fvfDomDef5|)))
; Definitional axioms for snapshot map values
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and (Set_in (inv@19@01 r) g@2@01) (img@20@01 r))
      (and (img@7@01 r) (Set_in (inv@6@01 r) g@2@01)))
    (=
      ($FVF.lookup_next (as sm@21@01  $FVF<next>) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first $t@4@01)) r)))
  :pattern (($FVF.lookup_next (as sm@21@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first $t@4@01)) r))
  :qid |qp.fvfValDef4|)))
(assert ($$%precondition ($SortWrappers.$FVF<next>To$Snap (as sm@21@01  $FVF<next>)) g@2@01))
(pop) ; 3
; Joined path conditions
(assert (forall ((n@18@01 $Ref)) (!
  (=>
    (Set_in n@18@01 g@2@01)
    (and (= (inv@19@01 n@18@01) n@18@01) (img@20@01 n@18@01)))
  :pattern ((Set_in n@18@01 g@2@01))
  :pattern ((inv@19@01 n@18@01))
  :pattern ((img@20@01 n@18@01))
  :qid |next-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=> (and (img@20@01 r) (Set_in (inv@19@01 r) g@2@01)) (= (inv@19@01 r) r))
  :pattern ((inv@19@01 r))
  :qid |next-fctOfInv|)))
(assert (forall ((r $Ref)) (!
  (and
    (=>
      (Set_in r ($FVF.domain_next (as sm@21@01  $FVF<next>)))
      (and (Set_in (inv@19@01 r) g@2@01) (img@20@01 r)))
    (=>
      (and (Set_in (inv@19@01 r) g@2@01) (img@20@01 r))
      (Set_in r ($FVF.domain_next (as sm@21@01  $FVF<next>)))))
  :pattern ((Set_in r ($FVF.domain_next (as sm@21@01  $FVF<next>))))
  :qid |qp.fvfDomDef5|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and (Set_in (inv@19@01 r) g@2@01) (img@20@01 r))
      (and (img@7@01 r) (Set_in (inv@6@01 r) g@2@01)))
    (=
      ($FVF.lookup_next (as sm@21@01  $FVF<next>) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first $t@4@01)) r)))
  :pattern (($FVF.lookup_next (as sm@21@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first $t@4@01)) r))
  :qid |qp.fvfValDef4|)))
(assert ($$%precondition ($SortWrappers.$FVF<next>To$Snap (as sm@21@01  $FVF<next>)) g@2@01))
(push) ; 3
(assert (not (Set_equal ($$ ($SortWrappers.$FVF<next>To$Snap (as sm@17@01  $FVF<next>)) g@2@01) ($$ ($SortWrappers.$FVF<next>To$Snap (as sm@21@01  $FVF<next>)) g@2@01))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(assert (Set_equal ($$ ($SortWrappers.$FVF<next>To$Snap (as sm@17@01  $FVF<next>)) g@2@01) ($$ ($SortWrappers.$FVF<next>To$Snap (as sm@21@01  $FVF<next>)) g@2@01)))
; [exec]
; assert $$(g) == old($$(g))
; [eval] $$(g) == old($$(g))
; [eval] $$(g)
(push) ; 3
(declare-const n@22@01 $Ref)
(push) ; 4
; [eval] (n in refs)
(assert (Set_in n@22@01 g@2@01))
(pop) ; 4
(declare-fun inv@23@01 ($Ref) $Ref)
(declare-fun img@24@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
; Check receiver injectivity
(push) ; 4
(assert (not (forall ((n1@22@01 $Ref) (n2@22@01 $Ref)) (!
  (=>
    (and (Set_in n1@22@01 g@2@01) (Set_in n2@22@01 g@2@01) (= n1@22@01 n2@22@01))
    (= n1@22@01 n2@22@01))
  
  :qid |next-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((n@22@01 $Ref)) (!
  (=>
    (Set_in n@22@01 g@2@01)
    (and (= (inv@23@01 n@22@01) n@22@01) (img@24@01 n@22@01)))
  :pattern ((Set_in n@22@01 g@2@01))
  :pattern ((inv@23@01 n@22@01))
  :pattern ((img@24@01 n@22@01))
  :qid |next-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=> (and (img@24@01 r) (Set_in (inv@23@01 r) g@2@01)) (= (inv@23@01 r) r))
  :pattern ((inv@23@01 r))
  :qid |next-fctOfInv|)))
(push) ; 4
(assert (not (forall ((r $Ref)) (!
  (=>
    (and (Set_in (inv@23@01 r) g@2@01) (img@24@01 r) (= r (inv@23@01 r)))
    (>
      (ite (and (img@7@01 r) (Set_in (inv@6@01 r) g@2@01)) $Perm.Write $Perm.No)
      $Perm.No))
  
  :qid |quant-u-23865|))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(declare-const sm@25@01 $FVF<next>)
; Definitional axioms for snapshot map domain
(assert (forall ((r $Ref)) (!
  (and
    (=>
      (Set_in r ($FVF.domain_next (as sm@25@01  $FVF<next>)))
      (and (Set_in (inv@23@01 r) g@2@01) (img@24@01 r)))
    (=>
      (and (Set_in (inv@23@01 r) g@2@01) (img@24@01 r))
      (Set_in r ($FVF.domain_next (as sm@25@01  $FVF<next>)))))
  :pattern ((Set_in r ($FVF.domain_next (as sm@25@01  $FVF<next>))))
  :qid |qp.fvfDomDef7|)))
; Definitional axioms for snapshot map values
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and (Set_in (inv@23@01 r) g@2@01) (img@24@01 r))
      (and (img@7@01 r) (Set_in (inv@6@01 r) g@2@01)))
    (=
      ($FVF.lookup_next (as sm@25@01  $FVF<next>) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first $t@4@01)) r)))
  :pattern (($FVF.lookup_next (as sm@25@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first $t@4@01)) r))
  :qid |qp.fvfValDef6|)))
(assert ($$%precondition ($SortWrappers.$FVF<next>To$Snap (as sm@25@01  $FVF<next>)) g@2@01))
(pop) ; 3
; Joined path conditions
(assert (forall ((n@22@01 $Ref)) (!
  (=>
    (Set_in n@22@01 g@2@01)
    (and (= (inv@23@01 n@22@01) n@22@01) (img@24@01 n@22@01)))
  :pattern ((Set_in n@22@01 g@2@01))
  :pattern ((inv@23@01 n@22@01))
  :pattern ((img@24@01 n@22@01))
  :qid |next-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=> (and (img@24@01 r) (Set_in (inv@23@01 r) g@2@01)) (= (inv@23@01 r) r))
  :pattern ((inv@23@01 r))
  :qid |next-fctOfInv|)))
(assert (forall ((r $Ref)) (!
  (and
    (=>
      (Set_in r ($FVF.domain_next (as sm@25@01  $FVF<next>)))
      (and (Set_in (inv@23@01 r) g@2@01) (img@24@01 r)))
    (=>
      (and (Set_in (inv@23@01 r) g@2@01) (img@24@01 r))
      (Set_in r ($FVF.domain_next (as sm@25@01  $FVF<next>)))))
  :pattern ((Set_in r ($FVF.domain_next (as sm@25@01  $FVF<next>))))
  :qid |qp.fvfDomDef7|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and (Set_in (inv@23@01 r) g@2@01) (img@24@01 r))
      (and (img@7@01 r) (Set_in (inv@6@01 r) g@2@01)))
    (=
      ($FVF.lookup_next (as sm@25@01  $FVF<next>) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first $t@4@01)) r)))
  :pattern (($FVF.lookup_next (as sm@25@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first $t@4@01)) r))
  :qid |qp.fvfValDef6|)))
(assert ($$%precondition ($SortWrappers.$FVF<next>To$Snap (as sm@25@01  $FVF<next>)) g@2@01))
; [eval] old($$(g))
; [eval] $$(g)
(push) ; 3
(declare-const n@26@01 $Ref)
(push) ; 4
; [eval] (n in refs)
(assert (Set_in n@26@01 g@2@01))
(pop) ; 4
(declare-fun inv@27@01 ($Ref) $Ref)
(declare-fun img@28@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
; Check receiver injectivity
(push) ; 4
(assert (not (forall ((n1@26@01 $Ref) (n2@26@01 $Ref)) (!
  (=>
    (and (Set_in n1@26@01 g@2@01) (Set_in n2@26@01 g@2@01) (= n1@26@01 n2@26@01))
    (= n1@26@01 n2@26@01))
  
  :qid |next-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((n@26@01 $Ref)) (!
  (=>
    (Set_in n@26@01 g@2@01)
    (and (= (inv@27@01 n@26@01) n@26@01) (img@28@01 n@26@01)))
  :pattern ((Set_in n@26@01 g@2@01))
  :pattern ((inv@27@01 n@26@01))
  :pattern ((img@28@01 n@26@01))
  :qid |next-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=> (and (img@28@01 r) (Set_in (inv@27@01 r) g@2@01)) (= (inv@27@01 r) r))
  :pattern ((inv@27@01 r))
  :qid |next-fctOfInv|)))
(push) ; 4
(assert (not (forall ((r $Ref)) (!
  (=>
    (and (Set_in (inv@27@01 r) g@2@01) (img@28@01 r) (= r (inv@27@01 r)))
    (>
      (ite (and (img@7@01 r) (Set_in (inv@6@01 r) g@2@01)) $Perm.Write $Perm.No)
      $Perm.No))
  
  :qid |quant-u-23867|))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(declare-const sm@29@01 $FVF<next>)
; Definitional axioms for snapshot map domain
(assert (forall ((r $Ref)) (!
  (and
    (=>
      (Set_in r ($FVF.domain_next (as sm@29@01  $FVF<next>)))
      (and (Set_in (inv@27@01 r) g@2@01) (img@28@01 r)))
    (=>
      (and (Set_in (inv@27@01 r) g@2@01) (img@28@01 r))
      (Set_in r ($FVF.domain_next (as sm@29@01  $FVF<next>)))))
  :pattern ((Set_in r ($FVF.domain_next (as sm@29@01  $FVF<next>))))
  :qid |qp.fvfDomDef9|)))
; Definitional axioms for snapshot map values
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and (Set_in (inv@27@01 r) g@2@01) (img@28@01 r))
      (and (img@7@01 r) (Set_in (inv@6@01 r) g@2@01)))
    (=
      ($FVF.lookup_next (as sm@29@01  $FVF<next>) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first $t@4@01)) r)))
  :pattern (($FVF.lookup_next (as sm@29@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first $t@4@01)) r))
  :qid |qp.fvfValDef8|)))
(assert ($$%precondition ($SortWrappers.$FVF<next>To$Snap (as sm@29@01  $FVF<next>)) g@2@01))
(pop) ; 3
; Joined path conditions
(assert (forall ((n@26@01 $Ref)) (!
  (=>
    (Set_in n@26@01 g@2@01)
    (and (= (inv@27@01 n@26@01) n@26@01) (img@28@01 n@26@01)))
  :pattern ((Set_in n@26@01 g@2@01))
  :pattern ((inv@27@01 n@26@01))
  :pattern ((img@28@01 n@26@01))
  :qid |next-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=> (and (img@28@01 r) (Set_in (inv@27@01 r) g@2@01)) (= (inv@27@01 r) r))
  :pattern ((inv@27@01 r))
  :qid |next-fctOfInv|)))
(assert (forall ((r $Ref)) (!
  (and
    (=>
      (Set_in r ($FVF.domain_next (as sm@29@01  $FVF<next>)))
      (and (Set_in (inv@27@01 r) g@2@01) (img@28@01 r)))
    (=>
      (and (Set_in (inv@27@01 r) g@2@01) (img@28@01 r))
      (Set_in r ($FVF.domain_next (as sm@29@01  $FVF<next>)))))
  :pattern ((Set_in r ($FVF.domain_next (as sm@29@01  $FVF<next>))))
  :qid |qp.fvfDomDef9|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and (Set_in (inv@27@01 r) g@2@01) (img@28@01 r))
      (and (img@7@01 r) (Set_in (inv@6@01 r) g@2@01)))
    (=
      ($FVF.lookup_next (as sm@29@01  $FVF<next>) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first $t@4@01)) r)))
  :pattern (($FVF.lookup_next (as sm@29@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first $t@4@01)) r))
  :qid |qp.fvfValDef8|)))
(assert ($$%precondition ($SortWrappers.$FVF<next>To$Snap (as sm@29@01  $FVF<next>)) g@2@01))
(push) ; 3
(assert (not (Set_equal ($$ ($SortWrappers.$FVF<next>To$Snap (as sm@25@01  $FVF<next>)) g@2@01) ($$ ($SortWrappers.$FVF<next>To$Snap (as sm@29@01  $FVF<next>)) g@2@01))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(assert (Set_equal ($$ ($SortWrappers.$FVF<next>To$Snap (as sm@25@01  $FVF<next>)) g@2@01) ($$ ($SortWrappers.$FVF<next>To$Snap (as sm@29@01  $FVF<next>)) g@2@01)))
; [exec]
; old_g := $$(g)
; [eval] $$(g)
(push) ; 3
(declare-const n@30@01 $Ref)
(push) ; 4
; [eval] (n in refs)
(assert (Set_in n@30@01 g@2@01))
(pop) ; 4
(declare-fun inv@31@01 ($Ref) $Ref)
(declare-fun img@32@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
; Check receiver injectivity
(push) ; 4
(assert (not (forall ((n1@30@01 $Ref) (n2@30@01 $Ref)) (!
  (=>
    (and (Set_in n1@30@01 g@2@01) (Set_in n2@30@01 g@2@01) (= n1@30@01 n2@30@01))
    (= n1@30@01 n2@30@01))
  
  :qid |next-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((n@30@01 $Ref)) (!
  (=>
    (Set_in n@30@01 g@2@01)
    (and (= (inv@31@01 n@30@01) n@30@01) (img@32@01 n@30@01)))
  :pattern ((Set_in n@30@01 g@2@01))
  :pattern ((inv@31@01 n@30@01))
  :pattern ((img@32@01 n@30@01))
  :qid |next-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=> (and (img@32@01 r) (Set_in (inv@31@01 r) g@2@01)) (= (inv@31@01 r) r))
  :pattern ((inv@31@01 r))
  :qid |next-fctOfInv|)))
(push) ; 4
(assert (not (forall ((r $Ref)) (!
  (=>
    (and (Set_in (inv@31@01 r) g@2@01) (img@32@01 r) (= r (inv@31@01 r)))
    (>
      (ite (and (img@7@01 r) (Set_in (inv@6@01 r) g@2@01)) $Perm.Write $Perm.No)
      $Perm.No))
  
  :qid |quant-u-23869|))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(declare-const sm@33@01 $FVF<next>)
; Definitional axioms for snapshot map domain
(assert (forall ((r $Ref)) (!
  (and
    (=>
      (Set_in r ($FVF.domain_next (as sm@33@01  $FVF<next>)))
      (and (Set_in (inv@31@01 r) g@2@01) (img@32@01 r)))
    (=>
      (and (Set_in (inv@31@01 r) g@2@01) (img@32@01 r))
      (Set_in r ($FVF.domain_next (as sm@33@01  $FVF<next>)))))
  :pattern ((Set_in r ($FVF.domain_next (as sm@33@01  $FVF<next>))))
  :qid |qp.fvfDomDef11|)))
; Definitional axioms for snapshot map values
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and (Set_in (inv@31@01 r) g@2@01) (img@32@01 r))
      (and (img@7@01 r) (Set_in (inv@6@01 r) g@2@01)))
    (=
      ($FVF.lookup_next (as sm@33@01  $FVF<next>) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first $t@4@01)) r)))
  :pattern (($FVF.lookup_next (as sm@33@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first $t@4@01)) r))
  :qid |qp.fvfValDef10|)))
(assert ($$%precondition ($SortWrappers.$FVF<next>To$Snap (as sm@33@01  $FVF<next>)) g@2@01))
(pop) ; 3
; Joined path conditions
(assert (forall ((n@30@01 $Ref)) (!
  (=>
    (Set_in n@30@01 g@2@01)
    (and (= (inv@31@01 n@30@01) n@30@01) (img@32@01 n@30@01)))
  :pattern ((Set_in n@30@01 g@2@01))
  :pattern ((inv@31@01 n@30@01))
  :pattern ((img@32@01 n@30@01))
  :qid |next-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=> (and (img@32@01 r) (Set_in (inv@31@01 r) g@2@01)) (= (inv@31@01 r) r))
  :pattern ((inv@31@01 r))
  :qid |next-fctOfInv|)))
(assert (forall ((r $Ref)) (!
  (and
    (=>
      (Set_in r ($FVF.domain_next (as sm@33@01  $FVF<next>)))
      (and (Set_in (inv@31@01 r) g@2@01) (img@32@01 r)))
    (=>
      (and (Set_in (inv@31@01 r) g@2@01) (img@32@01 r))
      (Set_in r ($FVF.domain_next (as sm@33@01  $FVF<next>)))))
  :pattern ((Set_in r ($FVF.domain_next (as sm@33@01  $FVF<next>))))
  :qid |qp.fvfDomDef11|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and (Set_in (inv@31@01 r) g@2@01) (img@32@01 r))
      (and (img@7@01 r) (Set_in (inv@6@01 r) g@2@01)))
    (=
      ($FVF.lookup_next (as sm@33@01  $FVF<next>) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first $t@4@01)) r)))
  :pattern (($FVF.lookup_next (as sm@33@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first $t@4@01)) r))
  :qid |qp.fvfValDef10|)))
(assert ($$%precondition ($SortWrappers.$FVF<next>To$Snap (as sm@33@01  $FVF<next>)) g@2@01))
(declare-const old_g@34@01 Set<Int>)
(assert (=
  old_g@34@01
  ($$ ($SortWrappers.$FVF<next>To$Snap (as sm@33@01  $FVF<next>)) g@2@01)))
; [exec]
; assert old_g == old[l0]($$(g))
; [eval] old_g == old[l0]($$(g))
; [eval] old[l0]($$(g))
; [eval] $$(g)
(push) ; 3
(declare-const n@35@01 $Ref)
(push) ; 4
; [eval] (n in refs)
(assert (Set_in n@35@01 g@2@01))
(pop) ; 4
(declare-fun inv@36@01 ($Ref) $Ref)
(declare-fun img@37@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
; Check receiver injectivity
(push) ; 4
(assert (not (forall ((n1@35@01 $Ref) (n2@35@01 $Ref)) (!
  (=>
    (and (Set_in n1@35@01 g@2@01) (Set_in n2@35@01 g@2@01) (= n1@35@01 n2@35@01))
    (= n1@35@01 n2@35@01))
  
  :qid |next-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((n@35@01 $Ref)) (!
  (=>
    (Set_in n@35@01 g@2@01)
    (and (= (inv@36@01 n@35@01) n@35@01) (img@37@01 n@35@01)))
  :pattern ((Set_in n@35@01 g@2@01))
  :pattern ((inv@36@01 n@35@01))
  :pattern ((img@37@01 n@35@01))
  :qid |next-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=> (and (img@37@01 r) (Set_in (inv@36@01 r) g@2@01)) (= (inv@36@01 r) r))
  :pattern ((inv@36@01 r))
  :qid |next-fctOfInv|)))
(push) ; 4
(assert (not (forall ((r $Ref)) (!
  (=>
    (and (Set_in (inv@36@01 r) g@2@01) (img@37@01 r) (= r (inv@36@01 r)))
    (>
      (ite (and (img@7@01 r) (Set_in (inv@6@01 r) g@2@01)) $Perm.Write $Perm.No)
      $Perm.No))
  
  :qid |quant-u-23871|))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(declare-const sm@38@01 $FVF<next>)
; Definitional axioms for snapshot map domain
(assert (forall ((r $Ref)) (!
  (and
    (=>
      (Set_in r ($FVF.domain_next (as sm@38@01  $FVF<next>)))
      (and (Set_in (inv@36@01 r) g@2@01) (img@37@01 r)))
    (=>
      (and (Set_in (inv@36@01 r) g@2@01) (img@37@01 r))
      (Set_in r ($FVF.domain_next (as sm@38@01  $FVF<next>)))))
  :pattern ((Set_in r ($FVF.domain_next (as sm@38@01  $FVF<next>))))
  :qid |qp.fvfDomDef13|)))
; Definitional axioms for snapshot map values
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and (Set_in (inv@36@01 r) g@2@01) (img@37@01 r))
      (and (img@7@01 r) (Set_in (inv@6@01 r) g@2@01)))
    (=
      ($FVF.lookup_next (as sm@38@01  $FVF<next>) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first $t@4@01)) r)))
  :pattern (($FVF.lookup_next (as sm@38@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first $t@4@01)) r))
  :qid |qp.fvfValDef12|)))
(assert ($$%precondition ($SortWrappers.$FVF<next>To$Snap (as sm@38@01  $FVF<next>)) g@2@01))
(pop) ; 3
; Joined path conditions
(assert (forall ((n@35@01 $Ref)) (!
  (=>
    (Set_in n@35@01 g@2@01)
    (and (= (inv@36@01 n@35@01) n@35@01) (img@37@01 n@35@01)))
  :pattern ((Set_in n@35@01 g@2@01))
  :pattern ((inv@36@01 n@35@01))
  :pattern ((img@37@01 n@35@01))
  :qid |next-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=> (and (img@37@01 r) (Set_in (inv@36@01 r) g@2@01)) (= (inv@36@01 r) r))
  :pattern ((inv@36@01 r))
  :qid |next-fctOfInv|)))
(assert (forall ((r $Ref)) (!
  (and
    (=>
      (Set_in r ($FVF.domain_next (as sm@38@01  $FVF<next>)))
      (and (Set_in (inv@36@01 r) g@2@01) (img@37@01 r)))
    (=>
      (and (Set_in (inv@36@01 r) g@2@01) (img@37@01 r))
      (Set_in r ($FVF.domain_next (as sm@38@01  $FVF<next>)))))
  :pattern ((Set_in r ($FVF.domain_next (as sm@38@01  $FVF<next>))))
  :qid |qp.fvfDomDef13|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and (Set_in (inv@36@01 r) g@2@01) (img@37@01 r))
      (and (img@7@01 r) (Set_in (inv@6@01 r) g@2@01)))
    (=
      ($FVF.lookup_next (as sm@38@01  $FVF<next>) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first $t@4@01)) r)))
  :pattern (($FVF.lookup_next (as sm@38@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first $t@4@01)) r))
  :qid |qp.fvfValDef12|)))
(assert ($$%precondition ($SortWrappers.$FVF<next>To$Snap (as sm@38@01  $FVF<next>)) g@2@01))
(push) ; 3
(assert (not (Set_equal old_g@34@01 ($$ ($SortWrappers.$FVF<next>To$Snap (as sm@38@01  $FVF<next>)) g@2@01))))
(check-sat)
; unsat
(pop) ; 3
; 0.01s
; (get-info :all-statistics)
(assert (Set_equal old_g@34@01 ($$ ($SortWrappers.$FVF<next>To$Snap (as sm@38@01  $FVF<next>)) g@2@01)))
; [exec]
; assert old_g == old($$(g))
; [eval] old_g == old($$(g))
; [eval] old($$(g))
; [eval] $$(g)
(push) ; 3
(declare-const n@39@01 $Ref)
(push) ; 4
; [eval] (n in refs)
(assert (Set_in n@39@01 g@2@01))
(pop) ; 4
(declare-fun inv@40@01 ($Ref) $Ref)
(declare-fun img@41@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
; Check receiver injectivity
(push) ; 4
(assert (not (forall ((n1@39@01 $Ref) (n2@39@01 $Ref)) (!
  (=>
    (and (Set_in n1@39@01 g@2@01) (Set_in n2@39@01 g@2@01) (= n1@39@01 n2@39@01))
    (= n1@39@01 n2@39@01))
  
  :qid |next-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((n@39@01 $Ref)) (!
  (=>
    (Set_in n@39@01 g@2@01)
    (and (= (inv@40@01 n@39@01) n@39@01) (img@41@01 n@39@01)))
  :pattern ((Set_in n@39@01 g@2@01))
  :pattern ((inv@40@01 n@39@01))
  :pattern ((img@41@01 n@39@01))
  :qid |next-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=> (and (img@41@01 r) (Set_in (inv@40@01 r) g@2@01)) (= (inv@40@01 r) r))
  :pattern ((inv@40@01 r))
  :qid |next-fctOfInv|)))
(push) ; 4
(assert (not (forall ((r $Ref)) (!
  (=>
    (and (Set_in (inv@40@01 r) g@2@01) (img@41@01 r) (= r (inv@40@01 r)))
    (>
      (ite (and (img@7@01 r) (Set_in (inv@6@01 r) g@2@01)) $Perm.Write $Perm.No)
      $Perm.No))
  
  :qid |quant-u-23873|))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(declare-const sm@42@01 $FVF<next>)
; Definitional axioms for snapshot map domain
(assert (forall ((r $Ref)) (!
  (and
    (=>
      (Set_in r ($FVF.domain_next (as sm@42@01  $FVF<next>)))
      (and (Set_in (inv@40@01 r) g@2@01) (img@41@01 r)))
    (=>
      (and (Set_in (inv@40@01 r) g@2@01) (img@41@01 r))
      (Set_in r ($FVF.domain_next (as sm@42@01  $FVF<next>)))))
  :pattern ((Set_in r ($FVF.domain_next (as sm@42@01  $FVF<next>))))
  :qid |qp.fvfDomDef15|)))
; Definitional axioms for snapshot map values
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and (Set_in (inv@40@01 r) g@2@01) (img@41@01 r))
      (and (img@7@01 r) (Set_in (inv@6@01 r) g@2@01)))
    (=
      ($FVF.lookup_next (as sm@42@01  $FVF<next>) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first $t@4@01)) r)))
  :pattern (($FVF.lookup_next (as sm@42@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first $t@4@01)) r))
  :qid |qp.fvfValDef14|)))
(assert ($$%precondition ($SortWrappers.$FVF<next>To$Snap (as sm@42@01  $FVF<next>)) g@2@01))
(pop) ; 3
; Joined path conditions
(assert (forall ((n@39@01 $Ref)) (!
  (=>
    (Set_in n@39@01 g@2@01)
    (and (= (inv@40@01 n@39@01) n@39@01) (img@41@01 n@39@01)))
  :pattern ((Set_in n@39@01 g@2@01))
  :pattern ((inv@40@01 n@39@01))
  :pattern ((img@41@01 n@39@01))
  :qid |next-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=> (and (img@41@01 r) (Set_in (inv@40@01 r) g@2@01)) (= (inv@40@01 r) r))
  :pattern ((inv@40@01 r))
  :qid |next-fctOfInv|)))
(assert (forall ((r $Ref)) (!
  (and
    (=>
      (Set_in r ($FVF.domain_next (as sm@42@01  $FVF<next>)))
      (and (Set_in (inv@40@01 r) g@2@01) (img@41@01 r)))
    (=>
      (and (Set_in (inv@40@01 r) g@2@01) (img@41@01 r))
      (Set_in r ($FVF.domain_next (as sm@42@01  $FVF<next>)))))
  :pattern ((Set_in r ($FVF.domain_next (as sm@42@01  $FVF<next>))))
  :qid |qp.fvfDomDef15|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and (Set_in (inv@40@01 r) g@2@01) (img@41@01 r))
      (and (img@7@01 r) (Set_in (inv@6@01 r) g@2@01)))
    (=
      ($FVF.lookup_next (as sm@42@01  $FVF<next>) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first $t@4@01)) r)))
  :pattern (($FVF.lookup_next (as sm@42@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first $t@4@01)) r))
  :qid |qp.fvfValDef14|)))
(assert ($$%precondition ($SortWrappers.$FVF<next>To$Snap (as sm@42@01  $FVF<next>)) g@2@01))
(push) ; 3
(assert (not (Set_equal old_g@34@01 ($$ ($SortWrappers.$FVF<next>To$Snap (as sm@42@01  $FVF<next>)) g@2@01))))
(check-sat)
; unsat
(pop) ; 3
; 0.01s
; (get-info :all-statistics)
(assert (Set_equal old_g@34@01 ($$ ($SortWrappers.$FVF<next>To$Snap (as sm@42@01  $FVF<next>)) g@2@01)))
; [exec]
; x.next := null
; Precomputing data for removing quantified permissions
(define-fun pTaken@43@01 ((r $Ref)) $Perm
  (ite
    (= r x@3@01)
    ($Perm.min
      (ite (and (img@7@01 r) (Set_in (inv@6@01 r) g@2@01)) $Perm.Write $Perm.No)
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
      (ite (and (img@7@01 r) (Set_in (inv@6@01 r) g@2@01)) $Perm.Write $Perm.No)
      (pTaken@43@01 r))
    $Perm.No)
  
  :qid |quant-u-23875|))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (forall ((r $Ref)) (!
  (= (pTaken@43@01 r) $Perm.No)
  
  :qid |quant-u-23876|))))
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
  (=> (= r x@3@01) (= (- $Perm.Write (pTaken@43@01 r)) $Perm.No))
  
  :qid |quant-u-23877|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Final check if taken enough permissions
; Done removing quantified permissions
(declare-const sm@44@01 $FVF<next>)
; Definitional axioms for singleton-FVF's value
(assert (= ($FVF.lookup_next (as sm@44@01  $FVF<next>) x@3@01) $Ref.null))
; [exec]
; assert old_g == old[l0]($$(g))
; [eval] old_g == old[l0]($$(g))
; [eval] old[l0]($$(g))
; [eval] $$(g)
(set-option :timeout 0)
(push) ; 3
(declare-const n@45@01 $Ref)
(push) ; 4
; [eval] (n in refs)
(assert (Set_in n@45@01 g@2@01))
(pop) ; 4
(declare-fun inv@46@01 ($Ref) $Ref)
(declare-fun img@47@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
; Check receiver injectivity
(push) ; 4
(assert (not (forall ((n1@45@01 $Ref) (n2@45@01 $Ref)) (!
  (=>
    (and (Set_in n1@45@01 g@2@01) (Set_in n2@45@01 g@2@01) (= n1@45@01 n2@45@01))
    (= n1@45@01 n2@45@01))
  
  :qid |next-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((n@45@01 $Ref)) (!
  (=>
    (Set_in n@45@01 g@2@01)
    (and (= (inv@46@01 n@45@01) n@45@01) (img@47@01 n@45@01)))
  :pattern ((Set_in n@45@01 g@2@01))
  :pattern ((inv@46@01 n@45@01))
  :pattern ((img@47@01 n@45@01))
  :qid |next-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=> (and (img@47@01 r) (Set_in (inv@46@01 r) g@2@01)) (= (inv@46@01 r) r))
  :pattern ((inv@46@01 r))
  :qid |next-fctOfInv|)))
(push) ; 4
(assert (not (forall ((r $Ref)) (!
  (=>
    (and (Set_in (inv@46@01 r) g@2@01) (img@47@01 r) (= r (inv@46@01 r)))
    (>
      (ite (and (img@7@01 r) (Set_in (inv@6@01 r) g@2@01)) $Perm.Write $Perm.No)
      $Perm.No))
  
  :qid |quant-u-23879|))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(declare-const sm@48@01 $FVF<next>)
; Definitional axioms for snapshot map domain
(assert (forall ((r $Ref)) (!
  (and
    (=>
      (Set_in r ($FVF.domain_next (as sm@48@01  $FVF<next>)))
      (and (Set_in (inv@46@01 r) g@2@01) (img@47@01 r)))
    (=>
      (and (Set_in (inv@46@01 r) g@2@01) (img@47@01 r))
      (Set_in r ($FVF.domain_next (as sm@48@01  $FVF<next>)))))
  :pattern ((Set_in r ($FVF.domain_next (as sm@48@01  $FVF<next>))))
  :qid |qp.fvfDomDef17|)))
; Definitional axioms for snapshot map values
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and (Set_in (inv@46@01 r) g@2@01) (img@47@01 r))
      (and (img@7@01 r) (Set_in (inv@6@01 r) g@2@01)))
    (=
      ($FVF.lookup_next (as sm@48@01  $FVF<next>) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first $t@4@01)) r)))
  :pattern (($FVF.lookup_next (as sm@48@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first $t@4@01)) r))
  :qid |qp.fvfValDef16|)))
(assert ($$%precondition ($SortWrappers.$FVF<next>To$Snap (as sm@48@01  $FVF<next>)) g@2@01))
(pop) ; 3
; Joined path conditions
(assert (forall ((n@45@01 $Ref)) (!
  (=>
    (Set_in n@45@01 g@2@01)
    (and (= (inv@46@01 n@45@01) n@45@01) (img@47@01 n@45@01)))
  :pattern ((Set_in n@45@01 g@2@01))
  :pattern ((inv@46@01 n@45@01))
  :pattern ((img@47@01 n@45@01))
  :qid |next-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=> (and (img@47@01 r) (Set_in (inv@46@01 r) g@2@01)) (= (inv@46@01 r) r))
  :pattern ((inv@46@01 r))
  :qid |next-fctOfInv|)))
(assert (forall ((r $Ref)) (!
  (and
    (=>
      (Set_in r ($FVF.domain_next (as sm@48@01  $FVF<next>)))
      (and (Set_in (inv@46@01 r) g@2@01) (img@47@01 r)))
    (=>
      (and (Set_in (inv@46@01 r) g@2@01) (img@47@01 r))
      (Set_in r ($FVF.domain_next (as sm@48@01  $FVF<next>)))))
  :pattern ((Set_in r ($FVF.domain_next (as sm@48@01  $FVF<next>))))
  :qid |qp.fvfDomDef17|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and (Set_in (inv@46@01 r) g@2@01) (img@47@01 r))
      (and (img@7@01 r) (Set_in (inv@6@01 r) g@2@01)))
    (=
      ($FVF.lookup_next (as sm@48@01  $FVF<next>) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first $t@4@01)) r)))
  :pattern (($FVF.lookup_next (as sm@48@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first $t@4@01)) r))
  :qid |qp.fvfValDef16|)))
(assert ($$%precondition ($SortWrappers.$FVF<next>To$Snap (as sm@48@01  $FVF<next>)) g@2@01))
(push) ; 3
(assert (not (Set_equal old_g@34@01 ($$ ($SortWrappers.$FVF<next>To$Snap (as sm@48@01  $FVF<next>)) g@2@01))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(assert (Set_equal old_g@34@01 ($$ ($SortWrappers.$FVF<next>To$Snap (as sm@48@01  $FVF<next>)) g@2@01)))
; [exec]
; assert old_g == old($$(g))
; [eval] old_g == old($$(g))
; [eval] old($$(g))
; [eval] $$(g)
(push) ; 3
(declare-const n@49@01 $Ref)
(push) ; 4
; [eval] (n in refs)
(assert (Set_in n@49@01 g@2@01))
(pop) ; 4
(declare-fun inv@50@01 ($Ref) $Ref)
(declare-fun img@51@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
; Check receiver injectivity
(push) ; 4
(assert (not (forall ((n1@49@01 $Ref) (n2@49@01 $Ref)) (!
  (=>
    (and (Set_in n1@49@01 g@2@01) (Set_in n2@49@01 g@2@01) (= n1@49@01 n2@49@01))
    (= n1@49@01 n2@49@01))
  
  :qid |next-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((n@49@01 $Ref)) (!
  (=>
    (Set_in n@49@01 g@2@01)
    (and (= (inv@50@01 n@49@01) n@49@01) (img@51@01 n@49@01)))
  :pattern ((Set_in n@49@01 g@2@01))
  :pattern ((inv@50@01 n@49@01))
  :pattern ((img@51@01 n@49@01))
  :qid |next-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=> (and (img@51@01 r) (Set_in (inv@50@01 r) g@2@01)) (= (inv@50@01 r) r))
  :pattern ((inv@50@01 r))
  :qid |next-fctOfInv|)))
(push) ; 4
(assert (not (forall ((r $Ref)) (!
  (=>
    (and (Set_in (inv@50@01 r) g@2@01) (img@51@01 r) (= r (inv@50@01 r)))
    (>
      (ite (and (img@7@01 r) (Set_in (inv@6@01 r) g@2@01)) $Perm.Write $Perm.No)
      $Perm.No))
  
  :qid |quant-u-23881|))))
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
      (and (Set_in (inv@50@01 r) g@2@01) (img@51@01 r)))
    (=>
      (and (Set_in (inv@50@01 r) g@2@01) (img@51@01 r))
      (Set_in r ($FVF.domain_next (as sm@52@01  $FVF<next>)))))
  :pattern ((Set_in r ($FVF.domain_next (as sm@52@01  $FVF<next>))))
  :qid |qp.fvfDomDef19|)))
; Definitional axioms for snapshot map values
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and (Set_in (inv@50@01 r) g@2@01) (img@51@01 r))
      (and (img@7@01 r) (Set_in (inv@6@01 r) g@2@01)))
    (=
      ($FVF.lookup_next (as sm@52@01  $FVF<next>) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first $t@4@01)) r)))
  :pattern (($FVF.lookup_next (as sm@52@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first $t@4@01)) r))
  :qid |qp.fvfValDef18|)))
(assert ($$%precondition ($SortWrappers.$FVF<next>To$Snap (as sm@52@01  $FVF<next>)) g@2@01))
(pop) ; 3
; Joined path conditions
(assert (forall ((n@49@01 $Ref)) (!
  (=>
    (Set_in n@49@01 g@2@01)
    (and (= (inv@50@01 n@49@01) n@49@01) (img@51@01 n@49@01)))
  :pattern ((Set_in n@49@01 g@2@01))
  :pattern ((inv@50@01 n@49@01))
  :pattern ((img@51@01 n@49@01))
  :qid |next-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=> (and (img@51@01 r) (Set_in (inv@50@01 r) g@2@01)) (= (inv@50@01 r) r))
  :pattern ((inv@50@01 r))
  :qid |next-fctOfInv|)))
(assert (forall ((r $Ref)) (!
  (and
    (=>
      (Set_in r ($FVF.domain_next (as sm@52@01  $FVF<next>)))
      (and (Set_in (inv@50@01 r) g@2@01) (img@51@01 r)))
    (=>
      (and (Set_in (inv@50@01 r) g@2@01) (img@51@01 r))
      (Set_in r ($FVF.domain_next (as sm@52@01  $FVF<next>)))))
  :pattern ((Set_in r ($FVF.domain_next (as sm@52@01  $FVF<next>))))
  :qid |qp.fvfDomDef19|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and (Set_in (inv@50@01 r) g@2@01) (img@51@01 r))
      (and (img@7@01 r) (Set_in (inv@6@01 r) g@2@01)))
    (=
      ($FVF.lookup_next (as sm@52@01  $FVF<next>) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first $t@4@01)) r)))
  :pattern (($FVF.lookup_next (as sm@52@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first $t@4@01)) r))
  :qid |qp.fvfValDef18|)))
(assert ($$%precondition ($SortWrappers.$FVF<next>To$Snap (as sm@52@01  $FVF<next>)) g@2@01))
(push) ; 3
(assert (not (Set_equal old_g@34@01 ($$ ($SortWrappers.$FVF<next>To$Snap (as sm@52@01  $FVF<next>)) g@2@01))))
(check-sat)
; unsat
(pop) ; 3
; 0.01s
; (get-info :all-statistics)
(assert (Set_equal old_g@34@01 ($$ ($SortWrappers.$FVF<next>To$Snap (as sm@52@01  $FVF<next>)) g@2@01)))
(pop) ; 2
(pop) ; 1