(get-info :version)
; (:version "4.12.1")
; Started: 2025-01-08 21:16:28
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
(declare-sort Array_ 0)
(declare-sort $FVF<val> 0)
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
(declare-fun $SortWrappers.Array_To$Snap (Array_) $Snap)
(declare-fun $SortWrappers.$SnapToArray_ ($Snap) Array_)
(assert (forall ((x Array_)) (!
    (= x ($SortWrappers.$SnapToArray_($SortWrappers.Array_To$Snap x)))
    :pattern (($SortWrappers.Array_To$Snap x))
    :qid |$Snap.$SnapToArray_To$Snap|
    )))
(assert (forall ((x $Snap)) (!
    (= x ($SortWrappers.Array_To$Snap($SortWrappers.$SnapToArray_ x)))
    :pattern (($SortWrappers.$SnapToArray_ x))
    :qid |$Snap.Array_To$SnapToArray_|
    )))
; Declaring additional sort wrappers
(declare-fun $SortWrappers.$FVF<val>To$Snap ($FVF<val>) $Snap)
(declare-fun $SortWrappers.$SnapTo$FVF<val> ($Snap) $FVF<val>)
(assert (forall ((x $FVF<val>)) (!
    (= x ($SortWrappers.$SnapTo$FVF<val>($SortWrappers.$FVF<val>To$Snap x)))
    :pattern (($SortWrappers.$FVF<val>To$Snap x))
    :qid |$Snap.$SnapTo$FVF<val>To$Snap|
    )))
(assert (forall ((x $Snap)) (!
    (= x ($SortWrappers.$FVF<val>To$Snap($SortWrappers.$SnapTo$FVF<val> x)))
    :pattern (($SortWrappers.$SnapTo$FVF<val> x))
    :qid |$Snap.$FVF<val>To$SnapTo$FVF<val>|
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
(declare-fun loc<Ref> (Array_ Int) $Ref)
(declare-fun length<Int> (Array_) Int)
(declare-fun first<Array> ($Ref) Array_)
(declare-fun second<Int> ($Ref) Int)
; /field_value_functions_declarations.smt2 [val: Bool]
(declare-fun $FVF.domain_val ($FVF<val>) Set<$Ref>)
(declare-fun $FVF.lookup_val ($FVF<val> $Ref) Bool)
(declare-fun $FVF.after_val ($FVF<val> $FVF<val>) Bool)
(declare-fun $FVF.loc_val (Bool $Ref) Bool)
(declare-fun $FVF.perm_val ($FPM $Ref) $Perm)
(declare-const $fvfTOP_val $FVF<val>)
; Declaring symbols related to program functions (from program analysis)
(declare-fun countFalseX ($Snap Array_ Int) Int)
(declare-fun countFalseX%limited ($Snap Array_ Int) Int)
(declare-fun countFalseX%stateless (Array_ Int) Bool)
(declare-fun countFalseX%precondition ($Snap Array_ Int) Bool)
(declare-fun countFalse ($Snap Array_ Int Int) Int)
(declare-fun countFalse%limited ($Snap Array_ Int Int) Int)
(declare-fun countFalse%stateless (Array_ Int Int) Bool)
(declare-fun countFalse%precondition ($Snap Array_ Int Int) Bool)
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
(assert (forall ((a Array_) (i Int)) (!
  (and (= (first<Array> (loc<Ref> a i)) a) (= (second<Int> (loc<Ref> a i)) i))
  :pattern ((loc<Ref> a i))
  :qid |prog.all_diff|)))
(assert (forall ((a Array_)) (!
  (>= (length<Int> a) 0)
  :pattern ((length<Int> a))
  :qid |prog.length_nonneg|)))
; /field_value_functions_axioms.smt2 [val: Bool]
(assert (forall ((vs $FVF<val>) (ws $FVF<val>)) (!
    (=>
      (and
        (Set_equal ($FVF.domain_val vs) ($FVF.domain_val ws))
        (forall ((x $Ref)) (!
          (=>
            (Set_in x ($FVF.domain_val vs))
            (= ($FVF.lookup_val vs x) ($FVF.lookup_val ws x)))
          :pattern (($FVF.lookup_val vs x) ($FVF.lookup_val ws x))
          :qid |qp.$FVF<val>-eq-inner|
          )))
      (= vs ws))
    :pattern (($SortWrappers.$FVF<val>To$Snap vs)
              ($SortWrappers.$FVF<val>To$Snap ws)
              )
    :qid |qp.$FVF<val>-eq-outer|
    )))
(assert (forall ((r $Ref) (pm $FPM)) (!
    ($Perm.isValidVar ($FVF.perm_val pm r))
    :pattern (($FVF.perm_val pm r)))))
(assert (forall ((r $Ref) (f Bool)) (!
    (= ($FVF.loc_val f r) true)
    :pattern (($FVF.loc_val f r)))))
; End preamble
; ------------------------------------------------------------
; State saturation: after preamble
(set-option :timeout 100)
(check-sat)
; unknown
; ------------------------------------------------------------
; Begin function- and predicate-related preamble
; Declaring symbols related to program functions (from verification)
(declare-fun inv@8@00 ($Snap Array_ Int $Ref) Int)
(declare-fun img@9@00 ($Snap Array_ Int $Ref) Bool)
(declare-fun inv@11@00 ($Snap Array_ Int $Ref) Int)
(declare-fun img@12@00 ($Snap Array_ Int $Ref) Bool)
(declare-fun sm@13@00 ($Snap Array_ Int) $FVF<val>)
(declare-fun inv@15@00 ($Snap Array_ Int Int $Ref) Int)
(declare-fun img@16@00 ($Snap Array_ Int Int $Ref) Bool)
(declare-fun inv@18@00 ($Snap Array_ Int Int $Ref) Int)
(declare-fun img@19@00 ($Snap Array_ Int Int $Ref) Bool)
(declare-fun sm@20@00 ($Snap Array_ Int Int) $FVF<val>)
(assert (forall ((s@$ $Snap) (a@0@00 Array_) (from@1@00 Int)) (!
  (=
    (countFalseX%limited s@$ a@0@00 from@1@00)
    (countFalseX s@$ a@0@00 from@1@00))
  :pattern ((countFalseX s@$ a@0@00 from@1@00))
  :qid |quant-u-11950|)))
(assert (forall ((s@$ $Snap) (a@0@00 Array_) (from@1@00 Int)) (!
  (countFalseX%stateless a@0@00 from@1@00)
  :pattern ((countFalseX%limited s@$ a@0@00 from@1@00))
  :qid |quant-u-11951|)))
(assert (forall ((s@$ $Snap) (a@0@00 Array_) (from@1@00 Int)) (!
  (and
    (forall ((z@7@00 Int)) (!
      (=>
        (and (<= from@1@00 z@7@00) (< z@7@00 (length<Int> a@0@00)))
        (and
          (= (inv@8@00 s@$ a@0@00 from@1@00 (loc<Ref> a@0@00 z@7@00)) z@7@00)
          (img@9@00 s@$ a@0@00 from@1@00 (loc<Ref> a@0@00 z@7@00))))
      :pattern ((loc<Ref> a@0@00 z@7@00))
      :qid |quant-u-11955|))
    (forall ((r $Ref)) (!
      (=>
        (and
          (img@9@00 s@$ a@0@00 from@1@00 r)
          (and
            (<= from@1@00 (inv@8@00 s@$ a@0@00 from@1@00 r))
            (< (inv@8@00 s@$ a@0@00 from@1@00 r) (length<Int> a@0@00))))
        (= (loc<Ref> a@0@00 (inv@8@00 s@$ a@0@00 from@1@00 r)) r))
      :pattern ((inv@8@00 s@$ a@0@00 from@1@00 r))
      :qid |val-fctOfInv|))
    (forall ((z@10@00 Int)) (!
      (=>
        (and (<= (+ from@1@00 1) z@10@00) (< z@10@00 (length<Int> a@0@00)))
        (and
          (= (inv@11@00 s@$ a@0@00 from@1@00 (loc<Ref> a@0@00 z@10@00)) z@10@00)
          (img@12@00 s@$ a@0@00 from@1@00 (loc<Ref> a@0@00 z@10@00))))
      :pattern ((loc<Ref> a@0@00 z@10@00))
      :qid |val-invOfFct|))
    (forall ((r $Ref)) (!
      (=>
        (and
          (img@12@00 s@$ a@0@00 from@1@00 r)
          (and
            (<= (+ from@1@00 1) (inv@11@00 s@$ a@0@00 from@1@00 r))
            (< (inv@11@00 s@$ a@0@00 from@1@00 r) (length<Int> a@0@00))))
        (= (loc<Ref> a@0@00 (inv@11@00 s@$ a@0@00 from@1@00 r)) r))
      :pattern ((inv@11@00 s@$ a@0@00 from@1@00 r))
      :qid |val-fctOfInv|))
    (forall ((r $Ref)) (!
      (and
        (=>
          (Set_in r ($FVF.domain_val (sm@13@00 s@$ a@0@00 from@1@00)))
          (and
            (and
              (<= (+ from@1@00 1) (inv@11@00 s@$ a@0@00 from@1@00 r))
              (< (inv@11@00 s@$ a@0@00 from@1@00 r) (length<Int> a@0@00)))
            (img@12@00 s@$ a@0@00 from@1@00 r)))
        (=>
          (and
            (and
              (<= (+ from@1@00 1) (inv@11@00 s@$ a@0@00 from@1@00 r))
              (< (inv@11@00 s@$ a@0@00 from@1@00 r) (length<Int> a@0@00)))
            (img@12@00 s@$ a@0@00 from@1@00 r))
          (Set_in r ($FVF.domain_val (sm@13@00 s@$ a@0@00 from@1@00)))))
      :pattern ((Set_in r ($FVF.domain_val (sm@13@00 s@$ a@0@00 from@1@00))))
      :qid |qp.fvfDomDef1|))
    (forall ((r $Ref)) (!
      (=>
        (and
          (and
            (and
              (<= (+ from@1@00 1) (inv@11@00 s@$ a@0@00 from@1@00 r))
              (< (inv@11@00 s@$ a@0@00 from@1@00 r) (length<Int> a@0@00)))
            (img@12@00 s@$ a@0@00 from@1@00 r))
          (and
            (img@9@00 s@$ a@0@00 from@1@00 r)
            (and
              (<= from@1@00 (inv@8@00 s@$ a@0@00 from@1@00 r))
              (< (inv@8@00 s@$ a@0@00 from@1@00 r) (length<Int> a@0@00)))))
        (=
          ($FVF.lookup_val (sm@13@00 s@$ a@0@00 from@1@00) r)
          ($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.second ($Snap.second s@$))) r)))
      :pattern (($FVF.lookup_val (sm@13@00 s@$ a@0@00 from@1@00) r))
      :pattern (($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.second ($Snap.second s@$))) r))
      :qid |qp.fvfValDef0|))
    (=>
      (countFalseX%precondition s@$ a@0@00 from@1@00)
      (=
        (countFalseX s@$ a@0@00 from@1@00)
        (ite
          (= from@1@00 (length<Int> a@0@00))
          0
          (countFalseX%limited ($Snap.combine
            $Snap.unit
            ($Snap.combine
              $Snap.unit
              ($SortWrappers.$FVF<val>To$Snap (sm@13@00 s@$ a@0@00 from@1@00)))) a@0@00 (+
            from@1@00
            1))))))
  :pattern ((countFalseX s@$ a@0@00 from@1@00))
  :qid |quant-u-11958|)))
(assert (forall ((s@$ $Snap) (a@0@00 Array_) (from@1@00 Int)) (!
  (=>
    (countFalseX%precondition s@$ a@0@00 from@1@00)
    (ite
      (= from@1@00 (length<Int> a@0@00))
      true
      (countFalseX%precondition ($Snap.combine
        $Snap.unit
        ($Snap.combine
          $Snap.unit
          ($SortWrappers.$FVF<val>To$Snap (sm@13@00 s@$ a@0@00 from@1@00)))) a@0@00 (+
        from@1@00
        1))))
  :pattern ((countFalseX s@$ a@0@00 from@1@00))
  :qid |quant-u-11959|)))
(assert (forall ((s@$ $Snap) (a@3@00 Array_) (from@4@00 Int) (to@5@00 Int)) (!
  (=
    (countFalse%limited s@$ a@3@00 from@4@00 to@5@00)
    (countFalse s@$ a@3@00 from@4@00 to@5@00))
  :pattern ((countFalse s@$ a@3@00 from@4@00 to@5@00))
  :qid |quant-u-11952|)))
(assert (forall ((s@$ $Snap) (a@3@00 Array_) (from@4@00 Int) (to@5@00 Int)) (!
  (countFalse%stateless a@3@00 from@4@00 to@5@00)
  :pattern ((countFalse%limited s@$ a@3@00 from@4@00 to@5@00))
  :qid |quant-u-11953|)))
