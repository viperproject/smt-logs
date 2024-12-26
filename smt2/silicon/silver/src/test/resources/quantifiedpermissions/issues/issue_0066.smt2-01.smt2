(get-info :version)
; (:version "4.12.1")
; Started: 2024-12-26 19:32:36
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
(declare-sort $FVF<g> 0)
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
(declare-fun $SortWrappers.$FVF<g>To$Snap ($FVF<g>) $Snap)
(declare-fun $SortWrappers.$SnapTo$FVF<g> ($Snap) $FVF<g>)
(assert (forall ((x $FVF<g>)) (!
    (= x ($SortWrappers.$SnapTo$FVF<g>($SortWrappers.$FVF<g>To$Snap x)))
    :pattern (($SortWrappers.$FVF<g>To$Snap x))
    :qid |$Snap.$SnapTo$FVF<g>To$Snap|
    )))
(assert (forall ((x $Snap)) (!
    (= x ($SortWrappers.$FVF<g>To$Snap($SortWrappers.$SnapTo$FVF<g> x)))
    :pattern (($SortWrappers.$SnapTo$FVF<g> x))
    :qid |$Snap.$FVF<g>To$SnapTo$FVF<g>|
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
; /field_value_functions_declarations.smt2 [f: Ref]
(declare-fun $FVF.domain_f ($FVF<f>) Set<$Ref>)
(declare-fun $FVF.lookup_f ($FVF<f> $Ref) $Ref)
(declare-fun $FVF.after_f ($FVF<f> $FVF<f>) Bool)
(declare-fun $FVF.loc_f ($Ref $Ref) Bool)
(declare-fun $FVF.perm_f ($FPM $Ref) $Perm)
(declare-const $fvfTOP_f $FVF<f>)
; /field_value_functions_declarations.smt2 [g: Int]
(declare-fun $FVF.domain_g ($FVF<g>) Set<$Ref>)
(declare-fun $FVF.lookup_g ($FVF<g> $Ref) Int)
(declare-fun $FVF.after_g ($FVF<g> $FVF<g>) Bool)
(declare-fun $FVF.loc_g (Int $Ref) Bool)
(declare-fun $FVF.perm_g ($FPM $Ref) $Perm)
(declare-const $fvfTOP_g $FVF<g>)
; Declaring symbols related to program functions (from program analysis)
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
; /field_value_functions_axioms.smt2 [f: Ref]
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
(assert (forall ((r $Ref) (f $Ref)) (!
    (= ($FVF.loc_f f r) true)
    :pattern (($FVF.loc_f f r)))))
; /field_value_functions_axioms.smt2 [g: Int]
(assert (forall ((vs $FVF<g>) (ws $FVF<g>)) (!
    (=>
      (and
        (Set_equal ($FVF.domain_g vs) ($FVF.domain_g ws))
        (forall ((x $Ref)) (!
          (=>
            (Set_in x ($FVF.domain_g vs))
            (= ($FVF.lookup_g vs x) ($FVF.lookup_g ws x)))
          :pattern (($FVF.lookup_g vs x) ($FVF.lookup_g ws x))
          :qid |qp.$FVF<g>-eq-inner|
          )))
      (= vs ws))
    :pattern (($SortWrappers.$FVF<g>To$Snap vs)
              ($SortWrappers.$FVF<g>To$Snap ws)
              )
    :qid |qp.$FVF<g>-eq-outer|
    )))
(assert (forall ((r $Ref) (pm $FPM)) (!
    ($Perm.isValidVar ($FVF.perm_g pm r))
    :pattern (($FVF.perm_g pm r)))))
(assert (forall ((r $Ref) (f Int)) (!
    (= ($FVF.loc_g f r) true)
    :pattern (($FVF.loc_g f r)))))
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
; ---------- test03 ----------
(declare-const S@0@01 Set<$Ref>)
(declare-const S@1@01 Set<$Ref>)
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
; inhale (forall s: Ref ::(s in S) ==> acc(s.f, write))
(declare-const s@2@01 $Ref)
(push) ; 3
; [eval] (s in S)
(assert (Set_in s@2@01 S@1@01))
(pop) ; 3
(declare-const $t@3@01 $FVF<f>)
(declare-fun inv@4@01 ($Ref) $Ref)
(declare-fun img@5@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
; Check receiver injectivity
(push) ; 3
(assert (not (forall ((s1@2@01 $Ref) (s2@2@01 $Ref)) (!
  (=>
    (and (Set_in s1@2@01 S@1@01) (Set_in s2@2@01 S@1@01) (= s1@2@01 s2@2@01))
    (= s1@2@01 s2@2@01))
  
  :qid |f-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((s@2@01 $Ref)) (!
  (=>
    (Set_in s@2@01 S@1@01)
    (and (= (inv@4@01 s@2@01) s@2@01) (img@5@01 s@2@01)))
  :pattern ((Set_in s@2@01 S@1@01))
  :pattern ((inv@4@01 s@2@01))
  :pattern ((img@5@01 s@2@01))
  :qid |quant-u-13163|)))
(assert (forall ((r $Ref)) (!
  (=> (and (img@5@01 r) (Set_in (inv@4@01 r) S@1@01)) (= (inv@4@01 r) r))
  :pattern ((inv@4@01 r))
  :qid |f-fctOfInv|)))
; Permissions are non-negative
; Field permissions are at most one
; Permission implies non-null receiver
(assert (forall ((s@2@01 $Ref)) (!
  (=> (Set_in s@2@01 S@1@01) (not (= s@2@01 $Ref.null)))
  :pattern ((Set_in s@2@01 S@1@01))
  :pattern ((inv@4@01 s@2@01))
  :pattern ((img@5@01 s@2@01))
  :qid |f-permImpliesNonNull|)))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale (forall s1: Ref, s2: Ref ::
;     { (s1 in S), (s2 in S) }
;     (s1 in S) && ((s2 in S) && s1 != s2) ==> s1.f != s2.f)
(declare-const $t@6@01 $Snap)
(assert (= $t@6@01 $Snap.unit))
; [eval] (forall s1: Ref, s2: Ref :: { (s1 in S), (s2 in S) } (s1 in S) && ((s2 in S) && s1 != s2) ==> s1.f != s2.f)
(declare-const s1@7@01 $Ref)
(declare-const s2@8@01 $Ref)
(set-option :timeout 0)
(push) ; 3
; [eval] (s1 in S) && ((s2 in S) && s1 != s2) ==> s1.f != s2.f
; [eval] (s1 in S) && ((s2 in S) && s1 != s2)
; [eval] (s1 in S)
(push) ; 4
; [then-branch: 0 | !(s1@7@01 in S@1@01) | live]
; [else-branch: 0 | s1@7@01 in S@1@01 | live]
(push) ; 5
; [then-branch: 0 | !(s1@7@01 in S@1@01)]
(assert (not (Set_in s1@7@01 S@1@01)))
(pop) ; 5
(push) ; 5
; [else-branch: 0 | s1@7@01 in S@1@01]
(assert (Set_in s1@7@01 S@1@01))
; [eval] (s2 in S)
(push) ; 6
; [then-branch: 1 | !(s2@8@01 in S@1@01) | live]
; [else-branch: 1 | s2@8@01 in S@1@01 | live]
(push) ; 7
; [then-branch: 1 | !(s2@8@01 in S@1@01)]
(assert (not (Set_in s2@8@01 S@1@01)))
(pop) ; 7
(push) ; 7
; [else-branch: 1 | s2@8@01 in S@1@01]
(assert (Set_in s2@8@01 S@1@01))
; [eval] s1 != s2
(pop) ; 7
(pop) ; 6
; Joined path conditions
; Joined path conditions
(assert (or (Set_in s2@8@01 S@1@01) (not (Set_in s2@8@01 S@1@01))))
(pop) ; 5
(pop) ; 4
; Joined path conditions
; Joined path conditions
(assert (=>
  (Set_in s1@7@01 S@1@01)
  (and
    (Set_in s1@7@01 S@1@01)
    (or (Set_in s2@8@01 S@1@01) (not (Set_in s2@8@01 S@1@01))))))
(assert (or (Set_in s1@7@01 S@1@01) (not (Set_in s1@7@01 S@1@01))))
(push) ; 4
; [then-branch: 2 | s1@7@01 in S@1@01 && s2@8@01 in S@1@01 && s1@7@01 != s2@8@01 | live]
; [else-branch: 2 | !(s1@7@01 in S@1@01 && s2@8@01 in S@1@01 && s1@7@01 != s2@8@01) | live]
(push) ; 5
; [then-branch: 2 | s1@7@01 in S@1@01 && s2@8@01 in S@1@01 && s1@7@01 != s2@8@01]
(assert (and
  (Set_in s1@7@01 S@1@01)
  (and (Set_in s2@8@01 S@1@01) (not (= s1@7@01 s2@8@01)))))
; [eval] s1.f != s2.f
(push) ; 6
(assert (not (and (img@5@01 s1@7@01) (Set_in (inv@4@01 s1@7@01) S@1@01))))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(push) ; 6
(assert (not (and (img@5@01 s2@8@01) (Set_in (inv@4@01 s2@8@01) S@1@01))))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(pop) ; 5
(push) ; 5
; [else-branch: 2 | !(s1@7@01 in S@1@01 && s2@8@01 in S@1@01 && s1@7@01 != s2@8@01)]
(assert (not
  (and
    (Set_in s1@7@01 S@1@01)
    (and (Set_in s2@8@01 S@1@01) (not (= s1@7@01 s2@8@01))))))
(pop) ; 5
(pop) ; 4
; Joined path conditions
(assert (=>
  (and
    (Set_in s1@7@01 S@1@01)
    (and (Set_in s2@8@01 S@1@01) (not (= s1@7@01 s2@8@01))))
  (and (Set_in s1@7@01 S@1@01) (Set_in s2@8@01 S@1@01) (not (= s1@7@01 s2@8@01)))))
; Joined path conditions
(assert (or
  (not
    (and
      (Set_in s1@7@01 S@1@01)
      (and (Set_in s2@8@01 S@1@01) (not (= s1@7@01 s2@8@01)))))
  (and
    (Set_in s1@7@01 S@1@01)
    (and (Set_in s2@8@01 S@1@01) (not (= s1@7@01 s2@8@01))))))
(pop) ; 3
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall ((s1@7@01 $Ref) (s2@8@01 $Ref)) (!
  (and
    (=>
      (Set_in s1@7@01 S@1@01)
      (and
        (Set_in s1@7@01 S@1@01)
        (or (Set_in s2@8@01 S@1@01) (not (Set_in s2@8@01 S@1@01)))))
    (or (Set_in s1@7@01 S@1@01) (not (Set_in s1@7@01 S@1@01)))
    (=>
      (and
        (Set_in s1@7@01 S@1@01)
        (and (Set_in s2@8@01 S@1@01) (not (= s1@7@01 s2@8@01))))
      (and
        (Set_in s1@7@01 S@1@01)
        (Set_in s2@8@01 S@1@01)
        (not (= s1@7@01 s2@8@01))))
    (or
      (not
        (and
          (Set_in s1@7@01 S@1@01)
          (and (Set_in s2@8@01 S@1@01) (not (= s1@7@01 s2@8@01)))))
      (and
        (Set_in s1@7@01 S@1@01)
        (and (Set_in s2@8@01 S@1@01) (not (= s1@7@01 s2@8@01))))))
  :pattern ((Set_in s1@7@01 S@1@01) (Set_in s2@8@01 S@1@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/issues/issue_0066.vpr@9@10@9@86-aux|)))
(assert (forall ((s1@7@01 $Ref) (s2@8@01 $Ref)) (!
  (=>
    (and
      (Set_in s1@7@01 S@1@01)
      (and (Set_in s2@8@01 S@1@01) (not (= s1@7@01 s2@8@01))))
    (not (= ($FVF.lookup_f $t@3@01 s1@7@01) ($FVF.lookup_f $t@3@01 s2@8@01))))
  :pattern ((Set_in s1@7@01 S@1@01) (Set_in s2@8@01 S@1@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/issues/issue_0066.vpr@9@10@9@86|)))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale (forall s: Ref ::(s in S) ==> acc(s.f.g, write))
(declare-const s@9@01 $Ref)
(set-option :timeout 0)
(push) ; 3
; [eval] (s in S)
(assert (Set_in s@9@01 S@1@01))
(push) ; 4
(assert (not (and (img@5@01 s@9@01) (Set_in (inv@4@01 s@9@01) S@1@01))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(pop) ; 3
(declare-const $t@10@01 $FVF<g>)
(declare-fun inv@11@01 ($Ref) $Ref)
(declare-fun img@12@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
; Check receiver injectivity
(push) ; 3
(assert (not (forall ((s1@9@01 $Ref) (s2@9@01 $Ref)) (!
  (=>
    (and
      (Set_in s1@9@01 S@1@01)
      (Set_in s2@9@01 S@1@01)
      (= ($FVF.lookup_f $t@3@01 s1@9@01) ($FVF.lookup_f $t@3@01 s2@9@01)))
    (= s1@9@01 s2@9@01))
  
  :qid |g-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((s@9@01 $Ref)) (!
  (=>
    (Set_in s@9@01 S@1@01)
    (and
      (= (inv@11@01 ($FVF.lookup_f $t@3@01 s@9@01)) s@9@01)
      (img@12@01 ($FVF.lookup_f $t@3@01 s@9@01))))
  :pattern (($FVF.lookup_f $t@3@01 s@9@01))
  :qid |quant-u-13165|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@12@01 r) (Set_in (inv@11@01 r) S@1@01))
    (= ($FVF.lookup_f $t@3@01 (inv@11@01 r)) r))
  :pattern ((inv@11@01 r))
  :qid |g-fctOfInv|)))
; Permissions are non-negative
; Field permissions are at most one
; Permission implies non-null receiver
(assert (forall ((s@9@01 $Ref)) (!
  (=> (Set_in s@9@01 S@1@01) (not (= ($FVF.lookup_f $t@3@01 s@9@01) $Ref.null)))
  :pattern (($FVF.lookup_f $t@3@01 s@9@01))
  :qid |g-permImpliesNonNull|)))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; exhale (forall s: Ref ::(s in S) ==> acc(s.f.g, write))
(declare-const s@13@01 $Ref)
(set-option :timeout 0)
(push) ; 3
; [eval] (s in S)
(assert (Set_in s@13@01 S@1@01))
(push) ; 4
(assert (not (and (img@5@01 s@13@01) (Set_in (inv@4@01 s@13@01) S@1@01))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(pop) ; 3
(declare-fun inv@14@01 ($Ref) $Ref)
(declare-fun img@15@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
; Check receiver injectivity
(push) ; 3
(assert (not (forall ((s1@13@01 $Ref) (s2@13@01 $Ref)) (!
  (=>
    (and
      (Set_in s1@13@01 S@1@01)
      (Set_in s2@13@01 S@1@01)
      (= ($FVF.lookup_f $t@3@01 s1@13@01) ($FVF.lookup_f $t@3@01 s2@13@01)))
    (= s1@13@01 s2@13@01))
  
  :qid |g-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((s@13@01 $Ref)) (!
  (=>
    (Set_in s@13@01 S@1@01)
    (and
      (= (inv@14@01 ($FVF.lookup_f $t@3@01 s@13@01)) s@13@01)
      (img@15@01 ($FVF.lookup_f $t@3@01 s@13@01))))
  :pattern (($FVF.lookup_f $t@3@01 s@13@01))
  :qid |g-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@15@01 r) (Set_in (inv@14@01 r) S@1@01))
    (= ($FVF.lookup_f $t@3@01 (inv@14@01 r)) r))
  :pattern ((inv@14@01 r))
  :qid |g-fctOfInv|)))
; Precomputing data for removing quantified permissions
(define-fun pTaken@16@01 ((r $Ref)) $Perm
  (ite
    (and
      (Set_in (inv@14@01 r) S@1@01)
      (img@15@01 r)
      (= r ($FVF.lookup_f $t@3@01 (inv@14@01 r))))
    ($Perm.min
      (ite
        (and (img@12@01 r) (Set_in (inv@11@01 r) S@1@01))
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
        (and (img@12@01 r) (Set_in (inv@11@01 r) S@1@01))
        $Perm.Write
        $Perm.No)
      (pTaken@16@01 r))
    $Perm.No)
  
  :qid |quant-u-13168|))))
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
      (Set_in (inv@14@01 r) S@1@01)
      (img@15@01 r)
      (= r ($FVF.lookup_f $t@3@01 (inv@14@01 r))))
    (= (- $Perm.Write (pTaken@16@01 r)) $Perm.No))
  
  :qid |quant-u-13169|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Final check if taken enough permissions
; Done removing quantified permissions
(pop) ; 2
(pop) ; 1
; ---------- test04 ----------
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
; var s1: Ref
(declare-const s1@17@01 $Ref)
; [exec]
; var s2: Ref
(declare-const s2@18@01 $Ref)
; [exec]
; var s3: Ref
(declare-const s3@19@01 $Ref)
; [exec]
; var S: Set[Ref]
(declare-const S@20@01 Set<$Ref>)
; [exec]
; s1 := new(f, g)
(declare-const s1@21@01 $Ref)
(assert (not (= s1@21@01 $Ref.null)))
(declare-const f@22@01 $Ref)
(declare-const sm@23@01 $FVF<f>)
; Definitional axioms for singleton-FVF's value
(assert (= ($FVF.lookup_f (as sm@23@01  $FVF<f>) s1@21@01) f@22@01))
(declare-const g@24@01 Int)
(declare-const sm@25@01 $FVF<g>)
; Definitional axioms for singleton-FVF's value
(assert (= ($FVF.lookup_g (as sm@25@01  $FVF<g>) s1@21@01) g@24@01))
(assert (not (= s1@21@01 s1@17@01)))
(assert (not (= s1@21@01 s2@18@01)))
(assert (not (= s1@21@01 s3@19@01)))
(assert (not (Set_in s1@21@01 S@20@01)))
; [exec]
; s2 := new(f, g)
(declare-const s2@26@01 $Ref)
(assert (not (= s2@26@01 $Ref.null)))
(declare-const f@27@01 $Ref)
(declare-const sm@28@01 $FVF<f>)
; Definitional axioms for singleton-FVF's value
(assert (= ($FVF.lookup_f (as sm@28@01  $FVF<f>) s2@26@01) f@27@01))
(declare-const g@29@01 Int)
(declare-const sm@30@01 $FVF<g>)
; Definitional axioms for singleton-FVF's value
(assert (= ($FVF.lookup_g (as sm@30@01  $FVF<g>) s2@26@01) g@29@01))
(assert (not (= s2@26@01 s1@21@01)))
(assert (not (= s2@26@01 ($FVF.lookup_f (as sm@23@01  $FVF<f>) s1@21@01))))
(assert (not (= s2@26@01 s2@18@01)))
(assert (not (= s2@26@01 s3@19@01)))
(assert (not (Set_in s2@26@01 S@20@01)))
; [exec]
; s3 := new(f, g)
(declare-const s3@31@01 $Ref)
(assert (not (= s3@31@01 $Ref.null)))
(declare-const f@32@01 $Ref)
(declare-const sm@33@01 $FVF<f>)
; Definitional axioms for singleton-FVF's value
(assert (= ($FVF.lookup_f (as sm@33@01  $FVF<f>) s3@31@01) f@32@01))
(declare-const g@34@01 Int)
(declare-const sm@35@01 $FVF<g>)
; Definitional axioms for singleton-FVF's value
(assert (= ($FVF.lookup_g (as sm@35@01  $FVF<g>) s3@31@01) g@34@01))
(assert (not (= s3@31@01 ($FVF.lookup_f (as sm@28@01  $FVF<f>) s2@26@01))))
(assert (not (= s3@31@01 s1@21@01)))
(assert (not (= s3@31@01 s2@26@01)))
(assert (not (= s3@31@01 ($FVF.lookup_f (as sm@23@01  $FVF<f>) s1@21@01))))
(assert (not (= s3@31@01 s3@19@01)))
(assert (not (Set_in s3@31@01 S@20@01)))
; [exec]
; S := Set(s1, s2, s3)
; [eval] Set(s1, s2, s3)
(declare-const S@36@01 Set<$Ref>)
(assert (=
  S@36@01
  (Set_unionone (Set_unionone (Set_singleton s1@21@01) s2@26@01) s3@31@01)))
; [exec]
; assert (forall s: Ref ::(s in S) ==> acc(s.f, write))
(declare-const s@37@01 $Ref)
(push) ; 3
; [eval] (s in S)
(assert (Set_in s@37@01 S@36@01))
(pop) ; 3
(declare-fun inv@38@01 ($Ref) $Ref)
(declare-fun img@39@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
; Check receiver injectivity
(push) ; 3
(assert (not (forall ((s1@37@01 $Ref) (s2@37@01 $Ref)) (!
  (=>
    (and
      (Set_in s1@37@01 S@36@01)
      (Set_in s2@37@01 S@36@01)
      (= s1@37@01 s2@37@01))
    (= s1@37@01 s2@37@01))
  
  :qid |f-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((s@37@01 $Ref)) (!
  (=>
    (Set_in s@37@01 S@36@01)
    (and (= (inv@38@01 s@37@01) s@37@01) (img@39@01 s@37@01)))
  :pattern ((Set_in s@37@01 S@36@01))
  :pattern ((inv@38@01 s@37@01))
  :pattern ((img@39@01 s@37@01))
  :qid |f-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=> (and (img@39@01 r) (Set_in (inv@38@01 r) S@36@01)) (= (inv@38@01 r) r))
  :pattern ((inv@38@01 r))
  :qid |f-fctOfInv|)))
; Precomputing data for removing quantified permissions
(define-fun pTaken@40@01 ((r $Ref)) $Perm
  (ite
    (and (Set_in (inv@38@01 r) S@36@01) (img@39@01 r) (= r (inv@38@01 r)))
    ($Perm.min (ite (= r s3@31@01) $Perm.Write $Perm.No) $Perm.Write)
    $Perm.No))
(define-fun pTaken@41@01 ((r $Ref)) $Perm
  (ite
    (and (Set_in (inv@38@01 r) S@36@01) (img@39@01 r) (= r (inv@38@01 r)))
    ($Perm.min
      (ite (= r s2@26@01) $Perm.Write $Perm.No)
      (- $Perm.Write (pTaken@40@01 r)))
    $Perm.No))
(define-fun pTaken@42@01 ((r $Ref)) $Perm
  (ite
    (and (Set_in (inv@38@01 r) S@36@01) (img@39@01 r) (= r (inv@38@01 r)))
    ($Perm.min
      (ite (= r s1@21@01) $Perm.Write $Perm.No)
      (- (- $Perm.Write (pTaken@40@01 r)) (pTaken@41@01 r)))
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
(assert (not (= (- $Perm.Write (pTaken@40@01 s3@31@01)) $Perm.No)))
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
    (and (Set_in (inv@38@01 r) S@36@01) (img@39@01 r) (= r (inv@38@01 r)))
    (= (- $Perm.Write (pTaken@40@01 r)) $Perm.No))
  
  :qid |quant-u-13173|))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Chunk depleted?
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 500)
(assert (not (= (- $Perm.Write (pTaken@41@01 s2@26@01)) $Perm.No)))
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
    (and (Set_in (inv@38@01 r) S@36@01) (img@39@01 r) (= r (inv@38@01 r)))
    (= (- (- $Perm.Write (pTaken@40@01 r)) (pTaken@41@01 r)) $Perm.No))
  
  :qid |quant-u-13175|))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Chunk depleted?
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 500)
(assert (not (= (- $Perm.Write (pTaken@42@01 s1@21@01)) $Perm.No)))
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
    (and (Set_in (inv@38@01 r) S@36@01) (img@39@01 r) (= r (inv@38@01 r)))
    (=
      (- (- (- $Perm.Write (pTaken@40@01 r)) (pTaken@41@01 r)) (pTaken@42@01 r))
      $Perm.No))
  
  :qid |quant-u-13177|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Final check if taken enough permissions
; Done removing quantified permissions
; [exec]
; inhale s1.f != null && (s2.f != null && s3.f != null)
(declare-const $t@43@01 $Snap)
(assert (= $t@43@01 ($Snap.combine ($Snap.first $t@43@01) ($Snap.second $t@43@01))))
(assert (= ($Snap.first $t@43@01) $Snap.unit))
; [eval] s1.f != null
(declare-const sm@44@01 $FVF<f>)
; Definitional axioms for snapshot map values
(assert (forall ((r $Ref)) (!
  (=>
    (= r s3@31@01)
    (=
      ($FVF.lookup_f (as sm@44@01  $FVF<f>) r)
      ($FVF.lookup_f (as sm@33@01  $FVF<f>) r)))
  :pattern (($FVF.lookup_f (as sm@44@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f (as sm@33@01  $FVF<f>) r))
  :qid |qp.fvfValDef0|)))
(assert (forall ((r $Ref)) (!
  (=>
    (= r s2@26@01)
    (=
      ($FVF.lookup_f (as sm@44@01  $FVF<f>) r)
      ($FVF.lookup_f (as sm@28@01  $FVF<f>) r)))
  :pattern (($FVF.lookup_f (as sm@44@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f (as sm@28@01  $FVF<f>) r))
  :qid |qp.fvfValDef1|)))
(assert (forall ((r $Ref)) (!
  (=>
    (= r s1@21@01)
    (=
      ($FVF.lookup_f (as sm@44@01  $FVF<f>) r)
      ($FVF.lookup_f (as sm@23@01  $FVF<f>) r)))
  :pattern (($FVF.lookup_f (as sm@44@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f (as sm@23@01  $FVF<f>) r))
  :qid |qp.fvfValDef2|)))
(declare-const pm@45@01 $FPM)
(assert (forall ((r $Ref)) (!
  (=
    ($FVF.perm_f (as pm@45@01  $FPM) r)
    (+
      (+
        (ite (= r s3@31@01) $Perm.Write $Perm.No)
        (ite (= r s2@26@01) $Perm.Write $Perm.No))
      (ite (= r s1@21@01) $Perm.Write $Perm.No)))
  :pattern (($FVF.perm_f (as pm@45@01  $FPM) r))
  :qid |qp.resPrmSumDef3|)))
(set-option :timeout 0)
(push) ; 3
(assert (not (< $Perm.No ($FVF.perm_f (as pm@45@01  $FPM) s1@21@01))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(assert (not (= ($FVF.lookup_f (as sm@44@01  $FVF<f>) s1@21@01) $Ref.null)))
(assert (=
  ($Snap.second $t@43@01)
  ($Snap.combine
    ($Snap.first ($Snap.second $t@43@01))
    ($Snap.second ($Snap.second $t@43@01)))))
(assert (= ($Snap.first ($Snap.second $t@43@01)) $Snap.unit))
; [eval] s2.f != null
(assert (and
  (forall ((r $Ref)) (!
    (=>
      (= r s3@31@01)
      (=
        ($FVF.lookup_f (as sm@44@01  $FVF<f>) r)
        ($FVF.lookup_f (as sm@33@01  $FVF<f>) r)))
    :pattern (($FVF.lookup_f (as sm@44@01  $FVF<f>) r))
    :pattern (($FVF.lookup_f (as sm@33@01  $FVF<f>) r))
    :qid |qp.fvfValDef0|))
  (forall ((r $Ref)) (!
    (=>
      (= r s2@26@01)
      (=
        ($FVF.lookup_f (as sm@44@01  $FVF<f>) r)
        ($FVF.lookup_f (as sm@28@01  $FVF<f>) r)))
    :pattern (($FVF.lookup_f (as sm@44@01  $FVF<f>) r))
    :pattern (($FVF.lookup_f (as sm@28@01  $FVF<f>) r))
    :qid |qp.fvfValDef1|))
  (forall ((r $Ref)) (!
    (=>
      (= r s1@21@01)
      (=
        ($FVF.lookup_f (as sm@44@01  $FVF<f>) r)
        ($FVF.lookup_f (as sm@23@01  $FVF<f>) r)))
    :pattern (($FVF.lookup_f (as sm@44@01  $FVF<f>) r))
    :pattern (($FVF.lookup_f (as sm@23@01  $FVF<f>) r))
    :qid |qp.fvfValDef2|))))
(push) ; 3
(assert (not (<
  $Perm.No
  (+
    (+ (ite (= s2@26@01 s3@31@01) $Perm.Write $Perm.No) $Perm.Write)
    (ite (= s2@26@01 s1@21@01) $Perm.Write $Perm.No)))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(assert (not (= ($FVF.lookup_f (as sm@44@01  $FVF<f>) s2@26@01) $Ref.null)))
(assert (= ($Snap.second ($Snap.second $t@43@01)) $Snap.unit))
; [eval] s3.f != null
(assert (and
  (forall ((r $Ref)) (!
    (=>
      (= r s3@31@01)
      (=
        ($FVF.lookup_f (as sm@44@01  $FVF<f>) r)
        ($FVF.lookup_f (as sm@33@01  $FVF<f>) r)))
    :pattern (($FVF.lookup_f (as sm@44@01  $FVF<f>) r))
    :pattern (($FVF.lookup_f (as sm@33@01  $FVF<f>) r))
    :qid |qp.fvfValDef0|))
  (forall ((r $Ref)) (!
    (=>
      (= r s2@26@01)
      (=
        ($FVF.lookup_f (as sm@44@01  $FVF<f>) r)
        ($FVF.lookup_f (as sm@28@01  $FVF<f>) r)))
    :pattern (($FVF.lookup_f (as sm@44@01  $FVF<f>) r))
    :pattern (($FVF.lookup_f (as sm@28@01  $FVF<f>) r))
    :qid |qp.fvfValDef1|))
  (forall ((r $Ref)) (!
    (=>
      (= r s1@21@01)
      (=
        ($FVF.lookup_f (as sm@44@01  $FVF<f>) r)
        ($FVF.lookup_f (as sm@23@01  $FVF<f>) r)))
    :pattern (($FVF.lookup_f (as sm@44@01  $FVF<f>) r))
    :pattern (($FVF.lookup_f (as sm@23@01  $FVF<f>) r))
    :qid |qp.fvfValDef2|))))
(push) ; 3
(assert (not (<
  $Perm.No
  (+
    (+ $Perm.Write (ite (= s3@31@01 s2@26@01) $Perm.Write $Perm.No))
    (ite (= s3@31@01 s1@21@01) $Perm.Write $Perm.No)))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(assert (not (= ($FVF.lookup_f (as sm@44@01  $FVF<f>) s3@31@01) $Ref.null)))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; assert (forall s: Ref ::(s in S) ==> acc(s.f.g, write))
(declare-const s@46@01 $Ref)
(set-option :timeout 0)
(push) ; 3
; [eval] (s in S)
(assert (Set_in s@46@01 S@36@01))
(assert (and
  (forall ((r $Ref)) (!
    (=>
      (= r s3@31@01)
      (=
        ($FVF.lookup_f (as sm@44@01  $FVF<f>) r)
        ($FVF.lookup_f (as sm@33@01  $FVF<f>) r)))
    :pattern (($FVF.lookup_f (as sm@44@01  $FVF<f>) r))
    :pattern (($FVF.lookup_f (as sm@33@01  $FVF<f>) r))
    :qid |qp.fvfValDef0|))
  (forall ((r $Ref)) (!
    (=>
      (= r s2@26@01)
      (=
        ($FVF.lookup_f (as sm@44@01  $FVF<f>) r)
        ($FVF.lookup_f (as sm@28@01  $FVF<f>) r)))
    :pattern (($FVF.lookup_f (as sm@44@01  $FVF<f>) r))
    :pattern (($FVF.lookup_f (as sm@28@01  $FVF<f>) r))
    :qid |qp.fvfValDef1|))
  (forall ((r $Ref)) (!
    (=>
      (= r s1@21@01)
      (=
        ($FVF.lookup_f (as sm@44@01  $FVF<f>) r)
        ($FVF.lookup_f (as sm@23@01  $FVF<f>) r)))
    :pattern (($FVF.lookup_f (as sm@44@01  $FVF<f>) r))
    :pattern (($FVF.lookup_f (as sm@23@01  $FVF<f>) r))
    :qid |qp.fvfValDef2|))))
(push) ; 4
(assert (not (<
  $Perm.No
  (+
    (+
      (ite (= s@46@01 s3@31@01) $Perm.Write $Perm.No)
      (ite (= s@46@01 s2@26@01) $Perm.Write $Perm.No))
    (ite (= s@46@01 s1@21@01) $Perm.Write $Perm.No)))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(pop) ; 3
(declare-fun inv@47@01 ($Ref) $Ref)
(declare-fun img@48@01 ($Ref) Bool)
; Nested auxiliary terms: globals
(assert (forall ((r $Ref)) (!
  (=>
    (= r s3@31@01)
    (=
      ($FVF.lookup_f (as sm@44@01  $FVF<f>) r)
      ($FVF.lookup_f (as sm@33@01  $FVF<f>) r)))
  :pattern (($FVF.lookup_f (as sm@44@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f (as sm@33@01  $FVF<f>) r))
  :qid |qp.fvfValDef0|)))
(assert (forall ((r $Ref)) (!
  (=>
    (= r s2@26@01)
    (=
      ($FVF.lookup_f (as sm@44@01  $FVF<f>) r)
      ($FVF.lookup_f (as sm@28@01  $FVF<f>) r)))
  :pattern (($FVF.lookup_f (as sm@44@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f (as sm@28@01  $FVF<f>) r))
  :qid |qp.fvfValDef1|)))
(assert (forall ((r $Ref)) (!
  (=>
    (= r s1@21@01)
    (=
      ($FVF.lookup_f (as sm@44@01  $FVF<f>) r)
      ($FVF.lookup_f (as sm@23@01  $FVF<f>) r)))
  :pattern (($FVF.lookup_f (as sm@44@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f (as sm@23@01  $FVF<f>) r))
  :qid |qp.fvfValDef2|)))
; Nested auxiliary terms: non-globals
; Check receiver injectivity
(push) ; 3
(assert (not (forall ((s1@46@01 $Ref) (s2@46@01 $Ref)) (!
  (=>
    (and
      (Set_in s1@46@01 S@36@01)
      (Set_in s2@46@01 S@36@01)
      (=
        ($FVF.lookup_f (as sm@44@01  $FVF<f>) s1@46@01)
        ($FVF.lookup_f (as sm@44@01  $FVF<f>) s2@46@01)))
    (= s1@46@01 s2@46@01))
  
  :qid |g-rcvrInj|))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; [state consolidation]
; State saturation: before repetition
(set-option :timeout 10)
(check-sat)
; unknown
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (= s2@26@01 s1@21@01)))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (= s2@26@01 s1@21@01)))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (= s3@31@01 s2@26@01)))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (= s3@31@01 s1@21@01)))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (= s3@31@01 s2@26@01)))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (= s3@31@01 s1@21@01)))
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
    ($FVF.lookup_g (as sm@35@01  $FVF<g>) s3@31@01)
    ($FVF.lookup_g (as sm@30@01  $FVF<g>) s2@26@01)))))
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
    ($FVF.lookup_g (as sm@35@01  $FVF<g>) s3@31@01)
    ($FVF.lookup_g (as sm@25@01  $FVF<g>) s1@21@01)))))
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
    ($FVF.lookup_g (as sm@30@01  $FVF<g>) s2@26@01)
    ($FVF.lookup_g (as sm@35@01  $FVF<g>) s3@31@01)))))
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
    ($FVF.lookup_g (as sm@30@01  $FVF<g>) s2@26@01)
    ($FVF.lookup_g (as sm@25@01  $FVF<g>) s1@21@01)))))
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
    ($FVF.lookup_g (as sm@25@01  $FVF<g>) s1@21@01)
    ($FVF.lookup_g (as sm@35@01  $FVF<g>) s3@31@01)))))
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
    ($FVF.lookup_g (as sm@25@01  $FVF<g>) s1@21@01)
    ($FVF.lookup_g (as sm@30@01  $FVF<g>) s2@26@01)))))
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
    ($FVF.lookup_f (as sm@33@01  $FVF<f>) s3@31@01)
    ($FVF.lookup_f (as sm@28@01  $FVF<f>) s2@26@01)))))
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
    ($FVF.lookup_f (as sm@33@01  $FVF<f>) s3@31@01)
    ($FVF.lookup_f (as sm@23@01  $FVF<f>) s1@21@01)))))
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
    ($FVF.lookup_f (as sm@28@01  $FVF<f>) s2@26@01)
    ($FVF.lookup_f (as sm@33@01  $FVF<f>) s3@31@01)))))
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
    ($FVF.lookup_f (as sm@28@01  $FVF<f>) s2@26@01)
    ($FVF.lookup_f (as sm@23@01  $FVF<f>) s1@21@01)))))
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
    ($FVF.lookup_f (as sm@23@01  $FVF<f>) s1@21@01)
    ($FVF.lookup_f (as sm@33@01  $FVF<f>) s3@31@01)))))
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
    ($FVF.lookup_f (as sm@23@01  $FVF<f>) s1@21@01)
    ($FVF.lookup_f (as sm@28@01  $FVF<f>) s2@26@01)))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(assert (and
  (and (not (= s3@31@01 s2@26@01)) (not (= s3@31@01 s1@21@01)))
  (and (not (= s2@26@01 s3@31@01)) (not (= s2@26@01 s1@21@01)))
  (and (not (= s1@21@01 s3@31@01)) (not (= s1@21@01 s2@26@01)))))
