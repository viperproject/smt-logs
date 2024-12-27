(get-info :version)
; (:version "4.12.1")
; Started: 2024-12-27 01:54:23
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
(declare-sort Set<Bool> 0)
(declare-sort Set<$Ref> 0)
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
(declare-fun $SortWrappers.Set<Bool>To$Snap (Set<Bool>) $Snap)
(declare-fun $SortWrappers.$SnapToSet<Bool> ($Snap) Set<Bool>)
(assert (forall ((x Set<Bool>)) (!
    (= x ($SortWrappers.$SnapToSet<Bool>($SortWrappers.Set<Bool>To$Snap x)))
    :pattern (($SortWrappers.Set<Bool>To$Snap x))
    :qid |$Snap.$SnapToSet<Bool>To$Snap|
    )))
(assert (forall ((x $Snap)) (!
    (= x ($SortWrappers.Set<Bool>To$Snap($SortWrappers.$SnapToSet<Bool> x)))
    :pattern (($SortWrappers.$SnapToSet<Bool> x))
    :qid |$Snap.Set<Bool>To$SnapToSet<Bool>|
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
; ////////// Symbols
(declare-fun Set_card (Set<Bool>) Int)
(declare-const Set_empty Set<Bool>)
(declare-fun Set_in (Bool Set<Bool>) Bool)
(declare-fun Set_singleton (Bool) Set<Bool>)
(declare-fun Set_unionone (Set<Bool> Bool) Set<Bool>)
(declare-fun Set_union (Set<Bool> Set<Bool>) Set<Bool>)
(declare-fun Set_intersection (Set<Bool> Set<Bool>) Set<Bool>)
(declare-fun Set_difference (Set<Bool> Set<Bool>) Set<Bool>)
(declare-fun Set_subset (Set<Bool> Set<Bool>) Bool)
(declare-fun Set_equal (Set<Bool> Set<Bool>) Bool)
(declare-fun Set_skolem_diff (Set<Bool> Set<Bool>) Bool)
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
; /field_value_functions_declarations.smt2 [f: Bool]
(declare-fun $FVF.domain_f ($FVF<f>) Set<$Ref>)
(declare-fun $FVF.lookup_f ($FVF<f> $Ref) Bool)
(declare-fun $FVF.after_f ($FVF<f> $FVF<f>) Bool)
(declare-fun $FVF.loc_f (Bool $Ref) Bool)
(declare-fun $FVF.perm_f ($FPM $Ref) $Perm)
(declare-const $fvfTOP_f $FVF<f>)
; Declaring symbols related to program functions (from program analysis)
(declare-fun function3 ($Snap Bool Int) Bool)
(declare-fun function3%limited ($Snap Bool Int) Bool)
(declare-fun function3%stateless (Bool Int) Bool)
(declare-fun function3%precondition ($Snap Bool Int) Bool)
(declare-fun function2 ($Snap Bool) Bool)
(declare-fun function2%limited ($Snap Bool) Bool)
(declare-fun function2%stateless (Bool) Bool)
(declare-fun function2%precondition ($Snap Bool) Bool)
(declare-fun function0 ($Snap Bool Bool) Bool)
(declare-fun function0%limited ($Snap Bool Bool) Bool)
(declare-fun function0%stateless (Bool Bool) Bool)
(declare-fun function0%precondition ($Snap Bool Bool) Bool)
(declare-fun function4 ($Snap Bool) Bool)
(declare-fun function4%limited ($Snap Bool) Bool)
(declare-fun function4%stateless (Bool) Bool)
(declare-fun function4%precondition ($Snap Bool) Bool)
(declare-fun function1 ($Snap Bool) Bool)
(declare-fun function1%limited ($Snap Bool) Bool)
(declare-fun function1%stateless (Bool) Bool)
(declare-fun function1%precondition ($Snap Bool) Bool)
; Snapshot variable to be used during function verification
(declare-fun s@$ () $Snap)
; Declaring predicate trigger functions
; ////////// Uniqueness assumptions from domains
; ////////// Axioms
(assert (forall ((s Set<Bool>)) (!
  (<= 0 (Set_card s))
  :pattern ((Set_card s))
  )))
(assert (forall ((o Bool)) (!
  (not (Set_in o (as Set_empty  Set<Bool>)))
  :pattern ((Set_in o (as Set_empty  Set<Bool>)))
  )))
(assert (forall ((s Set<Bool>)) (!
  (and
    (=> (= (Set_card s) 0) (= s (as Set_empty  Set<Bool>)))
    (=> (not (= (Set_card s) 0)) (exists ((x Bool))  (Set_in x s))))
  :pattern ((Set_card s))
  )))
(assert (forall ((r Bool)) (!
  (Set_in r (Set_singleton r))
  :pattern ((Set_singleton r))
  )))
(assert (forall ((r Bool) (o Bool)) (!
  (= (Set_in o (Set_singleton r)) (= r o))
  :pattern ((Set_in o (Set_singleton r)))
  )))
(assert (forall ((r Bool)) (!
  (= (Set_card (Set_singleton r)) 1)
  :pattern ((Set_card (Set_singleton r)))
  )))
(assert (forall ((a Set<Bool>) (x Bool) (o Bool)) (!
  (= (Set_in o (Set_unionone a x)) (or (= o x) (Set_in o a)))
  :pattern ((Set_in o (Set_unionone a x)))
  )))
(assert (forall ((a Set<Bool>) (x Bool)) (!
  (Set_in x (Set_unionone a x))
  :pattern ((Set_unionone a x))
  )))
(assert (forall ((a Set<Bool>) (x Bool) (y Bool)) (!
  (=> (Set_in y a) (Set_in y (Set_unionone a x)))
  :pattern ((Set_unionone a x) (Set_in y a))
  )))
(assert (forall ((a Set<Bool>) (x Bool)) (!
  (=> (Set_in x a) (= (Set_card (Set_unionone a x)) (Set_card a)))
  :pattern ((Set_card (Set_unionone a x)))
  )))
(assert (forall ((a Set<Bool>) (x Bool)) (!
  (=> (not (Set_in x a)) (= (Set_card (Set_unionone a x)) (+ (Set_card a) 1)))
  :pattern ((Set_card (Set_unionone a x)))
  )))
(assert (forall ((a Set<Bool>) (b Set<Bool>) (o Bool)) (!
  (= (Set_in o (Set_union a b)) (or (Set_in o a) (Set_in o b)))
  :pattern ((Set_in o (Set_union a b)))
  )))
(assert (forall ((a Set<Bool>) (b Set<Bool>) (y Bool)) (!
  (=> (Set_in y a) (Set_in y (Set_union a b)))
  :pattern ((Set_union a b) (Set_in y a))
  )))
(assert (forall ((a Set<Bool>) (b Set<Bool>) (y Bool)) (!
  (=> (Set_in y b) (Set_in y (Set_union a b)))
  :pattern ((Set_union a b) (Set_in y b))
  )))
(assert (forall ((a Set<Bool>) (b Set<Bool>) (o Bool)) (!
  (= (Set_in o (Set_intersection a b)) (and (Set_in o a) (Set_in o b)))
  :pattern ((Set_in o (Set_intersection a b)))
  :pattern ((Set_intersection a b) (Set_in o a))
  :pattern ((Set_intersection a b) (Set_in o b))
  )))
(assert (forall ((a Set<Bool>) (b Set<Bool>)) (!
  (= (Set_union (Set_union a b) b) (Set_union a b))
  :pattern ((Set_union (Set_union a b) b))
  )))
(assert (forall ((a Set<Bool>) (b Set<Bool>)) (!
  (= (Set_union a (Set_union a b)) (Set_union a b))
  :pattern ((Set_union a (Set_union a b)))
  )))
(assert (forall ((a Set<Bool>) (b Set<Bool>)) (!
  (= (Set_intersection (Set_intersection a b) b) (Set_intersection a b))
  :pattern ((Set_intersection (Set_intersection a b) b))
  )))
(assert (forall ((a Set<Bool>) (b Set<Bool>)) (!
  (= (Set_intersection a (Set_intersection a b)) (Set_intersection a b))
  :pattern ((Set_intersection a (Set_intersection a b)))
  )))
(assert (forall ((a Set<Bool>) (b Set<Bool>)) (!
  (=
    (+ (Set_card (Set_union a b)) (Set_card (Set_intersection a b)))
    (+ (Set_card a) (Set_card b)))
  :pattern ((Set_card (Set_union a b)))
  :pattern ((Set_card (Set_intersection a b)))
  )))
(assert (forall ((a Set<Bool>) (b Set<Bool>) (o Bool)) (!
  (= (Set_in o (Set_difference a b)) (and (Set_in o a) (not (Set_in o b))))
  :pattern ((Set_in o (Set_difference a b)))
  :pattern ((Set_difference a b) (Set_in o a))
  )))
(assert (forall ((a Set<Bool>) (b Set<Bool>) (y Bool)) (!
  (=> (Set_in y b) (not (Set_in y (Set_difference a b))))
  :pattern ((Set_difference a b) (Set_in y b))
  )))
(assert (forall ((a Set<Bool>) (b Set<Bool>)) (!
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
(assert (forall ((a Set<Bool>) (b Set<Bool>)) (!
  (=
    (Set_subset a b)
    (forall ((o Bool)) (!
      (=> (Set_in o a) (Set_in o b))
      :pattern ((Set_in o a))
      :pattern ((Set_in o b))
      )))
  :pattern ((Set_subset a b))
  )))
(assert (forall ((a Set<Bool>) (b Set<Bool>)) (!
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
(assert (forall ((a Set<Bool>) (b Set<Bool>)) (!
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
; /field_value_functions_axioms.smt2 [f: Bool]
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
(assert (forall ((r $Ref) (f Bool)) (!
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
(declare-fun inv@16@00 ($Snap Bool $Ref) $Ref)
(declare-fun img@17@00 ($Snap Bool $Ref) Bool)
(assert (forall ((s@$ $Snap) (b@0@00 Bool) (z@1@00 Int)) (!
  (= (function3%limited s@$ b@0@00 z@1@00) (function3 s@$ b@0@00 z@1@00))
  :pattern ((function3 s@$ b@0@00 z@1@00))
  :qid |quant-u-15794|)))
(assert (forall ((s@$ $Snap) (b@0@00 Bool) (z@1@00 Int)) (!
  (function3%stateless b@0@00 z@1@00)
  :pattern ((function3%limited s@$ b@0@00 z@1@00))
  :qid |quant-u-15795|)))
(assert (forall ((s@$ $Snap) (b@3@00 Bool)) (!
  (= (function2%limited s@$ b@3@00) (function2 s@$ b@3@00))
  :pattern ((function2 s@$ b@3@00))
  :qid |quant-u-15796|)))
(assert (forall ((s@$ $Snap) (b@3@00 Bool)) (!
  (function2%stateless b@3@00)
  :pattern ((function2%limited s@$ b@3@00))
  :qid |quant-u-15797|)))
(assert (forall ((s@$ $Snap) (b@5@00 Bool) (c@6@00 Bool)) (!
  (= (function0%limited s@$ b@5@00 c@6@00) (function0 s@$ b@5@00 c@6@00))
  :pattern ((function0 s@$ b@5@00 c@6@00))
  :qid |quant-u-15798|)))
(assert (forall ((s@$ $Snap) (b@5@00 Bool) (c@6@00 Bool)) (!
  (function0%stateless b@5@00 c@6@00)
  :pattern ((function0%limited s@$ b@5@00 c@6@00))
  :qid |quant-u-15799|)))
(assert (forall ((s@$ $Snap) (x@8@00 Bool)) (!
  (= (function4%limited s@$ x@8@00) (function4 s@$ x@8@00))
  :pattern ((function4 s@$ x@8@00))
  :qid |quant-u-15800|)))
(assert (forall ((s@$ $Snap) (x@8@00 Bool)) (!
  (function4%stateless x@8@00)
  :pattern ((function4%limited s@$ x@8@00))
  :qid |quant-u-15801|)))
(assert (forall ((s@$ $Snap) (b@10@00 Bool)) (!
  (= (function1%limited s@$ b@10@00) (function1 s@$ b@10@00))
  :pattern ((function1 s@$ b@10@00))
  :qid |quant-u-15802|)))
(assert (forall ((s@$ $Snap) (b@10@00 Bool)) (!
  (function1%stateless b@10@00)
  :pattern ((function1%limited s@$ b@10@00))
  :qid |quant-u-15803|)))
; End function- and predicate-related preamble
; ------------------------------------------------------------
; ---------- client1 ----------
(declare-const x@0@01 Int)
(declare-const y@1@01 Int)
(declare-const x@2@01 Int)
(declare-const y@3@01 Int)
(set-option :timeout 0)
(push) ; 1
(declare-const $t@4@01 $Snap)
(assert (= $t@4@01 ($Snap.combine ($Snap.first $t@4@01) ($Snap.second $t@4@01))))
(assert (= ($Snap.first $t@4@01) $Snap.unit))
; [eval] x == 0
(assert (= x@2@01 0))
(assert (= ($Snap.second $t@4@01) $Snap.unit))
; [eval] y == 0
(assert (= y@3@01 0))
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
(set-option :timeout 0)
(push) ; 2
(pop) ; 2
(push) ; 2
; [exec]
; var res: Bool
(declare-const res@5@01 Bool)
; [exec]
; res := function0(x == 0, y == 0)
; [eval] function0(x == 0, y == 0)
; [eval] x == 0
; [eval] y == 0
(push) ; 3
; [eval] (forall z: Int ::b && c)
(declare-const z@6@01 Int)
(push) ; 4
; [eval] b && c
(push) ; 5
; [then-branch: 0 | x@2@01 != 0 | live]
; [else-branch: 0 | x@2@01 == 0 | live]
(push) ; 6
; [then-branch: 0 | x@2@01 != 0]
(assert (not (= x@2@01 0)))
(pop) ; 6
(push) ; 6
; [else-branch: 0 | x@2@01 == 0]
(pop) ; 6
(pop) ; 5
; Joined path conditions
; Joined path conditions
(assert (or (= x@2@01 0) (not (= x@2@01 0))))
(pop) ; 4
; Nested auxiliary terms: globals (aux)
(assert (or (= x@2@01 0) (not (= x@2@01 0))))
; Nested auxiliary terms: non-globals (aux)
(push) ; 4
(assert (not (forall ((z@6@01 Int)) (!
  (and (= x@2@01 0) (= y@3@01 0))
  
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/capture_avoidance/capture_avoidance_rule_3.vpr@29@12@29@35|))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(assert (forall ((z@6@01 Int)) (!
  (and (= x@2@01 0) (= y@3@01 0))
  
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/capture_avoidance/capture_avoidance_rule_3.vpr@29@12@29@35|)))
(assert (function0%precondition $Snap.unit (= x@2@01 0) (= y@3@01 0)))
(pop) ; 3
; Joined path conditions
(assert (and
  (or (= x@2@01 0) (not (= x@2@01 0)))
  (forall ((z@6@01 Int)) (!
    (and (= x@2@01 0) (= y@3@01 0))
    
    :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/capture_avoidance/capture_avoidance_rule_3.vpr@29@12@29@35|))
  (function0%precondition $Snap.unit (= x@2@01 0) (= y@3@01 0))))
(declare-const res@7@01 Bool)
(assert (= res@7@01 (function0 $Snap.unit (= x@2@01 0) (= y@3@01 0))))
; [exec]
; res := function1((forall z: Int ::z == z))
; [eval] function1((forall z: Int ::z == z))
; [eval] (forall z: Int ::z == z)
(declare-const z@8@01 Int)
(push) ; 3
; [eval] z == z
(pop) ; 3
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(push) ; 3
; [eval] (forall w: Int ::b)
(declare-const w@9@01 Int)
(push) ; 4
(pop) ; 4
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(push) ; 4
(assert (not (forall ((w@9@01 Int)) (!
  (forall ((z@8@01 Int)) (!
    true
    
    :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/capture_avoidance/capture_avoidance_rule_3.vpr@50@20@50@43|))
  
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/capture_avoidance/capture_avoidance_rule_3.vpr@33@12@33@30|))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(assert (forall ((w@9@01 Int)) (!
  (forall ((z@8@01 Int)) (!
    true
    
    :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/capture_avoidance/capture_avoidance_rule_3.vpr@50@20@50@43|))
  
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/capture_avoidance/capture_avoidance_rule_3.vpr@33@12@33@30|)))
(assert (function1%precondition $Snap.unit (forall ((z@8@01 Int)) (!
  true
  
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/capture_avoidance/capture_avoidance_rule_3.vpr@50@20@50@43|))))
(pop) ; 3
; Joined path conditions
(assert (and
  (forall ((w@9@01 Int)) (!
    (forall ((z@8@01 Int)) (!
      true
      
      :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/capture_avoidance/capture_avoidance_rule_3.vpr@50@20@50@43|))
    
    :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/capture_avoidance/capture_avoidance_rule_3.vpr@33@12@33@30|))
  (function1%precondition $Snap.unit (forall ((z@8@01 Int)) (!
    true
    
    :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/capture_avoidance/capture_avoidance_rule_3.vpr@50@20@50@43|)))))
(declare-const res@10@01 Bool)
(assert (=
  res@10@01
  (function1 $Snap.unit (forall ((z@8@01 Int)) (!
    true
    
    :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/capture_avoidance/capture_avoidance_rule_3.vpr@50@20@50@43|)))))
; [exec]
; res := function2((forall z: Int ::z == z))
; [eval] function2((forall z: Int ::z == z))
; [eval] (forall z: Int ::z == z)
(declare-const z@11@01 Int)
(push) ; 3
; [eval] z == z
(pop) ; 3
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(push) ; 3
; [eval] (forall i: Int ::b && b)
(declare-const i@12@01 Int)
(push) ; 4
; [eval] b && b
(push) ; 5
; [then-branch: 1 | !(QA z@11@01 :: True) | live]
; [else-branch: 1 | QA z@11@01 :: True | live]
(push) ; 6
; [then-branch: 1 | !(QA z@11@01 :: True)]
(assert (not
  (forall ((z@11@01 Int)) (!
    true
    
    :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/capture_avoidance/capture_avoidance_rule_3.vpr@51@20@51@43|))))
(pop) ; 6
(push) ; 6
; [else-branch: 1 | QA z@11@01 :: True]
(pop) ; 6
(pop) ; 5
; Joined path conditions
; Joined path conditions
(assert (or
  (forall ((z@11@01 Int)) (!
    true
    
    :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/capture_avoidance/capture_avoidance_rule_3.vpr@51@20@51@43|))
  (not
    (forall ((z@11@01 Int)) (!
      true
      
      :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/capture_avoidance/capture_avoidance_rule_3.vpr@51@20@51@43|)))))
(pop) ; 4
; Nested auxiliary terms: globals (aux)
(assert (or
  (forall ((z@11@01 Int)) (!
    true
    
    :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/capture_avoidance/capture_avoidance_rule_3.vpr@51@20@51@43|))
  (not
    (forall ((z@11@01 Int)) (!
      true
      
      :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/capture_avoidance/capture_avoidance_rule_3.vpr@51@20@51@43|)))))
; Nested auxiliary terms: non-globals (aux)
(push) ; 4
(assert (not (forall ((i@12@01 Int)) (!
  (forall ((z@11@01 Int)) (!
    true
    
    :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/capture_avoidance/capture_avoidance_rule_3.vpr@51@20@51@43|))
  
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/capture_avoidance/capture_avoidance_rule_3.vpr@37@12@37@35|))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(assert (forall ((i@12@01 Int)) (!
  (forall ((z@11@01 Int)) (!
    true
    
    :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/capture_avoidance/capture_avoidance_rule_3.vpr@51@20@51@43|))
  
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/capture_avoidance/capture_avoidance_rule_3.vpr@37@12@37@35|)))
(assert (function2%precondition $Snap.unit (forall ((z@11@01 Int)) (!
  true
  
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/capture_avoidance/capture_avoidance_rule_3.vpr@51@20@51@43|))))
(pop) ; 3
; Joined path conditions
(assert (and
  (or
    (forall ((z@11@01 Int)) (!
      true
      
      :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/capture_avoidance/capture_avoidance_rule_3.vpr@51@20@51@43|))
    (not
      (forall ((z@11@01 Int)) (!
        true
        
        :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/capture_avoidance/capture_avoidance_rule_3.vpr@51@20@51@43|))))
  (forall ((i@12@01 Int)) (!
    (forall ((z@11@01 Int)) (!
      true
      
      :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/capture_avoidance/capture_avoidance_rule_3.vpr@51@20@51@43|))
    
    :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/capture_avoidance/capture_avoidance_rule_3.vpr@37@12@37@35|))
  (function2%precondition $Snap.unit (forall ((z@11@01 Int)) (!
    true
    
    :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/capture_avoidance/capture_avoidance_rule_3.vpr@51@20@51@43|)))))
(declare-const res@13@01 Bool)
(assert (=
  res@13@01
  (function2 $Snap.unit (forall ((z@11@01 Int)) (!
    true
    
    :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/capture_avoidance/capture_avoidance_rule_3.vpr@51@20@51@43|)))))
; [exec]
; res := function3((forall z: Int ::z == z), x)
; [eval] function3((forall z: Int ::z == z), x)
; [eval] (forall z: Int ::z == z)
(declare-const z@14@01 Int)
(push) ; 3
; [eval] z == z
(pop) ; 3
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(push) ; 3
; [eval] (forall w: Int ::b && z == 0)
(declare-const w@15@01 Int)
(push) ; 4
; [eval] b && z == 0
(push) ; 5
; [then-branch: 2 | !(QA z@14@01 :: True) | live]
; [else-branch: 2 | QA z@14@01 :: True | live]
(push) ; 6
; [then-branch: 2 | !(QA z@14@01 :: True)]
(assert (not
  (forall ((z@14@01 Int)) (!
    true
    
    :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/capture_avoidance/capture_avoidance_rule_3.vpr@52@20@52@43|))))
(pop) ; 6
(push) ; 6
; [else-branch: 2 | QA z@14@01 :: True]
; [eval] z == 0
(pop) ; 6
(pop) ; 5
; Joined path conditions
; Joined path conditions
(assert (or
  (forall ((z@14@01 Int)) (!
    true
    
    :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/capture_avoidance/capture_avoidance_rule_3.vpr@52@20@52@43|))
  (not
    (forall ((z@14@01 Int)) (!
      true
      
      :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/capture_avoidance/capture_avoidance_rule_3.vpr@52@20@52@43|)))))
(pop) ; 4
; Nested auxiliary terms: globals (aux)
(assert (or
  (forall ((z@14@01 Int)) (!
    true
    
    :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/capture_avoidance/capture_avoidance_rule_3.vpr@52@20@52@43|))
  (not
    (forall ((z@14@01 Int)) (!
      true
      
      :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/capture_avoidance/capture_avoidance_rule_3.vpr@52@20@52@43|)))))
; Nested auxiliary terms: non-globals (aux)
(push) ; 4
(assert (not (forall ((w@15@01 Int)) (!
  (and
    (forall ((z@14@01 Int)) (!
      true
      
      :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/capture_avoidance/capture_avoidance_rule_3.vpr@52@20@52@43|))
    (= x@2@01 0))
  
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/capture_avoidance/capture_avoidance_rule_3.vpr@41@12@41@40|))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(assert (forall ((w@15@01 Int)) (!
  (and
    (forall ((z@14@01 Int)) (!
      true
      
      :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/capture_avoidance/capture_avoidance_rule_3.vpr@52@20@52@43|))
    (= x@2@01 0))
  
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/capture_avoidance/capture_avoidance_rule_3.vpr@41@12@41@40|)))
(assert (function3%precondition $Snap.unit (forall ((z@14@01 Int)) (!
  true
  
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/capture_avoidance/capture_avoidance_rule_3.vpr@52@20@52@43|)) x@2@01))
(pop) ; 3
; Joined path conditions
(assert (and
  (or
    (forall ((z@14@01 Int)) (!
      true
      
      :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/capture_avoidance/capture_avoidance_rule_3.vpr@52@20@52@43|))
    (not
      (forall ((z@14@01 Int)) (!
        true
        
        :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/capture_avoidance/capture_avoidance_rule_3.vpr@52@20@52@43|))))
  (forall ((w@15@01 Int)) (!
    (and
      (forall ((z@14@01 Int)) (!
        true
        
        :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/capture_avoidance/capture_avoidance_rule_3.vpr@52@20@52@43|))
      (= x@2@01 0))
    
    :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/capture_avoidance/capture_avoidance_rule_3.vpr@41@12@41@40|))
  (function3%precondition $Snap.unit (forall ((z@14@01 Int)) (!
    true
    
    :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/capture_avoidance/capture_avoidance_rule_3.vpr@52@20@52@43|)) x@2@01)))
(declare-const res@16@01 Bool)
(assert (=
  res@16@01
  (function3 $Snap.unit (forall ((z@14@01 Int)) (!
    true
    
    :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/capture_avoidance/capture_avoidance_rule_3.vpr@52@20@52@43|)) x@2@01)))
(pop) ; 2
(pop) ; 1
; ---------- client2 ----------
(declare-const x@17@01 Bool)
(declare-const res@18@01 Bool)
(declare-const x@19@01 Bool)
(declare-const res@20@01 Bool)
(push) ; 1
(declare-const $t@21@01 $Snap)
(assert (= $t@21@01 ($Snap.combine ($Snap.first $t@21@01) ($Snap.second $t@21@01))))
(declare-const z@22@01 $Ref)
(push) ; 2
(pop) ; 2
(declare-fun inv@23@01 ($Ref) $Ref)
(declare-fun img@24@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
; Check receiver injectivity
; Definitional axioms for inverse functions
(assert (forall ((z@22@01 $Ref)) (!
  (and (= (inv@23@01 z@22@01) z@22@01) (img@24@01 z@22@01))
  :pattern ((inv@23@01 z@22@01))
  :pattern ((img@24@01 z@22@01))
  :qid |quant-u-15807|)))
(assert (forall ((r $Ref)) (!
  (=> (img@24@01 r) (= (inv@23@01 r) r))
  :pattern ((inv@23@01 r))
  :qid |f-fctOfInv|)))
; Permissions are non-negative
; Field permissions are at most one
; Permission implies non-null receiver
(assert (forall ((z@22@01 $Ref)) (!
  (not (= z@22@01 $Ref.null))
  :pattern ((inv@23@01 z@22@01))
  :pattern ((img@24@01 z@22@01))
  :qid |f-permImpliesNonNull|)))
(assert (= ($Snap.second $t@21@01) $Snap.unit))
; [eval] x == true
(assert (= x@19@01 true))
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
(set-option :timeout 0)
(push) ; 2
(pop) ; 2
(push) ; 2
; [exec]
; res := function4(x)
; [eval] function4(x)
(push) ; 3
(push) ; 4
(assert (not x@19@01))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(assert x@19@01)
(declare-const y@25@01 $Ref)
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
  :qid |f-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=> (img@27@01 r) (= (inv@26@01 r) r))
  :pattern ((inv@26@01 r))
  :qid |f-fctOfInv|)))
(push) ; 4
(assert (not (forall ((r $Ref)) (!
  (=>
    (and (img@27@01 r) (= r (inv@26@01 r)))
    (> (ite (img@24@01 r) $Perm.Write $Perm.No) $Perm.No))
  
  :qid |quant-u-15809|))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(declare-const sm@28@01 $FVF<f>)
; Definitional axioms for snapshot map domain
(assert (forall ((r $Ref)) (!
  (and
    (=> (Set_in r ($FVF.domain_f (as sm@28@01  $FVF<f>))) (img@27@01 r))
    (=> (img@27@01 r) (Set_in r ($FVF.domain_f (as sm@28@01  $FVF<f>)))))
  :pattern ((Set_in r ($FVF.domain_f (as sm@28@01  $FVF<f>))))
  :qid |qp.fvfDomDef1|)))
; Definitional axioms for snapshot map values
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@27@01 r) (img@24@01 r))
    (=
      ($FVF.lookup_f (as sm@28@01  $FVF<f>) r)
      ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@21@01)) r)))
  :pattern (($FVF.lookup_f (as sm@28@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@21@01)) r))
  :qid |qp.fvfValDef0|)))
(assert (function4%precondition ($Snap.combine
  $Snap.unit
  ($SortWrappers.$FVF<f>To$Snap (as sm@28@01  $FVF<f>))) x@19@01))
(pop) ; 3
; Joined path conditions
(assert (forall ((y@25@01 $Ref)) (!
  (and (= (inv@26@01 y@25@01) y@25@01) (img@27@01 y@25@01))
  :pattern ((inv@26@01 y@25@01))
  :pattern ((img@27@01 y@25@01))
  :qid |f-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=> (img@27@01 r) (= (inv@26@01 r) r))
  :pattern ((inv@26@01 r))
  :qid |f-fctOfInv|)))
(assert (forall ((r $Ref)) (!
  (and
    (=> (Set_in r ($FVF.domain_f (as sm@28@01  $FVF<f>))) (img@27@01 r))
    (=> (img@27@01 r) (Set_in r ($FVF.domain_f (as sm@28@01  $FVF<f>)))))
  :pattern ((Set_in r ($FVF.domain_f (as sm@28@01  $FVF<f>))))
  :qid |qp.fvfDomDef1|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@27@01 r) (img@24@01 r))
    (=
      ($FVF.lookup_f (as sm@28@01  $FVF<f>) r)
      ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@21@01)) r)))
  :pattern (($FVF.lookup_f (as sm@28@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@21@01)) r))
  :qid |qp.fvfValDef0|)))
(assert (and
  x@19@01
  (function4%precondition ($Snap.combine
    $Snap.unit
    ($SortWrappers.$FVF<f>To$Snap (as sm@28@01  $FVF<f>))) x@19@01)))
(declare-const res@29@01 Bool)
(assert (=
  res@29@01
  (function4 ($Snap.combine
    $Snap.unit
    ($SortWrappers.$FVF<f>To$Snap (as sm@28@01  $FVF<f>))) x@19@01)))
(pop) ; 2
(pop) ; 1