(assert (forall ((s@$ $Snap) (a@3@00 Array_) (from@4@00 Int) (to@5@00 Int)) (!
  (and
    (forall ((z@14@00 Int)) (!
      (=>
        (and (<= from@4@00 z@14@00) (< z@14@00 to@5@00))
        (and
          (=
            (inv@15@00 s@$ a@3@00 from@4@00 to@5@00 (loc<Ref> a@3@00 z@14@00))
            z@14@00)
          (img@16@00 s@$ a@3@00 from@4@00 to@5@00 (loc<Ref> a@3@00 z@14@00))))
      :pattern ((loc<Ref> a@3@00 z@14@00))
      :qid |quant-u-11961|))
    (forall ((r $Ref)) (!
      (=>
        (and
          (img@16@00 s@$ a@3@00 from@4@00 to@5@00 r)
          (and
            (<= from@4@00 (inv@15@00 s@$ a@3@00 from@4@00 to@5@00 r))
            (< (inv@15@00 s@$ a@3@00 from@4@00 to@5@00 r) to@5@00)))
        (= (loc<Ref> a@3@00 (inv@15@00 s@$ a@3@00 from@4@00 to@5@00 r)) r))
      :pattern ((inv@15@00 s@$ a@3@00 from@4@00 to@5@00 r))
      :qid |val-fctOfInv|))
    (forall ((z@17@00 Int)) (!
      (=>
        (and (<= (+ from@4@00 1) z@17@00) (< z@17@00 to@5@00))
        (and
          (=
            (inv@18@00 s@$ a@3@00 from@4@00 to@5@00 (loc<Ref> a@3@00 z@17@00))
            z@17@00)
          (img@19@00 s@$ a@3@00 from@4@00 to@5@00 (loc<Ref> a@3@00 z@17@00))))
      :pattern ((loc<Ref> a@3@00 z@17@00))
      :qid |val-invOfFct|))
    (forall ((r $Ref)) (!
      (=>
        (and
          (img@19@00 s@$ a@3@00 from@4@00 to@5@00 r)
          (and
            (<= (+ from@4@00 1) (inv@18@00 s@$ a@3@00 from@4@00 to@5@00 r))
            (< (inv@18@00 s@$ a@3@00 from@4@00 to@5@00 r) to@5@00)))
        (= (loc<Ref> a@3@00 (inv@18@00 s@$ a@3@00 from@4@00 to@5@00 r)) r))
      :pattern ((inv@18@00 s@$ a@3@00 from@4@00 to@5@00 r))
      :qid |val-fctOfInv|))
    (forall ((r $Ref)) (!
      (and
        (=>
          (Set_in r ($FVF.domain_val (sm@20@00 s@$ a@3@00 from@4@00 to@5@00)))
          (and
            (and
              (<= (+ from@4@00 1) (inv@18@00 s@$ a@3@00 from@4@00 to@5@00 r))
              (< (inv@18@00 s@$ a@3@00 from@4@00 to@5@00 r) to@5@00))
            (img@19@00 s@$ a@3@00 from@4@00 to@5@00 r)))
        (=>
          (and
            (and
              (<= (+ from@4@00 1) (inv@18@00 s@$ a@3@00 from@4@00 to@5@00 r))
              (< (inv@18@00 s@$ a@3@00 from@4@00 to@5@00 r) to@5@00))
            (img@19@00 s@$ a@3@00 from@4@00 to@5@00 r))
          (Set_in r ($FVF.domain_val (sm@20@00 s@$ a@3@00 from@4@00 to@5@00)))))
      :pattern ((Set_in r ($FVF.domain_val (sm@20@00 s@$ a@3@00 from@4@00 to@5@00))))
      :qid |qp.fvfDomDef3|))
    (forall ((r $Ref)) (!
      (=>
        (and
          (and
            (and
              (<= (+ from@4@00 1) (inv@18@00 s@$ a@3@00 from@4@00 to@5@00 r))
              (< (inv@18@00 s@$ a@3@00 from@4@00 to@5@00 r) to@5@00))
            (img@19@00 s@$ a@3@00 from@4@00 to@5@00 r))
          (and
            (img@16@00 s@$ a@3@00 from@4@00 to@5@00 r)
            (and
              (<= from@4@00 (inv@15@00 s@$ a@3@00 from@4@00 to@5@00 r))
              (< (inv@15@00 s@$ a@3@00 from@4@00 to@5@00 r) to@5@00))))
        (=
          ($FVF.lookup_val (sm@20@00 s@$ a@3@00 from@4@00 to@5@00) r)
          ($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.second ($Snap.second ($Snap.second s@$)))) r)))
      :pattern (($FVF.lookup_val (sm@20@00 s@$ a@3@00 from@4@00 to@5@00) r))
      :pattern (($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.second ($Snap.second ($Snap.second s@$)))) r))
      :qid |qp.fvfValDef2|))
    (=>
      (countFalse%precondition s@$ a@3@00 from@4@00 to@5@00)
      (=
        (countFalse s@$ a@3@00 from@4@00 to@5@00)
        (ite
          (= from@4@00 to@5@00)
          0
          (+
            (ite
              ($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.second ($Snap.second ($Snap.second s@$)))) (loc<Ref> a@3@00 from@4@00))
              0
              1)
            (countFalse%limited ($Snap.combine
              $Snap.unit
              ($Snap.combine
                $Snap.unit
                ($Snap.combine
                  $Snap.unit
                  ($SortWrappers.$FVF<val>To$Snap (sm@20@00 s@$ a@3@00 from@4@00 to@5@00))))) a@3@00 (+
              from@4@00
              1) to@5@00))))))
  :pattern ((countFalse s@$ a@3@00 from@4@00 to@5@00))
  :qid |quant-u-11964|)))
(assert (forall ((s@$ $Snap) (a@3@00 Array_) (from@4@00 Int) (to@5@00 Int)) (!
  (=>
    (countFalse%precondition s@$ a@3@00 from@4@00 to@5@00)
    (ite
      (= from@4@00 to@5@00)
      true
      (countFalse%precondition ($Snap.combine
        $Snap.unit
        ($Snap.combine
          $Snap.unit
          ($Snap.combine
            $Snap.unit
            ($SortWrappers.$FVF<val>To$Snap (sm@20@00 s@$ a@3@00 from@4@00 to@5@00))))) a@3@00 (+
        from@4@00
        1) to@5@00)))
  :pattern ((countFalse s@$ a@3@00 from@4@00 to@5@00))
  :qid |quant-u-11965|)))
; End function- and predicate-related preamble
; ------------------------------------------------------------
; ---------- lemmaFrontX ----------
(declare-const a@0@01 Array_)
(declare-const from@1@01 Int)
(declare-const a@2@01 Array_)
(declare-const from@3@01 Int)
(set-option :timeout 0)
(push) ; 1
(declare-const $t@4@01 $Snap)
(assert (= $t@4@01 ($Snap.combine ($Snap.first $t@4@01) ($Snap.second $t@4@01))))
(assert (= ($Snap.first $t@4@01) $Snap.unit))
; [eval] 0 <= from
(assert (<= 0 from@3@01))
(assert (=
  ($Snap.second $t@4@01)
  ($Snap.combine
    ($Snap.first ($Snap.second $t@4@01))
    ($Snap.second ($Snap.second $t@4@01)))))
(assert (= ($Snap.first ($Snap.second $t@4@01)) $Snap.unit))
; [eval] from <= length(a)
; [eval] length(a)
(assert (<= from@3@01 (length<Int> a@2@01)))
(declare-const z@5@01 Int)
(push) ; 2
; [eval] from <= z && z < length(a)
; [eval] from <= z
(push) ; 3
; [then-branch: 0 | !(from@3@01 <= z@5@01) | live]
; [else-branch: 0 | from@3@01 <= z@5@01 | live]
(push) ; 4
; [then-branch: 0 | !(from@3@01 <= z@5@01)]
(assert (not (<= from@3@01 z@5@01)))
(pop) ; 4
(push) ; 4
; [else-branch: 0 | from@3@01 <= z@5@01]
(assert (<= from@3@01 z@5@01))
; [eval] z < length(a)
; [eval] length(a)
(pop) ; 4
(pop) ; 3
; Joined path conditions
; Joined path conditions
(assert (or (<= from@3@01 z@5@01) (not (<= from@3@01 z@5@01))))
(assert (and (<= from@3@01 z@5@01) (< z@5@01 (length<Int> a@2@01))))
; [eval] loc(a, z)
(pop) ; 2
(declare-fun inv@6@01 ($Ref) Int)
(declare-fun img@7@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
(assert (forall ((z@5@01 Int)) (!
  (=>
    (and (<= from@3@01 z@5@01) (< z@5@01 (length<Int> a@2@01)))
    (or (<= from@3@01 z@5@01) (not (<= from@3@01 z@5@01))))
  :pattern ((loc<Ref> a@2@01 z@5@01))
  :qid |val-aux|)))
; Check receiver injectivity
(push) ; 2
(assert (not (forall ((z1@5@01 Int) (z2@5@01 Int)) (!
  (=>
    (and
      (and (<= from@3@01 z1@5@01) (< z1@5@01 (length<Int> a@2@01)))
      (and (<= from@3@01 z2@5@01) (< z2@5@01 (length<Int> a@2@01)))
      (= (loc<Ref> a@2@01 z1@5@01) (loc<Ref> a@2@01 z2@5@01)))
    (= z1@5@01 z2@5@01))
  
  :qid |val-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 2
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((z@5@01 Int)) (!
  (=>
    (and (<= from@3@01 z@5@01) (< z@5@01 (length<Int> a@2@01)))
    (and
      (= (inv@6@01 (loc<Ref> a@2@01 z@5@01)) z@5@01)
      (img@7@01 (loc<Ref> a@2@01 z@5@01))))
  :pattern ((loc<Ref> a@2@01 z@5@01))
  :qid |quant-u-11967|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@7@01 r)
      (and (<= from@3@01 (inv@6@01 r)) (< (inv@6@01 r) (length<Int> a@2@01))))
    (= (loc<Ref> a@2@01 (inv@6@01 r)) r))
  :pattern ((inv@6@01 r))
  :qid |val-fctOfInv|)))
; Permissions are non-negative
; Field permissions are at most one
; Permission implies non-null receiver
(assert (forall ((z@5@01 Int)) (!
  (=>
    (and (<= from@3@01 z@5@01) (< z@5@01 (length<Int> a@2@01)))
    (not (= (loc<Ref> a@2@01 z@5@01) $Ref.null)))
  :pattern ((loc<Ref> a@2@01 z@5@01))
  :qid |val-permImpliesNonNull|)))
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
(set-option :timeout 0)
(push) ; 2
(pop) ; 2
(push) ; 2
; [exec]
; assert countFalseX(a, from) ==
;   (from == length(a) ? 0 : countFalseX(a, from + 1))
; [eval] countFalseX(a, from) == (from == length(a) ? 0 : countFalseX(a, from + 1))
; [eval] countFalseX(a, from)
(push) ; 3
; [eval] 0 <= from
; [eval] from <= length(a)
; [eval] length(a)
(declare-const z@8@01 Int)
(push) ; 4
; [eval] from <= z && z < length(a)
; [eval] from <= z
(push) ; 5
; [then-branch: 1 | !(from@3@01 <= z@8@01) | live]
; [else-branch: 1 | from@3@01 <= z@8@01 | live]
(push) ; 6
; [then-branch: 1 | !(from@3@01 <= z@8@01)]
(assert (not (<= from@3@01 z@8@01)))
(pop) ; 6
(push) ; 6
; [else-branch: 1 | from@3@01 <= z@8@01]
(assert (<= from@3@01 z@8@01))
; [eval] z < length(a)
; [eval] length(a)
(pop) ; 6
(pop) ; 5
; Joined path conditions
; Joined path conditions
(assert (or (<= from@3@01 z@8@01) (not (<= from@3@01 z@8@01))))
(assert (and (<= from@3@01 z@8@01) (< z@8@01 (length<Int> a@2@01))))
; [eval] loc(a, z)
(pop) ; 4
(declare-fun inv@9@01 ($Ref) Int)
(declare-fun img@10@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
(assert (forall ((z@8@01 Int)) (!
  (=>
    (and (<= from@3@01 z@8@01) (< z@8@01 (length<Int> a@2@01)))
    (or (<= from@3@01 z@8@01) (not (<= from@3@01 z@8@01))))
  :pattern ((loc<Ref> a@2@01 z@8@01))
  :qid |val-aux|)))
; Check receiver injectivity
(push) ; 4
(assert (not (forall ((z1@8@01 Int) (z2@8@01 Int)) (!
  (=>
    (and
      (and (<= from@3@01 z1@8@01) (< z1@8@01 (length<Int> a@2@01)))
      (and (<= from@3@01 z2@8@01) (< z2@8@01 (length<Int> a@2@01)))
      (= (loc<Ref> a@2@01 z1@8@01) (loc<Ref> a@2@01 z2@8@01)))
    (= z1@8@01 z2@8@01))
  
  :qid |val-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((z@8@01 Int)) (!
  (=>
    (and (<= from@3@01 z@8@01) (< z@8@01 (length<Int> a@2@01)))
    (and
      (= (inv@9@01 (loc<Ref> a@2@01 z@8@01)) z@8@01)
      (img@10@01 (loc<Ref> a@2@01 z@8@01))))
  :pattern ((loc<Ref> a@2@01 z@8@01))
  :qid |val-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@10@01 r)
      (and (<= from@3@01 (inv@9@01 r)) (< (inv@9@01 r) (length<Int> a@2@01))))
    (= (loc<Ref> a@2@01 (inv@9@01 r)) r))
  :pattern ((inv@9@01 r))
  :qid |val-fctOfInv|)))
