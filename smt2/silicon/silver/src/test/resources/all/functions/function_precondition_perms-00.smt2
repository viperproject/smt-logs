(get-info :version)
; (:version "4.12.1")
; Started: 2025-01-13 17:43:23
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
(declare-sort $PSF<P> 0)
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
(declare-fun $SortWrappers.$PSF<P>To$Snap ($PSF<P>) $Snap)
(declare-fun $SortWrappers.$SnapTo$PSF<P> ($Snap) $PSF<P>)
(assert (forall ((x $PSF<P>)) (!
    (= x ($SortWrappers.$SnapTo$PSF<P>($SortWrappers.$PSF<P>To$Snap x)))
    :pattern (($SortWrappers.$PSF<P>To$Snap x))
    :qid |$Snap.$SnapTo$PSF<P>To$Snap|
    )))
(assert (forall ((x $Snap)) (!
    (= x ($SortWrappers.$PSF<P>To$Snap($SortWrappers.$SnapTo$PSF<P> x)))
    :pattern (($SortWrappers.$SnapTo$PSF<P> x))
    :qid |$Snap.$PSF<P>To$SnapTo$PSF<P>|
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
; /predicate_snap_functions_declarations.smt2 [P: Int]
(declare-fun $PSF.domain_P ($PSF<P>) Set<$Snap>)
(declare-fun $PSF.lookup_P ($PSF<P> $Snap) Int)
(declare-fun $PSF.after_P ($PSF<P> $PSF<P>) Bool)
(declare-fun $PSF.loc_P (Int $Snap) Bool)
(declare-fun $PSF.perm_P ($PPM $Snap) $Perm)
(declare-const $psfTOP_P $PSF<P>)
; Declaring symbols related to program functions (from program analysis)
(declare-fun foo ($Snap $Ref) Int)
(declare-fun foo%limited ($Snap $Ref) Int)
(declare-fun foo%stateless ($Ref) Bool)
(declare-fun foo%precondition ($Snap $Ref) Bool)
(declare-fun bar4 ($Snap $Ref) Int)
(declare-fun bar4%limited ($Snap $Ref) Int)
(declare-fun bar4%stateless ($Ref) Bool)
(declare-fun bar4%precondition ($Snap $Ref) Bool)
(declare-fun bar5 ($Snap $Ref) Int)
(declare-fun bar5%limited ($Snap $Ref) Int)
(declare-fun bar5%stateless ($Ref) Bool)
(declare-fun bar5%precondition ($Snap $Ref) Bool)
(declare-fun nonAliasF ($Snap $Ref $Ref) Int)
(declare-fun nonAliasF%limited ($Snap $Ref $Ref) Int)
(declare-fun nonAliasF%stateless ($Ref $Ref) Bool)
(declare-fun nonAliasF%precondition ($Snap $Ref $Ref) Bool)
(declare-fun foo2w ($Snap $Ref Bool) Int)
(declare-fun foo2w%limited ($Snap $Ref Bool) Int)
(declare-fun foo2w%stateless ($Ref Bool) Bool)
(declare-fun foo2w%precondition ($Snap $Ref Bool) Bool)
(declare-fun bar3 ($Snap $Ref) Int)
(declare-fun bar3%limited ($Snap $Ref) Int)
(declare-fun bar3%stateless ($Ref) Bool)
(declare-fun bar3%precondition ($Snap $Ref) Bool)
(declare-fun foo5pw ($Snap $Ref) Int)
(declare-fun foo5pw%limited ($Snap $Ref) Int)
(declare-fun foo5pw%stateless ($Ref) Bool)
(declare-fun foo5pw%precondition ($Snap $Ref) Bool)
(declare-fun foo5p ($Snap $Ref) Int)
(declare-fun foo5p%limited ($Snap $Ref) Int)
(declare-fun foo5p%stateless ($Ref) Bool)
(declare-fun foo5p%precondition ($Snap $Ref) Bool)
(declare-fun foo5w ($Snap $Ref) Int)
(declare-fun foo5w%limited ($Snap $Ref) Int)
(declare-fun foo5w%stateless ($Ref) Bool)
(declare-fun foo5w%precondition ($Snap $Ref) Bool)
(declare-fun foo5 ($Snap $Ref) Int)
(declare-fun foo5%limited ($Snap $Ref) Int)
(declare-fun foo5%stateless ($Ref) Bool)
(declare-fun foo5%precondition ($Snap $Ref) Bool)
(declare-fun foo6 ($Snap $Ref) Int)
(declare-fun foo6%limited ($Snap $Ref) Int)
(declare-fun foo6%stateless ($Ref) Bool)
(declare-fun foo6%precondition ($Snap $Ref) Bool)
(declare-fun bar2 ($Snap $Ref) Int)
(declare-fun bar2%limited ($Snap $Ref) Int)
(declare-fun bar2%stateless ($Ref) Bool)
(declare-fun bar2%precondition ($Snap $Ref) Bool)
(declare-fun foo4 ($Snap $Ref) Int)
(declare-fun foo4%limited ($Snap $Ref) Int)
(declare-fun foo4%stateless ($Ref) Bool)
(declare-fun foo4%precondition ($Snap $Ref) Bool)
(declare-fun foo3 ($Snap $Ref) Int)
(declare-fun foo3%limited ($Snap $Ref) Int)
(declare-fun foo3%stateless ($Ref) Bool)
(declare-fun foo3%precondition ($Snap $Ref) Bool)
(declare-fun foop ($Snap $Ref) Int)
(declare-fun foop%limited ($Snap $Ref) Int)
(declare-fun foop%stateless ($Ref) Bool)
(declare-fun foop%precondition ($Snap $Ref) Bool)
(declare-fun bar ($Snap $Ref) Int)
(declare-fun bar%limited ($Snap $Ref) Int)
(declare-fun bar%stateless ($Ref) Bool)
(declare-fun bar%precondition ($Snap $Ref) Bool)
(declare-fun foo2 ($Snap $Ref Bool) Int)
(declare-fun foo2%limited ($Snap $Ref Bool) Int)
(declare-fun foo2%stateless ($Ref Bool) Bool)
(declare-fun foo2%precondition ($Snap $Ref Bool) Bool)
; Snapshot variable to be used during function verification
(declare-fun s@$ () $Snap)
; Declaring predicate trigger functions
(declare-fun P%trigger ($Snap $Ref) Bool)
(declare-fun nonAliasPred%trigger ($Snap $Ref $Ref) Bool)
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
; /predicate_snap_functions_axioms.smt2 [P: Int]
(assert (forall ((vs $PSF<P>) (ws $PSF<P>)) (!
    (=>
      (and
        (Set_equal ($PSF.domain_P vs) ($PSF.domain_P ws))
        (forall ((x $Snap)) (!
          (=>
            (Set_in x ($PSF.domain_P vs))
            (= ($PSF.lookup_P vs x) ($PSF.lookup_P ws x)))
          :pattern (($PSF.lookup_P vs x) ($PSF.lookup_P ws x))
          :qid |qp.$PSF<P>-eq-inner|
          )))
      (= vs ws))
    :pattern (($SortWrappers.$PSF<P>To$Snap vs)
              ($SortWrappers.$PSF<P>To$Snap ws)
              )
    :qid |qp.$PSF<P>-eq-outer|
    )))
(assert (forall ((s $Snap) (pm $PPM)) (!
    ($Perm.isValidVar ($PSF.perm_P pm s))
    :pattern (($PSF.perm_P pm s)))))
(assert (forall ((s $Snap) (f Int)) (!
    (= ($PSF.loc_P f s) true)
    :pattern (($PSF.loc_P f s)))))
; End preamble
; ------------------------------------------------------------
; State saturation: after preamble
(set-option :timeout 100)
(check-sat)
; unknown
; ---------- FUNCTION foo----------
(declare-fun x@0@00 () $Ref)
(declare-fun result@1@00 () Int)
; ----- Well-definedness of specifications -----
(set-option :timeout 0)
(push) ; 1
(assert (not (= x@0@00 $Ref.null)))
(pop) ; 1
(assert (forall ((s@$ $Snap) (x@0@00 $Ref)) (!
  (= (foo%limited s@$ x@0@00) (foo s@$ x@0@00))
  :pattern ((foo s@$ x@0@00))
  :qid |quant-u-22142|)))
(assert (forall ((s@$ $Snap) (x@0@00 $Ref)) (!
  (foo%stateless x@0@00)
  :pattern ((foo%limited s@$ x@0@00))
  :qid |quant-u-22143|)))
; ---------- FUNCTION bar4----------
(declare-fun x@2@00 () $Ref)
(declare-fun result@3@00 () Int)
; ----- Well-definedness of specifications -----
(push) ; 1
(assert (= s@$ ($Snap.combine ($Snap.first s@$) ($Snap.second s@$))))
(assert (= ($Snap.second s@$) $Snap.unit))
; [eval] (unfolding acc(P(x), write) in x.f > 0)
(push) ; 2
(assert (P%trigger ($Snap.first s@$) x@2@00))
(assert (not (= x@2@00 $Ref.null)))
; [eval] x.f > 0
(pop) ; 2
; Joined path conditions
(assert (and (P%trigger ($Snap.first s@$) x@2@00) (not (= x@2@00 $Ref.null))))
(assert (> ($SortWrappers.$SnapToInt ($Snap.first s@$)) 0))
(pop) ; 1
(assert (forall ((s@$ $Snap) (x@2@00 $Ref)) (!
  (= (bar4%limited s@$ x@2@00) (bar4 s@$ x@2@00))
  :pattern ((bar4 s@$ x@2@00))
  :qid |quant-u-22144|)))
(assert (forall ((s@$ $Snap) (x@2@00 $Ref)) (!
  (bar4%stateless x@2@00)
  :pattern ((bar4%limited s@$ x@2@00))
  :qid |quant-u-22145|)))
; ---------- FUNCTION bar5----------
(declare-fun x@4@00 () $Ref)
(declare-fun result@5@00 () Int)
; ----- Well-definedness of specifications -----
(push) ; 1
(assert (= s@$ $Snap.unit))
; [eval] (unfolding acc(P(x), write) in x.f > 0)
(push) ; 2
(check-sat)
; unknown
; [state consolidation]
; State saturation: before repetition
(set-option :timeout 10)
(check-sat)
; unknown
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not false))
(check-sat)
; unknown
(pop) ; 3
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
(push) ; 3
(set-option :timeout 10)
(assert (not false))
(check-sat)
; unknown
(pop) ; 3
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
(push) ; 3
(set-option :timeout 10)
(assert (not false))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(check-sat)
; unknown
(pop) ; 2
(pop) ; 1
; ---------- FUNCTION nonAliasF----------
(declare-fun x@6@00 () $Ref)
(declare-fun y@7@00 () $Ref)
(declare-fun result@8@00 () Int)
; ----- Well-definedness of specifications -----
(push) ; 1
(assert (= s@$ ($Snap.combine ($Snap.first s@$) ($Snap.second s@$))))
(assert (not (= x@6@00 $Ref.null)))
(push) ; 2
(set-option :timeout 10)
(assert (not (= x@6@00 y@7@00)))
(check-sat)
; unknown
(pop) ; 2
; 0.00s
; (get-info :all-statistics)
(assert (not (= y@7@00 $Ref.null)))
(pop) ; 1
(assert (forall ((s@$ $Snap) (x@6@00 $Ref) (y@7@00 $Ref)) (!
  (= (nonAliasF%limited s@$ x@6@00 y@7@00) (nonAliasF s@$ x@6@00 y@7@00))
  :pattern ((nonAliasF s@$ x@6@00 y@7@00))
  :qid |quant-u-22148|)))
(assert (forall ((s@$ $Snap) (x@6@00 $Ref) (y@7@00 $Ref)) (!
  (nonAliasF%stateless x@6@00 y@7@00)
  :pattern ((nonAliasF%limited s@$ x@6@00 y@7@00))
  :qid |quant-u-22149|)))
; ----- Verification of function body and postcondition -----
(set-option :timeout 0)
(push) ; 1
(assert (= s@$ ($Snap.combine ($Snap.first s@$) ($Snap.second s@$))))
(assert (not (= x@6@00 $Ref.null)))
(assert (not (= y@7@00 $Ref.null)))
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
; [eval] (asserting (x != y) in x.f)
; [eval] x != y
(set-option :timeout 0)
(push) ; 2
(assert (not (not (= x@6@00 y@7@00))))
(check-sat)
; unknown
(pop) ; 2
; 0.00s
; (get-info :all-statistics)
; [state consolidation]
; State saturation: before repetition
(set-option :timeout 10)
(check-sat)
; unknown
(set-option :timeout 0)
(push) ; 2
(set-option :timeout 10)
(assert (not (= y@7@00 x@6@00)))
(check-sat)
; unknown
(pop) ; 2
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 2
(set-option :timeout 10)
(assert (not (not
  (=
    ($SortWrappers.$SnapToInt ($Snap.first s@$))
    ($SortWrappers.$SnapToInt ($Snap.second s@$))))))
(check-sat)
; unknown
(pop) ; 2
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 2
(set-option :timeout 10)
(assert (not (not
  (=
    ($SortWrappers.$SnapToInt ($Snap.second s@$))
    ($SortWrappers.$SnapToInt ($Snap.first s@$))))))
(check-sat)
; unknown
(pop) ; 2
; 0.00s
; (get-info :all-statistics)
; [eval] x != y
(set-option :timeout 0)
(push) ; 2
(assert (not (not (= x@6@00 y@7@00))))
(check-sat)
; unknown
(pop) ; 2
; 0.00s
; (get-info :all-statistics)
; [state consolidation]
; State saturation: before repetition
(set-option :timeout 10)
(check-sat)
; unknown
(set-option :timeout 0)
(push) ; 2
(set-option :timeout 10)
(assert (not (= y@7@00 x@6@00)))
(check-sat)
; unknown
(pop) ; 2
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 2
(set-option :timeout 10)
(assert (not (not
  (=
    ($SortWrappers.$SnapToInt ($Snap.first s@$))
    ($SortWrappers.$SnapToInt ($Snap.second s@$))))))
(check-sat)
; unknown
(pop) ; 2
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 2
(set-option :timeout 10)
(assert (not (not
  (=
    ($SortWrappers.$SnapToInt ($Snap.second s@$))
    ($SortWrappers.$SnapToInt ($Snap.first s@$))))))
(check-sat)
; unknown
(pop) ; 2
; 0.00s
; (get-info :all-statistics)
; [eval] x != y
(set-option :timeout 0)
(push) ; 2
(assert (not (not (= x@6@00 y@7@00))))
(check-sat)
; unknown
(pop) ; 2
; 0.00s
; (get-info :all-statistics)
; [state consolidation]
; State saturation: before repetition
(set-option :timeout 10)
(check-sat)
; unknown
(set-option :timeout 0)
(push) ; 2
(set-option :timeout 10)
(assert (not (= y@7@00 x@6@00)))
(check-sat)
; unknown
(pop) ; 2
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 2
(set-option :timeout 10)
(assert (not (not
  (=
    ($SortWrappers.$SnapToInt ($Snap.first s@$))
    ($SortWrappers.$SnapToInt ($Snap.second s@$))))))
(check-sat)
; unknown
(pop) ; 2
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 2
(set-option :timeout 10)
(assert (not (not
  (=
    ($SortWrappers.$SnapToInt ($Snap.second s@$))
    ($SortWrappers.$SnapToInt ($Snap.first s@$))))))
(check-sat)
; unknown
(pop) ; 2
; 0.00s
; (get-info :all-statistics)
; [eval] x != y
(set-option :timeout 0)
(push) ; 2
(assert (not (not (= x@6@00 y@7@00))))
(check-sat)
; unknown
(pop) ; 2
; 0.00s
; (get-info :all-statistics)
(pop) ; 1
; ---------- FUNCTION foo2w----------
(declare-fun x@9@00 () $Ref)
(declare-fun b@10@00 () Bool)
(declare-fun result@11@00 () Int)
; ----- Well-definedness of specifications -----
(push) ; 1
; [eval] (b ? wildcard : none)
(push) ; 2
(push) ; 3
(set-option :timeout 10)
(assert (not (not b@10@00)))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not b@10@00))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; [then-branch: 0 | b@10@00 | live]
; [else-branch: 0 | !(b@10@00) | live]
(set-option :timeout 0)
(push) ; 3
; [then-branch: 0 | b@10@00]
(assert b@10@00)
(declare-const $k@37@00 $Perm)
(assert ($Perm.isReadVar $k@37@00))
(pop) ; 3
(push) ; 3
; [else-branch: 0 | !(b@10@00)]
(assert (not b@10@00))
(pop) ; 3
(pop) ; 2
; Joined path conditions
(assert ($Perm.isReadVar $k@37@00))
; Joined path conditions
(assert (or (not b@10@00) b@10@00))
(push) ; 2
(assert (not (or
  (= (ite b@10@00 $k@37@00 $Perm.No) $Perm.No)
  (ite b@10@00 (< $Perm.No $k@37@00) false))))
