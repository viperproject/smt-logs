(get-info :version)
; (:version "4.12.1")
; Started: 2024-12-26 19:34:17
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
(declare-fun exists_path_2<Bool> (Set<Edge> $Ref $Ref) Bool)
(declare-fun exists_path_2_<Bool> (Set<Edge> $Ref $Ref) Bool)
(declare-fun is_on_path<Bool> (Set<Edge> $Ref $Ref $Ref) Bool)
(declare-fun apply_IND<Bool> (Set<Edge> Set<$Ref> Set<$Ref>) Bool)
(declare-fun apply_IND_2<Bool> (Set<Edge> Set<$Ref> Set<$Ref>) Bool)
(declare-fun apply_noExit<Bool> (Set<Edge> Set<$Ref> Set<$Ref>) Bool)
(declare-fun apply_goOut<Bool> (Set<Edge> Set<$Ref> Set<$Ref> Set<$Ref>) Bool)
(declare-fun apply_newStart<Bool> (Set<$Ref> Set<$Ref> Set<Edge> Set<Edge>) Bool)
(declare-fun inst_uReach<Set<Ref>> (Set<Edge> $Ref) Set<$Ref>)
(declare-fun inst_uReach_2<Set<Ref>> (Set<Edge> $Ref) Set<$Ref>)
(declare-fun inst_uReach_rev<Set<Ref>> (Set<Edge> $Ref) Set<$Ref>)
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
(assert (forall ((EG Set<Edge>) (Z Set<$Ref>) (P Set<$Ref>)) (!
  (=>
    (and
      (apply_IND<Bool> EG Z P)
      (and
        (forall ((z $Ref)) (!
          (=> (Set_in z Z) (Set_in z P))
          :pattern ((Set_in z Z))
          :pattern ((Set_in z P))
          ))
        (forall ((u $Ref) (v $Ref)) (!
          (=> (and (Set_in u P) (edge<Bool> EG u v)) (Set_in v P))
          :pattern ((edge<Bool> EG u v))
          :pattern ((Set_in u P) (Set_in v P))
          ))))
    (forall ((u $Ref) (z $Ref)) (!
      (=> (and (Set_in z Z) (exists_path<Bool> EG z u)) (Set_in u P))
      :pattern ((exists_path<Bool> EG z u))
      :pattern ((Set_in z Z) (Set_in u P))
      )))
  :pattern ((apply_IND<Bool> EG Z P))
  :qid |prog.ax_InductionPrinciple|)))
(assert (forall ((EG Set<Edge>) (Z Set<$Ref>) (P Set<$Ref>)) (!
  (=>
    (and
      (apply_IND_2<Bool> EG Z P)
      (and
        (forall ((z $Ref)) (!
          (=> (Set_in z Z) (Set_in z P))
          :pattern ((Set_in z Z))
          :pattern ((Set_in z P))
          ))
        (forall ((u $Ref) (v $Ref)) (!
          (=> (and (edge<Bool> EG u v) (Set_in v P)) (Set_in u P))
          :pattern ((edge<Bool> EG u v))
          :pattern ((Set_in u P) (Set_in v P))
          ))))
    (forall ((u $Ref) (z $Ref)) (!
      (=> (and (Set_in z Z) (exists_path_2<Bool> EG u z)) (Set_in u P))
      :pattern ((exists_path_2<Bool> EG z u))
      :pattern ((Set_in z Z) (Set_in u P))
      )))
  :pattern ((apply_IND_2<Bool> EG Z P))
  :qid |prog.ax_InductionPrinciple_2|)))
(assert (forall ((EG Set<Edge>) (u $Ref) (y $Ref)) (!
  (= (Set_in u (inst_uReach_rev<Set<Ref>> EG y)) (exists_path<Bool> EG u y))
  :pattern ((Set_in u (inst_uReach_rev<Set<Ref>> EG y)))
  :pattern ((exists_path<Bool> EG u y))
  :qid |prog.ax_instantiation_uReach_rev|)))
(assert (forall ((EG Set<Edge>) (x $Ref) (v $Ref)) (!
  (= (Set_in v (inst_uReach_2<Set<Ref>> EG x)) (exists_path_2<Bool> EG x v))
  :pattern ((Set_in v (inst_uReach_2<Set<Ref>> EG x)))
  :pattern ((exists_path_2<Bool> EG x v))
  :qid |prog.ax_instantiation_uReach_2|)))
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
  (= (exists_path_2<Bool> EG start end) (exists_path_2_<Bool> EG start end))
  :pattern ((exists_path_2<Bool> EG start end))
  :qid |prog.ax_Alias_2|)))
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
(assert (forall ((EG Set<Edge>) (start $Ref) (end $Ref)) (!
  (=
    (exists_path_2_<Bool> EG start end)
    (or
      (= start end)
      (exists ((w $Ref)) (!
        (and (exists_path_2_<Bool> EG start w) (edge<Bool> EG w end))
        :pattern ((exists_path_2_<Bool> EG start w))
        :pattern ((edge<Bool> EG w end))
        ))))
  :pattern ((exists_path_2<Bool> EG start end))
  :pattern ((edge<Bool> EG start end))
  :qid |prog.ax_ExistsPath_2|)))
(assert (forall ((EG Set<Edge>) (u $Ref) (v $Ref) (w $Ref)) (!
  (=>
    (and (exists_path_<Bool> EG u w) (exists_path_<Bool> EG w v))
    (exists_path_<Bool> EG u v))
  :pattern ((exists_path<Bool> EG u w) (exists_path<Bool> EG w v))
  :qid |prog.ax_ExistsPathTrans|)))
(assert (forall ((EG Set<Edge>)) (!
  (=
    (func_graph<Bool> EG)
    (forall ((v1 $Ref) (v2 $Ref) (v $Ref)) (!
      (=> (and (edge<Bool> EG v v1) (edge<Bool> EG v v2)) (= v1 v2))
      :pattern ((edge<Bool> EG v v1) (edge<Bool> EG v v2))
      )))
  :pattern ((func_graph<Bool> EG))
  :qid |prog.ax_FuncGraph|)))
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
    (acyclic_graph<Bool> EG)
    (forall ((v1 $Ref) (v2 $Ref)) (!
      (or (not (edge<Bool> EG v1 v2)) (not (exists_path<Bool> EG v2 v1)))
      :pattern ((edge<Bool> EG v1 v2))
      :pattern ((exists_path<Bool> EG v2 v1))
      )))
  :pattern ((acyclic_graph<Bool> EG))
  :qid |prog.ax_AcyclicGraph|)))
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
(declare-fun inv@4@00 ($Snap Set<$Ref> $Ref) $Ref)
(declare-fun img@5@00 ($Snap Set<$Ref> $Ref) Bool)
(declare-fun sm@3@00 ($Snap Set<$Ref>) $FVF<next>)
(declare-fun sm@6@00 ($Snap Set<$Ref>) $FVF<next>)
(assert (forall ((s@$ $Snap) (refs@0@00 Set<$Ref>)) (!
  (= ($$%limited s@$ refs@0@00) ($$ s@$ refs@0@00))
  :pattern (($$ s@$ refs@0@00))
  :qid |quant-u-15476|)))
(assert (forall ((s@$ $Snap) (refs@0@00 Set<$Ref>)) (!
  ($$%stateless refs@0@00)
  :pattern (($$%limited s@$ refs@0@00))
  :qid |quant-u-15477|)))
(assert (forall ((s@$ $Snap) (refs@0@00 Set<$Ref>)) (!
  (let ((result@1@00 ($$%limited s@$ refs@0@00))) (and
    (forall ((n@2@00 $Ref)) (!
      (=>
        (Set_in n@2@00 refs@0@00)
        (and
          (= (inv@4@00 s@$ refs@0@00 n@2@00) n@2@00)
          (img@5@00 s@$ refs@0@00 n@2@00)))
      :pattern (($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> s@$) n@2@00) n@2@00))
      :qid |quant-u-15479|))
    (forall ((r $Ref)) (!
      (=>
        (and
          (img@5@00 s@$ refs@0@00 r)
          (Set_in (inv@4@00 s@$ refs@0@00 r) refs@0@00))
        (= (inv@4@00 s@$ refs@0@00 r) r))
      :pattern ((inv@4@00 s@$ refs@0@00 r))
      :qid |next-fctOfInv|))
    (forall ((r $Ref)) (!
      true
      :pattern (($FVF.lookup_next (sm@3@00 s@$ refs@0@00) r))
      :qid |qp.fvfResTrgDef0|))
    (forall ((r $Ref)) (!
      (=>
        (and
          (img@5@00 s@$ refs@0@00 r)
          (Set_in (inv@4@00 s@$ refs@0@00 r) refs@0@00))
        (=
          ($FVF.lookup_next (sm@6@00 s@$ refs@0@00) r)
          ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> s@$) r)))
      :pattern (($FVF.lookup_next (sm@6@00 s@$ refs@0@00) r))
      :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> s@$) r))
      :qid |qp.fvfValDef1|))
    (forall ((r $Ref)) (!
      ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> s@$) r) r)
      :pattern (($FVF.lookup_next (sm@6@00 s@$ refs@0@00) r))
      :qid |qp.fvfResTrgDef2|))
    (=>
      ($$%precondition s@$ refs@0@00)
      (forall ((p $Ref) (s $Ref)) (!
        (=
          (and
            (Set_in p refs@0@00)
            (and
              (Set_in s refs@0@00)
              (= ($FVF.lookup_next (sm@6@00 s@$ refs@0@00) p) s)))
          (Set_in (create_edge<Edge> p s) result@1@00))
        :pattern ((create_edge<Edge> p s))
        )))))
  :pattern (($$%limited s@$ refs@0@00))
  :qid |quant-u-15481|)))
(assert (forall ((s@$ $Snap) (refs@0@00 Set<$Ref>)) (!
  (let ((result@1@00 ($$%limited s@$ refs@0@00))) true)
  :pattern (($$%limited s@$ refs@0@00))
  :qid |quant-u-15482|)))
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
(declare-const n@7@01 $Ref)
(push) ; 2
; [eval] (n in g)
(assert (Set_in n@7@01 g@3@01))
(declare-const sm@8@01 $FVF<next>)
; Definitional axioms for snapshot map values
(pop) ; 2
(declare-fun inv@9@01 ($Ref) $Ref)
(declare-fun img@10@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
; Check receiver injectivity
(push) ; 2
(assert (not (forall ((n1@7@01 $Ref) (n2@7@01 $Ref)) (!
  (=>
    (and (Set_in n1@7@01 g@3@01) (Set_in n2@7@01 g@3@01) (= n1@7@01 n2@7@01))
    (= n1@7@01 n2@7@01))
  
  :qid |next-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 2
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((n@7@01 $Ref)) (!
  (=>
    (Set_in n@7@01 g@3@01)
    (and (= (inv@9@01 n@7@01) n@7@01) (img@10@01 n@7@01)))
  :pattern (($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@6@01))))) n@7@01) n@7@01))
  :qid |quant-u-15484|)))
(assert (forall ((r $Ref)) (!
  (=> (and (img@10@01 r) (Set_in (inv@9@01 r) g@3@01)) (= (inv@9@01 r) r))
  :pattern ((inv@9@01 r))
  :qid |next-fctOfInv|)))
; Permissions are non-negative
; Field permissions are at most one
; Permission implies non-null receiver
(assert (forall ((n@7@01 $Ref)) (!
  (=> (Set_in n@7@01 g@3@01) (not (= n@7@01 $Ref.null)))
  :pattern (($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@6@01))))) n@7@01) n@7@01))
  :qid |next-permImpliesNonNull|)))
(declare-const sm@11@01 $FVF<next>)
; Definitional axioms for snapshot map values
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@10@01 r) (Set_in (inv@9@01 r) g@3@01))
    (=
      ($FVF.lookup_next (as sm@11@01  $FVF<next>) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@6@01))))) r)))
  :pattern (($FVF.lookup_next (as sm@11@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@6@01))))) r))
  :qid |qp.fvfValDef1|)))
(assert (forall ((r $Ref)) (!
  ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@6@01))))) r) r)
  :pattern (($FVF.lookup_next (as sm@11@01  $FVF<next>) r))
  :qid |qp.fvfResTrgDef2|)))
(assert (forall ((r $Ref)) (!
  (=>
    (Set_in (inv@9@01 r) g@3@01)
    ($FVF.loc_next ($FVF.lookup_next (as sm@11@01  $FVF<next>) r) r))
  :pattern ((inv@9@01 r))
  :qid |quant-u-15485|)))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@6@01))))
  $Snap.unit))
; [eval] (forall n$0: Ref :: { (n$0.next in g) } { (n$0 in g), n$0.next } (n$0 in g) && n$0.next != null ==> (n$0.next in g))
(declare-const n$0@12@01 $Ref)
(push) ; 2
; [eval] (n$0 in g) && n$0.next != null ==> (n$0.next in g)
; [eval] (n$0 in g) && n$0.next != null
; [eval] (n$0 in g)
(push) ; 3
; [then-branch: 1 | !(n$0@12@01 in g@3@01) | live]
; [else-branch: 1 | n$0@12@01 in g@3@01 | live]
(push) ; 4
; [then-branch: 1 | !(n$0@12@01 in g@3@01)]
(assert (not (Set_in n$0@12@01 g@3@01)))
(pop) ; 4
(push) ; 4
; [else-branch: 1 | n$0@12@01 in g@3@01]
(assert (Set_in n$0@12@01 g@3@01))
; [eval] n$0.next != null
(assert (and
  (forall ((r $Ref)) (!
    (=>
      (and (img@10@01 r) (Set_in (inv@9@01 r) g@3@01))
      (=
        ($FVF.lookup_next (as sm@11@01  $FVF<next>) r)
        ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@6@01))))) r)))
    :pattern (($FVF.lookup_next (as sm@11@01  $FVF<next>) r))
    :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@6@01))))) r))
    :qid |qp.fvfValDef1|))
  (forall ((r $Ref)) (!
    ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@6@01))))) r) r)
    :pattern (($FVF.lookup_next (as sm@11@01  $FVF<next>) r))
    :qid |qp.fvfResTrgDef2|))))
(assert ($FVF.loc_next ($FVF.lookup_next (as sm@11@01  $FVF<next>) n$0@12@01) n$0@12@01))
(push) ; 5
(assert (not (and (img@10@01 n$0@12@01) (Set_in (inv@9@01 n$0@12@01) g@3@01))))
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
    (and (img@10@01 r) (Set_in (inv@9@01 r) g@3@01))
    (=
      ($FVF.lookup_next (as sm@11@01  $FVF<next>) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@6@01))))) r)))
  :pattern (($FVF.lookup_next (as sm@11@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@6@01))))) r))
  :qid |qp.fvfValDef1|)))
(assert (forall ((r $Ref)) (!
  ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@6@01))))) r) r)
  :pattern (($FVF.lookup_next (as sm@11@01  $FVF<next>) r))
  :qid |qp.fvfResTrgDef2|)))
(assert (=>
  (Set_in n$0@12@01 g@3@01)
  (and
    (Set_in n$0@12@01 g@3@01)
    ($FVF.loc_next ($FVF.lookup_next (as sm@11@01  $FVF<next>) n$0@12@01) n$0@12@01))))
(assert (or (Set_in n$0@12@01 g@3@01) (not (Set_in n$0@12@01 g@3@01))))
(push) ; 3
; [then-branch: 2 | n$0@12@01 in g@3@01 && Lookup(next, sm@11@01, n$0@12@01) != Null | live]
; [else-branch: 2 | !(n$0@12@01 in g@3@01 && Lookup(next, sm@11@01, n$0@12@01) != Null) | live]
(push) ; 4
; [then-branch: 2 | n$0@12@01 in g@3@01 && Lookup(next, sm@11@01, n$0@12@01) != Null]
(assert (and
  (Set_in n$0@12@01 g@3@01)
  (not (= ($FVF.lookup_next (as sm@11@01  $FVF<next>) n$0@12@01) $Ref.null))))
; [eval] (n$0.next in g)
(assert (and
  (forall ((r $Ref)) (!
    (=>
      (and (img@10@01 r) (Set_in (inv@9@01 r) g@3@01))
      (=
        ($FVF.lookup_next (as sm@11@01  $FVF<next>) r)
        ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@6@01))))) r)))
    :pattern (($FVF.lookup_next (as sm@11@01  $FVF<next>) r))
    :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@6@01))))) r))
    :qid |qp.fvfValDef1|))
  (forall ((r $Ref)) (!
    ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@6@01))))) r) r)
    :pattern (($FVF.lookup_next (as sm@11@01  $FVF<next>) r))
    :qid |qp.fvfResTrgDef2|))))
(assert ($FVF.loc_next ($FVF.lookup_next (as sm@11@01  $FVF<next>) n$0@12@01) n$0@12@01))
(push) ; 5
(assert (not (and (img@10@01 n$0@12@01) (Set_in (inv@9@01 n$0@12@01) g@3@01))))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(pop) ; 4
(push) ; 4
; [else-branch: 2 | !(n$0@12@01 in g@3@01 && Lookup(next, sm@11@01, n$0@12@01) != Null)]
(assert (not
  (and
    (Set_in n$0@12@01 g@3@01)
    (not (= ($FVF.lookup_next (as sm@11@01  $FVF<next>) n$0@12@01) $Ref.null)))))
(pop) ; 4
(pop) ; 3
; Joined path conditions
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@10@01 r) (Set_in (inv@9@01 r) g@3@01))
    (=
      ($FVF.lookup_next (as sm@11@01  $FVF<next>) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@6@01))))) r)))
  :pattern (($FVF.lookup_next (as sm@11@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@6@01))))) r))
  :qid |qp.fvfValDef1|)))
(assert (forall ((r $Ref)) (!
  ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@6@01))))) r) r)
  :pattern (($FVF.lookup_next (as sm@11@01  $FVF<next>) r))
  :qid |qp.fvfResTrgDef2|)))
(assert (=>
  (and
    (Set_in n$0@12@01 g@3@01)
    (not (= ($FVF.lookup_next (as sm@11@01  $FVF<next>) n$0@12@01) $Ref.null)))
  (and
    (Set_in n$0@12@01 g@3@01)
    (not (= ($FVF.lookup_next (as sm@11@01  $FVF<next>) n$0@12@01) $Ref.null))
    ($FVF.loc_next ($FVF.lookup_next (as sm@11@01  $FVF<next>) n$0@12@01) n$0@12@01))))
; Joined path conditions
(assert (or
  (not
    (and
      (Set_in n$0@12@01 g@3@01)
      (not (= ($FVF.lookup_next (as sm@11@01  $FVF<next>) n$0@12@01) $Ref.null))))
  (and
    (Set_in n$0@12@01 g@3@01)
    (not (= ($FVF.lookup_next (as sm@11@01  $FVF<next>) n$0@12@01) $Ref.null)))))
; Definitional axioms for snapshot map values
(pop) ; 2
; Nested auxiliary terms: globals (aux)
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@10@01 r) (Set_in (inv@9@01 r) g@3@01))
    (=
      ($FVF.lookup_next (as sm@11@01  $FVF<next>) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@6@01))))) r)))
  :pattern (($FVF.lookup_next (as sm@11@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@6@01))))) r))
  :qid |qp.fvfValDef1|)))
(assert (forall ((r $Ref)) (!
  ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@6@01))))) r) r)
  :pattern (($FVF.lookup_next (as sm@11@01  $FVF<next>) r))
  :qid |qp.fvfResTrgDef2|)))
; Nested auxiliary terms: non-globals (aux)
(assert (forall ((n$0@12@01 $Ref)) (!
  (and
    (=>
      (Set_in n$0@12@01 g@3@01)
      (and
        (Set_in n$0@12@01 g@3@01)
        ($FVF.loc_next ($FVF.lookup_next (as sm@11@01  $FVF<next>) n$0@12@01) n$0@12@01)))
    (or (Set_in n$0@12@01 g@3@01) (not (Set_in n$0@12@01 g@3@01)))
    (=>
      (and
        (Set_in n$0@12@01 g@3@01)
        (not
          (= ($FVF.lookup_next (as sm@11@01  $FVF<next>) n$0@12@01) $Ref.null)))
      (and
        (Set_in n$0@12@01 g@3@01)
        (not
          (= ($FVF.lookup_next (as sm@11@01  $FVF<next>) n$0@12@01) $Ref.null))
        ($FVF.loc_next ($FVF.lookup_next (as sm@11@01  $FVF<next>) n$0@12@01) n$0@12@01)))
    (or
      (not
        (and
          (Set_in n$0@12@01 g@3@01)
          (not
            (= ($FVF.lookup_next (as sm@11@01  $FVF<next>) n$0@12@01) $Ref.null))))
      (and
        (Set_in n$0@12@01 g@3@01)
        (not
          (= ($FVF.lookup_next (as sm@11@01  $FVF<next>) n$0@12@01) $Ref.null)))))
  :pattern ((Set_in ($FVF.lookup_next (as sm@11@01  $FVF<next>) n$0@12@01) g@3@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/graphs/static/outlines/list_append.vpr@287@14@287@22-aux|)))
(assert (forall ((n$0@12@01 $Ref)) (!
  (and
    (=>
      (Set_in n$0@12@01 g@3@01)
      (and
        (Set_in n$0@12@01 g@3@01)
        ($FVF.loc_next ($FVF.lookup_next (as sm@11@01  $FVF<next>) n$0@12@01) n$0@12@01)))
    (or (Set_in n$0@12@01 g@3@01) (not (Set_in n$0@12@01 g@3@01)))
    (=>
      (and
        (Set_in n$0@12@01 g@3@01)
        (not
          (= ($FVF.lookup_next (as sm@11@01  $FVF<next>) n$0@12@01) $Ref.null)))
      (and
        (Set_in n$0@12@01 g@3@01)
        (not
          (= ($FVF.lookup_next (as sm@11@01  $FVF<next>) n$0@12@01) $Ref.null))
        ($FVF.loc_next ($FVF.lookup_next (as sm@11@01  $FVF<next>) n$0@12@01) n$0@12@01)))
    (or
      (not
        (and
          (Set_in n$0@12@01 g@3@01)
          (not
            (= ($FVF.lookup_next (as sm@11@01  $FVF<next>) n$0@12@01) $Ref.null))))
      (and
        (Set_in n$0@12@01 g@3@01)
        (not
          (= ($FVF.lookup_next (as sm@11@01  $FVF<next>) n$0@12@01) $Ref.null)))))
  :pattern ((Set_in n$0@12@01 g@3@01) ($FVF.loc_next ($FVF.lookup_next (as sm@11@01  $FVF<next>) n$0@12@01) n$0@12@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/graphs/static/outlines/list_append.vpr@287@14@287@22-aux|)))
(assert (forall ((n$0@12@01 $Ref)) (!
  (=>
    (and
      (Set_in n$0@12@01 g@3@01)
      (not (= ($FVF.lookup_next (as sm@11@01  $FVF<next>) n$0@12@01) $Ref.null)))
    (Set_in ($FVF.lookup_next (as sm@11@01  $FVF<next>) n$0@12@01) g@3@01))
  :pattern ((Set_in ($FVF.lookup_next (as sm@11@01  $FVF<next>) n$0@12@01) g@3@01))
  :pattern ((Set_in n$0@12@01 g@3@01) ($FVF.loc_next ($FVF.lookup_next (as sm@11@01  $FVF<next>) n$0@12@01) n$0@12@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/graphs/static/outlines/list_append.vpr@287@14@287@22|)))
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
(set-option :timeout 0)
(push) ; 2
(declare-const $t@13@01 $Snap)
(assert (= $t@13@01 ($Snap.combine ($Snap.first $t@13@01) ($Snap.second $t@13@01))))
(assert (= ($Snap.first $t@13@01) $Snap.unit))
; [eval] !((null in g))
; [eval] (null in g)
(assert (=
  ($Snap.second $t@13@01)
  ($Snap.combine
    ($Snap.first ($Snap.second $t@13@01))
    ($Snap.second ($Snap.second $t@13@01)))))
(declare-const n$1@14@01 $Ref)
(push) ; 3
; [eval] (n$1 in g)
(assert (Set_in n$1@14@01 g@3@01))
(declare-const sm@15@01 $FVF<next>)
; Definitional axioms for snapshot map values
(pop) ; 3
(declare-fun inv@16@01 ($Ref) $Ref)
(declare-fun img@17@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
; Check receiver injectivity
(push) ; 3
(assert (not (forall ((n$11@14@01 $Ref) (n$12@14@01 $Ref)) (!
  (=>
    (and
      (Set_in n$11@14@01 g@3@01)
      (Set_in n$12@14@01 g@3@01)
      (= n$11@14@01 n$12@14@01))
    (= n$11@14@01 n$12@14@01))
  
  :qid |next-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((n$1@14@01 $Ref)) (!
  (=>
    (Set_in n$1@14@01 g@3@01)
    (and (= (inv@16@01 n$1@14@01) n$1@14@01) (img@17@01 n$1@14@01)))
  :pattern (($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@13@01))) n$1@14@01) n$1@14@01))
  :qid |quant-u-15487|)))
(assert (forall ((r $Ref)) (!
  (=> (and (img@17@01 r) (Set_in (inv@16@01 r) g@3@01)) (= (inv@16@01 r) r))
  :pattern ((inv@16@01 r))
  :qid |next-fctOfInv|)))
; Permissions are non-negative
; Field permissions are at most one
; Permission implies non-null receiver
(assert (forall ((n$1@14@01 $Ref)) (!
  (=> (Set_in n$1@14@01 g@3@01) (not (= n$1@14@01 $Ref.null)))
  :pattern (($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@13@01))) n$1@14@01) n$1@14@01))
  :qid |next-permImpliesNonNull|)))
(declare-const sm@18@01 $FVF<next>)
; Definitional axioms for snapshot map values
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@17@01 r) (Set_in (inv@16@01 r) g@3@01))
    (=
      ($FVF.lookup_next (as sm@18@01  $FVF<next>) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@13@01))) r)))
  :pattern (($FVF.lookup_next (as sm@18@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@13@01))) r))
  :qid |qp.fvfValDef4|)))
(assert (forall ((r $Ref)) (!
  ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@13@01))) r) r)
  :pattern (($FVF.lookup_next (as sm@18@01  $FVF<next>) r))
  :qid |qp.fvfResTrgDef5|)))
(assert (forall ((r $Ref)) (!
  (=>
    (Set_in (inv@16@01 r) g@3@01)
    ($FVF.loc_next ($FVF.lookup_next (as sm@18@01  $FVF<next>) r) r))
  :pattern ((inv@16@01 r))
  :qid |quant-u-15488|)))
(assert (=
  ($Snap.second ($Snap.second $t@13@01))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second $t@13@01)))
    ($Snap.second ($Snap.second ($Snap.second $t@13@01))))))
(assert (= ($Snap.first ($Snap.second ($Snap.second $t@13@01))) $Snap.unit))
; [eval] (forall n$2: Ref :: { (n$2.next in g) } { (n$2 in g), n$2.next } (n$2 in g) && n$2.next != null ==> (n$2.next in g))
(declare-const n$2@19@01 $Ref)
(push) ; 3
; [eval] (n$2 in g) && n$2.next != null ==> (n$2.next in g)
; [eval] (n$2 in g) && n$2.next != null
; [eval] (n$2 in g)
(push) ; 4
; [then-branch: 3 | !(n$2@19@01 in g@3@01) | live]
; [else-branch: 3 | n$2@19@01 in g@3@01 | live]
(push) ; 5
; [then-branch: 3 | !(n$2@19@01 in g@3@01)]
(assert (not (Set_in n$2@19@01 g@3@01)))
(pop) ; 5
(push) ; 5
; [else-branch: 3 | n$2@19@01 in g@3@01]
(assert (Set_in n$2@19@01 g@3@01))
; [eval] n$2.next != null
(assert (and
  (forall ((r $Ref)) (!
    (=>
      (and (img@17@01 r) (Set_in (inv@16@01 r) g@3@01))
      (=
        ($FVF.lookup_next (as sm@18@01  $FVF<next>) r)
        ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@13@01))) r)))
    :pattern (($FVF.lookup_next (as sm@18@01  $FVF<next>) r))
    :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@13@01))) r))
    :qid |qp.fvfValDef4|))
  (forall ((r $Ref)) (!
    ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@13@01))) r) r)
    :pattern (($FVF.lookup_next (as sm@18@01  $FVF<next>) r))
    :qid |qp.fvfResTrgDef5|))))
(assert ($FVF.loc_next ($FVF.lookup_next (as sm@18@01  $FVF<next>) n$2@19@01) n$2@19@01))
(push) ; 6
(assert (not (and (img@17@01 n$2@19@01) (Set_in (inv@16@01 n$2@19@01) g@3@01))))
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
    (and (img@17@01 r) (Set_in (inv@16@01 r) g@3@01))
    (=
      ($FVF.lookup_next (as sm@18@01  $FVF<next>) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@13@01))) r)))
  :pattern (($FVF.lookup_next (as sm@18@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@13@01))) r))
  :qid |qp.fvfValDef4|)))
(assert (forall ((r $Ref)) (!
  ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@13@01))) r) r)
  :pattern (($FVF.lookup_next (as sm@18@01  $FVF<next>) r))
  :qid |qp.fvfResTrgDef5|)))
(assert (=>
  (Set_in n$2@19@01 g@3@01)
  (and
    (Set_in n$2@19@01 g@3@01)
    ($FVF.loc_next ($FVF.lookup_next (as sm@18@01  $FVF<next>) n$2@19@01) n$2@19@01))))
(assert (or (Set_in n$2@19@01 g@3@01) (not (Set_in n$2@19@01 g@3@01))))
(push) ; 4
; [then-branch: 4 | n$2@19@01 in g@3@01 && Lookup(next, sm@18@01, n$2@19@01) != Null | live]
; [else-branch: 4 | !(n$2@19@01 in g@3@01 && Lookup(next, sm@18@01, n$2@19@01) != Null) | live]
(push) ; 5
; [then-branch: 4 | n$2@19@01 in g@3@01 && Lookup(next, sm@18@01, n$2@19@01) != Null]
(assert (and
  (Set_in n$2@19@01 g@3@01)
  (not (= ($FVF.lookup_next (as sm@18@01  $FVF<next>) n$2@19@01) $Ref.null))))
; [eval] (n$2.next in g)
(assert (and
  (forall ((r $Ref)) (!
    (=>
      (and (img@17@01 r) (Set_in (inv@16@01 r) g@3@01))
      (=
        ($FVF.lookup_next (as sm@18@01  $FVF<next>) r)
        ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@13@01))) r)))
    :pattern (($FVF.lookup_next (as sm@18@01  $FVF<next>) r))
    :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@13@01))) r))
    :qid |qp.fvfValDef4|))
  (forall ((r $Ref)) (!
    ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@13@01))) r) r)
    :pattern (($FVF.lookup_next (as sm@18@01  $FVF<next>) r))
    :qid |qp.fvfResTrgDef5|))))
(assert ($FVF.loc_next ($FVF.lookup_next (as sm@18@01  $FVF<next>) n$2@19@01) n$2@19@01))
(push) ; 6
(assert (not (and (img@17@01 n$2@19@01) (Set_in (inv@16@01 n$2@19@01) g@3@01))))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(pop) ; 5
(push) ; 5
; [else-branch: 4 | !(n$2@19@01 in g@3@01 && Lookup(next, sm@18@01, n$2@19@01) != Null)]
(assert (not
  (and
    (Set_in n$2@19@01 g@3@01)
    (not (= ($FVF.lookup_next (as sm@18@01  $FVF<next>) n$2@19@01) $Ref.null)))))
(pop) ; 5
(pop) ; 4
; Joined path conditions
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@17@01 r) (Set_in (inv@16@01 r) g@3@01))
    (=
      ($FVF.lookup_next (as sm@18@01  $FVF<next>) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@13@01))) r)))
  :pattern (($FVF.lookup_next (as sm@18@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@13@01))) r))
  :qid |qp.fvfValDef4|)))
(assert (forall ((r $Ref)) (!
  ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@13@01))) r) r)
  :pattern (($FVF.lookup_next (as sm@18@01  $FVF<next>) r))
  :qid |qp.fvfResTrgDef5|)))
(assert (=>
  (and
    (Set_in n$2@19@01 g@3@01)
    (not (= ($FVF.lookup_next (as sm@18@01  $FVF<next>) n$2@19@01) $Ref.null)))
  (and
    (Set_in n$2@19@01 g@3@01)
    (not (= ($FVF.lookup_next (as sm@18@01  $FVF<next>) n$2@19@01) $Ref.null))
    ($FVF.loc_next ($FVF.lookup_next (as sm@18@01  $FVF<next>) n$2@19@01) n$2@19@01))))
; Joined path conditions
(assert (or
  (not
    (and
      (Set_in n$2@19@01 g@3@01)
      (not (= ($FVF.lookup_next (as sm@18@01  $FVF<next>) n$2@19@01) $Ref.null))))
  (and
    (Set_in n$2@19@01 g@3@01)
    (not (= ($FVF.lookup_next (as sm@18@01  $FVF<next>) n$2@19@01) $Ref.null)))))
; Definitional axioms for snapshot map values
(pop) ; 3
; Nested auxiliary terms: globals (aux)
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@17@01 r) (Set_in (inv@16@01 r) g@3@01))
    (=
      ($FVF.lookup_next (as sm@18@01  $FVF<next>) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@13@01))) r)))
  :pattern (($FVF.lookup_next (as sm@18@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@13@01))) r))
  :qid |qp.fvfValDef4|)))
(assert (forall ((r $Ref)) (!
  ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@13@01))) r) r)
  :pattern (($FVF.lookup_next (as sm@18@01  $FVF<next>) r))
  :qid |qp.fvfResTrgDef5|)))
; Nested auxiliary terms: non-globals (aux)
(assert (forall ((n$2@19@01 $Ref)) (!
  (and
    (=>
      (Set_in n$2@19@01 g@3@01)
      (and
        (Set_in n$2@19@01 g@3@01)
        ($FVF.loc_next ($FVF.lookup_next (as sm@18@01  $FVF<next>) n$2@19@01) n$2@19@01)))
    (or (Set_in n$2@19@01 g@3@01) (not (Set_in n$2@19@01 g@3@01)))
    (=>
      (and
        (Set_in n$2@19@01 g@3@01)
        (not
          (= ($FVF.lookup_next (as sm@18@01  $FVF<next>) n$2@19@01) $Ref.null)))
      (and
        (Set_in n$2@19@01 g@3@01)
        (not
          (= ($FVF.lookup_next (as sm@18@01  $FVF<next>) n$2@19@01) $Ref.null))
        ($FVF.loc_next ($FVF.lookup_next (as sm@18@01  $FVF<next>) n$2@19@01) n$2@19@01)))
    (or
      (not
        (and
          (Set_in n$2@19@01 g@3@01)
          (not
            (= ($FVF.lookup_next (as sm@18@01  $FVF<next>) n$2@19@01) $Ref.null))))
      (and
        (Set_in n$2@19@01 g@3@01)
        (not
          (= ($FVF.lookup_next (as sm@18@01  $FVF<next>) n$2@19@01) $Ref.null)))))
  :pattern ((Set_in ($FVF.lookup_next (as sm@18@01  $FVF<next>) n$2@19@01) g@3@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/graphs/static/outlines/list_append.vpr@288@13@288@21-aux|)))
(assert (forall ((n$2@19@01 $Ref)) (!
  (and
    (=>
      (Set_in n$2@19@01 g@3@01)
      (and
        (Set_in n$2@19@01 g@3@01)
        ($FVF.loc_next ($FVF.lookup_next (as sm@18@01  $FVF<next>) n$2@19@01) n$2@19@01)))
    (or (Set_in n$2@19@01 g@3@01) (not (Set_in n$2@19@01 g@3@01)))
    (=>
      (and
        (Set_in n$2@19@01 g@3@01)
        (not
          (= ($FVF.lookup_next (as sm@18@01  $FVF<next>) n$2@19@01) $Ref.null)))
      (and
        (Set_in n$2@19@01 g@3@01)
        (not
          (= ($FVF.lookup_next (as sm@18@01  $FVF<next>) n$2@19@01) $Ref.null))
        ($FVF.loc_next ($FVF.lookup_next (as sm@18@01  $FVF<next>) n$2@19@01) n$2@19@01)))
    (or
      (not
        (and
          (Set_in n$2@19@01 g@3@01)
          (not
            (= ($FVF.lookup_next (as sm@18@01  $FVF<next>) n$2@19@01) $Ref.null))))
      (and
        (Set_in n$2@19@01 g@3@01)
        (not
          (= ($FVF.lookup_next (as sm@18@01  $FVF<next>) n$2@19@01) $Ref.null)))))
  :pattern ((Set_in n$2@19@01 g@3@01) ($FVF.loc_next ($FVF.lookup_next (as sm@18@01  $FVF<next>) n$2@19@01) n$2@19@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/graphs/static/outlines/list_append.vpr@288@13@288@21-aux|)))
(assert (forall ((n$2@19@01 $Ref)) (!
  (=>
    (and
      (Set_in n$2@19@01 g@3@01)
      (not (= ($FVF.lookup_next (as sm@18@01  $FVF<next>) n$2@19@01) $Ref.null)))
    (Set_in ($FVF.lookup_next (as sm@18@01  $FVF<next>) n$2@19@01) g@3@01))
  :pattern ((Set_in ($FVF.lookup_next (as sm@18@01  $FVF<next>) n$2@19@01) g@3@01))
  :pattern ((Set_in n$2@19@01 g@3@01) ($FVF.loc_next ($FVF.lookup_next (as sm@18@01  $FVF<next>) n$2@19@01) n$2@19@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/graphs/static/outlines/list_append.vpr@288@13@288@21|)))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second $t@13@01)))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@13@01))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@13@01)))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@13@01))))
  $Snap.unit))
; [eval] x.next == y
(assert (and
  (forall ((r $Ref)) (!
    (=>
      (and (img@17@01 r) (Set_in (inv@16@01 r) g@3@01))
      (=
        ($FVF.lookup_next (as sm@18@01  $FVF<next>) r)
        ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@13@01))) r)))
    :pattern (($FVF.lookup_next (as sm@18@01  $FVF<next>) r))
    :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@13@01))) r))
    :qid |qp.fvfValDef4|))
  (forall ((r $Ref)) (!
    ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@13@01))) r) r)
    :pattern (($FVF.lookup_next (as sm@18@01  $FVF<next>) r))
    :qid |qp.fvfResTrgDef5|))))
(assert ($FVF.loc_next ($FVF.lookup_next (as sm@18@01  $FVF<next>) x@4@01) x@4@01))
(push) ; 3
(assert (not (and (img@17@01 x@4@01) (Set_in (inv@16@01 x@4@01) g@3@01))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(assert (= ($FVF.lookup_next (as sm@18@01  $FVF<next>) x@4@01) y@5@01))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@13@01))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@13@01)))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@13@01))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@13@01)))))
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
; [then-branch: 5 | y@5@01 == Null | live]
; [else-branch: 5 | y@5@01 != Null | live]
(set-option :timeout 0)
(push) ; 4
; [then-branch: 5 | y@5@01 == Null]
(assert (= y@5@01 $Ref.null))
; [eval] $$(g) == old($$(g))
; [eval] $$(g)
(push) ; 5
(declare-const n@20@01 $Ref)
(push) ; 6
; [eval] (n in refs)
(assert (Set_in n@20@01 g@3@01))
(pop) ; 6
(declare-fun inv@21@01 ($Ref) $Ref)
(declare-fun img@22@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
; Definitional axioms for snapshot map domain
; Definitional axioms for snapshot map values
; Check receiver injectivity
(push) ; 6
(assert (not (forall ((n1@20@01 $Ref) (n2@20@01 $Ref)) (!
  (=>
    (and
      (and
        (Set_in n1@20@01 g@3@01)
        ($FVF.loc_next ($FVF.lookup_next (as sm@18@01  $FVF<next>) n1@20@01) n1@20@01))
      (and
        (Set_in n2@20@01 g@3@01)
        ($FVF.loc_next ($FVF.lookup_next (as sm@18@01  $FVF<next>) n2@20@01) n2@20@01))
      (= n1@20@01 n2@20@01))
    (= n1@20@01 n2@20@01))
  
  :qid |next-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((n@20@01 $Ref)) (!
  (=>
    (Set_in n@20@01 g@3@01)
    (and (= (inv@21@01 n@20@01) n@20@01) (img@22@01 n@20@01)))
  :pattern ((Set_in n@20@01 g@3@01))
  :pattern ((inv@21@01 n@20@01))
  :pattern ((img@22@01 n@20@01))
  :qid |next-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=> (and (img@22@01 r) (Set_in (inv@21@01 r) g@3@01)) (= (inv@21@01 r) r))
  :pattern ((inv@21@01 r))
  :qid |next-fctOfInv|)))
(assert (forall ((r $Ref)) (!
  (=>
    (Set_in (inv@21@01 r) g@3@01)
    ($FVF.loc_next ($FVF.lookup_next (as sm@18@01  $FVF<next>) r) r))
  :pattern ((inv@21@01 r))
  :qid |quant-u-15490|)))
(push) ; 6
(assert (not (forall ((r $Ref)) (!
  (=>
    (and (Set_in (inv@21@01 r) g@3@01) (img@22@01 r) (= r (inv@21@01 r)))
    (>
      (ite
        (and (img@17@01 r) (Set_in (inv@16@01 r) g@3@01))
        $Perm.Write
        $Perm.No)
      $Perm.No))
  
  :qid |quant-u-15491|))))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(declare-const sm@23@01 $FVF<next>)
; Definitional axioms for snapshot map domain
(assert (forall ((r $Ref)) (!
  (and
    (=>
      (Set_in r ($FVF.domain_next (as sm@23@01  $FVF<next>)))
      (and (Set_in (inv@21@01 r) g@3@01) (img@22@01 r)))
    (=>
      (and (Set_in (inv@21@01 r) g@3@01) (img@22@01 r))
      (Set_in r ($FVF.domain_next (as sm@23@01  $FVF<next>)))))
  :pattern ((Set_in r ($FVF.domain_next (as sm@23@01  $FVF<next>))))
  :qid |qp.fvfDomDef8|)))
; Definitional axioms for snapshot map values
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and (Set_in (inv@21@01 r) g@3@01) (img@22@01 r))
      (and (img@17@01 r) (Set_in (inv@16@01 r) g@3@01)))
    (=
      ($FVF.lookup_next (as sm@23@01  $FVF<next>) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@13@01))) r)))
  :pattern (($FVF.lookup_next (as sm@23@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@13@01))) r))
  :qid |qp.fvfValDef6|)))
(assert (forall ((r $Ref)) (!
  ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@13@01))) r) r)
  :pattern (($FVF.lookup_next (as sm@23@01  $FVF<next>) r))
  :qid |qp.fvfResTrgDef7|)))
(assert ($$%precondition ($SortWrappers.$FVF<next>To$Snap (as sm@23@01  $FVF<next>)) g@3@01))
(pop) ; 5
; Joined path conditions
(assert (forall ((n@20@01 $Ref)) (!
  (=>
    (Set_in n@20@01 g@3@01)
    (and (= (inv@21@01 n@20@01) n@20@01) (img@22@01 n@20@01)))
  :pattern ((Set_in n@20@01 g@3@01))
  :pattern ((inv@21@01 n@20@01))
  :pattern ((img@22@01 n@20@01))
  :qid |next-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=> (and (img@22@01 r) (Set_in (inv@21@01 r) g@3@01)) (= (inv@21@01 r) r))
  :pattern ((inv@21@01 r))
  :qid |next-fctOfInv|)))
(assert (forall ((r $Ref)) (!
  (and
    (=>
      (Set_in r ($FVF.domain_next (as sm@23@01  $FVF<next>)))
      (and (Set_in (inv@21@01 r) g@3@01) (img@22@01 r)))
    (=>
      (and (Set_in (inv@21@01 r) g@3@01) (img@22@01 r))
      (Set_in r ($FVF.domain_next (as sm@23@01  $FVF<next>)))))
  :pattern ((Set_in r ($FVF.domain_next (as sm@23@01  $FVF<next>))))
  :qid |qp.fvfDomDef8|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and (Set_in (inv@21@01 r) g@3@01) (img@22@01 r))
      (and (img@17@01 r) (Set_in (inv@16@01 r) g@3@01)))
    (=
      ($FVF.lookup_next (as sm@23@01  $FVF<next>) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@13@01))) r)))
  :pattern (($FVF.lookup_next (as sm@23@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@13@01))) r))
  :qid |qp.fvfValDef6|)))
(assert (forall ((r $Ref)) (!
  ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@13@01))) r) r)
  :pattern (($FVF.lookup_next (as sm@23@01  $FVF<next>) r))
  :qid |qp.fvfResTrgDef7|)))
(assert (and
  (forall ((r $Ref)) (!
    (=>
      (Set_in (inv@21@01 r) g@3@01)
      ($FVF.loc_next ($FVF.lookup_next (as sm@18@01  $FVF<next>) r) r))
    :pattern ((inv@21@01 r))
    :qid |quant-u-15490|))
  ($$%precondition ($SortWrappers.$FVF<next>To$Snap (as sm@23@01  $FVF<next>)) g@3@01)))
; [eval] old($$(g))
; [eval] $$(g)
(push) ; 5
(declare-const n@24@01 $Ref)
(push) ; 6
; [eval] (n in refs)
(assert (Set_in n@24@01 g@3@01))
(pop) ; 6
(declare-fun inv@25@01 ($Ref) $Ref)
(declare-fun img@26@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
; Definitional axioms for snapshot map domain
; Definitional axioms for snapshot map values
; Check receiver injectivity
(push) ; 6
(assert (not (forall ((n1@24@01 $Ref) (n2@24@01 $Ref)) (!
  (=>
    (and
      (and
        (Set_in n1@24@01 g@3@01)
        ($FVF.loc_next ($FVF.lookup_next (as sm@11@01  $FVF<next>) n1@24@01) n1@24@01))
      (and
        (Set_in n2@24@01 g@3@01)
        ($FVF.loc_next ($FVF.lookup_next (as sm@11@01  $FVF<next>) n2@24@01) n2@24@01))
      (= n1@24@01 n2@24@01))
    (= n1@24@01 n2@24@01))
  
  :qid |next-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((n@24@01 $Ref)) (!
  (=>
    (Set_in n@24@01 g@3@01)
    (and (= (inv@25@01 n@24@01) n@24@01) (img@26@01 n@24@01)))
  :pattern ((Set_in n@24@01 g@3@01))
  :pattern ((inv@25@01 n@24@01))
  :pattern ((img@26@01 n@24@01))
  :qid |next-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=> (and (img@26@01 r) (Set_in (inv@25@01 r) g@3@01)) (= (inv@25@01 r) r))
  :pattern ((inv@25@01 r))
  :qid |next-fctOfInv|)))
(assert (forall ((r $Ref)) (!
  (=>
    (Set_in (inv@25@01 r) g@3@01)
    ($FVF.loc_next ($FVF.lookup_next (as sm@11@01  $FVF<next>) r) r))
  :pattern ((inv@25@01 r))
  :qid |quant-u-15493|)))
(push) ; 6
(assert (not (forall ((r $Ref)) (!
  (=>
    (and (Set_in (inv@25@01 r) g@3@01) (img@26@01 r) (= r (inv@25@01 r)))
    (>
      (ite (and (img@10@01 r) (Set_in (inv@9@01 r) g@3@01)) $Perm.Write $Perm.No)
      $Perm.No))
  
  :qid |quant-u-15494|))))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(declare-const sm@27@01 $FVF<next>)
; Definitional axioms for snapshot map domain
(assert (forall ((r $Ref)) (!
  (and
    (=>
      (Set_in r ($FVF.domain_next (as sm@27@01  $FVF<next>)))
      (and (Set_in (inv@25@01 r) g@3@01) (img@26@01 r)))
    (=>
      (and (Set_in (inv@25@01 r) g@3@01) (img@26@01 r))
      (Set_in r ($FVF.domain_next (as sm@27@01  $FVF<next>)))))
  :pattern ((Set_in r ($FVF.domain_next (as sm@27@01  $FVF<next>))))
  :qid |qp.fvfDomDef11|)))
; Definitional axioms for snapshot map values
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and (Set_in (inv@25@01 r) g@3@01) (img@26@01 r))
      (and (img@10@01 r) (Set_in (inv@9@01 r) g@3@01)))
    (=
      ($FVF.lookup_next (as sm@27@01  $FVF<next>) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@6@01))))) r)))
  :pattern (($FVF.lookup_next (as sm@27@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@6@01))))) r))
  :qid |qp.fvfValDef9|)))
(assert (forall ((r $Ref)) (!
  ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@6@01))))) r) r)
  :pattern (($FVF.lookup_next (as sm@27@01  $FVF<next>) r))
  :qid |qp.fvfResTrgDef10|)))
(assert ($$%precondition ($SortWrappers.$FVF<next>To$Snap (as sm@27@01  $FVF<next>)) g@3@01))
(pop) ; 5
; Joined path conditions
(assert (forall ((n@24@01 $Ref)) (!
  (=>
    (Set_in n@24@01 g@3@01)
    (and (= (inv@25@01 n@24@01) n@24@01) (img@26@01 n@24@01)))
  :pattern ((Set_in n@24@01 g@3@01))
  :pattern ((inv@25@01 n@24@01))
  :pattern ((img@26@01 n@24@01))
  :qid |next-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=> (and (img@26@01 r) (Set_in (inv@25@01 r) g@3@01)) (= (inv@25@01 r) r))
  :pattern ((inv@25@01 r))
  :qid |next-fctOfInv|)))
(assert (forall ((r $Ref)) (!
  (and
    (=>
      (Set_in r ($FVF.domain_next (as sm@27@01  $FVF<next>)))
      (and (Set_in (inv@25@01 r) g@3@01) (img@26@01 r)))
    (=>
      (and (Set_in (inv@25@01 r) g@3@01) (img@26@01 r))
      (Set_in r ($FVF.domain_next (as sm@27@01  $FVF<next>)))))
  :pattern ((Set_in r ($FVF.domain_next (as sm@27@01  $FVF<next>))))
  :qid |qp.fvfDomDef11|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and (Set_in (inv@25@01 r) g@3@01) (img@26@01 r))
      (and (img@10@01 r) (Set_in (inv@9@01 r) g@3@01)))
    (=
      ($FVF.lookup_next (as sm@27@01  $FVF<next>) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@6@01))))) r)))
  :pattern (($FVF.lookup_next (as sm@27@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@6@01))))) r))
  :qid |qp.fvfValDef9|)))
(assert (forall ((r $Ref)) (!
  ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@6@01))))) r) r)
  :pattern (($FVF.lookup_next (as sm@27@01  $FVF<next>) r))
  :qid |qp.fvfResTrgDef10|)))
(assert (and
  (forall ((r $Ref)) (!
    (=>
      (Set_in (inv@25@01 r) g@3@01)
      ($FVF.loc_next ($FVF.lookup_next (as sm@11@01  $FVF<next>) r) r))
    :pattern ((inv@25@01 r))
    :qid |quant-u-15493|))
  ($$%precondition ($SortWrappers.$FVF<next>To$Snap (as sm@27@01  $FVF<next>)) g@3@01)))
(pop) ; 4
(push) ; 4
; [else-branch: 5 | y@5@01 != Null]
(assert (not (= y@5@01 $Ref.null)))
(pop) ; 4
(pop) ; 3
; Joined path conditions
(assert (forall ((n@20@01 $Ref)) (!
  (=>
    (Set_in n@20@01 g@3@01)
    (and (= (inv@21@01 n@20@01) n@20@01) (img@22@01 n@20@01)))
  :pattern ((Set_in n@20@01 g@3@01))
  :pattern ((inv@21@01 n@20@01))
  :pattern ((img@22@01 n@20@01))
  :qid |next-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=> (and (img@22@01 r) (Set_in (inv@21@01 r) g@3@01)) (= (inv@21@01 r) r))
  :pattern ((inv@21@01 r))
  :qid |next-fctOfInv|)))
(assert (forall ((r $Ref)) (!
  (and
    (=>
      (Set_in r ($FVF.domain_next (as sm@23@01  $FVF<next>)))
      (and (Set_in (inv@21@01 r) g@3@01) (img@22@01 r)))
    (=>
      (and (Set_in (inv@21@01 r) g@3@01) (img@22@01 r))
      (Set_in r ($FVF.domain_next (as sm@23@01  $FVF<next>)))))
  :pattern ((Set_in r ($FVF.domain_next (as sm@23@01  $FVF<next>))))
  :qid |qp.fvfDomDef8|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and (Set_in (inv@21@01 r) g@3@01) (img@22@01 r))
      (and (img@17@01 r) (Set_in (inv@16@01 r) g@3@01)))
    (=
      ($FVF.lookup_next (as sm@23@01  $FVF<next>) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@13@01))) r)))
  :pattern (($FVF.lookup_next (as sm@23@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@13@01))) r))
  :qid |qp.fvfValDef6|)))
(assert (forall ((r $Ref)) (!
  ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@13@01))) r) r)
  :pattern (($FVF.lookup_next (as sm@23@01  $FVF<next>) r))
  :qid |qp.fvfResTrgDef7|)))
(assert (forall ((n@24@01 $Ref)) (!
  (=>
    (Set_in n@24@01 g@3@01)
    (and (= (inv@25@01 n@24@01) n@24@01) (img@26@01 n@24@01)))
  :pattern ((Set_in n@24@01 g@3@01))
  :pattern ((inv@25@01 n@24@01))
  :pattern ((img@26@01 n@24@01))
  :qid |next-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=> (and (img@26@01 r) (Set_in (inv@25@01 r) g@3@01)) (= (inv@25@01 r) r))
  :pattern ((inv@25@01 r))
  :qid |next-fctOfInv|)))
(assert (forall ((r $Ref)) (!
  (and
    (=>
      (Set_in r ($FVF.domain_next (as sm@27@01  $FVF<next>)))
      (and (Set_in (inv@25@01 r) g@3@01) (img@26@01 r)))
    (=>
      (and (Set_in (inv@25@01 r) g@3@01) (img@26@01 r))
      (Set_in r ($FVF.domain_next (as sm@27@01  $FVF<next>)))))
  :pattern ((Set_in r ($FVF.domain_next (as sm@27@01  $FVF<next>))))
  :qid |qp.fvfDomDef11|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and (Set_in (inv@25@01 r) g@3@01) (img@26@01 r))
      (and (img@10@01 r) (Set_in (inv@9@01 r) g@3@01)))
    (=
      ($FVF.lookup_next (as sm@27@01  $FVF<next>) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@6@01))))) r)))
  :pattern (($FVF.lookup_next (as sm@27@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@6@01))))) r))
  :qid |qp.fvfValDef9|)))
(assert (forall ((r $Ref)) (!
  ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@6@01))))) r) r)
  :pattern (($FVF.lookup_next (as sm@27@01  $FVF<next>) r))
  :qid |qp.fvfResTrgDef10|)))
(assert (=>
  (= y@5@01 $Ref.null)
  (and
    (= y@5@01 $Ref.null)
    (forall ((r $Ref)) (!
      (=>
        (Set_in (inv@21@01 r) g@3@01)
        ($FVF.loc_next ($FVF.lookup_next (as sm@18@01  $FVF<next>) r) r))
      :pattern ((inv@21@01 r))
      :qid |quant-u-15490|))
    ($$%precondition ($SortWrappers.$FVF<next>To$Snap (as sm@23@01  $FVF<next>)) g@3@01)
    (forall ((r $Ref)) (!
      (=>
        (Set_in (inv@25@01 r) g@3@01)
        ($FVF.loc_next ($FVF.lookup_next (as sm@11@01  $FVF<next>) r) r))
      :pattern ((inv@25@01 r))
      :qid |quant-u-15493|))
    ($$%precondition ($SortWrappers.$FVF<next>To$Snap (as sm@27@01  $FVF<next>)) g@3@01))))
; Joined path conditions
(assert (or (not (= y@5@01 $Ref.null)) (= y@5@01 $Ref.null)))
(assert (=>
  (= y@5@01 $Ref.null)
  (Set_equal ($$ ($SortWrappers.$FVF<next>To$Snap (as sm@23@01  $FVF<next>)) g@3@01) ($$ ($SortWrappers.$FVF<next>To$Snap (as sm@27@01  $FVF<next>)) g@3@01))))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@13@01)))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@13@01))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@13@01)))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@13@01))))))
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
; 0.00s
; (get-info :all-statistics)
; [then-branch: 6 | y@5@01 != Null | live]
; [else-branch: 6 | y@5@01 == Null | live]
(set-option :timeout 0)
(push) ; 4
; [then-branch: 6 | y@5@01 != Null]
(assert (not (= y@5@01 $Ref.null)))
; [eval] (forall v1: Ref, v2: Ref :: { edge(old($$(g)), v1, v2) } edge($$(g), v1, v2) == (edge(old($$(g)), v1, v2) || v1 == x && v2 == y))
(declare-const v1@28@01 $Ref)
(declare-const v2@29@01 $Ref)
(push) ; 5
; [eval] edge($$(g), v1, v2) == (edge(old($$(g)), v1, v2) || v1 == x && v2 == y)
; [eval] edge($$(g), v1, v2)
; [eval] $$(g)
(push) ; 6
(declare-const n@30@01 $Ref)
(push) ; 7
; [eval] (n in refs)
(assert (Set_in n@30@01 g@3@01))
(pop) ; 7
(declare-fun inv@31@01 ($Ref) $Ref)
(declare-fun img@32@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
; Definitional axioms for snapshot map domain
; Definitional axioms for snapshot map values
; Check receiver injectivity
(push) ; 7
(assert (not (forall ((n1@30@01 $Ref) (n2@30@01 $Ref)) (!
  (=>
    (and
      (and
        (Set_in n1@30@01 g@3@01)
        ($FVF.loc_next ($FVF.lookup_next (as sm@18@01  $FVF<next>) n1@30@01) n1@30@01))
      (and
        (Set_in n2@30@01 g@3@01)
        ($FVF.loc_next ($FVF.lookup_next (as sm@18@01  $FVF<next>) n2@30@01) n2@30@01))
      (= n1@30@01 n2@30@01))
    (= n1@30@01 n2@30@01))
  
  :qid |next-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((n@30@01 $Ref)) (!
  (=>
    (Set_in n@30@01 g@3@01)
    (and (= (inv@31@01 n@30@01) n@30@01) (img@32@01 n@30@01)))
  :pattern ((Set_in n@30@01 g@3@01))
  :pattern ((inv@31@01 n@30@01))
  :pattern ((img@32@01 n@30@01))
  :qid |next-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=> (and (img@32@01 r) (Set_in (inv@31@01 r) g@3@01)) (= (inv@31@01 r) r))
  :pattern ((inv@31@01 r))
  :qid |next-fctOfInv|)))
(assert (forall ((r $Ref)) (!
  (=>
    (Set_in (inv@31@01 r) g@3@01)
    ($FVF.loc_next ($FVF.lookup_next (as sm@18@01  $FVF<next>) r) r))
  :pattern ((inv@31@01 r))
  :qid |quant-u-15496|)))
(push) ; 7
(assert (not (forall ((r $Ref)) (!
  (=>
    (and (Set_in (inv@31@01 r) g@3@01) (img@32@01 r) (= r (inv@31@01 r)))
    (>
      (ite
        (and (img@17@01 r) (Set_in (inv@16@01 r) g@3@01))
        $Perm.Write
        $Perm.No)
      $Perm.No))
  
  :qid |quant-u-15497|))))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(declare-const sm@33@01 $FVF<next>)
; Definitional axioms for snapshot map domain
(assert (forall ((r $Ref)) (!
  (and
    (=>
      (Set_in r ($FVF.domain_next (as sm@33@01  $FVF<next>)))
      (and (Set_in (inv@31@01 r) g@3@01) (img@32@01 r)))
    (=>
      (and (Set_in (inv@31@01 r) g@3@01) (img@32@01 r))
      (Set_in r ($FVF.domain_next (as sm@33@01  $FVF<next>)))))
  :pattern ((Set_in r ($FVF.domain_next (as sm@33@01  $FVF<next>))))
  :qid |qp.fvfDomDef14|)))
; Definitional axioms for snapshot map values
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and (Set_in (inv@31@01 r) g@3@01) (img@32@01 r))
      (and (img@17@01 r) (Set_in (inv@16@01 r) g@3@01)))
    (=
      ($FVF.lookup_next (as sm@33@01  $FVF<next>) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@13@01))) r)))
  :pattern (($FVF.lookup_next (as sm@33@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@13@01))) r))
  :qid |qp.fvfValDef12|)))
(assert (forall ((r $Ref)) (!
  ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@13@01))) r) r)
  :pattern (($FVF.lookup_next (as sm@33@01  $FVF<next>) r))
  :qid |qp.fvfResTrgDef13|)))
(assert ($$%precondition ($SortWrappers.$FVF<next>To$Snap (as sm@33@01  $FVF<next>)) g@3@01))
(pop) ; 6
; Joined path conditions
(assert (forall ((n@30@01 $Ref)) (!
  (=>
    (Set_in n@30@01 g@3@01)
    (and (= (inv@31@01 n@30@01) n@30@01) (img@32@01 n@30@01)))
  :pattern ((Set_in n@30@01 g@3@01))
  :pattern ((inv@31@01 n@30@01))
  :pattern ((img@32@01 n@30@01))
  :qid |next-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=> (and (img@32@01 r) (Set_in (inv@31@01 r) g@3@01)) (= (inv@31@01 r) r))
  :pattern ((inv@31@01 r))
  :qid |next-fctOfInv|)))
(assert (forall ((r $Ref)) (!
  (and
    (=>
      (Set_in r ($FVF.domain_next (as sm@33@01  $FVF<next>)))
      (and (Set_in (inv@31@01 r) g@3@01) (img@32@01 r)))
    (=>
      (and (Set_in (inv@31@01 r) g@3@01) (img@32@01 r))
      (Set_in r ($FVF.domain_next (as sm@33@01  $FVF<next>)))))
  :pattern ((Set_in r ($FVF.domain_next (as sm@33@01  $FVF<next>))))
  :qid |qp.fvfDomDef14|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and (Set_in (inv@31@01 r) g@3@01) (img@32@01 r))
      (and (img@17@01 r) (Set_in (inv@16@01 r) g@3@01)))
    (=
      ($FVF.lookup_next (as sm@33@01  $FVF<next>) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@13@01))) r)))
  :pattern (($FVF.lookup_next (as sm@33@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@13@01))) r))
  :qid |qp.fvfValDef12|)))
(assert (forall ((r $Ref)) (!
  ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@13@01))) r) r)
  :pattern (($FVF.lookup_next (as sm@33@01  $FVF<next>) r))
  :qid |qp.fvfResTrgDef13|)))
(assert (and
  (forall ((r $Ref)) (!
    (=>
      (Set_in (inv@31@01 r) g@3@01)
      ($FVF.loc_next ($FVF.lookup_next (as sm@18@01  $FVF<next>) r) r))
    :pattern ((inv@31@01 r))
    :qid |quant-u-15496|))
  ($$%precondition ($SortWrappers.$FVF<next>To$Snap (as sm@33@01  $FVF<next>)) g@3@01)))
; [eval] edge(old($$(g)), v1, v2) || v1 == x && v2 == y
; [eval] edge(old($$(g)), v1, v2)
; [eval] old($$(g))
; [eval] $$(g)
(push) ; 6
(declare-const n@34@01 $Ref)
(push) ; 7
; [eval] (n in refs)
(assert (Set_in n@34@01 g@3@01))
(pop) ; 7
(declare-fun inv@35@01 ($Ref) $Ref)
(declare-fun img@36@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
; Definitional axioms for snapshot map domain
; Definitional axioms for snapshot map values
; Check receiver injectivity
(push) ; 7
(assert (not (forall ((n1@34@01 $Ref) (n2@34@01 $Ref)) (!
  (=>
    (and
      (and
        (Set_in n1@34@01 g@3@01)
        ($FVF.loc_next ($FVF.lookup_next (as sm@11@01  $FVF<next>) n1@34@01) n1@34@01))
      (and
        (Set_in n2@34@01 g@3@01)
        ($FVF.loc_next ($FVF.lookup_next (as sm@11@01  $FVF<next>) n2@34@01) n2@34@01))
      (= n1@34@01 n2@34@01))
    (= n1@34@01 n2@34@01))
  
  :qid |next-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((n@34@01 $Ref)) (!
  (=>
    (Set_in n@34@01 g@3@01)
    (and (= (inv@35@01 n@34@01) n@34@01) (img@36@01 n@34@01)))
  :pattern ((Set_in n@34@01 g@3@01))
  :pattern ((inv@35@01 n@34@01))
  :pattern ((img@36@01 n@34@01))
  :qid |next-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=> (and (img@36@01 r) (Set_in (inv@35@01 r) g@3@01)) (= (inv@35@01 r) r))
  :pattern ((inv@35@01 r))
  :qid |next-fctOfInv|)))
(assert (forall ((r $Ref)) (!
  (=>
    (Set_in (inv@35@01 r) g@3@01)
    ($FVF.loc_next ($FVF.lookup_next (as sm@11@01  $FVF<next>) r) r))
  :pattern ((inv@35@01 r))
  :qid |quant-u-15499|)))
(push) ; 7
(assert (not (forall ((r $Ref)) (!
  (=>
    (and (Set_in (inv@35@01 r) g@3@01) (img@36@01 r) (= r (inv@35@01 r)))
    (>
      (ite (and (img@10@01 r) (Set_in (inv@9@01 r) g@3@01)) $Perm.Write $Perm.No)
      $Perm.No))
  
  :qid |quant-u-15500|))))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(declare-const sm@37@01 $FVF<next>)
; Definitional axioms for snapshot map domain
(assert (forall ((r $Ref)) (!
  (and
    (=>
      (Set_in r ($FVF.domain_next (as sm@37@01  $FVF<next>)))
      (and (Set_in (inv@35@01 r) g@3@01) (img@36@01 r)))
    (=>
      (and (Set_in (inv@35@01 r) g@3@01) (img@36@01 r))
      (Set_in r ($FVF.domain_next (as sm@37@01  $FVF<next>)))))
  :pattern ((Set_in r ($FVF.domain_next (as sm@37@01  $FVF<next>))))
  :qid |qp.fvfDomDef17|)))
; Definitional axioms for snapshot map values
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and (Set_in (inv@35@01 r) g@3@01) (img@36@01 r))
      (and (img@10@01 r) (Set_in (inv@9@01 r) g@3@01)))
    (=
      ($FVF.lookup_next (as sm@37@01  $FVF<next>) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@6@01))))) r)))
  :pattern (($FVF.lookup_next (as sm@37@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@6@01))))) r))
  :qid |qp.fvfValDef15|)))
(assert (forall ((r $Ref)) (!
  ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@6@01))))) r) r)
  :pattern (($FVF.lookup_next (as sm@37@01  $FVF<next>) r))
  :qid |qp.fvfResTrgDef16|)))
(assert ($$%precondition ($SortWrappers.$FVF<next>To$Snap (as sm@37@01  $FVF<next>)) g@3@01))
(pop) ; 6
; Joined path conditions
(assert (forall ((n@34@01 $Ref)) (!
  (=>
    (Set_in n@34@01 g@3@01)
    (and (= (inv@35@01 n@34@01) n@34@01) (img@36@01 n@34@01)))
  :pattern ((Set_in n@34@01 g@3@01))
  :pattern ((inv@35@01 n@34@01))
  :pattern ((img@36@01 n@34@01))
  :qid |next-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=> (and (img@36@01 r) (Set_in (inv@35@01 r) g@3@01)) (= (inv@35@01 r) r))
  :pattern ((inv@35@01 r))
  :qid |next-fctOfInv|)))
(assert (forall ((r $Ref)) (!
  (and
    (=>
      (Set_in r ($FVF.domain_next (as sm@37@01  $FVF<next>)))
      (and (Set_in (inv@35@01 r) g@3@01) (img@36@01 r)))
    (=>
      (and (Set_in (inv@35@01 r) g@3@01) (img@36@01 r))
      (Set_in r ($FVF.domain_next (as sm@37@01  $FVF<next>)))))
  :pattern ((Set_in r ($FVF.domain_next (as sm@37@01  $FVF<next>))))
  :qid |qp.fvfDomDef17|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and (Set_in (inv@35@01 r) g@3@01) (img@36@01 r))
      (and (img@10@01 r) (Set_in (inv@9@01 r) g@3@01)))
    (=
      ($FVF.lookup_next (as sm@37@01  $FVF<next>) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@6@01))))) r)))
  :pattern (($FVF.lookup_next (as sm@37@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@6@01))))) r))
  :qid |qp.fvfValDef15|)))
(assert (forall ((r $Ref)) (!
  ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@6@01))))) r) r)
  :pattern (($FVF.lookup_next (as sm@37@01  $FVF<next>) r))
  :qid |qp.fvfResTrgDef16|)))
(assert (and
  (forall ((r $Ref)) (!
    (=>
      (Set_in (inv@35@01 r) g@3@01)
      ($FVF.loc_next ($FVF.lookup_next (as sm@11@01  $FVF<next>) r) r))
    :pattern ((inv@35@01 r))
    :qid |quant-u-15499|))
  ($$%precondition ($SortWrappers.$FVF<next>To$Snap (as sm@37@01  $FVF<next>)) g@3@01)))
(push) ; 6
; [then-branch: 7 | edge[Bool]($$(sm@37@01, g@3@01), v1@28@01, v2@29@01) | live]
; [else-branch: 7 | !(edge[Bool]($$(sm@37@01, g@3@01), v1@28@01, v2@29@01)) | live]
(push) ; 7
; [then-branch: 7 | edge[Bool]($$(sm@37@01, g@3@01), v1@28@01, v2@29@01)]
(assert (edge<Bool> ($$ ($SortWrappers.$FVF<next>To$Snap (as sm@37@01  $FVF<next>)) g@3@01) v1@28@01 v2@29@01))
(pop) ; 7
(push) ; 7
; [else-branch: 7 | !(edge[Bool]($$(sm@37@01, g@3@01), v1@28@01, v2@29@01))]
(assert (not
  (edge<Bool> ($$ ($SortWrappers.$FVF<next>To$Snap (as sm@37@01  $FVF<next>)) g@3@01) v1@28@01 v2@29@01)))
; [eval] v1 == x && v2 == y
; [eval] v1 == x
(push) ; 8
; [then-branch: 8 | v1@28@01 != x@4@01 | live]
; [else-branch: 8 | v1@28@01 == x@4@01 | live]
(push) ; 9
; [then-branch: 8 | v1@28@01 != x@4@01]
(assert (not (= v1@28@01 x@4@01)))
(pop) ; 9
(push) ; 9
; [else-branch: 8 | v1@28@01 == x@4@01]
(assert (= v1@28@01 x@4@01))
; [eval] v2 == y
(pop) ; 9
(pop) ; 8
; Joined path conditions
; Joined path conditions
(assert (or (= v1@28@01 x@4@01) (not (= v1@28@01 x@4@01))))
(pop) ; 7
(pop) ; 6
; Joined path conditions
; Joined path conditions
(assert (=>
  (not
    (edge<Bool> ($$ ($SortWrappers.$FVF<next>To$Snap (as sm@37@01  $FVF<next>)) g@3@01) v1@28@01 v2@29@01))
  (and
    (not
      (edge<Bool> ($$ ($SortWrappers.$FVF<next>To$Snap (as sm@37@01  $FVF<next>)) g@3@01) v1@28@01 v2@29@01))
    (or (= v1@28@01 x@4@01) (not (= v1@28@01 x@4@01))))))
(assert (or
  (not
    (edge<Bool> ($$ ($SortWrappers.$FVF<next>To$Snap (as sm@37@01  $FVF<next>)) g@3@01) v1@28@01 v2@29@01))
  (edge<Bool> ($$ ($SortWrappers.$FVF<next>To$Snap (as sm@37@01  $FVF<next>)) g@3@01) v1@28@01 v2@29@01)))
(pop) ; 5
; Nested auxiliary terms: globals (aux)
(assert (forall ((n@30@01 $Ref)) (!
  (=>
    (Set_in n@30@01 g@3@01)
    (and (= (inv@31@01 n@30@01) n@30@01) (img@32@01 n@30@01)))
  :pattern ((Set_in n@30@01 g@3@01))
  :pattern ((inv@31@01 n@30@01))
  :pattern ((img@32@01 n@30@01))
  :qid |next-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=> (and (img@32@01 r) (Set_in (inv@31@01 r) g@3@01)) (= (inv@31@01 r) r))
  :pattern ((inv@31@01 r))
  :qid |next-fctOfInv|)))
(assert (forall ((r $Ref)) (!
  (and
    (=>
      (Set_in r ($FVF.domain_next (as sm@33@01  $FVF<next>)))
      (and (Set_in (inv@31@01 r) g@3@01) (img@32@01 r)))
    (=>
      (and (Set_in (inv@31@01 r) g@3@01) (img@32@01 r))
      (Set_in r ($FVF.domain_next (as sm@33@01  $FVF<next>)))))
  :pattern ((Set_in r ($FVF.domain_next (as sm@33@01  $FVF<next>))))
  :qid |qp.fvfDomDef14|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and (Set_in (inv@31@01 r) g@3@01) (img@32@01 r))
      (and (img@17@01 r) (Set_in (inv@16@01 r) g@3@01)))
    (=
      ($FVF.lookup_next (as sm@33@01  $FVF<next>) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@13@01))) r)))
  :pattern (($FVF.lookup_next (as sm@33@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@13@01))) r))
  :qid |qp.fvfValDef12|)))
(assert (forall ((r $Ref)) (!
  ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@13@01))) r) r)
  :pattern (($FVF.lookup_next (as sm@33@01  $FVF<next>) r))
  :qid |qp.fvfResTrgDef13|)))
(assert (forall ((n@34@01 $Ref)) (!
  (=>
    (Set_in n@34@01 g@3@01)
    (and (= (inv@35@01 n@34@01) n@34@01) (img@36@01 n@34@01)))
  :pattern ((Set_in n@34@01 g@3@01))
  :pattern ((inv@35@01 n@34@01))
  :pattern ((img@36@01 n@34@01))
  :qid |next-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=> (and (img@36@01 r) (Set_in (inv@35@01 r) g@3@01)) (= (inv@35@01 r) r))
  :pattern ((inv@35@01 r))
  :qid |next-fctOfInv|)))
(assert (forall ((r $Ref)) (!
  (and
    (=>
      (Set_in r ($FVF.domain_next (as sm@37@01  $FVF<next>)))
      (and (Set_in (inv@35@01 r) g@3@01) (img@36@01 r)))
    (=>
      (and (Set_in (inv@35@01 r) g@3@01) (img@36@01 r))
      (Set_in r ($FVF.domain_next (as sm@37@01  $FVF<next>)))))
  :pattern ((Set_in r ($FVF.domain_next (as sm@37@01  $FVF<next>))))
  :qid |qp.fvfDomDef17|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and (Set_in (inv@35@01 r) g@3@01) (img@36@01 r))
      (and (img@10@01 r) (Set_in (inv@9@01 r) g@3@01)))
    (=
      ($FVF.lookup_next (as sm@37@01  $FVF<next>) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@6@01))))) r)))
  :pattern (($FVF.lookup_next (as sm@37@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@6@01))))) r))
  :qid |qp.fvfValDef15|)))
(assert (forall ((r $Ref)) (!
  ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@6@01))))) r) r)
  :pattern (($FVF.lookup_next (as sm@37@01  $FVF<next>) r))
  :qid |qp.fvfResTrgDef16|)))
(assert (forall ((r $Ref)) (!
  (=>
    (Set_in (inv@31@01 r) g@3@01)
    ($FVF.loc_next ($FVF.lookup_next (as sm@18@01  $FVF<next>) r) r))
  :pattern ((inv@31@01 r))
  :qid |quant-u-15496|)))
(assert ($$%precondition ($SortWrappers.$FVF<next>To$Snap (as sm@33@01  $FVF<next>)) g@3@01))
(assert (forall ((r $Ref)) (!
  (=>
    (Set_in (inv@35@01 r) g@3@01)
    ($FVF.loc_next ($FVF.lookup_next (as sm@11@01  $FVF<next>) r) r))
  :pattern ((inv@35@01 r))
  :qid |quant-u-15499|)))
(assert ($$%precondition ($SortWrappers.$FVF<next>To$Snap (as sm@37@01  $FVF<next>)) g@3@01))
; Nested auxiliary terms: non-globals (aux)
(assert (forall ((v1@28@01 $Ref) (v2@29@01 $Ref)) (!
  (and
    (=>
      (not
        (edge<Bool> ($$ ($SortWrappers.$FVF<next>To$Snap (as sm@37@01  $FVF<next>)) g@3@01) v1@28@01 v2@29@01))
      (and
        (not
          (edge<Bool> ($$ ($SortWrappers.$FVF<next>To$Snap (as sm@37@01  $FVF<next>)) g@3@01) v1@28@01 v2@29@01))
        (or (= v1@28@01 x@4@01) (not (= v1@28@01 x@4@01)))))
    (or
      (not
        (edge<Bool> ($$ ($SortWrappers.$FVF<next>To$Snap (as sm@37@01  $FVF<next>)) g@3@01) v1@28@01 v2@29@01))
      (edge<Bool> ($$ ($SortWrappers.$FVF<next>To$Snap (as sm@37@01  $FVF<next>)) g@3@01) v1@28@01 v2@29@01)))
  :pattern ((edge<Bool> ($$ ($SortWrappers.$FVF<next>To$Snap (as sm@37@01  $FVF<next>)) g@3@01) v1@28@01 v2@29@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/graphs/static/outlines/list_append.vpr@291@27@293@78-aux|)))
(pop) ; 4
(push) ; 4
; [else-branch: 6 | y@5@01 == Null]
(assert (= y@5@01 $Ref.null))
(pop) ; 4
(pop) ; 3
; Joined path conditions
(assert (forall ((n@30@01 $Ref)) (!
  (=>
    (Set_in n@30@01 g@3@01)
    (and (= (inv@31@01 n@30@01) n@30@01) (img@32@01 n@30@01)))
  :pattern ((Set_in n@30@01 g@3@01))
  :pattern ((inv@31@01 n@30@01))
  :pattern ((img@32@01 n@30@01))
  :qid |next-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=> (and (img@32@01 r) (Set_in (inv@31@01 r) g@3@01)) (= (inv@31@01 r) r))
  :pattern ((inv@31@01 r))
  :qid |next-fctOfInv|)))
(assert (forall ((r $Ref)) (!
  (and
    (=>
      (Set_in r ($FVF.domain_next (as sm@33@01  $FVF<next>)))
      (and (Set_in (inv@31@01 r) g@3@01) (img@32@01 r)))
    (=>
      (and (Set_in (inv@31@01 r) g@3@01) (img@32@01 r))
      (Set_in r ($FVF.domain_next (as sm@33@01  $FVF<next>)))))
  :pattern ((Set_in r ($FVF.domain_next (as sm@33@01  $FVF<next>))))
  :qid |qp.fvfDomDef14|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and (Set_in (inv@31@01 r) g@3@01) (img@32@01 r))
      (and (img@17@01 r) (Set_in (inv@16@01 r) g@3@01)))
    (=
      ($FVF.lookup_next (as sm@33@01  $FVF<next>) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@13@01))) r)))
  :pattern (($FVF.lookup_next (as sm@33@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@13@01))) r))
  :qid |qp.fvfValDef12|)))
(assert (forall ((r $Ref)) (!
  ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@13@01))) r) r)
  :pattern (($FVF.lookup_next (as sm@33@01  $FVF<next>) r))
  :qid |qp.fvfResTrgDef13|)))
(assert (forall ((n@34@01 $Ref)) (!
  (=>
    (Set_in n@34@01 g@3@01)
    (and (= (inv@35@01 n@34@01) n@34@01) (img@36@01 n@34@01)))
  :pattern ((Set_in n@34@01 g@3@01))
  :pattern ((inv@35@01 n@34@01))
  :pattern ((img@36@01 n@34@01))
  :qid |next-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=> (and (img@36@01 r) (Set_in (inv@35@01 r) g@3@01)) (= (inv@35@01 r) r))
  :pattern ((inv@35@01 r))
  :qid |next-fctOfInv|)))
(assert (forall ((r $Ref)) (!
  (and
    (=>
      (Set_in r ($FVF.domain_next (as sm@37@01  $FVF<next>)))
      (and (Set_in (inv@35@01 r) g@3@01) (img@36@01 r)))
    (=>
      (and (Set_in (inv@35@01 r) g@3@01) (img@36@01 r))
      (Set_in r ($FVF.domain_next (as sm@37@01  $FVF<next>)))))
  :pattern ((Set_in r ($FVF.domain_next (as sm@37@01  $FVF<next>))))
  :qid |qp.fvfDomDef17|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and (Set_in (inv@35@01 r) g@3@01) (img@36@01 r))
      (and (img@10@01 r) (Set_in (inv@9@01 r) g@3@01)))
    (=
      ($FVF.lookup_next (as sm@37@01  $FVF<next>) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@6@01))))) r)))
  :pattern (($FVF.lookup_next (as sm@37@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@6@01))))) r))
  :qid |qp.fvfValDef15|)))
(assert (forall ((r $Ref)) (!
  ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@6@01))))) r) r)
  :pattern (($FVF.lookup_next (as sm@37@01  $FVF<next>) r))
  :qid |qp.fvfResTrgDef16|)))
(assert (=>
  (not (= y@5@01 $Ref.null))
  (and
    (not (= y@5@01 $Ref.null))
    (forall ((r $Ref)) (!
      (=>
        (Set_in (inv@31@01 r) g@3@01)
        ($FVF.loc_next ($FVF.lookup_next (as sm@18@01  $FVF<next>) r) r))
      :pattern ((inv@31@01 r))
      :qid |quant-u-15496|))
    ($$%precondition ($SortWrappers.$FVF<next>To$Snap (as sm@33@01  $FVF<next>)) g@3@01)
    (forall ((r $Ref)) (!
      (=>
        (Set_in (inv@35@01 r) g@3@01)
        ($FVF.loc_next ($FVF.lookup_next (as sm@11@01  $FVF<next>) r) r))
      :pattern ((inv@35@01 r))
      :qid |quant-u-15499|))
    ($$%precondition ($SortWrappers.$FVF<next>To$Snap (as sm@37@01  $FVF<next>)) g@3@01)
    (forall ((v1@28@01 $Ref) (v2@29@01 $Ref)) (!
      (and
        (=>
          (not
            (edge<Bool> ($$ ($SortWrappers.$FVF<next>To$Snap (as sm@37@01  $FVF<next>)) g@3@01) v1@28@01 v2@29@01))
          (and
            (not
              (edge<Bool> ($$ ($SortWrappers.$FVF<next>To$Snap (as sm@37@01  $FVF<next>)) g@3@01) v1@28@01 v2@29@01))
            (or (= v1@28@01 x@4@01) (not (= v1@28@01 x@4@01)))))
        (or
          (not
            (edge<Bool> ($$ ($SortWrappers.$FVF<next>To$Snap (as sm@37@01  $FVF<next>)) g@3@01) v1@28@01 v2@29@01))
          (edge<Bool> ($$ ($SortWrappers.$FVF<next>To$Snap (as sm@37@01  $FVF<next>)) g@3@01) v1@28@01 v2@29@01)))
      :pattern ((edge<Bool> ($$ ($SortWrappers.$FVF<next>To$Snap (as sm@37@01  $FVF<next>)) g@3@01) v1@28@01 v2@29@01))
      :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/graphs/static/outlines/list_append.vpr@291@27@293@78-aux|)))))
; Joined path conditions
(assert (=>
  (not (= y@5@01 $Ref.null))
  (forall ((v1@28@01 $Ref) (v2@29@01 $Ref)) (!
    (=
      (edge<Bool> ($$ ($SortWrappers.$FVF<next>To$Snap (as sm@33@01  $FVF<next>)) g@3@01) v1@28@01 v2@29@01)
      (or
        (edge<Bool> ($$ ($SortWrappers.$FVF<next>To$Snap (as sm@37@01  $FVF<next>)) g@3@01) v1@28@01 v2@29@01)
        (and (= v1@28@01 x@4@01) (= v2@29@01 y@5@01))))
    :pattern ((edge<Bool> ($$ ($SortWrappers.$FVF<next>To$Snap (as sm@37@01  $FVF<next>)) g@3@01) v1@28@01 v2@29@01))
    :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/graphs/static/outlines/list_append.vpr@291@27@293@78|))))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@13@01))))))
  $Snap.unit))
; [eval] y != null ==> (forall v1: Ref, v2: Ref :: { exists_path($$(g), v1, v2) } exists_path($$(g), v1, v2) == (exists_path(old($$(g)), v1, v2) || exists_path(old($$(g)), v1, x) && exists_path(old($$(g)), y, v2)))
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
; [then-branch: 9 | y@5@01 != Null | live]
; [else-branch: 9 | y@5@01 == Null | live]
(set-option :timeout 0)
(push) ; 4
; [then-branch: 9 | y@5@01 != Null]
(assert (not (= y@5@01 $Ref.null)))
; [eval] (forall v1: Ref, v2: Ref :: { exists_path($$(g), v1, v2) } exists_path($$(g), v1, v2) == (exists_path(old($$(g)), v1, v2) || exists_path(old($$(g)), v1, x) && exists_path(old($$(g)), y, v2)))
(declare-const v1@38@01 $Ref)
(declare-const v2@39@01 $Ref)
(push) ; 5
; [eval] exists_path($$(g), v1, v2) == (exists_path(old($$(g)), v1, v2) || exists_path(old($$(g)), v1, x) && exists_path(old($$(g)), y, v2))
; [eval] exists_path($$(g), v1, v2)
; [eval] $$(g)
(push) ; 6
(declare-const n@40@01 $Ref)
(push) ; 7
; [eval] (n in refs)
(assert (Set_in n@40@01 g@3@01))
(pop) ; 7
(declare-fun inv@41@01 ($Ref) $Ref)
(declare-fun img@42@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
; Definitional axioms for snapshot map domain
; Definitional axioms for snapshot map values
; Check receiver injectivity
(push) ; 7
(assert (not (forall ((n1@40@01 $Ref) (n2@40@01 $Ref)) (!
  (=>
    (and
      (and
        (Set_in n1@40@01 g@3@01)
        ($FVF.loc_next ($FVF.lookup_next (as sm@18@01  $FVF<next>) n1@40@01) n1@40@01))
      (and
        (Set_in n2@40@01 g@3@01)
        ($FVF.loc_next ($FVF.lookup_next (as sm@18@01  $FVF<next>) n2@40@01) n2@40@01))
      (= n1@40@01 n2@40@01))
    (= n1@40@01 n2@40@01))
  
  :qid |next-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((n@40@01 $Ref)) (!
  (=>
    (Set_in n@40@01 g@3@01)
    (and (= (inv@41@01 n@40@01) n@40@01) (img@42@01 n@40@01)))
  :pattern ((Set_in n@40@01 g@3@01))
  :pattern ((inv@41@01 n@40@01))
  :pattern ((img@42@01 n@40@01))
  :qid |next-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=> (and (img@42@01 r) (Set_in (inv@41@01 r) g@3@01)) (= (inv@41@01 r) r))
  :pattern ((inv@41@01 r))
  :qid |next-fctOfInv|)))
(assert (forall ((r $Ref)) (!
  (=>
    (Set_in (inv@41@01 r) g@3@01)
    ($FVF.loc_next ($FVF.lookup_next (as sm@18@01  $FVF<next>) r) r))
  :pattern ((inv@41@01 r))
  :qid |quant-u-15502|)))
(push) ; 7
(assert (not (forall ((r $Ref)) (!
  (=>
    (and (Set_in (inv@41@01 r) g@3@01) (img@42@01 r) (= r (inv@41@01 r)))
    (>
      (ite
        (and (img@17@01 r) (Set_in (inv@16@01 r) g@3@01))
        $Perm.Write
        $Perm.No)
      $Perm.No))
  
  :qid |quant-u-15503|))))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(declare-const sm@43@01 $FVF<next>)
; Definitional axioms for snapshot map domain
(assert (forall ((r $Ref)) (!
  (and
    (=>
      (Set_in r ($FVF.domain_next (as sm@43@01  $FVF<next>)))
      (and (Set_in (inv@41@01 r) g@3@01) (img@42@01 r)))
    (=>
      (and (Set_in (inv@41@01 r) g@3@01) (img@42@01 r))
      (Set_in r ($FVF.domain_next (as sm@43@01  $FVF<next>)))))
  :pattern ((Set_in r ($FVF.domain_next (as sm@43@01  $FVF<next>))))
  :qid |qp.fvfDomDef20|)))
; Definitional axioms for snapshot map values
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and (Set_in (inv@41@01 r) g@3@01) (img@42@01 r))
      (and (img@17@01 r) (Set_in (inv@16@01 r) g@3@01)))
    (=
      ($FVF.lookup_next (as sm@43@01  $FVF<next>) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@13@01))) r)))
  :pattern (($FVF.lookup_next (as sm@43@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@13@01))) r))
  :qid |qp.fvfValDef18|)))
(assert (forall ((r $Ref)) (!
  ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@13@01))) r) r)
  :pattern (($FVF.lookup_next (as sm@43@01  $FVF<next>) r))
  :qid |qp.fvfResTrgDef19|)))
(assert ($$%precondition ($SortWrappers.$FVF<next>To$Snap (as sm@43@01  $FVF<next>)) g@3@01))
(pop) ; 6
; Joined path conditions
(assert (forall ((n@40@01 $Ref)) (!
  (=>
    (Set_in n@40@01 g@3@01)
    (and (= (inv@41@01 n@40@01) n@40@01) (img@42@01 n@40@01)))
  :pattern ((Set_in n@40@01 g@3@01))
  :pattern ((inv@41@01 n@40@01))
  :pattern ((img@42@01 n@40@01))
  :qid |next-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=> (and (img@42@01 r) (Set_in (inv@41@01 r) g@3@01)) (= (inv@41@01 r) r))
  :pattern ((inv@41@01 r))
  :qid |next-fctOfInv|)))
(assert (forall ((r $Ref)) (!
  (and
    (=>
      (Set_in r ($FVF.domain_next (as sm@43@01  $FVF<next>)))
      (and (Set_in (inv@41@01 r) g@3@01) (img@42@01 r)))
    (=>
      (and (Set_in (inv@41@01 r) g@3@01) (img@42@01 r))
      (Set_in r ($FVF.domain_next (as sm@43@01  $FVF<next>)))))
  :pattern ((Set_in r ($FVF.domain_next (as sm@43@01  $FVF<next>))))
  :qid |qp.fvfDomDef20|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and (Set_in (inv@41@01 r) g@3@01) (img@42@01 r))
      (and (img@17@01 r) (Set_in (inv@16@01 r) g@3@01)))
    (=
      ($FVF.lookup_next (as sm@43@01  $FVF<next>) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@13@01))) r)))
  :pattern (($FVF.lookup_next (as sm@43@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@13@01))) r))
  :qid |qp.fvfValDef18|)))
(assert (forall ((r $Ref)) (!
  ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@13@01))) r) r)
  :pattern (($FVF.lookup_next (as sm@43@01  $FVF<next>) r))
  :qid |qp.fvfResTrgDef19|)))
(assert (and
  (forall ((r $Ref)) (!
    (=>
      (Set_in (inv@41@01 r) g@3@01)
      ($FVF.loc_next ($FVF.lookup_next (as sm@18@01  $FVF<next>) r) r))
    :pattern ((inv@41@01 r))
    :qid |quant-u-15502|))
  ($$%precondition ($SortWrappers.$FVF<next>To$Snap (as sm@43@01  $FVF<next>)) g@3@01)))
; [eval] exists_path(old($$(g)), v1, v2) || exists_path(old($$(g)), v1, x) && exists_path(old($$(g)), y, v2)
; [eval] exists_path(old($$(g)), v1, v2)
; [eval] old($$(g))
; [eval] $$(g)
(push) ; 6
(declare-const n@44@01 $Ref)
(push) ; 7
; [eval] (n in refs)
(assert (Set_in n@44@01 g@3@01))
(pop) ; 7
(declare-fun inv@45@01 ($Ref) $Ref)
(declare-fun img@46@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
; Definitional axioms for snapshot map domain
; Definitional axioms for snapshot map values
; Check receiver injectivity
(push) ; 7
(assert (not (forall ((n1@44@01 $Ref) (n2@44@01 $Ref)) (!
  (=>
    (and
      (and
        (Set_in n1@44@01 g@3@01)
        ($FVF.loc_next ($FVF.lookup_next (as sm@11@01  $FVF<next>) n1@44@01) n1@44@01))
      (and
        (Set_in n2@44@01 g@3@01)
        ($FVF.loc_next ($FVF.lookup_next (as sm@11@01  $FVF<next>) n2@44@01) n2@44@01))
      (= n1@44@01 n2@44@01))
    (= n1@44@01 n2@44@01))
  
  :qid |next-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((n@44@01 $Ref)) (!
  (=>
    (Set_in n@44@01 g@3@01)
    (and (= (inv@45@01 n@44@01) n@44@01) (img@46@01 n@44@01)))
  :pattern ((Set_in n@44@01 g@3@01))
  :pattern ((inv@45@01 n@44@01))
  :pattern ((img@46@01 n@44@01))
  :qid |next-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=> (and (img@46@01 r) (Set_in (inv@45@01 r) g@3@01)) (= (inv@45@01 r) r))
  :pattern ((inv@45@01 r))
  :qid |next-fctOfInv|)))
(assert (forall ((r $Ref)) (!
  (=>
    (Set_in (inv@45@01 r) g@3@01)
    ($FVF.loc_next ($FVF.lookup_next (as sm@11@01  $FVF<next>) r) r))
  :pattern ((inv@45@01 r))
  :qid |quant-u-15505|)))
(push) ; 7
(assert (not (forall ((r $Ref)) (!
  (=>
    (and (Set_in (inv@45@01 r) g@3@01) (img@46@01 r) (= r (inv@45@01 r)))
    (>
      (ite (and (img@10@01 r) (Set_in (inv@9@01 r) g@3@01)) $Perm.Write $Perm.No)
      $Perm.No))
  
  :qid |quant-u-15506|))))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(declare-const sm@47@01 $FVF<next>)
; Definitional axioms for snapshot map domain
(assert (forall ((r $Ref)) (!
  (and
    (=>
      (Set_in r ($FVF.domain_next (as sm@47@01  $FVF<next>)))
      (and (Set_in (inv@45@01 r) g@3@01) (img@46@01 r)))
    (=>
      (and (Set_in (inv@45@01 r) g@3@01) (img@46@01 r))
      (Set_in r ($FVF.domain_next (as sm@47@01  $FVF<next>)))))
  :pattern ((Set_in r ($FVF.domain_next (as sm@47@01  $FVF<next>))))
  :qid |qp.fvfDomDef23|)))
; Definitional axioms for snapshot map values
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and (Set_in (inv@45@01 r) g@3@01) (img@46@01 r))
      (and (img@10@01 r) (Set_in (inv@9@01 r) g@3@01)))
    (=
      ($FVF.lookup_next (as sm@47@01  $FVF<next>) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@6@01))))) r)))
  :pattern (($FVF.lookup_next (as sm@47@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@6@01))))) r))
  :qid |qp.fvfValDef21|)))
(assert (forall ((r $Ref)) (!
  ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@6@01))))) r) r)
  :pattern (($FVF.lookup_next (as sm@47@01  $FVF<next>) r))
  :qid |qp.fvfResTrgDef22|)))
(assert ($$%precondition ($SortWrappers.$FVF<next>To$Snap (as sm@47@01  $FVF<next>)) g@3@01))
(pop) ; 6
; Joined path conditions
(assert (forall ((n@44@01 $Ref)) (!
  (=>
    (Set_in n@44@01 g@3@01)
    (and (= (inv@45@01 n@44@01) n@44@01) (img@46@01 n@44@01)))
  :pattern ((Set_in n@44@01 g@3@01))
  :pattern ((inv@45@01 n@44@01))
  :pattern ((img@46@01 n@44@01))
  :qid |next-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=> (and (img@46@01 r) (Set_in (inv@45@01 r) g@3@01)) (= (inv@45@01 r) r))
  :pattern ((inv@45@01 r))
  :qid |next-fctOfInv|)))
(assert (forall ((r $Ref)) (!
  (and
    (=>
      (Set_in r ($FVF.domain_next (as sm@47@01  $FVF<next>)))
      (and (Set_in (inv@45@01 r) g@3@01) (img@46@01 r)))
    (=>
      (and (Set_in (inv@45@01 r) g@3@01) (img@46@01 r))
      (Set_in r ($FVF.domain_next (as sm@47@01  $FVF<next>)))))
  :pattern ((Set_in r ($FVF.domain_next (as sm@47@01  $FVF<next>))))
  :qid |qp.fvfDomDef23|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and (Set_in (inv@45@01 r) g@3@01) (img@46@01 r))
      (and (img@10@01 r) (Set_in (inv@9@01 r) g@3@01)))
    (=
      ($FVF.lookup_next (as sm@47@01  $FVF<next>) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@6@01))))) r)))
  :pattern (($FVF.lookup_next (as sm@47@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@6@01))))) r))
  :qid |qp.fvfValDef21|)))
(assert (forall ((r $Ref)) (!
  ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@6@01))))) r) r)
  :pattern (($FVF.lookup_next (as sm@47@01  $FVF<next>) r))
  :qid |qp.fvfResTrgDef22|)))
(assert (and
  (forall ((r $Ref)) (!
    (=>
      (Set_in (inv@45@01 r) g@3@01)
      ($FVF.loc_next ($FVF.lookup_next (as sm@11@01  $FVF<next>) r) r))
    :pattern ((inv@45@01 r))
    :qid |quant-u-15505|))
  ($$%precondition ($SortWrappers.$FVF<next>To$Snap (as sm@47@01  $FVF<next>)) g@3@01)))
(push) ; 6
; [then-branch: 10 | exists_path[Bool]($$(sm@47@01, g@3@01), v1@38@01, v2@39@01) | live]
; [else-branch: 10 | !(exists_path[Bool]($$(sm@47@01, g@3@01), v1@38@01, v2@39@01)) | live]
(push) ; 7
; [then-branch: 10 | exists_path[Bool]($$(sm@47@01, g@3@01), v1@38@01, v2@39@01)]
(assert (exists_path<Bool> ($$ ($SortWrappers.$FVF<next>To$Snap (as sm@47@01  $FVF<next>)) g@3@01) v1@38@01 v2@39@01))
(pop) ; 7
(push) ; 7
; [else-branch: 10 | !(exists_path[Bool]($$(sm@47@01, g@3@01), v1@38@01, v2@39@01))]
(assert (not
  (exists_path<Bool> ($$ ($SortWrappers.$FVF<next>To$Snap (as sm@47@01  $FVF<next>)) g@3@01) v1@38@01 v2@39@01)))
; [eval] exists_path(old($$(g)), v1, x) && exists_path(old($$(g)), y, v2)
; [eval] exists_path(old($$(g)), v1, x)
; [eval] old($$(g))
; [eval] $$(g)
(push) ; 8
(declare-const n@48@01 $Ref)
(push) ; 9
; [eval] (n in refs)
(assert (Set_in n@48@01 g@3@01))
(pop) ; 9
(declare-fun inv@49@01 ($Ref) $Ref)
(declare-fun img@50@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
(declare-const sm@51@01 $FVF<next>)
; Definitional axioms for snapshot map domain
; Definitional axioms for snapshot map values
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@10@01 r) (Set_in (inv@9@01 r) g@3@01))
    (=
      ($FVF.lookup_next (as sm@51@01  $FVF<next>) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@6@01))))) r)))
  :pattern (($FVF.lookup_next (as sm@51@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@6@01))))) r))
  :qid |qp.fvfValDef24|)))
(assert (forall ((r $Ref)) (!
  ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@6@01))))) r) r)
  :pattern (($FVF.lookup_next (as sm@51@01  $FVF<next>) r))
  :qid |qp.fvfResTrgDef25|)))
; Check receiver injectivity
(push) ; 9
(assert (not (forall ((n1@48@01 $Ref) (n2@48@01 $Ref)) (!
  (=>
    (and
      (and
        (Set_in n1@48@01 g@3@01)
        ($FVF.loc_next ($FVF.lookup_next (as sm@51@01  $FVF<next>) n1@48@01) n1@48@01))
      (and
        (Set_in n2@48@01 g@3@01)
        ($FVF.loc_next ($FVF.lookup_next (as sm@51@01  $FVF<next>) n2@48@01) n2@48@01))
      (= n1@48@01 n2@48@01))
    (= n1@48@01 n2@48@01))
  
  :qid |next-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 9
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((n@48@01 $Ref)) (!
  (=>
    (Set_in n@48@01 g@3@01)
    (and (= (inv@49@01 n@48@01) n@48@01) (img@50@01 n@48@01)))
  :pattern ((Set_in n@48@01 g@3@01))
  :pattern ((inv@49@01 n@48@01))
  :pattern ((img@50@01 n@48@01))
  :qid |next-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=> (and (img@50@01 r) (Set_in (inv@49@01 r) g@3@01)) (= (inv@49@01 r) r))
  :pattern ((inv@49@01 r))
  :qid |next-fctOfInv|)))
(assert (forall ((r $Ref)) (!
  (=>
    (Set_in (inv@49@01 r) g@3@01)
    ($FVF.loc_next ($FVF.lookup_next (as sm@51@01  $FVF<next>) r) r))
  :pattern ((inv@49@01 r))
  :qid |quant-u-15508|)))
(push) ; 9
(assert (not (forall ((r $Ref)) (!
  (=>
    (and (Set_in (inv@49@01 r) g@3@01) (img@50@01 r) (= r (inv@49@01 r)))
    (>
      (ite (and (img@10@01 r) (Set_in (inv@9@01 r) g@3@01)) $Perm.Write $Perm.No)
      $Perm.No))
  
  :qid |quant-u-15509|))))
(check-sat)
; unsat
(pop) ; 9
; 0.00s
; (get-info :all-statistics)
(declare-const sm@52@01 $FVF<next>)
; Definitional axioms for snapshot map domain
(assert (forall ((r $Ref)) (!
  (and
    (=>
      (Set_in r ($FVF.domain_next (as sm@52@01  $FVF<next>)))
      (and (Set_in (inv@49@01 r) g@3@01) (img@50@01 r)))
    (=>
      (and (Set_in (inv@49@01 r) g@3@01) (img@50@01 r))
      (Set_in r ($FVF.domain_next (as sm@52@01  $FVF<next>)))))
  :pattern ((Set_in r ($FVF.domain_next (as sm@52@01  $FVF<next>))))
  :qid |qp.fvfDomDef28|)))
; Definitional axioms for snapshot map values
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and (Set_in (inv@49@01 r) g@3@01) (img@50@01 r))
      (and (img@10@01 r) (Set_in (inv@9@01 r) g@3@01)))
    (=
      ($FVF.lookup_next (as sm@52@01  $FVF<next>) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@6@01))))) r)))
  :pattern (($FVF.lookup_next (as sm@52@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@6@01))))) r))
  :qid |qp.fvfValDef26|)))
(assert (forall ((r $Ref)) (!
  ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@6@01))))) r) r)
  :pattern (($FVF.lookup_next (as sm@52@01  $FVF<next>) r))
  :qid |qp.fvfResTrgDef27|)))
(assert ($$%precondition ($SortWrappers.$FVF<next>To$Snap (as sm@52@01  $FVF<next>)) g@3@01))
(pop) ; 8
; Joined path conditions
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@10@01 r) (Set_in (inv@9@01 r) g@3@01))
    (=
      ($FVF.lookup_next (as sm@51@01  $FVF<next>) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@6@01))))) r)))
  :pattern (($FVF.lookup_next (as sm@51@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@6@01))))) r))
  :qid |qp.fvfValDef24|)))
(assert (forall ((r $Ref)) (!
  ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@6@01))))) r) r)
  :pattern (($FVF.lookup_next (as sm@51@01  $FVF<next>) r))
  :qid |qp.fvfResTrgDef25|)))
(assert (forall ((n@48@01 $Ref)) (!
  (=>
    (Set_in n@48@01 g@3@01)
    (and (= (inv@49@01 n@48@01) n@48@01) (img@50@01 n@48@01)))
  :pattern ((Set_in n@48@01 g@3@01))
  :pattern ((inv@49@01 n@48@01))
  :pattern ((img@50@01 n@48@01))
  :qid |next-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=> (and (img@50@01 r) (Set_in (inv@49@01 r) g@3@01)) (= (inv@49@01 r) r))
  :pattern ((inv@49@01 r))
  :qid |next-fctOfInv|)))
(assert (forall ((r $Ref)) (!
  (and
    (=>
      (Set_in r ($FVF.domain_next (as sm@52@01  $FVF<next>)))
      (and (Set_in (inv@49@01 r) g@3@01) (img@50@01 r)))
    (=>
      (and (Set_in (inv@49@01 r) g@3@01) (img@50@01 r))
      (Set_in r ($FVF.domain_next (as sm@52@01  $FVF<next>)))))
  :pattern ((Set_in r ($FVF.domain_next (as sm@52@01  $FVF<next>))))
  :qid |qp.fvfDomDef28|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and (Set_in (inv@49@01 r) g@3@01) (img@50@01 r))
      (and (img@10@01 r) (Set_in (inv@9@01 r) g@3@01)))
    (=
      ($FVF.lookup_next (as sm@52@01  $FVF<next>) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@6@01))))) r)))
  :pattern (($FVF.lookup_next (as sm@52@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@6@01))))) r))
  :qid |qp.fvfValDef26|)))
(assert (forall ((r $Ref)) (!
  ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@6@01))))) r) r)
  :pattern (($FVF.lookup_next (as sm@52@01  $FVF<next>) r))
  :qid |qp.fvfResTrgDef27|)))
(assert (and
  (forall ((r $Ref)) (!
    (=>
      (Set_in (inv@49@01 r) g@3@01)
      ($FVF.loc_next ($FVF.lookup_next (as sm@51@01  $FVF<next>) r) r))
    :pattern ((inv@49@01 r))
    :qid |quant-u-15508|))
  ($$%precondition ($SortWrappers.$FVF<next>To$Snap (as sm@52@01  $FVF<next>)) g@3@01)))
(push) ; 8
; [then-branch: 11 | !(exists_path[Bool]($$(sm@52@01, g@3@01), v1@38@01, x@4@01)) | live]
; [else-branch: 11 | exists_path[Bool]($$(sm@52@01, g@3@01), v1@38@01, x@4@01) | live]
(push) ; 9
; [then-branch: 11 | !(exists_path[Bool]($$(sm@52@01, g@3@01), v1@38@01, x@4@01))]
(assert (not
  (exists_path<Bool> ($$ ($SortWrappers.$FVF<next>To$Snap (as sm@52@01  $FVF<next>)) g@3@01) v1@38@01 x@4@01)))
(pop) ; 9
(push) ; 9
; [else-branch: 11 | exists_path[Bool]($$(sm@52@01, g@3@01), v1@38@01, x@4@01)]
(assert (exists_path<Bool> ($$ ($SortWrappers.$FVF<next>To$Snap (as sm@52@01  $FVF<next>)) g@3@01) v1@38@01 x@4@01))
; [eval] exists_path(old($$(g)), y, v2)
; [eval] old($$(g))
; [eval] $$(g)
(push) ; 10
(declare-const n@53@01 $Ref)
(push) ; 11
; [eval] (n in refs)
(assert (Set_in n@53@01 g@3@01))
(pop) ; 11
(declare-fun inv@54@01 ($Ref) $Ref)
(declare-fun img@55@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
(declare-const sm@56@01 $FVF<next>)
; Definitional axioms for snapshot map domain
; Definitional axioms for snapshot map values
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@10@01 r) (Set_in (inv@9@01 r) g@3@01))
    (=
      ($FVF.lookup_next (as sm@56@01  $FVF<next>) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@6@01))))) r)))
  :pattern (($FVF.lookup_next (as sm@56@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@6@01))))) r))
  :qid |qp.fvfValDef29|)))
(assert (forall ((r $Ref)) (!
  ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@6@01))))) r) r)
  :pattern (($FVF.lookup_next (as sm@56@01  $FVF<next>) r))
  :qid |qp.fvfResTrgDef30|)))
; Check receiver injectivity
(push) ; 11
(assert (not (forall ((n1@53@01 $Ref) (n2@53@01 $Ref)) (!
  (=>
    (and
      (and
        (Set_in n1@53@01 g@3@01)
        ($FVF.loc_next ($FVF.lookup_next (as sm@56@01  $FVF<next>) n1@53@01) n1@53@01))
      (and
        (Set_in n2@53@01 g@3@01)
        ($FVF.loc_next ($FVF.lookup_next (as sm@56@01  $FVF<next>) n2@53@01) n2@53@01))
      (= n1@53@01 n2@53@01))
    (= n1@53@01 n2@53@01))
  
  :qid |next-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 11
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((n@53@01 $Ref)) (!
  (=>
    (Set_in n@53@01 g@3@01)
    (and (= (inv@54@01 n@53@01) n@53@01) (img@55@01 n@53@01)))
  :pattern ((Set_in n@53@01 g@3@01))
  :pattern ((inv@54@01 n@53@01))
  :pattern ((img@55@01 n@53@01))
  :qid |next-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=> (and (img@55@01 r) (Set_in (inv@54@01 r) g@3@01)) (= (inv@54@01 r) r))
  :pattern ((inv@54@01 r))
  :qid |next-fctOfInv|)))
(assert (forall ((r $Ref)) (!
  (=>
    (Set_in (inv@54@01 r) g@3@01)
    ($FVF.loc_next ($FVF.lookup_next (as sm@56@01  $FVF<next>) r) r))
  :pattern ((inv@54@01 r))
  :qid |quant-u-15511|)))
(push) ; 11
(assert (not (forall ((r $Ref)) (!
  (=>
    (and (Set_in (inv@54@01 r) g@3@01) (img@55@01 r) (= r (inv@54@01 r)))
    (>
      (ite (and (img@10@01 r) (Set_in (inv@9@01 r) g@3@01)) $Perm.Write $Perm.No)
      $Perm.No))
  
  :qid |quant-u-15512|))))
(check-sat)
; unsat
(pop) ; 11
; 0.00s
; (get-info :all-statistics)
(declare-const sm@57@01 $FVF<next>)
; Definitional axioms for snapshot map domain
(assert (forall ((r $Ref)) (!
  (and
    (=>
      (Set_in r ($FVF.domain_next (as sm@57@01  $FVF<next>)))
      (and (Set_in (inv@54@01 r) g@3@01) (img@55@01 r)))
    (=>
      (and (Set_in (inv@54@01 r) g@3@01) (img@55@01 r))
      (Set_in r ($FVF.domain_next (as sm@57@01  $FVF<next>)))))
  :pattern ((Set_in r ($FVF.domain_next (as sm@57@01  $FVF<next>))))
  :qid |qp.fvfDomDef33|)))
; Definitional axioms for snapshot map values
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and (Set_in (inv@54@01 r) g@3@01) (img@55@01 r))
      (and (img@10@01 r) (Set_in (inv@9@01 r) g@3@01)))
    (=
      ($FVF.lookup_next (as sm@57@01  $FVF<next>) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@6@01))))) r)))
  :pattern (($FVF.lookup_next (as sm@57@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@6@01))))) r))
  :qid |qp.fvfValDef31|)))
(assert (forall ((r $Ref)) (!
  ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@6@01))))) r) r)
  :pattern (($FVF.lookup_next (as sm@57@01  $FVF<next>) r))
  :qid |qp.fvfResTrgDef32|)))
(assert ($$%precondition ($SortWrappers.$FVF<next>To$Snap (as sm@57@01  $FVF<next>)) g@3@01))
(pop) ; 10
; Joined path conditions
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@10@01 r) (Set_in (inv@9@01 r) g@3@01))
    (=
      ($FVF.lookup_next (as sm@56@01  $FVF<next>) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@6@01))))) r)))
  :pattern (($FVF.lookup_next (as sm@56@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@6@01))))) r))
  :qid |qp.fvfValDef29|)))
(assert (forall ((r $Ref)) (!
  ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@6@01))))) r) r)
  :pattern (($FVF.lookup_next (as sm@56@01  $FVF<next>) r))
  :qid |qp.fvfResTrgDef30|)))
(assert (forall ((n@53@01 $Ref)) (!
  (=>
    (Set_in n@53@01 g@3@01)
    (and (= (inv@54@01 n@53@01) n@53@01) (img@55@01 n@53@01)))
  :pattern ((Set_in n@53@01 g@3@01))
  :pattern ((inv@54@01 n@53@01))
  :pattern ((img@55@01 n@53@01))
  :qid |next-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=> (and (img@55@01 r) (Set_in (inv@54@01 r) g@3@01)) (= (inv@54@01 r) r))
  :pattern ((inv@54@01 r))
  :qid |next-fctOfInv|)))
(assert (forall ((r $Ref)) (!
  (and
    (=>
      (Set_in r ($FVF.domain_next (as sm@57@01  $FVF<next>)))
      (and (Set_in (inv@54@01 r) g@3@01) (img@55@01 r)))
    (=>
      (and (Set_in (inv@54@01 r) g@3@01) (img@55@01 r))
      (Set_in r ($FVF.domain_next (as sm@57@01  $FVF<next>)))))
  :pattern ((Set_in r ($FVF.domain_next (as sm@57@01  $FVF<next>))))
  :qid |qp.fvfDomDef33|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and (Set_in (inv@54@01 r) g@3@01) (img@55@01 r))
      (and (img@10@01 r) (Set_in (inv@9@01 r) g@3@01)))
    (=
      ($FVF.lookup_next (as sm@57@01  $FVF<next>) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@6@01))))) r)))
  :pattern (($FVF.lookup_next (as sm@57@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@6@01))))) r))
  :qid |qp.fvfValDef31|)))
(assert (forall ((r $Ref)) (!
  ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@6@01))))) r) r)
  :pattern (($FVF.lookup_next (as sm@57@01  $FVF<next>) r))
  :qid |qp.fvfResTrgDef32|)))
(assert (and
  (forall ((r $Ref)) (!
    (=>
      (Set_in (inv@54@01 r) g@3@01)
      ($FVF.loc_next ($FVF.lookup_next (as sm@56@01  $FVF<next>) r) r))
    :pattern ((inv@54@01 r))
    :qid |quant-u-15511|))
  ($$%precondition ($SortWrappers.$FVF<next>To$Snap (as sm@57@01  $FVF<next>)) g@3@01)))
(pop) ; 9
(pop) ; 8
; Joined path conditions
; Joined path conditions
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@10@01 r) (Set_in (inv@9@01 r) g@3@01))
    (=
      ($FVF.lookup_next (as sm@56@01  $FVF<next>) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@6@01))))) r)))
  :pattern (($FVF.lookup_next (as sm@56@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@6@01))))) r))
  :qid |qp.fvfValDef29|)))
(assert (forall ((r $Ref)) (!
  ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@6@01))))) r) r)
  :pattern (($FVF.lookup_next (as sm@56@01  $FVF<next>) r))
  :qid |qp.fvfResTrgDef30|)))
(assert (forall ((n@53@01 $Ref)) (!
  (=>
    (Set_in n@53@01 g@3@01)
    (and (= (inv@54@01 n@53@01) n@53@01) (img@55@01 n@53@01)))
  :pattern ((Set_in n@53@01 g@3@01))
  :pattern ((inv@54@01 n@53@01))
  :pattern ((img@55@01 n@53@01))
  :qid |next-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=> (and (img@55@01 r) (Set_in (inv@54@01 r) g@3@01)) (= (inv@54@01 r) r))
  :pattern ((inv@54@01 r))
  :qid |next-fctOfInv|)))
(assert (forall ((r $Ref)) (!
  (and
    (=>
      (Set_in r ($FVF.domain_next (as sm@57@01  $FVF<next>)))
      (and (Set_in (inv@54@01 r) g@3@01) (img@55@01 r)))
    (=>
      (and (Set_in (inv@54@01 r) g@3@01) (img@55@01 r))
      (Set_in r ($FVF.domain_next (as sm@57@01  $FVF<next>)))))
  :pattern ((Set_in r ($FVF.domain_next (as sm@57@01  $FVF<next>))))
  :qid |qp.fvfDomDef33|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and (Set_in (inv@54@01 r) g@3@01) (img@55@01 r))
      (and (img@10@01 r) (Set_in (inv@9@01 r) g@3@01)))
    (=
      ($FVF.lookup_next (as sm@57@01  $FVF<next>) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@6@01))))) r)))
  :pattern (($FVF.lookup_next (as sm@57@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@6@01))))) r))
  :qid |qp.fvfValDef31|)))
(assert (forall ((r $Ref)) (!
  ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@6@01))))) r) r)
  :pattern (($FVF.lookup_next (as sm@57@01  $FVF<next>) r))
  :qid |qp.fvfResTrgDef32|)))
(assert (=>
  (exists_path<Bool> ($$ ($SortWrappers.$FVF<next>To$Snap (as sm@52@01  $FVF<next>)) g@3@01) v1@38@01 x@4@01)
  (and
    (exists_path<Bool> ($$ ($SortWrappers.$FVF<next>To$Snap (as sm@52@01  $FVF<next>)) g@3@01) v1@38@01 x@4@01)
    (forall ((r $Ref)) (!
      (=>
        (Set_in (inv@54@01 r) g@3@01)
        ($FVF.loc_next ($FVF.lookup_next (as sm@56@01  $FVF<next>) r) r))
      :pattern ((inv@54@01 r))
      :qid |quant-u-15511|))
    ($$%precondition ($SortWrappers.$FVF<next>To$Snap (as sm@57@01  $FVF<next>)) g@3@01))))
(assert (or
  (exists_path<Bool> ($$ ($SortWrappers.$FVF<next>To$Snap (as sm@52@01  $FVF<next>)) g@3@01) v1@38@01 x@4@01)
  (not
    (exists_path<Bool> ($$ ($SortWrappers.$FVF<next>To$Snap (as sm@52@01  $FVF<next>)) g@3@01) v1@38@01 x@4@01))))
(pop) ; 7
(pop) ; 6
; Joined path conditions
; Joined path conditions
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@10@01 r) (Set_in (inv@9@01 r) g@3@01))
    (=
      ($FVF.lookup_next (as sm@51@01  $FVF<next>) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@6@01))))) r)))
  :pattern (($FVF.lookup_next (as sm@51@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@6@01))))) r))
  :qid |qp.fvfValDef24|)))
(assert (forall ((r $Ref)) (!
  ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@6@01))))) r) r)
  :pattern (($FVF.lookup_next (as sm@51@01  $FVF<next>) r))
  :qid |qp.fvfResTrgDef25|)))
(assert (forall ((n@48@01 $Ref)) (!
  (=>
    (Set_in n@48@01 g@3@01)
    (and (= (inv@49@01 n@48@01) n@48@01) (img@50@01 n@48@01)))
  :pattern ((Set_in n@48@01 g@3@01))
  :pattern ((inv@49@01 n@48@01))
  :pattern ((img@50@01 n@48@01))
  :qid |next-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=> (and (img@50@01 r) (Set_in (inv@49@01 r) g@3@01)) (= (inv@49@01 r) r))
  :pattern ((inv@49@01 r))
  :qid |next-fctOfInv|)))
(assert (forall ((r $Ref)) (!
  (and
    (=>
      (Set_in r ($FVF.domain_next (as sm@52@01  $FVF<next>)))
      (and (Set_in (inv@49@01 r) g@3@01) (img@50@01 r)))
    (=>
      (and (Set_in (inv@49@01 r) g@3@01) (img@50@01 r))
      (Set_in r ($FVF.domain_next (as sm@52@01  $FVF<next>)))))
  :pattern ((Set_in r ($FVF.domain_next (as sm@52@01  $FVF<next>))))
  :qid |qp.fvfDomDef28|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and (Set_in (inv@49@01 r) g@3@01) (img@50@01 r))
      (and (img@10@01 r) (Set_in (inv@9@01 r) g@3@01)))
    (=
      ($FVF.lookup_next (as sm@52@01  $FVF<next>) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@6@01))))) r)))
  :pattern (($FVF.lookup_next (as sm@52@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@6@01))))) r))
  :qid |qp.fvfValDef26|)))
(assert (forall ((r $Ref)) (!
  ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@6@01))))) r) r)
  :pattern (($FVF.lookup_next (as sm@52@01  $FVF<next>) r))
  :qid |qp.fvfResTrgDef27|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@10@01 r) (Set_in (inv@9@01 r) g@3@01))
    (=
      ($FVF.lookup_next (as sm@56@01  $FVF<next>) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@6@01))))) r)))
  :pattern (($FVF.lookup_next (as sm@56@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@6@01))))) r))
  :qid |qp.fvfValDef29|)))
(assert (forall ((r $Ref)) (!
  ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@6@01))))) r) r)
  :pattern (($FVF.lookup_next (as sm@56@01  $FVF<next>) r))
  :qid |qp.fvfResTrgDef30|)))
(assert (forall ((n@53@01 $Ref)) (!
  (=>
    (Set_in n@53@01 g@3@01)
    (and (= (inv@54@01 n@53@01) n@53@01) (img@55@01 n@53@01)))
  :pattern ((Set_in n@53@01 g@3@01))
  :pattern ((inv@54@01 n@53@01))
  :pattern ((img@55@01 n@53@01))
  :qid |next-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=> (and (img@55@01 r) (Set_in (inv@54@01 r) g@3@01)) (= (inv@54@01 r) r))
  :pattern ((inv@54@01 r))
  :qid |next-fctOfInv|)))
(assert (forall ((r $Ref)) (!
  (and
    (=>
      (Set_in r ($FVF.domain_next (as sm@57@01  $FVF<next>)))
      (and (Set_in (inv@54@01 r) g@3@01) (img@55@01 r)))
    (=>
      (and (Set_in (inv@54@01 r) g@3@01) (img@55@01 r))
      (Set_in r ($FVF.domain_next (as sm@57@01  $FVF<next>)))))
  :pattern ((Set_in r ($FVF.domain_next (as sm@57@01  $FVF<next>))))
  :qid |qp.fvfDomDef33|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and (Set_in (inv@54@01 r) g@3@01) (img@55@01 r))
      (and (img@10@01 r) (Set_in (inv@9@01 r) g@3@01)))
    (=
      ($FVF.lookup_next (as sm@57@01  $FVF<next>) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@6@01))))) r)))
  :pattern (($FVF.lookup_next (as sm@57@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@6@01))))) r))
  :qid |qp.fvfValDef31|)))
(assert (forall ((r $Ref)) (!
  ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@6@01))))) r) r)
  :pattern (($FVF.lookup_next (as sm@57@01  $FVF<next>) r))
  :qid |qp.fvfResTrgDef32|)))
(assert (=>
  (not
    (exists_path<Bool> ($$ ($SortWrappers.$FVF<next>To$Snap (as sm@47@01  $FVF<next>)) g@3@01) v1@38@01 v2@39@01))
  (and
    (not
      (exists_path<Bool> ($$ ($SortWrappers.$FVF<next>To$Snap (as sm@47@01  $FVF<next>)) g@3@01) v1@38@01 v2@39@01))
    (forall ((r $Ref)) (!
      (=>
        (Set_in (inv@49@01 r) g@3@01)
        ($FVF.loc_next ($FVF.lookup_next (as sm@51@01  $FVF<next>) r) r))
      :pattern ((inv@49@01 r))
      :qid |quant-u-15508|))
    ($$%precondition ($SortWrappers.$FVF<next>To$Snap (as sm@52@01  $FVF<next>)) g@3@01)
    (=>
      (exists_path<Bool> ($$ ($SortWrappers.$FVF<next>To$Snap (as sm@52@01  $FVF<next>)) g@3@01) v1@38@01 x@4@01)
      (and
        (exists_path<Bool> ($$ ($SortWrappers.$FVF<next>To$Snap (as sm@52@01  $FVF<next>)) g@3@01) v1@38@01 x@4@01)
        (forall ((r $Ref)) (!
          (=>
            (Set_in (inv@54@01 r) g@3@01)
            ($FVF.loc_next ($FVF.lookup_next (as sm@56@01  $FVF<next>) r) r))
          :pattern ((inv@54@01 r))
          :qid |quant-u-15511|))
        ($$%precondition ($SortWrappers.$FVF<next>To$Snap (as sm@57@01  $FVF<next>)) g@3@01)))
    (or
      (exists_path<Bool> ($$ ($SortWrappers.$FVF<next>To$Snap (as sm@52@01  $FVF<next>)) g@3@01) v1@38@01 x@4@01)
      (not
        (exists_path<Bool> ($$ ($SortWrappers.$FVF<next>To$Snap (as sm@52@01  $FVF<next>)) g@3@01) v1@38@01 x@4@01))))))
(assert (or
  (not
    (exists_path<Bool> ($$ ($SortWrappers.$FVF<next>To$Snap (as sm@47@01  $FVF<next>)) g@3@01) v1@38@01 v2@39@01))
  (exists_path<Bool> ($$ ($SortWrappers.$FVF<next>To$Snap (as sm@47@01  $FVF<next>)) g@3@01) v1@38@01 v2@39@01)))
(pop) ; 5
; Nested auxiliary terms: globals (aux)
(assert (forall ((n@40@01 $Ref)) (!
  (=>
    (Set_in n@40@01 g@3@01)
    (and (= (inv@41@01 n@40@01) n@40@01) (img@42@01 n@40@01)))
  :pattern ((Set_in n@40@01 g@3@01))
  :pattern ((inv@41@01 n@40@01))
  :pattern ((img@42@01 n@40@01))
  :qid |next-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=> (and (img@42@01 r) (Set_in (inv@41@01 r) g@3@01)) (= (inv@41@01 r) r))
  :pattern ((inv@41@01 r))
  :qid |next-fctOfInv|)))
(assert (forall ((r $Ref)) (!
  (and
    (=>
      (Set_in r ($FVF.domain_next (as sm@43@01  $FVF<next>)))
      (and (Set_in (inv@41@01 r) g@3@01) (img@42@01 r)))
    (=>
      (and (Set_in (inv@41@01 r) g@3@01) (img@42@01 r))
      (Set_in r ($FVF.domain_next (as sm@43@01  $FVF<next>)))))
  :pattern ((Set_in r ($FVF.domain_next (as sm@43@01  $FVF<next>))))
  :qid |qp.fvfDomDef20|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and (Set_in (inv@41@01 r) g@3@01) (img@42@01 r))
      (and (img@17@01 r) (Set_in (inv@16@01 r) g@3@01)))
    (=
      ($FVF.lookup_next (as sm@43@01  $FVF<next>) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@13@01))) r)))
  :pattern (($FVF.lookup_next (as sm@43@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@13@01))) r))
  :qid |qp.fvfValDef18|)))
(assert (forall ((r $Ref)) (!
  ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@13@01))) r) r)
  :pattern (($FVF.lookup_next (as sm@43@01  $FVF<next>) r))
  :qid |qp.fvfResTrgDef19|)))
(assert (forall ((n@44@01 $Ref)) (!
  (=>
    (Set_in n@44@01 g@3@01)
    (and (= (inv@45@01 n@44@01) n@44@01) (img@46@01 n@44@01)))
  :pattern ((Set_in n@44@01 g@3@01))
  :pattern ((inv@45@01 n@44@01))
  :pattern ((img@46@01 n@44@01))
  :qid |next-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=> (and (img@46@01 r) (Set_in (inv@45@01 r) g@3@01)) (= (inv@45@01 r) r))
  :pattern ((inv@45@01 r))
  :qid |next-fctOfInv|)))
(assert (forall ((r $Ref)) (!
  (and
    (=>
      (Set_in r ($FVF.domain_next (as sm@47@01  $FVF<next>)))
      (and (Set_in (inv@45@01 r) g@3@01) (img@46@01 r)))
    (=>
      (and (Set_in (inv@45@01 r) g@3@01) (img@46@01 r))
      (Set_in r ($FVF.domain_next (as sm@47@01  $FVF<next>)))))
  :pattern ((Set_in r ($FVF.domain_next (as sm@47@01  $FVF<next>))))
  :qid |qp.fvfDomDef23|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and (Set_in (inv@45@01 r) g@3@01) (img@46@01 r))
      (and (img@10@01 r) (Set_in (inv@9@01 r) g@3@01)))
    (=
      ($FVF.lookup_next (as sm@47@01  $FVF<next>) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@6@01))))) r)))
  :pattern (($FVF.lookup_next (as sm@47@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@6@01))))) r))
  :qid |qp.fvfValDef21|)))
(assert (forall ((r $Ref)) (!
  ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@6@01))))) r) r)
  :pattern (($FVF.lookup_next (as sm@47@01  $FVF<next>) r))
  :qid |qp.fvfResTrgDef22|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@10@01 r) (Set_in (inv@9@01 r) g@3@01))
    (=
      ($FVF.lookup_next (as sm@51@01  $FVF<next>) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@6@01))))) r)))
  :pattern (($FVF.lookup_next (as sm@51@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@6@01))))) r))
  :qid |qp.fvfValDef24|)))
(assert (forall ((r $Ref)) (!
  ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@6@01))))) r) r)
  :pattern (($FVF.lookup_next (as sm@51@01  $FVF<next>) r))
  :qid |qp.fvfResTrgDef25|)))
(assert (forall ((n@48@01 $Ref)) (!
  (=>
    (Set_in n@48@01 g@3@01)
    (and (= (inv@49@01 n@48@01) n@48@01) (img@50@01 n@48@01)))
  :pattern ((Set_in n@48@01 g@3@01))
  :pattern ((inv@49@01 n@48@01))
  :pattern ((img@50@01 n@48@01))
  :qid |next-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=> (and (img@50@01 r) (Set_in (inv@49@01 r) g@3@01)) (= (inv@49@01 r) r))
  :pattern ((inv@49@01 r))
  :qid |next-fctOfInv|)))
(assert (forall ((r $Ref)) (!
  (and
    (=>
      (Set_in r ($FVF.domain_next (as sm@52@01  $FVF<next>)))
      (and (Set_in (inv@49@01 r) g@3@01) (img@50@01 r)))
    (=>
      (and (Set_in (inv@49@01 r) g@3@01) (img@50@01 r))
      (Set_in r ($FVF.domain_next (as sm@52@01  $FVF<next>)))))
  :pattern ((Set_in r ($FVF.domain_next (as sm@52@01  $FVF<next>))))
  :qid |qp.fvfDomDef28|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and (Set_in (inv@49@01 r) g@3@01) (img@50@01 r))
      (and (img@10@01 r) (Set_in (inv@9@01 r) g@3@01)))
    (=
      ($FVF.lookup_next (as sm@52@01  $FVF<next>) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@6@01))))) r)))
  :pattern (($FVF.lookup_next (as sm@52@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@6@01))))) r))
  :qid |qp.fvfValDef26|)))
(assert (forall ((r $Ref)) (!
  ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@6@01))))) r) r)
  :pattern (($FVF.lookup_next (as sm@52@01  $FVF<next>) r))
  :qid |qp.fvfResTrgDef27|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@10@01 r) (Set_in (inv@9@01 r) g@3@01))
    (=
      ($FVF.lookup_next (as sm@56@01  $FVF<next>) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@6@01))))) r)))
  :pattern (($FVF.lookup_next (as sm@56@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@6@01))))) r))
  :qid |qp.fvfValDef29|)))
(assert (forall ((r $Ref)) (!
  ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@6@01))))) r) r)
  :pattern (($FVF.lookup_next (as sm@56@01  $FVF<next>) r))
  :qid |qp.fvfResTrgDef30|)))
(assert (forall ((n@53@01 $Ref)) (!
  (=>
    (Set_in n@53@01 g@3@01)
    (and (= (inv@54@01 n@53@01) n@53@01) (img@55@01 n@53@01)))
  :pattern ((Set_in n@53@01 g@3@01))
  :pattern ((inv@54@01 n@53@01))
  :pattern ((img@55@01 n@53@01))
  :qid |next-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=> (and (img@55@01 r) (Set_in (inv@54@01 r) g@3@01)) (= (inv@54@01 r) r))
  :pattern ((inv@54@01 r))
  :qid |next-fctOfInv|)))
(assert (forall ((r $Ref)) (!
  (and
    (=>
      (Set_in r ($FVF.domain_next (as sm@57@01  $FVF<next>)))
      (and (Set_in (inv@54@01 r) g@3@01) (img@55@01 r)))
    (=>
      (and (Set_in (inv@54@01 r) g@3@01) (img@55@01 r))
      (Set_in r ($FVF.domain_next (as sm@57@01  $FVF<next>)))))
  :pattern ((Set_in r ($FVF.domain_next (as sm@57@01  $FVF<next>))))
  :qid |qp.fvfDomDef33|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and (Set_in (inv@54@01 r) g@3@01) (img@55@01 r))
      (and (img@10@01 r) (Set_in (inv@9@01 r) g@3@01)))
    (=
      ($FVF.lookup_next (as sm@57@01  $FVF<next>) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@6@01))))) r)))
  :pattern (($FVF.lookup_next (as sm@57@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@6@01))))) r))
  :qid |qp.fvfValDef31|)))
(assert (forall ((r $Ref)) (!
  ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@6@01))))) r) r)
  :pattern (($FVF.lookup_next (as sm@57@01  $FVF<next>) r))
  :qid |qp.fvfResTrgDef32|)))
(assert (forall ((r $Ref)) (!
  (=>
    (Set_in (inv@41@01 r) g@3@01)
    ($FVF.loc_next ($FVF.lookup_next (as sm@18@01  $FVF<next>) r) r))
  :pattern ((inv@41@01 r))
  :qid |quant-u-15502|)))
(assert ($$%precondition ($SortWrappers.$FVF<next>To$Snap (as sm@43@01  $FVF<next>)) g@3@01))
(assert (forall ((r $Ref)) (!
  (=>
    (Set_in (inv@45@01 r) g@3@01)
    ($FVF.loc_next ($FVF.lookup_next (as sm@11@01  $FVF<next>) r) r))
  :pattern ((inv@45@01 r))
  :qid |quant-u-15505|)))
(assert ($$%precondition ($SortWrappers.$FVF<next>To$Snap (as sm@47@01  $FVF<next>)) g@3@01))
; Nested auxiliary terms: non-globals (aux)
(assert (forall ((v1@38@01 $Ref) (v2@39@01 $Ref)) (!
  (and
    (=>
      (not
        (exists_path<Bool> ($$ ($SortWrappers.$FVF<next>To$Snap (as sm@47@01  $FVF<next>)) g@3@01) v1@38@01 v2@39@01))
      (and
        (not
          (exists_path<Bool> ($$ ($SortWrappers.$FVF<next>To$Snap (as sm@47@01  $FVF<next>)) g@3@01) v1@38@01 v2@39@01))
        (forall ((r $Ref)) (!
          (=>
            (Set_in (inv@49@01 r) g@3@01)
            ($FVF.loc_next ($FVF.lookup_next (as sm@51@01  $FVF<next>) r) r))
          :pattern ((inv@49@01 r))
          :qid |quant-u-15508|))
        ($$%precondition ($SortWrappers.$FVF<next>To$Snap (as sm@52@01  $FVF<next>)) g@3@01)
        (=>
          (exists_path<Bool> ($$ ($SortWrappers.$FVF<next>To$Snap (as sm@52@01  $FVF<next>)) g@3@01) v1@38@01 x@4@01)
          (and
            (exists_path<Bool> ($$ ($SortWrappers.$FVF<next>To$Snap (as sm@52@01  $FVF<next>)) g@3@01) v1@38@01 x@4@01)
            (forall ((r $Ref)) (!
              (=>
                (Set_in (inv@54@01 r) g@3@01)
                ($FVF.loc_next ($FVF.lookup_next (as sm@56@01  $FVF<next>) r) r))
              :pattern ((inv@54@01 r))
              :qid |quant-u-15511|))
            ($$%precondition ($SortWrappers.$FVF<next>To$Snap (as sm@57@01  $FVF<next>)) g@3@01)))
        (or
          (exists_path<Bool> ($$ ($SortWrappers.$FVF<next>To$Snap (as sm@52@01  $FVF<next>)) g@3@01) v1@38@01 x@4@01)
          (not
            (exists_path<Bool> ($$ ($SortWrappers.$FVF<next>To$Snap (as sm@52@01  $FVF<next>)) g@3@01) v1@38@01 x@4@01)))))
    (or
      (not
        (exists_path<Bool> ($$ ($SortWrappers.$FVF<next>To$Snap (as sm@47@01  $FVF<next>)) g@3@01) v1@38@01 v2@39@01))
      (exists_path<Bool> ($$ ($SortWrappers.$FVF<next>To$Snap (as sm@47@01  $FVF<next>)) g@3@01) v1@38@01 v2@39@01)))
  :pattern ((exists_path<Bool> ($$ ($SortWrappers.$FVF<next>To$Snap (as sm@43@01  $FVF<next>)) g@3@01) v1@38@01 v2@39@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/graphs/static/outlines/list_append.vpr@294@27@296@138-aux|)))
(pop) ; 4
(push) ; 4
; [else-branch: 9 | y@5@01 == Null]
(assert (= y@5@01 $Ref.null))
(pop) ; 4
(pop) ; 3
; Joined path conditions
(assert (forall ((n@40@01 $Ref)) (!
  (=>
    (Set_in n@40@01 g@3@01)
    (and (= (inv@41@01 n@40@01) n@40@01) (img@42@01 n@40@01)))
  :pattern ((Set_in n@40@01 g@3@01))
  :pattern ((inv@41@01 n@40@01))
  :pattern ((img@42@01 n@40@01))
  :qid |next-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=> (and (img@42@01 r) (Set_in (inv@41@01 r) g@3@01)) (= (inv@41@01 r) r))
  :pattern ((inv@41@01 r))
  :qid |next-fctOfInv|)))
(assert (forall ((r $Ref)) (!
  (and
    (=>
      (Set_in r ($FVF.domain_next (as sm@43@01  $FVF<next>)))
      (and (Set_in (inv@41@01 r) g@3@01) (img@42@01 r)))
    (=>
      (and (Set_in (inv@41@01 r) g@3@01) (img@42@01 r))
      (Set_in r ($FVF.domain_next (as sm@43@01  $FVF<next>)))))
  :pattern ((Set_in r ($FVF.domain_next (as sm@43@01  $FVF<next>))))
  :qid |qp.fvfDomDef20|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and (Set_in (inv@41@01 r) g@3@01) (img@42@01 r))
      (and (img@17@01 r) (Set_in (inv@16@01 r) g@3@01)))
    (=
      ($FVF.lookup_next (as sm@43@01  $FVF<next>) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@13@01))) r)))
  :pattern (($FVF.lookup_next (as sm@43@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@13@01))) r))
  :qid |qp.fvfValDef18|)))
(assert (forall ((r $Ref)) (!
  ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@13@01))) r) r)
  :pattern (($FVF.lookup_next (as sm@43@01  $FVF<next>) r))
  :qid |qp.fvfResTrgDef19|)))
(assert (forall ((n@44@01 $Ref)) (!
  (=>
    (Set_in n@44@01 g@3@01)
    (and (= (inv@45@01 n@44@01) n@44@01) (img@46@01 n@44@01)))
  :pattern ((Set_in n@44@01 g@3@01))
  :pattern ((inv@45@01 n@44@01))
  :pattern ((img@46@01 n@44@01))
  :qid |next-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=> (and (img@46@01 r) (Set_in (inv@45@01 r) g@3@01)) (= (inv@45@01 r) r))
  :pattern ((inv@45@01 r))
  :qid |next-fctOfInv|)))
(assert (forall ((r $Ref)) (!
  (and
    (=>
      (Set_in r ($FVF.domain_next (as sm@47@01  $FVF<next>)))
      (and (Set_in (inv@45@01 r) g@3@01) (img@46@01 r)))
    (=>
      (and (Set_in (inv@45@01 r) g@3@01) (img@46@01 r))
      (Set_in r ($FVF.domain_next (as sm@47@01  $FVF<next>)))))
  :pattern ((Set_in r ($FVF.domain_next (as sm@47@01  $FVF<next>))))
  :qid |qp.fvfDomDef23|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and (Set_in (inv@45@01 r) g@3@01) (img@46@01 r))
      (and (img@10@01 r) (Set_in (inv@9@01 r) g@3@01)))
    (=
      ($FVF.lookup_next (as sm@47@01  $FVF<next>) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@6@01))))) r)))
  :pattern (($FVF.lookup_next (as sm@47@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@6@01))))) r))
  :qid |qp.fvfValDef21|)))
(assert (forall ((r $Ref)) (!
  ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@6@01))))) r) r)
  :pattern (($FVF.lookup_next (as sm@47@01  $FVF<next>) r))
  :qid |qp.fvfResTrgDef22|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@10@01 r) (Set_in (inv@9@01 r) g@3@01))
    (=
      ($FVF.lookup_next (as sm@51@01  $FVF<next>) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@6@01))))) r)))
  :pattern (($FVF.lookup_next (as sm@51@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@6@01))))) r))
  :qid |qp.fvfValDef24|)))
(assert (forall ((r $Ref)) (!
  ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@6@01))))) r) r)
  :pattern (($FVF.lookup_next (as sm@51@01  $FVF<next>) r))
  :qid |qp.fvfResTrgDef25|)))
(assert (forall ((n@48@01 $Ref)) (!
  (=>
    (Set_in n@48@01 g@3@01)
    (and (= (inv@49@01 n@48@01) n@48@01) (img@50@01 n@48@01)))
  :pattern ((Set_in n@48@01 g@3@01))
  :pattern ((inv@49@01 n@48@01))
  :pattern ((img@50@01 n@48@01))
  :qid |next-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=> (and (img@50@01 r) (Set_in (inv@49@01 r) g@3@01)) (= (inv@49@01 r) r))
  :pattern ((inv@49@01 r))
  :qid |next-fctOfInv|)))
(assert (forall ((r $Ref)) (!
  (and
    (=>
      (Set_in r ($FVF.domain_next (as sm@52@01  $FVF<next>)))
      (and (Set_in (inv@49@01 r) g@3@01) (img@50@01 r)))
    (=>
      (and (Set_in (inv@49@01 r) g@3@01) (img@50@01 r))
      (Set_in r ($FVF.domain_next (as sm@52@01  $FVF<next>)))))
  :pattern ((Set_in r ($FVF.domain_next (as sm@52@01  $FVF<next>))))
  :qid |qp.fvfDomDef28|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and (Set_in (inv@49@01 r) g@3@01) (img@50@01 r))
      (and (img@10@01 r) (Set_in (inv@9@01 r) g@3@01)))
    (=
      ($FVF.lookup_next (as sm@52@01  $FVF<next>) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@6@01))))) r)))
  :pattern (($FVF.lookup_next (as sm@52@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@6@01))))) r))
  :qid |qp.fvfValDef26|)))
(assert (forall ((r $Ref)) (!
  ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@6@01))))) r) r)
  :pattern (($FVF.lookup_next (as sm@52@01  $FVF<next>) r))
  :qid |qp.fvfResTrgDef27|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@10@01 r) (Set_in (inv@9@01 r) g@3@01))
    (=
      ($FVF.lookup_next (as sm@56@01  $FVF<next>) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@6@01))))) r)))
  :pattern (($FVF.lookup_next (as sm@56@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@6@01))))) r))
  :qid |qp.fvfValDef29|)))
(assert (forall ((r $Ref)) (!
  ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@6@01))))) r) r)
  :pattern (($FVF.lookup_next (as sm@56@01  $FVF<next>) r))
  :qid |qp.fvfResTrgDef30|)))
(assert (forall ((n@53@01 $Ref)) (!
  (=>
    (Set_in n@53@01 g@3@01)
    (and (= (inv@54@01 n@53@01) n@53@01) (img@55@01 n@53@01)))
  :pattern ((Set_in n@53@01 g@3@01))
  :pattern ((inv@54@01 n@53@01))
  :pattern ((img@55@01 n@53@01))
  :qid |next-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=> (and (img@55@01 r) (Set_in (inv@54@01 r) g@3@01)) (= (inv@54@01 r) r))
  :pattern ((inv@54@01 r))
  :qid |next-fctOfInv|)))
(assert (forall ((r $Ref)) (!
  (and
    (=>
      (Set_in r ($FVF.domain_next (as sm@57@01  $FVF<next>)))
      (and (Set_in (inv@54@01 r) g@3@01) (img@55@01 r)))
    (=>
      (and (Set_in (inv@54@01 r) g@3@01) (img@55@01 r))
      (Set_in r ($FVF.domain_next (as sm@57@01  $FVF<next>)))))
  :pattern ((Set_in r ($FVF.domain_next (as sm@57@01  $FVF<next>))))
  :qid |qp.fvfDomDef33|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and (Set_in (inv@54@01 r) g@3@01) (img@55@01 r))
      (and (img@10@01 r) (Set_in (inv@9@01 r) g@3@01)))
    (=
      ($FVF.lookup_next (as sm@57@01  $FVF<next>) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@6@01))))) r)))
  :pattern (($FVF.lookup_next (as sm@57@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@6@01))))) r))
  :qid |qp.fvfValDef31|)))
(assert (forall ((r $Ref)) (!
  ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@6@01))))) r) r)
  :pattern (($FVF.lookup_next (as sm@57@01  $FVF<next>) r))
  :qid |qp.fvfResTrgDef32|)))
(assert (=>
  (not (= y@5@01 $Ref.null))
  (and
    (not (= y@5@01 $Ref.null))
    (forall ((r $Ref)) (!
      (=>
        (Set_in (inv@41@01 r) g@3@01)
        ($FVF.loc_next ($FVF.lookup_next (as sm@18@01  $FVF<next>) r) r))
      :pattern ((inv@41@01 r))
      :qid |quant-u-15502|))
    ($$%precondition ($SortWrappers.$FVF<next>To$Snap (as sm@43@01  $FVF<next>)) g@3@01)
    (forall ((r $Ref)) (!
      (=>
        (Set_in (inv@45@01 r) g@3@01)
        ($FVF.loc_next ($FVF.lookup_next (as sm@11@01  $FVF<next>) r) r))
      :pattern ((inv@45@01 r))
      :qid |quant-u-15505|))
    ($$%precondition ($SortWrappers.$FVF<next>To$Snap (as sm@47@01  $FVF<next>)) g@3@01)
    (forall ((v1@38@01 $Ref) (v2@39@01 $Ref)) (!
      (and
        (=>
          (not
            (exists_path<Bool> ($$ ($SortWrappers.$FVF<next>To$Snap (as sm@47@01  $FVF<next>)) g@3@01) v1@38@01 v2@39@01))
          (and
            (not
              (exists_path<Bool> ($$ ($SortWrappers.$FVF<next>To$Snap (as sm@47@01  $FVF<next>)) g@3@01) v1@38@01 v2@39@01))
            (forall ((r $Ref)) (!
              (=>
                (Set_in (inv@49@01 r) g@3@01)
                ($FVF.loc_next ($FVF.lookup_next (as sm@51@01  $FVF<next>) r) r))
              :pattern ((inv@49@01 r))
              :qid |quant-u-15508|))
            ($$%precondition ($SortWrappers.$FVF<next>To$Snap (as sm@52@01  $FVF<next>)) g@3@01)
            (=>
              (exists_path<Bool> ($$ ($SortWrappers.$FVF<next>To$Snap (as sm@52@01  $FVF<next>)) g@3@01) v1@38@01 x@4@01)
              (and
                (exists_path<Bool> ($$ ($SortWrappers.$FVF<next>To$Snap (as sm@52@01  $FVF<next>)) g@3@01) v1@38@01 x@4@01)
                (forall ((r $Ref)) (!
                  (=>
                    (Set_in (inv@54@01 r) g@3@01)
                    ($FVF.loc_next ($FVF.lookup_next (as sm@56@01  $FVF<next>) r) r))
                  :pattern ((inv@54@01 r))
                  :qid |quant-u-15511|))
                ($$%precondition ($SortWrappers.$FVF<next>To$Snap (as sm@57@01  $FVF<next>)) g@3@01)))
            (or
              (exists_path<Bool> ($$ ($SortWrappers.$FVF<next>To$Snap (as sm@52@01  $FVF<next>)) g@3@01) v1@38@01 x@4@01)
              (not
                (exists_path<Bool> ($$ ($SortWrappers.$FVF<next>To$Snap (as sm@52@01  $FVF<next>)) g@3@01) v1@38@01 x@4@01)))))
        (or
          (not
            (exists_path<Bool> ($$ ($SortWrappers.$FVF<next>To$Snap (as sm@47@01  $FVF<next>)) g@3@01) v1@38@01 v2@39@01))
          (exists_path<Bool> ($$ ($SortWrappers.$FVF<next>To$Snap (as sm@47@01  $FVF<next>)) g@3@01) v1@38@01 v2@39@01)))
      :pattern ((exists_path<Bool> ($$ ($SortWrappers.$FVF<next>To$Snap (as sm@43@01  $FVF<next>)) g@3@01) v1@38@01 v2@39@01))
      :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/graphs/static/outlines/list_append.vpr@294@27@296@138-aux|)))))
; Joined path conditions
(assert (=>
  (not (= y@5@01 $Ref.null))
  (forall ((v1@38@01 $Ref) (v2@39@01 $Ref)) (!
    (=
      (exists_path<Bool> ($$ ($SortWrappers.$FVF<next>To$Snap (as sm@43@01  $FVF<next>)) g@3@01) v1@38@01 v2@39@01)
      (or
        (exists_path<Bool> ($$ ($SortWrappers.$FVF<next>To$Snap (as sm@47@01  $FVF<next>)) g@3@01) v1@38@01 v2@39@01)
        (and
          (exists_path<Bool> ($$ ($SortWrappers.$FVF<next>To$Snap (as sm@52@01  $FVF<next>)) g@3@01) v1@38@01 x@4@01)
          (exists_path<Bool> ($$ ($SortWrappers.$FVF<next>To$Snap (as sm@57@01  $FVF<next>)) g@3@01) y@5@01 v2@39@01))))
    :pattern ((exists_path<Bool> ($$ ($SortWrappers.$FVF<next>To$Snap (as sm@43@01  $FVF<next>)) g@3@01) v1@38@01 v2@39@01))
    :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/graphs/static/outlines/list_append.vpr@294@27@296@138|))))
(pop) ; 2
(push) ; 2
; [exec]
; inhale false
(pop) ; 2
(pop) ; 1
; ---------- lemma_T2_a ----------
(declare-const g@58@01 Set<$Ref>)
(declare-const u@59@01 $Ref)
(declare-const v@60@01 $Ref)
(declare-const g@61@01 Set<$Ref>)
(declare-const u@62@01 $Ref)
(declare-const v@63@01 $Ref)
(push) ; 1
(declare-const $t@64@01 $Snap)
(assert (= $t@64@01 ($Snap.combine ($Snap.first $t@64@01) ($Snap.second $t@64@01))))
(assert (= ($Snap.first $t@64@01) $Snap.unit))
; [eval] !((null in g))
; [eval] (null in g)
(assert (not (Set_in $Ref.null g@61@01)))
(assert (=
  ($Snap.second $t@64@01)
  ($Snap.combine
    ($Snap.first ($Snap.second $t@64@01))
    ($Snap.second ($Snap.second $t@64@01)))))
(declare-const n@65@01 $Ref)
(push) ; 2
; [eval] (n in g)
(assert (Set_in n@65@01 g@61@01))
(declare-const sm@66@01 $FVF<next>)
; Definitional axioms for snapshot map values
(pop) ; 2
(declare-fun inv@67@01 ($Ref) $Ref)
(declare-fun img@68@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
; Check receiver injectivity
(push) ; 2
(assert (not (forall ((n1@65@01 $Ref) (n2@65@01 $Ref)) (!
  (=>
    (and
      (Set_in n1@65@01 g@61@01)
      (Set_in n2@65@01 g@61@01)
      (= n1@65@01 n2@65@01))
    (= n1@65@01 n2@65@01))
  
  :qid |next-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 2
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((n@65@01 $Ref)) (!
  (=>
    (Set_in n@65@01 g@61@01)
    (and (= (inv@67@01 n@65@01) n@65@01) (img@68@01 n@65@01)))
  :pattern (($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@64@01))) n@65@01) n@65@01))
  :qid |quant-u-15514|)))
(assert (forall ((r $Ref)) (!
  (=> (and (img@68@01 r) (Set_in (inv@67@01 r) g@61@01)) (= (inv@67@01 r) r))
  :pattern ((inv@67@01 r))
  :qid |next-fctOfInv|)))
; Permissions are non-negative
; Field permissions are at most one
; Permission implies non-null receiver
(assert (forall ((n@65@01 $Ref)) (!
  (=> (Set_in n@65@01 g@61@01) (not (= n@65@01 $Ref.null)))
  :pattern (($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@64@01))) n@65@01) n@65@01))
  :qid |next-permImpliesNonNull|)))
(declare-const sm@69@01 $FVF<next>)
; Definitional axioms for snapshot map values
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@68@01 r) (Set_in (inv@67@01 r) g@61@01))
    (=
      ($FVF.lookup_next (as sm@69@01  $FVF<next>) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@64@01))) r)))
  :pattern (($FVF.lookup_next (as sm@69@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@64@01))) r))
  :qid |qp.fvfValDef35|)))
(assert (forall ((r $Ref)) (!
  ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@64@01))) r) r)
  :pattern (($FVF.lookup_next (as sm@69@01  $FVF<next>) r))
  :qid |qp.fvfResTrgDef36|)))
(assert (forall ((r $Ref)) (!
  (=>
    (Set_in (inv@67@01 r) g@61@01)
    ($FVF.loc_next ($FVF.lookup_next (as sm@69@01  $FVF<next>) r) r))
  :pattern ((inv@67@01 r))
  :qid |quant-u-15515|)))
(assert (=
  ($Snap.second ($Snap.second $t@64@01))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second $t@64@01)))
    ($Snap.second ($Snap.second ($Snap.second $t@64@01))))))
(assert (= ($Snap.first ($Snap.second ($Snap.second $t@64@01))) $Snap.unit))
; [eval] (forall n$0: Ref :: { (n$0.next in g) } { (n$0 in g), n$0.next } (n$0 in g) && n$0.next != null ==> (n$0.next in g))
(declare-const n$0@70@01 $Ref)
(push) ; 2
; [eval] (n$0 in g) && n$0.next != null ==> (n$0.next in g)
; [eval] (n$0 in g) && n$0.next != null
; [eval] (n$0 in g)
(push) ; 3
; [then-branch: 12 | !(n$0@70@01 in g@61@01) | live]
; [else-branch: 12 | n$0@70@01 in g@61@01 | live]
(push) ; 4
; [then-branch: 12 | !(n$0@70@01 in g@61@01)]
(assert (not (Set_in n$0@70@01 g@61@01)))
(pop) ; 4
(push) ; 4
; [else-branch: 12 | n$0@70@01 in g@61@01]
(assert (Set_in n$0@70@01 g@61@01))
; [eval] n$0.next != null
(assert (and
  (forall ((r $Ref)) (!
    (=>
      (and (img@68@01 r) (Set_in (inv@67@01 r) g@61@01))
      (=
        ($FVF.lookup_next (as sm@69@01  $FVF<next>) r)
        ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@64@01))) r)))
    :pattern (($FVF.lookup_next (as sm@69@01  $FVF<next>) r))
    :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@64@01))) r))
    :qid |qp.fvfValDef35|))
  (forall ((r $Ref)) (!
    ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@64@01))) r) r)
    :pattern (($FVF.lookup_next (as sm@69@01  $FVF<next>) r))
    :qid |qp.fvfResTrgDef36|))))
(assert ($FVF.loc_next ($FVF.lookup_next (as sm@69@01  $FVF<next>) n$0@70@01) n$0@70@01))
(push) ; 5
(assert (not (and (img@68@01 n$0@70@01) (Set_in (inv@67@01 n$0@70@01) g@61@01))))
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
    (and (img@68@01 r) (Set_in (inv@67@01 r) g@61@01))
    (=
      ($FVF.lookup_next (as sm@69@01  $FVF<next>) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@64@01))) r)))
  :pattern (($FVF.lookup_next (as sm@69@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@64@01))) r))
  :qid |qp.fvfValDef35|)))
(assert (forall ((r $Ref)) (!
  ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@64@01))) r) r)
  :pattern (($FVF.lookup_next (as sm@69@01  $FVF<next>) r))
  :qid |qp.fvfResTrgDef36|)))
(assert (=>
  (Set_in n$0@70@01 g@61@01)
  (and
    (Set_in n$0@70@01 g@61@01)
    ($FVF.loc_next ($FVF.lookup_next (as sm@69@01  $FVF<next>) n$0@70@01) n$0@70@01))))
(assert (or (Set_in n$0@70@01 g@61@01) (not (Set_in n$0@70@01 g@61@01))))
(push) ; 3
; [then-branch: 13 | n$0@70@01 in g@61@01 && Lookup(next, sm@69@01, n$0@70@01) != Null | live]
; [else-branch: 13 | !(n$0@70@01 in g@61@01 && Lookup(next, sm@69@01, n$0@70@01) != Null) | live]
(push) ; 4
; [then-branch: 13 | n$0@70@01 in g@61@01 && Lookup(next, sm@69@01, n$0@70@01) != Null]
(assert (and
  (Set_in n$0@70@01 g@61@01)
  (not (= ($FVF.lookup_next (as sm@69@01  $FVF<next>) n$0@70@01) $Ref.null))))
; [eval] (n$0.next in g)
(assert (and
  (forall ((r $Ref)) (!
    (=>
      (and (img@68@01 r) (Set_in (inv@67@01 r) g@61@01))
      (=
        ($FVF.lookup_next (as sm@69@01  $FVF<next>) r)
        ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@64@01))) r)))
    :pattern (($FVF.lookup_next (as sm@69@01  $FVF<next>) r))
    :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@64@01))) r))
    :qid |qp.fvfValDef35|))
  (forall ((r $Ref)) (!
    ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@64@01))) r) r)
    :pattern (($FVF.lookup_next (as sm@69@01  $FVF<next>) r))
    :qid |qp.fvfResTrgDef36|))))
(assert ($FVF.loc_next ($FVF.lookup_next (as sm@69@01  $FVF<next>) n$0@70@01) n$0@70@01))
(push) ; 5
(assert (not (and (img@68@01 n$0@70@01) (Set_in (inv@67@01 n$0@70@01) g@61@01))))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(pop) ; 4
(push) ; 4
; [else-branch: 13 | !(n$0@70@01 in g@61@01 && Lookup(next, sm@69@01, n$0@70@01) != Null)]
(assert (not
  (and
    (Set_in n$0@70@01 g@61@01)
    (not (= ($FVF.lookup_next (as sm@69@01  $FVF<next>) n$0@70@01) $Ref.null)))))
(pop) ; 4
(pop) ; 3
; Joined path conditions
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@68@01 r) (Set_in (inv@67@01 r) g@61@01))
    (=
      ($FVF.lookup_next (as sm@69@01  $FVF<next>) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@64@01))) r)))
  :pattern (($FVF.lookup_next (as sm@69@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@64@01))) r))
  :qid |qp.fvfValDef35|)))
(assert (forall ((r $Ref)) (!
  ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@64@01))) r) r)
  :pattern (($FVF.lookup_next (as sm@69@01  $FVF<next>) r))
  :qid |qp.fvfResTrgDef36|)))
(assert (=>
  (and
    (Set_in n$0@70@01 g@61@01)
    (not (= ($FVF.lookup_next (as sm@69@01  $FVF<next>) n$0@70@01) $Ref.null)))
  (and
    (Set_in n$0@70@01 g@61@01)
    (not (= ($FVF.lookup_next (as sm@69@01  $FVF<next>) n$0@70@01) $Ref.null))
    ($FVF.loc_next ($FVF.lookup_next (as sm@69@01  $FVF<next>) n$0@70@01) n$0@70@01))))
; Joined path conditions
(assert (or
  (not
    (and
      (Set_in n$0@70@01 g@61@01)
      (not (= ($FVF.lookup_next (as sm@69@01  $FVF<next>) n$0@70@01) $Ref.null))))
  (and
    (Set_in n$0@70@01 g@61@01)
    (not (= ($FVF.lookup_next (as sm@69@01  $FVF<next>) n$0@70@01) $Ref.null)))))
; Definitional axioms for snapshot map values
(pop) ; 2
; Nested auxiliary terms: globals (aux)
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@68@01 r) (Set_in (inv@67@01 r) g@61@01))
    (=
      ($FVF.lookup_next (as sm@69@01  $FVF<next>) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@64@01))) r)))
  :pattern (($FVF.lookup_next (as sm@69@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@64@01))) r))
  :qid |qp.fvfValDef35|)))
(assert (forall ((r $Ref)) (!
  ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@64@01))) r) r)
  :pattern (($FVF.lookup_next (as sm@69@01  $FVF<next>) r))
  :qid |qp.fvfResTrgDef36|)))
; Nested auxiliary terms: non-globals (aux)
(assert (forall ((n$0@70@01 $Ref)) (!
  (and
    (=>
      (Set_in n$0@70@01 g@61@01)
      (and
        (Set_in n$0@70@01 g@61@01)
        ($FVF.loc_next ($FVF.lookup_next (as sm@69@01  $FVF<next>) n$0@70@01) n$0@70@01)))
    (or (Set_in n$0@70@01 g@61@01) (not (Set_in n$0@70@01 g@61@01)))
    (=>
      (and
        (Set_in n$0@70@01 g@61@01)
        (not
          (= ($FVF.lookup_next (as sm@69@01  $FVF<next>) n$0@70@01) $Ref.null)))
      (and
        (Set_in n$0@70@01 g@61@01)
        (not
          (= ($FVF.lookup_next (as sm@69@01  $FVF<next>) n$0@70@01) $Ref.null))
        ($FVF.loc_next ($FVF.lookup_next (as sm@69@01  $FVF<next>) n$0@70@01) n$0@70@01)))
    (or
      (not
        (and
          (Set_in n$0@70@01 g@61@01)
          (not
            (= ($FVF.lookup_next (as sm@69@01  $FVF<next>) n$0@70@01) $Ref.null))))
      (and
        (Set_in n$0@70@01 g@61@01)
        (not
          (= ($FVF.lookup_next (as sm@69@01  $FVF<next>) n$0@70@01) $Ref.null)))))
  :pattern ((Set_in ($FVF.lookup_next (as sm@69@01  $FVF<next>) n$0@70@01) g@61@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/graphs/static/outlines/list_append.vpr@302@14@302@22-aux|)))
(assert (forall ((n$0@70@01 $Ref)) (!
  (and
    (=>
      (Set_in n$0@70@01 g@61@01)
      (and
        (Set_in n$0@70@01 g@61@01)
        ($FVF.loc_next ($FVF.lookup_next (as sm@69@01  $FVF<next>) n$0@70@01) n$0@70@01)))
    (or (Set_in n$0@70@01 g@61@01) (not (Set_in n$0@70@01 g@61@01)))
    (=>
      (and
        (Set_in n$0@70@01 g@61@01)
        (not
          (= ($FVF.lookup_next (as sm@69@01  $FVF<next>) n$0@70@01) $Ref.null)))
      (and
        (Set_in n$0@70@01 g@61@01)
        (not
          (= ($FVF.lookup_next (as sm@69@01  $FVF<next>) n$0@70@01) $Ref.null))
        ($FVF.loc_next ($FVF.lookup_next (as sm@69@01  $FVF<next>) n$0@70@01) n$0@70@01)))
    (or
      (not
        (and
          (Set_in n$0@70@01 g@61@01)
          (not
            (= ($FVF.lookup_next (as sm@69@01  $FVF<next>) n$0@70@01) $Ref.null))))
      (and
        (Set_in n$0@70@01 g@61@01)
        (not
          (= ($FVF.lookup_next (as sm@69@01  $FVF<next>) n$0@70@01) $Ref.null)))))
  :pattern ((Set_in n$0@70@01 g@61@01) ($FVF.loc_next ($FVF.lookup_next (as sm@69@01  $FVF<next>) n$0@70@01) n$0@70@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/graphs/static/outlines/list_append.vpr@302@14@302@22-aux|)))
(assert (forall ((n$0@70@01 $Ref)) (!
  (=>
    (and
      (Set_in n$0@70@01 g@61@01)
      (not (= ($FVF.lookup_next (as sm@69@01  $FVF<next>) n$0@70@01) $Ref.null)))
    (Set_in ($FVF.lookup_next (as sm@69@01  $FVF<next>) n$0@70@01) g@61@01))
  :pattern ((Set_in ($FVF.lookup_next (as sm@69@01  $FVF<next>) n$0@70@01) g@61@01))
  :pattern ((Set_in n$0@70@01 g@61@01) ($FVF.loc_next ($FVF.lookup_next (as sm@69@01  $FVF<next>) n$0@70@01) n$0@70@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/graphs/static/outlines/list_append.vpr@302@14@302@22|)))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second $t@64@01)))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@64@01))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@64@01)))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@64@01))))
  $Snap.unit))
; [eval] (u in g)
(assert (Set_in u@62@01 g@61@01))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@64@01))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@64@01)))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@64@01))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@64@01)))))
  $Snap.unit))
; [eval] (v in g)
(assert (Set_in v@63@01 g@61@01))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@64@01)))))
  $Snap.unit))
; [eval] exists_path($$(g), u, v)
; [eval] $$(g)
(push) ; 2
(declare-const n@71@01 $Ref)
(push) ; 3
; [eval] (n in refs)
(assert (Set_in n@71@01 g@61@01))
(pop) ; 3
(declare-fun inv@72@01 ($Ref) $Ref)
(declare-fun img@73@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
; Definitional axioms for snapshot map domain
; Definitional axioms for snapshot map values
; Check receiver injectivity
(push) ; 3
(assert (not (forall ((n1@71@01 $Ref) (n2@71@01 $Ref)) (!
  (=>
    (and
      (and
        (Set_in n1@71@01 g@61@01)
        ($FVF.loc_next ($FVF.lookup_next (as sm@69@01  $FVF<next>) n1@71@01) n1@71@01))
      (and
        (Set_in n2@71@01 g@61@01)
        ($FVF.loc_next ($FVF.lookup_next (as sm@69@01  $FVF<next>) n2@71@01) n2@71@01))
      (= n1@71@01 n2@71@01))
    (= n1@71@01 n2@71@01))
  
  :qid |next-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((n@71@01 $Ref)) (!
  (=>
    (Set_in n@71@01 g@61@01)
    (and (= (inv@72@01 n@71@01) n@71@01) (img@73@01 n@71@01)))
  :pattern ((Set_in n@71@01 g@61@01))
  :pattern ((inv@72@01 n@71@01))
  :pattern ((img@73@01 n@71@01))
  :qid |next-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=> (and (img@73@01 r) (Set_in (inv@72@01 r) g@61@01)) (= (inv@72@01 r) r))
  :pattern ((inv@72@01 r))
  :qid |next-fctOfInv|)))
(assert (forall ((r $Ref)) (!
  (=>
    (Set_in (inv@72@01 r) g@61@01)
    ($FVF.loc_next ($FVF.lookup_next (as sm@69@01  $FVF<next>) r) r))
  :pattern ((inv@72@01 r))
  :qid |quant-u-15517|)))
(push) ; 3
(assert (not (forall ((r $Ref)) (!
  (=>
    (and (Set_in (inv@72@01 r) g@61@01) (img@73@01 r) (= r (inv@72@01 r)))
    (>
      (ite
        (and (img@68@01 r) (Set_in (inv@67@01 r) g@61@01))
        $Perm.Write
        $Perm.No)
      $Perm.No))
  
  :qid |quant-u-15518|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(declare-const sm@74@01 $FVF<next>)
; Definitional axioms for snapshot map domain
(assert (forall ((r $Ref)) (!
  (and
    (=>
      (Set_in r ($FVF.domain_next (as sm@74@01  $FVF<next>)))
      (and (Set_in (inv@72@01 r) g@61@01) (img@73@01 r)))
    (=>
      (and (Set_in (inv@72@01 r) g@61@01) (img@73@01 r))
      (Set_in r ($FVF.domain_next (as sm@74@01  $FVF<next>)))))
  :pattern ((Set_in r ($FVF.domain_next (as sm@74@01  $FVF<next>))))
  :qid |qp.fvfDomDef39|)))
; Definitional axioms for snapshot map values
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and (Set_in (inv@72@01 r) g@61@01) (img@73@01 r))
      (and (img@68@01 r) (Set_in (inv@67@01 r) g@61@01)))
    (=
      ($FVF.lookup_next (as sm@74@01  $FVF<next>) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@64@01))) r)))
  :pattern (($FVF.lookup_next (as sm@74@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@64@01))) r))
  :qid |qp.fvfValDef37|)))
(assert (forall ((r $Ref)) (!
  ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@64@01))) r) r)
  :pattern (($FVF.lookup_next (as sm@74@01  $FVF<next>) r))
  :qid |qp.fvfResTrgDef38|)))
(assert ($$%precondition ($SortWrappers.$FVF<next>To$Snap (as sm@74@01  $FVF<next>)) g@61@01))
(pop) ; 2
; Joined path conditions
(assert (forall ((n@71@01 $Ref)) (!
  (=>
    (Set_in n@71@01 g@61@01)
    (and (= (inv@72@01 n@71@01) n@71@01) (img@73@01 n@71@01)))
  :pattern ((Set_in n@71@01 g@61@01))
  :pattern ((inv@72@01 n@71@01))
  :pattern ((img@73@01 n@71@01))
  :qid |next-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=> (and (img@73@01 r) (Set_in (inv@72@01 r) g@61@01)) (= (inv@72@01 r) r))
  :pattern ((inv@72@01 r))
  :qid |next-fctOfInv|)))
(assert (forall ((r $Ref)) (!
  (and
    (=>
      (Set_in r ($FVF.domain_next (as sm@74@01  $FVF<next>)))
      (and (Set_in (inv@72@01 r) g@61@01) (img@73@01 r)))
    (=>
      (and (Set_in (inv@72@01 r) g@61@01) (img@73@01 r))
      (Set_in r ($FVF.domain_next (as sm@74@01  $FVF<next>)))))
  :pattern ((Set_in r ($FVF.domain_next (as sm@74@01  $FVF<next>))))
  :qid |qp.fvfDomDef39|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and (Set_in (inv@72@01 r) g@61@01) (img@73@01 r))
      (and (img@68@01 r) (Set_in (inv@67@01 r) g@61@01)))
    (=
      ($FVF.lookup_next (as sm@74@01  $FVF<next>) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@64@01))) r)))
  :pattern (($FVF.lookup_next (as sm@74@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@64@01))) r))
  :qid |qp.fvfValDef37|)))
(assert (forall ((r $Ref)) (!
  ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@64@01))) r) r)
  :pattern (($FVF.lookup_next (as sm@74@01  $FVF<next>) r))
  :qid |qp.fvfResTrgDef38|)))
(assert (and
  (forall ((r $Ref)) (!
    (=>
      (Set_in (inv@72@01 r) g@61@01)
      ($FVF.loc_next ($FVF.lookup_next (as sm@69@01  $FVF<next>) r) r))
    :pattern ((inv@72@01 r))
    :qid |quant-u-15517|))
  ($$%precondition ($SortWrappers.$FVF<next>To$Snap (as sm@74@01  $FVF<next>)) g@61@01)))
(assert (exists_path<Bool> ($$ ($SortWrappers.$FVF<next>To$Snap (as sm@74@01  $FVF<next>)) g@61@01) u@62@01 v@63@01))
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
(set-option :timeout 0)
(push) ; 2
(declare-const $t@75@01 $Snap)
(assert (= $t@75@01 ($Snap.combine ($Snap.first $t@75@01) ($Snap.second $t@75@01))))
(assert (= ($Snap.first $t@75@01) $Snap.unit))
; [eval] !((null in g))
; [eval] (null in g)
(assert (=
  ($Snap.second $t@75@01)
  ($Snap.combine
    ($Snap.first ($Snap.second $t@75@01))
    ($Snap.second ($Snap.second $t@75@01)))))
(declare-const n$1@76@01 $Ref)
(push) ; 3
; [eval] (n$1 in g)
(assert (Set_in n$1@76@01 g@61@01))
(declare-const sm@77@01 $FVF<next>)
; Definitional axioms for snapshot map values
(pop) ; 3
(declare-fun inv@78@01 ($Ref) $Ref)
(declare-fun img@79@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
; Check receiver injectivity
(push) ; 3
(assert (not (forall ((n$11@76@01 $Ref) (n$12@76@01 $Ref)) (!
  (=>
    (and
      (Set_in n$11@76@01 g@61@01)
      (Set_in n$12@76@01 g@61@01)
      (= n$11@76@01 n$12@76@01))
    (= n$11@76@01 n$12@76@01))
  
  :qid |next-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((n$1@76@01 $Ref)) (!
  (=>
    (Set_in n$1@76@01 g@61@01)
    (and (= (inv@78@01 n$1@76@01) n$1@76@01) (img@79@01 n$1@76@01)))
  :pattern (($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@75@01))) n$1@76@01) n$1@76@01))
  :qid |quant-u-15520|)))
(assert (forall ((r $Ref)) (!
  (=> (and (img@79@01 r) (Set_in (inv@78@01 r) g@61@01)) (= (inv@78@01 r) r))
  :pattern ((inv@78@01 r))
  :qid |next-fctOfInv|)))
; Permissions are non-negative
; Field permissions are at most one
; Permission implies non-null receiver
(assert (forall ((n$1@76@01 $Ref)) (!
  (=> (Set_in n$1@76@01 g@61@01) (not (= n$1@76@01 $Ref.null)))
  :pattern (($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@75@01))) n$1@76@01) n$1@76@01))
  :qid |next-permImpliesNonNull|)))
(declare-const sm@80@01 $FVF<next>)
; Definitional axioms for snapshot map values
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@79@01 r) (Set_in (inv@78@01 r) g@61@01))
    (=
      ($FVF.lookup_next (as sm@80@01  $FVF<next>) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@75@01))) r)))
  :pattern (($FVF.lookup_next (as sm@80@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@75@01))) r))
  :qid |qp.fvfValDef41|)))
(assert (forall ((r $Ref)) (!
  ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@75@01))) r) r)
  :pattern (($FVF.lookup_next (as sm@80@01  $FVF<next>) r))
  :qid |qp.fvfResTrgDef42|)))
(assert (forall ((r $Ref)) (!
  (=>
    (Set_in (inv@78@01 r) g@61@01)
    ($FVF.loc_next ($FVF.lookup_next (as sm@80@01  $FVF<next>) r) r))
  :pattern ((inv@78@01 r))
  :qid |quant-u-15521|)))
(assert (=
  ($Snap.second ($Snap.second $t@75@01))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second $t@75@01)))
    ($Snap.second ($Snap.second ($Snap.second $t@75@01))))))
(assert (= ($Snap.first ($Snap.second ($Snap.second $t@75@01))) $Snap.unit))
; [eval] (forall n$2: Ref :: { (n$2.next in g) } { (n$2 in g), n$2.next } (n$2 in g) && n$2.next != null ==> (n$2.next in g))
(declare-const n$2@81@01 $Ref)
(push) ; 3
; [eval] (n$2 in g) && n$2.next != null ==> (n$2.next in g)
; [eval] (n$2 in g) && n$2.next != null
; [eval] (n$2 in g)
(push) ; 4
; [then-branch: 14 | !(n$2@81@01 in g@61@01) | live]
; [else-branch: 14 | n$2@81@01 in g@61@01 | live]
(push) ; 5
; [then-branch: 14 | !(n$2@81@01 in g@61@01)]
(assert (not (Set_in n$2@81@01 g@61@01)))
(pop) ; 5
(push) ; 5
; [else-branch: 14 | n$2@81@01 in g@61@01]
(assert (Set_in n$2@81@01 g@61@01))
; [eval] n$2.next != null
(assert (and
  (forall ((r $Ref)) (!
    (=>
      (and (img@79@01 r) (Set_in (inv@78@01 r) g@61@01))
      (=
        ($FVF.lookup_next (as sm@80@01  $FVF<next>) r)
        ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@75@01))) r)))
    :pattern (($FVF.lookup_next (as sm@80@01  $FVF<next>) r))
    :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@75@01))) r))
    :qid |qp.fvfValDef41|))
  (forall ((r $Ref)) (!
    ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@75@01))) r) r)
    :pattern (($FVF.lookup_next (as sm@80@01  $FVF<next>) r))
    :qid |qp.fvfResTrgDef42|))))
(assert ($FVF.loc_next ($FVF.lookup_next (as sm@80@01  $FVF<next>) n$2@81@01) n$2@81@01))
(push) ; 6
(assert (not (and (img@79@01 n$2@81@01) (Set_in (inv@78@01 n$2@81@01) g@61@01))))
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
    (and (img@79@01 r) (Set_in (inv@78@01 r) g@61@01))
    (=
      ($FVF.lookup_next (as sm@80@01  $FVF<next>) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@75@01))) r)))
  :pattern (($FVF.lookup_next (as sm@80@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@75@01))) r))
  :qid |qp.fvfValDef41|)))
(assert (forall ((r $Ref)) (!
  ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@75@01))) r) r)
  :pattern (($FVF.lookup_next (as sm@80@01  $FVF<next>) r))
  :qid |qp.fvfResTrgDef42|)))
(assert (=>
  (Set_in n$2@81@01 g@61@01)
  (and
    (Set_in n$2@81@01 g@61@01)
    ($FVF.loc_next ($FVF.lookup_next (as sm@80@01  $FVF<next>) n$2@81@01) n$2@81@01))))
(assert (or (Set_in n$2@81@01 g@61@01) (not (Set_in n$2@81@01 g@61@01))))
(push) ; 4
; [then-branch: 15 | n$2@81@01 in g@61@01 && Lookup(next, sm@80@01, n$2@81@01) != Null | live]
; [else-branch: 15 | !(n$2@81@01 in g@61@01 && Lookup(next, sm@80@01, n$2@81@01) != Null) | live]
(push) ; 5
; [then-branch: 15 | n$2@81@01 in g@61@01 && Lookup(next, sm@80@01, n$2@81@01) != Null]
(assert (and
  (Set_in n$2@81@01 g@61@01)
  (not (= ($FVF.lookup_next (as sm@80@01  $FVF<next>) n$2@81@01) $Ref.null))))
; [eval] (n$2.next in g)
(assert (and
  (forall ((r $Ref)) (!
    (=>
      (and (img@79@01 r) (Set_in (inv@78@01 r) g@61@01))
      (=
        ($FVF.lookup_next (as sm@80@01  $FVF<next>) r)
        ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@75@01))) r)))
    :pattern (($FVF.lookup_next (as sm@80@01  $FVF<next>) r))
    :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@75@01))) r))
    :qid |qp.fvfValDef41|))
  (forall ((r $Ref)) (!
    ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@75@01))) r) r)
    :pattern (($FVF.lookup_next (as sm@80@01  $FVF<next>) r))
    :qid |qp.fvfResTrgDef42|))))
(assert ($FVF.loc_next ($FVF.lookup_next (as sm@80@01  $FVF<next>) n$2@81@01) n$2@81@01))
(push) ; 6
(assert (not (and (img@79@01 n$2@81@01) (Set_in (inv@78@01 n$2@81@01) g@61@01))))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(pop) ; 5
(push) ; 5
; [else-branch: 15 | !(n$2@81@01 in g@61@01 && Lookup(next, sm@80@01, n$2@81@01) != Null)]
(assert (not
  (and
    (Set_in n$2@81@01 g@61@01)
    (not (= ($FVF.lookup_next (as sm@80@01  $FVF<next>) n$2@81@01) $Ref.null)))))
(pop) ; 5
(pop) ; 4
; Joined path conditions
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@79@01 r) (Set_in (inv@78@01 r) g@61@01))
    (=
      ($FVF.lookup_next (as sm@80@01  $FVF<next>) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@75@01))) r)))
  :pattern (($FVF.lookup_next (as sm@80@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@75@01))) r))
  :qid |qp.fvfValDef41|)))
(assert (forall ((r $Ref)) (!
  ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@75@01))) r) r)
  :pattern (($FVF.lookup_next (as sm@80@01  $FVF<next>) r))
  :qid |qp.fvfResTrgDef42|)))
(assert (=>
  (and
    (Set_in n$2@81@01 g@61@01)
    (not (= ($FVF.lookup_next (as sm@80@01  $FVF<next>) n$2@81@01) $Ref.null)))
  (and
    (Set_in n$2@81@01 g@61@01)
    (not (= ($FVF.lookup_next (as sm@80@01  $FVF<next>) n$2@81@01) $Ref.null))
    ($FVF.loc_next ($FVF.lookup_next (as sm@80@01  $FVF<next>) n$2@81@01) n$2@81@01))))
; Joined path conditions
(assert (or
  (not
    (and
      (Set_in n$2@81@01 g@61@01)
      (not (= ($FVF.lookup_next (as sm@80@01  $FVF<next>) n$2@81@01) $Ref.null))))
  (and
    (Set_in n$2@81@01 g@61@01)
    (not (= ($FVF.lookup_next (as sm@80@01  $FVF<next>) n$2@81@01) $Ref.null)))))
; Definitional axioms for snapshot map values
(pop) ; 3
; Nested auxiliary terms: globals (aux)
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@79@01 r) (Set_in (inv@78@01 r) g@61@01))
    (=
      ($FVF.lookup_next (as sm@80@01  $FVF<next>) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@75@01))) r)))
  :pattern (($FVF.lookup_next (as sm@80@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@75@01))) r))
  :qid |qp.fvfValDef41|)))
(assert (forall ((r $Ref)) (!
  ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@75@01))) r) r)
  :pattern (($FVF.lookup_next (as sm@80@01  $FVF<next>) r))
  :qid |qp.fvfResTrgDef42|)))
; Nested auxiliary terms: non-globals (aux)
(assert (forall ((n$2@81@01 $Ref)) (!
  (and
    (=>
      (Set_in n$2@81@01 g@61@01)
      (and
        (Set_in n$2@81@01 g@61@01)
        ($FVF.loc_next ($FVF.lookup_next (as sm@80@01  $FVF<next>) n$2@81@01) n$2@81@01)))
    (or (Set_in n$2@81@01 g@61@01) (not (Set_in n$2@81@01 g@61@01)))
    (=>
      (and
        (Set_in n$2@81@01 g@61@01)
        (not
          (= ($FVF.lookup_next (as sm@80@01  $FVF<next>) n$2@81@01) $Ref.null)))
      (and
        (Set_in n$2@81@01 g@61@01)
        (not
          (= ($FVF.lookup_next (as sm@80@01  $FVF<next>) n$2@81@01) $Ref.null))
        ($FVF.loc_next ($FVF.lookup_next (as sm@80@01  $FVF<next>) n$2@81@01) n$2@81@01)))
    (or
      (not
        (and
          (Set_in n$2@81@01 g@61@01)
          (not
            (= ($FVF.lookup_next (as sm@80@01  $FVF<next>) n$2@81@01) $Ref.null))))
      (and
        (Set_in n$2@81@01 g@61@01)
        (not
          (= ($FVF.lookup_next (as sm@80@01  $FVF<next>) n$2@81@01) $Ref.null)))))
  :pattern ((Set_in ($FVF.lookup_next (as sm@80@01  $FVF<next>) n$2@81@01) g@61@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/graphs/static/outlines/list_append.vpr@305@13@305@21-aux|)))
(assert (forall ((n$2@81@01 $Ref)) (!
  (and
    (=>
      (Set_in n$2@81@01 g@61@01)
      (and
        (Set_in n$2@81@01 g@61@01)
        ($FVF.loc_next ($FVF.lookup_next (as sm@80@01  $FVF<next>) n$2@81@01) n$2@81@01)))
    (or (Set_in n$2@81@01 g@61@01) (not (Set_in n$2@81@01 g@61@01)))
    (=>
      (and
        (Set_in n$2@81@01 g@61@01)
        (not
          (= ($FVF.lookup_next (as sm@80@01  $FVF<next>) n$2@81@01) $Ref.null)))
      (and
        (Set_in n$2@81@01 g@61@01)
        (not
          (= ($FVF.lookup_next (as sm@80@01  $FVF<next>) n$2@81@01) $Ref.null))
        ($FVF.loc_next ($FVF.lookup_next (as sm@80@01  $FVF<next>) n$2@81@01) n$2@81@01)))
    (or
      (not
        (and
          (Set_in n$2@81@01 g@61@01)
          (not
            (= ($FVF.lookup_next (as sm@80@01  $FVF<next>) n$2@81@01) $Ref.null))))
      (and
        (Set_in n$2@81@01 g@61@01)
        (not
          (= ($FVF.lookup_next (as sm@80@01  $FVF<next>) n$2@81@01) $Ref.null)))))
  :pattern ((Set_in n$2@81@01 g@61@01) ($FVF.loc_next ($FVF.lookup_next (as sm@80@01  $FVF<next>) n$2@81@01) n$2@81@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/graphs/static/outlines/list_append.vpr@305@13@305@21-aux|)))
(assert (forall ((n$2@81@01 $Ref)) (!
  (=>
    (and
      (Set_in n$2@81@01 g@61@01)
      (not (= ($FVF.lookup_next (as sm@80@01  $FVF<next>) n$2@81@01) $Ref.null)))
    (Set_in ($FVF.lookup_next (as sm@80@01  $FVF<next>) n$2@81@01) g@61@01))
  :pattern ((Set_in ($FVF.lookup_next (as sm@80@01  $FVF<next>) n$2@81@01) g@61@01))
  :pattern ((Set_in n$2@81@01 g@61@01) ($FVF.loc_next ($FVF.lookup_next (as sm@80@01  $FVF<next>) n$2@81@01) n$2@81@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/graphs/static/outlines/list_append.vpr@305@13@305@21|)))
(assert (= ($Snap.second ($Snap.second ($Snap.second $t@75@01))) $Snap.unit))
; [eval] exists_path_2($$(g), u, v)
; [eval] $$(g)
(push) ; 3
(declare-const n@82@01 $Ref)
(push) ; 4
; [eval] (n in refs)
(assert (Set_in n@82@01 g@61@01))
(pop) ; 4
(declare-fun inv@83@01 ($Ref) $Ref)
(declare-fun img@84@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
; Definitional axioms for snapshot map domain
; Definitional axioms for snapshot map values
; Check receiver injectivity
(push) ; 4
(assert (not (forall ((n1@82@01 $Ref) (n2@82@01 $Ref)) (!
  (=>
    (and
      (and
        (Set_in n1@82@01 g@61@01)
        ($FVF.loc_next ($FVF.lookup_next (as sm@80@01  $FVF<next>) n1@82@01) n1@82@01))
      (and
        (Set_in n2@82@01 g@61@01)
        ($FVF.loc_next ($FVF.lookup_next (as sm@80@01  $FVF<next>) n2@82@01) n2@82@01))
      (= n1@82@01 n2@82@01))
    (= n1@82@01 n2@82@01))
  
  :qid |next-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((n@82@01 $Ref)) (!
  (=>
    (Set_in n@82@01 g@61@01)
    (and (= (inv@83@01 n@82@01) n@82@01) (img@84@01 n@82@01)))
  :pattern ((Set_in n@82@01 g@61@01))
  :pattern ((inv@83@01 n@82@01))
  :pattern ((img@84@01 n@82@01))
  :qid |next-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=> (and (img@84@01 r) (Set_in (inv@83@01 r) g@61@01)) (= (inv@83@01 r) r))
  :pattern ((inv@83@01 r))
  :qid |next-fctOfInv|)))
(assert (forall ((r $Ref)) (!
  (=>
    (Set_in (inv@83@01 r) g@61@01)
    ($FVF.loc_next ($FVF.lookup_next (as sm@80@01  $FVF<next>) r) r))
  :pattern ((inv@83@01 r))
  :qid |quant-u-15523|)))
(push) ; 4
(assert (not (forall ((r $Ref)) (!
  (=>
    (and (Set_in (inv@83@01 r) g@61@01) (img@84@01 r) (= r (inv@83@01 r)))
    (>
      (ite
        (and (img@79@01 r) (Set_in (inv@78@01 r) g@61@01))
        $Perm.Write
        $Perm.No)
      $Perm.No))
  
  :qid |quant-u-15524|))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(declare-const sm@85@01 $FVF<next>)
; Definitional axioms for snapshot map domain
(assert (forall ((r $Ref)) (!
  (and
    (=>
      (Set_in r ($FVF.domain_next (as sm@85@01  $FVF<next>)))
      (and (Set_in (inv@83@01 r) g@61@01) (img@84@01 r)))
    (=>
      (and (Set_in (inv@83@01 r) g@61@01) (img@84@01 r))
      (Set_in r ($FVF.domain_next (as sm@85@01  $FVF<next>)))))
  :pattern ((Set_in r ($FVF.domain_next (as sm@85@01  $FVF<next>))))
  :qid |qp.fvfDomDef45|)))
; Definitional axioms for snapshot map values
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and (Set_in (inv@83@01 r) g@61@01) (img@84@01 r))
      (and (img@79@01 r) (Set_in (inv@78@01 r) g@61@01)))
    (=
      ($FVF.lookup_next (as sm@85@01  $FVF<next>) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@75@01))) r)))
  :pattern (($FVF.lookup_next (as sm@85@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@75@01))) r))
  :qid |qp.fvfValDef43|)))
(assert (forall ((r $Ref)) (!
  ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@75@01))) r) r)
  :pattern (($FVF.lookup_next (as sm@85@01  $FVF<next>) r))
  :qid |qp.fvfResTrgDef44|)))
(assert ($$%precondition ($SortWrappers.$FVF<next>To$Snap (as sm@85@01  $FVF<next>)) g@61@01))
(pop) ; 3
; Joined path conditions
(assert (forall ((n@82@01 $Ref)) (!
  (=>
    (Set_in n@82@01 g@61@01)
    (and (= (inv@83@01 n@82@01) n@82@01) (img@84@01 n@82@01)))
  :pattern ((Set_in n@82@01 g@61@01))
  :pattern ((inv@83@01 n@82@01))
  :pattern ((img@84@01 n@82@01))
  :qid |next-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=> (and (img@84@01 r) (Set_in (inv@83@01 r) g@61@01)) (= (inv@83@01 r) r))
  :pattern ((inv@83@01 r))
  :qid |next-fctOfInv|)))
(assert (forall ((r $Ref)) (!
  (and
    (=>
      (Set_in r ($FVF.domain_next (as sm@85@01  $FVF<next>)))
      (and (Set_in (inv@83@01 r) g@61@01) (img@84@01 r)))
    (=>
      (and (Set_in (inv@83@01 r) g@61@01) (img@84@01 r))
      (Set_in r ($FVF.domain_next (as sm@85@01  $FVF<next>)))))
  :pattern ((Set_in r ($FVF.domain_next (as sm@85@01  $FVF<next>))))
  :qid |qp.fvfDomDef45|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and (Set_in (inv@83@01 r) g@61@01) (img@84@01 r))
      (and (img@79@01 r) (Set_in (inv@78@01 r) g@61@01)))
    (=
      ($FVF.lookup_next (as sm@85@01  $FVF<next>) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@75@01))) r)))
  :pattern (($FVF.lookup_next (as sm@85@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@75@01))) r))
  :qid |qp.fvfValDef43|)))
(assert (forall ((r $Ref)) (!
  ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@75@01))) r) r)
  :pattern (($FVF.lookup_next (as sm@85@01  $FVF<next>) r))
  :qid |qp.fvfResTrgDef44|)))
(assert (and
  (forall ((r $Ref)) (!
    (=>
      (Set_in (inv@83@01 r) g@61@01)
      ($FVF.loc_next ($FVF.lookup_next (as sm@80@01  $FVF<next>) r) r))
    :pattern ((inv@83@01 r))
    :qid |quant-u-15523|))
  ($$%precondition ($SortWrappers.$FVF<next>To$Snap (as sm@85@01  $FVF<next>)) g@61@01)))
(assert (exists_path_2<Bool> ($$ ($SortWrappers.$FVF<next>To$Snap (as sm@85@01  $FVF<next>)) g@61@01) u@62@01 v@63@01))
(pop) ; 2
(push) ; 2
; [exec]
; inhale apply_IND($$(g), Set(u), inst_uReach_2($$(g), u))
(declare-const $t@86@01 $Snap)
(assert (= $t@86@01 $Snap.unit))
; [eval] apply_IND($$(g), Set(u), inst_uReach_2($$(g), u))
; [eval] $$(g)
(push) ; 3
(declare-const n@87@01 $Ref)
(push) ; 4
; [eval] (n in refs)
(assert (Set_in n@87@01 g@61@01))
(pop) ; 4
(declare-fun inv@88@01 ($Ref) $Ref)
(declare-fun img@89@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
(declare-const sm@90@01 $FVF<next>)
; Definitional axioms for snapshot map domain
; Definitional axioms for snapshot map values
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@68@01 r) (Set_in (inv@67@01 r) g@61@01))
    (=
      ($FVF.lookup_next (as sm@90@01  $FVF<next>) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@64@01))) r)))
  :pattern (($FVF.lookup_next (as sm@90@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@64@01))) r))
  :qid |qp.fvfValDef46|)))
(assert (forall ((r $Ref)) (!
  ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@64@01))) r) r)
  :pattern (($FVF.lookup_next (as sm@90@01  $FVF<next>) r))
  :qid |qp.fvfResTrgDef47|)))
; Check receiver injectivity
(push) ; 4
(assert (not (forall ((n1@87@01 $Ref) (n2@87@01 $Ref)) (!
  (=>
    (and
      (and
        (Set_in n1@87@01 g@61@01)
        ($FVF.loc_next ($FVF.lookup_next (as sm@90@01  $FVF<next>) n1@87@01) n1@87@01))
      (and
        (Set_in n2@87@01 g@61@01)
        ($FVF.loc_next ($FVF.lookup_next (as sm@90@01  $FVF<next>) n2@87@01) n2@87@01))
      (= n1@87@01 n2@87@01))
    (= n1@87@01 n2@87@01))
  
  :qid |next-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((n@87@01 $Ref)) (!
  (=>
    (Set_in n@87@01 g@61@01)
    (and (= (inv@88@01 n@87@01) n@87@01) (img@89@01 n@87@01)))
  :pattern ((Set_in n@87@01 g@61@01))
  :pattern ((inv@88@01 n@87@01))
  :pattern ((img@89@01 n@87@01))
  :qid |next-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=> (and (img@89@01 r) (Set_in (inv@88@01 r) g@61@01)) (= (inv@88@01 r) r))
  :pattern ((inv@88@01 r))
  :qid |next-fctOfInv|)))
(assert (forall ((r $Ref)) (!
  (=>
    (Set_in (inv@88@01 r) g@61@01)
    ($FVF.loc_next ($FVF.lookup_next (as sm@90@01  $FVF<next>) r) r))
  :pattern ((inv@88@01 r))
  :qid |quant-u-15526|)))
(push) ; 4
(assert (not (forall ((r $Ref)) (!
  (=>
    (and (Set_in (inv@88@01 r) g@61@01) (img@89@01 r) (= r (inv@88@01 r)))
    (>
      (ite
        (and (img@68@01 r) (Set_in (inv@67@01 r) g@61@01))
        $Perm.Write
        $Perm.No)
      $Perm.No))
  
  :qid |quant-u-15527|))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(declare-const sm@91@01 $FVF<next>)
; Definitional axioms for snapshot map domain
(assert (forall ((r $Ref)) (!
  (and
    (=>
      (Set_in r ($FVF.domain_next (as sm@91@01  $FVF<next>)))
      (and (Set_in (inv@88@01 r) g@61@01) (img@89@01 r)))
    (=>
      (and (Set_in (inv@88@01 r) g@61@01) (img@89@01 r))
      (Set_in r ($FVF.domain_next (as sm@91@01  $FVF<next>)))))
  :pattern ((Set_in r ($FVF.domain_next (as sm@91@01  $FVF<next>))))
  :qid |qp.fvfDomDef50|)))
; Definitional axioms for snapshot map values
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and (Set_in (inv@88@01 r) g@61@01) (img@89@01 r))
      (and (img@68@01 r) (Set_in (inv@67@01 r) g@61@01)))
    (=
      ($FVF.lookup_next (as sm@91@01  $FVF<next>) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@64@01))) r)))
  :pattern (($FVF.lookup_next (as sm@91@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@64@01))) r))
  :qid |qp.fvfValDef48|)))
(assert (forall ((r $Ref)) (!
  ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@64@01))) r) r)
  :pattern (($FVF.lookup_next (as sm@91@01  $FVF<next>) r))
  :qid |qp.fvfResTrgDef49|)))
(assert ($$%precondition ($SortWrappers.$FVF<next>To$Snap (as sm@91@01  $FVF<next>)) g@61@01))
(pop) ; 3
; Joined path conditions
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@68@01 r) (Set_in (inv@67@01 r) g@61@01))
    (=
      ($FVF.lookup_next (as sm@90@01  $FVF<next>) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@64@01))) r)))
  :pattern (($FVF.lookup_next (as sm@90@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@64@01))) r))
  :qid |qp.fvfValDef46|)))
(assert (forall ((r $Ref)) (!
  ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@64@01))) r) r)
  :pattern (($FVF.lookup_next (as sm@90@01  $FVF<next>) r))
  :qid |qp.fvfResTrgDef47|)))
(assert (forall ((n@87@01 $Ref)) (!
  (=>
    (Set_in n@87@01 g@61@01)
    (and (= (inv@88@01 n@87@01) n@87@01) (img@89@01 n@87@01)))
  :pattern ((Set_in n@87@01 g@61@01))
  :pattern ((inv@88@01 n@87@01))
  :pattern ((img@89@01 n@87@01))
  :qid |next-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=> (and (img@89@01 r) (Set_in (inv@88@01 r) g@61@01)) (= (inv@88@01 r) r))
  :pattern ((inv@88@01 r))
  :qid |next-fctOfInv|)))
(assert (forall ((r $Ref)) (!
  (and
    (=>
      (Set_in r ($FVF.domain_next (as sm@91@01  $FVF<next>)))
      (and (Set_in (inv@88@01 r) g@61@01) (img@89@01 r)))
    (=>
      (and (Set_in (inv@88@01 r) g@61@01) (img@89@01 r))
      (Set_in r ($FVF.domain_next (as sm@91@01  $FVF<next>)))))
  :pattern ((Set_in r ($FVF.domain_next (as sm@91@01  $FVF<next>))))
  :qid |qp.fvfDomDef50|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and (Set_in (inv@88@01 r) g@61@01) (img@89@01 r))
      (and (img@68@01 r) (Set_in (inv@67@01 r) g@61@01)))
    (=
      ($FVF.lookup_next (as sm@91@01  $FVF<next>) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@64@01))) r)))
  :pattern (($FVF.lookup_next (as sm@91@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@64@01))) r))
  :qid |qp.fvfValDef48|)))
(assert (forall ((r $Ref)) (!
  ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@64@01))) r) r)
  :pattern (($FVF.lookup_next (as sm@91@01  $FVF<next>) r))
  :qid |qp.fvfResTrgDef49|)))
(assert (and
  (forall ((r $Ref)) (!
    (=>
      (Set_in (inv@88@01 r) g@61@01)
      ($FVF.loc_next ($FVF.lookup_next (as sm@90@01  $FVF<next>) r) r))
    :pattern ((inv@88@01 r))
    :qid |quant-u-15526|))
  ($$%precondition ($SortWrappers.$FVF<next>To$Snap (as sm@91@01  $FVF<next>)) g@61@01)))
; [eval] Set(u)
; [eval] inst_uReach_2($$(g), u)
; [eval] $$(g)
(push) ; 3
(declare-const n@92@01 $Ref)
(push) ; 4
; [eval] (n in refs)
(assert (Set_in n@92@01 g@61@01))
(pop) ; 4
(declare-fun inv@93@01 ($Ref) $Ref)
(declare-fun img@94@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
(declare-const sm@95@01 $FVF<next>)
; Definitional axioms for snapshot map domain
; Definitional axioms for snapshot map values
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@68@01 r) (Set_in (inv@67@01 r) g@61@01))
    (=
      ($FVF.lookup_next (as sm@95@01  $FVF<next>) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@64@01))) r)))
  :pattern (($FVF.lookup_next (as sm@95@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@64@01))) r))
  :qid |qp.fvfValDef51|)))
(assert (forall ((r $Ref)) (!
  ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@64@01))) r) r)
  :pattern (($FVF.lookup_next (as sm@95@01  $FVF<next>) r))
  :qid |qp.fvfResTrgDef52|)))
; Check receiver injectivity
(push) ; 4
(assert (not (forall ((n1@92@01 $Ref) (n2@92@01 $Ref)) (!
  (=>
    (and
      (and
        (Set_in n1@92@01 g@61@01)
        ($FVF.loc_next ($FVF.lookup_next (as sm@95@01  $FVF<next>) n1@92@01) n1@92@01))
      (and
        (Set_in n2@92@01 g@61@01)
        ($FVF.loc_next ($FVF.lookup_next (as sm@95@01  $FVF<next>) n2@92@01) n2@92@01))
      (= n1@92@01 n2@92@01))
    (= n1@92@01 n2@92@01))
  
  :qid |next-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((n@92@01 $Ref)) (!
  (=>
    (Set_in n@92@01 g@61@01)
    (and (= (inv@93@01 n@92@01) n@92@01) (img@94@01 n@92@01)))
  :pattern ((Set_in n@92@01 g@61@01))
  :pattern ((inv@93@01 n@92@01))
  :pattern ((img@94@01 n@92@01))
  :qid |next-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=> (and (img@94@01 r) (Set_in (inv@93@01 r) g@61@01)) (= (inv@93@01 r) r))
  :pattern ((inv@93@01 r))
  :qid |next-fctOfInv|)))
(assert (forall ((r $Ref)) (!
  (=>
    (Set_in (inv@93@01 r) g@61@01)
    ($FVF.loc_next ($FVF.lookup_next (as sm@95@01  $FVF<next>) r) r))
  :pattern ((inv@93@01 r))
  :qid |quant-u-15529|)))
(push) ; 4
(assert (not (forall ((r $Ref)) (!
  (=>
    (and (Set_in (inv@93@01 r) g@61@01) (img@94@01 r) (= r (inv@93@01 r)))
    (>
      (ite
        (and (img@68@01 r) (Set_in (inv@67@01 r) g@61@01))
        $Perm.Write
        $Perm.No)
      $Perm.No))
  
  :qid |quant-u-15530|))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(declare-const sm@96@01 $FVF<next>)
; Definitional axioms for snapshot map domain
(assert (forall ((r $Ref)) (!
  (and
    (=>
      (Set_in r ($FVF.domain_next (as sm@96@01  $FVF<next>)))
      (and (Set_in (inv@93@01 r) g@61@01) (img@94@01 r)))
    (=>
      (and (Set_in (inv@93@01 r) g@61@01) (img@94@01 r))
      (Set_in r ($FVF.domain_next (as sm@96@01  $FVF<next>)))))
  :pattern ((Set_in r ($FVF.domain_next (as sm@96@01  $FVF<next>))))
  :qid |qp.fvfDomDef55|)))
; Definitional axioms for snapshot map values
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and (Set_in (inv@93@01 r) g@61@01) (img@94@01 r))
      (and (img@68@01 r) (Set_in (inv@67@01 r) g@61@01)))
    (=
      ($FVF.lookup_next (as sm@96@01  $FVF<next>) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@64@01))) r)))
  :pattern (($FVF.lookup_next (as sm@96@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@64@01))) r))
  :qid |qp.fvfValDef53|)))
(assert (forall ((r $Ref)) (!
  ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@64@01))) r) r)
  :pattern (($FVF.lookup_next (as sm@96@01  $FVF<next>) r))
  :qid |qp.fvfResTrgDef54|)))
(assert ($$%precondition ($SortWrappers.$FVF<next>To$Snap (as sm@96@01  $FVF<next>)) g@61@01))
(pop) ; 3
; Joined path conditions
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@68@01 r) (Set_in (inv@67@01 r) g@61@01))
    (=
      ($FVF.lookup_next (as sm@95@01  $FVF<next>) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@64@01))) r)))
  :pattern (($FVF.lookup_next (as sm@95@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@64@01))) r))
  :qid |qp.fvfValDef51|)))
(assert (forall ((r $Ref)) (!
  ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@64@01))) r) r)
  :pattern (($FVF.lookup_next (as sm@95@01  $FVF<next>) r))
  :qid |qp.fvfResTrgDef52|)))
(assert (forall ((n@92@01 $Ref)) (!
  (=>
    (Set_in n@92@01 g@61@01)
    (and (= (inv@93@01 n@92@01) n@92@01) (img@94@01 n@92@01)))
  :pattern ((Set_in n@92@01 g@61@01))
  :pattern ((inv@93@01 n@92@01))
  :pattern ((img@94@01 n@92@01))
  :qid |next-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=> (and (img@94@01 r) (Set_in (inv@93@01 r) g@61@01)) (= (inv@93@01 r) r))
  :pattern ((inv@93@01 r))
  :qid |next-fctOfInv|)))
(assert (forall ((r $Ref)) (!
  (and
    (=>
      (Set_in r ($FVF.domain_next (as sm@96@01  $FVF<next>)))
      (and (Set_in (inv@93@01 r) g@61@01) (img@94@01 r)))
    (=>
      (and (Set_in (inv@93@01 r) g@61@01) (img@94@01 r))
      (Set_in r ($FVF.domain_next (as sm@96@01  $FVF<next>)))))
  :pattern ((Set_in r ($FVF.domain_next (as sm@96@01  $FVF<next>))))
  :qid |qp.fvfDomDef55|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and (Set_in (inv@93@01 r) g@61@01) (img@94@01 r))
      (and (img@68@01 r) (Set_in (inv@67@01 r) g@61@01)))
    (=
      ($FVF.lookup_next (as sm@96@01  $FVF<next>) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@64@01))) r)))
  :pattern (($FVF.lookup_next (as sm@96@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@64@01))) r))
  :qid |qp.fvfValDef53|)))
(assert (forall ((r $Ref)) (!
  ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@64@01))) r) r)
  :pattern (($FVF.lookup_next (as sm@96@01  $FVF<next>) r))
  :qid |qp.fvfResTrgDef54|)))
(assert (and
  (forall ((r $Ref)) (!
    (=>
      (Set_in (inv@93@01 r) g@61@01)
      ($FVF.loc_next ($FVF.lookup_next (as sm@95@01  $FVF<next>) r) r))
    :pattern ((inv@93@01 r))
    :qid |quant-u-15529|))
  ($$%precondition ($SortWrappers.$FVF<next>To$Snap (as sm@96@01  $FVF<next>)) g@61@01)))
(assert (apply_IND<Bool> ($$ ($SortWrappers.$FVF<next>To$Snap (as sm@91@01  $FVF<next>)) g@61@01) (Set_singleton u@62@01) (inst_uReach_2<Set<Ref>> ($$ ($SortWrappers.$FVF<next>To$Snap (as sm@96@01  $FVF<next>)) g@61@01) u@62@01)))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [eval] !((null in g))
; [eval] (null in g)
(declare-const n$1@97@01 $Ref)
(set-option :timeout 0)
(push) ; 3
; [eval] (n$1 in g)
(assert (Set_in n$1@97@01 g@61@01))
(declare-const sm@98@01 $FVF<next>)
; Definitional axioms for snapshot map values
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@68@01 r) (Set_in (inv@67@01 r) g@61@01))
    (=
      ($FVF.lookup_next (as sm@98@01  $FVF<next>) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@64@01))) r)))
  :pattern (($FVF.lookup_next (as sm@98@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@64@01))) r))
  :qid |qp.fvfValDef56|)))
(assert (forall ((r $Ref)) (!
  ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@64@01))) r) r)
  :pattern (($FVF.lookup_next (as sm@98@01  $FVF<next>) r))
  :qid |qp.fvfResTrgDef57|)))
(pop) ; 3
(declare-fun inv@99@01 ($Ref) $Ref)
(declare-fun img@100@01 ($Ref) Bool)
; Nested auxiliary terms: globals
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@68@01 r) (Set_in (inv@67@01 r) g@61@01))
    (=
      ($FVF.lookup_next (as sm@98@01  $FVF<next>) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@64@01))) r)))
  :pattern (($FVF.lookup_next (as sm@98@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@64@01))) r))
  :qid |qp.fvfValDef56|)))
(assert (forall ((r $Ref)) (!
  ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@64@01))) r) r)
  :pattern (($FVF.lookup_next (as sm@98@01  $FVF<next>) r))
  :qid |qp.fvfResTrgDef57|)))
; Nested auxiliary terms: non-globals
(declare-const sm@101@01 $FVF<next>)
; Definitional axioms for snapshot map values
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@68@01 r) (Set_in (inv@67@01 r) g@61@01))
    (=
      ($FVF.lookup_next (as sm@101@01  $FVF<next>) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@64@01))) r)))
  :pattern (($FVF.lookup_next (as sm@101@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@64@01))) r))
  :qid |qp.fvfValDef58|)))
(assert (forall ((r $Ref)) (!
  ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@64@01))) r) r)
  :pattern (($FVF.lookup_next (as sm@101@01  $FVF<next>) r))
  :qid |qp.fvfResTrgDef59|)))
; Check receiver injectivity
(push) ; 3
(assert (not (forall ((n$11@97@01 $Ref) (n$12@97@01 $Ref)) (!
  (=>
    (and
      (and
        (Set_in n$11@97@01 g@61@01)
        ($FVF.loc_next ($FVF.lookup_next (as sm@101@01  $FVF<next>) n$11@97@01) n$11@97@01))
      (and
        (Set_in n$12@97@01 g@61@01)
        ($FVF.loc_next ($FVF.lookup_next (as sm@101@01  $FVF<next>) n$12@97@01) n$12@97@01))
      (= n$11@97@01 n$12@97@01))
    (= n$11@97@01 n$12@97@01))
  
  :qid |next-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((n$1@97@01 $Ref)) (!
  (=>
    (Set_in n$1@97@01 g@61@01)
    (and (= (inv@99@01 n$1@97@01) n$1@97@01) (img@100@01 n$1@97@01)))
  :pattern (($FVF.loc_next ($FVF.lookup_next (as sm@98@01  $FVF<next>) n$1@97@01) n$1@97@01))
  :qid |next-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=> (and (img@100@01 r) (Set_in (inv@99@01 r) g@61@01)) (= (inv@99@01 r) r))
  :pattern ((inv@99@01 r))
  :qid |next-fctOfInv|)))
(assert (forall ((r $Ref)) (!
  (=>
    (Set_in (inv@99@01 r) g@61@01)
    ($FVF.loc_next ($FVF.lookup_next (as sm@101@01  $FVF<next>) r) r))
  :pattern ((inv@99@01 r))
  :qid |quant-u-15532|)))
; Precomputing data for removing quantified permissions
(define-fun pTaken@102@01 ((r $Ref)) $Perm
  (ite
    (and (Set_in (inv@99@01 r) g@61@01) (img@100@01 r) (= r (inv@99@01 r)))
    ($Perm.min
      (ite
        (and (img@68@01 r) (Set_in (inv@67@01 r) g@61@01))
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
        (and (img@68@01 r) (Set_in (inv@67@01 r) g@61@01))
        $Perm.Write
        $Perm.No)
      (pTaken@102@01 r))
    $Perm.No)
  
  :qid |quant-u-15534|))))
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
    (and (Set_in (inv@99@01 r) g@61@01) (img@100@01 r) (= r (inv@99@01 r)))
    (= (- $Perm.Write (pTaken@102@01 r)) $Perm.No))
  
  :qid |quant-u-15535|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Final check if taken enough permissions
; Done removing quantified permissions
; [eval] (forall n$2: Ref :: { (n$2.next in g) } { (n$2 in g), n$2.next } (n$2 in g) && n$2.next != null ==> (n$2.next in g))
(declare-const n$2@103@01 $Ref)
(set-option :timeout 0)
(push) ; 3
; [eval] (n$2 in g) && n$2.next != null ==> (n$2.next in g)
; [eval] (n$2 in g) && n$2.next != null
; [eval] (n$2 in g)
(push) ; 4
; [then-branch: 16 | !(n$2@103@01 in g@61@01) | live]
; [else-branch: 16 | n$2@103@01 in g@61@01 | live]
(push) ; 5
; [then-branch: 16 | !(n$2@103@01 in g@61@01)]
(assert (not (Set_in n$2@103@01 g@61@01)))
(pop) ; 5
(push) ; 5
; [else-branch: 16 | n$2@103@01 in g@61@01]
(assert (Set_in n$2@103@01 g@61@01))
; [eval] n$2.next != null
(assert (and
  (forall ((r $Ref)) (!
    (=>
      (and (img@68@01 r) (Set_in (inv@67@01 r) g@61@01))
      (=
        ($FVF.lookup_next (as sm@101@01  $FVF<next>) r)
        ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@64@01))) r)))
    :pattern (($FVF.lookup_next (as sm@101@01  $FVF<next>) r))
    :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@64@01))) r))
    :qid |qp.fvfValDef58|))
  (forall ((r $Ref)) (!
    ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@64@01))) r) r)
    :pattern (($FVF.lookup_next (as sm@101@01  $FVF<next>) r))
    :qid |qp.fvfResTrgDef59|))))
(assert ($FVF.loc_next ($FVF.lookup_next (as sm@101@01  $FVF<next>) n$2@103@01) n$2@103@01))
(push) ; 6
(assert (not (and (img@68@01 n$2@103@01) (Set_in (inv@67@01 n$2@103@01) g@61@01))))
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
    (and (img@68@01 r) (Set_in (inv@67@01 r) g@61@01))
    (=
      ($FVF.lookup_next (as sm@101@01  $FVF<next>) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@64@01))) r)))
  :pattern (($FVF.lookup_next (as sm@101@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@64@01))) r))
  :qid |qp.fvfValDef58|)))
(assert (forall ((r $Ref)) (!
  ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@64@01))) r) r)
  :pattern (($FVF.lookup_next (as sm@101@01  $FVF<next>) r))
  :qid |qp.fvfResTrgDef59|)))
(assert (=>
  (Set_in n$2@103@01 g@61@01)
  (and
    (Set_in n$2@103@01 g@61@01)
    ($FVF.loc_next ($FVF.lookup_next (as sm@101@01  $FVF<next>) n$2@103@01) n$2@103@01))))
(assert (or (Set_in n$2@103@01 g@61@01) (not (Set_in n$2@103@01 g@61@01))))
(push) ; 4
; [then-branch: 17 | n$2@103@01 in g@61@01 && Lookup(next, sm@101@01, n$2@103@01) != Null | live]
; [else-branch: 17 | !(n$2@103@01 in g@61@01 && Lookup(next, sm@101@01, n$2@103@01) != Null) | live]
(push) ; 5
; [then-branch: 17 | n$2@103@01 in g@61@01 && Lookup(next, sm@101@01, n$2@103@01) != Null]
(assert (and
  (Set_in n$2@103@01 g@61@01)
  (not (= ($FVF.lookup_next (as sm@101@01  $FVF<next>) n$2@103@01) $Ref.null))))
; [eval] (n$2.next in g)
(assert (and
  (forall ((r $Ref)) (!
    (=>
      (and (img@68@01 r) (Set_in (inv@67@01 r) g@61@01))
      (=
        ($FVF.lookup_next (as sm@101@01  $FVF<next>) r)
        ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@64@01))) r)))
    :pattern (($FVF.lookup_next (as sm@101@01  $FVF<next>) r))
    :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@64@01))) r))
    :qid |qp.fvfValDef58|))
  (forall ((r $Ref)) (!
    ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@64@01))) r) r)
    :pattern (($FVF.lookup_next (as sm@101@01  $FVF<next>) r))
    :qid |qp.fvfResTrgDef59|))))
(assert ($FVF.loc_next ($FVF.lookup_next (as sm@101@01  $FVF<next>) n$2@103@01) n$2@103@01))
(push) ; 6
(assert (not (and (img@68@01 n$2@103@01) (Set_in (inv@67@01 n$2@103@01) g@61@01))))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(pop) ; 5
(push) ; 5
; [else-branch: 17 | !(n$2@103@01 in g@61@01 && Lookup(next, sm@101@01, n$2@103@01) != Null)]
(assert (not
  (and
    (Set_in n$2@103@01 g@61@01)
    (not (= ($FVF.lookup_next (as sm@101@01  $FVF<next>) n$2@103@01) $Ref.null)))))
(pop) ; 5
(pop) ; 4
; Joined path conditions
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@68@01 r) (Set_in (inv@67@01 r) g@61@01))
    (=
      ($FVF.lookup_next (as sm@101@01  $FVF<next>) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@64@01))) r)))
  :pattern (($FVF.lookup_next (as sm@101@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@64@01))) r))
  :qid |qp.fvfValDef58|)))
(assert (forall ((r $Ref)) (!
  ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@64@01))) r) r)
  :pattern (($FVF.lookup_next (as sm@101@01  $FVF<next>) r))
  :qid |qp.fvfResTrgDef59|)))
(assert (=>
  (and
    (Set_in n$2@103@01 g@61@01)
    (not (= ($FVF.lookup_next (as sm@101@01  $FVF<next>) n$2@103@01) $Ref.null)))
  (and
    (Set_in n$2@103@01 g@61@01)
    (not (= ($FVF.lookup_next (as sm@101@01  $FVF<next>) n$2@103@01) $Ref.null))
    ($FVF.loc_next ($FVF.lookup_next (as sm@101@01  $FVF<next>) n$2@103@01) n$2@103@01))))
; Joined path conditions
(assert (or
  (not
    (and
      (Set_in n$2@103@01 g@61@01)
      (not
        (= ($FVF.lookup_next (as sm@101@01  $FVF<next>) n$2@103@01) $Ref.null))))
  (and
    (Set_in n$2@103@01 g@61@01)
    (not (= ($FVF.lookup_next (as sm@101@01  $FVF<next>) n$2@103@01) $Ref.null)))))
; Definitional axioms for snapshot map values
(pop) ; 3
; Nested auxiliary terms: globals (aux)
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@68@01 r) (Set_in (inv@67@01 r) g@61@01))
    (=
      ($FVF.lookup_next (as sm@101@01  $FVF<next>) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@64@01))) r)))
  :pattern (($FVF.lookup_next (as sm@101@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@64@01))) r))
  :qid |qp.fvfValDef58|)))
(assert (forall ((r $Ref)) (!
  ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@64@01))) r) r)
  :pattern (($FVF.lookup_next (as sm@101@01  $FVF<next>) r))
  :qid |qp.fvfResTrgDef59|)))
; Nested auxiliary terms: non-globals (aux)
(assert (forall ((n$2@103@01 $Ref)) (!
  (and
    (=>
      (Set_in n$2@103@01 g@61@01)
      (and
        (Set_in n$2@103@01 g@61@01)
        ($FVF.loc_next ($FVF.lookup_next (as sm@101@01  $FVF<next>) n$2@103@01) n$2@103@01)))
    (or (Set_in n$2@103@01 g@61@01) (not (Set_in n$2@103@01 g@61@01)))
    (=>
      (and
        (Set_in n$2@103@01 g@61@01)
        (not
          (= ($FVF.lookup_next (as sm@101@01  $FVF<next>) n$2@103@01) $Ref.null)))
      (and
        (Set_in n$2@103@01 g@61@01)
        (not
          (= ($FVF.lookup_next (as sm@101@01  $FVF<next>) n$2@103@01) $Ref.null))
        ($FVF.loc_next ($FVF.lookup_next (as sm@101@01  $FVF<next>) n$2@103@01) n$2@103@01)))
    (or
      (not
        (and
          (Set_in n$2@103@01 g@61@01)
          (not
            (=
              ($FVF.lookup_next (as sm@101@01  $FVF<next>) n$2@103@01)
              $Ref.null))))
      (and
        (Set_in n$2@103@01 g@61@01)
        (not
          (= ($FVF.lookup_next (as sm@101@01  $FVF<next>) n$2@103@01) $Ref.null)))))
  :pattern ((Set_in ($FVF.lookup_next (as sm@101@01  $FVF<next>) n$2@103@01) g@61@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/graphs/static/outlines/list_append.vpr@305@13@305@21-aux|)))
(assert (forall ((n$2@103@01 $Ref)) (!
  (and
    (=>
      (Set_in n$2@103@01 g@61@01)
      (and
        (Set_in n$2@103@01 g@61@01)
        ($FVF.loc_next ($FVF.lookup_next (as sm@101@01  $FVF<next>) n$2@103@01) n$2@103@01)))
    (or (Set_in n$2@103@01 g@61@01) (not (Set_in n$2@103@01 g@61@01)))
    (=>
      (and
        (Set_in n$2@103@01 g@61@01)
        (not
          (= ($FVF.lookup_next (as sm@101@01  $FVF<next>) n$2@103@01) $Ref.null)))
      (and
        (Set_in n$2@103@01 g@61@01)
        (not
          (= ($FVF.lookup_next (as sm@101@01  $FVF<next>) n$2@103@01) $Ref.null))
        ($FVF.loc_next ($FVF.lookup_next (as sm@101@01  $FVF<next>) n$2@103@01) n$2@103@01)))
    (or
      (not
        (and
          (Set_in n$2@103@01 g@61@01)
          (not
            (=
              ($FVF.lookup_next (as sm@101@01  $FVF<next>) n$2@103@01)
              $Ref.null))))
      (and
        (Set_in n$2@103@01 g@61@01)
        (not
          (= ($FVF.lookup_next (as sm@101@01  $FVF<next>) n$2@103@01) $Ref.null)))))
  :pattern ((Set_in n$2@103@01 g@61@01) ($FVF.loc_next ($FVF.lookup_next (as sm@101@01  $FVF<next>) n$2@103@01) n$2@103@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/graphs/static/outlines/list_append.vpr@305@13@305@21-aux|)))
(push) ; 3
(assert (not (forall ((n$2@103@01 $Ref)) (!
  (=>
    (and
      (Set_in n$2@103@01 g@61@01)
      (not
        (= ($FVF.lookup_next (as sm@101@01  $FVF<next>) n$2@103@01) $Ref.null)))
    (Set_in ($FVF.lookup_next (as sm@101@01  $FVF<next>) n$2@103@01) g@61@01))
  :pattern ((Set_in ($FVF.lookup_next (as sm@101@01  $FVF<next>) n$2@103@01) g@61@01))
  :pattern ((Set_in n$2@103@01 g@61@01) ($FVF.loc_next ($FVF.lookup_next (as sm@101@01  $FVF<next>) n$2@103@01) n$2@103@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/graphs/static/outlines/list_append.vpr@305@13@305@21|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(assert (forall ((n$2@103@01 $Ref)) (!
  (=>
    (and
      (Set_in n$2@103@01 g@61@01)
      (not
        (= ($FVF.lookup_next (as sm@101@01  $FVF<next>) n$2@103@01) $Ref.null)))
    (Set_in ($FVF.lookup_next (as sm@101@01  $FVF<next>) n$2@103@01) g@61@01))
  :pattern ((Set_in ($FVF.lookup_next (as sm@101@01  $FVF<next>) n$2@103@01) g@61@01))
  :pattern ((Set_in n$2@103@01 g@61@01) ($FVF.loc_next ($FVF.lookup_next (as sm@101@01  $FVF<next>) n$2@103@01) n$2@103@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/graphs/static/outlines/list_append.vpr@305@13@305@21|)))
; [eval] exists_path_2($$(g), u, v)
; [eval] $$(g)
(push) ; 3
(declare-const n@104@01 $Ref)
(push) ; 4
; [eval] (n in refs)
(assert (Set_in n@104@01 g@61@01))
(pop) ; 4
(declare-fun inv@105@01 ($Ref) $Ref)
(declare-fun img@106@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
; Definitional axioms for snapshot map domain
; Definitional axioms for snapshot map values
; Check receiver injectivity
(push) ; 4
(assert (not (forall ((n1@104@01 $Ref) (n2@104@01 $Ref)) (!
  (=>
    (and
      (and
        (Set_in n1@104@01 g@61@01)
        ($FVF.loc_next ($FVF.lookup_next (as sm@101@01  $FVF<next>) n1@104@01) n1@104@01))
      (and
        (Set_in n2@104@01 g@61@01)
        ($FVF.loc_next ($FVF.lookup_next (as sm@101@01  $FVF<next>) n2@104@01) n2@104@01))
      (= n1@104@01 n2@104@01))
    (= n1@104@01 n2@104@01))
  
  :qid |next-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((n@104@01 $Ref)) (!
  (=>
    (Set_in n@104@01 g@61@01)
    (and (= (inv@105@01 n@104@01) n@104@01) (img@106@01 n@104@01)))
  :pattern ((Set_in n@104@01 g@61@01))
  :pattern ((inv@105@01 n@104@01))
  :pattern ((img@106@01 n@104@01))
  :qid |next-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=> (and (img@106@01 r) (Set_in (inv@105@01 r) g@61@01)) (= (inv@105@01 r) r))
  :pattern ((inv@105@01 r))
  :qid |next-fctOfInv|)))
(assert (forall ((r $Ref)) (!
  (=>
    (Set_in (inv@105@01 r) g@61@01)
    ($FVF.loc_next ($FVF.lookup_next (as sm@101@01  $FVF<next>) r) r))
  :pattern ((inv@105@01 r))
  :qid |quant-u-15537|)))
(push) ; 4
(assert (not (forall ((r $Ref)) (!
  (=>
    (and (Set_in (inv@105@01 r) g@61@01) (img@106@01 r) (= r (inv@105@01 r)))
    (>
      (ite
        (and (img@68@01 r) (Set_in (inv@67@01 r) g@61@01))
        $Perm.Write
        $Perm.No)
      $Perm.No))
  
  :qid |quant-u-15538|))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(declare-const sm@107@01 $FVF<next>)
; Definitional axioms for snapshot map domain
(assert (forall ((r $Ref)) (!
  (and
    (=>
      (Set_in r ($FVF.domain_next (as sm@107@01  $FVF<next>)))
      (and (Set_in (inv@105@01 r) g@61@01) (img@106@01 r)))
    (=>
      (and (Set_in (inv@105@01 r) g@61@01) (img@106@01 r))
      (Set_in r ($FVF.domain_next (as sm@107@01  $FVF<next>)))))
  :pattern ((Set_in r ($FVF.domain_next (as sm@107@01  $FVF<next>))))
  :qid |qp.fvfDomDef62|)))
; Definitional axioms for snapshot map values
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and (Set_in (inv@105@01 r) g@61@01) (img@106@01 r))
      (and (img@68@01 r) (Set_in (inv@67@01 r) g@61@01)))
    (=
      ($FVF.lookup_next (as sm@107@01  $FVF<next>) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@64@01))) r)))
  :pattern (($FVF.lookup_next (as sm@107@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@64@01))) r))
  :qid |qp.fvfValDef60|)))
(assert (forall ((r $Ref)) (!
  ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@64@01))) r) r)
  :pattern (($FVF.lookup_next (as sm@107@01  $FVF<next>) r))
  :qid |qp.fvfResTrgDef61|)))
(assert ($$%precondition ($SortWrappers.$FVF<next>To$Snap (as sm@107@01  $FVF<next>)) g@61@01))
(pop) ; 3
; Joined path conditions
(assert (forall ((n@104@01 $Ref)) (!
  (=>
    (Set_in n@104@01 g@61@01)
    (and (= (inv@105@01 n@104@01) n@104@01) (img@106@01 n@104@01)))
  :pattern ((Set_in n@104@01 g@61@01))
  :pattern ((inv@105@01 n@104@01))
  :pattern ((img@106@01 n@104@01))
  :qid |next-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=> (and (img@106@01 r) (Set_in (inv@105@01 r) g@61@01)) (= (inv@105@01 r) r))
  :pattern ((inv@105@01 r))
  :qid |next-fctOfInv|)))
(assert (forall ((r $Ref)) (!
  (and
    (=>
      (Set_in r ($FVF.domain_next (as sm@107@01  $FVF<next>)))
      (and (Set_in (inv@105@01 r) g@61@01) (img@106@01 r)))
    (=>
      (and (Set_in (inv@105@01 r) g@61@01) (img@106@01 r))
      (Set_in r ($FVF.domain_next (as sm@107@01  $FVF<next>)))))
  :pattern ((Set_in r ($FVF.domain_next (as sm@107@01  $FVF<next>))))
  :qid |qp.fvfDomDef62|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and (Set_in (inv@105@01 r) g@61@01) (img@106@01 r))
      (and (img@68@01 r) (Set_in (inv@67@01 r) g@61@01)))
    (=
      ($FVF.lookup_next (as sm@107@01  $FVF<next>) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@64@01))) r)))
  :pattern (($FVF.lookup_next (as sm@107@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@64@01))) r))
  :qid |qp.fvfValDef60|)))
(assert (forall ((r $Ref)) (!
  ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@64@01))) r) r)
  :pattern (($FVF.lookup_next (as sm@107@01  $FVF<next>) r))
  :qid |qp.fvfResTrgDef61|)))
(assert (and
  (forall ((r $Ref)) (!
    (=>
      (Set_in (inv@105@01 r) g@61@01)
      ($FVF.loc_next ($FVF.lookup_next (as sm@101@01  $FVF<next>) r) r))
    :pattern ((inv@105@01 r))
    :qid |quant-u-15537|))
  ($$%precondition ($SortWrappers.$FVF<next>To$Snap (as sm@107@01  $FVF<next>)) g@61@01)))
(push) ; 3
(assert (not (exists_path_2<Bool> ($$ ($SortWrappers.$FVF<next>To$Snap (as sm@107@01  $FVF<next>)) g@61@01) u@62@01 v@63@01)))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(assert (exists_path_2<Bool> ($$ ($SortWrappers.$FVF<next>To$Snap (as sm@107@01  $FVF<next>)) g@61@01) u@62@01 v@63@01))
(pop) ; 2
(pop) ; 1
; ---------- lemma_T2_b ----------
(declare-const g@108@01 Set<$Ref>)
(declare-const u@109@01 $Ref)
(declare-const v@110@01 $Ref)
(declare-const g@111@01 Set<$Ref>)
(declare-const u@112@01 $Ref)
(declare-const v@113@01 $Ref)
(push) ; 1
(declare-const $t@114@01 $Snap)
(assert (= $t@114@01 ($Snap.combine ($Snap.first $t@114@01) ($Snap.second $t@114@01))))
(assert (= ($Snap.first $t@114@01) $Snap.unit))
; [eval] !((null in g))
; [eval] (null in g)
(assert (not (Set_in $Ref.null g@111@01)))
(assert (=
  ($Snap.second $t@114@01)
  ($Snap.combine
    ($Snap.first ($Snap.second $t@114@01))
    ($Snap.second ($Snap.second $t@114@01)))))
(declare-const n@115@01 $Ref)
(push) ; 2
; [eval] (n in g)
(assert (Set_in n@115@01 g@111@01))
(declare-const sm@116@01 $FVF<next>)
; Definitional axioms for snapshot map values
(pop) ; 2
(declare-fun inv@117@01 ($Ref) $Ref)
(declare-fun img@118@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
; Check receiver injectivity
(push) ; 2
(assert (not (forall ((n1@115@01 $Ref) (n2@115@01 $Ref)) (!
  (=>
    (and
      (Set_in n1@115@01 g@111@01)
      (Set_in n2@115@01 g@111@01)
      (= n1@115@01 n2@115@01))
    (= n1@115@01 n2@115@01))
  
  :qid |next-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 2
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((n@115@01 $Ref)) (!
  (=>
    (Set_in n@115@01 g@111@01)
    (and (= (inv@117@01 n@115@01) n@115@01) (img@118@01 n@115@01)))
  :pattern (($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@114@01))) n@115@01) n@115@01))
  :qid |quant-u-15540|)))
(assert (forall ((r $Ref)) (!
  (=> (and (img@118@01 r) (Set_in (inv@117@01 r) g@111@01)) (= (inv@117@01 r) r))
  :pattern ((inv@117@01 r))
  :qid |next-fctOfInv|)))
; Permissions are non-negative
; Field permissions are at most one
; Permission implies non-null receiver
(assert (forall ((n@115@01 $Ref)) (!
  (=> (Set_in n@115@01 g@111@01) (not (= n@115@01 $Ref.null)))
  :pattern (($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@114@01))) n@115@01) n@115@01))
  :qid |next-permImpliesNonNull|)))
(declare-const sm@119@01 $FVF<next>)
; Definitional axioms for snapshot map values
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@118@01 r) (Set_in (inv@117@01 r) g@111@01))
    (=
      ($FVF.lookup_next (as sm@119@01  $FVF<next>) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@114@01))) r)))
  :pattern (($FVF.lookup_next (as sm@119@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@114@01))) r))
  :qid |qp.fvfValDef64|)))
(assert (forall ((r $Ref)) (!
  ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@114@01))) r) r)
  :pattern (($FVF.lookup_next (as sm@119@01  $FVF<next>) r))
  :qid |qp.fvfResTrgDef65|)))
(assert (forall ((r $Ref)) (!
  (=>
    (Set_in (inv@117@01 r) g@111@01)
    ($FVF.loc_next ($FVF.lookup_next (as sm@119@01  $FVF<next>) r) r))
  :pattern ((inv@117@01 r))
  :qid |quant-u-15541|)))
(assert (=
  ($Snap.second ($Snap.second $t@114@01))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second $t@114@01)))
    ($Snap.second ($Snap.second ($Snap.second $t@114@01))))))
(assert (= ($Snap.first ($Snap.second ($Snap.second $t@114@01))) $Snap.unit))
; [eval] (forall n$0: Ref :: { (n$0.next in g) } { (n$0 in g), n$0.next } (n$0 in g) && n$0.next != null ==> (n$0.next in g))
(declare-const n$0@120@01 $Ref)
(push) ; 2
; [eval] (n$0 in g) && n$0.next != null ==> (n$0.next in g)
; [eval] (n$0 in g) && n$0.next != null
; [eval] (n$0 in g)
(push) ; 3
; [then-branch: 18 | !(n$0@120@01 in g@111@01) | live]
; [else-branch: 18 | n$0@120@01 in g@111@01 | live]
(push) ; 4
; [then-branch: 18 | !(n$0@120@01 in g@111@01)]
(assert (not (Set_in n$0@120@01 g@111@01)))
(pop) ; 4
(push) ; 4
; [else-branch: 18 | n$0@120@01 in g@111@01]
(assert (Set_in n$0@120@01 g@111@01))
; [eval] n$0.next != null
(assert (and
  (forall ((r $Ref)) (!
    (=>
      (and (img@118@01 r) (Set_in (inv@117@01 r) g@111@01))
      (=
        ($FVF.lookup_next (as sm@119@01  $FVF<next>) r)
        ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@114@01))) r)))
    :pattern (($FVF.lookup_next (as sm@119@01  $FVF<next>) r))
    :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@114@01))) r))
    :qid |qp.fvfValDef64|))
  (forall ((r $Ref)) (!
    ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@114@01))) r) r)
    :pattern (($FVF.lookup_next (as sm@119@01  $FVF<next>) r))
    :qid |qp.fvfResTrgDef65|))))
(assert ($FVF.loc_next ($FVF.lookup_next (as sm@119@01  $FVF<next>) n$0@120@01) n$0@120@01))
(push) ; 5
(assert (not (and (img@118@01 n$0@120@01) (Set_in (inv@117@01 n$0@120@01) g@111@01))))
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
    (and (img@118@01 r) (Set_in (inv@117@01 r) g@111@01))
    (=
      ($FVF.lookup_next (as sm@119@01  $FVF<next>) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@114@01))) r)))
  :pattern (($FVF.lookup_next (as sm@119@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@114@01))) r))
  :qid |qp.fvfValDef64|)))
(assert (forall ((r $Ref)) (!
  ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@114@01))) r) r)
  :pattern (($FVF.lookup_next (as sm@119@01  $FVF<next>) r))
  :qid |qp.fvfResTrgDef65|)))
(assert (=>
  (Set_in n$0@120@01 g@111@01)
  (and
    (Set_in n$0@120@01 g@111@01)
    ($FVF.loc_next ($FVF.lookup_next (as sm@119@01  $FVF<next>) n$0@120@01) n$0@120@01))))
(assert (or (Set_in n$0@120@01 g@111@01) (not (Set_in n$0@120@01 g@111@01))))
(push) ; 3
; [then-branch: 19 | n$0@120@01 in g@111@01 && Lookup(next, sm@119@01, n$0@120@01) != Null | live]
; [else-branch: 19 | !(n$0@120@01 in g@111@01 && Lookup(next, sm@119@01, n$0@120@01) != Null) | live]
(push) ; 4
; [then-branch: 19 | n$0@120@01 in g@111@01 && Lookup(next, sm@119@01, n$0@120@01) != Null]
(assert (and
  (Set_in n$0@120@01 g@111@01)
  (not (= ($FVF.lookup_next (as sm@119@01  $FVF<next>) n$0@120@01) $Ref.null))))
; [eval] (n$0.next in g)
(assert (and
  (forall ((r $Ref)) (!
    (=>
      (and (img@118@01 r) (Set_in (inv@117@01 r) g@111@01))
      (=
        ($FVF.lookup_next (as sm@119@01  $FVF<next>) r)
        ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@114@01))) r)))
    :pattern (($FVF.lookup_next (as sm@119@01  $FVF<next>) r))
    :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@114@01))) r))
    :qid |qp.fvfValDef64|))
  (forall ((r $Ref)) (!
    ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@114@01))) r) r)
    :pattern (($FVF.lookup_next (as sm@119@01  $FVF<next>) r))
    :qid |qp.fvfResTrgDef65|))))
(assert ($FVF.loc_next ($FVF.lookup_next (as sm@119@01  $FVF<next>) n$0@120@01) n$0@120@01))
(push) ; 5
(assert (not (and (img@118@01 n$0@120@01) (Set_in (inv@117@01 n$0@120@01) g@111@01))))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(pop) ; 4
(push) ; 4
; [else-branch: 19 | !(n$0@120@01 in g@111@01 && Lookup(next, sm@119@01, n$0@120@01) != Null)]
(assert (not
  (and
    (Set_in n$0@120@01 g@111@01)
    (not (= ($FVF.lookup_next (as sm@119@01  $FVF<next>) n$0@120@01) $Ref.null)))))
(pop) ; 4
(pop) ; 3
; Joined path conditions
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@118@01 r) (Set_in (inv@117@01 r) g@111@01))
    (=
      ($FVF.lookup_next (as sm@119@01  $FVF<next>) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@114@01))) r)))
  :pattern (($FVF.lookup_next (as sm@119@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@114@01))) r))
  :qid |qp.fvfValDef64|)))
(assert (forall ((r $Ref)) (!
  ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@114@01))) r) r)
  :pattern (($FVF.lookup_next (as sm@119@01  $FVF<next>) r))
  :qid |qp.fvfResTrgDef65|)))
(assert (=>
  (and
    (Set_in n$0@120@01 g@111@01)
    (not (= ($FVF.lookup_next (as sm@119@01  $FVF<next>) n$0@120@01) $Ref.null)))
  (and
    (Set_in n$0@120@01 g@111@01)
    (not (= ($FVF.lookup_next (as sm@119@01  $FVF<next>) n$0@120@01) $Ref.null))
    ($FVF.loc_next ($FVF.lookup_next (as sm@119@01  $FVF<next>) n$0@120@01) n$0@120@01))))
; Joined path conditions
(assert (or
  (not
    (and
      (Set_in n$0@120@01 g@111@01)
      (not
        (= ($FVF.lookup_next (as sm@119@01  $FVF<next>) n$0@120@01) $Ref.null))))
  (and
    (Set_in n$0@120@01 g@111@01)
    (not (= ($FVF.lookup_next (as sm@119@01  $FVF<next>) n$0@120@01) $Ref.null)))))
; Definitional axioms for snapshot map values
(pop) ; 2
; Nested auxiliary terms: globals (aux)
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@118@01 r) (Set_in (inv@117@01 r) g@111@01))
    (=
      ($FVF.lookup_next (as sm@119@01  $FVF<next>) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@114@01))) r)))
  :pattern (($FVF.lookup_next (as sm@119@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@114@01))) r))
  :qid |qp.fvfValDef64|)))
(assert (forall ((r $Ref)) (!
  ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@114@01))) r) r)
  :pattern (($FVF.lookup_next (as sm@119@01  $FVF<next>) r))
  :qid |qp.fvfResTrgDef65|)))
; Nested auxiliary terms: non-globals (aux)
(assert (forall ((n$0@120@01 $Ref)) (!
  (and
    (=>
      (Set_in n$0@120@01 g@111@01)
      (and
        (Set_in n$0@120@01 g@111@01)
        ($FVF.loc_next ($FVF.lookup_next (as sm@119@01  $FVF<next>) n$0@120@01) n$0@120@01)))
    (or (Set_in n$0@120@01 g@111@01) (not (Set_in n$0@120@01 g@111@01)))
    (=>
      (and
        (Set_in n$0@120@01 g@111@01)
        (not
          (= ($FVF.lookup_next (as sm@119@01  $FVF<next>) n$0@120@01) $Ref.null)))
      (and
        (Set_in n$0@120@01 g@111@01)
        (not
          (= ($FVF.lookup_next (as sm@119@01  $FVF<next>) n$0@120@01) $Ref.null))
        ($FVF.loc_next ($FVF.lookup_next (as sm@119@01  $FVF<next>) n$0@120@01) n$0@120@01)))
    (or
      (not
        (and
          (Set_in n$0@120@01 g@111@01)
          (not
            (=
              ($FVF.lookup_next (as sm@119@01  $FVF<next>) n$0@120@01)
              $Ref.null))))
      (and
        (Set_in n$0@120@01 g@111@01)
        (not
          (= ($FVF.lookup_next (as sm@119@01  $FVF<next>) n$0@120@01) $Ref.null)))))
  :pattern ((Set_in ($FVF.lookup_next (as sm@119@01  $FVF<next>) n$0@120@01) g@111@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/graphs/static/outlines/list_append.vpr@312@14@312@22-aux|)))
(assert (forall ((n$0@120@01 $Ref)) (!
  (and
    (=>
      (Set_in n$0@120@01 g@111@01)
      (and
        (Set_in n$0@120@01 g@111@01)
        ($FVF.loc_next ($FVF.lookup_next (as sm@119@01  $FVF<next>) n$0@120@01) n$0@120@01)))
    (or (Set_in n$0@120@01 g@111@01) (not (Set_in n$0@120@01 g@111@01)))
    (=>
      (and
        (Set_in n$0@120@01 g@111@01)
        (not
          (= ($FVF.lookup_next (as sm@119@01  $FVF<next>) n$0@120@01) $Ref.null)))
      (and
        (Set_in n$0@120@01 g@111@01)
        (not
          (= ($FVF.lookup_next (as sm@119@01  $FVF<next>) n$0@120@01) $Ref.null))
        ($FVF.loc_next ($FVF.lookup_next (as sm@119@01  $FVF<next>) n$0@120@01) n$0@120@01)))
    (or
      (not
        (and
          (Set_in n$0@120@01 g@111@01)
          (not
            (=
              ($FVF.lookup_next (as sm@119@01  $FVF<next>) n$0@120@01)
              $Ref.null))))
      (and
        (Set_in n$0@120@01 g@111@01)
        (not
          (= ($FVF.lookup_next (as sm@119@01  $FVF<next>) n$0@120@01) $Ref.null)))))
  :pattern ((Set_in n$0@120@01 g@111@01) ($FVF.loc_next ($FVF.lookup_next (as sm@119@01  $FVF<next>) n$0@120@01) n$0@120@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/graphs/static/outlines/list_append.vpr@312@14@312@22-aux|)))
(assert (forall ((n$0@120@01 $Ref)) (!
  (=>
    (and
      (Set_in n$0@120@01 g@111@01)
      (not
        (= ($FVF.lookup_next (as sm@119@01  $FVF<next>) n$0@120@01) $Ref.null)))
    (Set_in ($FVF.lookup_next (as sm@119@01  $FVF<next>) n$0@120@01) g@111@01))
  :pattern ((Set_in ($FVF.lookup_next (as sm@119@01  $FVF<next>) n$0@120@01) g@111@01))
  :pattern ((Set_in n$0@120@01 g@111@01) ($FVF.loc_next ($FVF.lookup_next (as sm@119@01  $FVF<next>) n$0@120@01) n$0@120@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/graphs/static/outlines/list_append.vpr@312@14@312@22|)))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second $t@114@01)))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@114@01))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@114@01)))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@114@01))))
  $Snap.unit))
; [eval] (u in g)
(assert (Set_in u@112@01 g@111@01))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@114@01))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@114@01)))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@114@01))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@114@01)))))
  $Snap.unit))
; [eval] (v in g)
(assert (Set_in v@113@01 g@111@01))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@114@01)))))
  $Snap.unit))
; [eval] exists_path_2($$(g), u, v)
; [eval] $$(g)
(push) ; 2
(declare-const n@121@01 $Ref)
(push) ; 3
; [eval] (n in refs)
(assert (Set_in n@121@01 g@111@01))
(pop) ; 3
(declare-fun inv@122@01 ($Ref) $Ref)
(declare-fun img@123@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
; Definitional axioms for snapshot map domain
; Definitional axioms for snapshot map values
; Check receiver injectivity
(push) ; 3
(assert (not (forall ((n1@121@01 $Ref) (n2@121@01 $Ref)) (!
  (=>
    (and
      (and
        (Set_in n1@121@01 g@111@01)
        ($FVF.loc_next ($FVF.lookup_next (as sm@119@01  $FVF<next>) n1@121@01) n1@121@01))
      (and
        (Set_in n2@121@01 g@111@01)
        ($FVF.loc_next ($FVF.lookup_next (as sm@119@01  $FVF<next>) n2@121@01) n2@121@01))
      (= n1@121@01 n2@121@01))
    (= n1@121@01 n2@121@01))
  
  :qid |next-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((n@121@01 $Ref)) (!
  (=>
    (Set_in n@121@01 g@111@01)
    (and (= (inv@122@01 n@121@01) n@121@01) (img@123@01 n@121@01)))
  :pattern ((Set_in n@121@01 g@111@01))
  :pattern ((inv@122@01 n@121@01))
  :pattern ((img@123@01 n@121@01))
  :qid |next-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=> (and (img@123@01 r) (Set_in (inv@122@01 r) g@111@01)) (= (inv@122@01 r) r))
  :pattern ((inv@122@01 r))
  :qid |next-fctOfInv|)))
(assert (forall ((r $Ref)) (!
  (=>
    (Set_in (inv@122@01 r) g@111@01)
    ($FVF.loc_next ($FVF.lookup_next (as sm@119@01  $FVF<next>) r) r))
  :pattern ((inv@122@01 r))
  :qid |quant-u-15543|)))
(push) ; 3
(assert (not (forall ((r $Ref)) (!
  (=>
    (and (Set_in (inv@122@01 r) g@111@01) (img@123@01 r) (= r (inv@122@01 r)))
    (>
      (ite
        (and (img@118@01 r) (Set_in (inv@117@01 r) g@111@01))
        $Perm.Write
        $Perm.No)
      $Perm.No))
  
  :qid |quant-u-15544|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(declare-const sm@124@01 $FVF<next>)
; Definitional axioms for snapshot map domain
(assert (forall ((r $Ref)) (!
  (and
    (=>
      (Set_in r ($FVF.domain_next (as sm@124@01  $FVF<next>)))
      (and (Set_in (inv@122@01 r) g@111@01) (img@123@01 r)))
    (=>
      (and (Set_in (inv@122@01 r) g@111@01) (img@123@01 r))
      (Set_in r ($FVF.domain_next (as sm@124@01  $FVF<next>)))))
  :pattern ((Set_in r ($FVF.domain_next (as sm@124@01  $FVF<next>))))
  :qid |qp.fvfDomDef68|)))
; Definitional axioms for snapshot map values
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and (Set_in (inv@122@01 r) g@111@01) (img@123@01 r))
      (and (img@118@01 r) (Set_in (inv@117@01 r) g@111@01)))
    (=
      ($FVF.lookup_next (as sm@124@01  $FVF<next>) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@114@01))) r)))
  :pattern (($FVF.lookup_next (as sm@124@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@114@01))) r))
  :qid |qp.fvfValDef66|)))
(assert (forall ((r $Ref)) (!
  ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@114@01))) r) r)
  :pattern (($FVF.lookup_next (as sm@124@01  $FVF<next>) r))
  :qid |qp.fvfResTrgDef67|)))
(assert ($$%precondition ($SortWrappers.$FVF<next>To$Snap (as sm@124@01  $FVF<next>)) g@111@01))
(pop) ; 2
; Joined path conditions
(assert (forall ((n@121@01 $Ref)) (!
  (=>
    (Set_in n@121@01 g@111@01)
    (and (= (inv@122@01 n@121@01) n@121@01) (img@123@01 n@121@01)))
  :pattern ((Set_in n@121@01 g@111@01))
  :pattern ((inv@122@01 n@121@01))
  :pattern ((img@123@01 n@121@01))
  :qid |next-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=> (and (img@123@01 r) (Set_in (inv@122@01 r) g@111@01)) (= (inv@122@01 r) r))
  :pattern ((inv@122@01 r))
  :qid |next-fctOfInv|)))
(assert (forall ((r $Ref)) (!
  (and
    (=>
      (Set_in r ($FVF.domain_next (as sm@124@01  $FVF<next>)))
      (and (Set_in (inv@122@01 r) g@111@01) (img@123@01 r)))
    (=>
      (and (Set_in (inv@122@01 r) g@111@01) (img@123@01 r))
      (Set_in r ($FVF.domain_next (as sm@124@01  $FVF<next>)))))
  :pattern ((Set_in r ($FVF.domain_next (as sm@124@01  $FVF<next>))))
  :qid |qp.fvfDomDef68|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and (Set_in (inv@122@01 r) g@111@01) (img@123@01 r))
      (and (img@118@01 r) (Set_in (inv@117@01 r) g@111@01)))
    (=
      ($FVF.lookup_next (as sm@124@01  $FVF<next>) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@114@01))) r)))
  :pattern (($FVF.lookup_next (as sm@124@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@114@01))) r))
  :qid |qp.fvfValDef66|)))
(assert (forall ((r $Ref)) (!
  ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@114@01))) r) r)
  :pattern (($FVF.lookup_next (as sm@124@01  $FVF<next>) r))
  :qid |qp.fvfResTrgDef67|)))
(assert (and
  (forall ((r $Ref)) (!
    (=>
      (Set_in (inv@122@01 r) g@111@01)
      ($FVF.loc_next ($FVF.lookup_next (as sm@119@01  $FVF<next>) r) r))
    :pattern ((inv@122@01 r))
    :qid |quant-u-15543|))
  ($$%precondition ($SortWrappers.$FVF<next>To$Snap (as sm@124@01  $FVF<next>)) g@111@01)))
(assert (exists_path_2<Bool> ($$ ($SortWrappers.$FVF<next>To$Snap (as sm@124@01  $FVF<next>)) g@111@01) u@112@01 v@113@01))
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
(set-option :timeout 0)
(push) ; 2
(declare-const $t@125@01 $Snap)
(assert (= $t@125@01 ($Snap.combine ($Snap.first $t@125@01) ($Snap.second $t@125@01))))
(assert (= ($Snap.first $t@125@01) $Snap.unit))
; [eval] !((null in g))
; [eval] (null in g)
(assert (=
  ($Snap.second $t@125@01)
  ($Snap.combine
    ($Snap.first ($Snap.second $t@125@01))
    ($Snap.second ($Snap.second $t@125@01)))))
(declare-const n$1@126@01 $Ref)
(push) ; 3
; [eval] (n$1 in g)
(assert (Set_in n$1@126@01 g@111@01))
(declare-const sm@127@01 $FVF<next>)
; Definitional axioms for snapshot map values
(pop) ; 3
(declare-fun inv@128@01 ($Ref) $Ref)
(declare-fun img@129@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
; Check receiver injectivity
(push) ; 3
(assert (not (forall ((n$11@126@01 $Ref) (n$12@126@01 $Ref)) (!
  (=>
    (and
      (Set_in n$11@126@01 g@111@01)
      (Set_in n$12@126@01 g@111@01)
      (= n$11@126@01 n$12@126@01))
    (= n$11@126@01 n$12@126@01))
  
  :qid |next-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((n$1@126@01 $Ref)) (!
  (=>
    (Set_in n$1@126@01 g@111@01)
    (and (= (inv@128@01 n$1@126@01) n$1@126@01) (img@129@01 n$1@126@01)))
  :pattern (($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@125@01))) n$1@126@01) n$1@126@01))
  :qid |quant-u-15546|)))
(assert (forall ((r $Ref)) (!
  (=> (and (img@129@01 r) (Set_in (inv@128@01 r) g@111@01)) (= (inv@128@01 r) r))
  :pattern ((inv@128@01 r))
  :qid |next-fctOfInv|)))
; Permissions are non-negative
; Field permissions are at most one
; Permission implies non-null receiver
(assert (forall ((n$1@126@01 $Ref)) (!
  (=> (Set_in n$1@126@01 g@111@01) (not (= n$1@126@01 $Ref.null)))
  :pattern (($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@125@01))) n$1@126@01) n$1@126@01))
  :qid |next-permImpliesNonNull|)))
(declare-const sm@130@01 $FVF<next>)
; Definitional axioms for snapshot map values
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@129@01 r) (Set_in (inv@128@01 r) g@111@01))
    (=
      ($FVF.lookup_next (as sm@130@01  $FVF<next>) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@125@01))) r)))
  :pattern (($FVF.lookup_next (as sm@130@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@125@01))) r))
  :qid |qp.fvfValDef70|)))
(assert (forall ((r $Ref)) (!
  ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@125@01))) r) r)
  :pattern (($FVF.lookup_next (as sm@130@01  $FVF<next>) r))
  :qid |qp.fvfResTrgDef71|)))
(assert (forall ((r $Ref)) (!
  (=>
    (Set_in (inv@128@01 r) g@111@01)
    ($FVF.loc_next ($FVF.lookup_next (as sm@130@01  $FVF<next>) r) r))
  :pattern ((inv@128@01 r))
  :qid |quant-u-15547|)))
(assert (=
  ($Snap.second ($Snap.second $t@125@01))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second $t@125@01)))
    ($Snap.second ($Snap.second ($Snap.second $t@125@01))))))
(assert (= ($Snap.first ($Snap.second ($Snap.second $t@125@01))) $Snap.unit))
; [eval] (forall n$2: Ref :: { (n$2.next in g) } { (n$2 in g), n$2.next } (n$2 in g) && n$2.next != null ==> (n$2.next in g))
(declare-const n$2@131@01 $Ref)
(push) ; 3
; [eval] (n$2 in g) && n$2.next != null ==> (n$2.next in g)
; [eval] (n$2 in g) && n$2.next != null
; [eval] (n$2 in g)
(push) ; 4
; [then-branch: 20 | !(n$2@131@01 in g@111@01) | live]
; [else-branch: 20 | n$2@131@01 in g@111@01 | live]
(push) ; 5
; [then-branch: 20 | !(n$2@131@01 in g@111@01)]
(assert (not (Set_in n$2@131@01 g@111@01)))
(pop) ; 5
(push) ; 5
; [else-branch: 20 | n$2@131@01 in g@111@01]
(assert (Set_in n$2@131@01 g@111@01))
; [eval] n$2.next != null
(assert (and
  (forall ((r $Ref)) (!
    (=>
      (and (img@129@01 r) (Set_in (inv@128@01 r) g@111@01))
      (=
        ($FVF.lookup_next (as sm@130@01  $FVF<next>) r)
        ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@125@01))) r)))
    :pattern (($FVF.lookup_next (as sm@130@01  $FVF<next>) r))
    :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@125@01))) r))
    :qid |qp.fvfValDef70|))
  (forall ((r $Ref)) (!
    ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@125@01))) r) r)
    :pattern (($FVF.lookup_next (as sm@130@01  $FVF<next>) r))
    :qid |qp.fvfResTrgDef71|))))
(assert ($FVF.loc_next ($FVF.lookup_next (as sm@130@01  $FVF<next>) n$2@131@01) n$2@131@01))
(push) ; 6
(assert (not (and (img@129@01 n$2@131@01) (Set_in (inv@128@01 n$2@131@01) g@111@01))))
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
    (and (img@129@01 r) (Set_in (inv@128@01 r) g@111@01))
    (=
      ($FVF.lookup_next (as sm@130@01  $FVF<next>) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@125@01))) r)))
  :pattern (($FVF.lookup_next (as sm@130@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@125@01))) r))
  :qid |qp.fvfValDef70|)))
(assert (forall ((r $Ref)) (!
  ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@125@01))) r) r)
  :pattern (($FVF.lookup_next (as sm@130@01  $FVF<next>) r))
  :qid |qp.fvfResTrgDef71|)))
(assert (=>
  (Set_in n$2@131@01 g@111@01)
  (and
    (Set_in n$2@131@01 g@111@01)
    ($FVF.loc_next ($FVF.lookup_next (as sm@130@01  $FVF<next>) n$2@131@01) n$2@131@01))))
(assert (or (Set_in n$2@131@01 g@111@01) (not (Set_in n$2@131@01 g@111@01))))
(push) ; 4
; [then-branch: 21 | n$2@131@01 in g@111@01 && Lookup(next, sm@130@01, n$2@131@01) != Null | live]
; [else-branch: 21 | !(n$2@131@01 in g@111@01 && Lookup(next, sm@130@01, n$2@131@01) != Null) | live]
(push) ; 5
; [then-branch: 21 | n$2@131@01 in g@111@01 && Lookup(next, sm@130@01, n$2@131@01) != Null]
(assert (and
  (Set_in n$2@131@01 g@111@01)
  (not (= ($FVF.lookup_next (as sm@130@01  $FVF<next>) n$2@131@01) $Ref.null))))
; [eval] (n$2.next in g)
(assert (and
  (forall ((r $Ref)) (!
    (=>
      (and (img@129@01 r) (Set_in (inv@128@01 r) g@111@01))
      (=
        ($FVF.lookup_next (as sm@130@01  $FVF<next>) r)
        ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@125@01))) r)))
    :pattern (($FVF.lookup_next (as sm@130@01  $FVF<next>) r))
    :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@125@01))) r))
    :qid |qp.fvfValDef70|))
  (forall ((r $Ref)) (!
    ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@125@01))) r) r)
    :pattern (($FVF.lookup_next (as sm@130@01  $FVF<next>) r))
    :qid |qp.fvfResTrgDef71|))))
(assert ($FVF.loc_next ($FVF.lookup_next (as sm@130@01  $FVF<next>) n$2@131@01) n$2@131@01))
(push) ; 6
(assert (not (and (img@129@01 n$2@131@01) (Set_in (inv@128@01 n$2@131@01) g@111@01))))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(pop) ; 5
(push) ; 5
; [else-branch: 21 | !(n$2@131@01 in g@111@01 && Lookup(next, sm@130@01, n$2@131@01) != Null)]
(assert (not
  (and
    (Set_in n$2@131@01 g@111@01)
    (not (= ($FVF.lookup_next (as sm@130@01  $FVF<next>) n$2@131@01) $Ref.null)))))
(pop) ; 5
(pop) ; 4
; Joined path conditions
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@129@01 r) (Set_in (inv@128@01 r) g@111@01))
    (=
      ($FVF.lookup_next (as sm@130@01  $FVF<next>) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@125@01))) r)))
  :pattern (($FVF.lookup_next (as sm@130@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@125@01))) r))
  :qid |qp.fvfValDef70|)))
(assert (forall ((r $Ref)) (!
  ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@125@01))) r) r)
  :pattern (($FVF.lookup_next (as sm@130@01  $FVF<next>) r))
  :qid |qp.fvfResTrgDef71|)))
(assert (=>
  (and
    (Set_in n$2@131@01 g@111@01)
    (not (= ($FVF.lookup_next (as sm@130@01  $FVF<next>) n$2@131@01) $Ref.null)))
  (and
    (Set_in n$2@131@01 g@111@01)
    (not (= ($FVF.lookup_next (as sm@130@01  $FVF<next>) n$2@131@01) $Ref.null))
    ($FVF.loc_next ($FVF.lookup_next (as sm@130@01  $FVF<next>) n$2@131@01) n$2@131@01))))
; Joined path conditions
(assert (or
  (not
    (and
      (Set_in n$2@131@01 g@111@01)
      (not
        (= ($FVF.lookup_next (as sm@130@01  $FVF<next>) n$2@131@01) $Ref.null))))
  (and
    (Set_in n$2@131@01 g@111@01)
    (not (= ($FVF.lookup_next (as sm@130@01  $FVF<next>) n$2@131@01) $Ref.null)))))
; Definitional axioms for snapshot map values
(pop) ; 3
; Nested auxiliary terms: globals (aux)
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@129@01 r) (Set_in (inv@128@01 r) g@111@01))
    (=
      ($FVF.lookup_next (as sm@130@01  $FVF<next>) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@125@01))) r)))
  :pattern (($FVF.lookup_next (as sm@130@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@125@01))) r))
  :qid |qp.fvfValDef70|)))
(assert (forall ((r $Ref)) (!
  ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@125@01))) r) r)
  :pattern (($FVF.lookup_next (as sm@130@01  $FVF<next>) r))
  :qid |qp.fvfResTrgDef71|)))
; Nested auxiliary terms: non-globals (aux)
(assert (forall ((n$2@131@01 $Ref)) (!
  (and
    (=>
      (Set_in n$2@131@01 g@111@01)
      (and
        (Set_in n$2@131@01 g@111@01)
        ($FVF.loc_next ($FVF.lookup_next (as sm@130@01  $FVF<next>) n$2@131@01) n$2@131@01)))
    (or (Set_in n$2@131@01 g@111@01) (not (Set_in n$2@131@01 g@111@01)))
    (=>
      (and
        (Set_in n$2@131@01 g@111@01)
        (not
          (= ($FVF.lookup_next (as sm@130@01  $FVF<next>) n$2@131@01) $Ref.null)))
      (and
        (Set_in n$2@131@01 g@111@01)
        (not
          (= ($FVF.lookup_next (as sm@130@01  $FVF<next>) n$2@131@01) $Ref.null))
        ($FVF.loc_next ($FVF.lookup_next (as sm@130@01  $FVF<next>) n$2@131@01) n$2@131@01)))
    (or
      (not
        (and
          (Set_in n$2@131@01 g@111@01)
          (not
            (=
              ($FVF.lookup_next (as sm@130@01  $FVF<next>) n$2@131@01)
              $Ref.null))))
      (and
        (Set_in n$2@131@01 g@111@01)
        (not
          (= ($FVF.lookup_next (as sm@130@01  $FVF<next>) n$2@131@01) $Ref.null)))))
  :pattern ((Set_in ($FVF.lookup_next (as sm@130@01  $FVF<next>) n$2@131@01) g@111@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/graphs/static/outlines/list_append.vpr@315@13@315@21-aux|)))
(assert (forall ((n$2@131@01 $Ref)) (!
  (and
    (=>
      (Set_in n$2@131@01 g@111@01)
      (and
        (Set_in n$2@131@01 g@111@01)
        ($FVF.loc_next ($FVF.lookup_next (as sm@130@01  $FVF<next>) n$2@131@01) n$2@131@01)))
    (or (Set_in n$2@131@01 g@111@01) (not (Set_in n$2@131@01 g@111@01)))
    (=>
      (and
        (Set_in n$2@131@01 g@111@01)
        (not
          (= ($FVF.lookup_next (as sm@130@01  $FVF<next>) n$2@131@01) $Ref.null)))
      (and
        (Set_in n$2@131@01 g@111@01)
        (not
          (= ($FVF.lookup_next (as sm@130@01  $FVF<next>) n$2@131@01) $Ref.null))
        ($FVF.loc_next ($FVF.lookup_next (as sm@130@01  $FVF<next>) n$2@131@01) n$2@131@01)))
    (or
      (not
        (and
          (Set_in n$2@131@01 g@111@01)
          (not
            (=
              ($FVF.lookup_next (as sm@130@01  $FVF<next>) n$2@131@01)
              $Ref.null))))
      (and
        (Set_in n$2@131@01 g@111@01)
        (not
          (= ($FVF.lookup_next (as sm@130@01  $FVF<next>) n$2@131@01) $Ref.null)))))
  :pattern ((Set_in n$2@131@01 g@111@01) ($FVF.loc_next ($FVF.lookup_next (as sm@130@01  $FVF<next>) n$2@131@01) n$2@131@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/graphs/static/outlines/list_append.vpr@315@13@315@21-aux|)))
(assert (forall ((n$2@131@01 $Ref)) (!
  (=>
    (and
      (Set_in n$2@131@01 g@111@01)
      (not
        (= ($FVF.lookup_next (as sm@130@01  $FVF<next>) n$2@131@01) $Ref.null)))
    (Set_in ($FVF.lookup_next (as sm@130@01  $FVF<next>) n$2@131@01) g@111@01))
  :pattern ((Set_in ($FVF.lookup_next (as sm@130@01  $FVF<next>) n$2@131@01) g@111@01))
  :pattern ((Set_in n$2@131@01 g@111@01) ($FVF.loc_next ($FVF.lookup_next (as sm@130@01  $FVF<next>) n$2@131@01) n$2@131@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/graphs/static/outlines/list_append.vpr@315@13@315@21|)))
(assert (= ($Snap.second ($Snap.second ($Snap.second $t@125@01))) $Snap.unit))
; [eval] exists_path($$(g), u, v)
; [eval] $$(g)
(push) ; 3
(declare-const n@132@01 $Ref)
(push) ; 4
; [eval] (n in refs)
(assert (Set_in n@132@01 g@111@01))
(pop) ; 4
(declare-fun inv@133@01 ($Ref) $Ref)
(declare-fun img@134@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
; Definitional axioms for snapshot map domain
; Definitional axioms for snapshot map values
; Check receiver injectivity
(push) ; 4
(assert (not (forall ((n1@132@01 $Ref) (n2@132@01 $Ref)) (!
  (=>
    (and
      (and
        (Set_in n1@132@01 g@111@01)
        ($FVF.loc_next ($FVF.lookup_next (as sm@130@01  $FVF<next>) n1@132@01) n1@132@01))
      (and
        (Set_in n2@132@01 g@111@01)
        ($FVF.loc_next ($FVF.lookup_next (as sm@130@01  $FVF<next>) n2@132@01) n2@132@01))
      (= n1@132@01 n2@132@01))
    (= n1@132@01 n2@132@01))
  
  :qid |next-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((n@132@01 $Ref)) (!
  (=>
    (Set_in n@132@01 g@111@01)
    (and (= (inv@133@01 n@132@01) n@132@01) (img@134@01 n@132@01)))
  :pattern ((Set_in n@132@01 g@111@01))
  :pattern ((inv@133@01 n@132@01))
  :pattern ((img@134@01 n@132@01))
  :qid |next-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=> (and (img@134@01 r) (Set_in (inv@133@01 r) g@111@01)) (= (inv@133@01 r) r))
  :pattern ((inv@133@01 r))
  :qid |next-fctOfInv|)))
(assert (forall ((r $Ref)) (!
  (=>
    (Set_in (inv@133@01 r) g@111@01)
    ($FVF.loc_next ($FVF.lookup_next (as sm@130@01  $FVF<next>) r) r))
  :pattern ((inv@133@01 r))
  :qid |quant-u-15549|)))
(push) ; 4
(assert (not (forall ((r $Ref)) (!
  (=>
    (and (Set_in (inv@133@01 r) g@111@01) (img@134@01 r) (= r (inv@133@01 r)))
    (>
      (ite
        (and (img@129@01 r) (Set_in (inv@128@01 r) g@111@01))
        $Perm.Write
        $Perm.No)
      $Perm.No))
  
  :qid |quant-u-15550|))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(declare-const sm@135@01 $FVF<next>)
; Definitional axioms for snapshot map domain
(assert (forall ((r $Ref)) (!
  (and
    (=>
      (Set_in r ($FVF.domain_next (as sm@135@01  $FVF<next>)))
      (and (Set_in (inv@133@01 r) g@111@01) (img@134@01 r)))
    (=>
      (and (Set_in (inv@133@01 r) g@111@01) (img@134@01 r))
      (Set_in r ($FVF.domain_next (as sm@135@01  $FVF<next>)))))
  :pattern ((Set_in r ($FVF.domain_next (as sm@135@01  $FVF<next>))))
  :qid |qp.fvfDomDef74|)))
; Definitional axioms for snapshot map values
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and (Set_in (inv@133@01 r) g@111@01) (img@134@01 r))
      (and (img@129@01 r) (Set_in (inv@128@01 r) g@111@01)))
    (=
      ($FVF.lookup_next (as sm@135@01  $FVF<next>) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@125@01))) r)))
  :pattern (($FVF.lookup_next (as sm@135@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@125@01))) r))
  :qid |qp.fvfValDef72|)))
(assert (forall ((r $Ref)) (!
  ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@125@01))) r) r)
  :pattern (($FVF.lookup_next (as sm@135@01  $FVF<next>) r))
  :qid |qp.fvfResTrgDef73|)))
(assert ($$%precondition ($SortWrappers.$FVF<next>To$Snap (as sm@135@01  $FVF<next>)) g@111@01))
(pop) ; 3
; Joined path conditions
(assert (forall ((n@132@01 $Ref)) (!
  (=>
    (Set_in n@132@01 g@111@01)
    (and (= (inv@133@01 n@132@01) n@132@01) (img@134@01 n@132@01)))
  :pattern ((Set_in n@132@01 g@111@01))
  :pattern ((inv@133@01 n@132@01))
  :pattern ((img@134@01 n@132@01))
  :qid |next-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=> (and (img@134@01 r) (Set_in (inv@133@01 r) g@111@01)) (= (inv@133@01 r) r))
  :pattern ((inv@133@01 r))
  :qid |next-fctOfInv|)))
(assert (forall ((r $Ref)) (!
  (and
    (=>
      (Set_in r ($FVF.domain_next (as sm@135@01  $FVF<next>)))
      (and (Set_in (inv@133@01 r) g@111@01) (img@134@01 r)))
    (=>
      (and (Set_in (inv@133@01 r) g@111@01) (img@134@01 r))
      (Set_in r ($FVF.domain_next (as sm@135@01  $FVF<next>)))))
  :pattern ((Set_in r ($FVF.domain_next (as sm@135@01  $FVF<next>))))
  :qid |qp.fvfDomDef74|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and (Set_in (inv@133@01 r) g@111@01) (img@134@01 r))
      (and (img@129@01 r) (Set_in (inv@128@01 r) g@111@01)))
    (=
      ($FVF.lookup_next (as sm@135@01  $FVF<next>) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@125@01))) r)))
  :pattern (($FVF.lookup_next (as sm@135@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@125@01))) r))
  :qid |qp.fvfValDef72|)))
(assert (forall ((r $Ref)) (!
  ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@125@01))) r) r)
  :pattern (($FVF.lookup_next (as sm@135@01  $FVF<next>) r))
  :qid |qp.fvfResTrgDef73|)))
(assert (and
  (forall ((r $Ref)) (!
    (=>
      (Set_in (inv@133@01 r) g@111@01)
      ($FVF.loc_next ($FVF.lookup_next (as sm@130@01  $FVF<next>) r) r))
    :pattern ((inv@133@01 r))
    :qid |quant-u-15549|))
  ($$%precondition ($SortWrappers.$FVF<next>To$Snap (as sm@135@01  $FVF<next>)) g@111@01)))
(assert (exists_path<Bool> ($$ ($SortWrappers.$FVF<next>To$Snap (as sm@135@01  $FVF<next>)) g@111@01) u@112@01 v@113@01))
(pop) ; 2
(push) ; 2
; [exec]
; inhale apply_IND_2($$(g), Set(v), inst_uReach_rev($$(g), v))
(declare-const $t@136@01 $Snap)
(assert (= $t@136@01 $Snap.unit))
; [eval] apply_IND_2($$(g), Set(v), inst_uReach_rev($$(g), v))
; [eval] $$(g)
(push) ; 3
(declare-const n@137@01 $Ref)
(push) ; 4
; [eval] (n in refs)
(assert (Set_in n@137@01 g@111@01))
(pop) ; 4
(declare-fun inv@138@01 ($Ref) $Ref)
(declare-fun img@139@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
(declare-const sm@140@01 $FVF<next>)
; Definitional axioms for snapshot map domain
; Definitional axioms for snapshot map values
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@118@01 r) (Set_in (inv@117@01 r) g@111@01))
    (=
      ($FVF.lookup_next (as sm@140@01  $FVF<next>) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@114@01))) r)))
  :pattern (($FVF.lookup_next (as sm@140@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@114@01))) r))
  :qid |qp.fvfValDef75|)))
(assert (forall ((r $Ref)) (!
  ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@114@01))) r) r)
  :pattern (($FVF.lookup_next (as sm@140@01  $FVF<next>) r))
  :qid |qp.fvfResTrgDef76|)))
; Check receiver injectivity
(push) ; 4
(assert (not (forall ((n1@137@01 $Ref) (n2@137@01 $Ref)) (!
  (=>
    (and
      (and
        (Set_in n1@137@01 g@111@01)
        ($FVF.loc_next ($FVF.lookup_next (as sm@140@01  $FVF<next>) n1@137@01) n1@137@01))
      (and
        (Set_in n2@137@01 g@111@01)
        ($FVF.loc_next ($FVF.lookup_next (as sm@140@01  $FVF<next>) n2@137@01) n2@137@01))
      (= n1@137@01 n2@137@01))
    (= n1@137@01 n2@137@01))
  
  :qid |next-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((n@137@01 $Ref)) (!
  (=>
    (Set_in n@137@01 g@111@01)
    (and (= (inv@138@01 n@137@01) n@137@01) (img@139@01 n@137@01)))
  :pattern ((Set_in n@137@01 g@111@01))
  :pattern ((inv@138@01 n@137@01))
  :pattern ((img@139@01 n@137@01))
  :qid |next-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=> (and (img@139@01 r) (Set_in (inv@138@01 r) g@111@01)) (= (inv@138@01 r) r))
  :pattern ((inv@138@01 r))
  :qid |next-fctOfInv|)))
(assert (forall ((r $Ref)) (!
  (=>
    (Set_in (inv@138@01 r) g@111@01)
    ($FVF.loc_next ($FVF.lookup_next (as sm@140@01  $FVF<next>) r) r))
  :pattern ((inv@138@01 r))
  :qid |quant-u-15552|)))
(push) ; 4
(assert (not (forall ((r $Ref)) (!
  (=>
    (and (Set_in (inv@138@01 r) g@111@01) (img@139@01 r) (= r (inv@138@01 r)))
    (>
      (ite
        (and (img@118@01 r) (Set_in (inv@117@01 r) g@111@01))
        $Perm.Write
        $Perm.No)
      $Perm.No))
  
  :qid |quant-u-15553|))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(declare-const sm@141@01 $FVF<next>)
; Definitional axioms for snapshot map domain
(assert (forall ((r $Ref)) (!
  (and
    (=>
      (Set_in r ($FVF.domain_next (as sm@141@01  $FVF<next>)))
      (and (Set_in (inv@138@01 r) g@111@01) (img@139@01 r)))
    (=>
      (and (Set_in (inv@138@01 r) g@111@01) (img@139@01 r))
      (Set_in r ($FVF.domain_next (as sm@141@01  $FVF<next>)))))
  :pattern ((Set_in r ($FVF.domain_next (as sm@141@01  $FVF<next>))))
  :qid |qp.fvfDomDef79|)))
; Definitional axioms for snapshot map values
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and (Set_in (inv@138@01 r) g@111@01) (img@139@01 r))
      (and (img@118@01 r) (Set_in (inv@117@01 r) g@111@01)))
    (=
      ($FVF.lookup_next (as sm@141@01  $FVF<next>) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@114@01))) r)))
  :pattern (($FVF.lookup_next (as sm@141@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@114@01))) r))
  :qid |qp.fvfValDef77|)))
(assert (forall ((r $Ref)) (!
  ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@114@01))) r) r)
  :pattern (($FVF.lookup_next (as sm@141@01  $FVF<next>) r))
  :qid |qp.fvfResTrgDef78|)))
(assert ($$%precondition ($SortWrappers.$FVF<next>To$Snap (as sm@141@01  $FVF<next>)) g@111@01))
(pop) ; 3
; Joined path conditions
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@118@01 r) (Set_in (inv@117@01 r) g@111@01))
    (=
      ($FVF.lookup_next (as sm@140@01  $FVF<next>) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@114@01))) r)))
  :pattern (($FVF.lookup_next (as sm@140@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@114@01))) r))
  :qid |qp.fvfValDef75|)))
(assert (forall ((r $Ref)) (!
  ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@114@01))) r) r)
  :pattern (($FVF.lookup_next (as sm@140@01  $FVF<next>) r))
  :qid |qp.fvfResTrgDef76|)))
(assert (forall ((n@137@01 $Ref)) (!
  (=>
    (Set_in n@137@01 g@111@01)
    (and (= (inv@138@01 n@137@01) n@137@01) (img@139@01 n@137@01)))
  :pattern ((Set_in n@137@01 g@111@01))
  :pattern ((inv@138@01 n@137@01))
  :pattern ((img@139@01 n@137@01))
  :qid |next-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=> (and (img@139@01 r) (Set_in (inv@138@01 r) g@111@01)) (= (inv@138@01 r) r))
  :pattern ((inv@138@01 r))
  :qid |next-fctOfInv|)))
(assert (forall ((r $Ref)) (!
  (and
    (=>
      (Set_in r ($FVF.domain_next (as sm@141@01  $FVF<next>)))
      (and (Set_in (inv@138@01 r) g@111@01) (img@139@01 r)))
    (=>
      (and (Set_in (inv@138@01 r) g@111@01) (img@139@01 r))
      (Set_in r ($FVF.domain_next (as sm@141@01  $FVF<next>)))))
  :pattern ((Set_in r ($FVF.domain_next (as sm@141@01  $FVF<next>))))
  :qid |qp.fvfDomDef79|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and (Set_in (inv@138@01 r) g@111@01) (img@139@01 r))
      (and (img@118@01 r) (Set_in (inv@117@01 r) g@111@01)))
    (=
      ($FVF.lookup_next (as sm@141@01  $FVF<next>) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@114@01))) r)))
  :pattern (($FVF.lookup_next (as sm@141@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@114@01))) r))
  :qid |qp.fvfValDef77|)))
(assert (forall ((r $Ref)) (!
  ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@114@01))) r) r)
  :pattern (($FVF.lookup_next (as sm@141@01  $FVF<next>) r))
  :qid |qp.fvfResTrgDef78|)))
(assert (and
  (forall ((r $Ref)) (!
    (=>
      (Set_in (inv@138@01 r) g@111@01)
      ($FVF.loc_next ($FVF.lookup_next (as sm@140@01  $FVF<next>) r) r))
    :pattern ((inv@138@01 r))
    :qid |quant-u-15552|))
  ($$%precondition ($SortWrappers.$FVF<next>To$Snap (as sm@141@01  $FVF<next>)) g@111@01)))
; [eval] Set(v)
; [eval] inst_uReach_rev($$(g), v)
; [eval] $$(g)
(push) ; 3
(declare-const n@142@01 $Ref)
(push) ; 4
; [eval] (n in refs)
(assert (Set_in n@142@01 g@111@01))
(pop) ; 4
(declare-fun inv@143@01 ($Ref) $Ref)
(declare-fun img@144@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
(declare-const sm@145@01 $FVF<next>)
; Definitional axioms for snapshot map domain
; Definitional axioms for snapshot map values
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@118@01 r) (Set_in (inv@117@01 r) g@111@01))
    (=
      ($FVF.lookup_next (as sm@145@01  $FVF<next>) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@114@01))) r)))
  :pattern (($FVF.lookup_next (as sm@145@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@114@01))) r))
  :qid |qp.fvfValDef80|)))
(assert (forall ((r $Ref)) (!
  ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@114@01))) r) r)
  :pattern (($FVF.lookup_next (as sm@145@01  $FVF<next>) r))
  :qid |qp.fvfResTrgDef81|)))
; Check receiver injectivity
(push) ; 4
(assert (not (forall ((n1@142@01 $Ref) (n2@142@01 $Ref)) (!
  (=>
    (and
      (and
        (Set_in n1@142@01 g@111@01)
        ($FVF.loc_next ($FVF.lookup_next (as sm@145@01  $FVF<next>) n1@142@01) n1@142@01))
      (and
        (Set_in n2@142@01 g@111@01)
        ($FVF.loc_next ($FVF.lookup_next (as sm@145@01  $FVF<next>) n2@142@01) n2@142@01))
      (= n1@142@01 n2@142@01))
    (= n1@142@01 n2@142@01))
  
  :qid |next-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((n@142@01 $Ref)) (!
  (=>
    (Set_in n@142@01 g@111@01)
    (and (= (inv@143@01 n@142@01) n@142@01) (img@144@01 n@142@01)))
  :pattern ((Set_in n@142@01 g@111@01))
  :pattern ((inv@143@01 n@142@01))
  :pattern ((img@144@01 n@142@01))
  :qid |next-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=> (and (img@144@01 r) (Set_in (inv@143@01 r) g@111@01)) (= (inv@143@01 r) r))
  :pattern ((inv@143@01 r))
  :qid |next-fctOfInv|)))
(assert (forall ((r $Ref)) (!
  (=>
    (Set_in (inv@143@01 r) g@111@01)
    ($FVF.loc_next ($FVF.lookup_next (as sm@145@01  $FVF<next>) r) r))
  :pattern ((inv@143@01 r))
  :qid |quant-u-15555|)))
(push) ; 4
(assert (not (forall ((r $Ref)) (!
  (=>
    (and (Set_in (inv@143@01 r) g@111@01) (img@144@01 r) (= r (inv@143@01 r)))
    (>
      (ite
        (and (img@118@01 r) (Set_in (inv@117@01 r) g@111@01))
        $Perm.Write
        $Perm.No)
      $Perm.No))
  
  :qid |quant-u-15556|))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(declare-const sm@146@01 $FVF<next>)
; Definitional axioms for snapshot map domain
(assert (forall ((r $Ref)) (!
  (and
    (=>
      (Set_in r ($FVF.domain_next (as sm@146@01  $FVF<next>)))
      (and (Set_in (inv@143@01 r) g@111@01) (img@144@01 r)))
    (=>
      (and (Set_in (inv@143@01 r) g@111@01) (img@144@01 r))
      (Set_in r ($FVF.domain_next (as sm@146@01  $FVF<next>)))))
  :pattern ((Set_in r ($FVF.domain_next (as sm@146@01  $FVF<next>))))
  :qid |qp.fvfDomDef84|)))
; Definitional axioms for snapshot map values
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and (Set_in (inv@143@01 r) g@111@01) (img@144@01 r))
      (and (img@118@01 r) (Set_in (inv@117@01 r) g@111@01)))
    (=
      ($FVF.lookup_next (as sm@146@01  $FVF<next>) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@114@01))) r)))
  :pattern (($FVF.lookup_next (as sm@146@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@114@01))) r))
  :qid |qp.fvfValDef82|)))
(assert (forall ((r $Ref)) (!
  ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@114@01))) r) r)
  :pattern (($FVF.lookup_next (as sm@146@01  $FVF<next>) r))
  :qid |qp.fvfResTrgDef83|)))
(assert ($$%precondition ($SortWrappers.$FVF<next>To$Snap (as sm@146@01  $FVF<next>)) g@111@01))
(pop) ; 3
; Joined path conditions
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@118@01 r) (Set_in (inv@117@01 r) g@111@01))
    (=
      ($FVF.lookup_next (as sm@145@01  $FVF<next>) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@114@01))) r)))
  :pattern (($FVF.lookup_next (as sm@145@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@114@01))) r))
  :qid |qp.fvfValDef80|)))
(assert (forall ((r $Ref)) (!
  ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@114@01))) r) r)
  :pattern (($FVF.lookup_next (as sm@145@01  $FVF<next>) r))
  :qid |qp.fvfResTrgDef81|)))
(assert (forall ((n@142@01 $Ref)) (!
  (=>
    (Set_in n@142@01 g@111@01)
    (and (= (inv@143@01 n@142@01) n@142@01) (img@144@01 n@142@01)))
  :pattern ((Set_in n@142@01 g@111@01))
  :pattern ((inv@143@01 n@142@01))
  :pattern ((img@144@01 n@142@01))
  :qid |next-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=> (and (img@144@01 r) (Set_in (inv@143@01 r) g@111@01)) (= (inv@143@01 r) r))
  :pattern ((inv@143@01 r))
  :qid |next-fctOfInv|)))
(assert (forall ((r $Ref)) (!
  (and
    (=>
      (Set_in r ($FVF.domain_next (as sm@146@01  $FVF<next>)))
      (and (Set_in (inv@143@01 r) g@111@01) (img@144@01 r)))
    (=>
      (and (Set_in (inv@143@01 r) g@111@01) (img@144@01 r))
      (Set_in r ($FVF.domain_next (as sm@146@01  $FVF<next>)))))
  :pattern ((Set_in r ($FVF.domain_next (as sm@146@01  $FVF<next>))))
  :qid |qp.fvfDomDef84|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and (Set_in (inv@143@01 r) g@111@01) (img@144@01 r))
      (and (img@118@01 r) (Set_in (inv@117@01 r) g@111@01)))
    (=
      ($FVF.lookup_next (as sm@146@01  $FVF<next>) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@114@01))) r)))
  :pattern (($FVF.lookup_next (as sm@146@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@114@01))) r))
  :qid |qp.fvfValDef82|)))
(assert (forall ((r $Ref)) (!
  ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@114@01))) r) r)
  :pattern (($FVF.lookup_next (as sm@146@01  $FVF<next>) r))
  :qid |qp.fvfResTrgDef83|)))
(assert (and
  (forall ((r $Ref)) (!
    (=>
      (Set_in (inv@143@01 r) g@111@01)
      ($FVF.loc_next ($FVF.lookup_next (as sm@145@01  $FVF<next>) r) r))
    :pattern ((inv@143@01 r))
    :qid |quant-u-15555|))
  ($$%precondition ($SortWrappers.$FVF<next>To$Snap (as sm@146@01  $FVF<next>)) g@111@01)))
(assert (apply_IND_2<Bool> ($$ ($SortWrappers.$FVF<next>To$Snap (as sm@141@01  $FVF<next>)) g@111@01) (Set_singleton v@113@01) (inst_uReach_rev<Set<Ref>> ($$ ($SortWrappers.$FVF<next>To$Snap (as sm@146@01  $FVF<next>)) g@111@01) v@113@01)))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [eval] !((null in g))
; [eval] (null in g)
(declare-const n$1@147@01 $Ref)
(set-option :timeout 0)
(push) ; 3
; [eval] (n$1 in g)
(assert (Set_in n$1@147@01 g@111@01))
(declare-const sm@148@01 $FVF<next>)
; Definitional axioms for snapshot map values
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@118@01 r) (Set_in (inv@117@01 r) g@111@01))
    (=
      ($FVF.lookup_next (as sm@148@01  $FVF<next>) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@114@01))) r)))
  :pattern (($FVF.lookup_next (as sm@148@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@114@01))) r))
  :qid |qp.fvfValDef85|)))
(assert (forall ((r $Ref)) (!
  ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@114@01))) r) r)
  :pattern (($FVF.lookup_next (as sm@148@01  $FVF<next>) r))
  :qid |qp.fvfResTrgDef86|)))
(pop) ; 3
(declare-fun inv@149@01 ($Ref) $Ref)
(declare-fun img@150@01 ($Ref) Bool)
; Nested auxiliary terms: globals
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@118@01 r) (Set_in (inv@117@01 r) g@111@01))
    (=
      ($FVF.lookup_next (as sm@148@01  $FVF<next>) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@114@01))) r)))
  :pattern (($FVF.lookup_next (as sm@148@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@114@01))) r))
  :qid |qp.fvfValDef85|)))
(assert (forall ((r $Ref)) (!
  ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@114@01))) r) r)
  :pattern (($FVF.lookup_next (as sm@148@01  $FVF<next>) r))
  :qid |qp.fvfResTrgDef86|)))
; Nested auxiliary terms: non-globals
(declare-const sm@151@01 $FVF<next>)
; Definitional axioms for snapshot map values
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@118@01 r) (Set_in (inv@117@01 r) g@111@01))
    (=
      ($FVF.lookup_next (as sm@151@01  $FVF<next>) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@114@01))) r)))
  :pattern (($FVF.lookup_next (as sm@151@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@114@01))) r))
  :qid |qp.fvfValDef87|)))
(assert (forall ((r $Ref)) (!
  ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@114@01))) r) r)
  :pattern (($FVF.lookup_next (as sm@151@01  $FVF<next>) r))
  :qid |qp.fvfResTrgDef88|)))
; Check receiver injectivity
(push) ; 3
(assert (not (forall ((n$11@147@01 $Ref) (n$12@147@01 $Ref)) (!
  (=>
    (and
      (and
        (Set_in n$11@147@01 g@111@01)
        ($FVF.loc_next ($FVF.lookup_next (as sm@151@01  $FVF<next>) n$11@147@01) n$11@147@01))
      (and
        (Set_in n$12@147@01 g@111@01)
        ($FVF.loc_next ($FVF.lookup_next (as sm@151@01  $FVF<next>) n$12@147@01) n$12@147@01))
      (= n$11@147@01 n$12@147@01))
    (= n$11@147@01 n$12@147@01))
  
  :qid |next-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((n$1@147@01 $Ref)) (!
  (=>
    (Set_in n$1@147@01 g@111@01)
    (and (= (inv@149@01 n$1@147@01) n$1@147@01) (img@150@01 n$1@147@01)))
  :pattern (($FVF.loc_next ($FVF.lookup_next (as sm@148@01  $FVF<next>) n$1@147@01) n$1@147@01))
  :qid |next-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=> (and (img@150@01 r) (Set_in (inv@149@01 r) g@111@01)) (= (inv@149@01 r) r))
  :pattern ((inv@149@01 r))
  :qid |next-fctOfInv|)))
(assert (forall ((r $Ref)) (!
  (=>
    (Set_in (inv@149@01 r) g@111@01)
    ($FVF.loc_next ($FVF.lookup_next (as sm@151@01  $FVF<next>) r) r))
  :pattern ((inv@149@01 r))
  :qid |quant-u-15558|)))
; Precomputing data for removing quantified permissions
(define-fun pTaken@152@01 ((r $Ref)) $Perm
  (ite
    (and (Set_in (inv@149@01 r) g@111@01) (img@150@01 r) (= r (inv@149@01 r)))
    ($Perm.min
      (ite
        (and (img@118@01 r) (Set_in (inv@117@01 r) g@111@01))
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
        (and (img@118@01 r) (Set_in (inv@117@01 r) g@111@01))
        $Perm.Write
        $Perm.No)
      (pTaken@152@01 r))
    $Perm.No)
  
  :qid |quant-u-15560|))))
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
    (and (Set_in (inv@149@01 r) g@111@01) (img@150@01 r) (= r (inv@149@01 r)))
    (= (- $Perm.Write (pTaken@152@01 r)) $Perm.No))
  
  :qid |quant-u-15561|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Final check if taken enough permissions
; Done removing quantified permissions
; [eval] (forall n$2: Ref :: { (n$2.next in g) } { (n$2 in g), n$2.next } (n$2 in g) && n$2.next != null ==> (n$2.next in g))
(declare-const n$2@153@01 $Ref)
(set-option :timeout 0)
(push) ; 3
; [eval] (n$2 in g) && n$2.next != null ==> (n$2.next in g)
; [eval] (n$2 in g) && n$2.next != null
; [eval] (n$2 in g)
(push) ; 4
; [then-branch: 22 | !(n$2@153@01 in g@111@01) | live]
; [else-branch: 22 | n$2@153@01 in g@111@01 | live]
(push) ; 5
; [then-branch: 22 | !(n$2@153@01 in g@111@01)]
(assert (not (Set_in n$2@153@01 g@111@01)))
(pop) ; 5
(push) ; 5
; [else-branch: 22 | n$2@153@01 in g@111@01]
(assert (Set_in n$2@153@01 g@111@01))
; [eval] n$2.next != null
(assert (and
  (forall ((r $Ref)) (!
    (=>
      (and (img@118@01 r) (Set_in (inv@117@01 r) g@111@01))
      (=
        ($FVF.lookup_next (as sm@151@01  $FVF<next>) r)
        ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@114@01))) r)))
    :pattern (($FVF.lookup_next (as sm@151@01  $FVF<next>) r))
    :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@114@01))) r))
    :qid |qp.fvfValDef87|))
  (forall ((r $Ref)) (!
    ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@114@01))) r) r)
    :pattern (($FVF.lookup_next (as sm@151@01  $FVF<next>) r))
    :qid |qp.fvfResTrgDef88|))))
(assert ($FVF.loc_next ($FVF.lookup_next (as sm@151@01  $FVF<next>) n$2@153@01) n$2@153@01))
(push) ; 6
(assert (not (and (img@118@01 n$2@153@01) (Set_in (inv@117@01 n$2@153@01) g@111@01))))
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
    (and (img@118@01 r) (Set_in (inv@117@01 r) g@111@01))
    (=
      ($FVF.lookup_next (as sm@151@01  $FVF<next>) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@114@01))) r)))
  :pattern (($FVF.lookup_next (as sm@151@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@114@01))) r))
  :qid |qp.fvfValDef87|)))
(assert (forall ((r $Ref)) (!
  ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@114@01))) r) r)
  :pattern (($FVF.lookup_next (as sm@151@01  $FVF<next>) r))
  :qid |qp.fvfResTrgDef88|)))
(assert (=>
  (Set_in n$2@153@01 g@111@01)
  (and
    (Set_in n$2@153@01 g@111@01)
    ($FVF.loc_next ($FVF.lookup_next (as sm@151@01  $FVF<next>) n$2@153@01) n$2@153@01))))
(assert (or (Set_in n$2@153@01 g@111@01) (not (Set_in n$2@153@01 g@111@01))))
(push) ; 4
; [then-branch: 23 | n$2@153@01 in g@111@01 && Lookup(next, sm@151@01, n$2@153@01) != Null | live]
; [else-branch: 23 | !(n$2@153@01 in g@111@01 && Lookup(next, sm@151@01, n$2@153@01) != Null) | live]
(push) ; 5
; [then-branch: 23 | n$2@153@01 in g@111@01 && Lookup(next, sm@151@01, n$2@153@01) != Null]
(assert (and
  (Set_in n$2@153@01 g@111@01)
  (not (= ($FVF.lookup_next (as sm@151@01  $FVF<next>) n$2@153@01) $Ref.null))))
; [eval] (n$2.next in g)
(assert (and
  (forall ((r $Ref)) (!
    (=>
      (and (img@118@01 r) (Set_in (inv@117@01 r) g@111@01))
      (=
        ($FVF.lookup_next (as sm@151@01  $FVF<next>) r)
        ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@114@01))) r)))
    :pattern (($FVF.lookup_next (as sm@151@01  $FVF<next>) r))
    :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@114@01))) r))
    :qid |qp.fvfValDef87|))
  (forall ((r $Ref)) (!
    ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@114@01))) r) r)
    :pattern (($FVF.lookup_next (as sm@151@01  $FVF<next>) r))
    :qid |qp.fvfResTrgDef88|))))
(assert ($FVF.loc_next ($FVF.lookup_next (as sm@151@01  $FVF<next>) n$2@153@01) n$2@153@01))
(push) ; 6
(assert (not (and (img@118@01 n$2@153@01) (Set_in (inv@117@01 n$2@153@01) g@111@01))))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(pop) ; 5
(push) ; 5
; [else-branch: 23 | !(n$2@153@01 in g@111@01 && Lookup(next, sm@151@01, n$2@153@01) != Null)]
(assert (not
  (and
    (Set_in n$2@153@01 g@111@01)
    (not (= ($FVF.lookup_next (as sm@151@01  $FVF<next>) n$2@153@01) $Ref.null)))))
(pop) ; 5
(pop) ; 4
; Joined path conditions
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@118@01 r) (Set_in (inv@117@01 r) g@111@01))
    (=
      ($FVF.lookup_next (as sm@151@01  $FVF<next>) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@114@01))) r)))
  :pattern (($FVF.lookup_next (as sm@151@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@114@01))) r))
  :qid |qp.fvfValDef87|)))
(assert (forall ((r $Ref)) (!
  ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@114@01))) r) r)
  :pattern (($FVF.lookup_next (as sm@151@01  $FVF<next>) r))
  :qid |qp.fvfResTrgDef88|)))
(assert (=>
  (and
    (Set_in n$2@153@01 g@111@01)
    (not (= ($FVF.lookup_next (as sm@151@01  $FVF<next>) n$2@153@01) $Ref.null)))
  (and
    (Set_in n$2@153@01 g@111@01)
    (not (= ($FVF.lookup_next (as sm@151@01  $FVF<next>) n$2@153@01) $Ref.null))
    ($FVF.loc_next ($FVF.lookup_next (as sm@151@01  $FVF<next>) n$2@153@01) n$2@153@01))))
; Joined path conditions
(assert (or
  (not
    (and
      (Set_in n$2@153@01 g@111@01)
      (not
        (= ($FVF.lookup_next (as sm@151@01  $FVF<next>) n$2@153@01) $Ref.null))))
  (and
    (Set_in n$2@153@01 g@111@01)
    (not (= ($FVF.lookup_next (as sm@151@01  $FVF<next>) n$2@153@01) $Ref.null)))))
; Definitional axioms for snapshot map values
(pop) ; 3
; Nested auxiliary terms: globals (aux)
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@118@01 r) (Set_in (inv@117@01 r) g@111@01))
    (=
      ($FVF.lookup_next (as sm@151@01  $FVF<next>) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@114@01))) r)))
  :pattern (($FVF.lookup_next (as sm@151@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@114@01))) r))
  :qid |qp.fvfValDef87|)))
(assert (forall ((r $Ref)) (!
  ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@114@01))) r) r)
  :pattern (($FVF.lookup_next (as sm@151@01  $FVF<next>) r))
  :qid |qp.fvfResTrgDef88|)))
; Nested auxiliary terms: non-globals (aux)
(assert (forall ((n$2@153@01 $Ref)) (!
  (and
    (=>
      (Set_in n$2@153@01 g@111@01)
      (and
        (Set_in n$2@153@01 g@111@01)
        ($FVF.loc_next ($FVF.lookup_next (as sm@151@01  $FVF<next>) n$2@153@01) n$2@153@01)))
    (or (Set_in n$2@153@01 g@111@01) (not (Set_in n$2@153@01 g@111@01)))
    (=>
      (and
        (Set_in n$2@153@01 g@111@01)
        (not
          (= ($FVF.lookup_next (as sm@151@01  $FVF<next>) n$2@153@01) $Ref.null)))
      (and
        (Set_in n$2@153@01 g@111@01)
        (not
          (= ($FVF.lookup_next (as sm@151@01  $FVF<next>) n$2@153@01) $Ref.null))
        ($FVF.loc_next ($FVF.lookup_next (as sm@151@01  $FVF<next>) n$2@153@01) n$2@153@01)))
    (or
      (not
        (and
          (Set_in n$2@153@01 g@111@01)
          (not
            (=
              ($FVF.lookup_next (as sm@151@01  $FVF<next>) n$2@153@01)
              $Ref.null))))
      (and
        (Set_in n$2@153@01 g@111@01)
        (not
          (= ($FVF.lookup_next (as sm@151@01  $FVF<next>) n$2@153@01) $Ref.null)))))
  :pattern ((Set_in ($FVF.lookup_next (as sm@151@01  $FVF<next>) n$2@153@01) g@111@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/graphs/static/outlines/list_append.vpr@315@13@315@21-aux|)))
(assert (forall ((n$2@153@01 $Ref)) (!
  (and
    (=>
      (Set_in n$2@153@01 g@111@01)
      (and
        (Set_in n$2@153@01 g@111@01)
        ($FVF.loc_next ($FVF.lookup_next (as sm@151@01  $FVF<next>) n$2@153@01) n$2@153@01)))
    (or (Set_in n$2@153@01 g@111@01) (not (Set_in n$2@153@01 g@111@01)))
    (=>
      (and
        (Set_in n$2@153@01 g@111@01)
        (not
          (= ($FVF.lookup_next (as sm@151@01  $FVF<next>) n$2@153@01) $Ref.null)))
      (and
        (Set_in n$2@153@01 g@111@01)
        (not
          (= ($FVF.lookup_next (as sm@151@01  $FVF<next>) n$2@153@01) $Ref.null))
        ($FVF.loc_next ($FVF.lookup_next (as sm@151@01  $FVF<next>) n$2@153@01) n$2@153@01)))
    (or
      (not
        (and
          (Set_in n$2@153@01 g@111@01)
          (not
            (=
              ($FVF.lookup_next (as sm@151@01  $FVF<next>) n$2@153@01)
              $Ref.null))))
      (and
        (Set_in n$2@153@01 g@111@01)
        (not
          (= ($FVF.lookup_next (as sm@151@01  $FVF<next>) n$2@153@01) $Ref.null)))))
  :pattern ((Set_in n$2@153@01 g@111@01) ($FVF.loc_next ($FVF.lookup_next (as sm@151@01  $FVF<next>) n$2@153@01) n$2@153@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/graphs/static/outlines/list_append.vpr@315@13@315@21-aux|)))
(push) ; 3
(assert (not (forall ((n$2@153@01 $Ref)) (!
  (=>
    (and
      (Set_in n$2@153@01 g@111@01)
      (not
        (= ($FVF.lookup_next (as sm@151@01  $FVF<next>) n$2@153@01) $Ref.null)))
    (Set_in ($FVF.lookup_next (as sm@151@01  $FVF<next>) n$2@153@01) g@111@01))
  :pattern ((Set_in ($FVF.lookup_next (as sm@151@01  $FVF<next>) n$2@153@01) g@111@01))
  :pattern ((Set_in n$2@153@01 g@111@01) ($FVF.loc_next ($FVF.lookup_next (as sm@151@01  $FVF<next>) n$2@153@01) n$2@153@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/graphs/static/outlines/list_append.vpr@315@13@315@21|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(assert (forall ((n$2@153@01 $Ref)) (!
  (=>
    (and
      (Set_in n$2@153@01 g@111@01)
      (not
        (= ($FVF.lookup_next (as sm@151@01  $FVF<next>) n$2@153@01) $Ref.null)))
    (Set_in ($FVF.lookup_next (as sm@151@01  $FVF<next>) n$2@153@01) g@111@01))
  :pattern ((Set_in ($FVF.lookup_next (as sm@151@01  $FVF<next>) n$2@153@01) g@111@01))
  :pattern ((Set_in n$2@153@01 g@111@01) ($FVF.loc_next ($FVF.lookup_next (as sm@151@01  $FVF<next>) n$2@153@01) n$2@153@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/graphs/static/outlines/list_append.vpr@315@13@315@21|)))
; [eval] exists_path($$(g), u, v)
; [eval] $$(g)
(push) ; 3
(declare-const n@154@01 $Ref)
(push) ; 4
; [eval] (n in refs)
(assert (Set_in n@154@01 g@111@01))
(pop) ; 4
(declare-fun inv@155@01 ($Ref) $Ref)
(declare-fun img@156@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
; Definitional axioms for snapshot map domain
; Definitional axioms for snapshot map values
; Check receiver injectivity
(push) ; 4
(assert (not (forall ((n1@154@01 $Ref) (n2@154@01 $Ref)) (!
  (=>
    (and
      (and
        (Set_in n1@154@01 g@111@01)
        ($FVF.loc_next ($FVF.lookup_next (as sm@151@01  $FVF<next>) n1@154@01) n1@154@01))
      (and
        (Set_in n2@154@01 g@111@01)
        ($FVF.loc_next ($FVF.lookup_next (as sm@151@01  $FVF<next>) n2@154@01) n2@154@01))
      (= n1@154@01 n2@154@01))
    (= n1@154@01 n2@154@01))
  
  :qid |next-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((n@154@01 $Ref)) (!
  (=>
    (Set_in n@154@01 g@111@01)
    (and (= (inv@155@01 n@154@01) n@154@01) (img@156@01 n@154@01)))
  :pattern ((Set_in n@154@01 g@111@01))
  :pattern ((inv@155@01 n@154@01))
  :pattern ((img@156@01 n@154@01))
  :qid |next-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=> (and (img@156@01 r) (Set_in (inv@155@01 r) g@111@01)) (= (inv@155@01 r) r))
  :pattern ((inv@155@01 r))
  :qid |next-fctOfInv|)))
(assert (forall ((r $Ref)) (!
  (=>
    (Set_in (inv@155@01 r) g@111@01)
    ($FVF.loc_next ($FVF.lookup_next (as sm@151@01  $FVF<next>) r) r))
  :pattern ((inv@155@01 r))
  :qid |quant-u-15563|)))
(push) ; 4
(assert (not (forall ((r $Ref)) (!
  (=>
    (and (Set_in (inv@155@01 r) g@111@01) (img@156@01 r) (= r (inv@155@01 r)))
    (>
      (ite
        (and (img@118@01 r) (Set_in (inv@117@01 r) g@111@01))
        $Perm.Write
        $Perm.No)
      $Perm.No))
  
  :qid |quant-u-15564|))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(declare-const sm@157@01 $FVF<next>)
; Definitional axioms for snapshot map domain
(assert (forall ((r $Ref)) (!
  (and
    (=>
      (Set_in r ($FVF.domain_next (as sm@157@01  $FVF<next>)))
      (and (Set_in (inv@155@01 r) g@111@01) (img@156@01 r)))
    (=>
      (and (Set_in (inv@155@01 r) g@111@01) (img@156@01 r))
      (Set_in r ($FVF.domain_next (as sm@157@01  $FVF<next>)))))
  :pattern ((Set_in r ($FVF.domain_next (as sm@157@01  $FVF<next>))))
  :qid |qp.fvfDomDef91|)))
; Definitional axioms for snapshot map values
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and (Set_in (inv@155@01 r) g@111@01) (img@156@01 r))
      (and (img@118@01 r) (Set_in (inv@117@01 r) g@111@01)))
    (=
      ($FVF.lookup_next (as sm@157@01  $FVF<next>) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@114@01))) r)))
  :pattern (($FVF.lookup_next (as sm@157@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@114@01))) r))
  :qid |qp.fvfValDef89|)))
(assert (forall ((r $Ref)) (!
  ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@114@01))) r) r)
  :pattern (($FVF.lookup_next (as sm@157@01  $FVF<next>) r))
  :qid |qp.fvfResTrgDef90|)))
(assert ($$%precondition ($SortWrappers.$FVF<next>To$Snap (as sm@157@01  $FVF<next>)) g@111@01))
(pop) ; 3
; Joined path conditions
(assert (forall ((n@154@01 $Ref)) (!
  (=>
    (Set_in n@154@01 g@111@01)
    (and (= (inv@155@01 n@154@01) n@154@01) (img@156@01 n@154@01)))
  :pattern ((Set_in n@154@01 g@111@01))
  :pattern ((inv@155@01 n@154@01))
  :pattern ((img@156@01 n@154@01))
  :qid |next-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=> (and (img@156@01 r) (Set_in (inv@155@01 r) g@111@01)) (= (inv@155@01 r) r))
  :pattern ((inv@155@01 r))
  :qid |next-fctOfInv|)))
(assert (forall ((r $Ref)) (!
  (and
    (=>
      (Set_in r ($FVF.domain_next (as sm@157@01  $FVF<next>)))
      (and (Set_in (inv@155@01 r) g@111@01) (img@156@01 r)))
    (=>
      (and (Set_in (inv@155@01 r) g@111@01) (img@156@01 r))
      (Set_in r ($FVF.domain_next (as sm@157@01  $FVF<next>)))))
  :pattern ((Set_in r ($FVF.domain_next (as sm@157@01  $FVF<next>))))
  :qid |qp.fvfDomDef91|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and (Set_in (inv@155@01 r) g@111@01) (img@156@01 r))
      (and (img@118@01 r) (Set_in (inv@117@01 r) g@111@01)))
    (=
      ($FVF.lookup_next (as sm@157@01  $FVF<next>) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@114@01))) r)))
  :pattern (($FVF.lookup_next (as sm@157@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@114@01))) r))
  :qid |qp.fvfValDef89|)))
(assert (forall ((r $Ref)) (!
  ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@114@01))) r) r)
  :pattern (($FVF.lookup_next (as sm@157@01  $FVF<next>) r))
  :qid |qp.fvfResTrgDef90|)))
(assert (and
  (forall ((r $Ref)) (!
    (=>
      (Set_in (inv@155@01 r) g@111@01)
      ($FVF.loc_next ($FVF.lookup_next (as sm@151@01  $FVF<next>) r) r))
    :pattern ((inv@155@01 r))
    :qid |quant-u-15563|))
  ($$%precondition ($SortWrappers.$FVF<next>To$Snap (as sm@157@01  $FVF<next>)) g@111@01)))
(push) ; 3
(assert (not (exists_path<Bool> ($$ ($SortWrappers.$FVF<next>To$Snap (as sm@157@01  $FVF<next>)) g@111@01) u@112@01 v@113@01)))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(assert (exists_path<Bool> ($$ ($SortWrappers.$FVF<next>To$Snap (as sm@157@01  $FVF<next>)) g@111@01) u@112@01 v@113@01))
(pop) ; 2
(pop) ; 1
; ---------- test_trans ----------
(declare-const g@158@01 Set<$Ref>)
(declare-const u@159@01 $Ref)
(declare-const w@160@01 $Ref)
(declare-const v@161@01 $Ref)
(declare-const g@162@01 Set<$Ref>)
(declare-const u@163@01 $Ref)
(declare-const w@164@01 $Ref)
(declare-const v@165@01 $Ref)
(push) ; 1
(declare-const $t@166@01 $Snap)
(assert (= $t@166@01 ($Snap.combine ($Snap.first $t@166@01) ($Snap.second $t@166@01))))
(assert (= ($Snap.first $t@166@01) $Snap.unit))
; [eval] !((null in g))
; [eval] (null in g)
(assert (not (Set_in $Ref.null g@162@01)))
(assert (=
  ($Snap.second $t@166@01)
  ($Snap.combine
    ($Snap.first ($Snap.second $t@166@01))
    ($Snap.second ($Snap.second $t@166@01)))))
(declare-const n@167@01 $Ref)
(push) ; 2
; [eval] (n in g)
(assert (Set_in n@167@01 g@162@01))
(declare-const sm@168@01 $FVF<next>)
; Definitional axioms for snapshot map values
(pop) ; 2
(declare-fun inv@169@01 ($Ref) $Ref)
(declare-fun img@170@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
; Check receiver injectivity
(push) ; 2
(assert (not (forall ((n1@167@01 $Ref) (n2@167@01 $Ref)) (!
  (=>
    (and
      (Set_in n1@167@01 g@162@01)
      (Set_in n2@167@01 g@162@01)
      (= n1@167@01 n2@167@01))
    (= n1@167@01 n2@167@01))
  
  :qid |next-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 2
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((n@167@01 $Ref)) (!
  (=>
    (Set_in n@167@01 g@162@01)
    (and (= (inv@169@01 n@167@01) n@167@01) (img@170@01 n@167@01)))
  :pattern (($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@166@01))) n@167@01) n@167@01))
  :qid |quant-u-15566|)))
(assert (forall ((r $Ref)) (!
  (=> (and (img@170@01 r) (Set_in (inv@169@01 r) g@162@01)) (= (inv@169@01 r) r))
  :pattern ((inv@169@01 r))
  :qid |next-fctOfInv|)))
; Permissions are non-negative
; Field permissions are at most one
; Permission implies non-null receiver
(assert (forall ((n@167@01 $Ref)) (!
  (=> (Set_in n@167@01 g@162@01) (not (= n@167@01 $Ref.null)))
  :pattern (($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@166@01))) n@167@01) n@167@01))
  :qid |next-permImpliesNonNull|)))
(declare-const sm@171@01 $FVF<next>)
; Definitional axioms for snapshot map values
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@170@01 r) (Set_in (inv@169@01 r) g@162@01))
    (=
      ($FVF.lookup_next (as sm@171@01  $FVF<next>) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@166@01))) r)))
  :pattern (($FVF.lookup_next (as sm@171@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@166@01))) r))
  :qid |qp.fvfValDef93|)))
(assert (forall ((r $Ref)) (!
  ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@166@01))) r) r)
  :pattern (($FVF.lookup_next (as sm@171@01  $FVF<next>) r))
  :qid |qp.fvfResTrgDef94|)))
(assert (forall ((r $Ref)) (!
  (=>
    (Set_in (inv@169@01 r) g@162@01)
    ($FVF.loc_next ($FVF.lookup_next (as sm@171@01  $FVF<next>) r) r))
  :pattern ((inv@169@01 r))
  :qid |quant-u-15567|)))
(assert (=
  ($Snap.second ($Snap.second $t@166@01))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second $t@166@01)))
    ($Snap.second ($Snap.second ($Snap.second $t@166@01))))))
(assert (= ($Snap.first ($Snap.second ($Snap.second $t@166@01))) $Snap.unit))
; [eval] (forall n$0: Ref :: { (n$0.next in g) } { (n$0 in g), n$0.next } (n$0 in g) && n$0.next != null ==> (n$0.next in g))
(declare-const n$0@172@01 $Ref)
(push) ; 2
; [eval] (n$0 in g) && n$0.next != null ==> (n$0.next in g)
; [eval] (n$0 in g) && n$0.next != null
; [eval] (n$0 in g)
(push) ; 3
; [then-branch: 24 | !(n$0@172@01 in g@162@01) | live]
; [else-branch: 24 | n$0@172@01 in g@162@01 | live]
(push) ; 4
; [then-branch: 24 | !(n$0@172@01 in g@162@01)]
(assert (not (Set_in n$0@172@01 g@162@01)))
(pop) ; 4
(push) ; 4
; [else-branch: 24 | n$0@172@01 in g@162@01]
(assert (Set_in n$0@172@01 g@162@01))
; [eval] n$0.next != null
(assert (and
  (forall ((r $Ref)) (!
    (=>
      (and (img@170@01 r) (Set_in (inv@169@01 r) g@162@01))
      (=
        ($FVF.lookup_next (as sm@171@01  $FVF<next>) r)
        ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@166@01))) r)))
    :pattern (($FVF.lookup_next (as sm@171@01  $FVF<next>) r))
    :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@166@01))) r))
    :qid |qp.fvfValDef93|))
  (forall ((r $Ref)) (!
    ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@166@01))) r) r)
    :pattern (($FVF.lookup_next (as sm@171@01  $FVF<next>) r))
    :qid |qp.fvfResTrgDef94|))))
(assert ($FVF.loc_next ($FVF.lookup_next (as sm@171@01  $FVF<next>) n$0@172@01) n$0@172@01))
(push) ; 5
(assert (not (and (img@170@01 n$0@172@01) (Set_in (inv@169@01 n$0@172@01) g@162@01))))
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
    (and (img@170@01 r) (Set_in (inv@169@01 r) g@162@01))
    (=
      ($FVF.lookup_next (as sm@171@01  $FVF<next>) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@166@01))) r)))
  :pattern (($FVF.lookup_next (as sm@171@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@166@01))) r))
  :qid |qp.fvfValDef93|)))
(assert (forall ((r $Ref)) (!
  ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@166@01))) r) r)
  :pattern (($FVF.lookup_next (as sm@171@01  $FVF<next>) r))
  :qid |qp.fvfResTrgDef94|)))
(assert (=>
  (Set_in n$0@172@01 g@162@01)
  (and
    (Set_in n$0@172@01 g@162@01)
    ($FVF.loc_next ($FVF.lookup_next (as sm@171@01  $FVF<next>) n$0@172@01) n$0@172@01))))
(assert (or (Set_in n$0@172@01 g@162@01) (not (Set_in n$0@172@01 g@162@01))))
(push) ; 3
; [then-branch: 25 | n$0@172@01 in g@162@01 && Lookup(next, sm@171@01, n$0@172@01) != Null | live]
; [else-branch: 25 | !(n$0@172@01 in g@162@01 && Lookup(next, sm@171@01, n$0@172@01) != Null) | live]
(push) ; 4
; [then-branch: 25 | n$0@172@01 in g@162@01 && Lookup(next, sm@171@01, n$0@172@01) != Null]
(assert (and
  (Set_in n$0@172@01 g@162@01)
  (not (= ($FVF.lookup_next (as sm@171@01  $FVF<next>) n$0@172@01) $Ref.null))))
; [eval] (n$0.next in g)
(assert (and
  (forall ((r $Ref)) (!
    (=>
      (and (img@170@01 r) (Set_in (inv@169@01 r) g@162@01))
      (=
        ($FVF.lookup_next (as sm@171@01  $FVF<next>) r)
        ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@166@01))) r)))
    :pattern (($FVF.lookup_next (as sm@171@01  $FVF<next>) r))
    :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@166@01))) r))
    :qid |qp.fvfValDef93|))
  (forall ((r $Ref)) (!
    ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@166@01))) r) r)
    :pattern (($FVF.lookup_next (as sm@171@01  $FVF<next>) r))
    :qid |qp.fvfResTrgDef94|))))
(assert ($FVF.loc_next ($FVF.lookup_next (as sm@171@01  $FVF<next>) n$0@172@01) n$0@172@01))
(push) ; 5
(assert (not (and (img@170@01 n$0@172@01) (Set_in (inv@169@01 n$0@172@01) g@162@01))))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(pop) ; 4
(push) ; 4
; [else-branch: 25 | !(n$0@172@01 in g@162@01 && Lookup(next, sm@171@01, n$0@172@01) != Null)]
(assert (not
  (and
    (Set_in n$0@172@01 g@162@01)
    (not (= ($FVF.lookup_next (as sm@171@01  $FVF<next>) n$0@172@01) $Ref.null)))))
(pop) ; 4
(pop) ; 3
; Joined path conditions
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@170@01 r) (Set_in (inv@169@01 r) g@162@01))
    (=
      ($FVF.lookup_next (as sm@171@01  $FVF<next>) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@166@01))) r)))
  :pattern (($FVF.lookup_next (as sm@171@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@166@01))) r))
  :qid |qp.fvfValDef93|)))
(assert (forall ((r $Ref)) (!
  ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@166@01))) r) r)
  :pattern (($FVF.lookup_next (as sm@171@01  $FVF<next>) r))
  :qid |qp.fvfResTrgDef94|)))
(assert (=>
  (and
    (Set_in n$0@172@01 g@162@01)
    (not (= ($FVF.lookup_next (as sm@171@01  $FVF<next>) n$0@172@01) $Ref.null)))
  (and
    (Set_in n$0@172@01 g@162@01)
    (not (= ($FVF.lookup_next (as sm@171@01  $FVF<next>) n$0@172@01) $Ref.null))
    ($FVF.loc_next ($FVF.lookup_next (as sm@171@01  $FVF<next>) n$0@172@01) n$0@172@01))))
; Joined path conditions
(assert (or
  (not
    (and
      (Set_in n$0@172@01 g@162@01)
      (not
        (= ($FVF.lookup_next (as sm@171@01  $FVF<next>) n$0@172@01) $Ref.null))))
  (and
    (Set_in n$0@172@01 g@162@01)
    (not (= ($FVF.lookup_next (as sm@171@01  $FVF<next>) n$0@172@01) $Ref.null)))))
; Definitional axioms for snapshot map values
(pop) ; 2
; Nested auxiliary terms: globals (aux)
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@170@01 r) (Set_in (inv@169@01 r) g@162@01))
    (=
      ($FVF.lookup_next (as sm@171@01  $FVF<next>) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@166@01))) r)))
  :pattern (($FVF.lookup_next (as sm@171@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@166@01))) r))
  :qid |qp.fvfValDef93|)))
(assert (forall ((r $Ref)) (!
  ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@166@01))) r) r)
  :pattern (($FVF.lookup_next (as sm@171@01  $FVF<next>) r))
  :qid |qp.fvfResTrgDef94|)))
; Nested auxiliary terms: non-globals (aux)
(assert (forall ((n$0@172@01 $Ref)) (!
  (and
    (=>
      (Set_in n$0@172@01 g@162@01)
      (and
        (Set_in n$0@172@01 g@162@01)
        ($FVF.loc_next ($FVF.lookup_next (as sm@171@01  $FVF<next>) n$0@172@01) n$0@172@01)))
    (or (Set_in n$0@172@01 g@162@01) (not (Set_in n$0@172@01 g@162@01)))
    (=>
      (and
        (Set_in n$0@172@01 g@162@01)
        (not
          (= ($FVF.lookup_next (as sm@171@01  $FVF<next>) n$0@172@01) $Ref.null)))
      (and
        (Set_in n$0@172@01 g@162@01)
        (not
          (= ($FVF.lookup_next (as sm@171@01  $FVF<next>) n$0@172@01) $Ref.null))
        ($FVF.loc_next ($FVF.lookup_next (as sm@171@01  $FVF<next>) n$0@172@01) n$0@172@01)))
    (or
      (not
        (and
          (Set_in n$0@172@01 g@162@01)
          (not
            (=
              ($FVF.lookup_next (as sm@171@01  $FVF<next>) n$0@172@01)
              $Ref.null))))
      (and
        (Set_in n$0@172@01 g@162@01)
        (not
          (= ($FVF.lookup_next (as sm@171@01  $FVF<next>) n$0@172@01) $Ref.null)))))
  :pattern ((Set_in ($FVF.lookup_next (as sm@171@01  $FVF<next>) n$0@172@01) g@162@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/graphs/static/outlines/list_append.vpr@322@14@322@22-aux|)))
(assert (forall ((n$0@172@01 $Ref)) (!
  (and
    (=>
      (Set_in n$0@172@01 g@162@01)
      (and
        (Set_in n$0@172@01 g@162@01)
        ($FVF.loc_next ($FVF.lookup_next (as sm@171@01  $FVF<next>) n$0@172@01) n$0@172@01)))
    (or (Set_in n$0@172@01 g@162@01) (not (Set_in n$0@172@01 g@162@01)))
    (=>
      (and
        (Set_in n$0@172@01 g@162@01)
        (not
          (= ($FVF.lookup_next (as sm@171@01  $FVF<next>) n$0@172@01) $Ref.null)))
      (and
        (Set_in n$0@172@01 g@162@01)
        (not
          (= ($FVF.lookup_next (as sm@171@01  $FVF<next>) n$0@172@01) $Ref.null))
        ($FVF.loc_next ($FVF.lookup_next (as sm@171@01  $FVF<next>) n$0@172@01) n$0@172@01)))
    (or
      (not
        (and
          (Set_in n$0@172@01 g@162@01)
          (not
            (=
              ($FVF.lookup_next (as sm@171@01  $FVF<next>) n$0@172@01)
              $Ref.null))))
      (and
        (Set_in n$0@172@01 g@162@01)
        (not
          (= ($FVF.lookup_next (as sm@171@01  $FVF<next>) n$0@172@01) $Ref.null)))))
  :pattern ((Set_in n$0@172@01 g@162@01) ($FVF.loc_next ($FVF.lookup_next (as sm@171@01  $FVF<next>) n$0@172@01) n$0@172@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/graphs/static/outlines/list_append.vpr@322@14@322@22-aux|)))
(assert (forall ((n$0@172@01 $Ref)) (!
  (=>
    (and
      (Set_in n$0@172@01 g@162@01)
      (not
        (= ($FVF.lookup_next (as sm@171@01  $FVF<next>) n$0@172@01) $Ref.null)))
    (Set_in ($FVF.lookup_next (as sm@171@01  $FVF<next>) n$0@172@01) g@162@01))
  :pattern ((Set_in ($FVF.lookup_next (as sm@171@01  $FVF<next>) n$0@172@01) g@162@01))
  :pattern ((Set_in n$0@172@01 g@162@01) ($FVF.loc_next ($FVF.lookup_next (as sm@171@01  $FVF<next>) n$0@172@01) n$0@172@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/graphs/static/outlines/list_append.vpr@322@14@322@22|)))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second $t@166@01)))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@166@01))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@166@01)))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@166@01))))
  $Snap.unit))
; [eval] (u in g)
(assert (Set_in u@163@01 g@162@01))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@166@01))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@166@01)))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@166@01))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@166@01)))))
  $Snap.unit))
; [eval] (w in g)
(assert (Set_in w@164@01 g@162@01))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@166@01)))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@166@01))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@166@01)))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@166@01))))))
  $Snap.unit))
; [eval] (v in g)
(assert (Set_in v@165@01 g@162@01))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@166@01))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@166@01)))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@166@01))))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@166@01)))))))
  $Snap.unit))
; [eval] exists_path($$(g), u, w)
; [eval] $$(g)
(push) ; 2
(declare-const n@173@01 $Ref)
(push) ; 3
; [eval] (n in refs)
(assert (Set_in n@173@01 g@162@01))
(pop) ; 3
(declare-fun inv@174@01 ($Ref) $Ref)
(declare-fun img@175@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
; Definitional axioms for snapshot map domain
; Definitional axioms for snapshot map values
; Check receiver injectivity
(push) ; 3
(assert (not (forall ((n1@173@01 $Ref) (n2@173@01 $Ref)) (!
  (=>
    (and
      (and
        (Set_in n1@173@01 g@162@01)
        ($FVF.loc_next ($FVF.lookup_next (as sm@171@01  $FVF<next>) n1@173@01) n1@173@01))
      (and
        (Set_in n2@173@01 g@162@01)
        ($FVF.loc_next ($FVF.lookup_next (as sm@171@01  $FVF<next>) n2@173@01) n2@173@01))
      (= n1@173@01 n2@173@01))
    (= n1@173@01 n2@173@01))
  
  :qid |next-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((n@173@01 $Ref)) (!
  (=>
    (Set_in n@173@01 g@162@01)
    (and (= (inv@174@01 n@173@01) n@173@01) (img@175@01 n@173@01)))
  :pattern ((Set_in n@173@01 g@162@01))
  :pattern ((inv@174@01 n@173@01))
  :pattern ((img@175@01 n@173@01))
  :qid |next-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=> (and (img@175@01 r) (Set_in (inv@174@01 r) g@162@01)) (= (inv@174@01 r) r))
  :pattern ((inv@174@01 r))
  :qid |next-fctOfInv|)))
(assert (forall ((r $Ref)) (!
  (=>
    (Set_in (inv@174@01 r) g@162@01)
    ($FVF.loc_next ($FVF.lookup_next (as sm@171@01  $FVF<next>) r) r))
  :pattern ((inv@174@01 r))
  :qid |quant-u-15569|)))
(push) ; 3
(assert (not (forall ((r $Ref)) (!
  (=>
    (and (Set_in (inv@174@01 r) g@162@01) (img@175@01 r) (= r (inv@174@01 r)))
    (>
      (ite
        (and (img@170@01 r) (Set_in (inv@169@01 r) g@162@01))
        $Perm.Write
        $Perm.No)
      $Perm.No))
  
  :qid |quant-u-15570|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(declare-const sm@176@01 $FVF<next>)
; Definitional axioms for snapshot map domain
(assert (forall ((r $Ref)) (!
  (and
    (=>
      (Set_in r ($FVF.domain_next (as sm@176@01  $FVF<next>)))
      (and (Set_in (inv@174@01 r) g@162@01) (img@175@01 r)))
    (=>
      (and (Set_in (inv@174@01 r) g@162@01) (img@175@01 r))
      (Set_in r ($FVF.domain_next (as sm@176@01  $FVF<next>)))))
  :pattern ((Set_in r ($FVF.domain_next (as sm@176@01  $FVF<next>))))
  :qid |qp.fvfDomDef97|)))
; Definitional axioms for snapshot map values
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and (Set_in (inv@174@01 r) g@162@01) (img@175@01 r))
      (and (img@170@01 r) (Set_in (inv@169@01 r) g@162@01)))
    (=
      ($FVF.lookup_next (as sm@176@01  $FVF<next>) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@166@01))) r)))
  :pattern (($FVF.lookup_next (as sm@176@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@166@01))) r))
  :qid |qp.fvfValDef95|)))
(assert (forall ((r $Ref)) (!
  ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@166@01))) r) r)
  :pattern (($FVF.lookup_next (as sm@176@01  $FVF<next>) r))
  :qid |qp.fvfResTrgDef96|)))
(assert ($$%precondition ($SortWrappers.$FVF<next>To$Snap (as sm@176@01  $FVF<next>)) g@162@01))
(pop) ; 2
; Joined path conditions
(assert (forall ((n@173@01 $Ref)) (!
  (=>
    (Set_in n@173@01 g@162@01)
    (and (= (inv@174@01 n@173@01) n@173@01) (img@175@01 n@173@01)))
  :pattern ((Set_in n@173@01 g@162@01))
  :pattern ((inv@174@01 n@173@01))
  :pattern ((img@175@01 n@173@01))
  :qid |next-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=> (and (img@175@01 r) (Set_in (inv@174@01 r) g@162@01)) (= (inv@174@01 r) r))
  :pattern ((inv@174@01 r))
  :qid |next-fctOfInv|)))
(assert (forall ((r $Ref)) (!
  (and
    (=>
      (Set_in r ($FVF.domain_next (as sm@176@01  $FVF<next>)))
      (and (Set_in (inv@174@01 r) g@162@01) (img@175@01 r)))
    (=>
      (and (Set_in (inv@174@01 r) g@162@01) (img@175@01 r))
      (Set_in r ($FVF.domain_next (as sm@176@01  $FVF<next>)))))
  :pattern ((Set_in r ($FVF.domain_next (as sm@176@01  $FVF<next>))))
  :qid |qp.fvfDomDef97|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and (Set_in (inv@174@01 r) g@162@01) (img@175@01 r))
      (and (img@170@01 r) (Set_in (inv@169@01 r) g@162@01)))
    (=
      ($FVF.lookup_next (as sm@176@01  $FVF<next>) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@166@01))) r)))
  :pattern (($FVF.lookup_next (as sm@176@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@166@01))) r))
  :qid |qp.fvfValDef95|)))
(assert (forall ((r $Ref)) (!
  ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@166@01))) r) r)
  :pattern (($FVF.lookup_next (as sm@176@01  $FVF<next>) r))
  :qid |qp.fvfResTrgDef96|)))
(assert (and
  (forall ((r $Ref)) (!
    (=>
      (Set_in (inv@174@01 r) g@162@01)
      ($FVF.loc_next ($FVF.lookup_next (as sm@171@01  $FVF<next>) r) r))
    :pattern ((inv@174@01 r))
    :qid |quant-u-15569|))
  ($$%precondition ($SortWrappers.$FVF<next>To$Snap (as sm@176@01  $FVF<next>)) g@162@01)))
(assert (exists_path<Bool> ($$ ($SortWrappers.$FVF<next>To$Snap (as sm@176@01  $FVF<next>)) g@162@01) u@163@01 w@164@01))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@166@01)))))))
  $Snap.unit))
; [eval] exists_path($$(g), w, v)
; [eval] $$(g)
(push) ; 2
(declare-const n@177@01 $Ref)
(push) ; 3
; [eval] (n in refs)
(assert (Set_in n@177@01 g@162@01))
(pop) ; 3
(declare-fun inv@178@01 ($Ref) $Ref)
(declare-fun img@179@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
(declare-const sm@180@01 $FVF<next>)
; Definitional axioms for snapshot map domain
; Definitional axioms for snapshot map values
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@170@01 r) (Set_in (inv@169@01 r) g@162@01))
    (=
      ($FVF.lookup_next (as sm@180@01  $FVF<next>) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@166@01))) r)))
  :pattern (($FVF.lookup_next (as sm@180@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@166@01))) r))
  :qid |qp.fvfValDef98|)))
(assert (forall ((r $Ref)) (!
  ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@166@01))) r) r)
  :pattern (($FVF.lookup_next (as sm@180@01  $FVF<next>) r))
  :qid |qp.fvfResTrgDef99|)))
; Check receiver injectivity
(push) ; 3
(assert (not (forall ((n1@177@01 $Ref) (n2@177@01 $Ref)) (!
  (=>
    (and
      (and
        (Set_in n1@177@01 g@162@01)
        ($FVF.loc_next ($FVF.lookup_next (as sm@180@01  $FVF<next>) n1@177@01) n1@177@01))
      (and
        (Set_in n2@177@01 g@162@01)
        ($FVF.loc_next ($FVF.lookup_next (as sm@180@01  $FVF<next>) n2@177@01) n2@177@01))
      (= n1@177@01 n2@177@01))
    (= n1@177@01 n2@177@01))
  
  :qid |next-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((n@177@01 $Ref)) (!
  (=>
    (Set_in n@177@01 g@162@01)
    (and (= (inv@178@01 n@177@01) n@177@01) (img@179@01 n@177@01)))
  :pattern ((Set_in n@177@01 g@162@01))
  :pattern ((inv@178@01 n@177@01))
  :pattern ((img@179@01 n@177@01))
  :qid |next-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=> (and (img@179@01 r) (Set_in (inv@178@01 r) g@162@01)) (= (inv@178@01 r) r))
  :pattern ((inv@178@01 r))
  :qid |next-fctOfInv|)))
(assert (forall ((r $Ref)) (!
  (=>
    (Set_in (inv@178@01 r) g@162@01)
    ($FVF.loc_next ($FVF.lookup_next (as sm@180@01  $FVF<next>) r) r))
  :pattern ((inv@178@01 r))
  :qid |quant-u-15572|)))
(push) ; 3
(assert (not (forall ((r $Ref)) (!
  (=>
    (and (Set_in (inv@178@01 r) g@162@01) (img@179@01 r) (= r (inv@178@01 r)))
    (>
      (ite
        (and (img@170@01 r) (Set_in (inv@169@01 r) g@162@01))
        $Perm.Write
        $Perm.No)
      $Perm.No))
  
  :qid |quant-u-15573|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(declare-const sm@181@01 $FVF<next>)
; Definitional axioms for snapshot map domain
(assert (forall ((r $Ref)) (!
  (and
    (=>
      (Set_in r ($FVF.domain_next (as sm@181@01  $FVF<next>)))
      (and (Set_in (inv@178@01 r) g@162@01) (img@179@01 r)))
    (=>
      (and (Set_in (inv@178@01 r) g@162@01) (img@179@01 r))
      (Set_in r ($FVF.domain_next (as sm@181@01  $FVF<next>)))))
  :pattern ((Set_in r ($FVF.domain_next (as sm@181@01  $FVF<next>))))
  :qid |qp.fvfDomDef102|)))
; Definitional axioms for snapshot map values
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and (Set_in (inv@178@01 r) g@162@01) (img@179@01 r))
      (and (img@170@01 r) (Set_in (inv@169@01 r) g@162@01)))
    (=
      ($FVF.lookup_next (as sm@181@01  $FVF<next>) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@166@01))) r)))
  :pattern (($FVF.lookup_next (as sm@181@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@166@01))) r))
  :qid |qp.fvfValDef100|)))
(assert (forall ((r $Ref)) (!
  ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@166@01))) r) r)
  :pattern (($FVF.lookup_next (as sm@181@01  $FVF<next>) r))
  :qid |qp.fvfResTrgDef101|)))
(assert ($$%precondition ($SortWrappers.$FVF<next>To$Snap (as sm@181@01  $FVF<next>)) g@162@01))
(pop) ; 2
; Joined path conditions
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@170@01 r) (Set_in (inv@169@01 r) g@162@01))
    (=
      ($FVF.lookup_next (as sm@180@01  $FVF<next>) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@166@01))) r)))
  :pattern (($FVF.lookup_next (as sm@180@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@166@01))) r))
  :qid |qp.fvfValDef98|)))
(assert (forall ((r $Ref)) (!
  ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@166@01))) r) r)
  :pattern (($FVF.lookup_next (as sm@180@01  $FVF<next>) r))
  :qid |qp.fvfResTrgDef99|)))
(assert (forall ((n@177@01 $Ref)) (!
  (=>
    (Set_in n@177@01 g@162@01)
    (and (= (inv@178@01 n@177@01) n@177@01) (img@179@01 n@177@01)))
  :pattern ((Set_in n@177@01 g@162@01))
  :pattern ((inv@178@01 n@177@01))
  :pattern ((img@179@01 n@177@01))
  :qid |next-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=> (and (img@179@01 r) (Set_in (inv@178@01 r) g@162@01)) (= (inv@178@01 r) r))
  :pattern ((inv@178@01 r))
  :qid |next-fctOfInv|)))
(assert (forall ((r $Ref)) (!
  (and
    (=>
      (Set_in r ($FVF.domain_next (as sm@181@01  $FVF<next>)))
      (and (Set_in (inv@178@01 r) g@162@01) (img@179@01 r)))
    (=>
      (and (Set_in (inv@178@01 r) g@162@01) (img@179@01 r))
      (Set_in r ($FVF.domain_next (as sm@181@01  $FVF<next>)))))
  :pattern ((Set_in r ($FVF.domain_next (as sm@181@01  $FVF<next>))))
  :qid |qp.fvfDomDef102|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and (Set_in (inv@178@01 r) g@162@01) (img@179@01 r))
      (and (img@170@01 r) (Set_in (inv@169@01 r) g@162@01)))
    (=
      ($FVF.lookup_next (as sm@181@01  $FVF<next>) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@166@01))) r)))
  :pattern (($FVF.lookup_next (as sm@181@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@166@01))) r))
  :qid |qp.fvfValDef100|)))
(assert (forall ((r $Ref)) (!
  ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@166@01))) r) r)
  :pattern (($FVF.lookup_next (as sm@181@01  $FVF<next>) r))
  :qid |qp.fvfResTrgDef101|)))
(assert (and
  (forall ((r $Ref)) (!
    (=>
      (Set_in (inv@178@01 r) g@162@01)
      ($FVF.loc_next ($FVF.lookup_next (as sm@180@01  $FVF<next>) r) r))
    :pattern ((inv@178@01 r))
    :qid |quant-u-15572|))
  ($$%precondition ($SortWrappers.$FVF<next>To$Snap (as sm@181@01  $FVF<next>)) g@162@01)))
(assert (exists_path<Bool> ($$ ($SortWrappers.$FVF<next>To$Snap (as sm@181@01  $FVF<next>)) g@162@01) w@164@01 v@165@01))
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
(set-option :timeout 0)
(push) ; 2
(declare-const $t@182@01 $Snap)
(assert (= $t@182@01 ($Snap.combine ($Snap.first $t@182@01) ($Snap.second $t@182@01))))
(assert (= ($Snap.first $t@182@01) $Snap.unit))
; [eval] !((null in g))
; [eval] (null in g)
(assert (=
  ($Snap.second $t@182@01)
  ($Snap.combine
    ($Snap.first ($Snap.second $t@182@01))
    ($Snap.second ($Snap.second $t@182@01)))))
(declare-const n$1@183@01 $Ref)
(push) ; 3
; [eval] (n$1 in g)
(assert (Set_in n$1@183@01 g@162@01))
(declare-const sm@184@01 $FVF<next>)
; Definitional axioms for snapshot map values
(pop) ; 3
(declare-fun inv@185@01 ($Ref) $Ref)
(declare-fun img@186@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
; Check receiver injectivity
(push) ; 3
(assert (not (forall ((n$11@183@01 $Ref) (n$12@183@01 $Ref)) (!
  (=>
    (and
      (Set_in n$11@183@01 g@162@01)
      (Set_in n$12@183@01 g@162@01)
      (= n$11@183@01 n$12@183@01))
    (= n$11@183@01 n$12@183@01))
  
  :qid |next-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((n$1@183@01 $Ref)) (!
  (=>
    (Set_in n$1@183@01 g@162@01)
    (and (= (inv@185@01 n$1@183@01) n$1@183@01) (img@186@01 n$1@183@01)))
  :pattern (($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@182@01))) n$1@183@01) n$1@183@01))
  :qid |quant-u-15575|)))
(assert (forall ((r $Ref)) (!
  (=> (and (img@186@01 r) (Set_in (inv@185@01 r) g@162@01)) (= (inv@185@01 r) r))
  :pattern ((inv@185@01 r))
  :qid |next-fctOfInv|)))
; Permissions are non-negative
; Field permissions are at most one
; Permission implies non-null receiver
(assert (forall ((n$1@183@01 $Ref)) (!
  (=> (Set_in n$1@183@01 g@162@01) (not (= n$1@183@01 $Ref.null)))
  :pattern (($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@182@01))) n$1@183@01) n$1@183@01))
  :qid |next-permImpliesNonNull|)))
(declare-const sm@187@01 $FVF<next>)
; Definitional axioms for snapshot map values
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@186@01 r) (Set_in (inv@185@01 r) g@162@01))
    (=
      ($FVF.lookup_next (as sm@187@01  $FVF<next>) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@182@01))) r)))
  :pattern (($FVF.lookup_next (as sm@187@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@182@01))) r))
  :qid |qp.fvfValDef104|)))
(assert (forall ((r $Ref)) (!
  ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@182@01))) r) r)
  :pattern (($FVF.lookup_next (as sm@187@01  $FVF<next>) r))
  :qid |qp.fvfResTrgDef105|)))
(assert (forall ((r $Ref)) (!
  (=>
    (Set_in (inv@185@01 r) g@162@01)
    ($FVF.loc_next ($FVF.lookup_next (as sm@187@01  $FVF<next>) r) r))
  :pattern ((inv@185@01 r))
  :qid |quant-u-15576|)))
(assert (=
  ($Snap.second ($Snap.second $t@182@01))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second $t@182@01)))
    ($Snap.second ($Snap.second ($Snap.second $t@182@01))))))
(assert (= ($Snap.first ($Snap.second ($Snap.second $t@182@01))) $Snap.unit))
; [eval] (forall n$2: Ref :: { (n$2.next in g) } { (n$2 in g), n$2.next } (n$2 in g) && n$2.next != null ==> (n$2.next in g))
(declare-const n$2@188@01 $Ref)
(push) ; 3
; [eval] (n$2 in g) && n$2.next != null ==> (n$2.next in g)
; [eval] (n$2 in g) && n$2.next != null
; [eval] (n$2 in g)
(push) ; 4
; [then-branch: 26 | !(n$2@188@01 in g@162@01) | live]
; [else-branch: 26 | n$2@188@01 in g@162@01 | live]
(push) ; 5
; [then-branch: 26 | !(n$2@188@01 in g@162@01)]
(assert (not (Set_in n$2@188@01 g@162@01)))
(pop) ; 5
(push) ; 5
; [else-branch: 26 | n$2@188@01 in g@162@01]
(assert (Set_in n$2@188@01 g@162@01))
; [eval] n$2.next != null
(assert (and
  (forall ((r $Ref)) (!
    (=>
      (and (img@186@01 r) (Set_in (inv@185@01 r) g@162@01))
      (=
        ($FVF.lookup_next (as sm@187@01  $FVF<next>) r)
        ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@182@01))) r)))
    :pattern (($FVF.lookup_next (as sm@187@01  $FVF<next>) r))
    :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@182@01))) r))
    :qid |qp.fvfValDef104|))
  (forall ((r $Ref)) (!
    ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@182@01))) r) r)
    :pattern (($FVF.lookup_next (as sm@187@01  $FVF<next>) r))
    :qid |qp.fvfResTrgDef105|))))
(assert ($FVF.loc_next ($FVF.lookup_next (as sm@187@01  $FVF<next>) n$2@188@01) n$2@188@01))
(push) ; 6
(assert (not (and (img@186@01 n$2@188@01) (Set_in (inv@185@01 n$2@188@01) g@162@01))))
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
    (and (img@186@01 r) (Set_in (inv@185@01 r) g@162@01))
    (=
      ($FVF.lookup_next (as sm@187@01  $FVF<next>) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@182@01))) r)))
  :pattern (($FVF.lookup_next (as sm@187@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@182@01))) r))
  :qid |qp.fvfValDef104|)))
(assert (forall ((r $Ref)) (!
  ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@182@01))) r) r)
  :pattern (($FVF.lookup_next (as sm@187@01  $FVF<next>) r))
  :qid |qp.fvfResTrgDef105|)))
(assert (=>
  (Set_in n$2@188@01 g@162@01)
  (and
    (Set_in n$2@188@01 g@162@01)
    ($FVF.loc_next ($FVF.lookup_next (as sm@187@01  $FVF<next>) n$2@188@01) n$2@188@01))))
(assert (or (Set_in n$2@188@01 g@162@01) (not (Set_in n$2@188@01 g@162@01))))
(push) ; 4
; [then-branch: 27 | n$2@188@01 in g@162@01 && Lookup(next, sm@187@01, n$2@188@01) != Null | live]
; [else-branch: 27 | !(n$2@188@01 in g@162@01 && Lookup(next, sm@187@01, n$2@188@01) != Null) | live]
(push) ; 5
; [then-branch: 27 | n$2@188@01 in g@162@01 && Lookup(next, sm@187@01, n$2@188@01) != Null]
(assert (and
  (Set_in n$2@188@01 g@162@01)
  (not (= ($FVF.lookup_next (as sm@187@01  $FVF<next>) n$2@188@01) $Ref.null))))
; [eval] (n$2.next in g)
(assert (and
  (forall ((r $Ref)) (!
    (=>
      (and (img@186@01 r) (Set_in (inv@185@01 r) g@162@01))
      (=
        ($FVF.lookup_next (as sm@187@01  $FVF<next>) r)
        ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@182@01))) r)))
    :pattern (($FVF.lookup_next (as sm@187@01  $FVF<next>) r))
    :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@182@01))) r))
    :qid |qp.fvfValDef104|))
  (forall ((r $Ref)) (!
    ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@182@01))) r) r)
    :pattern (($FVF.lookup_next (as sm@187@01  $FVF<next>) r))
    :qid |qp.fvfResTrgDef105|))))
(assert ($FVF.loc_next ($FVF.lookup_next (as sm@187@01  $FVF<next>) n$2@188@01) n$2@188@01))
(push) ; 6
(assert (not (and (img@186@01 n$2@188@01) (Set_in (inv@185@01 n$2@188@01) g@162@01))))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(pop) ; 5
(push) ; 5
; [else-branch: 27 | !(n$2@188@01 in g@162@01 && Lookup(next, sm@187@01, n$2@188@01) != Null)]
(assert (not
  (and
    (Set_in n$2@188@01 g@162@01)
    (not (= ($FVF.lookup_next (as sm@187@01  $FVF<next>) n$2@188@01) $Ref.null)))))
(pop) ; 5
(pop) ; 4
; Joined path conditions
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@186@01 r) (Set_in (inv@185@01 r) g@162@01))
    (=
      ($FVF.lookup_next (as sm@187@01  $FVF<next>) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@182@01))) r)))
  :pattern (($FVF.lookup_next (as sm@187@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@182@01))) r))
  :qid |qp.fvfValDef104|)))
(assert (forall ((r $Ref)) (!
  ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@182@01))) r) r)
  :pattern (($FVF.lookup_next (as sm@187@01  $FVF<next>) r))
  :qid |qp.fvfResTrgDef105|)))
(assert (=>
  (and
    (Set_in n$2@188@01 g@162@01)
    (not (= ($FVF.lookup_next (as sm@187@01  $FVF<next>) n$2@188@01) $Ref.null)))
  (and
    (Set_in n$2@188@01 g@162@01)
    (not (= ($FVF.lookup_next (as sm@187@01  $FVF<next>) n$2@188@01) $Ref.null))
    ($FVF.loc_next ($FVF.lookup_next (as sm@187@01  $FVF<next>) n$2@188@01) n$2@188@01))))
; Joined path conditions
(assert (or
  (not
    (and
      (Set_in n$2@188@01 g@162@01)
      (not
        (= ($FVF.lookup_next (as sm@187@01  $FVF<next>) n$2@188@01) $Ref.null))))
  (and
    (Set_in n$2@188@01 g@162@01)
    (not (= ($FVF.lookup_next (as sm@187@01  $FVF<next>) n$2@188@01) $Ref.null)))))
; Definitional axioms for snapshot map values
(pop) ; 3
; Nested auxiliary terms: globals (aux)
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@186@01 r) (Set_in (inv@185@01 r) g@162@01))
    (=
      ($FVF.lookup_next (as sm@187@01  $FVF<next>) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@182@01))) r)))
  :pattern (($FVF.lookup_next (as sm@187@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@182@01))) r))
  :qid |qp.fvfValDef104|)))
(assert (forall ((r $Ref)) (!
  ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@182@01))) r) r)
  :pattern (($FVF.lookup_next (as sm@187@01  $FVF<next>) r))
  :qid |qp.fvfResTrgDef105|)))
; Nested auxiliary terms: non-globals (aux)
(assert (forall ((n$2@188@01 $Ref)) (!
  (and
    (=>
      (Set_in n$2@188@01 g@162@01)
      (and
        (Set_in n$2@188@01 g@162@01)
        ($FVF.loc_next ($FVF.lookup_next (as sm@187@01  $FVF<next>) n$2@188@01) n$2@188@01)))
    (or (Set_in n$2@188@01 g@162@01) (not (Set_in n$2@188@01 g@162@01)))
    (=>
      (and
        (Set_in n$2@188@01 g@162@01)
        (not
          (= ($FVF.lookup_next (as sm@187@01  $FVF<next>) n$2@188@01) $Ref.null)))
      (and
        (Set_in n$2@188@01 g@162@01)
        (not
          (= ($FVF.lookup_next (as sm@187@01  $FVF<next>) n$2@188@01) $Ref.null))
        ($FVF.loc_next ($FVF.lookup_next (as sm@187@01  $FVF<next>) n$2@188@01) n$2@188@01)))
    (or
      (not
        (and
          (Set_in n$2@188@01 g@162@01)
          (not
            (=
              ($FVF.lookup_next (as sm@187@01  $FVF<next>) n$2@188@01)
              $Ref.null))))
      (and
        (Set_in n$2@188@01 g@162@01)
        (not
          (= ($FVF.lookup_next (as sm@187@01  $FVF<next>) n$2@188@01) $Ref.null)))))
  :pattern ((Set_in ($FVF.lookup_next (as sm@187@01  $FVF<next>) n$2@188@01) g@162@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/graphs/static/outlines/list_append.vpr@325@13@325@21-aux|)))
(assert (forall ((n$2@188@01 $Ref)) (!
  (and
    (=>
      (Set_in n$2@188@01 g@162@01)
      (and
        (Set_in n$2@188@01 g@162@01)
        ($FVF.loc_next ($FVF.lookup_next (as sm@187@01  $FVF<next>) n$2@188@01) n$2@188@01)))
    (or (Set_in n$2@188@01 g@162@01) (not (Set_in n$2@188@01 g@162@01)))
    (=>
      (and
        (Set_in n$2@188@01 g@162@01)
        (not
          (= ($FVF.lookup_next (as sm@187@01  $FVF<next>) n$2@188@01) $Ref.null)))
      (and
        (Set_in n$2@188@01 g@162@01)
        (not
          (= ($FVF.lookup_next (as sm@187@01  $FVF<next>) n$2@188@01) $Ref.null))
        ($FVF.loc_next ($FVF.lookup_next (as sm@187@01  $FVF<next>) n$2@188@01) n$2@188@01)))
    (or
      (not
        (and
          (Set_in n$2@188@01 g@162@01)
          (not
            (=
              ($FVF.lookup_next (as sm@187@01  $FVF<next>) n$2@188@01)
              $Ref.null))))
      (and
        (Set_in n$2@188@01 g@162@01)
        (not
          (= ($FVF.lookup_next (as sm@187@01  $FVF<next>) n$2@188@01) $Ref.null)))))
  :pattern ((Set_in n$2@188@01 g@162@01) ($FVF.loc_next ($FVF.lookup_next (as sm@187@01  $FVF<next>) n$2@188@01) n$2@188@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/graphs/static/outlines/list_append.vpr@325@13@325@21-aux|)))
(assert (forall ((n$2@188@01 $Ref)) (!
  (=>
    (and
      (Set_in n$2@188@01 g@162@01)
      (not
        (= ($FVF.lookup_next (as sm@187@01  $FVF<next>) n$2@188@01) $Ref.null)))
    (Set_in ($FVF.lookup_next (as sm@187@01  $FVF<next>) n$2@188@01) g@162@01))
  :pattern ((Set_in ($FVF.lookup_next (as sm@187@01  $FVF<next>) n$2@188@01) g@162@01))
  :pattern ((Set_in n$2@188@01 g@162@01) ($FVF.loc_next ($FVF.lookup_next (as sm@187@01  $FVF<next>) n$2@188@01) n$2@188@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/graphs/static/outlines/list_append.vpr@325@13@325@21|)))
(assert (= ($Snap.second ($Snap.second ($Snap.second $t@182@01))) $Snap.unit))
; [eval] exists_path($$(g), u, v)
; [eval] $$(g)
(push) ; 3
(declare-const n@189@01 $Ref)
(push) ; 4
; [eval] (n in refs)
(assert (Set_in n@189@01 g@162@01))
(pop) ; 4
(declare-fun inv@190@01 ($Ref) $Ref)
(declare-fun img@191@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
; Definitional axioms for snapshot map domain
; Definitional axioms for snapshot map values
; Check receiver injectivity
(push) ; 4
(assert (not (forall ((n1@189@01 $Ref) (n2@189@01 $Ref)) (!
  (=>
    (and
      (and
        (Set_in n1@189@01 g@162@01)
        ($FVF.loc_next ($FVF.lookup_next (as sm@187@01  $FVF<next>) n1@189@01) n1@189@01))
      (and
        (Set_in n2@189@01 g@162@01)
        ($FVF.loc_next ($FVF.lookup_next (as sm@187@01  $FVF<next>) n2@189@01) n2@189@01))
      (= n1@189@01 n2@189@01))
    (= n1@189@01 n2@189@01))
  
  :qid |next-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((n@189@01 $Ref)) (!
  (=>
    (Set_in n@189@01 g@162@01)
    (and (= (inv@190@01 n@189@01) n@189@01) (img@191@01 n@189@01)))
  :pattern ((Set_in n@189@01 g@162@01))
  :pattern ((inv@190@01 n@189@01))
  :pattern ((img@191@01 n@189@01))
  :qid |next-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=> (and (img@191@01 r) (Set_in (inv@190@01 r) g@162@01)) (= (inv@190@01 r) r))
  :pattern ((inv@190@01 r))
  :qid |next-fctOfInv|)))
(assert (forall ((r $Ref)) (!
  (=>
    (Set_in (inv@190@01 r) g@162@01)
    ($FVF.loc_next ($FVF.lookup_next (as sm@187@01  $FVF<next>) r) r))
  :pattern ((inv@190@01 r))
  :qid |quant-u-15578|)))
(push) ; 4
(assert (not (forall ((r $Ref)) (!
  (=>
    (and (Set_in (inv@190@01 r) g@162@01) (img@191@01 r) (= r (inv@190@01 r)))
    (>
      (ite
        (and (img@186@01 r) (Set_in (inv@185@01 r) g@162@01))
        $Perm.Write
        $Perm.No)
      $Perm.No))
  
  :qid |quant-u-15579|))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(declare-const sm@192@01 $FVF<next>)
; Definitional axioms for snapshot map domain
(assert (forall ((r $Ref)) (!
  (and
    (=>
      (Set_in r ($FVF.domain_next (as sm@192@01  $FVF<next>)))
      (and (Set_in (inv@190@01 r) g@162@01) (img@191@01 r)))
    (=>
      (and (Set_in (inv@190@01 r) g@162@01) (img@191@01 r))
      (Set_in r ($FVF.domain_next (as sm@192@01  $FVF<next>)))))
  :pattern ((Set_in r ($FVF.domain_next (as sm@192@01  $FVF<next>))))
  :qid |qp.fvfDomDef108|)))
; Definitional axioms for snapshot map values
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and (Set_in (inv@190@01 r) g@162@01) (img@191@01 r))
      (and (img@186@01 r) (Set_in (inv@185@01 r) g@162@01)))
    (=
      ($FVF.lookup_next (as sm@192@01  $FVF<next>) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@182@01))) r)))
  :pattern (($FVF.lookup_next (as sm@192@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@182@01))) r))
  :qid |qp.fvfValDef106|)))
(assert (forall ((r $Ref)) (!
  ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@182@01))) r) r)
  :pattern (($FVF.lookup_next (as sm@192@01  $FVF<next>) r))
  :qid |qp.fvfResTrgDef107|)))
(assert ($$%precondition ($SortWrappers.$FVF<next>To$Snap (as sm@192@01  $FVF<next>)) g@162@01))
(pop) ; 3
; Joined path conditions
(assert (forall ((n@189@01 $Ref)) (!
  (=>
    (Set_in n@189@01 g@162@01)
    (and (= (inv@190@01 n@189@01) n@189@01) (img@191@01 n@189@01)))
  :pattern ((Set_in n@189@01 g@162@01))
  :pattern ((inv@190@01 n@189@01))
  :pattern ((img@191@01 n@189@01))
  :qid |next-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=> (and (img@191@01 r) (Set_in (inv@190@01 r) g@162@01)) (= (inv@190@01 r) r))
  :pattern ((inv@190@01 r))
  :qid |next-fctOfInv|)))
(assert (forall ((r $Ref)) (!
  (and
    (=>
      (Set_in r ($FVF.domain_next (as sm@192@01  $FVF<next>)))
      (and (Set_in (inv@190@01 r) g@162@01) (img@191@01 r)))
    (=>
      (and (Set_in (inv@190@01 r) g@162@01) (img@191@01 r))
      (Set_in r ($FVF.domain_next (as sm@192@01  $FVF<next>)))))
  :pattern ((Set_in r ($FVF.domain_next (as sm@192@01  $FVF<next>))))
  :qid |qp.fvfDomDef108|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and (Set_in (inv@190@01 r) g@162@01) (img@191@01 r))
      (and (img@186@01 r) (Set_in (inv@185@01 r) g@162@01)))
    (=
      ($FVF.lookup_next (as sm@192@01  $FVF<next>) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@182@01))) r)))
  :pattern (($FVF.lookup_next (as sm@192@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@182@01))) r))
  :qid |qp.fvfValDef106|)))
(assert (forall ((r $Ref)) (!
  ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@182@01))) r) r)
  :pattern (($FVF.lookup_next (as sm@192@01  $FVF<next>) r))
  :qid |qp.fvfResTrgDef107|)))
(assert (and
  (forall ((r $Ref)) (!
    (=>
      (Set_in (inv@190@01 r) g@162@01)
      ($FVF.loc_next ($FVF.lookup_next (as sm@187@01  $FVF<next>) r) r))
    :pattern ((inv@190@01 r))
    :qid |quant-u-15578|))
  ($$%precondition ($SortWrappers.$FVF<next>To$Snap (as sm@192@01  $FVF<next>)) g@162@01)))
(assert (exists_path<Bool> ($$ ($SortWrappers.$FVF<next>To$Snap (as sm@192@01  $FVF<next>)) g@162@01) u@163@01 v@165@01))
(pop) ; 2
(push) ; 2
; [exec]
; inhale apply_IND_2($$(g), Set(w), inst_uReach_rev($$(g), v))
(declare-const $t@193@01 $Snap)
(assert (= $t@193@01 $Snap.unit))
; [eval] apply_IND_2($$(g), Set(w), inst_uReach_rev($$(g), v))
; [eval] $$(g)
(push) ; 3
(declare-const n@194@01 $Ref)
(push) ; 4
; [eval] (n in refs)
(assert (Set_in n@194@01 g@162@01))
(pop) ; 4
(declare-fun inv@195@01 ($Ref) $Ref)
(declare-fun img@196@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
(declare-const sm@197@01 $FVF<next>)
; Definitional axioms for snapshot map domain
; Definitional axioms for snapshot map values
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@170@01 r) (Set_in (inv@169@01 r) g@162@01))
    (=
      ($FVF.lookup_next (as sm@197@01  $FVF<next>) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@166@01))) r)))
  :pattern (($FVF.lookup_next (as sm@197@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@166@01))) r))
  :qid |qp.fvfValDef109|)))
(assert (forall ((r $Ref)) (!
  ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@166@01))) r) r)
  :pattern (($FVF.lookup_next (as sm@197@01  $FVF<next>) r))
  :qid |qp.fvfResTrgDef110|)))
; Check receiver injectivity
(push) ; 4
(assert (not (forall ((n1@194@01 $Ref) (n2@194@01 $Ref)) (!
  (=>
    (and
      (and
        (Set_in n1@194@01 g@162@01)
        ($FVF.loc_next ($FVF.lookup_next (as sm@197@01  $FVF<next>) n1@194@01) n1@194@01))
      (and
        (Set_in n2@194@01 g@162@01)
        ($FVF.loc_next ($FVF.lookup_next (as sm@197@01  $FVF<next>) n2@194@01) n2@194@01))
      (= n1@194@01 n2@194@01))
    (= n1@194@01 n2@194@01))
  
  :qid |next-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((n@194@01 $Ref)) (!
  (=>
    (Set_in n@194@01 g@162@01)
    (and (= (inv@195@01 n@194@01) n@194@01) (img@196@01 n@194@01)))
  :pattern ((Set_in n@194@01 g@162@01))
  :pattern ((inv@195@01 n@194@01))
  :pattern ((img@196@01 n@194@01))
  :qid |next-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=> (and (img@196@01 r) (Set_in (inv@195@01 r) g@162@01)) (= (inv@195@01 r) r))
  :pattern ((inv@195@01 r))
  :qid |next-fctOfInv|)))
(assert (forall ((r $Ref)) (!
  (=>
    (Set_in (inv@195@01 r) g@162@01)
    ($FVF.loc_next ($FVF.lookup_next (as sm@197@01  $FVF<next>) r) r))
  :pattern ((inv@195@01 r))
  :qid |quant-u-15581|)))
(push) ; 4
(assert (not (forall ((r $Ref)) (!
  (=>
    (and (Set_in (inv@195@01 r) g@162@01) (img@196@01 r) (= r (inv@195@01 r)))
    (>
      (ite
        (and (img@170@01 r) (Set_in (inv@169@01 r) g@162@01))
        $Perm.Write
        $Perm.No)
      $Perm.No))
  
  :qid |quant-u-15582|))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(declare-const sm@198@01 $FVF<next>)
; Definitional axioms for snapshot map domain
(assert (forall ((r $Ref)) (!
  (and
    (=>
      (Set_in r ($FVF.domain_next (as sm@198@01  $FVF<next>)))
      (and (Set_in (inv@195@01 r) g@162@01) (img@196@01 r)))
    (=>
      (and (Set_in (inv@195@01 r) g@162@01) (img@196@01 r))
      (Set_in r ($FVF.domain_next (as sm@198@01  $FVF<next>)))))
  :pattern ((Set_in r ($FVF.domain_next (as sm@198@01  $FVF<next>))))
  :qid |qp.fvfDomDef113|)))
; Definitional axioms for snapshot map values
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and (Set_in (inv@195@01 r) g@162@01) (img@196@01 r))
      (and (img@170@01 r) (Set_in (inv@169@01 r) g@162@01)))
    (=
      ($FVF.lookup_next (as sm@198@01  $FVF<next>) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@166@01))) r)))
  :pattern (($FVF.lookup_next (as sm@198@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@166@01))) r))
  :qid |qp.fvfValDef111|)))
(assert (forall ((r $Ref)) (!
  ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@166@01))) r) r)
  :pattern (($FVF.lookup_next (as sm@198@01  $FVF<next>) r))
  :qid |qp.fvfResTrgDef112|)))
(assert ($$%precondition ($SortWrappers.$FVF<next>To$Snap (as sm@198@01  $FVF<next>)) g@162@01))
(pop) ; 3
; Joined path conditions
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@170@01 r) (Set_in (inv@169@01 r) g@162@01))
    (=
      ($FVF.lookup_next (as sm@197@01  $FVF<next>) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@166@01))) r)))
  :pattern (($FVF.lookup_next (as sm@197@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@166@01))) r))
  :qid |qp.fvfValDef109|)))
(assert (forall ((r $Ref)) (!
  ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@166@01))) r) r)
  :pattern (($FVF.lookup_next (as sm@197@01  $FVF<next>) r))
  :qid |qp.fvfResTrgDef110|)))
(assert (forall ((n@194@01 $Ref)) (!
  (=>
    (Set_in n@194@01 g@162@01)
    (and (= (inv@195@01 n@194@01) n@194@01) (img@196@01 n@194@01)))
  :pattern ((Set_in n@194@01 g@162@01))
  :pattern ((inv@195@01 n@194@01))
  :pattern ((img@196@01 n@194@01))
  :qid |next-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=> (and (img@196@01 r) (Set_in (inv@195@01 r) g@162@01)) (= (inv@195@01 r) r))
  :pattern ((inv@195@01 r))
  :qid |next-fctOfInv|)))
(assert (forall ((r $Ref)) (!
  (and
    (=>
      (Set_in r ($FVF.domain_next (as sm@198@01  $FVF<next>)))
      (and (Set_in (inv@195@01 r) g@162@01) (img@196@01 r)))
    (=>
      (and (Set_in (inv@195@01 r) g@162@01) (img@196@01 r))
      (Set_in r ($FVF.domain_next (as sm@198@01  $FVF<next>)))))
  :pattern ((Set_in r ($FVF.domain_next (as sm@198@01  $FVF<next>))))
  :qid |qp.fvfDomDef113|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and (Set_in (inv@195@01 r) g@162@01) (img@196@01 r))
      (and (img@170@01 r) (Set_in (inv@169@01 r) g@162@01)))
    (=
      ($FVF.lookup_next (as sm@198@01  $FVF<next>) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@166@01))) r)))
  :pattern (($FVF.lookup_next (as sm@198@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@166@01))) r))
  :qid |qp.fvfValDef111|)))
(assert (forall ((r $Ref)) (!
  ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@166@01))) r) r)
  :pattern (($FVF.lookup_next (as sm@198@01  $FVF<next>) r))
  :qid |qp.fvfResTrgDef112|)))
(assert (and
  (forall ((r $Ref)) (!
    (=>
      (Set_in (inv@195@01 r) g@162@01)
      ($FVF.loc_next ($FVF.lookup_next (as sm@197@01  $FVF<next>) r) r))
    :pattern ((inv@195@01 r))
    :qid |quant-u-15581|))
  ($$%precondition ($SortWrappers.$FVF<next>To$Snap (as sm@198@01  $FVF<next>)) g@162@01)))
; [eval] Set(w)
; [eval] inst_uReach_rev($$(g), v)
; [eval] $$(g)
(push) ; 3
(declare-const n@199@01 $Ref)
(push) ; 4
; [eval] (n in refs)
(assert (Set_in n@199@01 g@162@01))
(pop) ; 4
(declare-fun inv@200@01 ($Ref) $Ref)
(declare-fun img@201@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
(declare-const sm@202@01 $FVF<next>)
; Definitional axioms for snapshot map domain
; Definitional axioms for snapshot map values
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@170@01 r) (Set_in (inv@169@01 r) g@162@01))
    (=
      ($FVF.lookup_next (as sm@202@01  $FVF<next>) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@166@01))) r)))
  :pattern (($FVF.lookup_next (as sm@202@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@166@01))) r))
  :qid |qp.fvfValDef114|)))
(assert (forall ((r $Ref)) (!
  ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@166@01))) r) r)
  :pattern (($FVF.lookup_next (as sm@202@01  $FVF<next>) r))
  :qid |qp.fvfResTrgDef115|)))
; Check receiver injectivity
(push) ; 4
(assert (not (forall ((n1@199@01 $Ref) (n2@199@01 $Ref)) (!
  (=>
    (and
      (and
        (Set_in n1@199@01 g@162@01)
        ($FVF.loc_next ($FVF.lookup_next (as sm@202@01  $FVF<next>) n1@199@01) n1@199@01))
      (and
        (Set_in n2@199@01 g@162@01)
        ($FVF.loc_next ($FVF.lookup_next (as sm@202@01  $FVF<next>) n2@199@01) n2@199@01))
      (= n1@199@01 n2@199@01))
    (= n1@199@01 n2@199@01))
  
  :qid |next-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((n@199@01 $Ref)) (!
  (=>
    (Set_in n@199@01 g@162@01)
    (and (= (inv@200@01 n@199@01) n@199@01) (img@201@01 n@199@01)))
  :pattern ((Set_in n@199@01 g@162@01))
  :pattern ((inv@200@01 n@199@01))
  :pattern ((img@201@01 n@199@01))
  :qid |next-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=> (and (img@201@01 r) (Set_in (inv@200@01 r) g@162@01)) (= (inv@200@01 r) r))
  :pattern ((inv@200@01 r))
  :qid |next-fctOfInv|)))
(assert (forall ((r $Ref)) (!
  (=>
    (Set_in (inv@200@01 r) g@162@01)
    ($FVF.loc_next ($FVF.lookup_next (as sm@202@01  $FVF<next>) r) r))
  :pattern ((inv@200@01 r))
  :qid |quant-u-15584|)))
(push) ; 4
(assert (not (forall ((r $Ref)) (!
  (=>
    (and (Set_in (inv@200@01 r) g@162@01) (img@201@01 r) (= r (inv@200@01 r)))
    (>
      (ite
        (and (img@170@01 r) (Set_in (inv@169@01 r) g@162@01))
        $Perm.Write
        $Perm.No)
      $Perm.No))
  
  :qid |quant-u-15585|))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(declare-const sm@203@01 $FVF<next>)
; Definitional axioms for snapshot map domain
(assert (forall ((r $Ref)) (!
  (and
    (=>
      (Set_in r ($FVF.domain_next (as sm@203@01  $FVF<next>)))
      (and (Set_in (inv@200@01 r) g@162@01) (img@201@01 r)))
    (=>
      (and (Set_in (inv@200@01 r) g@162@01) (img@201@01 r))
      (Set_in r ($FVF.domain_next (as sm@203@01  $FVF<next>)))))
  :pattern ((Set_in r ($FVF.domain_next (as sm@203@01  $FVF<next>))))
  :qid |qp.fvfDomDef118|)))
; Definitional axioms for snapshot map values
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and (Set_in (inv@200@01 r) g@162@01) (img@201@01 r))
      (and (img@170@01 r) (Set_in (inv@169@01 r) g@162@01)))
    (=
      ($FVF.lookup_next (as sm@203@01  $FVF<next>) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@166@01))) r)))
  :pattern (($FVF.lookup_next (as sm@203@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@166@01))) r))
  :qid |qp.fvfValDef116|)))
(assert (forall ((r $Ref)) (!
  ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@166@01))) r) r)
  :pattern (($FVF.lookup_next (as sm@203@01  $FVF<next>) r))
  :qid |qp.fvfResTrgDef117|)))
(assert ($$%precondition ($SortWrappers.$FVF<next>To$Snap (as sm@203@01  $FVF<next>)) g@162@01))
(pop) ; 3
; Joined path conditions
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@170@01 r) (Set_in (inv@169@01 r) g@162@01))
    (=
      ($FVF.lookup_next (as sm@202@01  $FVF<next>) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@166@01))) r)))
  :pattern (($FVF.lookup_next (as sm@202@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@166@01))) r))
  :qid |qp.fvfValDef114|)))
(assert (forall ((r $Ref)) (!
  ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@166@01))) r) r)
  :pattern (($FVF.lookup_next (as sm@202@01  $FVF<next>) r))
  :qid |qp.fvfResTrgDef115|)))
(assert (forall ((n@199@01 $Ref)) (!
  (=>
    (Set_in n@199@01 g@162@01)
    (and (= (inv@200@01 n@199@01) n@199@01) (img@201@01 n@199@01)))
  :pattern ((Set_in n@199@01 g@162@01))
  :pattern ((inv@200@01 n@199@01))
  :pattern ((img@201@01 n@199@01))
  :qid |next-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=> (and (img@201@01 r) (Set_in (inv@200@01 r) g@162@01)) (= (inv@200@01 r) r))
  :pattern ((inv@200@01 r))
  :qid |next-fctOfInv|)))
(assert (forall ((r $Ref)) (!
  (and
    (=>
      (Set_in r ($FVF.domain_next (as sm@203@01  $FVF<next>)))
      (and (Set_in (inv@200@01 r) g@162@01) (img@201@01 r)))
    (=>
      (and (Set_in (inv@200@01 r) g@162@01) (img@201@01 r))
      (Set_in r ($FVF.domain_next (as sm@203@01  $FVF<next>)))))
  :pattern ((Set_in r ($FVF.domain_next (as sm@203@01  $FVF<next>))))
  :qid |qp.fvfDomDef118|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and (Set_in (inv@200@01 r) g@162@01) (img@201@01 r))
      (and (img@170@01 r) (Set_in (inv@169@01 r) g@162@01)))
    (=
      ($FVF.lookup_next (as sm@203@01  $FVF<next>) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@166@01))) r)))
  :pattern (($FVF.lookup_next (as sm@203@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@166@01))) r))
  :qid |qp.fvfValDef116|)))
(assert (forall ((r $Ref)) (!
  ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@166@01))) r) r)
  :pattern (($FVF.lookup_next (as sm@203@01  $FVF<next>) r))
  :qid |qp.fvfResTrgDef117|)))
(assert (and
  (forall ((r $Ref)) (!
    (=>
      (Set_in (inv@200@01 r) g@162@01)
      ($FVF.loc_next ($FVF.lookup_next (as sm@202@01  $FVF<next>) r) r))
    :pattern ((inv@200@01 r))
    :qid |quant-u-15584|))
  ($$%precondition ($SortWrappers.$FVF<next>To$Snap (as sm@203@01  $FVF<next>)) g@162@01)))
(assert (apply_IND_2<Bool> ($$ ($SortWrappers.$FVF<next>To$Snap (as sm@198@01  $FVF<next>)) g@162@01) (Set_singleton w@164@01) (inst_uReach_rev<Set<Ref>> ($$ ($SortWrappers.$FVF<next>To$Snap (as sm@203@01  $FVF<next>)) g@162@01) v@165@01)))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale apply_IND($$(g), Set(u), inst_uReach_2($$(g), u))
(declare-const $t@204@01 $Snap)
(assert (= $t@204@01 $Snap.unit))
; [eval] apply_IND($$(g), Set(u), inst_uReach_2($$(g), u))
; [eval] $$(g)
(set-option :timeout 0)
(push) ; 3
(declare-const n@205@01 $Ref)
(push) ; 4
; [eval] (n in refs)
(assert (Set_in n@205@01 g@162@01))
(pop) ; 4
(declare-fun inv@206@01 ($Ref) $Ref)
(declare-fun img@207@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
(declare-const sm@208@01 $FVF<next>)
; Definitional axioms for snapshot map domain
; Definitional axioms for snapshot map values
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@170@01 r) (Set_in (inv@169@01 r) g@162@01))
    (=
      ($FVF.lookup_next (as sm@208@01  $FVF<next>) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@166@01))) r)))
  :pattern (($FVF.lookup_next (as sm@208@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@166@01))) r))
  :qid |qp.fvfValDef119|)))
(assert (forall ((r $Ref)) (!
  ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@166@01))) r) r)
  :pattern (($FVF.lookup_next (as sm@208@01  $FVF<next>) r))
  :qid |qp.fvfResTrgDef120|)))
; Check receiver injectivity
(push) ; 4
(assert (not (forall ((n1@205@01 $Ref) (n2@205@01 $Ref)) (!
  (=>
    (and
      (and
        (Set_in n1@205@01 g@162@01)
        ($FVF.loc_next ($FVF.lookup_next (as sm@208@01  $FVF<next>) n1@205@01) n1@205@01))
      (and
        (Set_in n2@205@01 g@162@01)
        ($FVF.loc_next ($FVF.lookup_next (as sm@208@01  $FVF<next>) n2@205@01) n2@205@01))
      (= n1@205@01 n2@205@01))
    (= n1@205@01 n2@205@01))
  
  :qid |next-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((n@205@01 $Ref)) (!
  (=>
    (Set_in n@205@01 g@162@01)
    (and (= (inv@206@01 n@205@01) n@205@01) (img@207@01 n@205@01)))
  :pattern ((Set_in n@205@01 g@162@01))
  :pattern ((inv@206@01 n@205@01))
  :pattern ((img@207@01 n@205@01))
  :qid |next-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=> (and (img@207@01 r) (Set_in (inv@206@01 r) g@162@01)) (= (inv@206@01 r) r))
  :pattern ((inv@206@01 r))
  :qid |next-fctOfInv|)))
(assert (forall ((r $Ref)) (!
  (=>
    (Set_in (inv@206@01 r) g@162@01)
    ($FVF.loc_next ($FVF.lookup_next (as sm@208@01  $FVF<next>) r) r))
  :pattern ((inv@206@01 r))
  :qid |quant-u-15587|)))
(push) ; 4
(assert (not (forall ((r $Ref)) (!
  (=>
    (and (Set_in (inv@206@01 r) g@162@01) (img@207@01 r) (= r (inv@206@01 r)))
    (>
      (ite
        (and (img@170@01 r) (Set_in (inv@169@01 r) g@162@01))
        $Perm.Write
        $Perm.No)
      $Perm.No))
  
  :qid |quant-u-15588|))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(declare-const sm@209@01 $FVF<next>)
; Definitional axioms for snapshot map domain
(assert (forall ((r $Ref)) (!
  (and
    (=>
      (Set_in r ($FVF.domain_next (as sm@209@01  $FVF<next>)))
      (and (Set_in (inv@206@01 r) g@162@01) (img@207@01 r)))
    (=>
      (and (Set_in (inv@206@01 r) g@162@01) (img@207@01 r))
      (Set_in r ($FVF.domain_next (as sm@209@01  $FVF<next>)))))
  :pattern ((Set_in r ($FVF.domain_next (as sm@209@01  $FVF<next>))))
  :qid |qp.fvfDomDef123|)))
; Definitional axioms for snapshot map values
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and (Set_in (inv@206@01 r) g@162@01) (img@207@01 r))
      (and (img@170@01 r) (Set_in (inv@169@01 r) g@162@01)))
    (=
      ($FVF.lookup_next (as sm@209@01  $FVF<next>) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@166@01))) r)))
  :pattern (($FVF.lookup_next (as sm@209@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@166@01))) r))
  :qid |qp.fvfValDef121|)))
(assert (forall ((r $Ref)) (!
  ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@166@01))) r) r)
  :pattern (($FVF.lookup_next (as sm@209@01  $FVF<next>) r))
  :qid |qp.fvfResTrgDef122|)))
(assert ($$%precondition ($SortWrappers.$FVF<next>To$Snap (as sm@209@01  $FVF<next>)) g@162@01))
(pop) ; 3
; Joined path conditions
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@170@01 r) (Set_in (inv@169@01 r) g@162@01))
    (=
      ($FVF.lookup_next (as sm@208@01  $FVF<next>) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@166@01))) r)))
  :pattern (($FVF.lookup_next (as sm@208@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@166@01))) r))
  :qid |qp.fvfValDef119|)))
(assert (forall ((r $Ref)) (!
  ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@166@01))) r) r)
  :pattern (($FVF.lookup_next (as sm@208@01  $FVF<next>) r))
  :qid |qp.fvfResTrgDef120|)))
(assert (forall ((n@205@01 $Ref)) (!
  (=>
    (Set_in n@205@01 g@162@01)
    (and (= (inv@206@01 n@205@01) n@205@01) (img@207@01 n@205@01)))
  :pattern ((Set_in n@205@01 g@162@01))
  :pattern ((inv@206@01 n@205@01))
  :pattern ((img@207@01 n@205@01))
  :qid |next-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=> (and (img@207@01 r) (Set_in (inv@206@01 r) g@162@01)) (= (inv@206@01 r) r))
  :pattern ((inv@206@01 r))
  :qid |next-fctOfInv|)))
(assert (forall ((r $Ref)) (!
  (and
    (=>
      (Set_in r ($FVF.domain_next (as sm@209@01  $FVF<next>)))
      (and (Set_in (inv@206@01 r) g@162@01) (img@207@01 r)))
    (=>
      (and (Set_in (inv@206@01 r) g@162@01) (img@207@01 r))
      (Set_in r ($FVF.domain_next (as sm@209@01  $FVF<next>)))))
  :pattern ((Set_in r ($FVF.domain_next (as sm@209@01  $FVF<next>))))
  :qid |qp.fvfDomDef123|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and (Set_in (inv@206@01 r) g@162@01) (img@207@01 r))
      (and (img@170@01 r) (Set_in (inv@169@01 r) g@162@01)))
    (=
      ($FVF.lookup_next (as sm@209@01  $FVF<next>) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@166@01))) r)))
  :pattern (($FVF.lookup_next (as sm@209@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@166@01))) r))
  :qid |qp.fvfValDef121|)))
(assert (forall ((r $Ref)) (!
  ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@166@01))) r) r)
  :pattern (($FVF.lookup_next (as sm@209@01  $FVF<next>) r))
  :qid |qp.fvfResTrgDef122|)))
(assert (and
  (forall ((r $Ref)) (!
    (=>
      (Set_in (inv@206@01 r) g@162@01)
      ($FVF.loc_next ($FVF.lookup_next (as sm@208@01  $FVF<next>) r) r))
    :pattern ((inv@206@01 r))
    :qid |quant-u-15587|))
  ($$%precondition ($SortWrappers.$FVF<next>To$Snap (as sm@209@01  $FVF<next>)) g@162@01)))
; [eval] Set(u)
; [eval] inst_uReach_2($$(g), u)
; [eval] $$(g)
(push) ; 3
(declare-const n@210@01 $Ref)
(push) ; 4
; [eval] (n in refs)
(assert (Set_in n@210@01 g@162@01))
(pop) ; 4
(declare-fun inv@211@01 ($Ref) $Ref)
(declare-fun img@212@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
(declare-const sm@213@01 $FVF<next>)
; Definitional axioms for snapshot map domain
; Definitional axioms for snapshot map values
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@170@01 r) (Set_in (inv@169@01 r) g@162@01))
    (=
      ($FVF.lookup_next (as sm@213@01  $FVF<next>) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@166@01))) r)))
  :pattern (($FVF.lookup_next (as sm@213@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@166@01))) r))
  :qid |qp.fvfValDef124|)))
(assert (forall ((r $Ref)) (!
  ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@166@01))) r) r)
  :pattern (($FVF.lookup_next (as sm@213@01  $FVF<next>) r))
  :qid |qp.fvfResTrgDef125|)))
; Check receiver injectivity
(push) ; 4
(assert (not (forall ((n1@210@01 $Ref) (n2@210@01 $Ref)) (!
  (=>
    (and
      (and
        (Set_in n1@210@01 g@162@01)
        ($FVF.loc_next ($FVF.lookup_next (as sm@213@01  $FVF<next>) n1@210@01) n1@210@01))
      (and
        (Set_in n2@210@01 g@162@01)
        ($FVF.loc_next ($FVF.lookup_next (as sm@213@01  $FVF<next>) n2@210@01) n2@210@01))
      (= n1@210@01 n2@210@01))
    (= n1@210@01 n2@210@01))
  
  :qid |next-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((n@210@01 $Ref)) (!
  (=>
    (Set_in n@210@01 g@162@01)
    (and (= (inv@211@01 n@210@01) n@210@01) (img@212@01 n@210@01)))
  :pattern ((Set_in n@210@01 g@162@01))
  :pattern ((inv@211@01 n@210@01))
  :pattern ((img@212@01 n@210@01))
  :qid |next-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=> (and (img@212@01 r) (Set_in (inv@211@01 r) g@162@01)) (= (inv@211@01 r) r))
  :pattern ((inv@211@01 r))
  :qid |next-fctOfInv|)))
(assert (forall ((r $Ref)) (!
  (=>
    (Set_in (inv@211@01 r) g@162@01)
    ($FVF.loc_next ($FVF.lookup_next (as sm@213@01  $FVF<next>) r) r))
  :pattern ((inv@211@01 r))
  :qid |quant-u-15590|)))
(push) ; 4
(assert (not (forall ((r $Ref)) (!
  (=>
    (and (Set_in (inv@211@01 r) g@162@01) (img@212@01 r) (= r (inv@211@01 r)))
    (>
      (ite
        (and (img@170@01 r) (Set_in (inv@169@01 r) g@162@01))
        $Perm.Write
        $Perm.No)
      $Perm.No))
  
  :qid |quant-u-15591|))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(declare-const sm@214@01 $FVF<next>)
; Definitional axioms for snapshot map domain
(assert (forall ((r $Ref)) (!
  (and
    (=>
      (Set_in r ($FVF.domain_next (as sm@214@01  $FVF<next>)))
      (and (Set_in (inv@211@01 r) g@162@01) (img@212@01 r)))
    (=>
      (and (Set_in (inv@211@01 r) g@162@01) (img@212@01 r))
      (Set_in r ($FVF.domain_next (as sm@214@01  $FVF<next>)))))
  :pattern ((Set_in r ($FVF.domain_next (as sm@214@01  $FVF<next>))))
  :qid |qp.fvfDomDef128|)))
; Definitional axioms for snapshot map values
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and (Set_in (inv@211@01 r) g@162@01) (img@212@01 r))
      (and (img@170@01 r) (Set_in (inv@169@01 r) g@162@01)))
    (=
      ($FVF.lookup_next (as sm@214@01  $FVF<next>) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@166@01))) r)))
  :pattern (($FVF.lookup_next (as sm@214@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@166@01))) r))
  :qid |qp.fvfValDef126|)))
(assert (forall ((r $Ref)) (!
  ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@166@01))) r) r)
  :pattern (($FVF.lookup_next (as sm@214@01  $FVF<next>) r))
  :qid |qp.fvfResTrgDef127|)))
(assert ($$%precondition ($SortWrappers.$FVF<next>To$Snap (as sm@214@01  $FVF<next>)) g@162@01))
(pop) ; 3
; Joined path conditions
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@170@01 r) (Set_in (inv@169@01 r) g@162@01))
    (=
      ($FVF.lookup_next (as sm@213@01  $FVF<next>) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@166@01))) r)))
  :pattern (($FVF.lookup_next (as sm@213@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@166@01))) r))
  :qid |qp.fvfValDef124|)))
(assert (forall ((r $Ref)) (!
  ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@166@01))) r) r)
  :pattern (($FVF.lookup_next (as sm@213@01  $FVF<next>) r))
  :qid |qp.fvfResTrgDef125|)))
(assert (forall ((n@210@01 $Ref)) (!
  (=>
    (Set_in n@210@01 g@162@01)
    (and (= (inv@211@01 n@210@01) n@210@01) (img@212@01 n@210@01)))
  :pattern ((Set_in n@210@01 g@162@01))
  :pattern ((inv@211@01 n@210@01))
  :pattern ((img@212@01 n@210@01))
  :qid |next-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=> (and (img@212@01 r) (Set_in (inv@211@01 r) g@162@01)) (= (inv@211@01 r) r))
  :pattern ((inv@211@01 r))
  :qid |next-fctOfInv|)))
(assert (forall ((r $Ref)) (!
  (and
    (=>
      (Set_in r ($FVF.domain_next (as sm@214@01  $FVF<next>)))
      (and (Set_in (inv@211@01 r) g@162@01) (img@212@01 r)))
    (=>
      (and (Set_in (inv@211@01 r) g@162@01) (img@212@01 r))
      (Set_in r ($FVF.domain_next (as sm@214@01  $FVF<next>)))))
  :pattern ((Set_in r ($FVF.domain_next (as sm@214@01  $FVF<next>))))
  :qid |qp.fvfDomDef128|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and (Set_in (inv@211@01 r) g@162@01) (img@212@01 r))
      (and (img@170@01 r) (Set_in (inv@169@01 r) g@162@01)))
    (=
      ($FVF.lookup_next (as sm@214@01  $FVF<next>) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@166@01))) r)))
  :pattern (($FVF.lookup_next (as sm@214@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@166@01))) r))
  :qid |qp.fvfValDef126|)))
(assert (forall ((r $Ref)) (!
  ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@166@01))) r) r)
  :pattern (($FVF.lookup_next (as sm@214@01  $FVF<next>) r))
  :qid |qp.fvfResTrgDef127|)))
(assert (and
  (forall ((r $Ref)) (!
    (=>
      (Set_in (inv@211@01 r) g@162@01)
      ($FVF.loc_next ($FVF.lookup_next (as sm@213@01  $FVF<next>) r) r))
    :pattern ((inv@211@01 r))
    :qid |quant-u-15590|))
  ($$%precondition ($SortWrappers.$FVF<next>To$Snap (as sm@214@01  $FVF<next>)) g@162@01)))
(assert (apply_IND<Bool> ($$ ($SortWrappers.$FVF<next>To$Snap (as sm@209@01  $FVF<next>)) g@162@01) (Set_singleton u@163@01) (inst_uReach_2<Set<Ref>> ($$ ($SortWrappers.$FVF<next>To$Snap (as sm@214@01  $FVF<next>)) g@162@01) u@163@01)))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [eval] !((null in g))
; [eval] (null in g)
(declare-const n$1@215@01 $Ref)
(set-option :timeout 0)
(push) ; 3
; [eval] (n$1 in g)
(assert (Set_in n$1@215@01 g@162@01))
(declare-const sm@216@01 $FVF<next>)
; Definitional axioms for snapshot map values
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@170@01 r) (Set_in (inv@169@01 r) g@162@01))
    (=
      ($FVF.lookup_next (as sm@216@01  $FVF<next>) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@166@01))) r)))
  :pattern (($FVF.lookup_next (as sm@216@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@166@01))) r))
  :qid |qp.fvfValDef129|)))
(assert (forall ((r $Ref)) (!
  ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@166@01))) r) r)
  :pattern (($FVF.lookup_next (as sm@216@01  $FVF<next>) r))
  :qid |qp.fvfResTrgDef130|)))
(pop) ; 3
(declare-fun inv@217@01 ($Ref) $Ref)
(declare-fun img@218@01 ($Ref) Bool)
; Nested auxiliary terms: globals
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@170@01 r) (Set_in (inv@169@01 r) g@162@01))
    (=
      ($FVF.lookup_next (as sm@216@01  $FVF<next>) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@166@01))) r)))
  :pattern (($FVF.lookup_next (as sm@216@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@166@01))) r))
  :qid |qp.fvfValDef129|)))
(assert (forall ((r $Ref)) (!
  ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@166@01))) r) r)
  :pattern (($FVF.lookup_next (as sm@216@01  $FVF<next>) r))
  :qid |qp.fvfResTrgDef130|)))
; Nested auxiliary terms: non-globals
(declare-const sm@219@01 $FVF<next>)
; Definitional axioms for snapshot map values
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@170@01 r) (Set_in (inv@169@01 r) g@162@01))
    (=
      ($FVF.lookup_next (as sm@219@01  $FVF<next>) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@166@01))) r)))
  :pattern (($FVF.lookup_next (as sm@219@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@166@01))) r))
  :qid |qp.fvfValDef131|)))
(assert (forall ((r $Ref)) (!
  ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@166@01))) r) r)
  :pattern (($FVF.lookup_next (as sm@219@01  $FVF<next>) r))
  :qid |qp.fvfResTrgDef132|)))
; Check receiver injectivity
(push) ; 3
(assert (not (forall ((n$11@215@01 $Ref) (n$12@215@01 $Ref)) (!
  (=>
    (and
      (and
        (Set_in n$11@215@01 g@162@01)
        ($FVF.loc_next ($FVF.lookup_next (as sm@219@01  $FVF<next>) n$11@215@01) n$11@215@01))
      (and
        (Set_in n$12@215@01 g@162@01)
        ($FVF.loc_next ($FVF.lookup_next (as sm@219@01  $FVF<next>) n$12@215@01) n$12@215@01))
      (= n$11@215@01 n$12@215@01))
    (= n$11@215@01 n$12@215@01))
  
  :qid |next-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((n$1@215@01 $Ref)) (!
  (=>
    (Set_in n$1@215@01 g@162@01)
    (and (= (inv@217@01 n$1@215@01) n$1@215@01) (img@218@01 n$1@215@01)))
  :pattern (($FVF.loc_next ($FVF.lookup_next (as sm@216@01  $FVF<next>) n$1@215@01) n$1@215@01))
  :qid |next-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=> (and (img@218@01 r) (Set_in (inv@217@01 r) g@162@01)) (= (inv@217@01 r) r))
  :pattern ((inv@217@01 r))
  :qid |next-fctOfInv|)))
(assert (forall ((r $Ref)) (!
  (=>
    (Set_in (inv@217@01 r) g@162@01)
    ($FVF.loc_next ($FVF.lookup_next (as sm@219@01  $FVF<next>) r) r))
  :pattern ((inv@217@01 r))
  :qid |quant-u-15593|)))
; Precomputing data for removing quantified permissions
(define-fun pTaken@220@01 ((r $Ref)) $Perm
  (ite
    (and (Set_in (inv@217@01 r) g@162@01) (img@218@01 r) (= r (inv@217@01 r)))
    ($Perm.min
      (ite
        (and (img@170@01 r) (Set_in (inv@169@01 r) g@162@01))
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
        (and (img@170@01 r) (Set_in (inv@169@01 r) g@162@01))
        $Perm.Write
        $Perm.No)
      (pTaken@220@01 r))
    $Perm.No)
  
  :qid |quant-u-15595|))))
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
    (and (Set_in (inv@217@01 r) g@162@01) (img@218@01 r) (= r (inv@217@01 r)))
    (= (- $Perm.Write (pTaken@220@01 r)) $Perm.No))
  
  :qid |quant-u-15596|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Final check if taken enough permissions
; Done removing quantified permissions
; [eval] (forall n$2: Ref :: { (n$2.next in g) } { (n$2 in g), n$2.next } (n$2 in g) && n$2.next != null ==> (n$2.next in g))
(declare-const n$2@221@01 $Ref)
(set-option :timeout 0)
(push) ; 3
; [eval] (n$2 in g) && n$2.next != null ==> (n$2.next in g)
; [eval] (n$2 in g) && n$2.next != null
; [eval] (n$2 in g)
(push) ; 4
; [then-branch: 28 | !(n$2@221@01 in g@162@01) | live]
; [else-branch: 28 | n$2@221@01 in g@162@01 | live]
(push) ; 5
; [then-branch: 28 | !(n$2@221@01 in g@162@01)]
(assert (not (Set_in n$2@221@01 g@162@01)))
(pop) ; 5
(push) ; 5
; [else-branch: 28 | n$2@221@01 in g@162@01]
(assert (Set_in n$2@221@01 g@162@01))
; [eval] n$2.next != null
(assert (and
  (forall ((r $Ref)) (!
    (=>
      (and (img@170@01 r) (Set_in (inv@169@01 r) g@162@01))
      (=
        ($FVF.lookup_next (as sm@219@01  $FVF<next>) r)
        ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@166@01))) r)))
    :pattern (($FVF.lookup_next (as sm@219@01  $FVF<next>) r))
    :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@166@01))) r))
    :qid |qp.fvfValDef131|))
  (forall ((r $Ref)) (!
    ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@166@01))) r) r)
    :pattern (($FVF.lookup_next (as sm@219@01  $FVF<next>) r))
    :qid |qp.fvfResTrgDef132|))))
(assert ($FVF.loc_next ($FVF.lookup_next (as sm@219@01  $FVF<next>) n$2@221@01) n$2@221@01))
(push) ; 6
(assert (not (and (img@170@01 n$2@221@01) (Set_in (inv@169@01 n$2@221@01) g@162@01))))
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
    (and (img@170@01 r) (Set_in (inv@169@01 r) g@162@01))
    (=
      ($FVF.lookup_next (as sm@219@01  $FVF<next>) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@166@01))) r)))
  :pattern (($FVF.lookup_next (as sm@219@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@166@01))) r))
  :qid |qp.fvfValDef131|)))
(assert (forall ((r $Ref)) (!
  ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@166@01))) r) r)
  :pattern (($FVF.lookup_next (as sm@219@01  $FVF<next>) r))
  :qid |qp.fvfResTrgDef132|)))
(assert (=>
  (Set_in n$2@221@01 g@162@01)
  (and
    (Set_in n$2@221@01 g@162@01)
    ($FVF.loc_next ($FVF.lookup_next (as sm@219@01  $FVF<next>) n$2@221@01) n$2@221@01))))
(assert (or (Set_in n$2@221@01 g@162@01) (not (Set_in n$2@221@01 g@162@01))))
(push) ; 4
; [then-branch: 29 | n$2@221@01 in g@162@01 && Lookup(next, sm@219@01, n$2@221@01) != Null | live]
; [else-branch: 29 | !(n$2@221@01 in g@162@01 && Lookup(next, sm@219@01, n$2@221@01) != Null) | live]
(push) ; 5
; [then-branch: 29 | n$2@221@01 in g@162@01 && Lookup(next, sm@219@01, n$2@221@01) != Null]
(assert (and
  (Set_in n$2@221@01 g@162@01)
  (not (= ($FVF.lookup_next (as sm@219@01  $FVF<next>) n$2@221@01) $Ref.null))))
; [eval] (n$2.next in g)
(assert (and
  (forall ((r $Ref)) (!
    (=>
      (and (img@170@01 r) (Set_in (inv@169@01 r) g@162@01))
      (=
        ($FVF.lookup_next (as sm@219@01  $FVF<next>) r)
        ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@166@01))) r)))
    :pattern (($FVF.lookup_next (as sm@219@01  $FVF<next>) r))
    :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@166@01))) r))
    :qid |qp.fvfValDef131|))
  (forall ((r $Ref)) (!
    ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@166@01))) r) r)
    :pattern (($FVF.lookup_next (as sm@219@01  $FVF<next>) r))
    :qid |qp.fvfResTrgDef132|))))
(assert ($FVF.loc_next ($FVF.lookup_next (as sm@219@01  $FVF<next>) n$2@221@01) n$2@221@01))
(push) ; 6
(assert (not (and (img@170@01 n$2@221@01) (Set_in (inv@169@01 n$2@221@01) g@162@01))))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(pop) ; 5
(push) ; 5
; [else-branch: 29 | !(n$2@221@01 in g@162@01 && Lookup(next, sm@219@01, n$2@221@01) != Null)]
(assert (not
  (and
    (Set_in n$2@221@01 g@162@01)
    (not (= ($FVF.lookup_next (as sm@219@01  $FVF<next>) n$2@221@01) $Ref.null)))))
(pop) ; 5
(pop) ; 4
; Joined path conditions
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@170@01 r) (Set_in (inv@169@01 r) g@162@01))
    (=
      ($FVF.lookup_next (as sm@219@01  $FVF<next>) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@166@01))) r)))
  :pattern (($FVF.lookup_next (as sm@219@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@166@01))) r))
  :qid |qp.fvfValDef131|)))
(assert (forall ((r $Ref)) (!
  ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@166@01))) r) r)
  :pattern (($FVF.lookup_next (as sm@219@01  $FVF<next>) r))
  :qid |qp.fvfResTrgDef132|)))
(assert (=>
  (and
    (Set_in n$2@221@01 g@162@01)
    (not (= ($FVF.lookup_next (as sm@219@01  $FVF<next>) n$2@221@01) $Ref.null)))
  (and
    (Set_in n$2@221@01 g@162@01)
    (not (= ($FVF.lookup_next (as sm@219@01  $FVF<next>) n$2@221@01) $Ref.null))
    ($FVF.loc_next ($FVF.lookup_next (as sm@219@01  $FVF<next>) n$2@221@01) n$2@221@01))))
; Joined path conditions
(assert (or
  (not
    (and
      (Set_in n$2@221@01 g@162@01)
      (not
        (= ($FVF.lookup_next (as sm@219@01  $FVF<next>) n$2@221@01) $Ref.null))))
  (and
    (Set_in n$2@221@01 g@162@01)
    (not (= ($FVF.lookup_next (as sm@219@01  $FVF<next>) n$2@221@01) $Ref.null)))))
; Definitional axioms for snapshot map values
(pop) ; 3
; Nested auxiliary terms: globals (aux)
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@170@01 r) (Set_in (inv@169@01 r) g@162@01))
    (=
      ($FVF.lookup_next (as sm@219@01  $FVF<next>) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@166@01))) r)))
  :pattern (($FVF.lookup_next (as sm@219@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@166@01))) r))
  :qid |qp.fvfValDef131|)))
(assert (forall ((r $Ref)) (!
  ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@166@01))) r) r)
  :pattern (($FVF.lookup_next (as sm@219@01  $FVF<next>) r))
  :qid |qp.fvfResTrgDef132|)))
; Nested auxiliary terms: non-globals (aux)
(assert (forall ((n$2@221@01 $Ref)) (!
  (and
    (=>
      (Set_in n$2@221@01 g@162@01)
      (and
        (Set_in n$2@221@01 g@162@01)
        ($FVF.loc_next ($FVF.lookup_next (as sm@219@01  $FVF<next>) n$2@221@01) n$2@221@01)))
    (or (Set_in n$2@221@01 g@162@01) (not (Set_in n$2@221@01 g@162@01)))
    (=>
      (and
        (Set_in n$2@221@01 g@162@01)
        (not
          (= ($FVF.lookup_next (as sm@219@01  $FVF<next>) n$2@221@01) $Ref.null)))
      (and
        (Set_in n$2@221@01 g@162@01)
        (not
          (= ($FVF.lookup_next (as sm@219@01  $FVF<next>) n$2@221@01) $Ref.null))
        ($FVF.loc_next ($FVF.lookup_next (as sm@219@01  $FVF<next>) n$2@221@01) n$2@221@01)))
    (or
      (not
        (and
          (Set_in n$2@221@01 g@162@01)
          (not
            (=
              ($FVF.lookup_next (as sm@219@01  $FVF<next>) n$2@221@01)
              $Ref.null))))
      (and
        (Set_in n$2@221@01 g@162@01)
        (not
          (= ($FVF.lookup_next (as sm@219@01  $FVF<next>) n$2@221@01) $Ref.null)))))
  :pattern ((Set_in ($FVF.lookup_next (as sm@219@01  $FVF<next>) n$2@221@01) g@162@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/graphs/static/outlines/list_append.vpr@325@13@325@21-aux|)))
(assert (forall ((n$2@221@01 $Ref)) (!
  (and
    (=>
      (Set_in n$2@221@01 g@162@01)
      (and
        (Set_in n$2@221@01 g@162@01)
        ($FVF.loc_next ($FVF.lookup_next (as sm@219@01  $FVF<next>) n$2@221@01) n$2@221@01)))
    (or (Set_in n$2@221@01 g@162@01) (not (Set_in n$2@221@01 g@162@01)))
    (=>
      (and
        (Set_in n$2@221@01 g@162@01)
        (not
          (= ($FVF.lookup_next (as sm@219@01  $FVF<next>) n$2@221@01) $Ref.null)))
      (and
        (Set_in n$2@221@01 g@162@01)
        (not
          (= ($FVF.lookup_next (as sm@219@01  $FVF<next>) n$2@221@01) $Ref.null))
        ($FVF.loc_next ($FVF.lookup_next (as sm@219@01  $FVF<next>) n$2@221@01) n$2@221@01)))
    (or
      (not
        (and
          (Set_in n$2@221@01 g@162@01)
          (not
            (=
              ($FVF.lookup_next (as sm@219@01  $FVF<next>) n$2@221@01)
              $Ref.null))))
      (and
        (Set_in n$2@221@01 g@162@01)
        (not
          (= ($FVF.lookup_next (as sm@219@01  $FVF<next>) n$2@221@01) $Ref.null)))))
  :pattern ((Set_in n$2@221@01 g@162@01) ($FVF.loc_next ($FVF.lookup_next (as sm@219@01  $FVF<next>) n$2@221@01) n$2@221@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/graphs/static/outlines/list_append.vpr@325@13@325@21-aux|)))
(push) ; 3
(assert (not (forall ((n$2@221@01 $Ref)) (!
  (=>
    (and
      (Set_in n$2@221@01 g@162@01)
      (not
        (= ($FVF.lookup_next (as sm@219@01  $FVF<next>) n$2@221@01) $Ref.null)))
    (Set_in ($FVF.lookup_next (as sm@219@01  $FVF<next>) n$2@221@01) g@162@01))
  :pattern ((Set_in ($FVF.lookup_next (as sm@219@01  $FVF<next>) n$2@221@01) g@162@01))
  :pattern ((Set_in n$2@221@01 g@162@01) ($FVF.loc_next ($FVF.lookup_next (as sm@219@01  $FVF<next>) n$2@221@01) n$2@221@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/graphs/static/outlines/list_append.vpr@325@13@325@21|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(assert (forall ((n$2@221@01 $Ref)) (!
  (=>
    (and
      (Set_in n$2@221@01 g@162@01)
      (not
        (= ($FVF.lookup_next (as sm@219@01  $FVF<next>) n$2@221@01) $Ref.null)))
    (Set_in ($FVF.lookup_next (as sm@219@01  $FVF<next>) n$2@221@01) g@162@01))
  :pattern ((Set_in ($FVF.lookup_next (as sm@219@01  $FVF<next>) n$2@221@01) g@162@01))
  :pattern ((Set_in n$2@221@01 g@162@01) ($FVF.loc_next ($FVF.lookup_next (as sm@219@01  $FVF<next>) n$2@221@01) n$2@221@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/graphs/static/outlines/list_append.vpr@325@13@325@21|)))
; [eval] exists_path($$(g), u, v)
; [eval] $$(g)
(push) ; 3
(declare-const n@222@01 $Ref)
(push) ; 4
; [eval] (n in refs)
(assert (Set_in n@222@01 g@162@01))
(pop) ; 4
(declare-fun inv@223@01 ($Ref) $Ref)
(declare-fun img@224@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
; Definitional axioms for snapshot map domain
; Definitional axioms for snapshot map values
; Check receiver injectivity
(push) ; 4
(assert (not (forall ((n1@222@01 $Ref) (n2@222@01 $Ref)) (!
  (=>
    (and
      (and
        (Set_in n1@222@01 g@162@01)
        ($FVF.loc_next ($FVF.lookup_next (as sm@219@01  $FVF<next>) n1@222@01) n1@222@01))
      (and
        (Set_in n2@222@01 g@162@01)
        ($FVF.loc_next ($FVF.lookup_next (as sm@219@01  $FVF<next>) n2@222@01) n2@222@01))
      (= n1@222@01 n2@222@01))
    (= n1@222@01 n2@222@01))
  
  :qid |next-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((n@222@01 $Ref)) (!
  (=>
    (Set_in n@222@01 g@162@01)
    (and (= (inv@223@01 n@222@01) n@222@01) (img@224@01 n@222@01)))
  :pattern ((Set_in n@222@01 g@162@01))
  :pattern ((inv@223@01 n@222@01))
  :pattern ((img@224@01 n@222@01))
  :qid |next-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=> (and (img@224@01 r) (Set_in (inv@223@01 r) g@162@01)) (= (inv@223@01 r) r))
  :pattern ((inv@223@01 r))
  :qid |next-fctOfInv|)))
(assert (forall ((r $Ref)) (!
  (=>
    (Set_in (inv@223@01 r) g@162@01)
    ($FVF.loc_next ($FVF.lookup_next (as sm@219@01  $FVF<next>) r) r))
  :pattern ((inv@223@01 r))
  :qid |quant-u-15598|)))
(push) ; 4
(assert (not (forall ((r $Ref)) (!
  (=>
    (and (Set_in (inv@223@01 r) g@162@01) (img@224@01 r) (= r (inv@223@01 r)))
    (>
      (ite
        (and (img@170@01 r) (Set_in (inv@169@01 r) g@162@01))
        $Perm.Write
        $Perm.No)
      $Perm.No))
  
  :qid |quant-u-15599|))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(declare-const sm@225@01 $FVF<next>)
; Definitional axioms for snapshot map domain
(assert (forall ((r $Ref)) (!
  (and
    (=>
      (Set_in r ($FVF.domain_next (as sm@225@01  $FVF<next>)))
      (and (Set_in (inv@223@01 r) g@162@01) (img@224@01 r)))
    (=>
      (and (Set_in (inv@223@01 r) g@162@01) (img@224@01 r))
      (Set_in r ($FVF.domain_next (as sm@225@01  $FVF<next>)))))
  :pattern ((Set_in r ($FVF.domain_next (as sm@225@01  $FVF<next>))))
  :qid |qp.fvfDomDef135|)))
; Definitional axioms for snapshot map values
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and (Set_in (inv@223@01 r) g@162@01) (img@224@01 r))
      (and (img@170@01 r) (Set_in (inv@169@01 r) g@162@01)))
    (=
      ($FVF.lookup_next (as sm@225@01  $FVF<next>) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@166@01))) r)))
  :pattern (($FVF.lookup_next (as sm@225@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@166@01))) r))
  :qid |qp.fvfValDef133|)))
(assert (forall ((r $Ref)) (!
  ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@166@01))) r) r)
  :pattern (($FVF.lookup_next (as sm@225@01  $FVF<next>) r))
  :qid |qp.fvfResTrgDef134|)))
(assert ($$%precondition ($SortWrappers.$FVF<next>To$Snap (as sm@225@01  $FVF<next>)) g@162@01))
(pop) ; 3
; Joined path conditions
(assert (forall ((n@222@01 $Ref)) (!
  (=>
    (Set_in n@222@01 g@162@01)
    (and (= (inv@223@01 n@222@01) n@222@01) (img@224@01 n@222@01)))
  :pattern ((Set_in n@222@01 g@162@01))
  :pattern ((inv@223@01 n@222@01))
  :pattern ((img@224@01 n@222@01))
  :qid |next-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=> (and (img@224@01 r) (Set_in (inv@223@01 r) g@162@01)) (= (inv@223@01 r) r))
  :pattern ((inv@223@01 r))
  :qid |next-fctOfInv|)))
(assert (forall ((r $Ref)) (!
  (and
    (=>
      (Set_in r ($FVF.domain_next (as sm@225@01  $FVF<next>)))
      (and (Set_in (inv@223@01 r) g@162@01) (img@224@01 r)))
    (=>
      (and (Set_in (inv@223@01 r) g@162@01) (img@224@01 r))
      (Set_in r ($FVF.domain_next (as sm@225@01  $FVF<next>)))))
  :pattern ((Set_in r ($FVF.domain_next (as sm@225@01  $FVF<next>))))
  :qid |qp.fvfDomDef135|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and (Set_in (inv@223@01 r) g@162@01) (img@224@01 r))
      (and (img@170@01 r) (Set_in (inv@169@01 r) g@162@01)))
    (=
      ($FVF.lookup_next (as sm@225@01  $FVF<next>) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@166@01))) r)))
  :pattern (($FVF.lookup_next (as sm@225@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@166@01))) r))
  :qid |qp.fvfValDef133|)))
(assert (forall ((r $Ref)) (!
  ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@166@01))) r) r)
  :pattern (($FVF.lookup_next (as sm@225@01  $FVF<next>) r))
  :qid |qp.fvfResTrgDef134|)))
(assert (and
  (forall ((r $Ref)) (!
    (=>
      (Set_in (inv@223@01 r) g@162@01)
      ($FVF.loc_next ($FVF.lookup_next (as sm@219@01  $FVF<next>) r) r))
    :pattern ((inv@223@01 r))
    :qid |quant-u-15598|))
  ($$%precondition ($SortWrappers.$FVF<next>To$Snap (as sm@225@01  $FVF<next>)) g@162@01)))
(push) ; 3
(assert (not (exists_path<Bool> ($$ ($SortWrappers.$FVF<next>To$Snap (as sm@225@01  $FVF<next>)) g@162@01) u@163@01 v@165@01)))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(assert (exists_path<Bool> ($$ ($SortWrappers.$FVF<next>To$Snap (as sm@225@01  $FVF<next>)) g@162@01) u@163@01 v@165@01))
(pop) ; 2
(pop) ; 1
; ---------- append ----------
(declare-const g@226@01 Set<$Ref>)
(declare-const x@227@01 $Ref)
(declare-const y@228@01 $Ref)
(declare-const res@229@01 $Ref)
(declare-const last@230@01 $Ref)
(declare-const g@231@01 Set<$Ref>)
(declare-const x@232@01 $Ref)
(declare-const y@233@01 $Ref)
(declare-const res@234@01 $Ref)
(declare-const last@235@01 $Ref)
(push) ; 1
(declare-const $t@236@01 $Snap)
(assert (= $t@236@01 ($Snap.combine ($Snap.first $t@236@01) ($Snap.second $t@236@01))))
(assert (= ($Snap.first $t@236@01) $Snap.unit))
; [eval] !((null in g))
; [eval] (null in g)
(assert (not (Set_in $Ref.null g@231@01)))
(assert (=
  ($Snap.second $t@236@01)
  ($Snap.combine
    ($Snap.first ($Snap.second $t@236@01))
    ($Snap.second ($Snap.second $t@236@01)))))
(declare-const n@237@01 $Ref)
(push) ; 2
; [eval] (n in g)
(assert (Set_in n@237@01 g@231@01))
(declare-const sm@238@01 $FVF<next>)
; Definitional axioms for snapshot map values
(pop) ; 2
(declare-fun inv@239@01 ($Ref) $Ref)
(declare-fun img@240@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
; Check receiver injectivity
(push) ; 2
(assert (not (forall ((n1@237@01 $Ref) (n2@237@01 $Ref)) (!
  (=>
    (and
      (Set_in n1@237@01 g@231@01)
      (Set_in n2@237@01 g@231@01)
      (= n1@237@01 n2@237@01))
    (= n1@237@01 n2@237@01))
  
  :qid |next-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 2
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((n@237@01 $Ref)) (!
  (=>
    (Set_in n@237@01 g@231@01)
    (and (= (inv@239@01 n@237@01) n@237@01) (img@240@01 n@237@01)))
  :pattern (($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@236@01))) n@237@01) n@237@01))
  :qid |quant-u-15601|)))
(assert (forall ((r $Ref)) (!
  (=> (and (img@240@01 r) (Set_in (inv@239@01 r) g@231@01)) (= (inv@239@01 r) r))
  :pattern ((inv@239@01 r))
  :qid |next-fctOfInv|)))
; Permissions are non-negative
; Field permissions are at most one
; Permission implies non-null receiver
(assert (forall ((n@237@01 $Ref)) (!
  (=> (Set_in n@237@01 g@231@01) (not (= n@237@01 $Ref.null)))
  :pattern (($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@236@01))) n@237@01) n@237@01))
  :qid |next-permImpliesNonNull|)))
(declare-const sm@241@01 $FVF<next>)
; Definitional axioms for snapshot map values
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@240@01 r) (Set_in (inv@239@01 r) g@231@01))
    (=
      ($FVF.lookup_next (as sm@241@01  $FVF<next>) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@236@01))) r)))
  :pattern (($FVF.lookup_next (as sm@241@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@236@01))) r))
  :qid |qp.fvfValDef137|)))
(assert (forall ((r $Ref)) (!
  ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@236@01))) r) r)
  :pattern (($FVF.lookup_next (as sm@241@01  $FVF<next>) r))
  :qid |qp.fvfResTrgDef138|)))
(assert (forall ((r $Ref)) (!
  (=>
    (Set_in (inv@239@01 r) g@231@01)
    ($FVF.loc_next ($FVF.lookup_next (as sm@241@01  $FVF<next>) r) r))
  :pattern ((inv@239@01 r))
  :qid |quant-u-15602|)))
(assert (=
  ($Snap.second ($Snap.second $t@236@01))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second $t@236@01)))
    ($Snap.second ($Snap.second ($Snap.second $t@236@01))))))
(assert (= ($Snap.first ($Snap.second ($Snap.second $t@236@01))) $Snap.unit))
; [eval] (forall n$0: Ref :: { (n$0.next in g) } { (n$0 in g), n$0.next } (n$0 in g) && n$0.next != null ==> (n$0.next in g))
(declare-const n$0@242@01 $Ref)
(push) ; 2
; [eval] (n$0 in g) && n$0.next != null ==> (n$0.next in g)
; [eval] (n$0 in g) && n$0.next != null
; [eval] (n$0 in g)
(push) ; 3
; [then-branch: 30 | !(n$0@242@01 in g@231@01) | live]
; [else-branch: 30 | n$0@242@01 in g@231@01 | live]
(push) ; 4
; [then-branch: 30 | !(n$0@242@01 in g@231@01)]
(assert (not (Set_in n$0@242@01 g@231@01)))
(pop) ; 4
(push) ; 4
; [else-branch: 30 | n$0@242@01 in g@231@01]
(assert (Set_in n$0@242@01 g@231@01))
; [eval] n$0.next != null
(assert (and
  (forall ((r $Ref)) (!
    (=>
      (and (img@240@01 r) (Set_in (inv@239@01 r) g@231@01))
      (=
        ($FVF.lookup_next (as sm@241@01  $FVF<next>) r)
        ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@236@01))) r)))
    :pattern (($FVF.lookup_next (as sm@241@01  $FVF<next>) r))
    :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@236@01))) r))
    :qid |qp.fvfValDef137|))
  (forall ((r $Ref)) (!
    ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@236@01))) r) r)
    :pattern (($FVF.lookup_next (as sm@241@01  $FVF<next>) r))
    :qid |qp.fvfResTrgDef138|))))
(assert ($FVF.loc_next ($FVF.lookup_next (as sm@241@01  $FVF<next>) n$0@242@01) n$0@242@01))
(push) ; 5
(assert (not (and (img@240@01 n$0@242@01) (Set_in (inv@239@01 n$0@242@01) g@231@01))))
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
    (and (img@240@01 r) (Set_in (inv@239@01 r) g@231@01))
    (=
      ($FVF.lookup_next (as sm@241@01  $FVF<next>) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@236@01))) r)))
  :pattern (($FVF.lookup_next (as sm@241@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@236@01))) r))
  :qid |qp.fvfValDef137|)))
(assert (forall ((r $Ref)) (!
  ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@236@01))) r) r)
  :pattern (($FVF.lookup_next (as sm@241@01  $FVF<next>) r))
  :qid |qp.fvfResTrgDef138|)))
(assert (=>
  (Set_in n$0@242@01 g@231@01)
  (and
    (Set_in n$0@242@01 g@231@01)
    ($FVF.loc_next ($FVF.lookup_next (as sm@241@01  $FVF<next>) n$0@242@01) n$0@242@01))))
(assert (or (Set_in n$0@242@01 g@231@01) (not (Set_in n$0@242@01 g@231@01))))
(push) ; 3
; [then-branch: 31 | n$0@242@01 in g@231@01 && Lookup(next, sm@241@01, n$0@242@01) != Null | live]
; [else-branch: 31 | !(n$0@242@01 in g@231@01 && Lookup(next, sm@241@01, n$0@242@01) != Null) | live]
(push) ; 4
; [then-branch: 31 | n$0@242@01 in g@231@01 && Lookup(next, sm@241@01, n$0@242@01) != Null]
(assert (and
  (Set_in n$0@242@01 g@231@01)
  (not (= ($FVF.lookup_next (as sm@241@01  $FVF<next>) n$0@242@01) $Ref.null))))
; [eval] (n$0.next in g)
(assert (and
  (forall ((r $Ref)) (!
    (=>
      (and (img@240@01 r) (Set_in (inv@239@01 r) g@231@01))
      (=
        ($FVF.lookup_next (as sm@241@01  $FVF<next>) r)
        ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@236@01))) r)))
    :pattern (($FVF.lookup_next (as sm@241@01  $FVF<next>) r))
    :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@236@01))) r))
    :qid |qp.fvfValDef137|))
  (forall ((r $Ref)) (!
    ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@236@01))) r) r)
    :pattern (($FVF.lookup_next (as sm@241@01  $FVF<next>) r))
    :qid |qp.fvfResTrgDef138|))))
(assert ($FVF.loc_next ($FVF.lookup_next (as sm@241@01  $FVF<next>) n$0@242@01) n$0@242@01))
(push) ; 5
(assert (not (and (img@240@01 n$0@242@01) (Set_in (inv@239@01 n$0@242@01) g@231@01))))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(pop) ; 4
(push) ; 4
; [else-branch: 31 | !(n$0@242@01 in g@231@01 && Lookup(next, sm@241@01, n$0@242@01) != Null)]
(assert (not
  (and
    (Set_in n$0@242@01 g@231@01)
    (not (= ($FVF.lookup_next (as sm@241@01  $FVF<next>) n$0@242@01) $Ref.null)))))
(pop) ; 4
(pop) ; 3
; Joined path conditions
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@240@01 r) (Set_in (inv@239@01 r) g@231@01))
    (=
      ($FVF.lookup_next (as sm@241@01  $FVF<next>) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@236@01))) r)))
  :pattern (($FVF.lookup_next (as sm@241@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@236@01))) r))
  :qid |qp.fvfValDef137|)))
(assert (forall ((r $Ref)) (!
  ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@236@01))) r) r)
  :pattern (($FVF.lookup_next (as sm@241@01  $FVF<next>) r))
  :qid |qp.fvfResTrgDef138|)))
(assert (=>
  (and
    (Set_in n$0@242@01 g@231@01)
    (not (= ($FVF.lookup_next (as sm@241@01  $FVF<next>) n$0@242@01) $Ref.null)))
  (and
    (Set_in n$0@242@01 g@231@01)
    (not (= ($FVF.lookup_next (as sm@241@01  $FVF<next>) n$0@242@01) $Ref.null))
    ($FVF.loc_next ($FVF.lookup_next (as sm@241@01  $FVF<next>) n$0@242@01) n$0@242@01))))
; Joined path conditions
(assert (or
  (not
    (and
      (Set_in n$0@242@01 g@231@01)
      (not
        (= ($FVF.lookup_next (as sm@241@01  $FVF<next>) n$0@242@01) $Ref.null))))
  (and
    (Set_in n$0@242@01 g@231@01)
    (not (= ($FVF.lookup_next (as sm@241@01  $FVF<next>) n$0@242@01) $Ref.null)))))
; Definitional axioms for snapshot map values
(pop) ; 2
; Nested auxiliary terms: globals (aux)
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@240@01 r) (Set_in (inv@239@01 r) g@231@01))
    (=
      ($FVF.lookup_next (as sm@241@01  $FVF<next>) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@236@01))) r)))
  :pattern (($FVF.lookup_next (as sm@241@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@236@01))) r))
  :qid |qp.fvfValDef137|)))
(assert (forall ((r $Ref)) (!
  ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@236@01))) r) r)
  :pattern (($FVF.lookup_next (as sm@241@01  $FVF<next>) r))
  :qid |qp.fvfResTrgDef138|)))
; Nested auxiliary terms: non-globals (aux)
(assert (forall ((n$0@242@01 $Ref)) (!
  (and
    (=>
      (Set_in n$0@242@01 g@231@01)
      (and
        (Set_in n$0@242@01 g@231@01)
        ($FVF.loc_next ($FVF.lookup_next (as sm@241@01  $FVF<next>) n$0@242@01) n$0@242@01)))
    (or (Set_in n$0@242@01 g@231@01) (not (Set_in n$0@242@01 g@231@01)))
    (=>
      (and
        (Set_in n$0@242@01 g@231@01)
        (not
          (= ($FVF.lookup_next (as sm@241@01  $FVF<next>) n$0@242@01) $Ref.null)))
      (and
        (Set_in n$0@242@01 g@231@01)
        (not
          (= ($FVF.lookup_next (as sm@241@01  $FVF<next>) n$0@242@01) $Ref.null))
        ($FVF.loc_next ($FVF.lookup_next (as sm@241@01  $FVF<next>) n$0@242@01) n$0@242@01)))
    (or
      (not
        (and
          (Set_in n$0@242@01 g@231@01)
          (not
            (=
              ($FVF.lookup_next (as sm@241@01  $FVF<next>) n$0@242@01)
              $Ref.null))))
      (and
        (Set_in n$0@242@01 g@231@01)
        (not
          (= ($FVF.lookup_next (as sm@241@01  $FVF<next>) n$0@242@01) $Ref.null)))))
  :pattern ((Set_in ($FVF.lookup_next (as sm@241@01  $FVF<next>) n$0@242@01) g@231@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/graphs/static/outlines/list_append.vpr@340@14@340@22-aux|)))
(assert (forall ((n$0@242@01 $Ref)) (!
  (and
    (=>
      (Set_in n$0@242@01 g@231@01)
      (and
        (Set_in n$0@242@01 g@231@01)
        ($FVF.loc_next ($FVF.lookup_next (as sm@241@01  $FVF<next>) n$0@242@01) n$0@242@01)))
    (or (Set_in n$0@242@01 g@231@01) (not (Set_in n$0@242@01 g@231@01)))
    (=>
      (and
        (Set_in n$0@242@01 g@231@01)
        (not
          (= ($FVF.lookup_next (as sm@241@01  $FVF<next>) n$0@242@01) $Ref.null)))
      (and
        (Set_in n$0@242@01 g@231@01)
        (not
          (= ($FVF.lookup_next (as sm@241@01  $FVF<next>) n$0@242@01) $Ref.null))
        ($FVF.loc_next ($FVF.lookup_next (as sm@241@01  $FVF<next>) n$0@242@01) n$0@242@01)))
    (or
      (not
        (and
          (Set_in n$0@242@01 g@231@01)
          (not
            (=
              ($FVF.lookup_next (as sm@241@01  $FVF<next>) n$0@242@01)
              $Ref.null))))
      (and
        (Set_in n$0@242@01 g@231@01)
        (not
          (= ($FVF.lookup_next (as sm@241@01  $FVF<next>) n$0@242@01) $Ref.null)))))
  :pattern ((Set_in n$0@242@01 g@231@01) ($FVF.loc_next ($FVF.lookup_next (as sm@241@01  $FVF<next>) n$0@242@01) n$0@242@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/graphs/static/outlines/list_append.vpr@340@14@340@22-aux|)))
(assert (forall ((n$0@242@01 $Ref)) (!
  (=>
    (and
      (Set_in n$0@242@01 g@231@01)
      (not
        (= ($FVF.lookup_next (as sm@241@01  $FVF<next>) n$0@242@01) $Ref.null)))
    (Set_in ($FVF.lookup_next (as sm@241@01  $FVF<next>) n$0@242@01) g@231@01))
  :pattern ((Set_in ($FVF.lookup_next (as sm@241@01  $FVF<next>) n$0@242@01) g@231@01))
  :pattern ((Set_in n$0@242@01 g@231@01) ($FVF.loc_next ($FVF.lookup_next (as sm@241@01  $FVF<next>) n$0@242@01) n$0@242@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/graphs/static/outlines/list_append.vpr@340@14@340@22|)))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second $t@236@01)))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@236@01))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@236@01)))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@236@01))))
  $Snap.unit))
; [eval] (x in g)
(assert (Set_in x@232@01 g@231@01))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@236@01))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@236@01)))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@236@01))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@236@01)))))
  $Snap.unit))
; [eval] (y in g)
(assert (Set_in y@233@01 g@231@01))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@236@01)))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@236@01))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@236@01)))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@236@01))))))
  $Snap.unit))
; [eval] x != y
(assert (not (= x@232@01 y@233@01)))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@236@01))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@236@01)))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@236@01))))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@236@01)))))))
  $Snap.unit))
; [eval] (forall n: Ref :: { (n in g) } { exists_path($$(g), x, n) } { exists_path($$(g), y, n) } (n in g) ==> exists_path($$(g), x, n) || exists_path($$(g), y, n))
(declare-const n@243@01 $Ref)
(push) ; 2
; [eval] (n in g) ==> exists_path($$(g), x, n) || exists_path($$(g), y, n)
; [eval] (n in g)
(push) ; 3
; [then-branch: 32 | n@243@01 in g@231@01 | live]
; [else-branch: 32 | !(n@243@01 in g@231@01) | live]
(push) ; 4
; [then-branch: 32 | n@243@01 in g@231@01]
(assert (Set_in n@243@01 g@231@01))
; [eval] exists_path($$(g), x, n) || exists_path($$(g), y, n)
; [eval] exists_path($$(g), x, n)
; [eval] $$(g)
(push) ; 5
(declare-const n@244@01 $Ref)
(push) ; 6
; [eval] (n in refs)
(assert (Set_in n@244@01 g@231@01))
(pop) ; 6
(declare-fun inv@245@01 ($Ref) $Ref)
(declare-fun img@246@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
; Definitional axioms for snapshot map domain
; Definitional axioms for snapshot map values
; Check receiver injectivity
(push) ; 6
(assert (not (forall ((n1@244@01 $Ref) (n2@244@01 $Ref)) (!
  (=>
    (and
      (and
        (Set_in n1@244@01 g@231@01)
        ($FVF.loc_next ($FVF.lookup_next (as sm@241@01  $FVF<next>) n1@244@01) n1@244@01))
      (and
        (Set_in n2@244@01 g@231@01)
        ($FVF.loc_next ($FVF.lookup_next (as sm@241@01  $FVF<next>) n2@244@01) n2@244@01))
      (= n1@244@01 n2@244@01))
    (= n1@244@01 n2@244@01))
  
  :qid |next-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((n@244@01 $Ref)) (!
  (=>
    (Set_in n@244@01 g@231@01)
    (and (= (inv@245@01 n@244@01) n@244@01) (img@246@01 n@244@01)))
  :pattern ((Set_in n@244@01 g@231@01))
  :pattern ((inv@245@01 n@244@01))
  :pattern ((img@246@01 n@244@01))
  :qid |next-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=> (and (img@246@01 r) (Set_in (inv@245@01 r) g@231@01)) (= (inv@245@01 r) r))
  :pattern ((inv@245@01 r))
  :qid |next-fctOfInv|)))
(assert (forall ((r $Ref)) (!
  (=>
    (Set_in (inv@245@01 r) g@231@01)
    ($FVF.loc_next ($FVF.lookup_next (as sm@241@01  $FVF<next>) r) r))
  :pattern ((inv@245@01 r))
  :qid |quant-u-15604|)))
(push) ; 6
(assert (not (forall ((r $Ref)) (!
  (=>
    (and (Set_in (inv@245@01 r) g@231@01) (img@246@01 r) (= r (inv@245@01 r)))
    (>
      (ite
        (and (img@240@01 r) (Set_in (inv@239@01 r) g@231@01))
        $Perm.Write
        $Perm.No)
      $Perm.No))
  
  :qid |quant-u-15605|))))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(declare-const sm@247@01 $FVF<next>)
; Definitional axioms for snapshot map domain
(assert (forall ((r $Ref)) (!
  (and
    (=>
      (Set_in r ($FVF.domain_next (as sm@247@01  $FVF<next>)))
      (and (Set_in (inv@245@01 r) g@231@01) (img@246@01 r)))
    (=>
      (and (Set_in (inv@245@01 r) g@231@01) (img@246@01 r))
      (Set_in r ($FVF.domain_next (as sm@247@01  $FVF<next>)))))
  :pattern ((Set_in r ($FVF.domain_next (as sm@247@01  $FVF<next>))))
  :qid |qp.fvfDomDef141|)))
; Definitional axioms for snapshot map values
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and (Set_in (inv@245@01 r) g@231@01) (img@246@01 r))
      (and (img@240@01 r) (Set_in (inv@239@01 r) g@231@01)))
    (=
      ($FVF.lookup_next (as sm@247@01  $FVF<next>) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@236@01))) r)))
  :pattern (($FVF.lookup_next (as sm@247@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@236@01))) r))
  :qid |qp.fvfValDef139|)))
(assert (forall ((r $Ref)) (!
  ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@236@01))) r) r)
  :pattern (($FVF.lookup_next (as sm@247@01  $FVF<next>) r))
  :qid |qp.fvfResTrgDef140|)))
(assert ($$%precondition ($SortWrappers.$FVF<next>To$Snap (as sm@247@01  $FVF<next>)) g@231@01))
(pop) ; 5
; Joined path conditions
(assert (forall ((n@244@01 $Ref)) (!
  (=>
    (Set_in n@244@01 g@231@01)
    (and (= (inv@245@01 n@244@01) n@244@01) (img@246@01 n@244@01)))
  :pattern ((Set_in n@244@01 g@231@01))
  :pattern ((inv@245@01 n@244@01))
  :pattern ((img@246@01 n@244@01))
  :qid |next-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=> (and (img@246@01 r) (Set_in (inv@245@01 r) g@231@01)) (= (inv@245@01 r) r))
  :pattern ((inv@245@01 r))
  :qid |next-fctOfInv|)))
(assert (forall ((r $Ref)) (!
  (and
    (=>
      (Set_in r ($FVF.domain_next (as sm@247@01  $FVF<next>)))
      (and (Set_in (inv@245@01 r) g@231@01) (img@246@01 r)))
    (=>
      (and (Set_in (inv@245@01 r) g@231@01) (img@246@01 r))
      (Set_in r ($FVF.domain_next (as sm@247@01  $FVF<next>)))))
  :pattern ((Set_in r ($FVF.domain_next (as sm@247@01  $FVF<next>))))
  :qid |qp.fvfDomDef141|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and (Set_in (inv@245@01 r) g@231@01) (img@246@01 r))
      (and (img@240@01 r) (Set_in (inv@239@01 r) g@231@01)))
    (=
      ($FVF.lookup_next (as sm@247@01  $FVF<next>) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@236@01))) r)))
  :pattern (($FVF.lookup_next (as sm@247@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@236@01))) r))
  :qid |qp.fvfValDef139|)))
(assert (forall ((r $Ref)) (!
  ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@236@01))) r) r)
  :pattern (($FVF.lookup_next (as sm@247@01  $FVF<next>) r))
  :qid |qp.fvfResTrgDef140|)))
(assert (and
  (forall ((r $Ref)) (!
    (=>
      (Set_in (inv@245@01 r) g@231@01)
      ($FVF.loc_next ($FVF.lookup_next (as sm@241@01  $FVF<next>) r) r))
    :pattern ((inv@245@01 r))
    :qid |quant-u-15604|))
  ($$%precondition ($SortWrappers.$FVF<next>To$Snap (as sm@247@01  $FVF<next>)) g@231@01)))
(push) ; 5
; [then-branch: 33 | exists_path[Bool]($$(sm@247@01, g@231@01), x@232@01, n@243@01) | live]
; [else-branch: 33 | !(exists_path[Bool]($$(sm@247@01, g@231@01), x@232@01, n@243@01)) | live]
(push) ; 6
; [then-branch: 33 | exists_path[Bool]($$(sm@247@01, g@231@01), x@232@01, n@243@01)]
(assert (exists_path<Bool> ($$ ($SortWrappers.$FVF<next>To$Snap (as sm@247@01  $FVF<next>)) g@231@01) x@232@01 n@243@01))
(pop) ; 6
(push) ; 6
; [else-branch: 33 | !(exists_path[Bool]($$(sm@247@01, g@231@01), x@232@01, n@243@01))]
(assert (not
  (exists_path<Bool> ($$ ($SortWrappers.$FVF<next>To$Snap (as sm@247@01  $FVF<next>)) g@231@01) x@232@01 n@243@01)))
; [eval] exists_path($$(g), y, n)
; [eval] $$(g)
(push) ; 7
(declare-const n@248@01 $Ref)
(push) ; 8
; [eval] (n in refs)
(assert (Set_in n@248@01 g@231@01))
(pop) ; 8
(declare-fun inv@249@01 ($Ref) $Ref)
(declare-fun img@250@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
(declare-const sm@251@01 $FVF<next>)
; Definitional axioms for snapshot map domain
; Definitional axioms for snapshot map values
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@240@01 r) (Set_in (inv@239@01 r) g@231@01))
    (=
      ($FVF.lookup_next (as sm@251@01  $FVF<next>) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@236@01))) r)))
  :pattern (($FVF.lookup_next (as sm@251@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@236@01))) r))
  :qid |qp.fvfValDef142|)))
(assert (forall ((r $Ref)) (!
  ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@236@01))) r) r)
  :pattern (($FVF.lookup_next (as sm@251@01  $FVF<next>) r))
  :qid |qp.fvfResTrgDef143|)))
; Check receiver injectivity
(push) ; 8
(assert (not (forall ((n1@248@01 $Ref) (n2@248@01 $Ref)) (!
  (=>
    (and
      (and
        (Set_in n1@248@01 g@231@01)
        ($FVF.loc_next ($FVF.lookup_next (as sm@251@01  $FVF<next>) n1@248@01) n1@248@01))
      (and
        (Set_in n2@248@01 g@231@01)
        ($FVF.loc_next ($FVF.lookup_next (as sm@251@01  $FVF<next>) n2@248@01) n2@248@01))
      (= n1@248@01 n2@248@01))
    (= n1@248@01 n2@248@01))
  
  :qid |next-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 8
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((n@248@01 $Ref)) (!
  (=>
    (Set_in n@248@01 g@231@01)
    (and (= (inv@249@01 n@248@01) n@248@01) (img@250@01 n@248@01)))
  :pattern ((Set_in n@248@01 g@231@01))
  :pattern ((inv@249@01 n@248@01))
  :pattern ((img@250@01 n@248@01))
  :qid |next-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=> (and (img@250@01 r) (Set_in (inv@249@01 r) g@231@01)) (= (inv@249@01 r) r))
  :pattern ((inv@249@01 r))
  :qid |next-fctOfInv|)))
(assert (forall ((r $Ref)) (!
  (=>
    (Set_in (inv@249@01 r) g@231@01)
    ($FVF.loc_next ($FVF.lookup_next (as sm@251@01  $FVF<next>) r) r))
  :pattern ((inv@249@01 r))
  :qid |quant-u-15607|)))
(push) ; 8
(assert (not (forall ((r $Ref)) (!
  (=>
    (and (Set_in (inv@249@01 r) g@231@01) (img@250@01 r) (= r (inv@249@01 r)))
    (>
      (ite
        (and (img@240@01 r) (Set_in (inv@239@01 r) g@231@01))
        $Perm.Write
        $Perm.No)
      $Perm.No))
  
  :qid |quant-u-15608|))))
(check-sat)
; unsat
(pop) ; 8
; 0.00s
; (get-info :all-statistics)
(declare-const sm@252@01 $FVF<next>)
; Definitional axioms for snapshot map domain
(assert (forall ((r $Ref)) (!
  (and
    (=>
      (Set_in r ($FVF.domain_next (as sm@252@01  $FVF<next>)))
      (and (Set_in (inv@249@01 r) g@231@01) (img@250@01 r)))
    (=>
      (and (Set_in (inv@249@01 r) g@231@01) (img@250@01 r))
      (Set_in r ($FVF.domain_next (as sm@252@01  $FVF<next>)))))
  :pattern ((Set_in r ($FVF.domain_next (as sm@252@01  $FVF<next>))))
  :qid |qp.fvfDomDef146|)))
; Definitional axioms for snapshot map values
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and (Set_in (inv@249@01 r) g@231@01) (img@250@01 r))
      (and (img@240@01 r) (Set_in (inv@239@01 r) g@231@01)))
    (=
      ($FVF.lookup_next (as sm@252@01  $FVF<next>) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@236@01))) r)))
  :pattern (($FVF.lookup_next (as sm@252@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@236@01))) r))
  :qid |qp.fvfValDef144|)))
(assert (forall ((r $Ref)) (!
  ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@236@01))) r) r)
  :pattern (($FVF.lookup_next (as sm@252@01  $FVF<next>) r))
  :qid |qp.fvfResTrgDef145|)))
(assert ($$%precondition ($SortWrappers.$FVF<next>To$Snap (as sm@252@01  $FVF<next>)) g@231@01))
(pop) ; 7
; Joined path conditions
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@240@01 r) (Set_in (inv@239@01 r) g@231@01))
    (=
      ($FVF.lookup_next (as sm@251@01  $FVF<next>) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@236@01))) r)))
  :pattern (($FVF.lookup_next (as sm@251@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@236@01))) r))
  :qid |qp.fvfValDef142|)))
(assert (forall ((r $Ref)) (!
  ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@236@01))) r) r)
  :pattern (($FVF.lookup_next (as sm@251@01  $FVF<next>) r))
  :qid |qp.fvfResTrgDef143|)))
(assert (forall ((n@248@01 $Ref)) (!
  (=>
    (Set_in n@248@01 g@231@01)
    (and (= (inv@249@01 n@248@01) n@248@01) (img@250@01 n@248@01)))
  :pattern ((Set_in n@248@01 g@231@01))
  :pattern ((inv@249@01 n@248@01))
  :pattern ((img@250@01 n@248@01))
  :qid |next-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=> (and (img@250@01 r) (Set_in (inv@249@01 r) g@231@01)) (= (inv@249@01 r) r))
  :pattern ((inv@249@01 r))
  :qid |next-fctOfInv|)))
(assert (forall ((r $Ref)) (!
  (and
    (=>
      (Set_in r ($FVF.domain_next (as sm@252@01  $FVF<next>)))
      (and (Set_in (inv@249@01 r) g@231@01) (img@250@01 r)))
    (=>
      (and (Set_in (inv@249@01 r) g@231@01) (img@250@01 r))
      (Set_in r ($FVF.domain_next (as sm@252@01  $FVF<next>)))))
  :pattern ((Set_in r ($FVF.domain_next (as sm@252@01  $FVF<next>))))
  :qid |qp.fvfDomDef146|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and (Set_in (inv@249@01 r) g@231@01) (img@250@01 r))
      (and (img@240@01 r) (Set_in (inv@239@01 r) g@231@01)))
    (=
      ($FVF.lookup_next (as sm@252@01  $FVF<next>) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@236@01))) r)))
  :pattern (($FVF.lookup_next (as sm@252@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@236@01))) r))
  :qid |qp.fvfValDef144|)))
(assert (forall ((r $Ref)) (!
  ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@236@01))) r) r)
  :pattern (($FVF.lookup_next (as sm@252@01  $FVF<next>) r))
  :qid |qp.fvfResTrgDef145|)))
(assert (and
  (forall ((r $Ref)) (!
    (=>
      (Set_in (inv@249@01 r) g@231@01)
      ($FVF.loc_next ($FVF.lookup_next (as sm@251@01  $FVF<next>) r) r))
    :pattern ((inv@249@01 r))
    :qid |quant-u-15607|))
  ($$%precondition ($SortWrappers.$FVF<next>To$Snap (as sm@252@01  $FVF<next>)) g@231@01)))
(pop) ; 6
(pop) ; 5
; Joined path conditions
; Joined path conditions
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@240@01 r) (Set_in (inv@239@01 r) g@231@01))
    (=
      ($FVF.lookup_next (as sm@251@01  $FVF<next>) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@236@01))) r)))
  :pattern (($FVF.lookup_next (as sm@251@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@236@01))) r))
  :qid |qp.fvfValDef142|)))
(assert (forall ((r $Ref)) (!
  ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@236@01))) r) r)
  :pattern (($FVF.lookup_next (as sm@251@01  $FVF<next>) r))
  :qid |qp.fvfResTrgDef143|)))
(assert (forall ((n@248@01 $Ref)) (!
  (=>
    (Set_in n@248@01 g@231@01)
    (and (= (inv@249@01 n@248@01) n@248@01) (img@250@01 n@248@01)))
  :pattern ((Set_in n@248@01 g@231@01))
  :pattern ((inv@249@01 n@248@01))
  :pattern ((img@250@01 n@248@01))
  :qid |next-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=> (and (img@250@01 r) (Set_in (inv@249@01 r) g@231@01)) (= (inv@249@01 r) r))
  :pattern ((inv@249@01 r))
  :qid |next-fctOfInv|)))
(assert (forall ((r $Ref)) (!
  (and
    (=>
      (Set_in r ($FVF.domain_next (as sm@252@01  $FVF<next>)))
      (and (Set_in (inv@249@01 r) g@231@01) (img@250@01 r)))
    (=>
      (and (Set_in (inv@249@01 r) g@231@01) (img@250@01 r))
      (Set_in r ($FVF.domain_next (as sm@252@01  $FVF<next>)))))
  :pattern ((Set_in r ($FVF.domain_next (as sm@252@01  $FVF<next>))))
  :qid |qp.fvfDomDef146|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and (Set_in (inv@249@01 r) g@231@01) (img@250@01 r))
      (and (img@240@01 r) (Set_in (inv@239@01 r) g@231@01)))
    (=
      ($FVF.lookup_next (as sm@252@01  $FVF<next>) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@236@01))) r)))
  :pattern (($FVF.lookup_next (as sm@252@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@236@01))) r))
  :qid |qp.fvfValDef144|)))
(assert (forall ((r $Ref)) (!
  ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@236@01))) r) r)
  :pattern (($FVF.lookup_next (as sm@252@01  $FVF<next>) r))
  :qid |qp.fvfResTrgDef145|)))
(assert (=>
  (not
    (exists_path<Bool> ($$ ($SortWrappers.$FVF<next>To$Snap (as sm@247@01  $FVF<next>)) g@231@01) x@232@01 n@243@01))
  (and
    (not
      (exists_path<Bool> ($$ ($SortWrappers.$FVF<next>To$Snap (as sm@247@01  $FVF<next>)) g@231@01) x@232@01 n@243@01))
    (forall ((r $Ref)) (!
      (=>
        (Set_in (inv@249@01 r) g@231@01)
        ($FVF.loc_next ($FVF.lookup_next (as sm@251@01  $FVF<next>) r) r))
      :pattern ((inv@249@01 r))
      :qid |quant-u-15607|))
    ($$%precondition ($SortWrappers.$FVF<next>To$Snap (as sm@252@01  $FVF<next>)) g@231@01))))
(assert (or
  (not
    (exists_path<Bool> ($$ ($SortWrappers.$FVF<next>To$Snap (as sm@247@01  $FVF<next>)) g@231@01) x@232@01 n@243@01))
  (exists_path<Bool> ($$ ($SortWrappers.$FVF<next>To$Snap (as sm@247@01  $FVF<next>)) g@231@01) x@232@01 n@243@01)))
(pop) ; 4
(push) ; 4
; [else-branch: 32 | !(n@243@01 in g@231@01)]
(assert (not (Set_in n@243@01 g@231@01)))
(pop) ; 4
(pop) ; 3
; Joined path conditions
(assert (forall ((n@244@01 $Ref)) (!
  (=>
    (Set_in n@244@01 g@231@01)
    (and (= (inv@245@01 n@244@01) n@244@01) (img@246@01 n@244@01)))
  :pattern ((Set_in n@244@01 g@231@01))
  :pattern ((inv@245@01 n@244@01))
  :pattern ((img@246@01 n@244@01))
  :qid |next-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=> (and (img@246@01 r) (Set_in (inv@245@01 r) g@231@01)) (= (inv@245@01 r) r))
  :pattern ((inv@245@01 r))
  :qid |next-fctOfInv|)))
(assert (forall ((r $Ref)) (!
  (and
    (=>
      (Set_in r ($FVF.domain_next (as sm@247@01  $FVF<next>)))
      (and (Set_in (inv@245@01 r) g@231@01) (img@246@01 r)))
    (=>
      (and (Set_in (inv@245@01 r) g@231@01) (img@246@01 r))
      (Set_in r ($FVF.domain_next (as sm@247@01  $FVF<next>)))))
  :pattern ((Set_in r ($FVF.domain_next (as sm@247@01  $FVF<next>))))
  :qid |qp.fvfDomDef141|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and (Set_in (inv@245@01 r) g@231@01) (img@246@01 r))
      (and (img@240@01 r) (Set_in (inv@239@01 r) g@231@01)))
    (=
      ($FVF.lookup_next (as sm@247@01  $FVF<next>) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@236@01))) r)))
  :pattern (($FVF.lookup_next (as sm@247@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@236@01))) r))
  :qid |qp.fvfValDef139|)))
(assert (forall ((r $Ref)) (!
  ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@236@01))) r) r)
  :pattern (($FVF.lookup_next (as sm@247@01  $FVF<next>) r))
  :qid |qp.fvfResTrgDef140|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@240@01 r) (Set_in (inv@239@01 r) g@231@01))
    (=
      ($FVF.lookup_next (as sm@251@01  $FVF<next>) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@236@01))) r)))
  :pattern (($FVF.lookup_next (as sm@251@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@236@01))) r))
  :qid |qp.fvfValDef142|)))
(assert (forall ((r $Ref)) (!
  ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@236@01))) r) r)
  :pattern (($FVF.lookup_next (as sm@251@01  $FVF<next>) r))
  :qid |qp.fvfResTrgDef143|)))
(assert (forall ((n@248@01 $Ref)) (!
  (=>
    (Set_in n@248@01 g@231@01)
    (and (= (inv@249@01 n@248@01) n@248@01) (img@250@01 n@248@01)))
  :pattern ((Set_in n@248@01 g@231@01))
  :pattern ((inv@249@01 n@248@01))
  :pattern ((img@250@01 n@248@01))
  :qid |next-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=> (and (img@250@01 r) (Set_in (inv@249@01 r) g@231@01)) (= (inv@249@01 r) r))
  :pattern ((inv@249@01 r))
  :qid |next-fctOfInv|)))
(assert (forall ((r $Ref)) (!
  (and
    (=>
      (Set_in r ($FVF.domain_next (as sm@252@01  $FVF<next>)))
      (and (Set_in (inv@249@01 r) g@231@01) (img@250@01 r)))
    (=>
      (and (Set_in (inv@249@01 r) g@231@01) (img@250@01 r))
      (Set_in r ($FVF.domain_next (as sm@252@01  $FVF<next>)))))
  :pattern ((Set_in r ($FVF.domain_next (as sm@252@01  $FVF<next>))))
  :qid |qp.fvfDomDef146|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and (Set_in (inv@249@01 r) g@231@01) (img@250@01 r))
      (and (img@240@01 r) (Set_in (inv@239@01 r) g@231@01)))
    (=
      ($FVF.lookup_next (as sm@252@01  $FVF<next>) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@236@01))) r)))
  :pattern (($FVF.lookup_next (as sm@252@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@236@01))) r))
  :qid |qp.fvfValDef144|)))
(assert (forall ((r $Ref)) (!
  ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@236@01))) r) r)
  :pattern (($FVF.lookup_next (as sm@252@01  $FVF<next>) r))
  :qid |qp.fvfResTrgDef145|)))
(assert (=>
  (Set_in n@243@01 g@231@01)
  (and
    (Set_in n@243@01 g@231@01)
    (forall ((r $Ref)) (!
      (=>
        (Set_in (inv@245@01 r) g@231@01)
        ($FVF.loc_next ($FVF.lookup_next (as sm@241@01  $FVF<next>) r) r))
      :pattern ((inv@245@01 r))
      :qid |quant-u-15604|))
    ($$%precondition ($SortWrappers.$FVF<next>To$Snap (as sm@247@01  $FVF<next>)) g@231@01)
    (=>
      (not
        (exists_path<Bool> ($$ ($SortWrappers.$FVF<next>To$Snap (as sm@247@01  $FVF<next>)) g@231@01) x@232@01 n@243@01))
      (and
        (not
          (exists_path<Bool> ($$ ($SortWrappers.$FVF<next>To$Snap (as sm@247@01  $FVF<next>)) g@231@01) x@232@01 n@243@01))
        (forall ((r $Ref)) (!
          (=>
            (Set_in (inv@249@01 r) g@231@01)
            ($FVF.loc_next ($FVF.lookup_next (as sm@251@01  $FVF<next>) r) r))
          :pattern ((inv@249@01 r))
          :qid |quant-u-15607|))
        ($$%precondition ($SortWrappers.$FVF<next>To$Snap (as sm@252@01  $FVF<next>)) g@231@01)))
    (or
      (not
        (exists_path<Bool> ($$ ($SortWrappers.$FVF<next>To$Snap (as sm@247@01  $FVF<next>)) g@231@01) x@232@01 n@243@01))
      (exists_path<Bool> ($$ ($SortWrappers.$FVF<next>To$Snap (as sm@247@01  $FVF<next>)) g@231@01) x@232@01 n@243@01)))))
; Joined path conditions
(assert (or (not (Set_in n@243@01 g@231@01)) (Set_in n@243@01 g@231@01)))
(pop) ; 2
; Nested auxiliary terms: globals (aux)
(assert (forall ((n@244@01 $Ref)) (!
  (=>
    (Set_in n@244@01 g@231@01)
    (and (= (inv@245@01 n@244@01) n@244@01) (img@246@01 n@244@01)))
  :pattern ((Set_in n@244@01 g@231@01))
  :pattern ((inv@245@01 n@244@01))
  :pattern ((img@246@01 n@244@01))
  :qid |next-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=> (and (img@246@01 r) (Set_in (inv@245@01 r) g@231@01)) (= (inv@245@01 r) r))
  :pattern ((inv@245@01 r))
  :qid |next-fctOfInv|)))
(assert (forall ((r $Ref)) (!
  (and
    (=>
      (Set_in r ($FVF.domain_next (as sm@247@01  $FVF<next>)))
      (and (Set_in (inv@245@01 r) g@231@01) (img@246@01 r)))
    (=>
      (and (Set_in (inv@245@01 r) g@231@01) (img@246@01 r))
      (Set_in r ($FVF.domain_next (as sm@247@01  $FVF<next>)))))
  :pattern ((Set_in r ($FVF.domain_next (as sm@247@01  $FVF<next>))))
  :qid |qp.fvfDomDef141|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and (Set_in (inv@245@01 r) g@231@01) (img@246@01 r))
      (and (img@240@01 r) (Set_in (inv@239@01 r) g@231@01)))
    (=
      ($FVF.lookup_next (as sm@247@01  $FVF<next>) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@236@01))) r)))
  :pattern (($FVF.lookup_next (as sm@247@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@236@01))) r))
  :qid |qp.fvfValDef139|)))
(assert (forall ((r $Ref)) (!
  ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@236@01))) r) r)
  :pattern (($FVF.lookup_next (as sm@247@01  $FVF<next>) r))
  :qid |qp.fvfResTrgDef140|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@240@01 r) (Set_in (inv@239@01 r) g@231@01))
    (=
      ($FVF.lookup_next (as sm@251@01  $FVF<next>) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@236@01))) r)))
  :pattern (($FVF.lookup_next (as sm@251@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@236@01))) r))
  :qid |qp.fvfValDef142|)))
(assert (forall ((r $Ref)) (!
  ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@236@01))) r) r)
  :pattern (($FVF.lookup_next (as sm@251@01  $FVF<next>) r))
  :qid |qp.fvfResTrgDef143|)))
(assert (forall ((n@248@01 $Ref)) (!
  (=>
    (Set_in n@248@01 g@231@01)
    (and (= (inv@249@01 n@248@01) n@248@01) (img@250@01 n@248@01)))
  :pattern ((Set_in n@248@01 g@231@01))
  :pattern ((inv@249@01 n@248@01))
  :pattern ((img@250@01 n@248@01))
  :qid |next-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=> (and (img@250@01 r) (Set_in (inv@249@01 r) g@231@01)) (= (inv@249@01 r) r))
  :pattern ((inv@249@01 r))
  :qid |next-fctOfInv|)))
(assert (forall ((r $Ref)) (!
  (and
    (=>
      (Set_in r ($FVF.domain_next (as sm@252@01  $FVF<next>)))
      (and (Set_in (inv@249@01 r) g@231@01) (img@250@01 r)))
    (=>
      (and (Set_in (inv@249@01 r) g@231@01) (img@250@01 r))
      (Set_in r ($FVF.domain_next (as sm@252@01  $FVF<next>)))))
  :pattern ((Set_in r ($FVF.domain_next (as sm@252@01  $FVF<next>))))
  :qid |qp.fvfDomDef146|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and (Set_in (inv@249@01 r) g@231@01) (img@250@01 r))
      (and (img@240@01 r) (Set_in (inv@239@01 r) g@231@01)))
    (=
      ($FVF.lookup_next (as sm@252@01  $FVF<next>) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@236@01))) r)))
  :pattern (($FVF.lookup_next (as sm@252@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@236@01))) r))
  :qid |qp.fvfValDef144|)))
(assert (forall ((r $Ref)) (!
  ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@236@01))) r) r)
  :pattern (($FVF.lookup_next (as sm@252@01  $FVF<next>) r))
  :qid |qp.fvfResTrgDef145|)))
; Nested auxiliary terms: non-globals (aux)
(assert (forall ((n@243@01 $Ref)) (!
  (and
    (=>
      (Set_in n@243@01 g@231@01)
      (and
        (Set_in n@243@01 g@231@01)
        (forall ((r $Ref)) (!
          (=>
            (Set_in (inv@245@01 r) g@231@01)
            ($FVF.loc_next ($FVF.lookup_next (as sm@241@01  $FVF<next>) r) r))
          :pattern ((inv@245@01 r))
          :qid |quant-u-15604|))
        ($$%precondition ($SortWrappers.$FVF<next>To$Snap (as sm@247@01  $FVF<next>)) g@231@01)
        (=>
          (not
            (exists_path<Bool> ($$ ($SortWrappers.$FVF<next>To$Snap (as sm@247@01  $FVF<next>)) g@231@01) x@232@01 n@243@01))
          (and
            (not
              (exists_path<Bool> ($$ ($SortWrappers.$FVF<next>To$Snap (as sm@247@01  $FVF<next>)) g@231@01) x@232@01 n@243@01))
            (forall ((r $Ref)) (!
              (=>
                (Set_in (inv@249@01 r) g@231@01)
                ($FVF.loc_next ($FVF.lookup_next (as sm@251@01  $FVF<next>) r) r))
              :pattern ((inv@249@01 r))
              :qid |quant-u-15607|))
            ($$%precondition ($SortWrappers.$FVF<next>To$Snap (as sm@252@01  $FVF<next>)) g@231@01)))
        (or
          (not
            (exists_path<Bool> ($$ ($SortWrappers.$FVF<next>To$Snap (as sm@247@01  $FVF<next>)) g@231@01) x@232@01 n@243@01))
          (exists_path<Bool> ($$ ($SortWrappers.$FVF<next>To$Snap (as sm@247@01  $FVF<next>)) g@231@01) x@232@01 n@243@01))))
    (or (not (Set_in n@243@01 g@231@01)) (Set_in n@243@01 g@231@01)))
  :pattern ((Set_in n@243@01 g@231@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/graphs/static/outlines/list_append.vpr@343@14@343@93-aux|)))
(assert (forall ((n@243@01 $Ref)) (!
  (and
    (=>
      (Set_in n@243@01 g@231@01)
      (and
        (Set_in n@243@01 g@231@01)
        (forall ((r $Ref)) (!
          (=>
            (Set_in (inv@245@01 r) g@231@01)
            ($FVF.loc_next ($FVF.lookup_next (as sm@241@01  $FVF<next>) r) r))
          :pattern ((inv@245@01 r))
          :qid |quant-u-15604|))
        ($$%precondition ($SortWrappers.$FVF<next>To$Snap (as sm@247@01  $FVF<next>)) g@231@01)
        (=>
          (not
            (exists_path<Bool> ($$ ($SortWrappers.$FVF<next>To$Snap (as sm@247@01  $FVF<next>)) g@231@01) x@232@01 n@243@01))
          (and
            (not
              (exists_path<Bool> ($$ ($SortWrappers.$FVF<next>To$Snap (as sm@247@01  $FVF<next>)) g@231@01) x@232@01 n@243@01))
            (forall ((r $Ref)) (!
              (=>
                (Set_in (inv@249@01 r) g@231@01)
                ($FVF.loc_next ($FVF.lookup_next (as sm@251@01  $FVF<next>) r) r))
              :pattern ((inv@249@01 r))
              :qid |quant-u-15607|))
            ($$%precondition ($SortWrappers.$FVF<next>To$Snap (as sm@252@01  $FVF<next>)) g@231@01)))
        (or
          (not
            (exists_path<Bool> ($$ ($SortWrappers.$FVF<next>To$Snap (as sm@247@01  $FVF<next>)) g@231@01) x@232@01 n@243@01))
          (exists_path<Bool> ($$ ($SortWrappers.$FVF<next>To$Snap (as sm@247@01  $FVF<next>)) g@231@01) x@232@01 n@243@01))))
    (or (not (Set_in n@243@01 g@231@01)) (Set_in n@243@01 g@231@01)))
  :pattern ((exists_path<Bool> ($$ ($SortWrappers.$FVF<next>To$Snap (as sm@247@01  $FVF<next>)) g@231@01) x@232@01 n@243@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/graphs/static/outlines/list_append.vpr@343@14@343@93-aux|)))
(assert (forall ((n@243@01 $Ref)) (!
  (and
    (=>
      (Set_in n@243@01 g@231@01)
      (and
        (Set_in n@243@01 g@231@01)
        (forall ((r $Ref)) (!
          (=>
            (Set_in (inv@245@01 r) g@231@01)
            ($FVF.loc_next ($FVF.lookup_next (as sm@241@01  $FVF<next>) r) r))
          :pattern ((inv@245@01 r))
          :qid |quant-u-15604|))
        ($$%precondition ($SortWrappers.$FVF<next>To$Snap (as sm@247@01  $FVF<next>)) g@231@01)
        (=>
          (not
            (exists_path<Bool> ($$ ($SortWrappers.$FVF<next>To$Snap (as sm@247@01  $FVF<next>)) g@231@01) x@232@01 n@243@01))
          (and
            (not
              (exists_path<Bool> ($$ ($SortWrappers.$FVF<next>To$Snap (as sm@247@01  $FVF<next>)) g@231@01) x@232@01 n@243@01))
            (forall ((r $Ref)) (!
              (=>
                (Set_in (inv@249@01 r) g@231@01)
                ($FVF.loc_next ($FVF.lookup_next (as sm@251@01  $FVF<next>) r) r))
              :pattern ((inv@249@01 r))
              :qid |quant-u-15607|))
            ($$%precondition ($SortWrappers.$FVF<next>To$Snap (as sm@252@01  $FVF<next>)) g@231@01)))
        (or
          (not
            (exists_path<Bool> ($$ ($SortWrappers.$FVF<next>To$Snap (as sm@247@01  $FVF<next>)) g@231@01) x@232@01 n@243@01))
          (exists_path<Bool> ($$ ($SortWrappers.$FVF<next>To$Snap (as sm@247@01  $FVF<next>)) g@231@01) x@232@01 n@243@01))))
    (or (not (Set_in n@243@01 g@231@01)) (Set_in n@243@01 g@231@01)))
  :pattern ((exists_path<Bool> ($$ ($SortWrappers.$FVF<next>To$Snap (as sm@252@01  $FVF<next>)) g@231@01) y@233@01 n@243@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/graphs/static/outlines/list_append.vpr@343@14@343@93-aux|)))
(assert (forall ((n@243@01 $Ref)) (!
  (=>
    (Set_in n@243@01 g@231@01)
    (or
      (exists_path<Bool> ($$ ($SortWrappers.$FVF<next>To$Snap (as sm@247@01  $FVF<next>)) g@231@01) x@232@01 n@243@01)
      (exists_path<Bool> ($$ ($SortWrappers.$FVF<next>To$Snap (as sm@252@01  $FVF<next>)) g@231@01) y@233@01 n@243@01)))
  :pattern ((Set_in n@243@01 g@231@01))
  :pattern ((exists_path<Bool> ($$ ($SortWrappers.$FVF<next>To$Snap (as sm@247@01  $FVF<next>)) g@231@01) x@232@01 n@243@01))
  :pattern ((exists_path<Bool> ($$ ($SortWrappers.$FVF<next>To$Snap (as sm@252@01  $FVF<next>)) g@231@01) y@233@01 n@243@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/graphs/static/outlines/list_append.vpr@343@14@343@93|)))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@236@01)))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@236@01))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@236@01)))))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@236@01))))))))
  $Snap.unit))
; [eval] (forall n: Ref :: { (n in g) } { exists_path($$(g), x, n) } { exists_path($$(g), y, n) } (n in g) ==> !exists_path($$(g), x, n) || !exists_path($$(g), y, n))
(declare-const n@253@01 $Ref)
(push) ; 2
; [eval] (n in g) ==> !exists_path($$(g), x, n) || !exists_path($$(g), y, n)
; [eval] (n in g)
(push) ; 3
; [then-branch: 34 | n@253@01 in g@231@01 | live]
; [else-branch: 34 | !(n@253@01 in g@231@01) | live]
(push) ; 4
; [then-branch: 34 | n@253@01 in g@231@01]
(assert (Set_in n@253@01 g@231@01))
; [eval] !exists_path($$(g), x, n) || !exists_path($$(g), y, n)
; [eval] !exists_path($$(g), x, n)
; [eval] exists_path($$(g), x, n)
; [eval] $$(g)
(push) ; 5
(declare-const n@254@01 $Ref)
(push) ; 6
; [eval] (n in refs)
(assert (Set_in n@254@01 g@231@01))
(pop) ; 6
(declare-fun inv@255@01 ($Ref) $Ref)
(declare-fun img@256@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
; Definitional axioms for snapshot map domain
; Definitional axioms for snapshot map values
; Check receiver injectivity
(push) ; 6
(assert (not (forall ((n1@254@01 $Ref) (n2@254@01 $Ref)) (!
  (=>
    (and
      (and
        (Set_in n1@254@01 g@231@01)
        ($FVF.loc_next ($FVF.lookup_next (as sm@241@01  $FVF<next>) n1@254@01) n1@254@01))
      (and
        (Set_in n2@254@01 g@231@01)
        ($FVF.loc_next ($FVF.lookup_next (as sm@241@01  $FVF<next>) n2@254@01) n2@254@01))
      (= n1@254@01 n2@254@01))
    (= n1@254@01 n2@254@01))
  
  :qid |next-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((n@254@01 $Ref)) (!
  (=>
    (Set_in n@254@01 g@231@01)
    (and (= (inv@255@01 n@254@01) n@254@01) (img@256@01 n@254@01)))
  :pattern ((Set_in n@254@01 g@231@01))
  :pattern ((inv@255@01 n@254@01))
  :pattern ((img@256@01 n@254@01))
  :qid |next-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=> (and (img@256@01 r) (Set_in (inv@255@01 r) g@231@01)) (= (inv@255@01 r) r))
  :pattern ((inv@255@01 r))
  :qid |next-fctOfInv|)))
(assert (forall ((r $Ref)) (!
  (=>
    (Set_in (inv@255@01 r) g@231@01)
    ($FVF.loc_next ($FVF.lookup_next (as sm@241@01  $FVF<next>) r) r))
  :pattern ((inv@255@01 r))
  :qid |quant-u-15610|)))
(push) ; 6
(assert (not (forall ((r $Ref)) (!
  (=>
    (and (Set_in (inv@255@01 r) g@231@01) (img@256@01 r) (= r (inv@255@01 r)))
    (>
      (ite
        (and (img@240@01 r) (Set_in (inv@239@01 r) g@231@01))
        $Perm.Write
        $Perm.No)
      $Perm.No))
  
  :qid |quant-u-15611|))))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(declare-const sm@257@01 $FVF<next>)
; Definitional axioms for snapshot map domain
(assert (forall ((r $Ref)) (!
  (and
    (=>
      (Set_in r ($FVF.domain_next (as sm@257@01  $FVF<next>)))
      (and (Set_in (inv@255@01 r) g@231@01) (img@256@01 r)))
    (=>
      (and (Set_in (inv@255@01 r) g@231@01) (img@256@01 r))
      (Set_in r ($FVF.domain_next (as sm@257@01  $FVF<next>)))))
  :pattern ((Set_in r ($FVF.domain_next (as sm@257@01  $FVF<next>))))
  :qid |qp.fvfDomDef149|)))
; Definitional axioms for snapshot map values
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and (Set_in (inv@255@01 r) g@231@01) (img@256@01 r))
      (and (img@240@01 r) (Set_in (inv@239@01 r) g@231@01)))
    (=
      ($FVF.lookup_next (as sm@257@01  $FVF<next>) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@236@01))) r)))
  :pattern (($FVF.lookup_next (as sm@257@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@236@01))) r))
  :qid |qp.fvfValDef147|)))
(assert (forall ((r $Ref)) (!
  ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@236@01))) r) r)
  :pattern (($FVF.lookup_next (as sm@257@01  $FVF<next>) r))
  :qid |qp.fvfResTrgDef148|)))
(assert ($$%precondition ($SortWrappers.$FVF<next>To$Snap (as sm@257@01  $FVF<next>)) g@231@01))
(pop) ; 5
; Joined path conditions
(assert (forall ((n@254@01 $Ref)) (!
  (=>
    (Set_in n@254@01 g@231@01)
    (and (= (inv@255@01 n@254@01) n@254@01) (img@256@01 n@254@01)))
  :pattern ((Set_in n@254@01 g@231@01))
  :pattern ((inv@255@01 n@254@01))
  :pattern ((img@256@01 n@254@01))
  :qid |next-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=> (and (img@256@01 r) (Set_in (inv@255@01 r) g@231@01)) (= (inv@255@01 r) r))
  :pattern ((inv@255@01 r))
  :qid |next-fctOfInv|)))
(assert (forall ((r $Ref)) (!
  (and
    (=>
      (Set_in r ($FVF.domain_next (as sm@257@01  $FVF<next>)))
      (and (Set_in (inv@255@01 r) g@231@01) (img@256@01 r)))
    (=>
      (and (Set_in (inv@255@01 r) g@231@01) (img@256@01 r))
      (Set_in r ($FVF.domain_next (as sm@257@01  $FVF<next>)))))
  :pattern ((Set_in r ($FVF.domain_next (as sm@257@01  $FVF<next>))))
  :qid |qp.fvfDomDef149|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and (Set_in (inv@255@01 r) g@231@01) (img@256@01 r))
      (and (img@240@01 r) (Set_in (inv@239@01 r) g@231@01)))
    (=
      ($FVF.lookup_next (as sm@257@01  $FVF<next>) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@236@01))) r)))
  :pattern (($FVF.lookup_next (as sm@257@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@236@01))) r))
  :qid |qp.fvfValDef147|)))
(assert (forall ((r $Ref)) (!
  ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@236@01))) r) r)
  :pattern (($FVF.lookup_next (as sm@257@01  $FVF<next>) r))
  :qid |qp.fvfResTrgDef148|)))
(assert (and
  (forall ((r $Ref)) (!
    (=>
      (Set_in (inv@255@01 r) g@231@01)
      ($FVF.loc_next ($FVF.lookup_next (as sm@241@01  $FVF<next>) r) r))
    :pattern ((inv@255@01 r))
    :qid |quant-u-15610|))
  ($$%precondition ($SortWrappers.$FVF<next>To$Snap (as sm@257@01  $FVF<next>)) g@231@01)))
(push) ; 5
; [then-branch: 35 | !(exists_path[Bool]($$(sm@257@01, g@231@01), x@232@01, n@253@01)) | live]
; [else-branch: 35 | exists_path[Bool]($$(sm@257@01, g@231@01), x@232@01, n@253@01) | live]
(push) ; 6
; [then-branch: 35 | !(exists_path[Bool]($$(sm@257@01, g@231@01), x@232@01, n@253@01))]
(assert (not
  (exists_path<Bool> ($$ ($SortWrappers.$FVF<next>To$Snap (as sm@257@01  $FVF<next>)) g@231@01) x@232@01 n@253@01)))
(pop) ; 6
(push) ; 6
; [else-branch: 35 | exists_path[Bool]($$(sm@257@01, g@231@01), x@232@01, n@253@01)]
(assert (exists_path<Bool> ($$ ($SortWrappers.$FVF<next>To$Snap (as sm@257@01  $FVF<next>)) g@231@01) x@232@01 n@253@01))
; [eval] !exists_path($$(g), y, n)
; [eval] exists_path($$(g), y, n)
; [eval] $$(g)
(push) ; 7
(declare-const n@258@01 $Ref)
(push) ; 8
; [eval] (n in refs)
(assert (Set_in n@258@01 g@231@01))
(pop) ; 8
(declare-fun inv@259@01 ($Ref) $Ref)
(declare-fun img@260@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
(declare-const sm@261@01 $FVF<next>)
; Definitional axioms for snapshot map domain
; Definitional axioms for snapshot map values
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@240@01 r) (Set_in (inv@239@01 r) g@231@01))
    (=
      ($FVF.lookup_next (as sm@261@01  $FVF<next>) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@236@01))) r)))
  :pattern (($FVF.lookup_next (as sm@261@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@236@01))) r))
  :qid |qp.fvfValDef150|)))
(assert (forall ((r $Ref)) (!
  ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@236@01))) r) r)
  :pattern (($FVF.lookup_next (as sm@261@01  $FVF<next>) r))
  :qid |qp.fvfResTrgDef151|)))
; Check receiver injectivity
(push) ; 8
(assert (not (forall ((n1@258@01 $Ref) (n2@258@01 $Ref)) (!
  (=>
    (and
      (and
        (Set_in n1@258@01 g@231@01)
        ($FVF.loc_next ($FVF.lookup_next (as sm@261@01  $FVF<next>) n1@258@01) n1@258@01))
      (and
        (Set_in n2@258@01 g@231@01)
        ($FVF.loc_next ($FVF.lookup_next (as sm@261@01  $FVF<next>) n2@258@01) n2@258@01))
      (= n1@258@01 n2@258@01))
    (= n1@258@01 n2@258@01))
  
  :qid |next-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 8
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((n@258@01 $Ref)) (!
  (=>
    (Set_in n@258@01 g@231@01)
    (and (= (inv@259@01 n@258@01) n@258@01) (img@260@01 n@258@01)))
  :pattern ((Set_in n@258@01 g@231@01))
  :pattern ((inv@259@01 n@258@01))
  :pattern ((img@260@01 n@258@01))
  :qid |next-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=> (and (img@260@01 r) (Set_in (inv@259@01 r) g@231@01)) (= (inv@259@01 r) r))
  :pattern ((inv@259@01 r))
  :qid |next-fctOfInv|)))
(assert (forall ((r $Ref)) (!
  (=>
    (Set_in (inv@259@01 r) g@231@01)
    ($FVF.loc_next ($FVF.lookup_next (as sm@261@01  $FVF<next>) r) r))
  :pattern ((inv@259@01 r))
  :qid |quant-u-15613|)))
(push) ; 8
(assert (not (forall ((r $Ref)) (!
  (=>
    (and (Set_in (inv@259@01 r) g@231@01) (img@260@01 r) (= r (inv@259@01 r)))
    (>
      (ite
        (and (img@240@01 r) (Set_in (inv@239@01 r) g@231@01))
        $Perm.Write
        $Perm.No)
      $Perm.No))
  
  :qid |quant-u-15614|))))
(check-sat)
; unsat
(pop) ; 8
; 0.00s
; (get-info :all-statistics)
(declare-const sm@262@01 $FVF<next>)
; Definitional axioms for snapshot map domain
(assert (forall ((r $Ref)) (!
  (and
    (=>
      (Set_in r ($FVF.domain_next (as sm@262@01  $FVF<next>)))
      (and (Set_in (inv@259@01 r) g@231@01) (img@260@01 r)))
    (=>
      (and (Set_in (inv@259@01 r) g@231@01) (img@260@01 r))
      (Set_in r ($FVF.domain_next (as sm@262@01  $FVF<next>)))))
  :pattern ((Set_in r ($FVF.domain_next (as sm@262@01  $FVF<next>))))
  :qid |qp.fvfDomDef154|)))
; Definitional axioms for snapshot map values
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and (Set_in (inv@259@01 r) g@231@01) (img@260@01 r))
      (and (img@240@01 r) (Set_in (inv@239@01 r) g@231@01)))
    (=
      ($FVF.lookup_next (as sm@262@01  $FVF<next>) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@236@01))) r)))
  :pattern (($FVF.lookup_next (as sm@262@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@236@01))) r))
  :qid |qp.fvfValDef152|)))
(assert (forall ((r $Ref)) (!
  ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@236@01))) r) r)
  :pattern (($FVF.lookup_next (as sm@262@01  $FVF<next>) r))
  :qid |qp.fvfResTrgDef153|)))
(assert ($$%precondition ($SortWrappers.$FVF<next>To$Snap (as sm@262@01  $FVF<next>)) g@231@01))
(pop) ; 7
; Joined path conditions
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@240@01 r) (Set_in (inv@239@01 r) g@231@01))
    (=
      ($FVF.lookup_next (as sm@261@01  $FVF<next>) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@236@01))) r)))
  :pattern (($FVF.lookup_next (as sm@261@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@236@01))) r))
  :qid |qp.fvfValDef150|)))
(assert (forall ((r $Ref)) (!
  ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@236@01))) r) r)
  :pattern (($FVF.lookup_next (as sm@261@01  $FVF<next>) r))
  :qid |qp.fvfResTrgDef151|)))
(assert (forall ((n@258@01 $Ref)) (!
  (=>
    (Set_in n@258@01 g@231@01)
    (and (= (inv@259@01 n@258@01) n@258@01) (img@260@01 n@258@01)))
  :pattern ((Set_in n@258@01 g@231@01))
  :pattern ((inv@259@01 n@258@01))
  :pattern ((img@260@01 n@258@01))
  :qid |next-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=> (and (img@260@01 r) (Set_in (inv@259@01 r) g@231@01)) (= (inv@259@01 r) r))
  :pattern ((inv@259@01 r))
  :qid |next-fctOfInv|)))
(assert (forall ((r $Ref)) (!
  (and
    (=>
      (Set_in r ($FVF.domain_next (as sm@262@01  $FVF<next>)))
      (and (Set_in (inv@259@01 r) g@231@01) (img@260@01 r)))
    (=>
      (and (Set_in (inv@259@01 r) g@231@01) (img@260@01 r))
      (Set_in r ($FVF.domain_next (as sm@262@01  $FVF<next>)))))
  :pattern ((Set_in r ($FVF.domain_next (as sm@262@01  $FVF<next>))))
  :qid |qp.fvfDomDef154|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and (Set_in (inv@259@01 r) g@231@01) (img@260@01 r))
      (and (img@240@01 r) (Set_in (inv@239@01 r) g@231@01)))
    (=
      ($FVF.lookup_next (as sm@262@01  $FVF<next>) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@236@01))) r)))
  :pattern (($FVF.lookup_next (as sm@262@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@236@01))) r))
  :qid |qp.fvfValDef152|)))
(assert (forall ((r $Ref)) (!
  ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@236@01))) r) r)
  :pattern (($FVF.lookup_next (as sm@262@01  $FVF<next>) r))
  :qid |qp.fvfResTrgDef153|)))
(assert (and
  (forall ((r $Ref)) (!
    (=>
      (Set_in (inv@259@01 r) g@231@01)
      ($FVF.loc_next ($FVF.lookup_next (as sm@261@01  $FVF<next>) r) r))
    :pattern ((inv@259@01 r))
    :qid |quant-u-15613|))
  ($$%precondition ($SortWrappers.$FVF<next>To$Snap (as sm@262@01  $FVF<next>)) g@231@01)))
(pop) ; 6
(pop) ; 5
; Joined path conditions
; Joined path conditions
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@240@01 r) (Set_in (inv@239@01 r) g@231@01))
    (=
      ($FVF.lookup_next (as sm@261@01  $FVF<next>) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@236@01))) r)))
  :pattern (($FVF.lookup_next (as sm@261@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@236@01))) r))
  :qid |qp.fvfValDef150|)))
(assert (forall ((r $Ref)) (!
  ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@236@01))) r) r)
  :pattern (($FVF.lookup_next (as sm@261@01  $FVF<next>) r))
  :qid |qp.fvfResTrgDef151|)))
(assert (forall ((n@258@01 $Ref)) (!
  (=>
    (Set_in n@258@01 g@231@01)
    (and (= (inv@259@01 n@258@01) n@258@01) (img@260@01 n@258@01)))
  :pattern ((Set_in n@258@01 g@231@01))
  :pattern ((inv@259@01 n@258@01))
  :pattern ((img@260@01 n@258@01))
  :qid |next-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=> (and (img@260@01 r) (Set_in (inv@259@01 r) g@231@01)) (= (inv@259@01 r) r))
  :pattern ((inv@259@01 r))
  :qid |next-fctOfInv|)))
(assert (forall ((r $Ref)) (!
  (and
    (=>
      (Set_in r ($FVF.domain_next (as sm@262@01  $FVF<next>)))
      (and (Set_in (inv@259@01 r) g@231@01) (img@260@01 r)))
    (=>
      (and (Set_in (inv@259@01 r) g@231@01) (img@260@01 r))
      (Set_in r ($FVF.domain_next (as sm@262@01  $FVF<next>)))))
  :pattern ((Set_in r ($FVF.domain_next (as sm@262@01  $FVF<next>))))
  :qid |qp.fvfDomDef154|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and (Set_in (inv@259@01 r) g@231@01) (img@260@01 r))
      (and (img@240@01 r) (Set_in (inv@239@01 r) g@231@01)))
    (=
      ($FVF.lookup_next (as sm@262@01  $FVF<next>) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@236@01))) r)))
  :pattern (($FVF.lookup_next (as sm@262@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@236@01))) r))
  :qid |qp.fvfValDef152|)))
(assert (forall ((r $Ref)) (!
  ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@236@01))) r) r)
  :pattern (($FVF.lookup_next (as sm@262@01  $FVF<next>) r))
  :qid |qp.fvfResTrgDef153|)))
(assert (=>
  (exists_path<Bool> ($$ ($SortWrappers.$FVF<next>To$Snap (as sm@257@01  $FVF<next>)) g@231@01) x@232@01 n@253@01)
  (and
    (exists_path<Bool> ($$ ($SortWrappers.$FVF<next>To$Snap (as sm@257@01  $FVF<next>)) g@231@01) x@232@01 n@253@01)
    (forall ((r $Ref)) (!
      (=>
        (Set_in (inv@259@01 r) g@231@01)
        ($FVF.loc_next ($FVF.lookup_next (as sm@261@01  $FVF<next>) r) r))
      :pattern ((inv@259@01 r))
      :qid |quant-u-15613|))
    ($$%precondition ($SortWrappers.$FVF<next>To$Snap (as sm@262@01  $FVF<next>)) g@231@01))))
(assert (or
  (exists_path<Bool> ($$ ($SortWrappers.$FVF<next>To$Snap (as sm@257@01  $FVF<next>)) g@231@01) x@232@01 n@253@01)
  (not
    (exists_path<Bool> ($$ ($SortWrappers.$FVF<next>To$Snap (as sm@257@01  $FVF<next>)) g@231@01) x@232@01 n@253@01))))
(pop) ; 4
(push) ; 4
; [else-branch: 34 | !(n@253@01 in g@231@01)]
(assert (not (Set_in n@253@01 g@231@01)))
(pop) ; 4
(pop) ; 3
; Joined path conditions
(assert (forall ((n@254@01 $Ref)) (!
  (=>
    (Set_in n@254@01 g@231@01)
    (and (= (inv@255@01 n@254@01) n@254@01) (img@256@01 n@254@01)))
  :pattern ((Set_in n@254@01 g@231@01))
  :pattern ((inv@255@01 n@254@01))
  :pattern ((img@256@01 n@254@01))
  :qid |next-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=> (and (img@256@01 r) (Set_in (inv@255@01 r) g@231@01)) (= (inv@255@01 r) r))
  :pattern ((inv@255@01 r))
  :qid |next-fctOfInv|)))
(assert (forall ((r $Ref)) (!
  (and
    (=>
      (Set_in r ($FVF.domain_next (as sm@257@01  $FVF<next>)))
      (and (Set_in (inv@255@01 r) g@231@01) (img@256@01 r)))
    (=>
      (and (Set_in (inv@255@01 r) g@231@01) (img@256@01 r))
      (Set_in r ($FVF.domain_next (as sm@257@01  $FVF<next>)))))
  :pattern ((Set_in r ($FVF.domain_next (as sm@257@01  $FVF<next>))))
  :qid |qp.fvfDomDef149|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and (Set_in (inv@255@01 r) g@231@01) (img@256@01 r))
      (and (img@240@01 r) (Set_in (inv@239@01 r) g@231@01)))
    (=
      ($FVF.lookup_next (as sm@257@01  $FVF<next>) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@236@01))) r)))
  :pattern (($FVF.lookup_next (as sm@257@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@236@01))) r))
  :qid |qp.fvfValDef147|)))
(assert (forall ((r $Ref)) (!
  ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@236@01))) r) r)
  :pattern (($FVF.lookup_next (as sm@257@01  $FVF<next>) r))
  :qid |qp.fvfResTrgDef148|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@240@01 r) (Set_in (inv@239@01 r) g@231@01))
    (=
      ($FVF.lookup_next (as sm@261@01  $FVF<next>) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@236@01))) r)))
  :pattern (($FVF.lookup_next (as sm@261@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@236@01))) r))
  :qid |qp.fvfValDef150|)))
(assert (forall ((r $Ref)) (!
  ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@236@01))) r) r)
  :pattern (($FVF.lookup_next (as sm@261@01  $FVF<next>) r))
  :qid |qp.fvfResTrgDef151|)))
(assert (forall ((n@258@01 $Ref)) (!
  (=>
    (Set_in n@258@01 g@231@01)
    (and (= (inv@259@01 n@258@01) n@258@01) (img@260@01 n@258@01)))
  :pattern ((Set_in n@258@01 g@231@01))
  :pattern ((inv@259@01 n@258@01))
  :pattern ((img@260@01 n@258@01))
  :qid |next-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=> (and (img@260@01 r) (Set_in (inv@259@01 r) g@231@01)) (= (inv@259@01 r) r))
  :pattern ((inv@259@01 r))
  :qid |next-fctOfInv|)))
(assert (forall ((r $Ref)) (!
  (and
    (=>
      (Set_in r ($FVF.domain_next (as sm@262@01  $FVF<next>)))
      (and (Set_in (inv@259@01 r) g@231@01) (img@260@01 r)))
    (=>
      (and (Set_in (inv@259@01 r) g@231@01) (img@260@01 r))
      (Set_in r ($FVF.domain_next (as sm@262@01  $FVF<next>)))))
  :pattern ((Set_in r ($FVF.domain_next (as sm@262@01  $FVF<next>))))
  :qid |qp.fvfDomDef154|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and (Set_in (inv@259@01 r) g@231@01) (img@260@01 r))
      (and (img@240@01 r) (Set_in (inv@239@01 r) g@231@01)))
    (=
      ($FVF.lookup_next (as sm@262@01  $FVF<next>) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@236@01))) r)))
  :pattern (($FVF.lookup_next (as sm@262@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@236@01))) r))
  :qid |qp.fvfValDef152|)))
(assert (forall ((r $Ref)) (!
  ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@236@01))) r) r)
  :pattern (($FVF.lookup_next (as sm@262@01  $FVF<next>) r))
  :qid |qp.fvfResTrgDef153|)))
(assert (=>
  (Set_in n@253@01 g@231@01)
  (and
    (Set_in n@253@01 g@231@01)
    (forall ((r $Ref)) (!
      (=>
        (Set_in (inv@255@01 r) g@231@01)
        ($FVF.loc_next ($FVF.lookup_next (as sm@241@01  $FVF<next>) r) r))
      :pattern ((inv@255@01 r))
      :qid |quant-u-15610|))
    ($$%precondition ($SortWrappers.$FVF<next>To$Snap (as sm@257@01  $FVF<next>)) g@231@01)
    (=>
      (exists_path<Bool> ($$ ($SortWrappers.$FVF<next>To$Snap (as sm@257@01  $FVF<next>)) g@231@01) x@232@01 n@253@01)
      (and
        (exists_path<Bool> ($$ ($SortWrappers.$FVF<next>To$Snap (as sm@257@01  $FVF<next>)) g@231@01) x@232@01 n@253@01)
        (forall ((r $Ref)) (!
          (=>
            (Set_in (inv@259@01 r) g@231@01)
            ($FVF.loc_next ($FVF.lookup_next (as sm@261@01  $FVF<next>) r) r))
          :pattern ((inv@259@01 r))
          :qid |quant-u-15613|))
        ($$%precondition ($SortWrappers.$FVF<next>To$Snap (as sm@262@01  $FVF<next>)) g@231@01)))
    (or
      (exists_path<Bool> ($$ ($SortWrappers.$FVF<next>To$Snap (as sm@257@01  $FVF<next>)) g@231@01) x@232@01 n@253@01)
      (not
        (exists_path<Bool> ($$ ($SortWrappers.$FVF<next>To$Snap (as sm@257@01  $FVF<next>)) g@231@01) x@232@01 n@253@01))))))
; Joined path conditions
(assert (or (not (Set_in n@253@01 g@231@01)) (Set_in n@253@01 g@231@01)))
(pop) ; 2
; Nested auxiliary terms: globals (aux)
(assert (forall ((n@254@01 $Ref)) (!
  (=>
    (Set_in n@254@01 g@231@01)
    (and (= (inv@255@01 n@254@01) n@254@01) (img@256@01 n@254@01)))
  :pattern ((Set_in n@254@01 g@231@01))
  :pattern ((inv@255@01 n@254@01))
  :pattern ((img@256@01 n@254@01))
  :qid |next-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=> (and (img@256@01 r) (Set_in (inv@255@01 r) g@231@01)) (= (inv@255@01 r) r))
  :pattern ((inv@255@01 r))
  :qid |next-fctOfInv|)))
(assert (forall ((r $Ref)) (!
  (and
    (=>
      (Set_in r ($FVF.domain_next (as sm@257@01  $FVF<next>)))
      (and (Set_in (inv@255@01 r) g@231@01) (img@256@01 r)))
    (=>
      (and (Set_in (inv@255@01 r) g@231@01) (img@256@01 r))
      (Set_in r ($FVF.domain_next (as sm@257@01  $FVF<next>)))))
  :pattern ((Set_in r ($FVF.domain_next (as sm@257@01  $FVF<next>))))
  :qid |qp.fvfDomDef149|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and (Set_in (inv@255@01 r) g@231@01) (img@256@01 r))
      (and (img@240@01 r) (Set_in (inv@239@01 r) g@231@01)))
    (=
      ($FVF.lookup_next (as sm@257@01  $FVF<next>) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@236@01))) r)))
  :pattern (($FVF.lookup_next (as sm@257@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@236@01))) r))
  :qid |qp.fvfValDef147|)))
(assert (forall ((r $Ref)) (!
  ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@236@01))) r) r)
  :pattern (($FVF.lookup_next (as sm@257@01  $FVF<next>) r))
  :qid |qp.fvfResTrgDef148|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@240@01 r) (Set_in (inv@239@01 r) g@231@01))
    (=
      ($FVF.lookup_next (as sm@261@01  $FVF<next>) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@236@01))) r)))
  :pattern (($FVF.lookup_next (as sm@261@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@236@01))) r))
  :qid |qp.fvfValDef150|)))
(assert (forall ((r $Ref)) (!
  ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@236@01))) r) r)
  :pattern (($FVF.lookup_next (as sm@261@01  $FVF<next>) r))
  :qid |qp.fvfResTrgDef151|)))
(assert (forall ((n@258@01 $Ref)) (!
  (=>
    (Set_in n@258@01 g@231@01)
    (and (= (inv@259@01 n@258@01) n@258@01) (img@260@01 n@258@01)))
  :pattern ((Set_in n@258@01 g@231@01))
  :pattern ((inv@259@01 n@258@01))
  :pattern ((img@260@01 n@258@01))
  :qid |next-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=> (and (img@260@01 r) (Set_in (inv@259@01 r) g@231@01)) (= (inv@259@01 r) r))
  :pattern ((inv@259@01 r))
  :qid |next-fctOfInv|)))
(assert (forall ((r $Ref)) (!
  (and
    (=>
      (Set_in r ($FVF.domain_next (as sm@262@01  $FVF<next>)))
      (and (Set_in (inv@259@01 r) g@231@01) (img@260@01 r)))
    (=>
      (and (Set_in (inv@259@01 r) g@231@01) (img@260@01 r))
      (Set_in r ($FVF.domain_next (as sm@262@01  $FVF<next>)))))
  :pattern ((Set_in r ($FVF.domain_next (as sm@262@01  $FVF<next>))))
  :qid |qp.fvfDomDef154|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and (Set_in (inv@259@01 r) g@231@01) (img@260@01 r))
      (and (img@240@01 r) (Set_in (inv@239@01 r) g@231@01)))
    (=
      ($FVF.lookup_next (as sm@262@01  $FVF<next>) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@236@01))) r)))
  :pattern (($FVF.lookup_next (as sm@262@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@236@01))) r))
  :qid |qp.fvfValDef152|)))
(assert (forall ((r $Ref)) (!
  ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@236@01))) r) r)
  :pattern (($FVF.lookup_next (as sm@262@01  $FVF<next>) r))
  :qid |qp.fvfResTrgDef153|)))
; Nested auxiliary terms: non-globals (aux)
(assert (forall ((n@253@01 $Ref)) (!
  (and
    (=>
      (Set_in n@253@01 g@231@01)
      (and
        (Set_in n@253@01 g@231@01)
        (forall ((r $Ref)) (!
          (=>
            (Set_in (inv@255@01 r) g@231@01)
            ($FVF.loc_next ($FVF.lookup_next (as sm@241@01  $FVF<next>) r) r))
          :pattern ((inv@255@01 r))
          :qid |quant-u-15610|))
        ($$%precondition ($SortWrappers.$FVF<next>To$Snap (as sm@257@01  $FVF<next>)) g@231@01)
        (=>
          (exists_path<Bool> ($$ ($SortWrappers.$FVF<next>To$Snap (as sm@257@01  $FVF<next>)) g@231@01) x@232@01 n@253@01)
          (and
            (exists_path<Bool> ($$ ($SortWrappers.$FVF<next>To$Snap (as sm@257@01  $FVF<next>)) g@231@01) x@232@01 n@253@01)
            (forall ((r $Ref)) (!
              (=>
                (Set_in (inv@259@01 r) g@231@01)
                ($FVF.loc_next ($FVF.lookup_next (as sm@261@01  $FVF<next>) r) r))
              :pattern ((inv@259@01 r))
              :qid |quant-u-15613|))
            ($$%precondition ($SortWrappers.$FVF<next>To$Snap (as sm@262@01  $FVF<next>)) g@231@01)))
        (or
          (exists_path<Bool> ($$ ($SortWrappers.$FVF<next>To$Snap (as sm@257@01  $FVF<next>)) g@231@01) x@232@01 n@253@01)
          (not
            (exists_path<Bool> ($$ ($SortWrappers.$FVF<next>To$Snap (as sm@257@01  $FVF<next>)) g@231@01) x@232@01 n@253@01)))))
    (or (not (Set_in n@253@01 g@231@01)) (Set_in n@253@01 g@231@01)))
  :pattern ((Set_in n@253@01 g@231@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/graphs/static/outlines/list_append.vpr@344@14@344@93-aux|)))
(assert (forall ((n@253@01 $Ref)) (!
  (and
    (=>
      (Set_in n@253@01 g@231@01)
      (and
        (Set_in n@253@01 g@231@01)
        (forall ((r $Ref)) (!
          (=>
            (Set_in (inv@255@01 r) g@231@01)
            ($FVF.loc_next ($FVF.lookup_next (as sm@241@01  $FVF<next>) r) r))
          :pattern ((inv@255@01 r))
          :qid |quant-u-15610|))
        ($$%precondition ($SortWrappers.$FVF<next>To$Snap (as sm@257@01  $FVF<next>)) g@231@01)
        (=>
          (exists_path<Bool> ($$ ($SortWrappers.$FVF<next>To$Snap (as sm@257@01  $FVF<next>)) g@231@01) x@232@01 n@253@01)
          (and
            (exists_path<Bool> ($$ ($SortWrappers.$FVF<next>To$Snap (as sm@257@01  $FVF<next>)) g@231@01) x@232@01 n@253@01)
            (forall ((r $Ref)) (!
              (=>
                (Set_in (inv@259@01 r) g@231@01)
                ($FVF.loc_next ($FVF.lookup_next (as sm@261@01  $FVF<next>) r) r))
              :pattern ((inv@259@01 r))
              :qid |quant-u-15613|))
            ($$%precondition ($SortWrappers.$FVF<next>To$Snap (as sm@262@01  $FVF<next>)) g@231@01)))
        (or
          (exists_path<Bool> ($$ ($SortWrappers.$FVF<next>To$Snap (as sm@257@01  $FVF<next>)) g@231@01) x@232@01 n@253@01)
          (not
            (exists_path<Bool> ($$ ($SortWrappers.$FVF<next>To$Snap (as sm@257@01  $FVF<next>)) g@231@01) x@232@01 n@253@01)))))
    (or (not (Set_in n@253@01 g@231@01)) (Set_in n@253@01 g@231@01)))
  :pattern ((exists_path<Bool> ($$ ($SortWrappers.$FVF<next>To$Snap (as sm@257@01  $FVF<next>)) g@231@01) x@232@01 n@253@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/graphs/static/outlines/list_append.vpr@344@14@344@93-aux|)))
(assert (forall ((n@253@01 $Ref)) (!
  (and
    (=>
      (Set_in n@253@01 g@231@01)
      (and
        (Set_in n@253@01 g@231@01)
        (forall ((r $Ref)) (!
          (=>
            (Set_in (inv@255@01 r) g@231@01)
            ($FVF.loc_next ($FVF.lookup_next (as sm@241@01  $FVF<next>) r) r))
          :pattern ((inv@255@01 r))
          :qid |quant-u-15610|))
        ($$%precondition ($SortWrappers.$FVF<next>To$Snap (as sm@257@01  $FVF<next>)) g@231@01)
        (=>
          (exists_path<Bool> ($$ ($SortWrappers.$FVF<next>To$Snap (as sm@257@01  $FVF<next>)) g@231@01) x@232@01 n@253@01)
          (and
            (exists_path<Bool> ($$ ($SortWrappers.$FVF<next>To$Snap (as sm@257@01  $FVF<next>)) g@231@01) x@232@01 n@253@01)
            (forall ((r $Ref)) (!
              (=>
                (Set_in (inv@259@01 r) g@231@01)
                ($FVF.loc_next ($FVF.lookup_next (as sm@261@01  $FVF<next>) r) r))
              :pattern ((inv@259@01 r))
              :qid |quant-u-15613|))
            ($$%precondition ($SortWrappers.$FVF<next>To$Snap (as sm@262@01  $FVF<next>)) g@231@01)))
        (or
          (exists_path<Bool> ($$ ($SortWrappers.$FVF<next>To$Snap (as sm@257@01  $FVF<next>)) g@231@01) x@232@01 n@253@01)
          (not
            (exists_path<Bool> ($$ ($SortWrappers.$FVF<next>To$Snap (as sm@257@01  $FVF<next>)) g@231@01) x@232@01 n@253@01)))))
    (or (not (Set_in n@253@01 g@231@01)) (Set_in n@253@01 g@231@01)))
  :pattern ((exists_path<Bool> ($$ ($SortWrappers.$FVF<next>To$Snap (as sm@262@01  $FVF<next>)) g@231@01) y@233@01 n@253@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/graphs/static/outlines/list_append.vpr@344@14@344@93-aux|)))
(assert (forall ((n@253@01 $Ref)) (!
  (=>
    (Set_in n@253@01 g@231@01)
    (or
      (not
        (exists_path<Bool> ($$ ($SortWrappers.$FVF<next>To$Snap (as sm@257@01  $FVF<next>)) g@231@01) x@232@01 n@253@01))
      (not
        (exists_path<Bool> ($$ ($SortWrappers.$FVF<next>To$Snap (as sm@262@01  $FVF<next>)) g@231@01) y@233@01 n@253@01))))
  :pattern ((Set_in n@253@01 g@231@01))
  :pattern ((exists_path<Bool> ($$ ($SortWrappers.$FVF<next>To$Snap (as sm@257@01  $FVF<next>)) g@231@01) x@232@01 n@253@01))
  :pattern ((exists_path<Bool> ($$ ($SortWrappers.$FVF<next>To$Snap (as sm@262@01  $FVF<next>)) g@231@01) y@233@01 n@253@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/graphs/static/outlines/list_append.vpr@344@14@344@93|)))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@236@01))))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@236@01)))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@236@01))))))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@236@01)))))))))
  $Snap.unit))
; [eval] acyclic_graph($$(g))
; [eval] $$(g)
(push) ; 2
(declare-const n@263@01 $Ref)
(push) ; 3
; [eval] (n in refs)
(assert (Set_in n@263@01 g@231@01))
(pop) ; 3
(declare-fun inv@264@01 ($Ref) $Ref)
(declare-fun img@265@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
; Definitional axioms for snapshot map domain
; Definitional axioms for snapshot map values
; Check receiver injectivity
(push) ; 3
(assert (not (forall ((n1@263@01 $Ref) (n2@263@01 $Ref)) (!
  (=>
    (and
      (and
        (Set_in n1@263@01 g@231@01)
        ($FVF.loc_next ($FVF.lookup_next (as sm@241@01  $FVF<next>) n1@263@01) n1@263@01))
      (and
        (Set_in n2@263@01 g@231@01)
        ($FVF.loc_next ($FVF.lookup_next (as sm@241@01  $FVF<next>) n2@263@01) n2@263@01))
      (= n1@263@01 n2@263@01))
    (= n1@263@01 n2@263@01))
  
  :qid |next-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((n@263@01 $Ref)) (!
  (=>
    (Set_in n@263@01 g@231@01)
    (and (= (inv@264@01 n@263@01) n@263@01) (img@265@01 n@263@01)))
  :pattern ((Set_in n@263@01 g@231@01))
  :pattern ((inv@264@01 n@263@01))
  :pattern ((img@265@01 n@263@01))
  :qid |next-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=> (and (img@265@01 r) (Set_in (inv@264@01 r) g@231@01)) (= (inv@264@01 r) r))
  :pattern ((inv@264@01 r))
  :qid |next-fctOfInv|)))
(assert (forall ((r $Ref)) (!
  (=>
    (Set_in (inv@264@01 r) g@231@01)
    ($FVF.loc_next ($FVF.lookup_next (as sm@241@01  $FVF<next>) r) r))
  :pattern ((inv@264@01 r))
  :qid |quant-u-15616|)))
(push) ; 3
(assert (not (forall ((r $Ref)) (!
  (=>
    (and (Set_in (inv@264@01 r) g@231@01) (img@265@01 r) (= r (inv@264@01 r)))
    (>
      (ite
        (and (img@240@01 r) (Set_in (inv@239@01 r) g@231@01))
        $Perm.Write
        $Perm.No)
      $Perm.No))
  
  :qid |quant-u-15617|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(declare-const sm@266@01 $FVF<next>)
; Definitional axioms for snapshot map domain
(assert (forall ((r $Ref)) (!
  (and
    (=>
      (Set_in r ($FVF.domain_next (as sm@266@01  $FVF<next>)))
      (and (Set_in (inv@264@01 r) g@231@01) (img@265@01 r)))
    (=>
      (and (Set_in (inv@264@01 r) g@231@01) (img@265@01 r))
      (Set_in r ($FVF.domain_next (as sm@266@01  $FVF<next>)))))
  :pattern ((Set_in r ($FVF.domain_next (as sm@266@01  $FVF<next>))))
  :qid |qp.fvfDomDef157|)))
; Definitional axioms for snapshot map values
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and (Set_in (inv@264@01 r) g@231@01) (img@265@01 r))
      (and (img@240@01 r) (Set_in (inv@239@01 r) g@231@01)))
    (=
      ($FVF.lookup_next (as sm@266@01  $FVF<next>) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@236@01))) r)))
  :pattern (($FVF.lookup_next (as sm@266@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@236@01))) r))
  :qid |qp.fvfValDef155|)))
(assert (forall ((r $Ref)) (!
  ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@236@01))) r) r)
  :pattern (($FVF.lookup_next (as sm@266@01  $FVF<next>) r))
  :qid |qp.fvfResTrgDef156|)))
(assert ($$%precondition ($SortWrappers.$FVF<next>To$Snap (as sm@266@01  $FVF<next>)) g@231@01))
(pop) ; 2
; Joined path conditions
(assert (forall ((n@263@01 $Ref)) (!
  (=>
    (Set_in n@263@01 g@231@01)
    (and (= (inv@264@01 n@263@01) n@263@01) (img@265@01 n@263@01)))
  :pattern ((Set_in n@263@01 g@231@01))
  :pattern ((inv@264@01 n@263@01))
  :pattern ((img@265@01 n@263@01))
  :qid |next-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=> (and (img@265@01 r) (Set_in (inv@264@01 r) g@231@01)) (= (inv@264@01 r) r))
  :pattern ((inv@264@01 r))
  :qid |next-fctOfInv|)))
(assert (forall ((r $Ref)) (!
  (and
    (=>
      (Set_in r ($FVF.domain_next (as sm@266@01  $FVF<next>)))
      (and (Set_in (inv@264@01 r) g@231@01) (img@265@01 r)))
    (=>
      (and (Set_in (inv@264@01 r) g@231@01) (img@265@01 r))
      (Set_in r ($FVF.domain_next (as sm@266@01  $FVF<next>)))))
  :pattern ((Set_in r ($FVF.domain_next (as sm@266@01  $FVF<next>))))
  :qid |qp.fvfDomDef157|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and (Set_in (inv@264@01 r) g@231@01) (img@265@01 r))
      (and (img@240@01 r) (Set_in (inv@239@01 r) g@231@01)))
    (=
      ($FVF.lookup_next (as sm@266@01  $FVF<next>) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@236@01))) r)))
  :pattern (($FVF.lookup_next (as sm@266@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@236@01))) r))
  :qid |qp.fvfValDef155|)))
(assert (forall ((r $Ref)) (!
  ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@236@01))) r) r)
  :pattern (($FVF.lookup_next (as sm@266@01  $FVF<next>) r))
  :qid |qp.fvfResTrgDef156|)))
(assert (and
  (forall ((r $Ref)) (!
    (=>
      (Set_in (inv@264@01 r) g@231@01)
      ($FVF.loc_next ($FVF.lookup_next (as sm@241@01  $FVF<next>) r) r))
    :pattern ((inv@264@01 r))
    :qid |quant-u-15616|))
  ($$%precondition ($SortWrappers.$FVF<next>To$Snap (as sm@266@01  $FVF<next>)) g@231@01)))
(assert (acyclic_graph<Bool> ($$ ($SortWrappers.$FVF<next>To$Snap (as sm@266@01  $FVF<next>)) g@231@01)))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@236@01)))))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@236@01))))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@236@01)))))))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@236@01))))))))))
  $Snap.unit))
; [eval] func_graph($$(g))
; [eval] $$(g)
(push) ; 2
(declare-const n@267@01 $Ref)
(push) ; 3
; [eval] (n in refs)
(assert (Set_in n@267@01 g@231@01))
(pop) ; 3
(declare-fun inv@268@01 ($Ref) $Ref)
(declare-fun img@269@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
(declare-const sm@270@01 $FVF<next>)
; Definitional axioms for snapshot map domain
; Definitional axioms for snapshot map values
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@240@01 r) (Set_in (inv@239@01 r) g@231@01))
    (=
      ($FVF.lookup_next (as sm@270@01  $FVF<next>) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@236@01))) r)))
  :pattern (($FVF.lookup_next (as sm@270@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@236@01))) r))
  :qid |qp.fvfValDef158|)))
(assert (forall ((r $Ref)) (!
  ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@236@01))) r) r)
  :pattern (($FVF.lookup_next (as sm@270@01  $FVF<next>) r))
  :qid |qp.fvfResTrgDef159|)))
; Check receiver injectivity
(push) ; 3
(assert (not (forall ((n1@267@01 $Ref) (n2@267@01 $Ref)) (!
  (=>
    (and
      (and
        (Set_in n1@267@01 g@231@01)
        ($FVF.loc_next ($FVF.lookup_next (as sm@270@01  $FVF<next>) n1@267@01) n1@267@01))
      (and
        (Set_in n2@267@01 g@231@01)
        ($FVF.loc_next ($FVF.lookup_next (as sm@270@01  $FVF<next>) n2@267@01) n2@267@01))
      (= n1@267@01 n2@267@01))
    (= n1@267@01 n2@267@01))
  
  :qid |next-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((n@267@01 $Ref)) (!
  (=>
    (Set_in n@267@01 g@231@01)
    (and (= (inv@268@01 n@267@01) n@267@01) (img@269@01 n@267@01)))
  :pattern ((Set_in n@267@01 g@231@01))
  :pattern ((inv@268@01 n@267@01))
  :pattern ((img@269@01 n@267@01))
  :qid |next-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=> (and (img@269@01 r) (Set_in (inv@268@01 r) g@231@01)) (= (inv@268@01 r) r))
  :pattern ((inv@268@01 r))
  :qid |next-fctOfInv|)))
(assert (forall ((r $Ref)) (!
  (=>
    (Set_in (inv@268@01 r) g@231@01)
    ($FVF.loc_next ($FVF.lookup_next (as sm@270@01  $FVF<next>) r) r))
  :pattern ((inv@268@01 r))
  :qid |quant-u-15619|)))
(push) ; 3
(assert (not (forall ((r $Ref)) (!
  (=>
    (and (Set_in (inv@268@01 r) g@231@01) (img@269@01 r) (= r (inv@268@01 r)))
    (>
      (ite
        (and (img@240@01 r) (Set_in (inv@239@01 r) g@231@01))
        $Perm.Write
        $Perm.No)
      $Perm.No))
  
  :qid |quant-u-15620|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(declare-const sm@271@01 $FVF<next>)
; Definitional axioms for snapshot map domain
(assert (forall ((r $Ref)) (!
  (and
    (=>
      (Set_in r ($FVF.domain_next (as sm@271@01  $FVF<next>)))
      (and (Set_in (inv@268@01 r) g@231@01) (img@269@01 r)))
    (=>
      (and (Set_in (inv@268@01 r) g@231@01) (img@269@01 r))
      (Set_in r ($FVF.domain_next (as sm@271@01  $FVF<next>)))))
  :pattern ((Set_in r ($FVF.domain_next (as sm@271@01  $FVF<next>))))
  :qid |qp.fvfDomDef162|)))
; Definitional axioms for snapshot map values
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and (Set_in (inv@268@01 r) g@231@01) (img@269@01 r))
      (and (img@240@01 r) (Set_in (inv@239@01 r) g@231@01)))
    (=
      ($FVF.lookup_next (as sm@271@01  $FVF<next>) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@236@01))) r)))
  :pattern (($FVF.lookup_next (as sm@271@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@236@01))) r))
  :qid |qp.fvfValDef160|)))
(assert (forall ((r $Ref)) (!
  ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@236@01))) r) r)
  :pattern (($FVF.lookup_next (as sm@271@01  $FVF<next>) r))
  :qid |qp.fvfResTrgDef161|)))
(assert ($$%precondition ($SortWrappers.$FVF<next>To$Snap (as sm@271@01  $FVF<next>)) g@231@01))
(pop) ; 2
; Joined path conditions
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@240@01 r) (Set_in (inv@239@01 r) g@231@01))
    (=
      ($FVF.lookup_next (as sm@270@01  $FVF<next>) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@236@01))) r)))
  :pattern (($FVF.lookup_next (as sm@270@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@236@01))) r))
  :qid |qp.fvfValDef158|)))
(assert (forall ((r $Ref)) (!
  ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@236@01))) r) r)
  :pattern (($FVF.lookup_next (as sm@270@01  $FVF<next>) r))
  :qid |qp.fvfResTrgDef159|)))
(assert (forall ((n@267@01 $Ref)) (!
  (=>
    (Set_in n@267@01 g@231@01)
    (and (= (inv@268@01 n@267@01) n@267@01) (img@269@01 n@267@01)))
  :pattern ((Set_in n@267@01 g@231@01))
  :pattern ((inv@268@01 n@267@01))
  :pattern ((img@269@01 n@267@01))
  :qid |next-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=> (and (img@269@01 r) (Set_in (inv@268@01 r) g@231@01)) (= (inv@268@01 r) r))
  :pattern ((inv@268@01 r))
  :qid |next-fctOfInv|)))
(assert (forall ((r $Ref)) (!
  (and
    (=>
      (Set_in r ($FVF.domain_next (as sm@271@01  $FVF<next>)))
      (and (Set_in (inv@268@01 r) g@231@01) (img@269@01 r)))
    (=>
      (and (Set_in (inv@268@01 r) g@231@01) (img@269@01 r))
      (Set_in r ($FVF.domain_next (as sm@271@01  $FVF<next>)))))
  :pattern ((Set_in r ($FVF.domain_next (as sm@271@01  $FVF<next>))))
  :qid |qp.fvfDomDef162|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and (Set_in (inv@268@01 r) g@231@01) (img@269@01 r))
      (and (img@240@01 r) (Set_in (inv@239@01 r) g@231@01)))
    (=
      ($FVF.lookup_next (as sm@271@01  $FVF<next>) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@236@01))) r)))
  :pattern (($FVF.lookup_next (as sm@271@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@236@01))) r))
  :qid |qp.fvfValDef160|)))
(assert (forall ((r $Ref)) (!
  ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@236@01))) r) r)
  :pattern (($FVF.lookup_next (as sm@271@01  $FVF<next>) r))
  :qid |qp.fvfResTrgDef161|)))
(assert (and
  (forall ((r $Ref)) (!
    (=>
      (Set_in (inv@268@01 r) g@231@01)
      ($FVF.loc_next ($FVF.lookup_next (as sm@270@01  $FVF<next>) r) r))
    :pattern ((inv@268@01 r))
    :qid |quant-u-15619|))
  ($$%precondition ($SortWrappers.$FVF<next>To$Snap (as sm@271@01  $FVF<next>)) g@231@01)))
(assert (func_graph<Bool> ($$ ($SortWrappers.$FVF<next>To$Snap (as sm@271@01  $FVF<next>)) g@231@01)))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@236@01))))))))))
  $Snap.unit))
; [eval] unshared_graph($$(g))
; [eval] $$(g)
(push) ; 2
(declare-const n@272@01 $Ref)
(push) ; 3
; [eval] (n in refs)
(assert (Set_in n@272@01 g@231@01))
(pop) ; 3
(declare-fun inv@273@01 ($Ref) $Ref)
(declare-fun img@274@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
(declare-const sm@275@01 $FVF<next>)
; Definitional axioms for snapshot map domain
; Definitional axioms for snapshot map values
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@240@01 r) (Set_in (inv@239@01 r) g@231@01))
    (=
      ($FVF.lookup_next (as sm@275@01  $FVF<next>) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@236@01))) r)))
  :pattern (($FVF.lookup_next (as sm@275@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@236@01))) r))
  :qid |qp.fvfValDef163|)))
(assert (forall ((r $Ref)) (!
  ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@236@01))) r) r)
  :pattern (($FVF.lookup_next (as sm@275@01  $FVF<next>) r))
  :qid |qp.fvfResTrgDef164|)))
; Check receiver injectivity
(push) ; 3
(assert (not (forall ((n1@272@01 $Ref) (n2@272@01 $Ref)) (!
  (=>
    (and
      (and
        (Set_in n1@272@01 g@231@01)
        ($FVF.loc_next ($FVF.lookup_next (as sm@275@01  $FVF<next>) n1@272@01) n1@272@01))
      (and
        (Set_in n2@272@01 g@231@01)
        ($FVF.loc_next ($FVF.lookup_next (as sm@275@01  $FVF<next>) n2@272@01) n2@272@01))
      (= n1@272@01 n2@272@01))
    (= n1@272@01 n2@272@01))
  
  :qid |next-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((n@272@01 $Ref)) (!
  (=>
    (Set_in n@272@01 g@231@01)
    (and (= (inv@273@01 n@272@01) n@272@01) (img@274@01 n@272@01)))
  :pattern ((Set_in n@272@01 g@231@01))
  :pattern ((inv@273@01 n@272@01))
  :pattern ((img@274@01 n@272@01))
  :qid |next-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=> (and (img@274@01 r) (Set_in (inv@273@01 r) g@231@01)) (= (inv@273@01 r) r))
  :pattern ((inv@273@01 r))
  :qid |next-fctOfInv|)))
(assert (forall ((r $Ref)) (!
  (=>
    (Set_in (inv@273@01 r) g@231@01)
    ($FVF.loc_next ($FVF.lookup_next (as sm@275@01  $FVF<next>) r) r))
  :pattern ((inv@273@01 r))
  :qid |quant-u-15622|)))
(push) ; 3
(assert (not (forall ((r $Ref)) (!
  (=>
    (and (Set_in (inv@273@01 r) g@231@01) (img@274@01 r) (= r (inv@273@01 r)))
    (>
      (ite
        (and (img@240@01 r) (Set_in (inv@239@01 r) g@231@01))
        $Perm.Write
        $Perm.No)
      $Perm.No))
  
  :qid |quant-u-15623|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(declare-const sm@276@01 $FVF<next>)
; Definitional axioms for snapshot map domain
(assert (forall ((r $Ref)) (!
  (and
    (=>
      (Set_in r ($FVF.domain_next (as sm@276@01  $FVF<next>)))
      (and (Set_in (inv@273@01 r) g@231@01) (img@274@01 r)))
    (=>
      (and (Set_in (inv@273@01 r) g@231@01) (img@274@01 r))
      (Set_in r ($FVF.domain_next (as sm@276@01  $FVF<next>)))))
  :pattern ((Set_in r ($FVF.domain_next (as sm@276@01  $FVF<next>))))
  :qid |qp.fvfDomDef167|)))
; Definitional axioms for snapshot map values
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and (Set_in (inv@273@01 r) g@231@01) (img@274@01 r))
      (and (img@240@01 r) (Set_in (inv@239@01 r) g@231@01)))
    (=
      ($FVF.lookup_next (as sm@276@01  $FVF<next>) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@236@01))) r)))
  :pattern (($FVF.lookup_next (as sm@276@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@236@01))) r))
  :qid |qp.fvfValDef165|)))
(assert (forall ((r $Ref)) (!
  ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@236@01))) r) r)
  :pattern (($FVF.lookup_next (as sm@276@01  $FVF<next>) r))
  :qid |qp.fvfResTrgDef166|)))
(assert ($$%precondition ($SortWrappers.$FVF<next>To$Snap (as sm@276@01  $FVF<next>)) g@231@01))
(pop) ; 2
; Joined path conditions
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@240@01 r) (Set_in (inv@239@01 r) g@231@01))
    (=
      ($FVF.lookup_next (as sm@275@01  $FVF<next>) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@236@01))) r)))
  :pattern (($FVF.lookup_next (as sm@275@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@236@01))) r))
  :qid |qp.fvfValDef163|)))
(assert (forall ((r $Ref)) (!
  ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@236@01))) r) r)
  :pattern (($FVF.lookup_next (as sm@275@01  $FVF<next>) r))
  :qid |qp.fvfResTrgDef164|)))
(assert (forall ((n@272@01 $Ref)) (!
  (=>
    (Set_in n@272@01 g@231@01)
    (and (= (inv@273@01 n@272@01) n@272@01) (img@274@01 n@272@01)))
  :pattern ((Set_in n@272@01 g@231@01))
  :pattern ((inv@273@01 n@272@01))
  :pattern ((img@274@01 n@272@01))
  :qid |next-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=> (and (img@274@01 r) (Set_in (inv@273@01 r) g@231@01)) (= (inv@273@01 r) r))
  :pattern ((inv@273@01 r))
  :qid |next-fctOfInv|)))
(assert (forall ((r $Ref)) (!
  (and
    (=>
      (Set_in r ($FVF.domain_next (as sm@276@01  $FVF<next>)))
      (and (Set_in (inv@273@01 r) g@231@01) (img@274@01 r)))
    (=>
      (and (Set_in (inv@273@01 r) g@231@01) (img@274@01 r))
      (Set_in r ($FVF.domain_next (as sm@276@01  $FVF<next>)))))
  :pattern ((Set_in r ($FVF.domain_next (as sm@276@01  $FVF<next>))))
  :qid |qp.fvfDomDef167|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and (Set_in (inv@273@01 r) g@231@01) (img@274@01 r))
      (and (img@240@01 r) (Set_in (inv@239@01 r) g@231@01)))
    (=
      ($FVF.lookup_next (as sm@276@01  $FVF<next>) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@236@01))) r)))
  :pattern (($FVF.lookup_next (as sm@276@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@236@01))) r))
  :qid |qp.fvfValDef165|)))
(assert (forall ((r $Ref)) (!
  ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@236@01))) r) r)
  :pattern (($FVF.lookup_next (as sm@276@01  $FVF<next>) r))
  :qid |qp.fvfResTrgDef166|)))
(assert (and
  (forall ((r $Ref)) (!
    (=>
      (Set_in (inv@273@01 r) g@231@01)
      ($FVF.loc_next ($FVF.lookup_next (as sm@275@01  $FVF<next>) r) r))
    :pattern ((inv@273@01 r))
    :qid |quant-u-15622|))
  ($$%precondition ($SortWrappers.$FVF<next>To$Snap (as sm@276@01  $FVF<next>)) g@231@01)))
(assert (unshared_graph<Bool> ($$ ($SortWrappers.$FVF<next>To$Snap (as sm@276@01  $FVF<next>)) g@231@01)))
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
(set-option :timeout 0)
(push) ; 2
(pop) ; 2
(push) ; 2
; [exec]
; var old_g: Set[Edge]
(declare-const old_g@277@01 Set<Edge>)
; [exec]
; old_g := $$(g)
; [eval] $$(g)
(push) ; 3
(declare-const n@278@01 $Ref)
(push) ; 4
; [eval] (n in refs)
(assert (Set_in n@278@01 g@231@01))
(pop) ; 4
(declare-fun inv@279@01 ($Ref) $Ref)
(declare-fun img@280@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
(declare-const sm@281@01 $FVF<next>)
; Definitional axioms for snapshot map domain
; Definitional axioms for snapshot map values
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@240@01 r) (Set_in (inv@239@01 r) g@231@01))
    (=
      ($FVF.lookup_next (as sm@281@01  $FVF<next>) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@236@01))) r)))
  :pattern (($FVF.lookup_next (as sm@281@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@236@01))) r))
  :qid |qp.fvfValDef168|)))
(assert (forall ((r $Ref)) (!
  ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@236@01))) r) r)
  :pattern (($FVF.lookup_next (as sm@281@01  $FVF<next>) r))
  :qid |qp.fvfResTrgDef169|)))
; Check receiver injectivity
(push) ; 4
(assert (not (forall ((n1@278@01 $Ref) (n2@278@01 $Ref)) (!
  (=>
    (and
      (and
        (Set_in n1@278@01 g@231@01)
        ($FVF.loc_next ($FVF.lookup_next (as sm@281@01  $FVF<next>) n1@278@01) n1@278@01))
      (and
        (Set_in n2@278@01 g@231@01)
        ($FVF.loc_next ($FVF.lookup_next (as sm@281@01  $FVF<next>) n2@278@01) n2@278@01))
      (= n1@278@01 n2@278@01))
    (= n1@278@01 n2@278@01))
  
  :qid |next-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((n@278@01 $Ref)) (!
  (=>
    (Set_in n@278@01 g@231@01)
    (and (= (inv@279@01 n@278@01) n@278@01) (img@280@01 n@278@01)))
  :pattern ((Set_in n@278@01 g@231@01))
  :pattern ((inv@279@01 n@278@01))
  :pattern ((img@280@01 n@278@01))
  :qid |next-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=> (and (img@280@01 r) (Set_in (inv@279@01 r) g@231@01)) (= (inv@279@01 r) r))
  :pattern ((inv@279@01 r))
  :qid |next-fctOfInv|)))
(assert (forall ((r $Ref)) (!
  (=>
    (Set_in (inv@279@01 r) g@231@01)
    ($FVF.loc_next ($FVF.lookup_next (as sm@281@01  $FVF<next>) r) r))
  :pattern ((inv@279@01 r))
  :qid |quant-u-15625|)))
(push) ; 4
(assert (not (forall ((r $Ref)) (!
  (=>
    (and (Set_in (inv@279@01 r) g@231@01) (img@280@01 r) (= r (inv@279@01 r)))
    (>
      (ite
        (and (img@240@01 r) (Set_in (inv@239@01 r) g@231@01))
        $Perm.Write
        $Perm.No)
      $Perm.No))
  
  :qid |quant-u-15626|))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(declare-const sm@282@01 $FVF<next>)
; Definitional axioms for snapshot map domain
(assert (forall ((r $Ref)) (!
  (and
    (=>
      (Set_in r ($FVF.domain_next (as sm@282@01  $FVF<next>)))
      (and (Set_in (inv@279@01 r) g@231@01) (img@280@01 r)))
    (=>
      (and (Set_in (inv@279@01 r) g@231@01) (img@280@01 r))
      (Set_in r ($FVF.domain_next (as sm@282@01  $FVF<next>)))))
  :pattern ((Set_in r ($FVF.domain_next (as sm@282@01  $FVF<next>))))
  :qid |qp.fvfDomDef172|)))
; Definitional axioms for snapshot map values
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and (Set_in (inv@279@01 r) g@231@01) (img@280@01 r))
      (and (img@240@01 r) (Set_in (inv@239@01 r) g@231@01)))
    (=
      ($FVF.lookup_next (as sm@282@01  $FVF<next>) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@236@01))) r)))
  :pattern (($FVF.lookup_next (as sm@282@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@236@01))) r))
  :qid |qp.fvfValDef170|)))
(assert (forall ((r $Ref)) (!
  ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@236@01))) r) r)
  :pattern (($FVF.lookup_next (as sm@282@01  $FVF<next>) r))
  :qid |qp.fvfResTrgDef171|)))
(assert ($$%precondition ($SortWrappers.$FVF<next>To$Snap (as sm@282@01  $FVF<next>)) g@231@01))
(pop) ; 3
; Joined path conditions
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@240@01 r) (Set_in (inv@239@01 r) g@231@01))
    (=
      ($FVF.lookup_next (as sm@281@01  $FVF<next>) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@236@01))) r)))
  :pattern (($FVF.lookup_next (as sm@281@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@236@01))) r))
  :qid |qp.fvfValDef168|)))
(assert (forall ((r $Ref)) (!
  ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@236@01))) r) r)
  :pattern (($FVF.lookup_next (as sm@281@01  $FVF<next>) r))
  :qid |qp.fvfResTrgDef169|)))
(assert (forall ((n@278@01 $Ref)) (!
  (=>
    (Set_in n@278@01 g@231@01)
    (and (= (inv@279@01 n@278@01) n@278@01) (img@280@01 n@278@01)))
  :pattern ((Set_in n@278@01 g@231@01))
  :pattern ((inv@279@01 n@278@01))
  :pattern ((img@280@01 n@278@01))
  :qid |next-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=> (and (img@280@01 r) (Set_in (inv@279@01 r) g@231@01)) (= (inv@279@01 r) r))
  :pattern ((inv@279@01 r))
  :qid |next-fctOfInv|)))
(assert (forall ((r $Ref)) (!
  (and
    (=>
      (Set_in r ($FVF.domain_next (as sm@282@01  $FVF<next>)))
      (and (Set_in (inv@279@01 r) g@231@01) (img@280@01 r)))
    (=>
      (and (Set_in (inv@279@01 r) g@231@01) (img@280@01 r))
      (Set_in r ($FVF.domain_next (as sm@282@01  $FVF<next>)))))
  :pattern ((Set_in r ($FVF.domain_next (as sm@282@01  $FVF<next>))))
  :qid |qp.fvfDomDef172|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and (Set_in (inv@279@01 r) g@231@01) (img@280@01 r))
      (and (img@240@01 r) (Set_in (inv@239@01 r) g@231@01)))
    (=
      ($FVF.lookup_next (as sm@282@01  $FVF<next>) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@236@01))) r)))
  :pattern (($FVF.lookup_next (as sm@282@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@236@01))) r))
  :qid |qp.fvfValDef170|)))
(assert (forall ((r $Ref)) (!
  ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@236@01))) r) r)
  :pattern (($FVF.lookup_next (as sm@282@01  $FVF<next>) r))
  :qid |qp.fvfResTrgDef171|)))
(assert (and
  (forall ((r $Ref)) (!
    (=>
      (Set_in (inv@279@01 r) g@231@01)
      ($FVF.loc_next ($FVF.lookup_next (as sm@281@01  $FVF<next>) r) r))
    :pattern ((inv@279@01 r))
    :qid |quant-u-15625|))
  ($$%precondition ($SortWrappers.$FVF<next>To$Snap (as sm@282@01  $FVF<next>)) g@231@01)))
(declare-const old_g@283@01 Set<Edge>)
(assert (=
  old_g@283@01
  ($$ ($SortWrappers.$FVF<next>To$Snap (as sm@282@01  $FVF<next>)) g@231@01)))
; [exec]
; last := x
; [eval] last == null
(push) ; 3
(set-option :timeout 10)
(assert (not (not (= x@232@01 $Ref.null))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; [then-branch: 36 | x@232@01 == Null | dead]
; [else-branch: 36 | x@232@01 != Null | live]
(set-option :timeout 0)
(push) ; 3
; [else-branch: 36 | x@232@01 != Null]
(assert (not (= x@232@01 $Ref.null)))
(pop) ; 3
; [eval] !(last == null)
; [eval] last == null
(push) ; 3
(set-option :timeout 10)
(assert (not (= x@232@01 $Ref.null)))
(check-sat)
; unknown
(pop) ; 3
; 0.01s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (not (= x@232@01 $Ref.null))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; [then-branch: 37 | x@232@01 != Null | live]
; [else-branch: 37 | x@232@01 == Null | dead]
(set-option :timeout 0)
(push) ; 3
; [then-branch: 37 | x@232@01 != Null]
(assert (not (= x@232@01 $Ref.null)))
(declare-const last@284@01 $Ref)
(push) ; 4
; Loop head block: Check well-definedness of invariant
(declare-const $t@285@01 $Snap)
(assert (= $t@285@01 ($Snap.combine ($Snap.first $t@285@01) ($Snap.second $t@285@01))))
(assert (= ($Snap.first $t@285@01) $Snap.unit))
; [eval] !((null in g))
; [eval] (null in g)
(assert (=
  ($Snap.second $t@285@01)
  ($Snap.combine
    ($Snap.first ($Snap.second $t@285@01))
    ($Snap.second ($Snap.second $t@285@01)))))
(declare-const n$1@286@01 $Ref)
(push) ; 5
; [eval] (n$1 in g)
(assert (Set_in n$1@286@01 g@231@01))
(declare-const sm@287@01 $FVF<next>)
; Definitional axioms for snapshot map values
(pop) ; 5
(declare-fun inv@288@01 ($Ref) $Ref)
(declare-fun img@289@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
; Check receiver injectivity
(push) ; 5
(assert (not (forall ((n$11@286@01 $Ref) (n$12@286@01 $Ref)) (!
  (=>
    (and
      (Set_in n$11@286@01 g@231@01)
      (Set_in n$12@286@01 g@231@01)
      (= n$11@286@01 n$12@286@01))
    (= n$11@286@01 n$12@286@01))
  
  :qid |next-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((n$1@286@01 $Ref)) (!
  (=>
    (Set_in n$1@286@01 g@231@01)
    (and (= (inv@288@01 n$1@286@01) n$1@286@01) (img@289@01 n$1@286@01)))
  :pattern (($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@285@01))) n$1@286@01) n$1@286@01))
  :qid |quant-u-15628|)))
(assert (forall ((r $Ref)) (!
  (=> (and (img@289@01 r) (Set_in (inv@288@01 r) g@231@01)) (= (inv@288@01 r) r))
  :pattern ((inv@288@01 r))
  :qid |next-fctOfInv|)))
; Permissions are non-negative
; Field permissions are at most one
; Permission implies non-null receiver
(assert (forall ((n$1@286@01 $Ref)) (!
  (=> (Set_in n$1@286@01 g@231@01) (not (= n$1@286@01 $Ref.null)))
  :pattern (($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@285@01))) n$1@286@01) n$1@286@01))
  :qid |next-permImpliesNonNull|)))
(declare-const sm@290@01 $FVF<next>)
; Definitional axioms for snapshot map values
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@289@01 r) (Set_in (inv@288@01 r) g@231@01))
    (=
      ($FVF.lookup_next (as sm@290@01  $FVF<next>) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@285@01))) r)))
  :pattern (($FVF.lookup_next (as sm@290@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@285@01))) r))
  :qid |qp.fvfValDef174|)))
(assert (forall ((r $Ref)) (!
  ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@285@01))) r) r)
  :pattern (($FVF.lookup_next (as sm@290@01  $FVF<next>) r))
  :qid |qp.fvfResTrgDef175|)))
(assert (forall ((r $Ref)) (!
  (=>
    (Set_in (inv@288@01 r) g@231@01)
    ($FVF.loc_next ($FVF.lookup_next (as sm@290@01  $FVF<next>) r) r))
  :pattern ((inv@288@01 r))
  :qid |quant-u-15629|)))
(assert (=
  ($Snap.second ($Snap.second $t@285@01))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second $t@285@01)))
    ($Snap.second ($Snap.second ($Snap.second $t@285@01))))))
(assert (= ($Snap.first ($Snap.second ($Snap.second $t@285@01))) $Snap.unit))
; [eval] (forall n$2: Ref :: { (n$2.next in g) } { (n$2 in g), n$2.next } (n$2 in g) && n$2.next != null ==> (n$2.next in g))
(declare-const n$2@291@01 $Ref)
(push) ; 5
; [eval] (n$2 in g) && n$2.next != null ==> (n$2.next in g)
; [eval] (n$2 in g) && n$2.next != null
; [eval] (n$2 in g)
(push) ; 6
; [then-branch: 38 | !(n$2@291@01 in g@231@01) | live]
; [else-branch: 38 | n$2@291@01 in g@231@01 | live]
(push) ; 7
; [then-branch: 38 | !(n$2@291@01 in g@231@01)]
(assert (not (Set_in n$2@291@01 g@231@01)))
(pop) ; 7
(push) ; 7
; [else-branch: 38 | n$2@291@01 in g@231@01]
(assert (Set_in n$2@291@01 g@231@01))
; [eval] n$2.next != null
(assert (and
  (forall ((r $Ref)) (!
    (=>
      (and (img@289@01 r) (Set_in (inv@288@01 r) g@231@01))
      (=
        ($FVF.lookup_next (as sm@290@01  $FVF<next>) r)
        ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@285@01))) r)))
    :pattern (($FVF.lookup_next (as sm@290@01  $FVF<next>) r))
    :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@285@01))) r))
    :qid |qp.fvfValDef174|))
  (forall ((r $Ref)) (!
    ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@285@01))) r) r)
    :pattern (($FVF.lookup_next (as sm@290@01  $FVF<next>) r))
    :qid |qp.fvfResTrgDef175|))))
(assert ($FVF.loc_next ($FVF.lookup_next (as sm@290@01  $FVF<next>) n$2@291@01) n$2@291@01))
(push) ; 8
(assert (not (and (img@289@01 n$2@291@01) (Set_in (inv@288@01 n$2@291@01) g@231@01))))
(check-sat)
; unsat
(pop) ; 8
; 0.00s
; (get-info :all-statistics)
(pop) ; 7
(pop) ; 6
; Joined path conditions
; Joined path conditions
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@289@01 r) (Set_in (inv@288@01 r) g@231@01))
    (=
      ($FVF.lookup_next (as sm@290@01  $FVF<next>) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@285@01))) r)))
  :pattern (($FVF.lookup_next (as sm@290@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@285@01))) r))
  :qid |qp.fvfValDef174|)))
(assert (forall ((r $Ref)) (!
  ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@285@01))) r) r)
  :pattern (($FVF.lookup_next (as sm@290@01  $FVF<next>) r))
  :qid |qp.fvfResTrgDef175|)))
(assert (=>
  (Set_in n$2@291@01 g@231@01)
  (and
    (Set_in n$2@291@01 g@231@01)
    ($FVF.loc_next ($FVF.lookup_next (as sm@290@01  $FVF<next>) n$2@291@01) n$2@291@01))))
(assert (or (Set_in n$2@291@01 g@231@01) (not (Set_in n$2@291@01 g@231@01))))
(push) ; 6
; [then-branch: 39 | n$2@291@01 in g@231@01 && Lookup(next, sm@290@01, n$2@291@01) != Null | live]
; [else-branch: 39 | !(n$2@291@01 in g@231@01 && Lookup(next, sm@290@01, n$2@291@01) != Null) | live]
(push) ; 7
; [then-branch: 39 | n$2@291@01 in g@231@01 && Lookup(next, sm@290@01, n$2@291@01) != Null]
(assert (and
  (Set_in n$2@291@01 g@231@01)
  (not (= ($FVF.lookup_next (as sm@290@01  $FVF<next>) n$2@291@01) $Ref.null))))
; [eval] (n$2.next in g)
(assert (and
  (forall ((r $Ref)) (!
    (=>
      (and (img@289@01 r) (Set_in (inv@288@01 r) g@231@01))
      (=
        ($FVF.lookup_next (as sm@290@01  $FVF<next>) r)
        ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@285@01))) r)))
    :pattern (($FVF.lookup_next (as sm@290@01  $FVF<next>) r))
    :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@285@01))) r))
    :qid |qp.fvfValDef174|))
  (forall ((r $Ref)) (!
    ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@285@01))) r) r)
    :pattern (($FVF.lookup_next (as sm@290@01  $FVF<next>) r))
    :qid |qp.fvfResTrgDef175|))))
(assert ($FVF.loc_next ($FVF.lookup_next (as sm@290@01  $FVF<next>) n$2@291@01) n$2@291@01))
(push) ; 8
(assert (not (and (img@289@01 n$2@291@01) (Set_in (inv@288@01 n$2@291@01) g@231@01))))
(check-sat)
; unsat
(pop) ; 8
; 0.00s
; (get-info :all-statistics)
(pop) ; 7
(push) ; 7
; [else-branch: 39 | !(n$2@291@01 in g@231@01 && Lookup(next, sm@290@01, n$2@291@01) != Null)]
(assert (not
  (and
    (Set_in n$2@291@01 g@231@01)
    (not (= ($FVF.lookup_next (as sm@290@01  $FVF<next>) n$2@291@01) $Ref.null)))))
(pop) ; 7
(pop) ; 6
; Joined path conditions
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@289@01 r) (Set_in (inv@288@01 r) g@231@01))
    (=
      ($FVF.lookup_next (as sm@290@01  $FVF<next>) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@285@01))) r)))
  :pattern (($FVF.lookup_next (as sm@290@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@285@01))) r))
  :qid |qp.fvfValDef174|)))
(assert (forall ((r $Ref)) (!
  ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@285@01))) r) r)
  :pattern (($FVF.lookup_next (as sm@290@01  $FVF<next>) r))
  :qid |qp.fvfResTrgDef175|)))
(assert (=>
  (and
    (Set_in n$2@291@01 g@231@01)
    (not (= ($FVF.lookup_next (as sm@290@01  $FVF<next>) n$2@291@01) $Ref.null)))
  (and
    (Set_in n$2@291@01 g@231@01)
    (not (= ($FVF.lookup_next (as sm@290@01  $FVF<next>) n$2@291@01) $Ref.null))
    ($FVF.loc_next ($FVF.lookup_next (as sm@290@01  $FVF<next>) n$2@291@01) n$2@291@01))))
; Joined path conditions
(assert (or
  (not
    (and
      (Set_in n$2@291@01 g@231@01)
      (not
        (= ($FVF.lookup_next (as sm@290@01  $FVF<next>) n$2@291@01) $Ref.null))))
  (and
    (Set_in n$2@291@01 g@231@01)
    (not (= ($FVF.lookup_next (as sm@290@01  $FVF<next>) n$2@291@01) $Ref.null)))))
; Definitional axioms for snapshot map values
(pop) ; 5
; Nested auxiliary terms: globals (aux)
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@289@01 r) (Set_in (inv@288@01 r) g@231@01))
    (=
      ($FVF.lookup_next (as sm@290@01  $FVF<next>) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@285@01))) r)))
  :pattern (($FVF.lookup_next (as sm@290@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@285@01))) r))
  :qid |qp.fvfValDef174|)))
(assert (forall ((r $Ref)) (!
  ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@285@01))) r) r)
  :pattern (($FVF.lookup_next (as sm@290@01  $FVF<next>) r))
  :qid |qp.fvfResTrgDef175|)))
; Nested auxiliary terms: non-globals (aux)
(assert (forall ((n$2@291@01 $Ref)) (!
  (and
    (=>
      (Set_in n$2@291@01 g@231@01)
      (and
        (Set_in n$2@291@01 g@231@01)
        ($FVF.loc_next ($FVF.lookup_next (as sm@290@01  $FVF<next>) n$2@291@01) n$2@291@01)))
    (or (Set_in n$2@291@01 g@231@01) (not (Set_in n$2@291@01 g@231@01)))
    (=>
      (and
        (Set_in n$2@291@01 g@231@01)
        (not
          (= ($FVF.lookup_next (as sm@290@01  $FVF<next>) n$2@291@01) $Ref.null)))
      (and
        (Set_in n$2@291@01 g@231@01)
        (not
          (= ($FVF.lookup_next (as sm@290@01  $FVF<next>) n$2@291@01) $Ref.null))
        ($FVF.loc_next ($FVF.lookup_next (as sm@290@01  $FVF<next>) n$2@291@01) n$2@291@01)))
    (or
      (not
        (and
          (Set_in n$2@291@01 g@231@01)
          (not
            (=
              ($FVF.lookup_next (as sm@290@01  $FVF<next>) n$2@291@01)
              $Ref.null))))
      (and
        (Set_in n$2@291@01 g@231@01)
        (not
          (= ($FVF.lookup_next (as sm@290@01  $FVF<next>) n$2@291@01) $Ref.null)))))
  :pattern ((Set_in ($FVF.lookup_next (as sm@290@01  $FVF<next>) n$2@291@01) g@231@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/graphs/static/outlines/list_append.vpr@367@23@367@31-aux|)))
(assert (forall ((n$2@291@01 $Ref)) (!
  (and
    (=>
      (Set_in n$2@291@01 g@231@01)
      (and
        (Set_in n$2@291@01 g@231@01)
        ($FVF.loc_next ($FVF.lookup_next (as sm@290@01  $FVF<next>) n$2@291@01) n$2@291@01)))
    (or (Set_in n$2@291@01 g@231@01) (not (Set_in n$2@291@01 g@231@01)))
    (=>
      (and
        (Set_in n$2@291@01 g@231@01)
        (not
          (= ($FVF.lookup_next (as sm@290@01  $FVF<next>) n$2@291@01) $Ref.null)))
      (and
        (Set_in n$2@291@01 g@231@01)
        (not
          (= ($FVF.lookup_next (as sm@290@01  $FVF<next>) n$2@291@01) $Ref.null))
        ($FVF.loc_next ($FVF.lookup_next (as sm@290@01  $FVF<next>) n$2@291@01) n$2@291@01)))
    (or
      (not
        (and
          (Set_in n$2@291@01 g@231@01)
          (not
            (=
              ($FVF.lookup_next (as sm@290@01  $FVF<next>) n$2@291@01)
              $Ref.null))))
      (and
        (Set_in n$2@291@01 g@231@01)
        (not
          (= ($FVF.lookup_next (as sm@290@01  $FVF<next>) n$2@291@01) $Ref.null)))))
  :pattern ((Set_in n$2@291@01 g@231@01) ($FVF.loc_next ($FVF.lookup_next (as sm@290@01  $FVF<next>) n$2@291@01) n$2@291@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/graphs/static/outlines/list_append.vpr@367@23@367@31-aux|)))
(assert (forall ((n$2@291@01 $Ref)) (!
  (=>
    (and
      (Set_in n$2@291@01 g@231@01)
      (not
        (= ($FVF.lookup_next (as sm@290@01  $FVF<next>) n$2@291@01) $Ref.null)))
    (Set_in ($FVF.lookup_next (as sm@290@01  $FVF<next>) n$2@291@01) g@231@01))
  :pattern ((Set_in ($FVF.lookup_next (as sm@290@01  $FVF<next>) n$2@291@01) g@231@01))
  :pattern ((Set_in n$2@291@01 g@231@01) ($FVF.loc_next ($FVF.lookup_next (as sm@290@01  $FVF<next>) n$2@291@01) n$2@291@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/graphs/static/outlines/list_append.vpr@367@23@367@31|)))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second $t@285@01)))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@285@01))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@285@01)))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@285@01))))
  $Snap.unit))
; [eval] (last in g)
(assert (Set_in last@284@01 g@231@01))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@285@01))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@285@01)))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@285@01))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@285@01)))))
  $Snap.unit))
; [eval] (x in g)
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@285@01)))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@285@01))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@285@01)))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@285@01))))))
  $Snap.unit))
; [eval] (y in g)
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@285@01))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@285@01)))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@285@01))))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@285@01)))))))
  $Snap.unit))
; [eval] (forall n: Ref :: { (n in g) } { exists_path($$(g), x, n) } { exists_path($$(g), y, n) } (n in g) ==> exists_path($$(g), x, n) || exists_path($$(g), y, n))
(declare-const n@292@01 $Ref)
(push) ; 5
; [eval] (n in g) ==> exists_path($$(g), x, n) || exists_path($$(g), y, n)
; [eval] (n in g)
(push) ; 6
; [then-branch: 40 | n@292@01 in g@231@01 | live]
; [else-branch: 40 | !(n@292@01 in g@231@01) | live]
(push) ; 7
; [then-branch: 40 | n@292@01 in g@231@01]
(assert (Set_in n@292@01 g@231@01))
; [eval] exists_path($$(g), x, n) || exists_path($$(g), y, n)
; [eval] exists_path($$(g), x, n)
; [eval] $$(g)
(push) ; 8
(declare-const n@293@01 $Ref)
(push) ; 9
; [eval] (n in refs)
(assert (Set_in n@293@01 g@231@01))
(pop) ; 9
(declare-fun inv@294@01 ($Ref) $Ref)
(declare-fun img@295@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
; Definitional axioms for snapshot map domain
; Definitional axioms for snapshot map values
; Check receiver injectivity
(push) ; 9
(assert (not (forall ((n1@293@01 $Ref) (n2@293@01 $Ref)) (!
  (=>
    (and
      (and
        (Set_in n1@293@01 g@231@01)
        ($FVF.loc_next ($FVF.lookup_next (as sm@290@01  $FVF<next>) n1@293@01) n1@293@01))
      (and
        (Set_in n2@293@01 g@231@01)
        ($FVF.loc_next ($FVF.lookup_next (as sm@290@01  $FVF<next>) n2@293@01) n2@293@01))
      (= n1@293@01 n2@293@01))
    (= n1@293@01 n2@293@01))
  
  :qid |next-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 9
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((n@293@01 $Ref)) (!
  (=>
    (Set_in n@293@01 g@231@01)
    (and (= (inv@294@01 n@293@01) n@293@01) (img@295@01 n@293@01)))
  :pattern ((Set_in n@293@01 g@231@01))
  :pattern ((inv@294@01 n@293@01))
  :pattern ((img@295@01 n@293@01))
  :qid |next-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=> (and (img@295@01 r) (Set_in (inv@294@01 r) g@231@01)) (= (inv@294@01 r) r))
  :pattern ((inv@294@01 r))
  :qid |next-fctOfInv|)))
(assert (forall ((r $Ref)) (!
  (=>
    (Set_in (inv@294@01 r) g@231@01)
    ($FVF.loc_next ($FVF.lookup_next (as sm@290@01  $FVF<next>) r) r))
  :pattern ((inv@294@01 r))
  :qid |quant-u-15631|)))
(push) ; 9
(assert (not (forall ((r $Ref)) (!
  (=>
    (and (Set_in (inv@294@01 r) g@231@01) (img@295@01 r) (= r (inv@294@01 r)))
    (>
      (ite
        (and (img@289@01 r) (Set_in (inv@288@01 r) g@231@01))
        $Perm.Write
        $Perm.No)
      $Perm.No))
  
  :qid |quant-u-15632|))))
(check-sat)
; unsat
(pop) ; 9
; 0.00s
; (get-info :all-statistics)
(declare-const sm@296@01 $FVF<next>)
; Definitional axioms for snapshot map domain
(assert (forall ((r $Ref)) (!
  (and
    (=>
      (Set_in r ($FVF.domain_next (as sm@296@01  $FVF<next>)))
      (and (Set_in (inv@294@01 r) g@231@01) (img@295@01 r)))
    (=>
      (and (Set_in (inv@294@01 r) g@231@01) (img@295@01 r))
      (Set_in r ($FVF.domain_next (as sm@296@01  $FVF<next>)))))
  :pattern ((Set_in r ($FVF.domain_next (as sm@296@01  $FVF<next>))))
  :qid |qp.fvfDomDef178|)))
; Definitional axioms for snapshot map values
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and (Set_in (inv@294@01 r) g@231@01) (img@295@01 r))
      (and (img@289@01 r) (Set_in (inv@288@01 r) g@231@01)))
    (=
      ($FVF.lookup_next (as sm@296@01  $FVF<next>) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@285@01))) r)))
  :pattern (($FVF.lookup_next (as sm@296@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@285@01))) r))
  :qid |qp.fvfValDef176|)))
(assert (forall ((r $Ref)) (!
  ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@285@01))) r) r)
  :pattern (($FVF.lookup_next (as sm@296@01  $FVF<next>) r))
  :qid |qp.fvfResTrgDef177|)))
(assert ($$%precondition ($SortWrappers.$FVF<next>To$Snap (as sm@296@01  $FVF<next>)) g@231@01))
(pop) ; 8
; Joined path conditions
(assert (forall ((n@293@01 $Ref)) (!
  (=>
    (Set_in n@293@01 g@231@01)
    (and (= (inv@294@01 n@293@01) n@293@01) (img@295@01 n@293@01)))
  :pattern ((Set_in n@293@01 g@231@01))
  :pattern ((inv@294@01 n@293@01))
  :pattern ((img@295@01 n@293@01))
  :qid |next-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=> (and (img@295@01 r) (Set_in (inv@294@01 r) g@231@01)) (= (inv@294@01 r) r))
  :pattern ((inv@294@01 r))
  :qid |next-fctOfInv|)))
(assert (forall ((r $Ref)) (!
  (and
    (=>
      (Set_in r ($FVF.domain_next (as sm@296@01  $FVF<next>)))
      (and (Set_in (inv@294@01 r) g@231@01) (img@295@01 r)))
    (=>
      (and (Set_in (inv@294@01 r) g@231@01) (img@295@01 r))
      (Set_in r ($FVF.domain_next (as sm@296@01  $FVF<next>)))))
  :pattern ((Set_in r ($FVF.domain_next (as sm@296@01  $FVF<next>))))
  :qid |qp.fvfDomDef178|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and (Set_in (inv@294@01 r) g@231@01) (img@295@01 r))
      (and (img@289@01 r) (Set_in (inv@288@01 r) g@231@01)))
    (=
      ($FVF.lookup_next (as sm@296@01  $FVF<next>) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@285@01))) r)))
  :pattern (($FVF.lookup_next (as sm@296@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@285@01))) r))
  :qid |qp.fvfValDef176|)))
(assert (forall ((r $Ref)) (!
  ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@285@01))) r) r)
  :pattern (($FVF.lookup_next (as sm@296@01  $FVF<next>) r))
  :qid |qp.fvfResTrgDef177|)))
(assert (and
  (forall ((r $Ref)) (!
    (=>
      (Set_in (inv@294@01 r) g@231@01)
      ($FVF.loc_next ($FVF.lookup_next (as sm@290@01  $FVF<next>) r) r))
    :pattern ((inv@294@01 r))
    :qid |quant-u-15631|))
  ($$%precondition ($SortWrappers.$FVF<next>To$Snap (as sm@296@01  $FVF<next>)) g@231@01)))
(push) ; 8
; [then-branch: 41 | exists_path[Bool]($$(sm@296@01, g@231@01), x@232@01, n@292@01) | live]
; [else-branch: 41 | !(exists_path[Bool]($$(sm@296@01, g@231@01), x@232@01, n@292@01)) | live]
(push) ; 9
; [then-branch: 41 | exists_path[Bool]($$(sm@296@01, g@231@01), x@232@01, n@292@01)]
(assert (exists_path<Bool> ($$ ($SortWrappers.$FVF<next>To$Snap (as sm@296@01  $FVF<next>)) g@231@01) x@232@01 n@292@01))
(pop) ; 9
(push) ; 9
; [else-branch: 41 | !(exists_path[Bool]($$(sm@296@01, g@231@01), x@232@01, n@292@01))]
(assert (not
  (exists_path<Bool> ($$ ($SortWrappers.$FVF<next>To$Snap (as sm@296@01  $FVF<next>)) g@231@01) x@232@01 n@292@01)))
; [eval] exists_path($$(g), y, n)
; [eval] $$(g)
(push) ; 10
(declare-const n@297@01 $Ref)
(push) ; 11
; [eval] (n in refs)
(assert (Set_in n@297@01 g@231@01))
(pop) ; 11
(declare-fun inv@298@01 ($Ref) $Ref)
(declare-fun img@299@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
(declare-const sm@300@01 $FVF<next>)
; Definitional axioms for snapshot map domain
; Definitional axioms for snapshot map values
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@289@01 r) (Set_in (inv@288@01 r) g@231@01))
    (=
      ($FVF.lookup_next (as sm@300@01  $FVF<next>) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@285@01))) r)))
  :pattern (($FVF.lookup_next (as sm@300@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@285@01))) r))
  :qid |qp.fvfValDef179|)))
(assert (forall ((r $Ref)) (!
  ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@285@01))) r) r)
  :pattern (($FVF.lookup_next (as sm@300@01  $FVF<next>) r))
  :qid |qp.fvfResTrgDef180|)))
; Check receiver injectivity
(push) ; 11
(assert (not (forall ((n1@297@01 $Ref) (n2@297@01 $Ref)) (!
  (=>
    (and
      (and
        (Set_in n1@297@01 g@231@01)
        ($FVF.loc_next ($FVF.lookup_next (as sm@300@01  $FVF<next>) n1@297@01) n1@297@01))
      (and
        (Set_in n2@297@01 g@231@01)
        ($FVF.loc_next ($FVF.lookup_next (as sm@300@01  $FVF<next>) n2@297@01) n2@297@01))
      (= n1@297@01 n2@297@01))
    (= n1@297@01 n2@297@01))
  
  :qid |next-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 11
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((n@297@01 $Ref)) (!
  (=>
    (Set_in n@297@01 g@231@01)
    (and (= (inv@298@01 n@297@01) n@297@01) (img@299@01 n@297@01)))
  :pattern ((Set_in n@297@01 g@231@01))
  :pattern ((inv@298@01 n@297@01))
  :pattern ((img@299@01 n@297@01))
  :qid |next-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=> (and (img@299@01 r) (Set_in (inv@298@01 r) g@231@01)) (= (inv@298@01 r) r))
  :pattern ((inv@298@01 r))
  :qid |next-fctOfInv|)))
(assert (forall ((r $Ref)) (!
  (=>
    (Set_in (inv@298@01 r) g@231@01)
    ($FVF.loc_next ($FVF.lookup_next (as sm@300@01  $FVF<next>) r) r))
  :pattern ((inv@298@01 r))
  :qid |quant-u-15634|)))
(push) ; 11
(assert (not (forall ((r $Ref)) (!
  (=>
    (and (Set_in (inv@298@01 r) g@231@01) (img@299@01 r) (= r (inv@298@01 r)))
    (>
      (ite
        (and (img@289@01 r) (Set_in (inv@288@01 r) g@231@01))
        $Perm.Write
        $Perm.No)
      $Perm.No))
  
  :qid |quant-u-15635|))))
(check-sat)
; unsat
(pop) ; 11
; 0.00s
; (get-info :all-statistics)
(declare-const sm@301@01 $FVF<next>)
; Definitional axioms for snapshot map domain
(assert (forall ((r $Ref)) (!
  (and
    (=>
      (Set_in r ($FVF.domain_next (as sm@301@01  $FVF<next>)))
      (and (Set_in (inv@298@01 r) g@231@01) (img@299@01 r)))
    (=>
      (and (Set_in (inv@298@01 r) g@231@01) (img@299@01 r))
      (Set_in r ($FVF.domain_next (as sm@301@01  $FVF<next>)))))
  :pattern ((Set_in r ($FVF.domain_next (as sm@301@01  $FVF<next>))))
  :qid |qp.fvfDomDef183|)))
; Definitional axioms for snapshot map values
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and (Set_in (inv@298@01 r) g@231@01) (img@299@01 r))
      (and (img@289@01 r) (Set_in (inv@288@01 r) g@231@01)))
    (=
      ($FVF.lookup_next (as sm@301@01  $FVF<next>) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@285@01))) r)))
  :pattern (($FVF.lookup_next (as sm@301@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@285@01))) r))
  :qid |qp.fvfValDef181|)))
(assert (forall ((r $Ref)) (!
  ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@285@01))) r) r)
  :pattern (($FVF.lookup_next (as sm@301@01  $FVF<next>) r))
  :qid |qp.fvfResTrgDef182|)))
(assert ($$%precondition ($SortWrappers.$FVF<next>To$Snap (as sm@301@01  $FVF<next>)) g@231@01))
(pop) ; 10
; Joined path conditions
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@289@01 r) (Set_in (inv@288@01 r) g@231@01))
    (=
      ($FVF.lookup_next (as sm@300@01  $FVF<next>) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@285@01))) r)))
  :pattern (($FVF.lookup_next (as sm@300@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@285@01))) r))
  :qid |qp.fvfValDef179|)))
(assert (forall ((r $Ref)) (!
  ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@285@01))) r) r)
  :pattern (($FVF.lookup_next (as sm@300@01  $FVF<next>) r))
  :qid |qp.fvfResTrgDef180|)))
(assert (forall ((n@297@01 $Ref)) (!
  (=>
    (Set_in n@297@01 g@231@01)
    (and (= (inv@298@01 n@297@01) n@297@01) (img@299@01 n@297@01)))
  :pattern ((Set_in n@297@01 g@231@01))
  :pattern ((inv@298@01 n@297@01))
  :pattern ((img@299@01 n@297@01))
  :qid |next-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=> (and (img@299@01 r) (Set_in (inv@298@01 r) g@231@01)) (= (inv@298@01 r) r))
  :pattern ((inv@298@01 r))
  :qid |next-fctOfInv|)))
(assert (forall ((r $Ref)) (!
  (and
    (=>
      (Set_in r ($FVF.domain_next (as sm@301@01  $FVF<next>)))
      (and (Set_in (inv@298@01 r) g@231@01) (img@299@01 r)))
    (=>
      (and (Set_in (inv@298@01 r) g@231@01) (img@299@01 r))
      (Set_in r ($FVF.domain_next (as sm@301@01  $FVF<next>)))))
  :pattern ((Set_in r ($FVF.domain_next (as sm@301@01  $FVF<next>))))
  :qid |qp.fvfDomDef183|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and (Set_in (inv@298@01 r) g@231@01) (img@299@01 r))
      (and (img@289@01 r) (Set_in (inv@288@01 r) g@231@01)))
    (=
      ($FVF.lookup_next (as sm@301@01  $FVF<next>) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@285@01))) r)))
  :pattern (($FVF.lookup_next (as sm@301@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@285@01))) r))
  :qid |qp.fvfValDef181|)))
(assert (forall ((r $Ref)) (!
  ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@285@01))) r) r)
  :pattern (($FVF.lookup_next (as sm@301@01  $FVF<next>) r))
  :qid |qp.fvfResTrgDef182|)))
(assert (and
  (forall ((r $Ref)) (!
    (=>
      (Set_in (inv@298@01 r) g@231@01)
      ($FVF.loc_next ($FVF.lookup_next (as sm@300@01  $FVF<next>) r) r))
    :pattern ((inv@298@01 r))
    :qid |quant-u-15634|))
  ($$%precondition ($SortWrappers.$FVF<next>To$Snap (as sm@301@01  $FVF<next>)) g@231@01)))
(pop) ; 9
(pop) ; 8
; Joined path conditions
; Joined path conditions
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@289@01 r) (Set_in (inv@288@01 r) g@231@01))
    (=
      ($FVF.lookup_next (as sm@300@01  $FVF<next>) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@285@01))) r)))
  :pattern (($FVF.lookup_next (as sm@300@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@285@01))) r))
  :qid |qp.fvfValDef179|)))
(assert (forall ((r $Ref)) (!
  ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@285@01))) r) r)
  :pattern (($FVF.lookup_next (as sm@300@01  $FVF<next>) r))
  :qid |qp.fvfResTrgDef180|)))
(assert (forall ((n@297@01 $Ref)) (!
  (=>
    (Set_in n@297@01 g@231@01)
    (and (= (inv@298@01 n@297@01) n@297@01) (img@299@01 n@297@01)))
  :pattern ((Set_in n@297@01 g@231@01))
  :pattern ((inv@298@01 n@297@01))
  :pattern ((img@299@01 n@297@01))
  :qid |next-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=> (and (img@299@01 r) (Set_in (inv@298@01 r) g@231@01)) (= (inv@298@01 r) r))
  :pattern ((inv@298@01 r))
  :qid |next-fctOfInv|)))
(assert (forall ((r $Ref)) (!
  (and
    (=>
      (Set_in r ($FVF.domain_next (as sm@301@01  $FVF<next>)))
      (and (Set_in (inv@298@01 r) g@231@01) (img@299@01 r)))
    (=>
      (and (Set_in (inv@298@01 r) g@231@01) (img@299@01 r))
      (Set_in r ($FVF.domain_next (as sm@301@01  $FVF<next>)))))
  :pattern ((Set_in r ($FVF.domain_next (as sm@301@01  $FVF<next>))))
  :qid |qp.fvfDomDef183|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and (Set_in (inv@298@01 r) g@231@01) (img@299@01 r))
      (and (img@289@01 r) (Set_in (inv@288@01 r) g@231@01)))
    (=
      ($FVF.lookup_next (as sm@301@01  $FVF<next>) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@285@01))) r)))
  :pattern (($FVF.lookup_next (as sm@301@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@285@01))) r))
  :qid |qp.fvfValDef181|)))
(assert (forall ((r $Ref)) (!
  ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@285@01))) r) r)
  :pattern (($FVF.lookup_next (as sm@301@01  $FVF<next>) r))
  :qid |qp.fvfResTrgDef182|)))
(assert (=>
  (not
    (exists_path<Bool> ($$ ($SortWrappers.$FVF<next>To$Snap (as sm@296@01  $FVF<next>)) g@231@01) x@232@01 n@292@01))
  (and
    (not
      (exists_path<Bool> ($$ ($SortWrappers.$FVF<next>To$Snap (as sm@296@01  $FVF<next>)) g@231@01) x@232@01 n@292@01))
    (forall ((r $Ref)) (!
      (=>
        (Set_in (inv@298@01 r) g@231@01)
        ($FVF.loc_next ($FVF.lookup_next (as sm@300@01  $FVF<next>) r) r))
      :pattern ((inv@298@01 r))
      :qid |quant-u-15634|))
    ($$%precondition ($SortWrappers.$FVF<next>To$Snap (as sm@301@01  $FVF<next>)) g@231@01))))
(assert (or
  (not
    (exists_path<Bool> ($$ ($SortWrappers.$FVF<next>To$Snap (as sm@296@01  $FVF<next>)) g@231@01) x@232@01 n@292@01))
  (exists_path<Bool> ($$ ($SortWrappers.$FVF<next>To$Snap (as sm@296@01  $FVF<next>)) g@231@01) x@232@01 n@292@01)))
(pop) ; 7
(push) ; 7
; [else-branch: 40 | !(n@292@01 in g@231@01)]
(assert (not (Set_in n@292@01 g@231@01)))
(pop) ; 7
(pop) ; 6
; Joined path conditions
(assert (forall ((n@293@01 $Ref)) (!
  (=>
    (Set_in n@293@01 g@231@01)
    (and (= (inv@294@01 n@293@01) n@293@01) (img@295@01 n@293@01)))
  :pattern ((Set_in n@293@01 g@231@01))
  :pattern ((inv@294@01 n@293@01))
  :pattern ((img@295@01 n@293@01))
  :qid |next-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=> (and (img@295@01 r) (Set_in (inv@294@01 r) g@231@01)) (= (inv@294@01 r) r))
  :pattern ((inv@294@01 r))
  :qid |next-fctOfInv|)))
(assert (forall ((r $Ref)) (!
  (and
    (=>
      (Set_in r ($FVF.domain_next (as sm@296@01  $FVF<next>)))
      (and (Set_in (inv@294@01 r) g@231@01) (img@295@01 r)))
    (=>
      (and (Set_in (inv@294@01 r) g@231@01) (img@295@01 r))
      (Set_in r ($FVF.domain_next (as sm@296@01  $FVF<next>)))))
  :pattern ((Set_in r ($FVF.domain_next (as sm@296@01  $FVF<next>))))
  :qid |qp.fvfDomDef178|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and (Set_in (inv@294@01 r) g@231@01) (img@295@01 r))
      (and (img@289@01 r) (Set_in (inv@288@01 r) g@231@01)))
    (=
      ($FVF.lookup_next (as sm@296@01  $FVF<next>) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@285@01))) r)))
  :pattern (($FVF.lookup_next (as sm@296@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@285@01))) r))
  :qid |qp.fvfValDef176|)))
(assert (forall ((r $Ref)) (!
  ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@285@01))) r) r)
  :pattern (($FVF.lookup_next (as sm@296@01  $FVF<next>) r))
  :qid |qp.fvfResTrgDef177|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@289@01 r) (Set_in (inv@288@01 r) g@231@01))
    (=
      ($FVF.lookup_next (as sm@300@01  $FVF<next>) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@285@01))) r)))
  :pattern (($FVF.lookup_next (as sm@300@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@285@01))) r))
  :qid |qp.fvfValDef179|)))
(assert (forall ((r $Ref)) (!
  ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@285@01))) r) r)
  :pattern (($FVF.lookup_next (as sm@300@01  $FVF<next>) r))
  :qid |qp.fvfResTrgDef180|)))
(assert (forall ((n@297@01 $Ref)) (!
  (=>
    (Set_in n@297@01 g@231@01)
    (and (= (inv@298@01 n@297@01) n@297@01) (img@299@01 n@297@01)))
  :pattern ((Set_in n@297@01 g@231@01))
  :pattern ((inv@298@01 n@297@01))
  :pattern ((img@299@01 n@297@01))
  :qid |next-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=> (and (img@299@01 r) (Set_in (inv@298@01 r) g@231@01)) (= (inv@298@01 r) r))
  :pattern ((inv@298@01 r))
  :qid |next-fctOfInv|)))
(assert (forall ((r $Ref)) (!
  (and
    (=>
      (Set_in r ($FVF.domain_next (as sm@301@01  $FVF<next>)))
      (and (Set_in (inv@298@01 r) g@231@01) (img@299@01 r)))
    (=>
      (and (Set_in (inv@298@01 r) g@231@01) (img@299@01 r))
      (Set_in r ($FVF.domain_next (as sm@301@01  $FVF<next>)))))
  :pattern ((Set_in r ($FVF.domain_next (as sm@301@01  $FVF<next>))))
  :qid |qp.fvfDomDef183|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and (Set_in (inv@298@01 r) g@231@01) (img@299@01 r))
      (and (img@289@01 r) (Set_in (inv@288@01 r) g@231@01)))
    (=
      ($FVF.lookup_next (as sm@301@01  $FVF<next>) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@285@01))) r)))
  :pattern (($FVF.lookup_next (as sm@301@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@285@01))) r))
  :qid |qp.fvfValDef181|)))
(assert (forall ((r $Ref)) (!
  ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@285@01))) r) r)
  :pattern (($FVF.lookup_next (as sm@301@01  $FVF<next>) r))
  :qid |qp.fvfResTrgDef182|)))
(assert (=>
  (Set_in n@292@01 g@231@01)
  (and
    (Set_in n@292@01 g@231@01)
    (forall ((r $Ref)) (!
      (=>
        (Set_in (inv@294@01 r) g@231@01)
        ($FVF.loc_next ($FVF.lookup_next (as sm@290@01  $FVF<next>) r) r))
      :pattern ((inv@294@01 r))
      :qid |quant-u-15631|))
    ($$%precondition ($SortWrappers.$FVF<next>To$Snap (as sm@296@01  $FVF<next>)) g@231@01)
    (=>
      (not
        (exists_path<Bool> ($$ ($SortWrappers.$FVF<next>To$Snap (as sm@296@01  $FVF<next>)) g@231@01) x@232@01 n@292@01))
      (and
        (not
          (exists_path<Bool> ($$ ($SortWrappers.$FVF<next>To$Snap (as sm@296@01  $FVF<next>)) g@231@01) x@232@01 n@292@01))
        (forall ((r $Ref)) (!
          (=>
            (Set_in (inv@298@01 r) g@231@01)
            ($FVF.loc_next ($FVF.lookup_next (as sm@300@01  $FVF<next>) r) r))
          :pattern ((inv@298@01 r))
          :qid |quant-u-15634|))
        ($$%precondition ($SortWrappers.$FVF<next>To$Snap (as sm@301@01  $FVF<next>)) g@231@01)))
    (or
      (not
        (exists_path<Bool> ($$ ($SortWrappers.$FVF<next>To$Snap (as sm@296@01  $FVF<next>)) g@231@01) x@232@01 n@292@01))
      (exists_path<Bool> ($$ ($SortWrappers.$FVF<next>To$Snap (as sm@296@01  $FVF<next>)) g@231@01) x@232@01 n@292@01)))))
; Joined path conditions
(assert (or (not (Set_in n@292@01 g@231@01)) (Set_in n@292@01 g@231@01)))
(pop) ; 5
; Nested auxiliary terms: globals (aux)
(assert (forall ((n@293@01 $Ref)) (!
  (=>
    (Set_in n@293@01 g@231@01)
    (and (= (inv@294@01 n@293@01) n@293@01) (img@295@01 n@293@01)))
  :pattern ((Set_in n@293@01 g@231@01))
  :pattern ((inv@294@01 n@293@01))
  :pattern ((img@295@01 n@293@01))
  :qid |next-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=> (and (img@295@01 r) (Set_in (inv@294@01 r) g@231@01)) (= (inv@294@01 r) r))
  :pattern ((inv@294@01 r))
  :qid |next-fctOfInv|)))
(assert (forall ((r $Ref)) (!
  (and
    (=>
      (Set_in r ($FVF.domain_next (as sm@296@01  $FVF<next>)))
      (and (Set_in (inv@294@01 r) g@231@01) (img@295@01 r)))
    (=>
      (and (Set_in (inv@294@01 r) g@231@01) (img@295@01 r))
      (Set_in r ($FVF.domain_next (as sm@296@01  $FVF<next>)))))
  :pattern ((Set_in r ($FVF.domain_next (as sm@296@01  $FVF<next>))))
  :qid |qp.fvfDomDef178|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and (Set_in (inv@294@01 r) g@231@01) (img@295@01 r))
      (and (img@289@01 r) (Set_in (inv@288@01 r) g@231@01)))
    (=
      ($FVF.lookup_next (as sm@296@01  $FVF<next>) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@285@01))) r)))
  :pattern (($FVF.lookup_next (as sm@296@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@285@01))) r))
  :qid |qp.fvfValDef176|)))
(assert (forall ((r $Ref)) (!
  ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@285@01))) r) r)
  :pattern (($FVF.lookup_next (as sm@296@01  $FVF<next>) r))
  :qid |qp.fvfResTrgDef177|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@289@01 r) (Set_in (inv@288@01 r) g@231@01))
    (=
      ($FVF.lookup_next (as sm@300@01  $FVF<next>) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@285@01))) r)))
  :pattern (($FVF.lookup_next (as sm@300@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@285@01))) r))
  :qid |qp.fvfValDef179|)))
(assert (forall ((r $Ref)) (!
  ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@285@01))) r) r)
  :pattern (($FVF.lookup_next (as sm@300@01  $FVF<next>) r))
  :qid |qp.fvfResTrgDef180|)))
(assert (forall ((n@297@01 $Ref)) (!
  (=>
    (Set_in n@297@01 g@231@01)
    (and (= (inv@298@01 n@297@01) n@297@01) (img@299@01 n@297@01)))
  :pattern ((Set_in n@297@01 g@231@01))
  :pattern ((inv@298@01 n@297@01))
  :pattern ((img@299@01 n@297@01))
  :qid |next-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=> (and (img@299@01 r) (Set_in (inv@298@01 r) g@231@01)) (= (inv@298@01 r) r))
  :pattern ((inv@298@01 r))
  :qid |next-fctOfInv|)))
(assert (forall ((r $Ref)) (!
  (and
    (=>
      (Set_in r ($FVF.domain_next (as sm@301@01  $FVF<next>)))
      (and (Set_in (inv@298@01 r) g@231@01) (img@299@01 r)))
    (=>
      (and (Set_in (inv@298@01 r) g@231@01) (img@299@01 r))
      (Set_in r ($FVF.domain_next (as sm@301@01  $FVF<next>)))))
  :pattern ((Set_in r ($FVF.domain_next (as sm@301@01  $FVF<next>))))
  :qid |qp.fvfDomDef183|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and (Set_in (inv@298@01 r) g@231@01) (img@299@01 r))
      (and (img@289@01 r) (Set_in (inv@288@01 r) g@231@01)))
    (=
      ($FVF.lookup_next (as sm@301@01  $FVF<next>) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@285@01))) r)))
  :pattern (($FVF.lookup_next (as sm@301@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@285@01))) r))
  :qid |qp.fvfValDef181|)))
(assert (forall ((r $Ref)) (!
  ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@285@01))) r) r)
  :pattern (($FVF.lookup_next (as sm@301@01  $FVF<next>) r))
  :qid |qp.fvfResTrgDef182|)))
; Nested auxiliary terms: non-globals (aux)
(assert (forall ((n@292@01 $Ref)) (!
  (and
    (=>
      (Set_in n@292@01 g@231@01)
      (and
        (Set_in n@292@01 g@231@01)
        (forall ((r $Ref)) (!
          (=>
            (Set_in (inv@294@01 r) g@231@01)
            ($FVF.loc_next ($FVF.lookup_next (as sm@290@01  $FVF<next>) r) r))
          :pattern ((inv@294@01 r))
          :qid |quant-u-15631|))
        ($$%precondition ($SortWrappers.$FVF<next>To$Snap (as sm@296@01  $FVF<next>)) g@231@01)
        (=>
          (not
            (exists_path<Bool> ($$ ($SortWrappers.$FVF<next>To$Snap (as sm@296@01  $FVF<next>)) g@231@01) x@232@01 n@292@01))
          (and
            (not
              (exists_path<Bool> ($$ ($SortWrappers.$FVF<next>To$Snap (as sm@296@01  $FVF<next>)) g@231@01) x@232@01 n@292@01))
            (forall ((r $Ref)) (!
              (=>
                (Set_in (inv@298@01 r) g@231@01)
                ($FVF.loc_next ($FVF.lookup_next (as sm@300@01  $FVF<next>) r) r))
              :pattern ((inv@298@01 r))
              :qid |quant-u-15634|))
            ($$%precondition ($SortWrappers.$FVF<next>To$Snap (as sm@301@01  $FVF<next>)) g@231@01)))
        (or
          (not
            (exists_path<Bool> ($$ ($SortWrappers.$FVF<next>To$Snap (as sm@296@01  $FVF<next>)) g@231@01) x@232@01 n@292@01))
          (exists_path<Bool> ($$ ($SortWrappers.$FVF<next>To$Snap (as sm@296@01  $FVF<next>)) g@231@01) x@232@01 n@292@01))))
    (or (not (Set_in n@292@01 g@231@01)) (Set_in n@292@01 g@231@01)))
  :pattern ((Set_in n@292@01 g@231@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/graphs/static/outlines/list_append.vpr@371@23@371@102-aux|)))
(assert (forall ((n@292@01 $Ref)) (!
  (and
    (=>
      (Set_in n@292@01 g@231@01)
      (and
        (Set_in n@292@01 g@231@01)
        (forall ((r $Ref)) (!
          (=>
            (Set_in (inv@294@01 r) g@231@01)
            ($FVF.loc_next ($FVF.lookup_next (as sm@290@01  $FVF<next>) r) r))
          :pattern ((inv@294@01 r))
          :qid |quant-u-15631|))
        ($$%precondition ($SortWrappers.$FVF<next>To$Snap (as sm@296@01  $FVF<next>)) g@231@01)
        (=>
          (not
            (exists_path<Bool> ($$ ($SortWrappers.$FVF<next>To$Snap (as sm@296@01  $FVF<next>)) g@231@01) x@232@01 n@292@01))
          (and
            (not
              (exists_path<Bool> ($$ ($SortWrappers.$FVF<next>To$Snap (as sm@296@01  $FVF<next>)) g@231@01) x@232@01 n@292@01))
            (forall ((r $Ref)) (!
              (=>
                (Set_in (inv@298@01 r) g@231@01)
                ($FVF.loc_next ($FVF.lookup_next (as sm@300@01  $FVF<next>) r) r))
              :pattern ((inv@298@01 r))
              :qid |quant-u-15634|))
            ($$%precondition ($SortWrappers.$FVF<next>To$Snap (as sm@301@01  $FVF<next>)) g@231@01)))
        (or
          (not
            (exists_path<Bool> ($$ ($SortWrappers.$FVF<next>To$Snap (as sm@296@01  $FVF<next>)) g@231@01) x@232@01 n@292@01))
          (exists_path<Bool> ($$ ($SortWrappers.$FVF<next>To$Snap (as sm@296@01  $FVF<next>)) g@231@01) x@232@01 n@292@01))))
    (or (not (Set_in n@292@01 g@231@01)) (Set_in n@292@01 g@231@01)))
  :pattern ((exists_path<Bool> ($$ ($SortWrappers.$FVF<next>To$Snap (as sm@296@01  $FVF<next>)) g@231@01) x@232@01 n@292@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/graphs/static/outlines/list_append.vpr@371@23@371@102-aux|)))
(assert (forall ((n@292@01 $Ref)) (!
  (and
    (=>
      (Set_in n@292@01 g@231@01)
      (and
        (Set_in n@292@01 g@231@01)
        (forall ((r $Ref)) (!
          (=>
            (Set_in (inv@294@01 r) g@231@01)
            ($FVF.loc_next ($FVF.lookup_next (as sm@290@01  $FVF<next>) r) r))
          :pattern ((inv@294@01 r))
          :qid |quant-u-15631|))
        ($$%precondition ($SortWrappers.$FVF<next>To$Snap (as sm@296@01  $FVF<next>)) g@231@01)
        (=>
          (not
            (exists_path<Bool> ($$ ($SortWrappers.$FVF<next>To$Snap (as sm@296@01  $FVF<next>)) g@231@01) x@232@01 n@292@01))
          (and
            (not
              (exists_path<Bool> ($$ ($SortWrappers.$FVF<next>To$Snap (as sm@296@01  $FVF<next>)) g@231@01) x@232@01 n@292@01))
            (forall ((r $Ref)) (!
              (=>
                (Set_in (inv@298@01 r) g@231@01)
                ($FVF.loc_next ($FVF.lookup_next (as sm@300@01  $FVF<next>) r) r))
              :pattern ((inv@298@01 r))
              :qid |quant-u-15634|))
            ($$%precondition ($SortWrappers.$FVF<next>To$Snap (as sm@301@01  $FVF<next>)) g@231@01)))
        (or
          (not
            (exists_path<Bool> ($$ ($SortWrappers.$FVF<next>To$Snap (as sm@296@01  $FVF<next>)) g@231@01) x@232@01 n@292@01))
          (exists_path<Bool> ($$ ($SortWrappers.$FVF<next>To$Snap (as sm@296@01  $FVF<next>)) g@231@01) x@232@01 n@292@01))))
    (or (not (Set_in n@292@01 g@231@01)) (Set_in n@292@01 g@231@01)))
  :pattern ((exists_path<Bool> ($$ ($SortWrappers.$FVF<next>To$Snap (as sm@301@01  $FVF<next>)) g@231@01) y@233@01 n@292@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/graphs/static/outlines/list_append.vpr@371@23@371@102-aux|)))
(assert (forall ((n@292@01 $Ref)) (!
  (=>
    (Set_in n@292@01 g@231@01)
    (or
      (exists_path<Bool> ($$ ($SortWrappers.$FVF<next>To$Snap (as sm@296@01  $FVF<next>)) g@231@01) x@232@01 n@292@01)
      (exists_path<Bool> ($$ ($SortWrappers.$FVF<next>To$Snap (as sm@301@01  $FVF<next>)) g@231@01) y@233@01 n@292@01)))
  :pattern ((Set_in n@292@01 g@231@01))
  :pattern ((exists_path<Bool> ($$ ($SortWrappers.$FVF<next>To$Snap (as sm@296@01  $FVF<next>)) g@231@01) x@232@01 n@292@01))
  :pattern ((exists_path<Bool> ($$ ($SortWrappers.$FVF<next>To$Snap (as sm@301@01  $FVF<next>)) g@231@01) y@233@01 n@292@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/graphs/static/outlines/list_append.vpr@371@23@371@102|)))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@285@01)))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@285@01))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@285@01)))))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@285@01))))))))
  $Snap.unit))
; [eval] (forall n: Ref :: { (n in g) } { exists_path($$(g), x, n) } { exists_path($$(g), y, n) } (n in g) ==> !exists_path($$(g), x, n) || !exists_path($$(g), y, n))
(declare-const n@302@01 $Ref)
(push) ; 5
; [eval] (n in g) ==> !exists_path($$(g), x, n) || !exists_path($$(g), y, n)
; [eval] (n in g)
(push) ; 6
; [then-branch: 42 | n@302@01 in g@231@01 | live]
; [else-branch: 42 | !(n@302@01 in g@231@01) | live]
(push) ; 7
; [then-branch: 42 | n@302@01 in g@231@01]
(assert (Set_in n@302@01 g@231@01))
; [eval] !exists_path($$(g), x, n) || !exists_path($$(g), y, n)
; [eval] !exists_path($$(g), x, n)
; [eval] exists_path($$(g), x, n)
; [eval] $$(g)
(push) ; 8
(declare-const n@303@01 $Ref)
(push) ; 9
; [eval] (n in refs)
(assert (Set_in n@303@01 g@231@01))
(pop) ; 9
(declare-fun inv@304@01 ($Ref) $Ref)
(declare-fun img@305@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
; Definitional axioms for snapshot map domain
; Definitional axioms for snapshot map values
; Check receiver injectivity
(push) ; 9
(assert (not (forall ((n1@303@01 $Ref) (n2@303@01 $Ref)) (!
  (=>
    (and
      (and
        (Set_in n1@303@01 g@231@01)
        ($FVF.loc_next ($FVF.lookup_next (as sm@290@01  $FVF<next>) n1@303@01) n1@303@01))
      (and
        (Set_in n2@303@01 g@231@01)
        ($FVF.loc_next ($FVF.lookup_next (as sm@290@01  $FVF<next>) n2@303@01) n2@303@01))
      (= n1@303@01 n2@303@01))
    (= n1@303@01 n2@303@01))
  
  :qid |next-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 9
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((n@303@01 $Ref)) (!
  (=>
    (Set_in n@303@01 g@231@01)
    (and (= (inv@304@01 n@303@01) n@303@01) (img@305@01 n@303@01)))
  :pattern ((Set_in n@303@01 g@231@01))
  :pattern ((inv@304@01 n@303@01))
  :pattern ((img@305@01 n@303@01))
  :qid |next-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=> (and (img@305@01 r) (Set_in (inv@304@01 r) g@231@01)) (= (inv@304@01 r) r))
  :pattern ((inv@304@01 r))
  :qid |next-fctOfInv|)))
(assert (forall ((r $Ref)) (!
  (=>
    (Set_in (inv@304@01 r) g@231@01)
    ($FVF.loc_next ($FVF.lookup_next (as sm@290@01  $FVF<next>) r) r))
  :pattern ((inv@304@01 r))
  :qid |quant-u-15637|)))
(push) ; 9
(assert (not (forall ((r $Ref)) (!
  (=>
    (and (Set_in (inv@304@01 r) g@231@01) (img@305@01 r) (= r (inv@304@01 r)))
    (>
      (ite
        (and (img@289@01 r) (Set_in (inv@288@01 r) g@231@01))
        $Perm.Write
        $Perm.No)
      $Perm.No))
  
  :qid |quant-u-15638|))))
(check-sat)
; unsat
(pop) ; 9
; 0.00s
; (get-info :all-statistics)
(declare-const sm@306@01 $FVF<next>)
; Definitional axioms for snapshot map domain
(assert (forall ((r $Ref)) (!
  (and
    (=>
      (Set_in r ($FVF.domain_next (as sm@306@01  $FVF<next>)))
      (and (Set_in (inv@304@01 r) g@231@01) (img@305@01 r)))
    (=>
      (and (Set_in (inv@304@01 r) g@231@01) (img@305@01 r))
      (Set_in r ($FVF.domain_next (as sm@306@01  $FVF<next>)))))
  :pattern ((Set_in r ($FVF.domain_next (as sm@306@01  $FVF<next>))))
  :qid |qp.fvfDomDef186|)))
; Definitional axioms for snapshot map values
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and (Set_in (inv@304@01 r) g@231@01) (img@305@01 r))
      (and (img@289@01 r) (Set_in (inv@288@01 r) g@231@01)))
    (=
      ($FVF.lookup_next (as sm@306@01  $FVF<next>) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@285@01))) r)))
  :pattern (($FVF.lookup_next (as sm@306@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@285@01))) r))
  :qid |qp.fvfValDef184|)))
(assert (forall ((r $Ref)) (!
  ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@285@01))) r) r)
  :pattern (($FVF.lookup_next (as sm@306@01  $FVF<next>) r))
  :qid |qp.fvfResTrgDef185|)))
(assert ($$%precondition ($SortWrappers.$FVF<next>To$Snap (as sm@306@01  $FVF<next>)) g@231@01))
(pop) ; 8
; Joined path conditions
(assert (forall ((n@303@01 $Ref)) (!
  (=>
    (Set_in n@303@01 g@231@01)
    (and (= (inv@304@01 n@303@01) n@303@01) (img@305@01 n@303@01)))
  :pattern ((Set_in n@303@01 g@231@01))
  :pattern ((inv@304@01 n@303@01))
  :pattern ((img@305@01 n@303@01))
  :qid |next-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=> (and (img@305@01 r) (Set_in (inv@304@01 r) g@231@01)) (= (inv@304@01 r) r))
  :pattern ((inv@304@01 r))
  :qid |next-fctOfInv|)))
(assert (forall ((r $Ref)) (!
  (and
    (=>
      (Set_in r ($FVF.domain_next (as sm@306@01  $FVF<next>)))
      (and (Set_in (inv@304@01 r) g@231@01) (img@305@01 r)))
    (=>
      (and (Set_in (inv@304@01 r) g@231@01) (img@305@01 r))
      (Set_in r ($FVF.domain_next (as sm@306@01  $FVF<next>)))))
  :pattern ((Set_in r ($FVF.domain_next (as sm@306@01  $FVF<next>))))
  :qid |qp.fvfDomDef186|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and (Set_in (inv@304@01 r) g@231@01) (img@305@01 r))
      (and (img@289@01 r) (Set_in (inv@288@01 r) g@231@01)))
    (=
      ($FVF.lookup_next (as sm@306@01  $FVF<next>) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@285@01))) r)))
  :pattern (($FVF.lookup_next (as sm@306@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@285@01))) r))
  :qid |qp.fvfValDef184|)))
(assert (forall ((r $Ref)) (!
  ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@285@01))) r) r)
  :pattern (($FVF.lookup_next (as sm@306@01  $FVF<next>) r))
  :qid |qp.fvfResTrgDef185|)))
(assert (and
  (forall ((r $Ref)) (!
    (=>
      (Set_in (inv@304@01 r) g@231@01)
      ($FVF.loc_next ($FVF.lookup_next (as sm@290@01  $FVF<next>) r) r))
    :pattern ((inv@304@01 r))
    :qid |quant-u-15637|))
  ($$%precondition ($SortWrappers.$FVF<next>To$Snap (as sm@306@01  $FVF<next>)) g@231@01)))
(push) ; 8
; [then-branch: 43 | !(exists_path[Bool]($$(sm@306@01, g@231@01), x@232@01, n@302@01)) | live]
; [else-branch: 43 | exists_path[Bool]($$(sm@306@01, g@231@01), x@232@01, n@302@01) | live]
(push) ; 9
; [then-branch: 43 | !(exists_path[Bool]($$(sm@306@01, g@231@01), x@232@01, n@302@01))]
(assert (not
  (exists_path<Bool> ($$ ($SortWrappers.$FVF<next>To$Snap (as sm@306@01  $FVF<next>)) g@231@01) x@232@01 n@302@01)))
(pop) ; 9
(push) ; 9
; [else-branch: 43 | exists_path[Bool]($$(sm@306@01, g@231@01), x@232@01, n@302@01)]
(assert (exists_path<Bool> ($$ ($SortWrappers.$FVF<next>To$Snap (as sm@306@01  $FVF<next>)) g@231@01) x@232@01 n@302@01))
; [eval] !exists_path($$(g), y, n)
; [eval] exists_path($$(g), y, n)
; [eval] $$(g)
(push) ; 10
(declare-const n@307@01 $Ref)
(push) ; 11
; [eval] (n in refs)
(assert (Set_in n@307@01 g@231@01))
(pop) ; 11
(declare-fun inv@308@01 ($Ref) $Ref)
(declare-fun img@309@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
(declare-const sm@310@01 $FVF<next>)
; Definitional axioms for snapshot map domain
; Definitional axioms for snapshot map values
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@289@01 r) (Set_in (inv@288@01 r) g@231@01))
    (=
      ($FVF.lookup_next (as sm@310@01  $FVF<next>) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@285@01))) r)))
  :pattern (($FVF.lookup_next (as sm@310@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@285@01))) r))
  :qid |qp.fvfValDef187|)))
(assert (forall ((r $Ref)) (!
  ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@285@01))) r) r)
  :pattern (($FVF.lookup_next (as sm@310@01  $FVF<next>) r))
  :qid |qp.fvfResTrgDef188|)))
; Check receiver injectivity
(push) ; 11
(assert (not (forall ((n1@307@01 $Ref) (n2@307@01 $Ref)) (!
  (=>
    (and
      (and
        (Set_in n1@307@01 g@231@01)
        ($FVF.loc_next ($FVF.lookup_next (as sm@310@01  $FVF<next>) n1@307@01) n1@307@01))
      (and
        (Set_in n2@307@01 g@231@01)
        ($FVF.loc_next ($FVF.lookup_next (as sm@310@01  $FVF<next>) n2@307@01) n2@307@01))
      (= n1@307@01 n2@307@01))
    (= n1@307@01 n2@307@01))
  
  :qid |next-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 11
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((n@307@01 $Ref)) (!
  (=>
    (Set_in n@307@01 g@231@01)
    (and (= (inv@308@01 n@307@01) n@307@01) (img@309@01 n@307@01)))
  :pattern ((Set_in n@307@01 g@231@01))
  :pattern ((inv@308@01 n@307@01))
  :pattern ((img@309@01 n@307@01))
  :qid |next-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=> (and (img@309@01 r) (Set_in (inv@308@01 r) g@231@01)) (= (inv@308@01 r) r))
  :pattern ((inv@308@01 r))
  :qid |next-fctOfInv|)))
(assert (forall ((r $Ref)) (!
  (=>
    (Set_in (inv@308@01 r) g@231@01)
    ($FVF.loc_next ($FVF.lookup_next (as sm@310@01  $FVF<next>) r) r))
  :pattern ((inv@308@01 r))
  :qid |quant-u-15640|)))
(push) ; 11
(assert (not (forall ((r $Ref)) (!
  (=>
    (and (Set_in (inv@308@01 r) g@231@01) (img@309@01 r) (= r (inv@308@01 r)))
    (>
      (ite
        (and (img@289@01 r) (Set_in (inv@288@01 r) g@231@01))
        $Perm.Write
        $Perm.No)
      $Perm.No))
  
  :qid |quant-u-15641|))))
(check-sat)
; unsat
(pop) ; 11
; 0.00s
; (get-info :all-statistics)
(declare-const sm@311@01 $FVF<next>)
; Definitional axioms for snapshot map domain
(assert (forall ((r $Ref)) (!
  (and
    (=>
      (Set_in r ($FVF.domain_next (as sm@311@01  $FVF<next>)))
      (and (Set_in (inv@308@01 r) g@231@01) (img@309@01 r)))
    (=>
      (and (Set_in (inv@308@01 r) g@231@01) (img@309@01 r))
      (Set_in r ($FVF.domain_next (as sm@311@01  $FVF<next>)))))
  :pattern ((Set_in r ($FVF.domain_next (as sm@311@01  $FVF<next>))))
  :qid |qp.fvfDomDef191|)))
; Definitional axioms for snapshot map values
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and (Set_in (inv@308@01 r) g@231@01) (img@309@01 r))
      (and (img@289@01 r) (Set_in (inv@288@01 r) g@231@01)))
    (=
      ($FVF.lookup_next (as sm@311@01  $FVF<next>) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@285@01))) r)))
  :pattern (($FVF.lookup_next (as sm@311@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@285@01))) r))
  :qid |qp.fvfValDef189|)))
(assert (forall ((r $Ref)) (!
  ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@285@01))) r) r)
  :pattern (($FVF.lookup_next (as sm@311@01  $FVF<next>) r))
  :qid |qp.fvfResTrgDef190|)))
(assert ($$%precondition ($SortWrappers.$FVF<next>To$Snap (as sm@311@01  $FVF<next>)) g@231@01))
(pop) ; 10
; Joined path conditions
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@289@01 r) (Set_in (inv@288@01 r) g@231@01))
    (=
      ($FVF.lookup_next (as sm@310@01  $FVF<next>) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@285@01))) r)))
  :pattern (($FVF.lookup_next (as sm@310@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@285@01))) r))
  :qid |qp.fvfValDef187|)))
(assert (forall ((r $Ref)) (!
  ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@285@01))) r) r)
  :pattern (($FVF.lookup_next (as sm@310@01  $FVF<next>) r))
  :qid |qp.fvfResTrgDef188|)))
(assert (forall ((n@307@01 $Ref)) (!
  (=>
    (Set_in n@307@01 g@231@01)
    (and (= (inv@308@01 n@307@01) n@307@01) (img@309@01 n@307@01)))
  :pattern ((Set_in n@307@01 g@231@01))
  :pattern ((inv@308@01 n@307@01))
  :pattern ((img@309@01 n@307@01))
  :qid |next-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=> (and (img@309@01 r) (Set_in (inv@308@01 r) g@231@01)) (= (inv@308@01 r) r))
  :pattern ((inv@308@01 r))
  :qid |next-fctOfInv|)))
(assert (forall ((r $Ref)) (!
  (and
    (=>
      (Set_in r ($FVF.domain_next (as sm@311@01  $FVF<next>)))
      (and (Set_in (inv@308@01 r) g@231@01) (img@309@01 r)))
    (=>
      (and (Set_in (inv@308@01 r) g@231@01) (img@309@01 r))
      (Set_in r ($FVF.domain_next (as sm@311@01  $FVF<next>)))))
  :pattern ((Set_in r ($FVF.domain_next (as sm@311@01  $FVF<next>))))
  :qid |qp.fvfDomDef191|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and (Set_in (inv@308@01 r) g@231@01) (img@309@01 r))
      (and (img@289@01 r) (Set_in (inv@288@01 r) g@231@01)))
    (=
      ($FVF.lookup_next (as sm@311@01  $FVF<next>) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@285@01))) r)))
  :pattern (($FVF.lookup_next (as sm@311@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@285@01))) r))
  :qid |qp.fvfValDef189|)))
(assert (forall ((r $Ref)) (!
  ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@285@01))) r) r)
  :pattern (($FVF.lookup_next (as sm@311@01  $FVF<next>) r))
  :qid |qp.fvfResTrgDef190|)))
(assert (and
  (forall ((r $Ref)) (!
    (=>
      (Set_in (inv@308@01 r) g@231@01)
      ($FVF.loc_next ($FVF.lookup_next (as sm@310@01  $FVF<next>) r) r))
    :pattern ((inv@308@01 r))
    :qid |quant-u-15640|))
  ($$%precondition ($SortWrappers.$FVF<next>To$Snap (as sm@311@01  $FVF<next>)) g@231@01)))
(pop) ; 9
(pop) ; 8
; Joined path conditions
; Joined path conditions
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@289@01 r) (Set_in (inv@288@01 r) g@231@01))
    (=
      ($FVF.lookup_next (as sm@310@01  $FVF<next>) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@285@01))) r)))
  :pattern (($FVF.lookup_next (as sm@310@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@285@01))) r))
  :qid |qp.fvfValDef187|)))
(assert (forall ((r $Ref)) (!
  ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@285@01))) r) r)
  :pattern (($FVF.lookup_next (as sm@310@01  $FVF<next>) r))
  :qid |qp.fvfResTrgDef188|)))
(assert (forall ((n@307@01 $Ref)) (!
  (=>
    (Set_in n@307@01 g@231@01)
    (and (= (inv@308@01 n@307@01) n@307@01) (img@309@01 n@307@01)))
  :pattern ((Set_in n@307@01 g@231@01))
  :pattern ((inv@308@01 n@307@01))
  :pattern ((img@309@01 n@307@01))
  :qid |next-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=> (and (img@309@01 r) (Set_in (inv@308@01 r) g@231@01)) (= (inv@308@01 r) r))
  :pattern ((inv@308@01 r))
  :qid |next-fctOfInv|)))
(assert (forall ((r $Ref)) (!
  (and
    (=>
      (Set_in r ($FVF.domain_next (as sm@311@01  $FVF<next>)))
      (and (Set_in (inv@308@01 r) g@231@01) (img@309@01 r)))
    (=>
      (and (Set_in (inv@308@01 r) g@231@01) (img@309@01 r))
      (Set_in r ($FVF.domain_next (as sm@311@01  $FVF<next>)))))
  :pattern ((Set_in r ($FVF.domain_next (as sm@311@01  $FVF<next>))))
  :qid |qp.fvfDomDef191|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and (Set_in (inv@308@01 r) g@231@01) (img@309@01 r))
      (and (img@289@01 r) (Set_in (inv@288@01 r) g@231@01)))
    (=
      ($FVF.lookup_next (as sm@311@01  $FVF<next>) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@285@01))) r)))
  :pattern (($FVF.lookup_next (as sm@311@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@285@01))) r))
  :qid |qp.fvfValDef189|)))
(assert (forall ((r $Ref)) (!
  ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@285@01))) r) r)
  :pattern (($FVF.lookup_next (as sm@311@01  $FVF<next>) r))
  :qid |qp.fvfResTrgDef190|)))
(assert (=>
  (exists_path<Bool> ($$ ($SortWrappers.$FVF<next>To$Snap (as sm@306@01  $FVF<next>)) g@231@01) x@232@01 n@302@01)
  (and
    (exists_path<Bool> ($$ ($SortWrappers.$FVF<next>To$Snap (as sm@306@01  $FVF<next>)) g@231@01) x@232@01 n@302@01)
    (forall ((r $Ref)) (!
      (=>
        (Set_in (inv@308@01 r) g@231@01)
        ($FVF.loc_next ($FVF.lookup_next (as sm@310@01  $FVF<next>) r) r))
      :pattern ((inv@308@01 r))
      :qid |quant-u-15640|))
    ($$%precondition ($SortWrappers.$FVF<next>To$Snap (as sm@311@01  $FVF<next>)) g@231@01))))
(assert (or
  (exists_path<Bool> ($$ ($SortWrappers.$FVF<next>To$Snap (as sm@306@01  $FVF<next>)) g@231@01) x@232@01 n@302@01)
  (not
    (exists_path<Bool> ($$ ($SortWrappers.$FVF<next>To$Snap (as sm@306@01  $FVF<next>)) g@231@01) x@232@01 n@302@01))))
(pop) ; 7
(push) ; 7
; [else-branch: 42 | !(n@302@01 in g@231@01)]
(assert (not (Set_in n@302@01 g@231@01)))
(pop) ; 7
(pop) ; 6
; Joined path conditions
(assert (forall ((n@303@01 $Ref)) (!
  (=>
    (Set_in n@303@01 g@231@01)
    (and (= (inv@304@01 n@303@01) n@303@01) (img@305@01 n@303@01)))
  :pattern ((Set_in n@303@01 g@231@01))
  :pattern ((inv@304@01 n@303@01))
  :pattern ((img@305@01 n@303@01))
  :qid |next-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=> (and (img@305@01 r) (Set_in (inv@304@01 r) g@231@01)) (= (inv@304@01 r) r))
  :pattern ((inv@304@01 r))
  :qid |next-fctOfInv|)))
(assert (forall ((r $Ref)) (!
  (and
    (=>
      (Set_in r ($FVF.domain_next (as sm@306@01  $FVF<next>)))
      (and (Set_in (inv@304@01 r) g@231@01) (img@305@01 r)))
    (=>
      (and (Set_in (inv@304@01 r) g@231@01) (img@305@01 r))
      (Set_in r ($FVF.domain_next (as sm@306@01  $FVF<next>)))))
  :pattern ((Set_in r ($FVF.domain_next (as sm@306@01  $FVF<next>))))
  :qid |qp.fvfDomDef186|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and (Set_in (inv@304@01 r) g@231@01) (img@305@01 r))
      (and (img@289@01 r) (Set_in (inv@288@01 r) g@231@01)))
    (=
      ($FVF.lookup_next (as sm@306@01  $FVF<next>) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@285@01))) r)))
  :pattern (($FVF.lookup_next (as sm@306@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@285@01))) r))
  :qid |qp.fvfValDef184|)))
(assert (forall ((r $Ref)) (!
  ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@285@01))) r) r)
  :pattern (($FVF.lookup_next (as sm@306@01  $FVF<next>) r))
  :qid |qp.fvfResTrgDef185|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@289@01 r) (Set_in (inv@288@01 r) g@231@01))
    (=
      ($FVF.lookup_next (as sm@310@01  $FVF<next>) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@285@01))) r)))
  :pattern (($FVF.lookup_next (as sm@310@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@285@01))) r))
  :qid |qp.fvfValDef187|)))
(assert (forall ((r $Ref)) (!
  ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@285@01))) r) r)
  :pattern (($FVF.lookup_next (as sm@310@01  $FVF<next>) r))
  :qid |qp.fvfResTrgDef188|)))
(assert (forall ((n@307@01 $Ref)) (!
  (=>
    (Set_in n@307@01 g@231@01)
    (and (= (inv@308@01 n@307@01) n@307@01) (img@309@01 n@307@01)))
  :pattern ((Set_in n@307@01 g@231@01))
  :pattern ((inv@308@01 n@307@01))
  :pattern ((img@309@01 n@307@01))
  :qid |next-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=> (and (img@309@01 r) (Set_in (inv@308@01 r) g@231@01)) (= (inv@308@01 r) r))
  :pattern ((inv@308@01 r))
  :qid |next-fctOfInv|)))
(assert (forall ((r $Ref)) (!
  (and
    (=>
      (Set_in r ($FVF.domain_next (as sm@311@01  $FVF<next>)))
      (and (Set_in (inv@308@01 r) g@231@01) (img@309@01 r)))
    (=>
      (and (Set_in (inv@308@01 r) g@231@01) (img@309@01 r))
      (Set_in r ($FVF.domain_next (as sm@311@01  $FVF<next>)))))
  :pattern ((Set_in r ($FVF.domain_next (as sm@311@01  $FVF<next>))))
  :qid |qp.fvfDomDef191|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and (Set_in (inv@308@01 r) g@231@01) (img@309@01 r))
      (and (img@289@01 r) (Set_in (inv@288@01 r) g@231@01)))
    (=
      ($FVF.lookup_next (as sm@311@01  $FVF<next>) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@285@01))) r)))
  :pattern (($FVF.lookup_next (as sm@311@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@285@01))) r))
  :qid |qp.fvfValDef189|)))
(assert (forall ((r $Ref)) (!
  ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@285@01))) r) r)
  :pattern (($FVF.lookup_next (as sm@311@01  $FVF<next>) r))
  :qid |qp.fvfResTrgDef190|)))
(assert (=>
  (Set_in n@302@01 g@231@01)
  (and
    (Set_in n@302@01 g@231@01)
    (forall ((r $Ref)) (!
      (=>
        (Set_in (inv@304@01 r) g@231@01)
        ($FVF.loc_next ($FVF.lookup_next (as sm@290@01  $FVF<next>) r) r))
      :pattern ((inv@304@01 r))
      :qid |quant-u-15637|))
    ($$%precondition ($SortWrappers.$FVF<next>To$Snap (as sm@306@01  $FVF<next>)) g@231@01)
    (=>
      (exists_path<Bool> ($$ ($SortWrappers.$FVF<next>To$Snap (as sm@306@01  $FVF<next>)) g@231@01) x@232@01 n@302@01)
      (and
        (exists_path<Bool> ($$ ($SortWrappers.$FVF<next>To$Snap (as sm@306@01  $FVF<next>)) g@231@01) x@232@01 n@302@01)
        (forall ((r $Ref)) (!
          (=>
            (Set_in (inv@308@01 r) g@231@01)
            ($FVF.loc_next ($FVF.lookup_next (as sm@310@01  $FVF<next>) r) r))
          :pattern ((inv@308@01 r))
          :qid |quant-u-15640|))
        ($$%precondition ($SortWrappers.$FVF<next>To$Snap (as sm@311@01  $FVF<next>)) g@231@01)))
    (or
      (exists_path<Bool> ($$ ($SortWrappers.$FVF<next>To$Snap (as sm@306@01  $FVF<next>)) g@231@01) x@232@01 n@302@01)
      (not
        (exists_path<Bool> ($$ ($SortWrappers.$FVF<next>To$Snap (as sm@306@01  $FVF<next>)) g@231@01) x@232@01 n@302@01))))))
; Joined path conditions
(assert (or (not (Set_in n@302@01 g@231@01)) (Set_in n@302@01 g@231@01)))
(pop) ; 5
; Nested auxiliary terms: globals (aux)
(assert (forall ((n@303@01 $Ref)) (!
  (=>
    (Set_in n@303@01 g@231@01)
    (and (= (inv@304@01 n@303@01) n@303@01) (img@305@01 n@303@01)))
  :pattern ((Set_in n@303@01 g@231@01))
  :pattern ((inv@304@01 n@303@01))
  :pattern ((img@305@01 n@303@01))
  :qid |next-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=> (and (img@305@01 r) (Set_in (inv@304@01 r) g@231@01)) (= (inv@304@01 r) r))
  :pattern ((inv@304@01 r))
  :qid |next-fctOfInv|)))
(assert (forall ((r $Ref)) (!
  (and
    (=>
      (Set_in r ($FVF.domain_next (as sm@306@01  $FVF<next>)))
      (and (Set_in (inv@304@01 r) g@231@01) (img@305@01 r)))
    (=>
      (and (Set_in (inv@304@01 r) g@231@01) (img@305@01 r))
      (Set_in r ($FVF.domain_next (as sm@306@01  $FVF<next>)))))
  :pattern ((Set_in r ($FVF.domain_next (as sm@306@01  $FVF<next>))))
  :qid |qp.fvfDomDef186|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and (Set_in (inv@304@01 r) g@231@01) (img@305@01 r))
      (and (img@289@01 r) (Set_in (inv@288@01 r) g@231@01)))
    (=
      ($FVF.lookup_next (as sm@306@01  $FVF<next>) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@285@01))) r)))
  :pattern (($FVF.lookup_next (as sm@306@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@285@01))) r))
  :qid |qp.fvfValDef184|)))
(assert (forall ((r $Ref)) (!
  ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@285@01))) r) r)
  :pattern (($FVF.lookup_next (as sm@306@01  $FVF<next>) r))
  :qid |qp.fvfResTrgDef185|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@289@01 r) (Set_in (inv@288@01 r) g@231@01))
    (=
      ($FVF.lookup_next (as sm@310@01  $FVF<next>) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@285@01))) r)))
  :pattern (($FVF.lookup_next (as sm@310@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@285@01))) r))
  :qid |qp.fvfValDef187|)))
(assert (forall ((r $Ref)) (!
  ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@285@01))) r) r)
  :pattern (($FVF.lookup_next (as sm@310@01  $FVF<next>) r))
  :qid |qp.fvfResTrgDef188|)))
(assert (forall ((n@307@01 $Ref)) (!
  (=>
    (Set_in n@307@01 g@231@01)
    (and (= (inv@308@01 n@307@01) n@307@01) (img@309@01 n@307@01)))
  :pattern ((Set_in n@307@01 g@231@01))
  :pattern ((inv@308@01 n@307@01))
  :pattern ((img@309@01 n@307@01))
  :qid |next-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=> (and (img@309@01 r) (Set_in (inv@308@01 r) g@231@01)) (= (inv@308@01 r) r))
  :pattern ((inv@308@01 r))
  :qid |next-fctOfInv|)))
(assert (forall ((r $Ref)) (!
  (and
    (=>
      (Set_in r ($FVF.domain_next (as sm@311@01  $FVF<next>)))
      (and (Set_in (inv@308@01 r) g@231@01) (img@309@01 r)))
    (=>
      (and (Set_in (inv@308@01 r) g@231@01) (img@309@01 r))
      (Set_in r ($FVF.domain_next (as sm@311@01  $FVF<next>)))))
  :pattern ((Set_in r ($FVF.domain_next (as sm@311@01  $FVF<next>))))
  :qid |qp.fvfDomDef191|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and (Set_in (inv@308@01 r) g@231@01) (img@309@01 r))
      (and (img@289@01 r) (Set_in (inv@288@01 r) g@231@01)))
    (=
      ($FVF.lookup_next (as sm@311@01  $FVF<next>) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@285@01))) r)))
  :pattern (($FVF.lookup_next (as sm@311@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@285@01))) r))
  :qid |qp.fvfValDef189|)))
(assert (forall ((r $Ref)) (!
  ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@285@01))) r) r)
  :pattern (($FVF.lookup_next (as sm@311@01  $FVF<next>) r))
  :qid |qp.fvfResTrgDef190|)))
; Nested auxiliary terms: non-globals (aux)
(assert (forall ((n@302@01 $Ref)) (!
  (and
    (=>
      (Set_in n@302@01 g@231@01)
      (and
        (Set_in n@302@01 g@231@01)
        (forall ((r $Ref)) (!
          (=>
            (Set_in (inv@304@01 r) g@231@01)
            ($FVF.loc_next ($FVF.lookup_next (as sm@290@01  $FVF<next>) r) r))
          :pattern ((inv@304@01 r))
          :qid |quant-u-15637|))
        ($$%precondition ($SortWrappers.$FVF<next>To$Snap (as sm@306@01  $FVF<next>)) g@231@01)
        (=>
          (exists_path<Bool> ($$ ($SortWrappers.$FVF<next>To$Snap (as sm@306@01  $FVF<next>)) g@231@01) x@232@01 n@302@01)
          (and
            (exists_path<Bool> ($$ ($SortWrappers.$FVF<next>To$Snap (as sm@306@01  $FVF<next>)) g@231@01) x@232@01 n@302@01)
            (forall ((r $Ref)) (!
              (=>
                (Set_in (inv@308@01 r) g@231@01)
                ($FVF.loc_next ($FVF.lookup_next (as sm@310@01  $FVF<next>) r) r))
              :pattern ((inv@308@01 r))
              :qid |quant-u-15640|))
            ($$%precondition ($SortWrappers.$FVF<next>To$Snap (as sm@311@01  $FVF<next>)) g@231@01)))
        (or
          (exists_path<Bool> ($$ ($SortWrappers.$FVF<next>To$Snap (as sm@306@01  $FVF<next>)) g@231@01) x@232@01 n@302@01)
          (not
            (exists_path<Bool> ($$ ($SortWrappers.$FVF<next>To$Snap (as sm@306@01  $FVF<next>)) g@231@01) x@232@01 n@302@01)))))
    (or (not (Set_in n@302@01 g@231@01)) (Set_in n@302@01 g@231@01)))
  :pattern ((Set_in n@302@01 g@231@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/graphs/static/outlines/list_append.vpr@372@23@372@102-aux|)))
(assert (forall ((n@302@01 $Ref)) (!
  (and
    (=>
      (Set_in n@302@01 g@231@01)
      (and
        (Set_in n@302@01 g@231@01)
        (forall ((r $Ref)) (!
          (=>
            (Set_in (inv@304@01 r) g@231@01)
            ($FVF.loc_next ($FVF.lookup_next (as sm@290@01  $FVF<next>) r) r))
          :pattern ((inv@304@01 r))
          :qid |quant-u-15637|))
        ($$%precondition ($SortWrappers.$FVF<next>To$Snap (as sm@306@01  $FVF<next>)) g@231@01)
        (=>
          (exists_path<Bool> ($$ ($SortWrappers.$FVF<next>To$Snap (as sm@306@01  $FVF<next>)) g@231@01) x@232@01 n@302@01)
          (and
            (exists_path<Bool> ($$ ($SortWrappers.$FVF<next>To$Snap (as sm@306@01  $FVF<next>)) g@231@01) x@232@01 n@302@01)
            (forall ((r $Ref)) (!
              (=>
                (Set_in (inv@308@01 r) g@231@01)
                ($FVF.loc_next ($FVF.lookup_next (as sm@310@01  $FVF<next>) r) r))
              :pattern ((inv@308@01 r))
              :qid |quant-u-15640|))
            ($$%precondition ($SortWrappers.$FVF<next>To$Snap (as sm@311@01  $FVF<next>)) g@231@01)))
        (or
          (exists_path<Bool> ($$ ($SortWrappers.$FVF<next>To$Snap (as sm@306@01  $FVF<next>)) g@231@01) x@232@01 n@302@01)
          (not
            (exists_path<Bool> ($$ ($SortWrappers.$FVF<next>To$Snap (as sm@306@01  $FVF<next>)) g@231@01) x@232@01 n@302@01)))))
    (or (not (Set_in n@302@01 g@231@01)) (Set_in n@302@01 g@231@01)))
  :pattern ((exists_path<Bool> ($$ ($SortWrappers.$FVF<next>To$Snap (as sm@306@01  $FVF<next>)) g@231@01) x@232@01 n@302@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/graphs/static/outlines/list_append.vpr@372@23@372@102-aux|)))
(assert (forall ((n@302@01 $Ref)) (!
  (and
    (=>
      (Set_in n@302@01 g@231@01)
      (and
        (Set_in n@302@01 g@231@01)
        (forall ((r $Ref)) (!
          (=>
            (Set_in (inv@304@01 r) g@231@01)
            ($FVF.loc_next ($FVF.lookup_next (as sm@290@01  $FVF<next>) r) r))
          :pattern ((inv@304@01 r))
          :qid |quant-u-15637|))
        ($$%precondition ($SortWrappers.$FVF<next>To$Snap (as sm@306@01  $FVF<next>)) g@231@01)
        (=>
          (exists_path<Bool> ($$ ($SortWrappers.$FVF<next>To$Snap (as sm@306@01  $FVF<next>)) g@231@01) x@232@01 n@302@01)
          (and
            (exists_path<Bool> ($$ ($SortWrappers.$FVF<next>To$Snap (as sm@306@01  $FVF<next>)) g@231@01) x@232@01 n@302@01)
            (forall ((r $Ref)) (!
              (=>
                (Set_in (inv@308@01 r) g@231@01)
                ($FVF.loc_next ($FVF.lookup_next (as sm@310@01  $FVF<next>) r) r))
              :pattern ((inv@308@01 r))
              :qid |quant-u-15640|))
            ($$%precondition ($SortWrappers.$FVF<next>To$Snap (as sm@311@01  $FVF<next>)) g@231@01)))
        (or
          (exists_path<Bool> ($$ ($SortWrappers.$FVF<next>To$Snap (as sm@306@01  $FVF<next>)) g@231@01) x@232@01 n@302@01)
          (not
            (exists_path<Bool> ($$ ($SortWrappers.$FVF<next>To$Snap (as sm@306@01  $FVF<next>)) g@231@01) x@232@01 n@302@01)))))
    (or (not (Set_in n@302@01 g@231@01)) (Set_in n@302@01 g@231@01)))
  :pattern ((exists_path<Bool> ($$ ($SortWrappers.$FVF<next>To$Snap (as sm@311@01  $FVF<next>)) g@231@01) y@233@01 n@302@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/graphs/static/outlines/list_append.vpr@372@23@372@102-aux|)))
(assert (forall ((n@302@01 $Ref)) (!
  (=>
    (Set_in n@302@01 g@231@01)
    (or
      (not
        (exists_path<Bool> ($$ ($SortWrappers.$FVF<next>To$Snap (as sm@306@01  $FVF<next>)) g@231@01) x@232@01 n@302@01))
      (not
        (exists_path<Bool> ($$ ($SortWrappers.$FVF<next>To$Snap (as sm@311@01  $FVF<next>)) g@231@01) y@233@01 n@302@01))))
  :pattern ((Set_in n@302@01 g@231@01))
  :pattern ((exists_path<Bool> ($$ ($SortWrappers.$FVF<next>To$Snap (as sm@306@01  $FVF<next>)) g@231@01) x@232@01 n@302@01))
  :pattern ((exists_path<Bool> ($$ ($SortWrappers.$FVF<next>To$Snap (as sm@311@01  $FVF<next>)) g@231@01) y@233@01 n@302@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/graphs/static/outlines/list_append.vpr@372@23@372@102|)))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@285@01))))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@285@01)))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@285@01))))))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@285@01)))))))))
  $Snap.unit))
; [eval] acyclic_graph($$(g))
; [eval] $$(g)
(push) ; 5
(declare-const n@312@01 $Ref)
(push) ; 6
; [eval] (n in refs)
(assert (Set_in n@312@01 g@231@01))
(pop) ; 6
(declare-fun inv@313@01 ($Ref) $Ref)
(declare-fun img@314@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
; Definitional axioms for snapshot map domain
; Definitional axioms for snapshot map values
; Check receiver injectivity
(push) ; 6
(assert (not (forall ((n1@312@01 $Ref) (n2@312@01 $Ref)) (!
  (=>
    (and
      (and
        (Set_in n1@312@01 g@231@01)
        ($FVF.loc_next ($FVF.lookup_next (as sm@290@01  $FVF<next>) n1@312@01) n1@312@01))
      (and
        (Set_in n2@312@01 g@231@01)
        ($FVF.loc_next ($FVF.lookup_next (as sm@290@01  $FVF<next>) n2@312@01) n2@312@01))
      (= n1@312@01 n2@312@01))
    (= n1@312@01 n2@312@01))
  
  :qid |next-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((n@312@01 $Ref)) (!
  (=>
    (Set_in n@312@01 g@231@01)
    (and (= (inv@313@01 n@312@01) n@312@01) (img@314@01 n@312@01)))
  :pattern ((Set_in n@312@01 g@231@01))
  :pattern ((inv@313@01 n@312@01))
  :pattern ((img@314@01 n@312@01))
  :qid |next-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=> (and (img@314@01 r) (Set_in (inv@313@01 r) g@231@01)) (= (inv@313@01 r) r))
  :pattern ((inv@313@01 r))
  :qid |next-fctOfInv|)))
(assert (forall ((r $Ref)) (!
  (=>
    (Set_in (inv@313@01 r) g@231@01)
    ($FVF.loc_next ($FVF.lookup_next (as sm@290@01  $FVF<next>) r) r))
  :pattern ((inv@313@01 r))
  :qid |quant-u-15643|)))
(push) ; 6
(assert (not (forall ((r $Ref)) (!
  (=>
    (and (Set_in (inv@313@01 r) g@231@01) (img@314@01 r) (= r (inv@313@01 r)))
    (>
      (ite
        (and (img@289@01 r) (Set_in (inv@288@01 r) g@231@01))
        $Perm.Write
        $Perm.No)
      $Perm.No))
  
  :qid |quant-u-15644|))))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(declare-const sm@315@01 $FVF<next>)
; Definitional axioms for snapshot map domain
(assert (forall ((r $Ref)) (!
  (and
    (=>
      (Set_in r ($FVF.domain_next (as sm@315@01  $FVF<next>)))
      (and (Set_in (inv@313@01 r) g@231@01) (img@314@01 r)))
    (=>
      (and (Set_in (inv@313@01 r) g@231@01) (img@314@01 r))
      (Set_in r ($FVF.domain_next (as sm@315@01  $FVF<next>)))))
  :pattern ((Set_in r ($FVF.domain_next (as sm@315@01  $FVF<next>))))
  :qid |qp.fvfDomDef194|)))
; Definitional axioms for snapshot map values
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and (Set_in (inv@313@01 r) g@231@01) (img@314@01 r))
      (and (img@289@01 r) (Set_in (inv@288@01 r) g@231@01)))
    (=
      ($FVF.lookup_next (as sm@315@01  $FVF<next>) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@285@01))) r)))
  :pattern (($FVF.lookup_next (as sm@315@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@285@01))) r))
  :qid |qp.fvfValDef192|)))
(assert (forall ((r $Ref)) (!
  ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@285@01))) r) r)
  :pattern (($FVF.lookup_next (as sm@315@01  $FVF<next>) r))
  :qid |qp.fvfResTrgDef193|)))
(assert ($$%precondition ($SortWrappers.$FVF<next>To$Snap (as sm@315@01  $FVF<next>)) g@231@01))
(pop) ; 5
; Joined path conditions
(assert (forall ((n@312@01 $Ref)) (!
  (=>
    (Set_in n@312@01 g@231@01)
    (and (= (inv@313@01 n@312@01) n@312@01) (img@314@01 n@312@01)))
  :pattern ((Set_in n@312@01 g@231@01))
  :pattern ((inv@313@01 n@312@01))
  :pattern ((img@314@01 n@312@01))
  :qid |next-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=> (and (img@314@01 r) (Set_in (inv@313@01 r) g@231@01)) (= (inv@313@01 r) r))
  :pattern ((inv@313@01 r))
  :qid |next-fctOfInv|)))
(assert (forall ((r $Ref)) (!
  (and
    (=>
      (Set_in r ($FVF.domain_next (as sm@315@01  $FVF<next>)))
      (and (Set_in (inv@313@01 r) g@231@01) (img@314@01 r)))
    (=>
      (and (Set_in (inv@313@01 r) g@231@01) (img@314@01 r))
      (Set_in r ($FVF.domain_next (as sm@315@01  $FVF<next>)))))
  :pattern ((Set_in r ($FVF.domain_next (as sm@315@01  $FVF<next>))))
  :qid |qp.fvfDomDef194|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and (Set_in (inv@313@01 r) g@231@01) (img@314@01 r))
      (and (img@289@01 r) (Set_in (inv@288@01 r) g@231@01)))
    (=
      ($FVF.lookup_next (as sm@315@01  $FVF<next>) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@285@01))) r)))
  :pattern (($FVF.lookup_next (as sm@315@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@285@01))) r))
  :qid |qp.fvfValDef192|)))
(assert (forall ((r $Ref)) (!
  ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@285@01))) r) r)
  :pattern (($FVF.lookup_next (as sm@315@01  $FVF<next>) r))
  :qid |qp.fvfResTrgDef193|)))
(assert (and
  (forall ((r $Ref)) (!
    (=>
      (Set_in (inv@313@01 r) g@231@01)
      ($FVF.loc_next ($FVF.lookup_next (as sm@290@01  $FVF<next>) r) r))
    :pattern ((inv@313@01 r))
    :qid |quant-u-15643|))
  ($$%precondition ($SortWrappers.$FVF<next>To$Snap (as sm@315@01  $FVF<next>)) g@231@01)))
(assert (acyclic_graph<Bool> ($$ ($SortWrappers.$FVF<next>To$Snap (as sm@315@01  $FVF<next>)) g@231@01)))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@285@01)))))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@285@01))))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@285@01)))))))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@285@01))))))))))
  $Snap.unit))
; [eval] unshared_graph($$(g))
; [eval] $$(g)
(push) ; 5
(declare-const n@316@01 $Ref)
(push) ; 6
; [eval] (n in refs)
(assert (Set_in n@316@01 g@231@01))
(pop) ; 6
(declare-fun inv@317@01 ($Ref) $Ref)
(declare-fun img@318@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
(declare-const sm@319@01 $FVF<next>)
; Definitional axioms for snapshot map domain
; Definitional axioms for snapshot map values
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@289@01 r) (Set_in (inv@288@01 r) g@231@01))
    (=
      ($FVF.lookup_next (as sm@319@01  $FVF<next>) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@285@01))) r)))
  :pattern (($FVF.lookup_next (as sm@319@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@285@01))) r))
  :qid |qp.fvfValDef195|)))
(assert (forall ((r $Ref)) (!
  ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@285@01))) r) r)
  :pattern (($FVF.lookup_next (as sm@319@01  $FVF<next>) r))
  :qid |qp.fvfResTrgDef196|)))
; Check receiver injectivity
(push) ; 6
(assert (not (forall ((n1@316@01 $Ref) (n2@316@01 $Ref)) (!
  (=>
    (and
      (and
        (Set_in n1@316@01 g@231@01)
        ($FVF.loc_next ($FVF.lookup_next (as sm@319@01  $FVF<next>) n1@316@01) n1@316@01))
      (and
        (Set_in n2@316@01 g@231@01)
        ($FVF.loc_next ($FVF.lookup_next (as sm@319@01  $FVF<next>) n2@316@01) n2@316@01))
      (= n1@316@01 n2@316@01))
    (= n1@316@01 n2@316@01))
  
  :qid |next-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((n@316@01 $Ref)) (!
  (=>
    (Set_in n@316@01 g@231@01)
    (and (= (inv@317@01 n@316@01) n@316@01) (img@318@01 n@316@01)))
  :pattern ((Set_in n@316@01 g@231@01))
  :pattern ((inv@317@01 n@316@01))
  :pattern ((img@318@01 n@316@01))
  :qid |next-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=> (and (img@318@01 r) (Set_in (inv@317@01 r) g@231@01)) (= (inv@317@01 r) r))
  :pattern ((inv@317@01 r))
  :qid |next-fctOfInv|)))
(assert (forall ((r $Ref)) (!
  (=>
    (Set_in (inv@317@01 r) g@231@01)
    ($FVF.loc_next ($FVF.lookup_next (as sm@319@01  $FVF<next>) r) r))
  :pattern ((inv@317@01 r))
  :qid |quant-u-15646|)))
(push) ; 6
(assert (not (forall ((r $Ref)) (!
  (=>
    (and (Set_in (inv@317@01 r) g@231@01) (img@318@01 r) (= r (inv@317@01 r)))
    (>
      (ite
        (and (img@289@01 r) (Set_in (inv@288@01 r) g@231@01))
        $Perm.Write
        $Perm.No)
      $Perm.No))
  
  :qid |quant-u-15647|))))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(declare-const sm@320@01 $FVF<next>)
; Definitional axioms for snapshot map domain
(assert (forall ((r $Ref)) (!
  (and
    (=>
      (Set_in r ($FVF.domain_next (as sm@320@01  $FVF<next>)))
      (and (Set_in (inv@317@01 r) g@231@01) (img@318@01 r)))
    (=>
      (and (Set_in (inv@317@01 r) g@231@01) (img@318@01 r))
      (Set_in r ($FVF.domain_next (as sm@320@01  $FVF<next>)))))
  :pattern ((Set_in r ($FVF.domain_next (as sm@320@01  $FVF<next>))))
  :qid |qp.fvfDomDef199|)))
; Definitional axioms for snapshot map values
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and (Set_in (inv@317@01 r) g@231@01) (img@318@01 r))
      (and (img@289@01 r) (Set_in (inv@288@01 r) g@231@01)))
    (=
      ($FVF.lookup_next (as sm@320@01  $FVF<next>) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@285@01))) r)))
  :pattern (($FVF.lookup_next (as sm@320@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@285@01))) r))
  :qid |qp.fvfValDef197|)))
(assert (forall ((r $Ref)) (!
  ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@285@01))) r) r)
  :pattern (($FVF.lookup_next (as sm@320@01  $FVF<next>) r))
  :qid |qp.fvfResTrgDef198|)))
(assert ($$%precondition ($SortWrappers.$FVF<next>To$Snap (as sm@320@01  $FVF<next>)) g@231@01))
(pop) ; 5
; Joined path conditions
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@289@01 r) (Set_in (inv@288@01 r) g@231@01))
    (=
      ($FVF.lookup_next (as sm@319@01  $FVF<next>) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@285@01))) r)))
  :pattern (($FVF.lookup_next (as sm@319@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@285@01))) r))
  :qid |qp.fvfValDef195|)))
(assert (forall ((r $Ref)) (!
  ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@285@01))) r) r)
  :pattern (($FVF.lookup_next (as sm@319@01  $FVF<next>) r))
  :qid |qp.fvfResTrgDef196|)))
(assert (forall ((n@316@01 $Ref)) (!
  (=>
    (Set_in n@316@01 g@231@01)
    (and (= (inv@317@01 n@316@01) n@316@01) (img@318@01 n@316@01)))
  :pattern ((Set_in n@316@01 g@231@01))
  :pattern ((inv@317@01 n@316@01))
  :pattern ((img@318@01 n@316@01))
  :qid |next-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=> (and (img@318@01 r) (Set_in (inv@317@01 r) g@231@01)) (= (inv@317@01 r) r))
  :pattern ((inv@317@01 r))
  :qid |next-fctOfInv|)))
(assert (forall ((r $Ref)) (!
  (and
    (=>
      (Set_in r ($FVF.domain_next (as sm@320@01  $FVF<next>)))
      (and (Set_in (inv@317@01 r) g@231@01) (img@318@01 r)))
    (=>
      (and (Set_in (inv@317@01 r) g@231@01) (img@318@01 r))
      (Set_in r ($FVF.domain_next (as sm@320@01  $FVF<next>)))))
  :pattern ((Set_in r ($FVF.domain_next (as sm@320@01  $FVF<next>))))
  :qid |qp.fvfDomDef199|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and (Set_in (inv@317@01 r) g@231@01) (img@318@01 r))
      (and (img@289@01 r) (Set_in (inv@288@01 r) g@231@01)))
    (=
      ($FVF.lookup_next (as sm@320@01  $FVF<next>) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@285@01))) r)))
  :pattern (($FVF.lookup_next (as sm@320@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@285@01))) r))
  :qid |qp.fvfValDef197|)))
(assert (forall ((r $Ref)) (!
  ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@285@01))) r) r)
  :pattern (($FVF.lookup_next (as sm@320@01  $FVF<next>) r))
  :qid |qp.fvfResTrgDef198|)))
(assert (and
  (forall ((r $Ref)) (!
    (=>
      (Set_in (inv@317@01 r) g@231@01)
      ($FVF.loc_next ($FVF.lookup_next (as sm@319@01  $FVF<next>) r) r))
    :pattern ((inv@317@01 r))
    :qid |quant-u-15646|))
  ($$%precondition ($SortWrappers.$FVF<next>To$Snap (as sm@320@01  $FVF<next>)) g@231@01)))
(assert (unshared_graph<Bool> ($$ ($SortWrappers.$FVF<next>To$Snap (as sm@320@01  $FVF<next>)) g@231@01)))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@285@01))))))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@285@01)))))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@285@01))))))))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@285@01)))))))))))
  $Snap.unit))
; [eval] $$(g) == old_g
; [eval] $$(g)
(push) ; 5
(declare-const n@321@01 $Ref)
(push) ; 6
; [eval] (n in refs)
(assert (Set_in n@321@01 g@231@01))
(pop) ; 6
(declare-fun inv@322@01 ($Ref) $Ref)
(declare-fun img@323@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
(declare-const sm@324@01 $FVF<next>)
; Definitional axioms for snapshot map domain
; Definitional axioms for snapshot map values
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@289@01 r) (Set_in (inv@288@01 r) g@231@01))
    (=
      ($FVF.lookup_next (as sm@324@01  $FVF<next>) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@285@01))) r)))
  :pattern (($FVF.lookup_next (as sm@324@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@285@01))) r))
  :qid |qp.fvfValDef200|)))
(assert (forall ((r $Ref)) (!
  ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@285@01))) r) r)
  :pattern (($FVF.lookup_next (as sm@324@01  $FVF<next>) r))
  :qid |qp.fvfResTrgDef201|)))
; Check receiver injectivity
(push) ; 6
(assert (not (forall ((n1@321@01 $Ref) (n2@321@01 $Ref)) (!
  (=>
    (and
      (and
        (Set_in n1@321@01 g@231@01)
        ($FVF.loc_next ($FVF.lookup_next (as sm@324@01  $FVF<next>) n1@321@01) n1@321@01))
      (and
        (Set_in n2@321@01 g@231@01)
        ($FVF.loc_next ($FVF.lookup_next (as sm@324@01  $FVF<next>) n2@321@01) n2@321@01))
      (= n1@321@01 n2@321@01))
    (= n1@321@01 n2@321@01))
  
  :qid |next-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((n@321@01 $Ref)) (!
  (=>
    (Set_in n@321@01 g@231@01)
    (and (= (inv@322@01 n@321@01) n@321@01) (img@323@01 n@321@01)))
  :pattern ((Set_in n@321@01 g@231@01))
  :pattern ((inv@322@01 n@321@01))
  :pattern ((img@323@01 n@321@01))
  :qid |next-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=> (and (img@323@01 r) (Set_in (inv@322@01 r) g@231@01)) (= (inv@322@01 r) r))
  :pattern ((inv@322@01 r))
  :qid |next-fctOfInv|)))
(assert (forall ((r $Ref)) (!
  (=>
    (Set_in (inv@322@01 r) g@231@01)
    ($FVF.loc_next ($FVF.lookup_next (as sm@324@01  $FVF<next>) r) r))
  :pattern ((inv@322@01 r))
  :qid |quant-u-15649|)))
(push) ; 6
(assert (not (forall ((r $Ref)) (!
  (=>
    (and (Set_in (inv@322@01 r) g@231@01) (img@323@01 r) (= r (inv@322@01 r)))
    (>
      (ite
        (and (img@289@01 r) (Set_in (inv@288@01 r) g@231@01))
        $Perm.Write
        $Perm.No)
      $Perm.No))
  
  :qid |quant-u-15650|))))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(declare-const sm@325@01 $FVF<next>)
; Definitional axioms for snapshot map domain
(assert (forall ((r $Ref)) (!
  (and
    (=>
      (Set_in r ($FVF.domain_next (as sm@325@01  $FVF<next>)))
      (and (Set_in (inv@322@01 r) g@231@01) (img@323@01 r)))
    (=>
      (and (Set_in (inv@322@01 r) g@231@01) (img@323@01 r))
      (Set_in r ($FVF.domain_next (as sm@325@01  $FVF<next>)))))
  :pattern ((Set_in r ($FVF.domain_next (as sm@325@01  $FVF<next>))))
  :qid |qp.fvfDomDef204|)))
; Definitional axioms for snapshot map values
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and (Set_in (inv@322@01 r) g@231@01) (img@323@01 r))
      (and (img@289@01 r) (Set_in (inv@288@01 r) g@231@01)))
    (=
      ($FVF.lookup_next (as sm@325@01  $FVF<next>) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@285@01))) r)))
  :pattern (($FVF.lookup_next (as sm@325@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@285@01))) r))
  :qid |qp.fvfValDef202|)))
(assert (forall ((r $Ref)) (!
  ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@285@01))) r) r)
  :pattern (($FVF.lookup_next (as sm@325@01  $FVF<next>) r))
  :qid |qp.fvfResTrgDef203|)))
(assert ($$%precondition ($SortWrappers.$FVF<next>To$Snap (as sm@325@01  $FVF<next>)) g@231@01))
(pop) ; 5
; Joined path conditions
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@289@01 r) (Set_in (inv@288@01 r) g@231@01))
    (=
      ($FVF.lookup_next (as sm@324@01  $FVF<next>) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@285@01))) r)))
  :pattern (($FVF.lookup_next (as sm@324@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@285@01))) r))
  :qid |qp.fvfValDef200|)))
(assert (forall ((r $Ref)) (!
  ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@285@01))) r) r)
  :pattern (($FVF.lookup_next (as sm@324@01  $FVF<next>) r))
  :qid |qp.fvfResTrgDef201|)))
(assert (forall ((n@321@01 $Ref)) (!
  (=>
    (Set_in n@321@01 g@231@01)
    (and (= (inv@322@01 n@321@01) n@321@01) (img@323@01 n@321@01)))
  :pattern ((Set_in n@321@01 g@231@01))
  :pattern ((inv@322@01 n@321@01))
  :pattern ((img@323@01 n@321@01))
  :qid |next-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=> (and (img@323@01 r) (Set_in (inv@322@01 r) g@231@01)) (= (inv@322@01 r) r))
  :pattern ((inv@322@01 r))
  :qid |next-fctOfInv|)))
(assert (forall ((r $Ref)) (!
  (and
    (=>
      (Set_in r ($FVF.domain_next (as sm@325@01  $FVF<next>)))
      (and (Set_in (inv@322@01 r) g@231@01) (img@323@01 r)))
    (=>
      (and (Set_in (inv@322@01 r) g@231@01) (img@323@01 r))
      (Set_in r ($FVF.domain_next (as sm@325@01  $FVF<next>)))))
  :pattern ((Set_in r ($FVF.domain_next (as sm@325@01  $FVF<next>))))
  :qid |qp.fvfDomDef204|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and (Set_in (inv@322@01 r) g@231@01) (img@323@01 r))
      (and (img@289@01 r) (Set_in (inv@288@01 r) g@231@01)))
    (=
      ($FVF.lookup_next (as sm@325@01  $FVF<next>) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@285@01))) r)))
  :pattern (($FVF.lookup_next (as sm@325@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@285@01))) r))
  :qid |qp.fvfValDef202|)))
(assert (forall ((r $Ref)) (!
  ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@285@01))) r) r)
  :pattern (($FVF.lookup_next (as sm@325@01  $FVF<next>) r))
  :qid |qp.fvfResTrgDef203|)))
(assert (and
  (forall ((r $Ref)) (!
    (=>
      (Set_in (inv@322@01 r) g@231@01)
      ($FVF.loc_next ($FVF.lookup_next (as sm@324@01  $FVF<next>) r) r))
    :pattern ((inv@322@01 r))
    :qid |quant-u-15649|))
  ($$%precondition ($SortWrappers.$FVF<next>To$Snap (as sm@325@01  $FVF<next>)) g@231@01)))
(assert (Set_equal ($$ ($SortWrappers.$FVF<next>To$Snap (as sm@325@01  $FVF<next>)) g@231@01) old_g@283@01))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@285@01)))))))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@285@01))))))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@285@01)))))))))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@285@01))))))))))))
  $Snap.unit))
; [eval] exists_path($$(g), x, last)
; [eval] $$(g)
(push) ; 5
(declare-const n@326@01 $Ref)
(push) ; 6
; [eval] (n in refs)
(assert (Set_in n@326@01 g@231@01))
(pop) ; 6
(declare-fun inv@327@01 ($Ref) $Ref)
(declare-fun img@328@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
(declare-const sm@329@01 $FVF<next>)
; Definitional axioms for snapshot map domain
; Definitional axioms for snapshot map values
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@289@01 r) (Set_in (inv@288@01 r) g@231@01))
    (=
      ($FVF.lookup_next (as sm@329@01  $FVF<next>) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@285@01))) r)))
  :pattern (($FVF.lookup_next (as sm@329@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@285@01))) r))
  :qid |qp.fvfValDef205|)))
(assert (forall ((r $Ref)) (!
  ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@285@01))) r) r)
  :pattern (($FVF.lookup_next (as sm@329@01  $FVF<next>) r))
  :qid |qp.fvfResTrgDef206|)))
; Check receiver injectivity
(push) ; 6
(assert (not (forall ((n1@326@01 $Ref) (n2@326@01 $Ref)) (!
  (=>
    (and
      (and
        (Set_in n1@326@01 g@231@01)
        ($FVF.loc_next ($FVF.lookup_next (as sm@329@01  $FVF<next>) n1@326@01) n1@326@01))
      (and
        (Set_in n2@326@01 g@231@01)
        ($FVF.loc_next ($FVF.lookup_next (as sm@329@01  $FVF<next>) n2@326@01) n2@326@01))
      (= n1@326@01 n2@326@01))
    (= n1@326@01 n2@326@01))
  
  :qid |next-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((n@326@01 $Ref)) (!
  (=>
    (Set_in n@326@01 g@231@01)
    (and (= (inv@327@01 n@326@01) n@326@01) (img@328@01 n@326@01)))
  :pattern ((Set_in n@326@01 g@231@01))
  :pattern ((inv@327@01 n@326@01))
  :pattern ((img@328@01 n@326@01))
  :qid |next-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=> (and (img@328@01 r) (Set_in (inv@327@01 r) g@231@01)) (= (inv@327@01 r) r))
  :pattern ((inv@327@01 r))
  :qid |next-fctOfInv|)))
(assert (forall ((r $Ref)) (!
  (=>
    (Set_in (inv@327@01 r) g@231@01)
    ($FVF.loc_next ($FVF.lookup_next (as sm@329@01  $FVF<next>) r) r))
  :pattern ((inv@327@01 r))
  :qid |quant-u-15652|)))
(push) ; 6
(assert (not (forall ((r $Ref)) (!
  (=>
    (and (Set_in (inv@327@01 r) g@231@01) (img@328@01 r) (= r (inv@327@01 r)))
    (>
      (ite
        (and (img@289@01 r) (Set_in (inv@288@01 r) g@231@01))
        $Perm.Write
        $Perm.No)
      $Perm.No))
  
  :qid |quant-u-15653|))))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(declare-const sm@330@01 $FVF<next>)
; Definitional axioms for snapshot map domain
(assert (forall ((r $Ref)) (!
  (and
    (=>
      (Set_in r ($FVF.domain_next (as sm@330@01  $FVF<next>)))
      (and (Set_in (inv@327@01 r) g@231@01) (img@328@01 r)))
    (=>
      (and (Set_in (inv@327@01 r) g@231@01) (img@328@01 r))
      (Set_in r ($FVF.domain_next (as sm@330@01  $FVF<next>)))))
  :pattern ((Set_in r ($FVF.domain_next (as sm@330@01  $FVF<next>))))
  :qid |qp.fvfDomDef209|)))
; Definitional axioms for snapshot map values
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and (Set_in (inv@327@01 r) g@231@01) (img@328@01 r))
      (and (img@289@01 r) (Set_in (inv@288@01 r) g@231@01)))
    (=
      ($FVF.lookup_next (as sm@330@01  $FVF<next>) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@285@01))) r)))
  :pattern (($FVF.lookup_next (as sm@330@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@285@01))) r))
  :qid |qp.fvfValDef207|)))
(assert (forall ((r $Ref)) (!
  ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@285@01))) r) r)
  :pattern (($FVF.lookup_next (as sm@330@01  $FVF<next>) r))
  :qid |qp.fvfResTrgDef208|)))
(assert ($$%precondition ($SortWrappers.$FVF<next>To$Snap (as sm@330@01  $FVF<next>)) g@231@01))
(pop) ; 5
; Joined path conditions
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@289@01 r) (Set_in (inv@288@01 r) g@231@01))
    (=
      ($FVF.lookup_next (as sm@329@01  $FVF<next>) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@285@01))) r)))
  :pattern (($FVF.lookup_next (as sm@329@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@285@01))) r))
  :qid |qp.fvfValDef205|)))
(assert (forall ((r $Ref)) (!
  ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@285@01))) r) r)
  :pattern (($FVF.lookup_next (as sm@329@01  $FVF<next>) r))
  :qid |qp.fvfResTrgDef206|)))
(assert (forall ((n@326@01 $Ref)) (!
  (=>
    (Set_in n@326@01 g@231@01)
    (and (= (inv@327@01 n@326@01) n@326@01) (img@328@01 n@326@01)))
  :pattern ((Set_in n@326@01 g@231@01))
  :pattern ((inv@327@01 n@326@01))
  :pattern ((img@328@01 n@326@01))
  :qid |next-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=> (and (img@328@01 r) (Set_in (inv@327@01 r) g@231@01)) (= (inv@327@01 r) r))
  :pattern ((inv@327@01 r))
  :qid |next-fctOfInv|)))
(assert (forall ((r $Ref)) (!
  (and
    (=>
      (Set_in r ($FVF.domain_next (as sm@330@01  $FVF<next>)))
      (and (Set_in (inv@327@01 r) g@231@01) (img@328@01 r)))
    (=>
      (and (Set_in (inv@327@01 r) g@231@01) (img@328@01 r))
      (Set_in r ($FVF.domain_next (as sm@330@01  $FVF<next>)))))
  :pattern ((Set_in r ($FVF.domain_next (as sm@330@01  $FVF<next>))))
  :qid |qp.fvfDomDef209|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and (Set_in (inv@327@01 r) g@231@01) (img@328@01 r))
      (and (img@289@01 r) (Set_in (inv@288@01 r) g@231@01)))
    (=
      ($FVF.lookup_next (as sm@330@01  $FVF<next>) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@285@01))) r)))
  :pattern (($FVF.lookup_next (as sm@330@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@285@01))) r))
  :qid |qp.fvfValDef207|)))
(assert (forall ((r $Ref)) (!
  ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@285@01))) r) r)
  :pattern (($FVF.lookup_next (as sm@330@01  $FVF<next>) r))
  :qid |qp.fvfResTrgDef208|)))
(assert (and
  (forall ((r $Ref)) (!
    (=>
      (Set_in (inv@327@01 r) g@231@01)
      ($FVF.loc_next ($FVF.lookup_next (as sm@329@01  $FVF<next>) r) r))
    :pattern ((inv@327@01 r))
    :qid |quant-u-15652|))
  ($$%precondition ($SortWrappers.$FVF<next>To$Snap (as sm@330@01  $FVF<next>)) g@231@01)))
(assert (exists_path<Bool> ($$ ($SortWrappers.$FVF<next>To$Snap (as sm@330@01  $FVF<next>)) g@231@01) x@232@01 last@284@01))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@285@01))))))))))))
  $Snap.unit))
; [eval] last.next != null ==> edge($$(g), last, last.next) && exists_path($$(g), last.next, last.next) ==> exists_path($$(g), last, last.next)
; [eval] last.next != null
(assert ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@285@01))) last@284@01) last@284@01))
(push) ; 5
(assert (not (and (img@289@01 last@284@01) (Set_in (inv@288@01 last@284@01) g@231@01))))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(push) ; 5
(push) ; 6
(set-option :timeout 10)
(assert (not (=
  ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@285@01))) last@284@01)
  $Ref.null)))
(check-sat)
; unknown
(pop) ; 6
; 0.01s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 6
(set-option :timeout 10)
(assert (not (not
  (=
    ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@285@01))) last@284@01)
    $Ref.null))))
(check-sat)
; unknown
(pop) ; 6
; 0.01s
; (get-info :all-statistics)
; [then-branch: 44 | Lookup(next, First:(Second:($t@285@01)), last@284@01) != Null | live]
; [else-branch: 44 | Lookup(next, First:(Second:($t@285@01)), last@284@01) == Null | live]
(set-option :timeout 0)
(push) ; 6
; [then-branch: 44 | Lookup(next, First:(Second:($t@285@01)), last@284@01) != Null]
(assert (not
  (=
    ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@285@01))) last@284@01)
    $Ref.null)))
; [eval] edge($$(g), last, last.next) && exists_path($$(g), last.next, last.next) ==> exists_path($$(g), last, last.next)
; [eval] edge($$(g), last, last.next) && exists_path($$(g), last.next, last.next)
; [eval] edge($$(g), last, last.next)
; [eval] $$(g)
(push) ; 7
(declare-const n@331@01 $Ref)
(push) ; 8
; [eval] (n in refs)
(assert (Set_in n@331@01 g@231@01))
(pop) ; 8
(declare-fun inv@332@01 ($Ref) $Ref)
(declare-fun img@333@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
(declare-const sm@334@01 $FVF<next>)
; Definitional axioms for snapshot map domain
; Definitional axioms for snapshot map values
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@289@01 r) (Set_in (inv@288@01 r) g@231@01))
    (=
      ($FVF.lookup_next (as sm@334@01  $FVF<next>) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@285@01))) r)))
  :pattern (($FVF.lookup_next (as sm@334@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@285@01))) r))
  :qid |qp.fvfValDef210|)))
(assert (forall ((r $Ref)) (!
  ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@285@01))) r) r)
  :pattern (($FVF.lookup_next (as sm@334@01  $FVF<next>) r))
  :qid |qp.fvfResTrgDef211|)))
; Check receiver injectivity
(push) ; 8
(assert (not (forall ((n1@331@01 $Ref) (n2@331@01 $Ref)) (!
  (=>
    (and
      (and
        (Set_in n1@331@01 g@231@01)
        ($FVF.loc_next ($FVF.lookup_next (as sm@334@01  $FVF<next>) n1@331@01) n1@331@01))
      (and
        (Set_in n2@331@01 g@231@01)
        ($FVF.loc_next ($FVF.lookup_next (as sm@334@01  $FVF<next>) n2@331@01) n2@331@01))
      (= n1@331@01 n2@331@01))
    (= n1@331@01 n2@331@01))
  
  :qid |next-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 8
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((n@331@01 $Ref)) (!
  (=>
    (Set_in n@331@01 g@231@01)
    (and (= (inv@332@01 n@331@01) n@331@01) (img@333@01 n@331@01)))
  :pattern ((Set_in n@331@01 g@231@01))
  :pattern ((inv@332@01 n@331@01))
  :pattern ((img@333@01 n@331@01))
  :qid |next-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=> (and (img@333@01 r) (Set_in (inv@332@01 r) g@231@01)) (= (inv@332@01 r) r))
  :pattern ((inv@332@01 r))
  :qid |next-fctOfInv|)))
(assert (forall ((r $Ref)) (!
  (=>
    (Set_in (inv@332@01 r) g@231@01)
    ($FVF.loc_next ($FVF.lookup_next (as sm@334@01  $FVF<next>) r) r))
  :pattern ((inv@332@01 r))
  :qid |quant-u-15655|)))
(push) ; 8
(assert (not (forall ((r $Ref)) (!
  (=>
    (and (Set_in (inv@332@01 r) g@231@01) (img@333@01 r) (= r (inv@332@01 r)))
    (>
      (ite
        (and (img@289@01 r) (Set_in (inv@288@01 r) g@231@01))
        $Perm.Write
        $Perm.No)
      $Perm.No))
  
  :qid |quant-u-15656|))))
(check-sat)
; unsat
(pop) ; 8
; 0.00s
; (get-info :all-statistics)
(declare-const sm@335@01 $FVF<next>)
; Definitional axioms for snapshot map domain
(assert (forall ((r $Ref)) (!
  (and
    (=>
      (Set_in r ($FVF.domain_next (as sm@335@01  $FVF<next>)))
      (and (Set_in (inv@332@01 r) g@231@01) (img@333@01 r)))
    (=>
      (and (Set_in (inv@332@01 r) g@231@01) (img@333@01 r))
      (Set_in r ($FVF.domain_next (as sm@335@01  $FVF<next>)))))
  :pattern ((Set_in r ($FVF.domain_next (as sm@335@01  $FVF<next>))))
  :qid |qp.fvfDomDef214|)))
; Definitional axioms for snapshot map values
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and (Set_in (inv@332@01 r) g@231@01) (img@333@01 r))
      (and (img@289@01 r) (Set_in (inv@288@01 r) g@231@01)))
    (=
      ($FVF.lookup_next (as sm@335@01  $FVF<next>) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@285@01))) r)))
  :pattern (($FVF.lookup_next (as sm@335@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@285@01))) r))
  :qid |qp.fvfValDef212|)))
(assert (forall ((r $Ref)) (!
  ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@285@01))) r) r)
  :pattern (($FVF.lookup_next (as sm@335@01  $FVF<next>) r))
  :qid |qp.fvfResTrgDef213|)))
(assert ($$%precondition ($SortWrappers.$FVF<next>To$Snap (as sm@335@01  $FVF<next>)) g@231@01))
(pop) ; 7
; Joined path conditions
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@289@01 r) (Set_in (inv@288@01 r) g@231@01))
    (=
      ($FVF.lookup_next (as sm@334@01  $FVF<next>) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@285@01))) r)))
  :pattern (($FVF.lookup_next (as sm@334@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@285@01))) r))
  :qid |qp.fvfValDef210|)))
(assert (forall ((r $Ref)) (!
  ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@285@01))) r) r)
  :pattern (($FVF.lookup_next (as sm@334@01  $FVF<next>) r))
  :qid |qp.fvfResTrgDef211|)))
(assert (forall ((n@331@01 $Ref)) (!
  (=>
    (Set_in n@331@01 g@231@01)
    (and (= (inv@332@01 n@331@01) n@331@01) (img@333@01 n@331@01)))
  :pattern ((Set_in n@331@01 g@231@01))
  :pattern ((inv@332@01 n@331@01))
  :pattern ((img@333@01 n@331@01))
  :qid |next-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=> (and (img@333@01 r) (Set_in (inv@332@01 r) g@231@01)) (= (inv@332@01 r) r))
  :pattern ((inv@332@01 r))
  :qid |next-fctOfInv|)))
(assert (forall ((r $Ref)) (!
  (and
    (=>
      (Set_in r ($FVF.domain_next (as sm@335@01  $FVF<next>)))
      (and (Set_in (inv@332@01 r) g@231@01) (img@333@01 r)))
    (=>
      (and (Set_in (inv@332@01 r) g@231@01) (img@333@01 r))
      (Set_in r ($FVF.domain_next (as sm@335@01  $FVF<next>)))))
  :pattern ((Set_in r ($FVF.domain_next (as sm@335@01  $FVF<next>))))
  :qid |qp.fvfDomDef214|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and (Set_in (inv@332@01 r) g@231@01) (img@333@01 r))
      (and (img@289@01 r) (Set_in (inv@288@01 r) g@231@01)))
    (=
      ($FVF.lookup_next (as sm@335@01  $FVF<next>) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@285@01))) r)))
  :pattern (($FVF.lookup_next (as sm@335@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@285@01))) r))
  :qid |qp.fvfValDef212|)))
(assert (forall ((r $Ref)) (!
  ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@285@01))) r) r)
  :pattern (($FVF.lookup_next (as sm@335@01  $FVF<next>) r))
  :qid |qp.fvfResTrgDef213|)))
(assert (and
  (forall ((r $Ref)) (!
    (=>
      (Set_in (inv@332@01 r) g@231@01)
      ($FVF.loc_next ($FVF.lookup_next (as sm@334@01  $FVF<next>) r) r))
    :pattern ((inv@332@01 r))
    :qid |quant-u-15655|))
  ($$%precondition ($SortWrappers.$FVF<next>To$Snap (as sm@335@01  $FVF<next>)) g@231@01)))
(push) ; 7
(assert (not (and (img@289@01 last@284@01) (Set_in (inv@288@01 last@284@01) g@231@01))))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(push) ; 7
; [then-branch: 45 | !(edge[Bool]($$(sm@335@01, g@231@01), last@284@01, Lookup(next, First:(Second:($t@285@01)), last@284@01))) | live]
; [else-branch: 45 | edge[Bool]($$(sm@335@01, g@231@01), last@284@01, Lookup(next, First:(Second:($t@285@01)), last@284@01)) | live]
(push) ; 8
; [then-branch: 45 | !(edge[Bool]($$(sm@335@01, g@231@01), last@284@01, Lookup(next, First:(Second:($t@285@01)), last@284@01)))]
(assert (not
  (edge<Bool> ($$ ($SortWrappers.$FVF<next>To$Snap (as sm@335@01  $FVF<next>)) g@231@01) last@284@01 ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@285@01))) last@284@01))))
(pop) ; 8
(push) ; 8
; [else-branch: 45 | edge[Bool]($$(sm@335@01, g@231@01), last@284@01, Lookup(next, First:(Second:($t@285@01)), last@284@01))]
(assert (edge<Bool> ($$ ($SortWrappers.$FVF<next>To$Snap (as sm@335@01  $FVF<next>)) g@231@01) last@284@01 ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@285@01))) last@284@01)))
; [eval] exists_path($$(g), last.next, last.next)
; [eval] $$(g)
(push) ; 9
(declare-const n@336@01 $Ref)
(push) ; 10
; [eval] (n in refs)
(assert (Set_in n@336@01 g@231@01))
(pop) ; 10
(declare-fun inv@337@01 ($Ref) $Ref)
(declare-fun img@338@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
(declare-const sm@339@01 $FVF<next>)
; Definitional axioms for snapshot map domain
; Definitional axioms for snapshot map values
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@289@01 r) (Set_in (inv@288@01 r) g@231@01))
    (=
      ($FVF.lookup_next (as sm@339@01  $FVF<next>) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@285@01))) r)))
  :pattern (($FVF.lookup_next (as sm@339@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@285@01))) r))
  :qid |qp.fvfValDef215|)))
(assert (forall ((r $Ref)) (!
  ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@285@01))) r) r)
  :pattern (($FVF.lookup_next (as sm@339@01  $FVF<next>) r))
  :qid |qp.fvfResTrgDef216|)))
; Check receiver injectivity
(push) ; 10
(assert (not (forall ((n1@336@01 $Ref) (n2@336@01 $Ref)) (!
  (=>
    (and
      (and
        (Set_in n1@336@01 g@231@01)
        ($FVF.loc_next ($FVF.lookup_next (as sm@339@01  $FVF<next>) n1@336@01) n1@336@01))
      (and
        (Set_in n2@336@01 g@231@01)
        ($FVF.loc_next ($FVF.lookup_next (as sm@339@01  $FVF<next>) n2@336@01) n2@336@01))
      (= n1@336@01 n2@336@01))
    (= n1@336@01 n2@336@01))
  
  :qid |next-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 10
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((n@336@01 $Ref)) (!
  (=>
    (Set_in n@336@01 g@231@01)
    (and (= (inv@337@01 n@336@01) n@336@01) (img@338@01 n@336@01)))
  :pattern ((Set_in n@336@01 g@231@01))
  :pattern ((inv@337@01 n@336@01))
  :pattern ((img@338@01 n@336@01))
  :qid |next-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=> (and (img@338@01 r) (Set_in (inv@337@01 r) g@231@01)) (= (inv@337@01 r) r))
  :pattern ((inv@337@01 r))
  :qid |next-fctOfInv|)))
(assert (forall ((r $Ref)) (!
  (=>
    (Set_in (inv@337@01 r) g@231@01)
    ($FVF.loc_next ($FVF.lookup_next (as sm@339@01  $FVF<next>) r) r))
  :pattern ((inv@337@01 r))
  :qid |quant-u-15658|)))
(push) ; 10
(assert (not (forall ((r $Ref)) (!
  (=>
    (and (Set_in (inv@337@01 r) g@231@01) (img@338@01 r) (= r (inv@337@01 r)))
    (>
      (ite
        (and (img@289@01 r) (Set_in (inv@288@01 r) g@231@01))
        $Perm.Write
        $Perm.No)
      $Perm.No))
  
  :qid |quant-u-15659|))))
(check-sat)
; unsat
(pop) ; 10
; 0.00s
; (get-info :all-statistics)
(declare-const sm@340@01 $FVF<next>)
; Definitional axioms for snapshot map domain
(assert (forall ((r $Ref)) (!
  (and
    (=>
      (Set_in r ($FVF.domain_next (as sm@340@01  $FVF<next>)))
      (and (Set_in (inv@337@01 r) g@231@01) (img@338@01 r)))
    (=>
      (and (Set_in (inv@337@01 r) g@231@01) (img@338@01 r))
      (Set_in r ($FVF.domain_next (as sm@340@01  $FVF<next>)))))
  :pattern ((Set_in r ($FVF.domain_next (as sm@340@01  $FVF<next>))))
  :qid |qp.fvfDomDef219|)))
; Definitional axioms for snapshot map values
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and (Set_in (inv@337@01 r) g@231@01) (img@338@01 r))
      (and (img@289@01 r) (Set_in (inv@288@01 r) g@231@01)))
    (=
      ($FVF.lookup_next (as sm@340@01  $FVF<next>) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@285@01))) r)))
  :pattern (($FVF.lookup_next (as sm@340@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@285@01))) r))
  :qid |qp.fvfValDef217|)))
(assert (forall ((r $Ref)) (!
  ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@285@01))) r) r)
  :pattern (($FVF.lookup_next (as sm@340@01  $FVF<next>) r))
  :qid |qp.fvfResTrgDef218|)))
(assert ($$%precondition ($SortWrappers.$FVF<next>To$Snap (as sm@340@01  $FVF<next>)) g@231@01))
(pop) ; 9
; Joined path conditions
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@289@01 r) (Set_in (inv@288@01 r) g@231@01))
    (=
      ($FVF.lookup_next (as sm@339@01  $FVF<next>) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@285@01))) r)))
  :pattern (($FVF.lookup_next (as sm@339@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@285@01))) r))
  :qid |qp.fvfValDef215|)))
(assert (forall ((r $Ref)) (!
  ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@285@01))) r) r)
  :pattern (($FVF.lookup_next (as sm@339@01  $FVF<next>) r))
  :qid |qp.fvfResTrgDef216|)))
(assert (forall ((n@336@01 $Ref)) (!
  (=>
    (Set_in n@336@01 g@231@01)
    (and (= (inv@337@01 n@336@01) n@336@01) (img@338@01 n@336@01)))
  :pattern ((Set_in n@336@01 g@231@01))
  :pattern ((inv@337@01 n@336@01))
  :pattern ((img@338@01 n@336@01))
  :qid |next-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=> (and (img@338@01 r) (Set_in (inv@337@01 r) g@231@01)) (= (inv@337@01 r) r))
  :pattern ((inv@337@01 r))
  :qid |next-fctOfInv|)))
(assert (forall ((r $Ref)) (!
  (and
    (=>
      (Set_in r ($FVF.domain_next (as sm@340@01  $FVF<next>)))
      (and (Set_in (inv@337@01 r) g@231@01) (img@338@01 r)))
    (=>
      (and (Set_in (inv@337@01 r) g@231@01) (img@338@01 r))
      (Set_in r ($FVF.domain_next (as sm@340@01  $FVF<next>)))))
  :pattern ((Set_in r ($FVF.domain_next (as sm@340@01  $FVF<next>))))
  :qid |qp.fvfDomDef219|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and (Set_in (inv@337@01 r) g@231@01) (img@338@01 r))
      (and (img@289@01 r) (Set_in (inv@288@01 r) g@231@01)))
    (=
      ($FVF.lookup_next (as sm@340@01  $FVF<next>) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@285@01))) r)))
  :pattern (($FVF.lookup_next (as sm@340@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@285@01))) r))
  :qid |qp.fvfValDef217|)))
(assert (forall ((r $Ref)) (!
  ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@285@01))) r) r)
  :pattern (($FVF.lookup_next (as sm@340@01  $FVF<next>) r))
  :qid |qp.fvfResTrgDef218|)))
(assert (and
  (forall ((r $Ref)) (!
    (=>
      (Set_in (inv@337@01 r) g@231@01)
      ($FVF.loc_next ($FVF.lookup_next (as sm@339@01  $FVF<next>) r) r))
    :pattern ((inv@337@01 r))
    :qid |quant-u-15658|))
  ($$%precondition ($SortWrappers.$FVF<next>To$Snap (as sm@340@01  $FVF<next>)) g@231@01)))
(push) ; 9
(assert (not (and (img@289@01 last@284@01) (Set_in (inv@288@01 last@284@01) g@231@01))))
(check-sat)
; unsat
(pop) ; 9
; 0.00s
; (get-info :all-statistics)
(push) ; 9
(assert (not (and (img@289@01 last@284@01) (Set_in (inv@288@01 last@284@01) g@231@01))))
(check-sat)
; unsat
(pop) ; 9
; 0.00s
; (get-info :all-statistics)
(pop) ; 8
(pop) ; 7
; Joined path conditions
; Joined path conditions
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@289@01 r) (Set_in (inv@288@01 r) g@231@01))
    (=
      ($FVF.lookup_next (as sm@339@01  $FVF<next>) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@285@01))) r)))
  :pattern (($FVF.lookup_next (as sm@339@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@285@01))) r))
  :qid |qp.fvfValDef215|)))
(assert (forall ((r $Ref)) (!
  ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@285@01))) r) r)
  :pattern (($FVF.lookup_next (as sm@339@01  $FVF<next>) r))
  :qid |qp.fvfResTrgDef216|)))
(assert (forall ((n@336@01 $Ref)) (!
  (=>
    (Set_in n@336@01 g@231@01)
    (and (= (inv@337@01 n@336@01) n@336@01) (img@338@01 n@336@01)))
  :pattern ((Set_in n@336@01 g@231@01))
  :pattern ((inv@337@01 n@336@01))
  :pattern ((img@338@01 n@336@01))
  :qid |next-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=> (and (img@338@01 r) (Set_in (inv@337@01 r) g@231@01)) (= (inv@337@01 r) r))
  :pattern ((inv@337@01 r))
  :qid |next-fctOfInv|)))
(assert (forall ((r $Ref)) (!
  (and
    (=>
      (Set_in r ($FVF.domain_next (as sm@340@01  $FVF<next>)))
      (and (Set_in (inv@337@01 r) g@231@01) (img@338@01 r)))
    (=>
      (and (Set_in (inv@337@01 r) g@231@01) (img@338@01 r))
      (Set_in r ($FVF.domain_next (as sm@340@01  $FVF<next>)))))
  :pattern ((Set_in r ($FVF.domain_next (as sm@340@01  $FVF<next>))))
  :qid |qp.fvfDomDef219|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and (Set_in (inv@337@01 r) g@231@01) (img@338@01 r))
      (and (img@289@01 r) (Set_in (inv@288@01 r) g@231@01)))
    (=
      ($FVF.lookup_next (as sm@340@01  $FVF<next>) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@285@01))) r)))
  :pattern (($FVF.lookup_next (as sm@340@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@285@01))) r))
  :qid |qp.fvfValDef217|)))
(assert (forall ((r $Ref)) (!
  ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@285@01))) r) r)
  :pattern (($FVF.lookup_next (as sm@340@01  $FVF<next>) r))
  :qid |qp.fvfResTrgDef218|)))
(assert (=>
  (edge<Bool> ($$ ($SortWrappers.$FVF<next>To$Snap (as sm@335@01  $FVF<next>)) g@231@01) last@284@01 ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@285@01))) last@284@01))
  (and
    (edge<Bool> ($$ ($SortWrappers.$FVF<next>To$Snap (as sm@335@01  $FVF<next>)) g@231@01) last@284@01 ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@285@01))) last@284@01))
    (forall ((r $Ref)) (!
      (=>
        (Set_in (inv@337@01 r) g@231@01)
        ($FVF.loc_next ($FVF.lookup_next (as sm@339@01  $FVF<next>) r) r))
      :pattern ((inv@337@01 r))
      :qid |quant-u-15658|))
    ($$%precondition ($SortWrappers.$FVF<next>To$Snap (as sm@340@01  $FVF<next>)) g@231@01))))
(assert (or
  (edge<Bool> ($$ ($SortWrappers.$FVF<next>To$Snap (as sm@335@01  $FVF<next>)) g@231@01) last@284@01 ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@285@01))) last@284@01))
  (not
    (edge<Bool> ($$ ($SortWrappers.$FVF<next>To$Snap (as sm@335@01  $FVF<next>)) g@231@01) last@284@01 ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@285@01))) last@284@01)))))
(push) ; 7
(push) ; 8
(set-option :timeout 10)
(assert (not (not
  (and
    (edge<Bool> ($$ ($SortWrappers.$FVF<next>To$Snap (as sm@335@01  $FVF<next>)) g@231@01) last@284@01 ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@285@01))) last@284@01))
    (exists_path<Bool> ($$ ($SortWrappers.$FVF<next>To$Snap (as sm@340@01  $FVF<next>)) g@231@01) ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@285@01))) last@284@01) ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@285@01))) last@284@01))))))
(check-sat)
; unknown
(pop) ; 8
; 0.01s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 8
(set-option :timeout 10)
(assert (not (and
  (edge<Bool> ($$ ($SortWrappers.$FVF<next>To$Snap (as sm@335@01  $FVF<next>)) g@231@01) last@284@01 ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@285@01))) last@284@01))
  (exists_path<Bool> ($$ ($SortWrappers.$FVF<next>To$Snap (as sm@340@01  $FVF<next>)) g@231@01) ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@285@01))) last@284@01) ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@285@01))) last@284@01)))))
(check-sat)
; unknown
(pop) ; 8
; 0.01s
; (get-info :all-statistics)
; [then-branch: 46 | edge[Bool]($$(sm@335@01, g@231@01), last@284@01, Lookup(next, First:(Second:($t@285@01)), last@284@01)) && exists_path[Bool]($$(sm@340@01, g@231@01), Lookup(next, First:(Second:($t@285@01)), last@284@01), Lookup(next, First:(Second:($t@285@01)), last@284@01)) | live]
; [else-branch: 46 | !(edge[Bool]($$(sm@335@01, g@231@01), last@284@01, Lookup(next, First:(Second:($t@285@01)), last@284@01)) && exists_path[Bool]($$(sm@340@01, g@231@01), Lookup(next, First:(Second:($t@285@01)), last@284@01), Lookup(next, First:(Second:($t@285@01)), last@284@01))) | live]
(set-option :timeout 0)
(push) ; 8
; [then-branch: 46 | edge[Bool]($$(sm@335@01, g@231@01), last@284@01, Lookup(next, First:(Second:($t@285@01)), last@284@01)) && exists_path[Bool]($$(sm@340@01, g@231@01), Lookup(next, First:(Second:($t@285@01)), last@284@01), Lookup(next, First:(Second:($t@285@01)), last@284@01))]
(assert (and
  (edge<Bool> ($$ ($SortWrappers.$FVF<next>To$Snap (as sm@335@01  $FVF<next>)) g@231@01) last@284@01 ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@285@01))) last@284@01))
  (exists_path<Bool> ($$ ($SortWrappers.$FVF<next>To$Snap (as sm@340@01  $FVF<next>)) g@231@01) ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@285@01))) last@284@01) ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@285@01))) last@284@01))))
; [eval] exists_path($$(g), last, last.next)
; [eval] $$(g)
(push) ; 9
(declare-const n@341@01 $Ref)
(push) ; 10
; [eval] (n in refs)
(assert (Set_in n@341@01 g@231@01))
(pop) ; 10
(declare-fun inv@342@01 ($Ref) $Ref)
(declare-fun img@343@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
(declare-const sm@344@01 $FVF<next>)
; Definitional axioms for snapshot map domain
; Definitional axioms for snapshot map values
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@289@01 r) (Set_in (inv@288@01 r) g@231@01))
    (=
      ($FVF.lookup_next (as sm@344@01  $FVF<next>) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@285@01))) r)))
  :pattern (($FVF.lookup_next (as sm@344@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@285@01))) r))
  :qid |qp.fvfValDef220|)))
(assert (forall ((r $Ref)) (!
  ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@285@01))) r) r)
  :pattern (($FVF.lookup_next (as sm@344@01  $FVF<next>) r))
  :qid |qp.fvfResTrgDef221|)))
; Check receiver injectivity
(push) ; 10
(assert (not (forall ((n1@341@01 $Ref) (n2@341@01 $Ref)) (!
  (=>
    (and
      (and
        (Set_in n1@341@01 g@231@01)
        ($FVF.loc_next ($FVF.lookup_next (as sm@344@01  $FVF<next>) n1@341@01) n1@341@01))
      (and
        (Set_in n2@341@01 g@231@01)
        ($FVF.loc_next ($FVF.lookup_next (as sm@344@01  $FVF<next>) n2@341@01) n2@341@01))
      (= n1@341@01 n2@341@01))
    (= n1@341@01 n2@341@01))
  
  :qid |next-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 10
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((n@341@01 $Ref)) (!
  (=>
    (Set_in n@341@01 g@231@01)
    (and (= (inv@342@01 n@341@01) n@341@01) (img@343@01 n@341@01)))
  :pattern ((Set_in n@341@01 g@231@01))
  :pattern ((inv@342@01 n@341@01))
  :pattern ((img@343@01 n@341@01))
  :qid |next-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=> (and (img@343@01 r) (Set_in (inv@342@01 r) g@231@01)) (= (inv@342@01 r) r))
  :pattern ((inv@342@01 r))
  :qid |next-fctOfInv|)))
(assert (forall ((r $Ref)) (!
  (=>
    (Set_in (inv@342@01 r) g@231@01)
    ($FVF.loc_next ($FVF.lookup_next (as sm@344@01  $FVF<next>) r) r))
  :pattern ((inv@342@01 r))
  :qid |quant-u-15661|)))
(push) ; 10
(assert (not (forall ((r $Ref)) (!
  (=>
    (and (Set_in (inv@342@01 r) g@231@01) (img@343@01 r) (= r (inv@342@01 r)))
    (>
      (ite
        (and (img@289@01 r) (Set_in (inv@288@01 r) g@231@01))
        $Perm.Write
        $Perm.No)
      $Perm.No))
  
  :qid |quant-u-15662|))))
(check-sat)
; unsat
(pop) ; 10
; 0.00s
; (get-info :all-statistics)
(declare-const sm@345@01 $FVF<next>)
; Definitional axioms for snapshot map domain
(assert (forall ((r $Ref)) (!
  (and
    (=>
      (Set_in r ($FVF.domain_next (as sm@345@01  $FVF<next>)))
      (and (Set_in (inv@342@01 r) g@231@01) (img@343@01 r)))
    (=>
      (and (Set_in (inv@342@01 r) g@231@01) (img@343@01 r))
      (Set_in r ($FVF.domain_next (as sm@345@01  $FVF<next>)))))
  :pattern ((Set_in r ($FVF.domain_next (as sm@345@01  $FVF<next>))))
  :qid |qp.fvfDomDef224|)))
; Definitional axioms for snapshot map values
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and (Set_in (inv@342@01 r) g@231@01) (img@343@01 r))
      (and (img@289@01 r) (Set_in (inv@288@01 r) g@231@01)))
    (=
      ($FVF.lookup_next (as sm@345@01  $FVF<next>) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@285@01))) r)))
  :pattern (($FVF.lookup_next (as sm@345@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@285@01))) r))
  :qid |qp.fvfValDef222|)))
(assert (forall ((r $Ref)) (!
  ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@285@01))) r) r)
  :pattern (($FVF.lookup_next (as sm@345@01  $FVF<next>) r))
  :qid |qp.fvfResTrgDef223|)))
(assert ($$%precondition ($SortWrappers.$FVF<next>To$Snap (as sm@345@01  $FVF<next>)) g@231@01))
(pop) ; 9
; Joined path conditions
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@289@01 r) (Set_in (inv@288@01 r) g@231@01))
    (=
      ($FVF.lookup_next (as sm@344@01  $FVF<next>) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@285@01))) r)))
  :pattern (($FVF.lookup_next (as sm@344@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@285@01))) r))
  :qid |qp.fvfValDef220|)))
(assert (forall ((r $Ref)) (!
  ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@285@01))) r) r)
  :pattern (($FVF.lookup_next (as sm@344@01  $FVF<next>) r))
  :qid |qp.fvfResTrgDef221|)))
(assert (forall ((n@341@01 $Ref)) (!
  (=>
    (Set_in n@341@01 g@231@01)
    (and (= (inv@342@01 n@341@01) n@341@01) (img@343@01 n@341@01)))
  :pattern ((Set_in n@341@01 g@231@01))
  :pattern ((inv@342@01 n@341@01))
  :pattern ((img@343@01 n@341@01))
  :qid |next-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=> (and (img@343@01 r) (Set_in (inv@342@01 r) g@231@01)) (= (inv@342@01 r) r))
  :pattern ((inv@342@01 r))
  :qid |next-fctOfInv|)))
(assert (forall ((r $Ref)) (!
  (and
    (=>
      (Set_in r ($FVF.domain_next (as sm@345@01  $FVF<next>)))
      (and (Set_in (inv@342@01 r) g@231@01) (img@343@01 r)))
    (=>
      (and (Set_in (inv@342@01 r) g@231@01) (img@343@01 r))
      (Set_in r ($FVF.domain_next (as sm@345@01  $FVF<next>)))))
  :pattern ((Set_in r ($FVF.domain_next (as sm@345@01  $FVF<next>))))
  :qid |qp.fvfDomDef224|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and (Set_in (inv@342@01 r) g@231@01) (img@343@01 r))
      (and (img@289@01 r) (Set_in (inv@288@01 r) g@231@01)))
    (=
      ($FVF.lookup_next (as sm@345@01  $FVF<next>) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@285@01))) r)))
  :pattern (($FVF.lookup_next (as sm@345@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@285@01))) r))
  :qid |qp.fvfValDef222|)))
(assert (forall ((r $Ref)) (!
  ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@285@01))) r) r)
  :pattern (($FVF.lookup_next (as sm@345@01  $FVF<next>) r))
  :qid |qp.fvfResTrgDef223|)))
(assert (and
  (forall ((r $Ref)) (!
    (=>
      (Set_in (inv@342@01 r) g@231@01)
      ($FVF.loc_next ($FVF.lookup_next (as sm@344@01  $FVF<next>) r) r))
    :pattern ((inv@342@01 r))
    :qid |quant-u-15661|))
  ($$%precondition ($SortWrappers.$FVF<next>To$Snap (as sm@345@01  $FVF<next>)) g@231@01)))
(push) ; 9
(assert (not (and (img@289@01 last@284@01) (Set_in (inv@288@01 last@284@01) g@231@01))))
(check-sat)
; unsat
(pop) ; 9
; 0.00s
; (get-info :all-statistics)
(pop) ; 8
(push) ; 8
; [else-branch: 46 | !(edge[Bool]($$(sm@335@01, g@231@01), last@284@01, Lookup(next, First:(Second:($t@285@01)), last@284@01)) && exists_path[Bool]($$(sm@340@01, g@231@01), Lookup(next, First:(Second:($t@285@01)), last@284@01), Lookup(next, First:(Second:($t@285@01)), last@284@01)))]
(assert (not
  (and
    (edge<Bool> ($$ ($SortWrappers.$FVF<next>To$Snap (as sm@335@01  $FVF<next>)) g@231@01) last@284@01 ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@285@01))) last@284@01))
    (exists_path<Bool> ($$ ($SortWrappers.$FVF<next>To$Snap (as sm@340@01  $FVF<next>)) g@231@01) ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@285@01))) last@284@01) ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@285@01))) last@284@01)))))
(pop) ; 8
(pop) ; 7
; Joined path conditions
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@289@01 r) (Set_in (inv@288@01 r) g@231@01))
    (=
      ($FVF.lookup_next (as sm@344@01  $FVF<next>) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@285@01))) r)))
  :pattern (($FVF.lookup_next (as sm@344@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@285@01))) r))
  :qid |qp.fvfValDef220|)))
(assert (forall ((r $Ref)) (!
  ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@285@01))) r) r)
  :pattern (($FVF.lookup_next (as sm@344@01  $FVF<next>) r))
  :qid |qp.fvfResTrgDef221|)))
(assert (forall ((n@341@01 $Ref)) (!
  (=>
    (Set_in n@341@01 g@231@01)
    (and (= (inv@342@01 n@341@01) n@341@01) (img@343@01 n@341@01)))
  :pattern ((Set_in n@341@01 g@231@01))
  :pattern ((inv@342@01 n@341@01))
  :pattern ((img@343@01 n@341@01))
  :qid |next-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=> (and (img@343@01 r) (Set_in (inv@342@01 r) g@231@01)) (= (inv@342@01 r) r))
  :pattern ((inv@342@01 r))
  :qid |next-fctOfInv|)))
(assert (forall ((r $Ref)) (!
  (and
    (=>
      (Set_in r ($FVF.domain_next (as sm@345@01  $FVF<next>)))
      (and (Set_in (inv@342@01 r) g@231@01) (img@343@01 r)))
    (=>
      (and (Set_in (inv@342@01 r) g@231@01) (img@343@01 r))
      (Set_in r ($FVF.domain_next (as sm@345@01  $FVF<next>)))))
  :pattern ((Set_in r ($FVF.domain_next (as sm@345@01  $FVF<next>))))
  :qid |qp.fvfDomDef224|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and (Set_in (inv@342@01 r) g@231@01) (img@343@01 r))
      (and (img@289@01 r) (Set_in (inv@288@01 r) g@231@01)))
    (=
      ($FVF.lookup_next (as sm@345@01  $FVF<next>) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@285@01))) r)))
  :pattern (($FVF.lookup_next (as sm@345@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@285@01))) r))
  :qid |qp.fvfValDef222|)))
(assert (forall ((r $Ref)) (!
  ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@285@01))) r) r)
  :pattern (($FVF.lookup_next (as sm@345@01  $FVF<next>) r))
  :qid |qp.fvfResTrgDef223|)))
(assert (=>
  (and
    (edge<Bool> ($$ ($SortWrappers.$FVF<next>To$Snap (as sm@335@01  $FVF<next>)) g@231@01) last@284@01 ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@285@01))) last@284@01))
    (exists_path<Bool> ($$ ($SortWrappers.$FVF<next>To$Snap (as sm@340@01  $FVF<next>)) g@231@01) ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@285@01))) last@284@01) ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@285@01))) last@284@01)))
  (and
    (edge<Bool> ($$ ($SortWrappers.$FVF<next>To$Snap (as sm@335@01  $FVF<next>)) g@231@01) last@284@01 ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@285@01))) last@284@01))
    (exists_path<Bool> ($$ ($SortWrappers.$FVF<next>To$Snap (as sm@340@01  $FVF<next>)) g@231@01) ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@285@01))) last@284@01) ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@285@01))) last@284@01))
    (forall ((r $Ref)) (!
      (=>
        (Set_in (inv@342@01 r) g@231@01)
        ($FVF.loc_next ($FVF.lookup_next (as sm@344@01  $FVF<next>) r) r))
      :pattern ((inv@342@01 r))
      :qid |quant-u-15661|))
    ($$%precondition ($SortWrappers.$FVF<next>To$Snap (as sm@345@01  $FVF<next>)) g@231@01))))
; Joined path conditions
(assert (or
  (not
    (and
      (edge<Bool> ($$ ($SortWrappers.$FVF<next>To$Snap (as sm@335@01  $FVF<next>)) g@231@01) last@284@01 ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@285@01))) last@284@01))
      (exists_path<Bool> ($$ ($SortWrappers.$FVF<next>To$Snap (as sm@340@01  $FVF<next>)) g@231@01) ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@285@01))) last@284@01) ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@285@01))) last@284@01))))
  (and
    (edge<Bool> ($$ ($SortWrappers.$FVF<next>To$Snap (as sm@335@01  $FVF<next>)) g@231@01) last@284@01 ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@285@01))) last@284@01))
    (exists_path<Bool> ($$ ($SortWrappers.$FVF<next>To$Snap (as sm@340@01  $FVF<next>)) g@231@01) ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@285@01))) last@284@01) ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@285@01))) last@284@01)))))
(pop) ; 6
(push) ; 6
; [else-branch: 44 | Lookup(next, First:(Second:($t@285@01)), last@284@01) == Null]
(assert (=
  ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@285@01))) last@284@01)
  $Ref.null))
(pop) ; 6
(pop) ; 5
; Joined path conditions
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@289@01 r) (Set_in (inv@288@01 r) g@231@01))
    (=
      ($FVF.lookup_next (as sm@334@01  $FVF<next>) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@285@01))) r)))
  :pattern (($FVF.lookup_next (as sm@334@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@285@01))) r))
  :qid |qp.fvfValDef210|)))
(assert (forall ((r $Ref)) (!
  ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@285@01))) r) r)
  :pattern (($FVF.lookup_next (as sm@334@01  $FVF<next>) r))
  :qid |qp.fvfResTrgDef211|)))
(assert (forall ((n@331@01 $Ref)) (!
  (=>
    (Set_in n@331@01 g@231@01)
    (and (= (inv@332@01 n@331@01) n@331@01) (img@333@01 n@331@01)))
  :pattern ((Set_in n@331@01 g@231@01))
  :pattern ((inv@332@01 n@331@01))
  :pattern ((img@333@01 n@331@01))
  :qid |next-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=> (and (img@333@01 r) (Set_in (inv@332@01 r) g@231@01)) (= (inv@332@01 r) r))
  :pattern ((inv@332@01 r))
  :qid |next-fctOfInv|)))
(assert (forall ((r $Ref)) (!
  (and
    (=>
      (Set_in r ($FVF.domain_next (as sm@335@01  $FVF<next>)))
      (and (Set_in (inv@332@01 r) g@231@01) (img@333@01 r)))
    (=>
      (and (Set_in (inv@332@01 r) g@231@01) (img@333@01 r))
      (Set_in r ($FVF.domain_next (as sm@335@01  $FVF<next>)))))
  :pattern ((Set_in r ($FVF.domain_next (as sm@335@01  $FVF<next>))))
  :qid |qp.fvfDomDef214|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and (Set_in (inv@332@01 r) g@231@01) (img@333@01 r))
      (and (img@289@01 r) (Set_in (inv@288@01 r) g@231@01)))
    (=
      ($FVF.lookup_next (as sm@335@01  $FVF<next>) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@285@01))) r)))
  :pattern (($FVF.lookup_next (as sm@335@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@285@01))) r))
  :qid |qp.fvfValDef212|)))
(assert (forall ((r $Ref)) (!
  ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@285@01))) r) r)
  :pattern (($FVF.lookup_next (as sm@335@01  $FVF<next>) r))
  :qid |qp.fvfResTrgDef213|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@289@01 r) (Set_in (inv@288@01 r) g@231@01))
    (=
      ($FVF.lookup_next (as sm@339@01  $FVF<next>) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@285@01))) r)))
  :pattern (($FVF.lookup_next (as sm@339@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@285@01))) r))
  :qid |qp.fvfValDef215|)))
(assert (forall ((r $Ref)) (!
  ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@285@01))) r) r)
  :pattern (($FVF.lookup_next (as sm@339@01  $FVF<next>) r))
  :qid |qp.fvfResTrgDef216|)))
(assert (forall ((n@336@01 $Ref)) (!
  (=>
    (Set_in n@336@01 g@231@01)
    (and (= (inv@337@01 n@336@01) n@336@01) (img@338@01 n@336@01)))
  :pattern ((Set_in n@336@01 g@231@01))
  :pattern ((inv@337@01 n@336@01))
  :pattern ((img@338@01 n@336@01))
  :qid |next-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=> (and (img@338@01 r) (Set_in (inv@337@01 r) g@231@01)) (= (inv@337@01 r) r))
  :pattern ((inv@337@01 r))
  :qid |next-fctOfInv|)))
(assert (forall ((r $Ref)) (!
  (and
    (=>
      (Set_in r ($FVF.domain_next (as sm@340@01  $FVF<next>)))
      (and (Set_in (inv@337@01 r) g@231@01) (img@338@01 r)))
    (=>
      (and (Set_in (inv@337@01 r) g@231@01) (img@338@01 r))
      (Set_in r ($FVF.domain_next (as sm@340@01  $FVF<next>)))))
  :pattern ((Set_in r ($FVF.domain_next (as sm@340@01  $FVF<next>))))
  :qid |qp.fvfDomDef219|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and (Set_in (inv@337@01 r) g@231@01) (img@338@01 r))
      (and (img@289@01 r) (Set_in (inv@288@01 r) g@231@01)))
    (=
      ($FVF.lookup_next (as sm@340@01  $FVF<next>) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@285@01))) r)))
  :pattern (($FVF.lookup_next (as sm@340@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@285@01))) r))
  :qid |qp.fvfValDef217|)))
(assert (forall ((r $Ref)) (!
  ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@285@01))) r) r)
  :pattern (($FVF.lookup_next (as sm@340@01  $FVF<next>) r))
  :qid |qp.fvfResTrgDef218|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@289@01 r) (Set_in (inv@288@01 r) g@231@01))
    (=
      ($FVF.lookup_next (as sm@344@01  $FVF<next>) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@285@01))) r)))
  :pattern (($FVF.lookup_next (as sm@344@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@285@01))) r))
  :qid |qp.fvfValDef220|)))
(assert (forall ((r $Ref)) (!
  ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@285@01))) r) r)
  :pattern (($FVF.lookup_next (as sm@344@01  $FVF<next>) r))
  :qid |qp.fvfResTrgDef221|)))
(assert (forall ((n@341@01 $Ref)) (!
  (=>
    (Set_in n@341@01 g@231@01)
    (and (= (inv@342@01 n@341@01) n@341@01) (img@343@01 n@341@01)))
  :pattern ((Set_in n@341@01 g@231@01))
  :pattern ((inv@342@01 n@341@01))
  :pattern ((img@343@01 n@341@01))
  :qid |next-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=> (and (img@343@01 r) (Set_in (inv@342@01 r) g@231@01)) (= (inv@342@01 r) r))
  :pattern ((inv@342@01 r))
  :qid |next-fctOfInv|)))
(assert (forall ((r $Ref)) (!
  (and
    (=>
      (Set_in r ($FVF.domain_next (as sm@345@01  $FVF<next>)))
      (and (Set_in (inv@342@01 r) g@231@01) (img@343@01 r)))
    (=>
      (and (Set_in (inv@342@01 r) g@231@01) (img@343@01 r))
      (Set_in r ($FVF.domain_next (as sm@345@01  $FVF<next>)))))
  :pattern ((Set_in r ($FVF.domain_next (as sm@345@01  $FVF<next>))))
  :qid |qp.fvfDomDef224|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and (Set_in (inv@342@01 r) g@231@01) (img@343@01 r))
      (and (img@289@01 r) (Set_in (inv@288@01 r) g@231@01)))
    (=
      ($FVF.lookup_next (as sm@345@01  $FVF<next>) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@285@01))) r)))
  :pattern (($FVF.lookup_next (as sm@345@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@285@01))) r))
  :qid |qp.fvfValDef222|)))
(assert (forall ((r $Ref)) (!
  ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@285@01))) r) r)
  :pattern (($FVF.lookup_next (as sm@345@01  $FVF<next>) r))
  :qid |qp.fvfResTrgDef223|)))
(assert (=>
  (not
    (=
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@285@01))) last@284@01)
      $Ref.null))
  (and
    (not
      (=
        ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@285@01))) last@284@01)
        $Ref.null))
    (forall ((r $Ref)) (!
      (=>
        (Set_in (inv@332@01 r) g@231@01)
        ($FVF.loc_next ($FVF.lookup_next (as sm@334@01  $FVF<next>) r) r))
      :pattern ((inv@332@01 r))
      :qid |quant-u-15655|))
    ($$%precondition ($SortWrappers.$FVF<next>To$Snap (as sm@335@01  $FVF<next>)) g@231@01)
    (=>
      (edge<Bool> ($$ ($SortWrappers.$FVF<next>To$Snap (as sm@335@01  $FVF<next>)) g@231@01) last@284@01 ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@285@01))) last@284@01))
      (and
        (edge<Bool> ($$ ($SortWrappers.$FVF<next>To$Snap (as sm@335@01  $FVF<next>)) g@231@01) last@284@01 ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@285@01))) last@284@01))
        (forall ((r $Ref)) (!
          (=>
            (Set_in (inv@337@01 r) g@231@01)
            ($FVF.loc_next ($FVF.lookup_next (as sm@339@01  $FVF<next>) r) r))
          :pattern ((inv@337@01 r))
          :qid |quant-u-15658|))
        ($$%precondition ($SortWrappers.$FVF<next>To$Snap (as sm@340@01  $FVF<next>)) g@231@01)))
    (or
      (edge<Bool> ($$ ($SortWrappers.$FVF<next>To$Snap (as sm@335@01  $FVF<next>)) g@231@01) last@284@01 ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@285@01))) last@284@01))
      (not
        (edge<Bool> ($$ ($SortWrappers.$FVF<next>To$Snap (as sm@335@01  $FVF<next>)) g@231@01) last@284@01 ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@285@01))) last@284@01))))
    (=>
      (and
        (edge<Bool> ($$ ($SortWrappers.$FVF<next>To$Snap (as sm@335@01  $FVF<next>)) g@231@01) last@284@01 ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@285@01))) last@284@01))
        (exists_path<Bool> ($$ ($SortWrappers.$FVF<next>To$Snap (as sm@340@01  $FVF<next>)) g@231@01) ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@285@01))) last@284@01) ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@285@01))) last@284@01)))
      (and
        (edge<Bool> ($$ ($SortWrappers.$FVF<next>To$Snap (as sm@335@01  $FVF<next>)) g@231@01) last@284@01 ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@285@01))) last@284@01))
        (exists_path<Bool> ($$ ($SortWrappers.$FVF<next>To$Snap (as sm@340@01  $FVF<next>)) g@231@01) ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@285@01))) last@284@01) ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@285@01))) last@284@01))
        (forall ((r $Ref)) (!
          (=>
            (Set_in (inv@342@01 r) g@231@01)
            ($FVF.loc_next ($FVF.lookup_next (as sm@344@01  $FVF<next>) r) r))
          :pattern ((inv@342@01 r))
          :qid |quant-u-15661|))
        ($$%precondition ($SortWrappers.$FVF<next>To$Snap (as sm@345@01  $FVF<next>)) g@231@01)))
    (or
      (not
        (and
          (edge<Bool> ($$ ($SortWrappers.$FVF<next>To$Snap (as sm@335@01  $FVF<next>)) g@231@01) last@284@01 ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@285@01))) last@284@01))
          (exists_path<Bool> ($$ ($SortWrappers.$FVF<next>To$Snap (as sm@340@01  $FVF<next>)) g@231@01) ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@285@01))) last@284@01) ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@285@01))) last@284@01))))
      (and
        (edge<Bool> ($$ ($SortWrappers.$FVF<next>To$Snap (as sm@335@01  $FVF<next>)) g@231@01) last@284@01 ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@285@01))) last@284@01))
        (exists_path<Bool> ($$ ($SortWrappers.$FVF<next>To$Snap (as sm@340@01  $FVF<next>)) g@231@01) ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@285@01))) last@284@01) ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@285@01))) last@284@01)))))))
; Joined path conditions
(assert (or
  (=
    ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@285@01))) last@284@01)
    $Ref.null)
  (not
    (=
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@285@01))) last@284@01)
      $Ref.null))))
(assert (=>
  (and
    (not
      (=
        ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@285@01))) last@284@01)
        $Ref.null))
    (and
      (edge<Bool> ($$ ($SortWrappers.$FVF<next>To$Snap (as sm@335@01  $FVF<next>)) g@231@01) last@284@01 ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@285@01))) last@284@01))
      (exists_path<Bool> ($$ ($SortWrappers.$FVF<next>To$Snap (as sm@340@01  $FVF<next>)) g@231@01) ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@285@01))) last@284@01) ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@285@01))) last@284@01))))
  (exists_path<Bool> ($$ ($SortWrappers.$FVF<next>To$Snap (as sm@345@01  $FVF<next>)) g@231@01) last@284@01 ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@285@01))) last@284@01))))
(pop) ; 4
(push) ; 4
; Loop head block: Establish invariant
; [eval] !((null in g))
; [eval] (null in g)
(declare-const n$1@346@01 $Ref)
(push) ; 5
; [eval] (n$1 in g)
(assert (Set_in n$1@346@01 g@231@01))
(declare-const sm@347@01 $FVF<next>)
; Definitional axioms for snapshot map values
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@240@01 r) (Set_in (inv@239@01 r) g@231@01))
    (=
      ($FVF.lookup_next (as sm@347@01  $FVF<next>) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@236@01))) r)))
  :pattern (($FVF.lookup_next (as sm@347@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@236@01))) r))
  :qid |qp.fvfValDef225|)))
(assert (forall ((r $Ref)) (!
  ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@236@01))) r) r)
  :pattern (($FVF.lookup_next (as sm@347@01  $FVF<next>) r))
  :qid |qp.fvfResTrgDef226|)))
(pop) ; 5
(declare-fun inv@348@01 ($Ref) $Ref)
(declare-fun img@349@01 ($Ref) Bool)
; Nested auxiliary terms: globals
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@240@01 r) (Set_in (inv@239@01 r) g@231@01))
    (=
      ($FVF.lookup_next (as sm@347@01  $FVF<next>) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@236@01))) r)))
  :pattern (($FVF.lookup_next (as sm@347@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@236@01))) r))
  :qid |qp.fvfValDef225|)))
(assert (forall ((r $Ref)) (!
  ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@236@01))) r) r)
  :pattern (($FVF.lookup_next (as sm@347@01  $FVF<next>) r))
  :qid |qp.fvfResTrgDef226|)))
; Nested auxiliary terms: non-globals
(declare-const sm@350@01 $FVF<next>)
; Definitional axioms for snapshot map values
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@240@01 r) (Set_in (inv@239@01 r) g@231@01))
    (=
      ($FVF.lookup_next (as sm@350@01  $FVF<next>) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@236@01))) r)))
  :pattern (($FVF.lookup_next (as sm@350@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@236@01))) r))
  :qid |qp.fvfValDef227|)))
(assert (forall ((r $Ref)) (!
  ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@236@01))) r) r)
  :pattern (($FVF.lookup_next (as sm@350@01  $FVF<next>) r))
  :qid |qp.fvfResTrgDef228|)))
; Check receiver injectivity
(push) ; 5
(assert (not (forall ((n$11@346@01 $Ref) (n$12@346@01 $Ref)) (!
  (=>
    (and
      (and
        (Set_in n$11@346@01 g@231@01)
        ($FVF.loc_next ($FVF.lookup_next (as sm@350@01  $FVF<next>) n$11@346@01) n$11@346@01))
      (and
        (Set_in n$12@346@01 g@231@01)
        ($FVF.loc_next ($FVF.lookup_next (as sm@350@01  $FVF<next>) n$12@346@01) n$12@346@01))
      (= n$11@346@01 n$12@346@01))
    (= n$11@346@01 n$12@346@01))
  
  :qid |next-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((n$1@346@01 $Ref)) (!
  (=>
    (Set_in n$1@346@01 g@231@01)
    (and (= (inv@348@01 n$1@346@01) n$1@346@01) (img@349@01 n$1@346@01)))
  :pattern (($FVF.loc_next ($FVF.lookup_next (as sm@347@01  $FVF<next>) n$1@346@01) n$1@346@01))
  :qid |next-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=> (and (img@349@01 r) (Set_in (inv@348@01 r) g@231@01)) (= (inv@348@01 r) r))
  :pattern ((inv@348@01 r))
  :qid |next-fctOfInv|)))
(assert (forall ((r $Ref)) (!
  (=>
    (Set_in (inv@348@01 r) g@231@01)
    ($FVF.loc_next ($FVF.lookup_next (as sm@350@01  $FVF<next>) r) r))
  :pattern ((inv@348@01 r))
  :qid |quant-u-15664|)))
; Precomputing data for removing quantified permissions
(define-fun pTaken@351@01 ((r $Ref)) $Perm
  (ite
    (and (Set_in (inv@348@01 r) g@231@01) (img@349@01 r) (= r (inv@348@01 r)))
    ($Perm.min
      (ite
        (and (img@240@01 r) (Set_in (inv@239@01 r) g@231@01))
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
(push) ; 5
(set-option :timeout 500)
(assert (not (forall ((r $Ref)) (!
  (=
    (-
      (ite
        (and (img@240@01 r) (Set_in (inv@239@01 r) g@231@01))
        $Perm.Write
        $Perm.No)
      (pTaken@351@01 r))
    $Perm.No)
  
  :qid |quant-u-15666|))))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
; Intermediate check if already taken enough permissions
(set-option :timeout 0)
(push) ; 5
(set-option :timeout 500)
(assert (not (forall ((r $Ref)) (!
  (=>
    (and (Set_in (inv@348@01 r) g@231@01) (img@349@01 r) (= r (inv@348@01 r)))
    (= (- $Perm.Write (pTaken@351@01 r)) $Perm.No))
  
  :qid |quant-u-15667|))))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
; Final check if taken enough permissions
; Done removing quantified permissions
; [eval] (forall n$2: Ref :: { (n$2.next in g) } { (n$2 in g), n$2.next } (n$2 in g) && n$2.next != null ==> (n$2.next in g))
(declare-const n$2@352@01 $Ref)
(set-option :timeout 0)
(push) ; 5
; [eval] (n$2 in g) && n$2.next != null ==> (n$2.next in g)
; [eval] (n$2 in g) && n$2.next != null
; [eval] (n$2 in g)
(push) ; 6
; [then-branch: 47 | !(n$2@352@01 in g@231@01) | live]
; [else-branch: 47 | n$2@352@01 in g@231@01 | live]
(push) ; 7
; [then-branch: 47 | !(n$2@352@01 in g@231@01)]
(assert (not (Set_in n$2@352@01 g@231@01)))
(pop) ; 7
(push) ; 7
; [else-branch: 47 | n$2@352@01 in g@231@01]
(assert (Set_in n$2@352@01 g@231@01))
; [eval] n$2.next != null
(assert (and
  (forall ((r $Ref)) (!
    (=>
      (and (img@240@01 r) (Set_in (inv@239@01 r) g@231@01))
      (=
        ($FVF.lookup_next (as sm@350@01  $FVF<next>) r)
        ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@236@01))) r)))
    :pattern (($FVF.lookup_next (as sm@350@01  $FVF<next>) r))
    :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@236@01))) r))
    :qid |qp.fvfValDef227|))
  (forall ((r $Ref)) (!
    ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@236@01))) r) r)
    :pattern (($FVF.lookup_next (as sm@350@01  $FVF<next>) r))
    :qid |qp.fvfResTrgDef228|))))
(assert ($FVF.loc_next ($FVF.lookup_next (as sm@350@01  $FVF<next>) n$2@352@01) n$2@352@01))
(push) ; 8
(assert (not (and (img@240@01 n$2@352@01) (Set_in (inv@239@01 n$2@352@01) g@231@01))))
(check-sat)
; unsat
(pop) ; 8
; 0.00s
; (get-info :all-statistics)
(pop) ; 7
(pop) ; 6
; Joined path conditions
; Joined path conditions
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@240@01 r) (Set_in (inv@239@01 r) g@231@01))
    (=
      ($FVF.lookup_next (as sm@350@01  $FVF<next>) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@236@01))) r)))
  :pattern (($FVF.lookup_next (as sm@350@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@236@01))) r))
  :qid |qp.fvfValDef227|)))
(assert (forall ((r $Ref)) (!
  ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@236@01))) r) r)
  :pattern (($FVF.lookup_next (as sm@350@01  $FVF<next>) r))
  :qid |qp.fvfResTrgDef228|)))
(assert (=>
  (Set_in n$2@352@01 g@231@01)
  (and
    (Set_in n$2@352@01 g@231@01)
    ($FVF.loc_next ($FVF.lookup_next (as sm@350@01  $FVF<next>) n$2@352@01) n$2@352@01))))
(assert (or (Set_in n$2@352@01 g@231@01) (not (Set_in n$2@352@01 g@231@01))))
(push) ; 6
; [then-branch: 48 | n$2@352@01 in g@231@01 && Lookup(next, sm@350@01, n$2@352@01) != Null | live]
; [else-branch: 48 | !(n$2@352@01 in g@231@01 && Lookup(next, sm@350@01, n$2@352@01) != Null) | live]
(push) ; 7
; [then-branch: 48 | n$2@352@01 in g@231@01 && Lookup(next, sm@350@01, n$2@352@01) != Null]
(assert (and
  (Set_in n$2@352@01 g@231@01)
  (not (= ($FVF.lookup_next (as sm@350@01  $FVF<next>) n$2@352@01) $Ref.null))))
; [eval] (n$2.next in g)
(assert (and
  (forall ((r $Ref)) (!
    (=>
      (and (img@240@01 r) (Set_in (inv@239@01 r) g@231@01))
      (=
        ($FVF.lookup_next (as sm@350@01  $FVF<next>) r)
        ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@236@01))) r)))
    :pattern (($FVF.lookup_next (as sm@350@01  $FVF<next>) r))
    :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@236@01))) r))
    :qid |qp.fvfValDef227|))
  (forall ((r $Ref)) (!
    ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@236@01))) r) r)
    :pattern (($FVF.lookup_next (as sm@350@01  $FVF<next>) r))
    :qid |qp.fvfResTrgDef228|))))
(assert ($FVF.loc_next ($FVF.lookup_next (as sm@350@01  $FVF<next>) n$2@352@01) n$2@352@01))
(push) ; 8
(assert (not (and (img@240@01 n$2@352@01) (Set_in (inv@239@01 n$2@352@01) g@231@01))))
(check-sat)
; unsat
(pop) ; 8
; 0.00s
; (get-info :all-statistics)
(pop) ; 7
(push) ; 7
; [else-branch: 48 | !(n$2@352@01 in g@231@01 && Lookup(next, sm@350@01, n$2@352@01) != Null)]
(assert (not
  (and
    (Set_in n$2@352@01 g@231@01)
    (not (= ($FVF.lookup_next (as sm@350@01  $FVF<next>) n$2@352@01) $Ref.null)))))
(pop) ; 7
(pop) ; 6
; Joined path conditions
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@240@01 r) (Set_in (inv@239@01 r) g@231@01))
    (=
      ($FVF.lookup_next (as sm@350@01  $FVF<next>) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@236@01))) r)))
  :pattern (($FVF.lookup_next (as sm@350@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@236@01))) r))
  :qid |qp.fvfValDef227|)))
(assert (forall ((r $Ref)) (!
  ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@236@01))) r) r)
  :pattern (($FVF.lookup_next (as sm@350@01  $FVF<next>) r))
  :qid |qp.fvfResTrgDef228|)))
(assert (=>
  (and
    (Set_in n$2@352@01 g@231@01)
    (not (= ($FVF.lookup_next (as sm@350@01  $FVF<next>) n$2@352@01) $Ref.null)))
  (and
    (Set_in n$2@352@01 g@231@01)
    (not (= ($FVF.lookup_next (as sm@350@01  $FVF<next>) n$2@352@01) $Ref.null))
    ($FVF.loc_next ($FVF.lookup_next (as sm@350@01  $FVF<next>) n$2@352@01) n$2@352@01))))
; Joined path conditions
(assert (or
  (not
    (and
      (Set_in n$2@352@01 g@231@01)
      (not
        (= ($FVF.lookup_next (as sm@350@01  $FVF<next>) n$2@352@01) $Ref.null))))
  (and
    (Set_in n$2@352@01 g@231@01)
    (not (= ($FVF.lookup_next (as sm@350@01  $FVF<next>) n$2@352@01) $Ref.null)))))
; Definitional axioms for snapshot map values
(pop) ; 5
; Nested auxiliary terms: globals (aux)
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@240@01 r) (Set_in (inv@239@01 r) g@231@01))
    (=
      ($FVF.lookup_next (as sm@350@01  $FVF<next>) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@236@01))) r)))
  :pattern (($FVF.lookup_next (as sm@350@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@236@01))) r))
  :qid |qp.fvfValDef227|)))
(assert (forall ((r $Ref)) (!
  ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@236@01))) r) r)
  :pattern (($FVF.lookup_next (as sm@350@01  $FVF<next>) r))
  :qid |qp.fvfResTrgDef228|)))
; Nested auxiliary terms: non-globals (aux)
(assert (forall ((n$2@352@01 $Ref)) (!
  (and
    (=>
      (Set_in n$2@352@01 g@231@01)
      (and
        (Set_in n$2@352@01 g@231@01)
        ($FVF.loc_next ($FVF.lookup_next (as sm@350@01  $FVF<next>) n$2@352@01) n$2@352@01)))
    (or (Set_in n$2@352@01 g@231@01) (not (Set_in n$2@352@01 g@231@01)))
    (=>
      (and
        (Set_in n$2@352@01 g@231@01)
        (not
          (= ($FVF.lookup_next (as sm@350@01  $FVF<next>) n$2@352@01) $Ref.null)))
      (and
        (Set_in n$2@352@01 g@231@01)
        (not
          (= ($FVF.lookup_next (as sm@350@01  $FVF<next>) n$2@352@01) $Ref.null))
        ($FVF.loc_next ($FVF.lookup_next (as sm@350@01  $FVF<next>) n$2@352@01) n$2@352@01)))
    (or
      (not
        (and
          (Set_in n$2@352@01 g@231@01)
          (not
            (=
              ($FVF.lookup_next (as sm@350@01  $FVF<next>) n$2@352@01)
              $Ref.null))))
      (and
        (Set_in n$2@352@01 g@231@01)
        (not
          (= ($FVF.lookup_next (as sm@350@01  $FVF<next>) n$2@352@01) $Ref.null)))))
  :pattern ((Set_in ($FVF.lookup_next (as sm@350@01  $FVF<next>) n$2@352@01) g@231@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/graphs/static/outlines/list_append.vpr@367@23@367@31-aux|)))
(assert (forall ((n$2@352@01 $Ref)) (!
  (and
    (=>
      (Set_in n$2@352@01 g@231@01)
      (and
        (Set_in n$2@352@01 g@231@01)
        ($FVF.loc_next ($FVF.lookup_next (as sm@350@01  $FVF<next>) n$2@352@01) n$2@352@01)))
    (or (Set_in n$2@352@01 g@231@01) (not (Set_in n$2@352@01 g@231@01)))
    (=>
      (and
        (Set_in n$2@352@01 g@231@01)
        (not
          (= ($FVF.lookup_next (as sm@350@01  $FVF<next>) n$2@352@01) $Ref.null)))
      (and
        (Set_in n$2@352@01 g@231@01)
        (not
          (= ($FVF.lookup_next (as sm@350@01  $FVF<next>) n$2@352@01) $Ref.null))
        ($FVF.loc_next ($FVF.lookup_next (as sm@350@01  $FVF<next>) n$2@352@01) n$2@352@01)))
    (or
      (not
        (and
          (Set_in n$2@352@01 g@231@01)
          (not
            (=
              ($FVF.lookup_next (as sm@350@01  $FVF<next>) n$2@352@01)
              $Ref.null))))
      (and
        (Set_in n$2@352@01 g@231@01)
        (not
          (= ($FVF.lookup_next (as sm@350@01  $FVF<next>) n$2@352@01) $Ref.null)))))
  :pattern ((Set_in n$2@352@01 g@231@01) ($FVF.loc_next ($FVF.lookup_next (as sm@350@01  $FVF<next>) n$2@352@01) n$2@352@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/graphs/static/outlines/list_append.vpr@367@23@367@31-aux|)))
(push) ; 5
(assert (not (forall ((n$2@352@01 $Ref)) (!
  (=>
    (and
      (Set_in n$2@352@01 g@231@01)
      (not
        (= ($FVF.lookup_next (as sm@350@01  $FVF<next>) n$2@352@01) $Ref.null)))
    (Set_in ($FVF.lookup_next (as sm@350@01  $FVF<next>) n$2@352@01) g@231@01))
  :pattern ((Set_in ($FVF.lookup_next (as sm@350@01  $FVF<next>) n$2@352@01) g@231@01))
  :pattern ((Set_in n$2@352@01 g@231@01) ($FVF.loc_next ($FVF.lookup_next (as sm@350@01  $FVF<next>) n$2@352@01) n$2@352@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/graphs/static/outlines/list_append.vpr@367@23@367@31|))))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(assert (forall ((n$2@352@01 $Ref)) (!
  (=>
    (and
      (Set_in n$2@352@01 g@231@01)
      (not
        (= ($FVF.lookup_next (as sm@350@01  $FVF<next>) n$2@352@01) $Ref.null)))
    (Set_in ($FVF.lookup_next (as sm@350@01  $FVF<next>) n$2@352@01) g@231@01))
  :pattern ((Set_in ($FVF.lookup_next (as sm@350@01  $FVF<next>) n$2@352@01) g@231@01))
  :pattern ((Set_in n$2@352@01 g@231@01) ($FVF.loc_next ($FVF.lookup_next (as sm@350@01  $FVF<next>) n$2@352@01) n$2@352@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/graphs/static/outlines/list_append.vpr@367@23@367@31|)))
; [eval] (last in g)
; [eval] (x in g)
; [eval] (y in g)
; [eval] (forall n: Ref :: { (n in g) } { exists_path($$(g), x, n) } { exists_path($$(g), y, n) } (n in g) ==> exists_path($$(g), x, n) || exists_path($$(g), y, n))
(declare-const n@353@01 $Ref)
(push) ; 5
; [eval] (n in g) ==> exists_path($$(g), x, n) || exists_path($$(g), y, n)
; [eval] (n in g)
(push) ; 6
; [then-branch: 49 | n@353@01 in g@231@01 | live]
; [else-branch: 49 | !(n@353@01 in g@231@01) | live]
(push) ; 7
; [then-branch: 49 | n@353@01 in g@231@01]
(assert (Set_in n@353@01 g@231@01))
; [eval] exists_path($$(g), x, n) || exists_path($$(g), y, n)
; [eval] exists_path($$(g), x, n)
; [eval] $$(g)
(push) ; 8
(declare-const n@354@01 $Ref)
(push) ; 9
; [eval] (n in refs)
(assert (Set_in n@354@01 g@231@01))
(pop) ; 9
(declare-fun inv@355@01 ($Ref) $Ref)
(declare-fun img@356@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
; Definitional axioms for snapshot map domain
; Definitional axioms for snapshot map values
; Check receiver injectivity
(push) ; 9
(assert (not (forall ((n1@354@01 $Ref) (n2@354@01 $Ref)) (!
  (=>
    (and
      (and
        (Set_in n1@354@01 g@231@01)
        ($FVF.loc_next ($FVF.lookup_next (as sm@350@01  $FVF<next>) n1@354@01) n1@354@01))
      (and
        (Set_in n2@354@01 g@231@01)
        ($FVF.loc_next ($FVF.lookup_next (as sm@350@01  $FVF<next>) n2@354@01) n2@354@01))
      (= n1@354@01 n2@354@01))
    (= n1@354@01 n2@354@01))
  
  :qid |next-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 9
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((n@354@01 $Ref)) (!
  (=>
    (Set_in n@354@01 g@231@01)
    (and (= (inv@355@01 n@354@01) n@354@01) (img@356@01 n@354@01)))
  :pattern ((Set_in n@354@01 g@231@01))
  :pattern ((inv@355@01 n@354@01))
  :pattern ((img@356@01 n@354@01))
  :qid |next-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=> (and (img@356@01 r) (Set_in (inv@355@01 r) g@231@01)) (= (inv@355@01 r) r))
  :pattern ((inv@355@01 r))
  :qid |next-fctOfInv|)))
(assert (forall ((r $Ref)) (!
  (=>
    (Set_in (inv@355@01 r) g@231@01)
    ($FVF.loc_next ($FVF.lookup_next (as sm@350@01  $FVF<next>) r) r))
  :pattern ((inv@355@01 r))
  :qid |quant-u-15669|)))
(push) ; 9
(assert (not (forall ((r $Ref)) (!
  (=>
    (and (Set_in (inv@355@01 r) g@231@01) (img@356@01 r) (= r (inv@355@01 r)))
    (>
      (ite
        (and (img@240@01 r) (Set_in (inv@239@01 r) g@231@01))
        $Perm.Write
        $Perm.No)
      $Perm.No))
  
  :qid |quant-u-15670|))))
(check-sat)
; unsat
(pop) ; 9
; 0.00s
; (get-info :all-statistics)
(declare-const sm@357@01 $FVF<next>)
; Definitional axioms for snapshot map domain
(assert (forall ((r $Ref)) (!
  (and
    (=>
      (Set_in r ($FVF.domain_next (as sm@357@01  $FVF<next>)))
      (and (Set_in (inv@355@01 r) g@231@01) (img@356@01 r)))
    (=>
      (and (Set_in (inv@355@01 r) g@231@01) (img@356@01 r))
      (Set_in r ($FVF.domain_next (as sm@357@01  $FVF<next>)))))
  :pattern ((Set_in r ($FVF.domain_next (as sm@357@01  $FVF<next>))))
  :qid |qp.fvfDomDef231|)))
; Definitional axioms for snapshot map values
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and (Set_in (inv@355@01 r) g@231@01) (img@356@01 r))
      (and (img@240@01 r) (Set_in (inv@239@01 r) g@231@01)))
    (=
      ($FVF.lookup_next (as sm@357@01  $FVF<next>) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@236@01))) r)))
  :pattern (($FVF.lookup_next (as sm@357@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@236@01))) r))
  :qid |qp.fvfValDef229|)))
(assert (forall ((r $Ref)) (!
  ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@236@01))) r) r)
  :pattern (($FVF.lookup_next (as sm@357@01  $FVF<next>) r))
  :qid |qp.fvfResTrgDef230|)))
(assert ($$%precondition ($SortWrappers.$FVF<next>To$Snap (as sm@357@01  $FVF<next>)) g@231@01))
(pop) ; 8
; Joined path conditions
(assert (forall ((n@354@01 $Ref)) (!
  (=>
    (Set_in n@354@01 g@231@01)
    (and (= (inv@355@01 n@354@01) n@354@01) (img@356@01 n@354@01)))
  :pattern ((Set_in n@354@01 g@231@01))
  :pattern ((inv@355@01 n@354@01))
  :pattern ((img@356@01 n@354@01))
  :qid |next-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=> (and (img@356@01 r) (Set_in (inv@355@01 r) g@231@01)) (= (inv@355@01 r) r))
  :pattern ((inv@355@01 r))
  :qid |next-fctOfInv|)))
(assert (forall ((r $Ref)) (!
  (and
    (=>
      (Set_in r ($FVF.domain_next (as sm@357@01  $FVF<next>)))
      (and (Set_in (inv@355@01 r) g@231@01) (img@356@01 r)))
    (=>
      (and (Set_in (inv@355@01 r) g@231@01) (img@356@01 r))
      (Set_in r ($FVF.domain_next (as sm@357@01  $FVF<next>)))))
  :pattern ((Set_in r ($FVF.domain_next (as sm@357@01  $FVF<next>))))
  :qid |qp.fvfDomDef231|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and (Set_in (inv@355@01 r) g@231@01) (img@356@01 r))
      (and (img@240@01 r) (Set_in (inv@239@01 r) g@231@01)))
    (=
      ($FVF.lookup_next (as sm@357@01  $FVF<next>) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@236@01))) r)))
  :pattern (($FVF.lookup_next (as sm@357@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@236@01))) r))
  :qid |qp.fvfValDef229|)))
(assert (forall ((r $Ref)) (!
  ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@236@01))) r) r)
  :pattern (($FVF.lookup_next (as sm@357@01  $FVF<next>) r))
  :qid |qp.fvfResTrgDef230|)))
(assert (and
  (forall ((r $Ref)) (!
    (=>
      (Set_in (inv@355@01 r) g@231@01)
      ($FVF.loc_next ($FVF.lookup_next (as sm@350@01  $FVF<next>) r) r))
    :pattern ((inv@355@01 r))
    :qid |quant-u-15669|))
  ($$%precondition ($SortWrappers.$FVF<next>To$Snap (as sm@357@01  $FVF<next>)) g@231@01)))
(push) ; 8
; [then-branch: 50 | exists_path[Bool]($$(sm@357@01, g@231@01), x@232@01, n@353@01) | live]
; [else-branch: 50 | !(exists_path[Bool]($$(sm@357@01, g@231@01), x@232@01, n@353@01)) | live]
(push) ; 9
; [then-branch: 50 | exists_path[Bool]($$(sm@357@01, g@231@01), x@232@01, n@353@01)]
(assert (exists_path<Bool> ($$ ($SortWrappers.$FVF<next>To$Snap (as sm@357@01  $FVF<next>)) g@231@01) x@232@01 n@353@01))
(pop) ; 9
(push) ; 9
; [else-branch: 50 | !(exists_path[Bool]($$(sm@357@01, g@231@01), x@232@01, n@353@01))]
(assert (not
  (exists_path<Bool> ($$ ($SortWrappers.$FVF<next>To$Snap (as sm@357@01  $FVF<next>)) g@231@01) x@232@01 n@353@01)))
; [eval] exists_path($$(g), y, n)
; [eval] $$(g)
(push) ; 10
(declare-const n@358@01 $Ref)
(push) ; 11
; [eval] (n in refs)
(assert (Set_in n@358@01 g@231@01))
(pop) ; 11
(declare-fun inv@359@01 ($Ref) $Ref)
(declare-fun img@360@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
(declare-const sm@361@01 $FVF<next>)
; Definitional axioms for snapshot map domain
; Definitional axioms for snapshot map values
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@240@01 r) (Set_in (inv@239@01 r) g@231@01))
    (=
      ($FVF.lookup_next (as sm@361@01  $FVF<next>) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@236@01))) r)))
  :pattern (($FVF.lookup_next (as sm@361@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@236@01))) r))
  :qid |qp.fvfValDef232|)))
(assert (forall ((r $Ref)) (!
  ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@236@01))) r) r)
  :pattern (($FVF.lookup_next (as sm@361@01  $FVF<next>) r))
  :qid |qp.fvfResTrgDef233|)))
; Check receiver injectivity
(push) ; 11
(assert (not (forall ((n1@358@01 $Ref) (n2@358@01 $Ref)) (!
  (=>
    (and
      (and
        (Set_in n1@358@01 g@231@01)
        ($FVF.loc_next ($FVF.lookup_next (as sm@361@01  $FVF<next>) n1@358@01) n1@358@01))
      (and
        (Set_in n2@358@01 g@231@01)
        ($FVF.loc_next ($FVF.lookup_next (as sm@361@01  $FVF<next>) n2@358@01) n2@358@01))
      (= n1@358@01 n2@358@01))
    (= n1@358@01 n2@358@01))
  
  :qid |next-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 11
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((n@358@01 $Ref)) (!
  (=>
    (Set_in n@358@01 g@231@01)
    (and (= (inv@359@01 n@358@01) n@358@01) (img@360@01 n@358@01)))
  :pattern ((Set_in n@358@01 g@231@01))
  :pattern ((inv@359@01 n@358@01))
  :pattern ((img@360@01 n@358@01))
  :qid |next-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=> (and (img@360@01 r) (Set_in (inv@359@01 r) g@231@01)) (= (inv@359@01 r) r))
  :pattern ((inv@359@01 r))
  :qid |next-fctOfInv|)))
(assert (forall ((r $Ref)) (!
  (=>
    (Set_in (inv@359@01 r) g@231@01)
    ($FVF.loc_next ($FVF.lookup_next (as sm@361@01  $FVF<next>) r) r))
  :pattern ((inv@359@01 r))
  :qid |quant-u-15672|)))
(push) ; 11
(assert (not (forall ((r $Ref)) (!
  (=>
    (and (Set_in (inv@359@01 r) g@231@01) (img@360@01 r) (= r (inv@359@01 r)))
    (>
      (ite
        (and (img@240@01 r) (Set_in (inv@239@01 r) g@231@01))
        $Perm.Write
        $Perm.No)
      $Perm.No))
  
  :qid |quant-u-15673|))))
(check-sat)
; unsat
(pop) ; 11
; 0.00s
; (get-info :all-statistics)
(declare-const sm@362@01 $FVF<next>)
; Definitional axioms for snapshot map domain
(assert (forall ((r $Ref)) (!
  (and
    (=>
      (Set_in r ($FVF.domain_next (as sm@362@01  $FVF<next>)))
      (and (Set_in (inv@359@01 r) g@231@01) (img@360@01 r)))
    (=>
      (and (Set_in (inv@359@01 r) g@231@01) (img@360@01 r))
      (Set_in r ($FVF.domain_next (as sm@362@01  $FVF<next>)))))
  :pattern ((Set_in r ($FVF.domain_next (as sm@362@01  $FVF<next>))))
  :qid |qp.fvfDomDef236|)))
; Definitional axioms for snapshot map values
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and (Set_in (inv@359@01 r) g@231@01) (img@360@01 r))
      (and (img@240@01 r) (Set_in (inv@239@01 r) g@231@01)))
    (=
      ($FVF.lookup_next (as sm@362@01  $FVF<next>) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@236@01))) r)))
  :pattern (($FVF.lookup_next (as sm@362@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@236@01))) r))
  :qid |qp.fvfValDef234|)))
(assert (forall ((r $Ref)) (!
  ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@236@01))) r) r)
  :pattern (($FVF.lookup_next (as sm@362@01  $FVF<next>) r))
  :qid |qp.fvfResTrgDef235|)))
(assert ($$%precondition ($SortWrappers.$FVF<next>To$Snap (as sm@362@01  $FVF<next>)) g@231@01))
(pop) ; 10
; Joined path conditions
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@240@01 r) (Set_in (inv@239@01 r) g@231@01))
    (=
      ($FVF.lookup_next (as sm@361@01  $FVF<next>) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@236@01))) r)))
  :pattern (($FVF.lookup_next (as sm@361@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@236@01))) r))
  :qid |qp.fvfValDef232|)))
(assert (forall ((r $Ref)) (!
  ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@236@01))) r) r)
  :pattern (($FVF.lookup_next (as sm@361@01  $FVF<next>) r))
  :qid |qp.fvfResTrgDef233|)))
(assert (forall ((n@358@01 $Ref)) (!
  (=>
    (Set_in n@358@01 g@231@01)
    (and (= (inv@359@01 n@358@01) n@358@01) (img@360@01 n@358@01)))
  :pattern ((Set_in n@358@01 g@231@01))
  :pattern ((inv@359@01 n@358@01))
  :pattern ((img@360@01 n@358@01))
  :qid |next-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=> (and (img@360@01 r) (Set_in (inv@359@01 r) g@231@01)) (= (inv@359@01 r) r))
  :pattern ((inv@359@01 r))
  :qid |next-fctOfInv|)))
(assert (forall ((r $Ref)) (!
  (and
    (=>
      (Set_in r ($FVF.domain_next (as sm@362@01  $FVF<next>)))
      (and (Set_in (inv@359@01 r) g@231@01) (img@360@01 r)))
    (=>
      (and (Set_in (inv@359@01 r) g@231@01) (img@360@01 r))
      (Set_in r ($FVF.domain_next (as sm@362@01  $FVF<next>)))))
  :pattern ((Set_in r ($FVF.domain_next (as sm@362@01  $FVF<next>))))
  :qid |qp.fvfDomDef236|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and (Set_in (inv@359@01 r) g@231@01) (img@360@01 r))
      (and (img@240@01 r) (Set_in (inv@239@01 r) g@231@01)))
    (=
      ($FVF.lookup_next (as sm@362@01  $FVF<next>) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@236@01))) r)))
  :pattern (($FVF.lookup_next (as sm@362@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@236@01))) r))
  :qid |qp.fvfValDef234|)))
(assert (forall ((r $Ref)) (!
  ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@236@01))) r) r)
  :pattern (($FVF.lookup_next (as sm@362@01  $FVF<next>) r))
  :qid |qp.fvfResTrgDef235|)))
(assert (and
  (forall ((r $Ref)) (!
    (=>
      (Set_in (inv@359@01 r) g@231@01)
      ($FVF.loc_next ($FVF.lookup_next (as sm@361@01  $FVF<next>) r) r))
    :pattern ((inv@359@01 r))
    :qid |quant-u-15672|))
  ($$%precondition ($SortWrappers.$FVF<next>To$Snap (as sm@362@01  $FVF<next>)) g@231@01)))
(pop) ; 9
(pop) ; 8
; Joined path conditions
; Joined path conditions
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@240@01 r) (Set_in (inv@239@01 r) g@231@01))
    (=
      ($FVF.lookup_next (as sm@361@01  $FVF<next>) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@236@01))) r)))
  :pattern (($FVF.lookup_next (as sm@361@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@236@01))) r))
  :qid |qp.fvfValDef232|)))
(assert (forall ((r $Ref)) (!
  ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@236@01))) r) r)
  :pattern (($FVF.lookup_next (as sm@361@01  $FVF<next>) r))
  :qid |qp.fvfResTrgDef233|)))
(assert (forall ((n@358@01 $Ref)) (!
  (=>
    (Set_in n@358@01 g@231@01)
    (and (= (inv@359@01 n@358@01) n@358@01) (img@360@01 n@358@01)))
  :pattern ((Set_in n@358@01 g@231@01))
  :pattern ((inv@359@01 n@358@01))
  :pattern ((img@360@01 n@358@01))
  :qid |next-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=> (and (img@360@01 r) (Set_in (inv@359@01 r) g@231@01)) (= (inv@359@01 r) r))
  :pattern ((inv@359@01 r))
  :qid |next-fctOfInv|)))
(assert (forall ((r $Ref)) (!
  (and
    (=>
      (Set_in r ($FVF.domain_next (as sm@362@01  $FVF<next>)))
      (and (Set_in (inv@359@01 r) g@231@01) (img@360@01 r)))
    (=>
      (and (Set_in (inv@359@01 r) g@231@01) (img@360@01 r))
      (Set_in r ($FVF.domain_next (as sm@362@01  $FVF<next>)))))
  :pattern ((Set_in r ($FVF.domain_next (as sm@362@01  $FVF<next>))))
  :qid |qp.fvfDomDef236|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and (Set_in (inv@359@01 r) g@231@01) (img@360@01 r))
      (and (img@240@01 r) (Set_in (inv@239@01 r) g@231@01)))
    (=
      ($FVF.lookup_next (as sm@362@01  $FVF<next>) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@236@01))) r)))
  :pattern (($FVF.lookup_next (as sm@362@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@236@01))) r))
  :qid |qp.fvfValDef234|)))
(assert (forall ((r $Ref)) (!
  ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@236@01))) r) r)
  :pattern (($FVF.lookup_next (as sm@362@01  $FVF<next>) r))
  :qid |qp.fvfResTrgDef235|)))
(assert (=>
  (not
    (exists_path<Bool> ($$ ($SortWrappers.$FVF<next>To$Snap (as sm@357@01  $FVF<next>)) g@231@01) x@232@01 n@353@01))
  (and
    (not
      (exists_path<Bool> ($$ ($SortWrappers.$FVF<next>To$Snap (as sm@357@01  $FVF<next>)) g@231@01) x@232@01 n@353@01))
    (forall ((r $Ref)) (!
      (=>
        (Set_in (inv@359@01 r) g@231@01)
        ($FVF.loc_next ($FVF.lookup_next (as sm@361@01  $FVF<next>) r) r))
      :pattern ((inv@359@01 r))
      :qid |quant-u-15672|))
    ($$%precondition ($SortWrappers.$FVF<next>To$Snap (as sm@362@01  $FVF<next>)) g@231@01))))
(assert (or
  (not
    (exists_path<Bool> ($$ ($SortWrappers.$FVF<next>To$Snap (as sm@357@01  $FVF<next>)) g@231@01) x@232@01 n@353@01))
  (exists_path<Bool> ($$ ($SortWrappers.$FVF<next>To$Snap (as sm@357@01  $FVF<next>)) g@231@01) x@232@01 n@353@01)))
(pop) ; 7
(push) ; 7
; [else-branch: 49 | !(n@353@01 in g@231@01)]
(assert (not (Set_in n@353@01 g@231@01)))
(pop) ; 7
(pop) ; 6
; Joined path conditions
(assert (forall ((n@354@01 $Ref)) (!
  (=>
    (Set_in n@354@01 g@231@01)
    (and (= (inv@355@01 n@354@01) n@354@01) (img@356@01 n@354@01)))
  :pattern ((Set_in n@354@01 g@231@01))
  :pattern ((inv@355@01 n@354@01))
  :pattern ((img@356@01 n@354@01))
  :qid |next-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=> (and (img@356@01 r) (Set_in (inv@355@01 r) g@231@01)) (= (inv@355@01 r) r))
  :pattern ((inv@355@01 r))
  :qid |next-fctOfInv|)))
(assert (forall ((r $Ref)) (!
  (and
    (=>
      (Set_in r ($FVF.domain_next (as sm@357@01  $FVF<next>)))
      (and (Set_in (inv@355@01 r) g@231@01) (img@356@01 r)))
    (=>
      (and (Set_in (inv@355@01 r) g@231@01) (img@356@01 r))
      (Set_in r ($FVF.domain_next (as sm@357@01  $FVF<next>)))))
  :pattern ((Set_in r ($FVF.domain_next (as sm@357@01  $FVF<next>))))
  :qid |qp.fvfDomDef231|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and (Set_in (inv@355@01 r) g@231@01) (img@356@01 r))
      (and (img@240@01 r) (Set_in (inv@239@01 r) g@231@01)))
    (=
      ($FVF.lookup_next (as sm@357@01  $FVF<next>) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@236@01))) r)))
  :pattern (($FVF.lookup_next (as sm@357@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@236@01))) r))
  :qid |qp.fvfValDef229|)))
(assert (forall ((r $Ref)) (!
  ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@236@01))) r) r)
  :pattern (($FVF.lookup_next (as sm@357@01  $FVF<next>) r))
  :qid |qp.fvfResTrgDef230|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@240@01 r) (Set_in (inv@239@01 r) g@231@01))
    (=
      ($FVF.lookup_next (as sm@361@01  $FVF<next>) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@236@01))) r)))
  :pattern (($FVF.lookup_next (as sm@361@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@236@01))) r))
  :qid |qp.fvfValDef232|)))
(assert (forall ((r $Ref)) (!
  ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@236@01))) r) r)
  :pattern (($FVF.lookup_next (as sm@361@01  $FVF<next>) r))
  :qid |qp.fvfResTrgDef233|)))
(assert (forall ((n@358@01 $Ref)) (!
  (=>
    (Set_in n@358@01 g@231@01)
    (and (= (inv@359@01 n@358@01) n@358@01) (img@360@01 n@358@01)))
  :pattern ((Set_in n@358@01 g@231@01))
  :pattern ((inv@359@01 n@358@01))
  :pattern ((img@360@01 n@358@01))
  :qid |next-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=> (and (img@360@01 r) (Set_in (inv@359@01 r) g@231@01)) (= (inv@359@01 r) r))
  :pattern ((inv@359@01 r))
  :qid |next-fctOfInv|)))
(assert (forall ((r $Ref)) (!
  (and
    (=>
      (Set_in r ($FVF.domain_next (as sm@362@01  $FVF<next>)))
      (and (Set_in (inv@359@01 r) g@231@01) (img@360@01 r)))
    (=>
      (and (Set_in (inv@359@01 r) g@231@01) (img@360@01 r))
      (Set_in r ($FVF.domain_next (as sm@362@01  $FVF<next>)))))
  :pattern ((Set_in r ($FVF.domain_next (as sm@362@01  $FVF<next>))))
  :qid |qp.fvfDomDef236|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and (Set_in (inv@359@01 r) g@231@01) (img@360@01 r))
      (and (img@240@01 r) (Set_in (inv@239@01 r) g@231@01)))
    (=
      ($FVF.lookup_next (as sm@362@01  $FVF<next>) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@236@01))) r)))
  :pattern (($FVF.lookup_next (as sm@362@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@236@01))) r))
  :qid |qp.fvfValDef234|)))
(assert (forall ((r $Ref)) (!
  ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@236@01))) r) r)
  :pattern (($FVF.lookup_next (as sm@362@01  $FVF<next>) r))
  :qid |qp.fvfResTrgDef235|)))
(assert (=>
  (Set_in n@353@01 g@231@01)
  (and
    (Set_in n@353@01 g@231@01)
    (forall ((r $Ref)) (!
      (=>
        (Set_in (inv@355@01 r) g@231@01)
        ($FVF.loc_next ($FVF.lookup_next (as sm@350@01  $FVF<next>) r) r))
      :pattern ((inv@355@01 r))
      :qid |quant-u-15669|))
    ($$%precondition ($SortWrappers.$FVF<next>To$Snap (as sm@357@01  $FVF<next>)) g@231@01)
    (=>
      (not
        (exists_path<Bool> ($$ ($SortWrappers.$FVF<next>To$Snap (as sm@357@01  $FVF<next>)) g@231@01) x@232@01 n@353@01))
      (and
        (not
          (exists_path<Bool> ($$ ($SortWrappers.$FVF<next>To$Snap (as sm@357@01  $FVF<next>)) g@231@01) x@232@01 n@353@01))
        (forall ((r $Ref)) (!
          (=>
            (Set_in (inv@359@01 r) g@231@01)
            ($FVF.loc_next ($FVF.lookup_next (as sm@361@01  $FVF<next>) r) r))
          :pattern ((inv@359@01 r))
          :qid |quant-u-15672|))
        ($$%precondition ($SortWrappers.$FVF<next>To$Snap (as sm@362@01  $FVF<next>)) g@231@01)))
    (or
      (not
        (exists_path<Bool> ($$ ($SortWrappers.$FVF<next>To$Snap (as sm@357@01  $FVF<next>)) g@231@01) x@232@01 n@353@01))
      (exists_path<Bool> ($$ ($SortWrappers.$FVF<next>To$Snap (as sm@357@01  $FVF<next>)) g@231@01) x@232@01 n@353@01)))))
; Joined path conditions
(assert (or (not (Set_in n@353@01 g@231@01)) (Set_in n@353@01 g@231@01)))
(pop) ; 5
; Nested auxiliary terms: globals (aux)
(assert (forall ((n@354@01 $Ref)) (!
  (=>
    (Set_in n@354@01 g@231@01)
    (and (= (inv@355@01 n@354@01) n@354@01) (img@356@01 n@354@01)))
  :pattern ((Set_in n@354@01 g@231@01))
  :pattern ((inv@355@01 n@354@01))
  :pattern ((img@356@01 n@354@01))
  :qid |next-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=> (and (img@356@01 r) (Set_in (inv@355@01 r) g@231@01)) (= (inv@355@01 r) r))
  :pattern ((inv@355@01 r))
  :qid |next-fctOfInv|)))
(assert (forall ((r $Ref)) (!
  (and
    (=>
      (Set_in r ($FVF.domain_next (as sm@357@01  $FVF<next>)))
      (and (Set_in (inv@355@01 r) g@231@01) (img@356@01 r)))
    (=>
      (and (Set_in (inv@355@01 r) g@231@01) (img@356@01 r))
      (Set_in r ($FVF.domain_next (as sm@357@01  $FVF<next>)))))
  :pattern ((Set_in r ($FVF.domain_next (as sm@357@01  $FVF<next>))))
  :qid |qp.fvfDomDef231|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and (Set_in (inv@355@01 r) g@231@01) (img@356@01 r))
      (and (img@240@01 r) (Set_in (inv@239@01 r) g@231@01)))
    (=
      ($FVF.lookup_next (as sm@357@01  $FVF<next>) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@236@01))) r)))
  :pattern (($FVF.lookup_next (as sm@357@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@236@01))) r))
  :qid |qp.fvfValDef229|)))
(assert (forall ((r $Ref)) (!
  ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@236@01))) r) r)
  :pattern (($FVF.lookup_next (as sm@357@01  $FVF<next>) r))
  :qid |qp.fvfResTrgDef230|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@240@01 r) (Set_in (inv@239@01 r) g@231@01))
    (=
      ($FVF.lookup_next (as sm@361@01  $FVF<next>) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@236@01))) r)))
  :pattern (($FVF.lookup_next (as sm@361@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@236@01))) r))
  :qid |qp.fvfValDef232|)))
(assert (forall ((r $Ref)) (!
  ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@236@01))) r) r)
  :pattern (($FVF.lookup_next (as sm@361@01  $FVF<next>) r))
  :qid |qp.fvfResTrgDef233|)))
(assert (forall ((n@358@01 $Ref)) (!
  (=>
    (Set_in n@358@01 g@231@01)
    (and (= (inv@359@01 n@358@01) n@358@01) (img@360@01 n@358@01)))
  :pattern ((Set_in n@358@01 g@231@01))
  :pattern ((inv@359@01 n@358@01))
  :pattern ((img@360@01 n@358@01))
  :qid |next-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=> (and (img@360@01 r) (Set_in (inv@359@01 r) g@231@01)) (= (inv@359@01 r) r))
  :pattern ((inv@359@01 r))
  :qid |next-fctOfInv|)))
(assert (forall ((r $Ref)) (!
  (and
    (=>
      (Set_in r ($FVF.domain_next (as sm@362@01  $FVF<next>)))
      (and (Set_in (inv@359@01 r) g@231@01) (img@360@01 r)))
    (=>
      (and (Set_in (inv@359@01 r) g@231@01) (img@360@01 r))
      (Set_in r ($FVF.domain_next (as sm@362@01  $FVF<next>)))))
  :pattern ((Set_in r ($FVF.domain_next (as sm@362@01  $FVF<next>))))
  :qid |qp.fvfDomDef236|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and (Set_in (inv@359@01 r) g@231@01) (img@360@01 r))
      (and (img@240@01 r) (Set_in (inv@239@01 r) g@231@01)))
    (=
      ($FVF.lookup_next (as sm@362@01  $FVF<next>) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@236@01))) r)))
  :pattern (($FVF.lookup_next (as sm@362@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@236@01))) r))
  :qid |qp.fvfValDef234|)))
(assert (forall ((r $Ref)) (!
  ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@236@01))) r) r)
  :pattern (($FVF.lookup_next (as sm@362@01  $FVF<next>) r))
  :qid |qp.fvfResTrgDef235|)))
; Nested auxiliary terms: non-globals (aux)
(assert (forall ((n@353@01 $Ref)) (!
  (and
    (=>
      (Set_in n@353@01 g@231@01)
      (and
        (Set_in n@353@01 g@231@01)
        (forall ((r $Ref)) (!
          (=>
            (Set_in (inv@355@01 r) g@231@01)
            ($FVF.loc_next ($FVF.lookup_next (as sm@350@01  $FVF<next>) r) r))
          :pattern ((inv@355@01 r))
          :qid |quant-u-15669|))
        ($$%precondition ($SortWrappers.$FVF<next>To$Snap (as sm@357@01  $FVF<next>)) g@231@01)
        (=>
          (not
            (exists_path<Bool> ($$ ($SortWrappers.$FVF<next>To$Snap (as sm@357@01  $FVF<next>)) g@231@01) x@232@01 n@353@01))
          (and
            (not
              (exists_path<Bool> ($$ ($SortWrappers.$FVF<next>To$Snap (as sm@357@01  $FVF<next>)) g@231@01) x@232@01 n@353@01))
            (forall ((r $Ref)) (!
              (=>
                (Set_in (inv@359@01 r) g@231@01)
                ($FVF.loc_next ($FVF.lookup_next (as sm@361@01  $FVF<next>) r) r))
              :pattern ((inv@359@01 r))
              :qid |quant-u-15672|))
            ($$%precondition ($SortWrappers.$FVF<next>To$Snap (as sm@362@01  $FVF<next>)) g@231@01)))
        (or
          (not
            (exists_path<Bool> ($$ ($SortWrappers.$FVF<next>To$Snap (as sm@357@01  $FVF<next>)) g@231@01) x@232@01 n@353@01))
          (exists_path<Bool> ($$ ($SortWrappers.$FVF<next>To$Snap (as sm@357@01  $FVF<next>)) g@231@01) x@232@01 n@353@01))))
    (or (not (Set_in n@353@01 g@231@01)) (Set_in n@353@01 g@231@01)))
  :pattern ((Set_in n@353@01 g@231@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/graphs/static/outlines/list_append.vpr@371@23@371@102-aux|)))
(assert (forall ((n@353@01 $Ref)) (!
  (and
    (=>
      (Set_in n@353@01 g@231@01)
      (and
        (Set_in n@353@01 g@231@01)
        (forall ((r $Ref)) (!
          (=>
            (Set_in (inv@355@01 r) g@231@01)
            ($FVF.loc_next ($FVF.lookup_next (as sm@350@01  $FVF<next>) r) r))
          :pattern ((inv@355@01 r))
          :qid |quant-u-15669|))
        ($$%precondition ($SortWrappers.$FVF<next>To$Snap (as sm@357@01  $FVF<next>)) g@231@01)
        (=>
          (not
            (exists_path<Bool> ($$ ($SortWrappers.$FVF<next>To$Snap (as sm@357@01  $FVF<next>)) g@231@01) x@232@01 n@353@01))
          (and
            (not
              (exists_path<Bool> ($$ ($SortWrappers.$FVF<next>To$Snap (as sm@357@01  $FVF<next>)) g@231@01) x@232@01 n@353@01))
            (forall ((r $Ref)) (!
              (=>
                (Set_in (inv@359@01 r) g@231@01)
                ($FVF.loc_next ($FVF.lookup_next (as sm@361@01  $FVF<next>) r) r))
              :pattern ((inv@359@01 r))
              :qid |quant-u-15672|))
            ($$%precondition ($SortWrappers.$FVF<next>To$Snap (as sm@362@01  $FVF<next>)) g@231@01)))
        (or
          (not
            (exists_path<Bool> ($$ ($SortWrappers.$FVF<next>To$Snap (as sm@357@01  $FVF<next>)) g@231@01) x@232@01 n@353@01))
          (exists_path<Bool> ($$ ($SortWrappers.$FVF<next>To$Snap (as sm@357@01  $FVF<next>)) g@231@01) x@232@01 n@353@01))))
    (or (not (Set_in n@353@01 g@231@01)) (Set_in n@353@01 g@231@01)))
  :pattern ((exists_path<Bool> ($$ ($SortWrappers.$FVF<next>To$Snap (as sm@357@01  $FVF<next>)) g@231@01) x@232@01 n@353@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/graphs/static/outlines/list_append.vpr@371@23@371@102-aux|)))
(assert (forall ((n@353@01 $Ref)) (!
  (and
    (=>
      (Set_in n@353@01 g@231@01)
      (and
        (Set_in n@353@01 g@231@01)
        (forall ((r $Ref)) (!
          (=>
            (Set_in (inv@355@01 r) g@231@01)
            ($FVF.loc_next ($FVF.lookup_next (as sm@350@01  $FVF<next>) r) r))
          :pattern ((inv@355@01 r))
          :qid |quant-u-15669|))
        ($$%precondition ($SortWrappers.$FVF<next>To$Snap (as sm@357@01  $FVF<next>)) g@231@01)
        (=>
          (not
            (exists_path<Bool> ($$ ($SortWrappers.$FVF<next>To$Snap (as sm@357@01  $FVF<next>)) g@231@01) x@232@01 n@353@01))
          (and
            (not
              (exists_path<Bool> ($$ ($SortWrappers.$FVF<next>To$Snap (as sm@357@01  $FVF<next>)) g@231@01) x@232@01 n@353@01))
            (forall ((r $Ref)) (!
              (=>
                (Set_in (inv@359@01 r) g@231@01)
                ($FVF.loc_next ($FVF.lookup_next (as sm@361@01  $FVF<next>) r) r))
              :pattern ((inv@359@01 r))
              :qid |quant-u-15672|))
            ($$%precondition ($SortWrappers.$FVF<next>To$Snap (as sm@362@01  $FVF<next>)) g@231@01)))
        (or
          (not
            (exists_path<Bool> ($$ ($SortWrappers.$FVF<next>To$Snap (as sm@357@01  $FVF<next>)) g@231@01) x@232@01 n@353@01))
          (exists_path<Bool> ($$ ($SortWrappers.$FVF<next>To$Snap (as sm@357@01  $FVF<next>)) g@231@01) x@232@01 n@353@01))))
    (or (not (Set_in n@353@01 g@231@01)) (Set_in n@353@01 g@231@01)))
  :pattern ((exists_path<Bool> ($$ ($SortWrappers.$FVF<next>To$Snap (as sm@362@01  $FVF<next>)) g@231@01) y@233@01 n@353@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/graphs/static/outlines/list_append.vpr@371@23@371@102-aux|)))
(assert (forall ((n@353@01 $Ref)) (!
  (=>
    (Set_in n@353@01 g@231@01)
    (and
      ($$%precondition ($SortWrappers.$FVF<next>To$Snap (as sm@357@01  $FVF<next>)) g@231@01)
      (=>
        (not
          (exists_path<Bool> ($$ ($SortWrappers.$FVF<next>To$Snap (as sm@357@01  $FVF<next>)) g@231@01) x@232@01 n@353@01))
        ($$%precondition ($SortWrappers.$FVF<next>To$Snap (as sm@362@01  $FVF<next>)) g@231@01))))
  :pattern ((Set_in n@353@01 g@231@01))
  :pattern ((exists_path<Bool> ($$ ($SortWrappers.$FVF<next>To$Snap (as sm@357@01  $FVF<next>)) g@231@01) x@232@01 n@353@01))
  :pattern ((exists_path<Bool> ($$ ($SortWrappers.$FVF<next>To$Snap (as sm@362@01  $FVF<next>)) g@231@01) y@233@01 n@353@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/graphs/static/outlines/list_append.vpr@371@23@371@102_precondition|)))
(push) ; 5
(assert (not (forall ((n@353@01 $Ref)) (!
  (=>
    (and
      (=>
        (Set_in n@353@01 g@231@01)
        (and
          ($$%precondition ($SortWrappers.$FVF<next>To$Snap (as sm@357@01  $FVF<next>)) g@231@01)
          (=>
            (not
              (exists_path<Bool> ($$ ($SortWrappers.$FVF<next>To$Snap (as sm@357@01  $FVF<next>)) g@231@01) x@232@01 n@353@01))
            ($$%precondition ($SortWrappers.$FVF<next>To$Snap (as sm@362@01  $FVF<next>)) g@231@01))))
      (Set_in n@353@01 g@231@01))
    (or
      (exists_path<Bool> ($$ ($SortWrappers.$FVF<next>To$Snap (as sm@357@01  $FVF<next>)) g@231@01) x@232@01 n@353@01)
      (exists_path<Bool> ($$ ($SortWrappers.$FVF<next>To$Snap (as sm@362@01  $FVF<next>)) g@231@01) y@233@01 n@353@01)))
  :pattern ((Set_in n@353@01 g@231@01))
  :pattern ((exists_path<Bool> ($$ ($SortWrappers.$FVF<next>To$Snap (as sm@357@01  $FVF<next>)) g@231@01) x@232@01 n@353@01))
  :pattern ((exists_path<Bool> ($$ ($SortWrappers.$FVF<next>To$Snap (as sm@362@01  $FVF<next>)) g@231@01) y@233@01 n@353@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/graphs/static/outlines/list_append.vpr@371@23@371@102|))))
(check-sat)
; unsat
(pop) ; 5
; 0.32s
; (get-info :all-statistics)
(assert (forall ((n@353@01 $Ref)) (!
  (=>
    (Set_in n@353@01 g@231@01)
    (or
      (exists_path<Bool> ($$ ($SortWrappers.$FVF<next>To$Snap (as sm@357@01  $FVF<next>)) g@231@01) x@232@01 n@353@01)
      (exists_path<Bool> ($$ ($SortWrappers.$FVF<next>To$Snap (as sm@362@01  $FVF<next>)) g@231@01) y@233@01 n@353@01)))
  :pattern ((Set_in n@353@01 g@231@01))
  :pattern ((exists_path<Bool> ($$ ($SortWrappers.$FVF<next>To$Snap (as sm@357@01  $FVF<next>)) g@231@01) x@232@01 n@353@01))
  :pattern ((exists_path<Bool> ($$ ($SortWrappers.$FVF<next>To$Snap (as sm@362@01  $FVF<next>)) g@231@01) y@233@01 n@353@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/graphs/static/outlines/list_append.vpr@371@23@371@102|)))
; [eval] (forall n: Ref :: { (n in g) } { exists_path($$(g), x, n) } { exists_path($$(g), y, n) } (n in g) ==> !exists_path($$(g), x, n) || !exists_path($$(g), y, n))
(declare-const n@363@01 $Ref)
(push) ; 5
; [eval] (n in g) ==> !exists_path($$(g), x, n) || !exists_path($$(g), y, n)
; [eval] (n in g)
(push) ; 6
; [then-branch: 51 | n@363@01 in g@231@01 | live]
; [else-branch: 51 | !(n@363@01 in g@231@01) | live]
(push) ; 7
; [then-branch: 51 | n@363@01 in g@231@01]
(assert (Set_in n@363@01 g@231@01))
; [eval] !exists_path($$(g), x, n) || !exists_path($$(g), y, n)
; [eval] !exists_path($$(g), x, n)
; [eval] exists_path($$(g), x, n)
; [eval] $$(g)
(push) ; 8
(declare-const n@364@01 $Ref)
(push) ; 9
; [eval] (n in refs)
(assert (Set_in n@364@01 g@231@01))
(pop) ; 9
(declare-fun inv@365@01 ($Ref) $Ref)
(declare-fun img@366@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
; Definitional axioms for snapshot map domain
; Definitional axioms for snapshot map values
; Check receiver injectivity
(push) ; 9
(assert (not (forall ((n1@364@01 $Ref) (n2@364@01 $Ref)) (!
  (=>
    (and
      (and
        (Set_in n1@364@01 g@231@01)
        ($FVF.loc_next ($FVF.lookup_next (as sm@350@01  $FVF<next>) n1@364@01) n1@364@01))
      (and
        (Set_in n2@364@01 g@231@01)
        ($FVF.loc_next ($FVF.lookup_next (as sm@350@01  $FVF<next>) n2@364@01) n2@364@01))
      (= n1@364@01 n2@364@01))
    (= n1@364@01 n2@364@01))
  
  :qid |next-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 9
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((n@364@01 $Ref)) (!
  (=>
    (Set_in n@364@01 g@231@01)
    (and (= (inv@365@01 n@364@01) n@364@01) (img@366@01 n@364@01)))
  :pattern ((Set_in n@364@01 g@231@01))
  :pattern ((inv@365@01 n@364@01))
  :pattern ((img@366@01 n@364@01))
  :qid |next-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=> (and (img@366@01 r) (Set_in (inv@365@01 r) g@231@01)) (= (inv@365@01 r) r))
  :pattern ((inv@365@01 r))
  :qid |next-fctOfInv|)))
(assert (forall ((r $Ref)) (!
  (=>
    (Set_in (inv@365@01 r) g@231@01)
    ($FVF.loc_next ($FVF.lookup_next (as sm@350@01  $FVF<next>) r) r))
  :pattern ((inv@365@01 r))
  :qid |quant-u-15675|)))
(push) ; 9
(assert (not (forall ((r $Ref)) (!
  (=>
    (and (Set_in (inv@365@01 r) g@231@01) (img@366@01 r) (= r (inv@365@01 r)))
    (>
      (ite
        (and (img@240@01 r) (Set_in (inv@239@01 r) g@231@01))
        $Perm.Write
        $Perm.No)
      $Perm.No))
  
  :qid |quant-u-15676|))))
(check-sat)
; unsat
(pop) ; 9
; 0.00s
; (get-info :all-statistics)
(declare-const sm@367@01 $FVF<next>)
; Definitional axioms for snapshot map domain
(assert (forall ((r $Ref)) (!
  (and
    (=>
      (Set_in r ($FVF.domain_next (as sm@367@01  $FVF<next>)))
      (and (Set_in (inv@365@01 r) g@231@01) (img@366@01 r)))
    (=>
      (and (Set_in (inv@365@01 r) g@231@01) (img@366@01 r))
      (Set_in r ($FVF.domain_next (as sm@367@01  $FVF<next>)))))
  :pattern ((Set_in r ($FVF.domain_next (as sm@367@01  $FVF<next>))))
  :qid |qp.fvfDomDef239|)))
; Definitional axioms for snapshot map values
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and (Set_in (inv@365@01 r) g@231@01) (img@366@01 r))
      (and (img@240@01 r) (Set_in (inv@239@01 r) g@231@01)))
    (=
      ($FVF.lookup_next (as sm@367@01  $FVF<next>) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@236@01))) r)))
  :pattern (($FVF.lookup_next (as sm@367@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@236@01))) r))
  :qid |qp.fvfValDef237|)))
(assert (forall ((r $Ref)) (!
  ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@236@01))) r) r)
  :pattern (($FVF.lookup_next (as sm@367@01  $FVF<next>) r))
  :qid |qp.fvfResTrgDef238|)))
(assert ($$%precondition ($SortWrappers.$FVF<next>To$Snap (as sm@367@01  $FVF<next>)) g@231@01))
(pop) ; 8
; Joined path conditions
(assert (forall ((n@364@01 $Ref)) (!
  (=>
    (Set_in n@364@01 g@231@01)
    (and (= (inv@365@01 n@364@01) n@364@01) (img@366@01 n@364@01)))
  :pattern ((Set_in n@364@01 g@231@01))
  :pattern ((inv@365@01 n@364@01))
  :pattern ((img@366@01 n@364@01))
  :qid |next-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=> (and (img@366@01 r) (Set_in (inv@365@01 r) g@231@01)) (= (inv@365@01 r) r))
  :pattern ((inv@365@01 r))
  :qid |next-fctOfInv|)))
(assert (forall ((r $Ref)) (!
  (and
    (=>
      (Set_in r ($FVF.domain_next (as sm@367@01  $FVF<next>)))
      (and (Set_in (inv@365@01 r) g@231@01) (img@366@01 r)))
    (=>
      (and (Set_in (inv@365@01 r) g@231@01) (img@366@01 r))
      (Set_in r ($FVF.domain_next (as sm@367@01  $FVF<next>)))))
  :pattern ((Set_in r ($FVF.domain_next (as sm@367@01  $FVF<next>))))
  :qid |qp.fvfDomDef239|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and (Set_in (inv@365@01 r) g@231@01) (img@366@01 r))
      (and (img@240@01 r) (Set_in (inv@239@01 r) g@231@01)))
    (=
      ($FVF.lookup_next (as sm@367@01  $FVF<next>) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@236@01))) r)))
  :pattern (($FVF.lookup_next (as sm@367@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@236@01))) r))
  :qid |qp.fvfValDef237|)))
(assert (forall ((r $Ref)) (!
  ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@236@01))) r) r)
  :pattern (($FVF.lookup_next (as sm@367@01  $FVF<next>) r))
  :qid |qp.fvfResTrgDef238|)))
(assert (and
  (forall ((r $Ref)) (!
    (=>
      (Set_in (inv@365@01 r) g@231@01)
      ($FVF.loc_next ($FVF.lookup_next (as sm@350@01  $FVF<next>) r) r))
    :pattern ((inv@365@01 r))
    :qid |quant-u-15675|))
  ($$%precondition ($SortWrappers.$FVF<next>To$Snap (as sm@367@01  $FVF<next>)) g@231@01)))
(push) ; 8
; [then-branch: 52 | !(exists_path[Bool]($$(sm@367@01, g@231@01), x@232@01, n@363@01)) | live]
; [else-branch: 52 | exists_path[Bool]($$(sm@367@01, g@231@01), x@232@01, n@363@01) | live]
(push) ; 9
; [then-branch: 52 | !(exists_path[Bool]($$(sm@367@01, g@231@01), x@232@01, n@363@01))]
(assert (not
  (exists_path<Bool> ($$ ($SortWrappers.$FVF<next>To$Snap (as sm@367@01  $FVF<next>)) g@231@01) x@232@01 n@363@01)))
(pop) ; 9
(push) ; 9
; [else-branch: 52 | exists_path[Bool]($$(sm@367@01, g@231@01), x@232@01, n@363@01)]
(assert (exists_path<Bool> ($$ ($SortWrappers.$FVF<next>To$Snap (as sm@367@01  $FVF<next>)) g@231@01) x@232@01 n@363@01))
; [eval] !exists_path($$(g), y, n)
; [eval] exists_path($$(g), y, n)
; [eval] $$(g)
(push) ; 10
(declare-const n@368@01 $Ref)
(push) ; 11
; [eval] (n in refs)
(assert (Set_in n@368@01 g@231@01))
(pop) ; 11
(declare-fun inv@369@01 ($Ref) $Ref)
(declare-fun img@370@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
(declare-const sm@371@01 $FVF<next>)
; Definitional axioms for snapshot map domain
; Definitional axioms for snapshot map values
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@240@01 r) (Set_in (inv@239@01 r) g@231@01))
    (=
      ($FVF.lookup_next (as sm@371@01  $FVF<next>) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@236@01))) r)))
  :pattern (($FVF.lookup_next (as sm@371@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@236@01))) r))
  :qid |qp.fvfValDef240|)))
(assert (forall ((r $Ref)) (!
  ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@236@01))) r) r)
  :pattern (($FVF.lookup_next (as sm@371@01  $FVF<next>) r))
  :qid |qp.fvfResTrgDef241|)))
; Check receiver injectivity
(push) ; 11
(assert (not (forall ((n1@368@01 $Ref) (n2@368@01 $Ref)) (!
  (=>
    (and
      (and
        (Set_in n1@368@01 g@231@01)
        ($FVF.loc_next ($FVF.lookup_next (as sm@371@01  $FVF<next>) n1@368@01) n1@368@01))
      (and
        (Set_in n2@368@01 g@231@01)
        ($FVF.loc_next ($FVF.lookup_next (as sm@371@01  $FVF<next>) n2@368@01) n2@368@01))
      (= n1@368@01 n2@368@01))
    (= n1@368@01 n2@368@01))
  
  :qid |next-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 11
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((n@368@01 $Ref)) (!
  (=>
    (Set_in n@368@01 g@231@01)
    (and (= (inv@369@01 n@368@01) n@368@01) (img@370@01 n@368@01)))
  :pattern ((Set_in n@368@01 g@231@01))
  :pattern ((inv@369@01 n@368@01))
  :pattern ((img@370@01 n@368@01))
  :qid |next-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=> (and (img@370@01 r) (Set_in (inv@369@01 r) g@231@01)) (= (inv@369@01 r) r))
  :pattern ((inv@369@01 r))
  :qid |next-fctOfInv|)))
(assert (forall ((r $Ref)) (!
  (=>
    (Set_in (inv@369@01 r) g@231@01)
    ($FVF.loc_next ($FVF.lookup_next (as sm@371@01  $FVF<next>) r) r))
  :pattern ((inv@369@01 r))
  :qid |quant-u-15678|)))
(push) ; 11
(assert (not (forall ((r $Ref)) (!
  (=>
    (and (Set_in (inv@369@01 r) g@231@01) (img@370@01 r) (= r (inv@369@01 r)))
    (>
      (ite
        (and (img@240@01 r) (Set_in (inv@239@01 r) g@231@01))
        $Perm.Write
        $Perm.No)
      $Perm.No))
  
  :qid |quant-u-15679|))))
(check-sat)
; unsat
(pop) ; 11
; 0.00s
; (get-info :all-statistics)
(declare-const sm@372@01 $FVF<next>)
; Definitional axioms for snapshot map domain
(assert (forall ((r $Ref)) (!
  (and
    (=>
      (Set_in r ($FVF.domain_next (as sm@372@01  $FVF<next>)))
      (and (Set_in (inv@369@01 r) g@231@01) (img@370@01 r)))
    (=>
      (and (Set_in (inv@369@01 r) g@231@01) (img@370@01 r))
      (Set_in r ($FVF.domain_next (as sm@372@01  $FVF<next>)))))
  :pattern ((Set_in r ($FVF.domain_next (as sm@372@01  $FVF<next>))))
  :qid |qp.fvfDomDef244|)))
; Definitional axioms for snapshot map values
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and (Set_in (inv@369@01 r) g@231@01) (img@370@01 r))
      (and (img@240@01 r) (Set_in (inv@239@01 r) g@231@01)))
    (=
      ($FVF.lookup_next (as sm@372@01  $FVF<next>) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@236@01))) r)))
  :pattern (($FVF.lookup_next (as sm@372@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@236@01))) r))
  :qid |qp.fvfValDef242|)))
(assert (forall ((r $Ref)) (!
  ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@236@01))) r) r)
  :pattern (($FVF.lookup_next (as sm@372@01  $FVF<next>) r))
  :qid |qp.fvfResTrgDef243|)))
(assert ($$%precondition ($SortWrappers.$FVF<next>To$Snap (as sm@372@01  $FVF<next>)) g@231@01))
(pop) ; 10
; Joined path conditions
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@240@01 r) (Set_in (inv@239@01 r) g@231@01))
    (=
      ($FVF.lookup_next (as sm@371@01  $FVF<next>) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@236@01))) r)))
  :pattern (($FVF.lookup_next (as sm@371@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@236@01))) r))
  :qid |qp.fvfValDef240|)))
(assert (forall ((r $Ref)) (!
  ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@236@01))) r) r)
  :pattern (($FVF.lookup_next (as sm@371@01  $FVF<next>) r))
  :qid |qp.fvfResTrgDef241|)))
(assert (forall ((n@368@01 $Ref)) (!
  (=>
    (Set_in n@368@01 g@231@01)
    (and (= (inv@369@01 n@368@01) n@368@01) (img@370@01 n@368@01)))
  :pattern ((Set_in n@368@01 g@231@01))
  :pattern ((inv@369@01 n@368@01))
  :pattern ((img@370@01 n@368@01))
  :qid |next-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=> (and (img@370@01 r) (Set_in (inv@369@01 r) g@231@01)) (= (inv@369@01 r) r))
  :pattern ((inv@369@01 r))
  :qid |next-fctOfInv|)))
(assert (forall ((r $Ref)) (!
  (and
    (=>
      (Set_in r ($FVF.domain_next (as sm@372@01  $FVF<next>)))
      (and (Set_in (inv@369@01 r) g@231@01) (img@370@01 r)))
    (=>
      (and (Set_in (inv@369@01 r) g@231@01) (img@370@01 r))
      (Set_in r ($FVF.domain_next (as sm@372@01  $FVF<next>)))))
  :pattern ((Set_in r ($FVF.domain_next (as sm@372@01  $FVF<next>))))
  :qid |qp.fvfDomDef244|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and (Set_in (inv@369@01 r) g@231@01) (img@370@01 r))
      (and (img@240@01 r) (Set_in (inv@239@01 r) g@231@01)))
    (=
      ($FVF.lookup_next (as sm@372@01  $FVF<next>) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@236@01))) r)))
  :pattern (($FVF.lookup_next (as sm@372@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@236@01))) r))
  :qid |qp.fvfValDef242|)))
(assert (forall ((r $Ref)) (!
  ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@236@01))) r) r)
  :pattern (($FVF.lookup_next (as sm@372@01  $FVF<next>) r))
  :qid |qp.fvfResTrgDef243|)))
(assert (and
  (forall ((r $Ref)) (!
    (=>
      (Set_in (inv@369@01 r) g@231@01)
      ($FVF.loc_next ($FVF.lookup_next (as sm@371@01  $FVF<next>) r) r))
    :pattern ((inv@369@01 r))
    :qid |quant-u-15678|))
  ($$%precondition ($SortWrappers.$FVF<next>To$Snap (as sm@372@01  $FVF<next>)) g@231@01)))
(pop) ; 9
(pop) ; 8
; Joined path conditions
; Joined path conditions
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@240@01 r) (Set_in (inv@239@01 r) g@231@01))
    (=
      ($FVF.lookup_next (as sm@371@01  $FVF<next>) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@236@01))) r)))
  :pattern (($FVF.lookup_next (as sm@371@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@236@01))) r))
  :qid |qp.fvfValDef240|)))
(assert (forall ((r $Ref)) (!
  ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@236@01))) r) r)
  :pattern (($FVF.lookup_next (as sm@371@01  $FVF<next>) r))
  :qid |qp.fvfResTrgDef241|)))
(assert (forall ((n@368@01 $Ref)) (!
  (=>
    (Set_in n@368@01 g@231@01)
    (and (= (inv@369@01 n@368@01) n@368@01) (img@370@01 n@368@01)))
  :pattern ((Set_in n@368@01 g@231@01))
  :pattern ((inv@369@01 n@368@01))
  :pattern ((img@370@01 n@368@01))
  :qid |next-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=> (and (img@370@01 r) (Set_in (inv@369@01 r) g@231@01)) (= (inv@369@01 r) r))
  :pattern ((inv@369@01 r))
  :qid |next-fctOfInv|)))
(assert (forall ((r $Ref)) (!
  (and
    (=>
      (Set_in r ($FVF.domain_next (as sm@372@01  $FVF<next>)))
      (and (Set_in (inv@369@01 r) g@231@01) (img@370@01 r)))
    (=>
      (and (Set_in (inv@369@01 r) g@231@01) (img@370@01 r))
      (Set_in r ($FVF.domain_next (as sm@372@01  $FVF<next>)))))
  :pattern ((Set_in r ($FVF.domain_next (as sm@372@01  $FVF<next>))))
  :qid |qp.fvfDomDef244|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and (Set_in (inv@369@01 r) g@231@01) (img@370@01 r))
      (and (img@240@01 r) (Set_in (inv@239@01 r) g@231@01)))
    (=
      ($FVF.lookup_next (as sm@372@01  $FVF<next>) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@236@01))) r)))
  :pattern (($FVF.lookup_next (as sm@372@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@236@01))) r))
  :qid |qp.fvfValDef242|)))
(assert (forall ((r $Ref)) (!
  ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@236@01))) r) r)
  :pattern (($FVF.lookup_next (as sm@372@01  $FVF<next>) r))
  :qid |qp.fvfResTrgDef243|)))
(assert (=>
  (exists_path<Bool> ($$ ($SortWrappers.$FVF<next>To$Snap (as sm@367@01  $FVF<next>)) g@231@01) x@232@01 n@363@01)
  (and
    (exists_path<Bool> ($$ ($SortWrappers.$FVF<next>To$Snap (as sm@367@01  $FVF<next>)) g@231@01) x@232@01 n@363@01)
    (forall ((r $Ref)) (!
      (=>
        (Set_in (inv@369@01 r) g@231@01)
        ($FVF.loc_next ($FVF.lookup_next (as sm@371@01  $FVF<next>) r) r))
      :pattern ((inv@369@01 r))
      :qid |quant-u-15678|))
    ($$%precondition ($SortWrappers.$FVF<next>To$Snap (as sm@372@01  $FVF<next>)) g@231@01))))
(assert (or
  (exists_path<Bool> ($$ ($SortWrappers.$FVF<next>To$Snap (as sm@367@01  $FVF<next>)) g@231@01) x@232@01 n@363@01)
  (not
    (exists_path<Bool> ($$ ($SortWrappers.$FVF<next>To$Snap (as sm@367@01  $FVF<next>)) g@231@01) x@232@01 n@363@01))))
(pop) ; 7
(push) ; 7
; [else-branch: 51 | !(n@363@01 in g@231@01)]
(assert (not (Set_in n@363@01 g@231@01)))
(pop) ; 7
(pop) ; 6
; Joined path conditions
(assert (forall ((n@364@01 $Ref)) (!
  (=>
    (Set_in n@364@01 g@231@01)
    (and (= (inv@365@01 n@364@01) n@364@01) (img@366@01 n@364@01)))
  :pattern ((Set_in n@364@01 g@231@01))
  :pattern ((inv@365@01 n@364@01))
  :pattern ((img@366@01 n@364@01))
  :qid |next-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=> (and (img@366@01 r) (Set_in (inv@365@01 r) g@231@01)) (= (inv@365@01 r) r))
  :pattern ((inv@365@01 r))
  :qid |next-fctOfInv|)))
(assert (forall ((r $Ref)) (!
  (and
    (=>
      (Set_in r ($FVF.domain_next (as sm@367@01  $FVF<next>)))
      (and (Set_in (inv@365@01 r) g@231@01) (img@366@01 r)))
    (=>
      (and (Set_in (inv@365@01 r) g@231@01) (img@366@01 r))
      (Set_in r ($FVF.domain_next (as sm@367@01  $FVF<next>)))))
  :pattern ((Set_in r ($FVF.domain_next (as sm@367@01  $FVF<next>))))
  :qid |qp.fvfDomDef239|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and (Set_in (inv@365@01 r) g@231@01) (img@366@01 r))
      (and (img@240@01 r) (Set_in (inv@239@01 r) g@231@01)))
    (=
      ($FVF.lookup_next (as sm@367@01  $FVF<next>) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@236@01))) r)))
  :pattern (($FVF.lookup_next (as sm@367@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@236@01))) r))
  :qid |qp.fvfValDef237|)))
(assert (forall ((r $Ref)) (!
  ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@236@01))) r) r)
  :pattern (($FVF.lookup_next (as sm@367@01  $FVF<next>) r))
  :qid |qp.fvfResTrgDef238|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@240@01 r) (Set_in (inv@239@01 r) g@231@01))
    (=
      ($FVF.lookup_next (as sm@371@01  $FVF<next>) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@236@01))) r)))
  :pattern (($FVF.lookup_next (as sm@371@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@236@01))) r))
  :qid |qp.fvfValDef240|)))
(assert (forall ((r $Ref)) (!
  ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@236@01))) r) r)
  :pattern (($FVF.lookup_next (as sm@371@01  $FVF<next>) r))
  :qid |qp.fvfResTrgDef241|)))
(assert (forall ((n@368@01 $Ref)) (!
  (=>
    (Set_in n@368@01 g@231@01)
    (and (= (inv@369@01 n@368@01) n@368@01) (img@370@01 n@368@01)))
  :pattern ((Set_in n@368@01 g@231@01))
  :pattern ((inv@369@01 n@368@01))
  :pattern ((img@370@01 n@368@01))
  :qid |next-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=> (and (img@370@01 r) (Set_in (inv@369@01 r) g@231@01)) (= (inv@369@01 r) r))
  :pattern ((inv@369@01 r))
  :qid |next-fctOfInv|)))
(assert (forall ((r $Ref)) (!
  (and
    (=>
      (Set_in r ($FVF.domain_next (as sm@372@01  $FVF<next>)))
      (and (Set_in (inv@369@01 r) g@231@01) (img@370@01 r)))
    (=>
      (and (Set_in (inv@369@01 r) g@231@01) (img@370@01 r))
      (Set_in r ($FVF.domain_next (as sm@372@01  $FVF<next>)))))
  :pattern ((Set_in r ($FVF.domain_next (as sm@372@01  $FVF<next>))))
  :qid |qp.fvfDomDef244|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and (Set_in (inv@369@01 r) g@231@01) (img@370@01 r))
      (and (img@240@01 r) (Set_in (inv@239@01 r) g@231@01)))
    (=
      ($FVF.lookup_next (as sm@372@01  $FVF<next>) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@236@01))) r)))
  :pattern (($FVF.lookup_next (as sm@372@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@236@01))) r))
  :qid |qp.fvfValDef242|)))
(assert (forall ((r $Ref)) (!
  ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@236@01))) r) r)
  :pattern (($FVF.lookup_next (as sm@372@01  $FVF<next>) r))
  :qid |qp.fvfResTrgDef243|)))
(assert (=>
  (Set_in n@363@01 g@231@01)
  (and
    (Set_in n@363@01 g@231@01)
    (forall ((r $Ref)) (!
      (=>
        (Set_in (inv@365@01 r) g@231@01)
        ($FVF.loc_next ($FVF.lookup_next (as sm@350@01  $FVF<next>) r) r))
      :pattern ((inv@365@01 r))
      :qid |quant-u-15675|))
    ($$%precondition ($SortWrappers.$FVF<next>To$Snap (as sm@367@01  $FVF<next>)) g@231@01)
    (=>
      (exists_path<Bool> ($$ ($SortWrappers.$FVF<next>To$Snap (as sm@367@01  $FVF<next>)) g@231@01) x@232@01 n@363@01)
      (and
        (exists_path<Bool> ($$ ($SortWrappers.$FVF<next>To$Snap (as sm@367@01  $FVF<next>)) g@231@01) x@232@01 n@363@01)
        (forall ((r $Ref)) (!
          (=>
            (Set_in (inv@369@01 r) g@231@01)
            ($FVF.loc_next ($FVF.lookup_next (as sm@371@01  $FVF<next>) r) r))
          :pattern ((inv@369@01 r))
          :qid |quant-u-15678|))
        ($$%precondition ($SortWrappers.$FVF<next>To$Snap (as sm@372@01  $FVF<next>)) g@231@01)))
    (or
      (exists_path<Bool> ($$ ($SortWrappers.$FVF<next>To$Snap (as sm@367@01  $FVF<next>)) g@231@01) x@232@01 n@363@01)
      (not
        (exists_path<Bool> ($$ ($SortWrappers.$FVF<next>To$Snap (as sm@367@01  $FVF<next>)) g@231@01) x@232@01 n@363@01))))))
; Joined path conditions
(assert (or (not (Set_in n@363@01 g@231@01)) (Set_in n@363@01 g@231@01)))
(pop) ; 5
; Nested auxiliary terms: globals (aux)
(assert (forall ((n@364@01 $Ref)) (!
  (=>
    (Set_in n@364@01 g@231@01)
    (and (= (inv@365@01 n@364@01) n@364@01) (img@366@01 n@364@01)))
  :pattern ((Set_in n@364@01 g@231@01))
  :pattern ((inv@365@01 n@364@01))
  :pattern ((img@366@01 n@364@01))
  :qid |next-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=> (and (img@366@01 r) (Set_in (inv@365@01 r) g@231@01)) (= (inv@365@01 r) r))
  :pattern ((inv@365@01 r))
  :qid |next-fctOfInv|)))
(assert (forall ((r $Ref)) (!
  (and
    (=>
      (Set_in r ($FVF.domain_next (as sm@367@01  $FVF<next>)))
      (and (Set_in (inv@365@01 r) g@231@01) (img@366@01 r)))
    (=>
      (and (Set_in (inv@365@01 r) g@231@01) (img@366@01 r))
      (Set_in r ($FVF.domain_next (as sm@367@01  $FVF<next>)))))
  :pattern ((Set_in r ($FVF.domain_next (as sm@367@01  $FVF<next>))))
  :qid |qp.fvfDomDef239|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and (Set_in (inv@365@01 r) g@231@01) (img@366@01 r))
      (and (img@240@01 r) (Set_in (inv@239@01 r) g@231@01)))
    (=
      ($FVF.lookup_next (as sm@367@01  $FVF<next>) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@236@01))) r)))
  :pattern (($FVF.lookup_next (as sm@367@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@236@01))) r))
  :qid |qp.fvfValDef237|)))
(assert (forall ((r $Ref)) (!
  ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@236@01))) r) r)
  :pattern (($FVF.lookup_next (as sm@367@01  $FVF<next>) r))
  :qid |qp.fvfResTrgDef238|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@240@01 r) (Set_in (inv@239@01 r) g@231@01))
    (=
      ($FVF.lookup_next (as sm@371@01  $FVF<next>) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@236@01))) r)))
  :pattern (($FVF.lookup_next (as sm@371@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@236@01))) r))
  :qid |qp.fvfValDef240|)))
(assert (forall ((r $Ref)) (!
  ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@236@01))) r) r)
  :pattern (($FVF.lookup_next (as sm@371@01  $FVF<next>) r))
  :qid |qp.fvfResTrgDef241|)))
(assert (forall ((n@368@01 $Ref)) (!
  (=>
    (Set_in n@368@01 g@231@01)
    (and (= (inv@369@01 n@368@01) n@368@01) (img@370@01 n@368@01)))
  :pattern ((Set_in n@368@01 g@231@01))
  :pattern ((inv@369@01 n@368@01))
  :pattern ((img@370@01 n@368@01))
  :qid |next-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=> (and (img@370@01 r) (Set_in (inv@369@01 r) g@231@01)) (= (inv@369@01 r) r))
  :pattern ((inv@369@01 r))
  :qid |next-fctOfInv|)))
(assert (forall ((r $Ref)) (!
  (and
    (=>
      (Set_in r ($FVF.domain_next (as sm@372@01  $FVF<next>)))
      (and (Set_in (inv@369@01 r) g@231@01) (img@370@01 r)))
    (=>
      (and (Set_in (inv@369@01 r) g@231@01) (img@370@01 r))
      (Set_in r ($FVF.domain_next (as sm@372@01  $FVF<next>)))))
  :pattern ((Set_in r ($FVF.domain_next (as sm@372@01  $FVF<next>))))
  :qid |qp.fvfDomDef244|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and (Set_in (inv@369@01 r) g@231@01) (img@370@01 r))
      (and (img@240@01 r) (Set_in (inv@239@01 r) g@231@01)))
    (=
      ($FVF.lookup_next (as sm@372@01  $FVF<next>) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@236@01))) r)))
  :pattern (($FVF.lookup_next (as sm@372@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@236@01))) r))
  :qid |qp.fvfValDef242|)))
(assert (forall ((r $Ref)) (!
  ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@236@01))) r) r)
  :pattern (($FVF.lookup_next (as sm@372@01  $FVF<next>) r))
  :qid |qp.fvfResTrgDef243|)))
; Nested auxiliary terms: non-globals (aux)
(assert (forall ((n@363@01 $Ref)) (!
  (and
    (=>
      (Set_in n@363@01 g@231@01)
      (and
        (Set_in n@363@01 g@231@01)
        (forall ((r $Ref)) (!
          (=>
            (Set_in (inv@365@01 r) g@231@01)
            ($FVF.loc_next ($FVF.lookup_next (as sm@350@01  $FVF<next>) r) r))
          :pattern ((inv@365@01 r))
          :qid |quant-u-15675|))
        ($$%precondition ($SortWrappers.$FVF<next>To$Snap (as sm@367@01  $FVF<next>)) g@231@01)
        (=>
          (exists_path<Bool> ($$ ($SortWrappers.$FVF<next>To$Snap (as sm@367@01  $FVF<next>)) g@231@01) x@232@01 n@363@01)
          (and
            (exists_path<Bool> ($$ ($SortWrappers.$FVF<next>To$Snap (as sm@367@01  $FVF<next>)) g@231@01) x@232@01 n@363@01)
            (forall ((r $Ref)) (!
              (=>
                (Set_in (inv@369@01 r) g@231@01)
                ($FVF.loc_next ($FVF.lookup_next (as sm@371@01  $FVF<next>) r) r))
              :pattern ((inv@369@01 r))
              :qid |quant-u-15678|))
            ($$%precondition ($SortWrappers.$FVF<next>To$Snap (as sm@372@01  $FVF<next>)) g@231@01)))
        (or
          (exists_path<Bool> ($$ ($SortWrappers.$FVF<next>To$Snap (as sm@367@01  $FVF<next>)) g@231@01) x@232@01 n@363@01)
          (not
            (exists_path<Bool> ($$ ($SortWrappers.$FVF<next>To$Snap (as sm@367@01  $FVF<next>)) g@231@01) x@232@01 n@363@01)))))
    (or (not (Set_in n@363@01 g@231@01)) (Set_in n@363@01 g@231@01)))
  :pattern ((Set_in n@363@01 g@231@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/graphs/static/outlines/list_append.vpr@372@23@372@102-aux|)))
(assert (forall ((n@363@01 $Ref)) (!
  (and
    (=>
      (Set_in n@363@01 g@231@01)
      (and
        (Set_in n@363@01 g@231@01)
        (forall ((r $Ref)) (!
          (=>
            (Set_in (inv@365@01 r) g@231@01)
            ($FVF.loc_next ($FVF.lookup_next (as sm@350@01  $FVF<next>) r) r))
          :pattern ((inv@365@01 r))
          :qid |quant-u-15675|))
        ($$%precondition ($SortWrappers.$FVF<next>To$Snap (as sm@367@01  $FVF<next>)) g@231@01)
        (=>
          (exists_path<Bool> ($$ ($SortWrappers.$FVF<next>To$Snap (as sm@367@01  $FVF<next>)) g@231@01) x@232@01 n@363@01)
          (and
            (exists_path<Bool> ($$ ($SortWrappers.$FVF<next>To$Snap (as sm@367@01  $FVF<next>)) g@231@01) x@232@01 n@363@01)
            (forall ((r $Ref)) (!
              (=>
                (Set_in (inv@369@01 r) g@231@01)
                ($FVF.loc_next ($FVF.lookup_next (as sm@371@01  $FVF<next>) r) r))
              :pattern ((inv@369@01 r))
              :qid |quant-u-15678|))
            ($$%precondition ($SortWrappers.$FVF<next>To$Snap (as sm@372@01  $FVF<next>)) g@231@01)))
        (or
          (exists_path<Bool> ($$ ($SortWrappers.$FVF<next>To$Snap (as sm@367@01  $FVF<next>)) g@231@01) x@232@01 n@363@01)
          (not
            (exists_path<Bool> ($$ ($SortWrappers.$FVF<next>To$Snap (as sm@367@01  $FVF<next>)) g@231@01) x@232@01 n@363@01)))))
    (or (not (Set_in n@363@01 g@231@01)) (Set_in n@363@01 g@231@01)))
  :pattern ((exists_path<Bool> ($$ ($SortWrappers.$FVF<next>To$Snap (as sm@367@01  $FVF<next>)) g@231@01) x@232@01 n@363@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/graphs/static/outlines/list_append.vpr@372@23@372@102-aux|)))
(assert (forall ((n@363@01 $Ref)) (!
  (and
    (=>
      (Set_in n@363@01 g@231@01)
      (and
        (Set_in n@363@01 g@231@01)
        (forall ((r $Ref)) (!
          (=>
            (Set_in (inv@365@01 r) g@231@01)
            ($FVF.loc_next ($FVF.lookup_next (as sm@350@01  $FVF<next>) r) r))
          :pattern ((inv@365@01 r))
          :qid |quant-u-15675|))
        ($$%precondition ($SortWrappers.$FVF<next>To$Snap (as sm@367@01  $FVF<next>)) g@231@01)
        (=>
          (exists_path<Bool> ($$ ($SortWrappers.$FVF<next>To$Snap (as sm@367@01  $FVF<next>)) g@231@01) x@232@01 n@363@01)
          (and
            (exists_path<Bool> ($$ ($SortWrappers.$FVF<next>To$Snap (as sm@367@01  $FVF<next>)) g@231@01) x@232@01 n@363@01)
            (forall ((r $Ref)) (!
              (=>
                (Set_in (inv@369@01 r) g@231@01)
                ($FVF.loc_next ($FVF.lookup_next (as sm@371@01  $FVF<next>) r) r))
              :pattern ((inv@369@01 r))
              :qid |quant-u-15678|))
            ($$%precondition ($SortWrappers.$FVF<next>To$Snap (as sm@372@01  $FVF<next>)) g@231@01)))
        (or
          (exists_path<Bool> ($$ ($SortWrappers.$FVF<next>To$Snap (as sm@367@01  $FVF<next>)) g@231@01) x@232@01 n@363@01)
          (not
            (exists_path<Bool> ($$ ($SortWrappers.$FVF<next>To$Snap (as sm@367@01  $FVF<next>)) g@231@01) x@232@01 n@363@01)))))
    (or (not (Set_in n@363@01 g@231@01)) (Set_in n@363@01 g@231@01)))
  :pattern ((exists_path<Bool> ($$ ($SortWrappers.$FVF<next>To$Snap (as sm@372@01  $FVF<next>)) g@231@01) y@233@01 n@363@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/graphs/static/outlines/list_append.vpr@372@23@372@102-aux|)))
(assert (forall ((n@363@01 $Ref)) (!
  (=>
    (Set_in n@363@01 g@231@01)
    (and
      ($$%precondition ($SortWrappers.$FVF<next>To$Snap (as sm@367@01  $FVF<next>)) g@231@01)
      (=>
        (exists_path<Bool> ($$ ($SortWrappers.$FVF<next>To$Snap (as sm@367@01  $FVF<next>)) g@231@01) x@232@01 n@363@01)
        ($$%precondition ($SortWrappers.$FVF<next>To$Snap (as sm@372@01  $FVF<next>)) g@231@01))))
  :pattern ((Set_in n@363@01 g@231@01))
  :pattern ((exists_path<Bool> ($$ ($SortWrappers.$FVF<next>To$Snap (as sm@367@01  $FVF<next>)) g@231@01) x@232@01 n@363@01))
  :pattern ((exists_path<Bool> ($$ ($SortWrappers.$FVF<next>To$Snap (as sm@372@01  $FVF<next>)) g@231@01) y@233@01 n@363@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/graphs/static/outlines/list_append.vpr@372@23@372@102_precondition|)))
(push) ; 5
(assert (not (forall ((n@363@01 $Ref)) (!
  (=>
    (and
      (=>
        (Set_in n@363@01 g@231@01)
        (and
          ($$%precondition ($SortWrappers.$FVF<next>To$Snap (as sm@367@01  $FVF<next>)) g@231@01)
          (=>
            (exists_path<Bool> ($$ ($SortWrappers.$FVF<next>To$Snap (as sm@367@01  $FVF<next>)) g@231@01) x@232@01 n@363@01)
            ($$%precondition ($SortWrappers.$FVF<next>To$Snap (as sm@372@01  $FVF<next>)) g@231@01))))
      (Set_in n@363@01 g@231@01))
    (or
      (not
        (exists_path<Bool> ($$ ($SortWrappers.$FVF<next>To$Snap (as sm@367@01  $FVF<next>)) g@231@01) x@232@01 n@363@01))
      (not
        (exists_path<Bool> ($$ ($SortWrappers.$FVF<next>To$Snap (as sm@372@01  $FVF<next>)) g@231@01) y@233@01 n@363@01))))
  :pattern ((Set_in n@363@01 g@231@01))
  :pattern ((exists_path<Bool> ($$ ($SortWrappers.$FVF<next>To$Snap (as sm@367@01  $FVF<next>)) g@231@01) x@232@01 n@363@01))
  :pattern ((exists_path<Bool> ($$ ($SortWrappers.$FVF<next>To$Snap (as sm@372@01  $FVF<next>)) g@231@01) y@233@01 n@363@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/graphs/static/outlines/list_append.vpr@372@23@372@102|))))
(check-sat)
; unsat
(pop) ; 5
; 0.31s
; (get-info :all-statistics)
(assert (forall ((n@363@01 $Ref)) (!
  (=>
    (Set_in n@363@01 g@231@01)
    (or
      (not
        (exists_path<Bool> ($$ ($SortWrappers.$FVF<next>To$Snap (as sm@367@01  $FVF<next>)) g@231@01) x@232@01 n@363@01))
      (not
        (exists_path<Bool> ($$ ($SortWrappers.$FVF<next>To$Snap (as sm@372@01  $FVF<next>)) g@231@01) y@233@01 n@363@01))))
  :pattern ((Set_in n@363@01 g@231@01))
  :pattern ((exists_path<Bool> ($$ ($SortWrappers.$FVF<next>To$Snap (as sm@367@01  $FVF<next>)) g@231@01) x@232@01 n@363@01))
  :pattern ((exists_path<Bool> ($$ ($SortWrappers.$FVF<next>To$Snap (as sm@372@01  $FVF<next>)) g@231@01) y@233@01 n@363@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/graphs/static/outlines/list_append.vpr@372@23@372@102|)))
; [eval] acyclic_graph($$(g))
; [eval] $$(g)
(push) ; 5
(declare-const n@373@01 $Ref)
(push) ; 6
; [eval] (n in refs)
(assert (Set_in n@373@01 g@231@01))
(pop) ; 6
(declare-fun inv@374@01 ($Ref) $Ref)
(declare-fun img@375@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
; Definitional axioms for snapshot map domain
; Definitional axioms for snapshot map values
; Check receiver injectivity
(push) ; 6
(assert (not (forall ((n1@373@01 $Ref) (n2@373@01 $Ref)) (!
  (=>
    (and
      (and
        (Set_in n1@373@01 g@231@01)
        ($FVF.loc_next ($FVF.lookup_next (as sm@350@01  $FVF<next>) n1@373@01) n1@373@01))
      (and
        (Set_in n2@373@01 g@231@01)
        ($FVF.loc_next ($FVF.lookup_next (as sm@350@01  $FVF<next>) n2@373@01) n2@373@01))
      (= n1@373@01 n2@373@01))
    (= n1@373@01 n2@373@01))
  
  :qid |next-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((n@373@01 $Ref)) (!
  (=>
    (Set_in n@373@01 g@231@01)
    (and (= (inv@374@01 n@373@01) n@373@01) (img@375@01 n@373@01)))
  :pattern ((Set_in n@373@01 g@231@01))
  :pattern ((inv@374@01 n@373@01))
  :pattern ((img@375@01 n@373@01))
  :qid |next-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=> (and (img@375@01 r) (Set_in (inv@374@01 r) g@231@01)) (= (inv@374@01 r) r))
  :pattern ((inv@374@01 r))
  :qid |next-fctOfInv|)))
(assert (forall ((r $Ref)) (!
  (=>
    (Set_in (inv@374@01 r) g@231@01)
    ($FVF.loc_next ($FVF.lookup_next (as sm@350@01  $FVF<next>) r) r))
  :pattern ((inv@374@01 r))
  :qid |quant-u-15681|)))
(push) ; 6
(assert (not (forall ((r $Ref)) (!
  (=>
    (and (Set_in (inv@374@01 r) g@231@01) (img@375@01 r) (= r (inv@374@01 r)))
    (>
      (ite
        (and (img@240@01 r) (Set_in (inv@239@01 r) g@231@01))
        $Perm.Write
        $Perm.No)
      $Perm.No))
  
  :qid |quant-u-15682|))))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(declare-const sm@376@01 $FVF<next>)
; Definitional axioms for snapshot map domain
(assert (forall ((r $Ref)) (!
  (and
    (=>
      (Set_in r ($FVF.domain_next (as sm@376@01  $FVF<next>)))
      (and (Set_in (inv@374@01 r) g@231@01) (img@375@01 r)))
    (=>
      (and (Set_in (inv@374@01 r) g@231@01) (img@375@01 r))
      (Set_in r ($FVF.domain_next (as sm@376@01  $FVF<next>)))))
  :pattern ((Set_in r ($FVF.domain_next (as sm@376@01  $FVF<next>))))
  :qid |qp.fvfDomDef247|)))
; Definitional axioms for snapshot map values
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and (Set_in (inv@374@01 r) g@231@01) (img@375@01 r))
      (and (img@240@01 r) (Set_in (inv@239@01 r) g@231@01)))
    (=
      ($FVF.lookup_next (as sm@376@01  $FVF<next>) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@236@01))) r)))
  :pattern (($FVF.lookup_next (as sm@376@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@236@01))) r))
  :qid |qp.fvfValDef245|)))
(assert (forall ((r $Ref)) (!
  ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@236@01))) r) r)
  :pattern (($FVF.lookup_next (as sm@376@01  $FVF<next>) r))
  :qid |qp.fvfResTrgDef246|)))
(assert ($$%precondition ($SortWrappers.$FVF<next>To$Snap (as sm@376@01  $FVF<next>)) g@231@01))
(pop) ; 5
; Joined path conditions
(assert (forall ((n@373@01 $Ref)) (!
  (=>
    (Set_in n@373@01 g@231@01)
    (and (= (inv@374@01 n@373@01) n@373@01) (img@375@01 n@373@01)))
  :pattern ((Set_in n@373@01 g@231@01))
  :pattern ((inv@374@01 n@373@01))
  :pattern ((img@375@01 n@373@01))
  :qid |next-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=> (and (img@375@01 r) (Set_in (inv@374@01 r) g@231@01)) (= (inv@374@01 r) r))
  :pattern ((inv@374@01 r))
  :qid |next-fctOfInv|)))
(assert (forall ((r $Ref)) (!
  (and
    (=>
      (Set_in r ($FVF.domain_next (as sm@376@01  $FVF<next>)))
      (and (Set_in (inv@374@01 r) g@231@01) (img@375@01 r)))
    (=>
      (and (Set_in (inv@374@01 r) g@231@01) (img@375@01 r))
      (Set_in r ($FVF.domain_next (as sm@376@01  $FVF<next>)))))
  :pattern ((Set_in r ($FVF.domain_next (as sm@376@01  $FVF<next>))))
  :qid |qp.fvfDomDef247|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and (Set_in (inv@374@01 r) g@231@01) (img@375@01 r))
      (and (img@240@01 r) (Set_in (inv@239@01 r) g@231@01)))
    (=
      ($FVF.lookup_next (as sm@376@01  $FVF<next>) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@236@01))) r)))
  :pattern (($FVF.lookup_next (as sm@376@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@236@01))) r))
  :qid |qp.fvfValDef245|)))
(assert (forall ((r $Ref)) (!
  ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@236@01))) r) r)
  :pattern (($FVF.lookup_next (as sm@376@01  $FVF<next>) r))
  :qid |qp.fvfResTrgDef246|)))
(assert (and
  (forall ((r $Ref)) (!
    (=>
      (Set_in (inv@374@01 r) g@231@01)
      ($FVF.loc_next ($FVF.lookup_next (as sm@350@01  $FVF<next>) r) r))
    :pattern ((inv@374@01 r))
    :qid |quant-u-15681|))
  ($$%precondition ($SortWrappers.$FVF<next>To$Snap (as sm@376@01  $FVF<next>)) g@231@01)))
(push) ; 5
(assert (not (acyclic_graph<Bool> ($$ ($SortWrappers.$FVF<next>To$Snap (as sm@376@01  $FVF<next>)) g@231@01))))
(check-sat)
; unsat
(pop) ; 5
; 0.19s
; (get-info :all-statistics)
(assert (acyclic_graph<Bool> ($$ ($SortWrappers.$FVF<next>To$Snap (as sm@376@01  $FVF<next>)) g@231@01)))
; [eval] unshared_graph($$(g))
; [eval] $$(g)
(push) ; 5
(declare-const n@377@01 $Ref)
(push) ; 6
; [eval] (n in refs)
(assert (Set_in n@377@01 g@231@01))
(pop) ; 6
(declare-fun inv@378@01 ($Ref) $Ref)
(declare-fun img@379@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
(declare-const sm@380@01 $FVF<next>)
; Definitional axioms for snapshot map domain
; Definitional axioms for snapshot map values
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@240@01 r) (Set_in (inv@239@01 r) g@231@01))
    (=
      ($FVF.lookup_next (as sm@380@01  $FVF<next>) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@236@01))) r)))
  :pattern (($FVF.lookup_next (as sm@380@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@236@01))) r))
  :qid |qp.fvfValDef248|)))
(assert (forall ((r $Ref)) (!
  ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@236@01))) r) r)
  :pattern (($FVF.lookup_next (as sm@380@01  $FVF<next>) r))
  :qid |qp.fvfResTrgDef249|)))
; Check receiver injectivity
(push) ; 6
(assert (not (forall ((n1@377@01 $Ref) (n2@377@01 $Ref)) (!
  (=>
    (and
      (and
        (Set_in n1@377@01 g@231@01)
        ($FVF.loc_next ($FVF.lookup_next (as sm@380@01  $FVF<next>) n1@377@01) n1@377@01))
      (and
        (Set_in n2@377@01 g@231@01)
        ($FVF.loc_next ($FVF.lookup_next (as sm@380@01  $FVF<next>) n2@377@01) n2@377@01))
      (= n1@377@01 n2@377@01))
    (= n1@377@01 n2@377@01))
  
  :qid |next-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((n@377@01 $Ref)) (!
  (=>
    (Set_in n@377@01 g@231@01)
    (and (= (inv@378@01 n@377@01) n@377@01) (img@379@01 n@377@01)))
  :pattern ((Set_in n@377@01 g@231@01))
  :pattern ((inv@378@01 n@377@01))
  :pattern ((img@379@01 n@377@01))
  :qid |next-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=> (and (img@379@01 r) (Set_in (inv@378@01 r) g@231@01)) (= (inv@378@01 r) r))
  :pattern ((inv@378@01 r))
  :qid |next-fctOfInv|)))
(assert (forall ((r $Ref)) (!
  (=>
    (Set_in (inv@378@01 r) g@231@01)
    ($FVF.loc_next ($FVF.lookup_next (as sm@380@01  $FVF<next>) r) r))
  :pattern ((inv@378@01 r))
  :qid |quant-u-15684|)))
(push) ; 6
(assert (not (forall ((r $Ref)) (!
  (=>
    (and (Set_in (inv@378@01 r) g@231@01) (img@379@01 r) (= r (inv@378@01 r)))
    (>
      (ite
        (and (img@240@01 r) (Set_in (inv@239@01 r) g@231@01))
        $Perm.Write
        $Perm.No)
      $Perm.No))
  
  :qid |quant-u-15685|))))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(declare-const sm@381@01 $FVF<next>)
; Definitional axioms for snapshot map domain
(assert (forall ((r $Ref)) (!
  (and
    (=>
      (Set_in r ($FVF.domain_next (as sm@381@01  $FVF<next>)))
      (and (Set_in (inv@378@01 r) g@231@01) (img@379@01 r)))
    (=>
      (and (Set_in (inv@378@01 r) g@231@01) (img@379@01 r))
      (Set_in r ($FVF.domain_next (as sm@381@01  $FVF<next>)))))
  :pattern ((Set_in r ($FVF.domain_next (as sm@381@01  $FVF<next>))))
  :qid |qp.fvfDomDef252|)))
; Definitional axioms for snapshot map values
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and (Set_in (inv@378@01 r) g@231@01) (img@379@01 r))
      (and (img@240@01 r) (Set_in (inv@239@01 r) g@231@01)))
    (=
      ($FVF.lookup_next (as sm@381@01  $FVF<next>) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@236@01))) r)))
  :pattern (($FVF.lookup_next (as sm@381@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@236@01))) r))
  :qid |qp.fvfValDef250|)))
(assert (forall ((r $Ref)) (!
  ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@236@01))) r) r)
  :pattern (($FVF.lookup_next (as sm@381@01  $FVF<next>) r))
  :qid |qp.fvfResTrgDef251|)))
(assert ($$%precondition ($SortWrappers.$FVF<next>To$Snap (as sm@381@01  $FVF<next>)) g@231@01))
(pop) ; 5
; Joined path conditions
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@240@01 r) (Set_in (inv@239@01 r) g@231@01))
    (=
      ($FVF.lookup_next (as sm@380@01  $FVF<next>) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@236@01))) r)))
  :pattern (($FVF.lookup_next (as sm@380@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@236@01))) r))
  :qid |qp.fvfValDef248|)))
(assert (forall ((r $Ref)) (!
  ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@236@01))) r) r)
  :pattern (($FVF.lookup_next (as sm@380@01  $FVF<next>) r))
  :qid |qp.fvfResTrgDef249|)))
(assert (forall ((n@377@01 $Ref)) (!
  (=>
    (Set_in n@377@01 g@231@01)
    (and (= (inv@378@01 n@377@01) n@377@01) (img@379@01 n@377@01)))
  :pattern ((Set_in n@377@01 g@231@01))
  :pattern ((inv@378@01 n@377@01))
  :pattern ((img@379@01 n@377@01))
  :qid |next-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=> (and (img@379@01 r) (Set_in (inv@378@01 r) g@231@01)) (= (inv@378@01 r) r))
  :pattern ((inv@378@01 r))
  :qid |next-fctOfInv|)))
(assert (forall ((r $Ref)) (!
  (and
    (=>
      (Set_in r ($FVF.domain_next (as sm@381@01  $FVF<next>)))
      (and (Set_in (inv@378@01 r) g@231@01) (img@379@01 r)))
    (=>
      (and (Set_in (inv@378@01 r) g@231@01) (img@379@01 r))
      (Set_in r ($FVF.domain_next (as sm@381@01  $FVF<next>)))))
  :pattern ((Set_in r ($FVF.domain_next (as sm@381@01  $FVF<next>))))
  :qid |qp.fvfDomDef252|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and (Set_in (inv@378@01 r) g@231@01) (img@379@01 r))
      (and (img@240@01 r) (Set_in (inv@239@01 r) g@231@01)))
    (=
      ($FVF.lookup_next (as sm@381@01  $FVF<next>) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@236@01))) r)))
  :pattern (($FVF.lookup_next (as sm@381@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@236@01))) r))
  :qid |qp.fvfValDef250|)))
(assert (forall ((r $Ref)) (!
  ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@236@01))) r) r)
  :pattern (($FVF.lookup_next (as sm@381@01  $FVF<next>) r))
  :qid |qp.fvfResTrgDef251|)))
(assert (and
  (forall ((r $Ref)) (!
    (=>
      (Set_in (inv@378@01 r) g@231@01)
      ($FVF.loc_next ($FVF.lookup_next (as sm@380@01  $FVF<next>) r) r))
    :pattern ((inv@378@01 r))
    :qid |quant-u-15684|))
  ($$%precondition ($SortWrappers.$FVF<next>To$Snap (as sm@381@01  $FVF<next>)) g@231@01)))
(push) ; 5
(assert (not (unshared_graph<Bool> ($$ ($SortWrappers.$FVF<next>To$Snap (as sm@381@01  $FVF<next>)) g@231@01))))
(check-sat)
; unsat
(pop) ; 5
; 0.29s
; (get-info :all-statistics)
(assert (unshared_graph<Bool> ($$ ($SortWrappers.$FVF<next>To$Snap (as sm@381@01  $FVF<next>)) g@231@01)))
; [eval] $$(g) == old_g
; [eval] $$(g)
(push) ; 5
(declare-const n@382@01 $Ref)
(push) ; 6
; [eval] (n in refs)
(assert (Set_in n@382@01 g@231@01))
(pop) ; 6
(declare-fun inv@383@01 ($Ref) $Ref)
(declare-fun img@384@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
(declare-const sm@385@01 $FVF<next>)
; Definitional axioms for snapshot map domain
; Definitional axioms for snapshot map values
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@240@01 r) (Set_in (inv@239@01 r) g@231@01))
    (=
      ($FVF.lookup_next (as sm@385@01  $FVF<next>) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@236@01))) r)))
  :pattern (($FVF.lookup_next (as sm@385@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@236@01))) r))
  :qid |qp.fvfValDef253|)))
(assert (forall ((r $Ref)) (!
  ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@236@01))) r) r)
  :pattern (($FVF.lookup_next (as sm@385@01  $FVF<next>) r))
  :qid |qp.fvfResTrgDef254|)))
; Check receiver injectivity
(push) ; 6
(assert (not (forall ((n1@382@01 $Ref) (n2@382@01 $Ref)) (!
  (=>
    (and
      (and
        (Set_in n1@382@01 g@231@01)
        ($FVF.loc_next ($FVF.lookup_next (as sm@385@01  $FVF<next>) n1@382@01) n1@382@01))
      (and
        (Set_in n2@382@01 g@231@01)
        ($FVF.loc_next ($FVF.lookup_next (as sm@385@01  $FVF<next>) n2@382@01) n2@382@01))
      (= n1@382@01 n2@382@01))
    (= n1@382@01 n2@382@01))
  
  :qid |next-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((n@382@01 $Ref)) (!
  (=>
    (Set_in n@382@01 g@231@01)
    (and (= (inv@383@01 n@382@01) n@382@01) (img@384@01 n@382@01)))
  :pattern ((Set_in n@382@01 g@231@01))
  :pattern ((inv@383@01 n@382@01))
  :pattern ((img@384@01 n@382@01))
  :qid |next-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=> (and (img@384@01 r) (Set_in (inv@383@01 r) g@231@01)) (= (inv@383@01 r) r))
  :pattern ((inv@383@01 r))
  :qid |next-fctOfInv|)))
(assert (forall ((r $Ref)) (!
  (=>
    (Set_in (inv@383@01 r) g@231@01)
    ($FVF.loc_next ($FVF.lookup_next (as sm@385@01  $FVF<next>) r) r))
  :pattern ((inv@383@01 r))
  :qid |quant-u-15687|)))
(push) ; 6
(assert (not (forall ((r $Ref)) (!
  (=>
    (and (Set_in (inv@383@01 r) g@231@01) (img@384@01 r) (= r (inv@383@01 r)))
    (>
      (ite
        (and (img@240@01 r) (Set_in (inv@239@01 r) g@231@01))
        $Perm.Write
        $Perm.No)
      $Perm.No))
  
  :qid |quant-u-15688|))))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(declare-const sm@386@01 $FVF<next>)
; Definitional axioms for snapshot map domain
(assert (forall ((r $Ref)) (!
  (and
    (=>
      (Set_in r ($FVF.domain_next (as sm@386@01  $FVF<next>)))
      (and (Set_in (inv@383@01 r) g@231@01) (img@384@01 r)))
    (=>
      (and (Set_in (inv@383@01 r) g@231@01) (img@384@01 r))
      (Set_in r ($FVF.domain_next (as sm@386@01  $FVF<next>)))))
  :pattern ((Set_in r ($FVF.domain_next (as sm@386@01  $FVF<next>))))
  :qid |qp.fvfDomDef257|)))
; Definitional axioms for snapshot map values
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and (Set_in (inv@383@01 r) g@231@01) (img@384@01 r))
      (and (img@240@01 r) (Set_in (inv@239@01 r) g@231@01)))
    (=
      ($FVF.lookup_next (as sm@386@01  $FVF<next>) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@236@01))) r)))
  :pattern (($FVF.lookup_next (as sm@386@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@236@01))) r))
  :qid |qp.fvfValDef255|)))
(assert (forall ((r $Ref)) (!
  ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@236@01))) r) r)
  :pattern (($FVF.lookup_next (as sm@386@01  $FVF<next>) r))
  :qid |qp.fvfResTrgDef256|)))
(assert ($$%precondition ($SortWrappers.$FVF<next>To$Snap (as sm@386@01  $FVF<next>)) g@231@01))
(pop) ; 5
; Joined path conditions
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@240@01 r) (Set_in (inv@239@01 r) g@231@01))
    (=
      ($FVF.lookup_next (as sm@385@01  $FVF<next>) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@236@01))) r)))
  :pattern (($FVF.lookup_next (as sm@385@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@236@01))) r))
  :qid |qp.fvfValDef253|)))
(assert (forall ((r $Ref)) (!
  ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@236@01))) r) r)
  :pattern (($FVF.lookup_next (as sm@385@01  $FVF<next>) r))
  :qid |qp.fvfResTrgDef254|)))
(assert (forall ((n@382@01 $Ref)) (!
  (=>
    (Set_in n@382@01 g@231@01)
    (and (= (inv@383@01 n@382@01) n@382@01) (img@384@01 n@382@01)))
  :pattern ((Set_in n@382@01 g@231@01))
  :pattern ((inv@383@01 n@382@01))
  :pattern ((img@384@01 n@382@01))
  :qid |next-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=> (and (img@384@01 r) (Set_in (inv@383@01 r) g@231@01)) (= (inv@383@01 r) r))
  :pattern ((inv@383@01 r))
  :qid |next-fctOfInv|)))
(assert (forall ((r $Ref)) (!
  (and
    (=>
      (Set_in r ($FVF.domain_next (as sm@386@01  $FVF<next>)))
      (and (Set_in (inv@383@01 r) g@231@01) (img@384@01 r)))
    (=>
      (and (Set_in (inv@383@01 r) g@231@01) (img@384@01 r))
      (Set_in r ($FVF.domain_next (as sm@386@01  $FVF<next>)))))
  :pattern ((Set_in r ($FVF.domain_next (as sm@386@01  $FVF<next>))))
  :qid |qp.fvfDomDef257|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and (Set_in (inv@383@01 r) g@231@01) (img@384@01 r))
      (and (img@240@01 r) (Set_in (inv@239@01 r) g@231@01)))
    (=
      ($FVF.lookup_next (as sm@386@01  $FVF<next>) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@236@01))) r)))
  :pattern (($FVF.lookup_next (as sm@386@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@236@01))) r))
  :qid |qp.fvfValDef255|)))
(assert (forall ((r $Ref)) (!
  ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@236@01))) r) r)
  :pattern (($FVF.lookup_next (as sm@386@01  $FVF<next>) r))
  :qid |qp.fvfResTrgDef256|)))
(assert (and
  (forall ((r $Ref)) (!
    (=>
      (Set_in (inv@383@01 r) g@231@01)
      ($FVF.loc_next ($FVF.lookup_next (as sm@385@01  $FVF<next>) r) r))
    :pattern ((inv@383@01 r))
    :qid |quant-u-15687|))
  ($$%precondition ($SortWrappers.$FVF<next>To$Snap (as sm@386@01  $FVF<next>)) g@231@01)))
(push) ; 5
(assert (not (Set_equal ($$ ($SortWrappers.$FVF<next>To$Snap (as sm@386@01  $FVF<next>)) g@231@01) old_g@283@01)))
(check-sat)
; unsat
(pop) ; 5
; 0.30s
; (get-info :all-statistics)
(assert (Set_equal ($$ ($SortWrappers.$FVF<next>To$Snap (as sm@386@01  $FVF<next>)) g@231@01) old_g@283@01))
; [eval] exists_path($$(g), x, last)
; [eval] $$(g)
(push) ; 5
(declare-const n@387@01 $Ref)
(push) ; 6
; [eval] (n in refs)
(assert (Set_in n@387@01 g@231@01))
(pop) ; 6
(declare-fun inv@388@01 ($Ref) $Ref)
(declare-fun img@389@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
(declare-const sm@390@01 $FVF<next>)
; Definitional axioms for snapshot map domain
; Definitional axioms for snapshot map values
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@240@01 r) (Set_in (inv@239@01 r) g@231@01))
    (=
      ($FVF.lookup_next (as sm@390@01  $FVF<next>) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@236@01))) r)))
  :pattern (($FVF.lookup_next (as sm@390@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@236@01))) r))
  :qid |qp.fvfValDef258|)))
(assert (forall ((r $Ref)) (!
  ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@236@01))) r) r)
  :pattern (($FVF.lookup_next (as sm@390@01  $FVF<next>) r))
  :qid |qp.fvfResTrgDef259|)))
; Check receiver injectivity
(push) ; 6
(assert (not (forall ((n1@387@01 $Ref) (n2@387@01 $Ref)) (!
  (=>
    (and
      (and
        (Set_in n1@387@01 g@231@01)
        ($FVF.loc_next ($FVF.lookup_next (as sm@390@01  $FVF<next>) n1@387@01) n1@387@01))
      (and
        (Set_in n2@387@01 g@231@01)
        ($FVF.loc_next ($FVF.lookup_next (as sm@390@01  $FVF<next>) n2@387@01) n2@387@01))
      (= n1@387@01 n2@387@01))
    (= n1@387@01 n2@387@01))
  
  :qid |next-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((n@387@01 $Ref)) (!
  (=>
    (Set_in n@387@01 g@231@01)
    (and (= (inv@388@01 n@387@01) n@387@01) (img@389@01 n@387@01)))
  :pattern ((Set_in n@387@01 g@231@01))
  :pattern ((inv@388@01 n@387@01))
  :pattern ((img@389@01 n@387@01))
  :qid |next-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=> (and (img@389@01 r) (Set_in (inv@388@01 r) g@231@01)) (= (inv@388@01 r) r))
  :pattern ((inv@388@01 r))
  :qid |next-fctOfInv|)))
(assert (forall ((r $Ref)) (!
  (=>
    (Set_in (inv@388@01 r) g@231@01)
    ($FVF.loc_next ($FVF.lookup_next (as sm@390@01  $FVF<next>) r) r))
  :pattern ((inv@388@01 r))
  :qid |quant-u-15690|)))
(push) ; 6
(assert (not (forall ((r $Ref)) (!
  (=>
    (and (Set_in (inv@388@01 r) g@231@01) (img@389@01 r) (= r (inv@388@01 r)))
    (>
      (ite
        (and (img@240@01 r) (Set_in (inv@239@01 r) g@231@01))
        $Perm.Write
        $Perm.No)
      $Perm.No))
  
  :qid |quant-u-15691|))))
(check-sat)
; unsat
(pop) ; 6
; 0.01s
; (get-info :all-statistics)
(declare-const sm@391@01 $FVF<next>)
; Definitional axioms for snapshot map domain
(assert (forall ((r $Ref)) (!
  (and
    (=>
      (Set_in r ($FVF.domain_next (as sm@391@01  $FVF<next>)))
      (and (Set_in (inv@388@01 r) g@231@01) (img@389@01 r)))
    (=>
      (and (Set_in (inv@388@01 r) g@231@01) (img@389@01 r))
      (Set_in r ($FVF.domain_next (as sm@391@01  $FVF<next>)))))
  :pattern ((Set_in r ($FVF.domain_next (as sm@391@01  $FVF<next>))))
  :qid |qp.fvfDomDef262|)))
; Definitional axioms for snapshot map values
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and (Set_in (inv@388@01 r) g@231@01) (img@389@01 r))
      (and (img@240@01 r) (Set_in (inv@239@01 r) g@231@01)))
    (=
      ($FVF.lookup_next (as sm@391@01  $FVF<next>) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@236@01))) r)))
  :pattern (($FVF.lookup_next (as sm@391@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@236@01))) r))
  :qid |qp.fvfValDef260|)))
(assert (forall ((r $Ref)) (!
  ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@236@01))) r) r)
  :pattern (($FVF.lookup_next (as sm@391@01  $FVF<next>) r))
  :qid |qp.fvfResTrgDef261|)))
(assert ($$%precondition ($SortWrappers.$FVF<next>To$Snap (as sm@391@01  $FVF<next>)) g@231@01))
(pop) ; 5
; Joined path conditions
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@240@01 r) (Set_in (inv@239@01 r) g@231@01))
    (=
      ($FVF.lookup_next (as sm@390@01  $FVF<next>) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@236@01))) r)))
  :pattern (($FVF.lookup_next (as sm@390@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@236@01))) r))
  :qid |qp.fvfValDef258|)))
(assert (forall ((r $Ref)) (!
  ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@236@01))) r) r)
  :pattern (($FVF.lookup_next (as sm@390@01  $FVF<next>) r))
  :qid |qp.fvfResTrgDef259|)))
(assert (forall ((n@387@01 $Ref)) (!
  (=>
    (Set_in n@387@01 g@231@01)
    (and (= (inv@388@01 n@387@01) n@387@01) (img@389@01 n@387@01)))
  :pattern ((Set_in n@387@01 g@231@01))
  :pattern ((inv@388@01 n@387@01))
  :pattern ((img@389@01 n@387@01))
  :qid |next-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=> (and (img@389@01 r) (Set_in (inv@388@01 r) g@231@01)) (= (inv@388@01 r) r))
  :pattern ((inv@388@01 r))
  :qid |next-fctOfInv|)))
(assert (forall ((r $Ref)) (!
  (and
    (=>
      (Set_in r ($FVF.domain_next (as sm@391@01  $FVF<next>)))
      (and (Set_in (inv@388@01 r) g@231@01) (img@389@01 r)))
    (=>
      (and (Set_in (inv@388@01 r) g@231@01) (img@389@01 r))
      (Set_in r ($FVF.domain_next (as sm@391@01  $FVF<next>)))))
  :pattern ((Set_in r ($FVF.domain_next (as sm@391@01  $FVF<next>))))
  :qid |qp.fvfDomDef262|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and (Set_in (inv@388@01 r) g@231@01) (img@389@01 r))
      (and (img@240@01 r) (Set_in (inv@239@01 r) g@231@01)))
    (=
      ($FVF.lookup_next (as sm@391@01  $FVF<next>) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@236@01))) r)))
  :pattern (($FVF.lookup_next (as sm@391@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@236@01))) r))
  :qid |qp.fvfValDef260|)))
(assert (forall ((r $Ref)) (!
  ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@236@01))) r) r)
  :pattern (($FVF.lookup_next (as sm@391@01  $FVF<next>) r))
  :qid |qp.fvfResTrgDef261|)))
(assert (and
  (forall ((r $Ref)) (!
    (=>
      (Set_in (inv@388@01 r) g@231@01)
      ($FVF.loc_next ($FVF.lookup_next (as sm@390@01  $FVF<next>) r) r))
    :pattern ((inv@388@01 r))
    :qid |quant-u-15690|))
  ($$%precondition ($SortWrappers.$FVF<next>To$Snap (as sm@391@01  $FVF<next>)) g@231@01)))
(push) ; 5
(assert (not (exists_path<Bool> ($$ ($SortWrappers.$FVF<next>To$Snap (as sm@391@01  $FVF<next>)) g@231@01) x@232@01 x@232@01)))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(assert (exists_path<Bool> ($$ ($SortWrappers.$FVF<next>To$Snap (as sm@391@01  $FVF<next>)) g@231@01) x@232@01 x@232@01))
; [eval] last.next != null ==> edge($$(g), last, last.next) && exists_path($$(g), last.next, last.next) ==> exists_path($$(g), last, last.next)
; [eval] last.next != null
(assert ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@236@01))) x@232@01) x@232@01))
(push) ; 5
(assert (not (and (img@240@01 x@232@01) (Set_in (inv@239@01 x@232@01) g@231@01))))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(push) ; 5
(push) ; 6
(set-option :timeout 10)
(assert (not (=
  ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@236@01))) x@232@01)
  $Ref.null)))
(check-sat)
; unknown
(pop) ; 6
; 0.01s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 6
(set-option :timeout 10)
(assert (not (not
  (=
    ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@236@01))) x@232@01)
    $Ref.null))))
(check-sat)
; unknown
(pop) ; 6
; 0.01s
; (get-info :all-statistics)
; [then-branch: 53 | Lookup(next, First:(Second:($t@236@01)), x@232@01) != Null | live]
; [else-branch: 53 | Lookup(next, First:(Second:($t@236@01)), x@232@01) == Null | live]
(set-option :timeout 0)
(push) ; 6
; [then-branch: 53 | Lookup(next, First:(Second:($t@236@01)), x@232@01) != Null]
(assert (not
  (=
    ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@236@01))) x@232@01)
    $Ref.null)))
; [eval] edge($$(g), last, last.next) && exists_path($$(g), last.next, last.next) ==> exists_path($$(g), last, last.next)
; [eval] edge($$(g), last, last.next) && exists_path($$(g), last.next, last.next)
; [eval] edge($$(g), last, last.next)
; [eval] $$(g)
(push) ; 7
(declare-const n@392@01 $Ref)
(push) ; 8
; [eval] (n in refs)
(assert (Set_in n@392@01 g@231@01))
(pop) ; 8
(declare-fun inv@393@01 ($Ref) $Ref)
(declare-fun img@394@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
(declare-const sm@395@01 $FVF<next>)
; Definitional axioms for snapshot map domain
; Definitional axioms for snapshot map values
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@240@01 r) (Set_in (inv@239@01 r) g@231@01))
    (=
      ($FVF.lookup_next (as sm@395@01  $FVF<next>) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@236@01))) r)))
  :pattern (($FVF.lookup_next (as sm@395@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@236@01))) r))
  :qid |qp.fvfValDef263|)))
(assert (forall ((r $Ref)) (!
  ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@236@01))) r) r)
  :pattern (($FVF.lookup_next (as sm@395@01  $FVF<next>) r))
  :qid |qp.fvfResTrgDef264|)))
; Check receiver injectivity
(push) ; 8
(assert (not (forall ((n1@392@01 $Ref) (n2@392@01 $Ref)) (!
  (=>
    (and
      (and
        (Set_in n1@392@01 g@231@01)
        ($FVF.loc_next ($FVF.lookup_next (as sm@395@01  $FVF<next>) n1@392@01) n1@392@01))
      (and
        (Set_in n2@392@01 g@231@01)
        ($FVF.loc_next ($FVF.lookup_next (as sm@395@01  $FVF<next>) n2@392@01) n2@392@01))
      (= n1@392@01 n2@392@01))
    (= n1@392@01 n2@392@01))
  
  :qid |next-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 8
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((n@392@01 $Ref)) (!
  (=>
    (Set_in n@392@01 g@231@01)
    (and (= (inv@393@01 n@392@01) n@392@01) (img@394@01 n@392@01)))
  :pattern ((Set_in n@392@01 g@231@01))
  :pattern ((inv@393@01 n@392@01))
  :pattern ((img@394@01 n@392@01))
  :qid |next-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=> (and (img@394@01 r) (Set_in (inv@393@01 r) g@231@01)) (= (inv@393@01 r) r))
  :pattern ((inv@393@01 r))
  :qid |next-fctOfInv|)))
(assert (forall ((r $Ref)) (!
  (=>
    (Set_in (inv@393@01 r) g@231@01)
    ($FVF.loc_next ($FVF.lookup_next (as sm@395@01  $FVF<next>) r) r))
  :pattern ((inv@393@01 r))
  :qid |quant-u-15693|)))
(push) ; 8
(assert (not (forall ((r $Ref)) (!
  (=>
    (and (Set_in (inv@393@01 r) g@231@01) (img@394@01 r) (= r (inv@393@01 r)))
    (>
      (ite
        (and (img@240@01 r) (Set_in (inv@239@01 r) g@231@01))
        $Perm.Write
        $Perm.No)
      $Perm.No))
  
  :qid |quant-u-15694|))))
(check-sat)
; unsat
(pop) ; 8
; 0.00s
; (get-info :all-statistics)
(declare-const sm@396@01 $FVF<next>)
; Definitional axioms for snapshot map domain
(assert (forall ((r $Ref)) (!
  (and
    (=>
      (Set_in r ($FVF.domain_next (as sm@396@01  $FVF<next>)))
      (and (Set_in (inv@393@01 r) g@231@01) (img@394@01 r)))
    (=>
      (and (Set_in (inv@393@01 r) g@231@01) (img@394@01 r))
      (Set_in r ($FVF.domain_next (as sm@396@01  $FVF<next>)))))
  :pattern ((Set_in r ($FVF.domain_next (as sm@396@01  $FVF<next>))))
  :qid |qp.fvfDomDef267|)))
; Definitional axioms for snapshot map values
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and (Set_in (inv@393@01 r) g@231@01) (img@394@01 r))
      (and (img@240@01 r) (Set_in (inv@239@01 r) g@231@01)))
    (=
      ($FVF.lookup_next (as sm@396@01  $FVF<next>) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@236@01))) r)))
  :pattern (($FVF.lookup_next (as sm@396@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@236@01))) r))
  :qid |qp.fvfValDef265|)))
(assert (forall ((r $Ref)) (!
  ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@236@01))) r) r)
  :pattern (($FVF.lookup_next (as sm@396@01  $FVF<next>) r))
  :qid |qp.fvfResTrgDef266|)))
(assert ($$%precondition ($SortWrappers.$FVF<next>To$Snap (as sm@396@01  $FVF<next>)) g@231@01))
(pop) ; 7
; Joined path conditions
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@240@01 r) (Set_in (inv@239@01 r) g@231@01))
    (=
      ($FVF.lookup_next (as sm@395@01  $FVF<next>) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@236@01))) r)))
  :pattern (($FVF.lookup_next (as sm@395@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@236@01))) r))
  :qid |qp.fvfValDef263|)))
(assert (forall ((r $Ref)) (!
  ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@236@01))) r) r)
  :pattern (($FVF.lookup_next (as sm@395@01  $FVF<next>) r))
  :qid |qp.fvfResTrgDef264|)))
(assert (forall ((n@392@01 $Ref)) (!
  (=>
    (Set_in n@392@01 g@231@01)
    (and (= (inv@393@01 n@392@01) n@392@01) (img@394@01 n@392@01)))
  :pattern ((Set_in n@392@01 g@231@01))
  :pattern ((inv@393@01 n@392@01))
  :pattern ((img@394@01 n@392@01))
  :qid |next-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=> (and (img@394@01 r) (Set_in (inv@393@01 r) g@231@01)) (= (inv@393@01 r) r))
  :pattern ((inv@393@01 r))
  :qid |next-fctOfInv|)))
(assert (forall ((r $Ref)) (!
  (and
    (=>
      (Set_in r ($FVF.domain_next (as sm@396@01  $FVF<next>)))
      (and (Set_in (inv@393@01 r) g@231@01) (img@394@01 r)))
    (=>
      (and (Set_in (inv@393@01 r) g@231@01) (img@394@01 r))
      (Set_in r ($FVF.domain_next (as sm@396@01  $FVF<next>)))))
  :pattern ((Set_in r ($FVF.domain_next (as sm@396@01  $FVF<next>))))
  :qid |qp.fvfDomDef267|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and (Set_in (inv@393@01 r) g@231@01) (img@394@01 r))
      (and (img@240@01 r) (Set_in (inv@239@01 r) g@231@01)))
    (=
      ($FVF.lookup_next (as sm@396@01  $FVF<next>) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@236@01))) r)))
  :pattern (($FVF.lookup_next (as sm@396@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@236@01))) r))
  :qid |qp.fvfValDef265|)))
(assert (forall ((r $Ref)) (!
  ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@236@01))) r) r)
  :pattern (($FVF.lookup_next (as sm@396@01  $FVF<next>) r))
  :qid |qp.fvfResTrgDef266|)))
(assert (and
  (forall ((r $Ref)) (!
    (=>
      (Set_in (inv@393@01 r) g@231@01)
      ($FVF.loc_next ($FVF.lookup_next (as sm@395@01  $FVF<next>) r) r))
    :pattern ((inv@393@01 r))
    :qid |quant-u-15693|))
  ($$%precondition ($SortWrappers.$FVF<next>To$Snap (as sm@396@01  $FVF<next>)) g@231@01)))
(push) ; 7
(assert (not (and (img@240@01 x@232@01) (Set_in (inv@239@01 x@232@01) g@231@01))))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(push) ; 7
; [then-branch: 54 | !(edge[Bool]($$(sm@396@01, g@231@01), x@232@01, Lookup(next, First:(Second:($t@236@01)), x@232@01))) | live]
; [else-branch: 54 | edge[Bool]($$(sm@396@01, g@231@01), x@232@01, Lookup(next, First:(Second:($t@236@01)), x@232@01)) | live]
(push) ; 8
; [then-branch: 54 | !(edge[Bool]($$(sm@396@01, g@231@01), x@232@01, Lookup(next, First:(Second:($t@236@01)), x@232@01)))]
(assert (not
  (edge<Bool> ($$ ($SortWrappers.$FVF<next>To$Snap (as sm@396@01  $FVF<next>)) g@231@01) x@232@01 ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@236@01))) x@232@01))))
(pop) ; 8
(push) ; 8
; [else-branch: 54 | edge[Bool]($$(sm@396@01, g@231@01), x@232@01, Lookup(next, First:(Second:($t@236@01)), x@232@01))]
(assert (edge<Bool> ($$ ($SortWrappers.$FVF<next>To$Snap (as sm@396@01  $FVF<next>)) g@231@01) x@232@01 ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@236@01))) x@232@01)))
; [eval] exists_path($$(g), last.next, last.next)
; [eval] $$(g)
(push) ; 9
(declare-const n@397@01 $Ref)
(push) ; 10
; [eval] (n in refs)
(assert (Set_in n@397@01 g@231@01))
(pop) ; 10
(declare-fun inv@398@01 ($Ref) $Ref)
(declare-fun img@399@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
(declare-const sm@400@01 $FVF<next>)
; Definitional axioms for snapshot map domain
; Definitional axioms for snapshot map values
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@240@01 r) (Set_in (inv@239@01 r) g@231@01))
    (=
      ($FVF.lookup_next (as sm@400@01  $FVF<next>) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@236@01))) r)))
  :pattern (($FVF.lookup_next (as sm@400@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@236@01))) r))
  :qid |qp.fvfValDef268|)))
(assert (forall ((r $Ref)) (!
  ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@236@01))) r) r)
  :pattern (($FVF.lookup_next (as sm@400@01  $FVF<next>) r))
  :qid |qp.fvfResTrgDef269|)))
; Check receiver injectivity
(push) ; 10
(assert (not (forall ((n1@397@01 $Ref) (n2@397@01 $Ref)) (!
  (=>
    (and
      (and
        (Set_in n1@397@01 g@231@01)
        ($FVF.loc_next ($FVF.lookup_next (as sm@400@01  $FVF<next>) n1@397@01) n1@397@01))
      (and
        (Set_in n2@397@01 g@231@01)
        ($FVF.loc_next ($FVF.lookup_next (as sm@400@01  $FVF<next>) n2@397@01) n2@397@01))
      (= n1@397@01 n2@397@01))
    (= n1@397@01 n2@397@01))
  
  :qid |next-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 10
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((n@397@01 $Ref)) (!
  (=>
    (Set_in n@397@01 g@231@01)
    (and (= (inv@398@01 n@397@01) n@397@01) (img@399@01 n@397@01)))
  :pattern ((Set_in n@397@01 g@231@01))
  :pattern ((inv@398@01 n@397@01))
  :pattern ((img@399@01 n@397@01))
  :qid |next-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=> (and (img@399@01 r) (Set_in (inv@398@01 r) g@231@01)) (= (inv@398@01 r) r))
  :pattern ((inv@398@01 r))
  :qid |next-fctOfInv|)))
(assert (forall ((r $Ref)) (!
  (=>
    (Set_in (inv@398@01 r) g@231@01)
    ($FVF.loc_next ($FVF.lookup_next (as sm@400@01  $FVF<next>) r) r))
  :pattern ((inv@398@01 r))
  :qid |quant-u-15696|)))
(push) ; 10
(assert (not (forall ((r $Ref)) (!
  (=>
    (and (Set_in (inv@398@01 r) g@231@01) (img@399@01 r) (= r (inv@398@01 r)))
    (>
      (ite
        (and (img@240@01 r) (Set_in (inv@239@01 r) g@231@01))
        $Perm.Write
        $Perm.No)
      $Perm.No))
  
  :qid |quant-u-15697|))))
(check-sat)
; unsat
(pop) ; 10
; 0.00s
; (get-info :all-statistics)
(declare-const sm@401@01 $FVF<next>)
; Definitional axioms for snapshot map domain
(assert (forall ((r $Ref)) (!
  (and
    (=>
      (Set_in r ($FVF.domain_next (as sm@401@01  $FVF<next>)))
      (and (Set_in (inv@398@01 r) g@231@01) (img@399@01 r)))
    (=>
      (and (Set_in (inv@398@01 r) g@231@01) (img@399@01 r))
      (Set_in r ($FVF.domain_next (as sm@401@01  $FVF<next>)))))
  :pattern ((Set_in r ($FVF.domain_next (as sm@401@01  $FVF<next>))))
  :qid |qp.fvfDomDef272|)))
; Definitional axioms for snapshot map values
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and (Set_in (inv@398@01 r) g@231@01) (img@399@01 r))
      (and (img@240@01 r) (Set_in (inv@239@01 r) g@231@01)))
    (=
      ($FVF.lookup_next (as sm@401@01  $FVF<next>) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@236@01))) r)))
  :pattern (($FVF.lookup_next (as sm@401@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@236@01))) r))
  :qid |qp.fvfValDef270|)))
(assert (forall ((r $Ref)) (!
  ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@236@01))) r) r)
  :pattern (($FVF.lookup_next (as sm@401@01  $FVF<next>) r))
  :qid |qp.fvfResTrgDef271|)))
(assert ($$%precondition ($SortWrappers.$FVF<next>To$Snap (as sm@401@01  $FVF<next>)) g@231@01))
(pop) ; 9
; Joined path conditions
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@240@01 r) (Set_in (inv@239@01 r) g@231@01))
    (=
      ($FVF.lookup_next (as sm@400@01  $FVF<next>) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@236@01))) r)))
  :pattern (($FVF.lookup_next (as sm@400@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@236@01))) r))
  :qid |qp.fvfValDef268|)))
(assert (forall ((r $Ref)) (!
  ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@236@01))) r) r)
  :pattern (($FVF.lookup_next (as sm@400@01  $FVF<next>) r))
  :qid |qp.fvfResTrgDef269|)))
(assert (forall ((n@397@01 $Ref)) (!
  (=>
    (Set_in n@397@01 g@231@01)
    (and (= (inv@398@01 n@397@01) n@397@01) (img@399@01 n@397@01)))
  :pattern ((Set_in n@397@01 g@231@01))
  :pattern ((inv@398@01 n@397@01))
  :pattern ((img@399@01 n@397@01))
  :qid |next-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=> (and (img@399@01 r) (Set_in (inv@398@01 r) g@231@01)) (= (inv@398@01 r) r))
  :pattern ((inv@398@01 r))
  :qid |next-fctOfInv|)))
(assert (forall ((r $Ref)) (!
  (and
    (=>
      (Set_in r ($FVF.domain_next (as sm@401@01  $FVF<next>)))
      (and (Set_in (inv@398@01 r) g@231@01) (img@399@01 r)))
    (=>
      (and (Set_in (inv@398@01 r) g@231@01) (img@399@01 r))
      (Set_in r ($FVF.domain_next (as sm@401@01  $FVF<next>)))))
  :pattern ((Set_in r ($FVF.domain_next (as sm@401@01  $FVF<next>))))
  :qid |qp.fvfDomDef272|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and (Set_in (inv@398@01 r) g@231@01) (img@399@01 r))
      (and (img@240@01 r) (Set_in (inv@239@01 r) g@231@01)))
    (=
      ($FVF.lookup_next (as sm@401@01  $FVF<next>) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@236@01))) r)))
  :pattern (($FVF.lookup_next (as sm@401@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@236@01))) r))
  :qid |qp.fvfValDef270|)))
(assert (forall ((r $Ref)) (!
  ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@236@01))) r) r)
  :pattern (($FVF.lookup_next (as sm@401@01  $FVF<next>) r))
  :qid |qp.fvfResTrgDef271|)))
(assert (and
  (forall ((r $Ref)) (!
    (=>
      (Set_in (inv@398@01 r) g@231@01)
      ($FVF.loc_next ($FVF.lookup_next (as sm@400@01  $FVF<next>) r) r))
    :pattern ((inv@398@01 r))
    :qid |quant-u-15696|))
  ($$%precondition ($SortWrappers.$FVF<next>To$Snap (as sm@401@01  $FVF<next>)) g@231@01)))
(push) ; 9
(assert (not (and (img@240@01 x@232@01) (Set_in (inv@239@01 x@232@01) g@231@01))))
(check-sat)
; unsat
(pop) ; 9
; 0.00s
; (get-info :all-statistics)
(push) ; 9
(assert (not (and (img@240@01 x@232@01) (Set_in (inv@239@01 x@232@01) g@231@01))))
(check-sat)
; unsat
(pop) ; 9
; 0.00s
; (get-info :all-statistics)
(pop) ; 8
(pop) ; 7
; Joined path conditions
; Joined path conditions
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@240@01 r) (Set_in (inv@239@01 r) g@231@01))
    (=
      ($FVF.lookup_next (as sm@400@01  $FVF<next>) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@236@01))) r)))
  :pattern (($FVF.lookup_next (as sm@400@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@236@01))) r))
  :qid |qp.fvfValDef268|)))
(assert (forall ((r $Ref)) (!
  ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@236@01))) r) r)
  :pattern (($FVF.lookup_next (as sm@400@01  $FVF<next>) r))
  :qid |qp.fvfResTrgDef269|)))
(assert (forall ((n@397@01 $Ref)) (!
  (=>
    (Set_in n@397@01 g@231@01)
    (and (= (inv@398@01 n@397@01) n@397@01) (img@399@01 n@397@01)))
  :pattern ((Set_in n@397@01 g@231@01))
  :pattern ((inv@398@01 n@397@01))
  :pattern ((img@399@01 n@397@01))
  :qid |next-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=> (and (img@399@01 r) (Set_in (inv@398@01 r) g@231@01)) (= (inv@398@01 r) r))
  :pattern ((inv@398@01 r))
  :qid |next-fctOfInv|)))
(assert (forall ((r $Ref)) (!
  (and
    (=>
      (Set_in r ($FVF.domain_next (as sm@401@01  $FVF<next>)))
      (and (Set_in (inv@398@01 r) g@231@01) (img@399@01 r)))
    (=>
      (and (Set_in (inv@398@01 r) g@231@01) (img@399@01 r))
      (Set_in r ($FVF.domain_next (as sm@401@01  $FVF<next>)))))
  :pattern ((Set_in r ($FVF.domain_next (as sm@401@01  $FVF<next>))))
  :qid |qp.fvfDomDef272|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and (Set_in (inv@398@01 r) g@231@01) (img@399@01 r))
      (and (img@240@01 r) (Set_in (inv@239@01 r) g@231@01)))
    (=
      ($FVF.lookup_next (as sm@401@01  $FVF<next>) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@236@01))) r)))
  :pattern (($FVF.lookup_next (as sm@401@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@236@01))) r))
  :qid |qp.fvfValDef270|)))
(assert (forall ((r $Ref)) (!
  ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@236@01))) r) r)
  :pattern (($FVF.lookup_next (as sm@401@01  $FVF<next>) r))
  :qid |qp.fvfResTrgDef271|)))
(assert (=>
  (edge<Bool> ($$ ($SortWrappers.$FVF<next>To$Snap (as sm@396@01  $FVF<next>)) g@231@01) x@232@01 ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@236@01))) x@232@01))
  (and
    (edge<Bool> ($$ ($SortWrappers.$FVF<next>To$Snap (as sm@396@01  $FVF<next>)) g@231@01) x@232@01 ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@236@01))) x@232@01))
    (forall ((r $Ref)) (!
      (=>
        (Set_in (inv@398@01 r) g@231@01)
        ($FVF.loc_next ($FVF.lookup_next (as sm@400@01  $FVF<next>) r) r))
      :pattern ((inv@398@01 r))
      :qid |quant-u-15696|))
    ($$%precondition ($SortWrappers.$FVF<next>To$Snap (as sm@401@01  $FVF<next>)) g@231@01))))
(assert (or
  (edge<Bool> ($$ ($SortWrappers.$FVF<next>To$Snap (as sm@396@01  $FVF<next>)) g@231@01) x@232@01 ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@236@01))) x@232@01))
  (not
    (edge<Bool> ($$ ($SortWrappers.$FVF<next>To$Snap (as sm@396@01  $FVF<next>)) g@231@01) x@232@01 ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@236@01))) x@232@01)))))
(push) ; 7
(push) ; 8
(set-option :timeout 10)
(assert (not (not
  (and
    (edge<Bool> ($$ ($SortWrappers.$FVF<next>To$Snap (as sm@396@01  $FVF<next>)) g@231@01) x@232@01 ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@236@01))) x@232@01))
    (exists_path<Bool> ($$ ($SortWrappers.$FVF<next>To$Snap (as sm@401@01  $FVF<next>)) g@231@01) ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@236@01))) x@232@01) ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@236@01))) x@232@01))))))
(check-sat)
; unknown
(pop) ; 8
; 0.01s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 8
(set-option :timeout 10)
(assert (not (and
  (edge<Bool> ($$ ($SortWrappers.$FVF<next>To$Snap (as sm@396@01  $FVF<next>)) g@231@01) x@232@01 ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@236@01))) x@232@01))
  (exists_path<Bool> ($$ ($SortWrappers.$FVF<next>To$Snap (as sm@401@01  $FVF<next>)) g@231@01) ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@236@01))) x@232@01) ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@236@01))) x@232@01)))))
(check-sat)
; unknown
(pop) ; 8
; 0.01s
; (get-info :all-statistics)
; [then-branch: 55 | edge[Bool]($$(sm@396@01, g@231@01), x@232@01, Lookup(next, First:(Second:($t@236@01)), x@232@01)) && exists_path[Bool]($$(sm@401@01, g@231@01), Lookup(next, First:(Second:($t@236@01)), x@232@01), Lookup(next, First:(Second:($t@236@01)), x@232@01)) | live]
; [else-branch: 55 | !(edge[Bool]($$(sm@396@01, g@231@01), x@232@01, Lookup(next, First:(Second:($t@236@01)), x@232@01)) && exists_path[Bool]($$(sm@401@01, g@231@01), Lookup(next, First:(Second:($t@236@01)), x@232@01), Lookup(next, First:(Second:($t@236@01)), x@232@01))) | live]
(set-option :timeout 0)
(push) ; 8
; [then-branch: 55 | edge[Bool]($$(sm@396@01, g@231@01), x@232@01, Lookup(next, First:(Second:($t@236@01)), x@232@01)) && exists_path[Bool]($$(sm@401@01, g@231@01), Lookup(next, First:(Second:($t@236@01)), x@232@01), Lookup(next, First:(Second:($t@236@01)), x@232@01))]
(assert (and
  (edge<Bool> ($$ ($SortWrappers.$FVF<next>To$Snap (as sm@396@01  $FVF<next>)) g@231@01) x@232@01 ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@236@01))) x@232@01))
  (exists_path<Bool> ($$ ($SortWrappers.$FVF<next>To$Snap (as sm@401@01  $FVF<next>)) g@231@01) ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@236@01))) x@232@01) ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@236@01))) x@232@01))))
; [eval] exists_path($$(g), last, last.next)
; [eval] $$(g)
(push) ; 9
(declare-const n@402@01 $Ref)
(push) ; 10
; [eval] (n in refs)
(assert (Set_in n@402@01 g@231@01))
(pop) ; 10
(declare-fun inv@403@01 ($Ref) $Ref)
(declare-fun img@404@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
(declare-const sm@405@01 $FVF<next>)
; Definitional axioms for snapshot map domain
; Definitional axioms for snapshot map values
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@240@01 r) (Set_in (inv@239@01 r) g@231@01))
    (=
      ($FVF.lookup_next (as sm@405@01  $FVF<next>) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@236@01))) r)))
  :pattern (($FVF.lookup_next (as sm@405@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@236@01))) r))
  :qid |qp.fvfValDef273|)))
(assert (forall ((r $Ref)) (!
  ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@236@01))) r) r)
  :pattern (($FVF.lookup_next (as sm@405@01  $FVF<next>) r))
  :qid |qp.fvfResTrgDef274|)))
; Check receiver injectivity
(push) ; 10
(assert (not (forall ((n1@402@01 $Ref) (n2@402@01 $Ref)) (!
  (=>
    (and
      (and
        (Set_in n1@402@01 g@231@01)
        ($FVF.loc_next ($FVF.lookup_next (as sm@405@01  $FVF<next>) n1@402@01) n1@402@01))
      (and
        (Set_in n2@402@01 g@231@01)
        ($FVF.loc_next ($FVF.lookup_next (as sm@405@01  $FVF<next>) n2@402@01) n2@402@01))
      (= n1@402@01 n2@402@01))
    (= n1@402@01 n2@402@01))
  
  :qid |next-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 10
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((n@402@01 $Ref)) (!
  (=>
    (Set_in n@402@01 g@231@01)
    (and (= (inv@403@01 n@402@01) n@402@01) (img@404@01 n@402@01)))
  :pattern ((Set_in n@402@01 g@231@01))
  :pattern ((inv@403@01 n@402@01))
  :pattern ((img@404@01 n@402@01))
  :qid |next-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=> (and (img@404@01 r) (Set_in (inv@403@01 r) g@231@01)) (= (inv@403@01 r) r))
  :pattern ((inv@403@01 r))
  :qid |next-fctOfInv|)))
(assert (forall ((r $Ref)) (!
  (=>
    (Set_in (inv@403@01 r) g@231@01)
    ($FVF.loc_next ($FVF.lookup_next (as sm@405@01  $FVF<next>) r) r))
  :pattern ((inv@403@01 r))
  :qid |quant-u-15699|)))
(push) ; 10
(assert (not (forall ((r $Ref)) (!
  (=>
    (and (Set_in (inv@403@01 r) g@231@01) (img@404@01 r) (= r (inv@403@01 r)))
    (>
      (ite
        (and (img@240@01 r) (Set_in (inv@239@01 r) g@231@01))
        $Perm.Write
        $Perm.No)
      $Perm.No))
  
  :qid |quant-u-15700|))))
(check-sat)
; unsat
(pop) ; 10
; 0.00s
; (get-info :all-statistics)
(declare-const sm@406@01 $FVF<next>)
; Definitional axioms for snapshot map domain
(assert (forall ((r $Ref)) (!
  (and
    (=>
      (Set_in r ($FVF.domain_next (as sm@406@01  $FVF<next>)))
      (and (Set_in (inv@403@01 r) g@231@01) (img@404@01 r)))
    (=>
      (and (Set_in (inv@403@01 r) g@231@01) (img@404@01 r))
      (Set_in r ($FVF.domain_next (as sm@406@01  $FVF<next>)))))
  :pattern ((Set_in r ($FVF.domain_next (as sm@406@01  $FVF<next>))))
  :qid |qp.fvfDomDef277|)))
; Definitional axioms for snapshot map values
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and (Set_in (inv@403@01 r) g@231@01) (img@404@01 r))
      (and (img@240@01 r) (Set_in (inv@239@01 r) g@231@01)))
    (=
      ($FVF.lookup_next (as sm@406@01  $FVF<next>) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@236@01))) r)))
  :pattern (($FVF.lookup_next (as sm@406@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@236@01))) r))
  :qid |qp.fvfValDef275|)))
(assert (forall ((r $Ref)) (!
  ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@236@01))) r) r)
  :pattern (($FVF.lookup_next (as sm@406@01  $FVF<next>) r))
  :qid |qp.fvfResTrgDef276|)))
(assert ($$%precondition ($SortWrappers.$FVF<next>To$Snap (as sm@406@01  $FVF<next>)) g@231@01))
(pop) ; 9
; Joined path conditions
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@240@01 r) (Set_in (inv@239@01 r) g@231@01))
    (=
      ($FVF.lookup_next (as sm@405@01  $FVF<next>) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@236@01))) r)))
  :pattern (($FVF.lookup_next (as sm@405@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@236@01))) r))
  :qid |qp.fvfValDef273|)))
(assert (forall ((r $Ref)) (!
  ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@236@01))) r) r)
  :pattern (($FVF.lookup_next (as sm@405@01  $FVF<next>) r))
  :qid |qp.fvfResTrgDef274|)))
(assert (forall ((n@402@01 $Ref)) (!
  (=>
    (Set_in n@402@01 g@231@01)
    (and (= (inv@403@01 n@402@01) n@402@01) (img@404@01 n@402@01)))
  :pattern ((Set_in n@402@01 g@231@01))
  :pattern ((inv@403@01 n@402@01))
  :pattern ((img@404@01 n@402@01))
  :qid |next-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=> (and (img@404@01 r) (Set_in (inv@403@01 r) g@231@01)) (= (inv@403@01 r) r))
  :pattern ((inv@403@01 r))
  :qid |next-fctOfInv|)))
(assert (forall ((r $Ref)) (!
  (and
    (=>
      (Set_in r ($FVF.domain_next (as sm@406@01  $FVF<next>)))
      (and (Set_in (inv@403@01 r) g@231@01) (img@404@01 r)))
    (=>
      (and (Set_in (inv@403@01 r) g@231@01) (img@404@01 r))
      (Set_in r ($FVF.domain_next (as sm@406@01  $FVF<next>)))))
  :pattern ((Set_in r ($FVF.domain_next (as sm@406@01  $FVF<next>))))
  :qid |qp.fvfDomDef277|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and (Set_in (inv@403@01 r) g@231@01) (img@404@01 r))
      (and (img@240@01 r) (Set_in (inv@239@01 r) g@231@01)))
    (=
      ($FVF.lookup_next (as sm@406@01  $FVF<next>) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@236@01))) r)))
  :pattern (($FVF.lookup_next (as sm@406@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@236@01))) r))
  :qid |qp.fvfValDef275|)))
(assert (forall ((r $Ref)) (!
  ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@236@01))) r) r)
  :pattern (($FVF.lookup_next (as sm@406@01  $FVF<next>) r))
  :qid |qp.fvfResTrgDef276|)))
(assert (and
  (forall ((r $Ref)) (!
    (=>
      (Set_in (inv@403@01 r) g@231@01)
      ($FVF.loc_next ($FVF.lookup_next (as sm@405@01  $FVF<next>) r) r))
    :pattern ((inv@403@01 r))
    :qid |quant-u-15699|))
  ($$%precondition ($SortWrappers.$FVF<next>To$Snap (as sm@406@01  $FVF<next>)) g@231@01)))
(push) ; 9
(assert (not (and (img@240@01 x@232@01) (Set_in (inv@239@01 x@232@01) g@231@01))))
(check-sat)
; unsat
(pop) ; 9
; 0.00s
; (get-info :all-statistics)
(pop) ; 8
(push) ; 8
; [else-branch: 55 | !(edge[Bool]($$(sm@396@01, g@231@01), x@232@01, Lookup(next, First:(Second:($t@236@01)), x@232@01)) && exists_path[Bool]($$(sm@401@01, g@231@01), Lookup(next, First:(Second:($t@236@01)), x@232@01), Lookup(next, First:(Second:($t@236@01)), x@232@01)))]
(assert (not
  (and
    (edge<Bool> ($$ ($SortWrappers.$FVF<next>To$Snap (as sm@396@01  $FVF<next>)) g@231@01) x@232@01 ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@236@01))) x@232@01))
    (exists_path<Bool> ($$ ($SortWrappers.$FVF<next>To$Snap (as sm@401@01  $FVF<next>)) g@231@01) ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@236@01))) x@232@01) ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@236@01))) x@232@01)))))
(pop) ; 8
(pop) ; 7
; Joined path conditions
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@240@01 r) (Set_in (inv@239@01 r) g@231@01))
    (=
      ($FVF.lookup_next (as sm@405@01  $FVF<next>) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@236@01))) r)))
  :pattern (($FVF.lookup_next (as sm@405@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@236@01))) r))
  :qid |qp.fvfValDef273|)))
(assert (forall ((r $Ref)) (!
  ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@236@01))) r) r)
  :pattern (($FVF.lookup_next (as sm@405@01  $FVF<next>) r))
  :qid |qp.fvfResTrgDef274|)))
(assert (forall ((n@402@01 $Ref)) (!
  (=>
    (Set_in n@402@01 g@231@01)
    (and (= (inv@403@01 n@402@01) n@402@01) (img@404@01 n@402@01)))
  :pattern ((Set_in n@402@01 g@231@01))
  :pattern ((inv@403@01 n@402@01))
  :pattern ((img@404@01 n@402@01))
  :qid |next-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=> (and (img@404@01 r) (Set_in (inv@403@01 r) g@231@01)) (= (inv@403@01 r) r))
  :pattern ((inv@403@01 r))
  :qid |next-fctOfInv|)))
(assert (forall ((r $Ref)) (!
  (and
    (=>
      (Set_in r ($FVF.domain_next (as sm@406@01  $FVF<next>)))
      (and (Set_in (inv@403@01 r) g@231@01) (img@404@01 r)))
    (=>
      (and (Set_in (inv@403@01 r) g@231@01) (img@404@01 r))
      (Set_in r ($FVF.domain_next (as sm@406@01  $FVF<next>)))))
  :pattern ((Set_in r ($FVF.domain_next (as sm@406@01  $FVF<next>))))
  :qid |qp.fvfDomDef277|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and (Set_in (inv@403@01 r) g@231@01) (img@404@01 r))
      (and (img@240@01 r) (Set_in (inv@239@01 r) g@231@01)))
    (=
      ($FVF.lookup_next (as sm@406@01  $FVF<next>) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@236@01))) r)))
  :pattern (($FVF.lookup_next (as sm@406@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@236@01))) r))
  :qid |qp.fvfValDef275|)))
(assert (forall ((r $Ref)) (!
  ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@236@01))) r) r)
  :pattern (($FVF.lookup_next (as sm@406@01  $FVF<next>) r))
  :qid |qp.fvfResTrgDef276|)))
(assert (=>
  (and
    (edge<Bool> ($$ ($SortWrappers.$FVF<next>To$Snap (as sm@396@01  $FVF<next>)) g@231@01) x@232@01 ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@236@01))) x@232@01))
    (exists_path<Bool> ($$ ($SortWrappers.$FVF<next>To$Snap (as sm@401@01  $FVF<next>)) g@231@01) ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@236@01))) x@232@01) ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@236@01))) x@232@01)))
  (and
    (edge<Bool> ($$ ($SortWrappers.$FVF<next>To$Snap (as sm@396@01  $FVF<next>)) g@231@01) x@232@01 ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@236@01))) x@232@01))
    (exists_path<Bool> ($$ ($SortWrappers.$FVF<next>To$Snap (as sm@401@01  $FVF<next>)) g@231@01) ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@236@01))) x@232@01) ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@236@01))) x@232@01))
    (forall ((r $Ref)) (!
      (=>
        (Set_in (inv@403@01 r) g@231@01)
        ($FVF.loc_next ($FVF.lookup_next (as sm@405@01  $FVF<next>) r) r))
      :pattern ((inv@403@01 r))
      :qid |quant-u-15699|))
    ($$%precondition ($SortWrappers.$FVF<next>To$Snap (as sm@406@01  $FVF<next>)) g@231@01))))
; Joined path conditions
(assert (or
  (not
    (and
      (edge<Bool> ($$ ($SortWrappers.$FVF<next>To$Snap (as sm@396@01  $FVF<next>)) g@231@01) x@232@01 ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@236@01))) x@232@01))
      (exists_path<Bool> ($$ ($SortWrappers.$FVF<next>To$Snap (as sm@401@01  $FVF<next>)) g@231@01) ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@236@01))) x@232@01) ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@236@01))) x@232@01))))
  (and
    (edge<Bool> ($$ ($SortWrappers.$FVF<next>To$Snap (as sm@396@01  $FVF<next>)) g@231@01) x@232@01 ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@236@01))) x@232@01))
    (exists_path<Bool> ($$ ($SortWrappers.$FVF<next>To$Snap (as sm@401@01  $FVF<next>)) g@231@01) ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@236@01))) x@232@01) ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@236@01))) x@232@01)))))
(pop) ; 6
(push) ; 6
; [else-branch: 53 | Lookup(next, First:(Second:($t@236@01)), x@232@01) == Null]
(assert (=
  ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@236@01))) x@232@01)
  $Ref.null))
(pop) ; 6
(pop) ; 5
; Joined path conditions
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@240@01 r) (Set_in (inv@239@01 r) g@231@01))
    (=
      ($FVF.lookup_next (as sm@395@01  $FVF<next>) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@236@01))) r)))
  :pattern (($FVF.lookup_next (as sm@395@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@236@01))) r))
  :qid |qp.fvfValDef263|)))
(assert (forall ((r $Ref)) (!
  ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@236@01))) r) r)
  :pattern (($FVF.lookup_next (as sm@395@01  $FVF<next>) r))
  :qid |qp.fvfResTrgDef264|)))
(assert (forall ((n@392@01 $Ref)) (!
  (=>
    (Set_in n@392@01 g@231@01)
    (and (= (inv@393@01 n@392@01) n@392@01) (img@394@01 n@392@01)))
  :pattern ((Set_in n@392@01 g@231@01))
  :pattern ((inv@393@01 n@392@01))
  :pattern ((img@394@01 n@392@01))
  :qid |next-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=> (and (img@394@01 r) (Set_in (inv@393@01 r) g@231@01)) (= (inv@393@01 r) r))
  :pattern ((inv@393@01 r))
  :qid |next-fctOfInv|)))
(assert (forall ((r $Ref)) (!
  (and
    (=>
      (Set_in r ($FVF.domain_next (as sm@396@01  $FVF<next>)))
      (and (Set_in (inv@393@01 r) g@231@01) (img@394@01 r)))
    (=>
      (and (Set_in (inv@393@01 r) g@231@01) (img@394@01 r))
      (Set_in r ($FVF.domain_next (as sm@396@01  $FVF<next>)))))
  :pattern ((Set_in r ($FVF.domain_next (as sm@396@01  $FVF<next>))))
  :qid |qp.fvfDomDef267|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and (Set_in (inv@393@01 r) g@231@01) (img@394@01 r))
      (and (img@240@01 r) (Set_in (inv@239@01 r) g@231@01)))
    (=
      ($FVF.lookup_next (as sm@396@01  $FVF<next>) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@236@01))) r)))
  :pattern (($FVF.lookup_next (as sm@396@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@236@01))) r))
  :qid |qp.fvfValDef265|)))
(assert (forall ((r $Ref)) (!
  ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@236@01))) r) r)
  :pattern (($FVF.lookup_next (as sm@396@01  $FVF<next>) r))
  :qid |qp.fvfResTrgDef266|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@240@01 r) (Set_in (inv@239@01 r) g@231@01))
    (=
      ($FVF.lookup_next (as sm@400@01  $FVF<next>) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@236@01))) r)))
  :pattern (($FVF.lookup_next (as sm@400@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@236@01))) r))
  :qid |qp.fvfValDef268|)))
(assert (forall ((r $Ref)) (!
  ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@236@01))) r) r)
  :pattern (($FVF.lookup_next (as sm@400@01  $FVF<next>) r))
  :qid |qp.fvfResTrgDef269|)))
(assert (forall ((n@397@01 $Ref)) (!
  (=>
    (Set_in n@397@01 g@231@01)
    (and (= (inv@398@01 n@397@01) n@397@01) (img@399@01 n@397@01)))
  :pattern ((Set_in n@397@01 g@231@01))
  :pattern ((inv@398@01 n@397@01))
  :pattern ((img@399@01 n@397@01))
  :qid |next-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=> (and (img@399@01 r) (Set_in (inv@398@01 r) g@231@01)) (= (inv@398@01 r) r))
  :pattern ((inv@398@01 r))
  :qid |next-fctOfInv|)))
(assert (forall ((r $Ref)) (!
  (and
    (=>
      (Set_in r ($FVF.domain_next (as sm@401@01  $FVF<next>)))
      (and (Set_in (inv@398@01 r) g@231@01) (img@399@01 r)))
    (=>
      (and (Set_in (inv@398@01 r) g@231@01) (img@399@01 r))
      (Set_in r ($FVF.domain_next (as sm@401@01  $FVF<next>)))))
  :pattern ((Set_in r ($FVF.domain_next (as sm@401@01  $FVF<next>))))
  :qid |qp.fvfDomDef272|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and (Set_in (inv@398@01 r) g@231@01) (img@399@01 r))
      (and (img@240@01 r) (Set_in (inv@239@01 r) g@231@01)))
    (=
      ($FVF.lookup_next (as sm@401@01  $FVF<next>) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@236@01))) r)))
  :pattern (($FVF.lookup_next (as sm@401@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@236@01))) r))
  :qid |qp.fvfValDef270|)))
(assert (forall ((r $Ref)) (!
  ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@236@01))) r) r)
  :pattern (($FVF.lookup_next (as sm@401@01  $FVF<next>) r))
  :qid |qp.fvfResTrgDef271|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@240@01 r) (Set_in (inv@239@01 r) g@231@01))
    (=
      ($FVF.lookup_next (as sm@405@01  $FVF<next>) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@236@01))) r)))
  :pattern (($FVF.lookup_next (as sm@405@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@236@01))) r))
  :qid |qp.fvfValDef273|)))
(assert (forall ((r $Ref)) (!
  ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@236@01))) r) r)
  :pattern (($FVF.lookup_next (as sm@405@01  $FVF<next>) r))
  :qid |qp.fvfResTrgDef274|)))
(assert (forall ((n@402@01 $Ref)) (!
  (=>
    (Set_in n@402@01 g@231@01)
    (and (= (inv@403@01 n@402@01) n@402@01) (img@404@01 n@402@01)))
  :pattern ((Set_in n@402@01 g@231@01))
  :pattern ((inv@403@01 n@402@01))
  :pattern ((img@404@01 n@402@01))
  :qid |next-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=> (and (img@404@01 r) (Set_in (inv@403@01 r) g@231@01)) (= (inv@403@01 r) r))
  :pattern ((inv@403@01 r))
  :qid |next-fctOfInv|)))
(assert (forall ((r $Ref)) (!
  (and
    (=>
      (Set_in r ($FVF.domain_next (as sm@406@01  $FVF<next>)))
      (and (Set_in (inv@403@01 r) g@231@01) (img@404@01 r)))
    (=>
      (and (Set_in (inv@403@01 r) g@231@01) (img@404@01 r))
      (Set_in r ($FVF.domain_next (as sm@406@01  $FVF<next>)))))
  :pattern ((Set_in r ($FVF.domain_next (as sm@406@01  $FVF<next>))))
  :qid |qp.fvfDomDef277|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and (Set_in (inv@403@01 r) g@231@01) (img@404@01 r))
      (and (img@240@01 r) (Set_in (inv@239@01 r) g@231@01)))
    (=
      ($FVF.lookup_next (as sm@406@01  $FVF<next>) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@236@01))) r)))
  :pattern (($FVF.lookup_next (as sm@406@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@236@01))) r))
  :qid |qp.fvfValDef275|)))
(assert (forall ((r $Ref)) (!
  ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@236@01))) r) r)
  :pattern (($FVF.lookup_next (as sm@406@01  $FVF<next>) r))
  :qid |qp.fvfResTrgDef276|)))
(assert (=>
  (not
    (=
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@236@01))) x@232@01)
      $Ref.null))
  (and
    (not
      (=
        ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@236@01))) x@232@01)
        $Ref.null))
    (forall ((r $Ref)) (!
      (=>
        (Set_in (inv@393@01 r) g@231@01)
        ($FVF.loc_next ($FVF.lookup_next (as sm@395@01  $FVF<next>) r) r))
      :pattern ((inv@393@01 r))
      :qid |quant-u-15693|))
    ($$%precondition ($SortWrappers.$FVF<next>To$Snap (as sm@396@01  $FVF<next>)) g@231@01)
    (=>
      (edge<Bool> ($$ ($SortWrappers.$FVF<next>To$Snap (as sm@396@01  $FVF<next>)) g@231@01) x@232@01 ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@236@01))) x@232@01))
      (and
        (edge<Bool> ($$ ($SortWrappers.$FVF<next>To$Snap (as sm@396@01  $FVF<next>)) g@231@01) x@232@01 ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@236@01))) x@232@01))
        (forall ((r $Ref)) (!
          (=>
            (Set_in (inv@398@01 r) g@231@01)
            ($FVF.loc_next ($FVF.lookup_next (as sm@400@01  $FVF<next>) r) r))
          :pattern ((inv@398@01 r))
          :qid |quant-u-15696|))
        ($$%precondition ($SortWrappers.$FVF<next>To$Snap (as sm@401@01  $FVF<next>)) g@231@01)))
    (or
      (edge<Bool> ($$ ($SortWrappers.$FVF<next>To$Snap (as sm@396@01  $FVF<next>)) g@231@01) x@232@01 ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@236@01))) x@232@01))
      (not
        (edge<Bool> ($$ ($SortWrappers.$FVF<next>To$Snap (as sm@396@01  $FVF<next>)) g@231@01) x@232@01 ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@236@01))) x@232@01))))
    (=>
      (and
        (edge<Bool> ($$ ($SortWrappers.$FVF<next>To$Snap (as sm@396@01  $FVF<next>)) g@231@01) x@232@01 ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@236@01))) x@232@01))
        (exists_path<Bool> ($$ ($SortWrappers.$FVF<next>To$Snap (as sm@401@01  $FVF<next>)) g@231@01) ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@236@01))) x@232@01) ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@236@01))) x@232@01)))
      (and
        (edge<Bool> ($$ ($SortWrappers.$FVF<next>To$Snap (as sm@396@01  $FVF<next>)) g@231@01) x@232@01 ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@236@01))) x@232@01))
        (exists_path<Bool> ($$ ($SortWrappers.$FVF<next>To$Snap (as sm@401@01  $FVF<next>)) g@231@01) ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@236@01))) x@232@01) ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@236@01))) x@232@01))
        (forall ((r $Ref)) (!
          (=>
            (Set_in (inv@403@01 r) g@231@01)
            ($FVF.loc_next ($FVF.lookup_next (as sm@405@01  $FVF<next>) r) r))
          :pattern ((inv@403@01 r))
          :qid |quant-u-15699|))
        ($$%precondition ($SortWrappers.$FVF<next>To$Snap (as sm@406@01  $FVF<next>)) g@231@01)))
    (or
      (not
        (and
          (edge<Bool> ($$ ($SortWrappers.$FVF<next>To$Snap (as sm@396@01  $FVF<next>)) g@231@01) x@232@01 ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@236@01))) x@232@01))
          (exists_path<Bool> ($$ ($SortWrappers.$FVF<next>To$Snap (as sm@401@01  $FVF<next>)) g@231@01) ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@236@01))) x@232@01) ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@236@01))) x@232@01))))
      (and
        (edge<Bool> ($$ ($SortWrappers.$FVF<next>To$Snap (as sm@396@01  $FVF<next>)) g@231@01) x@232@01 ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@236@01))) x@232@01))
        (exists_path<Bool> ($$ ($SortWrappers.$FVF<next>To$Snap (as sm@401@01  $FVF<next>)) g@231@01) ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@236@01))) x@232@01) ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@236@01))) x@232@01)))))))
; Joined path conditions
(assert (or
  (=
    ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@236@01))) x@232@01)
    $Ref.null)
  (not
    (=
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@236@01))) x@232@01)
      $Ref.null))))
(push) ; 5
(assert (not (=>
  (and
    (not
      (=
        ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@236@01))) x@232@01)
        $Ref.null))
    (and
      (edge<Bool> ($$ ($SortWrappers.$FVF<next>To$Snap (as sm@396@01  $FVF<next>)) g@231@01) x@232@01 ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@236@01))) x@232@01))
      (exists_path<Bool> ($$ ($SortWrappers.$FVF<next>To$Snap (as sm@401@01  $FVF<next>)) g@231@01) ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@236@01))) x@232@01) ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@236@01))) x@232@01))))
  (exists_path<Bool> ($$ ($SortWrappers.$FVF<next>To$Snap (as sm@406@01  $FVF<next>)) g@231@01) x@232@01 ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@236@01))) x@232@01)))))
(check-sat)
; unsat
(pop) ; 5
; 1.43s
; (get-info :all-statistics)
(assert (=>
  (and
    (not
      (=
        ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@236@01))) x@232@01)
        $Ref.null))
    (and
      (edge<Bool> ($$ ($SortWrappers.$FVF<next>To$Snap (as sm@396@01  $FVF<next>)) g@231@01) x@232@01 ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@236@01))) x@232@01))
      (exists_path<Bool> ($$ ($SortWrappers.$FVF<next>To$Snap (as sm@401@01  $FVF<next>)) g@231@01) ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@236@01))) x@232@01) ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@236@01))) x@232@01))))
  (exists_path<Bool> ($$ ($SortWrappers.$FVF<next>To$Snap (as sm@406@01  $FVF<next>)) g@231@01) x@232@01 ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@236@01))) x@232@01))))
; Loop head block: Execute statements of loop head block (in invariant state)
(push) ; 5
(assert (forall ((r $Ref)) (!
  (=> (and (img@289@01 r) (Set_in (inv@288@01 r) g@231@01)) (= (inv@288@01 r) r))
  :pattern ((inv@288@01 r))
  :qid |next-fctOfInv|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@289@01 r) (Set_in (inv@288@01 r) g@231@01))
    (=
      ($FVF.lookup_next (as sm@290@01  $FVF<next>) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@285@01))) r)))
  :pattern (($FVF.lookup_next (as sm@290@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@285@01))) r))
  :qid |qp.fvfValDef174|)))
(assert (forall ((r $Ref)) (!
  ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@285@01))) r) r)
  :pattern (($FVF.lookup_next (as sm@290@01  $FVF<next>) r))
  :qid |qp.fvfResTrgDef175|)))
(assert (forall ((n@293@01 $Ref)) (!
  (=>
    (Set_in n@293@01 g@231@01)
    (and (= (inv@294@01 n@293@01) n@293@01) (img@295@01 n@293@01)))
  :pattern ((Set_in n@293@01 g@231@01))
  :pattern ((inv@294@01 n@293@01))
  :pattern ((img@295@01 n@293@01))
  :qid |next-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=> (and (img@295@01 r) (Set_in (inv@294@01 r) g@231@01)) (= (inv@294@01 r) r))
  :pattern ((inv@294@01 r))
  :qid |next-fctOfInv|)))
(assert (forall ((r $Ref)) (!
  (and
    (=>
      (Set_in r ($FVF.domain_next (as sm@296@01  $FVF<next>)))
      (and (Set_in (inv@294@01 r) g@231@01) (img@295@01 r)))
    (=>
      (and (Set_in (inv@294@01 r) g@231@01) (img@295@01 r))
      (Set_in r ($FVF.domain_next (as sm@296@01  $FVF<next>)))))
  :pattern ((Set_in r ($FVF.domain_next (as sm@296@01  $FVF<next>))))
  :qid |qp.fvfDomDef178|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and (Set_in (inv@294@01 r) g@231@01) (img@295@01 r))
      (and (img@289@01 r) (Set_in (inv@288@01 r) g@231@01)))
    (=
      ($FVF.lookup_next (as sm@296@01  $FVF<next>) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@285@01))) r)))
  :pattern (($FVF.lookup_next (as sm@296@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@285@01))) r))
  :qid |qp.fvfValDef176|)))
(assert (forall ((r $Ref)) (!
  ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@285@01))) r) r)
  :pattern (($FVF.lookup_next (as sm@296@01  $FVF<next>) r))
  :qid |qp.fvfResTrgDef177|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@289@01 r) (Set_in (inv@288@01 r) g@231@01))
    (=
      ($FVF.lookup_next (as sm@300@01  $FVF<next>) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@285@01))) r)))
  :pattern (($FVF.lookup_next (as sm@300@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@285@01))) r))
  :qid |qp.fvfValDef179|)))
(assert (forall ((r $Ref)) (!
  ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@285@01))) r) r)
  :pattern (($FVF.lookup_next (as sm@300@01  $FVF<next>) r))
  :qid |qp.fvfResTrgDef180|)))
(assert (forall ((n@297@01 $Ref)) (!
  (=>
    (Set_in n@297@01 g@231@01)
    (and (= (inv@298@01 n@297@01) n@297@01) (img@299@01 n@297@01)))
  :pattern ((Set_in n@297@01 g@231@01))
  :pattern ((inv@298@01 n@297@01))
  :pattern ((img@299@01 n@297@01))
  :qid |next-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=> (and (img@299@01 r) (Set_in (inv@298@01 r) g@231@01)) (= (inv@298@01 r) r))
  :pattern ((inv@298@01 r))
  :qid |next-fctOfInv|)))
(assert (forall ((r $Ref)) (!
  (and
    (=>
      (Set_in r ($FVF.domain_next (as sm@301@01  $FVF<next>)))
      (and (Set_in (inv@298@01 r) g@231@01) (img@299@01 r)))
    (=>
      (and (Set_in (inv@298@01 r) g@231@01) (img@299@01 r))
      (Set_in r ($FVF.domain_next (as sm@301@01  $FVF<next>)))))
  :pattern ((Set_in r ($FVF.domain_next (as sm@301@01  $FVF<next>))))
  :qid |qp.fvfDomDef183|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and (Set_in (inv@298@01 r) g@231@01) (img@299@01 r))
      (and (img@289@01 r) (Set_in (inv@288@01 r) g@231@01)))
    (=
      ($FVF.lookup_next (as sm@301@01  $FVF<next>) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@285@01))) r)))
  :pattern (($FVF.lookup_next (as sm@301@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@285@01))) r))
  :qid |qp.fvfValDef181|)))
(assert (forall ((r $Ref)) (!
  ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@285@01))) r) r)
  :pattern (($FVF.lookup_next (as sm@301@01  $FVF<next>) r))
  :qid |qp.fvfResTrgDef182|)))
(assert (forall ((n@303@01 $Ref)) (!
  (=>
    (Set_in n@303@01 g@231@01)
    (and (= (inv@304@01 n@303@01) n@303@01) (img@305@01 n@303@01)))
  :pattern ((Set_in n@303@01 g@231@01))
  :pattern ((inv@304@01 n@303@01))
  :pattern ((img@305@01 n@303@01))
  :qid |next-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=> (and (img@305@01 r) (Set_in (inv@304@01 r) g@231@01)) (= (inv@304@01 r) r))
  :pattern ((inv@304@01 r))
  :qid |next-fctOfInv|)))
(assert (forall ((r $Ref)) (!
  (and
    (=>
      (Set_in r ($FVF.domain_next (as sm@306@01  $FVF<next>)))
      (and (Set_in (inv@304@01 r) g@231@01) (img@305@01 r)))
    (=>
      (and (Set_in (inv@304@01 r) g@231@01) (img@305@01 r))
      (Set_in r ($FVF.domain_next (as sm@306@01  $FVF<next>)))))
  :pattern ((Set_in r ($FVF.domain_next (as sm@306@01  $FVF<next>))))
  :qid |qp.fvfDomDef186|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and (Set_in (inv@304@01 r) g@231@01) (img@305@01 r))
      (and (img@289@01 r) (Set_in (inv@288@01 r) g@231@01)))
    (=
      ($FVF.lookup_next (as sm@306@01  $FVF<next>) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@285@01))) r)))
  :pattern (($FVF.lookup_next (as sm@306@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@285@01))) r))
  :qid |qp.fvfValDef184|)))
(assert (forall ((r $Ref)) (!
  ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@285@01))) r) r)
  :pattern (($FVF.lookup_next (as sm@306@01  $FVF<next>) r))
  :qid |qp.fvfResTrgDef185|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@289@01 r) (Set_in (inv@288@01 r) g@231@01))
    (=
      ($FVF.lookup_next (as sm@310@01  $FVF<next>) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@285@01))) r)))
  :pattern (($FVF.lookup_next (as sm@310@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@285@01))) r))
  :qid |qp.fvfValDef187|)))
(assert (forall ((r $Ref)) (!
  ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@285@01))) r) r)
  :pattern (($FVF.lookup_next (as sm@310@01  $FVF<next>) r))
  :qid |qp.fvfResTrgDef188|)))
(assert (forall ((n@307@01 $Ref)) (!
  (=>
    (Set_in n@307@01 g@231@01)
    (and (= (inv@308@01 n@307@01) n@307@01) (img@309@01 n@307@01)))
  :pattern ((Set_in n@307@01 g@231@01))
  :pattern ((inv@308@01 n@307@01))
  :pattern ((img@309@01 n@307@01))
  :qid |next-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=> (and (img@309@01 r) (Set_in (inv@308@01 r) g@231@01)) (= (inv@308@01 r) r))
  :pattern ((inv@308@01 r))
  :qid |next-fctOfInv|)))
(assert (forall ((r $Ref)) (!
  (and
    (=>
      (Set_in r ($FVF.domain_next (as sm@311@01  $FVF<next>)))
      (and (Set_in (inv@308@01 r) g@231@01) (img@309@01 r)))
    (=>
      (and (Set_in (inv@308@01 r) g@231@01) (img@309@01 r))
      (Set_in r ($FVF.domain_next (as sm@311@01  $FVF<next>)))))
  :pattern ((Set_in r ($FVF.domain_next (as sm@311@01  $FVF<next>))))
  :qid |qp.fvfDomDef191|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and (Set_in (inv@308@01 r) g@231@01) (img@309@01 r))
      (and (img@289@01 r) (Set_in (inv@288@01 r) g@231@01)))
    (=
      ($FVF.lookup_next (as sm@311@01  $FVF<next>) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@285@01))) r)))
  :pattern (($FVF.lookup_next (as sm@311@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@285@01))) r))
  :qid |qp.fvfValDef189|)))
(assert (forall ((r $Ref)) (!
  ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@285@01))) r) r)
  :pattern (($FVF.lookup_next (as sm@311@01  $FVF<next>) r))
  :qid |qp.fvfResTrgDef190|)))
(assert (forall ((n@312@01 $Ref)) (!
  (=>
    (Set_in n@312@01 g@231@01)
    (and (= (inv@313@01 n@312@01) n@312@01) (img@314@01 n@312@01)))
  :pattern ((Set_in n@312@01 g@231@01))
  :pattern ((inv@313@01 n@312@01))
  :pattern ((img@314@01 n@312@01))
  :qid |next-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=> (and (img@314@01 r) (Set_in (inv@313@01 r) g@231@01)) (= (inv@313@01 r) r))
  :pattern ((inv@313@01 r))
  :qid |next-fctOfInv|)))
(assert (forall ((r $Ref)) (!
  (and
    (=>
      (Set_in r ($FVF.domain_next (as sm@315@01  $FVF<next>)))
      (and (Set_in (inv@313@01 r) g@231@01) (img@314@01 r)))
    (=>
      (and (Set_in (inv@313@01 r) g@231@01) (img@314@01 r))
      (Set_in r ($FVF.domain_next (as sm@315@01  $FVF<next>)))))
  :pattern ((Set_in r ($FVF.domain_next (as sm@315@01  $FVF<next>))))
  :qid |qp.fvfDomDef194|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and (Set_in (inv@313@01 r) g@231@01) (img@314@01 r))
      (and (img@289@01 r) (Set_in (inv@288@01 r) g@231@01)))
    (=
      ($FVF.lookup_next (as sm@315@01  $FVF<next>) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@285@01))) r)))
  :pattern (($FVF.lookup_next (as sm@315@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@285@01))) r))
  :qid |qp.fvfValDef192|)))
(assert (forall ((r $Ref)) (!
  ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@285@01))) r) r)
  :pattern (($FVF.lookup_next (as sm@315@01  $FVF<next>) r))
  :qid |qp.fvfResTrgDef193|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@289@01 r) (Set_in (inv@288@01 r) g@231@01))
    (=
      ($FVF.lookup_next (as sm@319@01  $FVF<next>) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@285@01))) r)))
  :pattern (($FVF.lookup_next (as sm@319@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@285@01))) r))
  :qid |qp.fvfValDef195|)))
(assert (forall ((r $Ref)) (!
  ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@285@01))) r) r)
  :pattern (($FVF.lookup_next (as sm@319@01  $FVF<next>) r))
  :qid |qp.fvfResTrgDef196|)))
(assert (forall ((n@316@01 $Ref)) (!
  (=>
    (Set_in n@316@01 g@231@01)
    (and (= (inv@317@01 n@316@01) n@316@01) (img@318@01 n@316@01)))
  :pattern ((Set_in n@316@01 g@231@01))
  :pattern ((inv@317@01 n@316@01))
  :pattern ((img@318@01 n@316@01))
  :qid |next-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=> (and (img@318@01 r) (Set_in (inv@317@01 r) g@231@01)) (= (inv@317@01 r) r))
  :pattern ((inv@317@01 r))
  :qid |next-fctOfInv|)))
(assert (forall ((r $Ref)) (!
  (and
    (=>
      (Set_in r ($FVF.domain_next (as sm@320@01  $FVF<next>)))
      (and (Set_in (inv@317@01 r) g@231@01) (img@318@01 r)))
    (=>
      (and (Set_in (inv@317@01 r) g@231@01) (img@318@01 r))
      (Set_in r ($FVF.domain_next (as sm@320@01  $FVF<next>)))))
  :pattern ((Set_in r ($FVF.domain_next (as sm@320@01  $FVF<next>))))
  :qid |qp.fvfDomDef199|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and (Set_in (inv@317@01 r) g@231@01) (img@318@01 r))
      (and (img@289@01 r) (Set_in (inv@288@01 r) g@231@01)))
    (=
      ($FVF.lookup_next (as sm@320@01  $FVF<next>) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@285@01))) r)))
  :pattern (($FVF.lookup_next (as sm@320@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@285@01))) r))
  :qid |qp.fvfValDef197|)))
(assert (forall ((r $Ref)) (!
  ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@285@01))) r) r)
  :pattern (($FVF.lookup_next (as sm@320@01  $FVF<next>) r))
  :qid |qp.fvfResTrgDef198|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@289@01 r) (Set_in (inv@288@01 r) g@231@01))
    (=
      ($FVF.lookup_next (as sm@324@01  $FVF<next>) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@285@01))) r)))
  :pattern (($FVF.lookup_next (as sm@324@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@285@01))) r))
  :qid |qp.fvfValDef200|)))
(assert (forall ((r $Ref)) (!
  ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@285@01))) r) r)
  :pattern (($FVF.lookup_next (as sm@324@01  $FVF<next>) r))
  :qid |qp.fvfResTrgDef201|)))
(assert (forall ((n@321@01 $Ref)) (!
  (=>
    (Set_in n@321@01 g@231@01)
    (and (= (inv@322@01 n@321@01) n@321@01) (img@323@01 n@321@01)))
  :pattern ((Set_in n@321@01 g@231@01))
  :pattern ((inv@322@01 n@321@01))
  :pattern ((img@323@01 n@321@01))
  :qid |next-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=> (and (img@323@01 r) (Set_in (inv@322@01 r) g@231@01)) (= (inv@322@01 r) r))
  :pattern ((inv@322@01 r))
  :qid |next-fctOfInv|)))
(assert (forall ((r $Ref)) (!
  (and
    (=>
      (Set_in r ($FVF.domain_next (as sm@325@01  $FVF<next>)))
      (and (Set_in (inv@322@01 r) g@231@01) (img@323@01 r)))
    (=>
      (and (Set_in (inv@322@01 r) g@231@01) (img@323@01 r))
      (Set_in r ($FVF.domain_next (as sm@325@01  $FVF<next>)))))
  :pattern ((Set_in r ($FVF.domain_next (as sm@325@01  $FVF<next>))))
  :qid |qp.fvfDomDef204|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and (Set_in (inv@322@01 r) g@231@01) (img@323@01 r))
      (and (img@289@01 r) (Set_in (inv@288@01 r) g@231@01)))
    (=
      ($FVF.lookup_next (as sm@325@01  $FVF<next>) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@285@01))) r)))
  :pattern (($FVF.lookup_next (as sm@325@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@285@01))) r))
  :qid |qp.fvfValDef202|)))
(assert (forall ((r $Ref)) (!
  ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@285@01))) r) r)
  :pattern (($FVF.lookup_next (as sm@325@01  $FVF<next>) r))
  :qid |qp.fvfResTrgDef203|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@289@01 r) (Set_in (inv@288@01 r) g@231@01))
    (=
      ($FVF.lookup_next (as sm@329@01  $FVF<next>) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@285@01))) r)))
  :pattern (($FVF.lookup_next (as sm@329@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@285@01))) r))
  :qid |qp.fvfValDef205|)))
(assert (forall ((r $Ref)) (!
  ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@285@01))) r) r)
  :pattern (($FVF.lookup_next (as sm@329@01  $FVF<next>) r))
  :qid |qp.fvfResTrgDef206|)))
(assert (forall ((n@326@01 $Ref)) (!
  (=>
    (Set_in n@326@01 g@231@01)
    (and (= (inv@327@01 n@326@01) n@326@01) (img@328@01 n@326@01)))
  :pattern ((Set_in n@326@01 g@231@01))
  :pattern ((inv@327@01 n@326@01))
  :pattern ((img@328@01 n@326@01))
  :qid |next-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=> (and (img@328@01 r) (Set_in (inv@327@01 r) g@231@01)) (= (inv@327@01 r) r))
  :pattern ((inv@327@01 r))
  :qid |next-fctOfInv|)))
(assert (forall ((r $Ref)) (!
  (and
    (=>
      (Set_in r ($FVF.domain_next (as sm@330@01  $FVF<next>)))
      (and (Set_in (inv@327@01 r) g@231@01) (img@328@01 r)))
    (=>
      (and (Set_in (inv@327@01 r) g@231@01) (img@328@01 r))
      (Set_in r ($FVF.domain_next (as sm@330@01  $FVF<next>)))))
  :pattern ((Set_in r ($FVF.domain_next (as sm@330@01  $FVF<next>))))
  :qid |qp.fvfDomDef209|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and (Set_in (inv@327@01 r) g@231@01) (img@328@01 r))
      (and (img@289@01 r) (Set_in (inv@288@01 r) g@231@01)))
    (=
      ($FVF.lookup_next (as sm@330@01  $FVF<next>) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@285@01))) r)))
  :pattern (($FVF.lookup_next (as sm@330@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@285@01))) r))
  :qid |qp.fvfValDef207|)))
(assert (forall ((r $Ref)) (!
  ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@285@01))) r) r)
  :pattern (($FVF.lookup_next (as sm@330@01  $FVF<next>) r))
  :qid |qp.fvfResTrgDef208|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@289@01 r) (Set_in (inv@288@01 r) g@231@01))
    (=
      ($FVF.lookup_next (as sm@334@01  $FVF<next>) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@285@01))) r)))
  :pattern (($FVF.lookup_next (as sm@334@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@285@01))) r))
  :qid |qp.fvfValDef210|)))
(assert (forall ((r $Ref)) (!
  ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@285@01))) r) r)
  :pattern (($FVF.lookup_next (as sm@334@01  $FVF<next>) r))
  :qid |qp.fvfResTrgDef211|)))
(assert (forall ((n@331@01 $Ref)) (!
  (=>
    (Set_in n@331@01 g@231@01)
    (and (= (inv@332@01 n@331@01) n@331@01) (img@333@01 n@331@01)))
  :pattern ((Set_in n@331@01 g@231@01))
  :pattern ((inv@332@01 n@331@01))
  :pattern ((img@333@01 n@331@01))
  :qid |next-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=> (and (img@333@01 r) (Set_in (inv@332@01 r) g@231@01)) (= (inv@332@01 r) r))
  :pattern ((inv@332@01 r))
  :qid |next-fctOfInv|)))
(assert (forall ((r $Ref)) (!
  (and
    (=>
      (Set_in r ($FVF.domain_next (as sm@335@01  $FVF<next>)))
      (and (Set_in (inv@332@01 r) g@231@01) (img@333@01 r)))
    (=>
      (and (Set_in (inv@332@01 r) g@231@01) (img@333@01 r))
      (Set_in r ($FVF.domain_next (as sm@335@01  $FVF<next>)))))
  :pattern ((Set_in r ($FVF.domain_next (as sm@335@01  $FVF<next>))))
  :qid |qp.fvfDomDef214|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and (Set_in (inv@332@01 r) g@231@01) (img@333@01 r))
      (and (img@289@01 r) (Set_in (inv@288@01 r) g@231@01)))
    (=
      ($FVF.lookup_next (as sm@335@01  $FVF<next>) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@285@01))) r)))
  :pattern (($FVF.lookup_next (as sm@335@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@285@01))) r))
  :qid |qp.fvfValDef212|)))
(assert (forall ((r $Ref)) (!
  ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@285@01))) r) r)
  :pattern (($FVF.lookup_next (as sm@335@01  $FVF<next>) r))
  :qid |qp.fvfResTrgDef213|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@289@01 r) (Set_in (inv@288@01 r) g@231@01))
    (=
      ($FVF.lookup_next (as sm@339@01  $FVF<next>) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@285@01))) r)))
  :pattern (($FVF.lookup_next (as sm@339@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@285@01))) r))
  :qid |qp.fvfValDef215|)))
(assert (forall ((r $Ref)) (!
  ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@285@01))) r) r)
  :pattern (($FVF.lookup_next (as sm@339@01  $FVF<next>) r))
  :qid |qp.fvfResTrgDef216|)))
(assert (forall ((n@336@01 $Ref)) (!
  (=>
    (Set_in n@336@01 g@231@01)
    (and (= (inv@337@01 n@336@01) n@336@01) (img@338@01 n@336@01)))
  :pattern ((Set_in n@336@01 g@231@01))
  :pattern ((inv@337@01 n@336@01))
  :pattern ((img@338@01 n@336@01))
  :qid |next-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=> (and (img@338@01 r) (Set_in (inv@337@01 r) g@231@01)) (= (inv@337@01 r) r))
  :pattern ((inv@337@01 r))
  :qid |next-fctOfInv|)))
(assert (forall ((r $Ref)) (!
  (and
    (=>
      (Set_in r ($FVF.domain_next (as sm@340@01  $FVF<next>)))
      (and (Set_in (inv@337@01 r) g@231@01) (img@338@01 r)))
    (=>
      (and (Set_in (inv@337@01 r) g@231@01) (img@338@01 r))
      (Set_in r ($FVF.domain_next (as sm@340@01  $FVF<next>)))))
  :pattern ((Set_in r ($FVF.domain_next (as sm@340@01  $FVF<next>))))
  :qid |qp.fvfDomDef219|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and (Set_in (inv@337@01 r) g@231@01) (img@338@01 r))
      (and (img@289@01 r) (Set_in (inv@288@01 r) g@231@01)))
    (=
      ($FVF.lookup_next (as sm@340@01  $FVF<next>) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@285@01))) r)))
  :pattern (($FVF.lookup_next (as sm@340@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@285@01))) r))
  :qid |qp.fvfValDef217|)))
(assert (forall ((r $Ref)) (!
  ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@285@01))) r) r)
  :pattern (($FVF.lookup_next (as sm@340@01  $FVF<next>) r))
  :qid |qp.fvfResTrgDef218|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@289@01 r) (Set_in (inv@288@01 r) g@231@01))
    (=
      ($FVF.lookup_next (as sm@344@01  $FVF<next>) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@285@01))) r)))
  :pattern (($FVF.lookup_next (as sm@344@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@285@01))) r))
  :qid |qp.fvfValDef220|)))
(assert (forall ((r $Ref)) (!
  ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@285@01))) r) r)
  :pattern (($FVF.lookup_next (as sm@344@01  $FVF<next>) r))
  :qid |qp.fvfResTrgDef221|)))
(assert (forall ((n@341@01 $Ref)) (!
  (=>
    (Set_in n@341@01 g@231@01)
    (and (= (inv@342@01 n@341@01) n@341@01) (img@343@01 n@341@01)))
  :pattern ((Set_in n@341@01 g@231@01))
  :pattern ((inv@342@01 n@341@01))
  :pattern ((img@343@01 n@341@01))
  :qid |next-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=> (and (img@343@01 r) (Set_in (inv@342@01 r) g@231@01)) (= (inv@342@01 r) r))
  :pattern ((inv@342@01 r))
  :qid |next-fctOfInv|)))
(assert (forall ((r $Ref)) (!
  (and
    (=>
      (Set_in r ($FVF.domain_next (as sm@345@01  $FVF<next>)))
      (and (Set_in (inv@342@01 r) g@231@01) (img@343@01 r)))
    (=>
      (and (Set_in (inv@342@01 r) g@231@01) (img@343@01 r))
      (Set_in r ($FVF.domain_next (as sm@345@01  $FVF<next>)))))
  :pattern ((Set_in r ($FVF.domain_next (as sm@345@01  $FVF<next>))))
  :qid |qp.fvfDomDef224|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and (Set_in (inv@342@01 r) g@231@01) (img@343@01 r))
      (and (img@289@01 r) (Set_in (inv@288@01 r) g@231@01)))
    (=
      ($FVF.lookup_next (as sm@345@01  $FVF<next>) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@285@01))) r)))
  :pattern (($FVF.lookup_next (as sm@345@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@285@01))) r))
  :qid |qp.fvfValDef222|)))
(assert (forall ((r $Ref)) (!
  ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@285@01))) r) r)
  :pattern (($FVF.lookup_next (as sm@345@01  $FVF<next>) r))
  :qid |qp.fvfResTrgDef223|)))
(assert (forall ((n$1@286@01 $Ref)) (!
  (=>
    (Set_in n$1@286@01 g@231@01)
    (and (= (inv@288@01 n$1@286@01) n$1@286@01) (img@289@01 n$1@286@01)))
  :pattern (($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@285@01))) n$1@286@01) n$1@286@01))
  :qid |quant-u-15628|)))
(assert (forall ((n$1@286@01 $Ref)) (!
  (=> (Set_in n$1@286@01 g@231@01) (not (= n$1@286@01 $Ref.null)))
  :pattern (($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@285@01))) n$1@286@01) n$1@286@01))
  :qid |next-permImpliesNonNull|)))
(assert (forall ((r $Ref)) (!
  (=>
    (Set_in (inv@288@01 r) g@231@01)
    ($FVF.loc_next ($FVF.lookup_next (as sm@290@01  $FVF<next>) r) r))
  :pattern ((inv@288@01 r))
  :qid |quant-u-15629|)))
(assert (=
  ($Snap.second ($Snap.second $t@285@01))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second $t@285@01)))
    ($Snap.second ($Snap.second ($Snap.second $t@285@01))))))
(assert (= ($Snap.first ($Snap.second ($Snap.second $t@285@01))) $Snap.unit))
(assert (forall ((n$2@291@01 $Ref)) (!
  (and
    (=>
      (Set_in n$2@291@01 g@231@01)
      (and
        (Set_in n$2@291@01 g@231@01)
        ($FVF.loc_next ($FVF.lookup_next (as sm@290@01  $FVF<next>) n$2@291@01) n$2@291@01)))
    (or (Set_in n$2@291@01 g@231@01) (not (Set_in n$2@291@01 g@231@01)))
    (=>
      (and
        (Set_in n$2@291@01 g@231@01)
        (not
          (= ($FVF.lookup_next (as sm@290@01  $FVF<next>) n$2@291@01) $Ref.null)))
      (and
        (Set_in n$2@291@01 g@231@01)
        (not
          (= ($FVF.lookup_next (as sm@290@01  $FVF<next>) n$2@291@01) $Ref.null))
        ($FVF.loc_next ($FVF.lookup_next (as sm@290@01  $FVF<next>) n$2@291@01) n$2@291@01)))
    (or
      (not
        (and
          (Set_in n$2@291@01 g@231@01)
          (not
            (=
              ($FVF.lookup_next (as sm@290@01  $FVF<next>) n$2@291@01)
              $Ref.null))))
      (and
        (Set_in n$2@291@01 g@231@01)
        (not
          (= ($FVF.lookup_next (as sm@290@01  $FVF<next>) n$2@291@01) $Ref.null)))))
  :pattern ((Set_in ($FVF.lookup_next (as sm@290@01  $FVF<next>) n$2@291@01) g@231@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/graphs/static/outlines/list_append.vpr@367@23@367@31-aux|)))
(assert (forall ((n$2@291@01 $Ref)) (!
  (and
    (=>
      (Set_in n$2@291@01 g@231@01)
      (and
        (Set_in n$2@291@01 g@231@01)
        ($FVF.loc_next ($FVF.lookup_next (as sm@290@01  $FVF<next>) n$2@291@01) n$2@291@01)))
    (or (Set_in n$2@291@01 g@231@01) (not (Set_in n$2@291@01 g@231@01)))
    (=>
      (and
        (Set_in n$2@291@01 g@231@01)
        (not
          (= ($FVF.lookup_next (as sm@290@01  $FVF<next>) n$2@291@01) $Ref.null)))
      (and
        (Set_in n$2@291@01 g@231@01)
        (not
          (= ($FVF.lookup_next (as sm@290@01  $FVF<next>) n$2@291@01) $Ref.null))
        ($FVF.loc_next ($FVF.lookup_next (as sm@290@01  $FVF<next>) n$2@291@01) n$2@291@01)))
    (or
      (not
        (and
          (Set_in n$2@291@01 g@231@01)
          (not
            (=
              ($FVF.lookup_next (as sm@290@01  $FVF<next>) n$2@291@01)
              $Ref.null))))
      (and
        (Set_in n$2@291@01 g@231@01)
        (not
          (= ($FVF.lookup_next (as sm@290@01  $FVF<next>) n$2@291@01) $Ref.null)))))
  :pattern ((Set_in n$2@291@01 g@231@01) ($FVF.loc_next ($FVF.lookup_next (as sm@290@01  $FVF<next>) n$2@291@01) n$2@291@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/graphs/static/outlines/list_append.vpr@367@23@367@31-aux|)))
(assert (forall ((n$2@291@01 $Ref)) (!
  (=>
    (and
      (Set_in n$2@291@01 g@231@01)
      (not
        (= ($FVF.lookup_next (as sm@290@01  $FVF<next>) n$2@291@01) $Ref.null)))
    (Set_in ($FVF.lookup_next (as sm@290@01  $FVF<next>) n$2@291@01) g@231@01))
  :pattern ((Set_in ($FVF.lookup_next (as sm@290@01  $FVF<next>) n$2@291@01) g@231@01))
  :pattern ((Set_in n$2@291@01 g@231@01) ($FVF.loc_next ($FVF.lookup_next (as sm@290@01  $FVF<next>) n$2@291@01) n$2@291@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/graphs/static/outlines/list_append.vpr@367@23@367@31|)))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second $t@285@01)))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@285@01))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@285@01)))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@285@01))))
  $Snap.unit))
(assert (Set_in last@284@01 g@231@01))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@285@01))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@285@01)))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@285@01))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@285@01)))))
  $Snap.unit))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@285@01)))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@285@01))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@285@01)))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@285@01))))))
  $Snap.unit))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@285@01))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@285@01)))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@285@01))))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@285@01)))))))
  $Snap.unit))
(assert (forall ((n@292@01 $Ref)) (!
  (and
    (=>
      (Set_in n@292@01 g@231@01)
      (and
        (Set_in n@292@01 g@231@01)
        (forall ((r $Ref)) (!
          (=>
            (Set_in (inv@294@01 r) g@231@01)
            ($FVF.loc_next ($FVF.lookup_next (as sm@290@01  $FVF<next>) r) r))
          :pattern ((inv@294@01 r))
          :qid |quant-u-15631|))
        ($$%precondition ($SortWrappers.$FVF<next>To$Snap (as sm@296@01  $FVF<next>)) g@231@01)
        (=>
          (not
            (exists_path<Bool> ($$ ($SortWrappers.$FVF<next>To$Snap (as sm@296@01  $FVF<next>)) g@231@01) x@232@01 n@292@01))
          (and
            (not
              (exists_path<Bool> ($$ ($SortWrappers.$FVF<next>To$Snap (as sm@296@01  $FVF<next>)) g@231@01) x@232@01 n@292@01))
            (forall ((r $Ref)) (!
              (=>
                (Set_in (inv@298@01 r) g@231@01)
                ($FVF.loc_next ($FVF.lookup_next (as sm@300@01  $FVF<next>) r) r))
              :pattern ((inv@298@01 r))
              :qid |quant-u-15634|))
            ($$%precondition ($SortWrappers.$FVF<next>To$Snap (as sm@301@01  $FVF<next>)) g@231@01)))
        (or
          (not
            (exists_path<Bool> ($$ ($SortWrappers.$FVF<next>To$Snap (as sm@296@01  $FVF<next>)) g@231@01) x@232@01 n@292@01))
          (exists_path<Bool> ($$ ($SortWrappers.$FVF<next>To$Snap (as sm@296@01  $FVF<next>)) g@231@01) x@232@01 n@292@01))))
    (or (not (Set_in n@292@01 g@231@01)) (Set_in n@292@01 g@231@01)))
  :pattern ((Set_in n@292@01 g@231@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/graphs/static/outlines/list_append.vpr@371@23@371@102-aux|)))
(assert (forall ((n@292@01 $Ref)) (!
  (and
    (=>
      (Set_in n@292@01 g@231@01)
      (and
        (Set_in n@292@01 g@231@01)
        (forall ((r $Ref)) (!
          (=>
            (Set_in (inv@294@01 r) g@231@01)
            ($FVF.loc_next ($FVF.lookup_next (as sm@290@01  $FVF<next>) r) r))
          :pattern ((inv@294@01 r))
          :qid |quant-u-15631|))
        ($$%precondition ($SortWrappers.$FVF<next>To$Snap (as sm@296@01  $FVF<next>)) g@231@01)
        (=>
          (not
            (exists_path<Bool> ($$ ($SortWrappers.$FVF<next>To$Snap (as sm@296@01  $FVF<next>)) g@231@01) x@232@01 n@292@01))
          (and
            (not
              (exists_path<Bool> ($$ ($SortWrappers.$FVF<next>To$Snap (as sm@296@01  $FVF<next>)) g@231@01) x@232@01 n@292@01))
            (forall ((r $Ref)) (!
              (=>
                (Set_in (inv@298@01 r) g@231@01)
                ($FVF.loc_next ($FVF.lookup_next (as sm@300@01  $FVF<next>) r) r))
              :pattern ((inv@298@01 r))
              :qid |quant-u-15634|))
            ($$%precondition ($SortWrappers.$FVF<next>To$Snap (as sm@301@01  $FVF<next>)) g@231@01)))
        (or
          (not
            (exists_path<Bool> ($$ ($SortWrappers.$FVF<next>To$Snap (as sm@296@01  $FVF<next>)) g@231@01) x@232@01 n@292@01))
          (exists_path<Bool> ($$ ($SortWrappers.$FVF<next>To$Snap (as sm@296@01  $FVF<next>)) g@231@01) x@232@01 n@292@01))))
    (or (not (Set_in n@292@01 g@231@01)) (Set_in n@292@01 g@231@01)))
  :pattern ((exists_path<Bool> ($$ ($SortWrappers.$FVF<next>To$Snap (as sm@296@01  $FVF<next>)) g@231@01) x@232@01 n@292@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/graphs/static/outlines/list_append.vpr@371@23@371@102-aux|)))
(assert (forall ((n@292@01 $Ref)) (!
  (and
    (=>
      (Set_in n@292@01 g@231@01)
      (and
        (Set_in n@292@01 g@231@01)
        (forall ((r $Ref)) (!
          (=>
            (Set_in (inv@294@01 r) g@231@01)
            ($FVF.loc_next ($FVF.lookup_next (as sm@290@01  $FVF<next>) r) r))
          :pattern ((inv@294@01 r))
          :qid |quant-u-15631|))
        ($$%precondition ($SortWrappers.$FVF<next>To$Snap (as sm@296@01  $FVF<next>)) g@231@01)
        (=>
          (not
            (exists_path<Bool> ($$ ($SortWrappers.$FVF<next>To$Snap (as sm@296@01  $FVF<next>)) g@231@01) x@232@01 n@292@01))
          (and
            (not
              (exists_path<Bool> ($$ ($SortWrappers.$FVF<next>To$Snap (as sm@296@01  $FVF<next>)) g@231@01) x@232@01 n@292@01))
            (forall ((r $Ref)) (!
              (=>
                (Set_in (inv@298@01 r) g@231@01)
                ($FVF.loc_next ($FVF.lookup_next (as sm@300@01  $FVF<next>) r) r))
              :pattern ((inv@298@01 r))
              :qid |quant-u-15634|))
            ($$%precondition ($SortWrappers.$FVF<next>To$Snap (as sm@301@01  $FVF<next>)) g@231@01)))
        (or
          (not
            (exists_path<Bool> ($$ ($SortWrappers.$FVF<next>To$Snap (as sm@296@01  $FVF<next>)) g@231@01) x@232@01 n@292@01))
          (exists_path<Bool> ($$ ($SortWrappers.$FVF<next>To$Snap (as sm@296@01  $FVF<next>)) g@231@01) x@232@01 n@292@01))))
    (or (not (Set_in n@292@01 g@231@01)) (Set_in n@292@01 g@231@01)))
  :pattern ((exists_path<Bool> ($$ ($SortWrappers.$FVF<next>To$Snap (as sm@301@01  $FVF<next>)) g@231@01) y@233@01 n@292@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/graphs/static/outlines/list_append.vpr@371@23@371@102-aux|)))
(assert (forall ((n@292@01 $Ref)) (!
  (=>
    (Set_in n@292@01 g@231@01)
    (or
      (exists_path<Bool> ($$ ($SortWrappers.$FVF<next>To$Snap (as sm@296@01  $FVF<next>)) g@231@01) x@232@01 n@292@01)
      (exists_path<Bool> ($$ ($SortWrappers.$FVF<next>To$Snap (as sm@301@01  $FVF<next>)) g@231@01) y@233@01 n@292@01)))
  :pattern ((Set_in n@292@01 g@231@01))
  :pattern ((exists_path<Bool> ($$ ($SortWrappers.$FVF<next>To$Snap (as sm@296@01  $FVF<next>)) g@231@01) x@232@01 n@292@01))
  :pattern ((exists_path<Bool> ($$ ($SortWrappers.$FVF<next>To$Snap (as sm@301@01  $FVF<next>)) g@231@01) y@233@01 n@292@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/graphs/static/outlines/list_append.vpr@371@23@371@102|)))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@285@01)))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@285@01))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@285@01)))))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@285@01))))))))
  $Snap.unit))
(assert (forall ((n@302@01 $Ref)) (!
  (and
    (=>
      (Set_in n@302@01 g@231@01)
      (and
        (Set_in n@302@01 g@231@01)
        (forall ((r $Ref)) (!
          (=>
            (Set_in (inv@304@01 r) g@231@01)
            ($FVF.loc_next ($FVF.lookup_next (as sm@290@01  $FVF<next>) r) r))
          :pattern ((inv@304@01 r))
          :qid |quant-u-15637|))
        ($$%precondition ($SortWrappers.$FVF<next>To$Snap (as sm@306@01  $FVF<next>)) g@231@01)
        (=>
          (exists_path<Bool> ($$ ($SortWrappers.$FVF<next>To$Snap (as sm@306@01  $FVF<next>)) g@231@01) x@232@01 n@302@01)
          (and
            (exists_path<Bool> ($$ ($SortWrappers.$FVF<next>To$Snap (as sm@306@01  $FVF<next>)) g@231@01) x@232@01 n@302@01)
            (forall ((r $Ref)) (!
              (=>
                (Set_in (inv@308@01 r) g@231@01)
                ($FVF.loc_next ($FVF.lookup_next (as sm@310@01  $FVF<next>) r) r))
              :pattern ((inv@308@01 r))
              :qid |quant-u-15640|))
            ($$%precondition ($SortWrappers.$FVF<next>To$Snap (as sm@311@01  $FVF<next>)) g@231@01)))
        (or
          (exists_path<Bool> ($$ ($SortWrappers.$FVF<next>To$Snap (as sm@306@01  $FVF<next>)) g@231@01) x@232@01 n@302@01)
          (not
            (exists_path<Bool> ($$ ($SortWrappers.$FVF<next>To$Snap (as sm@306@01  $FVF<next>)) g@231@01) x@232@01 n@302@01)))))
    (or (not (Set_in n@302@01 g@231@01)) (Set_in n@302@01 g@231@01)))
  :pattern ((Set_in n@302@01 g@231@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/graphs/static/outlines/list_append.vpr@372@23@372@102-aux|)))
(assert (forall ((n@302@01 $Ref)) (!
  (and
    (=>
      (Set_in n@302@01 g@231@01)
      (and
        (Set_in n@302@01 g@231@01)
        (forall ((r $Ref)) (!
          (=>
            (Set_in (inv@304@01 r) g@231@01)
            ($FVF.loc_next ($FVF.lookup_next (as sm@290@01  $FVF<next>) r) r))
          :pattern ((inv@304@01 r))
          :qid |quant-u-15637|))
        ($$%precondition ($SortWrappers.$FVF<next>To$Snap (as sm@306@01  $FVF<next>)) g@231@01)
        (=>
          (exists_path<Bool> ($$ ($SortWrappers.$FVF<next>To$Snap (as sm@306@01  $FVF<next>)) g@231@01) x@232@01 n@302@01)
          (and
            (exists_path<Bool> ($$ ($SortWrappers.$FVF<next>To$Snap (as sm@306@01  $FVF<next>)) g@231@01) x@232@01 n@302@01)
            (forall ((r $Ref)) (!
              (=>
                (Set_in (inv@308@01 r) g@231@01)
                ($FVF.loc_next ($FVF.lookup_next (as sm@310@01  $FVF<next>) r) r))
              :pattern ((inv@308@01 r))
              :qid |quant-u-15640|))
            ($$%precondition ($SortWrappers.$FVF<next>To$Snap (as sm@311@01  $FVF<next>)) g@231@01)))
        (or
          (exists_path<Bool> ($$ ($SortWrappers.$FVF<next>To$Snap (as sm@306@01  $FVF<next>)) g@231@01) x@232@01 n@302@01)
          (not
            (exists_path<Bool> ($$ ($SortWrappers.$FVF<next>To$Snap (as sm@306@01  $FVF<next>)) g@231@01) x@232@01 n@302@01)))))
    (or (not (Set_in n@302@01 g@231@01)) (Set_in n@302@01 g@231@01)))
  :pattern ((exists_path<Bool> ($$ ($SortWrappers.$FVF<next>To$Snap (as sm@306@01  $FVF<next>)) g@231@01) x@232@01 n@302@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/graphs/static/outlines/list_append.vpr@372@23@372@102-aux|)))
(assert (forall ((n@302@01 $Ref)) (!
  (and
    (=>
      (Set_in n@302@01 g@231@01)
      (and
        (Set_in n@302@01 g@231@01)
        (forall ((r $Ref)) (!
          (=>
            (Set_in (inv@304@01 r) g@231@01)
            ($FVF.loc_next ($FVF.lookup_next (as sm@290@01  $FVF<next>) r) r))
          :pattern ((inv@304@01 r))
          :qid |quant-u-15637|))
        ($$%precondition ($SortWrappers.$FVF<next>To$Snap (as sm@306@01  $FVF<next>)) g@231@01)
        (=>
          (exists_path<Bool> ($$ ($SortWrappers.$FVF<next>To$Snap (as sm@306@01  $FVF<next>)) g@231@01) x@232@01 n@302@01)
          (and
            (exists_path<Bool> ($$ ($SortWrappers.$FVF<next>To$Snap (as sm@306@01  $FVF<next>)) g@231@01) x@232@01 n@302@01)
            (forall ((r $Ref)) (!
              (=>
                (Set_in (inv@308@01 r) g@231@01)
                ($FVF.loc_next ($FVF.lookup_next (as sm@310@01  $FVF<next>) r) r))
              :pattern ((inv@308@01 r))
              :qid |quant-u-15640|))
            ($$%precondition ($SortWrappers.$FVF<next>To$Snap (as sm@311@01  $FVF<next>)) g@231@01)))
        (or
          (exists_path<Bool> ($$ ($SortWrappers.$FVF<next>To$Snap (as sm@306@01  $FVF<next>)) g@231@01) x@232@01 n@302@01)
          (not
            (exists_path<Bool> ($$ ($SortWrappers.$FVF<next>To$Snap (as sm@306@01  $FVF<next>)) g@231@01) x@232@01 n@302@01)))))
    (or (not (Set_in n@302@01 g@231@01)) (Set_in n@302@01 g@231@01)))
  :pattern ((exists_path<Bool> ($$ ($SortWrappers.$FVF<next>To$Snap (as sm@311@01  $FVF<next>)) g@231@01) y@233@01 n@302@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/graphs/static/outlines/list_append.vpr@372@23@372@102-aux|)))
(assert (forall ((n@302@01 $Ref)) (!
  (=>
    (Set_in n@302@01 g@231@01)
    (or
      (not
        (exists_path<Bool> ($$ ($SortWrappers.$FVF<next>To$Snap (as sm@306@01  $FVF<next>)) g@231@01) x@232@01 n@302@01))
      (not
        (exists_path<Bool> ($$ ($SortWrappers.$FVF<next>To$Snap (as sm@311@01  $FVF<next>)) g@231@01) y@233@01 n@302@01))))
  :pattern ((Set_in n@302@01 g@231@01))
  :pattern ((exists_path<Bool> ($$ ($SortWrappers.$FVF<next>To$Snap (as sm@306@01  $FVF<next>)) g@231@01) x@232@01 n@302@01))
  :pattern ((exists_path<Bool> ($$ ($SortWrappers.$FVF<next>To$Snap (as sm@311@01  $FVF<next>)) g@231@01) y@233@01 n@302@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/graphs/static/outlines/list_append.vpr@372@23@372@102|)))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@285@01))))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@285@01)))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@285@01))))))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@285@01)))))))))
  $Snap.unit))
(assert (forall ((r $Ref)) (!
  (=>
    (Set_in (inv@313@01 r) g@231@01)
    ($FVF.loc_next ($FVF.lookup_next (as sm@290@01  $FVF<next>) r) r))
  :pattern ((inv@313@01 r))
  :qid |quant-u-15643|)))
(assert ($$%precondition ($SortWrappers.$FVF<next>To$Snap (as sm@315@01  $FVF<next>)) g@231@01))
(assert (acyclic_graph<Bool> ($$ ($SortWrappers.$FVF<next>To$Snap (as sm@315@01  $FVF<next>)) g@231@01)))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@285@01)))))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@285@01))))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@285@01)))))))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@285@01))))))))))
  $Snap.unit))
(assert (forall ((r $Ref)) (!
  (=>
    (Set_in (inv@317@01 r) g@231@01)
    ($FVF.loc_next ($FVF.lookup_next (as sm@319@01  $FVF<next>) r) r))
  :pattern ((inv@317@01 r))
  :qid |quant-u-15646|)))
(assert ($$%precondition ($SortWrappers.$FVF<next>To$Snap (as sm@320@01  $FVF<next>)) g@231@01))
(assert (unshared_graph<Bool> ($$ ($SortWrappers.$FVF<next>To$Snap (as sm@320@01  $FVF<next>)) g@231@01)))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@285@01))))))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@285@01)))))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@285@01))))))))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@285@01)))))))))))
  $Snap.unit))
(assert (forall ((r $Ref)) (!
  (=>
    (Set_in (inv@322@01 r) g@231@01)
    ($FVF.loc_next ($FVF.lookup_next (as sm@324@01  $FVF<next>) r) r))
  :pattern ((inv@322@01 r))
  :qid |quant-u-15649|)))
(assert ($$%precondition ($SortWrappers.$FVF<next>To$Snap (as sm@325@01  $FVF<next>)) g@231@01))
(assert (Set_equal ($$ ($SortWrappers.$FVF<next>To$Snap (as sm@325@01  $FVF<next>)) g@231@01) old_g@283@01))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@285@01)))))))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@285@01))))))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@285@01)))))))))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@285@01))))))))))))
  $Snap.unit))
(assert (forall ((r $Ref)) (!
  (=>
    (Set_in (inv@327@01 r) g@231@01)
    ($FVF.loc_next ($FVF.lookup_next (as sm@329@01  $FVF<next>) r) r))
  :pattern ((inv@327@01 r))
  :qid |quant-u-15652|)))
(assert ($$%precondition ($SortWrappers.$FVF<next>To$Snap (as sm@330@01  $FVF<next>)) g@231@01))
(assert (exists_path<Bool> ($$ ($SortWrappers.$FVF<next>To$Snap (as sm@330@01  $FVF<next>)) g@231@01) x@232@01 last@284@01))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@285@01))))))))))))
  $Snap.unit))
(assert ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@285@01))) last@284@01) last@284@01))
(assert (=>
  (not
    (=
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@285@01))) last@284@01)
      $Ref.null))
  (and
    (not
      (=
        ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@285@01))) last@284@01)
        $Ref.null))
    (forall ((r $Ref)) (!
      (=>
        (Set_in (inv@332@01 r) g@231@01)
        ($FVF.loc_next ($FVF.lookup_next (as sm@334@01  $FVF<next>) r) r))
      :pattern ((inv@332@01 r))
      :qid |quant-u-15655|))
    ($$%precondition ($SortWrappers.$FVF<next>To$Snap (as sm@335@01  $FVF<next>)) g@231@01)
    (=>
      (edge<Bool> ($$ ($SortWrappers.$FVF<next>To$Snap (as sm@335@01  $FVF<next>)) g@231@01) last@284@01 ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@285@01))) last@284@01))
      (and
        (edge<Bool> ($$ ($SortWrappers.$FVF<next>To$Snap (as sm@335@01  $FVF<next>)) g@231@01) last@284@01 ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@285@01))) last@284@01))
        (forall ((r $Ref)) (!
          (=>
            (Set_in (inv@337@01 r) g@231@01)
            ($FVF.loc_next ($FVF.lookup_next (as sm@339@01  $FVF<next>) r) r))
          :pattern ((inv@337@01 r))
          :qid |quant-u-15658|))
        ($$%precondition ($SortWrappers.$FVF<next>To$Snap (as sm@340@01  $FVF<next>)) g@231@01)))
    (or
      (edge<Bool> ($$ ($SortWrappers.$FVF<next>To$Snap (as sm@335@01  $FVF<next>)) g@231@01) last@284@01 ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@285@01))) last@284@01))
      (not
        (edge<Bool> ($$ ($SortWrappers.$FVF<next>To$Snap (as sm@335@01  $FVF<next>)) g@231@01) last@284@01 ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@285@01))) last@284@01))))
    (=>
      (and
        (edge<Bool> ($$ ($SortWrappers.$FVF<next>To$Snap (as sm@335@01  $FVF<next>)) g@231@01) last@284@01 ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@285@01))) last@284@01))
        (exists_path<Bool> ($$ ($SortWrappers.$FVF<next>To$Snap (as sm@340@01  $FVF<next>)) g@231@01) ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@285@01))) last@284@01) ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@285@01))) last@284@01)))
      (and
        (edge<Bool> ($$ ($SortWrappers.$FVF<next>To$Snap (as sm@335@01  $FVF<next>)) g@231@01) last@284@01 ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@285@01))) last@284@01))
        (exists_path<Bool> ($$ ($SortWrappers.$FVF<next>To$Snap (as sm@340@01  $FVF<next>)) g@231@01) ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@285@01))) last@284@01) ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@285@01))) last@284@01))
        (forall ((r $Ref)) (!
          (=>
            (Set_in (inv@342@01 r) g@231@01)
            ($FVF.loc_next ($FVF.lookup_next (as sm@344@01  $FVF<next>) r) r))
          :pattern ((inv@342@01 r))
          :qid |quant-u-15661|))
        ($$%precondition ($SortWrappers.$FVF<next>To$Snap (as sm@345@01  $FVF<next>)) g@231@01)))
    (or
      (not
        (and
          (edge<Bool> ($$ ($SortWrappers.$FVF<next>To$Snap (as sm@335@01  $FVF<next>)) g@231@01) last@284@01 ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@285@01))) last@284@01))
          (exists_path<Bool> ($$ ($SortWrappers.$FVF<next>To$Snap (as sm@340@01  $FVF<next>)) g@231@01) ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@285@01))) last@284@01) ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@285@01))) last@284@01))))
      (and
        (edge<Bool> ($$ ($SortWrappers.$FVF<next>To$Snap (as sm@335@01  $FVF<next>)) g@231@01) last@284@01 ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@285@01))) last@284@01))
        (exists_path<Bool> ($$ ($SortWrappers.$FVF<next>To$Snap (as sm@340@01  $FVF<next>)) g@231@01) ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@285@01))) last@284@01) ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@285@01))) last@284@01)))))))
(assert (or
  (=
    ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@285@01))) last@284@01)
    $Ref.null)
  (not
    (=
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@285@01))) last@284@01)
      $Ref.null))))
(assert (=>
  (and
    (not
      (=
        ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@285@01))) last@284@01)
        $Ref.null))
    (and
      (edge<Bool> ($$ ($SortWrappers.$FVF<next>To$Snap (as sm@335@01  $FVF<next>)) g@231@01) last@284@01 ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@285@01))) last@284@01))
      (exists_path<Bool> ($$ ($SortWrappers.$FVF<next>To$Snap (as sm@340@01  $FVF<next>)) g@231@01) ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@285@01))) last@284@01) ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@285@01))) last@284@01))))
  (exists_path<Bool> ($$ ($SortWrappers.$FVF<next>To$Snap (as sm@345@01  $FVF<next>)) g@231@01) last@284@01 ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@285@01))) last@284@01))))
(assert (= $t@285@01 ($Snap.combine ($Snap.first $t@285@01) ($Snap.second $t@285@01))))
(assert (= ($Snap.first $t@285@01) $Snap.unit))
(assert (=
  ($Snap.second $t@285@01)
  ($Snap.combine
    ($Snap.first ($Snap.second $t@285@01))
    ($Snap.second ($Snap.second $t@285@01)))))
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
(set-option :timeout 10)
(check-sat)
; unknown
; Loop head block: Check well-definedness of edge conditions
(set-option :timeout 0)
(push) ; 6
; [eval] last.next != null
(push) ; 7
(assert (not (and (img@289@01 last@284@01) (Set_in (inv@288@01 last@284@01) g@231@01))))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(pop) ; 6
(push) ; 6
; [eval] !(last.next != null)
; [eval] last.next != null
(push) ; 7
(assert (not (and (img@289@01 last@284@01) (Set_in (inv@288@01 last@284@01) g@231@01))))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(pop) ; 6
; Loop head block: Follow loop-internal edges
; [eval] last.next != null
(push) ; 6
(assert (not (and (img@289@01 last@284@01) (Set_in (inv@288@01 last@284@01) g@231@01))))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(push) ; 6
(set-option :timeout 10)
(assert (not (=
  ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@285@01))) last@284@01)
  $Ref.null)))
(check-sat)
; unknown
(pop) ; 6
; 0.01s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 6
(set-option :timeout 10)
(assert (not (not
  (=
    ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@285@01))) last@284@01)
    $Ref.null))))
(check-sat)
; unknown
(pop) ; 6
; 0.01s
; (get-info :all-statistics)
; [then-branch: 56 | Lookup(next, First:(Second:($t@285@01)), last@284@01) != Null | live]
; [else-branch: 56 | Lookup(next, First:(Second:($t@285@01)), last@284@01) == Null | live]
(set-option :timeout 0)
(push) ; 6
; [then-branch: 56 | Lookup(next, First:(Second:($t@285@01)), last@284@01) != Null]
(assert (not
  (=
    ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@285@01))) last@284@01)
    $Ref.null)))
; [exec]
; inhale last.next != null ==>
;   apply_IND_2($$(g), Set(last), inst_uReach_rev($$(g), last.next))
(declare-const $t@407@01 $Snap)
(assert (= $t@407@01 $Snap.unit))
; [eval] last.next != null ==> apply_IND_2($$(g), Set(last), inst_uReach_rev($$(g), last.next))
; [eval] last.next != null
(push) ; 7
(assert (not (and (img@289@01 last@284@01) (Set_in (inv@288@01 last@284@01) g@231@01))))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(push) ; 7
(push) ; 8
(set-option :timeout 10)
(assert (not (=
  ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@285@01))) last@284@01)
  $Ref.null)))
(check-sat)
; unknown
(pop) ; 8
; 0.01s
; (get-info :all-statistics)
; [then-branch: 57 | Lookup(next, First:(Second:($t@285@01)), last@284@01) != Null | live]
; [else-branch: 57 | Lookup(next, First:(Second:($t@285@01)), last@284@01) == Null | dead]
(set-option :timeout 0)
(push) ; 8
; [then-branch: 57 | Lookup(next, First:(Second:($t@285@01)), last@284@01) != Null]
; [eval] apply_IND_2($$(g), Set(last), inst_uReach_rev($$(g), last.next))
; [eval] $$(g)
(push) ; 9
(declare-const n@408@01 $Ref)
(push) ; 10
; [eval] (n in refs)
(assert (Set_in n@408@01 g@231@01))
(pop) ; 10
(declare-fun inv@409@01 ($Ref) $Ref)
(declare-fun img@410@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
(declare-const sm@411@01 $FVF<next>)
; Definitional axioms for snapshot map domain
; Definitional axioms for snapshot map values
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@289@01 r) (Set_in (inv@288@01 r) g@231@01))
    (=
      ($FVF.lookup_next (as sm@411@01  $FVF<next>) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@285@01))) r)))
  :pattern (($FVF.lookup_next (as sm@411@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@285@01))) r))
  :qid |qp.fvfValDef278|)))
(assert (forall ((r $Ref)) (!
  ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@285@01))) r) r)
  :pattern (($FVF.lookup_next (as sm@411@01  $FVF<next>) r))
  :qid |qp.fvfResTrgDef279|)))
; Check receiver injectivity
(push) ; 10
(assert (not (forall ((n1@408@01 $Ref) (n2@408@01 $Ref)) (!
  (=>
    (and
      (and
        (Set_in n1@408@01 g@231@01)
        ($FVF.loc_next ($FVF.lookup_next (as sm@411@01  $FVF<next>) n1@408@01) n1@408@01))
      (and
        (Set_in n2@408@01 g@231@01)
        ($FVF.loc_next ($FVF.lookup_next (as sm@411@01  $FVF<next>) n2@408@01) n2@408@01))
      (= n1@408@01 n2@408@01))
    (= n1@408@01 n2@408@01))
  
  :qid |next-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 10
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((n@408@01 $Ref)) (!
  (=>
    (Set_in n@408@01 g@231@01)
    (and (= (inv@409@01 n@408@01) n@408@01) (img@410@01 n@408@01)))
  :pattern ((Set_in n@408@01 g@231@01))
  :pattern ((inv@409@01 n@408@01))
  :pattern ((img@410@01 n@408@01))
  :qid |next-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=> (and (img@410@01 r) (Set_in (inv@409@01 r) g@231@01)) (= (inv@409@01 r) r))
  :pattern ((inv@409@01 r))
  :qid |next-fctOfInv|)))
(assert (forall ((r $Ref)) (!
  (=>
    (Set_in (inv@409@01 r) g@231@01)
    ($FVF.loc_next ($FVF.lookup_next (as sm@411@01  $FVF<next>) r) r))
  :pattern ((inv@409@01 r))
  :qid |quant-u-15702|)))
(push) ; 10
(assert (not (forall ((r $Ref)) (!
  (=>
    (and (Set_in (inv@409@01 r) g@231@01) (img@410@01 r) (= r (inv@409@01 r)))
    (>
      (ite
        (and (img@289@01 r) (Set_in (inv@288@01 r) g@231@01))
        $Perm.Write
        $Perm.No)
      $Perm.No))
  
  :qid |quant-u-15703|))))
(check-sat)
; unsat
(pop) ; 10
; 0.00s
; (get-info :all-statistics)
(declare-const sm@412@01 $FVF<next>)
; Definitional axioms for snapshot map domain
(assert (forall ((r $Ref)) (!
  (and
    (=>
      (Set_in r ($FVF.domain_next (as sm@412@01  $FVF<next>)))
      (and (Set_in (inv@409@01 r) g@231@01) (img@410@01 r)))
    (=>
      (and (Set_in (inv@409@01 r) g@231@01) (img@410@01 r))
      (Set_in r ($FVF.domain_next (as sm@412@01  $FVF<next>)))))
  :pattern ((Set_in r ($FVF.domain_next (as sm@412@01  $FVF<next>))))
  :qid |qp.fvfDomDef282|)))
; Definitional axioms for snapshot map values
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and (Set_in (inv@409@01 r) g@231@01) (img@410@01 r))
      (and (img@289@01 r) (Set_in (inv@288@01 r) g@231@01)))
    (=
      ($FVF.lookup_next (as sm@412@01  $FVF<next>) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@285@01))) r)))
  :pattern (($FVF.lookup_next (as sm@412@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@285@01))) r))
  :qid |qp.fvfValDef280|)))
(assert (forall ((r $Ref)) (!
  ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@285@01))) r) r)
  :pattern (($FVF.lookup_next (as sm@412@01  $FVF<next>) r))
  :qid |qp.fvfResTrgDef281|)))
(assert ($$%precondition ($SortWrappers.$FVF<next>To$Snap (as sm@412@01  $FVF<next>)) g@231@01))
(pop) ; 9
; Joined path conditions
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@289@01 r) (Set_in (inv@288@01 r) g@231@01))
    (=
      ($FVF.lookup_next (as sm@411@01  $FVF<next>) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@285@01))) r)))
  :pattern (($FVF.lookup_next (as sm@411@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@285@01))) r))
  :qid |qp.fvfValDef278|)))
(assert (forall ((r $Ref)) (!
  ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@285@01))) r) r)
  :pattern (($FVF.lookup_next (as sm@411@01  $FVF<next>) r))
  :qid |qp.fvfResTrgDef279|)))
(assert (forall ((n@408@01 $Ref)) (!
  (=>
    (Set_in n@408@01 g@231@01)
    (and (= (inv@409@01 n@408@01) n@408@01) (img@410@01 n@408@01)))
  :pattern ((Set_in n@408@01 g@231@01))
  :pattern ((inv@409@01 n@408@01))
  :pattern ((img@410@01 n@408@01))
  :qid |next-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=> (and (img@410@01 r) (Set_in (inv@409@01 r) g@231@01)) (= (inv@409@01 r) r))
  :pattern ((inv@409@01 r))
  :qid |next-fctOfInv|)))
(assert (forall ((r $Ref)) (!
  (and
    (=>
      (Set_in r ($FVF.domain_next (as sm@412@01  $FVF<next>)))
      (and (Set_in (inv@409@01 r) g@231@01) (img@410@01 r)))
    (=>
      (and (Set_in (inv@409@01 r) g@231@01) (img@410@01 r))
      (Set_in r ($FVF.domain_next (as sm@412@01  $FVF<next>)))))
  :pattern ((Set_in r ($FVF.domain_next (as sm@412@01  $FVF<next>))))
  :qid |qp.fvfDomDef282|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and (Set_in (inv@409@01 r) g@231@01) (img@410@01 r))
      (and (img@289@01 r) (Set_in (inv@288@01 r) g@231@01)))
    (=
      ($FVF.lookup_next (as sm@412@01  $FVF<next>) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@285@01))) r)))
  :pattern (($FVF.lookup_next (as sm@412@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@285@01))) r))
  :qid |qp.fvfValDef280|)))
(assert (forall ((r $Ref)) (!
  ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@285@01))) r) r)
  :pattern (($FVF.lookup_next (as sm@412@01  $FVF<next>) r))
  :qid |qp.fvfResTrgDef281|)))
(assert (and
  (forall ((r $Ref)) (!
    (=>
      (Set_in (inv@409@01 r) g@231@01)
      ($FVF.loc_next ($FVF.lookup_next (as sm@411@01  $FVF<next>) r) r))
    :pattern ((inv@409@01 r))
    :qid |quant-u-15702|))
  ($$%precondition ($SortWrappers.$FVF<next>To$Snap (as sm@412@01  $FVF<next>)) g@231@01)))
; [eval] Set(last)
; [eval] inst_uReach_rev($$(g), last.next)
; [eval] $$(g)
(push) ; 9
(declare-const n@413@01 $Ref)
(push) ; 10
; [eval] (n in refs)
(assert (Set_in n@413@01 g@231@01))
(pop) ; 10
(declare-fun inv@414@01 ($Ref) $Ref)
(declare-fun img@415@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
(declare-const sm@416@01 $FVF<next>)
; Definitional axioms for snapshot map domain
; Definitional axioms for snapshot map values
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@289@01 r) (Set_in (inv@288@01 r) g@231@01))
    (=
      ($FVF.lookup_next (as sm@416@01  $FVF<next>) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@285@01))) r)))
  :pattern (($FVF.lookup_next (as sm@416@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@285@01))) r))
  :qid |qp.fvfValDef283|)))
(assert (forall ((r $Ref)) (!
  ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@285@01))) r) r)
  :pattern (($FVF.lookup_next (as sm@416@01  $FVF<next>) r))
  :qid |qp.fvfResTrgDef284|)))
; Check receiver injectivity
(push) ; 10
(assert (not (forall ((n1@413@01 $Ref) (n2@413@01 $Ref)) (!
  (=>
    (and
      (and
        (Set_in n1@413@01 g@231@01)
        ($FVF.loc_next ($FVF.lookup_next (as sm@416@01  $FVF<next>) n1@413@01) n1@413@01))
      (and
        (Set_in n2@413@01 g@231@01)
        ($FVF.loc_next ($FVF.lookup_next (as sm@416@01  $FVF<next>) n2@413@01) n2@413@01))
      (= n1@413@01 n2@413@01))
    (= n1@413@01 n2@413@01))
  
  :qid |next-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 10
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((n@413@01 $Ref)) (!
  (=>
    (Set_in n@413@01 g@231@01)
    (and (= (inv@414@01 n@413@01) n@413@01) (img@415@01 n@413@01)))
  :pattern ((Set_in n@413@01 g@231@01))
  :pattern ((inv@414@01 n@413@01))
  :pattern ((img@415@01 n@413@01))
  :qid |next-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=> (and (img@415@01 r) (Set_in (inv@414@01 r) g@231@01)) (= (inv@414@01 r) r))
  :pattern ((inv@414@01 r))
  :qid |next-fctOfInv|)))
(assert (forall ((r $Ref)) (!
  (=>
    (Set_in (inv@414@01 r) g@231@01)
    ($FVF.loc_next ($FVF.lookup_next (as sm@416@01  $FVF<next>) r) r))
  :pattern ((inv@414@01 r))
  :qid |quant-u-15705|)))
(push) ; 10
(assert (not (forall ((r $Ref)) (!
  (=>
    (and (Set_in (inv@414@01 r) g@231@01) (img@415@01 r) (= r (inv@414@01 r)))
    (>
      (ite
        (and (img@289@01 r) (Set_in (inv@288@01 r) g@231@01))
        $Perm.Write
        $Perm.No)
      $Perm.No))
  
  :qid |quant-u-15706|))))
(check-sat)
; unsat
(pop) ; 10
; 0.00s
; (get-info :all-statistics)
(declare-const sm@417@01 $FVF<next>)
; Definitional axioms for snapshot map domain
(assert (forall ((r $Ref)) (!
  (and
    (=>
      (Set_in r ($FVF.domain_next (as sm@417@01  $FVF<next>)))
      (and (Set_in (inv@414@01 r) g@231@01) (img@415@01 r)))
    (=>
      (and (Set_in (inv@414@01 r) g@231@01) (img@415@01 r))
      (Set_in r ($FVF.domain_next (as sm@417@01  $FVF<next>)))))
  :pattern ((Set_in r ($FVF.domain_next (as sm@417@01  $FVF<next>))))
  :qid |qp.fvfDomDef287|)))
; Definitional axioms for snapshot map values
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and (Set_in (inv@414@01 r) g@231@01) (img@415@01 r))
      (and (img@289@01 r) (Set_in (inv@288@01 r) g@231@01)))
    (=
      ($FVF.lookup_next (as sm@417@01  $FVF<next>) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@285@01))) r)))
  :pattern (($FVF.lookup_next (as sm@417@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@285@01))) r))
  :qid |qp.fvfValDef285|)))
(assert (forall ((r $Ref)) (!
  ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@285@01))) r) r)
  :pattern (($FVF.lookup_next (as sm@417@01  $FVF<next>) r))
  :qid |qp.fvfResTrgDef286|)))
(assert ($$%precondition ($SortWrappers.$FVF<next>To$Snap (as sm@417@01  $FVF<next>)) g@231@01))
(pop) ; 9
; Joined path conditions
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@289@01 r) (Set_in (inv@288@01 r) g@231@01))
    (=
      ($FVF.lookup_next (as sm@416@01  $FVF<next>) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@285@01))) r)))
  :pattern (($FVF.lookup_next (as sm@416@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@285@01))) r))
  :qid |qp.fvfValDef283|)))
(assert (forall ((r $Ref)) (!
  ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@285@01))) r) r)
  :pattern (($FVF.lookup_next (as sm@416@01  $FVF<next>) r))
  :qid |qp.fvfResTrgDef284|)))
(assert (forall ((n@413@01 $Ref)) (!
  (=>
    (Set_in n@413@01 g@231@01)
    (and (= (inv@414@01 n@413@01) n@413@01) (img@415@01 n@413@01)))
  :pattern ((Set_in n@413@01 g@231@01))
  :pattern ((inv@414@01 n@413@01))
  :pattern ((img@415@01 n@413@01))
  :qid |next-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=> (and (img@415@01 r) (Set_in (inv@414@01 r) g@231@01)) (= (inv@414@01 r) r))
  :pattern ((inv@414@01 r))
  :qid |next-fctOfInv|)))
(assert (forall ((r $Ref)) (!
  (and
    (=>
      (Set_in r ($FVF.domain_next (as sm@417@01  $FVF<next>)))
      (and (Set_in (inv@414@01 r) g@231@01) (img@415@01 r)))
    (=>
      (and (Set_in (inv@414@01 r) g@231@01) (img@415@01 r))
      (Set_in r ($FVF.domain_next (as sm@417@01  $FVF<next>)))))
  :pattern ((Set_in r ($FVF.domain_next (as sm@417@01  $FVF<next>))))
  :qid |qp.fvfDomDef287|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and (Set_in (inv@414@01 r) g@231@01) (img@415@01 r))
      (and (img@289@01 r) (Set_in (inv@288@01 r) g@231@01)))
    (=
      ($FVF.lookup_next (as sm@417@01  $FVF<next>) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@285@01))) r)))
  :pattern (($FVF.lookup_next (as sm@417@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@285@01))) r))
  :qid |qp.fvfValDef285|)))
(assert (forall ((r $Ref)) (!
  ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@285@01))) r) r)
  :pattern (($FVF.lookup_next (as sm@417@01  $FVF<next>) r))
  :qid |qp.fvfResTrgDef286|)))
(assert (and
  (forall ((r $Ref)) (!
    (=>
      (Set_in (inv@414@01 r) g@231@01)
      ($FVF.loc_next ($FVF.lookup_next (as sm@416@01  $FVF<next>) r) r))
    :pattern ((inv@414@01 r))
    :qid |quant-u-15705|))
  ($$%precondition ($SortWrappers.$FVF<next>To$Snap (as sm@417@01  $FVF<next>)) g@231@01)))
(push) ; 9
(assert (not (and (img@289@01 last@284@01) (Set_in (inv@288@01 last@284@01) g@231@01))))
(check-sat)
; unsat
(pop) ; 9
; 0.00s
; (get-info :all-statistics)
(pop) ; 8
(pop) ; 7
; Joined path conditions
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@289@01 r) (Set_in (inv@288@01 r) g@231@01))
    (=
      ($FVF.lookup_next (as sm@411@01  $FVF<next>) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@285@01))) r)))
  :pattern (($FVF.lookup_next (as sm@411@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@285@01))) r))
  :qid |qp.fvfValDef278|)))
(assert (forall ((r $Ref)) (!
  ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@285@01))) r) r)
  :pattern (($FVF.lookup_next (as sm@411@01  $FVF<next>) r))
  :qid |qp.fvfResTrgDef279|)))
(assert (forall ((n@408@01 $Ref)) (!
  (=>
    (Set_in n@408@01 g@231@01)
    (and (= (inv@409@01 n@408@01) n@408@01) (img@410@01 n@408@01)))
  :pattern ((Set_in n@408@01 g@231@01))
  :pattern ((inv@409@01 n@408@01))
  :pattern ((img@410@01 n@408@01))
  :qid |next-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=> (and (img@410@01 r) (Set_in (inv@409@01 r) g@231@01)) (= (inv@409@01 r) r))
  :pattern ((inv@409@01 r))
  :qid |next-fctOfInv|)))
(assert (forall ((r $Ref)) (!
  (and
    (=>
      (Set_in r ($FVF.domain_next (as sm@412@01  $FVF<next>)))
      (and (Set_in (inv@409@01 r) g@231@01) (img@410@01 r)))
    (=>
      (and (Set_in (inv@409@01 r) g@231@01) (img@410@01 r))
      (Set_in r ($FVF.domain_next (as sm@412@01  $FVF<next>)))))
  :pattern ((Set_in r ($FVF.domain_next (as sm@412@01  $FVF<next>))))
  :qid |qp.fvfDomDef282|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and (Set_in (inv@409@01 r) g@231@01) (img@410@01 r))
      (and (img@289@01 r) (Set_in (inv@288@01 r) g@231@01)))
    (=
      ($FVF.lookup_next (as sm@412@01  $FVF<next>) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@285@01))) r)))
  :pattern (($FVF.lookup_next (as sm@412@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@285@01))) r))
  :qid |qp.fvfValDef280|)))
(assert (forall ((r $Ref)) (!
  ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@285@01))) r) r)
  :pattern (($FVF.lookup_next (as sm@412@01  $FVF<next>) r))
  :qid |qp.fvfResTrgDef281|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@289@01 r) (Set_in (inv@288@01 r) g@231@01))
    (=
      ($FVF.lookup_next (as sm@416@01  $FVF<next>) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@285@01))) r)))
  :pattern (($FVF.lookup_next (as sm@416@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@285@01))) r))
  :qid |qp.fvfValDef283|)))
(assert (forall ((r $Ref)) (!
  ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@285@01))) r) r)
  :pattern (($FVF.lookup_next (as sm@416@01  $FVF<next>) r))
  :qid |qp.fvfResTrgDef284|)))
(assert (forall ((n@413@01 $Ref)) (!
  (=>
    (Set_in n@413@01 g@231@01)
    (and (= (inv@414@01 n@413@01) n@413@01) (img@415@01 n@413@01)))
  :pattern ((Set_in n@413@01 g@231@01))
  :pattern ((inv@414@01 n@413@01))
  :pattern ((img@415@01 n@413@01))
  :qid |next-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=> (and (img@415@01 r) (Set_in (inv@414@01 r) g@231@01)) (= (inv@414@01 r) r))
  :pattern ((inv@414@01 r))
  :qid |next-fctOfInv|)))
(assert (forall ((r $Ref)) (!
  (and
    (=>
      (Set_in r ($FVF.domain_next (as sm@417@01  $FVF<next>)))
      (and (Set_in (inv@414@01 r) g@231@01) (img@415@01 r)))
    (=>
      (and (Set_in (inv@414@01 r) g@231@01) (img@415@01 r))
      (Set_in r ($FVF.domain_next (as sm@417@01  $FVF<next>)))))
  :pattern ((Set_in r ($FVF.domain_next (as sm@417@01  $FVF<next>))))
  :qid |qp.fvfDomDef287|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and (Set_in (inv@414@01 r) g@231@01) (img@415@01 r))
      (and (img@289@01 r) (Set_in (inv@288@01 r) g@231@01)))
    (=
      ($FVF.lookup_next (as sm@417@01  $FVF<next>) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@285@01))) r)))
  :pattern (($FVF.lookup_next (as sm@417@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@285@01))) r))
  :qid |qp.fvfValDef285|)))
(assert (forall ((r $Ref)) (!
  ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@285@01))) r) r)
  :pattern (($FVF.lookup_next (as sm@417@01  $FVF<next>) r))
  :qid |qp.fvfResTrgDef286|)))
(assert (=>
  (not
    (=
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@285@01))) last@284@01)
      $Ref.null))
  (and
    (forall ((r $Ref)) (!
      (=>
        (Set_in (inv@409@01 r) g@231@01)
        ($FVF.loc_next ($FVF.lookup_next (as sm@411@01  $FVF<next>) r) r))
      :pattern ((inv@409@01 r))
      :qid |quant-u-15702|))
    ($$%precondition ($SortWrappers.$FVF<next>To$Snap (as sm@412@01  $FVF<next>)) g@231@01)
    (forall ((r $Ref)) (!
      (=>
        (Set_in (inv@414@01 r) g@231@01)
        ($FVF.loc_next ($FVF.lookup_next (as sm@416@01  $FVF<next>) r) r))
      :pattern ((inv@414@01 r))
      :qid |quant-u-15705|))
    ($$%precondition ($SortWrappers.$FVF<next>To$Snap (as sm@417@01  $FVF<next>)) g@231@01))))
(assert (=>
  (not
    (=
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@285@01))) last@284@01)
      $Ref.null))
  (apply_IND_2<Bool> ($$ ($SortWrappers.$FVF<next>To$Snap (as sm@412@01  $FVF<next>)) g@231@01) (Set_singleton last@284@01) (inst_uReach_rev<Set<Ref>> ($$ ($SortWrappers.$FVF<next>To$Snap (as sm@417@01  $FVF<next>)) g@231@01) ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@285@01))) last@284@01)))))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale last.next != null ==>
;   apply_IND($$(g), Set(x), inst_uReach_2($$(g), x))
(declare-const $t@418@01 $Snap)
(assert (= $t@418@01 $Snap.unit))
; [eval] last.next != null ==> apply_IND($$(g), Set(x), inst_uReach_2($$(g), x))
; [eval] last.next != null
(set-option :timeout 0)
(push) ; 7
(assert (not (and (img@289@01 last@284@01) (Set_in (inv@288@01 last@284@01) g@231@01))))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(push) ; 7
(push) ; 8
(set-option :timeout 10)
(assert (not (=
  ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@285@01))) last@284@01)
  $Ref.null)))
(check-sat)
; unknown
(pop) ; 8
; 0.01s
; (get-info :all-statistics)
; [then-branch: 58 | Lookup(next, First:(Second:($t@285@01)), last@284@01) != Null | live]
; [else-branch: 58 | Lookup(next, First:(Second:($t@285@01)), last@284@01) == Null | dead]
(set-option :timeout 0)
(push) ; 8
; [then-branch: 58 | Lookup(next, First:(Second:($t@285@01)), last@284@01) != Null]
; [eval] apply_IND($$(g), Set(x), inst_uReach_2($$(g), x))
; [eval] $$(g)
(push) ; 9
(declare-const n@419@01 $Ref)
(push) ; 10
; [eval] (n in refs)
(assert (Set_in n@419@01 g@231@01))
(pop) ; 10
(declare-fun inv@420@01 ($Ref) $Ref)
(declare-fun img@421@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
(declare-const sm@422@01 $FVF<next>)
; Definitional axioms for snapshot map domain
; Definitional axioms for snapshot map values
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@289@01 r) (Set_in (inv@288@01 r) g@231@01))
    (=
      ($FVF.lookup_next (as sm@422@01  $FVF<next>) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@285@01))) r)))
  :pattern (($FVF.lookup_next (as sm@422@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@285@01))) r))
  :qid |qp.fvfValDef288|)))
(assert (forall ((r $Ref)) (!
  ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@285@01))) r) r)
  :pattern (($FVF.lookup_next (as sm@422@01  $FVF<next>) r))
  :qid |qp.fvfResTrgDef289|)))
; Check receiver injectivity
(push) ; 10
(assert (not (forall ((n1@419@01 $Ref) (n2@419@01 $Ref)) (!
  (=>
    (and
      (and
        (Set_in n1@419@01 g@231@01)
        ($FVF.loc_next ($FVF.lookup_next (as sm@422@01  $FVF<next>) n1@419@01) n1@419@01))
      (and
        (Set_in n2@419@01 g@231@01)
        ($FVF.loc_next ($FVF.lookup_next (as sm@422@01  $FVF<next>) n2@419@01) n2@419@01))
      (= n1@419@01 n2@419@01))
    (= n1@419@01 n2@419@01))
  
  :qid |next-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 10
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((n@419@01 $Ref)) (!
  (=>
    (Set_in n@419@01 g@231@01)
    (and (= (inv@420@01 n@419@01) n@419@01) (img@421@01 n@419@01)))
  :pattern ((Set_in n@419@01 g@231@01))
  :pattern ((inv@420@01 n@419@01))
  :pattern ((img@421@01 n@419@01))
  :qid |next-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=> (and (img@421@01 r) (Set_in (inv@420@01 r) g@231@01)) (= (inv@420@01 r) r))
  :pattern ((inv@420@01 r))
  :qid |next-fctOfInv|)))
(assert (forall ((r $Ref)) (!
  (=>
    (Set_in (inv@420@01 r) g@231@01)
    ($FVF.loc_next ($FVF.lookup_next (as sm@422@01  $FVF<next>) r) r))
  :pattern ((inv@420@01 r))
  :qid |quant-u-15708|)))
(push) ; 10
(assert (not (forall ((r $Ref)) (!
  (=>
    (and (Set_in (inv@420@01 r) g@231@01) (img@421@01 r) (= r (inv@420@01 r)))
    (>
      (ite
        (and (img@289@01 r) (Set_in (inv@288@01 r) g@231@01))
        $Perm.Write
        $Perm.No)
      $Perm.No))
  
  :qid |quant-u-15709|))))
(check-sat)
; unsat
(pop) ; 10
; 0.00s
; (get-info :all-statistics)
(declare-const sm@423@01 $FVF<next>)
; Definitional axioms for snapshot map domain
(assert (forall ((r $Ref)) (!
  (and
    (=>
      (Set_in r ($FVF.domain_next (as sm@423@01  $FVF<next>)))
      (and (Set_in (inv@420@01 r) g@231@01) (img@421@01 r)))
    (=>
      (and (Set_in (inv@420@01 r) g@231@01) (img@421@01 r))
      (Set_in r ($FVF.domain_next (as sm@423@01  $FVF<next>)))))
  :pattern ((Set_in r ($FVF.domain_next (as sm@423@01  $FVF<next>))))
  :qid |qp.fvfDomDef292|)))
; Definitional axioms for snapshot map values
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and (Set_in (inv@420@01 r) g@231@01) (img@421@01 r))
      (and (img@289@01 r) (Set_in (inv@288@01 r) g@231@01)))
    (=
      ($FVF.lookup_next (as sm@423@01  $FVF<next>) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@285@01))) r)))
  :pattern (($FVF.lookup_next (as sm@423@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@285@01))) r))
  :qid |qp.fvfValDef290|)))
(assert (forall ((r $Ref)) (!
  ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@285@01))) r) r)
  :pattern (($FVF.lookup_next (as sm@423@01  $FVF<next>) r))
  :qid |qp.fvfResTrgDef291|)))
(assert ($$%precondition ($SortWrappers.$FVF<next>To$Snap (as sm@423@01  $FVF<next>)) g@231@01))
(pop) ; 9
; Joined path conditions
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@289@01 r) (Set_in (inv@288@01 r) g@231@01))
    (=
      ($FVF.lookup_next (as sm@422@01  $FVF<next>) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@285@01))) r)))
  :pattern (($FVF.lookup_next (as sm@422@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@285@01))) r))
  :qid |qp.fvfValDef288|)))
(assert (forall ((r $Ref)) (!
  ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@285@01))) r) r)
  :pattern (($FVF.lookup_next (as sm@422@01  $FVF<next>) r))
  :qid |qp.fvfResTrgDef289|)))
(assert (forall ((n@419@01 $Ref)) (!
  (=>
    (Set_in n@419@01 g@231@01)
    (and (= (inv@420@01 n@419@01) n@419@01) (img@421@01 n@419@01)))
  :pattern ((Set_in n@419@01 g@231@01))
  :pattern ((inv@420@01 n@419@01))
  :pattern ((img@421@01 n@419@01))
  :qid |next-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=> (and (img@421@01 r) (Set_in (inv@420@01 r) g@231@01)) (= (inv@420@01 r) r))
  :pattern ((inv@420@01 r))
  :qid |next-fctOfInv|)))
(assert (forall ((r $Ref)) (!
  (and
    (=>
      (Set_in r ($FVF.domain_next (as sm@423@01  $FVF<next>)))
      (and (Set_in (inv@420@01 r) g@231@01) (img@421@01 r)))
    (=>
      (and (Set_in (inv@420@01 r) g@231@01) (img@421@01 r))
      (Set_in r ($FVF.domain_next (as sm@423@01  $FVF<next>)))))
  :pattern ((Set_in r ($FVF.domain_next (as sm@423@01  $FVF<next>))))
  :qid |qp.fvfDomDef292|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and (Set_in (inv@420@01 r) g@231@01) (img@421@01 r))
      (and (img@289@01 r) (Set_in (inv@288@01 r) g@231@01)))
    (=
      ($FVF.lookup_next (as sm@423@01  $FVF<next>) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@285@01))) r)))
  :pattern (($FVF.lookup_next (as sm@423@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@285@01))) r))
  :qid |qp.fvfValDef290|)))
(assert (forall ((r $Ref)) (!
  ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@285@01))) r) r)
  :pattern (($FVF.lookup_next (as sm@423@01  $FVF<next>) r))
  :qid |qp.fvfResTrgDef291|)))
(assert (and
  (forall ((r $Ref)) (!
    (=>
      (Set_in (inv@420@01 r) g@231@01)
      ($FVF.loc_next ($FVF.lookup_next (as sm@422@01  $FVF<next>) r) r))
    :pattern ((inv@420@01 r))
    :qid |quant-u-15708|))
  ($$%precondition ($SortWrappers.$FVF<next>To$Snap (as sm@423@01  $FVF<next>)) g@231@01)))
; [eval] Set(x)
; [eval] inst_uReach_2($$(g), x)
; [eval] $$(g)
(push) ; 9
(declare-const n@424@01 $Ref)
(push) ; 10
; [eval] (n in refs)
(assert (Set_in n@424@01 g@231@01))
(pop) ; 10
(declare-fun inv@425@01 ($Ref) $Ref)
(declare-fun img@426@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
(declare-const sm@427@01 $FVF<next>)
; Definitional axioms for snapshot map domain
; Definitional axioms for snapshot map values
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@289@01 r) (Set_in (inv@288@01 r) g@231@01))
    (=
      ($FVF.lookup_next (as sm@427@01  $FVF<next>) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@285@01))) r)))
  :pattern (($FVF.lookup_next (as sm@427@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@285@01))) r))
  :qid |qp.fvfValDef293|)))
(assert (forall ((r $Ref)) (!
  ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@285@01))) r) r)
  :pattern (($FVF.lookup_next (as sm@427@01  $FVF<next>) r))
  :qid |qp.fvfResTrgDef294|)))
; Check receiver injectivity
(push) ; 10
(assert (not (forall ((n1@424@01 $Ref) (n2@424@01 $Ref)) (!
  (=>
    (and
      (and
        (Set_in n1@424@01 g@231@01)
        ($FVF.loc_next ($FVF.lookup_next (as sm@427@01  $FVF<next>) n1@424@01) n1@424@01))
      (and
        (Set_in n2@424@01 g@231@01)
        ($FVF.loc_next ($FVF.lookup_next (as sm@427@01  $FVF<next>) n2@424@01) n2@424@01))
      (= n1@424@01 n2@424@01))
    (= n1@424@01 n2@424@01))
  
  :qid |next-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 10
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((n@424@01 $Ref)) (!
  (=>
    (Set_in n@424@01 g@231@01)
    (and (= (inv@425@01 n@424@01) n@424@01) (img@426@01 n@424@01)))
  :pattern ((Set_in n@424@01 g@231@01))
  :pattern ((inv@425@01 n@424@01))
  :pattern ((img@426@01 n@424@01))
  :qid |next-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=> (and (img@426@01 r) (Set_in (inv@425@01 r) g@231@01)) (= (inv@425@01 r) r))
  :pattern ((inv@425@01 r))
  :qid |next-fctOfInv|)))
(assert (forall ((r $Ref)) (!
  (=>
    (Set_in (inv@425@01 r) g@231@01)
    ($FVF.loc_next ($FVF.lookup_next (as sm@427@01  $FVF<next>) r) r))
  :pattern ((inv@425@01 r))
  :qid |quant-u-15711|)))
(push) ; 10
(assert (not (forall ((r $Ref)) (!
  (=>
    (and (Set_in (inv@425@01 r) g@231@01) (img@426@01 r) (= r (inv@425@01 r)))
    (>
      (ite
        (and (img@289@01 r) (Set_in (inv@288@01 r) g@231@01))
        $Perm.Write
        $Perm.No)
      $Perm.No))
  
  :qid |quant-u-15712|))))
(check-sat)
; unsat
(pop) ; 10
; 0.00s
; (get-info :all-statistics)
(declare-const sm@428@01 $FVF<next>)
; Definitional axioms for snapshot map domain
(assert (forall ((r $Ref)) (!
  (and
    (=>
      (Set_in r ($FVF.domain_next (as sm@428@01  $FVF<next>)))
      (and (Set_in (inv@425@01 r) g@231@01) (img@426@01 r)))
    (=>
      (and (Set_in (inv@425@01 r) g@231@01) (img@426@01 r))
      (Set_in r ($FVF.domain_next (as sm@428@01  $FVF<next>)))))
  :pattern ((Set_in r ($FVF.domain_next (as sm@428@01  $FVF<next>))))
  :qid |qp.fvfDomDef297|)))
; Definitional axioms for snapshot map values
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and (Set_in (inv@425@01 r) g@231@01) (img@426@01 r))
      (and (img@289@01 r) (Set_in (inv@288@01 r) g@231@01)))
    (=
      ($FVF.lookup_next (as sm@428@01  $FVF<next>) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@285@01))) r)))
  :pattern (($FVF.lookup_next (as sm@428@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@285@01))) r))
  :qid |qp.fvfValDef295|)))
(assert (forall ((r $Ref)) (!
  ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@285@01))) r) r)
  :pattern (($FVF.lookup_next (as sm@428@01  $FVF<next>) r))
  :qid |qp.fvfResTrgDef296|)))
(assert ($$%precondition ($SortWrappers.$FVF<next>To$Snap (as sm@428@01  $FVF<next>)) g@231@01))
(pop) ; 9
; Joined path conditions
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@289@01 r) (Set_in (inv@288@01 r) g@231@01))
    (=
      ($FVF.lookup_next (as sm@427@01  $FVF<next>) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@285@01))) r)))
  :pattern (($FVF.lookup_next (as sm@427@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@285@01))) r))
  :qid |qp.fvfValDef293|)))
(assert (forall ((r $Ref)) (!
  ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@285@01))) r) r)
  :pattern (($FVF.lookup_next (as sm@427@01  $FVF<next>) r))
  :qid |qp.fvfResTrgDef294|)))
(assert (forall ((n@424@01 $Ref)) (!
  (=>
    (Set_in n@424@01 g@231@01)
    (and (= (inv@425@01 n@424@01) n@424@01) (img@426@01 n@424@01)))
  :pattern ((Set_in n@424@01 g@231@01))
  :pattern ((inv@425@01 n@424@01))
  :pattern ((img@426@01 n@424@01))
  :qid |next-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=> (and (img@426@01 r) (Set_in (inv@425@01 r) g@231@01)) (= (inv@425@01 r) r))
  :pattern ((inv@425@01 r))
  :qid |next-fctOfInv|)))
(assert (forall ((r $Ref)) (!
  (and
    (=>
      (Set_in r ($FVF.domain_next (as sm@428@01  $FVF<next>)))
      (and (Set_in (inv@425@01 r) g@231@01) (img@426@01 r)))
    (=>
      (and (Set_in (inv@425@01 r) g@231@01) (img@426@01 r))
      (Set_in r ($FVF.domain_next (as sm@428@01  $FVF<next>)))))
  :pattern ((Set_in r ($FVF.domain_next (as sm@428@01  $FVF<next>))))
  :qid |qp.fvfDomDef297|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and (Set_in (inv@425@01 r) g@231@01) (img@426@01 r))
      (and (img@289@01 r) (Set_in (inv@288@01 r) g@231@01)))
    (=
      ($FVF.lookup_next (as sm@428@01  $FVF<next>) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@285@01))) r)))
  :pattern (($FVF.lookup_next (as sm@428@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@285@01))) r))
  :qid |qp.fvfValDef295|)))
(assert (forall ((r $Ref)) (!
  ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@285@01))) r) r)
  :pattern (($FVF.lookup_next (as sm@428@01  $FVF<next>) r))
  :qid |qp.fvfResTrgDef296|)))
(assert (and
  (forall ((r $Ref)) (!
    (=>
      (Set_in (inv@425@01 r) g@231@01)
      ($FVF.loc_next ($FVF.lookup_next (as sm@427@01  $FVF<next>) r) r))
    :pattern ((inv@425@01 r))
    :qid |quant-u-15711|))
  ($$%precondition ($SortWrappers.$FVF<next>To$Snap (as sm@428@01  $FVF<next>)) g@231@01)))
(pop) ; 8
(pop) ; 7
; Joined path conditions
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@289@01 r) (Set_in (inv@288@01 r) g@231@01))
    (=
      ($FVF.lookup_next (as sm@422@01  $FVF<next>) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@285@01))) r)))
  :pattern (($FVF.lookup_next (as sm@422@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@285@01))) r))
  :qid |qp.fvfValDef288|)))
(assert (forall ((r $Ref)) (!
  ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@285@01))) r) r)
  :pattern (($FVF.lookup_next (as sm@422@01  $FVF<next>) r))
  :qid |qp.fvfResTrgDef289|)))
(assert (forall ((n@419@01 $Ref)) (!
  (=>
    (Set_in n@419@01 g@231@01)
    (and (= (inv@420@01 n@419@01) n@419@01) (img@421@01 n@419@01)))
  :pattern ((Set_in n@419@01 g@231@01))
  :pattern ((inv@420@01 n@419@01))
  :pattern ((img@421@01 n@419@01))
  :qid |next-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=> (and (img@421@01 r) (Set_in (inv@420@01 r) g@231@01)) (= (inv@420@01 r) r))
  :pattern ((inv@420@01 r))
  :qid |next-fctOfInv|)))
(assert (forall ((r $Ref)) (!
  (and
    (=>
      (Set_in r ($FVF.domain_next (as sm@423@01  $FVF<next>)))
      (and (Set_in (inv@420@01 r) g@231@01) (img@421@01 r)))
    (=>
      (and (Set_in (inv@420@01 r) g@231@01) (img@421@01 r))
      (Set_in r ($FVF.domain_next (as sm@423@01  $FVF<next>)))))
  :pattern ((Set_in r ($FVF.domain_next (as sm@423@01  $FVF<next>))))
  :qid |qp.fvfDomDef292|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and (Set_in (inv@420@01 r) g@231@01) (img@421@01 r))
      (and (img@289@01 r) (Set_in (inv@288@01 r) g@231@01)))
    (=
      ($FVF.lookup_next (as sm@423@01  $FVF<next>) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@285@01))) r)))
  :pattern (($FVF.lookup_next (as sm@423@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@285@01))) r))
  :qid |qp.fvfValDef290|)))
(assert (forall ((r $Ref)) (!
  ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@285@01))) r) r)
  :pattern (($FVF.lookup_next (as sm@423@01  $FVF<next>) r))
  :qid |qp.fvfResTrgDef291|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@289@01 r) (Set_in (inv@288@01 r) g@231@01))
    (=
      ($FVF.lookup_next (as sm@427@01  $FVF<next>) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@285@01))) r)))
  :pattern (($FVF.lookup_next (as sm@427@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@285@01))) r))
  :qid |qp.fvfValDef293|)))
(assert (forall ((r $Ref)) (!
  ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@285@01))) r) r)
  :pattern (($FVF.lookup_next (as sm@427@01  $FVF<next>) r))
  :qid |qp.fvfResTrgDef294|)))
(assert (forall ((n@424@01 $Ref)) (!
  (=>
    (Set_in n@424@01 g@231@01)
    (and (= (inv@425@01 n@424@01) n@424@01) (img@426@01 n@424@01)))
  :pattern ((Set_in n@424@01 g@231@01))
  :pattern ((inv@425@01 n@424@01))
  :pattern ((img@426@01 n@424@01))
  :qid |next-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=> (and (img@426@01 r) (Set_in (inv@425@01 r) g@231@01)) (= (inv@425@01 r) r))
  :pattern ((inv@425@01 r))
  :qid |next-fctOfInv|)))
(assert (forall ((r $Ref)) (!
  (and
    (=>
      (Set_in r ($FVF.domain_next (as sm@428@01  $FVF<next>)))
      (and (Set_in (inv@425@01 r) g@231@01) (img@426@01 r)))
    (=>
      (and (Set_in (inv@425@01 r) g@231@01) (img@426@01 r))
      (Set_in r ($FVF.domain_next (as sm@428@01  $FVF<next>)))))
  :pattern ((Set_in r ($FVF.domain_next (as sm@428@01  $FVF<next>))))
  :qid |qp.fvfDomDef297|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and (Set_in (inv@425@01 r) g@231@01) (img@426@01 r))
      (and (img@289@01 r) (Set_in (inv@288@01 r) g@231@01)))
    (=
      ($FVF.lookup_next (as sm@428@01  $FVF<next>) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@285@01))) r)))
  :pattern (($FVF.lookup_next (as sm@428@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@285@01))) r))
  :qid |qp.fvfValDef295|)))
(assert (forall ((r $Ref)) (!
  ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@285@01))) r) r)
  :pattern (($FVF.lookup_next (as sm@428@01  $FVF<next>) r))
  :qid |qp.fvfResTrgDef296|)))
(assert (=>
  (not
    (=
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@285@01))) last@284@01)
      $Ref.null))
  (and
    (forall ((r $Ref)) (!
      (=>
        (Set_in (inv@420@01 r) g@231@01)
        ($FVF.loc_next ($FVF.lookup_next (as sm@422@01  $FVF<next>) r) r))
      :pattern ((inv@420@01 r))
      :qid |quant-u-15708|))
    ($$%precondition ($SortWrappers.$FVF<next>To$Snap (as sm@423@01  $FVF<next>)) g@231@01)
    (forall ((r $Ref)) (!
      (=>
        (Set_in (inv@425@01 r) g@231@01)
        ($FVF.loc_next ($FVF.lookup_next (as sm@427@01  $FVF<next>) r) r))
      :pattern ((inv@425@01 r))
      :qid |quant-u-15711|))
    ($$%precondition ($SortWrappers.$FVF<next>To$Snap (as sm@428@01  $FVF<next>)) g@231@01))))
(assert (=>
  (not
    (=
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@285@01))) last@284@01)
      $Ref.null))
  (apply_IND<Bool> ($$ ($SortWrappers.$FVF<next>To$Snap (as sm@423@01  $FVF<next>)) g@231@01) (Set_singleton x@232@01) (inst_uReach_2<Set<Ref>> ($$ ($SortWrappers.$FVF<next>To$Snap (as sm@428@01  $FVF<next>)) g@231@01) x@232@01))))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; last := last.next
(set-option :timeout 0)
(push) ; 7
(assert (not (and (img@289@01 last@284@01) (Set_in (inv@288@01 last@284@01) g@231@01))))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(declare-const last@429@01 $Ref)
(assert (=
  last@429@01
  ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@285@01))) last@284@01)))
; Loop head block: Re-establish invariant
; [eval] !((null in g))
; [eval] (null in g)
(declare-const n$1@430@01 $Ref)
(push) ; 7
; [eval] (n$1 in g)
(assert (Set_in n$1@430@01 g@231@01))
(declare-const sm@431@01 $FVF<next>)
; Definitional axioms for snapshot map values
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@289@01 r) (Set_in (inv@288@01 r) g@231@01))
    (=
      ($FVF.lookup_next (as sm@431@01  $FVF<next>) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@285@01))) r)))
  :pattern (($FVF.lookup_next (as sm@431@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@285@01))) r))
  :qid |qp.fvfValDef298|)))
(assert (forall ((r $Ref)) (!
  ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@285@01))) r) r)
  :pattern (($FVF.lookup_next (as sm@431@01  $FVF<next>) r))
  :qid |qp.fvfResTrgDef299|)))
(pop) ; 7
(declare-fun inv@432@01 ($Ref) $Ref)
(declare-fun img@433@01 ($Ref) Bool)
; Nested auxiliary terms: globals
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@289@01 r) (Set_in (inv@288@01 r) g@231@01))
    (=
      ($FVF.lookup_next (as sm@431@01  $FVF<next>) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@285@01))) r)))
  :pattern (($FVF.lookup_next (as sm@431@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@285@01))) r))
  :qid |qp.fvfValDef298|)))
(assert (forall ((r $Ref)) (!
  ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@285@01))) r) r)
  :pattern (($FVF.lookup_next (as sm@431@01  $FVF<next>) r))
  :qid |qp.fvfResTrgDef299|)))
; Nested auxiliary terms: non-globals
(declare-const sm@434@01 $FVF<next>)
; Definitional axioms for snapshot map values
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@289@01 r) (Set_in (inv@288@01 r) g@231@01))
    (=
      ($FVF.lookup_next (as sm@434@01  $FVF<next>) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@285@01))) r)))
  :pattern (($FVF.lookup_next (as sm@434@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@285@01))) r))
  :qid |qp.fvfValDef300|)))
(assert (forall ((r $Ref)) (!
  ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@285@01))) r) r)
  :pattern (($FVF.lookup_next (as sm@434@01  $FVF<next>) r))
  :qid |qp.fvfResTrgDef301|)))
; Check receiver injectivity
(push) ; 7
(assert (not (forall ((n$11@430@01 $Ref) (n$12@430@01 $Ref)) (!
  (=>
    (and
      (and
        (Set_in n$11@430@01 g@231@01)
        ($FVF.loc_next ($FVF.lookup_next (as sm@434@01  $FVF<next>) n$11@430@01) n$11@430@01))
      (and
        (Set_in n$12@430@01 g@231@01)
        ($FVF.loc_next ($FVF.lookup_next (as sm@434@01  $FVF<next>) n$12@430@01) n$12@430@01))
      (= n$11@430@01 n$12@430@01))
    (= n$11@430@01 n$12@430@01))
  
  :qid |next-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((n$1@430@01 $Ref)) (!
  (=>
    (Set_in n$1@430@01 g@231@01)
    (and (= (inv@432@01 n$1@430@01) n$1@430@01) (img@433@01 n$1@430@01)))
  :pattern (($FVF.loc_next ($FVF.lookup_next (as sm@431@01  $FVF<next>) n$1@430@01) n$1@430@01))
  :qid |next-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=> (and (img@433@01 r) (Set_in (inv@432@01 r) g@231@01)) (= (inv@432@01 r) r))
  :pattern ((inv@432@01 r))
  :qid |next-fctOfInv|)))
(assert (forall ((r $Ref)) (!
  (=>
    (Set_in (inv@432@01 r) g@231@01)
    ($FVF.loc_next ($FVF.lookup_next (as sm@434@01  $FVF<next>) r) r))
  :pattern ((inv@432@01 r))
  :qid |quant-u-15714|)))
; Precomputing data for removing quantified permissions
(define-fun pTaken@435@01 ((r $Ref)) $Perm
  (ite
    (and (Set_in (inv@432@01 r) g@231@01) (img@433@01 r) (= r (inv@432@01 r)))
    ($Perm.min
      (ite
        (and (img@289@01 r) (Set_in (inv@288@01 r) g@231@01))
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
(push) ; 7
(set-option :timeout 500)
(assert (not (forall ((r $Ref)) (!
  (=
    (-
      (ite
        (and (img@289@01 r) (Set_in (inv@288@01 r) g@231@01))
        $Perm.Write
        $Perm.No)
      (pTaken@435@01 r))
    $Perm.No)
  
  :qid |quant-u-15716|))))
(check-sat)
; unsat
(pop) ; 7
; 0.05s
; (get-info :all-statistics)
; Intermediate check if already taken enough permissions
(set-option :timeout 0)
(push) ; 7
(set-option :timeout 500)
(assert (not (forall ((r $Ref)) (!
  (=>
    (and (Set_in (inv@432@01 r) g@231@01) (img@433@01 r) (= r (inv@432@01 r)))
    (= (- $Perm.Write (pTaken@435@01 r)) $Perm.No))
  
  :qid |quant-u-15717|))))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
; Final check if taken enough permissions
; Done removing quantified permissions
; [eval] (forall n$2: Ref :: { (n$2.next in g) } { (n$2 in g), n$2.next } (n$2 in g) && n$2.next != null ==> (n$2.next in g))
(declare-const n$2@436@01 $Ref)
(set-option :timeout 0)
(push) ; 7
; [eval] (n$2 in g) && n$2.next != null ==> (n$2.next in g)
; [eval] (n$2 in g) && n$2.next != null
; [eval] (n$2 in g)
(push) ; 8
; [then-branch: 59 | !(n$2@436@01 in g@231@01) | live]
; [else-branch: 59 | n$2@436@01 in g@231@01 | live]
(push) ; 9
; [then-branch: 59 | !(n$2@436@01 in g@231@01)]
(assert (not (Set_in n$2@436@01 g@231@01)))
(pop) ; 9
(push) ; 9
; [else-branch: 59 | n$2@436@01 in g@231@01]
(assert (Set_in n$2@436@01 g@231@01))
; [eval] n$2.next != null
(assert (and
  (forall ((r $Ref)) (!
    (=>
      (and (img@289@01 r) (Set_in (inv@288@01 r) g@231@01))
      (=
        ($FVF.lookup_next (as sm@434@01  $FVF<next>) r)
        ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@285@01))) r)))
    :pattern (($FVF.lookup_next (as sm@434@01  $FVF<next>) r))
    :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@285@01))) r))
    :qid |qp.fvfValDef300|))
  (forall ((r $Ref)) (!
    ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@285@01))) r) r)
    :pattern (($FVF.lookup_next (as sm@434@01  $FVF<next>) r))
    :qid |qp.fvfResTrgDef301|))))
(assert ($FVF.loc_next ($FVF.lookup_next (as sm@434@01  $FVF<next>) n$2@436@01) n$2@436@01))
(push) ; 10
(assert (not (and (img@289@01 n$2@436@01) (Set_in (inv@288@01 n$2@436@01) g@231@01))))
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
    (and (img@289@01 r) (Set_in (inv@288@01 r) g@231@01))
    (=
      ($FVF.lookup_next (as sm@434@01  $FVF<next>) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@285@01))) r)))
  :pattern (($FVF.lookup_next (as sm@434@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@285@01))) r))
  :qid |qp.fvfValDef300|)))
(assert (forall ((r $Ref)) (!
  ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@285@01))) r) r)
  :pattern (($FVF.lookup_next (as sm@434@01  $FVF<next>) r))
  :qid |qp.fvfResTrgDef301|)))
(assert (=>
  (Set_in n$2@436@01 g@231@01)
  (and
    (Set_in n$2@436@01 g@231@01)
    ($FVF.loc_next ($FVF.lookup_next (as sm@434@01  $FVF<next>) n$2@436@01) n$2@436@01))))
(assert (or (Set_in n$2@436@01 g@231@01) (not (Set_in n$2@436@01 g@231@01))))
(push) ; 8
; [then-branch: 60 | n$2@436@01 in g@231@01 && Lookup(next, sm@434@01, n$2@436@01) != Null | live]
; [else-branch: 60 | !(n$2@436@01 in g@231@01 && Lookup(next, sm@434@01, n$2@436@01) != Null) | live]
(push) ; 9
; [then-branch: 60 | n$2@436@01 in g@231@01 && Lookup(next, sm@434@01, n$2@436@01) != Null]
(assert (and
  (Set_in n$2@436@01 g@231@01)
  (not (= ($FVF.lookup_next (as sm@434@01  $FVF<next>) n$2@436@01) $Ref.null))))
; [eval] (n$2.next in g)
(assert (and
  (forall ((r $Ref)) (!
    (=>
      (and (img@289@01 r) (Set_in (inv@288@01 r) g@231@01))
      (=
        ($FVF.lookup_next (as sm@434@01  $FVF<next>) r)
        ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@285@01))) r)))
    :pattern (($FVF.lookup_next (as sm@434@01  $FVF<next>) r))
    :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@285@01))) r))
    :qid |qp.fvfValDef300|))
  (forall ((r $Ref)) (!
    ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@285@01))) r) r)
    :pattern (($FVF.lookup_next (as sm@434@01  $FVF<next>) r))
    :qid |qp.fvfResTrgDef301|))))
(assert ($FVF.loc_next ($FVF.lookup_next (as sm@434@01  $FVF<next>) n$2@436@01) n$2@436@01))
(push) ; 10
(assert (not (and (img@289@01 n$2@436@01) (Set_in (inv@288@01 n$2@436@01) g@231@01))))
(check-sat)
; unsat
(pop) ; 10
; 0.00s
; (get-info :all-statistics)
(pop) ; 9
(push) ; 9
; [else-branch: 60 | !(n$2@436@01 in g@231@01 && Lookup(next, sm@434@01, n$2@436@01) != Null)]
(assert (not
  (and
    (Set_in n$2@436@01 g@231@01)
    (not (= ($FVF.lookup_next (as sm@434@01  $FVF<next>) n$2@436@01) $Ref.null)))))
(pop) ; 9
(pop) ; 8
; Joined path conditions
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@289@01 r) (Set_in (inv@288@01 r) g@231@01))
    (=
      ($FVF.lookup_next (as sm@434@01  $FVF<next>) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@285@01))) r)))
  :pattern (($FVF.lookup_next (as sm@434@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@285@01))) r))
  :qid |qp.fvfValDef300|)))
(assert (forall ((r $Ref)) (!
  ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@285@01))) r) r)
  :pattern (($FVF.lookup_next (as sm@434@01  $FVF<next>) r))
  :qid |qp.fvfResTrgDef301|)))
(assert (=>
  (and
    (Set_in n$2@436@01 g@231@01)
    (not (= ($FVF.lookup_next (as sm@434@01  $FVF<next>) n$2@436@01) $Ref.null)))
  (and
    (Set_in n$2@436@01 g@231@01)
    (not (= ($FVF.lookup_next (as sm@434@01  $FVF<next>) n$2@436@01) $Ref.null))
    ($FVF.loc_next ($FVF.lookup_next (as sm@434@01  $FVF<next>) n$2@436@01) n$2@436@01))))
; Joined path conditions
(assert (or
  (not
    (and
      (Set_in n$2@436@01 g@231@01)
      (not
        (= ($FVF.lookup_next (as sm@434@01  $FVF<next>) n$2@436@01) $Ref.null))))
  (and
    (Set_in n$2@436@01 g@231@01)
    (not (= ($FVF.lookup_next (as sm@434@01  $FVF<next>) n$2@436@01) $Ref.null)))))
; Definitional axioms for snapshot map values
(pop) ; 7
; Nested auxiliary terms: globals (aux)
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@289@01 r) (Set_in (inv@288@01 r) g@231@01))
    (=
      ($FVF.lookup_next (as sm@434@01  $FVF<next>) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@285@01))) r)))
  :pattern (($FVF.lookup_next (as sm@434@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@285@01))) r))
  :qid |qp.fvfValDef300|)))
(assert (forall ((r $Ref)) (!
  ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@285@01))) r) r)
  :pattern (($FVF.lookup_next (as sm@434@01  $FVF<next>) r))
  :qid |qp.fvfResTrgDef301|)))
; Nested auxiliary terms: non-globals (aux)
(assert (forall ((n$2@436@01 $Ref)) (!
  (and
    (=>
      (Set_in n$2@436@01 g@231@01)
      (and
        (Set_in n$2@436@01 g@231@01)
        ($FVF.loc_next ($FVF.lookup_next (as sm@434@01  $FVF<next>) n$2@436@01) n$2@436@01)))
    (or (Set_in n$2@436@01 g@231@01) (not (Set_in n$2@436@01 g@231@01)))
    (=>
      (and
        (Set_in n$2@436@01 g@231@01)
        (not
          (= ($FVF.lookup_next (as sm@434@01  $FVF<next>) n$2@436@01) $Ref.null)))
      (and
        (Set_in n$2@436@01 g@231@01)
        (not
          (= ($FVF.lookup_next (as sm@434@01  $FVF<next>) n$2@436@01) $Ref.null))
        ($FVF.loc_next ($FVF.lookup_next (as sm@434@01  $FVF<next>) n$2@436@01) n$2@436@01)))
    (or
      (not
        (and
          (Set_in n$2@436@01 g@231@01)
          (not
            (=
              ($FVF.lookup_next (as sm@434@01  $FVF<next>) n$2@436@01)
              $Ref.null))))
      (and
        (Set_in n$2@436@01 g@231@01)
        (not
          (= ($FVF.lookup_next (as sm@434@01  $FVF<next>) n$2@436@01) $Ref.null)))))
  :pattern ((Set_in ($FVF.lookup_next (as sm@434@01  $FVF<next>) n$2@436@01) g@231@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/graphs/static/outlines/list_append.vpr@367@23@367@31-aux|)))
(assert (forall ((n$2@436@01 $Ref)) (!
  (and
    (=>
      (Set_in n$2@436@01 g@231@01)
      (and
        (Set_in n$2@436@01 g@231@01)
        ($FVF.loc_next ($FVF.lookup_next (as sm@434@01  $FVF<next>) n$2@436@01) n$2@436@01)))
    (or (Set_in n$2@436@01 g@231@01) (not (Set_in n$2@436@01 g@231@01)))
    (=>
      (and
        (Set_in n$2@436@01 g@231@01)
        (not
          (= ($FVF.lookup_next (as sm@434@01  $FVF<next>) n$2@436@01) $Ref.null)))
      (and
        (Set_in n$2@436@01 g@231@01)
        (not
          (= ($FVF.lookup_next (as sm@434@01  $FVF<next>) n$2@436@01) $Ref.null))
        ($FVF.loc_next ($FVF.lookup_next (as sm@434@01  $FVF<next>) n$2@436@01) n$2@436@01)))
    (or
      (not
        (and
          (Set_in n$2@436@01 g@231@01)
          (not
            (=
              ($FVF.lookup_next (as sm@434@01  $FVF<next>) n$2@436@01)
              $Ref.null))))
      (and
        (Set_in n$2@436@01 g@231@01)
        (not
          (= ($FVF.lookup_next (as sm@434@01  $FVF<next>) n$2@436@01) $Ref.null)))))
  :pattern ((Set_in n$2@436@01 g@231@01) ($FVF.loc_next ($FVF.lookup_next (as sm@434@01  $FVF<next>) n$2@436@01) n$2@436@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/graphs/static/outlines/list_append.vpr@367@23@367@31-aux|)))
(push) ; 7
(assert (not (forall ((n$2@436@01 $Ref)) (!
  (=>
    (and
      (Set_in n$2@436@01 g@231@01)
      (not
        (= ($FVF.lookup_next (as sm@434@01  $FVF<next>) n$2@436@01) $Ref.null)))
    (Set_in ($FVF.lookup_next (as sm@434@01  $FVF<next>) n$2@436@01) g@231@01))
  :pattern ((Set_in ($FVF.lookup_next (as sm@434@01  $FVF<next>) n$2@436@01) g@231@01))
  :pattern ((Set_in n$2@436@01 g@231@01) ($FVF.loc_next ($FVF.lookup_next (as sm@434@01  $FVF<next>) n$2@436@01) n$2@436@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/graphs/static/outlines/list_append.vpr@367@23@367@31|))))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(assert (forall ((n$2@436@01 $Ref)) (!
  (=>
    (and
      (Set_in n$2@436@01 g@231@01)
      (not
        (= ($FVF.lookup_next (as sm@434@01  $FVF<next>) n$2@436@01) $Ref.null)))
    (Set_in ($FVF.lookup_next (as sm@434@01  $FVF<next>) n$2@436@01) g@231@01))
  :pattern ((Set_in ($FVF.lookup_next (as sm@434@01  $FVF<next>) n$2@436@01) g@231@01))
  :pattern ((Set_in n$2@436@01 g@231@01) ($FVF.loc_next ($FVF.lookup_next (as sm@434@01  $FVF<next>) n$2@436@01) n$2@436@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/graphs/static/outlines/list_append.vpr@367@23@367@31|)))
; [eval] (last in g)
(push) ; 7
(assert (not (Set_in last@429@01 g@231@01)))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(assert (Set_in last@429@01 g@231@01))
; [eval] (x in g)
; [eval] (y in g)
; [eval] (forall n: Ref :: { (n in g) } { exists_path($$(g), x, n) } { exists_path($$(g), y, n) } (n in g) ==> exists_path($$(g), x, n) || exists_path($$(g), y, n))
(declare-const n@437@01 $Ref)
(push) ; 7
; [eval] (n in g) ==> exists_path($$(g), x, n) || exists_path($$(g), y, n)
; [eval] (n in g)
(push) ; 8
; [then-branch: 61 | n@437@01 in g@231@01 | live]
; [else-branch: 61 | !(n@437@01 in g@231@01) | live]
(push) ; 9
; [then-branch: 61 | n@437@01 in g@231@01]
(assert (Set_in n@437@01 g@231@01))
; [eval] exists_path($$(g), x, n) || exists_path($$(g), y, n)
; [eval] exists_path($$(g), x, n)
; [eval] $$(g)
(push) ; 10
(declare-const n@438@01 $Ref)
(push) ; 11
; [eval] (n in refs)
(assert (Set_in n@438@01 g@231@01))
(pop) ; 11
(declare-fun inv@439@01 ($Ref) $Ref)
(declare-fun img@440@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
; Definitional axioms for snapshot map domain
; Definitional axioms for snapshot map values
; Check receiver injectivity
(push) ; 11
(assert (not (forall ((n1@438@01 $Ref) (n2@438@01 $Ref)) (!
  (=>
    (and
      (and
        (Set_in n1@438@01 g@231@01)
        ($FVF.loc_next ($FVF.lookup_next (as sm@434@01  $FVF<next>) n1@438@01) n1@438@01))
      (and
        (Set_in n2@438@01 g@231@01)
        ($FVF.loc_next ($FVF.lookup_next (as sm@434@01  $FVF<next>) n2@438@01) n2@438@01))
      (= n1@438@01 n2@438@01))
    (= n1@438@01 n2@438@01))
  
  :qid |next-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 11
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((n@438@01 $Ref)) (!
  (=>
    (Set_in n@438@01 g@231@01)
    (and (= (inv@439@01 n@438@01) n@438@01) (img@440@01 n@438@01)))
  :pattern ((Set_in n@438@01 g@231@01))
  :pattern ((inv@439@01 n@438@01))
  :pattern ((img@440@01 n@438@01))
  :qid |next-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=> (and (img@440@01 r) (Set_in (inv@439@01 r) g@231@01)) (= (inv@439@01 r) r))
  :pattern ((inv@439@01 r))
  :qid |next-fctOfInv|)))
(assert (forall ((r $Ref)) (!
  (=>
    (Set_in (inv@439@01 r) g@231@01)
    ($FVF.loc_next ($FVF.lookup_next (as sm@434@01  $FVF<next>) r) r))
  :pattern ((inv@439@01 r))
  :qid |quant-u-15719|)))
(push) ; 11
(assert (not (forall ((r $Ref)) (!
  (=>
    (and (Set_in (inv@439@01 r) g@231@01) (img@440@01 r) (= r (inv@439@01 r)))
    (>
      (ite
        (and (img@289@01 r) (Set_in (inv@288@01 r) g@231@01))
        $Perm.Write
        $Perm.No)
      $Perm.No))
  
  :qid |quant-u-15720|))))
(check-sat)
; unsat
(pop) ; 11
; 0.00s
; (get-info :all-statistics)
(declare-const sm@441@01 $FVF<next>)
; Definitional axioms for snapshot map domain
(assert (forall ((r $Ref)) (!
  (and
    (=>
      (Set_in r ($FVF.domain_next (as sm@441@01  $FVF<next>)))
      (and (Set_in (inv@439@01 r) g@231@01) (img@440@01 r)))
    (=>
      (and (Set_in (inv@439@01 r) g@231@01) (img@440@01 r))
      (Set_in r ($FVF.domain_next (as sm@441@01  $FVF<next>)))))
  :pattern ((Set_in r ($FVF.domain_next (as sm@441@01  $FVF<next>))))
  :qid |qp.fvfDomDef304|)))
; Definitional axioms for snapshot map values
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and (Set_in (inv@439@01 r) g@231@01) (img@440@01 r))
      (and (img@289@01 r) (Set_in (inv@288@01 r) g@231@01)))
    (=
      ($FVF.lookup_next (as sm@441@01  $FVF<next>) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@285@01))) r)))
  :pattern (($FVF.lookup_next (as sm@441@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@285@01))) r))
  :qid |qp.fvfValDef302|)))
(assert (forall ((r $Ref)) (!
  ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@285@01))) r) r)
  :pattern (($FVF.lookup_next (as sm@441@01  $FVF<next>) r))
  :qid |qp.fvfResTrgDef303|)))
(assert ($$%precondition ($SortWrappers.$FVF<next>To$Snap (as sm@441@01  $FVF<next>)) g@231@01))
(pop) ; 10
; Joined path conditions
(assert (forall ((n@438@01 $Ref)) (!
  (=>
    (Set_in n@438@01 g@231@01)
    (and (= (inv@439@01 n@438@01) n@438@01) (img@440@01 n@438@01)))
  :pattern ((Set_in n@438@01 g@231@01))
  :pattern ((inv@439@01 n@438@01))
  :pattern ((img@440@01 n@438@01))
  :qid |next-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=> (and (img@440@01 r) (Set_in (inv@439@01 r) g@231@01)) (= (inv@439@01 r) r))
  :pattern ((inv@439@01 r))
  :qid |next-fctOfInv|)))
(assert (forall ((r $Ref)) (!
  (and
    (=>
      (Set_in r ($FVF.domain_next (as sm@441@01  $FVF<next>)))
      (and (Set_in (inv@439@01 r) g@231@01) (img@440@01 r)))
    (=>
      (and (Set_in (inv@439@01 r) g@231@01) (img@440@01 r))
      (Set_in r ($FVF.domain_next (as sm@441@01  $FVF<next>)))))
  :pattern ((Set_in r ($FVF.domain_next (as sm@441@01  $FVF<next>))))
  :qid |qp.fvfDomDef304|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and (Set_in (inv@439@01 r) g@231@01) (img@440@01 r))
      (and (img@289@01 r) (Set_in (inv@288@01 r) g@231@01)))
    (=
      ($FVF.lookup_next (as sm@441@01  $FVF<next>) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@285@01))) r)))
  :pattern (($FVF.lookup_next (as sm@441@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@285@01))) r))
  :qid |qp.fvfValDef302|)))
(assert (forall ((r $Ref)) (!
  ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@285@01))) r) r)
  :pattern (($FVF.lookup_next (as sm@441@01  $FVF<next>) r))
  :qid |qp.fvfResTrgDef303|)))
(assert (and
  (forall ((r $Ref)) (!
    (=>
      (Set_in (inv@439@01 r) g@231@01)
      ($FVF.loc_next ($FVF.lookup_next (as sm@434@01  $FVF<next>) r) r))
    :pattern ((inv@439@01 r))
    :qid |quant-u-15719|))
  ($$%precondition ($SortWrappers.$FVF<next>To$Snap (as sm@441@01  $FVF<next>)) g@231@01)))
(push) ; 10
; [then-branch: 62 | exists_path[Bool]($$(sm@441@01, g@231@01), x@232@01, n@437@01) | live]
; [else-branch: 62 | !(exists_path[Bool]($$(sm@441@01, g@231@01), x@232@01, n@437@01)) | live]
(push) ; 11
; [then-branch: 62 | exists_path[Bool]($$(sm@441@01, g@231@01), x@232@01, n@437@01)]
(assert (exists_path<Bool> ($$ ($SortWrappers.$FVF<next>To$Snap (as sm@441@01  $FVF<next>)) g@231@01) x@232@01 n@437@01))
(pop) ; 11
(push) ; 11
; [else-branch: 62 | !(exists_path[Bool]($$(sm@441@01, g@231@01), x@232@01, n@437@01))]
(assert (not
  (exists_path<Bool> ($$ ($SortWrappers.$FVF<next>To$Snap (as sm@441@01  $FVF<next>)) g@231@01) x@232@01 n@437@01)))
; [eval] exists_path($$(g), y, n)
; [eval] $$(g)
(push) ; 12
(declare-const n@442@01 $Ref)
(push) ; 13
; [eval] (n in refs)
(assert (Set_in n@442@01 g@231@01))
(pop) ; 13
(declare-fun inv@443@01 ($Ref) $Ref)
(declare-fun img@444@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
(declare-const sm@445@01 $FVF<next>)
; Definitional axioms for snapshot map domain
; Definitional axioms for snapshot map values
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@289@01 r) (Set_in (inv@288@01 r) g@231@01))
    (=
      ($FVF.lookup_next (as sm@445@01  $FVF<next>) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@285@01))) r)))
  :pattern (($FVF.lookup_next (as sm@445@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@285@01))) r))
  :qid |qp.fvfValDef305|)))
(assert (forall ((r $Ref)) (!
  ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@285@01))) r) r)
  :pattern (($FVF.lookup_next (as sm@445@01  $FVF<next>) r))
  :qid |qp.fvfResTrgDef306|)))
; Check receiver injectivity
(push) ; 13
(assert (not (forall ((n1@442@01 $Ref) (n2@442@01 $Ref)) (!
  (=>
    (and
      (and
        (Set_in n1@442@01 g@231@01)
        ($FVF.loc_next ($FVF.lookup_next (as sm@445@01  $FVF<next>) n1@442@01) n1@442@01))
      (and
        (Set_in n2@442@01 g@231@01)
        ($FVF.loc_next ($FVF.lookup_next (as sm@445@01  $FVF<next>) n2@442@01) n2@442@01))
      (= n1@442@01 n2@442@01))
    (= n1@442@01 n2@442@01))
  
  :qid |next-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 13
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((n@442@01 $Ref)) (!
  (=>
    (Set_in n@442@01 g@231@01)
    (and (= (inv@443@01 n@442@01) n@442@01) (img@444@01 n@442@01)))
  :pattern ((Set_in n@442@01 g@231@01))
  :pattern ((inv@443@01 n@442@01))
  :pattern ((img@444@01 n@442@01))
  :qid |next-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=> (and (img@444@01 r) (Set_in (inv@443@01 r) g@231@01)) (= (inv@443@01 r) r))
  :pattern ((inv@443@01 r))
  :qid |next-fctOfInv|)))
(assert (forall ((r $Ref)) (!
  (=>
    (Set_in (inv@443@01 r) g@231@01)
    ($FVF.loc_next ($FVF.lookup_next (as sm@445@01  $FVF<next>) r) r))
  :pattern ((inv@443@01 r))
  :qid |quant-u-15722|)))
(push) ; 13
(assert (not (forall ((r $Ref)) (!
  (=>
    (and (Set_in (inv@443@01 r) g@231@01) (img@444@01 r) (= r (inv@443@01 r)))
    (>
      (ite
        (and (img@289@01 r) (Set_in (inv@288@01 r) g@231@01))
        $Perm.Write
        $Perm.No)
      $Perm.No))
  
  :qid |quant-u-15723|))))
(check-sat)
; unsat
(pop) ; 13
; 0.00s
; (get-info :all-statistics)
(declare-const sm@446@01 $FVF<next>)
; Definitional axioms for snapshot map domain
(assert (forall ((r $Ref)) (!
  (and
    (=>
      (Set_in r ($FVF.domain_next (as sm@446@01  $FVF<next>)))
      (and (Set_in (inv@443@01 r) g@231@01) (img@444@01 r)))
    (=>
      (and (Set_in (inv@443@01 r) g@231@01) (img@444@01 r))
      (Set_in r ($FVF.domain_next (as sm@446@01  $FVF<next>)))))
  :pattern ((Set_in r ($FVF.domain_next (as sm@446@01  $FVF<next>))))
  :qid |qp.fvfDomDef309|)))
; Definitional axioms for snapshot map values
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and (Set_in (inv@443@01 r) g@231@01) (img@444@01 r))
      (and (img@289@01 r) (Set_in (inv@288@01 r) g@231@01)))
    (=
      ($FVF.lookup_next (as sm@446@01  $FVF<next>) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@285@01))) r)))
  :pattern (($FVF.lookup_next (as sm@446@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@285@01))) r))
  :qid |qp.fvfValDef307|)))
(assert (forall ((r $Ref)) (!
  ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@285@01))) r) r)
  :pattern (($FVF.lookup_next (as sm@446@01  $FVF<next>) r))
  :qid |qp.fvfResTrgDef308|)))
(assert ($$%precondition ($SortWrappers.$FVF<next>To$Snap (as sm@446@01  $FVF<next>)) g@231@01))
(pop) ; 12
; Joined path conditions
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@289@01 r) (Set_in (inv@288@01 r) g@231@01))
    (=
      ($FVF.lookup_next (as sm@445@01  $FVF<next>) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@285@01))) r)))
  :pattern (($FVF.lookup_next (as sm@445@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@285@01))) r))
  :qid |qp.fvfValDef305|)))
(assert (forall ((r $Ref)) (!
  ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@285@01))) r) r)
  :pattern (($FVF.lookup_next (as sm@445@01  $FVF<next>) r))
  :qid |qp.fvfResTrgDef306|)))
(assert (forall ((n@442@01 $Ref)) (!
  (=>
    (Set_in n@442@01 g@231@01)
    (and (= (inv@443@01 n@442@01) n@442@01) (img@444@01 n@442@01)))
  :pattern ((Set_in n@442@01 g@231@01))
  :pattern ((inv@443@01 n@442@01))
  :pattern ((img@444@01 n@442@01))
  :qid |next-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=> (and (img@444@01 r) (Set_in (inv@443@01 r) g@231@01)) (= (inv@443@01 r) r))
  :pattern ((inv@443@01 r))
  :qid |next-fctOfInv|)))
(assert (forall ((r $Ref)) (!
  (and
    (=>
      (Set_in r ($FVF.domain_next (as sm@446@01  $FVF<next>)))
      (and (Set_in (inv@443@01 r) g@231@01) (img@444@01 r)))
    (=>
      (and (Set_in (inv@443@01 r) g@231@01) (img@444@01 r))
      (Set_in r ($FVF.domain_next (as sm@446@01  $FVF<next>)))))
  :pattern ((Set_in r ($FVF.domain_next (as sm@446@01  $FVF<next>))))
  :qid |qp.fvfDomDef309|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and (Set_in (inv@443@01 r) g@231@01) (img@444@01 r))
      (and (img@289@01 r) (Set_in (inv@288@01 r) g@231@01)))
    (=
      ($FVF.lookup_next (as sm@446@01  $FVF<next>) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@285@01))) r)))
  :pattern (($FVF.lookup_next (as sm@446@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@285@01))) r))
  :qid |qp.fvfValDef307|)))
(assert (forall ((r $Ref)) (!
  ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@285@01))) r) r)
  :pattern (($FVF.lookup_next (as sm@446@01  $FVF<next>) r))
  :qid |qp.fvfResTrgDef308|)))
(assert (and
  (forall ((r $Ref)) (!
    (=>
      (Set_in (inv@443@01 r) g@231@01)
      ($FVF.loc_next ($FVF.lookup_next (as sm@445@01  $FVF<next>) r) r))
    :pattern ((inv@443@01 r))
    :qid |quant-u-15722|))
  ($$%precondition ($SortWrappers.$FVF<next>To$Snap (as sm@446@01  $FVF<next>)) g@231@01)))
(pop) ; 11
(pop) ; 10
; Joined path conditions
; Joined path conditions
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@289@01 r) (Set_in (inv@288@01 r) g@231@01))
    (=
      ($FVF.lookup_next (as sm@445@01  $FVF<next>) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@285@01))) r)))
  :pattern (($FVF.lookup_next (as sm@445@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@285@01))) r))
  :qid |qp.fvfValDef305|)))
(assert (forall ((r $Ref)) (!
  ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@285@01))) r) r)
  :pattern (($FVF.lookup_next (as sm@445@01  $FVF<next>) r))
  :qid |qp.fvfResTrgDef306|)))
(assert (forall ((n@442@01 $Ref)) (!
  (=>
    (Set_in n@442@01 g@231@01)
    (and (= (inv@443@01 n@442@01) n@442@01) (img@444@01 n@442@01)))
  :pattern ((Set_in n@442@01 g@231@01))
  :pattern ((inv@443@01 n@442@01))
  :pattern ((img@444@01 n@442@01))
  :qid |next-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=> (and (img@444@01 r) (Set_in (inv@443@01 r) g@231@01)) (= (inv@443@01 r) r))
  :pattern ((inv@443@01 r))
  :qid |next-fctOfInv|)))
(assert (forall ((r $Ref)) (!
  (and
    (=>
      (Set_in r ($FVF.domain_next (as sm@446@01  $FVF<next>)))
      (and (Set_in (inv@443@01 r) g@231@01) (img@444@01 r)))
    (=>
      (and (Set_in (inv@443@01 r) g@231@01) (img@444@01 r))
      (Set_in r ($FVF.domain_next (as sm@446@01  $FVF<next>)))))
  :pattern ((Set_in r ($FVF.domain_next (as sm@446@01  $FVF<next>))))
  :qid |qp.fvfDomDef309|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and (Set_in (inv@443@01 r) g@231@01) (img@444@01 r))
      (and (img@289@01 r) (Set_in (inv@288@01 r) g@231@01)))
    (=
      ($FVF.lookup_next (as sm@446@01  $FVF<next>) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@285@01))) r)))
  :pattern (($FVF.lookup_next (as sm@446@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@285@01))) r))
  :qid |qp.fvfValDef307|)))
(assert (forall ((r $Ref)) (!
  ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@285@01))) r) r)
  :pattern (($FVF.lookup_next (as sm@446@01  $FVF<next>) r))
  :qid |qp.fvfResTrgDef308|)))
(assert (=>
  (not
    (exists_path<Bool> ($$ ($SortWrappers.$FVF<next>To$Snap (as sm@441@01  $FVF<next>)) g@231@01) x@232@01 n@437@01))
  (and
    (not
      (exists_path<Bool> ($$ ($SortWrappers.$FVF<next>To$Snap (as sm@441@01  $FVF<next>)) g@231@01) x@232@01 n@437@01))
    (forall ((r $Ref)) (!
      (=>
        (Set_in (inv@443@01 r) g@231@01)
        ($FVF.loc_next ($FVF.lookup_next (as sm@445@01  $FVF<next>) r) r))
      :pattern ((inv@443@01 r))
      :qid |quant-u-15722|))
    ($$%precondition ($SortWrappers.$FVF<next>To$Snap (as sm@446@01  $FVF<next>)) g@231@01))))
(assert (or
  (not
    (exists_path<Bool> ($$ ($SortWrappers.$FVF<next>To$Snap (as sm@441@01  $FVF<next>)) g@231@01) x@232@01 n@437@01))
  (exists_path<Bool> ($$ ($SortWrappers.$FVF<next>To$Snap (as sm@441@01  $FVF<next>)) g@231@01) x@232@01 n@437@01)))
(pop) ; 9
(push) ; 9
; [else-branch: 61 | !(n@437@01 in g@231@01)]
(assert (not (Set_in n@437@01 g@231@01)))
(pop) ; 9
(pop) ; 8
; Joined path conditions
(assert (forall ((n@438@01 $Ref)) (!
  (=>
    (Set_in n@438@01 g@231@01)
    (and (= (inv@439@01 n@438@01) n@438@01) (img@440@01 n@438@01)))
  :pattern ((Set_in n@438@01 g@231@01))
  :pattern ((inv@439@01 n@438@01))
  :pattern ((img@440@01 n@438@01))
  :qid |next-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=> (and (img@440@01 r) (Set_in (inv@439@01 r) g@231@01)) (= (inv@439@01 r) r))
  :pattern ((inv@439@01 r))
  :qid |next-fctOfInv|)))
(assert (forall ((r $Ref)) (!
  (and
    (=>
      (Set_in r ($FVF.domain_next (as sm@441@01  $FVF<next>)))
      (and (Set_in (inv@439@01 r) g@231@01) (img@440@01 r)))
    (=>
      (and (Set_in (inv@439@01 r) g@231@01) (img@440@01 r))
      (Set_in r ($FVF.domain_next (as sm@441@01  $FVF<next>)))))
  :pattern ((Set_in r ($FVF.domain_next (as sm@441@01  $FVF<next>))))
  :qid |qp.fvfDomDef304|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and (Set_in (inv@439@01 r) g@231@01) (img@440@01 r))
      (and (img@289@01 r) (Set_in (inv@288@01 r) g@231@01)))
    (=
      ($FVF.lookup_next (as sm@441@01  $FVF<next>) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@285@01))) r)))
  :pattern (($FVF.lookup_next (as sm@441@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@285@01))) r))
  :qid |qp.fvfValDef302|)))
(assert (forall ((r $Ref)) (!
  ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@285@01))) r) r)
  :pattern (($FVF.lookup_next (as sm@441@01  $FVF<next>) r))
  :qid |qp.fvfResTrgDef303|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@289@01 r) (Set_in (inv@288@01 r) g@231@01))
    (=
      ($FVF.lookup_next (as sm@445@01  $FVF<next>) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@285@01))) r)))
  :pattern (($FVF.lookup_next (as sm@445@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@285@01))) r))
  :qid |qp.fvfValDef305|)))
(assert (forall ((r $Ref)) (!
  ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@285@01))) r) r)
  :pattern (($FVF.lookup_next (as sm@445@01  $FVF<next>) r))
  :qid |qp.fvfResTrgDef306|)))
(assert (forall ((n@442@01 $Ref)) (!
  (=>
    (Set_in n@442@01 g@231@01)
    (and (= (inv@443@01 n@442@01) n@442@01) (img@444@01 n@442@01)))
  :pattern ((Set_in n@442@01 g@231@01))
  :pattern ((inv@443@01 n@442@01))
  :pattern ((img@444@01 n@442@01))
  :qid |next-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=> (and (img@444@01 r) (Set_in (inv@443@01 r) g@231@01)) (= (inv@443@01 r) r))
  :pattern ((inv@443@01 r))
  :qid |next-fctOfInv|)))
(assert (forall ((r $Ref)) (!
  (and
    (=>
      (Set_in r ($FVF.domain_next (as sm@446@01  $FVF<next>)))
      (and (Set_in (inv@443@01 r) g@231@01) (img@444@01 r)))
    (=>
      (and (Set_in (inv@443@01 r) g@231@01) (img@444@01 r))
      (Set_in r ($FVF.domain_next (as sm@446@01  $FVF<next>)))))
  :pattern ((Set_in r ($FVF.domain_next (as sm@446@01  $FVF<next>))))
  :qid |qp.fvfDomDef309|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and (Set_in (inv@443@01 r) g@231@01) (img@444@01 r))
      (and (img@289@01 r) (Set_in (inv@288@01 r) g@231@01)))
    (=
      ($FVF.lookup_next (as sm@446@01  $FVF<next>) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@285@01))) r)))
  :pattern (($FVF.lookup_next (as sm@446@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@285@01))) r))
  :qid |qp.fvfValDef307|)))
(assert (forall ((r $Ref)) (!
  ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@285@01))) r) r)
  :pattern (($FVF.lookup_next (as sm@446@01  $FVF<next>) r))
  :qid |qp.fvfResTrgDef308|)))
(assert (=>
  (Set_in n@437@01 g@231@01)
  (and
    (Set_in n@437@01 g@231@01)
    (forall ((r $Ref)) (!
      (=>
        (Set_in (inv@439@01 r) g@231@01)
        ($FVF.loc_next ($FVF.lookup_next (as sm@434@01  $FVF<next>) r) r))
      :pattern ((inv@439@01 r))
      :qid |quant-u-15719|))
    ($$%precondition ($SortWrappers.$FVF<next>To$Snap (as sm@441@01  $FVF<next>)) g@231@01)
    (=>
      (not
        (exists_path<Bool> ($$ ($SortWrappers.$FVF<next>To$Snap (as sm@441@01  $FVF<next>)) g@231@01) x@232@01 n@437@01))
      (and
        (not
          (exists_path<Bool> ($$ ($SortWrappers.$FVF<next>To$Snap (as sm@441@01  $FVF<next>)) g@231@01) x@232@01 n@437@01))
        (forall ((r $Ref)) (!
          (=>
            (Set_in (inv@443@01 r) g@231@01)
            ($FVF.loc_next ($FVF.lookup_next (as sm@445@01  $FVF<next>) r) r))
          :pattern ((inv@443@01 r))
          :qid |quant-u-15722|))
        ($$%precondition ($SortWrappers.$FVF<next>To$Snap (as sm@446@01  $FVF<next>)) g@231@01)))
    (or
      (not
        (exists_path<Bool> ($$ ($SortWrappers.$FVF<next>To$Snap (as sm@441@01  $FVF<next>)) g@231@01) x@232@01 n@437@01))
      (exists_path<Bool> ($$ ($SortWrappers.$FVF<next>To$Snap (as sm@441@01  $FVF<next>)) g@231@01) x@232@01 n@437@01)))))
; Joined path conditions
(assert (or (not (Set_in n@437@01 g@231@01)) (Set_in n@437@01 g@231@01)))
(pop) ; 7
; Nested auxiliary terms: globals (aux)
(assert (forall ((n@438@01 $Ref)) (!
  (=>
    (Set_in n@438@01 g@231@01)
    (and (= (inv@439@01 n@438@01) n@438@01) (img@440@01 n@438@01)))
  :pattern ((Set_in n@438@01 g@231@01))
  :pattern ((inv@439@01 n@438@01))
  :pattern ((img@440@01 n@438@01))
  :qid |next-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=> (and (img@440@01 r) (Set_in (inv@439@01 r) g@231@01)) (= (inv@439@01 r) r))
  :pattern ((inv@439@01 r))
  :qid |next-fctOfInv|)))
(assert (forall ((r $Ref)) (!
  (and
    (=>
      (Set_in r ($FVF.domain_next (as sm@441@01  $FVF<next>)))
      (and (Set_in (inv@439@01 r) g@231@01) (img@440@01 r)))
    (=>
      (and (Set_in (inv@439@01 r) g@231@01) (img@440@01 r))
      (Set_in r ($FVF.domain_next (as sm@441@01  $FVF<next>)))))
  :pattern ((Set_in r ($FVF.domain_next (as sm@441@01  $FVF<next>))))
  :qid |qp.fvfDomDef304|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and (Set_in (inv@439@01 r) g@231@01) (img@440@01 r))
      (and (img@289@01 r) (Set_in (inv@288@01 r) g@231@01)))
    (=
      ($FVF.lookup_next (as sm@441@01  $FVF<next>) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@285@01))) r)))
  :pattern (($FVF.lookup_next (as sm@441@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@285@01))) r))
  :qid |qp.fvfValDef302|)))
(assert (forall ((r $Ref)) (!
  ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@285@01))) r) r)
  :pattern (($FVF.lookup_next (as sm@441@01  $FVF<next>) r))
  :qid |qp.fvfResTrgDef303|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@289@01 r) (Set_in (inv@288@01 r) g@231@01))
    (=
      ($FVF.lookup_next (as sm@445@01  $FVF<next>) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@285@01))) r)))
  :pattern (($FVF.lookup_next (as sm@445@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@285@01))) r))
  :qid |qp.fvfValDef305|)))
(assert (forall ((r $Ref)) (!
  ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@285@01))) r) r)
  :pattern (($FVF.lookup_next (as sm@445@01  $FVF<next>) r))
  :qid |qp.fvfResTrgDef306|)))
(assert (forall ((n@442@01 $Ref)) (!
  (=>
    (Set_in n@442@01 g@231@01)
    (and (= (inv@443@01 n@442@01) n@442@01) (img@444@01 n@442@01)))
  :pattern ((Set_in n@442@01 g@231@01))
  :pattern ((inv@443@01 n@442@01))
  :pattern ((img@444@01 n@442@01))
  :qid |next-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=> (and (img@444@01 r) (Set_in (inv@443@01 r) g@231@01)) (= (inv@443@01 r) r))
  :pattern ((inv@443@01 r))
  :qid |next-fctOfInv|)))
(assert (forall ((r $Ref)) (!
  (and
    (=>
      (Set_in r ($FVF.domain_next (as sm@446@01  $FVF<next>)))
      (and (Set_in (inv@443@01 r) g@231@01) (img@444@01 r)))
    (=>
      (and (Set_in (inv@443@01 r) g@231@01) (img@444@01 r))
      (Set_in r ($FVF.domain_next (as sm@446@01  $FVF<next>)))))
  :pattern ((Set_in r ($FVF.domain_next (as sm@446@01  $FVF<next>))))
  :qid |qp.fvfDomDef309|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and (Set_in (inv@443@01 r) g@231@01) (img@444@01 r))
      (and (img@289@01 r) (Set_in (inv@288@01 r) g@231@01)))
    (=
      ($FVF.lookup_next (as sm@446@01  $FVF<next>) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@285@01))) r)))
  :pattern (($FVF.lookup_next (as sm@446@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@285@01))) r))
  :qid |qp.fvfValDef307|)))
(assert (forall ((r $Ref)) (!
  ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@285@01))) r) r)
  :pattern (($FVF.lookup_next (as sm@446@01  $FVF<next>) r))
  :qid |qp.fvfResTrgDef308|)))
; Nested auxiliary terms: non-globals (aux)
(assert (forall ((n@437@01 $Ref)) (!
  (and
    (=>
      (Set_in n@437@01 g@231@01)
      (and
        (Set_in n@437@01 g@231@01)
        (forall ((r $Ref)) (!
          (=>
            (Set_in (inv@439@01 r) g@231@01)
            ($FVF.loc_next ($FVF.lookup_next (as sm@434@01  $FVF<next>) r) r))
          :pattern ((inv@439@01 r))
          :qid |quant-u-15719|))
        ($$%precondition ($SortWrappers.$FVF<next>To$Snap (as sm@441@01  $FVF<next>)) g@231@01)
        (=>
          (not
            (exists_path<Bool> ($$ ($SortWrappers.$FVF<next>To$Snap (as sm@441@01  $FVF<next>)) g@231@01) x@232@01 n@437@01))
          (and
            (not
              (exists_path<Bool> ($$ ($SortWrappers.$FVF<next>To$Snap (as sm@441@01  $FVF<next>)) g@231@01) x@232@01 n@437@01))
            (forall ((r $Ref)) (!
              (=>
                (Set_in (inv@443@01 r) g@231@01)
                ($FVF.loc_next ($FVF.lookup_next (as sm@445@01  $FVF<next>) r) r))
              :pattern ((inv@443@01 r))
              :qid |quant-u-15722|))
            ($$%precondition ($SortWrappers.$FVF<next>To$Snap (as sm@446@01  $FVF<next>)) g@231@01)))
        (or
          (not
            (exists_path<Bool> ($$ ($SortWrappers.$FVF<next>To$Snap (as sm@441@01  $FVF<next>)) g@231@01) x@232@01 n@437@01))
          (exists_path<Bool> ($$ ($SortWrappers.$FVF<next>To$Snap (as sm@441@01  $FVF<next>)) g@231@01) x@232@01 n@437@01))))
    (or (not (Set_in n@437@01 g@231@01)) (Set_in n@437@01 g@231@01)))
  :pattern ((Set_in n@437@01 g@231@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/graphs/static/outlines/list_append.vpr@371@23@371@102-aux|)))
(assert (forall ((n@437@01 $Ref)) (!
  (and
    (=>
      (Set_in n@437@01 g@231@01)
      (and
        (Set_in n@437@01 g@231@01)
        (forall ((r $Ref)) (!
          (=>
            (Set_in (inv@439@01 r) g@231@01)
            ($FVF.loc_next ($FVF.lookup_next (as sm@434@01  $FVF<next>) r) r))
          :pattern ((inv@439@01 r))
          :qid |quant-u-15719|))
        ($$%precondition ($SortWrappers.$FVF<next>To$Snap (as sm@441@01  $FVF<next>)) g@231@01)
        (=>
          (not
            (exists_path<Bool> ($$ ($SortWrappers.$FVF<next>To$Snap (as sm@441@01  $FVF<next>)) g@231@01) x@232@01 n@437@01))
          (and
            (not
              (exists_path<Bool> ($$ ($SortWrappers.$FVF<next>To$Snap (as sm@441@01  $FVF<next>)) g@231@01) x@232@01 n@437@01))
            (forall ((r $Ref)) (!
              (=>
                (Set_in (inv@443@01 r) g@231@01)
                ($FVF.loc_next ($FVF.lookup_next (as sm@445@01  $FVF<next>) r) r))
              :pattern ((inv@443@01 r))
              :qid |quant-u-15722|))
            ($$%precondition ($SortWrappers.$FVF<next>To$Snap (as sm@446@01  $FVF<next>)) g@231@01)))
        (or
          (not
            (exists_path<Bool> ($$ ($SortWrappers.$FVF<next>To$Snap (as sm@441@01  $FVF<next>)) g@231@01) x@232@01 n@437@01))
          (exists_path<Bool> ($$ ($SortWrappers.$FVF<next>To$Snap (as sm@441@01  $FVF<next>)) g@231@01) x@232@01 n@437@01))))
    (or (not (Set_in n@437@01 g@231@01)) (Set_in n@437@01 g@231@01)))
  :pattern ((exists_path<Bool> ($$ ($SortWrappers.$FVF<next>To$Snap (as sm@441@01  $FVF<next>)) g@231@01) x@232@01 n@437@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/graphs/static/outlines/list_append.vpr@371@23@371@102-aux|)))
(assert (forall ((n@437@01 $Ref)) (!
  (and
    (=>
      (Set_in n@437@01 g@231@01)
      (and
        (Set_in n@437@01 g@231@01)
        (forall ((r $Ref)) (!
          (=>
            (Set_in (inv@439@01 r) g@231@01)
            ($FVF.loc_next ($FVF.lookup_next (as sm@434@01  $FVF<next>) r) r))
          :pattern ((inv@439@01 r))
          :qid |quant-u-15719|))
        ($$%precondition ($SortWrappers.$FVF<next>To$Snap (as sm@441@01  $FVF<next>)) g@231@01)
        (=>
          (not
            (exists_path<Bool> ($$ ($SortWrappers.$FVF<next>To$Snap (as sm@441@01  $FVF<next>)) g@231@01) x@232@01 n@437@01))
          (and
            (not
              (exists_path<Bool> ($$ ($SortWrappers.$FVF<next>To$Snap (as sm@441@01  $FVF<next>)) g@231@01) x@232@01 n@437@01))
            (forall ((r $Ref)) (!
              (=>
                (Set_in (inv@443@01 r) g@231@01)
                ($FVF.loc_next ($FVF.lookup_next (as sm@445@01  $FVF<next>) r) r))
              :pattern ((inv@443@01 r))
              :qid |quant-u-15722|))
            ($$%precondition ($SortWrappers.$FVF<next>To$Snap (as sm@446@01  $FVF<next>)) g@231@01)))
        (or
          (not
            (exists_path<Bool> ($$ ($SortWrappers.$FVF<next>To$Snap (as sm@441@01  $FVF<next>)) g@231@01) x@232@01 n@437@01))
          (exists_path<Bool> ($$ ($SortWrappers.$FVF<next>To$Snap (as sm@441@01  $FVF<next>)) g@231@01) x@232@01 n@437@01))))
    (or (not (Set_in n@437@01 g@231@01)) (Set_in n@437@01 g@231@01)))
  :pattern ((exists_path<Bool> ($$ ($SortWrappers.$FVF<next>To$Snap (as sm@446@01  $FVF<next>)) g@231@01) y@233@01 n@437@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/graphs/static/outlines/list_append.vpr@371@23@371@102-aux|)))
(assert (forall ((n@437@01 $Ref)) (!
  (=>
    (Set_in n@437@01 g@231@01)
    (and
      ($$%precondition ($SortWrappers.$FVF<next>To$Snap (as sm@441@01  $FVF<next>)) g@231@01)
      (=>
        (not
          (exists_path<Bool> ($$ ($SortWrappers.$FVF<next>To$Snap (as sm@441@01  $FVF<next>)) g@231@01) x@232@01 n@437@01))
        ($$%precondition ($SortWrappers.$FVF<next>To$Snap (as sm@446@01  $FVF<next>)) g@231@01))))
  :pattern ((Set_in n@437@01 g@231@01))
  :pattern ((exists_path<Bool> ($$ ($SortWrappers.$FVF<next>To$Snap (as sm@441@01  $FVF<next>)) g@231@01) x@232@01 n@437@01))
  :pattern ((exists_path<Bool> ($$ ($SortWrappers.$FVF<next>To$Snap (as sm@446@01  $FVF<next>)) g@231@01) y@233@01 n@437@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/graphs/static/outlines/list_append.vpr@371@23@371@102_precondition|)))
(push) ; 7
(assert (not (forall ((n@437@01 $Ref)) (!
  (=>
    (and
      (=>
        (Set_in n@437@01 g@231@01)
        (and
          ($$%precondition ($SortWrappers.$FVF<next>To$Snap (as sm@441@01  $FVF<next>)) g@231@01)
          (=>
            (not
              (exists_path<Bool> ($$ ($SortWrappers.$FVF<next>To$Snap (as sm@441@01  $FVF<next>)) g@231@01) x@232@01 n@437@01))
            ($$%precondition ($SortWrappers.$FVF<next>To$Snap (as sm@446@01  $FVF<next>)) g@231@01))))
      (Set_in n@437@01 g@231@01))
    (or
      (exists_path<Bool> ($$ ($SortWrappers.$FVF<next>To$Snap (as sm@441@01  $FVF<next>)) g@231@01) x@232@01 n@437@01)
      (exists_path<Bool> ($$ ($SortWrappers.$FVF<next>To$Snap (as sm@446@01  $FVF<next>)) g@231@01) y@233@01 n@437@01)))
  :pattern ((Set_in n@437@01 g@231@01))
  :pattern ((exists_path<Bool> ($$ ($SortWrappers.$FVF<next>To$Snap (as sm@441@01  $FVF<next>)) g@231@01) x@232@01 n@437@01))
  :pattern ((exists_path<Bool> ($$ ($SortWrappers.$FVF<next>To$Snap (as sm@446@01  $FVF<next>)) g@231@01) y@233@01 n@437@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/graphs/static/outlines/list_append.vpr@371@23@371@102|))))
(check-sat)