(push) ; 4
(assert (not (forall ((r $Ref)) (!
  (=>
    (and
      (and (<= from@3@01 (inv@9@01 r)) (< (inv@9@01 r) (length<Int> a@2@01)))
      (img@10@01 r)
      (= r (loc<Ref> a@2@01 (inv@9@01 r))))
    (>
      (ite
        (and
          (img@7@01 r)
          (and (<= from@3@01 (inv@6@01 r)) (< (inv@6@01 r) (length<Int> a@2@01))))
        $Perm.Write
        $Perm.No)
      $Perm.No))
  
  :qid |quant-u-11969|))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(declare-const sm@11@01 $FVF<val>)
; Definitional axioms for snapshot map domain
(assert (forall ((r $Ref)) (!
  (and
    (=>
      (Set_in r ($FVF.domain_val (as sm@11@01  $FVF<val>)))
      (and
        (and (<= from@3@01 (inv@9@01 r)) (< (inv@9@01 r) (length<Int> a@2@01)))
        (img@10@01 r)))
    (=>
      (and
        (and (<= from@3@01 (inv@9@01 r)) (< (inv@9@01 r) (length<Int> a@2@01)))
        (img@10@01 r))
      (Set_in r ($FVF.domain_val (as sm@11@01  $FVF<val>)))))
  :pattern ((Set_in r ($FVF.domain_val (as sm@11@01  $FVF<val>))))
  :qid |qp.fvfDomDef1|)))
; Definitional axioms for snapshot map values
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and
        (and (<= from@3@01 (inv@9@01 r)) (< (inv@9@01 r) (length<Int> a@2@01)))
        (img@10@01 r))
      (and
        (img@7@01 r)
        (and (<= from@3@01 (inv@6@01 r)) (< (inv@6@01 r) (length<Int> a@2@01)))))
    (=
      ($FVF.lookup_val (as sm@11@01  $FVF<val>) r)
      ($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.second ($Snap.second $t@4@01))) r)))
  :pattern (($FVF.lookup_val (as sm@11@01  $FVF<val>) r))
  :pattern (($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.second ($Snap.second $t@4@01))) r))
  :qid |qp.fvfValDef0|)))
(assert (countFalseX%precondition ($Snap.combine
  $Snap.unit
  ($Snap.combine
    $Snap.unit
    ($SortWrappers.$FVF<val>To$Snap (as sm@11@01  $FVF<val>)))) a@2@01 from@3@01))
(pop) ; 3
; Joined path conditions
(assert (forall ((z@8@01 Int)) (!
  (=>
    (and (<= from@3@01 z@8@01) (< z@8@01 (length<Int> a@2@01)))
    (and
      (= (inv@9@01 (loc<Ref> a@2@01 z@8@01)) z@8@01)
      (img@10@01 (loc<Ref> a@2@01 z@8@01))))
  :pattern ((loc<Ref> a@2@01 z@8@01))
  :qid |val-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@10@01 r)
      (and (<= from@3@01 (inv@9@01 r)) (< (inv@9@01 r) (length<Int> a@2@01))))
    (= (loc<Ref> a@2@01 (inv@9@01 r)) r))
  :pattern ((inv@9@01 r))
  :qid |val-fctOfInv|)))
(assert (forall ((r $Ref)) (!
  (and
    (=>
      (Set_in r ($FVF.domain_val (as sm@11@01  $FVF<val>)))
      (and
        (and (<= from@3@01 (inv@9@01 r)) (< (inv@9@01 r) (length<Int> a@2@01)))
        (img@10@01 r)))
    (=>
      (and
        (and (<= from@3@01 (inv@9@01 r)) (< (inv@9@01 r) (length<Int> a@2@01)))
        (img@10@01 r))
      (Set_in r ($FVF.domain_val (as sm@11@01  $FVF<val>)))))
  :pattern ((Set_in r ($FVF.domain_val (as sm@11@01  $FVF<val>))))
  :qid |qp.fvfDomDef1|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and
        (and (<= from@3@01 (inv@9@01 r)) (< (inv@9@01 r) (length<Int> a@2@01)))
        (img@10@01 r))
      (and
        (img@7@01 r)
        (and (<= from@3@01 (inv@6@01 r)) (< (inv@6@01 r) (length<Int> a@2@01)))))
    (=
      ($FVF.lookup_val (as sm@11@01  $FVF<val>) r)
      ($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.second ($Snap.second $t@4@01))) r)))
  :pattern (($FVF.lookup_val (as sm@11@01  $FVF<val>) r))
  :pattern (($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.second ($Snap.second $t@4@01))) r))
  :qid |qp.fvfValDef0|)))
(assert (and
  (forall ((z@8@01 Int)) (!
    (=>
      (and (<= from@3@01 z@8@01) (< z@8@01 (length<Int> a@2@01)))
      (or (<= from@3@01 z@8@01) (not (<= from@3@01 z@8@01))))
    :pattern ((loc<Ref> a@2@01 z@8@01))
    :qid |val-aux|))
  (countFalseX%precondition ($Snap.combine
    $Snap.unit
    ($Snap.combine
      $Snap.unit
      ($SortWrappers.$FVF<val>To$Snap (as sm@11@01  $FVF<val>)))) a@2@01 from@3@01)))
; [eval] (from == length(a) ? 0 : countFalseX(a, from + 1))
; [eval] from == length(a)
; [eval] length(a)
(push) ; 3
(push) ; 4
(set-option :timeout 10)
(assert (not (not (= from@3@01 (length<Int> a@2@01)))))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not (= from@3@01 (length<Int> a@2@01))))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; [then-branch: 2 | from@3@01 == length[Int](a@2@01) | live]
; [else-branch: 2 | from@3@01 != length[Int](a@2@01) | live]
(set-option :timeout 0)
(push) ; 4
; [then-branch: 2 | from@3@01 == length[Int](a@2@01)]
(assert (= from@3@01 (length<Int> a@2@01)))
(pop) ; 4
(push) ; 4
; [else-branch: 2 | from@3@01 != length[Int](a@2@01)]
(assert (not (= from@3@01 (length<Int> a@2@01))))
; [eval] countFalseX(a, from + 1)
; [eval] from + 1
(push) ; 5
; [eval] 0 <= from
(push) ; 6
(assert (not (<= 0 (+ from@3@01 1))))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(assert (<= 0 (+ from@3@01 1)))
; [eval] from <= length(a)
; [eval] length(a)
(push) ; 6
(assert (not (<= (+ from@3@01 1) (length<Int> a@2@01))))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(assert (<= (+ from@3@01 1) (length<Int> a@2@01)))
(declare-const z@12@01 Int)
(push) ; 6
; [eval] from <= z && z < length(a)
; [eval] from <= z
(push) ; 7
; [then-branch: 3 | !(from@3@01 + 1 <= z@12@01) | live]
; [else-branch: 3 | from@3@01 + 1 <= z@12@01 | live]
(push) ; 8
; [then-branch: 3 | !(from@3@01 + 1 <= z@12@01)]
(assert (not (<= (+ from@3@01 1) z@12@01)))
(pop) ; 8
(push) ; 8
; [else-branch: 3 | from@3@01 + 1 <= z@12@01]
(assert (<= (+ from@3@01 1) z@12@01))
; [eval] z < length(a)
; [eval] length(a)
(pop) ; 8
(pop) ; 7
; Joined path conditions
; Joined path conditions
(assert (or (<= (+ from@3@01 1) z@12@01) (not (<= (+ from@3@01 1) z@12@01))))
(assert (and (<= (+ from@3@01 1) z@12@01) (< z@12@01 (length<Int> a@2@01))))
; [eval] loc(a, z)
(pop) ; 6
(declare-fun inv@13@01 ($Ref) Int)
(declare-fun img@14@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
(assert (forall ((z@12@01 Int)) (!
  (=>
    (and (<= (+ from@3@01 1) z@12@01) (< z@12@01 (length<Int> a@2@01)))
    (or (<= (+ from@3@01 1) z@12@01) (not (<= (+ from@3@01 1) z@12@01))))
  :pattern ((loc<Ref> a@2@01 z@12@01))
  :qid |val-aux|)))
; Check receiver injectivity
(push) ; 6
(assert (not (forall ((z1@12@01 Int) (z2@12@01 Int)) (!
  (=>
    (and
      (and (<= (+ from@3@01 1) z1@12@01) (< z1@12@01 (length<Int> a@2@01)))
      (and (<= (+ from@3@01 1) z2@12@01) (< z2@12@01 (length<Int> a@2@01)))
      (= (loc<Ref> a@2@01 z1@12@01) (loc<Ref> a@2@01 z2@12@01)))
    (= z1@12@01 z2@12@01))
  
  :qid |val-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((z@12@01 Int)) (!
  (=>
    (and (<= (+ from@3@01 1) z@12@01) (< z@12@01 (length<Int> a@2@01)))
    (and
      (= (inv@13@01 (loc<Ref> a@2@01 z@12@01)) z@12@01)
      (img@14@01 (loc<Ref> a@2@01 z@12@01))))
  :pattern ((loc<Ref> a@2@01 z@12@01))
  :qid |val-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@14@01 r)
      (and
        (<= (+ from@3@01 1) (inv@13@01 r))
        (< (inv@13@01 r) (length<Int> a@2@01))))
    (= (loc<Ref> a@2@01 (inv@13@01 r)) r))
  :pattern ((inv@13@01 r))
  :qid |val-fctOfInv|)))
(push) ; 6
(assert (not (forall ((r $Ref)) (!
  (=>
    (and
      (and
        (<= (+ from@3@01 1) (inv@13@01 r))
        (< (inv@13@01 r) (length<Int> a@2@01)))
      (img@14@01 r)
      (= r (loc<Ref> a@2@01 (inv@13@01 r))))
    (>
      (ite
        (and
          (img@7@01 r)
          (and (<= from@3@01 (inv@6@01 r)) (< (inv@6@01 r) (length<Int> a@2@01))))
        $Perm.Write
        $Perm.No)
      $Perm.No))
  
  :qid |quant-u-11971|))))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(declare-const sm@15@01 $FVF<val>)
; Definitional axioms for snapshot map domain
(assert (forall ((r $Ref)) (!
  (and
    (=>
      (Set_in r ($FVF.domain_val (as sm@15@01  $FVF<val>)))
      (and
        (and
          (<= (+ from@3@01 1) (inv@13@01 r))
          (< (inv@13@01 r) (length<Int> a@2@01)))
        (img@14@01 r)))
    (=>
      (and
        (and
          (<= (+ from@3@01 1) (inv@13@01 r))
          (< (inv@13@01 r) (length<Int> a@2@01)))
        (img@14@01 r))
      (Set_in r ($FVF.domain_val (as sm@15@01  $FVF<val>)))))
  :pattern ((Set_in r ($FVF.domain_val (as sm@15@01  $FVF<val>))))
  :qid |qp.fvfDomDef3|)))
; Definitional axioms for snapshot map values
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and
        (and
          (<= (+ from@3@01 1) (inv@13@01 r))
          (< (inv@13@01 r) (length<Int> a@2@01)))
        (img@14@01 r))
      (and
        (img@7@01 r)
        (and (<= from@3@01 (inv@6@01 r)) (< (inv@6@01 r) (length<Int> a@2@01)))))
    (=
      ($FVF.lookup_val (as sm@15@01  $FVF<val>) r)
      ($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.second ($Snap.second $t@4@01))) r)))
  :pattern (($FVF.lookup_val (as sm@15@01  $FVF<val>) r))
  :pattern (($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.second ($Snap.second $t@4@01))) r))
  :qid |qp.fvfValDef2|)))
(assert (countFalseX%precondition ($Snap.combine
  $Snap.unit
  ($Snap.combine
    $Snap.unit
    ($SortWrappers.$FVF<val>To$Snap (as sm@15@01  $FVF<val>)))) a@2@01 (+
  from@3@01
  1)))
(pop) ; 5
; Joined path conditions
(assert (forall ((z@12@01 Int)) (!
  (=>
    (and (<= (+ from@3@01 1) z@12@01) (< z@12@01 (length<Int> a@2@01)))
    (and
      (= (inv@13@01 (loc<Ref> a@2@01 z@12@01)) z@12@01)
      (img@14@01 (loc<Ref> a@2@01 z@12@01))))
  :pattern ((loc<Ref> a@2@01 z@12@01))
  :qid |val-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@14@01 r)
      (and
        (<= (+ from@3@01 1) (inv@13@01 r))
        (< (inv@13@01 r) (length<Int> a@2@01))))
    (= (loc<Ref> a@2@01 (inv@13@01 r)) r))
  :pattern ((inv@13@01 r))
  :qid |val-fctOfInv|)))
