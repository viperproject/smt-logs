(get-info :version)
; (:version "4.12.1")
; Started: 2024-12-29 19:56:25
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
(declare-sort ArrayDomain 0)
(declare-sort $FVF<val_ref> 0)
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
(declare-fun $SortWrappers.ArrayDomainTo$Snap (ArrayDomain) $Snap)
(declare-fun $SortWrappers.$SnapToArrayDomain ($Snap) ArrayDomain)
(assert (forall ((x ArrayDomain)) (!
    (= x ($SortWrappers.$SnapToArrayDomain($SortWrappers.ArrayDomainTo$Snap x)))
    :pattern (($SortWrappers.ArrayDomainTo$Snap x))
    :qid |$Snap.$SnapToArrayDomainTo$Snap|
    )))
(assert (forall ((x $Snap)) (!
    (= x ($SortWrappers.ArrayDomainTo$Snap($SortWrappers.$SnapToArrayDomain x)))
    :pattern (($SortWrappers.$SnapToArrayDomain x))
    :qid |$Snap.ArrayDomainTo$SnapToArrayDomain|
    )))
; Declaring additional sort wrappers
(declare-fun $SortWrappers.$FVF<val_ref>To$Snap ($FVF<val_ref>) $Snap)
(declare-fun $SortWrappers.$SnapTo$FVF<val_ref> ($Snap) $FVF<val_ref>)
(assert (forall ((x $FVF<val_ref>)) (!
    (= x ($SortWrappers.$SnapTo$FVF<val_ref>($SortWrappers.$FVF<val_ref>To$Snap x)))
    :pattern (($SortWrappers.$FVF<val_ref>To$Snap x))
    :qid |$Snap.$SnapTo$FVF<val_ref>To$Snap|
    )))
