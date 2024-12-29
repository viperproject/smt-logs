(get-info :version)
; (:version "4.12.1")
; Started: 2024-12-29 20:05:15
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
; Declaring symbols related to program functions (from program analysis)
(declare-fun gg ($Snap $Ref) Bool)
(declare-fun gg%limited ($Snap $Ref) Bool)
(declare-fun gg%stateless ($Ref) Bool)
(declare-fun gg%precondition ($Snap $Ref) Bool)
(declare-fun g ($Snap $Ref) Bool)
(declare-fun g%limited ($Snap $Ref) Bool)
(declare-fun g%stateless ($Ref) Bool)
(declare-fun g%precondition ($Snap $Ref) Bool)
(declare-fun h ($Snap $Ref) Bool)
(declare-fun h%limited ($Snap $Ref) Bool)
(declare-fun h%stateless ($Ref) Bool)
(declare-fun h%precondition ($Snap $Ref) Bool)
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
; End preamble
; ------------------------------------------------------------
; State saturation: after preamble
(set-option :timeout 100)
(check-sat)
; unknown
; ------------------------------------------------------------
; Begin function- and predicate-related preamble
; Declaring symbols related to program functions (from verification)
(declare-fun inv@7@00 ($Snap $Ref $Ref) $Ref)
(declare-fun img@8@00 ($Snap $Ref $Ref) Bool)
(assert (forall ((s@$ $Snap) (x@0@00 $Ref)) (!
  (= (gg%limited s@$ x@0@00) (gg s@$ x@0@00))
  :pattern ((gg s@$ x@0@00))
  :qid |quant-u-22978|)))
(assert (forall ((s@$ $Snap) (x@0@00 $Ref)) (!
  (gg%stateless x@0@00)
  :pattern ((gg%limited s@$ x@0@00))
  :qid |quant-u-22979|)))
(assert (forall ((s@$ $Snap) (x@2@00 $Ref)) (!
  (= (g%limited s@$ x@2@00) (g s@$ x@2@00))
  :pattern ((g s@$ x@2@00))
  :qid |quant-u-22980|)))
(assert (forall ((s@$ $Snap) (x@2@00 $Ref)) (!
  (g%stateless x@2@00)
  :pattern ((g%limited s@$ x@2@00))
  :qid |quant-u-22981|)))
(assert (forall ((s@$ $Snap) (x@4@00 $Ref)) (!
  (= (h%limited s@$ x@4@00) (h s@$ x@4@00))
  :pattern ((h s@$ x@4@00))
  :qid |quant-u-22982|)))
(assert (forall ((s@$ $Snap) (x@4@00 $Ref)) (!
  (h%stateless x@4@00)
  :pattern ((h%limited s@$ x@4@00))
  :qid |quant-u-22983|)))