(assert (forall ((r $Ref)) (!
  (and
    (=>
      (Set_in r ($FVF.domain_val (as sm@15@01  $FVF<val>)))
      (and
        (and
          (<= (+ from@3@01 1) (inv@13@01 r))
          (< (inv@13@01 r) (length<Int> a@2@01)))
        (img@14@01 r)))
    (=>
      (and
        (and
          (<= (+ from@3@01 1) (inv@13@01 r))
          (< (inv@13@01 r) (length<Int> a@2@01)))
        (img@14@01 r))
      (Set_in r ($FVF.domain_val (as sm@15@01  $FVF<val>)))))
  :pattern ((Set_in r ($FVF.domain_val (as sm@15@01  $FVF<val>))))
  :qid |qp.fvfDomDef3|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and
        (and
          (<= (+ from@3@01 1) (inv@13@01 r))
          (< (inv@13@01 r) (length<Int> a@2@01)))
        (img@14@01 r))
      (and
        (img@7@01 r)
        (and (<= from@3@01 (inv@6@01 r)) (< (inv@6@01 r) (length<Int> a@2@01)))))
    (=
      ($FVF.lookup_val (as sm@15@01  $FVF<val>) r)
      ($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.second ($Snap.second $t@4@01))) r)))
  :pattern (($FVF.lookup_val (as sm@15@01  $FVF<val>) r))
  :pattern (($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.second ($Snap.second $t@4@01))) r))
  :qid |qp.fvfValDef2|)))
(assert (and
  (<= 0 (+ from@3@01 1))
  (<= (+ from@3@01 1) (length<Int> a@2@01))
  (forall ((z@12@01 Int)) (!
    (=>
      (and (<= (+ from@3@01 1) z@12@01) (< z@12@01 (length<Int> a@2@01)))
      (or (<= (+ from@3@01 1) z@12@01) (not (<= (+ from@3@01 1) z@12@01))))
    :pattern ((loc<Ref> a@2@01 z@12@01))
    :qid |val-aux|))
  (countFalseX%precondition ($Snap.combine
    $Snap.unit
    ($Snap.combine
      $Snap.unit
      ($SortWrappers.$FVF<val>To$Snap (as sm@15@01  $FVF<val>)))) a@2@01 (+
    from@3@01
    1))))
(pop) ; 4
(pop) ; 3
; Joined path conditions
; Joined path conditions
(assert (forall ((z@12@01 Int)) (!
  (=>
    (and (<= (+ from@3@01 1) z@12@01) (< z@12@01 (length<Int> a@2@01)))
    (and
      (= (inv@13@01 (loc<Ref> a@2@01 z@12@01)) z@12@01)
      (img@14@01 (loc<Ref> a@2@01 z@12@01))))
  :pattern ((loc<Ref> a@2@01 z@12@01))
  :qid |val-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@14@01 r)
      (and
        (<= (+ from@3@01 1) (inv@13@01 r))
        (< (inv@13@01 r) (length<Int> a@2@01))))
    (= (loc<Ref> a@2@01 (inv@13@01 r)) r))
  :pattern ((inv@13@01 r))
  :qid |val-fctOfInv|)))
(assert (forall ((r $Ref)) (!
  (and
    (=>
      (Set_in r ($FVF.domain_val (as sm@15@01  $FVF<val>)))
      (and
        (and
          (<= (+ from@3@01 1) (inv@13@01 r))
          (< (inv@13@01 r) (length<Int> a@2@01)))
        (img@14@01 r)))
    (=>
      (and
        (and
          (<= (+ from@3@01 1) (inv@13@01 r))
          (< (inv@13@01 r) (length<Int> a@2@01)))
        (img@14@01 r))
      (Set_in r ($FVF.domain_val (as sm@15@01  $FVF<val>)))))
  :pattern ((Set_in r ($FVF.domain_val (as sm@15@01  $FVF<val>))))
  :qid |qp.fvfDomDef3|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and
        (and
          (<= (+ from@3@01 1) (inv@13@01 r))
          (< (inv@13@01 r) (length<Int> a@2@01)))
        (img@14@01 r))
      (and
        (img@7@01 r)
        (and (<= from@3@01 (inv@6@01 r)) (< (inv@6@01 r) (length<Int> a@2@01)))))
    (=
      ($FVF.lookup_val (as sm@15@01  $FVF<val>) r)
      ($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.second ($Snap.second $t@4@01))) r)))
  :pattern (($FVF.lookup_val (as sm@15@01  $FVF<val>) r))
  :pattern (($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.second ($Snap.second $t@4@01))) r))
  :qid |qp.fvfValDef2|)))
(assert (=>
  (not (= from@3@01 (length<Int> a@2@01)))
  (and
    (not (= from@3@01 (length<Int> a@2@01)))
    (<= 0 (+ from@3@01 1))
    (<= (+ from@3@01 1) (length<Int> a@2@01))
    (forall ((z@12@01 Int)) (!
      (=>
        (and (<= (+ from@3@01 1) z@12@01) (< z@12@01 (length<Int> a@2@01)))
        (or (<= (+ from@3@01 1) z@12@01) (not (<= (+ from@3@01 1) z@12@01))))
      :pattern ((loc<Ref> a@2@01 z@12@01))
      :qid |val-aux|))
    (countFalseX%precondition ($Snap.combine
      $Snap.unit
      ($Snap.combine
        $Snap.unit
        ($SortWrappers.$FVF<val>To$Snap (as sm@15@01  $FVF<val>)))) a@2@01 (+
      from@3@01
      1)))))
(assert (or (not (= from@3@01 (length<Int> a@2@01))) (= from@3@01 (length<Int> a@2@01))))
(push) ; 3
(assert (not (=
  (countFalseX ($Snap.combine
    $Snap.unit
    ($Snap.combine
      $Snap.unit
      ($SortWrappers.$FVF<val>To$Snap (as sm@11@01  $FVF<val>)))) a@2@01 from@3@01)
  (ite
    (= from@3@01 (length<Int> a@2@01))
    0
    (countFalseX ($Snap.combine
      $Snap.unit
      ($Snap.combine
        $Snap.unit
        ($SortWrappers.$FVF<val>To$Snap (as sm@15@01  $FVF<val>)))) a@2@01 (+
      from@3@01
      1))))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(assert (=
  (countFalseX ($Snap.combine
    $Snap.unit
    ($Snap.combine
      $Snap.unit
      ($SortWrappers.$FVF<val>To$Snap (as sm@11@01  $FVF<val>)))) a@2@01 from@3@01)
  (ite
    (= from@3@01 (length<Int> a@2@01))
    0
    (countFalseX ($Snap.combine
      $Snap.unit
      ($Snap.combine
        $Snap.unit
        ($SortWrappers.$FVF<val>To$Snap (as sm@15@01  $FVF<val>)))) a@2@01 (+
      from@3@01
      1)))))
(pop) ; 2
(pop) ; 1
; ---------- lemmaFrontXX ----------
(declare-const a@16@01 Array_)
(declare-const from@17@01 Int)
(declare-const a@18@01 Array_)
(declare-const from@19@01 Int)
(push) ; 1
(declare-const $t@20@01 $Snap)
(assert (= $t@20@01 ($Snap.combine ($Snap.first $t@20@01) ($Snap.second $t@20@01))))
(assert (= ($Snap.first $t@20@01) $Snap.unit))
; [eval] 0 <= from
(assert (<= 0 from@19@01))
(assert (=
  ($Snap.second $t@20@01)
  ($Snap.combine
    ($Snap.first ($Snap.second $t@20@01))
    ($Snap.second ($Snap.second $t@20@01)))))
(assert (= ($Snap.first ($Snap.second $t@20@01)) $Snap.unit))
; [eval] from <= length(a)
; [eval] length(a)
(assert (<= from@19@01 (length<Int> a@18@01)))
(declare-const z@21@01 Int)
(push) ; 2
; [eval] from <= z && z < length(a)
; [eval] from <= z
(push) ; 3
; [then-branch: 4 | !(from@19@01 <= z@21@01) | live]
; [else-branch: 4 | from@19@01 <= z@21@01 | live]
(push) ; 4
; [then-branch: 4 | !(from@19@01 <= z@21@01)]
(assert (not (<= from@19@01 z@21@01)))
(pop) ; 4
(push) ; 4
; [else-branch: 4 | from@19@01 <= z@21@01]
(assert (<= from@19@01 z@21@01))
; [eval] z < length(a)
; [eval] length(a)
(pop) ; 4
(pop) ; 3
; Joined path conditions
; Joined path conditions
(assert (or (<= from@19@01 z@21@01) (not (<= from@19@01 z@21@01))))
(assert (and (<= from@19@01 z@21@01) (< z@21@01 (length<Int> a@18@01))))
; [eval] loc(a, z)
(pop) ; 2
(declare-fun inv@22@01 ($Ref) Int)
(declare-fun img@23@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
(assert (forall ((z@21@01 Int)) (!
  (=>
    (and (<= from@19@01 z@21@01) (< z@21@01 (length<Int> a@18@01)))
    (or (<= from@19@01 z@21@01) (not (<= from@19@01 z@21@01))))
  :pattern ((loc<Ref> a@18@01 z@21@01))
  :qid |val-aux|)))
; Check receiver injectivity
(push) ; 2
(assert (not (forall ((z1@21@01 Int) (z2@21@01 Int)) (!
  (=>
    (and
      (and (<= from@19@01 z1@21@01) (< z1@21@01 (length<Int> a@18@01)))
      (and (<= from@19@01 z2@21@01) (< z2@21@01 (length<Int> a@18@01)))
      (= (loc<Ref> a@18@01 z1@21@01) (loc<Ref> a@18@01 z2@21@01)))
    (= z1@21@01 z2@21@01))
  
  :qid |val-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 2
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((z@21@01 Int)) (!
  (=>
    (and (<= from@19@01 z@21@01) (< z@21@01 (length<Int> a@18@01)))
    (and
      (= (inv@22@01 (loc<Ref> a@18@01 z@21@01)) z@21@01)
      (img@23@01 (loc<Ref> a@18@01 z@21@01))))
  :pattern ((loc<Ref> a@18@01 z@21@01))
  :qid |quant-u-11973|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@23@01 r)
      (and (<= from@19@01 (inv@22@01 r)) (< (inv@22@01 r) (length<Int> a@18@01))))
    (= (loc<Ref> a@18@01 (inv@22@01 r)) r))
  :pattern ((inv@22@01 r))
  :qid |val-fctOfInv|)))
; Permissions are non-negative
; Field permissions are at most one
; Permission implies non-null receiver
(assert (forall ((z@21@01 Int)) (!
  (=>
    (and (<= from@19@01 z@21@01) (< z@21@01 (length<Int> a@18@01)))
    (not (= (loc<Ref> a@18@01 z@21@01) $Ref.null)))
  :pattern ((loc<Ref> a@18@01 z@21@01))
  :qid |val-permImpliesNonNull|)))
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
(set-option :timeout 0)
(push) ; 2
(pop) ; 2
(push) ; 2
; [exec]
; assert countFalseX(a, from) ==
;   (from == length(a) ? 0 : countFalseX(a, from + 1))
; [eval] countFalseX(a, from) == (from == length(a) ? 0 : countFalseX(a, from + 1))
; [eval] countFalseX(a, from)
(push) ; 3
; [eval] 0 <= from
; [eval] from <= length(a)
; [eval] length(a)
(declare-const z@24@01 Int)
(push) ; 4
; [eval] from <= z && z < length(a)
; [eval] from <= z
(push) ; 5
; [then-branch: 5 | !(from@19@01 <= z@24@01) | live]
; [else-branch: 5 | from@19@01 <= z@24@01 | live]
(push) ; 6
; [then-branch: 5 | !(from@19@01 <= z@24@01)]
(assert (not (<= from@19@01 z@24@01)))
(pop) ; 6
(push) ; 6
; [else-branch: 5 | from@19@01 <= z@24@01]
(assert (<= from@19@01 z@24@01))
; [eval] z < length(a)
; [eval] length(a)
(pop) ; 6
(pop) ; 5
; Joined path conditions
; Joined path conditions
(assert (or (<= from@19@01 z@24@01) (not (<= from@19@01 z@24@01))))
(assert (and (<= from@19@01 z@24@01) (< z@24@01 (length<Int> a@18@01))))
; [eval] loc(a, z)
(pop) ; 4
(declare-fun inv@25@01 ($Ref) Int)
(declare-fun img@26@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
(assert (forall ((z@24@01 Int)) (!
  (=>
    (and (<= from@19@01 z@24@01) (< z@24@01 (length<Int> a@18@01)))
    (or (<= from@19@01 z@24@01) (not (<= from@19@01 z@24@01))))
  :pattern ((loc<Ref> a@18@01 z@24@01))
  :qid |val-aux|)))
; Check receiver injectivity
(push) ; 4
(assert (not (forall ((z1@24@01 Int) (z2@24@01 Int)) (!
  (=>
    (and
      (and (<= from@19@01 z1@24@01) (< z1@24@01 (length<Int> a@18@01)))
      (and (<= from@19@01 z2@24@01) (< z2@24@01 (length<Int> a@18@01)))
      (= (loc<Ref> a@18@01 z1@24@01) (loc<Ref> a@18@01 z2@24@01)))
    (= z1@24@01 z2@24@01))
  
  :qid |val-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((z@24@01 Int)) (!
  (=>
    (and (<= from@19@01 z@24@01) (< z@24@01 (length<Int> a@18@01)))
    (and
      (= (inv@25@01 (loc<Ref> a@18@01 z@24@01)) z@24@01)
      (img@26@01 (loc<Ref> a@18@01 z@24@01))))
  :pattern ((loc<Ref> a@18@01 z@24@01))
  :qid |val-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@26@01 r)
      (and (<= from@19@01 (inv@25@01 r)) (< (inv@25@01 r) (length<Int> a@18@01))))
    (= (loc<Ref> a@18@01 (inv@25@01 r)) r))
  :pattern ((inv@25@01 r))
  :qid |val-fctOfInv|)))
(push) ; 4
(assert (not (forall ((r $Ref)) (!
  (=>
    (and
      (and (<= from@19@01 (inv@25@01 r)) (< (inv@25@01 r) (length<Int> a@18@01)))
      (img@26@01 r)
      (= r (loc<Ref> a@18@01 (inv@25@01 r))))
    (>
      (ite
        (and
          (img@23@01 r)
          (and
            (<= from@19@01 (inv@22@01 r))
            (< (inv@22@01 r) (length<Int> a@18@01))))
        $Perm.Write
        $Perm.No)
      $Perm.No))
  
  :qid |quant-u-11975|))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(declare-const sm@27@01 $FVF<val>)
; Definitional axioms for snapshot map domain
(assert (forall ((r $Ref)) (!
  (and
    (=>
      (Set_in r ($FVF.domain_val (as sm@27@01  $FVF<val>)))
      (and
        (and
          (<= from@19@01 (inv@25@01 r))
          (< (inv@25@01 r) (length<Int> a@18@01)))
        (img@26@01 r)))
    (=>
      (and
        (and
          (<= from@19@01 (inv@25@01 r))
          (< (inv@25@01 r) (length<Int> a@18@01)))
        (img@26@01 r))
      (Set_in r ($FVF.domain_val (as sm@27@01  $FVF<val>)))))
  :pattern ((Set_in r ($FVF.domain_val (as sm@27@01  $FVF<val>))))
  :qid |qp.fvfDomDef5|)))
; Definitional axioms for snapshot map values
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and
        (and
          (<= from@19@01 (inv@25@01 r))
          (< (inv@25@01 r) (length<Int> a@18@01)))
        (img@26@01 r))
      (and
        (img@23@01 r)
        (and
          (<= from@19@01 (inv@22@01 r))
          (< (inv@22@01 r) (length<Int> a@18@01)))))
    (=
      ($FVF.lookup_val (as sm@27@01  $FVF<val>) r)
      ($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.second ($Snap.second $t@20@01))) r)))
  :pattern (($FVF.lookup_val (as sm@27@01  $FVF<val>) r))
  :pattern (($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.second ($Snap.second $t@20@01))) r))
  :qid |qp.fvfValDef4|)))
