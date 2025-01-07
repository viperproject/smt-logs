(get-info :version)
; (:version "4.12.1")
; Started: 2025-01-07 13:44:21
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
(declare-sort IArray 0)
(declare-sort $FVF<val> 0)
(declare-sort $PSF<p> 0)
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
(declare-fun $SortWrappers.IArrayTo$Snap (IArray) $Snap)
(declare-fun $SortWrappers.$SnapToIArray ($Snap) IArray)
(assert (forall ((x IArray)) (!
    (= x ($SortWrappers.$SnapToIArray($SortWrappers.IArrayTo$Snap x)))
    :pattern (($SortWrappers.IArrayTo$Snap x))
    :qid |$Snap.$SnapToIArrayTo$Snap|
    )))
(assert (forall ((x $Snap)) (!
    (= x ($SortWrappers.IArrayTo$Snap($SortWrappers.$SnapToIArray x)))
    :pattern (($SortWrappers.$SnapToIArray x))
    :qid |$Snap.IArrayTo$SnapToIArray|
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
(declare-fun $SortWrappers.$PSF<p>To$Snap ($PSF<p>) $Snap)
(declare-fun $SortWrappers.$SnapTo$PSF<p> ($Snap) $PSF<p>)
(assert (forall ((x $PSF<p>)) (!
    (= x ($SortWrappers.$SnapTo$PSF<p>($SortWrappers.$PSF<p>To$Snap x)))
    :pattern (($SortWrappers.$PSF<p>To$Snap x))
    :qid |$Snap.$SnapTo$PSF<p>To$Snap|
    )))
(assert (forall ((x $Snap)) (!
    (= x ($SortWrappers.$PSF<p>To$Snap($SortWrappers.$SnapTo$PSF<p> x)))
    :pattern (($SortWrappers.$SnapTo$PSF<p> x))
    :qid |$Snap.$PSF<p>To$SnapTo$PSF<p>|
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
(declare-fun loc<Ref> (IArray Int) $Ref)
(declare-fun loc_limited<Ref> (IArray Int) $Ref)
(declare-fun len<Int> (IArray) Int)
(declare-fun first<IArray> ($Ref) IArray)
(declare-fun second<Int> ($Ref) Int)
; /field_value_functions_declarations.smt2 [val: Int]
(declare-fun $FVF.domain_val ($FVF<val>) Set<$Ref>)
(declare-fun $FVF.lookup_val ($FVF<val> $Ref) Int)
(declare-fun $FVF.after_val ($FVF<val> $FVF<val>) Bool)
(declare-fun $FVF.loc_val (Int $Ref) Bool)
(declare-fun $FVF.perm_val ($FPM $Ref) $Perm)
(declare-const $fvfTOP_val $FVF<val>)
; /predicate_snap_functions_declarations.smt2 [p: Int]
(declare-fun $PSF.domain_p ($PSF<p>) Set<$Snap>)
(declare-fun $PSF.lookup_p ($PSF<p> $Snap) Int)
(declare-fun $PSF.after_p ($PSF<p> $PSF<p>) Bool)
(declare-fun $PSF.loc_p (Int $Snap) Bool)
(declare-fun $PSF.perm_p ($PPM $Snap) $Perm)
(declare-const $psfTOP_p $PSF<p>)
; Declaring symbols related to program functions (from program analysis)
; Snapshot variable to be used during function verification
(declare-fun s@$ () $Snap)
; Declaring predicate trigger functions
(declare-fun p%trigger ($Snap IArray Int) Bool)
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
(assert (forall ((a IArray) (i Int)) (!
  (= (loc<Ref> a i) (loc_limited<Ref> a i))
  :pattern ((loc<Ref> a i))
  :qid |prog.limited|)))
(assert (forall ((a IArray) (i Int)) (!
  (and (= (first<IArray> (loc<Ref> a i)) a) (= (second<Int> (loc<Ref> a i)) i))
  :pattern ((loc<Ref> a i))
  :qid |prog.all_diff|)))
(assert (forall ((a IArray)) (!
  (>= (len<Int> a) 0)
  :pattern ((len<Int> a))
  :qid |prog.length_nonneg|)))
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
; /predicate_snap_functions_axioms.smt2 [p: Int]
(assert (forall ((vs $PSF<p>) (ws $PSF<p>)) (!
    (=>
      (and
        (Set_equal ($PSF.domain_p vs) ($PSF.domain_p ws))
        (forall ((x $Snap)) (!
          (=>
            (Set_in x ($PSF.domain_p vs))
            (= ($PSF.lookup_p vs x) ($PSF.lookup_p ws x)))
          :pattern (($PSF.lookup_p vs x) ($PSF.lookup_p ws x))
          :qid |qp.$PSF<p>-eq-inner|
          )))
      (= vs ws))
    :pattern (($SortWrappers.$PSF<p>To$Snap vs)
              ($SortWrappers.$PSF<p>To$Snap ws)
              )
    :qid |qp.$PSF<p>-eq-outer|
    )))
(assert (forall ((s $Snap) (pm $PPM)) (!
    ($Perm.isValidVar ($PSF.perm_p pm s))
    :pattern (($PSF.perm_p pm s)))))
(assert (forall ((s $Snap) (f Int)) (!
    (= ($PSF.loc_p f s) true)
    :pattern (($PSF.loc_p f s)))))
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
; ---------- m1 ----------
(declare-const a@0@01 IArray)
(declare-const n@1@01 Int)
(declare-const i1@2@01 Int)
(declare-const i2@3@01 Int)
(declare-const a@4@01 IArray)
(declare-const n@5@01 Int)
(declare-const i1@6@01 Int)
(declare-const i2@7@01 Int)
(set-option :timeout 0)
(push) ; 1
(declare-const $t@8@01 $Snap)
(assert (= $t@8@01 ($Snap.combine ($Snap.first $t@8@01) ($Snap.second $t@8@01))))
(assert (= ($Snap.first $t@8@01) $Snap.unit))
; [eval] n > 3
(assert (> n@5@01 3))
(declare-const i@9@01 Int)
(push) ; 2
; [eval] i > 0 && i < n
; [eval] i > 0
(push) ; 3
; [then-branch: 0 | !(i@9@01 > 0) | live]
; [else-branch: 0 | i@9@01 > 0 | live]
(push) ; 4
; [then-branch: 0 | !(i@9@01 > 0)]
(assert (not (> i@9@01 0)))
(pop) ; 4
(push) ; 4
; [else-branch: 0 | i@9@01 > 0]
(assert (> i@9@01 0))
; [eval] i < n
(pop) ; 4
(pop) ; 3
; Joined path conditions
; Joined path conditions
(assert (or (> i@9@01 0) (not (> i@9@01 0))))
(assert (and (> i@9@01 0) (< i@9@01 n@5@01)))
; [eval] i + 1
(pop) ; 2
(declare-fun inv@10@01 (IArray Int) Int)
(declare-fun img@11@01 (IArray Int) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
(assert (forall ((i@9@01@rw0 Int)) (!
  (=> (and (> i@9@01 0) (< i@9@01 n@5@01)) (or (> i@9@01 0) (not (> i@9@01 0))))
  :pattern ((inv@10@01 a@4@01 i@9@01@rw0))
  :pattern ((img@11@01 a@4@01 i@9@01@rw0))
  :qid |p-aux|)))
; Check receiver injectivity
(push) ; 2
(assert (not (forall ((i1@9@01 Int) (i2@9@01 Int)) (!
  (=>
    (and
      (and (> i1@9@01 0) (< i1@9@01 n@5@01))
      (and (> i2@9@01 0) (< i2@9@01 n@5@01))
      (= (+ i1@9@01 1) (+ i2@9@01 1)))
    (= i1@9@01 i2@9@01))
  
  :qid |p-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 2
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((i@9@01@rw0 Int)) (!
  (=>
    (and (> (- i@9@01@rw0 1) 0) (< (- i@9@01@rw0 1) n@5@01))
    (and
      (= (inv@10@01 a@4@01 i@9@01@rw0) (- i@9@01@rw0 1))
      (img@11@01 a@4@01 i@9@01@rw0)))
  :pattern ((inv@10@01 a@4@01 i@9@01@rw0))
  :pattern ((img@11@01 a@4@01 i@9@01@rw0))
  :qid |quant-u-18355|)))
(assert (forall ((a IArray) (i Int)) (!
  (=>
    (and (img@11@01 a i) (and (> (inv@10@01 a i) 0) (< (inv@10@01 a i) n@5@01)))
    (and (= a@4@01 a) (= (+ (inv@10@01 a i) 1) i)))
  :pattern ((inv@10@01 a i))
  :qid |p-fctOfInv|)))
; Permissions are non-negative
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
(set-option :timeout 0)
(push) ; 2
(declare-const i@12@01 Int)
(push) ; 3
; [eval] i > 0 && i < n
; [eval] i > 0
(push) ; 4
; [then-branch: 1 | !(i@12@01 > 0) | live]
; [else-branch: 1 | i@12@01 > 0 | live]
(push) ; 5
; [then-branch: 1 | !(i@12@01 > 0)]
(assert (not (> i@12@01 0)))
(pop) ; 5
(push) ; 5
; [else-branch: 1 | i@12@01 > 0]
(assert (> i@12@01 0))
; [eval] i < n
(pop) ; 5
(pop) ; 4
; Joined path conditions
; Joined path conditions
(assert (or (> i@12@01 0) (not (> i@12@01 0))))
(assert (and (> i@12@01 0) (< i@12@01 n@5@01)))
; [eval] i + 1
(pop) ; 3
(declare-const $t@13@01 $PSF<p>)
(declare-fun inv@14@01 (IArray Int) Int)
(declare-fun img@15@01 (IArray Int) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
(assert (forall ((i@12@01@rw1 Int)) (!
  (=>
    (and (> i@12@01 0) (< i@12@01 n@5@01))
    (or (> i@12@01 0) (not (> i@12@01 0))))
  :pattern ((inv@14@01 a@4@01 i@12@01@rw1))
  :pattern ((img@15@01 a@4@01 i@12@01@rw1))
  :qid |p-aux|)))
; Check receiver injectivity
(push) ; 3
(assert (not (forall ((i1@12@01 Int) (i2@12@01 Int)) (!
  (=>
    (and
      (and (> i1@12@01 0) (< i1@12@01 n@5@01))
      (and (> i2@12@01 0) (< i2@12@01 n@5@01))
      (= (+ i1@12@01 1) (+ i2@12@01 1)))
    (= i1@12@01 i2@12@01))
  
  :qid |p-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((i@12@01@rw1 Int)) (!
  (=>
    (and (> (- i@12@01@rw1 1) 0) (< (- i@12@01@rw1 1) n@5@01))
    (and
      (= (inv@14@01 a@4@01 i@12@01@rw1) (- i@12@01@rw1 1))
      (img@15@01 a@4@01 i@12@01@rw1)))
  :pattern ((inv@14@01 a@4@01 i@12@01@rw1))
  :pattern ((img@15@01 a@4@01 i@12@01@rw1))
  :qid |quant-u-18357|)))
(assert (forall ((a IArray) (i Int)) (!
  (=>
    (and (img@15@01 a i) (and (> (inv@14@01 a i) 0) (< (inv@14@01 a i) n@5@01)))
    (and (= a@4@01 a) (= (+ (inv@14@01 a i) 1) i)))
  :pattern ((inv@14@01 a i))
  :qid |p-fctOfInv|)))
; Permissions are non-negative
(pop) ; 2
(push) ; 2
(declare-const i@16@01 Int)
(push) ; 3
; [eval] i > 0 && i < n
; [eval] i > 0
(push) ; 4
; [then-branch: 2 | !(i@16@01 > 0) | live]
; [else-branch: 2 | i@16@01 > 0 | live]
(push) ; 5
; [then-branch: 2 | !(i@16@01 > 0)]
(assert (not (> i@16@01 0)))
(pop) ; 5
(push) ; 5
; [else-branch: 2 | i@16@01 > 0]
(assert (> i@16@01 0))
; [eval] i < n
(pop) ; 5
(pop) ; 4
; Joined path conditions
; Joined path conditions
(assert (or (> i@16@01 0) (not (> i@16@01 0))))
(assert (and (> i@16@01 0) (< i@16@01 n@5@01)))
; [eval] i + 1
(pop) ; 3
(declare-fun inv@17@01 (IArray Int) Int)
(declare-fun img@18@01 (IArray Int) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
(assert (forall ((i@16@01@rw2 Int)) (!
  (=>
    (and (> i@16@01 0) (< i@16@01 n@5@01))
    (or (> i@16@01 0) (not (> i@16@01 0))))
  :pattern ((inv@17@01 a@4@01 i@16@01@rw2))
  :pattern ((img@18@01 a@4@01 i@16@01@rw2))
  :qid |p-aux|)))
; Check receiver injectivity
(push) ; 3
(assert (not (forall ((i1@16@01 Int) (i2@16@01 Int)) (!
  (=>
    (and
      (and (> i1@16@01 0) (< i1@16@01 n@5@01))
      (and (> i2@16@01 0) (< i2@16@01 n@5@01))
      (= (+ i1@16@01 1) (+ i2@16@01 1)))
    (= i1@16@01 i2@16@01))
  
  :qid |p-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((i@16@01@rw2 Int)) (!
  (=>
    (and (> (- i@16@01@rw2 1) 0) (< (- i@16@01@rw2 1) n@5@01))
    (and
      (= (inv@17@01 a@4@01 i@16@01@rw2) (- i@16@01@rw2 1))
      (img@18@01 a@4@01 i@16@01@rw2)))
  :pattern ((inv@17@01 a@4@01 i@16@01@rw2))
  :pattern ((img@18@01 a@4@01 i@16@01@rw2))
  :qid |p-invOfFct|)))
(assert (forall ((a IArray) (i Int)) (!
  (=>
    (and (img@18@01 a i) (and (> (inv@17@01 a i) 0) (< (inv@17@01 a i) n@5@01)))
    (and (= a@4@01 a) (= (+ (inv@17@01 a i) 1) i)))
  :pattern ((inv@17@01 a i))
  :qid |p-fctOfInv|)))
; Precomputing data for removing quantified permissions
(define-fun pTaken@19@01 ((a IArray) (i Int)) $Perm
  (ite
    (and
      (and (> (inv@17@01 a i) 0) (< (inv@17@01 a i) n@5@01))
      (img@18@01 a i)
      (and (= a a@4@01) (= i (+ (inv@17@01 a i) 1))))
    ($Perm.min
      (ite
        (and
          (img@11@01 a i)
          (and (> (inv@10@01 a i) 0) (< (inv@10@01 a i) n@5@01)))
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
(assert (not (forall ((a IArray) (i Int)) (!
  (=
    (-
      (ite
        (and
          (img@11@01 a i)
          (and (> (inv@10@01 a i) 0) (< (inv@10@01 a i) n@5@01)))
        $Perm.Write
        $Perm.No)
      (pTaken@19@01 a i))
    $Perm.No)
  
  :qid |quant-u-18360|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Intermediate check if already taken enough permissions
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 500)
(assert (not (forall ((a IArray) (i Int)) (!
  (=>
    (and
      (and (> (inv@17@01 a i) 0) (< (inv@17@01 a i) n@5@01))
      (img@18@01 a i)
      (and (= a a@4@01) (= i (+ (inv@17@01 a i) 1))))
    (= (- $Perm.Write (pTaken@19@01 a i)) $Perm.No))
  
  :qid |quant-u-18361|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Final check if taken enough permissions
; Done removing quantified permissions
(pop) ; 2
(pop) ; 1
; ---------- m2 ----------
(declare-const a@20@01 IArray)
(declare-const n@21@01 Int)
(declare-const i1@22@01 Int)
(declare-const i2@23@01 Int)
(declare-const a@24@01 IArray)
(declare-const n@25@01 Int)
(declare-const i1@26@01 Int)
(declare-const i2@27@01 Int)
(set-option :timeout 0)
(push) ; 1
(declare-const $t@28@01 $Snap)
(assert (= $t@28@01 ($Snap.combine ($Snap.first $t@28@01) ($Snap.second $t@28@01))))
(assert (= ($Snap.first $t@28@01) $Snap.unit))
; [eval] n > 3
(assert (> n@25@01 3))
(declare-const i@29@01 Int)
(push) ; 2
; [eval] i > 0 && i < n
; [eval] i > 0
(push) ; 3
; [then-branch: 3 | !(i@29@01 > 0) | live]
; [else-branch: 3 | i@29@01 > 0 | live]
(push) ; 4
; [then-branch: 3 | !(i@29@01 > 0)]
(assert (not (> i@29@01 0)))
(pop) ; 4
(push) ; 4
; [else-branch: 3 | i@29@01 > 0]
(assert (> i@29@01 0))
; [eval] i < n
(pop) ; 4
(pop) ; 3
; Joined path conditions
; Joined path conditions
(assert (or (> i@29@01 0) (not (> i@29@01 0))))
(assert (and (> i@29@01 0) (< i@29@01 n@25@01)))
; [eval] loc(a, i + 1)
; [eval] i + 1
(pop) ; 2
(declare-fun inv@30@01 ($Ref) Int)
(declare-fun img@31@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
(assert (forall ((i@29@01@rw3 Int)) (!
  (=>
    (and (> i@29@01 0) (< i@29@01 n@25@01))
    (or (> i@29@01 0) (not (> i@29@01 0))))
  :pattern ((loc<Ref> a@24@01 i@29@01@rw3))
  :qid |val-aux|)))
; Check receiver injectivity
(push) ; 2
(assert (not (forall ((i1@29@01 Int) (i2@29@01 Int)) (!
  (=>
    (and
      (and (> i1@29@01 0) (< i1@29@01 n@25@01))
      (and (> i2@29@01 0) (< i2@29@01 n@25@01))
      (= (loc<Ref> a@24@01 (+ i1@29@01 1)) (loc<Ref> a@24@01 (+ i2@29@01 1))))
    (= i1@29@01 i2@29@01))
  
  :qid |val-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 2
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((i@29@01@rw3 Int)) (!
  (=>
    (and (> (- i@29@01@rw3 1) 0) (< (- i@29@01@rw3 1) n@25@01))
    (and
      (= (inv@30@01 (loc<Ref> a@24@01 i@29@01@rw3)) (- i@29@01@rw3 1))
      (img@31@01 (loc<Ref> a@24@01 i@29@01@rw3))))
  :pattern ((loc<Ref> a@24@01 i@29@01@rw3))
  :qid |quant-u-18363|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@31@01 r) (and (> (inv@30@01 r) 0) (< (inv@30@01 r) n@25@01)))
    (= (loc<Ref> a@24@01 (+ (inv@30@01 r) 1)) r))
  :pattern ((inv@30@01 r))
  :qid |val-fctOfInv|)))
; Permissions are non-negative
; Field permissions are at most one
; Permission implies non-null receiver
(assert (forall ((i@29@01@rw3 Int)) (!
  (=>
    (and (> i@29@01 0) (< i@29@01 n@25@01))
    (not (= (loc<Ref> a@24@01 (+ i@29@01 1)) $Ref.null)))
  :pattern ((loc<Ref> a@24@01 i@29@01@rw3))
  :qid |val-permImpliesNonNull|)))
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
(set-option :timeout 0)
(push) ; 2
(declare-const i@32@01 Int)
(push) ; 3
; [eval] i > 0 && i < n
; [eval] i > 0
(push) ; 4
; [then-branch: 4 | !(i@32@01 > 0) | live]
; [else-branch: 4 | i@32@01 > 0 | live]
(push) ; 5
; [then-branch: 4 | !(i@32@01 > 0)]
(assert (not (> i@32@01 0)))
(pop) ; 5
(push) ; 5
; [else-branch: 4 | i@32@01 > 0]
(assert (> i@32@01 0))
; [eval] i < n
(pop) ; 5
(pop) ; 4
; Joined path conditions
; Joined path conditions
(assert (or (> i@32@01 0) (not (> i@32@01 0))))
(assert (and (> i@32@01 0) (< i@32@01 n@25@01)))
; [eval] loc(a, i + 1)
; [eval] i + 1
(pop) ; 3
(declare-const $t@33@01 $FVF<val>)
(declare-fun inv@34@01 ($Ref) Int)
(declare-fun img@35@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
(assert (forall ((i@32@01@rw4 Int)) (!
  (=>
    (and (> i@32@01 0) (< i@32@01 n@25@01))
    (or (> i@32@01 0) (not (> i@32@01 0))))
  :pattern ((loc<Ref> a@24@01 i@32@01@rw4))
  :qid |val-aux|)))
; Check receiver injectivity
(push) ; 3
(assert (not (forall ((i1@32@01 Int) (i2@32@01 Int)) (!
  (=>
    (and
      (and (> i1@32@01 0) (< i1@32@01 n@25@01))
      (and (> i2@32@01 0) (< i2@32@01 n@25@01))
      (= (loc<Ref> a@24@01 (+ i1@32@01 1)) (loc<Ref> a@24@01 (+ i2@32@01 1))))
    (= i1@32@01 i2@32@01))
  
  :qid |val-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((i@32@01@rw4 Int)) (!
  (=>
    (and (> (- i@32@01@rw4 1) 0) (< (- i@32@01@rw4 1) n@25@01))
    (and
      (= (inv@34@01 (loc<Ref> a@24@01 i@32@01@rw4)) (- i@32@01@rw4 1))
      (img@35@01 (loc<Ref> a@24@01 i@32@01@rw4))))
  :pattern ((loc<Ref> a@24@01 i@32@01@rw4))
  :qid |quant-u-18365|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@35@01 r) (and (> (inv@34@01 r) 0) (< (inv@34@01 r) n@25@01)))
    (= (loc<Ref> a@24@01 (+ (inv@34@01 r) 1)) r))
  :pattern ((inv@34@01 r))
  :qid |val-fctOfInv|)))
; Permissions are non-negative
; Field permissions are at most one
; Permission implies non-null receiver
(assert (forall ((i@32@01@rw4 Int)) (!
  (=>
    (and (> i@32@01 0) (< i@32@01 n@25@01))
    (not (= (loc<Ref> a@24@01 (+ i@32@01 1)) $Ref.null)))
  :pattern ((loc<Ref> a@24@01 i@32@01@rw4))
  :qid |val-permImpliesNonNull|)))
(pop) ; 2
(push) ; 2
(declare-const i@36@01 Int)
(push) ; 3
; [eval] i > 0 && i < n
; [eval] i > 0
(push) ; 4
; [then-branch: 5 | !(i@36@01 > 0) | live]
; [else-branch: 5 | i@36@01 > 0 | live]
(push) ; 5
; [then-branch: 5 | !(i@36@01 > 0)]
(assert (not (> i@36@01 0)))
(pop) ; 5
(push) ; 5
; [else-branch: 5 | i@36@01 > 0]
(assert (> i@36@01 0))
; [eval] i < n
(pop) ; 5
(pop) ; 4
; Joined path conditions
; Joined path conditions
(assert (or (> i@36@01 0) (not (> i@36@01 0))))
(assert (and (> i@36@01 0) (< i@36@01 n@25@01)))
; [eval] loc(a, i + 1)
; [eval] i + 1
(pop) ; 3
(declare-fun inv@37@01 ($Ref) Int)
(declare-fun img@38@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
(assert (forall ((i@36@01@rw5 Int)) (!
  (=>
    (and (> i@36@01 0) (< i@36@01 n@25@01))
    (or (> i@36@01 0) (not (> i@36@01 0))))
  :pattern ((loc<Ref> a@24@01 i@36@01@rw5))
  :qid |val-aux|)))
; Check receiver injectivity
(push) ; 3
(assert (not (forall ((i1@36@01 Int) (i2@36@01 Int)) (!
  (=>
    (and
      (and (> i1@36@01 0) (< i1@36@01 n@25@01))
      (and (> i2@36@01 0) (< i2@36@01 n@25@01))
      (= (loc<Ref> a@24@01 (+ i1@36@01 1)) (loc<Ref> a@24@01 (+ i2@36@01 1))))
    (= i1@36@01 i2@36@01))
  
  :qid |val-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((i@36@01@rw5 Int)) (!
  (=>
    (and (> (- i@36@01@rw5 1) 0) (< (- i@36@01@rw5 1) n@25@01))
    (and
      (= (inv@37@01 (loc<Ref> a@24@01 i@36@01@rw5)) (- i@36@01@rw5 1))
      (img@38@01 (loc<Ref> a@24@01 i@36@01@rw5))))
  :pattern ((loc<Ref> a@24@01 i@36@01@rw5))
  :qid |val-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@38@01 r) (and (> (inv@37@01 r) 0) (< (inv@37@01 r) n@25@01)))
    (= (loc<Ref> a@24@01 (+ (inv@37@01 r) 1)) r))
  :pattern ((inv@37@01 r))
  :qid |val-fctOfInv|)))
; Precomputing data for removing quantified permissions
(define-fun pTaken@39@01 ((r $Ref)) $Perm
  (ite
    (and
      (and (> (inv@37@01 r) 0) (< (inv@37@01 r) n@25@01))
      (img@38@01 r)
      (= r (loc<Ref> a@24@01 (+ (inv@37@01 r) 1))))
    ($Perm.min
      (ite
        (and (img@31@01 r) (and (> (inv@30@01 r) 0) (< (inv@30@01 r) n@25@01)))
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
        (and (img@31@01 r) (and (> (inv@30@01 r) 0) (< (inv@30@01 r) n@25@01)))
        $Perm.Write
        $Perm.No)
      (pTaken@39@01 r))
    $Perm.No)
  
  :qid |quant-u-18368|))))
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
      (and (> (inv@37@01 r) 0) (< (inv@37@01 r) n@25@01))
      (img@38@01 r)
      (= r (loc<Ref> a@24@01 (+ (inv@37@01 r) 1))))
    (= (- $Perm.Write (pTaken@39@01 r)) $Perm.No))
  
  :qid |quant-u-18369|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Final check if taken enough permissions
; Done removing quantified permissions
(pop) ; 2
(pop) ; 1
; ---------- m3 ----------
(declare-const a@40@01 IArray)
(declare-const n@41@01 Int)
(declare-const i1@42@01 Int)
(declare-const i2@43@01 Int)
(declare-const a@44@01 IArray)
(declare-const n@45@01 Int)
(declare-const i1@46@01 Int)
(declare-const i2@47@01 Int)
(set-option :timeout 0)
(push) ; 1
(declare-const $t@48@01 $Snap)
(assert (= $t@48@01 ($Snap.combine ($Snap.first $t@48@01) ($Snap.second $t@48@01))))
(assert (= ($Snap.first $t@48@01) $Snap.unit))
; [eval] n > 3
(assert (> n@45@01 3))
(declare-const i@49@01 Int)
(push) ; 2
; [eval] i > 0 && i < n
; [eval] i > 0
(push) ; 3
; [then-branch: 6 | !(i@49@01 > 0) | live]
; [else-branch: 6 | i@49@01 > 0 | live]
(push) ; 4
; [then-branch: 6 | !(i@49@01 > 0)]
(assert (not (> i@49@01 0)))
(pop) ; 4
(push) ; 4
; [else-branch: 6 | i@49@01 > 0]
(assert (> i@49@01 0))
; [eval] i < n
(pop) ; 4
(pop) ; 3
; Joined path conditions
; Joined path conditions
(assert (or (> i@49@01 0) (not (> i@49@01 0))))
(assert (and (> i@49@01 0) (< i@49@01 n@45@01)))
; [eval] i + 1
(pop) ; 2
(declare-fun inv@50@01 (IArray Int) Int)
(declare-fun img@51@01 (IArray Int) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
(assert (forall ((i@49@01@rw6 Int)) (!
  (=>
    (and (> i@49@01 0) (< i@49@01 n@45@01))
    (or (> i@49@01 0) (not (> i@49@01 0))))
  :pattern ((inv@50@01 a@44@01 i@49@01@rw6))
  :pattern ((img@51@01 a@44@01 i@49@01@rw6))
  :qid |p-aux|)))
; Check receiver injectivity
(push) ; 2
(assert (not (forall ((i1@49@01 Int) (i2@49@01 Int)) (!
  (=>
    (and
      (and (> i1@49@01 0) (< i1@49@01 n@45@01))
      (and (> i2@49@01 0) (< i2@49@01 n@45@01))
      (= (+ i1@49@01 1) (+ i2@49@01 1)))
    (= i1@49@01 i2@49@01))
  
  :qid |p-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 2
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((i@49@01@rw6 Int)) (!
  (=>
    (and (> (- i@49@01@rw6 1) 0) (< (- i@49@01@rw6 1) n@45@01))
    (and
      (= (inv@50@01 a@44@01 i@49@01@rw6) (- i@49@01@rw6 1))
      (img@51@01 a@44@01 i@49@01@rw6)))
  :pattern ((inv@50@01 a@44@01 i@49@01@rw6))
  :pattern ((img@51@01 a@44@01 i@49@01@rw6))
  :qid |quant-u-18371|)))
(assert (forall ((a IArray) (i Int)) (!
  (=>
    (and (img@51@01 a i) (and (> (inv@50@01 a i) 0) (< (inv@50@01 a i) n@45@01)))
    (and (= a@44@01 a) (= (+ (inv@50@01 a i) 1) i)))
  :pattern ((inv@50@01 a i))
  :qid |p-fctOfInv|)))
; Permissions are non-negative
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
(set-option :timeout 0)
(push) ; 2
(declare-const $t@52@01 Int)
(declare-const sm@53@01 $PSF<p>)
; Definitional axioms for singleton-SM's value
(assert (=
  ($PSF.lookup_p (as sm@53@01  $PSF<p>) ($Snap.combine
    ($SortWrappers.IArrayTo$Snap a@44@01)
    ($SortWrappers.IntTo$Snap 1)))
  $t@52@01))
(assert (<= $Perm.No (ite (= 1 1) $Perm.Write $Perm.No)))
(pop) ; 2
(push) ; 2
; Precomputing data for removing quantified permissions
(define-fun pTaken@54@01 ((a IArray) (i Int)) $Perm
  (ite
    (and (= a a@44@01) (= i 1))
    ($Perm.min
      (ite
        (and
          (img@51@01 a i)
          (and (> (inv@50@01 a i) 0) (< (inv@50@01 a i) n@45@01)))
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
(assert (not (forall ((a IArray) (i Int)) (!
  (=
    (-
      (ite
        (and
          (img@51@01 a i)
          (and (> (inv@50@01 a i) 0) (< (inv@50@01 a i) n@45@01)))
        $Perm.Write
        $Perm.No)
      (pTaken@54@01 a i))
    $Perm.No)
  
  :qid |quant-u-18373|))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (forall ((a IArray) (i Int)) (!
  (= (pTaken@54@01 a i) $Perm.No)
  
  :qid |quant-u-18374|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Intermediate check if already taken enough permissions
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 500)
(assert (not (forall ((a IArray) (i Int)) (!
  (=>
    (and (= a a@44@01) (= i 1))
    (= (- $Perm.Write (pTaken@54@01 a i)) $Perm.No))
  
  :qid |quant-u-18375|))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Final check if taken enough permissions
(set-option :timeout 0)
(push) ; 3
(assert (not (forall ((a IArray) (i Int)) (!
  (=>
    (and (= a a@44@01) (= i 1))
    (= (- $Perm.Write (pTaken@54@01 a i)) $Perm.No))
  
  :qid |quant-u-18375|))))
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
; Precomputing data for removing quantified permissions
(define-fun pTaken@55@01 ((a IArray) (i Int)) $Perm
  (ite
    (and (= a a@44@01) (= i 1))
    ($Perm.min
      (ite
        (and
          (img@51@01 a i)
          (and (> (inv@50@01 a i) 0) (< (inv@50@01 a i) n@45@01)))
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
(push) ; 3
(set-option :timeout 500)
(assert (not (forall ((a IArray) (i Int)) (!
  (=
    (-
      (ite
        (and
          (img@51@01 a i)
          (and (> (inv@50@01 a i) 0) (< (inv@50@01 a i) n@45@01)))
        $Perm.Write
        $Perm.No)
      (pTaken@55@01 a i))
    $Perm.No)
  
  :qid |quant-u-18377|))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (forall ((a IArray) (i Int)) (!
  (= (pTaken@55@01 a i) $Perm.No)
  
  :qid |quant-u-18378|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Intermediate check if already taken enough permissions
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 500)
(assert (not (forall ((a IArray) (i Int)) (!
  (=>
    (and (= a a@44@01) (= i 1))
    (= (- $Perm.Write (pTaken@55@01 a i)) $Perm.No))
  
  :qid |quant-u-18379|))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Final check if taken enough permissions
(set-option :timeout 0)
(push) ; 3
(assert (not (forall ((a IArray) (i Int)) (!
  (=>
    (and (= a a@44@01) (= i 1))
    (= (- $Perm.Write (pTaken@55@01 a i)) $Perm.No))
  
  :qid |quant-u-18379|))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Done removing quantified permissions
(pop) ; 2
(pop) ; 1
; ---------- m4 ----------
(declare-const a@56@01 IArray)
(declare-const n@57@01 Int)
(declare-const i1@58@01 Int)
(declare-const i2@59@01 Int)
(declare-const a@60@01 IArray)
(declare-const n@61@01 Int)
(declare-const i1@62@01 Int)
(declare-const i2@63@01 Int)
(push) ; 1
(declare-const $t@64@01 $Snap)
(assert (= $t@64@01 ($Snap.combine ($Snap.first $t@64@01) ($Snap.second $t@64@01))))
(assert (= ($Snap.first $t@64@01) $Snap.unit))
; [eval] n > 3
(assert (> n@61@01 3))
(declare-const i@65@01 Int)
(push) ; 2
; [eval] i > 0 && i < n
; [eval] i > 0
(push) ; 3
; [then-branch: 7 | !(i@65@01 > 0) | live]
; [else-branch: 7 | i@65@01 > 0 | live]
(push) ; 4
; [then-branch: 7 | !(i@65@01 > 0)]
(assert (not (> i@65@01 0)))
(pop) ; 4
(push) ; 4
; [else-branch: 7 | i@65@01 > 0]
(assert (> i@65@01 0))
; [eval] i < n
(pop) ; 4
(pop) ; 3
; Joined path conditions
; Joined path conditions
(assert (or (> i@65@01 0) (not (> i@65@01 0))))
(assert (and (> i@65@01 0) (< i@65@01 n@61@01)))
; [eval] loc(a, i + 1)
; [eval] i + 1
(pop) ; 2
(declare-fun inv@66@01 ($Ref) Int)
(declare-fun img@67@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
(assert (forall ((i@65@01@rw7 Int)) (!
  (=>
    (and (> i@65@01 0) (< i@65@01 n@61@01))
    (or (> i@65@01 0) (not (> i@65@01 0))))
  :pattern ((loc<Ref> a@60@01 i@65@01@rw7))
  :qid |val-aux|)))
; Check receiver injectivity
(push) ; 2
(assert (not (forall ((i1@65@01 Int) (i2@65@01 Int)) (!
  (=>
    (and
      (and (> i1@65@01 0) (< i1@65@01 n@61@01))
      (and (> i2@65@01 0) (< i2@65@01 n@61@01))
      (= (loc<Ref> a@60@01 (+ i1@65@01 1)) (loc<Ref> a@60@01 (+ i2@65@01 1))))
    (= i1@65@01 i2@65@01))
  
  :qid |val-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 2
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((i@65@01@rw7 Int)) (!
  (=>
    (and (> (- i@65@01@rw7 1) 0) (< (- i@65@01@rw7 1) n@61@01))
    (and
      (= (inv@66@01 (loc<Ref> a@60@01 i@65@01@rw7)) (- i@65@01@rw7 1))
      (img@67@01 (loc<Ref> a@60@01 i@65@01@rw7))))
  :pattern ((loc<Ref> a@60@01 i@65@01@rw7))
  :qid |quant-u-18381|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@67@01 r) (and (> (inv@66@01 r) 0) (< (inv@66@01 r) n@61@01)))
    (= (loc<Ref> a@60@01 (+ (inv@66@01 r) 1)) r))
  :pattern ((inv@66@01 r))
  :qid |val-fctOfInv|)))
; Permissions are non-negative
; Field permissions are at most one
; Permission implies non-null receiver
(assert (forall ((i@65@01@rw7 Int)) (!
  (=>
    (and (> i@65@01 0) (< i@65@01 n@61@01))
    (not (= (loc<Ref> a@60@01 (+ i@65@01 1)) $Ref.null)))
  :pattern ((loc<Ref> a@60@01 i@65@01@rw7))
  :qid |val-permImpliesNonNull|)))
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
(set-option :timeout 0)
(push) ; 2
; [eval] loc(a, 1)
(declare-const $t@68@01 Int)
(declare-const sm@69@01 $FVF<val>)
; Definitional axioms for singleton-SM's value
(assert (= ($FVF.lookup_val (as sm@69@01  $FVF<val>) (loc<Ref> a@60@01 1)) $t@68@01))
(assert (<=
  $Perm.No
  (ite (= (loc<Ref> a@60@01 1) (loc<Ref> a@60@01 1)) $Perm.Write $Perm.No)))
(assert (<=
  (ite (= (loc<Ref> a@60@01 1) (loc<Ref> a@60@01 1)) $Perm.Write $Perm.No)
  $Perm.Write))
(assert (=>
  (= (loc<Ref> a@60@01 1) (loc<Ref> a@60@01 1))
  (not (= (loc<Ref> a@60@01 1) $Ref.null))))
(pop) ; 2
(push) ; 2
; [eval] loc(a, 1)
; Precomputing data for removing quantified permissions
(define-fun pTaken@70@01 ((r $Ref)) $Perm
  (ite
    (= r (loc<Ref> a@60@01 1))
    ($Perm.min
      (ite
        (and (img@67@01 r) (and (> (inv@66@01 r) 0) (< (inv@66@01 r) n@61@01)))
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
        (and (img@67@01 r) (and (> (inv@66@01 r) 0) (< (inv@66@01 r) n@61@01)))
        $Perm.Write
        $Perm.No)
      (pTaken@70@01 r))
    $Perm.No)
  
  :qid |quant-u-18383|))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (forall ((r $Ref)) (!
  (= (pTaken@70@01 r) $Perm.No)
  
  :qid |quant-u-18384|))))
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
  (=> (= r (loc<Ref> a@60@01 1)) (= (- $Perm.Write (pTaken@70@01 r)) $Perm.No))
  
  :qid |quant-u-18385|))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Final check if taken enough permissions
(set-option :timeout 0)
(push) ; 3
(assert (not (forall ((r $Ref)) (!
  (=> (= r (loc<Ref> a@60@01 1)) (= (- $Perm.Write (pTaken@70@01 r)) $Perm.No))
  
  :qid |quant-u-18385|))))
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
(declare-const sm@71@01 $FVF<val>)
; Definitional axioms for snapshot map values
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@67@01 r) (and (> (inv@66@01 r) 0) (< (inv@66@01 r) n@61@01)))
    (=
      ($FVF.lookup_val (as sm@71@01  $FVF<val>) r)
      ($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.second $t@64@01)) r)))
  :pattern (($FVF.lookup_val (as sm@71@01  $FVF<val>) r))
  :pattern (($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.second $t@64@01)) r))
  :qid |qp.fvfValDef0|)))
(declare-const pm@72@01 $FPM)
(assert (forall ((r $Ref)) (!
  (=
    ($FVF.perm_val (as pm@72@01  $FPM) r)
    (ite
      (and (img@67@01 r) (and (> (inv@66@01 r) 0) (< (inv@66@01 r) n@61@01)))
      $Perm.Write
      $Perm.No))
  :pattern (($FVF.perm_val (as pm@72@01  $FPM) r))
  :qid |qp.resPrmSumDef1|)))
; Assume upper permission bound for field val
(assert (forall ((r $Ref)) (!
  (<= ($FVF.perm_val (as pm@72@01  $FPM) r) $Perm.Write)
  :pattern ((inv@66@01 r))
  :qid |qp-fld-prm-bnd|)))
; [eval] loc(a, 1)
; Precomputing data for removing quantified permissions
(define-fun pTaken@73@01 ((r $Ref)) $Perm
  (ite
    (= r (loc<Ref> a@60@01 1))
    ($Perm.min
      (ite
        (and (img@67@01 r) (and (> (inv@66@01 r) 0) (< (inv@66@01 r) n@61@01)))
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
(push) ; 3
(set-option :timeout 500)
(assert (not (forall ((r $Ref)) (!
  (=
    (-
      (ite
        (and (img@67@01 r) (and (> (inv@66@01 r) 0) (< (inv@66@01 r) n@61@01)))
        $Perm.Write
        $Perm.No)
      (pTaken@73@01 r))
    $Perm.No)
  
  :qid |quant-u-18387|))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (forall ((r $Ref)) (!
  (= (pTaken@73@01 r) $Perm.No)
  
  :qid |quant-u-18388|))))
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
  (=> (= r (loc<Ref> a@60@01 1)) (= (- $Perm.Write (pTaken@73@01 r)) $Perm.No))
  
  :qid |quant-u-18389|))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Final check if taken enough permissions
(set-option :timeout 0)
(push) ; 3
(assert (not (forall ((r $Ref)) (!
  (=> (= r (loc<Ref> a@60@01 1)) (= (- $Perm.Write (pTaken@73@01 r)) $Perm.No))
  
  :qid |quant-u-18389|))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Done removing quantified permissions
(pop) ; 2
(pop) ; 1
; ---------- m5 ----------
(declare-const a@74@01 IArray)
(declare-const n@75@01 Int)
(declare-const i1@76@01 Int)
(declare-const i2@77@01 Int)
(declare-const a@78@01 IArray)
(declare-const n@79@01 Int)
(declare-const i1@80@01 Int)
(declare-const i2@81@01 Int)
(push) ; 1
(declare-const $t@82@01 $Snap)
(assert (= $t@82@01 ($Snap.combine ($Snap.first $t@82@01) ($Snap.second $t@82@01))))
(assert (= ($Snap.first $t@82@01) $Snap.unit))
; [eval] n > 3
(assert (> n@79@01 3))
(declare-const i@83@01 Int)
(push) ; 2
; [eval] i > 0 && i < n
; [eval] i > 0
(push) ; 3
; [then-branch: 8 | !(i@83@01 > 0) | live]
; [else-branch: 8 | i@83@01 > 0 | live]
(push) ; 4
; [then-branch: 8 | !(i@83@01 > 0)]
(assert (not (> i@83@01 0)))
(pop) ; 4
(push) ; 4
; [else-branch: 8 | i@83@01 > 0]
(assert (> i@83@01 0))
; [eval] i < n
(pop) ; 4
(pop) ; 3
; Joined path conditions
; Joined path conditions
(assert (or (> i@83@01 0) (not (> i@83@01 0))))
(assert (and (> i@83@01 0) (< i@83@01 n@79@01)))
; [eval] i + 1
(pop) ; 2
(declare-fun inv@84@01 (IArray Int) Int)
(declare-fun img@85@01 (IArray Int) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
(assert (forall ((i@83@01@rw8 Int)) (!
  (=>
    (and (> i@83@01 0) (< i@83@01 n@79@01))
    (or (> i@83@01 0) (not (> i@83@01 0))))
  :pattern ((inv@84@01 a@78@01 i@83@01@rw8))
  :pattern ((img@85@01 a@78@01 i@83@01@rw8))
  :qid |p-aux|)))
; Check receiver injectivity
(push) ; 2
(assert (not (forall ((i1@83@01 Int) (i2@83@01 Int)) (!
  (=>
    (and
      (and (> i1@83@01 0) (< i1@83@01 n@79@01))
      (and (> i2@83@01 0) (< i2@83@01 n@79@01))
      (= (+ i1@83@01 1) (+ i2@83@01 1)))
    (= i1@83@01 i2@83@01))
  
  :qid |p-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 2
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((i@83@01@rw8 Int)) (!
  (=>
    (and (> (- i@83@01@rw8 1) 0) (< (- i@83@01@rw8 1) n@79@01))
    (and
      (= (inv@84@01 a@78@01 i@83@01@rw8) (- i@83@01@rw8 1))
      (img@85@01 a@78@01 i@83@01@rw8)))
  :pattern ((inv@84@01 a@78@01 i@83@01@rw8))
  :pattern ((img@85@01 a@78@01 i@83@01@rw8))
  :qid |quant-u-18391|)))
(assert (forall ((a IArray) (i Int)) (!
  (=>
    (and (img@85@01 a i) (and (> (inv@84@01 a i) 0) (< (inv@84@01 a i) n@79@01)))
    (and (= a@78@01 a) (= (+ (inv@84@01 a i) 1) i)))
  :pattern ((inv@84@01 a i))
  :qid |p-fctOfInv|)))
; Permissions are non-negative
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
(set-option :timeout 0)
(push) ; 2
(declare-const i@86@01 Int)
(push) ; 3
; [eval] i > 1 && i < n + 1
; [eval] i > 1
(push) ; 4
; [then-branch: 9 | !(i@86@01 > 1) | live]
; [else-branch: 9 | i@86@01 > 1 | live]
(push) ; 5
; [then-branch: 9 | !(i@86@01 > 1)]
(assert (not (> i@86@01 1)))
(pop) ; 5
(push) ; 5
; [else-branch: 9 | i@86@01 > 1]
(assert (> i@86@01 1))
; [eval] i < n + 1
; [eval] n + 1
(pop) ; 5
(pop) ; 4
; Joined path conditions
; Joined path conditions
(assert (or (> i@86@01 1) (not (> i@86@01 1))))
(assert (and (> i@86@01 1) (< i@86@01 (+ n@79@01 1))))
(pop) ; 3
(declare-const $t@87@01 $PSF<p>)
(declare-fun inv@88@01 (IArray Int) Int)
(declare-fun img@89@01 (IArray Int) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
(assert (forall ((i@86@01 Int)) (!
  (=>
    (and (> i@86@01 1) (< i@86@01 (+ n@79@01 1)))
    (or (> i@86@01 1) (not (> i@86@01 1))))
  :pattern ((inv@88@01 a@78@01 i@86@01))
  :pattern ((img@89@01 a@78@01 i@86@01))
  :qid |p-aux|)))
; Check receiver injectivity
(push) ; 3
(assert (not (forall ((i1@86@01 Int) (i2@86@01 Int)) (!
  (=>
    (and
      (and (> i1@86@01 1) (< i1@86@01 (+ n@79@01 1)))
      (and (> i2@86@01 1) (< i2@86@01 (+ n@79@01 1)))
      (= i1@86@01 i2@86@01))
    (= i1@86@01 i2@86@01))
  
  :qid |p-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((i@86@01 Int)) (!
  (=>
    (and (> i@86@01 1) (< i@86@01 (+ n@79@01 1)))
    (and (= (inv@88@01 a@78@01 i@86@01) i@86@01) (img@89@01 a@78@01 i@86@01)))
  :pattern ((inv@88@01 a@78@01 i@86@01))
  :pattern ((img@89@01 a@78@01 i@86@01))
  :qid |quant-u-18393|)))
(assert (forall ((a IArray) (i Int)) (!
  (=>
    (and
      (img@89@01 a i)
      (and (> (inv@88@01 a i) 1) (< (inv@88@01 a i) (+ n@79@01 1))))
    (and (= a@78@01 a) (= (inv@88@01 a i) i)))
  :pattern ((inv@88@01 a i))
  :qid |p-fctOfInv|)))
; Permissions are non-negative
(pop) ; 2
(push) ; 2
(declare-const i@90@01 Int)
(push) ; 3
; [eval] i > 1 && i < n + 1
; [eval] i > 1
(push) ; 4
; [then-branch: 10 | !(i@90@01 > 1) | live]
; [else-branch: 10 | i@90@01 > 1 | live]
(push) ; 5
; [then-branch: 10 | !(i@90@01 > 1)]
(assert (not (> i@90@01 1)))
(pop) ; 5
(push) ; 5
; [else-branch: 10 | i@90@01 > 1]
(assert (> i@90@01 1))
; [eval] i < n + 1
; [eval] n + 1
(pop) ; 5
(pop) ; 4
; Joined path conditions
; Joined path conditions
(assert (or (> i@90@01 1) (not (> i@90@01 1))))
(assert (and (> i@90@01 1) (< i@90@01 (+ n@79@01 1))))
(pop) ; 3
(declare-fun inv@91@01 (IArray Int) Int)
(declare-fun img@92@01 (IArray Int) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
(assert (forall ((i@90@01 Int)) (!
  (=>
    (and (> i@90@01 1) (< i@90@01 (+ n@79@01 1)))
    (or (> i@90@01 1) (not (> i@90@01 1))))
  :pattern ((inv@91@01 a@78@01 i@90@01))
  :pattern ((img@92@01 a@78@01 i@90@01))
  :qid |p-aux|)))
; Check receiver injectivity
(push) ; 3
(assert (not (forall ((i1@90@01 Int) (i2@90@01 Int)) (!
  (=>
    (and
      (and (> i1@90@01 1) (< i1@90@01 (+ n@79@01 1)))
      (and (> i2@90@01 1) (< i2@90@01 (+ n@79@01 1)))
      (= i1@90@01 i2@90@01))
    (= i1@90@01 i2@90@01))
  
  :qid |p-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((i@90@01 Int)) (!
  (=>
    (and (> i@90@01 1) (< i@90@01 (+ n@79@01 1)))
    (and (= (inv@91@01 a@78@01 i@90@01) i@90@01) (img@92@01 a@78@01 i@90@01)))
  :pattern ((inv@91@01 a@78@01 i@90@01))
  :pattern ((img@92@01 a@78@01 i@90@01))
  :qid |p-invOfFct|)))
(assert (forall ((a IArray) (i Int)) (!
  (=>
    (and
      (img@92@01 a i)
      (and (> (inv@91@01 a i) 1) (< (inv@91@01 a i) (+ n@79@01 1))))
    (and (= a@78@01 a) (= (inv@91@01 a i) i)))
  :pattern ((inv@91@01 a i))
  :qid |p-fctOfInv|)))
(push) ; 3
(set-option :timeout 10)
(assert (not (forall ((i@90@01 Int)) (!
  (= i@90@01 (+ i@90@01 1))
  
  :qid |quant-u-18395|))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Precomputing data for removing quantified permissions
(define-fun pTaken@93@01 ((a IArray) (i Int)) $Perm
  (ite
    (and
      (and (> (inv@91@01 a i) 1) (< (inv@91@01 a i) (+ n@79@01 1)))
      (img@92@01 a i)
      (and (= a a@78@01) (= i (inv@91@01 a i))))
    ($Perm.min
      (ite
        (and
          (img@85@01 a i)
          (and (> (inv@84@01 a i) 0) (< (inv@84@01 a i) n@79@01)))
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
(push) ; 3
(set-option :timeout 500)
(assert (not (forall ((a IArray) (i Int)) (!
  (=
    (-
      (ite
        (and
          (img@85@01 a i)
          (and (> (inv@84@01 a i) 0) (< (inv@84@01 a i) n@79@01)))
        $Perm.Write
        $Perm.No)
      (pTaken@93@01 a i))
    $Perm.No)
  
  :qid |quant-u-18397|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Intermediate check if already taken enough permissions
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 500)
(assert (not (forall ((a IArray) (i Int)) (!
  (=>
    (and
      (and (> (inv@91@01 a i) 1) (< (inv@91@01 a i) (+ n@79@01 1)))
      (img@92@01 a i)
      (and (= a a@78@01) (= i (inv@91@01 a i))))
    (= (- $Perm.Write (pTaken@93@01 a i)) $Perm.No))
  
  :qid |quant-u-18398|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Final check if taken enough permissions
; Done removing quantified permissions
(pop) ; 2
(pop) ; 1
; ---------- m6 ----------
(declare-const a@94@01 IArray)
(declare-const n@95@01 Int)
(declare-const i1@96@01 Int)
(declare-const i2@97@01 Int)
(declare-const a@98@01 IArray)
(declare-const n@99@01 Int)
(declare-const i1@100@01 Int)
(declare-const i2@101@01 Int)
(set-option :timeout 0)
(push) ; 1
(declare-const $t@102@01 $Snap)
(assert (= $t@102@01 ($Snap.combine ($Snap.first $t@102@01) ($Snap.second $t@102@01))))
(assert (= ($Snap.first $t@102@01) $Snap.unit))
; [eval] n > 3
(assert (> n@99@01 3))
(declare-const i@103@01 Int)
(push) ; 2
; [eval] i > 0 && i < n
; [eval] i > 0
(push) ; 3
; [then-branch: 11 | !(i@103@01 > 0) | live]
; [else-branch: 11 | i@103@01 > 0 | live]
(push) ; 4
; [then-branch: 11 | !(i@103@01 > 0)]
(assert (not (> i@103@01 0)))
(pop) ; 4
(push) ; 4
; [else-branch: 11 | i@103@01 > 0]
(assert (> i@103@01 0))
; [eval] i < n
(pop) ; 4
(pop) ; 3
; Joined path conditions
; Joined path conditions
(assert (or (> i@103@01 0) (not (> i@103@01 0))))
(assert (and (> i@103@01 0) (< i@103@01 n@99@01)))
; [eval] loc(a, i + 1)
; [eval] i + 1
(pop) ; 2
(declare-fun inv@104@01 ($Ref) Int)
(declare-fun img@105@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
(assert (forall ((i@103@01@rw9 Int)) (!
  (=>
    (and (> i@103@01 0) (< i@103@01 n@99@01))
    (or (> i@103@01 0) (not (> i@103@01 0))))
  :pattern ((loc<Ref> a@98@01 i@103@01@rw9))
  :qid |val-aux|)))
; Check receiver injectivity
(push) ; 2
(assert (not (forall ((i1@103@01 Int) (i2@103@01 Int)) (!
  (=>
    (and
      (and (> i1@103@01 0) (< i1@103@01 n@99@01))
      (and (> i2@103@01 0) (< i2@103@01 n@99@01))
      (= (loc<Ref> a@98@01 (+ i1@103@01 1)) (loc<Ref> a@98@01 (+ i2@103@01 1))))
    (= i1@103@01 i2@103@01))
  
  :qid |val-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 2
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((i@103@01@rw9 Int)) (!
  (=>
    (and (> (- i@103@01@rw9 1) 0) (< (- i@103@01@rw9 1) n@99@01))
    (and
      (= (inv@104@01 (loc<Ref> a@98@01 i@103@01@rw9)) (- i@103@01@rw9 1))
      (img@105@01 (loc<Ref> a@98@01 i@103@01@rw9))))
  :pattern ((loc<Ref> a@98@01 i@103@01@rw9))
  :qid |quant-u-18400|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@105@01 r) (and (> (inv@104@01 r) 0) (< (inv@104@01 r) n@99@01)))
    (= (loc<Ref> a@98@01 (+ (inv@104@01 r) 1)) r))
  :pattern ((inv@104@01 r))
  :qid |val-fctOfInv|)))
; Permissions are non-negative
; Field permissions are at most one
; Permission implies non-null receiver
(assert (forall ((i@103@01@rw9 Int)) (!
  (=>
    (and (> i@103@01 0) (< i@103@01 n@99@01))
    (not (= (loc<Ref> a@98@01 (+ i@103@01 1)) $Ref.null)))
  :pattern ((loc<Ref> a@98@01 i@103@01@rw9))
  :qid |val-permImpliesNonNull|)))
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
(set-option :timeout 0)
(push) ; 2
(declare-const i@106@01 Int)
(push) ; 3
; [eval] i > 1 && i < n + 1
; [eval] i > 1
(push) ; 4
; [then-branch: 12 | !(i@106@01 > 1) | live]
; [else-branch: 12 | i@106@01 > 1 | live]
(push) ; 5
; [then-branch: 12 | !(i@106@01 > 1)]
(assert (not (> i@106@01 1)))
(pop) ; 5
(push) ; 5
; [else-branch: 12 | i@106@01 > 1]
(assert (> i@106@01 1))
; [eval] i < n + 1
; [eval] n + 1
(pop) ; 5
(pop) ; 4
; Joined path conditions
; Joined path conditions
(assert (or (> i@106@01 1) (not (> i@106@01 1))))
(assert (and (> i@106@01 1) (< i@106@01 (+ n@99@01 1))))
; [eval] loc(a, i)
(pop) ; 3
(declare-const $t@107@01 $FVF<val>)
(declare-fun inv@108@01 ($Ref) Int)
(declare-fun img@109@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
(assert (forall ((i@106@01 Int)) (!
  (=>
    (and (> i@106@01 1) (< i@106@01 (+ n@99@01 1)))
    (or (> i@106@01 1) (not (> i@106@01 1))))
  :pattern ((loc<Ref> a@98@01 i@106@01))
  :qid |val-aux|)))
; Check receiver injectivity
(push) ; 3
(assert (not (forall ((i1@106@01 Int) (i2@106@01 Int)) (!
  (=>
    (and
      (and (> i1@106@01 1) (< i1@106@01 (+ n@99@01 1)))
      (and (> i2@106@01 1) (< i2@106@01 (+ n@99@01 1)))
      (= (loc<Ref> a@98@01 i1@106@01) (loc<Ref> a@98@01 i2@106@01)))
    (= i1@106@01 i2@106@01))
  
  :qid |val-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((i@106@01 Int)) (!
  (=>
    (and (> i@106@01 1) (< i@106@01 (+ n@99@01 1)))
    (and
      (= (inv@108@01 (loc<Ref> a@98@01 i@106@01)) i@106@01)
      (img@109@01 (loc<Ref> a@98@01 i@106@01))))
  :pattern ((loc<Ref> a@98@01 i@106@01))
  :qid |quant-u-18402|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@109@01 r)
      (and (> (inv@108@01 r) 1) (< (inv@108@01 r) (+ n@99@01 1))))
    (= (loc<Ref> a@98@01 (inv@108@01 r)) r))
  :pattern ((inv@108@01 r))
  :qid |val-fctOfInv|)))
; Permissions are non-negative
; Field permissions are at most one
; Permission implies non-null receiver
(assert (forall ((i@106@01 Int)) (!
  (=>
    (and (> i@106@01 1) (< i@106@01 (+ n@99@01 1)))
    (not (= (loc<Ref> a@98@01 i@106@01) $Ref.null)))
  :pattern ((loc<Ref> a@98@01 i@106@01))
  :qid |val-permImpliesNonNull|)))
(pop) ; 2
(push) ; 2
(declare-const i@110@01 Int)
(push) ; 3
; [eval] i > 1 && i < n + 1
; [eval] i > 1
(push) ; 4
; [then-branch: 13 | !(i@110@01 > 1) | live]
; [else-branch: 13 | i@110@01 > 1 | live]
(push) ; 5
; [then-branch: 13 | !(i@110@01 > 1)]
(assert (not (> i@110@01 1)))
(pop) ; 5
(push) ; 5
; [else-branch: 13 | i@110@01 > 1]
(assert (> i@110@01 1))
; [eval] i < n + 1
; [eval] n + 1
(pop) ; 5
(pop) ; 4
; Joined path conditions
; Joined path conditions
(assert (or (> i@110@01 1) (not (> i@110@01 1))))
(assert (and (> i@110@01 1) (< i@110@01 (+ n@99@01 1))))
; [eval] loc(a, i)
(pop) ; 3
(declare-fun inv@111@01 ($Ref) Int)
(declare-fun img@112@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
(assert (forall ((i@110@01 Int)) (!
  (=>
    (and (> i@110@01 1) (< i@110@01 (+ n@99@01 1)))
    (or (> i@110@01 1) (not (> i@110@01 1))))
  :pattern ((loc<Ref> a@98@01 i@110@01))
  :qid |val-aux|)))
; Check receiver injectivity
(push) ; 3
(assert (not (forall ((i1@110@01 Int) (i2@110@01 Int)) (!
  (=>
    (and
      (and (> i1@110@01 1) (< i1@110@01 (+ n@99@01 1)))
      (and (> i2@110@01 1) (< i2@110@01 (+ n@99@01 1)))
      (= (loc<Ref> a@98@01 i1@110@01) (loc<Ref> a@98@01 i2@110@01)))
    (= i1@110@01 i2@110@01))
  
  :qid |val-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((i@110@01 Int)) (!
  (=>
    (and (> i@110@01 1) (< i@110@01 (+ n@99@01 1)))
    (and
      (= (inv@111@01 (loc<Ref> a@98@01 i@110@01)) i@110@01)
      (img@112@01 (loc<Ref> a@98@01 i@110@01))))
  :pattern ((loc<Ref> a@98@01 i@110@01))
  :qid |val-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@112@01 r)
      (and (> (inv@111@01 r) 1) (< (inv@111@01 r) (+ n@99@01 1))))
    (= (loc<Ref> a@98@01 (inv@111@01 r)) r))
  :pattern ((inv@111@01 r))
  :qid |val-fctOfInv|)))
(push) ; 3
(set-option :timeout 10)
(assert (not (forall ((i@110@01 Int)) (!
  (= (loc<Ref> a@98@01 i@110@01) (loc<Ref> a@98@01 (+ i@110@01 1)))
  
  :qid |quant-u-18404|))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Precomputing data for removing quantified permissions
(define-fun pTaken@113@01 ((r $Ref)) $Perm
  (ite
    (and
      (and (> (inv@111@01 r) 1) (< (inv@111@01 r) (+ n@99@01 1)))
      (img@112@01 r)
      (= r (loc<Ref> a@98@01 (inv@111@01 r))))
    ($Perm.min
      (ite
        (and
          (img@105@01 r)
          (and (> (inv@104@01 r) 0) (< (inv@104@01 r) n@99@01)))
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
(push) ; 3
(set-option :timeout 500)
(assert (not (forall ((r $Ref)) (!
  (=
    (-
      (ite
        (and
          (img@105@01 r)
          (and (> (inv@104@01 r) 0) (< (inv@104@01 r) n@99@01)))
        $Perm.Write
        $Perm.No)
      (pTaken@113@01 r))
    $Perm.No)
  
  :qid |quant-u-18406|))))
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
      (and (> (inv@111@01 r) 1) (< (inv@111@01 r) (+ n@99@01 1)))
      (img@112@01 r)
      (= r (loc<Ref> a@98@01 (inv@111@01 r))))
    (= (- $Perm.Write (pTaken@113@01 r)) $Perm.No))
  
  :qid |quant-u-18407|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Final check if taken enough permissions
; Done removing quantified permissions
(pop) ; 2
(pop) ; 1
; ---------- m7 ----------
(declare-const a@114@01 IArray)
(declare-const n@115@01 Int)
(declare-const i1@116@01 Int)
(declare-const i2@117@01 Int)
(declare-const a@118@01 IArray)
(declare-const n@119@01 Int)
(declare-const i1@120@01 Int)
(declare-const i2@121@01 Int)
(set-option :timeout 0)
(push) ; 1
(declare-const $t@122@01 $Snap)
(assert (= $t@122@01 ($Snap.combine ($Snap.first $t@122@01) ($Snap.second $t@122@01))))
(assert (= ($Snap.first $t@122@01) $Snap.unit))
; [eval] n > 3
(assert (> n@119@01 3))
(declare-const i@123@01 Int)
(push) ; 2
; [eval] i > 1 && i < n + 1
; [eval] i > 1
(push) ; 3
; [then-branch: 14 | !(i@123@01 > 1) | live]
; [else-branch: 14 | i@123@01 > 1 | live]
(push) ; 4
; [then-branch: 14 | !(i@123@01 > 1)]
(assert (not (> i@123@01 1)))
(pop) ; 4
(push) ; 4
; [else-branch: 14 | i@123@01 > 1]
(assert (> i@123@01 1))
; [eval] i < n + 1
; [eval] n + 1
(pop) ; 4
(pop) ; 3
; Joined path conditions
; Joined path conditions
(assert (or (> i@123@01 1) (not (> i@123@01 1))))
(assert (and (> i@123@01 1) (< i@123@01 (+ n@119@01 1))))
(pop) ; 2
(declare-fun inv@124@01 (IArray Int) Int)
(declare-fun img@125@01 (IArray Int) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
(assert (forall ((i@123@01 Int)) (!
  (=>
    (and (> i@123@01 1) (< i@123@01 (+ n@119@01 1)))
    (or (> i@123@01 1) (not (> i@123@01 1))))
  :pattern ((inv@124@01 a@118@01 i@123@01))
  :pattern ((img@125@01 a@118@01 i@123@01))
  :qid |p-aux|)))
; Check receiver injectivity
(push) ; 2
(assert (not (forall ((i1@123@01 Int) (i2@123@01 Int)) (!
  (=>
    (and
      (and (> i1@123@01 1) (< i1@123@01 (+ n@119@01 1)))
      (and (> i2@123@01 1) (< i2@123@01 (+ n@119@01 1)))
      (= i1@123@01 i2@123@01))
    (= i1@123@01 i2@123@01))
  
  :qid |p-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 2
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((i@123@01 Int)) (!
  (=>
    (and (> i@123@01 1) (< i@123@01 (+ n@119@01 1)))
    (and
      (= (inv@124@01 a@118@01 i@123@01) i@123@01)
      (img@125@01 a@118@01 i@123@01)))
  :pattern ((inv@124@01 a@118@01 i@123@01))
  :pattern ((img@125@01 a@118@01 i@123@01))
  :qid |quant-u-18409|)))
(assert (forall ((a IArray) (i Int)) (!
  (=>
    (and
      (img@125@01 a i)
      (and (> (inv@124@01 a i) 1) (< (inv@124@01 a i) (+ n@119@01 1))))
    (and (= a@118@01 a) (= (inv@124@01 a i) i)))
  :pattern ((inv@124@01 a i))
  :qid |p-fctOfInv|)))
; Permissions are non-negative
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
(set-option :timeout 0)
(push) ; 2
(declare-const i@126@01 Int)
(push) ; 3
; [eval] i > 0 && i < n
; [eval] i > 0
(push) ; 4
; [then-branch: 15 | !(i@126@01 > 0) | live]
; [else-branch: 15 | i@126@01 > 0 | live]
(push) ; 5
; [then-branch: 15 | !(i@126@01 > 0)]
(assert (not (> i@126@01 0)))
(pop) ; 5
(push) ; 5
; [else-branch: 15 | i@126@01 > 0]
(assert (> i@126@01 0))
; [eval] i < n
(pop) ; 5
(pop) ; 4
; Joined path conditions
; Joined path conditions
(assert (or (> i@126@01 0) (not (> i@126@01 0))))
(assert (and (> i@126@01 0) (< i@126@01 n@119@01)))
; [eval] i + 1
(pop) ; 3
(declare-const $t@127@01 $PSF<p>)
(declare-fun inv@128@01 (IArray Int) Int)
(declare-fun img@129@01 (IArray Int) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
(assert (forall ((i@126@01@rw10 Int)) (!
  (=>
    (and (> i@126@01 0) (< i@126@01 n@119@01))
    (or (> i@126@01 0) (not (> i@126@01 0))))
  :pattern ((inv@128@01 a@118@01 i@126@01@rw10))
  :pattern ((img@129@01 a@118@01 i@126@01@rw10))
  :qid |p-aux|)))
; Check receiver injectivity
(push) ; 3
(assert (not (forall ((i1@126@01 Int) (i2@126@01 Int)) (!
  (=>
    (and
      (and (> i1@126@01 0) (< i1@126@01 n@119@01))
      (and (> i2@126@01 0) (< i2@126@01 n@119@01))
      (= (+ i1@126@01 1) (+ i2@126@01 1)))
    (= i1@126@01 i2@126@01))
  
  :qid |p-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((i@126@01@rw10 Int)) (!
  (=>
    (and (> (- i@126@01@rw10 1) 0) (< (- i@126@01@rw10 1) n@119@01))
    (and
      (= (inv@128@01 a@118@01 i@126@01@rw10) (- i@126@01@rw10 1))
      (img@129@01 a@118@01 i@126@01@rw10)))
  :pattern ((inv@128@01 a@118@01 i@126@01@rw10))
  :pattern ((img@129@01 a@118@01 i@126@01@rw10))
  :qid |quant-u-18411|)))
(assert (forall ((a IArray) (i Int)) (!
  (=>
    (and
      (img@129@01 a i)
      (and (> (inv@128@01 a i) 0) (< (inv@128@01 a i) n@119@01)))
    (and (= a@118@01 a) (= (+ (inv@128@01 a i) 1) i)))
  :pattern ((inv@128@01 a i))
  :qid |p-fctOfInv|)))
; Permissions are non-negative
(pop) ; 2
(push) ; 2
(declare-const i@130@01 Int)
(push) ; 3
; [eval] i > 0 && i < n
; [eval] i > 0
(push) ; 4
; [then-branch: 16 | !(i@130@01 > 0) | live]
; [else-branch: 16 | i@130@01 > 0 | live]
(push) ; 5
; [then-branch: 16 | !(i@130@01 > 0)]
(assert (not (> i@130@01 0)))
(pop) ; 5
(push) ; 5
; [else-branch: 16 | i@130@01 > 0]
(assert (> i@130@01 0))
; [eval] i < n
(pop) ; 5
(pop) ; 4
; Joined path conditions
; Joined path conditions
(assert (or (> i@130@01 0) (not (> i@130@01 0))))
(assert (and (> i@130@01 0) (< i@130@01 n@119@01)))
; [eval] i + 1
(pop) ; 3
(declare-fun inv@131@01 (IArray Int) Int)
(declare-fun img@132@01 (IArray Int) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
(assert (forall ((i@130@01@rw11 Int)) (!
  (=>
    (and (> i@130@01 0) (< i@130@01 n@119@01))
    (or (> i@130@01 0) (not (> i@130@01 0))))
  :pattern ((inv@131@01 a@118@01 i@130@01@rw11))
  :pattern ((img@132@01 a@118@01 i@130@01@rw11))
  :qid |p-aux|)))
; Check receiver injectivity
(push) ; 3
(assert (not (forall ((i1@130@01 Int) (i2@130@01 Int)) (!
  (=>
    (and
      (and (> i1@130@01 0) (< i1@130@01 n@119@01))
      (and (> i2@130@01 0) (< i2@130@01 n@119@01))
      (= (+ i1@130@01 1) (+ i2@130@01 1)))
    (= i1@130@01 i2@130@01))
  
  :qid |p-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((i@130@01@rw11 Int)) (!
  (=>
    (and (> (- i@130@01@rw11 1) 0) (< (- i@130@01@rw11 1) n@119@01))
    (and
      (= (inv@131@01 a@118@01 i@130@01@rw11) (- i@130@01@rw11 1))
      (img@132@01 a@118@01 i@130@01@rw11)))
  :pattern ((inv@131@01 a@118@01 i@130@01@rw11))
  :pattern ((img@132@01 a@118@01 i@130@01@rw11))
  :qid |p-invOfFct|)))
(assert (forall ((a IArray) (i Int)) (!
  (=>
    (and
      (img@132@01 a i)
      (and (> (inv@131@01 a i) 0) (< (inv@131@01 a i) n@119@01)))
    (and (= a@118@01 a) (= (+ (inv@131@01 a i) 1) i)))
  :pattern ((inv@131@01 a i))
  :qid |p-fctOfInv|)))
(push) ; 3
(set-option :timeout 10)
(assert (not (forall ((i@130@01 Int)) (!
  (= (+ i@130@01 1) i@130@01)
  
  :qid |quant-u-18413|))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Precomputing data for removing quantified permissions
(define-fun pTaken@133@01 ((a IArray) (i Int)) $Perm
  (ite
    (and
      (and (> (inv@131@01 a i) 0) (< (inv@131@01 a i) n@119@01))
      (img@132@01 a i)
      (and (= a a@118@01) (= i (+ (inv@131@01 a i) 1))))
    ($Perm.min
      (ite
        (and
          (img@125@01 a i)
          (and (> (inv@124@01 a i) 1) (< (inv@124@01 a i) (+ n@119@01 1))))
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
(push) ; 3
(set-option :timeout 500)
(assert (not (forall ((a IArray) (i Int)) (!
  (=
    (-
      (ite
        (and
          (img@125@01 a i)
          (and (> (inv@124@01 a i) 1) (< (inv@124@01 a i) (+ n@119@01 1))))
        $Perm.Write
        $Perm.No)
      (pTaken@133@01 a i))
    $Perm.No)
  
  :qid |quant-u-18415|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Intermediate check if already taken enough permissions
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 500)
(assert (not (forall ((a IArray) (i Int)) (!
  (=>
    (and
      (and (> (inv@131@01 a i) 0) (< (inv@131@01 a i) n@119@01))
      (img@132@01 a i)
      (and (= a a@118@01) (= i (+ (inv@131@01 a i) 1))))
    (= (- $Perm.Write (pTaken@133@01 a i)) $Perm.No))
  
  :qid |quant-u-18416|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Final check if taken enough permissions
; Done removing quantified permissions
(pop) ; 2
(pop) ; 1
; ---------- m8 ----------
(declare-const a@134@01 IArray)
(declare-const n@135@01 Int)
(declare-const i1@136@01 Int)
(declare-const i2@137@01 Int)
(declare-const a@138@01 IArray)
(declare-const n@139@01 Int)
(declare-const i1@140@01 Int)
(declare-const i2@141@01 Int)
(set-option :timeout 0)
(push) ; 1
(declare-const $t@142@01 $Snap)
(assert (= $t@142@01 ($Snap.combine ($Snap.first $t@142@01) ($Snap.second $t@142@01))))
(assert (= ($Snap.first $t@142@01) $Snap.unit))
; [eval] n > 3
(assert (> n@139@01 3))
(declare-const i@143@01 Int)
(push) ; 2
; [eval] i > 1 && i < n + 1
; [eval] i > 1
(push) ; 3
; [then-branch: 17 | !(i@143@01 > 1) | live]
; [else-branch: 17 | i@143@01 > 1 | live]
(push) ; 4
; [then-branch: 17 | !(i@143@01 > 1)]
(assert (not (> i@143@01 1)))
(pop) ; 4
(push) ; 4
; [else-branch: 17 | i@143@01 > 1]
(assert (> i@143@01 1))
; [eval] i < n + 1
; [eval] n + 1
(pop) ; 4
(pop) ; 3
; Joined path conditions
; Joined path conditions
(assert (or (> i@143@01 1) (not (> i@143@01 1))))
(assert (and (> i@143@01 1) (< i@143@01 (+ n@139@01 1))))
; [eval] loc(a, i)
(pop) ; 2
(declare-fun inv@144@01 ($Ref) Int)
(declare-fun img@145@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
(assert (forall ((i@143@01 Int)) (!
  (=>
    (and (> i@143@01 1) (< i@143@01 (+ n@139@01 1)))
    (or (> i@143@01 1) (not (> i@143@01 1))))
  :pattern ((loc<Ref> a@138@01 i@143@01))
  :qid |val-aux|)))
; Check receiver injectivity
(push) ; 2
(assert (not (forall ((i1@143@01 Int) (i2@143@01 Int)) (!
  (=>
    (and
      (and (> i1@143@01 1) (< i1@143@01 (+ n@139@01 1)))
      (and (> i2@143@01 1) (< i2@143@01 (+ n@139@01 1)))
      (= (loc<Ref> a@138@01 i1@143@01) (loc<Ref> a@138@01 i2@143@01)))
    (= i1@143@01 i2@143@01))
  
  :qid |val-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 2
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((i@143@01 Int)) (!
  (=>
    (and (> i@143@01 1) (< i@143@01 (+ n@139@01 1)))
    (and
      (= (inv@144@01 (loc<Ref> a@138@01 i@143@01)) i@143@01)
      (img@145@01 (loc<Ref> a@138@01 i@143@01))))
  :pattern ((loc<Ref> a@138@01 i@143@01))
  :qid |quant-u-18418|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@145@01 r)
      (and (> (inv@144@01 r) 1) (< (inv@144@01 r) (+ n@139@01 1))))
    (= (loc<Ref> a@138@01 (inv@144@01 r)) r))
  :pattern ((inv@144@01 r))
  :qid |val-fctOfInv|)))
; Permissions are non-negative
; Field permissions are at most one
; Permission implies non-null receiver
(assert (forall ((i@143@01 Int)) (!
  (=>
    (and (> i@143@01 1) (< i@143@01 (+ n@139@01 1)))
    (not (= (loc<Ref> a@138@01 i@143@01) $Ref.null)))
  :pattern ((loc<Ref> a@138@01 i@143@01))
  :qid |val-permImpliesNonNull|)))
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
(set-option :timeout 0)
(push) ; 2
(declare-const i@146@01 Int)
(push) ; 3
; [eval] i > 0 && i < n
; [eval] i > 0
(push) ; 4
; [then-branch: 18 | !(i@146@01 > 0) | live]
; [else-branch: 18 | i@146@01 > 0 | live]
(push) ; 5
; [then-branch: 18 | !(i@146@01 > 0)]
(assert (not (> i@146@01 0)))
(pop) ; 5
(push) ; 5
; [else-branch: 18 | i@146@01 > 0]
(assert (> i@146@01 0))
; [eval] i < n
(pop) ; 5
(pop) ; 4
; Joined path conditions
; Joined path conditions
(assert (or (> i@146@01 0) (not (> i@146@01 0))))
(assert (and (> i@146@01 0) (< i@146@01 n@139@01)))
; [eval] loc(a, i + 1)
; [eval] i + 1
(pop) ; 3
(declare-const $t@147@01 $FVF<val>)
(declare-fun inv@148@01 ($Ref) Int)
(declare-fun img@149@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
(assert (forall ((i@146@01@rw12 Int)) (!
  (=>
    (and (> i@146@01 0) (< i@146@01 n@139@01))
    (or (> i@146@01 0) (not (> i@146@01 0))))
  :pattern ((loc<Ref> a@138@01 i@146@01@rw12))
  :qid |val-aux|)))
; Check receiver injectivity
(push) ; 3
(assert (not (forall ((i1@146@01 Int) (i2@146@01 Int)) (!
  (=>
    (and
      (and (> i1@146@01 0) (< i1@146@01 n@139@01))
      (and (> i2@146@01 0) (< i2@146@01 n@139@01))
      (= (loc<Ref> a@138@01 (+ i1@146@01 1)) (loc<Ref> a@138@01 (+ i2@146@01 1))))
    (= i1@146@01 i2@146@01))
  
  :qid |val-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((i@146@01@rw12 Int)) (!
  (=>
    (and (> (- i@146@01@rw12 1) 0) (< (- i@146@01@rw12 1) n@139@01))
    (and
      (= (inv@148@01 (loc<Ref> a@138@01 i@146@01@rw12)) (- i@146@01@rw12 1))
      (img@149@01 (loc<Ref> a@138@01 i@146@01@rw12))))
  :pattern ((loc<Ref> a@138@01 i@146@01@rw12))
  :qid |quant-u-18420|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@149@01 r) (and (> (inv@148@01 r) 0) (< (inv@148@01 r) n@139@01)))
    (= (loc<Ref> a@138@01 (+ (inv@148@01 r) 1)) r))
  :pattern ((inv@148@01 r))
  :qid |val-fctOfInv|)))
; Permissions are non-negative
; Field permissions are at most one
; Permission implies non-null receiver
(assert (forall ((i@146@01@rw12 Int)) (!
  (=>
    (and (> i@146@01 0) (< i@146@01 n@139@01))
    (not (= (loc<Ref> a@138@01 (+ i@146@01 1)) $Ref.null)))
  :pattern ((loc<Ref> a@138@01 i@146@01@rw12))
  :qid |val-permImpliesNonNull|)))
(pop) ; 2
(push) ; 2
(declare-const i@150@01 Int)
(push) ; 3
; [eval] i > 0 && i < n
; [eval] i > 0
(push) ; 4
; [then-branch: 19 | !(i@150@01 > 0) | live]
; [else-branch: 19 | i@150@01 > 0 | live]
(push) ; 5
; [then-branch: 19 | !(i@150@01 > 0)]
(assert (not (> i@150@01 0)))
(pop) ; 5
(push) ; 5
; [else-branch: 19 | i@150@01 > 0]
(assert (> i@150@01 0))
; [eval] i < n
(pop) ; 5
(pop) ; 4
; Joined path conditions
; Joined path conditions
(assert (or (> i@150@01 0) (not (> i@150@01 0))))
(assert (and (> i@150@01 0) (< i@150@01 n@139@01)))
; [eval] loc(a, i + 1)
; [eval] i + 1
(pop) ; 3
(declare-fun inv@151@01 ($Ref) Int)
(declare-fun img@152@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
(assert (forall ((i@150@01@rw13 Int)) (!
  (=>
    (and (> i@150@01 0) (< i@150@01 n@139@01))
    (or (> i@150@01 0) (not (> i@150@01 0))))
  :pattern ((loc<Ref> a@138@01 i@150@01@rw13))
  :qid |val-aux|)))
; Check receiver injectivity
(push) ; 3
(assert (not (forall ((i1@150@01 Int) (i2@150@01 Int)) (!
  (=>
    (and
      (and (> i1@150@01 0) (< i1@150@01 n@139@01))
      (and (> i2@150@01 0) (< i2@150@01 n@139@01))
      (= (loc<Ref> a@138@01 (+ i1@150@01 1)) (loc<Ref> a@138@01 (+ i2@150@01 1))))
    (= i1@150@01 i2@150@01))
  
  :qid |val-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((i@150@01@rw13 Int)) (!
  (=>
    (and (> (- i@150@01@rw13 1) 0) (< (- i@150@01@rw13 1) n@139@01))
    (and
      (= (inv@151@01 (loc<Ref> a@138@01 i@150@01@rw13)) (- i@150@01@rw13 1))
      (img@152@01 (loc<Ref> a@138@01 i@150@01@rw13))))
  :pattern ((loc<Ref> a@138@01 i@150@01@rw13))
  :qid |val-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@152@01 r) (and (> (inv@151@01 r) 0) (< (inv@151@01 r) n@139@01)))
    (= (loc<Ref> a@138@01 (+ (inv@151@01 r) 1)) r))
  :pattern ((inv@151@01 r))
  :qid |val-fctOfInv|)))
(push) ; 3
(set-option :timeout 10)
(assert (not (forall ((i@150@01 Int)) (!
  (= (loc<Ref> a@138@01 (+ i@150@01 1)) (loc<Ref> a@138@01 i@150@01))
  
  :qid |quant-u-18422|))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Precomputing data for removing quantified permissions
(define-fun pTaken@153@01 ((r $Ref)) $Perm
  (ite
    (and
      (and (> (inv@151@01 r) 0) (< (inv@151@01 r) n@139@01))
      (img@152@01 r)
      (= r (loc<Ref> a@138@01 (+ (inv@151@01 r) 1))))
    ($Perm.min
      (ite
        (and
          (img@145@01 r)
          (and (> (inv@144@01 r) 1) (< (inv@144@01 r) (+ n@139@01 1))))
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
(push) ; 3
(set-option :timeout 500)
(assert (not (forall ((r $Ref)) (!
  (=
    (-
      (ite
        (and
          (img@145@01 r)
          (and (> (inv@144@01 r) 1) (< (inv@144@01 r) (+ n@139@01 1))))
        $Perm.Write
        $Perm.No)
      (pTaken@153@01 r))
    $Perm.No)
  
  :qid |quant-u-18424|))))
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
      (and (> (inv@151@01 r) 0) (< (inv@151@01 r) n@139@01))
      (img@152@01 r)
      (= r (loc<Ref> a@138@01 (+ (inv@151@01 r) 1))))
    (= (- $Perm.Write (pTaken@153@01 r)) $Perm.No))
  
  :qid |quant-u-18425|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Final check if taken enough permissions
; Done removing quantified permissions
(pop) ; 2
(pop) ; 1
; ---------- m9 ----------
(declare-const a@154@01 IArray)
(declare-const n@155@01 Int)
(declare-const a@156@01 IArray)
(declare-const n@157@01 Int)
(set-option :timeout 0)
(push) ; 1
(declare-const $t@158@01 $Snap)
(assert (= $t@158@01 ($Snap.combine ($Snap.first $t@158@01) ($Snap.second $t@158@01))))
(assert (= ($Snap.first $t@158@01) $Snap.unit))
; [eval] n > 5
(assert (> n@157@01 5))
(declare-const i@159@01 Int)
(push) ; 2
; [eval] i > 0 && i < n
; [eval] i > 0
(push) ; 3
; [then-branch: 20 | !(i@159@01 > 0) | live]
; [else-branch: 20 | i@159@01 > 0 | live]
(push) ; 4
; [then-branch: 20 | !(i@159@01 > 0)]
(assert (not (> i@159@01 0)))
(pop) ; 4
(push) ; 4
; [else-branch: 20 | i@159@01 > 0]
(assert (> i@159@01 0))
; [eval] i < n
(pop) ; 4
(pop) ; 3
; Joined path conditions
; Joined path conditions
(assert (or (> i@159@01 0) (not (> i@159@01 0))))
(assert (and (> i@159@01 0) (< i@159@01 n@157@01)))
(pop) ; 2
(declare-fun inv@160@01 (IArray Int) Int)
(declare-fun img@161@01 (IArray Int) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
(assert (forall ((i@159@01 Int)) (!
  (=>
    (and (> i@159@01 0) (< i@159@01 n@157@01))
    (or (> i@159@01 0) (not (> i@159@01 0))))
  :pattern ((inv@160@01 a@156@01 i@159@01))
  :pattern ((img@161@01 a@156@01 i@159@01))
  :qid |p-aux|)))
; Check receiver injectivity
(push) ; 2
(assert (not (forall ((i1@159@01 Int) (i2@159@01 Int)) (!
  (=>
    (and
      (and (> i1@159@01 0) (< i1@159@01 n@157@01))
      (and (> i2@159@01 0) (< i2@159@01 n@157@01))
      (= i1@159@01 i2@159@01))
    (= i1@159@01 i2@159@01))
  
  :qid |p-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 2
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((i@159@01 Int)) (!
  (=>
    (and (> i@159@01 0) (< i@159@01 n@157@01))
    (and
      (= (inv@160@01 a@156@01 i@159@01) i@159@01)
      (img@161@01 a@156@01 i@159@01)))
  :pattern ((inv@160@01 a@156@01 i@159@01))
  :pattern ((img@161@01 a@156@01 i@159@01))
  :qid |quant-u-18427|)))
(assert (forall ((a IArray) (i Int)) (!
  (=>
    (and
      (img@161@01 a i)
      (and (> (inv@160@01 a i) 0) (< (inv@160@01 a i) n@157@01)))
    (and (= a@156@01 a) (= (inv@160@01 a i) i)))
  :pattern ((inv@160@01 a i))
  :qid |p-fctOfInv|)))
; Permissions are non-negative
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
(set-option :timeout 0)
(push) ; 2
(declare-const $t@162@01 $Snap)
(assert (= $t@162@01 ($Snap.combine ($Snap.first $t@162@01) ($Snap.second $t@162@01))))
(declare-const i@163@01 Int)
(push) ; 3
; [eval] i > 4 && i < n
; [eval] i > 4
(push) ; 4
; [then-branch: 21 | !(i@163@01 > 4) | live]
; [else-branch: 21 | i@163@01 > 4 | live]
(push) ; 5
; [then-branch: 21 | !(i@163@01 > 4)]
(assert (not (> i@163@01 4)))
(pop) ; 5
(push) ; 5
; [else-branch: 21 | i@163@01 > 4]
(assert (> i@163@01 4))
; [eval] i < n
(pop) ; 5
(pop) ; 4
; Joined path conditions
; Joined path conditions
(assert (or (> i@163@01 4) (not (> i@163@01 4))))
(assert (and (> i@163@01 4) (< i@163@01 n@157@01)))
(pop) ; 3
(declare-fun inv@164@01 (IArray Int) Int)
(declare-fun img@165@01 (IArray Int) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
(assert (forall ((i@163@01 Int)) (!
  (=>
    (and (> i@163@01 4) (< i@163@01 n@157@01))
    (or (> i@163@01 4) (not (> i@163@01 4))))
  :pattern ((inv@164@01 a@156@01 i@163@01))
  :pattern ((img@165@01 a@156@01 i@163@01))
  :qid |p-aux|)))
; Check receiver injectivity
(push) ; 3
(assert (not (forall ((i1@163@01 Int) (i2@163@01 Int)) (!
  (=>
    (and
      (and (> i1@163@01 4) (< i1@163@01 n@157@01))
      (and (> i2@163@01 4) (< i2@163@01 n@157@01))
      (= i1@163@01 i2@163@01))
    (= i1@163@01 i2@163@01))
  
  :qid |p-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((i@163@01 Int)) (!
  (=>
    (and (> i@163@01 4) (< i@163@01 n@157@01))
    (and
      (= (inv@164@01 a@156@01 i@163@01) i@163@01)
      (img@165@01 a@156@01 i@163@01)))
  :pattern ((inv@164@01 a@156@01 i@163@01))
  :pattern ((img@165@01 a@156@01 i@163@01))
  :qid |quant-u-18429|)))
(assert (forall ((a IArray) (i Int)) (!
  (=>
    (and
      (img@165@01 a i)
      (and (> (inv@164@01 a i) 4) (< (inv@164@01 a i) n@157@01)))
    (and (= a@156@01 a) (= (inv@164@01 a i) i)))
  :pattern ((inv@164@01 a i))
  :qid |p-fctOfInv|)))
; Permissions are non-negative
(declare-const i@166@01 Int)
(push) ; 3
; [eval] i > 0 && i < 4
; [eval] i > 0
(push) ; 4
; [then-branch: 22 | !(i@166@01 > 0) | live]
; [else-branch: 22 | i@166@01 > 0 | live]
(push) ; 5
; [then-branch: 22 | !(i@166@01 > 0)]
(assert (not (> i@166@01 0)))
(pop) ; 5
(push) ; 5
; [else-branch: 22 | i@166@01 > 0]
(assert (> i@166@01 0))
; [eval] i < 4
(pop) ; 5
(pop) ; 4
; Joined path conditions
; Joined path conditions
(assert (or (> i@166@01 0) (not (> i@166@01 0))))
(assert (and (> i@166@01 0) (< i@166@01 4)))
(pop) ; 3
(declare-fun inv@167@01 (IArray Int) Int)
(declare-fun img@168@01 (IArray Int) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
(assert (forall ((i@166@01 Int)) (!
  (=>
    (and (> i@166@01 0) (< i@166@01 4))
    (or (> i@166@01 0) (not (> i@166@01 0))))
  :pattern ((inv@167@01 a@156@01 i@166@01))
  :pattern ((img@168@01 a@156@01 i@166@01))
  :qid |p-aux|)))
; Check receiver injectivity
(push) ; 3
(assert (not (forall ((i1@166@01 Int) (i2@166@01 Int)) (!
  (=>
    (and
      (and (> i1@166@01 0) (< i1@166@01 4))
      (and (> i2@166@01 0) (< i2@166@01 4))
      (= i1@166@01 i2@166@01))
    (= i1@166@01 i2@166@01))
  
  :qid |p-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((i@166@01 Int)) (!
  (=>
    (and (> i@166@01 0) (< i@166@01 4))
    (and
      (= (inv@167@01 a@156@01 i@166@01) i@166@01)
      (img@168@01 a@156@01 i@166@01)))
  :pattern ((inv@167@01 a@156@01 i@166@01))
  :pattern ((img@168@01 a@156@01 i@166@01))
  :qid |quant-u-18431|)))
(assert (forall ((a IArray) (i Int)) (!
  (=>
    (and (img@168@01 a i) (and (> (inv@167@01 a i) 0) (< (inv@167@01 a i) 4)))
    (and (= a@156@01 a) (= (inv@167@01 a i) i)))
  :pattern ((inv@167@01 a i))
  :qid |p-fctOfInv|)))
; Permissions are non-negative
(push) ; 3
(set-option :timeout 10)
(assert (not (forall ((a IArray) (i Int)) (!
  (=
    (and (img@168@01 a i) (and (> (inv@167@01 a i) 0) (< (inv@167@01 a i) 4)))
    (and
      (img@165@01 a i)
      (and (> (inv@164@01 a i) 4) (< (inv@164@01 a i) n@157@01))))
  
  :qid |quant-u-18432|))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(pop) ; 2
(set-option :timeout 0)
(push) ; 2
(declare-const i@169@01 Int)
(push) ; 3
; [eval] i > 4 && i < n
; [eval] i > 4
(push) ; 4
; [then-branch: 23 | !(i@169@01 > 4) | live]
; [else-branch: 23 | i@169@01 > 4 | live]
(push) ; 5
; [then-branch: 23 | !(i@169@01 > 4)]
(assert (not (> i@169@01 4)))
(pop) ; 5
(push) ; 5
; [else-branch: 23 | i@169@01 > 4]
(assert (> i@169@01 4))
; [eval] i < n
(pop) ; 5
(pop) ; 4
; Joined path conditions
; Joined path conditions
(assert (or (> i@169@01 4) (not (> i@169@01 4))))
(assert (and (> i@169@01 4) (< i@169@01 n@157@01)))
(pop) ; 3
(declare-fun inv@170@01 (IArray Int) Int)
(declare-fun img@171@01 (IArray Int) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
(assert (forall ((i@169@01 Int)) (!
  (=>
    (and (> i@169@01 4) (< i@169@01 n@157@01))
    (or (> i@169@01 4) (not (> i@169@01 4))))
  :pattern ((inv@170@01 a@156@01 i@169@01))
  :pattern ((img@171@01 a@156@01 i@169@01))
  :qid |p-aux|)))
; Check receiver injectivity
(push) ; 3
(assert (not (forall ((i1@169@01 Int) (i2@169@01 Int)) (!
  (=>
    (and
      (and (> i1@169@01 4) (< i1@169@01 n@157@01))
      (and (> i2@169@01 4) (< i2@169@01 n@157@01))
      (= i1@169@01 i2@169@01))
    (= i1@169@01 i2@169@01))
  
  :qid |p-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((i@169@01 Int)) (!
  (=>
    (and (> i@169@01 4) (< i@169@01 n@157@01))
    (and
      (= (inv@170@01 a@156@01 i@169@01) i@169@01)
      (img@171@01 a@156@01 i@169@01)))
  :pattern ((inv@170@01 a@156@01 i@169@01))
  :pattern ((img@171@01 a@156@01 i@169@01))
  :qid |p-invOfFct|)))
(assert (forall ((a IArray) (i Int)) (!
  (=>
    (and
      (img@171@01 a i)
      (and (> (inv@170@01 a i) 4) (< (inv@170@01 a i) n@157@01)))
    (and (= a@156@01 a) (= (inv@170@01 a i) i)))
  :pattern ((inv@170@01 a i))
  :qid |p-fctOfInv|)))
; Precomputing data for removing quantified permissions
(define-fun pTaken@172@01 ((a IArray) (i Int)) $Perm
  (ite
    (and
      (and (> (inv@170@01 a i) 4) (< (inv@170@01 a i) n@157@01))
      (img@171@01 a i)
      (and (= a a@156@01) (= i (inv@170@01 a i))))
    ($Perm.min
      (ite
        (and
          (img@161@01 a i)
          (and (> (inv@160@01 a i) 0) (< (inv@160@01 a i) n@157@01)))
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
(assert (not (forall ((a IArray) (i Int)) (!
  (=
    (-
      (ite
        (and
          (img@161@01 a i)
          (and (> (inv@160@01 a i) 0) (< (inv@160@01 a i) n@157@01)))
        $Perm.Write
        $Perm.No)
      (pTaken@172@01 a i))
    $Perm.No)
  
  :qid |quant-u-18435|))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (forall ((a IArray) (i Int)) (!
  (= (pTaken@172@01 a i) $Perm.No)
  
  :qid |quant-u-18436|))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Intermediate check if already taken enough permissions
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 500)
(assert (not (forall ((a IArray) (i Int)) (!
  (=>
    (and
      (and (> (inv@170@01 a i) 4) (< (inv@170@01 a i) n@157@01))
      (img@171@01 a i)
      (and (= a a@156@01) (= i (inv@170@01 a i))))
    (= (- $Perm.Write (pTaken@172@01 a i)) $Perm.No))
  
  :qid |quant-u-18437|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Final check if taken enough permissions
; Done removing quantified permissions
(declare-const i@173@01 Int)
(set-option :timeout 0)
(push) ; 3
; [eval] i > 0 && i < 4
; [eval] i > 0
(push) ; 4
; [then-branch: 24 | !(i@173@01 > 0) | live]
; [else-branch: 24 | i@173@01 > 0 | live]
(push) ; 5
; [then-branch: 24 | !(i@173@01 > 0)]
(assert (not (> i@173@01 0)))
(pop) ; 5
(push) ; 5
; [else-branch: 24 | i@173@01 > 0]
(assert (> i@173@01 0))
; [eval] i < 4
(pop) ; 5
(pop) ; 4
; Joined path conditions
; Joined path conditions
(assert (or (> i@173@01 0) (not (> i@173@01 0))))
(assert (and (> i@173@01 0) (< i@173@01 4)))
(pop) ; 3
(declare-fun inv@174@01 (IArray Int) Int)
(declare-fun img@175@01 (IArray Int) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
(assert (forall ((i@173@01 Int)) (!
  (=>
    (and (> i@173@01 0) (< i@173@01 4))
    (or (> i@173@01 0) (not (> i@173@01 0))))
  :pattern ((inv@174@01 a@156@01 i@173@01))
  :pattern ((img@175@01 a@156@01 i@173@01))
  :qid |p-aux|)))
; Check receiver injectivity
(push) ; 3
(assert (not (forall ((i1@173@01 Int) (i2@173@01 Int)) (!
  (=>
    (and
      (and (> i1@173@01 0) (< i1@173@01 4))
      (and (> i2@173@01 0) (< i2@173@01 4))
      (= i1@173@01 i2@173@01))
    (= i1@173@01 i2@173@01))
  
  :qid |p-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((i@173@01 Int)) (!
  (=>
    (and (> i@173@01 0) (< i@173@01 4))
    (and
      (= (inv@174@01 a@156@01 i@173@01) i@173@01)
      (img@175@01 a@156@01 i@173@01)))
  :pattern ((inv@174@01 a@156@01 i@173@01))
  :pattern ((img@175@01 a@156@01 i@173@01))
  :qid |p-invOfFct|)))
(assert (forall ((a IArray) (i Int)) (!
  (=>
    (and (img@175@01 a i) (and (> (inv@174@01 a i) 0) (< (inv@174@01 a i) 4)))
    (and (= a@156@01 a) (= (inv@174@01 a i) i)))
  :pattern ((inv@174@01 a i))
  :qid |p-fctOfInv|)))
; Precomputing data for removing quantified permissions
(define-fun pTaken@176@01 ((a IArray) (i Int)) $Perm
  (ite
    (and
      (and (> (inv@174@01 a i) 0) (< (inv@174@01 a i) 4))
      (img@175@01 a i)
      (and (= a a@156@01) (= i (inv@174@01 a i))))
    ($Perm.min
      (ite
        (and
          (img@161@01 a i)
          (and (> (inv@160@01 a i) 0) (< (inv@160@01 a i) n@157@01)))
        (- $Perm.Write (pTaken@172@01 a i))
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
(assert (not (forall ((a IArray) (i Int)) (!
  (=
    (-
      (ite
        (and
          (img@161@01 a i)
          (and (> (inv@160@01 a i) 0) (< (inv@160@01 a i) n@157@01)))
        (- $Perm.Write (pTaken@172@01 a i))
        $Perm.No)
      (pTaken@176@01 a i))
    $Perm.No)
  
  :qid |quant-u-18440|))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (forall ((a IArray) (i Int)) (!
  (= (pTaken@176@01 a i) $Perm.No)
  
  :qid |quant-u-18441|))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Intermediate check if already taken enough permissions
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 500)
(assert (not (forall ((a IArray) (i Int)) (!
  (=>
    (and
      (and (> (inv@174@01 a i) 0) (< (inv@174@01 a i) 4))
      (img@175@01 a i)
      (and (= a a@156@01) (= i (inv@174@01 a i))))
    (= (- $Perm.Write (pTaken@176@01 a i)) $Perm.No))
  
  :qid |quant-u-18442|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Final check if taken enough permissions
; Done removing quantified permissions
(pop) ; 2
(pop) ; 1
; ---------- m10 ----------
(declare-const a@177@01 IArray)
(declare-const n@178@01 Int)
(declare-const a@179@01 IArray)
(declare-const n@180@01 Int)
(set-option :timeout 0)
(push) ; 1
(declare-const $t@181@01 $Snap)
(assert (= $t@181@01 ($Snap.combine ($Snap.first $t@181@01) ($Snap.second $t@181@01))))
(assert (= ($Snap.first $t@181@01) $Snap.unit))
; [eval] n > 5
(assert (> n@180@01 5))
(declare-const i@182@01 Int)
(push) ; 2
; [eval] i > 0 && i < n
; [eval] i > 0
(push) ; 3
; [then-branch: 25 | !(i@182@01 > 0) | live]
; [else-branch: 25 | i@182@01 > 0 | live]
(push) ; 4
; [then-branch: 25 | !(i@182@01 > 0)]
(assert (not (> i@182@01 0)))
(pop) ; 4
(push) ; 4
; [else-branch: 25 | i@182@01 > 0]
(assert (> i@182@01 0))
; [eval] i < n
(pop) ; 4
(pop) ; 3
; Joined path conditions
; Joined path conditions
(assert (or (> i@182@01 0) (not (> i@182@01 0))))
(assert (and (> i@182@01 0) (< i@182@01 n@180@01)))
; [eval] loc(a, i)
(pop) ; 2
(declare-fun inv@183@01 ($Ref) Int)
(declare-fun img@184@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
(assert (forall ((i@182@01 Int)) (!
  (=>
    (and (> i@182@01 0) (< i@182@01 n@180@01))
    (or (> i@182@01 0) (not (> i@182@01 0))))
  :pattern ((loc<Ref> a@179@01 i@182@01))
  :qid |val-aux|)))
; Check receiver injectivity
(push) ; 2
(assert (not (forall ((i1@182@01 Int) (i2@182@01 Int)) (!
  (=>
    (and
      (and (> i1@182@01 0) (< i1@182@01 n@180@01))
      (and (> i2@182@01 0) (< i2@182@01 n@180@01))
      (= (loc<Ref> a@179@01 i1@182@01) (loc<Ref> a@179@01 i2@182@01)))
    (= i1@182@01 i2@182@01))
  
  :qid |val-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 2
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((i@182@01 Int)) (!
  (=>
    (and (> i@182@01 0) (< i@182@01 n@180@01))
    (and
      (= (inv@183@01 (loc<Ref> a@179@01 i@182@01)) i@182@01)
      (img@184@01 (loc<Ref> a@179@01 i@182@01))))
  :pattern ((loc<Ref> a@179@01 i@182@01))
  :qid |quant-u-18444|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@184@01 r) (and (> (inv@183@01 r) 0) (< (inv@183@01 r) n@180@01)))
    (= (loc<Ref> a@179@01 (inv@183@01 r)) r))
  :pattern ((inv@183@01 r))
  :qid |val-fctOfInv|)))
; Permissions are non-negative
; Field permissions are at most one
; Permission implies non-null receiver
(assert (forall ((i@182@01 Int)) (!
  (=>
    (and (> i@182@01 0) (< i@182@01 n@180@01))
    (not (= (loc<Ref> a@179@01 i@182@01) $Ref.null)))
  :pattern ((loc<Ref> a@179@01 i@182@01))
  :qid |val-permImpliesNonNull|)))
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
(set-option :timeout 0)
(push) ; 2
(declare-const $t@185@01 $Snap)
(assert (= $t@185@01 ($Snap.combine ($Snap.first $t@185@01) ($Snap.second $t@185@01))))
(declare-const i@186@01 Int)
(push) ; 3
; [eval] i > 4 && i < n
; [eval] i > 4
(push) ; 4
; [then-branch: 26 | !(i@186@01 > 4) | live]
; [else-branch: 26 | i@186@01 > 4 | live]
(push) ; 5
; [then-branch: 26 | !(i@186@01 > 4)]
(assert (not (> i@186@01 4)))
(pop) ; 5
(push) ; 5
; [else-branch: 26 | i@186@01 > 4]
(assert (> i@186@01 4))
; [eval] i < n
(pop) ; 5
(pop) ; 4
; Joined path conditions
; Joined path conditions
(assert (or (> i@186@01 4) (not (> i@186@01 4))))
(assert (and (> i@186@01 4) (< i@186@01 n@180@01)))
; [eval] loc(a, i)
(pop) ; 3
(declare-fun inv@187@01 ($Ref) Int)
(declare-fun img@188@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
(assert (forall ((i@186@01 Int)) (!
  (=>
    (and (> i@186@01 4) (< i@186@01 n@180@01))
    (or (> i@186@01 4) (not (> i@186@01 4))))
  :pattern ((loc<Ref> a@179@01 i@186@01))
  :qid |val-aux|)))
; Check receiver injectivity
(push) ; 3
(assert (not (forall ((i1@186@01 Int) (i2@186@01 Int)) (!
  (=>
    (and
      (and (> i1@186@01 4) (< i1@186@01 n@180@01))
      (and (> i2@186@01 4) (< i2@186@01 n@180@01))
      (= (loc<Ref> a@179@01 i1@186@01) (loc<Ref> a@179@01 i2@186@01)))
    (= i1@186@01 i2@186@01))
  
  :qid |val-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((i@186@01 Int)) (!
  (=>
    (and (> i@186@01 4) (< i@186@01 n@180@01))
    (and
      (= (inv@187@01 (loc<Ref> a@179@01 i@186@01)) i@186@01)
      (img@188@01 (loc<Ref> a@179@01 i@186@01))))
  :pattern ((loc<Ref> a@179@01 i@186@01))
  :qid |quant-u-18446|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@188@01 r) (and (> (inv@187@01 r) 4) (< (inv@187@01 r) n@180@01)))
    (= (loc<Ref> a@179@01 (inv@187@01 r)) r))
  :pattern ((inv@187@01 r))
  :qid |val-fctOfInv|)))
; Permissions are non-negative
; Field permissions are at most one
; Permission implies non-null receiver
(assert (forall ((i@186@01 Int)) (!
  (=>
    (and (> i@186@01 4) (< i@186@01 n@180@01))
    (not (= (loc<Ref> a@179@01 i@186@01) $Ref.null)))
  :pattern ((loc<Ref> a@179@01 i@186@01))
  :qid |val-permImpliesNonNull|)))
(declare-const i@189@01 Int)
(push) ; 3
; [eval] i > 0 && i < 4
; [eval] i > 0
(push) ; 4
; [then-branch: 27 | !(i@189@01 > 0) | live]
; [else-branch: 27 | i@189@01 > 0 | live]
(push) ; 5
; [then-branch: 27 | !(i@189@01 > 0)]
(assert (not (> i@189@01 0)))
(pop) ; 5
(push) ; 5
; [else-branch: 27 | i@189@01 > 0]
(assert (> i@189@01 0))
; [eval] i < 4
(pop) ; 5
(pop) ; 4
; Joined path conditions
; Joined path conditions
(assert (or (> i@189@01 0) (not (> i@189@01 0))))
(assert (and (> i@189@01 0) (< i@189@01 4)))
; [eval] loc(a, i)
(pop) ; 3
(declare-fun inv@190@01 ($Ref) Int)
(declare-fun img@191@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
(assert (forall ((i@189@01 Int)) (!
  (=>
    (and (> i@189@01 0) (< i@189@01 4))
    (or (> i@189@01 0) (not (> i@189@01 0))))
  :pattern ((loc<Ref> a@179@01 i@189@01))
  :qid |val-aux|)))
; Check receiver injectivity
(push) ; 3
(assert (not (forall ((i1@189@01 Int) (i2@189@01 Int)) (!
  (=>
    (and
      (and (> i1@189@01 0) (< i1@189@01 4))
      (and (> i2@189@01 0) (< i2@189@01 4))
      (= (loc<Ref> a@179@01 i1@189@01) (loc<Ref> a@179@01 i2@189@01)))
    (= i1@189@01 i2@189@01))
  
  :qid |val-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((i@189@01 Int)) (!
  (=>
    (and (> i@189@01 0) (< i@189@01 4))
    (and
      (= (inv@190@01 (loc<Ref> a@179@01 i@189@01)) i@189@01)
      (img@191@01 (loc<Ref> a@179@01 i@189@01))))
  :pattern ((loc<Ref> a@179@01 i@189@01))
  :qid |quant-u-18448|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@191@01 r) (and (> (inv@190@01 r) 0) (< (inv@190@01 r) 4)))
    (= (loc<Ref> a@179@01 (inv@190@01 r)) r))
  :pattern ((inv@190@01 r))
  :qid |val-fctOfInv|)))
; Permissions are non-negative
; Field permissions are at most one
; Permission implies non-null receiver
(assert (forall ((i@189@01 Int)) (!
  (=>
    (and (> i@189@01 0) (< i@189@01 4))
    (not (= (loc<Ref> a@179@01 i@189@01) $Ref.null)))
  :pattern ((loc<Ref> a@179@01 i@189@01))
  :qid |val-permImpliesNonNull|)))
(push) ; 3
(set-option :timeout 10)
(assert (not (forall ((r $Ref)) (!
  (and
    (= (loc<Ref> a@179@01 i@189@01) (loc<Ref> a@179@01 i@186@01))
    (=
      (and (img@191@01 r) (and (> (inv@190@01 r) 0) (< (inv@190@01 r) 4)))
      (and (img@188@01 r) (and (> (inv@187@01 r) 4) (< (inv@187@01 r) n@180@01)))))
  
  :qid |quant-u-18449|))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(pop) ; 2
(set-option :timeout 0)
(push) ; 2
(declare-const i@192@01 Int)
(push) ; 3
; [eval] i > 4 && i < n
; [eval] i > 4
(push) ; 4
; [then-branch: 28 | !(i@192@01 > 4) | live]
; [else-branch: 28 | i@192@01 > 4 | live]
(push) ; 5
; [then-branch: 28 | !(i@192@01 > 4)]
(assert (not (> i@192@01 4)))
(pop) ; 5
(push) ; 5
; [else-branch: 28 | i@192@01 > 4]
(assert (> i@192@01 4))
; [eval] i < n
(pop) ; 5
(pop) ; 4
; Joined path conditions
; Joined path conditions
(assert (or (> i@192@01 4) (not (> i@192@01 4))))
(assert (and (> i@192@01 4) (< i@192@01 n@180@01)))
; [eval] loc(a, i)
(pop) ; 3
(declare-fun inv@193@01 ($Ref) Int)
(declare-fun img@194@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
(assert (forall ((i@192@01 Int)) (!
  (=>
    (and (> i@192@01 4) (< i@192@01 n@180@01))
    (or (> i@192@01 4) (not (> i@192@01 4))))
  :pattern ((loc<Ref> a@179@01 i@192@01))
  :qid |val-aux|)))
; Check receiver injectivity
(push) ; 3
(assert (not (forall ((i1@192@01 Int) (i2@192@01 Int)) (!
  (=>
    (and
      (and (> i1@192@01 4) (< i1@192@01 n@180@01))
      (and (> i2@192@01 4) (< i2@192@01 n@180@01))
      (= (loc<Ref> a@179@01 i1@192@01) (loc<Ref> a@179@01 i2@192@01)))
    (= i1@192@01 i2@192@01))
  
  :qid |val-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((i@192@01 Int)) (!
  (=>
    (and (> i@192@01 4) (< i@192@01 n@180@01))
    (and
      (= (inv@193@01 (loc<Ref> a@179@01 i@192@01)) i@192@01)
      (img@194@01 (loc<Ref> a@179@01 i@192@01))))
  :pattern ((loc<Ref> a@179@01 i@192@01))
  :qid |val-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@194@01 r) (and (> (inv@193@01 r) 4) (< (inv@193@01 r) n@180@01)))
    (= (loc<Ref> a@179@01 (inv@193@01 r)) r))
  :pattern ((inv@193@01 r))
  :qid |val-fctOfInv|)))
; Precomputing data for removing quantified permissions
(define-fun pTaken@195@01 ((r $Ref)) $Perm
  (ite
    (and
      (and (> (inv@193@01 r) 4) (< (inv@193@01 r) n@180@01))
      (img@194@01 r)
      (= r (loc<Ref> a@179@01 (inv@193@01 r))))
    ($Perm.min
      (ite
        (and
          (img@184@01 r)
          (and (> (inv@183@01 r) 0) (< (inv@183@01 r) n@180@01)))
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
        (and
          (img@184@01 r)
          (and (> (inv@183@01 r) 0) (< (inv@183@01 r) n@180@01)))
        $Perm.Write
        $Perm.No)
      (pTaken@195@01 r))
    $Perm.No)
  
  :qid |quant-u-18452|))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (forall ((r $Ref)) (!
  (= (pTaken@195@01 r) $Perm.No)
  
  :qid |quant-u-18453|))))
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
      (and (> (inv@193@01 r) 4) (< (inv@193@01 r) n@180@01))
      (img@194@01 r)
      (= r (loc<Ref> a@179@01 (inv@193@01 r))))
    (= (- $Perm.Write (pTaken@195@01 r)) $Perm.No))
  
  :qid |quant-u-18454|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Final check if taken enough permissions
; Done removing quantified permissions
(declare-const i@196@01 Int)
(set-option :timeout 0)
(push) ; 3
; [eval] i > 0 && i < 4
; [eval] i > 0
(push) ; 4
; [then-branch: 29 | !(i@196@01 > 0) | live]
; [else-branch: 29 | i@196@01 > 0 | live]
(push) ; 5
; [then-branch: 29 | !(i@196@01 > 0)]
(assert (not (> i@196@01 0)))
(pop) ; 5
(push) ; 5
; [else-branch: 29 | i@196@01 > 0]
(assert (> i@196@01 0))
; [eval] i < 4
(pop) ; 5
(pop) ; 4
; Joined path conditions
; Joined path conditions
(assert (or (> i@196@01 0) (not (> i@196@01 0))))
(assert (and (> i@196@01 0) (< i@196@01 4)))
; [eval] loc(a, i)
(pop) ; 3
(declare-fun inv@197@01 ($Ref) Int)
(declare-fun img@198@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
(assert (forall ((i@196@01 Int)) (!
  (=>
    (and (> i@196@01 0) (< i@196@01 4))
    (or (> i@196@01 0) (not (> i@196@01 0))))
  :pattern ((loc<Ref> a@179@01 i@196@01))
  :qid |val-aux|)))
; Check receiver injectivity
(push) ; 3
(assert (not (forall ((i1@196@01 Int) (i2@196@01 Int)) (!
  (=>
    (and
      (and (> i1@196@01 0) (< i1@196@01 4))
      (and (> i2@196@01 0) (< i2@196@01 4))
      (= (loc<Ref> a@179@01 i1@196@01) (loc<Ref> a@179@01 i2@196@01)))
    (= i1@196@01 i2@196@01))
  
  :qid |val-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((i@196@01 Int)) (!
  (=>
    (and (> i@196@01 0) (< i@196@01 4))
    (and
      (= (inv@197@01 (loc<Ref> a@179@01 i@196@01)) i@196@01)
      (img@198@01 (loc<Ref> a@179@01 i@196@01))))
  :pattern ((loc<Ref> a@179@01 i@196@01))
  :qid |val-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@198@01 r) (and (> (inv@197@01 r) 0) (< (inv@197@01 r) 4)))
    (= (loc<Ref> a@179@01 (inv@197@01 r)) r))
  :pattern ((inv@197@01 r))
  :qid |val-fctOfInv|)))
; Precomputing data for removing quantified permissions
(define-fun pTaken@199@01 ((r $Ref)) $Perm
  (ite
    (and
      (and (> (inv@197@01 r) 0) (< (inv@197@01 r) 4))
      (img@198@01 r)
      (= r (loc<Ref> a@179@01 (inv@197@01 r))))
    ($Perm.min
      (ite
        (and
          (img@184@01 r)
          (and (> (inv@183@01 r) 0) (< (inv@183@01 r) n@180@01)))
        (- $Perm.Write (pTaken@195@01 r))
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
        (and
          (img@184@01 r)
          (and (> (inv@183@01 r) 0) (< (inv@183@01 r) n@180@01)))
        (- $Perm.Write (pTaken@195@01 r))
        $Perm.No)
      (pTaken@199@01 r))
    $Perm.No)
  
  :qid |quant-u-18457|))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (forall ((r $Ref)) (!
  (= (pTaken@199@01 r) $Perm.No)
  
  :qid |quant-u-18458|))))
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
      (and (> (inv@197@01 r) 0) (< (inv@197@01 r) 4))
      (img@198@01 r)
      (= r (loc<Ref> a@179@01 (inv@197@01 r))))
    (= (- $Perm.Write (pTaken@199@01 r)) $Perm.No))
  
  :qid |quant-u-18459|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Final check if taken enough permissions
; Done removing quantified permissions
(pop) ; 2
(pop) ; 1