; Definitional axioms for snapshot map values
(assert (<= ($FVF.perm_f (as pm@45@01  $FPM) s3@31@01) $Perm.Write))
(assert (<= ($FVF.perm_f (as pm@45@01  $FPM) s2@26@01) $Perm.Write))
(assert (<= ($FVF.perm_f (as pm@45@01  $FPM) s1@21@01) $Perm.Write))
(declare-const sm@49@01 $FVF<g>)
; Definitional axioms for snapshot map values
(assert (forall ((r $Ref)) (!
  (=>
    (= r s3@31@01)
    (=
      ($FVF.lookup_g (as sm@49@01  $FVF<g>) r)
      ($FVF.lookup_g (as sm@35@01  $FVF<g>) r)))
  :pattern (($FVF.lookup_g (as sm@49@01  $FVF<g>) r))
  :pattern (($FVF.lookup_g (as sm@35@01  $FVF<g>) r))
  :qid |qp.fvfValDef4|)))
(assert (forall ((r $Ref)) (!
  (=>
    (= r s2@26@01)
    (=
      ($FVF.lookup_g (as sm@49@01  $FVF<g>) r)
      ($FVF.lookup_g (as sm@30@01  $FVF<g>) r)))
  :pattern (($FVF.lookup_g (as sm@49@01  $FVF<g>) r))
  :pattern (($FVF.lookup_g (as sm@30@01  $FVF<g>) r))
  :qid |qp.fvfValDef5|)))