(assert (countFalseX%precondition ($Snap.combine
  $Snap.unit
  ($Snap.combine
    $Snap.unit
    ($SortWrappers.$FVF<val>To$Snap (as sm@27@01  $FVF<val>)))) a@18@01 from@19@01))
(pop) ; 3
; Joined path conditions
(assert (forall ((z@24@01 Int)) (!
  (=>
    (and (<= from@19@01 z@24@01) (< z@24@01 (length<Int> a@18@01)))
    (and
      (= (inv@25@01 (loc<Ref> a@18@01 z@24@01)) z@24@01)
      (img@26@01 (loc<Ref> a@18@01 z@24@01))))
  :pattern ((loc<Ref> a@18@01 z@24@01))
  :qid |val-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@26@01 r)
      (and (<= from@19@01 (inv@25@01 r)) (< (inv@25@01 r) (length<Int> a@18@01))))
    (= (loc<Ref> a@18@01 (inv@25@01 r)) r))
  :pattern ((inv@25@01 r))
  :qid |val-fctOfInv|)))
(assert (forall ((r $Ref)) (!
  (and
    (=>
      (Set_in r ($FVF.domain_val (as sm@27@01  $FVF<val>)))
      (and
        (and
          (<= from@19@01 (inv@25@01 r))
          (< (inv@25@01 r) (length<Int> a@18@01)))
        (img@26@01 r)))
    (=>
      (and
        (and
          (<= from@19@01 (inv@25@01 r))
          (< (inv@25@01 r) (length<Int> a@18@01)))
        (img@26@01 r))
      (Set_in r ($FVF.domain_val (as sm@27@01  $FVF<val>)))))
  :pattern ((Set_in r ($FVF.domain_val (as sm@27@01  $FVF<val>))))
  :qid |qp.fvfDomDef5|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and
        (and
          (<= from@19@01 (inv@25@01 r))
          (< (inv@25@01 r) (length<Int> a@18@01)))
        (img@26@01 r))
      (and
        (img@23@01 r)
        (and
          (<= from@19@01 (inv@22@01 r))
          (< (inv@22@01 r) (length<Int> a@18@01)))))
    (=
      ($FVF.lookup_val (as sm@27@01  $FVF<val>) r)
      ($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.second ($Snap.second $t@20@01))) r)))
  :pattern (($FVF.lookup_val (as sm@27@01  $FVF<val>) r))
  :pattern (($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.second ($Snap.second $t@20@01))) r))
  :qid |qp.fvfValDef4|)))
(assert (and
  (forall ((z@24@01 Int)) (!
    (=>
      (and (<= from@19@01 z@24@01) (< z@24@01 (length<Int> a@18@01)))
      (or (<= from@19@01 z@24@01) (not (<= from@19@01 z@24@01))))
    :pattern ((loc<Ref> a@18@01 z@24@01))
    :qid |val-aux|))
  (countFalseX%precondition ($Snap.combine
    $Snap.unit
    ($Snap.combine
      $Snap.unit
      ($SortWrappers.$FVF<val>To$Snap (as sm@27@01  $FVF<val>)))) a@18@01 from@19@01)))
; [eval] (from == length(a) ? 0 : countFalseX(a, from + 1))
; [eval] from == length(a)
; [eval] length(a)
(push) ; 3
(push) ; 4
(set-option :timeout 10)
(assert (not (not (= from@19@01 (length<Int> a@18@01)))))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not (= from@19@01 (length<Int> a@18@01))))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; [then-branch: 6 | from@19@01 == length[Int](a@18@01) | live]
; [else-branch: 6 | from@19@01 != length[Int](a@18@01) | live]
(set-option :timeout 0)
(push) ; 4
; [then-branch: 6 | from@19@01 == length[Int](a@18@01)]
(assert (= from@19@01 (length<Int> a@18@01)))
(pop) ; 4
(push) ; 4
; [else-branch: 6 | from@19@01 != length[Int](a@18@01)]
(assert (not (= from@19@01 (length<Int> a@18@01))))
; [eval] countFalseX(a, from + 1)
; [eval] from + 1
(push) ; 5
; [eval] 0 <= from
(push) ; 6
(assert (not (<= 0 (+ from@19@01 1))))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(assert (<= 0 (+ from@19@01 1)))
; [eval] from <= length(a)
; [eval] length(a)
(push) ; 6
(assert (not (<= (+ from@19@01 1) (length<Int> a@18@01))))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(assert (<= (+ from@19@01 1) (length<Int> a@18@01)))
(declare-const z@28@01 Int)
(push) ; 6
; [eval] from <= z && z < length(a)
; [eval] from <= z
(push) ; 7
; [then-branch: 7 | !(from@19@01 + 1 <= z@28@01) | live]
; [else-branch: 7 | from@19@01 + 1 <= z@28@01 | live]
(push) ; 8
; [then-branch: 7 | !(from@19@01 + 1 <= z@28@01)]
(assert (not (<= (+ from@19@01 1) z@28@01)))
(pop) ; 8
(push) ; 8
; [else-branch: 7 | from@19@01 + 1 <= z@28@01]
(assert (<= (+ from@19@01 1) z@28@01))
; [eval] z < length(a)
; [eval] length(a)
(pop) ; 8
(pop) ; 7
; Joined path conditions
; Joined path conditions
(assert (or (<= (+ from@19@01 1) z@28@01) (not (<= (+ from@19@01 1) z@28@01))))
(assert (and (<= (+ from@19@01 1) z@28@01) (< z@28@01 (length<Int> a@18@01))))
; [eval] loc(a, z)
(pop) ; 6
(declare-fun inv@29@01 ($Ref) Int)
(declare-fun img@30@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
(assert (forall ((z@28@01 Int)) (!
  (=>
    (and (<= (+ from@19@01 1) z@28@01) (< z@28@01 (length<Int> a@18@01)))
    (or (<= (+ from@19@01 1) z@28@01) (not (<= (+ from@19@01 1) z@28@01))))
  :pattern ((loc<Ref> a@18@01 z@28@01))
  :qid |val-aux|)))
; Check receiver injectivity
(push) ; 6
(assert (not (forall ((z1@28@01 Int) (z2@28@01 Int)) (!
  (=>
    (and
      (and (<= (+ from@19@01 1) z1@28@01) (< z1@28@01 (length<Int> a@18@01)))
      (and (<= (+ from@19@01 1) z2@28@01) (< z2@28@01 (length<Int> a@18@01)))
      (= (loc<Ref> a@18@01 z1@28@01) (loc<Ref> a@18@01 z2@28@01)))
    (= z1@28@01 z2@28@01))
  
  :qid |val-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((z@28@01 Int)) (!
  (=>
    (and (<= (+ from@19@01 1) z@28@01) (< z@28@01 (length<Int> a@18@01)))
    (and
      (= (inv@29@01 (loc<Ref> a@18@01 z@28@01)) z@28@01)
      (img@30@01 (loc<Ref> a@18@01 z@28@01))))
  :pattern ((loc<Ref> a@18@01 z@28@01))
  :qid |val-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@30@01 r)
      (and
        (<= (+ from@19@01 1) (inv@29@01 r))
        (< (inv@29@01 r) (length<Int> a@18@01))))
    (= (loc<Ref> a@18@01 (inv@29@01 r)) r))
  :pattern ((inv@29@01 r))
  :qid |val-fctOfInv|)))
(push) ; 6
(assert (not (forall ((r $Ref)) (!
  (=>
    (and
      (and
        (<= (+ from@19@01 1) (inv@29@01 r))
        (< (inv@29@01 r) (length<Int> a@18@01)))
      (img@30@01 r)
      (= r (loc<Ref> a@18@01 (inv@29@01 r))))
    (>
      (ite
        (and
          (img@23@01 r)
          (and
            (<= from@19@01 (inv@22@01 r))
            (< (inv@22@01 r) (length<Int> a@18@01))))
        $Perm.Write
        $Perm.No)
      $Perm.No))
  
  :qid |quant-u-11977|))))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(declare-const sm@31@01 $FVF<val>)
; Definitional axioms for snapshot map domain
(assert (forall ((r $Ref)) (!
  (and
    (=>
      (Set_in r ($FVF.domain_val (as sm@31@01  $FVF<val>)))
      (and
        (and
          (<= (+ from@19@01 1) (inv@29@01 r))
          (< (inv@29@01 r) (length<Int> a@18@01)))
        (img@30@01 r)))
    (=>
      (and
        (and
          (<= (+ from@19@01 1) (inv@29@01 r))
          (< (inv@29@01 r) (length<Int> a@18@01)))
        (img@30@01 r))
      (Set_in r ($FVF.domain_val (as sm@31@01  $FVF<val>)))))
  :pattern ((Set_in r ($FVF.domain_val (as sm@31@01  $FVF<val>))))
  :qid |qp.fvfDomDef7|)))
; Definitional axioms for snapshot map values
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and
        (and
          (<= (+ from@19@01 1) (inv@29@01 r))
          (< (inv@29@01 r) (length<Int> a@18@01)))
        (img@30@01 r))
      (and
        (img@23@01 r)
        (and
          (<= from@19@01 (inv@22@01 r))
          (< (inv@22@01 r) (length<Int> a@18@01)))))
    (=
      ($FVF.lookup_val (as sm@31@01  $FVF<val>) r)
      ($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.second ($Snap.second $t@20@01))) r)))
  :pattern (($FVF.lookup_val (as sm@31@01  $FVF<val>) r))
  :pattern (($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.second ($Snap.second $t@20@01))) r))
  :qid |qp.fvfValDef6|)))