; End function- and predicate-related preamble
; ------------------------------------------------------------
; ---------- foo ----------
(declare-const x@0@01 $Ref)
(declare-const x@1@01 $Ref)
(set-option :timeout 0)
(push) ; 1
(declare-const $t@2@01 $Snap)
(assert (= $t@2@01 ($Snap.combine ($Snap.first $t@2@01) ($Snap.second $t@2@01))))
(assert (not (= x@1@01 $Ref.null)))
(assert (= ($Snap.second $t@2@01) $Snap.unit))
; [eval] g(x)
(push) ; 2
(assert (g%precondition ($Snap.first $t@2@01) x@1@01))
(pop) ; 2
; Joined path conditions
(assert (g%precondition ($Snap.first $t@2@01) x@1@01))
(assert (g ($Snap.first $t@2@01) x@1@01))
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
(set-option :timeout 0)
(push) ; 2
(pop) ; 2
(push) ; 2
; [exec]
; exhale acc(x.f, write)
; [exec]
; inhale acc(x.f, write)
(declare-const $t@3@01 $Ref)
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale (forall y: Ref :: { old(g(y)) } h(y))
(declare-const $t@4@01 $Snap)
(assert (= $t@4@01 $Snap.unit))
; [eval] (forall y: Ref :: { old(g(y)) } h(y))
(declare-const y@5@01 $Ref)
(set-option :timeout 0)
(push) ; 3
; [eval] h(y)
(push) ; 4
(assert (h%precondition $Snap.unit y@5@01))
(pop) ; 4
; Joined path conditions
(assert (h%precondition $Snap.unit y@5@01))
; [eval] old(g(y))
; [eval] g(y)
(push) ; 4
(push) ; 5
(set-option :timeout 10)
(assert (not (= x@1@01 y@5@01)))
(check-sat)
; unknown
(pop) ; 5
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
(push) ; 5
(set-option :timeout 10)
(assert (not (= x@1@01 y@5@01)))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 5
(set-option :timeout 10)
(assert (not false))
(check-sat)
; unknown
(pop) ; 5
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
(push) ; 5
(set-option :timeout 10)
(assert (not (= x@1@01 y@5@01)))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 5
(set-option :timeout 10)
(assert (not false))
(check-sat)
; unknown
(pop) ; 5
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
(push) ; 5
(set-option :timeout 10)
(assert (not (= x@1@01 y@5@01)))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 5
(set-option :timeout 10)
(assert (not false))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(check-sat)
; unknown
(pop) ; 4
(pop) ; 3
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall ((y@5@01 $Ref)) (!
  (h%precondition $Snap.unit y@5@01)
  
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/all/issues/carbon/0264.vpr@13@12@13@45-aux|)))
(assert (forall ((y@5@01 $Ref)) (!
  (h $Snap.unit y@5@01)
  
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/all/issues/carbon/0264.vpr@13@12@13@45|)))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; assert h(x)
; [eval] h(x)
(set-option :timeout 0)
(push) ; 3
(assert (h%precondition $Snap.unit x@1@01))
(pop) ; 3
; Joined path conditions
(assert (h%precondition $Snap.unit x@1@01))
(push) ; 3
(assert (not (h $Snap.unit x@1@01)))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(assert (h $Snap.unit x@1@01))
(pop) ; 2
(pop) ; 1
; ---------- wrong_foo ----------
(declare-const x@6@01 $Ref)
(declare-const x@7@01 $Ref)
(push) ; 1
(declare-const $t@8@01 $Snap)
(assert (= $t@8@01 ($Snap.combine ($Snap.first $t@8@01) ($Snap.second $t@8@01))))
(assert (not (= x@7@01 $Ref.null)))
(assert (= ($Snap.second $t@8@01) $Snap.unit))
; [eval] g(x)
(push) ; 2
(assert (g%precondition ($Snap.first $t@8@01) x@7@01))
(pop) ; 2
; Joined path conditions
(assert (g%precondition ($Snap.first $t@8@01) x@7@01))
(assert (g ($Snap.first $t@8@01) x@7@01))
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
(set-option :timeout 0)
(push) ; 2
(pop) ; 2
(push) ; 2
; [exec]
; exhale acc(x.f, write)
; [exec]
; inhale acc(x.f, write)
(declare-const $t@9@01 $Ref)
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale (forall y: Ref :: { g(y) } h(y))
(declare-const $t@10@01 $Snap)
(assert (= $t@10@01 $Snap.unit))
; [eval] (forall y: Ref :: { g(y) } h(y))
(declare-const y@11@01 $Ref)
(set-option :timeout 0)
(push) ; 3
; [eval] h(y)
(push) ; 4
(assert (h%precondition $Snap.unit y@11@01))
(pop) ; 4
; Joined path conditions
(assert (h%precondition $Snap.unit y@11@01))
; [eval] g(y)
(push) ; 4
(push) ; 5
(set-option :timeout 10)
(assert (not (= x@7@01 y@11@01)))
(check-sat)
; unknown
(pop) ; 5
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
(push) ; 5
(set-option :timeout 10)
(assert (not (= x@7@01 y@11@01)))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 5
(set-option :timeout 10)
(assert (not false))
(check-sat)
; unknown
(pop) ; 5
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
(push) ; 5
(set-option :timeout 10)
(assert (not (= x@7@01 y@11@01)))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 5
(set-option :timeout 10)
(assert (not false))
(check-sat)
; unknown
(pop) ; 5
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
(push) ; 5
(set-option :timeout 10)
(assert (not (= x@7@01 y@11@01)))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 5
(set-option :timeout 10)
(assert (not false))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(check-sat)
; unknown
(pop) ; 4
(pop) ; 3
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall ((y@11@01 $Ref)) (!
  (h%precondition $Snap.unit y@11@01)
  
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/all/issues/carbon/0264.vpr@22@12@22@40-aux|)))
(assert (forall ((y@11@01 $Ref)) (!
  (h $Snap.unit y@11@01)
  
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/all/issues/carbon/0264.vpr@22@12@22@40|)))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; assert h(x)
; [eval] h(x)
(set-option :timeout 0)
(push) ; 3
(assert (h%precondition $Snap.unit x@7@01))
(pop) ; 3
; Joined path conditions
(assert (h%precondition $Snap.unit x@7@01))
(push) ; 3
(assert (not (h $Snap.unit x@7@01)))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(assert (h $Snap.unit x@7@01))
(pop) ; 2
(pop) ; 1
; ---------- bar ----------
(declare-const x@12@01 $Ref)
(declare-const x@13@01 $Ref)
(push) ; 1
(declare-const $t@14@01 $Snap)
(assert (= $t@14@01 ($Snap.combine ($Snap.first $t@14@01) ($Snap.second $t@14@01))))
(declare-const sm@15@01 $FVF<f>)
; Definitional axioms for singleton-SM's value
(assert (=
  ($FVF.lookup_f (as sm@15@01  $FVF<f>) x@13@01)
  ($SortWrappers.$SnapTo$Ref ($Snap.first $t@14@01))))