(assert (forall ((r $Ref)) (!
  (=>
    (= r s1@21@01)
    (=
      ($FVF.lookup_g (as sm@49@01  $FVF<g>) r)
      ($FVF.lookup_g (as sm@25@01  $FVF<g>) r)))
  :pattern (($FVF.lookup_g (as sm@49@01  $FVF<g>) r))
  :pattern (($FVF.lookup_g (as sm@25@01  $FVF<g>) r))
  :qid |qp.fvfValDef6|)))
(declare-const pm@50@01 $FPM)
(assert (forall ((r $Ref)) (!
  (=
    ($FVF.perm_g (as pm@50@01  $FPM) r)
    (+
      (+
        (ite (= r s3@31@01) $Perm.Write $Perm.No)
        (ite (= r s2@26@01) $Perm.Write $Perm.No))
      (ite (= r s1@21@01) $Perm.Write $Perm.No)))
  :pattern (($FVF.perm_g (as pm@50@01  $FPM) r))
  :qid |qp.resPrmSumDef7|)))
(assert (<= ($FVF.perm_g (as pm@50@01  $FPM) s3@31@01) $Perm.Write))
(assert (<= ($FVF.perm_g (as pm@50@01  $FPM) s2@26@01) $Perm.Write))
(assert (<= ($FVF.perm_g (as pm@50@01  $FPM) s1@21@01) $Perm.Write))
(declare-const s@51@01 $Ref)
(set-option :timeout 0)
(push) ; 3
; [eval] (s in S)
(assert (Set_in s@51@01 S@36@01))
(assert (and
  (forall ((r $Ref)) (!
    (=>
      (= r s3@31@01)
      (=
        ($FVF.lookup_f (as sm@44@01  $FVF<f>) r)
        ($FVF.lookup_f (as sm@33@01  $FVF<f>) r)))
    :pattern (($FVF.lookup_f (as sm@44@01  $FVF<f>) r))
    :pattern (($FVF.lookup_f (as sm@33@01  $FVF<f>) r))
    :qid |qp.fvfValDef0|))
  (forall ((r $Ref)) (!
    (=>
      (= r s2@26@01)
      (=
        ($FVF.lookup_f (as sm@44@01  $FVF<f>) r)
        ($FVF.lookup_f (as sm@28@01  $FVF<f>) r)))
    :pattern (($FVF.lookup_f (as sm@44@01  $FVF<f>) r))
    :pattern (($FVF.lookup_f (as sm@28@01  $FVF<f>) r))
    :qid |qp.fvfValDef1|))
  (forall ((r $Ref)) (!
    (=>
      (= r s1@21@01)
      (=
        ($FVF.lookup_f (as sm@44@01  $FVF<f>) r)
        ($FVF.lookup_f (as sm@23@01  $FVF<f>) r)))
    :pattern (($FVF.lookup_f (as sm@44@01  $FVF<f>) r))
    :pattern (($FVF.lookup_f (as sm@23@01  $FVF<f>) r))
    :qid |qp.fvfValDef2|))))
