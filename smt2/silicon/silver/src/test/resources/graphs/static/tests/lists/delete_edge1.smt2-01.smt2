(get-info :version)
; (:version "4.12.1")
; Started: 2024-12-29 19:59:23
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
(declare-sort Set<Edge> 0)
(declare-sort Set<$Snap> 0)
(declare-sort Edge 0)
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
(declare-fun $SortWrappers.Set<Edge>To$Snap (Set<Edge>) $Snap)
(declare-fun $SortWrappers.$SnapToSet<Edge> ($Snap) Set<Edge>)
(assert (forall ((x Set<Edge>)) (!
    (= x ($SortWrappers.$SnapToSet<Edge>($SortWrappers.Set<Edge>To$Snap x)))
    :pattern (($SortWrappers.Set<Edge>To$Snap x))
    :qid |$Snap.$SnapToSet<Edge>To$Snap|
    )))
(assert (forall ((x $Snap)) (!
    (= x ($SortWrappers.Set<Edge>To$Snap($SortWrappers.$SnapToSet<Edge> x)))
    :pattern (($SortWrappers.$SnapToSet<Edge> x))
    :qid |$Snap.Set<Edge>To$SnapToSet<Edge>|
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
(declare-fun $SortWrappers.EdgeTo$Snap (Edge) $Snap)
(declare-fun $SortWrappers.$SnapToEdge ($Snap) Edge)
(assert (forall ((x Edge)) (!
    (= x ($SortWrappers.$SnapToEdge($SortWrappers.EdgeTo$Snap x)))
    :pattern (($SortWrappers.EdgeTo$Snap x))
    :qid |$Snap.$SnapToEdgeTo$Snap|
    )))
(assert (forall ((x $Snap)) (!
    (= x ($SortWrappers.EdgeTo$Snap($SortWrappers.$SnapToEdge x)))
    :pattern (($SortWrappers.$SnapToEdge x))
    :qid |$Snap.EdgeTo$SnapToEdge|
    )))
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
(declare-fun Set_card (Set<Edge>) Int)
(declare-const Set_empty Set<Edge>)
(declare-fun Set_in (Edge Set<Edge>) Bool)
(declare-fun Set_singleton (Edge) Set<Edge>)
(declare-fun Set_unionone (Set<Edge> Edge) Set<Edge>)
(declare-fun Set_union (Set<Edge> Set<Edge>) Set<Edge>)
(declare-fun Set_intersection (Set<Edge> Set<Edge>) Set<Edge>)
(declare-fun Set_difference (Set<Edge> Set<Edge>) Set<Edge>)
(declare-fun Set_subset (Set<Edge> Set<Edge>) Bool)
(declare-fun Set_equal (Set<Edge> Set<Edge>) Bool)
(declare-fun Set_skolem_diff (Set<Edge> Set<Edge>) Edge)
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
(declare-fun edge_pred<Ref> (Edge) $Ref)
(declare-fun edge_succ<Ref> (Edge) $Ref)
(declare-fun create_edge<Edge> ($Ref $Ref) Edge)
(declare-fun create_edge_<Edge> ($Ref $Ref) Edge)
(declare-fun exists_path<Bool> (Set<Edge> $Ref $Ref) Bool)
(declare-fun exists_path_<Bool> (Set<Edge> $Ref $Ref) Bool)
(declare-fun exists_spath<Bool> (Set<Edge> Set<$Ref> $Ref) Bool)
(declare-fun apply_noExit<Bool> (Set<Edge> Set<$Ref> Set<$Ref>) Bool)
(declare-fun inst_uReach<Set<Ref>> (Set<Edge> $Ref) Set<$Ref>)
(declare-fun acyclic_graph<Bool> (Set<Edge>) Bool)
(declare-fun unshared_graph<Bool> (Set<Edge>) Bool)
(declare-fun func_graph<Bool> (Set<Edge>) Bool)
(declare-fun edge<Bool> (Set<Edge> $Ref $Ref) Bool)
(declare-fun edge_<Bool> (Set<Edge> $Ref $Ref) Bool)
; /field_value_functions_declarations.smt2 [next: Ref]
(declare-fun $FVF.domain_next ($FVF<next>) Set<$Ref>)
(declare-fun $FVF.lookup_next ($FVF<next> $Ref) $Ref)
(declare-fun $FVF.after_next ($FVF<next> $FVF<next>) Bool)
(declare-fun $FVF.loc_next ($Ref $Ref) Bool)
(declare-fun $FVF.perm_next ($FPM $Ref) $Perm)
(declare-const $fvfTOP_next $FVF<next>)
; Declaring symbols related to program functions (from program analysis)
(declare-fun $$ ($Snap Set<$Ref>) Set<Edge>)
(declare-fun $$%limited ($Snap Set<$Ref>) Set<Edge>)
(declare-fun $$%stateless (Set<$Ref>) Bool)
(declare-fun $$%precondition ($Snap Set<$Ref>) Bool)
(declare-fun apply_TCFraming ($Snap Set<$Ref> Set<$Ref>) Bool)
(declare-fun apply_TCFraming%limited ($Snap Set<$Ref> Set<$Ref>) Bool)
(declare-fun apply_TCFraming%stateless (Set<$Ref> Set<$Ref>) Bool)
(declare-fun apply_TCFraming%precondition ($Snap Set<$Ref> Set<$Ref>) Bool)
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
(assert (forall ((s Set<Edge>)) (!
  (<= 0 (Set_card s))
  :pattern ((Set_card s))
  )))
(assert (forall ((o Edge)) (!
  (not (Set_in o (as Set_empty  Set<Edge>)))
  :pattern ((Set_in o (as Set_empty  Set<Edge>)))
  )))
(assert (forall ((s Set<Edge>)) (!
  (and
    (=> (= (Set_card s) 0) (= s (as Set_empty  Set<Edge>)))
    (=> (not (= (Set_card s) 0)) (exists ((x Edge))  (Set_in x s))))
  :pattern ((Set_card s))
  )))
(assert (forall ((r Edge)) (!
  (Set_in r (Set_singleton r))
  :pattern ((Set_singleton r))
  )))
(assert (forall ((r Edge) (o Edge)) (!
  (= (Set_in o (Set_singleton r)) (= r o))
  :pattern ((Set_in o (Set_singleton r)))
  )))
(assert (forall ((r Edge)) (!
  (= (Set_card (Set_singleton r)) 1)
  :pattern ((Set_card (Set_singleton r)))
  )))
(assert (forall ((a Set<Edge>) (x Edge) (o Edge)) (!
  (= (Set_in o (Set_unionone a x)) (or (= o x) (Set_in o a)))
  :pattern ((Set_in o (Set_unionone a x)))
  )))
(assert (forall ((a Set<Edge>) (x Edge)) (!
  (Set_in x (Set_unionone a x))
  :pattern ((Set_unionone a x))
  )))
(assert (forall ((a Set<Edge>) (x Edge) (y Edge)) (!
  (=> (Set_in y a) (Set_in y (Set_unionone a x)))
  :pattern ((Set_unionone a x) (Set_in y a))
  )))
(assert (forall ((a Set<Edge>) (x Edge)) (!
  (=> (Set_in x a) (= (Set_card (Set_unionone a x)) (Set_card a)))
  :pattern ((Set_card (Set_unionone a x)))
  )))
(assert (forall ((a Set<Edge>) (x Edge)) (!
  (=> (not (Set_in x a)) (= (Set_card (Set_unionone a x)) (+ (Set_card a) 1)))
  :pattern ((Set_card (Set_unionone a x)))
  )))
(assert (forall ((a Set<Edge>) (b Set<Edge>) (o Edge)) (!
  (= (Set_in o (Set_union a b)) (or (Set_in o a) (Set_in o b)))
  :pattern ((Set_in o (Set_union a b)))
  )))
(assert (forall ((a Set<Edge>) (b Set<Edge>) (y Edge)) (!
  (=> (Set_in y a) (Set_in y (Set_union a b)))
  :pattern ((Set_union a b) (Set_in y a))
  )))
(assert (forall ((a Set<Edge>) (b Set<Edge>) (y Edge)) (!
  (=> (Set_in y b) (Set_in y (Set_union a b)))
  :pattern ((Set_union a b) (Set_in y b))
  )))
(assert (forall ((a Set<Edge>) (b Set<Edge>) (o Edge)) (!
  (= (Set_in o (Set_intersection a b)) (and (Set_in o a) (Set_in o b)))
  :pattern ((Set_in o (Set_intersection a b)))
  :pattern ((Set_intersection a b) (Set_in o a))
  :pattern ((Set_intersection a b) (Set_in o b))
  )))
(assert (forall ((a Set<Edge>) (b Set<Edge>)) (!
  (= (Set_union (Set_union a b) b) (Set_union a b))
  :pattern ((Set_union (Set_union a b) b))
  )))
(assert (forall ((a Set<Edge>) (b Set<Edge>)) (!
  (= (Set_union a (Set_union a b)) (Set_union a b))
  :pattern ((Set_union a (Set_union a b)))
  )))
(assert (forall ((a Set<Edge>) (b Set<Edge>)) (!
  (= (Set_intersection (Set_intersection a b) b) (Set_intersection a b))
  :pattern ((Set_intersection (Set_intersection a b) b))
  )))
(assert (forall ((a Set<Edge>) (b Set<Edge>)) (!
  (= (Set_intersection a (Set_intersection a b)) (Set_intersection a b))
  :pattern ((Set_intersection a (Set_intersection a b)))
  )))
(assert (forall ((a Set<Edge>) (b Set<Edge>)) (!
  (=
    (+ (Set_card (Set_union a b)) (Set_card (Set_intersection a b)))
    (+ (Set_card a) (Set_card b)))
  :pattern ((Set_card (Set_union a b)))
  :pattern ((Set_card (Set_intersection a b)))
  )))
(assert (forall ((a Set<Edge>) (b Set<Edge>) (o Edge)) (!
  (= (Set_in o (Set_difference a b)) (and (Set_in o a) (not (Set_in o b))))
  :pattern ((Set_in o (Set_difference a b)))
  :pattern ((Set_difference a b) (Set_in o a))
  )))
(assert (forall ((a Set<Edge>) (b Set<Edge>) (y Edge)) (!
  (=> (Set_in y b) (not (Set_in y (Set_difference a b))))
  :pattern ((Set_difference a b) (Set_in y b))
  )))
(assert (forall ((a Set<Edge>) (b Set<Edge>)) (!
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
(assert (forall ((a Set<Edge>) (b Set<Edge>)) (!
  (=
    (Set_subset a b)
    (forall ((o Edge)) (!
      (=> (Set_in o a) (Set_in o b))
      :pattern ((Set_in o a))
      :pattern ((Set_in o b))
      )))
  :pattern ((Set_subset a b))
  )))
(assert (forall ((a Set<Edge>) (b Set<Edge>)) (!
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
(assert (forall ((a Set<Edge>) (b Set<Edge>)) (!
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
(assert (forall ((p $Ref) (s $Ref)) (!
  (and
    (= (edge_pred<Ref> (create_edge<Edge> p s)) p)
    (= (edge_succ<Ref> (create_edge<Edge> p s)) s))
  :pattern ((create_edge<Edge> p s))
  :qid |prog.edge_injectivity|)))
(assert (forall ((EG Set<Edge>) (p $Ref) (s $Ref)) (!
  (= (edge<Bool> EG p s) (edge_<Bool> EG p s))
  :pattern ((edge<Bool> EG p s))
  :qid |prog.ax_EdgeSynonim|)))
(assert (forall ((EG Set<Edge>) (p $Ref) (s $Ref)) (!
  (= (edge_<Bool> EG p s) (Set_in (create_edge<Edge> p s) EG))
  :pattern ((Set_in (create_edge<Edge> p s) EG))
  :pattern ((edge<Bool> EG p s))
  :qid |prog.ax_Edge|)))
(assert (forall ((EG Set<Edge>) (U Set<$Ref>) (M Set<$Ref>)) (!
  (=>
    (and
      (apply_noExit<Bool> EG U M)
      (forall ((u $Ref) (v $Ref)) (!
        (=>
          (and (Set_in u M) (and (Set_in v U) (not (Set_in v M))))
          (not (edge<Bool> EG u v)))
        :pattern ((edge<Bool> EG u v))
        :pattern ((Set_in u M) (Set_in v M))
        )))
    (forall ((u $Ref) (v $Ref)) (!
      (=>
        (and (Set_in u M) (and (Set_in v U) (not (Set_in v M))))
        (not (exists_path<Bool> EG u v)))
      :pattern ((exists_path<Bool> EG u v))
      :pattern ((Set_in u M) (Set_in v M))
      )))
  :pattern ((apply_noExit<Bool> EG U M))
  :qid |prog.ax_NoExit|)))
(assert (forall ((EG Set<Edge>) (x $Ref) (v $Ref)) (!
  (= (Set_in v (inst_uReach<Set<Ref>> EG x)) (exists_path<Bool> EG x v))
  :pattern ((Set_in v (inst_uReach<Set<Ref>> EG x)))
  :pattern ((exists_path<Bool> EG x v))
  :qid |prog.ax_instantiation_uReach|)))
(assert (forall ((EG Set<Edge>) (start $Ref) (end $Ref)) (!
  (= (exists_path<Bool> EG start end) (exists_path_<Bool> EG start end))
  :pattern ((exists_path<Bool> EG start end))
  :qid |prog.ax_Alias|)))
(assert (forall ((EG Set<Edge>) (start $Ref) (end $Ref)) (!
  (=
    (exists_path_<Bool> EG start end)
    (or
      (= start end)
      (exists ((w $Ref)) (!
        (and (edge<Bool> EG start w) (exists_path_<Bool> EG w end))
        :pattern ((edge<Bool> EG start w))
        :pattern ((exists_path_<Bool> EG w end))
        ))))
  :pattern ((exists_path<Bool> EG start end))
  :pattern ((edge<Bool> EG start end))
  :qid |prog.ax_ExistsPath|)))
(assert (forall ((EG Set<Edge>) (u $Ref) (v $Ref) (w $Ref)) (!
  (=>
    (and (exists_path_<Bool> EG u w) (exists_path_<Bool> EG w v))
    (exists_path_<Bool> EG u v))
  :pattern ((exists_path<Bool> EG u w) (exists_path<Bool> EG w v))
  :qid |prog.ax_ExistsPathTrans|)))
(assert (forall ((EG Set<Edge>)) (!
  (=
    (acyclic_graph<Bool> EG)
    (forall ((v1 $Ref) (v2 $Ref)) (!
      (or (not (edge<Bool> EG v1 v2)) (not (exists_path<Bool> EG v2 v1)))
      :pattern ((edge<Bool> EG v1 v2))
      :pattern ((exists_path<Bool> EG v2 v1))
      )))
  :pattern ((acyclic_graph<Bool> EG))
  :qid |prog.ax_AcyclicGraph|)))
(assert (forall ((EG Set<Edge>)) (!
  (=
    (unshared_graph<Bool> EG)
    (forall ((v1 $Ref) (v2 $Ref) (v $Ref)) (!
      (=> (and (edge<Bool> EG v1 v) (edge<Bool> EG v2 v)) (= v1 v2))
      :pattern ((edge<Bool> EG v1 v) (edge<Bool> EG v2 v))
      )))
  :pattern ((unshared_graph<Bool> EG))
  :qid |prog.ax_UnsharedGraph|)))
(assert (forall ((EG Set<Edge>)) (!
  (=
    (func_graph<Bool> EG)
    (forall ((v1 $Ref) (v2 $Ref) (v $Ref)) (!
      (=> (and (edge<Bool> EG v v1) (edge<Bool> EG v v2)) (= v1 v2))
      :pattern ((edge<Bool> EG v v1) (edge<Bool> EG v v2))
      )))
  :pattern ((func_graph<Bool> EG))
  :qid |prog.ax_FuncGraph|)))
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
(declare-fun inv@7@00 ($Snap Set<$Ref> $Ref) $Ref)
(declare-fun img@8@00 ($Snap Set<$Ref> $Ref) Bool)
(declare-fun sm@6@00 ($Snap Set<$Ref>) $FVF<next>)
(declare-fun sm@9@00 ($Snap Set<$Ref>) $FVF<next>)
(declare-fun inv@19@00 ($Snap Set<$Ref> Set<$Ref> $Ref) $Ref)
(declare-fun img@20@00 ($Snap Set<$Ref> Set<$Ref> $Ref) Bool)
(declare-fun inv@23@00 ($Snap Set<$Ref> Set<$Ref> $Ref) $Ref)
(declare-fun img@24@00 ($Snap Set<$Ref> Set<$Ref> $Ref) Bool)
(declare-fun inv@30@00 ($Snap Set<$Ref> Set<$Ref> $Ref) $Ref)
(declare-fun img@31@00 ($Snap Set<$Ref> Set<$Ref> $Ref) Bool)
(declare-fun inv@34@00 ($Snap Set<$Ref> Set<$Ref> $Ref) $Ref)
(declare-fun img@35@00 ($Snap Set<$Ref> Set<$Ref> $Ref) Bool)
(declare-fun inv@41@00 ($Snap Set<$Ref> Set<$Ref> $Ref) $Ref)
(declare-fun img@42@00 ($Snap Set<$Ref> Set<$Ref> $Ref) Bool)
(declare-fun inv@46@00 ($Snap Set<$Ref> Set<$Ref> $Ref) $Ref)
(declare-fun img@47@00 ($Snap Set<$Ref> Set<$Ref> $Ref) Bool)
(declare-fun inv@53@00 ($Snap Set<$Ref> Set<$Ref> $Ref) $Ref)
(declare-fun img@54@00 ($Snap Set<$Ref> Set<$Ref> $Ref) Bool)
(declare-fun inv@58@00 ($Snap Set<$Ref> Set<$Ref> $Ref) $Ref)
(declare-fun img@59@00 ($Snap Set<$Ref> Set<$Ref> $Ref) Bool)
(declare-fun inv@65@00 ($Snap Set<$Ref> Set<$Ref> $Ref) $Ref)
(declare-fun img@66@00 ($Snap Set<$Ref> Set<$Ref> $Ref) Bool)
(declare-fun inv@70@00 ($Snap Set<$Ref> Set<$Ref> $Ref) $Ref)
(declare-fun img@71@00 ($Snap Set<$Ref> Set<$Ref> $Ref) Bool)
(declare-fun sm@18@00 ($Snap Set<$Ref> Set<$Ref>) $FVF<next>)
(declare-fun sm@21@00 ($Snap Set<$Ref> Set<$Ref>) $FVF<next>)
(declare-fun sm@32@00 ($Snap Set<$Ref> Set<$Ref>) $FVF<next>)
(declare-fun sm@37@00 ($Snap Set<$Ref> Set<$Ref>) $FVF<next>)
(declare-fun sm@44@00 ($Snap Set<$Ref> Set<$Ref>) $FVF<next>)
(declare-fun sm@49@00 ($Snap Set<$Ref> Set<$Ref>) $FVF<next>)
(declare-fun sm@56@00 ($Snap Set<$Ref> Set<$Ref>) $FVF<next>)
(declare-fun sm@61@00 ($Snap Set<$Ref> Set<$Ref>) $FVF<next>)
(declare-fun sm@68@00 ($Snap Set<$Ref> Set<$Ref>) $FVF<next>)
(declare-fun sm@73@00 ($Snap Set<$Ref> Set<$Ref>) $FVF<next>)
(assert (forall ((s@$ $Snap) (refs@0@00 Set<$Ref>)) (!
  (= ($$%limited s@$ refs@0@00) ($$ s@$ refs@0@00))
  :pattern (($$ s@$ refs@0@00))
  :qid |quant-u-14174|)))
(assert (forall ((s@$ $Snap) (refs@0@00 Set<$Ref>)) (!
  ($$%stateless refs@0@00)
  :pattern (($$%limited s@$ refs@0@00))
  :qid |quant-u-14175|)))
(assert (forall ((s@$ $Snap) (refs@0@00 Set<$Ref>)) (!
  (let ((result@1@00 ($$%limited s@$ refs@0@00))) (and
    (forall ((n@5@00 $Ref)) (!
      (=>
        (Set_in n@5@00 refs@0@00)
        (and
          (= (inv@7@00 s@$ refs@0@00 n@5@00) n@5@00)
          (img@8@00 s@$ refs@0@00 n@5@00)))
      :pattern (($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> s@$) n@5@00) n@5@00))
      :qid |quant-u-14179|))
    (forall ((r $Ref)) (!
      (=>
        (and
          (img@8@00 s@$ refs@0@00 r)
          (Set_in (inv@7@00 s@$ refs@0@00 r) refs@0@00))
        (= (inv@7@00 s@$ refs@0@00 r) r))
      :pattern ((inv@7@00 s@$ refs@0@00 r))
      :qid |next-fctOfInv|))
    (forall ((r $Ref)) (!
      true
      :pattern (($FVF.lookup_next (sm@6@00 s@$ refs@0@00) r))
      :qid |qp.fvfResTrgDef0|))
    (forall ((r $Ref)) (!
      (=>
        (and
          (img@8@00 s@$ refs@0@00 r)
          (Set_in (inv@7@00 s@$ refs@0@00 r) refs@0@00))
        (=
          ($FVF.lookup_next (sm@9@00 s@$ refs@0@00) r)
          ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> s@$) r)))
      :pattern (($FVF.lookup_next (sm@9@00 s@$ refs@0@00) r))
      :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> s@$) r))
      :qid |qp.fvfValDef1|))
    (forall ((r $Ref)) (!
      ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> s@$) r) r)
      :pattern (($FVF.lookup_next (sm@9@00 s@$ refs@0@00) r))
      :qid |qp.fvfResTrgDef2|))
    (=>
      ($$%precondition s@$ refs@0@00)
      (and
        (forall ((p $Ref) (s $Ref)) (!
          (=
            (and
              (Set_in p refs@0@00)
              (and
                (Set_in s refs@0@00)
                (= ($FVF.lookup_next (sm@9@00 s@$ refs@0@00) p) s)))
            (Set_in (create_edge<Edge> p s) result@1@00))
          :pattern ((create_edge<Edge> p s))
          ))
        (forall ((p $Ref) (s $Ref)) (!
          (=>
            (and (Set_in p refs@0@00) (exists_path<Bool> result@1@00 p s))
            (Set_in s refs@0@00))
          :pattern ((Set_in p refs@0@00) (Set_in s refs@0@00) (exists_path<Bool> result@1@00 p s))
          ))
        (forall ((p $Ref) (s $Ref)) (!
          (=>
            (and (Set_in s refs@0@00) (exists_path<Bool> result@1@00 p s))
            (Set_in p refs@0@00))
          :pattern ((Set_in p refs@0@00) (Set_in s refs@0@00) (exists_path<Bool> result@1@00 p s))
          ))))))
  :pattern (($$%limited s@$ refs@0@00))
  :qid |quant-u-14181|)))
(assert (forall ((s@$ $Snap) (refs@0@00 Set<$Ref>)) (!
  (let ((result@1@00 ($$%limited s@$ refs@0@00))) true)
  :pattern (($$%limited s@$ refs@0@00))
  :qid |quant-u-14182|)))
(assert (forall ((s@$ $Snap) (refs@0@00 Set<$Ref>)) (!
  (let ((result@1@00 ($$%limited s@$ refs@0@00))) true)
  :pattern (($$%limited s@$ refs@0@00))
  :qid |quant-u-14183|)))
(assert (forall ((s@$ $Snap) (refs@0@00 Set<$Ref>)) (!
  (let ((result@1@00 ($$%limited s@$ refs@0@00))) true)
  :pattern (($$%limited s@$ refs@0@00))
  :qid |quant-u-14184|)))
(assert (forall ((s@$ $Snap) (g0@2@00 Set<$Ref>) (g1@3@00 Set<$Ref>)) (!
  (=
    (apply_TCFraming%limited s@$ g0@2@00 g1@3@00)
    (apply_TCFraming s@$ g0@2@00 g1@3@00))
  :pattern ((apply_TCFraming s@$ g0@2@00 g1@3@00))
  :qid |quant-u-14176|)))
(assert (forall ((s@$ $Snap) (g0@2@00 Set<$Ref>) (g1@3@00 Set<$Ref>)) (!
  (apply_TCFraming%stateless g0@2@00 g1@3@00)
  :pattern ((apply_TCFraming%limited s@$ g0@2@00 g1@3@00))
  :qid |quant-u-14177|)))
(assert (forall ((s@$ $Snap) (g0@2@00 Set<$Ref>) (g1@3@00 Set<$Ref>)) (!
  (let ((result@4@00 (apply_TCFraming%limited s@$ g0@2@00 g1@3@00))) (and
    (forall ((n@17@00 $Ref)) (!
      (=>
        (Set_in n@17@00 g0@2@00)
        (and
          (= (inv@19@00 s@$ g0@2@00 g1@3@00 n@17@00) n@17@00)
          (img@20@00 s@$ g0@2@00 g1@3@00 n@17@00)))
      :pattern (($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first s@$)) n@17@00) n@17@00))
      :qid |quant-u-14186|))
    (forall ((r $Ref)) (!
      (=>
        (and
          (img@20@00 s@$ g0@2@00 g1@3@00 r)
          (Set_in (inv@19@00 s@$ g0@2@00 g1@3@00 r) g0@2@00))
        (= (inv@19@00 s@$ g0@2@00 g1@3@00 r) r))
      :pattern ((inv@19@00 s@$ g0@2@00 g1@3@00 r))
      :qid |next-fctOfInv|))
    (forall ((n@22@00 $Ref)) (!
      (=>
        (Set_in n@22@00 g1@3@00)
        (and
          (= (inv@23@00 s@$ g0@2@00 g1@3@00 n@22@00) n@22@00)
          (img@24@00 s@$ g0@2@00 g1@3@00 n@22@00)))
      :pattern (($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second s@$))) n@22@00) n@22@00))
      :qid |quant-u-14189|))
    (forall ((r $Ref)) (!
      (=>
        (and
          (img@24@00 s@$ g0@2@00 g1@3@00 r)
          (Set_in (inv@23@00 s@$ g0@2@00 g1@3@00 r) g1@3@00))
        (= (inv@23@00 s@$ g0@2@00 g1@3@00 r) r))
      :pattern ((inv@23@00 s@$ g0@2@00 g1@3@00 r))
      :qid |next-fctOfInv|))
    (forall ((n@29@00 $Ref)) (!
      (=>
        (Set_in n@29@00 g0@2@00)
        (and
          (= (inv@30@00 s@$ g0@2@00 g1@3@00 n@29@00) n@29@00)
          (img@31@00 s@$ g0@2@00 g1@3@00 n@29@00)))
      :pattern ((Set_in n@29@00 g0@2@00))
      :pattern ((inv@30@00 s@$ g0@2@00 g1@3@00 n@29@00))
      :pattern ((img@31@00 s@$ g0@2@00 g1@3@00 n@29@00))
      :qid |next-invOfFct|))
    (forall ((r $Ref)) (!
      (=>
        (and
          (img@31@00 s@$ g0@2@00 g1@3@00 r)
          (Set_in (inv@30@00 s@$ g0@2@00 g1@3@00 r) g0@2@00))
        (= (inv@30@00 s@$ g0@2@00 g1@3@00 r) r))
      :pattern ((inv@30@00 s@$ g0@2@00 g1@3@00 r))
      :qid |next-fctOfInv|))
    (forall ((n@33@00 $Ref)) (!
      (=>
        (Set_in n@33@00 (Set_union g0@2@00 g1@3@00))
        (and
          (= (inv@34@00 s@$ g0@2@00 g1@3@00 n@33@00) n@33@00)
          (img@35@00 s@$ g0@2@00 g1@3@00 n@33@00)))
      :pattern ((Set_in n@33@00 (Set_union g0@2@00 g1@3@00)))
      :pattern ((inv@34@00 s@$ g0@2@00 g1@3@00 n@33@00))
      :pattern ((img@35@00 s@$ g0@2@00 g1@3@00 n@33@00))
      :qid |next-invOfFct|))
    (forall ((r $Ref)) (!
      (=>
        (and
          (img@35@00 s@$ g0@2@00 g1@3@00 r)
          (Set_in (inv@34@00 s@$ g0@2@00 g1@3@00 r) (Set_union g0@2@00 g1@3@00)))
        (= (inv@34@00 s@$ g0@2@00 g1@3@00 r) r))
      :pattern ((inv@34@00 s@$ g0@2@00 g1@3@00 r))
      :qid |next-fctOfInv|))
    (forall ((n@40@00 $Ref)) (!
      (=>
        (Set_in n@40@00 g1@3@00)
        (and
          (= (inv@41@00 s@$ g0@2@00 g1@3@00 n@40@00) n@40@00)
          (img@42@00 s@$ g0@2@00 g1@3@00 n@40@00)))
      :pattern ((Set_in n@40@00 g1@3@00))
      :pattern ((inv@41@00 s@$ g0@2@00 g1@3@00 n@40@00))
      :pattern ((img@42@00 s@$ g0@2@00 g1@3@00 n@40@00))
      :qid |next-invOfFct|))
    (forall ((r $Ref)) (!
      (=>
        (and
          (img@42@00 s@$ g0@2@00 g1@3@00 r)
          (Set_in (inv@41@00 s@$ g0@2@00 g1@3@00 r) g1@3@00))
        (= (inv@41@00 s@$ g0@2@00 g1@3@00 r) r))
      :pattern ((inv@41@00 s@$ g0@2@00 g1@3@00 r))
      :qid |next-fctOfInv|))
    (forall ((n@45@00 $Ref)) (!
      (=>
        (Set_in n@45@00 (Set_union g1@3@00 g0@2@00))
        (and
          (= (inv@46@00 s@$ g0@2@00 g1@3@00 n@45@00) n@45@00)
          (img@47@00 s@$ g0@2@00 g1@3@00 n@45@00)))
      :pattern ((Set_in n@45@00 (Set_union g1@3@00 g0@2@00)))
      :pattern ((inv@46@00 s@$ g0@2@00 g1@3@00 n@45@00))
      :pattern ((img@47@00 s@$ g0@2@00 g1@3@00 n@45@00))
      :qid |next-invOfFct|))
    (forall ((r $Ref)) (!
      (=>
        (and
          (img@47@00 s@$ g0@2@00 g1@3@00 r)
          (Set_in (inv@46@00 s@$ g0@2@00 g1@3@00 r) (Set_union g1@3@00 g0@2@00)))
        (= (inv@46@00 s@$ g0@2@00 g1@3@00 r) r))
      :pattern ((inv@46@00 s@$ g0@2@00 g1@3@00 r))
      :qid |next-fctOfInv|))
    (forall ((n@52@00 $Ref)) (!
      (=>
        (Set_in n@52@00 g0@2@00)
        (and
          (= (inv@53@00 s@$ g0@2@00 g1@3@00 n@52@00) n@52@00)
          (img@54@00 s@$ g0@2@00 g1@3@00 n@52@00)))
      :pattern ((Set_in n@52@00 g0@2@00))
      :pattern ((inv@53@00 s@$ g0@2@00 g1@3@00 n@52@00))
      :pattern ((img@54@00 s@$ g0@2@00 g1@3@00 n@52@00))
      :qid |next-invOfFct|))
    (forall ((r $Ref)) (!
      (=>
        (and
          (img@54@00 s@$ g0@2@00 g1@3@00 r)
          (Set_in (inv@53@00 s@$ g0@2@00 g1@3@00 r) g0@2@00))
        (= (inv@53@00 s@$ g0@2@00 g1@3@00 r) r))
      :pattern ((inv@53@00 s@$ g0@2@00 g1@3@00 r))
      :qid |next-fctOfInv|))
    (forall ((n@57@00 $Ref)) (!
      (=>
        (Set_in n@57@00 (Set_union g0@2@00 g1@3@00))
        (and
          (= (inv@58@00 s@$ g0@2@00 g1@3@00 n@57@00) n@57@00)
          (img@59@00 s@$ g0@2@00 g1@3@00 n@57@00)))
      :pattern ((Set_in n@57@00 (Set_union g0@2@00 g1@3@00)))
      :pattern ((inv@58@00 s@$ g0@2@00 g1@3@00 n@57@00))
      :pattern ((img@59@00 s@$ g0@2@00 g1@3@00 n@57@00))
      :qid |next-invOfFct|))
    (forall ((r $Ref)) (!
      (=>
        (and
          (img@59@00 s@$ g0@2@00 g1@3@00 r)
          (Set_in (inv@58@00 s@$ g0@2@00 g1@3@00 r) (Set_union g0@2@00 g1@3@00)))
        (= (inv@58@00 s@$ g0@2@00 g1@3@00 r) r))
      :pattern ((inv@58@00 s@$ g0@2@00 g1@3@00 r))
      :qid |next-fctOfInv|))
    (forall ((n@64@00 $Ref)) (!
      (=>
        (Set_in n@64@00 g1@3@00)
        (and
          (= (inv@65@00 s@$ g0@2@00 g1@3@00 n@64@00) n@64@00)
          (img@66@00 s@$ g0@2@00 g1@3@00 n@64@00)))
      :pattern ((Set_in n@64@00 g1@3@00))
      :pattern ((inv@65@00 s@$ g0@2@00 g1@3@00 n@64@00))
      :pattern ((img@66@00 s@$ g0@2@00 g1@3@00 n@64@00))
      :qid |next-invOfFct|))
    (forall ((r $Ref)) (!
      (=>
        (and
          (img@66@00 s@$ g0@2@00 g1@3@00 r)
          (Set_in (inv@65@00 s@$ g0@2@00 g1@3@00 r) g1@3@00))
        (= (inv@65@00 s@$ g0@2@00 g1@3@00 r) r))
      :pattern ((inv@65@00 s@$ g0@2@00 g1@3@00 r))
      :qid |next-fctOfInv|))
    (forall ((n@69@00 $Ref)) (!
      (=>
        (Set_in n@69@00 (Set_union g1@3@00 g0@2@00))
        (and
          (= (inv@70@00 s@$ g0@2@00 g1@3@00 n@69@00) n@69@00)
          (img@71@00 s@$ g0@2@00 g1@3@00 n@69@00)))
      :pattern ((Set_in n@69@00 (Set_union g1@3@00 g0@2@00)))
      :pattern ((inv@70@00 s@$ g0@2@00 g1@3@00 n@69@00))
      :pattern ((img@71@00 s@$ g0@2@00 g1@3@00 n@69@00))
      :qid |next-invOfFct|))
    (forall ((r $Ref)) (!
      (=>
        (and
          (img@71@00 s@$ g0@2@00 g1@3@00 r)
          (Set_in (inv@70@00 s@$ g0@2@00 g1@3@00 r) (Set_union g1@3@00 g0@2@00)))
        (= (inv@70@00 s@$ g0@2@00 g1@3@00 r) r))
      :pattern ((inv@70@00 s@$ g0@2@00 g1@3@00 r))
      :qid |next-fctOfInv|))
    (forall ((r $Ref)) (!
      true
      :pattern (($FVF.lookup_next (sm@18@00 s@$ g0@2@00 g1@3@00) r))
      :qid |qp.fvfResTrgDef3|))
    (forall ((r $Ref)) (!
      (=>
        (and
          (img@20@00 s@$ g0@2@00 g1@3@00 r)
          (Set_in (inv@19@00 s@$ g0@2@00 g1@3@00 r) g0@2@00))
        (=
          ($FVF.lookup_next (sm@21@00 s@$ g0@2@00 g1@3@00) r)
          ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first s@$)) r)))
      :pattern (($FVF.lookup_next (sm@21@00 s@$ g0@2@00 g1@3@00) r))
      :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first s@$)) r))
      :qid |qp.fvfValDef4|))
    (forall ((r $Ref)) (!
      ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first s@$)) r) r)
      :pattern (($FVF.lookup_next (sm@21@00 s@$ g0@2@00 g1@3@00) r))
      :qid |qp.fvfResTrgDef5|))
    (forall ((r $Ref)) (!
      (and
        (=>
          (Set_in r ($FVF.domain_next (sm@32@00 s@$ g0@2@00 g1@3@00)))
          (and
            (Set_in (inv@30@00 s@$ g0@2@00 g1@3@00 r) g0@2@00)
            (img@31@00 s@$ g0@2@00 g1@3@00 r)))
        (=>
          (and
            (Set_in (inv@30@00 s@$ g0@2@00 g1@3@00 r) g0@2@00)
            (img@31@00 s@$ g0@2@00 g1@3@00 r))
          (Set_in r ($FVF.domain_next (sm@32@00 s@$ g0@2@00 g1@3@00)))))
      :pattern ((Set_in r ($FVF.domain_next (sm@32@00 s@$ g0@2@00 g1@3@00))))
      :qid |qp.fvfDomDef12|))
    (forall ((r $Ref)) (!
      (=>
        (and
          (and
            (Set_in (inv@30@00 s@$ g0@2@00 g1@3@00 r) g0@2@00)
            (img@31@00 s@$ g0@2@00 g1@3@00 r))
          (and
            (img@20@00 s@$ g0@2@00 g1@3@00 r)
            (Set_in (inv@19@00 s@$ g0@2@00 g1@3@00 r) g0@2@00)))
        (=
          ($FVF.lookup_next (sm@32@00 s@$ g0@2@00 g1@3@00) r)
          ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first s@$)) r)))
      :pattern (($FVF.lookup_next (sm@32@00 s@$ g0@2@00 g1@3@00) r))
      :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first s@$)) r))
      :qid |qp.fvfValDef9|))
    (forall ((r $Ref)) (!
      (=>
        (and
          (and
            (Set_in (inv@30@00 s@$ g0@2@00 g1@3@00 r) g0@2@00)
            (img@31@00 s@$ g0@2@00 g1@3@00 r))
          (and
            (img@24@00 s@$ g0@2@00 g1@3@00 r)
            (Set_in (inv@23@00 s@$ g0@2@00 g1@3@00 r) g1@3@00)))
        (=
          ($FVF.lookup_next (sm@32@00 s@$ g0@2@00 g1@3@00) r)
          ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second s@$))) r)))
      :pattern (($FVF.lookup_next (sm@32@00 s@$ g0@2@00 g1@3@00) r))
      :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second s@$))) r))
      :qid |qp.fvfValDef10|))
    (forall ((r $Ref)) (!
      (and
        ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first s@$)) r) r)
        ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second s@$))) r) r))
      :pattern (($FVF.lookup_next (sm@32@00 s@$ g0@2@00 g1@3@00) r))
      :qid |qp.fvfResTrgDef11|))
    (forall ((r $Ref)) (!
      (and
        (=>
          (Set_in r ($FVF.domain_next (sm@37@00 s@$ g0@2@00 g1@3@00)))
          (and
            (Set_in (inv@34@00 s@$ g0@2@00 g1@3@00 r) (Set_union g0@2@00 g1@3@00))
            (img@35@00 s@$ g0@2@00 g1@3@00 r)))
        (=>
          (and
            (Set_in (inv@34@00 s@$ g0@2@00 g1@3@00 r) (Set_union g0@2@00 g1@3@00))
            (img@35@00 s@$ g0@2@00 g1@3@00 r))
          (Set_in r ($FVF.domain_next (sm@37@00 s@$ g0@2@00 g1@3@00)))))
      :pattern ((Set_in r ($FVF.domain_next (sm@37@00 s@$ g0@2@00 g1@3@00))))
      :qid |qp.fvfDomDef19|))
    (forall ((r $Ref)) (!
      (=>
        (and
          (and
            (Set_in (inv@34@00 s@$ g0@2@00 g1@3@00 r) (Set_union g0@2@00 g1@3@00))
            (img@35@00 s@$ g0@2@00 g1@3@00 r))
          (and
            (img@20@00 s@$ g0@2@00 g1@3@00 r)
            (Set_in (inv@19@00 s@$ g0@2@00 g1@3@00 r) g0@2@00)))
        (=
          ($FVF.lookup_next (sm@37@00 s@$ g0@2@00 g1@3@00) r)
          ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first s@$)) r)))
      :pattern (($FVF.lookup_next (sm@37@00 s@$ g0@2@00 g1@3@00) r))
      :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first s@$)) r))
      :qid |qp.fvfValDef16|))
    (forall ((r $Ref)) (!
      (=>
        (and
          (and
            (Set_in (inv@34@00 s@$ g0@2@00 g1@3@00 r) (Set_union g0@2@00 g1@3@00))
            (img@35@00 s@$ g0@2@00 g1@3@00 r))
          (and
            (img@24@00 s@$ g0@2@00 g1@3@00 r)
            (Set_in (inv@23@00 s@$ g0@2@00 g1@3@00 r) g1@3@00)))
        (=
          ($FVF.lookup_next (sm@37@00 s@$ g0@2@00 g1@3@00) r)
          ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second s@$))) r)))
      :pattern (($FVF.lookup_next (sm@37@00 s@$ g0@2@00 g1@3@00) r))
      :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second s@$))) r))
      :qid |qp.fvfValDef17|))
    (forall ((r $Ref)) (!
      (and
        ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first s@$)) r) r)
        ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second s@$))) r) r))
      :pattern (($FVF.lookup_next (sm@37@00 s@$ g0@2@00 g1@3@00) r))
      :qid |qp.fvfResTrgDef18|))
    (forall ((r $Ref)) (!
      (and
        (=>
          (Set_in r ($FVF.domain_next (sm@44@00 s@$ g0@2@00 g1@3@00)))
          (and
            (Set_in (inv@41@00 s@$ g0@2@00 g1@3@00 r) g1@3@00)
            (img@42@00 s@$ g0@2@00 g1@3@00 r)))
        (=>
          (and
            (Set_in (inv@41@00 s@$ g0@2@00 g1@3@00 r) g1@3@00)
            (img@42@00 s@$ g0@2@00 g1@3@00 r))
          (Set_in r ($FVF.domain_next (sm@44@00 s@$ g0@2@00 g1@3@00)))))
      :pattern ((Set_in r ($FVF.domain_next (sm@44@00 s@$ g0@2@00 g1@3@00))))
      :qid |qp.fvfDomDef26|))
    (forall ((r $Ref)) (!
      (=>
        (and
          (and
            (Set_in (inv@41@00 s@$ g0@2@00 g1@3@00 r) g1@3@00)
            (img@42@00 s@$ g0@2@00 g1@3@00 r))
          (and
            (img@20@00 s@$ g0@2@00 g1@3@00 r)
            (Set_in (inv@19@00 s@$ g0@2@00 g1@3@00 r) g0@2@00)))
        (=
          ($FVF.lookup_next (sm@44@00 s@$ g0@2@00 g1@3@00) r)
          ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first s@$)) r)))
      :pattern (($FVF.lookup_next (sm@44@00 s@$ g0@2@00 g1@3@00) r))
      :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first s@$)) r))
      :qid |qp.fvfValDef23|))
    (forall ((r $Ref)) (!
      (=>
        (and
          (and
            (Set_in (inv@41@00 s@$ g0@2@00 g1@3@00 r) g1@3@00)
            (img@42@00 s@$ g0@2@00 g1@3@00 r))
          (and
            (img@24@00 s@$ g0@2@00 g1@3@00 r)
            (Set_in (inv@23@00 s@$ g0@2@00 g1@3@00 r) g1@3@00)))
        (=
          ($FVF.lookup_next (sm@44@00 s@$ g0@2@00 g1@3@00) r)
          ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second s@$))) r)))
      :pattern (($FVF.lookup_next (sm@44@00 s@$ g0@2@00 g1@3@00) r))
      :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second s@$))) r))
      :qid |qp.fvfValDef24|))
    (forall ((r $Ref)) (!
      (and
        ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first s@$)) r) r)
        ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second s@$))) r) r))
      :pattern (($FVF.lookup_next (sm@44@00 s@$ g0@2@00 g1@3@00) r))
      :qid |qp.fvfResTrgDef25|))
    (forall ((r $Ref)) (!
      (and
        (=>
          (Set_in r ($FVF.domain_next (sm@49@00 s@$ g0@2@00 g1@3@00)))
          (and
            (Set_in (inv@46@00 s@$ g0@2@00 g1@3@00 r) (Set_union g1@3@00 g0@2@00))
            (img@47@00 s@$ g0@2@00 g1@3@00 r)))
        (=>
          (and
            (Set_in (inv@46@00 s@$ g0@2@00 g1@3@00 r) (Set_union g1@3@00 g0@2@00))
            (img@47@00 s@$ g0@2@00 g1@3@00 r))
          (Set_in r ($FVF.domain_next (sm@49@00 s@$ g0@2@00 g1@3@00)))))
      :pattern ((Set_in r ($FVF.domain_next (sm@49@00 s@$ g0@2@00 g1@3@00))))
      :qid |qp.fvfDomDef33|))
    (forall ((r $Ref)) (!
      (=>
        (and
          (and
            (Set_in (inv@46@00 s@$ g0@2@00 g1@3@00 r) (Set_union g1@3@00 g0@2@00))
            (img@47@00 s@$ g0@2@00 g1@3@00 r))
          (and
            (img@20@00 s@$ g0@2@00 g1@3@00 r)
            (Set_in (inv@19@00 s@$ g0@2@00 g1@3@00 r) g0@2@00)))
        (=
          ($FVF.lookup_next (sm@49@00 s@$ g0@2@00 g1@3@00) r)
          ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first s@$)) r)))
      :pattern (($FVF.lookup_next (sm@49@00 s@$ g0@2@00 g1@3@00) r))
      :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first s@$)) r))
      :qid |qp.fvfValDef30|))
    (forall ((r $Ref)) (!
      (=>
        (and
          (and
            (Set_in (inv@46@00 s@$ g0@2@00 g1@3@00 r) (Set_union g1@3@00 g0@2@00))
            (img@47@00 s@$ g0@2@00 g1@3@00 r))
          (and
            (img@24@00 s@$ g0@2@00 g1@3@00 r)
            (Set_in (inv@23@00 s@$ g0@2@00 g1@3@00 r) g1@3@00)))
        (=
          ($FVF.lookup_next (sm@49@00 s@$ g0@2@00 g1@3@00) r)
          ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second s@$))) r)))
      :pattern (($FVF.lookup_next (sm@49@00 s@$ g0@2@00 g1@3@00) r))
      :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second s@$))) r))
      :qid |qp.fvfValDef31|))
    (forall ((r $Ref)) (!
      (and
        ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first s@$)) r) r)
        ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second s@$))) r) r))
      :pattern (($FVF.lookup_next (sm@49@00 s@$ g0@2@00 g1@3@00) r))
      :qid |qp.fvfResTrgDef32|))
    (forall ((r $Ref)) (!
      (and
        (=>
          (Set_in r ($FVF.domain_next (sm@56@00 s@$ g0@2@00 g1@3@00)))
          (and
            (Set_in (inv@53@00 s@$ g0@2@00 g1@3@00 r) g0@2@00)
            (img@54@00 s@$ g0@2@00 g1@3@00 r)))
        (=>
          (and
            (Set_in (inv@53@00 s@$ g0@2@00 g1@3@00 r) g0@2@00)
            (img@54@00 s@$ g0@2@00 g1@3@00 r))
          (Set_in r ($FVF.domain_next (sm@56@00 s@$ g0@2@00 g1@3@00)))))
      :pattern ((Set_in r ($FVF.domain_next (sm@56@00 s@$ g0@2@00 g1@3@00))))
      :qid |qp.fvfDomDef40|))
    (forall ((r $Ref)) (!
      (=>
        (and
          (and
            (Set_in (inv@53@00 s@$ g0@2@00 g1@3@00 r) g0@2@00)
            (img@54@00 s@$ g0@2@00 g1@3@00 r))
          (and
            (img@20@00 s@$ g0@2@00 g1@3@00 r)
            (Set_in (inv@19@00 s@$ g0@2@00 g1@3@00 r) g0@2@00)))
        (=
          ($FVF.lookup_next (sm@56@00 s@$ g0@2@00 g1@3@00) r)
          ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first s@$)) r)))
      :pattern (($FVF.lookup_next (sm@56@00 s@$ g0@2@00 g1@3@00) r))
      :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first s@$)) r))
      :qid |qp.fvfValDef37|))
    (forall ((r $Ref)) (!
      (=>
        (and
          (and
            (Set_in (inv@53@00 s@$ g0@2@00 g1@3@00 r) g0@2@00)
            (img@54@00 s@$ g0@2@00 g1@3@00 r))
          (and
            (img@24@00 s@$ g0@2@00 g1@3@00 r)
            (Set_in (inv@23@00 s@$ g0@2@00 g1@3@00 r) g1@3@00)))
        (=
          ($FVF.lookup_next (sm@56@00 s@$ g0@2@00 g1@3@00) r)
          ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second s@$))) r)))
      :pattern (($FVF.lookup_next (sm@56@00 s@$ g0@2@00 g1@3@00) r))
      :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second s@$))) r))
      :qid |qp.fvfValDef38|))
    (forall ((r $Ref)) (!
      (and
        ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first s@$)) r) r)
        ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second s@$))) r) r))
      :pattern (($FVF.lookup_next (sm@56@00 s@$ g0@2@00 g1@3@00) r))
      :qid |qp.fvfResTrgDef39|))
    (forall ((r $Ref)) (!
      (and
        (=>
          (Set_in r ($FVF.domain_next (sm@61@00 s@$ g0@2@00 g1@3@00)))
          (and
            (Set_in (inv@58@00 s@$ g0@2@00 g1@3@00 r) (Set_union g0@2@00 g1@3@00))
            (img@59@00 s@$ g0@2@00 g1@3@00 r)))
        (=>
          (and
            (Set_in (inv@58@00 s@$ g0@2@00 g1@3@00 r) (Set_union g0@2@00 g1@3@00))
            (img@59@00 s@$ g0@2@00 g1@3@00 r))
          (Set_in r ($FVF.domain_next (sm@61@00 s@$ g0@2@00 g1@3@00)))))
      :pattern ((Set_in r ($FVF.domain_next (sm@61@00 s@$ g0@2@00 g1@3@00))))
      :qid |qp.fvfDomDef47|))
    (forall ((r $Ref)) (!
      (=>
        (and
          (and
            (Set_in (inv@58@00 s@$ g0@2@00 g1@3@00 r) (Set_union g0@2@00 g1@3@00))
            (img@59@00 s@$ g0@2@00 g1@3@00 r))
          (and
            (img@20@00 s@$ g0@2@00 g1@3@00 r)
            (Set_in (inv@19@00 s@$ g0@2@00 g1@3@00 r) g0@2@00)))
        (=
          ($FVF.lookup_next (sm@61@00 s@$ g0@2@00 g1@3@00) r)
          ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first s@$)) r)))
      :pattern (($FVF.lookup_next (sm@61@00 s@$ g0@2@00 g1@3@00) r))
      :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first s@$)) r))
      :qid |qp.fvfValDef44|))
    (forall ((r $Ref)) (!
      (=>
        (and
          (and
            (Set_in (inv@58@00 s@$ g0@2@00 g1@3@00 r) (Set_union g0@2@00 g1@3@00))
            (img@59@00 s@$ g0@2@00 g1@3@00 r))
          (and
            (img@24@00 s@$ g0@2@00 g1@3@00 r)
            (Set_in (inv@23@00 s@$ g0@2@00 g1@3@00 r) g1@3@00)))
        (=
          ($FVF.lookup_next (sm@61@00 s@$ g0@2@00 g1@3@00) r)
          ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second s@$))) r)))
      :pattern (($FVF.lookup_next (sm@61@00 s@$ g0@2@00 g1@3@00) r))
      :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second s@$))) r))
      :qid |qp.fvfValDef45|))
    (forall ((r $Ref)) (!
      (and
        ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first s@$)) r) r)
        ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second s@$))) r) r))
      :pattern (($FVF.lookup_next (sm@61@00 s@$ g0@2@00 g1@3@00) r))
      :qid |qp.fvfResTrgDef46|))
    (forall ((r $Ref)) (!
      (and
        (=>
          (Set_in r ($FVF.domain_next (sm@68@00 s@$ g0@2@00 g1@3@00)))
          (and
            (Set_in (inv@65@00 s@$ g0@2@00 g1@3@00 r) g1@3@00)
            (img@66@00 s@$ g0@2@00 g1@3@00 r)))
        (=>
          (and
            (Set_in (inv@65@00 s@$ g0@2@00 g1@3@00 r) g1@3@00)
            (img@66@00 s@$ g0@2@00 g1@3@00 r))
          (Set_in r ($FVF.domain_next (sm@68@00 s@$ g0@2@00 g1@3@00)))))
      :pattern ((Set_in r ($FVF.domain_next (sm@68@00 s@$ g0@2@00 g1@3@00))))
      :qid |qp.fvfDomDef54|))
    (forall ((r $Ref)) (!
      (=>
        (and
          (and
            (Set_in (inv@65@00 s@$ g0@2@00 g1@3@00 r) g1@3@00)
            (img@66@00 s@$ g0@2@00 g1@3@00 r))
          (and
            (img@20@00 s@$ g0@2@00 g1@3@00 r)
            (Set_in (inv@19@00 s@$ g0@2@00 g1@3@00 r) g0@2@00)))
        (=
          ($FVF.lookup_next (sm@68@00 s@$ g0@2@00 g1@3@00) r)
          ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first s@$)) r)))
      :pattern (($FVF.lookup_next (sm@68@00 s@$ g0@2@00 g1@3@00) r))
      :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first s@$)) r))
      :qid |qp.fvfValDef51|))
    (forall ((r $Ref)) (!
      (=>
        (and
          (and
            (Set_in (inv@65@00 s@$ g0@2@00 g1@3@00 r) g1@3@00)
            (img@66@00 s@$ g0@2@00 g1@3@00 r))
          (and
            (img@24@00 s@$ g0@2@00 g1@3@00 r)
            (Set_in (inv@23@00 s@$ g0@2@00 g1@3@00 r) g1@3@00)))
        (=
          ($FVF.lookup_next (sm@68@00 s@$ g0@2@00 g1@3@00) r)
          ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second s@$))) r)))
      :pattern (($FVF.lookup_next (sm@68@00 s@$ g0@2@00 g1@3@00) r))
      :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second s@$))) r))
      :qid |qp.fvfValDef52|))
    (forall ((r $Ref)) (!
      (and
        ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first s@$)) r) r)
        ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second s@$))) r) r))
      :pattern (($FVF.lookup_next (sm@68@00 s@$ g0@2@00 g1@3@00) r))
      :qid |qp.fvfResTrgDef53|))
    (forall ((r $Ref)) (!
      (and
        (=>
          (Set_in r ($FVF.domain_next (sm@73@00 s@$ g0@2@00 g1@3@00)))
          (and
            (Set_in (inv@70@00 s@$ g0@2@00 g1@3@00 r) (Set_union g1@3@00 g0@2@00))
            (img@71@00 s@$ g0@2@00 g1@3@00 r)))
        (=>
          (and
            (Set_in (inv@70@00 s@$ g0@2@00 g1@3@00 r) (Set_union g1@3@00 g0@2@00))
            (img@71@00 s@$ g0@2@00 g1@3@00 r))
          (Set_in r ($FVF.domain_next (sm@73@00 s@$ g0@2@00 g1@3@00)))))
      :pattern ((Set_in r ($FVF.domain_next (sm@73@00 s@$ g0@2@00 g1@3@00))))
      :qid |qp.fvfDomDef61|))
    (forall ((r $Ref)) (!
      (=>
        (and
          (and
            (Set_in (inv@70@00 s@$ g0@2@00 g1@3@00 r) (Set_union g1@3@00 g0@2@00))
            (img@71@00 s@$ g0@2@00 g1@3@00 r))
          (and
            (img@20@00 s@$ g0@2@00 g1@3@00 r)
            (Set_in (inv@19@00 s@$ g0@2@00 g1@3@00 r) g0@2@00)))
        (=
          ($FVF.lookup_next (sm@73@00 s@$ g0@2@00 g1@3@00) r)
          ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first s@$)) r)))
      :pattern (($FVF.lookup_next (sm@73@00 s@$ g0@2@00 g1@3@00) r))
      :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first s@$)) r))
      :qid |qp.fvfValDef58|))
    (forall ((r $Ref)) (!
      (=>
        (and
          (and
            (Set_in (inv@70@00 s@$ g0@2@00 g1@3@00 r) (Set_union g1@3@00 g0@2@00))
            (img@71@00 s@$ g0@2@00 g1@3@00 r))
          (and
            (img@24@00 s@$ g0@2@00 g1@3@00 r)
            (Set_in (inv@23@00 s@$ g0@2@00 g1@3@00 r) g1@3@00)))
        (=
          ($FVF.lookup_next (sm@73@00 s@$ g0@2@00 g1@3@00) r)
          ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second s@$))) r)))
      :pattern (($FVF.lookup_next (sm@73@00 s@$ g0@2@00 g1@3@00) r))
      :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second s@$))) r))
      :qid |qp.fvfValDef59|))
    (forall ((r $Ref)) (!
      (and
        ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first s@$)) r) r)
        ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second s@$))) r) r))
      :pattern (($FVF.lookup_next (sm@73@00 s@$ g0@2@00 g1@3@00) r))
      :qid |qp.fvfResTrgDef60|))
    (=>
      (apply_TCFraming%precondition s@$ g0@2@00 g1@3@00)
      (and
        (Set_equal (Set_union g0@2@00 g1@3@00) (Set_union g1@3@00 g0@2@00))
        (forall ((u $Ref) (v $Ref)) (!
          (=>
            (and
              (Set_in u g0@2@00)
              (and
                (Set_in v g0@2@00)
                (exists_path<Bool> ($$ (ite
                  (Set_in v g0@2@00)
                  (ite
                    (Set_in u g0@2@00)
                    ($SortWrappers.$FVF<next>To$Snap (sm@32@00 s@$ g0@2@00 g1@3@00))
                    ($SortWrappers.$FVF<next>To$Snap (sm@56@00 s@$ g0@2@00 g1@3@00)))
                  ($SortWrappers.$FVF<next>To$Snap (sm@56@00 s@$ g0@2@00 g1@3@00))) g0@2@00) u v)))
            (exists_path<Bool> ($$ (ite
              (and
                (Set_in u g0@2@00)
                (and
                  (Set_in v g0@2@00)
                  (exists_path<Bool> ($$ ($SortWrappers.$FVF<next>To$Snap (sm@32@00 s@$ g0@2@00 g1@3@00)) g0@2@00) u v)))
              ($SortWrappers.$FVF<next>To$Snap (sm@37@00 s@$ g0@2@00 g1@3@00))
              ($SortWrappers.$FVF<next>To$Snap (sm@61@00 s@$ g0@2@00 g1@3@00))) (Set_union g0@2@00 g1@3@00)) u v))
          :pattern ((exists_path<Bool> ($$ (ite
            (Set_in v g0@2@00)
            (ite
              (Set_in u g0@2@00)
              ($SortWrappers.$FVF<next>To$Snap (sm@32@00 s@$ g0@2@00 g1@3@00))
              ($SortWrappers.$FVF<next>To$Snap (sm@56@00 s@$ g0@2@00 g1@3@00)))
            ($SortWrappers.$FVF<next>To$Snap (sm@56@00 s@$ g0@2@00 g1@3@00))) g0@2@00) u v))
          :pattern ((exists_path<Bool> ($$ (ite
            (and
              (Set_in u g0@2@00)
              (and
                (Set_in v g0@2@00)
                (exists_path<Bool> ($$ ($SortWrappers.$FVF<next>To$Snap (sm@32@00 s@$ g0@2@00 g1@3@00)) g0@2@00) u v)))
            ($SortWrappers.$FVF<next>To$Snap (sm@37@00 s@$ g0@2@00 g1@3@00))
            ($SortWrappers.$FVF<next>To$Snap (sm@61@00 s@$ g0@2@00 g1@3@00))) (Set_union g0@2@00 g1@3@00)) u v))
          ))
        (forall ((u $Ref) (v $Ref)) (!
          (=>
            (and
              (Set_in u g1@3@00)
              (and
                (Set_in v g1@3@00)
                (exists_path<Bool> ($$ (ite
                  (Set_in v g1@3@00)
                  (ite
                    (Set_in u g1@3@00)
                    ($SortWrappers.$FVF<next>To$Snap (sm@44@00 s@$ g0@2@00 g1@3@00))
                    ($SortWrappers.$FVF<next>To$Snap (sm@68@00 s@$ g0@2@00 g1@3@00)))
                  ($SortWrappers.$FVF<next>To$Snap (sm@68@00 s@$ g0@2@00 g1@3@00))) g1@3@00) u v)))
            (exists_path<Bool> ($$ (ite
              (and
                (Set_in u g1@3@00)
                (and
                  (Set_in v g1@3@00)
                  (exists_path<Bool> ($$ ($SortWrappers.$FVF<next>To$Snap (sm@44@00 s@$ g0@2@00 g1@3@00)) g1@3@00) u v)))
              ($SortWrappers.$FVF<next>To$Snap (sm@49@00 s@$ g0@2@00 g1@3@00))
              ($SortWrappers.$FVF<next>To$Snap (sm@73@00 s@$ g0@2@00 g1@3@00))) (Set_union g1@3@00 g0@2@00)) u v))
          :pattern ((exists_path<Bool> ($$ (ite
            (Set_in v g1@3@00)
            (ite
              (Set_in u g1@3@00)
              ($SortWrappers.$FVF<next>To$Snap (sm@44@00 s@$ g0@2@00 g1@3@00))
              ($SortWrappers.$FVF<next>To$Snap (sm@68@00 s@$ g0@2@00 g1@3@00)))
            ($SortWrappers.$FVF<next>To$Snap (sm@68@00 s@$ g0@2@00 g1@3@00))) g1@3@00) u v))
          :pattern ((exists_path<Bool> ($$ (ite
            (and
              (Set_in u g1@3@00)
              (and
                (Set_in v g1@3@00)
                (exists_path<Bool> ($$ ($SortWrappers.$FVF<next>To$Snap (sm@44@00 s@$ g0@2@00 g1@3@00)) g1@3@00) u v)))
            ($SortWrappers.$FVF<next>To$Snap (sm@49@00 s@$ g0@2@00 g1@3@00))
            ($SortWrappers.$FVF<next>To$Snap (sm@73@00 s@$ g0@2@00 g1@3@00))) (Set_union g1@3@00 g0@2@00)) u v))
          ))
        (forall ((u $Ref) (v $Ref)) (!
          (=>
            (and
              (Set_in u g0@2@00)
              (and
                (Set_in v g0@2@00)
                (not
                  (exists_path<Bool> ($$ (ite
                    (Set_in v g0@2@00)
                    (ite
                      (Set_in u g0@2@00)
                      ($SortWrappers.$FVF<next>To$Snap (sm@32@00 s@$ g0@2@00 g1@3@00))
                      ($SortWrappers.$FVF<next>To$Snap (sm@56@00 s@$ g0@2@00 g1@3@00)))
                    ($SortWrappers.$FVF<next>To$Snap (sm@56@00 s@$ g0@2@00 g1@3@00))) g0@2@00) u v))))
            (not
              (exists_path<Bool> ($$ (ite
                (and
                  (Set_in u g0@2@00)
                  (and
                    (Set_in v g0@2@00)
                    (exists_path<Bool> ($$ ($SortWrappers.$FVF<next>To$Snap (sm@32@00 s@$ g0@2@00 g1@3@00)) g0@2@00) u v)))
                ($SortWrappers.$FVF<next>To$Snap (sm@37@00 s@$ g0@2@00 g1@3@00))
                ($SortWrappers.$FVF<next>To$Snap (sm@61@00 s@$ g0@2@00 g1@3@00))) (Set_union g0@2@00 g1@3@00)) u v)))
          :pattern ((exists_path<Bool> ($$ (ite
            (Set_in v g0@2@00)
            (ite
              (Set_in u g0@2@00)
              ($SortWrappers.$FVF<next>To$Snap (sm@32@00 s@$ g0@2@00 g1@3@00))
              ($SortWrappers.$FVF<next>To$Snap (sm@56@00 s@$ g0@2@00 g1@3@00)))
            ($SortWrappers.$FVF<next>To$Snap (sm@56@00 s@$ g0@2@00 g1@3@00))) g0@2@00) u v))
          :pattern ((exists_path<Bool> ($$ (ite
            (and
              (Set_in u g0@2@00)
              (and
                (Set_in v g0@2@00)
                (exists_path<Bool> ($$ ($SortWrappers.$FVF<next>To$Snap (sm@32@00 s@$ g0@2@00 g1@3@00)) g0@2@00) u v)))
            ($SortWrappers.$FVF<next>To$Snap (sm@37@00 s@$ g0@2@00 g1@3@00))
            ($SortWrappers.$FVF<next>To$Snap (sm@61@00 s@$ g0@2@00 g1@3@00))) (Set_union g0@2@00 g1@3@00)) u v))
          ))
        (forall ((u $Ref) (v $Ref)) (!
          (=>
            (and
              (Set_in u g1@3@00)
              (and
                (Set_in v g1@3@00)
                (not
                  (exists_path<Bool> ($$ (ite
                    (Set_in v g1@3@00)
                    (ite
                      (Set_in u g1@3@00)
                      ($SortWrappers.$FVF<next>To$Snap (sm@44@00 s@$ g0@2@00 g1@3@00))
                      ($SortWrappers.$FVF<next>To$Snap (sm@68@00 s@$ g0@2@00 g1@3@00)))
                    ($SortWrappers.$FVF<next>To$Snap (sm@68@00 s@$ g0@2@00 g1@3@00))) g1@3@00) u v))))
            (not
              (exists_path<Bool> ($$ (ite
                (and
                  (Set_in u g1@3@00)
                  (and
                    (Set_in v g1@3@00)
                    (exists_path<Bool> ($$ ($SortWrappers.$FVF<next>To$Snap (sm@44@00 s@$ g0@2@00 g1@3@00)) g1@3@00) u v)))
                ($SortWrappers.$FVF<next>To$Snap (sm@49@00 s@$ g0@2@00 g1@3@00))
                ($SortWrappers.$FVF<next>To$Snap (sm@73@00 s@$ g0@2@00 g1@3@00))) (Set_union g1@3@00 g0@2@00)) u v)))
          :pattern ((exists_path<Bool> ($$ (ite
            (Set_in v g1@3@00)
            (ite
              (Set_in u g1@3@00)
              ($SortWrappers.$FVF<next>To$Snap (sm@44@00 s@$ g0@2@00 g1@3@00))
              ($SortWrappers.$FVF<next>To$Snap (sm@68@00 s@$ g0@2@00 g1@3@00)))
            ($SortWrappers.$FVF<next>To$Snap (sm@68@00 s@$ g0@2@00 g1@3@00))) g1@3@00) u v))
          :pattern ((exists_path<Bool> ($$ (ite
            (and
              (Set_in u g0@2@00)
              (and
                (Set_in v g0@2@00)
                (exists_path<Bool> ($$ ($SortWrappers.$FVF<next>To$Snap (sm@32@00 s@$ g0@2@00 g1@3@00)) g0@2@00) u v)))
            ($SortWrappers.$FVF<next>To$Snap (sm@37@00 s@$ g0@2@00 g1@3@00))
            ($SortWrappers.$FVF<next>To$Snap (sm@61@00 s@$ g0@2@00 g1@3@00))) (Set_union g0@2@00 g1@3@00)) u v))
          ))))))
  :pattern ((apply_TCFraming%limited s@$ g0@2@00 g1@3@00))
  :qid |quant-u-14219|)))
; WARNING: (1509,11): 'if' cannot be used in patterns.
; WARNING: (1509,11): 'if' cannot be used in patterns.
; WARNING: (1509,11): 'and' cannot be used in patterns.
; WARNING: (1509,11): 'and' cannot be used in patterns.
; WARNING: (1509,11): 'if' cannot be used in patterns.
; WARNING: (1546,11): 'if' cannot be used in patterns.
; WARNING: (1546,11): 'if' cannot be used in patterns.
; WARNING: (1546,11): 'and' cannot be used in patterns.
; WARNING: (1546,11): 'and' cannot be used in patterns.
; WARNING: (1546,11): 'if' cannot be used in patterns.
; WARNING: (1585,11): 'if' cannot be used in patterns.
; WARNING: (1585,11): 'if' cannot be used in patterns.
; WARNING: (1585,11): 'and' cannot be used in patterns.
; WARNING: (1585,11): 'and' cannot be used in patterns.
; WARNING: (1585,11): 'if' cannot be used in patterns.
; WARNING: (1624,11): 'if' cannot be used in patterns.
; WARNING: (1624,11): 'if' cannot be used in patterns.
; WARNING: (1624,11): 'and' cannot be used in patterns.
; WARNING: (1624,11): 'and' cannot be used in patterns.
; WARNING: (1624,11): 'if' cannot be used in patterns.
(assert (forall ((s@$ $Snap) (g0@2@00 Set<$Ref>) (g1@3@00 Set<$Ref>)) (!
  (let ((result@4@00 (apply_TCFraming%limited s@$ g0@2@00 g1@3@00))) true)
  :pattern ((apply_TCFraming%limited s@$ g0@2@00 g1@3@00))
  :qid |quant-u-14220|)))
(assert (forall ((s@$ $Snap) (g0@2@00 Set<$Ref>) (g1@3@00 Set<$Ref>)) (!
  (let ((result@4@00 (apply_TCFraming%limited s@$ g0@2@00 g1@3@00))) (=>
    (apply_TCFraming%precondition s@$ g0@2@00 g1@3@00)
    (forall ((u $Ref) (v $Ref)) (!
      (and
        (=>
          (and (Set_in u g0@2@00) (Set_in v g0@2@00))
          ($$%precondition (ite
            (Set_in v g0@2@00)
            (ite
              (Set_in u g0@2@00)
              ($SortWrappers.$FVF<next>To$Snap (sm@32@00 s@$ g0@2@00 g1@3@00))
              ($SortWrappers.$FVF<next>To$Snap (sm@56@00 s@$ g0@2@00 g1@3@00)))
            ($SortWrappers.$FVF<next>To$Snap (sm@56@00 s@$ g0@2@00 g1@3@00))) g0@2@00))
        (=>
          (and
            (Set_in u g0@2@00)
            (and
              (Set_in v g0@2@00)
              (exists_path<Bool> ($$ (ite
                (Set_in v g0@2@00)
                (ite
                  (Set_in u g0@2@00)
                  ($SortWrappers.$FVF<next>To$Snap (sm@32@00 s@$ g0@2@00 g1@3@00))
                  ($SortWrappers.$FVF<next>To$Snap (sm@56@00 s@$ g0@2@00 g1@3@00)))
                ($SortWrappers.$FVF<next>To$Snap (sm@56@00 s@$ g0@2@00 g1@3@00))) g0@2@00) u v)))
          (and
            (=>
              (and (Set_in u g0@2@00) (Set_in v g0@2@00))
              ($$%precondition ($SortWrappers.$FVF<next>To$Snap (sm@32@00 s@$ g0@2@00 g1@3@00)) g0@2@00))
            ($$%precondition (ite
              (and
                (Set_in u g0@2@00)
                (and
                  (Set_in v g0@2@00)
                  (exists_path<Bool> ($$ ($SortWrappers.$FVF<next>To$Snap (sm@32@00 s@$ g0@2@00 g1@3@00)) g0@2@00) u v)))
              ($SortWrappers.$FVF<next>To$Snap (sm@37@00 s@$ g0@2@00 g1@3@00))
              ($SortWrappers.$FVF<next>To$Snap (sm@61@00 s@$ g0@2@00 g1@3@00))) (Set_union g0@2@00 g1@3@00)))))
      :pattern ((exists_path<Bool> ($$ (ite
        (Set_in v g0@2@00)
        (ite
          (Set_in u g0@2@00)
          ($SortWrappers.$FVF<next>To$Snap (sm@32@00 s@$ g0@2@00 g1@3@00))
          ($SortWrappers.$FVF<next>To$Snap (sm@56@00 s@$ g0@2@00 g1@3@00)))
        ($SortWrappers.$FVF<next>To$Snap (sm@56@00 s@$ g0@2@00 g1@3@00))) g0@2@00) u v))
      :pattern ((exists_path<Bool> ($$ (ite
        (and
          (Set_in u g0@2@00)
          (and
            (Set_in v g0@2@00)
            (exists_path<Bool> ($$ ($SortWrappers.$FVF<next>To$Snap (sm@32@00 s@$ g0@2@00 g1@3@00)) g0@2@00) u v)))
        ($SortWrappers.$FVF<next>To$Snap (sm@37@00 s@$ g0@2@00 g1@3@00))
        ($SortWrappers.$FVF<next>To$Snap (sm@61@00 s@$ g0@2@00 g1@3@00))) (Set_union g0@2@00 g1@3@00)) u v))
      ))))
  :pattern ((apply_TCFraming%limited s@$ g0@2@00 g1@3@00))
  :qid |quant-u-14221|)))
; WARNING: (1684,7): 'if' cannot be used in patterns.
; WARNING: (1684,7): 'if' cannot be used in patterns.
; WARNING: (1684,7): 'and' cannot be used in patterns.
; WARNING: (1684,7): 'and' cannot be used in patterns.
; WARNING: (1684,7): 'if' cannot be used in patterns.
(assert (forall ((s@$ $Snap) (g0@2@00 Set<$Ref>) (g1@3@00 Set<$Ref>)) (!
  (let ((result@4@00 (apply_TCFraming%limited s@$ g0@2@00 g1@3@00))) (=>
    (apply_TCFraming%precondition s@$ g0@2@00 g1@3@00)
    (forall ((u $Ref) (v $Ref)) (!
      (and
        (=>
          (and (Set_in u g1@3@00) (Set_in v g1@3@00))
          ($$%precondition (ite
            (Set_in v g1@3@00)
            (ite
              (Set_in u g1@3@00)
              ($SortWrappers.$FVF<next>To$Snap (sm@44@00 s@$ g0@2@00 g1@3@00))
              ($SortWrappers.$FVF<next>To$Snap (sm@68@00 s@$ g0@2@00 g1@3@00)))
            ($SortWrappers.$FVF<next>To$Snap (sm@68@00 s@$ g0@2@00 g1@3@00))) g1@3@00))
        (=>
          (and
            (Set_in u g1@3@00)
            (and
              (Set_in v g1@3@00)
              (exists_path<Bool> ($$ (ite
                (Set_in v g1@3@00)
                (ite
                  (Set_in u g1@3@00)
                  ($SortWrappers.$FVF<next>To$Snap (sm@44@00 s@$ g0@2@00 g1@3@00))
                  ($SortWrappers.$FVF<next>To$Snap (sm@68@00 s@$ g0@2@00 g1@3@00)))
                ($SortWrappers.$FVF<next>To$Snap (sm@68@00 s@$ g0@2@00 g1@3@00))) g1@3@00) u v)))
          (and
            (=>
              (and (Set_in u g1@3@00) (Set_in v g1@3@00))
              ($$%precondition ($SortWrappers.$FVF<next>To$Snap (sm@44@00 s@$ g0@2@00 g1@3@00)) g1@3@00))
            ($$%precondition (ite
              (and
                (Set_in u g1@3@00)
                (and
                  (Set_in v g1@3@00)
                  (exists_path<Bool> ($$ ($SortWrappers.$FVF<next>To$Snap (sm@44@00 s@$ g0@2@00 g1@3@00)) g1@3@00) u v)))
              ($SortWrappers.$FVF<next>To$Snap (sm@49@00 s@$ g0@2@00 g1@3@00))
              ($SortWrappers.$FVF<next>To$Snap (sm@73@00 s@$ g0@2@00 g1@3@00))) (Set_union g1@3@00 g0@2@00)))))
      :pattern ((exists_path<Bool> ($$ (ite
        (Set_in v g1@3@00)
        (ite
          (Set_in u g1@3@00)
          ($SortWrappers.$FVF<next>To$Snap (sm@44@00 s@$ g0@2@00 g1@3@00))
          ($SortWrappers.$FVF<next>To$Snap (sm@68@00 s@$ g0@2@00 g1@3@00)))
        ($SortWrappers.$FVF<next>To$Snap (sm@68@00 s@$ g0@2@00 g1@3@00))) g1@3@00) u v))
      :pattern ((exists_path<Bool> ($$ (ite
        (and
          (Set_in u g1@3@00)
          (and
            (Set_in v g1@3@00)
            (exists_path<Bool> ($$ ($SortWrappers.$FVF<next>To$Snap (sm@44@00 s@$ g0@2@00 g1@3@00)) g1@3@00) u v)))
        ($SortWrappers.$FVF<next>To$Snap (sm@49@00 s@$ g0@2@00 g1@3@00))
        ($SortWrappers.$FVF<next>To$Snap (sm@73@00 s@$ g0@2@00 g1@3@00))) (Set_union g1@3@00 g0@2@00)) u v))
      ))))
  :pattern ((apply_TCFraming%limited s@$ g0@2@00 g1@3@00))
  :qid |quant-u-14222|)))
; WARNING: (1740,7): 'if' cannot be used in patterns.
; WARNING: (1740,7): 'if' cannot be used in patterns.
; WARNING: (1740,7): 'and' cannot be used in patterns.
; WARNING: (1740,7): 'and' cannot be used in patterns.
; WARNING: (1740,7): 'if' cannot be used in patterns.
(assert (forall ((s@$ $Snap) (g0@2@00 Set<$Ref>) (g1@3@00 Set<$Ref>)) (!
  (let ((result@4@00 (apply_TCFraming%limited s@$ g0@2@00 g1@3@00))) (=>
    (apply_TCFraming%precondition s@$ g0@2@00 g1@3@00)
    (forall ((u $Ref) (v $Ref)) (!
      (and
        (=>
          (and (Set_in u g0@2@00) (Set_in v g0@2@00))
          ($$%precondition (ite
            (Set_in v g0@2@00)
            (ite
              (Set_in u g0@2@00)
              ($SortWrappers.$FVF<next>To$Snap (sm@32@00 s@$ g0@2@00 g1@3@00))
              ($SortWrappers.$FVF<next>To$Snap (sm@56@00 s@$ g0@2@00 g1@3@00)))
            ($SortWrappers.$FVF<next>To$Snap (sm@56@00 s@$ g0@2@00 g1@3@00))) g0@2@00))
        (=>
          (and
            (Set_in u g0@2@00)
            (and
              (Set_in v g0@2@00)
              (not
                (exists_path<Bool> ($$ (ite
                  (Set_in v g0@2@00)
                  (ite
                    (Set_in u g0@2@00)
                    ($SortWrappers.$FVF<next>To$Snap (sm@32@00 s@$ g0@2@00 g1@3@00))
                    ($SortWrappers.$FVF<next>To$Snap (sm@56@00 s@$ g0@2@00 g1@3@00)))
                  ($SortWrappers.$FVF<next>To$Snap (sm@56@00 s@$ g0@2@00 g1@3@00))) g0@2@00) u v))))
          (and
            (=>
              (and (Set_in u g0@2@00) (Set_in v g0@2@00))
              ($$%precondition ($SortWrappers.$FVF<next>To$Snap (sm@32@00 s@$ g0@2@00 g1@3@00)) g0@2@00))
            ($$%precondition (ite
              (and
                (Set_in u g0@2@00)
                (and
                  (Set_in v g0@2@00)
                  (exists_path<Bool> ($$ ($SortWrappers.$FVF<next>To$Snap (sm@32@00 s@$ g0@2@00 g1@3@00)) g0@2@00) u v)))
              ($SortWrappers.$FVF<next>To$Snap (sm@37@00 s@$ g0@2@00 g1@3@00))
              ($SortWrappers.$FVF<next>To$Snap (sm@61@00 s@$ g0@2@00 g1@3@00))) (Set_union g0@2@00 g1@3@00)))))
      :pattern ((exists_path<Bool> ($$ (ite
        (Set_in v g0@2@00)
        (ite
          (Set_in u g0@2@00)
          ($SortWrappers.$FVF<next>To$Snap (sm@32@00 s@$ g0@2@00 g1@3@00))
          ($SortWrappers.$FVF<next>To$Snap (sm@56@00 s@$ g0@2@00 g1@3@00)))
        ($SortWrappers.$FVF<next>To$Snap (sm@56@00 s@$ g0@2@00 g1@3@00))) g0@2@00) u v))
      :pattern ((exists_path<Bool> ($$ (ite
        (and
          (Set_in u g0@2@00)
          (and
            (Set_in v g0@2@00)
            (exists_path<Bool> ($$ ($SortWrappers.$FVF<next>To$Snap (sm@32@00 s@$ g0@2@00 g1@3@00)) g0@2@00) u v)))
        ($SortWrappers.$FVF<next>To$Snap (sm@37@00 s@$ g0@2@00 g1@3@00))
        ($SortWrappers.$FVF<next>To$Snap (sm@61@00 s@$ g0@2@00 g1@3@00))) (Set_union g0@2@00 g1@3@00)) u v))
      ))))
  :pattern ((apply_TCFraming%limited s@$ g0@2@00 g1@3@00))
  :qid |quant-u-14223|)))
; WARNING: (1797,7): 'if' cannot be used in patterns.
; WARNING: (1797,7): 'if' cannot be used in patterns.
; WARNING: (1797,7): 'and' cannot be used in patterns.
; WARNING: (1797,7): 'and' cannot be used in patterns.
; WARNING: (1797,7): 'if' cannot be used in patterns.
(assert (forall ((s@$ $Snap) (g0@2@00 Set<$Ref>) (g1@3@00 Set<$Ref>)) (!
  (let ((result@4@00 (apply_TCFraming%limited s@$ g0@2@00 g1@3@00))) (=>
    (apply_TCFraming%precondition s@$ g0@2@00 g1@3@00)
    (forall ((u $Ref) (v $Ref)) (!
      (and
        (=>
          (and (Set_in u g1@3@00) (Set_in v g1@3@00))
          ($$%precondition (ite
            (Set_in v g1@3@00)
            (ite
              (Set_in u g1@3@00)
              ($SortWrappers.$FVF<next>To$Snap (sm@44@00 s@$ g0@2@00 g1@3@00))
              ($SortWrappers.$FVF<next>To$Snap (sm@68@00 s@$ g0@2@00 g1@3@00)))
            ($SortWrappers.$FVF<next>To$Snap (sm@68@00 s@$ g0@2@00 g1@3@00))) g1@3@00))
        (=>
          (and
            (Set_in u g1@3@00)
            (and
              (Set_in v g1@3@00)
              (not
                (exists_path<Bool> ($$ (ite
                  (Set_in v g1@3@00)
                  (ite
                    (Set_in u g1@3@00)
                    ($SortWrappers.$FVF<next>To$Snap (sm@44@00 s@$ g0@2@00 g1@3@00))
                    ($SortWrappers.$FVF<next>To$Snap (sm@68@00 s@$ g0@2@00 g1@3@00)))
                  ($SortWrappers.$FVF<next>To$Snap (sm@68@00 s@$ g0@2@00 g1@3@00))) g1@3@00) u v))))
          (and
            (=>
              (and (Set_in u g1@3@00) (Set_in v g1@3@00))
              ($$%precondition ($SortWrappers.$FVF<next>To$Snap (sm@44@00 s@$ g0@2@00 g1@3@00)) g1@3@00))
            ($$%precondition (ite
              (and
                (Set_in u g1@3@00)
                (and
                  (Set_in v g1@3@00)
                  (exists_path<Bool> ($$ ($SortWrappers.$FVF<next>To$Snap (sm@44@00 s@$ g0@2@00 g1@3@00)) g1@3@00) u v)))
              ($SortWrappers.$FVF<next>To$Snap (sm@49@00 s@$ g0@2@00 g1@3@00))
              ($SortWrappers.$FVF<next>To$Snap (sm@73@00 s@$ g0@2@00 g1@3@00))) (Set_union g1@3@00 g0@2@00)))))
      :pattern ((exists_path<Bool> ($$ (ite
        (Set_in v g1@3@00)
        (ite
          (Set_in u g1@3@00)
          ($SortWrappers.$FVF<next>To$Snap (sm@44@00 s@$ g0@2@00 g1@3@00))
          ($SortWrappers.$FVF<next>To$Snap (sm@68@00 s@$ g0@2@00 g1@3@00)))
        ($SortWrappers.$FVF<next>To$Snap (sm@68@00 s@$ g0@2@00 g1@3@00))) g1@3@00) u v))
      :pattern ((exists_path<Bool> ($$ (ite
        (and
          (Set_in u g0@2@00)
          (and
            (Set_in v g0@2@00)
            (exists_path<Bool> ($$ ($SortWrappers.$FVF<next>To$Snap (sm@32@00 s@$ g0@2@00 g1@3@00)) g0@2@00) u v)))
        ($SortWrappers.$FVF<next>To$Snap (sm@37@00 s@$ g0@2@00 g1@3@00))
        ($SortWrappers.$FVF<next>To$Snap (sm@61@00 s@$ g0@2@00 g1@3@00))) (Set_union g0@2@00 g1@3@00)) u v))
      ))))
  :pattern ((apply_TCFraming%limited s@$ g0@2@00 g1@3@00))
  :qid |quant-u-14224|)))
; WARNING: (1854,7): 'if' cannot be used in patterns.
; WARNING: (1854,7): 'if' cannot be used in patterns.
; WARNING: (1854,7): 'and' cannot be used in patterns.
; WARNING: (1854,7): 'and' cannot be used in patterns.
; WARNING: (1854,7): 'if' cannot be used in patterns.
; End function- and predicate-related preamble
; ------------------------------------------------------------
; ---------- link ----------
(declare-const g@0@01 Set<$Ref>)
(declare-const x@1@01 $Ref)
(declare-const y@2@01 $Ref)
(declare-const g@3@01 Set<$Ref>)
(declare-const x@4@01 $Ref)
(declare-const y@5@01 $Ref)
(set-option :timeout 0)
(push) ; 1
(declare-const $t@6@01 $Snap)
(assert (= $t@6@01 ($Snap.combine ($Snap.first $t@6@01) ($Snap.second $t@6@01))))
(assert (= ($Snap.first $t@6@01) $Snap.unit))
; [eval] (x in g)
(assert (Set_in x@4@01 g@3@01))
(assert (=
  ($Snap.second $t@6@01)
  ($Snap.combine
    ($Snap.first ($Snap.second $t@6@01))
    ($Snap.second ($Snap.second $t@6@01)))))
(assert (= ($Snap.first ($Snap.second $t@6@01)) $Snap.unit))
; [eval] y != null ==> (y in g)
; [eval] y != null
(push) ; 2
(push) ; 3
(set-option :timeout 10)
(assert (not (= y@5@01 $Ref.null)))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (not (= y@5@01 $Ref.null))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; [then-branch: 0 | y@5@01 != Null | live]
; [else-branch: 0 | y@5@01 == Null | live]
(set-option :timeout 0)
(push) ; 3
; [then-branch: 0 | y@5@01 != Null]
(assert (not (= y@5@01 $Ref.null)))
; [eval] (y in g)
(pop) ; 3
(push) ; 3
; [else-branch: 0 | y@5@01 == Null]
(assert (= y@5@01 $Ref.null))
(pop) ; 3
(pop) ; 2
; Joined path conditions
; Joined path conditions
(assert (or (= y@5@01 $Ref.null) (not (= y@5@01 $Ref.null))))
(assert (=> (not (= y@5@01 $Ref.null)) (Set_in y@5@01 g@3@01)))
(assert (=
  ($Snap.second ($Snap.second $t@6@01))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second $t@6@01)))
    ($Snap.second ($Snap.second ($Snap.second $t@6@01))))))
(assert (= ($Snap.first ($Snap.second ($Snap.second $t@6@01))) $Snap.unit))
; [eval] !((null in g))
; [eval] (null in g)
(assert (not (Set_in $Ref.null g@3@01)))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second $t@6@01)))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@6@01))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@6@01)))))))
(assert (= ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@6@01)))) $Snap.unit))
; [eval] (x in g)
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@6@01))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@6@01)))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@6@01))))))))
(declare-const sm@7@01 $FVF<next>)
; Definitional axioms for singleton-SM's value
(assert (=
  ($FVF.lookup_next (as sm@7@01  $FVF<next>) x@4@01)
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@6@01))))))))
(assert (not (= x@4@01 $Ref.null)))
(declare-const sm@8@01 $FVF<next>)
; Definitional axioms for snapshot map values
(assert (forall ((r $Ref)) (!
  (=>
    (= r x@4@01)
    (=
      ($FVF.lookup_next (as sm@8@01  $FVF<next>) r)
      ($FVF.lookup_next (as sm@7@01  $FVF<next>) r)))
  :pattern (($FVF.lookup_next (as sm@8@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next (as sm@7@01  $FVF<next>) r))
  :qid |qp.fvfValDef0|)))
(assert (forall ((r $Ref)) (!
  ($FVF.loc_next ($FVF.lookup_next (as sm@7@01  $FVF<next>) r) r)
  :pattern (($FVF.lookup_next (as sm@8@01  $FVF<next>) r))
  :qid |qp.fvfResTrgDef1|)))
(assert ($FVF.loc_next ($FVF.lookup_next (as sm@8@01  $FVF<next>) x@4@01) x@4@01))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@6@01)))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@6@01))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@6@01)))))))))
(declare-const n@9@01 $Ref)
(push) ; 2
; [eval] (n in g) && n != x
; [eval] (n in g)
(push) ; 3
; [then-branch: 1 | !(n@9@01 in g@3@01) | live]
; [else-branch: 1 | n@9@01 in g@3@01 | live]
(push) ; 4
; [then-branch: 1 | !(n@9@01 in g@3@01)]
(assert (not (Set_in n@9@01 g@3@01)))
(pop) ; 4
(push) ; 4
; [else-branch: 1 | n@9@01 in g@3@01]
(assert (Set_in n@9@01 g@3@01))
; [eval] n != x
(pop) ; 4
(pop) ; 3
; Joined path conditions
; Joined path conditions
(assert (or (Set_in n@9@01 g@3@01) (not (Set_in n@9@01 g@3@01))))
(assert (and (Set_in n@9@01 g@3@01) (not (= n@9@01 x@4@01))))
; Definitional axioms for snapshot map values
(pop) ; 2
(declare-fun inv@10@01 ($Ref) $Ref)
(declare-fun img@11@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
(assert (forall ((n@9@01 $Ref)) (!
  (=>
    (and (Set_in n@9@01 g@3@01) (not (= n@9@01 x@4@01)))
    (or (Set_in n@9@01 g@3@01) (not (Set_in n@9@01 g@3@01))))
  :pattern (($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@6@01))))))) n@9@01) n@9@01))
  :qid |next-aux|)))
; Check receiver injectivity
(push) ; 2
(assert (not (forall ((n1@9@01 $Ref) (n2@9@01 $Ref)) (!
  (=>
    (and
      (and (Set_in n1@9@01 g@3@01) (not (= n1@9@01 x@4@01)))
      (and (Set_in n2@9@01 g@3@01) (not (= n2@9@01 x@4@01)))
      (= n1@9@01 n2@9@01))
    (= n1@9@01 n2@9@01))
  
  :qid |next-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 2
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((n@9@01 $Ref)) (!
  (=>
    (and (Set_in n@9@01 g@3@01) (not (= n@9@01 x@4@01)))
    (and (= (inv@10@01 n@9@01) n@9@01) (img@11@01 n@9@01)))
  :pattern (($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@6@01))))))) n@9@01) n@9@01))
  :qid |quant-u-14226|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@11@01 r)
      (and (Set_in (inv@10@01 r) g@3@01) (not (= (inv@10@01 r) x@4@01))))
    (= (inv@10@01 r) r))
  :pattern ((inv@10@01 r))
  :qid |next-fctOfInv|)))
; Permissions are non-negative
; Field permissions are at most one
; Permission implies non-null receiver
(assert (forall ((n@9@01 $Ref)) (!
  (=>
    (and (Set_in n@9@01 g@3@01) (not (= n@9@01 x@4@01)))
    (not (= n@9@01 $Ref.null)))
  :pattern (($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@6@01))))))) n@9@01) n@9@01))
  :qid |next-permImpliesNonNull|)))
(declare-const sm@12@01 $FVF<next>)
; Definitional axioms for snapshot map values
(assert (forall ((r $Ref)) (!
  (=>
    (= r x@4@01)
    (=
      ($FVF.lookup_next (as sm@12@01  $FVF<next>) r)
      ($FVF.lookup_next (as sm@7@01  $FVF<next>) r)))
  :pattern (($FVF.lookup_next (as sm@12@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next (as sm@7@01  $FVF<next>) r))
  :qid |qp.fvfValDef2|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@11@01 r)
      (and (Set_in (inv@10@01 r) g@3@01) (not (= (inv@10@01 r) x@4@01))))
    (=
      ($FVF.lookup_next (as sm@12@01  $FVF<next>) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@6@01))))))) r)))
  :pattern (($FVF.lookup_next (as sm@12@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@6@01))))))) r))
  :qid |qp.fvfValDef3|)))
(assert (forall ((r $Ref)) (!
  (and
    ($FVF.loc_next ($FVF.lookup_next (as sm@7@01  $FVF<next>) r) r)
    ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@6@01))))))) r) r))
  :pattern (($FVF.lookup_next (as sm@12@01  $FVF<next>) r))
  :qid |qp.fvfResTrgDef4|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and (Set_in (inv@10@01 r) g@3@01) (not (= (inv@10@01 r) x@4@01)))
    ($FVF.loc_next ($FVF.lookup_next (as sm@12@01  $FVF<next>) r) r))
  :pattern ((inv@10@01 r))
  :qid |quant-u-14227|)))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@6@01))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@6@01)))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@6@01))))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@6@01)))))))
  $Snap.unit))
; [eval] (forall n$0: Ref :: { (n$0.next in g) } { (n$0 in g), n$0.next } (n$0 in g) && n$0.next != null ==> (n$0.next in g))
(declare-const n$0@13@01 $Ref)
(push) ; 2
; [eval] (n$0 in g) && n$0.next != null ==> (n$0.next in g)
; [eval] (n$0 in g) && n$0.next != null
; [eval] (n$0 in g)
(push) ; 3
; [then-branch: 2 | !(n$0@13@01 in g@3@01) | live]
; [else-branch: 2 | n$0@13@01 in g@3@01 | live]
(push) ; 4
; [then-branch: 2 | !(n$0@13@01 in g@3@01)]
(assert (not (Set_in n$0@13@01 g@3@01)))
(pop) ; 4
(push) ; 4
; [else-branch: 2 | n$0@13@01 in g@3@01]
(assert (Set_in n$0@13@01 g@3@01))
; [eval] n$0.next != null
(assert (and
  (forall ((r $Ref)) (!
    (=>
      (= r x@4@01)
      (=
        ($FVF.lookup_next (as sm@12@01  $FVF<next>) r)
        ($FVF.lookup_next (as sm@7@01  $FVF<next>) r)))
    :pattern (($FVF.lookup_next (as sm@12@01  $FVF<next>) r))
    :pattern (($FVF.lookup_next (as sm@7@01  $FVF<next>) r))
    :qid |qp.fvfValDef2|))
  (forall ((r $Ref)) (!
    (=>
      (and
        (img@11@01 r)
        (and (Set_in (inv@10@01 r) g@3@01) (not (= (inv@10@01 r) x@4@01))))
      (=
        ($FVF.lookup_next (as sm@12@01  $FVF<next>) r)
        ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@6@01))))))) r)))
    :pattern (($FVF.lookup_next (as sm@12@01  $FVF<next>) r))
    :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@6@01))))))) r))
    :qid |qp.fvfValDef3|))
  (forall ((r $Ref)) (!
    (and
      ($FVF.loc_next ($FVF.lookup_next (as sm@7@01  $FVF<next>) r) r)
      ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@6@01))))))) r) r))
    :pattern (($FVF.lookup_next (as sm@12@01  $FVF<next>) r))
    :qid |qp.fvfResTrgDef4|))))
(assert ($FVF.loc_next ($FVF.lookup_next (as sm@12@01  $FVF<next>) n$0@13@01) n$0@13@01))
(push) ; 5
(assert (not (<
  $Perm.No
  (+
    (ite (= n$0@13@01 x@4@01) $Perm.Write $Perm.No)
    (ite
      (and
        (img@11@01 n$0@13@01)
        (and
          (Set_in (inv@10@01 n$0@13@01) g@3@01)
          (not (= (inv@10@01 n$0@13@01) x@4@01))))
      (/ (to_real 1) (to_real 2))
      $Perm.No)))))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(pop) ; 4
(pop) ; 3
; Joined path conditions
; Joined path conditions
(assert (forall ((r $Ref)) (!
  (=>
    (= r x@4@01)
    (=
      ($FVF.lookup_next (as sm@12@01  $FVF<next>) r)
      ($FVF.lookup_next (as sm@7@01  $FVF<next>) r)))
  :pattern (($FVF.lookup_next (as sm@12@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next (as sm@7@01  $FVF<next>) r))
  :qid |qp.fvfValDef2|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@11@01 r)
      (and (Set_in (inv@10@01 r) g@3@01) (not (= (inv@10@01 r) x@4@01))))
    (=
      ($FVF.lookup_next (as sm@12@01  $FVF<next>) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@6@01))))))) r)))
  :pattern (($FVF.lookup_next (as sm@12@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@6@01))))))) r))
  :qid |qp.fvfValDef3|)))
(assert (forall ((r $Ref)) (!
  (and
    ($FVF.loc_next ($FVF.lookup_next (as sm@7@01  $FVF<next>) r) r)
    ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@6@01))))))) r) r))
  :pattern (($FVF.lookup_next (as sm@12@01  $FVF<next>) r))
  :qid |qp.fvfResTrgDef4|)))
(assert (=>
  (Set_in n$0@13@01 g@3@01)
  (and
    (Set_in n$0@13@01 g@3@01)
    ($FVF.loc_next ($FVF.lookup_next (as sm@12@01  $FVF<next>) n$0@13@01) n$0@13@01))))
(assert (or (Set_in n$0@13@01 g@3@01) (not (Set_in n$0@13@01 g@3@01))))
(push) ; 3
; [then-branch: 3 | n$0@13@01 in g@3@01 && Lookup(next, sm@12@01, n$0@13@01) != Null | live]
; [else-branch: 3 | !(n$0@13@01 in g@3@01 && Lookup(next, sm@12@01, n$0@13@01) != Null) | live]
(push) ; 4
; [then-branch: 3 | n$0@13@01 in g@3@01 && Lookup(next, sm@12@01, n$0@13@01) != Null]
(assert (and
  (Set_in n$0@13@01 g@3@01)
  (not (= ($FVF.lookup_next (as sm@12@01  $FVF<next>) n$0@13@01) $Ref.null))))
; [eval] (n$0.next in g)
(assert (and
  (forall ((r $Ref)) (!
    (=>
      (= r x@4@01)
      (=
        ($FVF.lookup_next (as sm@12@01  $FVF<next>) r)
        ($FVF.lookup_next (as sm@7@01  $FVF<next>) r)))
    :pattern (($FVF.lookup_next (as sm@12@01  $FVF<next>) r))
    :pattern (($FVF.lookup_next (as sm@7@01  $FVF<next>) r))
    :qid |qp.fvfValDef2|))
  (forall ((r $Ref)) (!
    (=>
      (and
        (img@11@01 r)
        (and (Set_in (inv@10@01 r) g@3@01) (not (= (inv@10@01 r) x@4@01))))
      (=
        ($FVF.lookup_next (as sm@12@01  $FVF<next>) r)
        ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@6@01))))))) r)))
    :pattern (($FVF.lookup_next (as sm@12@01  $FVF<next>) r))
    :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@6@01))))))) r))
    :qid |qp.fvfValDef3|))
  (forall ((r $Ref)) (!
    (and
      ($FVF.loc_next ($FVF.lookup_next (as sm@7@01  $FVF<next>) r) r)
      ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@6@01))))))) r) r))
    :pattern (($FVF.lookup_next (as sm@12@01  $FVF<next>) r))
    :qid |qp.fvfResTrgDef4|))))
(assert ($FVF.loc_next ($FVF.lookup_next (as sm@12@01  $FVF<next>) n$0@13@01) n$0@13@01))
(push) ; 5
(assert (not (<
  $Perm.No
  (+
    (ite (= n$0@13@01 x@4@01) $Perm.Write $Perm.No)
    (ite
      (and
        (img@11@01 n$0@13@01)
        (and
          (Set_in (inv@10@01 n$0@13@01) g@3@01)
          (not (= (inv@10@01 n$0@13@01) x@4@01))))
      (/ (to_real 1) (to_real 2))
      $Perm.No)))))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(pop) ; 4
(push) ; 4
; [else-branch: 3 | !(n$0@13@01 in g@3@01 && Lookup(next, sm@12@01, n$0@13@01) != Null)]
(assert (not
  (and
    (Set_in n$0@13@01 g@3@01)
    (not (= ($FVF.lookup_next (as sm@12@01  $FVF<next>) n$0@13@01) $Ref.null)))))
(pop) ; 4
(pop) ; 3
; Joined path conditions
(assert (forall ((r $Ref)) (!
  (=>
    (= r x@4@01)
    (=
      ($FVF.lookup_next (as sm@12@01  $FVF<next>) r)
      ($FVF.lookup_next (as sm@7@01  $FVF<next>) r)))
  :pattern (($FVF.lookup_next (as sm@12@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next (as sm@7@01  $FVF<next>) r))
  :qid |qp.fvfValDef2|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@11@01 r)
      (and (Set_in (inv@10@01 r) g@3@01) (not (= (inv@10@01 r) x@4@01))))
    (=
      ($FVF.lookup_next (as sm@12@01  $FVF<next>) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@6@01))))))) r)))
  :pattern (($FVF.lookup_next (as sm@12@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@6@01))))))) r))
  :qid |qp.fvfValDef3|)))
(assert (forall ((r $Ref)) (!
  (and
    ($FVF.loc_next ($FVF.lookup_next (as sm@7@01  $FVF<next>) r) r)
    ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@6@01))))))) r) r))
  :pattern (($FVF.lookup_next (as sm@12@01  $FVF<next>) r))
  :qid |qp.fvfResTrgDef4|)))
(assert (=>
  (and
    (Set_in n$0@13@01 g@3@01)
    (not (= ($FVF.lookup_next (as sm@12@01  $FVF<next>) n$0@13@01) $Ref.null)))
  (and
    (Set_in n$0@13@01 g@3@01)
    (not (= ($FVF.lookup_next (as sm@12@01  $FVF<next>) n$0@13@01) $Ref.null))
    ($FVF.loc_next ($FVF.lookup_next (as sm@12@01  $FVF<next>) n$0@13@01) n$0@13@01))))
; Joined path conditions
(assert (or
  (not
    (and
      (Set_in n$0@13@01 g@3@01)
      (not (= ($FVF.lookup_next (as sm@12@01  $FVF<next>) n$0@13@01) $Ref.null))))
  (and
    (Set_in n$0@13@01 g@3@01)
    (not (= ($FVF.lookup_next (as sm@12@01  $FVF<next>) n$0@13@01) $Ref.null)))))
; Definitional axioms for snapshot map values
(pop) ; 2
; Nested auxiliary terms: globals (aux)
(assert (forall ((r $Ref)) (!
  (=>
    (= r x@4@01)
    (=
      ($FVF.lookup_next (as sm@12@01  $FVF<next>) r)
      ($FVF.lookup_next (as sm@7@01  $FVF<next>) r)))
  :pattern (($FVF.lookup_next (as sm@12@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next (as sm@7@01  $FVF<next>) r))
  :qid |qp.fvfValDef2|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@11@01 r)
      (and (Set_in (inv@10@01 r) g@3@01) (not (= (inv@10@01 r) x@4@01))))
    (=
      ($FVF.lookup_next (as sm@12@01  $FVF<next>) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@6@01))))))) r)))
  :pattern (($FVF.lookup_next (as sm@12@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@6@01))))))) r))
  :qid |qp.fvfValDef3|)))
(assert (forall ((r $Ref)) (!
  (and
    ($FVF.loc_next ($FVF.lookup_next (as sm@7@01  $FVF<next>) r) r)
    ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@6@01))))))) r) r))
  :pattern (($FVF.lookup_next (as sm@12@01  $FVF<next>) r))
  :qid |qp.fvfResTrgDef4|)))
; Nested auxiliary terms: non-globals (aux)
(assert (forall ((n$0@13@01 $Ref)) (!
  (and
    (=>
      (Set_in n$0@13@01 g@3@01)
      (and
        (Set_in n$0@13@01 g@3@01)
        ($FVF.loc_next ($FVF.lookup_next (as sm@12@01  $FVF<next>) n$0@13@01) n$0@13@01)))
    (or (Set_in n$0@13@01 g@3@01) (not (Set_in n$0@13@01 g@3@01)))
    (=>
      (and
        (Set_in n$0@13@01 g@3@01)
        (not
          (= ($FVF.lookup_next (as sm@12@01  $FVF<next>) n$0@13@01) $Ref.null)))
      (and
        (Set_in n$0@13@01 g@3@01)
        (not
          (= ($FVF.lookup_next (as sm@12@01  $FVF<next>) n$0@13@01) $Ref.null))
        ($FVF.loc_next ($FVF.lookup_next (as sm@12@01  $FVF<next>) n$0@13@01) n$0@13@01)))
    (or
      (not
        (and
          (Set_in n$0@13@01 g@3@01)
          (not
            (= ($FVF.lookup_next (as sm@12@01  $FVF<next>) n$0@13@01) $Ref.null))))
      (and
        (Set_in n$0@13@01 g@3@01)
        (not
          (= ($FVF.lookup_next (as sm@12@01  $FVF<next>) n$0@13@01) $Ref.null)))))
  :pattern ((Set_in ($FVF.lookup_next (as sm@12@01  $FVF<next>) n$0@13@01) g@3@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/graphs/static/tests/lists/delete_edge1.vpr@276@14@276@34-aux|)))
(assert (forall ((n$0@13@01 $Ref)) (!
  (and
    (=>
      (Set_in n$0@13@01 g@3@01)
      (and
        (Set_in n$0@13@01 g@3@01)
        ($FVF.loc_next ($FVF.lookup_next (as sm@12@01  $FVF<next>) n$0@13@01) n$0@13@01)))
    (or (Set_in n$0@13@01 g@3@01) (not (Set_in n$0@13@01 g@3@01)))
    (=>
      (and
        (Set_in n$0@13@01 g@3@01)
        (not
          (= ($FVF.lookup_next (as sm@12@01  $FVF<next>) n$0@13@01) $Ref.null)))
      (and
        (Set_in n$0@13@01 g@3@01)
        (not
          (= ($FVF.lookup_next (as sm@12@01  $FVF<next>) n$0@13@01) $Ref.null))
        ($FVF.loc_next ($FVF.lookup_next (as sm@12@01  $FVF<next>) n$0@13@01) n$0@13@01)))
    (or
      (not
        (and
          (Set_in n$0@13@01 g@3@01)
          (not
            (= ($FVF.lookup_next (as sm@12@01  $FVF<next>) n$0@13@01) $Ref.null))))
      (and
        (Set_in n$0@13@01 g@3@01)
        (not
          (= ($FVF.lookup_next (as sm@12@01  $FVF<next>) n$0@13@01) $Ref.null)))))
  :pattern ((Set_in n$0@13@01 g@3@01) ($FVF.loc_next ($FVF.lookup_next (as sm@12@01  $FVF<next>) n$0@13@01) n$0@13@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/graphs/static/tests/lists/delete_edge1.vpr@276@14@276@34-aux|)))
(assert (forall ((n$0@13@01 $Ref)) (!
  (=>
    (and
      (Set_in n$0@13@01 g@3@01)
      (not (= ($FVF.lookup_next (as sm@12@01  $FVF<next>) n$0@13@01) $Ref.null)))
    (Set_in ($FVF.lookup_next (as sm@12@01  $FVF<next>) n$0@13@01) g@3@01))
  :pattern ((Set_in ($FVF.lookup_next (as sm@12@01  $FVF<next>) n$0@13@01) g@3@01))
  :pattern ((Set_in n$0@13@01 g@3@01) ($FVF.loc_next ($FVF.lookup_next (as sm@12@01  $FVF<next>) n$0@13@01) n$0@13@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/graphs/static/tests/lists/delete_edge1.vpr@276@14@276@34|)))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@6@01)))))))
  $Snap.unit))
; [eval] x.next == null
(assert (and
  (forall ((r $Ref)) (!
    (=>
      (= r x@4@01)
      (=
        ($FVF.lookup_next (as sm@12@01  $FVF<next>) r)
        ($FVF.lookup_next (as sm@7@01  $FVF<next>) r)))
    :pattern (($FVF.lookup_next (as sm@12@01  $FVF<next>) r))
    :pattern (($FVF.lookup_next (as sm@7@01  $FVF<next>) r))
    :qid |qp.fvfValDef2|))
  (forall ((r $Ref)) (!
    (=>
      (and
        (img@11@01 r)
        (and (Set_in (inv@10@01 r) g@3@01) (not (= (inv@10@01 r) x@4@01))))
      (=
        ($FVF.lookup_next (as sm@12@01  $FVF<next>) r)
        ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@6@01))))))) r)))
    :pattern (($FVF.lookup_next (as sm@12@01  $FVF<next>) r))
    :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@6@01))))))) r))
    :qid |qp.fvfValDef3|))
  (forall ((r $Ref)) (!
    (and
      ($FVF.loc_next ($FVF.lookup_next (as sm@7@01  $FVF<next>) r) r)
      ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@6@01))))))) r) r))
    :pattern (($FVF.lookup_next (as sm@12@01  $FVF<next>) r))
    :qid |qp.fvfResTrgDef4|))))
(assert ($FVF.loc_next ($FVF.lookup_next (as sm@12@01  $FVF<next>) x@4@01) x@4@01))
(push) ; 2
(assert (not (<
  $Perm.No
  (+
    $Perm.Write
    (ite
      (and
        (img@11@01 x@4@01)
        (and
          (Set_in (inv@10@01 x@4@01) g@3@01)
          (not (= (inv@10@01 x@4@01) x@4@01))))
      (/ (to_real 1) (to_real 2))
      $Perm.No)))))
(check-sat)
; unsat
(pop) ; 2
; 0.00s
; (get-info :all-statistics)
(assert (= ($FVF.lookup_next (as sm@12@01  $FVF<next>) x@4@01) $Ref.null))
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
(set-option :timeout 0)
(push) ; 2
(declare-const $t@14@01 $Snap)
(assert (= $t@14@01 ($Snap.combine ($Snap.first $t@14@01) ($Snap.second $t@14@01))))
(assert (= ($Snap.first $t@14@01) $Snap.unit))
; [eval] !((null in g))
; [eval] (null in g)
(assert (=
  ($Snap.second $t@14@01)
  ($Snap.combine
    ($Snap.first ($Snap.second $t@14@01))
    ($Snap.second ($Snap.second $t@14@01)))))
(assert (= ($Snap.first ($Snap.second $t@14@01)) $Snap.unit))
; [eval] (x in g)
(assert (=
  ($Snap.second ($Snap.second $t@14@01))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second $t@14@01)))
    ($Snap.second ($Snap.second ($Snap.second $t@14@01))))))
(declare-const sm@15@01 $FVF<next>)
; Definitional axioms for singleton-SM's value
(assert (=
  ($FVF.lookup_next (as sm@15@01  $FVF<next>) x@4@01)
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second $t@14@01))))))
(declare-const sm@16@01 $FVF<next>)
; Definitional axioms for snapshot map values
(assert (forall ((r $Ref)) (!
  (=>
    (= r x@4@01)
    (=
      ($FVF.lookup_next (as sm@16@01  $FVF<next>) r)
      ($FVF.lookup_next (as sm@15@01  $FVF<next>) r)))
  :pattern (($FVF.lookup_next (as sm@16@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next (as sm@15@01  $FVF<next>) r))
  :qid |qp.fvfValDef5|)))
(assert (forall ((r $Ref)) (!
  ($FVF.loc_next ($FVF.lookup_next (as sm@15@01  $FVF<next>) r) r)
  :pattern (($FVF.lookup_next (as sm@16@01  $FVF<next>) r))
  :qid |qp.fvfResTrgDef6|)))
(assert ($FVF.loc_next ($FVF.lookup_next (as sm@16@01  $FVF<next>) x@4@01) x@4@01))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second $t@14@01)))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@14@01))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@14@01)))))))
(declare-const n$1@17@01 $Ref)
(push) ; 3
; [eval] (n$1 in g) && n$1 != x
; [eval] (n$1 in g)
(push) ; 4
; [then-branch: 4 | !(n$1@17@01 in g@3@01) | live]
; [else-branch: 4 | n$1@17@01 in g@3@01 | live]
(push) ; 5
; [then-branch: 4 | !(n$1@17@01 in g@3@01)]
(assert (not (Set_in n$1@17@01 g@3@01)))
(pop) ; 5
(push) ; 5
; [else-branch: 4 | n$1@17@01 in g@3@01]
(assert (Set_in n$1@17@01 g@3@01))
; [eval] n$1 != x
(pop) ; 5
(pop) ; 4
; Joined path conditions
; Joined path conditions
(assert (or (Set_in n$1@17@01 g@3@01) (not (Set_in n$1@17@01 g@3@01))))
(assert (and (Set_in n$1@17@01 g@3@01) (not (= n$1@17@01 x@4@01))))
; Definitional axioms for snapshot map values
(pop) ; 3
(declare-fun inv@18@01 ($Ref) $Ref)
(declare-fun img@19@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
(assert (forall ((n$1@17@01 $Ref)) (!
  (=>
    (and (Set_in n$1@17@01 g@3@01) (not (= n$1@17@01 x@4@01)))
    (or (Set_in n$1@17@01 g@3@01) (not (Set_in n$1@17@01 g@3@01))))
  :pattern (($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@14@01))))) n$1@17@01) n$1@17@01))
  :qid |next-aux|)))
; Check receiver injectivity
(push) ; 3
(assert (not (forall ((n$11@17@01 $Ref) (n$12@17@01 $Ref)) (!
  (=>
    (and
      (and (Set_in n$11@17@01 g@3@01) (not (= n$11@17@01 x@4@01)))
      (and (Set_in n$12@17@01 g@3@01) (not (= n$12@17@01 x@4@01)))
      (= n$11@17@01 n$12@17@01))
    (= n$11@17@01 n$12@17@01))
  
  :qid |next-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((n$1@17@01 $Ref)) (!
  (=>
    (and (Set_in n$1@17@01 g@3@01) (not (= n$1@17@01 x@4@01)))
    (and (= (inv@18@01 n$1@17@01) n$1@17@01) (img@19@01 n$1@17@01)))
  :pattern (($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@14@01))))) n$1@17@01) n$1@17@01))
  :qid |quant-u-14229|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@19@01 r)
      (and (Set_in (inv@18@01 r) g@3@01) (not (= (inv@18@01 r) x@4@01))))
    (= (inv@18@01 r) r))
  :pattern ((inv@18@01 r))
  :qid |next-fctOfInv|)))
; Permissions are non-negative
; Field permissions are at most one
; Permission implies non-null receiver
(assert (forall ((n$1@17@01 $Ref)) (!
  (=>
    (and (Set_in n$1@17@01 g@3@01) (not (= n$1@17@01 x@4@01)))
    (not (= n$1@17@01 $Ref.null)))
  :pattern (($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@14@01))))) n$1@17@01) n$1@17@01))
  :qid |next-permImpliesNonNull|)))
(declare-const sm@20@01 $FVF<next>)
; Definitional axioms for snapshot map values
(assert (forall ((r $Ref)) (!
  (=>
    (= r x@4@01)
    (=
      ($FVF.lookup_next (as sm@20@01  $FVF<next>) r)
      ($FVF.lookup_next (as sm@15@01  $FVF<next>) r)))
  :pattern (($FVF.lookup_next (as sm@20@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next (as sm@15@01  $FVF<next>) r))
  :qid |qp.fvfValDef7|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@19@01 r)
      (and (Set_in (inv@18@01 r) g@3@01) (not (= (inv@18@01 r) x@4@01))))
    (=
      ($FVF.lookup_next (as sm@20@01  $FVF<next>) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@14@01))))) r)))
  :pattern (($FVF.lookup_next (as sm@20@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@14@01))))) r))
  :qid |qp.fvfValDef8|)))
(assert (forall ((r $Ref)) (!
  (and
    ($FVF.loc_next ($FVF.lookup_next (as sm@15@01  $FVF<next>) r) r)
    ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@14@01))))) r) r))
  :pattern (($FVF.lookup_next (as sm@20@01  $FVF<next>) r))
  :qid |qp.fvfResTrgDef9|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and (Set_in (inv@18@01 r) g@3@01) (not (= (inv@18@01 r) x@4@01)))
    ($FVF.loc_next ($FVF.lookup_next (as sm@20@01  $FVF<next>) r) r))
  :pattern ((inv@18@01 r))
  :qid |quant-u-14230|)))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@14@01))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@14@01)))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@14@01))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@14@01)))))
  $Snap.unit))
; [eval] (forall n$2: Ref :: { (n$2.next in g) } { (n$2 in g), n$2.next } (n$2 in g) && n$2.next != null ==> (n$2.next in g))
(declare-const n$2@21@01 $Ref)
(push) ; 3
; [eval] (n$2 in g) && n$2.next != null ==> (n$2.next in g)
; [eval] (n$2 in g) && n$2.next != null
; [eval] (n$2 in g)
(push) ; 4
; [then-branch: 5 | !(n$2@21@01 in g@3@01) | live]
; [else-branch: 5 | n$2@21@01 in g@3@01 | live]
(push) ; 5
; [then-branch: 5 | !(n$2@21@01 in g@3@01)]
(assert (not (Set_in n$2@21@01 g@3@01)))
(pop) ; 5
(push) ; 5
; [else-branch: 5 | n$2@21@01 in g@3@01]
(assert (Set_in n$2@21@01 g@3@01))
; [eval] n$2.next != null
(assert (and
  (forall ((r $Ref)) (!
    (=>
      (= r x@4@01)
      (=
        ($FVF.lookup_next (as sm@20@01  $FVF<next>) r)
        ($FVF.lookup_next (as sm@15@01  $FVF<next>) r)))
    :pattern (($FVF.lookup_next (as sm@20@01  $FVF<next>) r))
    :pattern (($FVF.lookup_next (as sm@15@01  $FVF<next>) r))
    :qid |qp.fvfValDef7|))
  (forall ((r $Ref)) (!
    (=>
      (and
        (img@19@01 r)
        (and (Set_in (inv@18@01 r) g@3@01) (not (= (inv@18@01 r) x@4@01))))
      (=
        ($FVF.lookup_next (as sm@20@01  $FVF<next>) r)
        ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@14@01))))) r)))
    :pattern (($FVF.lookup_next (as sm@20@01  $FVF<next>) r))
    :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@14@01))))) r))
    :qid |qp.fvfValDef8|))
  (forall ((r $Ref)) (!
    (and
      ($FVF.loc_next ($FVF.lookup_next (as sm@15@01  $FVF<next>) r) r)
      ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@14@01))))) r) r))
    :pattern (($FVF.lookup_next (as sm@20@01  $FVF<next>) r))
    :qid |qp.fvfResTrgDef9|))))
(assert ($FVF.loc_next ($FVF.lookup_next (as sm@20@01  $FVF<next>) n$2@21@01) n$2@21@01))
(push) ; 6
(assert (not (<
  $Perm.No
  (+
    (ite (= n$2@21@01 x@4@01) $Perm.Write $Perm.No)
    (ite
      (and
        (img@19@01 n$2@21@01)
        (and
          (Set_in (inv@18@01 n$2@21@01) g@3@01)
          (not (= (inv@18@01 n$2@21@01) x@4@01))))
      (/ (to_real 1) (to_real 2))
      $Perm.No)))))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(pop) ; 5
(pop) ; 4
; Joined path conditions
; Joined path conditions
(assert (forall ((r $Ref)) (!
  (=>
    (= r x@4@01)
    (=
      ($FVF.lookup_next (as sm@20@01  $FVF<next>) r)
      ($FVF.lookup_next (as sm@15@01  $FVF<next>) r)))
  :pattern (($FVF.lookup_next (as sm@20@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next (as sm@15@01  $FVF<next>) r))
  :qid |qp.fvfValDef7|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@19@01 r)
      (and (Set_in (inv@18@01 r) g@3@01) (not (= (inv@18@01 r) x@4@01))))
    (=
      ($FVF.lookup_next (as sm@20@01  $FVF<next>) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@14@01))))) r)))
  :pattern (($FVF.lookup_next (as sm@20@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@14@01))))) r))
  :qid |qp.fvfValDef8|)))
(assert (forall ((r $Ref)) (!
  (and
    ($FVF.loc_next ($FVF.lookup_next (as sm@15@01  $FVF<next>) r) r)
    ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@14@01))))) r) r))
  :pattern (($FVF.lookup_next (as sm@20@01  $FVF<next>) r))
  :qid |qp.fvfResTrgDef9|)))
(assert (=>
  (Set_in n$2@21@01 g@3@01)
  (and
    (Set_in n$2@21@01 g@3@01)
    ($FVF.loc_next ($FVF.lookup_next (as sm@20@01  $FVF<next>) n$2@21@01) n$2@21@01))))
(assert (or (Set_in n$2@21@01 g@3@01) (not (Set_in n$2@21@01 g@3@01))))
(push) ; 4
; [then-branch: 6 | n$2@21@01 in g@3@01 && Lookup(next, sm@20@01, n$2@21@01) != Null | live]
; [else-branch: 6 | !(n$2@21@01 in g@3@01 && Lookup(next, sm@20@01, n$2@21@01) != Null) | live]
(push) ; 5
; [then-branch: 6 | n$2@21@01 in g@3@01 && Lookup(next, sm@20@01, n$2@21@01) != Null]
(assert (and
  (Set_in n$2@21@01 g@3@01)
  (not (= ($FVF.lookup_next (as sm@20@01  $FVF<next>) n$2@21@01) $Ref.null))))
; [eval] (n$2.next in g)
(assert (and
  (forall ((r $Ref)) (!
    (=>
      (= r x@4@01)
      (=
        ($FVF.lookup_next (as sm@20@01  $FVF<next>) r)
        ($FVF.lookup_next (as sm@15@01  $FVF<next>) r)))
    :pattern (($FVF.lookup_next (as sm@20@01  $FVF<next>) r))
    :pattern (($FVF.lookup_next (as sm@15@01  $FVF<next>) r))
    :qid |qp.fvfValDef7|))
  (forall ((r $Ref)) (!
    (=>
      (and
        (img@19@01 r)
        (and (Set_in (inv@18@01 r) g@3@01) (not (= (inv@18@01 r) x@4@01))))
      (=
        ($FVF.lookup_next (as sm@20@01  $FVF<next>) r)
        ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@14@01))))) r)))
    :pattern (($FVF.lookup_next (as sm@20@01  $FVF<next>) r))
    :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@14@01))))) r))
    :qid |qp.fvfValDef8|))
  (forall ((r $Ref)) (!
    (and
      ($FVF.loc_next ($FVF.lookup_next (as sm@15@01  $FVF<next>) r) r)
      ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@14@01))))) r) r))
    :pattern (($FVF.lookup_next (as sm@20@01  $FVF<next>) r))
    :qid |qp.fvfResTrgDef9|))))
(assert ($FVF.loc_next ($FVF.lookup_next (as sm@20@01  $FVF<next>) n$2@21@01) n$2@21@01))
(push) ; 6
(assert (not (<
  $Perm.No
  (+
    (ite (= n$2@21@01 x@4@01) $Perm.Write $Perm.No)
    (ite
      (and
        (img@19@01 n$2@21@01)
        (and
          (Set_in (inv@18@01 n$2@21@01) g@3@01)
          (not (= (inv@18@01 n$2@21@01) x@4@01))))
      (/ (to_real 1) (to_real 2))
      $Perm.No)))))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(pop) ; 5
(push) ; 5
; [else-branch: 6 | !(n$2@21@01 in g@3@01 && Lookup(next, sm@20@01, n$2@21@01) != Null)]
(assert (not
  (and
    (Set_in n$2@21@01 g@3@01)
    (not (= ($FVF.lookup_next (as sm@20@01  $FVF<next>) n$2@21@01) $Ref.null)))))
(pop) ; 5
(pop) ; 4
; Joined path conditions
(assert (forall ((r $Ref)) (!
  (=>
    (= r x@4@01)
    (=
      ($FVF.lookup_next (as sm@20@01  $FVF<next>) r)
      ($FVF.lookup_next (as sm@15@01  $FVF<next>) r)))
  :pattern (($FVF.lookup_next (as sm@20@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next (as sm@15@01  $FVF<next>) r))
  :qid |qp.fvfValDef7|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@19@01 r)
      (and (Set_in (inv@18@01 r) g@3@01) (not (= (inv@18@01 r) x@4@01))))
    (=
      ($FVF.lookup_next (as sm@20@01  $FVF<next>) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@14@01))))) r)))
  :pattern (($FVF.lookup_next (as sm@20@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@14@01))))) r))
  :qid |qp.fvfValDef8|)))
(assert (forall ((r $Ref)) (!
  (and
    ($FVF.loc_next ($FVF.lookup_next (as sm@15@01  $FVF<next>) r) r)
    ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@14@01))))) r) r))
  :pattern (($FVF.lookup_next (as sm@20@01  $FVF<next>) r))
  :qid |qp.fvfResTrgDef9|)))
(assert (=>
  (and
    (Set_in n$2@21@01 g@3@01)
    (not (= ($FVF.lookup_next (as sm@20@01  $FVF<next>) n$2@21@01) $Ref.null)))
  (and
    (Set_in n$2@21@01 g@3@01)
    (not (= ($FVF.lookup_next (as sm@20@01  $FVF<next>) n$2@21@01) $Ref.null))
    ($FVF.loc_next ($FVF.lookup_next (as sm@20@01  $FVF<next>) n$2@21@01) n$2@21@01))))
; Joined path conditions
(assert (or
  (not
    (and
      (Set_in n$2@21@01 g@3@01)
      (not (= ($FVF.lookup_next (as sm@20@01  $FVF<next>) n$2@21@01) $Ref.null))))
  (and
    (Set_in n$2@21@01 g@3@01)
    (not (= ($FVF.lookup_next (as sm@20@01  $FVF<next>) n$2@21@01) $Ref.null)))))
; Definitional axioms for snapshot map values
(pop) ; 3
; Nested auxiliary terms: globals (aux)
(assert (forall ((r $Ref)) (!
  (=>
    (= r x@4@01)
    (=
      ($FVF.lookup_next (as sm@20@01  $FVF<next>) r)
      ($FVF.lookup_next (as sm@15@01  $FVF<next>) r)))
  :pattern (($FVF.lookup_next (as sm@20@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next (as sm@15@01  $FVF<next>) r))
  :qid |qp.fvfValDef7|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@19@01 r)
      (and (Set_in (inv@18@01 r) g@3@01) (not (= (inv@18@01 r) x@4@01))))
    (=
      ($FVF.lookup_next (as sm@20@01  $FVF<next>) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@14@01))))) r)))
  :pattern (($FVF.lookup_next (as sm@20@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@14@01))))) r))
  :qid |qp.fvfValDef8|)))
(assert (forall ((r $Ref)) (!
  (and
    ($FVF.loc_next ($FVF.lookup_next (as sm@15@01  $FVF<next>) r) r)
    ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@14@01))))) r) r))
  :pattern (($FVF.lookup_next (as sm@20@01  $FVF<next>) r))
  :qid |qp.fvfResTrgDef9|)))
; Nested auxiliary terms: non-globals (aux)
(assert (forall ((n$2@21@01 $Ref)) (!
  (and
    (=>
      (Set_in n$2@21@01 g@3@01)
      (and
        (Set_in n$2@21@01 g@3@01)
        ($FVF.loc_next ($FVF.lookup_next (as sm@20@01  $FVF<next>) n$2@21@01) n$2@21@01)))
    (or (Set_in n$2@21@01 g@3@01) (not (Set_in n$2@21@01 g@3@01)))
    (=>
      (and
        (Set_in n$2@21@01 g@3@01)
        (not
          (= ($FVF.lookup_next (as sm@20@01  $FVF<next>) n$2@21@01) $Ref.null)))
      (and
        (Set_in n$2@21@01 g@3@01)
        (not
          (= ($FVF.lookup_next (as sm@20@01  $FVF<next>) n$2@21@01) $Ref.null))
        ($FVF.loc_next ($FVF.lookup_next (as sm@20@01  $FVF<next>) n$2@21@01) n$2@21@01)))
    (or
      (not
        (and
          (Set_in n$2@21@01 g@3@01)
          (not
            (= ($FVF.lookup_next (as sm@20@01  $FVF<next>) n$2@21@01) $Ref.null))))
      (and
        (Set_in n$2@21@01 g@3@01)
        (not
          (= ($FVF.lookup_next (as sm@20@01  $FVF<next>) n$2@21@01) $Ref.null)))))
  :pattern ((Set_in ($FVF.lookup_next (as sm@20@01  $FVF<next>) n$2@21@01) g@3@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/graphs/static/tests/lists/delete_edge1.vpr@278@13@278@33-aux|)))
(assert (forall ((n$2@21@01 $Ref)) (!
  (and
    (=>
      (Set_in n$2@21@01 g@3@01)
      (and
        (Set_in n$2@21@01 g@3@01)
        ($FVF.loc_next ($FVF.lookup_next (as sm@20@01  $FVF<next>) n$2@21@01) n$2@21@01)))
    (or (Set_in n$2@21@01 g@3@01) (not (Set_in n$2@21@01 g@3@01)))
    (=>
      (and
        (Set_in n$2@21@01 g@3@01)
        (not
          (= ($FVF.lookup_next (as sm@20@01  $FVF<next>) n$2@21@01) $Ref.null)))
      (and
        (Set_in n$2@21@01 g@3@01)
        (not
          (= ($FVF.lookup_next (as sm@20@01  $FVF<next>) n$2@21@01) $Ref.null))
        ($FVF.loc_next ($FVF.lookup_next (as sm@20@01  $FVF<next>) n$2@21@01) n$2@21@01)))
    (or
      (not
        (and
          (Set_in n$2@21@01 g@3@01)
          (not
            (= ($FVF.lookup_next (as sm@20@01  $FVF<next>) n$2@21@01) $Ref.null))))
      (and
        (Set_in n$2@21@01 g@3@01)
        (not
          (= ($FVF.lookup_next (as sm@20@01  $FVF<next>) n$2@21@01) $Ref.null)))))
  :pattern ((Set_in n$2@21@01 g@3@01) ($FVF.loc_next ($FVF.lookup_next (as sm@20@01  $FVF<next>) n$2@21@01) n$2@21@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/graphs/static/tests/lists/delete_edge1.vpr@278@13@278@33-aux|)))
(assert (forall ((n$2@21@01 $Ref)) (!
  (=>
    (and
      (Set_in n$2@21@01 g@3@01)
      (not (= ($FVF.lookup_next (as sm@20@01  $FVF<next>) n$2@21@01) $Ref.null)))
    (Set_in ($FVF.lookup_next (as sm@20@01  $FVF<next>) n$2@21@01) g@3@01))
  :pattern ((Set_in ($FVF.lookup_next (as sm@20@01  $FVF<next>) n$2@21@01) g@3@01))
  :pattern ((Set_in n$2@21@01 g@3@01) ($FVF.loc_next ($FVF.lookup_next (as sm@20@01  $FVF<next>) n$2@21@01) n$2@21@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/graphs/static/tests/lists/delete_edge1.vpr@278@13@278@33|)))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@14@01)))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@14@01))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@14@01)))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@14@01))))))
  $Snap.unit))
; [eval] x.next == y
(assert (and
  (forall ((r $Ref)) (!
    (=>
      (= r x@4@01)
      (=
        ($FVF.lookup_next (as sm@20@01  $FVF<next>) r)
        ($FVF.lookup_next (as sm@15@01  $FVF<next>) r)))
    :pattern (($FVF.lookup_next (as sm@20@01  $FVF<next>) r))
    :pattern (($FVF.lookup_next (as sm@15@01  $FVF<next>) r))
    :qid |qp.fvfValDef7|))
  (forall ((r $Ref)) (!
    (=>
      (and
        (img@19@01 r)
        (and (Set_in (inv@18@01 r) g@3@01) (not (= (inv@18@01 r) x@4@01))))
      (=
        ($FVF.lookup_next (as sm@20@01  $FVF<next>) r)
        ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@14@01))))) r)))
    :pattern (($FVF.lookup_next (as sm@20@01  $FVF<next>) r))
    :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@14@01))))) r))
    :qid |qp.fvfValDef8|))
  (forall ((r $Ref)) (!
    (and
      ($FVF.loc_next ($FVF.lookup_next (as sm@15@01  $FVF<next>) r) r)
      ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@14@01))))) r) r))
    :pattern (($FVF.lookup_next (as sm@20@01  $FVF<next>) r))
    :qid |qp.fvfResTrgDef9|))))
(assert ($FVF.loc_next ($FVF.lookup_next (as sm@20@01  $FVF<next>) x@4@01) x@4@01))
(push) ; 3
(assert (not (<
  $Perm.No
  (+
    $Perm.Write
    (ite
      (and
        (img@19@01 x@4@01)
        (and
          (Set_in (inv@18@01 x@4@01) g@3@01)
          (not (= (inv@18@01 x@4@01) x@4@01))))
      (/ (to_real 1) (to_real 2))
      $Perm.No)))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(assert (= ($FVF.lookup_next (as sm@20@01  $FVF<next>) x@4@01) y@5@01))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@14@01))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@14@01)))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@14@01))))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@14@01)))))))
  $Snap.unit))
; [eval] y == null ==> $$(g) == old($$(g))
; [eval] y == null
(push) ; 3
(push) ; 4
(set-option :timeout 10)
(assert (not (not (= y@5@01 $Ref.null))))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not (= y@5@01 $Ref.null)))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; [then-branch: 7 | y@5@01 == Null | live]
; [else-branch: 7 | y@5@01 != Null | live]
(set-option :timeout 0)
(push) ; 4
; [then-branch: 7 | y@5@01 == Null]
(assert (= y@5@01 $Ref.null))
; [eval] $$(g) == old($$(g))
; [eval] $$(g)
(push) ; 5
(declare-const n@22@01 $Ref)
(push) ; 6
; [eval] (n in refs)
(assert (Set_in n@22@01 g@3@01))
(pop) ; 6
(declare-fun inv@23@01 ($Ref) $Ref)
(declare-fun img@24@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
; Definitional axioms for snapshot map domain
; Definitional axioms for snapshot map values
; Check receiver injectivity
(push) ; 6
(assert (not (forall ((n1@22@01 $Ref) (n2@22@01 $Ref)) (!
  (=>
    (and
      (and
        (Set_in n1@22@01 g@3@01)
        ($FVF.loc_next ($FVF.lookup_next (as sm@20@01  $FVF<next>) n1@22@01) n1@22@01))
      (and
        (Set_in n2@22@01 g@3@01)
        ($FVF.loc_next ($FVF.lookup_next (as sm@20@01  $FVF<next>) n2@22@01) n2@22@01))
      (= n1@22@01 n2@22@01))
    (= n1@22@01 n2@22@01))
  
  :qid |next-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((n@22@01 $Ref)) (!
  (=>
    (Set_in n@22@01 g@3@01)
    (and (= (inv@23@01 n@22@01) n@22@01) (img@24@01 n@22@01)))
  :pattern ((Set_in n@22@01 g@3@01))
  :pattern ((inv@23@01 n@22@01))
  :pattern ((img@24@01 n@22@01))
  :qid |next-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=> (and (img@24@01 r) (Set_in (inv@23@01 r) g@3@01)) (= (inv@23@01 r) r))
  :pattern ((inv@23@01 r))
  :qid |next-fctOfInv|)))
(assert (forall ((r $Ref)) (!
  (=>
    (Set_in (inv@23@01 r) g@3@01)
    ($FVF.loc_next ($FVF.lookup_next (as sm@20@01  $FVF<next>) r) r))
  :pattern ((inv@23@01 r))
  :qid |quant-u-14232|)))
(push) ; 6
(assert (not (forall ((r $Ref)) (!
  (=>
    (and (Set_in (inv@23@01 r) g@3@01) (img@24@01 r) (= r (inv@23@01 r)))
    (>
      (+
        (ite
          (and
            (img@19@01 r)
            (and (Set_in (inv@18@01 r) g@3@01) (not (= (inv@18@01 r) x@4@01))))
          (/ (to_real 1) (to_real 2))
          $Perm.No)
        (ite (= r x@4@01) $Perm.Write $Perm.No))
      $Perm.No))
  
  :qid |quant-u-14233|))))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(declare-const sm@25@01 $FVF<next>)
; Definitional axioms for snapshot map domain
(assert (forall ((r $Ref)) (!
  (and
    (=>
      (Set_in r ($FVF.domain_next (as sm@25@01  $FVF<next>)))
      (and (Set_in (inv@23@01 r) g@3@01) (img@24@01 r)))
    (=>
      (and (Set_in (inv@23@01 r) g@3@01) (img@24@01 r))
      (Set_in r ($FVF.domain_next (as sm@25@01  $FVF<next>)))))
  :pattern ((Set_in r ($FVF.domain_next (as sm@25@01  $FVF<next>))))
  :qid |qp.fvfDomDef13|)))
; Definitional axioms for snapshot map values
(assert (forall ((r $Ref)) (!
  (=>
    (and (and (Set_in (inv@23@01 r) g@3@01) (img@24@01 r)) (= r x@4@01))
    (=
      ($FVF.lookup_next (as sm@25@01  $FVF<next>) r)
      ($FVF.lookup_next (as sm@15@01  $FVF<next>) r)))
  :pattern (($FVF.lookup_next (as sm@25@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next (as sm@15@01  $FVF<next>) r))
  :qid |qp.fvfValDef10|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and (Set_in (inv@23@01 r) g@3@01) (img@24@01 r))
      (and
        (img@19@01 r)
        (and (Set_in (inv@18@01 r) g@3@01) (not (= (inv@18@01 r) x@4@01)))))
    (=
      ($FVF.lookup_next (as sm@25@01  $FVF<next>) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@14@01))))) r)))
  :pattern (($FVF.lookup_next (as sm@25@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@14@01))))) r))
  :qid |qp.fvfValDef11|)))
(assert (forall ((r $Ref)) (!
  (and
    ($FVF.loc_next ($FVF.lookup_next (as sm@15@01  $FVF<next>) r) r)
    ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@14@01))))) r) r))
  :pattern (($FVF.lookup_next (as sm@25@01  $FVF<next>) r))
  :qid |qp.fvfResTrgDef12|)))
(assert ($$%precondition ($SortWrappers.$FVF<next>To$Snap (as sm@25@01  $FVF<next>)) g@3@01))
(pop) ; 5
; Joined path conditions
(assert (forall ((n@22@01 $Ref)) (!
  (=>
    (Set_in n@22@01 g@3@01)
    (and (= (inv@23@01 n@22@01) n@22@01) (img@24@01 n@22@01)))
  :pattern ((Set_in n@22@01 g@3@01))
  :pattern ((inv@23@01 n@22@01))
  :pattern ((img@24@01 n@22@01))
  :qid |next-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=> (and (img@24@01 r) (Set_in (inv@23@01 r) g@3@01)) (= (inv@23@01 r) r))
  :pattern ((inv@23@01 r))
  :qid |next-fctOfInv|)))
(assert (forall ((r $Ref)) (!
  (and
    (=>
      (Set_in r ($FVF.domain_next (as sm@25@01  $FVF<next>)))
      (and (Set_in (inv@23@01 r) g@3@01) (img@24@01 r)))
    (=>
      (and (Set_in (inv@23@01 r) g@3@01) (img@24@01 r))
      (Set_in r ($FVF.domain_next (as sm@25@01  $FVF<next>)))))
  :pattern ((Set_in r ($FVF.domain_next (as sm@25@01  $FVF<next>))))
  :qid |qp.fvfDomDef13|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and (and (Set_in (inv@23@01 r) g@3@01) (img@24@01 r)) (= r x@4@01))
    (=
      ($FVF.lookup_next (as sm@25@01  $FVF<next>) r)
      ($FVF.lookup_next (as sm@15@01  $FVF<next>) r)))
  :pattern (($FVF.lookup_next (as sm@25@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next (as sm@15@01  $FVF<next>) r))
  :qid |qp.fvfValDef10|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and (Set_in (inv@23@01 r) g@3@01) (img@24@01 r))
      (and
        (img@19@01 r)
        (and (Set_in (inv@18@01 r) g@3@01) (not (= (inv@18@01 r) x@4@01)))))
    (=
      ($FVF.lookup_next (as sm@25@01  $FVF<next>) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@14@01))))) r)))
  :pattern (($FVF.lookup_next (as sm@25@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@14@01))))) r))
  :qid |qp.fvfValDef11|)))
(assert (forall ((r $Ref)) (!
  (and
    ($FVF.loc_next ($FVF.lookup_next (as sm@15@01  $FVF<next>) r) r)
    ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@14@01))))) r) r))
  :pattern (($FVF.lookup_next (as sm@25@01  $FVF<next>) r))
  :qid |qp.fvfResTrgDef12|)))
(assert (and
  (forall ((r $Ref)) (!
    (=>
      (Set_in (inv@23@01 r) g@3@01)
      ($FVF.loc_next ($FVF.lookup_next (as sm@20@01  $FVF<next>) r) r))
    :pattern ((inv@23@01 r))
    :qid |quant-u-14232|))
  ($$%precondition ($SortWrappers.$FVF<next>To$Snap (as sm@25@01  $FVF<next>)) g@3@01)))
; [eval] old($$(g))
; [eval] $$(g)
(push) ; 5
(declare-const n@26@01 $Ref)
(push) ; 6
; [eval] (n in refs)
(assert (Set_in n@26@01 g@3@01))
(pop) ; 6
(declare-fun inv@27@01 ($Ref) $Ref)
(declare-fun img@28@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
; Definitional axioms for snapshot map domain
; Definitional axioms for snapshot map values
; Check receiver injectivity
(push) ; 6
(assert (not (forall ((n1@26@01 $Ref) (n2@26@01 $Ref)) (!
  (=>
    (and
      (and
        (Set_in n1@26@01 g@3@01)
        ($FVF.loc_next ($FVF.lookup_next (as sm@12@01  $FVF<next>) n1@26@01) n1@26@01))
      (and
        (Set_in n2@26@01 g@3@01)
        ($FVF.loc_next ($FVF.lookup_next (as sm@12@01  $FVF<next>) n2@26@01) n2@26@01))
      (= n1@26@01 n2@26@01))
    (= n1@26@01 n2@26@01))
  
  :qid |next-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((n@26@01 $Ref)) (!
  (=>
    (Set_in n@26@01 g@3@01)
    (and (= (inv@27@01 n@26@01) n@26@01) (img@28@01 n@26@01)))
  :pattern ((Set_in n@26@01 g@3@01))
  :pattern ((inv@27@01 n@26@01))
  :pattern ((img@28@01 n@26@01))
  :qid |next-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=> (and (img@28@01 r) (Set_in (inv@27@01 r) g@3@01)) (= (inv@27@01 r) r))
  :pattern ((inv@27@01 r))
  :qid |next-fctOfInv|)))
(assert (forall ((r $Ref)) (!
  (=>
    (Set_in (inv@27@01 r) g@3@01)
    ($FVF.loc_next ($FVF.lookup_next (as sm@12@01  $FVF<next>) r) r))
  :pattern ((inv@27@01 r))
  :qid |quant-u-14235|)))
(push) ; 6
(assert (not (forall ((r $Ref)) (!
  (=>
    (and (Set_in (inv@27@01 r) g@3@01) (img@28@01 r) (= r (inv@27@01 r)))
    (>
      (+
        (ite
          (and
            (img@11@01 r)
            (and (Set_in (inv@10@01 r) g@3@01) (not (= (inv@10@01 r) x@4@01))))
          (/ (to_real 1) (to_real 2))
          $Perm.No)
        (ite (= r x@4@01) $Perm.Write $Perm.No))
      $Perm.No))
  
  :qid |quant-u-14236|))))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(declare-const sm@29@01 $FVF<next>)
; Definitional axioms for snapshot map domain
(assert (forall ((r $Ref)) (!
  (and
    (=>
      (Set_in r ($FVF.domain_next (as sm@29@01  $FVF<next>)))
      (and (Set_in (inv@27@01 r) g@3@01) (img@28@01 r)))
    (=>
      (and (Set_in (inv@27@01 r) g@3@01) (img@28@01 r))
      (Set_in r ($FVF.domain_next (as sm@29@01  $FVF<next>)))))
  :pattern ((Set_in r ($FVF.domain_next (as sm@29@01  $FVF<next>))))
  :qid |qp.fvfDomDef17|)))
; Definitional axioms for snapshot map values
(assert (forall ((r $Ref)) (!
  (=>
    (and (and (Set_in (inv@27@01 r) g@3@01) (img@28@01 r)) (= r x@4@01))
    (=
      ($FVF.lookup_next (as sm@29@01  $FVF<next>) r)
      ($FVF.lookup_next (as sm@7@01  $FVF<next>) r)))
  :pattern (($FVF.lookup_next (as sm@29@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next (as sm@7@01  $FVF<next>) r))
  :qid |qp.fvfValDef14|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and (Set_in (inv@27@01 r) g@3@01) (img@28@01 r))
      (and
        (img@11@01 r)
        (and (Set_in (inv@10@01 r) g@3@01) (not (= (inv@10@01 r) x@4@01)))))
    (=
      ($FVF.lookup_next (as sm@29@01  $FVF<next>) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@6@01))))))) r)))
  :pattern (($FVF.lookup_next (as sm@29@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@6@01))))))) r))
  :qid |qp.fvfValDef15|)))
(assert (forall ((r $Ref)) (!
  (and
    ($FVF.loc_next ($FVF.lookup_next (as sm@7@01  $FVF<next>) r) r)
    ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@6@01))))))) r) r))
  :pattern (($FVF.lookup_next (as sm@29@01  $FVF<next>) r))
  :qid |qp.fvfResTrgDef16|)))
(assert ($$%precondition ($SortWrappers.$FVF<next>To$Snap (as sm@29@01  $FVF<next>)) g@3@01))
(pop) ; 5
; Joined path conditions
(assert (forall ((n@26@01 $Ref)) (!
  (=>
    (Set_in n@26@01 g@3@01)
    (and (= (inv@27@01 n@26@01) n@26@01) (img@28@01 n@26@01)))
  :pattern ((Set_in n@26@01 g@3@01))
  :pattern ((inv@27@01 n@26@01))
  :pattern ((img@28@01 n@26@01))
  :qid |next-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=> (and (img@28@01 r) (Set_in (inv@27@01 r) g@3@01)) (= (inv@27@01 r) r))
  :pattern ((inv@27@01 r))
  :qid |next-fctOfInv|)))
(assert (forall ((r $Ref)) (!
  (and
    (=>
      (Set_in r ($FVF.domain_next (as sm@29@01  $FVF<next>)))
      (and (Set_in (inv@27@01 r) g@3@01) (img@28@01 r)))
    (=>
      (and (Set_in (inv@27@01 r) g@3@01) (img@28@01 r))
      (Set_in r ($FVF.domain_next (as sm@29@01  $FVF<next>)))))
  :pattern ((Set_in r ($FVF.domain_next (as sm@29@01  $FVF<next>))))
  :qid |qp.fvfDomDef17|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and (and (Set_in (inv@27@01 r) g@3@01) (img@28@01 r)) (= r x@4@01))
    (=
      ($FVF.lookup_next (as sm@29@01  $FVF<next>) r)
      ($FVF.lookup_next (as sm@7@01  $FVF<next>) r)))
  :pattern (($FVF.lookup_next (as sm@29@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next (as sm@7@01  $FVF<next>) r))
  :qid |qp.fvfValDef14|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and (Set_in (inv@27@01 r) g@3@01) (img@28@01 r))
      (and
        (img@11@01 r)
        (and (Set_in (inv@10@01 r) g@3@01) (not (= (inv@10@01 r) x@4@01)))))
    (=
      ($FVF.lookup_next (as sm@29@01  $FVF<next>) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@6@01))))))) r)))
  :pattern (($FVF.lookup_next (as sm@29@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@6@01))))))) r))
  :qid |qp.fvfValDef15|)))
(assert (forall ((r $Ref)) (!
  (and
    ($FVF.loc_next ($FVF.lookup_next (as sm@7@01  $FVF<next>) r) r)
    ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@6@01))))))) r) r))
  :pattern (($FVF.lookup_next (as sm@29@01  $FVF<next>) r))
  :qid |qp.fvfResTrgDef16|)))
(assert (and
  (forall ((r $Ref)) (!
    (=>
      (Set_in (inv@27@01 r) g@3@01)
      ($FVF.loc_next ($FVF.lookup_next (as sm@12@01  $FVF<next>) r) r))
    :pattern ((inv@27@01 r))
    :qid |quant-u-14235|))
  ($$%precondition ($SortWrappers.$FVF<next>To$Snap (as sm@29@01  $FVF<next>)) g@3@01)))
(pop) ; 4
(push) ; 4
; [else-branch: 7 | y@5@01 != Null]
(assert (not (= y@5@01 $Ref.null)))
(pop) ; 4
(pop) ; 3
; Joined path conditions
(assert (forall ((n@22@01 $Ref)) (!
  (=>
    (Set_in n@22@01 g@3@01)
    (and (= (inv@23@01 n@22@01) n@22@01) (img@24@01 n@22@01)))
  :pattern ((Set_in n@22@01 g@3@01))
  :pattern ((inv@23@01 n@22@01))
  :pattern ((img@24@01 n@22@01))
  :qid |next-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=> (and (img@24@01 r) (Set_in (inv@23@01 r) g@3@01)) (= (inv@23@01 r) r))
  :pattern ((inv@23@01 r))
  :qid |next-fctOfInv|)))
(assert (forall ((r $Ref)) (!
  (and
    (=>
      (Set_in r ($FVF.domain_next (as sm@25@01  $FVF<next>)))
      (and (Set_in (inv@23@01 r) g@3@01) (img@24@01 r)))
    (=>
      (and (Set_in (inv@23@01 r) g@3@01) (img@24@01 r))
      (Set_in r ($FVF.domain_next (as sm@25@01  $FVF<next>)))))
  :pattern ((Set_in r ($FVF.domain_next (as sm@25@01  $FVF<next>))))
  :qid |qp.fvfDomDef13|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and (and (Set_in (inv@23@01 r) g@3@01) (img@24@01 r)) (= r x@4@01))
    (=
      ($FVF.lookup_next (as sm@25@01  $FVF<next>) r)
      ($FVF.lookup_next (as sm@15@01  $FVF<next>) r)))
  :pattern (($FVF.lookup_next (as sm@25@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next (as sm@15@01  $FVF<next>) r))
  :qid |qp.fvfValDef10|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and (Set_in (inv@23@01 r) g@3@01) (img@24@01 r))
      (and
        (img@19@01 r)
        (and (Set_in (inv@18@01 r) g@3@01) (not (= (inv@18@01 r) x@4@01)))))
    (=
      ($FVF.lookup_next (as sm@25@01  $FVF<next>) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@14@01))))) r)))
  :pattern (($FVF.lookup_next (as sm@25@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@14@01))))) r))
  :qid |qp.fvfValDef11|)))
(assert (forall ((r $Ref)) (!
  (and
    ($FVF.loc_next ($FVF.lookup_next (as sm@15@01  $FVF<next>) r) r)
    ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@14@01))))) r) r))
  :pattern (($FVF.lookup_next (as sm@25@01  $FVF<next>) r))
  :qid |qp.fvfResTrgDef12|)))
(assert (forall ((n@26@01 $Ref)) (!
  (=>
    (Set_in n@26@01 g@3@01)
    (and (= (inv@27@01 n@26@01) n@26@01) (img@28@01 n@26@01)))
  :pattern ((Set_in n@26@01 g@3@01))
  :pattern ((inv@27@01 n@26@01))
  :pattern ((img@28@01 n@26@01))
  :qid |next-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=> (and (img@28@01 r) (Set_in (inv@27@01 r) g@3@01)) (= (inv@27@01 r) r))
  :pattern ((inv@27@01 r))
  :qid |next-fctOfInv|)))
(assert (forall ((r $Ref)) (!
  (and
    (=>
      (Set_in r ($FVF.domain_next (as sm@29@01  $FVF<next>)))
      (and (Set_in (inv@27@01 r) g@3@01) (img@28@01 r)))
    (=>
      (and (Set_in (inv@27@01 r) g@3@01) (img@28@01 r))
      (Set_in r ($FVF.domain_next (as sm@29@01  $FVF<next>)))))
  :pattern ((Set_in r ($FVF.domain_next (as sm@29@01  $FVF<next>))))
  :qid |qp.fvfDomDef17|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and (and (Set_in (inv@27@01 r) g@3@01) (img@28@01 r)) (= r x@4@01))
    (=
      ($FVF.lookup_next (as sm@29@01  $FVF<next>) r)
      ($FVF.lookup_next (as sm@7@01  $FVF<next>) r)))
  :pattern (($FVF.lookup_next (as sm@29@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next (as sm@7@01  $FVF<next>) r))
  :qid |qp.fvfValDef14|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and (Set_in (inv@27@01 r) g@3@01) (img@28@01 r))
      (and
        (img@11@01 r)
        (and (Set_in (inv@10@01 r) g@3@01) (not (= (inv@10@01 r) x@4@01)))))
    (=
      ($FVF.lookup_next (as sm@29@01  $FVF<next>) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@6@01))))))) r)))
  :pattern (($FVF.lookup_next (as sm@29@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@6@01))))))) r))
  :qid |qp.fvfValDef15|)))
(assert (forall ((r $Ref)) (!
  (and
    ($FVF.loc_next ($FVF.lookup_next (as sm@7@01  $FVF<next>) r) r)
    ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@6@01))))))) r) r))
  :pattern (($FVF.lookup_next (as sm@29@01  $FVF<next>) r))
  :qid |qp.fvfResTrgDef16|)))
(assert (=>
  (= y@5@01 $Ref.null)
  (and
    (= y@5@01 $Ref.null)
    (forall ((r $Ref)) (!
      (=>
        (Set_in (inv@23@01 r) g@3@01)
        ($FVF.loc_next ($FVF.lookup_next (as sm@20@01  $FVF<next>) r) r))
      :pattern ((inv@23@01 r))
      :qid |quant-u-14232|))
    ($$%precondition ($SortWrappers.$FVF<next>To$Snap (as sm@25@01  $FVF<next>)) g@3@01)
    (forall ((r $Ref)) (!
      (=>
        (Set_in (inv@27@01 r) g@3@01)
        ($FVF.loc_next ($FVF.lookup_next (as sm@12@01  $FVF<next>) r) r))
      :pattern ((inv@27@01 r))
      :qid |quant-u-14235|))
    ($$%precondition ($SortWrappers.$FVF<next>To$Snap (as sm@29@01  $FVF<next>)) g@3@01))))
; Joined path conditions
(assert (or (not (= y@5@01 $Ref.null)) (= y@5@01 $Ref.null)))
(assert (=>
  (= y@5@01 $Ref.null)
  (Set_equal ($$ ($SortWrappers.$FVF<next>To$Snap (as sm@25@01  $FVF<next>)) g@3@01) ($$ ($SortWrappers.$FVF<next>To$Snap (as sm@29@01  $FVF<next>)) g@3@01))))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@14@01)))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@14@01))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@14@01)))))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@14@01))))))))
  $Snap.unit))
; [eval] y != null ==> (forall v1: Ref, v2: Ref :: { edge(old($$(g)), v1, v2) } edge($$(g), v1, v2) == (edge(old($$(g)), v1, v2) || v1 == x && v2 == y))
; [eval] y != null
(push) ; 3
(push) ; 4
(set-option :timeout 10)
(assert (not (= y@5@01 $Ref.null)))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not (not (= y@5@01 $Ref.null))))
(check-sat)
; unknown
(pop) ; 4
; 0.01s
; (get-info :all-statistics)
; [then-branch: 8 | y@5@01 != Null | live]
; [else-branch: 8 | y@5@01 == Null | live]
(set-option :timeout 0)
(push) ; 4
; [then-branch: 8 | y@5@01 != Null]
(assert (not (= y@5@01 $Ref.null)))
; [eval] (forall v1: Ref, v2: Ref :: { edge(old($$(g)), v1, v2) } edge($$(g), v1, v2) == (edge(old($$(g)), v1, v2) || v1 == x && v2 == y))
(declare-const v1@30@01 $Ref)
(declare-const v2@31@01 $Ref)
(push) ; 5
; [eval] edge($$(g), v1, v2) == (edge(old($$(g)), v1, v2) || v1 == x && v2 == y)
; [eval] edge($$(g), v1, v2)
; [eval] $$(g)
(push) ; 6
(declare-const n@32@01 $Ref)
(push) ; 7
; [eval] (n in refs)
(assert (Set_in n@32@01 g@3@01))
(pop) ; 7
(declare-fun inv@33@01 ($Ref) $Ref)
(declare-fun img@34@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
; Definitional axioms for snapshot map domain
; Definitional axioms for snapshot map values
; Check receiver injectivity
(push) ; 7
(assert (not (forall ((n1@32@01 $Ref) (n2@32@01 $Ref)) (!
  (=>
    (and
      (and
        (Set_in n1@32@01 g@3@01)
        ($FVF.loc_next ($FVF.lookup_next (as sm@20@01  $FVF<next>) n1@32@01) n1@32@01))
      (and
        (Set_in n2@32@01 g@3@01)
        ($FVF.loc_next ($FVF.lookup_next (as sm@20@01  $FVF<next>) n2@32@01) n2@32@01))
      (= n1@32@01 n2@32@01))
    (= n1@32@01 n2@32@01))
  
  :qid |next-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((n@32@01 $Ref)) (!
  (=>
    (Set_in n@32@01 g@3@01)
    (and (= (inv@33@01 n@32@01) n@32@01) (img@34@01 n@32@01)))
  :pattern ((Set_in n@32@01 g@3@01))
  :pattern ((inv@33@01 n@32@01))
  :pattern ((img@34@01 n@32@01))
  :qid |next-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=> (and (img@34@01 r) (Set_in (inv@33@01 r) g@3@01)) (= (inv@33@01 r) r))
  :pattern ((inv@33@01 r))
  :qid |next-fctOfInv|)))
(assert (forall ((r $Ref)) (!
  (=>
    (Set_in (inv@33@01 r) g@3@01)
    ($FVF.loc_next ($FVF.lookup_next (as sm@20@01  $FVF<next>) r) r))
  :pattern ((inv@33@01 r))
  :qid |quant-u-14238|)))
(push) ; 7
(assert (not (forall ((r $Ref)) (!
  (=>
    (and (Set_in (inv@33@01 r) g@3@01) (img@34@01 r) (= r (inv@33@01 r)))
    (>
      (+
        (ite
          (and
            (img@19@01 r)
            (and (Set_in (inv@18@01 r) g@3@01) (not (= (inv@18@01 r) x@4@01))))
          (/ (to_real 1) (to_real 2))
          $Perm.No)
        (ite (= r x@4@01) $Perm.Write $Perm.No))
      $Perm.No))
  
  :qid |quant-u-14239|))))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(declare-const sm@35@01 $FVF<next>)
; Definitional axioms for snapshot map domain
(assert (forall ((r $Ref)) (!
  (and
    (=>
      (Set_in r ($FVF.domain_next (as sm@35@01  $FVF<next>)))
      (and (Set_in (inv@33@01 r) g@3@01) (img@34@01 r)))
    (=>
      (and (Set_in (inv@33@01 r) g@3@01) (img@34@01 r))
      (Set_in r ($FVF.domain_next (as sm@35@01  $FVF<next>)))))
  :pattern ((Set_in r ($FVF.domain_next (as sm@35@01  $FVF<next>))))
  :qid |qp.fvfDomDef21|)))
; Definitional axioms for snapshot map values
(assert (forall ((r $Ref)) (!
  (=>
    (and (and (Set_in (inv@33@01 r) g@3@01) (img@34@01 r)) (= r x@4@01))
    (=
      ($FVF.lookup_next (as sm@35@01  $FVF<next>) r)
      ($FVF.lookup_next (as sm@15@01  $FVF<next>) r)))
  :pattern (($FVF.lookup_next (as sm@35@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next (as sm@15@01  $FVF<next>) r))
  :qid |qp.fvfValDef18|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and (Set_in (inv@33@01 r) g@3@01) (img@34@01 r))
      (and
        (img@19@01 r)
        (and (Set_in (inv@18@01 r) g@3@01) (not (= (inv@18@01 r) x@4@01)))))
    (=
      ($FVF.lookup_next (as sm@35@01  $FVF<next>) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@14@01))))) r)))
  :pattern (($FVF.lookup_next (as sm@35@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@14@01))))) r))
  :qid |qp.fvfValDef19|)))
(assert (forall ((r $Ref)) (!
  (and
    ($FVF.loc_next ($FVF.lookup_next (as sm@15@01  $FVF<next>) r) r)
    ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@14@01))))) r) r))
  :pattern (($FVF.lookup_next (as sm@35@01  $FVF<next>) r))
  :qid |qp.fvfResTrgDef20|)))
(assert ($$%precondition ($SortWrappers.$FVF<next>To$Snap (as sm@35@01  $FVF<next>)) g@3@01))
(pop) ; 6
; Joined path conditions
(assert (forall ((n@32@01 $Ref)) (!
  (=>
    (Set_in n@32@01 g@3@01)
    (and (= (inv@33@01 n@32@01) n@32@01) (img@34@01 n@32@01)))
  :pattern ((Set_in n@32@01 g@3@01))
  :pattern ((inv@33@01 n@32@01))
  :pattern ((img@34@01 n@32@01))
  :qid |next-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=> (and (img@34@01 r) (Set_in (inv@33@01 r) g@3@01)) (= (inv@33@01 r) r))
  :pattern ((inv@33@01 r))
  :qid |next-fctOfInv|)))
(assert (forall ((r $Ref)) (!
  (and
    (=>
      (Set_in r ($FVF.domain_next (as sm@35@01  $FVF<next>)))
      (and (Set_in (inv@33@01 r) g@3@01) (img@34@01 r)))
    (=>
      (and (Set_in (inv@33@01 r) g@3@01) (img@34@01 r))
      (Set_in r ($FVF.domain_next (as sm@35@01  $FVF<next>)))))
  :pattern ((Set_in r ($FVF.domain_next (as sm@35@01  $FVF<next>))))
  :qid |qp.fvfDomDef21|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and (and (Set_in (inv@33@01 r) g@3@01) (img@34@01 r)) (= r x@4@01))
    (=
      ($FVF.lookup_next (as sm@35@01  $FVF<next>) r)
      ($FVF.lookup_next (as sm@15@01  $FVF<next>) r)))
  :pattern (($FVF.lookup_next (as sm@35@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next (as sm@15@01  $FVF<next>) r))
  :qid |qp.fvfValDef18|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and (Set_in (inv@33@01 r) g@3@01) (img@34@01 r))
      (and
        (img@19@01 r)
        (and (Set_in (inv@18@01 r) g@3@01) (not (= (inv@18@01 r) x@4@01)))))
    (=
      ($FVF.lookup_next (as sm@35@01  $FVF<next>) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@14@01))))) r)))
  :pattern (($FVF.lookup_next (as sm@35@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@14@01))))) r))
  :qid |qp.fvfValDef19|)))
(assert (forall ((r $Ref)) (!
  (and
    ($FVF.loc_next ($FVF.lookup_next (as sm@15@01  $FVF<next>) r) r)
    ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@14@01))))) r) r))
  :pattern (($FVF.lookup_next (as sm@35@01  $FVF<next>) r))
  :qid |qp.fvfResTrgDef20|)))
(assert (and
  (forall ((r $Ref)) (!
    (=>
      (Set_in (inv@33@01 r) g@3@01)
      ($FVF.loc_next ($FVF.lookup_next (as sm@20@01  $FVF<next>) r) r))
    :pattern ((inv@33@01 r))
    :qid |quant-u-14238|))
  ($$%precondition ($SortWrappers.$FVF<next>To$Snap (as sm@35@01  $FVF<next>)) g@3@01)))
; [eval] edge(old($$(g)), v1, v2) || v1 == x && v2 == y
; [eval] edge(old($$(g)), v1, v2)
; [eval] old($$(g))
; [eval] $$(g)
(push) ; 6
(declare-const n@36@01 $Ref)
(push) ; 7
; [eval] (n in refs)
(assert (Set_in n@36@01 g@3@01))
(pop) ; 7
(declare-fun inv@37@01 ($Ref) $Ref)
(declare-fun img@38@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
; Definitional axioms for snapshot map domain
; Definitional axioms for snapshot map values
; Check receiver injectivity
(push) ; 7
(assert (not (forall ((n1@36@01 $Ref) (n2@36@01 $Ref)) (!
  (=>
    (and
      (and
        (Set_in n1@36@01 g@3@01)
        ($FVF.loc_next ($FVF.lookup_next (as sm@12@01  $FVF<next>) n1@36@01) n1@36@01))
      (and
        (Set_in n2@36@01 g@3@01)
        ($FVF.loc_next ($FVF.lookup_next (as sm@12@01  $FVF<next>) n2@36@01) n2@36@01))
      (= n1@36@01 n2@36@01))
    (= n1@36@01 n2@36@01))
  
  :qid |next-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((n@36@01 $Ref)) (!
  (=>
    (Set_in n@36@01 g@3@01)
    (and (= (inv@37@01 n@36@01) n@36@01) (img@38@01 n@36@01)))
  :pattern ((Set_in n@36@01 g@3@01))
  :pattern ((inv@37@01 n@36@01))
  :pattern ((img@38@01 n@36@01))
  :qid |next-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=> (and (img@38@01 r) (Set_in (inv@37@01 r) g@3@01)) (= (inv@37@01 r) r))
  :pattern ((inv@37@01 r))
  :qid |next-fctOfInv|)))
(assert (forall ((r $Ref)) (!
  (=>
    (Set_in (inv@37@01 r) g@3@01)
    ($FVF.loc_next ($FVF.lookup_next (as sm@12@01  $FVF<next>) r) r))
  :pattern ((inv@37@01 r))
  :qid |quant-u-14241|)))
(push) ; 7
(assert (not (forall ((r $Ref)) (!
  (=>
    (and (Set_in (inv@37@01 r) g@3@01) (img@38@01 r) (= r (inv@37@01 r)))
    (>
      (+
        (ite
          (and
            (img@11@01 r)
            (and (Set_in (inv@10@01 r) g@3@01) (not (= (inv@10@01 r) x@4@01))))
          (/ (to_real 1) (to_real 2))
          $Perm.No)
        (ite (= r x@4@01) $Perm.Write $Perm.No))
      $Perm.No))
  
  :qid |quant-u-14242|))))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(declare-const sm@39@01 $FVF<next>)
; Definitional axioms for snapshot map domain
(assert (forall ((r $Ref)) (!
  (and
    (=>
      (Set_in r ($FVF.domain_next (as sm@39@01  $FVF<next>)))
      (and (Set_in (inv@37@01 r) g@3@01) (img@38@01 r)))
    (=>
      (and (Set_in (inv@37@01 r) g@3@01) (img@38@01 r))
      (Set_in r ($FVF.domain_next (as sm@39@01  $FVF<next>)))))
  :pattern ((Set_in r ($FVF.domain_next (as sm@39@01  $FVF<next>))))
  :qid |qp.fvfDomDef25|)))
; Definitional axioms for snapshot map values
(assert (forall ((r $Ref)) (!
  (=>
    (and (and (Set_in (inv@37@01 r) g@3@01) (img@38@01 r)) (= r x@4@01))
    (=
      ($FVF.lookup_next (as sm@39@01  $FVF<next>) r)
      ($FVF.lookup_next (as sm@7@01  $FVF<next>) r)))
  :pattern (($FVF.lookup_next (as sm@39@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next (as sm@7@01  $FVF<next>) r))
  :qid |qp.fvfValDef22|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and (Set_in (inv@37@01 r) g@3@01) (img@38@01 r))
      (and
        (img@11@01 r)
        (and (Set_in (inv@10@01 r) g@3@01) (not (= (inv@10@01 r) x@4@01)))))
    (=
      ($FVF.lookup_next (as sm@39@01  $FVF<next>) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@6@01))))))) r)))
  :pattern (($FVF.lookup_next (as sm@39@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@6@01))))))) r))
  :qid |qp.fvfValDef23|)))
(assert (forall ((r $Ref)) (!
  (and
    ($FVF.loc_next ($FVF.lookup_next (as sm@7@01  $FVF<next>) r) r)
    ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@6@01))))))) r) r))
  :pattern (($FVF.lookup_next (as sm@39@01  $FVF<next>) r))
  :qid |qp.fvfResTrgDef24|)))
(assert ($$%precondition ($SortWrappers.$FVF<next>To$Snap (as sm@39@01  $FVF<next>)) g@3@01))
(pop) ; 6
; Joined path conditions
(assert (forall ((n@36@01 $Ref)) (!
  (=>
    (Set_in n@36@01 g@3@01)
    (and (= (inv@37@01 n@36@01) n@36@01) (img@38@01 n@36@01)))
  :pattern ((Set_in n@36@01 g@3@01))
  :pattern ((inv@37@01 n@36@01))
  :pattern ((img@38@01 n@36@01))
  :qid |next-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=> (and (img@38@01 r) (Set_in (inv@37@01 r) g@3@01)) (= (inv@37@01 r) r))
  :pattern ((inv@37@01 r))
  :qid |next-fctOfInv|)))
(assert (forall ((r $Ref)) (!
  (and
    (=>
      (Set_in r ($FVF.domain_next (as sm@39@01  $FVF<next>)))
      (and (Set_in (inv@37@01 r) g@3@01) (img@38@01 r)))
    (=>
      (and (Set_in (inv@37@01 r) g@3@01) (img@38@01 r))
      (Set_in r ($FVF.domain_next (as sm@39@01  $FVF<next>)))))
  :pattern ((Set_in r ($FVF.domain_next (as sm@39@01  $FVF<next>))))
  :qid |qp.fvfDomDef25|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and (and (Set_in (inv@37@01 r) g@3@01) (img@38@01 r)) (= r x@4@01))
    (=
      ($FVF.lookup_next (as sm@39@01  $FVF<next>) r)
      ($FVF.lookup_next (as sm@7@01  $FVF<next>) r)))
  :pattern (($FVF.lookup_next (as sm@39@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next (as sm@7@01  $FVF<next>) r))
  :qid |qp.fvfValDef22|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and (Set_in (inv@37@01 r) g@3@01) (img@38@01 r))
      (and
        (img@11@01 r)
        (and (Set_in (inv@10@01 r) g@3@01) (not (= (inv@10@01 r) x@4@01)))))
    (=
      ($FVF.lookup_next (as sm@39@01  $FVF<next>) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@6@01))))))) r)))
  :pattern (($FVF.lookup_next (as sm@39@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@6@01))))))) r))
  :qid |qp.fvfValDef23|)))
(assert (forall ((r $Ref)) (!
  (and
    ($FVF.loc_next ($FVF.lookup_next (as sm@7@01  $FVF<next>) r) r)
    ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@6@01))))))) r) r))
  :pattern (($FVF.lookup_next (as sm@39@01  $FVF<next>) r))
  :qid |qp.fvfResTrgDef24|)))
(assert (and
  (forall ((r $Ref)) (!
    (=>
      (Set_in (inv@37@01 r) g@3@01)
      ($FVF.loc_next ($FVF.lookup_next (as sm@12@01  $FVF<next>) r) r))
    :pattern ((inv@37@01 r))
    :qid |quant-u-14241|))
  ($$%precondition ($SortWrappers.$FVF<next>To$Snap (as sm@39@01  $FVF<next>)) g@3@01)))
(push) ; 6
; [then-branch: 9 | edge[Bool]($$(sm@39@01, g@3@01), v1@30@01, v2@31@01) | live]
; [else-branch: 9 | !(edge[Bool]($$(sm@39@01, g@3@01), v1@30@01, v2@31@01)) | live]
(push) ; 7
; [then-branch: 9 | edge[Bool]($$(sm@39@01, g@3@01), v1@30@01, v2@31@01)]
(assert (edge<Bool> ($$ ($SortWrappers.$FVF<next>To$Snap (as sm@39@01  $FVF<next>)) g@3@01) v1@30@01 v2@31@01))
(pop) ; 7
(push) ; 7
; [else-branch: 9 | !(edge[Bool]($$(sm@39@01, g@3@01), v1@30@01, v2@31@01))]
(assert (not
  (edge<Bool> ($$ ($SortWrappers.$FVF<next>To$Snap (as sm@39@01  $FVF<next>)) g@3@01) v1@30@01 v2@31@01)))
; [eval] v1 == x && v2 == y
; [eval] v1 == x
(push) ; 8
; [then-branch: 10 | v1@30@01 != x@4@01 | live]
; [else-branch: 10 | v1@30@01 == x@4@01 | live]
(push) ; 9
; [then-branch: 10 | v1@30@01 != x@4@01]
(assert (not (= v1@30@01 x@4@01)))
(pop) ; 9
(push) ; 9
; [else-branch: 10 | v1@30@01 == x@4@01]
(assert (= v1@30@01 x@4@01))
; [eval] v2 == y
(pop) ; 9
(pop) ; 8
; Joined path conditions
; Joined path conditions
(assert (or (= v1@30@01 x@4@01) (not (= v1@30@01 x@4@01))))
(pop) ; 7
(pop) ; 6
; Joined path conditions
; Joined path conditions
(assert (=>
  (not
    (edge<Bool> ($$ ($SortWrappers.$FVF<next>To$Snap (as sm@39@01  $FVF<next>)) g@3@01) v1@30@01 v2@31@01))
  (and
    (not
      (edge<Bool> ($$ ($SortWrappers.$FVF<next>To$Snap (as sm@39@01  $FVF<next>)) g@3@01) v1@30@01 v2@31@01))
    (or (= v1@30@01 x@4@01) (not (= v1@30@01 x@4@01))))))
(assert (or
  (not
    (edge<Bool> ($$ ($SortWrappers.$FVF<next>To$Snap (as sm@39@01  $FVF<next>)) g@3@01) v1@30@01 v2@31@01))
  (edge<Bool> ($$ ($SortWrappers.$FVF<next>To$Snap (as sm@39@01  $FVF<next>)) g@3@01) v1@30@01 v2@31@01)))
(pop) ; 5
; Nested auxiliary terms: globals (aux)
(assert (forall ((n@32@01 $Ref)) (!
  (=>
    (Set_in n@32@01 g@3@01)
    (and (= (inv@33@01 n@32@01) n@32@01) (img@34@01 n@32@01)))
  :pattern ((Set_in n@32@01 g@3@01))
  :pattern ((inv@33@01 n@32@01))
  :pattern ((img@34@01 n@32@01))
  :qid |next-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=> (and (img@34@01 r) (Set_in (inv@33@01 r) g@3@01)) (= (inv@33@01 r) r))
  :pattern ((inv@33@01 r))
  :qid |next-fctOfInv|)))
(assert (forall ((r $Ref)) (!
  (and
    (=>
      (Set_in r ($FVF.domain_next (as sm@35@01  $FVF<next>)))
      (and (Set_in (inv@33@01 r) g@3@01) (img@34@01 r)))
    (=>
      (and (Set_in (inv@33@01 r) g@3@01) (img@34@01 r))
      (Set_in r ($FVF.domain_next (as sm@35@01  $FVF<next>)))))
  :pattern ((Set_in r ($FVF.domain_next (as sm@35@01  $FVF<next>))))
  :qid |qp.fvfDomDef21|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and (and (Set_in (inv@33@01 r) g@3@01) (img@34@01 r)) (= r x@4@01))
    (=
      ($FVF.lookup_next (as sm@35@01  $FVF<next>) r)
      ($FVF.lookup_next (as sm@15@01  $FVF<next>) r)))
  :pattern (($FVF.lookup_next (as sm@35@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next (as sm@15@01  $FVF<next>) r))
  :qid |qp.fvfValDef18|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and (Set_in (inv@33@01 r) g@3@01) (img@34@01 r))
      (and
        (img@19@01 r)
        (and (Set_in (inv@18@01 r) g@3@01) (not (= (inv@18@01 r) x@4@01)))))
    (=
      ($FVF.lookup_next (as sm@35@01  $FVF<next>) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@14@01))))) r)))
  :pattern (($FVF.lookup_next (as sm@35@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@14@01))))) r))
  :qid |qp.fvfValDef19|)))
(assert (forall ((r $Ref)) (!
  (and
    ($FVF.loc_next ($FVF.lookup_next (as sm@15@01  $FVF<next>) r) r)
    ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@14@01))))) r) r))
  :pattern (($FVF.lookup_next (as sm@35@01  $FVF<next>) r))
  :qid |qp.fvfResTrgDef20|)))
(assert (forall ((n@36@01 $Ref)) (!
  (=>
    (Set_in n@36@01 g@3@01)
    (and (= (inv@37@01 n@36@01) n@36@01) (img@38@01 n@36@01)))
  :pattern ((Set_in n@36@01 g@3@01))
  :pattern ((inv@37@01 n@36@01))
  :pattern ((img@38@01 n@36@01))
  :qid |next-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=> (and (img@38@01 r) (Set_in (inv@37@01 r) g@3@01)) (= (inv@37@01 r) r))
  :pattern ((inv@37@01 r))
  :qid |next-fctOfInv|)))
(assert (forall ((r $Ref)) (!
  (and
    (=>
      (Set_in r ($FVF.domain_next (as sm@39@01  $FVF<next>)))
      (and (Set_in (inv@37@01 r) g@3@01) (img@38@01 r)))
    (=>
      (and (Set_in (inv@37@01 r) g@3@01) (img@38@01 r))
      (Set_in r ($FVF.domain_next (as sm@39@01  $FVF<next>)))))
  :pattern ((Set_in r ($FVF.domain_next (as sm@39@01  $FVF<next>))))
  :qid |qp.fvfDomDef25|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and (and (Set_in (inv@37@01 r) g@3@01) (img@38@01 r)) (= r x@4@01))
    (=
      ($FVF.lookup_next (as sm@39@01  $FVF<next>) r)
      ($FVF.lookup_next (as sm@7@01  $FVF<next>) r)))
  :pattern (($FVF.lookup_next (as sm@39@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next (as sm@7@01  $FVF<next>) r))
  :qid |qp.fvfValDef22|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and (Set_in (inv@37@01 r) g@3@01) (img@38@01 r))
      (and
        (img@11@01 r)
        (and (Set_in (inv@10@01 r) g@3@01) (not (= (inv@10@01 r) x@4@01)))))
    (=
      ($FVF.lookup_next (as sm@39@01  $FVF<next>) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@6@01))))))) r)))
  :pattern (($FVF.lookup_next (as sm@39@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@6@01))))))) r))
  :qid |qp.fvfValDef23|)))
(assert (forall ((r $Ref)) (!
  (and
    ($FVF.loc_next ($FVF.lookup_next (as sm@7@01  $FVF<next>) r) r)
    ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@6@01))))))) r) r))
  :pattern (($FVF.lookup_next (as sm@39@01  $FVF<next>) r))
  :qid |qp.fvfResTrgDef24|)))
(assert (forall ((r $Ref)) (!
  (=>
    (Set_in (inv@33@01 r) g@3@01)
    ($FVF.loc_next ($FVF.lookup_next (as sm@20@01  $FVF<next>) r) r))
  :pattern ((inv@33@01 r))
  :qid |quant-u-14238|)))
(assert ($$%precondition ($SortWrappers.$FVF<next>To$Snap (as sm@35@01  $FVF<next>)) g@3@01))
(assert (forall ((r $Ref)) (!
  (=>
    (Set_in (inv@37@01 r) g@3@01)
    ($FVF.loc_next ($FVF.lookup_next (as sm@12@01  $FVF<next>) r) r))
  :pattern ((inv@37@01 r))
  :qid |quant-u-14241|)))
(assert ($$%precondition ($SortWrappers.$FVF<next>To$Snap (as sm@39@01  $FVF<next>)) g@3@01))
; Nested auxiliary terms: non-globals (aux)
(assert (forall ((v1@30@01 $Ref) (v2@31@01 $Ref)) (!
  (and
    (=>
      (not
        (edge<Bool> ($$ ($SortWrappers.$FVF<next>To$Snap (as sm@39@01  $FVF<next>)) g@3@01) v1@30@01 v2@31@01))
      (and
        (not
          (edge<Bool> ($$ ($SortWrappers.$FVF<next>To$Snap (as sm@39@01  $FVF<next>)) g@3@01) v1@30@01 v2@31@01))
        (or (= v1@30@01 x@4@01) (not (= v1@30@01 x@4@01)))))
    (or
      (not
        (edge<Bool> ($$ ($SortWrappers.$FVF<next>To$Snap (as sm@39@01  $FVF<next>)) g@3@01) v1@30@01 v2@31@01))
      (edge<Bool> ($$ ($SortWrappers.$FVF<next>To$Snap (as sm@39@01  $FVF<next>)) g@3@01) v1@30@01 v2@31@01)))
  :pattern ((edge<Bool> ($$ ($SortWrappers.$FVF<next>To$Snap (as sm@39@01  $FVF<next>)) g@3@01) v1@30@01 v2@31@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/graphs/static/tests/lists/delete_edge1.vpr@281@27@283@78-aux|)))
(pop) ; 4
(push) ; 4
; [else-branch: 8 | y@5@01 == Null]
(assert (= y@5@01 $Ref.null))
(pop) ; 4
(pop) ; 3
; Joined path conditions
(assert (forall ((n@32@01 $Ref)) (!
  (=>
    (Set_in n@32@01 g@3@01)
    (and (= (inv@33@01 n@32@01) n@32@01) (img@34@01 n@32@01)))
  :pattern ((Set_in n@32@01 g@3@01))
  :pattern ((inv@33@01 n@32@01))
  :pattern ((img@34@01 n@32@01))
  :qid |next-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=> (and (img@34@01 r) (Set_in (inv@33@01 r) g@3@01)) (= (inv@33@01 r) r))
  :pattern ((inv@33@01 r))
  :qid |next-fctOfInv|)))
(assert (forall ((r $Ref)) (!
  (and
    (=>
      (Set_in r ($FVF.domain_next (as sm@35@01  $FVF<next>)))
      (and (Set_in (inv@33@01 r) g@3@01) (img@34@01 r)))
    (=>
      (and (Set_in (inv@33@01 r) g@3@01) (img@34@01 r))
      (Set_in r ($FVF.domain_next (as sm@35@01  $FVF<next>)))))
  :pattern ((Set_in r ($FVF.domain_next (as sm@35@01  $FVF<next>))))
  :qid |qp.fvfDomDef21|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and (and (Set_in (inv@33@01 r) g@3@01) (img@34@01 r)) (= r x@4@01))
    (=
      ($FVF.lookup_next (as sm@35@01  $FVF<next>) r)
      ($FVF.lookup_next (as sm@15@01  $FVF<next>) r)))
  :pattern (($FVF.lookup_next (as sm@35@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next (as sm@15@01  $FVF<next>) r))
  :qid |qp.fvfValDef18|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and (Set_in (inv@33@01 r) g@3@01) (img@34@01 r))
      (and
        (img@19@01 r)
        (and (Set_in (inv@18@01 r) g@3@01) (not (= (inv@18@01 r) x@4@01)))))
    (=
      ($FVF.lookup_next (as sm@35@01  $FVF<next>) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@14@01))))) r)))
  :pattern (($FVF.lookup_next (as sm@35@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@14@01))))) r))
  :qid |qp.fvfValDef19|)))
(assert (forall ((r $Ref)) (!
  (and
    ($FVF.loc_next ($FVF.lookup_next (as sm@15@01  $FVF<next>) r) r)
    ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@14@01))))) r) r))
  :pattern (($FVF.lookup_next (as sm@35@01  $FVF<next>) r))
  :qid |qp.fvfResTrgDef20|)))
(assert (forall ((n@36@01 $Ref)) (!
  (=>
    (Set_in n@36@01 g@3@01)
    (and (= (inv@37@01 n@36@01) n@36@01) (img@38@01 n@36@01)))
  :pattern ((Set_in n@36@01 g@3@01))
  :pattern ((inv@37@01 n@36@01))
  :pattern ((img@38@01 n@36@01))
  :qid |next-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=> (and (img@38@01 r) (Set_in (inv@37@01 r) g@3@01)) (= (inv@37@01 r) r))
  :pattern ((inv@37@01 r))
  :qid |next-fctOfInv|)))
(assert (forall ((r $Ref)) (!
  (and
    (=>
      (Set_in r ($FVF.domain_next (as sm@39@01  $FVF<next>)))
      (and (Set_in (inv@37@01 r) g@3@01) (img@38@01 r)))
    (=>
      (and (Set_in (inv@37@01 r) g@3@01) (img@38@01 r))
      (Set_in r ($FVF.domain_next (as sm@39@01  $FVF<next>)))))
  :pattern ((Set_in r ($FVF.domain_next (as sm@39@01  $FVF<next>))))
  :qid |qp.fvfDomDef25|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and (and (Set_in (inv@37@01 r) g@3@01) (img@38@01 r)) (= r x@4@01))
    (=
      ($FVF.lookup_next (as sm@39@01  $FVF<next>) r)
      ($FVF.lookup_next (as sm@7@01  $FVF<next>) r)))
  :pattern (($FVF.lookup_next (as sm@39@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next (as sm@7@01  $FVF<next>) r))
  :qid |qp.fvfValDef22|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and (Set_in (inv@37@01 r) g@3@01) (img@38@01 r))
      (and
        (img@11@01 r)
        (and (Set_in (inv@10@01 r) g@3@01) (not (= (inv@10@01 r) x@4@01)))))
    (=
      ($FVF.lookup_next (as sm@39@01  $FVF<next>) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@6@01))))))) r)))
  :pattern (($FVF.lookup_next (as sm@39@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@6@01))))))) r))
  :qid |qp.fvfValDef23|)))
(assert (forall ((r $Ref)) (!
  (and
    ($FVF.loc_next ($FVF.lookup_next (as sm@7@01  $FVF<next>) r) r)
    ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@6@01))))))) r) r))
  :pattern (($FVF.lookup_next (as sm@39@01  $FVF<next>) r))
  :qid |qp.fvfResTrgDef24|)))
(assert (=>
  (not (= y@5@01 $Ref.null))
  (and
    (not (= y@5@01 $Ref.null))
    (forall ((r $Ref)) (!
      (=>
        (Set_in (inv@33@01 r) g@3@01)
        ($FVF.loc_next ($FVF.lookup_next (as sm@20@01  $FVF<next>) r) r))
      :pattern ((inv@33@01 r))
      :qid |quant-u-14238|))
    ($$%precondition ($SortWrappers.$FVF<next>To$Snap (as sm@35@01  $FVF<next>)) g@3@01)
    (forall ((r $Ref)) (!
      (=>
        (Set_in (inv@37@01 r) g@3@01)
        ($FVF.loc_next ($FVF.lookup_next (as sm@12@01  $FVF<next>) r) r))
      :pattern ((inv@37@01 r))
      :qid |quant-u-14241|))
    ($$%precondition ($SortWrappers.$FVF<next>To$Snap (as sm@39@01  $FVF<next>)) g@3@01)
    (forall ((v1@30@01 $Ref) (v2@31@01 $Ref)) (!
      (and
        (=>
          (not
            (edge<Bool> ($$ ($SortWrappers.$FVF<next>To$Snap (as sm@39@01  $FVF<next>)) g@3@01) v1@30@01 v2@31@01))
          (and
            (not
              (edge<Bool> ($$ ($SortWrappers.$FVF<next>To$Snap (as sm@39@01  $FVF<next>)) g@3@01) v1@30@01 v2@31@01))
            (or (= v1@30@01 x@4@01) (not (= v1@30@01 x@4@01)))))
        (or
          (not
            (edge<Bool> ($$ ($SortWrappers.$FVF<next>To$Snap (as sm@39@01  $FVF<next>)) g@3@01) v1@30@01 v2@31@01))
          (edge<Bool> ($$ ($SortWrappers.$FVF<next>To$Snap (as sm@39@01  $FVF<next>)) g@3@01) v1@30@01 v2@31@01)))
      :pattern ((edge<Bool> ($$ ($SortWrappers.$FVF<next>To$Snap (as sm@39@01  $FVF<next>)) g@3@01) v1@30@01 v2@31@01))
      :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/graphs/static/tests/lists/delete_edge1.vpr@281@27@283@78-aux|)))))
; Joined path conditions
(assert (=>
  (not (= y@5@01 $Ref.null))
  (forall ((v1@30@01 $Ref) (v2@31@01 $Ref)) (!
    (=
      (edge<Bool> ($$ ($SortWrappers.$FVF<next>To$Snap (as sm@35@01  $FVF<next>)) g@3@01) v1@30@01 v2@31@01)
      (or
        (edge<Bool> ($$ ($SortWrappers.$FVF<next>To$Snap (as sm@39@01  $FVF<next>)) g@3@01) v1@30@01 v2@31@01)
        (and (= v1@30@01 x@4@01) (= v2@31@01 y@5@01))))
    :pattern ((edge<Bool> ($$ ($SortWrappers.$FVF<next>To$Snap (as sm@39@01  $FVF<next>)) g@3@01) v1@30@01 v2@31@01))
    :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/graphs/static/tests/lists/delete_edge1.vpr@281@27@283@78|))))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@14@01))))))))
  $Snap.unit))
; [eval] y != null ==> (forall v1: Ref, v2: Ref :: { exists_path($$(g), v1, v2) } v1 != v2 ==> exists_path($$(g), v1, v2) == (exists_path(old($$(g)), v1, v2) || exists_path(old($$(g)), v1, x) && exists_path(old($$(g)), y, v2)))
; [eval] y != null
(push) ; 3
(push) ; 4
(set-option :timeout 10)
(assert (not (= y@5@01 $Ref.null)))
(check-sat)
; unknown
(pop) ; 4
; 0.01s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not (not (= y@5@01 $Ref.null))))
(check-sat)
; unknown
(pop) ; 4
; 0.01s
; (get-info :all-statistics)
; [then-branch: 11 | y@5@01 != Null | live]
; [else-branch: 11 | y@5@01 == Null | live]
(set-option :timeout 0)
(push) ; 4
; [then-branch: 11 | y@5@01 != Null]
(assert (not (= y@5@01 $Ref.null)))
; [eval] (forall v1: Ref, v2: Ref :: { exists_path($$(g), v1, v2) } v1 != v2 ==> exists_path($$(g), v1, v2) == (exists_path(old($$(g)), v1, v2) || exists_path(old($$(g)), v1, x) && exists_path(old($$(g)), y, v2)))
(declare-const v1@40@01 $Ref)
(declare-const v2@41@01 $Ref)
(push) ; 5
; [eval] v1 != v2 ==> exists_path($$(g), v1, v2) == (exists_path(old($$(g)), v1, v2) || exists_path(old($$(g)), v1, x) && exists_path(old($$(g)), y, v2))
; [eval] v1 != v2
(push) ; 6
; [then-branch: 12 | v1@40@01 != v2@41@01 | live]
; [else-branch: 12 | v1@40@01 == v2@41@01 | live]
(push) ; 7
; [then-branch: 12 | v1@40@01 != v2@41@01]
(assert (not (= v1@40@01 v2@41@01)))
; [eval] exists_path($$(g), v1, v2) == (exists_path(old($$(g)), v1, v2) || exists_path(old($$(g)), v1, x) && exists_path(old($$(g)), y, v2))
; [eval] exists_path($$(g), v1, v2)
; [eval] $$(g)
(push) ; 8
(declare-const n@42@01 $Ref)
(push) ; 9
; [eval] (n in refs)
(assert (Set_in n@42@01 g@3@01))
(pop) ; 9
(declare-fun inv@43@01 ($Ref) $Ref)
(declare-fun img@44@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
; Definitional axioms for snapshot map domain
; Definitional axioms for snapshot map values
; Check receiver injectivity
(push) ; 9
(assert (not (forall ((n1@42@01 $Ref) (n2@42@01 $Ref)) (!
  (=>
    (and
      (and
        (Set_in n1@42@01 g@3@01)
        ($FVF.loc_next ($FVF.lookup_next (as sm@20@01  $FVF<next>) n1@42@01) n1@42@01))
      (and
        (Set_in n2@42@01 g@3@01)
        ($FVF.loc_next ($FVF.lookup_next (as sm@20@01  $FVF<next>) n2@42@01) n2@42@01))
      (= n1@42@01 n2@42@01))
    (= n1@42@01 n2@42@01))
  
  :qid |next-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 9
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((n@42@01 $Ref)) (!
  (=>
    (Set_in n@42@01 g@3@01)
    (and (= (inv@43@01 n@42@01) n@42@01) (img@44@01 n@42@01)))
  :pattern ((Set_in n@42@01 g@3@01))
  :pattern ((inv@43@01 n@42@01))
  :pattern ((img@44@01 n@42@01))
  :qid |next-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=> (and (img@44@01 r) (Set_in (inv@43@01 r) g@3@01)) (= (inv@43@01 r) r))
  :pattern ((inv@43@01 r))
  :qid |next-fctOfInv|)))
(assert (forall ((r $Ref)) (!
  (=>
    (Set_in (inv@43@01 r) g@3@01)
    ($FVF.loc_next ($FVF.lookup_next (as sm@20@01  $FVF<next>) r) r))
  :pattern ((inv@43@01 r))
  :qid |quant-u-14244|)))
(push) ; 9
(assert (not (forall ((r $Ref)) (!
  (=>
    (and (Set_in (inv@43@01 r) g@3@01) (img@44@01 r) (= r (inv@43@01 r)))
    (>
      (+
        (ite
          (and
            (img@19@01 r)
            (and (Set_in (inv@18@01 r) g@3@01) (not (= (inv@18@01 r) x@4@01))))
          (/ (to_real 1) (to_real 2))
          $Perm.No)
        (ite (= r x@4@01) $Perm.Write $Perm.No))
      $Perm.No))
  
  :qid |quant-u-14245|))))
(check-sat)
; unsat
(pop) ; 9
; 0.00s
; (get-info :all-statistics)
(declare-const sm@45@01 $FVF<next>)
; Definitional axioms for snapshot map domain
(assert (forall ((r $Ref)) (!
  (and
    (=>
      (Set_in r ($FVF.domain_next (as sm@45@01  $FVF<next>)))
      (and (Set_in (inv@43@01 r) g@3@01) (img@44@01 r)))
    (=>
      (and (Set_in (inv@43@01 r) g@3@01) (img@44@01 r))
      (Set_in r ($FVF.domain_next (as sm@45@01  $FVF<next>)))))
  :pattern ((Set_in r ($FVF.domain_next (as sm@45@01  $FVF<next>))))
  :qid |qp.fvfDomDef29|)))
; Definitional axioms for snapshot map values
(assert (forall ((r $Ref)) (!
  (=>
    (and (and (Set_in (inv@43@01 r) g@3@01) (img@44@01 r)) (= r x@4@01))
    (=
      ($FVF.lookup_next (as sm@45@01  $FVF<next>) r)
      ($FVF.lookup_next (as sm@15@01  $FVF<next>) r)))
  :pattern (($FVF.lookup_next (as sm@45@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next (as sm@15@01  $FVF<next>) r))
  :qid |qp.fvfValDef26|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and (Set_in (inv@43@01 r) g@3@01) (img@44@01 r))
      (and
        (img@19@01 r)
        (and (Set_in (inv@18@01 r) g@3@01) (not (= (inv@18@01 r) x@4@01)))))
    (=
      ($FVF.lookup_next (as sm@45@01  $FVF<next>) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@14@01))))) r)))
  :pattern (($FVF.lookup_next (as sm@45@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@14@01))))) r))
  :qid |qp.fvfValDef27|)))
(assert (forall ((r $Ref)) (!
  (and
    ($FVF.loc_next ($FVF.lookup_next (as sm@15@01  $FVF<next>) r) r)
    ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@14@01))))) r) r))
  :pattern (($FVF.lookup_next (as sm@45@01  $FVF<next>) r))
  :qid |qp.fvfResTrgDef28|)))
(assert ($$%precondition ($SortWrappers.$FVF<next>To$Snap (as sm@45@01  $FVF<next>)) g@3@01))
(pop) ; 8
; Joined path conditions
(assert (forall ((n@42@01 $Ref)) (!
  (=>
    (Set_in n@42@01 g@3@01)
    (and (= (inv@43@01 n@42@01) n@42@01) (img@44@01 n@42@01)))
  :pattern ((Set_in n@42@01 g@3@01))
  :pattern ((inv@43@01 n@42@01))
  :pattern ((img@44@01 n@42@01))
  :qid |next-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=> (and (img@44@01 r) (Set_in (inv@43@01 r) g@3@01)) (= (inv@43@01 r) r))
  :pattern ((inv@43@01 r))
  :qid |next-fctOfInv|)))
(assert (forall ((r $Ref)) (!
  (and
    (=>
      (Set_in r ($FVF.domain_next (as sm@45@01  $FVF<next>)))
      (and (Set_in (inv@43@01 r) g@3@01) (img@44@01 r)))
    (=>
      (and (Set_in (inv@43@01 r) g@3@01) (img@44@01 r))
      (Set_in r ($FVF.domain_next (as sm@45@01  $FVF<next>)))))
  :pattern ((Set_in r ($FVF.domain_next (as sm@45@01  $FVF<next>))))
  :qid |qp.fvfDomDef29|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and (and (Set_in (inv@43@01 r) g@3@01) (img@44@01 r)) (= r x@4@01))
    (=
      ($FVF.lookup_next (as sm@45@01  $FVF<next>) r)
      ($FVF.lookup_next (as sm@15@01  $FVF<next>) r)))
  :pattern (($FVF.lookup_next (as sm@45@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next (as sm@15@01  $FVF<next>) r))
  :qid |qp.fvfValDef26|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and (Set_in (inv@43@01 r) g@3@01) (img@44@01 r))
      (and
        (img@19@01 r)
        (and (Set_in (inv@18@01 r) g@3@01) (not (= (inv@18@01 r) x@4@01)))))
    (=
      ($FVF.lookup_next (as sm@45@01  $FVF<next>) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@14@01))))) r)))
  :pattern (($FVF.lookup_next (as sm@45@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@14@01))))) r))
  :qid |qp.fvfValDef27|)))
(assert (forall ((r $Ref)) (!
  (and
    ($FVF.loc_next ($FVF.lookup_next (as sm@15@01  $FVF<next>) r) r)
    ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@14@01))))) r) r))
  :pattern (($FVF.lookup_next (as sm@45@01  $FVF<next>) r))
  :qid |qp.fvfResTrgDef28|)))
(assert (and
  (forall ((r $Ref)) (!
    (=>
      (Set_in (inv@43@01 r) g@3@01)
      ($FVF.loc_next ($FVF.lookup_next (as sm@20@01  $FVF<next>) r) r))
    :pattern ((inv@43@01 r))
    :qid |quant-u-14244|))
  ($$%precondition ($SortWrappers.$FVF<next>To$Snap (as sm@45@01  $FVF<next>)) g@3@01)))
; [eval] exists_path(old($$(g)), v1, v2) || exists_path(old($$(g)), v1, x) && exists_path(old($$(g)), y, v2)
; [eval] exists_path(old($$(g)), v1, v2)
; [eval] old($$(g))
; [eval] $$(g)
(push) ; 8
(declare-const n@46@01 $Ref)
(push) ; 9
; [eval] (n in refs)
(assert (Set_in n@46@01 g@3@01))
(pop) ; 9
(declare-fun inv@47@01 ($Ref) $Ref)
(declare-fun img@48@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
; Definitional axioms for snapshot map domain
; Definitional axioms for snapshot map values
; Check receiver injectivity
(push) ; 9
(assert (not (forall ((n1@46@01 $Ref) (n2@46@01 $Ref)) (!
  (=>
    (and
      (and
        (Set_in n1@46@01 g@3@01)
        ($FVF.loc_next ($FVF.lookup_next (as sm@12@01  $FVF<next>) n1@46@01) n1@46@01))
      (and
        (Set_in n2@46@01 g@3@01)
        ($FVF.loc_next ($FVF.lookup_next (as sm@12@01  $FVF<next>) n2@46@01) n2@46@01))
      (= n1@46@01 n2@46@01))
    (= n1@46@01 n2@46@01))
  
  :qid |next-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 9
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((n@46@01 $Ref)) (!
  (=>
    (Set_in n@46@01 g@3@01)
    (and (= (inv@47@01 n@46@01) n@46@01) (img@48@01 n@46@01)))
  :pattern ((Set_in n@46@01 g@3@01))
  :pattern ((inv@47@01 n@46@01))
  :pattern ((img@48@01 n@46@01))
  :qid |next-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=> (and (img@48@01 r) (Set_in (inv@47@01 r) g@3@01)) (= (inv@47@01 r) r))
  :pattern ((inv@47@01 r))
  :qid |next-fctOfInv|)))
(assert (forall ((r $Ref)) (!
  (=>
    (Set_in (inv@47@01 r) g@3@01)
    ($FVF.loc_next ($FVF.lookup_next (as sm@12@01  $FVF<next>) r) r))
  :pattern ((inv@47@01 r))
  :qid |quant-u-14247|)))
(push) ; 9
(assert (not (forall ((r $Ref)) (!
  (=>
    (and (Set_in (inv@47@01 r) g@3@01) (img@48@01 r) (= r (inv@47@01 r)))
    (>
      (+
        (ite
          (and
            (img@11@01 r)
            (and (Set_in (inv@10@01 r) g@3@01) (not (= (inv@10@01 r) x@4@01))))
          (/ (to_real 1) (to_real 2))
          $Perm.No)
        (ite (= r x@4@01) $Perm.Write $Perm.No))
      $Perm.No))
  
  :qid |quant-u-14248|))))
(check-sat)
; unsat
(pop) ; 9
; 0.00s
; (get-info :all-statistics)
(declare-const sm@49@01 $FVF<next>)
; Definitional axioms for snapshot map domain
(assert (forall ((r $Ref)) (!
  (and
    (=>
      (Set_in r ($FVF.domain_next (as sm@49@01  $FVF<next>)))
      (and (Set_in (inv@47@01 r) g@3@01) (img@48@01 r)))
    (=>
      (and (Set_in (inv@47@01 r) g@3@01) (img@48@01 r))
      (Set_in r ($FVF.domain_next (as sm@49@01  $FVF<next>)))))
  :pattern ((Set_in r ($FVF.domain_next (as sm@49@01  $FVF<next>))))
  :qid |qp.fvfDomDef33|)))
; Definitional axioms for snapshot map values
(assert (forall ((r $Ref)) (!
  (=>
    (and (and (Set_in (inv@47@01 r) g@3@01) (img@48@01 r)) (= r x@4@01))
    (=
      ($FVF.lookup_next (as sm@49@01  $FVF<next>) r)
      ($FVF.lookup_next (as sm@7@01  $FVF<next>) r)))
  :pattern (($FVF.lookup_next (as sm@49@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next (as sm@7@01  $FVF<next>) r))
  :qid |qp.fvfValDef30|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and (Set_in (inv@47@01 r) g@3@01) (img@48@01 r))
      (and
        (img@11@01 r)
        (and (Set_in (inv@10@01 r) g@3@01) (not (= (inv@10@01 r) x@4@01)))))
    (=
      ($FVF.lookup_next (as sm@49@01  $FVF<next>) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@6@01))))))) r)))
  :pattern (($FVF.lookup_next (as sm@49@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@6@01))))))) r))
  :qid |qp.fvfValDef31|)))
(assert (forall ((r $Ref)) (!
  (and
    ($FVF.loc_next ($FVF.lookup_next (as sm@7@01  $FVF<next>) r) r)
    ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@6@01))))))) r) r))
  :pattern (($FVF.lookup_next (as sm@49@01  $FVF<next>) r))
  :qid |qp.fvfResTrgDef32|)))
(assert ($$%precondition ($SortWrappers.$FVF<next>To$Snap (as sm@49@01  $FVF<next>)) g@3@01))
(pop) ; 8
; Joined path conditions
(assert (forall ((n@46@01 $Ref)) (!
  (=>
    (Set_in n@46@01 g@3@01)
    (and (= (inv@47@01 n@46@01) n@46@01) (img@48@01 n@46@01)))
  :pattern ((Set_in n@46@01 g@3@01))
  :pattern ((inv@47@01 n@46@01))
  :pattern ((img@48@01 n@46@01))
  :qid |next-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=> (and (img@48@01 r) (Set_in (inv@47@01 r) g@3@01)) (= (inv@47@01 r) r))
  :pattern ((inv@47@01 r))
  :qid |next-fctOfInv|)))
(assert (forall ((r $Ref)) (!
  (and
    (=>
      (Set_in r ($FVF.domain_next (as sm@49@01  $FVF<next>)))
      (and (Set_in (inv@47@01 r) g@3@01) (img@48@01 r)))
    (=>
      (and (Set_in (inv@47@01 r) g@3@01) (img@48@01 r))
      (Set_in r ($FVF.domain_next (as sm@49@01  $FVF<next>)))))
  :pattern ((Set_in r ($FVF.domain_next (as sm@49@01  $FVF<next>))))
  :qid |qp.fvfDomDef33|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and (and (Set_in (inv@47@01 r) g@3@01) (img@48@01 r)) (= r x@4@01))
    (=
      ($FVF.lookup_next (as sm@49@01  $FVF<next>) r)
      ($FVF.lookup_next (as sm@7@01  $FVF<next>) r)))
  :pattern (($FVF.lookup_next (as sm@49@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next (as sm@7@01  $FVF<next>) r))
  :qid |qp.fvfValDef30|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and (Set_in (inv@47@01 r) g@3@01) (img@48@01 r))
      (and
        (img@11@01 r)
        (and (Set_in (inv@10@01 r) g@3@01) (not (= (inv@10@01 r) x@4@01)))))
    (=
      ($FVF.lookup_next (as sm@49@01  $FVF<next>) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@6@01))))))) r)))
  :pattern (($FVF.lookup_next (as sm@49@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@6@01))))))) r))
  :qid |qp.fvfValDef31|)))
(assert (forall ((r $Ref)) (!
  (and
    ($FVF.loc_next ($FVF.lookup_next (as sm@7@01  $FVF<next>) r) r)
    ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@6@01))))))) r) r))
  :pattern (($FVF.lookup_next (as sm@49@01  $FVF<next>) r))
  :qid |qp.fvfResTrgDef32|)))
(assert (and
  (forall ((r $Ref)) (!
    (=>
      (Set_in (inv@47@01 r) g@3@01)
      ($FVF.loc_next ($FVF.lookup_next (as sm@12@01  $FVF<next>) r) r))
    :pattern ((inv@47@01 r))
    :qid |quant-u-14247|))
  ($$%precondition ($SortWrappers.$FVF<next>To$Snap (as sm@49@01  $FVF<next>)) g@3@01)))
(push) ; 8
; [then-branch: 13 | exists_path[Bool]($$(sm@49@01, g@3@01), v1@40@01, v2@41@01) | live]
; [else-branch: 13 | !(exists_path[Bool]($$(sm@49@01, g@3@01), v1@40@01, v2@41@01)) | live]
(push) ; 9
; [then-branch: 13 | exists_path[Bool]($$(sm@49@01, g@3@01), v1@40@01, v2@41@01)]
(assert (exists_path<Bool> ($$ ($SortWrappers.$FVF<next>To$Snap (as sm@49@01  $FVF<next>)) g@3@01) v1@40@01 v2@41@01))
(pop) ; 9
(push) ; 9
; [else-branch: 13 | !(exists_path[Bool]($$(sm@49@01, g@3@01), v1@40@01, v2@41@01))]
(assert (not
  (exists_path<Bool> ($$ ($SortWrappers.$FVF<next>To$Snap (as sm@49@01  $FVF<next>)) g@3@01) v1@40@01 v2@41@01)))
; [eval] exists_path(old($$(g)), v1, x) && exists_path(old($$(g)), y, v2)
; [eval] exists_path(old($$(g)), v1, x)
; [eval] old($$(g))
; [eval] $$(g)
(push) ; 10
(declare-const n@50@01 $Ref)
(push) ; 11
; [eval] (n in refs)
(assert (Set_in n@50@01 g@3@01))
(pop) ; 11
(declare-fun inv@51@01 ($Ref) $Ref)
(declare-fun img@52@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
(declare-const sm@53@01 $FVF<next>)
; Definitional axioms for snapshot map domain
; Definitional axioms for snapshot map values
(assert (forall ((r $Ref)) (!
  (=>
    (= r x@4@01)
    (=
      ($FVF.lookup_next (as sm@53@01  $FVF<next>) r)
      ($FVF.lookup_next (as sm@7@01  $FVF<next>) r)))
  :pattern (($FVF.lookup_next (as sm@53@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next (as sm@7@01  $FVF<next>) r))
  :qid |qp.fvfValDef34|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@11@01 r)
      (and (Set_in (inv@10@01 r) g@3@01) (not (= (inv@10@01 r) x@4@01))))
    (=
      ($FVF.lookup_next (as sm@53@01  $FVF<next>) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@6@01))))))) r)))
  :pattern (($FVF.lookup_next (as sm@53@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@6@01))))))) r))
  :qid |qp.fvfValDef35|)))
(assert (forall ((r $Ref)) (!
  (and
    ($FVF.loc_next ($FVF.lookup_next (as sm@7@01  $FVF<next>) r) r)
    ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@6@01))))))) r) r))
  :pattern (($FVF.lookup_next (as sm@53@01  $FVF<next>) r))
  :qid |qp.fvfResTrgDef36|)))
; Check receiver injectivity
(push) ; 11
(assert (not (forall ((n1@50@01 $Ref) (n2@50@01 $Ref)) (!
  (=>
    (and
      (and
        (Set_in n1@50@01 g@3@01)
        ($FVF.loc_next ($FVF.lookup_next (as sm@53@01  $FVF<next>) n1@50@01) n1@50@01))
      (and
        (Set_in n2@50@01 g@3@01)
        ($FVF.loc_next ($FVF.lookup_next (as sm@53@01  $FVF<next>) n2@50@01) n2@50@01))
      (= n1@50@01 n2@50@01))
    (= n1@50@01 n2@50@01))
  
  :qid |next-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 11
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((n@50@01 $Ref)) (!
  (=>
    (Set_in n@50@01 g@3@01)
    (and (= (inv@51@01 n@50@01) n@50@01) (img@52@01 n@50@01)))
  :pattern ((Set_in n@50@01 g@3@01))
  :pattern ((inv@51@01 n@50@01))
  :pattern ((img@52@01 n@50@01))
  :qid |next-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=> (and (img@52@01 r) (Set_in (inv@51@01 r) g@3@01)) (= (inv@51@01 r) r))
  :pattern ((inv@51@01 r))
  :qid |next-fctOfInv|)))
(assert (forall ((r $Ref)) (!
  (=>
    (Set_in (inv@51@01 r) g@3@01)
    ($FVF.loc_next ($FVF.lookup_next (as sm@53@01  $FVF<next>) r) r))
  :pattern ((inv@51@01 r))
  :qid |quant-u-14250|)))
(push) ; 11
(assert (not (forall ((r $Ref)) (!
  (=>
    (and (Set_in (inv@51@01 r) g@3@01) (img@52@01 r) (= r (inv@51@01 r)))
    (>
      (+
        (ite
          (and
            (img@11@01 r)
            (and (Set_in (inv@10@01 r) g@3@01) (not (= (inv@10@01 r) x@4@01))))
          (/ (to_real 1) (to_real 2))
          $Perm.No)
        (ite (= r x@4@01) $Perm.Write $Perm.No))
      $Perm.No))
  
  :qid |quant-u-14251|))))
(check-sat)
; unsat
(pop) ; 11
; 0.00s
; (get-info :all-statistics)
(declare-const sm@54@01 $FVF<next>)
; Definitional axioms for snapshot map domain
(assert (forall ((r $Ref)) (!
  (and
    (=>
      (Set_in r ($FVF.domain_next (as sm@54@01  $FVF<next>)))
      (and (Set_in (inv@51@01 r) g@3@01) (img@52@01 r)))
    (=>
      (and (Set_in (inv@51@01 r) g@3@01) (img@52@01 r))
      (Set_in r ($FVF.domain_next (as sm@54@01  $FVF<next>)))))
  :pattern ((Set_in r ($FVF.domain_next (as sm@54@01  $FVF<next>))))
  :qid |qp.fvfDomDef40|)))
; Definitional axioms for snapshot map values
(assert (forall ((r $Ref)) (!
  (=>
    (and (and (Set_in (inv@51@01 r) g@3@01) (img@52@01 r)) (= r x@4@01))
    (=
      ($FVF.lookup_next (as sm@54@01  $FVF<next>) r)
      ($FVF.lookup_next (as sm@7@01  $FVF<next>) r)))
  :pattern (($FVF.lookup_next (as sm@54@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next (as sm@7@01  $FVF<next>) r))
  :qid |qp.fvfValDef37|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and (Set_in (inv@51@01 r) g@3@01) (img@52@01 r))
      (and
        (img@11@01 r)
        (and (Set_in (inv@10@01 r) g@3@01) (not (= (inv@10@01 r) x@4@01)))))
    (=
      ($FVF.lookup_next (as sm@54@01  $FVF<next>) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@6@01))))))) r)))
  :pattern (($FVF.lookup_next (as sm@54@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@6@01))))))) r))
  :qid |qp.fvfValDef38|)))
(assert (forall ((r $Ref)) (!
  (and
    ($FVF.loc_next ($FVF.lookup_next (as sm@7@01  $FVF<next>) r) r)
    ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@6@01))))))) r) r))
  :pattern (($FVF.lookup_next (as sm@54@01  $FVF<next>) r))
  :qid |qp.fvfResTrgDef39|)))
(assert ($$%precondition ($SortWrappers.$FVF<next>To$Snap (as sm@54@01  $FVF<next>)) g@3@01))
(pop) ; 10
; Joined path conditions
(assert (forall ((r $Ref)) (!
  (=>
    (= r x@4@01)
    (=
      ($FVF.lookup_next (as sm@53@01  $FVF<next>) r)
      ($FVF.lookup_next (as sm@7@01  $FVF<next>) r)))
  :pattern (($FVF.lookup_next (as sm@53@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next (as sm@7@01  $FVF<next>) r))
  :qid |qp.fvfValDef34|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@11@01 r)
      (and (Set_in (inv@10@01 r) g@3@01) (not (= (inv@10@01 r) x@4@01))))
    (=
      ($FVF.lookup_next (as sm@53@01  $FVF<next>) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@6@01))))))) r)))
  :pattern (($FVF.lookup_next (as sm@53@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@6@01))))))) r))
  :qid |qp.fvfValDef35|)))
(assert (forall ((r $Ref)) (!
  (and
    ($FVF.loc_next ($FVF.lookup_next (as sm@7@01  $FVF<next>) r) r)
    ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@6@01))))))) r) r))
  :pattern (($FVF.lookup_next (as sm@53@01  $FVF<next>) r))
  :qid |qp.fvfResTrgDef36|)))
(assert (forall ((n@50@01 $Ref)) (!
  (=>
    (Set_in n@50@01 g@3@01)
    (and (= (inv@51@01 n@50@01) n@50@01) (img@52@01 n@50@01)))
  :pattern ((Set_in n@50@01 g@3@01))
  :pattern ((inv@51@01 n@50@01))
  :pattern ((img@52@01 n@50@01))
  :qid |next-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=> (and (img@52@01 r) (Set_in (inv@51@01 r) g@3@01)) (= (inv@51@01 r) r))
  :pattern ((inv@51@01 r))
  :qid |next-fctOfInv|)))
(assert (forall ((r $Ref)) (!
  (and
    (=>
      (Set_in r ($FVF.domain_next (as sm@54@01  $FVF<next>)))
      (and (Set_in (inv@51@01 r) g@3@01) (img@52@01 r)))
    (=>
      (and (Set_in (inv@51@01 r) g@3@01) (img@52@01 r))
      (Set_in r ($FVF.domain_next (as sm@54@01  $FVF<next>)))))
  :pattern ((Set_in r ($FVF.domain_next (as sm@54@01  $FVF<next>))))
  :qid |qp.fvfDomDef40|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and (and (Set_in (inv@51@01 r) g@3@01) (img@52@01 r)) (= r x@4@01))
    (=
      ($FVF.lookup_next (as sm@54@01  $FVF<next>) r)
      ($FVF.lookup_next (as sm@7@01  $FVF<next>) r)))
  :pattern (($FVF.lookup_next (as sm@54@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next (as sm@7@01  $FVF<next>) r))
  :qid |qp.fvfValDef37|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and (Set_in (inv@51@01 r) g@3@01) (img@52@01 r))
      (and
        (img@11@01 r)
        (and (Set_in (inv@10@01 r) g@3@01) (not (= (inv@10@01 r) x@4@01)))))
    (=
      ($FVF.lookup_next (as sm@54@01  $FVF<next>) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@6@01))))))) r)))
  :pattern (($FVF.lookup_next (as sm@54@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@6@01))))))) r))
  :qid |qp.fvfValDef38|)))
(assert (forall ((r $Ref)) (!
  (and
    ($FVF.loc_next ($FVF.lookup_next (as sm@7@01  $FVF<next>) r) r)
    ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@6@01))))))) r) r))
  :pattern (($FVF.lookup_next (as sm@54@01  $FVF<next>) r))
  :qid |qp.fvfResTrgDef39|)))
(assert (and
  (forall ((r $Ref)) (!
    (=>
      (Set_in (inv@51@01 r) g@3@01)
      ($FVF.loc_next ($FVF.lookup_next (as sm@53@01  $FVF<next>) r) r))
    :pattern ((inv@51@01 r))
    :qid |quant-u-14250|))
  ($$%precondition ($SortWrappers.$FVF<next>To$Snap (as sm@54@01  $FVF<next>)) g@3@01)))
(push) ; 10
; [then-branch: 14 | !(exists_path[Bool]($$(sm@54@01, g@3@01), v1@40@01, x@4@01)) | live]
; [else-branch: 14 | exists_path[Bool]($$(sm@54@01, g@3@01), v1@40@01, x@4@01) | live]
(push) ; 11
; [then-branch: 14 | !(exists_path[Bool]($$(sm@54@01, g@3@01), v1@40@01, x@4@01))]
(assert (not
  (exists_path<Bool> ($$ ($SortWrappers.$FVF<next>To$Snap (as sm@54@01  $FVF<next>)) g@3@01) v1@40@01 x@4@01)))
(pop) ; 11
(push) ; 11
; [else-branch: 14 | exists_path[Bool]($$(sm@54@01, g@3@01), v1@40@01, x@4@01)]
(assert (exists_path<Bool> ($$ ($SortWrappers.$FVF<next>To$Snap (as sm@54@01  $FVF<next>)) g@3@01) v1@40@01 x@4@01))
; [eval] exists_path(old($$(g)), y, v2)
; [eval] old($$(g))
; [eval] $$(g)
(push) ; 12
(declare-const n@55@01 $Ref)
(push) ; 13
; [eval] (n in refs)
(assert (Set_in n@55@01 g@3@01))
(pop) ; 13
(declare-fun inv@56@01 ($Ref) $Ref)
(declare-fun img@57@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
(declare-const sm@58@01 $FVF<next>)
; Definitional axioms for snapshot map domain
; Definitional axioms for snapshot map values
(assert (forall ((r $Ref)) (!
  (=>
    (= r x@4@01)
    (=
      ($FVF.lookup_next (as sm@58@01  $FVF<next>) r)
      ($FVF.lookup_next (as sm@7@01  $FVF<next>) r)))
  :pattern (($FVF.lookup_next (as sm@58@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next (as sm@7@01  $FVF<next>) r))
  :qid |qp.fvfValDef41|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@11@01 r)
      (and (Set_in (inv@10@01 r) g@3@01) (not (= (inv@10@01 r) x@4@01))))
    (=
      ($FVF.lookup_next (as sm@58@01  $FVF<next>) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@6@01))))))) r)))
  :pattern (($FVF.lookup_next (as sm@58@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@6@01))))))) r))
  :qid |qp.fvfValDef42|)))
(assert (forall ((r $Ref)) (!
  (and
    ($FVF.loc_next ($FVF.lookup_next (as sm@7@01  $FVF<next>) r) r)
    ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@6@01))))))) r) r))
  :pattern (($FVF.lookup_next (as sm@58@01  $FVF<next>) r))
  :qid |qp.fvfResTrgDef43|)))
; Check receiver injectivity
(push) ; 13
(assert (not (forall ((n1@55@01 $Ref) (n2@55@01 $Ref)) (!
  (=>
    (and
      (and
        (Set_in n1@55@01 g@3@01)
        ($FVF.loc_next ($FVF.lookup_next (as sm@58@01  $FVF<next>) n1@55@01) n1@55@01))
      (and
        (Set_in n2@55@01 g@3@01)
        ($FVF.loc_next ($FVF.lookup_next (as sm@58@01  $FVF<next>) n2@55@01) n2@55@01))
      (= n1@55@01 n2@55@01))
    (= n1@55@01 n2@55@01))
  
  :qid |next-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 13
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((n@55@01 $Ref)) (!
  (=>
    (Set_in n@55@01 g@3@01)
    (and (= (inv@56@01 n@55@01) n@55@01) (img@57@01 n@55@01)))
  :pattern ((Set_in n@55@01 g@3@01))
  :pattern ((inv@56@01 n@55@01))
  :pattern ((img@57@01 n@55@01))
  :qid |next-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=> (and (img@57@01 r) (Set_in (inv@56@01 r) g@3@01)) (= (inv@56@01 r) r))
  :pattern ((inv@56@01 r))
  :qid |next-fctOfInv|)))
(assert (forall ((r $Ref)) (!
  (=>
    (Set_in (inv@56@01 r) g@3@01)
    ($FVF.loc_next ($FVF.lookup_next (as sm@58@01  $FVF<next>) r) r))
  :pattern ((inv@56@01 r))
  :qid |quant-u-14253|)))
(push) ; 13
(assert (not (forall ((r $Ref)) (!
  (=>
    (and (Set_in (inv@56@01 r) g@3@01) (img@57@01 r) (= r (inv@56@01 r)))
    (>
      (+
        (ite
          (and
            (img@11@01 r)
            (and (Set_in (inv@10@01 r) g@3@01) (not (= (inv@10@01 r) x@4@01))))
          (/ (to_real 1) (to_real 2))
          $Perm.No)
        (ite (= r x@4@01) $Perm.Write $Perm.No))
      $Perm.No))
  
  :qid |quant-u-14254|))))
(check-sat)
; unsat
(pop) ; 13
; 0.00s
; (get-info :all-statistics)
(declare-const sm@59@01 $FVF<next>)
; Definitional axioms for snapshot map domain
(assert (forall ((r $Ref)) (!
  (and
    (=>
      (Set_in r ($FVF.domain_next (as sm@59@01  $FVF<next>)))
      (and (Set_in (inv@56@01 r) g@3@01) (img@57@01 r)))
    (=>
      (and (Set_in (inv@56@01 r) g@3@01) (img@57@01 r))
      (Set_in r ($FVF.domain_next (as sm@59@01  $FVF<next>)))))
  :pattern ((Set_in r ($FVF.domain_next (as sm@59@01  $FVF<next>))))
  :qid |qp.fvfDomDef47|)))
; Definitional axioms for snapshot map values
(assert (forall ((r $Ref)) (!
  (=>
    (and (and (Set_in (inv@56@01 r) g@3@01) (img@57@01 r)) (= r x@4@01))
    (=
      ($FVF.lookup_next (as sm@59@01  $FVF<next>) r)
      ($FVF.lookup_next (as sm@7@01  $FVF<next>) r)))
  :pattern (($FVF.lookup_next (as sm@59@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next (as sm@7@01  $FVF<next>) r))
  :qid |qp.fvfValDef44|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and (Set_in (inv@56@01 r) g@3@01) (img@57@01 r))
      (and
        (img@11@01 r)
        (and (Set_in (inv@10@01 r) g@3@01) (not (= (inv@10@01 r) x@4@01)))))
    (=
      ($FVF.lookup_next (as sm@59@01  $FVF<next>) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@6@01))))))) r)))
  :pattern (($FVF.lookup_next (as sm@59@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@6@01))))))) r))
  :qid |qp.fvfValDef45|)))
(assert (forall ((r $Ref)) (!
  (and
    ($FVF.loc_next ($FVF.lookup_next (as sm@7@01  $FVF<next>) r) r)
    ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@6@01))))))) r) r))
  :pattern (($FVF.lookup_next (as sm@59@01  $FVF<next>) r))
  :qid |qp.fvfResTrgDef46|)))
(assert ($$%precondition ($SortWrappers.$FVF<next>To$Snap (as sm@59@01  $FVF<next>)) g@3@01))
(pop) ; 12
; Joined path conditions
(assert (forall ((r $Ref)) (!
  (=>
    (= r x@4@01)
    (=
      ($FVF.lookup_next (as sm@58@01  $FVF<next>) r)
      ($FVF.lookup_next (as sm@7@01  $FVF<next>) r)))
  :pattern (($FVF.lookup_next (as sm@58@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next (as sm@7@01  $FVF<next>) r))
  :qid |qp.fvfValDef41|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@11@01 r)
      (and (Set_in (inv@10@01 r) g@3@01) (not (= (inv@10@01 r) x@4@01))))
    (=
      ($FVF.lookup_next (as sm@58@01  $FVF<next>) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@6@01))))))) r)))
  :pattern (($FVF.lookup_next (as sm@58@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@6@01))))))) r))
  :qid |qp.fvfValDef42|)))
(assert (forall ((r $Ref)) (!
  (and
    ($FVF.loc_next ($FVF.lookup_next (as sm@7@01  $FVF<next>) r) r)
    ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@6@01))))))) r) r))
  :pattern (($FVF.lookup_next (as sm@58@01  $FVF<next>) r))
  :qid |qp.fvfResTrgDef43|)))
(assert (forall ((n@55@01 $Ref)) (!
  (=>
    (Set_in n@55@01 g@3@01)
    (and (= (inv@56@01 n@55@01) n@55@01) (img@57@01 n@55@01)))
  :pattern ((Set_in n@55@01 g@3@01))
  :pattern ((inv@56@01 n@55@01))
  :pattern ((img@57@01 n@55@01))
  :qid |next-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=> (and (img@57@01 r) (Set_in (inv@56@01 r) g@3@01)) (= (inv@56@01 r) r))
  :pattern ((inv@56@01 r))
  :qid |next-fctOfInv|)))
(assert (forall ((r $Ref)) (!
  (and
    (=>
      (Set_in r ($FVF.domain_next (as sm@59@01  $FVF<next>)))
      (and (Set_in (inv@56@01 r) g@3@01) (img@57@01 r)))
    (=>
      (and (Set_in (inv@56@01 r) g@3@01) (img@57@01 r))
      (Set_in r ($FVF.domain_next (as sm@59@01  $FVF<next>)))))
  :pattern ((Set_in r ($FVF.domain_next (as sm@59@01  $FVF<next>))))
  :qid |qp.fvfDomDef47|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and (and (Set_in (inv@56@01 r) g@3@01) (img@57@01 r)) (= r x@4@01))
    (=
      ($FVF.lookup_next (as sm@59@01  $FVF<next>) r)
      ($FVF.lookup_next (as sm@7@01  $FVF<next>) r)))
  :pattern (($FVF.lookup_next (as sm@59@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next (as sm@7@01  $FVF<next>) r))
  :qid |qp.fvfValDef44|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and (Set_in (inv@56@01 r) g@3@01) (img@57@01 r))
      (and
        (img@11@01 r)
        (and (Set_in (inv@10@01 r) g@3@01) (not (= (inv@10@01 r) x@4@01)))))
    (=
      ($FVF.lookup_next (as sm@59@01  $FVF<next>) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@6@01))))))) r)))
  :pattern (($FVF.lookup_next (as sm@59@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@6@01))))))) r))
  :qid |qp.fvfValDef45|)))
(assert (forall ((r $Ref)) (!
  (and
    ($FVF.loc_next ($FVF.lookup_next (as sm@7@01  $FVF<next>) r) r)
    ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@6@01))))))) r) r))
  :pattern (($FVF.lookup_next (as sm@59@01  $FVF<next>) r))
  :qid |qp.fvfResTrgDef46|)))
(assert (and
  (forall ((r $Ref)) (!
    (=>
      (Set_in (inv@56@01 r) g@3@01)
      ($FVF.loc_next ($FVF.lookup_next (as sm@58@01  $FVF<next>) r) r))
    :pattern ((inv@56@01 r))
    :qid |quant-u-14253|))
  ($$%precondition ($SortWrappers.$FVF<next>To$Snap (as sm@59@01  $FVF<next>)) g@3@01)))
(pop) ; 11
(pop) ; 10
; Joined path conditions
; Joined path conditions
(assert (forall ((r $Ref)) (!
  (=>
    (= r x@4@01)
    (=
      ($FVF.lookup_next (as sm@58@01  $FVF<next>) r)
      ($FVF.lookup_next (as sm@7@01  $FVF<next>) r)))
  :pattern (($FVF.lookup_next (as sm@58@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next (as sm@7@01  $FVF<next>) r))
  :qid |qp.fvfValDef41|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@11@01 r)
      (and (Set_in (inv@10@01 r) g@3@01) (not (= (inv@10@01 r) x@4@01))))
    (=
      ($FVF.lookup_next (as sm@58@01  $FVF<next>) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@6@01))))))) r)))
  :pattern (($FVF.lookup_next (as sm@58@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@6@01))))))) r))
  :qid |qp.fvfValDef42|)))
(assert (forall ((r $Ref)) (!
  (and
    ($FVF.loc_next ($FVF.lookup_next (as sm@7@01  $FVF<next>) r) r)
    ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@6@01))))))) r) r))
  :pattern (($FVF.lookup_next (as sm@58@01  $FVF<next>) r))
  :qid |qp.fvfResTrgDef43|)))
(assert (forall ((n@55@01 $Ref)) (!
  (=>
    (Set_in n@55@01 g@3@01)
    (and (= (inv@56@01 n@55@01) n@55@01) (img@57@01 n@55@01)))
  :pattern ((Set_in n@55@01 g@3@01))
  :pattern ((inv@56@01 n@55@01))
  :pattern ((img@57@01 n@55@01))
  :qid |next-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=> (and (img@57@01 r) (Set_in (inv@56@01 r) g@3@01)) (= (inv@56@01 r) r))
  :pattern ((inv@56@01 r))
  :qid |next-fctOfInv|)))
(assert (forall ((r $Ref)) (!
  (and
    (=>
      (Set_in r ($FVF.domain_next (as sm@59@01  $FVF<next>)))
      (and (Set_in (inv@56@01 r) g@3@01) (img@57@01 r)))
    (=>
      (and (Set_in (inv@56@01 r) g@3@01) (img@57@01 r))
      (Set_in r ($FVF.domain_next (as sm@59@01  $FVF<next>)))))
  :pattern ((Set_in r ($FVF.domain_next (as sm@59@01  $FVF<next>))))
  :qid |qp.fvfDomDef47|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and (and (Set_in (inv@56@01 r) g@3@01) (img@57@01 r)) (= r x@4@01))
    (=
      ($FVF.lookup_next (as sm@59@01  $FVF<next>) r)
      ($FVF.lookup_next (as sm@7@01  $FVF<next>) r)))
  :pattern (($FVF.lookup_next (as sm@59@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next (as sm@7@01  $FVF<next>) r))
  :qid |qp.fvfValDef44|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and (Set_in (inv@56@01 r) g@3@01) (img@57@01 r))
      (and
        (img@11@01 r)
        (and (Set_in (inv@10@01 r) g@3@01) (not (= (inv@10@01 r) x@4@01)))))
    (=
      ($FVF.lookup_next (as sm@59@01  $FVF<next>) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@6@01))))))) r)))
  :pattern (($FVF.lookup_next (as sm@59@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@6@01))))))) r))
  :qid |qp.fvfValDef45|)))
(assert (forall ((r $Ref)) (!
  (and
    ($FVF.loc_next ($FVF.lookup_next (as sm@7@01  $FVF<next>) r) r)
    ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@6@01))))))) r) r))
  :pattern (($FVF.lookup_next (as sm@59@01  $FVF<next>) r))
  :qid |qp.fvfResTrgDef46|)))
(assert (=>
  (exists_path<Bool> ($$ ($SortWrappers.$FVF<next>To$Snap (as sm@54@01  $FVF<next>)) g@3@01) v1@40@01 x@4@01)
  (and
    (exists_path<Bool> ($$ ($SortWrappers.$FVF<next>To$Snap (as sm@54@01  $FVF<next>)) g@3@01) v1@40@01 x@4@01)
    (forall ((r $Ref)) (!
      (=>
        (Set_in (inv@56@01 r) g@3@01)
        ($FVF.loc_next ($FVF.lookup_next (as sm@58@01  $FVF<next>) r) r))
      :pattern ((inv@56@01 r))
      :qid |quant-u-14253|))
    ($$%precondition ($SortWrappers.$FVF<next>To$Snap (as sm@59@01  $FVF<next>)) g@3@01))))
(assert (or
  (exists_path<Bool> ($$ ($SortWrappers.$FVF<next>To$Snap (as sm@54@01  $FVF<next>)) g@3@01) v1@40@01 x@4@01)
  (not
    (exists_path<Bool> ($$ ($SortWrappers.$FVF<next>To$Snap (as sm@54@01  $FVF<next>)) g@3@01) v1@40@01 x@4@01))))
(pop) ; 9
(pop) ; 8
; Joined path conditions
; Joined path conditions
(assert (forall ((r $Ref)) (!
  (=>
    (= r x@4@01)
    (=
      ($FVF.lookup_next (as sm@53@01  $FVF<next>) r)
      ($FVF.lookup_next (as sm@7@01  $FVF<next>) r)))
  :pattern (($FVF.lookup_next (as sm@53@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next (as sm@7@01  $FVF<next>) r))
  :qid |qp.fvfValDef34|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@11@01 r)
      (and (Set_in (inv@10@01 r) g@3@01) (not (= (inv@10@01 r) x@4@01))))
    (=
      ($FVF.lookup_next (as sm@53@01  $FVF<next>) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@6@01))))))) r)))
  :pattern (($FVF.lookup_next (as sm@53@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@6@01))))))) r))
  :qid |qp.fvfValDef35|)))
(assert (forall ((r $Ref)) (!
  (and
    ($FVF.loc_next ($FVF.lookup_next (as sm@7@01  $FVF<next>) r) r)
    ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@6@01))))))) r) r))
  :pattern (($FVF.lookup_next (as sm@53@01  $FVF<next>) r))
  :qid |qp.fvfResTrgDef36|)))
(assert (forall ((n@50@01 $Ref)) (!
  (=>
    (Set_in n@50@01 g@3@01)
    (and (= (inv@51@01 n@50@01) n@50@01) (img@52@01 n@50@01)))
  :pattern ((Set_in n@50@01 g@3@01))
  :pattern ((inv@51@01 n@50@01))
  :pattern ((img@52@01 n@50@01))
  :qid |next-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=> (and (img@52@01 r) (Set_in (inv@51@01 r) g@3@01)) (= (inv@51@01 r) r))
  :pattern ((inv@51@01 r))
  :qid |next-fctOfInv|)))
(assert (forall ((r $Ref)) (!
  (and
    (=>
      (Set_in r ($FVF.domain_next (as sm@54@01  $FVF<next>)))
      (and (Set_in (inv@51@01 r) g@3@01) (img@52@01 r)))
    (=>
      (and (Set_in (inv@51@01 r) g@3@01) (img@52@01 r))
      (Set_in r ($FVF.domain_next (as sm@54@01  $FVF<next>)))))
  :pattern ((Set_in r ($FVF.domain_next (as sm@54@01  $FVF<next>))))
  :qid |qp.fvfDomDef40|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and (and (Set_in (inv@51@01 r) g@3@01) (img@52@01 r)) (= r x@4@01))
    (=
      ($FVF.lookup_next (as sm@54@01  $FVF<next>) r)
      ($FVF.lookup_next (as sm@7@01  $FVF<next>) r)))
  :pattern (($FVF.lookup_next (as sm@54@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next (as sm@7@01  $FVF<next>) r))
  :qid |qp.fvfValDef37|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and (Set_in (inv@51@01 r) g@3@01) (img@52@01 r))
      (and
        (img@11@01 r)
        (and (Set_in (inv@10@01 r) g@3@01) (not (= (inv@10@01 r) x@4@01)))))
    (=
      ($FVF.lookup_next (as sm@54@01  $FVF<next>) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@6@01))))))) r)))
  :pattern (($FVF.lookup_next (as sm@54@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@6@01))))))) r))
  :qid |qp.fvfValDef38|)))
(assert (forall ((r $Ref)) (!
  (and
    ($FVF.loc_next ($FVF.lookup_next (as sm@7@01  $FVF<next>) r) r)
    ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@6@01))))))) r) r))
  :pattern (($FVF.lookup_next (as sm@54@01  $FVF<next>) r))
  :qid |qp.fvfResTrgDef39|)))
(assert (forall ((r $Ref)) (!
  (=>
    (= r x@4@01)
    (=
      ($FVF.lookup_next (as sm@58@01  $FVF<next>) r)
      ($FVF.lookup_next (as sm@7@01  $FVF<next>) r)))
  :pattern (($FVF.lookup_next (as sm@58@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next (as sm@7@01  $FVF<next>) r))
  :qid |qp.fvfValDef41|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@11@01 r)
      (and (Set_in (inv@10@01 r) g@3@01) (not (= (inv@10@01 r) x@4@01))))
    (=
      ($FVF.lookup_next (as sm@58@01  $FVF<next>) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@6@01))))))) r)))
  :pattern (($FVF.lookup_next (as sm@58@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@6@01))))))) r))
  :qid |qp.fvfValDef42|)))
(assert (forall ((r $Ref)) (!
  (and
    ($FVF.loc_next ($FVF.lookup_next (as sm@7@01  $FVF<next>) r) r)
    ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@6@01))))))) r) r))
  :pattern (($FVF.lookup_next (as sm@58@01  $FVF<next>) r))
  :qid |qp.fvfResTrgDef43|)))
(assert (forall ((n@55@01 $Ref)) (!
  (=>
    (Set_in n@55@01 g@3@01)
    (and (= (inv@56@01 n@55@01) n@55@01) (img@57@01 n@55@01)))
  :pattern ((Set_in n@55@01 g@3@01))
  :pattern ((inv@56@01 n@55@01))
  :pattern ((img@57@01 n@55@01))
  :qid |next-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=> (and (img@57@01 r) (Set_in (inv@56@01 r) g@3@01)) (= (inv@56@01 r) r))
  :pattern ((inv@56@01 r))
  :qid |next-fctOfInv|)))
(assert (forall ((r $Ref)) (!
  (and
    (=>
      (Set_in r ($FVF.domain_next (as sm@59@01  $FVF<next>)))
      (and (Set_in (inv@56@01 r) g@3@01) (img@57@01 r)))
    (=>
      (and (Set_in (inv@56@01 r) g@3@01) (img@57@01 r))
      (Set_in r ($FVF.domain_next (as sm@59@01  $FVF<next>)))))
  :pattern ((Set_in r ($FVF.domain_next (as sm@59@01  $FVF<next>))))
  :qid |qp.fvfDomDef47|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and (and (Set_in (inv@56@01 r) g@3@01) (img@57@01 r)) (= r x@4@01))
    (=
      ($FVF.lookup_next (as sm@59@01  $FVF<next>) r)
      ($FVF.lookup_next (as sm@7@01  $FVF<next>) r)))
  :pattern (($FVF.lookup_next (as sm@59@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next (as sm@7@01  $FVF<next>) r))
  :qid |qp.fvfValDef44|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and (Set_in (inv@56@01 r) g@3@01) (img@57@01 r))
      (and
        (img@11@01 r)
        (and (Set_in (inv@10@01 r) g@3@01) (not (= (inv@10@01 r) x@4@01)))))
    (=
      ($FVF.lookup_next (as sm@59@01  $FVF<next>) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@6@01))))))) r)))
  :pattern (($FVF.lookup_next (as sm@59@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@6@01))))))) r))
  :qid |qp.fvfValDef45|)))
(assert (forall ((r $Ref)) (!
  (and
    ($FVF.loc_next ($FVF.lookup_next (as sm@7@01  $FVF<next>) r) r)
    ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@6@01))))))) r) r))
  :pattern (($FVF.lookup_next (as sm@59@01  $FVF<next>) r))
  :qid |qp.fvfResTrgDef46|)))
(assert (=>
  (not
    (exists_path<Bool> ($$ ($SortWrappers.$FVF<next>To$Snap (as sm@49@01  $FVF<next>)) g@3@01) v1@40@01 v2@41@01))
  (and
    (not
      (exists_path<Bool> ($$ ($SortWrappers.$FVF<next>To$Snap (as sm@49@01  $FVF<next>)) g@3@01) v1@40@01 v2@41@01))
    (forall ((r $Ref)) (!
      (=>
        (Set_in (inv@51@01 r) g@3@01)
        ($FVF.loc_next ($FVF.lookup_next (as sm@53@01  $FVF<next>) r) r))
      :pattern ((inv@51@01 r))
      :qid |quant-u-14250|))
    ($$%precondition ($SortWrappers.$FVF<next>To$Snap (as sm@54@01  $FVF<next>)) g@3@01)
    (=>
      (exists_path<Bool> ($$ ($SortWrappers.$FVF<next>To$Snap (as sm@54@01  $FVF<next>)) g@3@01) v1@40@01 x@4@01)
      (and
        (exists_path<Bool> ($$ ($SortWrappers.$FVF<next>To$Snap (as sm@54@01  $FVF<next>)) g@3@01) v1@40@01 x@4@01)
        (forall ((r $Ref)) (!
          (=>
            (Set_in (inv@56@01 r) g@3@01)
            ($FVF.loc_next ($FVF.lookup_next (as sm@58@01  $FVF<next>) r) r))
          :pattern ((inv@56@01 r))
          :qid |quant-u-14253|))
        ($$%precondition ($SortWrappers.$FVF<next>To$Snap (as sm@59@01  $FVF<next>)) g@3@01)))
    (or
      (exists_path<Bool> ($$ ($SortWrappers.$FVF<next>To$Snap (as sm@54@01  $FVF<next>)) g@3@01) v1@40@01 x@4@01)
      (not
        (exists_path<Bool> ($$ ($SortWrappers.$FVF<next>To$Snap (as sm@54@01  $FVF<next>)) g@3@01) v1@40@01 x@4@01))))))
(assert (or
  (not
    (exists_path<Bool> ($$ ($SortWrappers.$FVF<next>To$Snap (as sm@49@01  $FVF<next>)) g@3@01) v1@40@01 v2@41@01))
  (exists_path<Bool> ($$ ($SortWrappers.$FVF<next>To$Snap (as sm@49@01  $FVF<next>)) g@3@01) v1@40@01 v2@41@01)))
(pop) ; 7
(push) ; 7
; [else-branch: 12 | v1@40@01 == v2@41@01]
(assert (= v1@40@01 v2@41@01))
(pop) ; 7
(pop) ; 6
; Joined path conditions
(assert (forall ((n@42@01 $Ref)) (!
  (=>
    (Set_in n@42@01 g@3@01)
    (and (= (inv@43@01 n@42@01) n@42@01) (img@44@01 n@42@01)))
  :pattern ((Set_in n@42@01 g@3@01))
  :pattern ((inv@43@01 n@42@01))
  :pattern ((img@44@01 n@42@01))
  :qid |next-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=> (and (img@44@01 r) (Set_in (inv@43@01 r) g@3@01)) (= (inv@43@01 r) r))
  :pattern ((inv@43@01 r))
  :qid |next-fctOfInv|)))
(assert (forall ((r $Ref)) (!
  (and
    (=>
      (Set_in r ($FVF.domain_next (as sm@45@01  $FVF<next>)))
      (and (Set_in (inv@43@01 r) g@3@01) (img@44@01 r)))
    (=>
      (and (Set_in (inv@43@01 r) g@3@01) (img@44@01 r))
      (Set_in r ($FVF.domain_next (as sm@45@01  $FVF<next>)))))
  :pattern ((Set_in r ($FVF.domain_next (as sm@45@01  $FVF<next>))))
  :qid |qp.fvfDomDef29|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and (and (Set_in (inv@43@01 r) g@3@01) (img@44@01 r)) (= r x@4@01))
    (=
      ($FVF.lookup_next (as sm@45@01  $FVF<next>) r)
      ($FVF.lookup_next (as sm@15@01  $FVF<next>) r)))
  :pattern (($FVF.lookup_next (as sm@45@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next (as sm@15@01  $FVF<next>) r))
  :qid |qp.fvfValDef26|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and (Set_in (inv@43@01 r) g@3@01) (img@44@01 r))
      (and
        (img@19@01 r)
        (and (Set_in (inv@18@01 r) g@3@01) (not (= (inv@18@01 r) x@4@01)))))
    (=
      ($FVF.lookup_next (as sm@45@01  $FVF<next>) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@14@01))))) r)))
  :pattern (($FVF.lookup_next (as sm@45@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@14@01))))) r))
  :qid |qp.fvfValDef27|)))
(assert (forall ((r $Ref)) (!
  (and
    ($FVF.loc_next ($FVF.lookup_next (as sm@15@01  $FVF<next>) r) r)
    ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@14@01))))) r) r))
  :pattern (($FVF.lookup_next (as sm@45@01  $FVF<next>) r))
  :qid |qp.fvfResTrgDef28|)))
(assert (forall ((n@46@01 $Ref)) (!
  (=>
    (Set_in n@46@01 g@3@01)
    (and (= (inv@47@01 n@46@01) n@46@01) (img@48@01 n@46@01)))
  :pattern ((Set_in n@46@01 g@3@01))
  :pattern ((inv@47@01 n@46@01))
  :pattern ((img@48@01 n@46@01))
  :qid |next-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=> (and (img@48@01 r) (Set_in (inv@47@01 r) g@3@01)) (= (inv@47@01 r) r))
  :pattern ((inv@47@01 r))
  :qid |next-fctOfInv|)))
(assert (forall ((r $Ref)) (!
  (and
    (=>
      (Set_in r ($FVF.domain_next (as sm@49@01  $FVF<next>)))
      (and (Set_in (inv@47@01 r) g@3@01) (img@48@01 r)))
    (=>
      (and (Set_in (inv@47@01 r) g@3@01) (img@48@01 r))
      (Set_in r ($FVF.domain_next (as sm@49@01  $FVF<next>)))))
  :pattern ((Set_in r ($FVF.domain_next (as sm@49@01  $FVF<next>))))
  :qid |qp.fvfDomDef33|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and (and (Set_in (inv@47@01 r) g@3@01) (img@48@01 r)) (= r x@4@01))
    (=
      ($FVF.lookup_next (as sm@49@01  $FVF<next>) r)
      ($FVF.lookup_next (as sm@7@01  $FVF<next>) r)))
  :pattern (($FVF.lookup_next (as sm@49@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next (as sm@7@01  $FVF<next>) r))
  :qid |qp.fvfValDef30|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and (Set_in (inv@47@01 r) g@3@01) (img@48@01 r))
      (and
        (img@11@01 r)
        (and (Set_in (inv@10@01 r) g@3@01) (not (= (inv@10@01 r) x@4@01)))))
    (=
      ($FVF.lookup_next (as sm@49@01  $FVF<next>) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@6@01))))))) r)))
  :pattern (($FVF.lookup_next (as sm@49@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@6@01))))))) r))
  :qid |qp.fvfValDef31|)))
(assert (forall ((r $Ref)) (!
  (and
    ($FVF.loc_next ($FVF.lookup_next (as sm@7@01  $FVF<next>) r) r)
    ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@6@01))))))) r) r))
  :pattern (($FVF.lookup_next (as sm@49@01  $FVF<next>) r))
  :qid |qp.fvfResTrgDef32|)))
(assert (forall ((r $Ref)) (!
  (=>
    (= r x@4@01)
    (=
      ($FVF.lookup_next (as sm@53@01  $FVF<next>) r)
      ($FVF.lookup_next (as sm@7@01  $FVF<next>) r)))
  :pattern (($FVF.lookup_next (as sm@53@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next (as sm@7@01  $FVF<next>) r))
  :qid |qp.fvfValDef34|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@11@01 r)
      (and (Set_in (inv@10@01 r) g@3@01) (not (= (inv@10@01 r) x@4@01))))
    (=
      ($FVF.lookup_next (as sm@53@01  $FVF<next>) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@6@01))))))) r)))
  :pattern (($FVF.lookup_next (as sm@53@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@6@01))))))) r))
  :qid |qp.fvfValDef35|)))
(assert (forall ((r $Ref)) (!
  (and
    ($FVF.loc_next ($FVF.lookup_next (as sm@7@01  $FVF<next>) r) r)
    ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@6@01))))))) r) r))
  :pattern (($FVF.lookup_next (as sm@53@01  $FVF<next>) r))
  :qid |qp.fvfResTrgDef36|)))
(assert (forall ((n@50@01 $Ref)) (!
  (=>
    (Set_in n@50@01 g@3@01)
    (and (= (inv@51@01 n@50@01) n@50@01) (img@52@01 n@50@01)))
  :pattern ((Set_in n@50@01 g@3@01))
  :pattern ((inv@51@01 n@50@01))
  :pattern ((img@52@01 n@50@01))
  :qid |next-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=> (and (img@52@01 r) (Set_in (inv@51@01 r) g@3@01)) (= (inv@51@01 r) r))
  :pattern ((inv@51@01 r))
  :qid |next-fctOfInv|)))
(assert (forall ((r $Ref)) (!
  (and
    (=>
      (Set_in r ($FVF.domain_next (as sm@54@01  $FVF<next>)))
      (and (Set_in (inv@51@01 r) g@3@01) (img@52@01 r)))
    (=>
      (and (Set_in (inv@51@01 r) g@3@01) (img@52@01 r))
      (Set_in r ($FVF.domain_next (as sm@54@01  $FVF<next>)))))
  :pattern ((Set_in r ($FVF.domain_next (as sm@54@01  $FVF<next>))))
  :qid |qp.fvfDomDef40|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and (and (Set_in (inv@51@01 r) g@3@01) (img@52@01 r)) (= r x@4@01))
    (=
      ($FVF.lookup_next (as sm@54@01  $FVF<next>) r)
      ($FVF.lookup_next (as sm@7@01  $FVF<next>) r)))
  :pattern (($FVF.lookup_next (as sm@54@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next (as sm@7@01  $FVF<next>) r))
  :qid |qp.fvfValDef37|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and (Set_in (inv@51@01 r) g@3@01) (img@52@01 r))
      (and
        (img@11@01 r)
        (and (Set_in (inv@10@01 r) g@3@01) (not (= (inv@10@01 r) x@4@01)))))
    (=
      ($FVF.lookup_next (as sm@54@01  $FVF<next>) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@6@01))))))) r)))
  :pattern (($FVF.lookup_next (as sm@54@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@6@01))))))) r))
  :qid |qp.fvfValDef38|)))
(assert (forall ((r $Ref)) (!
  (and
    ($FVF.loc_next ($FVF.lookup_next (as sm@7@01  $FVF<next>) r) r)
    ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@6@01))))))) r) r))
  :pattern (($FVF.lookup_next (as sm@54@01  $FVF<next>) r))
  :qid |qp.fvfResTrgDef39|)))
(assert (forall ((r $Ref)) (!
  (=>
    (= r x@4@01)
    (=
      ($FVF.lookup_next (as sm@58@01  $FVF<next>) r)
      ($FVF.lookup_next (as sm@7@01  $FVF<next>) r)))
  :pattern (($FVF.lookup_next (as sm@58@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next (as sm@7@01  $FVF<next>) r))
  :qid |qp.fvfValDef41|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@11@01 r)
      (and (Set_in (inv@10@01 r) g@3@01) (not (= (inv@10@01 r) x@4@01))))
    (=
      ($FVF.lookup_next (as sm@58@01  $FVF<next>) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@6@01))))))) r)))
  :pattern (($FVF.lookup_next (as sm@58@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@6@01))))))) r))
  :qid |qp.fvfValDef42|)))
(assert (forall ((r $Ref)) (!
  (and
    ($FVF.loc_next ($FVF.lookup_next (as sm@7@01  $FVF<next>) r) r)
    ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@6@01))))))) r) r))
  :pattern (($FVF.lookup_next (as sm@58@01  $FVF<next>) r))
  :qid |qp.fvfResTrgDef43|)))
(assert (forall ((n@55@01 $Ref)) (!
  (=>
    (Set_in n@55@01 g@3@01)
    (and (= (inv@56@01 n@55@01) n@55@01) (img@57@01 n@55@01)))
  :pattern ((Set_in n@55@01 g@3@01))
  :pattern ((inv@56@01 n@55@01))
  :pattern ((img@57@01 n@55@01))
  :qid |next-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=> (and (img@57@01 r) (Set_in (inv@56@01 r) g@3@01)) (= (inv@56@01 r) r))
  :pattern ((inv@56@01 r))
  :qid |next-fctOfInv|)))
(assert (forall ((r $Ref)) (!
  (and
    (=>
      (Set_in r ($FVF.domain_next (as sm@59@01  $FVF<next>)))
      (and (Set_in (inv@56@01 r) g@3@01) (img@57@01 r)))
    (=>
      (and (Set_in (inv@56@01 r) g@3@01) (img@57@01 r))
      (Set_in r ($FVF.domain_next (as sm@59@01  $FVF<next>)))))
  :pattern ((Set_in r ($FVF.domain_next (as sm@59@01  $FVF<next>))))
  :qid |qp.fvfDomDef47|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and (and (Set_in (inv@56@01 r) g@3@01) (img@57@01 r)) (= r x@4@01))
    (=
      ($FVF.lookup_next (as sm@59@01  $FVF<next>) r)
      ($FVF.lookup_next (as sm@7@01  $FVF<next>) r)))
  :pattern (($FVF.lookup_next (as sm@59@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next (as sm@7@01  $FVF<next>) r))
  :qid |qp.fvfValDef44|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and (Set_in (inv@56@01 r) g@3@01) (img@57@01 r))
      (and
        (img@11@01 r)
        (and (Set_in (inv@10@01 r) g@3@01) (not (= (inv@10@01 r) x@4@01)))))
    (=
      ($FVF.lookup_next (as sm@59@01  $FVF<next>) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@6@01))))))) r)))
  :pattern (($FVF.lookup_next (as sm@59@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@6@01))))))) r))
  :qid |qp.fvfValDef45|)))
(assert (forall ((r $Ref)) (!
  (and
    ($FVF.loc_next ($FVF.lookup_next (as sm@7@01  $FVF<next>) r) r)
    ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@6@01))))))) r) r))
  :pattern (($FVF.lookup_next (as sm@59@01  $FVF<next>) r))
  :qid |qp.fvfResTrgDef46|)))
(assert (=>
  (not (= v1@40@01 v2@41@01))
  (and
    (not (= v1@40@01 v2@41@01))
    (forall ((r $Ref)) (!
      (=>
        (Set_in (inv@43@01 r) g@3@01)
        ($FVF.loc_next ($FVF.lookup_next (as sm@20@01  $FVF<next>) r) r))
      :pattern ((inv@43@01 r))
      :qid |quant-u-14244|))
    ($$%precondition ($SortWrappers.$FVF<next>To$Snap (as sm@45@01  $FVF<next>)) g@3@01)
    (forall ((r $Ref)) (!
      (=>
        (Set_in (inv@47@01 r) g@3@01)
        ($FVF.loc_next ($FVF.lookup_next (as sm@12@01  $FVF<next>) r) r))
      :pattern ((inv@47@01 r))
      :qid |quant-u-14247|))
    ($$%precondition ($SortWrappers.$FVF<next>To$Snap (as sm@49@01  $FVF<next>)) g@3@01)
    (=>
      (not
        (exists_path<Bool> ($$ ($SortWrappers.$FVF<next>To$Snap (as sm@49@01  $FVF<next>)) g@3@01) v1@40@01 v2@41@01))
      (and
        (not
          (exists_path<Bool> ($$ ($SortWrappers.$FVF<next>To$Snap (as sm@49@01  $FVF<next>)) g@3@01) v1@40@01 v2@41@01))
        (forall ((r $Ref)) (!
          (=>
            (Set_in (inv@51@01 r) g@3@01)
            ($FVF.loc_next ($FVF.lookup_next (as sm@53@01  $FVF<next>) r) r))
          :pattern ((inv@51@01 r))
          :qid |quant-u-14250|))
        ($$%precondition ($SortWrappers.$FVF<next>To$Snap (as sm@54@01  $FVF<next>)) g@3@01)
        (=>
          (exists_path<Bool> ($$ ($SortWrappers.$FVF<next>To$Snap (as sm@54@01  $FVF<next>)) g@3@01) v1@40@01 x@4@01)
          (and
            (exists_path<Bool> ($$ ($SortWrappers.$FVF<next>To$Snap (as sm@54@01  $FVF<next>)) g@3@01) v1@40@01 x@4@01)
            (forall ((r $Ref)) (!
              (=>
                (Set_in (inv@56@01 r) g@3@01)
                ($FVF.loc_next ($FVF.lookup_next (as sm@58@01  $FVF<next>) r) r))
              :pattern ((inv@56@01 r))
              :qid |quant-u-14253|))
            ($$%precondition ($SortWrappers.$FVF<next>To$Snap (as sm@59@01  $FVF<next>)) g@3@01)))
        (or
          (exists_path<Bool> ($$ ($SortWrappers.$FVF<next>To$Snap (as sm@54@01  $FVF<next>)) g@3@01) v1@40@01 x@4@01)
          (not
            (exists_path<Bool> ($$ ($SortWrappers.$FVF<next>To$Snap (as sm@54@01  $FVF<next>)) g@3@01) v1@40@01 x@4@01)))))
    (or
      (not
        (exists_path<Bool> ($$ ($SortWrappers.$FVF<next>To$Snap (as sm@49@01  $FVF<next>)) g@3@01) v1@40@01 v2@41@01))
      (exists_path<Bool> ($$ ($SortWrappers.$FVF<next>To$Snap (as sm@49@01  $FVF<next>)) g@3@01) v1@40@01 v2@41@01)))))
; Joined path conditions
(assert (or (= v1@40@01 v2@41@01) (not (= v1@40@01 v2@41@01))))
(pop) ; 5
; Nested auxiliary terms: globals (aux)
(assert (forall ((n@42@01 $Ref)) (!
  (=>
    (Set_in n@42@01 g@3@01)
    (and (= (inv@43@01 n@42@01) n@42@01) (img@44@01 n@42@01)))
  :pattern ((Set_in n@42@01 g@3@01))
  :pattern ((inv@43@01 n@42@01))
  :pattern ((img@44@01 n@42@01))
  :qid |next-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=> (and (img@44@01 r) (Set_in (inv@43@01 r) g@3@01)) (= (inv@43@01 r) r))
  :pattern ((inv@43@01 r))
  :qid |next-fctOfInv|)))
(assert (forall ((r $Ref)) (!
  (and
    (=>
      (Set_in r ($FVF.domain_next (as sm@45@01  $FVF<next>)))
      (and (Set_in (inv@43@01 r) g@3@01) (img@44@01 r)))
    (=>
      (and (Set_in (inv@43@01 r) g@3@01) (img@44@01 r))
      (Set_in r ($FVF.domain_next (as sm@45@01  $FVF<next>)))))
  :pattern ((Set_in r ($FVF.domain_next (as sm@45@01  $FVF<next>))))
  :qid |qp.fvfDomDef29|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and (and (Set_in (inv@43@01 r) g@3@01) (img@44@01 r)) (= r x@4@01))
    (=
      ($FVF.lookup_next (as sm@45@01  $FVF<next>) r)
      ($FVF.lookup_next (as sm@15@01  $FVF<next>) r)))
  :pattern (($FVF.lookup_next (as sm@45@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next (as sm@15@01  $FVF<next>) r))
  :qid |qp.fvfValDef26|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and (Set_in (inv@43@01 r) g@3@01) (img@44@01 r))
      (and
        (img@19@01 r)
        (and (Set_in (inv@18@01 r) g@3@01) (not (= (inv@18@01 r) x@4@01)))))
    (=
      ($FVF.lookup_next (as sm@45@01  $FVF<next>) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@14@01))))) r)))
  :pattern (($FVF.lookup_next (as sm@45@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@14@01))))) r))
  :qid |qp.fvfValDef27|)))
(assert (forall ((r $Ref)) (!
  (and
    ($FVF.loc_next ($FVF.lookup_next (as sm@15@01  $FVF<next>) r) r)
    ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@14@01))))) r) r))
  :pattern (($FVF.lookup_next (as sm@45@01  $FVF<next>) r))
  :qid |qp.fvfResTrgDef28|)))
(assert (forall ((n@46@01 $Ref)) (!
  (=>
    (Set_in n@46@01 g@3@01)
    (and (= (inv@47@01 n@46@01) n@46@01) (img@48@01 n@46@01)))
  :pattern ((Set_in n@46@01 g@3@01))
  :pattern ((inv@47@01 n@46@01))
  :pattern ((img@48@01 n@46@01))
  :qid |next-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=> (and (img@48@01 r) (Set_in (inv@47@01 r) g@3@01)) (= (inv@47@01 r) r))
  :pattern ((inv@47@01 r))
  :qid |next-fctOfInv|)))
(assert (forall ((r $Ref)) (!
  (and
    (=>
      (Set_in r ($FVF.domain_next (as sm@49@01  $FVF<next>)))
      (and (Set_in (inv@47@01 r) g@3@01) (img@48@01 r)))
    (=>
      (and (Set_in (inv@47@01 r) g@3@01) (img@48@01 r))
      (Set_in r ($FVF.domain_next (as sm@49@01  $FVF<next>)))))
  :pattern ((Set_in r ($FVF.domain_next (as sm@49@01  $FVF<next>))))
  :qid |qp.fvfDomDef33|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and (and (Set_in (inv@47@01 r) g@3@01) (img@48@01 r)) (= r x@4@01))
    (=
      ($FVF.lookup_next (as sm@49@01  $FVF<next>) r)
      ($FVF.lookup_next (as sm@7@01  $FVF<next>) r)))
  :pattern (($FVF.lookup_next (as sm@49@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next (as sm@7@01  $FVF<next>) r))
  :qid |qp.fvfValDef30|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and (Set_in (inv@47@01 r) g@3@01) (img@48@01 r))
      (and
        (img@11@01 r)
        (and (Set_in (inv@10@01 r) g@3@01) (not (= (inv@10@01 r) x@4@01)))))
    (=
      ($FVF.lookup_next (as sm@49@01  $FVF<next>) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@6@01))))))) r)))
  :pattern (($FVF.lookup_next (as sm@49@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@6@01))))))) r))
  :qid |qp.fvfValDef31|)))
(assert (forall ((r $Ref)) (!
  (and
    ($FVF.loc_next ($FVF.lookup_next (as sm@7@01  $FVF<next>) r) r)
    ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@6@01))))))) r) r))
  :pattern (($FVF.lookup_next (as sm@49@01  $FVF<next>) r))
  :qid |qp.fvfResTrgDef32|)))
(assert (forall ((r $Ref)) (!
  (=>
    (= r x@4@01)
    (=
      ($FVF.lookup_next (as sm@53@01  $FVF<next>) r)
      ($FVF.lookup_next (as sm@7@01  $FVF<next>) r)))
  :pattern (($FVF.lookup_next (as sm@53@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next (as sm@7@01  $FVF<next>) r))
  :qid |qp.fvfValDef34|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@11@01 r)
      (and (Set_in (inv@10@01 r) g@3@01) (not (= (inv@10@01 r) x@4@01))))
    (=
      ($FVF.lookup_next (as sm@53@01  $FVF<next>) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@6@01))))))) r)))
  :pattern (($FVF.lookup_next (as sm@53@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@6@01))))))) r))
  :qid |qp.fvfValDef35|)))
(assert (forall ((r $Ref)) (!
  (and
    ($FVF.loc_next ($FVF.lookup_next (as sm@7@01  $FVF<next>) r) r)
    ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@6@01))))))) r) r))
  :pattern (($FVF.lookup_next (as sm@53@01  $FVF<next>) r))
  :qid |qp.fvfResTrgDef36|)))
(assert (forall ((n@50@01 $Ref)) (!
  (=>
    (Set_in n@50@01 g@3@01)
    (and (= (inv@51@01 n@50@01) n@50@01) (img@52@01 n@50@01)))
  :pattern ((Set_in n@50@01 g@3@01))
  :pattern ((inv@51@01 n@50@01))
  :pattern ((img@52@01 n@50@01))
  :qid |next-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=> (and (img@52@01 r) (Set_in (inv@51@01 r) g@3@01)) (= (inv@51@01 r) r))
  :pattern ((inv@51@01 r))
  :qid |next-fctOfInv|)))
(assert (forall ((r $Ref)) (!
  (and
    (=>
      (Set_in r ($FVF.domain_next (as sm@54@01  $FVF<next>)))
      (and (Set_in (inv@51@01 r) g@3@01) (img@52@01 r)))
    (=>
      (and (Set_in (inv@51@01 r) g@3@01) (img@52@01 r))
      (Set_in r ($FVF.domain_next (as sm@54@01  $FVF<next>)))))
  :pattern ((Set_in r ($FVF.domain_next (as sm@54@01  $FVF<next>))))
  :qid |qp.fvfDomDef40|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and (and (Set_in (inv@51@01 r) g@3@01) (img@52@01 r)) (= r x@4@01))
    (=
      ($FVF.lookup_next (as sm@54@01  $FVF<next>) r)
      ($FVF.lookup_next (as sm@7@01  $FVF<next>) r)))
  :pattern (($FVF.lookup_next (as sm@54@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next (as sm@7@01  $FVF<next>) r))
  :qid |qp.fvfValDef37|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and (Set_in (inv@51@01 r) g@3@01) (img@52@01 r))
      (and
        (img@11@01 r)
        (and (Set_in (inv@10@01 r) g@3@01) (not (= (inv@10@01 r) x@4@01)))))
    (=
      ($FVF.lookup_next (as sm@54@01  $FVF<next>) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@6@01))))))) r)))
  :pattern (($FVF.lookup_next (as sm@54@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@6@01))))))) r))
  :qid |qp.fvfValDef38|)))
(assert (forall ((r $Ref)) (!
  (and
    ($FVF.loc_next ($FVF.lookup_next (as sm@7@01  $FVF<next>) r) r)
    ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@6@01))))))) r) r))
  :pattern (($FVF.lookup_next (as sm@54@01  $FVF<next>) r))
  :qid |qp.fvfResTrgDef39|)))
(assert (forall ((r $Ref)) (!
  (=>
    (= r x@4@01)
    (=
      ($FVF.lookup_next (as sm@58@01  $FVF<next>) r)
      ($FVF.lookup_next (as sm@7@01  $FVF<next>) r)))
  :pattern (($FVF.lookup_next (as sm@58@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next (as sm@7@01  $FVF<next>) r))
  :qid |qp.fvfValDef41|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@11@01 r)
      (and (Set_in (inv@10@01 r) g@3@01) (not (= (inv@10@01 r) x@4@01))))
    (=
      ($FVF.lookup_next (as sm@58@01  $FVF<next>) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@6@01))))))) r)))
  :pattern (($FVF.lookup_next (as sm@58@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@6@01))))))) r))
  :qid |qp.fvfValDef42|)))
(assert (forall ((r $Ref)) (!
  (and
    ($FVF.loc_next ($FVF.lookup_next (as sm@7@01  $FVF<next>) r) r)
    ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@6@01))))))) r) r))
  :pattern (($FVF.lookup_next (as sm@58@01  $FVF<next>) r))
  :qid |qp.fvfResTrgDef43|)))
(assert (forall ((n@55@01 $Ref)) (!
  (=>
    (Set_in n@55@01 g@3@01)
    (and (= (inv@56@01 n@55@01) n@55@01) (img@57@01 n@55@01)))
  :pattern ((Set_in n@55@01 g@3@01))
  :pattern ((inv@56@01 n@55@01))
  :pattern ((img@57@01 n@55@01))
  :qid |next-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=> (and (img@57@01 r) (Set_in (inv@56@01 r) g@3@01)) (= (inv@56@01 r) r))
  :pattern ((inv@56@01 r))
  :qid |next-fctOfInv|)))
(assert (forall ((r $Ref)) (!
  (and
    (=>
      (Set_in r ($FVF.domain_next (as sm@59@01  $FVF<next>)))
      (and (Set_in (inv@56@01 r) g@3@01) (img@57@01 r)))
    (=>
      (and (Set_in (inv@56@01 r) g@3@01) (img@57@01 r))
      (Set_in r ($FVF.domain_next (as sm@59@01  $FVF<next>)))))
  :pattern ((Set_in r ($FVF.domain_next (as sm@59@01  $FVF<next>))))
  :qid |qp.fvfDomDef47|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and (and (Set_in (inv@56@01 r) g@3@01) (img@57@01 r)) (= r x@4@01))
    (=
      ($FVF.lookup_next (as sm@59@01  $FVF<next>) r)
      ($FVF.lookup_next (as sm@7@01  $FVF<next>) r)))
  :pattern (($FVF.lookup_next (as sm@59@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next (as sm@7@01  $FVF<next>) r))
  :qid |qp.fvfValDef44|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and (Set_in (inv@56@01 r) g@3@01) (img@57@01 r))
      (and
        (img@11@01 r)
        (and (Set_in (inv@10@01 r) g@3@01) (not (= (inv@10@01 r) x@4@01)))))
    (=
      ($FVF.lookup_next (as sm@59@01  $FVF<next>) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@6@01))))))) r)))
  :pattern (($FVF.lookup_next (as sm@59@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@6@01))))))) r))
  :qid |qp.fvfValDef45|)))
(assert (forall ((r $Ref)) (!
  (and
    ($FVF.loc_next ($FVF.lookup_next (as sm@7@01  $FVF<next>) r) r)
    ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@6@01))))))) r) r))
  :pattern (($FVF.lookup_next (as sm@59@01  $FVF<next>) r))
  :qid |qp.fvfResTrgDef46|)))
; Nested auxiliary terms: non-globals (aux)
(assert (forall ((v1@40@01 $Ref) (v2@41@01 $Ref)) (!
  (and
    (=>
      (not (= v1@40@01 v2@41@01))
      (and
        (not (= v1@40@01 v2@41@01))
        (forall ((r $Ref)) (!
          (=>
            (Set_in (inv@43@01 r) g@3@01)
            ($FVF.loc_next ($FVF.lookup_next (as sm@20@01  $FVF<next>) r) r))
          :pattern ((inv@43@01 r))
          :qid |quant-u-14244|))
        ($$%precondition ($SortWrappers.$FVF<next>To$Snap (as sm@45@01  $FVF<next>)) g@3@01)
        (forall ((r $Ref)) (!
          (=>
            (Set_in (inv@47@01 r) g@3@01)
            ($FVF.loc_next ($FVF.lookup_next (as sm@12@01  $FVF<next>) r) r))
          :pattern ((inv@47@01 r))
          :qid |quant-u-14247|))
        ($$%precondition ($SortWrappers.$FVF<next>To$Snap (as sm@49@01  $FVF<next>)) g@3@01)
        (=>
          (not
            (exists_path<Bool> ($$ ($SortWrappers.$FVF<next>To$Snap (as sm@49@01  $FVF<next>)) g@3@01) v1@40@01 v2@41@01))
          (and
            (not
              (exists_path<Bool> ($$ ($SortWrappers.$FVF<next>To$Snap (as sm@49@01  $FVF<next>)) g@3@01) v1@40@01 v2@41@01))
            (forall ((r $Ref)) (!
              (=>
                (Set_in (inv@51@01 r) g@3@01)
                ($FVF.loc_next ($FVF.lookup_next (as sm@53@01  $FVF<next>) r) r))
              :pattern ((inv@51@01 r))
              :qid |quant-u-14250|))
            ($$%precondition ($SortWrappers.$FVF<next>To$Snap (as sm@54@01  $FVF<next>)) g@3@01)
            (=>
              (exists_path<Bool> ($$ ($SortWrappers.$FVF<next>To$Snap (as sm@54@01  $FVF<next>)) g@3@01) v1@40@01 x@4@01)
              (and
                (exists_path<Bool> ($$ ($SortWrappers.$FVF<next>To$Snap (as sm@54@01  $FVF<next>)) g@3@01) v1@40@01 x@4@01)
                (forall ((r $Ref)) (!
                  (=>
                    (Set_in (inv@56@01 r) g@3@01)
                    ($FVF.loc_next ($FVF.lookup_next (as sm@58@01  $FVF<next>) r) r))
                  :pattern ((inv@56@01 r))
                  :qid |quant-u-14253|))
                ($$%precondition ($SortWrappers.$FVF<next>To$Snap (as sm@59@01  $FVF<next>)) g@3@01)))
            (or
              (exists_path<Bool> ($$ ($SortWrappers.$FVF<next>To$Snap (as sm@54@01  $FVF<next>)) g@3@01) v1@40@01 x@4@01)
              (not
                (exists_path<Bool> ($$ ($SortWrappers.$FVF<next>To$Snap (as sm@54@01  $FVF<next>)) g@3@01) v1@40@01 x@4@01)))))
        (or
          (not
            (exists_path<Bool> ($$ ($SortWrappers.$FVF<next>To$Snap (as sm@49@01  $FVF<next>)) g@3@01) v1@40@01 v2@41@01))
          (exists_path<Bool> ($$ ($SortWrappers.$FVF<next>To$Snap (as sm@49@01  $FVF<next>)) g@3@01) v1@40@01 v2@41@01))))
    (or (= v1@40@01 v2@41@01) (not (= v1@40@01 v2@41@01))))
  :pattern ((exists_path<Bool> ($$ ($SortWrappers.$FVF<next>To$Snap (as sm@45@01  $FVF<next>)) g@3@01) v1@40@01 v2@41@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/graphs/static/tests/lists/delete_edge1.vpr@284@28@288@117-aux|)))
(pop) ; 4
(push) ; 4
; [else-branch: 11 | y@5@01 == Null]
(assert (= y@5@01 $Ref.null))
(pop) ; 4
(pop) ; 3
; Joined path conditions
(assert (forall ((n@42@01 $Ref)) (!
  (=>
    (Set_in n@42@01 g@3@01)
    (and (= (inv@43@01 n@42@01) n@42@01) (img@44@01 n@42@01)))
  :pattern ((Set_in n@42@01 g@3@01))
  :pattern ((inv@43@01 n@42@01))
  :pattern ((img@44@01 n@42@01))
  :qid |next-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=> (and (img@44@01 r) (Set_in (inv@43@01 r) g@3@01)) (= (inv@43@01 r) r))
  :pattern ((inv@43@01 r))
  :qid |next-fctOfInv|)))
(assert (forall ((r $Ref)) (!
  (and
    (=>
      (Set_in r ($FVF.domain_next (as sm@45@01  $FVF<next>)))
      (and (Set_in (inv@43@01 r) g@3@01) (img@44@01 r)))
    (=>
      (and (Set_in (inv@43@01 r) g@3@01) (img@44@01 r))
      (Set_in r ($FVF.domain_next (as sm@45@01  $FVF<next>)))))
  :pattern ((Set_in r ($FVF.domain_next (as sm@45@01  $FVF<next>))))
  :qid |qp.fvfDomDef29|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and (and (Set_in (inv@43@01 r) g@3@01) (img@44@01 r)) (= r x@4@01))
    (=
      ($FVF.lookup_next (as sm@45@01  $FVF<next>) r)
      ($FVF.lookup_next (as sm@15@01  $FVF<next>) r)))
  :pattern (($FVF.lookup_next (as sm@45@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next (as sm@15@01  $FVF<next>) r))
  :qid |qp.fvfValDef26|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and (Set_in (inv@43@01 r) g@3@01) (img@44@01 r))
      (and
        (img@19@01 r)
        (and (Set_in (inv@18@01 r) g@3@01) (not (= (inv@18@01 r) x@4@01)))))
    (=
      ($FVF.lookup_next (as sm@45@01  $FVF<next>) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@14@01))))) r)))
  :pattern (($FVF.lookup_next (as sm@45@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@14@01))))) r))
  :qid |qp.fvfValDef27|)))
(assert (forall ((r $Ref)) (!
  (and
    ($FVF.loc_next ($FVF.lookup_next (as sm@15@01  $FVF<next>) r) r)
    ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@14@01))))) r) r))
  :pattern (($FVF.lookup_next (as sm@45@01  $FVF<next>) r))
  :qid |qp.fvfResTrgDef28|)))
(assert (forall ((n@46@01 $Ref)) (!
  (=>
    (Set_in n@46@01 g@3@01)
    (and (= (inv@47@01 n@46@01) n@46@01) (img@48@01 n@46@01)))
  :pattern ((Set_in n@46@01 g@3@01))
  :pattern ((inv@47@01 n@46@01))
  :pattern ((img@48@01 n@46@01))
  :qid |next-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=> (and (img@48@01 r) (Set_in (inv@47@01 r) g@3@01)) (= (inv@47@01 r) r))
  :pattern ((inv@47@01 r))
  :qid |next-fctOfInv|)))
(assert (forall ((r $Ref)) (!
  (and
    (=>
      (Set_in r ($FVF.domain_next (as sm@49@01  $FVF<next>)))
      (and (Set_in (inv@47@01 r) g@3@01) (img@48@01 r)))
    (=>
      (and (Set_in (inv@47@01 r) g@3@01) (img@48@01 r))
      (Set_in r ($FVF.domain_next (as sm@49@01  $FVF<next>)))))
  :pattern ((Set_in r ($FVF.domain_next (as sm@49@01  $FVF<next>))))
  :qid |qp.fvfDomDef33|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and (and (Set_in (inv@47@01 r) g@3@01) (img@48@01 r)) (= r x@4@01))
    (=
      ($FVF.lookup_next (as sm@49@01  $FVF<next>) r)
      ($FVF.lookup_next (as sm@7@01  $FVF<next>) r)))
  :pattern (($FVF.lookup_next (as sm@49@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next (as sm@7@01  $FVF<next>) r))
  :qid |qp.fvfValDef30|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and (Set_in (inv@47@01 r) g@3@01) (img@48@01 r))
      (and
        (img@11@01 r)
        (and (Set_in (inv@10@01 r) g@3@01) (not (= (inv@10@01 r) x@4@01)))))
    (=
      ($FVF.lookup_next (as sm@49@01  $FVF<next>) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@6@01))))))) r)))
  :pattern (($FVF.lookup_next (as sm@49@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@6@01))))))) r))
  :qid |qp.fvfValDef31|)))
(assert (forall ((r $Ref)) (!
  (and
    ($FVF.loc_next ($FVF.lookup_next (as sm@7@01  $FVF<next>) r) r)
    ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@6@01))))))) r) r))
  :pattern (($FVF.lookup_next (as sm@49@01  $FVF<next>) r))
  :qid |qp.fvfResTrgDef32|)))
(assert (forall ((r $Ref)) (!
  (=>
    (= r x@4@01)
    (=
      ($FVF.lookup_next (as sm@53@01  $FVF<next>) r)
      ($FVF.lookup_next (as sm@7@01  $FVF<next>) r)))
  :pattern (($FVF.lookup_next (as sm@53@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next (as sm@7@01  $FVF<next>) r))
  :qid |qp.fvfValDef34|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@11@01 r)
      (and (Set_in (inv@10@01 r) g@3@01) (not (= (inv@10@01 r) x@4@01))))
    (=
      ($FVF.lookup_next (as sm@53@01  $FVF<next>) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@6@01))))))) r)))
  :pattern (($FVF.lookup_next (as sm@53@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@6@01))))))) r))
  :qid |qp.fvfValDef35|)))
(assert (forall ((r $Ref)) (!
  (and
    ($FVF.loc_next ($FVF.lookup_next (as sm@7@01  $FVF<next>) r) r)
    ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@6@01))))))) r) r))
  :pattern (($FVF.lookup_next (as sm@53@01  $FVF<next>) r))
  :qid |qp.fvfResTrgDef36|)))
(assert (forall ((n@50@01 $Ref)) (!
  (=>
    (Set_in n@50@01 g@3@01)
    (and (= (inv@51@01 n@50@01) n@50@01) (img@52@01 n@50@01)))
  :pattern ((Set_in n@50@01 g@3@01))
  :pattern ((inv@51@01 n@50@01))
  :pattern ((img@52@01 n@50@01))
  :qid |next-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=> (and (img@52@01 r) (Set_in (inv@51@01 r) g@3@01)) (= (inv@51@01 r) r))
  :pattern ((inv@51@01 r))
  :qid |next-fctOfInv|)))
(assert (forall ((r $Ref)) (!
  (and
    (=>
      (Set_in r ($FVF.domain_next (as sm@54@01  $FVF<next>)))
      (and (Set_in (inv@51@01 r) g@3@01) (img@52@01 r)))
    (=>
      (and (Set_in (inv@51@01 r) g@3@01) (img@52@01 r))
      (Set_in r ($FVF.domain_next (as sm@54@01  $FVF<next>)))))
  :pattern ((Set_in r ($FVF.domain_next (as sm@54@01  $FVF<next>))))
  :qid |qp.fvfDomDef40|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and (and (Set_in (inv@51@01 r) g@3@01) (img@52@01 r)) (= r x@4@01))
    (=
      ($FVF.lookup_next (as sm@54@01  $FVF<next>) r)
      ($FVF.lookup_next (as sm@7@01  $FVF<next>) r)))
  :pattern (($FVF.lookup_next (as sm@54@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next (as sm@7@01  $FVF<next>) r))
  :qid |qp.fvfValDef37|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and (Set_in (inv@51@01 r) g@3@01) (img@52@01 r))
      (and
        (img@11@01 r)
        (and (Set_in (inv@10@01 r) g@3@01) (not (= (inv@10@01 r) x@4@01)))))
    (=
      ($FVF.lookup_next (as sm@54@01  $FVF<next>) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@6@01))))))) r)))
  :pattern (($FVF.lookup_next (as sm@54@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@6@01))))))) r))
  :qid |qp.fvfValDef38|)))
(assert (forall ((r $Ref)) (!
  (and
    ($FVF.loc_next ($FVF.lookup_next (as sm@7@01  $FVF<next>) r) r)
    ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@6@01))))))) r) r))
  :pattern (($FVF.lookup_next (as sm@54@01  $FVF<next>) r))
  :qid |qp.fvfResTrgDef39|)))
(assert (forall ((r $Ref)) (!
  (=>
    (= r x@4@01)
    (=
      ($FVF.lookup_next (as sm@58@01  $FVF<next>) r)
      ($FVF.lookup_next (as sm@7@01  $FVF<next>) r)))
  :pattern (($FVF.lookup_next (as sm@58@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next (as sm@7@01  $FVF<next>) r))
  :qid |qp.fvfValDef41|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@11@01 r)
      (and (Set_in (inv@10@01 r) g@3@01) (not (= (inv@10@01 r) x@4@01))))
    (=
      ($FVF.lookup_next (as sm@58@01  $FVF<next>) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@6@01))))))) r)))
  :pattern (($FVF.lookup_next (as sm@58@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@6@01))))))) r))
  :qid |qp.fvfValDef42|)))
(assert (forall ((r $Ref)) (!
  (and
    ($FVF.loc_next ($FVF.lookup_next (as sm@7@01  $FVF<next>) r) r)
    ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@6@01))))))) r) r))
  :pattern (($FVF.lookup_next (as sm@58@01  $FVF<next>) r))
  :qid |qp.fvfResTrgDef43|)))
(assert (forall ((n@55@01 $Ref)) (!
  (=>
    (Set_in n@55@01 g@3@01)
    (and (= (inv@56@01 n@55@01) n@55@01) (img@57@01 n@55@01)))
  :pattern ((Set_in n@55@01 g@3@01))
  :pattern ((inv@56@01 n@55@01))
  :pattern ((img@57@01 n@55@01))
  :qid |next-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=> (and (img@57@01 r) (Set_in (inv@56@01 r) g@3@01)) (= (inv@56@01 r) r))
  :pattern ((inv@56@01 r))
  :qid |next-fctOfInv|)))
(assert (forall ((r $Ref)) (!
  (and
    (=>
      (Set_in r ($FVF.domain_next (as sm@59@01  $FVF<next>)))
      (and (Set_in (inv@56@01 r) g@3@01) (img@57@01 r)))
    (=>
      (and (Set_in (inv@56@01 r) g@3@01) (img@57@01 r))
      (Set_in r ($FVF.domain_next (as sm@59@01  $FVF<next>)))))
  :pattern ((Set_in r ($FVF.domain_next (as sm@59@01  $FVF<next>))))
  :qid |qp.fvfDomDef47|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and (and (Set_in (inv@56@01 r) g@3@01) (img@57@01 r)) (= r x@4@01))
    (=
      ($FVF.lookup_next (as sm@59@01  $FVF<next>) r)
      ($FVF.lookup_next (as sm@7@01  $FVF<next>) r)))
  :pattern (($FVF.lookup_next (as sm@59@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next (as sm@7@01  $FVF<next>) r))
  :qid |qp.fvfValDef44|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and (Set_in (inv@56@01 r) g@3@01) (img@57@01 r))
      (and
        (img@11@01 r)
        (and (Set_in (inv@10@01 r) g@3@01) (not (= (inv@10@01 r) x@4@01)))))
    (=
      ($FVF.lookup_next (as sm@59@01  $FVF<next>) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@6@01))))))) r)))
  :pattern (($FVF.lookup_next (as sm@59@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@6@01))))))) r))
  :qid |qp.fvfValDef45|)))
(assert (forall ((r $Ref)) (!
  (and
    ($FVF.loc_next ($FVF.lookup_next (as sm@7@01  $FVF<next>) r) r)
    ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@6@01))))))) r) r))
  :pattern (($FVF.lookup_next (as sm@59@01  $FVF<next>) r))
  :qid |qp.fvfResTrgDef46|)))
(assert (=>
  (not (= y@5@01 $Ref.null))
  (and
    (not (= y@5@01 $Ref.null))
    (forall ((v1@40@01 $Ref) (v2@41@01 $Ref)) (!
      (and
        (=>
          (not (= v1@40@01 v2@41@01))
          (and
            (not (= v1@40@01 v2@41@01))
            (forall ((r $Ref)) (!
              (=>
                (Set_in (inv@43@01 r) g@3@01)
                ($FVF.loc_next ($FVF.lookup_next (as sm@20@01  $FVF<next>) r) r))
              :pattern ((inv@43@01 r))
              :qid |quant-u-14244|))
            ($$%precondition ($SortWrappers.$FVF<next>To$Snap (as sm@45@01  $FVF<next>)) g@3@01)
            (forall ((r $Ref)) (!
              (=>
                (Set_in (inv@47@01 r) g@3@01)
                ($FVF.loc_next ($FVF.lookup_next (as sm@12@01  $FVF<next>) r) r))
              :pattern ((inv@47@01 r))
              :qid |quant-u-14247|))
            ($$%precondition ($SortWrappers.$FVF<next>To$Snap (as sm@49@01  $FVF<next>)) g@3@01)
            (=>
              (not
                (exists_path<Bool> ($$ ($SortWrappers.$FVF<next>To$Snap (as sm@49@01  $FVF<next>)) g@3@01) v1@40@01 v2@41@01))
              (and
                (not
                  (exists_path<Bool> ($$ ($SortWrappers.$FVF<next>To$Snap (as sm@49@01  $FVF<next>)) g@3@01) v1@40@01 v2@41@01))
                (forall ((r $Ref)) (!
                  (=>
                    (Set_in (inv@51@01 r) g@3@01)
                    ($FVF.loc_next ($FVF.lookup_next (as sm@53@01  $FVF<next>) r) r))
                  :pattern ((inv@51@01 r))
                  :qid |quant-u-14250|))
                ($$%precondition ($SortWrappers.$FVF<next>To$Snap (as sm@54@01  $FVF<next>)) g@3@01)
                (=>
                  (exists_path<Bool> ($$ ($SortWrappers.$FVF<next>To$Snap (as sm@54@01  $FVF<next>)) g@3@01) v1@40@01 x@4@01)
                  (and
                    (exists_path<Bool> ($$ ($SortWrappers.$FVF<next>To$Snap (as sm@54@01  $FVF<next>)) g@3@01) v1@40@01 x@4@01)
                    (forall ((r $Ref)) (!
                      (=>
                        (Set_in (inv@56@01 r) g@3@01)
                        ($FVF.loc_next ($FVF.lookup_next (as sm@58@01  $FVF<next>) r) r))
                      :pattern ((inv@56@01 r))
                      :qid |quant-u-14253|))
                    ($$%precondition ($SortWrappers.$FVF<next>To$Snap (as sm@59@01  $FVF<next>)) g@3@01)))
                (or
                  (exists_path<Bool> ($$ ($SortWrappers.$FVF<next>To$Snap (as sm@54@01  $FVF<next>)) g@3@01) v1@40@01 x@4@01)
                  (not
                    (exists_path<Bool> ($$ ($SortWrappers.$FVF<next>To$Snap (as sm@54@01  $FVF<next>)) g@3@01) v1@40@01 x@4@01)))))
            (or
              (not
                (exists_path<Bool> ($$ ($SortWrappers.$FVF<next>To$Snap (as sm@49@01  $FVF<next>)) g@3@01) v1@40@01 v2@41@01))
              (exists_path<Bool> ($$ ($SortWrappers.$FVF<next>To$Snap (as sm@49@01  $FVF<next>)) g@3@01) v1@40@01 v2@41@01))))
        (or (= v1@40@01 v2@41@01) (not (= v1@40@01 v2@41@01))))
      :pattern ((exists_path<Bool> ($$ ($SortWrappers.$FVF<next>To$Snap (as sm@45@01  $FVF<next>)) g@3@01) v1@40@01 v2@41@01))
      :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/graphs/static/tests/lists/delete_edge1.vpr@284@28@288@117-aux|)))))
; Joined path conditions
(assert (=>
  (not (= y@5@01 $Ref.null))
  (forall ((v1@40@01 $Ref) (v2@41@01 $Ref)) (!
    (=>
      (not (= v1@40@01 v2@41@01))
      (=
        (exists_path<Bool> ($$ ($SortWrappers.$FVF<next>To$Snap (as sm@45@01  $FVF<next>)) g@3@01) v1@40@01 v2@41@01)
        (or
          (exists_path<Bool> ($$ ($SortWrappers.$FVF<next>To$Snap (as sm@49@01  $FVF<next>)) g@3@01) v1@40@01 v2@41@01)
          (and
            (exists_path<Bool> ($$ ($SortWrappers.$FVF<next>To$Snap (as sm@54@01  $FVF<next>)) g@3@01) v1@40@01 x@4@01)
            (exists_path<Bool> ($$ ($SortWrappers.$FVF<next>To$Snap (as sm@59@01  $FVF<next>)) g@3@01) y@5@01 v2@41@01)))))
    :pattern ((exists_path<Bool> ($$ ($SortWrappers.$FVF<next>To$Snap (as sm@45@01  $FVF<next>)) g@3@01) v1@40@01 v2@41@01))
    :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/graphs/static/tests/lists/delete_edge1.vpr@284@28@288@117|))))
(pop) ; 2
(push) ; 2
; [exec]
; inhale false
(pop) ; 2
(pop) ; 1
; ---------- unlink ----------
(declare-const g@60@01 Set<$Ref>)
(declare-const x@61@01 $Ref)
(declare-const g@62@01 Set<$Ref>)
(declare-const x@63@01 $Ref)
(push) ; 1
(declare-const $t@64@01 $Snap)
(assert (= $t@64@01 ($Snap.combine ($Snap.first $t@64@01) ($Snap.second $t@64@01))))
(assert (= ($Snap.first $t@64@01) $Snap.unit))
; [eval] (x in g)
(assert (Set_in x@63@01 g@62@01))
(assert (=
  ($Snap.second $t@64@01)
  ($Snap.combine
    ($Snap.first ($Snap.second $t@64@01))
    ($Snap.second ($Snap.second $t@64@01)))))
(assert (= ($Snap.first ($Snap.second $t@64@01)) $Snap.unit))
; [eval] !((null in g))
; [eval] (null in g)
(assert (not (Set_in $Ref.null g@62@01)))
(assert (=
  ($Snap.second ($Snap.second $t@64@01))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second $t@64@01)))
    ($Snap.second ($Snap.second ($Snap.second $t@64@01))))))
(assert (= ($Snap.first ($Snap.second ($Snap.second $t@64@01))) $Snap.unit))
; [eval] (x in g)
(assert (=
  ($Snap.second ($Snap.second ($Snap.second $t@64@01)))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@64@01))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@64@01)))))))
(declare-const sm@65@01 $FVF<next>)
; Definitional axioms for singleton-SM's value
(assert (=
  ($FVF.lookup_next (as sm@65@01  $FVF<next>) x@63@01)
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@64@01)))))))
(assert (not (= x@63@01 $Ref.null)))
(declare-const sm@66@01 $FVF<next>)
; Definitional axioms for snapshot map values
(assert (forall ((r $Ref)) (!
  (=>
    (= r x@63@01)
    (=
      ($FVF.lookup_next (as sm@66@01  $FVF<next>) r)
      ($FVF.lookup_next (as sm@65@01  $FVF<next>) r)))
  :pattern (($FVF.lookup_next (as sm@66@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next (as sm@65@01  $FVF<next>) r))
  :qid |qp.fvfValDef48|)))
(assert (forall ((r $Ref)) (!
  ($FVF.loc_next ($FVF.lookup_next (as sm@65@01  $FVF<next>) r) r)
  :pattern (($FVF.lookup_next (as sm@66@01  $FVF<next>) r))
  :qid |qp.fvfResTrgDef49|)))
(assert ($FVF.loc_next ($FVF.lookup_next (as sm@66@01  $FVF<next>) x@63@01) x@63@01))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@64@01))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@64@01)))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@64@01))))))))
(declare-const n@67@01 $Ref)
(push) ; 2
; [eval] (n in g) && n != x
; [eval] (n in g)
(push) ; 3
; [then-branch: 15 | !(n@67@01 in g@62@01) | live]
; [else-branch: 15 | n@67@01 in g@62@01 | live]
(push) ; 4
; [then-branch: 15 | !(n@67@01 in g@62@01)]
(assert (not (Set_in n@67@01 g@62@01)))
(pop) ; 4
(push) ; 4
; [else-branch: 15 | n@67@01 in g@62@01]
(assert (Set_in n@67@01 g@62@01))
; [eval] n != x
(pop) ; 4
(pop) ; 3
; Joined path conditions
; Joined path conditions
(assert (or (Set_in n@67@01 g@62@01) (not (Set_in n@67@01 g@62@01))))
(assert (and (Set_in n@67@01 g@62@01) (not (= n@67@01 x@63@01))))
; Definitional axioms for snapshot map values
(pop) ; 2
(declare-fun inv@68@01 ($Ref) $Ref)
(declare-fun img@69@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
(assert (forall ((n@67@01 $Ref)) (!
  (=>
    (and (Set_in n@67@01 g@62@01) (not (= n@67@01 x@63@01)))
    (or (Set_in n@67@01 g@62@01) (not (Set_in n@67@01 g@62@01))))
  :pattern (($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@64@01)))))) n@67@01) n@67@01))
  :qid |next-aux|)))
; Check receiver injectivity
(push) ; 2
(assert (not (forall ((n1@67@01 $Ref) (n2@67@01 $Ref)) (!
  (=>
    (and
      (and (Set_in n1@67@01 g@62@01) (not (= n1@67@01 x@63@01)))
      (and (Set_in n2@67@01 g@62@01) (not (= n2@67@01 x@63@01)))
      (= n1@67@01 n2@67@01))
    (= n1@67@01 n2@67@01))
  
  :qid |next-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 2
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((n@67@01 $Ref)) (!
  (=>
    (and (Set_in n@67@01 g@62@01) (not (= n@67@01 x@63@01)))
    (and (= (inv@68@01 n@67@01) n@67@01) (img@69@01 n@67@01)))
  :pattern (($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@64@01)))))) n@67@01) n@67@01))
  :qid |quant-u-14256|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@69@01 r)
      (and (Set_in (inv@68@01 r) g@62@01) (not (= (inv@68@01 r) x@63@01))))
    (= (inv@68@01 r) r))
  :pattern ((inv@68@01 r))
  :qid |next-fctOfInv|)))
; Permissions are non-negative
; Field permissions are at most one
; Permission implies non-null receiver
(assert (forall ((n@67@01 $Ref)) (!
  (=>
    (and (Set_in n@67@01 g@62@01) (not (= n@67@01 x@63@01)))
    (not (= n@67@01 $Ref.null)))
  :pattern (($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@64@01)))))) n@67@01) n@67@01))
  :qid |next-permImpliesNonNull|)))
(declare-const sm@70@01 $FVF<next>)
; Definitional axioms for snapshot map values
(assert (forall ((r $Ref)) (!
  (=>
    (= r x@63@01)
    (=
      ($FVF.lookup_next (as sm@70@01  $FVF<next>) r)
      ($FVF.lookup_next (as sm@65@01  $FVF<next>) r)))
  :pattern (($FVF.lookup_next (as sm@70@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next (as sm@65@01  $FVF<next>) r))
  :qid |qp.fvfValDef50|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@69@01 r)
      (and (Set_in (inv@68@01 r) g@62@01) (not (= (inv@68@01 r) x@63@01))))
    (=
      ($FVF.lookup_next (as sm@70@01  $FVF<next>) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@64@01)))))) r)))
  :pattern (($FVF.lookup_next (as sm@70@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@64@01)))))) r))
  :qid |qp.fvfValDef51|)))
(assert (forall ((r $Ref)) (!
  (and
    ($FVF.loc_next ($FVF.lookup_next (as sm@65@01  $FVF<next>) r) r)
    ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@64@01)))))) r) r))
  :pattern (($FVF.lookup_next (as sm@70@01  $FVF<next>) r))
  :qid |qp.fvfResTrgDef52|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and (Set_in (inv@68@01 r) g@62@01) (not (= (inv@68@01 r) x@63@01)))
    ($FVF.loc_next ($FVF.lookup_next (as sm@70@01  $FVF<next>) r) r))
  :pattern ((inv@68@01 r))
  :qid |quant-u-14257|)))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@64@01)))))
  $Snap.unit))
; [eval] (forall n$0: Ref :: { (n$0.next in g) } { (n$0 in g), n$0.next } (n$0 in g) && n$0.next != null ==> (n$0.next in g))
(declare-const n$0@71@01 $Ref)
(push) ; 2
; [eval] (n$0 in g) && n$0.next != null ==> (n$0.next in g)
; [eval] (n$0 in g) && n$0.next != null
; [eval] (n$0 in g)
(push) ; 3
; [then-branch: 16 | !(n$0@71@01 in g@62@01) | live]
; [else-branch: 16 | n$0@71@01 in g@62@01 | live]
(push) ; 4
; [then-branch: 16 | !(n$0@71@01 in g@62@01)]
(assert (not (Set_in n$0@71@01 g@62@01)))
(pop) ; 4
(push) ; 4
; [else-branch: 16 | n$0@71@01 in g@62@01]
(assert (Set_in n$0@71@01 g@62@01))
; [eval] n$0.next != null
(assert (and
  (forall ((r $Ref)) (!
    (=>
      (= r x@63@01)
      (=
        ($FVF.lookup_next (as sm@70@01  $FVF<next>) r)
        ($FVF.lookup_next (as sm@65@01  $FVF<next>) r)))
    :pattern (($FVF.lookup_next (as sm@70@01  $FVF<next>) r))
    :pattern (($FVF.lookup_next (as sm@65@01  $FVF<next>) r))
    :qid |qp.fvfValDef50|))
  (forall ((r $Ref)) (!
    (=>
      (and
        (img@69@01 r)
        (and (Set_in (inv@68@01 r) g@62@01) (not (= (inv@68@01 r) x@63@01))))
      (=
        ($FVF.lookup_next (as sm@70@01  $FVF<next>) r)
        ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@64@01)))))) r)))
    :pattern (($FVF.lookup_next (as sm@70@01  $FVF<next>) r))
    :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@64@01)))))) r))
    :qid |qp.fvfValDef51|))
  (forall ((r $Ref)) (!
    (and
      ($FVF.loc_next ($FVF.lookup_next (as sm@65@01  $FVF<next>) r) r)
      ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@64@01)))))) r) r))
    :pattern (($FVF.lookup_next (as sm@70@01  $FVF<next>) r))
    :qid |qp.fvfResTrgDef52|))))
(assert ($FVF.loc_next ($FVF.lookup_next (as sm@70@01  $FVF<next>) n$0@71@01) n$0@71@01))
(push) ; 5
(assert (not (<
  $Perm.No
  (+
    (ite (= n$0@71@01 x@63@01) $Perm.Write $Perm.No)
    (ite
      (and
        (img@69@01 n$0@71@01)
        (and
          (Set_in (inv@68@01 n$0@71@01) g@62@01)
          (not (= (inv@68@01 n$0@71@01) x@63@01))))
      (/ (to_real 1) (to_real 2))
      $Perm.No)))))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(pop) ; 4
(pop) ; 3
; Joined path conditions
; Joined path conditions
(assert (forall ((r $Ref)) (!
  (=>
    (= r x@63@01)
    (=
      ($FVF.lookup_next (as sm@70@01  $FVF<next>) r)
      ($FVF.lookup_next (as sm@65@01  $FVF<next>) r)))
  :pattern (($FVF.lookup_next (as sm@70@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next (as sm@65@01  $FVF<next>) r))
  :qid |qp.fvfValDef50|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@69@01 r)
      (and (Set_in (inv@68@01 r) g@62@01) (not (= (inv@68@01 r) x@63@01))))
    (=
      ($FVF.lookup_next (as sm@70@01  $FVF<next>) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@64@01)))))) r)))
  :pattern (($FVF.lookup_next (as sm@70@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@64@01)))))) r))
  :qid |qp.fvfValDef51|)))
(assert (forall ((r $Ref)) (!
  (and
    ($FVF.loc_next ($FVF.lookup_next (as sm@65@01  $FVF<next>) r) r)
    ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@64@01)))))) r) r))
  :pattern (($FVF.lookup_next (as sm@70@01  $FVF<next>) r))
  :qid |qp.fvfResTrgDef52|)))
(assert (=>
  (Set_in n$0@71@01 g@62@01)
  (and
    (Set_in n$0@71@01 g@62@01)
    ($FVF.loc_next ($FVF.lookup_next (as sm@70@01  $FVF<next>) n$0@71@01) n$0@71@01))))
(assert (or (Set_in n$0@71@01 g@62@01) (not (Set_in n$0@71@01 g@62@01))))
(push) ; 3
; [then-branch: 17 | n$0@71@01 in g@62@01 && Lookup(next, sm@70@01, n$0@71@01) != Null | live]
; [else-branch: 17 | !(n$0@71@01 in g@62@01 && Lookup(next, sm@70@01, n$0@71@01) != Null) | live]
(push) ; 4
; [then-branch: 17 | n$0@71@01 in g@62@01 && Lookup(next, sm@70@01, n$0@71@01) != Null]
(assert (and
  (Set_in n$0@71@01 g@62@01)
  (not (= ($FVF.lookup_next (as sm@70@01  $FVF<next>) n$0@71@01) $Ref.null))))
; [eval] (n$0.next in g)
(assert (and
  (forall ((r $Ref)) (!
    (=>
      (= r x@63@01)
      (=
        ($FVF.lookup_next (as sm@70@01  $FVF<next>) r)
        ($FVF.lookup_next (as sm@65@01  $FVF<next>) r)))
    :pattern (($FVF.lookup_next (as sm@70@01  $FVF<next>) r))
    :pattern (($FVF.lookup_next (as sm@65@01  $FVF<next>) r))
    :qid |qp.fvfValDef50|))
  (forall ((r $Ref)) (!
    (=>
      (and
        (img@69@01 r)
        (and (Set_in (inv@68@01 r) g@62@01) (not (= (inv@68@01 r) x@63@01))))
      (=
        ($FVF.lookup_next (as sm@70@01  $FVF<next>) r)
        ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@64@01)))))) r)))
    :pattern (($FVF.lookup_next (as sm@70@01  $FVF<next>) r))
    :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@64@01)))))) r))
    :qid |qp.fvfValDef51|))
  (forall ((r $Ref)) (!
    (and
      ($FVF.loc_next ($FVF.lookup_next (as sm@65@01  $FVF<next>) r) r)
      ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@64@01)))))) r) r))
    :pattern (($FVF.lookup_next (as sm@70@01  $FVF<next>) r))
    :qid |qp.fvfResTrgDef52|))))
(assert ($FVF.loc_next ($FVF.lookup_next (as sm@70@01  $FVF<next>) n$0@71@01) n$0@71@01))
(push) ; 5
(assert (not (<
  $Perm.No
  (+
    (ite (= n$0@71@01 x@63@01) $Perm.Write $Perm.No)
    (ite
      (and
        (img@69@01 n$0@71@01)
        (and
          (Set_in (inv@68@01 n$0@71@01) g@62@01)
          (not (= (inv@68@01 n$0@71@01) x@63@01))))
      (/ (to_real 1) (to_real 2))
      $Perm.No)))))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(pop) ; 4
(push) ; 4
; [else-branch: 17 | !(n$0@71@01 in g@62@01 && Lookup(next, sm@70@01, n$0@71@01) != Null)]
(assert (not
  (and
    (Set_in n$0@71@01 g@62@01)
    (not (= ($FVF.lookup_next (as sm@70@01  $FVF<next>) n$0@71@01) $Ref.null)))))
(pop) ; 4
(pop) ; 3
; Joined path conditions
(assert (forall ((r $Ref)) (!
  (=>
    (= r x@63@01)
    (=
      ($FVF.lookup_next (as sm@70@01  $FVF<next>) r)
      ($FVF.lookup_next (as sm@65@01  $FVF<next>) r)))
  :pattern (($FVF.lookup_next (as sm@70@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next (as sm@65@01  $FVF<next>) r))
  :qid |qp.fvfValDef50|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@69@01 r)
      (and (Set_in (inv@68@01 r) g@62@01) (not (= (inv@68@01 r) x@63@01))))
    (=
      ($FVF.lookup_next (as sm@70@01  $FVF<next>) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@64@01)))))) r)))
  :pattern (($FVF.lookup_next (as sm@70@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@64@01)))))) r))
  :qid |qp.fvfValDef51|)))
(assert (forall ((r $Ref)) (!
  (and
    ($FVF.loc_next ($FVF.lookup_next (as sm@65@01  $FVF<next>) r) r)
    ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@64@01)))))) r) r))
  :pattern (($FVF.lookup_next (as sm@70@01  $FVF<next>) r))
  :qid |qp.fvfResTrgDef52|)))
(assert (=>
  (and
    (Set_in n$0@71@01 g@62@01)
    (not (= ($FVF.lookup_next (as sm@70@01  $FVF<next>) n$0@71@01) $Ref.null)))
  (and
    (Set_in n$0@71@01 g@62@01)
    (not (= ($FVF.lookup_next (as sm@70@01  $FVF<next>) n$0@71@01) $Ref.null))
    ($FVF.loc_next ($FVF.lookup_next (as sm@70@01  $FVF<next>) n$0@71@01) n$0@71@01))))
; Joined path conditions
(assert (or
  (not
    (and
      (Set_in n$0@71@01 g@62@01)
      (not (= ($FVF.lookup_next (as sm@70@01  $FVF<next>) n$0@71@01) $Ref.null))))
  (and
    (Set_in n$0@71@01 g@62@01)
    (not (= ($FVF.lookup_next (as sm@70@01  $FVF<next>) n$0@71@01) $Ref.null)))))
; Definitional axioms for snapshot map values
(pop) ; 2
; Nested auxiliary terms: globals (aux)
(assert (forall ((r $Ref)) (!
  (=>
    (= r x@63@01)
    (=
      ($FVF.lookup_next (as sm@70@01  $FVF<next>) r)
      ($FVF.lookup_next (as sm@65@01  $FVF<next>) r)))
  :pattern (($FVF.lookup_next (as sm@70@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next (as sm@65@01  $FVF<next>) r))
  :qid |qp.fvfValDef50|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@69@01 r)
      (and (Set_in (inv@68@01 r) g@62@01) (not (= (inv@68@01 r) x@63@01))))
    (=
      ($FVF.lookup_next (as sm@70@01  $FVF<next>) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@64@01)))))) r)))
  :pattern (($FVF.lookup_next (as sm@70@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@64@01)))))) r))
  :qid |qp.fvfValDef51|)))
(assert (forall ((r $Ref)) (!
  (and
    ($FVF.loc_next ($FVF.lookup_next (as sm@65@01  $FVF<next>) r) r)
    ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@64@01)))))) r) r))
  :pattern (($FVF.lookup_next (as sm@70@01  $FVF<next>) r))
  :qid |qp.fvfResTrgDef52|)))
; Nested auxiliary terms: non-globals (aux)
(assert (forall ((n$0@71@01 $Ref)) (!
  (and
    (=>
      (Set_in n$0@71@01 g@62@01)
      (and
        (Set_in n$0@71@01 g@62@01)
        ($FVF.loc_next ($FVF.lookup_next (as sm@70@01  $FVF<next>) n$0@71@01) n$0@71@01)))
    (or (Set_in n$0@71@01 g@62@01) (not (Set_in n$0@71@01 g@62@01)))
    (=>
      (and
        (Set_in n$0@71@01 g@62@01)
        (not
          (= ($FVF.lookup_next (as sm@70@01  $FVF<next>) n$0@71@01) $Ref.null)))
      (and
        (Set_in n$0@71@01 g@62@01)
        (not
          (= ($FVF.lookup_next (as sm@70@01  $FVF<next>) n$0@71@01) $Ref.null))
        ($FVF.loc_next ($FVF.lookup_next (as sm@70@01  $FVF<next>) n$0@71@01) n$0@71@01)))
    (or
      (not
        (and
          (Set_in n$0@71@01 g@62@01)
          (not
            (= ($FVF.lookup_next (as sm@70@01  $FVF<next>) n$0@71@01) $Ref.null))))
      (and
        (Set_in n$0@71@01 g@62@01)
        (not
          (= ($FVF.lookup_next (as sm@70@01  $FVF<next>) n$0@71@01) $Ref.null)))))
  :pattern ((Set_in ($FVF.lookup_next (as sm@70@01  $FVF<next>) n$0@71@01) g@62@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/graphs/static/tests/lists/delete_edge1.vpr@309@14@309@34-aux|)))
(assert (forall ((n$0@71@01 $Ref)) (!
  (and
    (=>
      (Set_in n$0@71@01 g@62@01)
      (and
        (Set_in n$0@71@01 g@62@01)
        ($FVF.loc_next ($FVF.lookup_next (as sm@70@01  $FVF<next>) n$0@71@01) n$0@71@01)))
    (or (Set_in n$0@71@01 g@62@01) (not (Set_in n$0@71@01 g@62@01)))
    (=>
      (and
        (Set_in n$0@71@01 g@62@01)
        (not
          (= ($FVF.lookup_next (as sm@70@01  $FVF<next>) n$0@71@01) $Ref.null)))
      (and
        (Set_in n$0@71@01 g@62@01)
        (not
          (= ($FVF.lookup_next (as sm@70@01  $FVF<next>) n$0@71@01) $Ref.null))
        ($FVF.loc_next ($FVF.lookup_next (as sm@70@01  $FVF<next>) n$0@71@01) n$0@71@01)))
    (or
      (not
        (and
          (Set_in n$0@71@01 g@62@01)
          (not
            (= ($FVF.lookup_next (as sm@70@01  $FVF<next>) n$0@71@01) $Ref.null))))
      (and
        (Set_in n$0@71@01 g@62@01)
        (not
          (= ($FVF.lookup_next (as sm@70@01  $FVF<next>) n$0@71@01) $Ref.null)))))
  :pattern ((Set_in n$0@71@01 g@62@01) ($FVF.loc_next ($FVF.lookup_next (as sm@70@01  $FVF<next>) n$0@71@01) n$0@71@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/graphs/static/tests/lists/delete_edge1.vpr@309@14@309@34-aux|)))
(assert (forall ((n$0@71@01 $Ref)) (!
  (=>
    (and
      (Set_in n$0@71@01 g@62@01)
      (not (= ($FVF.lookup_next (as sm@70@01  $FVF<next>) n$0@71@01) $Ref.null)))
    (Set_in ($FVF.lookup_next (as sm@70@01  $FVF<next>) n$0@71@01) g@62@01))
  :pattern ((Set_in ($FVF.lookup_next (as sm@70@01  $FVF<next>) n$0@71@01) g@62@01))
  :pattern ((Set_in n$0@71@01 g@62@01) ($FVF.loc_next ($FVF.lookup_next (as sm@70@01  $FVF<next>) n$0@71@01) n$0@71@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/graphs/static/tests/lists/delete_edge1.vpr@309@14@309@34|)))
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
(set-option :timeout 0)
(push) ; 2
(declare-const $t@72@01 $Snap)
(assert (= $t@72@01 ($Snap.combine ($Snap.first $t@72@01) ($Snap.second $t@72@01))))
(assert (= ($Snap.first $t@72@01) $Snap.unit))
; [eval] !((null in g))
; [eval] (null in g)
(assert (=
  ($Snap.second $t@72@01)
  ($Snap.combine
    ($Snap.first ($Snap.second $t@72@01))
    ($Snap.second ($Snap.second $t@72@01)))))
(assert (= ($Snap.first ($Snap.second $t@72@01)) $Snap.unit))
; [eval] (x in g)
(assert (=
  ($Snap.second ($Snap.second $t@72@01))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second $t@72@01)))
    ($Snap.second ($Snap.second ($Snap.second $t@72@01))))))
(declare-const sm@73@01 $FVF<next>)
; Definitional axioms for singleton-SM's value
(assert (=
  ($FVF.lookup_next (as sm@73@01  $FVF<next>) x@63@01)
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second $t@72@01))))))
(declare-const sm@74@01 $FVF<next>)
; Definitional axioms for snapshot map values
(assert (forall ((r $Ref)) (!
  (=>
    (= r x@63@01)
    (=
      ($FVF.lookup_next (as sm@74@01  $FVF<next>) r)
      ($FVF.lookup_next (as sm@73@01  $FVF<next>) r)))
  :pattern (($FVF.lookup_next (as sm@74@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next (as sm@73@01  $FVF<next>) r))
  :qid |qp.fvfValDef53|)))
(assert (forall ((r $Ref)) (!
  ($FVF.loc_next ($FVF.lookup_next (as sm@73@01  $FVF<next>) r) r)
  :pattern (($FVF.lookup_next (as sm@74@01  $FVF<next>) r))
  :qid |qp.fvfResTrgDef54|)))
(assert ($FVF.loc_next ($FVF.lookup_next (as sm@74@01  $FVF<next>) x@63@01) x@63@01))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second $t@72@01)))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@72@01))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@72@01)))))))
(declare-const n$1@75@01 $Ref)
(push) ; 3
; [eval] (n$1 in g) && n$1 != x
; [eval] (n$1 in g)
(push) ; 4
; [then-branch: 18 | !(n$1@75@01 in g@62@01) | live]
; [else-branch: 18 | n$1@75@01 in g@62@01 | live]
(push) ; 5
; [then-branch: 18 | !(n$1@75@01 in g@62@01)]
(assert (not (Set_in n$1@75@01 g@62@01)))
(pop) ; 5
(push) ; 5
; [else-branch: 18 | n$1@75@01 in g@62@01]
(assert (Set_in n$1@75@01 g@62@01))
; [eval] n$1 != x
(pop) ; 5
(pop) ; 4
; Joined path conditions
; Joined path conditions
(assert (or (Set_in n$1@75@01 g@62@01) (not (Set_in n$1@75@01 g@62@01))))
(assert (and (Set_in n$1@75@01 g@62@01) (not (= n$1@75@01 x@63@01))))
; Definitional axioms for snapshot map values
(pop) ; 3
(declare-fun inv@76@01 ($Ref) $Ref)
(declare-fun img@77@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
(assert (forall ((n$1@75@01 $Ref)) (!
  (=>
    (and (Set_in n$1@75@01 g@62@01) (not (= n$1@75@01 x@63@01)))
    (or (Set_in n$1@75@01 g@62@01) (not (Set_in n$1@75@01 g@62@01))))
  :pattern (($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@72@01))))) n$1@75@01) n$1@75@01))
  :qid |next-aux|)))
; Check receiver injectivity
(push) ; 3
(assert (not (forall ((n$11@75@01 $Ref) (n$12@75@01 $Ref)) (!
  (=>
    (and
      (and (Set_in n$11@75@01 g@62@01) (not (= n$11@75@01 x@63@01)))
      (and (Set_in n$12@75@01 g@62@01) (not (= n$12@75@01 x@63@01)))
      (= n$11@75@01 n$12@75@01))
    (= n$11@75@01 n$12@75@01))
  
  :qid |next-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((n$1@75@01 $Ref)) (!
  (=>
    (and (Set_in n$1@75@01 g@62@01) (not (= n$1@75@01 x@63@01)))
    (and (= (inv@76@01 n$1@75@01) n$1@75@01) (img@77@01 n$1@75@01)))
  :pattern (($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@72@01))))) n$1@75@01) n$1@75@01))
  :qid |quant-u-14259|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@77@01 r)
      (and (Set_in (inv@76@01 r) g@62@01) (not (= (inv@76@01 r) x@63@01))))
    (= (inv@76@01 r) r))
  :pattern ((inv@76@01 r))
  :qid |next-fctOfInv|)))
; Permissions are non-negative
; Field permissions are at most one
; Permission implies non-null receiver
(assert (forall ((n$1@75@01 $Ref)) (!
  (=>
    (and (Set_in n$1@75@01 g@62@01) (not (= n$1@75@01 x@63@01)))
    (not (= n$1@75@01 $Ref.null)))
  :pattern (($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@72@01))))) n$1@75@01) n$1@75@01))
  :qid |next-permImpliesNonNull|)))
(declare-const sm@78@01 $FVF<next>)
; Definitional axioms for snapshot map values
(assert (forall ((r $Ref)) (!
  (=>
    (= r x@63@01)
    (=
      ($FVF.lookup_next (as sm@78@01  $FVF<next>) r)
      ($FVF.lookup_next (as sm@73@01  $FVF<next>) r)))
  :pattern (($FVF.lookup_next (as sm@78@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next (as sm@73@01  $FVF<next>) r))
  :qid |qp.fvfValDef55|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@77@01 r)
      (and (Set_in (inv@76@01 r) g@62@01) (not (= (inv@76@01 r) x@63@01))))
    (=
      ($FVF.lookup_next (as sm@78@01  $FVF<next>) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@72@01))))) r)))
  :pattern (($FVF.lookup_next (as sm@78@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@72@01))))) r))
  :qid |qp.fvfValDef56|)))
(assert (forall ((r $Ref)) (!
  (and
    ($FVF.loc_next ($FVF.lookup_next (as sm@73@01  $FVF<next>) r) r)
    ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@72@01))))) r) r))
  :pattern (($FVF.lookup_next (as sm@78@01  $FVF<next>) r))
  :qid |qp.fvfResTrgDef57|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and (Set_in (inv@76@01 r) g@62@01) (not (= (inv@76@01 r) x@63@01)))
    ($FVF.loc_next ($FVF.lookup_next (as sm@78@01  $FVF<next>) r) r))
  :pattern ((inv@76@01 r))
  :qid |quant-u-14260|)))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@72@01))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@72@01)))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@72@01))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@72@01)))))
  $Snap.unit))
; [eval] (forall n$2: Ref :: { (n$2.next in g) } { (n$2 in g), n$2.next } (n$2 in g) && n$2.next != null ==> (n$2.next in g))
(declare-const n$2@79@01 $Ref)
(push) ; 3
; [eval] (n$2 in g) && n$2.next != null ==> (n$2.next in g)
; [eval] (n$2 in g) && n$2.next != null
; [eval] (n$2 in g)
(push) ; 4
; [then-branch: 19 | !(n$2@79@01 in g@62@01) | live]
; [else-branch: 19 | n$2@79@01 in g@62@01 | live]
(push) ; 5
; [then-branch: 19 | !(n$2@79@01 in g@62@01)]
(assert (not (Set_in n$2@79@01 g@62@01)))
(pop) ; 5
(push) ; 5
; [else-branch: 19 | n$2@79@01 in g@62@01]
(assert (Set_in n$2@79@01 g@62@01))
; [eval] n$2.next != null
(assert (and
  (forall ((r $Ref)) (!
    (=>
      (= r x@63@01)
      (=
        ($FVF.lookup_next (as sm@78@01  $FVF<next>) r)
        ($FVF.lookup_next (as sm@73@01  $FVF<next>) r)))
    :pattern (($FVF.lookup_next (as sm@78@01  $FVF<next>) r))
    :pattern (($FVF.lookup_next (as sm@73@01  $FVF<next>) r))
    :qid |qp.fvfValDef55|))
  (forall ((r $Ref)) (!
    (=>
      (and
        (img@77@01 r)
        (and (Set_in (inv@76@01 r) g@62@01) (not (= (inv@76@01 r) x@63@01))))
      (=
        ($FVF.lookup_next (as sm@78@01  $FVF<next>) r)
        ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@72@01))))) r)))
    :pattern (($FVF.lookup_next (as sm@78@01  $FVF<next>) r))
    :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@72@01))))) r))
    :qid |qp.fvfValDef56|))
  (forall ((r $Ref)) (!
    (and
      ($FVF.loc_next ($FVF.lookup_next (as sm@73@01  $FVF<next>) r) r)
      ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@72@01))))) r) r))
    :pattern (($FVF.lookup_next (as sm@78@01  $FVF<next>) r))
    :qid |qp.fvfResTrgDef57|))))
(assert ($FVF.loc_next ($FVF.lookup_next (as sm@78@01  $FVF<next>) n$2@79@01) n$2@79@01))
(push) ; 6
(assert (not (<
  $Perm.No
  (+
    (ite (= n$2@79@01 x@63@01) $Perm.Write $Perm.No)
    (ite
      (and
        (img@77@01 n$2@79@01)
        (and
          (Set_in (inv@76@01 n$2@79@01) g@62@01)
          (not (= (inv@76@01 n$2@79@01) x@63@01))))
      (/ (to_real 1) (to_real 2))
      $Perm.No)))))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(pop) ; 5
(pop) ; 4
; Joined path conditions
; Joined path conditions
(assert (forall ((r $Ref)) (!
  (=>
    (= r x@63@01)
    (=
      ($FVF.lookup_next (as sm@78@01  $FVF<next>) r)
      ($FVF.lookup_next (as sm@73@01  $FVF<next>) r)))
  :pattern (($FVF.lookup_next (as sm@78@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next (as sm@73@01  $FVF<next>) r))
  :qid |qp.fvfValDef55|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@77@01 r)
      (and (Set_in (inv@76@01 r) g@62@01) (not (= (inv@76@01 r) x@63@01))))
    (=
      ($FVF.lookup_next (as sm@78@01  $FVF<next>) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@72@01))))) r)))
  :pattern (($FVF.lookup_next (as sm@78@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@72@01))))) r))
  :qid |qp.fvfValDef56|)))
(assert (forall ((r $Ref)) (!
  (and
    ($FVF.loc_next ($FVF.lookup_next (as sm@73@01  $FVF<next>) r) r)
    ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@72@01))))) r) r))
  :pattern (($FVF.lookup_next (as sm@78@01  $FVF<next>) r))
  :qid |qp.fvfResTrgDef57|)))
(assert (=>
  (Set_in n$2@79@01 g@62@01)
  (and
    (Set_in n$2@79@01 g@62@01)
    ($FVF.loc_next ($FVF.lookup_next (as sm@78@01  $FVF<next>) n$2@79@01) n$2@79@01))))
(assert (or (Set_in n$2@79@01 g@62@01) (not (Set_in n$2@79@01 g@62@01))))
(push) ; 4
; [then-branch: 20 | n$2@79@01 in g@62@01 && Lookup(next, sm@78@01, n$2@79@01) != Null | live]
; [else-branch: 20 | !(n$2@79@01 in g@62@01 && Lookup(next, sm@78@01, n$2@79@01) != Null) | live]
(push) ; 5
; [then-branch: 20 | n$2@79@01 in g@62@01 && Lookup(next, sm@78@01, n$2@79@01) != Null]
(assert (and
  (Set_in n$2@79@01 g@62@01)
  (not (= ($FVF.lookup_next (as sm@78@01  $FVF<next>) n$2@79@01) $Ref.null))))
; [eval] (n$2.next in g)
(assert (and
  (forall ((r $Ref)) (!
    (=>
      (= r x@63@01)
      (=
        ($FVF.lookup_next (as sm@78@01  $FVF<next>) r)
        ($FVF.lookup_next (as sm@73@01  $FVF<next>) r)))
    :pattern (($FVF.lookup_next (as sm@78@01  $FVF<next>) r))
    :pattern (($FVF.lookup_next (as sm@73@01  $FVF<next>) r))
    :qid |qp.fvfValDef55|))
  (forall ((r $Ref)) (!
    (=>
      (and
        (img@77@01 r)
        (and (Set_in (inv@76@01 r) g@62@01) (not (= (inv@76@01 r) x@63@01))))
      (=
        ($FVF.lookup_next (as sm@78@01  $FVF<next>) r)
        ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@72@01))))) r)))
    :pattern (($FVF.lookup_next (as sm@78@01  $FVF<next>) r))
    :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@72@01))))) r))
    :qid |qp.fvfValDef56|))
  (forall ((r $Ref)) (!
    (and
      ($FVF.loc_next ($FVF.lookup_next (as sm@73@01  $FVF<next>) r) r)
      ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@72@01))))) r) r))
    :pattern (($FVF.lookup_next (as sm@78@01  $FVF<next>) r))
    :qid |qp.fvfResTrgDef57|))))
(assert ($FVF.loc_next ($FVF.lookup_next (as sm@78@01  $FVF<next>) n$2@79@01) n$2@79@01))
(push) ; 6
(assert (not (<
  $Perm.No
  (+
    (ite (= n$2@79@01 x@63@01) $Perm.Write $Perm.No)
    (ite
      (and
        (img@77@01 n$2@79@01)
        (and
          (Set_in (inv@76@01 n$2@79@01) g@62@01)
          (not (= (inv@76@01 n$2@79@01) x@63@01))))
      (/ (to_real 1) (to_real 2))
      $Perm.No)))))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(pop) ; 5
(push) ; 5
; [else-branch: 20 | !(n$2@79@01 in g@62@01 && Lookup(next, sm@78@01, n$2@79@01) != Null)]
(assert (not
  (and
    (Set_in n$2@79@01 g@62@01)
    (not (= ($FVF.lookup_next (as sm@78@01  $FVF<next>) n$2@79@01) $Ref.null)))))
(pop) ; 5
(pop) ; 4
; Joined path conditions
(assert (forall ((r $Ref)) (!
  (=>
    (= r x@63@01)
    (=
      ($FVF.lookup_next (as sm@78@01  $FVF<next>) r)
      ($FVF.lookup_next (as sm@73@01  $FVF<next>) r)))
  :pattern (($FVF.lookup_next (as sm@78@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next (as sm@73@01  $FVF<next>) r))
  :qid |qp.fvfValDef55|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@77@01 r)
      (and (Set_in (inv@76@01 r) g@62@01) (not (= (inv@76@01 r) x@63@01))))
    (=
      ($FVF.lookup_next (as sm@78@01  $FVF<next>) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@72@01))))) r)))
  :pattern (($FVF.lookup_next (as sm@78@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@72@01))))) r))
  :qid |qp.fvfValDef56|)))
(assert (forall ((r $Ref)) (!
  (and
    ($FVF.loc_next ($FVF.lookup_next (as sm@73@01  $FVF<next>) r) r)
    ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@72@01))))) r) r))
  :pattern (($FVF.lookup_next (as sm@78@01  $FVF<next>) r))
  :qid |qp.fvfResTrgDef57|)))
(assert (=>
  (and
    (Set_in n$2@79@01 g@62@01)
    (not (= ($FVF.lookup_next (as sm@78@01  $FVF<next>) n$2@79@01) $Ref.null)))
  (and
    (Set_in n$2@79@01 g@62@01)
    (not (= ($FVF.lookup_next (as sm@78@01  $FVF<next>) n$2@79@01) $Ref.null))
    ($FVF.loc_next ($FVF.lookup_next (as sm@78@01  $FVF<next>) n$2@79@01) n$2@79@01))))
; Joined path conditions
(assert (or
  (not
    (and
      (Set_in n$2@79@01 g@62@01)
      (not (= ($FVF.lookup_next (as sm@78@01  $FVF<next>) n$2@79@01) $Ref.null))))
  (and
    (Set_in n$2@79@01 g@62@01)
    (not (= ($FVF.lookup_next (as sm@78@01  $FVF<next>) n$2@79@01) $Ref.null)))))
; Definitional axioms for snapshot map values
(pop) ; 3
; Nested auxiliary terms: globals (aux)
(assert (forall ((r $Ref)) (!
  (=>
    (= r x@63@01)
    (=
      ($FVF.lookup_next (as sm@78@01  $FVF<next>) r)
      ($FVF.lookup_next (as sm@73@01  $FVF<next>) r)))
  :pattern (($FVF.lookup_next (as sm@78@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next (as sm@73@01  $FVF<next>) r))
  :qid |qp.fvfValDef55|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@77@01 r)
      (and (Set_in (inv@76@01 r) g@62@01) (not (= (inv@76@01 r) x@63@01))))
    (=
      ($FVF.lookup_next (as sm@78@01  $FVF<next>) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@72@01))))) r)))
  :pattern (($FVF.lookup_next (as sm@78@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@72@01))))) r))
  :qid |qp.fvfValDef56|)))
(assert (forall ((r $Ref)) (!
  (and
    ($FVF.loc_next ($FVF.lookup_next (as sm@73@01  $FVF<next>) r) r)
    ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@72@01))))) r) r))
  :pattern (($FVF.lookup_next (as sm@78@01  $FVF<next>) r))
  :qid |qp.fvfResTrgDef57|)))
; Nested auxiliary terms: non-globals (aux)
(assert (forall ((n$2@79@01 $Ref)) (!
  (and
    (=>
      (Set_in n$2@79@01 g@62@01)
      (and
        (Set_in n$2@79@01 g@62@01)
        ($FVF.loc_next ($FVF.lookup_next (as sm@78@01  $FVF<next>) n$2@79@01) n$2@79@01)))
    (or (Set_in n$2@79@01 g@62@01) (not (Set_in n$2@79@01 g@62@01)))
    (=>
      (and
        (Set_in n$2@79@01 g@62@01)
        (not
          (= ($FVF.lookup_next (as sm@78@01  $FVF<next>) n$2@79@01) $Ref.null)))
      (and
        (Set_in n$2@79@01 g@62@01)
        (not
          (= ($FVF.lookup_next (as sm@78@01  $FVF<next>) n$2@79@01) $Ref.null))
        ($FVF.loc_next ($FVF.lookup_next (as sm@78@01  $FVF<next>) n$2@79@01) n$2@79@01)))
    (or
      (not
        (and
          (Set_in n$2@79@01 g@62@01)
          (not
            (= ($FVF.lookup_next (as sm@78@01  $FVF<next>) n$2@79@01) $Ref.null))))
      (and
        (Set_in n$2@79@01 g@62@01)
        (not
          (= ($FVF.lookup_next (as sm@78@01  $FVF<next>) n$2@79@01) $Ref.null)))))
  :pattern ((Set_in ($FVF.lookup_next (as sm@78@01  $FVF<next>) n$2@79@01) g@62@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/graphs/static/tests/lists/delete_edge1.vpr@310@13@310@33-aux|)))
(assert (forall ((n$2@79@01 $Ref)) (!
  (and
    (=>
      (Set_in n$2@79@01 g@62@01)
      (and
        (Set_in n$2@79@01 g@62@01)
        ($FVF.loc_next ($FVF.lookup_next (as sm@78@01  $FVF<next>) n$2@79@01) n$2@79@01)))
    (or (Set_in n$2@79@01 g@62@01) (not (Set_in n$2@79@01 g@62@01)))
    (=>
      (and
        (Set_in n$2@79@01 g@62@01)
        (not
          (= ($FVF.lookup_next (as sm@78@01  $FVF<next>) n$2@79@01) $Ref.null)))
      (and
        (Set_in n$2@79@01 g@62@01)
        (not
          (= ($FVF.lookup_next (as sm@78@01  $FVF<next>) n$2@79@01) $Ref.null))
        ($FVF.loc_next ($FVF.lookup_next (as sm@78@01  $FVF<next>) n$2@79@01) n$2@79@01)))
    (or
      (not
        (and
          (Set_in n$2@79@01 g@62@01)
          (not
            (= ($FVF.lookup_next (as sm@78@01  $FVF<next>) n$2@79@01) $Ref.null))))
      (and
        (Set_in n$2@79@01 g@62@01)
        (not
          (= ($FVF.lookup_next (as sm@78@01  $FVF<next>) n$2@79@01) $Ref.null)))))
  :pattern ((Set_in n$2@79@01 g@62@01) ($FVF.loc_next ($FVF.lookup_next (as sm@78@01  $FVF<next>) n$2@79@01) n$2@79@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/graphs/static/tests/lists/delete_edge1.vpr@310@13@310@33-aux|)))
(assert (forall ((n$2@79@01 $Ref)) (!
  (=>
    (and
      (Set_in n$2@79@01 g@62@01)
      (not (= ($FVF.lookup_next (as sm@78@01  $FVF<next>) n$2@79@01) $Ref.null)))
    (Set_in ($FVF.lookup_next (as sm@78@01  $FVF<next>) n$2@79@01) g@62@01))
  :pattern ((Set_in ($FVF.lookup_next (as sm@78@01  $FVF<next>) n$2@79@01) g@62@01))
  :pattern ((Set_in n$2@79@01 g@62@01) ($FVF.loc_next ($FVF.lookup_next (as sm@78@01  $FVF<next>) n$2@79@01) n$2@79@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/graphs/static/tests/lists/delete_edge1.vpr@310@13@310@33|)))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@72@01)))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@72@01))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@72@01)))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@72@01))))))
  $Snap.unit))
; [eval] x.next == null
(assert (and
  (forall ((r $Ref)) (!
    (=>
      (= r x@63@01)
      (=
        ($FVF.lookup_next (as sm@78@01  $FVF<next>) r)
        ($FVF.lookup_next (as sm@73@01  $FVF<next>) r)))
    :pattern (($FVF.lookup_next (as sm@78@01  $FVF<next>) r))
    :pattern (($FVF.lookup_next (as sm@73@01  $FVF<next>) r))
    :qid |qp.fvfValDef55|))
  (forall ((r $Ref)) (!
    (=>
      (and
        (img@77@01 r)
        (and (Set_in (inv@76@01 r) g@62@01) (not (= (inv@76@01 r) x@63@01))))
      (=
        ($FVF.lookup_next (as sm@78@01  $FVF<next>) r)
        ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@72@01))))) r)))
    :pattern (($FVF.lookup_next (as sm@78@01  $FVF<next>) r))
    :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@72@01))))) r))
    :qid |qp.fvfValDef56|))
  (forall ((r $Ref)) (!
    (and
      ($FVF.loc_next ($FVF.lookup_next (as sm@73@01  $FVF<next>) r) r)
      ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@72@01))))) r) r))
    :pattern (($FVF.lookup_next (as sm@78@01  $FVF<next>) r))
    :qid |qp.fvfResTrgDef57|))))
(assert ($FVF.loc_next ($FVF.lookup_next (as sm@78@01  $FVF<next>) x@63@01) x@63@01))
(push) ; 3
(assert (not (<
  $Perm.No
  (+
    $Perm.Write
    (ite
      (and
        (img@77@01 x@63@01)
        (and
          (Set_in (inv@76@01 x@63@01) g@62@01)
          (not (= (inv@76@01 x@63@01) x@63@01))))
      (/ (to_real 1) (to_real 2))
      $Perm.No)))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(assert (= ($FVF.lookup_next (as sm@78@01  $FVF<next>) x@63@01) $Ref.null))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@72@01))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@72@01)))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@72@01))))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@72@01)))))))
  $Snap.unit))
; [eval] old(x.next) == null ==> $$(g) == old($$(g))
; [eval] old(x.next) == null
; [eval] old(x.next)
(assert (and
  (forall ((r $Ref)) (!
    (=>
      (= r x@63@01)
      (=
        ($FVF.lookup_next (as sm@70@01  $FVF<next>) r)
        ($FVF.lookup_next (as sm@65@01  $FVF<next>) r)))
    :pattern (($FVF.lookup_next (as sm@70@01  $FVF<next>) r))
    :pattern (($FVF.lookup_next (as sm@65@01  $FVF<next>) r))
    :qid |qp.fvfValDef50|))
  (forall ((r $Ref)) (!
    (=>
      (and
        (img@69@01 r)
        (and (Set_in (inv@68@01 r) g@62@01) (not (= (inv@68@01 r) x@63@01))))
      (=
        ($FVF.lookup_next (as sm@70@01  $FVF<next>) r)
        ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@64@01)))))) r)))
    :pattern (($FVF.lookup_next (as sm@70@01  $FVF<next>) r))
    :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@64@01)))))) r))
    :qid |qp.fvfValDef51|))
  (forall ((r $Ref)) (!
    (and
      ($FVF.loc_next ($FVF.lookup_next (as sm@65@01  $FVF<next>) r) r)
      ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@64@01)))))) r) r))
    :pattern (($FVF.lookup_next (as sm@70@01  $FVF<next>) r))
    :qid |qp.fvfResTrgDef52|))))
(assert ($FVF.loc_next ($FVF.lookup_next (as sm@70@01  $FVF<next>) x@63@01) x@63@01))
(push) ; 3
(assert (not (<
  $Perm.No
  (+
    $Perm.Write
    (ite
      (and
        (img@69@01 x@63@01)
        (and
          (Set_in (inv@68@01 x@63@01) g@62@01)
          (not (= (inv@68@01 x@63@01) x@63@01))))
      (/ (to_real 1) (to_real 2))
      $Perm.No)))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(push) ; 3
(push) ; 4
(set-option :timeout 10)
(assert (not (not (= ($FVF.lookup_next (as sm@70@01  $FVF<next>) x@63@01) $Ref.null))))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not (= ($FVF.lookup_next (as sm@70@01  $FVF<next>) x@63@01) $Ref.null)))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; [then-branch: 21 | Lookup(next, sm@70@01, x@63@01) == Null | live]
; [else-branch: 21 | Lookup(next, sm@70@01, x@63@01) != Null | live]
(set-option :timeout 0)
(push) ; 4
; [then-branch: 21 | Lookup(next, sm@70@01, x@63@01) == Null]
(assert (= ($FVF.lookup_next (as sm@70@01  $FVF<next>) x@63@01) $Ref.null))
; [eval] $$(g) == old($$(g))
; [eval] $$(g)
(push) ; 5
(declare-const n@80@01 $Ref)
(push) ; 6
; [eval] (n in refs)
(assert (Set_in n@80@01 g@62@01))
(pop) ; 6
(declare-fun inv@81@01 ($Ref) $Ref)
(declare-fun img@82@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
; Definitional axioms for snapshot map domain
; Definitional axioms for snapshot map values
; Check receiver injectivity
(push) ; 6
(assert (not (forall ((n1@80@01 $Ref) (n2@80@01 $Ref)) (!
  (=>
    (and
      (and
        (Set_in n1@80@01 g@62@01)
        ($FVF.loc_next ($FVF.lookup_next (as sm@78@01  $FVF<next>) n1@80@01) n1@80@01))
      (and
        (Set_in n2@80@01 g@62@01)
        ($FVF.loc_next ($FVF.lookup_next (as sm@78@01  $FVF<next>) n2@80@01) n2@80@01))
      (= n1@80@01 n2@80@01))
    (= n1@80@01 n2@80@01))
  
  :qid |next-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((n@80@01 $Ref)) (!
  (=>
    (Set_in n@80@01 g@62@01)
    (and (= (inv@81@01 n@80@01) n@80@01) (img@82@01 n@80@01)))
  :pattern ((Set_in n@80@01 g@62@01))
  :pattern ((inv@81@01 n@80@01))
  :pattern ((img@82@01 n@80@01))
  :qid |next-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=> (and (img@82@01 r) (Set_in (inv@81@01 r) g@62@01)) (= (inv@81@01 r) r))
  :pattern ((inv@81@01 r))
  :qid |next-fctOfInv|)))
(assert (forall ((r $Ref)) (!
  (=>
    (Set_in (inv@81@01 r) g@62@01)
    ($FVF.loc_next ($FVF.lookup_next (as sm@78@01  $FVF<next>) r) r))
  :pattern ((inv@81@01 r))
  :qid |quant-u-14262|)))
(push) ; 6
(assert (not (forall ((r $Ref)) (!
  (=>
    (and (Set_in (inv@81@01 r) g@62@01) (img@82@01 r) (= r (inv@81@01 r)))
    (>
      (+
        (ite
          (and
            (img@77@01 r)
            (and (Set_in (inv@76@01 r) g@62@01) (not (= (inv@76@01 r) x@63@01))))
          (/ (to_real 1) (to_real 2))
          $Perm.No)
        (ite (= r x@63@01) $Perm.Write $Perm.No))
      $Perm.No))
  
  :qid |quant-u-14263|))))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(declare-const sm@83@01 $FVF<next>)
; Definitional axioms for snapshot map domain
(assert (forall ((r $Ref)) (!
  (and
    (=>
      (Set_in r ($FVF.domain_next (as sm@83@01  $FVF<next>)))
      (and (Set_in (inv@81@01 r) g@62@01) (img@82@01 r)))
    (=>
      (and (Set_in (inv@81@01 r) g@62@01) (img@82@01 r))
      (Set_in r ($FVF.domain_next (as sm@83@01  $FVF<next>)))))
  :pattern ((Set_in r ($FVF.domain_next (as sm@83@01  $FVF<next>))))
  :qid |qp.fvfDomDef61|)))
; Definitional axioms for snapshot map values
(assert (forall ((r $Ref)) (!
  (=>
    (and (and (Set_in (inv@81@01 r) g@62@01) (img@82@01 r)) (= r x@63@01))
    (=
      ($FVF.lookup_next (as sm@83@01  $FVF<next>) r)
      ($FVF.lookup_next (as sm@73@01  $FVF<next>) r)))
  :pattern (($FVF.lookup_next (as sm@83@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next (as sm@73@01  $FVF<next>) r))
  :qid |qp.fvfValDef58|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and (Set_in (inv@81@01 r) g@62@01) (img@82@01 r))
      (and
        (img@77@01 r)
        (and (Set_in (inv@76@01 r) g@62@01) (not (= (inv@76@01 r) x@63@01)))))
    (=
      ($FVF.lookup_next (as sm@83@01  $FVF<next>) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@72@01))))) r)))
  :pattern (($FVF.lookup_next (as sm@83@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@72@01))))) r))
  :qid |qp.fvfValDef59|)))
(assert (forall ((r $Ref)) (!
  (and
    ($FVF.loc_next ($FVF.lookup_next (as sm@73@01  $FVF<next>) r) r)
    ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@72@01))))) r) r))
  :pattern (($FVF.lookup_next (as sm@83@01  $FVF<next>) r))
  :qid |qp.fvfResTrgDef60|)))
(assert ($$%precondition ($SortWrappers.$FVF<next>To$Snap (as sm@83@01  $FVF<next>)) g@62@01))
(pop) ; 5
; Joined path conditions
(assert (forall ((n@80@01 $Ref)) (!
  (=>
    (Set_in n@80@01 g@62@01)
    (and (= (inv@81@01 n@80@01) n@80@01) (img@82@01 n@80@01)))
  :pattern ((Set_in n@80@01 g@62@01))
  :pattern ((inv@81@01 n@80@01))
  :pattern ((img@82@01 n@80@01))
  :qid |next-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=> (and (img@82@01 r) (Set_in (inv@81@01 r) g@62@01)) (= (inv@81@01 r) r))
  :pattern ((inv@81@01 r))
  :qid |next-fctOfInv|)))
(assert (forall ((r $Ref)) (!
  (and
    (=>
      (Set_in r ($FVF.domain_next (as sm@83@01  $FVF<next>)))
      (and (Set_in (inv@81@01 r) g@62@01) (img@82@01 r)))
    (=>
      (and (Set_in (inv@81@01 r) g@62@01) (img@82@01 r))
      (Set_in r ($FVF.domain_next (as sm@83@01  $FVF<next>)))))
  :pattern ((Set_in r ($FVF.domain_next (as sm@83@01  $FVF<next>))))
  :qid |qp.fvfDomDef61|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and (and (Set_in (inv@81@01 r) g@62@01) (img@82@01 r)) (= r x@63@01))
    (=
      ($FVF.lookup_next (as sm@83@01  $FVF<next>) r)
      ($FVF.lookup_next (as sm@73@01  $FVF<next>) r)))
  :pattern (($FVF.lookup_next (as sm@83@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next (as sm@73@01  $FVF<next>) r))
  :qid |qp.fvfValDef58|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and (Set_in (inv@81@01 r) g@62@01) (img@82@01 r))
      (and
        (img@77@01 r)
        (and (Set_in (inv@76@01 r) g@62@01) (not (= (inv@76@01 r) x@63@01)))))
    (=
      ($FVF.lookup_next (as sm@83@01  $FVF<next>) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@72@01))))) r)))
  :pattern (($FVF.lookup_next (as sm@83@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@72@01))))) r))
  :qid |qp.fvfValDef59|)))
(assert (forall ((r $Ref)) (!
  (and
    ($FVF.loc_next ($FVF.lookup_next (as sm@73@01  $FVF<next>) r) r)
    ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@72@01))))) r) r))
  :pattern (($FVF.lookup_next (as sm@83@01  $FVF<next>) r))
  :qid |qp.fvfResTrgDef60|)))
(assert (and
  (forall ((r $Ref)) (!
    (=>
      (Set_in (inv@81@01 r) g@62@01)
      ($FVF.loc_next ($FVF.lookup_next (as sm@78@01  $FVF<next>) r) r))
    :pattern ((inv@81@01 r))
    :qid |quant-u-14262|))
  ($$%precondition ($SortWrappers.$FVF<next>To$Snap (as sm@83@01  $FVF<next>)) g@62@01)))
; [eval] old($$(g))
; [eval] $$(g)
(push) ; 5
(declare-const n@84@01 $Ref)
(push) ; 6
; [eval] (n in refs)
(assert (Set_in n@84@01 g@62@01))
(pop) ; 6
(declare-fun inv@85@01 ($Ref) $Ref)
(declare-fun img@86@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
; Definitional axioms for snapshot map domain
; Definitional axioms for snapshot map values
; Check receiver injectivity
(push) ; 6
(assert (not (forall ((n1@84@01 $Ref) (n2@84@01 $Ref)) (!
  (=>
    (and
      (and
        (Set_in n1@84@01 g@62@01)
        ($FVF.loc_next ($FVF.lookup_next (as sm@70@01  $FVF<next>) n1@84@01) n1@84@01))
      (and
        (Set_in n2@84@01 g@62@01)
        ($FVF.loc_next ($FVF.lookup_next (as sm@70@01  $FVF<next>) n2@84@01) n2@84@01))
      (= n1@84@01 n2@84@01))
    (= n1@84@01 n2@84@01))
  
  :qid |next-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((n@84@01 $Ref)) (!
  (=>
    (Set_in n@84@01 g@62@01)
    (and (= (inv@85@01 n@84@01) n@84@01) (img@86@01 n@84@01)))
  :pattern ((Set_in n@84@01 g@62@01))
  :pattern ((inv@85@01 n@84@01))
  :pattern ((img@86@01 n@84@01))
  :qid |next-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=> (and (img@86@01 r) (Set_in (inv@85@01 r) g@62@01)) (= (inv@85@01 r) r))
  :pattern ((inv@85@01 r))
  :qid |next-fctOfInv|)))
(assert (forall ((r $Ref)) (!
  (=>
    (Set_in (inv@85@01 r) g@62@01)
    ($FVF.loc_next ($FVF.lookup_next (as sm@70@01  $FVF<next>) r) r))
  :pattern ((inv@85@01 r))
  :qid |quant-u-14265|)))
(push) ; 6
(assert (not (forall ((r $Ref)) (!
  (=>
    (and (Set_in (inv@85@01 r) g@62@01) (img@86@01 r) (= r (inv@85@01 r)))
    (>
      (+
        (ite
          (and
            (img@69@01 r)
            (and (Set_in (inv@68@01 r) g@62@01) (not (= (inv@68@01 r) x@63@01))))
          (/ (to_real 1) (to_real 2))
          $Perm.No)
        (ite (= r x@63@01) $Perm.Write $Perm.No))
      $Perm.No))
  
  :qid |quant-u-14266|))))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(declare-const sm@87@01 $FVF<next>)
; Definitional axioms for snapshot map domain
(assert (forall ((r $Ref)) (!
  (and
    (=>
      (Set_in r ($FVF.domain_next (as sm@87@01  $FVF<next>)))
      (and (Set_in (inv@85@01 r) g@62@01) (img@86@01 r)))
    (=>
      (and (Set_in (inv@85@01 r) g@62@01) (img@86@01 r))
      (Set_in r ($FVF.domain_next (as sm@87@01  $FVF<next>)))))
  :pattern ((Set_in r ($FVF.domain_next (as sm@87@01  $FVF<next>))))
  :qid |qp.fvfDomDef65|)))
; Definitional axioms for snapshot map values
(assert (forall ((r $Ref)) (!
  (=>
    (and (and (Set_in (inv@85@01 r) g@62@01) (img@86@01 r)) (= r x@63@01))
    (=
      ($FVF.lookup_next (as sm@87@01  $FVF<next>) r)
      ($FVF.lookup_next (as sm@65@01  $FVF<next>) r)))
  :pattern (($FVF.lookup_next (as sm@87@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next (as sm@65@01  $FVF<next>) r))
  :qid |qp.fvfValDef62|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and (Set_in (inv@85@01 r) g@62@01) (img@86@01 r))
      (and
        (img@69@01 r)
        (and (Set_in (inv@68@01 r) g@62@01) (not (= (inv@68@01 r) x@63@01)))))
    (=
      ($FVF.lookup_next (as sm@87@01  $FVF<next>) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@64@01)))))) r)))
  :pattern (($FVF.lookup_next (as sm@87@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@64@01)))))) r))
  :qid |qp.fvfValDef63|)))
(assert (forall ((r $Ref)) (!
  (and
    ($FVF.loc_next ($FVF.lookup_next (as sm@65@01  $FVF<next>) r) r)
    ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@64@01)))))) r) r))
  :pattern (($FVF.lookup_next (as sm@87@01  $FVF<next>) r))
  :qid |qp.fvfResTrgDef64|)))
(assert ($$%precondition ($SortWrappers.$FVF<next>To$Snap (as sm@87@01  $FVF<next>)) g@62@01))
(pop) ; 5
; Joined path conditions
(assert (forall ((n@84@01 $Ref)) (!
  (=>
    (Set_in n@84@01 g@62@01)
    (and (= (inv@85@01 n@84@01) n@84@01) (img@86@01 n@84@01)))
  :pattern ((Set_in n@84@01 g@62@01))
  :pattern ((inv@85@01 n@84@01))
  :pattern ((img@86@01 n@84@01))
  :qid |next-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=> (and (img@86@01 r) (Set_in (inv@85@01 r) g@62@01)) (= (inv@85@01 r) r))
  :pattern ((inv@85@01 r))
  :qid |next-fctOfInv|)))
(assert (forall ((r $Ref)) (!
  (and
    (=>
      (Set_in r ($FVF.domain_next (as sm@87@01  $FVF<next>)))
      (and (Set_in (inv@85@01 r) g@62@01) (img@86@01 r)))
    (=>
      (and (Set_in (inv@85@01 r) g@62@01) (img@86@01 r))
      (Set_in r ($FVF.domain_next (as sm@87@01  $FVF<next>)))))
  :pattern ((Set_in r ($FVF.domain_next (as sm@87@01  $FVF<next>))))
  :qid |qp.fvfDomDef65|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and (and (Set_in (inv@85@01 r) g@62@01) (img@86@01 r)) (= r x@63@01))
    (=
      ($FVF.lookup_next (as sm@87@01  $FVF<next>) r)
      ($FVF.lookup_next (as sm@65@01  $FVF<next>) r)))
  :pattern (($FVF.lookup_next (as sm@87@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next (as sm@65@01  $FVF<next>) r))
  :qid |qp.fvfValDef62|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and (Set_in (inv@85@01 r) g@62@01) (img@86@01 r))
      (and
        (img@69@01 r)
        (and (Set_in (inv@68@01 r) g@62@01) (not (= (inv@68@01 r) x@63@01)))))
    (=
      ($FVF.lookup_next (as sm@87@01  $FVF<next>) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@64@01)))))) r)))
  :pattern (($FVF.lookup_next (as sm@87@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@64@01)))))) r))
  :qid |qp.fvfValDef63|)))
(assert (forall ((r $Ref)) (!
  (and
    ($FVF.loc_next ($FVF.lookup_next (as sm@65@01  $FVF<next>) r) r)
    ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@64@01)))))) r) r))
  :pattern (($FVF.lookup_next (as sm@87@01  $FVF<next>) r))
  :qid |qp.fvfResTrgDef64|)))
(assert (and
  (forall ((r $Ref)) (!
    (=>
      (Set_in (inv@85@01 r) g@62@01)
      ($FVF.loc_next ($FVF.lookup_next (as sm@70@01  $FVF<next>) r) r))
    :pattern ((inv@85@01 r))
    :qid |quant-u-14265|))
  ($$%precondition ($SortWrappers.$FVF<next>To$Snap (as sm@87@01  $FVF<next>)) g@62@01)))
(pop) ; 4
(push) ; 4
; [else-branch: 21 | Lookup(next, sm@70@01, x@63@01) != Null]
(assert (not (= ($FVF.lookup_next (as sm@70@01  $FVF<next>) x@63@01) $Ref.null)))
(pop) ; 4
(pop) ; 3
; Joined path conditions
(assert (forall ((n@80@01 $Ref)) (!
  (=>
    (Set_in n@80@01 g@62@01)
    (and (= (inv@81@01 n@80@01) n@80@01) (img@82@01 n@80@01)))
  :pattern ((Set_in n@80@01 g@62@01))
  :pattern ((inv@81@01 n@80@01))
  :pattern ((img@82@01 n@80@01))
  :qid |next-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=> (and (img@82@01 r) (Set_in (inv@81@01 r) g@62@01)) (= (inv@81@01 r) r))
  :pattern ((inv@81@01 r))
  :qid |next-fctOfInv|)))
(assert (forall ((r $Ref)) (!
  (and
    (=>
      (Set_in r ($FVF.domain_next (as sm@83@01  $FVF<next>)))
      (and (Set_in (inv@81@01 r) g@62@01) (img@82@01 r)))
    (=>
      (and (Set_in (inv@81@01 r) g@62@01) (img@82@01 r))
      (Set_in r ($FVF.domain_next (as sm@83@01  $FVF<next>)))))
  :pattern ((Set_in r ($FVF.domain_next (as sm@83@01  $FVF<next>))))
  :qid |qp.fvfDomDef61|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and (and (Set_in (inv@81@01 r) g@62@01) (img@82@01 r)) (= r x@63@01))
    (=
      ($FVF.lookup_next (as sm@83@01  $FVF<next>) r)
      ($FVF.lookup_next (as sm@73@01  $FVF<next>) r)))
  :pattern (($FVF.lookup_next (as sm@83@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next (as sm@73@01  $FVF<next>) r))
  :qid |qp.fvfValDef58|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and (Set_in (inv@81@01 r) g@62@01) (img@82@01 r))
      (and
        (img@77@01 r)
        (and (Set_in (inv@76@01 r) g@62@01) (not (= (inv@76@01 r) x@63@01)))))
    (=
      ($FVF.lookup_next (as sm@83@01  $FVF<next>) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@72@01))))) r)))
  :pattern (($FVF.lookup_next (as sm@83@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@72@01))))) r))
  :qid |qp.fvfValDef59|)))
(assert (forall ((r $Ref)) (!
  (and
    ($FVF.loc_next ($FVF.lookup_next (as sm@73@01  $FVF<next>) r) r)
    ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@72@01))))) r) r))
  :pattern (($FVF.lookup_next (as sm@83@01  $FVF<next>) r))
  :qid |qp.fvfResTrgDef60|)))
(assert (forall ((n@84@01 $Ref)) (!
  (=>
    (Set_in n@84@01 g@62@01)
    (and (= (inv@85@01 n@84@01) n@84@01) (img@86@01 n@84@01)))
  :pattern ((Set_in n@84@01 g@62@01))
  :pattern ((inv@85@01 n@84@01))
  :pattern ((img@86@01 n@84@01))
  :qid |next-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=> (and (img@86@01 r) (Set_in (inv@85@01 r) g@62@01)) (= (inv@85@01 r) r))
  :pattern ((inv@85@01 r))
  :qid |next-fctOfInv|)))
(assert (forall ((r $Ref)) (!
  (and
    (=>
      (Set_in r ($FVF.domain_next (as sm@87@01  $FVF<next>)))
      (and (Set_in (inv@85@01 r) g@62@01) (img@86@01 r)))
    (=>
      (and (Set_in (inv@85@01 r) g@62@01) (img@86@01 r))
      (Set_in r ($FVF.domain_next (as sm@87@01  $FVF<next>)))))
  :pattern ((Set_in r ($FVF.domain_next (as sm@87@01  $FVF<next>))))
  :qid |qp.fvfDomDef65|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and (and (Set_in (inv@85@01 r) g@62@01) (img@86@01 r)) (= r x@63@01))
    (=
      ($FVF.lookup_next (as sm@87@01  $FVF<next>) r)
      ($FVF.lookup_next (as sm@65@01  $FVF<next>) r)))
  :pattern (($FVF.lookup_next (as sm@87@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next (as sm@65@01  $FVF<next>) r))
  :qid |qp.fvfValDef62|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and (Set_in (inv@85@01 r) g@62@01) (img@86@01 r))
      (and
        (img@69@01 r)
        (and (Set_in (inv@68@01 r) g@62@01) (not (= (inv@68@01 r) x@63@01)))))
    (=
      ($FVF.lookup_next (as sm@87@01  $FVF<next>) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@64@01)))))) r)))
  :pattern (($FVF.lookup_next (as sm@87@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@64@01)))))) r))
  :qid |qp.fvfValDef63|)))
(assert (forall ((r $Ref)) (!
  (and
    ($FVF.loc_next ($FVF.lookup_next (as sm@65@01  $FVF<next>) r) r)
    ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@64@01)))))) r) r))
  :pattern (($FVF.lookup_next (as sm@87@01  $FVF<next>) r))
  :qid |qp.fvfResTrgDef64|)))
(assert (=>
  (= ($FVF.lookup_next (as sm@70@01  $FVF<next>) x@63@01) $Ref.null)
  (and
    (= ($FVF.lookup_next (as sm@70@01  $FVF<next>) x@63@01) $Ref.null)
    (forall ((r $Ref)) (!
      (=>
        (Set_in (inv@81@01 r) g@62@01)
        ($FVF.loc_next ($FVF.lookup_next (as sm@78@01  $FVF<next>) r) r))
      :pattern ((inv@81@01 r))
      :qid |quant-u-14262|))
    ($$%precondition ($SortWrappers.$FVF<next>To$Snap (as sm@83@01  $FVF<next>)) g@62@01)
    (forall ((r $Ref)) (!
      (=>
        (Set_in (inv@85@01 r) g@62@01)
        ($FVF.loc_next ($FVF.lookup_next (as sm@70@01  $FVF<next>) r) r))
      :pattern ((inv@85@01 r))
      :qid |quant-u-14265|))
    ($$%precondition ($SortWrappers.$FVF<next>To$Snap (as sm@87@01  $FVF<next>)) g@62@01))))
; Joined path conditions
(assert (or
  (not (= ($FVF.lookup_next (as sm@70@01  $FVF<next>) x@63@01) $Ref.null))
  (= ($FVF.lookup_next (as sm@70@01  $FVF<next>) x@63@01) $Ref.null)))
(assert (=>
  (= ($FVF.lookup_next (as sm@70@01  $FVF<next>) x@63@01) $Ref.null)
  (Set_equal ($$ ($SortWrappers.$FVF<next>To$Snap (as sm@83@01  $FVF<next>)) g@62@01) ($$ ($SortWrappers.$FVF<next>To$Snap (as sm@87@01  $FVF<next>)) g@62@01))))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@72@01)))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@72@01))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@72@01)))))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@72@01))))))))
  $Snap.unit))
; [eval] old(x.next) != null ==> (forall v1: Ref, v2: Ref :: { edge($$(g), v1, v2) } edge($$(g), v1, v2) == (edge(old($$(g)), v1, v2) && !(v1 == x && v2 == old(x.next))))
; [eval] old(x.next) != null
; [eval] old(x.next)
(assert (and
  (forall ((r $Ref)) (!
    (=>
      (= r x@63@01)
      (=
        ($FVF.lookup_next (as sm@70@01  $FVF<next>) r)
        ($FVF.lookup_next (as sm@65@01  $FVF<next>) r)))
    :pattern (($FVF.lookup_next (as sm@70@01  $FVF<next>) r))
    :pattern (($FVF.lookup_next (as sm@65@01  $FVF<next>) r))
    :qid |qp.fvfValDef50|))
  (forall ((r $Ref)) (!
    (=>
      (and
        (img@69@01 r)
        (and (Set_in (inv@68@01 r) g@62@01) (not (= (inv@68@01 r) x@63@01))))
      (=
        ($FVF.lookup_next (as sm@70@01  $FVF<next>) r)
        ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@64@01)))))) r)))
    :pattern (($FVF.lookup_next (as sm@70@01  $FVF<next>) r))
    :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@64@01)))))) r))
    :qid |qp.fvfValDef51|))
  (forall ((r $Ref)) (!
    (and
      ($FVF.loc_next ($FVF.lookup_next (as sm@65@01  $FVF<next>) r) r)
      ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@64@01)))))) r) r))
    :pattern (($FVF.lookup_next (as sm@70@01  $FVF<next>) r))
    :qid |qp.fvfResTrgDef52|))))
(push) ; 3
(assert (not (<
  $Perm.No
  (+
    $Perm.Write
    (ite
      (and
        (img@69@01 x@63@01)
        (and
          (Set_in (inv@68@01 x@63@01) g@62@01)
          (not (= (inv@68@01 x@63@01) x@63@01))))
      (/ (to_real 1) (to_real 2))
      $Perm.No)))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(push) ; 3
(push) ; 4
(set-option :timeout 10)
(assert (not (= ($FVF.lookup_next (as sm@70@01  $FVF<next>) x@63@01) $Ref.null)))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not (not (= ($FVF.lookup_next (as sm@70@01  $FVF<next>) x@63@01) $Ref.null))))
(check-sat)
; unknown
(pop) ; 4
; 0.01s
; (get-info :all-statistics)
; [then-branch: 22 | Lookup(next, sm@70@01, x@63@01) != Null | live]
; [else-branch: 22 | Lookup(next, sm@70@01, x@63@01) == Null | live]
(set-option :timeout 0)
(push) ; 4
; [then-branch: 22 | Lookup(next, sm@70@01, x@63@01) != Null]
(assert (not (= ($FVF.lookup_next (as sm@70@01  $FVF<next>) x@63@01) $Ref.null)))
; [eval] (forall v1: Ref, v2: Ref :: { edge($$(g), v1, v2) } edge($$(g), v1, v2) == (edge(old($$(g)), v1, v2) && !(v1 == x && v2 == old(x.next))))
(declare-const v1@88@01 $Ref)
(declare-const v2@89@01 $Ref)
(push) ; 5
; [eval] edge($$(g), v1, v2) == (edge(old($$(g)), v1, v2) && !(v1 == x && v2 == old(x.next)))
; [eval] edge($$(g), v1, v2)
; [eval] $$(g)
(push) ; 6
(declare-const n@90@01 $Ref)
(push) ; 7
; [eval] (n in refs)
(assert (Set_in n@90@01 g@62@01))
(pop) ; 7
(declare-fun inv@91@01 ($Ref) $Ref)
(declare-fun img@92@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
; Definitional axioms for snapshot map domain
; Definitional axioms for snapshot map values
; Check receiver injectivity
(push) ; 7
(assert (not (forall ((n1@90@01 $Ref) (n2@90@01 $Ref)) (!
  (=>
    (and
      (and
        (Set_in n1@90@01 g@62@01)
        ($FVF.loc_next ($FVF.lookup_next (as sm@78@01  $FVF<next>) n1@90@01) n1@90@01))
      (and
        (Set_in n2@90@01 g@62@01)
        ($FVF.loc_next ($FVF.lookup_next (as sm@78@01  $FVF<next>) n2@90@01) n2@90@01))
      (= n1@90@01 n2@90@01))
    (= n1@90@01 n2@90@01))
  
  :qid |next-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((n@90@01 $Ref)) (!
  (=>
    (Set_in n@90@01 g@62@01)
    (and (= (inv@91@01 n@90@01) n@90@01) (img@92@01 n@90@01)))
  :pattern ((Set_in n@90@01 g@62@01))
  :pattern ((inv@91@01 n@90@01))
  :pattern ((img@92@01 n@90@01))
  :qid |next-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=> (and (img@92@01 r) (Set_in (inv@91@01 r) g@62@01)) (= (inv@91@01 r) r))
  :pattern ((inv@91@01 r))
  :qid |next-fctOfInv|)))
(assert (forall ((r $Ref)) (!
  (=>
    (Set_in (inv@91@01 r) g@62@01)
    ($FVF.loc_next ($FVF.lookup_next (as sm@78@01  $FVF<next>) r) r))
  :pattern ((inv@91@01 r))
  :qid |quant-u-14268|)))
(push) ; 7
(assert (not (forall ((r $Ref)) (!
  (=>
    (and (Set_in (inv@91@01 r) g@62@01) (img@92@01 r) (= r (inv@91@01 r)))
    (>
      (+
        (ite
          (and
            (img@77@01 r)
            (and (Set_in (inv@76@01 r) g@62@01) (not (= (inv@76@01 r) x@63@01))))
          (/ (to_real 1) (to_real 2))
          $Perm.No)
        (ite (= r x@63@01) $Perm.Write $Perm.No))
      $Perm.No))
  
  :qid |quant-u-14269|))))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(declare-const sm@93@01 $FVF<next>)
; Definitional axioms for snapshot map domain
(assert (forall ((r $Ref)) (!
  (and
    (=>
      (Set_in r ($FVF.domain_next (as sm@93@01  $FVF<next>)))
      (and (Set_in (inv@91@01 r) g@62@01) (img@92@01 r)))
    (=>
      (and (Set_in (inv@91@01 r) g@62@01) (img@92@01 r))
      (Set_in r ($FVF.domain_next (as sm@93@01  $FVF<next>)))))
  :pattern ((Set_in r ($FVF.domain_next (as sm@93@01  $FVF<next>))))
  :qid |qp.fvfDomDef69|)))
; Definitional axioms for snapshot map values
(assert (forall ((r $Ref)) (!
  (=>
    (and (and (Set_in (inv@91@01 r) g@62@01) (img@92@01 r)) (= r x@63@01))
    (=
      ($FVF.lookup_next (as sm@93@01  $FVF<next>) r)
      ($FVF.lookup_next (as sm@73@01  $FVF<next>) r)))
  :pattern (($FVF.lookup_next (as sm@93@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next (as sm@73@01  $FVF<next>) r))
  :qid |qp.fvfValDef66|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and (Set_in (inv@91@01 r) g@62@01) (img@92@01 r))
      (and
        (img@77@01 r)
        (and (Set_in (inv@76@01 r) g@62@01) (not (= (inv@76@01 r) x@63@01)))))
    (=
      ($FVF.lookup_next (as sm@93@01  $FVF<next>) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@72@01))))) r)))
  :pattern (($FVF.lookup_next (as sm@93@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@72@01))))) r))
  :qid |qp.fvfValDef67|)))
(assert (forall ((r $Ref)) (!
  (and
    ($FVF.loc_next ($FVF.lookup_next (as sm@73@01  $FVF<next>) r) r)
    ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@72@01))))) r) r))
  :pattern (($FVF.lookup_next (as sm@93@01  $FVF<next>) r))
  :qid |qp.fvfResTrgDef68|)))
(assert ($$%precondition ($SortWrappers.$FVF<next>To$Snap (as sm@93@01  $FVF<next>)) g@62@01))
(pop) ; 6
; Joined path conditions
(assert (forall ((n@90@01 $Ref)) (!
  (=>
    (Set_in n@90@01 g@62@01)
    (and (= (inv@91@01 n@90@01) n@90@01) (img@92@01 n@90@01)))
  :pattern ((Set_in n@90@01 g@62@01))
  :pattern ((inv@91@01 n@90@01))
  :pattern ((img@92@01 n@90@01))
  :qid |next-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=> (and (img@92@01 r) (Set_in (inv@91@01 r) g@62@01)) (= (inv@91@01 r) r))
  :pattern ((inv@91@01 r))
  :qid |next-fctOfInv|)))
(assert (forall ((r $Ref)) (!
  (and
    (=>
      (Set_in r ($FVF.domain_next (as sm@93@01  $FVF<next>)))
      (and (Set_in (inv@91@01 r) g@62@01) (img@92@01 r)))
    (=>
      (and (Set_in (inv@91@01 r) g@62@01) (img@92@01 r))
      (Set_in r ($FVF.domain_next (as sm@93@01  $FVF<next>)))))
  :pattern ((Set_in r ($FVF.domain_next (as sm@93@01  $FVF<next>))))
  :qid |qp.fvfDomDef69|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and (and (Set_in (inv@91@01 r) g@62@01) (img@92@01 r)) (= r x@63@01))
    (=
      ($FVF.lookup_next (as sm@93@01  $FVF<next>) r)
      ($FVF.lookup_next (as sm@73@01  $FVF<next>) r)))
  :pattern (($FVF.lookup_next (as sm@93@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next (as sm@73@01  $FVF<next>) r))
  :qid |qp.fvfValDef66|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and (Set_in (inv@91@01 r) g@62@01) (img@92@01 r))
      (and
        (img@77@01 r)
        (and (Set_in (inv@76@01 r) g@62@01) (not (= (inv@76@01 r) x@63@01)))))
    (=
      ($FVF.lookup_next (as sm@93@01  $FVF<next>) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@72@01))))) r)))
  :pattern (($FVF.lookup_next (as sm@93@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@72@01))))) r))
  :qid |qp.fvfValDef67|)))
(assert (forall ((r $Ref)) (!
  (and
    ($FVF.loc_next ($FVF.lookup_next (as sm@73@01  $FVF<next>) r) r)
    ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@72@01))))) r) r))
  :pattern (($FVF.lookup_next (as sm@93@01  $FVF<next>) r))
  :qid |qp.fvfResTrgDef68|)))
(assert (and
  (forall ((r $Ref)) (!
    (=>
      (Set_in (inv@91@01 r) g@62@01)
      ($FVF.loc_next ($FVF.lookup_next (as sm@78@01  $FVF<next>) r) r))
    :pattern ((inv@91@01 r))
    :qid |quant-u-14268|))
  ($$%precondition ($SortWrappers.$FVF<next>To$Snap (as sm@93@01  $FVF<next>)) g@62@01)))
; [eval] edge(old($$(g)), v1, v2) && !(v1 == x && v2 == old(x.next))
; [eval] edge(old($$(g)), v1, v2)
; [eval] old($$(g))
; [eval] $$(g)
(push) ; 6
(declare-const n@94@01 $Ref)
(push) ; 7
; [eval] (n in refs)
(assert (Set_in n@94@01 g@62@01))
(pop) ; 7
(declare-fun inv@95@01 ($Ref) $Ref)
(declare-fun img@96@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
; Definitional axioms for snapshot map domain
; Definitional axioms for snapshot map values
; Check receiver injectivity
(push) ; 7
(assert (not (forall ((n1@94@01 $Ref) (n2@94@01 $Ref)) (!
  (=>
    (and
      (and
        (Set_in n1@94@01 g@62@01)
        ($FVF.loc_next ($FVF.lookup_next (as sm@70@01  $FVF<next>) n1@94@01) n1@94@01))
      (and
        (Set_in n2@94@01 g@62@01)
        ($FVF.loc_next ($FVF.lookup_next (as sm@70@01  $FVF<next>) n2@94@01) n2@94@01))
      (= n1@94@01 n2@94@01))
    (= n1@94@01 n2@94@01))
  
  :qid |next-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((n@94@01 $Ref)) (!
  (=>
    (Set_in n@94@01 g@62@01)
    (and (= (inv@95@01 n@94@01) n@94@01) (img@96@01 n@94@01)))
  :pattern ((Set_in n@94@01 g@62@01))
  :pattern ((inv@95@01 n@94@01))
  :pattern ((img@96@01 n@94@01))
  :qid |next-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=> (and (img@96@01 r) (Set_in (inv@95@01 r) g@62@01)) (= (inv@95@01 r) r))
  :pattern ((inv@95@01 r))
  :qid |next-fctOfInv|)))
(assert (forall ((r $Ref)) (!
  (=>
    (Set_in (inv@95@01 r) g@62@01)
    ($FVF.loc_next ($FVF.lookup_next (as sm@70@01  $FVF<next>) r) r))
  :pattern ((inv@95@01 r))
  :qid |quant-u-14271|)))
(push) ; 7
(assert (not (forall ((r $Ref)) (!
  (=>
    (and (Set_in (inv@95@01 r) g@62@01) (img@96@01 r) (= r (inv@95@01 r)))
    (>
      (+
        (ite
          (and
            (img@69@01 r)
            (and (Set_in (inv@68@01 r) g@62@01) (not (= (inv@68@01 r) x@63@01))))
          (/ (to_real 1) (to_real 2))
          $Perm.No)
        (ite (= r x@63@01) $Perm.Write $Perm.No))
      $Perm.No))
  
  :qid |quant-u-14272|))))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(declare-const sm@97@01 $FVF<next>)
; Definitional axioms for snapshot map domain
(assert (forall ((r $Ref)) (!
  (and
    (=>
      (Set_in r ($FVF.domain_next (as sm@97@01  $FVF<next>)))
      (and (Set_in (inv@95@01 r) g@62@01) (img@96@01 r)))
    (=>
      (and (Set_in (inv@95@01 r) g@62@01) (img@96@01 r))
      (Set_in r ($FVF.domain_next (as sm@97@01  $FVF<next>)))))
  :pattern ((Set_in r ($FVF.domain_next (as sm@97@01  $FVF<next>))))
  :qid |qp.fvfDomDef73|)))
; Definitional axioms for snapshot map values
(assert (forall ((r $Ref)) (!
  (=>
    (and (and (Set_in (inv@95@01 r) g@62@01) (img@96@01 r)) (= r x@63@01))
    (=
      ($FVF.lookup_next (as sm@97@01  $FVF<next>) r)
      ($FVF.lookup_next (as sm@65@01  $FVF<next>) r)))
  :pattern (($FVF.lookup_next (as sm@97@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next (as sm@65@01  $FVF<next>) r))
  :qid |qp.fvfValDef70|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and (Set_in (inv@95@01 r) g@62@01) (img@96@01 r))
      (and
        (img@69@01 r)
        (and (Set_in (inv@68@01 r) g@62@01) (not (= (inv@68@01 r) x@63@01)))))
    (=
      ($FVF.lookup_next (as sm@97@01  $FVF<next>) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@64@01)))))) r)))
  :pattern (($FVF.lookup_next (as sm@97@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@64@01)))))) r))
  :qid |qp.fvfValDef71|)))
(assert (forall ((r $Ref)) (!
  (and
    ($FVF.loc_next ($FVF.lookup_next (as sm@65@01  $FVF<next>) r) r)
    ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@64@01)))))) r) r))
  :pattern (($FVF.lookup_next (as sm@97@01  $FVF<next>) r))
  :qid |qp.fvfResTrgDef72|)))
(assert ($$%precondition ($SortWrappers.$FVF<next>To$Snap (as sm@97@01  $FVF<next>)) g@62@01))
(pop) ; 6
; Joined path conditions
(assert (forall ((n@94@01 $Ref)) (!
  (=>
    (Set_in n@94@01 g@62@01)
    (and (= (inv@95@01 n@94@01) n@94@01) (img@96@01 n@94@01)))
  :pattern ((Set_in n@94@01 g@62@01))
  :pattern ((inv@95@01 n@94@01))
  :pattern ((img@96@01 n@94@01))
  :qid |next-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=> (and (img@96@01 r) (Set_in (inv@95@01 r) g@62@01)) (= (inv@95@01 r) r))
  :pattern ((inv@95@01 r))
  :qid |next-fctOfInv|)))
(assert (forall ((r $Ref)) (!
  (and
    (=>
      (Set_in r ($FVF.domain_next (as sm@97@01  $FVF<next>)))
      (and (Set_in (inv@95@01 r) g@62@01) (img@96@01 r)))
    (=>
      (and (Set_in (inv@95@01 r) g@62@01) (img@96@01 r))
      (Set_in r ($FVF.domain_next (as sm@97@01  $FVF<next>)))))
  :pattern ((Set_in r ($FVF.domain_next (as sm@97@01  $FVF<next>))))
  :qid |qp.fvfDomDef73|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and (and (Set_in (inv@95@01 r) g@62@01) (img@96@01 r)) (= r x@63@01))
    (=
      ($FVF.lookup_next (as sm@97@01  $FVF<next>) r)
      ($FVF.lookup_next (as sm@65@01  $FVF<next>) r)))
  :pattern (($FVF.lookup_next (as sm@97@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next (as sm@65@01  $FVF<next>) r))
  :qid |qp.fvfValDef70|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and (Set_in (inv@95@01 r) g@62@01) (img@96@01 r))
      (and
        (img@69@01 r)
        (and (Set_in (inv@68@01 r) g@62@01) (not (= (inv@68@01 r) x@63@01)))))
    (=
      ($FVF.lookup_next (as sm@97@01  $FVF<next>) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@64@01)))))) r)))
  :pattern (($FVF.lookup_next (as sm@97@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@64@01)))))) r))
  :qid |qp.fvfValDef71|)))
(assert (forall ((r $Ref)) (!
  (and
    ($FVF.loc_next ($FVF.lookup_next (as sm@65@01  $FVF<next>) r) r)
    ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@64@01)))))) r) r))
  :pattern (($FVF.lookup_next (as sm@97@01  $FVF<next>) r))
  :qid |qp.fvfResTrgDef72|)))
(assert (and
  (forall ((r $Ref)) (!
    (=>
      (Set_in (inv@95@01 r) g@62@01)
      ($FVF.loc_next ($FVF.lookup_next (as sm@70@01  $FVF<next>) r) r))
    :pattern ((inv@95@01 r))
    :qid |quant-u-14271|))
  ($$%precondition ($SortWrappers.$FVF<next>To$Snap (as sm@97@01  $FVF<next>)) g@62@01)))
(push) ; 6
; [then-branch: 23 | !(edge[Bool]($$(sm@97@01, g@62@01), v1@88@01, v2@89@01)) | live]
; [else-branch: 23 | edge[Bool]($$(sm@97@01, g@62@01), v1@88@01, v2@89@01) | live]
(push) ; 7
; [then-branch: 23 | !(edge[Bool]($$(sm@97@01, g@62@01), v1@88@01, v2@89@01))]
(assert (not
  (edge<Bool> ($$ ($SortWrappers.$FVF<next>To$Snap (as sm@97@01  $FVF<next>)) g@62@01) v1@88@01 v2@89@01)))
(pop) ; 7
(push) ; 7
; [else-branch: 23 | edge[Bool]($$(sm@97@01, g@62@01), v1@88@01, v2@89@01)]
(assert (edge<Bool> ($$ ($SortWrappers.$FVF<next>To$Snap (as sm@97@01  $FVF<next>)) g@62@01) v1@88@01 v2@89@01))
; [eval] !(v1 == x && v2 == old(x.next))
; [eval] v1 == x && v2 == old(x.next)
; [eval] v1 == x
(push) ; 8
; [then-branch: 24 | v1@88@01 != x@63@01 | live]
; [else-branch: 24 | v1@88@01 == x@63@01 | live]
(push) ; 9
; [then-branch: 24 | v1@88@01 != x@63@01]
(assert (not (= v1@88@01 x@63@01)))
(pop) ; 9
(push) ; 9
; [else-branch: 24 | v1@88@01 == x@63@01]
(assert (= v1@88@01 x@63@01))
; [eval] v2 == old(x.next)
; [eval] old(x.next)
(declare-const sm@98@01 $FVF<next>)
; Definitional axioms for snapshot map values
(assert (forall ((r $Ref)) (!
  (=>
    (= r x@63@01)
    (=
      ($FVF.lookup_next (as sm@98@01  $FVF<next>) r)
      ($FVF.lookup_next (as sm@65@01  $FVF<next>) r)))
  :pattern (($FVF.lookup_next (as sm@98@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next (as sm@65@01  $FVF<next>) r))
  :qid |qp.fvfValDef74|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@69@01 r)
      (and (Set_in (inv@68@01 r) g@62@01) (not (= (inv@68@01 r) x@63@01))))
    (=
      ($FVF.lookup_next (as sm@98@01  $FVF<next>) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@64@01)))))) r)))
  :pattern (($FVF.lookup_next (as sm@98@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@64@01)))))) r))
  :qid |qp.fvfValDef75|)))
(assert (forall ((r $Ref)) (!
  (and
    ($FVF.loc_next ($FVF.lookup_next (as sm@65@01  $FVF<next>) r) r)
    ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@64@01)))))) r) r))
  :pattern (($FVF.lookup_next (as sm@98@01  $FVF<next>) r))
  :qid |qp.fvfResTrgDef76|)))
(declare-const pm@99@01 $FPM)
(assert (forall ((r $Ref)) (!
  (=
    ($FVF.perm_next (as pm@99@01  $FPM) r)
    (+
      (ite (= r x@63@01) $Perm.Write $Perm.No)
      (ite
        (and
          (img@69@01 r)
          (and (Set_in (inv@68@01 r) g@62@01) (not (= (inv@68@01 r) x@63@01))))
        (/ (to_real 1) (to_real 2))
        $Perm.No)))
  :pattern (($FVF.perm_next (as pm@99@01  $FPM) r))
  :qid |qp.resPrmSumDef77|)))
(assert (forall ((r $Ref)) (!
  (and
    ($FVF.loc_next ($FVF.lookup_next (as sm@98@01  $FVF<next>) r) r)
    ($FVF.loc_next ($FVF.lookup_next (as sm@65@01  $FVF<next>) r) r)
    ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@64@01)))))) r) r))
  :pattern (($FVF.perm_next (as pm@99@01  $FPM) r))
  :qid |qp.resTrgDef78|)))
(assert ($FVF.loc_next ($FVF.lookup_next (as sm@98@01  $FVF<next>) x@63@01) x@63@01))
(push) ; 10
(assert (not (< $Perm.No ($FVF.perm_next (as pm@99@01  $FPM) x@63@01))))
(check-sat)
; unsat
(pop) ; 10
; 0.00s
; (get-info :all-statistics)
(pop) ; 9
(pop) ; 8
; Joined path conditions
; Joined path conditions
(assert (forall ((r $Ref)) (!
  (=>
    (= r x@63@01)
    (=
      ($FVF.lookup_next (as sm@98@01  $FVF<next>) r)
      ($FVF.lookup_next (as sm@65@01  $FVF<next>) r)))
  :pattern (($FVF.lookup_next (as sm@98@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next (as sm@65@01  $FVF<next>) r))
  :qid |qp.fvfValDef74|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@69@01 r)
      (and (Set_in (inv@68@01 r) g@62@01) (not (= (inv@68@01 r) x@63@01))))
    (=
      ($FVF.lookup_next (as sm@98@01  $FVF<next>) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@64@01)))))) r)))
  :pattern (($FVF.lookup_next (as sm@98@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@64@01)))))) r))
  :qid |qp.fvfValDef75|)))
(assert (forall ((r $Ref)) (!
  (and
    ($FVF.loc_next ($FVF.lookup_next (as sm@65@01  $FVF<next>) r) r)
    ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@64@01)))))) r) r))
  :pattern (($FVF.lookup_next (as sm@98@01  $FVF<next>) r))
  :qid |qp.fvfResTrgDef76|)))
(assert (forall ((r $Ref)) (!
  (=
    ($FVF.perm_next (as pm@99@01  $FPM) r)
    (+
      (ite (= r x@63@01) $Perm.Write $Perm.No)
      (ite
        (and
          (img@69@01 r)
          (and (Set_in (inv@68@01 r) g@62@01) (not (= (inv@68@01 r) x@63@01))))
        (/ (to_real 1) (to_real 2))
        $Perm.No)))
  :pattern (($FVF.perm_next (as pm@99@01  $FPM) r))
  :qid |qp.resPrmSumDef77|)))
(assert (forall ((r $Ref)) (!
  (and
    ($FVF.loc_next ($FVF.lookup_next (as sm@98@01  $FVF<next>) r) r)
    ($FVF.loc_next ($FVF.lookup_next (as sm@65@01  $FVF<next>) r) r)
    ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@64@01)))))) r) r))
  :pattern (($FVF.perm_next (as pm@99@01  $FPM) r))
  :qid |qp.resTrgDef78|)))
(assert (=>
  (= v1@88@01 x@63@01)
  (and
    (= v1@88@01 x@63@01)
    ($FVF.loc_next ($FVF.lookup_next (as sm@98@01  $FVF<next>) x@63@01) x@63@01))))
(assert (or (= v1@88@01 x@63@01) (not (= v1@88@01 x@63@01))))
(pop) ; 7
(pop) ; 6
; Joined path conditions
; Joined path conditions
(assert (forall ((r $Ref)) (!
  (=>
    (= r x@63@01)
    (=
      ($FVF.lookup_next (as sm@98@01  $FVF<next>) r)
      ($FVF.lookup_next (as sm@65@01  $FVF<next>) r)))
  :pattern (($FVF.lookup_next (as sm@98@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next (as sm@65@01  $FVF<next>) r))
  :qid |qp.fvfValDef74|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@69@01 r)
      (and (Set_in (inv@68@01 r) g@62@01) (not (= (inv@68@01 r) x@63@01))))
    (=
      ($FVF.lookup_next (as sm@98@01  $FVF<next>) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@64@01)))))) r)))
  :pattern (($FVF.lookup_next (as sm@98@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@64@01)))))) r))
  :qid |qp.fvfValDef75|)))
(assert (forall ((r $Ref)) (!
  (and
    ($FVF.loc_next ($FVF.lookup_next (as sm@65@01  $FVF<next>) r) r)
    ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@64@01)))))) r) r))
  :pattern (($FVF.lookup_next (as sm@98@01  $FVF<next>) r))
  :qid |qp.fvfResTrgDef76|)))
(assert (forall ((r $Ref)) (!
  (=
    ($FVF.perm_next (as pm@99@01  $FPM) r)
    (+
      (ite (= r x@63@01) $Perm.Write $Perm.No)
      (ite
        (and
          (img@69@01 r)
          (and (Set_in (inv@68@01 r) g@62@01) (not (= (inv@68@01 r) x@63@01))))
        (/ (to_real 1) (to_real 2))
        $Perm.No)))
  :pattern (($FVF.perm_next (as pm@99@01  $FPM) r))
  :qid |qp.resPrmSumDef77|)))
(assert (forall ((r $Ref)) (!
  (and
    ($FVF.loc_next ($FVF.lookup_next (as sm@98@01  $FVF<next>) r) r)
    ($FVF.loc_next ($FVF.lookup_next (as sm@65@01  $FVF<next>) r) r)
    ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@64@01)))))) r) r))
  :pattern (($FVF.perm_next (as pm@99@01  $FPM) r))
  :qid |qp.resTrgDef78|)))
(assert (=>
  (edge<Bool> ($$ ($SortWrappers.$FVF<next>To$Snap (as sm@97@01  $FVF<next>)) g@62@01) v1@88@01 v2@89@01)
  (and
    (edge<Bool> ($$ ($SortWrappers.$FVF<next>To$Snap (as sm@97@01  $FVF<next>)) g@62@01) v1@88@01 v2@89@01)
    (=>
      (= v1@88@01 x@63@01)
      (and
        (= v1@88@01 x@63@01)
        ($FVF.loc_next ($FVF.lookup_next (as sm@98@01  $FVF<next>) x@63@01) x@63@01)))
    (or (= v1@88@01 x@63@01) (not (= v1@88@01 x@63@01))))))
(assert (or
  (edge<Bool> ($$ ($SortWrappers.$FVF<next>To$Snap (as sm@97@01  $FVF<next>)) g@62@01) v1@88@01 v2@89@01)
  (not
    (edge<Bool> ($$ ($SortWrappers.$FVF<next>To$Snap (as sm@97@01  $FVF<next>)) g@62@01) v1@88@01 v2@89@01))))
(pop) ; 5
; Nested auxiliary terms: globals (aux)
(assert (forall ((n@90@01 $Ref)) (!
  (=>
    (Set_in n@90@01 g@62@01)
    (and (= (inv@91@01 n@90@01) n@90@01) (img@92@01 n@90@01)))
  :pattern ((Set_in n@90@01 g@62@01))
  :pattern ((inv@91@01 n@90@01))
  :pattern ((img@92@01 n@90@01))
  :qid |next-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=> (and (img@92@01 r) (Set_in (inv@91@01 r) g@62@01)) (= (inv@91@01 r) r))
  :pattern ((inv@91@01 r))
  :qid |next-fctOfInv|)))
(assert (forall ((r $Ref)) (!
  (and
    (=>
      (Set_in r ($FVF.domain_next (as sm@93@01  $FVF<next>)))
      (and (Set_in (inv@91@01 r) g@62@01) (img@92@01 r)))
    (=>
      (and (Set_in (inv@91@01 r) g@62@01) (img@92@01 r))
      (Set_in r ($FVF.domain_next (as sm@93@01  $FVF<next>)))))
  :pattern ((Set_in r ($FVF.domain_next (as sm@93@01  $FVF<next>))))
  :qid |qp.fvfDomDef69|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and (and (Set_in (inv@91@01 r) g@62@01) (img@92@01 r)) (= r x@63@01))
    (=
      ($FVF.lookup_next (as sm@93@01  $FVF<next>) r)
      ($FVF.lookup_next (as sm@73@01  $FVF<next>) r)))
  :pattern (($FVF.lookup_next (as sm@93@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next (as sm@73@01  $FVF<next>) r))
  :qid |qp.fvfValDef66|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and (Set_in (inv@91@01 r) g@62@01) (img@92@01 r))
      (and
        (img@77@01 r)
        (and (Set_in (inv@76@01 r) g@62@01) (not (= (inv@76@01 r) x@63@01)))))
    (=
      ($FVF.lookup_next (as sm@93@01  $FVF<next>) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@72@01))))) r)))
  :pattern (($FVF.lookup_next (as sm@93@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@72@01))))) r))
  :qid |qp.fvfValDef67|)))
(assert (forall ((r $Ref)) (!
  (and
    ($FVF.loc_next ($FVF.lookup_next (as sm@73@01  $FVF<next>) r) r)
    ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@72@01))))) r) r))
  :pattern (($FVF.lookup_next (as sm@93@01  $FVF<next>) r))
  :qid |qp.fvfResTrgDef68|)))
(assert (forall ((n@94@01 $Ref)) (!
  (=>
    (Set_in n@94@01 g@62@01)
    (and (= (inv@95@01 n@94@01) n@94@01) (img@96@01 n@94@01)))
  :pattern ((Set_in n@94@01 g@62@01))
  :pattern ((inv@95@01 n@94@01))
  :pattern ((img@96@01 n@94@01))
  :qid |next-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=> (and (img@96@01 r) (Set_in (inv@95@01 r) g@62@01)) (= (inv@95@01 r) r))
  :pattern ((inv@95@01 r))
  :qid |next-fctOfInv|)))
(assert (forall ((r $Ref)) (!
  (and
    (=>
      (Set_in r ($FVF.domain_next (as sm@97@01  $FVF<next>)))
      (and (Set_in (inv@95@01 r) g@62@01) (img@96@01 r)))
    (=>
      (and (Set_in (inv@95@01 r) g@62@01) (img@96@01 r))
      (Set_in r ($FVF.domain_next (as sm@97@01  $FVF<next>)))))
  :pattern ((Set_in r ($FVF.domain_next (as sm@97@01  $FVF<next>))))
  :qid |qp.fvfDomDef73|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and (and (Set_in (inv@95@01 r) g@62@01) (img@96@01 r)) (= r x@63@01))
    (=
      ($FVF.lookup_next (as sm@97@01  $FVF<next>) r)
      ($FVF.lookup_next (as sm@65@01  $FVF<next>) r)))
  :pattern (($FVF.lookup_next (as sm@97@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next (as sm@65@01  $FVF<next>) r))
  :qid |qp.fvfValDef70|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and (Set_in (inv@95@01 r) g@62@01) (img@96@01 r))
      (and
        (img@69@01 r)
        (and (Set_in (inv@68@01 r) g@62@01) (not (= (inv@68@01 r) x@63@01)))))
    (=
      ($FVF.lookup_next (as sm@97@01  $FVF<next>) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@64@01)))))) r)))
  :pattern (($FVF.lookup_next (as sm@97@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@64@01)))))) r))
  :qid |qp.fvfValDef71|)))
(assert (forall ((r $Ref)) (!
  (and
    ($FVF.loc_next ($FVF.lookup_next (as sm@65@01  $FVF<next>) r) r)
    ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@64@01)))))) r) r))
  :pattern (($FVF.lookup_next (as sm@97@01  $FVF<next>) r))
  :qid |qp.fvfResTrgDef72|)))
(assert (forall ((r $Ref)) (!
  (=>
    (= r x@63@01)
    (=
      ($FVF.lookup_next (as sm@98@01  $FVF<next>) r)
      ($FVF.lookup_next (as sm@65@01  $FVF<next>) r)))
  :pattern (($FVF.lookup_next (as sm@98@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next (as sm@65@01  $FVF<next>) r))
  :qid |qp.fvfValDef74|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@69@01 r)
      (and (Set_in (inv@68@01 r) g@62@01) (not (= (inv@68@01 r) x@63@01))))
    (=
      ($FVF.lookup_next (as sm@98@01  $FVF<next>) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@64@01)))))) r)))
  :pattern (($FVF.lookup_next (as sm@98@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@64@01)))))) r))
  :qid |qp.fvfValDef75|)))
(assert (forall ((r $Ref)) (!
  (and
    ($FVF.loc_next ($FVF.lookup_next (as sm@65@01  $FVF<next>) r) r)
    ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@64@01)))))) r) r))
  :pattern (($FVF.lookup_next (as sm@98@01  $FVF<next>) r))
  :qid |qp.fvfResTrgDef76|)))
(assert (forall ((r $Ref)) (!
  (=
    ($FVF.perm_next (as pm@99@01  $FPM) r)
    (+
      (ite (= r x@63@01) $Perm.Write $Perm.No)
      (ite
        (and
          (img@69@01 r)
          (and (Set_in (inv@68@01 r) g@62@01) (not (= (inv@68@01 r) x@63@01))))
        (/ (to_real 1) (to_real 2))
        $Perm.No)))
  :pattern (($FVF.perm_next (as pm@99@01  $FPM) r))
  :qid |qp.resPrmSumDef77|)))
(assert (forall ((r $Ref)) (!
  (and
    ($FVF.loc_next ($FVF.lookup_next (as sm@98@01  $FVF<next>) r) r)
    ($FVF.loc_next ($FVF.lookup_next (as sm@65@01  $FVF<next>) r) r)
    ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@64@01)))))) r) r))
  :pattern (($FVF.perm_next (as pm@99@01  $FPM) r))
  :qid |qp.resTrgDef78|)))
(assert (forall ((r $Ref)) (!
  (=>
    (Set_in (inv@91@01 r) g@62@01)
    ($FVF.loc_next ($FVF.lookup_next (as sm@78@01  $FVF<next>) r) r))
  :pattern ((inv@91@01 r))
  :qid |quant-u-14268|)))
(assert ($$%precondition ($SortWrappers.$FVF<next>To$Snap (as sm@93@01  $FVF<next>)) g@62@01))
(assert (forall ((r $Ref)) (!
  (=>
    (Set_in (inv@95@01 r) g@62@01)
    ($FVF.loc_next ($FVF.lookup_next (as sm@70@01  $FVF<next>) r) r))
  :pattern ((inv@95@01 r))
  :qid |quant-u-14271|)))
(assert ($$%precondition ($SortWrappers.$FVF<next>To$Snap (as sm@97@01  $FVF<next>)) g@62@01))
; Nested auxiliary terms: non-globals (aux)
(assert (forall ((v1@88@01 $Ref) (v2@89@01 $Ref)) (!
  (and
    (=>
      (edge<Bool> ($$ ($SortWrappers.$FVF<next>To$Snap (as sm@97@01  $FVF<next>)) g@62@01) v1@88@01 v2@89@01)
      (and
        (edge<Bool> ($$ ($SortWrappers.$FVF<next>To$Snap (as sm@97@01  $FVF<next>)) g@62@01) v1@88@01 v2@89@01)
        (=>
          (= v1@88@01 x@63@01)
          (and
            (= v1@88@01 x@63@01)
            ($FVF.loc_next ($FVF.lookup_next (as sm@98@01  $FVF<next>) x@63@01) x@63@01)))
        (or (= v1@88@01 x@63@01) (not (= v1@88@01 x@63@01)))))
    (or
      (edge<Bool> ($$ ($SortWrappers.$FVF<next>To$Snap (as sm@97@01  $FVF<next>)) g@62@01) v1@88@01 v2@89@01)
      (not
        (edge<Bool> ($$ ($SortWrappers.$FVF<next>To$Snap (as sm@97@01  $FVF<next>)) g@62@01) v1@88@01 v2@89@01))))
  :pattern ((edge<Bool> ($$ ($SortWrappers.$FVF<next>To$Snap (as sm@93@01  $FVF<next>)) g@62@01) v1@88@01 v2@89@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/graphs/static/tests/lists/delete_edge1.vpr@313@37@315@89-aux|)))
(pop) ; 4
(push) ; 4
; [else-branch: 22 | Lookup(next, sm@70@01, x@63@01) == Null]
(assert (= ($FVF.lookup_next (as sm@70@01  $FVF<next>) x@63@01) $Ref.null))
(pop) ; 4
(pop) ; 3
; Joined path conditions
(assert (forall ((n@90@01 $Ref)) (!
  (=>
    (Set_in n@90@01 g@62@01)
    (and (= (inv@91@01 n@90@01) n@90@01) (img@92@01 n@90@01)))
  :pattern ((Set_in n@90@01 g@62@01))
  :pattern ((inv@91@01 n@90@01))
  :pattern ((img@92@01 n@90@01))
  :qid |next-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=> (and (img@92@01 r) (Set_in (inv@91@01 r) g@62@01)) (= (inv@91@01 r) r))
  :pattern ((inv@91@01 r))
  :qid |next-fctOfInv|)))
(assert (forall ((r $Ref)) (!
  (and
    (=>
      (Set_in r ($FVF.domain_next (as sm@93@01  $FVF<next>)))
      (and (Set_in (inv@91@01 r) g@62@01) (img@92@01 r)))
    (=>
      (and (Set_in (inv@91@01 r) g@62@01) (img@92@01 r))
      (Set_in r ($FVF.domain_next (as sm@93@01  $FVF<next>)))))
  :pattern ((Set_in r ($FVF.domain_next (as sm@93@01  $FVF<next>))))
  :qid |qp.fvfDomDef69|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and (and (Set_in (inv@91@01 r) g@62@01) (img@92@01 r)) (= r x@63@01))
    (=
      ($FVF.lookup_next (as sm@93@01  $FVF<next>) r)
      ($FVF.lookup_next (as sm@73@01  $FVF<next>) r)))
  :pattern (($FVF.lookup_next (as sm@93@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next (as sm@73@01  $FVF<next>) r))
  :qid |qp.fvfValDef66|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and (Set_in (inv@91@01 r) g@62@01) (img@92@01 r))
      (and
        (img@77@01 r)
        (and (Set_in (inv@76@01 r) g@62@01) (not (= (inv@76@01 r) x@63@01)))))
    (=
      ($FVF.lookup_next (as sm@93@01  $FVF<next>) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@72@01))))) r)))
  :pattern (($FVF.lookup_next (as sm@93@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@72@01))))) r))
  :qid |qp.fvfValDef67|)))
(assert (forall ((r $Ref)) (!
  (and
    ($FVF.loc_next ($FVF.lookup_next (as sm@73@01  $FVF<next>) r) r)
    ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@72@01))))) r) r))
  :pattern (($FVF.lookup_next (as sm@93@01  $FVF<next>) r))
  :qid |qp.fvfResTrgDef68|)))
(assert (forall ((n@94@01 $Ref)) (!
  (=>
    (Set_in n@94@01 g@62@01)
    (and (= (inv@95@01 n@94@01) n@94@01) (img@96@01 n@94@01)))
  :pattern ((Set_in n@94@01 g@62@01))
  :pattern ((inv@95@01 n@94@01))
  :pattern ((img@96@01 n@94@01))
  :qid |next-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=> (and (img@96@01 r) (Set_in (inv@95@01 r) g@62@01)) (= (inv@95@01 r) r))
  :pattern ((inv@95@01 r))
  :qid |next-fctOfInv|)))
(assert (forall ((r $Ref)) (!
  (and
    (=>
      (Set_in r ($FVF.domain_next (as sm@97@01  $FVF<next>)))
      (and (Set_in (inv@95@01 r) g@62@01) (img@96@01 r)))
    (=>
      (and (Set_in (inv@95@01 r) g@62@01) (img@96@01 r))
      (Set_in r ($FVF.domain_next (as sm@97@01  $FVF<next>)))))
  :pattern ((Set_in r ($FVF.domain_next (as sm@97@01  $FVF<next>))))
  :qid |qp.fvfDomDef73|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and (and (Set_in (inv@95@01 r) g@62@01) (img@96@01 r)) (= r x@63@01))
    (=
      ($FVF.lookup_next (as sm@97@01  $FVF<next>) r)
      ($FVF.lookup_next (as sm@65@01  $FVF<next>) r)))
  :pattern (($FVF.lookup_next (as sm@97@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next (as sm@65@01  $FVF<next>) r))
  :qid |qp.fvfValDef70|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and (Set_in (inv@95@01 r) g@62@01) (img@96@01 r))
      (and
        (img@69@01 r)
        (and (Set_in (inv@68@01 r) g@62@01) (not (= (inv@68@01 r) x@63@01)))))
    (=
      ($FVF.lookup_next (as sm@97@01  $FVF<next>) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@64@01)))))) r)))
  :pattern (($FVF.lookup_next (as sm@97@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@64@01)))))) r))
  :qid |qp.fvfValDef71|)))
(assert (forall ((r $Ref)) (!
  (and
    ($FVF.loc_next ($FVF.lookup_next (as sm@65@01  $FVF<next>) r) r)
    ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@64@01)))))) r) r))
  :pattern (($FVF.lookup_next (as sm@97@01  $FVF<next>) r))
  :qid |qp.fvfResTrgDef72|)))
(assert (forall ((r $Ref)) (!
  (=>
    (= r x@63@01)
    (=
      ($FVF.lookup_next (as sm@98@01  $FVF<next>) r)
      ($FVF.lookup_next (as sm@65@01  $FVF<next>) r)))
  :pattern (($FVF.lookup_next (as sm@98@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next (as sm@65@01  $FVF<next>) r))
  :qid |qp.fvfValDef74|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@69@01 r)
      (and (Set_in (inv@68@01 r) g@62@01) (not (= (inv@68@01 r) x@63@01))))
    (=
      ($FVF.lookup_next (as sm@98@01  $FVF<next>) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@64@01)))))) r)))
  :pattern (($FVF.lookup_next (as sm@98@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@64@01)))))) r))
  :qid |qp.fvfValDef75|)))
(assert (forall ((r $Ref)) (!
  (and
    ($FVF.loc_next ($FVF.lookup_next (as sm@65@01  $FVF<next>) r) r)
    ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@64@01)))))) r) r))
  :pattern (($FVF.lookup_next (as sm@98@01  $FVF<next>) r))
  :qid |qp.fvfResTrgDef76|)))
(assert (forall ((r $Ref)) (!
  (=
    ($FVF.perm_next (as pm@99@01  $FPM) r)
    (+
      (ite (= r x@63@01) $Perm.Write $Perm.No)
      (ite
        (and
          (img@69@01 r)
          (and (Set_in (inv@68@01 r) g@62@01) (not (= (inv@68@01 r) x@63@01))))
        (/ (to_real 1) (to_real 2))
        $Perm.No)))
  :pattern (($FVF.perm_next (as pm@99@01  $FPM) r))
  :qid |qp.resPrmSumDef77|)))
(assert (forall ((r $Ref)) (!
  (and
    ($FVF.loc_next ($FVF.lookup_next (as sm@98@01  $FVF<next>) r) r)
    ($FVF.loc_next ($FVF.lookup_next (as sm@65@01  $FVF<next>) r) r)
    ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@64@01)))))) r) r))
  :pattern (($FVF.perm_next (as pm@99@01  $FPM) r))
  :qid |qp.resTrgDef78|)))
(assert (=>
  (not (= ($FVF.lookup_next (as sm@70@01  $FVF<next>) x@63@01) $Ref.null))
  (and
    (not (= ($FVF.lookup_next (as sm@70@01  $FVF<next>) x@63@01) $Ref.null))
    (forall ((r $Ref)) (!
      (=>
        (Set_in (inv@91@01 r) g@62@01)
        ($FVF.loc_next ($FVF.lookup_next (as sm@78@01  $FVF<next>) r) r))
      :pattern ((inv@91@01 r))
      :qid |quant-u-14268|))
    ($$%precondition ($SortWrappers.$FVF<next>To$Snap (as sm@93@01  $FVF<next>)) g@62@01)
    (forall ((r $Ref)) (!
      (=>
        (Set_in (inv@95@01 r) g@62@01)
        ($FVF.loc_next ($FVF.lookup_next (as sm@70@01  $FVF<next>) r) r))
      :pattern ((inv@95@01 r))
      :qid |quant-u-14271|))
    ($$%precondition ($SortWrappers.$FVF<next>To$Snap (as sm@97@01  $FVF<next>)) g@62@01)
    (forall ((v1@88@01 $Ref) (v2@89@01 $Ref)) (!
      (and
        (=>
          (edge<Bool> ($$ ($SortWrappers.$FVF<next>To$Snap (as sm@97@01  $FVF<next>)) g@62@01) v1@88@01 v2@89@01)
          (and
            (edge<Bool> ($$ ($SortWrappers.$FVF<next>To$Snap (as sm@97@01  $FVF<next>)) g@62@01) v1@88@01 v2@89@01)
            (=>
              (= v1@88@01 x@63@01)
              (and
                (= v1@88@01 x@63@01)
                ($FVF.loc_next ($FVF.lookup_next (as sm@98@01  $FVF<next>) x@63@01) x@63@01)))
            (or (= v1@88@01 x@63@01) (not (= v1@88@01 x@63@01)))))
        (or
          (edge<Bool> ($$ ($SortWrappers.$FVF<next>To$Snap (as sm@97@01  $FVF<next>)) g@62@01) v1@88@01 v2@89@01)
          (not
            (edge<Bool> ($$ ($SortWrappers.$FVF<next>To$Snap (as sm@97@01  $FVF<next>)) g@62@01) v1@88@01 v2@89@01))))
      :pattern ((edge<Bool> ($$ ($SortWrappers.$FVF<next>To$Snap (as sm@93@01  $FVF<next>)) g@62@01) v1@88@01 v2@89@01))
      :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/graphs/static/tests/lists/delete_edge1.vpr@313@37@315@89-aux|)))))
; Joined path conditions
(assert (or
  (= ($FVF.lookup_next (as sm@70@01  $FVF<next>) x@63@01) $Ref.null)
  (not (= ($FVF.lookup_next (as sm@70@01  $FVF<next>) x@63@01) $Ref.null))))
(assert (=>
  (not (= ($FVF.lookup_next (as sm@70@01  $FVF<next>) x@63@01) $Ref.null))
  (forall ((v1@88@01 $Ref) (v2@89@01 $Ref)) (!
    (=
      (edge<Bool> ($$ ($SortWrappers.$FVF<next>To$Snap (as sm@93@01  $FVF<next>)) g@62@01) v1@88@01 v2@89@01)
      (and
        (edge<Bool> ($$ ($SortWrappers.$FVF<next>To$Snap (as sm@97@01  $FVF<next>)) g@62@01) v1@88@01 v2@89@01)
        (not
          (and
            (= v1@88@01 x@63@01)
            (= v2@89@01 ($FVF.lookup_next (as sm@98@01  $FVF<next>) x@63@01))))))
    :pattern ((edge<Bool> ($$ ($SortWrappers.$FVF<next>To$Snap (as sm@93@01  $FVF<next>)) g@62@01) v1@88@01 v2@89@01))
    :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/graphs/static/tests/lists/delete_edge1.vpr@313@37@315@89|))))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@72@01))))))))
  $Snap.unit))
; [eval] old(x.next) != null ==> (forall v1: Ref, v2: Ref :: { exists_path($$(g), v1, v2) } v1 != v2 ==> exists_path($$(g), v1, v2) == (exists_path(old($$(g)), v1, v2) && !(exists_path(old($$(g)), v1, x) && exists_path(old($$(g)), old(x.next), v2))))
; [eval] old(x.next) != null
; [eval] old(x.next)
(assert (and
  (forall ((r $Ref)) (!
    (=>
      (= r x@63@01)
      (=
        ($FVF.lookup_next (as sm@70@01  $FVF<next>) r)
        ($FVF.lookup_next (as sm@65@01  $FVF<next>) r)))
    :pattern (($FVF.lookup_next (as sm@70@01  $FVF<next>) r))
    :pattern (($FVF.lookup_next (as sm@65@01  $FVF<next>) r))
    :qid |qp.fvfValDef50|))
  (forall ((r $Ref)) (!
    (=>
      (and
        (img@69@01 r)
        (and (Set_in (inv@68@01 r) g@62@01) (not (= (inv@68@01 r) x@63@01))))
      (=
        ($FVF.lookup_next (as sm@70@01  $FVF<next>) r)
        ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@64@01)))))) r)))
    :pattern (($FVF.lookup_next (as sm@70@01  $FVF<next>) r))
    :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@64@01)))))) r))
    :qid |qp.fvfValDef51|))
  (forall ((r $Ref)) (!
    (and
      ($FVF.loc_next ($FVF.lookup_next (as sm@65@01  $FVF<next>) r) r)
      ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@64@01)))))) r) r))
    :pattern (($FVF.lookup_next (as sm@70@01  $FVF<next>) r))
    :qid |qp.fvfResTrgDef52|))))
(push) ; 3
(assert (not (<
  $Perm.No
  (+
    $Perm.Write
    (ite
      (and
        (img@69@01 x@63@01)
        (and
          (Set_in (inv@68@01 x@63@01) g@62@01)
          (not (= (inv@68@01 x@63@01) x@63@01))))
      (/ (to_real 1) (to_real 2))
      $Perm.No)))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(push) ; 3
(push) ; 4
(set-option :timeout 10)
(assert (not (= ($FVF.lookup_next (as sm@70@01  $FVF<next>) x@63@01) $Ref.null)))
(check-sat)
; unknown
(pop) ; 4
; 0.01s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not (not (= ($FVF.lookup_next (as sm@70@01  $FVF<next>) x@63@01) $Ref.null))))
(check-sat)
; unknown
(pop) ; 4
; 0.01s
; (get-info :all-statistics)
; [then-branch: 25 | Lookup(next, sm@70@01, x@63@01) != Null | live]
; [else-branch: 25 | Lookup(next, sm@70@01, x@63@01) == Null | live]
(set-option :timeout 0)
(push) ; 4
; [then-branch: 25 | Lookup(next, sm@70@01, x@63@01) != Null]
(assert (not (= ($FVF.lookup_next (as sm@70@01  $FVF<next>) x@63@01) $Ref.null)))
; [eval] (forall v1: Ref, v2: Ref :: { exists_path($$(g), v1, v2) } v1 != v2 ==> exists_path($$(g), v1, v2) == (exists_path(old($$(g)), v1, v2) && !(exists_path(old($$(g)), v1, x) && exists_path(old($$(g)), old(x.next), v2))))
(declare-const v1@100@01 $Ref)
(declare-const v2@101@01 $Ref)
(push) ; 5
; [eval] v1 != v2 ==> exists_path($$(g), v1, v2) == (exists_path(old($$(g)), v1, v2) && !(exists_path(old($$(g)), v1, x) && exists_path(old($$(g)), old(x.next), v2)))
; [eval] v1 != v2
(push) ; 6
; [then-branch: 26 | v1@100@01 != v2@101@01 | live]
; [else-branch: 26 | v1@100@01 == v2@101@01 | live]
(push) ; 7
; [then-branch: 26 | v1@100@01 != v2@101@01]
(assert (not (= v1@100@01 v2@101@01)))
; [eval] exists_path($$(g), v1, v2) == (exists_path(old($$(g)), v1, v2) && !(exists_path(old($$(g)), v1, x) && exists_path(old($$(g)), old(x.next), v2)))
; [eval] exists_path($$(g), v1, v2)
; [eval] $$(g)
(push) ; 8
(declare-const n@102@01 $Ref)
(push) ; 9
; [eval] (n in refs)
(assert (Set_in n@102@01 g@62@01))
(pop) ; 9
(declare-fun inv@103@01 ($Ref) $Ref)
(declare-fun img@104@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
; Definitional axioms for snapshot map domain
; Definitional axioms for snapshot map values
; Check receiver injectivity
(push) ; 9
(assert (not (forall ((n1@102@01 $Ref) (n2@102@01 $Ref)) (!
  (=>
    (and
      (and
        (Set_in n1@102@01 g@62@01)
        ($FVF.loc_next ($FVF.lookup_next (as sm@78@01  $FVF<next>) n1@102@01) n1@102@01))
      (and
        (Set_in n2@102@01 g@62@01)
        ($FVF.loc_next ($FVF.lookup_next (as sm@78@01  $FVF<next>) n2@102@01) n2@102@01))
      (= n1@102@01 n2@102@01))
    (= n1@102@01 n2@102@01))
  
  :qid |next-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 9
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((n@102@01 $Ref)) (!
  (=>
    (Set_in n@102@01 g@62@01)
    (and (= (inv@103@01 n@102@01) n@102@01) (img@104@01 n@102@01)))
  :pattern ((Set_in n@102@01 g@62@01))
  :pattern ((inv@103@01 n@102@01))
  :pattern ((img@104@01 n@102@01))
  :qid |next-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=> (and (img@104@01 r) (Set_in (inv@103@01 r) g@62@01)) (= (inv@103@01 r) r))
  :pattern ((inv@103@01 r))
  :qid |next-fctOfInv|)))
(assert (forall ((r $Ref)) (!
  (=>
    (Set_in (inv@103@01 r) g@62@01)
    ($FVF.loc_next ($FVF.lookup_next (as sm@78@01  $FVF<next>) r) r))
  :pattern ((inv@103@01 r))
  :qid |quant-u-14274|)))
(push) ; 9
(assert (not (forall ((r $Ref)) (!
  (=>
    (and (Set_in (inv@103@01 r) g@62@01) (img@104@01 r) (= r (inv@103@01 r)))
    (>
      (+
        (ite
          (and
            (img@77@01 r)
            (and (Set_in (inv@76@01 r) g@62@01) (not (= (inv@76@01 r) x@63@01))))
          (/ (to_real 1) (to_real 2))
          $Perm.No)
        (ite (= r x@63@01) $Perm.Write $Perm.No))
      $Perm.No))
  
  :qid |quant-u-14275|))))
(check-sat)
; unsat
(pop) ; 9
; 0.00s
; (get-info :all-statistics)
(declare-const sm@105@01 $FVF<next>)
; Definitional axioms for snapshot map domain
(assert (forall ((r $Ref)) (!
  (and
    (=>
      (Set_in r ($FVF.domain_next (as sm@105@01  $FVF<next>)))
      (and (Set_in (inv@103@01 r) g@62@01) (img@104@01 r)))
    (=>
      (and (Set_in (inv@103@01 r) g@62@01) (img@104@01 r))
      (Set_in r ($FVF.domain_next (as sm@105@01  $FVF<next>)))))
  :pattern ((Set_in r ($FVF.domain_next (as sm@105@01  $FVF<next>))))
  :qid |qp.fvfDomDef82|)))
; Definitional axioms for snapshot map values
(assert (forall ((r $Ref)) (!
  (=>
    (and (and (Set_in (inv@103@01 r) g@62@01) (img@104@01 r)) (= r x@63@01))
    (=
      ($FVF.lookup_next (as sm@105@01  $FVF<next>) r)
      ($FVF.lookup_next (as sm@73@01  $FVF<next>) r)))
  :pattern (($FVF.lookup_next (as sm@105@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next (as sm@73@01  $FVF<next>) r))
  :qid |qp.fvfValDef79|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and (Set_in (inv@103@01 r) g@62@01) (img@104@01 r))
      (and
        (img@77@01 r)
        (and (Set_in (inv@76@01 r) g@62@01) (not (= (inv@76@01 r) x@63@01)))))
    (=
      ($FVF.lookup_next (as sm@105@01  $FVF<next>) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@72@01))))) r)))
  :pattern (($FVF.lookup_next (as sm@105@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@72@01))))) r))
  :qid |qp.fvfValDef80|)))
(assert (forall ((r $Ref)) (!
  (and
    ($FVF.loc_next ($FVF.lookup_next (as sm@73@01  $FVF<next>) r) r)
    ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@72@01))))) r) r))
  :pattern (($FVF.lookup_next (as sm@105@01  $FVF<next>) r))
  :qid |qp.fvfResTrgDef81|)))
(assert ($$%precondition ($SortWrappers.$FVF<next>To$Snap (as sm@105@01  $FVF<next>)) g@62@01))
(pop) ; 8
; Joined path conditions
(assert (forall ((n@102@01 $Ref)) (!
  (=>
    (Set_in n@102@01 g@62@01)
    (and (= (inv@103@01 n@102@01) n@102@01) (img@104@01 n@102@01)))
  :pattern ((Set_in n@102@01 g@62@01))
  :pattern ((inv@103@01 n@102@01))
  :pattern ((img@104@01 n@102@01))
  :qid |next-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=> (and (img@104@01 r) (Set_in (inv@103@01 r) g@62@01)) (= (inv@103@01 r) r))
  :pattern ((inv@103@01 r))
  :qid |next-fctOfInv|)))
(assert (forall ((r $Ref)) (!
  (and
    (=>
      (Set_in r ($FVF.domain_next (as sm@105@01  $FVF<next>)))
      (and (Set_in (inv@103@01 r) g@62@01) (img@104@01 r)))
    (=>
      (and (Set_in (inv@103@01 r) g@62@01) (img@104@01 r))
      (Set_in r ($FVF.domain_next (as sm@105@01  $FVF<next>)))))
  :pattern ((Set_in r ($FVF.domain_next (as sm@105@01  $FVF<next>))))
  :qid |qp.fvfDomDef82|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and (and (Set_in (inv@103@01 r) g@62@01) (img@104@01 r)) (= r x@63@01))
    (=
      ($FVF.lookup_next (as sm@105@01  $FVF<next>) r)
      ($FVF.lookup_next (as sm@73@01  $FVF<next>) r)))
  :pattern (($FVF.lookup_next (as sm@105@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next (as sm@73@01  $FVF<next>) r))
  :qid |qp.fvfValDef79|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and (Set_in (inv@103@01 r) g@62@01) (img@104@01 r))
      (and
        (img@77@01 r)
        (and (Set_in (inv@76@01 r) g@62@01) (not (= (inv@76@01 r) x@63@01)))))
    (=
      ($FVF.lookup_next (as sm@105@01  $FVF<next>) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@72@01))))) r)))
  :pattern (($FVF.lookup_next (as sm@105@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@72@01))))) r))
  :qid |qp.fvfValDef80|)))
(assert (forall ((r $Ref)) (!
  (and
    ($FVF.loc_next ($FVF.lookup_next (as sm@73@01  $FVF<next>) r) r)
    ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@72@01))))) r) r))
  :pattern (($FVF.lookup_next (as sm@105@01  $FVF<next>) r))
  :qid |qp.fvfResTrgDef81|)))
(assert (and
  (forall ((r $Ref)) (!
    (=>
      (Set_in (inv@103@01 r) g@62@01)
      ($FVF.loc_next ($FVF.lookup_next (as sm@78@01  $FVF<next>) r) r))
    :pattern ((inv@103@01 r))
    :qid |quant-u-14274|))
  ($$%precondition ($SortWrappers.$FVF<next>To$Snap (as sm@105@01  $FVF<next>)) g@62@01)))
; [eval] exists_path(old($$(g)), v1, v2) && !(exists_path(old($$(g)), v1, x) && exists_path(old($$(g)), old(x.next), v2))
; [eval] exists_path(old($$(g)), v1, v2)
; [eval] old($$(g))
; [eval] $$(g)
(push) ; 8
(declare-const n@106@01 $Ref)
(push) ; 9
; [eval] (n in refs)
(assert (Set_in n@106@01 g@62@01))
(pop) ; 9
(declare-fun inv@107@01 ($Ref) $Ref)
(declare-fun img@108@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
; Definitional axioms for snapshot map domain
; Definitional axioms for snapshot map values
; Check receiver injectivity
(push) ; 9
(assert (not (forall ((n1@106@01 $Ref) (n2@106@01 $Ref)) (!
  (=>
    (and
      (and
        (Set_in n1@106@01 g@62@01)
        ($FVF.loc_next ($FVF.lookup_next (as sm@70@01  $FVF<next>) n1@106@01) n1@106@01))
      (and
        (Set_in n2@106@01 g@62@01)
        ($FVF.loc_next ($FVF.lookup_next (as sm@70@01  $FVF<next>) n2@106@01) n2@106@01))
      (= n1@106@01 n2@106@01))
    (= n1@106@01 n2@106@01))
  
  :qid |next-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 9
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((n@106@01 $Ref)) (!
  (=>
    (Set_in n@106@01 g@62@01)
    (and (= (inv@107@01 n@106@01) n@106@01) (img@108@01 n@106@01)))
  :pattern ((Set_in n@106@01 g@62@01))
  :pattern ((inv@107@01 n@106@01))
  :pattern ((img@108@01 n@106@01))
  :qid |next-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=> (and (img@108@01 r) (Set_in (inv@107@01 r) g@62@01)) (= (inv@107@01 r) r))
  :pattern ((inv@107@01 r))
  :qid |next-fctOfInv|)))
(assert (forall ((r $Ref)) (!
  (=>
    (Set_in (inv@107@01 r) g@62@01)
    ($FVF.loc_next ($FVF.lookup_next (as sm@70@01  $FVF<next>) r) r))
  :pattern ((inv@107@01 r))
  :qid |quant-u-14277|)))
(push) ; 9
(assert (not (forall ((r $Ref)) (!
  (=>
    (and (Set_in (inv@107@01 r) g@62@01) (img@108@01 r) (= r (inv@107@01 r)))
    (>
      (+
        (ite
          (and
            (img@69@01 r)
            (and (Set_in (inv@68@01 r) g@62@01) (not (= (inv@68@01 r) x@63@01))))
          (/ (to_real 1) (to_real 2))
          $Perm.No)
        (ite (= r x@63@01) $Perm.Write $Perm.No))
      $Perm.No))
  
  :qid |quant-u-14278|))))
(check-sat)
; unsat
(pop) ; 9
; 0.00s
; (get-info :all-statistics)
(declare-const sm@109@01 $FVF<next>)
; Definitional axioms for snapshot map domain
(assert (forall ((r $Ref)) (!
  (and
    (=>
      (Set_in r ($FVF.domain_next (as sm@109@01  $FVF<next>)))
      (and (Set_in (inv@107@01 r) g@62@01) (img@108@01 r)))
    (=>
      (and (Set_in (inv@107@01 r) g@62@01) (img@108@01 r))
      (Set_in r ($FVF.domain_next (as sm@109@01  $FVF<next>)))))
  :pattern ((Set_in r ($FVF.domain_next (as sm@109@01  $FVF<next>))))
  :qid |qp.fvfDomDef86|)))
; Definitional axioms for snapshot map values
(assert (forall ((r $Ref)) (!
  (=>
    (and (and (Set_in (inv@107@01 r) g@62@01) (img@108@01 r)) (= r x@63@01))
    (=
      ($FVF.lookup_next (as sm@109@01  $FVF<next>) r)
      ($FVF.lookup_next (as sm@65@01  $FVF<next>) r)))
  :pattern (($FVF.lookup_next (as sm@109@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next (as sm@65@01  $FVF<next>) r))
  :qid |qp.fvfValDef83|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and (Set_in (inv@107@01 r) g@62@01) (img@108@01 r))
      (and
        (img@69@01 r)
        (and (Set_in (inv@68@01 r) g@62@01) (not (= (inv@68@01 r) x@63@01)))))
    (=
      ($FVF.lookup_next (as sm@109@01  $FVF<next>) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@64@01)))))) r)))
  :pattern (($FVF.lookup_next (as sm@109@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@64@01)))))) r))
  :qid |qp.fvfValDef84|)))
(assert (forall ((r $Ref)) (!
  (and
    ($FVF.loc_next ($FVF.lookup_next (as sm@65@01  $FVF<next>) r) r)
    ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@64@01)))))) r) r))
  :pattern (($FVF.lookup_next (as sm@109@01  $FVF<next>) r))
  :qid |qp.fvfResTrgDef85|)))
(assert ($$%precondition ($SortWrappers.$FVF<next>To$Snap (as sm@109@01  $FVF<next>)) g@62@01))
(pop) ; 8
; Joined path conditions
(assert (forall ((n@106@01 $Ref)) (!
  (=>
    (Set_in n@106@01 g@62@01)
    (and (= (inv@107@01 n@106@01) n@106@01) (img@108@01 n@106@01)))
  :pattern ((Set_in n@106@01 g@62@01))
  :pattern ((inv@107@01 n@106@01))
  :pattern ((img@108@01 n@106@01))
  :qid |next-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=> (and (img@108@01 r) (Set_in (inv@107@01 r) g@62@01)) (= (inv@107@01 r) r))
  :pattern ((inv@107@01 r))
  :qid |next-fctOfInv|)))
(assert (forall ((r $Ref)) (!
  (and
    (=>
      (Set_in r ($FVF.domain_next (as sm@109@01  $FVF<next>)))
      (and (Set_in (inv@107@01 r) g@62@01) (img@108@01 r)))
    (=>
      (and (Set_in (inv@107@01 r) g@62@01) (img@108@01 r))
      (Set_in r ($FVF.domain_next (as sm@109@01  $FVF<next>)))))
  :pattern ((Set_in r ($FVF.domain_next (as sm@109@01  $FVF<next>))))
  :qid |qp.fvfDomDef86|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and (and (Set_in (inv@107@01 r) g@62@01) (img@108@01 r)) (= r x@63@01))
    (=
      ($FVF.lookup_next (as sm@109@01  $FVF<next>) r)
      ($FVF.lookup_next (as sm@65@01  $FVF<next>) r)))
  :pattern (($FVF.lookup_next (as sm@109@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next (as sm@65@01  $FVF<next>) r))
  :qid |qp.fvfValDef83|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and (Set_in (inv@107@01 r) g@62@01) (img@108@01 r))
      (and
        (img@69@01 r)
        (and (Set_in (inv@68@01 r) g@62@01) (not (= (inv@68@01 r) x@63@01)))))
    (=
      ($FVF.lookup_next (as sm@109@01  $FVF<next>) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@64@01)))))) r)))
  :pattern (($FVF.lookup_next (as sm@109@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@64@01)))))) r))
  :qid |qp.fvfValDef84|)))
(assert (forall ((r $Ref)) (!
  (and
    ($FVF.loc_next ($FVF.lookup_next (as sm@65@01  $FVF<next>) r) r)
    ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@64@01)))))) r) r))
  :pattern (($FVF.lookup_next (as sm@109@01  $FVF<next>) r))
  :qid |qp.fvfResTrgDef85|)))
(assert (and
  (forall ((r $Ref)) (!
    (=>
      (Set_in (inv@107@01 r) g@62@01)
      ($FVF.loc_next ($FVF.lookup_next (as sm@70@01  $FVF<next>) r) r))
    :pattern ((inv@107@01 r))
    :qid |quant-u-14277|))
  ($$%precondition ($SortWrappers.$FVF<next>To$Snap (as sm@109@01  $FVF<next>)) g@62@01)))
(push) ; 8
; [then-branch: 27 | !(exists_path[Bool]($$(sm@109@01, g@62@01), v1@100@01, v2@101@01)) | live]
; [else-branch: 27 | exists_path[Bool]($$(sm@109@01, g@62@01), v1@100@01, v2@101@01) | live]
(push) ; 9
; [then-branch: 27 | !(exists_path[Bool]($$(sm@109@01, g@62@01), v1@100@01, v2@101@01))]
(assert (not
  (exists_path<Bool> ($$ ($SortWrappers.$FVF<next>To$Snap (as sm@109@01  $FVF<next>)) g@62@01) v1@100@01 v2@101@01)))
(pop) ; 9
(push) ; 9
; [else-branch: 27 | exists_path[Bool]($$(sm@109@01, g@62@01), v1@100@01, v2@101@01)]
(assert (exists_path<Bool> ($$ ($SortWrappers.$FVF<next>To$Snap (as sm@109@01  $FVF<next>)) g@62@01) v1@100@01 v2@101@01))
; [eval] !(exists_path(old($$(g)), v1, x) && exists_path(old($$(g)), old(x.next), v2))
; [eval] exists_path(old($$(g)), v1, x) && exists_path(old($$(g)), old(x.next), v2)
; [eval] exists_path(old($$(g)), v1, x)
; [eval] old($$(g))
; [eval] $$(g)
(push) ; 10
(declare-const n@110@01 $Ref)
(push) ; 11
; [eval] (n in refs)
(assert (Set_in n@110@01 g@62@01))
(pop) ; 11
(declare-fun inv@111@01 ($Ref) $Ref)
(declare-fun img@112@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
(declare-const sm@113@01 $FVF<next>)
; Definitional axioms for snapshot map domain
; Definitional axioms for snapshot map values
(assert (forall ((r $Ref)) (!
  (=>
    (= r x@63@01)
    (=
      ($FVF.lookup_next (as sm@113@01  $FVF<next>) r)
      ($FVF.lookup_next (as sm@65@01  $FVF<next>) r)))
  :pattern (($FVF.lookup_next (as sm@113@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next (as sm@65@01  $FVF<next>) r))
  :qid |qp.fvfValDef87|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@69@01 r)
      (and (Set_in (inv@68@01 r) g@62@01) (not (= (inv@68@01 r) x@63@01))))
    (=
      ($FVF.lookup_next (as sm@113@01  $FVF<next>) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@64@01)))))) r)))
  :pattern (($FVF.lookup_next (as sm@113@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@64@01)))))) r))
  :qid |qp.fvfValDef88|)))
(assert (forall ((r $Ref)) (!
  (and
    ($FVF.loc_next ($FVF.lookup_next (as sm@65@01  $FVF<next>) r) r)
    ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@64@01)))))) r) r))
  :pattern (($FVF.lookup_next (as sm@113@01  $FVF<next>) r))
  :qid |qp.fvfResTrgDef89|)))
; Check receiver injectivity
(push) ; 11
(assert (not (forall ((n1@110@01 $Ref) (n2@110@01 $Ref)) (!
  (=>
    (and
      (and
        (Set_in n1@110@01 g@62@01)
        ($FVF.loc_next ($FVF.lookup_next (as sm@113@01  $FVF<next>) n1@110@01) n1@110@01))
      (and
        (Set_in n2@110@01 g@62@01)
        ($FVF.loc_next ($FVF.lookup_next (as sm@113@01  $FVF<next>) n2@110@01) n2@110@01))
      (= n1@110@01 n2@110@01))
    (= n1@110@01 n2@110@01))
  
  :qid |next-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 11
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((n@110@01 $Ref)) (!
  (=>
    (Set_in n@110@01 g@62@01)
    (and (= (inv@111@01 n@110@01) n@110@01) (img@112@01 n@110@01)))
  :pattern ((Set_in n@110@01 g@62@01))
  :pattern ((inv@111@01 n@110@01))
  :pattern ((img@112@01 n@110@01))
  :qid |next-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=> (and (img@112@01 r) (Set_in (inv@111@01 r) g@62@01)) (= (inv@111@01 r) r))
  :pattern ((inv@111@01 r))
  :qid |next-fctOfInv|)))
(assert (forall ((r $Ref)) (!
  (=>
    (Set_in (inv@111@01 r) g@62@01)
    ($FVF.loc_next ($FVF.lookup_next (as sm@113@01  $FVF<next>) r) r))
  :pattern ((inv@111@01 r))
  :qid |quant-u-14280|)))
(push) ; 11
(assert (not (forall ((r $Ref)) (!
  (=>
    (and (Set_in (inv@111@01 r) g@62@01) (img@112@01 r) (= r (inv@111@01 r)))
    (>
      (+
        (ite
          (and
            (img@69@01 r)
            (and (Set_in (inv@68@01 r) g@62@01) (not (= (inv@68@01 r) x@63@01))))
          (/ (to_real 1) (to_real 2))
          $Perm.No)
        (ite (= r x@63@01) $Perm.Write $Perm.No))
      $Perm.No))
  
  :qid |quant-u-14281|))))
(check-sat)
; unsat
(pop) ; 11
; 0.00s
; (get-info :all-statistics)
(declare-const sm@114@01 $FVF<next>)
; Definitional axioms for snapshot map domain
(assert (forall ((r $Ref)) (!
  (and
    (=>
      (Set_in r ($FVF.domain_next (as sm@114@01  $FVF<next>)))
      (and (Set_in (inv@111@01 r) g@62@01) (img@112@01 r)))
    (=>
      (and (Set_in (inv@111@01 r) g@62@01) (img@112@01 r))
      (Set_in r ($FVF.domain_next (as sm@114@01  $FVF<next>)))))
  :pattern ((Set_in r ($FVF.domain_next (as sm@114@01  $FVF<next>))))
  :qid |qp.fvfDomDef93|)))
; Definitional axioms for snapshot map values
(assert (forall ((r $Ref)) (!
  (=>
    (and (and (Set_in (inv@111@01 r) g@62@01) (img@112@01 r)) (= r x@63@01))
    (=
      ($FVF.lookup_next (as sm@114@01  $FVF<next>) r)
      ($FVF.lookup_next (as sm@65@01  $FVF<next>) r)))
  :pattern (($FVF.lookup_next (as sm@114@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next (as sm@65@01  $FVF<next>) r))
  :qid |qp.fvfValDef90|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and (Set_in (inv@111@01 r) g@62@01) (img@112@01 r))
      (and
        (img@69@01 r)
        (and (Set_in (inv@68@01 r) g@62@01) (not (= (inv@68@01 r) x@63@01)))))
    (=
      ($FVF.lookup_next (as sm@114@01  $FVF<next>) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@64@01)))))) r)))
  :pattern (($FVF.lookup_next (as sm@114@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@64@01)))))) r))
  :qid |qp.fvfValDef91|)))
(assert (forall ((r $Ref)) (!
  (and
    ($FVF.loc_next ($FVF.lookup_next (as sm@65@01  $FVF<next>) r) r)
    ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@64@01)))))) r) r))
  :pattern (($FVF.lookup_next (as sm@114@01  $FVF<next>) r))
  :qid |qp.fvfResTrgDef92|)))
(assert ($$%precondition ($SortWrappers.$FVF<next>To$Snap (as sm@114@01  $FVF<next>)) g@62@01))
(pop) ; 10
; Joined path conditions
(assert (forall ((r $Ref)) (!
  (=>
    (= r x@63@01)
    (=
      ($FVF.lookup_next (as sm@113@01  $FVF<next>) r)
      ($FVF.lookup_next (as sm@65@01  $FVF<next>) r)))
  :pattern (($FVF.lookup_next (as sm@113@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next (as sm@65@01  $FVF<next>) r))
  :qid |qp.fvfValDef87|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@69@01 r)
      (and (Set_in (inv@68@01 r) g@62@01) (not (= (inv@68@01 r) x@63@01))))
    (=
      ($FVF.lookup_next (as sm@113@01  $FVF<next>) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@64@01)))))) r)))
  :pattern (($FVF.lookup_next (as sm@113@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@64@01)))))) r))
  :qid |qp.fvfValDef88|)))
(assert (forall ((r $Ref)) (!
  (and
    ($FVF.loc_next ($FVF.lookup_next (as sm@65@01  $FVF<next>) r) r)
    ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@64@01)))))) r) r))
  :pattern (($FVF.lookup_next (as sm@113@01  $FVF<next>) r))
  :qid |qp.fvfResTrgDef89|)))
(assert (forall ((n@110@01 $Ref)) (!
  (=>
    (Set_in n@110@01 g@62@01)
    (and (= (inv@111@01 n@110@01) n@110@01) (img@112@01 n@110@01)))
  :pattern ((Set_in n@110@01 g@62@01))
  :pattern ((inv@111@01 n@110@01))
  :pattern ((img@112@01 n@110@01))
  :qid |next-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=> (and (img@112@01 r) (Set_in (inv@111@01 r) g@62@01)) (= (inv@111@01 r) r))
  :pattern ((inv@111@01 r))
  :qid |next-fctOfInv|)))
(assert (forall ((r $Ref)) (!
  (and
    (=>
      (Set_in r ($FVF.domain_next (as sm@114@01  $FVF<next>)))
      (and (Set_in (inv@111@01 r) g@62@01) (img@112@01 r)))
    (=>
      (and (Set_in (inv@111@01 r) g@62@01) (img@112@01 r))
      (Set_in r ($FVF.domain_next (as sm@114@01  $FVF<next>)))))
  :pattern ((Set_in r ($FVF.domain_next (as sm@114@01  $FVF<next>))))
  :qid |qp.fvfDomDef93|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and (and (Set_in (inv@111@01 r) g@62@01) (img@112@01 r)) (= r x@63@01))
    (=
      ($FVF.lookup_next (as sm@114@01  $FVF<next>) r)
      ($FVF.lookup_next (as sm@65@01  $FVF<next>) r)))
  :pattern (($FVF.lookup_next (as sm@114@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next (as sm@65@01  $FVF<next>) r))
  :qid |qp.fvfValDef90|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and (Set_in (inv@111@01 r) g@62@01) (img@112@01 r))
      (and
        (img@69@01 r)
        (and (Set_in (inv@68@01 r) g@62@01) (not (= (inv@68@01 r) x@63@01)))))
    (=
      ($FVF.lookup_next (as sm@114@01  $FVF<next>) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@64@01)))))) r)))
  :pattern (($FVF.lookup_next (as sm@114@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@64@01)))))) r))
  :qid |qp.fvfValDef91|)))
(assert (forall ((r $Ref)) (!
  (and
    ($FVF.loc_next ($FVF.lookup_next (as sm@65@01  $FVF<next>) r) r)
    ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@64@01)))))) r) r))
  :pattern (($FVF.lookup_next (as sm@114@01  $FVF<next>) r))
  :qid |qp.fvfResTrgDef92|)))
(assert (and
  (forall ((r $Ref)) (!
    (=>
      (Set_in (inv@111@01 r) g@62@01)
      ($FVF.loc_next ($FVF.lookup_next (as sm@113@01  $FVF<next>) r) r))
    :pattern ((inv@111@01 r))
    :qid |quant-u-14280|))
  ($$%precondition ($SortWrappers.$FVF<next>To$Snap (as sm@114@01  $FVF<next>)) g@62@01)))
(push) ; 10
; [then-branch: 28 | !(exists_path[Bool]($$(sm@114@01, g@62@01), v1@100@01, x@63@01)) | live]
; [else-branch: 28 | exists_path[Bool]($$(sm@114@01, g@62@01), v1@100@01, x@63@01) | live]
(push) ; 11
; [then-branch: 28 | !(exists_path[Bool]($$(sm@114@01, g@62@01), v1@100@01, x@63@01))]
(assert (not
  (exists_path<Bool> ($$ ($SortWrappers.$FVF<next>To$Snap (as sm@114@01  $FVF<next>)) g@62@01) v1@100@01 x@63@01)))
(pop) ; 11
(push) ; 11
; [else-branch: 28 | exists_path[Bool]($$(sm@114@01, g@62@01), v1@100@01, x@63@01)]
(assert (exists_path<Bool> ($$ ($SortWrappers.$FVF<next>To$Snap (as sm@114@01  $FVF<next>)) g@62@01) v1@100@01 x@63@01))
; [eval] exists_path(old($$(g)), old(x.next), v2)
; [eval] old($$(g))
; [eval] $$(g)
(push) ; 12
(declare-const n@115@01 $Ref)
(push) ; 13
; [eval] (n in refs)
(assert (Set_in n@115@01 g@62@01))
(pop) ; 13
(declare-fun inv@116@01 ($Ref) $Ref)
(declare-fun img@117@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
(declare-const sm@118@01 $FVF<next>)
; Definitional axioms for snapshot map domain
; Definitional axioms for snapshot map values
(assert (forall ((r $Ref)) (!
  (=>
    (= r x@63@01)
    (=
      ($FVF.lookup_next (as sm@118@01  $FVF<next>) r)
      ($FVF.lookup_next (as sm@65@01  $FVF<next>) r)))
  :pattern (($FVF.lookup_next (as sm@118@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next (as sm@65@01  $FVF<next>) r))
  :qid |qp.fvfValDef94|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@69@01 r)
      (and (Set_in (inv@68@01 r) g@62@01) (not (= (inv@68@01 r) x@63@01))))
    (=
      ($FVF.lookup_next (as sm@118@01  $FVF<next>) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@64@01)))))) r)))
  :pattern (($FVF.lookup_next (as sm@118@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@64@01)))))) r))
  :qid |qp.fvfValDef95|)))
(assert (forall ((r $Ref)) (!
  (and
    ($FVF.loc_next ($FVF.lookup_next (as sm@65@01  $FVF<next>) r) r)
    ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@64@01)))))) r) r))
  :pattern (($FVF.lookup_next (as sm@118@01  $FVF<next>) r))
  :qid |qp.fvfResTrgDef96|)))
; Check receiver injectivity
(push) ; 13
(assert (not (forall ((n1@115@01 $Ref) (n2@115@01 $Ref)) (!
  (=>
    (and
      (and
        (Set_in n1@115@01 g@62@01)
        ($FVF.loc_next ($FVF.lookup_next (as sm@118@01  $FVF<next>) n1@115@01) n1@115@01))
      (and
        (Set_in n2@115@01 g@62@01)
        ($FVF.loc_next ($FVF.lookup_next (as sm@118@01  $FVF<next>) n2@115@01) n2@115@01))
      (= n1@115@01 n2@115@01))
    (= n1@115@01 n2@115@01))
  
  :qid |next-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 13
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((n@115@01 $Ref)) (!
  (=>
    (Set_in n@115@01 g@62@01)
    (and (= (inv@116@01 n@115@01) n@115@01) (img@117@01 n@115@01)))
  :pattern ((Set_in n@115@01 g@62@01))
  :pattern ((inv@116@01 n@115@01))
  :pattern ((img@117@01 n@115@01))
  :qid |next-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=> (and (img@117@01 r) (Set_in (inv@116@01 r) g@62@01)) (= (inv@116@01 r) r))
  :pattern ((inv@116@01 r))
  :qid |next-fctOfInv|)))
(assert (forall ((r $Ref)) (!
  (=>
    (Set_in (inv@116@01 r) g@62@01)
    ($FVF.loc_next ($FVF.lookup_next (as sm@118@01  $FVF<next>) r) r))
  :pattern ((inv@116@01 r))
  :qid |quant-u-14283|)))
(push) ; 13
(assert (not (forall ((r $Ref)) (!
  (=>
    (and (Set_in (inv@116@01 r) g@62@01) (img@117@01 r) (= r (inv@116@01 r)))
    (>
      (+
        (ite
          (and
            (img@69@01 r)
            (and (Set_in (inv@68@01 r) g@62@01) (not (= (inv@68@01 r) x@63@01))))
          (/ (to_real 1) (to_real 2))
          $Perm.No)
        (ite (= r x@63@01) $Perm.Write $Perm.No))
      $Perm.No))
  
  :qid |quant-u-14284|))))
(check-sat)
; unsat
(pop) ; 13
; 0.00s
; (get-info :all-statistics)
(declare-const sm@119@01 $FVF<next>)
; Definitional axioms for snapshot map domain
(assert (forall ((r $Ref)) (!
  (and
    (=>
      (Set_in r ($FVF.domain_next (as sm@119@01  $FVF<next>)))
      (and (Set_in (inv@116@01 r) g@62@01) (img@117@01 r)))
    (=>
      (and (Set_in (inv@116@01 r) g@62@01) (img@117@01 r))
      (Set_in r ($FVF.domain_next (as sm@119@01  $FVF<next>)))))
  :pattern ((Set_in r ($FVF.domain_next (as sm@119@01  $FVF<next>))))
  :qid |qp.fvfDomDef100|)))
; Definitional axioms for snapshot map values
(assert (forall ((r $Ref)) (!
  (=>
    (and (and (Set_in (inv@116@01 r) g@62@01) (img@117@01 r)) (= r x@63@01))
    (=
      ($FVF.lookup_next (as sm@119@01  $FVF<next>) r)
      ($FVF.lookup_next (as sm@65@01  $FVF<next>) r)))
  :pattern (($FVF.lookup_next (as sm@119@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next (as sm@65@01  $FVF<next>) r))
  :qid |qp.fvfValDef97|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and (Set_in (inv@116@01 r) g@62@01) (img@117@01 r))
      (and
        (img@69@01 r)
        (and (Set_in (inv@68@01 r) g@62@01) (not (= (inv@68@01 r) x@63@01)))))
    (=
      ($FVF.lookup_next (as sm@119@01  $FVF<next>) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@64@01)))))) r)))
  :pattern (($FVF.lookup_next (as sm@119@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@64@01)))))) r))
  :qid |qp.fvfValDef98|)))
(assert (forall ((r $Ref)) (!
  (and
    ($FVF.loc_next ($FVF.lookup_next (as sm@65@01  $FVF<next>) r) r)
    ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@64@01)))))) r) r))
  :pattern (($FVF.lookup_next (as sm@119@01  $FVF<next>) r))
  :qid |qp.fvfResTrgDef99|)))
(assert ($$%precondition ($SortWrappers.$FVF<next>To$Snap (as sm@119@01  $FVF<next>)) g@62@01))
(pop) ; 12
; Joined path conditions
(assert (forall ((r $Ref)) (!
  (=>
    (= r x@63@01)
    (=
      ($FVF.lookup_next (as sm@118@01  $FVF<next>) r)
      ($FVF.lookup_next (as sm@65@01  $FVF<next>) r)))
  :pattern (($FVF.lookup_next (as sm@118@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next (as sm@65@01  $FVF<next>) r))
  :qid |qp.fvfValDef94|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@69@01 r)
      (and (Set_in (inv@68@01 r) g@62@01) (not (= (inv@68@01 r) x@63@01))))
    (=
      ($FVF.lookup_next (as sm@118@01  $FVF<next>) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@64@01)))))) r)))
  :pattern (($FVF.lookup_next (as sm@118@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@64@01)))))) r))
  :qid |qp.fvfValDef95|)))
(assert (forall ((r $Ref)) (!
  (and
    ($FVF.loc_next ($FVF.lookup_next (as sm@65@01  $FVF<next>) r) r)
    ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@64@01)))))) r) r))
  :pattern (($FVF.lookup_next (as sm@118@01  $FVF<next>) r))
  :qid |qp.fvfResTrgDef96|)))
(assert (forall ((n@115@01 $Ref)) (!
  (=>
    (Set_in n@115@01 g@62@01)
    (and (= (inv@116@01 n@115@01) n@115@01) (img@117@01 n@115@01)))
  :pattern ((Set_in n@115@01 g@62@01))
  :pattern ((inv@116@01 n@115@01))
  :pattern ((img@117@01 n@115@01))
  :qid |next-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=> (and (img@117@01 r) (Set_in (inv@116@01 r) g@62@01)) (= (inv@116@01 r) r))
  :pattern ((inv@116@01 r))
  :qid |next-fctOfInv|)))
(assert (forall ((r $Ref)) (!
  (and
    (=>
      (Set_in r ($FVF.domain_next (as sm@119@01  $FVF<next>)))
      (and (Set_in (inv@116@01 r) g@62@01) (img@117@01 r)))
    (=>
      (and (Set_in (inv@116@01 r) g@62@01) (img@117@01 r))
      (Set_in r ($FVF.domain_next (as sm@119@01  $FVF<next>)))))
  :pattern ((Set_in r ($FVF.domain_next (as sm@119@01  $FVF<next>))))
  :qid |qp.fvfDomDef100|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and (and (Set_in (inv@116@01 r) g@62@01) (img@117@01 r)) (= r x@63@01))
    (=
      ($FVF.lookup_next (as sm@119@01  $FVF<next>) r)
      ($FVF.lookup_next (as sm@65@01  $FVF<next>) r)))
  :pattern (($FVF.lookup_next (as sm@119@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next (as sm@65@01  $FVF<next>) r))
  :qid |qp.fvfValDef97|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and (Set_in (inv@116@01 r) g@62@01) (img@117@01 r))
      (and
        (img@69@01 r)
        (and (Set_in (inv@68@01 r) g@62@01) (not (= (inv@68@01 r) x@63@01)))))
    (=
      ($FVF.lookup_next (as sm@119@01  $FVF<next>) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@64@01)))))) r)))
  :pattern (($FVF.lookup_next (as sm@119@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@64@01)))))) r))
  :qid |qp.fvfValDef98|)))
(assert (forall ((r $Ref)) (!
  (and
    ($FVF.loc_next ($FVF.lookup_next (as sm@65@01  $FVF<next>) r) r)
    ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@64@01)))))) r) r))
  :pattern (($FVF.lookup_next (as sm@119@01  $FVF<next>) r))
  :qid |qp.fvfResTrgDef99|)))
(assert (and
  (forall ((r $Ref)) (!
    (=>
      (Set_in (inv@116@01 r) g@62@01)
      ($FVF.loc_next ($FVF.lookup_next (as sm@118@01  $FVF<next>) r) r))
    :pattern ((inv@116@01 r))
    :qid |quant-u-14283|))
  ($$%precondition ($SortWrappers.$FVF<next>To$Snap (as sm@119@01  $FVF<next>)) g@62@01)))
; [eval] old(x.next)
(declare-const sm@120@01 $FVF<next>)
; Definitional axioms for snapshot map values
(assert (forall ((r $Ref)) (!
  (=>
    (= r x@63@01)
    (=
      ($FVF.lookup_next (as sm@120@01  $FVF<next>) r)
      ($FVF.lookup_next (as sm@65@01  $FVF<next>) r)))
  :pattern (($FVF.lookup_next (as sm@120@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next (as sm@65@01  $FVF<next>) r))
  :qid |qp.fvfValDef101|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@69@01 r)
      (and (Set_in (inv@68@01 r) g@62@01) (not (= (inv@68@01 r) x@63@01))))
    (=
      ($FVF.lookup_next (as sm@120@01  $FVF<next>) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@64@01)))))) r)))
  :pattern (($FVF.lookup_next (as sm@120@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@64@01)))))) r))
  :qid |qp.fvfValDef102|)))
(assert (forall ((r $Ref)) (!
  (and
    ($FVF.loc_next ($FVF.lookup_next (as sm@65@01  $FVF<next>) r) r)
    ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@64@01)))))) r) r))
  :pattern (($FVF.lookup_next (as sm@120@01  $FVF<next>) r))
  :qid |qp.fvfResTrgDef103|)))
(declare-const pm@121@01 $FPM)
(assert (forall ((r $Ref)) (!
  (=
    ($FVF.perm_next (as pm@121@01  $FPM) r)
    (+
      (ite (= r x@63@01) $Perm.Write $Perm.No)
      (ite
        (and
          (img@69@01 r)
          (and (Set_in (inv@68@01 r) g@62@01) (not (= (inv@68@01 r) x@63@01))))
        (/ (to_real 1) (to_real 2))
        $Perm.No)))
  :pattern (($FVF.perm_next (as pm@121@01  $FPM) r))
  :qid |qp.resPrmSumDef104|)))
(assert (forall ((r $Ref)) (!
  (and
    ($FVF.loc_next ($FVF.lookup_next (as sm@120@01  $FVF<next>) r) r)
    ($FVF.loc_next ($FVF.lookup_next (as sm@65@01  $FVF<next>) r) r)
    ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@64@01)))))) r) r))
  :pattern (($FVF.perm_next (as pm@121@01  $FPM) r))
  :qid |qp.resTrgDef105|)))
(assert ($FVF.loc_next ($FVF.lookup_next (as sm@120@01  $FVF<next>) x@63@01) x@63@01))
(push) ; 12
(assert (not (< $Perm.No ($FVF.perm_next (as pm@121@01  $FPM) x@63@01))))
(check-sat)
; unsat
(pop) ; 12
; 0.00s
; (get-info :all-statistics)
(pop) ; 11
(pop) ; 10
; Joined path conditions
; Joined path conditions
(assert (forall ((r $Ref)) (!
  (=>
    (= r x@63@01)
    (=
      ($FVF.lookup_next (as sm@118@01  $FVF<next>) r)
      ($FVF.lookup_next (as sm@65@01  $FVF<next>) r)))
  :pattern (($FVF.lookup_next (as sm@118@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next (as sm@65@01  $FVF<next>) r))
  :qid |qp.fvfValDef94|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@69@01 r)
      (and (Set_in (inv@68@01 r) g@62@01) (not (= (inv@68@01 r) x@63@01))))
    (=
      ($FVF.lookup_next (as sm@118@01  $FVF<next>) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@64@01)))))) r)))
  :pattern (($FVF.lookup_next (as sm@118@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@64@01)))))) r))
  :qid |qp.fvfValDef95|)))
(assert (forall ((r $Ref)) (!
  (and
    ($FVF.loc_next ($FVF.lookup_next (as sm@65@01  $FVF<next>) r) r)
    ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@64@01)))))) r) r))
  :pattern (($FVF.lookup_next (as sm@118@01  $FVF<next>) r))
  :qid |qp.fvfResTrgDef96|)))
(assert (forall ((n@115@01 $Ref)) (!
  (=>
    (Set_in n@115@01 g@62@01)
    (and (= (inv@116@01 n@115@01) n@115@01) (img@117@01 n@115@01)))
  :pattern ((Set_in n@115@01 g@62@01))
  :pattern ((inv@116@01 n@115@01))
  :pattern ((img@117@01 n@115@01))
  :qid |next-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=> (and (img@117@01 r) (Set_in (inv@116@01 r) g@62@01)) (= (inv@116@01 r) r))
  :pattern ((inv@116@01 r))
  :qid |next-fctOfInv|)))
(assert (forall ((r $Ref)) (!
  (and
    (=>
      (Set_in r ($FVF.domain_next (as sm@119@01  $FVF<next>)))
      (and (Set_in (inv@116@01 r) g@62@01) (img@117@01 r)))
    (=>
      (and (Set_in (inv@116@01 r) g@62@01) (img@117@01 r))
      (Set_in r ($FVF.domain_next (as sm@119@01  $FVF<next>)))))
  :pattern ((Set_in r ($FVF.domain_next (as sm@119@01  $FVF<next>))))
  :qid |qp.fvfDomDef100|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and (and (Set_in (inv@116@01 r) g@62@01) (img@117@01 r)) (= r x@63@01))
    (=
      ($FVF.lookup_next (as sm@119@01  $FVF<next>) r)
      ($FVF.lookup_next (as sm@65@01  $FVF<next>) r)))
  :pattern (($FVF.lookup_next (as sm@119@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next (as sm@65@01  $FVF<next>) r))
  :qid |qp.fvfValDef97|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and (Set_in (inv@116@01 r) g@62@01) (img@117@01 r))
      (and
        (img@69@01 r)
        (and (Set_in (inv@68@01 r) g@62@01) (not (= (inv@68@01 r) x@63@01)))))
    (=
      ($FVF.lookup_next (as sm@119@01  $FVF<next>) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@64@01)))))) r)))
  :pattern (($FVF.lookup_next (as sm@119@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@64@01)))))) r))
  :qid |qp.fvfValDef98|)))
(assert (forall ((r $Ref)) (!
  (and
    ($FVF.loc_next ($FVF.lookup_next (as sm@65@01  $FVF<next>) r) r)
    ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@64@01)))))) r) r))
  :pattern (($FVF.lookup_next (as sm@119@01  $FVF<next>) r))
  :qid |qp.fvfResTrgDef99|)))
(assert (forall ((r $Ref)) (!
  (=>
    (= r x@63@01)
    (=
      ($FVF.lookup_next (as sm@120@01  $FVF<next>) r)
      ($FVF.lookup_next (as sm@65@01  $FVF<next>) r)))
  :pattern (($FVF.lookup_next (as sm@120@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next (as sm@65@01  $FVF<next>) r))
  :qid |qp.fvfValDef101|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@69@01 r)
      (and (Set_in (inv@68@01 r) g@62@01) (not (= (inv@68@01 r) x@63@01))))
    (=
      ($FVF.lookup_next (as sm@120@01  $FVF<next>) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@64@01)))))) r)))
  :pattern (($FVF.lookup_next (as sm@120@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@64@01)))))) r))
  :qid |qp.fvfValDef102|)))
(assert (forall ((r $Ref)) (!
  (and
    ($FVF.loc_next ($FVF.lookup_next (as sm@65@01  $FVF<next>) r) r)
    ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@64@01)))))) r) r))
  :pattern (($FVF.lookup_next (as sm@120@01  $FVF<next>) r))
  :qid |qp.fvfResTrgDef103|)))
(assert (forall ((r $Ref)) (!
  (=
    ($FVF.perm_next (as pm@121@01  $FPM) r)
    (+
      (ite (= r x@63@01) $Perm.Write $Perm.No)
      (ite
        (and
          (img@69@01 r)
          (and (Set_in (inv@68@01 r) g@62@01) (not (= (inv@68@01 r) x@63@01))))
        (/ (to_real 1) (to_real 2))
        $Perm.No)))
  :pattern (($FVF.perm_next (as pm@121@01  $FPM) r))
  :qid |qp.resPrmSumDef104|)))
(assert (forall ((r $Ref)) (!
  (and
    ($FVF.loc_next ($FVF.lookup_next (as sm@120@01  $FVF<next>) r) r)
    ($FVF.loc_next ($FVF.lookup_next (as sm@65@01  $FVF<next>) r) r)
    ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@64@01)))))) r) r))
  :pattern (($FVF.perm_next (as pm@121@01  $FPM) r))
  :qid |qp.resTrgDef105|)))
(assert (=>
  (exists_path<Bool> ($$ ($SortWrappers.$FVF<next>To$Snap (as sm@114@01  $FVF<next>)) g@62@01) v1@100@01 x@63@01)
  (and
    (exists_path<Bool> ($$ ($SortWrappers.$FVF<next>To$Snap (as sm@114@01  $FVF<next>)) g@62@01) v1@100@01 x@63@01)
    (forall ((r $Ref)) (!
      (=>
        (Set_in (inv@116@01 r) g@62@01)
        ($FVF.loc_next ($FVF.lookup_next (as sm@118@01  $FVF<next>) r) r))
      :pattern ((inv@116@01 r))
      :qid |quant-u-14283|))
    ($$%precondition ($SortWrappers.$FVF<next>To$Snap (as sm@119@01  $FVF<next>)) g@62@01)
    ($FVF.loc_next ($FVF.lookup_next (as sm@120@01  $FVF<next>) x@63@01) x@63@01))))
(assert (or
  (exists_path<Bool> ($$ ($SortWrappers.$FVF<next>To$Snap (as sm@114@01  $FVF<next>)) g@62@01) v1@100@01 x@63@01)
  (not
    (exists_path<Bool> ($$ ($SortWrappers.$FVF<next>To$Snap (as sm@114@01  $FVF<next>)) g@62@01) v1@100@01 x@63@01))))
(pop) ; 9
(pop) ; 8
; Joined path conditions
; Joined path conditions
(assert (forall ((r $Ref)) (!
  (=>
    (= r x@63@01)
    (=
      ($FVF.lookup_next (as sm@113@01  $FVF<next>) r)
      ($FVF.lookup_next (as sm@65@01  $FVF<next>) r)))
  :pattern (($FVF.lookup_next (as sm@113@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next (as sm@65@01  $FVF<next>) r))
  :qid |qp.fvfValDef87|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@69@01 r)
      (and (Set_in (inv@68@01 r) g@62@01) (not (= (inv@68@01 r) x@63@01))))
    (=
      ($FVF.lookup_next (as sm@113@01  $FVF<next>) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@64@01)))))) r)))
  :pattern (($FVF.lookup_next (as sm@113@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@64@01)))))) r))
  :qid |qp.fvfValDef88|)))
(assert (forall ((r $Ref)) (!
  (and
    ($FVF.loc_next ($FVF.lookup_next (as sm@65@01  $FVF<next>) r) r)
    ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@64@01)))))) r) r))
  :pattern (($FVF.lookup_next (as sm@113@01  $FVF<next>) r))
  :qid |qp.fvfResTrgDef89|)))
(assert (forall ((n@110@01 $Ref)) (!
  (=>
    (Set_in n@110@01 g@62@01)
    (and (= (inv@111@01 n@110@01) n@110@01) (img@112@01 n@110@01)))
  :pattern ((Set_in n@110@01 g@62@01))
  :pattern ((inv@111@01 n@110@01))
  :pattern ((img@112@01 n@110@01))
  :qid |next-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=> (and (img@112@01 r) (Set_in (inv@111@01 r) g@62@01)) (= (inv@111@01 r) r))
  :pattern ((inv@111@01 r))
  :qid |next-fctOfInv|)))
(assert (forall ((r $Ref)) (!
  (and
    (=>
      (Set_in r ($FVF.domain_next (as sm@114@01  $FVF<next>)))
      (and (Set_in (inv@111@01 r) g@62@01) (img@112@01 r)))
    (=>
      (and (Set_in (inv@111@01 r) g@62@01) (img@112@01 r))
      (Set_in r ($FVF.domain_next (as sm@114@01  $FVF<next>)))))
  :pattern ((Set_in r ($FVF.domain_next (as sm@114@01  $FVF<next>))))
  :qid |qp.fvfDomDef93|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and (and (Set_in (inv@111@01 r) g@62@01) (img@112@01 r)) (= r x@63@01))
    (=
      ($FVF.lookup_next (as sm@114@01  $FVF<next>) r)
      ($FVF.lookup_next (as sm@65@01  $FVF<next>) r)))
  :pattern (($FVF.lookup_next (as sm@114@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next (as sm@65@01  $FVF<next>) r))
  :qid |qp.fvfValDef90|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and (Set_in (inv@111@01 r) g@62@01) (img@112@01 r))
      (and
        (img@69@01 r)
        (and (Set_in (inv@68@01 r) g@62@01) (not (= (inv@68@01 r) x@63@01)))))
    (=
      ($FVF.lookup_next (as sm@114@01  $FVF<next>) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@64@01)))))) r)))
  :pattern (($FVF.lookup_next (as sm@114@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@64@01)))))) r))
  :qid |qp.fvfValDef91|)))
(assert (forall ((r $Ref)) (!
  (and
    ($FVF.loc_next ($FVF.lookup_next (as sm@65@01  $FVF<next>) r) r)
    ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@64@01)))))) r) r))
  :pattern (($FVF.lookup_next (as sm@114@01  $FVF<next>) r))
  :qid |qp.fvfResTrgDef92|)))
(assert (forall ((r $Ref)) (!
  (=>
    (= r x@63@01)
    (=
      ($FVF.lookup_next (as sm@118@01  $FVF<next>) r)
      ($FVF.lookup_next (as sm@65@01  $FVF<next>) r)))
  :pattern (($FVF.lookup_next (as sm@118@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next (as sm@65@01  $FVF<next>) r))
  :qid |qp.fvfValDef94|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@69@01 r)
      (and (Set_in (inv@68@01 r) g@62@01) (not (= (inv@68@01 r) x@63@01))))
    (=
      ($FVF.lookup_next (as sm@118@01  $FVF<next>) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@64@01)))))) r)))
  :pattern (($FVF.lookup_next (as sm@118@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@64@01)))))) r))
  :qid |qp.fvfValDef95|)))
(assert (forall ((r $Ref)) (!
  (and
    ($FVF.loc_next ($FVF.lookup_next (as sm@65@01  $FVF<next>) r) r)
    ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@64@01)))))) r) r))
  :pattern (($FVF.lookup_next (as sm@118@01  $FVF<next>) r))
  :qid |qp.fvfResTrgDef96|)))
(assert (forall ((n@115@01 $Ref)) (!
  (=>
    (Set_in n@115@01 g@62@01)
    (and (= (inv@116@01 n@115@01) n@115@01) (img@117@01 n@115@01)))
  :pattern ((Set_in n@115@01 g@62@01))
  :pattern ((inv@116@01 n@115@01))
  :pattern ((img@117@01 n@115@01))
  :qid |next-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=> (and (img@117@01 r) (Set_in (inv@116@01 r) g@62@01)) (= (inv@116@01 r) r))
  :pattern ((inv@116@01 r))
  :qid |next-fctOfInv|)))
(assert (forall ((r $Ref)) (!
  (and
    (=>
      (Set_in r ($FVF.domain_next (as sm@119@01  $FVF<next>)))
      (and (Set_in (inv@116@01 r) g@62@01) (img@117@01 r)))
    (=>
      (and (Set_in (inv@116@01 r) g@62@01) (img@117@01 r))
      (Set_in r ($FVF.domain_next (as sm@119@01  $FVF<next>)))))
  :pattern ((Set_in r ($FVF.domain_next (as sm@119@01  $FVF<next>))))
  :qid |qp.fvfDomDef100|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and (and (Set_in (inv@116@01 r) g@62@01) (img@117@01 r)) (= r x@63@01))
    (=
      ($FVF.lookup_next (as sm@119@01  $FVF<next>) r)
      ($FVF.lookup_next (as sm@65@01  $FVF<next>) r)))
  :pattern (($FVF.lookup_next (as sm@119@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next (as sm@65@01  $FVF<next>) r))
  :qid |qp.fvfValDef97|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and (Set_in (inv@116@01 r) g@62@01) (img@117@01 r))
      (and
        (img@69@01 r)
        (and (Set_in (inv@68@01 r) g@62@01) (not (= (inv@68@01 r) x@63@01)))))
    (=
      ($FVF.lookup_next (as sm@119@01  $FVF<next>) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@64@01)))))) r)))
  :pattern (($FVF.lookup_next (as sm@119@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@64@01)))))) r))
  :qid |qp.fvfValDef98|)))
(assert (forall ((r $Ref)) (!
  (and
    ($FVF.loc_next ($FVF.lookup_next (as sm@65@01  $FVF<next>) r) r)
    ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@64@01)))))) r) r))
  :pattern (($FVF.lookup_next (as sm@119@01  $FVF<next>) r))
  :qid |qp.fvfResTrgDef99|)))
(assert (forall ((r $Ref)) (!
  (=>
    (= r x@63@01)
    (=
      ($FVF.lookup_next (as sm@120@01  $FVF<next>) r)
      ($FVF.lookup_next (as sm@65@01  $FVF<next>) r)))
  :pattern (($FVF.lookup_next (as sm@120@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next (as sm@65@01  $FVF<next>) r))
  :qid |qp.fvfValDef101|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@69@01 r)
      (and (Set_in (inv@68@01 r) g@62@01) (not (= (inv@68@01 r) x@63@01))))
    (=
      ($FVF.lookup_next (as sm@120@01  $FVF<next>) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@64@01)))))) r)))
  :pattern (($FVF.lookup_next (as sm@120@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@64@01)))))) r))
  :qid |qp.fvfValDef102|)))
(assert (forall ((r $Ref)) (!
  (and
    ($FVF.loc_next ($FVF.lookup_next (as sm@65@01  $FVF<next>) r) r)
    ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@64@01)))))) r) r))
  :pattern (($FVF.lookup_next (as sm@120@01  $FVF<next>) r))
  :qid |qp.fvfResTrgDef103|)))
(assert (forall ((r $Ref)) (!
  (=
    ($FVF.perm_next (as pm@121@01  $FPM) r)
    (+
      (ite (= r x@63@01) $Perm.Write $Perm.No)
      (ite
        (and
          (img@69@01 r)
          (and (Set_in (inv@68@01 r) g@62@01) (not (= (inv@68@01 r) x@63@01))))
        (/ (to_real 1) (to_real 2))
        $Perm.No)))
  :pattern (($FVF.perm_next (as pm@121@01  $FPM) r))
  :qid |qp.resPrmSumDef104|)))
(assert (forall ((r $Ref)) (!
  (and
    ($FVF.loc_next ($FVF.lookup_next (as sm@120@01  $FVF<next>) r) r)
    ($FVF.loc_next ($FVF.lookup_next (as sm@65@01  $FVF<next>) r) r)
    ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@64@01)))))) r) r))
  :pattern (($FVF.perm_next (as pm@121@01  $FPM) r))
  :qid |qp.resTrgDef105|)))
(assert (=>
  (exists_path<Bool> ($$ ($SortWrappers.$FVF<next>To$Snap (as sm@109@01  $FVF<next>)) g@62@01) v1@100@01 v2@101@01)
  (and
    (exists_path<Bool> ($$ ($SortWrappers.$FVF<next>To$Snap (as sm@109@01  $FVF<next>)) g@62@01) v1@100@01 v2@101@01)
    (forall ((r $Ref)) (!
      (=>
        (Set_in (inv@111@01 r) g@62@01)
        ($FVF.loc_next ($FVF.lookup_next (as sm@113@01  $FVF<next>) r) r))
      :pattern ((inv@111@01 r))
      :qid |quant-u-14280|))
    ($$%precondition ($SortWrappers.$FVF<next>To$Snap (as sm@114@01  $FVF<next>)) g@62@01)
    (=>
      (exists_path<Bool> ($$ ($SortWrappers.$FVF<next>To$Snap (as sm@114@01  $FVF<next>)) g@62@01) v1@100@01 x@63@01)
      (and
        (exists_path<Bool> ($$ ($SortWrappers.$FVF<next>To$Snap (as sm@114@01  $FVF<next>)) g@62@01) v1@100@01 x@63@01)
        (forall ((r $Ref)) (!
          (=>
            (Set_in (inv@116@01 r) g@62@01)
            ($FVF.loc_next ($FVF.lookup_next (as sm@118@01  $FVF<next>) r) r))
          :pattern ((inv@116@01 r))
          :qid |quant-u-14283|))
        ($$%precondition ($SortWrappers.$FVF<next>To$Snap (as sm@119@01  $FVF<next>)) g@62@01)
        ($FVF.loc_next ($FVF.lookup_next (as sm@120@01  $FVF<next>) x@63@01) x@63@01)))
    (or
      (exists_path<Bool> ($$ ($SortWrappers.$FVF<next>To$Snap (as sm@114@01  $FVF<next>)) g@62@01) v1@100@01 x@63@01)
      (not
        (exists_path<Bool> ($$ ($SortWrappers.$FVF<next>To$Snap (as sm@114@01  $FVF<next>)) g@62@01) v1@100@01 x@63@01))))))
(assert (or
  (exists_path<Bool> ($$ ($SortWrappers.$FVF<next>To$Snap (as sm@109@01  $FVF<next>)) g@62@01) v1@100@01 v2@101@01)
  (not
    (exists_path<Bool> ($$ ($SortWrappers.$FVF<next>To$Snap (as sm@109@01  $FVF<next>)) g@62@01) v1@100@01 v2@101@01))))
(pop) ; 7
(push) ; 7
; [else-branch: 26 | v1@100@01 == v2@101@01]
(assert (= v1@100@01 v2@101@01))
(pop) ; 7
(pop) ; 6
; Joined path conditions
(assert (forall ((n@102@01 $Ref)) (!
  (=>
    (Set_in n@102@01 g@62@01)
    (and (= (inv@103@01 n@102@01) n@102@01) (img@104@01 n@102@01)))
  :pattern ((Set_in n@102@01 g@62@01))
  :pattern ((inv@103@01 n@102@01))
  :pattern ((img@104@01 n@102@01))
  :qid |next-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=> (and (img@104@01 r) (Set_in (inv@103@01 r) g@62@01)) (= (inv@103@01 r) r))
  :pattern ((inv@103@01 r))
  :qid |next-fctOfInv|)))
(assert (forall ((r $Ref)) (!
  (and
    (=>
      (Set_in r ($FVF.domain_next (as sm@105@01  $FVF<next>)))
      (and (Set_in (inv@103@01 r) g@62@01) (img@104@01 r)))
    (=>
      (and (Set_in (inv@103@01 r) g@62@01) (img@104@01 r))
      (Set_in r ($FVF.domain_next (as sm@105@01  $FVF<next>)))))
  :pattern ((Set_in r ($FVF.domain_next (as sm@105@01  $FVF<next>))))
  :qid |qp.fvfDomDef82|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and (and (Set_in (inv@103@01 r) g@62@01) (img@104@01 r)) (= r x@63@01))
    (=
      ($FVF.lookup_next (as sm@105@01  $FVF<next>) r)
      ($FVF.lookup_next (as sm@73@01  $FVF<next>) r)))
  :pattern (($FVF.lookup_next (as sm@105@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next (as sm@73@01  $FVF<next>) r))
  :qid |qp.fvfValDef79|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and (Set_in (inv@103@01 r) g@62@01) (img@104@01 r))
      (and
        (img@77@01 r)
        (and (Set_in (inv@76@01 r) g@62@01) (not (= (inv@76@01 r) x@63@01)))))
    (=
      ($FVF.lookup_next (as sm@105@01  $FVF<next>) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@72@01))))) r)))
  :pattern (($FVF.lookup_next (as sm@105@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@72@01))))) r))
  :qid |qp.fvfValDef80|)))
(assert (forall ((r $Ref)) (!
  (and
    ($FVF.loc_next ($FVF.lookup_next (as sm@73@01  $FVF<next>) r) r)
    ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@72@01))))) r) r))
  :pattern (($FVF.lookup_next (as sm@105@01  $FVF<next>) r))
  :qid |qp.fvfResTrgDef81|)))
(assert (forall ((n@106@01 $Ref)) (!
  (=>
    (Set_in n@106@01 g@62@01)
    (and (= (inv@107@01 n@106@01) n@106@01) (img@108@01 n@106@01)))
  :pattern ((Set_in n@106@01 g@62@01))
  :pattern ((inv@107@01 n@106@01))
  :pattern ((img@108@01 n@106@01))
  :qid |next-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=> (and (img@108@01 r) (Set_in (inv@107@01 r) g@62@01)) (= (inv@107@01 r) r))
  :pattern ((inv@107@01 r))
  :qid |next-fctOfInv|)))
(assert (forall ((r $Ref)) (!
  (and
    (=>
      (Set_in r ($FVF.domain_next (as sm@109@01  $FVF<next>)))
      (and (Set_in (inv@107@01 r) g@62@01) (img@108@01 r)))
    (=>
      (and (Set_in (inv@107@01 r) g@62@01) (img@108@01 r))
      (Set_in r ($FVF.domain_next (as sm@109@01  $FVF<next>)))))
  :pattern ((Set_in r ($FVF.domain_next (as sm@109@01  $FVF<next>))))
  :qid |qp.fvfDomDef86|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and (and (Set_in (inv@107@01 r) g@62@01) (img@108@01 r)) (= r x@63@01))
    (=
      ($FVF.lookup_next (as sm@109@01  $FVF<next>) r)
      ($FVF.lookup_next (as sm@65@01  $FVF<next>) r)))
  :pattern (($FVF.lookup_next (as sm@109@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next (as sm@65@01  $FVF<next>) r))
  :qid |qp.fvfValDef83|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and (Set_in (inv@107@01 r) g@62@01) (img@108@01 r))
      (and
        (img@69@01 r)
        (and (Set_in (inv@68@01 r) g@62@01) (not (= (inv@68@01 r) x@63@01)))))
    (=
      ($FVF.lookup_next (as sm@109@01  $FVF<next>) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@64@01)))))) r)))
  :pattern (($FVF.lookup_next (as sm@109@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@64@01)))))) r))
  :qid |qp.fvfValDef84|)))
(assert (forall ((r $Ref)) (!
  (and
    ($FVF.loc_next ($FVF.lookup_next (as sm@65@01  $FVF<next>) r) r)
    ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@64@01)))))) r) r))
  :pattern (($FVF.lookup_next (as sm@109@01  $FVF<next>) r))
  :qid |qp.fvfResTrgDef85|)))
(assert (forall ((r $Ref)) (!
  (=>
    (= r x@63@01)
    (=
      ($FVF.lookup_next (as sm@113@01  $FVF<next>) r)
      ($FVF.lookup_next (as sm@65@01  $FVF<next>) r)))
  :pattern (($FVF.lookup_next (as sm@113@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next (as sm@65@01  $FVF<next>) r))
  :qid |qp.fvfValDef87|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@69@01 r)
      (and (Set_in (inv@68@01 r) g@62@01) (not (= (inv@68@01 r) x@63@01))))
    (=
      ($FVF.lookup_next (as sm@113@01  $FVF<next>) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@64@01)))))) r)))
  :pattern (($FVF.lookup_next (as sm@113@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@64@01)))))) r))
  :qid |qp.fvfValDef88|)))
(assert (forall ((r $Ref)) (!
  (and
    ($FVF.loc_next ($FVF.lookup_next (as sm@65@01  $FVF<next>) r) r)
    ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@64@01)))))) r) r))
  :pattern (($FVF.lookup_next (as sm@113@01  $FVF<next>) r))
  :qid |qp.fvfResTrgDef89|)))
(assert (forall ((n@110@01 $Ref)) (!
  (=>
    (Set_in n@110@01 g@62@01)
    (and (= (inv@111@01 n@110@01) n@110@01) (img@112@01 n@110@01)))
  :pattern ((Set_in n@110@01 g@62@01))
  :pattern ((inv@111@01 n@110@01))
  :pattern ((img@112@01 n@110@01))
  :qid |next-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=> (and (img@112@01 r) (Set_in (inv@111@01 r) g@62@01)) (= (inv@111@01 r) r))
  :pattern ((inv@111@01 r))
  :qid |next-fctOfInv|)))
(assert (forall ((r $Ref)) (!
  (and
    (=>
      (Set_in r ($FVF.domain_next (as sm@114@01  $FVF<next>)))
      (and (Set_in (inv@111@01 r) g@62@01) (img@112@01 r)))
    (=>
      (and (Set_in (inv@111@01 r) g@62@01) (img@112@01 r))
      (Set_in r ($FVF.domain_next (as sm@114@01  $FVF<next>)))))
  :pattern ((Set_in r ($FVF.domain_next (as sm@114@01  $FVF<next>))))
  :qid |qp.fvfDomDef93|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and (and (Set_in (inv@111@01 r) g@62@01) (img@112@01 r)) (= r x@63@01))
    (=
      ($FVF.lookup_next (as sm@114@01  $FVF<next>) r)
      ($FVF.lookup_next (as sm@65@01  $FVF<next>) r)))
  :pattern (($FVF.lookup_next (as sm@114@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next (as sm@65@01  $FVF<next>) r))
  :qid |qp.fvfValDef90|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and (Set_in (inv@111@01 r) g@62@01) (img@112@01 r))
      (and
        (img@69@01 r)
        (and (Set_in (inv@68@01 r) g@62@01) (not (= (inv@68@01 r) x@63@01)))))
    (=
      ($FVF.lookup_next (as sm@114@01  $FVF<next>) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@64@01)))))) r)))
  :pattern (($FVF.lookup_next (as sm@114@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@64@01)))))) r))
  :qid |qp.fvfValDef91|)))
(assert (forall ((r $Ref)) (!
  (and
    ($FVF.loc_next ($FVF.lookup_next (as sm@65@01  $FVF<next>) r) r)
    ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@64@01)))))) r) r))
  :pattern (($FVF.lookup_next (as sm@114@01  $FVF<next>) r))
  :qid |qp.fvfResTrgDef92|)))
(assert (forall ((r $Ref)) (!
  (=>
    (= r x@63@01)
    (=
      ($FVF.lookup_next (as sm@118@01  $FVF<next>) r)
      ($FVF.lookup_next (as sm@65@01  $FVF<next>) r)))
  :pattern (($FVF.lookup_next (as sm@118@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next (as sm@65@01  $FVF<next>) r))
  :qid |qp.fvfValDef94|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@69@01 r)
      (and (Set_in (inv@68@01 r) g@62@01) (not (= (inv@68@01 r) x@63@01))))
    (=
      ($FVF.lookup_next (as sm@118@01  $FVF<next>) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@64@01)))))) r)))
  :pattern (($FVF.lookup_next (as sm@118@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@64@01)))))) r))
  :qid |qp.fvfValDef95|)))
(assert (forall ((r $Ref)) (!
  (and
    ($FVF.loc_next ($FVF.lookup_next (as sm@65@01  $FVF<next>) r) r)
    ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@64@01)))))) r) r))
  :pattern (($FVF.lookup_next (as sm@118@01  $FVF<next>) r))
  :qid |qp.fvfResTrgDef96|)))
(assert (forall ((n@115@01 $Ref)) (!
  (=>
    (Set_in n@115@01 g@62@01)
    (and (= (inv@116@01 n@115@01) n@115@01) (img@117@01 n@115@01)))
  :pattern ((Set_in n@115@01 g@62@01))
  :pattern ((inv@116@01 n@115@01))
  :pattern ((img@117@01 n@115@01))
  :qid |next-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=> (and (img@117@01 r) (Set_in (inv@116@01 r) g@62@01)) (= (inv@116@01 r) r))
  :pattern ((inv@116@01 r))
  :qid |next-fctOfInv|)))
(assert (forall ((r $Ref)) (!
  (and
    (=>
      (Set_in r ($FVF.domain_next (as sm@119@01  $FVF<next>)))
      (and (Set_in (inv@116@01 r) g@62@01) (img@117@01 r)))
    (=>
      (and (Set_in (inv@116@01 r) g@62@01) (img@117@01 r))
      (Set_in r ($FVF.domain_next (as sm@119@01  $FVF<next>)))))
  :pattern ((Set_in r ($FVF.domain_next (as sm@119@01  $FVF<next>))))
  :qid |qp.fvfDomDef100|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and (and (Set_in (inv@116@01 r) g@62@01) (img@117@01 r)) (= r x@63@01))
    (=
      ($FVF.lookup_next (as sm@119@01  $FVF<next>) r)
      ($FVF.lookup_next (as sm@65@01  $FVF<next>) r)))
  :pattern (($FVF.lookup_next (as sm@119@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next (as sm@65@01  $FVF<next>) r))
  :qid |qp.fvfValDef97|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and (Set_in (inv@116@01 r) g@62@01) (img@117@01 r))
      (and
        (img@69@01 r)
        (and (Set_in (inv@68@01 r) g@62@01) (not (= (inv@68@01 r) x@63@01)))))
    (=
      ($FVF.lookup_next (as sm@119@01  $FVF<next>) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@64@01)))))) r)))
  :pattern (($FVF.lookup_next (as sm@119@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@64@01)))))) r))
  :qid |qp.fvfValDef98|)))
(assert (forall ((r $Ref)) (!
  (and
    ($FVF.loc_next ($FVF.lookup_next (as sm@65@01  $FVF<next>) r) r)
    ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@64@01)))))) r) r))
  :pattern (($FVF.lookup_next (as sm@119@01  $FVF<next>) r))
  :qid |qp.fvfResTrgDef99|)))
(assert (forall ((r $Ref)) (!
  (=>
    (= r x@63@01)
    (=
      ($FVF.lookup_next (as sm@120@01  $FVF<next>) r)
      ($FVF.lookup_next (as sm@65@01  $FVF<next>) r)))
  :pattern (($FVF.lookup_next (as sm@120@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next (as sm@65@01  $FVF<next>) r))
  :qid |qp.fvfValDef101|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@69@01 r)
      (and (Set_in (inv@68@01 r) g@62@01) (not (= (inv@68@01 r) x@63@01))))
    (=
      ($FVF.lookup_next (as sm@120@01  $FVF<next>) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@64@01)))))) r)))
  :pattern (($FVF.lookup_next (as sm@120@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@64@01)))))) r))
  :qid |qp.fvfValDef102|)))
(assert (forall ((r $Ref)) (!
  (and
    ($FVF.loc_next ($FVF.lookup_next (as sm@65@01  $FVF<next>) r) r)
    ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@64@01)))))) r) r))
  :pattern (($FVF.lookup_next (as sm@120@01  $FVF<next>) r))
  :qid |qp.fvfResTrgDef103|)))
(assert (forall ((r $Ref)) (!
  (=
    ($FVF.perm_next (as pm@121@01  $FPM) r)
    (+
      (ite (= r x@63@01) $Perm.Write $Perm.No)
      (ite
        (and
          (img@69@01 r)
          (and (Set_in (inv@68@01 r) g@62@01) (not (= (inv@68@01 r) x@63@01))))
        (/ (to_real 1) (to_real 2))
        $Perm.No)))
  :pattern (($FVF.perm_next (as pm@121@01  $FPM) r))
  :qid |qp.resPrmSumDef104|)))
(assert (forall ((r $Ref)) (!
  (and
    ($FVF.loc_next ($FVF.lookup_next (as sm@120@01  $FVF<next>) r) r)
    ($FVF.loc_next ($FVF.lookup_next (as sm@65@01  $FVF<next>) r) r)
    ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@64@01)))))) r) r))
  :pattern (($FVF.perm_next (as pm@121@01  $FPM) r))
  :qid |qp.resTrgDef105|)))
(assert (=>
  (not (= v1@100@01 v2@101@01))
  (and
    (not (= v1@100@01 v2@101@01))
    (forall ((r $Ref)) (!
      (=>
        (Set_in (inv@103@01 r) g@62@01)
        ($FVF.loc_next ($FVF.lookup_next (as sm@78@01  $FVF<next>) r) r))
      :pattern ((inv@103@01 r))
      :qid |quant-u-14274|))
    ($$%precondition ($SortWrappers.$FVF<next>To$Snap (as sm@105@01  $FVF<next>)) g@62@01)
    (forall ((r $Ref)) (!
      (=>
        (Set_in (inv@107@01 r) g@62@01)
        ($FVF.loc_next ($FVF.lookup_next (as sm@70@01  $FVF<next>) r) r))
      :pattern ((inv@107@01 r))
      :qid |quant-u-14277|))
    ($$%precondition ($SortWrappers.$FVF<next>To$Snap (as sm@109@01  $FVF<next>)) g@62@01)
    (=>
      (exists_path<Bool> ($$ ($SortWrappers.$FVF<next>To$Snap (as sm@109@01  $FVF<next>)) g@62@01) v1@100@01 v2@101@01)
      (and
        (exists_path<Bool> ($$ ($SortWrappers.$FVF<next>To$Snap (as sm@109@01  $FVF<next>)) g@62@01) v1@100@01 v2@101@01)
        (forall ((r $Ref)) (!
          (=>
            (Set_in (inv@111@01 r) g@62@01)
            ($FVF.loc_next ($FVF.lookup_next (as sm@113@01  $FVF<next>) r) r))
          :pattern ((inv@111@01 r))
          :qid |quant-u-14280|))
        ($$%precondition ($SortWrappers.$FVF<next>To$Snap (as sm@114@01  $FVF<next>)) g@62@01)
        (=>
          (exists_path<Bool> ($$ ($SortWrappers.$FVF<next>To$Snap (as sm@114@01  $FVF<next>)) g@62@01) v1@100@01 x@63@01)
          (and
            (exists_path<Bool> ($$ ($SortWrappers.$FVF<next>To$Snap (as sm@114@01  $FVF<next>)) g@62@01) v1@100@01 x@63@01)
            (forall ((r $Ref)) (!
              (=>
                (Set_in (inv@116@01 r) g@62@01)
                ($FVF.loc_next ($FVF.lookup_next (as sm@118@01  $FVF<next>) r) r))
              :pattern ((inv@116@01 r))
              :qid |quant-u-14283|))
            ($$%precondition ($SortWrappers.$FVF<next>To$Snap (as sm@119@01  $FVF<next>)) g@62@01)
            ($FVF.loc_next ($FVF.lookup_next (as sm@120@01  $FVF<next>) x@63@01) x@63@01)))
        (or
          (exists_path<Bool> ($$ ($SortWrappers.$FVF<next>To$Snap (as sm@114@01  $FVF<next>)) g@62@01) v1@100@01 x@63@01)
          (not
            (exists_path<Bool> ($$ ($SortWrappers.$FVF<next>To$Snap (as sm@114@01  $FVF<next>)) g@62@01) v1@100@01 x@63@01)))))
    (or
      (exists_path<Bool> ($$ ($SortWrappers.$FVF<next>To$Snap (as sm@109@01  $FVF<next>)) g@62@01) v1@100@01 v2@101@01)
      (not
        (exists_path<Bool> ($$ ($SortWrappers.$FVF<next>To$Snap (as sm@109@01  $FVF<next>)) g@62@01) v1@100@01 v2@101@01))))))
; Joined path conditions
(assert (or (= v1@100@01 v2@101@01) (not (= v1@100@01 v2@101@01))))
(pop) ; 5
; Nested auxiliary terms: globals (aux)
(assert (forall ((n@102@01 $Ref)) (!
  (=>
    (Set_in n@102@01 g@62@01)
    (and (= (inv@103@01 n@102@01) n@102@01) (img@104@01 n@102@01)))
  :pattern ((Set_in n@102@01 g@62@01))
  :pattern ((inv@103@01 n@102@01))
  :pattern ((img@104@01 n@102@01))
  :qid |next-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=> (and (img@104@01 r) (Set_in (inv@103@01 r) g@62@01)) (= (inv@103@01 r) r))
  :pattern ((inv@103@01 r))
  :qid |next-fctOfInv|)))
(assert (forall ((r $Ref)) (!
  (and
    (=>
      (Set_in r ($FVF.domain_next (as sm@105@01  $FVF<next>)))
      (and (Set_in (inv@103@01 r) g@62@01) (img@104@01 r)))
    (=>
      (and (Set_in (inv@103@01 r) g@62@01) (img@104@01 r))
      (Set_in r ($FVF.domain_next (as sm@105@01  $FVF<next>)))))
  :pattern ((Set_in r ($FVF.domain_next (as sm@105@01  $FVF<next>))))
  :qid |qp.fvfDomDef82|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and (and (Set_in (inv@103@01 r) g@62@01) (img@104@01 r)) (= r x@63@01))
    (=
      ($FVF.lookup_next (as sm@105@01  $FVF<next>) r)
      ($FVF.lookup_next (as sm@73@01  $FVF<next>) r)))
  :pattern (($FVF.lookup_next (as sm@105@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next (as sm@73@01  $FVF<next>) r))
  :qid |qp.fvfValDef79|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and (Set_in (inv@103@01 r) g@62@01) (img@104@01 r))
      (and
        (img@77@01 r)
        (and (Set_in (inv@76@01 r) g@62@01) (not (= (inv@76@01 r) x@63@01)))))
    (=
      ($FVF.lookup_next (as sm@105@01  $FVF<next>) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@72@01))))) r)))
  :pattern (($FVF.lookup_next (as sm@105@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@72@01))))) r))
  :qid |qp.fvfValDef80|)))
(assert (forall ((r $Ref)) (!
  (and
    ($FVF.loc_next ($FVF.lookup_next (as sm@73@01  $FVF<next>) r) r)
    ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@72@01))))) r) r))
  :pattern (($FVF.lookup_next (as sm@105@01  $FVF<next>) r))
  :qid |qp.fvfResTrgDef81|)))
(assert (forall ((n@106@01 $Ref)) (!
  (=>
    (Set_in n@106@01 g@62@01)
    (and (= (inv@107@01 n@106@01) n@106@01) (img@108@01 n@106@01)))
  :pattern ((Set_in n@106@01 g@62@01))
  :pattern ((inv@107@01 n@106@01))
  :pattern ((img@108@01 n@106@01))
  :qid |next-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=> (and (img@108@01 r) (Set_in (inv@107@01 r) g@62@01)) (= (inv@107@01 r) r))
  :pattern ((inv@107@01 r))
  :qid |next-fctOfInv|)))
(assert (forall ((r $Ref)) (!
  (and
    (=>
      (Set_in r ($FVF.domain_next (as sm@109@01  $FVF<next>)))
      (and (Set_in (inv@107@01 r) g@62@01) (img@108@01 r)))
    (=>
      (and (Set_in (inv@107@01 r) g@62@01) (img@108@01 r))
      (Set_in r ($FVF.domain_next (as sm@109@01  $FVF<next>)))))
  :pattern ((Set_in r ($FVF.domain_next (as sm@109@01  $FVF<next>))))
  :qid |qp.fvfDomDef86|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and (and (Set_in (inv@107@01 r) g@62@01) (img@108@01 r)) (= r x@63@01))
    (=
      ($FVF.lookup_next (as sm@109@01  $FVF<next>) r)
      ($FVF.lookup_next (as sm@65@01  $FVF<next>) r)))
  :pattern (($FVF.lookup_next (as sm@109@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next (as sm@65@01  $FVF<next>) r))
  :qid |qp.fvfValDef83|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and (Set_in (inv@107@01 r) g@62@01) (img@108@01 r))
      (and
        (img@69@01 r)
        (and (Set_in (inv@68@01 r) g@62@01) (not (= (inv@68@01 r) x@63@01)))))
    (=
      ($FVF.lookup_next (as sm@109@01  $FVF<next>) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@64@01)))))) r)))
  :pattern (($FVF.lookup_next (as sm@109@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@64@01)))))) r))
  :qid |qp.fvfValDef84|)))
(assert (forall ((r $Ref)) (!
  (and
    ($FVF.loc_next ($FVF.lookup_next (as sm@65@01  $FVF<next>) r) r)
    ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@64@01)))))) r) r))
  :pattern (($FVF.lookup_next (as sm@109@01  $FVF<next>) r))
  :qid |qp.fvfResTrgDef85|)))
(assert (forall ((r $Ref)) (!
  (=>
    (= r x@63@01)
    (=
      ($FVF.lookup_next (as sm@113@01  $FVF<next>) r)
      ($FVF.lookup_next (as sm@65@01  $FVF<next>) r)))
  :pattern (($FVF.lookup_next (as sm@113@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next (as sm@65@01  $FVF<next>) r))
  :qid |qp.fvfValDef87|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@69@01 r)
      (and (Set_in (inv@68@01 r) g@62@01) (not (= (inv@68@01 r) x@63@01))))
    (=
      ($FVF.lookup_next (as sm@113@01  $FVF<next>) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@64@01)))))) r)))
  :pattern (($FVF.lookup_next (as sm@113@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@64@01)))))) r))
  :qid |qp.fvfValDef88|)))
(assert (forall ((r $Ref)) (!
  (and
    ($FVF.loc_next ($FVF.lookup_next (as sm@65@01  $FVF<next>) r) r)
    ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@64@01)))))) r) r))
  :pattern (($FVF.lookup_next (as sm@113@01  $FVF<next>) r))
  :qid |qp.fvfResTrgDef89|)))
(assert (forall ((n@110@01 $Ref)) (!
  (=>
    (Set_in n@110@01 g@62@01)
    (and (= (inv@111@01 n@110@01) n@110@01) (img@112@01 n@110@01)))
  :pattern ((Set_in n@110@01 g@62@01))
  :pattern ((inv@111@01 n@110@01))
  :pattern ((img@112@01 n@110@01))
  :qid |next-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=> (and (img@112@01 r) (Set_in (inv@111@01 r) g@62@01)) (= (inv@111@01 r) r))
  :pattern ((inv@111@01 r))
  :qid |next-fctOfInv|)))
(assert (forall ((r $Ref)) (!
  (and
    (=>
      (Set_in r ($FVF.domain_next (as sm@114@01  $FVF<next>)))
      (and (Set_in (inv@111@01 r) g@62@01) (img@112@01 r)))
    (=>
      (and (Set_in (inv@111@01 r) g@62@01) (img@112@01 r))
      (Set_in r ($FVF.domain_next (as sm@114@01  $FVF<next>)))))
  :pattern ((Set_in r ($FVF.domain_next (as sm@114@01  $FVF<next>))))
  :qid |qp.fvfDomDef93|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and (and (Set_in (inv@111@01 r) g@62@01) (img@112@01 r)) (= r x@63@01))
    (=
      ($FVF.lookup_next (as sm@114@01  $FVF<next>) r)
      ($FVF.lookup_next (as sm@65@01  $FVF<next>) r)))
  :pattern (($FVF.lookup_next (as sm@114@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next (as sm@65@01  $FVF<next>) r))
  :qid |qp.fvfValDef90|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and (Set_in (inv@111@01 r) g@62@01) (img@112@01 r))
      (and
        (img@69@01 r)
        (and (Set_in (inv@68@01 r) g@62@01) (not (= (inv@68@01 r) x@63@01)))))
    (=
      ($FVF.lookup_next (as sm@114@01  $FVF<next>) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@64@01)))))) r)))
  :pattern (($FVF.lookup_next (as sm@114@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@64@01)))))) r))
  :qid |qp.fvfValDef91|)))
(assert (forall ((r $Ref)) (!
  (and
    ($FVF.loc_next ($FVF.lookup_next (as sm@65@01  $FVF<next>) r) r)
    ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@64@01)))))) r) r))
  :pattern (($FVF.lookup_next (as sm@114@01  $FVF<next>) r))
  :qid |qp.fvfResTrgDef92|)))
(assert (forall ((r $Ref)) (!
  (=>
    (= r x@63@01)
    (=
      ($FVF.lookup_next (as sm@118@01  $FVF<next>) r)
      ($FVF.lookup_next (as sm@65@01  $FVF<next>) r)))
  :pattern (($FVF.lookup_next (as sm@118@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next (as sm@65@01  $FVF<next>) r))
  :qid |qp.fvfValDef94|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@69@01 r)
      (and (Set_in (inv@68@01 r) g@62@01) (not (= (inv@68@01 r) x@63@01))))
    (=
      ($FVF.lookup_next (as sm@118@01  $FVF<next>) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@64@01)))))) r)))
  :pattern (($FVF.lookup_next (as sm@118@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@64@01)))))) r))
  :qid |qp.fvfValDef95|)))
(assert (forall ((r $Ref)) (!
  (and
    ($FVF.loc_next ($FVF.lookup_next (as sm@65@01  $FVF<next>) r) r)
    ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@64@01)))))) r) r))
  :pattern (($FVF.lookup_next (as sm@118@01  $FVF<next>) r))
  :qid |qp.fvfResTrgDef96|)))
(assert (forall ((n@115@01 $Ref)) (!
  (=>
    (Set_in n@115@01 g@62@01)
    (and (= (inv@116@01 n@115@01) n@115@01) (img@117@01 n@115@01)))
  :pattern ((Set_in n@115@01 g@62@01))
  :pattern ((inv@116@01 n@115@01))
  :pattern ((img@117@01 n@115@01))
  :qid |next-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=> (and (img@117@01 r) (Set_in (inv@116@01 r) g@62@01)) (= (inv@116@01 r) r))
  :pattern ((inv@116@01 r))
  :qid |next-fctOfInv|)))
(assert (forall ((r $Ref)) (!
  (and
    (=>
      (Set_in r ($FVF.domain_next (as sm@119@01  $FVF<next>)))
      (and (Set_in (inv@116@01 r) g@62@01) (img@117@01 r)))
    (=>
      (and (Set_in (inv@116@01 r) g@62@01) (img@117@01 r))
      (Set_in r ($FVF.domain_next (as sm@119@01  $FVF<next>)))))
  :pattern ((Set_in r ($FVF.domain_next (as sm@119@01  $FVF<next>))))
  :qid |qp.fvfDomDef100|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and (and (Set_in (inv@116@01 r) g@62@01) (img@117@01 r)) (= r x@63@01))
    (=
      ($FVF.lookup_next (as sm@119@01  $FVF<next>) r)
      ($FVF.lookup_next (as sm@65@01  $FVF<next>) r)))
  :pattern (($FVF.lookup_next (as sm@119@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next (as sm@65@01  $FVF<next>) r))
  :qid |qp.fvfValDef97|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and (Set_in (inv@116@01 r) g@62@01) (img@117@01 r))
      (and
        (img@69@01 r)
        (and (Set_in (inv@68@01 r) g@62@01) (not (= (inv@68@01 r) x@63@01)))))
    (=
      ($FVF.lookup_next (as sm@119@01  $FVF<next>) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@64@01)))))) r)))
  :pattern (($FVF.lookup_next (as sm@119@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@64@01)))))) r))
  :qid |qp.fvfValDef98|)))
(assert (forall ((r $Ref)) (!
  (and
    ($FVF.loc_next ($FVF.lookup_next (as sm@65@01  $FVF<next>) r) r)
    ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@64@01)))))) r) r))
  :pattern (($FVF.lookup_next (as sm@119@01  $FVF<next>) r))
  :qid |qp.fvfResTrgDef99|)))
(assert (forall ((r $Ref)) (!
  (=>
    (= r x@63@01)
    (=
      ($FVF.lookup_next (as sm@120@01  $FVF<next>) r)
      ($FVF.lookup_next (as sm@65@01  $FVF<next>) r)))
  :pattern (($FVF.lookup_next (as sm@120@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next (as sm@65@01  $FVF<next>) r))
  :qid |qp.fvfValDef101|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@69@01 r)
      (and (Set_in (inv@68@01 r) g@62@01) (not (= (inv@68@01 r) x@63@01))))
    (=
      ($FVF.lookup_next (as sm@120@01  $FVF<next>) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@64@01)))))) r)))
  :pattern (($FVF.lookup_next (as sm@120@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@64@01)))))) r))
  :qid |qp.fvfValDef102|)))
(assert (forall ((r $Ref)) (!
  (and
    ($FVF.loc_next ($FVF.lookup_next (as sm@65@01  $FVF<next>) r) r)
    ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@64@01)))))) r) r))
  :pattern (($FVF.lookup_next (as sm@120@01  $FVF<next>) r))
  :qid |qp.fvfResTrgDef103|)))
(assert (forall ((r $Ref)) (!
  (=
    ($FVF.perm_next (as pm@121@01  $FPM) r)
    (+
      (ite (= r x@63@01) $Perm.Write $Perm.No)
      (ite
        (and
          (img@69@01 r)
          (and (Set_in (inv@68@01 r) g@62@01) (not (= (inv@68@01 r) x@63@01))))
        (/ (to_real 1) (to_real 2))
        $Perm.No)))
  :pattern (($FVF.perm_next (as pm@121@01  $FPM) r))
  :qid |qp.resPrmSumDef104|)))
(assert (forall ((r $Ref)) (!
  (and
    ($FVF.loc_next ($FVF.lookup_next (as sm@120@01  $FVF<next>) r) r)
    ($FVF.loc_next ($FVF.lookup_next (as sm@65@01  $FVF<next>) r) r)
    ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@64@01)))))) r) r))
  :pattern (($FVF.perm_next (as pm@121@01  $FPM) r))
  :qid |qp.resTrgDef105|)))
; Nested auxiliary terms: non-globals (aux)
(assert (forall ((v1@100@01 $Ref) (v2@101@01 $Ref)) (!
  (and
    (=>
      (not (= v1@100@01 v2@101@01))
      (and
        (not (= v1@100@01 v2@101@01))
        (forall ((r $Ref)) (!
          (=>
            (Set_in (inv@103@01 r) g@62@01)
            ($FVF.loc_next ($FVF.lookup_next (as sm@78@01  $FVF<next>) r) r))
          :pattern ((inv@103@01 r))
          :qid |quant-u-14274|))
        ($$%precondition ($SortWrappers.$FVF<next>To$Snap (as sm@105@01  $FVF<next>)) g@62@01)
        (forall ((r $Ref)) (!
          (=>
            (Set_in (inv@107@01 r) g@62@01)
            ($FVF.loc_next ($FVF.lookup_next (as sm@70@01  $FVF<next>) r) r))
          :pattern ((inv@107@01 r))
          :qid |quant-u-14277|))
        ($$%precondition ($SortWrappers.$FVF<next>To$Snap (as sm@109@01  $FVF<next>)) g@62@01)
        (=>
          (exists_path<Bool> ($$ ($SortWrappers.$FVF<next>To$Snap (as sm@109@01  $FVF<next>)) g@62@01) v1@100@01 v2@101@01)
          (and
            (exists_path<Bool> ($$ ($SortWrappers.$FVF<next>To$Snap (as sm@109@01  $FVF<next>)) g@62@01) v1@100@01 v2@101@01)
            (forall ((r $Ref)) (!
              (=>
                (Set_in (inv@111@01 r) g@62@01)
                ($FVF.loc_next ($FVF.lookup_next (as sm@113@01  $FVF<next>) r) r))
              :pattern ((inv@111@01 r))
              :qid |quant-u-14280|))
            ($$%precondition ($SortWrappers.$FVF<next>To$Snap (as sm@114@01  $FVF<next>)) g@62@01)
            (=>
              (exists_path<Bool> ($$ ($SortWrappers.$FVF<next>To$Snap (as sm@114@01  $FVF<next>)) g@62@01) v1@100@01 x@63@01)
              (and
                (exists_path<Bool> ($$ ($SortWrappers.$FVF<next>To$Snap (as sm@114@01  $FVF<next>)) g@62@01) v1@100@01 x@63@01)
                (forall ((r $Ref)) (!
                  (=>
                    (Set_in (inv@116@01 r) g@62@01)
                    ($FVF.loc_next ($FVF.lookup_next (as sm@118@01  $FVF<next>) r) r))
                  :pattern ((inv@116@01 r))
                  :qid |quant-u-14283|))
                ($$%precondition ($SortWrappers.$FVF<next>To$Snap (as sm@119@01  $FVF<next>)) g@62@01)
                ($FVF.loc_next ($FVF.lookup_next (as sm@120@01  $FVF<next>) x@63@01) x@63@01)))
            (or
              (exists_path<Bool> ($$ ($SortWrappers.$FVF<next>To$Snap (as sm@114@01  $FVF<next>)) g@62@01) v1@100@01 x@63@01)
              (not
                (exists_path<Bool> ($$ ($SortWrappers.$FVF<next>To$Snap (as sm@114@01  $FVF<next>)) g@62@01) v1@100@01 x@63@01)))))
        (or
          (exists_path<Bool> ($$ ($SortWrappers.$FVF<next>To$Snap (as sm@109@01  $FVF<next>)) g@62@01) v1@100@01 v2@101@01)
          (not
            (exists_path<Bool> ($$ ($SortWrappers.$FVF<next>To$Snap (as sm@109@01  $FVF<next>)) g@62@01) v1@100@01 v2@101@01)))))
    (or (= v1@100@01 v2@101@01) (not (= v1@100@01 v2@101@01))))
  :pattern ((exists_path<Bool> ($$ ($SortWrappers.$FVF<next>To$Snap (as sm@105@01  $FVF<next>)) g@62@01) v1@100@01 v2@101@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/graphs/static/tests/lists/delete_edge1.vpr@316@38@320@128-aux|)))
(pop) ; 4
(push) ; 4
; [else-branch: 25 | Lookup(next, sm@70@01, x@63@01) == Null]
(assert (= ($FVF.lookup_next (as sm@70@01  $FVF<next>) x@63@01) $Ref.null))
(pop) ; 4
(pop) ; 3
; Joined path conditions
(assert (forall ((n@102@01 $Ref)) (!
  (=>
    (Set_in n@102@01 g@62@01)
    (and (= (inv@103@01 n@102@01) n@102@01) (img@104@01 n@102@01)))
  :pattern ((Set_in n@102@01 g@62@01))
  :pattern ((inv@103@01 n@102@01))
  :pattern ((img@104@01 n@102@01))
  :qid |next-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=> (and (img@104@01 r) (Set_in (inv@103@01 r) g@62@01)) (= (inv@103@01 r) r))
  :pattern ((inv@103@01 r))
  :qid |next-fctOfInv|)))
(assert (forall ((r $Ref)) (!
  (and
    (=>
      (Set_in r ($FVF.domain_next (as sm@105@01  $FVF<next>)))
      (and (Set_in (inv@103@01 r) g@62@01) (img@104@01 r)))
    (=>
      (and (Set_in (inv@103@01 r) g@62@01) (img@104@01 r))
      (Set_in r ($FVF.domain_next (as sm@105@01  $FVF<next>)))))
  :pattern ((Set_in r ($FVF.domain_next (as sm@105@01  $FVF<next>))))
  :qid |qp.fvfDomDef82|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and (and (Set_in (inv@103@01 r) g@62@01) (img@104@01 r)) (= r x@63@01))
    (=
      ($FVF.lookup_next (as sm@105@01  $FVF<next>) r)
      ($FVF.lookup_next (as sm@73@01  $FVF<next>) r)))
  :pattern (($FVF.lookup_next (as sm@105@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next (as sm@73@01  $FVF<next>) r))
  :qid |qp.fvfValDef79|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and (Set_in (inv@103@01 r) g@62@01) (img@104@01 r))
      (and
        (img@77@01 r)
        (and (Set_in (inv@76@01 r) g@62@01) (not (= (inv@76@01 r) x@63@01)))))
    (=
      ($FVF.lookup_next (as sm@105@01  $FVF<next>) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@72@01))))) r)))
  :pattern (($FVF.lookup_next (as sm@105@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@72@01))))) r))
  :qid |qp.fvfValDef80|)))
(assert (forall ((r $Ref)) (!
  (and
    ($FVF.loc_next ($FVF.lookup_next (as sm@73@01  $FVF<next>) r) r)
    ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@72@01))))) r) r))
  :pattern (($FVF.lookup_next (as sm@105@01  $FVF<next>) r))
  :qid |qp.fvfResTrgDef81|)))
(assert (forall ((n@106@01 $Ref)) (!
  (=>
    (Set_in n@106@01 g@62@01)
    (and (= (inv@107@01 n@106@01) n@106@01) (img@108@01 n@106@01)))
  :pattern ((Set_in n@106@01 g@62@01))
  :pattern ((inv@107@01 n@106@01))
  :pattern ((img@108@01 n@106@01))
  :qid |next-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=> (and (img@108@01 r) (Set_in (inv@107@01 r) g@62@01)) (= (inv@107@01 r) r))
  :pattern ((inv@107@01 r))
  :qid |next-fctOfInv|)))
(assert (forall ((r $Ref)) (!
  (and
    (=>
      (Set_in r ($FVF.domain_next (as sm@109@01  $FVF<next>)))
      (and (Set_in (inv@107@01 r) g@62@01) (img@108@01 r)))
    (=>
      (and (Set_in (inv@107@01 r) g@62@01) (img@108@01 r))
      (Set_in r ($FVF.domain_next (as sm@109@01  $FVF<next>)))))
  :pattern ((Set_in r ($FVF.domain_next (as sm@109@01  $FVF<next>))))
  :qid |qp.fvfDomDef86|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and (and (Set_in (inv@107@01 r) g@62@01) (img@108@01 r)) (= r x@63@01))
    (=
      ($FVF.lookup_next (as sm@109@01  $FVF<next>) r)
      ($FVF.lookup_next (as sm@65@01  $FVF<next>) r)))
  :pattern (($FVF.lookup_next (as sm@109@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next (as sm@65@01  $FVF<next>) r))
  :qid |qp.fvfValDef83|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and (Set_in (inv@107@01 r) g@62@01) (img@108@01 r))
      (and
        (img@69@01 r)
        (and (Set_in (inv@68@01 r) g@62@01) (not (= (inv@68@01 r) x@63@01)))))
    (=
      ($FVF.lookup_next (as sm@109@01  $FVF<next>) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@64@01)))))) r)))
  :pattern (($FVF.lookup_next (as sm@109@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@64@01)))))) r))
  :qid |qp.fvfValDef84|)))
(assert (forall ((r $Ref)) (!
  (and
    ($FVF.loc_next ($FVF.lookup_next (as sm@65@01  $FVF<next>) r) r)
    ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@64@01)))))) r) r))
  :pattern (($FVF.lookup_next (as sm@109@01  $FVF<next>) r))
  :qid |qp.fvfResTrgDef85|)))
(assert (forall ((r $Ref)) (!
  (=>
    (= r x@63@01)
    (=
      ($FVF.lookup_next (as sm@113@01  $FVF<next>) r)
      ($FVF.lookup_next (as sm@65@01  $FVF<next>) r)))
  :pattern (($FVF.lookup_next (as sm@113@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next (as sm@65@01  $FVF<next>) r))
  :qid |qp.fvfValDef87|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@69@01 r)
      (and (Set_in (inv@68@01 r) g@62@01) (not (= (inv@68@01 r) x@63@01))))
    (=
      ($FVF.lookup_next (as sm@113@01  $FVF<next>) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@64@01)))))) r)))
  :pattern (($FVF.lookup_next (as sm@113@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@64@01)))))) r))
  :qid |qp.fvfValDef88|)))
(assert (forall ((r $Ref)) (!
  (and
    ($FVF.loc_next ($FVF.lookup_next (as sm@65@01  $FVF<next>) r) r)
    ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@64@01)))))) r) r))
  :pattern (($FVF.lookup_next (as sm@113@01  $FVF<next>) r))
  :qid |qp.fvfResTrgDef89|)))
(assert (forall ((n@110@01 $Ref)) (!
  (=>
    (Set_in n@110@01 g@62@01)
    (and (= (inv@111@01 n@110@01) n@110@01) (img@112@01 n@110@01)))
  :pattern ((Set_in n@110@01 g@62@01))
  :pattern ((inv@111@01 n@110@01))
  :pattern ((img@112@01 n@110@01))
  :qid |next-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=> (and (img@112@01 r) (Set_in (inv@111@01 r) g@62@01)) (= (inv@111@01 r) r))
  :pattern ((inv@111@01 r))
  :qid |next-fctOfInv|)))
(assert (forall ((r $Ref)) (!
  (and
    (=>
      (Set_in r ($FVF.domain_next (as sm@114@01  $FVF<next>)))
      (and (Set_in (inv@111@01 r) g@62@01) (img@112@01 r)))
    (=>
      (and (Set_in (inv@111@01 r) g@62@01) (img@112@01 r))
      (Set_in r ($FVF.domain_next (as sm@114@01  $FVF<next>)))))
  :pattern ((Set_in r ($FVF.domain_next (as sm@114@01  $FVF<next>))))
  :qid |qp.fvfDomDef93|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and (and (Set_in (inv@111@01 r) g@62@01) (img@112@01 r)) (= r x@63@01))
    (=
      ($FVF.lookup_next (as sm@114@01  $FVF<next>) r)
      ($FVF.lookup_next (as sm@65@01  $FVF<next>) r)))
  :pattern (($FVF.lookup_next (as sm@114@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next (as sm@65@01  $FVF<next>) r))
  :qid |qp.fvfValDef90|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and (Set_in (inv@111@01 r) g@62@01) (img@112@01 r))
      (and
        (img@69@01 r)
        (and (Set_in (inv@68@01 r) g@62@01) (not (= (inv@68@01 r) x@63@01)))))
    (=
      ($FVF.lookup_next (as sm@114@01  $FVF<next>) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@64@01)))))) r)))
  :pattern (($FVF.lookup_next (as sm@114@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@64@01)))))) r))
  :qid |qp.fvfValDef91|)))
(assert (forall ((r $Ref)) (!
  (and
    ($FVF.loc_next ($FVF.lookup_next (as sm@65@01  $FVF<next>) r) r)
    ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@64@01)))))) r) r))
  :pattern (($FVF.lookup_next (as sm@114@01  $FVF<next>) r))
  :qid |qp.fvfResTrgDef92|)))
(assert (forall ((r $Ref)) (!
  (=>
    (= r x@63@01)
    (=
      ($FVF.lookup_next (as sm@118@01  $FVF<next>) r)
      ($FVF.lookup_next (as sm@65@01  $FVF<next>) r)))
  :pattern (($FVF.lookup_next (as sm@118@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next (as sm@65@01  $FVF<next>) r))
  :qid |qp.fvfValDef94|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@69@01 r)
      (and (Set_in (inv@68@01 r) g@62@01) (not (= (inv@68@01 r) x@63@01))))
    (=
      ($FVF.lookup_next (as sm@118@01  $FVF<next>) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@64@01)))))) r)))
  :pattern (($FVF.lookup_next (as sm@118@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@64@01)))))) r))
  :qid |qp.fvfValDef95|)))
(assert (forall ((r $Ref)) (!
  (and
    ($FVF.loc_next ($FVF.lookup_next (as sm@65@01  $FVF<next>) r) r)
    ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@64@01)))))) r) r))
  :pattern (($FVF.lookup_next (as sm@118@01  $FVF<next>) r))
  :qid |qp.fvfResTrgDef96|)))
(assert (forall ((n@115@01 $Ref)) (!
  (=>
    (Set_in n@115@01 g@62@01)
    (and (= (inv@116@01 n@115@01) n@115@01) (img@117@01 n@115@01)))
  :pattern ((Set_in n@115@01 g@62@01))
  :pattern ((inv@116@01 n@115@01))
  :pattern ((img@117@01 n@115@01))
  :qid |next-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=> (and (img@117@01 r) (Set_in (inv@116@01 r) g@62@01)) (= (inv@116@01 r) r))
  :pattern ((inv@116@01 r))
  :qid |next-fctOfInv|)))
(assert (forall ((r $Ref)) (!
  (and
    (=>
      (Set_in r ($FVF.domain_next (as sm@119@01  $FVF<next>)))
      (and (Set_in (inv@116@01 r) g@62@01) (img@117@01 r)))
    (=>
      (and (Set_in (inv@116@01 r) g@62@01) (img@117@01 r))
      (Set_in r ($FVF.domain_next (as sm@119@01  $FVF<next>)))))
  :pattern ((Set_in r ($FVF.domain_next (as sm@119@01  $FVF<next>))))
  :qid |qp.fvfDomDef100|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and (and (Set_in (inv@116@01 r) g@62@01) (img@117@01 r)) (= r x@63@01))
    (=
      ($FVF.lookup_next (as sm@119@01  $FVF<next>) r)
      ($FVF.lookup_next (as sm@65@01  $FVF<next>) r)))
  :pattern (($FVF.lookup_next (as sm@119@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next (as sm@65@01  $FVF<next>) r))
  :qid |qp.fvfValDef97|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and (Set_in (inv@116@01 r) g@62@01) (img@117@01 r))
      (and
        (img@69@01 r)
        (and (Set_in (inv@68@01 r) g@62@01) (not (= (inv@68@01 r) x@63@01)))))
    (=
      ($FVF.lookup_next (as sm@119@01  $FVF<next>) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@64@01)))))) r)))
  :pattern (($FVF.lookup_next (as sm@119@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@64@01)))))) r))
  :qid |qp.fvfValDef98|)))
(assert (forall ((r $Ref)) (!
  (and
    ($FVF.loc_next ($FVF.lookup_next (as sm@65@01  $FVF<next>) r) r)
    ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@64@01)))))) r) r))
  :pattern (($FVF.lookup_next (as sm@119@01  $FVF<next>) r))
  :qid |qp.fvfResTrgDef99|)))
(assert (forall ((r $Ref)) (!
  (=>
    (= r x@63@01)
    (=
      ($FVF.lookup_next (as sm@120@01  $FVF<next>) r)
      ($FVF.lookup_next (as sm@65@01  $FVF<next>) r)))
  :pattern (($FVF.lookup_next (as sm@120@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next (as sm@65@01  $FVF<next>) r))
  :qid |qp.fvfValDef101|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@69@01 r)
      (and (Set_in (inv@68@01 r) g@62@01) (not (= (inv@68@01 r) x@63@01))))
    (=
      ($FVF.lookup_next (as sm@120@01  $FVF<next>) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@64@01)))))) r)))
  :pattern (($FVF.lookup_next (as sm@120@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@64@01)))))) r))
  :qid |qp.fvfValDef102|)))
(assert (forall ((r $Ref)) (!
  (and
    ($FVF.loc_next ($FVF.lookup_next (as sm@65@01  $FVF<next>) r) r)
    ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@64@01)))))) r) r))
  :pattern (($FVF.lookup_next (as sm@120@01  $FVF<next>) r))
  :qid |qp.fvfResTrgDef103|)))
(assert (forall ((r $Ref)) (!
  (=
    ($FVF.perm_next (as pm@121@01  $FPM) r)
    (+
      (ite (= r x@63@01) $Perm.Write $Perm.No)
      (ite
        (and
          (img@69@01 r)
          (and (Set_in (inv@68@01 r) g@62@01) (not (= (inv@68@01 r) x@63@01))))
        (/ (to_real 1) (to_real 2))
        $Perm.No)))
  :pattern (($FVF.perm_next (as pm@121@01  $FPM) r))
  :qid |qp.resPrmSumDef104|)))
(assert (forall ((r $Ref)) (!
  (and
    ($FVF.loc_next ($FVF.lookup_next (as sm@120@01  $FVF<next>) r) r)
    ($FVF.loc_next ($FVF.lookup_next (as sm@65@01  $FVF<next>) r) r)
    ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@64@01)))))) r) r))
  :pattern (($FVF.perm_next (as pm@121@01  $FPM) r))
  :qid |qp.resTrgDef105|)))
(assert (=>
  (not (= ($FVF.lookup_next (as sm@70@01  $FVF<next>) x@63@01) $Ref.null))
  (and
    (not (= ($FVF.lookup_next (as sm@70@01  $FVF<next>) x@63@01) $Ref.null))
    (forall ((v1@100@01 $Ref) (v2@101@01 $Ref)) (!
      (and
        (=>
          (not (= v1@100@01 v2@101@01))
          (and
            (not (= v1@100@01 v2@101@01))
            (forall ((r $Ref)) (!
              (=>
                (Set_in (inv@103@01 r) g@62@01)
                ($FVF.loc_next ($FVF.lookup_next (as sm@78@01  $FVF<next>) r) r))
              :pattern ((inv@103@01 r))
              :qid |quant-u-14274|))
            ($$%precondition ($SortWrappers.$FVF<next>To$Snap (as sm@105@01  $FVF<next>)) g@62@01)
            (forall ((r $Ref)) (!
              (=>
                (Set_in (inv@107@01 r) g@62@01)
                ($FVF.loc_next ($FVF.lookup_next (as sm@70@01  $FVF<next>) r) r))
              :pattern ((inv@107@01 r))
              :qid |quant-u-14277|))
            ($$%precondition ($SortWrappers.$FVF<next>To$Snap (as sm@109@01  $FVF<next>)) g@62@01)
            (=>
              (exists_path<Bool> ($$ ($SortWrappers.$FVF<next>To$Snap (as sm@109@01  $FVF<next>)) g@62@01) v1@100@01 v2@101@01)
              (and
                (exists_path<Bool> ($$ ($SortWrappers.$FVF<next>To$Snap (as sm@109@01  $FVF<next>)) g@62@01) v1@100@01 v2@101@01)
                (forall ((r $Ref)) (!
                  (=>
                    (Set_in (inv@111@01 r) g@62@01)
                    ($FVF.loc_next ($FVF.lookup_next (as sm@113@01  $FVF<next>) r) r))
                  :pattern ((inv@111@01 r))
                  :qid |quant-u-14280|))
                ($$%precondition ($SortWrappers.$FVF<next>To$Snap (as sm@114@01  $FVF<next>)) g@62@01)
                (=>
                  (exists_path<Bool> ($$ ($SortWrappers.$FVF<next>To$Snap (as sm@114@01  $FVF<next>)) g@62@01) v1@100@01 x@63@01)
                  (and
                    (exists_path<Bool> ($$ ($SortWrappers.$FVF<next>To$Snap (as sm@114@01  $FVF<next>)) g@62@01) v1@100@01 x@63@01)
                    (forall ((r $Ref)) (!
                      (=>
                        (Set_in (inv@116@01 r) g@62@01)
                        ($FVF.loc_next ($FVF.lookup_next (as sm@118@01  $FVF<next>) r) r))
                      :pattern ((inv@116@01 r))
                      :qid |quant-u-14283|))
                    ($$%precondition ($SortWrappers.$FVF<next>To$Snap (as sm@119@01  $FVF<next>)) g@62@01)
                    ($FVF.loc_next ($FVF.lookup_next (as sm@120@01  $FVF<next>) x@63@01) x@63@01)))
                (or
                  (exists_path<Bool> ($$ ($SortWrappers.$FVF<next>To$Snap (as sm@114@01  $FVF<next>)) g@62@01) v1@100@01 x@63@01)
                  (not
                    (exists_path<Bool> ($$ ($SortWrappers.$FVF<next>To$Snap (as sm@114@01  $FVF<next>)) g@62@01) v1@100@01 x@63@01)))))
            (or
              (exists_path<Bool> ($$ ($SortWrappers.$FVF<next>To$Snap (as sm@109@01  $FVF<next>)) g@62@01) v1@100@01 v2@101@01)
              (not
                (exists_path<Bool> ($$ ($SortWrappers.$FVF<next>To$Snap (as sm@109@01  $FVF<next>)) g@62@01) v1@100@01 v2@101@01)))))
        (or (= v1@100@01 v2@101@01) (not (= v1@100@01 v2@101@01))))
      :pattern ((exists_path<Bool> ($$ ($SortWrappers.$FVF<next>To$Snap (as sm@105@01  $FVF<next>)) g@62@01) v1@100@01 v2@101@01))
      :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/graphs/static/tests/lists/delete_edge1.vpr@316@38@320@128-aux|)))))
; Joined path conditions
(assert (=>
  (not (= ($FVF.lookup_next (as sm@70@01  $FVF<next>) x@63@01) $Ref.null))
  (forall ((v1@100@01 $Ref) (v2@101@01 $Ref)) (!
    (=>
      (not (= v1@100@01 v2@101@01))
      (=
        (exists_path<Bool> ($$ ($SortWrappers.$FVF<next>To$Snap (as sm@105@01  $FVF<next>)) g@62@01) v1@100@01 v2@101@01)
        (and
          (exists_path<Bool> ($$ ($SortWrappers.$FVF<next>To$Snap (as sm@109@01  $FVF<next>)) g@62@01) v1@100@01 v2@101@01)
          (not
            (and
              (exists_path<Bool> ($$ ($SortWrappers.$FVF<next>To$Snap (as sm@114@01  $FVF<next>)) g@62@01) v1@100@01 x@63@01)
              (exists_path<Bool> ($$ ($SortWrappers.$FVF<next>To$Snap (as sm@119@01  $FVF<next>)) g@62@01) ($FVF.lookup_next (as sm@120@01  $FVF<next>) x@63@01) v2@101@01))))))
    :pattern ((exists_path<Bool> ($$ ($SortWrappers.$FVF<next>To$Snap (as sm@105@01  $FVF<next>)) g@62@01) v1@100@01 v2@101@01))
    :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/graphs/static/tests/lists/delete_edge1.vpr@316@38@320@128|))))
(pop) ; 2
(push) ; 2
; [exec]
; inhale false
(pop) ; 2
(pop) ; 1
; ---------- unjoin ----------
(declare-const g0@122@01 Set<$Ref>)
(declare-const g1@123@01 Set<$Ref>)
(declare-const x0@124@01 $Ref)
(declare-const x1@125@01 $Ref)
(declare-const g0@126@01 Set<$Ref>)
(declare-const g1@127@01 Set<$Ref>)
(declare-const x0@128@01 $Ref)
(declare-const x1@129@01 $Ref)
(push) ; 1
(declare-const $t@130@01 $Snap)
(assert (= $t@130@01 ($Snap.combine ($Snap.first $t@130@01) ($Snap.second $t@130@01))))
(assert (= ($Snap.first $t@130@01) $Snap.unit))
; [eval] (forall r: Ref :: { (r in g0), (r in g1) } (r in g0) ==> !((r in g1)))
(declare-const r@131@01 $Ref)
(push) ; 2
; [eval] (r in g0) ==> !((r in g1))
; [eval] (r in g0)
(push) ; 3
; [then-branch: 29 | r@131@01 in g0@126@01 | live]
; [else-branch: 29 | !(r@131@01 in g0@126@01) | live]
(push) ; 4
; [then-branch: 29 | r@131@01 in g0@126@01]
(assert (Set_in r@131@01 g0@126@01))
; [eval] !((r in g1))
; [eval] (r in g1)
(pop) ; 4
(push) ; 4
; [else-branch: 29 | !(r@131@01 in g0@126@01)]
(assert (not (Set_in r@131@01 g0@126@01)))
(pop) ; 4
(pop) ; 3
; Joined path conditions
; Joined path conditions
(assert (or (not (Set_in r@131@01 g0@126@01)) (Set_in r@131@01 g0@126@01)))
(pop) ; 2
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall ((r@131@01 $Ref)) (!
  (or (not (Set_in r@131@01 g0@126@01)) (Set_in r@131@01 g0@126@01))
  :pattern ((Set_in r@131@01 g0@126@01) (Set_in r@131@01 g1@127@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/graphs/static/tests/lists/delete_edge1.vpr@324@14@324@34-aux|)))
(assert (forall ((r@131@01 $Ref)) (!
  (=> (Set_in r@131@01 g0@126@01) (not (Set_in r@131@01 g1@127@01)))
  :pattern ((Set_in r@131@01 g0@126@01) (Set_in r@131@01 g1@127@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/graphs/static/tests/lists/delete_edge1.vpr@324@14@324@34|)))
(assert (=
  ($Snap.second $t@130@01)
  ($Snap.combine
    ($Snap.first ($Snap.second $t@130@01))
    ($Snap.second ($Snap.second $t@130@01)))))
(assert (= ($Snap.first ($Snap.second $t@130@01)) $Snap.unit))
; [eval] (forall r$0: Ref :: { (r$0 in g0), (r$0 in g1) } (r$0 in g1) ==> !((r$0 in g0)))
(declare-const r$0@132@01 $Ref)
(push) ; 2
; [eval] (r$0 in g1) ==> !((r$0 in g0))
; [eval] (r$0 in g1)
(push) ; 3
; [then-branch: 30 | r$0@132@01 in g1@127@01 | live]
; [else-branch: 30 | !(r$0@132@01 in g1@127@01) | live]
(push) ; 4
; [then-branch: 30 | r$0@132@01 in g1@127@01]
(assert (Set_in r$0@132@01 g1@127@01))
; [eval] !((r$0 in g0))
; [eval] (r$0 in g0)
(pop) ; 4
(push) ; 4
; [else-branch: 30 | !(r$0@132@01 in g1@127@01)]
(assert (not (Set_in r$0@132@01 g1@127@01)))
(pop) ; 4
(pop) ; 3
; Joined path conditions
; Joined path conditions
(assert (or (not (Set_in r$0@132@01 g1@127@01)) (Set_in r$0@132@01 g1@127@01)))
(pop) ; 2
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall ((r$0@132@01 $Ref)) (!
  (or (not (Set_in r$0@132@01 g1@127@01)) (Set_in r$0@132@01 g1@127@01))
  :pattern ((Set_in r$0@132@01 g0@126@01) (Set_in r$0@132@01 g1@127@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/graphs/static/tests/lists/delete_edge1.vpr@324@14@324@34-aux|)))
(assert (forall ((r$0@132@01 $Ref)) (!
  (=> (Set_in r$0@132@01 g1@127@01) (not (Set_in r$0@132@01 g0@126@01)))
  :pattern ((Set_in r$0@132@01 g0@126@01) (Set_in r$0@132@01 g1@127@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/graphs/static/tests/lists/delete_edge1.vpr@324@14@324@34|)))
(assert (=
  ($Snap.second ($Snap.second $t@130@01))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second $t@130@01)))
    ($Snap.second ($Snap.second ($Snap.second $t@130@01))))))
(assert (= ($Snap.first ($Snap.second ($Snap.second $t@130@01))) $Snap.unit))
; [eval] !((null in (g0 union g1)))
; [eval] (null in (g0 union g1))
; [eval] (g0 union g1)
(assert (not (Set_in $Ref.null (Set_union g0@126@01 g1@127@01))))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second $t@130@01)))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@130@01))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@130@01)))))))
(declare-const n@133@01 $Ref)
(push) ; 2
; [eval] (n in (g0 union g1))
; [eval] (g0 union g1)
(assert (Set_in n@133@01 (Set_union g0@126@01 g1@127@01)))
(declare-const sm@134@01 $FVF<next>)
; Definitional axioms for snapshot map values
(pop) ; 2
(declare-fun inv@135@01 ($Ref) $Ref)
(declare-fun img@136@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
; Check receiver injectivity
(push) ; 2
(assert (not (forall ((n1@133@01 $Ref) (n2@133@01 $Ref)) (!
  (=>
    (and
      (Set_in n1@133@01 (Set_union g0@126@01 g1@127@01))
      (Set_in n2@133@01 (Set_union g0@126@01 g1@127@01))
      (= n1@133@01 n2@133@01))
    (= n1@133@01 n2@133@01))
  
  :qid |next-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 2
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((n@133@01 $Ref)) (!
  (=>
    (Set_in n@133@01 (Set_union g0@126@01 g1@127@01))
    (and (= (inv@135@01 n@133@01) n@133@01) (img@136@01 n@133@01)))
  :pattern (($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@130@01))))) n@133@01) n@133@01))
  :qid |quant-u-14286|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@136@01 r) (Set_in (inv@135@01 r) (Set_union g0@126@01 g1@127@01)))
    (= (inv@135@01 r) r))
  :pattern ((inv@135@01 r))
  :qid |next-fctOfInv|)))
; Permissions are non-negative
; Field permissions are at most one
; Permission implies non-null receiver
(assert (forall ((n@133@01 $Ref)) (!
  (=>
    (Set_in n@133@01 (Set_union g0@126@01 g1@127@01))
    (not (= n@133@01 $Ref.null)))
  :pattern (($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@130@01))))) n@133@01) n@133@01))
  :qid |next-permImpliesNonNull|)))
(declare-const sm@137@01 $FVF<next>)
; Definitional axioms for snapshot map values
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@136@01 r) (Set_in (inv@135@01 r) (Set_union g0@126@01 g1@127@01)))
    (=
      ($FVF.lookup_next (as sm@137@01  $FVF<next>) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@130@01))))) r)))
  :pattern (($FVF.lookup_next (as sm@137@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@130@01))))) r))
  :qid |qp.fvfValDef107|)))
(assert (forall ((r $Ref)) (!
  ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@130@01))))) r) r)
  :pattern (($FVF.lookup_next (as sm@137@01  $FVF<next>) r))
  :qid |qp.fvfResTrgDef108|)))
(assert (forall ((r $Ref)) (!
  (=>
    (Set_in (inv@135@01 r) (Set_union g0@126@01 g1@127@01))
    ($FVF.loc_next ($FVF.lookup_next (as sm@137@01  $FVF<next>) r) r))
  :pattern ((inv@135@01 r))
  :qid |quant-u-14287|)))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@130@01))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@130@01)))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@130@01))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@130@01)))))
  $Snap.unit))
; [eval] (forall n$0: Ref :: { (n$0.next in (g0 union g1)) } { (n$0 in (g0 union g1)), n$0.next } (n$0 in (g0 union g1)) && n$0.next != null ==> (n$0.next in (g0 union g1)))
(declare-const n$0@138@01 $Ref)
(push) ; 2
; [eval] (n$0 in (g0 union g1)) && n$0.next != null ==> (n$0.next in (g0 union g1))
; [eval] (n$0 in (g0 union g1)) && n$0.next != null
; [eval] (n$0 in (g0 union g1))
; [eval] (g0 union g1)
(push) ; 3
; [then-branch: 31 | !(n$0@138@01 in g0@126@01 ∪ g1@127@01) | live]
; [else-branch: 31 | n$0@138@01 in g0@126@01 ∪ g1@127@01 | live]
(push) ; 4
; [then-branch: 31 | !(n$0@138@01 in g0@126@01 ∪ g1@127@01)]
(assert (not (Set_in n$0@138@01 (Set_union g0@126@01 g1@127@01))))
(pop) ; 4
(push) ; 4
; [else-branch: 31 | n$0@138@01 in g0@126@01 ∪ g1@127@01]
(assert (Set_in n$0@138@01 (Set_union g0@126@01 g1@127@01)))
; [eval] n$0.next != null
(assert (and
  (forall ((r $Ref)) (!
    (=>
      (and
        (img@136@01 r)
        (Set_in (inv@135@01 r) (Set_union g0@126@01 g1@127@01)))
      (=
        ($FVF.lookup_next (as sm@137@01  $FVF<next>) r)
        ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@130@01))))) r)))
    :pattern (($FVF.lookup_next (as sm@137@01  $FVF<next>) r))
    :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@130@01))))) r))
    :qid |qp.fvfValDef107|))
  (forall ((r $Ref)) (!
    ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@130@01))))) r) r)
    :pattern (($FVF.lookup_next (as sm@137@01  $FVF<next>) r))
    :qid |qp.fvfResTrgDef108|))))
(assert ($FVF.loc_next ($FVF.lookup_next (as sm@137@01  $FVF<next>) n$0@138@01) n$0@138@01))
(push) ; 5
(assert (not (and
  (img@136@01 n$0@138@01)
  (Set_in (inv@135@01 n$0@138@01) (Set_union g0@126@01 g1@127@01)))))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(pop) ; 4
(pop) ; 3
; Joined path conditions
; Joined path conditions
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@136@01 r) (Set_in (inv@135@01 r) (Set_union g0@126@01 g1@127@01)))
    (=
      ($FVF.lookup_next (as sm@137@01  $FVF<next>) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@130@01))))) r)))
  :pattern (($FVF.lookup_next (as sm@137@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@130@01))))) r))
  :qid |qp.fvfValDef107|)))
(assert (forall ((r $Ref)) (!
  ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@130@01))))) r) r)
  :pattern (($FVF.lookup_next (as sm@137@01  $FVF<next>) r))
  :qid |qp.fvfResTrgDef108|)))
(assert (=>
  (Set_in n$0@138@01 (Set_union g0@126@01 g1@127@01))
  (and
    (Set_in n$0@138@01 (Set_union g0@126@01 g1@127@01))
    ($FVF.loc_next ($FVF.lookup_next (as sm@137@01  $FVF<next>) n$0@138@01) n$0@138@01))))
(assert (or
  (Set_in n$0@138@01 (Set_union g0@126@01 g1@127@01))
  (not (Set_in n$0@138@01 (Set_union g0@126@01 g1@127@01)))))
(push) ; 3
; [then-branch: 32 | n$0@138@01 in g0@126@01 ∪ g1@127@01 && Lookup(next, sm@137@01, n$0@138@01) != Null | live]
; [else-branch: 32 | !(n$0@138@01 in g0@126@01 ∪ g1@127@01 && Lookup(next, sm@137@01, n$0@138@01) != Null) | live]
(push) ; 4
; [then-branch: 32 | n$0@138@01 in g0@126@01 ∪ g1@127@01 && Lookup(next, sm@137@01, n$0@138@01) != Null]
(assert (and
  (Set_in n$0@138@01 (Set_union g0@126@01 g1@127@01))
  (not (= ($FVF.lookup_next (as sm@137@01  $FVF<next>) n$0@138@01) $Ref.null))))
; [eval] (n$0.next in (g0 union g1))
(assert (and
  (forall ((r $Ref)) (!
    (=>
      (and
        (img@136@01 r)
        (Set_in (inv@135@01 r) (Set_union g0@126@01 g1@127@01)))
      (=
        ($FVF.lookup_next (as sm@137@01  $FVF<next>) r)
        ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@130@01))))) r)))
    :pattern (($FVF.lookup_next (as sm@137@01  $FVF<next>) r))
    :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@130@01))))) r))
    :qid |qp.fvfValDef107|))
  (forall ((r $Ref)) (!
    ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@130@01))))) r) r)
    :pattern (($FVF.lookup_next (as sm@137@01  $FVF<next>) r))
    :qid |qp.fvfResTrgDef108|))))
(assert ($FVF.loc_next ($FVF.lookup_next (as sm@137@01  $FVF<next>) n$0@138@01) n$0@138@01))
(push) ; 5
(assert (not (and
  (img@136@01 n$0@138@01)
  (Set_in (inv@135@01 n$0@138@01) (Set_union g0@126@01 g1@127@01)))))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
; [eval] (g0 union g1)
(pop) ; 4
(push) ; 4
; [else-branch: 32 | !(n$0@138@01 in g0@126@01 ∪ g1@127@01 && Lookup(next, sm@137@01, n$0@138@01) != Null)]
(assert (not
  (and
    (Set_in n$0@138@01 (Set_union g0@126@01 g1@127@01))
    (not (= ($FVF.lookup_next (as sm@137@01  $FVF<next>) n$0@138@01) $Ref.null)))))
(pop) ; 4
(pop) ; 3
; Joined path conditions
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@136@01 r) (Set_in (inv@135@01 r) (Set_union g0@126@01 g1@127@01)))
    (=
      ($FVF.lookup_next (as sm@137@01  $FVF<next>) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@130@01))))) r)))
  :pattern (($FVF.lookup_next (as sm@137@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@130@01))))) r))
  :qid |qp.fvfValDef107|)))
(assert (forall ((r $Ref)) (!
  ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@130@01))))) r) r)
  :pattern (($FVF.lookup_next (as sm@137@01  $FVF<next>) r))
  :qid |qp.fvfResTrgDef108|)))
(assert (=>
  (and
    (Set_in n$0@138@01 (Set_union g0@126@01 g1@127@01))
    (not (= ($FVF.lookup_next (as sm@137@01  $FVF<next>) n$0@138@01) $Ref.null)))
  (and
    (Set_in n$0@138@01 (Set_union g0@126@01 g1@127@01))
    (not (= ($FVF.lookup_next (as sm@137@01  $FVF<next>) n$0@138@01) $Ref.null))
    ($FVF.loc_next ($FVF.lookup_next (as sm@137@01  $FVF<next>) n$0@138@01) n$0@138@01))))
; Joined path conditions
(assert (or
  (not
    (and
      (Set_in n$0@138@01 (Set_union g0@126@01 g1@127@01))
      (not
        (= ($FVF.lookup_next (as sm@137@01  $FVF<next>) n$0@138@01) $Ref.null))))
  (and
    (Set_in n$0@138@01 (Set_union g0@126@01 g1@127@01))
    (not (= ($FVF.lookup_next (as sm@137@01  $FVF<next>) n$0@138@01) $Ref.null)))))
; Definitional axioms for snapshot map values
(pop) ; 2
; Nested auxiliary terms: globals (aux)
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@136@01 r) (Set_in (inv@135@01 r) (Set_union g0@126@01 g1@127@01)))
    (=
      ($FVF.lookup_next (as sm@137@01  $FVF<next>) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@130@01))))) r)))
  :pattern (($FVF.lookup_next (as sm@137@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@130@01))))) r))
  :qid |qp.fvfValDef107|)))
(assert (forall ((r $Ref)) (!
  ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@130@01))))) r) r)
  :pattern (($FVF.lookup_next (as sm@137@01  $FVF<next>) r))
  :qid |qp.fvfResTrgDef108|)))
; Nested auxiliary terms: non-globals (aux)
(assert (forall ((n$0@138@01 $Ref)) (!
  (and
    (=>
      (Set_in n$0@138@01 (Set_union g0@126@01 g1@127@01))
      (and
        (Set_in n$0@138@01 (Set_union g0@126@01 g1@127@01))
        ($FVF.loc_next ($FVF.lookup_next (as sm@137@01  $FVF<next>) n$0@138@01) n$0@138@01)))
    (or
      (Set_in n$0@138@01 (Set_union g0@126@01 g1@127@01))
      (not (Set_in n$0@138@01 (Set_union g0@126@01 g1@127@01))))
    (=>
      (and
        (Set_in n$0@138@01 (Set_union g0@126@01 g1@127@01))
        (not
          (= ($FVF.lookup_next (as sm@137@01  $FVF<next>) n$0@138@01) $Ref.null)))
      (and
        (Set_in n$0@138@01 (Set_union g0@126@01 g1@127@01))
        (not
          (= ($FVF.lookup_next (as sm@137@01  $FVF<next>) n$0@138@01) $Ref.null))
        ($FVF.loc_next ($FVF.lookup_next (as sm@137@01  $FVF<next>) n$0@138@01) n$0@138@01)))
    (or
      (not
        (and
          (Set_in n$0@138@01 (Set_union g0@126@01 g1@127@01))
          (not
            (=
              ($FVF.lookup_next (as sm@137@01  $FVF<next>) n$0@138@01)
              $Ref.null))))
      (and
        (Set_in n$0@138@01 (Set_union g0@126@01 g1@127@01))
        (not
          (= ($FVF.lookup_next (as sm@137@01  $FVF<next>) n$0@138@01) $Ref.null)))))
  :pattern ((Set_in ($FVF.lookup_next (as sm@137@01  $FVF<next>) n$0@138@01) (Set_union g0@126@01 g1@127@01)))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/graphs/static/tests/lists/delete_edge1.vpr@325@14@325@32-aux|)))
(assert (forall ((n$0@138@01 $Ref)) (!
  (and
    (=>
      (Set_in n$0@138@01 (Set_union g0@126@01 g1@127@01))
      (and
        (Set_in n$0@138@01 (Set_union g0@126@01 g1@127@01))
        ($FVF.loc_next ($FVF.lookup_next (as sm@137@01  $FVF<next>) n$0@138@01) n$0@138@01)))
    (or
      (Set_in n$0@138@01 (Set_union g0@126@01 g1@127@01))
      (not (Set_in n$0@138@01 (Set_union g0@126@01 g1@127@01))))
    (=>
      (and
        (Set_in n$0@138@01 (Set_union g0@126@01 g1@127@01))
        (not
          (= ($FVF.lookup_next (as sm@137@01  $FVF<next>) n$0@138@01) $Ref.null)))
      (and
        (Set_in n$0@138@01 (Set_union g0@126@01 g1@127@01))
        (not
          (= ($FVF.lookup_next (as sm@137@01  $FVF<next>) n$0@138@01) $Ref.null))
        ($FVF.loc_next ($FVF.lookup_next (as sm@137@01  $FVF<next>) n$0@138@01) n$0@138@01)))
    (or
      (not
        (and
          (Set_in n$0@138@01 (Set_union g0@126@01 g1@127@01))
          (not
            (=
              ($FVF.lookup_next (as sm@137@01  $FVF<next>) n$0@138@01)
              $Ref.null))))
      (and
        (Set_in n$0@138@01 (Set_union g0@126@01 g1@127@01))
        (not
          (= ($FVF.lookup_next (as sm@137@01  $FVF<next>) n$0@138@01) $Ref.null)))))
  :pattern ((Set_in n$0@138@01 (Set_union g0@126@01 g1@127@01)) ($FVF.loc_next ($FVF.lookup_next (as sm@137@01  $FVF<next>) n$0@138@01) n$0@138@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/graphs/static/tests/lists/delete_edge1.vpr@325@14@325@32-aux|)))
(assert (forall ((n$0@138@01 $Ref)) (!
  (=>
    (and
      (Set_in n$0@138@01 (Set_union g0@126@01 g1@127@01))
      (not
        (= ($FVF.lookup_next (as sm@137@01  $FVF<next>) n$0@138@01) $Ref.null)))
    (Set_in ($FVF.lookup_next (as sm@137@01  $FVF<next>) n$0@138@01) (Set_union g0@126@01 g1@127@01)))
  :pattern ((Set_in ($FVF.lookup_next (as sm@137@01  $FVF<next>) n$0@138@01) (Set_union g0@126@01 g1@127@01)))
  :pattern ((Set_in n$0@138@01 (Set_union g0@126@01 g1@127@01)) ($FVF.loc_next ($FVF.lookup_next (as sm@137@01  $FVF<next>) n$0@138@01) n$0@138@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/graphs/static/tests/lists/delete_edge1.vpr@325@14@325@32|)))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@130@01)))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@130@01))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@130@01)))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@130@01))))))
  $Snap.unit))
; [eval] (x0 in g0)
(assert (Set_in x0@128@01 g0@126@01))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@130@01))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@130@01)))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@130@01))))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@130@01)))))))
  $Snap.unit))
; [eval] (x1 in g1)
(assert (Set_in x1@129@01 g1@127@01))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@130@01)))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@130@01))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@130@01)))))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@130@01))))))))
  $Snap.unit))
; [eval] (forall n$1: Ref :: { exists_path($$(g0), n$1, x0) } (n$1 in g0) ==> exists_path($$(g0), n$1, x0))
(declare-const n$1@139@01 $Ref)
(push) ; 2
; [eval] (n$1 in g0) ==> exists_path($$(g0), n$1, x0)
; [eval] (n$1 in g0)
(push) ; 3
; [then-branch: 33 | n$1@139@01 in g0@126@01 | live]
; [else-branch: 33 | !(n$1@139@01 in g0@126@01) | live]
(push) ; 4
; [then-branch: 33 | n$1@139@01 in g0@126@01]
(assert (Set_in n$1@139@01 g0@126@01))
; [eval] exists_path($$(g0), n$1, x0)
; [eval] $$(g0)
(push) ; 5
(declare-const n@140@01 $Ref)
(push) ; 6
; [eval] (n in refs)
(assert (Set_in n@140@01 g0@126@01))
(pop) ; 6
(declare-fun inv@141@01 ($Ref) $Ref)
(declare-fun img@142@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
; Definitional axioms for snapshot map domain
; Definitional axioms for snapshot map values
; Check receiver injectivity
(push) ; 6
(assert (not (forall ((n1@140@01 $Ref) (n2@140@01 $Ref)) (!
  (=>
    (and
      (and
        (Set_in n1@140@01 g0@126@01)
        ($FVF.loc_next ($FVF.lookup_next (as sm@137@01  $FVF<next>) n1@140@01) n1@140@01))
      (and
        (Set_in n2@140@01 g0@126@01)
        ($FVF.loc_next ($FVF.lookup_next (as sm@137@01  $FVF<next>) n2@140@01) n2@140@01))
      (= n1@140@01 n2@140@01))
    (= n1@140@01 n2@140@01))
  
  :qid |next-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((n@140@01 $Ref)) (!
  (=>
    (Set_in n@140@01 g0@126@01)
    (and (= (inv@141@01 n@140@01) n@140@01) (img@142@01 n@140@01)))
  :pattern ((Set_in n@140@01 g0@126@01))
  :pattern ((inv@141@01 n@140@01))
  :pattern ((img@142@01 n@140@01))
  :qid |next-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@142@01 r) (Set_in (inv@141@01 r) g0@126@01))
    (= (inv@141@01 r) r))
  :pattern ((inv@141@01 r))
  :qid |next-fctOfInv|)))
(assert (forall ((r $Ref)) (!
  (=>
    (Set_in (inv@141@01 r) g0@126@01)
    ($FVF.loc_next ($FVF.lookup_next (as sm@137@01  $FVF<next>) r) r))
  :pattern ((inv@141@01 r))
  :qid |quant-u-14289|)))
(push) ; 6
(assert (not (forall ((r $Ref)) (!
  (=>
    (and (Set_in (inv@141@01 r) g0@126@01) (img@142@01 r) (= r (inv@141@01 r)))
    (>
      (ite
        (and
          (img@136@01 r)
          (Set_in (inv@135@01 r) (Set_union g0@126@01 g1@127@01)))
        $Perm.Write
        $Perm.No)
      $Perm.No))
  
  :qid |quant-u-14290|))))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(declare-const sm@143@01 $FVF<next>)
; Definitional axioms for snapshot map domain
(assert (forall ((r $Ref)) (!
  (and
    (=>
      (Set_in r ($FVF.domain_next (as sm@143@01  $FVF<next>)))
      (and (Set_in (inv@141@01 r) g0@126@01) (img@142@01 r)))
    (=>
      (and (Set_in (inv@141@01 r) g0@126@01) (img@142@01 r))
      (Set_in r ($FVF.domain_next (as sm@143@01  $FVF<next>)))))
  :pattern ((Set_in r ($FVF.domain_next (as sm@143@01  $FVF<next>))))
  :qid |qp.fvfDomDef111|)))
; Definitional axioms for snapshot map values
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and (Set_in (inv@141@01 r) g0@126@01) (img@142@01 r))
      (and
        (img@136@01 r)
        (Set_in (inv@135@01 r) (Set_union g0@126@01 g1@127@01))))
    (=
      ($FVF.lookup_next (as sm@143@01  $FVF<next>) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@130@01))))) r)))
  :pattern (($FVF.lookup_next (as sm@143@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@130@01))))) r))
  :qid |qp.fvfValDef109|)))
(assert (forall ((r $Ref)) (!
  ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@130@01))))) r) r)
  :pattern (($FVF.lookup_next (as sm@143@01  $FVF<next>) r))
  :qid |qp.fvfResTrgDef110|)))
(assert ($$%precondition ($SortWrappers.$FVF<next>To$Snap (as sm@143@01  $FVF<next>)) g0@126@01))
(pop) ; 5
; Joined path conditions
(assert (forall ((n@140@01 $Ref)) (!
  (=>
    (Set_in n@140@01 g0@126@01)
    (and (= (inv@141@01 n@140@01) n@140@01) (img@142@01 n@140@01)))
  :pattern ((Set_in n@140@01 g0@126@01))
  :pattern ((inv@141@01 n@140@01))
  :pattern ((img@142@01 n@140@01))
  :qid |next-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@142@01 r) (Set_in (inv@141@01 r) g0@126@01))
    (= (inv@141@01 r) r))
  :pattern ((inv@141@01 r))
  :qid |next-fctOfInv|)))
(assert (forall ((r $Ref)) (!
  (and
    (=>
      (Set_in r ($FVF.domain_next (as sm@143@01  $FVF<next>)))
      (and (Set_in (inv@141@01 r) g0@126@01) (img@142@01 r)))
    (=>
      (and (Set_in (inv@141@01 r) g0@126@01) (img@142@01 r))
      (Set_in r ($FVF.domain_next (as sm@143@01  $FVF<next>)))))
  :pattern ((Set_in r ($FVF.domain_next (as sm@143@01  $FVF<next>))))
  :qid |qp.fvfDomDef111|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and (Set_in (inv@141@01 r) g0@126@01) (img@142@01 r))
      (and
        (img@136@01 r)
        (Set_in (inv@135@01 r) (Set_union g0@126@01 g1@127@01))))
    (=
      ($FVF.lookup_next (as sm@143@01  $FVF<next>) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@130@01))))) r)))
  :pattern (($FVF.lookup_next (as sm@143@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@130@01))))) r))
  :qid |qp.fvfValDef109|)))
(assert (forall ((r $Ref)) (!
  ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@130@01))))) r) r)
  :pattern (($FVF.lookup_next (as sm@143@01  $FVF<next>) r))
  :qid |qp.fvfResTrgDef110|)))
(assert (and
  (forall ((r $Ref)) (!
    (=>
      (Set_in (inv@141@01 r) g0@126@01)
      ($FVF.loc_next ($FVF.lookup_next (as sm@137@01  $FVF<next>) r) r))
    :pattern ((inv@141@01 r))
    :qid |quant-u-14289|))
  ($$%precondition ($SortWrappers.$FVF<next>To$Snap (as sm@143@01  $FVF<next>)) g0@126@01)))
(pop) ; 4
(push) ; 4
; [else-branch: 33 | !(n$1@139@01 in g0@126@01)]
(assert (not (Set_in n$1@139@01 g0@126@01)))
(pop) ; 4
(pop) ; 3
; Joined path conditions
(assert (forall ((n@140@01 $Ref)) (!
  (=>
    (Set_in n@140@01 g0@126@01)
    (and (= (inv@141@01 n@140@01) n@140@01) (img@142@01 n@140@01)))
  :pattern ((Set_in n@140@01 g0@126@01))
  :pattern ((inv@141@01 n@140@01))
  :pattern ((img@142@01 n@140@01))
  :qid |next-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@142@01 r) (Set_in (inv@141@01 r) g0@126@01))
    (= (inv@141@01 r) r))
  :pattern ((inv@141@01 r))
  :qid |next-fctOfInv|)))
(assert (forall ((r $Ref)) (!
  (and
    (=>
      (Set_in r ($FVF.domain_next (as sm@143@01  $FVF<next>)))
      (and (Set_in (inv@141@01 r) g0@126@01) (img@142@01 r)))
    (=>
      (and (Set_in (inv@141@01 r) g0@126@01) (img@142@01 r))
      (Set_in r ($FVF.domain_next (as sm@143@01  $FVF<next>)))))
  :pattern ((Set_in r ($FVF.domain_next (as sm@143@01  $FVF<next>))))
  :qid |qp.fvfDomDef111|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and (Set_in (inv@141@01 r) g0@126@01) (img@142@01 r))
      (and
        (img@136@01 r)
        (Set_in (inv@135@01 r) (Set_union g0@126@01 g1@127@01))))
    (=
      ($FVF.lookup_next (as sm@143@01  $FVF<next>) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@130@01))))) r)))
  :pattern (($FVF.lookup_next (as sm@143@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@130@01))))) r))
  :qid |qp.fvfValDef109|)))
(assert (forall ((r $Ref)) (!
  ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@130@01))))) r) r)
  :pattern (($FVF.lookup_next (as sm@143@01  $FVF<next>) r))
  :qid |qp.fvfResTrgDef110|)))
(assert (=>
  (Set_in n$1@139@01 g0@126@01)
  (and
    (Set_in n$1@139@01 g0@126@01)
    (forall ((r $Ref)) (!
      (=>
        (Set_in (inv@141@01 r) g0@126@01)
        ($FVF.loc_next ($FVF.lookup_next (as sm@137@01  $FVF<next>) r) r))
      :pattern ((inv@141@01 r))
      :qid |quant-u-14289|))
    ($$%precondition ($SortWrappers.$FVF<next>To$Snap (as sm@143@01  $FVF<next>)) g0@126@01))))
; Joined path conditions
(assert (or (not (Set_in n$1@139@01 g0@126@01)) (Set_in n$1@139@01 g0@126@01)))
(pop) ; 2
; Nested auxiliary terms: globals (aux)
(assert (forall ((n@140@01 $Ref)) (!
  (=>
    (Set_in n@140@01 g0@126@01)
    (and (= (inv@141@01 n@140@01) n@140@01) (img@142@01 n@140@01)))
  :pattern ((Set_in n@140@01 g0@126@01))
  :pattern ((inv@141@01 n@140@01))
  :pattern ((img@142@01 n@140@01))
  :qid |next-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@142@01 r) (Set_in (inv@141@01 r) g0@126@01))
    (= (inv@141@01 r) r))
  :pattern ((inv@141@01 r))
  :qid |next-fctOfInv|)))
(assert (forall ((r $Ref)) (!
  (and
    (=>
      (Set_in r ($FVF.domain_next (as sm@143@01  $FVF<next>)))
      (and (Set_in (inv@141@01 r) g0@126@01) (img@142@01 r)))
    (=>
      (and (Set_in (inv@141@01 r) g0@126@01) (img@142@01 r))
      (Set_in r ($FVF.domain_next (as sm@143@01  $FVF<next>)))))
  :pattern ((Set_in r ($FVF.domain_next (as sm@143@01  $FVF<next>))))
  :qid |qp.fvfDomDef111|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and (Set_in (inv@141@01 r) g0@126@01) (img@142@01 r))
      (and
        (img@136@01 r)
        (Set_in (inv@135@01 r) (Set_union g0@126@01 g1@127@01))))
    (=
      ($FVF.lookup_next (as sm@143@01  $FVF<next>) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@130@01))))) r)))
  :pattern (($FVF.lookup_next (as sm@143@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@130@01))))) r))
  :qid |qp.fvfValDef109|)))
(assert (forall ((r $Ref)) (!
  ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@130@01))))) r) r)
  :pattern (($FVF.lookup_next (as sm@143@01  $FVF<next>) r))
  :qid |qp.fvfResTrgDef110|)))
; Nested auxiliary terms: non-globals (aux)
(assert (forall ((n$1@139@01 $Ref)) (!
  (and
    (=>
      (Set_in n$1@139@01 g0@126@01)
      (and
        (Set_in n$1@139@01 g0@126@01)
        (forall ((r $Ref)) (!
          (=>
            (Set_in (inv@141@01 r) g0@126@01)
            ($FVF.loc_next ($FVF.lookup_next (as sm@137@01  $FVF<next>) r) r))
          :pattern ((inv@141@01 r))
          :qid |quant-u-14289|))
        ($$%precondition ($SortWrappers.$FVF<next>To$Snap (as sm@143@01  $FVF<next>)) g0@126@01)))
    (or (not (Set_in n$1@139@01 g0@126@01)) (Set_in n$1@139@01 g0@126@01)))
  :pattern ((exists_path<Bool> ($$ ($SortWrappers.$FVF<next>To$Snap (as sm@143@01  $FVF<next>)) g0@126@01) n$1@139@01 x0@128@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/graphs/static/tests/lists/delete_edge1.vpr@328@14@328@35-aux|)))
(assert (forall ((n$1@139@01 $Ref)) (!
  (=>
    (Set_in n$1@139@01 g0@126@01)
    (exists_path<Bool> ($$ ($SortWrappers.$FVF<next>To$Snap (as sm@143@01  $FVF<next>)) g0@126@01) n$1@139@01 x0@128@01))
  :pattern ((exists_path<Bool> ($$ ($SortWrappers.$FVF<next>To$Snap (as sm@143@01  $FVF<next>)) g0@126@01) n$1@139@01 x0@128@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/graphs/static/tests/lists/delete_edge1.vpr@328@14@328@35|)))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@130@01))))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@130@01)))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@130@01))))))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@130@01)))))))))
  $Snap.unit))
; [eval] (forall n$2: Ref :: { exists_path($$(g1), x1, n$2) } (n$2 in g1) ==> exists_path($$(g1), x1, n$2))
(declare-const n$2@144@01 $Ref)
(push) ; 2
; [eval] (n$2 in g1) ==> exists_path($$(g1), x1, n$2)
; [eval] (n$2 in g1)
(push) ; 3
; [then-branch: 34 | n$2@144@01 in g1@127@01 | live]
; [else-branch: 34 | !(n$2@144@01 in g1@127@01) | live]
(push) ; 4
; [then-branch: 34 | n$2@144@01 in g1@127@01]
(assert (Set_in n$2@144@01 g1@127@01))
; [eval] exists_path($$(g1), x1, n$2)
; [eval] $$(g1)
(push) ; 5
(declare-const n@145@01 $Ref)
(push) ; 6
; [eval] (n in refs)
(assert (Set_in n@145@01 g1@127@01))
(pop) ; 6
(declare-fun inv@146@01 ($Ref) $Ref)
(declare-fun img@147@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
; Definitional axioms for snapshot map domain
; Definitional axioms for snapshot map values
; Check receiver injectivity
(push) ; 6
(assert (not (forall ((n1@145@01 $Ref) (n2@145@01 $Ref)) (!
  (=>
    (and
      (and
        (Set_in n1@145@01 g1@127@01)
        ($FVF.loc_next ($FVF.lookup_next (as sm@137@01  $FVF<next>) n1@145@01) n1@145@01))
      (and
        (Set_in n2@145@01 g1@127@01)
        ($FVF.loc_next ($FVF.lookup_next (as sm@137@01  $FVF<next>) n2@145@01) n2@145@01))
      (= n1@145@01 n2@145@01))
    (= n1@145@01 n2@145@01))
  
  :qid |next-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((n@145@01 $Ref)) (!
  (=>
    (Set_in n@145@01 g1@127@01)
    (and (= (inv@146@01 n@145@01) n@145@01) (img@147@01 n@145@01)))
  :pattern ((Set_in n@145@01 g1@127@01))
  :pattern ((inv@146@01 n@145@01))
  :pattern ((img@147@01 n@145@01))
  :qid |next-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@147@01 r) (Set_in (inv@146@01 r) g1@127@01))
    (= (inv@146@01 r) r))
  :pattern ((inv@146@01 r))
  :qid |next-fctOfInv|)))
(assert (forall ((r $Ref)) (!
  (=>
    (Set_in (inv@146@01 r) g1@127@01)
    ($FVF.loc_next ($FVF.lookup_next (as sm@137@01  $FVF<next>) r) r))
  :pattern ((inv@146@01 r))
  :qid |quant-u-14292|)))
(push) ; 6
(assert (not (forall ((r $Ref)) (!
  (=>
    (and (Set_in (inv@146@01 r) g1@127@01) (img@147@01 r) (= r (inv@146@01 r)))
    (>
      (ite
        (and
          (img@136@01 r)
          (Set_in (inv@135@01 r) (Set_union g0@126@01 g1@127@01)))
        $Perm.Write
        $Perm.No)
      $Perm.No))
  
  :qid |quant-u-14293|))))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(declare-const sm@148@01 $FVF<next>)
; Definitional axioms for snapshot map domain
(assert (forall ((r $Ref)) (!
  (and
    (=>
      (Set_in r ($FVF.domain_next (as sm@148@01  $FVF<next>)))
      (and (Set_in (inv@146@01 r) g1@127@01) (img@147@01 r)))
    (=>
      (and (Set_in (inv@146@01 r) g1@127@01) (img@147@01 r))
      (Set_in r ($FVF.domain_next (as sm@148@01  $FVF<next>)))))
  :pattern ((Set_in r ($FVF.domain_next (as sm@148@01  $FVF<next>))))
  :qid |qp.fvfDomDef114|)))
; Definitional axioms for snapshot map values
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and (Set_in (inv@146@01 r) g1@127@01) (img@147@01 r))
      (and
        (img@136@01 r)
        (Set_in (inv@135@01 r) (Set_union g0@126@01 g1@127@01))))
    (=
      ($FVF.lookup_next (as sm@148@01  $FVF<next>) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@130@01))))) r)))
  :pattern (($FVF.lookup_next (as sm@148@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@130@01))))) r))
  :qid |qp.fvfValDef112|)))
(assert (forall ((r $Ref)) (!
  ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@130@01))))) r) r)
  :pattern (($FVF.lookup_next (as sm@148@01  $FVF<next>) r))
  :qid |qp.fvfResTrgDef113|)))
(assert ($$%precondition ($SortWrappers.$FVF<next>To$Snap (as sm@148@01  $FVF<next>)) g1@127@01))
(pop) ; 5
; Joined path conditions
(assert (forall ((n@145@01 $Ref)) (!
  (=>
    (Set_in n@145@01 g1@127@01)
    (and (= (inv@146@01 n@145@01) n@145@01) (img@147@01 n@145@01)))
  :pattern ((Set_in n@145@01 g1@127@01))
  :pattern ((inv@146@01 n@145@01))
  :pattern ((img@147@01 n@145@01))
  :qid |next-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@147@01 r) (Set_in (inv@146@01 r) g1@127@01))
    (= (inv@146@01 r) r))
  :pattern ((inv@146@01 r))
  :qid |next-fctOfInv|)))
(assert (forall ((r $Ref)) (!
  (and
    (=>
      (Set_in r ($FVF.domain_next (as sm@148@01  $FVF<next>)))
      (and (Set_in (inv@146@01 r) g1@127@01) (img@147@01 r)))
    (=>
      (and (Set_in (inv@146@01 r) g1@127@01) (img@147@01 r))
      (Set_in r ($FVF.domain_next (as sm@148@01  $FVF<next>)))))
  :pattern ((Set_in r ($FVF.domain_next (as sm@148@01  $FVF<next>))))
  :qid |qp.fvfDomDef114|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and (Set_in (inv@146@01 r) g1@127@01) (img@147@01 r))
      (and
        (img@136@01 r)
        (Set_in (inv@135@01 r) (Set_union g0@126@01 g1@127@01))))
    (=
      ($FVF.lookup_next (as sm@148@01  $FVF<next>) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@130@01))))) r)))
  :pattern (($FVF.lookup_next (as sm@148@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@130@01))))) r))
  :qid |qp.fvfValDef112|)))
(assert (forall ((r $Ref)) (!
  ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@130@01))))) r) r)
  :pattern (($FVF.lookup_next (as sm@148@01  $FVF<next>) r))
  :qid |qp.fvfResTrgDef113|)))
(assert (and
  (forall ((r $Ref)) (!
    (=>
      (Set_in (inv@146@01 r) g1@127@01)
      ($FVF.loc_next ($FVF.lookup_next (as sm@137@01  $FVF<next>) r) r))
    :pattern ((inv@146@01 r))
    :qid |quant-u-14292|))
  ($$%precondition ($SortWrappers.$FVF<next>To$Snap (as sm@148@01  $FVF<next>)) g1@127@01)))
(pop) ; 4
(push) ; 4
; [else-branch: 34 | !(n$2@144@01 in g1@127@01)]
(assert (not (Set_in n$2@144@01 g1@127@01)))
(pop) ; 4
(pop) ; 3
; Joined path conditions
(assert (forall ((n@145@01 $Ref)) (!
  (=>
    (Set_in n@145@01 g1@127@01)
    (and (= (inv@146@01 n@145@01) n@145@01) (img@147@01 n@145@01)))
  :pattern ((Set_in n@145@01 g1@127@01))
  :pattern ((inv@146@01 n@145@01))
  :pattern ((img@147@01 n@145@01))
  :qid |next-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@147@01 r) (Set_in (inv@146@01 r) g1@127@01))
    (= (inv@146@01 r) r))
  :pattern ((inv@146@01 r))
  :qid |next-fctOfInv|)))
(assert (forall ((r $Ref)) (!
  (and
    (=>
      (Set_in r ($FVF.domain_next (as sm@148@01  $FVF<next>)))
      (and (Set_in (inv@146@01 r) g1@127@01) (img@147@01 r)))
    (=>
      (and (Set_in (inv@146@01 r) g1@127@01) (img@147@01 r))
      (Set_in r ($FVF.domain_next (as sm@148@01  $FVF<next>)))))
  :pattern ((Set_in r ($FVF.domain_next (as sm@148@01  $FVF<next>))))
  :qid |qp.fvfDomDef114|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and (Set_in (inv@146@01 r) g1@127@01) (img@147@01 r))
      (and
        (img@136@01 r)
        (Set_in (inv@135@01 r) (Set_union g0@126@01 g1@127@01))))
    (=
      ($FVF.lookup_next (as sm@148@01  $FVF<next>) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@130@01))))) r)))
  :pattern (($FVF.lookup_next (as sm@148@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@130@01))))) r))
  :qid |qp.fvfValDef112|)))
(assert (forall ((r $Ref)) (!
  ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@130@01))))) r) r)
  :pattern (($FVF.lookup_next (as sm@148@01  $FVF<next>) r))
  :qid |qp.fvfResTrgDef113|)))
(assert (=>
  (Set_in n$2@144@01 g1@127@01)
  (and
    (Set_in n$2@144@01 g1@127@01)
    (forall ((r $Ref)) (!
      (=>
        (Set_in (inv@146@01 r) g1@127@01)
        ($FVF.loc_next ($FVF.lookup_next (as sm@137@01  $FVF<next>) r) r))
      :pattern ((inv@146@01 r))
      :qid |quant-u-14292|))
    ($$%precondition ($SortWrappers.$FVF<next>To$Snap (as sm@148@01  $FVF<next>)) g1@127@01))))
; Joined path conditions
(assert (or (not (Set_in n$2@144@01 g1@127@01)) (Set_in n$2@144@01 g1@127@01)))
(pop) ; 2
; Nested auxiliary terms: globals (aux)
(assert (forall ((n@145@01 $Ref)) (!
  (=>
    (Set_in n@145@01 g1@127@01)
    (and (= (inv@146@01 n@145@01) n@145@01) (img@147@01 n@145@01)))
  :pattern ((Set_in n@145@01 g1@127@01))
  :pattern ((inv@146@01 n@145@01))
  :pattern ((img@147@01 n@145@01))
  :qid |next-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@147@01 r) (Set_in (inv@146@01 r) g1@127@01))
    (= (inv@146@01 r) r))
  :pattern ((inv@146@01 r))
  :qid |next-fctOfInv|)))
(assert (forall ((r $Ref)) (!
  (and
    (=>
      (Set_in r ($FVF.domain_next (as sm@148@01  $FVF<next>)))
      (and (Set_in (inv@146@01 r) g1@127@01) (img@147@01 r)))
    (=>
      (and (Set_in (inv@146@01 r) g1@127@01) (img@147@01 r))
      (Set_in r ($FVF.domain_next (as sm@148@01  $FVF<next>)))))
  :pattern ((Set_in r ($FVF.domain_next (as sm@148@01  $FVF<next>))))
  :qid |qp.fvfDomDef114|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and (Set_in (inv@146@01 r) g1@127@01) (img@147@01 r))
      (and
        (img@136@01 r)
        (Set_in (inv@135@01 r) (Set_union g0@126@01 g1@127@01))))
    (=
      ($FVF.lookup_next (as sm@148@01  $FVF<next>) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@130@01))))) r)))
  :pattern (($FVF.lookup_next (as sm@148@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@130@01))))) r))
  :qid |qp.fvfValDef112|)))
(assert (forall ((r $Ref)) (!
  ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@130@01))))) r) r)
  :pattern (($FVF.lookup_next (as sm@148@01  $FVF<next>) r))
  :qid |qp.fvfResTrgDef113|)))
; Nested auxiliary terms: non-globals (aux)
(assert (forall ((n$2@144@01 $Ref)) (!
  (and
    (=>
      (Set_in n$2@144@01 g1@127@01)
      (and
        (Set_in n$2@144@01 g1@127@01)
        (forall ((r $Ref)) (!
          (=>
            (Set_in (inv@146@01 r) g1@127@01)
            ($FVF.loc_next ($FVF.lookup_next (as sm@137@01  $FVF<next>) r) r))
          :pattern ((inv@146@01 r))
          :qid |quant-u-14292|))
        ($$%precondition ($SortWrappers.$FVF<next>To$Snap (as sm@148@01  $FVF<next>)) g1@127@01)))
    (or (not (Set_in n$2@144@01 g1@127@01)) (Set_in n$2@144@01 g1@127@01)))
  :pattern ((exists_path<Bool> ($$ ($SortWrappers.$FVF<next>To$Snap (as sm@148@01  $FVF<next>)) g1@127@01) x1@129@01 n$2@144@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/graphs/static/tests/lists/delete_edge1.vpr@329@14@329@35-aux|)))
(assert (forall ((n$2@144@01 $Ref)) (!
  (=>
    (Set_in n$2@144@01 g1@127@01)
    (exists_path<Bool> ($$ ($SortWrappers.$FVF<next>To$Snap (as sm@148@01  $FVF<next>)) g1@127@01) x1@129@01 n$2@144@01))
  :pattern ((exists_path<Bool> ($$ ($SortWrappers.$FVF<next>To$Snap (as sm@148@01  $FVF<next>)) g1@127@01) x1@129@01 n$2@144@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/graphs/static/tests/lists/delete_edge1.vpr@329@14@329@35|)))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@130@01)))))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@130@01))))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@130@01)))))))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@130@01))))))))))
  $Snap.unit))
; [eval] (forall n: Ref, m: Ref :: { (n in g0), (m in g1) } (n in g0) && (m in g1) ==> edge($$((g0 union g1)), n, m) == (n == x0 && m == x1))
(declare-const n@149@01 $Ref)
(declare-const m@150@01 $Ref)
(push) ; 2
; [eval] (n in g0) && (m in g1) ==> edge($$((g0 union g1)), n, m) == (n == x0 && m == x1)
; [eval] (n in g0) && (m in g1)
; [eval] (n in g0)
(push) ; 3
; [then-branch: 35 | !(n@149@01 in g0@126@01) | live]
; [else-branch: 35 | n@149@01 in g0@126@01 | live]
(push) ; 4
; [then-branch: 35 | !(n@149@01 in g0@126@01)]
(assert (not (Set_in n@149@01 g0@126@01)))
(pop) ; 4
(push) ; 4
; [else-branch: 35 | n@149@01 in g0@126@01]
(assert (Set_in n@149@01 g0@126@01))
; [eval] (m in g1)
(pop) ; 4
(pop) ; 3
; Joined path conditions
; Joined path conditions
(assert (or (Set_in n@149@01 g0@126@01) (not (Set_in n@149@01 g0@126@01))))
(push) ; 3
; [then-branch: 36 | n@149@01 in g0@126@01 && m@150@01 in g1@127@01 | live]
; [else-branch: 36 | !(n@149@01 in g0@126@01 && m@150@01 in g1@127@01) | live]
(push) ; 4
; [then-branch: 36 | n@149@01 in g0@126@01 && m@150@01 in g1@127@01]
(assert (and (Set_in n@149@01 g0@126@01) (Set_in m@150@01 g1@127@01)))
; [eval] edge($$((g0 union g1)), n, m) == (n == x0 && m == x1)
; [eval] edge($$((g0 union g1)), n, m)
; [eval] $$((g0 union g1))
; [eval] (g0 union g1)
(push) ; 5
(declare-const n@151@01 $Ref)
(push) ; 6
; [eval] (n in refs)
(assert (Set_in n@151@01 (Set_union g0@126@01 g1@127@01)))
(pop) ; 6
(declare-fun inv@152@01 ($Ref) $Ref)
(declare-fun img@153@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
; Definitional axioms for snapshot map domain
; Definitional axioms for snapshot map values
; Check receiver injectivity
(push) ; 6
(assert (not (forall ((n1@151@01 $Ref) (n2@151@01 $Ref)) (!
  (=>
    (and
      (and
        (Set_in n1@151@01 (Set_union g0@126@01 g1@127@01))
        ($FVF.loc_next ($FVF.lookup_next (as sm@137@01  $FVF<next>) n1@151@01) n1@151@01))
      (and
        (Set_in n2@151@01 (Set_union g0@126@01 g1@127@01))
        ($FVF.loc_next ($FVF.lookup_next (as sm@137@01  $FVF<next>) n2@151@01) n2@151@01))
      (= n1@151@01 n2@151@01))
    (= n1@151@01 n2@151@01))
  
  :qid |next-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((n@151@01 $Ref)) (!
  (=>
    (Set_in n@151@01 (Set_union g0@126@01 g1@127@01))
    (and (= (inv@152@01 n@151@01) n@151@01) (img@153@01 n@151@01)))
  :pattern ((Set_in n@151@01 (Set_union g0@126@01 g1@127@01)))
  :pattern ((inv@152@01 n@151@01))
  :pattern ((img@153@01 n@151@01))
  :qid |next-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@153@01 r) (Set_in (inv@152@01 r) (Set_union g0@126@01 g1@127@01)))
    (= (inv@152@01 r) r))
  :pattern ((inv@152@01 r))
  :qid |next-fctOfInv|)))
(assert (forall ((r $Ref)) (!
  (=>
    (Set_in (inv@152@01 r) (Set_union g0@126@01 g1@127@01))
    ($FVF.loc_next ($FVF.lookup_next (as sm@137@01  $FVF<next>) r) r))
  :pattern ((inv@152@01 r))
  :qid |quant-u-14295|)))
(push) ; 6
(assert (not (forall ((r $Ref)) (!
  (=>
    (and
      (Set_in (inv@152@01 r) (Set_union g0@126@01 g1@127@01))
      (img@153@01 r)
      (= r (inv@152@01 r)))
    (>
      (ite
        (and
          (img@136@01 r)
          (Set_in (inv@135@01 r) (Set_union g0@126@01 g1@127@01)))
        $Perm.Write
        $Perm.No)
      $Perm.No))
  
  :qid |quant-u-14296|))))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(declare-const sm@154@01 $FVF<next>)
; Definitional axioms for snapshot map domain
(assert (forall ((r $Ref)) (!
  (and
    (=>
      (Set_in r ($FVF.domain_next (as sm@154@01  $FVF<next>)))
      (and
        (Set_in (inv@152@01 r) (Set_union g0@126@01 g1@127@01))
        (img@153@01 r)))
    (=>
      (and
        (Set_in (inv@152@01 r) (Set_union g0@126@01 g1@127@01))
        (img@153@01 r))
      (Set_in r ($FVF.domain_next (as sm@154@01  $FVF<next>)))))
  :pattern ((Set_in r ($FVF.domain_next (as sm@154@01  $FVF<next>))))
  :qid |qp.fvfDomDef117|)))
; Definitional axioms for snapshot map values
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and
        (Set_in (inv@152@01 r) (Set_union g0@126@01 g1@127@01))
        (img@153@01 r))
      (and
        (img@136@01 r)
        (Set_in (inv@135@01 r) (Set_union g0@126@01 g1@127@01))))
    (=
      ($FVF.lookup_next (as sm@154@01  $FVF<next>) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@130@01))))) r)))
  :pattern (($FVF.lookup_next (as sm@154@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@130@01))))) r))
  :qid |qp.fvfValDef115|)))
(assert (forall ((r $Ref)) (!
  ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@130@01))))) r) r)
  :pattern (($FVF.lookup_next (as sm@154@01  $FVF<next>) r))
  :qid |qp.fvfResTrgDef116|)))
(assert ($$%precondition ($SortWrappers.$FVF<next>To$Snap (as sm@154@01  $FVF<next>)) (Set_union g0@126@01 g1@127@01)))
(pop) ; 5
; Joined path conditions
(assert (forall ((n@151@01 $Ref)) (!
  (=>
    (Set_in n@151@01 (Set_union g0@126@01 g1@127@01))
    (and (= (inv@152@01 n@151@01) n@151@01) (img@153@01 n@151@01)))
  :pattern ((Set_in n@151@01 (Set_union g0@126@01 g1@127@01)))
  :pattern ((inv@152@01 n@151@01))
  :pattern ((img@153@01 n@151@01))
  :qid |next-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@153@01 r) (Set_in (inv@152@01 r) (Set_union g0@126@01 g1@127@01)))
    (= (inv@152@01 r) r))
  :pattern ((inv@152@01 r))
  :qid |next-fctOfInv|)))
(assert (forall ((r $Ref)) (!
  (and
    (=>
      (Set_in r ($FVF.domain_next (as sm@154@01  $FVF<next>)))
      (and
        (Set_in (inv@152@01 r) (Set_union g0@126@01 g1@127@01))
        (img@153@01 r)))
    (=>
      (and
        (Set_in (inv@152@01 r) (Set_union g0@126@01 g1@127@01))
        (img@153@01 r))
      (Set_in r ($FVF.domain_next (as sm@154@01  $FVF<next>)))))
  :pattern ((Set_in r ($FVF.domain_next (as sm@154@01  $FVF<next>))))
  :qid |qp.fvfDomDef117|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and
        (Set_in (inv@152@01 r) (Set_union g0@126@01 g1@127@01))
        (img@153@01 r))
      (and
        (img@136@01 r)
        (Set_in (inv@135@01 r) (Set_union g0@126@01 g1@127@01))))
    (=
      ($FVF.lookup_next (as sm@154@01  $FVF<next>) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@130@01))))) r)))
  :pattern (($FVF.lookup_next (as sm@154@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@130@01))))) r))
  :qid |qp.fvfValDef115|)))
(assert (forall ((r $Ref)) (!
  ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@130@01))))) r) r)
  :pattern (($FVF.lookup_next (as sm@154@01  $FVF<next>) r))
  :qid |qp.fvfResTrgDef116|)))
(assert (and
  (forall ((r $Ref)) (!
    (=>
      (Set_in (inv@152@01 r) (Set_union g0@126@01 g1@127@01))
      ($FVF.loc_next ($FVF.lookup_next (as sm@137@01  $FVF<next>) r) r))
    :pattern ((inv@152@01 r))
    :qid |quant-u-14295|))
  ($$%precondition ($SortWrappers.$FVF<next>To$Snap (as sm@154@01  $FVF<next>)) (Set_union g0@126@01 g1@127@01))))
; [eval] n == x0 && m == x1
; [eval] n == x0
(push) ; 5
; [then-branch: 37 | n@149@01 != x0@128@01 | live]
; [else-branch: 37 | n@149@01 == x0@128@01 | live]
(push) ; 6
; [then-branch: 37 | n@149@01 != x0@128@01]
(assert (not (= n@149@01 x0@128@01)))
(pop) ; 6
(push) ; 6
; [else-branch: 37 | n@149@01 == x0@128@01]
(assert (= n@149@01 x0@128@01))
; [eval] m == x1
(pop) ; 6
(pop) ; 5
; Joined path conditions
; Joined path conditions
(assert (or (= n@149@01 x0@128@01) (not (= n@149@01 x0@128@01))))
(pop) ; 4
(push) ; 4
; [else-branch: 36 | !(n@149@01 in g0@126@01 && m@150@01 in g1@127@01)]
(assert (not (and (Set_in n@149@01 g0@126@01) (Set_in m@150@01 g1@127@01))))
(pop) ; 4
(pop) ; 3
; Joined path conditions
(assert (forall ((n@151@01 $Ref)) (!
  (=>
    (Set_in n@151@01 (Set_union g0@126@01 g1@127@01))
    (and (= (inv@152@01 n@151@01) n@151@01) (img@153@01 n@151@01)))
  :pattern ((Set_in n@151@01 (Set_union g0@126@01 g1@127@01)))
  :pattern ((inv@152@01 n@151@01))
  :pattern ((img@153@01 n@151@01))
  :qid |next-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@153@01 r) (Set_in (inv@152@01 r) (Set_union g0@126@01 g1@127@01)))
    (= (inv@152@01 r) r))
  :pattern ((inv@152@01 r))
  :qid |next-fctOfInv|)))
(assert (forall ((r $Ref)) (!
  (and
    (=>
      (Set_in r ($FVF.domain_next (as sm@154@01  $FVF<next>)))
      (and
        (Set_in (inv@152@01 r) (Set_union g0@126@01 g1@127@01))
        (img@153@01 r)))
    (=>
      (and
        (Set_in (inv@152@01 r) (Set_union g0@126@01 g1@127@01))
        (img@153@01 r))
      (Set_in r ($FVF.domain_next (as sm@154@01  $FVF<next>)))))
  :pattern ((Set_in r ($FVF.domain_next (as sm@154@01  $FVF<next>))))
  :qid |qp.fvfDomDef117|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and
        (Set_in (inv@152@01 r) (Set_union g0@126@01 g1@127@01))
        (img@153@01 r))
      (and
        (img@136@01 r)
        (Set_in (inv@135@01 r) (Set_union g0@126@01 g1@127@01))))
    (=
      ($FVF.lookup_next (as sm@154@01  $FVF<next>) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@130@01))))) r)))
  :pattern (($FVF.lookup_next (as sm@154@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@130@01))))) r))
  :qid |qp.fvfValDef115|)))
(assert (forall ((r $Ref)) (!
  ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@130@01))))) r) r)
  :pattern (($FVF.lookup_next (as sm@154@01  $FVF<next>) r))
  :qid |qp.fvfResTrgDef116|)))
(assert (=>
  (and (Set_in n@149@01 g0@126@01) (Set_in m@150@01 g1@127@01))
  (and
    (Set_in n@149@01 g0@126@01)
    (Set_in m@150@01 g1@127@01)
    (forall ((r $Ref)) (!
      (=>
        (Set_in (inv@152@01 r) (Set_union g0@126@01 g1@127@01))
        ($FVF.loc_next ($FVF.lookup_next (as sm@137@01  $FVF<next>) r) r))
      :pattern ((inv@152@01 r))
      :qid |quant-u-14295|))
    ($$%precondition ($SortWrappers.$FVF<next>To$Snap (as sm@154@01  $FVF<next>)) (Set_union g0@126@01 g1@127@01))
    (or (= n@149@01 x0@128@01) (not (= n@149@01 x0@128@01))))))
; Joined path conditions
(assert (or
  (not (and (Set_in n@149@01 g0@126@01) (Set_in m@150@01 g1@127@01)))
  (and (Set_in n@149@01 g0@126@01) (Set_in m@150@01 g1@127@01))))
(pop) ; 2
; Nested auxiliary terms: globals (aux)
(assert (forall ((n@151@01 $Ref)) (!
  (=>
    (Set_in n@151@01 (Set_union g0@126@01 g1@127@01))
    (and (= (inv@152@01 n@151@01) n@151@01) (img@153@01 n@151@01)))
  :pattern ((Set_in n@151@01 (Set_union g0@126@01 g1@127@01)))
  :pattern ((inv@152@01 n@151@01))
  :pattern ((img@153@01 n@151@01))
  :qid |next-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@153@01 r) (Set_in (inv@152@01 r) (Set_union g0@126@01 g1@127@01)))
    (= (inv@152@01 r) r))
  :pattern ((inv@152@01 r))
  :qid |next-fctOfInv|)))
(assert (forall ((r $Ref)) (!
  (and
    (=>
      (Set_in r ($FVF.domain_next (as sm@154@01  $FVF<next>)))
      (and
        (Set_in (inv@152@01 r) (Set_union g0@126@01 g1@127@01))
        (img@153@01 r)))
    (=>
      (and
        (Set_in (inv@152@01 r) (Set_union g0@126@01 g1@127@01))
        (img@153@01 r))
      (Set_in r ($FVF.domain_next (as sm@154@01  $FVF<next>)))))
  :pattern ((Set_in r ($FVF.domain_next (as sm@154@01  $FVF<next>))))
  :qid |qp.fvfDomDef117|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and
        (Set_in (inv@152@01 r) (Set_union g0@126@01 g1@127@01))
        (img@153@01 r))
      (and
        (img@136@01 r)
        (Set_in (inv@135@01 r) (Set_union g0@126@01 g1@127@01))))
    (=
      ($FVF.lookup_next (as sm@154@01  $FVF<next>) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@130@01))))) r)))
  :pattern (($FVF.lookup_next (as sm@154@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@130@01))))) r))
  :qid |qp.fvfValDef115|)))
(assert (forall ((r $Ref)) (!
  ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@130@01))))) r) r)
  :pattern (($FVF.lookup_next (as sm@154@01  $FVF<next>) r))
  :qid |qp.fvfResTrgDef116|)))
; Nested auxiliary terms: non-globals (aux)
(assert (forall ((n@149@01 $Ref) (m@150@01 $Ref)) (!
  (and
    (or (Set_in n@149@01 g0@126@01) (not (Set_in n@149@01 g0@126@01)))
    (=>
      (and (Set_in n@149@01 g0@126@01) (Set_in m@150@01 g1@127@01))
      (and
        (Set_in n@149@01 g0@126@01)
        (Set_in m@150@01 g1@127@01)
        (forall ((r $Ref)) (!
          (=>
            (Set_in (inv@152@01 r) (Set_union g0@126@01 g1@127@01))
            ($FVF.loc_next ($FVF.lookup_next (as sm@137@01  $FVF<next>) r) r))
          :pattern ((inv@152@01 r))
          :qid |quant-u-14295|))
        ($$%precondition ($SortWrappers.$FVF<next>To$Snap (as sm@154@01  $FVF<next>)) (Set_union g0@126@01 g1@127@01))
        (or (= n@149@01 x0@128@01) (not (= n@149@01 x0@128@01)))))
    (or
      (not (and (Set_in n@149@01 g0@126@01) (Set_in m@150@01 g1@127@01)))
      (and (Set_in n@149@01 g0@126@01) (Set_in m@150@01 g1@127@01))))
  :pattern ((Set_in n@149@01 g0@126@01) (Set_in m@150@01 g1@127@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/graphs/static/tests/lists/delete_edge1.vpr@333@14@333@128-aux|)))
(assert (forall ((n@149@01 $Ref) (m@150@01 $Ref)) (!
  (=>
    (and (Set_in n@149@01 g0@126@01) (Set_in m@150@01 g1@127@01))
    (=
      (edge<Bool> ($$ ($SortWrappers.$FVF<next>To$Snap (as sm@154@01  $FVF<next>)) (Set_union g0@126@01 g1@127@01)) n@149@01 m@150@01)
      (and (= n@149@01 x0@128@01) (= m@150@01 x1@129@01))))
  :pattern ((Set_in n@149@01 g0@126@01) (Set_in m@150@01 g1@127@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/graphs/static/tests/lists/delete_edge1.vpr@333@14@333@128|)))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@130@01))))))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@130@01)))))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@130@01))))))))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@130@01)))))))))))
  $Snap.unit))
; [eval] (forall n: Ref, m: Ref :: { (n in g1), (m in g0) } (n in g1) && (m in g0) ==> !edge($$((g0 union g1)), n, m))
(declare-const n@155@01 $Ref)
(declare-const m@156@01 $Ref)
(push) ; 2
; [eval] (n in g1) && (m in g0) ==> !edge($$((g0 union g1)), n, m)
; [eval] (n in g1) && (m in g0)
; [eval] (n in g1)
(push) ; 3
; [then-branch: 38 | !(n@155@01 in g1@127@01) | live]
; [else-branch: 38 | n@155@01 in g1@127@01 | live]
(push) ; 4
; [then-branch: 38 | !(n@155@01 in g1@127@01)]
(assert (not (Set_in n@155@01 g1@127@01)))
(pop) ; 4
(push) ; 4
; [else-branch: 38 | n@155@01 in g1@127@01]
(assert (Set_in n@155@01 g1@127@01))
; [eval] (m in g0)
(pop) ; 4
(pop) ; 3
; Joined path conditions
; Joined path conditions
(assert (or (Set_in n@155@01 g1@127@01) (not (Set_in n@155@01 g1@127@01))))
(push) ; 3
; [then-branch: 39 | n@155@01 in g1@127@01 && m@156@01 in g0@126@01 | live]
; [else-branch: 39 | !(n@155@01 in g1@127@01 && m@156@01 in g0@126@01) | live]
(push) ; 4
; [then-branch: 39 | n@155@01 in g1@127@01 && m@156@01 in g0@126@01]
(assert (and (Set_in n@155@01 g1@127@01) (Set_in m@156@01 g0@126@01)))
; [eval] !edge($$((g0 union g1)), n, m)
; [eval] edge($$((g0 union g1)), n, m)
; [eval] $$((g0 union g1))
; [eval] (g0 union g1)
(push) ; 5
(declare-const n@157@01 $Ref)
(push) ; 6
; [eval] (n in refs)
(assert (Set_in n@157@01 (Set_union g0@126@01 g1@127@01)))
(pop) ; 6
(declare-fun inv@158@01 ($Ref) $Ref)
(declare-fun img@159@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
; Definitional axioms for snapshot map domain
; Definitional axioms for snapshot map values
; Check receiver injectivity
(push) ; 6
(assert (not (forall ((n1@157@01 $Ref) (n2@157@01 $Ref)) (!
  (=>
    (and
      (and
        (Set_in n1@157@01 (Set_union g0@126@01 g1@127@01))
        ($FVF.loc_next ($FVF.lookup_next (as sm@137@01  $FVF<next>) n1@157@01) n1@157@01))
      (and
        (Set_in n2@157@01 (Set_union g0@126@01 g1@127@01))
        ($FVF.loc_next ($FVF.lookup_next (as sm@137@01  $FVF<next>) n2@157@01) n2@157@01))
      (= n1@157@01 n2@157@01))
    (= n1@157@01 n2@157@01))
  
  :qid |next-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((n@157@01 $Ref)) (!
  (=>
    (Set_in n@157@01 (Set_union g0@126@01 g1@127@01))
    (and (= (inv@158@01 n@157@01) n@157@01) (img@159@01 n@157@01)))
  :pattern ((Set_in n@157@01 (Set_union g0@126@01 g1@127@01)))
  :pattern ((inv@158@01 n@157@01))
  :pattern ((img@159@01 n@157@01))
  :qid |next-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@159@01 r) (Set_in (inv@158@01 r) (Set_union g0@126@01 g1@127@01)))
    (= (inv@158@01 r) r))
  :pattern ((inv@158@01 r))
  :qid |next-fctOfInv|)))
(assert (forall ((r $Ref)) (!
  (=>
    (Set_in (inv@158@01 r) (Set_union g0@126@01 g1@127@01))
    ($FVF.loc_next ($FVF.lookup_next (as sm@137@01  $FVF<next>) r) r))
  :pattern ((inv@158@01 r))
  :qid |quant-u-14298|)))
(push) ; 6
(assert (not (forall ((r $Ref)) (!
  (=>
    (and
      (Set_in (inv@158@01 r) (Set_union g0@126@01 g1@127@01))
      (img@159@01 r)
      (= r (inv@158@01 r)))
    (>
      (ite
        (and
          (img@136@01 r)
          (Set_in (inv@135@01 r) (Set_union g0@126@01 g1@127@01)))
        $Perm.Write
        $Perm.No)
      $Perm.No))
  
  :qid |quant-u-14299|))))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(declare-const sm@160@01 $FVF<next>)
; Definitional axioms for snapshot map domain
(assert (forall ((r $Ref)) (!
  (and
    (=>
      (Set_in r ($FVF.domain_next (as sm@160@01  $FVF<next>)))
      (and
        (Set_in (inv@158@01 r) (Set_union g0@126@01 g1@127@01))
        (img@159@01 r)))
    (=>
      (and
        (Set_in (inv@158@01 r) (Set_union g0@126@01 g1@127@01))
        (img@159@01 r))
      (Set_in r ($FVF.domain_next (as sm@160@01  $FVF<next>)))))
  :pattern ((Set_in r ($FVF.domain_next (as sm@160@01  $FVF<next>))))
  :qid |qp.fvfDomDef120|)))
; Definitional axioms for snapshot map values
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and
        (Set_in (inv@158@01 r) (Set_union g0@126@01 g1@127@01))
        (img@159@01 r))
      (and
        (img@136@01 r)
        (Set_in (inv@135@01 r) (Set_union g0@126@01 g1@127@01))))
    (=
      ($FVF.lookup_next (as sm@160@01  $FVF<next>) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@130@01))))) r)))
  :pattern (($FVF.lookup_next (as sm@160@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@130@01))))) r))
  :qid |qp.fvfValDef118|)))
(assert (forall ((r $Ref)) (!
  ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@130@01))))) r) r)
  :pattern (($FVF.lookup_next (as sm@160@01  $FVF<next>) r))
  :qid |qp.fvfResTrgDef119|)))
(assert ($$%precondition ($SortWrappers.$FVF<next>To$Snap (as sm@160@01  $FVF<next>)) (Set_union g0@126@01 g1@127@01)))
(pop) ; 5
; Joined path conditions
(assert (forall ((n@157@01 $Ref)) (!
  (=>
    (Set_in n@157@01 (Set_union g0@126@01 g1@127@01))
    (and (= (inv@158@01 n@157@01) n@157@01) (img@159@01 n@157@01)))
  :pattern ((Set_in n@157@01 (Set_union g0@126@01 g1@127@01)))
  :pattern ((inv@158@01 n@157@01))
  :pattern ((img@159@01 n@157@01))
  :qid |next-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@159@01 r) (Set_in (inv@158@01 r) (Set_union g0@126@01 g1@127@01)))
    (= (inv@158@01 r) r))
  :pattern ((inv@158@01 r))
  :qid |next-fctOfInv|)))
(assert (forall ((r $Ref)) (!
  (and
    (=>
      (Set_in r ($FVF.domain_next (as sm@160@01  $FVF<next>)))
      (and
        (Set_in (inv@158@01 r) (Set_union g0@126@01 g1@127@01))
        (img@159@01 r)))
    (=>
      (and
        (Set_in (inv@158@01 r) (Set_union g0@126@01 g1@127@01))
        (img@159@01 r))
      (Set_in r ($FVF.domain_next (as sm@160@01  $FVF<next>)))))
  :pattern ((Set_in r ($FVF.domain_next (as sm@160@01  $FVF<next>))))
  :qid |qp.fvfDomDef120|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and
        (Set_in (inv@158@01 r) (Set_union g0@126@01 g1@127@01))
        (img@159@01 r))
      (and
        (img@136@01 r)
        (Set_in (inv@135@01 r) (Set_union g0@126@01 g1@127@01))))
    (=
      ($FVF.lookup_next (as sm@160@01  $FVF<next>) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@130@01))))) r)))
  :pattern (($FVF.lookup_next (as sm@160@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@130@01))))) r))
  :qid |qp.fvfValDef118|)))
(assert (forall ((r $Ref)) (!
  ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@130@01))))) r) r)
  :pattern (($FVF.lookup_next (as sm@160@01  $FVF<next>) r))
  :qid |qp.fvfResTrgDef119|)))
(assert (and
  (forall ((r $Ref)) (!
    (=>
      (Set_in (inv@158@01 r) (Set_union g0@126@01 g1@127@01))
      ($FVF.loc_next ($FVF.lookup_next (as sm@137@01  $FVF<next>) r) r))
    :pattern ((inv@158@01 r))
    :qid |quant-u-14298|))
  ($$%precondition ($SortWrappers.$FVF<next>To$Snap (as sm@160@01  $FVF<next>)) (Set_union g0@126@01 g1@127@01))))
(pop) ; 4
(push) ; 4
; [else-branch: 39 | !(n@155@01 in g1@127@01 && m@156@01 in g0@126@01)]
(assert (not (and (Set_in n@155@01 g1@127@01) (Set_in m@156@01 g0@126@01))))
(pop) ; 4
(pop) ; 3
; Joined path conditions
(assert (forall ((n@157@01 $Ref)) (!
  (=>
    (Set_in n@157@01 (Set_union g0@126@01 g1@127@01))
    (and (= (inv@158@01 n@157@01) n@157@01) (img@159@01 n@157@01)))
  :pattern ((Set_in n@157@01 (Set_union g0@126@01 g1@127@01)))
  :pattern ((inv@158@01 n@157@01))
  :pattern ((img@159@01 n@157@01))
  :qid |next-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@159@01 r) (Set_in (inv@158@01 r) (Set_union g0@126@01 g1@127@01)))
    (= (inv@158@01 r) r))
  :pattern ((inv@158@01 r))
  :qid |next-fctOfInv|)))
(assert (forall ((r $Ref)) (!
  (and
    (=>
      (Set_in r ($FVF.domain_next (as sm@160@01  $FVF<next>)))
      (and
        (Set_in (inv@158@01 r) (Set_union g0@126@01 g1@127@01))
        (img@159@01 r)))
    (=>
      (and
        (Set_in (inv@158@01 r) (Set_union g0@126@01 g1@127@01))
        (img@159@01 r))
      (Set_in r ($FVF.domain_next (as sm@160@01  $FVF<next>)))))
  :pattern ((Set_in r ($FVF.domain_next (as sm@160@01  $FVF<next>))))
  :qid |qp.fvfDomDef120|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and
        (Set_in (inv@158@01 r) (Set_union g0@126@01 g1@127@01))
        (img@159@01 r))
      (and
        (img@136@01 r)
        (Set_in (inv@135@01 r) (Set_union g0@126@01 g1@127@01))))
    (=
      ($FVF.lookup_next (as sm@160@01  $FVF<next>) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@130@01))))) r)))
  :pattern (($FVF.lookup_next (as sm@160@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@130@01))))) r))
  :qid |qp.fvfValDef118|)))
(assert (forall ((r $Ref)) (!
  ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@130@01))))) r) r)
  :pattern (($FVF.lookup_next (as sm@160@01  $FVF<next>) r))
  :qid |qp.fvfResTrgDef119|)))
(assert (=>
  (and (Set_in n@155@01 g1@127@01) (Set_in m@156@01 g0@126@01))
  (and
    (Set_in n@155@01 g1@127@01)
    (Set_in m@156@01 g0@126@01)
    (forall ((r $Ref)) (!
      (=>
        (Set_in (inv@158@01 r) (Set_union g0@126@01 g1@127@01))
        ($FVF.loc_next ($FVF.lookup_next (as sm@137@01  $FVF<next>) r) r))
      :pattern ((inv@158@01 r))
      :qid |quant-u-14298|))
    ($$%precondition ($SortWrappers.$FVF<next>To$Snap (as sm@160@01  $FVF<next>)) (Set_union g0@126@01 g1@127@01)))))
; Joined path conditions
(assert (or
  (not (and (Set_in n@155@01 g1@127@01) (Set_in m@156@01 g0@126@01)))
  (and (Set_in n@155@01 g1@127@01) (Set_in m@156@01 g0@126@01))))
(pop) ; 2
; Nested auxiliary terms: globals (aux)
(assert (forall ((n@157@01 $Ref)) (!
  (=>
    (Set_in n@157@01 (Set_union g0@126@01 g1@127@01))
    (and (= (inv@158@01 n@157@01) n@157@01) (img@159@01 n@157@01)))
  :pattern ((Set_in n@157@01 (Set_union g0@126@01 g1@127@01)))
  :pattern ((inv@158@01 n@157@01))
  :pattern ((img@159@01 n@157@01))
  :qid |next-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@159@01 r) (Set_in (inv@158@01 r) (Set_union g0@126@01 g1@127@01)))
    (= (inv@158@01 r) r))
  :pattern ((inv@158@01 r))
  :qid |next-fctOfInv|)))
(assert (forall ((r $Ref)) (!
  (and
    (=>
      (Set_in r ($FVF.domain_next (as sm@160@01  $FVF<next>)))
      (and
        (Set_in (inv@158@01 r) (Set_union g0@126@01 g1@127@01))
        (img@159@01 r)))
    (=>
      (and
        (Set_in (inv@158@01 r) (Set_union g0@126@01 g1@127@01))
        (img@159@01 r))
      (Set_in r ($FVF.domain_next (as sm@160@01  $FVF<next>)))))
  :pattern ((Set_in r ($FVF.domain_next (as sm@160@01  $FVF<next>))))
  :qid |qp.fvfDomDef120|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and
        (Set_in (inv@158@01 r) (Set_union g0@126@01 g1@127@01))
        (img@159@01 r))
      (and
        (img@136@01 r)
        (Set_in (inv@135@01 r) (Set_union g0@126@01 g1@127@01))))
    (=
      ($FVF.lookup_next (as sm@160@01  $FVF<next>) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@130@01))))) r)))
  :pattern (($FVF.lookup_next (as sm@160@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@130@01))))) r))
  :qid |qp.fvfValDef118|)))
(assert (forall ((r $Ref)) (!
  ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@130@01))))) r) r)
  :pattern (($FVF.lookup_next (as sm@160@01  $FVF<next>) r))
  :qid |qp.fvfResTrgDef119|)))
; Nested auxiliary terms: non-globals (aux)
(assert (forall ((n@155@01 $Ref) (m@156@01 $Ref)) (!
  (and
    (or (Set_in n@155@01 g1@127@01) (not (Set_in n@155@01 g1@127@01)))
    (=>
      (and (Set_in n@155@01 g1@127@01) (Set_in m@156@01 g0@126@01))
      (and
        (Set_in n@155@01 g1@127@01)
        (Set_in m@156@01 g0@126@01)
        (forall ((r $Ref)) (!
          (=>
            (Set_in (inv@158@01 r) (Set_union g0@126@01 g1@127@01))
            ($FVF.loc_next ($FVF.lookup_next (as sm@137@01  $FVF<next>) r) r))
          :pattern ((inv@158@01 r))
          :qid |quant-u-14298|))
        ($$%precondition ($SortWrappers.$FVF<next>To$Snap (as sm@160@01  $FVF<next>)) (Set_union g0@126@01 g1@127@01))))
    (or
      (not (and (Set_in n@155@01 g1@127@01) (Set_in m@156@01 g0@126@01)))
      (and (Set_in n@155@01 g1@127@01) (Set_in m@156@01 g0@126@01))))
  :pattern ((Set_in n@155@01 g1@127@01) (Set_in m@156@01 g0@126@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/graphs/static/tests/lists/delete_edge1.vpr@334@14@334@107-aux|)))
(assert (forall ((n@155@01 $Ref) (m@156@01 $Ref)) (!
  (=>
    (and (Set_in n@155@01 g1@127@01) (Set_in m@156@01 g0@126@01))
    (not
      (edge<Bool> ($$ ($SortWrappers.$FVF<next>To$Snap (as sm@160@01  $FVF<next>)) (Set_union g0@126@01 g1@127@01)) n@155@01 m@156@01)))
  :pattern ((Set_in n@155@01 g1@127@01) (Set_in m@156@01 g0@126@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/graphs/static/tests/lists/delete_edge1.vpr@334@14@334@107|)))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@130@01)))))))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@130@01))))))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@130@01)))))))))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@130@01))))))))))))
  $Snap.unit))
; [eval] acyclic_graph($$((g0 union g1)))
; [eval] $$((g0 union g1))
; [eval] (g0 union g1)
(push) ; 2
(declare-const n@161@01 $Ref)
(push) ; 3
; [eval] (n in refs)
(assert (Set_in n@161@01 (Set_union g0@126@01 g1@127@01)))
(pop) ; 3
(declare-fun inv@162@01 ($Ref) $Ref)
(declare-fun img@163@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
; Definitional axioms for snapshot map domain
; Definitional axioms for snapshot map values
; Check receiver injectivity
(push) ; 3
(assert (not (forall ((n1@161@01 $Ref) (n2@161@01 $Ref)) (!
  (=>
    (and
      (and
        (Set_in n1@161@01 (Set_union g0@126@01 g1@127@01))
        ($FVF.loc_next ($FVF.lookup_next (as sm@137@01  $FVF<next>) n1@161@01) n1@161@01))
      (and
        (Set_in n2@161@01 (Set_union g0@126@01 g1@127@01))
        ($FVF.loc_next ($FVF.lookup_next (as sm@137@01  $FVF<next>) n2@161@01) n2@161@01))
      (= n1@161@01 n2@161@01))
    (= n1@161@01 n2@161@01))
  
  :qid |next-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((n@161@01 $Ref)) (!
  (=>
    (Set_in n@161@01 (Set_union g0@126@01 g1@127@01))
    (and (= (inv@162@01 n@161@01) n@161@01) (img@163@01 n@161@01)))
  :pattern ((Set_in n@161@01 (Set_union g0@126@01 g1@127@01)))
  :pattern ((inv@162@01 n@161@01))
  :pattern ((img@163@01 n@161@01))
  :qid |next-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@163@01 r) (Set_in (inv@162@01 r) (Set_union g0@126@01 g1@127@01)))
    (= (inv@162@01 r) r))
  :pattern ((inv@162@01 r))
  :qid |next-fctOfInv|)))
(assert (forall ((r $Ref)) (!
  (=>
    (Set_in (inv@162@01 r) (Set_union g0@126@01 g1@127@01))
    ($FVF.loc_next ($FVF.lookup_next (as sm@137@01  $FVF<next>) r) r))
  :pattern ((inv@162@01 r))
  :qid |quant-u-14301|)))
(push) ; 3
(assert (not (forall ((r $Ref)) (!
  (=>
    (and
      (Set_in (inv@162@01 r) (Set_union g0@126@01 g1@127@01))
      (img@163@01 r)
      (= r (inv@162@01 r)))
    (>
      (ite
        (and
          (img@136@01 r)
          (Set_in (inv@135@01 r) (Set_union g0@126@01 g1@127@01)))
        $Perm.Write
        $Perm.No)
      $Perm.No))
  
  :qid |quant-u-14302|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(declare-const sm@164@01 $FVF<next>)
; Definitional axioms for snapshot map domain
(assert (forall ((r $Ref)) (!
  (and
    (=>
      (Set_in r ($FVF.domain_next (as sm@164@01  $FVF<next>)))
      (and
        (Set_in (inv@162@01 r) (Set_union g0@126@01 g1@127@01))
        (img@163@01 r)))
    (=>
      (and
        (Set_in (inv@162@01 r) (Set_union g0@126@01 g1@127@01))
        (img@163@01 r))
      (Set_in r ($FVF.domain_next (as sm@164@01  $FVF<next>)))))
  :pattern ((Set_in r ($FVF.domain_next (as sm@164@01  $FVF<next>))))
  :qid |qp.fvfDomDef123|)))
; Definitional axioms for snapshot map values
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and
        (Set_in (inv@162@01 r) (Set_union g0@126@01 g1@127@01))
        (img@163@01 r))
      (and
        (img@136@01 r)
        (Set_in (inv@135@01 r) (Set_union g0@126@01 g1@127@01))))
    (=
      ($FVF.lookup_next (as sm@164@01  $FVF<next>) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@130@01))))) r)))
  :pattern (($FVF.lookup_next (as sm@164@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@130@01))))) r))
  :qid |qp.fvfValDef121|)))
(assert (forall ((r $Ref)) (!
  ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@130@01))))) r) r)
  :pattern (($FVF.lookup_next (as sm@164@01  $FVF<next>) r))
  :qid |qp.fvfResTrgDef122|)))
(assert ($$%precondition ($SortWrappers.$FVF<next>To$Snap (as sm@164@01  $FVF<next>)) (Set_union g0@126@01 g1@127@01)))
(pop) ; 2
; Joined path conditions
(assert (forall ((n@161@01 $Ref)) (!
  (=>
    (Set_in n@161@01 (Set_union g0@126@01 g1@127@01))
    (and (= (inv@162@01 n@161@01) n@161@01) (img@163@01 n@161@01)))
  :pattern ((Set_in n@161@01 (Set_union g0@126@01 g1@127@01)))
  :pattern ((inv@162@01 n@161@01))
  :pattern ((img@163@01 n@161@01))
  :qid |next-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@163@01 r) (Set_in (inv@162@01 r) (Set_union g0@126@01 g1@127@01)))
    (= (inv@162@01 r) r))
  :pattern ((inv@162@01 r))
  :qid |next-fctOfInv|)))
(assert (forall ((r $Ref)) (!
  (and
    (=>
      (Set_in r ($FVF.domain_next (as sm@164@01  $FVF<next>)))
      (and
        (Set_in (inv@162@01 r) (Set_union g0@126@01 g1@127@01))
        (img@163@01 r)))
    (=>
      (and
        (Set_in (inv@162@01 r) (Set_union g0@126@01 g1@127@01))
        (img@163@01 r))
      (Set_in r ($FVF.domain_next (as sm@164@01  $FVF<next>)))))
  :pattern ((Set_in r ($FVF.domain_next (as sm@164@01  $FVF<next>))))
  :qid |qp.fvfDomDef123|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and
        (Set_in (inv@162@01 r) (Set_union g0@126@01 g1@127@01))
        (img@163@01 r))
      (and
        (img@136@01 r)
        (Set_in (inv@135@01 r) (Set_union g0@126@01 g1@127@01))))
    (=
      ($FVF.lookup_next (as sm@164@01  $FVF<next>) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@130@01))))) r)))
  :pattern (($FVF.lookup_next (as sm@164@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@130@01))))) r))
  :qid |qp.fvfValDef121|)))
(assert (forall ((r $Ref)) (!
  ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@130@01))))) r) r)
  :pattern (($FVF.lookup_next (as sm@164@01  $FVF<next>) r))
  :qid |qp.fvfResTrgDef122|)))
(assert (and
  (forall ((r $Ref)) (!
    (=>
      (Set_in (inv@162@01 r) (Set_union g0@126@01 g1@127@01))
      ($FVF.loc_next ($FVF.lookup_next (as sm@137@01  $FVF<next>) r) r))
    :pattern ((inv@162@01 r))
    :qid |quant-u-14301|))
  ($$%precondition ($SortWrappers.$FVF<next>To$Snap (as sm@164@01  $FVF<next>)) (Set_union g0@126@01 g1@127@01))))
(assert (acyclic_graph<Bool> ($$ ($SortWrappers.$FVF<next>To$Snap (as sm@164@01  $FVF<next>)) (Set_union g0@126@01 g1@127@01))))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@130@01))))))))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@130@01)))))))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@130@01))))))))))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@130@01)))))))))))))
  $Snap.unit))
; [eval] func_graph($$((g0 union g1)))
; [eval] $$((g0 union g1))
; [eval] (g0 union g1)
(push) ; 2
(declare-const n@165@01 $Ref)
(push) ; 3
; [eval] (n in refs)
(assert (Set_in n@165@01 (Set_union g0@126@01 g1@127@01)))
(pop) ; 3
(declare-fun inv@166@01 ($Ref) $Ref)
(declare-fun img@167@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
(declare-const sm@168@01 $FVF<next>)
; Definitional axioms for snapshot map domain
; Definitional axioms for snapshot map values
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@136@01 r) (Set_in (inv@135@01 r) (Set_union g0@126@01 g1@127@01)))
    (=
      ($FVF.lookup_next (as sm@168@01  $FVF<next>) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@130@01))))) r)))
  :pattern (($FVF.lookup_next (as sm@168@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@130@01))))) r))
  :qid |qp.fvfValDef124|)))
(assert (forall ((r $Ref)) (!
  ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@130@01))))) r) r)
  :pattern (($FVF.lookup_next (as sm@168@01  $FVF<next>) r))
  :qid |qp.fvfResTrgDef125|)))
; Check receiver injectivity
(push) ; 3
(assert (not (forall ((n1@165@01 $Ref) (n2@165@01 $Ref)) (!
  (=>
    (and
      (and
        (Set_in n1@165@01 (Set_union g0@126@01 g1@127@01))
        ($FVF.loc_next ($FVF.lookup_next (as sm@168@01  $FVF<next>) n1@165@01) n1@165@01))
      (and
        (Set_in n2@165@01 (Set_union g0@126@01 g1@127@01))
        ($FVF.loc_next ($FVF.lookup_next (as sm@168@01  $FVF<next>) n2@165@01) n2@165@01))
      (= n1@165@01 n2@165@01))
    (= n1@165@01 n2@165@01))
  
  :qid |next-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((n@165@01 $Ref)) (!
  (=>
    (Set_in n@165@01 (Set_union g0@126@01 g1@127@01))
    (and (= (inv@166@01 n@165@01) n@165@01) (img@167@01 n@165@01)))
  :pattern ((Set_in n@165@01 (Set_union g0@126@01 g1@127@01)))
  :pattern ((inv@166@01 n@165@01))
  :pattern ((img@167@01 n@165@01))
  :qid |next-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@167@01 r) (Set_in (inv@166@01 r) (Set_union g0@126@01 g1@127@01)))
    (= (inv@166@01 r) r))
  :pattern ((inv@166@01 r))
  :qid |next-fctOfInv|)))
(assert (forall ((r $Ref)) (!
  (=>
    (Set_in (inv@166@01 r) (Set_union g0@126@01 g1@127@01))
    ($FVF.loc_next ($FVF.lookup_next (as sm@168@01  $FVF<next>) r) r))
  :pattern ((inv@166@01 r))
  :qid |quant-u-14304|)))
(push) ; 3
(assert (not (forall ((r $Ref)) (!
  (=>
    (and
      (Set_in (inv@166@01 r) (Set_union g0@126@01 g1@127@01))
      (img@167@01 r)
      (= r (inv@166@01 r)))
    (>
      (ite
        (and
          (img@136@01 r)
          (Set_in (inv@135@01 r) (Set_union g0@126@01 g1@127@01)))
        $Perm.Write
        $Perm.No)
      $Perm.No))
  
  :qid |quant-u-14305|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(declare-const sm@169@01 $FVF<next>)
; Definitional axioms for snapshot map domain
(assert (forall ((r $Ref)) (!
  (and
    (=>
      (Set_in r ($FVF.domain_next (as sm@169@01  $FVF<next>)))
      (and
        (Set_in (inv@166@01 r) (Set_union g0@126@01 g1@127@01))
        (img@167@01 r)))
    (=>
      (and
        (Set_in (inv@166@01 r) (Set_union g0@126@01 g1@127@01))
        (img@167@01 r))
      (Set_in r ($FVF.domain_next (as sm@169@01  $FVF<next>)))))
  :pattern ((Set_in r ($FVF.domain_next (as sm@169@01  $FVF<next>))))
  :qid |qp.fvfDomDef128|)))
; Definitional axioms for snapshot map values
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and
        (Set_in (inv@166@01 r) (Set_union g0@126@01 g1@127@01))
        (img@167@01 r))
      (and
        (img@136@01 r)
        (Set_in (inv@135@01 r) (Set_union g0@126@01 g1@127@01))))
    (=
      ($FVF.lookup_next (as sm@169@01  $FVF<next>) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@130@01))))) r)))
  :pattern (($FVF.lookup_next (as sm@169@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@130@01))))) r))
  :qid |qp.fvfValDef126|)))
(assert (forall ((r $Ref)) (!
  ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@130@01))))) r) r)
  :pattern (($FVF.lookup_next (as sm@169@01  $FVF<next>) r))
  :qid |qp.fvfResTrgDef127|)))
(assert ($$%precondition ($SortWrappers.$FVF<next>To$Snap (as sm@169@01  $FVF<next>)) (Set_union g0@126@01 g1@127@01)))
(pop) ; 2
; Joined path conditions
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@136@01 r) (Set_in (inv@135@01 r) (Set_union g0@126@01 g1@127@01)))
    (=
      ($FVF.lookup_next (as sm@168@01  $FVF<next>) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@130@01))))) r)))
  :pattern (($FVF.lookup_next (as sm@168@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@130@01))))) r))
  :qid |qp.fvfValDef124|)))
(assert (forall ((r $Ref)) (!
  ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@130@01))))) r) r)
  :pattern (($FVF.lookup_next (as sm@168@01  $FVF<next>) r))
  :qid |qp.fvfResTrgDef125|)))
(assert (forall ((n@165@01 $Ref)) (!
  (=>
    (Set_in n@165@01 (Set_union g0@126@01 g1@127@01))
    (and (= (inv@166@01 n@165@01) n@165@01) (img@167@01 n@165@01)))
  :pattern ((Set_in n@165@01 (Set_union g0@126@01 g1@127@01)))
  :pattern ((inv@166@01 n@165@01))
  :pattern ((img@167@01 n@165@01))
  :qid |next-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@167@01 r) (Set_in (inv@166@01 r) (Set_union g0@126@01 g1@127@01)))
    (= (inv@166@01 r) r))
  :pattern ((inv@166@01 r))
  :qid |next-fctOfInv|)))
(assert (forall ((r $Ref)) (!
  (and
    (=>
      (Set_in r ($FVF.domain_next (as sm@169@01  $FVF<next>)))
      (and
        (Set_in (inv@166@01 r) (Set_union g0@126@01 g1@127@01))
        (img@167@01 r)))
    (=>
      (and
        (Set_in (inv@166@01 r) (Set_union g0@126@01 g1@127@01))
        (img@167@01 r))
      (Set_in r ($FVF.domain_next (as sm@169@01  $FVF<next>)))))
  :pattern ((Set_in r ($FVF.domain_next (as sm@169@01  $FVF<next>))))
  :qid |qp.fvfDomDef128|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and
        (Set_in (inv@166@01 r) (Set_union g0@126@01 g1@127@01))
        (img@167@01 r))
      (and
        (img@136@01 r)
        (Set_in (inv@135@01 r) (Set_union g0@126@01 g1@127@01))))
    (=
      ($FVF.lookup_next (as sm@169@01  $FVF<next>) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@130@01))))) r)))
  :pattern (($FVF.lookup_next (as sm@169@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@130@01))))) r))
  :qid |qp.fvfValDef126|)))
(assert (forall ((r $Ref)) (!
  ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@130@01))))) r) r)
  :pattern (($FVF.lookup_next (as sm@169@01  $FVF<next>) r))
  :qid |qp.fvfResTrgDef127|)))
(assert (and
  (forall ((r $Ref)) (!
    (=>
      (Set_in (inv@166@01 r) (Set_union g0@126@01 g1@127@01))
      ($FVF.loc_next ($FVF.lookup_next (as sm@168@01  $FVF<next>) r) r))
    :pattern ((inv@166@01 r))
    :qid |quant-u-14304|))
  ($$%precondition ($SortWrappers.$FVF<next>To$Snap (as sm@169@01  $FVF<next>)) (Set_union g0@126@01 g1@127@01))))
(assert (func_graph<Bool> ($$ ($SortWrappers.$FVF<next>To$Snap (as sm@169@01  $FVF<next>)) (Set_union g0@126@01 g1@127@01))))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@130@01)))))))))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@130@01))))))))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@130@01)))))))))))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@130@01))))))))))))))
  $Snap.unit))
; [eval] unshared_graph($$((g0 union g1)))
; [eval] $$((g0 union g1))
; [eval] (g0 union g1)
(push) ; 2
(declare-const n@170@01 $Ref)
(push) ; 3
; [eval] (n in refs)
(assert (Set_in n@170@01 (Set_union g0@126@01 g1@127@01)))
(pop) ; 3
(declare-fun inv@171@01 ($Ref) $Ref)
(declare-fun img@172@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
(declare-const sm@173@01 $FVF<next>)
; Definitional axioms for snapshot map domain
; Definitional axioms for snapshot map values
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@136@01 r) (Set_in (inv@135@01 r) (Set_union g0@126@01 g1@127@01)))
    (=
      ($FVF.lookup_next (as sm@173@01  $FVF<next>) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@130@01))))) r)))
  :pattern (($FVF.lookup_next (as sm@173@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@130@01))))) r))
  :qid |qp.fvfValDef129|)))
(assert (forall ((r $Ref)) (!
  ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@130@01))))) r) r)
  :pattern (($FVF.lookup_next (as sm@173@01  $FVF<next>) r))
  :qid |qp.fvfResTrgDef130|)))
; Check receiver injectivity
(push) ; 3
(assert (not (forall ((n1@170@01 $Ref) (n2@170@01 $Ref)) (!
  (=>
    (and
      (and
        (Set_in n1@170@01 (Set_union g0@126@01 g1@127@01))
        ($FVF.loc_next ($FVF.lookup_next (as sm@173@01  $FVF<next>) n1@170@01) n1@170@01))
      (and
        (Set_in n2@170@01 (Set_union g0@126@01 g1@127@01))
        ($FVF.loc_next ($FVF.lookup_next (as sm@173@01  $FVF<next>) n2@170@01) n2@170@01))
      (= n1@170@01 n2@170@01))
    (= n1@170@01 n2@170@01))
  
  :qid |next-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((n@170@01 $Ref)) (!
  (=>
    (Set_in n@170@01 (Set_union g0@126@01 g1@127@01))
    (and (= (inv@171@01 n@170@01) n@170@01) (img@172@01 n@170@01)))
  :pattern ((Set_in n@170@01 (Set_union g0@126@01 g1@127@01)))
  :pattern ((inv@171@01 n@170@01))
  :pattern ((img@172@01 n@170@01))
  :qid |next-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@172@01 r) (Set_in (inv@171@01 r) (Set_union g0@126@01 g1@127@01)))
    (= (inv@171@01 r) r))
  :pattern ((inv@171@01 r))
  :qid |next-fctOfInv|)))
(assert (forall ((r $Ref)) (!
  (=>
    (Set_in (inv@171@01 r) (Set_union g0@126@01 g1@127@01))
    ($FVF.loc_next ($FVF.lookup_next (as sm@173@01  $FVF<next>) r) r))
  :pattern ((inv@171@01 r))
  :qid |quant-u-14307|)))
(push) ; 3
(assert (not (forall ((r $Ref)) (!
  (=>
    (and
      (Set_in (inv@171@01 r) (Set_union g0@126@01 g1@127@01))
      (img@172@01 r)
      (= r (inv@171@01 r)))
    (>
      (ite
        (and
          (img@136@01 r)
          (Set_in (inv@135@01 r) (Set_union g0@126@01 g1@127@01)))
        $Perm.Write
        $Perm.No)
      $Perm.No))
  
  :qid |quant-u-14308|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(declare-const sm@174@01 $FVF<next>)
; Definitional axioms for snapshot map domain
(assert (forall ((r $Ref)) (!
  (and
    (=>
      (Set_in r ($FVF.domain_next (as sm@174@01  $FVF<next>)))
      (and
        (Set_in (inv@171@01 r) (Set_union g0@126@01 g1@127@01))
        (img@172@01 r)))
    (=>
      (and
        (Set_in (inv@171@01 r) (Set_union g0@126@01 g1@127@01))
        (img@172@01 r))
      (Set_in r ($FVF.domain_next (as sm@174@01  $FVF<next>)))))
  :pattern ((Set_in r ($FVF.domain_next (as sm@174@01  $FVF<next>))))
  :qid |qp.fvfDomDef133|)))
; Definitional axioms for snapshot map values
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and
        (Set_in (inv@171@01 r) (Set_union g0@126@01 g1@127@01))
        (img@172@01 r))
      (and
        (img@136@01 r)
        (Set_in (inv@135@01 r) (Set_union g0@126@01 g1@127@01))))
    (=
      ($FVF.lookup_next (as sm@174@01  $FVF<next>) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@130@01))))) r)))
  :pattern (($FVF.lookup_next (as sm@174@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@130@01))))) r))
  :qid |qp.fvfValDef131|)))
(assert (forall ((r $Ref)) (!
  ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@130@01))))) r) r)
  :pattern (($FVF.lookup_next (as sm@174@01  $FVF<next>) r))
  :qid |qp.fvfResTrgDef132|)))
(assert ($$%precondition ($SortWrappers.$FVF<next>To$Snap (as sm@174@01  $FVF<next>)) (Set_union g0@126@01 g1@127@01)))
(pop) ; 2
; Joined path conditions
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@136@01 r) (Set_in (inv@135@01 r) (Set_union g0@126@01 g1@127@01)))
    (=
      ($FVF.lookup_next (as sm@173@01  $FVF<next>) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@130@01))))) r)))
  :pattern (($FVF.lookup_next (as sm@173@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@130@01))))) r))
  :qid |qp.fvfValDef129|)))
(assert (forall ((r $Ref)) (!
  ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@130@01))))) r) r)
  :pattern (($FVF.lookup_next (as sm@173@01  $FVF<next>) r))
  :qid |qp.fvfResTrgDef130|)))
(assert (forall ((n@170@01 $Ref)) (!
  (=>
    (Set_in n@170@01 (Set_union g0@126@01 g1@127@01))
    (and (= (inv@171@01 n@170@01) n@170@01) (img@172@01 n@170@01)))
  :pattern ((Set_in n@170@01 (Set_union g0@126@01 g1@127@01)))
  :pattern ((inv@171@01 n@170@01))
  :pattern ((img@172@01 n@170@01))
  :qid |next-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@172@01 r) (Set_in (inv@171@01 r) (Set_union g0@126@01 g1@127@01)))
    (= (inv@171@01 r) r))
  :pattern ((inv@171@01 r))
  :qid |next-fctOfInv|)))
(assert (forall ((r $Ref)) (!
  (and
    (=>
      (Set_in r ($FVF.domain_next (as sm@174@01  $FVF<next>)))
      (and
        (Set_in (inv@171@01 r) (Set_union g0@126@01 g1@127@01))
        (img@172@01 r)))
    (=>
      (and
        (Set_in (inv@171@01 r) (Set_union g0@126@01 g1@127@01))
        (img@172@01 r))
      (Set_in r ($FVF.domain_next (as sm@174@01  $FVF<next>)))))
  :pattern ((Set_in r ($FVF.domain_next (as sm@174@01  $FVF<next>))))
  :qid |qp.fvfDomDef133|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and
        (Set_in (inv@171@01 r) (Set_union g0@126@01 g1@127@01))
        (img@172@01 r))
      (and
        (img@136@01 r)
        (Set_in (inv@135@01 r) (Set_union g0@126@01 g1@127@01))))
    (=
      ($FVF.lookup_next (as sm@174@01  $FVF<next>) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@130@01))))) r)))
  :pattern (($FVF.lookup_next (as sm@174@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@130@01))))) r))
  :qid |qp.fvfValDef131|)))
(assert (forall ((r $Ref)) (!
  ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@130@01))))) r) r)
  :pattern (($FVF.lookup_next (as sm@174@01  $FVF<next>) r))
  :qid |qp.fvfResTrgDef132|)))
(assert (and
  (forall ((r $Ref)) (!
    (=>
      (Set_in (inv@171@01 r) (Set_union g0@126@01 g1@127@01))
      ($FVF.loc_next ($FVF.lookup_next (as sm@173@01  $FVF<next>) r) r))
    :pattern ((inv@171@01 r))
    :qid |quant-u-14307|))
  ($$%precondition ($SortWrappers.$FVF<next>To$Snap (as sm@174@01  $FVF<next>)) (Set_union g0@126@01 g1@127@01))))
(assert (unshared_graph<Bool> ($$ ($SortWrappers.$FVF<next>To$Snap (as sm@174@01  $FVF<next>)) (Set_union g0@126@01 g1@127@01))))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@130@01))))))))))))))
  $Snap.unit))
; [eval] x0.next == x1
(assert ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@130@01))))) x0@128@01) x0@128@01))
(push) ; 2
(assert (not (and
  (img@136@01 x0@128@01)
  (Set_in (inv@135@01 x0@128@01) (Set_union g0@126@01 g1@127@01)))))
(check-sat)
; unsat
(pop) ; 2
; 0.00s
; (get-info :all-statistics)
(assert (=
  ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@130@01))))) x0@128@01)
  x1@129@01))
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
(set-option :timeout 0)
(push) ; 2
(declare-const $t@175@01 $Snap)
(assert (= $t@175@01 ($Snap.combine ($Snap.first $t@175@01) ($Snap.second $t@175@01))))
(assert (= ($Snap.first $t@175@01) $Snap.unit))
; [eval] !((null in g0))
; [eval] (null in g0)
(assert (not (Set_in $Ref.null g0@126@01)))
(assert (=
  ($Snap.second $t@175@01)
  ($Snap.combine
    ($Snap.first ($Snap.second $t@175@01))
    ($Snap.second ($Snap.second $t@175@01)))))
(declare-const n$3@176@01 $Ref)
(push) ; 3
; [eval] (n$3 in g0)
(assert (Set_in n$3@176@01 g0@126@01))
(declare-const sm@177@01 $FVF<next>)
; Definitional axioms for snapshot map values
(pop) ; 3
(declare-fun inv@178@01 ($Ref) $Ref)
(declare-fun img@179@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
; Check receiver injectivity
(push) ; 3
(assert (not (forall ((n$31@176@01 $Ref) (n$32@176@01 $Ref)) (!
  (=>
    (and
      (Set_in n$31@176@01 g0@126@01)
      (Set_in n$32@176@01 g0@126@01)
      (= n$31@176@01 n$32@176@01))
    (= n$31@176@01 n$32@176@01))
  
  :qid |next-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((n$3@176@01 $Ref)) (!
  (=>
    (Set_in n$3@176@01 g0@126@01)
    (and (= (inv@178@01 n$3@176@01) n$3@176@01) (img@179@01 n$3@176@01)))
  :pattern (($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@175@01))) n$3@176@01) n$3@176@01))
  :qid |quant-u-14310|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@179@01 r) (Set_in (inv@178@01 r) g0@126@01))
    (= (inv@178@01 r) r))
  :pattern ((inv@178@01 r))
  :qid |next-fctOfInv|)))
; Permissions are non-negative
; Field permissions are at most one
; Permission implies non-null receiver
(assert (forall ((n$3@176@01 $Ref)) (!
  (=> (Set_in n$3@176@01 g0@126@01) (not (= n$3@176@01 $Ref.null)))
  :pattern (($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@175@01))) n$3@176@01) n$3@176@01))
  :qid |next-permImpliesNonNull|)))
(declare-const sm@180@01 $FVF<next>)
; Definitional axioms for snapshot map values
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@179@01 r) (Set_in (inv@178@01 r) g0@126@01))
    (=
      ($FVF.lookup_next (as sm@180@01  $FVF<next>) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@175@01))) r)))
  :pattern (($FVF.lookup_next (as sm@180@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@175@01))) r))
  :qid |qp.fvfValDef135|)))
(assert (forall ((r $Ref)) (!
  ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@175@01))) r) r)
  :pattern (($FVF.lookup_next (as sm@180@01  $FVF<next>) r))
  :qid |qp.fvfResTrgDef136|)))
(assert (forall ((r $Ref)) (!
  (=>
    (Set_in (inv@178@01 r) g0@126@01)
    ($FVF.loc_next ($FVF.lookup_next (as sm@180@01  $FVF<next>) r) r))
  :pattern ((inv@178@01 r))
  :qid |quant-u-14311|)))
(assert (=
  ($Snap.second ($Snap.second $t@175@01))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second $t@175@01)))
    ($Snap.second ($Snap.second ($Snap.second $t@175@01))))))
(assert (= ($Snap.first ($Snap.second ($Snap.second $t@175@01))) $Snap.unit))
; [eval] (forall n$4: Ref :: { (n$4.next in g0) } { (n$4 in g0), n$4.next } (n$4 in g0) && n$4.next != null ==> (n$4.next in g0))
(declare-const n$4@181@01 $Ref)
(push) ; 3
; [eval] (n$4 in g0) && n$4.next != null ==> (n$4.next in g0)
; [eval] (n$4 in g0) && n$4.next != null
; [eval] (n$4 in g0)
(push) ; 4
; [then-branch: 40 | !(n$4@181@01 in g0@126@01) | live]
; [else-branch: 40 | n$4@181@01 in g0@126@01 | live]
(push) ; 5
; [then-branch: 40 | !(n$4@181@01 in g0@126@01)]
(assert (not (Set_in n$4@181@01 g0@126@01)))
(pop) ; 5
(push) ; 5
; [else-branch: 40 | n$4@181@01 in g0@126@01]
(assert (Set_in n$4@181@01 g0@126@01))
; [eval] n$4.next != null
(assert (and
  (forall ((r $Ref)) (!
    (=>
      (and (img@179@01 r) (Set_in (inv@178@01 r) g0@126@01))
      (=
        ($FVF.lookup_next (as sm@180@01  $FVF<next>) r)
        ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@175@01))) r)))
    :pattern (($FVF.lookup_next (as sm@180@01  $FVF<next>) r))
    :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@175@01))) r))
    :qid |qp.fvfValDef135|))
  (forall ((r $Ref)) (!
    ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@175@01))) r) r)
    :pattern (($FVF.lookup_next (as sm@180@01  $FVF<next>) r))
    :qid |qp.fvfResTrgDef136|))))
(assert ($FVF.loc_next ($FVF.lookup_next (as sm@180@01  $FVF<next>) n$4@181@01) n$4@181@01))
(push) ; 6
(assert (not (and (img@179@01 n$4@181@01) (Set_in (inv@178@01 n$4@181@01) g0@126@01))))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(pop) ; 5
(pop) ; 4
; Joined path conditions
; Joined path conditions
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@179@01 r) (Set_in (inv@178@01 r) g0@126@01))
    (=
      ($FVF.lookup_next (as sm@180@01  $FVF<next>) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@175@01))) r)))
  :pattern (($FVF.lookup_next (as sm@180@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@175@01))) r))
  :qid |qp.fvfValDef135|)))
(assert (forall ((r $Ref)) (!
  ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@175@01))) r) r)
  :pattern (($FVF.lookup_next (as sm@180@01  $FVF<next>) r))
  :qid |qp.fvfResTrgDef136|)))
(assert (=>
  (Set_in n$4@181@01 g0@126@01)
  (and
    (Set_in n$4@181@01 g0@126@01)
    ($FVF.loc_next ($FVF.lookup_next (as sm@180@01  $FVF<next>) n$4@181@01) n$4@181@01))))
(assert (or (Set_in n$4@181@01 g0@126@01) (not (Set_in n$4@181@01 g0@126@01))))
(push) ; 4
; [then-branch: 41 | n$4@181@01 in g0@126@01 && Lookup(next, sm@180@01, n$4@181@01) != Null | live]
; [else-branch: 41 | !(n$4@181@01 in g0@126@01 && Lookup(next, sm@180@01, n$4@181@01) != Null) | live]
(push) ; 5
; [then-branch: 41 | n$4@181@01 in g0@126@01 && Lookup(next, sm@180@01, n$4@181@01) != Null]
(assert (and
  (Set_in n$4@181@01 g0@126@01)
  (not (= ($FVF.lookup_next (as sm@180@01  $FVF<next>) n$4@181@01) $Ref.null))))
; [eval] (n$4.next in g0)
(assert (and
  (forall ((r $Ref)) (!
    (=>
      (and (img@179@01 r) (Set_in (inv@178@01 r) g0@126@01))
      (=
        ($FVF.lookup_next (as sm@180@01  $FVF<next>) r)
        ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@175@01))) r)))
    :pattern (($FVF.lookup_next (as sm@180@01  $FVF<next>) r))
    :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@175@01))) r))
    :qid |qp.fvfValDef135|))
  (forall ((r $Ref)) (!
    ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@175@01))) r) r)
    :pattern (($FVF.lookup_next (as sm@180@01  $FVF<next>) r))
    :qid |qp.fvfResTrgDef136|))))
(assert ($FVF.loc_next ($FVF.lookup_next (as sm@180@01  $FVF<next>) n$4@181@01) n$4@181@01))
(push) ; 6
(assert (not (and (img@179@01 n$4@181@01) (Set_in (inv@178@01 n$4@181@01) g0@126@01))))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(pop) ; 5
(push) ; 5
; [else-branch: 41 | !(n$4@181@01 in g0@126@01 && Lookup(next, sm@180@01, n$4@181@01) != Null)]
(assert (not
  (and
    (Set_in n$4@181@01 g0@126@01)
    (not (= ($FVF.lookup_next (as sm@180@01  $FVF<next>) n$4@181@01) $Ref.null)))))
(pop) ; 5
(pop) ; 4
; Joined path conditions
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@179@01 r) (Set_in (inv@178@01 r) g0@126@01))
    (=
      ($FVF.lookup_next (as sm@180@01  $FVF<next>) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@175@01))) r)))
  :pattern (($FVF.lookup_next (as sm@180@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@175@01))) r))
  :qid |qp.fvfValDef135|)))
(assert (forall ((r $Ref)) (!
  ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@175@01))) r) r)
  :pattern (($FVF.lookup_next (as sm@180@01  $FVF<next>) r))
  :qid |qp.fvfResTrgDef136|)))
(assert (=>
  (and
    (Set_in n$4@181@01 g0@126@01)
    (not (= ($FVF.lookup_next (as sm@180@01  $FVF<next>) n$4@181@01) $Ref.null)))
  (and
    (Set_in n$4@181@01 g0@126@01)
    (not (= ($FVF.lookup_next (as sm@180@01  $FVF<next>) n$4@181@01) $Ref.null))
    ($FVF.loc_next ($FVF.lookup_next (as sm@180@01  $FVF<next>) n$4@181@01) n$4@181@01))))
; Joined path conditions
(assert (or
  (not
    (and
      (Set_in n$4@181@01 g0@126@01)
      (not
        (= ($FVF.lookup_next (as sm@180@01  $FVF<next>) n$4@181@01) $Ref.null))))
  (and
    (Set_in n$4@181@01 g0@126@01)
    (not (= ($FVF.lookup_next (as sm@180@01  $FVF<next>) n$4@181@01) $Ref.null)))))
; Definitional axioms for snapshot map values
(pop) ; 3
; Nested auxiliary terms: globals (aux)
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@179@01 r) (Set_in (inv@178@01 r) g0@126@01))
    (=
      ($FVF.lookup_next (as sm@180@01  $FVF<next>) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@175@01))) r)))
  :pattern (($FVF.lookup_next (as sm@180@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@175@01))) r))
  :qid |qp.fvfValDef135|)))
(assert (forall ((r $Ref)) (!
  ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@175@01))) r) r)
  :pattern (($FVF.lookup_next (as sm@180@01  $FVF<next>) r))
  :qid |qp.fvfResTrgDef136|)))
; Nested auxiliary terms: non-globals (aux)
(assert (forall ((n$4@181@01 $Ref)) (!
  (and
    (=>
      (Set_in n$4@181@01 g0@126@01)
      (and
        (Set_in n$4@181@01 g0@126@01)
        ($FVF.loc_next ($FVF.lookup_next (as sm@180@01  $FVF<next>) n$4@181@01) n$4@181@01)))
    (or (Set_in n$4@181@01 g0@126@01) (not (Set_in n$4@181@01 g0@126@01)))
    (=>
      (and
        (Set_in n$4@181@01 g0@126@01)
        (not
          (= ($FVF.lookup_next (as sm@180@01  $FVF<next>) n$4@181@01) $Ref.null)))
      (and
        (Set_in n$4@181@01 g0@126@01)
        (not
          (= ($FVF.lookup_next (as sm@180@01  $FVF<next>) n$4@181@01) $Ref.null))
        ($FVF.loc_next ($FVF.lookup_next (as sm@180@01  $FVF<next>) n$4@181@01) n$4@181@01)))
    (or
      (not
        (and
          (Set_in n$4@181@01 g0@126@01)
          (not
            (=
              ($FVF.lookup_next (as sm@180@01  $FVF<next>) n$4@181@01)
              $Ref.null))))
      (and
        (Set_in n$4@181@01 g0@126@01)
        (not
          (= ($FVF.lookup_next (as sm@180@01  $FVF<next>) n$4@181@01) $Ref.null)))))
  :pattern ((Set_in ($FVF.lookup_next (as sm@180@01  $FVF<next>) n$4@181@01) g0@126@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/graphs/static/tests/lists/delete_edge1.vpr@344@13@344@22-aux|)))
(assert (forall ((n$4@181@01 $Ref)) (!
  (and
    (=>
      (Set_in n$4@181@01 g0@126@01)
      (and
        (Set_in n$4@181@01 g0@126@01)
        ($FVF.loc_next ($FVF.lookup_next (as sm@180@01  $FVF<next>) n$4@181@01) n$4@181@01)))
    (or (Set_in n$4@181@01 g0@126@01) (not (Set_in n$4@181@01 g0@126@01)))
    (=>
      (and
        (Set_in n$4@181@01 g0@126@01)
        (not
          (= ($FVF.lookup_next (as sm@180@01  $FVF<next>) n$4@181@01) $Ref.null)))
      (and
        (Set_in n$4@181@01 g0@126@01)
        (not
          (= ($FVF.lookup_next (as sm@180@01  $FVF<next>) n$4@181@01) $Ref.null))
        ($FVF.loc_next ($FVF.lookup_next (as sm@180@01  $FVF<next>) n$4@181@01) n$4@181@01)))
    (or
      (not
        (and
          (Set_in n$4@181@01 g0@126@01)
          (not
            (=
              ($FVF.lookup_next (as sm@180@01  $FVF<next>) n$4@181@01)
              $Ref.null))))
      (and
        (Set_in n$4@181@01 g0@126@01)
        (not
          (= ($FVF.lookup_next (as sm@180@01  $FVF<next>) n$4@181@01) $Ref.null)))))
  :pattern ((Set_in n$4@181@01 g0@126@01) ($FVF.loc_next ($FVF.lookup_next (as sm@180@01  $FVF<next>) n$4@181@01) n$4@181@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/graphs/static/tests/lists/delete_edge1.vpr@344@13@344@22-aux|)))
(assert (forall ((n$4@181@01 $Ref)) (!
  (=>
    (and
      (Set_in n$4@181@01 g0@126@01)
      (not
        (= ($FVF.lookup_next (as sm@180@01  $FVF<next>) n$4@181@01) $Ref.null)))
    (Set_in ($FVF.lookup_next (as sm@180@01  $FVF<next>) n$4@181@01) g0@126@01))
  :pattern ((Set_in ($FVF.lookup_next (as sm@180@01  $FVF<next>) n$4@181@01) g0@126@01))
  :pattern ((Set_in n$4@181@01 g0@126@01) ($FVF.loc_next ($FVF.lookup_next (as sm@180@01  $FVF<next>) n$4@181@01) n$4@181@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/graphs/static/tests/lists/delete_edge1.vpr@344@13@344@22|)))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second $t@175@01)))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@175@01))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@175@01)))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@175@01))))
  $Snap.unit))
; [eval] !((null in g1))
; [eval] (null in g1)
(assert (not (Set_in $Ref.null g1@127@01)))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@175@01))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@175@01)))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@175@01))))))))
(declare-const n$5@182@01 $Ref)
(push) ; 3
; [eval] (n$5 in g1)
(assert (Set_in n$5@182@01 g1@127@01))
; Definitional axioms for snapshot map values
(pop) ; 3
(declare-fun inv@183@01 ($Ref) $Ref)
(declare-fun img@184@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
; Check receiver injectivity
(push) ; 3
(assert (not (forall ((n$51@182@01 $Ref) (n$52@182@01 $Ref)) (!
  (=>
    (and
      (Set_in n$51@182@01 g1@127@01)
      (Set_in n$52@182@01 g1@127@01)
      (= n$51@182@01 n$52@182@01))
    (= n$51@182@01 n$52@182@01))
  
  :qid |next-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((n$5@182@01 $Ref)) (!
  (=>
    (Set_in n$5@182@01 g1@127@01)
    (and (= (inv@183@01 n$5@182@01) n$5@182@01) (img@184@01 n$5@182@01)))
  :pattern (($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@175@01)))))) n$5@182@01) n$5@182@01))
  :qid |quant-u-14313|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@184@01 r) (Set_in (inv@183@01 r) g1@127@01))
    (= (inv@183@01 r) r))
  :pattern ((inv@183@01 r))
  :qid |next-fctOfInv|)))
; Permissions are non-negative
; Field permissions are at most one
; Permission implies non-null receiver
(assert (forall ((n$5@182@01 $Ref)) (!
  (=> (Set_in n$5@182@01 g1@127@01) (not (= n$5@182@01 $Ref.null)))
  :pattern (($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@175@01)))))) n$5@182@01) n$5@182@01))
  :qid |next-permImpliesNonNull|)))
(push) ; 3
(set-option :timeout 10)
(assert (not (forall ((r $Ref)) (!
  (and
    (= n$5@182@01 n$3@176@01)
    (=
      (and (img@184@01 r) (Set_in (inv@183@01 r) g1@127@01))
      (and (img@179@01 r) (Set_in (inv@178@01 r) g0@126@01))))
  
  :qid |quant-u-14314|))))
(check-sat)
; unknown
(pop) ; 3
; 0.01s
; (get-info :all-statistics)
(declare-const sm@185@01 $FVF<next>)
; Definitional axioms for snapshot map values
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@179@01 r) (Set_in (inv@178@01 r) g0@126@01))
    (=
      ($FVF.lookup_next (as sm@185@01  $FVF<next>) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@175@01))) r)))
  :pattern (($FVF.lookup_next (as sm@185@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@175@01))) r))
  :qid |qp.fvfValDef137|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@184@01 r) (Set_in (inv@183@01 r) g1@127@01))
    (=
      ($FVF.lookup_next (as sm@185@01  $FVF<next>) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@175@01)))))) r)))
  :pattern (($FVF.lookup_next (as sm@185@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@175@01)))))) r))
  :qid |qp.fvfValDef138|)))
(assert (forall ((r $Ref)) (!
  (and
    ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@175@01))) r) r)
    ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@175@01)))))) r) r))
  :pattern (($FVF.lookup_next (as sm@185@01  $FVF<next>) r))
  :qid |qp.fvfResTrgDef139|)))
(assert (forall ((r $Ref)) (!
  (=>
    (Set_in (inv@183@01 r) g1@127@01)
    ($FVF.loc_next ($FVF.lookup_next (as sm@185@01  $FVF<next>) r) r))
  :pattern ((inv@183@01 r))
  :qid |quant-u-14315|)))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@175@01)))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@175@01))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@175@01)))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@175@01))))))
  $Snap.unit))
; [eval] (forall n$6: Ref :: { (n$6.next in g1) } { (n$6 in g1), n$6.next } (n$6 in g1) && n$6.next != null ==> (n$6.next in g1))
(declare-const n$6@186@01 $Ref)
(set-option :timeout 0)
(push) ; 3
; [eval] (n$6 in g1) && n$6.next != null ==> (n$6.next in g1)
; [eval] (n$6 in g1) && n$6.next != null
; [eval] (n$6 in g1)
(push) ; 4
; [then-branch: 42 | !(n$6@186@01 in g1@127@01) | live]
; [else-branch: 42 | n$6@186@01 in g1@127@01 | live]
(push) ; 5
; [then-branch: 42 | !(n$6@186@01 in g1@127@01)]
(assert (not (Set_in n$6@186@01 g1@127@01)))
(pop) ; 5
(push) ; 5
; [else-branch: 42 | n$6@186@01 in g1@127@01]
(assert (Set_in n$6@186@01 g1@127@01))
; [eval] n$6.next != null
(assert (and
  (forall ((r $Ref)) (!
    (=>
      (and (img@179@01 r) (Set_in (inv@178@01 r) g0@126@01))
      (=
        ($FVF.lookup_next (as sm@185@01  $FVF<next>) r)
        ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@175@01))) r)))
    :pattern (($FVF.lookup_next (as sm@185@01  $FVF<next>) r))
    :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@175@01))) r))
    :qid |qp.fvfValDef137|))
  (forall ((r $Ref)) (!
    (=>
      (and (img@184@01 r) (Set_in (inv@183@01 r) g1@127@01))
      (=
        ($FVF.lookup_next (as sm@185@01  $FVF<next>) r)
        ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@175@01)))))) r)))
    :pattern (($FVF.lookup_next (as sm@185@01  $FVF<next>) r))
    :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@175@01)))))) r))
    :qid |qp.fvfValDef138|))
  (forall ((r $Ref)) (!
    (and
      ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@175@01))) r) r)
      ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@175@01)))))) r) r))
    :pattern (($FVF.lookup_next (as sm@185@01  $FVF<next>) r))
    :qid |qp.fvfResTrgDef139|))))
(assert ($FVF.loc_next ($FVF.lookup_next (as sm@185@01  $FVF<next>) n$6@186@01) n$6@186@01))
(push) ; 6
(assert (not (<
  $Perm.No
  (+
    (ite
      (and (img@179@01 n$6@186@01) (Set_in (inv@178@01 n$6@186@01) g0@126@01))
      $Perm.Write
      $Perm.No)
    (ite
      (and (img@184@01 n$6@186@01) (Set_in (inv@183@01 n$6@186@01) g1@127@01))
      $Perm.Write
      $Perm.No)))))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(pop) ; 5
(pop) ; 4
; Joined path conditions
; Joined path conditions
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@179@01 r) (Set_in (inv@178@01 r) g0@126@01))
    (=
      ($FVF.lookup_next (as sm@185@01  $FVF<next>) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@175@01))) r)))
  :pattern (($FVF.lookup_next (as sm@185@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@175@01))) r))
  :qid |qp.fvfValDef137|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@184@01 r) (Set_in (inv@183@01 r) g1@127@01))
    (=
      ($FVF.lookup_next (as sm@185@01  $FVF<next>) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@175@01)))))) r)))
  :pattern (($FVF.lookup_next (as sm@185@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@175@01)))))) r))
  :qid |qp.fvfValDef138|)))
(assert (forall ((r $Ref)) (!
  (and
    ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@175@01))) r) r)
    ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@175@01)))))) r) r))
  :pattern (($FVF.lookup_next (as sm@185@01  $FVF<next>) r))
  :qid |qp.fvfResTrgDef139|)))
(assert (=>
  (Set_in n$6@186@01 g1@127@01)
  (and
    (Set_in n$6@186@01 g1@127@01)
    ($FVF.loc_next ($FVF.lookup_next (as sm@185@01  $FVF<next>) n$6@186@01) n$6@186@01))))
(assert (or (Set_in n$6@186@01 g1@127@01) (not (Set_in n$6@186@01 g1@127@01))))
(push) ; 4
; [then-branch: 43 | n$6@186@01 in g1@127@01 && Lookup(next, sm@185@01, n$6@186@01) != Null | live]
; [else-branch: 43 | !(n$6@186@01 in g1@127@01 && Lookup(next, sm@185@01, n$6@186@01) != Null) | live]
(push) ; 5
; [then-branch: 43 | n$6@186@01 in g1@127@01 && Lookup(next, sm@185@01, n$6@186@01) != Null]
(assert (and
  (Set_in n$6@186@01 g1@127@01)
  (not (= ($FVF.lookup_next (as sm@185@01  $FVF<next>) n$6@186@01) $Ref.null))))
; [eval] (n$6.next in g1)
(assert (and
  (forall ((r $Ref)) (!
    (=>
      (and (img@179@01 r) (Set_in (inv@178@01 r) g0@126@01))
      (=
        ($FVF.lookup_next (as sm@185@01  $FVF<next>) r)
        ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@175@01))) r)))
    :pattern (($FVF.lookup_next (as sm@185@01  $FVF<next>) r))
    :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@175@01))) r))
    :qid |qp.fvfValDef137|))
  (forall ((r $Ref)) (!
    (=>
      (and (img@184@01 r) (Set_in (inv@183@01 r) g1@127@01))
      (=
        ($FVF.lookup_next (as sm@185@01  $FVF<next>) r)
        ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@175@01)))))) r)))
    :pattern (($FVF.lookup_next (as sm@185@01  $FVF<next>) r))
    :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@175@01)))))) r))
    :qid |qp.fvfValDef138|))
  (forall ((r $Ref)) (!
    (and
      ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@175@01))) r) r)
      ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@175@01)))))) r) r))
    :pattern (($FVF.lookup_next (as sm@185@01  $FVF<next>) r))
    :qid |qp.fvfResTrgDef139|))))
(assert ($FVF.loc_next ($FVF.lookup_next (as sm@185@01  $FVF<next>) n$6@186@01) n$6@186@01))
(push) ; 6
(assert (not (<
  $Perm.No
  (+
    (ite
      (and (img@179@01 n$6@186@01) (Set_in (inv@178@01 n$6@186@01) g0@126@01))
      $Perm.Write
      $Perm.No)
    (ite
      (and (img@184@01 n$6@186@01) (Set_in (inv@183@01 n$6@186@01) g1@127@01))
      $Perm.Write
      $Perm.No)))))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(pop) ; 5
(push) ; 5
; [else-branch: 43 | !(n$6@186@01 in g1@127@01 && Lookup(next, sm@185@01, n$6@186@01) != Null)]
(assert (not
  (and
    (Set_in n$6@186@01 g1@127@01)
    (not (= ($FVF.lookup_next (as sm@185@01  $FVF<next>) n$6@186@01) $Ref.null)))))
(pop) ; 5
(pop) ; 4
; Joined path conditions
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@179@01 r) (Set_in (inv@178@01 r) g0@126@01))
    (=
      ($FVF.lookup_next (as sm@185@01  $FVF<next>) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@175@01))) r)))
  :pattern (($FVF.lookup_next (as sm@185@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@175@01))) r))
  :qid |qp.fvfValDef137|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@184@01 r) (Set_in (inv@183@01 r) g1@127@01))
    (=
      ($FVF.lookup_next (as sm@185@01  $FVF<next>) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@175@01)))))) r)))
  :pattern (($FVF.lookup_next (as sm@185@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@175@01)))))) r))
  :qid |qp.fvfValDef138|)))
(assert (forall ((r $Ref)) (!
  (and
    ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@175@01))) r) r)
    ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@175@01)))))) r) r))
  :pattern (($FVF.lookup_next (as sm@185@01  $FVF<next>) r))
  :qid |qp.fvfResTrgDef139|)))
(assert (=>
  (and
    (Set_in n$6@186@01 g1@127@01)
    (not (= ($FVF.lookup_next (as sm@185@01  $FVF<next>) n$6@186@01) $Ref.null)))
  (and
    (Set_in n$6@186@01 g1@127@01)
    (not (= ($FVF.lookup_next (as sm@185@01  $FVF<next>) n$6@186@01) $Ref.null))
    ($FVF.loc_next ($FVF.lookup_next (as sm@185@01  $FVF<next>) n$6@186@01) n$6@186@01))))
; Joined path conditions
(assert (or
  (not
    (and
      (Set_in n$6@186@01 g1@127@01)
      (not
        (= ($FVF.lookup_next (as sm@185@01  $FVF<next>) n$6@186@01) $Ref.null))))
  (and
    (Set_in n$6@186@01 g1@127@01)
    (not (= ($FVF.lookup_next (as sm@185@01  $FVF<next>) n$6@186@01) $Ref.null)))))
; Definitional axioms for snapshot map values
(pop) ; 3
; Nested auxiliary terms: globals (aux)
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@179@01 r) (Set_in (inv@178@01 r) g0@126@01))
    (=
      ($FVF.lookup_next (as sm@185@01  $FVF<next>) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@175@01))) r)))
  :pattern (($FVF.lookup_next (as sm@185@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@175@01))) r))
  :qid |qp.fvfValDef137|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@184@01 r) (Set_in (inv@183@01 r) g1@127@01))
    (=
      ($FVF.lookup_next (as sm@185@01  $FVF<next>) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@175@01)))))) r)))
  :pattern (($FVF.lookup_next (as sm@185@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@175@01)))))) r))
  :qid |qp.fvfValDef138|)))
(assert (forall ((r $Ref)) (!
  (and
    ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@175@01))) r) r)
    ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@175@01)))))) r) r))
  :pattern (($FVF.lookup_next (as sm@185@01  $FVF<next>) r))
  :qid |qp.fvfResTrgDef139|)))
; Nested auxiliary terms: non-globals (aux)
(assert (forall ((n$6@186@01 $Ref)) (!
  (and
    (=>
      (Set_in n$6@186@01 g1@127@01)
      (and
        (Set_in n$6@186@01 g1@127@01)
        ($FVF.loc_next ($FVF.lookup_next (as sm@185@01  $FVF<next>) n$6@186@01) n$6@186@01)))
    (or (Set_in n$6@186@01 g1@127@01) (not (Set_in n$6@186@01 g1@127@01)))
    (=>
      (and
        (Set_in n$6@186@01 g1@127@01)
        (not
          (= ($FVF.lookup_next (as sm@185@01  $FVF<next>) n$6@186@01) $Ref.null)))
      (and
        (Set_in n$6@186@01 g1@127@01)
        (not
          (= ($FVF.lookup_next (as sm@185@01  $FVF<next>) n$6@186@01) $Ref.null))
        ($FVF.loc_next ($FVF.lookup_next (as sm@185@01  $FVF<next>) n$6@186@01) n$6@186@01)))
    (or
      (not
        (and
          (Set_in n$6@186@01 g1@127@01)
          (not
            (=
              ($FVF.lookup_next (as sm@185@01  $FVF<next>) n$6@186@01)
              $Ref.null))))
      (and
        (Set_in n$6@186@01 g1@127@01)
        (not
          (= ($FVF.lookup_next (as sm@185@01  $FVF<next>) n$6@186@01) $Ref.null)))))
  :pattern ((Set_in ($FVF.lookup_next (as sm@185@01  $FVF<next>) n$6@186@01) g1@127@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/graphs/static/tests/lists/delete_edge1.vpr@345@13@345@22-aux|)))
(assert (forall ((n$6@186@01 $Ref)) (!
  (and
    (=>
      (Set_in n$6@186@01 g1@127@01)
      (and
        (Set_in n$6@186@01 g1@127@01)
        ($FVF.loc_next ($FVF.lookup_next (as sm@185@01  $FVF<next>) n$6@186@01) n$6@186@01)))
    (or (Set_in n$6@186@01 g1@127@01) (not (Set_in n$6@186@01 g1@127@01)))
    (=>
      (and
        (Set_in n$6@186@01 g1@127@01)
        (not
          (= ($FVF.lookup_next (as sm@185@01  $FVF<next>) n$6@186@01) $Ref.null)))
      (and
        (Set_in n$6@186@01 g1@127@01)
        (not
          (= ($FVF.lookup_next (as sm@185@01  $FVF<next>) n$6@186@01) $Ref.null))
        ($FVF.loc_next ($FVF.lookup_next (as sm@185@01  $FVF<next>) n$6@186@01) n$6@186@01)))
    (or
      (not
        (and
          (Set_in n$6@186@01 g1@127@01)
          (not
            (=
              ($FVF.lookup_next (as sm@185@01  $FVF<next>) n$6@186@01)
              $Ref.null))))
      (and
        (Set_in n$6@186@01 g1@127@01)
        (not
          (= ($FVF.lookup_next (as sm@185@01  $FVF<next>) n$6@186@01) $Ref.null)))))
  :pattern ((Set_in n$6@186@01 g1@127@01) ($FVF.loc_next ($FVF.lookup_next (as sm@185@01  $FVF<next>) n$6@186@01) n$6@186@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/graphs/static/tests/lists/delete_edge1.vpr@345@13@345@22-aux|)))
(assert (forall ((n$6@186@01 $Ref)) (!
  (=>
    (and
      (Set_in n$6@186@01 g1@127@01)
      (not
        (= ($FVF.lookup_next (as sm@185@01  $FVF<next>) n$6@186@01) $Ref.null)))
    (Set_in ($FVF.lookup_next (as sm@185@01  $FVF<next>) n$6@186@01) g1@127@01))
  :pattern ((Set_in ($FVF.lookup_next (as sm@185@01  $FVF<next>) n$6@186@01) g1@127@01))
  :pattern ((Set_in n$6@186@01 g1@127@01) ($FVF.loc_next ($FVF.lookup_next (as sm@185@01  $FVF<next>) n$6@186@01) n$6@186@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/graphs/static/tests/lists/delete_edge1.vpr@345@13@345@22|)))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@175@01))))))
  $Snap.unit))
; [eval] (forall n$7: Ref :: { exists_path($$(g1), x1, n$7) } (n$7 in g1) ==> exists_path($$(g1), x1, n$7))
(declare-const n$7@187@01 $Ref)
(push) ; 3
; [eval] (n$7 in g1) ==> exists_path($$(g1), x1, n$7)
; [eval] (n$7 in g1)
(push) ; 4
; [then-branch: 44 | n$7@187@01 in g1@127@01 | live]
; [else-branch: 44 | !(n$7@187@01 in g1@127@01) | live]
(push) ; 5
; [then-branch: 44 | n$7@187@01 in g1@127@01]
(assert (Set_in n$7@187@01 g1@127@01))
; [eval] exists_path($$(g1), x1, n$7)
; [eval] $$(g1)
(push) ; 6
(declare-const n@188@01 $Ref)
(push) ; 7
; [eval] (n in refs)
(assert (Set_in n@188@01 g1@127@01))
(pop) ; 7
(declare-fun inv@189@01 ($Ref) $Ref)
(declare-fun img@190@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
; Definitional axioms for snapshot map domain
; Definitional axioms for snapshot map values
; Check receiver injectivity
(push) ; 7
(assert (not (forall ((n1@188@01 $Ref) (n2@188@01 $Ref)) (!
  (=>
    (and
      (and
        (Set_in n1@188@01 g1@127@01)
        ($FVF.loc_next ($FVF.lookup_next (as sm@185@01  $FVF<next>) n1@188@01) n1@188@01))
      (and
        (Set_in n2@188@01 g1@127@01)
        ($FVF.loc_next ($FVF.lookup_next (as sm@185@01  $FVF<next>) n2@188@01) n2@188@01))
      (= n1@188@01 n2@188@01))
    (= n1@188@01 n2@188@01))
  
  :qid |next-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((n@188@01 $Ref)) (!
  (=>
    (Set_in n@188@01 g1@127@01)
    (and (= (inv@189@01 n@188@01) n@188@01) (img@190@01 n@188@01)))
  :pattern ((Set_in n@188@01 g1@127@01))
  :pattern ((inv@189@01 n@188@01))
  :pattern ((img@190@01 n@188@01))
  :qid |next-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@190@01 r) (Set_in (inv@189@01 r) g1@127@01))
    (= (inv@189@01 r) r))
  :pattern ((inv@189@01 r))
  :qid |next-fctOfInv|)))
(assert (forall ((r $Ref)) (!
  (=>
    (Set_in (inv@189@01 r) g1@127@01)
    ($FVF.loc_next ($FVF.lookup_next (as sm@185@01  $FVF<next>) r) r))
  :pattern ((inv@189@01 r))
  :qid |quant-u-14317|)))
(push) ; 7
(assert (not (forall ((r $Ref)) (!
  (=>
    (and (Set_in (inv@189@01 r) g1@127@01) (img@190@01 r) (= r (inv@189@01 r)))
    (>
      (+
        (ite
          (and (img@179@01 r) (Set_in (inv@178@01 r) g0@126@01))
          $Perm.Write
          $Perm.No)
        (ite
          (and (img@184@01 r) (Set_in (inv@183@01 r) g1@127@01))
          $Perm.Write
          $Perm.No))
      $Perm.No))
  
  :qid |quant-u-14318|))))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(declare-const sm@191@01 $FVF<next>)
; Definitional axioms for snapshot map domain
(assert (forall ((r $Ref)) (!
  (and
    (=>
      (Set_in r ($FVF.domain_next (as sm@191@01  $FVF<next>)))
      (and (Set_in (inv@189@01 r) g1@127@01) (img@190@01 r)))
    (=>
      (and (Set_in (inv@189@01 r) g1@127@01) (img@190@01 r))
      (Set_in r ($FVF.domain_next (as sm@191@01  $FVF<next>)))))
  :pattern ((Set_in r ($FVF.domain_next (as sm@191@01  $FVF<next>))))
  :qid |qp.fvfDomDef143|)))
; Definitional axioms for snapshot map values
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and (Set_in (inv@189@01 r) g1@127@01) (img@190@01 r))
      (and (img@179@01 r) (Set_in (inv@178@01 r) g0@126@01)))
    (=
      ($FVF.lookup_next (as sm@191@01  $FVF<next>) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@175@01))) r)))
  :pattern (($FVF.lookup_next (as sm@191@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@175@01))) r))
  :qid |qp.fvfValDef140|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and (Set_in (inv@189@01 r) g1@127@01) (img@190@01 r))
      (and (img@184@01 r) (Set_in (inv@183@01 r) g1@127@01)))
    (=
      ($FVF.lookup_next (as sm@191@01  $FVF<next>) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@175@01)))))) r)))
  :pattern (($FVF.lookup_next (as sm@191@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@175@01)))))) r))
  :qid |qp.fvfValDef141|)))
(assert (forall ((r $Ref)) (!
  (and
    ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@175@01))) r) r)
    ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@175@01)))))) r) r))
  :pattern (($FVF.lookup_next (as sm@191@01  $FVF<next>) r))
  :qid |qp.fvfResTrgDef142|)))
(assert ($$%precondition ($SortWrappers.$FVF<next>To$Snap (as sm@191@01  $FVF<next>)) g1@127@01))
(pop) ; 6
; Joined path conditions
(assert (forall ((n@188@01 $Ref)) (!
  (=>
    (Set_in n@188@01 g1@127@01)
    (and (= (inv@189@01 n@188@01) n@188@01) (img@190@01 n@188@01)))
  :pattern ((Set_in n@188@01 g1@127@01))
  :pattern ((inv@189@01 n@188@01))
  :pattern ((img@190@01 n@188@01))
  :qid |next-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@190@01 r) (Set_in (inv@189@01 r) g1@127@01))
    (= (inv@189@01 r) r))
  :pattern ((inv@189@01 r))
  :qid |next-fctOfInv|)))
(assert (forall ((r $Ref)) (!
  (and
    (=>
      (Set_in r ($FVF.domain_next (as sm@191@01  $FVF<next>)))
      (and (Set_in (inv@189@01 r) g1@127@01) (img@190@01 r)))
    (=>
      (and (Set_in (inv@189@01 r) g1@127@01) (img@190@01 r))
      (Set_in r ($FVF.domain_next (as sm@191@01  $FVF<next>)))))
  :pattern ((Set_in r ($FVF.domain_next (as sm@191@01  $FVF<next>))))
  :qid |qp.fvfDomDef143|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and (Set_in (inv@189@01 r) g1@127@01) (img@190@01 r))
      (and (img@179@01 r) (Set_in (inv@178@01 r) g0@126@01)))
    (=
      ($FVF.lookup_next (as sm@191@01  $FVF<next>) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@175@01))) r)))
  :pattern (($FVF.lookup_next (as sm@191@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@175@01))) r))
  :qid |qp.fvfValDef140|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and (Set_in (inv@189@01 r) g1@127@01) (img@190@01 r))
      (and (img@184@01 r) (Set_in (inv@183@01 r) g1@127@01)))
    (=
      ($FVF.lookup_next (as sm@191@01  $FVF<next>) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@175@01)))))) r)))
  :pattern (($FVF.lookup_next (as sm@191@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@175@01)))))) r))
  :qid |qp.fvfValDef141|)))
(assert (forall ((r $Ref)) (!
  (and
    ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@175@01))) r) r)
    ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@175@01)))))) r) r))
  :pattern (($FVF.lookup_next (as sm@191@01  $FVF<next>) r))
  :qid |qp.fvfResTrgDef142|)))
(assert (and
  (forall ((r $Ref)) (!
    (=>
      (Set_in (inv@189@01 r) g1@127@01)
      ($FVF.loc_next ($FVF.lookup_next (as sm@185@01  $FVF<next>) r) r))
    :pattern ((inv@189@01 r))
    :qid |quant-u-14317|))
  ($$%precondition ($SortWrappers.$FVF<next>To$Snap (as sm@191@01  $FVF<next>)) g1@127@01)))
(pop) ; 5
(push) ; 5
; [else-branch: 44 | !(n$7@187@01 in g1@127@01)]
(assert (not (Set_in n$7@187@01 g1@127@01)))
(pop) ; 5
(pop) ; 4
; Joined path conditions
(assert (forall ((n@188@01 $Ref)) (!
  (=>
    (Set_in n@188@01 g1@127@01)
    (and (= (inv@189@01 n@188@01) n@188@01) (img@190@01 n@188@01)))
  :pattern ((Set_in n@188@01 g1@127@01))
  :pattern ((inv@189@01 n@188@01))
  :pattern ((img@190@01 n@188@01))
  :qid |next-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@190@01 r) (Set_in (inv@189@01 r) g1@127@01))
    (= (inv@189@01 r) r))
  :pattern ((inv@189@01 r))
  :qid |next-fctOfInv|)))
(assert (forall ((r $Ref)) (!
  (and
    (=>
      (Set_in r ($FVF.domain_next (as sm@191@01  $FVF<next>)))
      (and (Set_in (inv@189@01 r) g1@127@01) (img@190@01 r)))
    (=>
      (and (Set_in (inv@189@01 r) g1@127@01) (img@190@01 r))
      (Set_in r ($FVF.domain_next (as sm@191@01  $FVF<next>)))))
  :pattern ((Set_in r ($FVF.domain_next (as sm@191@01  $FVF<next>))))
  :qid |qp.fvfDomDef143|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and (Set_in (inv@189@01 r) g1@127@01) (img@190@01 r))
      (and (img@179@01 r) (Set_in (inv@178@01 r) g0@126@01)))
    (=
      ($FVF.lookup_next (as sm@191@01  $FVF<next>) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@175@01))) r)))
  :pattern (($FVF.lookup_next (as sm@191@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@175@01))) r))
  :qid |qp.fvfValDef140|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and (Set_in (inv@189@01 r) g1@127@01) (img@190@01 r))
      (and (img@184@01 r) (Set_in (inv@183@01 r) g1@127@01)))
    (=
      ($FVF.lookup_next (as sm@191@01  $FVF<next>) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@175@01)))))) r)))
  :pattern (($FVF.lookup_next (as sm@191@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@175@01)))))) r))
  :qid |qp.fvfValDef141|)))
(assert (forall ((r $Ref)) (!
  (and
    ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@175@01))) r) r)
    ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@175@01)))))) r) r))
  :pattern (($FVF.lookup_next (as sm@191@01  $FVF<next>) r))
  :qid |qp.fvfResTrgDef142|)))
(assert (=>
  (Set_in n$7@187@01 g1@127@01)
  (and
    (Set_in n$7@187@01 g1@127@01)
    (forall ((r $Ref)) (!
      (=>
        (Set_in (inv@189@01 r) g1@127@01)
        ($FVF.loc_next ($FVF.lookup_next (as sm@185@01  $FVF<next>) r) r))
      :pattern ((inv@189@01 r))
      :qid |quant-u-14317|))
    ($$%precondition ($SortWrappers.$FVF<next>To$Snap (as sm@191@01  $FVF<next>)) g1@127@01))))
; Joined path conditions
(assert (or (not (Set_in n$7@187@01 g1@127@01)) (Set_in n$7@187@01 g1@127@01)))
(pop) ; 3
; Nested auxiliary terms: globals (aux)
(assert (forall ((n@188@01 $Ref)) (!
  (=>
    (Set_in n@188@01 g1@127@01)
    (and (= (inv@189@01 n@188@01) n@188@01) (img@190@01 n@188@01)))
  :pattern ((Set_in n@188@01 g1@127@01))
  :pattern ((inv@189@01 n@188@01))
  :pattern ((img@190@01 n@188@01))
  :qid |next-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@190@01 r) (Set_in (inv@189@01 r) g1@127@01))
    (= (inv@189@01 r) r))
  :pattern ((inv@189@01 r))
  :qid |next-fctOfInv|)))
(assert (forall ((r $Ref)) (!
  (and
    (=>
      (Set_in r ($FVF.domain_next (as sm@191@01  $FVF<next>)))
      (and (Set_in (inv@189@01 r) g1@127@01) (img@190@01 r)))
    (=>
      (and (Set_in (inv@189@01 r) g1@127@01) (img@190@01 r))
      (Set_in r ($FVF.domain_next (as sm@191@01  $FVF<next>)))))
  :pattern ((Set_in r ($FVF.domain_next (as sm@191@01  $FVF<next>))))
  :qid |qp.fvfDomDef143|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and (Set_in (inv@189@01 r) g1@127@01) (img@190@01 r))
      (and (img@179@01 r) (Set_in (inv@178@01 r) g0@126@01)))
    (=
      ($FVF.lookup_next (as sm@191@01  $FVF<next>) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@175@01))) r)))
  :pattern (($FVF.lookup_next (as sm@191@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@175@01))) r))
  :qid |qp.fvfValDef140|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and (Set_in (inv@189@01 r) g1@127@01) (img@190@01 r))
      (and (img@184@01 r) (Set_in (inv@183@01 r) g1@127@01)))
    (=
      ($FVF.lookup_next (as sm@191@01  $FVF<next>) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@175@01)))))) r)))
  :pattern (($FVF.lookup_next (as sm@191@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@175@01)))))) r))
  :qid |qp.fvfValDef141|)))
(assert (forall ((r $Ref)) (!
  (and
    ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@175@01))) r) r)
    ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@175@01)))))) r) r))
  :pattern (($FVF.lookup_next (as sm@191@01  $FVF<next>) r))
  :qid |qp.fvfResTrgDef142|)))
; Nested auxiliary terms: non-globals (aux)
(assert (forall ((n$7@187@01 $Ref)) (!
  (and
    (=>
      (Set_in n$7@187@01 g1@127@01)
      (and
        (Set_in n$7@187@01 g1@127@01)
        (forall ((r $Ref)) (!
          (=>
            (Set_in (inv@189@01 r) g1@127@01)
            ($FVF.loc_next ($FVF.lookup_next (as sm@185@01  $FVF<next>) r) r))
          :pattern ((inv@189@01 r))
          :qid |quant-u-14317|))
        ($$%precondition ($SortWrappers.$FVF<next>To$Snap (as sm@191@01  $FVF<next>)) g1@127@01)))
    (or (not (Set_in n$7@187@01 g1@127@01)) (Set_in n$7@187@01 g1@127@01)))
  :pattern ((exists_path<Bool> ($$ ($SortWrappers.$FVF<next>To$Snap (as sm@191@01  $FVF<next>)) g1@127@01) x1@129@01 n$7@187@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/graphs/static/tests/lists/delete_edge1.vpr@347@13@347@34-aux|)))
(assert (forall ((n$7@187@01 $Ref)) (!
  (=>
    (Set_in n$7@187@01 g1@127@01)
    (exists_path<Bool> ($$ ($SortWrappers.$FVF<next>To$Snap (as sm@191@01  $FVF<next>)) g1@127@01) x1@129@01 n$7@187@01))
  :pattern ((exists_path<Bool> ($$ ($SortWrappers.$FVF<next>To$Snap (as sm@191@01  $FVF<next>)) g1@127@01) x1@129@01 n$7@187@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/graphs/static/tests/lists/delete_edge1.vpr@347@13@347@34|)))
(pop) ; 2
(push) ; 2
; [exec]
; inhale apply_TCFraming(g0, g1)
(declare-const $t@192@01 $Snap)
(assert (= $t@192@01 $Snap.unit))
; [eval] apply_TCFraming(g0, g1)
(push) ; 3
(declare-const n@193@01 $Ref)
(push) ; 4
; [eval] (n in g0)
(assert (Set_in n@193@01 g0@126@01))
(pop) ; 4
(declare-fun inv@194@01 ($Ref) $Ref)
(declare-fun img@195@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
(declare-const sm@196@01 $FVF<next>)
; Definitional axioms for snapshot map domain
; Definitional axioms for snapshot map values
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@136@01 r) (Set_in (inv@135@01 r) (Set_union g0@126@01 g1@127@01)))
    (=
      ($FVF.lookup_next (as sm@196@01  $FVF<next>) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@130@01))))) r)))
  :pattern (($FVF.lookup_next (as sm@196@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@130@01))))) r))
  :qid |qp.fvfValDef144|)))
(assert (forall ((r $Ref)) (!
  ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@130@01))))) r) r)
  :pattern (($FVF.lookup_next (as sm@196@01  $FVF<next>) r))
  :qid |qp.fvfResTrgDef145|)))
; Check receiver injectivity
(push) ; 4
(assert (not (forall ((n1@193@01 $Ref) (n2@193@01 $Ref)) (!
  (=>
    (and
      (and
        (Set_in n1@193@01 g0@126@01)
        ($FVF.loc_next ($FVF.lookup_next (as sm@196@01  $FVF<next>) n1@193@01) n1@193@01))
      (and
        (Set_in n2@193@01 g0@126@01)
        ($FVF.loc_next ($FVF.lookup_next (as sm@196@01  $FVF<next>) n2@193@01) n2@193@01))
      (= n1@193@01 n2@193@01))
    (= n1@193@01 n2@193@01))
  
  :qid |next-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((n@193@01 $Ref)) (!
  (=>
    (Set_in n@193@01 g0@126@01)
    (and (= (inv@194@01 n@193@01) n@193@01) (img@195@01 n@193@01)))
  :pattern ((Set_in n@193@01 g0@126@01))
  :pattern ((inv@194@01 n@193@01))
  :pattern ((img@195@01 n@193@01))
  :qid |next-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@195@01 r) (Set_in (inv@194@01 r) g0@126@01))
    (= (inv@194@01 r) r))
  :pattern ((inv@194@01 r))
  :qid |next-fctOfInv|)))
(assert (forall ((r $Ref)) (!
  (=>
    (Set_in (inv@194@01 r) g0@126@01)
    ($FVF.loc_next ($FVF.lookup_next (as sm@196@01  $FVF<next>) r) r))
  :pattern ((inv@194@01 r))
  :qid |quant-u-14320|)))
(push) ; 4
(assert (not (forall ((r $Ref)) (!
  (=>
    (and (Set_in (inv@194@01 r) g0@126@01) (img@195@01 r) (= r (inv@194@01 r)))
    (>
      (ite
        (and
          (img@136@01 r)
          (Set_in (inv@135@01 r) (Set_union g0@126@01 g1@127@01)))
        $Perm.Write
        $Perm.No)
      $Perm.No))
  
  :qid |quant-u-14321|))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(declare-const sm@197@01 $FVF<next>)
; Definitional axioms for snapshot map domain
(assert (forall ((r $Ref)) (!
  (and
    (=>
      (Set_in r ($FVF.domain_next (as sm@197@01  $FVF<next>)))
      (and (Set_in (inv@194@01 r) g0@126@01) (img@195@01 r)))
    (=>
      (and (Set_in (inv@194@01 r) g0@126@01) (img@195@01 r))
      (Set_in r ($FVF.domain_next (as sm@197@01  $FVF<next>)))))
  :pattern ((Set_in r ($FVF.domain_next (as sm@197@01  $FVF<next>))))
  :qid |qp.fvfDomDef148|)))
; Definitional axioms for snapshot map values
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and (Set_in (inv@194@01 r) g0@126@01) (img@195@01 r))
      (and
        (img@136@01 r)
        (Set_in (inv@135@01 r) (Set_union g0@126@01 g1@127@01))))
    (=
      ($FVF.lookup_next (as sm@197@01  $FVF<next>) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@130@01))))) r)))
  :pattern (($FVF.lookup_next (as sm@197@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@130@01))))) r))
  :qid |qp.fvfValDef146|)))
(assert (forall ((r $Ref)) (!
  ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@130@01))))) r) r)
  :pattern (($FVF.lookup_next (as sm@197@01  $FVF<next>) r))
  :qid |qp.fvfResTrgDef147|)))
(declare-const n@198@01 $Ref)
(push) ; 4
; [eval] (n in g1)
(assert (Set_in n@198@01 g1@127@01))
(pop) ; 4
(declare-fun inv@199@01 ($Ref) $Ref)
(declare-fun img@200@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
(declare-const sm@201@01 $FVF<next>)
; Definitional axioms for snapshot map domain
; Definitional axioms for snapshot map values
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@136@01 r) (Set_in (inv@135@01 r) (Set_union g0@126@01 g1@127@01)))
    (=
      ($FVF.lookup_next (as sm@201@01  $FVF<next>) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@130@01))))) r)))
  :pattern (($FVF.lookup_next (as sm@201@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@130@01))))) r))
  :qid |qp.fvfValDef149|)))
(assert (forall ((r $Ref)) (!
  ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@130@01))))) r) r)
  :pattern (($FVF.lookup_next (as sm@201@01  $FVF<next>) r))
  :qid |qp.fvfResTrgDef150|)))
; Check receiver injectivity
(push) ; 4
(assert (not (forall ((n1@198@01 $Ref) (n2@198@01 $Ref)) (!
  (=>
    (and
      (and
        (Set_in n1@198@01 g1@127@01)
        ($FVF.loc_next ($FVF.lookup_next (as sm@201@01  $FVF<next>) n1@198@01) n1@198@01))
      (and
        (Set_in n2@198@01 g1@127@01)
        ($FVF.loc_next ($FVF.lookup_next (as sm@201@01  $FVF<next>) n2@198@01) n2@198@01))
      (= n1@198@01 n2@198@01))
    (= n1@198@01 n2@198@01))
  
  :qid |next-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((n@198@01 $Ref)) (!
  (=>
    (Set_in n@198@01 g1@127@01)
    (and (= (inv@199@01 n@198@01) n@198@01) (img@200@01 n@198@01)))
  :pattern ((Set_in n@198@01 g1@127@01))
  :pattern ((inv@199@01 n@198@01))
  :pattern ((img@200@01 n@198@01))
  :qid |next-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@200@01 r) (Set_in (inv@199@01 r) g1@127@01))
    (= (inv@199@01 r) r))
  :pattern ((inv@199@01 r))
  :qid |next-fctOfInv|)))
(assert (forall ((r $Ref)) (!
  (=>
    (Set_in (inv@199@01 r) g1@127@01)
    ($FVF.loc_next ($FVF.lookup_next (as sm@201@01  $FVF<next>) r) r))
  :pattern ((inv@199@01 r))
  :qid |quant-u-14323|)))
(push) ; 4
(assert (not (forall ((r $Ref)) (!
  (=>
    (and (Set_in (inv@199@01 r) g1@127@01) (img@200@01 r) (= r (inv@199@01 r)))
    (>
      (ite
        (and
          (img@136@01 r)
          (Set_in (inv@135@01 r) (Set_union g0@126@01 g1@127@01)))
        $Perm.Write
        $Perm.No)
      $Perm.No))
  
  :qid |quant-u-14324|))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(declare-const sm@202@01 $FVF<next>)
; Definitional axioms for snapshot map domain
(assert (forall ((r $Ref)) (!
  (and
    (=>
      (Set_in r ($FVF.domain_next (as sm@202@01  $FVF<next>)))
      (and (Set_in (inv@199@01 r) g1@127@01) (img@200@01 r)))
    (=>
      (and (Set_in (inv@199@01 r) g1@127@01) (img@200@01 r))
      (Set_in r ($FVF.domain_next (as sm@202@01  $FVF<next>)))))
  :pattern ((Set_in r ($FVF.domain_next (as sm@202@01  $FVF<next>))))
  :qid |qp.fvfDomDef153|)))
; Definitional axioms for snapshot map values
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and (Set_in (inv@199@01 r) g1@127@01) (img@200@01 r))
      (and
        (img@136@01 r)
        (Set_in (inv@135@01 r) (Set_union g0@126@01 g1@127@01))))
    (=
      ($FVF.lookup_next (as sm@202@01  $FVF<next>) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@130@01))))) r)))
  :pattern (($FVF.lookup_next (as sm@202@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@130@01))))) r))
  :qid |qp.fvfValDef151|)))
(assert (forall ((r $Ref)) (!
  ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@130@01))))) r) r)
  :pattern (($FVF.lookup_next (as sm@202@01  $FVF<next>) r))
  :qid |qp.fvfResTrgDef152|)))
; [eval] (g1 intersection g0) == Set[Ref]()
; [eval] (g1 intersection g0)
; [eval] Set[Ref]()
(push) ; 4
(assert (not (Set_equal (Set_intersection g1@127@01 g0@126@01) (as Set_empty  Set<$Ref>))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(assert (Set_equal (Set_intersection g1@127@01 g0@126@01) (as Set_empty  Set<$Ref>)))
(assert (apply_TCFraming%precondition ($Snap.combine
  ($SortWrappers.$FVF<next>To$Snap (as sm@197@01  $FVF<next>))
  ($Snap.combine
    ($SortWrappers.$FVF<next>To$Snap (as sm@202@01  $FVF<next>))
    $Snap.unit)) g0@126@01 g1@127@01))
(pop) ; 3
; Joined path conditions
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@136@01 r) (Set_in (inv@135@01 r) (Set_union g0@126@01 g1@127@01)))
    (=
      ($FVF.lookup_next (as sm@196@01  $FVF<next>) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@130@01))))) r)))
  :pattern (($FVF.lookup_next (as sm@196@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@130@01))))) r))
  :qid |qp.fvfValDef144|)))
(assert (forall ((r $Ref)) (!
  ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@130@01))))) r) r)
  :pattern (($FVF.lookup_next (as sm@196@01  $FVF<next>) r))
  :qid |qp.fvfResTrgDef145|)))
(assert (forall ((n@193@01 $Ref)) (!
  (=>
    (Set_in n@193@01 g0@126@01)
    (and (= (inv@194@01 n@193@01) n@193@01) (img@195@01 n@193@01)))
  :pattern ((Set_in n@193@01 g0@126@01))
  :pattern ((inv@194@01 n@193@01))
  :pattern ((img@195@01 n@193@01))
  :qid |next-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@195@01 r) (Set_in (inv@194@01 r) g0@126@01))
    (= (inv@194@01 r) r))
  :pattern ((inv@194@01 r))
  :qid |next-fctOfInv|)))
(assert (forall ((r $Ref)) (!
  (and
    (=>
      (Set_in r ($FVF.domain_next (as sm@197@01  $FVF<next>)))
      (and (Set_in (inv@194@01 r) g0@126@01) (img@195@01 r)))
    (=>
      (and (Set_in (inv@194@01 r) g0@126@01) (img@195@01 r))
      (Set_in r ($FVF.domain_next (as sm@197@01  $FVF<next>)))))
  :pattern ((Set_in r ($FVF.domain_next (as sm@197@01  $FVF<next>))))
  :qid |qp.fvfDomDef148|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and (Set_in (inv@194@01 r) g0@126@01) (img@195@01 r))
      (and
        (img@136@01 r)
        (Set_in (inv@135@01 r) (Set_union g0@126@01 g1@127@01))))
    (=
      ($FVF.lookup_next (as sm@197@01  $FVF<next>) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@130@01))))) r)))
  :pattern (($FVF.lookup_next (as sm@197@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@130@01))))) r))
  :qid |qp.fvfValDef146|)))
(assert (forall ((r $Ref)) (!
  ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@130@01))))) r) r)
  :pattern (($FVF.lookup_next (as sm@197@01  $FVF<next>) r))
  :qid |qp.fvfResTrgDef147|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@136@01 r) (Set_in (inv@135@01 r) (Set_union g0@126@01 g1@127@01)))
    (=
      ($FVF.lookup_next (as sm@201@01  $FVF<next>) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@130@01))))) r)))
  :pattern (($FVF.lookup_next (as sm@201@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@130@01))))) r))
  :qid |qp.fvfValDef149|)))
(assert (forall ((r $Ref)) (!
  ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@130@01))))) r) r)
  :pattern (($FVF.lookup_next (as sm@201@01  $FVF<next>) r))
  :qid |qp.fvfResTrgDef150|)))
(assert (forall ((n@198@01 $Ref)) (!
  (=>
    (Set_in n@198@01 g1@127@01)
    (and (= (inv@199@01 n@198@01) n@198@01) (img@200@01 n@198@01)))
  :pattern ((Set_in n@198@01 g1@127@01))
  :pattern ((inv@199@01 n@198@01))
  :pattern ((img@200@01 n@198@01))
  :qid |next-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@200@01 r) (Set_in (inv@199@01 r) g1@127@01))
    (= (inv@199@01 r) r))
  :pattern ((inv@199@01 r))
  :qid |next-fctOfInv|)))
(assert (forall ((r $Ref)) (!
  (and
    (=>
      (Set_in r ($FVF.domain_next (as sm@202@01  $FVF<next>)))
      (and (Set_in (inv@199@01 r) g1@127@01) (img@200@01 r)))
    (=>
      (and (Set_in (inv@199@01 r) g1@127@01) (img@200@01 r))
      (Set_in r ($FVF.domain_next (as sm@202@01  $FVF<next>)))))
  :pattern ((Set_in r ($FVF.domain_next (as sm@202@01  $FVF<next>))))
  :qid |qp.fvfDomDef153|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and (Set_in (inv@199@01 r) g1@127@01) (img@200@01 r))
      (and
        (img@136@01 r)
        (Set_in (inv@135@01 r) (Set_union g0@126@01 g1@127@01))))
    (=
      ($FVF.lookup_next (as sm@202@01  $FVF<next>) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@130@01))))) r)))
  :pattern (($FVF.lookup_next (as sm@202@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@130@01))))) r))
  :qid |qp.fvfValDef151|)))
(assert (forall ((r $Ref)) (!
  ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@130@01))))) r) r)
  :pattern (($FVF.lookup_next (as sm@202@01  $FVF<next>) r))
  :qid |qp.fvfResTrgDef152|)))
(assert (and
  (forall ((r $Ref)) (!
    (=>
      (Set_in (inv@194@01 r) g0@126@01)
      ($FVF.loc_next ($FVF.lookup_next (as sm@196@01  $FVF<next>) r) r))
    :pattern ((inv@194@01 r))
    :qid |quant-u-14320|))
  (forall ((r $Ref)) (!
    (=>
      (Set_in (inv@199@01 r) g1@127@01)
      ($FVF.loc_next ($FVF.lookup_next (as sm@201@01  $FVF<next>) r) r))
    :pattern ((inv@199@01 r))
    :qid |quant-u-14323|))
  (Set_equal (Set_intersection g1@127@01 g0@126@01) (as Set_empty  Set<$Ref>))
  (apply_TCFraming%precondition ($Snap.combine
    ($SortWrappers.$FVF<next>To$Snap (as sm@197@01  $FVF<next>))
    ($Snap.combine
      ($SortWrappers.$FVF<next>To$Snap (as sm@202@01  $FVF<next>))
      $Snap.unit)) g0@126@01 g1@127@01)))
(assert (apply_TCFraming ($Snap.combine
  ($SortWrappers.$FVF<next>To$Snap (as sm@197@01  $FVF<next>))
  ($Snap.combine
    ($SortWrappers.$FVF<next>To$Snap (as sm@202@01  $FVF<next>))
    $Snap.unit)) g0@126@01 g1@127@01))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; unlink((g0 union g1), x0)
; [eval] (g0 union g1)
; [eval] (x in g)
(set-option :timeout 0)
(push) ; 3
(assert (not (Set_in x0@128@01 (Set_union g0@126@01 g1@127@01))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(assert (Set_in x0@128@01 (Set_union g0@126@01 g1@127@01)))
; [eval] !((null in g))
; [eval] (null in g)
; [eval] (x in g)
(declare-const sm@203@01 $FVF<next>)
; Definitional axioms for snapshot map values
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@136@01 r) (Set_in (inv@135@01 r) (Set_union g0@126@01 g1@127@01)))
    (=
      ($FVF.lookup_next (as sm@203@01  $FVF<next>) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@130@01))))) r)))
  :pattern (($FVF.lookup_next (as sm@203@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@130@01))))) r))
  :qid |qp.fvfValDef154|)))
(assert (forall ((r $Ref)) (!
  ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@130@01))))) r) r)
  :pattern (($FVF.lookup_next (as sm@203@01  $FVF<next>) r))
  :qid |qp.fvfResTrgDef155|)))
(assert ($FVF.loc_next ($FVF.lookup_next (as sm@203@01  $FVF<next>) x0@128@01) x0@128@01))
; Precomputing data for removing quantified permissions
(define-fun pTaken@204@01 ((r $Ref)) $Perm
  (ite
    (= r x0@128@01)
    ($Perm.min
      (ite
        (and
          (img@136@01 r)
          (Set_in (inv@135@01 r) (Set_union g0@126@01 g1@127@01)))
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
          (img@136@01 r)
          (Set_in (inv@135@01 r) (Set_union g0@126@01 g1@127@01)))
        $Perm.Write
        $Perm.No)
      (pTaken@204@01 r))
    $Perm.No)
  
  :qid |quant-u-14326|))))
(check-sat)
; unknown
(pop) ; 3
; 0.50s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (forall ((r $Ref)) (!
  (= (pTaken@204@01 r) $Perm.No)
  
  :qid |quant-u-14327|))))
(check-sat)
; unknown
(pop) ; 3
; 0.01s
; (get-info :all-statistics)
; Intermediate check if already taken enough permissions
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 500)
(assert (not (forall ((r $Ref)) (!
  (=> (= r x0@128@01) (= (- $Perm.Write (pTaken@204@01 r)) $Perm.No))
  
  :qid |quant-u-14328|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Final check if taken enough permissions
; Done removing quantified permissions
(declare-const n@205@01 $Ref)
(set-option :timeout 0)
(push) ; 3
; [eval] (n in g) && n != x
; [eval] (n in g)
(push) ; 4
; [then-branch: 45 | !(n@205@01 in g0@126@01 ∪ g1@127@01) | live]
; [else-branch: 45 | n@205@01 in g0@126@01 ∪ g1@127@01 | live]
(push) ; 5
; [then-branch: 45 | !(n@205@01 in g0@126@01 ∪ g1@127@01)]
(assert (not (Set_in n@205@01 (Set_union g0@126@01 g1@127@01))))
(pop) ; 5
(push) ; 5
; [else-branch: 45 | n@205@01 in g0@126@01 ∪ g1@127@01]
(assert (Set_in n@205@01 (Set_union g0@126@01 g1@127@01)))
; [eval] n != x
(pop) ; 5
(pop) ; 4
; Joined path conditions
; Joined path conditions
(assert (or
  (Set_in n@205@01 (Set_union g0@126@01 g1@127@01))
  (not (Set_in n@205@01 (Set_union g0@126@01 g1@127@01)))))
(assert (and
  (Set_in n@205@01 (Set_union g0@126@01 g1@127@01))
  (not (= n@205@01 x0@128@01))))
; Definitional axioms for snapshot map values
(pop) ; 3
(declare-fun inv@206@01 ($Ref) $Ref)
(declare-fun img@207@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
(assert (forall ((n@205@01 $Ref)) (!
  (=>
    (and
      (Set_in n@205@01 (Set_union g0@126@01 g1@127@01))
      (not (= n@205@01 x0@128@01)))
    (or
      (Set_in n@205@01 (Set_union g0@126@01 g1@127@01))
      (not (Set_in n@205@01 (Set_union g0@126@01 g1@127@01)))))
  :pattern (($FVF.loc_next ($FVF.lookup_next (as sm@203@01  $FVF<next>) n@205@01) n@205@01))
  :qid |next-aux|)))
(declare-const sm@208@01 $FVF<next>)
; Definitional axioms for snapshot map values
(assert (forall ((r $Ref)) (!
  (=>
    (ite
      (and
        (img@136@01 r)
        (Set_in (inv@135@01 r) (Set_union g0@126@01 g1@127@01)))
      (< $Perm.No (- $Perm.Write (pTaken@204@01 r)))
      false)
    (=
      ($FVF.lookup_next (as sm@208@01  $FVF<next>) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@130@01))))) r)))
  :pattern (($FVF.lookup_next (as sm@208@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@130@01))))) r))
  :qid |qp.fvfValDef156|)))
(assert (forall ((r $Ref)) (!
  ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@130@01))))) r) r)
  :pattern (($FVF.lookup_next (as sm@208@01  $FVF<next>) r))
  :qid |qp.fvfResTrgDef157|)))
; Check receiver injectivity
(push) ; 3
(assert (not (forall ((n1@205@01 $Ref) (n2@205@01 $Ref)) (!
  (=>
    (and
      (and
        (and
          (Set_in n1@205@01 (Set_union g0@126@01 g1@127@01))
          (not (= n1@205@01 x0@128@01)))
        ($FVF.loc_next ($FVF.lookup_next (as sm@208@01  $FVF<next>) n1@205@01) n1@205@01))
      (and
        (and
          (Set_in n2@205@01 (Set_union g0@126@01 g1@127@01))
          (not (= n2@205@01 x0@128@01)))
        ($FVF.loc_next ($FVF.lookup_next (as sm@208@01  $FVF<next>) n2@205@01) n2@205@01))
      (= n1@205@01 n2@205@01))
    (= n1@205@01 n2@205@01))
  
  :qid |next-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((n@205@01 $Ref)) (!
  (=>
    (and
      (Set_in n@205@01 (Set_union g0@126@01 g1@127@01))
      (not (= n@205@01 x0@128@01)))
    (and (= (inv@206@01 n@205@01) n@205@01) (img@207@01 n@205@01)))
  :pattern (($FVF.loc_next ($FVF.lookup_next (as sm@203@01  $FVF<next>) n@205@01) n@205@01))
  :qid |next-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@207@01 r)
      (and
        (Set_in (inv@206@01 r) (Set_union g0@126@01 g1@127@01))
        (not (= (inv@206@01 r) x0@128@01))))
    (= (inv@206@01 r) r))
  :pattern ((inv@206@01 r))
  :qid |next-fctOfInv|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (Set_in (inv@206@01 r) (Set_union g0@126@01 g1@127@01))
      (not (= (inv@206@01 r) x0@128@01)))
    ($FVF.loc_next ($FVF.lookup_next (as sm@208@01  $FVF<next>) r) r))
  :pattern ((inv@206@01 r))
  :qid |quant-u-14330|)))
; Precomputing data for removing quantified permissions
(define-fun pTaken@209@01 ((r $Ref)) $Perm
  (ite
    (and
      (and
        (Set_in (inv@206@01 r) (Set_union g0@126@01 g1@127@01))
        (not (= (inv@206@01 r) x0@128@01)))
      (img@207@01 r)
      (= r (inv@206@01 r)))
    ($Perm.min
      (ite
        (and
          (img@136@01 r)
          (Set_in (inv@135@01 r) (Set_union g0@126@01 g1@127@01)))
        (- $Perm.Write (pTaken@204@01 r))
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
        (and
          (img@136@01 r)
          (Set_in (inv@135@01 r) (Set_union g0@126@01 g1@127@01)))
        (- $Perm.Write (pTaken@204@01 r))
        $Perm.No)
      (pTaken@209@01 r))
    $Perm.No)
  
  :qid |quant-u-14332|))))
(check-sat)
; unknown
(pop) ; 3
; 0.48s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (forall ((r $Ref)) (!
  (= (pTaken@209@01 r) $Perm.No)
  
  :qid |quant-u-14333|))))
(check-sat)
; unknown
(pop) ; 3
; 0.01s
; (get-info :all-statistics)
; Intermediate check if already taken enough permissions
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 500)
(assert (not (forall ((r $Ref)) (!
  (=>
    (and
      (and
        (Set_in (inv@206@01 r) (Set_union g0@126@01 g1@127@01))
        (not (= (inv@206@01 r) x0@128@01)))
      (img@207@01 r)
      (= r (inv@206@01 r)))
    (= (- (/ (to_real 1) (to_real 2)) (pTaken@209@01 r)) $Perm.No))
  
  :qid |quant-u-14334|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Final check if taken enough permissions
; Done removing quantified permissions
; [eval] (forall n$0: Ref :: { (n$0.next in g) } { (n$0 in g), n$0.next } (n$0 in g) && n$0.next != null ==> (n$0.next in g))
(declare-const n$0@210@01 $Ref)
(set-option :timeout 0)
(push) ; 3
; [eval] (n$0 in g) && n$0.next != null ==> (n$0.next in g)
; [eval] (n$0 in g) && n$0.next != null
; [eval] (n$0 in g)
(push) ; 4
; [then-branch: 46 | !(n$0@210@01 in g0@126@01 ∪ g1@127@01) | live]
; [else-branch: 46 | n$0@210@01 in g0@126@01 ∪ g1@127@01 | live]
(push) ; 5
; [then-branch: 46 | !(n$0@210@01 in g0@126@01 ∪ g1@127@01)]
(assert (not (Set_in n$0@210@01 (Set_union g0@126@01 g1@127@01))))
(pop) ; 5
(push) ; 5
; [else-branch: 46 | n$0@210@01 in g0@126@01 ∪ g1@127@01]
(assert (Set_in n$0@210@01 (Set_union g0@126@01 g1@127@01)))
; [eval] n$0.next != null
(assert (and
  (forall ((r $Ref)) (!
    (=>
      (and
        (img@136@01 r)
        (Set_in (inv@135@01 r) (Set_union g0@126@01 g1@127@01)))
      (=
        ($FVF.lookup_next (as sm@203@01  $FVF<next>) r)
        ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@130@01))))) r)))
    :pattern (($FVF.lookup_next (as sm@203@01  $FVF<next>) r))
    :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@130@01))))) r))
    :qid |qp.fvfValDef154|))
  (forall ((r $Ref)) (!
    ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@130@01))))) r) r)
    :pattern (($FVF.lookup_next (as sm@203@01  $FVF<next>) r))
    :qid |qp.fvfResTrgDef155|))))
(assert ($FVF.loc_next ($FVF.lookup_next (as sm@203@01  $FVF<next>) n$0@210@01) n$0@210@01))
(push) ; 6
(assert (not (and
  (img@136@01 n$0@210@01)
  (Set_in (inv@135@01 n$0@210@01) (Set_union g0@126@01 g1@127@01)))))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(pop) ; 5
(pop) ; 4
; Joined path conditions
; Joined path conditions
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@136@01 r) (Set_in (inv@135@01 r) (Set_union g0@126@01 g1@127@01)))
    (=
      ($FVF.lookup_next (as sm@203@01  $FVF<next>) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@130@01))))) r)))
  :pattern (($FVF.lookup_next (as sm@203@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@130@01))))) r))
  :qid |qp.fvfValDef154|)))
(assert (forall ((r $Ref)) (!
  ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@130@01))))) r) r)
  :pattern (($FVF.lookup_next (as sm@203@01  $FVF<next>) r))
  :qid |qp.fvfResTrgDef155|)))
(assert (=>
  (Set_in n$0@210@01 (Set_union g0@126@01 g1@127@01))
  (and
    (Set_in n$0@210@01 (Set_union g0@126@01 g1@127@01))
    ($FVF.loc_next ($FVF.lookup_next (as sm@203@01  $FVF<next>) n$0@210@01) n$0@210@01))))
(assert (or
  (Set_in n$0@210@01 (Set_union g0@126@01 g1@127@01))
  (not (Set_in n$0@210@01 (Set_union g0@126@01 g1@127@01)))))
(push) ; 4
; [then-branch: 47 | n$0@210@01 in g0@126@01 ∪ g1@127@01 && Lookup(next, sm@203@01, n$0@210@01) != Null | live]
; [else-branch: 47 | !(n$0@210@01 in g0@126@01 ∪ g1@127@01 && Lookup(next, sm@203@01, n$0@210@01) != Null) | live]
(push) ; 5
; [then-branch: 47 | n$0@210@01 in g0@126@01 ∪ g1@127@01 && Lookup(next, sm@203@01, n$0@210@01) != Null]
(assert (and
  (Set_in n$0@210@01 (Set_union g0@126@01 g1@127@01))
  (not (= ($FVF.lookup_next (as sm@203@01  $FVF<next>) n$0@210@01) $Ref.null))))
; [eval] (n$0.next in g)
(assert (and
  (forall ((r $Ref)) (!
    (=>
      (and
        (img@136@01 r)
        (Set_in (inv@135@01 r) (Set_union g0@126@01 g1@127@01)))
      (=
        ($FVF.lookup_next (as sm@203@01  $FVF<next>) r)
        ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@130@01))))) r)))
    :pattern (($FVF.lookup_next (as sm@203@01  $FVF<next>) r))
    :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@130@01))))) r))
    :qid |qp.fvfValDef154|))
  (forall ((r $Ref)) (!
    ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@130@01))))) r) r)
    :pattern (($FVF.lookup_next (as sm@203@01  $FVF<next>) r))
    :qid |qp.fvfResTrgDef155|))))
(assert ($FVF.loc_next ($FVF.lookup_next (as sm@203@01  $FVF<next>) n$0@210@01) n$0@210@01))
(push) ; 6
(assert (not (and
  (img@136@01 n$0@210@01)
  (Set_in (inv@135@01 n$0@210@01) (Set_union g0@126@01 g1@127@01)))))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(pop) ; 5
(push) ; 5
; [else-branch: 47 | !(n$0@210@01 in g0@126@01 ∪ g1@127@01 && Lookup(next, sm@203@01, n$0@210@01) != Null)]
(assert (not
  (and
    (Set_in n$0@210@01 (Set_union g0@126@01 g1@127@01))
    (not (= ($FVF.lookup_next (as sm@203@01  $FVF<next>) n$0@210@01) $Ref.null)))))
(pop) ; 5
(pop) ; 4
; Joined path conditions
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@136@01 r) (Set_in (inv@135@01 r) (Set_union g0@126@01 g1@127@01)))
    (=
      ($FVF.lookup_next (as sm@203@01  $FVF<next>) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@130@01))))) r)))
  :pattern (($FVF.lookup_next (as sm@203@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@130@01))))) r))
  :qid |qp.fvfValDef154|)))
(assert (forall ((r $Ref)) (!
  ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@130@01))))) r) r)
  :pattern (($FVF.lookup_next (as sm@203@01  $FVF<next>) r))
  :qid |qp.fvfResTrgDef155|)))
(assert (=>
  (and
    (Set_in n$0@210@01 (Set_union g0@126@01 g1@127@01))
    (not (= ($FVF.lookup_next (as sm@203@01  $FVF<next>) n$0@210@01) $Ref.null)))
  (and
    (Set_in n$0@210@01 (Set_union g0@126@01 g1@127@01))
    (not (= ($FVF.lookup_next (as sm@203@01  $FVF<next>) n$0@210@01) $Ref.null))
    ($FVF.loc_next ($FVF.lookup_next (as sm@203@01  $FVF<next>) n$0@210@01) n$0@210@01))))
; Joined path conditions
(assert (or
  (not
    (and
      (Set_in n$0@210@01 (Set_union g0@126@01 g1@127@01))
      (not
        (= ($FVF.lookup_next (as sm@203@01  $FVF<next>) n$0@210@01) $Ref.null))))
  (and
    (Set_in n$0@210@01 (Set_union g0@126@01 g1@127@01))
    (not (= ($FVF.lookup_next (as sm@203@01  $FVF<next>) n$0@210@01) $Ref.null)))))
; Definitional axioms for snapshot map values
(pop) ; 3
; Nested auxiliary terms: globals (aux)
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@136@01 r) (Set_in (inv@135@01 r) (Set_union g0@126@01 g1@127@01)))
    (=
      ($FVF.lookup_next (as sm@203@01  $FVF<next>) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@130@01))))) r)))
  :pattern (($FVF.lookup_next (as sm@203@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@130@01))))) r))
  :qid |qp.fvfValDef154|)))
(assert (forall ((r $Ref)) (!
  ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@130@01))))) r) r)
  :pattern (($FVF.lookup_next (as sm@203@01  $FVF<next>) r))
  :qid |qp.fvfResTrgDef155|)))
; Nested auxiliary terms: non-globals (aux)
(assert (forall ((n$0@210@01 $Ref)) (!
  (and
    (=>
      (Set_in n$0@210@01 (Set_union g0@126@01 g1@127@01))
      (and
        (Set_in n$0@210@01 (Set_union g0@126@01 g1@127@01))
        ($FVF.loc_next ($FVF.lookup_next (as sm@203@01  $FVF<next>) n$0@210@01) n$0@210@01)))
    (or
      (Set_in n$0@210@01 (Set_union g0@126@01 g1@127@01))
      (not (Set_in n$0@210@01 (Set_union g0@126@01 g1@127@01))))
    (=>
      (and
        (Set_in n$0@210@01 (Set_union g0@126@01 g1@127@01))
        (not
          (= ($FVF.lookup_next (as sm@203@01  $FVF<next>) n$0@210@01) $Ref.null)))
      (and
        (Set_in n$0@210@01 (Set_union g0@126@01 g1@127@01))
        (not
          (= ($FVF.lookup_next (as sm@203@01  $FVF<next>) n$0@210@01) $Ref.null))
        ($FVF.loc_next ($FVF.lookup_next (as sm@203@01  $FVF<next>) n$0@210@01) n$0@210@01)))
    (or
      (not
        (and
          (Set_in n$0@210@01 (Set_union g0@126@01 g1@127@01))
          (not
            (=
              ($FVF.lookup_next (as sm@203@01  $FVF<next>) n$0@210@01)
              $Ref.null))))
      (and
        (Set_in n$0@210@01 (Set_union g0@126@01 g1@127@01))
        (not
          (= ($FVF.lookup_next (as sm@203@01  $FVF<next>) n$0@210@01) $Ref.null)))))
  :pattern ((Set_in ($FVF.lookup_next (as sm@203@01  $FVF<next>) n$0@210@01) (Set_union g0@126@01 g1@127@01)))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/graphs/static/tests/lists/delete_edge1.vpr@309@14@309@34-aux|)))
(assert (forall ((n$0@210@01 $Ref)) (!
  (and
    (=>
      (Set_in n$0@210@01 (Set_union g0@126@01 g1@127@01))
      (and
        (Set_in n$0@210@01 (Set_union g0@126@01 g1@127@01))
        ($FVF.loc_next ($FVF.lookup_next (as sm@203@01  $FVF<next>) n$0@210@01) n$0@210@01)))
    (or
      (Set_in n$0@210@01 (Set_union g0@126@01 g1@127@01))
      (not (Set_in n$0@210@01 (Set_union g0@126@01 g1@127@01))))
    (=>
      (and
        (Set_in n$0@210@01 (Set_union g0@126@01 g1@127@01))
        (not
          (= ($FVF.lookup_next (as sm@203@01  $FVF<next>) n$0@210@01) $Ref.null)))
      (and
        (Set_in n$0@210@01 (Set_union g0@126@01 g1@127@01))
        (not
          (= ($FVF.lookup_next (as sm@203@01  $FVF<next>) n$0@210@01) $Ref.null))
        ($FVF.loc_next ($FVF.lookup_next (as sm@203@01  $FVF<next>) n$0@210@01) n$0@210@01)))
    (or
      (not
        (and
          (Set_in n$0@210@01 (Set_union g0@126@01 g1@127@01))
          (not
            (=
              ($FVF.lookup_next (as sm@203@01  $FVF<next>) n$0@210@01)
              $Ref.null))))
      (and
        (Set_in n$0@210@01 (Set_union g0@126@01 g1@127@01))
        (not
          (= ($FVF.lookup_next (as sm@203@01  $FVF<next>) n$0@210@01) $Ref.null)))))
  :pattern ((Set_in n$0@210@01 (Set_union g0@126@01 g1@127@01)) ($FVF.loc_next ($FVF.lookup_next (as sm@203@01  $FVF<next>) n$0@210@01) n$0@210@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/graphs/static/tests/lists/delete_edge1.vpr@309@14@309@34-aux|)))
(push) ; 3
(assert (not (forall ((n$0@210@01 $Ref)) (!
  (=>
    (and
      (Set_in n$0@210@01 (Set_union g0@126@01 g1@127@01))
      (not
        (= ($FVF.lookup_next (as sm@203@01  $FVF<next>) n$0@210@01) $Ref.null)))
    (Set_in ($FVF.lookup_next (as sm@203@01  $FVF<next>) n$0@210@01) (Set_union g0@126@01 g1@127@01)))
  :pattern ((Set_in ($FVF.lookup_next (as sm@203@01  $FVF<next>) n$0@210@01) (Set_union g0@126@01 g1@127@01)))
  :pattern ((Set_in n$0@210@01 (Set_union g0@126@01 g1@127@01)) ($FVF.loc_next ($FVF.lookup_next (as sm@203@01  $FVF<next>) n$0@210@01) n$0@210@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/graphs/static/tests/lists/delete_edge1.vpr@309@14@309@34|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(assert (forall ((n$0@210@01 $Ref)) (!
  (=>
    (and
      (Set_in n$0@210@01 (Set_union g0@126@01 g1@127@01))
      (not
        (= ($FVF.lookup_next (as sm@203@01  $FVF<next>) n$0@210@01) $Ref.null)))
    (Set_in ($FVF.lookup_next (as sm@203@01  $FVF<next>) n$0@210@01) (Set_union g0@126@01 g1@127@01)))
  :pattern ((Set_in ($FVF.lookup_next (as sm@203@01  $FVF<next>) n$0@210@01) (Set_union g0@126@01 g1@127@01)))
  :pattern ((Set_in n$0@210@01 (Set_union g0@126@01 g1@127@01)) ($FVF.loc_next ($FVF.lookup_next (as sm@203@01  $FVF<next>) n$0@210@01) n$0@210@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/graphs/static/tests/lists/delete_edge1.vpr@309@14@309@34|)))
(declare-const $t@211@01 $Snap)
(assert (= $t@211@01 ($Snap.combine ($Snap.first $t@211@01) ($Snap.second $t@211@01))))
(assert (= ($Snap.first $t@211@01) $Snap.unit))
; [eval] !((null in g))
; [eval] (null in g)
(assert (=
  ($Snap.second $t@211@01)
  ($Snap.combine
    ($Snap.first ($Snap.second $t@211@01))
    ($Snap.second ($Snap.second $t@211@01)))))
(assert (= ($Snap.first ($Snap.second $t@211@01)) $Snap.unit))
; [eval] (x in g)
(assert (=
  ($Snap.second ($Snap.second $t@211@01))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second $t@211@01)))
    ($Snap.second ($Snap.second ($Snap.second $t@211@01))))))
(declare-const sm@212@01 $FVF<next>)
; Definitional axioms for singleton-SM's value
(assert (=
  ($FVF.lookup_next (as sm@212@01  $FVF<next>) x0@128@01)
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second $t@211@01))))))
(assert (not (= x0@128@01 $Ref.null)))
(declare-const sm@213@01 $FVF<next>)
; Definitional axioms for snapshot map values
(assert (forall ((r $Ref)) (!
  (=>
    (ite
      (and
        (img@136@01 r)
        (Set_in (inv@135@01 r) (Set_union g0@126@01 g1@127@01)))
      (< $Perm.No (- (- $Perm.Write (pTaken@204@01 r)) (pTaken@209@01 r)))
      false)
    (=
      ($FVF.lookup_next (as sm@213@01  $FVF<next>) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@130@01))))) r)))
  :pattern (($FVF.lookup_next (as sm@213@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@130@01))))) r))
  :qid |qp.fvfValDef158|)))
(assert (forall ((r $Ref)) (!
  (=>
    (= r x0@128@01)
    (=
      ($FVF.lookup_next (as sm@213@01  $FVF<next>) r)
      ($FVF.lookup_next (as sm@212@01  $FVF<next>) r)))
  :pattern (($FVF.lookup_next (as sm@213@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next (as sm@212@01  $FVF<next>) r))
  :qid |qp.fvfValDef159|)))
(assert (forall ((r $Ref)) (!
  (and
    ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@130@01))))) r) r)
    ($FVF.loc_next ($FVF.lookup_next (as sm@212@01  $FVF<next>) r) r))
  :pattern (($FVF.lookup_next (as sm@213@01  $FVF<next>) r))
  :qid |qp.fvfResTrgDef160|)))
(assert ($FVF.loc_next ($FVF.lookup_next (as sm@213@01  $FVF<next>) x0@128@01) x0@128@01))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second $t@211@01)))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@211@01))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@211@01)))))))
(declare-const n$1@214@01 $Ref)
(push) ; 3
; [eval] (n$1 in g) && n$1 != x
; [eval] (n$1 in g)
(push) ; 4
; [then-branch: 48 | !(n$1@214@01 in g0@126@01 ∪ g1@127@01) | live]
; [else-branch: 48 | n$1@214@01 in g0@126@01 ∪ g1@127@01 | live]
(push) ; 5
; [then-branch: 48 | !(n$1@214@01 in g0@126@01 ∪ g1@127@01)]
(assert (not (Set_in n$1@214@01 (Set_union g0@126@01 g1@127@01))))
(pop) ; 5
(push) ; 5
; [else-branch: 48 | n$1@214@01 in g0@126@01 ∪ g1@127@01]
(assert (Set_in n$1@214@01 (Set_union g0@126@01 g1@127@01)))
; [eval] n$1 != x
(pop) ; 5
(pop) ; 4
; Joined path conditions
; Joined path conditions
(assert (or
  (Set_in n$1@214@01 (Set_union g0@126@01 g1@127@01))
  (not (Set_in n$1@214@01 (Set_union g0@126@01 g1@127@01)))))
(assert (and
  (Set_in n$1@214@01 (Set_union g0@126@01 g1@127@01))
  (not (= n$1@214@01 x0@128@01))))
; Definitional axioms for snapshot map values
(pop) ; 3
(declare-fun inv@215@01 ($Ref) $Ref)
(declare-fun img@216@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
(assert (forall ((n$1@214@01 $Ref)) (!
  (=>
    (and
      (Set_in n$1@214@01 (Set_union g0@126@01 g1@127@01))
      (not (= n$1@214@01 x0@128@01)))
    (or
      (Set_in n$1@214@01 (Set_union g0@126@01 g1@127@01))
      (not (Set_in n$1@214@01 (Set_union g0@126@01 g1@127@01)))))
  :pattern (($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@211@01))))) n$1@214@01) n$1@214@01))
  :qid |next-aux|)))
; Check receiver injectivity
(push) ; 3
(assert (not (forall ((n$11@214@01 $Ref) (n$12@214@01 $Ref)) (!
  (=>
    (and
      (and
        (Set_in n$11@214@01 (Set_union g0@126@01 g1@127@01))
        (not (= n$11@214@01 x0@128@01)))
      (and
        (Set_in n$12@214@01 (Set_union g0@126@01 g1@127@01))
        (not (= n$12@214@01 x0@128@01)))
      (= n$11@214@01 n$12@214@01))
    (= n$11@214@01 n$12@214@01))
  
  :qid |next-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((n$1@214@01 $Ref)) (!
  (=>
    (and
      (Set_in n$1@214@01 (Set_union g0@126@01 g1@127@01))
      (not (= n$1@214@01 x0@128@01)))
    (and (= (inv@215@01 n$1@214@01) n$1@214@01) (img@216@01 n$1@214@01)))
  :pattern (($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@211@01))))) n$1@214@01) n$1@214@01))
  :qid |quant-u-14336|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@216@01 r)
      (and
        (Set_in (inv@215@01 r) (Set_union g0@126@01 g1@127@01))
        (not (= (inv@215@01 r) x0@128@01))))
    (= (inv@215@01 r) r))
  :pattern ((inv@215@01 r))
  :qid |next-fctOfInv|)))
; Permissions are non-negative
; Field permissions are at most one
; Permission implies non-null receiver
(assert (forall ((n$1@214@01 $Ref)) (!
  (=>
    (and
      (Set_in n$1@214@01 (Set_union g0@126@01 g1@127@01))
      (not (= n$1@214@01 x0@128@01)))
    (not (= n$1@214@01 $Ref.null)))
  :pattern (($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@211@01))))) n$1@214@01) n$1@214@01))
  :qid |next-permImpliesNonNull|)))
(push) ; 3
(set-option :timeout 10)
(assert (not (forall ((r $Ref)) (!
  (and
    (= n$1@214@01 n@133@01)
    (=
      (and
        (img@216@01 r)
        (and
          (Set_in (inv@215@01 r) (Set_union g0@126@01 g1@127@01))
          (not (= (inv@215@01 r) x0@128@01))))
      (and
        (img@136@01 r)
        (Set_in (inv@135@01 r) (Set_union g0@126@01 g1@127@01)))))
  
  :qid |quant-u-14337|))))
(check-sat)
; unknown
(pop) ; 3
; 0.01s
; (get-info :all-statistics)
(declare-const sm@217@01 $FVF<next>)
; Definitional axioms for snapshot map values
(assert (forall ((r $Ref)) (!
  (=>
    (ite
      (and
        (img@136@01 r)
        (Set_in (inv@135@01 r) (Set_union g0@126@01 g1@127@01)))
      (< $Perm.No (- (- $Perm.Write (pTaken@204@01 r)) (pTaken@209@01 r)))
      false)
    (=
      ($FVF.lookup_next (as sm@217@01  $FVF<next>) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@130@01))))) r)))
  :pattern (($FVF.lookup_next (as sm@217@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@130@01))))) r))
  :qid |qp.fvfValDef161|)))
(assert (forall ((r $Ref)) (!
  (=>
    (= r x0@128@01)
    (=
      ($FVF.lookup_next (as sm@217@01  $FVF<next>) r)
      ($FVF.lookup_next (as sm@212@01  $FVF<next>) r)))
  :pattern (($FVF.lookup_next (as sm@217@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next (as sm@212@01  $FVF<next>) r))
  :qid |qp.fvfValDef162|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@216@01 r)
      (and
        (Set_in (inv@215@01 r) (Set_union g0@126@01 g1@127@01))
        (not (= (inv@215@01 r) x0@128@01))))
    (=
      ($FVF.lookup_next (as sm@217@01  $FVF<next>) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@211@01))))) r)))
  :pattern (($FVF.lookup_next (as sm@217@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@211@01))))) r))
  :qid |qp.fvfValDef163|)))
(assert (forall ((r $Ref)) (!
  (and
    ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@130@01))))) r) r)
    ($FVF.loc_next ($FVF.lookup_next (as sm@212@01  $FVF<next>) r) r)
    ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@211@01))))) r) r))
  :pattern (($FVF.lookup_next (as sm@217@01  $FVF<next>) r))
  :qid |qp.fvfResTrgDef164|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (Set_in (inv@215@01 r) (Set_union g0@126@01 g1@127@01))
      (not (= (inv@215@01 r) x0@128@01)))
    ($FVF.loc_next ($FVF.lookup_next (as sm@217@01  $FVF<next>) r) r))
  :pattern ((inv@215@01 r))
  :qid |quant-u-14338|)))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@211@01))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@211@01)))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@211@01))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@211@01)))))
  $Snap.unit))
; [eval] (forall n$2: Ref :: { (n$2.next in g) } { (n$2 in g), n$2.next } (n$2 in g) && n$2.next != null ==> (n$2.next in g))
(declare-const n$2@218@01 $Ref)
(set-option :timeout 0)
(push) ; 3
; [eval] (n$2 in g) && n$2.next != null ==> (n$2.next in g)
; [eval] (n$2 in g) && n$2.next != null
; [eval] (n$2 in g)
(push) ; 4
; [then-branch: 49 | !(n$2@218@01 in g0@126@01 ∪ g1@127@01) | live]
; [else-branch: 49 | n$2@218@01 in g0@126@01 ∪ g1@127@01 | live]
(push) ; 5
; [then-branch: 49 | !(n$2@218@01 in g0@126@01 ∪ g1@127@01)]
(assert (not (Set_in n$2@218@01 (Set_union g0@126@01 g1@127@01))))
(pop) ; 5
(push) ; 5
; [else-branch: 49 | n$2@218@01 in g0@126@01 ∪ g1@127@01]
(assert (Set_in n$2@218@01 (Set_union g0@126@01 g1@127@01)))
; [eval] n$2.next != null
(assert (and
  (forall ((r $Ref)) (!
    (=>
      (ite
        (and
          (img@136@01 r)
          (Set_in (inv@135@01 r) (Set_union g0@126@01 g1@127@01)))
        (< $Perm.No (- (- $Perm.Write (pTaken@204@01 r)) (pTaken@209@01 r)))
        false)
      (=
        ($FVF.lookup_next (as sm@217@01  $FVF<next>) r)
        ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@130@01))))) r)))
    :pattern (($FVF.lookup_next (as sm@217@01  $FVF<next>) r))
    :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@130@01))))) r))
    :qid |qp.fvfValDef161|))
  (forall ((r $Ref)) (!
    (=>
      (= r x0@128@01)
      (=
        ($FVF.lookup_next (as sm@217@01  $FVF<next>) r)
        ($FVF.lookup_next (as sm@212@01  $FVF<next>) r)))
    :pattern (($FVF.lookup_next (as sm@217@01  $FVF<next>) r))
    :pattern (($FVF.lookup_next (as sm@212@01  $FVF<next>) r))
    :qid |qp.fvfValDef162|))
  (forall ((r $Ref)) (!
    (=>
      (and
        (img@216@01 r)
        (and
          (Set_in (inv@215@01 r) (Set_union g0@126@01 g1@127@01))
          (not (= (inv@215@01 r) x0@128@01))))
      (=
        ($FVF.lookup_next (as sm@217@01  $FVF<next>) r)
        ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@211@01))))) r)))
    :pattern (($FVF.lookup_next (as sm@217@01  $FVF<next>) r))
    :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@211@01))))) r))
    :qid |qp.fvfValDef163|))
  (forall ((r $Ref)) (!
    (and
      ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@130@01))))) r) r)
      ($FVF.loc_next ($FVF.lookup_next (as sm@212@01  $FVF<next>) r) r)
      ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@211@01))))) r) r))
    :pattern (($FVF.lookup_next (as sm@217@01  $FVF<next>) r))
    :qid |qp.fvfResTrgDef164|))))
(assert ($FVF.loc_next ($FVF.lookup_next (as sm@217@01  $FVF<next>) n$2@218@01) n$2@218@01))
(push) ; 6
(assert (not (<
  $Perm.No
  (+
    (+
      (ite
        (and
          (img@136@01 n$2@218@01)
          (Set_in (inv@135@01 n$2@218@01) (Set_union g0@126@01 g1@127@01)))
        (- (- $Perm.Write (pTaken@204@01 n$2@218@01)) (pTaken@209@01 n$2@218@01))
        $Perm.No)
      (ite (= n$2@218@01 x0@128@01) $Perm.Write $Perm.No))
    (ite
      (and
        (img@216@01 n$2@218@01)
        (and
          (Set_in (inv@215@01 n$2@218@01) (Set_union g0@126@01 g1@127@01))
          (not (= (inv@215@01 n$2@218@01) x0@128@01))))
      (/ (to_real 1) (to_real 2))
      $Perm.No)))))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(pop) ; 5
(pop) ; 4
; Joined path conditions
; Joined path conditions
(assert (forall ((r $Ref)) (!
  (=>
    (ite
      (and
        (img@136@01 r)
        (Set_in (inv@135@01 r) (Set_union g0@126@01 g1@127@01)))
      (< $Perm.No (- (- $Perm.Write (pTaken@204@01 r)) (pTaken@209@01 r)))
      false)
    (=
      ($FVF.lookup_next (as sm@217@01  $FVF<next>) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@130@01))))) r)))
  :pattern (($FVF.lookup_next (as sm@217@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@130@01))))) r))
  :qid |qp.fvfValDef161|)))
(assert (forall ((r $Ref)) (!
  (=>
    (= r x0@128@01)
    (=
      ($FVF.lookup_next (as sm@217@01  $FVF<next>) r)
      ($FVF.lookup_next (as sm@212@01  $FVF<next>) r)))
  :pattern (($FVF.lookup_next (as sm@217@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next (as sm@212@01  $FVF<next>) r))
  :qid |qp.fvfValDef162|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@216@01 r)
      (and
        (Set_in (inv@215@01 r) (Set_union g0@126@01 g1@127@01))
        (not (= (inv@215@01 r) x0@128@01))))
    (=
      ($FVF.lookup_next (as sm@217@01  $FVF<next>) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@211@01))))) r)))
  :pattern (($FVF.lookup_next (as sm@217@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@211@01))))) r))
  :qid |qp.fvfValDef163|)))
(assert (forall ((r $Ref)) (!
  (and
    ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@130@01))))) r) r)
    ($FVF.loc_next ($FVF.lookup_next (as sm@212@01  $FVF<next>) r) r)
    ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@211@01))))) r) r))
  :pattern (($FVF.lookup_next (as sm@217@01  $FVF<next>) r))
  :qid |qp.fvfResTrgDef164|)))
(assert (=>
  (Set_in n$2@218@01 (Set_union g0@126@01 g1@127@01))
  (and
    (Set_in n$2@218@01 (Set_union g0@126@01 g1@127@01))
    ($FVF.loc_next ($FVF.lookup_next (as sm@217@01  $FVF<next>) n$2@218@01) n$2@218@01))))
(assert (or
  (Set_in n$2@218@01 (Set_union g0@126@01 g1@127@01))
  (not (Set_in n$2@218@01 (Set_union g0@126@01 g1@127@01)))))
(push) ; 4
; [then-branch: 50 | n$2@218@01 in g0@126@01 ∪ g1@127@01 && Lookup(next, sm@217@01, n$2@218@01) != Null | live]
; [else-branch: 50 | !(n$2@218@01 in g0@126@01 ∪ g1@127@01 && Lookup(next, sm@217@01, n$2@218@01) != Null) | live]
(push) ; 5
; [then-branch: 50 | n$2@218@01 in g0@126@01 ∪ g1@127@01 && Lookup(next, sm@217@01, n$2@218@01) != Null]
(assert (and
  (Set_in n$2@218@01 (Set_union g0@126@01 g1@127@01))
  (not (= ($FVF.lookup_next (as sm@217@01  $FVF<next>) n$2@218@01) $Ref.null))))
; [eval] (n$2.next in g)
(assert (and
  (forall ((r $Ref)) (!
    (=>
      (ite
        (and
          (img@136@01 r)
          (Set_in (inv@135@01 r) (Set_union g0@126@01 g1@127@01)))
        (< $Perm.No (- (- $Perm.Write (pTaken@204@01 r)) (pTaken@209@01 r)))
        false)
      (=
        ($FVF.lookup_next (as sm@217@01  $FVF<next>) r)
        ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@130@01))))) r)))
    :pattern (($FVF.lookup_next (as sm@217@01  $FVF<next>) r))
    :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@130@01))))) r))
    :qid |qp.fvfValDef161|))
  (forall ((r $Ref)) (!
    (=>
      (= r x0@128@01)
      (=
        ($FVF.lookup_next (as sm@217@01  $FVF<next>) r)
        ($FVF.lookup_next (as sm@212@01  $FVF<next>) r)))
    :pattern (($FVF.lookup_next (as sm@217@01  $FVF<next>) r))
    :pattern (($FVF.lookup_next (as sm@212@01  $FVF<next>) r))
    :qid |qp.fvfValDef162|))
  (forall ((r $Ref)) (!
    (=>
      (and
        (img@216@01 r)
        (and
          (Set_in (inv@215@01 r) (Set_union g0@126@01 g1@127@01))
          (not (= (inv@215@01 r) x0@128@01))))
      (=
        ($FVF.lookup_next (as sm@217@01  $FVF<next>) r)
        ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@211@01))))) r)))
    :pattern (($FVF.lookup_next (as sm@217@01  $FVF<next>) r))
    :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@211@01))))) r))
    :qid |qp.fvfValDef163|))
  (forall ((r $Ref)) (!
    (and
      ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@130@01))))) r) r)
      ($FVF.loc_next ($FVF.lookup_next (as sm@212@01  $FVF<next>) r) r)
      ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@211@01))))) r) r))
    :pattern (($FVF.lookup_next (as sm@217@01  $FVF<next>) r))
    :qid |qp.fvfResTrgDef164|))))
(assert ($FVF.loc_next ($FVF.lookup_next (as sm@217@01  $FVF<next>) n$2@218@01) n$2@218@01))
(push) ; 6
(assert (not (<
  $Perm.No
  (+
    (+
      (ite
        (and
          (img@136@01 n$2@218@01)
          (Set_in (inv@135@01 n$2@218@01) (Set_union g0@126@01 g1@127@01)))
        (- (- $Perm.Write (pTaken@204@01 n$2@218@01)) (pTaken@209@01 n$2@218@01))
        $Perm.No)
      (ite (= n$2@218@01 x0@128@01) $Perm.Write $Perm.No))
    (ite
      (and
        (img@216@01 n$2@218@01)
        (and
          (Set_in (inv@215@01 n$2@218@01) (Set_union g0@126@01 g1@127@01))
          (not (= (inv@215@01 n$2@218@01) x0@128@01))))
      (/ (to_real 1) (to_real 2))
      $Perm.No)))))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(pop) ; 5
(push) ; 5
; [else-branch: 50 | !(n$2@218@01 in g0@126@01 ∪ g1@127@01 && Lookup(next, sm@217@01, n$2@218@01) != Null)]
(assert (not
  (and
    (Set_in n$2@218@01 (Set_union g0@126@01 g1@127@01))
    (not (= ($FVF.lookup_next (as sm@217@01  $FVF<next>) n$2@218@01) $Ref.null)))))
(pop) ; 5
(pop) ; 4
; Joined path conditions
(assert (forall ((r $Ref)) (!
  (=>
    (ite
      (and
        (img@136@01 r)
        (Set_in (inv@135@01 r) (Set_union g0@126@01 g1@127@01)))
      (< $Perm.No (- (- $Perm.Write (pTaken@204@01 r)) (pTaken@209@01 r)))
      false)
    (=
      ($FVF.lookup_next (as sm@217@01  $FVF<next>) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@130@01))))) r)))
  :pattern (($FVF.lookup_next (as sm@217@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@130@01))))) r))
  :qid |qp.fvfValDef161|)))
(assert (forall ((r $Ref)) (!
  (=>
    (= r x0@128@01)
    (=
      ($FVF.lookup_next (as sm@217@01  $FVF<next>) r)
      ($FVF.lookup_next (as sm@212@01  $FVF<next>) r)))
  :pattern (($FVF.lookup_next (as sm@217@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next (as sm@212@01  $FVF<next>) r))
  :qid |qp.fvfValDef162|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@216@01 r)
      (and
        (Set_in (inv@215@01 r) (Set_union g0@126@01 g1@127@01))
        (not (= (inv@215@01 r) x0@128@01))))
    (=
      ($FVF.lookup_next (as sm@217@01  $FVF<next>) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@211@01))))) r)))
  :pattern (($FVF.lookup_next (as sm@217@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@211@01))))) r))
  :qid |qp.fvfValDef163|)))
(assert (forall ((r $Ref)) (!
  (and
    ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@130@01))))) r) r)
    ($FVF.loc_next ($FVF.lookup_next (as sm@212@01  $FVF<next>) r) r)
    ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@211@01))))) r) r))
  :pattern (($FVF.lookup_next (as sm@217@01  $FVF<next>) r))
  :qid |qp.fvfResTrgDef164|)))
(assert (=>
  (and
    (Set_in n$2@218@01 (Set_union g0@126@01 g1@127@01))
    (not (= ($FVF.lookup_next (as sm@217@01  $FVF<next>) n$2@218@01) $Ref.null)))
  (and
    (Set_in n$2@218@01 (Set_union g0@126@01 g1@127@01))
    (not (= ($FVF.lookup_next (as sm@217@01  $FVF<next>) n$2@218@01) $Ref.null))
    ($FVF.loc_next ($FVF.lookup_next (as sm@217@01  $FVF<next>) n$2@218@01) n$2@218@01))))
; Joined path conditions
(assert (or
  (not
    (and
      (Set_in n$2@218@01 (Set_union g0@126@01 g1@127@01))
      (not
        (= ($FVF.lookup_next (as sm@217@01  $FVF<next>) n$2@218@01) $Ref.null))))
  (and
    (Set_in n$2@218@01 (Set_union g0@126@01 g1@127@01))
    (not (= ($FVF.lookup_next (as sm@217@01  $FVF<next>) n$2@218@01) $Ref.null)))))
; Definitional axioms for snapshot map values
(pop) ; 3
; Nested auxiliary terms: globals (aux)
(assert (forall ((r $Ref)) (!
  (=>
    (ite
      (and
        (img@136@01 r)
        (Set_in (inv@135@01 r) (Set_union g0@126@01 g1@127@01)))
      (< $Perm.No (- (- $Perm.Write (pTaken@204@01 r)) (pTaken@209@01 r)))
      false)
    (=
      ($FVF.lookup_next (as sm@217@01  $FVF<next>) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@130@01))))) r)))
  :pattern (($FVF.lookup_next (as sm@217@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@130@01))))) r))
  :qid |qp.fvfValDef161|)))
(assert (forall ((r $Ref)) (!
  (=>
    (= r x0@128@01)
    (=
      ($FVF.lookup_next (as sm@217@01  $FVF<next>) r)
      ($FVF.lookup_next (as sm@212@01  $FVF<next>) r)))
  :pattern (($FVF.lookup_next (as sm@217@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next (as sm@212@01  $FVF<next>) r))
  :qid |qp.fvfValDef162|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@216@01 r)
      (and
        (Set_in (inv@215@01 r) (Set_union g0@126@01 g1@127@01))
        (not (= (inv@215@01 r) x0@128@01))))
    (=
      ($FVF.lookup_next (as sm@217@01  $FVF<next>) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@211@01))))) r)))
  :pattern (($FVF.lookup_next (as sm@217@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@211@01))))) r))
  :qid |qp.fvfValDef163|)))
(assert (forall ((r $Ref)) (!
  (and
    ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@130@01))))) r) r)
    ($FVF.loc_next ($FVF.lookup_next (as sm@212@01  $FVF<next>) r) r)
    ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@211@01))))) r) r))
  :pattern (($FVF.lookup_next (as sm@217@01  $FVF<next>) r))
  :qid |qp.fvfResTrgDef164|)))
; Nested auxiliary terms: non-globals (aux)
(assert (forall ((n$2@218@01 $Ref)) (!
  (and
    (=>
      (Set_in n$2@218@01 (Set_union g0@126@01 g1@127@01))
      (and
        (Set_in n$2@218@01 (Set_union g0@126@01 g1@127@01))
        ($FVF.loc_next ($FVF.lookup_next (as sm@217@01  $FVF<next>) n$2@218@01) n$2@218@01)))
    (or
      (Set_in n$2@218@01 (Set_union g0@126@01 g1@127@01))
      (not (Set_in n$2@218@01 (Set_union g0@126@01 g1@127@01))))
    (=>
      (and
        (Set_in n$2@218@01 (Set_union g0@126@01 g1@127@01))
        (not
          (= ($FVF.lookup_next (as sm@217@01  $FVF<next>) n$2@218@01) $Ref.null)))
      (and
        (Set_in n$2@218@01 (Set_union g0@126@01 g1@127@01))
        (not
          (= ($FVF.lookup_next (as sm@217@01  $FVF<next>) n$2@218@01) $Ref.null))
        ($FVF.loc_next ($FVF.lookup_next (as sm@217@01  $FVF<next>) n$2@218@01) n$2@218@01)))
    (or
      (not
        (and
          (Set_in n$2@218@01 (Set_union g0@126@01 g1@127@01))
          (not
            (=
              ($FVF.lookup_next (as sm@217@01  $FVF<next>) n$2@218@01)
              $Ref.null))))
      (and
        (Set_in n$2@218@01 (Set_union g0@126@01 g1@127@01))
        (not
          (= ($FVF.lookup_next (as sm@217@01  $FVF<next>) n$2@218@01) $Ref.null)))))
  :pattern ((Set_in ($FVF.lookup_next (as sm@217@01  $FVF<next>) n$2@218@01) (Set_union g0@126@01 g1@127@01)))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/graphs/static/tests/lists/delete_edge1.vpr@310@13@310@33-aux|)))
(assert (forall ((n$2@218@01 $Ref)) (!
  (and
    (=>
      (Set_in n$2@218@01 (Set_union g0@126@01 g1@127@01))
      (and
        (Set_in n$2@218@01 (Set_union g0@126@01 g1@127@01))
        ($FVF.loc_next ($FVF.lookup_next (as sm@217@01  $FVF<next>) n$2@218@01) n$2@218@01)))
    (or
      (Set_in n$2@218@01 (Set_union g0@126@01 g1@127@01))
      (not (Set_in n$2@218@01 (Set_union g0@126@01 g1@127@01))))
    (=>
      (and
        (Set_in n$2@218@01 (Set_union g0@126@01 g1@127@01))
        (not
          (= ($FVF.lookup_next (as sm@217@01  $FVF<next>) n$2@218@01) $Ref.null)))
      (and
        (Set_in n$2@218@01 (Set_union g0@126@01 g1@127@01))
        (not
          (= ($FVF.lookup_next (as sm@217@01  $FVF<next>) n$2@218@01) $Ref.null))
        ($FVF.loc_next ($FVF.lookup_next (as sm@217@01  $FVF<next>) n$2@218@01) n$2@218@01)))
    (or
      (not
        (and
          (Set_in n$2@218@01 (Set_union g0@126@01 g1@127@01))
          (not
            (=
              ($FVF.lookup_next (as sm@217@01  $FVF<next>) n$2@218@01)
              $Ref.null))))
      (and
        (Set_in n$2@218@01 (Set_union g0@126@01 g1@127@01))
        (not
          (= ($FVF.lookup_next (as sm@217@01  $FVF<next>) n$2@218@01) $Ref.null)))))
  :pattern ((Set_in n$2@218@01 (Set_union g0@126@01 g1@127@01)) ($FVF.loc_next ($FVF.lookup_next (as sm@217@01  $FVF<next>) n$2@218@01) n$2@218@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/graphs/static/tests/lists/delete_edge1.vpr@310@13@310@33-aux|)))
(assert (forall ((n$2@218@01 $Ref)) (!
  (=>
    (and
      (Set_in n$2@218@01 (Set_union g0@126@01 g1@127@01))
      (not
        (= ($FVF.lookup_next (as sm@217@01  $FVF<next>) n$2@218@01) $Ref.null)))
    (Set_in ($FVF.lookup_next (as sm@217@01  $FVF<next>) n$2@218@01) (Set_union g0@126@01 g1@127@01)))
  :pattern ((Set_in ($FVF.lookup_next (as sm@217@01  $FVF<next>) n$2@218@01) (Set_union g0@126@01 g1@127@01)))
  :pattern ((Set_in n$2@218@01 (Set_union g0@126@01 g1@127@01)) ($FVF.loc_next ($FVF.lookup_next (as sm@217@01  $FVF<next>) n$2@218@01) n$2@218@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/graphs/static/tests/lists/delete_edge1.vpr@310@13@310@33|)))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@211@01)))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@211@01))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@211@01)))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@211@01))))))
  $Snap.unit))
; [eval] x.next == null
(assert (and
  (forall ((r $Ref)) (!
    (=>
      (ite
        (and
          (img@136@01 r)
          (Set_in (inv@135@01 r) (Set_union g0@126@01 g1@127@01)))
        (< $Perm.No (- (- $Perm.Write (pTaken@204@01 r)) (pTaken@209@01 r)))
        false)
      (=
        ($FVF.lookup_next (as sm@217@01  $FVF<next>) r)
        ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@130@01))))) r)))
    :pattern (($FVF.lookup_next (as sm@217@01  $FVF<next>) r))
    :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@130@01))))) r))
    :qid |qp.fvfValDef161|))
  (forall ((r $Ref)) (!
    (=>
      (= r x0@128@01)
      (=
        ($FVF.lookup_next (as sm@217@01  $FVF<next>) r)
        ($FVF.lookup_next (as sm@212@01  $FVF<next>) r)))
    :pattern (($FVF.lookup_next (as sm@217@01  $FVF<next>) r))
    :pattern (($FVF.lookup_next (as sm@212@01  $FVF<next>) r))
    :qid |qp.fvfValDef162|))
  (forall ((r $Ref)) (!
    (=>
      (and
        (img@216@01 r)
        (and
          (Set_in (inv@215@01 r) (Set_union g0@126@01 g1@127@01))
          (not (= (inv@215@01 r) x0@128@01))))
      (=
        ($FVF.lookup_next (as sm@217@01  $FVF<next>) r)
        ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@211@01))))) r)))
    :pattern (($FVF.lookup_next (as sm@217@01  $FVF<next>) r))
    :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@211@01))))) r))
    :qid |qp.fvfValDef163|))
  (forall ((r $Ref)) (!
    (and
      ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@130@01))))) r) r)
      ($FVF.loc_next ($FVF.lookup_next (as sm@212@01  $FVF<next>) r) r)
      ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@211@01))))) r) r))
    :pattern (($FVF.lookup_next (as sm@217@01  $FVF<next>) r))
    :qid |qp.fvfResTrgDef164|))))
(assert ($FVF.loc_next ($FVF.lookup_next (as sm@217@01  $FVF<next>) x0@128@01) x0@128@01))
(push) ; 3
(assert (not (<
  $Perm.No
  (+
    (+
      (ite
        (and
          (img@136@01 x0@128@01)
          (Set_in (inv@135@01 x0@128@01) (Set_union g0@126@01 g1@127@01)))
        (- (- $Perm.Write (pTaken@204@01 x0@128@01)) (pTaken@209@01 x0@128@01))
        $Perm.No)
      $Perm.Write)
    (ite
      (and
        (img@216@01 x0@128@01)
        (and
          (Set_in (inv@215@01 x0@128@01) (Set_union g0@126@01 g1@127@01))
          (not (= (inv@215@01 x0@128@01) x0@128@01))))
      (/ (to_real 1) (to_real 2))
      $Perm.No)))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(assert (= ($FVF.lookup_next (as sm@217@01  $FVF<next>) x0@128@01) $Ref.null))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@211@01))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@211@01)))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@211@01))))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@211@01)))))))
  $Snap.unit))
; [eval] old(x.next) == null ==> $$(g) == old($$(g))
; [eval] old(x.next) == null
; [eval] old(x.next)
(assert (and
  (forall ((r $Ref)) (!
    (=>
      (and
        (img@136@01 r)
        (Set_in (inv@135@01 r) (Set_union g0@126@01 g1@127@01)))
      (=
        ($FVF.lookup_next (as sm@203@01  $FVF<next>) r)
        ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@130@01))))) r)))
    :pattern (($FVF.lookup_next (as sm@203@01  $FVF<next>) r))
    :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@130@01))))) r))
    :qid |qp.fvfValDef154|))
  (forall ((r $Ref)) (!
    ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@130@01))))) r) r)
    :pattern (($FVF.lookup_next (as sm@203@01  $FVF<next>) r))
    :qid |qp.fvfResTrgDef155|))))
(push) ; 3
(assert (not (and
  (img@136@01 x0@128@01)
  (Set_in (inv@135@01 x0@128@01) (Set_union g0@126@01 g1@127@01)))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(push) ; 3
(push) ; 4
(set-option :timeout 10)
(assert (not (not (= ($FVF.lookup_next (as sm@203@01  $FVF<next>) x0@128@01) $Ref.null))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; [then-branch: 51 | Lookup(next, sm@203@01, x0@128@01) == Null | dead]
; [else-branch: 51 | Lookup(next, sm@203@01, x0@128@01) != Null | live]
(set-option :timeout 0)
(push) ; 4
; [else-branch: 51 | Lookup(next, sm@203@01, x0@128@01) != Null]
(assert (not (= ($FVF.lookup_next (as sm@203@01  $FVF<next>) x0@128@01) $Ref.null)))
(pop) ; 4
(pop) ; 3
; Joined path conditions
(assert (not (= ($FVF.lookup_next (as sm@203@01  $FVF<next>) x0@128@01) $Ref.null)))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@211@01)))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@211@01))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@211@01)))))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@211@01))))))))
  $Snap.unit))
; [eval] old(x.next) != null ==> (forall v1: Ref, v2: Ref :: { edge($$(g), v1, v2) } edge($$(g), v1, v2) == (edge(old($$(g)), v1, v2) && !(v1 == x && v2 == old(x.next))))
; [eval] old(x.next) != null
; [eval] old(x.next)
(assert (and
  (forall ((r $Ref)) (!
    (=>
      (and
        (img@136@01 r)
        (Set_in (inv@135@01 r) (Set_union g0@126@01 g1@127@01)))
      (=
        ($FVF.lookup_next (as sm@203@01  $FVF<next>) r)
        ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@130@01))))) r)))
    :pattern (($FVF.lookup_next (as sm@203@01  $FVF<next>) r))
    :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@130@01))))) r))
    :qid |qp.fvfValDef154|))
  (forall ((r $Ref)) (!
    ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@130@01))))) r) r)
    :pattern (($FVF.lookup_next (as sm@203@01  $FVF<next>) r))
    :qid |qp.fvfResTrgDef155|))))
(push) ; 3
(assert (not (and
  (img@136@01 x0@128@01)
  (Set_in (inv@135@01 x0@128@01) (Set_union g0@126@01 g1@127@01)))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(push) ; 3
(push) ; 4
(set-option :timeout 10)
(assert (not (= ($FVF.lookup_next (as sm@203@01  $FVF<next>) x0@128@01) $Ref.null)))
(check-sat)
; unknown
(pop) ; 4
; 0.01s
; (get-info :all-statistics)
; [then-branch: 52 | Lookup(next, sm@203@01, x0@128@01) != Null | live]
; [else-branch: 52 | Lookup(next, sm@203@01, x0@128@01) == Null | dead]
(set-option :timeout 0)
(push) ; 4
; [then-branch: 52 | Lookup(next, sm@203@01, x0@128@01) != Null]
; [eval] (forall v1: Ref, v2: Ref :: { edge($$(g), v1, v2) } edge($$(g), v1, v2) == (edge(old($$(g)), v1, v2) && !(v1 == x && v2 == old(x.next))))
(declare-const v1@219@01 $Ref)
(declare-const v2@220@01 $Ref)
(push) ; 5
; [eval] edge($$(g), v1, v2) == (edge(old($$(g)), v1, v2) && !(v1 == x && v2 == old(x.next)))
; [eval] edge($$(g), v1, v2)
; [eval] $$(g)
(push) ; 6
(declare-const n@221@01 $Ref)
(push) ; 7
; [eval] (n in refs)
(assert (Set_in n@221@01 (Set_union g0@126@01 g1@127@01)))
(pop) ; 7
(declare-fun inv@222@01 ($Ref) $Ref)
(declare-fun img@223@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
; Definitional axioms for snapshot map domain
; Definitional axioms for snapshot map values
; Check receiver injectivity
(push) ; 7
(assert (not (forall ((n1@221@01 $Ref) (n2@221@01 $Ref)) (!
  (=>
    (and
      (and
        (Set_in n1@221@01 (Set_union g0@126@01 g1@127@01))
        ($FVF.loc_next ($FVF.lookup_next (as sm@217@01  $FVF<next>) n1@221@01) n1@221@01))
      (and
        (Set_in n2@221@01 (Set_union g0@126@01 g1@127@01))
        ($FVF.loc_next ($FVF.lookup_next (as sm@217@01  $FVF<next>) n2@221@01) n2@221@01))
      (= n1@221@01 n2@221@01))
    (= n1@221@01 n2@221@01))
  
  :qid |next-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((n@221@01 $Ref)) (!
  (=>
    (Set_in n@221@01 (Set_union g0@126@01 g1@127@01))
    (and (= (inv@222@01 n@221@01) n@221@01) (img@223@01 n@221@01)))
  :pattern ((Set_in n@221@01 (Set_union g0@126@01 g1@127@01)))
  :pattern ((inv@222@01 n@221@01))
  :pattern ((img@223@01 n@221@01))
  :qid |next-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@223@01 r) (Set_in (inv@222@01 r) (Set_union g0@126@01 g1@127@01)))
    (= (inv@222@01 r) r))
  :pattern ((inv@222@01 r))
  :qid |next-fctOfInv|)))
(assert (forall ((r $Ref)) (!
  (=>
    (Set_in (inv@222@01 r) (Set_union g0@126@01 g1@127@01))
    ($FVF.loc_next ($FVF.lookup_next (as sm@217@01  $FVF<next>) r) r))
  :pattern ((inv@222@01 r))
  :qid |quant-u-14340|)))
(push) ; 7
(assert (not (forall ((r $Ref)) (!
  (=>
    (and
      (Set_in (inv@222@01 r) (Set_union g0@126@01 g1@127@01))
      (img@223@01 r)
      (= r (inv@222@01 r)))
    (>
      (+
        (+
          (ite
            (and
              (img@136@01 r)
              (Set_in (inv@135@01 r) (Set_union g0@126@01 g1@127@01)))
            (- (- $Perm.Write (pTaken@204@01 r)) (pTaken@209@01 r))
            $Perm.No)
          (ite
            (and
              (img@216@01 r)
              (and
                (Set_in (inv@215@01 r) (Set_union g0@126@01 g1@127@01))
                (not (= (inv@215@01 r) x0@128@01))))
            (/ (to_real 1) (to_real 2))
            $Perm.No))
        (ite (= r x0@128@01) $Perm.Write $Perm.No))
      $Perm.No))
  
  :qid |quant-u-14341|))))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(declare-const sm@224@01 $FVF<next>)
; Definitional axioms for snapshot map domain
(assert (forall ((r $Ref)) (!
  (and
    (=>
      (Set_in r ($FVF.domain_next (as sm@224@01  $FVF<next>)))
      (and
        (Set_in (inv@222@01 r) (Set_union g0@126@01 g1@127@01))
        (img@223@01 r)))
    (=>
      (and
        (Set_in (inv@222@01 r) (Set_union g0@126@01 g1@127@01))
        (img@223@01 r))
      (Set_in r ($FVF.domain_next (as sm@224@01  $FVF<next>)))))
  :pattern ((Set_in r ($FVF.domain_next (as sm@224@01  $FVF<next>))))
  :qid |qp.fvfDomDef169|)))
; Definitional axioms for snapshot map values
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and
        (Set_in (inv@222@01 r) (Set_union g0@126@01 g1@127@01))
        (img@223@01 r))
      (ite
        (and
          (img@136@01 r)
          (Set_in (inv@135@01 r) (Set_union g0@126@01 g1@127@01)))
        (< $Perm.No (- (- $Perm.Write (pTaken@204@01 r)) (pTaken@209@01 r)))
        false))
    (=
      ($FVF.lookup_next (as sm@224@01  $FVF<next>) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@130@01))))) r)))
  :pattern (($FVF.lookup_next (as sm@224@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@130@01))))) r))
  :qid |qp.fvfValDef165|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and
        (Set_in (inv@222@01 r) (Set_union g0@126@01 g1@127@01))
        (img@223@01 r))
      (= r x0@128@01))
    (=
      ($FVF.lookup_next (as sm@224@01  $FVF<next>) r)
      ($FVF.lookup_next (as sm@212@01  $FVF<next>) r)))
  :pattern (($FVF.lookup_next (as sm@224@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next (as sm@212@01  $FVF<next>) r))
  :qid |qp.fvfValDef166|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and
        (Set_in (inv@222@01 r) (Set_union g0@126@01 g1@127@01))
        (img@223@01 r))
      (and
        (img@216@01 r)
        (and
          (Set_in (inv@215@01 r) (Set_union g0@126@01 g1@127@01))
          (not (= (inv@215@01 r) x0@128@01)))))
    (=
      ($FVF.lookup_next (as sm@224@01  $FVF<next>) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@211@01))))) r)))
  :pattern (($FVF.lookup_next (as sm@224@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@211@01))))) r))
  :qid |qp.fvfValDef167|)))
(assert (forall ((r $Ref)) (!
  (and
    ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@130@01))))) r) r)
    ($FVF.loc_next ($FVF.lookup_next (as sm@212@01  $FVF<next>) r) r)
    ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@211@01))))) r) r))
  :pattern (($FVF.lookup_next (as sm@224@01  $FVF<next>) r))
  :qid |qp.fvfResTrgDef168|)))
(assert ($$%precondition ($SortWrappers.$FVF<next>To$Snap (as sm@224@01  $FVF<next>)) (Set_union g0@126@01 g1@127@01)))
(pop) ; 6
; Joined path conditions
(assert (forall ((n@221@01 $Ref)) (!
  (=>
    (Set_in n@221@01 (Set_union g0@126@01 g1@127@01))
    (and (= (inv@222@01 n@221@01) n@221@01) (img@223@01 n@221@01)))
  :pattern ((Set_in n@221@01 (Set_union g0@126@01 g1@127@01)))
  :pattern ((inv@222@01 n@221@01))
  :pattern ((img@223@01 n@221@01))
  :qid |next-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@223@01 r) (Set_in (inv@222@01 r) (Set_union g0@126@01 g1@127@01)))
    (= (inv@222@01 r) r))
  :pattern ((inv@222@01 r))
  :qid |next-fctOfInv|)))
(assert (forall ((r $Ref)) (!
  (and
    (=>
      (Set_in r ($FVF.domain_next (as sm@224@01  $FVF<next>)))
      (and
        (Set_in (inv@222@01 r) (Set_union g0@126@01 g1@127@01))
        (img@223@01 r)))
    (=>
      (and
        (Set_in (inv@222@01 r) (Set_union g0@126@01 g1@127@01))
        (img@223@01 r))
      (Set_in r ($FVF.domain_next (as sm@224@01  $FVF<next>)))))
  :pattern ((Set_in r ($FVF.domain_next (as sm@224@01  $FVF<next>))))
  :qid |qp.fvfDomDef169|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and
        (Set_in (inv@222@01 r) (Set_union g0@126@01 g1@127@01))
        (img@223@01 r))
      (ite
        (and
          (img@136@01 r)
          (Set_in (inv@135@01 r) (Set_union g0@126@01 g1@127@01)))
        (< $Perm.No (- (- $Perm.Write (pTaken@204@01 r)) (pTaken@209@01 r)))
        false))
    (=
      ($FVF.lookup_next (as sm@224@01  $FVF<next>) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@130@01))))) r)))
  :pattern (($FVF.lookup_next (as sm@224@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@130@01))))) r))
  :qid |qp.fvfValDef165|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and
        (Set_in (inv@222@01 r) (Set_union g0@126@01 g1@127@01))
        (img@223@01 r))
      (= r x0@128@01))
    (=
      ($FVF.lookup_next (as sm@224@01  $FVF<next>) r)
      ($FVF.lookup_next (as sm@212@01  $FVF<next>) r)))
  :pattern (($FVF.lookup_next (as sm@224@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next (as sm@212@01  $FVF<next>) r))
  :qid |qp.fvfValDef166|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and
        (Set_in (inv@222@01 r) (Set_union g0@126@01 g1@127@01))
        (img@223@01 r))
      (and
        (img@216@01 r)
        (and
          (Set_in (inv@215@01 r) (Set_union g0@126@01 g1@127@01))
          (not (= (inv@215@01 r) x0@128@01)))))
    (=
      ($FVF.lookup_next (as sm@224@01  $FVF<next>) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@211@01))))) r)))
  :pattern (($FVF.lookup_next (as sm@224@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@211@01))))) r))
  :qid |qp.fvfValDef167|)))
(assert (forall ((r $Ref)) (!
  (and
    ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@130@01))))) r) r)
    ($FVF.loc_next ($FVF.lookup_next (as sm@212@01  $FVF<next>) r) r)
    ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@211@01))))) r) r))
  :pattern (($FVF.lookup_next (as sm@224@01  $FVF<next>) r))
  :qid |qp.fvfResTrgDef168|)))
(assert (and
  (forall ((r $Ref)) (!
    (=>
      (Set_in (inv@222@01 r) (Set_union g0@126@01 g1@127@01))
      ($FVF.loc_next ($FVF.lookup_next (as sm@217@01  $FVF<next>) r) r))
    :pattern ((inv@222@01 r))
    :qid |quant-u-14340|))
  ($$%precondition ($SortWrappers.$FVF<next>To$Snap (as sm@224@01  $FVF<next>)) (Set_union g0@126@01 g1@127@01))))
; [eval] edge(old($$(g)), v1, v2) && !(v1 == x && v2 == old(x.next))
; [eval] edge(old($$(g)), v1, v2)
; [eval] old($$(g))
; [eval] $$(g)
(push) ; 6
(declare-const n@225@01 $Ref)
(push) ; 7
; [eval] (n in refs)
(assert (Set_in n@225@01 (Set_union g0@126@01 g1@127@01)))
(pop) ; 7
(declare-fun inv@226@01 ($Ref) $Ref)
(declare-fun img@227@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
; Definitional axioms for snapshot map domain
; Definitional axioms for snapshot map values
; Check receiver injectivity
(push) ; 7
(assert (not (forall ((n1@225@01 $Ref) (n2@225@01 $Ref)) (!
  (=>
    (and
      (and
        (Set_in n1@225@01 (Set_union g0@126@01 g1@127@01))
        ($FVF.loc_next ($FVF.lookup_next (as sm@203@01  $FVF<next>) n1@225@01) n1@225@01))
      (and
        (Set_in n2@225@01 (Set_union g0@126@01 g1@127@01))
        ($FVF.loc_next ($FVF.lookup_next (as sm@203@01  $FVF<next>) n2@225@01) n2@225@01))
      (= n1@225@01 n2@225@01))
    (= n1@225@01 n2@225@01))
  
  :qid |next-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((n@225@01 $Ref)) (!
  (=>
    (Set_in n@225@01 (Set_union g0@126@01 g1@127@01))
    (and (= (inv@226@01 n@225@01) n@225@01) (img@227@01 n@225@01)))
  :pattern ((Set_in n@225@01 (Set_union g0@126@01 g1@127@01)))
  :pattern ((inv@226@01 n@225@01))
  :pattern ((img@227@01 n@225@01))
  :qid |next-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@227@01 r) (Set_in (inv@226@01 r) (Set_union g0@126@01 g1@127@01)))
    (= (inv@226@01 r) r))
  :pattern ((inv@226@01 r))
  :qid |next-fctOfInv|)))
(assert (forall ((r $Ref)) (!
  (=>
    (Set_in (inv@226@01 r) (Set_union g0@126@01 g1@127@01))
    ($FVF.loc_next ($FVF.lookup_next (as sm@203@01  $FVF<next>) r) r))
  :pattern ((inv@226@01 r))
  :qid |quant-u-14343|)))
(push) ; 7
(assert (not (forall ((r $Ref)) (!
  (=>
    (and
      (Set_in (inv@226@01 r) (Set_union g0@126@01 g1@127@01))
      (img@227@01 r)
      (= r (inv@226@01 r)))
    (>
      (ite
        (and
          (img@136@01 r)
          (Set_in (inv@135@01 r) (Set_union g0@126@01 g1@127@01)))
        $Perm.Write
        $Perm.No)
      $Perm.No))
  
  :qid |quant-u-14344|))))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(declare-const sm@228@01 $FVF<next>)
; Definitional axioms for snapshot map domain
(assert (forall ((r $Ref)) (!
  (and
    (=>
      (Set_in r ($FVF.domain_next (as sm@228@01  $FVF<next>)))
      (and
        (Set_in (inv@226@01 r) (Set_union g0@126@01 g1@127@01))
        (img@227@01 r)))
    (=>
      (and
        (Set_in (inv@226@01 r) (Set_union g0@126@01 g1@127@01))
        (img@227@01 r))
      (Set_in r ($FVF.domain_next (as sm@228@01  $FVF<next>)))))
  :pattern ((Set_in r ($FVF.domain_next (as sm@228@01  $FVF<next>))))
  :qid |qp.fvfDomDef172|)))
; Definitional axioms for snapshot map values
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and
        (Set_in (inv@226@01 r) (Set_union g0@126@01 g1@127@01))
        (img@227@01 r))
      (and
        (img@136@01 r)
        (Set_in (inv@135@01 r) (Set_union g0@126@01 g1@127@01))))
    (=
      ($FVF.lookup_next (as sm@228@01  $FVF<next>) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@130@01))))) r)))
  :pattern (($FVF.lookup_next (as sm@228@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@130@01))))) r))
  :qid |qp.fvfValDef170|)))
(assert (forall ((r $Ref)) (!
  ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@130@01))))) r) r)
  :pattern (($FVF.lookup_next (as sm@228@01  $FVF<next>) r))
  :qid |qp.fvfResTrgDef171|)))
(assert ($$%precondition ($SortWrappers.$FVF<next>To$Snap (as sm@228@01  $FVF<next>)) (Set_union g0@126@01 g1@127@01)))
(pop) ; 6
; Joined path conditions
(assert (forall ((n@225@01 $Ref)) (!
  (=>
    (Set_in n@225@01 (Set_union g0@126@01 g1@127@01))
    (and (= (inv@226@01 n@225@01) n@225@01) (img@227@01 n@225@01)))
  :pattern ((Set_in n@225@01 (Set_union g0@126@01 g1@127@01)))
  :pattern ((inv@226@01 n@225@01))
  :pattern ((img@227@01 n@225@01))
  :qid |next-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@227@01 r) (Set_in (inv@226@01 r) (Set_union g0@126@01 g1@127@01)))
    (= (inv@226@01 r) r))
  :pattern ((inv@226@01 r))
  :qid |next-fctOfInv|)))
(assert (forall ((r $Ref)) (!
  (and
    (=>
      (Set_in r ($FVF.domain_next (as sm@228@01  $FVF<next>)))
      (and
        (Set_in (inv@226@01 r) (Set_union g0@126@01 g1@127@01))
        (img@227@01 r)))
    (=>
      (and
        (Set_in (inv@226@01 r) (Set_union g0@126@01 g1@127@01))
        (img@227@01 r))
      (Set_in r ($FVF.domain_next (as sm@228@01  $FVF<next>)))))
  :pattern ((Set_in r ($FVF.domain_next (as sm@228@01  $FVF<next>))))
  :qid |qp.fvfDomDef172|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and
        (Set_in (inv@226@01 r) (Set_union g0@126@01 g1@127@01))
        (img@227@01 r))
      (and
        (img@136@01 r)
        (Set_in (inv@135@01 r) (Set_union g0@126@01 g1@127@01))))
    (=
      ($FVF.lookup_next (as sm@228@01  $FVF<next>) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@130@01))))) r)))
  :pattern (($FVF.lookup_next (as sm@228@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@130@01))))) r))
  :qid |qp.fvfValDef170|)))
(assert (forall ((r $Ref)) (!
  ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@130@01))))) r) r)
  :pattern (($FVF.lookup_next (as sm@228@01  $FVF<next>) r))
  :qid |qp.fvfResTrgDef171|)))
(assert (and
  (forall ((r $Ref)) (!
    (=>
      (Set_in (inv@226@01 r) (Set_union g0@126@01 g1@127@01))
      ($FVF.loc_next ($FVF.lookup_next (as sm@203@01  $FVF<next>) r) r))
    :pattern ((inv@226@01 r))
    :qid |quant-u-14343|))
  ($$%precondition ($SortWrappers.$FVF<next>To$Snap (as sm@228@01  $FVF<next>)) (Set_union g0@126@01 g1@127@01))))
(push) ; 6
; [then-branch: 53 | !(edge[Bool]($$(sm@228@01, g0@126@01 ∪ g1@127@01), v1@219@01, v2@220@01)) | live]
; [else-branch: 53 | edge[Bool]($$(sm@228@01, g0@126@01 ∪ g1@127@01), v1@219@01, v2@220@01) | live]
(push) ; 7
; [then-branch: 53 | !(edge[Bool]($$(sm@228@01, g0@126@01 ∪ g1@127@01), v1@219@01, v2@220@01))]
(assert (not
  (edge<Bool> ($$ ($SortWrappers.$FVF<next>To$Snap (as sm@228@01  $FVF<next>)) (Set_union g0@126@01 g1@127@01)) v1@219@01 v2@220@01)))
(pop) ; 7
(push) ; 7
; [else-branch: 53 | edge[Bool]($$(sm@228@01, g0@126@01 ∪ g1@127@01), v1@219@01, v2@220@01)]
(assert (edge<Bool> ($$ ($SortWrappers.$FVF<next>To$Snap (as sm@228@01  $FVF<next>)) (Set_union g0@126@01 g1@127@01)) v1@219@01 v2@220@01))
; [eval] !(v1 == x && v2 == old(x.next))
; [eval] v1 == x && v2 == old(x.next)
; [eval] v1 == x
(push) ; 8
; [then-branch: 54 | v1@219@01 != x0@128@01 | live]
; [else-branch: 54 | v1@219@01 == x0@128@01 | live]
(push) ; 9
; [then-branch: 54 | v1@219@01 != x0@128@01]
(assert (not (= v1@219@01 x0@128@01)))
(pop) ; 9
(push) ; 9
; [else-branch: 54 | v1@219@01 == x0@128@01]
(assert (= v1@219@01 x0@128@01))
; [eval] v2 == old(x.next)
; [eval] old(x.next)
(push) ; 10
(assert (not (and
  (img@136@01 x0@128@01)
  (Set_in (inv@135@01 x0@128@01) (Set_union g0@126@01 g1@127@01)))))
(check-sat)
; unsat
(pop) ; 10
; 0.00s
; (get-info :all-statistics)
(pop) ; 9
(pop) ; 8
; Joined path conditions
; Joined path conditions
(assert (or (= v1@219@01 x0@128@01) (not (= v1@219@01 x0@128@01))))
(pop) ; 7
(pop) ; 6
; Joined path conditions
; Joined path conditions
(assert (=>
  (edge<Bool> ($$ ($SortWrappers.$FVF<next>To$Snap (as sm@228@01  $FVF<next>)) (Set_union g0@126@01 g1@127@01)) v1@219@01 v2@220@01)
  (and
    (edge<Bool> ($$ ($SortWrappers.$FVF<next>To$Snap (as sm@228@01  $FVF<next>)) (Set_union g0@126@01 g1@127@01)) v1@219@01 v2@220@01)
    (or (= v1@219@01 x0@128@01) (not (= v1@219@01 x0@128@01))))))
(assert (or
  (edge<Bool> ($$ ($SortWrappers.$FVF<next>To$Snap (as sm@228@01  $FVF<next>)) (Set_union g0@126@01 g1@127@01)) v1@219@01 v2@220@01)
  (not
    (edge<Bool> ($$ ($SortWrappers.$FVF<next>To$Snap (as sm@228@01  $FVF<next>)) (Set_union g0@126@01 g1@127@01)) v1@219@01 v2@220@01))))
(pop) ; 5
; Nested auxiliary terms: globals (aux)
(assert (forall ((n@221@01 $Ref)) (!
  (=>
    (Set_in n@221@01 (Set_union g0@126@01 g1@127@01))
    (and (= (inv@222@01 n@221@01) n@221@01) (img@223@01 n@221@01)))
  :pattern ((Set_in n@221@01 (Set_union g0@126@01 g1@127@01)))
  :pattern ((inv@222@01 n@221@01))
  :pattern ((img@223@01 n@221@01))
  :qid |next-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@223@01 r) (Set_in (inv@222@01 r) (Set_union g0@126@01 g1@127@01)))
    (= (inv@222@01 r) r))
  :pattern ((inv@222@01 r))
  :qid |next-fctOfInv|)))
(assert (forall ((r $Ref)) (!
  (and
    (=>
      (Set_in r ($FVF.domain_next (as sm@224@01  $FVF<next>)))
      (and
        (Set_in (inv@222@01 r) (Set_union g0@126@01 g1@127@01))
        (img@223@01 r)))
    (=>
      (and
        (Set_in (inv@222@01 r) (Set_union g0@126@01 g1@127@01))
        (img@223@01 r))
      (Set_in r ($FVF.domain_next (as sm@224@01  $FVF<next>)))))
  :pattern ((Set_in r ($FVF.domain_next (as sm@224@01  $FVF<next>))))
  :qid |qp.fvfDomDef169|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and
        (Set_in (inv@222@01 r) (Set_union g0@126@01 g1@127@01))
        (img@223@01 r))
      (ite
        (and
          (img@136@01 r)
          (Set_in (inv@135@01 r) (Set_union g0@126@01 g1@127@01)))
        (< $Perm.No (- (- $Perm.Write (pTaken@204@01 r)) (pTaken@209@01 r)))
        false))
    (=
      ($FVF.lookup_next (as sm@224@01  $FVF<next>) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@130@01))))) r)))
  :pattern (($FVF.lookup_next (as sm@224@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@130@01))))) r))
  :qid |qp.fvfValDef165|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and
        (Set_in (inv@222@01 r) (Set_union g0@126@01 g1@127@01))
        (img@223@01 r))
      (= r x0@128@01))
    (=
      ($FVF.lookup_next (as sm@224@01  $FVF<next>) r)
      ($FVF.lookup_next (as sm@212@01  $FVF<next>) r)))
  :pattern (($FVF.lookup_next (as sm@224@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next (as sm@212@01  $FVF<next>) r))
  :qid |qp.fvfValDef166|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and
        (Set_in (inv@222@01 r) (Set_union g0@126@01 g1@127@01))
        (img@223@01 r))
      (and
        (img@216@01 r)
        (and
          (Set_in (inv@215@01 r) (Set_union g0@126@01 g1@127@01))
          (not (= (inv@215@01 r) x0@128@01)))))
    (=
      ($FVF.lookup_next (as sm@224@01  $FVF<next>) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@211@01))))) r)))
  :pattern (($FVF.lookup_next (as sm@224@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@211@01))))) r))
  :qid |qp.fvfValDef167|)))
(assert (forall ((r $Ref)) (!
  (and
    ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@130@01))))) r) r)
    ($FVF.loc_next ($FVF.lookup_next (as sm@212@01  $FVF<next>) r) r)
    ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@211@01))))) r) r))
  :pattern (($FVF.lookup_next (as sm@224@01  $FVF<next>) r))
  :qid |qp.fvfResTrgDef168|)))
(assert (forall ((n@225@01 $Ref)) (!
  (=>
    (Set_in n@225@01 (Set_union g0@126@01 g1@127@01))
    (and (= (inv@226@01 n@225@01) n@225@01) (img@227@01 n@225@01)))
  :pattern ((Set_in n@225@01 (Set_union g0@126@01 g1@127@01)))
  :pattern ((inv@226@01 n@225@01))
  :pattern ((img@227@01 n@225@01))
  :qid |next-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@227@01 r) (Set_in (inv@226@01 r) (Set_union g0@126@01 g1@127@01)))
    (= (inv@226@01 r) r))
  :pattern ((inv@226@01 r))
  :qid |next-fctOfInv|)))
(assert (forall ((r $Ref)) (!
  (and
    (=>
      (Set_in r ($FVF.domain_next (as sm@228@01  $FVF<next>)))
      (and
        (Set_in (inv@226@01 r) (Set_union g0@126@01 g1@127@01))
        (img@227@01 r)))
    (=>
      (and
        (Set_in (inv@226@01 r) (Set_union g0@126@01 g1@127@01))
        (img@227@01 r))
      (Set_in r ($FVF.domain_next (as sm@228@01  $FVF<next>)))))
  :pattern ((Set_in r ($FVF.domain_next (as sm@228@01  $FVF<next>))))
  :qid |qp.fvfDomDef172|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and
        (Set_in (inv@226@01 r) (Set_union g0@126@01 g1@127@01))
        (img@227@01 r))
      (and
        (img@136@01 r)
        (Set_in (inv@135@01 r) (Set_union g0@126@01 g1@127@01))))
    (=
      ($FVF.lookup_next (as sm@228@01  $FVF<next>) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@130@01))))) r)))
  :pattern (($FVF.lookup_next (as sm@228@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@130@01))))) r))
  :qid |qp.fvfValDef170|)))
(assert (forall ((r $Ref)) (!
  ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@130@01))))) r) r)
  :pattern (($FVF.lookup_next (as sm@228@01  $FVF<next>) r))
  :qid |qp.fvfResTrgDef171|)))
(assert (forall ((r $Ref)) (!
  (=>
    (Set_in (inv@222@01 r) (Set_union g0@126@01 g1@127@01))
    ($FVF.loc_next ($FVF.lookup_next (as sm@217@01  $FVF<next>) r) r))
  :pattern ((inv@222@01 r))
  :qid |quant-u-14340|)))
(assert ($$%precondition ($SortWrappers.$FVF<next>To$Snap (as sm@224@01  $FVF<next>)) (Set_union g0@126@01 g1@127@01)))
(assert (forall ((r $Ref)) (!
  (=>
    (Set_in (inv@226@01 r) (Set_union g0@126@01 g1@127@01))
    ($FVF.loc_next ($FVF.lookup_next (as sm@203@01  $FVF<next>) r) r))
  :pattern ((inv@226@01 r))
  :qid |quant-u-14343|)))
(assert ($$%precondition ($SortWrappers.$FVF<next>To$Snap (as sm@228@01  $FVF<next>)) (Set_union g0@126@01 g1@127@01)))
; Nested auxiliary terms: non-globals (aux)
(assert (forall ((v1@219@01 $Ref) (v2@220@01 $Ref)) (!
  (and
    (=>
      (edge<Bool> ($$ ($SortWrappers.$FVF<next>To$Snap (as sm@228@01  $FVF<next>)) (Set_union g0@126@01 g1@127@01)) v1@219@01 v2@220@01)
      (and
        (edge<Bool> ($$ ($SortWrappers.$FVF<next>To$Snap (as sm@228@01  $FVF<next>)) (Set_union g0@126@01 g1@127@01)) v1@219@01 v2@220@01)
        (or (= v1@219@01 x0@128@01) (not (= v1@219@01 x0@128@01)))))
    (or
      (edge<Bool> ($$ ($SortWrappers.$FVF<next>To$Snap (as sm@228@01  $FVF<next>)) (Set_union g0@126@01 g1@127@01)) v1@219@01 v2@220@01)
      (not
        (edge<Bool> ($$ ($SortWrappers.$FVF<next>To$Snap (as sm@228@01  $FVF<next>)) (Set_union g0@126@01 g1@127@01)) v1@219@01 v2@220@01))))
  :pattern ((edge<Bool> ($$ ($SortWrappers.$FVF<next>To$Snap (as sm@224@01  $FVF<next>)) (Set_union g0@126@01 g1@127@01)) v1@219@01 v2@220@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/graphs/static/tests/lists/delete_edge1.vpr@313@37@315@89-aux|)))
(pop) ; 4
(pop) ; 3
; Joined path conditions
(assert (forall ((n@221@01 $Ref)) (!
  (=>
    (Set_in n@221@01 (Set_union g0@126@01 g1@127@01))
    (and (= (inv@222@01 n@221@01) n@221@01) (img@223@01 n@221@01)))
  :pattern ((Set_in n@221@01 (Set_union g0@126@01 g1@127@01)))
  :pattern ((inv@222@01 n@221@01))
  :pattern ((img@223@01 n@221@01))
  :qid |next-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@223@01 r) (Set_in (inv@222@01 r) (Set_union g0@126@01 g1@127@01)))
    (= (inv@222@01 r) r))
  :pattern ((inv@222@01 r))
  :qid |next-fctOfInv|)))
(assert (forall ((r $Ref)) (!
  (and
    (=>
      (Set_in r ($FVF.domain_next (as sm@224@01  $FVF<next>)))
      (and
        (Set_in (inv@222@01 r) (Set_union g0@126@01 g1@127@01))
        (img@223@01 r)))
    (=>
      (and
        (Set_in (inv@222@01 r) (Set_union g0@126@01 g1@127@01))
        (img@223@01 r))
      (Set_in r ($FVF.domain_next (as sm@224@01  $FVF<next>)))))
  :pattern ((Set_in r ($FVF.domain_next (as sm@224@01  $FVF<next>))))
  :qid |qp.fvfDomDef169|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and
        (Set_in (inv@222@01 r) (Set_union g0@126@01 g1@127@01))
        (img@223@01 r))
      (ite
        (and
          (img@136@01 r)
          (Set_in (inv@135@01 r) (Set_union g0@126@01 g1@127@01)))
        (< $Perm.No (- (- $Perm.Write (pTaken@204@01 r)) (pTaken@209@01 r)))
        false))
    (=
      ($FVF.lookup_next (as sm@224@01  $FVF<next>) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@130@01))))) r)))
  :pattern (($FVF.lookup_next (as sm@224@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@130@01))))) r))
  :qid |qp.fvfValDef165|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and
        (Set_in (inv@222@01 r) (Set_union g0@126@01 g1@127@01))
        (img@223@01 r))
      (= r x0@128@01))
    (=
      ($FVF.lookup_next (as sm@224@01  $FVF<next>) r)
      ($FVF.lookup_next (as sm@212@01  $FVF<next>) r)))
  :pattern (($FVF.lookup_next (as sm@224@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next (as sm@212@01  $FVF<next>) r))
  :qid |qp.fvfValDef166|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and
        (Set_in (inv@222@01 r) (Set_union g0@126@01 g1@127@01))
        (img@223@01 r))
      (and
        (img@216@01 r)
        (and
          (Set_in (inv@215@01 r) (Set_union g0@126@01 g1@127@01))
          (not (= (inv@215@01 r) x0@128@01)))))
    (=
      ($FVF.lookup_next (as sm@224@01  $FVF<next>) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@211@01))))) r)))
  :pattern (($FVF.lookup_next (as sm@224@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@211@01))))) r))
  :qid |qp.fvfValDef167|)))
(assert (forall ((r $Ref)) (!
  (and
    ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@130@01))))) r) r)
    ($FVF.loc_next ($FVF.lookup_next (as sm@212@01  $FVF<next>) r) r)
    ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@211@01))))) r) r))
  :pattern (($FVF.lookup_next (as sm@224@01  $FVF<next>) r))
  :qid |qp.fvfResTrgDef168|)))
(assert (forall ((n@225@01 $Ref)) (!
  (=>
    (Set_in n@225@01 (Set_union g0@126@01 g1@127@01))
    (and (= (inv@226@01 n@225@01) n@225@01) (img@227@01 n@225@01)))
  :pattern ((Set_in n@225@01 (Set_union g0@126@01 g1@127@01)))
  :pattern ((inv@226@01 n@225@01))
  :pattern ((img@227@01 n@225@01))
  :qid |next-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@227@01 r) (Set_in (inv@226@01 r) (Set_union g0@126@01 g1@127@01)))
    (= (inv@226@01 r) r))
  :pattern ((inv@226@01 r))
  :qid |next-fctOfInv|)))
(assert (forall ((r $Ref)) (!
  (and
    (=>
      (Set_in r ($FVF.domain_next (as sm@228@01  $FVF<next>)))
      (and
        (Set_in (inv@226@01 r) (Set_union g0@126@01 g1@127@01))
        (img@227@01 r)))
    (=>
      (and
        (Set_in (inv@226@01 r) (Set_union g0@126@01 g1@127@01))
        (img@227@01 r))
      (Set_in r ($FVF.domain_next (as sm@228@01  $FVF<next>)))))
  :pattern ((Set_in r ($FVF.domain_next (as sm@228@01  $FVF<next>))))
  :qid |qp.fvfDomDef172|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and
        (Set_in (inv@226@01 r) (Set_union g0@126@01 g1@127@01))
        (img@227@01 r))
      (and
        (img@136@01 r)
        (Set_in (inv@135@01 r) (Set_union g0@126@01 g1@127@01))))
    (=
      ($FVF.lookup_next (as sm@228@01  $FVF<next>) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@130@01))))) r)))
  :pattern (($FVF.lookup_next (as sm@228@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@130@01))))) r))
  :qid |qp.fvfValDef170|)))
(assert (forall ((r $Ref)) (!
  ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@130@01))))) r) r)
  :pattern (($FVF.lookup_next (as sm@228@01  $FVF<next>) r))
  :qid |qp.fvfResTrgDef171|)))
(assert (=>
  (not (= ($FVF.lookup_next (as sm@203@01  $FVF<next>) x0@128@01) $Ref.null))
  (and
    (forall ((r $Ref)) (!
      (=>
        (Set_in (inv@222@01 r) (Set_union g0@126@01 g1@127@01))
        ($FVF.loc_next ($FVF.lookup_next (as sm@217@01  $FVF<next>) r) r))
      :pattern ((inv@222@01 r))
      :qid |quant-u-14340|))
    ($$%precondition ($SortWrappers.$FVF<next>To$Snap (as sm@224@01  $FVF<next>)) (Set_union g0@126@01 g1@127@01))
    (forall ((r $Ref)) (!
      (=>
        (Set_in (inv@226@01 r) (Set_union g0@126@01 g1@127@01))
        ($FVF.loc_next ($FVF.lookup_next (as sm@203@01  $FVF<next>) r) r))
      :pattern ((inv@226@01 r))
      :qid |quant-u-14343|))
    ($$%precondition ($SortWrappers.$FVF<next>To$Snap (as sm@228@01  $FVF<next>)) (Set_union g0@126@01 g1@127@01))
    (forall ((v1@219@01 $Ref) (v2@220@01 $Ref)) (!
      (and
        (=>
          (edge<Bool> ($$ ($SortWrappers.$FVF<next>To$Snap (as sm@228@01  $FVF<next>)) (Set_union g0@126@01 g1@127@01)) v1@219@01 v2@220@01)
          (and
            (edge<Bool> ($$ ($SortWrappers.$FVF<next>To$Snap (as sm@228@01  $FVF<next>)) (Set_union g0@126@01 g1@127@01)) v1@219@01 v2@220@01)
            (or (= v1@219@01 x0@128@01) (not (= v1@219@01 x0@128@01)))))
        (or
          (edge<Bool> ($$ ($SortWrappers.$FVF<next>To$Snap (as sm@228@01  $FVF<next>)) (Set_union g0@126@01 g1@127@01)) v1@219@01 v2@220@01)
          (not
            (edge<Bool> ($$ ($SortWrappers.$FVF<next>To$Snap (as sm@228@01  $FVF<next>)) (Set_union g0@126@01 g1@127@01)) v1@219@01 v2@220@01))))
      :pattern ((edge<Bool> ($$ ($SortWrappers.$FVF<next>To$Snap (as sm@224@01  $FVF<next>)) (Set_union g0@126@01 g1@127@01)) v1@219@01 v2@220@01))
      :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/graphs/static/tests/lists/delete_edge1.vpr@313@37@315@89-aux|)))))
(assert (=>
  (not (= ($FVF.lookup_next (as sm@203@01  $FVF<next>) x0@128@01) $Ref.null))
  (forall ((v1@219@01 $Ref) (v2@220@01 $Ref)) (!
    (=
      (edge<Bool> ($$ ($SortWrappers.$FVF<next>To$Snap (as sm@224@01  $FVF<next>)) (Set_union g0@126@01 g1@127@01)) v1@219@01 v2@220@01)
      (and
        (edge<Bool> ($$ ($SortWrappers.$FVF<next>To$Snap (as sm@228@01  $FVF<next>)) (Set_union g0@126@01 g1@127@01)) v1@219@01 v2@220@01)
        (not
          (and
            (= v1@219@01 x0@128@01)
            (=
              v2@220@01
              ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@130@01))))) x0@128@01))))))
    :pattern ((edge<Bool> ($$ ($SortWrappers.$FVF<next>To$Snap (as sm@224@01  $FVF<next>)) (Set_union g0@126@01 g1@127@01)) v1@219@01 v2@220@01))
    :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/graphs/static/tests/lists/delete_edge1.vpr@313@37@315@89|))))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@211@01))))))))
  $Snap.unit))
; [eval] old(x.next) != null ==> (forall v1: Ref, v2: Ref :: { exists_path($$(g), v1, v2) } v1 != v2 ==> exists_path($$(g), v1, v2) == (exists_path(old($$(g)), v1, v2) && !(exists_path(old($$(g)), v1, x) && exists_path(old($$(g)), old(x.next), v2))))
; [eval] old(x.next) != null
; [eval] old(x.next)
(push) ; 3
(assert (not (and
  (img@136@01 x0@128@01)
  (Set_in (inv@135@01 x0@128@01) (Set_union g0@126@01 g1@127@01)))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(push) ; 3
(push) ; 4
(set-option :timeout 10)
(assert (not (=
  ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@130@01))))) x0@128@01)
  $Ref.null)))
(check-sat)
; unknown
(pop) ; 4
; 0.01s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not (not
  (=
    ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@130@01))))) x0@128@01)
    $Ref.null))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; [then-branch: 55 | Lookup(next, First:(Second:(Second:(Second:($t@130@01)))), x0@128@01) != Null | live]
; [else-branch: 55 | Lookup(next, First:(Second:(Second:(Second:($t@130@01)))), x0@128@01) == Null | dead]
(set-option :timeout 0)
(push) ; 4
; [then-branch: 55 | Lookup(next, First:(Second:(Second:(Second:($t@130@01)))), x0@128@01) != Null]
(assert (not
  (=
    ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@130@01))))) x0@128@01)
    $Ref.null)))
; [eval] (forall v1: Ref, v2: Ref :: { exists_path($$(g), v1, v2) } v1 != v2 ==> exists_path($$(g), v1, v2) == (exists_path(old($$(g)), v1, v2) && !(exists_path(old($$(g)), v1, x) && exists_path(old($$(g)), old(x.next), v2))))
(declare-const v1@229@01 $Ref)
(declare-const v2@230@01 $Ref)
(push) ; 5
; [eval] v1 != v2 ==> exists_path($$(g), v1, v2) == (exists_path(old($$(g)), v1, v2) && !(exists_path(old($$(g)), v1, x) && exists_path(old($$(g)), old(x.next), v2)))
; [eval] v1 != v2
(push) ; 6
; [then-branch: 56 | v1@229@01 != v2@230@01 | live]
; [else-branch: 56 | v1@229@01 == v2@230@01 | live]
(push) ; 7
; [then-branch: 56 | v1@229@01 != v2@230@01]
(assert (not (= v1@229@01 v2@230@01)))
; [eval] exists_path($$(g), v1, v2) == (exists_path(old($$(g)), v1, v2) && !(exists_path(old($$(g)), v1, x) && exists_path(old($$(g)), old(x.next), v2)))
; [eval] exists_path($$(g), v1, v2)
; [eval] $$(g)
(push) ; 8
(declare-const n@231@01 $Ref)
(push) ; 9
; [eval] (n in refs)
(assert (Set_in n@231@01 (Set_union g0@126@01 g1@127@01)))
(pop) ; 9
(declare-fun inv@232@01 ($Ref) $Ref)
(declare-fun img@233@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
(declare-const sm@234@01 $FVF<next>)
; Definitional axioms for snapshot map domain
; Definitional axioms for snapshot map values
(assert (forall ((r $Ref)) (!
  (=>
    (ite
      (and
        (img@136@01 r)
        (Set_in (inv@135@01 r) (Set_union g0@126@01 g1@127@01)))
      (< $Perm.No (- (- $Perm.Write (pTaken@204@01 r)) (pTaken@209@01 r)))
      false)
    (=
      ($FVF.lookup_next (as sm@234@01  $FVF<next>) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@130@01))))) r)))
  :pattern (($FVF.lookup_next (as sm@234@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@130@01))))) r))
  :qid |qp.fvfValDef173|)))
(assert (forall ((r $Ref)) (!
  (=>
    (= r x0@128@01)
    (=
      ($FVF.lookup_next (as sm@234@01  $FVF<next>) r)
      ($FVF.lookup_next (as sm@212@01  $FVF<next>) r)))
  :pattern (($FVF.lookup_next (as sm@234@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next (as sm@212@01  $FVF<next>) r))
  :qid |qp.fvfValDef174|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@216@01 r)
      (and
        (Set_in (inv@215@01 r) (Set_union g0@126@01 g1@127@01))
        (not (= (inv@215@01 r) x0@128@01))))
    (=
      ($FVF.lookup_next (as sm@234@01  $FVF<next>) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@211@01))))) r)))
  :pattern (($FVF.lookup_next (as sm@234@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@211@01))))) r))
  :qid |qp.fvfValDef175|)))
(assert (forall ((r $Ref)) (!
  (and
    ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@130@01))))) r) r)
    ($FVF.loc_next ($FVF.lookup_next (as sm@212@01  $FVF<next>) r) r)
    ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@211@01))))) r) r))
  :pattern (($FVF.lookup_next (as sm@234@01  $FVF<next>) r))
  :qid |qp.fvfResTrgDef176|)))
; Check receiver injectivity
(push) ; 9
(assert (not (forall ((n1@231@01 $Ref) (n2@231@01 $Ref)) (!
  (=>
    (and
      (and
        (Set_in n1@231@01 (Set_union g0@126@01 g1@127@01))
        ($FVF.loc_next ($FVF.lookup_next (as sm@234@01  $FVF<next>) n1@231@01) n1@231@01))
      (and
        (Set_in n2@231@01 (Set_union g0@126@01 g1@127@01))
        ($FVF.loc_next ($FVF.lookup_next (as sm@234@01  $FVF<next>) n2@231@01) n2@231@01))
      (= n1@231@01 n2@231@01))
    (= n1@231@01 n2@231@01))
  
  :qid |next-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 9
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((n@231@01 $Ref)) (!
  (=>
    (Set_in n@231@01 (Set_union g0@126@01 g1@127@01))
    (and (= (inv@232@01 n@231@01) n@231@01) (img@233@01 n@231@01)))
  :pattern ((Set_in n@231@01 (Set_union g0@126@01 g1@127@01)))
  :pattern ((inv@232@01 n@231@01))
  :pattern ((img@233@01 n@231@01))
  :qid |next-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@233@01 r) (Set_in (inv@232@01 r) (Set_union g0@126@01 g1@127@01)))
    (= (inv@232@01 r) r))
  :pattern ((inv@232@01 r))
  :qid |next-fctOfInv|)))
(assert (forall ((r $Ref)) (!
  (=>
    (Set_in (inv@232@01 r) (Set_union g0@126@01 g1@127@01))
    ($FVF.loc_next ($FVF.lookup_next (as sm@234@01  $FVF<next>) r) r))
  :pattern ((inv@232@01 r))
  :qid |quant-u-14346|)))
(push) ; 9
(assert (not (forall ((r $Ref)) (!
  (=>
    (and
      (Set_in (inv@232@01 r) (Set_union g0@126@01 g1@127@01))
      (img@233@01 r)
      (= r (inv@232@01 r)))
    (>
      (+
        (+
          (ite
            (and
              (img@136@01 r)
              (Set_in (inv@135@01 r) (Set_union g0@126@01 g1@127@01)))
            (- (- $Perm.Write (pTaken@204@01 r)) (pTaken@209@01 r))
            $Perm.No)
          (ite
            (and
              (img@216@01 r)
              (and
                (Set_in (inv@215@01 r) (Set_union g0@126@01 g1@127@01))
                (not (= (inv@215@01 r) x0@128@01))))
            (/ (to_real 1) (to_real 2))
            $Perm.No))
        (ite (= r x0@128@01) $Perm.Write $Perm.No))
      $Perm.No))
  
  :qid |quant-u-14347|))))
(check-sat)
; unsat
(pop) ; 9
; 0.00s
; (get-info :all-statistics)
(declare-const sm@235@01 $FVF<next>)
; Definitional axioms for snapshot map domain
(assert (forall ((r $Ref)) (!
  (and
    (=>
      (Set_in r ($FVF.domain_next (as sm@235@01  $FVF<next>)))
      (and
        (Set_in (inv@232@01 r) (Set_union g0@126@01 g1@127@01))
        (img@233@01 r)))
    (=>
      (and
        (Set_in (inv@232@01 r) (Set_union g0@126@01 g1@127@01))
        (img@233@01 r))
      (Set_in r ($FVF.domain_next (as sm@235@01  $FVF<next>)))))
  :pattern ((Set_in r ($FVF.domain_next (as sm@235@01  $FVF<next>))))
  :qid |qp.fvfDomDef181|)))
; Definitional axioms for snapshot map values
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and
        (Set_in (inv@232@01 r) (Set_union g0@126@01 g1@127@01))
        (img@233@01 r))
      (ite
        (and
          (img@136@01 r)
          (Set_in (inv@135@01 r) (Set_union g0@126@01 g1@127@01)))
        (< $Perm.No (- (- $Perm.Write (pTaken@204@01 r)) (pTaken@209@01 r)))
        false))
    (=
      ($FVF.lookup_next (as sm@235@01  $FVF<next>) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@130@01))))) r)))
  :pattern (($FVF.lookup_next (as sm@235@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@130@01))))) r))
  :qid |qp.fvfValDef177|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and
        (Set_in (inv@232@01 r) (Set_union g0@126@01 g1@127@01))
        (img@233@01 r))
      (= r x0@128@01))
    (=
      ($FVF.lookup_next (as sm@235@01  $FVF<next>) r)
      ($FVF.lookup_next (as sm@212@01  $FVF<next>) r)))
  :pattern (($FVF.lookup_next (as sm@235@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next (as sm@212@01  $FVF<next>) r))
  :qid |qp.fvfValDef178|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and
        (Set_in (inv@232@01 r) (Set_union g0@126@01 g1@127@01))
        (img@233@01 r))
      (and
        (img@216@01 r)
        (and
          (Set_in (inv@215@01 r) (Set_union g0@126@01 g1@127@01))
          (not (= (inv@215@01 r) x0@128@01)))))
    (=
      ($FVF.lookup_next (as sm@235@01  $FVF<next>) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@211@01))))) r)))
  :pattern (($FVF.lookup_next (as sm@235@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@211@01))))) r))
  :qid |qp.fvfValDef179|)))
(assert (forall ((r $Ref)) (!
  (and
    ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@130@01))))) r) r)
    ($FVF.loc_next ($FVF.lookup_next (as sm@212@01  $FVF<next>) r) r)
    ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@211@01))))) r) r))
  :pattern (($FVF.lookup_next (as sm@235@01  $FVF<next>) r))
  :qid |qp.fvfResTrgDef180|)))
(assert ($$%precondition ($SortWrappers.$FVF<next>To$Snap (as sm@235@01  $FVF<next>)) (Set_union g0@126@01 g1@127@01)))
(pop) ; 8
; Joined path conditions
(assert (forall ((r $Ref)) (!
  (=>
    (ite
      (and
        (img@136@01 r)
        (Set_in (inv@135@01 r) (Set_union g0@126@01 g1@127@01)))
      (< $Perm.No (- (- $Perm.Write (pTaken@204@01 r)) (pTaken@209@01 r)))
      false)
    (=
      ($FVF.lookup_next (as sm@234@01  $FVF<next>) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@130@01))))) r)))
  :pattern (($FVF.lookup_next (as sm@234@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@130@01))))) r))
  :qid |qp.fvfValDef173|)))
(assert (forall ((r $Ref)) (!
  (=>
    (= r x0@128@01)
    (=
      ($FVF.lookup_next (as sm@234@01  $FVF<next>) r)
      ($FVF.lookup_next (as sm@212@01  $FVF<next>) r)))
  :pattern (($FVF.lookup_next (as sm@234@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next (as sm@212@01  $FVF<next>) r))
  :qid |qp.fvfValDef174|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@216@01 r)
      (and
        (Set_in (inv@215@01 r) (Set_union g0@126@01 g1@127@01))
        (not (= (inv@215@01 r) x0@128@01))))
    (=
      ($FVF.lookup_next (as sm@234@01  $FVF<next>) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@211@01))))) r)))
  :pattern (($FVF.lookup_next (as sm@234@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@211@01))))) r))
  :qid |qp.fvfValDef175|)))
(assert (forall ((r $Ref)) (!
  (and
    ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@130@01))))) r) r)
    ($FVF.loc_next ($FVF.lookup_next (as sm@212@01  $FVF<next>) r) r)
    ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@211@01))))) r) r))
  :pattern (($FVF.lookup_next (as sm@234@01  $FVF<next>) r))
  :qid |qp.fvfResTrgDef176|)))
(assert (forall ((n@231@01 $Ref)) (!
  (=>
    (Set_in n@231@01 (Set_union g0@126@01 g1@127@01))
    (and (= (inv@232@01 n@231@01) n@231@01) (img@233@01 n@231@01)))
  :pattern ((Set_in n@231@01 (Set_union g0@126@01 g1@127@01)))
  :pattern ((inv@232@01 n@231@01))
  :pattern ((img@233@01 n@231@01))
  :qid |next-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@233@01 r) (Set_in (inv@232@01 r) (Set_union g0@126@01 g1@127@01)))
    (= (inv@232@01 r) r))
  :pattern ((inv@232@01 r))
  :qid |next-fctOfInv|)))
(assert (forall ((r $Ref)) (!
  (and
    (=>
      (Set_in r ($FVF.domain_next (as sm@235@01  $FVF<next>)))
      (and
        (Set_in (inv@232@01 r) (Set_union g0@126@01 g1@127@01))
        (img@233@01 r)))
    (=>
      (and
        (Set_in (inv@232@01 r) (Set_union g0@126@01 g1@127@01))
        (img@233@01 r))
      (Set_in r ($FVF.domain_next (as sm@235@01  $FVF<next>)))))
  :pattern ((Set_in r ($FVF.domain_next (as sm@235@01  $FVF<next>))))
  :qid |qp.fvfDomDef181|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and
        (Set_in (inv@232@01 r) (Set_union g0@126@01 g1@127@01))
        (img@233@01 r))
      (ite
        (and
          (img@136@01 r)
          (Set_in (inv@135@01 r) (Set_union g0@126@01 g1@127@01)))
        (< $Perm.No (- (- $Perm.Write (pTaken@204@01 r)) (pTaken@209@01 r)))
        false))
    (=
      ($FVF.lookup_next (as sm@235@01  $FVF<next>) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@130@01))))) r)))
  :pattern (($FVF.lookup_next (as sm@235@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@130@01))))) r))
  :qid |qp.fvfValDef177|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and
        (Set_in (inv@232@01 r) (Set_union g0@126@01 g1@127@01))
        (img@233@01 r))
      (= r x0@128@01))
    (=
      ($FVF.lookup_next (as sm@235@01  $FVF<next>) r)
      ($FVF.lookup_next (as sm@212@01  $FVF<next>) r)))
  :pattern (($FVF.lookup_next (as sm@235@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next (as sm@212@01  $FVF<next>) r))
  :qid |qp.fvfValDef178|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and
        (Set_in (inv@232@01 r) (Set_union g0@126@01 g1@127@01))
        (img@233@01 r))
      (and
        (img@216@01 r)
        (and
          (Set_in (inv@215@01 r) (Set_union g0@126@01 g1@127@01))
          (not (= (inv@215@01 r) x0@128@01)))))
    (=
      ($FVF.lookup_next (as sm@235@01  $FVF<next>) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@211@01))))) r)))
  :pattern (($FVF.lookup_next (as sm@235@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@211@01))))) r))
  :qid |qp.fvfValDef179|)))
(assert (forall ((r $Ref)) (!
  (and
    ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@130@01))))) r) r)
    ($FVF.loc_next ($FVF.lookup_next (as sm@212@01  $FVF<next>) r) r)
    ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@211@01))))) r) r))
  :pattern (($FVF.lookup_next (as sm@235@01  $FVF<next>) r))
  :qid |qp.fvfResTrgDef180|)))
(assert (and
  (forall ((r $Ref)) (!
    (=>
      (Set_in (inv@232@01 r) (Set_union g0@126@01 g1@127@01))
      ($FVF.loc_next ($FVF.lookup_next (as sm@234@01  $FVF<next>) r) r))
    :pattern ((inv@232@01 r))
    :qid |quant-u-14346|))
  ($$%precondition ($SortWrappers.$FVF<next>To$Snap (as sm@235@01  $FVF<next>)) (Set_union g0@126@01 g1@127@01))))
; [eval] exists_path(old($$(g)), v1, v2) && !(exists_path(old($$(g)), v1, x) && exists_path(old($$(g)), old(x.next), v2))
; [eval] exists_path(old($$(g)), v1, v2)
; [eval] old($$(g))
; [eval] $$(g)
(push) ; 8
(declare-const n@236@01 $Ref)
(push) ; 9
; [eval] (n in refs)
(assert (Set_in n@236@01 (Set_union g0@126@01 g1@127@01)))
(pop) ; 9
(declare-fun inv@237@01 ($Ref) $Ref)
(declare-fun img@238@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
(declare-const sm@239@01 $FVF<next>)
; Definitional axioms for snapshot map domain
; Definitional axioms for snapshot map values
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@136@01 r) (Set_in (inv@135@01 r) (Set_union g0@126@01 g1@127@01)))
    (=
      ($FVF.lookup_next (as sm@239@01  $FVF<next>) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@130@01))))) r)))
  :pattern (($FVF.lookup_next (as sm@239@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@130@01))))) r))
  :qid |qp.fvfValDef182|)))
(assert (forall ((r $Ref)) (!
  ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@130@01))))) r) r)
  :pattern (($FVF.lookup_next (as sm@239@01  $FVF<next>) r))
  :qid |qp.fvfResTrgDef183|)))
; Check receiver injectivity
(push) ; 9
(assert (not (forall ((n1@236@01 $Ref) (n2@236@01 $Ref)) (!
  (=>
    (and
      (and
        (Set_in n1@236@01 (Set_union g0@126@01 g1@127@01))
        ($FVF.loc_next ($FVF.lookup_next (as sm@239@01  $FVF<next>) n1@236@01) n1@236@01))
      (and
        (Set_in n2@236@01 (Set_union g0@126@01 g1@127@01))
        ($FVF.loc_next ($FVF.lookup_next (as sm@239@01  $FVF<next>) n2@236@01) n2@236@01))
      (= n1@236@01 n2@236@01))
    (= n1@236@01 n2@236@01))
  
  :qid |next-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 9
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((n@236@01 $Ref)) (!
  (=>
    (Set_in n@236@01 (Set_union g0@126@01 g1@127@01))
    (and (= (inv@237@01 n@236@01) n@236@01) (img@238@01 n@236@01)))
  :pattern ((Set_in n@236@01 (Set_union g0@126@01 g1@127@01)))
  :pattern ((inv@237@01 n@236@01))
  :pattern ((img@238@01 n@236@01))
  :qid |next-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@238@01 r) (Set_in (inv@237@01 r) (Set_union g0@126@01 g1@127@01)))
    (= (inv@237@01 r) r))
  :pattern ((inv@237@01 r))
  :qid |next-fctOfInv|)))
(assert (forall ((r $Ref)) (!
  (=>
    (Set_in (inv@237@01 r) (Set_union g0@126@01 g1@127@01))
    ($FVF.loc_next ($FVF.lookup_next (as sm@239@01  $FVF<next>) r) r))
  :pattern ((inv@237@01 r))
  :qid |quant-u-14349|)))
(push) ; 9
(assert (not (forall ((r $Ref)) (!
  (=>
    (and
      (Set_in (inv@237@01 r) (Set_union g0@126@01 g1@127@01))
      (img@238@01 r)
      (= r (inv@237@01 r)))
    (>
      (ite
        (and
          (img@136@01 r)
          (Set_in (inv@135@01 r) (Set_union g0@126@01 g1@127@01)))
        $Perm.Write
        $Perm.No)
      $Perm.No))
  
  :qid |quant-u-14350|))))
(check-sat)
; unsat
(pop) ; 9
; 0.00s
; (get-info :all-statistics)
(declare-const sm@240@01 $FVF<next>)
; Definitional axioms for snapshot map domain
(assert (forall ((r $Ref)) (!
  (and
    (=>
      (Set_in r ($FVF.domain_next (as sm@240@01  $FVF<next>)))
      (and
        (Set_in (inv@237@01 r) (Set_union g0@126@01 g1@127@01))
        (img@238@01 r)))
    (=>
      (and
        (Set_in (inv@237@01 r) (Set_union g0@126@01 g1@127@01))
        (img@238@01 r))
      (Set_in r ($FVF.domain_next (as sm@240@01  $FVF<next>)))))
  :pattern ((Set_in r ($FVF.domain_next (as sm@240@01  $FVF<next>))))
  :qid |qp.fvfDomDef186|)))
; Definitional axioms for snapshot map values
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and
        (Set_in (inv@237@01 r) (Set_union g0@126@01 g1@127@01))
        (img@238@01 r))
      (and
        (img@136@01 r)
        (Set_in (inv@135@01 r) (Set_union g0@126@01 g1@127@01))))
    (=
      ($FVF.lookup_next (as sm@240@01  $FVF<next>) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@130@01))))) r)))
  :pattern (($FVF.lookup_next (as sm@240@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@130@01))))) r))
  :qid |qp.fvfValDef184|)))
(assert (forall ((r $Ref)) (!
  ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@130@01))))) r) r)
  :pattern (($FVF.lookup_next (as sm@240@01  $FVF<next>) r))
  :qid |qp.fvfResTrgDef185|)))
(assert ($$%precondition ($SortWrappers.$FVF<next>To$Snap (as sm@240@01  $FVF<next>)) (Set_union g0@126@01 g1@127@01)))
(pop) ; 8
; Joined path conditions
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@136@01 r) (Set_in (inv@135@01 r) (Set_union g0@126@01 g1@127@01)))
    (=
      ($FVF.lookup_next (as sm@239@01  $FVF<next>) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@130@01))))) r)))
  :pattern (($FVF.lookup_next (as sm@239@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@130@01))))) r))
  :qid |qp.fvfValDef182|)))
(assert (forall ((r $Ref)) (!
  ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@130@01))))) r) r)
  :pattern (($FVF.lookup_next (as sm@239@01  $FVF<next>) r))
  :qid |qp.fvfResTrgDef183|)))
(assert (forall ((n@236@01 $Ref)) (!
  (=>
    (Set_in n@236@01 (Set_union g0@126@01 g1@127@01))
    (and (= (inv@237@01 n@236@01) n@236@01) (img@238@01 n@236@01)))
  :pattern ((Set_in n@236@01 (Set_union g0@126@01 g1@127@01)))
  :pattern ((inv@237@01 n@236@01))
  :pattern ((img@238@01 n@236@01))
  :qid |next-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@238@01 r) (Set_in (inv@237@01 r) (Set_union g0@126@01 g1@127@01)))
    (= (inv@237@01 r) r))
  :pattern ((inv@237@01 r))
  :qid |next-fctOfInv|)))
(assert (forall ((r $Ref)) (!
  (and
    (=>
      (Set_in r ($FVF.domain_next (as sm@240@01  $FVF<next>)))
      (and
        (Set_in (inv@237@01 r) (Set_union g0@126@01 g1@127@01))
        (img@238@01 r)))
    (=>
      (and
        (Set_in (inv@237@01 r) (Set_union g0@126@01 g1@127@01))
        (img@238@01 r))
      (Set_in r ($FVF.domain_next (as sm@240@01  $FVF<next>)))))
  :pattern ((Set_in r ($FVF.domain_next (as sm@240@01  $FVF<next>))))
  :qid |qp.fvfDomDef186|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and
        (Set_in (inv@237@01 r) (Set_union g0@126@01 g1@127@01))
        (img@238@01 r))
      (and
        (img@136@01 r)
        (Set_in (inv@135@01 r) (Set_union g0@126@01 g1@127@01))))
    (=
      ($FVF.lookup_next (as sm@240@01  $FVF<next>) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@130@01))))) r)))
  :pattern (($FVF.lookup_next (as sm@240@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@130@01))))) r))
  :qid |qp.fvfValDef184|)))
(assert (forall ((r $Ref)) (!
  ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@130@01))))) r) r)
  :pattern (($FVF.lookup_next (as sm@240@01  $FVF<next>) r))
  :qid |qp.fvfResTrgDef185|)))
(assert (and
  (forall ((r $Ref)) (!
    (=>
      (Set_in (inv@237@01 r) (Set_union g0@126@01 g1@127@01))
      ($FVF.loc_next ($FVF.lookup_next (as sm@239@01  $FVF<next>) r) r))
    :pattern ((inv@237@01 r))
    :qid |quant-u-14349|))
  ($$%precondition ($SortWrappers.$FVF<next>To$Snap (as sm@240@01  $FVF<next>)) (Set_union g0@126@01 g1@127@01))))
(push) ; 8
; [then-branch: 57 | !(exists_path[Bool]($$(sm@240@01, g0@126@01 ∪ g1@127@01), v1@229@01, v2@230@01)) | live]
; [else-branch: 57 | exists_path[Bool]($$(sm@240@01, g0@126@01 ∪ g1@127@01), v1@229@01, v2@230@01) | live]
(push) ; 9
; [then-branch: 57 | !(exists_path[Bool]($$(sm@240@01, g0@126@01 ∪ g1@127@01), v1@229@01, v2@230@01))]
(assert (not
  (exists_path<Bool> ($$ ($SortWrappers.$FVF<next>To$Snap (as sm@240@01  $FVF<next>)) (Set_union g0@126@01 g1@127@01)) v1@229@01 v2@230@01)))
(pop) ; 9
(push) ; 9
; [else-branch: 57 | exists_path[Bool]($$(sm@240@01, g0@126@01 ∪ g1@127@01), v1@229@01, v2@230@01)]
(assert (exists_path<Bool> ($$ ($SortWrappers.$FVF<next>To$Snap (as sm@240@01  $FVF<next>)) (Set_union g0@126@01 g1@127@01)) v1@229@01 v2@230@01))
; [eval] !(exists_path(old($$(g)), v1, x) && exists_path(old($$(g)), old(x.next), v2))
; [eval] exists_path(old($$(g)), v1, x) && exists_path(old($$(g)), old(x.next), v2)
; [eval] exists_path(old($$(g)), v1, x)
; [eval] old($$(g))
; [eval] $$(g)
(push) ; 10
(declare-const n@241@01 $Ref)
(push) ; 11
; [eval] (n in refs)
(assert (Set_in n@241@01 (Set_union g0@126@01 g1@127@01)))
(pop) ; 11
(declare-fun inv@242@01 ($Ref) $Ref)
(declare-fun img@243@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
(declare-const sm@244@01 $FVF<next>)
; Definitional axioms for snapshot map domain
; Definitional axioms for snapshot map values
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@136@01 r) (Set_in (inv@135@01 r) (Set_union g0@126@01 g1@127@01)))
    (=
      ($FVF.lookup_next (as sm@244@01  $FVF<next>) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@130@01))))) r)))
  :pattern (($FVF.lookup_next (as sm@244@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@130@01))))) r))
  :qid |qp.fvfValDef187|)))
(assert (forall ((r $Ref)) (!
  ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@130@01))))) r) r)
  :pattern (($FVF.lookup_next (as sm@244@01  $FVF<next>) r))
  :qid |qp.fvfResTrgDef188|)))
; Check receiver injectivity
(push) ; 11
(assert (not (forall ((n1@241@01 $Ref) (n2@241@01 $Ref)) (!
  (=>
    (and
      (and
        (Set_in n1@241@01 (Set_union g0@126@01 g1@127@01))
        ($FVF.loc_next ($FVF.lookup_next (as sm@244@01  $FVF<next>) n1@241@01) n1@241@01))
      (and
        (Set_in n2@241@01 (Set_union g0@126@01 g1@127@01))
        ($FVF.loc_next ($FVF.lookup_next (as sm@244@01  $FVF<next>) n2@241@01) n2@241@01))
      (= n1@241@01 n2@241@01))
    (= n1@241@01 n2@241@01))
  
  :qid |next-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 11
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((n@241@01 $Ref)) (!
  (=>
    (Set_in n@241@01 (Set_union g0@126@01 g1@127@01))
    (and (= (inv@242@01 n@241@01) n@241@01) (img@243@01 n@241@01)))
  :pattern ((Set_in n@241@01 (Set_union g0@126@01 g1@127@01)))
  :pattern ((inv@242@01 n@241@01))
  :pattern ((img@243@01 n@241@01))
  :qid |next-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@243@01 r) (Set_in (inv@242@01 r) (Set_union g0@126@01 g1@127@01)))
    (= (inv@242@01 r) r))
  :pattern ((inv@242@01 r))
  :qid |next-fctOfInv|)))
(assert (forall ((r $Ref)) (!
  (=>
    (Set_in (inv@242@01 r) (Set_union g0@126@01 g1@127@01))
    ($FVF.loc_next ($FVF.lookup_next (as sm@244@01  $FVF<next>) r) r))
  :pattern ((inv@242@01 r))
  :qid |quant-u-14352|)))
(push) ; 11
(assert (not (forall ((r $Ref)) (!
  (=>
    (and
      (Set_in (inv@242@01 r) (Set_union g0@126@01 g1@127@01))
      (img@243@01 r)
      (= r (inv@242@01 r)))
    (>
      (ite
        (and
          (img@136@01 r)
          (Set_in (inv@135@01 r) (Set_union g0@126@01 g1@127@01)))
        $Perm.Write
        $Perm.No)
      $Perm.No))
  
  :qid |quant-u-14353|))))
(check-sat)
; unsat
(pop) ; 11
; 0.00s
; (get-info :all-statistics)
(declare-const sm@245@01 $FVF<next>)
; Definitional axioms for snapshot map domain
(assert (forall ((r $Ref)) (!
  (and
    (=>
      (Set_in r ($FVF.domain_next (as sm@245@01  $FVF<next>)))
      (and
        (Set_in (inv@242@01 r) (Set_union g0@126@01 g1@127@01))
        (img@243@01 r)))
    (=>
      (and
        (Set_in (inv@242@01 r) (Set_union g0@126@01 g1@127@01))
        (img@243@01 r))
      (Set_in r ($FVF.domain_next (as sm@245@01  $FVF<next>)))))
  :pattern ((Set_in r ($FVF.domain_next (as sm@245@01  $FVF<next>))))
  :qid |qp.fvfDomDef191|)))
; Definitional axioms for snapshot map values
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and
        (Set_in (inv@242@01 r) (Set_union g0@126@01 g1@127@01))
        (img@243@01 r))
      (and
        (img@136@01 r)
        (Set_in (inv@135@01 r) (Set_union g0@126@01 g1@127@01))))
    (=
      ($FVF.lookup_next (as sm@245@01  $FVF<next>) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@130@01))))) r)))
  :pattern (($FVF.lookup_next (as sm@245@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@130@01))))) r))
  :qid |qp.fvfValDef189|)))
(assert (forall ((r $Ref)) (!
  ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@130@01))))) r) r)
  :pattern (($FVF.lookup_next (as sm@245@01  $FVF<next>) r))
  :qid |qp.fvfResTrgDef190|)))
(assert ($$%precondition ($SortWrappers.$FVF<next>To$Snap (as sm@245@01  $FVF<next>)) (Set_union g0@126@01 g1@127@01)))
(pop) ; 10
; Joined path conditions
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@136@01 r) (Set_in (inv@135@01 r) (Set_union g0@126@01 g1@127@01)))
    (=
      ($FVF.lookup_next (as sm@244@01  $FVF<next>) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@130@01))))) r)))
  :pattern (($FVF.lookup_next (as sm@244@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@130@01))))) r))
  :qid |qp.fvfValDef187|)))
(assert (forall ((r $Ref)) (!
  ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@130@01))))) r) r)
  :pattern (($FVF.lookup_next (as sm@244@01  $FVF<next>) r))
  :qid |qp.fvfResTrgDef188|)))
(assert (forall ((n@241@01 $Ref)) (!
  (=>
    (Set_in n@241@01 (Set_union g0@126@01 g1@127@01))
    (and (= (inv@242@01 n@241@01) n@241@01) (img@243@01 n@241@01)))
  :pattern ((Set_in n@241@01 (Set_union g0@126@01 g1@127@01)))
  :pattern ((inv@242@01 n@241@01))
  :pattern ((img@243@01 n@241@01))
  :qid |next-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@243@01 r) (Set_in (inv@242@01 r) (Set_union g0@126@01 g1@127@01)))
    (= (inv@242@01 r) r))
  :pattern ((inv@242@01 r))
  :qid |next-fctOfInv|)))
(assert (forall ((r $Ref)) (!
  (and
    (=>
      (Set_in r ($FVF.domain_next (as sm@245@01  $FVF<next>)))
      (and
        (Set_in (inv@242@01 r) (Set_union g0@126@01 g1@127@01))
        (img@243@01 r)))
    (=>
      (and
        (Set_in (inv@242@01 r) (Set_union g0@126@01 g1@127@01))
        (img@243@01 r))
      (Set_in r ($FVF.domain_next (as sm@245@01  $FVF<next>)))))
  :pattern ((Set_in r ($FVF.domain_next (as sm@245@01  $FVF<next>))))
  :qid |qp.fvfDomDef191|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and
        (Set_in (inv@242@01 r) (Set_union g0@126@01 g1@127@01))
        (img@243@01 r))
      (and
        (img@136@01 r)
        (Set_in (inv@135@01 r) (Set_union g0@126@01 g1@127@01))))
    (=
      ($FVF.lookup_next (as sm@245@01  $FVF<next>) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@130@01))))) r)))
  :pattern (($FVF.lookup_next (as sm@245@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@130@01))))) r))
  :qid |qp.fvfValDef189|)))
(assert (forall ((r $Ref)) (!
  ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@130@01))))) r) r)
  :pattern (($FVF.lookup_next (as sm@245@01  $FVF<next>) r))
  :qid |qp.fvfResTrgDef190|)))
(assert (and
  (forall ((r $Ref)) (!
    (=>
      (Set_in (inv@242@01 r) (Set_union g0@126@01 g1@127@01))
      ($FVF.loc_next ($FVF.lookup_next (as sm@244@01  $FVF<next>) r) r))
    :pattern ((inv@242@01 r))
    :qid |quant-u-14352|))
  ($$%precondition ($SortWrappers.$FVF<next>To$Snap (as sm@245@01  $FVF<next>)) (Set_union g0@126@01 g1@127@01))))
(push) ; 10
; [then-branch: 58 | !(exists_path[Bool]($$(sm@245@01, g0@126@01 ∪ g1@127@01), v1@229@01, x0@128@01)) | live]
; [else-branch: 58 | exists_path[Bool]($$(sm@245@01, g0@126@01 ∪ g1@127@01), v1@229@01, x0@128@01) | live]
(push) ; 11
; [then-branch: 58 | !(exists_path[Bool]($$(sm@245@01, g0@126@01 ∪ g1@127@01), v1@229@01, x0@128@01))]
(assert (not
  (exists_path<Bool> ($$ ($SortWrappers.$FVF<next>To$Snap (as sm@245@01  $FVF<next>)) (Set_union g0@126@01 g1@127@01)) v1@229@01 x0@128@01)))
(pop) ; 11
(push) ; 11
; [else-branch: 58 | exists_path[Bool]($$(sm@245@01, g0@126@01 ∪ g1@127@01), v1@229@01, x0@128@01)]
(assert (exists_path<Bool> ($$ ($SortWrappers.$FVF<next>To$Snap (as sm@245@01  $FVF<next>)) (Set_union g0@126@01 g1@127@01)) v1@229@01 x0@128@01))
; [eval] exists_path(old($$(g)), old(x.next), v2)
; [eval] old($$(g))
; [eval] $$(g)
(push) ; 12
(declare-const n@246@01 $Ref)
(push) ; 13
; [eval] (n in refs)
(assert (Set_in n@246@01 (Set_union g0@126@01 g1@127@01)))
(pop) ; 13
(declare-fun inv@247@01 ($Ref) $Ref)
(declare-fun img@248@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
(declare-const sm@249@01 $FVF<next>)
; Definitional axioms for snapshot map domain
; Definitional axioms for snapshot map values
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@136@01 r) (Set_in (inv@135@01 r) (Set_union g0@126@01 g1@127@01)))
    (=
      ($FVF.lookup_next (as sm@249@01  $FVF<next>) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@130@01))))) r)))
  :pattern (($FVF.lookup_next (as sm@249@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@130@01))))) r))
  :qid |qp.fvfValDef192|)))
(assert (forall ((r $Ref)) (!
  ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@130@01))))) r) r)
  :pattern (($FVF.lookup_next (as sm@249@01  $FVF<next>) r))
  :qid |qp.fvfResTrgDef193|)))
; Check receiver injectivity
(push) ; 13
(assert (not (forall ((n1@246@01 $Ref) (n2@246@01 $Ref)) (!
  (=>
    (and
      (and
        (Set_in n1@246@01 (Set_union g0@126@01 g1@127@01))
        ($FVF.loc_next ($FVF.lookup_next (as sm@249@01  $FVF<next>) n1@246@01) n1@246@01))
      (and
        (Set_in n2@246@01 (Set_union g0@126@01 g1@127@01))
        ($FVF.loc_next ($FVF.lookup_next (as sm@249@01  $FVF<next>) n2@246@01) n2@246@01))
      (= n1@246@01 n2@246@01))
    (= n1@246@01 n2@246@01))
  
  :qid |next-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 13
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((n@246@01 $Ref)) (!
  (=>
    (Set_in n@246@01 (Set_union g0@126@01 g1@127@01))
    (and (= (inv@247@01 n@246@01) n@246@01) (img@248@01 n@246@01)))
  :pattern ((Set_in n@246@01 (Set_union g0@126@01 g1@127@01)))
  :pattern ((inv@247@01 n@246@01))
  :pattern ((img@248@01 n@246@01))
  :qid |next-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@248@01 r) (Set_in (inv@247@01 r) (Set_union g0@126@01 g1@127@01)))
    (= (inv@247@01 r) r))
  :pattern ((inv@247@01 r))
  :qid |next-fctOfInv|)))
(assert (forall ((r $Ref)) (!
  (=>
    (Set_in (inv@247@01 r) (Set_union g0@126@01 g1@127@01))
    ($FVF.loc_next ($FVF.lookup_next (as sm@249@01  $FVF<next>) r) r))
  :pattern ((inv@247@01 r))
  :qid |quant-u-14355|)))
(push) ; 13
(assert (not (forall ((r $Ref)) (!
  (=>
    (and
      (Set_in (inv@247@01 r) (Set_union g0@126@01 g1@127@01))
      (img@248@01 r)
      (= r (inv@247@01 r)))
    (>
      (ite
        (and
          (img@136@01 r)
          (Set_in (inv@135@01 r) (Set_union g0@126@01 g1@127@01)))
        $Perm.Write
        $Perm.No)
      $Perm.No))
  
  :qid |quant-u-14356|))))
(check-sat)
; unsat
(pop) ; 13
; 0.00s
; (get-info :all-statistics)
(declare-const sm@250@01 $FVF<next>)
; Definitional axioms for snapshot map domain
(assert (forall ((r $Ref)) (!
  (and
    (=>
      (Set_in r ($FVF.domain_next (as sm@250@01  $FVF<next>)))
      (and
        (Set_in (inv@247@01 r) (Set_union g0@126@01 g1@127@01))
        (img@248@01 r)))
    (=>
      (and
        (Set_in (inv@247@01 r) (Set_union g0@126@01 g1@127@01))
        (img@248@01 r))
      (Set_in r ($FVF.domain_next (as sm@250@01  $FVF<next>)))))
  :pattern ((Set_in r ($FVF.domain_next (as sm@250@01  $FVF<next>))))
  :qid |qp.fvfDomDef196|)))
; Definitional axioms for snapshot map values
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and
        (Set_in (inv@247@01 r) (Set_union g0@126@01 g1@127@01))
        (img@248@01 r))
      (and
        (img@136@01 r)
        (Set_in (inv@135@01 r) (Set_union g0@126@01 g1@127@01))))
    (=
      ($FVF.lookup_next (as sm@250@01  $FVF<next>) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@130@01))))) r)))
  :pattern (($FVF.lookup_next (as sm@250@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@130@01))))) r))
  :qid |qp.fvfValDef194|)))
(assert (forall ((r $Ref)) (!
  ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@130@01))))) r) r)
  :pattern (($FVF.lookup_next (as sm@250@01  $FVF<next>) r))
  :qid |qp.fvfResTrgDef195|)))
(assert ($$%precondition ($SortWrappers.$FVF<next>To$Snap (as sm@250@01  $FVF<next>)) (Set_union g0@126@01 g1@127@01)))
(pop) ; 12
; Joined path conditions
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@136@01 r) (Set_in (inv@135@01 r) (Set_union g0@126@01 g1@127@01)))
    (=
      ($FVF.lookup_next (as sm@249@01  $FVF<next>) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@130@01))))) r)))
  :pattern (($FVF.lookup_next (as sm@249@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@130@01))))) r))
  :qid |qp.fvfValDef192|)))
(assert (forall ((r $Ref)) (!
  ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@130@01))))) r) r)
  :pattern (($FVF.lookup_next (as sm@249@01  $FVF<next>) r))
  :qid |qp.fvfResTrgDef193|)))
(assert (forall ((n@246@01 $Ref)) (!
  (=>
    (Set_in n@246@01 (Set_union g0@126@01 g1@127@01))
    (and (= (inv@247@01 n@246@01) n@246@01) (img@248@01 n@246@01)))
  :pattern ((Set_in n@246@01 (Set_union g0@126@01 g1@127@01)))
  :pattern ((inv@247@01 n@246@01))
  :pattern ((img@248@01 n@246@01))
  :qid |next-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@248@01 r) (Set_in (inv@247@01 r) (Set_union g0@126@01 g1@127@01)))
    (= (inv@247@01 r) r))
  :pattern ((inv@247@01 r))
  :qid |next-fctOfInv|)))
(assert (forall ((r $Ref)) (!
  (and
    (=>
      (Set_in r ($FVF.domain_next (as sm@250@01  $FVF<next>)))
      (and
        (Set_in (inv@247@01 r) (Set_union g0@126@01 g1@127@01))
        (img@248@01 r)))
    (=>
      (and
        (Set_in (inv@247@01 r) (Set_union g0@126@01 g1@127@01))
        (img@248@01 r))
      (Set_in r ($FVF.domain_next (as sm@250@01  $FVF<next>)))))
  :pattern ((Set_in r ($FVF.domain_next (as sm@250@01  $FVF<next>))))
  :qid |qp.fvfDomDef196|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and
        (Set_in (inv@247@01 r) (Set_union g0@126@01 g1@127@01))
        (img@248@01 r))
      (and
        (img@136@01 r)
        (Set_in (inv@135@01 r) (Set_union g0@126@01 g1@127@01))))
    (=
      ($FVF.lookup_next (as sm@250@01  $FVF<next>) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@130@01))))) r)))
  :pattern (($FVF.lookup_next (as sm@250@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@130@01))))) r))
  :qid |qp.fvfValDef194|)))
(assert (forall ((r $Ref)) (!
  ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@130@01))))) r) r)
  :pattern (($FVF.lookup_next (as sm@250@01  $FVF<next>) r))
  :qid |qp.fvfResTrgDef195|)))
(assert (and
  (forall ((r $Ref)) (!
    (=>
      (Set_in (inv@247@01 r) (Set_union g0@126@01 g1@127@01))
      ($FVF.loc_next ($FVF.lookup_next (as sm@249@01  $FVF<next>) r) r))
    :pattern ((inv@247@01 r))
    :qid |quant-u-14355|))
  ($$%precondition ($SortWrappers.$FVF<next>To$Snap (as sm@250@01  $FVF<next>)) (Set_union g0@126@01 g1@127@01))))
; [eval] old(x.next)
(push) ; 12
(assert (not (and
  (img@136@01 x0@128@01)
  (Set_in (inv@135@01 x0@128@01) (Set_union g0@126@01 g1@127@01)))))
(check-sat)
; unsat
(pop) ; 12
; 0.00s
; (get-info :all-statistics)
(pop) ; 11
(pop) ; 10
; Joined path conditions
; Joined path conditions
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@136@01 r) (Set_in (inv@135@01 r) (Set_union g0@126@01 g1@127@01)))
    (=
      ($FVF.lookup_next (as sm@249@01  $FVF<next>) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@130@01))))) r)))
  :pattern (($FVF.lookup_next (as sm@249@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@130@01))))) r))
  :qid |qp.fvfValDef192|)))
(assert (forall ((r $Ref)) (!
  ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@130@01))))) r) r)
  :pattern (($FVF.lookup_next (as sm@249@01  $FVF<next>) r))
  :qid |qp.fvfResTrgDef193|)))
(assert (forall ((n@246@01 $Ref)) (!
  (=>
    (Set_in n@246@01 (Set_union g0@126@01 g1@127@01))
    (and (= (inv@247@01 n@246@01) n@246@01) (img@248@01 n@246@01)))
  :pattern ((Set_in n@246@01 (Set_union g0@126@01 g1@127@01)))
  :pattern ((inv@247@01 n@246@01))
  :pattern ((img@248@01 n@246@01))
  :qid |next-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@248@01 r) (Set_in (inv@247@01 r) (Set_union g0@126@01 g1@127@01)))
    (= (inv@247@01 r) r))
  :pattern ((inv@247@01 r))
  :qid |next-fctOfInv|)))
(assert (forall ((r $Ref)) (!
  (and
    (=>
      (Set_in r ($FVF.domain_next (as sm@250@01  $FVF<next>)))
      (and
        (Set_in (inv@247@01 r) (Set_union g0@126@01 g1@127@01))
        (img@248@01 r)))
    (=>
      (and
        (Set_in (inv@247@01 r) (Set_union g0@126@01 g1@127@01))
        (img@248@01 r))
      (Set_in r ($FVF.domain_next (as sm@250@01  $FVF<next>)))))
  :pattern ((Set_in r ($FVF.domain_next (as sm@250@01  $FVF<next>))))
  :qid |qp.fvfDomDef196|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and
        (Set_in (inv@247@01 r) (Set_union g0@126@01 g1@127@01))
        (img@248@01 r))
      (and
        (img@136@01 r)
        (Set_in (inv@135@01 r) (Set_union g0@126@01 g1@127@01))))
    (=
      ($FVF.lookup_next (as sm@250@01  $FVF<next>) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@130@01))))) r)))
  :pattern (($FVF.lookup_next (as sm@250@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@130@01))))) r))
  :qid |qp.fvfValDef194|)))
(assert (forall ((r $Ref)) (!
  ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@130@01))))) r) r)
  :pattern (($FVF.lookup_next (as sm@250@01  $FVF<next>) r))
  :qid |qp.fvfResTrgDef195|)))
(assert (=>
  (exists_path<Bool> ($$ ($SortWrappers.$FVF<next>To$Snap (as sm@245@01  $FVF<next>)) (Set_union g0@126@01 g1@127@01)) v1@229@01 x0@128@01)
  (and
    (exists_path<Bool> ($$ ($SortWrappers.$FVF<next>To$Snap (as sm@245@01  $FVF<next>)) (Set_union g0@126@01 g1@127@01)) v1@229@01 x0@128@01)
    (forall ((r $Ref)) (!
      (=>
        (Set_in (inv@247@01 r) (Set_union g0@126@01 g1@127@01))
        ($FVF.loc_next ($FVF.lookup_next (as sm@249@01  $FVF<next>) r) r))
      :pattern ((inv@247@01 r))
      :qid |quant-u-14355|))
    ($$%precondition ($SortWrappers.$FVF<next>To$Snap (as sm@250@01  $FVF<next>)) (Set_union g0@126@01 g1@127@01)))))
(assert (or
  (exists_path<Bool> ($$ ($SortWrappers.$FVF<next>To$Snap (as sm@245@01  $FVF<next>)) (Set_union g0@126@01 g1@127@01)) v1@229@01 x0@128@01)
  (not
    (exists_path<Bool> ($$ ($SortWrappers.$FVF<next>To$Snap (as sm@245@01  $FVF<next>)) (Set_union g0@126@01 g1@127@01)) v1@229@01 x0@128@01))))
(pop) ; 9
(pop) ; 8
; Joined path conditions
; Joined path conditions
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@136@01 r) (Set_in (inv@135@01 r) (Set_union g0@126@01 g1@127@01)))
    (=
      ($FVF.lookup_next (as sm@244@01  $FVF<next>) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@130@01))))) r)))
  :pattern (($FVF.lookup_next (as sm@244@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@130@01))))) r))
  :qid |qp.fvfValDef187|)))
(assert (forall ((r $Ref)) (!
  ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@130@01))))) r) r)
  :pattern (($FVF.lookup_next (as sm@244@01  $FVF<next>) r))
  :qid |qp.fvfResTrgDef188|)))
(assert (forall ((n@241@01 $Ref)) (!
  (=>
    (Set_in n@241@01 (Set_union g0@126@01 g1@127@01))
    (and (= (inv@242@01 n@241@01) n@241@01) (img@243@01 n@241@01)))
  :pattern ((Set_in n@241@01 (Set_union g0@126@01 g1@127@01)))
  :pattern ((inv@242@01 n@241@01))
  :pattern ((img@243@01 n@241@01))
  :qid |next-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@243@01 r) (Set_in (inv@242@01 r) (Set_union g0@126@01 g1@127@01)))
    (= (inv@242@01 r) r))
  :pattern ((inv@242@01 r))
  :qid |next-fctOfInv|)))
(assert (forall ((r $Ref)) (!
  (and
    (=>
      (Set_in r ($FVF.domain_next (as sm@245@01  $FVF<next>)))
      (and
        (Set_in (inv@242@01 r) (Set_union g0@126@01 g1@127@01))
        (img@243@01 r)))
    (=>
      (and
        (Set_in (inv@242@01 r) (Set_union g0@126@01 g1@127@01))
        (img@243@01 r))
      (Set_in r ($FVF.domain_next (as sm@245@01  $FVF<next>)))))
  :pattern ((Set_in r ($FVF.domain_next (as sm@245@01  $FVF<next>))))
  :qid |qp.fvfDomDef191|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and
        (Set_in (inv@242@01 r) (Set_union g0@126@01 g1@127@01))
        (img@243@01 r))
      (and
        (img@136@01 r)
        (Set_in (inv@135@01 r) (Set_union g0@126@01 g1@127@01))))
    (=
      ($FVF.lookup_next (as sm@245@01  $FVF<next>) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@130@01))))) r)))
  :pattern (($FVF.lookup_next (as sm@245@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@130@01))))) r))
  :qid |qp.fvfValDef189|)))
(assert (forall ((r $Ref)) (!
  ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@130@01))))) r) r)
  :pattern (($FVF.lookup_next (as sm@245@01  $FVF<next>) r))
  :qid |qp.fvfResTrgDef190|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@136@01 r) (Set_in (inv@135@01 r) (Set_union g0@126@01 g1@127@01)))
    (=
      ($FVF.lookup_next (as sm@249@01  $FVF<next>) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@130@01))))) r)))
  :pattern (($FVF.lookup_next (as sm@249@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@130@01))))) r))
  :qid |qp.fvfValDef192|)))
(assert (forall ((r $Ref)) (!
  ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@130@01))))) r) r)
  :pattern (($FVF.lookup_next (as sm@249@01  $FVF<next>) r))
  :qid |qp.fvfResTrgDef193|)))
(assert (forall ((n@246@01 $Ref)) (!
  (=>
    (Set_in n@246@01 (Set_union g0@126@01 g1@127@01))
    (and (= (inv@247@01 n@246@01) n@246@01) (img@248@01 n@246@01)))
  :pattern ((Set_in n@246@01 (Set_union g0@126@01 g1@127@01)))
  :pattern ((inv@247@01 n@246@01))
  :pattern ((img@248@01 n@246@01))
  :qid |next-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@248@01 r) (Set_in (inv@247@01 r) (Set_union g0@126@01 g1@127@01)))
    (= (inv@247@01 r) r))
  :pattern ((inv@247@01 r))
  :qid |next-fctOfInv|)))
(assert (forall ((r $Ref)) (!
  (and
    (=>
      (Set_in r ($FVF.domain_next (as sm@250@01  $FVF<next>)))
      (and
        (Set_in (inv@247@01 r) (Set_union g0@126@01 g1@127@01))
        (img@248@01 r)))
    (=>
      (and
        (Set_in (inv@247@01 r) (Set_union g0@126@01 g1@127@01))
        (img@248@01 r))
      (Set_in r ($FVF.domain_next (as sm@250@01  $FVF<next>)))))
  :pattern ((Set_in r ($FVF.domain_next (as sm@250@01  $FVF<next>))))
  :qid |qp.fvfDomDef196|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and
        (Set_in (inv@247@01 r) (Set_union g0@126@01 g1@127@01))
        (img@248@01 r))
      (and
        (img@136@01 r)
        (Set_in (inv@135@01 r) (Set_union g0@126@01 g1@127@01))))
    (=
      ($FVF.lookup_next (as sm@250@01  $FVF<next>) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@130@01))))) r)))
  :pattern (($FVF.lookup_next (as sm@250@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@130@01))))) r))
  :qid |qp.fvfValDef194|)))
(assert (forall ((r $Ref)) (!
  ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@130@01))))) r) r)
  :pattern (($FVF.lookup_next (as sm@250@01  $FVF<next>) r))
  :qid |qp.fvfResTrgDef195|)))
(assert (=>
  (exists_path<Bool> ($$ ($SortWrappers.$FVF<next>To$Snap (as sm@240@01  $FVF<next>)) (Set_union g0@126@01 g1@127@01)) v1@229@01 v2@230@01)
  (and
    (exists_path<Bool> ($$ ($SortWrappers.$FVF<next>To$Snap (as sm@240@01  $FVF<next>)) (Set_union g0@126@01 g1@127@01)) v1@229@01 v2@230@01)
    (forall ((r $Ref)) (!
      (=>
        (Set_in (inv@242@01 r) (Set_union g0@126@01 g1@127@01))
        ($FVF.loc_next ($FVF.lookup_next (as sm@244@01  $FVF<next>) r) r))
      :pattern ((inv@242@01 r))
      :qid |quant-u-14352|))
    ($$%precondition ($SortWrappers.$FVF<next>To$Snap (as sm@245@01  $FVF<next>)) (Set_union g0@126@01 g1@127@01))
    (=>
      (exists_path<Bool> ($$ ($SortWrappers.$FVF<next>To$Snap (as sm@245@01  $FVF<next>)) (Set_union g0@126@01 g1@127@01)) v1@229@01 x0@128@01)
      (and
        (exists_path<Bool> ($$ ($SortWrappers.$FVF<next>To$Snap (as sm@245@01  $FVF<next>)) (Set_union g0@126@01 g1@127@01)) v1@229@01 x0@128@01)
        (forall ((r $Ref)) (!
          (=>
            (Set_in (inv@247@01 r) (Set_union g0@126@01 g1@127@01))
            ($FVF.loc_next ($FVF.lookup_next (as sm@249@01  $FVF<next>) r) r))
          :pattern ((inv@247@01 r))
          :qid |quant-u-14355|))
        ($$%precondition ($SortWrappers.$FVF<next>To$Snap (as sm@250@01  $FVF<next>)) (Set_union g0@126@01 g1@127@01))))
    (or
      (exists_path<Bool> ($$ ($SortWrappers.$FVF<next>To$Snap (as sm@245@01  $FVF<next>)) (Set_union g0@126@01 g1@127@01)) v1@229@01 x0@128@01)
      (not
        (exists_path<Bool> ($$ ($SortWrappers.$FVF<next>To$Snap (as sm@245@01  $FVF<next>)) (Set_union g0@126@01 g1@127@01)) v1@229@01 x0@128@01))))))
(assert (or
  (exists_path<Bool> ($$ ($SortWrappers.$FVF<next>To$Snap (as sm@240@01  $FVF<next>)) (Set_union g0@126@01 g1@127@01)) v1@229@01 v2@230@01)
  (not
    (exists_path<Bool> ($$ ($SortWrappers.$FVF<next>To$Snap (as sm@240@01  $FVF<next>)) (Set_union g0@126@01 g1@127@01)) v1@229@01 v2@230@01))))
(pop) ; 7
(push) ; 7
; [else-branch: 56 | v1@229@01 == v2@230@01]
(assert (= v1@229@01 v2@230@01))
(pop) ; 7
(pop) ; 6
; Joined path conditions
(assert (forall ((r $Ref)) (!
  (=>
    (ite
      (and
        (img@136@01 r)
        (Set_in (inv@135@01 r) (Set_union g0@126@01 g1@127@01)))
      (< $Perm.No (- (- $Perm.Write (pTaken@204@01 r)) (pTaken@209@01 r)))
      false)
    (=
      ($FVF.lookup_next (as sm@234@01  $FVF<next>) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@130@01))))) r)))
  :pattern (($FVF.lookup_next (as sm@234@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@130@01))))) r))
  :qid |qp.fvfValDef173|)))
(assert (forall ((r $Ref)) (!
  (=>
    (= r x0@128@01)
    (=
      ($FVF.lookup_next (as sm@234@01  $FVF<next>) r)
      ($FVF.lookup_next (as sm@212@01  $FVF<next>) r)))
  :pattern (($FVF.lookup_next (as sm@234@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next (as sm@212@01  $FVF<next>) r))
  :qid |qp.fvfValDef174|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@216@01 r)
      (and
        (Set_in (inv@215@01 r) (Set_union g0@126@01 g1@127@01))
        (not (= (inv@215@01 r) x0@128@01))))
    (=
      ($FVF.lookup_next (as sm@234@01  $FVF<next>) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@211@01))))) r)))
  :pattern (($FVF.lookup_next (as sm@234@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@211@01))))) r))
  :qid |qp.fvfValDef175|)))
(assert (forall ((r $Ref)) (!
  (and
    ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@130@01))))) r) r)
    ($FVF.loc_next ($FVF.lookup_next (as sm@212@01  $FVF<next>) r) r)
    ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@211@01))))) r) r))
  :pattern (($FVF.lookup_next (as sm@234@01  $FVF<next>) r))
  :qid |qp.fvfResTrgDef176|)))
(assert (forall ((n@231@01 $Ref)) (!
  (=>
    (Set_in n@231@01 (Set_union g0@126@01 g1@127@01))
    (and (= (inv@232@01 n@231@01) n@231@01) (img@233@01 n@231@01)))
  :pattern ((Set_in n@231@01 (Set_union g0@126@01 g1@127@01)))
  :pattern ((inv@232@01 n@231@01))
  :pattern ((img@233@01 n@231@01))
  :qid |next-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@233@01 r) (Set_in (inv@232@01 r) (Set_union g0@126@01 g1@127@01)))
    (= (inv@232@01 r) r))
  :pattern ((inv@232@01 r))
  :qid |next-fctOfInv|)))
(assert (forall ((r $Ref)) (!
  (and
    (=>
      (Set_in r ($FVF.domain_next (as sm@235@01  $FVF<next>)))
      (and
        (Set_in (inv@232@01 r) (Set_union g0@126@01 g1@127@01))
        (img@233@01 r)))
    (=>
      (and
        (Set_in (inv@232@01 r) (Set_union g0@126@01 g1@127@01))
        (img@233@01 r))
      (Set_in r ($FVF.domain_next (as sm@235@01  $FVF<next>)))))
  :pattern ((Set_in r ($FVF.domain_next (as sm@235@01  $FVF<next>))))
  :qid |qp.fvfDomDef181|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and
        (Set_in (inv@232@01 r) (Set_union g0@126@01 g1@127@01))
        (img@233@01 r))
      (ite
        (and
          (img@136@01 r)
          (Set_in (inv@135@01 r) (Set_union g0@126@01 g1@127@01)))
        (< $Perm.No (- (- $Perm.Write (pTaken@204@01 r)) (pTaken@209@01 r)))
        false))
    (=
      ($FVF.lookup_next (as sm@235@01  $FVF<next>) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@130@01))))) r)))
  :pattern (($FVF.lookup_next (as sm@235@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@130@01))))) r))
  :qid |qp.fvfValDef177|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and
        (Set_in (inv@232@01 r) (Set_union g0@126@01 g1@127@01))
        (img@233@01 r))
      (= r x0@128@01))
    (=
      ($FVF.lookup_next (as sm@235@01  $FVF<next>) r)
      ($FVF.lookup_next (as sm@212@01  $FVF<next>) r)))
  :pattern (($FVF.lookup_next (as sm@235@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next (as sm@212@01  $FVF<next>) r))
  :qid |qp.fvfValDef178|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and
        (Set_in (inv@232@01 r) (Set_union g0@126@01 g1@127@01))
        (img@233@01 r))
      (and
        (img@216@01 r)
        (and
          (Set_in (inv@215@01 r) (Set_union g0@126@01 g1@127@01))
          (not (= (inv@215@01 r) x0@128@01)))))
    (=
      ($FVF.lookup_next (as sm@235@01  $FVF<next>) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@211@01))))) r)))
  :pattern (($FVF.lookup_next (as sm@235@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@211@01))))) r))
  :qid |qp.fvfValDef179|)))
(assert (forall ((r $Ref)) (!
  (and
    ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@130@01))))) r) r)
    ($FVF.loc_next ($FVF.lookup_next (as sm@212@01  $FVF<next>) r) r)
    ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@211@01))))) r) r))
  :pattern (($FVF.lookup_next (as sm@235@01  $FVF<next>) r))
  :qid |qp.fvfResTrgDef180|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@136@01 r) (Set_in (inv@135@01 r) (Set_union g0@126@01 g1@127@01)))
    (=
      ($FVF.lookup_next (as sm@239@01  $FVF<next>) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@130@01))))) r)))
  :pattern (($FVF.lookup_next (as sm@239@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@130@01))))) r))
  :qid |qp.fvfValDef182|)))
(assert (forall ((r $Ref)) (!
  ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@130@01))))) r) r)
  :pattern (($FVF.lookup_next (as sm@239@01  $FVF<next>) r))
  :qid |qp.fvfResTrgDef183|)))
(assert (forall ((n@236@01 $Ref)) (!
  (=>
    (Set_in n@236@01 (Set_union g0@126@01 g1@127@01))
    (and (= (inv@237@01 n@236@01) n@236@01) (img@238@01 n@236@01)))
  :pattern ((Set_in n@236@01 (Set_union g0@126@01 g1@127@01)))
  :pattern ((inv@237@01 n@236@01))
  :pattern ((img@238@01 n@236@01))
  :qid |next-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@238@01 r) (Set_in (inv@237@01 r) (Set_union g0@126@01 g1@127@01)))
    (= (inv@237@01 r) r))
  :pattern ((inv@237@01 r))
  :qid |next-fctOfInv|)))
(assert (forall ((r $Ref)) (!
  (and
    (=>
      (Set_in r ($FVF.domain_next (as sm@240@01  $FVF<next>)))
      (and
        (Set_in (inv@237@01 r) (Set_union g0@126@01 g1@127@01))
        (img@238@01 r)))
    (=>
      (and
        (Set_in (inv@237@01 r) (Set_union g0@126@01 g1@127@01))
        (img@238@01 r))
      (Set_in r ($FVF.domain_next (as sm@240@01  $FVF<next>)))))
  :pattern ((Set_in r ($FVF.domain_next (as sm@240@01  $FVF<next>))))
  :qid |qp.fvfDomDef186|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and
        (Set_in (inv@237@01 r) (Set_union g0@126@01 g1@127@01))
        (img@238@01 r))
      (and
        (img@136@01 r)
        (Set_in (inv@135@01 r) (Set_union g0@126@01 g1@127@01))))
    (=
      ($FVF.lookup_next (as sm@240@01  $FVF<next>) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@130@01))))) r)))
  :pattern (($FVF.lookup_next (as sm@240@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@130@01))))) r))
  :qid |qp.fvfValDef184|)))
(assert (forall ((r $Ref)) (!
  ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@130@01))))) r) r)
  :pattern (($FVF.lookup_next (as sm@240@01  $FVF<next>) r))
  :qid |qp.fvfResTrgDef185|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@136@01 r) (Set_in (inv@135@01 r) (Set_union g0@126@01 g1@127@01)))
    (=
      ($FVF.lookup_next (as sm@244@01  $FVF<next>) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@130@01))))) r)))
  :pattern (($FVF.lookup_next (as sm@244@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@130@01))))) r))
  :qid |qp.fvfValDef187|)))
(assert (forall ((r $Ref)) (!
  ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@130@01))))) r) r)
  :pattern (($FVF.lookup_next (as sm@244@01  $FVF<next>) r))
  :qid |qp.fvfResTrgDef188|)))
(assert (forall ((n@241@01 $Ref)) (!
  (=>
    (Set_in n@241@01 (Set_union g0@126@01 g1@127@01))
    (and (= (inv@242@01 n@241@01) n@241@01) (img@243@01 n@241@01)))
  :pattern ((Set_in n@241@01 (Set_union g0@126@01 g1@127@01)))
  :pattern ((inv@242@01 n@241@01))
  :pattern ((img@243@01 n@241@01))
  :qid |next-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@243@01 r) (Set_in (inv@242@01 r) (Set_union g0@126@01 g1@127@01)))
    (= (inv@242@01 r) r))
  :pattern ((inv@242@01 r))
  :qid |next-fctOfInv|)))
(assert (forall ((r $Ref)) (!
  (and
    (=>
      (Set_in r ($FVF.domain_next (as sm@245@01  $FVF<next>)))
      (and
        (Set_in (inv@242@01 r) (Set_union g0@126@01 g1@127@01))
        (img@243@01 r)))
    (=>
      (and
        (Set_in (inv@242@01 r) (Set_union g0@126@01 g1@127@01))
        (img@243@01 r))
      (Set_in r ($FVF.domain_next (as sm@245@01  $FVF<next>)))))
  :pattern ((Set_in r ($FVF.domain_next (as sm@245@01  $FVF<next>))))
  :qid |qp.fvfDomDef191|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and
        (Set_in (inv@242@01 r) (Set_union g0@126@01 g1@127@01))
        (img@243@01 r))
      (and
        (img@136@01 r)
        (Set_in (inv@135@01 r) (Set_union g0@126@01 g1@127@01))))
    (=
      ($FVF.lookup_next (as sm@245@01  $FVF<next>) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@130@01))))) r)))
  :pattern (($FVF.lookup_next (as sm@245@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@130@01))))) r))
  :qid |qp.fvfValDef189|)))
(assert (forall ((r $Ref)) (!
  ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@130@01))))) r) r)
  :pattern (($FVF.lookup_next (as sm@245@01  $FVF<next>) r))
  :qid |qp.fvfResTrgDef190|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@136@01 r) (Set_in (inv@135@01 r) (Set_union g0@126@01 g1@127@01)))
    (=
      ($FVF.lookup_next (as sm@249@01  $FVF<next>) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@130@01))))) r)))
  :pattern (($FVF.lookup_next (as sm@249@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@130@01))))) r))
  :qid |qp.fvfValDef192|)))
(assert (forall ((r $Ref)) (!
  ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@130@01))))) r) r)
  :pattern (($FVF.lookup_next (as sm@249@01  $FVF<next>) r))
  :qid |qp.fvfResTrgDef193|)))
(assert (forall ((n@246@01 $Ref)) (!
  (=>
    (Set_in n@246@01 (Set_union g0@126@01 g1@127@01))
    (and (= (inv@247@01 n@246@01) n@246@01) (img@248@01 n@246@01)))
  :pattern ((Set_in n@246@01 (Set_union g0@126@01 g1@127@01)))
  :pattern ((inv@247@01 n@246@01))
  :pattern ((img@248@01 n@246@01))
  :qid |next-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@248@01 r) (Set_in (inv@247@01 r) (Set_union g0@126@01 g1@127@01)))
    (= (inv@247@01 r) r))
  :pattern ((inv@247@01 r))
  :qid |next-fctOfInv|)))
(assert (forall ((r $Ref)) (!
  (and
    (=>
      (Set_in r ($FVF.domain_next (as sm@250@01  $FVF<next>)))
      (and
        (Set_in (inv@247@01 r) (Set_union g0@126@01 g1@127@01))
        (img@248@01 r)))
    (=>
      (and
        (Set_in (inv@247@01 r) (Set_union g0@126@01 g1@127@01))
        (img@248@01 r))
      (Set_in r ($FVF.domain_next (as sm@250@01  $FVF<next>)))))
  :pattern ((Set_in r ($FVF.domain_next (as sm@250@01  $FVF<next>))))
  :qid |qp.fvfDomDef196|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and
        (Set_in (inv@247@01 r) (Set_union g0@126@01 g1@127@01))
        (img@248@01 r))
      (and
        (img@136@01 r)
        (Set_in (inv@135@01 r) (Set_union g0@126@01 g1@127@01))))
    (=
      ($FVF.lookup_next (as sm@250@01  $FVF<next>) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@130@01))))) r)))
  :pattern (($FVF.lookup_next (as sm@250@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@130@01))))) r))
  :qid |qp.fvfValDef194|)))
(assert (forall ((r $Ref)) (!
  ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@130@01))))) r) r)
  :pattern (($FVF.lookup_next (as sm@250@01  $FVF<next>) r))
  :qid |qp.fvfResTrgDef195|)))
(assert (=>
  (not (= v1@229@01 v2@230@01))
  (and
    (not (= v1@229@01 v2@230@01))
    (forall ((r $Ref)) (!
      (=>
        (Set_in (inv@232@01 r) (Set_union g0@126@01 g1@127@01))
        ($FVF.loc_next ($FVF.lookup_next (as sm@234@01  $FVF<next>) r) r))
      :pattern ((inv@232@01 r))
      :qid |quant-u-14346|))
    ($$%precondition ($SortWrappers.$FVF<next>To$Snap (as sm@235@01  $FVF<next>)) (Set_union g0@126@01 g1@127@01))
    (forall ((r $Ref)) (!
      (=>
        (Set_in (inv@237@01 r) (Set_union g0@126@01 g1@127@01))
        ($FVF.loc_next ($FVF.lookup_next (as sm@239@01  $FVF<next>) r) r))
      :pattern ((inv@237@01 r))
      :qid |quant-u-14349|))
    ($$%precondition ($SortWrappers.$FVF<next>To$Snap (as sm@240@01  $FVF<next>)) (Set_union g0@126@01 g1@127@01))
    (=>
      (exists_path<Bool> ($$ ($SortWrappers.$FVF<next>To$Snap (as sm@240@01  $FVF<next>)) (Set_union g0@126@01 g1@127@01)) v1@229@01 v2@230@01)
      (and
        (exists_path<Bool> ($$ ($SortWrappers.$FVF<next>To$Snap (as sm@240@01  $FVF<next>)) (Set_union g0@126@01 g1@127@01)) v1@229@01 v2@230@01)
        (forall ((r $Ref)) (!
          (=>
            (Set_in (inv@242@01 r) (Set_union g0@126@01 g1@127@01))
            ($FVF.loc_next ($FVF.lookup_next (as sm@244@01  $FVF<next>) r) r))
          :pattern ((inv@242@01 r))
          :qid |quant-u-14352|))
        ($$%precondition ($SortWrappers.$FVF<next>To$Snap (as sm@245@01  $FVF<next>)) (Set_union g0@126@01 g1@127@01))
        (=>
          (exists_path<Bool> ($$ ($SortWrappers.$FVF<next>To$Snap (as sm@245@01  $FVF<next>)) (Set_union g0@126@01 g1@127@01)) v1@229@01 x0@128@01)
          (and
            (exists_path<Bool> ($$ ($SortWrappers.$FVF<next>To$Snap (as sm@245@01  $FVF<next>)) (Set_union g0@126@01 g1@127@01)) v1@229@01 x0@128@01)
            (forall ((r $Ref)) (!
              (=>
                (Set_in (inv@247@01 r) (Set_union g0@126@01 g1@127@01))
                ($FVF.loc_next ($FVF.lookup_next (as sm@249@01  $FVF<next>) r) r))
              :pattern ((inv@247@01 r))
              :qid |quant-u-14355|))
            ($$%precondition ($SortWrappers.$FVF<next>To$Snap (as sm@250@01  $FVF<next>)) (Set_union g0@126@01 g1@127@01))))
        (or
          (exists_path<Bool> ($$ ($SortWrappers.$FVF<next>To$Snap (as sm@245@01  $FVF<next>)) (Set_union g0@126@01 g1@127@01)) v1@229@01 x0@128@01)
          (not
            (exists_path<Bool> ($$ ($SortWrappers.$FVF<next>To$Snap (as sm@245@01  $FVF<next>)) (Set_union g0@126@01 g1@127@01)) v1@229@01 x0@128@01)))))
    (or
      (exists_path<Bool> ($$ ($SortWrappers.$FVF<next>To$Snap (as sm@240@01  $FVF<next>)) (Set_union g0@126@01 g1@127@01)) v1@229@01 v2@230@01)
      (not
        (exists_path<Bool> ($$ ($SortWrappers.$FVF<next>To$Snap (as sm@240@01  $FVF<next>)) (Set_union g0@126@01 g1@127@01)) v1@229@01 v2@230@01))))))
; Joined path conditions
(assert (or (= v1@229@01 v2@230@01) (not (= v1@229@01 v2@230@01))))
(pop) ; 5
; Nested auxiliary terms: globals (aux)
(assert (forall ((r $Ref)) (!
  (=>
    (ite
      (and
        (img@136@01 r)
        (Set_in (inv@135@01 r) (Set_union g0@126@01 g1@127@01)))
      (< $Perm.No (- (- $Perm.Write (pTaken@204@01 r)) (pTaken@209@01 r)))
      false)
    (=
      ($FVF.lookup_next (as sm@234@01  $FVF<next>) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@130@01))))) r)))
  :pattern (($FVF.lookup_next (as sm@234@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@130@01))))) r))
  :qid |qp.fvfValDef173|)))
(assert (forall ((r $Ref)) (!
  (=>
    (= r x0@128@01)
    (=
      ($FVF.lookup_next (as sm@234@01  $FVF<next>) r)
      ($FVF.lookup_next (as sm@212@01  $FVF<next>) r)))
  :pattern (($FVF.lookup_next (as sm@234@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next (as sm@212@01  $FVF<next>) r))
  :qid |qp.fvfValDef174|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@216@01 r)
      (and
        (Set_in (inv@215@01 r) (Set_union g0@126@01 g1@127@01))
        (not (= (inv@215@01 r) x0@128@01))))
    (=
      ($FVF.lookup_next (as sm@234@01  $FVF<next>) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@211@01))))) r)))
  :pattern (($FVF.lookup_next (as sm@234@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@211@01))))) r))
  :qid |qp.fvfValDef175|)))
(assert (forall ((r $Ref)) (!
  (and
    ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@130@01))))) r) r)
    ($FVF.loc_next ($FVF.lookup_next (as sm@212@01  $FVF<next>) r) r)
    ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@211@01))))) r) r))
  :pattern (($FVF.lookup_next (as sm@234@01  $FVF<next>) r))
  :qid |qp.fvfResTrgDef176|)))
(assert (forall ((n@231@01 $Ref)) (!
  (=>
    (Set_in n@231@01 (Set_union g0@126@01 g1@127@01))
    (and (= (inv@232@01 n@231@01) n@231@01) (img@233@01 n@231@01)))
  :pattern ((Set_in n@231@01 (Set_union g0@126@01 g1@127@01)))
  :pattern ((inv@232@01 n@231@01))
  :pattern ((img@233@01 n@231@01))
  :qid |next-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@233@01 r) (Set_in (inv@232@01 r) (Set_union g0@126@01 g1@127@01)))
    (= (inv@232@01 r) r))
  :pattern ((inv@232@01 r))
  :qid |next-fctOfInv|)))
(assert (forall ((r $Ref)) (!
  (and
    (=>
      (Set_in r ($FVF.domain_next (as sm@235@01  $FVF<next>)))
      (and
        (Set_in (inv@232@01 r) (Set_union g0@126@01 g1@127@01))
        (img@233@01 r)))
    (=>
      (and
        (Set_in (inv@232@01 r) (Set_union g0@126@01 g1@127@01))
        (img@233@01 r))
      (Set_in r ($FVF.domain_next (as sm@235@01  $FVF<next>)))))
  :pattern ((Set_in r ($FVF.domain_next (as sm@235@01  $FVF<next>))))
  :qid |qp.fvfDomDef181|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and
        (Set_in (inv@232@01 r) (Set_union g0@126@01 g1@127@01))
        (img@233@01 r))
      (ite
        (and
          (img@136@01 r)
          (Set_in (inv@135@01 r) (Set_union g0@126@01 g1@127@01)))
        (< $Perm.No (- (- $Perm.Write (pTaken@204@01 r)) (pTaken@209@01 r)))
        false))
    (=
      ($FVF.lookup_next (as sm@235@01  $FVF<next>) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@130@01))))) r)))
  :pattern (($FVF.lookup_next (as sm@235@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@130@01))))) r))
  :qid |qp.fvfValDef177|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and
        (Set_in (inv@232@01 r) (Set_union g0@126@01 g1@127@01))
        (img@233@01 r))
      (= r x0@128@01))
    (=
      ($FVF.lookup_next (as sm@235@01  $FVF<next>) r)
      ($FVF.lookup_next (as sm@212@01  $FVF<next>) r)))
  :pattern (($FVF.lookup_next (as sm@235@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next (as sm@212@01  $FVF<next>) r))
  :qid |qp.fvfValDef178|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and
        (Set_in (inv@232@01 r) (Set_union g0@126@01 g1@127@01))
        (img@233@01 r))
      (and
        (img@216@01 r)
        (and
          (Set_in (inv@215@01 r) (Set_union g0@126@01 g1@127@01))
          (not (= (inv@215@01 r) x0@128@01)))))
    (=
      ($FVF.lookup_next (as sm@235@01  $FVF<next>) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@211@01))))) r)))
  :pattern (($FVF.lookup_next (as sm@235@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@211@01))))) r))
  :qid |qp.fvfValDef179|)))
(assert (forall ((r $Ref)) (!
  (and
    ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@130@01))))) r) r)
    ($FVF.loc_next ($FVF.lookup_next (as sm@212@01  $FVF<next>) r) r)
    ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@211@01))))) r) r))
  :pattern (($FVF.lookup_next (as sm@235@01  $FVF<next>) r))
  :qid |qp.fvfResTrgDef180|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@136@01 r) (Set_in (inv@135@01 r) (Set_union g0@126@01 g1@127@01)))
    (=
      ($FVF.lookup_next (as sm@239@01  $FVF<next>) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@130@01))))) r)))
  :pattern (($FVF.lookup_next (as sm@239@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@130@01))))) r))
  :qid |qp.fvfValDef182|)))
(assert (forall ((r $Ref)) (!
  ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@130@01))))) r) r)
  :pattern (($FVF.lookup_next (as sm@239@01  $FVF<next>) r))
  :qid |qp.fvfResTrgDef183|)))
(assert (forall ((n@236@01 $Ref)) (!
  (=>
    (Set_in n@236@01 (Set_union g0@126@01 g1@127@01))
    (and (= (inv@237@01 n@236@01) n@236@01) (img@238@01 n@236@01)))
  :pattern ((Set_in n@236@01 (Set_union g0@126@01 g1@127@01)))
  :pattern ((inv@237@01 n@236@01))
  :pattern ((img@238@01 n@236@01))
  :qid |next-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@238@01 r) (Set_in (inv@237@01 r) (Set_union g0@126@01 g1@127@01)))
    (= (inv@237@01 r) r))
  :pattern ((inv@237@01 r))
  :qid |next-fctOfInv|)))
(assert (forall ((r $Ref)) (!
  (and
    (=>
      (Set_in r ($FVF.domain_next (as sm@240@01  $FVF<next>)))
      (and
        (Set_in (inv@237@01 r) (Set_union g0@126@01 g1@127@01))
        (img@238@01 r)))
    (=>
      (and
        (Set_in (inv@237@01 r) (Set_union g0@126@01 g1@127@01))
        (img@238@01 r))
      (Set_in r ($FVF.domain_next (as sm@240@01  $FVF<next>)))))
  :pattern ((Set_in r ($FVF.domain_next (as sm@240@01  $FVF<next>))))
  :qid |qp.fvfDomDef186|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and
        (Set_in (inv@237@01 r) (Set_union g0@126@01 g1@127@01))
        (img@238@01 r))
      (and
        (img@136@01 r)
        (Set_in (inv@135@01 r) (Set_union g0@126@01 g1@127@01))))
    (=
      ($FVF.lookup_next (as sm@240@01  $FVF<next>) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@130@01))))) r)))
  :pattern (($FVF.lookup_next (as sm@240@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@130@01))))) r))
  :qid |qp.fvfValDef184|)))
(assert (forall ((r $Ref)) (!
  ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@130@01))))) r) r)
  :pattern (($FVF.lookup_next (as sm@240@01  $FVF<next>) r))
  :qid |qp.fvfResTrgDef185|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@136@01 r) (Set_in (inv@135@01 r) (Set_union g0@126@01 g1@127@01)))
    (=
      ($FVF.lookup_next (as sm@244@01  $FVF<next>) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@130@01))))) r)))
  :pattern (($FVF.lookup_next (as sm@244@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@130@01))))) r))
  :qid |qp.fvfValDef187|)))
(assert (forall ((r $Ref)) (!
  ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@130@01))))) r) r)
  :pattern (($FVF.lookup_next (as sm@244@01  $FVF<next>) r))
  :qid |qp.fvfResTrgDef188|)))
(assert (forall ((n@241@01 $Ref)) (!
  (=>
    (Set_in n@241@01 (Set_union g0@126@01 g1@127@01))
    (and (= (inv@242@01 n@241@01) n@241@01) (img@243@01 n@241@01)))
  :pattern ((Set_in n@241@01 (Set_union g0@126@01 g1@127@01)))
  :pattern ((inv@242@01 n@241@01))
  :pattern ((img@243@01 n@241@01))
  :qid |next-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@243@01 r) (Set_in (inv@242@01 r) (Set_union g0@126@01 g1@127@01)))
    (= (inv@242@01 r) r))
  :pattern ((inv@242@01 r))
  :qid |next-fctOfInv|)))
(assert (forall ((r $Ref)) (!
  (and
    (=>
      (Set_in r ($FVF.domain_next (as sm@245@01  $FVF<next>)))
      (and
        (Set_in (inv@242@01 r) (Set_union g0@126@01 g1@127@01))
        (img@243@01 r)))
    (=>
      (and
        (Set_in (inv@242@01 r) (Set_union g0@126@01 g1@127@01))
        (img@243@01 r))
      (Set_in r ($FVF.domain_next (as sm@245@01  $FVF<next>)))))
  :pattern ((Set_in r ($FVF.domain_next (as sm@245@01  $FVF<next>))))
  :qid |qp.fvfDomDef191|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and
        (Set_in (inv@242@01 r) (Set_union g0@126@01 g1@127@01))
        (img@243@01 r))
      (and
        (img@136@01 r)
        (Set_in (inv@135@01 r) (Set_union g0@126@01 g1@127@01))))
    (=
      ($FVF.lookup_next (as sm@245@01  $FVF<next>) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@130@01))))) r)))
  :pattern (($FVF.lookup_next (as sm@245@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@130@01))))) r))
  :qid |qp.fvfValDef189|)))
(assert (forall ((r $Ref)) (!
  ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@130@01))))) r) r)
  :pattern (($FVF.lookup_next (as sm@245@01  $FVF<next>) r))
  :qid |qp.fvfResTrgDef190|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@136@01 r) (Set_in (inv@135@01 r) (Set_union g0@126@01 g1@127@01)))
    (=
      ($FVF.lookup_next (as sm@249@01  $FVF<next>) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@130@01))))) r)))
  :pattern (($FVF.lookup_next (as sm@249@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@130@01))))) r))
  :qid |qp.fvfValDef192|)))
(assert (forall ((r $Ref)) (!
  ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@130@01))))) r) r)
  :pattern (($FVF.lookup_next (as sm@249@01  $FVF<next>) r))
  :qid |qp.fvfResTrgDef193|)))
(assert (forall ((n@246@01 $Ref)) (!
  (=>
    (Set_in n@246@01 (Set_union g0@126@01 g1@127@01))
    (and (= (inv@247@01 n@246@01) n@246@01) (img@248@01 n@246@01)))
  :pattern ((Set_in n@246@01 (Set_union g0@126@01 g1@127@01)))
  :pattern ((inv@247@01 n@246@01))
  :pattern ((img@248@01 n@246@01))
  :qid |next-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@248@01 r) (Set_in (inv@247@01 r) (Set_union g0@126@01 g1@127@01)))
    (= (inv@247@01 r) r))
  :pattern ((inv@247@01 r))
  :qid |next-fctOfInv|)))
(assert (forall ((r $Ref)) (!
  (and
    (=>
      (Set_in r ($FVF.domain_next (as sm@250@01  $FVF<next>)))
      (and
        (Set_in (inv@247@01 r) (Set_union g0@126@01 g1@127@01))
        (img@248@01 r)))
    (=>
      (and
        (Set_in (inv@247@01 r) (Set_union g0@126@01 g1@127@01))
        (img@248@01 r))
      (Set_in r ($FVF.domain_next (as sm@250@01  $FVF<next>)))))
  :pattern ((Set_in r ($FVF.domain_next (as sm@250@01  $FVF<next>))))
  :qid |qp.fvfDomDef196|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and
        (Set_in (inv@247@01 r) (Set_union g0@126@01 g1@127@01))
        (img@248@01 r))
      (and
        (img@136@01 r)
        (Set_in (inv@135@01 r) (Set_union g0@126@01 g1@127@01))))
    (=
      ($FVF.lookup_next (as sm@250@01  $FVF<next>) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@130@01))))) r)))
  :pattern (($FVF.lookup_next (as sm@250@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@130@01))))) r))
  :qid |qp.fvfValDef194|)))
(assert (forall ((r $Ref)) (!
  ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@130@01))))) r) r)
  :pattern (($FVF.lookup_next (as sm@250@01  $FVF<next>) r))
  :qid |qp.fvfResTrgDef195|)))
; Nested auxiliary terms: non-globals (aux)
(assert (forall ((v1@229@01 $Ref) (v2@230@01 $Ref)) (!
  (and
    (=>
      (not (= v1@229@01 v2@230@01))
      (and
        (not (= v1@229@01 v2@230@01))
        (forall ((r $Ref)) (!
          (=>
            (Set_in (inv@232@01 r) (Set_union g0@126@01 g1@127@01))
            ($FVF.loc_next ($FVF.lookup_next (as sm@234@01  $FVF<next>) r) r))
          :pattern ((inv@232@01 r))
          :qid |quant-u-14346|))
        ($$%precondition ($SortWrappers.$FVF<next>To$Snap (as sm@235@01  $FVF<next>)) (Set_union g0@126@01 g1@127@01))
        (forall ((r $Ref)) (!
          (=>
            (Set_in (inv@237@01 r) (Set_union g0@126@01 g1@127@01))
            ($FVF.loc_next ($FVF.lookup_next (as sm@239@01  $FVF<next>) r) r))
          :pattern ((inv@237@01 r))
          :qid |quant-u-14349|))
        ($$%precondition ($SortWrappers.$FVF<next>To$Snap (as sm@240@01  $FVF<next>)) (Set_union g0@126@01 g1@127@01))
        (=>
          (exists_path<Bool> ($$ ($SortWrappers.$FVF<next>To$Snap (as sm@240@01  $FVF<next>)) (Set_union g0@126@01 g1@127@01)) v1@229@01 v2@230@01)
          (and
            (exists_path<Bool> ($$ ($SortWrappers.$FVF<next>To$Snap (as sm@240@01  $FVF<next>)) (Set_union g0@126@01 g1@127@01)) v1@229@01 v2@230@01)
            (forall ((r $Ref)) (!
              (=>
                (Set_in (inv@242@01 r) (Set_union g0@126@01 g1@127@01))
                ($FVF.loc_next ($FVF.lookup_next (as sm@244@01  $FVF<next>) r) r))
              :pattern ((inv@242@01 r))
              :qid |quant-u-14352|))
            ($$%precondition ($SortWrappers.$FVF<next>To$Snap (as sm@245@01  $FVF<next>)) (Set_union g0@126@01 g1@127@01))
            (=>
              (exists_path<Bool> ($$ ($SortWrappers.$FVF<next>To$Snap (as sm@245@01  $FVF<next>)) (Set_union g0@126@01 g1@127@01)) v1@229@01 x0@128@01)
              (and
                (exists_path<Bool> ($$ ($SortWrappers.$FVF<next>To$Snap (as sm@245@01  $FVF<next>)) (Set_union g0@126@01 g1@127@01)) v1@229@01 x0@128@01)
                (forall ((r $Ref)) (!
                  (=>
                    (Set_in (inv@247@01 r) (Set_union g0@126@01 g1@127@01))
                    ($FVF.loc_next ($FVF.lookup_next (as sm@249@01  $FVF<next>) r) r))
                  :pattern ((inv@247@01 r))
                  :qid |quant-u-14355|))
                ($$%precondition ($SortWrappers.$FVF<next>To$Snap (as sm@250@01  $FVF<next>)) (Set_union g0@126@01 g1@127@01))))
            (or
              (exists_path<Bool> ($$ ($SortWrappers.$FVF<next>To$Snap (as sm@245@01  $FVF<next>)) (Set_union g0@126@01 g1@127@01)) v1@229@01 x0@128@01)
              (not
                (exists_path<Bool> ($$ ($SortWrappers.$FVF<next>To$Snap (as sm@245@01  $FVF<next>)) (Set_union g0@126@01 g1@127@01)) v1@229@01 x0@128@01)))))
        (or
          (exists_path<Bool> ($$ ($SortWrappers.$FVF<next>To$Snap (as sm@240@01  $FVF<next>)) (Set_union g0@126@01 g1@127@01)) v1@229@01 v2@230@01)
          (not
            (exists_path<Bool> ($$ ($SortWrappers.$FVF<next>To$Snap (as sm@240@01  $FVF<next>)) (Set_union g0@126@01 g1@127@01)) v1@229@01 v2@230@01)))))
    (or (= v1@229@01 v2@230@01) (not (= v1@229@01 v2@230@01))))
  :pattern ((exists_path<Bool> ($$ ($SortWrappers.$FVF<next>To$Snap (as sm@235@01  $FVF<next>)) (Set_union g0@126@01 g1@127@01)) v1@229@01 v2@230@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/graphs/static/tests/lists/delete_edge1.vpr@316@38@320@128-aux|)))
(pop) ; 4
(pop) ; 3
; Joined path conditions
(assert (forall ((r $Ref)) (!
  (=>
    (ite
      (and
        (img@136@01 r)
        (Set_in (inv@135@01 r) (Set_union g0@126@01 g1@127@01)))
      (< $Perm.No (- (- $Perm.Write (pTaken@204@01 r)) (pTaken@209@01 r)))
      false)
    (=
      ($FVF.lookup_next (as sm@234@01  $FVF<next>) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@130@01))))) r)))
  :pattern (($FVF.lookup_next (as sm@234@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@130@01))))) r))
  :qid |qp.fvfValDef173|)))
(assert (forall ((r $Ref)) (!
  (=>
    (= r x0@128@01)
    (=
      ($FVF.lookup_next (as sm@234@01  $FVF<next>) r)
      ($FVF.lookup_next (as sm@212@01  $FVF<next>) r)))
  :pattern (($FVF.lookup_next (as sm@234@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next (as sm@212@01  $FVF<next>) r))
  :qid |qp.fvfValDef174|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@216@01 r)
      (and
        (Set_in (inv@215@01 r) (Set_union g0@126@01 g1@127@01))
        (not (= (inv@215@01 r) x0@128@01))))
    (=
      ($FVF.lookup_next (as sm@234@01  $FVF<next>) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@211@01))))) r)))
  :pattern (($FVF.lookup_next (as sm@234@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@211@01))))) r))
  :qid |qp.fvfValDef175|)))
(assert (forall ((r $Ref)) (!
  (and
    ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@130@01))))) r) r)
    ($FVF.loc_next ($FVF.lookup_next (as sm@212@01  $FVF<next>) r) r)
    ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@211@01))))) r) r))
  :pattern (($FVF.lookup_next (as sm@234@01  $FVF<next>) r))
  :qid |qp.fvfResTrgDef176|)))
(assert (forall ((n@231@01 $Ref)) (!
  (=>
    (Set_in n@231@01 (Set_union g0@126@01 g1@127@01))
    (and (= (inv@232@01 n@231@01) n@231@01) (img@233@01 n@231@01)))
  :pattern ((Set_in n@231@01 (Set_union g0@126@01 g1@127@01)))
  :pattern ((inv@232@01 n@231@01))
  :pattern ((img@233@01 n@231@01))
  :qid |next-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@233@01 r) (Set_in (inv@232@01 r) (Set_union g0@126@01 g1@127@01)))
    (= (inv@232@01 r) r))
  :pattern ((inv@232@01 r))
  :qid |next-fctOfInv|)))
(assert (forall ((r $Ref)) (!
  (and
    (=>
      (Set_in r ($FVF.domain_next (as sm@235@01  $FVF<next>)))
      (and
        (Set_in (inv@232@01 r) (Set_union g0@126@01 g1@127@01))
        (img@233@01 r)))
    (=>
      (and
        (Set_in (inv@232@01 r) (Set_union g0@126@01 g1@127@01))
        (img@233@01 r))
      (Set_in r ($FVF.domain_next (as sm@235@01  $FVF<next>)))))
  :pattern ((Set_in r ($FVF.domain_next (as sm@235@01  $FVF<next>))))
  :qid |qp.fvfDomDef181|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and
        (Set_in (inv@232@01 r) (Set_union g0@126@01 g1@127@01))
        (img@233@01 r))
      (ite
        (and
          (img@136@01 r)
          (Set_in (inv@135@01 r) (Set_union g0@126@01 g1@127@01)))
        (< $Perm.No (- (- $Perm.Write (pTaken@204@01 r)) (pTaken@209@01 r)))
        false))
    (=
      ($FVF.lookup_next (as sm@235@01  $FVF<next>) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@130@01))))) r)))
  :pattern (($FVF.lookup_next (as sm@235@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@130@01))))) r))
  :qid |qp.fvfValDef177|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and
        (Set_in (inv@232@01 r) (Set_union g0@126@01 g1@127@01))
        (img@233@01 r))
      (= r x0@128@01))
    (=
      ($FVF.lookup_next (as sm@235@01  $FVF<next>) r)
      ($FVF.lookup_next (as sm@212@01  $FVF<next>) r)))
  :pattern (($FVF.lookup_next (as sm@235@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next (as sm@212@01  $FVF<next>) r))
  :qid |qp.fvfValDef178|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and
        (Set_in (inv@232@01 r) (Set_union g0@126@01 g1@127@01))
        (img@233@01 r))
      (and
        (img@216@01 r)
        (and
          (Set_in (inv@215@01 r) (Set_union g0@126@01 g1@127@01))
          (not (= (inv@215@01 r) x0@128@01)))))
    (=
      ($FVF.lookup_next (as sm@235@01  $FVF<next>) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@211@01))))) r)))
  :pattern (($FVF.lookup_next (as sm@235@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@211@01))))) r))
  :qid |qp.fvfValDef179|)))
(assert (forall ((r $Ref)) (!
  (and
    ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@130@01))))) r) r)
    ($FVF.loc_next ($FVF.lookup_next (as sm@212@01  $FVF<next>) r) r)
    ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@211@01))))) r) r))
  :pattern (($FVF.lookup_next (as sm@235@01  $FVF<next>) r))
  :qid |qp.fvfResTrgDef180|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@136@01 r) (Set_in (inv@135@01 r) (Set_union g0@126@01 g1@127@01)))
    (=
      ($FVF.lookup_next (as sm@239@01  $FVF<next>) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@130@01))))) r)))
  :pattern (($FVF.lookup_next (as sm@239@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@130@01))))) r))
  :qid |qp.fvfValDef182|)))
(assert (forall ((r $Ref)) (!
  ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@130@01))))) r) r)
  :pattern (($FVF.lookup_next (as sm@239@01  $FVF<next>) r))
  :qid |qp.fvfResTrgDef183|)))
(assert (forall ((n@236@01 $Ref)) (!
  (=>
    (Set_in n@236@01 (Set_union g0@126@01 g1@127@01))
    (and (= (inv@237@01 n@236@01) n@236@01) (img@238@01 n@236@01)))
  :pattern ((Set_in n@236@01 (Set_union g0@126@01 g1@127@01)))
  :pattern ((inv@237@01 n@236@01))
  :pattern ((img@238@01 n@236@01))
  :qid |next-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@238@01 r) (Set_in (inv@237@01 r) (Set_union g0@126@01 g1@127@01)))
    (= (inv@237@01 r) r))
  :pattern ((inv@237@01 r))
  :qid |next-fctOfInv|)))
(assert (forall ((r $Ref)) (!
  (and
    (=>
      (Set_in r ($FVF.domain_next (as sm@240@01  $FVF<next>)))
      (and
        (Set_in (inv@237@01 r) (Set_union g0@126@01 g1@127@01))
        (img@238@01 r)))
    (=>
      (and
        (Set_in (inv@237@01 r) (Set_union g0@126@01 g1@127@01))
        (img@238@01 r))
      (Set_in r ($FVF.domain_next (as sm@240@01  $FVF<next>)))))
  :pattern ((Set_in r ($FVF.domain_next (as sm@240@01  $FVF<next>))))
  :qid |qp.fvfDomDef186|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and
        (Set_in (inv@237@01 r) (Set_union g0@126@01 g1@127@01))
        (img@238@01 r))
      (and
        (img@136@01 r)
        (Set_in (inv@135@01 r) (Set_union g0@126@01 g1@127@01))))
    (=
      ($FVF.lookup_next (as sm@240@01  $FVF<next>) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@130@01))))) r)))
  :pattern (($FVF.lookup_next (as sm@240@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@130@01))))) r))
  :qid |qp.fvfValDef184|)))
(assert (forall ((r $Ref)) (!
  ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@130@01))))) r) r)
  :pattern (($FVF.lookup_next (as sm@240@01  $FVF<next>) r))
  :qid |qp.fvfResTrgDef185|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@136@01 r) (Set_in (inv@135@01 r) (Set_union g0@126@01 g1@127@01)))
    (=
      ($FVF.lookup_next (as sm@244@01  $FVF<next>) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@130@01))))) r)))
  :pattern (($FVF.lookup_next (as sm@244@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@130@01))))) r))
  :qid |qp.fvfValDef187|)))
(assert (forall ((r $Ref)) (!
  ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@130@01))))) r) r)
  :pattern (($FVF.lookup_next (as sm@244@01  $FVF<next>) r))
  :qid |qp.fvfResTrgDef188|)))
(assert (forall ((n@241@01 $Ref)) (!
  (=>
    (Set_in n@241@01 (Set_union g0@126@01 g1@127@01))
    (and (= (inv@242@01 n@241@01) n@241@01) (img@243@01 n@241@01)))
  :pattern ((Set_in n@241@01 (Set_union g0@126@01 g1@127@01)))
  :pattern ((inv@242@01 n@241@01))
  :pattern ((img@243@01 n@241@01))
  :qid |next-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@243@01 r) (Set_in (inv@242@01 r) (Set_union g0@126@01 g1@127@01)))
    (= (inv@242@01 r) r))
  :pattern ((inv@242@01 r))
  :qid |next-fctOfInv|)))
(assert (forall ((r $Ref)) (!
  (and
    (=>
      (Set_in r ($FVF.domain_next (as sm@245@01  $FVF<next>)))
      (and
        (Set_in (inv@242@01 r) (Set_union g0@126@01 g1@127@01))
        (img@243@01 r)))
    (=>
      (and
        (Set_in (inv@242@01 r) (Set_union g0@126@01 g1@127@01))
        (img@243@01 r))
      (Set_in r ($FVF.domain_next (as sm@245@01  $FVF<next>)))))
  :pattern ((Set_in r ($FVF.domain_next (as sm@245@01  $FVF<next>))))
  :qid |qp.fvfDomDef191|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and
        (Set_in (inv@242@01 r) (Set_union g0@126@01 g1@127@01))
        (img@243@01 r))
      (and
        (img@136@01 r)
        (Set_in (inv@135@01 r) (Set_union g0@126@01 g1@127@01))))
    (=
      ($FVF.lookup_next (as sm@245@01  $FVF<next>) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@130@01))))) r)))
  :pattern (($FVF.lookup_next (as sm@245@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@130@01))))) r))
  :qid |qp.fvfValDef189|)))
(assert (forall ((r $Ref)) (!
  ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@130@01))))) r) r)
  :pattern (($FVF.lookup_next (as sm@245@01  $FVF<next>) r))
  :qid |qp.fvfResTrgDef190|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@136@01 r) (Set_in (inv@135@01 r) (Set_union g0@126@01 g1@127@01)))
    (=
      ($FVF.lookup_next (as sm@249@01  $FVF<next>) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@130@01))))) r)))
  :pattern (($FVF.lookup_next (as sm@249@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@130@01))))) r))
  :qid |qp.fvfValDef192|)))
(assert (forall ((r $Ref)) (!
  ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@130@01))))) r) r)
  :pattern (($FVF.lookup_next (as sm@249@01  $FVF<next>) r))
  :qid |qp.fvfResTrgDef193|)))
(assert (forall ((n@246@01 $Ref)) (!
  (=>
    (Set_in n@246@01 (Set_union g0@126@01 g1@127@01))
    (and (= (inv@247@01 n@246@01) n@246@01) (img@248@01 n@246@01)))
  :pattern ((Set_in n@246@01 (Set_union g0@126@01 g1@127@01)))
  :pattern ((inv@247@01 n@246@01))
  :pattern ((img@248@01 n@246@01))
  :qid |next-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@248@01 r) (Set_in (inv@247@01 r) (Set_union g0@126@01 g1@127@01)))
    (= (inv@247@01 r) r))
  :pattern ((inv@247@01 r))
  :qid |next-fctOfInv|)))
(assert (forall ((r $Ref)) (!
  (and
    (=>
      (Set_in r ($FVF.domain_next (as sm@250@01  $FVF<next>)))
      (and
        (Set_in (inv@247@01 r) (Set_union g0@126@01 g1@127@01))
        (img@248@01 r)))
    (=>
      (and
        (Set_in (inv@247@01 r) (Set_union g0@126@01 g1@127@01))
        (img@248@01 r))
      (Set_in r ($FVF.domain_next (as sm@250@01  $FVF<next>)))))
  :pattern ((Set_in r ($FVF.domain_next (as sm@250@01  $FVF<next>))))
  :qid |qp.fvfDomDef196|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and
        (Set_in (inv@247@01 r) (Set_union g0@126@01 g1@127@01))
        (img@248@01 r))
      (and
        (img@136@01 r)
        (Set_in (inv@135@01 r) (Set_union g0@126@01 g1@127@01))))
    (=
      ($FVF.lookup_next (as sm@250@01  $FVF<next>) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@130@01))))) r)))
  :pattern (($FVF.lookup_next (as sm@250@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@130@01))))) r))
  :qid |qp.fvfValDef194|)))
(assert (forall ((r $Ref)) (!
  ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@130@01))))) r) r)
  :pattern (($FVF.lookup_next (as sm@250@01  $FVF<next>) r))
  :qid |qp.fvfResTrgDef195|)))
(assert (=>
  (not
    (=
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@130@01))))) x0@128@01)
      $Ref.null))
  (and
    (not
      (=
        ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@130@01))))) x0@128@01)
        $Ref.null))
    (forall ((v1@229@01 $Ref) (v2@230@01 $Ref)) (!
      (and
        (=>
          (not (= v1@229@01 v2@230@01))
          (and
            (not (= v1@229@01 v2@230@01))
            (forall ((r $Ref)) (!
              (=>
                (Set_in (inv@232@01 r) (Set_union g0@126@01 g1@127@01))
                ($FVF.loc_next ($FVF.lookup_next (as sm@234@01  $FVF<next>) r) r))
              :pattern ((inv@232@01 r))
              :qid |quant-u-14346|))
            ($$%precondition ($SortWrappers.$FVF<next>To$Snap (as sm@235@01  $FVF<next>)) (Set_union g0@126@01 g1@127@01))
            (forall ((r $Ref)) (!
              (=>
                (Set_in (inv@237@01 r) (Set_union g0@126@01 g1@127@01))
                ($FVF.loc_next ($FVF.lookup_next (as sm@239@01  $FVF<next>) r) r))
              :pattern ((inv@237@01 r))
              :qid |quant-u-14349|))
            ($$%precondition ($SortWrappers.$FVF<next>To$Snap (as sm@240@01  $FVF<next>)) (Set_union g0@126@01 g1@127@01))
            (=>
              (exists_path<Bool> ($$ ($SortWrappers.$FVF<next>To$Snap (as sm@240@01  $FVF<next>)) (Set_union g0@126@01 g1@127@01)) v1@229@01 v2@230@01)
              (and
                (exists_path<Bool> ($$ ($SortWrappers.$FVF<next>To$Snap (as sm@240@01  $FVF<next>)) (Set_union g0@126@01 g1@127@01)) v1@229@01 v2@230@01)
                (forall ((r $Ref)) (!
                  (=>
                    (Set_in (inv@242@01 r) (Set_union g0@126@01 g1@127@01))
                    ($FVF.loc_next ($FVF.lookup_next (as sm@244@01  $FVF<next>) r) r))
                  :pattern ((inv@242@01 r))
                  :qid |quant-u-14352|))
                ($$%precondition ($SortWrappers.$FVF<next>To$Snap (as sm@245@01  $FVF<next>)) (Set_union g0@126@01 g1@127@01))
                (=>
                  (exists_path<Bool> ($$ ($SortWrappers.$FVF<next>To$Snap (as sm@245@01  $FVF<next>)) (Set_union g0@126@01 g1@127@01)) v1@229@01 x0@128@01)
                  (and
                    (exists_path<Bool> ($$ ($SortWrappers.$FVF<next>To$Snap (as sm@245@01  $FVF<next>)) (Set_union g0@126@01 g1@127@01)) v1@229@01 x0@128@01)
                    (forall ((r $Ref)) (!
                      (=>
                        (Set_in (inv@247@01 r) (Set_union g0@126@01 g1@127@01))
                        ($FVF.loc_next ($FVF.lookup_next (as sm@249@01  $FVF<next>) r) r))
                      :pattern ((inv@247@01 r))
                      :qid |quant-u-14355|))
                    ($$%precondition ($SortWrappers.$FVF<next>To$Snap (as sm@250@01  $FVF<next>)) (Set_union g0@126@01 g1@127@01))))
                (or
                  (exists_path<Bool> ($$ ($SortWrappers.$FVF<next>To$Snap (as sm@245@01  $FVF<next>)) (Set_union g0@126@01 g1@127@01)) v1@229@01 x0@128@01)
                  (not
                    (exists_path<Bool> ($$ ($SortWrappers.$FVF<next>To$Snap (as sm@245@01  $FVF<next>)) (Set_union g0@126@01 g1@127@01)) v1@229@01 x0@128@01)))))
            (or
              (exists_path<Bool> ($$ ($SortWrappers.$FVF<next>To$Snap (as sm@240@01  $FVF<next>)) (Set_union g0@126@01 g1@127@01)) v1@229@01 v2@230@01)
              (not
                (exists_path<Bool> ($$ ($SortWrappers.$FVF<next>To$Snap (as sm@240@01  $FVF<next>)) (Set_union g0@126@01 g1@127@01)) v1@229@01 v2@230@01)))))
        (or (= v1@229@01 v2@230@01) (not (= v1@229@01 v2@230@01))))
      :pattern ((exists_path<Bool> ($$ ($SortWrappers.$FVF<next>To$Snap (as sm@235@01  $FVF<next>)) (Set_union g0@126@01 g1@127@01)) v1@229@01 v2@230@01))
      :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/graphs/static/tests/lists/delete_edge1.vpr@316@38@320@128-aux|)))))
(assert (not
  (=
    ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@130@01))))) x0@128@01)
    $Ref.null)))
(assert (=>
  (not
    (=
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@130@01))))) x0@128@01)
      $Ref.null))
  (forall ((v1@229@01 $Ref) (v2@230@01 $Ref)) (!
    (=>
      (not (= v1@229@01 v2@230@01))
      (=
        (exists_path<Bool> ($$ ($SortWrappers.$FVF<next>To$Snap (as sm@235@01  $FVF<next>)) (Set_union g0@126@01 g1@127@01)) v1@229@01 v2@230@01)
        (and
          (exists_path<Bool> ($$ ($SortWrappers.$FVF<next>To$Snap (as sm@240@01  $FVF<next>)) (Set_union g0@126@01 g1@127@01)) v1@229@01 v2@230@01)
          (not
            (and
              (exists_path<Bool> ($$ ($SortWrappers.$FVF<next>To$Snap (as sm@245@01  $FVF<next>)) (Set_union g0@126@01 g1@127@01)) v1@229@01 x0@128@01)
              (exists_path<Bool> ($$ ($SortWrappers.$FVF<next>To$Snap (as sm@250@01  $FVF<next>)) (Set_union g0@126@01 g1@127@01)) ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@130@01))))) x0@128@01) v2@230@01))))))
    :pattern ((exists_path<Bool> ($$ ($SortWrappers.$FVF<next>To$Snap (as sm@235@01  $FVF<next>)) (Set_union g0@126@01 g1@127@01)) v1@229@01 v2@230@01))
    :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/graphs/static/tests/lists/delete_edge1.vpr@316@38@320@128|))))
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
; [exec]
; inhale apply_TCFraming(g0, g1)
(declare-const $t@251@01 $Snap)
(assert (= $t@251@01 $Snap.unit))
; [eval] apply_TCFraming(g0, g1)
(set-option :timeout 0)
(push) ; 3
(declare-const n@252@01 $Ref)
(push) ; 4
; [eval] (n in g0)
(assert (Set_in n@252@01 g0@126@01))
(pop) ; 4
(declare-fun inv@253@01 ($Ref) $Ref)
(declare-fun img@254@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
(declare-const sm@255@01 $FVF<next>)
; Definitional axioms for snapshot map domain
; Definitional axioms for snapshot map values
(assert (forall ((r $Ref)) (!
  (=>
    (ite
      (and
        (img@136@01 r)
        (Set_in (inv@135@01 r) (Set_union g0@126@01 g1@127@01)))
      (< $Perm.No (- (- $Perm.Write (pTaken@204@01 r)) (pTaken@209@01 r)))
      false)
    (=
      ($FVF.lookup_next (as sm@255@01  $FVF<next>) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@130@01))))) r)))
  :pattern (($FVF.lookup_next (as sm@255@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@130@01))))) r))
  :qid |qp.fvfValDef197|)))
(assert (forall ((r $Ref)) (!
  (=>
    (= r x0@128@01)
    (=
      ($FVF.lookup_next (as sm@255@01  $FVF<next>) r)
      ($FVF.lookup_next (as sm@212@01  $FVF<next>) r)))
  :pattern (($FVF.lookup_next (as sm@255@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next (as sm@212@01  $FVF<next>) r))
  :qid |qp.fvfValDef198|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@216@01 r)
      (and
        (Set_in (inv@215@01 r) (Set_union g0@126@01 g1@127@01))
        (not (= (inv@215@01 r) x0@128@01))))
    (=
      ($FVF.lookup_next (as sm@255@01  $FVF<next>) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@211@01))))) r)))
  :pattern (($FVF.lookup_next (as sm@255@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@211@01))))) r))
  :qid |qp.fvfValDef199|)))
(assert (forall ((r $Ref)) (!
  (and
    ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@130@01))))) r) r)
    ($FVF.loc_next ($FVF.lookup_next (as sm@212@01  $FVF<next>) r) r)
    ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@211@01))))) r) r))
  :pattern (($FVF.lookup_next (as sm@255@01  $FVF<next>) r))
  :qid |qp.fvfResTrgDef200|)))
; Check receiver injectivity
(push) ; 4
(assert (not (forall ((n1@252@01 $Ref) (n2@252@01 $Ref)) (!
  (=>
    (and
      (and
        (Set_in n1@252@01 g0@126@01)
        ($FVF.loc_next ($FVF.lookup_next (as sm@255@01  $FVF<next>) n1@252@01) n1@252@01))
      (and
        (Set_in n2@252@01 g0@126@01)
        ($FVF.loc_next ($FVF.lookup_next (as sm@255@01  $FVF<next>) n2@252@01) n2@252@01))
      (= n1@252@01 n2@252@01))
    (= n1@252@01 n2@252@01))
  
  :qid |next-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((n@252@01 $Ref)) (!
  (=>
    (Set_in n@252@01 g0@126@01)
    (and (= (inv@253@01 n@252@01) n@252@01) (img@254@01 n@252@01)))
  :pattern ((Set_in n@252@01 g0@126@01))
  :pattern ((inv@253@01 n@252@01))
  :pattern ((img@254@01 n@252@01))
  :qid |next-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@254@01 r) (Set_in (inv@253@01 r) g0@126@01))
    (= (inv@253@01 r) r))
  :pattern ((inv@253@01 r))
  :qid |next-fctOfInv|)))
(assert (forall ((r $Ref)) (!
  (=>
    (Set_in (inv@253@01 r) g0@126@01)
    ($FVF.loc_next ($FVF.lookup_next (as sm@255@01  $FVF<next>) r) r))
  :pattern ((inv@253@01 r))
  :qid |quant-u-14358|)))
(push) ; 4
(assert (not (forall ((r $Ref)) (!
  (=>
    (and (Set_in (inv@253@01 r) g0@126@01) (img@254@01 r) (= r (inv@253@01 r)))
    (>
      (+
        (+
          (ite
            (and
              (img@136@01 r)
              (Set_in (inv@135@01 r) (Set_union g0@126@01 g1@127@01)))
            (- (- $Perm.Write (pTaken@204@01 r)) (pTaken@209@01 r))
            $Perm.No)
          (ite
            (and
              (img@216@01 r)
              (and
                (Set_in (inv@215@01 r) (Set_union g0@126@01 g1@127@01))
                (not (= (inv@215@01 r) x0@128@01))))
            (/ (to_real 1) (to_real 2))
            $Perm.No))
        (ite (= r x0@128@01) $Perm.Write $Perm.No))
      $Perm.No))
  
  :qid |quant-u-14359|))))
(check-sat)
; unsat
(pop) ; 4
; 0.02s
; (get-info :all-statistics)
(declare-const sm@256@01 $FVF<next>)
; Definitional axioms for snapshot map domain
(assert (forall ((r $Ref)) (!
  (and
    (=>
      (Set_in r ($FVF.domain_next (as sm@256@01  $FVF<next>)))
      (and (Set_in (inv@253@01 r) g0@126@01) (img@254@01 r)))
    (=>
      (and (Set_in (inv@253@01 r) g0@126@01) (img@254@01 r))
      (Set_in r ($FVF.domain_next (as sm@256@01  $FVF<next>)))))
  :pattern ((Set_in r ($FVF.domain_next (as sm@256@01  $FVF<next>))))
  :qid |qp.fvfDomDef205|)))
; Definitional axioms for snapshot map values
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and (Set_in (inv@253@01 r) g0@126@01) (img@254@01 r))
      (ite
        (and
          (img@136@01 r)
          (Set_in (inv@135@01 r) (Set_union g0@126@01 g1@127@01)))
        (< $Perm.No (- (- $Perm.Write (pTaken@204@01 r)) (pTaken@209@01 r)))
        false))
    (=
      ($FVF.lookup_next (as sm@256@01  $FVF<next>) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@130@01))))) r)))
  :pattern (($FVF.lookup_next (as sm@256@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@130@01))))) r))
  :qid |qp.fvfValDef201|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and (and (Set_in (inv@253@01 r) g0@126@01) (img@254@01 r)) (= r x0@128@01))
    (=
      ($FVF.lookup_next (as sm@256@01  $FVF<next>) r)
      ($FVF.lookup_next (as sm@212@01  $FVF<next>) r)))
  :pattern (($FVF.lookup_next (as sm@256@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next (as sm@212@01  $FVF<next>) r))
  :qid |qp.fvfValDef202|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and (Set_in (inv@253@01 r) g0@126@01) (img@254@01 r))
      (and
        (img@216@01 r)
        (and
          (Set_in (inv@215@01 r) (Set_union g0@126@01 g1@127@01))
          (not (= (inv@215@01 r) x0@128@01)))))
    (=
      ($FVF.lookup_next (as sm@256@01  $FVF<next>) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@211@01))))) r)))
  :pattern (($FVF.lookup_next (as sm@256@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@211@01))))) r))
  :qid |qp.fvfValDef203|)))
(assert (forall ((r $Ref)) (!
  (and
    ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@130@01))))) r) r)
    ($FVF.loc_next ($FVF.lookup_next (as sm@212@01  $FVF<next>) r) r)
    ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@211@01))))) r) r))
  :pattern (($FVF.lookup_next (as sm@256@01  $FVF<next>) r))
  :qid |qp.fvfResTrgDef204|)))
(declare-const n@257@01 $Ref)
(push) ; 4
; [eval] (n in g1)
(assert (Set_in n@257@01 g1@127@01))
(pop) ; 4
(declare-fun inv@258@01 ($Ref) $Ref)
(declare-fun img@259@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
(declare-const sm@260@01 $FVF<next>)
; Definitional axioms for snapshot map domain
; Definitional axioms for snapshot map values
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@216@01 r)
      (and
        (Set_in (inv@215@01 r) (Set_union g0@126@01 g1@127@01))
        (not (= (inv@215@01 r) x0@128@01))))
    (=
      ($FVF.lookup_next (as sm@260@01  $FVF<next>) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@211@01))))) r)))
  :pattern (($FVF.lookup_next (as sm@260@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@211@01))))) r))
  :qid |qp.fvfValDef206|)))
(assert (forall ((r $Ref)) (!
  (=>
    (= r x0@128@01)
    (=
      ($FVF.lookup_next (as sm@260@01  $FVF<next>) r)
      ($FVF.lookup_next (as sm@212@01  $FVF<next>) r)))
  :pattern (($FVF.lookup_next (as sm@260@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next (as sm@212@01  $FVF<next>) r))
  :qid |qp.fvfValDef207|)))
(assert (forall ((r $Ref)) (!
  (=>
    (ite
      (and
        (img@136@01 r)
        (Set_in (inv@135@01 r) (Set_union g0@126@01 g1@127@01)))
      (< $Perm.No (- (- $Perm.Write (pTaken@204@01 r)) (pTaken@209@01 r)))
      false)
    (=
      ($FVF.lookup_next (as sm@260@01  $FVF<next>) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@130@01))))) r)))
  :pattern (($FVF.lookup_next (as sm@260@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@130@01))))) r))
  :qid |qp.fvfValDef208|)))
(assert (forall ((r $Ref)) (!
  (and
    ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@211@01))))) r) r)
    ($FVF.loc_next ($FVF.lookup_next (as sm@212@01  $FVF<next>) r) r)
    ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@130@01))))) r) r))
  :pattern (($FVF.lookup_next (as sm@260@01  $FVF<next>) r))
  :qid |qp.fvfResTrgDef209|)))
; Check receiver injectivity
(push) ; 4
(assert (not (forall ((n1@257@01 $Ref) (n2@257@01 $Ref)) (!
  (=>
    (and
      (and
        (Set_in n1@257@01 g1@127@01)
        ($FVF.loc_next ($FVF.lookup_next (as sm@260@01  $FVF<next>) n1@257@01) n1@257@01))
      (and
        (Set_in n2@257@01 g1@127@01)
        ($FVF.loc_next ($FVF.lookup_next (as sm@260@01  $FVF<next>) n2@257@01) n2@257@01))
      (= n1@257@01 n2@257@01))
    (= n1@257@01 n2@257@01))
  
  :qid |next-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((n@257@01 $Ref)) (!
  (=>
    (Set_in n@257@01 g1@127@01)
    (and (= (inv@258@01 n@257@01) n@257@01) (img@259@01 n@257@01)))
  :pattern ((Set_in n@257@01 g1@127@01))
  :pattern ((inv@258@01 n@257@01))
  :pattern ((img@259@01 n@257@01))
  :qid |next-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@259@01 r) (Set_in (inv@258@01 r) g1@127@01))
    (= (inv@258@01 r) r))
  :pattern ((inv@258@01 r))
  :qid |next-fctOfInv|)))
(assert (forall ((r $Ref)) (!
  (=>
    (Set_in (inv@258@01 r) g1@127@01)
    ($FVF.loc_next ($FVF.lookup_next (as sm@260@01  $FVF<next>) r) r))
  :pattern ((inv@258@01 r))
  :qid |quant-u-14361|)))
(push) ; 4
(assert (not (forall ((r $Ref)) (!
  (=>
    (and (Set_in (inv@258@01 r) g1@127@01) (img@259@01 r) (= r (inv@258@01 r)))
    (>
      (+
        (+
          (ite
            (and
              (img@216@01 r)
              (and
                (Set_in (inv@215@01 r) (Set_union g0@126@01 g1@127@01))
                (not (= (inv@215@01 r) x0@128@01))))
            (/ (to_real 1) (to_real 2))
            $Perm.No)
          (ite
            (and
              (img@136@01 r)
              (Set_in (inv@135@01 r) (Set_union g0@126@01 g1@127@01)))
            (- (- $Perm.Write (pTaken@204@01 r)) (pTaken@209@01 r))
            $Perm.No))
        (ite (= r x0@128@01) $Perm.Write $Perm.No))
      $Perm.No))
  
  :qid |quant-u-14362|))))
(check-sat)
; unsat
(pop) ; 4
; 0.01s
; (get-info :all-statistics)
(declare-const sm@261@01 $FVF<next>)
; Definitional axioms for snapshot map domain
(assert (forall ((r $Ref)) (!
  (and
    (=>
      (Set_in r ($FVF.domain_next (as sm@261@01  $FVF<next>)))
      (and (Set_in (inv@258@01 r) g1@127@01) (img@259@01 r)))
    (=>
      (and (Set_in (inv@258@01 r) g1@127@01) (img@259@01 r))
      (Set_in r ($FVF.domain_next (as sm@261@01  $FVF<next>)))))
  :pattern ((Set_in r ($FVF.domain_next (as sm@261@01  $FVF<next>))))
  :qid |qp.fvfDomDef214|)))
; Definitional axioms for snapshot map values
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and (Set_in (inv@258@01 r) g1@127@01) (img@259@01 r))
      (and
        (img@216@01 r)
        (and
          (Set_in (inv@215@01 r) (Set_union g0@126@01 g1@127@01))
          (not (= (inv@215@01 r) x0@128@01)))))
    (=
      ($FVF.lookup_next (as sm@261@01  $FVF<next>) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@211@01))))) r)))
  :pattern (($FVF.lookup_next (as sm@261@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@211@01))))) r))
  :qid |qp.fvfValDef210|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and (and (Set_in (inv@258@01 r) g1@127@01) (img@259@01 r)) (= r x0@128@01))
    (=
      ($FVF.lookup_next (as sm@261@01  $FVF<next>) r)
      ($FVF.lookup_next (as sm@212@01  $FVF<next>) r)))
  :pattern (($FVF.lookup_next (as sm@261@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next (as sm@212@01  $FVF<next>) r))
  :qid |qp.fvfValDef211|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and (Set_in (inv@258@01 r) g1@127@01) (img@259@01 r))
      (ite
        (and
          (img@136@01 r)
          (Set_in (inv@135@01 r) (Set_union g0@126@01 g1@127@01)))
        (< $Perm.No (- (- $Perm.Write (pTaken@204@01 r)) (pTaken@209@01 r)))
        false))
    (=
      ($FVF.lookup_next (as sm@261@01  $FVF<next>) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@130@01))))) r)))
  :pattern (($FVF.lookup_next (as sm@261@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@130@01))))) r))
  :qid |qp.fvfValDef212|)))
(assert (forall ((r $Ref)) (!
  (and
    ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@211@01))))) r) r)
    ($FVF.loc_next ($FVF.lookup_next (as sm@212@01  $FVF<next>) r) r)
    ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@130@01))))) r) r))
  :pattern (($FVF.lookup_next (as sm@261@01  $FVF<next>) r))
  :qid |qp.fvfResTrgDef213|)))
; [eval] (g1 intersection g0) == Set[Ref]()
; [eval] (g1 intersection g0)
; [eval] Set[Ref]()
(assert (apply_TCFraming%precondition ($Snap.combine
  ($SortWrappers.$FVF<next>To$Snap (as sm@256@01  $FVF<next>))
  ($Snap.combine
    ($SortWrappers.$FVF<next>To$Snap (as sm@261@01  $FVF<next>))
    $Snap.unit)) g0@126@01 g1@127@01))
(pop) ; 3
; Joined path conditions
(assert (forall ((r $Ref)) (!
  (=>
    (ite
      (and
        (img@136@01 r)
        (Set_in (inv@135@01 r) (Set_union g0@126@01 g1@127@01)))
      (< $Perm.No (- (- $Perm.Write (pTaken@204@01 r)) (pTaken@209@01 r)))
      false)
    (=
      ($FVF.lookup_next (as sm@255@01  $FVF<next>) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@130@01))))) r)))
  :pattern (($FVF.lookup_next (as sm@255@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@130@01))))) r))
  :qid |qp.fvfValDef197|)))
(assert (forall ((r $Ref)) (!
  (=>
    (= r x0@128@01)
    (=
      ($FVF.lookup_next (as sm@255@01  $FVF<next>) r)
      ($FVF.lookup_next (as sm@212@01  $FVF<next>) r)))
  :pattern (($FVF.lookup_next (as sm@255@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next (as sm@212@01  $FVF<next>) r))
  :qid |qp.fvfValDef198|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@216@01 r)
      (and
        (Set_in (inv@215@01 r) (Set_union g0@126@01 g1@127@01))
        (not (= (inv@215@01 r) x0@128@01))))
    (=
      ($FVF.lookup_next (as sm@255@01  $FVF<next>) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@211@01))))) r)))
  :pattern (($FVF.lookup_next (as sm@255@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@211@01))))) r))
  :qid |qp.fvfValDef199|)))
(assert (forall ((r $Ref)) (!
  (and
    ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@130@01))))) r) r)
    ($FVF.loc_next ($FVF.lookup_next (as sm@212@01  $FVF<next>) r) r)
    ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@211@01))))) r) r))
  :pattern (($FVF.lookup_next (as sm@255@01  $FVF<next>) r))
  :qid |qp.fvfResTrgDef200|)))
(assert (forall ((n@252@01 $Ref)) (!
  (=>
    (Set_in n@252@01 g0@126@01)
    (and (= (inv@253@01 n@252@01) n@252@01) (img@254@01 n@252@01)))
  :pattern ((Set_in n@252@01 g0@126@01))
  :pattern ((inv@253@01 n@252@01))
  :pattern ((img@254@01 n@252@01))
  :qid |next-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@254@01 r) (Set_in (inv@253@01 r) g0@126@01))
    (= (inv@253@01 r) r))
  :pattern ((inv@253@01 r))
  :qid |next-fctOfInv|)))
(assert (forall ((r $Ref)) (!
  (and
    (=>
      (Set_in r ($FVF.domain_next (as sm@256@01  $FVF<next>)))
      (and (Set_in (inv@253@01 r) g0@126@01) (img@254@01 r)))
    (=>
      (and (Set_in (inv@253@01 r) g0@126@01) (img@254@01 r))
      (Set_in r ($FVF.domain_next (as sm@256@01  $FVF<next>)))))
  :pattern ((Set_in r ($FVF.domain_next (as sm@256@01  $FVF<next>))))
  :qid |qp.fvfDomDef205|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and (Set_in (inv@253@01 r) g0@126@01) (img@254@01 r))
      (ite
        (and
          (img@136@01 r)
          (Set_in (inv@135@01 r) (Set_union g0@126@01 g1@127@01)))
        (< $Perm.No (- (- $Perm.Write (pTaken@204@01 r)) (pTaken@209@01 r)))
        false))
    (=
      ($FVF.lookup_next (as sm@256@01  $FVF<next>) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@130@01))))) r)))
  :pattern (($FVF.lookup_next (as sm@256@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@130@01))))) r))
  :qid |qp.fvfValDef201|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and (and (Set_in (inv@253@01 r) g0@126@01) (img@254@01 r)) (= r x0@128@01))
    (=
      ($FVF.lookup_next (as sm@256@01  $FVF<next>) r)
      ($FVF.lookup_next (as sm@212@01  $FVF<next>) r)))
  :pattern (($FVF.lookup_next (as sm@256@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next (as sm@212@01  $FVF<next>) r))
  :qid |qp.fvfValDef202|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and (Set_in (inv@253@01 r) g0@126@01) (img@254@01 r))
      (and
        (img@216@01 r)
        (and
          (Set_in (inv@215@01 r) (Set_union g0@126@01 g1@127@01))
          (not (= (inv@215@01 r) x0@128@01)))))
    (=
      ($FVF.lookup_next (as sm@256@01  $FVF<next>) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@211@01))))) r)))
  :pattern (($FVF.lookup_next (as sm@256@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@211@01))))) r))
  :qid |qp.fvfValDef203|)))
(assert (forall ((r $Ref)) (!
  (and
    ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@130@01))))) r) r)
    ($FVF.loc_next ($FVF.lookup_next (as sm@212@01  $FVF<next>) r) r)
    ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@211@01))))) r) r))
  :pattern (($FVF.lookup_next (as sm@256@01  $FVF<next>) r))
  :qid |qp.fvfResTrgDef204|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@216@01 r)
      (and
        (Set_in (inv@215@01 r) (Set_union g0@126@01 g1@127@01))
        (not (= (inv@215@01 r) x0@128@01))))
    (=
      ($FVF.lookup_next (as sm@260@01  $FVF<next>) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@211@01))))) r)))
  :pattern (($FVF.lookup_next (as sm@260@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@211@01))))) r))
  :qid |qp.fvfValDef206|)))
(assert (forall ((r $Ref)) (!
  (=>
    (= r x0@128@01)
    (=
      ($FVF.lookup_next (as sm@260@01  $FVF<next>) r)
      ($FVF.lookup_next (as sm@212@01  $FVF<next>) r)))
  :pattern (($FVF.lookup_next (as sm@260@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next (as sm@212@01  $FVF<next>) r))
  :qid |qp.fvfValDef207|)))
(assert (forall ((r $Ref)) (!
  (=>
    (ite
      (and
        (img@136@01 r)
        (Set_in (inv@135@01 r) (Set_union g0@126@01 g1@127@01)))
      (< $Perm.No (- (- $Perm.Write (pTaken@204@01 r)) (pTaken@209@01 r)))
      false)
    (=
      ($FVF.lookup_next (as sm@260@01  $FVF<next>) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@130@01))))) r)))
  :pattern (($FVF.lookup_next (as sm@260@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@130@01))))) r))
  :qid |qp.fvfValDef208|)))
(assert (forall ((r $Ref)) (!
  (and
    ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@211@01))))) r) r)
    ($FVF.loc_next ($FVF.lookup_next (as sm@212@01  $FVF<next>) r) r)
    ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@130@01))))) r) r))
  :pattern (($FVF.lookup_next (as sm@260@01  $FVF<next>) r))
  :qid |qp.fvfResTrgDef209|)))
(assert (forall ((n@257@01 $Ref)) (!
  (=>
    (Set_in n@257@01 g1@127@01)
    (and (= (inv@258@01 n@257@01) n@257@01) (img@259@01 n@257@01)))
  :pattern ((Set_in n@257@01 g1@127@01))
  :pattern ((inv@258@01 n@257@01))
  :pattern ((img@259@01 n@257@01))
  :qid |next-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@259@01 r) (Set_in (inv@258@01 r) g1@127@01))
    (= (inv@258@01 r) r))
  :pattern ((inv@258@01 r))
  :qid |next-fctOfInv|)))
(assert (forall ((r $Ref)) (!
  (and
    (=>
      (Set_in r ($FVF.domain_next (as sm@261@01  $FVF<next>)))
      (and (Set_in (inv@258@01 r) g1@127@01) (img@259@01 r)))
    (=>
      (and (Set_in (inv@258@01 r) g1@127@01) (img@259@01 r))
      (Set_in r ($FVF.domain_next (as sm@261@01  $FVF<next>)))))
  :pattern ((Set_in r ($FVF.domain_next (as sm@261@01  $FVF<next>))))
  :qid |qp.fvfDomDef214|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and (Set_in (inv@258@01 r) g1@127@01) (img@259@01 r))
      (and
        (img@216@01 r)
        (and
          (Set_in (inv@215@01 r) (Set_union g0@126@01 g1@127@01))
          (not (= (inv@215@01 r) x0@128@01)))))
    (=
      ($FVF.lookup_next (as sm@261@01  $FVF<next>) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@211@01))))) r)))
  :pattern (($FVF.lookup_next (as sm@261@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@211@01))))) r))
  :qid |qp.fvfValDef210|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and (and (Set_in (inv@258@01 r) g1@127@01) (img@259@01 r)) (= r x0@128@01))
    (=
      ($FVF.lookup_next (as sm@261@01  $FVF<next>) r)
      ($FVF.lookup_next (as sm@212@01  $FVF<next>) r)))
  :pattern (($FVF.lookup_next (as sm@261@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next (as sm@212@01  $FVF<next>) r))
  :qid |qp.fvfValDef211|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and (Set_in (inv@258@01 r) g1@127@01) (img@259@01 r))
      (ite
        (and
          (img@136@01 r)
          (Set_in (inv@135@01 r) (Set_union g0@126@01 g1@127@01)))
        (< $Perm.No (- (- $Perm.Write (pTaken@204@01 r)) (pTaken@209@01 r)))
        false))
    (=
      ($FVF.lookup_next (as sm@261@01  $FVF<next>) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@130@01))))) r)))
  :pattern (($FVF.lookup_next (as sm@261@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@130@01))))) r))
  :qid |qp.fvfValDef212|)))
(assert (forall ((r $Ref)) (!
  (and
    ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@211@01))))) r) r)
    ($FVF.loc_next ($FVF.lookup_next (as sm@212@01  $FVF<next>) r) r)
    ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@130@01))))) r) r))
  :pattern (($FVF.lookup_next (as sm@261@01  $FVF<next>) r))
  :qid |qp.fvfResTrgDef213|)))
(assert (and
  (forall ((r $Ref)) (!
    (=>
      (Set_in (inv@253@01 r) g0@126@01)
      ($FVF.loc_next ($FVF.lookup_next (as sm@255@01  $FVF<next>) r) r))
    :pattern ((inv@253@01 r))
    :qid |quant-u-14358|))
  (forall ((r $Ref)) (!
    (=>
      (Set_in (inv@258@01 r) g1@127@01)
      ($FVF.loc_next ($FVF.lookup_next (as sm@260@01  $FVF<next>) r) r))
    :pattern ((inv@258@01 r))
    :qid |quant-u-14361|))
  (apply_TCFraming%precondition ($Snap.combine
    ($SortWrappers.$FVF<next>To$Snap (as sm@256@01  $FVF<next>))
    ($Snap.combine
      ($SortWrappers.$FVF<next>To$Snap (as sm@261@01  $FVF<next>))
      $Snap.unit)) g0@126@01 g1@127@01)))
(assert (apply_TCFraming ($Snap.combine
  ($SortWrappers.$FVF<next>To$Snap (as sm@256@01  $FVF<next>))
  ($Snap.combine
    ($SortWrappers.$FVF<next>To$Snap (as sm@261@01  $FVF<next>))
    $Snap.unit)) g0@126@01 g1@127@01))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [eval] !((null in g0))
; [eval] (null in g0)
(set-option :timeout 0)
(push) ; 3
(assert (not (not (Set_in $Ref.null g0@126@01))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(assert (not (Set_in $Ref.null g0@126@01)))
(declare-const n$3@262@01 $Ref)
(push) ; 3
; [eval] (n$3 in g0)
(assert (Set_in n$3@262@01 g0@126@01))
(declare-const sm@263@01 $FVF<next>)
; Definitional axioms for snapshot map values
(assert (forall ((r $Ref)) (!
  (=>
    (ite
      (and
        (img@136@01 r)
        (Set_in (inv@135@01 r) (Set_union g0@126@01 g1@127@01)))
      (< $Perm.No (- (- $Perm.Write (pTaken@204@01 r)) (pTaken@209@01 r)))
      false)
    (=
      ($FVF.lookup_next (as sm@263@01  $FVF<next>) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@130@01))))) r)))
  :pattern (($FVF.lookup_next (as sm@263@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@130@01))))) r))
  :qid |qp.fvfValDef215|)))
(assert (forall ((r $Ref)) (!
  (=>
    (= r x0@128@01)
    (=
      ($FVF.lookup_next (as sm@263@01  $FVF<next>) r)
      ($FVF.lookup_next (as sm@212@01  $FVF<next>) r)))
  :pattern (($FVF.lookup_next (as sm@263@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next (as sm@212@01  $FVF<next>) r))
  :qid |qp.fvfValDef216|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@216@01 r)
      (and
        (Set_in (inv@215@01 r) (Set_union g0@126@01 g1@127@01))
        (not (= (inv@215@01 r) x0@128@01))))
    (=
      ($FVF.lookup_next (as sm@263@01  $FVF<next>) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@211@01))))) r)))
  :pattern (($FVF.lookup_next (as sm@263@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@211@01))))) r))
  :qid |qp.fvfValDef217|)))
(assert (forall ((r $Ref)) (!
  (and
    ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@130@01))))) r) r)
    ($FVF.loc_next ($FVF.lookup_next (as sm@212@01  $FVF<next>) r) r)
    ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@211@01))))) r) r))
  :pattern (($FVF.lookup_next (as sm@263@01  $FVF<next>) r))
  :qid |qp.fvfResTrgDef218|)))
(pop) ; 3
(declare-fun inv@264@01 ($Ref) $Ref)
(declare-fun img@265@01 ($Ref) Bool)
; Nested auxiliary terms: globals
(assert (forall ((r $Ref)) (!
  (=>
    (ite
      (and
        (img@136@01 r)
        (Set_in (inv@135@01 r) (Set_union g0@126@01 g1@127@01)))
      (< $Perm.No (- (- $Perm.Write (pTaken@204@01 r)) (pTaken@209@01 r)))
      false)
    (=
      ($FVF.lookup_next (as sm@263@01  $FVF<next>) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@130@01))))) r)))
  :pattern (($FVF.lookup_next (as sm@263@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@130@01))))) r))
  :qid |qp.fvfValDef215|)))
(assert (forall ((r $Ref)) (!
  (=>
    (= r x0@128@01)
    (=
      ($FVF.lookup_next (as sm@263@01  $FVF<next>) r)
      ($FVF.lookup_next (as sm@212@01  $FVF<next>) r)))
  :pattern (($FVF.lookup_next (as sm@263@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next (as sm@212@01  $FVF<next>) r))
  :qid |qp.fvfValDef216|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@216@01 r)
      (and
        (Set_in (inv@215@01 r) (Set_union g0@126@01 g1@127@01))
        (not (= (inv@215@01 r) x0@128@01))))
    (=
      ($FVF.lookup_next (as sm@263@01  $FVF<next>) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@211@01))))) r)))
  :pattern (($FVF.lookup_next (as sm@263@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@211@01))))) r))
  :qid |qp.fvfValDef217|)))
(assert (forall ((r $Ref)) (!
  (and
    ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@130@01))))) r) r)
    ($FVF.loc_next ($FVF.lookup_next (as sm@212@01  $FVF<next>) r) r)
    ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@211@01))))) r) r))
  :pattern (($FVF.lookup_next (as sm@263@01  $FVF<next>) r))
  :qid |qp.fvfResTrgDef218|)))
; Nested auxiliary terms: non-globals
(declare-const sm@266@01 $FVF<next>)
; Definitional axioms for snapshot map values
(assert (forall ((r $Ref)) (!
  (=>
    (ite
      (and
        (img@136@01 r)
        (Set_in (inv@135@01 r) (Set_union g0@126@01 g1@127@01)))
      (< $Perm.No (- (- $Perm.Write (pTaken@204@01 r)) (pTaken@209@01 r)))
      false)
    (=
      ($FVF.lookup_next (as sm@266@01  $FVF<next>) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@130@01))))) r)))
  :pattern (($FVF.lookup_next (as sm@266@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@130@01))))) r))
  :qid |qp.fvfValDef219|)))
(assert (forall ((r $Ref)) (!
  (=>
    (= r x0@128@01)
    (=
      ($FVF.lookup_next (as sm@266@01  $FVF<next>) r)
      ($FVF.lookup_next (as sm@212@01  $FVF<next>) r)))
  :pattern (($FVF.lookup_next (as sm@266@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next (as sm@212@01  $FVF<next>) r))
  :qid |qp.fvfValDef220|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@216@01 r)
      (and
        (Set_in (inv@215@01 r) (Set_union g0@126@01 g1@127@01))
        (not (= (inv@215@01 r) x0@128@01))))
    (=
      ($FVF.lookup_next (as sm@266@01  $FVF<next>) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@211@01))))) r)))
  :pattern (($FVF.lookup_next (as sm@266@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@211@01))))) r))
  :qid |qp.fvfValDef221|)))
(assert (forall ((r $Ref)) (!
  (and
    ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@130@01))))) r) r)
    ($FVF.loc_next ($FVF.lookup_next (as sm@212@01  $FVF<next>) r) r)
    ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@211@01))))) r) r))
  :pattern (($FVF.lookup_next (as sm@266@01  $FVF<next>) r))
  :qid |qp.fvfResTrgDef222|)))
; Check receiver injectivity
(push) ; 3
(assert (not (forall ((n$31@262@01 $Ref) (n$32@262@01 $Ref)) (!
  (=>
    (and
      (and
        (Set_in n$31@262@01 g0@126@01)
        ($FVF.loc_next ($FVF.lookup_next (as sm@266@01  $FVF<next>) n$31@262@01) n$31@262@01))
      (and
        (Set_in n$32@262@01 g0@126@01)
        ($FVF.loc_next ($FVF.lookup_next (as sm@266@01  $FVF<next>) n$32@262@01) n$32@262@01))
      (= n$31@262@01 n$32@262@01))
    (= n$31@262@01 n$32@262@01))
  
  :qid |next-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((n$3@262@01 $Ref)) (!
  (=>
    (Set_in n$3@262@01 g0@126@01)
    (and (= (inv@264@01 n$3@262@01) n$3@262@01) (img@265@01 n$3@262@01)))
  :pattern (($FVF.loc_next ($FVF.lookup_next (as sm@263@01  $FVF<next>) n$3@262@01) n$3@262@01))
  :qid |next-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@265@01 r) (Set_in (inv@264@01 r) g0@126@01))
    (= (inv@264@01 r) r))
  :pattern ((inv@264@01 r))
  :qid |next-fctOfInv|)))
(assert (forall ((r $Ref)) (!
  (=>
    (Set_in (inv@264@01 r) g0@126@01)
    ($FVF.loc_next ($FVF.lookup_next (as sm@266@01  $FVF<next>) r) r))
  :pattern ((inv@264@01 r))
  :qid |quant-u-14364|)))
; Precomputing data for removing quantified permissions
(define-fun pTaken@267@01 ((r $Ref)) $Perm
  (ite
    (and (Set_in (inv@264@01 r) g0@126@01) (img@265@01 r) (= r (inv@264@01 r)))
    ($Perm.min
      (ite
        (and
          (img@136@01 r)
          (Set_in (inv@135@01 r) (Set_union g0@126@01 g1@127@01)))
        (- (- $Perm.Write (pTaken@204@01 r)) (pTaken@209@01 r))
        $Perm.No)
      $Perm.Write)
    $Perm.No))
(define-fun pTaken@268@01 ((r $Ref)) $Perm
  (ite
    (and (Set_in (inv@264@01 r) g0@126@01) (img@265@01 r) (= r (inv@264@01 r)))
    ($Perm.min
      (ite
        (and
          (img@216@01 r)
          (and
            (Set_in (inv@215@01 r) (Set_union g0@126@01 g1@127@01))
            (not (= (inv@215@01 r) x0@128@01))))
        (/ (to_real 1) (to_real 2))
        $Perm.No)
      (- $Perm.Write (pTaken@267@01 r)))
    $Perm.No))
(define-fun pTaken@269@01 ((r $Ref)) $Perm
  (ite
    (and (Set_in (inv@264@01 r) g0@126@01) (img@265@01 r) (= r (inv@264@01 r)))
    ($Perm.min
      (ite (= r x0@128@01) $Perm.Write $Perm.No)
      (- (- $Perm.Write (pTaken@267@01 r)) (pTaken@268@01 r)))
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
          (img@136@01 r)
          (Set_in (inv@135@01 r) (Set_union g0@126@01 g1@127@01)))
        (- (- $Perm.Write (pTaken@204@01 r)) (pTaken@209@01 r))
        $Perm.No)
      (pTaken@267@01 r))
    $Perm.No)
  
  :qid |quant-u-14366|))))
(check-sat)
; unknown
(pop) ; 3
; 0.50s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (forall ((r $Ref)) (!
  (= (pTaken@267@01 r) $Perm.No)
  
  :qid |quant-u-14367|))))
(check-sat)
; unknown
(pop) ; 3
; 0.01s
; (get-info :all-statistics)
; Intermediate check if already taken enough permissions
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 500)
(assert (not (forall ((r $Ref)) (!
  (=>
    (and (Set_in (inv@264@01 r) g0@126@01) (img@265@01 r) (= r (inv@264@01 r)))
    (= (- $Perm.Write (pTaken@267@01 r)) $Perm.No))
  
  :qid |quant-u-14368|))))
(check-sat)
; unknown
(pop) ; 3
; 0.50s
; (get-info :all-statistics)
; Chunk depleted?
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 500)
(assert (not (forall ((r $Ref)) (!
  (=
    (-
      (ite
        (and
          (img@216@01 r)
          (and
            (Set_in (inv@215@01 r) (Set_union g0@126@01 g1@127@01))
            (not (= (inv@215@01 r) x0@128@01))))
        (/ (to_real 1) (to_real 2))
        $Perm.No)
      (pTaken@268@01 r))
    $Perm.No)
  
  :qid |quant-u-14369|))))
(check-sat)
; unknown
(pop) ; 3
; 0.50s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (forall ((r $Ref)) (!
  (= (pTaken@268@01 r) $Perm.No)
  
  :qid |quant-u-14370|))))
(check-sat)
; unknown
(pop) ; 3
; 0.01s
; (get-info :all-statistics)
; Intermediate check if already taken enough permissions
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 500)
(assert (not (forall ((r $Ref)) (!
  (=>
    (and (Set_in (inv@264@01 r) g0@126@01) (img@265@01 r) (= r (inv@264@01 r)))
    (= (- (- $Perm.Write (pTaken@267@01 r)) (pTaken@268@01 r)) $Perm.No))
  
  :qid |quant-u-14371|))))
(check-sat)
; unknown
(pop) ; 3
; 0.50s
; (get-info :all-statistics)
; Chunk depleted?
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 500)
(assert (not (= (- $Perm.Write (pTaken@269@01 x0@128@01)) $Perm.No)))
(check-sat)
; unsat
(pop) ; 3
; 0.02s
; (get-info :all-statistics)
; Intermediate check if already taken enough permissions
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 500)
(assert (not (forall ((r $Ref)) (!
  (=>
    (and (Set_in (inv@264@01 r) g0@126@01) (img@265@01 r) (= r (inv@264@01 r)))
    (=
      (-
        (- (- $Perm.Write (pTaken@267@01 r)) (pTaken@268@01 r))
        (pTaken@269@01 r))
      $Perm.No))
  
  :qid |quant-u-14373|))))
(check-sat)
; unsat
(pop) ; 3
; 0.02s
; (get-info :all-statistics)
; Final check if taken enough permissions
; Done removing quantified permissions
; [eval] (forall n$4: Ref :: { (n$4.next in g0) } { (n$4 in g0), n$4.next } (n$4 in g0) && n$4.next != null ==> (n$4.next in g0))
(declare-const n$4@270@01 $Ref)
(set-option :timeout 0)
(push) ; 3
; [eval] (n$4 in g0) && n$4.next != null ==> (n$4.next in g0)
; [eval] (n$4 in g0) && n$4.next != null
; [eval] (n$4 in g0)
(push) ; 4
; [then-branch: 59 | !(n$4@270@01 in g0@126@01) | live]
; [else-branch: 59 | n$4@270@01 in g0@126@01 | live]
(push) ; 5
; [then-branch: 59 | !(n$4@270@01 in g0@126@01)]
(assert (not (Set_in n$4@270@01 g0@126@01)))
(pop) ; 5
(push) ; 5
; [else-branch: 59 | n$4@270@01 in g0@126@01]
(assert (Set_in n$4@270@01 g0@126@01))
; [eval] n$4.next != null
(assert (and
  (forall ((r $Ref)) (!
    (=>
      (ite
        (and
          (img@136@01 r)
          (Set_in (inv@135@01 r) (Set_union g0@126@01 g1@127@01)))
        (< $Perm.No (- (- $Perm.Write (pTaken@204@01 r)) (pTaken@209@01 r)))
        false)
      (=
        ($FVF.lookup_next (as sm@266@01  $FVF<next>) r)
        ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@130@01))))) r)))
    :pattern (($FVF.lookup_next (as sm@266@01  $FVF<next>) r))
    :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@130@01))))) r))
    :qid |qp.fvfValDef219|))
  (forall ((r $Ref)) (!
    (=>
      (= r x0@128@01)
      (=
        ($FVF.lookup_next (as sm@266@01  $FVF<next>) r)
        ($FVF.lookup_next (as sm@212@01  $FVF<next>) r)))
    :pattern (($FVF.lookup_next (as sm@266@01  $FVF<next>) r))
    :pattern (($FVF.lookup_next (as sm@212@01  $FVF<next>) r))
    :qid |qp.fvfValDef220|))
  (forall ((r $Ref)) (!
    (=>
      (and
        (img@216@01 r)
        (and
          (Set_in (inv@215@01 r) (Set_union g0@126@01 g1@127@01))
          (not (= (inv@215@01 r) x0@128@01))))
      (=
        ($FVF.lookup_next (as sm@266@01  $FVF<next>) r)
        ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@211@01))))) r)))
    :pattern (($FVF.lookup_next (as sm@266@01  $FVF<next>) r))
    :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@211@01))))) r))
    :qid |qp.fvfValDef221|))
  (forall ((r $Ref)) (!
    (and
      ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@130@01))))) r) r)
      ($FVF.loc_next ($FVF.lookup_next (as sm@212@01  $FVF<next>) r) r)
      ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@211@01))))) r) r))
    :pattern (($FVF.lookup_next (as sm@266@01  $FVF<next>) r))
    :qid |qp.fvfResTrgDef222|))))
(assert ($FVF.loc_next ($FVF.lookup_next (as sm@266@01  $FVF<next>) n$4@270@01) n$4@270@01))
(push) ; 6
(assert (not (<
  $Perm.No
  (+
    (+
      (ite
        (and
          (img@136@01 n$4@270@01)
          (Set_in (inv@135@01 n$4@270@01) (Set_union g0@126@01 g1@127@01)))
        (- (- $Perm.Write (pTaken@204@01 n$4@270@01)) (pTaken@209@01 n$4@270@01))
        $Perm.No)
      (ite (= n$4@270@01 x0@128@01) $Perm.Write $Perm.No))
    (ite
      (and
        (img@216@01 n$4@270@01)
        (and
          (Set_in (inv@215@01 n$4@270@01) (Set_union g0@126@01 g1@127@01))
          (not (= (inv@215@01 n$4@270@01) x0@128@01))))
      (/ (to_real 1) (to_real 2))
      $Perm.No)))))
(check-sat)
; unsat
(pop) ; 6
; 0.02s
; (get-info :all-statistics)
(pop) ; 5
(pop) ; 4
; Joined path conditions
; Joined path conditions
(assert (forall ((r $Ref)) (!
  (=>
    (ite
      (and
        (img@136@01 r)
        (Set_in (inv@135@01 r) (Set_union g0@126@01 g1@127@01)))
      (< $Perm.No (- (- $Perm.Write (pTaken@204@01 r)) (pTaken@209@01 r)))
      false)
    (=
      ($FVF.lookup_next (as sm@266@01  $FVF<next>) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@130@01))))) r)))
  :pattern (($FVF.lookup_next (as sm@266@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@130@01))))) r))
  :qid |qp.fvfValDef219|)))
(assert (forall ((r $Ref)) (!
  (=>
    (= r x0@128@01)
    (=
      ($FVF.lookup_next (as sm@266@01  $FVF<next>) r)
      ($FVF.lookup_next (as sm@212@01  $FVF<next>) r)))
  :pattern (($FVF.lookup_next (as sm@266@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next (as sm@212@01  $FVF<next>) r))
  :qid |qp.fvfValDef220|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@216@01 r)
      (and
        (Set_in (inv@215@01 r) (Set_union g0@126@01 g1@127@01))
        (not (= (inv@215@01 r) x0@128@01))))
    (=
      ($FVF.lookup_next (as sm@266@01  $FVF<next>) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@211@01))))) r)))
  :pattern (($FVF.lookup_next (as sm@266@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@211@01))))) r))
  :qid |qp.fvfValDef221|)))
(assert (forall ((r $Ref)) (!
  (and
    ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@130@01))))) r) r)
    ($FVF.loc_next ($FVF.lookup_next (as sm@212@01  $FVF<next>) r) r)
    ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@211@01))))) r) r))
  :pattern (($FVF.lookup_next (as sm@266@01  $FVF<next>) r))
  :qid |qp.fvfResTrgDef222|)))
(assert (=>
  (Set_in n$4@270@01 g0@126@01)
  (and
    (Set_in n$4@270@01 g0@126@01)
    ($FVF.loc_next ($FVF.lookup_next (as sm@266@01  $FVF<next>) n$4@270@01) n$4@270@01))))
(assert (or (Set_in n$4@270@01 g0@126@01) (not (Set_in n$4@270@01 g0@126@01))))
(push) ; 4
; [then-branch: 60 | n$4@270@01 in g0@126@01 && Lookup(next, sm@266@01, n$4@270@01) != Null | live]
; [else-branch: 60 | !(n$4@270@01 in g0@126@01 && Lookup(next, sm@266@01, n$4@270@01) != Null) | live]
(push) ; 5
; [then-branch: 60 | n$4@270@01 in g0@126@01 && Lookup(next, sm@266@01, n$4@270@01) != Null]
(assert (and
  (Set_in n$4@270@01 g0@126@01)
  (not (= ($FVF.lookup_next (as sm@266@01  $FVF<next>) n$4@270@01) $Ref.null))))
; [eval] (n$4.next in g0)
(assert (and
  (forall ((r $Ref)) (!
    (=>
      (ite
        (and
          (img@136@01 r)
          (Set_in (inv@135@01 r) (Set_union g0@126@01 g1@127@01)))
        (< $Perm.No (- (- $Perm.Write (pTaken@204@01 r)) (pTaken@209@01 r)))
        false)
      (=
        ($FVF.lookup_next (as sm@266@01  $FVF<next>) r)
        ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@130@01))))) r)))
    :pattern (($FVF.lookup_next (as sm@266@01  $FVF<next>) r))
    :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@130@01))))) r))
    :qid |qp.fvfValDef219|))
  (forall ((r $Ref)) (!
    (=>
      (= r x0@128@01)
      (=
        ($FVF.lookup_next (as sm@266@01  $FVF<next>) r)
        ($FVF.lookup_next (as sm@212@01  $FVF<next>) r)))
    :pattern (($FVF.lookup_next (as sm@266@01  $FVF<next>) r))
    :pattern (($FVF.lookup_next (as sm@212@01  $FVF<next>) r))
    :qid |qp.fvfValDef220|))
  (forall ((r $Ref)) (!
    (=>
      (and
        (img@216@01 r)
        (and
          (Set_in (inv@215@01 r) (Set_union g0@126@01 g1@127@01))
          (not (= (inv@215@01 r) x0@128@01))))
      (=
        ($FVF.lookup_next (as sm@266@01  $FVF<next>) r)
        ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@211@01))))) r)))
    :pattern (($FVF.lookup_next (as sm@266@01  $FVF<next>) r))
    :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@211@01))))) r))
    :qid |qp.fvfValDef221|))
  (forall ((r $Ref)) (!
    (and
      ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@130@01))))) r) r)
      ($FVF.loc_next ($FVF.lookup_next (as sm@212@01  $FVF<next>) r) r)
      ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@211@01))))) r) r))
    :pattern (($FVF.lookup_next (as sm@266@01  $FVF<next>) r))
    :qid |qp.fvfResTrgDef222|))))
(assert ($FVF.loc_next ($FVF.lookup_next (as sm@266@01  $FVF<next>) n$4@270@01) n$4@270@01))
(push) ; 6
(assert (not (<
  $Perm.No
  (+
    (+
      (ite
        (and
          (img@136@01 n$4@270@01)
          (Set_in (inv@135@01 n$4@270@01) (Set_union g0@126@01 g1@127@01)))
        (- (- $Perm.Write (pTaken@204@01 n$4@270@01)) (pTaken@209@01 n$4@270@01))
        $Perm.No)
      (ite (= n$4@270@01 x0@128@01) $Perm.Write $Perm.No))
    (ite
      (and
        (img@216@01 n$4@270@01)
        (and
          (Set_in (inv@215@01 n$4@270@01) (Set_union g0@126@01 g1@127@01))
          (not (= (inv@215@01 n$4@270@01) x0@128@01))))
      (/ (to_real 1) (to_real 2))
      $Perm.No)))))
(check-sat)
; unsat
(pop) ; 6
; 0.01s
; (get-info :all-statistics)
(pop) ; 5
(push) ; 5
; [else-branch: 60 | !(n$4@270@01 in g0@126@01 && Lookup(next, sm@266@01, n$4@270@01) != Null)]
(assert (not
  (and
    (Set_in n$4@270@01 g0@126@01)
    (not (= ($FVF.lookup_next (as sm@266@01  $FVF<next>) n$4@270@01) $Ref.null)))))
(pop) ; 5
(pop) ; 4
; Joined path conditions
(assert (forall ((r $Ref)) (!
  (=>
    (ite
      (and
        (img@136@01 r)
        (Set_in (inv@135@01 r) (Set_union g0@126@01 g1@127@01)))
      (< $Perm.No (- (- $Perm.Write (pTaken@204@01 r)) (pTaken@209@01 r)))
      false)
    (=
      ($FVF.lookup_next (as sm@266@01  $FVF<next>) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@130@01))))) r)))
  :pattern (($FVF.lookup_next (as sm@266@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@130@01))))) r))
  :qid |qp.fvfValDef219|)))
(assert (forall ((r $Ref)) (!
  (=>
    (= r x0@128@01)
    (=
      ($FVF.lookup_next (as sm@266@01  $FVF<next>) r)
      ($FVF.lookup_next (as sm@212@01  $FVF<next>) r)))
  :pattern (($FVF.lookup_next (as sm@266@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next (as sm@212@01  $FVF<next>) r))
  :qid |qp.fvfValDef220|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@216@01 r)
      (and
        (Set_in (inv@215@01 r) (Set_union g0@126@01 g1@127@01))
        (not (= (inv@215@01 r) x0@128@01))))
    (=
      ($FVF.lookup_next (as sm@266@01  $FVF<next>) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@211@01))))) r)))
  :pattern (($FVF.lookup_next (as sm@266@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@211@01))))) r))
  :qid |qp.fvfValDef221|)))
(assert (forall ((r $Ref)) (!
  (and
    ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@130@01))))) r) r)
    ($FVF.loc_next ($FVF.lookup_next (as sm@212@01  $FVF<next>) r) r)
    ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@211@01))))) r) r))
  :pattern (($FVF.lookup_next (as sm@266@01  $FVF<next>) r))
  :qid |qp.fvfResTrgDef222|)))
(assert (=>
  (and
    (Set_in n$4@270@01 g0@126@01)
    (not (= ($FVF.lookup_next (as sm@266@01  $FVF<next>) n$4@270@01) $Ref.null)))
  (and
    (Set_in n$4@270@01 g0@126@01)
    (not (= ($FVF.lookup_next (as sm@266@01  $FVF<next>) n$4@270@01) $Ref.null))
    ($FVF.loc_next ($FVF.lookup_next (as sm@266@01  $FVF<next>) n$4@270@01) n$4@270@01))))
; Joined path conditions
(assert (or
  (not
    (and
      (Set_in n$4@270@01 g0@126@01)
      (not
        (= ($FVF.lookup_next (as sm@266@01  $FVF<next>) n$4@270@01) $Ref.null))))
  (and
    (Set_in n$4@270@01 g0@126@01)
    (not (= ($FVF.lookup_next (as sm@266@01  $FVF<next>) n$4@270@01) $Ref.null)))))
; Definitional axioms for snapshot map values
(pop) ; 3
; Nested auxiliary terms: globals (aux)
(assert (forall ((r $Ref)) (!
  (=>
    (ite
      (and
        (img@136@01 r)
        (Set_in (inv@135@01 r) (Set_union g0@126@01 g1@127@01)))
      (< $Perm.No (- (- $Perm.Write (pTaken@204@01 r)) (pTaken@209@01 r)))
      false)
    (=
      ($FVF.lookup_next (as sm@266@01  $FVF<next>) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@130@01))))) r)))
  :pattern (($FVF.lookup_next (as sm@266@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@130@01))))) r))
  :qid |qp.fvfValDef219|)))
(assert (forall ((r $Ref)) (!
  (=>
    (= r x0@128@01)
    (=
      ($FVF.lookup_next (as sm@266@01  $FVF<next>) r)
      ($FVF.lookup_next (as sm@212@01  $FVF<next>) r)))
  :pattern (($FVF.lookup_next (as sm@266@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next (as sm@212@01  $FVF<next>) r))
  :qid |qp.fvfValDef220|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@216@01 r)
      (and
        (Set_in (inv@215@01 r) (Set_union g0@126@01 g1@127@01))
        (not (= (inv@215@01 r) x0@128@01))))
    (=
      ($FVF.lookup_next (as sm@266@01  $FVF<next>) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@211@01))))) r)))
  :pattern (($FVF.lookup_next (as sm@266@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@211@01))))) r))
  :qid |qp.fvfValDef221|)))
(assert (forall ((r $Ref)) (!
  (and
    ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@130@01))))) r) r)
    ($FVF.loc_next ($FVF.lookup_next (as sm@212@01  $FVF<next>) r) r)
    ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@211@01))))) r) r))
  :pattern (($FVF.lookup_next (as sm@266@01  $FVF<next>) r))
  :qid |qp.fvfResTrgDef222|)))
; Nested auxiliary terms: non-globals (aux)
(assert (forall ((n$4@270@01 $Ref)) (!
  (and
    (=>
      (Set_in n$4@270@01 g0@126@01)
      (and
        (Set_in n$4@270@01 g0@126@01)
        ($FVF.loc_next ($FVF.lookup_next (as sm@266@01  $FVF<next>) n$4@270@01) n$4@270@01)))
    (or (Set_in n$4@270@01 g0@126@01) (not (Set_in n$4@270@01 g0@126@01)))
    (=>
      (and
        (Set_in n$4@270@01 g0@126@01)
        (not
          (= ($FVF.lookup_next (as sm@266@01  $FVF<next>) n$4@270@01) $Ref.null)))
      (and
        (Set_in n$4@270@01 g0@126@01)
        (not
          (= ($FVF.lookup_next (as sm@266@01  $FVF<next>) n$4@270@01) $Ref.null))
        ($FVF.loc_next ($FVF.lookup_next (as sm@266@01  $FVF<next>) n$4@270@01) n$4@270@01)))
    (or
      (not
        (and
          (Set_in n$4@270@01 g0@126@01)
          (not
            (=
              ($FVF.lookup_next (as sm@266@01  $FVF<next>) n$4@270@01)
              $Ref.null))))
      (and
        (Set_in n$4@270@01 g0@126@01)
        (not
          (= ($FVF.lookup_next (as sm@266@01  $FVF<next>) n$4@270@01) $Ref.null)))))
  :pattern ((Set_in ($FVF.lookup_next (as sm@266@01  $FVF<next>) n$4@270@01) g0@126@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/graphs/static/tests/lists/delete_edge1.vpr@344@13@344@22-aux|)))
(assert (forall ((n$4@270@01 $Ref)) (!
  (and
    (=>
      (Set_in n$4@270@01 g0@126@01)
      (and
        (Set_in n$4@270@01 g0@126@01)
        ($FVF.loc_next ($FVF.lookup_next (as sm@266@01  $FVF<next>) n$4@270@01) n$4@270@01)))
    (or (Set_in n$4@270@01 g0@126@01) (not (Set_in n$4@270@01 g0@126@01)))
    (=>
      (and
        (Set_in n$4@270@01 g0@126@01)
        (not
          (= ($FVF.lookup_next (as sm@266@01  $FVF<next>) n$4@270@01) $Ref.null)))
      (and
        (Set_in n$4@270@01 g0@126@01)
        (not
          (= ($FVF.lookup_next (as sm@266@01  $FVF<next>) n$4@270@01) $Ref.null))
        ($FVF.loc_next ($FVF.lookup_next (as sm@266@01  $FVF<next>) n$4@270@01) n$4@270@01)))
    (or
      (not
        (and
          (Set_in n$4@270@01 g0@126@01)
          (not
            (=
              ($FVF.lookup_next (as sm@266@01  $FVF<next>) n$4@270@01)
              $Ref.null))))
      (and
        (Set_in n$4@270@01 g0@126@01)
        (not
          (= ($FVF.lookup_next (as sm@266@01  $FVF<next>) n$4@270@01) $Ref.null)))))
  :pattern ((Set_in n$4@270@01 g0@126@01) ($FVF.loc_next ($FVF.lookup_next (as sm@266@01  $FVF<next>) n$4@270@01) n$4@270@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/graphs/static/tests/lists/delete_edge1.vpr@344@13@344@22-aux|)))
(push) ; 3
(assert (not (forall ((n$4@270@01 $Ref)) (!
  (=>
    (and
      (Set_in n$4@270@01 g0@126@01)
      (not
        (= ($FVF.lookup_next (as sm@266@01  $FVF<next>) n$4@270@01) $Ref.null)))
    (Set_in ($FVF.lookup_next (as sm@266@01  $FVF<next>) n$4@270@01) g0@126@01))
  :pattern ((Set_in ($FVF.lookup_next (as sm@266@01  $FVF<next>) n$4@270@01) g0@126@01))
  :pattern ((Set_in n$4@270@01 g0@126@01) ($FVF.loc_next ($FVF.lookup_next (as sm@266@01  $FVF<next>) n$4@270@01) n$4@270@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/graphs/static/tests/lists/delete_edge1.vpr@344@13@344@22|))))
(check-sat)
; unsat
(pop) ; 3
; 0.02s
; (get-info :all-statistics)
(assert (forall ((n$4@270@01 $Ref)) (!
  (=>
    (and
      (Set_in n$4@270@01 g0@126@01)
      (not
        (= ($FVF.lookup_next (as sm@266@01  $FVF<next>) n$4@270@01) $Ref.null)))
    (Set_in ($FVF.lookup_next (as sm@266@01  $FVF<next>) n$4@270@01) g0@126@01))
  :pattern ((Set_in ($FVF.lookup_next (as sm@266@01  $FVF<next>) n$4@270@01) g0@126@01))
  :pattern ((Set_in n$4@270@01 g0@126@01) ($FVF.loc_next ($FVF.lookup_next (as sm@266@01  $FVF<next>) n$4@270@01) n$4@270@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/graphs/static/tests/lists/delete_edge1.vpr@344@13@344@22|)))
; [eval] !((null in g1))
; [eval] (null in g1)
(push) ; 3
(assert (not (not (Set_in $Ref.null g1@127@01))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(assert (not (Set_in $Ref.null g1@127@01)))
(declare-const n$5@271@01 $Ref)
(push) ; 3
; [eval] (n$5 in g1)
(assert (Set_in n$5@271@01 g1@127@01))
; Definitional axioms for snapshot map values
(pop) ; 3
(declare-fun inv@272@01 ($Ref) $Ref)
(declare-fun img@273@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
(declare-const sm@274@01 $FVF<next>)
; Definitional axioms for snapshot map values
(assert (forall ((r $Ref)) (!
  (=>
    (ite
      (and
        (img@216@01 r)
        (and
          (Set_in (inv@215@01 r) (Set_union g0@126@01 g1@127@01))
          (not (= (inv@215@01 r) x0@128@01))))
      (< $Perm.No (- (/ (to_real 1) (to_real 2)) (pTaken@268@01 r)))
      false)
    (=
      ($FVF.lookup_next (as sm@274@01  $FVF<next>) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@211@01))))) r)))
  :pattern (($FVF.lookup_next (as sm@274@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@211@01))))) r))
  :qid |qp.fvfValDef223|)))
(assert (forall ((r $Ref)) (!
  (=>
    (ite
      (and
        (img@136@01 r)
        (Set_in (inv@135@01 r) (Set_union g0@126@01 g1@127@01)))
      (<
        $Perm.No
        (-
          (- (- $Perm.Write (pTaken@204@01 r)) (pTaken@209@01 r))
          (pTaken@267@01 r)))
      false)
    (=
      ($FVF.lookup_next (as sm@274@01  $FVF<next>) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@130@01))))) r)))
  :pattern (($FVF.lookup_next (as sm@274@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@130@01))))) r))
  :qid |qp.fvfValDef224|)))
(assert (forall ((r $Ref)) (!
  (and
    ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@211@01))))) r) r)
    ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@130@01))))) r) r))
  :pattern (($FVF.lookup_next (as sm@274@01  $FVF<next>) r))
  :qid |qp.fvfResTrgDef225|)))
; Check receiver injectivity
(push) ; 3
(assert (not (forall ((n$51@271@01 $Ref) (n$52@271@01 $Ref)) (!
  (=>
    (and
      (and
        (Set_in n$51@271@01 g1@127@01)
        ($FVF.loc_next ($FVF.lookup_next (as sm@274@01  $FVF<next>) n$51@271@01) n$51@271@01))
      (and
        (Set_in n$52@271@01 g1@127@01)
        ($FVF.loc_next ($FVF.lookup_next (as sm@274@01  $FVF<next>) n$52@271@01) n$52@271@01))
      (= n$51@271@01 n$52@271@01))
    (= n$51@271@01 n$52@271@01))
  
  :qid |next-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((n$5@271@01 $Ref)) (!
  (=>
    (Set_in n$5@271@01 g1@127@01)
    (and (= (inv@272@01 n$5@271@01) n$5@271@01) (img@273@01 n$5@271@01)))
  :pattern (($FVF.loc_next ($FVF.lookup_next (as sm@266@01  $FVF<next>) n$5@271@01) n$5@271@01))
  :qid |next-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@273@01 r) (Set_in (inv@272@01 r) g1@127@01))
    (= (inv@272@01 r) r))
  :pattern ((inv@272@01 r))
  :qid |next-fctOfInv|)))
(assert (forall ((r $Ref)) (!
  (=>
    (Set_in (inv@272@01 r) g1@127@01)
    ($FVF.loc_next ($FVF.lookup_next (as sm@274@01  $FVF<next>) r) r))
  :pattern ((inv@272@01 r))
  :qid |quant-u-14375|)))
; Precomputing data for removing quantified permissions
(define-fun pTaken@275@01 ((r $Ref)) $Perm
  (ite
    (and (Set_in (inv@272@01 r) g1@127@01) (img@273@01 r) (= r (inv@272@01 r)))
    ($Perm.min
      (ite
        (and
          (img@216@01 r)
          (and
            (Set_in (inv@215@01 r) (Set_union g0@126@01 g1@127@01))
            (not (= (inv@215@01 r) x0@128@01))))
        (- (/ (to_real 1) (to_real 2)) (pTaken@268@01 r))
        $Perm.No)
      $Perm.Write)
    $Perm.No))
(define-fun pTaken@276@01 ((r $Ref)) $Perm
  (ite
    (and (Set_in (inv@272@01 r) g1@127@01) (img@273@01 r) (= r (inv@272@01 r)))
    ($Perm.min
      (ite
        (and
          (img@136@01 r)
          (Set_in (inv@135@01 r) (Set_union g0@126@01 g1@127@01)))
        (-
          (- (- $Perm.Write (pTaken@204@01 r)) (pTaken@209@01 r))
          (pTaken@267@01 r))
        $Perm.No)
      (- $Perm.Write (pTaken@275@01 r)))
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
          (img@216@01 r)
          (and
            (Set_in (inv@215@01 r) (Set_union g0@126@01 g1@127@01))
            (not (= (inv@215@01 r) x0@128@01))))
        (- (/ (to_real 1) (to_real 2)) (pTaken@268@01 r))
        $Perm.No)
      (pTaken@275@01 r))
    $Perm.No)
  
  :qid |quant-u-14377|))))
(check-sat)
; unsat
(pop) ; 3
; 0.02s
; (get-info :all-statistics)
; Intermediate check if already taken enough permissions
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 500)
(assert (not (forall ((r $Ref)) (!
  (=>
    (and (Set_in (inv@272@01 r) g1@127@01) (img@273@01 r) (= r (inv@272@01 r)))
    (= (- $Perm.Write (pTaken@275@01 r)) $Perm.No))
  
  :qid |quant-u-14378|))))
(check-sat)
; unknown
(pop) ; 3
; 0.50s
; (get-info :all-statistics)
; Chunk depleted?
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 500)
(assert (not (forall ((r $Ref)) (!
  (=
    (-
      (ite
        (and
          (img@136@01 r)
          (Set_in (inv@135@01 r) (Set_union g0@126@01 g1@127@01)))
        (-
          (- (- $Perm.Write (pTaken@204@01 r)) (pTaken@209@01 r))
          (pTaken@267@01 r))
        $Perm.No)
      (pTaken@276@01 r))
    $Perm.No)
  
  :qid |quant-u-14379|))))
(check-sat)
; unsat
(pop) ; 3
; 0.04s
; (get-info :all-statistics)
; Intermediate check if already taken enough permissions
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 500)
(assert (not (forall ((r $Ref)) (!
  (=>
    (and (Set_in (inv@272@01 r) g1@127@01) (img@273@01 r) (= r (inv@272@01 r)))
    (= (- (- $Perm.Write (pTaken@275@01 r)) (pTaken@276@01 r)) $Perm.No))
  
  :qid |quant-u-14380|))))
(check-sat)
; unsat
(pop) ; 3
; 0.02s
; (get-info :all-statistics)
; Final check if taken enough permissions
; Done removing quantified permissions
; [eval] (forall n$6: Ref :: { (n$6.next in g1) } { (n$6 in g1), n$6.next } (n$6 in g1) && n$6.next != null ==> (n$6.next in g1))
(declare-const n$6@277@01 $Ref)
(set-option :timeout 0)
(push) ; 3
; [eval] (n$6 in g1) && n$6.next != null ==> (n$6.next in g1)
; [eval] (n$6 in g1) && n$6.next != null
; [eval] (n$6 in g1)
(push) ; 4
; [then-branch: 61 | !(n$6@277@01 in g1@127@01) | live]
; [else-branch: 61 | n$6@277@01 in g1@127@01 | live]
(push) ; 5
; [then-branch: 61 | !(n$6@277@01 in g1@127@01)]
(assert (not (Set_in n$6@277@01 g1@127@01)))
(pop) ; 5
(push) ; 5
; [else-branch: 61 | n$6@277@01 in g1@127@01]
(assert (Set_in n$6@277@01 g1@127@01))
; [eval] n$6.next != null
(assert (and
  (forall ((r $Ref)) (!
    (=>
      (ite
        (and
          (img@136@01 r)
          (Set_in (inv@135@01 r) (Set_union g0@126@01 g1@127@01)))
        (< $Perm.No (- (- $Perm.Write (pTaken@204@01 r)) (pTaken@209@01 r)))
        false)
      (=
        ($FVF.lookup_next (as sm@266@01  $FVF<next>) r)
        ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@130@01))))) r)))
    :pattern (($FVF.lookup_next (as sm@266@01  $FVF<next>) r))
    :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@130@01))))) r))
    :qid |qp.fvfValDef219|))
  (forall ((r $Ref)) (!
    (=>
      (= r x0@128@01)
      (=
        ($FVF.lookup_next (as sm@266@01  $FVF<next>) r)
        ($FVF.lookup_next (as sm@212@01  $FVF<next>) r)))
    :pattern (($FVF.lookup_next (as sm@266@01  $FVF<next>) r))
    :pattern (($FVF.lookup_next (as sm@212@01  $FVF<next>) r))
    :qid |qp.fvfValDef220|))
  (forall ((r $Ref)) (!
    (=>
      (and
        (img@216@01 r)
        (and
          (Set_in (inv@215@01 r) (Set_union g0@126@01 g1@127@01))
          (not (= (inv@215@01 r) x0@128@01))))
      (=
        ($FVF.lookup_next (as sm@266@01  $FVF<next>) r)
        ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@211@01))))) r)))
    :pattern (($FVF.lookup_next (as sm@266@01  $FVF<next>) r))
    :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@211@01))))) r))
    :qid |qp.fvfValDef221|))
  (forall ((r $Ref)) (!
    (and
      ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@130@01))))) r) r)
      ($FVF.loc_next ($FVF.lookup_next (as sm@212@01  $FVF<next>) r) r)
      ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@211@01))))) r) r))
    :pattern (($FVF.lookup_next (as sm@266@01  $FVF<next>) r))
    :qid |qp.fvfResTrgDef222|))))
(assert ($FVF.loc_next ($FVF.lookup_next (as sm@266@01  $FVF<next>) n$6@277@01) n$6@277@01))
(push) ; 6
(assert (not (<
  $Perm.No
  (+
    (+
      (ite
        (and
          (img@136@01 n$6@277@01)
          (Set_in (inv@135@01 n$6@277@01) (Set_union g0@126@01 g1@127@01)))
        (- (- $Perm.Write (pTaken@204@01 n$6@277@01)) (pTaken@209@01 n$6@277@01))
        $Perm.No)
      (ite (= n$6@277@01 x0@128@01) $Perm.Write $Perm.No))
    (ite
      (and
        (img@216@01 n$6@277@01)
        (and
          (Set_in (inv@215@01 n$6@277@01) (Set_union g0@126@01 g1@127@01))
          (not (= (inv@215@01 n$6@277@01) x0@128@01))))
      (/ (to_real 1) (to_real 2))
      $Perm.No)))))
(check-sat)
; unsat
(pop) ; 6
; 0.01s
; (get-info :all-statistics)
(pop) ; 5
(pop) ; 4
; Joined path conditions
; Joined path conditions
(assert (forall ((r $Ref)) (!
  (=>
    (ite
      (and
        (img@136@01 r)
        (Set_in (inv@135@01 r) (Set_union g0@126@01 g1@127@01)))
      (< $Perm.No (- (- $Perm.Write (pTaken@204@01 r)) (pTaken@209@01 r)))
      false)
    (=
      ($FVF.lookup_next (as sm@266@01  $FVF<next>) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@130@01))))) r)))
  :pattern (($FVF.lookup_next (as sm@266@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@130@01))))) r))
  :qid |qp.fvfValDef219|)))
(assert (forall ((r $Ref)) (!
  (=>
    (= r x0@128@01)
    (=
      ($FVF.lookup_next (as sm@266@01  $FVF<next>) r)
      ($FVF.lookup_next (as sm@212@01  $FVF<next>) r)))
  :pattern (($FVF.lookup_next (as sm@266@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next (as sm@212@01  $FVF<next>) r))
  :qid |qp.fvfValDef220|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@216@01 r)
      (and
        (Set_in (inv@215@01 r) (Set_union g0@126@01 g1@127@01))
        (not (= (inv@215@01 r) x0@128@01))))
    (=
      ($FVF.lookup_next (as sm@266@01  $FVF<next>) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@211@01))))) r)))
  :pattern (($FVF.lookup_next (as sm@266@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@211@01))))) r))
  :qid |qp.fvfValDef221|)))
(assert (forall ((r $Ref)) (!
  (and
    ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@130@01))))) r) r)
    ($FVF.loc_next ($FVF.lookup_next (as sm@212@01  $FVF<next>) r) r)
    ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@211@01))))) r) r))
  :pattern (($FVF.lookup_next (as sm@266@01  $FVF<next>) r))
  :qid |qp.fvfResTrgDef222|)))
(assert (=>
  (Set_in n$6@277@01 g1@127@01)
  (and
    (Set_in n$6@277@01 g1@127@01)
    ($FVF.loc_next ($FVF.lookup_next (as sm@266@01  $FVF<next>) n$6@277@01) n$6@277@01))))
(assert (or (Set_in n$6@277@01 g1@127@01) (not (Set_in n$6@277@01 g1@127@01))))
(push) ; 4
; [then-branch: 62 | n$6@277@01 in g1@127@01 && Lookup(next, sm@266@01, n$6@277@01) != Null | live]
; [else-branch: 62 | !(n$6@277@01 in g1@127@01 && Lookup(next, sm@266@01, n$6@277@01) != Null) | live]
(push) ; 5
; [then-branch: 62 | n$6@277@01 in g1@127@01 && Lookup(next, sm@266@01, n$6@277@01) != Null]
(assert (and
  (Set_in n$6@277@01 g1@127@01)
  (not (= ($FVF.lookup_next (as sm@266@01  $FVF<next>) n$6@277@01) $Ref.null))))
; [eval] (n$6.next in g1)
(assert (and
  (forall ((r $Ref)) (!
    (=>
      (ite
        (and
          (img@136@01 r)
          (Set_in (inv@135@01 r) (Set_union g0@126@01 g1@127@01)))
        (< $Perm.No (- (- $Perm.Write (pTaken@204@01 r)) (pTaken@209@01 r)))
        false)
      (=
        ($FVF.lookup_next (as sm@266@01  $FVF<next>) r)
        ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@130@01))))) r)))
    :pattern (($FVF.lookup_next (as sm@266@01  $FVF<next>) r))
    :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@130@01))))) r))
    :qid |qp.fvfValDef219|))
  (forall ((r $Ref)) (!
    (=>
      (= r x0@128@01)
      (=
        ($FVF.lookup_next (as sm@266@01  $FVF<next>) r)
        ($FVF.lookup_next (as sm@212@01  $FVF<next>) r)))
    :pattern (($FVF.lookup_next (as sm@266@01  $FVF<next>) r))
    :pattern (($FVF.lookup_next (as sm@212@01  $FVF<next>) r))
    :qid |qp.fvfValDef220|))
  (forall ((r $Ref)) (!
    (=>
      (and
        (img@216@01 r)
        (and
          (Set_in (inv@215@01 r) (Set_union g0@126@01 g1@127@01))
          (not (= (inv@215@01 r) x0@128@01))))
      (=
        ($FVF.lookup_next (as sm@266@01  $FVF<next>) r)
        ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@211@01))))) r)))
    :pattern (($FVF.lookup_next (as sm@266@01  $FVF<next>) r))
    :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@211@01))))) r))
    :qid |qp.fvfValDef221|))
  (forall ((r $Ref)) (!
    (and
      ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@130@01))))) r) r)
      ($FVF.loc_next ($FVF.lookup_next (as sm@212@01  $FVF<next>) r) r)
      ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@211@01))))) r) r))
    :pattern (($FVF.lookup_next (as sm@266@01  $FVF<next>) r))
    :qid |qp.fvfResTrgDef222|))))
(assert ($FVF.loc_next ($FVF.lookup_next (as sm@266@01  $FVF<next>) n$6@277@01) n$6@277@01))
(push) ; 6
(assert (not (<
  $Perm.No
  (+
    (+
      (ite
        (and
          (img@136@01 n$6@277@01)
          (Set_in (inv@135@01 n$6@277@01) (Set_union g0@126@01 g1@127@01)))
        (- (- $Perm.Write (pTaken@204@01 n$6@277@01)) (pTaken@209@01 n$6@277@01))
        $Perm.No)
      (ite (= n$6@277@01 x0@128@01) $Perm.Write $Perm.No))
    (ite
      (and
        (img@216@01 n$6@277@01)
        (and
          (Set_in (inv@215@01 n$6@277@01) (Set_union g0@126@01 g1@127@01))
          (not (= (inv@215@01 n$6@277@01) x0@128@01))))
      (/ (to_real 1) (to_real 2))
      $Perm.No)))))
(check-sat)
; unsat
(pop) ; 6
; 0.01s
; (get-info :all-statistics)
(pop) ; 5
(push) ; 5
; [else-branch: 62 | !(n$6@277@01 in g1@127@01 && Lookup(next, sm@266@01, n$6@277@01) != Null)]
(assert (not
  (and
    (Set_in n$6@277@01 g1@127@01)
    (not (= ($FVF.lookup_next (as sm@266@01  $FVF<next>) n$6@277@01) $Ref.null)))))
(pop) ; 5
(pop) ; 4
; Joined path conditions
(assert (forall ((r $Ref)) (!
  (=>
    (ite
      (and
        (img@136@01 r)
        (Set_in (inv@135@01 r) (Set_union g0@126@01 g1@127@01)))
      (< $Perm.No (- (- $Perm.Write (pTaken@204@01 r)) (pTaken@209@01 r)))
      false)
    (=
      ($FVF.lookup_next (as sm@266@01  $FVF<next>) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@130@01))))) r)))
  :pattern (($FVF.lookup_next (as sm@266@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@130@01))))) r))
  :qid |qp.fvfValDef219|)))
(assert (forall ((r $Ref)) (!
  (=>
    (= r x0@128@01)
    (=
      ($FVF.lookup_next (as sm@266@01  $FVF<next>) r)
      ($FVF.lookup_next (as sm@212@01  $FVF<next>) r)))
  :pattern (($FVF.lookup_next (as sm@266@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next (as sm@212@01  $FVF<next>) r))
  :qid |qp.fvfValDef220|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@216@01 r)
      (and
        (Set_in (inv@215@01 r) (Set_union g0@126@01 g1@127@01))
        (not (= (inv@215@01 r) x0@128@01))))
    (=
      ($FVF.lookup_next (as sm@266@01  $FVF<next>) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@211@01))))) r)))
  :pattern (($FVF.lookup_next (as sm@266@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@211@01))))) r))
  :qid |qp.fvfValDef221|)))
(assert (forall ((r $Ref)) (!
  (and
    ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@130@01))))) r) r)
    ($FVF.loc_next ($FVF.lookup_next (as sm@212@01  $FVF<next>) r) r)
    ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@211@01))))) r) r))
  :pattern (($FVF.lookup_next (as sm@266@01  $FVF<next>) r))
  :qid |qp.fvfResTrgDef222|)))
(assert (=>
  (and
    (Set_in n$6@277@01 g1@127@01)
    (not (= ($FVF.lookup_next (as sm@266@01  $FVF<next>) n$6@277@01) $Ref.null)))
  (and
    (Set_in n$6@277@01 g1@127@01)
    (not (= ($FVF.lookup_next (as sm@266@01  $FVF<next>) n$6@277@01) $Ref.null))
    ($FVF.loc_next ($FVF.lookup_next (as sm@266@01  $FVF<next>) n$6@277@01) n$6@277@01))))
; Joined path conditions
(assert (or
  (not
    (and
      (Set_in n$6@277@01 g1@127@01)
      (not
        (= ($FVF.lookup_next (as sm@266@01  $FVF<next>) n$6@277@01) $Ref.null))))
  (and
    (Set_in n$6@277@01 g1@127@01)
    (not (= ($FVF.lookup_next (as sm@266@01  $FVF<next>) n$6@277@01) $Ref.null)))))
; Definitional axioms for snapshot map values
(pop) ; 3
; Nested auxiliary terms: globals (aux)
(assert (forall ((r $Ref)) (!
  (=>
    (ite
      (and
        (img@136@01 r)
        (Set_in (inv@135@01 r) (Set_union g0@126@01 g1@127@01)))
      (< $Perm.No (- (- $Perm.Write (pTaken@204@01 r)) (pTaken@209@01 r)))
      false)
    (=
      ($FVF.lookup_next (as sm@266@01  $FVF<next>) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@130@01))))) r)))
  :pattern (($FVF.lookup_next (as sm@266@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@130@01))))) r))
  :qid |qp.fvfValDef219|)))
(assert (forall ((r $Ref)) (!
  (=>
    (= r x0@128@01)
    (=
      ($FVF.lookup_next (as sm@266@01  $FVF<next>) r)
      ($FVF.lookup_next (as sm@212@01  $FVF<next>) r)))
  :pattern (($FVF.lookup_next (as sm@266@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next (as sm@212@01  $FVF<next>) r))
  :qid |qp.fvfValDef220|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@216@01 r)
      (and
        (Set_in (inv@215@01 r) (Set_union g0@126@01 g1@127@01))
        (not (= (inv@215@01 r) x0@128@01))))
    (=
      ($FVF.lookup_next (as sm@266@01  $FVF<next>) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@211@01))))) r)))
  :pattern (($FVF.lookup_next (as sm@266@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@211@01))))) r))
  :qid |qp.fvfValDef221|)))
(assert (forall ((r $Ref)) (!
  (and
    ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@130@01))))) r) r)
    ($FVF.loc_next ($FVF.lookup_next (as sm@212@01  $FVF<next>) r) r)
    ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@211@01))))) r) r))
  :pattern (($FVF.lookup_next (as sm@266@01  $FVF<next>) r))
  :qid |qp.fvfResTrgDef222|)))
; Nested auxiliary terms: non-globals (aux)
(assert (forall ((n$6@277@01 $Ref)) (!
  (and
    (=>
      (Set_in n$6@277@01 g1@127@01)
      (and
        (Set_in n$6@277@01 g1@127@01)
        ($FVF.loc_next ($FVF.lookup_next (as sm@266@01  $FVF<next>) n$6@277@01) n$6@277@01)))
    (or (Set_in n$6@277@01 g1@127@01) (not (Set_in n$6@277@01 g1@127@01)))
    (=>
      (and
        (Set_in n$6@277@01 g1@127@01)
        (not
          (= ($FVF.lookup_next (as sm@266@01  $FVF<next>) n$6@277@01) $Ref.null)))
      (and
        (Set_in n$6@277@01 g1@127@01)
        (not
          (= ($FVF.lookup_next (as sm@266@01  $FVF<next>) n$6@277@01) $Ref.null))
        ($FVF.loc_next ($FVF.lookup_next (as sm@266@01  $FVF<next>) n$6@277@01) n$6@277@01)))
    (or
      (not
        (and
          (Set_in n$6@277@01 g1@127@01)
          (not
            (=
              ($FVF.lookup_next (as sm@266@01  $FVF<next>) n$6@277@01)
              $Ref.null))))
      (and
        (Set_in n$6@277@01 g1@127@01)
        (not
          (= ($FVF.lookup_next (as sm@266@01  $FVF<next>) n$6@277@01) $Ref.null)))))
  :pattern ((Set_in ($FVF.lookup_next (as sm@266@01  $FVF<next>) n$6@277@01) g1@127@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/graphs/static/tests/lists/delete_edge1.vpr@345@13@345@22-aux|)))
(assert (forall ((n$6@277@01 $Ref)) (!
  (and
    (=>
      (Set_in n$6@277@01 g1@127@01)
      (and
        (Set_in n$6@277@01 g1@127@01)
        ($FVF.loc_next ($FVF.lookup_next (as sm@266@01  $FVF<next>) n$6@277@01) n$6@277@01)))
    (or (Set_in n$6@277@01 g1@127@01) (not (Set_in n$6@277@01 g1@127@01)))
    (=>
      (and
        (Set_in n$6@277@01 g1@127@01)
        (not
          (= ($FVF.lookup_next (as sm@266@01  $FVF<next>) n$6@277@01) $Ref.null)))
      (and
        (Set_in n$6@277@01 g1@127@01)
        (not
          (= ($FVF.lookup_next (as sm@266@01  $FVF<next>) n$6@277@01) $Ref.null))
        ($FVF.loc_next ($FVF.lookup_next (as sm@266@01  $FVF<next>) n$6@277@01) n$6@277@01)))
    (or
      (not
        (and
          (Set_in n$6@277@01 g1@127@01)
          (not
            (=
              ($FVF.lookup_next (as sm@266@01  $FVF<next>) n$6@277@01)
              $Ref.null))))
      (and
        (Set_in n$6@277@01 g1@127@01)
        (not
          (= ($FVF.lookup_next (as sm@266@01  $FVF<next>) n$6@277@01) $Ref.null)))))
  :pattern ((Set_in n$6@277@01 g1@127@01) ($FVF.loc_next ($FVF.lookup_next (as sm@266@01  $FVF<next>) n$6@277@01) n$6@277@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/graphs/static/tests/lists/delete_edge1.vpr@345@13@345@22-aux|)))
(push) ; 3
(assert (not (forall ((n$6@277@01 $Ref)) (!
  (=>
    (and
      (Set_in n$6@277@01 g1@127@01)
      (not
        (= ($FVF.lookup_next (as sm@266@01  $FVF<next>) n$6@277@01) $Ref.null)))
    (Set_in ($FVF.lookup_next (as sm@266@01  $FVF<next>) n$6@277@01) g1@127@01))
  :pattern ((Set_in ($FVF.lookup_next (as sm@266@01  $FVF<next>) n$6@277@01) g1@127@01))
  :pattern ((Set_in n$6@277@01 g1@127@01) ($FVF.loc_next ($FVF.lookup_next (as sm@266@01  $FVF<next>) n$6@277@01) n$6@277@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/graphs/static/tests/lists/delete_edge1.vpr@345@13@345@22|))))
(check-sat)
; unsat
(pop) ; 3
; 0.02s
; (get-info :all-statistics)
(assert (forall ((n$6@277@01 $Ref)) (!
  (=>
    (and
      (Set_in n$6@277@01 g1@127@01)
      (not
        (= ($FVF.lookup_next (as sm@266@01  $FVF<next>) n$6@277@01) $Ref.null)))
    (Set_in ($FVF.lookup_next (as sm@266@01  $FVF<next>) n$6@277@01) g1@127@01))
  :pattern ((Set_in ($FVF.lookup_next (as sm@266@01  $FVF<next>) n$6@277@01) g1@127@01))
  :pattern ((Set_in n$6@277@01 g1@127@01) ($FVF.loc_next ($FVF.lookup_next (as sm@266@01  $FVF<next>) n$6@277@01) n$6@277@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/graphs/static/tests/lists/delete_edge1.vpr@345@13@345@22|)))
; [eval] (forall n$7: Ref :: { exists_path($$(g1), x1, n$7) } (n$7 in g1) ==> exists_path($$(g1), x1, n$7))
(declare-const n$7@278@01 $Ref)
(push) ; 3
; [eval] (n$7 in g1) ==> exists_path($$(g1), x1, n$7)
; [eval] (n$7 in g1)
(push) ; 4
; [then-branch: 63 | n$7@278@01 in g1@127@01 | live]
; [else-branch: 63 | !(n$7@278@01 in g1@127@01) | live]
(push) ; 5
; [then-branch: 63 | n$7@278@01 in g1@127@01]
(assert (Set_in n$7@278@01 g1@127@01))
; [eval] exists_path($$(g1), x1, n$7)
; [eval] $$(g1)
(push) ; 6
(declare-const n@279@01 $Ref)
(push) ; 7
; [eval] (n in refs)
(assert (Set_in n@279@01 g1@127@01))
(pop) ; 7
(declare-fun inv@280@01 ($Ref) $Ref)
(declare-fun img@281@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
; Definitional axioms for snapshot map domain
; Definitional axioms for snapshot map values
; Check receiver injectivity
(push) ; 7
(assert (not (forall ((n1@279@01 $Ref) (n2@279@01 $Ref)) (!
  (=>
    (and
      (and
        (Set_in n1@279@01 g1@127@01)
        ($FVF.loc_next ($FVF.lookup_next (as sm@266@01  $FVF<next>) n1@279@01) n1@279@01))
      (and
        (Set_in n2@279@01 g1@127@01)
        ($FVF.loc_next ($FVF.lookup_next (as sm@266@01  $FVF<next>) n2@279@01) n2@279@01))
      (= n1@279@01 n2@279@01))
    (= n1@279@01 n2@279@01))
  
  :qid |next-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((n@279@01 $Ref)) (!
  (=>
    (Set_in n@279@01 g1@127@01)
    (and (= (inv@280@01 n@279@01) n@279@01) (img@281@01 n@279@01)))
  :pattern ((Set_in n@279@01 g1@127@01))
  :pattern ((inv@280@01 n@279@01))
  :pattern ((img@281@01 n@279@01))
  :qid |next-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@281@01 r) (Set_in (inv@280@01 r) g1@127@01))
    (= (inv@280@01 r) r))
  :pattern ((inv@280@01 r))
  :qid |next-fctOfInv|)))
(assert (forall ((r $Ref)) (!
  (=>
    (Set_in (inv@280@01 r) g1@127@01)
    ($FVF.loc_next ($FVF.lookup_next (as sm@266@01  $FVF<next>) r) r))
  :pattern ((inv@280@01 r))
  :qid |quant-u-14382|)))
(push) ; 7
(assert (not (forall ((r $Ref)) (!
  (=>
    (and (Set_in (inv@280@01 r) g1@127@01) (img@281@01 r) (= r (inv@280@01 r)))
    (>
      (+
        (+
          (ite
            (and
              (img@136@01 r)
              (Set_in (inv@135@01 r) (Set_union g0@126@01 g1@127@01)))
            (- (- $Perm.Write (pTaken@204@01 r)) (pTaken@209@01 r))
            $Perm.No)
          (ite
            (and
              (img@216@01 r)
              (and
                (Set_in (inv@215@01 r) (Set_union g0@126@01 g1@127@01))
                (not (= (inv@215@01 r) x0@128@01))))
            (/ (to_real 1) (to_real 2))
            $Perm.No))
        (ite (= r x0@128@01) $Perm.Write $Perm.No))
      $Perm.No))
  
  :qid |quant-u-14383|))))
(check-sat)
; unsat
(pop) ; 7
; 0.01s
; (get-info :all-statistics)
(declare-const sm@282@01 $FVF<next>)
; Definitional axioms for snapshot map domain
(assert (forall ((r $Ref)) (!
  (and
    (=>
      (Set_in r ($FVF.domain_next (as sm@282@01  $FVF<next>)))
      (and (Set_in (inv@280@01 r) g1@127@01) (img@281@01 r)))
    (=>
      (and (Set_in (inv@280@01 r) g1@127@01) (img@281@01 r))
      (Set_in r ($FVF.domain_next (as sm@282@01  $FVF<next>)))))
  :pattern ((Set_in r ($FVF.domain_next (as sm@282@01  $FVF<next>))))
  :qid |qp.fvfDomDef230|)))
; Definitional axioms for snapshot map values
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and (Set_in (inv@280@01 r) g1@127@01) (img@281@01 r))
      (ite
        (and
          (img@136@01 r)
          (Set_in (inv@135@01 r) (Set_union g0@126@01 g1@127@01)))
        (< $Perm.No (- (- $Perm.Write (pTaken@204@01 r)) (pTaken@209@01 r)))
        false))
    (=
      ($FVF.lookup_next (as sm@282@01  $FVF<next>) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@130@01))))) r)))
  :pattern (($FVF.lookup_next (as sm@282@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@130@01))))) r))
  :qid |qp.fvfValDef226|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and (and (Set_in (inv@280@01 r) g1@127@01) (img@281@01 r)) (= r x0@128@01))
    (=
      ($FVF.lookup_next (as sm@282@01  $FVF<next>) r)
      ($FVF.lookup_next (as sm@212@01  $FVF<next>) r)))
  :pattern (($FVF.lookup_next (as sm@282@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next (as sm@212@01  $FVF<next>) r))
  :qid |qp.fvfValDef227|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and (Set_in (inv@280@01 r) g1@127@01) (img@281@01 r))
      (and
        (img@216@01 r)
        (and
          (Set_in (inv@215@01 r) (Set_union g0@126@01 g1@127@01))
          (not (= (inv@215@01 r) x0@128@01)))))
    (=
      ($FVF.lookup_next (as sm@282@01  $FVF<next>) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@211@01))))) r)))
  :pattern (($FVF.lookup_next (as sm@282@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@211@01))))) r))
  :qid |qp.fvfValDef228|)))
(assert (forall ((r $Ref)) (!
  (and
    ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@130@01))))) r) r)
    ($FVF.loc_next ($FVF.lookup_next (as sm@212@01  $FVF<next>) r) r)
    ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@211@01))))) r) r))
  :pattern (($FVF.lookup_next (as sm@282@01  $FVF<next>) r))
  :qid |qp.fvfResTrgDef229|)))
(assert ($$%precondition ($SortWrappers.$FVF<next>To$Snap (as sm@282@01  $FVF<next>)) g1@127@01))
(pop) ; 6
; Joined path conditions
(assert (forall ((n@279@01 $Ref)) (!
  (=>
    (Set_in n@279@01 g1@127@01)
    (and (= (inv@280@01 n@279@01) n@279@01) (img@281@01 n@279@01)))
  :pattern ((Set_in n@279@01 g1@127@01))
  :pattern ((inv@280@01 n@279@01))
  :pattern ((img@281@01 n@279@01))
  :qid |next-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@281@01 r) (Set_in (inv@280@01 r) g1@127@01))
    (= (inv@280@01 r) r))
  :pattern ((inv@280@01 r))
  :qid |next-fctOfInv|)))
(assert (forall ((r $Ref)) (!
  (and
    (=>
      (Set_in r ($FVF.domain_next (as sm@282@01  $FVF<next>)))
      (and (Set_in (inv@280@01 r) g1@127@01) (img@281@01 r)))
    (=>
      (and (Set_in (inv@280@01 r) g1@127@01) (img@281@01 r))
      (Set_in r ($FVF.domain_next (as sm@282@01  $FVF<next>)))))
  :pattern ((Set_in r ($FVF.domain_next (as sm@282@01  $FVF<next>))))
  :qid |qp.fvfDomDef230|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and (Set_in (inv@280@01 r) g1@127@01) (img@281@01 r))
      (ite
        (and
          (img@136@01 r)
          (Set_in (inv@135@01 r) (Set_union g0@126@01 g1@127@01)))
        (< $Perm.No (- (- $Perm.Write (pTaken@204@01 r)) (pTaken@209@01 r)))
        false))
    (=
      ($FVF.lookup_next (as sm@282@01  $FVF<next>) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@130@01))))) r)))
  :pattern (($FVF.lookup_next (as sm@282@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@130@01))))) r))
  :qid |qp.fvfValDef226|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and (and (Set_in (inv@280@01 r) g1@127@01) (img@281@01 r)) (= r x0@128@01))
    (=
      ($FVF.lookup_next (as sm@282@01  $FVF<next>) r)
      ($FVF.lookup_next (as sm@212@01  $FVF<next>) r)))
  :pattern (($FVF.lookup_next (as sm@282@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next (as sm@212@01  $FVF<next>) r))
  :qid |qp.fvfValDef227|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and (Set_in (inv@280@01 r) g1@127@01) (img@281@01 r))
      (and
        (img@216@01 r)
        (and
          (Set_in (inv@215@01 r) (Set_union g0@126@01 g1@127@01))
          (not (= (inv@215@01 r) x0@128@01)))))
    (=
      ($FVF.lookup_next (as sm@282@01  $FVF<next>) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@211@01))))) r)))
  :pattern (($FVF.lookup_next (as sm@282@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@211@01))))) r))
  :qid |qp.fvfValDef228|)))
(assert (forall ((r $Ref)) (!
  (and
    ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@130@01))))) r) r)
    ($FVF.loc_next ($FVF.lookup_next (as sm@212@01  $FVF<next>) r) r)
    ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@211@01))))) r) r))
  :pattern (($FVF.lookup_next (as sm@282@01  $FVF<next>) r))
  :qid |qp.fvfResTrgDef229|)))
(assert (and
  (forall ((r $Ref)) (!
    (=>
      (Set_in (inv@280@01 r) g1@127@01)
      ($FVF.loc_next ($FVF.lookup_next (as sm@266@01  $FVF<next>) r) r))
    :pattern ((inv@280@01 r))
    :qid |quant-u-14382|))
  ($$%precondition ($SortWrappers.$FVF<next>To$Snap (as sm@282@01  $FVF<next>)) g1@127@01)))
(pop) ; 5
(push) ; 5
; [else-branch: 63 | !(n$7@278@01 in g1@127@01)]
(assert (not (Set_in n$7@278@01 g1@127@01)))
(pop) ; 5
(pop) ; 4
; Joined path conditions
(assert (forall ((n@279@01 $Ref)) (!
  (=>
    (Set_in n@279@01 g1@127@01)
    (and (= (inv@280@01 n@279@01) n@279@01) (img@281@01 n@279@01)))
  :pattern ((Set_in n@279@01 g1@127@01))
  :pattern ((inv@280@01 n@279@01))
  :pattern ((img@281@01 n@279@01))
  :qid |next-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@281@01 r) (Set_in (inv@280@01 r) g1@127@01))
    (= (inv@280@01 r) r))
  :pattern ((inv@280@01 r))
  :qid |next-fctOfInv|)))
(assert (forall ((r $Ref)) (!
  (and
    (=>
      (Set_in r ($FVF.domain_next (as sm@282@01  $FVF<next>)))
      (and (Set_in (inv@280@01 r) g1@127@01) (img@281@01 r)))
    (=>
      (and (Set_in (inv@280@01 r) g1@127@01) (img@281@01 r))
      (Set_in r ($FVF.domain_next (as sm@282@01  $FVF<next>)))))
  :pattern ((Set_in r ($FVF.domain_next (as sm@282@01  $FVF<next>))))
  :qid |qp.fvfDomDef230|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and (Set_in (inv@280@01 r) g1@127@01) (img@281@01 r))
      (ite
        (and
          (img@136@01 r)
          (Set_in (inv@135@01 r) (Set_union g0@126@01 g1@127@01)))
        (< $Perm.No (- (- $Perm.Write (pTaken@204@01 r)) (pTaken@209@01 r)))
        false))
    (=
      ($FVF.lookup_next (as sm@282@01  $FVF<next>) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@130@01))))) r)))
  :pattern (($FVF.lookup_next (as sm@282@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@130@01))))) r))
  :qid |qp.fvfValDef226|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and (and (Set_in (inv@280@01 r) g1@127@01) (img@281@01 r)) (= r x0@128@01))
    (=
      ($FVF.lookup_next (as sm@282@01  $FVF<next>) r)
      ($FVF.lookup_next (as sm@212@01  $FVF<next>) r)))
  :pattern (($FVF.lookup_next (as sm@282@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next (as sm@212@01  $FVF<next>) r))
  :qid |qp.fvfValDef227|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and (Set_in (inv@280@01 r) g1@127@01) (img@281@01 r))
      (and
        (img@216@01 r)
        (and
          (Set_in (inv@215@01 r) (Set_union g0@126@01 g1@127@01))
          (not (= (inv@215@01 r) x0@128@01)))))
    (=
      ($FVF.lookup_next (as sm@282@01  $FVF<next>) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@211@01))))) r)))
  :pattern (($FVF.lookup_next (as sm@282@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@211@01))))) r))
  :qid |qp.fvfValDef228|)))
(assert (forall ((r $Ref)) (!
  (and
    ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@130@01))))) r) r)
    ($FVF.loc_next ($FVF.lookup_next (as sm@212@01  $FVF<next>) r) r)
    ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@211@01))))) r) r))
  :pattern (($FVF.lookup_next (as sm@282@01  $FVF<next>) r))
  :qid |qp.fvfResTrgDef229|)))
(assert (=>
  (Set_in n$7@278@01 g1@127@01)
  (and
    (Set_in n$7@278@01 g1@127@01)
    (forall ((r $Ref)) (!
      (=>
        (Set_in (inv@280@01 r) g1@127@01)
        ($FVF.loc_next ($FVF.lookup_next (as sm@266@01  $FVF<next>) r) r))
      :pattern ((inv@280@01 r))
      :qid |quant-u-14382|))
    ($$%precondition ($SortWrappers.$FVF<next>To$Snap (as sm@282@01  $FVF<next>)) g1@127@01))))
; Joined path conditions
(assert (or (not (Set_in n$7@278@01 g1@127@01)) (Set_in n$7@278@01 g1@127@01)))
(pop) ; 3
; Nested auxiliary terms: globals (aux)
(assert (forall ((n@279@01 $Ref)) (!
  (=>
    (Set_in n@279@01 g1@127@01)
    (and (= (inv@280@01 n@279@01) n@279@01) (img@281@01 n@279@01)))
  :pattern ((Set_in n@279@01 g1@127@01))
  :pattern ((inv@280@01 n@279@01))
  :pattern ((img@281@01 n@279@01))
  :qid |next-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@281@01 r) (Set_in (inv@280@01 r) g1@127@01))
    (= (inv@280@01 r) r))
  :pattern ((inv@280@01 r))
  :qid |next-fctOfInv|)))
(assert (forall ((r $Ref)) (!
  (and
    (=>
      (Set_in r ($FVF.domain_next (as sm@282@01  $FVF<next>)))
      (and (Set_in (inv@280@01 r) g1@127@01) (img@281@01 r)))
    (=>
      (and (Set_in (inv@280@01 r) g1@127@01) (img@281@01 r))
      (Set_in r ($FVF.domain_next (as sm@282@01  $FVF<next>)))))
  :pattern ((Set_in r ($FVF.domain_next (as sm@282@01  $FVF<next>))))
  :qid |qp.fvfDomDef230|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and (Set_in (inv@280@01 r) g1@127@01) (img@281@01 r))
      (ite
        (and
          (img@136@01 r)
          (Set_in (inv@135@01 r) (Set_union g0@126@01 g1@127@01)))
        (< $Perm.No (- (- $Perm.Write (pTaken@204@01 r)) (pTaken@209@01 r)))
        false))
    (=
      ($FVF.lookup_next (as sm@282@01  $FVF<next>) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@130@01))))) r)))
  :pattern (($FVF.lookup_next (as sm@282@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@130@01))))) r))
  :qid |qp.fvfValDef226|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and (and (Set_in (inv@280@01 r) g1@127@01) (img@281@01 r)) (= r x0@128@01))
    (=
      ($FVF.lookup_next (as sm@282@01  $FVF<next>) r)
      ($FVF.lookup_next (as sm@212@01  $FVF<next>) r)))
  :pattern (($FVF.lookup_next (as sm@282@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next (as sm@212@01  $FVF<next>) r))
  :qid |qp.fvfValDef227|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and (Set_in (inv@280@01 r) g1@127@01) (img@281@01 r))
      (and
        (img@216@01 r)
        (and
          (Set_in (inv@215@01 r) (Set_union g0@126@01 g1@127@01))
          (not (= (inv@215@01 r) x0@128@01)))))
    (=
      ($FVF.lookup_next (as sm@282@01  $FVF<next>) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@211@01))))) r)))
  :pattern (($FVF.lookup_next (as sm@282@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@211@01))))) r))
  :qid |qp.fvfValDef228|)))
(assert (forall ((r $Ref)) (!
  (and
    ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@130@01))))) r) r)
    ($FVF.loc_next ($FVF.lookup_next (as sm@212@01  $FVF<next>) r) r)
    ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@211@01))))) r) r))
  :pattern (($FVF.lookup_next (as sm@282@01  $FVF<next>) r))
  :qid |qp.fvfResTrgDef229|)))
; Nested auxiliary terms: non-globals (aux)
(assert (forall ((n$7@278@01 $Ref)) (!
  (and
    (=>
      (Set_in n$7@278@01 g1@127@01)
      (and
        (Set_in n$7@278@01 g1@127@01)
        (forall ((r $Ref)) (!
          (=>
            (Set_in (inv@280@01 r) g1@127@01)
            ($FVF.loc_next ($FVF.lookup_next (as sm@266@01  $FVF<next>) r) r))
          :pattern ((inv@280@01 r))
          :qid |quant-u-14382|))
        ($$%precondition ($SortWrappers.$FVF<next>To$Snap (as sm@282@01  $FVF<next>)) g1@127@01)))
    (or (not (Set_in n$7@278@01 g1@127@01)) (Set_in n$7@278@01 g1@127@01)))
  :pattern ((exists_path<Bool> ($$ ($SortWrappers.$FVF<next>To$Snap (as sm@282@01  $FVF<next>)) g1@127@01) x1@129@01 n$7@278@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/graphs/static/tests/lists/delete_edge1.vpr@347@13@347@34-aux|)))
(assert (forall ((n$7@278@01 $Ref)) (!
  (=>
    (Set_in n$7@278@01 g1@127@01)
    ($$%precondition ($SortWrappers.$FVF<next>To$Snap (as sm@282@01  $FVF<next>)) g1@127@01))
  :pattern ((exists_path<Bool> ($$ ($SortWrappers.$FVF<next>To$Snap (as sm@282@01  $FVF<next>)) g1@127@01) x1@129@01 n$7@278@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/graphs/static/tests/lists/delete_edge1.vpr@347@13@347@34_precondition|)))
(push) ; 3
(assert (not (forall ((n$7@278@01 $Ref)) (!
  (=>
    (and
      (=>
        (Set_in n$7@278@01 g1@127@01)
        ($$%precondition ($SortWrappers.$FVF<next>To$Snap (as sm@282@01  $FVF<next>)) g1@127@01))
      (Set_in n$7@278@01 g1@127@01))
    (exists_path<Bool> ($$ ($SortWrappers.$FVF<next>To$Snap (as sm@282@01  $FVF<next>)) g1@127@01) x1@129@01 n$7@278@01))
  :pattern ((exists_path<Bool> ($$ ($SortWrappers.$FVF<next>To$Snap (as sm@282@01  $FVF<next>)) g1@127@01) x1@129@01 n$7@278@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/graphs/static/tests/lists/delete_edge1.vpr@347@13@347@34|))))
(check-sat)
