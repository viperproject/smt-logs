(get-info :version)
; (:version "4.12.1")
; Started: 2024-12-26 19:37:52
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
; ------------------------------------------------------------
; Begin function- and predicate-related preamble
; Declaring symbols related to program functions (from verification)
(declare-fun $k@37@00 () $Perm)
(declare-fun $k@39@00 () $Perm)
(declare-fun inv@40@00 ($Snap $Ref $Ref) $Ref)
(declare-fun img@41@00 ($Snap $Ref $Ref) Bool)
(declare-fun inv@43@00 ($Snap $Ref $Ref) $Ref)
(declare-fun img@44@00 ($Snap $Ref $Ref) Bool)
(declare-fun $k@46@00 () $Perm)
(declare-fun inv@47@00 ($Snap $Ref $Ref) $Ref)
(declare-fun img@48@00 ($Snap $Ref $Ref) Bool)
(declare-fun inv@50@00 ($Snap $Ref $Ref) $Ref)
(declare-fun img@51@00 ($Snap $Ref $Ref) Bool)
(declare-fun inv@53@00 ($Snap $Ref $Ref) $Ref)
(declare-fun img@54@00 ($Snap $Ref $Ref) Bool)
(declare-fun sm@55@00 ($Snap $Ref) $FVF<f>)
(declare-fun $k@56@00 () $Perm)
(assert (forall ((s@$ $Snap) (x@0@00 $Ref)) (!
  (= (foo%limited s@$ x@0@00) (foo s@$ x@0@00))
  :pattern ((foo s@$ x@0@00))
  :qid |quant-u-22232|)))
(assert (forall ((s@$ $Snap) (x@0@00 $Ref)) (!
  (foo%stateless x@0@00)
  :pattern ((foo%limited s@$ x@0@00))
  :qid |quant-u-22233|)))
(assert (forall ((s@$ $Snap) (x@2@00 $Ref)) (!
  (= (bar4%limited s@$ x@2@00) (bar4 s@$ x@2@00))
  :pattern ((bar4 s@$ x@2@00))
  :qid |quant-u-22234|)))
(assert (forall ((s@$ $Snap) (x@2@00 $Ref)) (!
  (bar4%stateless x@2@00)
  :pattern ((bar4%limited s@$ x@2@00))
  :qid |quant-u-22235|)))
(assert (forall ((s@$ $Snap) (x@6@00 $Ref) (y@7@00 $Ref)) (!
  (= (nonAliasF%limited s@$ x@6@00 y@7@00) (nonAliasF s@$ x@6@00 y@7@00))
  :pattern ((nonAliasF s@$ x@6@00 y@7@00))
  :qid |quant-u-22238|)))
(assert (forall ((s@$ $Snap) (x@6@00 $Ref) (y@7@00 $Ref)) (!
  (nonAliasF%stateless x@6@00 y@7@00)
  :pattern ((nonAliasF%limited s@$ x@6@00 y@7@00))
  :qid |quant-u-22239|)))
(assert (forall ((s@$ $Snap) (x@9@00 $Ref) (b@10@00 Bool)) (!
  (= (foo2w%limited s@$ x@9@00 b@10@00) (foo2w s@$ x@9@00 b@10@00))
  :pattern ((foo2w s@$ x@9@00 b@10@00))
  :qid |quant-u-22240|)))
(assert (forall ((s@$ $Snap) (x@9@00 $Ref) (b@10@00 Bool)) (!
  (foo2w%stateless x@9@00 b@10@00)
  :pattern ((foo2w%limited s@$ x@9@00 b@10@00))
  :qid |quant-u-22241|)))
(assert (forall ((s@$ $Snap) (x@12@00 $Ref)) (!
  (= (bar3%limited s@$ x@12@00) (bar3 s@$ x@12@00))
  :pattern ((bar3 s@$ x@12@00))
  :qid |quant-u-22242|)))
(assert (forall ((s@$ $Snap) (x@12@00 $Ref)) (!
  (bar3%stateless x@12@00)
  :pattern ((bar3%limited s@$ x@12@00))
  :qid |quant-u-22243|)))
(assert (forall ((s@$ $Snap) (x@14@00 $Ref)) (!
  (= (foo5pw%limited s@$ x@14@00) (foo5pw s@$ x@14@00))
  :pattern ((foo5pw s@$ x@14@00))
  :qid |quant-u-22244|)))
(assert (forall ((s@$ $Snap) (x@14@00 $Ref)) (!
  (foo5pw%stateless x@14@00)
  :pattern ((foo5pw%limited s@$ x@14@00))
  :qid |quant-u-22245|)))
(assert (forall ((s@$ $Snap) (x@16@00 $Ref)) (!
  (= (foo5p%limited s@$ x@16@00) (foo5p s@$ x@16@00))
  :pattern ((foo5p s@$ x@16@00))
  :qid |quant-u-22246|)))
(assert (forall ((s@$ $Snap) (x@16@00 $Ref)) (!
  (foo5p%stateless x@16@00)
  :pattern ((foo5p%limited s@$ x@16@00))
  :qid |quant-u-22247|)))
(assert (forall ((s@$ $Snap) (x@18@00 $Ref)) (!
  (= (foo5w%limited s@$ x@18@00) (foo5w s@$ x@18@00))
  :pattern ((foo5w s@$ x@18@00))
  :qid |quant-u-22248|)))
(assert (forall ((s@$ $Snap) (x@18@00 $Ref)) (!
  (foo5w%stateless x@18@00)
  :pattern ((foo5w%limited s@$ x@18@00))
  :qid |quant-u-22249|)))
(assert (forall ((s@$ $Snap) (x@20@00 $Ref)) (!
  (= (foo5%limited s@$ x@20@00) (foo5 s@$ x@20@00))
  :pattern ((foo5 s@$ x@20@00))
  :qid |quant-u-22250|)))
(assert (forall ((s@$ $Snap) (x@20@00 $Ref)) (!
  (foo5%stateless x@20@00)
  :pattern ((foo5%limited s@$ x@20@00))
  :qid |quant-u-22251|)))
(assert (forall ((s@$ $Snap) (x@22@00 $Ref)) (!
  (= (foo6%limited s@$ x@22@00) (foo6 s@$ x@22@00))
  :pattern ((foo6 s@$ x@22@00))
  :qid |quant-u-22252|)))
(assert (forall ((s@$ $Snap) (x@22@00 $Ref)) (!
  (foo6%stateless x@22@00)
  :pattern ((foo6%limited s@$ x@22@00))
  :qid |quant-u-22253|)))
(assert (forall ((s@$ $Snap) (x@24@00 $Ref)) (!
  (= (bar2%limited s@$ x@24@00) (bar2 s@$ x@24@00))
  :pattern ((bar2 s@$ x@24@00))
  :qid |quant-u-22254|)))
(assert (forall ((s@$ $Snap) (x@24@00 $Ref)) (!
  (bar2%stateless x@24@00)
  :pattern ((bar2%limited s@$ x@24@00))
  :qid |quant-u-22255|)))
(assert (forall ((s@$ $Snap) (x@26@00 $Ref)) (!
  (= (foo4%limited s@$ x@26@00) (foo4 s@$ x@26@00))
  :pattern ((foo4 s@$ x@26@00))
  :qid |quant-u-22256|)))
(assert (forall ((s@$ $Snap) (x@26@00 $Ref)) (!
  (foo4%stateless x@26@00)
  :pattern ((foo4%limited s@$ x@26@00))
  :qid |quant-u-22257|)))
(assert (forall ((s@$ $Snap) (x@28@00 $Ref)) (!
  (= (foo3%limited s@$ x@28@00) (foo3 s@$ x@28@00))
  :pattern ((foo3 s@$ x@28@00))
  :qid |quant-u-22258|)))
(assert (forall ((s@$ $Snap) (x@28@00 $Ref)) (!
  (foo3%stateless x@28@00)
  :pattern ((foo3%limited s@$ x@28@00))
  :qid |quant-u-22259|)))
(assert (forall ((s@$ $Snap) (x@30@00 $Ref)) (!
  (= (foop%limited s@$ x@30@00) (foop s@$ x@30@00))
  :pattern ((foop s@$ x@30@00))
  :qid |quant-u-22260|)))
(assert (forall ((s@$ $Snap) (x@30@00 $Ref)) (!
  (foop%stateless x@30@00)
  :pattern ((foop%limited s@$ x@30@00))
  :qid |quant-u-22261|)))
(assert (forall ((s@$ $Snap) (x@32@00 $Ref)) (!
  (= (bar%limited s@$ x@32@00) (bar s@$ x@32@00))
  :pattern ((bar s@$ x@32@00))
  :qid |quant-u-22262|)))
(assert (forall ((s@$ $Snap) (x@32@00 $Ref)) (!
  (bar%stateless x@32@00)
  :pattern ((bar%limited s@$ x@32@00))
  :qid |quant-u-22263|)))
(assert (forall ((s@$ $Snap) (x@32@00 $Ref)) (!
  (=> (bar%precondition s@$ x@32@00) (= (bar s@$ x@32@00) (foo s@$ x@32@00)))
  :pattern ((bar s@$ x@32@00))
  :pattern ((bar%stateless x@32@00) (P%trigger s@$ x@32@00))
  :qid |quant-u-22276|)))
(assert (forall ((s@$ $Snap) (x@32@00 $Ref)) (!
  (=> (bar%precondition s@$ x@32@00) (foo%precondition s@$ x@32@00))
  :pattern ((bar s@$ x@32@00))
  :qid |quant-u-22277|)))
(assert (forall ((s@$ $Snap) (x@34@00 $Ref) (b@35@00 Bool)) (!
  (= (foo2%limited s@$ x@34@00 b@35@00) (foo2 s@$ x@34@00 b@35@00))
  :pattern ((foo2 s@$ x@34@00 b@35@00))
  :qid |quant-u-22264|)))
(assert (forall ((s@$ $Snap) (x@34@00 $Ref) (b@35@00 Bool)) (!
  (foo2%stateless x@34@00 b@35@00)
  :pattern ((foo2%limited s@$ x@34@00 b@35@00))
  :qid |quant-u-22265|)))
; End function- and predicate-related preamble
; ------------------------------------------------------------
; ---------- nonAliasM ----------
(declare-const x@0@01 $Ref)
(declare-const y@1@01 $Ref)
(declare-const x@2@01 $Ref)
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
; inhale acc(x.f, write) && acc(y.f, write)
(declare-const $t@4@01 $Snap)
(assert (= $t@4@01 ($Snap.combine ($Snap.first $t@4@01) ($Snap.second $t@4@01))))
(assert (not (= x@2@01 $Ref.null)))
(push) ; 3
(set-option :timeout 10)
(assert (not (= x@2@01 y@3@01)))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(assert (not (= y@3@01 $Ref.null)))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; assert x != y
; [eval] x != y
(set-option :timeout 0)
(push) ; 3
(assert (not (not (= x@2@01 y@3@01))))
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
(assert (not (= y@3@01 x@2@01)))
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
    ($SortWrappers.$SnapToInt ($Snap.first $t@4@01))
    ($SortWrappers.$SnapToInt ($Snap.second $t@4@01))))))
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
    ($SortWrappers.$SnapToInt ($Snap.second $t@4@01))
    ($SortWrappers.$SnapToInt ($Snap.first $t@4@01))))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(assert (and (not (= x@2@01 y@3@01)) (not (= y@3@01 x@2@01))))
