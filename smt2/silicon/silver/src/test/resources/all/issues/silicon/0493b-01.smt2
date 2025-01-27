(get-info :version)
; (:version "4.12.1")
; Started: 2025-01-26 23:05:36
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
(declare-sort $FVF<val> 0)
(declare-sort $PSF<one> 0)
(declare-sort $PSF<two> 0)
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
; Declaring additional sort wrappers
(declare-fun $SortWrappers.$PSF<one>To$Snap ($PSF<one>) $Snap)
(declare-fun $SortWrappers.$SnapTo$PSF<one> ($Snap) $PSF<one>)
(assert (forall ((x $PSF<one>)) (!
    (= x ($SortWrappers.$SnapTo$PSF<one>($SortWrappers.$PSF<one>To$Snap x)))
    :pattern (($SortWrappers.$PSF<one>To$Snap x))
    :qid |$Snap.$SnapTo$PSF<one>To$Snap|
    )))
(assert (forall ((x $Snap)) (!
    (= x ($SortWrappers.$PSF<one>To$Snap($SortWrappers.$SnapTo$PSF<one> x)))
    :pattern (($SortWrappers.$SnapTo$PSF<one> x))
    :qid |$Snap.$PSF<one>To$SnapTo$PSF<one>|
    )))
(declare-fun $SortWrappers.$PSF<two>To$Snap ($PSF<two>) $Snap)
(declare-fun $SortWrappers.$SnapTo$PSF<two> ($Snap) $PSF<two>)
(assert (forall ((x $PSF<two>)) (!
    (= x ($SortWrappers.$SnapTo$PSF<two>($SortWrappers.$PSF<two>To$Snap x)))
    :pattern (($SortWrappers.$PSF<two>To$Snap x))
    :qid |$Snap.$SnapTo$PSF<two>To$Snap|
    )))
(assert (forall ((x $Snap)) (!
    (= x ($SortWrappers.$PSF<two>To$Snap($SortWrappers.$SnapTo$PSF<two> x)))
    :pattern (($SortWrappers.$SnapTo$PSF<two> x))
    :qid |$Snap.$PSF<two>To$SnapTo$PSF<two>|
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
; /field_value_functions_declarations.smt2 [val: Int]
(declare-fun $FVF.domain_val ($FVF<val>) Set<$Ref>)
(declare-fun $FVF.lookup_val ($FVF<val> $Ref) Int)
(declare-fun $FVF.after_val ($FVF<val> $FVF<val>) Bool)
(declare-fun $FVF.loc_val (Int $Ref) Bool)
(declare-fun $FVF.perm_val ($FPM $Ref) $Perm)
(declare-const $fvfTOP_val $FVF<val>)
; /predicate_snap_functions_declarations.smt2 [one: Int]
(declare-fun $PSF.domain_one ($PSF<one>) Set<$Snap>)
(declare-fun $PSF.lookup_one ($PSF<one> $Snap) Int)
(declare-fun $PSF.after_one ($PSF<one> $PSF<one>) Bool)
(declare-fun $PSF.loc_one (Int $Snap) Bool)
(declare-fun $PSF.perm_one ($PPM $Snap) $Perm)
(declare-const $psfTOP_one $PSF<one>)
; /predicate_snap_functions_declarations.smt2 [two: Int]
(declare-fun $PSF.domain_two ($PSF<two>) Set<$Snap>)
(declare-fun $PSF.lookup_two ($PSF<two> $Snap) Int)
(declare-fun $PSF.after_two ($PSF<two> $PSF<two>) Bool)
(declare-fun $PSF.loc_two (Int $Snap) Bool)
(declare-fun $PSF.perm_two ($PPM $Snap) $Perm)
(declare-const $psfTOP_two $PSF<two>)
; Declaring symbols related to program functions (from program analysis)
(declare-fun foo_vals ($Snap Set<$Ref>) Int)
(declare-fun foo_vals%limited ($Snap Set<$Ref>) Int)
(declare-fun foo_vals%stateless (Set<$Ref>) Bool)
(declare-fun foo_vals%precondition ($Snap Set<$Ref>) Bool)
(declare-fun foo_twos ($Snap Set<$Ref> Set<Int>) Int)
(declare-fun foo_twos%limited ($Snap Set<$Ref> Set<Int>) Int)
(declare-fun foo_twos%stateless (Set<$Ref> Set<Int>) Bool)
(declare-fun foo_twos%precondition ($Snap Set<$Ref> Set<Int>) Bool)
(declare-fun foo_ones ($Snap Set<$Ref>) Int)
(declare-fun foo_ones%limited ($Snap Set<$Ref>) Int)
(declare-fun foo_ones%stateless (Set<$Ref>) Bool)
(declare-fun foo_ones%precondition ($Snap Set<$Ref>) Bool)
; Snapshot variable to be used during function verification
(declare-fun s@$ () $Snap)
; Declaring predicate trigger functions
(declare-fun one%trigger ($Snap $Ref) Bool)
(declare-fun two%trigger ($Snap $Ref Int) Bool)
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
; /field_value_functions_axioms.smt2 [val: Int]
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
(assert (forall ((r $Ref) (f Int)) (!
    (= ($FVF.loc_val f r) true)
    :pattern (($FVF.loc_val f r)))))
; /predicate_snap_functions_axioms.smt2 [one: Int]
(assert (forall ((vs $PSF<one>) (ws $PSF<one>)) (!
    (=>
      (and
        (Set_equal ($PSF.domain_one vs) ($PSF.domain_one ws))
        (forall ((x $Snap)) (!
          (=>
            (Set_in x ($PSF.domain_one vs))
            (= ($PSF.lookup_one vs x) ($PSF.lookup_one ws x)))
          :pattern (($PSF.lookup_one vs x) ($PSF.lookup_one ws x))
          :qid |qp.$PSF<one>-eq-inner|
          )))
      (= vs ws))
    :pattern (($SortWrappers.$PSF<one>To$Snap vs)
              ($SortWrappers.$PSF<one>To$Snap ws)
              )
    :qid |qp.$PSF<one>-eq-outer|
    )))
(assert (forall ((s $Snap) (pm $PPM)) (!
    ($Perm.isValidVar ($PSF.perm_one pm s))
    :pattern (($PSF.perm_one pm s)))))
(assert (forall ((s $Snap) (f Int)) (!
    (= ($PSF.loc_one f s) true)
    :pattern (($PSF.loc_one f s)))))
; /predicate_snap_functions_axioms.smt2 [two: Int]
(assert (forall ((vs $PSF<two>) (ws $PSF<two>)) (!
    (=>
      (and
        (Set_equal ($PSF.domain_two vs) ($PSF.domain_two ws))
        (forall ((x $Snap)) (!
          (=>
            (Set_in x ($PSF.domain_two vs))
            (= ($PSF.lookup_two vs x) ($PSF.lookup_two ws x)))
          :pattern (($PSF.lookup_two vs x) ($PSF.lookup_two ws x))
          :qid |qp.$PSF<two>-eq-inner|
          )))
      (= vs ws))
    :pattern (($SortWrappers.$PSF<two>To$Snap vs)
              ($SortWrappers.$PSF<two>To$Snap ws)
              )
    :qid |qp.$PSF<two>-eq-outer|
    )))
(assert (forall ((s $Snap) (pm $PPM)) (!
    ($Perm.isValidVar ($PSF.perm_two pm s))
    :pattern (($PSF.perm_two pm s)))))
(assert (forall ((s $Snap) (f Int)) (!
    (= ($PSF.loc_two f s) true)
    :pattern (($PSF.loc_two f s)))))
; End preamble
; ------------------------------------------------------------
; State saturation: after preamble
(set-option :timeout 100)
(check-sat)
; unknown
; ------------------------------------------------------------
; Begin function- and predicate-related preamble
; Declaring symbols related to program functions (from verification)
(declare-fun inv@9@00 ($Snap Set<$Ref> $Ref) $Ref)
(declare-fun img@10@00 ($Snap Set<$Ref> $Ref) Bool)
(declare-fun sm@8@00 ($Snap Set<$Ref>) $FVF<val>)
(declare-fun inv@16@00 ($Snap Set<$Ref> Set<Int> $Ref Int) $Ref)
(declare-fun inv@18@00 ($Snap Set<$Ref> Set<Int> $Ref Int) Int)
(declare-fun img@17@00 ($Snap Set<$Ref> Set<Int> $Ref Int) Bool)
(declare-fun img@19@00 ($Snap Set<$Ref> Set<Int> $Ref Int) Bool)
(declare-fun sm@14@00 ($Snap Set<$Ref> Set<Int>) $PSF<two>)
(declare-fun inv@25@00 ($Snap Set<$Ref> $Ref) $Ref)
(declare-fun img@26@00 ($Snap Set<$Ref> $Ref) Bool)
(declare-fun sm@23@00 ($Snap Set<$Ref>) $PSF<one>)
(assert (forall ((s@$ $Snap) (as@0@00 Set<$Ref>)) (!
  (= (foo_vals%limited s@$ as@0@00) (foo_vals s@$ as@0@00))
  :pattern ((foo_vals s@$ as@0@00))
  :qid |quant-u-9854|)))
(assert (forall ((s@$ $Snap) (as@0@00 Set<$Ref>)) (!
  (foo_vals%stateless as@0@00)
  :pattern ((foo_vals%limited s@$ as@0@00))
  :qid |quant-u-9855|)))
(assert (forall ((s@$ $Snap) (as@2@00 Set<$Ref>) (is@3@00 Set<Int>)) (!
  (= (foo_twos%limited s@$ as@2@00 is@3@00) (foo_twos s@$ as@2@00 is@3@00))
  :pattern ((foo_twos s@$ as@2@00 is@3@00))
  :qid |quant-u-9856|)))
(assert (forall ((s@$ $Snap) (as@2@00 Set<$Ref>) (is@3@00 Set<Int>)) (!
  (foo_twos%stateless as@2@00 is@3@00)
  :pattern ((foo_twos%limited s@$ as@2@00 is@3@00))
  :qid |quant-u-9857|)))
(assert (forall ((s@$ $Snap) (as@5@00 Set<$Ref>)) (!
  (= (foo_ones%limited s@$ as@5@00) (foo_ones s@$ as@5@00))
  :pattern ((foo_ones s@$ as@5@00))
  :qid |quant-u-9858|)))
(assert (forall ((s@$ $Snap) (as@5@00 Set<$Ref>)) (!
  (foo_ones%stateless as@5@00)
  :pattern ((foo_ones%limited s@$ as@5@00))
  :qid |quant-u-9859|)))
; End function- and predicate-related preamble
; ------------------------------------------------------------
; ---------- test_vals ----------
(declare-const as@0@01 Set<$Ref>)
(declare-const as@1@01 Set<$Ref>)
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
; inhale (forall a: Ref :: { a.val } (a in as) ==> acc(a.val, write))
(declare-const a@2@01 $Ref)
(push) ; 3
; [eval] (a in as)
(assert (Set_in a@2@01 as@1@01))
(declare-const sm@3@01 $FVF<val>)
; Definitional axioms for snapshot map values
(pop) ; 3
(declare-const $t@4@01 $FVF<val>)
(declare-fun inv@5@01 ($Ref) $Ref)
(declare-fun img@6@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
; Check receiver injectivity
(push) ; 3
(assert (not (forall ((a1@2@01 $Ref) (a2@2@01 $Ref)) (!
  (=>
    (and (Set_in a1@2@01 as@1@01) (Set_in a2@2@01 as@1@01) (= a1@2@01 a2@2@01))
    (= a1@2@01 a2@2@01))
  
  :qid |val-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((a@2@01 $Ref)) (!
  (=>
    (Set_in a@2@01 as@1@01)
    (and (= (inv@5@01 a@2@01) a@2@01) (img@6@01 a@2@01)))
  :pattern (($FVF.loc_val ($FVF.lookup_val $t@4@01 a@2@01) a@2@01))
  :qid |quant-u-9870|)))
(assert (forall ((r $Ref)) (!
  (=> (and (img@6@01 r) (Set_in (inv@5@01 r) as@1@01)) (= (inv@5@01 r) r))
  :pattern ((inv@5@01 r))
  :qid |val-fctOfInv|)))
; Permissions are non-negative
; Field permissions are at most one
; Permission implies non-null receiver
(assert (forall ((a@2@01 $Ref)) (!
  (=> (Set_in a@2@01 as@1@01) (not (= a@2@01 $Ref.null)))
  :pattern (($FVF.loc_val ($FVF.lookup_val $t@4@01 a@2@01) a@2@01))
  :qid |val-permImpliesNonNull|)))
(declare-const sm@7@01 $FVF<val>)
; Definitional axioms for snapshot map values
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@6@01 r) (Set_in (inv@5@01 r) as@1@01))
    (= ($FVF.lookup_val (as sm@7@01  $FVF<val>) r) ($FVF.lookup_val $t@4@01 r)))
  :pattern (($FVF.lookup_val (as sm@7@01  $FVF<val>) r))
  :pattern (($FVF.lookup_val $t@4@01 r))
  :qid |qp.fvfValDef1|)))
(assert (forall ((r $Ref)) (!
  ($FVF.loc_val ($FVF.lookup_val $t@4@01 r) r)
  :pattern (($FVF.lookup_val (as sm@7@01  $FVF<val>) r))
  :qid |qp.fvfResTrgDef2|)))
(assert (forall ((r $Ref)) (!
  (=>
    (Set_in (inv@5@01 r) as@1@01)
    ($FVF.loc_val ($FVF.lookup_val (as sm@7@01  $FVF<val>) r) r))
  :pattern ((inv@5@01 r))
  :qid |quant-u-9871|)))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale foo_vals(as) == 0
(declare-const $t@8@01 $Snap)
(assert (= $t@8@01 $Snap.unit))
; [eval] foo_vals(as) == 0
; [eval] foo_vals(as)
(set-option :timeout 0)
(push) ; 3
(declare-const a@9@01 $Ref)
(push) ; 4
; [eval] (a in as)
(assert (Set_in a@9@01 as@1@01))
(pop) ; 4
(declare-fun inv@10@01 ($Ref) $Ref)
(declare-fun img@11@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
; Definitional axioms for snapshot map domain
; Definitional axioms for snapshot map values
; Check receiver injectivity
(push) ; 4
(assert (not (forall ((a1@9@01 $Ref) (a2@9@01 $Ref)) (!
  (=>
    (and
      (and
        (Set_in a1@9@01 as@1@01)
        ($FVF.loc_val ($FVF.lookup_val (as sm@7@01  $FVF<val>) a1@9@01) a1@9@01))
      (and
        (Set_in a2@9@01 as@1@01)
        ($FVF.loc_val ($FVF.lookup_val (as sm@7@01  $FVF<val>) a2@9@01) a2@9@01))
      (= a1@9@01 a2@9@01))
    (= a1@9@01 a2@9@01))
  
  :qid |val-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((a@9@01 $Ref)) (!
  (=>
    (Set_in a@9@01 as@1@01)
    (and (= (inv@10@01 a@9@01) a@9@01) (img@11@01 a@9@01)))
  :pattern ((Set_in a@9@01 as@1@01))
  :pattern ((inv@10@01 a@9@01))
  :pattern ((img@11@01 a@9@01))
  :qid |val-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=> (and (img@11@01 r) (Set_in (inv@10@01 r) as@1@01)) (= (inv@10@01 r) r))
  :pattern ((inv@10@01 r))
  :qid |val-fctOfInv|)))
(assert (forall ((r $Ref)) (!
  (=>
    (Set_in (inv@10@01 r) as@1@01)
    ($FVF.loc_val ($FVF.lookup_val (as sm@7@01  $FVF<val>) r) r))
  :pattern ((inv@10@01 r))
  :qid |quant-u-9873|)))
(push) ; 4
(assert (not (forall ((r $Ref)) (!
  (=>
    (and (Set_in (inv@10@01 r) as@1@01) (img@11@01 r) (= r (inv@10@01 r)))
    (>
      (ite (and (img@6@01 r) (Set_in (inv@5@01 r) as@1@01)) $Perm.Write $Perm.No)
      $Perm.No))
  
  :qid |quant-u-9874|))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(declare-const sm@12@01 $FVF<val>)
; Definitional axioms for snapshot map domain
(assert (forall ((r $Ref)) (!
  (and
    (=>
      (Set_in r ($FVF.domain_val (as sm@12@01  $FVF<val>)))
      (and (Set_in (inv@10@01 r) as@1@01) (img@11@01 r)))
    (=>
      (and (Set_in (inv@10@01 r) as@1@01) (img@11@01 r))
      (Set_in r ($FVF.domain_val (as sm@12@01  $FVF<val>)))))
  :pattern ((Set_in r ($FVF.domain_val (as sm@12@01  $FVF<val>))))
  :qid |qp.fvfDomDef5|)))
; Definitional axioms for snapshot map values
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and (Set_in (inv@10@01 r) as@1@01) (img@11@01 r))
      (and (img@6@01 r) (Set_in (inv@5@01 r) as@1@01)))
    (= ($FVF.lookup_val (as sm@12@01  $FVF<val>) r) ($FVF.lookup_val $t@4@01 r)))
  :pattern (($FVF.lookup_val (as sm@12@01  $FVF<val>) r))
  :pattern (($FVF.lookup_val $t@4@01 r))
  :qid |qp.fvfValDef3|)))
(assert (forall ((r $Ref)) (!
  ($FVF.loc_val ($FVF.lookup_val $t@4@01 r) r)
  :pattern (($FVF.lookup_val (as sm@12@01  $FVF<val>) r))
  :qid |qp.fvfResTrgDef4|)))
(assert (foo_vals%precondition ($SortWrappers.$FVF<val>To$Snap (as sm@12@01  $FVF<val>)) as@1@01))
(pop) ; 3
; Joined path conditions
(assert (forall ((a@9@01 $Ref)) (!
  (=>
    (Set_in a@9@01 as@1@01)
    (and (= (inv@10@01 a@9@01) a@9@01) (img@11@01 a@9@01)))
  :pattern ((Set_in a@9@01 as@1@01))
  :pattern ((inv@10@01 a@9@01))
  :pattern ((img@11@01 a@9@01))
  :qid |val-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=> (and (img@11@01 r) (Set_in (inv@10@01 r) as@1@01)) (= (inv@10@01 r) r))
  :pattern ((inv@10@01 r))
  :qid |val-fctOfInv|)))
(assert (forall ((r $Ref)) (!
  (and
    (=>
      (Set_in r ($FVF.domain_val (as sm@12@01  $FVF<val>)))
      (and (Set_in (inv@10@01 r) as@1@01) (img@11@01 r)))
    (=>
      (and (Set_in (inv@10@01 r) as@1@01) (img@11@01 r))
      (Set_in r ($FVF.domain_val (as sm@12@01  $FVF<val>)))))
  :pattern ((Set_in r ($FVF.domain_val (as sm@12@01  $FVF<val>))))
  :qid |qp.fvfDomDef5|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and (Set_in (inv@10@01 r) as@1@01) (img@11@01 r))
      (and (img@6@01 r) (Set_in (inv@5@01 r) as@1@01)))
    (= ($FVF.lookup_val (as sm@12@01  $FVF<val>) r) ($FVF.lookup_val $t@4@01 r)))
  :pattern (($FVF.lookup_val (as sm@12@01  $FVF<val>) r))
  :pattern (($FVF.lookup_val $t@4@01 r))
  :qid |qp.fvfValDef3|)))
(assert (forall ((r $Ref)) (!
  ($FVF.loc_val ($FVF.lookup_val $t@4@01 r) r)
  :pattern (($FVF.lookup_val (as sm@12@01  $FVF<val>) r))
  :qid |qp.fvfResTrgDef4|)))
(assert (and
  (forall ((r $Ref)) (!
    (=>
      (Set_in (inv@10@01 r) as@1@01)
      ($FVF.loc_val ($FVF.lookup_val (as sm@7@01  $FVF<val>) r) r))
    :pattern ((inv@10@01 r))
    :qid |quant-u-9873|))
  (foo_vals%precondition ($SortWrappers.$FVF<val>To$Snap (as sm@12@01  $FVF<val>)) as@1@01)))
(assert (=
  (foo_vals ($SortWrappers.$FVF<val>To$Snap (as sm@12@01  $FVF<val>)) as@1@01)
  0))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; exhale foo_vals(as) == 0
; [eval] foo_vals(as) == 0
; [eval] foo_vals(as)
(set-option :timeout 0)
(push) ; 3
(declare-const a@13@01 $Ref)
(push) ; 4
; [eval] (a in as)
(assert (Set_in a@13@01 as@1@01))
(pop) ; 4
(declare-fun inv@14@01 ($Ref) $Ref)
(declare-fun img@15@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
(declare-const sm@16@01 $FVF<val>)
; Definitional axioms for snapshot map domain
; Definitional axioms for snapshot map values
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@6@01 r) (Set_in (inv@5@01 r) as@1@01))
    (= ($FVF.lookup_val (as sm@16@01  $FVF<val>) r) ($FVF.lookup_val $t@4@01 r)))
  :pattern (($FVF.lookup_val (as sm@16@01  $FVF<val>) r))
  :pattern (($FVF.lookup_val $t@4@01 r))
  :qid |qp.fvfValDef6|)))
(assert (forall ((r $Ref)) (!
  ($FVF.loc_val ($FVF.lookup_val $t@4@01 r) r)
  :pattern (($FVF.lookup_val (as sm@16@01  $FVF<val>) r))
  :qid |qp.fvfResTrgDef7|)))
; Check receiver injectivity
(push) ; 4
(assert (not (forall ((a1@13@01 $Ref) (a2@13@01 $Ref)) (!
  (=>
    (and
      (and
        (Set_in a1@13@01 as@1@01)
        ($FVF.loc_val ($FVF.lookup_val (as sm@16@01  $FVF<val>) a1@13@01) a1@13@01))
      (and
        (Set_in a2@13@01 as@1@01)
        ($FVF.loc_val ($FVF.lookup_val (as sm@16@01  $FVF<val>) a2@13@01) a2@13@01))
      (= a1@13@01 a2@13@01))
    (= a1@13@01 a2@13@01))
  
  :qid |val-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((a@13@01 $Ref)) (!
  (=>
    (Set_in a@13@01 as@1@01)
    (and (= (inv@14@01 a@13@01) a@13@01) (img@15@01 a@13@01)))
  :pattern ((Set_in a@13@01 as@1@01))
  :pattern ((inv@14@01 a@13@01))
  :pattern ((img@15@01 a@13@01))
  :qid |val-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=> (and (img@15@01 r) (Set_in (inv@14@01 r) as@1@01)) (= (inv@14@01 r) r))
  :pattern ((inv@14@01 r))
  :qid |val-fctOfInv|)))
(assert (forall ((r $Ref)) (!
  (=>
    (Set_in (inv@14@01 r) as@1@01)
    ($FVF.loc_val ($FVF.lookup_val (as sm@16@01  $FVF<val>) r) r))
  :pattern ((inv@14@01 r))
  :qid |quant-u-9876|)))
(push) ; 4
(assert (not (forall ((r $Ref)) (!
  (=>
    (and (Set_in (inv@14@01 r) as@1@01) (img@15@01 r) (= r (inv@14@01 r)))
    (>
      (ite (and (img@6@01 r) (Set_in (inv@5@01 r) as@1@01)) $Perm.Write $Perm.No)
      $Perm.No))
  
  :qid |quant-u-9877|))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(declare-const sm@17@01 $FVF<val>)
; Definitional axioms for snapshot map domain
(assert (forall ((r $Ref)) (!
  (and
    (=>
      (Set_in r ($FVF.domain_val (as sm@17@01  $FVF<val>)))
      (and (Set_in (inv@14@01 r) as@1@01) (img@15@01 r)))
    (=>
      (and (Set_in (inv@14@01 r) as@1@01) (img@15@01 r))
      (Set_in r ($FVF.domain_val (as sm@17@01  $FVF<val>)))))
  :pattern ((Set_in r ($FVF.domain_val (as sm@17@01  $FVF<val>))))
  :qid |qp.fvfDomDef10|)))
; Definitional axioms for snapshot map values
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and (Set_in (inv@14@01 r) as@1@01) (img@15@01 r))
      (and (img@6@01 r) (Set_in (inv@5@01 r) as@1@01)))
    (= ($FVF.lookup_val (as sm@17@01  $FVF<val>) r) ($FVF.lookup_val $t@4@01 r)))
  :pattern (($FVF.lookup_val (as sm@17@01  $FVF<val>) r))
  :pattern (($FVF.lookup_val $t@4@01 r))
  :qid |qp.fvfValDef8|)))
(assert (forall ((r $Ref)) (!
  ($FVF.loc_val ($FVF.lookup_val $t@4@01 r) r)
  :pattern (($FVF.lookup_val (as sm@17@01  $FVF<val>) r))
  :qid |qp.fvfResTrgDef9|)))
(assert (foo_vals%precondition ($SortWrappers.$FVF<val>To$Snap (as sm@17@01  $FVF<val>)) as@1@01))
(pop) ; 3
; Joined path conditions
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@6@01 r) (Set_in (inv@5@01 r) as@1@01))
    (= ($FVF.lookup_val (as sm@16@01  $FVF<val>) r) ($FVF.lookup_val $t@4@01 r)))
  :pattern (($FVF.lookup_val (as sm@16@01  $FVF<val>) r))
  :pattern (($FVF.lookup_val $t@4@01 r))
  :qid |qp.fvfValDef6|)))
(assert (forall ((r $Ref)) (!
  ($FVF.loc_val ($FVF.lookup_val $t@4@01 r) r)
  :pattern (($FVF.lookup_val (as sm@16@01  $FVF<val>) r))
  :qid |qp.fvfResTrgDef7|)))
(assert (forall ((a@13@01 $Ref)) (!
  (=>
    (Set_in a@13@01 as@1@01)
    (and (= (inv@14@01 a@13@01) a@13@01) (img@15@01 a@13@01)))
  :pattern ((Set_in a@13@01 as@1@01))
  :pattern ((inv@14@01 a@13@01))
  :pattern ((img@15@01 a@13@01))
  :qid |val-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=> (and (img@15@01 r) (Set_in (inv@14@01 r) as@1@01)) (= (inv@14@01 r) r))
  :pattern ((inv@14@01 r))
  :qid |val-fctOfInv|)))
(assert (forall ((r $Ref)) (!
  (and
    (=>
      (Set_in r ($FVF.domain_val (as sm@17@01  $FVF<val>)))
      (and (Set_in (inv@14@01 r) as@1@01) (img@15@01 r)))
    (=>
      (and (Set_in (inv@14@01 r) as@1@01) (img@15@01 r))
      (Set_in r ($FVF.domain_val (as sm@17@01  $FVF<val>)))))
  :pattern ((Set_in r ($FVF.domain_val (as sm@17@01  $FVF<val>))))
  :qid |qp.fvfDomDef10|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and (Set_in (inv@14@01 r) as@1@01) (img@15@01 r))
      (and (img@6@01 r) (Set_in (inv@5@01 r) as@1@01)))
    (= ($FVF.lookup_val (as sm@17@01  $FVF<val>) r) ($FVF.lookup_val $t@4@01 r)))
  :pattern (($FVF.lookup_val (as sm@17@01  $FVF<val>) r))
  :pattern (($FVF.lookup_val $t@4@01 r))
  :qid |qp.fvfValDef8|)))
(assert (forall ((r $Ref)) (!
  ($FVF.loc_val ($FVF.lookup_val $t@4@01 r) r)
  :pattern (($FVF.lookup_val (as sm@17@01  $FVF<val>) r))
  :qid |qp.fvfResTrgDef9|)))
(assert (and
  (forall ((r $Ref)) (!
    (=>
      (Set_in (inv@14@01 r) as@1@01)
      ($FVF.loc_val ($FVF.lookup_val (as sm@16@01  $FVF<val>) r) r))
    :pattern ((inv@14@01 r))
    :qid |quant-u-9876|))
  (foo_vals%precondition ($SortWrappers.$FVF<val>To$Snap (as sm@17@01  $FVF<val>)) as@1@01)))
(push) ; 3
(assert (not (=
  (foo_vals ($SortWrappers.$FVF<val>To$Snap (as sm@17@01  $FVF<val>)) as@1@01)
  0)))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(assert (=
  (foo_vals ($SortWrappers.$FVF<val>To$Snap (as sm@17@01  $FVF<val>)) as@1@01)
  0))
(pop) ; 2
(pop) ; 1
; ---------- test_vals_2 ----------
(declare-const as@18@01 Set<$Ref>)
(declare-const bs@19@01 Set<$Ref>)
(declare-const as@20@01 Set<$Ref>)
(declare-const bs@21@01 Set<$Ref>)
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
; var a1: Ref
(declare-const a1@22@01 $Ref)
; [exec]
; var b1: Ref
(declare-const b1@23@01 $Ref)
; [exec]
; inhale (forall a: Ref :: { a.val } (a in as) ==> acc(a.val, write)) &&
;   (forall a$0: Ref :: { a$0.val } (a$0 in bs) ==> acc(a$0.val, write))
(declare-const $t@24@01 $Snap)
(assert (= $t@24@01 ($Snap.combine ($Snap.first $t@24@01) ($Snap.second $t@24@01))))
(declare-const a@25@01 $Ref)
(push) ; 3
; [eval] (a in as)
(assert (Set_in a@25@01 as@20@01))
(declare-const sm@26@01 $FVF<val>)
; Definitional axioms for snapshot map values
(pop) ; 3
(declare-fun inv@27@01 ($Ref) $Ref)
(declare-fun img@28@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
; Check receiver injectivity
(push) ; 3
(assert (not (forall ((a1@25@01 $Ref) (a2@25@01 $Ref)) (!
  (=>
    (and
      (Set_in a1@25@01 as@20@01)
      (Set_in a2@25@01 as@20@01)
      (= a1@25@01 a2@25@01))
    (= a1@25@01 a2@25@01))
  
  :qid |val-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((a@25@01 $Ref)) (!
  (=>
    (Set_in a@25@01 as@20@01)
    (and (= (inv@27@01 a@25@01) a@25@01) (img@28@01 a@25@01)))
  :pattern (($FVF.loc_val ($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.first $t@24@01)) a@25@01) a@25@01))
  :qid |quant-u-9879|)))
(assert (forall ((r $Ref)) (!
  (=> (and (img@28@01 r) (Set_in (inv@27@01 r) as@20@01)) (= (inv@27@01 r) r))
  :pattern ((inv@27@01 r))
  :qid |val-fctOfInv|)))
; Permissions are non-negative
; Field permissions are at most one
; Permission implies non-null receiver
(assert (forall ((a@25@01 $Ref)) (!
  (=> (Set_in a@25@01 as@20@01) (not (= a@25@01 $Ref.null)))
  :pattern (($FVF.loc_val ($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.first $t@24@01)) a@25@01) a@25@01))
  :qid |val-permImpliesNonNull|)))
(declare-const sm@29@01 $FVF<val>)
; Definitional axioms for snapshot map values
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@28@01 r) (Set_in (inv@27@01 r) as@20@01))
    (=
      ($FVF.lookup_val (as sm@29@01  $FVF<val>) r)
      ($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.first $t@24@01)) r)))
  :pattern (($FVF.lookup_val (as sm@29@01  $FVF<val>) r))
  :pattern (($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.first $t@24@01)) r))
  :qid |qp.fvfValDef12|)))
(assert (forall ((r $Ref)) (!
  ($FVF.loc_val ($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.first $t@24@01)) r) r)
  :pattern (($FVF.lookup_val (as sm@29@01  $FVF<val>) r))
  :qid |qp.fvfResTrgDef13|)))
(assert (forall ((r $Ref)) (!
  (=>
    (Set_in (inv@27@01 r) as@20@01)
    ($FVF.loc_val ($FVF.lookup_val (as sm@29@01  $FVF<val>) r) r))
  :pattern ((inv@27@01 r))
  :qid |quant-u-9880|)))
(declare-const a$0@30@01 $Ref)
(push) ; 3
; [eval] (a$0 in bs)
(assert (Set_in a$0@30@01 bs@21@01))
; Definitional axioms for snapshot map values
(pop) ; 3
(declare-fun inv@31@01 ($Ref) $Ref)
(declare-fun img@32@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
; Check receiver injectivity
(push) ; 3
(assert (not (forall ((a$01@30@01 $Ref) (a$02@30@01 $Ref)) (!
  (=>
    (and
      (Set_in a$01@30@01 bs@21@01)
      (Set_in a$02@30@01 bs@21@01)
      (= a$01@30@01 a$02@30@01))
    (= a$01@30@01 a$02@30@01))
  
  :qid |val-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((a$0@30@01 $Ref)) (!
  (=>
    (Set_in a$0@30@01 bs@21@01)
    (and (= (inv@31@01 a$0@30@01) a$0@30@01) (img@32@01 a$0@30@01)))
  :pattern (($FVF.loc_val ($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.second $t@24@01)) a$0@30@01) a$0@30@01))
  :qid |quant-u-9882|)))
(assert (forall ((r $Ref)) (!
  (=> (and (img@32@01 r) (Set_in (inv@31@01 r) bs@21@01)) (= (inv@31@01 r) r))
  :pattern ((inv@31@01 r))
  :qid |val-fctOfInv|)))
; Permissions are non-negative
; Field permissions are at most one
; Permission implies non-null receiver
(assert (forall ((a$0@30@01 $Ref)) (!
  (=> (Set_in a$0@30@01 bs@21@01) (not (= a$0@30@01 $Ref.null)))
  :pattern (($FVF.loc_val ($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.second $t@24@01)) a$0@30@01) a$0@30@01))
  :qid |val-permImpliesNonNull|)))
(push) ; 3
(set-option :timeout 10)
(assert (not (forall ((r $Ref)) (!
  (and
    (= a$0@30@01 a@25@01)
    (=
      (and (img@32@01 r) (Set_in (inv@31@01 r) bs@21@01))
      (and (img@28@01 r) (Set_in (inv@27@01 r) as@20@01))))
  
  :qid |quant-u-9883|))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(declare-const sm@33@01 $FVF<val>)
; Definitional axioms for snapshot map values
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@28@01 r) (Set_in (inv@27@01 r) as@20@01))
    (=
      ($FVF.lookup_val (as sm@33@01  $FVF<val>) r)
      ($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.first $t@24@01)) r)))
  :pattern (($FVF.lookup_val (as sm@33@01  $FVF<val>) r))
  :pattern (($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.first $t@24@01)) r))
  :qid |qp.fvfValDef14|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@32@01 r) (Set_in (inv@31@01 r) bs@21@01))
    (=
      ($FVF.lookup_val (as sm@33@01  $FVF<val>) r)
      ($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.second $t@24@01)) r)))
  :pattern (($FVF.lookup_val (as sm@33@01  $FVF<val>) r))
  :pattern (($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.second $t@24@01)) r))
  :qid |qp.fvfValDef15|)))
(assert (forall ((r $Ref)) (!
  (and
    ($FVF.loc_val ($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.first $t@24@01)) r) r)
    ($FVF.loc_val ($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.second $t@24@01)) r) r))
  :pattern (($FVF.lookup_val (as sm@33@01  $FVF<val>) r))
  :qid |qp.fvfResTrgDef16|)))
(assert (forall ((r $Ref)) (!
  (=>
    (Set_in (inv@31@01 r) bs@21@01)
    ($FVF.loc_val ($FVF.lookup_val (as sm@33@01  $FVF<val>) r) r))
  :pattern ((inv@31@01 r))
  :qid |quant-u-9884|)))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale foo_vals(as) == 0
(declare-const $t@34@01 $Snap)
(assert (= $t@34@01 $Snap.unit))
; [eval] foo_vals(as) == 0
; [eval] foo_vals(as)
(set-option :timeout 0)
(push) ; 3
(declare-const a@35@01 $Ref)
(push) ; 4
; [eval] (a in as)
(assert (Set_in a@35@01 as@20@01))
(pop) ; 4
(declare-fun inv@36@01 ($Ref) $Ref)
(declare-fun img@37@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
; Definitional axioms for snapshot map domain
; Definitional axioms for snapshot map values
; Check receiver injectivity
(push) ; 4
(assert (not (forall ((a1@35@01 $Ref) (a2@35@01 $Ref)) (!
  (=>
    (and
      (and
        (Set_in a1@35@01 as@20@01)
        ($FVF.loc_val ($FVF.lookup_val (as sm@33@01  $FVF<val>) a1@35@01) a1@35@01))
      (and
        (Set_in a2@35@01 as@20@01)
        ($FVF.loc_val ($FVF.lookup_val (as sm@33@01  $FVF<val>) a2@35@01) a2@35@01))
      (= a1@35@01 a2@35@01))
    (= a1@35@01 a2@35@01))
  
  :qid |val-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((a@35@01 $Ref)) (!
  (=>
    (Set_in a@35@01 as@20@01)
    (and (= (inv@36@01 a@35@01) a@35@01) (img@37@01 a@35@01)))
  :pattern ((Set_in a@35@01 as@20@01))
  :pattern ((inv@36@01 a@35@01))
  :pattern ((img@37@01 a@35@01))
  :qid |val-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=> (and (img@37@01 r) (Set_in (inv@36@01 r) as@20@01)) (= (inv@36@01 r) r))
  :pattern ((inv@36@01 r))
  :qid |val-fctOfInv|)))
(assert (forall ((r $Ref)) (!
  (=>
    (Set_in (inv@36@01 r) as@20@01)
    ($FVF.loc_val ($FVF.lookup_val (as sm@33@01  $FVF<val>) r) r))
  :pattern ((inv@36@01 r))
  :qid |quant-u-9886|)))
(push) ; 4
(assert (not (forall ((r $Ref)) (!
  (=>
    (and (Set_in (inv@36@01 r) as@20@01) (img@37@01 r) (= r (inv@36@01 r)))
    (>
      (+
        (ite
          (and (img@28@01 r) (Set_in (inv@27@01 r) as@20@01))
          $Perm.Write
          $Perm.No)
        (ite
          (and (img@32@01 r) (Set_in (inv@31@01 r) bs@21@01))
          $Perm.Write
          $Perm.No))
      $Perm.No))
  
  :qid |quant-u-9887|))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(declare-const sm@38@01 $FVF<val>)
; Definitional axioms for snapshot map domain
(assert (forall ((r $Ref)) (!
  (and
    (=>
      (Set_in r ($FVF.domain_val (as sm@38@01  $FVF<val>)))
      (and (Set_in (inv@36@01 r) as@20@01) (img@37@01 r)))
    (=>
      (and (Set_in (inv@36@01 r) as@20@01) (img@37@01 r))
      (Set_in r ($FVF.domain_val (as sm@38@01  $FVF<val>)))))
  :pattern ((Set_in r ($FVF.domain_val (as sm@38@01  $FVF<val>))))
  :qid |qp.fvfDomDef20|)))
; Definitional axioms for snapshot map values
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and (Set_in (inv@36@01 r) as@20@01) (img@37@01 r))
      (and (img@28@01 r) (Set_in (inv@27@01 r) as@20@01)))
    (=
      ($FVF.lookup_val (as sm@38@01  $FVF<val>) r)
      ($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.first $t@24@01)) r)))
  :pattern (($FVF.lookup_val (as sm@38@01  $FVF<val>) r))
  :pattern (($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.first $t@24@01)) r))
  :qid |qp.fvfValDef17|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and (Set_in (inv@36@01 r) as@20@01) (img@37@01 r))
      (and (img@32@01 r) (Set_in (inv@31@01 r) bs@21@01)))
    (=
      ($FVF.lookup_val (as sm@38@01  $FVF<val>) r)
      ($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.second $t@24@01)) r)))
  :pattern (($FVF.lookup_val (as sm@38@01  $FVF<val>) r))
  :pattern (($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.second $t@24@01)) r))
  :qid |qp.fvfValDef18|)))
(assert (forall ((r $Ref)) (!
  (and
    ($FVF.loc_val ($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.first $t@24@01)) r) r)
    ($FVF.loc_val ($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.second $t@24@01)) r) r))
  :pattern (($FVF.lookup_val (as sm@38@01  $FVF<val>) r))
  :qid |qp.fvfResTrgDef19|)))
(assert (foo_vals%precondition ($SortWrappers.$FVF<val>To$Snap (as sm@38@01  $FVF<val>)) as@20@01))
(pop) ; 3
; Joined path conditions
(assert (forall ((a@35@01 $Ref)) (!
  (=>
    (Set_in a@35@01 as@20@01)
    (and (= (inv@36@01 a@35@01) a@35@01) (img@37@01 a@35@01)))
  :pattern ((Set_in a@35@01 as@20@01))
  :pattern ((inv@36@01 a@35@01))
  :pattern ((img@37@01 a@35@01))
  :qid |val-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=> (and (img@37@01 r) (Set_in (inv@36@01 r) as@20@01)) (= (inv@36@01 r) r))
  :pattern ((inv@36@01 r))
  :qid |val-fctOfInv|)))
(assert (forall ((r $Ref)) (!
  (and
    (=>
      (Set_in r ($FVF.domain_val (as sm@38@01  $FVF<val>)))
      (and (Set_in (inv@36@01 r) as@20@01) (img@37@01 r)))
    (=>
      (and (Set_in (inv@36@01 r) as@20@01) (img@37@01 r))
      (Set_in r ($FVF.domain_val (as sm@38@01  $FVF<val>)))))
  :pattern ((Set_in r ($FVF.domain_val (as sm@38@01  $FVF<val>))))
  :qid |qp.fvfDomDef20|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and (Set_in (inv@36@01 r) as@20@01) (img@37@01 r))
      (and (img@28@01 r) (Set_in (inv@27@01 r) as@20@01)))
    (=
      ($FVF.lookup_val (as sm@38@01  $FVF<val>) r)
      ($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.first $t@24@01)) r)))
  :pattern (($FVF.lookup_val (as sm@38@01  $FVF<val>) r))
  :pattern (($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.first $t@24@01)) r))
  :qid |qp.fvfValDef17|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and (Set_in (inv@36@01 r) as@20@01) (img@37@01 r))
      (and (img@32@01 r) (Set_in (inv@31@01 r) bs@21@01)))
    (=
      ($FVF.lookup_val (as sm@38@01  $FVF<val>) r)
      ($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.second $t@24@01)) r)))
  :pattern (($FVF.lookup_val (as sm@38@01  $FVF<val>) r))
  :pattern (($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.second $t@24@01)) r))
  :qid |qp.fvfValDef18|)))
(assert (forall ((r $Ref)) (!
  (and
    ($FVF.loc_val ($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.first $t@24@01)) r) r)
    ($FVF.loc_val ($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.second $t@24@01)) r) r))
  :pattern (($FVF.lookup_val (as sm@38@01  $FVF<val>) r))
  :qid |qp.fvfResTrgDef19|)))
(assert (and
  (forall ((r $Ref)) (!
    (=>
      (Set_in (inv@36@01 r) as@20@01)
      ($FVF.loc_val ($FVF.lookup_val (as sm@33@01  $FVF<val>) r) r))
    :pattern ((inv@36@01 r))
    :qid |quant-u-9886|))
  (foo_vals%precondition ($SortWrappers.$FVF<val>To$Snap (as sm@38@01  $FVF<val>)) as@20@01)))
(assert (=
  (foo_vals ($SortWrappers.$FVF<val>To$Snap (as sm@38@01  $FVF<val>)) as@20@01)
  0))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale (a1 in as)
(declare-const $t@39@01 $Snap)
(assert (= $t@39@01 $Snap.unit))
; [eval] (a1 in as)
(assert (Set_in a1@22@01 as@20@01))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; a1.val := 1 + a1.val - 1
; [eval] 1 + a1.val - 1
; [eval] 1 + a1.val
(declare-const sm@40@01 $FVF<val>)
; Definitional axioms for snapshot map values
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@28@01 r) (Set_in (inv@27@01 r) as@20@01))
    (=
      ($FVF.lookup_val (as sm@40@01  $FVF<val>) r)
      ($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.first $t@24@01)) r)))
  :pattern (($FVF.lookup_val (as sm@40@01  $FVF<val>) r))
  :pattern (($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.first $t@24@01)) r))
  :qid |qp.fvfValDef21|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@32@01 r) (Set_in (inv@31@01 r) bs@21@01))
    (=
      ($FVF.lookup_val (as sm@40@01  $FVF<val>) r)
      ($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.second $t@24@01)) r)))
  :pattern (($FVF.lookup_val (as sm@40@01  $FVF<val>) r))
  :pattern (($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.second $t@24@01)) r))
  :qid |qp.fvfValDef22|)))
(assert (forall ((r $Ref)) (!
  (and
    ($FVF.loc_val ($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.first $t@24@01)) r) r)
    ($FVF.loc_val ($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.second $t@24@01)) r) r))
  :pattern (($FVF.lookup_val (as sm@40@01  $FVF<val>) r))
  :qid |qp.fvfResTrgDef23|)))
(declare-const pm@41@01 $FPM)
(assert (forall ((r $Ref)) (!
  (=
    ($FVF.perm_val (as pm@41@01  $FPM) r)
    (+
      (ite
        (and (img@28@01 r) (Set_in (inv@27@01 r) as@20@01))
        $Perm.Write
        $Perm.No)
      (ite
        (and (img@32@01 r) (Set_in (inv@31@01 r) bs@21@01))
        $Perm.Write
        $Perm.No)))
  :pattern (($FVF.perm_val (as pm@41@01  $FPM) r))
  :qid |qp.resPrmSumDef24|)))
(assert (forall ((r $Ref)) (!
  (and
    ($FVF.loc_val ($FVF.lookup_val (as sm@40@01  $FVF<val>) r) r)
    ($FVF.loc_val ($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.first $t@24@01)) r) r)
    ($FVF.loc_val ($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.second $t@24@01)) r) r))
  :pattern (($FVF.perm_val (as pm@41@01  $FPM) r))
  :qid |qp.resTrgDef25|)))
(assert ($FVF.loc_val ($FVF.lookup_val (as sm@40@01  $FVF<val>) a1@22@01) a1@22@01))
(set-option :timeout 0)
(push) ; 3
(assert (not (< $Perm.No ($FVF.perm_val (as pm@41@01  $FPM) a1@22@01))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for snapshot map values
; Precomputing data for removing quantified permissions
(define-fun pTaken@42@01 ((r $Ref)) $Perm
  (ite
    (= r a1@22@01)
    ($Perm.min
      (ite
        (and (img@28@01 r) (Set_in (inv@27@01 r) as@20@01))
        $Perm.Write
        $Perm.No)
      $Perm.Write)
    $Perm.No))
(define-fun pTaken@43@01 ((r $Ref)) $Perm
  (ite
    (= r a1@22@01)
    ($Perm.min
      (ite
        (and (img@32@01 r) (Set_in (inv@31@01 r) bs@21@01))
        $Perm.Write
        $Perm.No)
      (- $Perm.Write (pTaken@42@01 r)))
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
        (and (img@28@01 r) (Set_in (inv@27@01 r) as@20@01))
        $Perm.Write
        $Perm.No)
      (pTaken@42@01 r))
    $Perm.No)
  
  :qid |quant-u-9889|))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (forall ((r $Ref)) (!
  (= (pTaken@42@01 r) $Perm.No)
  
  :qid |quant-u-9890|))))
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
  (=> (= r a1@22@01) (= (- $Perm.Write (pTaken@42@01 r)) $Perm.No))
  
  :qid |quant-u-9891|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Final check if taken enough permissions
; Done removing quantified permissions
(declare-const sm@44@01 $FVF<val>)
; Definitional axioms for singleton-FVF's value
(assert (=
  ($FVF.lookup_val (as sm@44@01  $FVF<val>) a1@22@01)
  (- (+ 1 ($FVF.lookup_val (as sm@40@01  $FVF<val>) a1@22@01)) 1)))
(assert ($FVF.loc_val ($FVF.lookup_val (as sm@44@01  $FVF<val>) a1@22@01) a1@22@01))
; [exec]
; inhale (b1 in bs)
(declare-const $t@45@01 $Snap)
(assert (= $t@45@01 $Snap.unit))
; [eval] (b1 in bs)
(assert (Set_in b1@23@01 bs@21@01))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; b1.val := 1
(declare-const sm@46@01 $FVF<val>)
; Definitional axioms for snapshot map values
(assert (forall ((r $Ref)) (!
  (=>
    (= r a1@22@01)
    (=
      ($FVF.lookup_val (as sm@46@01  $FVF<val>) r)
      ($FVF.lookup_val (as sm@44@01  $FVF<val>) r)))
  :pattern (($FVF.lookup_val (as sm@46@01  $FVF<val>) r))
  :pattern (($FVF.lookup_val (as sm@44@01  $FVF<val>) r))
  :qid |qp.fvfValDef26|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@32@01 r) (Set_in (inv@31@01 r) bs@21@01))
    (=
      ($FVF.lookup_val (as sm@46@01  $FVF<val>) r)
      ($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.second $t@24@01)) r)))
  :pattern (($FVF.lookup_val (as sm@46@01  $FVF<val>) r))
  :pattern (($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.second $t@24@01)) r))
  :qid |qp.fvfValDef27|)))
(assert (forall ((r $Ref)) (!
  (=>
    (ite
      (and (img@28@01 r) (Set_in (inv@27@01 r) as@20@01))
      (< $Perm.No (- $Perm.Write (pTaken@42@01 r)))
      false)
    (=
      ($FVF.lookup_val (as sm@46@01  $FVF<val>) r)
      ($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.first $t@24@01)) r)))
  :pattern (($FVF.lookup_val (as sm@46@01  $FVF<val>) r))
  :pattern (($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.first $t@24@01)) r))
  :qid |qp.fvfValDef28|)))
(assert (forall ((r $Ref)) (!
  (and
    ($FVF.loc_val ($FVF.lookup_val (as sm@44@01  $FVF<val>) r) r)
    ($FVF.loc_val ($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.second $t@24@01)) r) r)
    ($FVF.loc_val ($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.first $t@24@01)) r) r))
  :pattern (($FVF.lookup_val (as sm@46@01  $FVF<val>) r))
  :qid |qp.fvfResTrgDef29|)))
(assert ($FVF.loc_val ($FVF.lookup_val (as sm@46@01  $FVF<val>) b1@23@01) b1@23@01))
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (= a1@22@01 b1@23@01)))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Precomputing data for removing quantified permissions
(define-fun pTaken@47@01 ((r $Ref)) $Perm
  (ite
    (= r b1@23@01)
    ($Perm.min
      (ite
        (and (img@32@01 r) (Set_in (inv@31@01 r) bs@21@01))
        $Perm.Write
        $Perm.No)
      $Perm.Write)
    $Perm.No))
(define-fun pTaken@48@01 ((r $Ref)) $Perm
  (ite
    (= r b1@23@01)
    ($Perm.min
      (ite
        (and (img@28@01 r) (Set_in (inv@27@01 r) as@20@01))
        (- $Perm.Write (pTaken@42@01 r))
        $Perm.No)
      (- $Perm.Write (pTaken@47@01 r)))
    $Perm.No))
(define-fun pTaken@49@01 ((r $Ref)) $Perm
  (ite
    (= r b1@23@01)
    ($Perm.min
      (ite (= r a1@22@01) $Perm.Write $Perm.No)
      (- (- $Perm.Write (pTaken@47@01 r)) (pTaken@48@01 r)))
    $Perm.No))
; Done precomputing, updating quantified chunks
; State saturation: before repetition
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
        (and (img@32@01 r) (Set_in (inv@31@01 r) bs@21@01))
        $Perm.Write
        $Perm.No)
      (pTaken@47@01 r))
    $Perm.No)
  
  :qid |quant-u-9893|))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (forall ((r $Ref)) (!
  (= (pTaken@47@01 r) $Perm.No)
  
  :qid |quant-u-9894|))))
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
  (=> (= r b1@23@01) (= (- $Perm.Write (pTaken@47@01 r)) $Perm.No))
  
  :qid |quant-u-9895|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Final check if taken enough permissions
; Done removing quantified permissions
(declare-const sm@50@01 $FVF<val>)
; Definitional axioms for singleton-FVF's value
(assert (= ($FVF.lookup_val (as sm@50@01  $FVF<val>) b1@23@01) 1))
(assert ($FVF.loc_val ($FVF.lookup_val (as sm@50@01  $FVF<val>) b1@23@01) b1@23@01))
; [exec]
; exhale (forall a$1: Ref :: { a$1.val } (a$1 in bs) ==> acc(a$1.val, write))
(declare-const a$1@51@01 $Ref)
(set-option :timeout 0)
(push) ; 3
; [eval] (a$1 in bs)
(assert (Set_in a$1@51@01 bs@21@01))
(declare-const sm@52@01 $FVF<val>)
; Definitional axioms for snapshot map values
(assert (forall ((r $Ref)) (!
  (=>
    (= r b1@23@01)
    (=
      ($FVF.lookup_val (as sm@52@01  $FVF<val>) r)
      ($FVF.lookup_val (as sm@50@01  $FVF<val>) r)))
  :pattern (($FVF.lookup_val (as sm@52@01  $FVF<val>) r))
  :pattern (($FVF.lookup_val (as sm@50@01  $FVF<val>) r))
  :qid |qp.fvfValDef30|)))
(assert (forall ((r $Ref)) (!
  (=>
    (= r a1@22@01)
    (=
      ($FVF.lookup_val (as sm@52@01  $FVF<val>) r)
      ($FVF.lookup_val (as sm@44@01  $FVF<val>) r)))
  :pattern (($FVF.lookup_val (as sm@52@01  $FVF<val>) r))
  :pattern (($FVF.lookup_val (as sm@44@01  $FVF<val>) r))
  :qid |qp.fvfValDef31|)))
(assert (forall ((r $Ref)) (!
  (=>
    (ite
      (and (img@28@01 r) (Set_in (inv@27@01 r) as@20@01))
      (< $Perm.No (- $Perm.Write (pTaken@42@01 r)))
      false)
    (=
      ($FVF.lookup_val (as sm@52@01  $FVF<val>) r)
      ($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.first $t@24@01)) r)))
  :pattern (($FVF.lookup_val (as sm@52@01  $FVF<val>) r))
  :pattern (($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.first $t@24@01)) r))
  :qid |qp.fvfValDef32|)))
(assert (forall ((r $Ref)) (!
  (=>
    (ite
      (and (img@32@01 r) (Set_in (inv@31@01 r) bs@21@01))
      (< $Perm.No (- $Perm.Write (pTaken@47@01 r)))
      false)
    (=
      ($FVF.lookup_val (as sm@52@01  $FVF<val>) r)
      ($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.second $t@24@01)) r)))
  :pattern (($FVF.lookup_val (as sm@52@01  $FVF<val>) r))
  :pattern (($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.second $t@24@01)) r))
  :qid |qp.fvfValDef33|)))
(assert (forall ((r $Ref)) (!
  (and
    ($FVF.loc_val ($FVF.lookup_val (as sm@50@01  $FVF<val>) r) r)
    ($FVF.loc_val ($FVF.lookup_val (as sm@44@01  $FVF<val>) r) r)
    ($FVF.loc_val ($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.first $t@24@01)) r) r)
    ($FVF.loc_val ($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.second $t@24@01)) r) r))
  :pattern (($FVF.lookup_val (as sm@52@01  $FVF<val>) r))
  :qid |qp.fvfResTrgDef34|)))
(pop) ; 3
(declare-fun inv@53@01 ($Ref) $Ref)
(declare-fun img@54@01 ($Ref) Bool)
; Nested auxiliary terms: globals
(assert (forall ((r $Ref)) (!
  (=>
    (= r b1@23@01)
    (=
      ($FVF.lookup_val (as sm@52@01  $FVF<val>) r)
      ($FVF.lookup_val (as sm@50@01  $FVF<val>) r)))
  :pattern (($FVF.lookup_val (as sm@52@01  $FVF<val>) r))
  :pattern (($FVF.lookup_val (as sm@50@01  $FVF<val>) r))
  :qid |qp.fvfValDef30|)))
(assert (forall ((r $Ref)) (!
  (=>
    (= r a1@22@01)
    (=
      ($FVF.lookup_val (as sm@52@01  $FVF<val>) r)
      ($FVF.lookup_val (as sm@44@01  $FVF<val>) r)))
  :pattern (($FVF.lookup_val (as sm@52@01  $FVF<val>) r))
  :pattern (($FVF.lookup_val (as sm@44@01  $FVF<val>) r))
  :qid |qp.fvfValDef31|)))
(assert (forall ((r $Ref)) (!
  (=>
    (ite
      (and (img@28@01 r) (Set_in (inv@27@01 r) as@20@01))
      (< $Perm.No (- $Perm.Write (pTaken@42@01 r)))
      false)
    (=
      ($FVF.lookup_val (as sm@52@01  $FVF<val>) r)
      ($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.first $t@24@01)) r)))
  :pattern (($FVF.lookup_val (as sm@52@01  $FVF<val>) r))
  :pattern (($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.first $t@24@01)) r))
  :qid |qp.fvfValDef32|)))
(assert (forall ((r $Ref)) (!
  (=>
    (ite
      (and (img@32@01 r) (Set_in (inv@31@01 r) bs@21@01))
      (< $Perm.No (- $Perm.Write (pTaken@47@01 r)))
      false)
    (=
      ($FVF.lookup_val (as sm@52@01  $FVF<val>) r)
      ($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.second $t@24@01)) r)))
  :pattern (($FVF.lookup_val (as sm@52@01  $FVF<val>) r))
  :pattern (($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.second $t@24@01)) r))
  :qid |qp.fvfValDef33|)))
(assert (forall ((r $Ref)) (!
  (and
    ($FVF.loc_val ($FVF.lookup_val (as sm@50@01  $FVF<val>) r) r)
    ($FVF.loc_val ($FVF.lookup_val (as sm@44@01  $FVF<val>) r) r)
    ($FVF.loc_val ($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.first $t@24@01)) r) r)
    ($FVF.loc_val ($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.second $t@24@01)) r) r))
  :pattern (($FVF.lookup_val (as sm@52@01  $FVF<val>) r))
  :qid |qp.fvfResTrgDef34|)))
; Nested auxiliary terms: non-globals
(declare-const sm@55@01 $FVF<val>)
; Definitional axioms for snapshot map values
(assert (forall ((r $Ref)) (!
  (=>
    (= r b1@23@01)
    (=
      ($FVF.lookup_val (as sm@55@01  $FVF<val>) r)
      ($FVF.lookup_val (as sm@50@01  $FVF<val>) r)))
  :pattern (($FVF.lookup_val (as sm@55@01  $FVF<val>) r))
  :pattern (($FVF.lookup_val (as sm@50@01  $FVF<val>) r))
  :qid |qp.fvfValDef35|)))
(assert (forall ((r $Ref)) (!
  (=>
    (= r a1@22@01)
    (=
      ($FVF.lookup_val (as sm@55@01  $FVF<val>) r)
      ($FVF.lookup_val (as sm@44@01  $FVF<val>) r)))
  :pattern (($FVF.lookup_val (as sm@55@01  $FVF<val>) r))
  :pattern (($FVF.lookup_val (as sm@44@01  $FVF<val>) r))
  :qid |qp.fvfValDef36|)))
(assert (forall ((r $Ref)) (!
  (=>
    (ite
      (and (img@28@01 r) (Set_in (inv@27@01 r) as@20@01))
      (< $Perm.No (- $Perm.Write (pTaken@42@01 r)))
      false)
    (=
      ($FVF.lookup_val (as sm@55@01  $FVF<val>) r)
      ($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.first $t@24@01)) r)))
  :pattern (($FVF.lookup_val (as sm@55@01  $FVF<val>) r))
  :pattern (($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.first $t@24@01)) r))
  :qid |qp.fvfValDef37|)))
(assert (forall ((r $Ref)) (!
  (=>
    (ite
      (and (img@32@01 r) (Set_in (inv@31@01 r) bs@21@01))
      (< $Perm.No (- $Perm.Write (pTaken@47@01 r)))
      false)
    (=
      ($FVF.lookup_val (as sm@55@01  $FVF<val>) r)
      ($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.second $t@24@01)) r)))
  :pattern (($FVF.lookup_val (as sm@55@01  $FVF<val>) r))
  :pattern (($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.second $t@24@01)) r))
  :qid |qp.fvfValDef38|)))
(assert (forall ((r $Ref)) (!
  (and
    ($FVF.loc_val ($FVF.lookup_val (as sm@50@01  $FVF<val>) r) r)
    ($FVF.loc_val ($FVF.lookup_val (as sm@44@01  $FVF<val>) r) r)
    ($FVF.loc_val ($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.first $t@24@01)) r) r)
    ($FVF.loc_val ($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.second $t@24@01)) r) r))
  :pattern (($FVF.lookup_val (as sm@55@01  $FVF<val>) r))
  :qid |qp.fvfResTrgDef39|)))
; Check receiver injectivity
(push) ; 3
(assert (not (forall ((a$11@51@01 $Ref) (a$12@51@01 $Ref)) (!
  (=>
    (and
      (and
        (Set_in a$11@51@01 bs@21@01)
        ($FVF.loc_val ($FVF.lookup_val (as sm@55@01  $FVF<val>) a$11@51@01) a$11@51@01))
      (and
        (Set_in a$12@51@01 bs@21@01)
        ($FVF.loc_val ($FVF.lookup_val (as sm@55@01  $FVF<val>) a$12@51@01) a$12@51@01))
      (= a$11@51@01 a$12@51@01))
    (= a$11@51@01 a$12@51@01))
  
  :qid |val-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((a$1@51@01 $Ref)) (!
  (=>
    (Set_in a$1@51@01 bs@21@01)
    (and (= (inv@53@01 a$1@51@01) a$1@51@01) (img@54@01 a$1@51@01)))
  :pattern (($FVF.loc_val ($FVF.lookup_val (as sm@52@01  $FVF<val>) a$1@51@01) a$1@51@01))
  :qid |val-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=> (and (img@54@01 r) (Set_in (inv@53@01 r) bs@21@01)) (= (inv@53@01 r) r))
  :pattern ((inv@53@01 r))
  :qid |val-fctOfInv|)))
(assert (forall ((r $Ref)) (!
  (=>
    (Set_in (inv@53@01 r) bs@21@01)
    ($FVF.loc_val ($FVF.lookup_val (as sm@55@01  $FVF<val>) r) r))
  :pattern ((inv@53@01 r))
  :qid |quant-u-9897|)))
; Precomputing data for removing quantified permissions
(define-fun pTaken@56@01 ((r $Ref)) $Perm
  (ite
    (and (Set_in (inv@53@01 r) bs@21@01) (img@54@01 r) (= r (inv@53@01 r)))
    ($Perm.min
      (ite
        (and (img@28@01 r) (Set_in (inv@27@01 r) as@20@01))
        (- $Perm.Write (pTaken@42@01 r))
        $Perm.No)
      $Perm.Write)
    $Perm.No))
(define-fun pTaken@57@01 ((r $Ref)) $Perm
  (ite
    (and (Set_in (inv@53@01 r) bs@21@01) (img@54@01 r) (= r (inv@53@01 r)))
    ($Perm.min
      (ite
        (and (img@32@01 r) (Set_in (inv@31@01 r) bs@21@01))
        (- $Perm.Write (pTaken@47@01 r))
        $Perm.No)
      (- $Perm.Write (pTaken@56@01 r)))
    $Perm.No))
(define-fun pTaken@58@01 ((r $Ref)) $Perm
  (ite
    (and (Set_in (inv@53@01 r) bs@21@01) (img@54@01 r) (= r (inv@53@01 r)))
    ($Perm.min
      (ite (= r b1@23@01) $Perm.Write $Perm.No)
      (- (- $Perm.Write (pTaken@56@01 r)) (pTaken@57@01 r)))
    $Perm.No))
(define-fun pTaken@59@01 ((r $Ref)) $Perm
  (ite
    (and (Set_in (inv@53@01 r) bs@21@01) (img@54@01 r) (= r (inv@53@01 r)))
    ($Perm.min
      (ite (= r a1@22@01) $Perm.Write $Perm.No)
      (- (- (- $Perm.Write (pTaken@56@01 r)) (pTaken@57@01 r)) (pTaken@58@01 r)))
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
        (and (img@28@01 r) (Set_in (inv@27@01 r) as@20@01))
        (- $Perm.Write (pTaken@42@01 r))
        $Perm.No)
      (pTaken@56@01 r))
    $Perm.No)
  
  :qid |quant-u-9899|))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (forall ((r $Ref)) (!
  (= (pTaken@56@01 r) $Perm.No)
  
  :qid |quant-u-9900|))))
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
    (and (Set_in (inv@53@01 r) bs@21@01) (img@54@01 r) (= r (inv@53@01 r)))
    (= (- $Perm.Write (pTaken@56@01 r)) $Perm.No))
  
  :qid |quant-u-9901|))))
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
        (and (img@32@01 r) (Set_in (inv@31@01 r) bs@21@01))
        (- $Perm.Write (pTaken@47@01 r))
        $Perm.No)
      (pTaken@57@01 r))
    $Perm.No)
  
  :qid |quant-u-9902|))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (forall ((r $Ref)) (!
  (= (pTaken@57@01 r) $Perm.No)
  
  :qid |quant-u-9903|))))
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
    (and (Set_in (inv@53@01 r) bs@21@01) (img@54@01 r) (= r (inv@53@01 r)))
    (= (- (- $Perm.Write (pTaken@56@01 r)) (pTaken@57@01 r)) $Perm.No))
  
  :qid |quant-u-9904|))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Chunk depleted?
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 500)
(assert (not (= (- $Perm.Write (pTaken@58@01 b1@23@01)) $Perm.No)))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (forall ((r $Ref)) (!
  (= (pTaken@58@01 r) $Perm.No)
  
  :qid |quant-u-9906|))))
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
    (and (Set_in (inv@53@01 r) bs@21@01) (img@54@01 r) (= r (inv@53@01 r)))
    (=
      (- (- (- $Perm.Write (pTaken@56@01 r)) (pTaken@57@01 r)) (pTaken@58@01 r))
      $Perm.No))
  
  :qid |quant-u-9907|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Final check if taken enough permissions
; Done removing quantified permissions
; [exec]
; exhale foo_vals(as) == 0
; [eval] foo_vals(as) == 0
; [eval] foo_vals(as)
(set-option :timeout 0)
(push) ; 3
(declare-const a@60@01 $Ref)
(push) ; 4
; [eval] (a in as)
(assert (Set_in a@60@01 as@20@01))
(pop) ; 4
(declare-fun inv@61@01 ($Ref) $Ref)
(declare-fun img@62@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
(declare-const sm@63@01 $FVF<val>)
; Definitional axioms for snapshot map domain
; Definitional axioms for snapshot map values
(assert (forall ((r $Ref)) (!
  (=>
    (= r a1@22@01)
    (=
      ($FVF.lookup_val (as sm@63@01  $FVF<val>) r)
      ($FVF.lookup_val (as sm@44@01  $FVF<val>) r)))
  :pattern (($FVF.lookup_val (as sm@63@01  $FVF<val>) r))
  :pattern (($FVF.lookup_val (as sm@44@01  $FVF<val>) r))
  :qid |qp.fvfValDef40|)))
(assert (forall ((r $Ref)) (!
  (=>
    (ite (= r b1@23@01) (< $Perm.No (- $Perm.Write (pTaken@58@01 r))) false)
    (=
      ($FVF.lookup_val (as sm@63@01  $FVF<val>) r)
      ($FVF.lookup_val (as sm@50@01  $FVF<val>) r)))
  :pattern (($FVF.lookup_val (as sm@63@01  $FVF<val>) r))
  :pattern (($FVF.lookup_val (as sm@50@01  $FVF<val>) r))
  :qid |qp.fvfValDef41|)))
(assert (forall ((r $Ref)) (!
  (=>
    (ite
      (and (img@32@01 r) (Set_in (inv@31@01 r) bs@21@01))
      (< $Perm.No (- (- $Perm.Write (pTaken@47@01 r)) (pTaken@57@01 r)))
      false)
    (=
      ($FVF.lookup_val (as sm@63@01  $FVF<val>) r)
      ($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.second $t@24@01)) r)))
  :pattern (($FVF.lookup_val (as sm@63@01  $FVF<val>) r))
  :pattern (($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.second $t@24@01)) r))
  :qid |qp.fvfValDef42|)))
(assert (forall ((r $Ref)) (!
  (=>
    (ite
      (and (img@28@01 r) (Set_in (inv@27@01 r) as@20@01))
      (< $Perm.No (- (- $Perm.Write (pTaken@42@01 r)) (pTaken@56@01 r)))
      false)
    (=
      ($FVF.lookup_val (as sm@63@01  $FVF<val>) r)
      ($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.first $t@24@01)) r)))
  :pattern (($FVF.lookup_val (as sm@63@01  $FVF<val>) r))
  :pattern (($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.first $t@24@01)) r))
  :qid |qp.fvfValDef43|)))
(assert (forall ((r $Ref)) (!
  (and
    ($FVF.loc_val ($FVF.lookup_val (as sm@44@01  $FVF<val>) r) r)
    ($FVF.loc_val ($FVF.lookup_val (as sm@50@01  $FVF<val>) r) r)
    ($FVF.loc_val ($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.second $t@24@01)) r) r)
    ($FVF.loc_val ($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.first $t@24@01)) r) r))
  :pattern (($FVF.lookup_val (as sm@63@01  $FVF<val>) r))
  :qid |qp.fvfResTrgDef44|)))
; Check receiver injectivity
(push) ; 4
(assert (not (forall ((a1@60@01 $Ref) (a2@60@01 $Ref)) (!
  (=>
    (and
      (and
        (Set_in a1@60@01 as@20@01)
        ($FVF.loc_val ($FVF.lookup_val (as sm@63@01  $FVF<val>) a1@60@01) a1@60@01))
      (and
        (Set_in a2@60@01 as@20@01)
        ($FVF.loc_val ($FVF.lookup_val (as sm@63@01  $FVF<val>) a2@60@01) a2@60@01))
      (= a1@60@01 a2@60@01))
    (= a1@60@01 a2@60@01))
  
  :qid |val-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((a@60@01 $Ref)) (!
  (=>
    (Set_in a@60@01 as@20@01)
    (and (= (inv@61@01 a@60@01) a@60@01) (img@62@01 a@60@01)))
  :pattern ((Set_in a@60@01 as@20@01))
  :pattern ((inv@61@01 a@60@01))
  :pattern ((img@62@01 a@60@01))
  :qid |val-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=> (and (img@62@01 r) (Set_in (inv@61@01 r) as@20@01)) (= (inv@61@01 r) r))
  :pattern ((inv@61@01 r))
  :qid |val-fctOfInv|)))
(assert (forall ((r $Ref)) (!
  (=>
    (Set_in (inv@61@01 r) as@20@01)
    ($FVF.loc_val ($FVF.lookup_val (as sm@63@01  $FVF<val>) r) r))
  :pattern ((inv@61@01 r))
  :qid |quant-u-9909|)))
(push) ; 4
(assert (not (forall ((r $Ref)) (!
  (=>
    (and (Set_in (inv@61@01 r) as@20@01) (img@62@01 r) (= r (inv@61@01 r)))
    (>
      (+
        (+
          (+
            (ite
              (and (img@32@01 r) (Set_in (inv@31@01 r) bs@21@01))
              (- (- $Perm.Write (pTaken@47@01 r)) (pTaken@57@01 r))
              $Perm.No)
            (ite
              (and (img@28@01 r) (Set_in (inv@27@01 r) as@20@01))
              (- (- $Perm.Write (pTaken@42@01 r)) (pTaken@56@01 r))
              $Perm.No))
          (ite (= r a1@22@01) $Perm.Write $Perm.No))
        (ite (= r b1@23@01) (- $Perm.Write (pTaken@58@01 r)) $Perm.No))
      $Perm.No))
  
  :qid |quant-u-9910|))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(declare-const sm@64@01 $FVF<val>)
; Definitional axioms for snapshot map domain
(assert (forall ((r $Ref)) (!
  (and
    (=>
      (Set_in r ($FVF.domain_val (as sm@64@01  $FVF<val>)))
      (and (Set_in (inv@61@01 r) as@20@01) (img@62@01 r)))
    (=>
      (and (Set_in (inv@61@01 r) as@20@01) (img@62@01 r))
      (Set_in r ($FVF.domain_val (as sm@64@01  $FVF<val>)))))
  :pattern ((Set_in r ($FVF.domain_val (as sm@64@01  $FVF<val>))))
  :qid |qp.fvfDomDef50|)))
; Definitional axioms for snapshot map values
(assert (forall ((r $Ref)) (!
  (=>
    (and (and (Set_in (inv@61@01 r) as@20@01) (img@62@01 r)) (= r a1@22@01))
    (=
      ($FVF.lookup_val (as sm@64@01  $FVF<val>) r)
      ($FVF.lookup_val (as sm@44@01  $FVF<val>) r)))
  :pattern (($FVF.lookup_val (as sm@64@01  $FVF<val>) r))
  :pattern (($FVF.lookup_val (as sm@44@01  $FVF<val>) r))
  :qid |qp.fvfValDef45|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and (Set_in (inv@61@01 r) as@20@01) (img@62@01 r))
      (ite (= r b1@23@01) (< $Perm.No (- $Perm.Write (pTaken@58@01 r))) false))
    (=
      ($FVF.lookup_val (as sm@64@01  $FVF<val>) r)
      ($FVF.lookup_val (as sm@50@01  $FVF<val>) r)))
  :pattern (($FVF.lookup_val (as sm@64@01  $FVF<val>) r))
  :pattern (($FVF.lookup_val (as sm@50@01  $FVF<val>) r))
  :qid |qp.fvfValDef46|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and (Set_in (inv@61@01 r) as@20@01) (img@62@01 r))
      (ite
        (and (img@32@01 r) (Set_in (inv@31@01 r) bs@21@01))
        (< $Perm.No (- (- $Perm.Write (pTaken@47@01 r)) (pTaken@57@01 r)))
        false))
    (=
      ($FVF.lookup_val (as sm@64@01  $FVF<val>) r)
      ($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.second $t@24@01)) r)))
  :pattern (($FVF.lookup_val (as sm@64@01  $FVF<val>) r))
  :pattern (($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.second $t@24@01)) r))
  :qid |qp.fvfValDef47|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and (Set_in (inv@61@01 r) as@20@01) (img@62@01 r))
      (ite
        (and (img@28@01 r) (Set_in (inv@27@01 r) as@20@01))
        (< $Perm.No (- (- $Perm.Write (pTaken@42@01 r)) (pTaken@56@01 r)))
        false))
    (=
      ($FVF.lookup_val (as sm@64@01  $FVF<val>) r)
      ($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.first $t@24@01)) r)))
  :pattern (($FVF.lookup_val (as sm@64@01  $FVF<val>) r))
  :pattern (($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.first $t@24@01)) r))
  :qid |qp.fvfValDef48|)))
(assert (forall ((r $Ref)) (!
  (and
    ($FVF.loc_val ($FVF.lookup_val (as sm@44@01  $FVF<val>) r) r)
    ($FVF.loc_val ($FVF.lookup_val (as sm@50@01  $FVF<val>) r) r)
    ($FVF.loc_val ($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.second $t@24@01)) r) r)
    ($FVF.loc_val ($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.first $t@24@01)) r) r))
  :pattern (($FVF.lookup_val (as sm@64@01  $FVF<val>) r))
  :qid |qp.fvfResTrgDef49|)))
(assert (foo_vals%precondition ($SortWrappers.$FVF<val>To$Snap (as sm@64@01  $FVF<val>)) as@20@01))
(pop) ; 3
; Joined path conditions
(assert (forall ((r $Ref)) (!
  (=>
    (= r a1@22@01)
    (=
      ($FVF.lookup_val (as sm@63@01  $FVF<val>) r)
      ($FVF.lookup_val (as sm@44@01  $FVF<val>) r)))
  :pattern (($FVF.lookup_val (as sm@63@01  $FVF<val>) r))
  :pattern (($FVF.lookup_val (as sm@44@01  $FVF<val>) r))
  :qid |qp.fvfValDef40|)))
(assert (forall ((r $Ref)) (!
  (=>
    (ite (= r b1@23@01) (< $Perm.No (- $Perm.Write (pTaken@58@01 r))) false)
    (=
      ($FVF.lookup_val (as sm@63@01  $FVF<val>) r)
      ($FVF.lookup_val (as sm@50@01  $FVF<val>) r)))
  :pattern (($FVF.lookup_val (as sm@63@01  $FVF<val>) r))
  :pattern (($FVF.lookup_val (as sm@50@01  $FVF<val>) r))
  :qid |qp.fvfValDef41|)))
(assert (forall ((r $Ref)) (!
  (=>
    (ite
      (and (img@32@01 r) (Set_in (inv@31@01 r) bs@21@01))
      (< $Perm.No (- (- $Perm.Write (pTaken@47@01 r)) (pTaken@57@01 r)))
      false)
    (=
      ($FVF.lookup_val (as sm@63@01  $FVF<val>) r)
      ($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.second $t@24@01)) r)))
  :pattern (($FVF.lookup_val (as sm@63@01  $FVF<val>) r))
  :pattern (($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.second $t@24@01)) r))
  :qid |qp.fvfValDef42|)))
(assert (forall ((r $Ref)) (!
  (=>
    (ite
      (and (img@28@01 r) (Set_in (inv@27@01 r) as@20@01))
      (< $Perm.No (- (- $Perm.Write (pTaken@42@01 r)) (pTaken@56@01 r)))
      false)
    (=
      ($FVF.lookup_val (as sm@63@01  $FVF<val>) r)
      ($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.first $t@24@01)) r)))
  :pattern (($FVF.lookup_val (as sm@63@01  $FVF<val>) r))
  :pattern (($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.first $t@24@01)) r))
  :qid |qp.fvfValDef43|)))
(assert (forall ((r $Ref)) (!
  (and
    ($FVF.loc_val ($FVF.lookup_val (as sm@44@01  $FVF<val>) r) r)
    ($FVF.loc_val ($FVF.lookup_val (as sm@50@01  $FVF<val>) r) r)
    ($FVF.loc_val ($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.second $t@24@01)) r) r)
    ($FVF.loc_val ($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.first $t@24@01)) r) r))
  :pattern (($FVF.lookup_val (as sm@63@01  $FVF<val>) r))
  :qid |qp.fvfResTrgDef44|)))
(assert (forall ((a@60@01 $Ref)) (!
  (=>
    (Set_in a@60@01 as@20@01)
    (and (= (inv@61@01 a@60@01) a@60@01) (img@62@01 a@60@01)))
  :pattern ((Set_in a@60@01 as@20@01))
  :pattern ((inv@61@01 a@60@01))
  :pattern ((img@62@01 a@60@01))
  :qid |val-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=> (and (img@62@01 r) (Set_in (inv@61@01 r) as@20@01)) (= (inv@61@01 r) r))
  :pattern ((inv@61@01 r))
  :qid |val-fctOfInv|)))
(assert (forall ((r $Ref)) (!
  (and
    (=>
      (Set_in r ($FVF.domain_val (as sm@64@01  $FVF<val>)))
      (and (Set_in (inv@61@01 r) as@20@01) (img@62@01 r)))
    (=>
      (and (Set_in (inv@61@01 r) as@20@01) (img@62@01 r))
      (Set_in r ($FVF.domain_val (as sm@64@01  $FVF<val>)))))
  :pattern ((Set_in r ($FVF.domain_val (as sm@64@01  $FVF<val>))))
  :qid |qp.fvfDomDef50|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and (and (Set_in (inv@61@01 r) as@20@01) (img@62@01 r)) (= r a1@22@01))
    (=
      ($FVF.lookup_val (as sm@64@01  $FVF<val>) r)
      ($FVF.lookup_val (as sm@44@01  $FVF<val>) r)))
  :pattern (($FVF.lookup_val (as sm@64@01  $FVF<val>) r))
  :pattern (($FVF.lookup_val (as sm@44@01  $FVF<val>) r))
  :qid |qp.fvfValDef45|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and (Set_in (inv@61@01 r) as@20@01) (img@62@01 r))
      (ite (= r b1@23@01) (< $Perm.No (- $Perm.Write (pTaken@58@01 r))) false))
    (=
      ($FVF.lookup_val (as sm@64@01  $FVF<val>) r)
      ($FVF.lookup_val (as sm@50@01  $FVF<val>) r)))
  :pattern (($FVF.lookup_val (as sm@64@01  $FVF<val>) r))
  :pattern (($FVF.lookup_val (as sm@50@01  $FVF<val>) r))
  :qid |qp.fvfValDef46|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and (Set_in (inv@61@01 r) as@20@01) (img@62@01 r))
      (ite
        (and (img@32@01 r) (Set_in (inv@31@01 r) bs@21@01))
        (< $Perm.No (- (- $Perm.Write (pTaken@47@01 r)) (pTaken@57@01 r)))
        false))
    (=
      ($FVF.lookup_val (as sm@64@01  $FVF<val>) r)
      ($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.second $t@24@01)) r)))
  :pattern (($FVF.lookup_val (as sm@64@01  $FVF<val>) r))
  :pattern (($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.second $t@24@01)) r))
  :qid |qp.fvfValDef47|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and (Set_in (inv@61@01 r) as@20@01) (img@62@01 r))
      (ite
        (and (img@28@01 r) (Set_in (inv@27@01 r) as@20@01))
        (< $Perm.No (- (- $Perm.Write (pTaken@42@01 r)) (pTaken@56@01 r)))
        false))
    (=
      ($FVF.lookup_val (as sm@64@01  $FVF<val>) r)
      ($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.first $t@24@01)) r)))
  :pattern (($FVF.lookup_val (as sm@64@01  $FVF<val>) r))
  :pattern (($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.first $t@24@01)) r))
  :qid |qp.fvfValDef48|)))
(assert (forall ((r $Ref)) (!
  (and
    ($FVF.loc_val ($FVF.lookup_val (as sm@44@01  $FVF<val>) r) r)
    ($FVF.loc_val ($FVF.lookup_val (as sm@50@01  $FVF<val>) r) r)
    ($FVF.loc_val ($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.second $t@24@01)) r) r)
    ($FVF.loc_val ($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.first $t@24@01)) r) r))
  :pattern (($FVF.lookup_val (as sm@64@01  $FVF<val>) r))
  :qid |qp.fvfResTrgDef49|)))
(assert (and
  (forall ((r $Ref)) (!
    (=>
      (Set_in (inv@61@01 r) as@20@01)
      ($FVF.loc_val ($FVF.lookup_val (as sm@63@01  $FVF<val>) r) r))
    :pattern ((inv@61@01 r))
    :qid |quant-u-9909|))
  (foo_vals%precondition ($SortWrappers.$FVF<val>To$Snap (as sm@64@01  $FVF<val>)) as@20@01)))
(push) ; 3
(assert (not (=
  (foo_vals ($SortWrappers.$FVF<val>To$Snap (as sm@64@01  $FVF<val>)) as@20@01)
  0)))
(check-sat)
; unsat
(pop) ; 3
; 0.01s
; (get-info :all-statistics)
(assert (=
  (foo_vals ($SortWrappers.$FVF<val>To$Snap (as sm@64@01  $FVF<val>)) as@20@01)
  0))
(pop) ; 2
(pop) ; 1
; ---------- test_ones ----------
(declare-const as@65@01 Set<$Ref>)
(declare-const as@66@01 Set<$Ref>)
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
; inhale (forall a: Ref :: { one(a) } (a in as) ==> acc(one(a), write))
(declare-const a@67@01 $Ref)
(push) ; 3
; [eval] (a in as)
(assert (Set_in a@67@01 as@66@01))
(declare-const sm@68@01 $PSF<one>)
(declare-const s@69@01 $Snap)
; Definitional axioms for snapshot map values
(pop) ; 3
(declare-const $t@70@01 $PSF<one>)
(declare-fun inv@71@01 ($Ref) $Ref)
(declare-fun img@72@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
; Check receiver injectivity
(push) ; 3
(assert (not (forall ((a1@67@01 $Ref) (a2@67@01 $Ref)) (!
  (=>
    (and
      (Set_in a1@67@01 as@66@01)
      (Set_in a2@67@01 as@66@01)
      (= a1@67@01 a2@67@01))
    (= a1@67@01 a2@67@01))
  
  :qid |one-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((a@67@01 $Ref)) (!
  (=>
    (Set_in a@67@01 as@66@01)
    (and (= (inv@71@01 a@67@01) a@67@01) (img@72@01 a@67@01)))
  :pattern (($PSF.loc_one ($PSF.lookup_one $t@70@01 ($SortWrappers.$RefTo$Snap a@67@01)) ($SortWrappers.$RefTo$Snap a@67@01)))
  :qid |quant-u-9912|)))
(assert (forall ((a $Ref)) (!
  (=> (and (img@72@01 a) (Set_in (inv@71@01 a) as@66@01)) (= (inv@71@01 a) a))
  :pattern ((inv@71@01 a))
  :qid |one-fctOfInv|)))
; Permissions are non-negative
(declare-const sm@73@01 $PSF<one>)
(declare-const s@74@01 $Snap)
; Definitional axioms for snapshot map values
(assert (forall ((s@74@01 $Snap)) (!
  (=>
    (and
      (img@72@01 ($SortWrappers.$SnapTo$Ref s@74@01))
      (Set_in (inv@71@01 ($SortWrappers.$SnapTo$Ref s@74@01)) as@66@01))
    (and
      (not (= s@74@01 $Snap.unit))
      (=
        ($PSF.lookup_one (as sm@73@01  $PSF<one>) s@74@01)
        ($PSF.lookup_one $t@70@01 s@74@01))))
  :pattern (($PSF.lookup_one (as sm@73@01  $PSF<one>) s@74@01))
  :pattern (($PSF.lookup_one $t@70@01 s@74@01))
  :qid |qp.psmValDef52|)))
(assert (forall ((s@74@01 $Snap)) (!
  ($PSF.loc_one ($PSF.lookup_one $t@70@01 s@74@01) s@74@01)
  :pattern (($PSF.lookup_one (as sm@73@01  $PSF<one>) s@74@01))
  :qid |qp.psmResTrgDef53|)))
(assert (forall ((a $Ref)) (!
  (=>
    (Set_in (inv@71@01 a) as@66@01)
    ($PSF.loc_one ($PSF.lookup_one (as sm@73@01  $PSF<one>) ($SortWrappers.$RefTo$Snap a)) ($SortWrappers.$RefTo$Snap a)))
  :pattern ((inv@71@01 a))
  :qid |quant-u-9913|)))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale foo_ones(as) == 0
(declare-const $t@75@01 $Snap)
(assert (= $t@75@01 $Snap.unit))
; [eval] foo_ones(as) == 0
; [eval] foo_ones(as)
(set-option :timeout 0)
(push) ; 3
(declare-const a@76@01 $Ref)
(push) ; 4
; [eval] (a in as)
(assert (Set_in a@76@01 as@66@01))
(pop) ; 4
(declare-fun inv@77@01 ($Ref) $Ref)
(declare-fun img@78@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
; Definitional axioms for snapshot map domain
; Definitional axioms for snapshot map values
; Check receiver injectivity
(push) ; 4
(assert (not (forall ((a1@76@01 $Ref) (a2@76@01 $Ref)) (!
  (=>
    (and
      (and
        (Set_in a1@76@01 as@66@01)
        ($PSF.loc_one ($PSF.lookup_one (as sm@73@01  $PSF<one>) ($SortWrappers.$RefTo$Snap a1@76@01)) ($SortWrappers.$RefTo$Snap a1@76@01)))
      (and
        (Set_in a2@76@01 as@66@01)
        ($PSF.loc_one ($PSF.lookup_one (as sm@73@01  $PSF<one>) ($SortWrappers.$RefTo$Snap a2@76@01)) ($SortWrappers.$RefTo$Snap a2@76@01)))
      (= a1@76@01 a2@76@01))
    (= a1@76@01 a2@76@01))
  
  :qid |one-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((a@76@01 $Ref)) (!
  (=>
    (Set_in a@76@01 as@66@01)
    (and (= (inv@77@01 a@76@01) a@76@01) (img@78@01 a@76@01)))
  :pattern ((Set_in a@76@01 as@66@01))
  :pattern ((inv@77@01 a@76@01))
  :pattern ((img@78@01 a@76@01))
  :qid |one-invOfFct|)))
(assert (forall ((a $Ref)) (!
  (=> (and (img@78@01 a) (Set_in (inv@77@01 a) as@66@01)) (= (inv@77@01 a) a))
  :pattern ((inv@77@01 a))
  :qid |one-fctOfInv|)))
(assert (forall ((a $Ref)) (!
  (=>
    (Set_in (inv@77@01 a) as@66@01)
    ($PSF.loc_one ($PSF.lookup_one (as sm@73@01  $PSF<one>) ($SortWrappers.$RefTo$Snap a)) ($SortWrappers.$RefTo$Snap a)))
  :pattern ((inv@77@01 a))
  :qid |quant-u-9915|)))
(push) ; 4
(assert (not (forall ((a $Ref)) (!
  (=>
    (and (Set_in (inv@77@01 a) as@66@01) (img@78@01 a) (= a (inv@77@01 a)))
    (>
      (ite
        (and (img@72@01 a) (Set_in (inv@71@01 a) as@66@01))
        $Perm.Write
        $Perm.No)
      $Perm.No))
  
  :qid |quant-u-9916|))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(declare-const sm@79@01 $PSF<one>)
(declare-const s@80@01 $Snap)
; Definitional axioms for snapshot map domain
(assert (forall ((s@80@01 $Snap)) (!
  (and
    (=>
      (Set_in s@80@01 ($PSF.domain_one (as sm@79@01  $PSF<one>)))
      (and
        (Set_in (inv@77@01 ($SortWrappers.$SnapTo$Ref s@80@01)) as@66@01)
        (img@78@01 ($SortWrappers.$SnapTo$Ref s@80@01))))
    (=>
      (and
        (Set_in (inv@77@01 ($SortWrappers.$SnapTo$Ref s@80@01)) as@66@01)
        (img@78@01 ($SortWrappers.$SnapTo$Ref s@80@01)))
      (Set_in s@80@01 ($PSF.domain_one (as sm@79@01  $PSF<one>)))))
  :pattern ((Set_in s@80@01 ($PSF.domain_one (as sm@79@01  $PSF<one>))))
  :qid |qp.psmDomDef56|)))
; Definitional axioms for snapshot map values
(assert (forall ((s@80@01 $Snap)) (!
  (=>
    (and
      (and
        (Set_in (inv@77@01 ($SortWrappers.$SnapTo$Ref s@80@01)) as@66@01)
        (img@78@01 ($SortWrappers.$SnapTo$Ref s@80@01)))
      (and
        (img@72@01 ($SortWrappers.$SnapTo$Ref s@80@01))
        (Set_in (inv@71@01 ($SortWrappers.$SnapTo$Ref s@80@01)) as@66@01)))
    (and
      (not (= s@80@01 $Snap.unit))
      (=
        ($PSF.lookup_one (as sm@79@01  $PSF<one>) s@80@01)
        ($PSF.lookup_one $t@70@01 s@80@01))))
  :pattern (($PSF.lookup_one (as sm@79@01  $PSF<one>) s@80@01))
  :pattern (($PSF.lookup_one $t@70@01 s@80@01))
  :qid |qp.psmValDef54|)))
(assert (forall ((s@80@01 $Snap)) (!
  ($PSF.loc_one ($PSF.lookup_one $t@70@01 s@80@01) s@80@01)
  :pattern (($PSF.lookup_one (as sm@79@01  $PSF<one>) s@80@01))
  :qid |qp.psmResTrgDef55|)))
(assert (foo_ones%precondition ($SortWrappers.$PSF<one>To$Snap (as sm@79@01  $PSF<one>)) as@66@01))
(pop) ; 3
; Joined path conditions
(assert (forall ((a@76@01 $Ref)) (!
  (=>
    (Set_in a@76@01 as@66@01)
    (and (= (inv@77@01 a@76@01) a@76@01) (img@78@01 a@76@01)))
  :pattern ((Set_in a@76@01 as@66@01))
  :pattern ((inv@77@01 a@76@01))
  :pattern ((img@78@01 a@76@01))
  :qid |one-invOfFct|)))
(assert (forall ((a $Ref)) (!
  (=> (and (img@78@01 a) (Set_in (inv@77@01 a) as@66@01)) (= (inv@77@01 a) a))
  :pattern ((inv@77@01 a))
  :qid |one-fctOfInv|)))
(assert (forall ((s@80@01 $Snap)) (!
  (and
    (=>
      (Set_in s@80@01 ($PSF.domain_one (as sm@79@01  $PSF<one>)))
      (and
        (Set_in (inv@77@01 ($SortWrappers.$SnapTo$Ref s@80@01)) as@66@01)
        (img@78@01 ($SortWrappers.$SnapTo$Ref s@80@01))))
    (=>
      (and
        (Set_in (inv@77@01 ($SortWrappers.$SnapTo$Ref s@80@01)) as@66@01)
        (img@78@01 ($SortWrappers.$SnapTo$Ref s@80@01)))
      (Set_in s@80@01 ($PSF.domain_one (as sm@79@01  $PSF<one>)))))
  :pattern ((Set_in s@80@01 ($PSF.domain_one (as sm@79@01  $PSF<one>))))
  :qid |qp.psmDomDef56|)))
(assert (forall ((s@80@01 $Snap)) (!
  (=>
    (and
      (and
        (Set_in (inv@77@01 ($SortWrappers.$SnapTo$Ref s@80@01)) as@66@01)
        (img@78@01 ($SortWrappers.$SnapTo$Ref s@80@01)))
      (and
        (img@72@01 ($SortWrappers.$SnapTo$Ref s@80@01))
        (Set_in (inv@71@01 ($SortWrappers.$SnapTo$Ref s@80@01)) as@66@01)))
    (and
      (not (= s@80@01 $Snap.unit))
      (=
        ($PSF.lookup_one (as sm@79@01  $PSF<one>) s@80@01)
        ($PSF.lookup_one $t@70@01 s@80@01))))
  :pattern (($PSF.lookup_one (as sm@79@01  $PSF<one>) s@80@01))
  :pattern (($PSF.lookup_one $t@70@01 s@80@01))
  :qid |qp.psmValDef54|)))
(assert (forall ((s@80@01 $Snap)) (!
  ($PSF.loc_one ($PSF.lookup_one $t@70@01 s@80@01) s@80@01)
  :pattern (($PSF.lookup_one (as sm@79@01  $PSF<one>) s@80@01))
  :qid |qp.psmResTrgDef55|)))
(assert (and
  (forall ((a $Ref)) (!
    (=>
      (Set_in (inv@77@01 a) as@66@01)
      ($PSF.loc_one ($PSF.lookup_one (as sm@73@01  $PSF<one>) ($SortWrappers.$RefTo$Snap a)) ($SortWrappers.$RefTo$Snap a)))
    :pattern ((inv@77@01 a))
    :qid |quant-u-9915|))
  (foo_ones%precondition ($SortWrappers.$PSF<one>To$Snap (as sm@79@01  $PSF<one>)) as@66@01)))
(assert (=
  (foo_ones ($SortWrappers.$PSF<one>To$Snap (as sm@79@01  $PSF<one>)) as@66@01)
  0))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; exhale foo_ones(as) == 0
; [eval] foo_ones(as) == 0
; [eval] foo_ones(as)
(set-option :timeout 0)
(push) ; 3
(declare-const a@81@01 $Ref)
(push) ; 4
; [eval] (a in as)
(assert (Set_in a@81@01 as@66@01))
(pop) ; 4
(declare-fun inv@82@01 ($Ref) $Ref)
(declare-fun img@83@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
(declare-const sm@84@01 $PSF<one>)
(declare-const s@85@01 $Snap)
; Definitional axioms for snapshot map domain
; Definitional axioms for snapshot map values
(assert (forall ((s@85@01 $Snap)) (!
  (=>
    (and
      (img@72@01 ($SortWrappers.$SnapTo$Ref s@85@01))
      (Set_in (inv@71@01 ($SortWrappers.$SnapTo$Ref s@85@01)) as@66@01))
    (and
      (not (= s@85@01 $Snap.unit))
      (=
        ($PSF.lookup_one (as sm@84@01  $PSF<one>) s@85@01)
        ($PSF.lookup_one $t@70@01 s@85@01))))
  :pattern (($PSF.lookup_one (as sm@84@01  $PSF<one>) s@85@01))
  :pattern (($PSF.lookup_one $t@70@01 s@85@01))
  :qid |qp.psmValDef57|)))
(assert (forall ((s@85@01 $Snap)) (!
  ($PSF.loc_one ($PSF.lookup_one $t@70@01 s@85@01) s@85@01)
  :pattern (($PSF.lookup_one (as sm@84@01  $PSF<one>) s@85@01))
  :qid |qp.psmResTrgDef58|)))
; Check receiver injectivity
(push) ; 4
(assert (not (forall ((a1@81@01 $Ref) (a2@81@01 $Ref)) (!
  (=>
    (and
      (and
        (Set_in a1@81@01 as@66@01)
        ($PSF.loc_one ($PSF.lookup_one (as sm@84@01  $PSF<one>) ($SortWrappers.$RefTo$Snap a1@81@01)) ($SortWrappers.$RefTo$Snap a1@81@01)))
      (and
        (Set_in a2@81@01 as@66@01)
        ($PSF.loc_one ($PSF.lookup_one (as sm@84@01  $PSF<one>) ($SortWrappers.$RefTo$Snap a2@81@01)) ($SortWrappers.$RefTo$Snap a2@81@01)))
      (= a1@81@01 a2@81@01))
    (= a1@81@01 a2@81@01))
  
  :qid |one-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((a@81@01 $Ref)) (!
  (=>
    (Set_in a@81@01 as@66@01)
    (and (= (inv@82@01 a@81@01) a@81@01) (img@83@01 a@81@01)))
  :pattern ((Set_in a@81@01 as@66@01))
  :pattern ((inv@82@01 a@81@01))
  :pattern ((img@83@01 a@81@01))
  :qid |one-invOfFct|)))
(assert (forall ((a $Ref)) (!
  (=> (and (img@83@01 a) (Set_in (inv@82@01 a) as@66@01)) (= (inv@82@01 a) a))
  :pattern ((inv@82@01 a))
  :qid |one-fctOfInv|)))
(assert (forall ((a $Ref)) (!
  (=>
    (Set_in (inv@82@01 a) as@66@01)
    ($PSF.loc_one ($PSF.lookup_one (as sm@84@01  $PSF<one>) ($SortWrappers.$RefTo$Snap a)) ($SortWrappers.$RefTo$Snap a)))
  :pattern ((inv@82@01 a))
  :qid |quant-u-9918|)))
(push) ; 4
(assert (not (forall ((a $Ref)) (!
  (=>
    (and (Set_in (inv@82@01 a) as@66@01) (img@83@01 a) (= a (inv@82@01 a)))
    (>
      (ite
        (and (img@72@01 a) (Set_in (inv@71@01 a) as@66@01))
        $Perm.Write
        $Perm.No)
      $Perm.No))
  
  :qid |quant-u-9919|))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(declare-const sm@86@01 $PSF<one>)
(declare-const s@87@01 $Snap)
; Definitional axioms for snapshot map domain
(assert (forall ((s@87@01 $Snap)) (!
  (and
    (=>
      (Set_in s@87@01 ($PSF.domain_one (as sm@86@01  $PSF<one>)))
      (and
        (Set_in (inv@82@01 ($SortWrappers.$SnapTo$Ref s@87@01)) as@66@01)
        (img@83@01 ($SortWrappers.$SnapTo$Ref s@87@01))))
    (=>
      (and
        (Set_in (inv@82@01 ($SortWrappers.$SnapTo$Ref s@87@01)) as@66@01)
        (img@83@01 ($SortWrappers.$SnapTo$Ref s@87@01)))
      (Set_in s@87@01 ($PSF.domain_one (as sm@86@01  $PSF<one>)))))
  :pattern ((Set_in s@87@01 ($PSF.domain_one (as sm@86@01  $PSF<one>))))
  :qid |qp.psmDomDef61|)))
; Definitional axioms for snapshot map values
(assert (forall ((s@87@01 $Snap)) (!
  (=>
    (and
      (and
        (Set_in (inv@82@01 ($SortWrappers.$SnapTo$Ref s@87@01)) as@66@01)
        (img@83@01 ($SortWrappers.$SnapTo$Ref s@87@01)))
      (and
        (img@72@01 ($SortWrappers.$SnapTo$Ref s@87@01))
        (Set_in (inv@71@01 ($SortWrappers.$SnapTo$Ref s@87@01)) as@66@01)))
    (and
      (not (= s@87@01 $Snap.unit))
      (=
        ($PSF.lookup_one (as sm@86@01  $PSF<one>) s@87@01)
        ($PSF.lookup_one $t@70@01 s@87@01))))
  :pattern (($PSF.lookup_one (as sm@86@01  $PSF<one>) s@87@01))
  :pattern (($PSF.lookup_one $t@70@01 s@87@01))
  :qid |qp.psmValDef59|)))
(assert (forall ((s@87@01 $Snap)) (!
  ($PSF.loc_one ($PSF.lookup_one $t@70@01 s@87@01) s@87@01)
  :pattern (($PSF.lookup_one (as sm@86@01  $PSF<one>) s@87@01))
  :qid |qp.psmResTrgDef60|)))
(assert (foo_ones%precondition ($SortWrappers.$PSF<one>To$Snap (as sm@86@01  $PSF<one>)) as@66@01))
(pop) ; 3
; Joined path conditions
(assert (forall ((s@85@01 $Snap)) (!
  (=>
    (and
      (img@72@01 ($SortWrappers.$SnapTo$Ref s@85@01))
      (Set_in (inv@71@01 ($SortWrappers.$SnapTo$Ref s@85@01)) as@66@01))
    (and
      (not (= s@85@01 $Snap.unit))
      (=
        ($PSF.lookup_one (as sm@84@01  $PSF<one>) s@85@01)
        ($PSF.lookup_one $t@70@01 s@85@01))))
  :pattern (($PSF.lookup_one (as sm@84@01  $PSF<one>) s@85@01))
  :pattern (($PSF.lookup_one $t@70@01 s@85@01))
  :qid |qp.psmValDef57|)))
(assert (forall ((s@85@01 $Snap)) (!
  ($PSF.loc_one ($PSF.lookup_one $t@70@01 s@85@01) s@85@01)
  :pattern (($PSF.lookup_one (as sm@84@01  $PSF<one>) s@85@01))
  :qid |qp.psmResTrgDef58|)))
(assert (forall ((a@81@01 $Ref)) (!
  (=>
    (Set_in a@81@01 as@66@01)
    (and (= (inv@82@01 a@81@01) a@81@01) (img@83@01 a@81@01)))
  :pattern ((Set_in a@81@01 as@66@01))
  :pattern ((inv@82@01 a@81@01))
  :pattern ((img@83@01 a@81@01))
  :qid |one-invOfFct|)))
(assert (forall ((a $Ref)) (!
  (=> (and (img@83@01 a) (Set_in (inv@82@01 a) as@66@01)) (= (inv@82@01 a) a))
  :pattern ((inv@82@01 a))
  :qid |one-fctOfInv|)))
(assert (forall ((s@87@01 $Snap)) (!
  (and
    (=>
      (Set_in s@87@01 ($PSF.domain_one (as sm@86@01  $PSF<one>)))
      (and
        (Set_in (inv@82@01 ($SortWrappers.$SnapTo$Ref s@87@01)) as@66@01)
        (img@83@01 ($SortWrappers.$SnapTo$Ref s@87@01))))
    (=>
      (and
        (Set_in (inv@82@01 ($SortWrappers.$SnapTo$Ref s@87@01)) as@66@01)
        (img@83@01 ($SortWrappers.$SnapTo$Ref s@87@01)))
      (Set_in s@87@01 ($PSF.domain_one (as sm@86@01  $PSF<one>)))))
  :pattern ((Set_in s@87@01 ($PSF.domain_one (as sm@86@01  $PSF<one>))))
  :qid |qp.psmDomDef61|)))
(assert (forall ((s@87@01 $Snap)) (!
  (=>
    (and
      (and
        (Set_in (inv@82@01 ($SortWrappers.$SnapTo$Ref s@87@01)) as@66@01)
        (img@83@01 ($SortWrappers.$SnapTo$Ref s@87@01)))
      (and
        (img@72@01 ($SortWrappers.$SnapTo$Ref s@87@01))
        (Set_in (inv@71@01 ($SortWrappers.$SnapTo$Ref s@87@01)) as@66@01)))
    (and
      (not (= s@87@01 $Snap.unit))
      (=
        ($PSF.lookup_one (as sm@86@01  $PSF<one>) s@87@01)
        ($PSF.lookup_one $t@70@01 s@87@01))))
  :pattern (($PSF.lookup_one (as sm@86@01  $PSF<one>) s@87@01))
  :pattern (($PSF.lookup_one $t@70@01 s@87@01))
  :qid |qp.psmValDef59|)))
(assert (forall ((s@87@01 $Snap)) (!
  ($PSF.loc_one ($PSF.lookup_one $t@70@01 s@87@01) s@87@01)
  :pattern (($PSF.lookup_one (as sm@86@01  $PSF<one>) s@87@01))
  :qid |qp.psmResTrgDef60|)))
(assert (and
  (forall ((a $Ref)) (!
    (=>
      (Set_in (inv@82@01 a) as@66@01)
      ($PSF.loc_one ($PSF.lookup_one (as sm@84@01  $PSF<one>) ($SortWrappers.$RefTo$Snap a)) ($SortWrappers.$RefTo$Snap a)))
    :pattern ((inv@82@01 a))
    :qid |quant-u-9918|))
  (foo_ones%precondition ($SortWrappers.$PSF<one>To$Snap (as sm@86@01  $PSF<one>)) as@66@01)))
(push) ; 3
(assert (not (=
  (foo_ones ($SortWrappers.$PSF<one>To$Snap (as sm@86@01  $PSF<one>)) as@66@01)
  0)))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(assert (=
  (foo_ones ($SortWrappers.$PSF<one>To$Snap (as sm@86@01  $PSF<one>)) as@66@01)
  0))
(pop) ; 2
(pop) ; 1
; ---------- test_ones_2 ----------
(declare-const as@88@01 Set<$Ref>)
(declare-const bs@89@01 Set<$Ref>)
(declare-const as@90@01 Set<$Ref>)
(declare-const bs@91@01 Set<$Ref>)
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
; var a1: Ref
(declare-const a1@92@01 $Ref)
; [exec]
; var b1: Ref
(declare-const b1@93@01 $Ref)
; [exec]
; inhale (forall a: Ref :: { one(a) } (a in as) ==> acc(one(a), write)) &&
;   (forall a$0: Ref :: { one(a$0) } (a$0 in bs) ==> acc(one(a$0), write))
(declare-const $t@94@01 $Snap)
(assert (= $t@94@01 ($Snap.combine ($Snap.first $t@94@01) ($Snap.second $t@94@01))))
(declare-const a@95@01 $Ref)
(push) ; 3
; [eval] (a in as)
(assert (Set_in a@95@01 as@90@01))
(declare-const sm@96@01 $PSF<one>)
(declare-const s@97@01 $Snap)
; Definitional axioms for snapshot map values
(pop) ; 3
(declare-fun inv@98@01 ($Ref) $Ref)
(declare-fun img@99@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
; Check receiver injectivity
(push) ; 3
(assert (not (forall ((a1@95@01 $Ref) (a2@95@01 $Ref)) (!
  (=>
    (and
      (Set_in a1@95@01 as@90@01)
      (Set_in a2@95@01 as@90@01)
      (= a1@95@01 a2@95@01))
    (= a1@95@01 a2@95@01))
  
  :qid |one-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((a@95@01 $Ref)) (!
  (=>
    (Set_in a@95@01 as@90@01)
    (and (= (inv@98@01 a@95@01) a@95@01) (img@99@01 a@95@01)))
  :pattern (($PSF.loc_one ($PSF.lookup_one ($SortWrappers.$SnapTo$PSF<one> ($Snap.first $t@94@01)) ($SortWrappers.$RefTo$Snap a@95@01)) ($SortWrappers.$RefTo$Snap a@95@01)))
  :qid |quant-u-9921|)))
(assert (forall ((a $Ref)) (!
  (=> (and (img@99@01 a) (Set_in (inv@98@01 a) as@90@01)) (= (inv@98@01 a) a))
  :pattern ((inv@98@01 a))
  :qid |one-fctOfInv|)))
; Permissions are non-negative
(declare-const sm@100@01 $PSF<one>)
(declare-const s@101@01 $Snap)
; Definitional axioms for snapshot map values
(assert (forall ((s@101@01 $Snap)) (!
  (=>
    (and
      (img@99@01 ($SortWrappers.$SnapTo$Ref s@101@01))
      (Set_in (inv@98@01 ($SortWrappers.$SnapTo$Ref s@101@01)) as@90@01))
    (and
      (not (= s@101@01 $Snap.unit))
      (=
        ($PSF.lookup_one (as sm@100@01  $PSF<one>) s@101@01)
        ($PSF.lookup_one ($SortWrappers.$SnapTo$PSF<one> ($Snap.first $t@94@01)) s@101@01))))
  :pattern (($PSF.lookup_one (as sm@100@01  $PSF<one>) s@101@01))
  :pattern (($PSF.lookup_one ($SortWrappers.$SnapTo$PSF<one> ($Snap.first $t@94@01)) s@101@01))
  :qid |qp.psmValDef63|)))
(assert (forall ((s@101@01 $Snap)) (!
  ($PSF.loc_one ($PSF.lookup_one ($SortWrappers.$SnapTo$PSF<one> ($Snap.first $t@94@01)) s@101@01) s@101@01)
  :pattern (($PSF.lookup_one (as sm@100@01  $PSF<one>) s@101@01))
  :qid |qp.psmResTrgDef64|)))
(assert (forall ((a $Ref)) (!
  (=>
    (Set_in (inv@98@01 a) as@90@01)
    ($PSF.loc_one ($PSF.lookup_one (as sm@100@01  $PSF<one>) ($SortWrappers.$RefTo$Snap a)) ($SortWrappers.$RefTo$Snap a)))
  :pattern ((inv@98@01 a))
  :qid |quant-u-9922|)))
(declare-const a$0@102@01 $Ref)
(push) ; 3
; [eval] (a$0 in bs)
(assert (Set_in a$0@102@01 bs@91@01))
; Definitional axioms for snapshot map values
(pop) ; 3
(declare-fun inv@103@01 ($Ref) $Ref)
(declare-fun img@104@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
; Check receiver injectivity
(push) ; 3
(assert (not (forall ((a$01@102@01 $Ref) (a$02@102@01 $Ref)) (!
  (=>
    (and
      (Set_in a$01@102@01 bs@91@01)
      (Set_in a$02@102@01 bs@91@01)
      (= a$01@102@01 a$02@102@01))
    (= a$01@102@01 a$02@102@01))
  
  :qid |one-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((a$0@102@01 $Ref)) (!
  (=>
    (Set_in a$0@102@01 bs@91@01)
    (and (= (inv@103@01 a$0@102@01) a$0@102@01) (img@104@01 a$0@102@01)))
  :pattern (($PSF.loc_one ($PSF.lookup_one ($SortWrappers.$SnapTo$PSF<one> ($Snap.second $t@94@01)) ($SortWrappers.$RefTo$Snap a$0@102@01)) ($SortWrappers.$RefTo$Snap a$0@102@01)))
  :qid |quant-u-9924|)))
(assert (forall ((a $Ref)) (!
  (=> (and (img@104@01 a) (Set_in (inv@103@01 a) bs@91@01)) (= (inv@103@01 a) a))
  :pattern ((inv@103@01 a))
  :qid |one-fctOfInv|)))
; Permissions are non-negative
(push) ; 3
(set-option :timeout 10)
(assert (not (forall ((a $Ref)) (!
  (and
    (= a$0@102@01 a@95@01)
    (=
      (and (img@104@01 a) (Set_in (inv@103@01 a) bs@91@01))
      (and (img@99@01 a) (Set_in (inv@98@01 a) as@90@01))))
  
  :qid |quant-u-9925|))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(declare-const sm@105@01 $PSF<one>)
(declare-const s@106@01 $Snap)
; Definitional axioms for snapshot map values
(assert (forall ((s@106@01 $Snap)) (!
  (=>
    (and
      (img@99@01 ($SortWrappers.$SnapTo$Ref s@106@01))
      (Set_in (inv@98@01 ($SortWrappers.$SnapTo$Ref s@106@01)) as@90@01))
    (and
      (not (= s@106@01 $Snap.unit))
      (=
        ($PSF.lookup_one (as sm@105@01  $PSF<one>) s@106@01)
        ($PSF.lookup_one ($SortWrappers.$SnapTo$PSF<one> ($Snap.first $t@94@01)) s@106@01))))
  :pattern (($PSF.lookup_one (as sm@105@01  $PSF<one>) s@106@01))
  :pattern (($PSF.lookup_one ($SortWrappers.$SnapTo$PSF<one> ($Snap.first $t@94@01)) s@106@01))
  :qid |qp.psmValDef65|)))
(assert (forall ((s@106@01 $Snap)) (!
  (=>
    (and
      (img@104@01 ($SortWrappers.$SnapTo$Ref s@106@01))
      (Set_in (inv@103@01 ($SortWrappers.$SnapTo$Ref s@106@01)) bs@91@01))
    (and
      (not (= s@106@01 $Snap.unit))
      (=
        ($PSF.lookup_one (as sm@105@01  $PSF<one>) s@106@01)
        ($PSF.lookup_one ($SortWrappers.$SnapTo$PSF<one> ($Snap.second $t@94@01)) s@106@01))))
  :pattern (($PSF.lookup_one (as sm@105@01  $PSF<one>) s@106@01))
  :pattern (($PSF.lookup_one ($SortWrappers.$SnapTo$PSF<one> ($Snap.second $t@94@01)) s@106@01))
  :qid |qp.psmValDef66|)))
(assert (forall ((s@106@01 $Snap)) (!
  (and
    ($PSF.loc_one ($PSF.lookup_one ($SortWrappers.$SnapTo$PSF<one> ($Snap.first $t@94@01)) s@106@01) s@106@01)
    ($PSF.loc_one ($PSF.lookup_one ($SortWrappers.$SnapTo$PSF<one> ($Snap.second $t@94@01)) s@106@01) s@106@01))
  :pattern (($PSF.lookup_one (as sm@105@01  $PSF<one>) s@106@01))
  :qid |qp.psmResTrgDef67|)))
(assert (forall ((a $Ref)) (!
  (=>
    (Set_in (inv@103@01 a) bs@91@01)
    ($PSF.loc_one ($PSF.lookup_one (as sm@105@01  $PSF<one>) ($SortWrappers.$RefTo$Snap a)) ($SortWrappers.$RefTo$Snap a)))
  :pattern ((inv@103@01 a))
  :qid |quant-u-9926|)))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale foo_ones(as) == 0
(declare-const $t@107@01 $Snap)
(assert (= $t@107@01 $Snap.unit))
; [eval] foo_ones(as) == 0
; [eval] foo_ones(as)
(set-option :timeout 0)
(push) ; 3
(declare-const a@108@01 $Ref)
(push) ; 4
; [eval] (a in as)
(assert (Set_in a@108@01 as@90@01))
(pop) ; 4
(declare-fun inv@109@01 ($Ref) $Ref)
(declare-fun img@110@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
; Definitional axioms for snapshot map domain
; Definitional axioms for snapshot map values
; Check receiver injectivity
(push) ; 4
(assert (not (forall ((a1@108@01 $Ref) (a2@108@01 $Ref)) (!
  (=>
    (and
      (and
        (Set_in a1@108@01 as@90@01)
        ($PSF.loc_one ($PSF.lookup_one (as sm@105@01  $PSF<one>) ($SortWrappers.$RefTo$Snap a1@108@01)) ($SortWrappers.$RefTo$Snap a1@108@01)))
      (and
        (Set_in a2@108@01 as@90@01)
        ($PSF.loc_one ($PSF.lookup_one (as sm@105@01  $PSF<one>) ($SortWrappers.$RefTo$Snap a2@108@01)) ($SortWrappers.$RefTo$Snap a2@108@01)))
      (= a1@108@01 a2@108@01))
    (= a1@108@01 a2@108@01))
  
  :qid |one-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((a@108@01 $Ref)) (!
  (=>
    (Set_in a@108@01 as@90@01)
    (and (= (inv@109@01 a@108@01) a@108@01) (img@110@01 a@108@01)))
  :pattern ((Set_in a@108@01 as@90@01))
  :pattern ((inv@109@01 a@108@01))
  :pattern ((img@110@01 a@108@01))
  :qid |one-invOfFct|)))
(assert (forall ((a $Ref)) (!
  (=> (and (img@110@01 a) (Set_in (inv@109@01 a) as@90@01)) (= (inv@109@01 a) a))
  :pattern ((inv@109@01 a))
  :qid |one-fctOfInv|)))
(assert (forall ((a $Ref)) (!
  (=>
    (Set_in (inv@109@01 a) as@90@01)
    ($PSF.loc_one ($PSF.lookup_one (as sm@105@01  $PSF<one>) ($SortWrappers.$RefTo$Snap a)) ($SortWrappers.$RefTo$Snap a)))
  :pattern ((inv@109@01 a))
  :qid |quant-u-9928|)))
(push) ; 4
(assert (not (forall ((a $Ref)) (!
  (=>
    (and (Set_in (inv@109@01 a) as@90@01) (img@110@01 a) (= a (inv@109@01 a)))
    (>
      (+
        (ite
          (and (img@99@01 a) (Set_in (inv@98@01 a) as@90@01))
          $Perm.Write
          $Perm.No)
        (ite
          (and (img@104@01 a) (Set_in (inv@103@01 a) bs@91@01))
          $Perm.Write
          $Perm.No))
      $Perm.No))
  
  :qid |quant-u-9929|))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(declare-const sm@111@01 $PSF<one>)
(declare-const s@112@01 $Snap)
; Definitional axioms for snapshot map domain
(assert (forall ((s@112@01 $Snap)) (!
  (and
    (=>
      (Set_in s@112@01 ($PSF.domain_one (as sm@111@01  $PSF<one>)))
      (and
        (Set_in (inv@109@01 ($SortWrappers.$SnapTo$Ref s@112@01)) as@90@01)
        (img@110@01 ($SortWrappers.$SnapTo$Ref s@112@01))))
    (=>
      (and
        (Set_in (inv@109@01 ($SortWrappers.$SnapTo$Ref s@112@01)) as@90@01)
        (img@110@01 ($SortWrappers.$SnapTo$Ref s@112@01)))
      (Set_in s@112@01 ($PSF.domain_one (as sm@111@01  $PSF<one>)))))
  :pattern ((Set_in s@112@01 ($PSF.domain_one (as sm@111@01  $PSF<one>))))
  :qid |qp.psmDomDef71|)))
; Definitional axioms for snapshot map values
(assert (forall ((s@112@01 $Snap)) (!
  (=>
    (and
      (and
        (Set_in (inv@109@01 ($SortWrappers.$SnapTo$Ref s@112@01)) as@90@01)
        (img@110@01 ($SortWrappers.$SnapTo$Ref s@112@01)))
      (and
        (img@99@01 ($SortWrappers.$SnapTo$Ref s@112@01))
        (Set_in (inv@98@01 ($SortWrappers.$SnapTo$Ref s@112@01)) as@90@01)))
    (and
      (not (= s@112@01 $Snap.unit))
      (=
        ($PSF.lookup_one (as sm@111@01  $PSF<one>) s@112@01)
        ($PSF.lookup_one ($SortWrappers.$SnapTo$PSF<one> ($Snap.first $t@94@01)) s@112@01))))
  :pattern (($PSF.lookup_one (as sm@111@01  $PSF<one>) s@112@01))
  :pattern (($PSF.lookup_one ($SortWrappers.$SnapTo$PSF<one> ($Snap.first $t@94@01)) s@112@01))
  :qid |qp.psmValDef68|)))
(assert (forall ((s@112@01 $Snap)) (!
  (=>
    (and
      (and
        (Set_in (inv@109@01 ($SortWrappers.$SnapTo$Ref s@112@01)) as@90@01)
        (img@110@01 ($SortWrappers.$SnapTo$Ref s@112@01)))
      (and
        (img@104@01 ($SortWrappers.$SnapTo$Ref s@112@01))
        (Set_in (inv@103@01 ($SortWrappers.$SnapTo$Ref s@112@01)) bs@91@01)))
    (and
      (not (= s@112@01 $Snap.unit))
      (=
        ($PSF.lookup_one (as sm@111@01  $PSF<one>) s@112@01)
        ($PSF.lookup_one ($SortWrappers.$SnapTo$PSF<one> ($Snap.second $t@94@01)) s@112@01))))
  :pattern (($PSF.lookup_one (as sm@111@01  $PSF<one>) s@112@01))
  :pattern (($PSF.lookup_one ($SortWrappers.$SnapTo$PSF<one> ($Snap.second $t@94@01)) s@112@01))
  :qid |qp.psmValDef69|)))
(assert (forall ((s@112@01 $Snap)) (!
  (and
    ($PSF.loc_one ($PSF.lookup_one ($SortWrappers.$SnapTo$PSF<one> ($Snap.first $t@94@01)) s@112@01) s@112@01)
    ($PSF.loc_one ($PSF.lookup_one ($SortWrappers.$SnapTo$PSF<one> ($Snap.second $t@94@01)) s@112@01) s@112@01))
  :pattern (($PSF.lookup_one (as sm@111@01  $PSF<one>) s@112@01))
  :qid |qp.psmResTrgDef70|)))
(assert (foo_ones%precondition ($SortWrappers.$PSF<one>To$Snap (as sm@111@01  $PSF<one>)) as@90@01))
(pop) ; 3
; Joined path conditions
(assert (forall ((a@108@01 $Ref)) (!
  (=>
    (Set_in a@108@01 as@90@01)
    (and (= (inv@109@01 a@108@01) a@108@01) (img@110@01 a@108@01)))
  :pattern ((Set_in a@108@01 as@90@01))
  :pattern ((inv@109@01 a@108@01))
  :pattern ((img@110@01 a@108@01))
  :qid |one-invOfFct|)))
(assert (forall ((a $Ref)) (!
  (=> (and (img@110@01 a) (Set_in (inv@109@01 a) as@90@01)) (= (inv@109@01 a) a))
  :pattern ((inv@109@01 a))
  :qid |one-fctOfInv|)))
(assert (forall ((s@112@01 $Snap)) (!
  (and
    (=>
      (Set_in s@112@01 ($PSF.domain_one (as sm@111@01  $PSF<one>)))
      (and
        (Set_in (inv@109@01 ($SortWrappers.$SnapTo$Ref s@112@01)) as@90@01)
        (img@110@01 ($SortWrappers.$SnapTo$Ref s@112@01))))
    (=>
      (and
        (Set_in (inv@109@01 ($SortWrappers.$SnapTo$Ref s@112@01)) as@90@01)
        (img@110@01 ($SortWrappers.$SnapTo$Ref s@112@01)))
      (Set_in s@112@01 ($PSF.domain_one (as sm@111@01  $PSF<one>)))))
  :pattern ((Set_in s@112@01 ($PSF.domain_one (as sm@111@01  $PSF<one>))))
  :qid |qp.psmDomDef71|)))
(assert (forall ((s@112@01 $Snap)) (!
  (=>
    (and
      (and
        (Set_in (inv@109@01 ($SortWrappers.$SnapTo$Ref s@112@01)) as@90@01)
        (img@110@01 ($SortWrappers.$SnapTo$Ref s@112@01)))
      (and
        (img@99@01 ($SortWrappers.$SnapTo$Ref s@112@01))
        (Set_in (inv@98@01 ($SortWrappers.$SnapTo$Ref s@112@01)) as@90@01)))
    (and
      (not (= s@112@01 $Snap.unit))
      (=
        ($PSF.lookup_one (as sm@111@01  $PSF<one>) s@112@01)
        ($PSF.lookup_one ($SortWrappers.$SnapTo$PSF<one> ($Snap.first $t@94@01)) s@112@01))))
  :pattern (($PSF.lookup_one (as sm@111@01  $PSF<one>) s@112@01))
  :pattern (($PSF.lookup_one ($SortWrappers.$SnapTo$PSF<one> ($Snap.first $t@94@01)) s@112@01))
  :qid |qp.psmValDef68|)))
(assert (forall ((s@112@01 $Snap)) (!
  (=>
    (and
      (and
        (Set_in (inv@109@01 ($SortWrappers.$SnapTo$Ref s@112@01)) as@90@01)
        (img@110@01 ($SortWrappers.$SnapTo$Ref s@112@01)))
      (and
        (img@104@01 ($SortWrappers.$SnapTo$Ref s@112@01))
        (Set_in (inv@103@01 ($SortWrappers.$SnapTo$Ref s@112@01)) bs@91@01)))
    (and
      (not (= s@112@01 $Snap.unit))
      (=
        ($PSF.lookup_one (as sm@111@01  $PSF<one>) s@112@01)
        ($PSF.lookup_one ($SortWrappers.$SnapTo$PSF<one> ($Snap.second $t@94@01)) s@112@01))))
  :pattern (($PSF.lookup_one (as sm@111@01  $PSF<one>) s@112@01))
  :pattern (($PSF.lookup_one ($SortWrappers.$SnapTo$PSF<one> ($Snap.second $t@94@01)) s@112@01))
  :qid |qp.psmValDef69|)))
(assert (forall ((s@112@01 $Snap)) (!
  (and
    ($PSF.loc_one ($PSF.lookup_one ($SortWrappers.$SnapTo$PSF<one> ($Snap.first $t@94@01)) s@112@01) s@112@01)
    ($PSF.loc_one ($PSF.lookup_one ($SortWrappers.$SnapTo$PSF<one> ($Snap.second $t@94@01)) s@112@01) s@112@01))
  :pattern (($PSF.lookup_one (as sm@111@01  $PSF<one>) s@112@01))
  :qid |qp.psmResTrgDef70|)))
(assert (and
  (forall ((a $Ref)) (!
    (=>
      (Set_in (inv@109@01 a) as@90@01)
      ($PSF.loc_one ($PSF.lookup_one (as sm@105@01  $PSF<one>) ($SortWrappers.$RefTo$Snap a)) ($SortWrappers.$RefTo$Snap a)))
    :pattern ((inv@109@01 a))
    :qid |quant-u-9928|))
  (foo_ones%precondition ($SortWrappers.$PSF<one>To$Snap (as sm@111@01  $PSF<one>)) as@90@01)))
(assert (=
  (foo_ones ($SortWrappers.$PSF<one>To$Snap (as sm@111@01  $PSF<one>)) as@90@01)
  0))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale (a1 in as)
(declare-const $t@113@01 $Snap)
(assert (= $t@113@01 $Snap.unit))
; [eval] (a1 in as)
(assert (Set_in a1@92@01 as@90@01))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; unfold acc(one(a1), write)
(declare-const sm@114@01 $PSF<one>)
(declare-const s@115@01 $Snap)
; Definitional axioms for snapshot map values
(assert (forall ((s@115@01 $Snap)) (!
  (=>
    (and
      (img@99@01 ($SortWrappers.$SnapTo$Ref s@115@01))
      (Set_in (inv@98@01 ($SortWrappers.$SnapTo$Ref s@115@01)) as@90@01))
    (and
      (not (= s@115@01 $Snap.unit))
      (=
        ($PSF.lookup_one (as sm@114@01  $PSF<one>) s@115@01)
        ($PSF.lookup_one ($SortWrappers.$SnapTo$PSF<one> ($Snap.first $t@94@01)) s@115@01))))
  :pattern (($PSF.lookup_one (as sm@114@01  $PSF<one>) s@115@01))
  :pattern (($PSF.lookup_one ($SortWrappers.$SnapTo$PSF<one> ($Snap.first $t@94@01)) s@115@01))
  :qid |qp.psmValDef72|)))
(assert (forall ((s@115@01 $Snap)) (!
  (=>
    (and
      (img@104@01 ($SortWrappers.$SnapTo$Ref s@115@01))
      (Set_in (inv@103@01 ($SortWrappers.$SnapTo$Ref s@115@01)) bs@91@01))
    (and
      (not (= s@115@01 $Snap.unit))
      (=
        ($PSF.lookup_one (as sm@114@01  $PSF<one>) s@115@01)
        ($PSF.lookup_one ($SortWrappers.$SnapTo$PSF<one> ($Snap.second $t@94@01)) s@115@01))))
  :pattern (($PSF.lookup_one (as sm@114@01  $PSF<one>) s@115@01))
  :pattern (($PSF.lookup_one ($SortWrappers.$SnapTo$PSF<one> ($Snap.second $t@94@01)) s@115@01))
  :qid |qp.psmValDef73|)))
(assert (forall ((s@115@01 $Snap)) (!
  (and
    ($PSF.loc_one ($PSF.lookup_one ($SortWrappers.$SnapTo$PSF<one> ($Snap.first $t@94@01)) s@115@01) s@115@01)
    ($PSF.loc_one ($PSF.lookup_one ($SortWrappers.$SnapTo$PSF<one> ($Snap.second $t@94@01)) s@115@01) s@115@01))
  :pattern (($PSF.lookup_one (as sm@114@01  $PSF<one>) s@115@01))
  :qid |qp.psmResTrgDef74|)))
(assert ($PSF.loc_one ($PSF.lookup_one (as sm@114@01  $PSF<one>) ($SortWrappers.$RefTo$Snap a1@92@01)) ($SortWrappers.$RefTo$Snap a1@92@01)))
; Precomputing data for removing quantified permissions
(define-fun pTaken@116@01 ((a $Ref)) $Perm
  (ite
    (= a a1@92@01)
    ($Perm.min
      (ite
        (and (img@99@01 a) (Set_in (inv@98@01 a) as@90@01))
        $Perm.Write
        $Perm.No)
      $Perm.Write)
    $Perm.No))
(define-fun pTaken@117@01 ((a $Ref)) $Perm
  (ite
    (= a a1@92@01)
    ($Perm.min
      (ite
        (and (img@104@01 a) (Set_in (inv@103@01 a) bs@91@01))
        $Perm.Write
        $Perm.No)
      (- $Perm.Write (pTaken@116@01 a)))
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
(assert (not (forall ((a $Ref)) (!
  (=
    (-
      (ite
        (and (img@99@01 a) (Set_in (inv@98@01 a) as@90@01))
        $Perm.Write
        $Perm.No)
      (pTaken@116@01 a))
    $Perm.No)
  
  :qid |quant-u-9931|))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (forall ((a $Ref)) (!
  (= (pTaken@116@01 a) $Perm.No)
  
  :qid |quant-u-9932|))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Intermediate check if already taken enough permissions
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 500)
(assert (not (forall ((a $Ref)) (!
  (=> (= a a1@92@01) (= (- $Perm.Write (pTaken@116@01 a)) $Perm.No))
  
  :qid |quant-u-9933|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Final check if taken enough permissions
; Done removing quantified permissions
; Definitional axioms for snapshot map values (instantiated)
(assert (=>
  (and (img@99@01 a1@92@01) (Set_in (inv@98@01 a1@92@01) as@90@01))
  (and
    (not (= ($SortWrappers.$RefTo$Snap a1@92@01) $Snap.unit))
    (=
      ($PSF.lookup_one (as sm@114@01  $PSF<one>) ($SortWrappers.$RefTo$Snap a1@92@01))
      ($PSF.lookup_one ($SortWrappers.$SnapTo$PSF<one> ($Snap.first $t@94@01)) ($SortWrappers.$RefTo$Snap a1@92@01))))))
(assert (=>
  (and (img@104@01 a1@92@01) (Set_in (inv@103@01 a1@92@01) bs@91@01))
  (and
    (not (= ($SortWrappers.$RefTo$Snap a1@92@01) $Snap.unit))
    (=
      ($PSF.lookup_one (as sm@114@01  $PSF<one>) ($SortWrappers.$RefTo$Snap a1@92@01))
      ($PSF.lookup_one ($SortWrappers.$SnapTo$PSF<one> ($Snap.second $t@94@01)) ($SortWrappers.$RefTo$Snap a1@92@01))))))
(assert (and
  ($PSF.loc_one ($PSF.lookup_one ($SortWrappers.$SnapTo$PSF<one> ($Snap.first $t@94@01)) ($SortWrappers.$RefTo$Snap a1@92@01)) ($SortWrappers.$RefTo$Snap a1@92@01))
  ($PSF.loc_one ($PSF.lookup_one ($SortWrappers.$SnapTo$PSF<one> ($Snap.second $t@94@01)) ($SortWrappers.$RefTo$Snap a1@92@01)) ($SortWrappers.$RefTo$Snap a1@92@01))))
(assert (not (= a1@92@01 $Ref.null)))
; State saturation: after unfold
(set-option :timeout 40)
(check-sat)
; unknown
(assert (one%trigger ($SortWrappers.IntTo$Snap ($PSF.lookup_one (as sm@114@01  $PSF<one>) ($SortWrappers.$RefTo$Snap a1@92@01))) a1@92@01))
; [exec]
; a1.val := 1 + a1.val - 1
; [eval] 1 + a1.val - 1
; [eval] 1 + a1.val
(declare-const val@118@01 Int)
(assert (=
  val@118@01
  (-
    (+
      1
      ($PSF.lookup_one (as sm@114@01  $PSF<one>) ($SortWrappers.$RefTo$Snap a1@92@01)))
    1)))
; [exec]
; fold acc(one(a1), write)
(assert (one%trigger ($SortWrappers.IntTo$Snap val@118@01) a1@92@01))
(declare-const sm@119@01 $PSF<one>)
; Definitional axioms for singleton-SM's value
(assert (=
  ($PSF.lookup_one (as sm@119@01  $PSF<one>) ($SortWrappers.$RefTo$Snap a1@92@01))
  val@118@01))
(declare-const sm@120@01 $PSF<one>)
(declare-const s@121@01 $Snap)
; Definitional axioms for snapshot map domain
; Definitional axioms for snapshot map values
(assert (forall ((s@121@01 $Snap)) (!
  (=>
    (= ($SortWrappers.$SnapTo$Ref s@121@01) a1@92@01)
    (and
      (not (= s@121@01 $Snap.unit))
      (=
        ($PSF.lookup_one (as sm@120@01  $PSF<one>) s@121@01)
        ($PSF.lookup_one (as sm@119@01  $PSF<one>) s@121@01))))
  :pattern (($PSF.lookup_one (as sm@120@01  $PSF<one>) s@121@01))
  :pattern (($PSF.lookup_one (as sm@119@01  $PSF<one>) s@121@01))
  :qid |qp.psmValDef75|)))
(assert (forall ((s@121@01 $Snap)) (!
  (=>
    (and
      (img@104@01 ($SortWrappers.$SnapTo$Ref s@121@01))
      (Set_in (inv@103@01 ($SortWrappers.$SnapTo$Ref s@121@01)) bs@91@01))
    (and
      (not (= s@121@01 $Snap.unit))
      (=
        ($PSF.lookup_one (as sm@120@01  $PSF<one>) s@121@01)
        ($PSF.lookup_one ($SortWrappers.$SnapTo$PSF<one> ($Snap.second $t@94@01)) s@121@01))))
  :pattern (($PSF.lookup_one (as sm@120@01  $PSF<one>) s@121@01))
  :pattern (($PSF.lookup_one ($SortWrappers.$SnapTo$PSF<one> ($Snap.second $t@94@01)) s@121@01))
  :qid |qp.psmValDef76|)))
(assert (forall ((s@121@01 $Snap)) (!
  (=>
    (ite
      (and
        (img@99@01 ($SortWrappers.$SnapTo$Ref s@121@01))
        (Set_in (inv@98@01 ($SortWrappers.$SnapTo$Ref s@121@01)) as@90@01))
      (<
        $Perm.No
        (- $Perm.Write (pTaken@116@01 ($SortWrappers.$SnapTo$Ref s@121@01))))
      false)
    (and
      (not (= s@121@01 $Snap.unit))
      (=
        ($PSF.lookup_one (as sm@120@01  $PSF<one>) s@121@01)
        ($PSF.lookup_one ($SortWrappers.$SnapTo$PSF<one> ($Snap.first $t@94@01)) s@121@01))))
  :pattern (($PSF.lookup_one (as sm@120@01  $PSF<one>) s@121@01))
  :pattern (($PSF.lookup_one ($SortWrappers.$SnapTo$PSF<one> ($Snap.first $t@94@01)) s@121@01))
  :qid |qp.psmValDef77|)))
(assert (forall ((s@121@01 $Snap)) (!
  (and
    ($PSF.loc_one ($PSF.lookup_one (as sm@119@01  $PSF<one>) s@121@01) s@121@01)
    ($PSF.loc_one ($PSF.lookup_one ($SortWrappers.$SnapTo$PSF<one> ($Snap.second $t@94@01)) s@121@01) s@121@01)
    ($PSF.loc_one ($PSF.lookup_one ($SortWrappers.$SnapTo$PSF<one> ($Snap.first $t@94@01)) s@121@01) s@121@01))
  :pattern (($PSF.lookup_one (as sm@120@01  $PSF<one>) s@121@01))
  :qid |qp.psmResTrgDef78|)))
(assert ($PSF.loc_one ($PSF.lookup_one (as sm@120@01  $PSF<one>) ($SortWrappers.$RefTo$Snap a1@92@01)) ($SortWrappers.$RefTo$Snap a1@92@01)))
; [exec]
; inhale (b1 in bs)
(declare-const $t@122@01 $Snap)
(assert (= $t@122@01 $Snap.unit))
; [eval] (b1 in bs)
(assert (Set_in b1@93@01 bs@91@01))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; exhale acc(one(b1), write)
; Definitional axioms for snapshot map domain
; Definitional axioms for snapshot map values
(assert ($PSF.loc_one ($PSF.lookup_one (as sm@120@01  $PSF<one>) ($SortWrappers.$RefTo$Snap b1@93@01)) ($SortWrappers.$RefTo$Snap b1@93@01)))
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (= a1@92@01 b1@93@01)))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Precomputing data for removing quantified permissions
(define-fun pTaken@123@01 ((a $Ref)) $Perm
  (ite
    (= a b1@93@01)
    ($Perm.min
      (ite
        (and (img@104@01 a) (Set_in (inv@103@01 a) bs@91@01))
        $Perm.Write
        $Perm.No)
      $Perm.Write)
    $Perm.No))
(define-fun pTaken@124@01 ((a $Ref)) $Perm
  (ite
    (= a b1@93@01)
    ($Perm.min
      (ite
        (and (img@99@01 a) (Set_in (inv@98@01 a) as@90@01))
        (- $Perm.Write (pTaken@116@01 a))
        $Perm.No)
      (- $Perm.Write (pTaken@123@01 a)))
    $Perm.No))
(define-fun pTaken@125@01 ((a $Ref)) $Perm
  (ite
    (= a b1@93@01)
    ($Perm.min
      (ite (= a a1@92@01) $Perm.Write $Perm.No)
      (- (- $Perm.Write (pTaken@123@01 a)) (pTaken@124@01 a)))
    $Perm.No))
; Done precomputing, updating quantified chunks
; State saturation: before repetition
(check-sat)
; unknown
; Chunk depleted?
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 500)
(assert (not (forall ((a $Ref)) (!
  (=
    (-
      (ite
        (and (img@104@01 a) (Set_in (inv@103@01 a) bs@91@01))
        $Perm.Write
        $Perm.No)
      (pTaken@123@01 a))
    $Perm.No)
  
  :qid |quant-u-9935|))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (forall ((a $Ref)) (!
  (= (pTaken@123@01 a) $Perm.No)
  
  :qid |quant-u-9936|))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Intermediate check if already taken enough permissions
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 500)
(assert (not (forall ((a $Ref)) (!
  (=> (= a b1@93@01) (= (- $Perm.Write (pTaken@123@01 a)) $Perm.No))
  
  :qid |quant-u-9937|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Final check if taken enough permissions
; Done removing quantified permissions
; [exec]
; exhale (forall a$1: Ref ::
;     { one(a$1) }
;     (a$1 in (bs setminus Set(b1))) ==> acc(one(a$1), write))
(declare-const a$1@126@01 $Ref)
(set-option :timeout 0)
(push) ; 3
; [eval] (a$1 in (bs setminus Set(b1)))
; [eval] (bs setminus Set(b1))
; [eval] Set(b1)
(assert (Set_in a$1@126@01 (Set_difference bs@91@01 (Set_singleton b1@93@01))))
(declare-const sm@127@01 $PSF<one>)
(declare-const s@128@01 $Snap)
; Definitional axioms for snapshot map domain
; Definitional axioms for snapshot map values
(assert (forall ((s@128@01 $Snap)) (!
  (=>
    (= ($SortWrappers.$SnapTo$Ref s@128@01) a1@92@01)
    (and
      (not (= s@128@01 $Snap.unit))
      (=
        ($PSF.lookup_one (as sm@127@01  $PSF<one>) s@128@01)
        ($PSF.lookup_one (as sm@119@01  $PSF<one>) s@128@01))))
  :pattern (($PSF.lookup_one (as sm@127@01  $PSF<one>) s@128@01))
  :pattern (($PSF.lookup_one (as sm@119@01  $PSF<one>) s@128@01))
  :qid |qp.psmValDef79|)))
(assert (forall ((s@128@01 $Snap)) (!
  (=>
    (ite
      (and
        (img@99@01 ($SortWrappers.$SnapTo$Ref s@128@01))
        (Set_in (inv@98@01 ($SortWrappers.$SnapTo$Ref s@128@01)) as@90@01))
      (<
        $Perm.No
        (- $Perm.Write (pTaken@116@01 ($SortWrappers.$SnapTo$Ref s@128@01))))
      false)
    (and
      (not (= s@128@01 $Snap.unit))
      (=
        ($PSF.lookup_one (as sm@127@01  $PSF<one>) s@128@01)
        ($PSF.lookup_one ($SortWrappers.$SnapTo$PSF<one> ($Snap.first $t@94@01)) s@128@01))))
  :pattern (($PSF.lookup_one (as sm@127@01  $PSF<one>) s@128@01))
  :pattern (($PSF.lookup_one ($SortWrappers.$SnapTo$PSF<one> ($Snap.first $t@94@01)) s@128@01))
  :qid |qp.psmValDef80|)))
(assert (forall ((s@128@01 $Snap)) (!
  (=>
    (ite
      (and
        (img@104@01 ($SortWrappers.$SnapTo$Ref s@128@01))
        (Set_in (inv@103@01 ($SortWrappers.$SnapTo$Ref s@128@01)) bs@91@01))
      (<
        $Perm.No
        (- $Perm.Write (pTaken@123@01 ($SortWrappers.$SnapTo$Ref s@128@01))))
      false)
    (and
      (not (= s@128@01 $Snap.unit))
      (=
        ($PSF.lookup_one (as sm@127@01  $PSF<one>) s@128@01)
        ($PSF.lookup_one ($SortWrappers.$SnapTo$PSF<one> ($Snap.second $t@94@01)) s@128@01))))
  :pattern (($PSF.lookup_one (as sm@127@01  $PSF<one>) s@128@01))
  :pattern (($PSF.lookup_one ($SortWrappers.$SnapTo$PSF<one> ($Snap.second $t@94@01)) s@128@01))
  :qid |qp.psmValDef81|)))
(assert (forall ((s@128@01 $Snap)) (!
  (and
    ($PSF.loc_one ($PSF.lookup_one (as sm@119@01  $PSF<one>) s@128@01) s@128@01)
    ($PSF.loc_one ($PSF.lookup_one ($SortWrappers.$SnapTo$PSF<one> ($Snap.first $t@94@01)) s@128@01) s@128@01)
    ($PSF.loc_one ($PSF.lookup_one ($SortWrappers.$SnapTo$PSF<one> ($Snap.second $t@94@01)) s@128@01) s@128@01))
  :pattern (($PSF.lookup_one (as sm@127@01  $PSF<one>) s@128@01))
  :qid |qp.psmResTrgDef82|)))
(pop) ; 3
(declare-fun inv@129@01 ($Ref) $Ref)
(declare-fun img@130@01 ($Ref) Bool)
; Nested auxiliary terms: globals
(assert (forall ((s@128@01 $Snap)) (!
  (=>
    (= ($SortWrappers.$SnapTo$Ref s@128@01) a1@92@01)
    (and
      (not (= s@128@01 $Snap.unit))
      (=
        ($PSF.lookup_one (as sm@127@01  $PSF<one>) s@128@01)
        ($PSF.lookup_one (as sm@119@01  $PSF<one>) s@128@01))))
  :pattern (($PSF.lookup_one (as sm@127@01  $PSF<one>) s@128@01))
  :pattern (($PSF.lookup_one (as sm@119@01  $PSF<one>) s@128@01))
  :qid |qp.psmValDef79|)))
(assert (forall ((s@128@01 $Snap)) (!
  (=>
    (ite
      (and
        (img@99@01 ($SortWrappers.$SnapTo$Ref s@128@01))
        (Set_in (inv@98@01 ($SortWrappers.$SnapTo$Ref s@128@01)) as@90@01))
      (<
        $Perm.No
        (- $Perm.Write (pTaken@116@01 ($SortWrappers.$SnapTo$Ref s@128@01))))
      false)
    (and
      (not (= s@128@01 $Snap.unit))
      (=
        ($PSF.lookup_one (as sm@127@01  $PSF<one>) s@128@01)
        ($PSF.lookup_one ($SortWrappers.$SnapTo$PSF<one> ($Snap.first $t@94@01)) s@128@01))))
  :pattern (($PSF.lookup_one (as sm@127@01  $PSF<one>) s@128@01))
  :pattern (($PSF.lookup_one ($SortWrappers.$SnapTo$PSF<one> ($Snap.first $t@94@01)) s@128@01))
  :qid |qp.psmValDef80|)))
(assert (forall ((s@128@01 $Snap)) (!
  (=>
    (ite
      (and
        (img@104@01 ($SortWrappers.$SnapTo$Ref s@128@01))
        (Set_in (inv@103@01 ($SortWrappers.$SnapTo$Ref s@128@01)) bs@91@01))
      (<
        $Perm.No
        (- $Perm.Write (pTaken@123@01 ($SortWrappers.$SnapTo$Ref s@128@01))))
      false)
    (and
      (not (= s@128@01 $Snap.unit))
      (=
        ($PSF.lookup_one (as sm@127@01  $PSF<one>) s@128@01)
        ($PSF.lookup_one ($SortWrappers.$SnapTo$PSF<one> ($Snap.second $t@94@01)) s@128@01))))
  :pattern (($PSF.lookup_one (as sm@127@01  $PSF<one>) s@128@01))
  :pattern (($PSF.lookup_one ($SortWrappers.$SnapTo$PSF<one> ($Snap.second $t@94@01)) s@128@01))
  :qid |qp.psmValDef81|)))
(assert (forall ((s@128@01 $Snap)) (!
  (and
    ($PSF.loc_one ($PSF.lookup_one (as sm@119@01  $PSF<one>) s@128@01) s@128@01)
    ($PSF.loc_one ($PSF.lookup_one ($SortWrappers.$SnapTo$PSF<one> ($Snap.first $t@94@01)) s@128@01) s@128@01)
    ($PSF.loc_one ($PSF.lookup_one ($SortWrappers.$SnapTo$PSF<one> ($Snap.second $t@94@01)) s@128@01) s@128@01))
  :pattern (($PSF.lookup_one (as sm@127@01  $PSF<one>) s@128@01))
  :qid |qp.psmResTrgDef82|)))
; Nested auxiliary terms: non-globals
(declare-const sm@131@01 $PSF<one>)
(declare-const s@132@01 $Snap)
; Definitional axioms for snapshot map domain
; Definitional axioms for snapshot map values
(assert (forall ((s@132@01 $Snap)) (!
  (=>
    (= ($SortWrappers.$SnapTo$Ref s@132@01) a1@92@01)
    (and
      (not (= s@132@01 $Snap.unit))
      (=
        ($PSF.lookup_one (as sm@131@01  $PSF<one>) s@132@01)
        ($PSF.lookup_one (as sm@119@01  $PSF<one>) s@132@01))))
  :pattern (($PSF.lookup_one (as sm@131@01  $PSF<one>) s@132@01))
  :pattern (($PSF.lookup_one (as sm@119@01  $PSF<one>) s@132@01))
  :qid |qp.psmValDef83|)))
(assert (forall ((s@132@01 $Snap)) (!
  (=>
    (ite
      (and
        (img@99@01 ($SortWrappers.$SnapTo$Ref s@132@01))
        (Set_in (inv@98@01 ($SortWrappers.$SnapTo$Ref s@132@01)) as@90@01))
      (<
        $Perm.No
        (- $Perm.Write (pTaken@116@01 ($SortWrappers.$SnapTo$Ref s@132@01))))
      false)
    (and
      (not (= s@132@01 $Snap.unit))
      (=
        ($PSF.lookup_one (as sm@131@01  $PSF<one>) s@132@01)
        ($PSF.lookup_one ($SortWrappers.$SnapTo$PSF<one> ($Snap.first $t@94@01)) s@132@01))))
  :pattern (($PSF.lookup_one (as sm@131@01  $PSF<one>) s@132@01))
  :pattern (($PSF.lookup_one ($SortWrappers.$SnapTo$PSF<one> ($Snap.first $t@94@01)) s@132@01))
  :qid |qp.psmValDef84|)))
(assert (forall ((s@132@01 $Snap)) (!
  (=>
    (ite
      (and
        (img@104@01 ($SortWrappers.$SnapTo$Ref s@132@01))
        (Set_in (inv@103@01 ($SortWrappers.$SnapTo$Ref s@132@01)) bs@91@01))
      (<
        $Perm.No
        (- $Perm.Write (pTaken@123@01 ($SortWrappers.$SnapTo$Ref s@132@01))))
      false)
    (and
      (not (= s@132@01 $Snap.unit))
      (=
        ($PSF.lookup_one (as sm@131@01  $PSF<one>) s@132@01)
        ($PSF.lookup_one ($SortWrappers.$SnapTo$PSF<one> ($Snap.second $t@94@01)) s@132@01))))
  :pattern (($PSF.lookup_one (as sm@131@01  $PSF<one>) s@132@01))
  :pattern (($PSF.lookup_one ($SortWrappers.$SnapTo$PSF<one> ($Snap.second $t@94@01)) s@132@01))
  :qid |qp.psmValDef85|)))
(assert (forall ((s@132@01 $Snap)) (!
  (and
    ($PSF.loc_one ($PSF.lookup_one (as sm@119@01  $PSF<one>) s@132@01) s@132@01)
    ($PSF.loc_one ($PSF.lookup_one ($SortWrappers.$SnapTo$PSF<one> ($Snap.first $t@94@01)) s@132@01) s@132@01)
    ($PSF.loc_one ($PSF.lookup_one ($SortWrappers.$SnapTo$PSF<one> ($Snap.second $t@94@01)) s@132@01) s@132@01))
  :pattern (($PSF.lookup_one (as sm@131@01  $PSF<one>) s@132@01))
  :qid |qp.psmResTrgDef86|)))
; Check receiver injectivity
(push) ; 3
(assert (not (forall ((a$11@126@01 $Ref) (a$12@126@01 $Ref)) (!
  (=>
    (and
      (and
        (Set_in a$11@126@01 (Set_difference bs@91@01 (Set_singleton b1@93@01)))
        ($PSF.loc_one ($PSF.lookup_one (as sm@131@01  $PSF<one>) ($SortWrappers.$RefTo$Snap a$11@126@01)) ($SortWrappers.$RefTo$Snap a$11@126@01)))
      (and
        (Set_in a$12@126@01 (Set_difference bs@91@01 (Set_singleton b1@93@01)))
        ($PSF.loc_one ($PSF.lookup_one (as sm@131@01  $PSF<one>) ($SortWrappers.$RefTo$Snap a$12@126@01)) ($SortWrappers.$RefTo$Snap a$12@126@01)))
      (= a$11@126@01 a$12@126@01))
    (= a$11@126@01 a$12@126@01))
  
  :qid |one-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((a$1@126@01 $Ref)) (!
  (=>
    (Set_in a$1@126@01 (Set_difference bs@91@01 (Set_singleton b1@93@01)))
    (and (= (inv@129@01 a$1@126@01) a$1@126@01) (img@130@01 a$1@126@01)))
  :pattern (($PSF.loc_one ($PSF.lookup_one (as sm@127@01  $PSF<one>) ($SortWrappers.$RefTo$Snap a$1@126@01)) ($SortWrappers.$RefTo$Snap a$1@126@01)))
  :qid |one-invOfFct|)))
(assert (forall ((a $Ref)) (!
  (=>
    (and
      (img@130@01 a)
      (Set_in (inv@129@01 a) (Set_difference bs@91@01 (Set_singleton b1@93@01))))
    (= (inv@129@01 a) a))
  :pattern ((inv@129@01 a))
  :qid |one-fctOfInv|)))
(assert (forall ((a $Ref)) (!
  (=>
    (Set_in (inv@129@01 a) (Set_difference bs@91@01 (Set_singleton b1@93@01)))
    ($PSF.loc_one ($PSF.lookup_one (as sm@131@01  $PSF<one>) ($SortWrappers.$RefTo$Snap a)) ($SortWrappers.$RefTo$Snap a)))
  :pattern ((inv@129@01 a))
  :qid |quant-u-9939|)))
; Precomputing data for removing quantified permissions
(define-fun pTaken@133@01 ((a $Ref)) $Perm
  (ite
    (and
      (Set_in (inv@129@01 a) (Set_difference bs@91@01 (Set_singleton b1@93@01)))
      (img@130@01 a)
      (= a (inv@129@01 a)))
    ($Perm.min
      (ite
        (and (img@99@01 a) (Set_in (inv@98@01 a) as@90@01))
        (- $Perm.Write (pTaken@116@01 a))
        $Perm.No)
      $Perm.Write)
    $Perm.No))
(define-fun pTaken@134@01 ((a $Ref)) $Perm
  (ite
    (and
      (Set_in (inv@129@01 a) (Set_difference bs@91@01 (Set_singleton b1@93@01)))
      (img@130@01 a)
      (= a (inv@129@01 a)))
    ($Perm.min
      (ite
        (and (img@104@01 a) (Set_in (inv@103@01 a) bs@91@01))
        (- $Perm.Write (pTaken@123@01 a))
        $Perm.No)
      (- $Perm.Write (pTaken@133@01 a)))
    $Perm.No))
(define-fun pTaken@135@01 ((a $Ref)) $Perm
  (ite
    (and
      (Set_in (inv@129@01 a) (Set_difference bs@91@01 (Set_singleton b1@93@01)))
      (img@130@01 a)
      (= a (inv@129@01 a)))
    ($Perm.min
      (ite (= a a1@92@01) $Perm.Write $Perm.No)
      (- (- $Perm.Write (pTaken@133@01 a)) (pTaken@134@01 a)))
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
(assert (not (forall ((a $Ref)) (!
  (=
    (-
      (ite
        (and (img@99@01 a) (Set_in (inv@98@01 a) as@90@01))
        (- $Perm.Write (pTaken@116@01 a))
        $Perm.No)
      (pTaken@133@01 a))
    $Perm.No)
  
  :qid |quant-u-9941|))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (forall ((a $Ref)) (!
  (= (pTaken@133@01 a) $Perm.No)
  
  :qid |quant-u-9942|))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Intermediate check if already taken enough permissions
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 500)
(assert (not (forall ((a $Ref)) (!
  (=>
    (and
      (Set_in (inv@129@01 a) (Set_difference bs@91@01 (Set_singleton b1@93@01)))
      (img@130@01 a)
      (= a (inv@129@01 a)))
    (= (- $Perm.Write (pTaken@133@01 a)) $Perm.No))
  
  :qid |quant-u-9943|))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Chunk depleted?
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 500)
(assert (not (forall ((a $Ref)) (!
  (=
    (-
      (ite
        (and (img@104@01 a) (Set_in (inv@103@01 a) bs@91@01))
        (- $Perm.Write (pTaken@123@01 a))
        $Perm.No)
      (pTaken@134@01 a))
    $Perm.No)
  
  :qid |quant-u-9944|))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (forall ((a $Ref)) (!
  (= (pTaken@134@01 a) $Perm.No)
  
  :qid |quant-u-9945|))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Intermediate check if already taken enough permissions
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 500)
(assert (not (forall ((a $Ref)) (!
  (=>
    (and
      (Set_in (inv@129@01 a) (Set_difference bs@91@01 (Set_singleton b1@93@01)))
      (img@130@01 a)
      (= a (inv@129@01 a)))
    (= (- (- $Perm.Write (pTaken@133@01 a)) (pTaken@134@01 a)) $Perm.No))
  
  :qid |quant-u-9946|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Final check if taken enough permissions
; Done removing quantified permissions
; [exec]
; exhale foo_ones(as) == 0
; [eval] foo_ones(as) == 0
; [eval] foo_ones(as)
(set-option :timeout 0)
(push) ; 3
(declare-const a@136@01 $Ref)
(push) ; 4
; [eval] (a in as)
(assert (Set_in a@136@01 as@90@01))
(pop) ; 4
(declare-fun inv@137@01 ($Ref) $Ref)
(declare-fun img@138@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
(declare-const sm@139@01 $PSF<one>)
(declare-const s@140@01 $Snap)
; Definitional axioms for snapshot map domain
; Definitional axioms for snapshot map values
(assert (forall ((s@140@01 $Snap)) (!
  (=>
    (= ($SortWrappers.$SnapTo$Ref s@140@01) a1@92@01)
    (and
      (not (= s@140@01 $Snap.unit))
      (=
        ($PSF.lookup_one (as sm@139@01  $PSF<one>) s@140@01)
        ($PSF.lookup_one (as sm@119@01  $PSF<one>) s@140@01))))
  :pattern (($PSF.lookup_one (as sm@139@01  $PSF<one>) s@140@01))
  :pattern (($PSF.lookup_one (as sm@119@01  $PSF<one>) s@140@01))
  :qid |qp.psmValDef87|)))
(assert (forall ((s@140@01 $Snap)) (!
  (=>
    (ite
      (and
        (img@104@01 ($SortWrappers.$SnapTo$Ref s@140@01))
        (Set_in (inv@103@01 ($SortWrappers.$SnapTo$Ref s@140@01)) bs@91@01))
      (<
        $Perm.No
        (-
          (- $Perm.Write (pTaken@123@01 ($SortWrappers.$SnapTo$Ref s@140@01)))
          (pTaken@134@01 ($SortWrappers.$SnapTo$Ref s@140@01))))
      false)
    (and
      (not (= s@140@01 $Snap.unit))
      (=
        ($PSF.lookup_one (as sm@139@01  $PSF<one>) s@140@01)
        ($PSF.lookup_one ($SortWrappers.$SnapTo$PSF<one> ($Snap.second $t@94@01)) s@140@01))))
  :pattern (($PSF.lookup_one (as sm@139@01  $PSF<one>) s@140@01))
  :pattern (($PSF.lookup_one ($SortWrappers.$SnapTo$PSF<one> ($Snap.second $t@94@01)) s@140@01))
  :qid |qp.psmValDef88|)))
(assert (forall ((s@140@01 $Snap)) (!
  (=>
    (ite
      (and
        (img@99@01 ($SortWrappers.$SnapTo$Ref s@140@01))
        (Set_in (inv@98@01 ($SortWrappers.$SnapTo$Ref s@140@01)) as@90@01))
      (<
        $Perm.No
        (-
          (- $Perm.Write (pTaken@116@01 ($SortWrappers.$SnapTo$Ref s@140@01)))
          (pTaken@133@01 ($SortWrappers.$SnapTo$Ref s@140@01))))
      false)
    (and
      (not (= s@140@01 $Snap.unit))
      (=
        ($PSF.lookup_one (as sm@139@01  $PSF<one>) s@140@01)
        ($PSF.lookup_one ($SortWrappers.$SnapTo$PSF<one> ($Snap.first $t@94@01)) s@140@01))))
  :pattern (($PSF.lookup_one (as sm@139@01  $PSF<one>) s@140@01))
  :pattern (($PSF.lookup_one ($SortWrappers.$SnapTo$PSF<one> ($Snap.first $t@94@01)) s@140@01))
  :qid |qp.psmValDef89|)))
(assert (forall ((s@140@01 $Snap)) (!
  (and
    ($PSF.loc_one ($PSF.lookup_one (as sm@119@01  $PSF<one>) s@140@01) s@140@01)
    ($PSF.loc_one ($PSF.lookup_one ($SortWrappers.$SnapTo$PSF<one> ($Snap.second $t@94@01)) s@140@01) s@140@01)
    ($PSF.loc_one ($PSF.lookup_one ($SortWrappers.$SnapTo$PSF<one> ($Snap.first $t@94@01)) s@140@01) s@140@01))
  :pattern (($PSF.lookup_one (as sm@139@01  $PSF<one>) s@140@01))
  :qid |qp.psmResTrgDef90|)))
; Check receiver injectivity
(push) ; 4
(assert (not (forall ((a1@136@01 $Ref) (a2@136@01 $Ref)) (!
  (=>
    (and
      (and
        (Set_in a1@136@01 as@90@01)
        ($PSF.loc_one ($PSF.lookup_one (as sm@139@01  $PSF<one>) ($SortWrappers.$RefTo$Snap a1@136@01)) ($SortWrappers.$RefTo$Snap a1@136@01)))
      (and
        (Set_in a2@136@01 as@90@01)
        ($PSF.loc_one ($PSF.lookup_one (as sm@139@01  $PSF<one>) ($SortWrappers.$RefTo$Snap a2@136@01)) ($SortWrappers.$RefTo$Snap a2@136@01)))
      (= a1@136@01 a2@136@01))
    (= a1@136@01 a2@136@01))
  
  :qid |one-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((a@136@01 $Ref)) (!
  (=>
    (Set_in a@136@01 as@90@01)
    (and (= (inv@137@01 a@136@01) a@136@01) (img@138@01 a@136@01)))
  :pattern ((Set_in a@136@01 as@90@01))
  :pattern ((inv@137@01 a@136@01))
  :pattern ((img@138@01 a@136@01))
  :qid |one-invOfFct|)))
(assert (forall ((a $Ref)) (!
  (=> (and (img@138@01 a) (Set_in (inv@137@01 a) as@90@01)) (= (inv@137@01 a) a))
  :pattern ((inv@137@01 a))
  :qid |one-fctOfInv|)))
(assert (forall ((a $Ref)) (!
  (=>
    (Set_in (inv@137@01 a) as@90@01)
    ($PSF.loc_one ($PSF.lookup_one (as sm@139@01  $PSF<one>) ($SortWrappers.$RefTo$Snap a)) ($SortWrappers.$RefTo$Snap a)))
  :pattern ((inv@137@01 a))
  :qid |quant-u-9948|)))
(push) ; 4
(assert (not (forall ((a $Ref)) (!
  (=>
    (and (Set_in (inv@137@01 a) as@90@01) (img@138@01 a) (= a (inv@137@01 a)))
    (>
      (+
        (+
          (ite
            (and (img@104@01 a) (Set_in (inv@103@01 a) bs@91@01))
            (- (- $Perm.Write (pTaken@123@01 a)) (pTaken@134@01 a))
            $Perm.No)
          (ite
            (and (img@99@01 a) (Set_in (inv@98@01 a) as@90@01))
            (- (- $Perm.Write (pTaken@116@01 a)) (pTaken@133@01 a))
            $Perm.No))
        (ite (= a a1@92@01) $Perm.Write $Perm.No))
      $Perm.No))
  
  :qid |quant-u-9949|))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(declare-const sm@141@01 $PSF<one>)
(declare-const s@142@01 $Snap)
; Definitional axioms for snapshot map domain
(assert (forall ((s@142@01 $Snap)) (!
  (and
    (=>
      (Set_in s@142@01 ($PSF.domain_one (as sm@141@01  $PSF<one>)))
      (and
        (Set_in (inv@137@01 ($SortWrappers.$SnapTo$Ref s@142@01)) as@90@01)
        (img@138@01 ($SortWrappers.$SnapTo$Ref s@142@01))))
    (=>
      (and
        (Set_in (inv@137@01 ($SortWrappers.$SnapTo$Ref s@142@01)) as@90@01)
        (img@138@01 ($SortWrappers.$SnapTo$Ref s@142@01)))
      (Set_in s@142@01 ($PSF.domain_one (as sm@141@01  $PSF<one>)))))
  :pattern ((Set_in s@142@01 ($PSF.domain_one (as sm@141@01  $PSF<one>))))
  :qid |qp.psmDomDef95|)))
; Definitional axioms for snapshot map values
(assert (forall ((s@142@01 $Snap)) (!
  (=>
    (and
      (and
        (Set_in (inv@137@01 ($SortWrappers.$SnapTo$Ref s@142@01)) as@90@01)
        (img@138@01 ($SortWrappers.$SnapTo$Ref s@142@01)))
      (= ($SortWrappers.$SnapTo$Ref s@142@01) a1@92@01))
    (and
      (not (= s@142@01 $Snap.unit))
      (=
        ($PSF.lookup_one (as sm@141@01  $PSF<one>) s@142@01)
        ($PSF.lookup_one (as sm@119@01  $PSF<one>) s@142@01))))
  :pattern (($PSF.lookup_one (as sm@141@01  $PSF<one>) s@142@01))
  :pattern (($PSF.lookup_one (as sm@119@01  $PSF<one>) s@142@01))
  :qid |qp.psmValDef91|)))
(assert (forall ((s@142@01 $Snap)) (!
  (=>
    (and
      (and
        (Set_in (inv@137@01 ($SortWrappers.$SnapTo$Ref s@142@01)) as@90@01)
        (img@138@01 ($SortWrappers.$SnapTo$Ref s@142@01)))
      (ite
        (and
          (img@104@01 ($SortWrappers.$SnapTo$Ref s@142@01))
          (Set_in (inv@103@01 ($SortWrappers.$SnapTo$Ref s@142@01)) bs@91@01))
        (<
          $Perm.No
          (-
            (- $Perm.Write (pTaken@123@01 ($SortWrappers.$SnapTo$Ref s@142@01)))
            (pTaken@134@01 ($SortWrappers.$SnapTo$Ref s@142@01))))
        false))
    (and
      (not (= s@142@01 $Snap.unit))
      (=
        ($PSF.lookup_one (as sm@141@01  $PSF<one>) s@142@01)
        ($PSF.lookup_one ($SortWrappers.$SnapTo$PSF<one> ($Snap.second $t@94@01)) s@142@01))))
  :pattern (($PSF.lookup_one (as sm@141@01  $PSF<one>) s@142@01))
  :pattern (($PSF.lookup_one ($SortWrappers.$SnapTo$PSF<one> ($Snap.second $t@94@01)) s@142@01))
  :qid |qp.psmValDef92|)))
(assert (forall ((s@142@01 $Snap)) (!
  (=>
    (and
      (and
        (Set_in (inv@137@01 ($SortWrappers.$SnapTo$Ref s@142@01)) as@90@01)
        (img@138@01 ($SortWrappers.$SnapTo$Ref s@142@01)))
      (ite
        (and
          (img@99@01 ($SortWrappers.$SnapTo$Ref s@142@01))
          (Set_in (inv@98@01 ($SortWrappers.$SnapTo$Ref s@142@01)) as@90@01))
        (<
          $Perm.No
          (-
            (- $Perm.Write (pTaken@116@01 ($SortWrappers.$SnapTo$Ref s@142@01)))
            (pTaken@133@01 ($SortWrappers.$SnapTo$Ref s@142@01))))
        false))
    (and
      (not (= s@142@01 $Snap.unit))
      (=
        ($PSF.lookup_one (as sm@141@01  $PSF<one>) s@142@01)
        ($PSF.lookup_one ($SortWrappers.$SnapTo$PSF<one> ($Snap.first $t@94@01)) s@142@01))))
  :pattern (($PSF.lookup_one (as sm@141@01  $PSF<one>) s@142@01))
  :pattern (($PSF.lookup_one ($SortWrappers.$SnapTo$PSF<one> ($Snap.first $t@94@01)) s@142@01))
  :qid |qp.psmValDef93|)))
(assert (forall ((s@142@01 $Snap)) (!
  (and
    ($PSF.loc_one ($PSF.lookup_one (as sm@119@01  $PSF<one>) s@142@01) s@142@01)
    ($PSF.loc_one ($PSF.lookup_one ($SortWrappers.$SnapTo$PSF<one> ($Snap.second $t@94@01)) s@142@01) s@142@01)
    ($PSF.loc_one ($PSF.lookup_one ($SortWrappers.$SnapTo$PSF<one> ($Snap.first $t@94@01)) s@142@01) s@142@01))
  :pattern (($PSF.lookup_one (as sm@141@01  $PSF<one>) s@142@01))
  :qid |qp.psmResTrgDef94|)))
(assert (foo_ones%precondition ($SortWrappers.$PSF<one>To$Snap (as sm@141@01  $PSF<one>)) as@90@01))
(pop) ; 3
; Joined path conditions
(assert (forall ((s@140@01 $Snap)) (!
  (=>
    (= ($SortWrappers.$SnapTo$Ref s@140@01) a1@92@01)
    (and
      (not (= s@140@01 $Snap.unit))
      (=
        ($PSF.lookup_one (as sm@139@01  $PSF<one>) s@140@01)
        ($PSF.lookup_one (as sm@119@01  $PSF<one>) s@140@01))))
  :pattern (($PSF.lookup_one (as sm@139@01  $PSF<one>) s@140@01))
  :pattern (($PSF.lookup_one (as sm@119@01  $PSF<one>) s@140@01))
  :qid |qp.psmValDef87|)))
(assert (forall ((s@140@01 $Snap)) (!
  (=>
    (ite
      (and
        (img@104@01 ($SortWrappers.$SnapTo$Ref s@140@01))
        (Set_in (inv@103@01 ($SortWrappers.$SnapTo$Ref s@140@01)) bs@91@01))
      (<
        $Perm.No
        (-
          (- $Perm.Write (pTaken@123@01 ($SortWrappers.$SnapTo$Ref s@140@01)))
          (pTaken@134@01 ($SortWrappers.$SnapTo$Ref s@140@01))))
      false)
    (and
      (not (= s@140@01 $Snap.unit))
      (=
        ($PSF.lookup_one (as sm@139@01  $PSF<one>) s@140@01)
        ($PSF.lookup_one ($SortWrappers.$SnapTo$PSF<one> ($Snap.second $t@94@01)) s@140@01))))
  :pattern (($PSF.lookup_one (as sm@139@01  $PSF<one>) s@140@01))
  :pattern (($PSF.lookup_one ($SortWrappers.$SnapTo$PSF<one> ($Snap.second $t@94@01)) s@140@01))
  :qid |qp.psmValDef88|)))
(assert (forall ((s@140@01 $Snap)) (!
  (=>
    (ite
      (and
        (img@99@01 ($SortWrappers.$SnapTo$Ref s@140@01))
        (Set_in (inv@98@01 ($SortWrappers.$SnapTo$Ref s@140@01)) as@90@01))
      (<
        $Perm.No
        (-
          (- $Perm.Write (pTaken@116@01 ($SortWrappers.$SnapTo$Ref s@140@01)))
          (pTaken@133@01 ($SortWrappers.$SnapTo$Ref s@140@01))))
      false)
    (and
      (not (= s@140@01 $Snap.unit))
      (=
        ($PSF.lookup_one (as sm@139@01  $PSF<one>) s@140@01)
        ($PSF.lookup_one ($SortWrappers.$SnapTo$PSF<one> ($Snap.first $t@94@01)) s@140@01))))
  :pattern (($PSF.lookup_one (as sm@139@01  $PSF<one>) s@140@01))
  :pattern (($PSF.lookup_one ($SortWrappers.$SnapTo$PSF<one> ($Snap.first $t@94@01)) s@140@01))
  :qid |qp.psmValDef89|)))
(assert (forall ((s@140@01 $Snap)) (!
  (and
    ($PSF.loc_one ($PSF.lookup_one (as sm@119@01  $PSF<one>) s@140@01) s@140@01)
    ($PSF.loc_one ($PSF.lookup_one ($SortWrappers.$SnapTo$PSF<one> ($Snap.second $t@94@01)) s@140@01) s@140@01)
    ($PSF.loc_one ($PSF.lookup_one ($SortWrappers.$SnapTo$PSF<one> ($Snap.first $t@94@01)) s@140@01) s@140@01))
  :pattern (($PSF.lookup_one (as sm@139@01  $PSF<one>) s@140@01))
  :qid |qp.psmResTrgDef90|)))
(assert (forall ((a@136@01 $Ref)) (!
  (=>
    (Set_in a@136@01 as@90@01)
    (and (= (inv@137@01 a@136@01) a@136@01) (img@138@01 a@136@01)))
  :pattern ((Set_in a@136@01 as@90@01))
  :pattern ((inv@137@01 a@136@01))
  :pattern ((img@138@01 a@136@01))
  :qid |one-invOfFct|)))
(assert (forall ((a $Ref)) (!
  (=> (and (img@138@01 a) (Set_in (inv@137@01 a) as@90@01)) (= (inv@137@01 a) a))
  :pattern ((inv@137@01 a))
  :qid |one-fctOfInv|)))
(assert (forall ((s@142@01 $Snap)) (!
  (and
    (=>
      (Set_in s@142@01 ($PSF.domain_one (as sm@141@01  $PSF<one>)))
      (and
        (Set_in (inv@137@01 ($SortWrappers.$SnapTo$Ref s@142@01)) as@90@01)
        (img@138@01 ($SortWrappers.$SnapTo$Ref s@142@01))))
    (=>
      (and
        (Set_in (inv@137@01 ($SortWrappers.$SnapTo$Ref s@142@01)) as@90@01)
        (img@138@01 ($SortWrappers.$SnapTo$Ref s@142@01)))
      (Set_in s@142@01 ($PSF.domain_one (as sm@141@01  $PSF<one>)))))
  :pattern ((Set_in s@142@01 ($PSF.domain_one (as sm@141@01  $PSF<one>))))
  :qid |qp.psmDomDef95|)))
(assert (forall ((s@142@01 $Snap)) (!
  (=>
    (and
      (and
        (Set_in (inv@137@01 ($SortWrappers.$SnapTo$Ref s@142@01)) as@90@01)
        (img@138@01 ($SortWrappers.$SnapTo$Ref s@142@01)))
      (= ($SortWrappers.$SnapTo$Ref s@142@01) a1@92@01))
    (and
      (not (= s@142@01 $Snap.unit))
      (=
        ($PSF.lookup_one (as sm@141@01  $PSF<one>) s@142@01)
        ($PSF.lookup_one (as sm@119@01  $PSF<one>) s@142@01))))
  :pattern (($PSF.lookup_one (as sm@141@01  $PSF<one>) s@142@01))
  :pattern (($PSF.lookup_one (as sm@119@01  $PSF<one>) s@142@01))
  :qid |qp.psmValDef91|)))
(assert (forall ((s@142@01 $Snap)) (!
  (=>
    (and
      (and
        (Set_in (inv@137@01 ($SortWrappers.$SnapTo$Ref s@142@01)) as@90@01)
        (img@138@01 ($SortWrappers.$SnapTo$Ref s@142@01)))
      (ite
        (and
          (img@104@01 ($SortWrappers.$SnapTo$Ref s@142@01))
          (Set_in (inv@103@01 ($SortWrappers.$SnapTo$Ref s@142@01)) bs@91@01))
        (<
          $Perm.No
          (-
            (- $Perm.Write (pTaken@123@01 ($SortWrappers.$SnapTo$Ref s@142@01)))
            (pTaken@134@01 ($SortWrappers.$SnapTo$Ref s@142@01))))
        false))
    (and
      (not (= s@142@01 $Snap.unit))
      (=
        ($PSF.lookup_one (as sm@141@01  $PSF<one>) s@142@01)
        ($PSF.lookup_one ($SortWrappers.$SnapTo$PSF<one> ($Snap.second $t@94@01)) s@142@01))))
  :pattern (($PSF.lookup_one (as sm@141@01  $PSF<one>) s@142@01))
  :pattern (($PSF.lookup_one ($SortWrappers.$SnapTo$PSF<one> ($Snap.second $t@94@01)) s@142@01))
  :qid |qp.psmValDef92|)))
(assert (forall ((s@142@01 $Snap)) (!
  (=>
    (and
      (and
        (Set_in (inv@137@01 ($SortWrappers.$SnapTo$Ref s@142@01)) as@90@01)
        (img@138@01 ($SortWrappers.$SnapTo$Ref s@142@01)))
      (ite
        (and
          (img@99@01 ($SortWrappers.$SnapTo$Ref s@142@01))
          (Set_in (inv@98@01 ($SortWrappers.$SnapTo$Ref s@142@01)) as@90@01))
        (<
          $Perm.No
          (-
            (- $Perm.Write (pTaken@116@01 ($SortWrappers.$SnapTo$Ref s@142@01)))
            (pTaken@133@01 ($SortWrappers.$SnapTo$Ref s@142@01))))
        false))
    (and
      (not (= s@142@01 $Snap.unit))
      (=
        ($PSF.lookup_one (as sm@141@01  $PSF<one>) s@142@01)
        ($PSF.lookup_one ($SortWrappers.$SnapTo$PSF<one> ($Snap.first $t@94@01)) s@142@01))))
  :pattern (($PSF.lookup_one (as sm@141@01  $PSF<one>) s@142@01))
  :pattern (($PSF.lookup_one ($SortWrappers.$SnapTo$PSF<one> ($Snap.first $t@94@01)) s@142@01))
  :qid |qp.psmValDef93|)))
(assert (forall ((s@142@01 $Snap)) (!
  (and
    ($PSF.loc_one ($PSF.lookup_one (as sm@119@01  $PSF<one>) s@142@01) s@142@01)
    ($PSF.loc_one ($PSF.lookup_one ($SortWrappers.$SnapTo$PSF<one> ($Snap.second $t@94@01)) s@142@01) s@142@01)
    ($PSF.loc_one ($PSF.lookup_one ($SortWrappers.$SnapTo$PSF<one> ($Snap.first $t@94@01)) s@142@01) s@142@01))
  :pattern (($PSF.lookup_one (as sm@141@01  $PSF<one>) s@142@01))
  :qid |qp.psmResTrgDef94|)))
(assert (and
  (forall ((a $Ref)) (!
    (=>
      (Set_in (inv@137@01 a) as@90@01)
      ($PSF.loc_one ($PSF.lookup_one (as sm@139@01  $PSF<one>) ($SortWrappers.$RefTo$Snap a)) ($SortWrappers.$RefTo$Snap a)))
    :pattern ((inv@137@01 a))
    :qid |quant-u-9948|))
  (foo_ones%precondition ($SortWrappers.$PSF<one>To$Snap (as sm@141@01  $PSF<one>)) as@90@01)))
(push) ; 3
(assert (not (=
  (foo_ones ($SortWrappers.$PSF<one>To$Snap (as sm@141@01  $PSF<one>)) as@90@01)
  0)))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(assert (=
  (foo_ones ($SortWrappers.$PSF<one>To$Snap (as sm@141@01  $PSF<one>)) as@90@01)
  0))
(pop) ; 2
(pop) ; 1
; ---------- test_twos ----------
(declare-const as@143@01 Set<$Ref>)
(declare-const is@144@01 Set<Int>)
(declare-const as@145@01 Set<$Ref>)
(declare-const is@146@01 Set<Int>)
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
; inhale (forall a: Ref, i: Int ::
;     { two(a, i) }
;     (a in as) && (i in is) ==> acc(two(a, i), write))
(declare-const a@147@01 $Ref)
(declare-const i@148@01 Int)
(push) ; 3
; [eval] (a in as) && (i in is)
; [eval] (a in as)
(push) ; 4
; [then-branch: 0 | !(a@147@01 in as@145@01) | live]
; [else-branch: 0 | a@147@01 in as@145@01 | live]
(push) ; 5
; [then-branch: 0 | !(a@147@01 in as@145@01)]
(assert (not (Set_in a@147@01 as@145@01)))
(pop) ; 5
(push) ; 5
; [else-branch: 0 | a@147@01 in as@145@01]
(assert (Set_in a@147@01 as@145@01))
; [eval] (i in is)
(pop) ; 5
(pop) ; 4
; Joined path conditions
; Joined path conditions
(assert (or (Set_in a@147@01 as@145@01) (not (Set_in a@147@01 as@145@01))))
(assert (and (Set_in a@147@01 as@145@01) (Set_in i@148@01 is@146@01)))
(declare-const sm@149@01 $PSF<two>)
(declare-const s@150@01 $Snap)
; Definitional axioms for snapshot map values
(pop) ; 3
(declare-const $t@151@01 $PSF<two>)
(declare-fun inv@152@01 ($Ref Int) $Ref)
(declare-fun img@153@01 ($Ref Int) Bool)
(declare-fun inv@154@01 ($Ref Int) Int)
(declare-fun img@155@01 ($Ref Int) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
(assert (forall ((a@147@01 $Ref) (i@148@01 Int)) (!
  (=>
    (and (Set_in a@147@01 as@145@01) (Set_in i@148@01 is@146@01))
    (or (Set_in a@147@01 as@145@01) (not (Set_in a@147@01 as@145@01))))
  :pattern (($PSF.loc_two ($PSF.lookup_two $t@151@01 ($Snap.combine
    ($SortWrappers.$RefTo$Snap a@147@01)
    ($SortWrappers.IntTo$Snap i@148@01))) ($Snap.combine
    ($SortWrappers.$RefTo$Snap a@147@01)
    ($SortWrappers.IntTo$Snap i@148@01))))
  :qid |two-aux|)))
; Check receiver injectivity
(push) ; 3
(assert (not (forall ((a1@147@01 $Ref) (i1@148@01 Int) (a2@147@01 $Ref) (i2@148@01 Int)) (!
  (=>
    (and
      (and (Set_in a1@147@01 as@145@01) (Set_in i1@148@01 is@146@01))
      (and (Set_in a2@147@01 as@145@01) (Set_in i2@148@01 is@146@01))
      (and (= a1@147@01 a2@147@01) (= i1@148@01 i2@148@01)))
    (and (= a1@147@01 a2@147@01) (= i1@148@01 i2@148@01)))
  
  :qid |two-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((a@147@01 $Ref) (i@148@01 Int)) (!
  (=>
    (and (Set_in a@147@01 as@145@01) (Set_in i@148@01 is@146@01))
    (and
      (and
        (= (inv@152@01 a@147@01 i@148@01) a@147@01)
        (= (inv@154@01 a@147@01 i@148@01) i@148@01))
      (and (img@153@01 a@147@01 i@148@01) (img@155@01 a@147@01 i@148@01))))
  :pattern (($PSF.loc_two ($PSF.lookup_two $t@151@01 ($Snap.combine
    ($SortWrappers.$RefTo$Snap a@147@01)
    ($SortWrappers.IntTo$Snap i@148@01))) ($Snap.combine
    ($SortWrappers.$RefTo$Snap a@147@01)
    ($SortWrappers.IntTo$Snap i@148@01))))
  :qid |quant-u-9951|)))
(assert (forall ((a $Ref) (i Int)) (!
  (=>
    (and
      (and (img@153@01 a i) (img@155@01 a i))
      (and
        (Set_in (inv@152@01 a i) as@145@01)
        (Set_in (inv@154@01 a i) is@146@01)))
    (and (= (inv@152@01 a i) a) (= (inv@154@01 a i) i)))
  :pattern ((inv@152@01 a i))
  :pattern ((inv@154@01 a i))
  :qid |two-fctOfInv|)))
; Permissions are non-negative
(declare-const sm@156@01 $PSF<two>)
(declare-const s@157@01 $Snap)
; Definitional axioms for snapshot map values
(assert (forall ((s@157@01 $Snap)) (!
  (=>
    (and
      (and
        (img@153@01 ($SortWrappers.$SnapTo$Ref ($Snap.first s@157@01)) ($SortWrappers.$SnapToInt ($Snap.second s@157@01)))
        (img@155@01 ($SortWrappers.$SnapTo$Ref ($Snap.first s@157@01)) ($SortWrappers.$SnapToInt ($Snap.second s@157@01))))
      (and
        (Set_in (inv@152@01 ($SortWrappers.$SnapTo$Ref ($Snap.first s@157@01)) ($SortWrappers.$SnapToInt ($Snap.second s@157@01))) as@145@01)
        (Set_in (inv@154@01 ($SortWrappers.$SnapTo$Ref ($Snap.first s@157@01)) ($SortWrappers.$SnapToInt ($Snap.second s@157@01))) is@146@01)))
    (and
      (not (= s@157@01 $Snap.unit))
      (=
        ($PSF.lookup_two (as sm@156@01  $PSF<two>) s@157@01)
        ($PSF.lookup_two $t@151@01 s@157@01))))
  :pattern (($PSF.lookup_two (as sm@156@01  $PSF<two>) s@157@01))
  :pattern (($PSF.lookup_two $t@151@01 s@157@01))
  :qid |qp.psmValDef97|)))
(assert (forall ((s@157@01 $Snap)) (!
  ($PSF.loc_two ($PSF.lookup_two $t@151@01 s@157@01) s@157@01)
  :pattern (($PSF.lookup_two (as sm@156@01  $PSF<two>) s@157@01))
  :qid |qp.psmResTrgDef98|)))
(assert (forall ((a $Ref) (i Int)) (!
  (=>
    (and (Set_in (inv@152@01 a i) as@145@01) (Set_in (inv@154@01 a i) is@146@01))
    ($PSF.loc_two ($PSF.lookup_two (as sm@156@01  $PSF<two>) ($Snap.combine
      ($SortWrappers.$RefTo$Snap a)
      ($SortWrappers.IntTo$Snap i))) ($Snap.combine
      ($SortWrappers.$RefTo$Snap a)
      ($SortWrappers.IntTo$Snap i))))
  :pattern ((inv@152@01 a i) (inv@154@01 a i))
  :qid |quant-u-9952|)))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale foo_twos(as, is) == 0
(declare-const $t@158@01 $Snap)
(assert (= $t@158@01 $Snap.unit))
; [eval] foo_twos(as, is) == 0
; [eval] foo_twos(as, is)
(set-option :timeout 0)
(push) ; 3
(declare-const a@159@01 $Ref)
(declare-const i@160@01 Int)
(push) ; 4
; [eval] (a in as) && (i in is)
; [eval] (a in as)
(push) ; 5
; [then-branch: 1 | !(a@159@01 in as@145@01) | live]
; [else-branch: 1 | a@159@01 in as@145@01 | live]
(push) ; 6
; [then-branch: 1 | !(a@159@01 in as@145@01)]
(assert (not (Set_in a@159@01 as@145@01)))
(pop) ; 6
(push) ; 6
; [else-branch: 1 | a@159@01 in as@145@01]
(assert (Set_in a@159@01 as@145@01))
; [eval] (i in is)
(pop) ; 6
(pop) ; 5
; Joined path conditions
; Joined path conditions
(assert (or (Set_in a@159@01 as@145@01) (not (Set_in a@159@01 as@145@01))))
(assert (and (Set_in a@159@01 as@145@01) (Set_in i@160@01 is@146@01)))
(pop) ; 4
(declare-fun inv@161@01 ($Ref Int) $Ref)
(declare-fun img@162@01 ($Ref Int) Bool)
(declare-fun inv@163@01 ($Ref Int) Int)
(declare-fun img@164@01 ($Ref Int) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
(assert (forall ((a@159@01 $Ref) (i@160@01 Int)) (!
  (=>
    (and (Set_in a@159@01 as@145@01) (Set_in i@160@01 is@146@01))
    (or (Set_in a@159@01 as@145@01) (not (Set_in a@159@01 as@145@01))))
  :pattern ((Set_in a@159@01 as@145@01) (Set_in i@160@01 is@146@01))
  :pattern ((Set_in a@159@01 as@145@01) (inv@161@01 a@159@01 i@160@01))
  :pattern ((Set_in a@159@01 as@145@01) (inv@163@01 a@159@01 i@160@01))
  :pattern ((Set_in a@159@01 as@145@01) (img@162@01 a@159@01 i@160@01))
  :pattern ((Set_in a@159@01 as@145@01) (img@164@01 a@159@01 i@160@01))
  :pattern ((Set_in i@160@01 is@146@01) (inv@161@01 a@159@01 i@160@01))
  :pattern ((Set_in i@160@01 is@146@01) (inv@163@01 a@159@01 i@160@01))
  :pattern ((Set_in i@160@01 is@146@01) (img@162@01 a@159@01 i@160@01))
  :pattern ((Set_in i@160@01 is@146@01) (img@164@01 a@159@01 i@160@01))
  :pattern ((inv@161@01 a@159@01 i@160@01))
  :pattern ((inv@163@01 a@159@01 i@160@01))
  :pattern ((img@162@01 a@159@01 i@160@01))
  :pattern ((img@164@01 a@159@01 i@160@01))
  :qid |two-aux|)))
; Definitional axioms for snapshot map domain
; Definitional axioms for snapshot map values
; Check receiver injectivity
(push) ; 4
(assert (not (forall ((a1@159@01 $Ref) (i1@160@01 Int) (a2@159@01 $Ref) (i2@160@01 Int)) (!
  (=>
    (and
      (and
        (and (Set_in a1@159@01 as@145@01) (Set_in i1@160@01 is@146@01))
        ($PSF.loc_two ($PSF.lookup_two (as sm@156@01  $PSF<two>) ($Snap.combine
          ($SortWrappers.$RefTo$Snap a1@159@01)
          ($SortWrappers.IntTo$Snap i1@160@01))) ($Snap.combine
          ($SortWrappers.$RefTo$Snap a1@159@01)
          ($SortWrappers.IntTo$Snap i1@160@01))))
      (and
        (and (Set_in a2@159@01 as@145@01) (Set_in i2@160@01 is@146@01))
        ($PSF.loc_two ($PSF.lookup_two (as sm@156@01  $PSF<two>) ($Snap.combine
          ($SortWrappers.$RefTo$Snap a2@159@01)
          ($SortWrappers.IntTo$Snap i2@160@01))) ($Snap.combine
          ($SortWrappers.$RefTo$Snap a2@159@01)
          ($SortWrappers.IntTo$Snap i2@160@01))))
      (and (= a1@159@01 a2@159@01) (= i1@160@01 i2@160@01)))
    (and (= a1@159@01 a2@159@01) (= i1@160@01 i2@160@01)))
  
  :qid |two-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((a@159@01 $Ref) (i@160@01 Int)) (!
  (=>
    (and (Set_in a@159@01 as@145@01) (Set_in i@160@01 is@146@01))
    (and
      (and
        (= (inv@161@01 a@159@01 i@160@01) a@159@01)
        (= (inv@163@01 a@159@01 i@160@01) i@160@01))
      (and (img@162@01 a@159@01 i@160@01) (img@164@01 a@159@01 i@160@01))))
  :pattern ((Set_in a@159@01 as@145@01) (Set_in i@160@01 is@146@01))
  :pattern ((Set_in a@159@01 as@145@01) (inv@161@01 a@159@01 i@160@01))
  :pattern ((Set_in a@159@01 as@145@01) (inv@163@01 a@159@01 i@160@01))
  :pattern ((Set_in a@159@01 as@145@01) (img@162@01 a@159@01 i@160@01))
  :pattern ((Set_in a@159@01 as@145@01) (img@164@01 a@159@01 i@160@01))
  :pattern ((Set_in i@160@01 is@146@01) (inv@161@01 a@159@01 i@160@01))
  :pattern ((Set_in i@160@01 is@146@01) (inv@163@01 a@159@01 i@160@01))
  :pattern ((Set_in i@160@01 is@146@01) (img@162@01 a@159@01 i@160@01))
  :pattern ((Set_in i@160@01 is@146@01) (img@164@01 a@159@01 i@160@01))
  :pattern ((inv@161@01 a@159@01 i@160@01))
  :pattern ((inv@163@01 a@159@01 i@160@01))
  :pattern ((img@162@01 a@159@01 i@160@01))
  :pattern ((img@164@01 a@159@01 i@160@01))
  :qid |two-invOfFct|)))
(assert (forall ((a $Ref) (i Int)) (!
  (=>
    (and
      (and (img@162@01 a i) (img@164@01 a i))
      (and
        (Set_in (inv@161@01 a i) as@145@01)
        (Set_in (inv@163@01 a i) is@146@01)))
    (and (= (inv@161@01 a i) a) (= (inv@163@01 a i) i)))
  :pattern ((inv@161@01 a i))
  :pattern ((inv@163@01 a i))
  :qid |two-fctOfInv|)))
(assert (forall ((a $Ref) (i Int)) (!
  (=>
    (and (Set_in (inv@161@01 a i) as@145@01) (Set_in (inv@163@01 a i) is@146@01))
    ($PSF.loc_two ($PSF.lookup_two (as sm@156@01  $PSF<two>) ($Snap.combine
      ($SortWrappers.$RefTo$Snap a)
      ($SortWrappers.IntTo$Snap i))) ($Snap.combine
      ($SortWrappers.$RefTo$Snap a)
      ($SortWrappers.IntTo$Snap i))))
  :pattern ((inv@161@01 a i) (inv@163@01 a i))
  :qid |quant-u-9954|)))
(push) ; 4
(assert (not (forall ((a $Ref) (i Int)) (!
  (=>
    (and
      (and
        (Set_in (inv@161@01 a i) as@145@01)
        (Set_in (inv@163@01 a i) is@146@01))
      (and (img@162@01 a i) (img@164@01 a i))
      (and (= a (inv@161@01 a i)) (= i (inv@163@01 a i))))
    (>
      (ite
        (and
          (and (img@153@01 a i) (img@155@01 a i))
          (and
            (Set_in (inv@152@01 a i) as@145@01)
            (Set_in (inv@154@01 a i) is@146@01)))
        $Perm.Write
        $Perm.No)
      $Perm.No))
  
  :qid |quant-u-9955|))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(declare-const sm@165@01 $PSF<two>)
(declare-const s@166@01 $Snap)
; Definitional axioms for snapshot map domain
(assert (forall ((s@166@01 $Snap)) (!
  (and
    (=>
      (Set_in s@166@01 ($PSF.domain_two (as sm@165@01  $PSF<two>)))
      (and
        (and
          (Set_in (inv@161@01 ($SortWrappers.$SnapTo$Ref ($Snap.first s@166@01)) ($SortWrappers.$SnapToInt ($Snap.second s@166@01))) as@145@01)
          (Set_in (inv@163@01 ($SortWrappers.$SnapTo$Ref ($Snap.first s@166@01)) ($SortWrappers.$SnapToInt ($Snap.second s@166@01))) is@146@01))
        (and
          (img@162@01 ($SortWrappers.$SnapTo$Ref ($Snap.first s@166@01)) ($SortWrappers.$SnapToInt ($Snap.second s@166@01)))
          (img@164@01 ($SortWrappers.$SnapTo$Ref ($Snap.first s@166@01)) ($SortWrappers.$SnapToInt ($Snap.second s@166@01))))))
    (=>
      (and
        (and
          (Set_in (inv@161@01 ($SortWrappers.$SnapTo$Ref ($Snap.first s@166@01)) ($SortWrappers.$SnapToInt ($Snap.second s@166@01))) as@145@01)
          (Set_in (inv@163@01 ($SortWrappers.$SnapTo$Ref ($Snap.first s@166@01)) ($SortWrappers.$SnapToInt ($Snap.second s@166@01))) is@146@01))
        (and
          (img@162@01 ($SortWrappers.$SnapTo$Ref ($Snap.first s@166@01)) ($SortWrappers.$SnapToInt ($Snap.second s@166@01)))
          (img@164@01 ($SortWrappers.$SnapTo$Ref ($Snap.first s@166@01)) ($SortWrappers.$SnapToInt ($Snap.second s@166@01)))))
      (Set_in s@166@01 ($PSF.domain_two (as sm@165@01  $PSF<two>)))))
  :pattern ((Set_in s@166@01 ($PSF.domain_two (as sm@165@01  $PSF<two>))))
  :qid |qp.psmDomDef101|)))
; Definitional axioms for snapshot map values
(assert (forall ((s@166@01 $Snap)) (!
  (=>
    (and
      (and
        (and
          (Set_in (inv@161@01 ($SortWrappers.$SnapTo$Ref ($Snap.first s@166@01)) ($SortWrappers.$SnapToInt ($Snap.second s@166@01))) as@145@01)
          (Set_in (inv@163@01 ($SortWrappers.$SnapTo$Ref ($Snap.first s@166@01)) ($SortWrappers.$SnapToInt ($Snap.second s@166@01))) is@146@01))
        (and
          (img@162@01 ($SortWrappers.$SnapTo$Ref ($Snap.first s@166@01)) ($SortWrappers.$SnapToInt ($Snap.second s@166@01)))
          (img@164@01 ($SortWrappers.$SnapTo$Ref ($Snap.first s@166@01)) ($SortWrappers.$SnapToInt ($Snap.second s@166@01)))))
      (and
        (and
          (img@153@01 ($SortWrappers.$SnapTo$Ref ($Snap.first s@166@01)) ($SortWrappers.$SnapToInt ($Snap.second s@166@01)))
          (img@155@01 ($SortWrappers.$SnapTo$Ref ($Snap.first s@166@01)) ($SortWrappers.$SnapToInt ($Snap.second s@166@01))))
        (and
          (Set_in (inv@152@01 ($SortWrappers.$SnapTo$Ref ($Snap.first s@166@01)) ($SortWrappers.$SnapToInt ($Snap.second s@166@01))) as@145@01)
          (Set_in (inv@154@01 ($SortWrappers.$SnapTo$Ref ($Snap.first s@166@01)) ($SortWrappers.$SnapToInt ($Snap.second s@166@01))) is@146@01))))
    (and
      (not (= s@166@01 $Snap.unit))
      (=
        ($PSF.lookup_two (as sm@165@01  $PSF<two>) s@166@01)
        ($PSF.lookup_two $t@151@01 s@166@01))))
  :pattern (($PSF.lookup_two (as sm@165@01  $PSF<two>) s@166@01))
  :pattern (($PSF.lookup_two $t@151@01 s@166@01))
  :qid |qp.psmValDef99|)))
(assert (forall ((s@166@01 $Snap)) (!
  ($PSF.loc_two ($PSF.lookup_two $t@151@01 s@166@01) s@166@01)
  :pattern (($PSF.lookup_two (as sm@165@01  $PSF<two>) s@166@01))
  :qid |qp.psmResTrgDef100|)))
(assert (foo_twos%precondition ($SortWrappers.$PSF<two>To$Snap (as sm@165@01  $PSF<two>)) as@145@01 is@146@01))
(pop) ; 3
; Joined path conditions
(assert (forall ((a@159@01 $Ref) (i@160@01 Int)) (!
  (=>
    (and (Set_in a@159@01 as@145@01) (Set_in i@160@01 is@146@01))
    (and
      (and
        (= (inv@161@01 a@159@01 i@160@01) a@159@01)
        (= (inv@163@01 a@159@01 i@160@01) i@160@01))
      (and (img@162@01 a@159@01 i@160@01) (img@164@01 a@159@01 i@160@01))))
  :pattern ((Set_in a@159@01 as@145@01) (Set_in i@160@01 is@146@01))
  :pattern ((Set_in a@159@01 as@145@01) (inv@161@01 a@159@01 i@160@01))
  :pattern ((Set_in a@159@01 as@145@01) (inv@163@01 a@159@01 i@160@01))
  :pattern ((Set_in a@159@01 as@145@01) (img@162@01 a@159@01 i@160@01))
  :pattern ((Set_in a@159@01 as@145@01) (img@164@01 a@159@01 i@160@01))
  :pattern ((Set_in i@160@01 is@146@01) (inv@161@01 a@159@01 i@160@01))
  :pattern ((Set_in i@160@01 is@146@01) (inv@163@01 a@159@01 i@160@01))
  :pattern ((Set_in i@160@01 is@146@01) (img@162@01 a@159@01 i@160@01))
  :pattern ((Set_in i@160@01 is@146@01) (img@164@01 a@159@01 i@160@01))
  :pattern ((inv@161@01 a@159@01 i@160@01))
  :pattern ((inv@163@01 a@159@01 i@160@01))
  :pattern ((img@162@01 a@159@01 i@160@01))
  :pattern ((img@164@01 a@159@01 i@160@01))
  :qid |two-invOfFct|)))
(assert (forall ((a $Ref) (i Int)) (!
  (=>
    (and
      (and (img@162@01 a i) (img@164@01 a i))
      (and
        (Set_in (inv@161@01 a i) as@145@01)
        (Set_in (inv@163@01 a i) is@146@01)))
    (and (= (inv@161@01 a i) a) (= (inv@163@01 a i) i)))
  :pattern ((inv@161@01 a i))
  :pattern ((inv@163@01 a i))
  :qid |two-fctOfInv|)))
(assert (forall ((s@166@01 $Snap)) (!
  (and
    (=>
      (Set_in s@166@01 ($PSF.domain_two (as sm@165@01  $PSF<two>)))
      (and
        (and
          (Set_in (inv@161@01 ($SortWrappers.$SnapTo$Ref ($Snap.first s@166@01)) ($SortWrappers.$SnapToInt ($Snap.second s@166@01))) as@145@01)
          (Set_in (inv@163@01 ($SortWrappers.$SnapTo$Ref ($Snap.first s@166@01)) ($SortWrappers.$SnapToInt ($Snap.second s@166@01))) is@146@01))
        (and
          (img@162@01 ($SortWrappers.$SnapTo$Ref ($Snap.first s@166@01)) ($SortWrappers.$SnapToInt ($Snap.second s@166@01)))
          (img@164@01 ($SortWrappers.$SnapTo$Ref ($Snap.first s@166@01)) ($SortWrappers.$SnapToInt ($Snap.second s@166@01))))))
    (=>
      (and
        (and
          (Set_in (inv@161@01 ($SortWrappers.$SnapTo$Ref ($Snap.first s@166@01)) ($SortWrappers.$SnapToInt ($Snap.second s@166@01))) as@145@01)
          (Set_in (inv@163@01 ($SortWrappers.$SnapTo$Ref ($Snap.first s@166@01)) ($SortWrappers.$SnapToInt ($Snap.second s@166@01))) is@146@01))
        (and
          (img@162@01 ($SortWrappers.$SnapTo$Ref ($Snap.first s@166@01)) ($SortWrappers.$SnapToInt ($Snap.second s@166@01)))
          (img@164@01 ($SortWrappers.$SnapTo$Ref ($Snap.first s@166@01)) ($SortWrappers.$SnapToInt ($Snap.second s@166@01)))))
      (Set_in s@166@01 ($PSF.domain_two (as sm@165@01  $PSF<two>)))))
  :pattern ((Set_in s@166@01 ($PSF.domain_two (as sm@165@01  $PSF<two>))))
  :qid |qp.psmDomDef101|)))
(assert (forall ((s@166@01 $Snap)) (!
  (=>
    (and
      (and
        (and
          (Set_in (inv@161@01 ($SortWrappers.$SnapTo$Ref ($Snap.first s@166@01)) ($SortWrappers.$SnapToInt ($Snap.second s@166@01))) as@145@01)
          (Set_in (inv@163@01 ($SortWrappers.$SnapTo$Ref ($Snap.first s@166@01)) ($SortWrappers.$SnapToInt ($Snap.second s@166@01))) is@146@01))
        (and
          (img@162@01 ($SortWrappers.$SnapTo$Ref ($Snap.first s@166@01)) ($SortWrappers.$SnapToInt ($Snap.second s@166@01)))
          (img@164@01 ($SortWrappers.$SnapTo$Ref ($Snap.first s@166@01)) ($SortWrappers.$SnapToInt ($Snap.second s@166@01)))))
      (and
        (and
          (img@153@01 ($SortWrappers.$SnapTo$Ref ($Snap.first s@166@01)) ($SortWrappers.$SnapToInt ($Snap.second s@166@01)))
          (img@155@01 ($SortWrappers.$SnapTo$Ref ($Snap.first s@166@01)) ($SortWrappers.$SnapToInt ($Snap.second s@166@01))))
        (and
          (Set_in (inv@152@01 ($SortWrappers.$SnapTo$Ref ($Snap.first s@166@01)) ($SortWrappers.$SnapToInt ($Snap.second s@166@01))) as@145@01)
          (Set_in (inv@154@01 ($SortWrappers.$SnapTo$Ref ($Snap.first s@166@01)) ($SortWrappers.$SnapToInt ($Snap.second s@166@01))) is@146@01))))
    (and
      (not (= s@166@01 $Snap.unit))
      (=
        ($PSF.lookup_two (as sm@165@01  $PSF<two>) s@166@01)
        ($PSF.lookup_two $t@151@01 s@166@01))))
  :pattern (($PSF.lookup_two (as sm@165@01  $PSF<two>) s@166@01))
  :pattern (($PSF.lookup_two $t@151@01 s@166@01))
  :qid |qp.psmValDef99|)))
(assert (forall ((s@166@01 $Snap)) (!
  ($PSF.loc_two ($PSF.lookup_two $t@151@01 s@166@01) s@166@01)
  :pattern (($PSF.lookup_two (as sm@165@01  $PSF<two>) s@166@01))
  :qid |qp.psmResTrgDef100|)))
(assert (and
  (forall ((a@159@01 $Ref) (i@160@01 Int)) (!
    (=>
      (and (Set_in a@159@01 as@145@01) (Set_in i@160@01 is@146@01))
      (or (Set_in a@159@01 as@145@01) (not (Set_in a@159@01 as@145@01))))
    :pattern ((Set_in a@159@01 as@145@01) (Set_in i@160@01 is@146@01))
    :pattern ((Set_in a@159@01 as@145@01) (inv@161@01 a@159@01 i@160@01))
    :pattern ((Set_in a@159@01 as@145@01) (inv@163@01 a@159@01 i@160@01))
    :pattern ((Set_in a@159@01 as@145@01) (img@162@01 a@159@01 i@160@01))
    :pattern ((Set_in a@159@01 as@145@01) (img@164@01 a@159@01 i@160@01))
    :pattern ((Set_in i@160@01 is@146@01) (inv@161@01 a@159@01 i@160@01))
    :pattern ((Set_in i@160@01 is@146@01) (inv@163@01 a@159@01 i@160@01))
    :pattern ((Set_in i@160@01 is@146@01) (img@162@01 a@159@01 i@160@01))
    :pattern ((Set_in i@160@01 is@146@01) (img@164@01 a@159@01 i@160@01))
    :pattern ((inv@161@01 a@159@01 i@160@01))
    :pattern ((inv@163@01 a@159@01 i@160@01))
    :pattern ((img@162@01 a@159@01 i@160@01))
    :pattern ((img@164@01 a@159@01 i@160@01))
    :qid |two-aux|))
  (forall ((a $Ref) (i Int)) (!
    (=>
      (and
        (Set_in (inv@161@01 a i) as@145@01)
        (Set_in (inv@163@01 a i) is@146@01))
      ($PSF.loc_two ($PSF.lookup_two (as sm@156@01  $PSF<two>) ($Snap.combine
        ($SortWrappers.$RefTo$Snap a)
        ($SortWrappers.IntTo$Snap i))) ($Snap.combine
        ($SortWrappers.$RefTo$Snap a)
        ($SortWrappers.IntTo$Snap i))))
    :pattern ((inv@161@01 a i) (inv@163@01 a i))
    :qid |quant-u-9954|))
  (foo_twos%precondition ($SortWrappers.$PSF<two>To$Snap (as sm@165@01  $PSF<two>)) as@145@01 is@146@01)))
(assert (=
  (foo_twos ($SortWrappers.$PSF<two>To$Snap (as sm@165@01  $PSF<two>)) as@145@01 is@146@01)
  0))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; exhale foo_twos(as, is) == 0
; [eval] foo_twos(as, is) == 0
; [eval] foo_twos(as, is)
(set-option :timeout 0)
(push) ; 3
(declare-const a@167@01 $Ref)
(declare-const i@168@01 Int)
(push) ; 4
; [eval] (a in as) && (i in is)
; [eval] (a in as)
(push) ; 5
; [then-branch: 2 | !(a@167@01 in as@145@01) | live]
; [else-branch: 2 | a@167@01 in as@145@01 | live]
(push) ; 6
; [then-branch: 2 | !(a@167@01 in as@145@01)]
(assert (not (Set_in a@167@01 as@145@01)))
(pop) ; 6
(push) ; 6
; [else-branch: 2 | a@167@01 in as@145@01]
(assert (Set_in a@167@01 as@145@01))
; [eval] (i in is)
(pop) ; 6
(pop) ; 5
; Joined path conditions
; Joined path conditions
(assert (or (Set_in a@167@01 as@145@01) (not (Set_in a@167@01 as@145@01))))
(assert (and (Set_in a@167@01 as@145@01) (Set_in i@168@01 is@146@01)))
(pop) ; 4
(declare-fun inv@169@01 ($Ref Int) $Ref)
(declare-fun img@170@01 ($Ref Int) Bool)
(declare-fun inv@171@01 ($Ref Int) Int)
(declare-fun img@172@01 ($Ref Int) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
(assert (forall ((a@167@01 $Ref) (i@168@01 Int)) (!
  (=>
    (and (Set_in a@167@01 as@145@01) (Set_in i@168@01 is@146@01))
    (or (Set_in a@167@01 as@145@01) (not (Set_in a@167@01 as@145@01))))
  :pattern ((Set_in a@167@01 as@145@01) (Set_in i@168@01 is@146@01))
  :pattern ((Set_in a@167@01 as@145@01) (inv@169@01 a@167@01 i@168@01))
  :pattern ((Set_in a@167@01 as@145@01) (inv@171@01 a@167@01 i@168@01))
  :pattern ((Set_in a@167@01 as@145@01) (img@170@01 a@167@01 i@168@01))
  :pattern ((Set_in a@167@01 as@145@01) (img@172@01 a@167@01 i@168@01))
  :pattern ((Set_in i@168@01 is@146@01) (inv@169@01 a@167@01 i@168@01))
  :pattern ((Set_in i@168@01 is@146@01) (inv@171@01 a@167@01 i@168@01))
  :pattern ((Set_in i@168@01 is@146@01) (img@170@01 a@167@01 i@168@01))
  :pattern ((Set_in i@168@01 is@146@01) (img@172@01 a@167@01 i@168@01))
  :pattern ((inv@169@01 a@167@01 i@168@01))
  :pattern ((inv@171@01 a@167@01 i@168@01))
  :pattern ((img@170@01 a@167@01 i@168@01))
  :pattern ((img@172@01 a@167@01 i@168@01))
  :qid |two-aux|)))
(declare-const sm@173@01 $PSF<two>)
(declare-const s@174@01 $Snap)
; Definitional axioms for snapshot map domain
; Definitional axioms for snapshot map values
(assert (forall ((s@174@01 $Snap)) (!
  (=>
    (and
      (and
        (img@153@01 ($SortWrappers.$SnapTo$Ref ($Snap.first s@174@01)) ($SortWrappers.$SnapToInt ($Snap.second s@174@01)))
        (img@155@01 ($SortWrappers.$SnapTo$Ref ($Snap.first s@174@01)) ($SortWrappers.$SnapToInt ($Snap.second s@174@01))))
      (and
        (Set_in (inv@152@01 ($SortWrappers.$SnapTo$Ref ($Snap.first s@174@01)) ($SortWrappers.$SnapToInt ($Snap.second s@174@01))) as@145@01)
        (Set_in (inv@154@01 ($SortWrappers.$SnapTo$Ref ($Snap.first s@174@01)) ($SortWrappers.$SnapToInt ($Snap.second s@174@01))) is@146@01)))
    (and
      (not (= s@174@01 $Snap.unit))
      (=
        ($PSF.lookup_two (as sm@173@01  $PSF<two>) s@174@01)
        ($PSF.lookup_two $t@151@01 s@174@01))))
  :pattern (($PSF.lookup_two (as sm@173@01  $PSF<two>) s@174@01))
  :pattern (($PSF.lookup_two $t@151@01 s@174@01))
  :qid |qp.psmValDef102|)))
(assert (forall ((s@174@01 $Snap)) (!
  ($PSF.loc_two ($PSF.lookup_two $t@151@01 s@174@01) s@174@01)
  :pattern (($PSF.lookup_two (as sm@173@01  $PSF<two>) s@174@01))
  :qid |qp.psmResTrgDef103|)))
; Check receiver injectivity
(push) ; 4
(assert (not (forall ((a1@167@01 $Ref) (i1@168@01 Int) (a2@167@01 $Ref) (i2@168@01 Int)) (!
  (=>
    (and
      (and
        (and (Set_in a1@167@01 as@145@01) (Set_in i1@168@01 is@146@01))
        ($PSF.loc_two ($PSF.lookup_two (as sm@173@01  $PSF<two>) ($Snap.combine
          ($SortWrappers.$RefTo$Snap a1@167@01)
          ($SortWrappers.IntTo$Snap i1@168@01))) ($Snap.combine
          ($SortWrappers.$RefTo$Snap a1@167@01)
          ($SortWrappers.IntTo$Snap i1@168@01))))
      (and
        (and (Set_in a2@167@01 as@145@01) (Set_in i2@168@01 is@146@01))
        ($PSF.loc_two ($PSF.lookup_two (as sm@173@01  $PSF<two>) ($Snap.combine
          ($SortWrappers.$RefTo$Snap a2@167@01)
          ($SortWrappers.IntTo$Snap i2@168@01))) ($Snap.combine
          ($SortWrappers.$RefTo$Snap a2@167@01)
          ($SortWrappers.IntTo$Snap i2@168@01))))
      (and (= a1@167@01 a2@167@01) (= i1@168@01 i2@168@01)))
    (and (= a1@167@01 a2@167@01) (= i1@168@01 i2@168@01)))
  
  :qid |two-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((a@167@01 $Ref) (i@168@01 Int)) (!
  (=>
    (and (Set_in a@167@01 as@145@01) (Set_in i@168@01 is@146@01))
    (and
      (and
        (= (inv@169@01 a@167@01 i@168@01) a@167@01)
        (= (inv@171@01 a@167@01 i@168@01) i@168@01))
      (and (img@170@01 a@167@01 i@168@01) (img@172@01 a@167@01 i@168@01))))
  :pattern ((Set_in a@167@01 as@145@01) (Set_in i@168@01 is@146@01))
  :pattern ((Set_in a@167@01 as@145@01) (inv@169@01 a@167@01 i@168@01))
  :pattern ((Set_in a@167@01 as@145@01) (inv@171@01 a@167@01 i@168@01))
  :pattern ((Set_in a@167@01 as@145@01) (img@170@01 a@167@01 i@168@01))
  :pattern ((Set_in a@167@01 as@145@01) (img@172@01 a@167@01 i@168@01))
  :pattern ((Set_in i@168@01 is@146@01) (inv@169@01 a@167@01 i@168@01))
  :pattern ((Set_in i@168@01 is@146@01) (inv@171@01 a@167@01 i@168@01))
  :pattern ((Set_in i@168@01 is@146@01) (img@170@01 a@167@01 i@168@01))
  :pattern ((Set_in i@168@01 is@146@01) (img@172@01 a@167@01 i@168@01))
  :pattern ((inv@169@01 a@167@01 i@168@01))
  :pattern ((inv@171@01 a@167@01 i@168@01))
  :pattern ((img@170@01 a@167@01 i@168@01))
  :pattern ((img@172@01 a@167@01 i@168@01))
  :qid |two-invOfFct|)))
(assert (forall ((a $Ref) (i Int)) (!
  (=>
    (and
      (and (img@170@01 a i) (img@172@01 a i))
      (and
        (Set_in (inv@169@01 a i) as@145@01)
        (Set_in (inv@171@01 a i) is@146@01)))
    (and (= (inv@169@01 a i) a) (= (inv@171@01 a i) i)))
  :pattern ((inv@169@01 a i))
  :pattern ((inv@171@01 a i))
  :qid |two-fctOfInv|)))
(assert (forall ((a $Ref) (i Int)) (!
  (=>
    (and (Set_in (inv@169@01 a i) as@145@01) (Set_in (inv@171@01 a i) is@146@01))
    ($PSF.loc_two ($PSF.lookup_two (as sm@173@01  $PSF<two>) ($Snap.combine
      ($SortWrappers.$RefTo$Snap a)
      ($SortWrappers.IntTo$Snap i))) ($Snap.combine
      ($SortWrappers.$RefTo$Snap a)
      ($SortWrappers.IntTo$Snap i))))
  :pattern ((inv@169@01 a i) (inv@171@01 a i))
  :qid |quant-u-9957|)))
(push) ; 4
(assert (not (forall ((a $Ref) (i Int)) (!
  (=>
    (and
      (and
        (Set_in (inv@169@01 a i) as@145@01)
        (Set_in (inv@171@01 a i) is@146@01))
      (and (img@170@01 a i) (img@172@01 a i))
      (and (= a (inv@169@01 a i)) (= i (inv@171@01 a i))))
    (>
      (ite
        (and
          (and (img@153@01 a i) (img@155@01 a i))
          (and
            (Set_in (inv@152@01 a i) as@145@01)
            (Set_in (inv@154@01 a i) is@146@01)))
        $Perm.Write
        $Perm.No)
      $Perm.No))
  
  :qid |quant-u-9958|))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(declare-const sm@175@01 $PSF<two>)
(declare-const s@176@01 $Snap)
; Definitional axioms for snapshot map domain
(assert (forall ((s@176@01 $Snap)) (!
  (and
    (=>
      (Set_in s@176@01 ($PSF.domain_two (as sm@175@01  $PSF<two>)))
      (and
        (and
          (Set_in (inv@169@01 ($SortWrappers.$SnapTo$Ref ($Snap.first s@176@01)) ($SortWrappers.$SnapToInt ($Snap.second s@176@01))) as@145@01)
          (Set_in (inv@171@01 ($SortWrappers.$SnapTo$Ref ($Snap.first s@176@01)) ($SortWrappers.$SnapToInt ($Snap.second s@176@01))) is@146@01))
        (and
          (img@170@01 ($SortWrappers.$SnapTo$Ref ($Snap.first s@176@01)) ($SortWrappers.$SnapToInt ($Snap.second s@176@01)))
          (img@172@01 ($SortWrappers.$SnapTo$Ref ($Snap.first s@176@01)) ($SortWrappers.$SnapToInt ($Snap.second s@176@01))))))
    (=>
      (and
        (and
          (Set_in (inv@169@01 ($SortWrappers.$SnapTo$Ref ($Snap.first s@176@01)) ($SortWrappers.$SnapToInt ($Snap.second s@176@01))) as@145@01)
          (Set_in (inv@171@01 ($SortWrappers.$SnapTo$Ref ($Snap.first s@176@01)) ($SortWrappers.$SnapToInt ($Snap.second s@176@01))) is@146@01))
        (and
          (img@170@01 ($SortWrappers.$SnapTo$Ref ($Snap.first s@176@01)) ($SortWrappers.$SnapToInt ($Snap.second s@176@01)))
          (img@172@01 ($SortWrappers.$SnapTo$Ref ($Snap.first s@176@01)) ($SortWrappers.$SnapToInt ($Snap.second s@176@01)))))
      (Set_in s@176@01 ($PSF.domain_two (as sm@175@01  $PSF<two>)))))
  :pattern ((Set_in s@176@01 ($PSF.domain_two (as sm@175@01  $PSF<two>))))
  :qid |qp.psmDomDef106|)))
; Definitional axioms for snapshot map values
(assert (forall ((s@176@01 $Snap)) (!
  (=>
    (and
      (and
        (and
          (Set_in (inv@169@01 ($SortWrappers.$SnapTo$Ref ($Snap.first s@176@01)) ($SortWrappers.$SnapToInt ($Snap.second s@176@01))) as@145@01)
          (Set_in (inv@171@01 ($SortWrappers.$SnapTo$Ref ($Snap.first s@176@01)) ($SortWrappers.$SnapToInt ($Snap.second s@176@01))) is@146@01))
        (and
          (img@170@01 ($SortWrappers.$SnapTo$Ref ($Snap.first s@176@01)) ($SortWrappers.$SnapToInt ($Snap.second s@176@01)))
          (img@172@01 ($SortWrappers.$SnapTo$Ref ($Snap.first s@176@01)) ($SortWrappers.$SnapToInt ($Snap.second s@176@01)))))
      (and
        (and
          (img@153@01 ($SortWrappers.$SnapTo$Ref ($Snap.first s@176@01)) ($SortWrappers.$SnapToInt ($Snap.second s@176@01)))
          (img@155@01 ($SortWrappers.$SnapTo$Ref ($Snap.first s@176@01)) ($SortWrappers.$SnapToInt ($Snap.second s@176@01))))
        (and
          (Set_in (inv@152@01 ($SortWrappers.$SnapTo$Ref ($Snap.first s@176@01)) ($SortWrappers.$SnapToInt ($Snap.second s@176@01))) as@145@01)
          (Set_in (inv@154@01 ($SortWrappers.$SnapTo$Ref ($Snap.first s@176@01)) ($SortWrappers.$SnapToInt ($Snap.second s@176@01))) is@146@01))))
    (and
      (not (= s@176@01 $Snap.unit))
      (=
        ($PSF.lookup_two (as sm@175@01  $PSF<two>) s@176@01)
        ($PSF.lookup_two $t@151@01 s@176@01))))
  :pattern (($PSF.lookup_two (as sm@175@01  $PSF<two>) s@176@01))
  :pattern (($PSF.lookup_two $t@151@01 s@176@01))
  :qid |qp.psmValDef104|)))
(assert (forall ((s@176@01 $Snap)) (!
  ($PSF.loc_two ($PSF.lookup_two $t@151@01 s@176@01) s@176@01)
  :pattern (($PSF.lookup_two (as sm@175@01  $PSF<two>) s@176@01))
  :qid |qp.psmResTrgDef105|)))
(assert (foo_twos%precondition ($SortWrappers.$PSF<two>To$Snap (as sm@175@01  $PSF<two>)) as@145@01 is@146@01))
(pop) ; 3
; Joined path conditions
(assert (forall ((s@174@01 $Snap)) (!
  (=>
    (and
      (and
        (img@153@01 ($SortWrappers.$SnapTo$Ref ($Snap.first s@174@01)) ($SortWrappers.$SnapToInt ($Snap.second s@174@01)))
        (img@155@01 ($SortWrappers.$SnapTo$Ref ($Snap.first s@174@01)) ($SortWrappers.$SnapToInt ($Snap.second s@174@01))))
      (and
        (Set_in (inv@152@01 ($SortWrappers.$SnapTo$Ref ($Snap.first s@174@01)) ($SortWrappers.$SnapToInt ($Snap.second s@174@01))) as@145@01)
        (Set_in (inv@154@01 ($SortWrappers.$SnapTo$Ref ($Snap.first s@174@01)) ($SortWrappers.$SnapToInt ($Snap.second s@174@01))) is@146@01)))
    (and
      (not (= s@174@01 $Snap.unit))
      (=
        ($PSF.lookup_two (as sm@173@01  $PSF<two>) s@174@01)
        ($PSF.lookup_two $t@151@01 s@174@01))))
  :pattern (($PSF.lookup_two (as sm@173@01  $PSF<two>) s@174@01))
  :pattern (($PSF.lookup_two $t@151@01 s@174@01))
  :qid |qp.psmValDef102|)))
(assert (forall ((s@174@01 $Snap)) (!
  ($PSF.loc_two ($PSF.lookup_two $t@151@01 s@174@01) s@174@01)
  :pattern (($PSF.lookup_two (as sm@173@01  $PSF<two>) s@174@01))
  :qid |qp.psmResTrgDef103|)))
(assert (forall ((a@167@01 $Ref) (i@168@01 Int)) (!
  (=>
    (and (Set_in a@167@01 as@145@01) (Set_in i@168@01 is@146@01))
    (and
      (and
        (= (inv@169@01 a@167@01 i@168@01) a@167@01)
        (= (inv@171@01 a@167@01 i@168@01) i@168@01))
      (and (img@170@01 a@167@01 i@168@01) (img@172@01 a@167@01 i@168@01))))
  :pattern ((Set_in a@167@01 as@145@01) (Set_in i@168@01 is@146@01))
  :pattern ((Set_in a@167@01 as@145@01) (inv@169@01 a@167@01 i@168@01))
  :pattern ((Set_in a@167@01 as@145@01) (inv@171@01 a@167@01 i@168@01))
  :pattern ((Set_in a@167@01 as@145@01) (img@170@01 a@167@01 i@168@01))
  :pattern ((Set_in a@167@01 as@145@01) (img@172@01 a@167@01 i@168@01))
  :pattern ((Set_in i@168@01 is@146@01) (inv@169@01 a@167@01 i@168@01))
  :pattern ((Set_in i@168@01 is@146@01) (inv@171@01 a@167@01 i@168@01))
  :pattern ((Set_in i@168@01 is@146@01) (img@170@01 a@167@01 i@168@01))
  :pattern ((Set_in i@168@01 is@146@01) (img@172@01 a@167@01 i@168@01))
  :pattern ((inv@169@01 a@167@01 i@168@01))
  :pattern ((inv@171@01 a@167@01 i@168@01))
  :pattern ((img@170@01 a@167@01 i@168@01))
  :pattern ((img@172@01 a@167@01 i@168@01))
  :qid |two-invOfFct|)))
(assert (forall ((a $Ref) (i Int)) (!
  (=>
    (and
      (and (img@170@01 a i) (img@172@01 a i))
      (and
        (Set_in (inv@169@01 a i) as@145@01)
        (Set_in (inv@171@01 a i) is@146@01)))
    (and (= (inv@169@01 a i) a) (= (inv@171@01 a i) i)))
  :pattern ((inv@169@01 a i))
  :pattern ((inv@171@01 a i))
  :qid |two-fctOfInv|)))
(assert (forall ((s@176@01 $Snap)) (!
  (and
    (=>
      (Set_in s@176@01 ($PSF.domain_two (as sm@175@01  $PSF<two>)))
      (and
        (and
          (Set_in (inv@169@01 ($SortWrappers.$SnapTo$Ref ($Snap.first s@176@01)) ($SortWrappers.$SnapToInt ($Snap.second s@176@01))) as@145@01)
          (Set_in (inv@171@01 ($SortWrappers.$SnapTo$Ref ($Snap.first s@176@01)) ($SortWrappers.$SnapToInt ($Snap.second s@176@01))) is@146@01))
        (and
          (img@170@01 ($SortWrappers.$SnapTo$Ref ($Snap.first s@176@01)) ($SortWrappers.$SnapToInt ($Snap.second s@176@01)))
          (img@172@01 ($SortWrappers.$SnapTo$Ref ($Snap.first s@176@01)) ($SortWrappers.$SnapToInt ($Snap.second s@176@01))))))
    (=>
      (and
        (and
          (Set_in (inv@169@01 ($SortWrappers.$SnapTo$Ref ($Snap.first s@176@01)) ($SortWrappers.$SnapToInt ($Snap.second s@176@01))) as@145@01)
          (Set_in (inv@171@01 ($SortWrappers.$SnapTo$Ref ($Snap.first s@176@01)) ($SortWrappers.$SnapToInt ($Snap.second s@176@01))) is@146@01))
        (and
          (img@170@01 ($SortWrappers.$SnapTo$Ref ($Snap.first s@176@01)) ($SortWrappers.$SnapToInt ($Snap.second s@176@01)))
          (img@172@01 ($SortWrappers.$SnapTo$Ref ($Snap.first s@176@01)) ($SortWrappers.$SnapToInt ($Snap.second s@176@01)))))
      (Set_in s@176@01 ($PSF.domain_two (as sm@175@01  $PSF<two>)))))
  :pattern ((Set_in s@176@01 ($PSF.domain_two (as sm@175@01  $PSF<two>))))
  :qid |qp.psmDomDef106|)))
(assert (forall ((s@176@01 $Snap)) (!
  (=>
    (and
      (and
        (and
          (Set_in (inv@169@01 ($SortWrappers.$SnapTo$Ref ($Snap.first s@176@01)) ($SortWrappers.$SnapToInt ($Snap.second s@176@01))) as@145@01)
          (Set_in (inv@171@01 ($SortWrappers.$SnapTo$Ref ($Snap.first s@176@01)) ($SortWrappers.$SnapToInt ($Snap.second s@176@01))) is@146@01))
        (and
          (img@170@01 ($SortWrappers.$SnapTo$Ref ($Snap.first s@176@01)) ($SortWrappers.$SnapToInt ($Snap.second s@176@01)))
          (img@172@01 ($SortWrappers.$SnapTo$Ref ($Snap.first s@176@01)) ($SortWrappers.$SnapToInt ($Snap.second s@176@01)))))
      (and
        (and
          (img@153@01 ($SortWrappers.$SnapTo$Ref ($Snap.first s@176@01)) ($SortWrappers.$SnapToInt ($Snap.second s@176@01)))
          (img@155@01 ($SortWrappers.$SnapTo$Ref ($Snap.first s@176@01)) ($SortWrappers.$SnapToInt ($Snap.second s@176@01))))
        (and
          (Set_in (inv@152@01 ($SortWrappers.$SnapTo$Ref ($Snap.first s@176@01)) ($SortWrappers.$SnapToInt ($Snap.second s@176@01))) as@145@01)
          (Set_in (inv@154@01 ($SortWrappers.$SnapTo$Ref ($Snap.first s@176@01)) ($SortWrappers.$SnapToInt ($Snap.second s@176@01))) is@146@01))))
    (and
      (not (= s@176@01 $Snap.unit))
      (=
        ($PSF.lookup_two (as sm@175@01  $PSF<two>) s@176@01)
        ($PSF.lookup_two $t@151@01 s@176@01))))
  :pattern (($PSF.lookup_two (as sm@175@01  $PSF<two>) s@176@01))
  :pattern (($PSF.lookup_two $t@151@01 s@176@01))
  :qid |qp.psmValDef104|)))
(assert (forall ((s@176@01 $Snap)) (!
  ($PSF.loc_two ($PSF.lookup_two $t@151@01 s@176@01) s@176@01)
  :pattern (($PSF.lookup_two (as sm@175@01  $PSF<two>) s@176@01))
  :qid |qp.psmResTrgDef105|)))
(assert (and
  (forall ((a@167@01 $Ref) (i@168@01 Int)) (!
    (=>
      (and (Set_in a@167@01 as@145@01) (Set_in i@168@01 is@146@01))
      (or (Set_in a@167@01 as@145@01) (not (Set_in a@167@01 as@145@01))))
    :pattern ((Set_in a@167@01 as@145@01) (Set_in i@168@01 is@146@01))
    :pattern ((Set_in a@167@01 as@145@01) (inv@169@01 a@167@01 i@168@01))
    :pattern ((Set_in a@167@01 as@145@01) (inv@171@01 a@167@01 i@168@01))
    :pattern ((Set_in a@167@01 as@145@01) (img@170@01 a@167@01 i@168@01))
    :pattern ((Set_in a@167@01 as@145@01) (img@172@01 a@167@01 i@168@01))
    :pattern ((Set_in i@168@01 is@146@01) (inv@169@01 a@167@01 i@168@01))
    :pattern ((Set_in i@168@01 is@146@01) (inv@171@01 a@167@01 i@168@01))
    :pattern ((Set_in i@168@01 is@146@01) (img@170@01 a@167@01 i@168@01))
    :pattern ((Set_in i@168@01 is@146@01) (img@172@01 a@167@01 i@168@01))
    :pattern ((inv@169@01 a@167@01 i@168@01))
    :pattern ((inv@171@01 a@167@01 i@168@01))
    :pattern ((img@170@01 a@167@01 i@168@01))
    :pattern ((img@172@01 a@167@01 i@168@01))
    :qid |two-aux|))
  (forall ((a $Ref) (i Int)) (!
    (=>
      (and
        (Set_in (inv@169@01 a i) as@145@01)
        (Set_in (inv@171@01 a i) is@146@01))
      ($PSF.loc_two ($PSF.lookup_two (as sm@173@01  $PSF<two>) ($Snap.combine
        ($SortWrappers.$RefTo$Snap a)
        ($SortWrappers.IntTo$Snap i))) ($Snap.combine
        ($SortWrappers.$RefTo$Snap a)
        ($SortWrappers.IntTo$Snap i))))
    :pattern ((inv@169@01 a i) (inv@171@01 a i))
    :qid |quant-u-9957|))
  (foo_twos%precondition ($SortWrappers.$PSF<two>To$Snap (as sm@175@01  $PSF<two>)) as@145@01 is@146@01)))
(push) ; 3
(assert (not (=
  (foo_twos ($SortWrappers.$PSF<two>To$Snap (as sm@175@01  $PSF<two>)) as@145@01 is@146@01)
  0)))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(assert (=
  (foo_twos ($SortWrappers.$PSF<two>To$Snap (as sm@175@01  $PSF<two>)) as@145@01 is@146@01)
  0))
(pop) ; 2
(pop) ; 1
; ---------- test_twos_2 ----------
(declare-const as@177@01 Set<$Ref>)
(declare-const is@178@01 Set<Int>)
(declare-const as@179@01 Set<$Ref>)
(declare-const is@180@01 Set<Int>)
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
; var a1: Ref
(declare-const a1@181@01 $Ref)
; [exec]
; var i1: Int
(declare-const i1@182@01 Int)
; [exec]
; inhale (forall a: Ref, i: Int ::
;     { two(a, i) }
;     (a in as) && (i in is) ==> acc(two(a, i), write))
(declare-const a@183@01 $Ref)
(declare-const i@184@01 Int)
(push) ; 3
; [eval] (a in as) && (i in is)
; [eval] (a in as)
(push) ; 4
; [then-branch: 3 | !(a@183@01 in as@179@01) | live]
; [else-branch: 3 | a@183@01 in as@179@01 | live]
(push) ; 5
; [then-branch: 3 | !(a@183@01 in as@179@01)]
(assert (not (Set_in a@183@01 as@179@01)))
(pop) ; 5
(push) ; 5
; [else-branch: 3 | a@183@01 in as@179@01]
(assert (Set_in a@183@01 as@179@01))
; [eval] (i in is)
(pop) ; 5
(pop) ; 4
; Joined path conditions
; Joined path conditions
(assert (or (Set_in a@183@01 as@179@01) (not (Set_in a@183@01 as@179@01))))
(assert (and (Set_in a@183@01 as@179@01) (Set_in i@184@01 is@180@01)))
(declare-const sm@185@01 $PSF<two>)
(declare-const s@186@01 $Snap)
; Definitional axioms for snapshot map values
(pop) ; 3
(declare-const $t@187@01 $PSF<two>)
(declare-fun inv@188@01 ($Ref Int) $Ref)
(declare-fun img@189@01 ($Ref Int) Bool)
(declare-fun inv@190@01 ($Ref Int) Int)
(declare-fun img@191@01 ($Ref Int) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
(assert (forall ((a@183@01 $Ref) (i@184@01 Int)) (!
  (=>
    (and (Set_in a@183@01 as@179@01) (Set_in i@184@01 is@180@01))
    (or (Set_in a@183@01 as@179@01) (not (Set_in a@183@01 as@179@01))))
  :pattern (($PSF.loc_two ($PSF.lookup_two $t@187@01 ($Snap.combine
    ($SortWrappers.$RefTo$Snap a@183@01)
    ($SortWrappers.IntTo$Snap i@184@01))) ($Snap.combine
    ($SortWrappers.$RefTo$Snap a@183@01)
    ($SortWrappers.IntTo$Snap i@184@01))))
  :qid |two-aux|)))
; Check receiver injectivity
(push) ; 3
(assert (not (forall ((a1@183@01 $Ref) (i1@184@01 Int) (a2@183@01 $Ref) (i2@184@01 Int)) (!
  (=>
    (and
      (and (Set_in a1@183@01 as@179@01) (Set_in i1@184@01 is@180@01))
      (and (Set_in a2@183@01 as@179@01) (Set_in i2@184@01 is@180@01))
      (and (= a1@183@01 a2@183@01) (= i1@184@01 i2@184@01)))
    (and (= a1@183@01 a2@183@01) (= i1@184@01 i2@184@01)))
  
  :qid |two-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((a@183@01 $Ref) (i@184@01 Int)) (!
  (=>
    (and (Set_in a@183@01 as@179@01) (Set_in i@184@01 is@180@01))
    (and
      (and
        (= (inv@188@01 a@183@01 i@184@01) a@183@01)
        (= (inv@190@01 a@183@01 i@184@01) i@184@01))
      (and (img@189@01 a@183@01 i@184@01) (img@191@01 a@183@01 i@184@01))))
  :pattern (($PSF.loc_two ($PSF.lookup_two $t@187@01 ($Snap.combine
    ($SortWrappers.$RefTo$Snap a@183@01)
    ($SortWrappers.IntTo$Snap i@184@01))) ($Snap.combine
    ($SortWrappers.$RefTo$Snap a@183@01)
    ($SortWrappers.IntTo$Snap i@184@01))))
  :qid |quant-u-9960|)))
(assert (forall ((a $Ref) (i Int)) (!
  (=>
    (and
      (and (img@189@01 a i) (img@191@01 a i))
      (and
        (Set_in (inv@188@01 a i) as@179@01)
        (Set_in (inv@190@01 a i) is@180@01)))
    (and (= (inv@188@01 a i) a) (= (inv@190@01 a i) i)))
  :pattern ((inv@188@01 a i))
  :pattern ((inv@190@01 a i))
  :qid |two-fctOfInv|)))
; Permissions are non-negative
(declare-const sm@192@01 $PSF<two>)
(declare-const s@193@01 $Snap)
; Definitional axioms for snapshot map values
(assert (forall ((s@193@01 $Snap)) (!
  (=>
    (and
      (and
        (img@189@01 ($SortWrappers.$SnapTo$Ref ($Snap.first s@193@01)) ($SortWrappers.$SnapToInt ($Snap.second s@193@01)))
        (img@191@01 ($SortWrappers.$SnapTo$Ref ($Snap.first s@193@01)) ($SortWrappers.$SnapToInt ($Snap.second s@193@01))))
      (and
        (Set_in (inv@188@01 ($SortWrappers.$SnapTo$Ref ($Snap.first s@193@01)) ($SortWrappers.$SnapToInt ($Snap.second s@193@01))) as@179@01)
        (Set_in (inv@190@01 ($SortWrappers.$SnapTo$Ref ($Snap.first s@193@01)) ($SortWrappers.$SnapToInt ($Snap.second s@193@01))) is@180@01)))
    (and
      (not (= s@193@01 $Snap.unit))
      (=
        ($PSF.lookup_two (as sm@192@01  $PSF<two>) s@193@01)
        ($PSF.lookup_two $t@187@01 s@193@01))))
  :pattern (($PSF.lookup_two (as sm@192@01  $PSF<two>) s@193@01))
  :pattern (($PSF.lookup_two $t@187@01 s@193@01))
  :qid |qp.psmValDef108|)))
(assert (forall ((s@193@01 $Snap)) (!
  ($PSF.loc_two ($PSF.lookup_two $t@187@01 s@193@01) s@193@01)
  :pattern (($PSF.lookup_two (as sm@192@01  $PSF<two>) s@193@01))
  :qid |qp.psmResTrgDef109|)))
(assert (forall ((a $Ref) (i Int)) (!
  (=>
    (and (Set_in (inv@188@01 a i) as@179@01) (Set_in (inv@190@01 a i) is@180@01))
    ($PSF.loc_two ($PSF.lookup_two (as sm@192@01  $PSF<two>) ($Snap.combine
      ($SortWrappers.$RefTo$Snap a)
      ($SortWrappers.IntTo$Snap i))) ($Snap.combine
      ($SortWrappers.$RefTo$Snap a)
      ($SortWrappers.IntTo$Snap i))))
  :pattern ((inv@188@01 a i) (inv@190@01 a i))
  :qid |quant-u-9961|)))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale foo_twos(as, is) == 0
(declare-const $t@194@01 $Snap)
(assert (= $t@194@01 $Snap.unit))
; [eval] foo_twos(as, is) == 0
; [eval] foo_twos(as, is)
(set-option :timeout 0)
(push) ; 3
(declare-const a@195@01 $Ref)
(declare-const i@196@01 Int)
(push) ; 4
; [eval] (a in as) && (i in is)
; [eval] (a in as)
(push) ; 5
; [then-branch: 4 | !(a@195@01 in as@179@01) | live]
; [else-branch: 4 | a@195@01 in as@179@01 | live]
(push) ; 6
; [then-branch: 4 | !(a@195@01 in as@179@01)]
(assert (not (Set_in a@195@01 as@179@01)))
(pop) ; 6
(push) ; 6
; [else-branch: 4 | a@195@01 in as@179@01]
(assert (Set_in a@195@01 as@179@01))
; [eval] (i in is)
(pop) ; 6
(pop) ; 5
; Joined path conditions
; Joined path conditions
(assert (or (Set_in a@195@01 as@179@01) (not (Set_in a@195@01 as@179@01))))
(assert (and (Set_in a@195@01 as@179@01) (Set_in i@196@01 is@180@01)))
(pop) ; 4
(declare-fun inv@197@01 ($Ref Int) $Ref)
(declare-fun img@198@01 ($Ref Int) Bool)
(declare-fun inv@199@01 ($Ref Int) Int)
(declare-fun img@200@01 ($Ref Int) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
(assert (forall ((a@195@01 $Ref) (i@196@01 Int)) (!
  (=>
    (and (Set_in a@195@01 as@179@01) (Set_in i@196@01 is@180@01))
    (or (Set_in a@195@01 as@179@01) (not (Set_in a@195@01 as@179@01))))
  :pattern ((Set_in a@195@01 as@179@01) (Set_in i@196@01 is@180@01))
  :pattern ((Set_in a@195@01 as@179@01) (inv@197@01 a@195@01 i@196@01))
  :pattern ((Set_in a@195@01 as@179@01) (inv@199@01 a@195@01 i@196@01))
  :pattern ((Set_in a@195@01 as@179@01) (img@198@01 a@195@01 i@196@01))
  :pattern ((Set_in a@195@01 as@179@01) (img@200@01 a@195@01 i@196@01))
  :pattern ((Set_in i@196@01 is@180@01) (inv@197@01 a@195@01 i@196@01))
  :pattern ((Set_in i@196@01 is@180@01) (inv@199@01 a@195@01 i@196@01))
  :pattern ((Set_in i@196@01 is@180@01) (img@198@01 a@195@01 i@196@01))
  :pattern ((Set_in i@196@01 is@180@01) (img@200@01 a@195@01 i@196@01))
  :pattern ((inv@197@01 a@195@01 i@196@01))
  :pattern ((inv@199@01 a@195@01 i@196@01))
  :pattern ((img@198@01 a@195@01 i@196@01))
  :pattern ((img@200@01 a@195@01 i@196@01))
  :qid |two-aux|)))
; Definitional axioms for snapshot map domain
; Definitional axioms for snapshot map values
; Check receiver injectivity
(push) ; 4
(assert (not (forall ((a1@195@01 $Ref) (i1@196@01 Int) (a2@195@01 $Ref) (i2@196@01 Int)) (!
  (=>
    (and
      (and
        (and (Set_in a1@195@01 as@179@01) (Set_in i1@196@01 is@180@01))
        ($PSF.loc_two ($PSF.lookup_two (as sm@192@01  $PSF<two>) ($Snap.combine
          ($SortWrappers.$RefTo$Snap a1@195@01)
          ($SortWrappers.IntTo$Snap i1@196@01))) ($Snap.combine
          ($SortWrappers.$RefTo$Snap a1@195@01)
          ($SortWrappers.IntTo$Snap i1@196@01))))
      (and
        (and (Set_in a2@195@01 as@179@01) (Set_in i2@196@01 is@180@01))
        ($PSF.loc_two ($PSF.lookup_two (as sm@192@01  $PSF<two>) ($Snap.combine
          ($SortWrappers.$RefTo$Snap a2@195@01)
          ($SortWrappers.IntTo$Snap i2@196@01))) ($Snap.combine
          ($SortWrappers.$RefTo$Snap a2@195@01)
          ($SortWrappers.IntTo$Snap i2@196@01))))
      (and (= a1@195@01 a2@195@01) (= i1@196@01 i2@196@01)))
    (and (= a1@195@01 a2@195@01) (= i1@196@01 i2@196@01)))
  
  :qid |two-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((a@195@01 $Ref) (i@196@01 Int)) (!
  (=>
    (and (Set_in a@195@01 as@179@01) (Set_in i@196@01 is@180@01))
    (and
      (and
        (= (inv@197@01 a@195@01 i@196@01) a@195@01)
        (= (inv@199@01 a@195@01 i@196@01) i@196@01))
      (and (img@198@01 a@195@01 i@196@01) (img@200@01 a@195@01 i@196@01))))
  :pattern ((Set_in a@195@01 as@179@01) (Set_in i@196@01 is@180@01))
  :pattern ((Set_in a@195@01 as@179@01) (inv@197@01 a@195@01 i@196@01))
  :pattern ((Set_in a@195@01 as@179@01) (inv@199@01 a@195@01 i@196@01))
  :pattern ((Set_in a@195@01 as@179@01) (img@198@01 a@195@01 i@196@01))
  :pattern ((Set_in a@195@01 as@179@01) (img@200@01 a@195@01 i@196@01))
  :pattern ((Set_in i@196@01 is@180@01) (inv@197@01 a@195@01 i@196@01))
  :pattern ((Set_in i@196@01 is@180@01) (inv@199@01 a@195@01 i@196@01))
  :pattern ((Set_in i@196@01 is@180@01) (img@198@01 a@195@01 i@196@01))
  :pattern ((Set_in i@196@01 is@180@01) (img@200@01 a@195@01 i@196@01))
  :pattern ((inv@197@01 a@195@01 i@196@01))
  :pattern ((inv@199@01 a@195@01 i@196@01))
  :pattern ((img@198@01 a@195@01 i@196@01))
  :pattern ((img@200@01 a@195@01 i@196@01))
  :qid |two-invOfFct|)))
(assert (forall ((a $Ref) (i Int)) (!
  (=>
    (and
      (and (img@198@01 a i) (img@200@01 a i))
      (and
        (Set_in (inv@197@01 a i) as@179@01)
        (Set_in (inv@199@01 a i) is@180@01)))
    (and (= (inv@197@01 a i) a) (= (inv@199@01 a i) i)))
  :pattern ((inv@197@01 a i))
  :pattern ((inv@199@01 a i))
  :qid |two-fctOfInv|)))
(assert (forall ((a $Ref) (i Int)) (!
  (=>
    (and (Set_in (inv@197@01 a i) as@179@01) (Set_in (inv@199@01 a i) is@180@01))
    ($PSF.loc_two ($PSF.lookup_two (as sm@192@01  $PSF<two>) ($Snap.combine
      ($SortWrappers.$RefTo$Snap a)
      ($SortWrappers.IntTo$Snap i))) ($Snap.combine
      ($SortWrappers.$RefTo$Snap a)
      ($SortWrappers.IntTo$Snap i))))
  :pattern ((inv@197@01 a i) (inv@199@01 a i))
  :qid |quant-u-9963|)))
(push) ; 4
(assert (not (forall ((a $Ref) (i Int)) (!
  (=>
    (and
      (and
        (Set_in (inv@197@01 a i) as@179@01)
        (Set_in (inv@199@01 a i) is@180@01))
      (and (img@198@01 a i) (img@200@01 a i))
      (and (= a (inv@197@01 a i)) (= i (inv@199@01 a i))))
    (>
      (ite
        (and
          (and (img@189@01 a i) (img@191@01 a i))
          (and
            (Set_in (inv@188@01 a i) as@179@01)
            (Set_in (inv@190@01 a i) is@180@01)))
        $Perm.Write
        $Perm.No)
      $Perm.No))
  
  :qid |quant-u-9964|))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(declare-const sm@201@01 $PSF<two>)
(declare-const s@202@01 $Snap)
; Definitional axioms for snapshot map domain
(assert (forall ((s@202@01 $Snap)) (!
  (and
    (=>
      (Set_in s@202@01 ($PSF.domain_two (as sm@201@01  $PSF<two>)))
      (and
        (and
          (Set_in (inv@197@01 ($SortWrappers.$SnapTo$Ref ($Snap.first s@202@01)) ($SortWrappers.$SnapToInt ($Snap.second s@202@01))) as@179@01)
          (Set_in (inv@199@01 ($SortWrappers.$SnapTo$Ref ($Snap.first s@202@01)) ($SortWrappers.$SnapToInt ($Snap.second s@202@01))) is@180@01))
        (and
          (img@198@01 ($SortWrappers.$SnapTo$Ref ($Snap.first s@202@01)) ($SortWrappers.$SnapToInt ($Snap.second s@202@01)))
          (img@200@01 ($SortWrappers.$SnapTo$Ref ($Snap.first s@202@01)) ($SortWrappers.$SnapToInt ($Snap.second s@202@01))))))
    (=>
      (and
        (and
          (Set_in (inv@197@01 ($SortWrappers.$SnapTo$Ref ($Snap.first s@202@01)) ($SortWrappers.$SnapToInt ($Snap.second s@202@01))) as@179@01)
          (Set_in (inv@199@01 ($SortWrappers.$SnapTo$Ref ($Snap.first s@202@01)) ($SortWrappers.$SnapToInt ($Snap.second s@202@01))) is@180@01))
        (and
          (img@198@01 ($SortWrappers.$SnapTo$Ref ($Snap.first s@202@01)) ($SortWrappers.$SnapToInt ($Snap.second s@202@01)))
          (img@200@01 ($SortWrappers.$SnapTo$Ref ($Snap.first s@202@01)) ($SortWrappers.$SnapToInt ($Snap.second s@202@01)))))
      (Set_in s@202@01 ($PSF.domain_two (as sm@201@01  $PSF<two>)))))
  :pattern ((Set_in s@202@01 ($PSF.domain_two (as sm@201@01  $PSF<two>))))
  :qid |qp.psmDomDef112|)))
; Definitional axioms for snapshot map values
(assert (forall ((s@202@01 $Snap)) (!
  (=>
    (and
      (and
        (and
          (Set_in (inv@197@01 ($SortWrappers.$SnapTo$Ref ($Snap.first s@202@01)) ($SortWrappers.$SnapToInt ($Snap.second s@202@01))) as@179@01)
          (Set_in (inv@199@01 ($SortWrappers.$SnapTo$Ref ($Snap.first s@202@01)) ($SortWrappers.$SnapToInt ($Snap.second s@202@01))) is@180@01))
        (and
          (img@198@01 ($SortWrappers.$SnapTo$Ref ($Snap.first s@202@01)) ($SortWrappers.$SnapToInt ($Snap.second s@202@01)))
          (img@200@01 ($SortWrappers.$SnapTo$Ref ($Snap.first s@202@01)) ($SortWrappers.$SnapToInt ($Snap.second s@202@01)))))
      (and
        (and
          (img@189@01 ($SortWrappers.$SnapTo$Ref ($Snap.first s@202@01)) ($SortWrappers.$SnapToInt ($Snap.second s@202@01)))
          (img@191@01 ($SortWrappers.$SnapTo$Ref ($Snap.first s@202@01)) ($SortWrappers.$SnapToInt ($Snap.second s@202@01))))
        (and
          (Set_in (inv@188@01 ($SortWrappers.$SnapTo$Ref ($Snap.first s@202@01)) ($SortWrappers.$SnapToInt ($Snap.second s@202@01))) as@179@01)
          (Set_in (inv@190@01 ($SortWrappers.$SnapTo$Ref ($Snap.first s@202@01)) ($SortWrappers.$SnapToInt ($Snap.second s@202@01))) is@180@01))))
    (and
      (not (= s@202@01 $Snap.unit))
      (=
        ($PSF.lookup_two (as sm@201@01  $PSF<two>) s@202@01)
        ($PSF.lookup_two $t@187@01 s@202@01))))
  :pattern (($PSF.lookup_two (as sm@201@01  $PSF<two>) s@202@01))
  :pattern (($PSF.lookup_two $t@187@01 s@202@01))
  :qid |qp.psmValDef110|)))
(assert (forall ((s@202@01 $Snap)) (!
  ($PSF.loc_two ($PSF.lookup_two $t@187@01 s@202@01) s@202@01)
  :pattern (($PSF.lookup_two (as sm@201@01  $PSF<two>) s@202@01))
  :qid |qp.psmResTrgDef111|)))
(assert (foo_twos%precondition ($SortWrappers.$PSF<two>To$Snap (as sm@201@01  $PSF<two>)) as@179@01 is@180@01))
(pop) ; 3
; Joined path conditions
(assert (forall ((a@195@01 $Ref) (i@196@01 Int)) (!
  (=>
    (and (Set_in a@195@01 as@179@01) (Set_in i@196@01 is@180@01))
    (and
      (and
        (= (inv@197@01 a@195@01 i@196@01) a@195@01)
        (= (inv@199@01 a@195@01 i@196@01) i@196@01))
      (and (img@198@01 a@195@01 i@196@01) (img@200@01 a@195@01 i@196@01))))
  :pattern ((Set_in a@195@01 as@179@01) (Set_in i@196@01 is@180@01))
  :pattern ((Set_in a@195@01 as@179@01) (inv@197@01 a@195@01 i@196@01))
  :pattern ((Set_in a@195@01 as@179@01) (inv@199@01 a@195@01 i@196@01))
  :pattern ((Set_in a@195@01 as@179@01) (img@198@01 a@195@01 i@196@01))
  :pattern ((Set_in a@195@01 as@179@01) (img@200@01 a@195@01 i@196@01))
  :pattern ((Set_in i@196@01 is@180@01) (inv@197@01 a@195@01 i@196@01))
  :pattern ((Set_in i@196@01 is@180@01) (inv@199@01 a@195@01 i@196@01))
  :pattern ((Set_in i@196@01 is@180@01) (img@198@01 a@195@01 i@196@01))
  :pattern ((Set_in i@196@01 is@180@01) (img@200@01 a@195@01 i@196@01))
  :pattern ((inv@197@01 a@195@01 i@196@01))
  :pattern ((inv@199@01 a@195@01 i@196@01))
  :pattern ((img@198@01 a@195@01 i@196@01))
  :pattern ((img@200@01 a@195@01 i@196@01))
  :qid |two-invOfFct|)))
(assert (forall ((a $Ref) (i Int)) (!
  (=>
    (and
      (and (img@198@01 a i) (img@200@01 a i))
      (and
        (Set_in (inv@197@01 a i) as@179@01)
        (Set_in (inv@199@01 a i) is@180@01)))
    (and (= (inv@197@01 a i) a) (= (inv@199@01 a i) i)))
  :pattern ((inv@197@01 a i))
  :pattern ((inv@199@01 a i))
  :qid |two-fctOfInv|)))
(assert (forall ((s@202@01 $Snap)) (!
  (and
    (=>
      (Set_in s@202@01 ($PSF.domain_two (as sm@201@01  $PSF<two>)))
      (and
        (and
          (Set_in (inv@197@01 ($SortWrappers.$SnapTo$Ref ($Snap.first s@202@01)) ($SortWrappers.$SnapToInt ($Snap.second s@202@01))) as@179@01)
          (Set_in (inv@199@01 ($SortWrappers.$SnapTo$Ref ($Snap.first s@202@01)) ($SortWrappers.$SnapToInt ($Snap.second s@202@01))) is@180@01))
        (and
          (img@198@01 ($SortWrappers.$SnapTo$Ref ($Snap.first s@202@01)) ($SortWrappers.$SnapToInt ($Snap.second s@202@01)))
          (img@200@01 ($SortWrappers.$SnapTo$Ref ($Snap.first s@202@01)) ($SortWrappers.$SnapToInt ($Snap.second s@202@01))))))
    (=>
      (and
        (and
          (Set_in (inv@197@01 ($SortWrappers.$SnapTo$Ref ($Snap.first s@202@01)) ($SortWrappers.$SnapToInt ($Snap.second s@202@01))) as@179@01)
          (Set_in (inv@199@01 ($SortWrappers.$SnapTo$Ref ($Snap.first s@202@01)) ($SortWrappers.$SnapToInt ($Snap.second s@202@01))) is@180@01))
        (and
          (img@198@01 ($SortWrappers.$SnapTo$Ref ($Snap.first s@202@01)) ($SortWrappers.$SnapToInt ($Snap.second s@202@01)))
          (img@200@01 ($SortWrappers.$SnapTo$Ref ($Snap.first s@202@01)) ($SortWrappers.$SnapToInt ($Snap.second s@202@01)))))
      (Set_in s@202@01 ($PSF.domain_two (as sm@201@01  $PSF<two>)))))
  :pattern ((Set_in s@202@01 ($PSF.domain_two (as sm@201@01  $PSF<two>))))
  :qid |qp.psmDomDef112|)))
(assert (forall ((s@202@01 $Snap)) (!
  (=>
    (and
      (and
        (and
          (Set_in (inv@197@01 ($SortWrappers.$SnapTo$Ref ($Snap.first s@202@01)) ($SortWrappers.$SnapToInt ($Snap.second s@202@01))) as@179@01)
          (Set_in (inv@199@01 ($SortWrappers.$SnapTo$Ref ($Snap.first s@202@01)) ($SortWrappers.$SnapToInt ($Snap.second s@202@01))) is@180@01))
        (and
          (img@198@01 ($SortWrappers.$SnapTo$Ref ($Snap.first s@202@01)) ($SortWrappers.$SnapToInt ($Snap.second s@202@01)))
          (img@200@01 ($SortWrappers.$SnapTo$Ref ($Snap.first s@202@01)) ($SortWrappers.$SnapToInt ($Snap.second s@202@01)))))
      (and
        (and
          (img@189@01 ($SortWrappers.$SnapTo$Ref ($Snap.first s@202@01)) ($SortWrappers.$SnapToInt ($Snap.second s@202@01)))
          (img@191@01 ($SortWrappers.$SnapTo$Ref ($Snap.first s@202@01)) ($SortWrappers.$SnapToInt ($Snap.second s@202@01))))
        (and
          (Set_in (inv@188@01 ($SortWrappers.$SnapTo$Ref ($Snap.first s@202@01)) ($SortWrappers.$SnapToInt ($Snap.second s@202@01))) as@179@01)
          (Set_in (inv@190@01 ($SortWrappers.$SnapTo$Ref ($Snap.first s@202@01)) ($SortWrappers.$SnapToInt ($Snap.second s@202@01))) is@180@01))))
    (and
      (not (= s@202@01 $Snap.unit))
      (=
        ($PSF.lookup_two (as sm@201@01  $PSF<two>) s@202@01)
        ($PSF.lookup_two $t@187@01 s@202@01))))
  :pattern (($PSF.lookup_two (as sm@201@01  $PSF<two>) s@202@01))
  :pattern (($PSF.lookup_two $t@187@01 s@202@01))
  :qid |qp.psmValDef110|)))
(assert (forall ((s@202@01 $Snap)) (!
  ($PSF.loc_two ($PSF.lookup_two $t@187@01 s@202@01) s@202@01)
  :pattern (($PSF.lookup_two (as sm@201@01  $PSF<two>) s@202@01))
  :qid |qp.psmResTrgDef111|)))
(assert (and
  (forall ((a@195@01 $Ref) (i@196@01 Int)) (!
    (=>
      (and (Set_in a@195@01 as@179@01) (Set_in i@196@01 is@180@01))
      (or (Set_in a@195@01 as@179@01) (not (Set_in a@195@01 as@179@01))))
    :pattern ((Set_in a@195@01 as@179@01) (Set_in i@196@01 is@180@01))
    :pattern ((Set_in a@195@01 as@179@01) (inv@197@01 a@195@01 i@196@01))
    :pattern ((Set_in a@195@01 as@179@01) (inv@199@01 a@195@01 i@196@01))
    :pattern ((Set_in a@195@01 as@179@01) (img@198@01 a@195@01 i@196@01))
    :pattern ((Set_in a@195@01 as@179@01) (img@200@01 a@195@01 i@196@01))
    :pattern ((Set_in i@196@01 is@180@01) (inv@197@01 a@195@01 i@196@01))
    :pattern ((Set_in i@196@01 is@180@01) (inv@199@01 a@195@01 i@196@01))
    :pattern ((Set_in i@196@01 is@180@01) (img@198@01 a@195@01 i@196@01))
    :pattern ((Set_in i@196@01 is@180@01) (img@200@01 a@195@01 i@196@01))
    :pattern ((inv@197@01 a@195@01 i@196@01))
    :pattern ((inv@199@01 a@195@01 i@196@01))
    :pattern ((img@198@01 a@195@01 i@196@01))
    :pattern ((img@200@01 a@195@01 i@196@01))
    :qid |two-aux|))
  (forall ((a $Ref) (i Int)) (!
    (=>
      (and
        (Set_in (inv@197@01 a i) as@179@01)
        (Set_in (inv@199@01 a i) is@180@01))
      ($PSF.loc_two ($PSF.lookup_two (as sm@192@01  $PSF<two>) ($Snap.combine
        ($SortWrappers.$RefTo$Snap a)
        ($SortWrappers.IntTo$Snap i))) ($Snap.combine
        ($SortWrappers.$RefTo$Snap a)
        ($SortWrappers.IntTo$Snap i))))
    :pattern ((inv@197@01 a i) (inv@199@01 a i))
    :qid |quant-u-9963|))
  (foo_twos%precondition ($SortWrappers.$PSF<two>To$Snap (as sm@201@01  $PSF<two>)) as@179@01 is@180@01)))
(assert (=
  (foo_twos ($SortWrappers.$PSF<two>To$Snap (as sm@201@01  $PSF<two>)) as@179@01 is@180@01)
  0))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale (a1 in as)
(declare-const $t@203@01 $Snap)
(assert (= $t@203@01 $Snap.unit))
; [eval] (a1 in as)
(assert (Set_in a1@181@01 as@179@01))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale (i1 in is)
(declare-const $t@204@01 $Snap)
(assert (= $t@204@01 $Snap.unit))
; [eval] (i1 in is)
(assert (Set_in i1@182@01 is@180@01))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; unfold acc(two(a1, i1), write)
(declare-const sm@205@01 $PSF<two>)
(declare-const s@206@01 $Snap)
; Definitional axioms for snapshot map values
(assert (forall ((s@206@01 $Snap)) (!
  (=>
    (and
      (and
        (img@189@01 ($SortWrappers.$SnapTo$Ref ($Snap.first s@206@01)) ($SortWrappers.$SnapToInt ($Snap.second s@206@01)))
        (img@191@01 ($SortWrappers.$SnapTo$Ref ($Snap.first s@206@01)) ($SortWrappers.$SnapToInt ($Snap.second s@206@01))))
      (and
        (Set_in (inv@188@01 ($SortWrappers.$SnapTo$Ref ($Snap.first s@206@01)) ($SortWrappers.$SnapToInt ($Snap.second s@206@01))) as@179@01)
        (Set_in (inv@190@01 ($SortWrappers.$SnapTo$Ref ($Snap.first s@206@01)) ($SortWrappers.$SnapToInt ($Snap.second s@206@01))) is@180@01)))
    (and
      (not (= s@206@01 $Snap.unit))
      (=
        ($PSF.lookup_two (as sm@205@01  $PSF<two>) s@206@01)
        ($PSF.lookup_two $t@187@01 s@206@01))))
  :pattern (($PSF.lookup_two (as sm@205@01  $PSF<two>) s@206@01))
  :pattern (($PSF.lookup_two $t@187@01 s@206@01))
  :qid |qp.psmValDef113|)))
(assert (forall ((s@206@01 $Snap)) (!
  ($PSF.loc_two ($PSF.lookup_two $t@187@01 s@206@01) s@206@01)
  :pattern (($PSF.lookup_two (as sm@205@01  $PSF<two>) s@206@01))
  :qid |qp.psmResTrgDef114|)))
(assert ($PSF.loc_two ($PSF.lookup_two (as sm@205@01  $PSF<two>) ($Snap.combine
  ($SortWrappers.$RefTo$Snap a1@181@01)
  ($SortWrappers.IntTo$Snap i1@182@01))) ($Snap.combine
  ($SortWrappers.$RefTo$Snap a1@181@01)
  ($SortWrappers.IntTo$Snap i1@182@01))))
; Precomputing data for removing quantified permissions
(define-fun pTaken@207@01 ((a $Ref) (i Int)) $Perm
  (ite
    (and (= a a1@181@01) (= i i1@182@01))
    ($Perm.min
      (ite
        (and
          (and (img@189@01 a i) (img@191@01 a i))
          (and
            (Set_in (inv@188@01 a i) as@179@01)
            (Set_in (inv@190@01 a i) is@180@01)))
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
(assert (not (forall ((a $Ref) (i Int)) (!
  (=
    (-
      (ite
        (and
          (and (img@189@01 a i) (img@191@01 a i))
          (and
            (Set_in (inv@188@01 a i) as@179@01)
            (Set_in (inv@190@01 a i) is@180@01)))
        $Perm.Write
        $Perm.No)
      (pTaken@207@01 a i))
    $Perm.No)
  
  :qid |quant-u-9966|))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (forall ((a $Ref) (i Int)) (!
  (= (pTaken@207@01 a i) $Perm.No)
  
  :qid |quant-u-9967|))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Intermediate check if already taken enough permissions
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 500)
(assert (not (forall ((a $Ref) (i Int)) (!
  (=>
    (and (= a a1@181@01) (= i i1@182@01))
    (= (- $Perm.Write (pTaken@207@01 a i)) $Perm.No))
  
  :qid |quant-u-9968|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Final check if taken enough permissions
; Done removing quantified permissions
; Definitional axioms for snapshot map values (instantiated)
(assert (=>
  (and
    (and (img@189@01 a1@181@01 i1@182@01) (img@191@01 a1@181@01 i1@182@01))
    (and
      (Set_in (inv@188@01 a1@181@01 i1@182@01) as@179@01)
      (Set_in (inv@190@01 a1@181@01 i1@182@01) is@180@01)))
  (and
    (not
      (=
        ($Snap.combine
          ($SortWrappers.$RefTo$Snap a1@181@01)
          ($SortWrappers.IntTo$Snap i1@182@01))
        $Snap.unit))
    (=
      ($PSF.lookup_two (as sm@205@01  $PSF<two>) ($Snap.combine
        ($SortWrappers.$RefTo$Snap a1@181@01)
        ($SortWrappers.IntTo$Snap i1@182@01)))
      ($PSF.lookup_two $t@187@01 ($Snap.combine
        ($SortWrappers.$RefTo$Snap a1@181@01)
        ($SortWrappers.IntTo$Snap i1@182@01)))))))
(assert ($PSF.loc_two ($PSF.lookup_two $t@187@01 ($Snap.combine
  ($SortWrappers.$RefTo$Snap a1@181@01)
  ($SortWrappers.IntTo$Snap i1@182@01))) ($Snap.combine
  ($SortWrappers.$RefTo$Snap a1@181@01)
  ($SortWrappers.IntTo$Snap i1@182@01))))
(assert (not (= a1@181@01 $Ref.null)))
; State saturation: after unfold
(set-option :timeout 40)
(check-sat)
; unknown
(assert (two%trigger ($SortWrappers.IntTo$Snap ($PSF.lookup_two (as sm@205@01  $PSF<two>) ($Snap.combine
  ($SortWrappers.$RefTo$Snap a1@181@01)
  ($SortWrappers.IntTo$Snap i1@182@01)))) a1@181@01 i1@182@01))
; [exec]
; fold acc(two(a1, i1), write)
(declare-const sm@208@01 $PSF<two>)
; Definitional axioms for singleton-SM's value
(assert (=
  ($PSF.lookup_two (as sm@208@01  $PSF<two>) ($Snap.combine
    ($SortWrappers.$RefTo$Snap a1@181@01)
    ($SortWrappers.IntTo$Snap i1@182@01)))
  ($PSF.lookup_two (as sm@205@01  $PSF<two>) ($Snap.combine
    ($SortWrappers.$RefTo$Snap a1@181@01)
    ($SortWrappers.IntTo$Snap i1@182@01)))))
(declare-const sm@209@01 $PSF<two>)
(declare-const s@210@01 $Snap)
; Definitional axioms for snapshot map domain
; Definitional axioms for snapshot map values
(assert (forall ((s@210@01 $Snap)) (!
  (=>
    (and
      (= ($SortWrappers.$SnapTo$Ref ($Snap.first s@210@01)) a1@181@01)
      (= ($SortWrappers.$SnapToInt ($Snap.second s@210@01)) i1@182@01))
    (and
      (not (= s@210@01 $Snap.unit))
      (=
        ($PSF.lookup_two (as sm@209@01  $PSF<two>) s@210@01)
        ($PSF.lookup_two (as sm@208@01  $PSF<two>) s@210@01))))
  :pattern (($PSF.lookup_two (as sm@209@01  $PSF<two>) s@210@01))
  :pattern (($PSF.lookup_two (as sm@208@01  $PSF<two>) s@210@01))
  :qid |qp.psmValDef115|)))
(assert (forall ((s@210@01 $Snap)) (!
  (=>
    (ite
      (and
        (and
          (img@189@01 ($SortWrappers.$SnapTo$Ref ($Snap.first s@210@01)) ($SortWrappers.$SnapToInt ($Snap.second s@210@01)))
          (img@191@01 ($SortWrappers.$SnapTo$Ref ($Snap.first s@210@01)) ($SortWrappers.$SnapToInt ($Snap.second s@210@01))))
        (and
          (Set_in (inv@188@01 ($SortWrappers.$SnapTo$Ref ($Snap.first s@210@01)) ($SortWrappers.$SnapToInt ($Snap.second s@210@01))) as@179@01)
          (Set_in (inv@190@01 ($SortWrappers.$SnapTo$Ref ($Snap.first s@210@01)) ($SortWrappers.$SnapToInt ($Snap.second s@210@01))) is@180@01)))
      (<
        $Perm.No
        (-
          $Perm.Write
          (pTaken@207@01 ($SortWrappers.$SnapTo$Ref ($Snap.first s@210@01)) ($SortWrappers.$SnapToInt ($Snap.second s@210@01)))))
      false)
    (and
      (not (= s@210@01 $Snap.unit))
      (=
        ($PSF.lookup_two (as sm@209@01  $PSF<two>) s@210@01)
        ($PSF.lookup_two $t@187@01 s@210@01))))
  :pattern (($PSF.lookup_two (as sm@209@01  $PSF<two>) s@210@01))
  :pattern (($PSF.lookup_two $t@187@01 s@210@01))
  :qid |qp.psmValDef116|)))
(assert (forall ((s@210@01 $Snap)) (!
  (and
    ($PSF.loc_two ($PSF.lookup_two (as sm@208@01  $PSF<two>) s@210@01) s@210@01)
    ($PSF.loc_two ($PSF.lookup_two $t@187@01 s@210@01) s@210@01))
  :pattern (($PSF.lookup_two (as sm@209@01  $PSF<two>) s@210@01))
  :qid |qp.psmResTrgDef117|)))
(assert ($PSF.loc_two ($PSF.lookup_two (as sm@209@01  $PSF<two>) ($Snap.combine
  ($SortWrappers.$RefTo$Snap a1@181@01)
  ($SortWrappers.IntTo$Snap i1@182@01))) ($Snap.combine
  ($SortWrappers.$RefTo$Snap a1@181@01)
  ($SortWrappers.IntTo$Snap i1@182@01))))
; [exec]
; exhale foo_twos(as, is) == 0
; [eval] foo_twos(as, is) == 0
; [eval] foo_twos(as, is)
(set-option :timeout 0)
(push) ; 3
(declare-const a@211@01 $Ref)
(declare-const i@212@01 Int)
(push) ; 4
; [eval] (a in as) && (i in is)
; [eval] (a in as)
(push) ; 5
; [then-branch: 5 | !(a@211@01 in as@179@01) | live]
; [else-branch: 5 | a@211@01 in as@179@01 | live]
(push) ; 6
; [then-branch: 5 | !(a@211@01 in as@179@01)]
(assert (not (Set_in a@211@01 as@179@01)))
(pop) ; 6
(push) ; 6
; [else-branch: 5 | a@211@01 in as@179@01]
(assert (Set_in a@211@01 as@179@01))
; [eval] (i in is)
(pop) ; 6
(pop) ; 5
; Joined path conditions
; Joined path conditions
(assert (or (Set_in a@211@01 as@179@01) (not (Set_in a@211@01 as@179@01))))
(assert (and (Set_in a@211@01 as@179@01) (Set_in i@212@01 is@180@01)))
(pop) ; 4
(declare-fun inv@213@01 ($Ref Int) $Ref)
(declare-fun img@214@01 ($Ref Int) Bool)
(declare-fun inv@215@01 ($Ref Int) Int)
(declare-fun img@216@01 ($Ref Int) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
(assert (forall ((a@211@01 $Ref) (i@212@01 Int)) (!
  (=>
    (and (Set_in a@211@01 as@179@01) (Set_in i@212@01 is@180@01))
    (or (Set_in a@211@01 as@179@01) (not (Set_in a@211@01 as@179@01))))
  :pattern ((Set_in a@211@01 as@179@01) (Set_in i@212@01 is@180@01))
  :pattern ((Set_in a@211@01 as@179@01) (inv@213@01 a@211@01 i@212@01))
  :pattern ((Set_in a@211@01 as@179@01) (inv@215@01 a@211@01 i@212@01))
  :pattern ((Set_in a@211@01 as@179@01) (img@214@01 a@211@01 i@212@01))
  :pattern ((Set_in a@211@01 as@179@01) (img@216@01 a@211@01 i@212@01))
  :pattern ((Set_in i@212@01 is@180@01) (inv@213@01 a@211@01 i@212@01))
  :pattern ((Set_in i@212@01 is@180@01) (inv@215@01 a@211@01 i@212@01))
  :pattern ((Set_in i@212@01 is@180@01) (img@214@01 a@211@01 i@212@01))
  :pattern ((Set_in i@212@01 is@180@01) (img@216@01 a@211@01 i@212@01))
  :pattern ((inv@213@01 a@211@01 i@212@01))
  :pattern ((inv@215@01 a@211@01 i@212@01))
  :pattern ((img@214@01 a@211@01 i@212@01))
  :pattern ((img@216@01 a@211@01 i@212@01))
  :qid |two-aux|)))
; Definitional axioms for snapshot map domain
; Definitional axioms for snapshot map values
; Check receiver injectivity
(push) ; 4
(assert (not (forall ((a1@211@01 $Ref) (i1@212@01 Int) (a2@211@01 $Ref) (i2@212@01 Int)) (!
  (=>
    (and
      (and
        (and (Set_in a1@211@01 as@179@01) (Set_in i1@212@01 is@180@01))
        ($PSF.loc_two ($PSF.lookup_two (as sm@209@01  $PSF<two>) ($Snap.combine
          ($SortWrappers.$RefTo$Snap a1@211@01)
          ($SortWrappers.IntTo$Snap i1@212@01))) ($Snap.combine
          ($SortWrappers.$RefTo$Snap a1@211@01)
          ($SortWrappers.IntTo$Snap i1@212@01))))
      (and
        (and (Set_in a2@211@01 as@179@01) (Set_in i2@212@01 is@180@01))
        ($PSF.loc_two ($PSF.lookup_two (as sm@209@01  $PSF<two>) ($Snap.combine
          ($SortWrappers.$RefTo$Snap a2@211@01)
          ($SortWrappers.IntTo$Snap i2@212@01))) ($Snap.combine
          ($SortWrappers.$RefTo$Snap a2@211@01)
          ($SortWrappers.IntTo$Snap i2@212@01))))
      (and (= a1@211@01 a2@211@01) (= i1@212@01 i2@212@01)))
    (and (= a1@211@01 a2@211@01) (= i1@212@01 i2@212@01)))
  
  :qid |two-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((a@211@01 $Ref) (i@212@01 Int)) (!
  (=>
    (and (Set_in a@211@01 as@179@01) (Set_in i@212@01 is@180@01))
    (and
      (and
        (= (inv@213@01 a@211@01 i@212@01) a@211@01)
        (= (inv@215@01 a@211@01 i@212@01) i@212@01))
      (and (img@214@01 a@211@01 i@212@01) (img@216@01 a@211@01 i@212@01))))
  :pattern ((Set_in a@211@01 as@179@01) (Set_in i@212@01 is@180@01))
  :pattern ((Set_in a@211@01 as@179@01) (inv@213@01 a@211@01 i@212@01))
  :pattern ((Set_in a@211@01 as@179@01) (inv@215@01 a@211@01 i@212@01))
  :pattern ((Set_in a@211@01 as@179@01) (img@214@01 a@211@01 i@212@01))
  :pattern ((Set_in a@211@01 as@179@01) (img@216@01 a@211@01 i@212@01))
  :pattern ((Set_in i@212@01 is@180@01) (inv@213@01 a@211@01 i@212@01))
  :pattern ((Set_in i@212@01 is@180@01) (inv@215@01 a@211@01 i@212@01))
  :pattern ((Set_in i@212@01 is@180@01) (img@214@01 a@211@01 i@212@01))
  :pattern ((Set_in i@212@01 is@180@01) (img@216@01 a@211@01 i@212@01))
  :pattern ((inv@213@01 a@211@01 i@212@01))
  :pattern ((inv@215@01 a@211@01 i@212@01))
  :pattern ((img@214@01 a@211@01 i@212@01))
  :pattern ((img@216@01 a@211@01 i@212@01))
  :qid |two-invOfFct|)))
(assert (forall ((a $Ref) (i Int)) (!
  (=>
    (and
      (and (img@214@01 a i) (img@216@01 a i))
      (and
        (Set_in (inv@213@01 a i) as@179@01)
        (Set_in (inv@215@01 a i) is@180@01)))
    (and (= (inv@213@01 a i) a) (= (inv@215@01 a i) i)))
  :pattern ((inv@213@01 a i))
  :pattern ((inv@215@01 a i))
  :qid |two-fctOfInv|)))
(assert (forall ((a $Ref) (i Int)) (!
  (=>
    (and (Set_in (inv@213@01 a i) as@179@01) (Set_in (inv@215@01 a i) is@180@01))
    ($PSF.loc_two ($PSF.lookup_two (as sm@209@01  $PSF<two>) ($Snap.combine
      ($SortWrappers.$RefTo$Snap a)
      ($SortWrappers.IntTo$Snap i))) ($Snap.combine
      ($SortWrappers.$RefTo$Snap a)
      ($SortWrappers.IntTo$Snap i))))
  :pattern ((inv@213@01 a i) (inv@215@01 a i))
  :qid |quant-u-9970|)))
(push) ; 4
(assert (not (forall ((a $Ref) (i Int)) (!
  (=>
    (and
      (and
        (Set_in (inv@213@01 a i) as@179@01)
        (Set_in (inv@215@01 a i) is@180@01))
      (and (img@214@01 a i) (img@216@01 a i))
      (and (= a (inv@213@01 a i)) (= i (inv@215@01 a i))))
    (>
      (+
        (ite
          (and
            (and (img@189@01 a i) (img@191@01 a i))
            (and
              (Set_in (inv@188@01 a i) as@179@01)
              (Set_in (inv@190@01 a i) is@180@01)))
          (- $Perm.Write (pTaken@207@01 a i))
          $Perm.No)
        (ite (and (= a a1@181@01) (= i i1@182@01)) $Perm.Write $Perm.No))
      $Perm.No))
  
  :qid |quant-u-9971|))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(declare-const sm@217@01 $PSF<two>)
(declare-const s@218@01 $Snap)
; Definitional axioms for snapshot map domain
(assert (forall ((s@218@01 $Snap)) (!
  (and
    (=>
      (Set_in s@218@01 ($PSF.domain_two (as sm@217@01  $PSF<two>)))
      (and
        (and
          (Set_in (inv@213@01 ($SortWrappers.$SnapTo$Ref ($Snap.first s@218@01)) ($SortWrappers.$SnapToInt ($Snap.second s@218@01))) as@179@01)
          (Set_in (inv@215@01 ($SortWrappers.$SnapTo$Ref ($Snap.first s@218@01)) ($SortWrappers.$SnapToInt ($Snap.second s@218@01))) is@180@01))
        (and
          (img@214@01 ($SortWrappers.$SnapTo$Ref ($Snap.first s@218@01)) ($SortWrappers.$SnapToInt ($Snap.second s@218@01)))
          (img@216@01 ($SortWrappers.$SnapTo$Ref ($Snap.first s@218@01)) ($SortWrappers.$SnapToInt ($Snap.second s@218@01))))))
    (=>
      (and
        (and
          (Set_in (inv@213@01 ($SortWrappers.$SnapTo$Ref ($Snap.first s@218@01)) ($SortWrappers.$SnapToInt ($Snap.second s@218@01))) as@179@01)
          (Set_in (inv@215@01 ($SortWrappers.$SnapTo$Ref ($Snap.first s@218@01)) ($SortWrappers.$SnapToInt ($Snap.second s@218@01))) is@180@01))
        (and
          (img@214@01 ($SortWrappers.$SnapTo$Ref ($Snap.first s@218@01)) ($SortWrappers.$SnapToInt ($Snap.second s@218@01)))
          (img@216@01 ($SortWrappers.$SnapTo$Ref ($Snap.first s@218@01)) ($SortWrappers.$SnapToInt ($Snap.second s@218@01)))))
      (Set_in s@218@01 ($PSF.domain_two (as sm@217@01  $PSF<two>)))))
  :pattern ((Set_in s@218@01 ($PSF.domain_two (as sm@217@01  $PSF<two>))))
  :qid |qp.psmDomDef121|)))
; Definitional axioms for snapshot map values
(assert (forall ((s@218@01 $Snap)) (!
  (=>
    (and
      (and
        (and
          (Set_in (inv@213@01 ($SortWrappers.$SnapTo$Ref ($Snap.first s@218@01)) ($SortWrappers.$SnapToInt ($Snap.second s@218@01))) as@179@01)
          (Set_in (inv@215@01 ($SortWrappers.$SnapTo$Ref ($Snap.first s@218@01)) ($SortWrappers.$SnapToInt ($Snap.second s@218@01))) is@180@01))
        (and
          (img@214@01 ($SortWrappers.$SnapTo$Ref ($Snap.first s@218@01)) ($SortWrappers.$SnapToInt ($Snap.second s@218@01)))
          (img@216@01 ($SortWrappers.$SnapTo$Ref ($Snap.first s@218@01)) ($SortWrappers.$SnapToInt ($Snap.second s@218@01)))))
      (and
        (= ($SortWrappers.$SnapTo$Ref ($Snap.first s@218@01)) a1@181@01)
        (= ($SortWrappers.$SnapToInt ($Snap.second s@218@01)) i1@182@01)))
    (and
      (not (= s@218@01 $Snap.unit))
      (=
        ($PSF.lookup_two (as sm@217@01  $PSF<two>) s@218@01)
        ($PSF.lookup_two (as sm@208@01  $PSF<two>) s@218@01))))
  :pattern (($PSF.lookup_two (as sm@217@01  $PSF<two>) s@218@01))
  :pattern (($PSF.lookup_two (as sm@208@01  $PSF<two>) s@218@01))
  :qid |qp.psmValDef118|)))
(assert (forall ((s@218@01 $Snap)) (!
  (=>
    (and
      (and
        (and
          (Set_in (inv@213@01 ($SortWrappers.$SnapTo$Ref ($Snap.first s@218@01)) ($SortWrappers.$SnapToInt ($Snap.second s@218@01))) as@179@01)
          (Set_in (inv@215@01 ($SortWrappers.$SnapTo$Ref ($Snap.first s@218@01)) ($SortWrappers.$SnapToInt ($Snap.second s@218@01))) is@180@01))
        (and
          (img@214@01 ($SortWrappers.$SnapTo$Ref ($Snap.first s@218@01)) ($SortWrappers.$SnapToInt ($Snap.second s@218@01)))
          (img@216@01 ($SortWrappers.$SnapTo$Ref ($Snap.first s@218@01)) ($SortWrappers.$SnapToInt ($Snap.second s@218@01)))))
      (ite
        (and
          (and
            (img@189@01 ($SortWrappers.$SnapTo$Ref ($Snap.first s@218@01)) ($SortWrappers.$SnapToInt ($Snap.second s@218@01)))
            (img@191@01 ($SortWrappers.$SnapTo$Ref ($Snap.first s@218@01)) ($SortWrappers.$SnapToInt ($Snap.second s@218@01))))
          (and
            (Set_in (inv@188@01 ($SortWrappers.$SnapTo$Ref ($Snap.first s@218@01)) ($SortWrappers.$SnapToInt ($Snap.second s@218@01))) as@179@01)
            (Set_in (inv@190@01 ($SortWrappers.$SnapTo$Ref ($Snap.first s@218@01)) ($SortWrappers.$SnapToInt ($Snap.second s@218@01))) is@180@01)))
        (<
          $Perm.No
          (-
            $Perm.Write
            (pTaken@207@01 ($SortWrappers.$SnapTo$Ref ($Snap.first s@218@01)) ($SortWrappers.$SnapToInt ($Snap.second s@218@01)))))
        false))
    (and
      (not (= s@218@01 $Snap.unit))
      (=
        ($PSF.lookup_two (as sm@217@01  $PSF<two>) s@218@01)
        ($PSF.lookup_two $t@187@01 s@218@01))))
  :pattern (($PSF.lookup_two (as sm@217@01  $PSF<two>) s@218@01))
  :pattern (($PSF.lookup_two $t@187@01 s@218@01))
  :qid |qp.psmValDef119|)))
(assert (forall ((s@218@01 $Snap)) (!
  (and
    ($PSF.loc_two ($PSF.lookup_two (as sm@208@01  $PSF<two>) s@218@01) s@218@01)
    ($PSF.loc_two ($PSF.lookup_two $t@187@01 s@218@01) s@218@01))
  :pattern (($PSF.lookup_two (as sm@217@01  $PSF<two>) s@218@01))
  :qid |qp.psmResTrgDef120|)))
(assert (foo_twos%precondition ($SortWrappers.$PSF<two>To$Snap (as sm@217@01  $PSF<two>)) as@179@01 is@180@01))
(pop) ; 3
; Joined path conditions
(assert (forall ((a@211@01 $Ref) (i@212@01 Int)) (!
  (=>
    (and (Set_in a@211@01 as@179@01) (Set_in i@212@01 is@180@01))
    (and
      (and
        (= (inv@213@01 a@211@01 i@212@01) a@211@01)
        (= (inv@215@01 a@211@01 i@212@01) i@212@01))
      (and (img@214@01 a@211@01 i@212@01) (img@216@01 a@211@01 i@212@01))))
  :pattern ((Set_in a@211@01 as@179@01) (Set_in i@212@01 is@180@01))
  :pattern ((Set_in a@211@01 as@179@01) (inv@213@01 a@211@01 i@212@01))
  :pattern ((Set_in a@211@01 as@179@01) (inv@215@01 a@211@01 i@212@01))
  :pattern ((Set_in a@211@01 as@179@01) (img@214@01 a@211@01 i@212@01))
  :pattern ((Set_in a@211@01 as@179@01) (img@216@01 a@211@01 i@212@01))
  :pattern ((Set_in i@212@01 is@180@01) (inv@213@01 a@211@01 i@212@01))
  :pattern ((Set_in i@212@01 is@180@01) (inv@215@01 a@211@01 i@212@01))
  :pattern ((Set_in i@212@01 is@180@01) (img@214@01 a@211@01 i@212@01))
  :pattern ((Set_in i@212@01 is@180@01) (img@216@01 a@211@01 i@212@01))
  :pattern ((inv@213@01 a@211@01 i@212@01))
  :pattern ((inv@215@01 a@211@01 i@212@01))
  :pattern ((img@214@01 a@211@01 i@212@01))
  :pattern ((img@216@01 a@211@01 i@212@01))
  :qid |two-invOfFct|)))
(assert (forall ((a $Ref) (i Int)) (!
  (=>
    (and
      (and (img@214@01 a i) (img@216@01 a i))
      (and
        (Set_in (inv@213@01 a i) as@179@01)
        (Set_in (inv@215@01 a i) is@180@01)))
    (and (= (inv@213@01 a i) a) (= (inv@215@01 a i) i)))
  :pattern ((inv@213@01 a i))
  :pattern ((inv@215@01 a i))
  :qid |two-fctOfInv|)))
(assert (forall ((s@218@01 $Snap)) (!
  (and
    (=>
      (Set_in s@218@01 ($PSF.domain_two (as sm@217@01  $PSF<two>)))
      (and
        (and
          (Set_in (inv@213@01 ($SortWrappers.$SnapTo$Ref ($Snap.first s@218@01)) ($SortWrappers.$SnapToInt ($Snap.second s@218@01))) as@179@01)
          (Set_in (inv@215@01 ($SortWrappers.$SnapTo$Ref ($Snap.first s@218@01)) ($SortWrappers.$SnapToInt ($Snap.second s@218@01))) is@180@01))
        (and
          (img@214@01 ($SortWrappers.$SnapTo$Ref ($Snap.first s@218@01)) ($SortWrappers.$SnapToInt ($Snap.second s@218@01)))
          (img@216@01 ($SortWrappers.$SnapTo$Ref ($Snap.first s@218@01)) ($SortWrappers.$SnapToInt ($Snap.second s@218@01))))))
    (=>
      (and
        (and
          (Set_in (inv@213@01 ($SortWrappers.$SnapTo$Ref ($Snap.first s@218@01)) ($SortWrappers.$SnapToInt ($Snap.second s@218@01))) as@179@01)
          (Set_in (inv@215@01 ($SortWrappers.$SnapTo$Ref ($Snap.first s@218@01)) ($SortWrappers.$SnapToInt ($Snap.second s@218@01))) is@180@01))
        (and
          (img@214@01 ($SortWrappers.$SnapTo$Ref ($Snap.first s@218@01)) ($SortWrappers.$SnapToInt ($Snap.second s@218@01)))
          (img@216@01 ($SortWrappers.$SnapTo$Ref ($Snap.first s@218@01)) ($SortWrappers.$SnapToInt ($Snap.second s@218@01)))))
      (Set_in s@218@01 ($PSF.domain_two (as sm@217@01  $PSF<two>)))))
  :pattern ((Set_in s@218@01 ($PSF.domain_two (as sm@217@01  $PSF<two>))))
  :qid |qp.psmDomDef121|)))
(assert (forall ((s@218@01 $Snap)) (!
  (=>
    (and
      (and
        (and
          (Set_in (inv@213@01 ($SortWrappers.$SnapTo$Ref ($Snap.first s@218@01)) ($SortWrappers.$SnapToInt ($Snap.second s@218@01))) as@179@01)
          (Set_in (inv@215@01 ($SortWrappers.$SnapTo$Ref ($Snap.first s@218@01)) ($SortWrappers.$SnapToInt ($Snap.second s@218@01))) is@180@01))
        (and
          (img@214@01 ($SortWrappers.$SnapTo$Ref ($Snap.first s@218@01)) ($SortWrappers.$SnapToInt ($Snap.second s@218@01)))
          (img@216@01 ($SortWrappers.$SnapTo$Ref ($Snap.first s@218@01)) ($SortWrappers.$SnapToInt ($Snap.second s@218@01)))))
      (and
        (= ($SortWrappers.$SnapTo$Ref ($Snap.first s@218@01)) a1@181@01)
        (= ($SortWrappers.$SnapToInt ($Snap.second s@218@01)) i1@182@01)))
    (and
      (not (= s@218@01 $Snap.unit))
      (=
        ($PSF.lookup_two (as sm@217@01  $PSF<two>) s@218@01)
        ($PSF.lookup_two (as sm@208@01  $PSF<two>) s@218@01))))
  :pattern (($PSF.lookup_two (as sm@217@01  $PSF<two>) s@218@01))
  :pattern (($PSF.lookup_two (as sm@208@01  $PSF<two>) s@218@01))
  :qid |qp.psmValDef118|)))
(assert (forall ((s@218@01 $Snap)) (!
  (=>
    (and
      (and
        (and
          (Set_in (inv@213@01 ($SortWrappers.$SnapTo$Ref ($Snap.first s@218@01)) ($SortWrappers.$SnapToInt ($Snap.second s@218@01))) as@179@01)
          (Set_in (inv@215@01 ($SortWrappers.$SnapTo$Ref ($Snap.first s@218@01)) ($SortWrappers.$SnapToInt ($Snap.second s@218@01))) is@180@01))
        (and
          (img@214@01 ($SortWrappers.$SnapTo$Ref ($Snap.first s@218@01)) ($SortWrappers.$SnapToInt ($Snap.second s@218@01)))
          (img@216@01 ($SortWrappers.$SnapTo$Ref ($Snap.first s@218@01)) ($SortWrappers.$SnapToInt ($Snap.second s@218@01)))))
      (ite
        (and
          (and
            (img@189@01 ($SortWrappers.$SnapTo$Ref ($Snap.first s@218@01)) ($SortWrappers.$SnapToInt ($Snap.second s@218@01)))
            (img@191@01 ($SortWrappers.$SnapTo$Ref ($Snap.first s@218@01)) ($SortWrappers.$SnapToInt ($Snap.second s@218@01))))
          (and
            (Set_in (inv@188@01 ($SortWrappers.$SnapTo$Ref ($Snap.first s@218@01)) ($SortWrappers.$SnapToInt ($Snap.second s@218@01))) as@179@01)
            (Set_in (inv@190@01 ($SortWrappers.$SnapTo$Ref ($Snap.first s@218@01)) ($SortWrappers.$SnapToInt ($Snap.second s@218@01))) is@180@01)))
        (<
          $Perm.No
          (-
            $Perm.Write
            (pTaken@207@01 ($SortWrappers.$SnapTo$Ref ($Snap.first s@218@01)) ($SortWrappers.$SnapToInt ($Snap.second s@218@01)))))
        false))
    (and
      (not (= s@218@01 $Snap.unit))
      (=
        ($PSF.lookup_two (as sm@217@01  $PSF<two>) s@218@01)
        ($PSF.lookup_two $t@187@01 s@218@01))))
  :pattern (($PSF.lookup_two (as sm@217@01  $PSF<two>) s@218@01))
  :pattern (($PSF.lookup_two $t@187@01 s@218@01))
  :qid |qp.psmValDef119|)))
(assert (forall ((s@218@01 $Snap)) (!
  (and
    ($PSF.loc_two ($PSF.lookup_two (as sm@208@01  $PSF<two>) s@218@01) s@218@01)
    ($PSF.loc_two ($PSF.lookup_two $t@187@01 s@218@01) s@218@01))
  :pattern (($PSF.lookup_two (as sm@217@01  $PSF<two>) s@218@01))
  :qid |qp.psmResTrgDef120|)))
(assert (and
  (forall ((a@211@01 $Ref) (i@212@01 Int)) (!
    (=>
      (and (Set_in a@211@01 as@179@01) (Set_in i@212@01 is@180@01))
      (or (Set_in a@211@01 as@179@01) (not (Set_in a@211@01 as@179@01))))
    :pattern ((Set_in a@211@01 as@179@01) (Set_in i@212@01 is@180@01))
    :pattern ((Set_in a@211@01 as@179@01) (inv@213@01 a@211@01 i@212@01))
    :pattern ((Set_in a@211@01 as@179@01) (inv@215@01 a@211@01 i@212@01))
    :pattern ((Set_in a@211@01 as@179@01) (img@214@01 a@211@01 i@212@01))
    :pattern ((Set_in a@211@01 as@179@01) (img@216@01 a@211@01 i@212@01))
    :pattern ((Set_in i@212@01 is@180@01) (inv@213@01 a@211@01 i@212@01))
    :pattern ((Set_in i@212@01 is@180@01) (inv@215@01 a@211@01 i@212@01))
    :pattern ((Set_in i@212@01 is@180@01) (img@214@01 a@211@01 i@212@01))
    :pattern ((Set_in i@212@01 is@180@01) (img@216@01 a@211@01 i@212@01))
    :pattern ((inv@213@01 a@211@01 i@212@01))
    :pattern ((inv@215@01 a@211@01 i@212@01))
    :pattern ((img@214@01 a@211@01 i@212@01))
    :pattern ((img@216@01 a@211@01 i@212@01))
    :qid |two-aux|))
  (forall ((a $Ref) (i Int)) (!
    (=>
      (and
        (Set_in (inv@213@01 a i) as@179@01)
        (Set_in (inv@215@01 a i) is@180@01))
      ($PSF.loc_two ($PSF.lookup_two (as sm@209@01  $PSF<two>) ($Snap.combine
        ($SortWrappers.$RefTo$Snap a)
        ($SortWrappers.IntTo$Snap i))) ($Snap.combine
        ($SortWrappers.$RefTo$Snap a)
        ($SortWrappers.IntTo$Snap i))))
    :pattern ((inv@213@01 a i) (inv@215@01 a i))
    :qid |quant-u-9970|))
  (foo_twos%precondition ($SortWrappers.$PSF<two>To$Snap (as sm@217@01  $PSF<two>)) as@179@01 is@180@01)))
(push) ; 3
(assert (not (=
  (foo_twos ($SortWrappers.$PSF<two>To$Snap (as sm@217@01  $PSF<two>)) as@179@01 is@180@01)
  0)))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(assert (=
  (foo_twos ($SortWrappers.$PSF<two>To$Snap (as sm@217@01  $PSF<two>)) as@179@01 is@180@01)
  0))
(pop) ; 2
(pop) ; 1
; ---------- test_twos_3 ----------
(declare-const as@219@01 Set<$Ref>)
(declare-const is@220@01 Set<Int>)
(declare-const bs@221@01 Set<$Ref>)
(declare-const js@222@01 Set<Int>)
(declare-const as@223@01 Set<$Ref>)
(declare-const is@224@01 Set<Int>)
(declare-const bs@225@01 Set<$Ref>)
(declare-const js@226@01 Set<Int>)
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
; var b1: Ref
(declare-const b1@227@01 $Ref)
; [exec]
; var j1: Int
(declare-const j1@228@01 Int)
; [exec]
; var a1: Ref
(declare-const a1@229@01 $Ref)
; [exec]
; var i1: Int
(declare-const i1@230@01 Int)
; [exec]
; inhale (forall a: Ref, i: Int ::
;     { two(a, i) }
;     (a in as) && (i in is) ==> acc(two(a, i), write)) &&
;   (forall a$0: Ref, i$0: Int ::
;     { two(a$0, i$0) }
;     (a$0 in bs) && (i$0 in js) ==> acc(two(a$0, i$0), write))
(declare-const $t@231@01 $Snap)
(assert (= $t@231@01 ($Snap.combine ($Snap.first $t@231@01) ($Snap.second $t@231@01))))
(declare-const a@232@01 $Ref)
(declare-const i@233@01 Int)
(push) ; 3
; [eval] (a in as) && (i in is)
; [eval] (a in as)
(push) ; 4
; [then-branch: 6 | !(a@232@01 in as@223@01) | live]
; [else-branch: 6 | a@232@01 in as@223@01 | live]
(push) ; 5
; [then-branch: 6 | !(a@232@01 in as@223@01)]
(assert (not (Set_in a@232@01 as@223@01)))
(pop) ; 5
(push) ; 5
; [else-branch: 6 | a@232@01 in as@223@01]
(assert (Set_in a@232@01 as@223@01))
; [eval] (i in is)
(pop) ; 5
(pop) ; 4
; Joined path conditions
; Joined path conditions
(assert (or (Set_in a@232@01 as@223@01) (not (Set_in a@232@01 as@223@01))))
(assert (and (Set_in a@232@01 as@223@01) (Set_in i@233@01 is@224@01)))
(declare-const sm@234@01 $PSF<two>)
(declare-const s@235@01 $Snap)
; Definitional axioms for snapshot map values
(pop) ; 3
(declare-fun inv@236@01 ($Ref Int) $Ref)
(declare-fun img@237@01 ($Ref Int) Bool)
(declare-fun inv@238@01 ($Ref Int) Int)
(declare-fun img@239@01 ($Ref Int) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
(assert (forall ((a@232@01 $Ref) (i@233@01 Int)) (!
  (=>
    (and (Set_in a@232@01 as@223@01) (Set_in i@233@01 is@224@01))
    (or (Set_in a@232@01 as@223@01) (not (Set_in a@232@01 as@223@01))))
  :pattern (($PSF.loc_two ($PSF.lookup_two ($SortWrappers.$SnapTo$PSF<two> ($Snap.first $t@231@01)) ($Snap.combine
    ($SortWrappers.$RefTo$Snap a@232@01)
    ($SortWrappers.IntTo$Snap i@233@01))) ($Snap.combine
    ($SortWrappers.$RefTo$Snap a@232@01)
    ($SortWrappers.IntTo$Snap i@233@01))))
  :qid |two-aux|)))
; Check receiver injectivity
(push) ; 3
(assert (not (forall ((a1@232@01 $Ref) (i1@233@01 Int) (a2@232@01 $Ref) (i2@233@01 Int)) (!
  (=>
    (and
      (and (Set_in a1@232@01 as@223@01) (Set_in i1@233@01 is@224@01))
      (and (Set_in a2@232@01 as@223@01) (Set_in i2@233@01 is@224@01))
      (and (= a1@232@01 a2@232@01) (= i1@233@01 i2@233@01)))
    (and (= a1@232@01 a2@232@01) (= i1@233@01 i2@233@01)))
  
  :qid |two-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((a@232@01 $Ref) (i@233@01 Int)) (!
  (=>
    (and (Set_in a@232@01 as@223@01) (Set_in i@233@01 is@224@01))
    (and
      (and
        (= (inv@236@01 a@232@01 i@233@01) a@232@01)
        (= (inv@238@01 a@232@01 i@233@01) i@233@01))
      (and (img@237@01 a@232@01 i@233@01) (img@239@01 a@232@01 i@233@01))))
  :pattern (($PSF.loc_two ($PSF.lookup_two ($SortWrappers.$SnapTo$PSF<two> ($Snap.first $t@231@01)) ($Snap.combine
    ($SortWrappers.$RefTo$Snap a@232@01)
    ($SortWrappers.IntTo$Snap i@233@01))) ($Snap.combine
    ($SortWrappers.$RefTo$Snap a@232@01)
    ($SortWrappers.IntTo$Snap i@233@01))))
  :qid |quant-u-9973|)))
(assert (forall ((a $Ref) (i Int)) (!
  (=>
    (and
      (and (img@237@01 a i) (img@239@01 a i))
      (and
        (Set_in (inv@236@01 a i) as@223@01)
        (Set_in (inv@238@01 a i) is@224@01)))
    (and (= (inv@236@01 a i) a) (= (inv@238@01 a i) i)))
  :pattern ((inv@236@01 a i))
  :pattern ((inv@238@01 a i))
  :qid |two-fctOfInv|)))
; Permissions are non-negative
(declare-const sm@240@01 $PSF<two>)
(declare-const s@241@01 $Snap)
; Definitional axioms for snapshot map values
(assert (forall ((s@241@01 $Snap)) (!
  (=>
    (and
      (and
        (img@237@01 ($SortWrappers.$SnapTo$Ref ($Snap.first s@241@01)) ($SortWrappers.$SnapToInt ($Snap.second s@241@01)))
        (img@239@01 ($SortWrappers.$SnapTo$Ref ($Snap.first s@241@01)) ($SortWrappers.$SnapToInt ($Snap.second s@241@01))))
      (and
        (Set_in (inv@236@01 ($SortWrappers.$SnapTo$Ref ($Snap.first s@241@01)) ($SortWrappers.$SnapToInt ($Snap.second s@241@01))) as@223@01)
        (Set_in (inv@238@01 ($SortWrappers.$SnapTo$Ref ($Snap.first s@241@01)) ($SortWrappers.$SnapToInt ($Snap.second s@241@01))) is@224@01)))
    (and
      (not (= s@241@01 $Snap.unit))
      (=
        ($PSF.lookup_two (as sm@240@01  $PSF<two>) s@241@01)
        ($PSF.lookup_two ($SortWrappers.$SnapTo$PSF<two> ($Snap.first $t@231@01)) s@241@01))))
  :pattern (($PSF.lookup_two (as sm@240@01  $PSF<two>) s@241@01))
  :pattern (($PSF.lookup_two ($SortWrappers.$SnapTo$PSF<two> ($Snap.first $t@231@01)) s@241@01))
  :qid |qp.psmValDef123|)))
(assert (forall ((s@241@01 $Snap)) (!
  ($PSF.loc_two ($PSF.lookup_two ($SortWrappers.$SnapTo$PSF<two> ($Snap.first $t@231@01)) s@241@01) s@241@01)
  :pattern (($PSF.lookup_two (as sm@240@01  $PSF<two>) s@241@01))
  :qid |qp.psmResTrgDef124|)))
(assert (forall ((a $Ref) (i Int)) (!
  (=>
    (and (Set_in (inv@236@01 a i) as@223@01) (Set_in (inv@238@01 a i) is@224@01))
    ($PSF.loc_two ($PSF.lookup_two (as sm@240@01  $PSF<two>) ($Snap.combine
      ($SortWrappers.$RefTo$Snap a)
      ($SortWrappers.IntTo$Snap i))) ($Snap.combine
      ($SortWrappers.$RefTo$Snap a)
      ($SortWrappers.IntTo$Snap i))))
  :pattern ((inv@236@01 a i) (inv@238@01 a i))
  :qid |quant-u-9974|)))
(declare-const a$0@242@01 $Ref)
(declare-const i$0@243@01 Int)
(push) ; 3
; [eval] (a$0 in bs) && (i$0 in js)
; [eval] (a$0 in bs)
(push) ; 4
; [then-branch: 7 | !(a$0@242@01 in bs@225@01) | live]
; [else-branch: 7 | a$0@242@01 in bs@225@01 | live]
(push) ; 5
; [then-branch: 7 | !(a$0@242@01 in bs@225@01)]
(assert (not (Set_in a$0@242@01 bs@225@01)))
(pop) ; 5
(push) ; 5
; [else-branch: 7 | a$0@242@01 in bs@225@01]
(assert (Set_in a$0@242@01 bs@225@01))
; [eval] (i$0 in js)
(pop) ; 5
(pop) ; 4
; Joined path conditions
; Joined path conditions
(assert (or (Set_in a$0@242@01 bs@225@01) (not (Set_in a$0@242@01 bs@225@01))))
(assert (and (Set_in a$0@242@01 bs@225@01) (Set_in i$0@243@01 js@226@01)))
; Definitional axioms for snapshot map values
(pop) ; 3
(declare-fun inv@244@01 ($Ref Int) $Ref)
(declare-fun img@245@01 ($Ref Int) Bool)
(declare-fun inv@246@01 ($Ref Int) Int)
(declare-fun img@247@01 ($Ref Int) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
(assert (forall ((a$0@242@01 $Ref) (i$0@243@01 Int)) (!
  (=>
    (and (Set_in a$0@242@01 bs@225@01) (Set_in i$0@243@01 js@226@01))
    (or (Set_in a$0@242@01 bs@225@01) (not (Set_in a$0@242@01 bs@225@01))))
  :pattern (($PSF.loc_two ($PSF.lookup_two ($SortWrappers.$SnapTo$PSF<two> ($Snap.second $t@231@01)) ($Snap.combine
    ($SortWrappers.$RefTo$Snap a$0@242@01)
    ($SortWrappers.IntTo$Snap i$0@243@01))) ($Snap.combine
    ($SortWrappers.$RefTo$Snap a$0@242@01)
    ($SortWrappers.IntTo$Snap i$0@243@01))))
  :qid |two-aux|)))
; Check receiver injectivity
(push) ; 3
(assert (not (forall ((a$01@242@01 $Ref) (i$01@243@01 Int) (a$02@242@01 $Ref) (i$02@243@01 Int)) (!
  (=>
    (and
      (and (Set_in a$01@242@01 bs@225@01) (Set_in i$01@243@01 js@226@01))
      (and (Set_in a$02@242@01 bs@225@01) (Set_in i$02@243@01 js@226@01))
      (and (= a$01@242@01 a$02@242@01) (= i$01@243@01 i$02@243@01)))
    (and (= a$01@242@01 a$02@242@01) (= i$01@243@01 i$02@243@01)))
  
  :qid |two-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((a$0@242@01 $Ref) (i$0@243@01 Int)) (!
  (=>
    (and (Set_in a$0@242@01 bs@225@01) (Set_in i$0@243@01 js@226@01))
    (and
      (and
        (= (inv@244@01 a$0@242@01 i$0@243@01) a$0@242@01)
        (= (inv@246@01 a$0@242@01 i$0@243@01) i$0@243@01))
      (and (img@245@01 a$0@242@01 i$0@243@01) (img@247@01 a$0@242@01 i$0@243@01))))
  :pattern (($PSF.loc_two ($PSF.lookup_two ($SortWrappers.$SnapTo$PSF<two> ($Snap.second $t@231@01)) ($Snap.combine
    ($SortWrappers.$RefTo$Snap a$0@242@01)
    ($SortWrappers.IntTo$Snap i$0@243@01))) ($Snap.combine
    ($SortWrappers.$RefTo$Snap a$0@242@01)
    ($SortWrappers.IntTo$Snap i$0@243@01))))
  :qid |quant-u-9976|)))
(assert (forall ((a $Ref) (i Int)) (!
  (=>
    (and
      (and (img@245@01 a i) (img@247@01 a i))
      (and
        (Set_in (inv@244@01 a i) bs@225@01)
        (Set_in (inv@246@01 a i) js@226@01)))
    (and (= (inv@244@01 a i) a) (= (inv@246@01 a i) i)))
  :pattern ((inv@244@01 a i))
  :pattern ((inv@246@01 a i))
  :qid |two-fctOfInv|)))
; Permissions are non-negative
(push) ; 3
(set-option :timeout 10)
(assert (not (forall ((a $Ref) (i Int)) (!
  (and
    (= a$0@242@01 a@232@01)
    (=
      (and
        (and (img@245@01 a i) (img@247@01 a i))
        (and
          (Set_in (inv@244@01 a i) bs@225@01)
          (Set_in (inv@246@01 a i) js@226@01)))
      (and
        (and (img@237@01 a i) (img@239@01 a i))
        (and
          (Set_in (inv@236@01 a i) as@223@01)
          (Set_in (inv@238@01 a i) is@224@01)))))
  
  :qid |quant-u-9977|))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(declare-const sm@248@01 $PSF<two>)
(declare-const s@249@01 $Snap)
; Definitional axioms for snapshot map values
(assert (forall ((s@249@01 $Snap)) (!
  (=>
    (and
      (and
        (img@237@01 ($SortWrappers.$SnapTo$Ref ($Snap.first s@249@01)) ($SortWrappers.$SnapToInt ($Snap.second s@249@01)))
        (img@239@01 ($SortWrappers.$SnapTo$Ref ($Snap.first s@249@01)) ($SortWrappers.$SnapToInt ($Snap.second s@249@01))))
      (and
        (Set_in (inv@236@01 ($SortWrappers.$SnapTo$Ref ($Snap.first s@249@01)) ($SortWrappers.$SnapToInt ($Snap.second s@249@01))) as@223@01)
        (Set_in (inv@238@01 ($SortWrappers.$SnapTo$Ref ($Snap.first s@249@01)) ($SortWrappers.$SnapToInt ($Snap.second s@249@01))) is@224@01)))
    (and
      (not (= s@249@01 $Snap.unit))
      (=
        ($PSF.lookup_two (as sm@248@01  $PSF<two>) s@249@01)
        ($PSF.lookup_two ($SortWrappers.$SnapTo$PSF<two> ($Snap.first $t@231@01)) s@249@01))))
  :pattern (($PSF.lookup_two (as sm@248@01  $PSF<two>) s@249@01))
  :pattern (($PSF.lookup_two ($SortWrappers.$SnapTo$PSF<two> ($Snap.first $t@231@01)) s@249@01))
  :qid |qp.psmValDef125|)))
(assert (forall ((s@249@01 $Snap)) (!
  (=>
    (and
      (and
        (img@245@01 ($SortWrappers.$SnapTo$Ref ($Snap.first s@249@01)) ($SortWrappers.$SnapToInt ($Snap.second s@249@01)))
        (img@247@01 ($SortWrappers.$SnapTo$Ref ($Snap.first s@249@01)) ($SortWrappers.$SnapToInt ($Snap.second s@249@01))))
      (and
        (Set_in (inv@244@01 ($SortWrappers.$SnapTo$Ref ($Snap.first s@249@01)) ($SortWrappers.$SnapToInt ($Snap.second s@249@01))) bs@225@01)
        (Set_in (inv@246@01 ($SortWrappers.$SnapTo$Ref ($Snap.first s@249@01)) ($SortWrappers.$SnapToInt ($Snap.second s@249@01))) js@226@01)))
    (and
      (not (= s@249@01 $Snap.unit))
      (=
        ($PSF.lookup_two (as sm@248@01  $PSF<two>) s@249@01)
        ($PSF.lookup_two ($SortWrappers.$SnapTo$PSF<two> ($Snap.second $t@231@01)) s@249@01))))
  :pattern (($PSF.lookup_two (as sm@248@01  $PSF<two>) s@249@01))
  :pattern (($PSF.lookup_two ($SortWrappers.$SnapTo$PSF<two> ($Snap.second $t@231@01)) s@249@01))
  :qid |qp.psmValDef126|)))
(assert (forall ((s@249@01 $Snap)) (!
  (and
    ($PSF.loc_two ($PSF.lookup_two ($SortWrappers.$SnapTo$PSF<two> ($Snap.first $t@231@01)) s@249@01) s@249@01)
    ($PSF.loc_two ($PSF.lookup_two ($SortWrappers.$SnapTo$PSF<two> ($Snap.second $t@231@01)) s@249@01) s@249@01))
  :pattern (($PSF.lookup_two (as sm@248@01  $PSF<two>) s@249@01))
  :qid |qp.psmResTrgDef127|)))
(assert (forall ((a $Ref) (i Int)) (!
  (=>
    (and (Set_in (inv@244@01 a i) bs@225@01) (Set_in (inv@246@01 a i) js@226@01))
    ($PSF.loc_two ($PSF.lookup_two (as sm@248@01  $PSF<two>) ($Snap.combine
      ($SortWrappers.$RefTo$Snap a)
      ($SortWrappers.IntTo$Snap i))) ($Snap.combine
      ($SortWrappers.$RefTo$Snap a)
      ($SortWrappers.IntTo$Snap i))))
  :pattern ((inv@244@01 a i) (inv@246@01 a i))
  :qid |quant-u-9978|)))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale foo_twos(as, is) == 0
(declare-const $t@250@01 $Snap)
(assert (= $t@250@01 $Snap.unit))
; [eval] foo_twos(as, is) == 0
; [eval] foo_twos(as, is)
(set-option :timeout 0)
(push) ; 3
(declare-const a@251@01 $Ref)
(declare-const i@252@01 Int)
(push) ; 4
; [eval] (a in as) && (i in is)
; [eval] (a in as)
(push) ; 5
; [then-branch: 8 | !(a@251@01 in as@223@01) | live]
; [else-branch: 8 | a@251@01 in as@223@01 | live]
(push) ; 6
; [then-branch: 8 | !(a@251@01 in as@223@01)]
(assert (not (Set_in a@251@01 as@223@01)))
(pop) ; 6
(push) ; 6
; [else-branch: 8 | a@251@01 in as@223@01]
(assert (Set_in a@251@01 as@223@01))
; [eval] (i in is)
(pop) ; 6
(pop) ; 5
; Joined path conditions
; Joined path conditions
(assert (or (Set_in a@251@01 as@223@01) (not (Set_in a@251@01 as@223@01))))
(assert (and (Set_in a@251@01 as@223@01) (Set_in i@252@01 is@224@01)))
(pop) ; 4
(declare-fun inv@253@01 ($Ref Int) $Ref)
(declare-fun img@254@01 ($Ref Int) Bool)
(declare-fun inv@255@01 ($Ref Int) Int)
(declare-fun img@256@01 ($Ref Int) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
(assert (forall ((a@251@01 $Ref) (i@252@01 Int)) (!
  (=>
    (and (Set_in a@251@01 as@223@01) (Set_in i@252@01 is@224@01))
    (or (Set_in a@251@01 as@223@01) (not (Set_in a@251@01 as@223@01))))
  :pattern ((Set_in a@251@01 as@223@01) (Set_in i@252@01 is@224@01))
  :pattern ((Set_in a@251@01 as@223@01) (inv@253@01 a@251@01 i@252@01))
  :pattern ((Set_in a@251@01 as@223@01) (inv@255@01 a@251@01 i@252@01))
  :pattern ((Set_in a@251@01 as@223@01) (img@254@01 a@251@01 i@252@01))
  :pattern ((Set_in a@251@01 as@223@01) (img@256@01 a@251@01 i@252@01))
  :pattern ((Set_in i@252@01 is@224@01) (inv@253@01 a@251@01 i@252@01))
  :pattern ((Set_in i@252@01 is@224@01) (inv@255@01 a@251@01 i@252@01))
  :pattern ((Set_in i@252@01 is@224@01) (img@254@01 a@251@01 i@252@01))
  :pattern ((Set_in i@252@01 is@224@01) (img@256@01 a@251@01 i@252@01))
  :pattern ((inv@253@01 a@251@01 i@252@01))
  :pattern ((inv@255@01 a@251@01 i@252@01))
  :pattern ((img@254@01 a@251@01 i@252@01))
  :pattern ((img@256@01 a@251@01 i@252@01))
  :qid |two-aux|)))
; Definitional axioms for snapshot map domain
; Definitional axioms for snapshot map values
; Check receiver injectivity
(push) ; 4
(assert (not (forall ((a1@251@01 $Ref) (i1@252@01 Int) (a2@251@01 $Ref) (i2@252@01 Int)) (!
  (=>
    (and
      (and
        (and (Set_in a1@251@01 as@223@01) (Set_in i1@252@01 is@224@01))
        ($PSF.loc_two ($PSF.lookup_two (as sm@248@01  $PSF<two>) ($Snap.combine
          ($SortWrappers.$RefTo$Snap a1@251@01)
          ($SortWrappers.IntTo$Snap i1@252@01))) ($Snap.combine
          ($SortWrappers.$RefTo$Snap a1@251@01)
          ($SortWrappers.IntTo$Snap i1@252@01))))
      (and
        (and (Set_in a2@251@01 as@223@01) (Set_in i2@252@01 is@224@01))
        ($PSF.loc_two ($PSF.lookup_two (as sm@248@01  $PSF<two>) ($Snap.combine
          ($SortWrappers.$RefTo$Snap a2@251@01)
          ($SortWrappers.IntTo$Snap i2@252@01))) ($Snap.combine
          ($SortWrappers.$RefTo$Snap a2@251@01)
          ($SortWrappers.IntTo$Snap i2@252@01))))
      (and (= a1@251@01 a2@251@01) (= i1@252@01 i2@252@01)))
    (and (= a1@251@01 a2@251@01) (= i1@252@01 i2@252@01)))
  
  :qid |two-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((a@251@01 $Ref) (i@252@01 Int)) (!
  (=>
    (and (Set_in a@251@01 as@223@01) (Set_in i@252@01 is@224@01))
    (and
      (and
        (= (inv@253@01 a@251@01 i@252@01) a@251@01)
        (= (inv@255@01 a@251@01 i@252@01) i@252@01))
      (and (img@254@01 a@251@01 i@252@01) (img@256@01 a@251@01 i@252@01))))
  :pattern ((Set_in a@251@01 as@223@01) (Set_in i@252@01 is@224@01))
  :pattern ((Set_in a@251@01 as@223@01) (inv@253@01 a@251@01 i@252@01))
  :pattern ((Set_in a@251@01 as@223@01) (inv@255@01 a@251@01 i@252@01))
  :pattern ((Set_in a@251@01 as@223@01) (img@254@01 a@251@01 i@252@01))
  :pattern ((Set_in a@251@01 as@223@01) (img@256@01 a@251@01 i@252@01))
  :pattern ((Set_in i@252@01 is@224@01) (inv@253@01 a@251@01 i@252@01))
  :pattern ((Set_in i@252@01 is@224@01) (inv@255@01 a@251@01 i@252@01))
  :pattern ((Set_in i@252@01 is@224@01) (img@254@01 a@251@01 i@252@01))
  :pattern ((Set_in i@252@01 is@224@01) (img@256@01 a@251@01 i@252@01))
  :pattern ((inv@253@01 a@251@01 i@252@01))
  :pattern ((inv@255@01 a@251@01 i@252@01))
  :pattern ((img@254@01 a@251@01 i@252@01))
  :pattern ((img@256@01 a@251@01 i@252@01))
  :qid |two-invOfFct|)))
(assert (forall ((a $Ref) (i Int)) (!
  (=>
    (and
      (and (img@254@01 a i) (img@256@01 a i))
      (and
        (Set_in (inv@253@01 a i) as@223@01)
        (Set_in (inv@255@01 a i) is@224@01)))
    (and (= (inv@253@01 a i) a) (= (inv@255@01 a i) i)))
  :pattern ((inv@253@01 a i))
  :pattern ((inv@255@01 a i))
  :qid |two-fctOfInv|)))
(assert (forall ((a $Ref) (i Int)) (!
  (=>
    (and (Set_in (inv@253@01 a i) as@223@01) (Set_in (inv@255@01 a i) is@224@01))
    ($PSF.loc_two ($PSF.lookup_two (as sm@248@01  $PSF<two>) ($Snap.combine
      ($SortWrappers.$RefTo$Snap a)
      ($SortWrappers.IntTo$Snap i))) ($Snap.combine
      ($SortWrappers.$RefTo$Snap a)
      ($SortWrappers.IntTo$Snap i))))
  :pattern ((inv@253@01 a i) (inv@255@01 a i))
  :qid |quant-u-9980|)))
(push) ; 4
(assert (not (forall ((a $Ref) (i Int)) (!
  (=>
    (and
      (and
        (Set_in (inv@253@01 a i) as@223@01)
        (Set_in (inv@255@01 a i) is@224@01))
      (and (img@254@01 a i) (img@256@01 a i))
      (and (= a (inv@253@01 a i)) (= i (inv@255@01 a i))))
    (>
      (+
        (ite
          (and
            (and (img@237@01 a i) (img@239@01 a i))
            (and
              (Set_in (inv@236@01 a i) as@223@01)
              (Set_in (inv@238@01 a i) is@224@01)))
          $Perm.Write
          $Perm.No)
        (ite
          (and
            (and (img@245@01 a i) (img@247@01 a i))
            (and
              (Set_in (inv@244@01 a i) bs@225@01)
              (Set_in (inv@246@01 a i) js@226@01)))
          $Perm.Write
          $Perm.No))
      $Perm.No))
  
  :qid |quant-u-9981|))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(declare-const sm@257@01 $PSF<two>)
(declare-const s@258@01 $Snap)
; Definitional axioms for snapshot map domain
(assert (forall ((s@258@01 $Snap)) (!
  (and
    (=>
      (Set_in s@258@01 ($PSF.domain_two (as sm@257@01  $PSF<two>)))
      (and
        (and
          (Set_in (inv@253@01 ($SortWrappers.$SnapTo$Ref ($Snap.first s@258@01)) ($SortWrappers.$SnapToInt ($Snap.second s@258@01))) as@223@01)
          (Set_in (inv@255@01 ($SortWrappers.$SnapTo$Ref ($Snap.first s@258@01)) ($SortWrappers.$SnapToInt ($Snap.second s@258@01))) is@224@01))
        (and
          (img@254@01 ($SortWrappers.$SnapTo$Ref ($Snap.first s@258@01)) ($SortWrappers.$SnapToInt ($Snap.second s@258@01)))
          (img@256@01 ($SortWrappers.$SnapTo$Ref ($Snap.first s@258@01)) ($SortWrappers.$SnapToInt ($Snap.second s@258@01))))))
    (=>
      (and
        (and
          (Set_in (inv@253@01 ($SortWrappers.$SnapTo$Ref ($Snap.first s@258@01)) ($SortWrappers.$SnapToInt ($Snap.second s@258@01))) as@223@01)
          (Set_in (inv@255@01 ($SortWrappers.$SnapTo$Ref ($Snap.first s@258@01)) ($SortWrappers.$SnapToInt ($Snap.second s@258@01))) is@224@01))
        (and
          (img@254@01 ($SortWrappers.$SnapTo$Ref ($Snap.first s@258@01)) ($SortWrappers.$SnapToInt ($Snap.second s@258@01)))
          (img@256@01 ($SortWrappers.$SnapTo$Ref ($Snap.first s@258@01)) ($SortWrappers.$SnapToInt ($Snap.second s@258@01)))))
      (Set_in s@258@01 ($PSF.domain_two (as sm@257@01  $PSF<two>)))))
  :pattern ((Set_in s@258@01 ($PSF.domain_two (as sm@257@01  $PSF<two>))))
  :qid |qp.psmDomDef131|)))
; Definitional axioms for snapshot map values
(assert (forall ((s@258@01 $Snap)) (!
  (=>
    (and
      (and
        (and
          (Set_in (inv@253@01 ($SortWrappers.$SnapTo$Ref ($Snap.first s@258@01)) ($SortWrappers.$SnapToInt ($Snap.second s@258@01))) as@223@01)
          (Set_in (inv@255@01 ($SortWrappers.$SnapTo$Ref ($Snap.first s@258@01)) ($SortWrappers.$SnapToInt ($Snap.second s@258@01))) is@224@01))
        (and
          (img@254@01 ($SortWrappers.$SnapTo$Ref ($Snap.first s@258@01)) ($SortWrappers.$SnapToInt ($Snap.second s@258@01)))
          (img@256@01 ($SortWrappers.$SnapTo$Ref ($Snap.first s@258@01)) ($SortWrappers.$SnapToInt ($Snap.second s@258@01)))))
      (and
        (and
          (img@237@01 ($SortWrappers.$SnapTo$Ref ($Snap.first s@258@01)) ($SortWrappers.$SnapToInt ($Snap.second s@258@01)))
          (img@239@01 ($SortWrappers.$SnapTo$Ref ($Snap.first s@258@01)) ($SortWrappers.$SnapToInt ($Snap.second s@258@01))))
        (and
          (Set_in (inv@236@01 ($SortWrappers.$SnapTo$Ref ($Snap.first s@258@01)) ($SortWrappers.$SnapToInt ($Snap.second s@258@01))) as@223@01)
          (Set_in (inv@238@01 ($SortWrappers.$SnapTo$Ref ($Snap.first s@258@01)) ($SortWrappers.$SnapToInt ($Snap.second s@258@01))) is@224@01))))
    (and
      (not (= s@258@01 $Snap.unit))
      (=
        ($PSF.lookup_two (as sm@257@01  $PSF<two>) s@258@01)
        ($PSF.lookup_two ($SortWrappers.$SnapTo$PSF<two> ($Snap.first $t@231@01)) s@258@01))))
  :pattern (($PSF.lookup_two (as sm@257@01  $PSF<two>) s@258@01))
  :pattern (($PSF.lookup_two ($SortWrappers.$SnapTo$PSF<two> ($Snap.first $t@231@01)) s@258@01))
  :qid |qp.psmValDef128|)))
(assert (forall ((s@258@01 $Snap)) (!
  (=>
    (and
      (and
        (and
          (Set_in (inv@253@01 ($SortWrappers.$SnapTo$Ref ($Snap.first s@258@01)) ($SortWrappers.$SnapToInt ($Snap.second s@258@01))) as@223@01)
          (Set_in (inv@255@01 ($SortWrappers.$SnapTo$Ref ($Snap.first s@258@01)) ($SortWrappers.$SnapToInt ($Snap.second s@258@01))) is@224@01))
        (and
          (img@254@01 ($SortWrappers.$SnapTo$Ref ($Snap.first s@258@01)) ($SortWrappers.$SnapToInt ($Snap.second s@258@01)))
          (img@256@01 ($SortWrappers.$SnapTo$Ref ($Snap.first s@258@01)) ($SortWrappers.$SnapToInt ($Snap.second s@258@01)))))
      (and
        (and
          (img@245@01 ($SortWrappers.$SnapTo$Ref ($Snap.first s@258@01)) ($SortWrappers.$SnapToInt ($Snap.second s@258@01)))
          (img@247@01 ($SortWrappers.$SnapTo$Ref ($Snap.first s@258@01)) ($SortWrappers.$SnapToInt ($Snap.second s@258@01))))
        (and
          (Set_in (inv@244@01 ($SortWrappers.$SnapTo$Ref ($Snap.first s@258@01)) ($SortWrappers.$SnapToInt ($Snap.second s@258@01))) bs@225@01)
          (Set_in (inv@246@01 ($SortWrappers.$SnapTo$Ref ($Snap.first s@258@01)) ($SortWrappers.$SnapToInt ($Snap.second s@258@01))) js@226@01))))
    (and
      (not (= s@258@01 $Snap.unit))
      (=
        ($PSF.lookup_two (as sm@257@01  $PSF<two>) s@258@01)
        ($PSF.lookup_two ($SortWrappers.$SnapTo$PSF<two> ($Snap.second $t@231@01)) s@258@01))))
  :pattern (($PSF.lookup_two (as sm@257@01  $PSF<two>) s@258@01))
  :pattern (($PSF.lookup_two ($SortWrappers.$SnapTo$PSF<two> ($Snap.second $t@231@01)) s@258@01))
  :qid |qp.psmValDef129|)))
(assert (forall ((s@258@01 $Snap)) (!
  (and
    ($PSF.loc_two ($PSF.lookup_two ($SortWrappers.$SnapTo$PSF<two> ($Snap.first $t@231@01)) s@258@01) s@258@01)
    ($PSF.loc_two ($PSF.lookup_two ($SortWrappers.$SnapTo$PSF<two> ($Snap.second $t@231@01)) s@258@01) s@258@01))
  :pattern (($PSF.lookup_two (as sm@257@01  $PSF<two>) s@258@01))
  :qid |qp.psmResTrgDef130|)))
(assert (foo_twos%precondition ($SortWrappers.$PSF<two>To$Snap (as sm@257@01  $PSF<two>)) as@223@01 is@224@01))
(pop) ; 3
; Joined path conditions
(assert (forall ((a@251@01 $Ref) (i@252@01 Int)) (!
  (=>
    (and (Set_in a@251@01 as@223@01) (Set_in i@252@01 is@224@01))
    (and
      (and
        (= (inv@253@01 a@251@01 i@252@01) a@251@01)
        (= (inv@255@01 a@251@01 i@252@01) i@252@01))
      (and (img@254@01 a@251@01 i@252@01) (img@256@01 a@251@01 i@252@01))))
  :pattern ((Set_in a@251@01 as@223@01) (Set_in i@252@01 is@224@01))
  :pattern ((Set_in a@251@01 as@223@01) (inv@253@01 a@251@01 i@252@01))
  :pattern ((Set_in a@251@01 as@223@01) (inv@255@01 a@251@01 i@252@01))
  :pattern ((Set_in a@251@01 as@223@01) (img@254@01 a@251@01 i@252@01))
  :pattern ((Set_in a@251@01 as@223@01) (img@256@01 a@251@01 i@252@01))
  :pattern ((Set_in i@252@01 is@224@01) (inv@253@01 a@251@01 i@252@01))
  :pattern ((Set_in i@252@01 is@224@01) (inv@255@01 a@251@01 i@252@01))
  :pattern ((Set_in i@252@01 is@224@01) (img@254@01 a@251@01 i@252@01))
  :pattern ((Set_in i@252@01 is@224@01) (img@256@01 a@251@01 i@252@01))
  :pattern ((inv@253@01 a@251@01 i@252@01))
  :pattern ((inv@255@01 a@251@01 i@252@01))
  :pattern ((img@254@01 a@251@01 i@252@01))
  :pattern ((img@256@01 a@251@01 i@252@01))
  :qid |two-invOfFct|)))
(assert (forall ((a $Ref) (i Int)) (!
  (=>
    (and
      (and (img@254@01 a i) (img@256@01 a i))
      (and
        (Set_in (inv@253@01 a i) as@223@01)
        (Set_in (inv@255@01 a i) is@224@01)))
    (and (= (inv@253@01 a i) a) (= (inv@255@01 a i) i)))
  :pattern ((inv@253@01 a i))
  :pattern ((inv@255@01 a i))
  :qid |two-fctOfInv|)))
(assert (forall ((s@258@01 $Snap)) (!
  (and
    (=>
      (Set_in s@258@01 ($PSF.domain_two (as sm@257@01  $PSF<two>)))
      (and
        (and
          (Set_in (inv@253@01 ($SortWrappers.$SnapTo$Ref ($Snap.first s@258@01)) ($SortWrappers.$SnapToInt ($Snap.second s@258@01))) as@223@01)
          (Set_in (inv@255@01 ($SortWrappers.$SnapTo$Ref ($Snap.first s@258@01)) ($SortWrappers.$SnapToInt ($Snap.second s@258@01))) is@224@01))
        (and
          (img@254@01 ($SortWrappers.$SnapTo$Ref ($Snap.first s@258@01)) ($SortWrappers.$SnapToInt ($Snap.second s@258@01)))
          (img@256@01 ($SortWrappers.$SnapTo$Ref ($Snap.first s@258@01)) ($SortWrappers.$SnapToInt ($Snap.second s@258@01))))))
    (=>
      (and
        (and
          (Set_in (inv@253@01 ($SortWrappers.$SnapTo$Ref ($Snap.first s@258@01)) ($SortWrappers.$SnapToInt ($Snap.second s@258@01))) as@223@01)
          (Set_in (inv@255@01 ($SortWrappers.$SnapTo$Ref ($Snap.first s@258@01)) ($SortWrappers.$SnapToInt ($Snap.second s@258@01))) is@224@01))
        (and
          (img@254@01 ($SortWrappers.$SnapTo$Ref ($Snap.first s@258@01)) ($SortWrappers.$SnapToInt ($Snap.second s@258@01)))
          (img@256@01 ($SortWrappers.$SnapTo$Ref ($Snap.first s@258@01)) ($SortWrappers.$SnapToInt ($Snap.second s@258@01)))))
      (Set_in s@258@01 ($PSF.domain_two (as sm@257@01  $PSF<two>)))))
  :pattern ((Set_in s@258@01 ($PSF.domain_two (as sm@257@01  $PSF<two>))))
  :qid |qp.psmDomDef131|)))
(assert (forall ((s@258@01 $Snap)) (!
  (=>
    (and
      (and
        (and
          (Set_in (inv@253@01 ($SortWrappers.$SnapTo$Ref ($Snap.first s@258@01)) ($SortWrappers.$SnapToInt ($Snap.second s@258@01))) as@223@01)
          (Set_in (inv@255@01 ($SortWrappers.$SnapTo$Ref ($Snap.first s@258@01)) ($SortWrappers.$SnapToInt ($Snap.second s@258@01))) is@224@01))
        (and
          (img@254@01 ($SortWrappers.$SnapTo$Ref ($Snap.first s@258@01)) ($SortWrappers.$SnapToInt ($Snap.second s@258@01)))
          (img@256@01 ($SortWrappers.$SnapTo$Ref ($Snap.first s@258@01)) ($SortWrappers.$SnapToInt ($Snap.second s@258@01)))))
      (and
        (and
          (img@237@01 ($SortWrappers.$SnapTo$Ref ($Snap.first s@258@01)) ($SortWrappers.$SnapToInt ($Snap.second s@258@01)))
          (img@239@01 ($SortWrappers.$SnapTo$Ref ($Snap.first s@258@01)) ($SortWrappers.$SnapToInt ($Snap.second s@258@01))))
        (and
          (Set_in (inv@236@01 ($SortWrappers.$SnapTo$Ref ($Snap.first s@258@01)) ($SortWrappers.$SnapToInt ($Snap.second s@258@01))) as@223@01)
          (Set_in (inv@238@01 ($SortWrappers.$SnapTo$Ref ($Snap.first s@258@01)) ($SortWrappers.$SnapToInt ($Snap.second s@258@01))) is@224@01))))
    (and
      (not (= s@258@01 $Snap.unit))
      (=
        ($PSF.lookup_two (as sm@257@01  $PSF<two>) s@258@01)
        ($PSF.lookup_two ($SortWrappers.$SnapTo$PSF<two> ($Snap.first $t@231@01)) s@258@01))))
  :pattern (($PSF.lookup_two (as sm@257@01  $PSF<two>) s@258@01))
  :pattern (($PSF.lookup_two ($SortWrappers.$SnapTo$PSF<two> ($Snap.first $t@231@01)) s@258@01))
  :qid |qp.psmValDef128|)))
(assert (forall ((s@258@01 $Snap)) (!
  (=>
    (and
      (and
        (and
          (Set_in (inv@253@01 ($SortWrappers.$SnapTo$Ref ($Snap.first s@258@01)) ($SortWrappers.$SnapToInt ($Snap.second s@258@01))) as@223@01)
          (Set_in (inv@255@01 ($SortWrappers.$SnapTo$Ref ($Snap.first s@258@01)) ($SortWrappers.$SnapToInt ($Snap.second s@258@01))) is@224@01))
        (and
          (img@254@01 ($SortWrappers.$SnapTo$Ref ($Snap.first s@258@01)) ($SortWrappers.$SnapToInt ($Snap.second s@258@01)))
          (img@256@01 ($SortWrappers.$SnapTo$Ref ($Snap.first s@258@01)) ($SortWrappers.$SnapToInt ($Snap.second s@258@01)))))
      (and
        (and
          (img@245@01 ($SortWrappers.$SnapTo$Ref ($Snap.first s@258@01)) ($SortWrappers.$SnapToInt ($Snap.second s@258@01)))
          (img@247@01 ($SortWrappers.$SnapTo$Ref ($Snap.first s@258@01)) ($SortWrappers.$SnapToInt ($Snap.second s@258@01))))
        (and
          (Set_in (inv@244@01 ($SortWrappers.$SnapTo$Ref ($Snap.first s@258@01)) ($SortWrappers.$SnapToInt ($Snap.second s@258@01))) bs@225@01)
          (Set_in (inv@246@01 ($SortWrappers.$SnapTo$Ref ($Snap.first s@258@01)) ($SortWrappers.$SnapToInt ($Snap.second s@258@01))) js@226@01))))
    (and
      (not (= s@258@01 $Snap.unit))
      (=
        ($PSF.lookup_two (as sm@257@01  $PSF<two>) s@258@01)
        ($PSF.lookup_two ($SortWrappers.$SnapTo$PSF<two> ($Snap.second $t@231@01)) s@258@01))))
  :pattern (($PSF.lookup_two (as sm@257@01  $PSF<two>) s@258@01))
  :pattern (($PSF.lookup_two ($SortWrappers.$SnapTo$PSF<two> ($Snap.second $t@231@01)) s@258@01))
  :qid |qp.psmValDef129|)))
(assert (forall ((s@258@01 $Snap)) (!
  (and
    ($PSF.loc_two ($PSF.lookup_two ($SortWrappers.$SnapTo$PSF<two> ($Snap.first $t@231@01)) s@258@01) s@258@01)
    ($PSF.loc_two ($PSF.lookup_two ($SortWrappers.$SnapTo$PSF<two> ($Snap.second $t@231@01)) s@258@01) s@258@01))
  :pattern (($PSF.lookup_two (as sm@257@01  $PSF<two>) s@258@01))
  :qid |qp.psmResTrgDef130|)))
(assert (and
  (forall ((a@251@01 $Ref) (i@252@01 Int)) (!
    (=>
      (and (Set_in a@251@01 as@223@01) (Set_in i@252@01 is@224@01))
      (or (Set_in a@251@01 as@223@01) (not (Set_in a@251@01 as@223@01))))
    :pattern ((Set_in a@251@01 as@223@01) (Set_in i@252@01 is@224@01))
    :pattern ((Set_in a@251@01 as@223@01) (inv@253@01 a@251@01 i@252@01))
    :pattern ((Set_in a@251@01 as@223@01) (inv@255@01 a@251@01 i@252@01))
    :pattern ((Set_in a@251@01 as@223@01) (img@254@01 a@251@01 i@252@01))
    :pattern ((Set_in a@251@01 as@223@01) (img@256@01 a@251@01 i@252@01))
    :pattern ((Set_in i@252@01 is@224@01) (inv@253@01 a@251@01 i@252@01))
    :pattern ((Set_in i@252@01 is@224@01) (inv@255@01 a@251@01 i@252@01))
    :pattern ((Set_in i@252@01 is@224@01) (img@254@01 a@251@01 i@252@01))
    :pattern ((Set_in i@252@01 is@224@01) (img@256@01 a@251@01 i@252@01))
    :pattern ((inv@253@01 a@251@01 i@252@01))
    :pattern ((inv@255@01 a@251@01 i@252@01))
    :pattern ((img@254@01 a@251@01 i@252@01))
    :pattern ((img@256@01 a@251@01 i@252@01))
    :qid |two-aux|))
  (forall ((a $Ref) (i Int)) (!
    (=>
      (and
        (Set_in (inv@253@01 a i) as@223@01)
        (Set_in (inv@255@01 a i) is@224@01))
      ($PSF.loc_two ($PSF.lookup_two (as sm@248@01  $PSF<two>) ($Snap.combine
        ($SortWrappers.$RefTo$Snap a)
        ($SortWrappers.IntTo$Snap i))) ($Snap.combine
        ($SortWrappers.$RefTo$Snap a)
        ($SortWrappers.IntTo$Snap i))))
    :pattern ((inv@253@01 a i) (inv@255@01 a i))
    :qid |quant-u-9980|))
  (foo_twos%precondition ($SortWrappers.$PSF<two>To$Snap (as sm@257@01  $PSF<two>)) as@223@01 is@224@01)))
(assert (=
  (foo_twos ($SortWrappers.$PSF<two>To$Snap (as sm@257@01  $PSF<two>)) as@223@01 is@224@01)
  0))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale (b1 in bs)
(declare-const $t@259@01 $Snap)
(assert (= $t@259@01 $Snap.unit))
; [eval] (b1 in bs)
(assert (Set_in b1@227@01 bs@225@01))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale (j1 in js)
(declare-const $t@260@01 $Snap)
(assert (= $t@260@01 $Snap.unit))
; [eval] (j1 in js)
(assert (Set_in j1@228@01 js@226@01))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; exhale acc(two(b1, j1), write)
(declare-const sm@261@01 $PSF<two>)
(declare-const s@262@01 $Snap)
; Definitional axioms for snapshot map values
(assert (forall ((s@262@01 $Snap)) (!
  (=>
    (and
      (and
        (img@237@01 ($SortWrappers.$SnapTo$Ref ($Snap.first s@262@01)) ($SortWrappers.$SnapToInt ($Snap.second s@262@01)))
        (img@239@01 ($SortWrappers.$SnapTo$Ref ($Snap.first s@262@01)) ($SortWrappers.$SnapToInt ($Snap.second s@262@01))))
      (and
        (Set_in (inv@236@01 ($SortWrappers.$SnapTo$Ref ($Snap.first s@262@01)) ($SortWrappers.$SnapToInt ($Snap.second s@262@01))) as@223@01)
        (Set_in (inv@238@01 ($SortWrappers.$SnapTo$Ref ($Snap.first s@262@01)) ($SortWrappers.$SnapToInt ($Snap.second s@262@01))) is@224@01)))
    (and
      (not (= s@262@01 $Snap.unit))
      (=
        ($PSF.lookup_two (as sm@261@01  $PSF<two>) s@262@01)
        ($PSF.lookup_two ($SortWrappers.$SnapTo$PSF<two> ($Snap.first $t@231@01)) s@262@01))))
  :pattern (($PSF.lookup_two (as sm@261@01  $PSF<two>) s@262@01))
  :pattern (($PSF.lookup_two ($SortWrappers.$SnapTo$PSF<two> ($Snap.first $t@231@01)) s@262@01))
  :qid |qp.psmValDef132|)))
(assert (forall ((s@262@01 $Snap)) (!
  (=>
    (and
      (and
        (img@245@01 ($SortWrappers.$SnapTo$Ref ($Snap.first s@262@01)) ($SortWrappers.$SnapToInt ($Snap.second s@262@01)))
        (img@247@01 ($SortWrappers.$SnapTo$Ref ($Snap.first s@262@01)) ($SortWrappers.$SnapToInt ($Snap.second s@262@01))))
      (and
        (Set_in (inv@244@01 ($SortWrappers.$SnapTo$Ref ($Snap.first s@262@01)) ($SortWrappers.$SnapToInt ($Snap.second s@262@01))) bs@225@01)
        (Set_in (inv@246@01 ($SortWrappers.$SnapTo$Ref ($Snap.first s@262@01)) ($SortWrappers.$SnapToInt ($Snap.second s@262@01))) js@226@01)))
    (and
      (not (= s@262@01 $Snap.unit))
      (=
        ($PSF.lookup_two (as sm@261@01  $PSF<two>) s@262@01)
        ($PSF.lookup_two ($SortWrappers.$SnapTo$PSF<two> ($Snap.second $t@231@01)) s@262@01))))
  :pattern (($PSF.lookup_two (as sm@261@01  $PSF<two>) s@262@01))
  :pattern (($PSF.lookup_two ($SortWrappers.$SnapTo$PSF<two> ($Snap.second $t@231@01)) s@262@01))
  :qid |qp.psmValDef133|)))
(assert (forall ((s@262@01 $Snap)) (!
  (and
    ($PSF.loc_two ($PSF.lookup_two ($SortWrappers.$SnapTo$PSF<two> ($Snap.first $t@231@01)) s@262@01) s@262@01)
    ($PSF.loc_two ($PSF.lookup_two ($SortWrappers.$SnapTo$PSF<two> ($Snap.second $t@231@01)) s@262@01) s@262@01))
  :pattern (($PSF.lookup_two (as sm@261@01  $PSF<two>) s@262@01))
  :qid |qp.psmResTrgDef134|)))
(assert ($PSF.loc_two ($PSF.lookup_two (as sm@261@01  $PSF<two>) ($Snap.combine
  ($SortWrappers.$RefTo$Snap b1@227@01)
  ($SortWrappers.IntTo$Snap j1@228@01))) ($Snap.combine
  ($SortWrappers.$RefTo$Snap b1@227@01)
  ($SortWrappers.IntTo$Snap j1@228@01))))
; Precomputing data for removing quantified permissions
(define-fun pTaken@263@01 ((a $Ref) (i Int)) $Perm
  (ite
    (and (= a b1@227@01) (= i j1@228@01))
    ($Perm.min
      (ite
        (and
          (and (img@237@01 a i) (img@239@01 a i))
          (and
            (Set_in (inv@236@01 a i) as@223@01)
            (Set_in (inv@238@01 a i) is@224@01)))
        $Perm.Write
        $Perm.No)
      $Perm.Write)
    $Perm.No))
(define-fun pTaken@264@01 ((a $Ref) (i Int)) $Perm
  (ite
    (and (= a b1@227@01) (= i j1@228@01))
    ($Perm.min
      (ite
        (and
          (and (img@245@01 a i) (img@247@01 a i))
          (and
            (Set_in (inv@244@01 a i) bs@225@01)
            (Set_in (inv@246@01 a i) js@226@01)))
        $Perm.Write
        $Perm.No)
      (- $Perm.Write (pTaken@263@01 a i)))
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
(assert (not (forall ((a $Ref) (i Int)) (!
  (=
    (-
      (ite
        (and
          (and (img@237@01 a i) (img@239@01 a i))
          (and
            (Set_in (inv@236@01 a i) as@223@01)
            (Set_in (inv@238@01 a i) is@224@01)))
        $Perm.Write
        $Perm.No)
      (pTaken@263@01 a i))
    $Perm.No)
  
  :qid |quant-u-9983|))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (forall ((a $Ref) (i Int)) (!
  (= (pTaken@263@01 a i) $Perm.No)
  
  :qid |quant-u-9984|))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Intermediate check if already taken enough permissions
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 500)
(assert (not (forall ((a $Ref) (i Int)) (!
  (=>
    (and (= a b1@227@01) (= i j1@228@01))
    (= (- $Perm.Write (pTaken@263@01 a i)) $Perm.No))
  
  :qid |quant-u-9985|))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Chunk depleted?
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 500)
(assert (not (forall ((a $Ref) (i Int)) (!
  (=
    (-
      (ite
        (and
          (and (img@245@01 a i) (img@247@01 a i))
          (and
            (Set_in (inv@244@01 a i) bs@225@01)
            (Set_in (inv@246@01 a i) js@226@01)))
        $Perm.Write
        $Perm.No)
      (pTaken@264@01 a i))
    $Perm.No)
  
  :qid |quant-u-9986|))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (forall ((a $Ref) (i Int)) (!
  (= (pTaken@264@01 a i) $Perm.No)
  
  :qid |quant-u-9987|))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Intermediate check if already taken enough permissions
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 500)
(assert (not (forall ((a $Ref) (i Int)) (!
  (=>
    (and (= a b1@227@01) (= i j1@228@01))
    (= (- (- $Perm.Write (pTaken@263@01 a i)) (pTaken@264@01 a i)) $Perm.No))
  
  :qid |quant-u-9988|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Final check if taken enough permissions
; Done removing quantified permissions
; [exec]
; inhale (a1 in as)
(declare-const $t@265@01 $Snap)
(assert (= $t@265@01 $Snap.unit))
; [eval] (a1 in as)
(assert (Set_in a1@229@01 as@223@01))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale (i1 in is)
(declare-const $t@266@01 $Snap)
(assert (= $t@266@01 $Snap.unit))
; [eval] (i1 in is)
(assert (Set_in i1@230@01 is@224@01))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; unfold acc(two(a1, i1), write)
(declare-const sm@267@01 $PSF<two>)
(declare-const s@268@01 $Snap)
; Definitional axioms for snapshot map values
(assert (forall ((s@268@01 $Snap)) (!
  (=>
    (ite
      (and
        (and
          (img@245@01 ($SortWrappers.$SnapTo$Ref ($Snap.first s@268@01)) ($SortWrappers.$SnapToInt ($Snap.second s@268@01)))
          (img@247@01 ($SortWrappers.$SnapTo$Ref ($Snap.first s@268@01)) ($SortWrappers.$SnapToInt ($Snap.second s@268@01))))
        (and
          (Set_in (inv@244@01 ($SortWrappers.$SnapTo$Ref ($Snap.first s@268@01)) ($SortWrappers.$SnapToInt ($Snap.second s@268@01))) bs@225@01)
          (Set_in (inv@246@01 ($SortWrappers.$SnapTo$Ref ($Snap.first s@268@01)) ($SortWrappers.$SnapToInt ($Snap.second s@268@01))) js@226@01)))
      (<
        $Perm.No
        (-
          $Perm.Write
          (pTaken@264@01 ($SortWrappers.$SnapTo$Ref ($Snap.first s@268@01)) ($SortWrappers.$SnapToInt ($Snap.second s@268@01)))))
      false)
    (and
      (not (= s@268@01 $Snap.unit))
      (=
        ($PSF.lookup_two (as sm@267@01  $PSF<two>) s@268@01)
        ($PSF.lookup_two ($SortWrappers.$SnapTo$PSF<two> ($Snap.second $t@231@01)) s@268@01))))
  :pattern (($PSF.lookup_two (as sm@267@01  $PSF<two>) s@268@01))
  :pattern (($PSF.lookup_two ($SortWrappers.$SnapTo$PSF<two> ($Snap.second $t@231@01)) s@268@01))
  :qid |qp.psmValDef135|)))
(assert (forall ((s@268@01 $Snap)) (!
  (=>
    (ite
      (and
        (and
          (img@237@01 ($SortWrappers.$SnapTo$Ref ($Snap.first s@268@01)) ($SortWrappers.$SnapToInt ($Snap.second s@268@01)))
          (img@239@01 ($SortWrappers.$SnapTo$Ref ($Snap.first s@268@01)) ($SortWrappers.$SnapToInt ($Snap.second s@268@01))))
        (and
          (Set_in (inv@236@01 ($SortWrappers.$SnapTo$Ref ($Snap.first s@268@01)) ($SortWrappers.$SnapToInt ($Snap.second s@268@01))) as@223@01)
          (Set_in (inv@238@01 ($SortWrappers.$SnapTo$Ref ($Snap.first s@268@01)) ($SortWrappers.$SnapToInt ($Snap.second s@268@01))) is@224@01)))
      (<
        $Perm.No
        (-
          $Perm.Write
          (pTaken@263@01 ($SortWrappers.$SnapTo$Ref ($Snap.first s@268@01)) ($SortWrappers.$SnapToInt ($Snap.second s@268@01)))))
      false)
    (and
      (not (= s@268@01 $Snap.unit))
      (=
        ($PSF.lookup_two (as sm@267@01  $PSF<two>) s@268@01)
        ($PSF.lookup_two ($SortWrappers.$SnapTo$PSF<two> ($Snap.first $t@231@01)) s@268@01))))
  :pattern (($PSF.lookup_two (as sm@267@01  $PSF<two>) s@268@01))
  :pattern (($PSF.lookup_two ($SortWrappers.$SnapTo$PSF<two> ($Snap.first $t@231@01)) s@268@01))
  :qid |qp.psmValDef136|)))
(assert (forall ((s@268@01 $Snap)) (!
  (and
    ($PSF.loc_two ($PSF.lookup_two ($SortWrappers.$SnapTo$PSF<two> ($Snap.second $t@231@01)) s@268@01) s@268@01)
    ($PSF.loc_two ($PSF.lookup_two ($SortWrappers.$SnapTo$PSF<two> ($Snap.first $t@231@01)) s@268@01) s@268@01))
  :pattern (($PSF.lookup_two (as sm@267@01  $PSF<two>) s@268@01))
  :qid |qp.psmResTrgDef137|)))
(assert ($PSF.loc_two ($PSF.lookup_two (as sm@267@01  $PSF<two>) ($Snap.combine
  ($SortWrappers.$RefTo$Snap a1@229@01)
  ($SortWrappers.IntTo$Snap i1@230@01))) ($Snap.combine
  ($SortWrappers.$RefTo$Snap a1@229@01)
  ($SortWrappers.IntTo$Snap i1@230@01))))
; Precomputing data for removing quantified permissions
(define-fun pTaken@269@01 ((a $Ref) (i Int)) $Perm
  (ite
    (and (= a a1@229@01) (= i i1@230@01))
    ($Perm.min
      (ite
        (and
          (and (img@245@01 a i) (img@247@01 a i))
          (and
            (Set_in (inv@244@01 a i) bs@225@01)
            (Set_in (inv@246@01 a i) js@226@01)))
        (- $Perm.Write (pTaken@264@01 a i))
        $Perm.No)
      $Perm.Write)
    $Perm.No))
(define-fun pTaken@270@01 ((a $Ref) (i Int)) $Perm
  (ite
    (and (= a a1@229@01) (= i i1@230@01))
    ($Perm.min
      (ite
        (and
          (and (img@237@01 a i) (img@239@01 a i))
          (and
            (Set_in (inv@236@01 a i) as@223@01)
            (Set_in (inv@238@01 a i) is@224@01)))
        (- $Perm.Write (pTaken@263@01 a i))
        $Perm.No)
      (- $Perm.Write (pTaken@269@01 a i)))
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
(assert (not (forall ((a $Ref) (i Int)) (!
  (=
    (-
      (ite
        (and
          (and (img@245@01 a i) (img@247@01 a i))
          (and
            (Set_in (inv@244@01 a i) bs@225@01)
            (Set_in (inv@246@01 a i) js@226@01)))
        (- $Perm.Write (pTaken@264@01 a i))
        $Perm.No)
      (pTaken@269@01 a i))
    $Perm.No)
  
  :qid |quant-u-9990|))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (forall ((a $Ref) (i Int)) (!
  (= (pTaken@269@01 a i) $Perm.No)
  
  :qid |quant-u-9991|))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Intermediate check if already taken enough permissions
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 500)
(assert (not (forall ((a $Ref) (i Int)) (!
  (=>
    (and (= a a1@229@01) (= i i1@230@01))
    (= (- $Perm.Write (pTaken@269@01 a i)) $Perm.No))
  
  :qid |quant-u-9992|))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Chunk depleted?
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 500)
(assert (not (forall ((a $Ref) (i Int)) (!
  (=
    (-
      (ite
        (and
          (and (img@237@01 a i) (img@239@01 a i))
          (and
            (Set_in (inv@236@01 a i) as@223@01)
            (Set_in (inv@238@01 a i) is@224@01)))
        (- $Perm.Write (pTaken@263@01 a i))
        $Perm.No)
      (pTaken@270@01 a i))
    $Perm.No)
  
  :qid |quant-u-9993|))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (forall ((a $Ref) (i Int)) (!
  (= (pTaken@270@01 a i) $Perm.No)
  
  :qid |quant-u-9994|))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Intermediate check if already taken enough permissions
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 500)
(assert (not (forall ((a $Ref) (i Int)) (!
  (=>
    (and (= a a1@229@01) (= i i1@230@01))
    (= (- (- $Perm.Write (pTaken@269@01 a i)) (pTaken@270@01 a i)) $Perm.No))
  
  :qid |quant-u-9995|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Final check if taken enough permissions
; Done removing quantified permissions
; Definitional axioms for snapshot map values (instantiated)
(assert (=>
  (ite
    (and
      (and (img@245@01 a1@229@01 i1@230@01) (img@247@01 a1@229@01 i1@230@01))
      (and
        (Set_in (inv@244@01 a1@229@01 i1@230@01) bs@225@01)
        (Set_in (inv@246@01 a1@229@01 i1@230@01) js@226@01)))
    (< $Perm.No (- $Perm.Write (pTaken@264@01 a1@229@01 i1@230@01)))
    false)
  (and
    (not
      (=
        ($Snap.combine
          ($SortWrappers.$RefTo$Snap a1@229@01)
          ($SortWrappers.IntTo$Snap i1@230@01))
        $Snap.unit))
    (=
      ($PSF.lookup_two (as sm@267@01  $PSF<two>) ($Snap.combine
        ($SortWrappers.$RefTo$Snap a1@229@01)
        ($SortWrappers.IntTo$Snap i1@230@01)))
      ($PSF.lookup_two ($SortWrappers.$SnapTo$PSF<two> ($Snap.second $t@231@01)) ($Snap.combine
        ($SortWrappers.$RefTo$Snap a1@229@01)
        ($SortWrappers.IntTo$Snap i1@230@01)))))))
(assert (=>
  (ite
    (and
      (and (img@237@01 a1@229@01 i1@230@01) (img@239@01 a1@229@01 i1@230@01))
      (and
        (Set_in (inv@236@01 a1@229@01 i1@230@01) as@223@01)
        (Set_in (inv@238@01 a1@229@01 i1@230@01) is@224@01)))
    (< $Perm.No (- $Perm.Write (pTaken@263@01 a1@229@01 i1@230@01)))
    false)
  (and
    (not
      (=
        ($Snap.combine
          ($SortWrappers.$RefTo$Snap a1@229@01)
          ($SortWrappers.IntTo$Snap i1@230@01))
        $Snap.unit))
    (=
      ($PSF.lookup_two (as sm@267@01  $PSF<two>) ($Snap.combine
        ($SortWrappers.$RefTo$Snap a1@229@01)
        ($SortWrappers.IntTo$Snap i1@230@01)))
      ($PSF.lookup_two ($SortWrappers.$SnapTo$PSF<two> ($Snap.first $t@231@01)) ($Snap.combine
        ($SortWrappers.$RefTo$Snap a1@229@01)
        ($SortWrappers.IntTo$Snap i1@230@01)))))))
(assert (and
  ($PSF.loc_two ($PSF.lookup_two ($SortWrappers.$SnapTo$PSF<two> ($Snap.second $t@231@01)) ($Snap.combine
    ($SortWrappers.$RefTo$Snap a1@229@01)
    ($SortWrappers.IntTo$Snap i1@230@01))) ($Snap.combine
    ($SortWrappers.$RefTo$Snap a1@229@01)
    ($SortWrappers.IntTo$Snap i1@230@01)))
  ($PSF.loc_two ($PSF.lookup_two ($SortWrappers.$SnapTo$PSF<two> ($Snap.first $t@231@01)) ($Snap.combine
    ($SortWrappers.$RefTo$Snap a1@229@01)
    ($SortWrappers.IntTo$Snap i1@230@01))) ($Snap.combine
    ($SortWrappers.$RefTo$Snap a1@229@01)
    ($SortWrappers.IntTo$Snap i1@230@01)))))
(assert (not (= a1@229@01 $Ref.null)))
; State saturation: after unfold
(set-option :timeout 40)
(check-sat)
; unknown
(assert (two%trigger ($SortWrappers.IntTo$Snap ($PSF.lookup_two (as sm@267@01  $PSF<two>) ($Snap.combine
  ($SortWrappers.$RefTo$Snap a1@229@01)
  ($SortWrappers.IntTo$Snap i1@230@01)))) a1@229@01 i1@230@01))
; [exec]
; a1.val := 1 + a1.val - 1
; [eval] 1 + a1.val - 1
; [eval] 1 + a1.val
(declare-const val@271@01 Int)
(assert (=
  val@271@01
  (-
    (+
      1
      ($PSF.lookup_two (as sm@267@01  $PSF<two>) ($Snap.combine
        ($SortWrappers.$RefTo$Snap a1@229@01)
        ($SortWrappers.IntTo$Snap i1@230@01))))
    1)))
; [exec]
; fold acc(two(a1, i1), write)
(assert (two%trigger ($SortWrappers.IntTo$Snap val@271@01) a1@229@01 i1@230@01))
(declare-const sm@272@01 $PSF<two>)
; Definitional axioms for singleton-SM's value
(assert (=
  ($PSF.lookup_two (as sm@272@01  $PSF<two>) ($Snap.combine
    ($SortWrappers.$RefTo$Snap a1@229@01)
    ($SortWrappers.IntTo$Snap i1@230@01)))
  val@271@01))
(declare-const sm@273@01 $PSF<two>)
(declare-const s@274@01 $Snap)
; Definitional axioms for snapshot map domain
; Definitional axioms for snapshot map values
(assert (forall ((s@274@01 $Snap)) (!
  (=>
    (and
      (= ($SortWrappers.$SnapTo$Ref ($Snap.first s@274@01)) a1@229@01)
      (= ($SortWrappers.$SnapToInt ($Snap.second s@274@01)) i1@230@01))
    (and
      (not (= s@274@01 $Snap.unit))
      (=
        ($PSF.lookup_two (as sm@273@01  $PSF<two>) s@274@01)
        ($PSF.lookup_two (as sm@272@01  $PSF<two>) s@274@01))))
  :pattern (($PSF.lookup_two (as sm@273@01  $PSF<two>) s@274@01))
  :pattern (($PSF.lookup_two (as sm@272@01  $PSF<two>) s@274@01))
  :qid |qp.psmValDef138|)))
(assert (forall ((s@274@01 $Snap)) (!
  (=>
    (ite
      (and
        (and
          (img@237@01 ($SortWrappers.$SnapTo$Ref ($Snap.first s@274@01)) ($SortWrappers.$SnapToInt ($Snap.second s@274@01)))
          (img@239@01 ($SortWrappers.$SnapTo$Ref ($Snap.first s@274@01)) ($SortWrappers.$SnapToInt ($Snap.second s@274@01))))
        (and
          (Set_in (inv@236@01 ($SortWrappers.$SnapTo$Ref ($Snap.first s@274@01)) ($SortWrappers.$SnapToInt ($Snap.second s@274@01))) as@223@01)
          (Set_in (inv@238@01 ($SortWrappers.$SnapTo$Ref ($Snap.first s@274@01)) ($SortWrappers.$SnapToInt ($Snap.second s@274@01))) is@224@01)))
      (<
        $Perm.No
        (-
          (-
            $Perm.Write
            (pTaken@263@01 ($SortWrappers.$SnapTo$Ref ($Snap.first s@274@01)) ($SortWrappers.$SnapToInt ($Snap.second s@274@01))))
          (pTaken@270@01 ($SortWrappers.$SnapTo$Ref ($Snap.first s@274@01)) ($SortWrappers.$SnapToInt ($Snap.second s@274@01)))))
      false)
    (and
      (not (= s@274@01 $Snap.unit))
      (=
        ($PSF.lookup_two (as sm@273@01  $PSF<two>) s@274@01)
        ($PSF.lookup_two ($SortWrappers.$SnapTo$PSF<two> ($Snap.first $t@231@01)) s@274@01))))
  :pattern (($PSF.lookup_two (as sm@273@01  $PSF<two>) s@274@01))
  :pattern (($PSF.lookup_two ($SortWrappers.$SnapTo$PSF<two> ($Snap.first $t@231@01)) s@274@01))
  :qid |qp.psmValDef139|)))
(assert (forall ((s@274@01 $Snap)) (!
  (=>
    (ite
      (and
        (and
          (img@245@01 ($SortWrappers.$SnapTo$Ref ($Snap.first s@274@01)) ($SortWrappers.$SnapToInt ($Snap.second s@274@01)))
          (img@247@01 ($SortWrappers.$SnapTo$Ref ($Snap.first s@274@01)) ($SortWrappers.$SnapToInt ($Snap.second s@274@01))))
        (and
          (Set_in (inv@244@01 ($SortWrappers.$SnapTo$Ref ($Snap.first s@274@01)) ($SortWrappers.$SnapToInt ($Snap.second s@274@01))) bs@225@01)
          (Set_in (inv@246@01 ($SortWrappers.$SnapTo$Ref ($Snap.first s@274@01)) ($SortWrappers.$SnapToInt ($Snap.second s@274@01))) js@226@01)))
      (<
        $Perm.No
        (-
          (-
            $Perm.Write
            (pTaken@264@01 ($SortWrappers.$SnapTo$Ref ($Snap.first s@274@01)) ($SortWrappers.$SnapToInt ($Snap.second s@274@01))))
          (pTaken@269@01 ($SortWrappers.$SnapTo$Ref ($Snap.first s@274@01)) ($SortWrappers.$SnapToInt ($Snap.second s@274@01)))))
      false)
    (and
      (not (= s@274@01 $Snap.unit))
      (=
        ($PSF.lookup_two (as sm@273@01  $PSF<two>) s@274@01)
        ($PSF.lookup_two ($SortWrappers.$SnapTo$PSF<two> ($Snap.second $t@231@01)) s@274@01))))
  :pattern (($PSF.lookup_two (as sm@273@01  $PSF<two>) s@274@01))
  :pattern (($PSF.lookup_two ($SortWrappers.$SnapTo$PSF<two> ($Snap.second $t@231@01)) s@274@01))
  :qid |qp.psmValDef140|)))
(assert (forall ((s@274@01 $Snap)) (!
  (and
    ($PSF.loc_two ($PSF.lookup_two (as sm@272@01  $PSF<two>) s@274@01) s@274@01)
    ($PSF.loc_two ($PSF.lookup_two ($SortWrappers.$SnapTo$PSF<two> ($Snap.first $t@231@01)) s@274@01) s@274@01)
    ($PSF.loc_two ($PSF.lookup_two ($SortWrappers.$SnapTo$PSF<two> ($Snap.second $t@231@01)) s@274@01) s@274@01))
  :pattern (($PSF.lookup_two (as sm@273@01  $PSF<two>) s@274@01))
  :qid |qp.psmResTrgDef141|)))
(assert ($PSF.loc_two ($PSF.lookup_two (as sm@273@01  $PSF<two>) ($Snap.combine
  ($SortWrappers.$RefTo$Snap a1@229@01)
  ($SortWrappers.IntTo$Snap i1@230@01))) ($Snap.combine
  ($SortWrappers.$RefTo$Snap a1@229@01)
  ($SortWrappers.IntTo$Snap i1@230@01))))
; [exec]
; exhale (forall a$1: Ref, i$1: Int ::
;     { two(a$1, i$1) }
;     (a$1 in (bs setminus Set(b1))) && (i$1 in (js setminus Set(j1))) ==>
;     acc(two(a$1, i$1), write))
(declare-const a$1@275@01 $Ref)
(declare-const i$1@276@01 Int)
(set-option :timeout 0)
(push) ; 3
; [eval] (a$1 in (bs setminus Set(b1))) && (i$1 in (js setminus Set(j1)))
; [eval] (a$1 in (bs setminus Set(b1)))
; [eval] (bs setminus Set(b1))
; [eval] Set(b1)
(push) ; 4
; [then-branch: 9 | !(a$1@275@01 in bs@225@01 \ {b1@227@01}) | live]
; [else-branch: 9 | a$1@275@01 in bs@225@01 \ {b1@227@01} | live]
(push) ; 5
; [then-branch: 9 | !(a$1@275@01 in bs@225@01 \ {b1@227@01})]
(assert (not (Set_in a$1@275@01 (Set_difference bs@225@01 (Set_singleton b1@227@01)))))
(pop) ; 5
(push) ; 5
; [else-branch: 9 | a$1@275@01 in bs@225@01 \ {b1@227@01}]
(assert (Set_in a$1@275@01 (Set_difference bs@225@01 (Set_singleton b1@227@01))))
; [eval] (i$1 in (js setminus Set(j1)))
; [eval] (js setminus Set(j1))
; [eval] Set(j1)
(pop) ; 5
(pop) ; 4
; Joined path conditions
; Joined path conditions
(assert (or
  (Set_in a$1@275@01 (Set_difference bs@225@01 (Set_singleton b1@227@01)))
  (not (Set_in a$1@275@01 (Set_difference bs@225@01 (Set_singleton b1@227@01))))))
(assert (and
  (Set_in a$1@275@01 (Set_difference bs@225@01 (Set_singleton b1@227@01)))
  (Set_in i$1@276@01 (Set_difference js@226@01 (Set_singleton j1@228@01)))))
; Definitional axioms for snapshot map domain
; Definitional axioms for snapshot map values
(pop) ; 3
(declare-fun inv@277@01 ($Ref Int) $Ref)
(declare-fun img@278@01 ($Ref Int) Bool)
(declare-fun inv@279@01 ($Ref Int) Int)
(declare-fun img@280@01 ($Ref Int) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
(assert (forall ((a$1@275@01 $Ref) (i$1@276@01 Int)) (!
  (=>
    (and
      (Set_in a$1@275@01 (Set_difference bs@225@01 (Set_singleton b1@227@01)))
      (Set_in i$1@276@01 (Set_difference js@226@01 (Set_singleton j1@228@01))))
    (or
      (Set_in a$1@275@01 (Set_difference bs@225@01 (Set_singleton b1@227@01)))
      (not
        (Set_in a$1@275@01 (Set_difference bs@225@01 (Set_singleton b1@227@01))))))
  :pattern (($PSF.loc_two ($PSF.lookup_two (as sm@273@01  $PSF<two>) ($Snap.combine
    ($SortWrappers.$RefTo$Snap a$1@275@01)
    ($SortWrappers.IntTo$Snap i$1@276@01))) ($Snap.combine
    ($SortWrappers.$RefTo$Snap a$1@275@01)
    ($SortWrappers.IntTo$Snap i$1@276@01))))
  :qid |two-aux|)))
; Definitional axioms for snapshot map domain
; Definitional axioms for snapshot map values
; Check receiver injectivity
(push) ; 3
(assert (not (forall ((a$11@275@01 $Ref) (i$11@276@01 Int) (a$12@275@01 $Ref) (i$12@276@01 Int)) (!
  (=>
    (and
      (and
        (and
          (Set_in a$11@275@01 (Set_difference bs@225@01 (Set_singleton b1@227@01)))
          (Set_in i$11@276@01 (Set_difference js@226@01 (Set_singleton j1@228@01))))
        ($PSF.loc_two ($PSF.lookup_two (as sm@273@01  $PSF<two>) ($Snap.combine
          ($SortWrappers.$RefTo$Snap a$11@275@01)
          ($SortWrappers.IntTo$Snap i$11@276@01))) ($Snap.combine
          ($SortWrappers.$RefTo$Snap a$11@275@01)
          ($SortWrappers.IntTo$Snap i$11@276@01))))
      (and
        (and
          (Set_in a$12@275@01 (Set_difference bs@225@01 (Set_singleton b1@227@01)))
          (Set_in i$12@276@01 (Set_difference js@226@01 (Set_singleton j1@228@01))))
        ($PSF.loc_two ($PSF.lookup_two (as sm@273@01  $PSF<two>) ($Snap.combine
          ($SortWrappers.$RefTo$Snap a$12@275@01)
          ($SortWrappers.IntTo$Snap i$12@276@01))) ($Snap.combine
          ($SortWrappers.$RefTo$Snap a$12@275@01)
          ($SortWrappers.IntTo$Snap i$12@276@01))))
      (and (= a$11@275@01 a$12@275@01) (= i$11@276@01 i$12@276@01)))
    (and (= a$11@275@01 a$12@275@01) (= i$11@276@01 i$12@276@01)))
  
  :qid |two-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((a$1@275@01 $Ref) (i$1@276@01 Int)) (!
  (=>
    (and
      (Set_in a$1@275@01 (Set_difference bs@225@01 (Set_singleton b1@227@01)))
      (Set_in i$1@276@01 (Set_difference js@226@01 (Set_singleton j1@228@01))))
    (and
      (and
        (= (inv@277@01 a$1@275@01 i$1@276@01) a$1@275@01)
        (= (inv@279@01 a$1@275@01 i$1@276@01) i$1@276@01))
      (and (img@278@01 a$1@275@01 i$1@276@01) (img@280@01 a$1@275@01 i$1@276@01))))
  :pattern (($PSF.loc_two ($PSF.lookup_two (as sm@273@01  $PSF<two>) ($Snap.combine
    ($SortWrappers.$RefTo$Snap a$1@275@01)
    ($SortWrappers.IntTo$Snap i$1@276@01))) ($Snap.combine
    ($SortWrappers.$RefTo$Snap a$1@275@01)
    ($SortWrappers.IntTo$Snap i$1@276@01))))
  :qid |two-invOfFct|)))
(assert (forall ((a $Ref) (i Int)) (!
  (=>
    (and
      (and (img@278@01 a i) (img@280@01 a i))
      (and
        (Set_in (inv@277@01 a i) (Set_difference bs@225@01 (Set_singleton b1@227@01)))
        (Set_in (inv@279@01 a i) (Set_difference js@226@01 (Set_singleton j1@228@01)))))
    (and (= (inv@277@01 a i) a) (= (inv@279@01 a i) i)))
  :pattern ((inv@277@01 a i))
  :pattern ((inv@279@01 a i))
  :qid |two-fctOfInv|)))
(assert (forall ((a $Ref) (i Int)) (!
  (=>
    (and
      (Set_in (inv@277@01 a i) (Set_difference bs@225@01 (Set_singleton b1@227@01)))
      (Set_in (inv@279@01 a i) (Set_difference js@226@01 (Set_singleton j1@228@01))))
    ($PSF.loc_two ($PSF.lookup_two (as sm@273@01  $PSF<two>) ($Snap.combine
      ($SortWrappers.$RefTo$Snap a)
      ($SortWrappers.IntTo$Snap i))) ($Snap.combine
      ($SortWrappers.$RefTo$Snap a)
      ($SortWrappers.IntTo$Snap i))))
  :pattern ((inv@277@01 a i) (inv@279@01 a i))
  :qid |quant-u-9997|)))
; Precomputing data for removing quantified permissions
(define-fun pTaken@281@01 ((a $Ref) (i Int)) $Perm
  (ite
    (and
      (and
        (Set_in (inv@277@01 a i) (Set_difference bs@225@01 (Set_singleton b1@227@01)))
        (Set_in (inv@279@01 a i) (Set_difference js@226@01 (Set_singleton j1@228@01))))
      (and (img@278@01 a i) (img@280@01 a i))
      (and (= a (inv@277@01 a i)) (= i (inv@279@01 a i))))
    ($Perm.min
      (ite
        (and
          (and (img@237@01 a i) (img@239@01 a i))
          (and
            (Set_in (inv@236@01 a i) as@223@01)
            (Set_in (inv@238@01 a i) is@224@01)))
        (- (- $Perm.Write (pTaken@263@01 a i)) (pTaken@270@01 a i))
        $Perm.No)
      $Perm.Write)
    $Perm.No))
(define-fun pTaken@282@01 ((a $Ref) (i Int)) $Perm
  (ite
    (and
      (and
        (Set_in (inv@277@01 a i) (Set_difference bs@225@01 (Set_singleton b1@227@01)))
        (Set_in (inv@279@01 a i) (Set_difference js@226@01 (Set_singleton j1@228@01))))
      (and (img@278@01 a i) (img@280@01 a i))
      (and (= a (inv@277@01 a i)) (= i (inv@279@01 a i))))
    ($Perm.min
      (ite
        (and
          (and (img@245@01 a i) (img@247@01 a i))
          (and
            (Set_in (inv@244@01 a i) bs@225@01)
            (Set_in (inv@246@01 a i) js@226@01)))
        (- (- $Perm.Write (pTaken@264@01 a i)) (pTaken@269@01 a i))
        $Perm.No)
      (- $Perm.Write (pTaken@281@01 a i)))
    $Perm.No))
(define-fun pTaken@283@01 ((a $Ref) (i Int)) $Perm
  (ite
    (and
      (and
        (Set_in (inv@277@01 a i) (Set_difference bs@225@01 (Set_singleton b1@227@01)))
        (Set_in (inv@279@01 a i) (Set_difference js@226@01 (Set_singleton j1@228@01))))
      (and (img@278@01 a i) (img@280@01 a i))
      (and (= a (inv@277@01 a i)) (= i (inv@279@01 a i))))
    ($Perm.min
      (ite (and (= a a1@229@01) (= i i1@230@01)) $Perm.Write $Perm.No)
      (- (- $Perm.Write (pTaken@281@01 a i)) (pTaken@282@01 a i)))
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
(assert (not (forall ((a $Ref) (i Int)) (!
  (=
    (-
      (ite
        (and
          (and (img@237@01 a i) (img@239@01 a i))
          (and
            (Set_in (inv@236@01 a i) as@223@01)
            (Set_in (inv@238@01 a i) is@224@01)))
        (- (- $Perm.Write (pTaken@263@01 a i)) (pTaken@270@01 a i))
        $Perm.No)
      (pTaken@281@01 a i))
    $Perm.No)
  
  :qid |quant-u-9999|))))
(check-sat)
; unknown
(pop) ; 3
; 0.01s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (forall ((a $Ref) (i Int)) (!
  (= (pTaken@281@01 a i) $Perm.No)
  
  :qid |quant-u-10000|))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Intermediate check if already taken enough permissions
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 500)
(assert (not (forall ((a $Ref) (i Int)) (!
  (=>
    (and
      (and
        (Set_in (inv@277@01 a i) (Set_difference bs@225@01 (Set_singleton b1@227@01)))
        (Set_in (inv@279@01 a i) (Set_difference js@226@01 (Set_singleton j1@228@01))))
      (and (img@278@01 a i) (img@280@01 a i))
      (and (= a (inv@277@01 a i)) (= i (inv@279@01 a i))))
    (= (- $Perm.Write (pTaken@281@01 a i)) $Perm.No))
  
  :qid |quant-u-10001|))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Chunk depleted?
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 500)
(assert (not (forall ((a $Ref) (i Int)) (!
  (=
    (-
      (ite
        (and
          (and (img@245@01 a i) (img@247@01 a i))
          (and
            (Set_in (inv@244@01 a i) bs@225@01)
            (Set_in (inv@246@01 a i) js@226@01)))
        (- (- $Perm.Write (pTaken@264@01 a i)) (pTaken@269@01 a i))
        $Perm.No)
      (pTaken@282@01 a i))
    $Perm.No)
  
  :qid |quant-u-10002|))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (forall ((a $Ref) (i Int)) (!
  (= (pTaken@282@01 a i) $Perm.No)
  
  :qid |quant-u-10003|))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Intermediate check if already taken enough permissions
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 500)
(assert (not (forall ((a $Ref) (i Int)) (!
  (=>
    (and
      (and
        (Set_in (inv@277@01 a i) (Set_difference bs@225@01 (Set_singleton b1@227@01)))
        (Set_in (inv@279@01 a i) (Set_difference js@226@01 (Set_singleton j1@228@01))))
      (and (img@278@01 a i) (img@280@01 a i))
      (and (= a (inv@277@01 a i)) (= i (inv@279@01 a i))))
    (= (- (- $Perm.Write (pTaken@281@01 a i)) (pTaken@282@01 a i)) $Perm.No))
  
  :qid |quant-u-10004|))))
(check-sat)
; unsat
(pop) ; 3
; 0.01s
; (get-info :all-statistics)
; Final check if taken enough permissions
; Done removing quantified permissions
; [exec]
; exhale foo_twos(as, is) == 0
; [eval] foo_twos(as, is) == 0
; [eval] foo_twos(as, is)
(set-option :timeout 0)
(push) ; 3
(declare-const a@284@01 $Ref)
(declare-const i@285@01 Int)
(push) ; 4
; [eval] (a in as) && (i in is)
; [eval] (a in as)
(push) ; 5
; [then-branch: 10 | !(a@284@01 in as@223@01) | live]
; [else-branch: 10 | a@284@01 in as@223@01 | live]
(push) ; 6
; [then-branch: 10 | !(a@284@01 in as@223@01)]
(assert (not (Set_in a@284@01 as@223@01)))
(pop) ; 6
(push) ; 6
; [else-branch: 10 | a@284@01 in as@223@01]
(assert (Set_in a@284@01 as@223@01))
; [eval] (i in is)
(pop) ; 6
(pop) ; 5
; Joined path conditions
; Joined path conditions
(assert (or (Set_in a@284@01 as@223@01) (not (Set_in a@284@01 as@223@01))))
(assert (and (Set_in a@284@01 as@223@01) (Set_in i@285@01 is@224@01)))
(pop) ; 4
(declare-fun inv@286@01 ($Ref Int) $Ref)
(declare-fun img@287@01 ($Ref Int) Bool)
(declare-fun inv@288@01 ($Ref Int) Int)
(declare-fun img@289@01 ($Ref Int) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
(assert (forall ((a@284@01 $Ref) (i@285@01 Int)) (!
  (=>
    (and (Set_in a@284@01 as@223@01) (Set_in i@285@01 is@224@01))
    (or (Set_in a@284@01 as@223@01) (not (Set_in a@284@01 as@223@01))))
  :pattern ((Set_in a@284@01 as@223@01) (Set_in i@285@01 is@224@01))
  :pattern ((Set_in a@284@01 as@223@01) (inv@286@01 a@284@01 i@285@01))
  :pattern ((Set_in a@284@01 as@223@01) (inv@288@01 a@284@01 i@285@01))
  :pattern ((Set_in a@284@01 as@223@01) (img@287@01 a@284@01 i@285@01))
  :pattern ((Set_in a@284@01 as@223@01) (img@289@01 a@284@01 i@285@01))
  :pattern ((Set_in i@285@01 is@224@01) (inv@286@01 a@284@01 i@285@01))
  :pattern ((Set_in i@285@01 is@224@01) (inv@288@01 a@284@01 i@285@01))
  :pattern ((Set_in i@285@01 is@224@01) (img@287@01 a@284@01 i@285@01))
  :pattern ((Set_in i@285@01 is@224@01) (img@289@01 a@284@01 i@285@01))
  :pattern ((inv@286@01 a@284@01 i@285@01))
  :pattern ((inv@288@01 a@284@01 i@285@01))
  :pattern ((img@287@01 a@284@01 i@285@01))
  :pattern ((img@289@01 a@284@01 i@285@01))
  :qid |two-aux|)))
(declare-const sm@290@01 $PSF<two>)
(declare-const s@291@01 $Snap)
; Definitional axioms for snapshot map domain
; Definitional axioms for snapshot map values
(assert (forall ((s@291@01 $Snap)) (!
  (=>
    (and
      (= ($SortWrappers.$SnapTo$Ref ($Snap.first s@291@01)) a1@229@01)
      (= ($SortWrappers.$SnapToInt ($Snap.second s@291@01)) i1@230@01))
    (and
      (not (= s@291@01 $Snap.unit))
      (=
        ($PSF.lookup_two (as sm@290@01  $PSF<two>) s@291@01)
        ($PSF.lookup_two (as sm@272@01  $PSF<two>) s@291@01))))
  :pattern (($PSF.lookup_two (as sm@290@01  $PSF<two>) s@291@01))
  :pattern (($PSF.lookup_two (as sm@272@01  $PSF<two>) s@291@01))
  :qid |qp.psmValDef142|)))
(assert (forall ((s@291@01 $Snap)) (!
  (=>
    (ite
      (and
        (and
          (img@245@01 ($SortWrappers.$SnapTo$Ref ($Snap.first s@291@01)) ($SortWrappers.$SnapToInt ($Snap.second s@291@01)))
          (img@247@01 ($SortWrappers.$SnapTo$Ref ($Snap.first s@291@01)) ($SortWrappers.$SnapToInt ($Snap.second s@291@01))))
        (and
          (Set_in (inv@244@01 ($SortWrappers.$SnapTo$Ref ($Snap.first s@291@01)) ($SortWrappers.$SnapToInt ($Snap.second s@291@01))) bs@225@01)
          (Set_in (inv@246@01 ($SortWrappers.$SnapTo$Ref ($Snap.first s@291@01)) ($SortWrappers.$SnapToInt ($Snap.second s@291@01))) js@226@01)))
      (<
        $Perm.No
        (-
          (-
            (-
              $Perm.Write
              (pTaken@264@01 ($SortWrappers.$SnapTo$Ref ($Snap.first s@291@01)) ($SortWrappers.$SnapToInt ($Snap.second s@291@01))))
            (pTaken@269@01 ($SortWrappers.$SnapTo$Ref ($Snap.first s@291@01)) ($SortWrappers.$SnapToInt ($Snap.second s@291@01))))
          (pTaken@282@01 ($SortWrappers.$SnapTo$Ref ($Snap.first s@291@01)) ($SortWrappers.$SnapToInt ($Snap.second s@291@01)))))
      false)
    (and
      (not (= s@291@01 $Snap.unit))
      (=
        ($PSF.lookup_two (as sm@290@01  $PSF<two>) s@291@01)
        ($PSF.lookup_two ($SortWrappers.$SnapTo$PSF<two> ($Snap.second $t@231@01)) s@291@01))))
  :pattern (($PSF.lookup_two (as sm@290@01  $PSF<two>) s@291@01))
  :pattern (($PSF.lookup_two ($SortWrappers.$SnapTo$PSF<two> ($Snap.second $t@231@01)) s@291@01))
  :qid |qp.psmValDef143|)))
(assert (forall ((s@291@01 $Snap)) (!
  (=>
    (ite
      (and
        (and
          (img@237@01 ($SortWrappers.$SnapTo$Ref ($Snap.first s@291@01)) ($SortWrappers.$SnapToInt ($Snap.second s@291@01)))
          (img@239@01 ($SortWrappers.$SnapTo$Ref ($Snap.first s@291@01)) ($SortWrappers.$SnapToInt ($Snap.second s@291@01))))
        (and
          (Set_in (inv@236@01 ($SortWrappers.$SnapTo$Ref ($Snap.first s@291@01)) ($SortWrappers.$SnapToInt ($Snap.second s@291@01))) as@223@01)
          (Set_in (inv@238@01 ($SortWrappers.$SnapTo$Ref ($Snap.first s@291@01)) ($SortWrappers.$SnapToInt ($Snap.second s@291@01))) is@224@01)))
      (<
        $Perm.No
        (-
          (-
            (-
              $Perm.Write
              (pTaken@263@01 ($SortWrappers.$SnapTo$Ref ($Snap.first s@291@01)) ($SortWrappers.$SnapToInt ($Snap.second s@291@01))))
            (pTaken@270@01 ($SortWrappers.$SnapTo$Ref ($Snap.first s@291@01)) ($SortWrappers.$SnapToInt ($Snap.second s@291@01))))
          (pTaken@281@01 ($SortWrappers.$SnapTo$Ref ($Snap.first s@291@01)) ($SortWrappers.$SnapToInt ($Snap.second s@291@01)))))
      false)
    (and
      (not (= s@291@01 $Snap.unit))
      (=
        ($PSF.lookup_two (as sm@290@01  $PSF<two>) s@291@01)
        ($PSF.lookup_two ($SortWrappers.$SnapTo$PSF<two> ($Snap.first $t@231@01)) s@291@01))))
  :pattern (($PSF.lookup_two (as sm@290@01  $PSF<two>) s@291@01))
  :pattern (($PSF.lookup_two ($SortWrappers.$SnapTo$PSF<two> ($Snap.first $t@231@01)) s@291@01))
  :qid |qp.psmValDef144|)))
(assert (forall ((s@291@01 $Snap)) (!
  (and
    ($PSF.loc_two ($PSF.lookup_two (as sm@272@01  $PSF<two>) s@291@01) s@291@01)
    ($PSF.loc_two ($PSF.lookup_two ($SortWrappers.$SnapTo$PSF<two> ($Snap.second $t@231@01)) s@291@01) s@291@01)
    ($PSF.loc_two ($PSF.lookup_two ($SortWrappers.$SnapTo$PSF<two> ($Snap.first $t@231@01)) s@291@01) s@291@01))
  :pattern (($PSF.lookup_two (as sm@290@01  $PSF<two>) s@291@01))
  :qid |qp.psmResTrgDef145|)))
; Check receiver injectivity
(push) ; 4
(assert (not (forall ((a1@284@01 $Ref) (i1@285@01 Int) (a2@284@01 $Ref) (i2@285@01 Int)) (!
  (=>
    (and
      (and
        (and (Set_in a1@284@01 as@223@01) (Set_in i1@285@01 is@224@01))
        ($PSF.loc_two ($PSF.lookup_two (as sm@290@01  $PSF<two>) ($Snap.combine
          ($SortWrappers.$RefTo$Snap a1@284@01)
          ($SortWrappers.IntTo$Snap i1@285@01))) ($Snap.combine
          ($SortWrappers.$RefTo$Snap a1@284@01)
          ($SortWrappers.IntTo$Snap i1@285@01))))
      (and
        (and (Set_in a2@284@01 as@223@01) (Set_in i2@285@01 is@224@01))
        ($PSF.loc_two ($PSF.lookup_two (as sm@290@01  $PSF<two>) ($Snap.combine
          ($SortWrappers.$RefTo$Snap a2@284@01)
          ($SortWrappers.IntTo$Snap i2@285@01))) ($Snap.combine
          ($SortWrappers.$RefTo$Snap a2@284@01)
          ($SortWrappers.IntTo$Snap i2@285@01))))
      (and (= a1@284@01 a2@284@01) (= i1@285@01 i2@285@01)))
    (and (= a1@284@01 a2@284@01) (= i1@285@01 i2@285@01)))
  
  :qid |two-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((a@284@01 $Ref) (i@285@01 Int)) (!
  (=>
    (and (Set_in a@284@01 as@223@01) (Set_in i@285@01 is@224@01))
    (and
      (and
        (= (inv@286@01 a@284@01 i@285@01) a@284@01)
        (= (inv@288@01 a@284@01 i@285@01) i@285@01))
      (and (img@287@01 a@284@01 i@285@01) (img@289@01 a@284@01 i@285@01))))
  :pattern ((Set_in a@284@01 as@223@01) (Set_in i@285@01 is@224@01))
  :pattern ((Set_in a@284@01 as@223@01) (inv@286@01 a@284@01 i@285@01))
  :pattern ((Set_in a@284@01 as@223@01) (inv@288@01 a@284@01 i@285@01))
  :pattern ((Set_in a@284@01 as@223@01) (img@287@01 a@284@01 i@285@01))
  :pattern ((Set_in a@284@01 as@223@01) (img@289@01 a@284@01 i@285@01))
  :pattern ((Set_in i@285@01 is@224@01) (inv@286@01 a@284@01 i@285@01))
  :pattern ((Set_in i@285@01 is@224@01) (inv@288@01 a@284@01 i@285@01))
  :pattern ((Set_in i@285@01 is@224@01) (img@287@01 a@284@01 i@285@01))
  :pattern ((Set_in i@285@01 is@224@01) (img@289@01 a@284@01 i@285@01))
  :pattern ((inv@286@01 a@284@01 i@285@01))
  :pattern ((inv@288@01 a@284@01 i@285@01))
  :pattern ((img@287@01 a@284@01 i@285@01))
  :pattern ((img@289@01 a@284@01 i@285@01))
  :qid |two-invOfFct|)))
(assert (forall ((a $Ref) (i Int)) (!
  (=>
    (and
      (and (img@287@01 a i) (img@289@01 a i))
      (and
        (Set_in (inv@286@01 a i) as@223@01)
        (Set_in (inv@288@01 a i) is@224@01)))
    (and (= (inv@286@01 a i) a) (= (inv@288@01 a i) i)))
  :pattern ((inv@286@01 a i))
  :pattern ((inv@288@01 a i))
  :qid |two-fctOfInv|)))
(assert (forall ((a $Ref) (i Int)) (!
  (=>
    (and (Set_in (inv@286@01 a i) as@223@01) (Set_in (inv@288@01 a i) is@224@01))
    ($PSF.loc_two ($PSF.lookup_two (as sm@290@01  $PSF<two>) ($Snap.combine
      ($SortWrappers.$RefTo$Snap a)
      ($SortWrappers.IntTo$Snap i))) ($Snap.combine
      ($SortWrappers.$RefTo$Snap a)
      ($SortWrappers.IntTo$Snap i))))
  :pattern ((inv@286@01 a i) (inv@288@01 a i))
  :qid |quant-u-10006|)))
(push) ; 4
(assert (not (forall ((a $Ref) (i Int)) (!
  (=>
    (and
      (and
        (Set_in (inv@286@01 a i) as@223@01)
        (Set_in (inv@288@01 a i) is@224@01))
      (and (img@287@01 a i) (img@289@01 a i))
      (and (= a (inv@286@01 a i)) (= i (inv@288@01 a i))))
    (>
      (+
        (+
          (ite
            (and
              (and (img@245@01 a i) (img@247@01 a i))
              (and
                (Set_in (inv@244@01 a i) bs@225@01)
                (Set_in (inv@246@01 a i) js@226@01)))
            (-
              (- (- $Perm.Write (pTaken@264@01 a i)) (pTaken@269@01 a i))
              (pTaken@282@01 a i))
            $Perm.No)
          (ite
            (and
              (and (img@237@01 a i) (img@239@01 a i))
              (and
                (Set_in (inv@236@01 a i) as@223@01)
                (Set_in (inv@238@01 a i) is@224@01)))
            (-
              (- (- $Perm.Write (pTaken@263@01 a i)) (pTaken@270@01 a i))
              (pTaken@281@01 a i))
            $Perm.No))
        (ite (and (= a a1@229@01) (= i i1@230@01)) $Perm.Write $Perm.No))
      $Perm.No))
  
  :qid |quant-u-10007|))))
(check-sat)
; unsat
(pop) ; 4
; 0.01s
; (get-info :all-statistics)
(declare-const sm@292@01 $PSF<two>)
(declare-const s@293@01 $Snap)
; Definitional axioms for snapshot map domain
(assert (forall ((s@293@01 $Snap)) (!
  (and
    (=>
      (Set_in s@293@01 ($PSF.domain_two (as sm@292@01  $PSF<two>)))
      (and
        (and
          (Set_in (inv@286@01 ($SortWrappers.$SnapTo$Ref ($Snap.first s@293@01)) ($SortWrappers.$SnapToInt ($Snap.second s@293@01))) as@223@01)
          (Set_in (inv@288@01 ($SortWrappers.$SnapTo$Ref ($Snap.first s@293@01)) ($SortWrappers.$SnapToInt ($Snap.second s@293@01))) is@224@01))
        (and
          (img@287@01 ($SortWrappers.$SnapTo$Ref ($Snap.first s@293@01)) ($SortWrappers.$SnapToInt ($Snap.second s@293@01)))
          (img@289@01 ($SortWrappers.$SnapTo$Ref ($Snap.first s@293@01)) ($SortWrappers.$SnapToInt ($Snap.second s@293@01))))))
    (=>
      (and
        (and
          (Set_in (inv@286@01 ($SortWrappers.$SnapTo$Ref ($Snap.first s@293@01)) ($SortWrappers.$SnapToInt ($Snap.second s@293@01))) as@223@01)
          (Set_in (inv@288@01 ($SortWrappers.$SnapTo$Ref ($Snap.first s@293@01)) ($SortWrappers.$SnapToInt ($Snap.second s@293@01))) is@224@01))
        (and
          (img@287@01 ($SortWrappers.$SnapTo$Ref ($Snap.first s@293@01)) ($SortWrappers.$SnapToInt ($Snap.second s@293@01)))
          (img@289@01 ($SortWrappers.$SnapTo$Ref ($Snap.first s@293@01)) ($SortWrappers.$SnapToInt ($Snap.second s@293@01)))))
      (Set_in s@293@01 ($PSF.domain_two (as sm@292@01  $PSF<two>)))))
  :pattern ((Set_in s@293@01 ($PSF.domain_two (as sm@292@01  $PSF<two>))))
  :qid |qp.psmDomDef150|)))
; Definitional axioms for snapshot map values
(assert (forall ((s@293@01 $Snap)) (!
  (=>
    (and
      (and
        (and
          (Set_in (inv@286@01 ($SortWrappers.$SnapTo$Ref ($Snap.first s@293@01)) ($SortWrappers.$SnapToInt ($Snap.second s@293@01))) as@223@01)
          (Set_in (inv@288@01 ($SortWrappers.$SnapTo$Ref ($Snap.first s@293@01)) ($SortWrappers.$SnapToInt ($Snap.second s@293@01))) is@224@01))
        (and
          (img@287@01 ($SortWrappers.$SnapTo$Ref ($Snap.first s@293@01)) ($SortWrappers.$SnapToInt ($Snap.second s@293@01)))
          (img@289@01 ($SortWrappers.$SnapTo$Ref ($Snap.first s@293@01)) ($SortWrappers.$SnapToInt ($Snap.second s@293@01)))))
      (and
        (= ($SortWrappers.$SnapTo$Ref ($Snap.first s@293@01)) a1@229@01)
        (= ($SortWrappers.$SnapToInt ($Snap.second s@293@01)) i1@230@01)))
    (and
      (not (= s@293@01 $Snap.unit))
      (=
        ($PSF.lookup_two (as sm@292@01  $PSF<two>) s@293@01)
        ($PSF.lookup_two (as sm@272@01  $PSF<two>) s@293@01))))
  :pattern (($PSF.lookup_two (as sm@292@01  $PSF<two>) s@293@01))
  :pattern (($PSF.lookup_two (as sm@272@01  $PSF<two>) s@293@01))
  :qid |qp.psmValDef146|)))
(assert (forall ((s@293@01 $Snap)) (!
  (=>
    (and
      (and
        (and
          (Set_in (inv@286@01 ($SortWrappers.$SnapTo$Ref ($Snap.first s@293@01)) ($SortWrappers.$SnapToInt ($Snap.second s@293@01))) as@223@01)
          (Set_in (inv@288@01 ($SortWrappers.$SnapTo$Ref ($Snap.first s@293@01)) ($SortWrappers.$SnapToInt ($Snap.second s@293@01))) is@224@01))
        (and
          (img@287@01 ($SortWrappers.$SnapTo$Ref ($Snap.first s@293@01)) ($SortWrappers.$SnapToInt ($Snap.second s@293@01)))
          (img@289@01 ($SortWrappers.$SnapTo$Ref ($Snap.first s@293@01)) ($SortWrappers.$SnapToInt ($Snap.second s@293@01)))))
      (ite
        (and
          (and
            (img@245@01 ($SortWrappers.$SnapTo$Ref ($Snap.first s@293@01)) ($SortWrappers.$SnapToInt ($Snap.second s@293@01)))
            (img@247@01 ($SortWrappers.$SnapTo$Ref ($Snap.first s@293@01)) ($SortWrappers.$SnapToInt ($Snap.second s@293@01))))
          (and
            (Set_in (inv@244@01 ($SortWrappers.$SnapTo$Ref ($Snap.first s@293@01)) ($SortWrappers.$SnapToInt ($Snap.second s@293@01))) bs@225@01)
            (Set_in (inv@246@01 ($SortWrappers.$SnapTo$Ref ($Snap.first s@293@01)) ($SortWrappers.$SnapToInt ($Snap.second s@293@01))) js@226@01)))
        (<
          $Perm.No
          (-
            (-
              (-
                $Perm.Write
                (pTaken@264@01 ($SortWrappers.$SnapTo$Ref ($Snap.first s@293@01)) ($SortWrappers.$SnapToInt ($Snap.second s@293@01))))
              (pTaken@269@01 ($SortWrappers.$SnapTo$Ref ($Snap.first s@293@01)) ($SortWrappers.$SnapToInt ($Snap.second s@293@01))))
            (pTaken@282@01 ($SortWrappers.$SnapTo$Ref ($Snap.first s@293@01)) ($SortWrappers.$SnapToInt ($Snap.second s@293@01)))))
        false))
    (and
      (not (= s@293@01 $Snap.unit))
      (=
        ($PSF.lookup_two (as sm@292@01  $PSF<two>) s@293@01)
        ($PSF.lookup_two ($SortWrappers.$SnapTo$PSF<two> ($Snap.second $t@231@01)) s@293@01))))
  :pattern (($PSF.lookup_two (as sm@292@01  $PSF<two>) s@293@01))
  :pattern (($PSF.lookup_two ($SortWrappers.$SnapTo$PSF<two> ($Snap.second $t@231@01)) s@293@01))
  :qid |qp.psmValDef147|)))
(assert (forall ((s@293@01 $Snap)) (!
  (=>
    (and
      (and
        (and
          (Set_in (inv@286@01 ($SortWrappers.$SnapTo$Ref ($Snap.first s@293@01)) ($SortWrappers.$SnapToInt ($Snap.second s@293@01))) as@223@01)
          (Set_in (inv@288@01 ($SortWrappers.$SnapTo$Ref ($Snap.first s@293@01)) ($SortWrappers.$SnapToInt ($Snap.second s@293@01))) is@224@01))
        (and
          (img@287@01 ($SortWrappers.$SnapTo$Ref ($Snap.first s@293@01)) ($SortWrappers.$SnapToInt ($Snap.second s@293@01)))
          (img@289@01 ($SortWrappers.$SnapTo$Ref ($Snap.first s@293@01)) ($SortWrappers.$SnapToInt ($Snap.second s@293@01)))))
      (ite
        (and
          (and
            (img@237@01 ($SortWrappers.$SnapTo$Ref ($Snap.first s@293@01)) ($SortWrappers.$SnapToInt ($Snap.second s@293@01)))
            (img@239@01 ($SortWrappers.$SnapTo$Ref ($Snap.first s@293@01)) ($SortWrappers.$SnapToInt ($Snap.second s@293@01))))
          (and
            (Set_in (inv@236@01 ($SortWrappers.$SnapTo$Ref ($Snap.first s@293@01)) ($SortWrappers.$SnapToInt ($Snap.second s@293@01))) as@223@01)
            (Set_in (inv@238@01 ($SortWrappers.$SnapTo$Ref ($Snap.first s@293@01)) ($SortWrappers.$SnapToInt ($Snap.second s@293@01))) is@224@01)))
        (<
          $Perm.No
          (-
            (-
              (-
                $Perm.Write
                (pTaken@263@01 ($SortWrappers.$SnapTo$Ref ($Snap.first s@293@01)) ($SortWrappers.$SnapToInt ($Snap.second s@293@01))))
              (pTaken@270@01 ($SortWrappers.$SnapTo$Ref ($Snap.first s@293@01)) ($SortWrappers.$SnapToInt ($Snap.second s@293@01))))
            (pTaken@281@01 ($SortWrappers.$SnapTo$Ref ($Snap.first s@293@01)) ($SortWrappers.$SnapToInt ($Snap.second s@293@01)))))
        false))
    (and
      (not (= s@293@01 $Snap.unit))
      (=
        ($PSF.lookup_two (as sm@292@01  $PSF<two>) s@293@01)
        ($PSF.lookup_two ($SortWrappers.$SnapTo$PSF<two> ($Snap.first $t@231@01)) s@293@01))))
  :pattern (($PSF.lookup_two (as sm@292@01  $PSF<two>) s@293@01))
  :pattern (($PSF.lookup_two ($SortWrappers.$SnapTo$PSF<two> ($Snap.first $t@231@01)) s@293@01))
  :qid |qp.psmValDef148|)))
(assert (forall ((s@293@01 $Snap)) (!
  (and
    ($PSF.loc_two ($PSF.lookup_two (as sm@272@01  $PSF<two>) s@293@01) s@293@01)
    ($PSF.loc_two ($PSF.lookup_two ($SortWrappers.$SnapTo$PSF<two> ($Snap.second $t@231@01)) s@293@01) s@293@01)
    ($PSF.loc_two ($PSF.lookup_two ($SortWrappers.$SnapTo$PSF<two> ($Snap.first $t@231@01)) s@293@01) s@293@01))
  :pattern (($PSF.lookup_two (as sm@292@01  $PSF<two>) s@293@01))
  :qid |qp.psmResTrgDef149|)))
(assert (foo_twos%precondition ($SortWrappers.$PSF<two>To$Snap (as sm@292@01  $PSF<two>)) as@223@01 is@224@01))
(pop) ; 3
; Joined path conditions
(assert (forall ((s@291@01 $Snap)) (!
  (=>
    (and
      (= ($SortWrappers.$SnapTo$Ref ($Snap.first s@291@01)) a1@229@01)
      (= ($SortWrappers.$SnapToInt ($Snap.second s@291@01)) i1@230@01))
    (and
      (not (= s@291@01 $Snap.unit))
      (=
        ($PSF.lookup_two (as sm@290@01  $PSF<two>) s@291@01)
        ($PSF.lookup_two (as sm@272@01  $PSF<two>) s@291@01))))
  :pattern (($PSF.lookup_two (as sm@290@01  $PSF<two>) s@291@01))
  :pattern (($PSF.lookup_two (as sm@272@01  $PSF<two>) s@291@01))
  :qid |qp.psmValDef142|)))
(assert (forall ((s@291@01 $Snap)) (!
  (=>
    (ite
      (and
        (and
          (img@245@01 ($SortWrappers.$SnapTo$Ref ($Snap.first s@291@01)) ($SortWrappers.$SnapToInt ($Snap.second s@291@01)))
          (img@247@01 ($SortWrappers.$SnapTo$Ref ($Snap.first s@291@01)) ($SortWrappers.$SnapToInt ($Snap.second s@291@01))))
        (and
          (Set_in (inv@244@01 ($SortWrappers.$SnapTo$Ref ($Snap.first s@291@01)) ($SortWrappers.$SnapToInt ($Snap.second s@291@01))) bs@225@01)
          (Set_in (inv@246@01 ($SortWrappers.$SnapTo$Ref ($Snap.first s@291@01)) ($SortWrappers.$SnapToInt ($Snap.second s@291@01))) js@226@01)))
      (<
        $Perm.No
        (-
          (-
            (-
              $Perm.Write
              (pTaken@264@01 ($SortWrappers.$SnapTo$Ref ($Snap.first s@291@01)) ($SortWrappers.$SnapToInt ($Snap.second s@291@01))))
            (pTaken@269@01 ($SortWrappers.$SnapTo$Ref ($Snap.first s@291@01)) ($SortWrappers.$SnapToInt ($Snap.second s@291@01))))
          (pTaken@282@01 ($SortWrappers.$SnapTo$Ref ($Snap.first s@291@01)) ($SortWrappers.$SnapToInt ($Snap.second s@291@01)))))
      false)
    (and
      (not (= s@291@01 $Snap.unit))
      (=
        ($PSF.lookup_two (as sm@290@01  $PSF<two>) s@291@01)
        ($PSF.lookup_two ($SortWrappers.$SnapTo$PSF<two> ($Snap.second $t@231@01)) s@291@01))))
  :pattern (($PSF.lookup_two (as sm@290@01  $PSF<two>) s@291@01))
  :pattern (($PSF.lookup_two ($SortWrappers.$SnapTo$PSF<two> ($Snap.second $t@231@01)) s@291@01))
  :qid |qp.psmValDef143|)))
(assert (forall ((s@291@01 $Snap)) (!
  (=>
    (ite
      (and
        (and
          (img@237@01 ($SortWrappers.$SnapTo$Ref ($Snap.first s@291@01)) ($SortWrappers.$SnapToInt ($Snap.second s@291@01)))
          (img@239@01 ($SortWrappers.$SnapTo$Ref ($Snap.first s@291@01)) ($SortWrappers.$SnapToInt ($Snap.second s@291@01))))
        (and
          (Set_in (inv@236@01 ($SortWrappers.$SnapTo$Ref ($Snap.first s@291@01)) ($SortWrappers.$SnapToInt ($Snap.second s@291@01))) as@223@01)
          (Set_in (inv@238@01 ($SortWrappers.$SnapTo$Ref ($Snap.first s@291@01)) ($SortWrappers.$SnapToInt ($Snap.second s@291@01))) is@224@01)))
      (<
        $Perm.No
        (-
          (-
            (-
              $Perm.Write
              (pTaken@263@01 ($SortWrappers.$SnapTo$Ref ($Snap.first s@291@01)) ($SortWrappers.$SnapToInt ($Snap.second s@291@01))))
            (pTaken@270@01 ($SortWrappers.$SnapTo$Ref ($Snap.first s@291@01)) ($SortWrappers.$SnapToInt ($Snap.second s@291@01))))
          (pTaken@281@01 ($SortWrappers.$SnapTo$Ref ($Snap.first s@291@01)) ($SortWrappers.$SnapToInt ($Snap.second s@291@01)))))
      false)
    (and
      (not (= s@291@01 $Snap.unit))
      (=
        ($PSF.lookup_two (as sm@290@01  $PSF<two>) s@291@01)
        ($PSF.lookup_two ($SortWrappers.$SnapTo$PSF<two> ($Snap.first $t@231@01)) s@291@01))))
  :pattern (($PSF.lookup_two (as sm@290@01  $PSF<two>) s@291@01))
  :pattern (($PSF.lookup_two ($SortWrappers.$SnapTo$PSF<two> ($Snap.first $t@231@01)) s@291@01))
  :qid |qp.psmValDef144|)))
(assert (forall ((s@291@01 $Snap)) (!
  (and
    ($PSF.loc_two ($PSF.lookup_two (as sm@272@01  $PSF<two>) s@291@01) s@291@01)
    ($PSF.loc_two ($PSF.lookup_two ($SortWrappers.$SnapTo$PSF<two> ($Snap.second $t@231@01)) s@291@01) s@291@01)
    ($PSF.loc_two ($PSF.lookup_two ($SortWrappers.$SnapTo$PSF<two> ($Snap.first $t@231@01)) s@291@01) s@291@01))
  :pattern (($PSF.lookup_two (as sm@290@01  $PSF<two>) s@291@01))
  :qid |qp.psmResTrgDef145|)))
(assert (forall ((a@284@01 $Ref) (i@285@01 Int)) (!
  (=>
    (and (Set_in a@284@01 as@223@01) (Set_in i@285@01 is@224@01))
    (and
      (and
        (= (inv@286@01 a@284@01 i@285@01) a@284@01)
        (= (inv@288@01 a@284@01 i@285@01) i@285@01))
      (and (img@287@01 a@284@01 i@285@01) (img@289@01 a@284@01 i@285@01))))
  :pattern ((Set_in a@284@01 as@223@01) (Set_in i@285@01 is@224@01))
  :pattern ((Set_in a@284@01 as@223@01) (inv@286@01 a@284@01 i@285@01))
  :pattern ((Set_in a@284@01 as@223@01) (inv@288@01 a@284@01 i@285@01))
  :pattern ((Set_in a@284@01 as@223@01) (img@287@01 a@284@01 i@285@01))
  :pattern ((Set_in a@284@01 as@223@01) (img@289@01 a@284@01 i@285@01))
  :pattern ((Set_in i@285@01 is@224@01) (inv@286@01 a@284@01 i@285@01))
  :pattern ((Set_in i@285@01 is@224@01) (inv@288@01 a@284@01 i@285@01))
  :pattern ((Set_in i@285@01 is@224@01) (img@287@01 a@284@01 i@285@01))
  :pattern ((Set_in i@285@01 is@224@01) (img@289@01 a@284@01 i@285@01))
  :pattern ((inv@286@01 a@284@01 i@285@01))
  :pattern ((inv@288@01 a@284@01 i@285@01))
  :pattern ((img@287@01 a@284@01 i@285@01))
  :pattern ((img@289@01 a@284@01 i@285@01))
  :qid |two-invOfFct|)))
(assert (forall ((a $Ref) (i Int)) (!
  (=>
    (and
      (and (img@287@01 a i) (img@289@01 a i))
      (and
        (Set_in (inv@286@01 a i) as@223@01)
        (Set_in (inv@288@01 a i) is@224@01)))
    (and (= (inv@286@01 a i) a) (= (inv@288@01 a i) i)))
  :pattern ((inv@286@01 a i))
  :pattern ((inv@288@01 a i))
  :qid |two-fctOfInv|)))
(assert (forall ((s@293@01 $Snap)) (!
  (and
    (=>
      (Set_in s@293@01 ($PSF.domain_two (as sm@292@01  $PSF<two>)))
      (and
        (and
          (Set_in (inv@286@01 ($SortWrappers.$SnapTo$Ref ($Snap.first s@293@01)) ($SortWrappers.$SnapToInt ($Snap.second s@293@01))) as@223@01)
          (Set_in (inv@288@01 ($SortWrappers.$SnapTo$Ref ($Snap.first s@293@01)) ($SortWrappers.$SnapToInt ($Snap.second s@293@01))) is@224@01))
        (and
          (img@287@01 ($SortWrappers.$SnapTo$Ref ($Snap.first s@293@01)) ($SortWrappers.$SnapToInt ($Snap.second s@293@01)))
          (img@289@01 ($SortWrappers.$SnapTo$Ref ($Snap.first s@293@01)) ($SortWrappers.$SnapToInt ($Snap.second s@293@01))))))
    (=>
      (and
        (and
          (Set_in (inv@286@01 ($SortWrappers.$SnapTo$Ref ($Snap.first s@293@01)) ($SortWrappers.$SnapToInt ($Snap.second s@293@01))) as@223@01)
          (Set_in (inv@288@01 ($SortWrappers.$SnapTo$Ref ($Snap.first s@293@01)) ($SortWrappers.$SnapToInt ($Snap.second s@293@01))) is@224@01))
        (and
          (img@287@01 ($SortWrappers.$SnapTo$Ref ($Snap.first s@293@01)) ($SortWrappers.$SnapToInt ($Snap.second s@293@01)))
          (img@289@01 ($SortWrappers.$SnapTo$Ref ($Snap.first s@293@01)) ($SortWrappers.$SnapToInt ($Snap.second s@293@01)))))
      (Set_in s@293@01 ($PSF.domain_two (as sm@292@01  $PSF<two>)))))
  :pattern ((Set_in s@293@01 ($PSF.domain_two (as sm@292@01  $PSF<two>))))
  :qid |qp.psmDomDef150|)))
(assert (forall ((s@293@01 $Snap)) (!
  (=>
    (and
      (and
        (and
          (Set_in (inv@286@01 ($SortWrappers.$SnapTo$Ref ($Snap.first s@293@01)) ($SortWrappers.$SnapToInt ($Snap.second s@293@01))) as@223@01)
          (Set_in (inv@288@01 ($SortWrappers.$SnapTo$Ref ($Snap.first s@293@01)) ($SortWrappers.$SnapToInt ($Snap.second s@293@01))) is@224@01))
        (and
          (img@287@01 ($SortWrappers.$SnapTo$Ref ($Snap.first s@293@01)) ($SortWrappers.$SnapToInt ($Snap.second s@293@01)))
          (img@289@01 ($SortWrappers.$SnapTo$Ref ($Snap.first s@293@01)) ($SortWrappers.$SnapToInt ($Snap.second s@293@01)))))
      (and
        (= ($SortWrappers.$SnapTo$Ref ($Snap.first s@293@01)) a1@229@01)
        (= ($SortWrappers.$SnapToInt ($Snap.second s@293@01)) i1@230@01)))
    (and
      (not (= s@293@01 $Snap.unit))
      (=
        ($PSF.lookup_two (as sm@292@01  $PSF<two>) s@293@01)
        ($PSF.lookup_two (as sm@272@01  $PSF<two>) s@293@01))))
  :pattern (($PSF.lookup_two (as sm@292@01  $PSF<two>) s@293@01))
  :pattern (($PSF.lookup_two (as sm@272@01  $PSF<two>) s@293@01))
  :qid |qp.psmValDef146|)))
(assert (forall ((s@293@01 $Snap)) (!
  (=>
    (and
      (and
        (and
          (Set_in (inv@286@01 ($SortWrappers.$SnapTo$Ref ($Snap.first s@293@01)) ($SortWrappers.$SnapToInt ($Snap.second s@293@01))) as@223@01)
          (Set_in (inv@288@01 ($SortWrappers.$SnapTo$Ref ($Snap.first s@293@01)) ($SortWrappers.$SnapToInt ($Snap.second s@293@01))) is@224@01))
        (and
          (img@287@01 ($SortWrappers.$SnapTo$Ref ($Snap.first s@293@01)) ($SortWrappers.$SnapToInt ($Snap.second s@293@01)))
          (img@289@01 ($SortWrappers.$SnapTo$Ref ($Snap.first s@293@01)) ($SortWrappers.$SnapToInt ($Snap.second s@293@01)))))
      (ite
        (and
          (and
            (img@245@01 ($SortWrappers.$SnapTo$Ref ($Snap.first s@293@01)) ($SortWrappers.$SnapToInt ($Snap.second s@293@01)))
            (img@247@01 ($SortWrappers.$SnapTo$Ref ($Snap.first s@293@01)) ($SortWrappers.$SnapToInt ($Snap.second s@293@01))))
          (and
            (Set_in (inv@244@01 ($SortWrappers.$SnapTo$Ref ($Snap.first s@293@01)) ($SortWrappers.$SnapToInt ($Snap.second s@293@01))) bs@225@01)
            (Set_in (inv@246@01 ($SortWrappers.$SnapTo$Ref ($Snap.first s@293@01)) ($SortWrappers.$SnapToInt ($Snap.second s@293@01))) js@226@01)))
        (<
          $Perm.No
          (-
            (-
              (-
                $Perm.Write
                (pTaken@264@01 ($SortWrappers.$SnapTo$Ref ($Snap.first s@293@01)) ($SortWrappers.$SnapToInt ($Snap.second s@293@01))))
              (pTaken@269@01 ($SortWrappers.$SnapTo$Ref ($Snap.first s@293@01)) ($SortWrappers.$SnapToInt ($Snap.second s@293@01))))
            (pTaken@282@01 ($SortWrappers.$SnapTo$Ref ($Snap.first s@293@01)) ($SortWrappers.$SnapToInt ($Snap.second s@293@01)))))
        false))
    (and
      (not (= s@293@01 $Snap.unit))
      (=
        ($PSF.lookup_two (as sm@292@01  $PSF<two>) s@293@01)
        ($PSF.lookup_two ($SortWrappers.$SnapTo$PSF<two> ($Snap.second $t@231@01)) s@293@01))))
  :pattern (($PSF.lookup_two (as sm@292@01  $PSF<two>) s@293@01))
  :pattern (($PSF.lookup_two ($SortWrappers.$SnapTo$PSF<two> ($Snap.second $t@231@01)) s@293@01))
  :qid |qp.psmValDef147|)))
(assert (forall ((s@293@01 $Snap)) (!
  (=>
    (and
      (and
        (and
          (Set_in (inv@286@01 ($SortWrappers.$SnapTo$Ref ($Snap.first s@293@01)) ($SortWrappers.$SnapToInt ($Snap.second s@293@01))) as@223@01)
          (Set_in (inv@288@01 ($SortWrappers.$SnapTo$Ref ($Snap.first s@293@01)) ($SortWrappers.$SnapToInt ($Snap.second s@293@01))) is@224@01))
        (and
          (img@287@01 ($SortWrappers.$SnapTo$Ref ($Snap.first s@293@01)) ($SortWrappers.$SnapToInt ($Snap.second s@293@01)))
          (img@289@01 ($SortWrappers.$SnapTo$Ref ($Snap.first s@293@01)) ($SortWrappers.$SnapToInt ($Snap.second s@293@01)))))
      (ite
        (and
          (and
            (img@237@01 ($SortWrappers.$SnapTo$Ref ($Snap.first s@293@01)) ($SortWrappers.$SnapToInt ($Snap.second s@293@01)))
            (img@239@01 ($SortWrappers.$SnapTo$Ref ($Snap.first s@293@01)) ($SortWrappers.$SnapToInt ($Snap.second s@293@01))))
          (and
            (Set_in (inv@236@01 ($SortWrappers.$SnapTo$Ref ($Snap.first s@293@01)) ($SortWrappers.$SnapToInt ($Snap.second s@293@01))) as@223@01)
            (Set_in (inv@238@01 ($SortWrappers.$SnapTo$Ref ($Snap.first s@293@01)) ($SortWrappers.$SnapToInt ($Snap.second s@293@01))) is@224@01)))
        (<
          $Perm.No
          (-
            (-
              (-
                $Perm.Write
                (pTaken@263@01 ($SortWrappers.$SnapTo$Ref ($Snap.first s@293@01)) ($SortWrappers.$SnapToInt ($Snap.second s@293@01))))
              (pTaken@270@01 ($SortWrappers.$SnapTo$Ref ($Snap.first s@293@01)) ($SortWrappers.$SnapToInt ($Snap.second s@293@01))))
            (pTaken@281@01 ($SortWrappers.$SnapTo$Ref ($Snap.first s@293@01)) ($SortWrappers.$SnapToInt ($Snap.second s@293@01)))))
        false))
    (and
      (not (= s@293@01 $Snap.unit))
      (=
        ($PSF.lookup_two (as sm@292@01  $PSF<two>) s@293@01)
        ($PSF.lookup_two ($SortWrappers.$SnapTo$PSF<two> ($Snap.first $t@231@01)) s@293@01))))
  :pattern (($PSF.lookup_two (as sm@292@01  $PSF<two>) s@293@01))
  :pattern (($PSF.lookup_two ($SortWrappers.$SnapTo$PSF<two> ($Snap.first $t@231@01)) s@293@01))
  :qid |qp.psmValDef148|)))
(assert (forall ((s@293@01 $Snap)) (!
  (and
    ($PSF.loc_two ($PSF.lookup_two (as sm@272@01  $PSF<two>) s@293@01) s@293@01)
    ($PSF.loc_two ($PSF.lookup_two ($SortWrappers.$SnapTo$PSF<two> ($Snap.second $t@231@01)) s@293@01) s@293@01)
    ($PSF.loc_two ($PSF.lookup_two ($SortWrappers.$SnapTo$PSF<two> ($Snap.first $t@231@01)) s@293@01) s@293@01))
  :pattern (($PSF.lookup_two (as sm@292@01  $PSF<two>) s@293@01))
  :qid |qp.psmResTrgDef149|)))
(assert (and
  (forall ((a@284@01 $Ref) (i@285@01 Int)) (!
    (=>
      (and (Set_in a@284@01 as@223@01) (Set_in i@285@01 is@224@01))
      (or (Set_in a@284@01 as@223@01) (not (Set_in a@284@01 as@223@01))))
    :pattern ((Set_in a@284@01 as@223@01) (Set_in i@285@01 is@224@01))
    :pattern ((Set_in a@284@01 as@223@01) (inv@286@01 a@284@01 i@285@01))
    :pattern ((Set_in a@284@01 as@223@01) (inv@288@01 a@284@01 i@285@01))
    :pattern ((Set_in a@284@01 as@223@01) (img@287@01 a@284@01 i@285@01))
    :pattern ((Set_in a@284@01 as@223@01) (img@289@01 a@284@01 i@285@01))
    :pattern ((Set_in i@285@01 is@224@01) (inv@286@01 a@284@01 i@285@01))
    :pattern ((Set_in i@285@01 is@224@01) (inv@288@01 a@284@01 i@285@01))
    :pattern ((Set_in i@285@01 is@224@01) (img@287@01 a@284@01 i@285@01))
    :pattern ((Set_in i@285@01 is@224@01) (img@289@01 a@284@01 i@285@01))
    :pattern ((inv@286@01 a@284@01 i@285@01))
    :pattern ((inv@288@01 a@284@01 i@285@01))
    :pattern ((img@287@01 a@284@01 i@285@01))
    :pattern ((img@289@01 a@284@01 i@285@01))
    :qid |two-aux|))
  (forall ((a $Ref) (i Int)) (!
    (=>
      (and
        (Set_in (inv@286@01 a i) as@223@01)
        (Set_in (inv@288@01 a i) is@224@01))
      ($PSF.loc_two ($PSF.lookup_two (as sm@290@01  $PSF<two>) ($Snap.combine
        ($SortWrappers.$RefTo$Snap a)
        ($SortWrappers.IntTo$Snap i))) ($Snap.combine
        ($SortWrappers.$RefTo$Snap a)
        ($SortWrappers.IntTo$Snap i))))
    :pattern ((inv@286@01 a i) (inv@288@01 a i))
    :qid |quant-u-10006|))
  (foo_twos%precondition ($SortWrappers.$PSF<two>To$Snap (as sm@292@01  $PSF<two>)) as@223@01 is@224@01)))
(push) ; 3
(assert (not (=
  (foo_twos ($SortWrappers.$PSF<two>To$Snap (as sm@292@01  $PSF<two>)) as@223@01 is@224@01)
  0)))
(check-sat)
; unsat
(pop) ; 3
; 0.04s
; (get-info :all-statistics)
(assert (=
  (foo_twos ($SortWrappers.$PSF<two>To$Snap (as sm@292@01  $PSF<two>)) as@223@01 is@224@01)
  0))
(pop) ; 2
(pop) ; 1