(push) ; 4
(assert (not (<
  $Perm.No
  (+
    (+
      (ite (= s@51@01 s3@31@01) $Perm.Write $Perm.No)
      (ite (= s@51@01 s2@26@01) $Perm.Write $Perm.No))
    (ite (= s@51@01 s1@21@01) $Perm.Write $Perm.No)))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(pop) ; 3
(declare-fun inv@52@01 ($Ref) $Ref)
(declare-fun img@53@01 ($Ref) Bool)
; Nested auxiliary terms: globals
(assert (forall ((r $Ref)) (!
  (=>
    (= r s3@31@01)
    (=
      ($FVF.lookup_f (as sm@44@01  $FVF<f>) r)
      ($FVF.lookup_f (as sm@33@01  $FVF<f>) r)))
  :pattern (($FVF.lookup_f (as sm@44@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f (as sm@33@01  $FVF<f>) r))
  :qid |qp.fvfValDef0|)))
(assert (forall ((r $Ref)) (!
  (=>
    (= r s2@26@01)
    (=
      ($FVF.lookup_f (as sm@44@01  $FVF<f>) r)
      ($FVF.lookup_f (as sm@28@01  $FVF<f>) r)))
  :pattern (($FVF.lookup_f (as sm@44@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f (as sm@28@01  $FVF<f>) r))
  :qid |qp.fvfValDef1|)))
(assert (forall ((r $Ref)) (!
  (=>
    (= r s1@21@01)
    (=
      ($FVF.lookup_f (as sm@44@01  $FVF<f>) r)
      ($FVF.lookup_f (as sm@23@01  $FVF<f>) r)))
  :pattern (($FVF.lookup_f (as sm@44@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f (as sm@23@01  $FVF<f>) r))
  :qid |qp.fvfValDef2|)))
; Nested auxiliary terms: non-globals
; Check receiver injectivity
(push) ; 3
(assert (not (forall ((s1@51@01 $Ref) (s2@51@01 $Ref)) (!
  (=>
    (and
      (Set_in s1@51@01 S@36@01)
      (Set_in s2@51@01 S@36@01)
      (=
        ($FVF.lookup_f (as sm@44@01  $FVF<f>) s1@51@01)
        ($FVF.lookup_f (as sm@44@01  $FVF<f>) s2@51@01)))
    (= s1@51@01 s2@51@01))
  
  :qid |g-rcvrInj|))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(pop) ; 2
(pop) ; 1
; ---------- test01 ----------
(declare-const S@54@01 Set<$Ref>)
(declare-const S@55@01 Set<$Ref>)
(push) ; 1
(declare-const $t@56@01 $Snap)
(assert (= $t@56@01 ($Snap.combine ($Snap.first $t@56@01) ($Snap.second $t@56@01))))
(declare-const s@57@01 $Ref)
(push) ; 2
; [eval] (s in S)
(assert (Set_in s@57@01 S@55@01))
(pop) ; 2
(declare-fun inv@58@01 ($Ref) $Ref)
(declare-fun img@59@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
; Check receiver injectivity
(push) ; 2
(assert (not (forall ((s1@57@01 $Ref) (s2@57@01 $Ref)) (!
  (=>
    (and
      (Set_in s1@57@01 S@55@01)
      (Set_in s2@57@01 S@55@01)
      (= s1@57@01 s2@57@01))
    (= s1@57@01 s2@57@01))
  
  :qid |f-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 2
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((s@57@01 $Ref)) (!
  (=>
    (Set_in s@57@01 S@55@01)
    (and (= (inv@58@01 s@57@01) s@57@01) (img@59@01 s@57@01)))
  :pattern ((Set_in s@57@01 S@55@01))
  :pattern ((inv@58@01 s@57@01))
  :pattern ((img@59@01 s@57@01))
  :qid |quant-u-13181|)))
(assert (forall ((r $Ref)) (!
  (=> (and (img@59@01 r) (Set_in (inv@58@01 r) S@55@01)) (= (inv@58@01 r) r))
  :pattern ((inv@58@01 r))
  :qid |f-fctOfInv|)))
; Permissions are non-negative
; Field permissions are at most one
; Permission implies non-null receiver
(assert (forall ((s@57@01 $Ref)) (!
  (=> (Set_in s@57@01 S@55@01) (not (= s@57@01 $Ref.null)))
  :pattern ((Set_in s@57@01 S@55@01))
  :pattern ((inv@58@01 s@57@01))
  :pattern ((img@59@01 s@57@01))
  :qid |f-permImpliesNonNull|)))
(assert (=
  ($Snap.second $t@56@01)
  ($Snap.combine
    ($Snap.first ($Snap.second $t@56@01))
    ($Snap.second ($Snap.second $t@56@01)))))
(assert (= ($Snap.first ($Snap.second $t@56@01)) $Snap.unit))
; [eval] (forall s1: Ref, s2: Ref :: { (s1 in S), (s2 in S) } (s1 in S) && ((s2 in S) && s1 != s2) ==> s1.f != s2.f)
(declare-const s1@60@01 $Ref)
(declare-const s2@61@01 $Ref)
(push) ; 2
; [eval] (s1 in S) && ((s2 in S) && s1 != s2) ==> s1.f != s2.f
; [eval] (s1 in S) && ((s2 in S) && s1 != s2)
; [eval] (s1 in S)
(push) ; 3
; [then-branch: 3 | !(s1@60@01 in S@55@01) | live]
; [else-branch: 3 | s1@60@01 in S@55@01 | live]
(push) ; 4
; [then-branch: 3 | !(s1@60@01 in S@55@01)]
(assert (not (Set_in s1@60@01 S@55@01)))
(pop) ; 4
(push) ; 4
; [else-branch: 3 | s1@60@01 in S@55@01]
(assert (Set_in s1@60@01 S@55@01))
; [eval] (s2 in S)
(push) ; 5
; [then-branch: 4 | !(s2@61@01 in S@55@01) | live]
; [else-branch: 4 | s2@61@01 in S@55@01 | live]
(push) ; 6
; [then-branch: 4 | !(s2@61@01 in S@55@01)]
(assert (not (Set_in s2@61@01 S@55@01)))
(pop) ; 6
(push) ; 6
; [else-branch: 4 | s2@61@01 in S@55@01]
(assert (Set_in s2@61@01 S@55@01))
; [eval] s1 != s2
(pop) ; 6
(pop) ; 5
; Joined path conditions
; Joined path conditions
(assert (or (Set_in s2@61@01 S@55@01) (not (Set_in s2@61@01 S@55@01))))
(pop) ; 4
(pop) ; 3
; Joined path conditions
; Joined path conditions
(assert (=>
  (Set_in s1@60@01 S@55@01)
  (and
    (Set_in s1@60@01 S@55@01)
    (or (Set_in s2@61@01 S@55@01) (not (Set_in s2@61@01 S@55@01))))))
(assert (or (Set_in s1@60@01 S@55@01) (not (Set_in s1@60@01 S@55@01))))
(push) ; 3
; [then-branch: 5 | s1@60@01 in S@55@01 && s2@61@01 in S@55@01 && s1@60@01 != s2@61@01 | live]
; [else-branch: 5 | !(s1@60@01 in S@55@01 && s2@61@01 in S@55@01 && s1@60@01 != s2@61@01) | live]
(push) ; 4
; [then-branch: 5 | s1@60@01 in S@55@01 && s2@61@01 in S@55@01 && s1@60@01 != s2@61@01]
(assert (and
  (Set_in s1@60@01 S@55@01)
  (and (Set_in s2@61@01 S@55@01) (not (= s1@60@01 s2@61@01)))))
; [eval] s1.f != s2.f
(push) ; 5
(assert (not (and (img@59@01 s1@60@01) (Set_in (inv@58@01 s1@60@01) S@55@01))))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(push) ; 5
(assert (not (and (img@59@01 s2@61@01) (Set_in (inv@58@01 s2@61@01) S@55@01))))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(pop) ; 4
(push) ; 4
; [else-branch: 5 | !(s1@60@01 in S@55@01 && s2@61@01 in S@55@01 && s1@60@01 != s2@61@01)]
(assert (not
  (and
    (Set_in s1@60@01 S@55@01)
    (and (Set_in s2@61@01 S@55@01) (not (= s1@60@01 s2@61@01))))))
(pop) ; 4
(pop) ; 3
; Joined path conditions
(assert (=>
  (and
    (Set_in s1@60@01 S@55@01)
    (and (Set_in s2@61@01 S@55@01) (not (= s1@60@01 s2@61@01))))
  (and
    (Set_in s1@60@01 S@55@01)
    (Set_in s2@61@01 S@55@01)
    (not (= s1@60@01 s2@61@01)))))
; Joined path conditions
(assert (or
  (not
    (and
      (Set_in s1@60@01 S@55@01)
      (and (Set_in s2@61@01 S@55@01) (not (= s1@60@01 s2@61@01)))))
  (and
    (Set_in s1@60@01 S@55@01)
    (and (Set_in s2@61@01 S@55@01) (not (= s1@60@01 s2@61@01))))))
(pop) ; 2
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall ((s1@60@01 $Ref) (s2@61@01 $Ref)) (!
  (and
    (=>
      (Set_in s1@60@01 S@55@01)
      (and
        (Set_in s1@60@01 S@55@01)
        (or (Set_in s2@61@01 S@55@01) (not (Set_in s2@61@01 S@55@01)))))
    (or (Set_in s1@60@01 S@55@01) (not (Set_in s1@60@01 S@55@01)))
    (=>
      (and
        (Set_in s1@60@01 S@55@01)
        (and (Set_in s2@61@01 S@55@01) (not (= s1@60@01 s2@61@01))))
      (and
        (Set_in s1@60@01 S@55@01)
        (Set_in s2@61@01 S@55@01)
        (not (= s1@60@01 s2@61@01))))
    (or
      (not
        (and
          (Set_in s1@60@01 S@55@01)
          (and (Set_in s2@61@01 S@55@01) (not (= s1@60@01 s2@61@01)))))
      (and
        (Set_in s1@60@01 S@55@01)
        (and (Set_in s2@61@01 S@55@01) (not (= s1@60@01 s2@61@01))))))
  :pattern ((Set_in s1@60@01 S@55@01) (Set_in s2@61@01 S@55@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/issues/issue_0066.vpr@32@12@32@88-aux|)))
(assert (forall ((s1@60@01 $Ref) (s2@61@01 $Ref)) (!
  (=>
    (and
      (Set_in s1@60@01 S@55@01)
      (and (Set_in s2@61@01 S@55@01) (not (= s1@60@01 s2@61@01))))
    (not
      (=
        ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@56@01)) s1@60@01)
        ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@56@01)) s2@61@01))))
  :pattern ((Set_in s1@60@01 S@55@01) (Set_in s2@61@01 S@55@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/issues/issue_0066.vpr@32@12@32@88|)))
(declare-const s@62@01 $Ref)
(push) ; 2
; [eval] (s in S)
(assert (Set_in s@62@01 S@55@01))
(push) ; 3
(assert (not (and (img@59@01 s@62@01) (Set_in (inv@58@01 s@62@01) S@55@01))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(pop) ; 2
(declare-fun inv@63@01 ($Ref) $Ref)
(declare-fun img@64@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
; Check receiver injectivity
(push) ; 2
(assert (not (forall ((s1@62@01 $Ref) (s2@62@01 $Ref)) (!
  (=>
    (and
      (Set_in s1@62@01 S@55@01)
      (Set_in s2@62@01 S@55@01)
      (=
        ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@56@01)) s1@62@01)
        ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@56@01)) s2@62@01)))
    (= s1@62@01 s2@62@01))
  
  :qid |g-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 2
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((s@62@01 $Ref)) (!
  (=>
    (Set_in s@62@01 S@55@01)
    (and
      (=
        (inv@63@01 ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@56@01)) s@62@01))
        s@62@01)
      (img@64@01 ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@56@01)) s@62@01))))
  :pattern (($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@56@01)) s@62@01))
  :qid |quant-u-13183|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@64@01 r) (Set_in (inv@63@01 r) S@55@01))
    (=
      ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@56@01)) (inv@63@01 r))
      r))
  :pattern ((inv@63@01 r))
  :qid |g-fctOfInv|)))