(check-sat)
; unsat
(pop) ; 2
; 0.00s
; (get-info :all-statistics)
(assert (<= $Perm.No (ite b@10@00 $k@37@00 $Perm.No)))
(assert (=> (ite b@10@00 (< $Perm.No $k@37@00) false) (not (= x@9@00 $Ref.null))))
(pop) ; 1
(assert (forall ((s@$ $Snap) (x@9@00 $Ref) (b@10@00 Bool)) (!
  (= (foo2w%limited s@$ x@9@00 b@10@00) (foo2w s@$ x@9@00 b@10@00))
  :pattern ((foo2w s@$ x@9@00 b@10@00))
  :qid |quant-u-22150|)))
(assert (forall ((s@$ $Snap) (x@9@00 $Ref) (b@10@00 Bool)) (!
  (foo2w%stateless x@9@00 b@10@00)
  :pattern ((foo2w%limited s@$ x@9@00 b@10@00))
  :qid |quant-u-22151|)))
; ---------- FUNCTION bar3----------
(declare-fun x@12@00 () $Ref)
(declare-fun result@13@00 () Int)
; ----- Well-definedness of specifications -----
(push) ; 1
(pop) ; 1
(assert (forall ((s@$ $Snap) (x@12@00 $Ref)) (!
  (= (bar3%limited s@$ x@12@00) (bar3 s@$ x@12@00))
  :pattern ((bar3 s@$ x@12@00))
  :qid |quant-u-22152|)))