(assert (not (= x@13@01 $Ref.null)))
(assert (= ($Snap.second $t@14@01) $Snap.unit))
; [eval] gg(x)
(push) ; 2
(declare-const z@16@01 $Ref)
(push) ; 3
; [eval] z == x
(assert (= z@16@01 x@13@01))
(pop) ; 3
(declare-fun inv@17@01 ($Ref) $Ref)
(declare-fun img@18@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
; Check receiver injectivity
(push) ; 3
(assert (not (forall ((z1@16@01 $Ref) (z2@16@01 $Ref)) (!
  (=>
    (and (= z1@16@01 x@13@01) (= z2@16@01 x@13@01) (= z1@16@01 z2@16@01))
    (= z1@16@01 z2@16@01))
  
  :qid |f-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((z@16@01 $Ref)) (!
  (=>
    (= z@16@01 x@13@01)
    (and (= (inv@17@01 z@16@01) z@16@01) (img@18@01 z@16@01)))
  :pattern ((inv@17@01 z@16@01))
  :pattern ((img@18@01 z@16@01))
  :qid |f-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=> (and (img@18@01 r) (= (inv@17@01 r) x@13@01)) (= (inv@17@01 r) r))
  :pattern ((inv@17@01 r))
  :qid |f-fctOfInv|)))
(push) ; 3
(assert (not (forall ((r $Ref)) (!
  (=>
    (and (= (inv@17@01 r) x@13@01) (img@18@01 r) (= r (inv@17@01 r)))
    (> (ite (= r x@13@01) $Perm.Write $Perm.No) $Perm.No))
  
  :qid |quant-u-22987|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(declare-const sm@19@01 $FVF<f>)
; Definitional axioms for snapshot map domain
(assert (forall ((r $Ref)) (!
  (and
    (=>
      (Set_in r ($FVF.domain_f (as sm@19@01  $FVF<f>)))
      (and (= (inv@17@01 r) x@13@01) (img@18@01 r)))
    (=>
      (and (= (inv@17@01 r) x@13@01) (img@18@01 r))
      (Set_in r ($FVF.domain_f (as sm@19@01  $FVF<f>)))))
  :pattern ((Set_in r ($FVF.domain_f (as sm@19@01  $FVF<f>))))
  :qid |qp.fvfDomDef1|)))
; Definitional axioms for snapshot map values
(assert (forall ((r $Ref)) (!
  (=>
    (and (and (= (inv@17@01 r) x@13@01) (img@18@01 r)) (= r x@13@01))
    (=
      ($FVF.lookup_f (as sm@19@01  $FVF<f>) r)
      ($FVF.lookup_f (as sm@15@01  $FVF<f>) r)))
  :pattern (($FVF.lookup_f (as sm@19@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f (as sm@15@01  $FVF<f>) r))
  :qid |qp.fvfValDef0|)))
(assert (gg%precondition ($SortWrappers.$FVF<f>To$Snap (as sm@19@01  $FVF<f>)) x@13@01))
(pop) ; 2
; Joined path conditions
(assert (forall ((z@16@01 $Ref)) (!
  (=>
    (= z@16@01 x@13@01)
    (and (= (inv@17@01 z@16@01) z@16@01) (img@18@01 z@16@01)))
  :pattern ((inv@17@01 z@16@01))
  :pattern ((img@18@01 z@16@01))
  :qid |f-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=> (and (img@18@01 r) (= (inv@17@01 r) x@13@01)) (= (inv@17@01 r) r))
  :pattern ((inv@17@01 r))
  :qid |f-fctOfInv|)))
(assert (forall ((r $Ref)) (!
  (and
    (=>
      (Set_in r ($FVF.domain_f (as sm@19@01  $FVF<f>)))
      (and (= (inv@17@01 r) x@13@01) (img@18@01 r)))
    (=>
      (and (= (inv@17@01 r) x@13@01) (img@18@01 r))
      (Set_in r ($FVF.domain_f (as sm@19@01  $FVF<f>)))))
  :pattern ((Set_in r ($FVF.domain_f (as sm@19@01  $FVF<f>))))
  :qid |qp.fvfDomDef1|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and (and (= (inv@17@01 r) x@13@01) (img@18@01 r)) (= r x@13@01))
    (=
      ($FVF.lookup_f (as sm@19@01  $FVF<f>) r)
      ($FVF.lookup_f (as sm@15@01  $FVF<f>) r)))
  :pattern (($FVF.lookup_f (as sm@19@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f (as sm@15@01  $FVF<f>) r))
  :qid |qp.fvfValDef0|)))
(assert (gg%precondition ($SortWrappers.$FVF<f>To$Snap (as sm@19@01  $FVF<f>)) x@13@01))
(assert (gg ($SortWrappers.$FVF<f>To$Snap (as sm@19@01  $FVF<f>)) x@13@01))
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
(set-option :timeout 0)
(push) ; 2
(pop) ; 2
(push) ; 2
; [exec]
; exhale acc(x.f, write)
; Precomputing data for removing quantified permissions
(define-fun pTaken@20@01 ((r $Ref)) $Perm
  (ite
    (= r x@13@01)
    ($Perm.min (ite (= r x@13@01) $Perm.Write $Perm.No) $Perm.Write)
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
(assert (not (= (- $Perm.Write (pTaken@20@01 x@13@01)) $Perm.No)))
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
  (=> (= r x@13@01) (= (- $Perm.Write (pTaken@20@01 r)) $Perm.No))
  
  :qid |quant-u-22990|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Final check if taken enough permissions
; Done removing quantified permissions
; [exec]
; inhale acc(x.f, write)
(declare-const $t@21@01 $Ref)
(declare-const sm@22@01 $FVF<f>)
; Definitional axioms for singleton-SM's value
(assert (= ($FVF.lookup_f (as sm@22@01  $FVF<f>) x@13@01) $t@21@01))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale (forall y: Ref :: { old(gg(y)) } h(y))
(declare-const $t@23@01 $Snap)
(assert (= $t@23@01 $Snap.unit))
; [eval] (forall y: Ref :: { old(gg(y)) } h(y))
(declare-const y@24@01 $Ref)
(set-option :timeout 0)
(push) ; 3
; [eval] h(y)
(push) ; 4
(assert (h%precondition $Snap.unit y@24@01))
(pop) ; 4
; Joined path conditions
(assert (h%precondition $Snap.unit y@24@01))
; [eval] old(gg(y))
; [eval] gg(y)
(push) ; 4
(declare-const z@25@01 $Ref)
(push) ; 5
; [eval] z == x
(assert (= z@25@01 y@24@01))
(pop) ; 5
(declare-fun inv@26@01 ($Ref) $Ref)
(declare-fun img@27@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
; Check receiver injectivity
(push) ; 5
(assert (not (forall ((z1@25@01 $Ref) (z2@25@01 $Ref)) (!
  (=>
    (and (= z1@25@01 y@24@01) (= z2@25@01 y@24@01) (= z1@25@01 z2@25@01))
    (= z1@25@01 z2@25@01))
  
  :qid |f-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((z@25@01 $Ref)) (!
  (=>
    (= z@25@01 y@24@01)
    (and (= (inv@26@01 z@25@01) z@25@01) (img@27@01 z@25@01)))
  :pattern ((inv@26@01 z@25@01))
  :pattern ((img@27@01 z@25@01))
  :qid |f-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=> (and (img@27@01 r) (= (inv@26@01 r) y@24@01)) (= (inv@26@01 r) r))
  :pattern ((inv@26@01 r))
  :qid |f-fctOfInv|)))
(push) ; 5
(assert (not (forall ((r $Ref)) (!
  (=>
    (and (= (inv@26@01 r) y@24@01) (img@27@01 r) (= r (inv@26@01 r)))
    (> (ite (= r x@13@01) $Perm.Write $Perm.No) $Perm.No))
  
  :qid |quant-u-22992|))))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
; [state consolidation]
; State saturation: before repetition
(set-option :timeout 10)
(check-sat)
; unknown
(declare-const sm@28@01 $FVF<f>)
; Definitional axioms for snapshot map domain
; Definitional axioms for snapshot map values
(assert (forall ((r $Ref)) (!
  (=>
    (= r x@13@01)
    (=
      ($FVF.lookup_f (as sm@28@01  $FVF<f>) r)
      ($FVF.lookup_f (as sm@15@01  $FVF<f>) r)))
  :pattern (($FVF.lookup_f (as sm@28@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f (as sm@15@01  $FVF<f>) r))
  :qid |qp.fvfValDef2|)))
(declare-const pm@29@01 $FPM)
(assert (forall ((r $Ref)) (!
  (=
    ($FVF.perm_f (as pm@29@01  $FPM) r)
    (ite (= r x@13@01) $Perm.Write $Perm.No))
  :pattern (($FVF.perm_f (as pm@29@01  $FPM) r))
  :qid |qp.resPrmSumDef3|)))
(assert (<= ($FVF.perm_f (as pm@29@01  $FPM) x@13@01) $Perm.Write))
(declare-const z@30@01 $Ref)
(set-option :timeout 0)
(push) ; 5
; [eval] z == x
(assert (= z@30@01 y@24@01))
(pop) ; 5
(declare-fun inv@31@01 ($Ref) $Ref)
(declare-fun img@32@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
; Check receiver injectivity
(push) ; 5
(assert (not (forall ((z1@30@01 $Ref) (z2@30@01 $Ref)) (!
  (=>
    (and (= z1@30@01 y@24@01) (= z2@30@01 y@24@01) (= z1@30@01 z2@30@01))
    (= z1@30@01 z2@30@01))
  
  :qid |f-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((z@30@01 $Ref)) (!
  (=>
    (= z@30@01 y@24@01)
    (and (= (inv@31@01 z@30@01) z@30@01) (img@32@01 z@30@01)))
  :pattern ((inv@31@01 z@30@01))
  :pattern ((img@32@01 z@30@01))
  :qid |f-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=> (and (img@32@01 r) (= (inv@31@01 r) y@24@01)) (= (inv@31@01 r) r))
  :pattern ((inv@31@01 r))
  :qid |f-fctOfInv|)))
(push) ; 5
(assert (not (forall ((r $Ref)) (!
  (=>
    (and (= (inv@31@01 r) y@24@01) (img@32@01 r) (= r (inv@31@01 r)))
    (> (ite (= r x@13@01) $Perm.Write $Perm.No) $Perm.No))
  
  :qid |quant-u-22994|))))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(pop) ; 4
(pop) ; 3
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall ((y@24@01 $Ref)) (!
  (h%precondition $Snap.unit y@24@01)
  
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/all/issues/carbon/0264.vpr@36@12@36@46-aux|)))
(assert (forall ((y@24@01 $Ref)) (!
  (h $Snap.unit y@24@01)
  
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/all/issues/carbon/0264.vpr@36@12@36@46|)))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; assert h(x)
; [eval] h(x)
(set-option :timeout 0)
(push) ; 3
(assert (h%precondition $Snap.unit x@13@01))
(pop) ; 3
; Joined path conditions
(assert (h%precondition $Snap.unit x@13@01))
(push) ; 3
(assert (not (h $Snap.unit x@13@01)))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(assert (h $Snap.unit x@13@01))
(pop) ; 2
(pop) ; 1
; ---------- wrong_bar ----------
(declare-const x@33@01 $Ref)
(declare-const x@34@01 $Ref)
(push) ; 1
(declare-const $t@35@01 $Snap)
(assert (= $t@35@01 ($Snap.combine ($Snap.first $t@35@01) ($Snap.second $t@35@01))))
(declare-const sm@36@01 $FVF<f>)
; Definitional axioms for singleton-SM's value
(assert (=
  ($FVF.lookup_f (as sm@36@01  $FVF<f>) x@34@01)
  ($SortWrappers.$SnapTo$Ref ($Snap.first $t@35@01))))
(assert (not (= x@34@01 $Ref.null)))
(assert (= ($Snap.second $t@35@01) $Snap.unit))
; [eval] gg(x)
(push) ; 2
(declare-const z@37@01 $Ref)
(push) ; 3
; [eval] z == x
(assert (= z@37@01 x@34@01))
(pop) ; 3
(declare-fun inv@38@01 ($Ref) $Ref)
(declare-fun img@39@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
; Check receiver injectivity
(push) ; 3
(assert (not (forall ((z1@37@01 $Ref) (z2@37@01 $Ref)) (!
  (=>
    (and (= z1@37@01 x@34@01) (= z2@37@01 x@34@01) (= z1@37@01 z2@37@01))
    (= z1@37@01 z2@37@01))
  
  :qid |f-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((z@37@01 $Ref)) (!
  (=>
    (= z@37@01 x@34@01)
    (and (= (inv@38@01 z@37@01) z@37@01) (img@39@01 z@37@01)))
  :pattern ((inv@38@01 z@37@01))
  :pattern ((img@39@01 z@37@01))
  :qid |f-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=> (and (img@39@01 r) (= (inv@38@01 r) x@34@01)) (= (inv@38@01 r) r))
  :pattern ((inv@38@01 r))
  :qid |f-fctOfInv|)))
(push) ; 3
(assert (not (forall ((r $Ref)) (!
  (=>
    (and (= (inv@38@01 r) x@34@01) (img@39@01 r) (= r (inv@38@01 r)))
    (> (ite (= r x@34@01) $Perm.Write $Perm.No) $Perm.No))
  
  :qid |quant-u-22996|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(declare-const sm@40@01 $FVF<f>)
; Definitional axioms for snapshot map domain
(assert (forall ((r $Ref)) (!
  (and
    (=>
      (Set_in r ($FVF.domain_f (as sm@40@01  $FVF<f>)))
      (and (= (inv@38@01 r) x@34@01) (img@39@01 r)))
    (=>
      (and (= (inv@38@01 r) x@34@01) (img@39@01 r))
      (Set_in r ($FVF.domain_f (as sm@40@01  $FVF<f>)))))
  :pattern ((Set_in r ($FVF.domain_f (as sm@40@01  $FVF<f>))))
  :qid |qp.fvfDomDef5|)))
; Definitional axioms for snapshot map values
(assert (forall ((r $Ref)) (!
  (=>
    (and (and (= (inv@38@01 r) x@34@01) (img@39@01 r)) (= r x@34@01))
    (=
      ($FVF.lookup_f (as sm@40@01  $FVF<f>) r)
      ($FVF.lookup_f (as sm@36@01  $FVF<f>) r)))
  :pattern (($FVF.lookup_f (as sm@40@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f (as sm@36@01  $FVF<f>) r))
  :qid |qp.fvfValDef4|)))
(assert (gg%precondition ($SortWrappers.$FVF<f>To$Snap (as sm@40@01  $FVF<f>)) x@34@01))
(pop) ; 2
; Joined path conditions
(assert (forall ((z@37@01 $Ref)) (!
  (=>
    (= z@37@01 x@34@01)
    (and (= (inv@38@01 z@37@01) z@37@01) (img@39@01 z@37@01)))
  :pattern ((inv@38@01 z@37@01))
  :pattern ((img@39@01 z@37@01))
  :qid |f-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=> (and (img@39@01 r) (= (inv@38@01 r) x@34@01)) (= (inv@38@01 r) r))
  :pattern ((inv@38@01 r))
  :qid |f-fctOfInv|)))
(assert (forall ((r $Ref)) (!
  (and
    (=>
      (Set_in r ($FVF.domain_f (as sm@40@01  $FVF<f>)))
      (and (= (inv@38@01 r) x@34@01) (img@39@01 r)))
    (=>
      (and (= (inv@38@01 r) x@34@01) (img@39@01 r))
      (Set_in r ($FVF.domain_f (as sm@40@01  $FVF<f>)))))
  :pattern ((Set_in r ($FVF.domain_f (as sm@40@01  $FVF<f>))))
  :qid |qp.fvfDomDef5|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and (and (= (inv@38@01 r) x@34@01) (img@39@01 r)) (= r x@34@01))
    (=
      ($FVF.lookup_f (as sm@40@01  $FVF<f>) r)
      ($FVF.lookup_f (as sm@36@01  $FVF<f>) r)))
  :pattern (($FVF.lookup_f (as sm@40@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f (as sm@36@01  $FVF<f>) r))
  :qid |qp.fvfValDef4|)))
(assert (gg%precondition ($SortWrappers.$FVF<f>To$Snap (as sm@40@01  $FVF<f>)) x@34@01))
(assert (gg ($SortWrappers.$FVF<f>To$Snap (as sm@40@01  $FVF<f>)) x@34@01))
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
(set-option :timeout 0)
(push) ; 2
(pop) ; 2
(push) ; 2
; [exec]
; exhale acc(x.f, write)
; Precomputing data for removing quantified permissions
(define-fun pTaken@41@01 ((r $Ref)) $Perm
  (ite
    (= r x@34@01)
    ($Perm.min (ite (= r x@34@01) $Perm.Write $Perm.No) $Perm.Write)
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
(assert (not (= (- $Perm.Write (pTaken@41@01 x@34@01)) $Perm.No)))
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
  (=> (= r x@34@01) (= (- $Perm.Write (pTaken@41@01 r)) $Perm.No))
  
  :qid |quant-u-22999|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Final check if taken enough permissions
; Done removing quantified permissions
; [exec]
; inhale acc(x.f, write)
(declare-const $t@42@01 $Ref)
(declare-const sm@43@01 $FVF<f>)
; Definitional axioms for singleton-SM's value
(assert (= ($FVF.lookup_f (as sm@43@01  $FVF<f>) x@34@01) $t@42@01))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale (forall y: Ref :: { gg(y) } h(y))
(declare-const $t@44@01 $Snap)
(assert (= $t@44@01 $Snap.unit))
; [eval] (forall y: Ref :: { gg(y) } h(y))
(declare-const y@45@01 $Ref)
(set-option :timeout 0)
(push) ; 3
; [eval] h(y)
(push) ; 4
(assert (h%precondition $Snap.unit y@45@01))
(pop) ; 4
; Joined path conditions
(assert (h%precondition $Snap.unit y@45@01))
; [eval] gg(y)
(push) ; 4
(declare-const z@46@01 $Ref)
(push) ; 5
; [eval] z == x
(assert (= z@46@01 y@45@01))
(pop) ; 5
(declare-fun inv@47@01 ($Ref) $Ref)
(declare-fun img@48@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
; Check receiver injectivity
(push) ; 5
(assert (not (forall ((z1@46@01 $Ref) (z2@46@01 $Ref)) (!
  (=>
    (and (= z1@46@01 y@45@01) (= z2@46@01 y@45@01) (= z1@46@01 z2@46@01))
    (= z1@46@01 z2@46@01))
  
  :qid |f-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((z@46@01 $Ref)) (!
  (=>
    (= z@46@01 y@45@01)
    (and (= (inv@47@01 z@46@01) z@46@01) (img@48@01 z@46@01)))
  :pattern ((inv@47@01 z@46@01))
  :pattern ((img@48@01 z@46@01))
  :qid |f-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=> (and (img@48@01 r) (= (inv@47@01 r) y@45@01)) (= (inv@47@01 r) r))
  :pattern ((inv@47@01 r))
  :qid |f-fctOfInv|)))
(push) ; 5
(assert (not (forall ((r $Ref)) (!
  (=>
    (and (= (inv@47@01 r) y@45@01) (img@48@01 r) (= r (inv@47@01 r)))
    (> (ite (= r x@34@01) $Perm.Write $Perm.No) $Perm.No))
  
  :qid |quant-u-23001|))))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
; [state consolidation]
; State saturation: before repetition
(set-option :timeout 10)
(check-sat)
; unknown
(declare-const sm@49@01 $FVF<f>)
; Definitional axioms for snapshot map domain
; Definitional axioms for snapshot map values
(assert (forall ((r $Ref)) (!
  (=>
    (= r x@34@01)
    (=
      ($FVF.lookup_f (as sm@49@01  $FVF<f>) r)
      ($FVF.lookup_f (as sm@43@01  $FVF<f>) r)))
  :pattern (($FVF.lookup_f (as sm@49@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f (as sm@43@01  $FVF<f>) r))
  :qid |qp.fvfValDef6|)))
(declare-const pm@50@01 $FPM)
(assert (forall ((r $Ref)) (!
  (=
    ($FVF.perm_f (as pm@50@01  $FPM) r)
    (ite (= r x@34@01) $Perm.Write $Perm.No))
  :pattern (($FVF.perm_f (as pm@50@01  $FPM) r))
  :qid |qp.resPrmSumDef7|)))
(assert (<= ($FVF.perm_f (as pm@50@01  $FPM) x@34@01) $Perm.Write))
(declare-const z@51@01 $Ref)
(set-option :timeout 0)
(push) ; 5
; [eval] z == x
(assert (= z@51@01 y@45@01))
(pop) ; 5
(declare-fun inv@52@01 ($Ref) $Ref)
(declare-fun img@53@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
; Check receiver injectivity
(push) ; 5
(assert (not (forall ((z1@51@01 $Ref) (z2@51@01 $Ref)) (!
  (=>
    (and (= z1@51@01 y@45@01) (= z2@51@01 y@45@01) (= z1@51@01 z2@51@01))
    (= z1@51@01 z2@51@01))
  
  :qid |f-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((z@51@01 $Ref)) (!
  (=>
    (= z@51@01 y@45@01)
    (and (= (inv@52@01 z@51@01) z@51@01) (img@53@01 z@51@01)))
  :pattern ((inv@52@01 z@51@01))
  :pattern ((img@53@01 z@51@01))
  :qid |f-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=> (and (img@53@01 r) (= (inv@52@01 r) y@45@01)) (= (inv@52@01 r) r))
  :pattern ((inv@52@01 r))
  :qid |f-fctOfInv|)))
(push) ; 5
(assert (not (forall ((r $Ref)) (!
  (=>
    (and (= (inv@52@01 r) y@45@01) (img@53@01 r) (= r (inv@52@01 r)))
    (> (ite (= r x@34@01) $Perm.Write $Perm.No) $Perm.No))
  
  :qid |quant-u-23003|))))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(pop) ; 4
(pop) ; 3
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall ((y@45@01 $Ref)) (!
  (h%precondition $Snap.unit y@45@01)
  
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/all/issues/carbon/0264.vpr@45@12@45@41-aux|)))
(assert (forall ((y@45@01 $Ref)) (!
  (h $Snap.unit y@45@01)
  
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/all/issues/carbon/0264.vpr@45@12@45@41|)))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; assert h(x)
; [eval] h(x)
(set-option :timeout 0)
(push) ; 3
(assert (h%precondition $Snap.unit x@34@01))
(pop) ; 3
; Joined path conditions
(assert (h%precondition $Snap.unit x@34@01))
(push) ; 3
(assert (not (h $Snap.unit x@34@01)))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(assert (h $Snap.unit x@34@01))
(pop) ; 2
(pop) ; 1