; Permissions are non-negative
; Field permissions are at most one
; Permission implies non-null receiver
(assert (forall ((s@62@01 $Ref)) (!
  (=>
    (Set_in s@62@01 S@55@01)
    (not
      (=
        ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@56@01)) s@62@01)
        $Ref.null)))
  :pattern (($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@56@01)) s@62@01))
  :qid |g-permImpliesNonNull|)))
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
(set-option :timeout 0)
(push) ; 2
(declare-const $t@65@01 $Snap)
(assert (= $t@65@01 ($Snap.combine ($Snap.first $t@65@01) ($Snap.second $t@65@01))))
(declare-const s@66@01 $Ref)
(push) ; 3
; [eval] (s in S)
(assert (Set_in s@66@01 S@55@01))
(pop) ; 3
(declare-fun inv@67@01 ($Ref) $Ref)
(declare-fun img@68@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
; Check receiver injectivity
(push) ; 3
(assert (not (forall ((s1@66@01 $Ref) (s2@66@01 $Ref)) (!
  (=>
    (and
      (Set_in s1@66@01 S@55@01)
      (Set_in s2@66@01 S@55@01)
      (= s1@66@01 s2@66@01))
    (= s1@66@01 s2@66@01))
  
  :qid |f-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((s@66@01 $Ref)) (!
  (=>
    (Set_in s@66@01 S@55@01)
    (and (= (inv@67@01 s@66@01) s@66@01) (img@68@01 s@66@01)))
  :pattern ((Set_in s@66@01 S@55@01))
  :pattern ((inv@67@01 s@66@01))
  :pattern ((img@68@01 s@66@01))
  :qid |quant-u-13185|)))
(assert (forall ((r $Ref)) (!
  (=> (and (img@68@01 r) (Set_in (inv@67@01 r) S@55@01)) (= (inv@67@01 r) r))
  :pattern ((inv@67@01 r))
  :qid |f-fctOfInv|)))
; Permissions are non-negative
; Field permissions are at most one
; Permission implies non-null receiver
(assert (forall ((s@66@01 $Ref)) (!
  (=> (Set_in s@66@01 S@55@01) (not (= s@66@01 $Ref.null)))
  :pattern ((Set_in s@66@01 S@55@01))
  :pattern ((inv@67@01 s@66@01))
  :pattern ((img@68@01 s@66@01))
  :qid |f-permImpliesNonNull|)))
(assert (=
  ($Snap.second $t@65@01)
  ($Snap.combine
    ($Snap.first ($Snap.second $t@65@01))
    ($Snap.second ($Snap.second $t@65@01)))))
(assert (= ($Snap.first ($Snap.second $t@65@01)) $Snap.unit))
; [eval] (forall s1: Ref, s2: Ref :: { (s1 in S), (s2 in S) } (s1 in S) && ((s2 in S) && s1 != s2) ==> s1.f != s2.f)
(declare-const s1@69@01 $Ref)
(declare-const s2@70@01 $Ref)
(push) ; 3
; [eval] (s1 in S) && ((s2 in S) && s1 != s2) ==> s1.f != s2.f
; [eval] (s1 in S) && ((s2 in S) && s1 != s2)
; [eval] (s1 in S)
(push) ; 4
; [then-branch: 6 | !(s1@69@01 in S@55@01) | live]
; [else-branch: 6 | s1@69@01 in S@55@01 | live]
(push) ; 5
; [then-branch: 6 | !(s1@69@01 in S@55@01)]
(assert (not (Set_in s1@69@01 S@55@01)))
(pop) ; 5
(push) ; 5
; [else-branch: 6 | s1@69@01 in S@55@01]
(assert (Set_in s1@69@01 S@55@01))
; [eval] (s2 in S)
(push) ; 6
; [then-branch: 7 | !(s2@70@01 in S@55@01) | live]
; [else-branch: 7 | s2@70@01 in S@55@01 | live]
(push) ; 7
; [then-branch: 7 | !(s2@70@01 in S@55@01)]
(assert (not (Set_in s2@70@01 S@55@01)))
(pop) ; 7
(push) ; 7
; [else-branch: 7 | s2@70@01 in S@55@01]
(assert (Set_in s2@70@01 S@55@01))
; [eval] s1 != s2
(pop) ; 7
(pop) ; 6
; Joined path conditions
; Joined path conditions
(assert (or (Set_in s2@70@01 S@55@01) (not (Set_in s2@70@01 S@55@01))))
(pop) ; 5
(pop) ; 4
; Joined path conditions
; Joined path conditions
(assert (=>
  (Set_in s1@69@01 S@55@01)
  (and
    (Set_in s1@69@01 S@55@01)
    (or (Set_in s2@70@01 S@55@01) (not (Set_in s2@70@01 S@55@01))))))
(assert (or (Set_in s1@69@01 S@55@01) (not (Set_in s1@69@01 S@55@01))))
(push) ; 4
; [then-branch: 8 | s1@69@01 in S@55@01 && s2@70@01 in S@55@01 && s1@69@01 != s2@70@01 | live]
; [else-branch: 8 | !(s1@69@01 in S@55@01 && s2@70@01 in S@55@01 && s1@69@01 != s2@70@01) | live]
(push) ; 5
; [then-branch: 8 | s1@69@01 in S@55@01 && s2@70@01 in S@55@01 && s1@69@01 != s2@70@01]
(assert (and
  (Set_in s1@69@01 S@55@01)
  (and (Set_in s2@70@01 S@55@01) (not (= s1@69@01 s2@70@01)))))
; [eval] s1.f != s2.f
(push) ; 6
(assert (not (and (img@68@01 s1@69@01) (Set_in (inv@67@01 s1@69@01) S@55@01))))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(push) ; 6
(assert (not (and (img@68@01 s2@70@01) (Set_in (inv@67@01 s2@70@01) S@55@01))))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(pop) ; 5
(push) ; 5
; [else-branch: 8 | !(s1@69@01 in S@55@01 && s2@70@01 in S@55@01 && s1@69@01 != s2@70@01)]
(assert (not
  (and
    (Set_in s1@69@01 S@55@01)
    (and (Set_in s2@70@01 S@55@01) (not (= s1@69@01 s2@70@01))))))
(pop) ; 5
(pop) ; 4
; Joined path conditions
(assert (=>
  (and
    (Set_in s1@69@01 S@55@01)
    (and (Set_in s2@70@01 S@55@01) (not (= s1@69@01 s2@70@01))))
  (and
    (Set_in s1@69@01 S@55@01)
    (Set_in s2@70@01 S@55@01)
    (not (= s1@69@01 s2@70@01)))))
; Joined path conditions
(assert (or
  (not
    (and
      (Set_in s1@69@01 S@55@01)
      (and (Set_in s2@70@01 S@55@01) (not (= s1@69@01 s2@70@01)))))
  (and
    (Set_in s1@69@01 S@55@01)
    (and (Set_in s2@70@01 S@55@01) (not (= s1@69@01 s2@70@01))))))
(pop) ; 3
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall ((s1@69@01 $Ref) (s2@70@01 $Ref)) (!
  (and
    (=>
      (Set_in s1@69@01 S@55@01)
      (and
        (Set_in s1@69@01 S@55@01)
        (or (Set_in s2@70@01 S@55@01) (not (Set_in s2@70@01 S@55@01)))))
    (or (Set_in s1@69@01 S@55@01) (not (Set_in s1@69@01 S@55@01)))
    (=>
      (and
        (Set_in s1@69@01 S@55@01)
        (and (Set_in s2@70@01 S@55@01) (not (= s1@69@01 s2@70@01))))
      (and
        (Set_in s1@69@01 S@55@01)
        (Set_in s2@70@01 S@55@01)
        (not (= s1@69@01 s2@70@01))))
    (or
      (not
        (and
          (Set_in s1@69@01 S@55@01)
          (and (Set_in s2@70@01 S@55@01) (not (= s1@69@01 s2@70@01)))))
      (and
        (Set_in s1@69@01 S@55@01)
        (and (Set_in s2@70@01 S@55@01) (not (= s1@69@01 s2@70@01))))))
  :pattern ((Set_in s1@69@01 S@55@01) (Set_in s2@70@01 S@55@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/issues/issue_0066.vpr@35@11@35@87-aux|)))
(assert (forall ((s1@69@01 $Ref) (s2@70@01 $Ref)) (!
  (=>
    (and
      (Set_in s1@69@01 S@55@01)
      (and (Set_in s2@70@01 S@55@01) (not (= s1@69@01 s2@70@01))))
    (not
      (=
        ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@65@01)) s1@69@01)
        ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@65@01)) s2@70@01))))
  :pattern ((Set_in s1@69@01 S@55@01) (Set_in s2@70@01 S@55@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/issues/issue_0066.vpr@35@11@35@87|)))
(declare-const s@71@01 $Ref)
(push) ; 3
; [eval] (s in S)
(assert (Set_in s@71@01 S@55@01))
(push) ; 4
(assert (not (and (img@68@01 s@71@01) (Set_in (inv@67@01 s@71@01) S@55@01))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(pop) ; 3
(declare-fun inv@72@01 ($Ref) $Ref)
(declare-fun img@73@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
; Check receiver injectivity
(push) ; 3
(assert (not (forall ((s1@71@01 $Ref) (s2@71@01 $Ref)) (!
  (=>
    (and
      (Set_in s1@71@01 S@55@01)
      (Set_in s2@71@01 S@55@01)
      (=
        ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@65@01)) s1@71@01)
        ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@65@01)) s2@71@01)))
    (= s1@71@01 s2@71@01))
  
  :qid |g-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((s@71@01 $Ref)) (!
  (=>
    (Set_in s@71@01 S@55@01)
    (and
      (=
        (inv@72@01 ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@65@01)) s@71@01))
        s@71@01)
      (img@73@01 ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@65@01)) s@71@01))))
  :pattern (($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@65@01)) s@71@01))
  :qid |quant-u-13187|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@73@01 r) (Set_in (inv@72@01 r) S@55@01))
    (=
      ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@65@01)) (inv@72@01 r))
      r))
  :pattern ((inv@72@01 r))
  :qid |g-fctOfInv|)))
; Permissions are non-negative
; Field permissions are at most one
; Permission implies non-null receiver
(assert (forall ((s@71@01 $Ref)) (!
  (=>
    (Set_in s@71@01 S@55@01)
    (not
      (=
        ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@65@01)) s@71@01)
        $Ref.null)))
  :pattern (($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@65@01)) s@71@01))
  :qid |g-permImpliesNonNull|)))
(pop) ; 2
(push) ; 2
(declare-const s@74@01 $Ref)
(push) ; 3
; [eval] (s in S)
(assert (Set_in s@74@01 S@55@01))
(pop) ; 3
(declare-fun inv@75@01 ($Ref) $Ref)
(declare-fun img@76@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
; Check receiver injectivity
(push) ; 3
(assert (not (forall ((s1@74@01 $Ref) (s2@74@01 $Ref)) (!
  (=>
    (and
      (Set_in s1@74@01 S@55@01)
      (Set_in s2@74@01 S@55@01)
      (= s1@74@01 s2@74@01))
    (= s1@74@01 s2@74@01))
  
  :qid |f-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((s@74@01 $Ref)) (!
  (=>
    (Set_in s@74@01 S@55@01)
    (and (= (inv@75@01 s@74@01) s@74@01) (img@76@01 s@74@01)))
  :pattern ((Set_in s@74@01 S@55@01))
  :pattern ((inv@75@01 s@74@01))
  :pattern ((img@76@01 s@74@01))
  :qid |f-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=> (and (img@76@01 r) (Set_in (inv@75@01 r) S@55@01)) (= (inv@75@01 r) r))
  :pattern ((inv@75@01 r))
  :qid |f-fctOfInv|)))
; Precomputing data for removing quantified permissions
(define-fun pTaken@77@01 ((r $Ref)) $Perm
  (ite
    (and (Set_in (inv@75@01 r) S@55@01) (img@76@01 r) (= r (inv@75@01 r)))
    ($Perm.min
      (ite
        (and (img@59@01 r) (Set_in (inv@58@01 r) S@55@01))
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
        (and (img@59@01 r) (Set_in (inv@58@01 r) S@55@01))
        $Perm.Write
        $Perm.No)
      (pTaken@77@01 r))
    $Perm.No)
  
  :qid |quant-u-13190|))))
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
    (and (Set_in (inv@75@01 r) S@55@01) (img@76@01 r) (= r (inv@75@01 r)))
    (= (- $Perm.Write (pTaken@77@01 r)) $Perm.No))
  
  :qid |quant-u-13191|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Final check if taken enough permissions