(assert (forall ((s@$ $Snap) (x@12@00 $Ref)) (!
  (bar3%stateless x@12@00)
  :pattern ((bar3%limited s@$ x@12@00))
  :qid |quant-u-22153|)))
; ----- Verification of function body and postcondition -----
(push) ; 1
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
; [eval] (unfolding acc(P(x), 1 / 2) in x.g)
(set-option :timeout 0)
(push) ; 2
(assert (P%trigger s@$ x@12@00))
(assert (not (= x@12@00 $Ref.null)))
(check-sat)
; unknown
; [state consolidation]
; State saturation: before repetition
(set-option :timeout 10)
(check-sat)
; unknown
(set-option :timeout 0)
(check-sat)
; unknown
(pop) ; 2
(pop) ; 1
; ---------- FUNCTION foo5pw----------
(declare-fun x@14@00 () $Ref)
(declare-fun result@15@00 () Int)
; ----- Well-definedness of specifications -----
(push) ; 1
(declare-const z@38@00 $Ref)
(push) ; 2
; [eval] z == x
(assert (= z@38@00 x@14@00))
(declare-const $k@39@00 $Perm)
(assert ($Perm.isReadVar $k@39@00))
(pop) ; 2
(declare-fun inv@40@00 ($Snap $Ref $Ref) $Ref)
(declare-fun img@41@00 ($Snap $Ref $Ref) Bool)
; Nested auxiliary terms: globals
(assert ($Perm.isReadVar $k@39@00))
; Nested auxiliary terms: non-globals
(push) ; 2
(assert (not (forall ((z@38@00 $Ref)) (!
  (=> (= z@38@00 x@14@00) (or (= $k@39@00 $Perm.No) (< $Perm.No $k@39@00)))
  
  :qid |quant-u-22176|))))