(assert (forall ((x $Snap)) (!
    (= x ($SortWrappers.$FVF<val_ref>To$Snap($SortWrappers.$SnapTo$FVF<val_ref> x)))
    :pattern (($SortWrappers.$SnapTo$FVF<val_ref> x))
    :qid |$Snap.$FVF<val_ref>To$SnapTo$FVF<val_ref>|
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
; /field_value_functions_declarations.smt2 [val_ref: Ref]
(declare-fun $FVF.domain_val_ref ($FVF<val_ref>) Set<$Ref>)
(declare-fun $FVF.lookup_val_ref ($FVF<val_ref> $Ref) $Ref)
(declare-fun $FVF.after_val_ref ($FVF<val_ref> $FVF<val_ref>) Bool)
(declare-fun $FVF.loc_val_ref ($Ref $Ref) Bool)
(declare-fun $FVF.perm_val_ref ($FPM $Ref) $Perm)
(declare-const $fvfTOP_val_ref $FVF<val_ref>)
; Declaring symbols related to program functions (from program analysis)
(declare-fun read$ ($Snap) $Perm)
(declare-fun read$%limited ($Snap) $Perm)
(declare-const read$%stateless Bool)
(declare-fun read$%precondition ($Snap) Bool)
(declare-fun array_len ($Snap ArrayDomain) Int)
(declare-fun array_len%limited ($Snap ArrayDomain) Int)
(declare-fun array_len%stateless (ArrayDomain) Bool)
(declare-fun array_len%precondition ($Snap ArrayDomain) Bool)
(declare-fun idx_into ($Snap ArrayDomain Int) Int)
(declare-fun idx_into%limited ($Snap ArrayDomain Int) Int)
(declare-fun idx_into%stateless (ArrayDomain Int) Bool)
(declare-fun idx_into%precondition ($Snap ArrayDomain Int) Bool)
(declare-fun holds ($Snap $Ref Int) Bool)
(declare-fun holds%limited ($Snap $Ref Int) Bool)
(declare-fun holds%stateless ($Ref Int) Bool)
(declare-fun holds%precondition ($Snap $Ref Int) Bool)
(declare-fun to_domain ($Snap $Ref) ArrayDomain)
(declare-fun to_domain%limited ($Snap $Ref) ArrayDomain)
(declare-fun to_domain%stateless ($Ref) Bool)
(declare-fun to_domain%precondition ($Snap $Ref) Bool)
; Snapshot variable to be used during function verification
(declare-fun s@$ () $Snap)
; Declaring predicate trigger functions
(declare-fun Array%trigger ($Snap $Ref) Bool)
(declare-fun usize%trigger ($Snap $Ref) Bool)
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
; /field_value_functions_axioms.smt2 [val_ref: Ref]
(assert (forall ((vs $FVF<val_ref>) (ws $FVF<val_ref>)) (!
    (=>
      (and
        (Set_equal ($FVF.domain_val_ref vs) ($FVF.domain_val_ref ws))
        (forall ((x $Ref)) (!
          (=>
            (Set_in x ($FVF.domain_val_ref vs))
            (= ($FVF.lookup_val_ref vs x) ($FVF.lookup_val_ref ws x)))
          :pattern (($FVF.lookup_val_ref vs x) ($FVF.lookup_val_ref ws x))
          :qid |qp.$FVF<val_ref>-eq-inner|
          )))
      (= vs ws))
    :pattern (($SortWrappers.$FVF<val_ref>To$Snap vs)
              ($SortWrappers.$FVF<val_ref>To$Snap ws)
              )
    :qid |qp.$FVF<val_ref>-eq-outer|
    )))
(assert (forall ((r $Ref) (pm $FPM)) (!
    ($Perm.isValidVar ($FVF.perm_val_ref pm r))
    :pattern (($FVF.perm_val_ref pm r)))))
(assert (forall ((r $Ref) (f $Ref)) (!
    (= ($FVF.loc_val_ref f r) true)
    :pattern (($FVF.loc_val_ref f r)))))
; End preamble
; ------------------------------------------------------------
; State saturation: after preamble
(set-option :timeout 100)
(check-sat)
; unknown
; ------------------------------------------------------------
; Begin function- and predicate-related preamble
; Declaring symbols related to program functions (from verification)
(assert (forall ((s@$ $Snap)) (!
  (= (read$%limited s@$) (read$ s@$))
  :pattern ((read$ s@$))
  :qid |quant-u-5064|)))
(assert (forall ((s@$ $Snap)) (!
  (as read$%stateless  Bool)
  :pattern ((read$%limited s@$))
  :qid |quant-u-5065|)))
(assert (forall ((s@$ $Snap)) (!
  (let ((result@0@00 (read$%limited s@$))) (=>
    (read$%precondition s@$)
    (and (< $Perm.No result@0@00) (< result@0@00 $Perm.Write))))
  :pattern ((read$%limited s@$))
  :qid |quant-u-5074|)))
(assert (forall ((s@$ $Snap)) (!
  (let ((result@0@00 (read$%limited s@$))) true)
  :pattern ((read$%limited s@$))
  :qid |quant-u-5075|)))
(assert (forall ((s@$ $Snap)) (!
  (let ((result@0@00 (read$%limited s@$))) true)
  :pattern ((read$%limited s@$))
  :qid |quant-u-5076|)))
(assert (forall ((s@$ $Snap) (a@1@00 ArrayDomain)) (!
  (= (array_len%limited s@$ a@1@00) (array_len s@$ a@1@00))
  :pattern ((array_len s@$ a@1@00))
  :qid |quant-u-5066|)))
(assert (forall ((s@$ $Snap) (a@1@00 ArrayDomain)) (!
  (array_len%stateless a@1@00)
  :pattern ((array_len%limited s@$ a@1@00))
  :qid |quant-u-5067|)))
(assert (forall ((s@$ $Snap) (a@3@00 ArrayDomain) (a_len@4@00 Int)) (!
  (= (idx_into%limited s@$ a@3@00 a_len@4@00) (idx_into s@$ a@3@00 a_len@4@00))
  :pattern ((idx_into s@$ a@3@00 a_len@4@00))
  :qid |quant-u-5068|)))
(assert (forall ((s@$ $Snap) (a@3@00 ArrayDomain) (a_len@4@00 Int)) (!
  (idx_into%stateless a@3@00 a_len@4@00)
  :pattern ((idx_into%limited s@$ a@3@00 a_len@4@00))
  :qid |quant-u-5069|)))
(assert (forall ((s@$ $Snap) (a@6@00 $Ref) (b@7@00 Int)) (!
  (= (holds%limited s@$ a@6@00 b@7@00) (holds s@$ a@6@00 b@7@00))
  :pattern ((holds s@$ a@6@00 b@7@00))
  :qid |quant-u-5070|)))
(assert (forall ((s@$ $Snap) (a@6@00 $Ref) (b@7@00 Int)) (!
  (holds%stateless a@6@00 b@7@00)
  :pattern ((holds%limited s@$ a@6@00 b@7@00))
  :qid |quant-u-5071|)))
(assert (forall ((s@$ $Snap) (self@9@00 $Ref)) (!
  (= (to_domain%limited s@$ self@9@00) (to_domain s@$ self@9@00))
  :pattern ((to_domain s@$ self@9@00))
  :qid |quant-u-5072|)))
(assert (forall ((s@$ $Snap) (self@9@00 $Ref)) (!
  (to_domain%stateless self@9@00)
  :pattern ((to_domain%limited s@$ self@9@00))
  :qid |quant-u-5073|)))
; End function- and predicate-related preamble
; ------------------------------------------------------------
; ---------- foo ----------
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
; var a: Ref
(declare-const a@0@01 $Ref)
; [exec]
; var a_len: Int
(declare-const a_len@1@01 Int)
; [exec]
; var _3: Ref
(declare-const _3@2@01 $Ref)
; [exec]
; var unknown: Ref
(declare-const unknown@3@01 $Ref)
; [exec]
; var i: Ref
(declare-const i@4@01 $Ref)
; [exec]
; inhale acc(a.val_ref, write) && acc(Array(a.val_ref), write)
(declare-const $t@5@01 $Snap)
(assert (= $t@5@01 ($Snap.combine ($Snap.first $t@5@01) ($Snap.second $t@5@01))))
(assert (not (= a@0@01 $Ref.null)))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale acc(_3.val_ref, write) && acc(usize(unknown), read$())
(declare-const $t@6@01 $Snap)
(assert (= $t@6@01 ($Snap.combine ($Snap.first $t@6@01) ($Snap.second $t@6@01))))
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (= a@0@01 _3@2@01)))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(assert (not (= _3@2@01 $Ref.null)))
; [eval] read$()
(set-option :timeout 0)
(push) ; 3
(assert (read$%precondition $Snap.unit))
(pop) ; 3
; Joined path conditions
(assert (read$%precondition $Snap.unit))
(push) ; 3
(assert (not (or (= (read$ $Snap.unit) $Perm.No) (< $Perm.No (read$ $Snap.unit)))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(assert (<= $Perm.No (read$ $Snap.unit)))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; exhale acc(a.val_ref, read$())
; [eval] read$()
(set-option :timeout 0)
(push) ; 3
(pop) ; 3
; Joined path conditions
(push) ; 3
(assert (not (or (= (read$ $Snap.unit) $Perm.No) (< $Perm.No (read$ $Snap.unit)))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(push) ; 3
(set-option :timeout 10)
(assert (not (= (- $Perm.Write ($Perm.min $Perm.Write (read$ $Snap.unit))) $Perm.No)))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(assert (<= $Perm.No (- $Perm.Write ($Perm.min $Perm.Write (read$ $Snap.unit)))))
(assert (<= (- $Perm.Write ($Perm.min $Perm.Write (read$ $Snap.unit))) $Perm.Write))
(assert (=>
  (< $Perm.No (- $Perm.Write ($Perm.min $Perm.Write (read$ $Snap.unit))))
  (not (= a@0@01 $Ref.null))))
(set-option :timeout 0)
(push) ; 3
(assert (not (or
  (= (- (read$ $Snap.unit) ($Perm.min $Perm.Write (read$ $Snap.unit))) $Perm.No)
  (< (- (read$ $Snap.unit) ($Perm.min $Perm.Write (read$ $Snap.unit))) $Perm.No))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; [exec]
; inhale acc(usize(i), write) && acc(a.val_ref, read$())
(declare-const $t@7@01 $Snap)
(assert (= $t@7@01 ($Snap.combine ($Snap.first $t@7@01) ($Snap.second $t@7@01))))
(push) ; 3
(set-option :timeout 10)
(assert (not (= unknown@3@01 i@4@01)))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; [eval] read$()
(set-option :timeout 0)
(push) ; 3
(pop) ; 3
; Joined path conditions
(push) ; 3
(assert (not (or (= (read$ $Snap.unit) $Perm.No) (< $Perm.No (read$ $Snap.unit)))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(declare-const $t@8@01 $Ref)
(assert (and
  (=>
    (< $Perm.No (- $Perm.Write ($Perm.min $Perm.Write (read$ $Snap.unit))))
    (= $t@8@01 ($SortWrappers.$SnapTo$Ref ($Snap.first $t@5@01))))
  (=>
    (< $Perm.No (read$ $Snap.unit))
    (= $t@8@01 ($SortWrappers.$SnapTo$Ref ($Snap.second $t@7@01))))))
(assert (<=
  $Perm.No
  (+
    (- $Perm.Write ($Perm.min $Perm.Write (read$ $Snap.unit)))
    (read$ $Snap.unit))))
(assert (<=
  (+
    (- $Perm.Write ($Perm.min $Perm.Write (read$ $Snap.unit)))
    (read$ $Snap.unit))
  $Perm.Write))
(assert (=>
  (<
    $Perm.No
    (+
      (- $Perm.Write ($Perm.min $Perm.Write (read$ $Snap.unit)))
      (read$ $Snap.unit)))
  (not (= a@0@01 $Ref.null))))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale (unfolding acc(usize(i), write) in
;     (forall q: Int ::
;       { idx_into(to_domain(a.val_ref), q) }
;       !(q < i.val_int) ||
;       idx_into(to_domain(a.val_ref), q) <=
;       idx_into(to_domain(a.val_ref), i.val_int)))
(declare-const $t@9@01 $Snap)
(assert (= $t@9@01 $Snap.unit))
; [eval] (unfolding acc(usize(i), write) in (forall q: Int :: { idx_into(to_domain(a.val_ref), q) } !(q < i.val_int) || idx_into(to_domain(a.val_ref), q) <= idx_into(to_domain(a.val_ref), i.val_int)))
(set-option :timeout 0)
(push) ; 3
(assert (usize%trigger ($Snap.first $t@7@01) i@4@01))
(assert (not (= i@4@01 $Ref.null)))
; [eval] (forall q: Int :: { idx_into(to_domain(a.val_ref), q) } !(q < i.val_int) || idx_into(to_domain(a.val_ref), q) <= idx_into(to_domain(a.val_ref), i.val_int))
(declare-const q@10@01 Int)
(push) ; 4
; [eval] !(q < i.val_int) || idx_into(to_domain(a.val_ref), q) <= idx_into(to_domain(a.val_ref), i.val_int)
; [eval] !(q < i.val_int)
; [eval] q < i.val_int
(push) ; 5
; [then-branch: 0 | !(q@10@01 < First:($t@7@01)) | live]
; [else-branch: 0 | q@10@01 < First:($t@7@01) | live]
(push) ; 6
; [then-branch: 0 | !(q@10@01 < First:($t@7@01))]
(assert (not (< q@10@01 ($SortWrappers.$SnapToInt ($Snap.first $t@7@01)))))
(pop) ; 6
(push) ; 6
; [else-branch: 0 | q@10@01 < First:($t@7@01)]
(assert (< q@10@01 ($SortWrappers.$SnapToInt ($Snap.first $t@7@01))))
; [eval] idx_into(to_domain(a.val_ref), q) <= idx_into(to_domain(a.val_ref), i.val_int)
; [eval] idx_into(to_domain(a.val_ref), q)
; [eval] to_domain(a.val_ref)
(push) ; 7
(set-option :timeout 10)
(assert (not (<
  $Perm.No
  (+
    (- $Perm.Write ($Perm.min $Perm.Write (read$ $Snap.unit)))
    (read$ $Snap.unit)))))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 7
; [eval] read$()
(push) ; 8
(pop) ; 8
; Joined path conditions
(push) ; 8
(assert (not (or (= (read$ $Snap.unit) $Perm.No) (< $Perm.No (read$ $Snap.unit)))))
(check-sat)
; unsat
(pop) ; 8
; 0.00s
; (get-info :all-statistics)
(push) ; 8
(set-option :timeout 10)
(assert (not (= ($SortWrappers.$SnapTo$Ref ($Snap.first $t@5@01)) $t@8@01)))
(check-sat)
; unsat
(pop) ; 8
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 8
(set-option :timeout 10)
(assert (not (< $Perm.No (read$ $Snap.unit))))
(check-sat)
; unsat
(pop) ; 8
; 0.00s
; (get-info :all-statistics)
(assert (to_domain%precondition ($Snap.second $t@5@01) $t@8@01))
(pop) ; 7
; Joined path conditions
(assert (to_domain%precondition ($Snap.second $t@5@01) $t@8@01))
(set-option :timeout 0)
(push) ; 7
(assert (idx_into%precondition $Snap.unit (to_domain ($Snap.second $t@5@01) $t@8@01) q@10@01))
(pop) ; 7
; Joined path conditions
(assert (idx_into%precondition $Snap.unit (to_domain ($Snap.second $t@5@01) $t@8@01) q@10@01))
; [eval] idx_into(to_domain(a.val_ref), i.val_int)
; [eval] to_domain(a.val_ref)
(push) ; 7
(set-option :timeout 10)
(assert (not (<
  $Perm.No
  (+
    (- $Perm.Write ($Perm.min $Perm.Write (read$ $Snap.unit)))
    (read$ $Snap.unit)))))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 7
; [eval] read$()
(push) ; 8
(pop) ; 8
; Joined path conditions
(push) ; 8
(assert (not (or (= (read$ $Snap.unit) $Perm.No) (< $Perm.No (read$ $Snap.unit)))))
(check-sat)
; unsat
(pop) ; 8
; 0.00s
; (get-info :all-statistics)
(push) ; 8
(set-option :timeout 10)
(assert (not (= ($SortWrappers.$SnapTo$Ref ($Snap.first $t@5@01)) $t@8@01)))
(check-sat)
; unsat
(pop) ; 8
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 8
(set-option :timeout 10)
(assert (not (< $Perm.No (read$ $Snap.unit))))
(check-sat)
; unsat
(pop) ; 8
; 0.00s
; (get-info :all-statistics)
(pop) ; 7
; Joined path conditions
(set-option :timeout 0)
(push) ; 7
(assert (idx_into%precondition $Snap.unit (to_domain ($Snap.second $t@5@01) $t@8@01) ($SortWrappers.$SnapToInt ($Snap.first $t@7@01))))
(pop) ; 7
; Joined path conditions
(assert (idx_into%precondition $Snap.unit (to_domain ($Snap.second $t@5@01) $t@8@01) ($SortWrappers.$SnapToInt ($Snap.first $t@7@01))))
(pop) ; 6
(pop) ; 5
; Joined path conditions
; Joined path conditions
(assert (=>
  (< q@10@01 ($SortWrappers.$SnapToInt ($Snap.first $t@7@01)))
  (and
    (< q@10@01 ($SortWrappers.$SnapToInt ($Snap.first $t@7@01)))
    (to_domain%precondition ($Snap.second $t@5@01) $t@8@01)
    (idx_into%precondition $Snap.unit (to_domain ($Snap.second $t@5@01) $t@8@01) q@10@01)
    (idx_into%precondition $Snap.unit (to_domain ($Snap.second $t@5@01) $t@8@01) ($SortWrappers.$SnapToInt ($Snap.first $t@7@01))))))
(assert (or
  (< q@10@01 ($SortWrappers.$SnapToInt ($Snap.first $t@7@01)))
  (not (< q@10@01 ($SortWrappers.$SnapToInt ($Snap.first $t@7@01))))))
(pop) ; 4
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall ((q@10@01 Int)) (!
  (and
    (=>
      (< q@10@01 ($SortWrappers.$SnapToInt ($Snap.first $t@7@01)))
      (and
        (< q@10@01 ($SortWrappers.$SnapToInt ($Snap.first $t@7@01)))
        (to_domain%precondition ($Snap.second $t@5@01) $t@8@01)
        (idx_into%precondition $Snap.unit (to_domain ($Snap.second $t@5@01) $t@8@01) q@10@01)
        (idx_into%precondition $Snap.unit (to_domain ($Snap.second $t@5@01) $t@8@01) ($SortWrappers.$SnapToInt ($Snap.first $t@7@01)))))
    (or
      (< q@10@01 ($SortWrappers.$SnapToInt ($Snap.first $t@7@01)))
      (not (< q@10@01 ($SortWrappers.$SnapToInt ($Snap.first $t@7@01))))))
  :pattern ((idx_into%limited $Snap.unit (to_domain ($Snap.second $t@5@01) $t@8@01) q@10@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/issue387/jonas_viktor.vpr@41@8@44@50-aux|)))
(pop) ; 3
; Joined path conditions
(assert (and
  (usize%trigger ($Snap.first $t@7@01) i@4@01)
  (not (= i@4@01 $Ref.null))
  (forall ((q@10@01 Int)) (!
    (and
      (=>
        (< q@10@01 ($SortWrappers.$SnapToInt ($Snap.first $t@7@01)))
        (and
          (< q@10@01 ($SortWrappers.$SnapToInt ($Snap.first $t@7@01)))
          (to_domain%precondition ($Snap.second $t@5@01) $t@8@01)
          (idx_into%precondition $Snap.unit (to_domain ($Snap.second $t@5@01) $t@8@01) q@10@01)
          (idx_into%precondition $Snap.unit (to_domain ($Snap.second $t@5@01) $t@8@01) ($SortWrappers.$SnapToInt ($Snap.first $t@7@01)))))
      (or
        (< q@10@01 ($SortWrappers.$SnapToInt ($Snap.first $t@7@01)))
        (not (< q@10@01 ($SortWrappers.$SnapToInt ($Snap.first $t@7@01))))))
    :pattern ((idx_into%limited $Snap.unit (to_domain ($Snap.second $t@5@01) $t@8@01) q@10@01))
    :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/issue387/jonas_viktor.vpr@41@8@44@50-aux|))))
(assert (forall ((q@10@01 Int)) (!
  (or
    (not (< q@10@01 ($SortWrappers.$SnapToInt ($Snap.first $t@7@01))))
    (<=
      (idx_into $Snap.unit (to_domain ($Snap.second $t@5@01) $t@8@01) q@10@01)
      (idx_into $Snap.unit (to_domain ($Snap.second $t@5@01) $t@8@01) ($SortWrappers.$SnapToInt ($Snap.first $t@7@01)))))
  :pattern ((idx_into%limited $Snap.unit (to_domain ($Snap.second $t@5@01) $t@8@01) q@10@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/issue387/jonas_viktor.vpr@41@8@44@50|)))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; assert (unfolding acc(usize(i), write) in
;     (forall q: Int ::
;       { idx_into(to_domain(a.val_ref), q) }
;       !(q < i.val_int) ||
;       idx_into(to_domain(a.val_ref), q) <=
;       idx_into(to_domain(a.val_ref), i.val_int)))
; [eval] (unfolding acc(usize(i), write) in (forall q: Int :: { idx_into(to_domain(a.val_ref), q) } !(q < i.val_int) || idx_into(to_domain(a.val_ref), q) <= idx_into(to_domain(a.val_ref), i.val_int)))
(set-option :timeout 0)
(push) ; 3
; [eval] (forall q: Int :: { idx_into(to_domain(a.val_ref), q) } !(q < i.val_int) || idx_into(to_domain(a.val_ref), q) <= idx_into(to_domain(a.val_ref), i.val_int))
(declare-const q@11@01 Int)
(push) ; 4
; [eval] !(q < i.val_int) || idx_into(to_domain(a.val_ref), q) <= idx_into(to_domain(a.val_ref), i.val_int)
; [eval] !(q < i.val_int)
; [eval] q < i.val_int
(push) ; 5
; [then-branch: 1 | !(q@11@01 < First:($t@7@01)) | live]
; [else-branch: 1 | q@11@01 < First:($t@7@01) | live]
(push) ; 6
; [then-branch: 1 | !(q@11@01 < First:($t@7@01))]
(assert (not (< q@11@01 ($SortWrappers.$SnapToInt ($Snap.first $t@7@01)))))
(pop) ; 6
(push) ; 6
; [else-branch: 1 | q@11@01 < First:($t@7@01)]
(assert (< q@11@01 ($SortWrappers.$SnapToInt ($Snap.first $t@7@01))))
; [eval] idx_into(to_domain(a.val_ref), q) <= idx_into(to_domain(a.val_ref), i.val_int)
; [eval] idx_into(to_domain(a.val_ref), q)
; [eval] to_domain(a.val_ref)
(push) ; 7
(set-option :timeout 10)
(assert (not (<
  $Perm.No
  (+
    (- $Perm.Write ($Perm.min $Perm.Write (read$ $Snap.unit)))
    (read$ $Snap.unit)))))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 7
; [eval] read$()
(push) ; 8
(pop) ; 8
; Joined path conditions
(push) ; 8
(assert (not (or (= (read$ $Snap.unit) $Perm.No) (< $Perm.No (read$ $Snap.unit)))))
(check-sat)
; unsat
(pop) ; 8
; 0.00s
; (get-info :all-statistics)
(push) ; 8
(set-option :timeout 10)
(assert (not (= ($SortWrappers.$SnapTo$Ref ($Snap.first $t@5@01)) $t@8@01)))
(check-sat)
; unsat
(pop) ; 8
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 8
(set-option :timeout 10)
(assert (not (< $Perm.No (read$ $Snap.unit))))
(check-sat)
; unsat
(pop) ; 8
; 0.00s
; (get-info :all-statistics)
(assert (to_domain%precondition ($Snap.second $t@5@01) $t@8@01))
(pop) ; 7
; Joined path conditions
(assert (to_domain%precondition ($Snap.second $t@5@01) $t@8@01))
(set-option :timeout 0)
(push) ; 7
(assert (idx_into%precondition $Snap.unit (to_domain ($Snap.second $t@5@01) $t@8@01) q@11@01))
(pop) ; 7
; Joined path conditions
(assert (idx_into%precondition $Snap.unit (to_domain ($Snap.second $t@5@01) $t@8@01) q@11@01))
; [eval] idx_into(to_domain(a.val_ref), i.val_int)
; [eval] to_domain(a.val_ref)
(push) ; 7
(set-option :timeout 10)
(assert (not (<
  $Perm.No
  (+
    (- $Perm.Write ($Perm.min $Perm.Write (read$ $Snap.unit)))
    (read$ $Snap.unit)))))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 7
; [eval] read$()
(push) ; 8
(pop) ; 8
; Joined path conditions
(push) ; 8
(assert (not (or (= (read$ $Snap.unit) $Perm.No) (< $Perm.No (read$ $Snap.unit)))))
(check-sat)
; unsat
(pop) ; 8
; 0.00s
; (get-info :all-statistics)
(push) ; 8
(set-option :timeout 10)
(assert (not (= ($SortWrappers.$SnapTo$Ref ($Snap.first $t@5@01)) $t@8@01)))
(check-sat)
; unsat
(pop) ; 8
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 8
(set-option :timeout 10)
(assert (not (< $Perm.No (read$ $Snap.unit))))
(check-sat)
; unsat
(pop) ; 8
; 0.00s
; (get-info :all-statistics)
(pop) ; 7
; Joined path conditions
(set-option :timeout 0)
(push) ; 7
(assert (idx_into%precondition $Snap.unit (to_domain ($Snap.second $t@5@01) $t@8@01) ($SortWrappers.$SnapToInt ($Snap.first $t@7@01))))
(pop) ; 7
; Joined path conditions
(assert (idx_into%precondition $Snap.unit (to_domain ($Snap.second $t@5@01) $t@8@01) ($SortWrappers.$SnapToInt ($Snap.first $t@7@01))))
(pop) ; 6
(pop) ; 5
; Joined path conditions
; Joined path conditions
(assert (=>
  (< q@11@01 ($SortWrappers.$SnapToInt ($Snap.first $t@7@01)))
  (and
    (< q@11@01 ($SortWrappers.$SnapToInt ($Snap.first $t@7@01)))
    (to_domain%precondition ($Snap.second $t@5@01) $t@8@01)
    (idx_into%precondition $Snap.unit (to_domain ($Snap.second $t@5@01) $t@8@01) q@11@01)
    (idx_into%precondition $Snap.unit (to_domain ($Snap.second $t@5@01) $t@8@01) ($SortWrappers.$SnapToInt ($Snap.first $t@7@01))))))
(assert (or
  (< q@11@01 ($SortWrappers.$SnapToInt ($Snap.first $t@7@01)))
  (not (< q@11@01 ($SortWrappers.$SnapToInt ($Snap.first $t@7@01))))))
(pop) ; 4
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall ((q@11@01 Int)) (!
  (and
    (=>
      (< q@11@01 ($SortWrappers.$SnapToInt ($Snap.first $t@7@01)))
      (and
        (< q@11@01 ($SortWrappers.$SnapToInt ($Snap.first $t@7@01)))
        (to_domain%precondition ($Snap.second $t@5@01) $t@8@01)
        (idx_into%precondition $Snap.unit (to_domain ($Snap.second $t@5@01) $t@8@01) q@11@01)
        (idx_into%precondition $Snap.unit (to_domain ($Snap.second $t@5@01) $t@8@01) ($SortWrappers.$SnapToInt ($Snap.first $t@7@01)))))
    (or
      (< q@11@01 ($SortWrappers.$SnapToInt ($Snap.first $t@7@01)))
      (not (< q@11@01 ($SortWrappers.$SnapToInt ($Snap.first $t@7@01))))))
  :pattern ((idx_into%limited $Snap.unit (to_domain ($Snap.second $t@5@01) $t@8@01) q@11@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/issue387/jonas_viktor.vpr@47@8@50@50-aux|)))
(pop) ; 3
; Joined path conditions
(assert (forall ((q@11@01 Int)) (!
  (and
    (=>
      (< q@11@01 ($SortWrappers.$SnapToInt ($Snap.first $t@7@01)))
      (and
        (< q@11@01 ($SortWrappers.$SnapToInt ($Snap.first $t@7@01)))
        (to_domain%precondition ($Snap.second $t@5@01) $t@8@01)
        (idx_into%precondition $Snap.unit (to_domain ($Snap.second $t@5@01) $t@8@01) q@11@01)
        (idx_into%precondition $Snap.unit (to_domain ($Snap.second $t@5@01) $t@8@01) ($SortWrappers.$SnapToInt ($Snap.first $t@7@01)))))
    (or
      (< q@11@01 ($SortWrappers.$SnapToInt ($Snap.first $t@7@01)))
      (not (< q@11@01 ($SortWrappers.$SnapToInt ($Snap.first $t@7@01))))))
  :pattern ((idx_into%limited $Snap.unit (to_domain ($Snap.second $t@5@01) $t@8@01) q@11@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/issue387/jonas_viktor.vpr@47@8@50@50-aux|)))
(assert (forall ((q@11@01 Int)) (!
  (=>
    (< q@11@01 ($SortWrappers.$SnapToInt ($Snap.first $t@7@01)))
    (and
      (and
        (to_domain%precondition ($Snap.second $t@5@01) $t@8@01)
        (idx_into%precondition $Snap.unit (to_domain ($Snap.second $t@5@01) $t@8@01) q@11@01))
      (and
        (to_domain%precondition ($Snap.second $t@5@01) $t@8@01)
        (idx_into%precondition $Snap.unit (to_domain ($Snap.second $t@5@01) $t@8@01) ($SortWrappers.$SnapToInt ($Snap.first $t@7@01))))))
  :pattern ((idx_into%limited $Snap.unit (to_domain ($Snap.second $t@5@01) $t@8@01) q@11@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/issue387/jonas_viktor.vpr@47@8@50@50_precondition|)))
(push) ; 3
(assert (not (forall ((q@11@01 Int)) (!
  (=>
    (=>
      (< q@11@01 ($SortWrappers.$SnapToInt ($Snap.first $t@7@01)))
      (and
        (and
          (to_domain%precondition ($Snap.second $t@5@01) $t@8@01)
          (idx_into%precondition $Snap.unit (to_domain ($Snap.second $t@5@01) $t@8@01) q@11@01))
        (and
          (to_domain%precondition ($Snap.second $t@5@01) $t@8@01)
          (idx_into%precondition $Snap.unit (to_domain ($Snap.second $t@5@01) $t@8@01) ($SortWrappers.$SnapToInt ($Snap.first $t@7@01))))))
    (or
      (not (< q@11@01 ($SortWrappers.$SnapToInt ($Snap.first $t@7@01))))
      (<=
        (idx_into $Snap.unit (to_domain ($Snap.second $t@5@01) $t@8@01) q@11@01)
        (idx_into $Snap.unit (to_domain ($Snap.second $t@5@01) $t@8@01) ($SortWrappers.$SnapToInt ($Snap.first $t@7@01))))))
  :pattern ((idx_into%limited $Snap.unit (to_domain ($Snap.second $t@5@01) $t@8@01) q@11@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/issue387/jonas_viktor.vpr@47@8@50@50|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(assert (forall ((q@11@01 Int)) (!
  (or
    (not (< q@11@01 ($SortWrappers.$SnapToInt ($Snap.first $t@7@01))))
    (<=
      (idx_into $Snap.unit (to_domain ($Snap.second $t@5@01) $t@8@01) q@11@01)
      (idx_into $Snap.unit (to_domain ($Snap.second $t@5@01) $t@8@01) ($SortWrappers.$SnapToInt ($Snap.first $t@7@01)))))
  :pattern ((idx_into%limited $Snap.unit (to_domain ($Snap.second $t@5@01) $t@8@01) q@11@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/issue387/jonas_viktor.vpr@47@8@50@50|)))
(pop) ; 2
(pop) ; 1
; ---------- foo2 ----------
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
; var a: Ref
(declare-const a@12@01 $Ref)
; [exec]
; var _3: Ref
(declare-const _3@13@01 $Ref)
; [exec]
; inhale acc(a.val_ref, write)
(declare-const $t@14@01 $Ref)
(assert (not (= a@12@01 $Ref.null)))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale acc(_3.val_ref, write)
(declare-const $t@15@01 $Ref)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (= a@12@01 _3@13@01)))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(assert (not (= _3@13@01 $Ref.null)))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; exhale acc(a.val_ref, 1 / 2)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not false))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; [exec]
; inhale acc(a.val_ref, 1 / 2)
(declare-const $t@16@01 $Ref)
(assert (= $t@14@01 $t@16@01))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale (forall q: Int :: { holds(a.val_ref, q) } holds(a.val_ref, q))
(declare-const $t@17@01 $Snap)
(assert (= $t@17@01 $Snap.unit))
; [eval] (forall q: Int :: { holds(a.val_ref, q) } holds(a.val_ref, q))
(declare-const q@18@01 Int)
(set-option :timeout 0)
(push) ; 3
; [eval] holds(a.val_ref, q)
(push) ; 4
(assert (holds%precondition $Snap.unit $t@14@01 q@18@01))
(pop) ; 4
; Joined path conditions
(assert (holds%precondition $Snap.unit $t@14@01 q@18@01))
(pop) ; 3
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall ((q@18@01 Int)) (!
  (holds%precondition $Snap.unit $t@14@01 q@18@01)
  :pattern ((holds%limited $Snap.unit $t@14@01 q@18@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/issue387/jonas_viktor.vpr@69@10@69@46-aux|)))
(assert (forall ((q@18@01 Int)) (!
  (holds $Snap.unit $t@14@01 q@18@01)
  :pattern ((holds%limited $Snap.unit $t@14@01 q@18@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/issue387/jonas_viktor.vpr@69@10@69@46|)))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; assert (forall q: Int :: { holds(a.val_ref, q) } holds(a.val_ref, q))
; [eval] (forall q: Int :: { holds(a.val_ref, q) } holds(a.val_ref, q))
(declare-const q@19@01 Int)
(set-option :timeout 0)
(push) ; 3
; [eval] holds(a.val_ref, q)
(push) ; 4
(assert (holds%precondition $Snap.unit $t@14@01 q@19@01))
(pop) ; 4
; Joined path conditions
(assert (holds%precondition $Snap.unit $t@14@01 q@19@01))
(pop) ; 3
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall ((q@19@01 Int)) (!
  (holds%precondition $Snap.unit $t@14@01 q@19@01)
  :pattern ((holds%limited $Snap.unit $t@14@01 q@19@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/issue387/jonas_viktor.vpr@70@10@70@46-aux|)))
(assert (forall ((q@19@01 Int)) (!
  (holds%precondition $Snap.unit $t@14@01 q@19@01)
  :pattern ((holds%limited $Snap.unit $t@14@01 q@19@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/issue387/jonas_viktor.vpr@70@10@70@46_precondition|)))
(push) ; 3
(assert (not (forall ((q@19@01 Int)) (!
  (=>
    (holds%precondition $Snap.unit $t@14@01 q@19@01)
    (holds $Snap.unit $t@14@01 q@19@01))
  :pattern ((holds%limited $Snap.unit $t@14@01 q@19@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/issue387/jonas_viktor.vpr@70@10@70@46|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(assert (forall ((q@19@01 Int)) (!
  (holds $Snap.unit $t@14@01 q@19@01)
  :pattern ((holds%limited $Snap.unit $t@14@01 q@19@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/issue387/jonas_viktor.vpr@70@10@70@46|)))
(pop) ; 2
(pop) ; 1