; Done removing quantified permissions
; [eval] (forall s1: Ref, s2: Ref :: { (s1 in S), (s2 in S) } (s1 in S) && ((s2 in S) && s1 != s2) ==> s1.f != s2.f)
(declare-const s1@78@01 $Ref)
(declare-const s2@79@01 $Ref)
(set-option :timeout 0)
(push) ; 3
; [eval] (s1 in S) && ((s2 in S) && s1 != s2) ==> s1.f != s2.f
; [eval] (s1 in S) && ((s2 in S) && s1 != s2)
; [eval] (s1 in S)
(push) ; 4
; [then-branch: 9 | !(s1@78@01 in S@55@01) | live]
; [else-branch: 9 | s1@78@01 in S@55@01 | live]
(push) ; 5
; [then-branch: 9 | !(s1@78@01 in S@55@01)]
(assert (not (Set_in s1@78@01 S@55@01)))
(pop) ; 5
(push) ; 5
; [else-branch: 9 | s1@78@01 in S@55@01]
(assert (Set_in s1@78@01 S@55@01))
; [eval] (s2 in S)
(push) ; 6
; [then-branch: 10 | !(s2@79@01 in S@55@01) | live]
; [else-branch: 10 | s2@79@01 in S@55@01 | live]
(push) ; 7
; [then-branch: 10 | !(s2@79@01 in S@55@01)]
(assert (not (Set_in s2@79@01 S@55@01)))
(pop) ; 7
(push) ; 7
; [else-branch: 10 | s2@79@01 in S@55@01]
(assert (Set_in s2@79@01 S@55@01))
; [eval] s1 != s2
(pop) ; 7
(pop) ; 6
; Joined path conditions
; Joined path conditions
(assert (or (Set_in s2@79@01 S@55@01) (not (Set_in s2@79@01 S@55@01))))
(pop) ; 5
(pop) ; 4
; Joined path conditions
; Joined path conditions
(assert (=>
  (Set_in s1@78@01 S@55@01)
  (and
    (Set_in s1@78@01 S@55@01)
    (or (Set_in s2@79@01 S@55@01) (not (Set_in s2@79@01 S@55@01))))))
(assert (or (Set_in s1@78@01 S@55@01) (not (Set_in s1@78@01 S@55@01))))
(push) ; 4
; [then-branch: 11 | s1@78@01 in S@55@01 && s2@79@01 in S@55@01 && s1@78@01 != s2@79@01 | live]
; [else-branch: 11 | !(s1@78@01 in S@55@01 && s2@79@01 in S@55@01 && s1@78@01 != s2@79@01) | live]
(push) ; 5
; [then-branch: 11 | s1@78@01 in S@55@01 && s2@79@01 in S@55@01 && s1@78@01 != s2@79@01]
(assert (and
  (Set_in s1@78@01 S@55@01)
  (and (Set_in s2@79@01 S@55@01) (not (= s1@78@01 s2@79@01)))))
; [eval] s1.f != s2.f
(push) ; 6
(assert (not (and (img@59@01 s1@78@01) (Set_in (inv@58@01 s1@78@01) S@55@01))))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(push) ; 6
(assert (not (and (img@59@01 s2@79@01) (Set_in (inv@58@01 s2@79@01) S@55@01))))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(pop) ; 5
(push) ; 5
; [else-branch: 11 | !(s1@78@01 in S@55@01 && s2@79@01 in S@55@01 && s1@78@01 != s2@79@01)]
(assert (not
  (and
    (Set_in s1@78@01 S@55@01)
    (and (Set_in s2@79@01 S@55@01) (not (= s1@78@01 s2@79@01))))))
(pop) ; 5
(pop) ; 4
; Joined path conditions
(assert (=>
  (and
    (Set_in s1@78@01 S@55@01)
    (and (Set_in s2@79@01 S@55@01) (not (= s1@78@01 s2@79@01))))
  (and
    (Set_in s1@78@01 S@55@01)
    (Set_in s2@79@01 S@55@01)
    (not (= s1@78@01 s2@79@01)))))
; Joined path conditions
(assert (or
  (not
    (and
      (Set_in s1@78@01 S@55@01)
      (and (Set_in s2@79@01 S@55@01) (not (= s1@78@01 s2@79@01)))))
  (and
    (Set_in s1@78@01 S@55@01)
    (and (Set_in s2@79@01 S@55@01) (not (= s1@78@01 s2@79@01))))))
(pop) ; 3
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall ((s1@78@01 $Ref) (s2@79@01 $Ref)) (!
  (and
    (=>
      (Set_in s1@78@01 S@55@01)
      (and
        (Set_in s1@78@01 S@55@01)
        (or (Set_in s2@79@01 S@55@01) (not (Set_in s2@79@01 S@55@01)))))
    (or (Set_in s1@78@01 S@55@01) (not (Set_in s1@78@01 S@55@01)))
    (=>
      (and
        (Set_in s1@78@01 S@55@01)
        (and (Set_in s2@79@01 S@55@01) (not (= s1@78@01 s2@79@01))))
      (and
        (Set_in s1@78@01 S@55@01)
        (Set_in s2@79@01 S@55@01)
        (not (= s1@78@01 s2@79@01))))
    (or
      (not
        (and
          (Set_in s1@78@01 S@55@01)
          (and (Set_in s2@79@01 S@55@01) (not (= s1@78@01 s2@79@01)))))
      (and
        (Set_in s1@78@01 S@55@01)
        (and (Set_in s2@79@01 S@55@01) (not (= s1@78@01 s2@79@01))))))
  :pattern ((Set_in s1@78@01 S@55@01) (Set_in s2@79@01 S@55@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/issues/issue_0066.vpr@35@11@35@87-aux|)))
(push) ; 3
(assert (not (forall ((s1@78@01 $Ref) (s2@79@01 $Ref)) (!
  (=>
    (and
      (Set_in s1@78@01 S@55@01)
      (and (Set_in s2@79@01 S@55@01) (not (= s1@78@01 s2@79@01))))
    (not
      (=
        ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@56@01)) s1@78@01)
        ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@56@01)) s2@79@01))))
  :pattern ((Set_in s1@78@01 S@55@01) (Set_in s2@79@01 S@55@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/issues/issue_0066.vpr@35@11@35@87|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(assert (forall ((s1@78@01 $Ref) (s2@79@01 $Ref)) (!
  (=>
    (and
      (Set_in s1@78@01 S@55@01)
      (and (Set_in s2@79@01 S@55@01) (not (= s1@78@01 s2@79@01))))
    (not
      (=
        ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@56@01)) s1@78@01)
        ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@56@01)) s2@79@01))))
  :pattern ((Set_in s1@78@01 S@55@01) (Set_in s2@79@01 S@55@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/issues/issue_0066.vpr@35@11@35@87|)))
(declare-const s@80@01 $Ref)
(push) ; 3
; [eval] (s in S)
(assert (Set_in s@80@01 S@55@01))
(push) ; 4
(assert (not (and (img@59@01 s@80@01) (Set_in (inv@58@01 s@80@01) S@55@01))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(pop) ; 3
(declare-fun inv@81@01 ($Ref) $Ref)
(declare-fun img@82@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
; Check receiver injectivity
(push) ; 3
(assert (not (forall ((s1@80@01 $Ref) (s2@80@01 $Ref)) (!
  (=>
    (and
      (Set_in s1@80@01 S@55@01)
      (Set_in s2@80@01 S@55@01)
      (=
        ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@56@01)) s1@80@01)
        ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@56@01)) s2@80@01)))
    (= s1@80@01 s2@80@01))
  
  :qid |g-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((s@80@01 $Ref)) (!
  (=>
    (Set_in s@80@01 S@55@01)
    (and
      (=
        (inv@81@01 ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@56@01)) s@80@01))
        s@80@01)
      (img@82@01 ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@56@01)) s@80@01))))
  :pattern (($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@56@01)) s@80@01))
  :qid |g-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@82@01 r) (Set_in (inv@81@01 r) S@55@01))
    (=
      ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@56@01)) (inv@81@01 r))
      r))
  :pattern ((inv@81@01 r))
  :qid |g-fctOfInv|)))
; Precomputing data for removing quantified permissions
(define-fun pTaken@83@01 ((r $Ref)) $Perm
  (ite
    (and
      (Set_in (inv@81@01 r) S@55@01)
      (img@82@01 r)
      (=
        r
        ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@56@01)) (inv@81@01 r))))
    ($Perm.min
      (ite
        (and (img@64@01 r) (Set_in (inv@63@01 r) S@55@01))
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
        (and (img@64@01 r) (Set_in (inv@63@01 r) S@55@01))
        $Perm.Write
        $Perm.No)
      (pTaken@83@01 r))
    $Perm.No)
  
  :qid |quant-u-13194|))))
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
      (Set_in (inv@81@01 r) S@55@01)
      (img@82@01 r)
      (=
        r
        ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@56@01)) (inv@81@01 r))))
    (= (- $Perm.Write (pTaken@83@01 r)) $Perm.No))
  
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
; ---------- test02 ----------
(declare-const S@84@01 Set<$Ref>)
(declare-const S@85@01 Set<$Ref>)
(set-option :timeout 0)
(push) ; 1
(declare-const $t@86@01 $Snap)
(assert (= $t@86@01 ($Snap.combine ($Snap.first $t@86@01) ($Snap.second $t@86@01))))
(declare-const s@87@01 $Ref)
(push) ; 2
; [eval] (s in S)
(assert (Set_in s@87@01 S@85@01))
(pop) ; 2
(declare-fun inv@88@01 ($Ref) $Ref)
(declare-fun img@89@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
; Check receiver injectivity
(push) ; 2
(assert (not (forall ((s1@87@01 $Ref) (s2@87@01 $Ref)) (!
  (=>
    (and
      (Set_in s1@87@01 S@85@01)
      (Set_in s2@87@01 S@85@01)
      (= s1@87@01 s2@87@01))
    (= s1@87@01 s2@87@01))
  
  :qid |f-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 2
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((s@87@01 $Ref)) (!
  (=>
    (Set_in s@87@01 S@85@01)
    (and (= (inv@88@01 s@87@01) s@87@01) (img@89@01 s@87@01)))
  :pattern ((Set_in s@87@01 S@85@01))
  :pattern ((inv@88@01 s@87@01))
  :pattern ((img@89@01 s@87@01))
  :qid |quant-u-13197|)))
(assert (forall ((r $Ref)) (!
  (=> (and (img@89@01 r) (Set_in (inv@88@01 r) S@85@01)) (= (inv@88@01 r) r))
  :pattern ((inv@88@01 r))
  :qid |f-fctOfInv|)))
; Permissions are non-negative
; Field permissions are at most one
; Permission implies non-null receiver
(assert (forall ((s@87@01 $Ref)) (!
  (=> (Set_in s@87@01 S@85@01) (not (= s@87@01 $Ref.null)))
  :pattern ((Set_in s@87@01 S@85@01))
  :pattern ((inv@88@01 s@87@01))
  :pattern ((img@89@01 s@87@01))
  :qid |f-permImpliesNonNull|)))
(assert (=
  ($Snap.second $t@86@01)
  ($Snap.combine
    ($Snap.first ($Snap.second $t@86@01))
    ($Snap.second ($Snap.second $t@86@01)))))
(assert (= ($Snap.first ($Snap.second $t@86@01)) $Snap.unit))
; [eval] (forall s1: Ref, s2: Ref :: { (s1 in S), (s2 in S) } (s1 in S) && ((s2 in S) && s1 != s2) ==> s1.f != s2.f)
(declare-const s1@90@01 $Ref)
(declare-const s2@91@01 $Ref)
(push) ; 2
; [eval] (s1 in S) && ((s2 in S) && s1 != s2) ==> s1.f != s2.f
; [eval] (s1 in S) && ((s2 in S) && s1 != s2)
; [eval] (s1 in S)
(push) ; 3
; [then-branch: 12 | !(s1@90@01 in S@85@01) | live]
; [else-branch: 12 | s1@90@01 in S@85@01 | live]
(push) ; 4
; [then-branch: 12 | !(s1@90@01 in S@85@01)]
(assert (not (Set_in s1@90@01 S@85@01)))
(pop) ; 4
(push) ; 4
; [else-branch: 12 | s1@90@01 in S@85@01]
(assert (Set_in s1@90@01 S@85@01))
; [eval] (s2 in S)
(push) ; 5
; [then-branch: 13 | !(s2@91@01 in S@85@01) | live]
; [else-branch: 13 | s2@91@01 in S@85@01 | live]
(push) ; 6
; [then-branch: 13 | !(s2@91@01 in S@85@01)]
(assert (not (Set_in s2@91@01 S@85@01)))
(pop) ; 6
(push) ; 6
; [else-branch: 13 | s2@91@01 in S@85@01]
(assert (Set_in s2@91@01 S@85@01))
; [eval] s1 != s2
(pop) ; 6
(pop) ; 5
; Joined path conditions
; Joined path conditions
(assert (or (Set_in s2@91@01 S@85@01) (not (Set_in s2@91@01 S@85@01))))
(pop) ; 4
(pop) ; 3
; Joined path conditions
; Joined path conditions
(assert (=>
  (Set_in s1@90@01 S@85@01)
  (and
    (Set_in s1@90@01 S@85@01)
    (or (Set_in s2@91@01 S@85@01) (not (Set_in s2@91@01 S@85@01))))))
(assert (or (Set_in s1@90@01 S@85@01) (not (Set_in s1@90@01 S@85@01))))
(push) ; 3
; [then-branch: 14 | s1@90@01 in S@85@01 && s2@91@01 in S@85@01 && s1@90@01 != s2@91@01 | live]
; [else-branch: 14 | !(s1@90@01 in S@85@01 && s2@91@01 in S@85@01 && s1@90@01 != s2@91@01) | live]
(push) ; 4
; [then-branch: 14 | s1@90@01 in S@85@01 && s2@91@01 in S@85@01 && s1@90@01 != s2@91@01]
(assert (and
  (Set_in s1@90@01 S@85@01)
  (and (Set_in s2@91@01 S@85@01) (not (= s1@90@01 s2@91@01)))))
; [eval] s1.f != s2.f
(push) ; 5
(assert (not (and (img@89@01 s1@90@01) (Set_in (inv@88@01 s1@90@01) S@85@01))))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(push) ; 5
(assert (not (and (img@89@01 s2@91@01) (Set_in (inv@88@01 s2@91@01) S@85@01))))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(pop) ; 4
(push) ; 4
; [else-branch: 14 | !(s1@90@01 in S@85@01 && s2@91@01 in S@85@01 && s1@90@01 != s2@91@01)]
(assert (not
  (and
    (Set_in s1@90@01 S@85@01)
    (and (Set_in s2@91@01 S@85@01) (not (= s1@90@01 s2@91@01))))))
(pop) ; 4
(pop) ; 3
; Joined path conditions
(assert (=>
  (and
    (Set_in s1@90@01 S@85@01)
    (and (Set_in s2@91@01 S@85@01) (not (= s1@90@01 s2@91@01))))
  (and
    (Set_in s1@90@01 S@85@01)
    (Set_in s2@91@01 S@85@01)
    (not (= s1@90@01 s2@91@01)))))
; Joined path conditions
(assert (or
  (not
    (and
      (Set_in s1@90@01 S@85@01)
      (and (Set_in s2@91@01 S@85@01) (not (= s1@90@01 s2@91@01)))))
  (and
    (Set_in s1@90@01 S@85@01)
    (and (Set_in s2@91@01 S@85@01) (not (= s1@90@01 s2@91@01))))))
(pop) ; 2
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall ((s1@90@01 $Ref) (s2@91@01 $Ref)) (!
  (and
    (=>
      (Set_in s1@90@01 S@85@01)
      (and
        (Set_in s1@90@01 S@85@01)
        (or (Set_in s2@91@01 S@85@01) (not (Set_in s2@91@01 S@85@01)))))
    (or (Set_in s1@90@01 S@85@01) (not (Set_in s1@90@01 S@85@01)))
    (=>
      (and
        (Set_in s1@90@01 S@85@01)
        (and (Set_in s2@91@01 S@85@01) (not (= s1@90@01 s2@91@01))))
      (and
        (Set_in s1@90@01 S@85@01)
        (Set_in s2@91@01 S@85@01)
        (not (= s1@90@01 s2@91@01))))
    (or
      (not
        (and
          (Set_in s1@90@01 S@85@01)
          (and (Set_in s2@91@01 S@85@01) (not (= s1@90@01 s2@91@01)))))
      (and
        (Set_in s1@90@01 S@85@01)
        (and (Set_in s2@91@01 S@85@01) (not (= s1@90@01 s2@91@01))))))
  :pattern ((Set_in s1@90@01 S@85@01) (Set_in s2@91@01 S@85@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/issues/issue_0066.vpr@41@12@41@88-aux|)))
(assert (forall ((s1@90@01 $Ref) (s2@91@01 $Ref)) (!
  (=>
    (and
      (Set_in s1@90@01 S@85@01)
      (and (Set_in s2@91@01 S@85@01) (not (= s1@90@01 s2@91@01))))
    (not
      (=
        ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@86@01)) s1@90@01)
        ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@86@01)) s2@91@01))))
  :pattern ((Set_in s1@90@01 S@85@01) (Set_in s2@91@01 S@85@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/issues/issue_0066.vpr@41@12@41@88|)))