(check-sat)
; unsat
(pop) ; 2
; 0.00s
; (get-info :all-statistics)
; Check receiver injectivity
(push) ; 2
(assert (not (forall ((z1@38@00 $Ref) (z2@38@00 $Ref)) (!
  (=>
    (and
      (and (= z1@38@00 x@14@00) (< $Perm.No $k@39@00))
      (and (= z2@38@00 x@14@00) (< $Perm.No $k@39@00))
      (= z1@38@00 z2@38@00))
    (= z1@38@00 z2@38@00))
  
  :qid |P-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 2
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((z@38@00 $Ref)) (!
  (=>
    (and (= z@38@00 x@14@00) (< $Perm.No $k@39@00))
    (and
      (= (inv@40@00 s@$ x@14@00 z@38@00) z@38@00)
      (img@41@00 s@$ x@14@00 z@38@00)))
  :pattern ((inv@40@00 s@$ x@14@00 z@38@00))
  :pattern ((img@41@00 s@$ x@14@00 z@38@00))
  :qid |quant-u-22177|)))
(assert (forall ((x $Ref)) (!
  (=>
    (and
      (img@41@00 s@$ x@14@00 x)
      (and (= (inv@40@00 s@$ x@14@00 x) x@14@00) (< $Perm.No $k@39@00)))
    (= (inv@40@00 s@$ x@14@00 x) x))
  :pattern ((inv@40@00 s@$ x@14@00 x))
  :qid |P-fctOfInv|)))
; Permissions are non-negative
(assert (forall ((z@38@00 $Ref)) (!
  (<= $Perm.No $k@39@00)
  :pattern ((inv@40@00 s@$ x@14@00 z@38@00))
  :pattern ((img@41@00 s@$ x@14@00 z@38@00))
  :qid |P-permAtLeastZero|)))
(pop) ; 1
(assert (forall ((s@$ $Snap) (x@14@00 $Ref)) (!
  (= (foo5pw%limited s@$ x@14@00) (foo5pw s@$ x@14@00))
  :pattern ((foo5pw s@$ x@14@00))
  :qid |quant-u-22154|)))
(assert (forall ((s@$ $Snap) (x@14@00 $Ref)) (!
  (foo5pw%stateless x@14@00)
  :pattern ((foo5pw%limited s@$ x@14@00))
  :qid |quant-u-22155|)))
; ---------- FUNCTION foo5p----------
(declare-fun x@16@00 () $Ref)
(declare-fun result@17@00 () Int)
; ----- Well-definedness of specifications -----
(push) ; 1
(declare-const z@42@00 $Ref)
(push) ; 2
; [eval] z == x
(assert (= z@42@00 x@16@00))
(pop) ; 2
(declare-fun inv@43@00 ($Snap $Ref $Ref) $Ref)
(declare-fun img@44@00 ($Snap $Ref $Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
; Check receiver injectivity
(push) ; 2
(assert (not (forall ((z1@42@00 $Ref) (z2@42@00 $Ref)) (!
  (=>
    (and (= z1@42@00 x@16@00) (= z2@42@00 x@16@00) (= z1@42@00 z2@42@00))
    (= z1@42@00 z2@42@00))
  
  :qid |P-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 2
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((z@42@00 $Ref)) (!
  (=>
    (= z@42@00 x@16@00)
    (and
      (= (inv@43@00 s@$ x@16@00 z@42@00) z@42@00)
      (img@44@00 s@$ x@16@00 z@42@00)))
  :pattern ((inv@43@00 s@$ x@16@00 z@42@00))
  :pattern ((img@44@00 s@$ x@16@00 z@42@00))
  :qid |quant-u-22179|)))
(assert (forall ((x $Ref)) (!
  (=>
    (and (img@44@00 s@$ x@16@00 x) (= (inv@43@00 s@$ x@16@00 x) x@16@00))
    (= (inv@43@00 s@$ x@16@00 x) x))
  :pattern ((inv@43@00 s@$ x@16@00 x))
  :qid |P-fctOfInv|)))
; Permissions are non-negative
(pop) ; 1
(assert (forall ((s@$ $Snap) (x@16@00 $Ref)) (!
  (= (foo5p%limited s@$ x@16@00) (foo5p s@$ x@16@00))
  :pattern ((foo5p s@$ x@16@00))
  :qid |quant-u-22156|)))
(assert (forall ((s@$ $Snap) (x@16@00 $Ref)) (!
  (foo5p%stateless x@16@00)
  :pattern ((foo5p%limited s@$ x@16@00))
  :qid |quant-u-22157|)))
; ---------- FUNCTION foo5w----------
(declare-fun x@18@00 () $Ref)
(declare-fun result@19@00 () Int)
; ----- Well-definedness of specifications -----
(push) ; 1
(declare-const z@45@00 $Ref)
(push) ; 2
; [eval] z == x
(assert (= z@45@00 x@18@00))
(declare-const $k@46@00 $Perm)
(assert ($Perm.isReadVar $k@46@00))
(pop) ; 2
(declare-fun inv@47@00 ($Snap $Ref $Ref) $Ref)
(declare-fun img@48@00 ($Snap $Ref $Ref) Bool)
; Nested auxiliary terms: globals
(assert ($Perm.isReadVar $k@46@00))
; Nested auxiliary terms: non-globals
(push) ; 2
(assert (not (forall ((z@45@00 $Ref)) (!
  (=> (= z@45@00 x@18@00) (or (= $k@46@00 $Perm.No) (< $Perm.No $k@46@00)))
  
  :qid |quant-u-22180|))))
(check-sat)
; unsat
(pop) ; 2
; 0.00s
; (get-info :all-statistics)
; Check receiver injectivity
(push) ; 2
(assert (not (forall ((z1@45@00 $Ref) (z2@45@00 $Ref)) (!
  (=>
    (and
      (and (= z1@45@00 x@18@00) (< $Perm.No $k@46@00))
      (and (= z2@45@00 x@18@00) (< $Perm.No $k@46@00))
      (= z1@45@00 z2@45@00))
    (= z1@45@00 z2@45@00))
  
  :qid |f-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 2
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((z@45@00 $Ref)) (!
  (=>
    (and (= z@45@00 x@18@00) (< $Perm.No $k@46@00))
    (and
      (= (inv@47@00 s@$ x@18@00 z@45@00) z@45@00)
      (img@48@00 s@$ x@18@00 z@45@00)))
  :pattern ((inv@47@00 s@$ x@18@00 z@45@00))
  :pattern ((img@48@00 s@$ x@18@00 z@45@00))
  :qid |quant-u-22181|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@48@00 s@$ x@18@00 r)
      (and (= (inv@47@00 s@$ x@18@00 r) x@18@00) (< $Perm.No $k@46@00)))
    (= (inv@47@00 s@$ x@18@00 r) r))
  :pattern ((inv@47@00 s@$ x@18@00 r))
  :qid |f-fctOfInv|)))
; Permissions are non-negative
(assert (forall ((z@45@00 $Ref)) (!
  (<= $Perm.No $k@46@00)
  :pattern ((inv@47@00 s@$ x@18@00 z@45@00))
  :pattern ((img@48@00 s@$ x@18@00 z@45@00))
  :qid |f-permAtLeastZero|)))
; Permission implies non-null receiver
(assert (forall ((z@45@00 $Ref)) (!
  (=>
    (and (= z@45@00 x@18@00) (< $Perm.No $k@46@00))
    (not (= z@45@00 $Ref.null)))
  :pattern ((inv@47@00 s@$ x@18@00 z@45@00))
  :pattern ((img@48@00 s@$ x@18@00 z@45@00))
  :qid |f-permImpliesNonNull|)))
(pop) ; 1
(assert (forall ((s@$ $Snap) (x@18@00 $Ref)) (!
  (= (foo5w%limited s@$ x@18@00) (foo5w s@$ x@18@00))
  :pattern ((foo5w s@$ x@18@00))
  :qid |quant-u-22158|)))
(assert (forall ((s@$ $Snap) (x@18@00 $Ref)) (!
  (foo5w%stateless x@18@00)
  :pattern ((foo5w%limited s@$ x@18@00))
  :qid |quant-u-22159|)))
; ---------- FUNCTION foo5----------
(declare-fun x@20@00 () $Ref)
(declare-fun result@21@00 () Int)
; ----- Well-definedness of specifications -----
(push) ; 1
(declare-const z@49@00 $Ref)
(push) ; 2
; [eval] z == x
(assert (= z@49@00 x@20@00))
(pop) ; 2
(declare-fun inv@50@00 ($Snap $Ref $Ref) $Ref)
(declare-fun img@51@00 ($Snap $Ref $Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
; Check receiver injectivity
(push) ; 2
(assert (not (forall ((z1@49@00 $Ref) (z2@49@00 $Ref)) (!
  (=>
    (and (= z1@49@00 x@20@00) (= z2@49@00 x@20@00) (= z1@49@00 z2@49@00))
    (= z1@49@00 z2@49@00))
  
  :qid |f-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 2
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((z@49@00 $Ref)) (!
  (=>
    (= z@49@00 x@20@00)
    (and
      (= (inv@50@00 s@$ x@20@00 z@49@00) z@49@00)
      (img@51@00 s@$ x@20@00 z@49@00)))
  :pattern ((inv@50@00 s@$ x@20@00 z@49@00))
  :pattern ((img@51@00 s@$ x@20@00 z@49@00))
  :qid |quant-u-22183|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@51@00 s@$ x@20@00 r) (= (inv@50@00 s@$ x@20@00 r) x@20@00))
    (= (inv@50@00 s@$ x@20@00 r) r))
  :pattern ((inv@50@00 s@$ x@20@00 r))
  :qid |f-fctOfInv|)))
; Permissions are non-negative
; Permission implies non-null receiver
(assert (forall ((z@49@00 $Ref)) (!
  (=> (= z@49@00 x@20@00) (not (= z@49@00 $Ref.null)))
  :pattern ((inv@50@00 s@$ x@20@00 z@49@00))
  :pattern ((img@51@00 s@$ x@20@00 z@49@00))
  :qid |f-permImpliesNonNull|)))
(pop) ; 1
(assert (forall ((s@$ $Snap) (x@20@00 $Ref)) (!
  (= (foo5%limited s@$ x@20@00) (foo5 s@$ x@20@00))
  :pattern ((foo5 s@$ x@20@00))
  :qid |quant-u-22160|)))
(assert (forall ((s@$ $Snap) (x@20@00 $Ref)) (!
  (foo5%stateless x@20@00)
  :pattern ((foo5%limited s@$ x@20@00))
  :qid |quant-u-22161|)))
; ---------- FUNCTION foo6----------
(declare-fun x@22@00 () $Ref)
(declare-fun result@23@00 () Int)
; ----- Well-definedness of specifications -----
(push) ; 1
(assert (= s@$ ($Snap.combine ($Snap.first s@$) ($Snap.second s@$))))
(declare-const z@52@00 $Ref)
(push) ; 2
(assert false)
(pop) ; 2
(declare-fun inv@53@00 ($Snap $Ref $Ref) $Ref)
(declare-fun img@54@00 ($Snap $Ref $Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
; Check receiver injectivity
; Definitional axioms for inverse functions
; Permissions are non-negative
; Permission implies non-null receiver
(declare-fun sm@55@00 ($Snap $Ref) $FVF<f>)
; Definitional axioms for singleton-SM's value
(assert (=
  ($FVF.lookup_f (sm@55@00 s@$ x@22@00) x@22@00)
  ($SortWrappers.$SnapToInt ($Snap.second s@$))))
(assert (not (= x@22@00 $Ref.null)))
(pop) ; 1
(assert (forall ((s@$ $Snap) (x@22@00 $Ref)) (!
  (= (foo6%limited s@$ x@22@00) (foo6 s@$ x@22@00))
  :pattern ((foo6 s@$ x@22@00))
  :qid |quant-u-22162|)))
(assert (forall ((s@$ $Snap) (x@22@00 $Ref)) (!
  (foo6%stateless x@22@00)
  :pattern ((foo6%limited s@$ x@22@00))
  :qid |quant-u-22163|)))
; ---------- FUNCTION bar2----------
(declare-fun x@24@00 () $Ref)
(declare-fun result@25@00 () Int)
; ----- Well-definedness of specifications -----
(push) ; 1
(pop) ; 1
(assert (forall ((s@$ $Snap) (x@24@00 $Ref)) (!
  (= (bar2%limited s@$ x@24@00) (bar2 s@$ x@24@00))
  :pattern ((bar2 s@$ x@24@00))
  :qid |quant-u-22164|)))
(assert (forall ((s@$ $Snap) (x@24@00 $Ref)) (!
  (bar2%stateless x@24@00)
  :pattern ((bar2%limited s@$ x@24@00))
  :qid |quant-u-22165|)))
; ----- Verification of function body and postcondition -----
(push) ; 1
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
; [eval] (unfolding acc(P(x), 1 / 2) in foo(x))
(set-option :timeout 0)
(push) ; 2
(push) ; 3
(assert (not false))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(check-sat)
; unknown
; [state consolidation]
; State saturation: before repetition
(set-option :timeout 10)
(check-sat)
; unknown
(set-option :timeout 0)
(push) ; 3
(assert (not false))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(check-sat)
; unknown
; [state consolidation]
; State saturation: before repetition
(set-option :timeout 10)
(check-sat)
; unknown
(set-option :timeout 0)
(push) ; 3
(assert (not false))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(check-sat)
; unknown
; [state consolidation]
; State saturation: before repetition
(set-option :timeout 10)
(check-sat)
; unknown
(set-option :timeout 0)
(push) ; 3
(assert (not false))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(check-sat)
; unknown
(pop) ; 2
(pop) ; 1
; ---------- FUNCTION foo4----------
(declare-fun x@26@00 () $Ref)
(declare-fun result@27@00 () Int)
; ----- Well-definedness of specifications -----
(push) ; 1
(assert (= s@$ ($Snap.combine ($Snap.first s@$) ($Snap.second s@$))))
(assert (not (= x@26@00 $Ref.null)))
(assert (=
  ($SortWrappers.$SnapToInt ($Snap.first s@$))
  ($SortWrappers.$SnapToInt ($Snap.second s@$))))
(pop) ; 1
(assert (forall ((s@$ $Snap) (x@26@00 $Ref)) (!
  (= (foo4%limited s@$ x@26@00) (foo4 s@$ x@26@00))
  :pattern ((foo4 s@$ x@26@00))
  :qid |quant-u-22166|)))
(assert (forall ((s@$ $Snap) (x@26@00 $Ref)) (!
  (foo4%stateless x@26@00)
  :pattern ((foo4%limited s@$ x@26@00))
  :qid |quant-u-22167|)))
; ---------- FUNCTION foo3----------
(declare-fun x@28@00 () $Ref)
(declare-fun result@29@00 () Int)
; ----- Well-definedness of specifications -----
(push) ; 1
(declare-const $k@56@00 $Perm)
(assert ($Perm.isReadVar $k@56@00))
(assert (<= $Perm.No $k@56@00))
(assert (=> (< $Perm.No $k@56@00) (not (= x@28@00 $Ref.null))))
(pop) ; 1
(assert (forall ((s@$ $Snap) (x@28@00 $Ref)) (!
  (= (foo3%limited s@$ x@28@00) (foo3 s@$ x@28@00))
  :pattern ((foo3 s@$ x@28@00))
  :qid |quant-u-22168|)))
(assert (forall ((s@$ $Snap) (x@28@00 $Ref)) (!
  (foo3%stateless x@28@00)
  :pattern ((foo3%limited s@$ x@28@00))
  :qid |quant-u-22169|)))
; ---------- FUNCTION foop----------
(declare-fun x@30@00 () $Ref)
(declare-fun result@31@00 () Int)
; ----- Well-definedness of specifications -----
(push) ; 1
(pop) ; 1
(assert (forall ((s@$ $Snap) (x@30@00 $Ref)) (!
  (= (foop%limited s@$ x@30@00) (foop s@$ x@30@00))
  :pattern ((foop s@$ x@30@00))
  :qid |quant-u-22170|)))
(assert (forall ((s@$ $Snap) (x@30@00 $Ref)) (!
  (foop%stateless x@30@00)
  :pattern ((foop%limited s@$ x@30@00))
  :qid |quant-u-22171|)))
; ---------- FUNCTION bar----------
(declare-fun x@32@00 () $Ref)
(declare-fun result@33@00 () Int)
; ----- Well-definedness of specifications -----
(push) ; 1
(pop) ; 1
(assert (forall ((s@$ $Snap) (x@32@00 $Ref)) (!
  (= (bar%limited s@$ x@32@00) (bar s@$ x@32@00))
  :pattern ((bar s@$ x@32@00))
  :qid |quant-u-22172|)))
(assert (forall ((s@$ $Snap) (x@32@00 $Ref)) (!
  (bar%stateless x@32@00)
  :pattern ((bar%limited s@$ x@32@00))
  :qid |quant-u-22173|)))
; ----- Verification of function body and postcondition -----
(push) ; 1
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
; [eval] (unfolding acc(P(x), 1 / 2) in foo(x))
(set-option :timeout 0)
(push) ; 2
(assert (P%trigger s@$ x@32@00))
(assert (not (= x@32@00 $Ref.null)))
; [eval] foo(x)
(push) ; 3
(assert (foo%precondition s@$ x@32@00))
(pop) ; 3
; Joined path conditions
(assert (foo%precondition s@$ x@32@00))
(pop) ; 2
; Joined path conditions
(assert (and
  (P%trigger s@$ x@32@00)
  (not (= x@32@00 $Ref.null))
  (foo%precondition s@$ x@32@00)))
(assert (= result@33@00 (foo s@$ x@32@00)))
(pop) ; 1
(assert (forall ((s@$ $Snap) (x@32@00 $Ref)) (!
  (=> (bar%precondition s@$ x@32@00) (= (bar s@$ x@32@00) (foo s@$ x@32@00)))
  :pattern ((bar s@$ x@32@00))
  :pattern ((bar%stateless x@32@00) (P%trigger s@$ x@32@00))
  :qid |quant-u-22186|)))
(assert (forall ((s@$ $Snap) (x@32@00 $Ref)) (!
  (=> (bar%precondition s@$ x@32@00) (foo%precondition s@$ x@32@00))
  :pattern ((bar s@$ x@32@00))
  :qid |quant-u-22187|)))
; ---------- FUNCTION foo2----------
(declare-fun x@34@00 () $Ref)
(declare-fun b@35@00 () Bool)
(declare-fun result@36@00 () Int)
; ----- Well-definedness of specifications -----
(push) ; 1
; [eval] (b ? write : none)
(push) ; 2
(push) ; 3
(set-option :timeout 10)
(assert (not (not b@35@00)))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not b@35@00))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; [then-branch: 1 | b@35@00 | live]
; [else-branch: 1 | !(b@35@00) | live]
(set-option :timeout 0)
(push) ; 3
; [then-branch: 1 | b@35@00]
(assert b@35@00)
(pop) ; 3
(push) ; 3
; [else-branch: 1 | !(b@35@00)]
(assert (not b@35@00))
(pop) ; 3
(pop) ; 2
; Joined path conditions
; Joined path conditions
(assert (or (not b@35@00) b@35@00))
(push) ; 2
(assert (not (or (= (ite b@35@00 $Perm.Write $Perm.No) $Perm.No) b@35@00)))
(check-sat)
; unsat
(pop) ; 2
; 0.00s
; (get-info :all-statistics)
(assert (<= $Perm.No (ite b@35@00 $Perm.Write $Perm.No)))
(assert (=> b@35@00 (not (= x@34@00 $Ref.null))))
(pop) ; 1
(assert (forall ((s@$ $Snap) (x@34@00 $Ref) (b@35@00 Bool)) (!
  (= (foo2%limited s@$ x@34@00 b@35@00) (foo2 s@$ x@34@00 b@35@00))
  :pattern ((foo2 s@$ x@34@00 b@35@00))
  :qid |quant-u-22174|)))
(assert (forall ((s@$ $Snap) (x@34@00 $Ref) (b@35@00 Bool)) (!
  (foo2%stateless x@34@00 b@35@00)
  :pattern ((foo2%limited s@$ x@34@00 b@35@00))
  :qid |quant-u-22175|)))
; ---------- P ----------
(declare-const x@57@00 $Ref)
(push) ; 1
(declare-const $t@58@00 Int)
(assert (not (= x@57@00 $Ref.null)))
(pop) ; 1
; ---------- nonAliasPred ----------
(declare-const x@59@00 $Ref)
(declare-const y@60@00 $Ref)
(push) ; 1
(declare-const $t@61@00 $Snap)
(assert (= $t@61@00 ($Snap.combine ($Snap.first $t@61@00) ($Snap.second $t@61@00))))
(assert (not (= x@59@00 $Ref.null)))
(assert (=
  ($Snap.second $t@61@00)
  ($Snap.combine
    ($Snap.first ($Snap.second $t@61@00))
    ($Snap.second ($Snap.second $t@61@00)))))
(push) ; 2
(set-option :timeout 10)
(assert (not (= x@59@00 y@60@00)))
(check-sat)
; unknown
(pop) ; 2
; 0.00s
; (get-info :all-statistics)
(assert (not (= y@60@00 $Ref.null)))
(assert (= ($Snap.second ($Snap.second $t@61@00)) $Snap.unit))
; [eval] (asserting (x != y) in true)
; [eval] x != y
(set-option :timeout 0)
(push) ; 2
(assert (not (not (= x@59@00 y@60@00))))
(check-sat)
; unknown
(pop) ; 2
; 0.00s
; (get-info :all-statistics)
; [state consolidation]
; State saturation: before repetition
(set-option :timeout 10)
(check-sat)
; unknown
(set-option :timeout 0)
(push) ; 2
(set-option :timeout 10)
(assert (not (= y@60@00 x@59@00)))
(check-sat)
; unknown
(pop) ; 2
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 2
(set-option :timeout 10)
(assert (not (not
  (=
    ($SortWrappers.$SnapToInt ($Snap.first $t@61@00))
    ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second $t@61@00)))))))
(check-sat)
; unknown
(pop) ; 2
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 2
(set-option :timeout 10)
(assert (not (not
  (=
    ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second $t@61@00)))
    ($SortWrappers.$SnapToInt ($Snap.first $t@61@00))))))
(check-sat)
; unknown
(pop) ; 2
; 0.00s
; (get-info :all-statistics)
(assert (and (not (= x@59@00 y@60@00)) (not (= y@60@00 x@59@00))))
; [eval] x != y
(pop) ; 1