(assert (countFalseX%precondition ($Snap.combine
  $Snap.unit
  ($Snap.combine
    $Snap.unit
    ($SortWrappers.$FVF<val>To$Snap (as sm@31@01  $FVF<val>)))) a@18@01 (+
  from@19@01
  1)))
(pop) ; 5
; Joined path conditions
(assert (forall ((z@28@01 Int)) (!
  (=>
    (and (<= (+ from@19@01 1) z@28@01) (< z@28@01 (length<Int> a@18@01)))
    (and
      (= (inv@29@01 (loc<Ref> a@18@01 z@28@01)) z@28@01)
      (img@30@01 (loc<Ref> a@18@01 z@28@01))))
  :pattern ((loc<Ref> a@18@01 z@28@01))
  :qid |val-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@30@01 r)
      (and
        (<= (+ from@19@01 1) (inv@29@01 r))
        (< (inv@29@01 r) (length<Int> a@18@01))))
    (= (loc<Ref> a@18@01 (inv@29@01 r)) r))
  :pattern ((inv@29@01 r))
  :qid |val-fctOfInv|)))
(assert (forall ((r $Ref)) (!
  (and
    (=>
      (Set_in r ($FVF.domain_val (as sm@31@01  $FVF<val>)))
      (and
        (and
          (<= (+ from@19@01 1) (inv@29@01 r))
          (< (inv@29@01 r) (length<Int> a@18@01)))
        (img@30@01 r)))
    (=>
      (and
        (and
          (<= (+ from@19@01 1) (inv@29@01 r))
          (< (inv@29@01 r) (length<Int> a@18@01)))
        (img@30@01 r))
      (Set_in r ($FVF.domain_val (as sm@31@01  $FVF<val>)))))
  :pattern ((Set_in r ($FVF.domain_val (as sm@31@01  $FVF<val>))))
  :qid |qp.fvfDomDef7|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and
        (and
          (<= (+ from@19@01 1) (inv@29@01 r))
          (< (inv@29@01 r) (length<Int> a@18@01)))
        (img@30@01 r))
      (and
        (img@23@01 r)
        (and
          (<= from@19@01 (inv@22@01 r))
          (< (inv@22@01 r) (length<Int> a@18@01)))))
    (=
      ($FVF.lookup_val (as sm@31@01  $FVF<val>) r)
      ($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.second ($Snap.second $t@20@01))) r)))
  :pattern (($FVF.lookup_val (as sm@31@01  $FVF<val>) r))
  :pattern (($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.second ($Snap.second $t@20@01))) r))
  :qid |qp.fvfValDef6|)))
(assert (and
  (<= 0 (+ from@19@01 1))
  (<= (+ from@19@01 1) (length<Int> a@18@01))
  (forall ((z@28@01 Int)) (!
    (=>
      (and (<= (+ from@19@01 1) z@28@01) (< z@28@01 (length<Int> a@18@01)))
      (or (<= (+ from@19@01 1) z@28@01) (not (<= (+ from@19@01 1) z@28@01))))
    :pattern ((loc<Ref> a@18@01 z@28@01))
    :qid |val-aux|))
  (countFalseX%precondition ($Snap.combine
    $Snap.unit
    ($Snap.combine
      $Snap.unit
      ($SortWrappers.$FVF<val>To$Snap (as sm@31@01  $FVF<val>)))) a@18@01 (+
    from@19@01
    1))))
(pop) ; 4
(pop) ; 3
; Joined path conditions
; Joined path conditions
(assert (forall ((z@28@01 Int)) (!
  (=>
    (and (<= (+ from@19@01 1) z@28@01) (< z@28@01 (length<Int> a@18@01)))
    (and
      (= (inv@29@01 (loc<Ref> a@18@01 z@28@01)) z@28@01)
      (img@30@01 (loc<Ref> a@18@01 z@28@01))))
  :pattern ((loc<Ref> a@18@01 z@28@01))
  :qid |val-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@30@01 r)
      (and
        (<= (+ from@19@01 1) (inv@29@01 r))
        (< (inv@29@01 r) (length<Int> a@18@01))))
    (= (loc<Ref> a@18@01 (inv@29@01 r)) r))
  :pattern ((inv@29@01 r))
  :qid |val-fctOfInv|)))
(assert (forall ((r $Ref)) (!
  (and
    (=>
      (Set_in r ($FVF.domain_val (as sm@31@01  $FVF<val>)))
      (and
        (and
          (<= (+ from@19@01 1) (inv@29@01 r))
          (< (inv@29@01 r) (length<Int> a@18@01)))
        (img@30@01 r)))
    (=>
      (and
        (and
          (<= (+ from@19@01 1) (inv@29@01 r))
          (< (inv@29@01 r) (length<Int> a@18@01)))
        (img@30@01 r))
      (Set_in r ($FVF.domain_val (as sm@31@01  $FVF<val>)))))
  :pattern ((Set_in r ($FVF.domain_val (as sm@31@01  $FVF<val>))))
  :qid |qp.fvfDomDef7|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and
        (and
          (<= (+ from@19@01 1) (inv@29@01 r))
          (< (inv@29@01 r) (length<Int> a@18@01)))
        (img@30@01 r))
      (and
        (img@23@01 r)
        (and
          (<= from@19@01 (inv@22@01 r))
          (< (inv@22@01 r) (length<Int> a@18@01)))))
    (=
      ($FVF.lookup_val (as sm@31@01  $FVF<val>) r)
      ($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.second ($Snap.second $t@20@01))) r)))
  :pattern (($FVF.lookup_val (as sm@31@01  $FVF<val>) r))
  :pattern (($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.second ($Snap.second $t@20@01))) r))
  :qid |qp.fvfValDef6|)))
(assert (=>
  (not (= from@19@01 (length<Int> a@18@01)))
  (and
    (not (= from@19@01 (length<Int> a@18@01)))
    (<= 0 (+ from@19@01 1))
    (<= (+ from@19@01 1) (length<Int> a@18@01))
    (forall ((z@28@01 Int)) (!
      (=>
        (and (<= (+ from@19@01 1) z@28@01) (< z@28@01 (length<Int> a@18@01)))
        (or (<= (+ from@19@01 1) z@28@01) (not (<= (+ from@19@01 1) z@28@01))))
      :pattern ((loc<Ref> a@18@01 z@28@01))
      :qid |val-aux|))
    (countFalseX%precondition ($Snap.combine
      $Snap.unit
      ($Snap.combine
        $Snap.unit
        ($SortWrappers.$FVF<val>To$Snap (as sm@31@01  $FVF<val>)))) a@18@01 (+
      from@19@01
      1)))))
(assert (or
  (not (= from@19@01 (length<Int> a@18@01)))
  (= from@19@01 (length<Int> a@18@01))))
(push) ; 3
(assert (not (=
  (countFalseX ($Snap.combine
    $Snap.unit
    ($Snap.combine
      $Snap.unit
      ($SortWrappers.$FVF<val>To$Snap (as sm@27@01  $FVF<val>)))) a@18@01 from@19@01)
  (ite
    (= from@19@01 (length<Int> a@18@01))
    0
    (countFalseX ($Snap.combine
      $Snap.unit
      ($Snap.combine
        $Snap.unit
        ($SortWrappers.$FVF<val>To$Snap (as sm@31@01  $FVF<val>)))) a@18@01 (+
      from@19@01
      1))))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(assert (=
  (countFalseX ($Snap.combine
    $Snap.unit
    ($Snap.combine
      $Snap.unit
      ($SortWrappers.$FVF<val>To$Snap (as sm@27@01  $FVF<val>)))) a@18@01 from@19@01)
  (ite
    (= from@19@01 (length<Int> a@18@01))
    0
    (countFalseX ($Snap.combine
      $Snap.unit
      ($Snap.combine
        $Snap.unit
        ($SortWrappers.$FVF<val>To$Snap (as sm@31@01  $FVF<val>)))) a@18@01 (+
      from@19@01
      1)))))
; [exec]
; assert false
(check-sat)
; unknown
; [state consolidation]
; State saturation: before repetition
(set-option :timeout 10)
(check-sat)
; unknown
(declare-const sm@32@01 $FVF<val>)
; Definitional axioms for snapshot map values
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@23@01 r)
      (and (<= from@19@01 (inv@22@01 r)) (< (inv@22@01 r) (length<Int> a@18@01))))
    (=
      ($FVF.lookup_val (as sm@32@01  $FVF<val>) r)
      ($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.second ($Snap.second $t@20@01))) r)))
  :pattern (($FVF.lookup_val (as sm@32@01  $FVF<val>) r))
  :pattern (($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.second ($Snap.second $t@20@01))) r))
  :qid |qp.fvfValDef8|)))
(declare-const pm@33@01 $FPM)
(assert (forall ((r $Ref)) (!
  (=
    ($FVF.perm_val (as pm@33@01  $FPM) r)
    (ite
      (and
        (img@23@01 r)
        (and
          (<= from@19@01 (inv@22@01 r))
          (< (inv@22@01 r) (length<Int> a@18@01))))
      $Perm.Write
      $Perm.No))
  :pattern (($FVF.perm_val (as pm@33@01  $FPM) r))
  :qid |qp.resPrmSumDef9|)))
; Assume upper permission bound for field val
(assert (forall ((r $Ref)) (!
  (<= ($FVF.perm_val (as pm@33@01  $FPM) r) $Perm.Write)
  :pattern ((inv@22@01 r))
  :qid |qp-fld-prm-bnd|)))
(set-option :timeout 0)
(check-sat)
; unknown
(pop) ; 2
(pop) ; 1
; ---------- lemmaFront ----------
(declare-const a@34@01 Array_)
(declare-const from@35@01 Int)
(declare-const to@36@01 Int)
(declare-const a@37@01 Array_)
(declare-const from@38@01 Int)
(declare-const to@39@01 Int)
(push) ; 1
(declare-const $t@40@01 $Snap)
(assert (= $t@40@01 ($Snap.combine ($Snap.first $t@40@01) ($Snap.second $t@40@01))))
(assert (= ($Snap.first $t@40@01) $Snap.unit))
; [eval] 0 <= from
(assert (<= 0 from@38@01))
(assert (=
  ($Snap.second $t@40@01)
  ($Snap.combine
    ($Snap.first ($Snap.second $t@40@01))
    ($Snap.second ($Snap.second $t@40@01)))))
(assert (= ($Snap.first ($Snap.second $t@40@01)) $Snap.unit))
; [eval] from <= to
(assert (<= from@38@01 to@39@01))
(assert (=
  ($Snap.second ($Snap.second $t@40@01))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second $t@40@01)))
    ($Snap.second ($Snap.second ($Snap.second $t@40@01))))))
(assert (= ($Snap.first ($Snap.second ($Snap.second $t@40@01))) $Snap.unit))
; [eval] to <= length(a)
; [eval] length(a)
(assert (<= to@39@01 (length<Int> a@37@01)))
(declare-const z@41@01 Int)
(push) ; 2
; [eval] from <= z && z < to
; [eval] from <= z
(push) ; 3
; [then-branch: 8 | !(from@38@01 <= z@41@01) | live]
; [else-branch: 8 | from@38@01 <= z@41@01 | live]
(push) ; 4
; [then-branch: 8 | !(from@38@01 <= z@41@01)]
(assert (not (<= from@38@01 z@41@01)))
(pop) ; 4
(push) ; 4
; [else-branch: 8 | from@38@01 <= z@41@01]
(assert (<= from@38@01 z@41@01))
; [eval] z < to
(pop) ; 4
(pop) ; 3
; Joined path conditions
; Joined path conditions
(assert (or (<= from@38@01 z@41@01) (not (<= from@38@01 z@41@01))))
(assert (and (<= from@38@01 z@41@01) (< z@41@01 to@39@01)))
; [eval] loc(a, z)
(pop) ; 2
(declare-fun inv@42@01 ($Ref) Int)
(declare-fun img@43@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
(assert (forall ((z@41@01 Int)) (!
  (=>
    (and (<= from@38@01 z@41@01) (< z@41@01 to@39@01))
    (or (<= from@38@01 z@41@01) (not (<= from@38@01 z@41@01))))
  :pattern ((loc<Ref> a@37@01 z@41@01))
  :qid |val-aux|)))
; Check receiver injectivity
(push) ; 2
(assert (not (forall ((z1@41@01 Int) (z2@41@01 Int)) (!
  (=>
    (and
      (and (<= from@38@01 z1@41@01) (< z1@41@01 to@39@01))
      (and (<= from@38@01 z2@41@01) (< z2@41@01 to@39@01))
      (= (loc<Ref> a@37@01 z1@41@01) (loc<Ref> a@37@01 z2@41@01)))
    (= z1@41@01 z2@41@01))
  
  :qid |val-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 2
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((z@41@01 Int)) (!
  (=>
    (and (<= from@38@01 z@41@01) (< z@41@01 to@39@01))
    (and
      (= (inv@42@01 (loc<Ref> a@37@01 z@41@01)) z@41@01)
      (img@43@01 (loc<Ref> a@37@01 z@41@01))))
  :pattern ((loc<Ref> a@37@01 z@41@01))
  :qid |quant-u-11979|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@43@01 r)
      (and (<= from@38@01 (inv@42@01 r)) (< (inv@42@01 r) to@39@01)))
    (= (loc<Ref> a@37@01 (inv@42@01 r)) r))
  :pattern ((inv@42@01 r))
  :qid |val-fctOfInv|)))