(declare-const s@92@01 $Ref)
(push) ; 2
; [eval] (s in S)
(assert (Set_in s@92@01 S@85@01))
(push) ; 3
(assert (not (and (img@89@01 s@92@01) (Set_in (inv@88@01 s@92@01) S@85@01))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(pop) ; 2
(declare-fun inv@93@01 ($Ref) $Ref)
(declare-fun img@94@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
; Check receiver injectivity
(push) ; 2
(assert (not (forall ((s1@92@01 $Ref) (s2@92@01 $Ref)) (!
  (=>
    (and
      (Set_in s1@92@01 S@85@01)
      (Set_in s2@92@01 S@85@01)
      (=
        ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@86@01)) s1@92@01)
        ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@86@01)) s2@92@01)))
    (= s1@92@01 s2@92@01))
  
  :qid |g-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 2
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((s@92@01 $Ref)) (!
  (=>
    (Set_in s@92@01 S@85@01)
    (and
      (=
        (inv@93@01 ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@86@01)) s@92@01))
        s@92@01)
      (img@94@01 ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@86@01)) s@92@01))))
  :pattern (($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@86@01)) s@92@01))
  :qid |quant-u-13199|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@94@01 r) (Set_in (inv@93@01 r) S@85@01))
    (=
      ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@86@01)) (inv@93@01 r))
      r))
  :pattern ((inv@93@01 r))
  :qid |g-fctOfInv|)))
; Permissions are non-negative
; Field permissions are at most one
; Permission implies non-null receiver
(assert (forall ((s@92@01 $Ref)) (!
  (=>
    (Set_in s@92@01 S@85@01)
    (not
      (=
        ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@86@01)) s@92@01)
        $Ref.null)))
  :pattern (($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@86@01)) s@92@01))
  :qid |g-permImpliesNonNull|)))
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
(set-option :timeout 0)
(push) ; 2
(declare-const $t@95@01 $Snap)
(assert (= $t@95@01 ($Snap.combine ($Snap.first $t@95@01) ($Snap.second $t@95@01))))
(declare-const s@96@01 $Ref)
(push) ; 3
; [eval] (s in S)
(assert (Set_in s@96@01 S@85@01))
(pop) ; 3
(declare-fun inv@97@01 ($Ref) $Ref)
(declare-fun img@98@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
; Check receiver injectivity
(push) ; 3
(assert (not (forall ((s1@96@01 $Ref) (s2@96@01 $Ref)) (!
  (=>
    (and
      (Set_in s1@96@01 S@85@01)
      (Set_in s2@96@01 S@85@01)
      (= s1@96@01 s2@96@01))
    (= s1@96@01 s2@96@01))
  
  :qid |f-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((s@96@01 $Ref)) (!
  (=>
    (Set_in s@96@01 S@85@01)
    (and (= (inv@97@01 s@96@01) s@96@01) (img@98@01 s@96@01)))
  :pattern ((Set_in s@96@01 S@85@01))
  :pattern ((inv@97@01 s@96@01))
  :pattern ((img@98@01 s@96@01))
  :qid |quant-u-13201|)))
(assert (forall ((r $Ref)) (!
  (=> (and (img@98@01 r) (Set_in (inv@97@01 r) S@85@01)) (= (inv@97@01 r) r))
  :pattern ((inv@97@01 r))
  :qid |f-fctOfInv|)))
; Permissions are non-negative
; Field permissions are at most one
; Permission implies non-null receiver
(assert (forall ((s@96@01 $Ref)) (!
  (=> (Set_in s@96@01 S@85@01) (not (= s@96@01 $Ref.null)))
  :pattern ((Set_in s@96@01 S@85@01))
  :pattern ((inv@97@01 s@96@01))
  :pattern ((img@98@01 s@96@01))
  :qid |f-permImpliesNonNull|)))
(assert (=
  ($Snap.second $t@95@01)
  ($Snap.combine
    ($Snap.first ($Snap.second $t@95@01))
    ($Snap.second ($Snap.second $t@95@01)))))
(assert (= ($Snap.first ($Snap.second $t@95@01)) $Snap.unit))
; [eval] (forall s1: Ref, s2: Ref :: { (s1 in S), (s2 in S) } (s1 in S) && ((s2 in S) && s1 != s2) ==> s1.f != s2.f)
(declare-const s1@99@01 $Ref)
(declare-const s2@100@01 $Ref)
(push) ; 3
; [eval] (s1 in S) && ((s2 in S) && s1 != s2) ==> s1.f != s2.f
; [eval] (s1 in S) && ((s2 in S) && s1 != s2)
; [eval] (s1 in S)
(push) ; 4
; [then-branch: 15 | !(s1@99@01 in S@85@01) | live]
; [else-branch: 15 | s1@99@01 in S@85@01 | live]
(push) ; 5
; [then-branch: 15 | !(s1@99@01 in S@85@01)]
(assert (not (Set_in s1@99@01 S@85@01)))
(pop) ; 5
(push) ; 5
; [else-branch: 15 | s1@99@01 in S@85@01]
(assert (Set_in s1@99@01 S@85@01))
; [eval] (s2 in S)
(push) ; 6
; [then-branch: 16 | !(s2@100@01 in S@85@01) | live]
; [else-branch: 16 | s2@100@01 in S@85@01 | live]
(push) ; 7
; [then-branch: 16 | !(s2@100@01 in S@85@01)]
(assert (not (Set_in s2@100@01 S@85@01)))
(pop) ; 7
(push) ; 7
; [else-branch: 16 | s2@100@01 in S@85@01]
(assert (Set_in s2@100@01 S@85@01))
; [eval] s1 != s2
(pop) ; 7
(pop) ; 6
; Joined path conditions
; Joined path conditions
(assert (or (Set_in s2@100@01 S@85@01) (not (Set_in s2@100@01 S@85@01))))
(pop) ; 5
(pop) ; 4
; Joined path conditions
; Joined path conditions
(assert (=>
  (Set_in s1@99@01 S@85@01)
  (and
    (Set_in s1@99@01 S@85@01)
    (or (Set_in s2@100@01 S@85@01) (not (Set_in s2@100@01 S@85@01))))))
(assert (or (Set_in s1@99@01 S@85@01) (not (Set_in s1@99@01 S@85@01))))
(push) ; 4
; [then-branch: 17 | s1@99@01 in S@85@01 && s2@100@01 in S@85@01 && s1@99@01 != s2@100@01 | live]
; [else-branch: 17 | !(s1@99@01 in S@85@01 && s2@100@01 in S@85@01 && s1@99@01 != s2@100@01) | live]
(push) ; 5
; [then-branch: 17 | s1@99@01 in S@85@01 && s2@100@01 in S@85@01 && s1@99@01 != s2@100@01]
(assert (and
  (Set_in s1@99@01 S@85@01)
  (and (Set_in s2@100@01 S@85@01) (not (= s1@99@01 s2@100@01)))))
; [eval] s1.f != s2.f
(push) ; 6
(assert (not (and (img@98@01 s1@99@01) (Set_in (inv@97@01 s1@99@01) S@85@01))))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(push) ; 6
(assert (not (and (img@98@01 s2@100@01) (Set_in (inv@97@01 s2@100@01) S@85@01))))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(pop) ; 5
(push) ; 5
; [else-branch: 17 | !(s1@99@01 in S@85@01 && s2@100@01 in S@85@01 && s1@99@01 != s2@100@01)]
(assert (not
  (and
    (Set_in s1@99@01 S@85@01)
    (and (Set_in s2@100@01 S@85@01) (not (= s1@99@01 s2@100@01))))))
(pop) ; 5
(pop) ; 4
; Joined path conditions
(assert (=>
  (and
    (Set_in s1@99@01 S@85@01)
    (and (Set_in s2@100@01 S@85@01) (not (= s1@99@01 s2@100@01))))
  (and
    (Set_in s1@99@01 S@85@01)
    (Set_in s2@100@01 S@85@01)
    (not (= s1@99@01 s2@100@01)))))
; Joined path conditions
(assert (or
  (not
    (and
      (Set_in s1@99@01 S@85@01)
      (and (Set_in s2@100@01 S@85@01) (not (= s1@99@01 s2@100@01)))))
  (and
    (Set_in s1@99@01 S@85@01)
    (and (Set_in s2@100@01 S@85@01) (not (= s1@99@01 s2@100@01))))))
(pop) ; 3
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall ((s1@99@01 $Ref) (s2@100@01 $Ref)) (!
  (and
    (=>
      (Set_in s1@99@01 S@85@01)
      (and
        (Set_in s1@99@01 S@85@01)
        (or (Set_in s2@100@01 S@85@01) (not (Set_in s2@100@01 S@85@01)))))
    (or (Set_in s1@99@01 S@85@01) (not (Set_in s1@99@01 S@85@01)))
    (=>
      (and
        (Set_in s1@99@01 S@85@01)
        (and (Set_in s2@100@01 S@85@01) (not (= s1@99@01 s2@100@01))))
      (and
        (Set_in s1@99@01 S@85@01)
        (Set_in s2@100@01 S@85@01)
        (not (= s1@99@01 s2@100@01))))
    (or
      (not
        (and
          (Set_in s1@99@01 S@85@01)
          (and (Set_in s2@100@01 S@85@01) (not (= s1@99@01 s2@100@01)))))
      (and
        (Set_in s1@99@01 S@85@01)
        (and (Set_in s2@100@01 S@85@01) (not (= s1@99@01 s2@100@01))))))
  :pattern ((Set_in s1@99@01 S@85@01) (Set_in s2@100@01 S@85@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/issues/issue_0066.vpr@44@11@44@87-aux|)))
(assert (forall ((s1@99@01 $Ref) (s2@100@01 $Ref)) (!
  (=>
    (and
      (Set_in s1@99@01 S@85@01)
      (and (Set_in s2@100@01 S@85@01) (not (= s1@99@01 s2@100@01))))
    (not
      (=
        ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@95@01)) s1@99@01)
        ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@95@01)) s2@100@01))))
  :pattern ((Set_in s1@99@01 S@85@01) (Set_in s2@100@01 S@85@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/issues/issue_0066.vpr@44@11@44@87|)))