; [eval] x != y
(pop) ; 2
(pop) ; 1
; ---------- test0 ----------
(declare-const x@5@01 $Ref)
(declare-const x@6@01 $Ref)
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
; var tmp: Int
(declare-const tmp@7@01 Int)
; [exec]
; inhale acc(x.f, 1 / 2)
(declare-const $t@8@01 Int)
(assert (not (= x@6@01 $Ref.null)))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; tmp := foo(x)
; [eval] foo(x)
(set-option :timeout 0)
(push) ; 3
(assert (foo%precondition ($SortWrappers.IntTo$Snap $t@8@01) x@6@01))
(pop) ; 3
; Joined path conditions
(assert (foo%precondition ($SortWrappers.IntTo$Snap $t@8@01) x@6@01))
(declare-const tmp@9@01 Int)
(assert (= tmp@9@01 (foo ($SortWrappers.IntTo$Snap $t@8@01) x@6@01)))
(pop) ; 2
(pop) ; 1
; ---------- test0mce ----------
(declare-const x@10@01 $Ref)
(declare-const x@11@01 $Ref)
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
; var tmp: Int
(declare-const tmp@12@01 Int)
; [exec]
; inhale acc(x.f, 1 / 2)
(declare-const $t@13@01 Int)
(assert (not (= x@11@01 $Ref.null)))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; tmp := foo(x)
; [eval] foo(x)
(set-option :timeout 0)
(push) ; 3
(assert (foo%precondition ($SortWrappers.IntTo$Snap $t@13@01) x@11@01))
(pop) ; 3
; Joined path conditions
(assert (foo%precondition ($SortWrappers.IntTo$Snap $t@13@01) x@11@01))
(declare-const tmp@14@01 Int)
(assert (= tmp@14@01 (foo ($SortWrappers.IntTo$Snap $t@13@01) x@11@01)))
(pop) ; 2
(pop) ; 1
; ---------- test0qp ----------
(declare-const x@15@01 $Ref)
(declare-const x@16@01 $Ref)
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
; var tmp: Int
(declare-const tmp@17@01 Int)
; [exec]
; inhale (forall y: Ref ::y == x ==> acc(y.f, 1 / 2))
(declare-const y@18@01 $Ref)
(push) ; 3
; [eval] y == x
(assert (= y@18@01 x@16@01))
(pop) ; 3
(declare-const $t@19@01 $FVF<f>)
(declare-fun inv@20@01 ($Ref) $Ref)
(declare-fun img@21@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
; Check receiver injectivity
(push) ; 3
(assert (not (forall ((y1@18@01 $Ref) (y2@18@01 $Ref)) (!
  (=>
    (and (= y1@18@01 x@16@01) (= y2@18@01 x@16@01) (= y1@18@01 y2@18@01))
    (= y1@18@01 y2@18@01))
  
  :qid |f-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((y@18@01 $Ref)) (!
  (=>
    (= y@18@01 x@16@01)
    (and (= (inv@20@01 y@18@01) y@18@01) (img@21@01 y@18@01)))
  :pattern ((inv@20@01 y@18@01))
  :pattern ((img@21@01 y@18@01))
  :qid |quant-u-22279|)))
(assert (forall ((r $Ref)) (!
  (=> (and (img@21@01 r) (= (inv@20@01 r) x@16@01)) (= (inv@20@01 r) r))
  :pattern ((inv@20@01 r))
  :qid |f-fctOfInv|)))
; Permissions are non-negative
; Field permissions are at most one
; Permission implies non-null receiver
(assert (forall ((y@18@01 $Ref)) (!
  (=> (= y@18@01 x@16@01) (not (= y@18@01 $Ref.null)))
  :pattern ((inv@20@01 y@18@01))
  :pattern ((img@21@01 y@18@01))
  :qid |f-permImpliesNonNull|)))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; tmp := foo(x)
; [eval] foo(x)
(set-option :timeout 0)
(push) ; 3
(push) ; 4
(assert (not (forall ((r $Ref)) (!
  (=>
    (= r x@16@01)
    (>
      (ite
        (and (img@21@01 r) (= (inv@20@01 r) x@16@01))
        (/ (to_real 1) (to_real 2))
        $Perm.No)
      $Perm.No))
  
  :qid |quant-u-22280|))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(declare-const sm@22@01 $FVF<f>)
; Definitional axioms for snapshot map domain (instantiated)
; Definitional axioms for snapshot map values (instantiated)
(assert (=>
  (and (img@21@01 x@16@01) (= (inv@20@01 x@16@01) x@16@01))
  (=
    ($FVF.lookup_f (as sm@22@01  $FVF<f>) x@16@01)
    ($FVF.lookup_f $t@19@01 x@16@01))))
(assert (foo%precondition ($SortWrappers.IntTo$Snap ($FVF.lookup_f (as sm@22@01  $FVF<f>) x@16@01)) x@16@01))
(pop) ; 3
; Joined path conditions
(assert (and
  (=>
    (and (img@21@01 x@16@01) (= (inv@20@01 x@16@01) x@16@01))
    (=
      ($FVF.lookup_f (as sm@22@01  $FVF<f>) x@16@01)
      ($FVF.lookup_f $t@19@01 x@16@01)))
  (foo%precondition ($SortWrappers.IntTo$Snap ($FVF.lookup_f (as sm@22@01  $FVF<f>) x@16@01)) x@16@01)))
(declare-const tmp@23@01 Int)
(assert (=
  tmp@23@01
  (foo ($SortWrappers.IntTo$Snap ($FVF.lookup_f (as sm@22@01  $FVF<f>) x@16@01)) x@16@01)))
(pop) ; 2
(pop) ; 1
; ---------- test0p ----------
(declare-const x@24@01 $Ref)
(declare-const x@25@01 $Ref)
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
; var tmp: Int
(declare-const tmp@26@01 Int)
; [exec]
; inhale acc(P(x), 1 / 2)
(declare-const $t@27@01 Int)
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; tmp := foop(x)
; [eval] foop(x)
(set-option :timeout 0)
(push) ; 3
(assert (foop%precondition ($SortWrappers.IntTo$Snap $t@27@01) x@25@01))
(pop) ; 3
; Joined path conditions
(assert (foop%precondition ($SortWrappers.IntTo$Snap $t@27@01) x@25@01))
(declare-const tmp@28@01 Int)
(assert (= tmp@28@01 (foop ($SortWrappers.IntTo$Snap $t@27@01) x@25@01)))
(pop) ; 2
(pop) ; 1
; ---------- test0pmce ----------
(declare-const x@29@01 $Ref)
(declare-const x@30@01 $Ref)
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
; var tmp: Int
(declare-const tmp@31@01 Int)
; [exec]
; inhale acc(P(x), 1 / 2)
(declare-const $t@32@01 Int)
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; tmp := foop(x)
; [eval] foop(x)
(set-option :timeout 0)
(push) ; 3
(assert (foop%precondition ($SortWrappers.IntTo$Snap $t@32@01) x@30@01))
(pop) ; 3
; Joined path conditions
(assert (foop%precondition ($SortWrappers.IntTo$Snap $t@32@01) x@30@01))
(declare-const tmp@33@01 Int)
(assert (= tmp@33@01 (foop ($SortWrappers.IntTo$Snap $t@32@01) x@30@01)))
(pop) ; 2
(pop) ; 1
; ---------- test0pqp ----------
(declare-const x@34@01 $Ref)
(declare-const x@35@01 $Ref)
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
; var tmp: Int
(declare-const tmp@36@01 Int)
; [exec]
; inhale (forall y: Ref ::y == x ==> acc(P(y), 1 / 2))
(declare-const y@37@01 $Ref)
(push) ; 3
; [eval] y == x
(assert (= y@37@01 x@35@01))
(pop) ; 3
(declare-const $t@38@01 $PSF<P>)
(declare-fun inv@39@01 ($Ref) $Ref)
(declare-fun img@40@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
; Check receiver injectivity
(push) ; 3
(assert (not (forall ((y1@37@01 $Ref) (y2@37@01 $Ref)) (!
  (=>
    (and (= y1@37@01 x@35@01) (= y2@37@01 x@35@01) (= y1@37@01 y2@37@01))
    (= y1@37@01 y2@37@01))
  
  :qid |P-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((y@37@01 $Ref)) (!
  (=>
    (= y@37@01 x@35@01)
    (and (= (inv@39@01 y@37@01) y@37@01) (img@40@01 y@37@01)))
  :pattern ((inv@39@01 y@37@01))
  :pattern ((img@40@01 y@37@01))
  :qid |quant-u-22282|)))
(assert (forall ((x $Ref)) (!
  (=> (and (img@40@01 x) (= (inv@39@01 x) x@35@01)) (= (inv@39@01 x) x))
  :pattern ((inv@39@01 x))
  :qid |P-fctOfInv|)))
; Permissions are non-negative
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; tmp := foop(x)
; [eval] foop(x)
(set-option :timeout 0)
(push) ; 3
(push) ; 4
(assert (not (forall ((x $Ref)) (!
  (=>
    (= x x@35@01)
    (>
      (ite
        (and (img@40@01 x) (= (inv@39@01 x) x@35@01))
        (/ (to_real 1) (to_real 2))
        $Perm.No)
      $Perm.No))
  
  :qid |quant-u-22283|))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(declare-const sm@41@01 $PSF<P>)
(declare-const s@42@01 $Snap)
; Definitional axioms for snapshot map domain (instantiated)
; Definitional axioms for snapshot map values (instantiated)
(assert (=>
  (and (img@40@01 x@35@01) (= (inv@39@01 x@35@01) x@35@01))
  (and
    (not (= ($SortWrappers.$RefTo$Snap x@35@01) $Snap.unit))
    (=
      ($PSF.lookup_P (as sm@41@01  $PSF<P>) ($SortWrappers.$RefTo$Snap x@35@01))
      ($PSF.lookup_P $t@38@01 ($SortWrappers.$RefTo$Snap x@35@01))))))
(assert (foop%precondition ($SortWrappers.IntTo$Snap ($PSF.lookup_P (as sm@41@01  $PSF<P>) ($SortWrappers.$RefTo$Snap x@35@01))) x@35@01))
(pop) ; 3
; Joined path conditions
(assert (and
  (=>
    (and (img@40@01 x@35@01) (= (inv@39@01 x@35@01) x@35@01))
    (and
      (not (= ($SortWrappers.$RefTo$Snap x@35@01) $Snap.unit))
      (=
        ($PSF.lookup_P (as sm@41@01  $PSF<P>) ($SortWrappers.$RefTo$Snap x@35@01))
        ($PSF.lookup_P $t@38@01 ($SortWrappers.$RefTo$Snap x@35@01)))))
  (foop%precondition ($SortWrappers.IntTo$Snap ($PSF.lookup_P (as sm@41@01  $PSF<P>) ($SortWrappers.$RefTo$Snap x@35@01))) x@35@01)))
(declare-const tmp@43@01 Int)
(assert (=
  tmp@43@01
  (foop ($SortWrappers.IntTo$Snap ($PSF.lookup_P (as sm@41@01  $PSF<P>) ($SortWrappers.$RefTo$Snap x@35@01))) x@35@01)))
(pop) ; 2
(pop) ; 1
; ---------- test1 ----------
(declare-const x@44@01 $Ref)
(declare-const x@45@01 $Ref)
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
; var tmp: Int
(declare-const tmp@46@01 Int)
; [exec]
; inhale acc(x.f, none)
(declare-const $t@47@01 Int)
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; tmp := foo(x)
; [eval] foo(x)
(set-option :timeout 0)
(push) ; 3
(push) ; 4
(assert (not false))
(check-sat)
; unknown
(pop) ; 4
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
(push) ; 4
(assert (not false))
(check-sat)
; unknown
(pop) ; 4
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
(push) ; 4
(assert (not false))
(check-sat)
; unknown
(pop) ; 4
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
(push) ; 4
(assert (not false))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(check-sat)
; unknown
(pop) ; 3
(pop) ; 2
(pop) ; 1
; ---------- test1mce ----------
(declare-const x@48@01 $Ref)
(declare-const x@49@01 $Ref)
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
; var tmp: Int
(declare-const tmp@50@01 Int)
; [exec]
; inhale acc(x.f, none)
(declare-const $t@51@01 Int)
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; tmp := foo(x)
; [eval] foo(x)
(set-option :timeout 0)
(push) ; 3
(push) ; 4
(assert (not false))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; [state consolidation]
; State saturation: before repetition
(set-option :timeout 10)
(check-sat)
; unknown
(set-option :timeout 0)
(push) ; 4
(assert (not false))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; [state consolidation]
; State saturation: before repetition
(set-option :timeout 10)
(check-sat)
; unknown
(set-option :timeout 0)
(push) ; 4
(assert (not false))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; [state consolidation]
; State saturation: before repetition
(set-option :timeout 10)
(check-sat)
; unknown
(set-option :timeout 0)
(push) ; 4
(assert (not false))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(pop) ; 3
(pop) ; 2
(pop) ; 1
; ---------- test1qp ----------
(declare-const x@52@01 $Ref)
(declare-const x@53@01 $Ref)
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
; var tmp: Int
(declare-const tmp@54@01 Int)
; [exec]
; inhale (forall y: Ref ::y == x ==> acc(y.f, none))
(declare-const y@55@01 $Ref)
(push) ; 3
; [eval] y == x
(assert (= y@55@01 x@53@01))
(pop) ; 3
(declare-const $t@56@01 $FVF<f>)
(declare-fun inv@57@01 ($Ref) $Ref)
(declare-fun img@58@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
; Check receiver injectivity
; Definitional axioms for inverse functions
; Permissions are non-negative
; Field permissions are at most one
; Permission implies non-null receiver
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; tmp := foo(x)
; [eval] foo(x)
(set-option :timeout 0)
(push) ; 3
(push) ; 4
(assert (not (forall ((r $Ref)) (!
  (=> (= r x@53@01) false)
  
  :qid |quant-u-22286|))))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; [state consolidation]
; State saturation: before repetition
(set-option :timeout 10)
(check-sat)
; unknown
(declare-const sm@59@01 $FVF<f>)
; Definitional axioms for snapshot map domain
; Definitional axioms for snapshot map values
(declare-const pm@60@01 $FPM)
(assert (forall ((r $Ref)) (!
  (= ($FVF.perm_f (as pm@60@01  $FPM) r) $Perm.No)
  :pattern (($FVF.perm_f (as pm@60@01  $FPM) r))
  :qid |qp.resPrmSumDef3|)))
; Assume upper permission bound for field f
(assert (forall ((r $Ref)) (!
  (<= ($FVF.perm_f (as pm@60@01  $FPM) r) $Perm.Write)
  :pattern ((inv@57@01 r))
  :qid |qp-fld-prm-bnd|)))
(set-option :timeout 0)
(push) ; 4
(assert (not (forall ((r $Ref)) (!
  (=> (= r x@53@01) false)
  
  :qid |quant-u-22287|))))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(pop) ; 3
(pop) ; 2
(pop) ; 1
; ---------- test1p ----------
(declare-const x@61@01 $Ref)
(declare-const x@62@01 $Ref)
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
; var tmp: Int
(declare-const tmp@63@01 Int)
; [exec]
; inhale acc(P(x), none)
(declare-const $t@64@01 Int)
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; tmp := foop(x)
; [eval] foop(x)
(set-option :timeout 0)
(push) ; 3
(push) ; 4
(assert (not false))
(check-sat)
; unknown
(pop) ; 4
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
(push) ; 4
(assert (not false))
(check-sat)
; unknown
(pop) ; 4
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
(push) ; 4
(assert (not false))
(check-sat)
; unknown
(pop) ; 4
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
(push) ; 4
(assert (not false))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(check-sat)
; unknown
(pop) ; 3
(pop) ; 2
(pop) ; 1
; ---------- test1pmce ----------
(declare-const x@65@01 $Ref)
(declare-const x@66@01 $Ref)
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
; var tmp: Int
(declare-const tmp@67@01 Int)
; [exec]
; inhale acc(P(x), none)
(declare-const $t@68@01 Int)
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; tmp := foop(x)
; [eval] foop(x)
(set-option :timeout 0)
(push) ; 3
(push) ; 4
(assert (not false))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; [state consolidation]
; State saturation: before repetition
(set-option :timeout 10)
(check-sat)
; unknown
(set-option :timeout 0)
(push) ; 4
(assert (not false))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; [state consolidation]
; State saturation: before repetition
(set-option :timeout 10)
(check-sat)
; unknown
(set-option :timeout 0)
(push) ; 4
(assert (not false))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; [state consolidation]
; State saturation: before repetition
(set-option :timeout 10)
(check-sat)
; unknown
(set-option :timeout 0)
(push) ; 4
(assert (not false))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(pop) ; 3
(pop) ; 2
(pop) ; 1
; ---------- test1pqp ----------
(declare-const x@69@01 $Ref)
(declare-const x@70@01 $Ref)
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
; var tmp: Int
(declare-const tmp@71@01 Int)
; [exec]
; inhale (forall y: Ref ::y == x ==> acc(P(y), none))
(declare-const y@72@01 $Ref)
(push) ; 3
; [eval] y == x
(assert (= y@72@01 x@70@01))
(pop) ; 3
(declare-const $t@73@01 $PSF<P>)
(declare-fun inv@74@01 ($Ref) $Ref)
(declare-fun img@75@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
; Check receiver injectivity
; Definitional axioms for inverse functions
; Permissions are non-negative
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; tmp := foop(x)
; [eval] foop(x)
(set-option :timeout 0)
(push) ; 3
(push) ; 4
(assert (not (forall ((x $Ref)) (!
  (=> (= x x@70@01) false)
  
  :qid |quant-u-22290|))))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; [state consolidation]
; State saturation: before repetition
(set-option :timeout 10)
(check-sat)
; unknown
(set-option :timeout 0)
(push) ; 4
(assert (not (forall ((x $Ref)) (!
  (=> (= x x@70@01) false)
  
  :qid |quant-u-22291|))))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(pop) ; 3
(pop) ; 2
(pop) ; 1
; ---------- test2 ----------
(declare-const x@76@01 $Ref)
(declare-const b@77@01 Bool)
(declare-const x@78@01 $Ref)
(declare-const b@79@01 Bool)
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
; var tmp: Int
(declare-const tmp@80@01 Int)
; [exec]
; inhale acc(x.f, (b ? 1 / 2 : none))
; [eval] (b ? 1 / 2 : none)
(push) ; 3
(push) ; 4
(set-option :timeout 10)
(assert (not (not b@79@01)))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not b@79@01))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; [then-branch: 0 | b@79@01 | live]
; [else-branch: 0 | !(b@79@01) | live]
(set-option :timeout 0)
(push) ; 4
; [then-branch: 0 | b@79@01]
(assert b@79@01)
(pop) ; 4
(push) ; 4
; [else-branch: 0 | !(b@79@01)]
(assert (not b@79@01))
(pop) ; 4
(pop) ; 3
; Joined path conditions
; Joined path conditions
(assert (or (not b@79@01) b@79@01))
(push) ; 3
(assert (not (or (= (ite b@79@01 (/ (to_real 1) (to_real 2)) $Perm.No) $Perm.No) b@79@01)))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(declare-const $t@81@01 Int)
(assert (<= $Perm.No (ite b@79@01 (/ (to_real 1) (to_real 2)) $Perm.No)))
(assert (<= (ite b@79@01 (/ (to_real 1) (to_real 2)) $Perm.No) $Perm.Write))
(assert (=> b@79@01 (not (= x@78@01 $Ref.null))))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; tmp := foo2(x, b)
; [eval] foo2(x, b)
(set-option :timeout 0)
(push) ; 3
; [eval] (b ? write : none)
(push) ; 4
(push) ; 5
(set-option :timeout 10)
(assert (not (not b@79@01)))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 5
(set-option :timeout 10)
(assert (not b@79@01))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
; [then-branch: 1 | b@79@01 | live]
; [else-branch: 1 | !(b@79@01) | live]
(set-option :timeout 0)
(push) ; 5
; [then-branch: 1 | b@79@01]
(assert b@79@01)
(pop) ; 5
(push) ; 5
; [else-branch: 1 | !(b@79@01)]
(assert (not b@79@01))
(pop) ; 5
(pop) ; 4
; Joined path conditions
; Joined path conditions
(push) ; 4
(assert (not (or (= (ite b@79@01 $Perm.Write $Perm.No) $Perm.No) b@79@01)))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(push) ; 4
(set-option :timeout 10)
(assert (not b@79@01))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(assert (foo2%precondition (ite b@79@01 ($SortWrappers.IntTo$Snap $t@81@01) $Snap.unit) x@78@01 b@79@01))
(pop) ; 3
; Joined path conditions
(assert (foo2%precondition (ite b@79@01 ($SortWrappers.IntTo$Snap $t@81@01) $Snap.unit) x@78@01 b@79@01))
(declare-const tmp@82@01 Int)
(assert (=
  tmp@82@01
  (foo2 (ite b@79@01 ($SortWrappers.IntTo$Snap $t@81@01) $Snap.unit) x@78@01 b@79@01)))
(pop) ; 2
(pop) ; 1
; ---------- test2mce ----------
(declare-const x@83@01 $Ref)
(declare-const b@84@01 Bool)
(declare-const x@85@01 $Ref)
(declare-const b@86@01 Bool)
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
; var tmp: Int
(declare-const tmp@87@01 Int)
; [exec]
; inhale acc(x.f, (b ? 1 / 2 : none))
; [eval] (b ? 1 / 2 : none)
(push) ; 3
(push) ; 4
(set-option :timeout 10)
(assert (not (not b@86@01)))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not b@86@01))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; [then-branch: 2 | b@86@01 | live]
; [else-branch: 2 | !(b@86@01) | live]
(set-option :timeout 0)
(push) ; 4
; [then-branch: 2 | b@86@01]
(assert b@86@01)
(pop) ; 4
(push) ; 4
; [else-branch: 2 | !(b@86@01)]
(assert (not b@86@01))
(pop) ; 4
(pop) ; 3
; Joined path conditions
; Joined path conditions
(assert (or (not b@86@01) b@86@01))
(push) ; 3
(assert (not (or (= (ite b@86@01 (/ (to_real 1) (to_real 2)) $Perm.No) $Perm.No) b@86@01)))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(declare-const $t@88@01 Int)
(assert (<= $Perm.No (ite b@86@01 (/ (to_real 1) (to_real 2)) $Perm.No)))
(assert (<= (ite b@86@01 (/ (to_real 1) (to_real 2)) $Perm.No) $Perm.Write))
(assert (=> b@86@01 (not (= x@85@01 $Ref.null))))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; tmp := foo2(x, b)
; [eval] foo2(x, b)
(set-option :timeout 0)
(push) ; 3
; [eval] (b ? write : none)
(push) ; 4
(push) ; 5
(set-option :timeout 10)
(assert (not (not b@86@01)))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 5
(set-option :timeout 10)
(assert (not b@86@01))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
; [then-branch: 3 | b@86@01 | live]
; [else-branch: 3 | !(b@86@01) | live]
(set-option :timeout 0)
(push) ; 5
; [then-branch: 3 | b@86@01]
(assert b@86@01)
(pop) ; 5
(push) ; 5
; [else-branch: 3 | !(b@86@01)]
(assert (not b@86@01))
(pop) ; 5
(pop) ; 4
; Joined path conditions
; Joined path conditions
(push) ; 4
(assert (not (or (= (ite b@86@01 $Perm.Write $Perm.No) $Perm.No) b@86@01)))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(assert (foo2%precondition ($SortWrappers.IntTo$Snap $t@88@01) x@85@01 b@86@01))
(pop) ; 3
; Joined path conditions
(assert (foo2%precondition ($SortWrappers.IntTo$Snap $t@88@01) x@85@01 b@86@01))
(declare-const tmp@89@01 Int)
(assert (= tmp@89@01 (foo2 ($SortWrappers.IntTo$Snap $t@88@01) x@85@01 b@86@01)))
(pop) ; 2
(pop) ; 1
; ---------- test2qp ----------
(declare-const x@90@01 $Ref)
(declare-const b@91@01 Bool)
(declare-const x@92@01 $Ref)
(declare-const b@93@01 Bool)
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
; var tmp: Int
(declare-const tmp@94@01 Int)
; [exec]
; inhale (forall y: Ref ::y == x ==> acc(y.f, (b ? 1 / 2 : none)))
(declare-const y@95@01 $Ref)
(push) ; 3
; [eval] y == x
(assert (= y@95@01 x@92@01))
; [eval] (b ? 1 / 2 : none)
(push) ; 4
(push) ; 5
(set-option :timeout 10)
(assert (not (not b@93@01)))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 5
(set-option :timeout 10)
(assert (not b@93@01))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
; [then-branch: 4 | b@93@01 | live]
; [else-branch: 4 | !(b@93@01) | live]
(set-option :timeout 0)
(push) ; 5
; [then-branch: 4 | b@93@01]
(assert b@93@01)
(pop) ; 5
(push) ; 5
; [else-branch: 4 | !(b@93@01)]
(assert (not b@93@01))
(pop) ; 5
(pop) ; 4
; Joined path conditions
; Joined path conditions
(assert (or (not b@93@01) b@93@01))
(pop) ; 3
(declare-const $t@96@01 $FVF<f>)
(declare-fun inv@97@01 ($Ref) $Ref)
(declare-fun img@98@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
(assert (forall ((y@95@01 $Ref)) (!
  (=> (= y@95@01 x@92@01) (or (not b@93@01) b@93@01))
  :pattern ((inv@97@01 y@95@01))
  :pattern ((img@98@01 y@95@01))
  :qid |f-aux|)))
(push) ; 3
(assert (not (forall ((y@95@01 $Ref)) (!
  (=>
    (= y@95@01 x@92@01)
    (or (= (ite b@93@01 (/ (to_real 1) (to_real 2)) $Perm.No) $Perm.No) b@93@01))
  
  :qid |quant-u-22292|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Check receiver injectivity
(push) ; 3
(assert (not (forall ((y1@95@01 $Ref) (y2@95@01 $Ref)) (!
  (=>
    (and
      (and (= y1@95@01 x@92@01) b@93@01)
      (and (= y2@95@01 x@92@01) b@93@01)
      (= y1@95@01 y2@95@01))
    (= y1@95@01 y2@95@01))
  
  :qid |f-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((y@95@01 $Ref)) (!
  (=>
    (and (= y@95@01 x@92@01) b@93@01)
    (and (= (inv@97@01 y@95@01) y@95@01) (img@98@01 y@95@01)))
  :pattern ((inv@97@01 y@95@01))
  :pattern ((img@98@01 y@95@01))
  :qid |quant-u-22293|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@98@01 r) (and (= (inv@97@01 r) x@92@01) b@93@01))
    (= (inv@97@01 r) r))
  :pattern ((inv@97@01 r))
  :qid |f-fctOfInv|)))
; Permissions are non-negative
(assert (forall ((y@95@01 $Ref)) (!
  (<= $Perm.No (ite b@93@01 (/ (to_real 1) (to_real 2)) $Perm.No))
  :pattern ((inv@97@01 y@95@01))
  :pattern ((img@98@01 y@95@01))
  :qid |f-permAtLeastZero|)))
; Field permissions are at most one
(assert (forall ((y@95@01 $Ref)) (!
  (<= (ite b@93@01 (/ (to_real 1) (to_real 2)) $Perm.No) $Perm.Write)
  :pattern ((inv@97@01 y@95@01))
  :pattern ((img@98@01 y@95@01))
  :qid |f-permAtMostOne|)))
; Permission implies non-null receiver
(assert (forall ((y@95@01 $Ref)) (!
  (=> (and (= y@95@01 x@92@01) b@93@01) (not (= y@95@01 $Ref.null)))
  :pattern ((inv@97@01 y@95@01))
  :pattern ((img@98@01 y@95@01))
  :qid |f-permImpliesNonNull|)))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; tmp := foo2(x, b)
; [eval] foo2(x, b)
(set-option :timeout 0)
(push) ; 3
; [eval] (b ? write : none)
(push) ; 4
(push) ; 5
(set-option :timeout 10)
(assert (not (not b@93@01)))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 5
(set-option :timeout 10)
(assert (not b@93@01))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
; [then-branch: 5 | b@93@01 | live]
; [else-branch: 5 | !(b@93@01) | live]
(set-option :timeout 0)
(push) ; 5
; [then-branch: 5 | b@93@01]
(assert b@93@01)
(pop) ; 5
(push) ; 5
; [else-branch: 5 | !(b@93@01)]
(assert (not b@93@01))
(pop) ; 5
(pop) ; 4
; Joined path conditions
; Joined path conditions
(assert (or (not b@93@01) b@93@01))
(push) ; 4
(assert (not (forall ((r $Ref)) (!
  (=>
    (and (= r x@92@01) (> (ite b@93@01 $Perm.Write $Perm.No) $Perm.No))
    (>
      (ite
        (and (img@98@01 r) (= (inv@97@01 r) x@92@01))
        (ite b@93@01 (/ (to_real 1) (to_real 2)) $Perm.No)
        $Perm.No)
      $Perm.No))
  
  :qid |quant-u-22294|))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(declare-const sm@99@01 $FVF<f>)
; Definitional axioms for snapshot map domain (instantiated)
; Definitional axioms for snapshot map values (instantiated)
(assert (=>
  (ite (and (img@98@01 x@92@01) (= (inv@97@01 x@92@01) x@92@01)) b@93@01 false)
  (=
    ($FVF.lookup_f (as sm@99@01  $FVF<f>) x@92@01)
    ($FVF.lookup_f $t@96@01 x@92@01))))
(assert (foo2%precondition ($SortWrappers.IntTo$Snap ($FVF.lookup_f (as sm@99@01  $FVF<f>) x@92@01)) x@92@01 b@93@01))
(pop) ; 3
; Joined path conditions
(assert (and
  (or (not b@93@01) b@93@01)
  (=>
    (ite (and (img@98@01 x@92@01) (= (inv@97@01 x@92@01) x@92@01)) b@93@01 false)
    (=
      ($FVF.lookup_f (as sm@99@01  $FVF<f>) x@92@01)
      ($FVF.lookup_f $t@96@01 x@92@01)))
  (foo2%precondition ($SortWrappers.IntTo$Snap ($FVF.lookup_f (as sm@99@01  $FVF<f>) x@92@01)) x@92@01 b@93@01)))
(declare-const tmp@100@01 Int)
(assert (=
  tmp@100@01
  (foo2 ($SortWrappers.IntTo$Snap ($FVF.lookup_f (as sm@99@01  $FVF<f>) x@92@01)) x@92@01 b@93@01)))
(pop) ; 2
(pop) ; 1
; ---------- test3 ----------
(declare-const x@101@01 $Ref)
(declare-const b@102@01 Bool)
(declare-const x@103@01 $Ref)
(declare-const b@104@01 Bool)
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
; var tmp: Int
(declare-const tmp@105@01 Int)
; [exec]
; inhale acc(x.f, (b ? 1 / 2 : none))
; [eval] (b ? 1 / 2 : none)
(push) ; 3
(push) ; 4
(set-option :timeout 10)
(assert (not (not b@104@01)))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not b@104@01))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; [then-branch: 6 | b@104@01 | live]
; [else-branch: 6 | !(b@104@01) | live]
(set-option :timeout 0)
(push) ; 4
; [then-branch: 6 | b@104@01]
(assert b@104@01)
(pop) ; 4
(push) ; 4
; [else-branch: 6 | !(b@104@01)]
(assert (not b@104@01))
(pop) ; 4
(pop) ; 3
; Joined path conditions
; Joined path conditions
(assert (or (not b@104@01) b@104@01))
(push) ; 3
(assert (not (or (= (ite b@104@01 (/ (to_real 1) (to_real 2)) $Perm.No) $Perm.No) b@104@01)))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(declare-const $t@106@01 Int)
(assert (<= $Perm.No (ite b@104@01 (/ (to_real 1) (to_real 2)) $Perm.No)))
(assert (<= (ite b@104@01 (/ (to_real 1) (to_real 2)) $Perm.No) $Perm.Write))
(assert (=> b@104@01 (not (= x@103@01 $Ref.null))))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; tmp := foo2(x, !b)
; [eval] foo2(x, !b)
; [eval] !b
(set-option :timeout 0)
(push) ; 3
; [eval] (b ? write : none)
(push) ; 4
(push) ; 5
(set-option :timeout 10)
(assert (not b@104@01))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 5
(set-option :timeout 10)
(assert (not (not b@104@01)))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
; [then-branch: 7 | !(b@104@01) | live]
; [else-branch: 7 | b@104@01 | live]
(set-option :timeout 0)
(push) ; 5
; [then-branch: 7 | !(b@104@01)]
(assert (not b@104@01))
(pop) ; 5
(push) ; 5
; [else-branch: 7 | b@104@01]
(assert b@104@01)
(pop) ; 5
(pop) ; 4
; Joined path conditions
; Joined path conditions
(assert (or b@104@01 (not b@104@01)))
(push) ; 4
(assert (not (or (= (ite (not b@104@01) $Perm.Write $Perm.No) $Perm.No) (not b@104@01))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(push) ; 4
(assert (not (=> (not b@104@01) b@104@01)))
(check-sat)
; unknown
(pop) ; 4
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
(push) ; 4
(assert (not (=> (not b@104@01) b@104@01)))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(check-sat)
; unknown
; [state consolidation]
; State saturation: before repetition
(set-option :timeout 10)
(check-sat)
; unknown
; [eval] (b ? write : none)
(set-option :timeout 0)
(push) ; 4
(push) ; 5
(set-option :timeout 10)
(assert (not b@104@01))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 5
(set-option :timeout 10)
(assert (not (not b@104@01)))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
; [then-branch: 8 | !(b@104@01) | live]
; [else-branch: 8 | b@104@01 | live]
(set-option :timeout 0)
(push) ; 5
; [then-branch: 8 | !(b@104@01)]
(assert (not b@104@01))
; [state consolidation]
; State saturation: before repetition
(set-option :timeout 10)
(check-sat)
; unknown
(pop) ; 5
(set-option :timeout 0)
(push) ; 5
; [else-branch: 8 | b@104@01]
(assert b@104@01)
; [state consolidation]
; State saturation: before repetition
(set-option :timeout 10)
(check-sat)
; unknown
(pop) ; 5
(pop) ; 4
; Joined path conditions
; Joined path conditions
(set-option :timeout 0)
(push) ; 4
(assert (not (or (= (ite (not b@104@01) $Perm.Write $Perm.No) $Perm.No) (not b@104@01))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(push) ; 4
(assert (not (=> (not b@104@01) b@104@01)))
(check-sat)
; unknown
(pop) ; 4
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
(push) ; 4
(assert (not (=> (not b@104@01) b@104@01)))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(check-sat)
; unknown
(pop) ; 3
(pop) ; 2
(pop) ; 1
; ---------- test3mce ----------
(declare-const x@107@01 $Ref)
(declare-const b@108@01 Bool)
(declare-const x@109@01 $Ref)
(declare-const b@110@01 Bool)
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
; var tmp: Int
(declare-const tmp@111@01 Int)
; [exec]
; inhale acc(x.f, (b ? 1 / 2 : none))
; [eval] (b ? 1 / 2 : none)
(push) ; 3
(push) ; 4
(set-option :timeout 10)
(assert (not (not b@110@01)))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not b@110@01))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; [then-branch: 9 | b@110@01 | live]
; [else-branch: 9 | !(b@110@01) | live]
(set-option :timeout 0)
(push) ; 4
; [then-branch: 9 | b@110@01]
(assert b@110@01)
(pop) ; 4
(push) ; 4
; [else-branch: 9 | !(b@110@01)]
(assert (not b@110@01))
(pop) ; 4
(pop) ; 3
; Joined path conditions
; Joined path conditions
(assert (or (not b@110@01) b@110@01))
(push) ; 3
(assert (not (or (= (ite b@110@01 (/ (to_real 1) (to_real 2)) $Perm.No) $Perm.No) b@110@01)))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(declare-const $t@112@01 Int)
(assert (<= $Perm.No (ite b@110@01 (/ (to_real 1) (to_real 2)) $Perm.No)))
(assert (<= (ite b@110@01 (/ (to_real 1) (to_real 2)) $Perm.No) $Perm.Write))
(assert (=> b@110@01 (not (= x@109@01 $Ref.null))))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; tmp := foo2(x, !b)
; [eval] foo2(x, !b)
; [eval] !b
(set-option :timeout 0)
(push) ; 3
; [eval] (b ? write : none)
(push) ; 4
(push) ; 5
(set-option :timeout 10)
(assert (not b@110@01))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 5
(set-option :timeout 10)
(assert (not (not b@110@01)))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
; [then-branch: 10 | !(b@110@01) | live]
; [else-branch: 10 | b@110@01 | live]
(set-option :timeout 0)
(push) ; 5
; [then-branch: 10 | !(b@110@01)]
(assert (not b@110@01))
(pop) ; 5
(push) ; 5
; [else-branch: 10 | b@110@01]
(assert b@110@01)
(pop) ; 5
(pop) ; 4
; Joined path conditions
; Joined path conditions
(assert (or b@110@01 (not b@110@01)))
(push) ; 4
(assert (not (or (= (ite (not b@110@01) $Perm.Write $Perm.No) $Perm.No) (not b@110@01))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(push) ; 4
(assert (not (=> (not b@110@01) b@110@01)))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; [state consolidation]
; State saturation: before repetition
(set-option :timeout 10)
(check-sat)
; unknown
(set-option :timeout 0)
(push) ; 4
(assert (not (=> (not b@110@01) b@110@01)))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; [state consolidation]
; State saturation: before repetition
(set-option :timeout 10)
(check-sat)
; unknown
; [eval] (b ? write : none)
(set-option :timeout 0)
(push) ; 4
(push) ; 5
(set-option :timeout 10)
(assert (not b@110@01))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 5
(set-option :timeout 10)
(assert (not (not b@110@01)))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
; [then-branch: 11 | !(b@110@01) | live]
; [else-branch: 11 | b@110@01 | live]
(set-option :timeout 0)
(push) ; 5
; [then-branch: 11 | !(b@110@01)]
(assert (not b@110@01))
; [state consolidation]
; State saturation: before repetition
(set-option :timeout 10)
(check-sat)
; unknown
(pop) ; 5
(set-option :timeout 0)
(push) ; 5
; [else-branch: 11 | b@110@01]
(assert b@110@01)
; [state consolidation]
; State saturation: before repetition
(set-option :timeout 10)
(check-sat)
; unknown
(pop) ; 5
(pop) ; 4
; Joined path conditions
; Joined path conditions
(set-option :timeout 0)
(push) ; 4
(assert (not (or (= (ite (not b@110@01) $Perm.Write $Perm.No) $Perm.No) (not b@110@01))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(push) ; 4
(assert (not (=> (not b@110@01) b@110@01)))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; [state consolidation]
; State saturation: before repetition
(set-option :timeout 10)
(check-sat)
; unknown
(set-option :timeout 0)
(push) ; 4
(assert (not (=> (not b@110@01) b@110@01)))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(pop) ; 3
(pop) ; 2
(pop) ; 1
; ---------- test3qp ----------
(declare-const x@113@01 $Ref)
(declare-const b@114@01 Bool)
(declare-const x@115@01 $Ref)
(declare-const b@116@01 Bool)
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
; var tmp: Int
(declare-const tmp@117@01 Int)
; [exec]
; inhale (forall y: Ref ::y == x ==> acc(y.f, (b ? 1 / 2 : none)))
(declare-const y@118@01 $Ref)
(push) ; 3
; [eval] y == x
(assert (= y@118@01 x@115@01))
; [eval] (b ? 1 / 2 : none)
(push) ; 4
(push) ; 5
(set-option :timeout 10)
(assert (not (not b@116@01)))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 5
(set-option :timeout 10)
(assert (not b@116@01))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
; [then-branch: 12 | b@116@01 | live]
; [else-branch: 12 | !(b@116@01) | live]
(set-option :timeout 0)
(push) ; 5
; [then-branch: 12 | b@116@01]
(assert b@116@01)
(pop) ; 5
(push) ; 5
; [else-branch: 12 | !(b@116@01)]
(assert (not b@116@01))
(pop) ; 5
(pop) ; 4
; Joined path conditions
; Joined path conditions
(assert (or (not b@116@01) b@116@01))
(pop) ; 3
(declare-const $t@119@01 $FVF<f>)
(declare-fun inv@120@01 ($Ref) $Ref)
(declare-fun img@121@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
(assert (forall ((y@118@01 $Ref)) (!
  (=> (= y@118@01 x@115@01) (or (not b@116@01) b@116@01))
  :pattern ((inv@120@01 y@118@01))
  :pattern ((img@121@01 y@118@01))
  :qid |f-aux|)))
(push) ; 3
(assert (not (forall ((y@118@01 $Ref)) (!
  (=>
    (= y@118@01 x@115@01)
    (or
      (= (ite b@116@01 (/ (to_real 1) (to_real 2)) $Perm.No) $Perm.No)
      b@116@01))
  
  :qid |quant-u-22295|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Check receiver injectivity
(push) ; 3
(assert (not (forall ((y1@118@01 $Ref) (y2@118@01 $Ref)) (!
  (=>
    (and
      (and (= y1@118@01 x@115@01) b@116@01)
      (and (= y2@118@01 x@115@01) b@116@01)
      (= y1@118@01 y2@118@01))
    (= y1@118@01 y2@118@01))
  
  :qid |f-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((y@118@01 $Ref)) (!
  (=>
    (and (= y@118@01 x@115@01) b@116@01)
    (and (= (inv@120@01 y@118@01) y@118@01) (img@121@01 y@118@01)))
  :pattern ((inv@120@01 y@118@01))
  :pattern ((img@121@01 y@118@01))
  :qid |quant-u-22296|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@121@01 r) (and (= (inv@120@01 r) x@115@01) b@116@01))
    (= (inv@120@01 r) r))
  :pattern ((inv@120@01 r))
  :qid |f-fctOfInv|)))
; Permissions are non-negative
(assert (forall ((y@118@01 $Ref)) (!
  (<= $Perm.No (ite b@116@01 (/ (to_real 1) (to_real 2)) $Perm.No))
  :pattern ((inv@120@01 y@118@01))
  :pattern ((img@121@01 y@118@01))
  :qid |f-permAtLeastZero|)))
; Field permissions are at most one
(assert (forall ((y@118@01 $Ref)) (!
  (<= (ite b@116@01 (/ (to_real 1) (to_real 2)) $Perm.No) $Perm.Write)
  :pattern ((inv@120@01 y@118@01))
  :pattern ((img@121@01 y@118@01))
  :qid |f-permAtMostOne|)))
; Permission implies non-null receiver
(assert (forall ((y@118@01 $Ref)) (!
  (=> (and (= y@118@01 x@115@01) b@116@01) (not (= y@118@01 $Ref.null)))
  :pattern ((inv@120@01 y@118@01))
  :pattern ((img@121@01 y@118@01))
  :qid |f-permImpliesNonNull|)))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; tmp := foo2(x, !b)
; [eval] foo2(x, !b)
; [eval] !b
(set-option :timeout 0)
(push) ; 3
; [eval] (b ? write : none)
(push) ; 4
(push) ; 5
(set-option :timeout 10)
(assert (not b@116@01))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 5
(set-option :timeout 10)
(assert (not (not b@116@01)))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
; [then-branch: 13 | !(b@116@01) | live]
; [else-branch: 13 | b@116@01 | live]
(set-option :timeout 0)
(push) ; 5
; [then-branch: 13 | !(b@116@01)]
(assert (not b@116@01))
(pop) ; 5
(push) ; 5
; [else-branch: 13 | b@116@01]
(assert b@116@01)
(pop) ; 5
(pop) ; 4
; Joined path conditions
; Joined path conditions
(assert (or b@116@01 (not b@116@01)))
(push) ; 4
(assert (not (forall ((r $Ref)) (!
  (=>
    (and (= r x@115@01) (> (ite (not b@116@01) $Perm.Write $Perm.No) $Perm.No))
    (>
      (ite
        (and (img@121@01 r) (= (inv@120@01 r) x@115@01))
        (ite b@116@01 (/ (to_real 1) (to_real 2)) $Perm.No)
        $Perm.No)
      $Perm.No))
  
  :qid |quant-u-22297|))))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; [state consolidation]
; State saturation: before repetition
(set-option :timeout 10)
(check-sat)
; unknown
(declare-const sm@122@01 $FVF<f>)
; Definitional axioms for snapshot map domain
; Definitional axioms for snapshot map values
(assert (forall ((r $Ref)) (!
  (=>
    (ite (and (img@121@01 r) (= (inv@120@01 r) x@115@01)) b@116@01 false)
    (= ($FVF.lookup_f (as sm@122@01  $FVF<f>) r) ($FVF.lookup_f $t@119@01 r)))
  :pattern (($FVF.lookup_f (as sm@122@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f $t@119@01 r))
  :qid |qp.fvfValDef5|)))
(declare-const pm@123@01 $FPM)
(assert (forall ((r $Ref)) (!
  (=
    ($FVF.perm_f (as pm@123@01  $FPM) r)
    (ite
      (and (img@121@01 r) (= (inv@120@01 r) x@115@01))
      (ite b@116@01 (/ (to_real 1) (to_real 2)) $Perm.No)
      $Perm.No))
  :pattern (($FVF.perm_f (as pm@123@01  $FPM) r))
  :qid |qp.resPrmSumDef6|)))
; Assume upper permission bound for field f
(assert (forall ((r $Ref)) (!
  (<= ($FVF.perm_f (as pm@123@01  $FPM) r) $Perm.Write)
  :pattern ((inv@120@01 r))
  :qid |qp-fld-prm-bnd|)))
; [eval] (b ? write : none)
(set-option :timeout 0)
(push) ; 4
(push) ; 5
(set-option :timeout 10)
(assert (not b@116@01))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 5
(set-option :timeout 10)
(assert (not (not b@116@01)))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
; [then-branch: 14 | !(b@116@01) | live]
; [else-branch: 14 | b@116@01 | live]
(set-option :timeout 0)
(push) ; 5
; [then-branch: 14 | !(b@116@01)]
(assert (not b@116@01))
; [state consolidation]
; State saturation: before repetition
(set-option :timeout 10)
(check-sat)
; unknown
; Definitional axioms for snapshot map domain
; Definitional axioms for snapshot map values
; Assume upper permission bound for field f
(pop) ; 5
(set-option :timeout 0)
(push) ; 5
; [else-branch: 14 | b@116@01]
(assert b@116@01)
; [state consolidation]
; State saturation: before repetition
(set-option :timeout 10)
(check-sat)
; unknown
; Definitional axioms for snapshot map domain
; Definitional axioms for snapshot map values
; Assume upper permission bound for field f
(pop) ; 5
(pop) ; 4
; Joined path conditions
; Joined path conditions
(set-option :timeout 0)
(push) ; 4
(assert (not (forall ((r $Ref)) (!
  (=>
    (and (= r x@115@01) (> (ite (not b@116@01) $Perm.Write $Perm.No) $Perm.No))
    (>
      (ite
        (and (img@121@01 r) (= (inv@120@01 r) x@115@01))
        (ite b@116@01 (/ (to_real 1) (to_real 2)) $Perm.No)
        $Perm.No)
      $Perm.No))
  
  :qid |quant-u-22298|))))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(pop) ; 3
(pop) ; 2
(pop) ; 1
; ---------- test2w ----------
(declare-const x@124@01 $Ref)
(declare-const b@125@01 Bool)
(declare-const x@126@01 $Ref)
(declare-const b@127@01 Bool)
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
; var tmp: Int
(declare-const tmp@128@01 Int)
; [exec]
; inhale acc(x.f, (b ? 1 / 2 : none))
; [eval] (b ? 1 / 2 : none)
(push) ; 3
(push) ; 4
(set-option :timeout 10)
(assert (not (not b@127@01)))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not b@127@01))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; [then-branch: 15 | b@127@01 | live]
; [else-branch: 15 | !(b@127@01) | live]
(set-option :timeout 0)
(push) ; 4
; [then-branch: 15 | b@127@01]
(assert b@127@01)
(pop) ; 4
(push) ; 4
; [else-branch: 15 | !(b@127@01)]
(assert (not b@127@01))
(pop) ; 4
(pop) ; 3
; Joined path conditions
; Joined path conditions
(assert (or (not b@127@01) b@127@01))
(push) ; 3
(assert (not (or (= (ite b@127@01 (/ (to_real 1) (to_real 2)) $Perm.No) $Perm.No) b@127@01)))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(declare-const $t@129@01 Int)
(assert (<= $Perm.No (ite b@127@01 (/ (to_real 1) (to_real 2)) $Perm.No)))
(assert (<= (ite b@127@01 (/ (to_real 1) (to_real 2)) $Perm.No) $Perm.Write))
(assert (=> b@127@01 (not (= x@126@01 $Ref.null))))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; tmp := foo2w(x, b)
; [eval] foo2w(x, b)
(set-option :timeout 0)
(push) ; 3
; [eval] (b ? wildcard : none)
(push) ; 4
(push) ; 5
(set-option :timeout 10)
(assert (not (not b@127@01)))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 5
(set-option :timeout 10)
(assert (not b@127@01))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
; [then-branch: 16 | b@127@01 | live]
; [else-branch: 16 | !(b@127@01) | live]
(set-option :timeout 0)
(push) ; 5
; [then-branch: 16 | b@127@01]
(assert b@127@01)
(declare-const $k@130@01 $Perm)
(assert ($Perm.isReadVar $k@130@01))
(pop) ; 5
(push) ; 5
; [else-branch: 16 | !(b@127@01)]
(assert (not b@127@01))
(pop) ; 5
(pop) ; 4
; Joined path conditions
(assert ($Perm.isReadVar $k@130@01))
; Joined path conditions
(push) ; 4
(assert (not (or
  (= (ite b@127@01 $k@130@01 $Perm.No) $Perm.No)
  (ite b@127@01 (< $Perm.No $k@130@01) false))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(push) ; 4
(assert (not (=> (ite b@127@01 (< $Perm.No $k@130@01) false) b@127@01)))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(push) ; 4
(set-option :timeout 10)
(assert (not (ite b@127@01 (< $Perm.No $k@130@01) false)))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(assert (foo2w%precondition (ite
  (ite b@127@01 (< $Perm.No $k@130@01) false)
  ($SortWrappers.IntTo$Snap $t@129@01)
  $Snap.unit) x@126@01 b@127@01))
(pop) ; 3
; Joined path conditions
(assert ($Perm.isReadVar $k@130@01))
(assert (foo2w%precondition (ite
  (ite b@127@01 (< $Perm.No $k@130@01) false)
  ($SortWrappers.IntTo$Snap $t@129@01)
  $Snap.unit) x@126@01 b@127@01))
(declare-const tmp@131@01 Int)
(assert (=
  tmp@131@01
  (foo2w (ite
    (ite b@127@01 (< $Perm.No $k@130@01) false)
    ($SortWrappers.IntTo$Snap $t@129@01)
    $Snap.unit) x@126@01 b@127@01)))
(pop) ; 2
(pop) ; 1
; ---------- test2mcew ----------
(declare-const x@132@01 $Ref)
(declare-const b@133@01 Bool)
(declare-const x@134@01 $Ref)
(declare-const b@135@01 Bool)
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
; var tmp: Int
(declare-const tmp@136@01 Int)
; [exec]
; inhale acc(x.f, (b ? 1 / 2 : none))
; [eval] (b ? 1 / 2 : none)
(push) ; 3
(push) ; 4
(set-option :timeout 10)
(assert (not (not b@135@01)))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not b@135@01))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; [then-branch: 17 | b@135@01 | live]
; [else-branch: 17 | !(b@135@01) | live]
(set-option :timeout 0)
(push) ; 4
; [then-branch: 17 | b@135@01]
(assert b@135@01)
(pop) ; 4
(push) ; 4
; [else-branch: 17 | !(b@135@01)]
(assert (not b@135@01))
(pop) ; 4
(pop) ; 3
; Joined path conditions
; Joined path conditions
(assert (or (not b@135@01) b@135@01))
(push) ; 3
(assert (not (or (= (ite b@135@01 (/ (to_real 1) (to_real 2)) $Perm.No) $Perm.No) b@135@01)))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(declare-const $t@137@01 Int)
(assert (<= $Perm.No (ite b@135@01 (/ (to_real 1) (to_real 2)) $Perm.No)))
(assert (<= (ite b@135@01 (/ (to_real 1) (to_real 2)) $Perm.No) $Perm.Write))
(assert (=> b@135@01 (not (= x@134@01 $Ref.null))))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; tmp := foo2w(x, b)
; [eval] foo2w(x, b)
(set-option :timeout 0)
(push) ; 3
; [eval] (b ? wildcard : none)
(push) ; 4
(push) ; 5
(set-option :timeout 10)
(assert (not (not b@135@01)))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 5
(set-option :timeout 10)
(assert (not b@135@01))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
; [then-branch: 18 | b@135@01 | live]
; [else-branch: 18 | !(b@135@01) | live]
(set-option :timeout 0)
(push) ; 5
; [then-branch: 18 | b@135@01]
(assert b@135@01)
(declare-const $k@138@01 $Perm)
(assert ($Perm.isReadVar $k@138@01))
(pop) ; 5
(push) ; 5
; [else-branch: 18 | !(b@135@01)]
(assert (not b@135@01))
(pop) ; 5
(pop) ; 4
; Joined path conditions
(assert ($Perm.isReadVar $k@138@01))
; Joined path conditions
(push) ; 4
(assert (not (or
  (= (ite b@135@01 $k@138@01 $Perm.No) $Perm.No)
  (ite b@135@01 (< $Perm.No $k@138@01) false))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(push) ; 4
(assert (not (=> (ite b@135@01 (< $Perm.No $k@138@01) false) b@135@01)))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(assert (foo2w%precondition ($SortWrappers.IntTo$Snap $t@137@01) x@134@01 b@135@01))
(pop) ; 3
; Joined path conditions
(assert ($Perm.isReadVar $k@138@01))
(assert (foo2w%precondition ($SortWrappers.IntTo$Snap $t@137@01) x@134@01 b@135@01))
(declare-const tmp@139@01 Int)
(assert (= tmp@139@01 (foo2w ($SortWrappers.IntTo$Snap $t@137@01) x@134@01 b@135@01)))
(pop) ; 2
(pop) ; 1
; ---------- test2qpw ----------
(declare-const x@140@01 $Ref)
(declare-const b@141@01 Bool)
(declare-const x@142@01 $Ref)
(declare-const b@143@01 Bool)
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
; var tmp: Int
(declare-const tmp@144@01 Int)
; [exec]
; inhale (forall y: Ref ::y == x ==> acc(y.f, (b ? 1 / 2 : none)))
(declare-const y@145@01 $Ref)
(push) ; 3
; [eval] y == x
(assert (= y@145@01 x@142@01))
; [eval] (b ? 1 / 2 : none)
(push) ; 4
(push) ; 5
(set-option :timeout 10)
(assert (not (not b@143@01)))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 5
(set-option :timeout 10)
(assert (not b@143@01))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
; [then-branch: 19 | b@143@01 | live]
; [else-branch: 19 | !(b@143@01) | live]
(set-option :timeout 0)
(push) ; 5
; [then-branch: 19 | b@143@01]
(assert b@143@01)
(pop) ; 5
(push) ; 5
; [else-branch: 19 | !(b@143@01)]
(assert (not b@143@01))
(pop) ; 5
(pop) ; 4
; Joined path conditions
; Joined path conditions
(assert (or (not b@143@01) b@143@01))
(pop) ; 3
(declare-const $t@146@01 $FVF<f>)
(declare-fun inv@147@01 ($Ref) $Ref)
(declare-fun img@148@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
(assert (forall ((y@145@01 $Ref)) (!
  (=> (= y@145@01 x@142@01) (or (not b@143@01) b@143@01))
  :pattern ((inv@147@01 y@145@01))
  :pattern ((img@148@01 y@145@01))
  :qid |f-aux|)))
(push) ; 3
(assert (not (forall ((y@145@01 $Ref)) (!
  (=>
    (= y@145@01 x@142@01)
    (or
      (= (ite b@143@01 (/ (to_real 1) (to_real 2)) $Perm.No) $Perm.No)
      b@143@01))
  
  :qid |quant-u-22299|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Check receiver injectivity
(push) ; 3
(assert (not (forall ((y1@145@01 $Ref) (y2@145@01 $Ref)) (!
  (=>
    (and
      (and (= y1@145@01 x@142@01) b@143@01)
      (and (= y2@145@01 x@142@01) b@143@01)
      (= y1@145@01 y2@145@01))
    (= y1@145@01 y2@145@01))
  
  :qid |f-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((y@145@01 $Ref)) (!
  (=>
    (and (= y@145@01 x@142@01) b@143@01)
    (and (= (inv@147@01 y@145@01) y@145@01) (img@148@01 y@145@01)))
  :pattern ((inv@147@01 y@145@01))
  :pattern ((img@148@01 y@145@01))
  :qid |quant-u-22300|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@148@01 r) (and (= (inv@147@01 r) x@142@01) b@143@01))
    (= (inv@147@01 r) r))
  :pattern ((inv@147@01 r))
  :qid |f-fctOfInv|)))
; Permissions are non-negative
(assert (forall ((y@145@01 $Ref)) (!
  (<= $Perm.No (ite b@143@01 (/ (to_real 1) (to_real 2)) $Perm.No))
  :pattern ((inv@147@01 y@145@01))
  :pattern ((img@148@01 y@145@01))
  :qid |f-permAtLeastZero|)))
; Field permissions are at most one
(assert (forall ((y@145@01 $Ref)) (!
  (<= (ite b@143@01 (/ (to_real 1) (to_real 2)) $Perm.No) $Perm.Write)
  :pattern ((inv@147@01 y@145@01))
  :pattern ((img@148@01 y@145@01))
  :qid |f-permAtMostOne|)))
; Permission implies non-null receiver
(assert (forall ((y@145@01 $Ref)) (!
  (=> (and (= y@145@01 x@142@01) b@143@01) (not (= y@145@01 $Ref.null)))
  :pattern ((inv@147@01 y@145@01))
  :pattern ((img@148@01 y@145@01))
  :qid |f-permImpliesNonNull|)))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; tmp := foo2w(x, b)
; [eval] foo2w(x, b)
(set-option :timeout 0)
(push) ; 3
; [eval] (b ? wildcard : none)
(push) ; 4
(push) ; 5
(set-option :timeout 10)
(assert (not (not b@143@01)))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 5
(set-option :timeout 10)
(assert (not b@143@01))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
; [then-branch: 20 | b@143@01 | live]
; [else-branch: 20 | !(b@143@01) | live]
(set-option :timeout 0)
(push) ; 5
; [then-branch: 20 | b@143@01]
(assert b@143@01)
(declare-const $k@149@01 $Perm)
(assert ($Perm.isReadVar $k@149@01))
(pop) ; 5
(push) ; 5
; [else-branch: 20 | !(b@143@01)]
(assert (not b@143@01))
(pop) ; 5
(pop) ; 4
; Joined path conditions
(assert ($Perm.isReadVar $k@149@01))
; Joined path conditions
(assert (or (not b@143@01) b@143@01))
(push) ; 4
(assert (not (forall ((r $Ref)) (!
  (=>
    (and (= r x@142@01) (> (ite b@143@01 $k@149@01 $Perm.No) $Perm.No))
    (>
      (ite
        (and (img@148@01 r) (= (inv@147@01 r) x@142@01))
        (ite b@143@01 (/ (to_real 1) (to_real 2)) $Perm.No)
        $Perm.No)
      $Perm.No))
  
  :qid |quant-u-22301|))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(declare-const sm@150@01 $FVF<f>)
; Definitional axioms for snapshot map domain (instantiated)
; Definitional axioms for snapshot map values (instantiated)
(assert (=>
  (ite
    (and (img@148@01 x@142@01) (= (inv@147@01 x@142@01) x@142@01))
    b@143@01
    false)
  (=
    ($FVF.lookup_f (as sm@150@01  $FVF<f>) x@142@01)
    ($FVF.lookup_f $t@146@01 x@142@01))))
(assert (foo2w%precondition ($SortWrappers.IntTo$Snap ($FVF.lookup_f (as sm@150@01  $FVF<f>) x@142@01)) x@142@01 b@143@01))
(pop) ; 3
; Joined path conditions
(assert ($Perm.isReadVar $k@149@01))
(assert (and
  (or (not b@143@01) b@143@01)
  (=>
    (ite
      (and (img@148@01 x@142@01) (= (inv@147@01 x@142@01) x@142@01))
      b@143@01
      false)
    (=
      ($FVF.lookup_f (as sm@150@01  $FVF<f>) x@142@01)
      ($FVF.lookup_f $t@146@01 x@142@01)))
  (foo2w%precondition ($SortWrappers.IntTo$Snap ($FVF.lookup_f (as sm@150@01  $FVF<f>) x@142@01)) x@142@01 b@143@01)))
(declare-const tmp@151@01 Int)
(assert (=
  tmp@151@01
  (foo2w ($SortWrappers.IntTo$Snap ($FVF.lookup_f (as sm@150@01  $FVF<f>) x@142@01)) x@142@01 b@143@01)))
(pop) ; 2
(pop) ; 1
; ---------- test3w ----------
(declare-const x@152@01 $Ref)
(declare-const b@153@01 Bool)
(declare-const x@154@01 $Ref)
(declare-const b@155@01 Bool)
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
; var tmp: Int
(declare-const tmp@156@01 Int)
; [exec]
; inhale acc(x.f, (b ? 1 / 2 : none))
; [eval] (b ? 1 / 2 : none)
(push) ; 3
(push) ; 4
(set-option :timeout 10)
(assert (not (not b@155@01)))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not b@155@01))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; [then-branch: 21 | b@155@01 | live]
; [else-branch: 21 | !(b@155@01) | live]
(set-option :timeout 0)
(push) ; 4
; [then-branch: 21 | b@155@01]
(assert b@155@01)
(pop) ; 4
(push) ; 4
; [else-branch: 21 | !(b@155@01)]
(assert (not b@155@01))
(pop) ; 4
(pop) ; 3
; Joined path conditions
; Joined path conditions
(assert (or (not b@155@01) b@155@01))
(push) ; 3
(assert (not (or (= (ite b@155@01 (/ (to_real 1) (to_real 2)) $Perm.No) $Perm.No) b@155@01)))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(declare-const $t@157@01 Int)
(assert (<= $Perm.No (ite b@155@01 (/ (to_real 1) (to_real 2)) $Perm.No)))
(assert (<= (ite b@155@01 (/ (to_real 1) (to_real 2)) $Perm.No) $Perm.Write))
(assert (=> b@155@01 (not (= x@154@01 $Ref.null))))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; tmp := foo2w(x, !b)
; [eval] foo2w(x, !b)
; [eval] !b
(set-option :timeout 0)
(push) ; 3
; [eval] (b ? wildcard : none)
(push) ; 4
(push) ; 5
(set-option :timeout 10)
(assert (not b@155@01))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 5
(set-option :timeout 10)
(assert (not (not b@155@01)))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
; [then-branch: 22 | !(b@155@01) | live]
; [else-branch: 22 | b@155@01 | live]
(set-option :timeout 0)
(push) ; 5
; [then-branch: 22 | !(b@155@01)]
(assert (not b@155@01))
(declare-const $k@158@01 $Perm)
(assert ($Perm.isReadVar $k@158@01))
(pop) ; 5
(push) ; 5
; [else-branch: 22 | b@155@01]
(assert b@155@01)
(pop) ; 5
(pop) ; 4
; Joined path conditions
(assert ($Perm.isReadVar $k@158@01))
; Joined path conditions
(assert (or b@155@01 (not b@155@01)))
(push) ; 4
(assert (not (or
  (= (ite (not b@155@01) $k@158@01 $Perm.No) $Perm.No)
  (ite (not b@155@01) (< $Perm.No $k@158@01) false))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(push) ; 4
(assert (not (=> (ite (not b@155@01) (< $Perm.No $k@158@01) false) b@155@01)))
(check-sat)
; unknown
(pop) ; 4
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
(push) ; 4
(assert (not (=> (ite (not b@155@01) (< $Perm.No $k@158@01) false) b@155@01)))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(check-sat)
; unknown
; [state consolidation]
; State saturation: before repetition
(set-option :timeout 10)
(check-sat)
; unknown
; [eval] (b ? wildcard : none)
(set-option :timeout 0)
(push) ; 4
(push) ; 5
(set-option :timeout 10)
(assert (not b@155@01))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 5
(set-option :timeout 10)
(assert (not (not b@155@01)))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
; [then-branch: 23 | !(b@155@01) | live]
; [else-branch: 23 | b@155@01 | live]
(set-option :timeout 0)
(push) ; 5
; [then-branch: 23 | !(b@155@01)]
(assert (not b@155@01))
; [state consolidation]
; State saturation: before repetition
(set-option :timeout 10)
(check-sat)
; unknown
(declare-const $k@159@01 $Perm)
(assert ($Perm.isReadVar $k@159@01))
(pop) ; 5
(set-option :timeout 0)
(push) ; 5
; [else-branch: 23 | b@155@01]
(assert b@155@01)
; [state consolidation]
; State saturation: before repetition
(set-option :timeout 10)
(check-sat)
; unknown
(pop) ; 5
(pop) ; 4
; Joined path conditions
(assert ($Perm.isReadVar $k@159@01))
; Joined path conditions
(set-option :timeout 0)
(push) ; 4
(assert (not (or
  (= (ite (not b@155@01) $k@159@01 $Perm.No) $Perm.No)
  (ite (not b@155@01) (< $Perm.No $k@159@01) false))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(push) ; 4
(assert (not (=> (ite (not b@155@01) (< $Perm.No $k@159@01) false) b@155@01)))
(check-sat)
; unknown
(pop) ; 4
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
(push) ; 4
(assert (not (=> (ite (not b@155@01) (< $Perm.No $k@159@01) false) b@155@01)))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(check-sat)
; unknown
(pop) ; 3
(pop) ; 2
(pop) ; 1
; ---------- test3mcew ----------
(declare-const x@160@01 $Ref)
(declare-const b@161@01 Bool)
(declare-const x@162@01 $Ref)
(declare-const b@163@01 Bool)
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
; var tmp: Int
(declare-const tmp@164@01 Int)
; [exec]
; inhale acc(x.f, (b ? 1 / 2 : none))
; [eval] (b ? 1 / 2 : none)
(push) ; 3
(push) ; 4
(set-option :timeout 10)
(assert (not (not b@163@01)))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not b@163@01))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; [then-branch: 24 | b@163@01 | live]
; [else-branch: 24 | !(b@163@01) | live]
(set-option :timeout 0)
(push) ; 4
; [then-branch: 24 | b@163@01]
(assert b@163@01)
(pop) ; 4
(push) ; 4
; [else-branch: 24 | !(b@163@01)]
(assert (not b@163@01))
(pop) ; 4
(pop) ; 3
; Joined path conditions
; Joined path conditions
(assert (or (not b@163@01) b@163@01))
(push) ; 3
(assert (not (or (= (ite b@163@01 (/ (to_real 1) (to_real 2)) $Perm.No) $Perm.No) b@163@01)))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(declare-const $t@165@01 Int)
(assert (<= $Perm.No (ite b@163@01 (/ (to_real 1) (to_real 2)) $Perm.No)))
(assert (<= (ite b@163@01 (/ (to_real 1) (to_real 2)) $Perm.No) $Perm.Write))
(assert (=> b@163@01 (not (= x@162@01 $Ref.null))))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; tmp := foo2w(x, !b)
; [eval] foo2w(x, !b)
; [eval] !b
(set-option :timeout 0)
(push) ; 3
; [eval] (b ? wildcard : none)
(push) ; 4
(push) ; 5
(set-option :timeout 10)
(assert (not b@163@01))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 5
(set-option :timeout 10)
(assert (not (not b@163@01)))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
; [then-branch: 25 | !(b@163@01) | live]
; [else-branch: 25 | b@163@01 | live]
(set-option :timeout 0)
(push) ; 5
; [then-branch: 25 | !(b@163@01)]
(assert (not b@163@01))
(declare-const $k@166@01 $Perm)
(assert ($Perm.isReadVar $k@166@01))
(pop) ; 5
(push) ; 5
; [else-branch: 25 | b@163@01]
(assert b@163@01)
(pop) ; 5
(pop) ; 4
; Joined path conditions
(assert ($Perm.isReadVar $k@166@01))
; Joined path conditions
(assert (or b@163@01 (not b@163@01)))
(push) ; 4
(assert (not (or
  (= (ite (not b@163@01) $k@166@01 $Perm.No) $Perm.No)
  (ite (not b@163@01) (< $Perm.No $k@166@01) false))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(push) ; 4
(assert (not (=> (ite (not b@163@01) (< $Perm.No $k@166@01) false) b@163@01)))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; [state consolidation]
; State saturation: before repetition
(set-option :timeout 10)
(check-sat)
; unknown
(set-option :timeout 0)
(push) ; 4
(assert (not (=> (ite (not b@163@01) (< $Perm.No $k@166@01) false) b@163@01)))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; [state consolidation]
; State saturation: before repetition
(set-option :timeout 10)
(check-sat)
; unknown
; [eval] (b ? wildcard : none)
(set-option :timeout 0)
(push) ; 4
(push) ; 5
(set-option :timeout 10)
(assert (not b@163@01))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 5
(set-option :timeout 10)
(assert (not (not b@163@01)))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
; [then-branch: 26 | !(b@163@01) | live]
; [else-branch: 26 | b@163@01 | live]
(set-option :timeout 0)
(push) ; 5
; [then-branch: 26 | !(b@163@01)]
(assert (not b@163@01))
; [state consolidation]
; State saturation: before repetition
(set-option :timeout 10)
(check-sat)
; unknown
(declare-const $k@167@01 $Perm)
(assert ($Perm.isReadVar $k@167@01))
(pop) ; 5
(set-option :timeout 0)
(push) ; 5
; [else-branch: 26 | b@163@01]
(assert b@163@01)
; [state consolidation]
; State saturation: before repetition
(set-option :timeout 10)
(check-sat)
; unknown
(pop) ; 5
(pop) ; 4
; Joined path conditions
(assert ($Perm.isReadVar $k@167@01))
; Joined path conditions
(set-option :timeout 0)
(push) ; 4
(assert (not (or
  (= (ite (not b@163@01) $k@167@01 $Perm.No) $Perm.No)
  (ite (not b@163@01) (< $Perm.No $k@167@01) false))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(push) ; 4
(assert (not (=> (ite (not b@163@01) (< $Perm.No $k@167@01) false) b@163@01)))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; [state consolidation]
; State saturation: before repetition
(set-option :timeout 10)
(check-sat)
; unknown
(set-option :timeout 0)
(push) ; 4
(assert (not (=> (ite (not b@163@01) (< $Perm.No $k@167@01) false) b@163@01)))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(pop) ; 3
(pop) ; 2
(pop) ; 1
; ---------- test3qpw ----------
(declare-const x@168@01 $Ref)
(declare-const b@169@01 Bool)
(declare-const x@170@01 $Ref)
(declare-const b@171@01 Bool)
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
; var tmp: Int
(declare-const tmp@172@01 Int)
; [exec]
; inhale (forall y: Ref ::y == x ==> acc(y.f, (b ? 1 / 2 : none)))
(declare-const y@173@01 $Ref)
(push) ; 3
; [eval] y == x
(assert (= y@173@01 x@170@01))
; [eval] (b ? 1 / 2 : none)
(push) ; 4
(push) ; 5
(set-option :timeout 10)
(assert (not (not b@171@01)))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 5
(set-option :timeout 10)
(assert (not b@171@01))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
; [then-branch: 27 | b@171@01 | live]
; [else-branch: 27 | !(b@171@01) | live]
(set-option :timeout 0)
(push) ; 5
; [then-branch: 27 | b@171@01]
(assert b@171@01)
(pop) ; 5
(push) ; 5
; [else-branch: 27 | !(b@171@01)]
(assert (not b@171@01))
(pop) ; 5
(pop) ; 4
; Joined path conditions
; Joined path conditions
(assert (or (not b@171@01) b@171@01))
(pop) ; 3
(declare-const $t@174@01 $FVF<f>)
(declare-fun inv@175@01 ($Ref) $Ref)
(declare-fun img@176@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
(assert (forall ((y@173@01 $Ref)) (!
  (=> (= y@173@01 x@170@01) (or (not b@171@01) b@171@01))
  :pattern ((inv@175@01 y@173@01))
  :pattern ((img@176@01 y@173@01))
  :qid |f-aux|)))
(push) ; 3
(assert (not (forall ((y@173@01 $Ref)) (!
  (=>
    (= y@173@01 x@170@01)
    (or
      (= (ite b@171@01 (/ (to_real 1) (to_real 2)) $Perm.No) $Perm.No)
      b@171@01))
  
  :qid |quant-u-22302|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Check receiver injectivity
(push) ; 3
(assert (not (forall ((y1@173@01 $Ref) (y2@173@01 $Ref)) (!
  (=>
    (and
      (and (= y1@173@01 x@170@01) b@171@01)
      (and (= y2@173@01 x@170@01) b@171@01)
      (= y1@173@01 y2@173@01))
    (= y1@173@01 y2@173@01))
  
  :qid |f-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((y@173@01 $Ref)) (!
  (=>
    (and (= y@173@01 x@170@01) b@171@01)
    (and (= (inv@175@01 y@173@01) y@173@01) (img@176@01 y@173@01)))
  :pattern ((inv@175@01 y@173@01))
  :pattern ((img@176@01 y@173@01))
  :qid |quant-u-22303|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@176@01 r) (and (= (inv@175@01 r) x@170@01) b@171@01))
    (= (inv@175@01 r) r))
  :pattern ((inv@175@01 r))
  :qid |f-fctOfInv|)))
; Permissions are non-negative
(assert (forall ((y@173@01 $Ref)) (!
  (<= $Perm.No (ite b@171@01 (/ (to_real 1) (to_real 2)) $Perm.No))
  :pattern ((inv@175@01 y@173@01))
  :pattern ((img@176@01 y@173@01))
  :qid |f-permAtLeastZero|)))
; Field permissions are at most one
(assert (forall ((y@173@01 $Ref)) (!
  (<= (ite b@171@01 (/ (to_real 1) (to_real 2)) $Perm.No) $Perm.Write)
  :pattern ((inv@175@01 y@173@01))
  :pattern ((img@176@01 y@173@01))
  :qid |f-permAtMostOne|)))
; Permission implies non-null receiver
(assert (forall ((y@173@01 $Ref)) (!
  (=> (and (= y@173@01 x@170@01) b@171@01) (not (= y@173@01 $Ref.null)))
  :pattern ((inv@175@01 y@173@01))
  :pattern ((img@176@01 y@173@01))
  :qid |f-permImpliesNonNull|)))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; tmp := foo2w(x, !b)
; [eval] foo2w(x, !b)
; [eval] !b
(set-option :timeout 0)
(push) ; 3
; [eval] (b ? wildcard : none)
(push) ; 4
(push) ; 5
(set-option :timeout 10)
(assert (not b@171@01))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 5
(set-option :timeout 10)
(assert (not (not b@171@01)))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
; [then-branch: 28 | !(b@171@01) | live]
; [else-branch: 28 | b@171@01 | live]
(set-option :timeout 0)
(push) ; 5
; [then-branch: 28 | !(b@171@01)]
(assert (not b@171@01))
(declare-const $k@177@01 $Perm)
(assert ($Perm.isReadVar $k@177@01))
(pop) ; 5
(push) ; 5
; [else-branch: 28 | b@171@01]
(assert b@171@01)
(pop) ; 5
(pop) ; 4
; Joined path conditions
(assert ($Perm.isReadVar $k@177@01))
; Joined path conditions
(assert (or b@171@01 (not b@171@01)))
(push) ; 4
(assert (not (forall ((r $Ref)) (!
  (=>
    (and (= r x@170@01) (> (ite (not b@171@01) $k@177@01 $Perm.No) $Perm.No))
    (>
      (ite
        (and (img@176@01 r) (= (inv@175@01 r) x@170@01))
        (ite b@171@01 (/ (to_real 1) (to_real 2)) $Perm.No)
        $Perm.No)
      $Perm.No))
  
  :qid |quant-u-22304|))))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; [state consolidation]
; State saturation: before repetition
(set-option :timeout 10)
(check-sat)
; unknown
(declare-const sm@178@01 $FVF<f>)
; Definitional axioms for snapshot map domain
; Definitional axioms for snapshot map values
(assert (forall ((r $Ref)) (!
  (=>
    (ite (and (img@176@01 r) (= (inv@175@01 r) x@170@01)) b@171@01 false)
    (= ($FVF.lookup_f (as sm@178@01  $FVF<f>) r) ($FVF.lookup_f $t@174@01 r)))
  :pattern (($FVF.lookup_f (as sm@178@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f $t@174@01 r))
  :qid |qp.fvfValDef8|)))
(declare-const pm@179@01 $FPM)
(assert (forall ((r $Ref)) (!
  (=
    ($FVF.perm_f (as pm@179@01  $FPM) r)
    (ite
      (and (img@176@01 r) (= (inv@175@01 r) x@170@01))
      (ite b@171@01 (/ (to_real 1) (to_real 2)) $Perm.No)
      $Perm.No))
  :pattern (($FVF.perm_f (as pm@179@01  $FPM) r))
  :qid |qp.resPrmSumDef9|)))
; Assume upper permission bound for field f
(assert (forall ((r $Ref)) (!
  (<= ($FVF.perm_f (as pm@179@01  $FPM) r) $Perm.Write)
  :pattern ((inv@175@01 r))
  :qid |qp-fld-prm-bnd|)))
; [eval] (b ? wildcard : none)
(set-option :timeout 0)
(push) ; 4
(push) ; 5
(set-option :timeout 10)
(assert (not b@171@01))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 5
(set-option :timeout 10)
(assert (not (not b@171@01)))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
; [then-branch: 29 | !(b@171@01) | live]
; [else-branch: 29 | b@171@01 | live]
(set-option :timeout 0)
(push) ; 5
; [then-branch: 29 | !(b@171@01)]
(assert (not b@171@01))
; [state consolidation]
; State saturation: before repetition
(set-option :timeout 10)
(check-sat)
; unknown
; Definitional axioms for snapshot map domain
; Definitional axioms for snapshot map values
; Assume upper permission bound for field f
(declare-const $k@180@01 $Perm)
(assert ($Perm.isReadVar $k@180@01))
(pop) ; 5
(set-option :timeout 0)
(push) ; 5
; [else-branch: 29 | b@171@01]
(assert b@171@01)
; [state consolidation]
; State saturation: before repetition
(set-option :timeout 10)
(check-sat)
; unknown
; Definitional axioms for snapshot map domain
; Definitional axioms for snapshot map values
; Assume upper permission bound for field f
(pop) ; 5
(pop) ; 4
; Joined path conditions
(assert ($Perm.isReadVar $k@180@01))
; Joined path conditions
(set-option :timeout 0)
(push) ; 4
(assert (not (forall ((r $Ref)) (!
  (=>
    (and (= r x@170@01) (> (ite (not b@171@01) $k@180@01 $Perm.No) $Perm.No))
    (>
      (ite
        (and (img@176@01 r) (= (inv@175@01 r) x@170@01))
        (ite b@171@01 (/ (to_real 1) (to_real 2)) $Perm.No)
        $Perm.No)
      $Perm.No))
  
  :qid |quant-u-22305|))))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(pop) ; 3
(pop) ; 2
(pop) ; 1
; ---------- test4 ----------
(declare-const x@181@01 $Ref)
(declare-const x@182@01 $Ref)
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
; var tmp: Int
(declare-const tmp@183@01 Int)
; [exec]
; inhale acc(x.f, 1 / 2)
(declare-const $t@184@01 Int)
(assert (not (= x@182@01 $Ref.null)))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; tmp := foo3(x)
; [eval] foo3(x)
(set-option :timeout 0)
(push) ; 3
(declare-const $k@185@01 $Perm)
(assert ($Perm.isReadVar $k@185@01))
(push) ; 4
(set-option :timeout 10)
(assert (not (< $Perm.No $k@185@01)))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(assert (foo3%precondition ($SortWrappers.IntTo$Snap $t@184@01) x@182@01))
(pop) ; 3
; Joined path conditions
(assert ($Perm.isReadVar $k@185@01))
(assert (foo3%precondition ($SortWrappers.IntTo$Snap $t@184@01) x@182@01))
(declare-const tmp@186@01 Int)
(assert (= tmp@186@01 (foo3 ($SortWrappers.IntTo$Snap $t@184@01) x@182@01)))
(pop) ; 2
(pop) ; 1
; ---------- test4mce ----------
(declare-const x@187@01 $Ref)
(declare-const x@188@01 $Ref)
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
; var tmp: Int
(declare-const tmp@189@01 Int)
; [exec]
; inhale acc(x.f, 1 / 2)
(declare-const $t@190@01 Int)
(assert (not (= x@188@01 $Ref.null)))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; tmp := foo3(x)
; [eval] foo3(x)
(set-option :timeout 0)
(push) ; 3
(declare-const $k@191@01 $Perm)
(assert ($Perm.isReadVar $k@191@01))
(assert (foo3%precondition ($SortWrappers.IntTo$Snap $t@190@01) x@188@01))
(pop) ; 3
; Joined path conditions
(assert ($Perm.isReadVar $k@191@01))
(assert (foo3%precondition ($SortWrappers.IntTo$Snap $t@190@01) x@188@01))
(declare-const tmp@192@01 Int)
(assert (= tmp@192@01 (foo3 ($SortWrappers.IntTo$Snap $t@190@01) x@188@01)))
(pop) ; 2
(pop) ; 1
; ---------- test4qp ----------
(declare-const x@193@01 $Ref)
(declare-const x@194@01 $Ref)
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
; var tmp: Int
(declare-const tmp@195@01 Int)
; [exec]
; inhale (forall y: Ref ::y == x ==> acc(y.f, 1 / 2))
(declare-const y@196@01 $Ref)
(push) ; 3
; [eval] y == x
(assert (= y@196@01 x@194@01))
(pop) ; 3
(declare-const $t@197@01 $FVF<f>)
(declare-fun inv@198@01 ($Ref) $Ref)
(declare-fun img@199@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
; Check receiver injectivity
(push) ; 3
(assert (not (forall ((y1@196@01 $Ref) (y2@196@01 $Ref)) (!
  (=>
    (and (= y1@196@01 x@194@01) (= y2@196@01 x@194@01) (= y1@196@01 y2@196@01))
    (= y1@196@01 y2@196@01))
  
  :qid |f-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((y@196@01 $Ref)) (!
  (=>
    (= y@196@01 x@194@01)
    (and (= (inv@198@01 y@196@01) y@196@01) (img@199@01 y@196@01)))
  :pattern ((inv@198@01 y@196@01))
  :pattern ((img@199@01 y@196@01))
  :qid |quant-u-22307|)))
(assert (forall ((r $Ref)) (!
  (=> (and (img@199@01 r) (= (inv@198@01 r) x@194@01)) (= (inv@198@01 r) r))
  :pattern ((inv@198@01 r))
  :qid |f-fctOfInv|)))
; Permissions are non-negative
; Field permissions are at most one
; Permission implies non-null receiver
(assert (forall ((y@196@01 $Ref)) (!
  (=> (= y@196@01 x@194@01) (not (= y@196@01 $Ref.null)))
  :pattern ((inv@198@01 y@196@01))
  :pattern ((img@199@01 y@196@01))
  :qid |f-permImpliesNonNull|)))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; tmp := foo3(x)
; [eval] foo3(x)
(set-option :timeout 0)
(push) ; 3
(declare-const $k@200@01 $Perm)
(assert ($Perm.isReadVar $k@200@01))
(push) ; 4
(assert (not (forall ((r $Ref)) (!
  (=>
    (and (= r x@194@01) (> $k@200@01 $Perm.No))
    (>
      (ite
        (and (img@199@01 r) (= (inv@198@01 r) x@194@01))
        (/ (to_real 1) (to_real 2))
        $Perm.No)
      $Perm.No))
  
  :qid |quant-u-22308|))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(declare-const sm@201@01 $FVF<f>)
; Definitional axioms for snapshot map domain (instantiated)
; Definitional axioms for snapshot map values (instantiated)
(assert (=>
  (and (img@199@01 x@194@01) (= (inv@198@01 x@194@01) x@194@01))
  (=
    ($FVF.lookup_f (as sm@201@01  $FVF<f>) x@194@01)
    ($FVF.lookup_f $t@197@01 x@194@01))))
(assert (foo3%precondition ($SortWrappers.IntTo$Snap ($FVF.lookup_f (as sm@201@01  $FVF<f>) x@194@01)) x@194@01))
(pop) ; 3
; Joined path conditions
(assert ($Perm.isReadVar $k@200@01))
(assert (and
  (=>
    (and (img@199@01 x@194@01) (= (inv@198@01 x@194@01) x@194@01))
    (=
      ($FVF.lookup_f (as sm@201@01  $FVF<f>) x@194@01)
      ($FVF.lookup_f $t@197@01 x@194@01)))
  (foo3%precondition ($SortWrappers.IntTo$Snap ($FVF.lookup_f (as sm@201@01  $FVF<f>) x@194@01)) x@194@01)))
(declare-const tmp@202@01 Int)
(assert (=
  tmp@202@01
  (foo3 ($SortWrappers.IntTo$Snap ($FVF.lookup_f (as sm@201@01  $FVF<f>) x@194@01)) x@194@01)))
(pop) ; 2
(pop) ; 1
; ---------- test4f ----------
(declare-const x@203@01 $Ref)
(declare-const x@204@01 $Ref)
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
; var tmp: Int
(declare-const tmp@205@01 Int)
; [exec]
; tmp := foo3(x)
; [eval] foo3(x)
(push) ; 3
(declare-const $k@206@01 $Perm)
(assert ($Perm.isReadVar $k@206@01))
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
; [state consolidation]
; State saturation: before repetition
(set-option :timeout 10)
(check-sat)
; unknown
(declare-const $k@207@01 $Perm)
(assert ($Perm.isReadVar $k@207@01))
(set-option :timeout 0)
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
(pop) ; 3
(pop) ; 2
(pop) ; 1
; ---------- test4mcef ----------
(declare-const x@208@01 $Ref)
(declare-const x@209@01 $Ref)
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
; var tmp: Int
(declare-const tmp@210@01 Int)
; [exec]
; tmp := foo3(x)
; [eval] foo3(x)
(push) ; 3
(declare-const $k@211@01 $Perm)
(assert ($Perm.isReadVar $k@211@01))
(declare-const ss@212@01 Int)
(push) ; 4
(assert (not (=> (< $Perm.No $k@211@01) false)))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; [state consolidation]
; State saturation: before repetition
(set-option :timeout 10)
(check-sat)
; unknown
(declare-const ss@213@01 Int)
(set-option :timeout 0)
(push) ; 4
(assert (not (=> (< $Perm.No $k@211@01) false)))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; [state consolidation]
; State saturation: before repetition
(set-option :timeout 10)
(check-sat)
; unknown
(declare-const $k@214@01 $Perm)
(assert ($Perm.isReadVar $k@214@01))
(declare-const ss@215@01 Int)
(set-option :timeout 0)
(push) ; 4
(assert (not (=> (< $Perm.No $k@214@01) false)))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; [state consolidation]
; State saturation: before repetition
(set-option :timeout 10)
(check-sat)
; unknown
(declare-const ss@216@01 Int)
(set-option :timeout 0)
(push) ; 4
(assert (not (=> (< $Perm.No $k@214@01) false)))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(pop) ; 3
(pop) ; 2
(pop) ; 1
; ---------- test4qpf ----------
(declare-const x@217@01 $Ref)
(declare-const x@218@01 $Ref)
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
; var tmp: Int
(declare-const tmp@219@01 Int)
; [exec]
; inhale (forall y: Ref ::false ==> acc(y.f, 1 / 2))
(declare-const y@220@01 $Ref)
(push) ; 3
(assert false)
(pop) ; 3
(declare-const $t@221@01 $FVF<f>)
(declare-fun inv@222@01 ($Ref) $Ref)
(declare-fun img@223@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
; Check receiver injectivity
; Definitional axioms for inverse functions
; Permissions are non-negative
; Field permissions are at most one
; Permission implies non-null receiver
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; tmp := foo3(x)
; [eval] foo3(x)
(set-option :timeout 0)
(push) ; 3
(declare-const $k@224@01 $Perm)
(assert ($Perm.isReadVar $k@224@01))
(push) ; 4
(assert (not (forall ((r $Ref)) (!
  (=> (and (= r x@218@01) (> $k@224@01 $Perm.No)) false)
  
  :qid |quant-u-22311|))))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; [state consolidation]
; State saturation: before repetition
(set-option :timeout 10)
(check-sat)
; unknown
(declare-const sm@225@01 $FVF<f>)
; Definitional axioms for snapshot map domain
; Definitional axioms for snapshot map values
(declare-const pm@226@01 $FPM)
(assert (forall ((r $Ref)) (!
  (= ($FVF.perm_f (as pm@226@01  $FPM) r) $Perm.No)
  :pattern (($FVF.perm_f (as pm@226@01  $FPM) r))
  :qid |qp.resPrmSumDef12|)))
; Assume upper permission bound for field f
(assert (forall ((r $Ref)) (!
  (<= ($FVF.perm_f (as pm@226@01  $FPM) r) $Perm.Write)
  :pattern ((inv@222@01 r))
  :qid |qp-fld-prm-bnd|)))
(declare-const $k@227@01 $Perm)
(assert ($Perm.isReadVar $k@227@01))
(set-option :timeout 0)
(push) ; 4
(assert (not (forall ((r $Ref)) (!
  (=> (and (= r x@218@01) (> $k@227@01 $Perm.No)) false)
  
  :qid |quant-u-22312|))))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(pop) ; 3
(pop) ; 2
(pop) ; 1
; ---------- test5 ----------
(declare-const x@228@01 $Ref)
(declare-const x@229@01 $Ref)
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
; var tmp: Int
(declare-const tmp@230@01 Int)
; [exec]
; inhale acc(x.f, 1 / 2)
(declare-const $t@231@01 Int)
(assert (not (= x@229@01 $Ref.null)))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; tmp := foo4(x)
; [eval] foo4(x)
(set-option :timeout 0)
(push) ; 3
(assert (foo4%precondition ($Snap.combine
  ($SortWrappers.IntTo$Snap $t@231@01)
  ($SortWrappers.IntTo$Snap $t@231@01)) x@229@01))
(pop) ; 3
; Joined path conditions
(assert (foo4%precondition ($Snap.combine
  ($SortWrappers.IntTo$Snap $t@231@01)
  ($SortWrappers.IntTo$Snap $t@231@01)) x@229@01))
(declare-const tmp@232@01 Int)
(assert (=
  tmp@232@01
  (foo4 ($Snap.combine
    ($SortWrappers.IntTo$Snap $t@231@01)
    ($SortWrappers.IntTo$Snap $t@231@01)) x@229@01)))
(pop) ; 2
(pop) ; 1
; ---------- test5mce ----------
(declare-const x@233@01 $Ref)
(declare-const x@234@01 $Ref)
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
; var tmp: Int
(declare-const tmp@235@01 Int)
; [exec]
; inhale acc(x.f, 1 / 2)
(declare-const $t@236@01 Int)
(assert (not (= x@234@01 $Ref.null)))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; tmp := foo4(x)
; [eval] foo4(x)
(set-option :timeout 0)
(push) ; 3
(assert (foo4%precondition ($Snap.combine
  ($SortWrappers.IntTo$Snap $t@236@01)
  ($SortWrappers.IntTo$Snap $t@236@01)) x@234@01))
(pop) ; 3
; Joined path conditions
(assert (foo4%precondition ($Snap.combine
  ($SortWrappers.IntTo$Snap $t@236@01)
  ($SortWrappers.IntTo$Snap $t@236@01)) x@234@01))
(declare-const tmp@237@01 Int)
(assert (=
  tmp@237@01
  (foo4 ($Snap.combine
    ($SortWrappers.IntTo$Snap $t@236@01)
    ($SortWrappers.IntTo$Snap $t@236@01)) x@234@01)))
(pop) ; 2
(pop) ; 1
; ---------- test5qp ----------
(declare-const x@238@01 $Ref)
(declare-const x@239@01 $Ref)
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
; var tmp: Int
(declare-const tmp@240@01 Int)
; [exec]
; inhale (forall y: Ref ::y == x ==> acc(y.f, 1 / 2))
(declare-const y@241@01 $Ref)
(push) ; 3
; [eval] y == x
(assert (= y@241@01 x@239@01))
(pop) ; 3
(declare-const $t@242@01 $FVF<f>)
(declare-fun inv@243@01 ($Ref) $Ref)
(declare-fun img@244@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
; Check receiver injectivity
(push) ; 3
(assert (not (forall ((y1@241@01 $Ref) (y2@241@01 $Ref)) (!
  (=>
    (and (= y1@241@01 x@239@01) (= y2@241@01 x@239@01) (= y1@241@01 y2@241@01))
    (= y1@241@01 y2@241@01))
  
  :qid |f-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((y@241@01 $Ref)) (!
  (=>
    (= y@241@01 x@239@01)
    (and (= (inv@243@01 y@241@01) y@241@01) (img@244@01 y@241@01)))
  :pattern ((inv@243@01 y@241@01))
  :pattern ((img@244@01 y@241@01))
  :qid |quant-u-22314|)))
(assert (forall ((r $Ref)) (!
  (=> (and (img@244@01 r) (= (inv@243@01 r) x@239@01)) (= (inv@243@01 r) r))
  :pattern ((inv@243@01 r))
  :qid |f-fctOfInv|)))
; Permissions are non-negative
; Field permissions are at most one
; Permission implies non-null receiver
(assert (forall ((y@241@01 $Ref)) (!
  (=> (= y@241@01 x@239@01) (not (= y@241@01 $Ref.null)))
  :pattern ((inv@243@01 y@241@01))
  :pattern ((img@244@01 y@241@01))
  :qid |f-permImpliesNonNull|)))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; tmp := foo4(x)
; [eval] foo4(x)
(set-option :timeout 0)
(push) ; 3
(push) ; 4
(assert (not (forall ((r $Ref)) (!
  (=>
    (= r x@239@01)
    (>
      (ite
        (and (img@244@01 r) (= (inv@243@01 r) x@239@01))
        (/ (to_real 1) (to_real 2))
        $Perm.No)
      $Perm.No))
  
  :qid |quant-u-22315|))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(declare-const sm@245@01 $FVF<f>)
; Definitional axioms for snapshot map domain (instantiated)
; Definitional axioms for snapshot map values (instantiated)
(assert (=>
  (and (img@244@01 x@239@01) (= (inv@243@01 x@239@01) x@239@01))
  (=
    ($FVF.lookup_f (as sm@245@01  $FVF<f>) x@239@01)
    ($FVF.lookup_f $t@242@01 x@239@01))))
(push) ; 4
(assert (not (forall ((r $Ref)) (!
  (=>
    (= r x@239@01)
    (>
      (ite
        (and (img@244@01 r) (= (inv@243@01 r) x@239@01))
        (/ (to_real 1) (to_real 2))
        $Perm.No)
      $Perm.No))
  
  :qid |quant-u-22316|))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for snapshot map domain (instantiated)
; Definitional axioms for snapshot map values (instantiated)
(assert (foo4%precondition ($Snap.combine
  ($SortWrappers.IntTo$Snap ($FVF.lookup_f (as sm@245@01  $FVF<f>) x@239@01))
  ($SortWrappers.IntTo$Snap ($FVF.lookup_f (as sm@245@01  $FVF<f>) x@239@01))) x@239@01))
(pop) ; 3
; Joined path conditions
(assert (and
  (=>
    (and (img@244@01 x@239@01) (= (inv@243@01 x@239@01) x@239@01))
    (=
      ($FVF.lookup_f (as sm@245@01  $FVF<f>) x@239@01)
      ($FVF.lookup_f $t@242@01 x@239@01)))
  (foo4%precondition ($Snap.combine
    ($SortWrappers.IntTo$Snap ($FVF.lookup_f (as sm@245@01  $FVF<f>) x@239@01))
    ($SortWrappers.IntTo$Snap ($FVF.lookup_f (as sm@245@01  $FVF<f>) x@239@01))) x@239@01)))
(declare-const tmp@246@01 Int)
(assert (=
  tmp@246@01
  (foo4 ($Snap.combine
    ($SortWrappers.IntTo$Snap ($FVF.lookup_f (as sm@245@01  $FVF<f>) x@239@01))
    ($SortWrappers.IntTo$Snap ($FVF.lookup_f (as sm@245@01  $FVF<f>) x@239@01))) x@239@01)))
(pop) ; 2
(pop) ; 1
; ---------- test5f ----------
(declare-const x@247@01 $Ref)
(declare-const x@248@01 $Ref)
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
; var tmp: Int
(declare-const tmp@249@01 Int)
; [exec]
; tmp := foo4(x)
; [eval] foo4(x)
(push) ; 3
(check-sat)
; unknown
; [state consolidation]
; State saturation: before repetition
(set-option :timeout 10)
(check-sat)
; unknown
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not false))
(check-sat)
; unknown
(pop) ; 4
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
(push) ; 4
(set-option :timeout 10)
(assert (not false))
(check-sat)
; unknown
(pop) ; 4
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
(push) ; 4
(set-option :timeout 10)
(assert (not false))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(check-sat)
; unknown
(pop) ; 3
(pop) ; 2
(pop) ; 1
; ---------- test5mcef ----------
(declare-const x@250@01 $Ref)
(declare-const x@251@01 $Ref)
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
; var tmp: Int
(declare-const tmp@252@01 Int)
; [exec]
; tmp := foo4(x)
; [eval] foo4(x)
(push) ; 3
(declare-const ss@253@01 Int)
(push) ; 4
(assert (not false))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; [state consolidation]
; State saturation: before repetition
(set-option :timeout 10)
(check-sat)
; unknown
(declare-const ss@254@01 Int)
(set-option :timeout 0)
(push) ; 4
(assert (not false))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; [state consolidation]
; State saturation: before repetition
(set-option :timeout 10)
(check-sat)
; unknown
(declare-const ss@255@01 Int)
(set-option :timeout 0)
(push) ; 4
(assert (not false))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; [state consolidation]
; State saturation: before repetition
(set-option :timeout 10)
(check-sat)
; unknown
(declare-const ss@256@01 Int)
(set-option :timeout 0)
(push) ; 4
(assert (not false))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(pop) ; 3
(pop) ; 2
(pop) ; 1
; ---------- test5qpf ----------
(declare-const x@257@01 $Ref)
(declare-const x@258@01 $Ref)
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
; var tmp: Int
(declare-const tmp@259@01 Int)
; [exec]
; inhale (forall y: Ref ::false ==> acc(y.f, 1 / 2))
(declare-const y@260@01 $Ref)
(push) ; 3
(assert false)
(pop) ; 3
(declare-const $t@261@01 $FVF<f>)
(declare-fun inv@262@01 ($Ref) $Ref)
(declare-fun img@263@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
; Check receiver injectivity
; Definitional axioms for inverse functions
; Permissions are non-negative
; Field permissions are at most one
; Permission implies non-null receiver
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; tmp := foo4(x)
; [eval] foo4(x)
(set-option :timeout 0)
(push) ; 3
(push) ; 4
(assert (not (forall ((r $Ref)) (!
  (=> (= r x@258@01) false)
  
  :qid |quant-u-22319|))))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; [state consolidation]
; State saturation: before repetition
(set-option :timeout 10)
(check-sat)
; unknown
(declare-const sm@264@01 $FVF<f>)
; Definitional axioms for snapshot map domain
; Definitional axioms for snapshot map values
(declare-const pm@265@01 $FPM)
(assert (forall ((r $Ref)) (!
  (= ($FVF.perm_f (as pm@265@01  $FPM) r) $Perm.No)
  :pattern (($FVF.perm_f (as pm@265@01  $FPM) r))
  :qid |qp.resPrmSumDef15|)))
; Assume upper permission bound for field f
(assert (forall ((r $Ref)) (!
  (<= ($FVF.perm_f (as pm@265@01  $FPM) r) $Perm.Write)
  :pattern ((inv@262@01 r))
  :qid |qp-fld-prm-bnd|)))
(set-option :timeout 0)
(push) ; 4
(assert (not (forall ((r $Ref)) (!
  (=> (= r x@258@01) false)
  
  :qid |quant-u-22320|))))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(pop) ; 3
(pop) ; 2
(pop) ; 1
; ---------- test6 ----------
(declare-const x@266@01 $Ref)
(declare-const x@267@01 $Ref)
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
; var tmp: Int
(declare-const tmp@268@01 Int)
; [exec]
; inhale acc(x.f, 1 / 4)
(declare-const $t@269@01 Int)
(assert (not (= x@267@01 $Ref.null)))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale x.f == 4
(declare-const $t@270@01 $Snap)
(assert (= $t@270@01 $Snap.unit))
; [eval] x.f == 4
(assert (= $t@269@01 4))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; fold acc(P(x), 1 / 4)
(assert (P%trigger ($SortWrappers.IntTo$Snap $t@269@01) x@267@01))
; [exec]
; tmp := bar4(x)
; [eval] bar4(x)
(set-option :timeout 0)
(push) ; 3
; [eval] (unfolding acc(P(x), write) in x.f > 0)
(push) ; 4
; [eval] x.f > 0
(pop) ; 4
; Joined path conditions
(push) ; 4
(assert (not (> $t@269@01 0)))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(assert (> $t@269@01 0))
(assert (bar4%precondition ($Snap.combine
  ($SortWrappers.IntTo$Snap $t@269@01)
  $Snap.unit) x@267@01))
(pop) ; 3
; Joined path conditions
(assert (and
  (> $t@269@01 0)
  (bar4%precondition ($Snap.combine
    ($SortWrappers.IntTo$Snap $t@269@01)
    $Snap.unit) x@267@01)))
(declare-const tmp@271@01 Int)
(assert (=
  tmp@271@01
  (bar4 ($Snap.combine ($SortWrappers.IntTo$Snap $t@269@01) $Snap.unit) x@267@01)))
(pop) ; 2
(pop) ; 1
; ---------- test6f ----------
(declare-const x@272@01 $Ref)
(declare-const x@273@01 $Ref)
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
; var tmp: Int
(declare-const tmp@274@01 Int)
; [exec]
; inhale acc(x.f, 1 / 4)
(declare-const $t@275@01 Int)
(assert (not (= x@273@01 $Ref.null)))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale x.f == -2
(declare-const $t@276@01 $Snap)
(assert (= $t@276@01 $Snap.unit))
; [eval] x.f == -2
; [eval] -2
(assert (= $t@275@01 (- 0 2)))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; fold acc(P(x), 1 / 4)
(assert (P%trigger ($SortWrappers.IntTo$Snap $t@275@01) x@273@01))
; [exec]
; tmp := bar4(x)
; [eval] bar4(x)
(set-option :timeout 0)
(push) ; 3
; [eval] (unfolding acc(P(x), write) in x.f > 0)
(push) ; 4
; [eval] x.f > 0
(pop) ; 4
; Joined path conditions
(push) ; 4
(assert (not (> $t@275@01 0)))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; [state consolidation]
; State saturation: before repetition
(set-option :timeout 10)
(check-sat)
; unknown
; [eval] (unfolding acc(P(x), write) in x.f > 0)
(set-option :timeout 0)
(push) ; 4
; [state consolidation]
; State saturation: before repetition
(set-option :timeout 10)
(check-sat)
; unknown
; [eval] x.f > 0
(pop) ; 4
; Joined path conditions
(set-option :timeout 0)
(push) ; 4
(assert (not (> $t@275@01 0)))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; [state consolidation]
; State saturation: before repetition
(set-option :timeout 10)
(check-sat)
; unknown
; [eval] (unfolding acc(P(x), write) in x.f > 0)
(set-option :timeout 0)
(push) ; 4
; [state consolidation]
; State saturation: before repetition
(set-option :timeout 10)
(check-sat)
; unknown
; [eval] x.f > 0
(pop) ; 4
; Joined path conditions
(set-option :timeout 0)
(push) ; 4
(assert (not (> $t@275@01 0)))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; [state consolidation]
; State saturation: before repetition
(set-option :timeout 10)
(check-sat)
; unknown
; [eval] (unfolding acc(P(x), write) in x.f > 0)
(set-option :timeout 0)
(push) ; 4
; [state consolidation]
; State saturation: before repetition
(set-option :timeout 10)
(check-sat)
; unknown
; [eval] x.f > 0
(pop) ; 4
; Joined path conditions
(set-option :timeout 0)
(push) ; 4
(assert (not (> $t@275@01 0)))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(pop) ; 3
(pop) ; 2
(pop) ; 1
; ---------- test7 ----------
(declare-const x@277@01 $Ref)
(declare-const x@278@01 $Ref)
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
; var tmp: Int
(declare-const tmp@279@01 Int)
; [exec]
; inhale acc(x.f, 1 / 2)
(declare-const $t@280@01 Int)
(declare-const sm@281@01 $FVF<f>)
; Definitional axioms for singleton-SM's value
(assert (= ($FVF.lookup_f (as sm@281@01  $FVF<f>) x@278@01) $t@280@01))
(assert (not (= x@278@01 $Ref.null)))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; tmp := foo5(x)
; [eval] foo5(x)
(set-option :timeout 0)
(push) ; 3
(declare-const z@282@01 $Ref)
(push) ; 4
; [eval] z == x
(assert (= z@282@01 x@278@01))
(pop) ; 4
(declare-fun inv@283@01 ($Ref) $Ref)
(declare-fun img@284@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
; Check receiver injectivity
(push) ; 4
(assert (not (forall ((z1@282@01 $Ref) (z2@282@01 $Ref)) (!
  (=>
    (and (= z1@282@01 x@278@01) (= z2@282@01 x@278@01) (= z1@282@01 z2@282@01))
    (= z1@282@01 z2@282@01))
  
  :qid |f-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((z@282@01 $Ref)) (!
  (=>
    (= z@282@01 x@278@01)
    (and (= (inv@283@01 z@282@01) z@282@01) (img@284@01 z@282@01)))
  :pattern ((inv@283@01 z@282@01))
  :pattern ((img@284@01 z@282@01))
  :qid |f-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=> (and (img@284@01 r) (= (inv@283@01 r) x@278@01)) (= (inv@283@01 r) r))
  :pattern ((inv@283@01 r))
  :qid |f-fctOfInv|)))
(push) ; 4
(assert (not (forall ((r $Ref)) (!
  (=>
    (and (= (inv@283@01 r) x@278@01) (img@284@01 r) (= r (inv@283@01 r)))
    (> (ite (= r x@278@01) (/ (to_real 1) (to_real 2)) $Perm.No) $Perm.No))
  
  :qid |quant-u-22322|))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(declare-const sm@285@01 $FVF<f>)
; Definitional axioms for snapshot map domain
(assert (forall ((r $Ref)) (!
  (and
    (=>
      (Set_in r ($FVF.domain_f (as sm@285@01  $FVF<f>)))
      (and (= (inv@283@01 r) x@278@01) (img@284@01 r)))
    (=>
      (and (= (inv@283@01 r) x@278@01) (img@284@01 r))
      (Set_in r ($FVF.domain_f (as sm@285@01  $FVF<f>)))))
  :pattern ((Set_in r ($FVF.domain_f (as sm@285@01  $FVF<f>))))
  :qid |qp.fvfDomDef17|)))
; Definitional axioms for snapshot map values
(assert (forall ((r $Ref)) (!
  (=>
    (and (and (= (inv@283@01 r) x@278@01) (img@284@01 r)) (= r x@278@01))
    (=
      ($FVF.lookup_f (as sm@285@01  $FVF<f>) r)
      ($FVF.lookup_f (as sm@281@01  $FVF<f>) r)))
  :pattern (($FVF.lookup_f (as sm@285@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f (as sm@281@01  $FVF<f>) r))
  :qid |qp.fvfValDef16|)))
(assert (foo5%precondition ($SortWrappers.$FVF<f>To$Snap (as sm@285@01  $FVF<f>)) x@278@01))
(pop) ; 3
; Joined path conditions
(assert (forall ((z@282@01 $Ref)) (!
  (=>
    (= z@282@01 x@278@01)
    (and (= (inv@283@01 z@282@01) z@282@01) (img@284@01 z@282@01)))
  :pattern ((inv@283@01 z@282@01))
  :pattern ((img@284@01 z@282@01))
  :qid |f-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=> (and (img@284@01 r) (= (inv@283@01 r) x@278@01)) (= (inv@283@01 r) r))
  :pattern ((inv@283@01 r))
  :qid |f-fctOfInv|)))
(assert (forall ((r $Ref)) (!
  (and
    (=>
      (Set_in r ($FVF.domain_f (as sm@285@01  $FVF<f>)))
      (and (= (inv@283@01 r) x@278@01) (img@284@01 r)))
    (=>
      (and (= (inv@283@01 r) x@278@01) (img@284@01 r))
      (Set_in r ($FVF.domain_f (as sm@285@01  $FVF<f>)))))
  :pattern ((Set_in r ($FVF.domain_f (as sm@285@01  $FVF<f>))))
  :qid |qp.fvfDomDef17|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and (and (= (inv@283@01 r) x@278@01) (img@284@01 r)) (= r x@278@01))
    (=
      ($FVF.lookup_f (as sm@285@01  $FVF<f>) r)
      ($FVF.lookup_f (as sm@281@01  $FVF<f>) r)))
  :pattern (($FVF.lookup_f (as sm@285@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f (as sm@281@01  $FVF<f>) r))
  :qid |qp.fvfValDef16|)))
(assert (foo5%precondition ($SortWrappers.$FVF<f>To$Snap (as sm@285@01  $FVF<f>)) x@278@01))
(declare-const tmp@286@01 Int)
(assert (=
  tmp@286@01
  (foo5 ($SortWrappers.$FVF<f>To$Snap (as sm@285@01  $FVF<f>)) x@278@01)))
(pop) ; 2
(pop) ; 1
; ---------- test7f ----------
(declare-const x@287@01 $Ref)
(declare-const x@288@01 $Ref)
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
; var tmp: Int
(declare-const tmp@289@01 Int)
; [exec]
; tmp := foo5(x)
; [eval] foo5(x)
(push) ; 3
(declare-const z@290@01 $Ref)
(push) ; 4
; [eval] z == x
(assert (= z@290@01 x@288@01))
(pop) ; 4
(declare-fun inv@291@01 ($Ref) $Ref)
(declare-fun img@292@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
; Check receiver injectivity
(push) ; 4
(assert (not (forall ((z1@290@01 $Ref) (z2@290@01 $Ref)) (!
  (=>
    (and (= z1@290@01 x@288@01) (= z2@290@01 x@288@01) (= z1@290@01 z2@290@01))
    (= z1@290@01 z2@290@01))
  
  :qid |f-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((z@290@01 $Ref)) (!
  (=>
    (= z@290@01 x@288@01)
    (and (= (inv@291@01 z@290@01) z@290@01) (img@292@01 z@290@01)))
  :pattern ((inv@291@01 z@290@01))
  :pattern ((img@292@01 z@290@01))
  :qid |f-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=> (and (img@292@01 r) (= (inv@291@01 r) x@288@01)) (= (inv@291@01 r) r))
  :pattern ((inv@291@01 r))
  :qid |f-fctOfInv|)))
(push) ; 4
(assert (not (forall ((r $Ref)) (!
  (=>
    (and (= (inv@291@01 r) x@288@01) (img@292@01 r) (= r (inv@291@01 r)))
    false)
  
  :qid |quant-u-22324|))))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; [state consolidation]
; State saturation: before repetition
(set-option :timeout 10)
(check-sat)
; unknown
(declare-const z@293@01 $Ref)
(set-option :timeout 0)
(push) ; 4
; [eval] z == x
(assert (= z@293@01 x@288@01))
(pop) ; 4
(declare-fun inv@294@01 ($Ref) $Ref)
(declare-fun img@295@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
; Check receiver injectivity
(push) ; 4
(assert (not (forall ((z1@293@01 $Ref) (z2@293@01 $Ref)) (!
  (=>
    (and (= z1@293@01 x@288@01) (= z2@293@01 x@288@01) (= z1@293@01 z2@293@01))
    (= z1@293@01 z2@293@01))
  
  :qid |f-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((z@293@01 $Ref)) (!
  (=>
    (= z@293@01 x@288@01)
    (and (= (inv@294@01 z@293@01) z@293@01) (img@295@01 z@293@01)))
  :pattern ((inv@294@01 z@293@01))
  :pattern ((img@295@01 z@293@01))
  :qid |f-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=> (and (img@295@01 r) (= (inv@294@01 r) x@288@01)) (= (inv@294@01 r) r))
  :pattern ((inv@294@01 r))
  :qid |f-fctOfInv|)))
(push) ; 4
(assert (not (forall ((r $Ref)) (!
  (=>
    (and (= (inv@294@01 r) x@288@01) (img@295@01 r) (= r (inv@294@01 r)))
    false)
  
  :qid |quant-u-22326|))))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(pop) ; 3
(pop) ; 2
(pop) ; 1
; ---------- test7p ----------
(declare-const x@296@01 $Ref)
(declare-const x@297@01 $Ref)
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
; var tmp: Int
(declare-const tmp@298@01 Int)
; [exec]
; inhale acc(P(x), 1 / 2)
(declare-const $t@299@01 Int)
(declare-const sm@300@01 $PSF<P>)
; Definitional axioms for singleton-SM's value
(assert (=
  ($PSF.lookup_P (as sm@300@01  $PSF<P>) ($SortWrappers.$RefTo$Snap x@297@01))
  $t@299@01))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; tmp := foo5p(x)
; [eval] foo5p(x)
(set-option :timeout 0)
(push) ; 3
(declare-const z@301@01 $Ref)
(push) ; 4
; [eval] z == x
(assert (= z@301@01 x@297@01))
(pop) ; 4
(declare-fun inv@302@01 ($Ref) $Ref)
(declare-fun img@303@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
; Check receiver injectivity
(push) ; 4
(assert (not (forall ((z1@301@01 $Ref) (z2@301@01 $Ref)) (!
  (=>
    (and (= z1@301@01 x@297@01) (= z2@301@01 x@297@01) (= z1@301@01 z2@301@01))
    (= z1@301@01 z2@301@01))
  
  :qid |P-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((z@301@01 $Ref)) (!
  (=>
    (= z@301@01 x@297@01)
    (and (= (inv@302@01 z@301@01) z@301@01) (img@303@01 z@301@01)))
  :pattern ((inv@302@01 z@301@01))
  :pattern ((img@303@01 z@301@01))
  :qid |P-invOfFct|)))
(assert (forall ((x $Ref)) (!
  (=> (and (img@303@01 x) (= (inv@302@01 x) x@297@01)) (= (inv@302@01 x) x))
  :pattern ((inv@302@01 x))
  :qid |P-fctOfInv|)))
(push) ; 4
(assert (not (forall ((x $Ref)) (!
  (=>
    (and (= (inv@302@01 x) x@297@01) (img@303@01 x) (= x (inv@302@01 x)))
    (> (ite (= x x@297@01) (/ (to_real 1) (to_real 2)) $Perm.No) $Perm.No))
  
  :qid |quant-u-22328|))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(declare-const sm@304@01 $PSF<P>)
(declare-const s@305@01 $Snap)
; Definitional axioms for snapshot map domain
(assert (forall ((s@305@01 $Snap)) (!
  (and
    (=>
      (Set_in s@305@01 ($PSF.domain_P (as sm@304@01  $PSF<P>)))
      (and
        (= (inv@302@01 ($SortWrappers.$SnapTo$Ref s@305@01)) x@297@01)
        (img@303@01 ($SortWrappers.$SnapTo$Ref s@305@01))))
    (=>
      (and
        (= (inv@302@01 ($SortWrappers.$SnapTo$Ref s@305@01)) x@297@01)
        (img@303@01 ($SortWrappers.$SnapTo$Ref s@305@01)))
      (Set_in s@305@01 ($PSF.domain_P (as sm@304@01  $PSF<P>)))))
  :pattern ((Set_in s@305@01 ($PSF.domain_P (as sm@304@01  $PSF<P>))))
  :qid |qp.psmDomDef19|)))
; Definitional axioms for snapshot map values
(assert (forall ((s@305@01 $Snap)) (!
  (=>
    (and
      (and
        (= (inv@302@01 ($SortWrappers.$SnapTo$Ref s@305@01)) x@297@01)
        (img@303@01 ($SortWrappers.$SnapTo$Ref s@305@01)))
      (= ($SortWrappers.$SnapTo$Ref s@305@01) x@297@01))
    (and
      (not (= s@305@01 $Snap.unit))
      (=
        ($PSF.lookup_P (as sm@304@01  $PSF<P>) s@305@01)
        ($PSF.lookup_P (as sm@300@01  $PSF<P>) s@305@01))))
  :pattern (($PSF.lookup_P (as sm@304@01  $PSF<P>) s@305@01))
  :pattern (($PSF.lookup_P (as sm@300@01  $PSF<P>) s@305@01))
  :qid |qp.psmValDef18|)))
(assert (foo5p%precondition ($SortWrappers.$PSF<P>To$Snap (as sm@304@01  $PSF<P>)) x@297@01))
(pop) ; 3
; Joined path conditions
(assert (forall ((z@301@01 $Ref)) (!
  (=>
    (= z@301@01 x@297@01)
    (and (= (inv@302@01 z@301@01) z@301@01) (img@303@01 z@301@01)))
  :pattern ((inv@302@01 z@301@01))
  :pattern ((img@303@01 z@301@01))
  :qid |P-invOfFct|)))
(assert (forall ((x $Ref)) (!
  (=> (and (img@303@01 x) (= (inv@302@01 x) x@297@01)) (= (inv@302@01 x) x))
  :pattern ((inv@302@01 x))
  :qid |P-fctOfInv|)))
(assert (forall ((s@305@01 $Snap)) (!
  (and
    (=>
      (Set_in s@305@01 ($PSF.domain_P (as sm@304@01  $PSF<P>)))
      (and
        (= (inv@302@01 ($SortWrappers.$SnapTo$Ref s@305@01)) x@297@01)
        (img@303@01 ($SortWrappers.$SnapTo$Ref s@305@01))))
    (=>
      (and
        (= (inv@302@01 ($SortWrappers.$SnapTo$Ref s@305@01)) x@297@01)
        (img@303@01 ($SortWrappers.$SnapTo$Ref s@305@01)))
      (Set_in s@305@01 ($PSF.domain_P (as sm@304@01  $PSF<P>)))))
  :pattern ((Set_in s@305@01 ($PSF.domain_P (as sm@304@01  $PSF<P>))))
  :qid |qp.psmDomDef19|)))
(assert (forall ((s@305@01 $Snap)) (!
  (=>
    (and
      (and
        (= (inv@302@01 ($SortWrappers.$SnapTo$Ref s@305@01)) x@297@01)
        (img@303@01 ($SortWrappers.$SnapTo$Ref s@305@01)))
      (= ($SortWrappers.$SnapTo$Ref s@305@01) x@297@01))
    (and
      (not (= s@305@01 $Snap.unit))
      (=
        ($PSF.lookup_P (as sm@304@01  $PSF<P>) s@305@01)
        ($PSF.lookup_P (as sm@300@01  $PSF<P>) s@305@01))))
  :pattern (($PSF.lookup_P (as sm@304@01  $PSF<P>) s@305@01))
  :pattern (($PSF.lookup_P (as sm@300@01  $PSF<P>) s@305@01))
  :qid |qp.psmValDef18|)))
(assert (foo5p%precondition ($SortWrappers.$PSF<P>To$Snap (as sm@304@01  $PSF<P>)) x@297@01))
(declare-const tmp@306@01 Int)
(assert (=
  tmp@306@01
  (foo5p ($SortWrappers.$PSF<P>To$Snap (as sm@304@01  $PSF<P>)) x@297@01)))
(pop) ; 2
(pop) ; 1
; ---------- test7pf ----------
(declare-const x@307@01 $Ref)
(declare-const x@308@01 $Ref)
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
; var tmp: Int
(declare-const tmp@309@01 Int)
; [exec]
; tmp := foo5p(x)
; [eval] foo5p(x)
(push) ; 3
(declare-const z@310@01 $Ref)
(push) ; 4
; [eval] z == x
(assert (= z@310@01 x@308@01))
(pop) ; 4
(declare-fun inv@311@01 ($Ref) $Ref)
(declare-fun img@312@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
; Check receiver injectivity
(push) ; 4
(assert (not (forall ((z1@310@01 $Ref) (z2@310@01 $Ref)) (!
  (=>
    (and (= z1@310@01 x@308@01) (= z2@310@01 x@308@01) (= z1@310@01 z2@310@01))
    (= z1@310@01 z2@310@01))
  
  :qid |P-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((z@310@01 $Ref)) (!
  (=>
    (= z@310@01 x@308@01)
    (and (= (inv@311@01 z@310@01) z@310@01) (img@312@01 z@310@01)))
  :pattern ((inv@311@01 z@310@01))
  :pattern ((img@312@01 z@310@01))
  :qid |P-invOfFct|)))
(assert (forall ((x $Ref)) (!
  (=> (and (img@312@01 x) (= (inv@311@01 x) x@308@01)) (= (inv@311@01 x) x))
  :pattern ((inv@311@01 x))
  :qid |P-fctOfInv|)))
(push) ; 4
(assert (not (forall ((x $Ref)) (!
  (=>
    (and (= (inv@311@01 x) x@308@01) (img@312@01 x) (= x (inv@311@01 x)))
    false)
  
  :qid |quant-u-22330|))))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; [state consolidation]
; State saturation: before repetition
(set-option :timeout 10)
(check-sat)
; unknown
(declare-const z@313@01 $Ref)
(set-option :timeout 0)
(push) ; 4
; [eval] z == x
(assert (= z@313@01 x@308@01))
(pop) ; 4
(declare-fun inv@314@01 ($Ref) $Ref)
(declare-fun img@315@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
; Check receiver injectivity
(push) ; 4
(assert (not (forall ((z1@313@01 $Ref) (z2@313@01 $Ref)) (!
  (=>
    (and (= z1@313@01 x@308@01) (= z2@313@01 x@308@01) (= z1@313@01 z2@313@01))
    (= z1@313@01 z2@313@01))
  
  :qid |P-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((z@313@01 $Ref)) (!
  (=>
    (= z@313@01 x@308@01)
    (and (= (inv@314@01 z@313@01) z@313@01) (img@315@01 z@313@01)))
  :pattern ((inv@314@01 z@313@01))
  :pattern ((img@315@01 z@313@01))
  :qid |P-invOfFct|)))
(assert (forall ((x $Ref)) (!
  (=> (and (img@315@01 x) (= (inv@314@01 x) x@308@01)) (= (inv@314@01 x) x))
  :pattern ((inv@314@01 x))
  :qid |P-fctOfInv|)))
(push) ; 4
(assert (not (forall ((x $Ref)) (!
  (=>
    (and (= (inv@314@01 x) x@308@01) (img@315@01 x) (= x (inv@314@01 x)))
    false)
  
  :qid |quant-u-22332|))))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(pop) ; 3
(pop) ; 2
(pop) ; 1
; ---------- test8 ----------
(declare-const x@316@01 $Ref)
(declare-const x@317@01 $Ref)
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
; var tmp: Int
(declare-const tmp@318@01 Int)
; [exec]
; inhale acc(x.f, 1 / 2)
(declare-const $t@319@01 Int)
(declare-const sm@320@01 $FVF<f>)
; Definitional axioms for singleton-SM's value
(assert (= ($FVF.lookup_f (as sm@320@01  $FVF<f>) x@317@01) $t@319@01))
(assert (not (= x@317@01 $Ref.null)))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; tmp := foo5w(x)
; [eval] foo5w(x)
(set-option :timeout 0)
(push) ; 3
(declare-const z@321@01 $Ref)
(push) ; 4
; [eval] z == x
(assert (= z@321@01 x@317@01))
(declare-const $k@322@01 $Perm)
(assert ($Perm.isReadVar $k@322@01))
(pop) ; 4
(declare-fun inv@323@01 ($Ref) $Ref)
(declare-fun img@324@01 ($Ref) Bool)
; Nested auxiliary terms: globals
(assert ($Perm.isReadVar $k@322@01))
; Nested auxiliary terms: non-globals
(push) ; 4
(assert (not (forall ((z@321@01 $Ref)) (!
  (=> (= z@321@01 x@317@01) (or (= $k@322@01 $Perm.No) (< $Perm.No $k@322@01)))
  
  :qid |quant-u-22333|))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; Check receiver injectivity
(push) ; 4
(assert (not (forall ((z1@321@01 $Ref) (z2@321@01 $Ref)) (!
  (=>
    (and
      (and (= z1@321@01 x@317@01) (< $Perm.No $k@322@01))
      (and (= z2@321@01 x@317@01) (< $Perm.No $k@322@01))
      (= z1@321@01 z2@321@01))
    (= z1@321@01 z2@321@01))
  
  :qid |f-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((z@321@01 $Ref)) (!
  (=>
    (and (= z@321@01 x@317@01) (< $Perm.No $k@322@01))
    (and (= (inv@323@01 z@321@01) z@321@01) (img@324@01 z@321@01)))
  :pattern ((inv@323@01 z@321@01))
  :pattern ((img@324@01 z@321@01))
  :qid |f-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@324@01 r) (and (= (inv@323@01 r) x@317@01) (< $Perm.No $k@322@01)))
    (= (inv@323@01 r) r))
  :pattern ((inv@323@01 r))
  :qid |f-fctOfInv|)))
(push) ; 4
(assert (not (forall ((r $Ref)) (!
  (=>
    (and
      (and (= (inv@323@01 r) x@317@01) (img@324@01 r) (= r (inv@323@01 r)))
      (> $k@322@01 $Perm.No))
    (> (ite (= r x@317@01) (/ (to_real 1) (to_real 2)) $Perm.No) $Perm.No))
  
  :qid |quant-u-22334|))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(declare-const sm@325@01 $FVF<f>)
; Definitional axioms for snapshot map domain
(assert (forall ((r $Ref)) (!
  (and
    (=>
      (Set_in r ($FVF.domain_f (as sm@325@01  $FVF<f>)))
      (and (= (inv@323@01 r) x@317@01) (< $Perm.No $k@322@01) (img@324@01 r)))
    (=>
      (and (= (inv@323@01 r) x@317@01) (< $Perm.No $k@322@01) (img@324@01 r))
      (Set_in r ($FVF.domain_f (as sm@325@01  $FVF<f>)))))
  :pattern ((Set_in r ($FVF.domain_f (as sm@325@01  $FVF<f>))))
  :qid |qp.fvfDomDef21|)))
; Definitional axioms for snapshot map values
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and (= (inv@323@01 r) x@317@01) (< $Perm.No $k@322@01) (img@324@01 r))
      (= r x@317@01))
    (=
      ($FVF.lookup_f (as sm@325@01  $FVF<f>) r)
      ($FVF.lookup_f (as sm@320@01  $FVF<f>) r)))
  :pattern (($FVF.lookup_f (as sm@325@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f (as sm@320@01  $FVF<f>) r))
  :qid |qp.fvfValDef20|)))
(assert (foo5w%precondition ($SortWrappers.$FVF<f>To$Snap (as sm@325@01  $FVF<f>)) x@317@01))
(pop) ; 3
; Joined path conditions
(assert ($Perm.isReadVar $k@322@01))
(assert (forall ((z@321@01 $Ref)) (!
  (=>
    (and (= z@321@01 x@317@01) (< $Perm.No $k@322@01))
    (and (= (inv@323@01 z@321@01) z@321@01) (img@324@01 z@321@01)))
  :pattern ((inv@323@01 z@321@01))
  :pattern ((img@324@01 z@321@01))
  :qid |f-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@324@01 r) (and (= (inv@323@01 r) x@317@01) (< $Perm.No $k@322@01)))
    (= (inv@323@01 r) r))
  :pattern ((inv@323@01 r))
  :qid |f-fctOfInv|)))
(assert (forall ((r $Ref)) (!
  (and
    (=>
      (Set_in r ($FVF.domain_f (as sm@325@01  $FVF<f>)))
      (and (= (inv@323@01 r) x@317@01) (< $Perm.No $k@322@01) (img@324@01 r)))
    (=>
      (and (= (inv@323@01 r) x@317@01) (< $Perm.No $k@322@01) (img@324@01 r))
      (Set_in r ($FVF.domain_f (as sm@325@01  $FVF<f>)))))
  :pattern ((Set_in r ($FVF.domain_f (as sm@325@01  $FVF<f>))))
  :qid |qp.fvfDomDef21|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and (= (inv@323@01 r) x@317@01) (< $Perm.No $k@322@01) (img@324@01 r))
      (= r x@317@01))
    (=
      ($FVF.lookup_f (as sm@325@01  $FVF<f>) r)
      ($FVF.lookup_f (as sm@320@01  $FVF<f>) r)))
  :pattern (($FVF.lookup_f (as sm@325@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f (as sm@320@01  $FVF<f>) r))
  :qid |qp.fvfValDef20|)))
(assert (foo5w%precondition ($SortWrappers.$FVF<f>To$Snap (as sm@325@01  $FVF<f>)) x@317@01))
(declare-const tmp@326@01 Int)
(assert (=
  tmp@326@01
  (foo5w ($SortWrappers.$FVF<f>To$Snap (as sm@325@01  $FVF<f>)) x@317@01)))
(pop) ; 2
(pop) ; 1
; ---------- test8f ----------
(declare-const x@327@01 $Ref)
(declare-const x@328@01 $Ref)
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
; var tmp: Int
(declare-const tmp@329@01 Int)
; [exec]
; tmp := foo5w(x)
; [eval] foo5w(x)
(push) ; 3
(declare-const z@330@01 $Ref)
(push) ; 4
; [eval] z == x
(assert (= z@330@01 x@328@01))
(declare-const $k@331@01 $Perm)
(assert ($Perm.isReadVar $k@331@01))
(pop) ; 4
(declare-fun inv@332@01 ($Ref) $Ref)
(declare-fun img@333@01 ($Ref) Bool)
; Nested auxiliary terms: globals
(assert ($Perm.isReadVar $k@331@01))
; Nested auxiliary terms: non-globals
(push) ; 4
(assert (not (forall ((z@330@01 $Ref)) (!
  (=> (= z@330@01 x@328@01) (or (= $k@331@01 $Perm.No) (< $Perm.No $k@331@01)))
  
  :qid |quant-u-22335|))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; Check receiver injectivity
(push) ; 4
(assert (not (forall ((z1@330@01 $Ref) (z2@330@01 $Ref)) (!
  (=>
    (and
      (and (= z1@330@01 x@328@01) (< $Perm.No $k@331@01))
      (and (= z2@330@01 x@328@01) (< $Perm.No $k@331@01))
      (= z1@330@01 z2@330@01))
    (= z1@330@01 z2@330@01))
  
  :qid |f-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((z@330@01 $Ref)) (!
  (=>
    (and (= z@330@01 x@328@01) (< $Perm.No $k@331@01))
    (and (= (inv@332@01 z@330@01) z@330@01) (img@333@01 z@330@01)))
  :pattern ((inv@332@01 z@330@01))
  :pattern ((img@333@01 z@330@01))
  :qid |f-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@333@01 r) (and (= (inv@332@01 r) x@328@01) (< $Perm.No $k@331@01)))
    (= (inv@332@01 r) r))
  :pattern ((inv@332@01 r))
  :qid |f-fctOfInv|)))
(push) ; 4
(assert (not (forall ((r $Ref)) (!
  (=>
    (and
      (and (= (inv@332@01 r) x@328@01) (img@333@01 r) (= r (inv@332@01 r)))
      (> $k@331@01 $Perm.No))
    false)
  
  :qid |quant-u-22336|))))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; [state consolidation]
; State saturation: before repetition
(set-option :timeout 10)
(check-sat)
; unknown
(declare-const z@334@01 $Ref)
(set-option :timeout 0)
(push) ; 4
; [eval] z == x
(assert (= z@334@01 x@328@01))
(declare-const $k@335@01 $Perm)
(assert ($Perm.isReadVar $k@335@01))
(pop) ; 4
(declare-fun inv@336@01 ($Ref) $Ref)
(declare-fun img@337@01 ($Ref) Bool)
; Nested auxiliary terms: globals
(assert ($Perm.isReadVar $k@335@01))
; Nested auxiliary terms: non-globals
(push) ; 4
(assert (not (forall ((z@334@01 $Ref)) (!
  (=> (= z@334@01 x@328@01) (or (= $k@335@01 $Perm.No) (< $Perm.No $k@335@01)))
  
  :qid |quant-u-22337|))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; Check receiver injectivity
(push) ; 4
(assert (not (forall ((z1@334@01 $Ref) (z2@334@01 $Ref)) (!
  (=>
    (and
      (and (= z1@334@01 x@328@01) (< $Perm.No $k@335@01))
      (and (= z2@334@01 x@328@01) (< $Perm.No $k@335@01))
      (= z1@334@01 z2@334@01))
    (= z1@334@01 z2@334@01))
  
  :qid |f-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((z@334@01 $Ref)) (!
  (=>
    (and (= z@334@01 x@328@01) (< $Perm.No $k@335@01))
    (and (= (inv@336@01 z@334@01) z@334@01) (img@337@01 z@334@01)))
  :pattern ((inv@336@01 z@334@01))
  :pattern ((img@337@01 z@334@01))
  :qid |f-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@337@01 r) (and (= (inv@336@01 r) x@328@01) (< $Perm.No $k@335@01)))
    (= (inv@336@01 r) r))
  :pattern ((inv@336@01 r))
  :qid |f-fctOfInv|)))
(push) ; 4
(assert (not (forall ((r $Ref)) (!
  (=>
    (and
      (and (= (inv@336@01 r) x@328@01) (img@337@01 r) (= r (inv@336@01 r)))
      (> $k@335@01 $Perm.No))
    false)
  
  :qid |quant-u-22338|))))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(pop) ; 3
(pop) ; 2
(pop) ; 1
; ---------- test8p ----------
(declare-const x@338@01 $Ref)
(declare-const x@339@01 $Ref)
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
; var tmp: Int
(declare-const tmp@340@01 Int)
; [exec]
; inhale acc(P(x), 1 / 2)
(declare-const $t@341@01 Int)
(declare-const sm@342@01 $PSF<P>)
; Definitional axioms for singleton-SM's value
(assert (=
  ($PSF.lookup_P (as sm@342@01  $PSF<P>) ($SortWrappers.$RefTo$Snap x@339@01))
  $t@341@01))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; tmp := foo5pw(x)
; [eval] foo5pw(x)
(set-option :timeout 0)
(push) ; 3
(declare-const z@343@01 $Ref)
(push) ; 4
; [eval] z == x
(assert (= z@343@01 x@339@01))
(declare-const $k@344@01 $Perm)
(assert ($Perm.isReadVar $k@344@01))
(pop) ; 4
(declare-fun inv@345@01 ($Ref) $Ref)
(declare-fun img@346@01 ($Ref) Bool)
; Nested auxiliary terms: globals
(assert ($Perm.isReadVar $k@344@01))
; Nested auxiliary terms: non-globals
(push) ; 4
(assert (not (forall ((z@343@01 $Ref)) (!
  (=> (= z@343@01 x@339@01) (or (= $k@344@01 $Perm.No) (< $Perm.No $k@344@01)))
  
  :qid |quant-u-22339|))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; Check receiver injectivity
(push) ; 4
(assert (not (forall ((z1@343@01 $Ref) (z2@343@01 $Ref)) (!
  (=>
    (and
      (and (= z1@343@01 x@339@01) (< $Perm.No $k@344@01))
      (and (= z2@343@01 x@339@01) (< $Perm.No $k@344@01))
      (= z1@343@01 z2@343@01))
    (= z1@343@01 z2@343@01))
  
  :qid |P-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((z@343@01 $Ref)) (!
  (=>
    (and (= z@343@01 x@339@01) (< $Perm.No $k@344@01))
    (and (= (inv@345@01 z@343@01) z@343@01) (img@346@01 z@343@01)))
  :pattern ((inv@345@01 z@343@01))
  :pattern ((img@346@01 z@343@01))
  :qid |P-invOfFct|)))
(assert (forall ((x $Ref)) (!
  (=>
    (and (img@346@01 x) (and (= (inv@345@01 x) x@339@01) (< $Perm.No $k@344@01)))
    (= (inv@345@01 x) x))
  :pattern ((inv@345@01 x))
  :qid |P-fctOfInv|)))
(push) ; 4
(assert (not (forall ((x $Ref)) (!
  (=>
    (and
      (and (= (inv@345@01 x) x@339@01) (img@346@01 x) (= x (inv@345@01 x)))
      (> $k@344@01 $Perm.No))
    (> (ite (= x x@339@01) (/ (to_real 1) (to_real 2)) $Perm.No) $Perm.No))
  
  :qid |quant-u-22340|))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(declare-const sm@347@01 $PSF<P>)
(declare-const s@348@01 $Snap)
; Definitional axioms for snapshot map domain
(assert (forall ((s@348@01 $Snap)) (!
  (and
    (=>
      (Set_in s@348@01 ($PSF.domain_P (as sm@347@01  $PSF<P>)))
      (and
        (= (inv@345@01 ($SortWrappers.$SnapTo$Ref s@348@01)) x@339@01)
        (< $Perm.No $k@344@01)
        (img@346@01 ($SortWrappers.$SnapTo$Ref s@348@01))))
    (=>
      (and
        (= (inv@345@01 ($SortWrappers.$SnapTo$Ref s@348@01)) x@339@01)
        (< $Perm.No $k@344@01)
        (img@346@01 ($SortWrappers.$SnapTo$Ref s@348@01)))
      (Set_in s@348@01 ($PSF.domain_P (as sm@347@01  $PSF<P>)))))
  :pattern ((Set_in s@348@01 ($PSF.domain_P (as sm@347@01  $PSF<P>))))
  :qid |qp.psmDomDef23|)))
; Definitional axioms for snapshot map values
(assert (forall ((s@348@01 $Snap)) (!
  (=>
    (and
      (and
        (= (inv@345@01 ($SortWrappers.$SnapTo$Ref s@348@01)) x@339@01)
        (< $Perm.No $k@344@01)
        (img@346@01 ($SortWrappers.$SnapTo$Ref s@348@01)))
      (= ($SortWrappers.$SnapTo$Ref s@348@01) x@339@01))
    (and
      (not (= s@348@01 $Snap.unit))
      (=
        ($PSF.lookup_P (as sm@347@01  $PSF<P>) s@348@01)
        ($PSF.lookup_P (as sm@342@01  $PSF<P>) s@348@01))))
  :pattern (($PSF.lookup_P (as sm@347@01  $PSF<P>) s@348@01))
  :pattern (($PSF.lookup_P (as sm@342@01  $PSF<P>) s@348@01))
  :qid |qp.psmValDef22|)))
(assert (foo5pw%precondition ($SortWrappers.$PSF<P>To$Snap (as sm@347@01  $PSF<P>)) x@339@01))
(pop) ; 3
; Joined path conditions
(assert ($Perm.isReadVar $k@344@01))
(assert (forall ((z@343@01 $Ref)) (!
  (=>
    (and (= z@343@01 x@339@01) (< $Perm.No $k@344@01))
    (and (= (inv@345@01 z@343@01) z@343@01) (img@346@01 z@343@01)))
  :pattern ((inv@345@01 z@343@01))
  :pattern ((img@346@01 z@343@01))
  :qid |P-invOfFct|)))
(assert (forall ((x $Ref)) (!
  (=>
    (and (img@346@01 x) (and (= (inv@345@01 x) x@339@01) (< $Perm.No $k@344@01)))
    (= (inv@345@01 x) x))
  :pattern ((inv@345@01 x))
  :qid |P-fctOfInv|)))
(assert (forall ((s@348@01 $Snap)) (!
  (and
    (=>
      (Set_in s@348@01 ($PSF.domain_P (as sm@347@01  $PSF<P>)))
      (and
        (= (inv@345@01 ($SortWrappers.$SnapTo$Ref s@348@01)) x@339@01)
        (< $Perm.No $k@344@01)
        (img@346@01 ($SortWrappers.$SnapTo$Ref s@348@01))))
    (=>
      (and
        (= (inv@345@01 ($SortWrappers.$SnapTo$Ref s@348@01)) x@339@01)
        (< $Perm.No $k@344@01)
        (img@346@01 ($SortWrappers.$SnapTo$Ref s@348@01)))
      (Set_in s@348@01 ($PSF.domain_P (as sm@347@01  $PSF<P>)))))
  :pattern ((Set_in s@348@01 ($PSF.domain_P (as sm@347@01  $PSF<P>))))
  :qid |qp.psmDomDef23|)))
(assert (forall ((s@348@01 $Snap)) (!
  (=>
    (and
      (and
        (= (inv@345@01 ($SortWrappers.$SnapTo$Ref s@348@01)) x@339@01)
        (< $Perm.No $k@344@01)
        (img@346@01 ($SortWrappers.$SnapTo$Ref s@348@01)))
      (= ($SortWrappers.$SnapTo$Ref s@348@01) x@339@01))
    (and
      (not (= s@348@01 $Snap.unit))
      (=
        ($PSF.lookup_P (as sm@347@01  $PSF<P>) s@348@01)
        ($PSF.lookup_P (as sm@342@01  $PSF<P>) s@348@01))))
  :pattern (($PSF.lookup_P (as sm@347@01  $PSF<P>) s@348@01))
  :pattern (($PSF.lookup_P (as sm@342@01  $PSF<P>) s@348@01))
  :qid |qp.psmValDef22|)))
(assert (foo5pw%precondition ($SortWrappers.$PSF<P>To$Snap (as sm@347@01  $PSF<P>)) x@339@01))
(declare-const tmp@349@01 Int)
(assert (=
  tmp@349@01
  (foo5pw ($SortWrappers.$PSF<P>To$Snap (as sm@347@01  $PSF<P>)) x@339@01)))
(pop) ; 2
(pop) ; 1
; ---------- test8pf ----------
(declare-const x@350@01 $Ref)
(declare-const x@351@01 $Ref)
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
; var tmp: Int
(declare-const tmp@352@01 Int)
; [exec]
; tmp := foo5pw(x)
; [eval] foo5pw(x)
(push) ; 3
(declare-const z@353@01 $Ref)
(push) ; 4
; [eval] z == x
(assert (= z@353@01 x@351@01))
(declare-const $k@354@01 $Perm)
(assert ($Perm.isReadVar $k@354@01))
(pop) ; 4
(declare-fun inv@355@01 ($Ref) $Ref)
(declare-fun img@356@01 ($Ref) Bool)
; Nested auxiliary terms: globals
(assert ($Perm.isReadVar $k@354@01))
; Nested auxiliary terms: non-globals
(push) ; 4
(assert (not (forall ((z@353@01 $Ref)) (!
  (=> (= z@353@01 x@351@01) (or (= $k@354@01 $Perm.No) (< $Perm.No $k@354@01)))
  
  :qid |quant-u-22341|))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; Check receiver injectivity
(push) ; 4
(assert (not (forall ((z1@353@01 $Ref) (z2@353@01 $Ref)) (!
  (=>
    (and
      (and (= z1@353@01 x@351@01) (< $Perm.No $k@354@01))
      (and (= z2@353@01 x@351@01) (< $Perm.No $k@354@01))
      (= z1@353@01 z2@353@01))
    (= z1@353@01 z2@353@01))
  
  :qid |P-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((z@353@01 $Ref)) (!
  (=>
    (and (= z@353@01 x@351@01) (< $Perm.No $k@354@01))
    (and (= (inv@355@01 z@353@01) z@353@01) (img@356@01 z@353@01)))
  :pattern ((inv@355@01 z@353@01))
  :pattern ((img@356@01 z@353@01))
  :qid |P-invOfFct|)))
(assert (forall ((x $Ref)) (!
  (=>
    (and (img@356@01 x) (and (= (inv@355@01 x) x@351@01) (< $Perm.No $k@354@01)))
    (= (inv@355@01 x) x))
  :pattern ((inv@355@01 x))
  :qid |P-fctOfInv|)))
(push) ; 4
(assert (not (forall ((x $Ref)) (!
  (=>
    (and
      (and (= (inv@355@01 x) x@351@01) (img@356@01 x) (= x (inv@355@01 x)))
      (> $k@354@01 $Perm.No))
    false)
  
  :qid |quant-u-22342|))))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; [state consolidation]
; State saturation: before repetition
(set-option :timeout 10)
(check-sat)
; unknown
(declare-const z@357@01 $Ref)
(set-option :timeout 0)
(push) ; 4
; [eval] z == x
(assert (= z@357@01 x@351@01))
(declare-const $k@358@01 $Perm)
(assert ($Perm.isReadVar $k@358@01))
(pop) ; 4
(declare-fun inv@359@01 ($Ref) $Ref)
(declare-fun img@360@01 ($Ref) Bool)
; Nested auxiliary terms: globals
(assert ($Perm.isReadVar $k@358@01))
; Nested auxiliary terms: non-globals
(push) ; 4
(assert (not (forall ((z@357@01 $Ref)) (!
  (=> (= z@357@01 x@351@01) (or (= $k@358@01 $Perm.No) (< $Perm.No $k@358@01)))
  
  :qid |quant-u-22343|))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; Check receiver injectivity
(push) ; 4
(assert (not (forall ((z1@357@01 $Ref) (z2@357@01 $Ref)) (!
  (=>
    (and
      (and (= z1@357@01 x@351@01) (< $Perm.No $k@358@01))
      (and (= z2@357@01 x@351@01) (< $Perm.No $k@358@01))
      (= z1@357@01 z2@357@01))
    (= z1@357@01 z2@357@01))
  
  :qid |P-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((z@357@01 $Ref)) (!
  (=>
    (and (= z@357@01 x@351@01) (< $Perm.No $k@358@01))
    (and (= (inv@359@01 z@357@01) z@357@01) (img@360@01 z@357@01)))
  :pattern ((inv@359@01 z@357@01))
  :pattern ((img@360@01 z@357@01))
  :qid |P-invOfFct|)))
(assert (forall ((x $Ref)) (!
  (=>
    (and (img@360@01 x) (and (= (inv@359@01 x) x@351@01) (< $Perm.No $k@358@01)))
    (= (inv@359@01 x) x))
  :pattern ((inv@359@01 x))
  :qid |P-fctOfInv|)))
(push) ; 4
(assert (not (forall ((x $Ref)) (!
  (=>
    (and
      (and (= (inv@359@01 x) x@351@01) (img@360@01 x) (= x (inv@359@01 x)))
      (> $k@358@01 $Perm.No))
    false)
  
  :qid |quant-u-22344|))))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(pop) ; 3
(pop) ; 2
(pop) ; 1