; Permissions are non-negative
; Field permissions are at most one
; Permission implies non-null receiver
(assert (forall ((z@41@01 Int)) (!
  (=>
    (and (<= from@38@01 z@41@01) (< z@41@01 to@39@01))
    (not (= (loc<Ref> a@37@01 z@41@01) $Ref.null)))
  :pattern ((loc<Ref> a@37@01 z@41@01))
  :qid |val-permImpliesNonNull|)))
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
(set-option :timeout 0)
(push) ; 2
(pop) ; 2
(push) ; 2
; [exec]
; assert countFalse(a, from, to) ==
;   (from == to ?
;     0 :
;     (loc(a, from).val ? 0 : 1) + countFalse(a, from + 1, to))
; [eval] countFalse(a, from, to) == (from == to ? 0 : (loc(a, from).val ? 0 : 1) + countFalse(a, from + 1, to))
; [eval] countFalse(a, from, to)
(push) ; 3
; [eval] 0 <= from
; [eval] from <= to
; [eval] to <= length(a)
; [eval] length(a)
(declare-const z@44@01 Int)
(push) ; 4
; [eval] from <= z && z < to
; [eval] from <= z
(push) ; 5
; [then-branch: 9 | !(from@38@01 <= z@44@01) | live]
; [else-branch: 9 | from@38@01 <= z@44@01 | live]
(push) ; 6
; [then-branch: 9 | !(from@38@01 <= z@44@01)]
(assert (not (<= from@38@01 z@44@01)))
(pop) ; 6
(push) ; 6
; [else-branch: 9 | from@38@01 <= z@44@01]
(assert (<= from@38@01 z@44@01))
; [eval] z < to
(pop) ; 6
(pop) ; 5
; Joined path conditions
; Joined path conditions
(assert (or (<= from@38@01 z@44@01) (not (<= from@38@01 z@44@01))))
(assert (and (<= from@38@01 z@44@01) (< z@44@01 to@39@01)))
; [eval] loc(a, z)
(pop) ; 4
(declare-fun inv@45@01 ($Ref) Int)
(declare-fun img@46@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
(assert (forall ((z@44@01 Int)) (!
  (=>
    (and (<= from@38@01 z@44@01) (< z@44@01 to@39@01))
    (or (<= from@38@01 z@44@01) (not (<= from@38@01 z@44@01))))
  :pattern ((loc<Ref> a@37@01 z@44@01))
  :qid |val-aux|)))
; Check receiver injectivity
(push) ; 4
(assert (not (forall ((z1@44@01 Int) (z2@44@01 Int)) (!
  (=>
    (and
      (and (<= from@38@01 z1@44@01) (< z1@44@01 to@39@01))
      (and (<= from@38@01 z2@44@01) (< z2@44@01 to@39@01))
      (= (loc<Ref> a@37@01 z1@44@01) (loc<Ref> a@37@01 z2@44@01)))
    (= z1@44@01 z2@44@01))
  
  :qid |val-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((z@44@01 Int)) (!
  (=>
    (and (<= from@38@01 z@44@01) (< z@44@01 to@39@01))
    (and
      (= (inv@45@01 (loc<Ref> a@37@01 z@44@01)) z@44@01)
      (img@46@01 (loc<Ref> a@37@01 z@44@01))))
  :pattern ((loc<Ref> a@37@01 z@44@01))
  :qid |val-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@46@01 r)
      (and (<= from@38@01 (inv@45@01 r)) (< (inv@45@01 r) to@39@01)))
    (= (loc<Ref> a@37@01 (inv@45@01 r)) r))
  :pattern ((inv@45@01 r))
  :qid |val-fctOfInv|)))
(push) ; 4
(assert (not (forall ((r $Ref)) (!
  (=>
    (and
      (and (<= from@38@01 (inv@45@01 r)) (< (inv@45@01 r) to@39@01))
      (img@46@01 r)
      (= r (loc<Ref> a@37@01 (inv@45@01 r))))
    (>
      (ite
        (and
          (img@43@01 r)
          (and (<= from@38@01 (inv@42@01 r)) (< (inv@42@01 r) to@39@01)))
        $Perm.Write
        $Perm.No)
      $Perm.No))
  
  :qid |quant-u-11981|))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(declare-const sm@47@01 $FVF<val>)
; Definitional axioms for snapshot map domain
(assert (forall ((r $Ref)) (!
  (and
    (=>
      (Set_in r ($FVF.domain_val (as sm@47@01  $FVF<val>)))
      (and
        (and (<= from@38@01 (inv@45@01 r)) (< (inv@45@01 r) to@39@01))
        (img@46@01 r)))
    (=>
      (and
        (and (<= from@38@01 (inv@45@01 r)) (< (inv@45@01 r) to@39@01))
        (img@46@01 r))
      (Set_in r ($FVF.domain_val (as sm@47@01  $FVF<val>)))))
  :pattern ((Set_in r ($FVF.domain_val (as sm@47@01  $FVF<val>))))
  :qid |qp.fvfDomDef11|)))
; Definitional axioms for snapshot map values
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and
        (and (<= from@38@01 (inv@45@01 r)) (< (inv@45@01 r) to@39@01))
        (img@46@01 r))
      (and
        (img@43@01 r)
        (and (<= from@38@01 (inv@42@01 r)) (< (inv@42@01 r) to@39@01))))
    (=
      ($FVF.lookup_val (as sm@47@01  $FVF<val>) r)
      ($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.second ($Snap.second ($Snap.second $t@40@01)))) r)))
  :pattern (($FVF.lookup_val (as sm@47@01  $FVF<val>) r))
  :pattern (($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.second ($Snap.second ($Snap.second $t@40@01)))) r))
  :qid |qp.fvfValDef10|)))
(assert (countFalse%precondition ($Snap.combine
  $Snap.unit
  ($Snap.combine
    $Snap.unit
    ($Snap.combine
      $Snap.unit
      ($SortWrappers.$FVF<val>To$Snap (as sm@47@01  $FVF<val>))))) a@37@01 from@38@01 to@39@01))
(pop) ; 3
; Joined path conditions
(assert (forall ((z@44@01 Int)) (!
  (=>
    (and (<= from@38@01 z@44@01) (< z@44@01 to@39@01))
    (and
      (= (inv@45@01 (loc<Ref> a@37@01 z@44@01)) z@44@01)
      (img@46@01 (loc<Ref> a@37@01 z@44@01))))
  :pattern ((loc<Ref> a@37@01 z@44@01))
  :qid |val-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@46@01 r)
      (and (<= from@38@01 (inv@45@01 r)) (< (inv@45@01 r) to@39@01)))
    (= (loc<Ref> a@37@01 (inv@45@01 r)) r))
  :pattern ((inv@45@01 r))
  :qid |val-fctOfInv|)))
(assert (forall ((r $Ref)) (!
  (and
    (=>
      (Set_in r ($FVF.domain_val (as sm@47@01  $FVF<val>)))
      (and
        (and (<= from@38@01 (inv@45@01 r)) (< (inv@45@01 r) to@39@01))
        (img@46@01 r)))
    (=>
      (and
        (and (<= from@38@01 (inv@45@01 r)) (< (inv@45@01 r) to@39@01))
        (img@46@01 r))
      (Set_in r ($FVF.domain_val (as sm@47@01  $FVF<val>)))))
  :pattern ((Set_in r ($FVF.domain_val (as sm@47@01  $FVF<val>))))
  :qid |qp.fvfDomDef11|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and
        (and (<= from@38@01 (inv@45@01 r)) (< (inv@45@01 r) to@39@01))
        (img@46@01 r))
      (and
        (img@43@01 r)
        (and (<= from@38@01 (inv@42@01 r)) (< (inv@42@01 r) to@39@01))))
    (=
      ($FVF.lookup_val (as sm@47@01  $FVF<val>) r)
      ($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.second ($Snap.second ($Snap.second $t@40@01)))) r)))
  :pattern (($FVF.lookup_val (as sm@47@01  $FVF<val>) r))
  :pattern (($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.second ($Snap.second ($Snap.second $t@40@01)))) r))
  :qid |qp.fvfValDef10|)))
(assert (and
  (forall ((z@44@01 Int)) (!
    (=>
      (and (<= from@38@01 z@44@01) (< z@44@01 to@39@01))
      (or (<= from@38@01 z@44@01) (not (<= from@38@01 z@44@01))))
    :pattern ((loc<Ref> a@37@01 z@44@01))
    :qid |val-aux|))
  (countFalse%precondition ($Snap.combine
    $Snap.unit
    ($Snap.combine
      $Snap.unit
      ($Snap.combine
        $Snap.unit
        ($SortWrappers.$FVF<val>To$Snap (as sm@47@01  $FVF<val>))))) a@37@01 from@38@01 to@39@01)))
; [eval] (from == to ? 0 : (loc(a, from).val ? 0 : 1) + countFalse(a, from + 1, to))
; [eval] from == to
(push) ; 3
(push) ; 4
(set-option :timeout 10)
(assert (not (not (= from@38@01 to@39@01))))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not (= from@38@01 to@39@01)))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; [then-branch: 10 | from@38@01 == to@39@01 | live]
; [else-branch: 10 | from@38@01 != to@39@01 | live]
(set-option :timeout 0)
(push) ; 4
; [then-branch: 10 | from@38@01 == to@39@01]
(assert (= from@38@01 to@39@01))
(pop) ; 4
(push) ; 4
; [else-branch: 10 | from@38@01 != to@39@01]
(assert (not (= from@38@01 to@39@01)))
; [eval] (loc(a, from).val ? 0 : 1) + countFalse(a, from + 1, to)
; [eval] (loc(a, from).val ? 0 : 1)
; [eval] loc(a, from)
(push) ; 5
(assert (not (and
  (img@43@01 (loc<Ref> a@37@01 from@38@01))
  (and
    (<= from@38@01 (inv@42@01 (loc<Ref> a@37@01 from@38@01)))
    (< (inv@42@01 (loc<Ref> a@37@01 from@38@01)) to@39@01)))))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(push) ; 5
(push) ; 6
(set-option :timeout 10)
(assert (not (not
  ($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.second ($Snap.second ($Snap.second $t@40@01)))) (loc<Ref> a@37@01 from@38@01)))))
(check-sat)
; unknown
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 6
(set-option :timeout 10)
(assert (not ($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.second ($Snap.second ($Snap.second $t@40@01)))) (loc<Ref> a@37@01 from@38@01))))
(check-sat)
; unknown
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
; [then-branch: 11 | Lookup(val, Second:(Second:(Second:($t@40@01))), loc[Ref](a@37@01, from@38@01)) | live]
; [else-branch: 11 | !(Lookup(val, Second:(Second:(Second:($t@40@01))), loc[Ref](a@37@01, from@38@01))) | live]
(set-option :timeout 0)
(push) ; 6
; [then-branch: 11 | Lookup(val, Second:(Second:(Second:($t@40@01))), loc[Ref](a@37@01, from@38@01))]
(assert ($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.second ($Snap.second ($Snap.second $t@40@01)))) (loc<Ref> a@37@01 from@38@01)))
(pop) ; 6
(push) ; 6
; [else-branch: 11 | !(Lookup(val, Second:(Second:(Second:($t@40@01))), loc[Ref](a@37@01, from@38@01)))]
(assert (not
  ($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.second ($Snap.second ($Snap.second $t@40@01)))) (loc<Ref> a@37@01 from@38@01))))
(pop) ; 6
(pop) ; 5
; Joined path conditions
; Joined path conditions
(assert (or
  (not
    ($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.second ($Snap.second ($Snap.second $t@40@01)))) (loc<Ref> a@37@01 from@38@01)))
  ($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.second ($Snap.second ($Snap.second $t@40@01)))) (loc<Ref> a@37@01 from@38@01))))