(declare-const s@101@01 $Ref)
(push) ; 3
; [eval] (s in S)
(assert (Set_in s@101@01 S@85@01))
(push) ; 4
(assert (not (and (img@98@01 s@101@01) (Set_in (inv@97@01 s@101@01) S@85@01))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(pop) ; 3
(declare-fun inv@102@01 ($Ref) $Ref)
(declare-fun img@103@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
; Check receiver injectivity
(push) ; 3
(assert (not (forall ((s1@101@01 $Ref) (s2@101@01 $Ref)) (!
  (=>
    (and
      (Set_in s1@101@01 S@85@01)
      (Set_in s2@101@01 S@85@01)
      (=
        ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@95@01)) s1@101@01)
        ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@95@01)) s2@101@01)))
    (= s1@101@01 s2@101@01))
  
  :qid |g-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((s@101@01 $Ref)) (!
  (=>
    (Set_in s@101@01 S@85@01)
    (and
      (=
        (inv@102@01 ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@95@01)) s@101@01))
        s@101@01)
      (img@103@01 ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@95@01)) s@101@01))))
  :pattern (($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@95@01)) s@101@01))
  :qid |quant-u-13203|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@103@01 r) (Set_in (inv@102@01 r) S@85@01))
    (=
      ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@95@01)) (inv@102@01 r))
      r))
  :pattern ((inv@102@01 r))
  :qid |g-fctOfInv|)))
; Permissions are non-negative
; Field permissions are at most one
; Permission implies non-null receiver
(assert (forall ((s@101@01 $Ref)) (!
  (=>
    (Set_in s@101@01 S@85@01)
    (not
      (=
        ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@95@01)) s@101@01)
        $Ref.null)))
  :pattern (($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@95@01)) s@101@01))
  :qid |g-permImpliesNonNull|)))
(pop) ; 2
(push) ; 2
(declare-const s@104@01 $Ref)
(push) ; 3
; [eval] (s in S)
(assert (Set_in s@104@01 S@85@01))
(pop) ; 3
(declare-fun inv@105@01 ($Ref) $Ref)
(declare-fun img@106@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
; Check receiver injectivity
(push) ; 3
(assert (not (forall ((s1@104@01 $Ref) (s2@104@01 $Ref)) (!
  (=>
    (and
      (Set_in s1@104@01 S@85@01)
      (Set_in s2@104@01 S@85@01)
      (= s1@104@01 s2@104@01))
    (= s1@104@01 s2@104@01))
  
  :qid |f-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((s@104@01 $Ref)) (!
  (=>
    (Set_in s@104@01 S@85@01)
    (and (= (inv@105@01 s@104@01) s@104@01) (img@106@01 s@104@01)))
  :pattern ((Set_in s@104@01 S@85@01))
  :pattern ((inv@105@01 s@104@01))
  :pattern ((img@106@01 s@104@01))
  :qid |f-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=> (and (img@106@01 r) (Set_in (inv@105@01 r) S@85@01)) (= (inv@105@01 r) r))
  :pattern ((inv@105@01 r))
  :qid |f-fctOfInv|)))
; Precomputing data for removing quantified permissions
(define-fun pTaken@107@01 ((r $Ref)) $Perm
  (ite
    (and (Set_in (inv@105@01 r) S@85@01) (img@106@01 r) (= r (inv@105@01 r)))
    ($Perm.min
      (ite
        (and (img@89@01 r) (Set_in (inv@88@01 r) S@85@01))
        (/ (to_real 1) (to_real 2))
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
(push) ; 3
(set-option :timeout 500)
(assert (not (forall ((r $Ref)) (!
  (=
    (-
      (ite
        (and (img@89@01 r) (Set_in (inv@88@01 r) S@85@01))
        (/ (to_real 1) (to_real 2))
        $Perm.No)
      (pTaken@107@01 r))
    $Perm.No)
  
  :qid |quant-u-13206|))))
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
    (and (Set_in (inv@105@01 r) S@85@01) (img@106@01 r) (= r (inv@105@01 r)))
    (= (- (/ (to_real 1) (to_real 2)) (pTaken@107@01 r)) $Perm.No))
  
  :qid |quant-u-13207|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Final check if taken enough permissions
; Done removing quantified permissions
; [eval] (forall s1: Ref, s2: Ref :: { (s1 in S), (s2 in S) } (s1 in S) && ((s2 in S) && s1 != s2) ==> s1.f != s2.f)
(declare-const s1@108@01 $Ref)
(declare-const s2@109@01 $Ref)
(set-option :timeout 0)
(push) ; 3
; [eval] (s1 in S) && ((s2 in S) && s1 != s2) ==> s1.f != s2.f
; [eval] (s1 in S) && ((s2 in S) && s1 != s2)
; [eval] (s1 in S)
(push) ; 4
; [then-branch: 18 | !(s1@108@01 in S@85@01) | live]
; [else-branch: 18 | s1@108@01 in S@85@01 | live]
(push) ; 5
; [then-branch: 18 | !(s1@108@01 in S@85@01)]
(assert (not (Set_in s1@108@01 S@85@01)))
(pop) ; 5
(push) ; 5
; [else-branch: 18 | s1@108@01 in S@85@01]
(assert (Set_in s1@108@01 S@85@01))
; [eval] (s2 in S)
(push) ; 6
; [then-branch: 19 | !(s2@109@01 in S@85@01) | live]
; [else-branch: 19 | s2@109@01 in S@85@01 | live]
(push) ; 7
; [then-branch: 19 | !(s2@109@01 in S@85@01)]
(assert (not (Set_in s2@109@01 S@85@01)))
(pop) ; 7
(push) ; 7
; [else-branch: 19 | s2@109@01 in S@85@01]
(assert (Set_in s2@109@01 S@85@01))
; [eval] s1 != s2
(pop) ; 7
(pop) ; 6
; Joined path conditions
; Joined path conditions
(assert (or (Set_in s2@109@01 S@85@01) (not (Set_in s2@109@01 S@85@01))))
(pop) ; 5
(pop) ; 4
; Joined path conditions
; Joined path conditions
(assert (=>
  (Set_in s1@108@01 S@85@01)
  (and
    (Set_in s1@108@01 S@85@01)
    (or (Set_in s2@109@01 S@85@01) (not (Set_in s2@109@01 S@85@01))))))
(assert (or (Set_in s1@108@01 S@85@01) (not (Set_in s1@108@01 S@85@01))))
(push) ; 4
; [then-branch: 20 | s1@108@01 in S@85@01 && s2@109@01 in S@85@01 && s1@108@01 != s2@109@01 | live]
; [else-branch: 20 | !(s1@108@01 in S@85@01 && s2@109@01 in S@85@01 && s1@108@01 != s2@109@01) | live]
(push) ; 5
; [then-branch: 20 | s1@108@01 in S@85@01 && s2@109@01 in S@85@01 && s1@108@01 != s2@109@01]
(assert (and
  (Set_in s1@108@01 S@85@01)
  (and (Set_in s2@109@01 S@85@01) (not (= s1@108@01 s2@109@01)))))
; [eval] s1.f != s2.f
(push) ; 6
(assert (not (and (img@89@01 s1@108@01) (Set_in (inv@88@01 s1@108@01) S@85@01))))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(push) ; 6
(assert (not (and (img@89@01 s2@109@01) (Set_in (inv@88@01 s2@109@01) S@85@01))))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(pop) ; 5
(push) ; 5
; [else-branch: 20 | !(s1@108@01 in S@85@01 && s2@109@01 in S@85@01 && s1@108@01 != s2@109@01)]
(assert (not
  (and
    (Set_in s1@108@01 S@85@01)
    (and (Set_in s2@109@01 S@85@01) (not (= s1@108@01 s2@109@01))))))
(pop) ; 5
(pop) ; 4
; Joined path conditions
(assert (=>
  (and
    (Set_in s1@108@01 S@85@01)
    (and (Set_in s2@109@01 S@85@01) (not (= s1@108@01 s2@109@01))))
  (and
    (Set_in s1@108@01 S@85@01)
    (Set_in s2@109@01 S@85@01)
    (not (= s1@108@01 s2@109@01)))))
; Joined path conditions
(assert (or
  (not
    (and
      (Set_in s1@108@01 S@85@01)
      (and (Set_in s2@109@01 S@85@01) (not (= s1@108@01 s2@109@01)))))
  (and
    (Set_in s1@108@01 S@85@01)
    (and (Set_in s2@109@01 S@85@01) (not (= s1@108@01 s2@109@01))))))
(pop) ; 3
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall ((s1@108@01 $Ref) (s2@109@01 $Ref)) (!
  (and
    (=>
      (Set_in s1@108@01 S@85@01)
      (and
        (Set_in s1@108@01 S@85@01)
        (or (Set_in s2@109@01 S@85@01) (not (Set_in s2@109@01 S@85@01)))))
    (or (Set_in s1@108@01 S@85@01) (not (Set_in s1@108@01 S@85@01)))
    (=>
      (and
        (Set_in s1@108@01 S@85@01)
        (and (Set_in s2@109@01 S@85@01) (not (= s1@108@01 s2@109@01))))
      (and
        (Set_in s1@108@01 S@85@01)
        (Set_in s2@109@01 S@85@01)
        (not (= s1@108@01 s2@109@01))))
    (or
      (not
        (and
          (Set_in s1@108@01 S@85@01)
          (and (Set_in s2@109@01 S@85@01) (not (= s1@108@01 s2@109@01)))))
      (and
        (Set_in s1@108@01 S@85@01)
        (and (Set_in s2@109@01 S@85@01) (not (= s1@108@01 s2@109@01))))))
  :pattern ((Set_in s1@108@01 S@85@01) (Set_in s2@109@01 S@85@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/issues/issue_0066.vpr@44@11@44@87-aux|)))
(push) ; 3
(assert (not (forall ((s1@108@01 $Ref) (s2@109@01 $Ref)) (!
  (=>
    (and
      (Set_in s1@108@01 S@85@01)
      (and (Set_in s2@109@01 S@85@01) (not (= s1@108@01 s2@109@01))))
    (not
      (=
        ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@86@01)) s1@108@01)
        ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@86@01)) s2@109@01))))
  :pattern ((Set_in s1@108@01 S@85@01) (Set_in s2@109@01 S@85@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/issues/issue_0066.vpr@44@11@44@87|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(assert (forall ((s1@108@01 $Ref) (s2@109@01 $Ref)) (!
  (=>
    (and
      (Set_in s1@108@01 S@85@01)
      (and (Set_in s2@109@01 S@85@01) (not (= s1@108@01 s2@109@01))))
    (not
      (=
        ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@86@01)) s1@108@01)
        ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@86@01)) s2@109@01))))
  :pattern ((Set_in s1@108@01 S@85@01) (Set_in s2@109@01 S@85@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/issues/issue_0066.vpr@44@11@44@87|)))
(declare-const s@110@01 $Ref)
(push) ; 3
; [eval] (s in S)
(assert (Set_in s@110@01 S@85@01))
(push) ; 4
(assert (not (and (img@89@01 s@110@01) (Set_in (inv@88@01 s@110@01) S@85@01))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(pop) ; 3
(declare-fun inv@111@01 ($Ref) $Ref)
(declare-fun img@112@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
; Check receiver injectivity
(push) ; 3
(assert (not (forall ((s1@110@01 $Ref) (s2@110@01 $Ref)) (!
  (=>
    (and
      (Set_in s1@110@01 S@85@01)
      (Set_in s2@110@01 S@85@01)
      (=
        ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@86@01)) s1@110@01)
        ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@86@01)) s2@110@01)))
    (= s1@110@01 s2@110@01))
  
  :qid |g-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((s@110@01 $Ref)) (!
  (=>
    (Set_in s@110@01 S@85@01)
    (and
      (=
        (inv@111@01 ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@86@01)) s@110@01))
        s@110@01)
      (img@112@01 ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@86@01)) s@110@01))))
  :pattern (($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@86@01)) s@110@01))
  :qid |g-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@112@01 r) (Set_in (inv@111@01 r) S@85@01))
    (=
      ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@86@01)) (inv@111@01 r))
      r))
  :pattern ((inv@111@01 r))
  :qid |g-fctOfInv|)))
; Precomputing data for removing quantified permissions
(define-fun pTaken@113@01 ((r $Ref)) $Perm
  (ite
    (and
      (Set_in (inv@111@01 r) S@85@01)
      (img@112@01 r)
      (=
        r
        ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@86@01)) (inv@111@01 r))))
    ($Perm.min
      (ite
        (and (img@94@01 r) (Set_in (inv@93@01 r) S@85@01))
        (/ (to_real 1) (to_real 2))
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
(push) ; 3
(set-option :timeout 500)
(assert (not (forall ((r $Ref)) (!
  (=
    (-
      (ite
        (and (img@94@01 r) (Set_in (inv@93@01 r) S@85@01))
        (/ (to_real 1) (to_real 2))
        $Perm.No)
      (pTaken@113@01 r))
    $Perm.No)
  
  :qid |quant-u-13210|))))
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
      (Set_in (inv@111@01 r) S@85@01)
      (img@112@01 r)
      (=
        r
        ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@86@01)) (inv@111@01 r))))
    (= (- (/ (to_real 1) (to_real 2)) (pTaken@113@01 r)) $Perm.No))
  
  :qid |quant-u-13211|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Final check if taken enough permissions
; Done removing quantified permissions
(pop) ; 2
(pop) ; 1