; [eval] countFalse(a, from + 1, to)
; [eval] from + 1
(push) ; 5
; [eval] 0 <= from
(push) ; 6
(assert (not (<= 0 (+ from@38@01 1))))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(assert (<= 0 (+ from@38@01 1)))
; [eval] from <= to
(push) ; 6
(assert (not (<= (+ from@38@01 1) to@39@01)))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(assert (<= (+ from@38@01 1) to@39@01))
; [eval] to <= length(a)
; [eval] length(a)
(declare-const z@48@01 Int)
(push) ; 6
; [eval] from <= z && z < to
; [eval] from <= z
(push) ; 7
; [then-branch: 12 | !(from@38@01 + 1 <= z@48@01) | live]
; [else-branch: 12 | from@38@01 + 1 <= z@48@01 | live]
(push) ; 8
; [then-branch: 12 | !(from@38@01 + 1 <= z@48@01)]
(assert (not (<= (+ from@38@01 1) z@48@01)))
(pop) ; 8
(push) ; 8
; [else-branch: 12 | from@38@01 + 1 <= z@48@01]
(assert (<= (+ from@38@01 1) z@48@01))
; [eval] z < to
(pop) ; 8
(pop) ; 7
; Joined path conditions
; Joined path conditions
(assert (or (<= (+ from@38@01 1) z@48@01) (not (<= (+ from@38@01 1) z@48@01))))
(assert (and (<= (+ from@38@01 1) z@48@01) (< z@48@01 to@39@01)))
; [eval] loc(a, z)
(pop) ; 6
(declare-fun inv@49@01 ($Ref) Int)
(declare-fun img@50@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
(assert (forall ((z@48@01 Int)) (!
  (=>
    (and (<= (+ from@38@01 1) z@48@01) (< z@48@01 to@39@01))
    (or (<= (+ from@38@01 1) z@48@01) (not (<= (+ from@38@01 1) z@48@01))))
  :pattern ((loc<Ref> a@37@01 z@48@01))
  :qid |val-aux|)))
; Check receiver injectivity
(push) ; 6
(assert (not (forall ((z1@48@01 Int) (z2@48@01 Int)) (!
  (=>
    (and
      (and (<= (+ from@38@01 1) z1@48@01) (< z1@48@01 to@39@01))
      (and (<= (+ from@38@01 1) z2@48@01) (< z2@48@01 to@39@01))
      (= (loc<Ref> a@37@01 z1@48@01) (loc<Ref> a@37@01 z2@48@01)))
    (= z1@48@01 z2@48@01))
  
  :qid |val-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((z@48@01 Int)) (!
  (=>
    (and (<= (+ from@38@01 1) z@48@01) (< z@48@01 to@39@01))
    (and
      (= (inv@49@01 (loc<Ref> a@37@01 z@48@01)) z@48@01)
      (img@50@01 (loc<Ref> a@37@01 z@48@01))))
  :pattern ((loc<Ref> a@37@01 z@48@01))
  :qid |val-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@50@01 r)
      (and (<= (+ from@38@01 1) (inv@49@01 r)) (< (inv@49@01 r) to@39@01)))
    (= (loc<Ref> a@37@01 (inv@49@01 r)) r))
  :pattern ((inv@49@01 r))
  :qid |val-fctOfInv|)))
(push) ; 6
(assert (not (forall ((r $Ref)) (!
  (=>
    (and
      (and (<= (+ from@38@01 1) (inv@49@01 r)) (< (inv@49@01 r) to@39@01))
      (img@50@01 r)
      (= r (loc<Ref> a@37@01 (inv@49@01 r))))
    (>
      (ite
        (and
          (img@43@01 r)
          (and (<= from@38@01 (inv@42@01 r)) (< (inv@42@01 r) to@39@01)))
        $Perm.Write
        $Perm.No)
      $Perm.No))
  
  :qid |quant-u-11983|))))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(declare-const sm@51@01 $FVF<val>)
; Definitional axioms for snapshot map domain
(assert (forall ((r $Ref)) (!
  (and
    (=>
      (Set_in r ($FVF.domain_val (as sm@51@01  $FVF<val>)))
      (and
        (and (<= (+ from@38@01 1) (inv@49@01 r)) (< (inv@49@01 r) to@39@01))
        (img@50@01 r)))
    (=>
      (and
        (and (<= (+ from@38@01 1) (inv@49@01 r)) (< (inv@49@01 r) to@39@01))
        (img@50@01 r))
      (Set_in r ($FVF.domain_val (as sm@51@01  $FVF<val>)))))
  :pattern ((Set_in r ($FVF.domain_val (as sm@51@01  $FVF<val>))))
  :qid |qp.fvfDomDef13|)))
; Definitional axioms for snapshot map values
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and
        (and (<= (+ from@38@01 1) (inv@49@01 r)) (< (inv@49@01 r) to@39@01))
        (img@50@01 r))
      (and
        (img@43@01 r)
        (and (<= from@38@01 (inv@42@01 r)) (< (inv@42@01 r) to@39@01))))
    (=
      ($FVF.lookup_val (as sm@51@01  $FVF<val>) r)
      ($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.second ($Snap.second ($Snap.second $t@40@01)))) r)))
  :pattern (($FVF.lookup_val (as sm@51@01  $FVF<val>) r))
  :pattern (($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.second ($Snap.second ($Snap.second $t@40@01)))) r))
  :qid |qp.fvfValDef12|)))
(assert (countFalse%precondition ($Snap.combine
  $Snap.unit
  ($Snap.combine
    $Snap.unit
    ($Snap.combine
      $Snap.unit
      ($SortWrappers.$FVF<val>To$Snap (as sm@51@01  $FVF<val>))))) a@37@01 (+
  from@38@01
  1) to@39@01))
(pop) ; 5
; Joined path conditions
(assert (forall ((z@48@01 Int)) (!
  (=>
    (and (<= (+ from@38@01 1) z@48@01) (< z@48@01 to@39@01))
    (and
      (= (inv@49@01 (loc<Ref> a@37@01 z@48@01)) z@48@01)
      (img@50@01 (loc<Ref> a@37@01 z@48@01))))
  :pattern ((loc<Ref> a@37@01 z@48@01))
  :qid |val-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@50@01 r)
      (and (<= (+ from@38@01 1) (inv@49@01 r)) (< (inv@49@01 r) to@39@01)))
    (= (loc<Ref> a@37@01 (inv@49@01 r)) r))
  :pattern ((inv@49@01 r))
  :qid |val-fctOfInv|)))
(assert (forall ((r $Ref)) (!
  (and
    (=>
      (Set_in r ($FVF.domain_val (as sm@51@01  $FVF<val>)))
      (and
        (and (<= (+ from@38@01 1) (inv@49@01 r)) (< (inv@49@01 r) to@39@01))
        (img@50@01 r)))
    (=>
      (and
        (and (<= (+ from@38@01 1) (inv@49@01 r)) (< (inv@49@01 r) to@39@01))
        (img@50@01 r))
      (Set_in r ($FVF.domain_val (as sm@51@01  $FVF<val>)))))
  :pattern ((Set_in r ($FVF.domain_val (as sm@51@01  $FVF<val>))))
  :qid |qp.fvfDomDef13|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and
        (and (<= (+ from@38@01 1) (inv@49@01 r)) (< (inv@49@01 r) to@39@01))
        (img@50@01 r))
      (and
        (img@43@01 r)
        (and (<= from@38@01 (inv@42@01 r)) (< (inv@42@01 r) to@39@01))))
    (=
      ($FVF.lookup_val (as sm@51@01  $FVF<val>) r)
      ($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.second ($Snap.second ($Snap.second $t@40@01)))) r)))
  :pattern (($FVF.lookup_val (as sm@51@01  $FVF<val>) r))
  :pattern (($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.second ($Snap.second ($Snap.second $t@40@01)))) r))
  :qid |qp.fvfValDef12|)))
(assert (and
  (<= 0 (+ from@38@01 1))
  (<= (+ from@38@01 1) to@39@01)
  (forall ((z@48@01 Int)) (!
    (=>
      (and (<= (+ from@38@01 1) z@48@01) (< z@48@01 to@39@01))
      (or (<= (+ from@38@01 1) z@48@01) (not (<= (+ from@38@01 1) z@48@01))))
    :pattern ((loc<Ref> a@37@01 z@48@01))
    :qid |val-aux|))
  (countFalse%precondition ($Snap.combine
    $Snap.unit
    ($Snap.combine
      $Snap.unit
      ($Snap.combine
        $Snap.unit
        ($SortWrappers.$FVF<val>To$Snap (as sm@51@01  $FVF<val>))))) a@37@01 (+
    from@38@01
    1) to@39@01)))
(pop) ; 4
(pop) ; 3
; Joined path conditions
; Joined path conditions
(assert (forall ((z@48@01 Int)) (!
  (=>
    (and (<= (+ from@38@01 1) z@48@01) (< z@48@01 to@39@01))
    (and
      (= (inv@49@01 (loc<Ref> a@37@01 z@48@01)) z@48@01)
      (img@50@01 (loc<Ref> a@37@01 z@48@01))))
  :pattern ((loc<Ref> a@37@01 z@48@01))
  :qid |val-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@50@01 r)
      (and (<= (+ from@38@01 1) (inv@49@01 r)) (< (inv@49@01 r) to@39@01)))
    (= (loc<Ref> a@37@01 (inv@49@01 r)) r))
  :pattern ((inv@49@01 r))
  :qid |val-fctOfInv|)))
(assert (forall ((r $Ref)) (!
  (and
    (=>
      (Set_in r ($FVF.domain_val (as sm@51@01  $FVF<val>)))
      (and
        (and (<= (+ from@38@01 1) (inv@49@01 r)) (< (inv@49@01 r) to@39@01))
        (img@50@01 r)))
    (=>
      (and
        (and (<= (+ from@38@01 1) (inv@49@01 r)) (< (inv@49@01 r) to@39@01))
        (img@50@01 r))
      (Set_in r ($FVF.domain_val (as sm@51@01  $FVF<val>)))))
  :pattern ((Set_in r ($FVF.domain_val (as sm@51@01  $FVF<val>))))
  :qid |qp.fvfDomDef13|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and
        (and (<= (+ from@38@01 1) (inv@49@01 r)) (< (inv@49@01 r) to@39@01))
        (img@50@01 r))
      (and
        (img@43@01 r)
        (and (<= from@38@01 (inv@42@01 r)) (< (inv@42@01 r) to@39@01))))
    (=
      ($FVF.lookup_val (as sm@51@01  $FVF<val>) r)
      ($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.second ($Snap.second ($Snap.second $t@40@01)))) r)))
  :pattern (($FVF.lookup_val (as sm@51@01  $FVF<val>) r))
  :pattern (($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.second ($Snap.second ($Snap.second $t@40@01)))) r))
  :qid |qp.fvfValDef12|)))
(assert (=>
  (not (= from@38@01 to@39@01))
  (and
    (not (= from@38@01 to@39@01))
    (or
      (not
        ($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.second ($Snap.second ($Snap.second $t@40@01)))) (loc<Ref> a@37@01 from@38@01)))
      ($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.second ($Snap.second ($Snap.second $t@40@01)))) (loc<Ref> a@37@01 from@38@01)))
    (<= 0 (+ from@38@01 1))
    (<= (+ from@38@01 1) to@39@01)
    (forall ((z@48@01 Int)) (!
      (=>
        (and (<= (+ from@38@01 1) z@48@01) (< z@48@01 to@39@01))
        (or (<= (+ from@38@01 1) z@48@01) (not (<= (+ from@38@01 1) z@48@01))))
      :pattern ((loc<Ref> a@37@01 z@48@01))
      :qid |val-aux|))
    (countFalse%precondition ($Snap.combine
      $Snap.unit
      ($Snap.combine
        $Snap.unit
        ($Snap.combine
          $Snap.unit
          ($SortWrappers.$FVF<val>To$Snap (as sm@51@01  $FVF<val>))))) a@37@01 (+
      from@38@01
      1) to@39@01))))
(assert (or (not (= from@38@01 to@39@01)) (= from@38@01 to@39@01)))
(push) ; 3
(assert (not (=
  (countFalse ($Snap.combine
    $Snap.unit
    ($Snap.combine
      $Snap.unit
      ($Snap.combine
        $Snap.unit
        ($SortWrappers.$FVF<val>To$Snap (as sm@47@01  $FVF<val>))))) a@37@01 from@38@01 to@39@01)
  (ite
    (= from@38@01 to@39@01)
    0
    (+
      (ite
        ($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.second ($Snap.second ($Snap.second $t@40@01)))) (loc<Ref> a@37@01 from@38@01))
        0
        1)
      (countFalse ($Snap.combine
        $Snap.unit
        ($Snap.combine
          $Snap.unit
          ($Snap.combine
            $Snap.unit
            ($SortWrappers.$FVF<val>To$Snap (as sm@51@01  $FVF<val>))))) a@37@01 (+
        from@38@01
        1) to@39@01))))))
(check-sat)
; unsat
(pop) ; 3
; 0.01s
; (get-info :all-statistics)
(assert (=
  (countFalse ($Snap.combine
    $Snap.unit
    ($Snap.combine
      $Snap.unit
      ($Snap.combine
        $Snap.unit
        ($SortWrappers.$FVF<val>To$Snap (as sm@47@01  $FVF<val>))))) a@37@01 from@38@01 to@39@01)
  (ite
    (= from@38@01 to@39@01)
    0
    (+
      (ite
        ($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.second ($Snap.second ($Snap.second $t@40@01)))) (loc<Ref> a@37@01 from@38@01))
        0
        1)
      (countFalse ($Snap.combine
        $Snap.unit
        ($Snap.combine
          $Snap.unit
          ($Snap.combine
            $Snap.unit
            ($SortWrappers.$FVF<val>To$Snap (as sm@51@01  $FVF<val>))))) a@37@01 (+
        from@38@01
        1) to@39@01)))))
(pop) ; 2
(pop) ; 1
