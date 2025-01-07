(get-info :version)
; (:version "4.12.1")
; Started: 2025-01-07 13:41:42
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
(declare-sort FramingWisdoms 0)
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
(declare-fun $SortWrappers.FramingWisdomsTo$Snap (FramingWisdoms) $Snap)
(declare-fun $SortWrappers.$SnapToFramingWisdoms ($Snap) FramingWisdoms)
(assert (forall ((x FramingWisdoms)) (!
    (= x ($SortWrappers.$SnapToFramingWisdoms($SortWrappers.FramingWisdomsTo$Snap x)))
    :pattern (($SortWrappers.FramingWisdomsTo$Snap x))
    :qid |$Snap.$SnapToFramingWisdomsTo$Snap|
    )))
(assert (forall ((x $Snap)) (!
    (= x ($SortWrappers.FramingWisdomsTo$Snap($SortWrappers.$SnapToFramingWisdoms x)))
    :pattern (($SortWrappers.$SnapToFramingWisdoms x))
    :qid |$Snap.FramingWisdomsTo$SnapToFramingWisdoms|
    )))
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
(declare-fun edge_pred<Ref> (Edge) $Ref)
(declare-fun edge_succ<Ref> (Edge) $Ref)
(declare-fun create_edge<Edge> ($Ref $Ref) Edge)
(declare-fun create_edge_<Edge> ($Ref $Ref) Edge)
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
(declare-fun is_global_root ($Snap Set<$Ref> $Ref) Bool)
(declare-fun is_global_root%limited ($Snap Set<$Ref> $Ref) Bool)
(declare-fun is_global_root%stateless (Set<$Ref> $Ref) Bool)
(declare-fun is_global_root%precondition ($Snap Set<$Ref> $Ref) Bool)
(declare-fun is_global_sroot ($Snap Set<$Ref> Set<$Ref>) Bool)
(declare-fun is_global_sroot%limited ($Snap Set<$Ref> Set<$Ref>) Bool)
(declare-fun is_global_sroot%stateless (Set<$Ref> Set<$Ref>) Bool)
(declare-fun is_global_sroot%precondition ($Snap Set<$Ref> Set<$Ref>) Bool)
(declare-fun acyclic_list_segment ($Snap Set<$Ref>) Bool)
(declare-fun acyclic_list_segment%limited ($Snap Set<$Ref>) Bool)
(declare-fun acyclic_list_segment%stateless (Set<$Ref>) Bool)
(declare-fun acyclic_list_segment%precondition ($Snap Set<$Ref>) Bool)
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
(assert (forall ((EG Set<Edge>) (from Set<$Ref>) (to $Ref)) (!
  (=
    (exists_spath<Bool> EG from to)
    (exists ((f $Ref)) (!
      (and (Set_in f from) (exists_path<Bool> EG f to))
      :pattern ((Set_in f from))
      :pattern ((exists_path<Bool> EG f to))
      )))
  :pattern ((exists_spath<Bool> EG from to))
  :qid |prog.ax_ExistsSetPath|)))
(assert (forall ((g0 Set<$Ref>) (g1 Set<$Ref>)) (!
  (=>
    (Set_equal (Set_intersection g0 g1) (as Set_empty  Set<$Ref>))
    (forall ((r $Ref)) (!
      (=> (and (Set_in r g0) (Set_in r g1)) (Set_in r (as Set_empty  Set<$Ref>)))
      :pattern ((Set_in r g0) (Set_in r g1))
      )))
  :pattern ((Set_intersection g0 g1))
  :qid |prog.ax_SetIntersection|)))
(assert (forall ((g Set<Edge>) (e Edge)) (!
  (=>
    (Set_in e g)
    (= (create_edge<Edge> (edge_pred<Ref> e) (edge_succ<Ref> e)) e))
  :pattern ((Set_in e g))
  :qid |prog.ax_EdgeReverse|)))
(assert (forall ((p $Ref) (s $Ref)) (!
  (and
    (= (edge_pred<Ref> (create_edge<Edge> p s)) p)
    (= (edge_succ<Ref> (create_edge<Edge> p s)) s))
  :pattern ((create_edge<Edge> p s))
  :qid |prog.edge_injectivity|)))
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
; ---------- FUNCTION $$----------
(declare-fun refs@0@00 () Set<$Ref>)
(declare-fun result@1@00 () Set<Edge>)
; ----- Well-definedness of specifications -----
(set-option :timeout 0)
(push) ; 1
(declare-const n@13@00 $Ref)
(push) ; 2
; [eval] (n in refs)
(assert (Set_in n@13@00 refs@0@00))
(declare-fun sm@14@00 ($Snap Set<$Ref>) $FVF<next>)
; Definitional axioms for snapshot map values
(pop) ; 2
(declare-fun inv@15@00 ($Snap Set<$Ref> $Ref) $Ref)
(declare-fun img@16@00 ($Snap Set<$Ref> $Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
; Check receiver injectivity
(push) ; 2
(assert (not (forall ((n1@13@00 $Ref) (n2@13@00 $Ref)) (!
  (=>
    (and
      (Set_in n1@13@00 refs@0@00)
      (Set_in n2@13@00 refs@0@00)
      (= n1@13@00 n2@13@00))
    (= n1@13@00 n2@13@00))
  
  :qid |next-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 2
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((n@13@00 $Ref)) (!
  (=>
    (Set_in n@13@00 refs@0@00)
    (and
      (= (inv@15@00 s@$ refs@0@00 n@13@00) n@13@00)
      (img@16@00 s@$ refs@0@00 n@13@00)))
  :pattern (($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> s@$) n@13@00) n@13@00))
  :qid |quant-u-13677|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@16@00 s@$ refs@0@00 r)
      (Set_in (inv@15@00 s@$ refs@0@00 r) refs@0@00))
    (= (inv@15@00 s@$ refs@0@00 r) r))
  :pattern ((inv@15@00 s@$ refs@0@00 r))
  :qid |next-fctOfInv|)))
; Permissions are non-negative
; Permission implies non-null receiver
(assert (forall ((n@13@00 $Ref)) (!
  (=> (Set_in n@13@00 refs@0@00) (not (= n@13@00 $Ref.null)))
  :pattern (($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> s@$) n@13@00) n@13@00))
  :qid |next-permImpliesNonNull|)))
(declare-fun sm@17@00 ($Snap Set<$Ref>) $FVF<next>)
; Definitional axioms for snapshot map values
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@16@00 s@$ refs@0@00 r)
      (Set_in (inv@15@00 s@$ refs@0@00 r) refs@0@00))
    (=
      ($FVF.lookup_next (sm@17@00 s@$ refs@0@00) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> s@$) r)))
  :pattern (($FVF.lookup_next (sm@17@00 s@$ refs@0@00) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> s@$) r))
  :qid |qp.fvfValDef1|)))
(assert (forall ((r $Ref)) (!
  ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> s@$) r) r)
  :pattern (($FVF.lookup_next (sm@17@00 s@$ refs@0@00) r))
  :qid |qp.fvfResTrgDef2|)))
(assert (forall ((r $Ref)) (!
  (=>
    (Set_in (inv@15@00 s@$ refs@0@00 r) refs@0@00)
    ($FVF.loc_next ($FVF.lookup_next (sm@17@00 s@$ refs@0@00) r) r))
  :pattern ((inv@15@00 s@$ refs@0@00 r))
  :qid |quant-u-13678|)))
(declare-const $t@18@00 $Snap)
(assert (= $t@18@00 ($Snap.combine ($Snap.first $t@18@00) ($Snap.second $t@18@00))))
(assert (= ($Snap.first $t@18@00) $Snap.unit))
; [eval] (forall p: Ref, s: Ref :: { create_edge(p, s) } ((p in refs) && ((s in refs) && p.next == s)) == (create_edge(p, s) in result))
(declare-const p@19@00 $Ref)
(declare-const s@20@00 $Ref)
(push) ; 2
; [eval] ((p in refs) && ((s in refs) && p.next == s)) == (create_edge(p, s) in result)
; [eval] (p in refs) && ((s in refs) && p.next == s)
; [eval] (p in refs)
(push) ; 3
; [then-branch: 0 | !(p@19@00 in refs@0@00) | live]
; [else-branch: 0 | p@19@00 in refs@0@00 | live]
(push) ; 4
; [then-branch: 0 | !(p@19@00 in refs@0@00)]
(assert (not (Set_in p@19@00 refs@0@00)))
(pop) ; 4
(push) ; 4
; [else-branch: 0 | p@19@00 in refs@0@00]
(assert (Set_in p@19@00 refs@0@00))
; [eval] (s in refs)
(push) ; 5
; [then-branch: 1 | !(s@20@00 in refs@0@00) | live]
; [else-branch: 1 | s@20@00 in refs@0@00 | live]
(push) ; 6
; [then-branch: 1 | !(s@20@00 in refs@0@00)]
(assert (not (Set_in s@20@00 refs@0@00)))
(pop) ; 6
(push) ; 6
; [else-branch: 1 | s@20@00 in refs@0@00]
(assert (Set_in s@20@00 refs@0@00))
; [eval] p.next == s
(assert (and
  (forall ((r $Ref)) (!
    (=>
      (and
        (img@16@00 s@$ refs@0@00 r)
        (Set_in (inv@15@00 s@$ refs@0@00 r) refs@0@00))
      (=
        ($FVF.lookup_next (sm@17@00 s@$ refs@0@00) r)
        ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> s@$) r)))
    :pattern (($FVF.lookup_next (sm@17@00 s@$ refs@0@00) r))
    :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> s@$) r))
    :qid |qp.fvfValDef1|))
  (forall ((r $Ref)) (!
    ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> s@$) r) r)
    :pattern (($FVF.lookup_next (sm@17@00 s@$ refs@0@00) r))
    :qid |qp.fvfResTrgDef2|))))
(assert ($FVF.loc_next ($FVF.lookup_next (sm@17@00 s@$ refs@0@00) p@19@00) p@19@00))
(push) ; 7
(assert (not (and
  (img@16@00 s@$ refs@0@00 p@19@00)
  (Set_in (inv@15@00 s@$ refs@0@00 p@19@00) refs@0@00))))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(pop) ; 6
(pop) ; 5
; Joined path conditions
; Joined path conditions
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@16@00 s@$ refs@0@00 r)
      (Set_in (inv@15@00 s@$ refs@0@00 r) refs@0@00))
    (=
      ($FVF.lookup_next (sm@17@00 s@$ refs@0@00) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> s@$) r)))
  :pattern (($FVF.lookup_next (sm@17@00 s@$ refs@0@00) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> s@$) r))
  :qid |qp.fvfValDef1|)))
(assert (forall ((r $Ref)) (!
  ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> s@$) r) r)
  :pattern (($FVF.lookup_next (sm@17@00 s@$ refs@0@00) r))
  :qid |qp.fvfResTrgDef2|)))
(assert (=>
  (Set_in s@20@00 refs@0@00)
  (and
    (Set_in s@20@00 refs@0@00)
    ($FVF.loc_next ($FVF.lookup_next (sm@17@00 s@$ refs@0@00) p@19@00) p@19@00))))
(assert (or (Set_in s@20@00 refs@0@00) (not (Set_in s@20@00 refs@0@00))))
(pop) ; 4
(pop) ; 3
; Joined path conditions
; Joined path conditions
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@16@00 s@$ refs@0@00 r)
      (Set_in (inv@15@00 s@$ refs@0@00 r) refs@0@00))
    (=
      ($FVF.lookup_next (sm@17@00 s@$ refs@0@00) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> s@$) r)))
  :pattern (($FVF.lookup_next (sm@17@00 s@$ refs@0@00) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> s@$) r))
  :qid |qp.fvfValDef1|)))
(assert (forall ((r $Ref)) (!
  ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> s@$) r) r)
  :pattern (($FVF.lookup_next (sm@17@00 s@$ refs@0@00) r))
  :qid |qp.fvfResTrgDef2|)))
(assert (=>
  (Set_in p@19@00 refs@0@00)
  (and
    (Set_in p@19@00 refs@0@00)
    (=>
      (Set_in s@20@00 refs@0@00)
      (and
        (Set_in s@20@00 refs@0@00)
        ($FVF.loc_next ($FVF.lookup_next (sm@17@00 s@$ refs@0@00) p@19@00) p@19@00)))
    (or (Set_in s@20@00 refs@0@00) (not (Set_in s@20@00 refs@0@00))))))
(assert (or (Set_in p@19@00 refs@0@00) (not (Set_in p@19@00 refs@0@00))))
; [eval] (create_edge(p, s) in result)
; [eval] create_edge(p, s)
(pop) ; 2
; Nested auxiliary terms: globals (aux)
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@16@00 s@$ refs@0@00 r)
      (Set_in (inv@15@00 s@$ refs@0@00 r) refs@0@00))
    (=
      ($FVF.lookup_next (sm@17@00 s@$ refs@0@00) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> s@$) r)))
  :pattern (($FVF.lookup_next (sm@17@00 s@$ refs@0@00) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> s@$) r))
  :qid |qp.fvfValDef1|)))
(assert (forall ((r $Ref)) (!
  ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> s@$) r) r)
  :pattern (($FVF.lookup_next (sm@17@00 s@$ refs@0@00) r))
  :qid |qp.fvfResTrgDef2|)))
; Nested auxiliary terms: non-globals (aux)
(assert (forall ((p@19@00 $Ref) (s@20@00 $Ref)) (!
  (and
    (=>
      (Set_in p@19@00 refs@0@00)
      (and
        (Set_in p@19@00 refs@0@00)
        (=>
          (Set_in s@20@00 refs@0@00)
          (and
            (Set_in s@20@00 refs@0@00)
            ($FVF.loc_next ($FVF.lookup_next (sm@17@00 s@$ refs@0@00) p@19@00) p@19@00)))
        (or (Set_in s@20@00 refs@0@00) (not (Set_in s@20@00 refs@0@00)))))
    (or (Set_in p@19@00 refs@0@00) (not (Set_in p@19@00 refs@0@00))))
  :pattern ((create_edge<Edge> p@19@00 s@20@00))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/graphs/static/tests/lists/framing1.vpr@305@13@309@44-aux|)))
(assert (forall ((p@19@00 $Ref) (s@20@00 $Ref)) (!
  (=
    (and
      (Set_in p@19@00 refs@0@00)
      (and
        (Set_in s@20@00 refs@0@00)
        (= ($FVF.lookup_next (sm@17@00 s@$ refs@0@00) p@19@00) s@20@00)))
    (Set_in (create_edge<Edge> p@19@00 s@20@00) result@1@00))
  :pattern ((create_edge<Edge> p@19@00 s@20@00))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/graphs/static/tests/lists/framing1.vpr@305@13@309@44|)))
(assert (=
  ($Snap.second $t@18@00)
  ($Snap.combine
    ($Snap.first ($Snap.second $t@18@00))
    ($Snap.second ($Snap.second $t@18@00)))))
(assert (= ($Snap.first ($Snap.second $t@18@00)) $Snap.unit))
; [eval] (forall p: Ref, s: Ref :: { (p in refs), (s in refs), exists_path(result, p, s) } (p in refs) && exists_path(result, p, s) ==> (s in refs))
(declare-const p@21@00 $Ref)
(declare-const s@22@00 $Ref)
(push) ; 2
; [eval] (p in refs) && exists_path(result, p, s) ==> (s in refs)
; [eval] (p in refs) && exists_path(result, p, s)
; [eval] (p in refs)
(push) ; 3
; [then-branch: 2 | !(p@21@00 in refs@0@00) | live]
; [else-branch: 2 | p@21@00 in refs@0@00 | live]
(push) ; 4
; [then-branch: 2 | !(p@21@00 in refs@0@00)]
(assert (not (Set_in p@21@00 refs@0@00)))
(pop) ; 4
(push) ; 4
; [else-branch: 2 | p@21@00 in refs@0@00]
(assert (Set_in p@21@00 refs@0@00))
; [eval] exists_path(result, p, s)
(pop) ; 4
(pop) ; 3
; Joined path conditions
; Joined path conditions
(assert (or (Set_in p@21@00 refs@0@00) (not (Set_in p@21@00 refs@0@00))))
(push) ; 3
; [then-branch: 3 | p@21@00 in refs@0@00 && exists_path[Bool](result@1@00, p@21@00, s@22@00) | live]
; [else-branch: 3 | !(p@21@00 in refs@0@00 && exists_path[Bool](result@1@00, p@21@00, s@22@00)) | live]
(push) ; 4
; [then-branch: 3 | p@21@00 in refs@0@00 && exists_path[Bool](result@1@00, p@21@00, s@22@00)]
(assert (and (Set_in p@21@00 refs@0@00) (exists_path<Bool> result@1@00 p@21@00 s@22@00)))
; [eval] (s in refs)
(pop) ; 4
(push) ; 4
; [else-branch: 3 | !(p@21@00 in refs@0@00 && exists_path[Bool](result@1@00, p@21@00, s@22@00))]
(assert (not
  (and
    (Set_in p@21@00 refs@0@00)
    (exists_path<Bool> result@1@00 p@21@00 s@22@00))))
(pop) ; 4
(pop) ; 3
; Joined path conditions
; Joined path conditions
(assert (or
  (not
    (and
      (Set_in p@21@00 refs@0@00)
      (exists_path<Bool> result@1@00 p@21@00 s@22@00)))
  (and
    (Set_in p@21@00 refs@0@00)
    (exists_path<Bool> result@1@00 p@21@00 s@22@00))))
(pop) ; 2
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall ((p@21@00 $Ref) (s@22@00 $Ref)) (!
  (and
    (or (Set_in p@21@00 refs@0@00) (not (Set_in p@21@00 refs@0@00)))
    (or
      (not
        (and
          (Set_in p@21@00 refs@0@00)
          (exists_path<Bool> result@1@00 p@21@00 s@22@00)))
      (and
        (Set_in p@21@00 refs@0@00)
        (exists_path<Bool> result@1@00 p@21@00 s@22@00))))
  :pattern ((Set_in p@21@00 refs@0@00) (Set_in s@22@00 refs@0@00) (exists_path<Bool> result@1@00 p@21@00 s@22@00))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/graphs/static/tests/lists/framing1.vpr@312@13@314@63-aux|)))
(assert (forall ((p@21@00 $Ref) (s@22@00 $Ref)) (!
  (=>
    (and
      (Set_in p@21@00 refs@0@00)
      (exists_path<Bool> result@1@00 p@21@00 s@22@00))
    (Set_in s@22@00 refs@0@00))
  :pattern ((Set_in p@21@00 refs@0@00) (Set_in s@22@00 refs@0@00) (exists_path<Bool> result@1@00 p@21@00 s@22@00))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/graphs/static/tests/lists/framing1.vpr@312@13@314@63|)))
(assert (= ($Snap.second ($Snap.second $t@18@00)) $Snap.unit))
; [eval] (forall p: Ref, s: Ref :: { (p in refs), (s in refs), exists_path(result, p, s) } (s in refs) && exists_path(result, p, s) ==> (p in refs))
(declare-const p@23@00 $Ref)
(declare-const s@24@00 $Ref)
(push) ; 2
; [eval] (s in refs) && exists_path(result, p, s) ==> (p in refs)
; [eval] (s in refs) && exists_path(result, p, s)
; [eval] (s in refs)
(push) ; 3
; [then-branch: 4 | !(s@24@00 in refs@0@00) | live]
; [else-branch: 4 | s@24@00 in refs@0@00 | live]
(push) ; 4
; [then-branch: 4 | !(s@24@00 in refs@0@00)]
(assert (not (Set_in s@24@00 refs@0@00)))
(pop) ; 4
(push) ; 4
; [else-branch: 4 | s@24@00 in refs@0@00]
(assert (Set_in s@24@00 refs@0@00))
; [eval] exists_path(result, p, s)
(pop) ; 4
(pop) ; 3
; Joined path conditions
; Joined path conditions
(assert (or (Set_in s@24@00 refs@0@00) (not (Set_in s@24@00 refs@0@00))))
(push) ; 3
; [then-branch: 5 | s@24@00 in refs@0@00 && exists_path[Bool](result@1@00, p@23@00, s@24@00) | live]
; [else-branch: 5 | !(s@24@00 in refs@0@00 && exists_path[Bool](result@1@00, p@23@00, s@24@00)) | live]
(push) ; 4
; [then-branch: 5 | s@24@00 in refs@0@00 && exists_path[Bool](result@1@00, p@23@00, s@24@00)]
(assert (and (Set_in s@24@00 refs@0@00) (exists_path<Bool> result@1@00 p@23@00 s@24@00)))
; [eval] (p in refs)
(pop) ; 4
(push) ; 4
; [else-branch: 5 | !(s@24@00 in refs@0@00 && exists_path[Bool](result@1@00, p@23@00, s@24@00))]
(assert (not
  (and
    (Set_in s@24@00 refs@0@00)
    (exists_path<Bool> result@1@00 p@23@00 s@24@00))))
(pop) ; 4
(pop) ; 3
; Joined path conditions
; Joined path conditions
(assert (or
  (not
    (and
      (Set_in s@24@00 refs@0@00)
      (exists_path<Bool> result@1@00 p@23@00 s@24@00)))
  (and
    (Set_in s@24@00 refs@0@00)
    (exists_path<Bool> result@1@00 p@23@00 s@24@00))))
(pop) ; 2
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall ((p@23@00 $Ref) (s@24@00 $Ref)) (!
  (and
    (or (Set_in s@24@00 refs@0@00) (not (Set_in s@24@00 refs@0@00)))
    (or
      (not
        (and
          (Set_in s@24@00 refs@0@00)
          (exists_path<Bool> result@1@00 p@23@00 s@24@00)))
      (and
        (Set_in s@24@00 refs@0@00)
        (exists_path<Bool> result@1@00 p@23@00 s@24@00))))
  :pattern ((Set_in p@23@00 refs@0@00) (Set_in s@24@00 refs@0@00) (exists_path<Bool> result@1@00 p@23@00 s@24@00))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/graphs/static/tests/lists/framing1.vpr@315@13@317@63-aux|)))
(assert (forall ((p@23@00 $Ref) (s@24@00 $Ref)) (!
  (=>
    (and
      (Set_in s@24@00 refs@0@00)
      (exists_path<Bool> result@1@00 p@23@00 s@24@00))
    (Set_in p@23@00 refs@0@00))
  :pattern ((Set_in p@23@00 refs@0@00) (Set_in s@24@00 refs@0@00) (exists_path<Bool> result@1@00 p@23@00 s@24@00))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/graphs/static/tests/lists/framing1.vpr@315@13@317@63|)))
(pop) ; 1
(assert (forall ((s@$ $Snap) (refs@0@00 Set<$Ref>)) (!
  (= ($$%limited s@$ refs@0@00) ($$ s@$ refs@0@00))
  :pattern (($$ s@$ refs@0@00))
  :qid |quant-u-13666|)))
(assert (forall ((s@$ $Snap) (refs@0@00 Set<$Ref>)) (!
  ($$%stateless refs@0@00)
  :pattern (($$%limited s@$ refs@0@00))
  :qid |quant-u-13667|)))
(assert (forall ((s@$ $Snap) (refs@0@00 Set<$Ref>)) (!
  (let ((result@1@00 ($$%limited s@$ refs@0@00))) (and
    (forall ((n@13@00 $Ref)) (!
      (=>
        (Set_in n@13@00 refs@0@00)
        (and
          (= (inv@15@00 s@$ refs@0@00 n@13@00) n@13@00)
          (img@16@00 s@$ refs@0@00 n@13@00)))
      :pattern (($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> s@$) n@13@00) n@13@00))
      :qid |quant-u-13677|))
    (forall ((r $Ref)) (!
      (=>
        (and
          (img@16@00 s@$ refs@0@00 r)
          (Set_in (inv@15@00 s@$ refs@0@00 r) refs@0@00))
        (= (inv@15@00 s@$ refs@0@00 r) r))
      :pattern ((inv@15@00 s@$ refs@0@00 r))
      :qid |next-fctOfInv|))
    (forall ((r $Ref)) (!
      true
      :pattern (($FVF.lookup_next (sm@14@00 s@$ refs@0@00) r))
      :qid |qp.fvfResTrgDef0|))
    (forall ((r $Ref)) (!
      (=>
        (and
          (img@16@00 s@$ refs@0@00 r)
          (Set_in (inv@15@00 s@$ refs@0@00 r) refs@0@00))
        (=
          ($FVF.lookup_next (sm@17@00 s@$ refs@0@00) r)
          ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> s@$) r)))
      :pattern (($FVF.lookup_next (sm@17@00 s@$ refs@0@00) r))
      :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> s@$) r))
      :qid |qp.fvfValDef1|))
    (forall ((r $Ref)) (!
      ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> s@$) r) r)
      :pattern (($FVF.lookup_next (sm@17@00 s@$ refs@0@00) r))
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
                (= ($FVF.lookup_next (sm@17@00 s@$ refs@0@00) p) s)))
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
  :qid |quant-u-13679|)))
(assert (forall ((s@$ $Snap) (refs@0@00 Set<$Ref>)) (!
  (let ((result@1@00 ($$%limited s@$ refs@0@00))) true)
  :pattern (($$%limited s@$ refs@0@00))
  :qid |quant-u-13680|)))
(assert (forall ((s@$ $Snap) (refs@0@00 Set<$Ref>)) (!
  (let ((result@1@00 ($$%limited s@$ refs@0@00))) true)
  :pattern (($$%limited s@$ refs@0@00))
  :qid |quant-u-13681|)))
(assert (forall ((s@$ $Snap) (refs@0@00 Set<$Ref>)) (!
  (let ((result@1@00 ($$%limited s@$ refs@0@00))) true)
  :pattern (($$%limited s@$ refs@0@00))
  :qid |quant-u-13682|)))
; ---------- FUNCTION is_global_root----------
(declare-fun g@2@00 () Set<$Ref>)
(declare-fun root@3@00 () $Ref)
(declare-fun result@4@00 () Bool)
; ----- Well-definedness of specifications -----
(push) ; 1
(assert (= s@$ ($Snap.combine ($Snap.first s@$) ($Snap.second s@$))))
(assert (= ($Snap.first s@$) $Snap.unit))
; [eval] !((null in g))
; [eval] (null in g)
(assert (not (Set_in $Ref.null g@2@00)))
(assert (=
  ($Snap.second s@$)
  ($Snap.combine
    ($Snap.first ($Snap.second s@$))
    ($Snap.second ($Snap.second s@$)))))
(declare-const n$0@25@00 $Ref)
(push) ; 2
; [eval] (n$0 in g)
(assert (Set_in n$0@25@00 g@2@00))
(declare-fun sm@26@00 ($Snap Set<$Ref> $Ref) $FVF<next>)
; Definitional axioms for snapshot map values
(pop) ; 2
(declare-fun inv@27@00 ($Snap Set<$Ref> $Ref $Ref) $Ref)
(declare-fun img@28@00 ($Snap Set<$Ref> $Ref $Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
; Check receiver injectivity
(push) ; 2
(assert (not (forall ((n$01@25@00 $Ref) (n$02@25@00 $Ref)) (!
  (=>
    (and
      (Set_in n$01@25@00 g@2@00)
      (Set_in n$02@25@00 g@2@00)
      (= n$01@25@00 n$02@25@00))
    (= n$01@25@00 n$02@25@00))
  
  :qid |next-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 2
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((n$0@25@00 $Ref)) (!
  (=>
    (Set_in n$0@25@00 g@2@00)
    (and
      (= (inv@27@00 s@$ g@2@00 root@3@00 n$0@25@00) n$0@25@00)
      (img@28@00 s@$ g@2@00 root@3@00 n$0@25@00)))
  :pattern (($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second s@$))) n$0@25@00) n$0@25@00))
  :qid |quant-u-13684|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@28@00 s@$ g@2@00 root@3@00 r)
      (Set_in (inv@27@00 s@$ g@2@00 root@3@00 r) g@2@00))
    (= (inv@27@00 s@$ g@2@00 root@3@00 r) r))
  :pattern ((inv@27@00 s@$ g@2@00 root@3@00 r))
  :qid |next-fctOfInv|)))
; Permissions are non-negative
; Permission implies non-null receiver
(assert (forall ((n$0@25@00 $Ref)) (!
  (=> (Set_in n$0@25@00 g@2@00) (not (= n$0@25@00 $Ref.null)))
  :pattern (($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second s@$))) n$0@25@00) n$0@25@00))
  :qid |next-permImpliesNonNull|)))
(declare-fun sm@29@00 ($Snap Set<$Ref> $Ref) $FVF<next>)
; Definitional axioms for snapshot map values
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@28@00 s@$ g@2@00 root@3@00 r)
      (Set_in (inv@27@00 s@$ g@2@00 root@3@00 r) g@2@00))
    (=
      ($FVF.lookup_next (sm@29@00 s@$ g@2@00 root@3@00) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second s@$))) r)))
  :pattern (($FVF.lookup_next (sm@29@00 s@$ g@2@00 root@3@00) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second s@$))) r))
  :qid |qp.fvfValDef4|)))
(assert (forall ((r $Ref)) (!
  ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second s@$))) r) r)
  :pattern (($FVF.lookup_next (sm@29@00 s@$ g@2@00 root@3@00) r))
  :qid |qp.fvfResTrgDef5|)))
(assert (forall ((r $Ref)) (!
  (=>
    (Set_in (inv@27@00 s@$ g@2@00 root@3@00 r) g@2@00)
    ($FVF.loc_next ($FVF.lookup_next (sm@29@00 s@$ g@2@00 root@3@00) r) r))
  :pattern ((inv@27@00 s@$ g@2@00 root@3@00 r))
  :qid |quant-u-13685|)))
(assert (=
  ($Snap.second ($Snap.second s@$))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second s@$)))
    ($Snap.second ($Snap.second ($Snap.second s@$))))))
(assert (= ($Snap.first ($Snap.second ($Snap.second s@$))) $Snap.unit))
; [eval] (forall n$1: Ref :: { (n$1.next in g) } { (n$1 in g), n$1.next } (n$1 in g) && n$1.next != null ==> (n$1.next in g))
(declare-const n$1@30@00 $Ref)
(push) ; 2
; [eval] (n$1 in g) && n$1.next != null ==> (n$1.next in g)
; [eval] (n$1 in g) && n$1.next != null
; [eval] (n$1 in g)
(push) ; 3
; [then-branch: 6 | !(n$1@30@00 in g@2@00) | live]
; [else-branch: 6 | n$1@30@00 in g@2@00 | live]
(push) ; 4
; [then-branch: 6 | !(n$1@30@00 in g@2@00)]
(assert (not (Set_in n$1@30@00 g@2@00)))
(pop) ; 4
(push) ; 4
; [else-branch: 6 | n$1@30@00 in g@2@00]
(assert (Set_in n$1@30@00 g@2@00))
; [eval] n$1.next != null
(assert (and
  (forall ((r $Ref)) (!
    (=>
      (and
        (img@28@00 s@$ g@2@00 root@3@00 r)
        (Set_in (inv@27@00 s@$ g@2@00 root@3@00 r) g@2@00))
      (=
        ($FVF.lookup_next (sm@29@00 s@$ g@2@00 root@3@00) r)
        ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second s@$))) r)))
    :pattern (($FVF.lookup_next (sm@29@00 s@$ g@2@00 root@3@00) r))
    :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second s@$))) r))
    :qid |qp.fvfValDef4|))
  (forall ((r $Ref)) (!
    ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second s@$))) r) r)
    :pattern (($FVF.lookup_next (sm@29@00 s@$ g@2@00 root@3@00) r))
    :qid |qp.fvfResTrgDef5|))))
(assert ($FVF.loc_next ($FVF.lookup_next (sm@29@00 s@$ g@2@00 root@3@00) n$1@30@00) n$1@30@00))
(push) ; 5
(assert (not (and
  (img@28@00 s@$ g@2@00 root@3@00 n$1@30@00)
  (Set_in (inv@27@00 s@$ g@2@00 root@3@00 n$1@30@00) g@2@00))))
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
    (and
      (img@28@00 s@$ g@2@00 root@3@00 r)
      (Set_in (inv@27@00 s@$ g@2@00 root@3@00 r) g@2@00))
    (=
      ($FVF.lookup_next (sm@29@00 s@$ g@2@00 root@3@00) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second s@$))) r)))
  :pattern (($FVF.lookup_next (sm@29@00 s@$ g@2@00 root@3@00) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second s@$))) r))
  :qid |qp.fvfValDef4|)))
(assert (forall ((r $Ref)) (!
  ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second s@$))) r) r)
  :pattern (($FVF.lookup_next (sm@29@00 s@$ g@2@00 root@3@00) r))
  :qid |qp.fvfResTrgDef5|)))
(assert (=>
  (Set_in n$1@30@00 g@2@00)
  (and
    (Set_in n$1@30@00 g@2@00)
    ($FVF.loc_next ($FVF.lookup_next (sm@29@00 s@$ g@2@00 root@3@00) n$1@30@00) n$1@30@00))))
(assert (or (Set_in n$1@30@00 g@2@00) (not (Set_in n$1@30@00 g@2@00))))
(push) ; 3
; [then-branch: 7 | n$1@30@00 in g@2@00 && Lookup(next, sm@29@00(s@$, g@2@00, root@3@00), n$1@30@00) != Null | live]
; [else-branch: 7 | !(n$1@30@00 in g@2@00 && Lookup(next, sm@29@00(s@$, g@2@00, root@3@00), n$1@30@00) != Null) | live]
(push) ; 4
; [then-branch: 7 | n$1@30@00 in g@2@00 && Lookup(next, sm@29@00(s@$, g@2@00, root@3@00), n$1@30@00) != Null]
(assert (and
  (Set_in n$1@30@00 g@2@00)
  (not
    (= ($FVF.lookup_next (sm@29@00 s@$ g@2@00 root@3@00) n$1@30@00) $Ref.null))))
; [eval] (n$1.next in g)
(assert (and
  (forall ((r $Ref)) (!
    (=>
      (and
        (img@28@00 s@$ g@2@00 root@3@00 r)
        (Set_in (inv@27@00 s@$ g@2@00 root@3@00 r) g@2@00))
      (=
        ($FVF.lookup_next (sm@29@00 s@$ g@2@00 root@3@00) r)
        ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second s@$))) r)))
    :pattern (($FVF.lookup_next (sm@29@00 s@$ g@2@00 root@3@00) r))
    :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second s@$))) r))
    :qid |qp.fvfValDef4|))
  (forall ((r $Ref)) (!
    ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second s@$))) r) r)
    :pattern (($FVF.lookup_next (sm@29@00 s@$ g@2@00 root@3@00) r))
    :qid |qp.fvfResTrgDef5|))))
(assert ($FVF.loc_next ($FVF.lookup_next (sm@29@00 s@$ g@2@00 root@3@00) n$1@30@00) n$1@30@00))
(push) ; 5
(assert (not (and
  (img@28@00 s@$ g@2@00 root@3@00 n$1@30@00)
  (Set_in (inv@27@00 s@$ g@2@00 root@3@00 n$1@30@00) g@2@00))))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(pop) ; 4
(push) ; 4
; [else-branch: 7 | !(n$1@30@00 in g@2@00 && Lookup(next, sm@29@00(s@$, g@2@00, root@3@00), n$1@30@00) != Null)]
(assert (not
  (and
    (Set_in n$1@30@00 g@2@00)
    (not
      (= ($FVF.lookup_next (sm@29@00 s@$ g@2@00 root@3@00) n$1@30@00) $Ref.null)))))
(pop) ; 4
(pop) ; 3
; Joined path conditions
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@28@00 s@$ g@2@00 root@3@00 r)
      (Set_in (inv@27@00 s@$ g@2@00 root@3@00 r) g@2@00))
    (=
      ($FVF.lookup_next (sm@29@00 s@$ g@2@00 root@3@00) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second s@$))) r)))
  :pattern (($FVF.lookup_next (sm@29@00 s@$ g@2@00 root@3@00) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second s@$))) r))
  :qid |qp.fvfValDef4|)))
(assert (forall ((r $Ref)) (!
  ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second s@$))) r) r)
  :pattern (($FVF.lookup_next (sm@29@00 s@$ g@2@00 root@3@00) r))
  :qid |qp.fvfResTrgDef5|)))
(assert (=>
  (and
    (Set_in n$1@30@00 g@2@00)
    (not
      (= ($FVF.lookup_next (sm@29@00 s@$ g@2@00 root@3@00) n$1@30@00) $Ref.null)))
  (and
    (Set_in n$1@30@00 g@2@00)
    (not
      (= ($FVF.lookup_next (sm@29@00 s@$ g@2@00 root@3@00) n$1@30@00) $Ref.null))
    ($FVF.loc_next ($FVF.lookup_next (sm@29@00 s@$ g@2@00 root@3@00) n$1@30@00) n$1@30@00))))
; Joined path conditions
(assert (or
  (not
    (and
      (Set_in n$1@30@00 g@2@00)
      (not
        (=
          ($FVF.lookup_next (sm@29@00 s@$ g@2@00 root@3@00) n$1@30@00)
          $Ref.null))))
  (and
    (Set_in n$1@30@00 g@2@00)
    (not
      (= ($FVF.lookup_next (sm@29@00 s@$ g@2@00 root@3@00) n$1@30@00) $Ref.null)))))
; Definitional axioms for snapshot map values
(pop) ; 2
; Nested auxiliary terms: globals (aux)
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@28@00 s@$ g@2@00 root@3@00 r)
      (Set_in (inv@27@00 s@$ g@2@00 root@3@00 r) g@2@00))
    (=
      ($FVF.lookup_next (sm@29@00 s@$ g@2@00 root@3@00) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second s@$))) r)))
  :pattern (($FVF.lookup_next (sm@29@00 s@$ g@2@00 root@3@00) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second s@$))) r))
  :qid |qp.fvfValDef4|)))
(assert (forall ((r $Ref)) (!
  ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second s@$))) r) r)
  :pattern (($FVF.lookup_next (sm@29@00 s@$ g@2@00 root@3@00) r))
  :qid |qp.fvfResTrgDef5|)))
; Nested auxiliary terms: non-globals (aux)
(assert (forall ((n$1@30@00 $Ref)) (!
  (and
    (=>
      (Set_in n$1@30@00 g@2@00)
      (and
        (Set_in n$1@30@00 g@2@00)
        ($FVF.loc_next ($FVF.lookup_next (sm@29@00 s@$ g@2@00 root@3@00) n$1@30@00) n$1@30@00)))
    (or (Set_in n$1@30@00 g@2@00) (not (Set_in n$1@30@00 g@2@00)))
    (=>
      (and
        (Set_in n$1@30@00 g@2@00)
        (not
          (=
            ($FVF.lookup_next (sm@29@00 s@$ g@2@00 root@3@00) n$1@30@00)
            $Ref.null)))
      (and
        (Set_in n$1@30@00 g@2@00)
        (not
          (=
            ($FVF.lookup_next (sm@29@00 s@$ g@2@00 root@3@00) n$1@30@00)
            $Ref.null))
        ($FVF.loc_next ($FVF.lookup_next (sm@29@00 s@$ g@2@00 root@3@00) n$1@30@00) n$1@30@00)))
    (or
      (not
        (and
          (Set_in n$1@30@00 g@2@00)
          (not
            (=
              ($FVF.lookup_next (sm@29@00 s@$ g@2@00 root@3@00) n$1@30@00)
              $Ref.null))))
      (and
        (Set_in n$1@30@00 g@2@00)
        (not
          (=
            ($FVF.lookup_next (sm@29@00 s@$ g@2@00 root@3@00) n$1@30@00)
            $Ref.null)))))
  :pattern ((Set_in ($FVF.lookup_next (sm@29@00 s@$ g@2@00 root@3@00) n$1@30@00) g@2@00))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/graphs/static/tests/lists/framing1.vpr@332@14@332@22-aux|)))
(assert (forall ((n$1@30@00 $Ref)) (!
  (and
    (=>
      (Set_in n$1@30@00 g@2@00)
      (and
        (Set_in n$1@30@00 g@2@00)
        ($FVF.loc_next ($FVF.lookup_next (sm@29@00 s@$ g@2@00 root@3@00) n$1@30@00) n$1@30@00)))
    (or (Set_in n$1@30@00 g@2@00) (not (Set_in n$1@30@00 g@2@00)))
    (=>
      (and
        (Set_in n$1@30@00 g@2@00)
        (not
          (=
            ($FVF.lookup_next (sm@29@00 s@$ g@2@00 root@3@00) n$1@30@00)
            $Ref.null)))
      (and
        (Set_in n$1@30@00 g@2@00)
        (not
          (=
            ($FVF.lookup_next (sm@29@00 s@$ g@2@00 root@3@00) n$1@30@00)
            $Ref.null))
        ($FVF.loc_next ($FVF.lookup_next (sm@29@00 s@$ g@2@00 root@3@00) n$1@30@00) n$1@30@00)))
    (or
      (not
        (and
          (Set_in n$1@30@00 g@2@00)
          (not
            (=
              ($FVF.lookup_next (sm@29@00 s@$ g@2@00 root@3@00) n$1@30@00)
              $Ref.null))))
      (and
        (Set_in n$1@30@00 g@2@00)
        (not
          (=
            ($FVF.lookup_next (sm@29@00 s@$ g@2@00 root@3@00) n$1@30@00)
            $Ref.null)))))
  :pattern ((Set_in n$1@30@00 g@2@00) ($FVF.loc_next ($FVF.lookup_next (sm@29@00 s@$ g@2@00 root@3@00) n$1@30@00) n$1@30@00))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/graphs/static/tests/lists/framing1.vpr@332@14@332@22-aux|)))
(assert (forall ((n$1@30@00 $Ref)) (!
  (=>
    (and
      (Set_in n$1@30@00 g@2@00)
      (not
        (=
          ($FVF.lookup_next (sm@29@00 s@$ g@2@00 root@3@00) n$1@30@00)
          $Ref.null)))
    (Set_in ($FVF.lookup_next (sm@29@00 s@$ g@2@00 root@3@00) n$1@30@00) g@2@00))
  :pattern ((Set_in ($FVF.lookup_next (sm@29@00 s@$ g@2@00 root@3@00) n$1@30@00) g@2@00))
  :pattern ((Set_in n$1@30@00 g@2@00) ($FVF.loc_next ($FVF.lookup_next (sm@29@00 s@$ g@2@00 root@3@00) n$1@30@00) n$1@30@00))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/graphs/static/tests/lists/framing1.vpr@332@14@332@22|)))
(assert (= ($Snap.second ($Snap.second ($Snap.second s@$))) $Snap.unit))
; [eval] (root in g)
(assert (Set_in root@3@00 g@2@00))
(pop) ; 1
(assert (forall ((s@$ $Snap) (g@2@00 Set<$Ref>) (root@3@00 $Ref)) (!
  (=
    (is_global_root%limited s@$ g@2@00 root@3@00)
    (is_global_root s@$ g@2@00 root@3@00))
  :pattern ((is_global_root s@$ g@2@00 root@3@00))
  :qid |quant-u-13668|)))
(assert (forall ((s@$ $Snap) (g@2@00 Set<$Ref>) (root@3@00 $Ref)) (!
  (is_global_root%stateless g@2@00 root@3@00)
  :pattern ((is_global_root%limited s@$ g@2@00 root@3@00))
  :qid |quant-u-13669|)))
; ----- Verification of function body and postcondition -----
(push) ; 1
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@28@00 s@$ g@2@00 root@3@00 r)
      (Set_in (inv@27@00 s@$ g@2@00 root@3@00 r) g@2@00))
    (= (inv@27@00 s@$ g@2@00 root@3@00 r) r))
  :pattern ((inv@27@00 s@$ g@2@00 root@3@00 r))
  :qid |next-fctOfInv|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@28@00 s@$ g@2@00 root@3@00 r)
      (Set_in (inv@27@00 s@$ g@2@00 root@3@00 r) g@2@00))
    (=
      ($FVF.lookup_next (sm@29@00 s@$ g@2@00 root@3@00) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second s@$))) r)))
  :pattern (($FVF.lookup_next (sm@29@00 s@$ g@2@00 root@3@00) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second s@$))) r))
  :qid |qp.fvfValDef4|)))
(assert (forall ((r $Ref)) (!
  ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second s@$))) r) r)
  :pattern (($FVF.lookup_next (sm@29@00 s@$ g@2@00 root@3@00) r))
  :qid |qp.fvfResTrgDef5|)))
(assert (forall ((n$0@25@00 $Ref)) (!
  (=>
    (Set_in n$0@25@00 g@2@00)
    (and
      (= (inv@27@00 s@$ g@2@00 root@3@00 n$0@25@00) n$0@25@00)
      (img@28@00 s@$ g@2@00 root@3@00 n$0@25@00)))
  :pattern (($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second s@$))) n$0@25@00) n$0@25@00))
  :qid |quant-u-13684|)))
(assert (forall ((n$0@25@00 $Ref)) (!
  (=> (Set_in n$0@25@00 g@2@00) (not (= n$0@25@00 $Ref.null)))
  :pattern (($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second s@$))) n$0@25@00) n$0@25@00))
  :qid |next-permImpliesNonNull|)))
(assert (forall ((r $Ref)) (!
  (=>
    (Set_in (inv@27@00 s@$ g@2@00 root@3@00 r) g@2@00)
    ($FVF.loc_next ($FVF.lookup_next (sm@29@00 s@$ g@2@00 root@3@00) r) r))
  :pattern ((inv@27@00 s@$ g@2@00 root@3@00 r))
  :qid |quant-u-13685|)))
(assert (=
  ($Snap.second ($Snap.second s@$))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second s@$)))
    ($Snap.second ($Snap.second ($Snap.second s@$))))))
(assert (= ($Snap.first ($Snap.second ($Snap.second s@$))) $Snap.unit))
(assert (forall ((n$1@30@00 $Ref)) (!
  (and
    (=>
      (Set_in n$1@30@00 g@2@00)
      (and
        (Set_in n$1@30@00 g@2@00)
        ($FVF.loc_next ($FVF.lookup_next (sm@29@00 s@$ g@2@00 root@3@00) n$1@30@00) n$1@30@00)))
    (or (Set_in n$1@30@00 g@2@00) (not (Set_in n$1@30@00 g@2@00)))
    (=>
      (and
        (Set_in n$1@30@00 g@2@00)
        (not
          (=
            ($FVF.lookup_next (sm@29@00 s@$ g@2@00 root@3@00) n$1@30@00)
            $Ref.null)))
      (and
        (Set_in n$1@30@00 g@2@00)
        (not
          (=
            ($FVF.lookup_next (sm@29@00 s@$ g@2@00 root@3@00) n$1@30@00)
            $Ref.null))
        ($FVF.loc_next ($FVF.lookup_next (sm@29@00 s@$ g@2@00 root@3@00) n$1@30@00) n$1@30@00)))
    (or
      (not
        (and
          (Set_in n$1@30@00 g@2@00)
          (not
            (=
              ($FVF.lookup_next (sm@29@00 s@$ g@2@00 root@3@00) n$1@30@00)
              $Ref.null))))
      (and
        (Set_in n$1@30@00 g@2@00)
        (not
          (=
            ($FVF.lookup_next (sm@29@00 s@$ g@2@00 root@3@00) n$1@30@00)
            $Ref.null)))))
  :pattern ((Set_in ($FVF.lookup_next (sm@29@00 s@$ g@2@00 root@3@00) n$1@30@00) g@2@00))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/graphs/static/tests/lists/framing1.vpr@332@14@332@22-aux|)))
(assert (forall ((n$1@30@00 $Ref)) (!
  (and
    (=>
      (Set_in n$1@30@00 g@2@00)
      (and
        (Set_in n$1@30@00 g@2@00)
        ($FVF.loc_next ($FVF.lookup_next (sm@29@00 s@$ g@2@00 root@3@00) n$1@30@00) n$1@30@00)))
    (or (Set_in n$1@30@00 g@2@00) (not (Set_in n$1@30@00 g@2@00)))
    (=>
      (and
        (Set_in n$1@30@00 g@2@00)
        (not
          (=
            ($FVF.lookup_next (sm@29@00 s@$ g@2@00 root@3@00) n$1@30@00)
            $Ref.null)))
      (and
        (Set_in n$1@30@00 g@2@00)
        (not
          (=
            ($FVF.lookup_next (sm@29@00 s@$ g@2@00 root@3@00) n$1@30@00)
            $Ref.null))
        ($FVF.loc_next ($FVF.lookup_next (sm@29@00 s@$ g@2@00 root@3@00) n$1@30@00) n$1@30@00)))
    (or
      (not
        (and
          (Set_in n$1@30@00 g@2@00)
          (not
            (=
              ($FVF.lookup_next (sm@29@00 s@$ g@2@00 root@3@00) n$1@30@00)
              $Ref.null))))
      (and
        (Set_in n$1@30@00 g@2@00)
        (not
          (=
            ($FVF.lookup_next (sm@29@00 s@$ g@2@00 root@3@00) n$1@30@00)
            $Ref.null)))))
  :pattern ((Set_in n$1@30@00 g@2@00) ($FVF.loc_next ($FVF.lookup_next (sm@29@00 s@$ g@2@00 root@3@00) n$1@30@00) n$1@30@00))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/graphs/static/tests/lists/framing1.vpr@332@14@332@22-aux|)))
(assert (forall ((n$1@30@00 $Ref)) (!
  (=>
    (and
      (Set_in n$1@30@00 g@2@00)
      (not
        (=
          ($FVF.lookup_next (sm@29@00 s@$ g@2@00 root@3@00) n$1@30@00)
          $Ref.null)))
    (Set_in ($FVF.lookup_next (sm@29@00 s@$ g@2@00 root@3@00) n$1@30@00) g@2@00))
  :pattern ((Set_in ($FVF.lookup_next (sm@29@00 s@$ g@2@00 root@3@00) n$1@30@00) g@2@00))
  :pattern ((Set_in n$1@30@00 g@2@00) ($FVF.loc_next ($FVF.lookup_next (sm@29@00 s@$ g@2@00 root@3@00) n$1@30@00) n$1@30@00))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/graphs/static/tests/lists/framing1.vpr@332@14@332@22|)))
(assert (= ($Snap.second ($Snap.second ($Snap.second s@$))) $Snap.unit))
(assert (Set_in root@3@00 g@2@00))
(assert (= s@$ ($Snap.combine ($Snap.first s@$) ($Snap.second s@$))))
(assert (= ($Snap.first s@$) $Snap.unit))
(assert (not (Set_in $Ref.null g@2@00)))
(assert (=
  ($Snap.second s@$)
  ($Snap.combine
    ($Snap.first ($Snap.second s@$))
    ($Snap.second ($Snap.second s@$)))))
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
; [eval] (forall n: Ref :: { exists_path($$(g), root, n) } (n in g) ==> exists_path($$(g), root, n))
(declare-const n@31@00 $Ref)
(set-option :timeout 0)
(push) ; 2
; [eval] (n in g) ==> exists_path($$(g), root, n)
; [eval] (n in g)
(push) ; 3
; [then-branch: 8 | n@31@00 in g@2@00 | live]
; [else-branch: 8 | !(n@31@00 in g@2@00) | live]
(push) ; 4
; [then-branch: 8 | n@31@00 in g@2@00]
(assert (Set_in n@31@00 g@2@00))
; [eval] exists_path($$(g), root, n)
; [eval] $$(g)
(push) ; 5
(declare-const n@32@00 $Ref)
(push) ; 6
; [eval] (n in refs)
(assert (Set_in n@32@00 g@2@00))
(pop) ; 6
(declare-fun inv@33@00 ($Snap Set<$Ref> $Ref $Ref) $Ref)
(declare-fun img@34@00 ($Snap Set<$Ref> $Ref $Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
; Definitional axioms for snapshot map domain
; Definitional axioms for snapshot map values
; Check receiver injectivity
(push) ; 6
(assert (not (forall ((n1@32@00 $Ref) (n2@32@00 $Ref)) (!
  (=>
    (and
      (and
        (Set_in n1@32@00 g@2@00)
        ($FVF.loc_next ($FVF.lookup_next (sm@29@00 s@$ g@2@00 root@3@00) n1@32@00) n1@32@00))
      (and
        (Set_in n2@32@00 g@2@00)
        ($FVF.loc_next ($FVF.lookup_next (sm@29@00 s@$ g@2@00 root@3@00) n2@32@00) n2@32@00))
      (= n1@32@00 n2@32@00))
    (= n1@32@00 n2@32@00))
  
  :qid |next-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((n@32@00 $Ref)) (!
  (=>
    (Set_in n@32@00 g@2@00)
    (and
      (= (inv@33@00 s@$ g@2@00 root@3@00 n@32@00) n@32@00)
      (img@34@00 s@$ g@2@00 root@3@00 n@32@00)))
  :pattern ((Set_in n@32@00 g@2@00))
  :pattern ((inv@33@00 s@$ g@2@00 root@3@00 n@32@00))
  :pattern ((img@34@00 s@$ g@2@00 root@3@00 n@32@00))
  :qid |next-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@34@00 s@$ g@2@00 root@3@00 r)
      (Set_in (inv@33@00 s@$ g@2@00 root@3@00 r) g@2@00))
    (= (inv@33@00 s@$ g@2@00 root@3@00 r) r))
  :pattern ((inv@33@00 s@$ g@2@00 root@3@00 r))
  :qid |next-fctOfInv|)))
(assert (forall ((r $Ref)) (!
  (=>
    (Set_in (inv@33@00 s@$ g@2@00 root@3@00 r) g@2@00)
    ($FVF.loc_next ($FVF.lookup_next (sm@29@00 s@$ g@2@00 root@3@00) r) r))
  :pattern ((inv@33@00 s@$ g@2@00 root@3@00 r))
  :qid |quant-u-13687|)))
(push) ; 6
(assert (not (forall ((r $Ref)) (!
  (=>
    (and
      (Set_in (inv@33@00 s@$ g@2@00 root@3@00 r) g@2@00)
      (img@34@00 s@$ g@2@00 root@3@00 r)
      (= r (inv@33@00 s@$ g@2@00 root@3@00 r)))
    (>
      (ite
        (and
          (img@28@00 s@$ g@2@00 root@3@00 r)
          (Set_in (inv@27@00 s@$ g@2@00 root@3@00 r) g@2@00))
        $Perm.Write
        $Perm.No)
      $Perm.No))
  
  :qid |quant-u-13688|))))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(declare-fun sm@35@00 ($Snap Set<$Ref> $Ref) $FVF<next>)
; Definitional axioms for snapshot map domain
(assert (forall ((r $Ref)) (!
  (and
    (=>
      (Set_in r ($FVF.domain_next (sm@35@00 s@$ g@2@00 root@3@00)))
      (and
        (Set_in (inv@33@00 s@$ g@2@00 root@3@00 r) g@2@00)
        (img@34@00 s@$ g@2@00 root@3@00 r)))
    (=>
      (and
        (Set_in (inv@33@00 s@$ g@2@00 root@3@00 r) g@2@00)
        (img@34@00 s@$ g@2@00 root@3@00 r))
      (Set_in r ($FVF.domain_next (sm@35@00 s@$ g@2@00 root@3@00)))))
  :pattern ((Set_in r ($FVF.domain_next (sm@35@00 s@$ g@2@00 root@3@00))))
  :qid |qp.fvfDomDef8|)))
; Definitional axioms for snapshot map values
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and
        (Set_in (inv@33@00 s@$ g@2@00 root@3@00 r) g@2@00)
        (img@34@00 s@$ g@2@00 root@3@00 r))
      (and
        (img@28@00 s@$ g@2@00 root@3@00 r)
        (Set_in (inv@27@00 s@$ g@2@00 root@3@00 r) g@2@00)))
    (=
      ($FVF.lookup_next (sm@35@00 s@$ g@2@00 root@3@00) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second s@$))) r)))
  :pattern (($FVF.lookup_next (sm@35@00 s@$ g@2@00 root@3@00) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second s@$))) r))
  :qid |qp.fvfValDef6|)))
(assert (forall ((r $Ref)) (!
  ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second s@$))) r) r)
  :pattern (($FVF.lookup_next (sm@35@00 s@$ g@2@00 root@3@00) r))
  :qid |qp.fvfResTrgDef7|)))
(assert ($$%precondition ($SortWrappers.$FVF<next>To$Snap (sm@35@00 s@$ g@2@00 root@3@00)) g@2@00))
(pop) ; 5
; Joined path conditions
(assert (forall ((n@32@00 $Ref)) (!
  (=>
    (Set_in n@32@00 g@2@00)
    (and
      (= (inv@33@00 s@$ g@2@00 root@3@00 n@32@00) n@32@00)
      (img@34@00 s@$ g@2@00 root@3@00 n@32@00)))
  :pattern ((Set_in n@32@00 g@2@00))
  :pattern ((inv@33@00 s@$ g@2@00 root@3@00 n@32@00))
  :pattern ((img@34@00 s@$ g@2@00 root@3@00 n@32@00))
  :qid |next-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@34@00 s@$ g@2@00 root@3@00 r)
      (Set_in (inv@33@00 s@$ g@2@00 root@3@00 r) g@2@00))
    (= (inv@33@00 s@$ g@2@00 root@3@00 r) r))
  :pattern ((inv@33@00 s@$ g@2@00 root@3@00 r))
  :qid |next-fctOfInv|)))
(assert (forall ((r $Ref)) (!
  (and
    (=>
      (Set_in r ($FVF.domain_next (sm@35@00 s@$ g@2@00 root@3@00)))
      (and
        (Set_in (inv@33@00 s@$ g@2@00 root@3@00 r) g@2@00)
        (img@34@00 s@$ g@2@00 root@3@00 r)))
    (=>
      (and
        (Set_in (inv@33@00 s@$ g@2@00 root@3@00 r) g@2@00)
        (img@34@00 s@$ g@2@00 root@3@00 r))
      (Set_in r ($FVF.domain_next (sm@35@00 s@$ g@2@00 root@3@00)))))
  :pattern ((Set_in r ($FVF.domain_next (sm@35@00 s@$ g@2@00 root@3@00))))
  :qid |qp.fvfDomDef8|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and
        (Set_in (inv@33@00 s@$ g@2@00 root@3@00 r) g@2@00)
        (img@34@00 s@$ g@2@00 root@3@00 r))
      (and
        (img@28@00 s@$ g@2@00 root@3@00 r)
        (Set_in (inv@27@00 s@$ g@2@00 root@3@00 r) g@2@00)))
    (=
      ($FVF.lookup_next (sm@35@00 s@$ g@2@00 root@3@00) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second s@$))) r)))
  :pattern (($FVF.lookup_next (sm@35@00 s@$ g@2@00 root@3@00) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second s@$))) r))
  :qid |qp.fvfValDef6|)))
(assert (forall ((r $Ref)) (!
  ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second s@$))) r) r)
  :pattern (($FVF.lookup_next (sm@35@00 s@$ g@2@00 root@3@00) r))
  :qid |qp.fvfResTrgDef7|)))
(assert (and
  (forall ((r $Ref)) (!
    (=>
      (Set_in (inv@33@00 s@$ g@2@00 root@3@00 r) g@2@00)
      ($FVF.loc_next ($FVF.lookup_next (sm@29@00 s@$ g@2@00 root@3@00) r) r))
    :pattern ((inv@33@00 s@$ g@2@00 root@3@00 r))
    :qid |quant-u-13687|))
  ($$%precondition ($SortWrappers.$FVF<next>To$Snap (sm@35@00 s@$ g@2@00 root@3@00)) g@2@00)))
(pop) ; 4
(push) ; 4
; [else-branch: 8 | !(n@31@00 in g@2@00)]
(assert (not (Set_in n@31@00 g@2@00)))
(pop) ; 4
(pop) ; 3
; Joined path conditions
(assert (forall ((n@32@00 $Ref)) (!
  (=>
    (Set_in n@32@00 g@2@00)
    (and
      (= (inv@33@00 s@$ g@2@00 root@3@00 n@32@00) n@32@00)
      (img@34@00 s@$ g@2@00 root@3@00 n@32@00)))
  :pattern ((Set_in n@32@00 g@2@00))
  :pattern ((inv@33@00 s@$ g@2@00 root@3@00 n@32@00))
  :pattern ((img@34@00 s@$ g@2@00 root@3@00 n@32@00))
  :qid |next-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@34@00 s@$ g@2@00 root@3@00 r)
      (Set_in (inv@33@00 s@$ g@2@00 root@3@00 r) g@2@00))
    (= (inv@33@00 s@$ g@2@00 root@3@00 r) r))
  :pattern ((inv@33@00 s@$ g@2@00 root@3@00 r))
  :qid |next-fctOfInv|)))
(assert (forall ((r $Ref)) (!
  (and
    (=>
      (Set_in r ($FVF.domain_next (sm@35@00 s@$ g@2@00 root@3@00)))
      (and
        (Set_in (inv@33@00 s@$ g@2@00 root@3@00 r) g@2@00)
        (img@34@00 s@$ g@2@00 root@3@00 r)))
    (=>
      (and
        (Set_in (inv@33@00 s@$ g@2@00 root@3@00 r) g@2@00)
        (img@34@00 s@$ g@2@00 root@3@00 r))
      (Set_in r ($FVF.domain_next (sm@35@00 s@$ g@2@00 root@3@00)))))
  :pattern ((Set_in r ($FVF.domain_next (sm@35@00 s@$ g@2@00 root@3@00))))
  :qid |qp.fvfDomDef8|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and
        (Set_in (inv@33@00 s@$ g@2@00 root@3@00 r) g@2@00)
        (img@34@00 s@$ g@2@00 root@3@00 r))
      (and
        (img@28@00 s@$ g@2@00 root@3@00 r)
        (Set_in (inv@27@00 s@$ g@2@00 root@3@00 r) g@2@00)))
    (=
      ($FVF.lookup_next (sm@35@00 s@$ g@2@00 root@3@00) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second s@$))) r)))
  :pattern (($FVF.lookup_next (sm@35@00 s@$ g@2@00 root@3@00) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second s@$))) r))
  :qid |qp.fvfValDef6|)))
(assert (forall ((r $Ref)) (!
  ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second s@$))) r) r)
  :pattern (($FVF.lookup_next (sm@35@00 s@$ g@2@00 root@3@00) r))
  :qid |qp.fvfResTrgDef7|)))
(assert (=>
  (Set_in n@31@00 g@2@00)
  (and
    (Set_in n@31@00 g@2@00)
    (forall ((r $Ref)) (!
      (=>
        (Set_in (inv@33@00 s@$ g@2@00 root@3@00 r) g@2@00)
        ($FVF.loc_next ($FVF.lookup_next (sm@29@00 s@$ g@2@00 root@3@00) r) r))
      :pattern ((inv@33@00 s@$ g@2@00 root@3@00 r))
      :qid |quant-u-13687|))
    ($$%precondition ($SortWrappers.$FVF<next>To$Snap (sm@35@00 s@$ g@2@00 root@3@00)) g@2@00))))
; Joined path conditions
(assert (or (not (Set_in n@31@00 g@2@00)) (Set_in n@31@00 g@2@00)))
(pop) ; 2
; Nested auxiliary terms: globals (aux)
(assert (forall ((n@32@00 $Ref)) (!
  (=>
    (Set_in n@32@00 g@2@00)
    (and
      (= (inv@33@00 s@$ g@2@00 root@3@00 n@32@00) n@32@00)
      (img@34@00 s@$ g@2@00 root@3@00 n@32@00)))
  :pattern ((Set_in n@32@00 g@2@00))
  :pattern ((inv@33@00 s@$ g@2@00 root@3@00 n@32@00))
  :pattern ((img@34@00 s@$ g@2@00 root@3@00 n@32@00))
  :qid |next-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@34@00 s@$ g@2@00 root@3@00 r)
      (Set_in (inv@33@00 s@$ g@2@00 root@3@00 r) g@2@00))
    (= (inv@33@00 s@$ g@2@00 root@3@00 r) r))
  :pattern ((inv@33@00 s@$ g@2@00 root@3@00 r))
  :qid |next-fctOfInv|)))
(assert (forall ((r $Ref)) (!
  (and
    (=>
      (Set_in r ($FVF.domain_next (sm@35@00 s@$ g@2@00 root@3@00)))
      (and
        (Set_in (inv@33@00 s@$ g@2@00 root@3@00 r) g@2@00)
        (img@34@00 s@$ g@2@00 root@3@00 r)))
    (=>
      (and
        (Set_in (inv@33@00 s@$ g@2@00 root@3@00 r) g@2@00)
        (img@34@00 s@$ g@2@00 root@3@00 r))
      (Set_in r ($FVF.domain_next (sm@35@00 s@$ g@2@00 root@3@00)))))
  :pattern ((Set_in r ($FVF.domain_next (sm@35@00 s@$ g@2@00 root@3@00))))
  :qid |qp.fvfDomDef8|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and
        (Set_in (inv@33@00 s@$ g@2@00 root@3@00 r) g@2@00)
        (img@34@00 s@$ g@2@00 root@3@00 r))
      (and
        (img@28@00 s@$ g@2@00 root@3@00 r)
        (Set_in (inv@27@00 s@$ g@2@00 root@3@00 r) g@2@00)))
    (=
      ($FVF.lookup_next (sm@35@00 s@$ g@2@00 root@3@00) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second s@$))) r)))
  :pattern (($FVF.lookup_next (sm@35@00 s@$ g@2@00 root@3@00) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second s@$))) r))
  :qid |qp.fvfValDef6|)))
(assert (forall ((r $Ref)) (!
  ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second s@$))) r) r)
  :pattern (($FVF.lookup_next (sm@35@00 s@$ g@2@00 root@3@00) r))
  :qid |qp.fvfResTrgDef7|)))
; Nested auxiliary terms: non-globals (aux)
(assert (forall ((n@31@00 $Ref)) (!
  (and
    (=>
      (Set_in n@31@00 g@2@00)
      (and
        (Set_in n@31@00 g@2@00)
        (forall ((r $Ref)) (!
          (=>
            (Set_in (inv@33@00 s@$ g@2@00 root@3@00 r) g@2@00)
            ($FVF.loc_next ($FVF.lookup_next (sm@29@00 s@$ g@2@00 root@3@00) r) r))
          :pattern ((inv@33@00 s@$ g@2@00 root@3@00 r))
          :qid |quant-u-13687|))
        ($$%precondition ($SortWrappers.$FVF<next>To$Snap (sm@35@00 s@$ g@2@00 root@3@00)) g@2@00)))
    (or (not (Set_in n@31@00 g@2@00)) (Set_in n@31@00 g@2@00)))
  :pattern ((exists_path<Bool> ($$ ($SortWrappers.$FVF<next>To$Snap (sm@35@00 s@$ g@2@00 root@3@00)) g@2@00) root@3@00 n@31@00))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/graphs/static/tests/lists/framing1.vpr@335@5@335@87-aux|)))
(assert (=
  result@4@00
  (forall ((n@31@00 $Ref)) (!
    (=>
      (Set_in n@31@00 g@2@00)
      (exists_path<Bool> ($$ ($SortWrappers.$FVF<next>To$Snap (sm@35@00 s@$ g@2@00 root@3@00)) g@2@00) root@3@00 n@31@00))
    :pattern ((exists_path<Bool> ($$ ($SortWrappers.$FVF<next>To$Snap (sm@35@00 s@$ g@2@00 root@3@00)) g@2@00) root@3@00 n@31@00))
    :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/graphs/static/tests/lists/framing1.vpr@335@5@335@87|))))
(pop) ; 1
(assert (forall ((s@$ $Snap) (g@2@00 Set<$Ref>) (root@3@00 $Ref)) (!
  (and
    (forall ((n$0@25@00 $Ref)) (!
      (=>
        (Set_in n$0@25@00 g@2@00)
        (and
          (= (inv@27@00 s@$ g@2@00 root@3@00 n$0@25@00) n$0@25@00)
          (img@28@00 s@$ g@2@00 root@3@00 n$0@25@00)))
      :pattern (($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second s@$))) n$0@25@00) n$0@25@00))
      :qid |quant-u-13684|))
    (forall ((r $Ref)) (!
      (=>
        (and
          (img@28@00 s@$ g@2@00 root@3@00 r)
          (Set_in (inv@27@00 s@$ g@2@00 root@3@00 r) g@2@00))
        (= (inv@27@00 s@$ g@2@00 root@3@00 r) r))
      :pattern ((inv@27@00 s@$ g@2@00 root@3@00 r))
      :qid |next-fctOfInv|))
    (forall ((n@32@00 $Ref)) (!
      (=>
        (Set_in n@32@00 g@2@00)
        (and
          (= (inv@33@00 s@$ g@2@00 root@3@00 n@32@00) n@32@00)
          (img@34@00 s@$ g@2@00 root@3@00 n@32@00)))
      :pattern ((Set_in n@32@00 g@2@00))
      :pattern ((inv@33@00 s@$ g@2@00 root@3@00 n@32@00))
      :pattern ((img@34@00 s@$ g@2@00 root@3@00 n@32@00))
      :qid |next-invOfFct|))
    (forall ((r $Ref)) (!
      (=>
        (and
          (img@34@00 s@$ g@2@00 root@3@00 r)
          (Set_in (inv@33@00 s@$ g@2@00 root@3@00 r) g@2@00))
        (= (inv@33@00 s@$ g@2@00 root@3@00 r) r))
      :pattern ((inv@33@00 s@$ g@2@00 root@3@00 r))
      :qid |next-fctOfInv|))
    (forall ((r $Ref)) (!
      true
      :pattern (($FVF.lookup_next (sm@26@00 s@$ g@2@00 root@3@00) r))
      :qid |qp.fvfResTrgDef3|))
    (forall ((r $Ref)) (!
      (=>
        (and
          (img@28@00 s@$ g@2@00 root@3@00 r)
          (Set_in (inv@27@00 s@$ g@2@00 root@3@00 r) g@2@00))
        (=
          ($FVF.lookup_next (sm@29@00 s@$ g@2@00 root@3@00) r)
          ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second s@$))) r)))
      :pattern (($FVF.lookup_next (sm@29@00 s@$ g@2@00 root@3@00) r))
      :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second s@$))) r))
      :qid |qp.fvfValDef4|))
    (forall ((r $Ref)) (!
      ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second s@$))) r) r)
      :pattern (($FVF.lookup_next (sm@29@00 s@$ g@2@00 root@3@00) r))
      :qid |qp.fvfResTrgDef5|))
    (forall ((r $Ref)) (!
      (and
        (=>
          (Set_in r ($FVF.domain_next (sm@35@00 s@$ g@2@00 root@3@00)))
          (and
            (Set_in (inv@33@00 s@$ g@2@00 root@3@00 r) g@2@00)
            (img@34@00 s@$ g@2@00 root@3@00 r)))
        (=>
          (and
            (Set_in (inv@33@00 s@$ g@2@00 root@3@00 r) g@2@00)
            (img@34@00 s@$ g@2@00 root@3@00 r))
          (Set_in r ($FVF.domain_next (sm@35@00 s@$ g@2@00 root@3@00)))))
      :pattern ((Set_in r ($FVF.domain_next (sm@35@00 s@$ g@2@00 root@3@00))))
      :qid |qp.fvfDomDef8|))
    (forall ((r $Ref)) (!
      (=>
        (and
          (and
            (Set_in (inv@33@00 s@$ g@2@00 root@3@00 r) g@2@00)
            (img@34@00 s@$ g@2@00 root@3@00 r))
          (and
            (img@28@00 s@$ g@2@00 root@3@00 r)
            (Set_in (inv@27@00 s@$ g@2@00 root@3@00 r) g@2@00)))
        (=
          ($FVF.lookup_next (sm@35@00 s@$ g@2@00 root@3@00) r)
          ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second s@$))) r)))
      :pattern (($FVF.lookup_next (sm@35@00 s@$ g@2@00 root@3@00) r))
      :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second s@$))) r))
      :qid |qp.fvfValDef6|))
    (forall ((r $Ref)) (!
      ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second s@$))) r) r)
      :pattern (($FVF.lookup_next (sm@35@00 s@$ g@2@00 root@3@00) r))
      :qid |qp.fvfResTrgDef7|))
    (=>
      (is_global_root%precondition s@$ g@2@00 root@3@00)
      (=
        (is_global_root s@$ g@2@00 root@3@00)
        (forall ((n $Ref)) (!
          (=>
            (Set_in n g@2@00)
            (exists_path<Bool> ($$ ($SortWrappers.$FVF<next>To$Snap (sm@35@00 s@$ g@2@00 root@3@00)) g@2@00) root@3@00 n))
          :pattern ((exists_path<Bool> ($$ ($SortWrappers.$FVF<next>To$Snap (sm@35@00 s@$ g@2@00 root@3@00)) g@2@00) root@3@00 n))
          )))))
  :pattern ((is_global_root s@$ g@2@00 root@3@00))
  :qid |quant-u-13689|)))
(assert (forall ((s@$ $Snap) (g@2@00 Set<$Ref>) (root@3@00 $Ref)) (!
  (=>
    (is_global_root%precondition s@$ g@2@00 root@3@00)
    (forall ((n $Ref)) (!
      (=>
        (Set_in n g@2@00)
        ($$%precondition ($SortWrappers.$FVF<next>To$Snap (sm@35@00 s@$ g@2@00 root@3@00)) g@2@00))
      :pattern ((exists_path<Bool> ($$ ($SortWrappers.$FVF<next>To$Snap (sm@35@00 s@$ g@2@00 root@3@00)) g@2@00) root@3@00 n))
      )))
  :pattern ((is_global_root s@$ g@2@00 root@3@00))
  :qid |quant-u-13690|)))
; ---------- FUNCTION is_global_sroot----------
(declare-fun g@5@00 () Set<$Ref>)
(declare-fun roots@6@00 () Set<$Ref>)
(declare-fun result@7@00 () Bool)
; ----- Well-definedness of specifications -----
(push) ; 1
(assert (= s@$ ($Snap.combine ($Snap.first s@$) ($Snap.second s@$))))
(assert (= ($Snap.first s@$) $Snap.unit))
; [eval] !((null in g))
; [eval] (null in g)
(assert (not (Set_in $Ref.null g@5@00)))
(assert (=
  ($Snap.second s@$)
  ($Snap.combine
    ($Snap.first ($Snap.second s@$))
    ($Snap.second ($Snap.second s@$)))))
(declare-const n$0@36@00 $Ref)
(push) ; 2
; [eval] (n$0 in g)
(assert (Set_in n$0@36@00 g@5@00))
(declare-fun sm@37@00 ($Snap Set<$Ref> Set<$Ref>) $FVF<next>)
; Definitional axioms for snapshot map values
(pop) ; 2
(declare-fun inv@38@00 ($Snap Set<$Ref> Set<$Ref> $Ref) $Ref)
(declare-fun img@39@00 ($Snap Set<$Ref> Set<$Ref> $Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
; Check receiver injectivity
(push) ; 2
(assert (not (forall ((n$01@36@00 $Ref) (n$02@36@00 $Ref)) (!
  (=>
    (and
      (Set_in n$01@36@00 g@5@00)
      (Set_in n$02@36@00 g@5@00)
      (= n$01@36@00 n$02@36@00))
    (= n$01@36@00 n$02@36@00))
  
  :qid |next-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 2
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((n$0@36@00 $Ref)) (!
  (=>
    (Set_in n$0@36@00 g@5@00)
    (and
      (= (inv@38@00 s@$ g@5@00 roots@6@00 n$0@36@00) n$0@36@00)
      (img@39@00 s@$ g@5@00 roots@6@00 n$0@36@00)))
  :pattern (($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second s@$))) n$0@36@00) n$0@36@00))
  :qid |quant-u-13692|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@39@00 s@$ g@5@00 roots@6@00 r)
      (Set_in (inv@38@00 s@$ g@5@00 roots@6@00 r) g@5@00))
    (= (inv@38@00 s@$ g@5@00 roots@6@00 r) r))
  :pattern ((inv@38@00 s@$ g@5@00 roots@6@00 r))
  :qid |next-fctOfInv|)))
; Permissions are non-negative
; Permission implies non-null receiver
(assert (forall ((n$0@36@00 $Ref)) (!
  (=> (Set_in n$0@36@00 g@5@00) (not (= n$0@36@00 $Ref.null)))
  :pattern (($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second s@$))) n$0@36@00) n$0@36@00))
  :qid |next-permImpliesNonNull|)))
(declare-fun sm@40@00 ($Snap Set<$Ref> Set<$Ref>) $FVF<next>)
; Definitional axioms for snapshot map values
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@39@00 s@$ g@5@00 roots@6@00 r)
      (Set_in (inv@38@00 s@$ g@5@00 roots@6@00 r) g@5@00))
    (=
      ($FVF.lookup_next (sm@40@00 s@$ g@5@00 roots@6@00) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second s@$))) r)))
  :pattern (($FVF.lookup_next (sm@40@00 s@$ g@5@00 roots@6@00) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second s@$))) r))
  :qid |qp.fvfValDef10|)))
(assert (forall ((r $Ref)) (!
  ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second s@$))) r) r)
  :pattern (($FVF.lookup_next (sm@40@00 s@$ g@5@00 roots@6@00) r))
  :qid |qp.fvfResTrgDef11|)))
(assert (forall ((r $Ref)) (!
  (=>
    (Set_in (inv@38@00 s@$ g@5@00 roots@6@00 r) g@5@00)
    ($FVF.loc_next ($FVF.lookup_next (sm@40@00 s@$ g@5@00 roots@6@00) r) r))
  :pattern ((inv@38@00 s@$ g@5@00 roots@6@00 r))
  :qid |quant-u-13693|)))
(assert (=
  ($Snap.second ($Snap.second s@$))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second s@$)))
    ($Snap.second ($Snap.second ($Snap.second s@$))))))
(assert (= ($Snap.first ($Snap.second ($Snap.second s@$))) $Snap.unit))
; [eval] (forall n$1: Ref :: { (n$1.next in g) } { (n$1 in g), n$1.next } (n$1 in g) && n$1.next != null ==> (n$1.next in g))
(declare-const n$1@41@00 $Ref)
(push) ; 2
; [eval] (n$1 in g) && n$1.next != null ==> (n$1.next in g)
; [eval] (n$1 in g) && n$1.next != null
; [eval] (n$1 in g)
(push) ; 3
; [then-branch: 9 | !(n$1@41@00 in g@5@00) | live]
; [else-branch: 9 | n$1@41@00 in g@5@00 | live]
(push) ; 4
; [then-branch: 9 | !(n$1@41@00 in g@5@00)]
(assert (not (Set_in n$1@41@00 g@5@00)))
(pop) ; 4
(push) ; 4
; [else-branch: 9 | n$1@41@00 in g@5@00]
(assert (Set_in n$1@41@00 g@5@00))
; [eval] n$1.next != null
(assert (and
  (forall ((r $Ref)) (!
    (=>
      (and
        (img@39@00 s@$ g@5@00 roots@6@00 r)
        (Set_in (inv@38@00 s@$ g@5@00 roots@6@00 r) g@5@00))
      (=
        ($FVF.lookup_next (sm@40@00 s@$ g@5@00 roots@6@00) r)
        ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second s@$))) r)))
    :pattern (($FVF.lookup_next (sm@40@00 s@$ g@5@00 roots@6@00) r))
    :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second s@$))) r))
    :qid |qp.fvfValDef10|))
  (forall ((r $Ref)) (!
    ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second s@$))) r) r)
    :pattern (($FVF.lookup_next (sm@40@00 s@$ g@5@00 roots@6@00) r))
    :qid |qp.fvfResTrgDef11|))))
(assert ($FVF.loc_next ($FVF.lookup_next (sm@40@00 s@$ g@5@00 roots@6@00) n$1@41@00) n$1@41@00))
(push) ; 5
(assert (not (and
  (img@39@00 s@$ g@5@00 roots@6@00 n$1@41@00)
  (Set_in (inv@38@00 s@$ g@5@00 roots@6@00 n$1@41@00) g@5@00))))
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
    (and
      (img@39@00 s@$ g@5@00 roots@6@00 r)
      (Set_in (inv@38@00 s@$ g@5@00 roots@6@00 r) g@5@00))
    (=
      ($FVF.lookup_next (sm@40@00 s@$ g@5@00 roots@6@00) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second s@$))) r)))
  :pattern (($FVF.lookup_next (sm@40@00 s@$ g@5@00 roots@6@00) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second s@$))) r))
  :qid |qp.fvfValDef10|)))
(assert (forall ((r $Ref)) (!
  ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second s@$))) r) r)
  :pattern (($FVF.lookup_next (sm@40@00 s@$ g@5@00 roots@6@00) r))
  :qid |qp.fvfResTrgDef11|)))
(assert (=>
  (Set_in n$1@41@00 g@5@00)
  (and
    (Set_in n$1@41@00 g@5@00)
    ($FVF.loc_next ($FVF.lookup_next (sm@40@00 s@$ g@5@00 roots@6@00) n$1@41@00) n$1@41@00))))
(assert (or (Set_in n$1@41@00 g@5@00) (not (Set_in n$1@41@00 g@5@00))))
(push) ; 3
; [then-branch: 10 | n$1@41@00 in g@5@00 && Lookup(next, sm@40@00(s@$, g@5@00, roots@6@00), n$1@41@00) != Null | live]
; [else-branch: 10 | !(n$1@41@00 in g@5@00 && Lookup(next, sm@40@00(s@$, g@5@00, roots@6@00), n$1@41@00) != Null) | live]
(push) ; 4
; [then-branch: 10 | n$1@41@00 in g@5@00 && Lookup(next, sm@40@00(s@$, g@5@00, roots@6@00), n$1@41@00) != Null]
(assert (and
  (Set_in n$1@41@00 g@5@00)
  (not
    (= ($FVF.lookup_next (sm@40@00 s@$ g@5@00 roots@6@00) n$1@41@00) $Ref.null))))
; [eval] (n$1.next in g)
(assert (and
  (forall ((r $Ref)) (!
    (=>
      (and
        (img@39@00 s@$ g@5@00 roots@6@00 r)
        (Set_in (inv@38@00 s@$ g@5@00 roots@6@00 r) g@5@00))
      (=
        ($FVF.lookup_next (sm@40@00 s@$ g@5@00 roots@6@00) r)
        ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second s@$))) r)))
    :pattern (($FVF.lookup_next (sm@40@00 s@$ g@5@00 roots@6@00) r))
    :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second s@$))) r))
    :qid |qp.fvfValDef10|))
  (forall ((r $Ref)) (!
    ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second s@$))) r) r)
    :pattern (($FVF.lookup_next (sm@40@00 s@$ g@5@00 roots@6@00) r))
    :qid |qp.fvfResTrgDef11|))))
(assert ($FVF.loc_next ($FVF.lookup_next (sm@40@00 s@$ g@5@00 roots@6@00) n$1@41@00) n$1@41@00))
(push) ; 5
(assert (not (and
  (img@39@00 s@$ g@5@00 roots@6@00 n$1@41@00)
  (Set_in (inv@38@00 s@$ g@5@00 roots@6@00 n$1@41@00) g@5@00))))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(pop) ; 4
(push) ; 4
; [else-branch: 10 | !(n$1@41@00 in g@5@00 && Lookup(next, sm@40@00(s@$, g@5@00, roots@6@00), n$1@41@00) != Null)]
(assert (not
  (and
    (Set_in n$1@41@00 g@5@00)
    (not
      (= ($FVF.lookup_next (sm@40@00 s@$ g@5@00 roots@6@00) n$1@41@00) $Ref.null)))))
(pop) ; 4
(pop) ; 3
; Joined path conditions
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@39@00 s@$ g@5@00 roots@6@00 r)
      (Set_in (inv@38@00 s@$ g@5@00 roots@6@00 r) g@5@00))
    (=
      ($FVF.lookup_next (sm@40@00 s@$ g@5@00 roots@6@00) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second s@$))) r)))
  :pattern (($FVF.lookup_next (sm@40@00 s@$ g@5@00 roots@6@00) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second s@$))) r))
  :qid |qp.fvfValDef10|)))
(assert (forall ((r $Ref)) (!
  ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second s@$))) r) r)
  :pattern (($FVF.lookup_next (sm@40@00 s@$ g@5@00 roots@6@00) r))
  :qid |qp.fvfResTrgDef11|)))
(assert (=>
  (and
    (Set_in n$1@41@00 g@5@00)
    (not
      (= ($FVF.lookup_next (sm@40@00 s@$ g@5@00 roots@6@00) n$1@41@00) $Ref.null)))
  (and
    (Set_in n$1@41@00 g@5@00)
    (not
      (= ($FVF.lookup_next (sm@40@00 s@$ g@5@00 roots@6@00) n$1@41@00) $Ref.null))
    ($FVF.loc_next ($FVF.lookup_next (sm@40@00 s@$ g@5@00 roots@6@00) n$1@41@00) n$1@41@00))))
; Joined path conditions
(assert (or
  (not
    (and
      (Set_in n$1@41@00 g@5@00)
      (not
        (=
          ($FVF.lookup_next (sm@40@00 s@$ g@5@00 roots@6@00) n$1@41@00)
          $Ref.null))))
  (and
    (Set_in n$1@41@00 g@5@00)
    (not
      (= ($FVF.lookup_next (sm@40@00 s@$ g@5@00 roots@6@00) n$1@41@00) $Ref.null)))))
; Definitional axioms for snapshot map values
(pop) ; 2
; Nested auxiliary terms: globals (aux)
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@39@00 s@$ g@5@00 roots@6@00 r)
      (Set_in (inv@38@00 s@$ g@5@00 roots@6@00 r) g@5@00))
    (=
      ($FVF.lookup_next (sm@40@00 s@$ g@5@00 roots@6@00) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second s@$))) r)))
  :pattern (($FVF.lookup_next (sm@40@00 s@$ g@5@00 roots@6@00) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second s@$))) r))
  :qid |qp.fvfValDef10|)))
(assert (forall ((r $Ref)) (!
  ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second s@$))) r) r)
  :pattern (($FVF.lookup_next (sm@40@00 s@$ g@5@00 roots@6@00) r))
  :qid |qp.fvfResTrgDef11|)))
; Nested auxiliary terms: non-globals (aux)
(assert (forall ((n$1@41@00 $Ref)) (!
  (and
    (=>
      (Set_in n$1@41@00 g@5@00)
      (and
        (Set_in n$1@41@00 g@5@00)
        ($FVF.loc_next ($FVF.lookup_next (sm@40@00 s@$ g@5@00 roots@6@00) n$1@41@00) n$1@41@00)))
    (or (Set_in n$1@41@00 g@5@00) (not (Set_in n$1@41@00 g@5@00)))
    (=>
      (and
        (Set_in n$1@41@00 g@5@00)
        (not
          (=
            ($FVF.lookup_next (sm@40@00 s@$ g@5@00 roots@6@00) n$1@41@00)
            $Ref.null)))
      (and
        (Set_in n$1@41@00 g@5@00)
        (not
          (=
            ($FVF.lookup_next (sm@40@00 s@$ g@5@00 roots@6@00) n$1@41@00)
            $Ref.null))
        ($FVF.loc_next ($FVF.lookup_next (sm@40@00 s@$ g@5@00 roots@6@00) n$1@41@00) n$1@41@00)))
    (or
      (not
        (and
          (Set_in n$1@41@00 g@5@00)
          (not
            (=
              ($FVF.lookup_next (sm@40@00 s@$ g@5@00 roots@6@00) n$1@41@00)
              $Ref.null))))
      (and
        (Set_in n$1@41@00 g@5@00)
        (not
          (=
            ($FVF.lookup_next (sm@40@00 s@$ g@5@00 roots@6@00) n$1@41@00)
            $Ref.null)))))
  :pattern ((Set_in ($FVF.lookup_next (sm@40@00 s@$ g@5@00 roots@6@00) n$1@41@00) g@5@00))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/graphs/static/tests/lists/framing1.vpr@339@14@339@22-aux|)))
(assert (forall ((n$1@41@00 $Ref)) (!
  (and
    (=>
      (Set_in n$1@41@00 g@5@00)
      (and
        (Set_in n$1@41@00 g@5@00)
        ($FVF.loc_next ($FVF.lookup_next (sm@40@00 s@$ g@5@00 roots@6@00) n$1@41@00) n$1@41@00)))
    (or (Set_in n$1@41@00 g@5@00) (not (Set_in n$1@41@00 g@5@00)))
    (=>
      (and
        (Set_in n$1@41@00 g@5@00)
        (not
          (=
            ($FVF.lookup_next (sm@40@00 s@$ g@5@00 roots@6@00) n$1@41@00)
            $Ref.null)))
      (and
        (Set_in n$1@41@00 g@5@00)
        (not
          (=
            ($FVF.lookup_next (sm@40@00 s@$ g@5@00 roots@6@00) n$1@41@00)
            $Ref.null))
        ($FVF.loc_next ($FVF.lookup_next (sm@40@00 s@$ g@5@00 roots@6@00) n$1@41@00) n$1@41@00)))
    (or
      (not
        (and
          (Set_in n$1@41@00 g@5@00)
          (not
            (=
              ($FVF.lookup_next (sm@40@00 s@$ g@5@00 roots@6@00) n$1@41@00)
              $Ref.null))))
      (and
        (Set_in n$1@41@00 g@5@00)
        (not
          (=
            ($FVF.lookup_next (sm@40@00 s@$ g@5@00 roots@6@00) n$1@41@00)
            $Ref.null)))))
  :pattern ((Set_in n$1@41@00 g@5@00) ($FVF.loc_next ($FVF.lookup_next (sm@40@00 s@$ g@5@00 roots@6@00) n$1@41@00) n$1@41@00))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/graphs/static/tests/lists/framing1.vpr@339@14@339@22-aux|)))
(assert (forall ((n$1@41@00 $Ref)) (!
  (=>
    (and
      (Set_in n$1@41@00 g@5@00)
      (not
        (=
          ($FVF.lookup_next (sm@40@00 s@$ g@5@00 roots@6@00) n$1@41@00)
          $Ref.null)))
    (Set_in ($FVF.lookup_next (sm@40@00 s@$ g@5@00 roots@6@00) n$1@41@00) g@5@00))
  :pattern ((Set_in ($FVF.lookup_next (sm@40@00 s@$ g@5@00 roots@6@00) n$1@41@00) g@5@00))
  :pattern ((Set_in n$1@41@00 g@5@00) ($FVF.loc_next ($FVF.lookup_next (sm@40@00 s@$ g@5@00 roots@6@00) n$1@41@00) n$1@41@00))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/graphs/static/tests/lists/framing1.vpr@339@14@339@22|)))
(assert (= ($Snap.second ($Snap.second ($Snap.second s@$))) $Snap.unit))
; [eval] (roots subset g)
(assert (Set_subset roots@6@00 g@5@00))
(pop) ; 1
(assert (forall ((s@$ $Snap) (g@5@00 Set<$Ref>) (roots@6@00 Set<$Ref>)) (!
  (=
    (is_global_sroot%limited s@$ g@5@00 roots@6@00)
    (is_global_sroot s@$ g@5@00 roots@6@00))
  :pattern ((is_global_sroot s@$ g@5@00 roots@6@00))
  :qid |quant-u-13670|)))
(assert (forall ((s@$ $Snap) (g@5@00 Set<$Ref>) (roots@6@00 Set<$Ref>)) (!
  (is_global_sroot%stateless g@5@00 roots@6@00)
  :pattern ((is_global_sroot%limited s@$ g@5@00 roots@6@00))
  :qid |quant-u-13671|)))
; ----- Verification of function body and postcondition -----
(push) ; 1
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@39@00 s@$ g@5@00 roots@6@00 r)
      (Set_in (inv@38@00 s@$ g@5@00 roots@6@00 r) g@5@00))
    (= (inv@38@00 s@$ g@5@00 roots@6@00 r) r))
  :pattern ((inv@38@00 s@$ g@5@00 roots@6@00 r))
  :qid |next-fctOfInv|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@39@00 s@$ g@5@00 roots@6@00 r)
      (Set_in (inv@38@00 s@$ g@5@00 roots@6@00 r) g@5@00))
    (=
      ($FVF.lookup_next (sm@40@00 s@$ g@5@00 roots@6@00) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second s@$))) r)))
  :pattern (($FVF.lookup_next (sm@40@00 s@$ g@5@00 roots@6@00) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second s@$))) r))
  :qid |qp.fvfValDef10|)))
(assert (forall ((r $Ref)) (!
  ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second s@$))) r) r)
  :pattern (($FVF.lookup_next (sm@40@00 s@$ g@5@00 roots@6@00) r))
  :qid |qp.fvfResTrgDef11|)))
(assert (forall ((n$0@36@00 $Ref)) (!
  (=>
    (Set_in n$0@36@00 g@5@00)
    (and
      (= (inv@38@00 s@$ g@5@00 roots@6@00 n$0@36@00) n$0@36@00)
      (img@39@00 s@$ g@5@00 roots@6@00 n$0@36@00)))
  :pattern (($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second s@$))) n$0@36@00) n$0@36@00))
  :qid |quant-u-13692|)))
(assert (forall ((n$0@36@00 $Ref)) (!
  (=> (Set_in n$0@36@00 g@5@00) (not (= n$0@36@00 $Ref.null)))
  :pattern (($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second s@$))) n$0@36@00) n$0@36@00))
  :qid |next-permImpliesNonNull|)))
(assert (forall ((r $Ref)) (!
  (=>
    (Set_in (inv@38@00 s@$ g@5@00 roots@6@00 r) g@5@00)
    ($FVF.loc_next ($FVF.lookup_next (sm@40@00 s@$ g@5@00 roots@6@00) r) r))
  :pattern ((inv@38@00 s@$ g@5@00 roots@6@00 r))
  :qid |quant-u-13693|)))
(assert (=
  ($Snap.second ($Snap.second s@$))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second s@$)))
    ($Snap.second ($Snap.second ($Snap.second s@$))))))
(assert (= ($Snap.first ($Snap.second ($Snap.second s@$))) $Snap.unit))
(assert (forall ((n$1@41@00 $Ref)) (!
  (and
    (=>
      (Set_in n$1@41@00 g@5@00)
      (and
        (Set_in n$1@41@00 g@5@00)
        ($FVF.loc_next ($FVF.lookup_next (sm@40@00 s@$ g@5@00 roots@6@00) n$1@41@00) n$1@41@00)))
    (or (Set_in n$1@41@00 g@5@00) (not (Set_in n$1@41@00 g@5@00)))
    (=>
      (and
        (Set_in n$1@41@00 g@5@00)
        (not
          (=
            ($FVF.lookup_next (sm@40@00 s@$ g@5@00 roots@6@00) n$1@41@00)
            $Ref.null)))
      (and
        (Set_in n$1@41@00 g@5@00)
        (not
          (=
            ($FVF.lookup_next (sm@40@00 s@$ g@5@00 roots@6@00) n$1@41@00)
            $Ref.null))
        ($FVF.loc_next ($FVF.lookup_next (sm@40@00 s@$ g@5@00 roots@6@00) n$1@41@00) n$1@41@00)))
    (or
      (not
        (and
          (Set_in n$1@41@00 g@5@00)
          (not
            (=
              ($FVF.lookup_next (sm@40@00 s@$ g@5@00 roots@6@00) n$1@41@00)
              $Ref.null))))
      (and
        (Set_in n$1@41@00 g@5@00)
        (not
          (=
            ($FVF.lookup_next (sm@40@00 s@$ g@5@00 roots@6@00) n$1@41@00)
            $Ref.null)))))
  :pattern ((Set_in ($FVF.lookup_next (sm@40@00 s@$ g@5@00 roots@6@00) n$1@41@00) g@5@00))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/graphs/static/tests/lists/framing1.vpr@339@14@339@22-aux|)))
(assert (forall ((n$1@41@00 $Ref)) (!
  (and
    (=>
      (Set_in n$1@41@00 g@5@00)
      (and
        (Set_in n$1@41@00 g@5@00)
        ($FVF.loc_next ($FVF.lookup_next (sm@40@00 s@$ g@5@00 roots@6@00) n$1@41@00) n$1@41@00)))
    (or (Set_in n$1@41@00 g@5@00) (not (Set_in n$1@41@00 g@5@00)))
    (=>
      (and
        (Set_in n$1@41@00 g@5@00)
        (not
          (=
            ($FVF.lookup_next (sm@40@00 s@$ g@5@00 roots@6@00) n$1@41@00)
            $Ref.null)))
      (and
        (Set_in n$1@41@00 g@5@00)
        (not
          (=
            ($FVF.lookup_next (sm@40@00 s@$ g@5@00 roots@6@00) n$1@41@00)
            $Ref.null))
        ($FVF.loc_next ($FVF.lookup_next (sm@40@00 s@$ g@5@00 roots@6@00) n$1@41@00) n$1@41@00)))
    (or
      (not
        (and
          (Set_in n$1@41@00 g@5@00)
          (not
            (=
              ($FVF.lookup_next (sm@40@00 s@$ g@5@00 roots@6@00) n$1@41@00)
              $Ref.null))))
      (and
        (Set_in n$1@41@00 g@5@00)
        (not
          (=
            ($FVF.lookup_next (sm@40@00 s@$ g@5@00 roots@6@00) n$1@41@00)
            $Ref.null)))))
  :pattern ((Set_in n$1@41@00 g@5@00) ($FVF.loc_next ($FVF.lookup_next (sm@40@00 s@$ g@5@00 roots@6@00) n$1@41@00) n$1@41@00))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/graphs/static/tests/lists/framing1.vpr@339@14@339@22-aux|)))
(assert (forall ((n$1@41@00 $Ref)) (!
  (=>
    (and
      (Set_in n$1@41@00 g@5@00)
      (not
        (=
          ($FVF.lookup_next (sm@40@00 s@$ g@5@00 roots@6@00) n$1@41@00)
          $Ref.null)))
    (Set_in ($FVF.lookup_next (sm@40@00 s@$ g@5@00 roots@6@00) n$1@41@00) g@5@00))
  :pattern ((Set_in ($FVF.lookup_next (sm@40@00 s@$ g@5@00 roots@6@00) n$1@41@00) g@5@00))
  :pattern ((Set_in n$1@41@00 g@5@00) ($FVF.loc_next ($FVF.lookup_next (sm@40@00 s@$ g@5@00 roots@6@00) n$1@41@00) n$1@41@00))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/graphs/static/tests/lists/framing1.vpr@339@14@339@22|)))
(assert (= ($Snap.second ($Snap.second ($Snap.second s@$))) $Snap.unit))
(assert (Set_subset roots@6@00 g@5@00))
(assert (= s@$ ($Snap.combine ($Snap.first s@$) ($Snap.second s@$))))
(assert (= ($Snap.first s@$) $Snap.unit))
(assert (not (Set_in $Ref.null g@5@00)))
(assert (=
  ($Snap.second s@$)
  ($Snap.combine
    ($Snap.first ($Snap.second s@$))
    ($Snap.second ($Snap.second s@$)))))
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
; [eval] (forall n: Ref :: { exists_spath($$(g), roots, n) } (n in g) ==> exists_spath($$(g), roots, n))
(declare-const n@42@00 $Ref)
(set-option :timeout 0)
(push) ; 2
; [eval] (n in g) ==> exists_spath($$(g), roots, n)
; [eval] (n in g)
(push) ; 3
; [then-branch: 11 | n@42@00 in g@5@00 | live]
; [else-branch: 11 | !(n@42@00 in g@5@00) | live]
(push) ; 4
; [then-branch: 11 | n@42@00 in g@5@00]
(assert (Set_in n@42@00 g@5@00))
; [eval] exists_spath($$(g), roots, n)
; [eval] $$(g)
(push) ; 5
(declare-const n@43@00 $Ref)
(push) ; 6
; [eval] (n in refs)
(assert (Set_in n@43@00 g@5@00))
(pop) ; 6
(declare-fun inv@44@00 ($Snap Set<$Ref> Set<$Ref> $Ref) $Ref)
(declare-fun img@45@00 ($Snap Set<$Ref> Set<$Ref> $Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
; Definitional axioms for snapshot map domain
; Definitional axioms for snapshot map values
; Check receiver injectivity
(push) ; 6
(assert (not (forall ((n1@43@00 $Ref) (n2@43@00 $Ref)) (!
  (=>
    (and
      (and
        (Set_in n1@43@00 g@5@00)
        ($FVF.loc_next ($FVF.lookup_next (sm@40@00 s@$ g@5@00 roots@6@00) n1@43@00) n1@43@00))
      (and
        (Set_in n2@43@00 g@5@00)
        ($FVF.loc_next ($FVF.lookup_next (sm@40@00 s@$ g@5@00 roots@6@00) n2@43@00) n2@43@00))
      (= n1@43@00 n2@43@00))
    (= n1@43@00 n2@43@00))
  
  :qid |next-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((n@43@00 $Ref)) (!
  (=>
    (Set_in n@43@00 g@5@00)
    (and
      (= (inv@44@00 s@$ g@5@00 roots@6@00 n@43@00) n@43@00)
      (img@45@00 s@$ g@5@00 roots@6@00 n@43@00)))
  :pattern ((Set_in n@43@00 g@5@00))
  :pattern ((inv@44@00 s@$ g@5@00 roots@6@00 n@43@00))
  :pattern ((img@45@00 s@$ g@5@00 roots@6@00 n@43@00))
  :qid |next-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@45@00 s@$ g@5@00 roots@6@00 r)
      (Set_in (inv@44@00 s@$ g@5@00 roots@6@00 r) g@5@00))
    (= (inv@44@00 s@$ g@5@00 roots@6@00 r) r))
  :pattern ((inv@44@00 s@$ g@5@00 roots@6@00 r))
  :qid |next-fctOfInv|)))
(assert (forall ((r $Ref)) (!
  (=>
    (Set_in (inv@44@00 s@$ g@5@00 roots@6@00 r) g@5@00)
    ($FVF.loc_next ($FVF.lookup_next (sm@40@00 s@$ g@5@00 roots@6@00) r) r))
  :pattern ((inv@44@00 s@$ g@5@00 roots@6@00 r))
  :qid |quant-u-13695|)))
(push) ; 6
(assert (not (forall ((r $Ref)) (!
  (=>
    (and
      (Set_in (inv@44@00 s@$ g@5@00 roots@6@00 r) g@5@00)
      (img@45@00 s@$ g@5@00 roots@6@00 r)
      (= r (inv@44@00 s@$ g@5@00 roots@6@00 r)))
    (>
      (ite
        (and
          (img@39@00 s@$ g@5@00 roots@6@00 r)
          (Set_in (inv@38@00 s@$ g@5@00 roots@6@00 r) g@5@00))
        $Perm.Write
        $Perm.No)
      $Perm.No))
  
  :qid |quant-u-13696|))))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(declare-fun sm@46@00 ($Snap Set<$Ref> Set<$Ref>) $FVF<next>)
; Definitional axioms for snapshot map domain
(assert (forall ((r $Ref)) (!
  (and
    (=>
      (Set_in r ($FVF.domain_next (sm@46@00 s@$ g@5@00 roots@6@00)))
      (and
        (Set_in (inv@44@00 s@$ g@5@00 roots@6@00 r) g@5@00)
        (img@45@00 s@$ g@5@00 roots@6@00 r)))
    (=>
      (and
        (Set_in (inv@44@00 s@$ g@5@00 roots@6@00 r) g@5@00)
        (img@45@00 s@$ g@5@00 roots@6@00 r))
      (Set_in r ($FVF.domain_next (sm@46@00 s@$ g@5@00 roots@6@00)))))
  :pattern ((Set_in r ($FVF.domain_next (sm@46@00 s@$ g@5@00 roots@6@00))))
  :qid |qp.fvfDomDef14|)))
; Definitional axioms for snapshot map values
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and
        (Set_in (inv@44@00 s@$ g@5@00 roots@6@00 r) g@5@00)
        (img@45@00 s@$ g@5@00 roots@6@00 r))
      (and
        (img@39@00 s@$ g@5@00 roots@6@00 r)
        (Set_in (inv@38@00 s@$ g@5@00 roots@6@00 r) g@5@00)))
    (=
      ($FVF.lookup_next (sm@46@00 s@$ g@5@00 roots@6@00) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second s@$))) r)))
  :pattern (($FVF.lookup_next (sm@46@00 s@$ g@5@00 roots@6@00) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second s@$))) r))
  :qid |qp.fvfValDef12|)))
(assert (forall ((r $Ref)) (!
  ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second s@$))) r) r)
  :pattern (($FVF.lookup_next (sm@46@00 s@$ g@5@00 roots@6@00) r))
  :qid |qp.fvfResTrgDef13|)))
(assert ($$%precondition ($SortWrappers.$FVF<next>To$Snap (sm@46@00 s@$ g@5@00 roots@6@00)) g@5@00))
(pop) ; 5
; Joined path conditions
(assert (forall ((n@43@00 $Ref)) (!
  (=>
    (Set_in n@43@00 g@5@00)
    (and
      (= (inv@44@00 s@$ g@5@00 roots@6@00 n@43@00) n@43@00)
      (img@45@00 s@$ g@5@00 roots@6@00 n@43@00)))
  :pattern ((Set_in n@43@00 g@5@00))
  :pattern ((inv@44@00 s@$ g@5@00 roots@6@00 n@43@00))
  :pattern ((img@45@00 s@$ g@5@00 roots@6@00 n@43@00))
  :qid |next-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@45@00 s@$ g@5@00 roots@6@00 r)
      (Set_in (inv@44@00 s@$ g@5@00 roots@6@00 r) g@5@00))
    (= (inv@44@00 s@$ g@5@00 roots@6@00 r) r))
  :pattern ((inv@44@00 s@$ g@5@00 roots@6@00 r))
  :qid |next-fctOfInv|)))
(assert (forall ((r $Ref)) (!
  (and
    (=>
      (Set_in r ($FVF.domain_next (sm@46@00 s@$ g@5@00 roots@6@00)))
      (and
        (Set_in (inv@44@00 s@$ g@5@00 roots@6@00 r) g@5@00)
        (img@45@00 s@$ g@5@00 roots@6@00 r)))
    (=>
      (and
        (Set_in (inv@44@00 s@$ g@5@00 roots@6@00 r) g@5@00)
        (img@45@00 s@$ g@5@00 roots@6@00 r))
      (Set_in r ($FVF.domain_next (sm@46@00 s@$ g@5@00 roots@6@00)))))
  :pattern ((Set_in r ($FVF.domain_next (sm@46@00 s@$ g@5@00 roots@6@00))))
  :qid |qp.fvfDomDef14|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and
        (Set_in (inv@44@00 s@$ g@5@00 roots@6@00 r) g@5@00)
        (img@45@00 s@$ g@5@00 roots@6@00 r))
      (and
        (img@39@00 s@$ g@5@00 roots@6@00 r)
        (Set_in (inv@38@00 s@$ g@5@00 roots@6@00 r) g@5@00)))
    (=
      ($FVF.lookup_next (sm@46@00 s@$ g@5@00 roots@6@00) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second s@$))) r)))
  :pattern (($FVF.lookup_next (sm@46@00 s@$ g@5@00 roots@6@00) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second s@$))) r))
  :qid |qp.fvfValDef12|)))
(assert (forall ((r $Ref)) (!
  ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second s@$))) r) r)
  :pattern (($FVF.lookup_next (sm@46@00 s@$ g@5@00 roots@6@00) r))
  :qid |qp.fvfResTrgDef13|)))
(assert (and
  (forall ((r $Ref)) (!
    (=>
      (Set_in (inv@44@00 s@$ g@5@00 roots@6@00 r) g@5@00)
      ($FVF.loc_next ($FVF.lookup_next (sm@40@00 s@$ g@5@00 roots@6@00) r) r))
    :pattern ((inv@44@00 s@$ g@5@00 roots@6@00 r))
    :qid |quant-u-13695|))
  ($$%precondition ($SortWrappers.$FVF<next>To$Snap (sm@46@00 s@$ g@5@00 roots@6@00)) g@5@00)))
(pop) ; 4
(push) ; 4
; [else-branch: 11 | !(n@42@00 in g@5@00)]
(assert (not (Set_in n@42@00 g@5@00)))
(pop) ; 4
(pop) ; 3
; Joined path conditions
(assert (forall ((n@43@00 $Ref)) (!
  (=>
    (Set_in n@43@00 g@5@00)
    (and
      (= (inv@44@00 s@$ g@5@00 roots@6@00 n@43@00) n@43@00)
      (img@45@00 s@$ g@5@00 roots@6@00 n@43@00)))
  :pattern ((Set_in n@43@00 g@5@00))
  :pattern ((inv@44@00 s@$ g@5@00 roots@6@00 n@43@00))
  :pattern ((img@45@00 s@$ g@5@00 roots@6@00 n@43@00))
  :qid |next-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@45@00 s@$ g@5@00 roots@6@00 r)
      (Set_in (inv@44@00 s@$ g@5@00 roots@6@00 r) g@5@00))
    (= (inv@44@00 s@$ g@5@00 roots@6@00 r) r))
  :pattern ((inv@44@00 s@$ g@5@00 roots@6@00 r))
  :qid |next-fctOfInv|)))
(assert (forall ((r $Ref)) (!
  (and
    (=>
      (Set_in r ($FVF.domain_next (sm@46@00 s@$ g@5@00 roots@6@00)))
      (and
        (Set_in (inv@44@00 s@$ g@5@00 roots@6@00 r) g@5@00)
        (img@45@00 s@$ g@5@00 roots@6@00 r)))
    (=>
      (and
        (Set_in (inv@44@00 s@$ g@5@00 roots@6@00 r) g@5@00)
        (img@45@00 s@$ g@5@00 roots@6@00 r))
      (Set_in r ($FVF.domain_next (sm@46@00 s@$ g@5@00 roots@6@00)))))
  :pattern ((Set_in r ($FVF.domain_next (sm@46@00 s@$ g@5@00 roots@6@00))))
  :qid |qp.fvfDomDef14|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and
        (Set_in (inv@44@00 s@$ g@5@00 roots@6@00 r) g@5@00)
        (img@45@00 s@$ g@5@00 roots@6@00 r))
      (and
        (img@39@00 s@$ g@5@00 roots@6@00 r)
        (Set_in (inv@38@00 s@$ g@5@00 roots@6@00 r) g@5@00)))
    (=
      ($FVF.lookup_next (sm@46@00 s@$ g@5@00 roots@6@00) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second s@$))) r)))
  :pattern (($FVF.lookup_next (sm@46@00 s@$ g@5@00 roots@6@00) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second s@$))) r))
  :qid |qp.fvfValDef12|)))
(assert (forall ((r $Ref)) (!
  ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second s@$))) r) r)
  :pattern (($FVF.lookup_next (sm@46@00 s@$ g@5@00 roots@6@00) r))
  :qid |qp.fvfResTrgDef13|)))
(assert (=>
  (Set_in n@42@00 g@5@00)
  (and
    (Set_in n@42@00 g@5@00)
    (forall ((r $Ref)) (!
      (=>
        (Set_in (inv@44@00 s@$ g@5@00 roots@6@00 r) g@5@00)
        ($FVF.loc_next ($FVF.lookup_next (sm@40@00 s@$ g@5@00 roots@6@00) r) r))
      :pattern ((inv@44@00 s@$ g@5@00 roots@6@00 r))
      :qid |quant-u-13695|))
    ($$%precondition ($SortWrappers.$FVF<next>To$Snap (sm@46@00 s@$ g@5@00 roots@6@00)) g@5@00))))
; Joined path conditions
(assert (or (not (Set_in n@42@00 g@5@00)) (Set_in n@42@00 g@5@00)))
(pop) ; 2
; Nested auxiliary terms: globals (aux)
(assert (forall ((n@43@00 $Ref)) (!
  (=>
    (Set_in n@43@00 g@5@00)
    (and
      (= (inv@44@00 s@$ g@5@00 roots@6@00 n@43@00) n@43@00)
      (img@45@00 s@$ g@5@00 roots@6@00 n@43@00)))
  :pattern ((Set_in n@43@00 g@5@00))
  :pattern ((inv@44@00 s@$ g@5@00 roots@6@00 n@43@00))
  :pattern ((img@45@00 s@$ g@5@00 roots@6@00 n@43@00))
  :qid |next-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@45@00 s@$ g@5@00 roots@6@00 r)
      (Set_in (inv@44@00 s@$ g@5@00 roots@6@00 r) g@5@00))
    (= (inv@44@00 s@$ g@5@00 roots@6@00 r) r))
  :pattern ((inv@44@00 s@$ g@5@00 roots@6@00 r))
  :qid |next-fctOfInv|)))
(assert (forall ((r $Ref)) (!
  (and
    (=>
      (Set_in r ($FVF.domain_next (sm@46@00 s@$ g@5@00 roots@6@00)))
      (and
        (Set_in (inv@44@00 s@$ g@5@00 roots@6@00 r) g@5@00)
        (img@45@00 s@$ g@5@00 roots@6@00 r)))
    (=>
      (and
        (Set_in (inv@44@00 s@$ g@5@00 roots@6@00 r) g@5@00)
        (img@45@00 s@$ g@5@00 roots@6@00 r))
      (Set_in r ($FVF.domain_next (sm@46@00 s@$ g@5@00 roots@6@00)))))
  :pattern ((Set_in r ($FVF.domain_next (sm@46@00 s@$ g@5@00 roots@6@00))))
  :qid |qp.fvfDomDef14|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and
        (Set_in (inv@44@00 s@$ g@5@00 roots@6@00 r) g@5@00)
        (img@45@00 s@$ g@5@00 roots@6@00 r))
      (and
        (img@39@00 s@$ g@5@00 roots@6@00 r)
        (Set_in (inv@38@00 s@$ g@5@00 roots@6@00 r) g@5@00)))
    (=
      ($FVF.lookup_next (sm@46@00 s@$ g@5@00 roots@6@00) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second s@$))) r)))
  :pattern (($FVF.lookup_next (sm@46@00 s@$ g@5@00 roots@6@00) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second s@$))) r))
  :qid |qp.fvfValDef12|)))
(assert (forall ((r $Ref)) (!
  ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second s@$))) r) r)
  :pattern (($FVF.lookup_next (sm@46@00 s@$ g@5@00 roots@6@00) r))
  :qid |qp.fvfResTrgDef13|)))
; Nested auxiliary terms: non-globals (aux)
(assert (forall ((n@42@00 $Ref)) (!
  (and
    (=>
      (Set_in n@42@00 g@5@00)
      (and
        (Set_in n@42@00 g@5@00)
        (forall ((r $Ref)) (!
          (=>
            (Set_in (inv@44@00 s@$ g@5@00 roots@6@00 r) g@5@00)
            ($FVF.loc_next ($FVF.lookup_next (sm@40@00 s@$ g@5@00 roots@6@00) r) r))
          :pattern ((inv@44@00 s@$ g@5@00 roots@6@00 r))
          :qid |quant-u-13695|))
        ($$%precondition ($SortWrappers.$FVF<next>To$Snap (sm@46@00 s@$ g@5@00 roots@6@00)) g@5@00)))
    (or (not (Set_in n@42@00 g@5@00)) (Set_in n@42@00 g@5@00)))
  :pattern ((exists_spath<Bool> ($$ ($SortWrappers.$FVF<next>To$Snap (sm@46@00 s@$ g@5@00 roots@6@00)) g@5@00) roots@6@00 n@42@00))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/graphs/static/tests/lists/framing1.vpr@342@5@342@91-aux|)))
(assert (=
  result@7@00
  (forall ((n@42@00 $Ref)) (!
    (=>
      (Set_in n@42@00 g@5@00)
      (exists_spath<Bool> ($$ ($SortWrappers.$FVF<next>To$Snap (sm@46@00 s@$ g@5@00 roots@6@00)) g@5@00) roots@6@00 n@42@00))
    :pattern ((exists_spath<Bool> ($$ ($SortWrappers.$FVF<next>To$Snap (sm@46@00 s@$ g@5@00 roots@6@00)) g@5@00) roots@6@00 n@42@00))
    :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/graphs/static/tests/lists/framing1.vpr@342@5@342@91|))))
(pop) ; 1
(assert (forall ((s@$ $Snap) (g@5@00 Set<$Ref>) (roots@6@00 Set<$Ref>)) (!
  (and
    (forall ((n$0@36@00 $Ref)) (!
      (=>
        (Set_in n$0@36@00 g@5@00)
        (and
          (= (inv@38@00 s@$ g@5@00 roots@6@00 n$0@36@00) n$0@36@00)
          (img@39@00 s@$ g@5@00 roots@6@00 n$0@36@00)))
      :pattern (($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second s@$))) n$0@36@00) n$0@36@00))
      :qid |quant-u-13692|))
    (forall ((r $Ref)) (!
      (=>
        (and
          (img@39@00 s@$ g@5@00 roots@6@00 r)
          (Set_in (inv@38@00 s@$ g@5@00 roots@6@00 r) g@5@00))
        (= (inv@38@00 s@$ g@5@00 roots@6@00 r) r))
      :pattern ((inv@38@00 s@$ g@5@00 roots@6@00 r))
      :qid |next-fctOfInv|))
    (forall ((n@43@00 $Ref)) (!
      (=>
        (Set_in n@43@00 g@5@00)
        (and
          (= (inv@44@00 s@$ g@5@00 roots@6@00 n@43@00) n@43@00)
          (img@45@00 s@$ g@5@00 roots@6@00 n@43@00)))
      :pattern ((Set_in n@43@00 g@5@00))
      :pattern ((inv@44@00 s@$ g@5@00 roots@6@00 n@43@00))
      :pattern ((img@45@00 s@$ g@5@00 roots@6@00 n@43@00))
      :qid |next-invOfFct|))
    (forall ((r $Ref)) (!
      (=>
        (and
          (img@45@00 s@$ g@5@00 roots@6@00 r)
          (Set_in (inv@44@00 s@$ g@5@00 roots@6@00 r) g@5@00))
        (= (inv@44@00 s@$ g@5@00 roots@6@00 r) r))
      :pattern ((inv@44@00 s@$ g@5@00 roots@6@00 r))
      :qid |next-fctOfInv|))
    (forall ((r $Ref)) (!
      true
      :pattern (($FVF.lookup_next (sm@37@00 s@$ g@5@00 roots@6@00) r))
      :qid |qp.fvfResTrgDef9|))
    (forall ((r $Ref)) (!
      (=>
        (and
          (img@39@00 s@$ g@5@00 roots@6@00 r)
          (Set_in (inv@38@00 s@$ g@5@00 roots@6@00 r) g@5@00))
        (=
          ($FVF.lookup_next (sm@40@00 s@$ g@5@00 roots@6@00) r)
          ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second s@$))) r)))
      :pattern (($FVF.lookup_next (sm@40@00 s@$ g@5@00 roots@6@00) r))
      :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second s@$))) r))
      :qid |qp.fvfValDef10|))
    (forall ((r $Ref)) (!
      ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second s@$))) r) r)
      :pattern (($FVF.lookup_next (sm@40@00 s@$ g@5@00 roots@6@00) r))
      :qid |qp.fvfResTrgDef11|))
    (forall ((r $Ref)) (!
      (and
        (=>
          (Set_in r ($FVF.domain_next (sm@46@00 s@$ g@5@00 roots@6@00)))
          (and
            (Set_in (inv@44@00 s@$ g@5@00 roots@6@00 r) g@5@00)
            (img@45@00 s@$ g@5@00 roots@6@00 r)))
        (=>
          (and
            (Set_in (inv@44@00 s@$ g@5@00 roots@6@00 r) g@5@00)
            (img@45@00 s@$ g@5@00 roots@6@00 r))
          (Set_in r ($FVF.domain_next (sm@46@00 s@$ g@5@00 roots@6@00)))))
      :pattern ((Set_in r ($FVF.domain_next (sm@46@00 s@$ g@5@00 roots@6@00))))
      :qid |qp.fvfDomDef14|))
    (forall ((r $Ref)) (!
      (=>
        (and
          (and
            (Set_in (inv@44@00 s@$ g@5@00 roots@6@00 r) g@5@00)
            (img@45@00 s@$ g@5@00 roots@6@00 r))
          (and
            (img@39@00 s@$ g@5@00 roots@6@00 r)
            (Set_in (inv@38@00 s@$ g@5@00 roots@6@00 r) g@5@00)))
        (=
          ($FVF.lookup_next (sm@46@00 s@$ g@5@00 roots@6@00) r)
          ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second s@$))) r)))
      :pattern (($FVF.lookup_next (sm@46@00 s@$ g@5@00 roots@6@00) r))
      :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second s@$))) r))
      :qid |qp.fvfValDef12|))
    (forall ((r $Ref)) (!
      ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second s@$))) r) r)
      :pattern (($FVF.lookup_next (sm@46@00 s@$ g@5@00 roots@6@00) r))
      :qid |qp.fvfResTrgDef13|))
    (=>
      (is_global_sroot%precondition s@$ g@5@00 roots@6@00)
      (=
        (is_global_sroot s@$ g@5@00 roots@6@00)
        (forall ((n $Ref)) (!
          (=>
            (Set_in n g@5@00)
            (exists_spath<Bool> ($$ ($SortWrappers.$FVF<next>To$Snap (sm@46@00 s@$ g@5@00 roots@6@00)) g@5@00) roots@6@00 n))
          :pattern ((exists_spath<Bool> ($$ ($SortWrappers.$FVF<next>To$Snap (sm@46@00 s@$ g@5@00 roots@6@00)) g@5@00) roots@6@00 n))
          )))))
  :pattern ((is_global_sroot s@$ g@5@00 roots@6@00))
  :qid |quant-u-13697|)))
(assert (forall ((s@$ $Snap) (g@5@00 Set<$Ref>) (roots@6@00 Set<$Ref>)) (!
  (=>
    (is_global_sroot%precondition s@$ g@5@00 roots@6@00)
    (forall ((n $Ref)) (!
      (=>
        (Set_in n g@5@00)
        ($$%precondition ($SortWrappers.$FVF<next>To$Snap (sm@46@00 s@$ g@5@00 roots@6@00)) g@5@00))
      :pattern ((exists_spath<Bool> ($$ ($SortWrappers.$FVF<next>To$Snap (sm@46@00 s@$ g@5@00 roots@6@00)) g@5@00) roots@6@00 n))
      )))
  :pattern ((is_global_sroot s@$ g@5@00 roots@6@00))
  :qid |quant-u-13698|)))
; ---------- FUNCTION acyclic_list_segment----------
(declare-fun g@8@00 () Set<$Ref>)
(declare-fun result@9@00 () Bool)
; ----- Well-definedness of specifications -----
(push) ; 1
(assert (= s@$ ($Snap.combine ($Snap.first s@$) ($Snap.second s@$))))
(assert (= ($Snap.first s@$) $Snap.unit))
; [eval] !((null in g))
; [eval] (null in g)
(assert (not (Set_in $Ref.null g@8@00)))
(assert (=
  ($Snap.second s@$)
  ($Snap.combine
    ($Snap.first ($Snap.second s@$))
    ($Snap.second ($Snap.second s@$)))))
(declare-const n@47@00 $Ref)
(push) ; 2
; [eval] (n in g)
(assert (Set_in n@47@00 g@8@00))
(declare-fun sm@48@00 ($Snap Set<$Ref>) $FVF<next>)
; Definitional axioms for snapshot map values
(pop) ; 2
(declare-fun inv@49@00 ($Snap Set<$Ref> $Ref) $Ref)
(declare-fun img@50@00 ($Snap Set<$Ref> $Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
; Check receiver injectivity
(push) ; 2
(assert (not (forall ((n1@47@00 $Ref) (n2@47@00 $Ref)) (!
  (=>
    (and (Set_in n1@47@00 g@8@00) (Set_in n2@47@00 g@8@00) (= n1@47@00 n2@47@00))
    (= n1@47@00 n2@47@00))
  
  :qid |next-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 2
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((n@47@00 $Ref)) (!
  (=>
    (Set_in n@47@00 g@8@00)
    (and
      (= (inv@49@00 s@$ g@8@00 n@47@00) n@47@00)
      (img@50@00 s@$ g@8@00 n@47@00)))
  :pattern (($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second s@$))) n@47@00) n@47@00))
  :qid |quant-u-13700|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@50@00 s@$ g@8@00 r) (Set_in (inv@49@00 s@$ g@8@00 r) g@8@00))
    (= (inv@49@00 s@$ g@8@00 r) r))
  :pattern ((inv@49@00 s@$ g@8@00 r))
  :qid |next-fctOfInv|)))
; Permissions are non-negative
; Permission implies non-null receiver
(assert (forall ((n@47@00 $Ref)) (!
  (=> (Set_in n@47@00 g@8@00) (not (= n@47@00 $Ref.null)))
  :pattern (($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second s@$))) n@47@00) n@47@00))
  :qid |next-permImpliesNonNull|)))
(declare-fun sm@51@00 ($Snap Set<$Ref>) $FVF<next>)
; Definitional axioms for snapshot map values
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@50@00 s@$ g@8@00 r) (Set_in (inv@49@00 s@$ g@8@00 r) g@8@00))
    (=
      ($FVF.lookup_next (sm@51@00 s@$ g@8@00) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second s@$))) r)))
  :pattern (($FVF.lookup_next (sm@51@00 s@$ g@8@00) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second s@$))) r))
  :qid |qp.fvfValDef16|)))
(assert (forall ((r $Ref)) (!
  ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second s@$))) r) r)
  :pattern (($FVF.lookup_next (sm@51@00 s@$ g@8@00) r))
  :qid |qp.fvfResTrgDef17|)))
(assert (forall ((r $Ref)) (!
  (=>
    (Set_in (inv@49@00 s@$ g@8@00 r) g@8@00)
    ($FVF.loc_next ($FVF.lookup_next (sm@51@00 s@$ g@8@00) r) r))
  :pattern ((inv@49@00 s@$ g@8@00 r))
  :qid |quant-u-13701|)))
(assert (= ($Snap.second ($Snap.second s@$)) $Snap.unit))
; [eval] (forall n$0: Ref :: { (n$0.next in g) } { (n$0 in g), n$0.next } (n$0 in g) && n$0.next != null ==> (n$0.next in g))
(declare-const n$0@52@00 $Ref)
(push) ; 2
; [eval] (n$0 in g) && n$0.next != null ==> (n$0.next in g)
; [eval] (n$0 in g) && n$0.next != null
; [eval] (n$0 in g)
(push) ; 3
; [then-branch: 12 | !(n$0@52@00 in g@8@00) | live]
; [else-branch: 12 | n$0@52@00 in g@8@00 | live]
(push) ; 4
; [then-branch: 12 | !(n$0@52@00 in g@8@00)]
(assert (not (Set_in n$0@52@00 g@8@00)))
(pop) ; 4
(push) ; 4
; [else-branch: 12 | n$0@52@00 in g@8@00]
(assert (Set_in n$0@52@00 g@8@00))
; [eval] n$0.next != null
(assert (and
  (forall ((r $Ref)) (!
    (=>
      (and (img@50@00 s@$ g@8@00 r) (Set_in (inv@49@00 s@$ g@8@00 r) g@8@00))
      (=
        ($FVF.lookup_next (sm@51@00 s@$ g@8@00) r)
        ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second s@$))) r)))
    :pattern (($FVF.lookup_next (sm@51@00 s@$ g@8@00) r))
    :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second s@$))) r))
    :qid |qp.fvfValDef16|))
  (forall ((r $Ref)) (!
    ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second s@$))) r) r)
    :pattern (($FVF.lookup_next (sm@51@00 s@$ g@8@00) r))
    :qid |qp.fvfResTrgDef17|))))
(assert ($FVF.loc_next ($FVF.lookup_next (sm@51@00 s@$ g@8@00) n$0@52@00) n$0@52@00))
(push) ; 5
(assert (not (and
  (img@50@00 s@$ g@8@00 n$0@52@00)
  (Set_in (inv@49@00 s@$ g@8@00 n$0@52@00) g@8@00))))
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
    (and (img@50@00 s@$ g@8@00 r) (Set_in (inv@49@00 s@$ g@8@00 r) g@8@00))
    (=
      ($FVF.lookup_next (sm@51@00 s@$ g@8@00) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second s@$))) r)))
  :pattern (($FVF.lookup_next (sm@51@00 s@$ g@8@00) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second s@$))) r))
  :qid |qp.fvfValDef16|)))
(assert (forall ((r $Ref)) (!
  ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second s@$))) r) r)
  :pattern (($FVF.lookup_next (sm@51@00 s@$ g@8@00) r))
  :qid |qp.fvfResTrgDef17|)))
(assert (=>
  (Set_in n$0@52@00 g@8@00)
  (and
    (Set_in n$0@52@00 g@8@00)
    ($FVF.loc_next ($FVF.lookup_next (sm@51@00 s@$ g@8@00) n$0@52@00) n$0@52@00))))
(assert (or (Set_in n$0@52@00 g@8@00) (not (Set_in n$0@52@00 g@8@00))))
(push) ; 3
; [then-branch: 13 | n$0@52@00 in g@8@00 && Lookup(next, sm@51@00(s@$, g@8@00), n$0@52@00) != Null | live]
; [else-branch: 13 | !(n$0@52@00 in g@8@00 && Lookup(next, sm@51@00(s@$, g@8@00), n$0@52@00) != Null) | live]
(push) ; 4
; [then-branch: 13 | n$0@52@00 in g@8@00 && Lookup(next, sm@51@00(s@$, g@8@00), n$0@52@00) != Null]
(assert (and
  (Set_in n$0@52@00 g@8@00)
  (not (= ($FVF.lookup_next (sm@51@00 s@$ g@8@00) n$0@52@00) $Ref.null))))
; [eval] (n$0.next in g)
(assert (and
  (forall ((r $Ref)) (!
    (=>
      (and (img@50@00 s@$ g@8@00 r) (Set_in (inv@49@00 s@$ g@8@00 r) g@8@00))
      (=
        ($FVF.lookup_next (sm@51@00 s@$ g@8@00) r)
        ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second s@$))) r)))
    :pattern (($FVF.lookup_next (sm@51@00 s@$ g@8@00) r))
    :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second s@$))) r))
    :qid |qp.fvfValDef16|))
  (forall ((r $Ref)) (!
    ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second s@$))) r) r)
    :pattern (($FVF.lookup_next (sm@51@00 s@$ g@8@00) r))
    :qid |qp.fvfResTrgDef17|))))
(assert ($FVF.loc_next ($FVF.lookup_next (sm@51@00 s@$ g@8@00) n$0@52@00) n$0@52@00))
(push) ; 5
(assert (not (and
  (img@50@00 s@$ g@8@00 n$0@52@00)
  (Set_in (inv@49@00 s@$ g@8@00 n$0@52@00) g@8@00))))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(pop) ; 4
(push) ; 4
; [else-branch: 13 | !(n$0@52@00 in g@8@00 && Lookup(next, sm@51@00(s@$, g@8@00), n$0@52@00) != Null)]
(assert (not
  (and
    (Set_in n$0@52@00 g@8@00)
    (not (= ($FVF.lookup_next (sm@51@00 s@$ g@8@00) n$0@52@00) $Ref.null)))))
(pop) ; 4
(pop) ; 3
; Joined path conditions
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@50@00 s@$ g@8@00 r) (Set_in (inv@49@00 s@$ g@8@00 r) g@8@00))
    (=
      ($FVF.lookup_next (sm@51@00 s@$ g@8@00) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second s@$))) r)))
  :pattern (($FVF.lookup_next (sm@51@00 s@$ g@8@00) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second s@$))) r))
  :qid |qp.fvfValDef16|)))
(assert (forall ((r $Ref)) (!
  ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second s@$))) r) r)
  :pattern (($FVF.lookup_next (sm@51@00 s@$ g@8@00) r))
  :qid |qp.fvfResTrgDef17|)))
(assert (=>
  (and
    (Set_in n$0@52@00 g@8@00)
    (not (= ($FVF.lookup_next (sm@51@00 s@$ g@8@00) n$0@52@00) $Ref.null)))
  (and
    (Set_in n$0@52@00 g@8@00)
    (not (= ($FVF.lookup_next (sm@51@00 s@$ g@8@00) n$0@52@00) $Ref.null))
    ($FVF.loc_next ($FVF.lookup_next (sm@51@00 s@$ g@8@00) n$0@52@00) n$0@52@00))))
; Joined path conditions
(assert (or
  (not
    (and
      (Set_in n$0@52@00 g@8@00)
      (not (= ($FVF.lookup_next (sm@51@00 s@$ g@8@00) n$0@52@00) $Ref.null))))
  (and
    (Set_in n$0@52@00 g@8@00)
    (not (= ($FVF.lookup_next (sm@51@00 s@$ g@8@00) n$0@52@00) $Ref.null)))))
; Definitional axioms for snapshot map values
(pop) ; 2
; Nested auxiliary terms: globals (aux)
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@50@00 s@$ g@8@00 r) (Set_in (inv@49@00 s@$ g@8@00 r) g@8@00))
    (=
      ($FVF.lookup_next (sm@51@00 s@$ g@8@00) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second s@$))) r)))
  :pattern (($FVF.lookup_next (sm@51@00 s@$ g@8@00) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second s@$))) r))
  :qid |qp.fvfValDef16|)))
(assert (forall ((r $Ref)) (!
  ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second s@$))) r) r)
  :pattern (($FVF.lookup_next (sm@51@00 s@$ g@8@00) r))
  :qid |qp.fvfResTrgDef17|)))
; Nested auxiliary terms: non-globals (aux)
(assert (forall ((n$0@52@00 $Ref)) (!
  (and
    (=>
      (Set_in n$0@52@00 g@8@00)
      (and
        (Set_in n$0@52@00 g@8@00)
        ($FVF.loc_next ($FVF.lookup_next (sm@51@00 s@$ g@8@00) n$0@52@00) n$0@52@00)))
    (or (Set_in n$0@52@00 g@8@00) (not (Set_in n$0@52@00 g@8@00)))
    (=>
      (and
        (Set_in n$0@52@00 g@8@00)
        (not (= ($FVF.lookup_next (sm@51@00 s@$ g@8@00) n$0@52@00) $Ref.null)))
      (and
        (Set_in n$0@52@00 g@8@00)
        (not (= ($FVF.lookup_next (sm@51@00 s@$ g@8@00) n$0@52@00) $Ref.null))
        ($FVF.loc_next ($FVF.lookup_next (sm@51@00 s@$ g@8@00) n$0@52@00) n$0@52@00)))
    (or
      (not
        (and
          (Set_in n$0@52@00 g@8@00)
          (not (= ($FVF.lookup_next (sm@51@00 s@$ g@8@00) n$0@52@00) $Ref.null))))
      (and
        (Set_in n$0@52@00 g@8@00)
        (not (= ($FVF.lookup_next (sm@51@00 s@$ g@8@00) n$0@52@00) $Ref.null)))))
  :pattern ((Set_in ($FVF.lookup_next (sm@51@00 s@$ g@8@00) n$0@52@00) g@8@00))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/graphs/static/tests/lists/framing1.vpr@346@14@346@22-aux|)))
(assert (forall ((n$0@52@00 $Ref)) (!
  (and
    (=>
      (Set_in n$0@52@00 g@8@00)
      (and
        (Set_in n$0@52@00 g@8@00)
        ($FVF.loc_next ($FVF.lookup_next (sm@51@00 s@$ g@8@00) n$0@52@00) n$0@52@00)))
    (or (Set_in n$0@52@00 g@8@00) (not (Set_in n$0@52@00 g@8@00)))
    (=>
      (and
        (Set_in n$0@52@00 g@8@00)
        (not (= ($FVF.lookup_next (sm@51@00 s@$ g@8@00) n$0@52@00) $Ref.null)))
      (and
        (Set_in n$0@52@00 g@8@00)
        (not (= ($FVF.lookup_next (sm@51@00 s@$ g@8@00) n$0@52@00) $Ref.null))
        ($FVF.loc_next ($FVF.lookup_next (sm@51@00 s@$ g@8@00) n$0@52@00) n$0@52@00)))
    (or
      (not
        (and
          (Set_in n$0@52@00 g@8@00)
          (not (= ($FVF.lookup_next (sm@51@00 s@$ g@8@00) n$0@52@00) $Ref.null))))
      (and
        (Set_in n$0@52@00 g@8@00)
        (not (= ($FVF.lookup_next (sm@51@00 s@$ g@8@00) n$0@52@00) $Ref.null)))))
  :pattern ((Set_in n$0@52@00 g@8@00) ($FVF.loc_next ($FVF.lookup_next (sm@51@00 s@$ g@8@00) n$0@52@00) n$0@52@00))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/graphs/static/tests/lists/framing1.vpr@346@14@346@22-aux|)))
(assert (forall ((n$0@52@00 $Ref)) (!
  (=>
    (and
      (Set_in n$0@52@00 g@8@00)
      (not (= ($FVF.lookup_next (sm@51@00 s@$ g@8@00) n$0@52@00) $Ref.null)))
    (Set_in ($FVF.lookup_next (sm@51@00 s@$ g@8@00) n$0@52@00) g@8@00))
  :pattern ((Set_in ($FVF.lookup_next (sm@51@00 s@$ g@8@00) n$0@52@00) g@8@00))
  :pattern ((Set_in n$0@52@00 g@8@00) ($FVF.loc_next ($FVF.lookup_next (sm@51@00 s@$ g@8@00) n$0@52@00) n$0@52@00))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/graphs/static/tests/lists/framing1.vpr@346@14@346@22|)))
(pop) ; 1
(assert (forall ((s@$ $Snap) (g@8@00 Set<$Ref>)) (!
  (= (acyclic_list_segment%limited s@$ g@8@00) (acyclic_list_segment s@$ g@8@00))
  :pattern ((acyclic_list_segment s@$ g@8@00))
  :qid |quant-u-13672|)))
(assert (forall ((s@$ $Snap) (g@8@00 Set<$Ref>)) (!
  (acyclic_list_segment%stateless g@8@00)
  :pattern ((acyclic_list_segment%limited s@$ g@8@00))
  :qid |quant-u-13673|)))
; ----- Verification of function body and postcondition -----
(push) ; 1
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@50@00 s@$ g@8@00 r) (Set_in (inv@49@00 s@$ g@8@00 r) g@8@00))
    (= (inv@49@00 s@$ g@8@00 r) r))
  :pattern ((inv@49@00 s@$ g@8@00 r))
  :qid |next-fctOfInv|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@50@00 s@$ g@8@00 r) (Set_in (inv@49@00 s@$ g@8@00 r) g@8@00))
    (=
      ($FVF.lookup_next (sm@51@00 s@$ g@8@00) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second s@$))) r)))
  :pattern (($FVF.lookup_next (sm@51@00 s@$ g@8@00) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second s@$))) r))
  :qid |qp.fvfValDef16|)))
(assert (forall ((r $Ref)) (!
  ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second s@$))) r) r)
  :pattern (($FVF.lookup_next (sm@51@00 s@$ g@8@00) r))
  :qid |qp.fvfResTrgDef17|)))
(assert (forall ((n@47@00 $Ref)) (!
  (=>
    (Set_in n@47@00 g@8@00)
    (and
      (= (inv@49@00 s@$ g@8@00 n@47@00) n@47@00)
      (img@50@00 s@$ g@8@00 n@47@00)))
  :pattern (($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second s@$))) n@47@00) n@47@00))
  :qid |quant-u-13700|)))
(assert (forall ((n@47@00 $Ref)) (!
  (=> (Set_in n@47@00 g@8@00) (not (= n@47@00 $Ref.null)))
  :pattern (($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second s@$))) n@47@00) n@47@00))
  :qid |next-permImpliesNonNull|)))
(assert (forall ((r $Ref)) (!
  (=>
    (Set_in (inv@49@00 s@$ g@8@00 r) g@8@00)
    ($FVF.loc_next ($FVF.lookup_next (sm@51@00 s@$ g@8@00) r) r))
  :pattern ((inv@49@00 s@$ g@8@00 r))
  :qid |quant-u-13701|)))
(assert (= ($Snap.second ($Snap.second s@$)) $Snap.unit))
(assert (forall ((n$0@52@00 $Ref)) (!
  (and
    (=>
      (Set_in n$0@52@00 g@8@00)
      (and
        (Set_in n$0@52@00 g@8@00)
        ($FVF.loc_next ($FVF.lookup_next (sm@51@00 s@$ g@8@00) n$0@52@00) n$0@52@00)))
    (or (Set_in n$0@52@00 g@8@00) (not (Set_in n$0@52@00 g@8@00)))
    (=>
      (and
        (Set_in n$0@52@00 g@8@00)
        (not (= ($FVF.lookup_next (sm@51@00 s@$ g@8@00) n$0@52@00) $Ref.null)))
      (and
        (Set_in n$0@52@00 g@8@00)
        (not (= ($FVF.lookup_next (sm@51@00 s@$ g@8@00) n$0@52@00) $Ref.null))
        ($FVF.loc_next ($FVF.lookup_next (sm@51@00 s@$ g@8@00) n$0@52@00) n$0@52@00)))
    (or
      (not
        (and
          (Set_in n$0@52@00 g@8@00)
          (not (= ($FVF.lookup_next (sm@51@00 s@$ g@8@00) n$0@52@00) $Ref.null))))
      (and
        (Set_in n$0@52@00 g@8@00)
        (not (= ($FVF.lookup_next (sm@51@00 s@$ g@8@00) n$0@52@00) $Ref.null)))))
  :pattern ((Set_in ($FVF.lookup_next (sm@51@00 s@$ g@8@00) n$0@52@00) g@8@00))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/graphs/static/tests/lists/framing1.vpr@346@14@346@22-aux|)))
(assert (forall ((n$0@52@00 $Ref)) (!
  (and
    (=>
      (Set_in n$0@52@00 g@8@00)
      (and
        (Set_in n$0@52@00 g@8@00)
        ($FVF.loc_next ($FVF.lookup_next (sm@51@00 s@$ g@8@00) n$0@52@00) n$0@52@00)))
    (or (Set_in n$0@52@00 g@8@00) (not (Set_in n$0@52@00 g@8@00)))
    (=>
      (and
        (Set_in n$0@52@00 g@8@00)
        (not (= ($FVF.lookup_next (sm@51@00 s@$ g@8@00) n$0@52@00) $Ref.null)))
      (and
        (Set_in n$0@52@00 g@8@00)
        (not (= ($FVF.lookup_next (sm@51@00 s@$ g@8@00) n$0@52@00) $Ref.null))
        ($FVF.loc_next ($FVF.lookup_next (sm@51@00 s@$ g@8@00) n$0@52@00) n$0@52@00)))
    (or
      (not
        (and
          (Set_in n$0@52@00 g@8@00)
          (not (= ($FVF.lookup_next (sm@51@00 s@$ g@8@00) n$0@52@00) $Ref.null))))
      (and
        (Set_in n$0@52@00 g@8@00)
        (not (= ($FVF.lookup_next (sm@51@00 s@$ g@8@00) n$0@52@00) $Ref.null)))))
  :pattern ((Set_in n$0@52@00 g@8@00) ($FVF.loc_next ($FVF.lookup_next (sm@51@00 s@$ g@8@00) n$0@52@00) n$0@52@00))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/graphs/static/tests/lists/framing1.vpr@346@14@346@22-aux|)))
(assert (forall ((n$0@52@00 $Ref)) (!
  (=>
    (and
      (Set_in n$0@52@00 g@8@00)
      (not (= ($FVF.lookup_next (sm@51@00 s@$ g@8@00) n$0@52@00) $Ref.null)))
    (Set_in ($FVF.lookup_next (sm@51@00 s@$ g@8@00) n$0@52@00) g@8@00))
  :pattern ((Set_in ($FVF.lookup_next (sm@51@00 s@$ g@8@00) n$0@52@00) g@8@00))
  :pattern ((Set_in n$0@52@00 g@8@00) ($FVF.loc_next ($FVF.lookup_next (sm@51@00 s@$ g@8@00) n$0@52@00) n$0@52@00))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/graphs/static/tests/lists/framing1.vpr@346@14@346@22|)))
(assert (= s@$ ($Snap.combine ($Snap.first s@$) ($Snap.second s@$))))
(assert (= ($Snap.first s@$) $Snap.unit))
(assert (not (Set_in $Ref.null g@8@00)))
(assert (=
  ($Snap.second s@$)
  ($Snap.combine
    ($Snap.first ($Snap.second s@$))
    ($Snap.second ($Snap.second s@$)))))
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
; [eval] acyclic_graph($$(g)) && (func_graph($$(g)) && unshared_graph($$(g)))
; [eval] acyclic_graph($$(g))
; [eval] $$(g)
(set-option :timeout 0)
(push) ; 2
(declare-const n@53@00 $Ref)
(push) ; 3
; [eval] (n in refs)
(assert (Set_in n@53@00 g@8@00))
(pop) ; 3
(declare-fun inv@54@00 ($Snap Set<$Ref> $Ref) $Ref)
(declare-fun img@55@00 ($Snap Set<$Ref> $Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
; Definitional axioms for snapshot map domain
; Definitional axioms for snapshot map values
; Check receiver injectivity
(push) ; 3
(assert (not (forall ((n1@53@00 $Ref) (n2@53@00 $Ref)) (!
  (=>
    (and
      (and
        (Set_in n1@53@00 g@8@00)
        ($FVF.loc_next ($FVF.lookup_next (sm@51@00 s@$ g@8@00) n1@53@00) n1@53@00))
      (and
        (Set_in n2@53@00 g@8@00)
        ($FVF.loc_next ($FVF.lookup_next (sm@51@00 s@$ g@8@00) n2@53@00) n2@53@00))
      (= n1@53@00 n2@53@00))
    (= n1@53@00 n2@53@00))
  
  :qid |next-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((n@53@00 $Ref)) (!
  (=>
    (Set_in n@53@00 g@8@00)
    (and
      (= (inv@54@00 s@$ g@8@00 n@53@00) n@53@00)
      (img@55@00 s@$ g@8@00 n@53@00)))
  :pattern ((Set_in n@53@00 g@8@00))
  :pattern ((inv@54@00 s@$ g@8@00 n@53@00))
  :pattern ((img@55@00 s@$ g@8@00 n@53@00))
  :qid |next-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@55@00 s@$ g@8@00 r) (Set_in (inv@54@00 s@$ g@8@00 r) g@8@00))
    (= (inv@54@00 s@$ g@8@00 r) r))
  :pattern ((inv@54@00 s@$ g@8@00 r))
  :qid |next-fctOfInv|)))
(assert (forall ((r $Ref)) (!
  (=>
    (Set_in (inv@54@00 s@$ g@8@00 r) g@8@00)
    ($FVF.loc_next ($FVF.lookup_next (sm@51@00 s@$ g@8@00) r) r))
  :pattern ((inv@54@00 s@$ g@8@00 r))
  :qid |quant-u-13703|)))
(push) ; 3
(assert (not (forall ((r $Ref)) (!
  (=>
    (and
      (Set_in (inv@54@00 s@$ g@8@00 r) g@8@00)
      (img@55@00 s@$ g@8@00 r)
      (= r (inv@54@00 s@$ g@8@00 r)))
    (>
      (ite
        (and (img@50@00 s@$ g@8@00 r) (Set_in (inv@49@00 s@$ g@8@00 r) g@8@00))
        $Perm.Write
        $Perm.No)
      $Perm.No))
  
  :qid |quant-u-13704|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(declare-fun sm@56@00 ($Snap Set<$Ref>) $FVF<next>)
; Definitional axioms for snapshot map domain
(assert (forall ((r $Ref)) (!
  (and
    (=>
      (Set_in r ($FVF.domain_next (sm@56@00 s@$ g@8@00)))
      (and (Set_in (inv@54@00 s@$ g@8@00 r) g@8@00) (img@55@00 s@$ g@8@00 r)))
    (=>
      (and (Set_in (inv@54@00 s@$ g@8@00 r) g@8@00) (img@55@00 s@$ g@8@00 r))
      (Set_in r ($FVF.domain_next (sm@56@00 s@$ g@8@00)))))
  :pattern ((Set_in r ($FVF.domain_next (sm@56@00 s@$ g@8@00))))
  :qid |qp.fvfDomDef20|)))
; Definitional axioms for snapshot map values
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and (Set_in (inv@54@00 s@$ g@8@00 r) g@8@00) (img@55@00 s@$ g@8@00 r))
      (and (img@50@00 s@$ g@8@00 r) (Set_in (inv@49@00 s@$ g@8@00 r) g@8@00)))
    (=
      ($FVF.lookup_next (sm@56@00 s@$ g@8@00) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second s@$))) r)))
  :pattern (($FVF.lookup_next (sm@56@00 s@$ g@8@00) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second s@$))) r))
  :qid |qp.fvfValDef18|)))
(assert (forall ((r $Ref)) (!
  ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second s@$))) r) r)
  :pattern (($FVF.lookup_next (sm@56@00 s@$ g@8@00) r))
  :qid |qp.fvfResTrgDef19|)))
(assert ($$%precondition ($SortWrappers.$FVF<next>To$Snap (sm@56@00 s@$ g@8@00)) g@8@00))
(pop) ; 2
; Joined path conditions
(assert (forall ((n@53@00 $Ref)) (!
  (=>
    (Set_in n@53@00 g@8@00)
    (and
      (= (inv@54@00 s@$ g@8@00 n@53@00) n@53@00)
      (img@55@00 s@$ g@8@00 n@53@00)))
  :pattern ((Set_in n@53@00 g@8@00))
  :pattern ((inv@54@00 s@$ g@8@00 n@53@00))
  :pattern ((img@55@00 s@$ g@8@00 n@53@00))
  :qid |next-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@55@00 s@$ g@8@00 r) (Set_in (inv@54@00 s@$ g@8@00 r) g@8@00))
    (= (inv@54@00 s@$ g@8@00 r) r))
  :pattern ((inv@54@00 s@$ g@8@00 r))
  :qid |next-fctOfInv|)))
(assert (forall ((r $Ref)) (!
  (and
    (=>
      (Set_in r ($FVF.domain_next (sm@56@00 s@$ g@8@00)))
      (and (Set_in (inv@54@00 s@$ g@8@00 r) g@8@00) (img@55@00 s@$ g@8@00 r)))
    (=>
      (and (Set_in (inv@54@00 s@$ g@8@00 r) g@8@00) (img@55@00 s@$ g@8@00 r))
      (Set_in r ($FVF.domain_next (sm@56@00 s@$ g@8@00)))))
  :pattern ((Set_in r ($FVF.domain_next (sm@56@00 s@$ g@8@00))))
  :qid |qp.fvfDomDef20|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and (Set_in (inv@54@00 s@$ g@8@00 r) g@8@00) (img@55@00 s@$ g@8@00 r))
      (and (img@50@00 s@$ g@8@00 r) (Set_in (inv@49@00 s@$ g@8@00 r) g@8@00)))
    (=
      ($FVF.lookup_next (sm@56@00 s@$ g@8@00) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second s@$))) r)))
  :pattern (($FVF.lookup_next (sm@56@00 s@$ g@8@00) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second s@$))) r))
  :qid |qp.fvfValDef18|)))
(assert (forall ((r $Ref)) (!
  ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second s@$))) r) r)
  :pattern (($FVF.lookup_next (sm@56@00 s@$ g@8@00) r))
  :qid |qp.fvfResTrgDef19|)))
(assert (and
  (forall ((r $Ref)) (!
    (=>
      (Set_in (inv@54@00 s@$ g@8@00 r) g@8@00)
      ($FVF.loc_next ($FVF.lookup_next (sm@51@00 s@$ g@8@00) r) r))
    :pattern ((inv@54@00 s@$ g@8@00 r))
    :qid |quant-u-13703|))
  ($$%precondition ($SortWrappers.$FVF<next>To$Snap (sm@56@00 s@$ g@8@00)) g@8@00)))
(push) ; 2
; [then-branch: 14 | !(acyclic_graph[Bool]($$(sm@56@00(s@$, g@8@00), g@8@00))) | live]
; [else-branch: 14 | acyclic_graph[Bool]($$(sm@56@00(s@$, g@8@00), g@8@00)) | live]
(push) ; 3
; [then-branch: 14 | !(acyclic_graph[Bool]($$(sm@56@00(s@$, g@8@00), g@8@00)))]
(assert (not
  (acyclic_graph<Bool> ($$ ($SortWrappers.$FVF<next>To$Snap (sm@56@00 s@$ g@8@00)) g@8@00))))
(pop) ; 3
(push) ; 3
; [else-branch: 14 | acyclic_graph[Bool]($$(sm@56@00(s@$, g@8@00), g@8@00))]
(assert (acyclic_graph<Bool> ($$ ($SortWrappers.$FVF<next>To$Snap (sm@56@00 s@$ g@8@00)) g@8@00)))
; [eval] func_graph($$(g))
; [eval] $$(g)
(push) ; 4
(declare-const n@57@00 $Ref)
(push) ; 5
; [eval] (n in refs)
(assert (Set_in n@57@00 g@8@00))
(pop) ; 5
(declare-fun inv@58@00 ($Snap Set<$Ref> $Ref) $Ref)
(declare-fun img@59@00 ($Snap Set<$Ref> $Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
(declare-fun sm@60@00 ($Snap Set<$Ref>) $FVF<next>)
; Definitional axioms for snapshot map domain
; Definitional axioms for snapshot map values
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@50@00 s@$ g@8@00 r) (Set_in (inv@49@00 s@$ g@8@00 r) g@8@00))
    (=
      ($FVF.lookup_next (sm@60@00 s@$ g@8@00) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second s@$))) r)))
  :pattern (($FVF.lookup_next (sm@60@00 s@$ g@8@00) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second s@$))) r))
  :qid |qp.fvfValDef21|)))
(assert (forall ((r $Ref)) (!
  ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second s@$))) r) r)
  :pattern (($FVF.lookup_next (sm@60@00 s@$ g@8@00) r))
  :qid |qp.fvfResTrgDef22|)))
; Check receiver injectivity
(push) ; 5
(assert (not (forall ((n1@57@00 $Ref) (n2@57@00 $Ref)) (!
  (=>
    (and
      (and
        (Set_in n1@57@00 g@8@00)
        ($FVF.loc_next ($FVF.lookup_next (sm@60@00 s@$ g@8@00) n1@57@00) n1@57@00))
      (and
        (Set_in n2@57@00 g@8@00)
        ($FVF.loc_next ($FVF.lookup_next (sm@60@00 s@$ g@8@00) n2@57@00) n2@57@00))
      (= n1@57@00 n2@57@00))
    (= n1@57@00 n2@57@00))
  
  :qid |next-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((n@57@00 $Ref)) (!
  (=>
    (Set_in n@57@00 g@8@00)
    (and
      (= (inv@58@00 s@$ g@8@00 n@57@00) n@57@00)
      (img@59@00 s@$ g@8@00 n@57@00)))
  :pattern ((Set_in n@57@00 g@8@00))
  :pattern ((inv@58@00 s@$ g@8@00 n@57@00))
  :pattern ((img@59@00 s@$ g@8@00 n@57@00))
  :qid |next-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@59@00 s@$ g@8@00 r) (Set_in (inv@58@00 s@$ g@8@00 r) g@8@00))
    (= (inv@58@00 s@$ g@8@00 r) r))
  :pattern ((inv@58@00 s@$ g@8@00 r))
  :qid |next-fctOfInv|)))
(assert (forall ((r $Ref)) (!
  (=>
    (Set_in (inv@58@00 s@$ g@8@00 r) g@8@00)
    ($FVF.loc_next ($FVF.lookup_next (sm@60@00 s@$ g@8@00) r) r))
  :pattern ((inv@58@00 s@$ g@8@00 r))
  :qid |quant-u-13706|)))
(push) ; 5
(assert (not (forall ((r $Ref)) (!
  (=>
    (and
      (Set_in (inv@58@00 s@$ g@8@00 r) g@8@00)
      (img@59@00 s@$ g@8@00 r)
      (= r (inv@58@00 s@$ g@8@00 r)))
    (>
      (ite
        (and (img@50@00 s@$ g@8@00 r) (Set_in (inv@49@00 s@$ g@8@00 r) g@8@00))
        $Perm.Write
        $Perm.No)
      $Perm.No))
  
  :qid |quant-u-13707|))))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(declare-fun sm@61@00 ($Snap Set<$Ref>) $FVF<next>)
; Definitional axioms for snapshot map domain
(assert (forall ((r $Ref)) (!
  (and
    (=>
      (Set_in r ($FVF.domain_next (sm@61@00 s@$ g@8@00)))
      (and (Set_in (inv@58@00 s@$ g@8@00 r) g@8@00) (img@59@00 s@$ g@8@00 r)))
    (=>
      (and (Set_in (inv@58@00 s@$ g@8@00 r) g@8@00) (img@59@00 s@$ g@8@00 r))
      (Set_in r ($FVF.domain_next (sm@61@00 s@$ g@8@00)))))
  :pattern ((Set_in r ($FVF.domain_next (sm@61@00 s@$ g@8@00))))
  :qid |qp.fvfDomDef25|)))
; Definitional axioms for snapshot map values
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and (Set_in (inv@58@00 s@$ g@8@00 r) g@8@00) (img@59@00 s@$ g@8@00 r))
      (and (img@50@00 s@$ g@8@00 r) (Set_in (inv@49@00 s@$ g@8@00 r) g@8@00)))
    (=
      ($FVF.lookup_next (sm@61@00 s@$ g@8@00) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second s@$))) r)))
  :pattern (($FVF.lookup_next (sm@61@00 s@$ g@8@00) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second s@$))) r))
  :qid |qp.fvfValDef23|)))
(assert (forall ((r $Ref)) (!
  ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second s@$))) r) r)
  :pattern (($FVF.lookup_next (sm@61@00 s@$ g@8@00) r))
  :qid |qp.fvfResTrgDef24|)))
(assert ($$%precondition ($SortWrappers.$FVF<next>To$Snap (sm@61@00 s@$ g@8@00)) g@8@00))
(pop) ; 4
; Joined path conditions
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@50@00 s@$ g@8@00 r) (Set_in (inv@49@00 s@$ g@8@00 r) g@8@00))
    (=
      ($FVF.lookup_next (sm@60@00 s@$ g@8@00) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second s@$))) r)))
  :pattern (($FVF.lookup_next (sm@60@00 s@$ g@8@00) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second s@$))) r))
  :qid |qp.fvfValDef21|)))
(assert (forall ((r $Ref)) (!
  ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second s@$))) r) r)
  :pattern (($FVF.lookup_next (sm@60@00 s@$ g@8@00) r))
  :qid |qp.fvfResTrgDef22|)))
(assert (forall ((n@57@00 $Ref)) (!
  (=>
    (Set_in n@57@00 g@8@00)
    (and
      (= (inv@58@00 s@$ g@8@00 n@57@00) n@57@00)
      (img@59@00 s@$ g@8@00 n@57@00)))
  :pattern ((Set_in n@57@00 g@8@00))
  :pattern ((inv@58@00 s@$ g@8@00 n@57@00))
  :pattern ((img@59@00 s@$ g@8@00 n@57@00))
  :qid |next-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@59@00 s@$ g@8@00 r) (Set_in (inv@58@00 s@$ g@8@00 r) g@8@00))
    (= (inv@58@00 s@$ g@8@00 r) r))
  :pattern ((inv@58@00 s@$ g@8@00 r))
  :qid |next-fctOfInv|)))
(assert (forall ((r $Ref)) (!
  (and
    (=>
      (Set_in r ($FVF.domain_next (sm@61@00 s@$ g@8@00)))
      (and (Set_in (inv@58@00 s@$ g@8@00 r) g@8@00) (img@59@00 s@$ g@8@00 r)))
    (=>
      (and (Set_in (inv@58@00 s@$ g@8@00 r) g@8@00) (img@59@00 s@$ g@8@00 r))
      (Set_in r ($FVF.domain_next (sm@61@00 s@$ g@8@00)))))
  :pattern ((Set_in r ($FVF.domain_next (sm@61@00 s@$ g@8@00))))
  :qid |qp.fvfDomDef25|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and (Set_in (inv@58@00 s@$ g@8@00 r) g@8@00) (img@59@00 s@$ g@8@00 r))
      (and (img@50@00 s@$ g@8@00 r) (Set_in (inv@49@00 s@$ g@8@00 r) g@8@00)))
    (=
      ($FVF.lookup_next (sm@61@00 s@$ g@8@00) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second s@$))) r)))
  :pattern (($FVF.lookup_next (sm@61@00 s@$ g@8@00) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second s@$))) r))
  :qid |qp.fvfValDef23|)))
(assert (forall ((r $Ref)) (!
  ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second s@$))) r) r)
  :pattern (($FVF.lookup_next (sm@61@00 s@$ g@8@00) r))
  :qid |qp.fvfResTrgDef24|)))
(assert (and
  (forall ((r $Ref)) (!
    (=>
      (Set_in (inv@58@00 s@$ g@8@00 r) g@8@00)
      ($FVF.loc_next ($FVF.lookup_next (sm@60@00 s@$ g@8@00) r) r))
    :pattern ((inv@58@00 s@$ g@8@00 r))
    :qid |quant-u-13706|))
  ($$%precondition ($SortWrappers.$FVF<next>To$Snap (sm@61@00 s@$ g@8@00)) g@8@00)))
(push) ; 4
; [then-branch: 15 | !(func_graph[Bool]($$(sm@61@00(s@$, g@8@00), g@8@00))) | live]
; [else-branch: 15 | func_graph[Bool]($$(sm@61@00(s@$, g@8@00), g@8@00)) | live]
(push) ; 5
; [then-branch: 15 | !(func_graph[Bool]($$(sm@61@00(s@$, g@8@00), g@8@00)))]
(assert (not
  (func_graph<Bool> ($$ ($SortWrappers.$FVF<next>To$Snap (sm@61@00 s@$ g@8@00)) g@8@00))))
(pop) ; 5
(push) ; 5
; [else-branch: 15 | func_graph[Bool]($$(sm@61@00(s@$, g@8@00), g@8@00))]
(assert (func_graph<Bool> ($$ ($SortWrappers.$FVF<next>To$Snap (sm@61@00 s@$ g@8@00)) g@8@00)))
; [eval] unshared_graph($$(g))
; [eval] $$(g)
(push) ; 6
(declare-const n@62@00 $Ref)
(push) ; 7
; [eval] (n in refs)
(assert (Set_in n@62@00 g@8@00))
(pop) ; 7
(declare-fun inv@63@00 ($Snap Set<$Ref> $Ref) $Ref)
(declare-fun img@64@00 ($Snap Set<$Ref> $Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
(declare-fun sm@65@00 ($Snap Set<$Ref>) $FVF<next>)
; Definitional axioms for snapshot map domain
; Definitional axioms for snapshot map values
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@50@00 s@$ g@8@00 r) (Set_in (inv@49@00 s@$ g@8@00 r) g@8@00))
    (=
      ($FVF.lookup_next (sm@65@00 s@$ g@8@00) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second s@$))) r)))
  :pattern (($FVF.lookup_next (sm@65@00 s@$ g@8@00) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second s@$))) r))
  :qid |qp.fvfValDef26|)))
(assert (forall ((r $Ref)) (!
  ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second s@$))) r) r)
  :pattern (($FVF.lookup_next (sm@65@00 s@$ g@8@00) r))
  :qid |qp.fvfResTrgDef27|)))
; Check receiver injectivity
(push) ; 7
(assert (not (forall ((n1@62@00 $Ref) (n2@62@00 $Ref)) (!
  (=>
    (and
      (and
        (Set_in n1@62@00 g@8@00)
        ($FVF.loc_next ($FVF.lookup_next (sm@65@00 s@$ g@8@00) n1@62@00) n1@62@00))
      (and
        (Set_in n2@62@00 g@8@00)
        ($FVF.loc_next ($FVF.lookup_next (sm@65@00 s@$ g@8@00) n2@62@00) n2@62@00))
      (= n1@62@00 n2@62@00))
    (= n1@62@00 n2@62@00))
  
  :qid |next-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((n@62@00 $Ref)) (!
  (=>
    (Set_in n@62@00 g@8@00)
    (and
      (= (inv@63@00 s@$ g@8@00 n@62@00) n@62@00)
      (img@64@00 s@$ g@8@00 n@62@00)))
  :pattern ((Set_in n@62@00 g@8@00))
  :pattern ((inv@63@00 s@$ g@8@00 n@62@00))
  :pattern ((img@64@00 s@$ g@8@00 n@62@00))
  :qid |next-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@64@00 s@$ g@8@00 r) (Set_in (inv@63@00 s@$ g@8@00 r) g@8@00))
    (= (inv@63@00 s@$ g@8@00 r) r))
  :pattern ((inv@63@00 s@$ g@8@00 r))
  :qid |next-fctOfInv|)))
(assert (forall ((r $Ref)) (!
  (=>
    (Set_in (inv@63@00 s@$ g@8@00 r) g@8@00)
    ($FVF.loc_next ($FVF.lookup_next (sm@65@00 s@$ g@8@00) r) r))
  :pattern ((inv@63@00 s@$ g@8@00 r))
  :qid |quant-u-13709|)))
(push) ; 7
(assert (not (forall ((r $Ref)) (!
  (=>
    (and
      (Set_in (inv@63@00 s@$ g@8@00 r) g@8@00)
      (img@64@00 s@$ g@8@00 r)
      (= r (inv@63@00 s@$ g@8@00 r)))
    (>
      (ite
        (and (img@50@00 s@$ g@8@00 r) (Set_in (inv@49@00 s@$ g@8@00 r) g@8@00))
        $Perm.Write
        $Perm.No)
      $Perm.No))
  
  :qid |quant-u-13710|))))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(declare-fun sm@66@00 ($Snap Set<$Ref>) $FVF<next>)
; Definitional axioms for snapshot map domain
(assert (forall ((r $Ref)) (!
  (and
    (=>
      (Set_in r ($FVF.domain_next (sm@66@00 s@$ g@8@00)))
      (and (Set_in (inv@63@00 s@$ g@8@00 r) g@8@00) (img@64@00 s@$ g@8@00 r)))
    (=>
      (and (Set_in (inv@63@00 s@$ g@8@00 r) g@8@00) (img@64@00 s@$ g@8@00 r))
      (Set_in r ($FVF.domain_next (sm@66@00 s@$ g@8@00)))))
  :pattern ((Set_in r ($FVF.domain_next (sm@66@00 s@$ g@8@00))))
  :qid |qp.fvfDomDef30|)))
; Definitional axioms for snapshot map values
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and (Set_in (inv@63@00 s@$ g@8@00 r) g@8@00) (img@64@00 s@$ g@8@00 r))
      (and (img@50@00 s@$ g@8@00 r) (Set_in (inv@49@00 s@$ g@8@00 r) g@8@00)))
    (=
      ($FVF.lookup_next (sm@66@00 s@$ g@8@00) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second s@$))) r)))
  :pattern (($FVF.lookup_next (sm@66@00 s@$ g@8@00) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second s@$))) r))
  :qid |qp.fvfValDef28|)))
(assert (forall ((r $Ref)) (!
  ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second s@$))) r) r)
  :pattern (($FVF.lookup_next (sm@66@00 s@$ g@8@00) r))
  :qid |qp.fvfResTrgDef29|)))
(assert ($$%precondition ($SortWrappers.$FVF<next>To$Snap (sm@66@00 s@$ g@8@00)) g@8@00))
(pop) ; 6
; Joined path conditions
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@50@00 s@$ g@8@00 r) (Set_in (inv@49@00 s@$ g@8@00 r) g@8@00))
    (=
      ($FVF.lookup_next (sm@65@00 s@$ g@8@00) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second s@$))) r)))
  :pattern (($FVF.lookup_next (sm@65@00 s@$ g@8@00) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second s@$))) r))
  :qid |qp.fvfValDef26|)))
(assert (forall ((r $Ref)) (!
  ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second s@$))) r) r)
  :pattern (($FVF.lookup_next (sm@65@00 s@$ g@8@00) r))
  :qid |qp.fvfResTrgDef27|)))
(assert (forall ((n@62@00 $Ref)) (!
  (=>
    (Set_in n@62@00 g@8@00)
    (and
      (= (inv@63@00 s@$ g@8@00 n@62@00) n@62@00)
      (img@64@00 s@$ g@8@00 n@62@00)))
  :pattern ((Set_in n@62@00 g@8@00))
  :pattern ((inv@63@00 s@$ g@8@00 n@62@00))
  :pattern ((img@64@00 s@$ g@8@00 n@62@00))
  :qid |next-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@64@00 s@$ g@8@00 r) (Set_in (inv@63@00 s@$ g@8@00 r) g@8@00))
    (= (inv@63@00 s@$ g@8@00 r) r))
  :pattern ((inv@63@00 s@$ g@8@00 r))
  :qid |next-fctOfInv|)))
(assert (forall ((r $Ref)) (!
  (and
    (=>
      (Set_in r ($FVF.domain_next (sm@66@00 s@$ g@8@00)))
      (and (Set_in (inv@63@00 s@$ g@8@00 r) g@8@00) (img@64@00 s@$ g@8@00 r)))
    (=>
      (and (Set_in (inv@63@00 s@$ g@8@00 r) g@8@00) (img@64@00 s@$ g@8@00 r))
      (Set_in r ($FVF.domain_next (sm@66@00 s@$ g@8@00)))))
  :pattern ((Set_in r ($FVF.domain_next (sm@66@00 s@$ g@8@00))))
  :qid |qp.fvfDomDef30|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and (Set_in (inv@63@00 s@$ g@8@00 r) g@8@00) (img@64@00 s@$ g@8@00 r))
      (and (img@50@00 s@$ g@8@00 r) (Set_in (inv@49@00 s@$ g@8@00 r) g@8@00)))
    (=
      ($FVF.lookup_next (sm@66@00 s@$ g@8@00) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second s@$))) r)))
  :pattern (($FVF.lookup_next (sm@66@00 s@$ g@8@00) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second s@$))) r))
  :qid |qp.fvfValDef28|)))
(assert (forall ((r $Ref)) (!
  ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second s@$))) r) r)
  :pattern (($FVF.lookup_next (sm@66@00 s@$ g@8@00) r))
  :qid |qp.fvfResTrgDef29|)))
(assert (and
  (forall ((r $Ref)) (!
    (=>
      (Set_in (inv@63@00 s@$ g@8@00 r) g@8@00)
      ($FVF.loc_next ($FVF.lookup_next (sm@65@00 s@$ g@8@00) r) r))
    :pattern ((inv@63@00 s@$ g@8@00 r))
    :qid |quant-u-13709|))
  ($$%precondition ($SortWrappers.$FVF<next>To$Snap (sm@66@00 s@$ g@8@00)) g@8@00)))
(pop) ; 5
(pop) ; 4
; Joined path conditions
; Joined path conditions
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@50@00 s@$ g@8@00 r) (Set_in (inv@49@00 s@$ g@8@00 r) g@8@00))
    (=
      ($FVF.lookup_next (sm@65@00 s@$ g@8@00) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second s@$))) r)))
  :pattern (($FVF.lookup_next (sm@65@00 s@$ g@8@00) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second s@$))) r))
  :qid |qp.fvfValDef26|)))
(assert (forall ((r $Ref)) (!
  ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second s@$))) r) r)
  :pattern (($FVF.lookup_next (sm@65@00 s@$ g@8@00) r))
  :qid |qp.fvfResTrgDef27|)))
(assert (forall ((n@62@00 $Ref)) (!
  (=>
    (Set_in n@62@00 g@8@00)
    (and
      (= (inv@63@00 s@$ g@8@00 n@62@00) n@62@00)
      (img@64@00 s@$ g@8@00 n@62@00)))
  :pattern ((Set_in n@62@00 g@8@00))
  :pattern ((inv@63@00 s@$ g@8@00 n@62@00))
  :pattern ((img@64@00 s@$ g@8@00 n@62@00))
  :qid |next-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@64@00 s@$ g@8@00 r) (Set_in (inv@63@00 s@$ g@8@00 r) g@8@00))
    (= (inv@63@00 s@$ g@8@00 r) r))
  :pattern ((inv@63@00 s@$ g@8@00 r))
  :qid |next-fctOfInv|)))
(assert (forall ((r $Ref)) (!
  (and
    (=>
      (Set_in r ($FVF.domain_next (sm@66@00 s@$ g@8@00)))
      (and (Set_in (inv@63@00 s@$ g@8@00 r) g@8@00) (img@64@00 s@$ g@8@00 r)))
    (=>
      (and (Set_in (inv@63@00 s@$ g@8@00 r) g@8@00) (img@64@00 s@$ g@8@00 r))
      (Set_in r ($FVF.domain_next (sm@66@00 s@$ g@8@00)))))
  :pattern ((Set_in r ($FVF.domain_next (sm@66@00 s@$ g@8@00))))
  :qid |qp.fvfDomDef30|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and (Set_in (inv@63@00 s@$ g@8@00 r) g@8@00) (img@64@00 s@$ g@8@00 r))
      (and (img@50@00 s@$ g@8@00 r) (Set_in (inv@49@00 s@$ g@8@00 r) g@8@00)))
    (=
      ($FVF.lookup_next (sm@66@00 s@$ g@8@00) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second s@$))) r)))
  :pattern (($FVF.lookup_next (sm@66@00 s@$ g@8@00) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second s@$))) r))
  :qid |qp.fvfValDef28|)))
(assert (forall ((r $Ref)) (!
  ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second s@$))) r) r)
  :pattern (($FVF.lookup_next (sm@66@00 s@$ g@8@00) r))
  :qid |qp.fvfResTrgDef29|)))
(assert (=>
  (func_graph<Bool> ($$ ($SortWrappers.$FVF<next>To$Snap (sm@61@00 s@$ g@8@00)) g@8@00))
  (and
    (func_graph<Bool> ($$ ($SortWrappers.$FVF<next>To$Snap (sm@61@00 s@$ g@8@00)) g@8@00))
    (forall ((r $Ref)) (!
      (=>
        (Set_in (inv@63@00 s@$ g@8@00 r) g@8@00)
        ($FVF.loc_next ($FVF.lookup_next (sm@65@00 s@$ g@8@00) r) r))
      :pattern ((inv@63@00 s@$ g@8@00 r))
      :qid |quant-u-13709|))
    ($$%precondition ($SortWrappers.$FVF<next>To$Snap (sm@66@00 s@$ g@8@00)) g@8@00))))
(assert (or
  (func_graph<Bool> ($$ ($SortWrappers.$FVF<next>To$Snap (sm@61@00 s@$ g@8@00)) g@8@00))
  (not
    (func_graph<Bool> ($$ ($SortWrappers.$FVF<next>To$Snap (sm@61@00 s@$ g@8@00)) g@8@00)))))
(pop) ; 3
(pop) ; 2
; Joined path conditions
; Joined path conditions
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@50@00 s@$ g@8@00 r) (Set_in (inv@49@00 s@$ g@8@00 r) g@8@00))
    (=
      ($FVF.lookup_next (sm@60@00 s@$ g@8@00) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second s@$))) r)))
  :pattern (($FVF.lookup_next (sm@60@00 s@$ g@8@00) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second s@$))) r))
  :qid |qp.fvfValDef21|)))
(assert (forall ((r $Ref)) (!
  ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second s@$))) r) r)
  :pattern (($FVF.lookup_next (sm@60@00 s@$ g@8@00) r))
  :qid |qp.fvfResTrgDef22|)))
(assert (forall ((n@57@00 $Ref)) (!
  (=>
    (Set_in n@57@00 g@8@00)
    (and
      (= (inv@58@00 s@$ g@8@00 n@57@00) n@57@00)
      (img@59@00 s@$ g@8@00 n@57@00)))
  :pattern ((Set_in n@57@00 g@8@00))
  :pattern ((inv@58@00 s@$ g@8@00 n@57@00))
  :pattern ((img@59@00 s@$ g@8@00 n@57@00))
  :qid |next-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@59@00 s@$ g@8@00 r) (Set_in (inv@58@00 s@$ g@8@00 r) g@8@00))
    (= (inv@58@00 s@$ g@8@00 r) r))
  :pattern ((inv@58@00 s@$ g@8@00 r))
  :qid |next-fctOfInv|)))
(assert (forall ((r $Ref)) (!
  (and
    (=>
      (Set_in r ($FVF.domain_next (sm@61@00 s@$ g@8@00)))
      (and (Set_in (inv@58@00 s@$ g@8@00 r) g@8@00) (img@59@00 s@$ g@8@00 r)))
    (=>
      (and (Set_in (inv@58@00 s@$ g@8@00 r) g@8@00) (img@59@00 s@$ g@8@00 r))
      (Set_in r ($FVF.domain_next (sm@61@00 s@$ g@8@00)))))
  :pattern ((Set_in r ($FVF.domain_next (sm@61@00 s@$ g@8@00))))
  :qid |qp.fvfDomDef25|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and (Set_in (inv@58@00 s@$ g@8@00 r) g@8@00) (img@59@00 s@$ g@8@00 r))
      (and (img@50@00 s@$ g@8@00 r) (Set_in (inv@49@00 s@$ g@8@00 r) g@8@00)))
    (=
      ($FVF.lookup_next (sm@61@00 s@$ g@8@00) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second s@$))) r)))
  :pattern (($FVF.lookup_next (sm@61@00 s@$ g@8@00) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second s@$))) r))
  :qid |qp.fvfValDef23|)))
(assert (forall ((r $Ref)) (!
  ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second s@$))) r) r)
  :pattern (($FVF.lookup_next (sm@61@00 s@$ g@8@00) r))
  :qid |qp.fvfResTrgDef24|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@50@00 s@$ g@8@00 r) (Set_in (inv@49@00 s@$ g@8@00 r) g@8@00))
    (=
      ($FVF.lookup_next (sm@65@00 s@$ g@8@00) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second s@$))) r)))
  :pattern (($FVF.lookup_next (sm@65@00 s@$ g@8@00) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second s@$))) r))
  :qid |qp.fvfValDef26|)))
(assert (forall ((r $Ref)) (!
  ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second s@$))) r) r)
  :pattern (($FVF.lookup_next (sm@65@00 s@$ g@8@00) r))
  :qid |qp.fvfResTrgDef27|)))
(assert (forall ((n@62@00 $Ref)) (!
  (=>
    (Set_in n@62@00 g@8@00)
    (and
      (= (inv@63@00 s@$ g@8@00 n@62@00) n@62@00)
      (img@64@00 s@$ g@8@00 n@62@00)))
  :pattern ((Set_in n@62@00 g@8@00))
  :pattern ((inv@63@00 s@$ g@8@00 n@62@00))
  :pattern ((img@64@00 s@$ g@8@00 n@62@00))
  :qid |next-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@64@00 s@$ g@8@00 r) (Set_in (inv@63@00 s@$ g@8@00 r) g@8@00))
    (= (inv@63@00 s@$ g@8@00 r) r))
  :pattern ((inv@63@00 s@$ g@8@00 r))
  :qid |next-fctOfInv|)))
(assert (forall ((r $Ref)) (!
  (and
    (=>
      (Set_in r ($FVF.domain_next (sm@66@00 s@$ g@8@00)))
      (and (Set_in (inv@63@00 s@$ g@8@00 r) g@8@00) (img@64@00 s@$ g@8@00 r)))
    (=>
      (and (Set_in (inv@63@00 s@$ g@8@00 r) g@8@00) (img@64@00 s@$ g@8@00 r))
      (Set_in r ($FVF.domain_next (sm@66@00 s@$ g@8@00)))))
  :pattern ((Set_in r ($FVF.domain_next (sm@66@00 s@$ g@8@00))))
  :qid |qp.fvfDomDef30|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and (Set_in (inv@63@00 s@$ g@8@00 r) g@8@00) (img@64@00 s@$ g@8@00 r))
      (and (img@50@00 s@$ g@8@00 r) (Set_in (inv@49@00 s@$ g@8@00 r) g@8@00)))
    (=
      ($FVF.lookup_next (sm@66@00 s@$ g@8@00) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second s@$))) r)))
  :pattern (($FVF.lookup_next (sm@66@00 s@$ g@8@00) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second s@$))) r))
  :qid |qp.fvfValDef28|)))
(assert (forall ((r $Ref)) (!
  ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second s@$))) r) r)
  :pattern (($FVF.lookup_next (sm@66@00 s@$ g@8@00) r))
  :qid |qp.fvfResTrgDef29|)))
(assert (=>
  (acyclic_graph<Bool> ($$ ($SortWrappers.$FVF<next>To$Snap (sm@56@00 s@$ g@8@00)) g@8@00))
  (and
    (acyclic_graph<Bool> ($$ ($SortWrappers.$FVF<next>To$Snap (sm@56@00 s@$ g@8@00)) g@8@00))
    (forall ((r $Ref)) (!
      (=>
        (Set_in (inv@58@00 s@$ g@8@00 r) g@8@00)
        ($FVF.loc_next ($FVF.lookup_next (sm@60@00 s@$ g@8@00) r) r))
      :pattern ((inv@58@00 s@$ g@8@00 r))
      :qid |quant-u-13706|))
    ($$%precondition ($SortWrappers.$FVF<next>To$Snap (sm@61@00 s@$ g@8@00)) g@8@00)
    (=>
      (func_graph<Bool> ($$ ($SortWrappers.$FVF<next>To$Snap (sm@61@00 s@$ g@8@00)) g@8@00))
      (and
        (func_graph<Bool> ($$ ($SortWrappers.$FVF<next>To$Snap (sm@61@00 s@$ g@8@00)) g@8@00))
        (forall ((r $Ref)) (!
          (=>
            (Set_in (inv@63@00 s@$ g@8@00 r) g@8@00)
            ($FVF.loc_next ($FVF.lookup_next (sm@65@00 s@$ g@8@00) r) r))
          :pattern ((inv@63@00 s@$ g@8@00 r))
          :qid |quant-u-13709|))
        ($$%precondition ($SortWrappers.$FVF<next>To$Snap (sm@66@00 s@$ g@8@00)) g@8@00)))
    (or
      (func_graph<Bool> ($$ ($SortWrappers.$FVF<next>To$Snap (sm@61@00 s@$ g@8@00)) g@8@00))
      (not
        (func_graph<Bool> ($$ ($SortWrappers.$FVF<next>To$Snap (sm@61@00 s@$ g@8@00)) g@8@00)))))))
(assert (or
  (acyclic_graph<Bool> ($$ ($SortWrappers.$FVF<next>To$Snap (sm@56@00 s@$ g@8@00)) g@8@00))
  (not
    (acyclic_graph<Bool> ($$ ($SortWrappers.$FVF<next>To$Snap (sm@56@00 s@$ g@8@00)) g@8@00)))))
(assert (=
  result@9@00
  (and
    (acyclic_graph<Bool> ($$ ($SortWrappers.$FVF<next>To$Snap (sm@56@00 s@$ g@8@00)) g@8@00))
    (and
      (func_graph<Bool> ($$ ($SortWrappers.$FVF<next>To$Snap (sm@61@00 s@$ g@8@00)) g@8@00))
      (unshared_graph<Bool> ($$ ($SortWrappers.$FVF<next>To$Snap (sm@66@00 s@$ g@8@00)) g@8@00))))))
(pop) ; 1
(assert (forall ((s@$ $Snap) (g@8@00 Set<$Ref>)) (!
  (and
    (forall ((n@47@00 $Ref)) (!
      (=>
        (Set_in n@47@00 g@8@00)
        (and
          (= (inv@49@00 s@$ g@8@00 n@47@00) n@47@00)
          (img@50@00 s@$ g@8@00 n@47@00)))
      :pattern (($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second s@$))) n@47@00) n@47@00))
      :qid |quant-u-13700|))
    (forall ((r $Ref)) (!
      (=>
        (and (img@50@00 s@$ g@8@00 r) (Set_in (inv@49@00 s@$ g@8@00 r) g@8@00))
        (= (inv@49@00 s@$ g@8@00 r) r))
      :pattern ((inv@49@00 s@$ g@8@00 r))
      :qid |next-fctOfInv|))
    (forall ((n@53@00 $Ref)) (!
      (=>
        (Set_in n@53@00 g@8@00)
        (and
          (= (inv@54@00 s@$ g@8@00 n@53@00) n@53@00)
          (img@55@00 s@$ g@8@00 n@53@00)))
      :pattern ((Set_in n@53@00 g@8@00))
      :pattern ((inv@54@00 s@$ g@8@00 n@53@00))
      :pattern ((img@55@00 s@$ g@8@00 n@53@00))
      :qid |next-invOfFct|))
    (forall ((r $Ref)) (!
      (=>
        (and (img@55@00 s@$ g@8@00 r) (Set_in (inv@54@00 s@$ g@8@00 r) g@8@00))
        (= (inv@54@00 s@$ g@8@00 r) r))
      :pattern ((inv@54@00 s@$ g@8@00 r))
      :qid |next-fctOfInv|))
    (forall ((n@57@00 $Ref)) (!
      (=>
        (Set_in n@57@00 g@8@00)
        (and
          (= (inv@58@00 s@$ g@8@00 n@57@00) n@57@00)
          (img@59@00 s@$ g@8@00 n@57@00)))
      :pattern ((Set_in n@57@00 g@8@00))
      :pattern ((inv@58@00 s@$ g@8@00 n@57@00))
      :pattern ((img@59@00 s@$ g@8@00 n@57@00))
      :qid |next-invOfFct|))
    (forall ((r $Ref)) (!
      (=>
        (and (img@59@00 s@$ g@8@00 r) (Set_in (inv@58@00 s@$ g@8@00 r) g@8@00))
        (= (inv@58@00 s@$ g@8@00 r) r))
      :pattern ((inv@58@00 s@$ g@8@00 r))
      :qid |next-fctOfInv|))
    (forall ((n@62@00 $Ref)) (!
      (=>
        (Set_in n@62@00 g@8@00)
        (and
          (= (inv@63@00 s@$ g@8@00 n@62@00) n@62@00)
          (img@64@00 s@$ g@8@00 n@62@00)))
      :pattern ((Set_in n@62@00 g@8@00))
      :pattern ((inv@63@00 s@$ g@8@00 n@62@00))
      :pattern ((img@64@00 s@$ g@8@00 n@62@00))
      :qid |next-invOfFct|))
    (forall ((r $Ref)) (!
      (=>
        (and (img@64@00 s@$ g@8@00 r) (Set_in (inv@63@00 s@$ g@8@00 r) g@8@00))
        (= (inv@63@00 s@$ g@8@00 r) r))
      :pattern ((inv@63@00 s@$ g@8@00 r))
      :qid |next-fctOfInv|))
    (forall ((r $Ref)) (!
      true
      :pattern (($FVF.lookup_next (sm@48@00 s@$ g@8@00) r))
      :qid |qp.fvfResTrgDef15|))
    (forall ((r $Ref)) (!
      (=>
        (and (img@50@00 s@$ g@8@00 r) (Set_in (inv@49@00 s@$ g@8@00 r) g@8@00))
        (=
          ($FVF.lookup_next (sm@51@00 s@$ g@8@00) r)
          ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second s@$))) r)))
      :pattern (($FVF.lookup_next (sm@51@00 s@$ g@8@00) r))
      :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second s@$))) r))
      :qid |qp.fvfValDef16|))
    (forall ((r $Ref)) (!
      ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second s@$))) r) r)
      :pattern (($FVF.lookup_next (sm@51@00 s@$ g@8@00) r))
      :qid |qp.fvfResTrgDef17|))
    (forall ((r $Ref)) (!
      (and
        (=>
          (Set_in r ($FVF.domain_next (sm@56@00 s@$ g@8@00)))
          (and (Set_in (inv@54@00 s@$ g@8@00 r) g@8@00) (img@55@00 s@$ g@8@00 r)))
        (=>
          (and (Set_in (inv@54@00 s@$ g@8@00 r) g@8@00) (img@55@00 s@$ g@8@00 r))
          (Set_in r ($FVF.domain_next (sm@56@00 s@$ g@8@00)))))
      :pattern ((Set_in r ($FVF.domain_next (sm@56@00 s@$ g@8@00))))
      :qid |qp.fvfDomDef20|))
    (forall ((r $Ref)) (!
      (=>
        (and
          (and (Set_in (inv@54@00 s@$ g@8@00 r) g@8@00) (img@55@00 s@$ g@8@00 r))
          (and (img@50@00 s@$ g@8@00 r) (Set_in (inv@49@00 s@$ g@8@00 r) g@8@00)))
        (=
          ($FVF.lookup_next (sm@56@00 s@$ g@8@00) r)
          ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second s@$))) r)))
      :pattern (($FVF.lookup_next (sm@56@00 s@$ g@8@00) r))
      :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second s@$))) r))
      :qid |qp.fvfValDef18|))
    (forall ((r $Ref)) (!
      ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second s@$))) r) r)
      :pattern (($FVF.lookup_next (sm@56@00 s@$ g@8@00) r))
      :qid |qp.fvfResTrgDef19|))
    (forall ((r $Ref)) (!
      (and
        (=>
          (Set_in r ($FVF.domain_next (sm@61@00 s@$ g@8@00)))
          (and (Set_in (inv@58@00 s@$ g@8@00 r) g@8@00) (img@59@00 s@$ g@8@00 r)))
        (=>
          (and (Set_in (inv@58@00 s@$ g@8@00 r) g@8@00) (img@59@00 s@$ g@8@00 r))
          (Set_in r ($FVF.domain_next (sm@61@00 s@$ g@8@00)))))
      :pattern ((Set_in r ($FVF.domain_next (sm@61@00 s@$ g@8@00))))
      :qid |qp.fvfDomDef25|))
    (forall ((r $Ref)) (!
      (=>
        (and
          (and (Set_in (inv@58@00 s@$ g@8@00 r) g@8@00) (img@59@00 s@$ g@8@00 r))
          (and (img@50@00 s@$ g@8@00 r) (Set_in (inv@49@00 s@$ g@8@00 r) g@8@00)))
        (=
          ($FVF.lookup_next (sm@61@00 s@$ g@8@00) r)
          ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second s@$))) r)))
      :pattern (($FVF.lookup_next (sm@61@00 s@$ g@8@00) r))
      :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second s@$))) r))
      :qid |qp.fvfValDef23|))
    (forall ((r $Ref)) (!
      ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second s@$))) r) r)
      :pattern (($FVF.lookup_next (sm@61@00 s@$ g@8@00) r))
      :qid |qp.fvfResTrgDef24|))
    (forall ((r $Ref)) (!
      (and
        (=>
          (Set_in r ($FVF.domain_next (sm@66@00 s@$ g@8@00)))
          (and (Set_in (inv@63@00 s@$ g@8@00 r) g@8@00) (img@64@00 s@$ g@8@00 r)))
        (=>
          (and (Set_in (inv@63@00 s@$ g@8@00 r) g@8@00) (img@64@00 s@$ g@8@00 r))
          (Set_in r ($FVF.domain_next (sm@66@00 s@$ g@8@00)))))
      :pattern ((Set_in r ($FVF.domain_next (sm@66@00 s@$ g@8@00))))
      :qid |qp.fvfDomDef30|))
    (forall ((r $Ref)) (!
      (=>
        (and
          (and (Set_in (inv@63@00 s@$ g@8@00 r) g@8@00) (img@64@00 s@$ g@8@00 r))
          (and (img@50@00 s@$ g@8@00 r) (Set_in (inv@49@00 s@$ g@8@00 r) g@8@00)))
        (=
          ($FVF.lookup_next (sm@66@00 s@$ g@8@00) r)
          ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second s@$))) r)))
      :pattern (($FVF.lookup_next (sm@66@00 s@$ g@8@00) r))
      :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second s@$))) r))
      :qid |qp.fvfValDef28|))
    (forall ((r $Ref)) (!
      ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second s@$))) r) r)
      :pattern (($FVF.lookup_next (sm@66@00 s@$ g@8@00) r))
      :qid |qp.fvfResTrgDef29|))
    (=>
      (acyclic_list_segment%precondition s@$ g@8@00)
      (=
        (acyclic_list_segment s@$ g@8@00)
        (and
          (acyclic_graph<Bool> ($$ ($SortWrappers.$FVF<next>To$Snap (sm@56@00 s@$ g@8@00)) g@8@00))
          (and
            (func_graph<Bool> ($$ ($SortWrappers.$FVF<next>To$Snap (sm@56@00 s@$ g@8@00)) g@8@00))
            (unshared_graph<Bool> ($$ ($SortWrappers.$FVF<next>To$Snap (sm@56@00 s@$ g@8@00)) g@8@00)))))))
  :pattern ((acyclic_list_segment s@$ g@8@00))
  :qid |quant-u-13711|)))
(assert (forall ((s@$ $Snap) (g@8@00 Set<$Ref>)) (!
  (=>
    (acyclic_list_segment%precondition s@$ g@8@00)
    (and
      ($$%precondition ($SortWrappers.$FVF<next>To$Snap (sm@56@00 s@$ g@8@00)) g@8@00)
      (=>
        (acyclic_graph<Bool> ($$ ($SortWrappers.$FVF<next>To$Snap (sm@56@00 s@$ g@8@00)) g@8@00))
        (and
          ($$%precondition ($SortWrappers.$FVF<next>To$Snap (sm@56@00 s@$ g@8@00)) g@8@00)
          (=>
            (func_graph<Bool> ($$ ($SortWrappers.$FVF<next>To$Snap (sm@56@00 s@$ g@8@00)) g@8@00))
            ($$%precondition ($SortWrappers.$FVF<next>To$Snap (sm@56@00 s@$ g@8@00)) g@8@00))))))
  :pattern ((acyclic_list_segment s@$ g@8@00))
  :qid |quant-u-13712|)))
; ---------- FUNCTION apply_TCFraming----------
(declare-fun g0@10@00 () Set<$Ref>)
(declare-fun g1@11@00 () Set<$Ref>)
(declare-fun result@12@00 () Bool)
; ----- Well-definedness of specifications -----
(push) ; 1
(assert (= s@$ ($Snap.combine ($Snap.first s@$) ($Snap.second s@$))))
(declare-const n@67@00 $Ref)
(push) ; 2
; [eval] (n in g0)
(assert (Set_in n@67@00 g0@10@00))
(declare-fun sm@68@00 ($Snap Set<$Ref> Set<$Ref>) $FVF<next>)
; Definitional axioms for snapshot map values
(pop) ; 2
(declare-fun inv@69@00 ($Snap Set<$Ref> Set<$Ref> $Ref) $Ref)
(declare-fun img@70@00 ($Snap Set<$Ref> Set<$Ref> $Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
; Check receiver injectivity
(push) ; 2
(assert (not (forall ((n1@67@00 $Ref) (n2@67@00 $Ref)) (!
  (=>
    (and
      (Set_in n1@67@00 g0@10@00)
      (Set_in n2@67@00 g0@10@00)
      (= n1@67@00 n2@67@00))
    (= n1@67@00 n2@67@00))
  
  :qid |next-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 2
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((n@67@00 $Ref)) (!
  (=>
    (Set_in n@67@00 g0@10@00)
    (and
      (= (inv@69@00 s@$ g0@10@00 g1@11@00 n@67@00) n@67@00)
      (img@70@00 s@$ g0@10@00 g1@11@00 n@67@00)))
  :pattern (($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first s@$)) n@67@00) n@67@00))
  :qid |quant-u-13714|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@70@00 s@$ g0@10@00 g1@11@00 r)
      (Set_in (inv@69@00 s@$ g0@10@00 g1@11@00 r) g0@10@00))
    (= (inv@69@00 s@$ g0@10@00 g1@11@00 r) r))
  :pattern ((inv@69@00 s@$ g0@10@00 g1@11@00 r))
  :qid |next-fctOfInv|)))
; Permissions are non-negative
; Permission implies non-null receiver
(assert (forall ((n@67@00 $Ref)) (!
  (=> (Set_in n@67@00 g0@10@00) (not (= n@67@00 $Ref.null)))
  :pattern (($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first s@$)) n@67@00) n@67@00))
  :qid |next-permImpliesNonNull|)))
(declare-fun sm@71@00 ($Snap Set<$Ref> Set<$Ref>) $FVF<next>)
; Definitional axioms for snapshot map values
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@70@00 s@$ g0@10@00 g1@11@00 r)
      (Set_in (inv@69@00 s@$ g0@10@00 g1@11@00 r) g0@10@00))
    (=
      ($FVF.lookup_next (sm@71@00 s@$ g0@10@00 g1@11@00) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first s@$)) r)))
  :pattern (($FVF.lookup_next (sm@71@00 s@$ g0@10@00 g1@11@00) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first s@$)) r))
  :qid |qp.fvfValDef32|)))
(assert (forall ((r $Ref)) (!
  ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first s@$)) r) r)
  :pattern (($FVF.lookup_next (sm@71@00 s@$ g0@10@00 g1@11@00) r))
  :qid |qp.fvfResTrgDef33|)))
(assert (forall ((r $Ref)) (!
  (=>
    (Set_in (inv@69@00 s@$ g0@10@00 g1@11@00 r) g0@10@00)
    ($FVF.loc_next ($FVF.lookup_next (sm@71@00 s@$ g0@10@00 g1@11@00) r) r))
  :pattern ((inv@69@00 s@$ g0@10@00 g1@11@00 r))
  :qid |quant-u-13715|)))
(assert (=
  ($Snap.second s@$)
  ($Snap.combine
    ($Snap.first ($Snap.second s@$))
    ($Snap.second ($Snap.second s@$)))))
(declare-const n@72@00 $Ref)
(push) ; 2
; [eval] (n in g1)
(assert (Set_in n@72@00 g1@11@00))
; Definitional axioms for snapshot map values
(pop) ; 2
(declare-fun inv@73@00 ($Snap Set<$Ref> Set<$Ref> $Ref) $Ref)
(declare-fun img@74@00 ($Snap Set<$Ref> Set<$Ref> $Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
; Check receiver injectivity
(push) ; 2
(assert (not (forall ((n1@72@00 $Ref) (n2@72@00 $Ref)) (!
  (=>
    (and
      (Set_in n1@72@00 g1@11@00)
      (Set_in n2@72@00 g1@11@00)
      (= n1@72@00 n2@72@00))
    (= n1@72@00 n2@72@00))
  
  :qid |next-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 2
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((n@72@00 $Ref)) (!
  (=>
    (Set_in n@72@00 g1@11@00)
    (and
      (= (inv@73@00 s@$ g0@10@00 g1@11@00 n@72@00) n@72@00)
      (img@74@00 s@$ g0@10@00 g1@11@00 n@72@00)))
  :pattern (($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second s@$))) n@72@00) n@72@00))
  :qid |quant-u-13717|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@74@00 s@$ g0@10@00 g1@11@00 r)
      (Set_in (inv@73@00 s@$ g0@10@00 g1@11@00 r) g1@11@00))
    (= (inv@73@00 s@$ g0@10@00 g1@11@00 r) r))
  :pattern ((inv@73@00 s@$ g0@10@00 g1@11@00 r))
  :qid |next-fctOfInv|)))
; Permissions are non-negative
; Permission implies non-null receiver
(assert (forall ((n@72@00 $Ref)) (!
  (=> (Set_in n@72@00 g1@11@00) (not (= n@72@00 $Ref.null)))
  :pattern (($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second s@$))) n@72@00) n@72@00))
  :qid |next-permImpliesNonNull|)))
(push) ; 2
(set-option :timeout 10)
(assert (not (forall ((r $Ref)) (!
  (and
    (= n@72@00 n@67@00)
    (=
      (and
        (img@74@00 s@$ g0@10@00 g1@11@00 r)
        (Set_in (inv@73@00 s@$ g0@10@00 g1@11@00 r) g1@11@00))
      (and
        (img@70@00 s@$ g0@10@00 g1@11@00 r)
        (Set_in (inv@69@00 s@$ g0@10@00 g1@11@00 r) g0@10@00))))
  
  :qid |quant-u-13718|))))
(check-sat)
; unknown
(pop) ; 2
; 0.00s
; (get-info :all-statistics)
(declare-fun sm@75@00 ($Snap Set<$Ref> Set<$Ref>) $FVF<next>)
; Definitional axioms for snapshot map values
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@70@00 s@$ g0@10@00 g1@11@00 r)
      (Set_in (inv@69@00 s@$ g0@10@00 g1@11@00 r) g0@10@00))
    (=
      ($FVF.lookup_next (sm@75@00 s@$ g0@10@00 g1@11@00) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first s@$)) r)))
  :pattern (($FVF.lookup_next (sm@75@00 s@$ g0@10@00 g1@11@00) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first s@$)) r))
  :qid |qp.fvfValDef34|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@74@00 s@$ g0@10@00 g1@11@00 r)
      (Set_in (inv@73@00 s@$ g0@10@00 g1@11@00 r) g1@11@00))
    (=
      ($FVF.lookup_next (sm@75@00 s@$ g0@10@00 g1@11@00) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second s@$))) r)))
  :pattern (($FVF.lookup_next (sm@75@00 s@$ g0@10@00 g1@11@00) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second s@$))) r))
  :qid |qp.fvfValDef35|)))
(assert (forall ((r $Ref)) (!
  (and
    ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first s@$)) r) r)
    ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second s@$))) r) r))
  :pattern (($FVF.lookup_next (sm@75@00 s@$ g0@10@00 g1@11@00) r))
  :qid |qp.fvfResTrgDef36|)))
(assert (forall ((r $Ref)) (!
  (=>
    (Set_in (inv@73@00 s@$ g0@10@00 g1@11@00 r) g1@11@00)
    ($FVF.loc_next ($FVF.lookup_next (sm@75@00 s@$ g0@10@00 g1@11@00) r) r))
  :pattern ((inv@73@00 s@$ g0@10@00 g1@11@00 r))
  :qid |quant-u-13719|)))
(assert (= ($Snap.second ($Snap.second s@$)) $Snap.unit))
; [eval] (g1 intersection g0) == Set[Ref]()
; [eval] (g1 intersection g0)
; [eval] Set[Ref]()
(assert (Set_equal (Set_intersection g1@11@00 g0@10@00) (as Set_empty  Set<$Ref>)))
(declare-const $t@76@00 $Snap)
(assert (= $t@76@00 ($Snap.combine ($Snap.first $t@76@00) ($Snap.second $t@76@00))))
(assert (= ($Snap.first $t@76@00) $Snap.unit))
; [eval] (g0 union g1) == (g1 union g0)
; [eval] (g0 union g1)
; [eval] (g1 union g0)
(assert (Set_equal (Set_union g0@10@00 g1@11@00) (Set_union g1@11@00 g0@10@00)))
(assert (=
  ($Snap.second $t@76@00)
  ($Snap.combine
    ($Snap.first ($Snap.second $t@76@00))
    ($Snap.second ($Snap.second $t@76@00)))))
(assert (= ($Snap.first ($Snap.second $t@76@00)) $Snap.unit))
; [eval] (forall u: Ref, v: Ref :: { exists_path($$(g0), u, v) } { exists_path($$((g0 union g1)), u, v) } (u in g0) && ((v in g0) && exists_path($$(g0), u, v)) ==> exists_path($$((g0 union g1)), u, v))
(declare-const u@77@00 $Ref)
(declare-const v@78@00 $Ref)
(set-option :timeout 0)
(push) ; 2
; [eval] (u in g0) && ((v in g0) && exists_path($$(g0), u, v)) ==> exists_path($$((g0 union g1)), u, v)
; [eval] (u in g0) && ((v in g0) && exists_path($$(g0), u, v))
; [eval] (u in g0)
(push) ; 3
; [then-branch: 16 | !(u@77@00 in g0@10@00) | live]
; [else-branch: 16 | u@77@00 in g0@10@00 | live]
(push) ; 4
; [then-branch: 16 | !(u@77@00 in g0@10@00)]
(assert (not (Set_in u@77@00 g0@10@00)))
(pop) ; 4
(push) ; 4
; [else-branch: 16 | u@77@00 in g0@10@00]
(assert (Set_in u@77@00 g0@10@00))
; [eval] (v in g0)
(push) ; 5
; [then-branch: 17 | !(v@78@00 in g0@10@00) | live]
; [else-branch: 17 | v@78@00 in g0@10@00 | live]
(push) ; 6
; [then-branch: 17 | !(v@78@00 in g0@10@00)]
(assert (not (Set_in v@78@00 g0@10@00)))
(pop) ; 6
(push) ; 6
; [else-branch: 17 | v@78@00 in g0@10@00]
(assert (Set_in v@78@00 g0@10@00))
; [eval] exists_path($$(g0), u, v)
; [eval] $$(g0)
(push) ; 7
(declare-const n@79@00 $Ref)
(push) ; 8
; [eval] (n in refs)
(assert (Set_in n@79@00 g0@10@00))
(pop) ; 8
(declare-fun inv@80@00 ($Snap Set<$Ref> Set<$Ref> $Ref) $Ref)
(declare-fun img@81@00 ($Snap Set<$Ref> Set<$Ref> $Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
; Definitional axioms for snapshot map domain
; Definitional axioms for snapshot map values
; Check receiver injectivity
(push) ; 8
(assert (not (forall ((n1@79@00 $Ref) (n2@79@00 $Ref)) (!
  (=>
    (and
      (and
        (Set_in n1@79@00 g0@10@00)
        ($FVF.loc_next ($FVF.lookup_next (sm@75@00 s@$ g0@10@00 g1@11@00) n1@79@00) n1@79@00))
      (and
        (Set_in n2@79@00 g0@10@00)
        ($FVF.loc_next ($FVF.lookup_next (sm@75@00 s@$ g0@10@00 g1@11@00) n2@79@00) n2@79@00))
      (= n1@79@00 n2@79@00))
    (= n1@79@00 n2@79@00))
  
  :qid |next-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 8
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((n@79@00 $Ref)) (!
  (=>
    (Set_in n@79@00 g0@10@00)
    (and
      (= (inv@80@00 s@$ g0@10@00 g1@11@00 n@79@00) n@79@00)
      (img@81@00 s@$ g0@10@00 g1@11@00 n@79@00)))
  :pattern ((Set_in n@79@00 g0@10@00))
  :pattern ((inv@80@00 s@$ g0@10@00 g1@11@00 n@79@00))
  :pattern ((img@81@00 s@$ g0@10@00 g1@11@00 n@79@00))
  :qid |next-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@81@00 s@$ g0@10@00 g1@11@00 r)
      (Set_in (inv@80@00 s@$ g0@10@00 g1@11@00 r) g0@10@00))
    (= (inv@80@00 s@$ g0@10@00 g1@11@00 r) r))
  :pattern ((inv@80@00 s@$ g0@10@00 g1@11@00 r))
  :qid |next-fctOfInv|)))
(assert (forall ((r $Ref)) (!
  (=>
    (Set_in (inv@80@00 s@$ g0@10@00 g1@11@00 r) g0@10@00)
    ($FVF.loc_next ($FVF.lookup_next (sm@75@00 s@$ g0@10@00 g1@11@00) r) r))
  :pattern ((inv@80@00 s@$ g0@10@00 g1@11@00 r))
  :qid |quant-u-13721|)))
(push) ; 8
(assert (not (forall ((r $Ref)) (!
  (=>
    (and
      (Set_in (inv@80@00 s@$ g0@10@00 g1@11@00 r) g0@10@00)
      (img@81@00 s@$ g0@10@00 g1@11@00 r)
      (= r (inv@80@00 s@$ g0@10@00 g1@11@00 r)))
    (>
      (+
        (ite
          (and
            (img@70@00 s@$ g0@10@00 g1@11@00 r)
            (Set_in (inv@69@00 s@$ g0@10@00 g1@11@00 r) g0@10@00))
          $Perm.Write
          $Perm.No)
        (ite
          (and
            (img@74@00 s@$ g0@10@00 g1@11@00 r)
            (Set_in (inv@73@00 s@$ g0@10@00 g1@11@00 r) g1@11@00))
          $Perm.Write
          $Perm.No))
      $Perm.No))
  
  :qid |quant-u-13722|))))
(check-sat)
; unsat
(pop) ; 8
; 0.00s
; (get-info :all-statistics)
(declare-fun sm@82@00 ($Snap Set<$Ref> Set<$Ref>) $FVF<next>)
; Definitional axioms for snapshot map domain
(assert (forall ((r $Ref)) (!
  (and
    (=>
      (Set_in r ($FVF.domain_next (sm@82@00 s@$ g0@10@00 g1@11@00)))
      (and
        (Set_in (inv@80@00 s@$ g0@10@00 g1@11@00 r) g0@10@00)
        (img@81@00 s@$ g0@10@00 g1@11@00 r)))
    (=>
      (and
        (Set_in (inv@80@00 s@$ g0@10@00 g1@11@00 r) g0@10@00)
        (img@81@00 s@$ g0@10@00 g1@11@00 r))
      (Set_in r ($FVF.domain_next (sm@82@00 s@$ g0@10@00 g1@11@00)))))
  :pattern ((Set_in r ($FVF.domain_next (sm@82@00 s@$ g0@10@00 g1@11@00))))
  :qid |qp.fvfDomDef40|)))
; Definitional axioms for snapshot map values
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and
        (Set_in (inv@80@00 s@$ g0@10@00 g1@11@00 r) g0@10@00)
        (img@81@00 s@$ g0@10@00 g1@11@00 r))
      (and
        (img@70@00 s@$ g0@10@00 g1@11@00 r)
        (Set_in (inv@69@00 s@$ g0@10@00 g1@11@00 r) g0@10@00)))
    (=
      ($FVF.lookup_next (sm@82@00 s@$ g0@10@00 g1@11@00) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first s@$)) r)))
  :pattern (($FVF.lookup_next (sm@82@00 s@$ g0@10@00 g1@11@00) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first s@$)) r))
  :qid |qp.fvfValDef37|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and
        (Set_in (inv@80@00 s@$ g0@10@00 g1@11@00 r) g0@10@00)
        (img@81@00 s@$ g0@10@00 g1@11@00 r))
      (and
        (img@74@00 s@$ g0@10@00 g1@11@00 r)
        (Set_in (inv@73@00 s@$ g0@10@00 g1@11@00 r) g1@11@00)))
    (=
      ($FVF.lookup_next (sm@82@00 s@$ g0@10@00 g1@11@00) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second s@$))) r)))
  :pattern (($FVF.lookup_next (sm@82@00 s@$ g0@10@00 g1@11@00) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second s@$))) r))
  :qid |qp.fvfValDef38|)))
(assert (forall ((r $Ref)) (!
  (and
    ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first s@$)) r) r)
    ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second s@$))) r) r))
  :pattern (($FVF.lookup_next (sm@82@00 s@$ g0@10@00 g1@11@00) r))
  :qid |qp.fvfResTrgDef39|)))
(assert ($$%precondition ($SortWrappers.$FVF<next>To$Snap (sm@82@00 s@$ g0@10@00 g1@11@00)) g0@10@00))
(pop) ; 7
; Joined path conditions
(assert (forall ((n@79@00 $Ref)) (!
  (=>
    (Set_in n@79@00 g0@10@00)
    (and
      (= (inv@80@00 s@$ g0@10@00 g1@11@00 n@79@00) n@79@00)
      (img@81@00 s@$ g0@10@00 g1@11@00 n@79@00)))
  :pattern ((Set_in n@79@00 g0@10@00))
  :pattern ((inv@80@00 s@$ g0@10@00 g1@11@00 n@79@00))
  :pattern ((img@81@00 s@$ g0@10@00 g1@11@00 n@79@00))
  :qid |next-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@81@00 s@$ g0@10@00 g1@11@00 r)
      (Set_in (inv@80@00 s@$ g0@10@00 g1@11@00 r) g0@10@00))
    (= (inv@80@00 s@$ g0@10@00 g1@11@00 r) r))
  :pattern ((inv@80@00 s@$ g0@10@00 g1@11@00 r))
  :qid |next-fctOfInv|)))
(assert (forall ((r $Ref)) (!
  (and
    (=>
      (Set_in r ($FVF.domain_next (sm@82@00 s@$ g0@10@00 g1@11@00)))
      (and
        (Set_in (inv@80@00 s@$ g0@10@00 g1@11@00 r) g0@10@00)
        (img@81@00 s@$ g0@10@00 g1@11@00 r)))
    (=>
      (and
        (Set_in (inv@80@00 s@$ g0@10@00 g1@11@00 r) g0@10@00)
        (img@81@00 s@$ g0@10@00 g1@11@00 r))
      (Set_in r ($FVF.domain_next (sm@82@00 s@$ g0@10@00 g1@11@00)))))
  :pattern ((Set_in r ($FVF.domain_next (sm@82@00 s@$ g0@10@00 g1@11@00))))
  :qid |qp.fvfDomDef40|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and
        (Set_in (inv@80@00 s@$ g0@10@00 g1@11@00 r) g0@10@00)
        (img@81@00 s@$ g0@10@00 g1@11@00 r))
      (and
        (img@70@00 s@$ g0@10@00 g1@11@00 r)
        (Set_in (inv@69@00 s@$ g0@10@00 g1@11@00 r) g0@10@00)))
    (=
      ($FVF.lookup_next (sm@82@00 s@$ g0@10@00 g1@11@00) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first s@$)) r)))
  :pattern (($FVF.lookup_next (sm@82@00 s@$ g0@10@00 g1@11@00) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first s@$)) r))
  :qid |qp.fvfValDef37|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and
        (Set_in (inv@80@00 s@$ g0@10@00 g1@11@00 r) g0@10@00)
        (img@81@00 s@$ g0@10@00 g1@11@00 r))
      (and
        (img@74@00 s@$ g0@10@00 g1@11@00 r)
        (Set_in (inv@73@00 s@$ g0@10@00 g1@11@00 r) g1@11@00)))
    (=
      ($FVF.lookup_next (sm@82@00 s@$ g0@10@00 g1@11@00) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second s@$))) r)))
  :pattern (($FVF.lookup_next (sm@82@00 s@$ g0@10@00 g1@11@00) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second s@$))) r))
  :qid |qp.fvfValDef38|)))
(assert (forall ((r $Ref)) (!
  (and
    ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first s@$)) r) r)
    ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second s@$))) r) r))
  :pattern (($FVF.lookup_next (sm@82@00 s@$ g0@10@00 g1@11@00) r))
  :qid |qp.fvfResTrgDef39|)))
(assert (and
  (forall ((r $Ref)) (!
    (=>
      (Set_in (inv@80@00 s@$ g0@10@00 g1@11@00 r) g0@10@00)
      ($FVF.loc_next ($FVF.lookup_next (sm@75@00 s@$ g0@10@00 g1@11@00) r) r))
    :pattern ((inv@80@00 s@$ g0@10@00 g1@11@00 r))
    :qid |quant-u-13721|))
  ($$%precondition ($SortWrappers.$FVF<next>To$Snap (sm@82@00 s@$ g0@10@00 g1@11@00)) g0@10@00)))
(pop) ; 6
(pop) ; 5
; Joined path conditions
; Joined path conditions
(assert (forall ((n@79@00 $Ref)) (!
  (=>
    (Set_in n@79@00 g0@10@00)
    (and
      (= (inv@80@00 s@$ g0@10@00 g1@11@00 n@79@00) n@79@00)
      (img@81@00 s@$ g0@10@00 g1@11@00 n@79@00)))
  :pattern ((Set_in n@79@00 g0@10@00))
  :pattern ((inv@80@00 s@$ g0@10@00 g1@11@00 n@79@00))
  :pattern ((img@81@00 s@$ g0@10@00 g1@11@00 n@79@00))
  :qid |next-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@81@00 s@$ g0@10@00 g1@11@00 r)
      (Set_in (inv@80@00 s@$ g0@10@00 g1@11@00 r) g0@10@00))
    (= (inv@80@00 s@$ g0@10@00 g1@11@00 r) r))
  :pattern ((inv@80@00 s@$ g0@10@00 g1@11@00 r))
  :qid |next-fctOfInv|)))
(assert (forall ((r $Ref)) (!
  (and
    (=>
      (Set_in r ($FVF.domain_next (sm@82@00 s@$ g0@10@00 g1@11@00)))
      (and
        (Set_in (inv@80@00 s@$ g0@10@00 g1@11@00 r) g0@10@00)
        (img@81@00 s@$ g0@10@00 g1@11@00 r)))
    (=>
      (and
        (Set_in (inv@80@00 s@$ g0@10@00 g1@11@00 r) g0@10@00)
        (img@81@00 s@$ g0@10@00 g1@11@00 r))
      (Set_in r ($FVF.domain_next (sm@82@00 s@$ g0@10@00 g1@11@00)))))
  :pattern ((Set_in r ($FVF.domain_next (sm@82@00 s@$ g0@10@00 g1@11@00))))
  :qid |qp.fvfDomDef40|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and
        (Set_in (inv@80@00 s@$ g0@10@00 g1@11@00 r) g0@10@00)
        (img@81@00 s@$ g0@10@00 g1@11@00 r))
      (and
        (img@70@00 s@$ g0@10@00 g1@11@00 r)
        (Set_in (inv@69@00 s@$ g0@10@00 g1@11@00 r) g0@10@00)))
    (=
      ($FVF.lookup_next (sm@82@00 s@$ g0@10@00 g1@11@00) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first s@$)) r)))
  :pattern (($FVF.lookup_next (sm@82@00 s@$ g0@10@00 g1@11@00) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first s@$)) r))
  :qid |qp.fvfValDef37|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and
        (Set_in (inv@80@00 s@$ g0@10@00 g1@11@00 r) g0@10@00)
        (img@81@00 s@$ g0@10@00 g1@11@00 r))
      (and
        (img@74@00 s@$ g0@10@00 g1@11@00 r)
        (Set_in (inv@73@00 s@$ g0@10@00 g1@11@00 r) g1@11@00)))
    (=
      ($FVF.lookup_next (sm@82@00 s@$ g0@10@00 g1@11@00) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second s@$))) r)))
  :pattern (($FVF.lookup_next (sm@82@00 s@$ g0@10@00 g1@11@00) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second s@$))) r))
  :qid |qp.fvfValDef38|)))
(assert (forall ((r $Ref)) (!
  (and
    ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first s@$)) r) r)
    ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second s@$))) r) r))
  :pattern (($FVF.lookup_next (sm@82@00 s@$ g0@10@00 g1@11@00) r))
  :qid |qp.fvfResTrgDef39|)))
(assert (=>
  (Set_in v@78@00 g0@10@00)
  (and
    (Set_in v@78@00 g0@10@00)
    (forall ((r $Ref)) (!
      (=>
        (Set_in (inv@80@00 s@$ g0@10@00 g1@11@00 r) g0@10@00)
        ($FVF.loc_next ($FVF.lookup_next (sm@75@00 s@$ g0@10@00 g1@11@00) r) r))
      :pattern ((inv@80@00 s@$ g0@10@00 g1@11@00 r))
      :qid |quant-u-13721|))
    ($$%precondition ($SortWrappers.$FVF<next>To$Snap (sm@82@00 s@$ g0@10@00 g1@11@00)) g0@10@00))))
(assert (or (Set_in v@78@00 g0@10@00) (not (Set_in v@78@00 g0@10@00))))
(pop) ; 4
(pop) ; 3
; Joined path conditions
; Joined path conditions
(assert (forall ((n@79@00 $Ref)) (!
  (=>
    (Set_in n@79@00 g0@10@00)
    (and
      (= (inv@80@00 s@$ g0@10@00 g1@11@00 n@79@00) n@79@00)
      (img@81@00 s@$ g0@10@00 g1@11@00 n@79@00)))
  :pattern ((Set_in n@79@00 g0@10@00))
  :pattern ((inv@80@00 s@$ g0@10@00 g1@11@00 n@79@00))
  :pattern ((img@81@00 s@$ g0@10@00 g1@11@00 n@79@00))
  :qid |next-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@81@00 s@$ g0@10@00 g1@11@00 r)
      (Set_in (inv@80@00 s@$ g0@10@00 g1@11@00 r) g0@10@00))
    (= (inv@80@00 s@$ g0@10@00 g1@11@00 r) r))
  :pattern ((inv@80@00 s@$ g0@10@00 g1@11@00 r))
  :qid |next-fctOfInv|)))
(assert (forall ((r $Ref)) (!
  (and
    (=>
      (Set_in r ($FVF.domain_next (sm@82@00 s@$ g0@10@00 g1@11@00)))
      (and
        (Set_in (inv@80@00 s@$ g0@10@00 g1@11@00 r) g0@10@00)
        (img@81@00 s@$ g0@10@00 g1@11@00 r)))
    (=>
      (and
        (Set_in (inv@80@00 s@$ g0@10@00 g1@11@00 r) g0@10@00)
        (img@81@00 s@$ g0@10@00 g1@11@00 r))
      (Set_in r ($FVF.domain_next (sm@82@00 s@$ g0@10@00 g1@11@00)))))
  :pattern ((Set_in r ($FVF.domain_next (sm@82@00 s@$ g0@10@00 g1@11@00))))
  :qid |qp.fvfDomDef40|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and
        (Set_in (inv@80@00 s@$ g0@10@00 g1@11@00 r) g0@10@00)
        (img@81@00 s@$ g0@10@00 g1@11@00 r))
      (and
        (img@70@00 s@$ g0@10@00 g1@11@00 r)
        (Set_in (inv@69@00 s@$ g0@10@00 g1@11@00 r) g0@10@00)))
    (=
      ($FVF.lookup_next (sm@82@00 s@$ g0@10@00 g1@11@00) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first s@$)) r)))
  :pattern (($FVF.lookup_next (sm@82@00 s@$ g0@10@00 g1@11@00) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first s@$)) r))
  :qid |qp.fvfValDef37|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and
        (Set_in (inv@80@00 s@$ g0@10@00 g1@11@00 r) g0@10@00)
        (img@81@00 s@$ g0@10@00 g1@11@00 r))
      (and
        (img@74@00 s@$ g0@10@00 g1@11@00 r)
        (Set_in (inv@73@00 s@$ g0@10@00 g1@11@00 r) g1@11@00)))
    (=
      ($FVF.lookup_next (sm@82@00 s@$ g0@10@00 g1@11@00) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second s@$))) r)))
  :pattern (($FVF.lookup_next (sm@82@00 s@$ g0@10@00 g1@11@00) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second s@$))) r))
  :qid |qp.fvfValDef38|)))
(assert (forall ((r $Ref)) (!
  (and
    ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first s@$)) r) r)
    ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second s@$))) r) r))
  :pattern (($FVF.lookup_next (sm@82@00 s@$ g0@10@00 g1@11@00) r))
  :qid |qp.fvfResTrgDef39|)))
(assert (=>
  (Set_in u@77@00 g0@10@00)
  (and
    (Set_in u@77@00 g0@10@00)
    (=>
      (Set_in v@78@00 g0@10@00)
      (and
        (Set_in v@78@00 g0@10@00)
        (forall ((r $Ref)) (!
          (=>
            (Set_in (inv@80@00 s@$ g0@10@00 g1@11@00 r) g0@10@00)
            ($FVF.loc_next ($FVF.lookup_next (sm@75@00 s@$ g0@10@00 g1@11@00) r) r))
          :pattern ((inv@80@00 s@$ g0@10@00 g1@11@00 r))
          :qid |quant-u-13721|))
        ($$%precondition ($SortWrappers.$FVF<next>To$Snap (sm@82@00 s@$ g0@10@00 g1@11@00)) g0@10@00)))
    (or (Set_in v@78@00 g0@10@00) (not (Set_in v@78@00 g0@10@00))))))
(assert (or (Set_in u@77@00 g0@10@00) (not (Set_in u@77@00 g0@10@00))))
(push) ; 3
; [then-branch: 18 | u@77@00 in g0@10@00 && v@78@00 in g0@10@00 && exists_path[Bool]($$(sm@82@00(s@$, g0@10@00, g1@11@00), g0@10@00), u@77@00, v@78@00) | live]
; [else-branch: 18 | !(u@77@00 in g0@10@00 && v@78@00 in g0@10@00 && exists_path[Bool]($$(sm@82@00(s@$, g0@10@00, g1@11@00), g0@10@00), u@77@00, v@78@00)) | live]
(push) ; 4
; [then-branch: 18 | u@77@00 in g0@10@00 && v@78@00 in g0@10@00 && exists_path[Bool]($$(sm@82@00(s@$, g0@10@00, g1@11@00), g0@10@00), u@77@00, v@78@00)]
(assert (and
  (Set_in u@77@00 g0@10@00)
  (and
    (Set_in v@78@00 g0@10@00)
    (exists_path<Bool> ($$ ($SortWrappers.$FVF<next>To$Snap (sm@82@00 s@$ g0@10@00 g1@11@00)) g0@10@00) u@77@00 v@78@00))))
; [eval] exists_path($$((g0 union g1)), u, v)
; [eval] $$((g0 union g1))
; [eval] (g0 union g1)
(push) ; 5
(declare-const n@83@00 $Ref)
(push) ; 6
; [eval] (n in refs)
(assert (Set_in n@83@00 (Set_union g0@10@00 g1@11@00)))
(pop) ; 6
(declare-fun inv@84@00 ($Snap Set<$Ref> Set<$Ref> $Ref) $Ref)
(declare-fun img@85@00 ($Snap Set<$Ref> Set<$Ref> $Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
(declare-fun sm@86@00 ($Snap Set<$Ref> Set<$Ref>) $FVF<next>)
; Definitional axioms for snapshot map domain
; Definitional axioms for snapshot map values
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@70@00 s@$ g0@10@00 g1@11@00 r)
      (Set_in (inv@69@00 s@$ g0@10@00 g1@11@00 r) g0@10@00))
    (=
      ($FVF.lookup_next (sm@86@00 s@$ g0@10@00 g1@11@00) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first s@$)) r)))
  :pattern (($FVF.lookup_next (sm@86@00 s@$ g0@10@00 g1@11@00) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first s@$)) r))
  :qid |qp.fvfValDef41|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@74@00 s@$ g0@10@00 g1@11@00 r)
      (Set_in (inv@73@00 s@$ g0@10@00 g1@11@00 r) g1@11@00))
    (=
      ($FVF.lookup_next (sm@86@00 s@$ g0@10@00 g1@11@00) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second s@$))) r)))
  :pattern (($FVF.lookup_next (sm@86@00 s@$ g0@10@00 g1@11@00) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second s@$))) r))
  :qid |qp.fvfValDef42|)))
(assert (forall ((r $Ref)) (!
  (and
    ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first s@$)) r) r)
    ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second s@$))) r) r))
  :pattern (($FVF.lookup_next (sm@86@00 s@$ g0@10@00 g1@11@00) r))
  :qid |qp.fvfResTrgDef43|)))
; Check receiver injectivity
(push) ; 6
(assert (not (forall ((n1@83@00 $Ref) (n2@83@00 $Ref)) (!
  (=>
    (and
      (and
        (Set_in n1@83@00 (Set_union g0@10@00 g1@11@00))
        ($FVF.loc_next ($FVF.lookup_next (sm@86@00 s@$ g0@10@00 g1@11@00) n1@83@00) n1@83@00))
      (and
        (Set_in n2@83@00 (Set_union g0@10@00 g1@11@00))
        ($FVF.loc_next ($FVF.lookup_next (sm@86@00 s@$ g0@10@00 g1@11@00) n2@83@00) n2@83@00))
      (= n1@83@00 n2@83@00))
    (= n1@83@00 n2@83@00))
  
  :qid |next-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((n@83@00 $Ref)) (!
  (=>
    (Set_in n@83@00 (Set_union g0@10@00 g1@11@00))
    (and
      (= (inv@84@00 s@$ g0@10@00 g1@11@00 n@83@00) n@83@00)
      (img@85@00 s@$ g0@10@00 g1@11@00 n@83@00)))
  :pattern ((Set_in n@83@00 (Set_union g0@10@00 g1@11@00)))
  :pattern ((inv@84@00 s@$ g0@10@00 g1@11@00 n@83@00))
  :pattern ((img@85@00 s@$ g0@10@00 g1@11@00 n@83@00))
  :qid |next-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@85@00 s@$ g0@10@00 g1@11@00 r)
      (Set_in (inv@84@00 s@$ g0@10@00 g1@11@00 r) (Set_union g0@10@00 g1@11@00)))
    (= (inv@84@00 s@$ g0@10@00 g1@11@00 r) r))
  :pattern ((inv@84@00 s@$ g0@10@00 g1@11@00 r))
  :qid |next-fctOfInv|)))
(assert (forall ((r $Ref)) (!
  (=>
    (Set_in (inv@84@00 s@$ g0@10@00 g1@11@00 r) (Set_union g0@10@00 g1@11@00))
    ($FVF.loc_next ($FVF.lookup_next (sm@86@00 s@$ g0@10@00 g1@11@00) r) r))
  :pattern ((inv@84@00 s@$ g0@10@00 g1@11@00 r))
  :qid |quant-u-13724|)))
(push) ; 6
(assert (not (forall ((r $Ref)) (!
  (=>
    (and
      (Set_in (inv@84@00 s@$ g0@10@00 g1@11@00 r) (Set_union g0@10@00 g1@11@00))
      (img@85@00 s@$ g0@10@00 g1@11@00 r)
      (= r (inv@84@00 s@$ g0@10@00 g1@11@00 r)))
    (>
      (+
        (ite
          (and
            (img@70@00 s@$ g0@10@00 g1@11@00 r)
            (Set_in (inv@69@00 s@$ g0@10@00 g1@11@00 r) g0@10@00))
          $Perm.Write
          $Perm.No)
        (ite
          (and
            (img@74@00 s@$ g0@10@00 g1@11@00 r)
            (Set_in (inv@73@00 s@$ g0@10@00 g1@11@00 r) g1@11@00))
          $Perm.Write
          $Perm.No))
      $Perm.No))
  
  :qid |quant-u-13725|))))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(declare-fun sm@87@00 ($Snap Set<$Ref> Set<$Ref>) $FVF<next>)
; Definitional axioms for snapshot map domain
(assert (forall ((r $Ref)) (!
  (and
    (=>
      (Set_in r ($FVF.domain_next (sm@87@00 s@$ g0@10@00 g1@11@00)))
      (and
        (Set_in (inv@84@00 s@$ g0@10@00 g1@11@00 r) (Set_union g0@10@00 g1@11@00))
        (img@85@00 s@$ g0@10@00 g1@11@00 r)))
    (=>
      (and
        (Set_in (inv@84@00 s@$ g0@10@00 g1@11@00 r) (Set_union g0@10@00 g1@11@00))
        (img@85@00 s@$ g0@10@00 g1@11@00 r))
      (Set_in r ($FVF.domain_next (sm@87@00 s@$ g0@10@00 g1@11@00)))))
  :pattern ((Set_in r ($FVF.domain_next (sm@87@00 s@$ g0@10@00 g1@11@00))))
  :qid |qp.fvfDomDef47|)))
; Definitional axioms for snapshot map values
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and
        (Set_in (inv@84@00 s@$ g0@10@00 g1@11@00 r) (Set_union g0@10@00 g1@11@00))
        (img@85@00 s@$ g0@10@00 g1@11@00 r))
      (and
        (img@70@00 s@$ g0@10@00 g1@11@00 r)
        (Set_in (inv@69@00 s@$ g0@10@00 g1@11@00 r) g0@10@00)))
    (=
      ($FVF.lookup_next (sm@87@00 s@$ g0@10@00 g1@11@00) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first s@$)) r)))
  :pattern (($FVF.lookup_next (sm@87@00 s@$ g0@10@00 g1@11@00) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first s@$)) r))
  :qid |qp.fvfValDef44|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and
        (Set_in (inv@84@00 s@$ g0@10@00 g1@11@00 r) (Set_union g0@10@00 g1@11@00))
        (img@85@00 s@$ g0@10@00 g1@11@00 r))
      (and
        (img@74@00 s@$ g0@10@00 g1@11@00 r)
        (Set_in (inv@73@00 s@$ g0@10@00 g1@11@00 r) g1@11@00)))
    (=
      ($FVF.lookup_next (sm@87@00 s@$ g0@10@00 g1@11@00) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second s@$))) r)))
  :pattern (($FVF.lookup_next (sm@87@00 s@$ g0@10@00 g1@11@00) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second s@$))) r))
  :qid |qp.fvfValDef45|)))
(assert (forall ((r $Ref)) (!
  (and
    ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first s@$)) r) r)
    ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second s@$))) r) r))
  :pattern (($FVF.lookup_next (sm@87@00 s@$ g0@10@00 g1@11@00) r))
  :qid |qp.fvfResTrgDef46|)))
(assert ($$%precondition ($SortWrappers.$FVF<next>To$Snap (sm@87@00 s@$ g0@10@00 g1@11@00)) (Set_union g0@10@00 g1@11@00)))
(pop) ; 5
; Joined path conditions
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@70@00 s@$ g0@10@00 g1@11@00 r)
      (Set_in (inv@69@00 s@$ g0@10@00 g1@11@00 r) g0@10@00))
    (=
      ($FVF.lookup_next (sm@86@00 s@$ g0@10@00 g1@11@00) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first s@$)) r)))
  :pattern (($FVF.lookup_next (sm@86@00 s@$ g0@10@00 g1@11@00) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first s@$)) r))
  :qid |qp.fvfValDef41|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@74@00 s@$ g0@10@00 g1@11@00 r)
      (Set_in (inv@73@00 s@$ g0@10@00 g1@11@00 r) g1@11@00))
    (=
      ($FVF.lookup_next (sm@86@00 s@$ g0@10@00 g1@11@00) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second s@$))) r)))
  :pattern (($FVF.lookup_next (sm@86@00 s@$ g0@10@00 g1@11@00) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second s@$))) r))
  :qid |qp.fvfValDef42|)))
(assert (forall ((r $Ref)) (!
  (and
    ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first s@$)) r) r)
    ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second s@$))) r) r))
  :pattern (($FVF.lookup_next (sm@86@00 s@$ g0@10@00 g1@11@00) r))
  :qid |qp.fvfResTrgDef43|)))
(assert (forall ((n@83@00 $Ref)) (!
  (=>
    (Set_in n@83@00 (Set_union g0@10@00 g1@11@00))
    (and
      (= (inv@84@00 s@$ g0@10@00 g1@11@00 n@83@00) n@83@00)
      (img@85@00 s@$ g0@10@00 g1@11@00 n@83@00)))
  :pattern ((Set_in n@83@00 (Set_union g0@10@00 g1@11@00)))
  :pattern ((inv@84@00 s@$ g0@10@00 g1@11@00 n@83@00))
  :pattern ((img@85@00 s@$ g0@10@00 g1@11@00 n@83@00))
  :qid |next-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@85@00 s@$ g0@10@00 g1@11@00 r)
      (Set_in (inv@84@00 s@$ g0@10@00 g1@11@00 r) (Set_union g0@10@00 g1@11@00)))
    (= (inv@84@00 s@$ g0@10@00 g1@11@00 r) r))
  :pattern ((inv@84@00 s@$ g0@10@00 g1@11@00 r))
  :qid |next-fctOfInv|)))
(assert (forall ((r $Ref)) (!
  (and
    (=>
      (Set_in r ($FVF.domain_next (sm@87@00 s@$ g0@10@00 g1@11@00)))
      (and
        (Set_in (inv@84@00 s@$ g0@10@00 g1@11@00 r) (Set_union g0@10@00 g1@11@00))
        (img@85@00 s@$ g0@10@00 g1@11@00 r)))
    (=>
      (and
        (Set_in (inv@84@00 s@$ g0@10@00 g1@11@00 r) (Set_union g0@10@00 g1@11@00))
        (img@85@00 s@$ g0@10@00 g1@11@00 r))
      (Set_in r ($FVF.domain_next (sm@87@00 s@$ g0@10@00 g1@11@00)))))
  :pattern ((Set_in r ($FVF.domain_next (sm@87@00 s@$ g0@10@00 g1@11@00))))
  :qid |qp.fvfDomDef47|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and
        (Set_in (inv@84@00 s@$ g0@10@00 g1@11@00 r) (Set_union g0@10@00 g1@11@00))
        (img@85@00 s@$ g0@10@00 g1@11@00 r))
      (and
        (img@70@00 s@$ g0@10@00 g1@11@00 r)
        (Set_in (inv@69@00 s@$ g0@10@00 g1@11@00 r) g0@10@00)))
    (=
      ($FVF.lookup_next (sm@87@00 s@$ g0@10@00 g1@11@00) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first s@$)) r)))
  :pattern (($FVF.lookup_next (sm@87@00 s@$ g0@10@00 g1@11@00) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first s@$)) r))
  :qid |qp.fvfValDef44|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and
        (Set_in (inv@84@00 s@$ g0@10@00 g1@11@00 r) (Set_union g0@10@00 g1@11@00))
        (img@85@00 s@$ g0@10@00 g1@11@00 r))
      (and
        (img@74@00 s@$ g0@10@00 g1@11@00 r)
        (Set_in (inv@73@00 s@$ g0@10@00 g1@11@00 r) g1@11@00)))
    (=
      ($FVF.lookup_next (sm@87@00 s@$ g0@10@00 g1@11@00) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second s@$))) r)))
  :pattern (($FVF.lookup_next (sm@87@00 s@$ g0@10@00 g1@11@00) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second s@$))) r))
  :qid |qp.fvfValDef45|)))
(assert (forall ((r $Ref)) (!
  (and
    ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first s@$)) r) r)
    ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second s@$))) r) r))
  :pattern (($FVF.lookup_next (sm@87@00 s@$ g0@10@00 g1@11@00) r))
  :qid |qp.fvfResTrgDef46|)))
(assert (and
  (forall ((r $Ref)) (!
    (=>
      (Set_in (inv@84@00 s@$ g0@10@00 g1@11@00 r) (Set_union g0@10@00 g1@11@00))
      ($FVF.loc_next ($FVF.lookup_next (sm@86@00 s@$ g0@10@00 g1@11@00) r) r))
    :pattern ((inv@84@00 s@$ g0@10@00 g1@11@00 r))
    :qid |quant-u-13724|))
  ($$%precondition ($SortWrappers.$FVF<next>To$Snap (sm@87@00 s@$ g0@10@00 g1@11@00)) (Set_union g0@10@00 g1@11@00))))
(pop) ; 4
(push) ; 4
; [else-branch: 18 | !(u@77@00 in g0@10@00 && v@78@00 in g0@10@00 && exists_path[Bool]($$(sm@82@00(s@$, g0@10@00, g1@11@00), g0@10@00), u@77@00, v@78@00))]
(assert (not
  (and
    (Set_in u@77@00 g0@10@00)
    (and
      (Set_in v@78@00 g0@10@00)
      (exists_path<Bool> ($$ ($SortWrappers.$FVF<next>To$Snap (sm@82@00 s@$ g0@10@00 g1@11@00)) g0@10@00) u@77@00 v@78@00)))))
(pop) ; 4
(pop) ; 3
; Joined path conditions
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@70@00 s@$ g0@10@00 g1@11@00 r)
      (Set_in (inv@69@00 s@$ g0@10@00 g1@11@00 r) g0@10@00))
    (=
      ($FVF.lookup_next (sm@86@00 s@$ g0@10@00 g1@11@00) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first s@$)) r)))
  :pattern (($FVF.lookup_next (sm@86@00 s@$ g0@10@00 g1@11@00) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first s@$)) r))
  :qid |qp.fvfValDef41|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@74@00 s@$ g0@10@00 g1@11@00 r)
      (Set_in (inv@73@00 s@$ g0@10@00 g1@11@00 r) g1@11@00))
    (=
      ($FVF.lookup_next (sm@86@00 s@$ g0@10@00 g1@11@00) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second s@$))) r)))
  :pattern (($FVF.lookup_next (sm@86@00 s@$ g0@10@00 g1@11@00) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second s@$))) r))
  :qid |qp.fvfValDef42|)))
(assert (forall ((r $Ref)) (!
  (and
    ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first s@$)) r) r)
    ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second s@$))) r) r))
  :pattern (($FVF.lookup_next (sm@86@00 s@$ g0@10@00 g1@11@00) r))
  :qid |qp.fvfResTrgDef43|)))
(assert (forall ((n@83@00 $Ref)) (!
  (=>
    (Set_in n@83@00 (Set_union g0@10@00 g1@11@00))
    (and
      (= (inv@84@00 s@$ g0@10@00 g1@11@00 n@83@00) n@83@00)
      (img@85@00 s@$ g0@10@00 g1@11@00 n@83@00)))
  :pattern ((Set_in n@83@00 (Set_union g0@10@00 g1@11@00)))
  :pattern ((inv@84@00 s@$ g0@10@00 g1@11@00 n@83@00))
  :pattern ((img@85@00 s@$ g0@10@00 g1@11@00 n@83@00))
  :qid |next-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@85@00 s@$ g0@10@00 g1@11@00 r)
      (Set_in (inv@84@00 s@$ g0@10@00 g1@11@00 r) (Set_union g0@10@00 g1@11@00)))
    (= (inv@84@00 s@$ g0@10@00 g1@11@00 r) r))
  :pattern ((inv@84@00 s@$ g0@10@00 g1@11@00 r))
  :qid |next-fctOfInv|)))
(assert (forall ((r $Ref)) (!
  (and
    (=>
      (Set_in r ($FVF.domain_next (sm@87@00 s@$ g0@10@00 g1@11@00)))
      (and
        (Set_in (inv@84@00 s@$ g0@10@00 g1@11@00 r) (Set_union g0@10@00 g1@11@00))
        (img@85@00 s@$ g0@10@00 g1@11@00 r)))
    (=>
      (and
        (Set_in (inv@84@00 s@$ g0@10@00 g1@11@00 r) (Set_union g0@10@00 g1@11@00))
        (img@85@00 s@$ g0@10@00 g1@11@00 r))
      (Set_in r ($FVF.domain_next (sm@87@00 s@$ g0@10@00 g1@11@00)))))
  :pattern ((Set_in r ($FVF.domain_next (sm@87@00 s@$ g0@10@00 g1@11@00))))
  :qid |qp.fvfDomDef47|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and
        (Set_in (inv@84@00 s@$ g0@10@00 g1@11@00 r) (Set_union g0@10@00 g1@11@00))
        (img@85@00 s@$ g0@10@00 g1@11@00 r))
      (and
        (img@70@00 s@$ g0@10@00 g1@11@00 r)
        (Set_in (inv@69@00 s@$ g0@10@00 g1@11@00 r) g0@10@00)))
    (=
      ($FVF.lookup_next (sm@87@00 s@$ g0@10@00 g1@11@00) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first s@$)) r)))
  :pattern (($FVF.lookup_next (sm@87@00 s@$ g0@10@00 g1@11@00) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first s@$)) r))
  :qid |qp.fvfValDef44|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and
        (Set_in (inv@84@00 s@$ g0@10@00 g1@11@00 r) (Set_union g0@10@00 g1@11@00))
        (img@85@00 s@$ g0@10@00 g1@11@00 r))
      (and
        (img@74@00 s@$ g0@10@00 g1@11@00 r)
        (Set_in (inv@73@00 s@$ g0@10@00 g1@11@00 r) g1@11@00)))
    (=
      ($FVF.lookup_next (sm@87@00 s@$ g0@10@00 g1@11@00) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second s@$))) r)))
  :pattern (($FVF.lookup_next (sm@87@00 s@$ g0@10@00 g1@11@00) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second s@$))) r))
  :qid |qp.fvfValDef45|)))
(assert (forall ((r $Ref)) (!
  (and
    ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first s@$)) r) r)
    ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second s@$))) r) r))
  :pattern (($FVF.lookup_next (sm@87@00 s@$ g0@10@00 g1@11@00) r))
  :qid |qp.fvfResTrgDef46|)))
(assert (=>
  (and
    (Set_in u@77@00 g0@10@00)
    (and
      (Set_in v@78@00 g0@10@00)
      (exists_path<Bool> ($$ ($SortWrappers.$FVF<next>To$Snap (sm@82@00 s@$ g0@10@00 g1@11@00)) g0@10@00) u@77@00 v@78@00)))
  (and
    (Set_in u@77@00 g0@10@00)
    (Set_in v@78@00 g0@10@00)
    (exists_path<Bool> ($$ ($SortWrappers.$FVF<next>To$Snap (sm@82@00 s@$ g0@10@00 g1@11@00)) g0@10@00) u@77@00 v@78@00)
    (forall ((r $Ref)) (!
      (=>
        (Set_in (inv@84@00 s@$ g0@10@00 g1@11@00 r) (Set_union g0@10@00 g1@11@00))
        ($FVF.loc_next ($FVF.lookup_next (sm@86@00 s@$ g0@10@00 g1@11@00) r) r))
      :pattern ((inv@84@00 s@$ g0@10@00 g1@11@00 r))
      :qid |quant-u-13724|))
    ($$%precondition ($SortWrappers.$FVF<next>To$Snap (sm@87@00 s@$ g0@10@00 g1@11@00)) (Set_union g0@10@00 g1@11@00)))))
; Joined path conditions
(assert (or
  (not
    (and
      (Set_in u@77@00 g0@10@00)
      (and
        (Set_in v@78@00 g0@10@00)
        (exists_path<Bool> ($$ ($SortWrappers.$FVF<next>To$Snap (sm@82@00 s@$ g0@10@00 g1@11@00)) g0@10@00) u@77@00 v@78@00))))
  (and
    (Set_in u@77@00 g0@10@00)
    (and
      (Set_in v@78@00 g0@10@00)
      (exists_path<Bool> ($$ ($SortWrappers.$FVF<next>To$Snap (sm@82@00 s@$ g0@10@00 g1@11@00)) g0@10@00) u@77@00 v@78@00)))))
(pop) ; 2
; Nested auxiliary terms: globals (aux)
(assert (forall ((n@79@00 $Ref)) (!
  (=>
    (Set_in n@79@00 g0@10@00)
    (and
      (= (inv@80@00 s@$ g0@10@00 g1@11@00 n@79@00) n@79@00)
      (img@81@00 s@$ g0@10@00 g1@11@00 n@79@00)))
  :pattern ((Set_in n@79@00 g0@10@00))
  :pattern ((inv@80@00 s@$ g0@10@00 g1@11@00 n@79@00))
  :pattern ((img@81@00 s@$ g0@10@00 g1@11@00 n@79@00))
  :qid |next-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@81@00 s@$ g0@10@00 g1@11@00 r)
      (Set_in (inv@80@00 s@$ g0@10@00 g1@11@00 r) g0@10@00))
    (= (inv@80@00 s@$ g0@10@00 g1@11@00 r) r))
  :pattern ((inv@80@00 s@$ g0@10@00 g1@11@00 r))
  :qid |next-fctOfInv|)))
(assert (forall ((r $Ref)) (!
  (and
    (=>
      (Set_in r ($FVF.domain_next (sm@82@00 s@$ g0@10@00 g1@11@00)))
      (and
        (Set_in (inv@80@00 s@$ g0@10@00 g1@11@00 r) g0@10@00)
        (img@81@00 s@$ g0@10@00 g1@11@00 r)))
    (=>
      (and
        (Set_in (inv@80@00 s@$ g0@10@00 g1@11@00 r) g0@10@00)
        (img@81@00 s@$ g0@10@00 g1@11@00 r))
      (Set_in r ($FVF.domain_next (sm@82@00 s@$ g0@10@00 g1@11@00)))))
  :pattern ((Set_in r ($FVF.domain_next (sm@82@00 s@$ g0@10@00 g1@11@00))))
  :qid |qp.fvfDomDef40|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and
        (Set_in (inv@80@00 s@$ g0@10@00 g1@11@00 r) g0@10@00)
        (img@81@00 s@$ g0@10@00 g1@11@00 r))
      (and
        (img@70@00 s@$ g0@10@00 g1@11@00 r)
        (Set_in (inv@69@00 s@$ g0@10@00 g1@11@00 r) g0@10@00)))
    (=
      ($FVF.lookup_next (sm@82@00 s@$ g0@10@00 g1@11@00) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first s@$)) r)))
  :pattern (($FVF.lookup_next (sm@82@00 s@$ g0@10@00 g1@11@00) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first s@$)) r))
  :qid |qp.fvfValDef37|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and
        (Set_in (inv@80@00 s@$ g0@10@00 g1@11@00 r) g0@10@00)
        (img@81@00 s@$ g0@10@00 g1@11@00 r))
      (and
        (img@74@00 s@$ g0@10@00 g1@11@00 r)
        (Set_in (inv@73@00 s@$ g0@10@00 g1@11@00 r) g1@11@00)))
    (=
      ($FVF.lookup_next (sm@82@00 s@$ g0@10@00 g1@11@00) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second s@$))) r)))
  :pattern (($FVF.lookup_next (sm@82@00 s@$ g0@10@00 g1@11@00) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second s@$))) r))
  :qid |qp.fvfValDef38|)))
(assert (forall ((r $Ref)) (!
  (and
    ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first s@$)) r) r)
    ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second s@$))) r) r))
  :pattern (($FVF.lookup_next (sm@82@00 s@$ g0@10@00 g1@11@00) r))
  :qid |qp.fvfResTrgDef39|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@70@00 s@$ g0@10@00 g1@11@00 r)
      (Set_in (inv@69@00 s@$ g0@10@00 g1@11@00 r) g0@10@00))
    (=
      ($FVF.lookup_next (sm@86@00 s@$ g0@10@00 g1@11@00) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first s@$)) r)))
  :pattern (($FVF.lookup_next (sm@86@00 s@$ g0@10@00 g1@11@00) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first s@$)) r))
  :qid |qp.fvfValDef41|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@74@00 s@$ g0@10@00 g1@11@00 r)
      (Set_in (inv@73@00 s@$ g0@10@00 g1@11@00 r) g1@11@00))
    (=
      ($FVF.lookup_next (sm@86@00 s@$ g0@10@00 g1@11@00) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second s@$))) r)))
  :pattern (($FVF.lookup_next (sm@86@00 s@$ g0@10@00 g1@11@00) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second s@$))) r))
  :qid |qp.fvfValDef42|)))
(assert (forall ((r $Ref)) (!
  (and
    ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first s@$)) r) r)
    ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second s@$))) r) r))
  :pattern (($FVF.lookup_next (sm@86@00 s@$ g0@10@00 g1@11@00) r))
  :qid |qp.fvfResTrgDef43|)))
(assert (forall ((n@83@00 $Ref)) (!
  (=>
    (Set_in n@83@00 (Set_union g0@10@00 g1@11@00))
    (and
      (= (inv@84@00 s@$ g0@10@00 g1@11@00 n@83@00) n@83@00)
      (img@85@00 s@$ g0@10@00 g1@11@00 n@83@00)))
  :pattern ((Set_in n@83@00 (Set_union g0@10@00 g1@11@00)))
  :pattern ((inv@84@00 s@$ g0@10@00 g1@11@00 n@83@00))
  :pattern ((img@85@00 s@$ g0@10@00 g1@11@00 n@83@00))
  :qid |next-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@85@00 s@$ g0@10@00 g1@11@00 r)
      (Set_in (inv@84@00 s@$ g0@10@00 g1@11@00 r) (Set_union g0@10@00 g1@11@00)))
    (= (inv@84@00 s@$ g0@10@00 g1@11@00 r) r))
  :pattern ((inv@84@00 s@$ g0@10@00 g1@11@00 r))
  :qid |next-fctOfInv|)))
(assert (forall ((r $Ref)) (!
  (and
    (=>
      (Set_in r ($FVF.domain_next (sm@87@00 s@$ g0@10@00 g1@11@00)))
      (and
        (Set_in (inv@84@00 s@$ g0@10@00 g1@11@00 r) (Set_union g0@10@00 g1@11@00))
        (img@85@00 s@$ g0@10@00 g1@11@00 r)))
    (=>
      (and
        (Set_in (inv@84@00 s@$ g0@10@00 g1@11@00 r) (Set_union g0@10@00 g1@11@00))
        (img@85@00 s@$ g0@10@00 g1@11@00 r))
      (Set_in r ($FVF.domain_next (sm@87@00 s@$ g0@10@00 g1@11@00)))))
  :pattern ((Set_in r ($FVF.domain_next (sm@87@00 s@$ g0@10@00 g1@11@00))))
  :qid |qp.fvfDomDef47|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and
        (Set_in (inv@84@00 s@$ g0@10@00 g1@11@00 r) (Set_union g0@10@00 g1@11@00))
        (img@85@00 s@$ g0@10@00 g1@11@00 r))
      (and
        (img@70@00 s@$ g0@10@00 g1@11@00 r)
        (Set_in (inv@69@00 s@$ g0@10@00 g1@11@00 r) g0@10@00)))
    (=
      ($FVF.lookup_next (sm@87@00 s@$ g0@10@00 g1@11@00) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first s@$)) r)))
  :pattern (($FVF.lookup_next (sm@87@00 s@$ g0@10@00 g1@11@00) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first s@$)) r))
  :qid |qp.fvfValDef44|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and
        (Set_in (inv@84@00 s@$ g0@10@00 g1@11@00 r) (Set_union g0@10@00 g1@11@00))
        (img@85@00 s@$ g0@10@00 g1@11@00 r))
      (and
        (img@74@00 s@$ g0@10@00 g1@11@00 r)
        (Set_in (inv@73@00 s@$ g0@10@00 g1@11@00 r) g1@11@00)))
    (=
      ($FVF.lookup_next (sm@87@00 s@$ g0@10@00 g1@11@00) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second s@$))) r)))
  :pattern (($FVF.lookup_next (sm@87@00 s@$ g0@10@00 g1@11@00) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second s@$))) r))
  :qid |qp.fvfValDef45|)))
(assert (forall ((r $Ref)) (!
  (and
    ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first s@$)) r) r)
    ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second s@$))) r) r))
  :pattern (($FVF.lookup_next (sm@87@00 s@$ g0@10@00 g1@11@00) r))
  :qid |qp.fvfResTrgDef46|)))
; Nested auxiliary terms: non-globals (aux)
(assert (forall ((u@77@00 $Ref) (v@78@00 $Ref)) (!
  (and
    (=>
      (Set_in u@77@00 g0@10@00)
      (and
        (Set_in u@77@00 g0@10@00)
        (=>
          (Set_in v@78@00 g0@10@00)
          (and
            (Set_in v@78@00 g0@10@00)
            (forall ((r $Ref)) (!
              (=>
                (Set_in (inv@80@00 s@$ g0@10@00 g1@11@00 r) g0@10@00)
                ($FVF.loc_next ($FVF.lookup_next (sm@75@00 s@$ g0@10@00 g1@11@00) r) r))
              :pattern ((inv@80@00 s@$ g0@10@00 g1@11@00 r))
              :qid |quant-u-13721|))
            ($$%precondition ($SortWrappers.$FVF<next>To$Snap (sm@82@00 s@$ g0@10@00 g1@11@00)) g0@10@00)))
        (or (Set_in v@78@00 g0@10@00) (not (Set_in v@78@00 g0@10@00)))))
    (or (Set_in u@77@00 g0@10@00) (not (Set_in u@77@00 g0@10@00)))
    (=>
      (and
        (Set_in u@77@00 g0@10@00)
        (and
          (Set_in v@78@00 g0@10@00)
          (exists_path<Bool> ($$ ($SortWrappers.$FVF<next>To$Snap (sm@82@00 s@$ g0@10@00 g1@11@00)) g0@10@00) u@77@00 v@78@00)))
      (and
        (Set_in u@77@00 g0@10@00)
        (Set_in v@78@00 g0@10@00)
        (exists_path<Bool> ($$ ($SortWrappers.$FVF<next>To$Snap (sm@82@00 s@$ g0@10@00 g1@11@00)) g0@10@00) u@77@00 v@78@00)
        (forall ((r $Ref)) (!
          (=>
            (Set_in (inv@84@00 s@$ g0@10@00 g1@11@00 r) (Set_union g0@10@00 g1@11@00))
            ($FVF.loc_next ($FVF.lookup_next (sm@86@00 s@$ g0@10@00 g1@11@00) r) r))
          :pattern ((inv@84@00 s@$ g0@10@00 g1@11@00 r))
          :qid |quant-u-13724|))
        ($$%precondition ($SortWrappers.$FVF<next>To$Snap (sm@87@00 s@$ g0@10@00 g1@11@00)) (Set_union g0@10@00 g1@11@00))))
    (or
      (not
        (and
          (Set_in u@77@00 g0@10@00)
          (and
            (Set_in v@78@00 g0@10@00)
            (exists_path<Bool> ($$ ($SortWrappers.$FVF<next>To$Snap (sm@82@00 s@$ g0@10@00 g1@11@00)) g0@10@00) u@77@00 v@78@00))))
      (and
        (Set_in u@77@00 g0@10@00)
        (and
          (Set_in v@78@00 g0@10@00)
          (exists_path<Bool> ($$ ($SortWrappers.$FVF<next>To$Snap (sm@82@00 s@$ g0@10@00 g1@11@00)) g0@10@00) u@77@00 v@78@00)))))
  :pattern ((exists_path<Bool> ($$ ($SortWrappers.$FVF<next>To$Snap (sm@82@00 s@$ g0@10@00 g1@11@00)) g0@10@00) u@77@00 v@78@00))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/graphs/static/tests/lists/framing1.vpr@295@13@295@182-aux|)))
(assert (forall ((u@77@00 $Ref) (v@78@00 $Ref)) (!
  (and
    (=>
      (Set_in u@77@00 g0@10@00)
      (and
        (Set_in u@77@00 g0@10@00)
        (=>
          (Set_in v@78@00 g0@10@00)
          (and
            (Set_in v@78@00 g0@10@00)
            (forall ((r $Ref)) (!
              (=>
                (Set_in (inv@80@00 s@$ g0@10@00 g1@11@00 r) g0@10@00)
                ($FVF.loc_next ($FVF.lookup_next (sm@75@00 s@$ g0@10@00 g1@11@00) r) r))
              :pattern ((inv@80@00 s@$ g0@10@00 g1@11@00 r))
              :qid |quant-u-13721|))
            ($$%precondition ($SortWrappers.$FVF<next>To$Snap (sm@82@00 s@$ g0@10@00 g1@11@00)) g0@10@00)))
        (or (Set_in v@78@00 g0@10@00) (not (Set_in v@78@00 g0@10@00)))))
    (or (Set_in u@77@00 g0@10@00) (not (Set_in u@77@00 g0@10@00)))
    (=>
      (and
        (Set_in u@77@00 g0@10@00)
        (and
          (Set_in v@78@00 g0@10@00)
          (exists_path<Bool> ($$ ($SortWrappers.$FVF<next>To$Snap (sm@82@00 s@$ g0@10@00 g1@11@00)) g0@10@00) u@77@00 v@78@00)))
      (and
        (Set_in u@77@00 g0@10@00)
        (Set_in v@78@00 g0@10@00)
        (exists_path<Bool> ($$ ($SortWrappers.$FVF<next>To$Snap (sm@82@00 s@$ g0@10@00 g1@11@00)) g0@10@00) u@77@00 v@78@00)
        (forall ((r $Ref)) (!
          (=>
            (Set_in (inv@84@00 s@$ g0@10@00 g1@11@00 r) (Set_union g0@10@00 g1@11@00))
            ($FVF.loc_next ($FVF.lookup_next (sm@86@00 s@$ g0@10@00 g1@11@00) r) r))
          :pattern ((inv@84@00 s@$ g0@10@00 g1@11@00 r))
          :qid |quant-u-13724|))
        ($$%precondition ($SortWrappers.$FVF<next>To$Snap (sm@87@00 s@$ g0@10@00 g1@11@00)) (Set_union g0@10@00 g1@11@00))))
    (or
      (not
        (and
          (Set_in u@77@00 g0@10@00)
          (and
            (Set_in v@78@00 g0@10@00)
            (exists_path<Bool> ($$ ($SortWrappers.$FVF<next>To$Snap (sm@82@00 s@$ g0@10@00 g1@11@00)) g0@10@00) u@77@00 v@78@00))))
      (and
        (Set_in u@77@00 g0@10@00)
        (and
          (Set_in v@78@00 g0@10@00)
          (exists_path<Bool> ($$ ($SortWrappers.$FVF<next>To$Snap (sm@82@00 s@$ g0@10@00 g1@11@00)) g0@10@00) u@77@00 v@78@00)))))
  :pattern ((exists_path<Bool> ($$ ($SortWrappers.$FVF<next>To$Snap (sm@87@00 s@$ g0@10@00 g1@11@00)) (Set_union g0@10@00 g1@11@00)) u@77@00 v@78@00))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/graphs/static/tests/lists/framing1.vpr@295@13@295@182-aux|)))
(assert (forall ((u@77@00 $Ref) (v@78@00 $Ref)) (!
  (=>
    (and
      (Set_in u@77@00 g0@10@00)
      (and
        (Set_in v@78@00 g0@10@00)
        (exists_path<Bool> ($$ ($SortWrappers.$FVF<next>To$Snap (sm@82@00 s@$ g0@10@00 g1@11@00)) g0@10@00) u@77@00 v@78@00)))
    (exists_path<Bool> ($$ ($SortWrappers.$FVF<next>To$Snap (sm@87@00 s@$ g0@10@00 g1@11@00)) (Set_union g0@10@00 g1@11@00)) u@77@00 v@78@00))
  :pattern ((exists_path<Bool> ($$ ($SortWrappers.$FVF<next>To$Snap (sm@82@00 s@$ g0@10@00 g1@11@00)) g0@10@00) u@77@00 v@78@00))
  :pattern ((exists_path<Bool> ($$ ($SortWrappers.$FVF<next>To$Snap (sm@87@00 s@$ g0@10@00 g1@11@00)) (Set_union g0@10@00 g1@11@00)) u@77@00 v@78@00))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/graphs/static/tests/lists/framing1.vpr@295@13@295@182|)))
(assert (=
  ($Snap.second ($Snap.second $t@76@00))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second $t@76@00)))
    ($Snap.second ($Snap.second ($Snap.second $t@76@00))))))
(assert (= ($Snap.first ($Snap.second ($Snap.second $t@76@00))) $Snap.unit))
; [eval] (forall u: Ref, v: Ref :: { exists_path($$(g1), u, v) } { exists_path($$((g1 union g0)), u, v) } (u in g1) && ((v in g1) && exists_path($$(g1), u, v)) ==> exists_path($$((g1 union g0)), u, v))
(declare-const u@88@00 $Ref)
(declare-const v@89@00 $Ref)
(push) ; 2
; [eval] (u in g1) && ((v in g1) && exists_path($$(g1), u, v)) ==> exists_path($$((g1 union g0)), u, v)
; [eval] (u in g1) && ((v in g1) && exists_path($$(g1), u, v))
; [eval] (u in g1)
(push) ; 3
; [then-branch: 19 | !(u@88@00 in g1@11@00) | live]
; [else-branch: 19 | u@88@00 in g1@11@00 | live]
(push) ; 4
; [then-branch: 19 | !(u@88@00 in g1@11@00)]
(assert (not (Set_in u@88@00 g1@11@00)))
(pop) ; 4
(push) ; 4
; [else-branch: 19 | u@88@00 in g1@11@00]
(assert (Set_in u@88@00 g1@11@00))
; [eval] (v in g1)
(push) ; 5
; [then-branch: 20 | !(v@89@00 in g1@11@00) | live]
; [else-branch: 20 | v@89@00 in g1@11@00 | live]
(push) ; 6
; [then-branch: 20 | !(v@89@00 in g1@11@00)]
(assert (not (Set_in v@89@00 g1@11@00)))
(pop) ; 6
(push) ; 6
; [else-branch: 20 | v@89@00 in g1@11@00]
(assert (Set_in v@89@00 g1@11@00))
; [eval] exists_path($$(g1), u, v)
; [eval] $$(g1)
(push) ; 7
(declare-const n@90@00 $Ref)
(push) ; 8
; [eval] (n in refs)
(assert (Set_in n@90@00 g1@11@00))
(pop) ; 8
(declare-fun inv@91@00 ($Snap Set<$Ref> Set<$Ref> $Ref) $Ref)
(declare-fun img@92@00 ($Snap Set<$Ref> Set<$Ref> $Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
(declare-fun sm@93@00 ($Snap Set<$Ref> Set<$Ref>) $FVF<next>)
; Definitional axioms for snapshot map domain
; Definitional axioms for snapshot map values
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@70@00 s@$ g0@10@00 g1@11@00 r)
      (Set_in (inv@69@00 s@$ g0@10@00 g1@11@00 r) g0@10@00))
    (=
      ($FVF.lookup_next (sm@93@00 s@$ g0@10@00 g1@11@00) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first s@$)) r)))
  :pattern (($FVF.lookup_next (sm@93@00 s@$ g0@10@00 g1@11@00) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first s@$)) r))
  :qid |qp.fvfValDef48|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@74@00 s@$ g0@10@00 g1@11@00 r)
      (Set_in (inv@73@00 s@$ g0@10@00 g1@11@00 r) g1@11@00))
    (=
      ($FVF.lookup_next (sm@93@00 s@$ g0@10@00 g1@11@00) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second s@$))) r)))
  :pattern (($FVF.lookup_next (sm@93@00 s@$ g0@10@00 g1@11@00) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second s@$))) r))
  :qid |qp.fvfValDef49|)))
(assert (forall ((r $Ref)) (!
  (and
    ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first s@$)) r) r)
    ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second s@$))) r) r))
  :pattern (($FVF.lookup_next (sm@93@00 s@$ g0@10@00 g1@11@00) r))
  :qid |qp.fvfResTrgDef50|)))
; Check receiver injectivity
(push) ; 8
(assert (not (forall ((n1@90@00 $Ref) (n2@90@00 $Ref)) (!
  (=>
    (and
      (and
        (Set_in n1@90@00 g1@11@00)
        ($FVF.loc_next ($FVF.lookup_next (sm@93@00 s@$ g0@10@00 g1@11@00) n1@90@00) n1@90@00))
      (and
        (Set_in n2@90@00 g1@11@00)
        ($FVF.loc_next ($FVF.lookup_next (sm@93@00 s@$ g0@10@00 g1@11@00) n2@90@00) n2@90@00))
      (= n1@90@00 n2@90@00))
    (= n1@90@00 n2@90@00))
  
  :qid |next-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 8
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((n@90@00 $Ref)) (!
  (=>
    (Set_in n@90@00 g1@11@00)
    (and
      (= (inv@91@00 s@$ g0@10@00 g1@11@00 n@90@00) n@90@00)
      (img@92@00 s@$ g0@10@00 g1@11@00 n@90@00)))
  :pattern ((Set_in n@90@00 g1@11@00))
  :pattern ((inv@91@00 s@$ g0@10@00 g1@11@00 n@90@00))
  :pattern ((img@92@00 s@$ g0@10@00 g1@11@00 n@90@00))
  :qid |next-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@92@00 s@$ g0@10@00 g1@11@00 r)
      (Set_in (inv@91@00 s@$ g0@10@00 g1@11@00 r) g1@11@00))
    (= (inv@91@00 s@$ g0@10@00 g1@11@00 r) r))
  :pattern ((inv@91@00 s@$ g0@10@00 g1@11@00 r))
  :qid |next-fctOfInv|)))
(assert (forall ((r $Ref)) (!
  (=>
    (Set_in (inv@91@00 s@$ g0@10@00 g1@11@00 r) g1@11@00)
    ($FVF.loc_next ($FVF.lookup_next (sm@93@00 s@$ g0@10@00 g1@11@00) r) r))
  :pattern ((inv@91@00 s@$ g0@10@00 g1@11@00 r))
  :qid |quant-u-13727|)))
(push) ; 8
(assert (not (forall ((r $Ref)) (!
  (=>
    (and
      (Set_in (inv@91@00 s@$ g0@10@00 g1@11@00 r) g1@11@00)
      (img@92@00 s@$ g0@10@00 g1@11@00 r)
      (= r (inv@91@00 s@$ g0@10@00 g1@11@00 r)))
    (>
      (+
        (ite
          (and
            (img@70@00 s@$ g0@10@00 g1@11@00 r)
            (Set_in (inv@69@00 s@$ g0@10@00 g1@11@00 r) g0@10@00))
          $Perm.Write
          $Perm.No)
        (ite
          (and
            (img@74@00 s@$ g0@10@00 g1@11@00 r)
            (Set_in (inv@73@00 s@$ g0@10@00 g1@11@00 r) g1@11@00))
          $Perm.Write
          $Perm.No))
      $Perm.No))
  
  :qid |quant-u-13728|))))
(check-sat)
; unsat
(pop) ; 8
; 0.00s
; (get-info :all-statistics)
(declare-fun sm@94@00 ($Snap Set<$Ref> Set<$Ref>) $FVF<next>)
; Definitional axioms for snapshot map domain
(assert (forall ((r $Ref)) (!
  (and
    (=>
      (Set_in r ($FVF.domain_next (sm@94@00 s@$ g0@10@00 g1@11@00)))
      (and
        (Set_in (inv@91@00 s@$ g0@10@00 g1@11@00 r) g1@11@00)
        (img@92@00 s@$ g0@10@00 g1@11@00 r)))
    (=>
      (and
        (Set_in (inv@91@00 s@$ g0@10@00 g1@11@00 r) g1@11@00)
        (img@92@00 s@$ g0@10@00 g1@11@00 r))
      (Set_in r ($FVF.domain_next (sm@94@00 s@$ g0@10@00 g1@11@00)))))
  :pattern ((Set_in r ($FVF.domain_next (sm@94@00 s@$ g0@10@00 g1@11@00))))
  :qid |qp.fvfDomDef54|)))
; Definitional axioms for snapshot map values
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and
        (Set_in (inv@91@00 s@$ g0@10@00 g1@11@00 r) g1@11@00)
        (img@92@00 s@$ g0@10@00 g1@11@00 r))
      (and
        (img@70@00 s@$ g0@10@00 g1@11@00 r)
        (Set_in (inv@69@00 s@$ g0@10@00 g1@11@00 r) g0@10@00)))
    (=
      ($FVF.lookup_next (sm@94@00 s@$ g0@10@00 g1@11@00) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first s@$)) r)))
  :pattern (($FVF.lookup_next (sm@94@00 s@$ g0@10@00 g1@11@00) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first s@$)) r))
  :qid |qp.fvfValDef51|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and
        (Set_in (inv@91@00 s@$ g0@10@00 g1@11@00 r) g1@11@00)
        (img@92@00 s@$ g0@10@00 g1@11@00 r))
      (and
        (img@74@00 s@$ g0@10@00 g1@11@00 r)
        (Set_in (inv@73@00 s@$ g0@10@00 g1@11@00 r) g1@11@00)))
    (=
      ($FVF.lookup_next (sm@94@00 s@$ g0@10@00 g1@11@00) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second s@$))) r)))
  :pattern (($FVF.lookup_next (sm@94@00 s@$ g0@10@00 g1@11@00) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second s@$))) r))
  :qid |qp.fvfValDef52|)))
(assert (forall ((r $Ref)) (!
  (and
    ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first s@$)) r) r)
    ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second s@$))) r) r))
  :pattern (($FVF.lookup_next (sm@94@00 s@$ g0@10@00 g1@11@00) r))
  :qid |qp.fvfResTrgDef53|)))
(assert ($$%precondition ($SortWrappers.$FVF<next>To$Snap (sm@94@00 s@$ g0@10@00 g1@11@00)) g1@11@00))
(pop) ; 7
; Joined path conditions
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@70@00 s@$ g0@10@00 g1@11@00 r)
      (Set_in (inv@69@00 s@$ g0@10@00 g1@11@00 r) g0@10@00))
    (=
      ($FVF.lookup_next (sm@93@00 s@$ g0@10@00 g1@11@00) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first s@$)) r)))
  :pattern (($FVF.lookup_next (sm@93@00 s@$ g0@10@00 g1@11@00) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first s@$)) r))
  :qid |qp.fvfValDef48|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@74@00 s@$ g0@10@00 g1@11@00 r)
      (Set_in (inv@73@00 s@$ g0@10@00 g1@11@00 r) g1@11@00))
    (=
      ($FVF.lookup_next (sm@93@00 s@$ g0@10@00 g1@11@00) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second s@$))) r)))
  :pattern (($FVF.lookup_next (sm@93@00 s@$ g0@10@00 g1@11@00) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second s@$))) r))
  :qid |qp.fvfValDef49|)))
(assert (forall ((r $Ref)) (!
  (and
    ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first s@$)) r) r)
    ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second s@$))) r) r))
  :pattern (($FVF.lookup_next (sm@93@00 s@$ g0@10@00 g1@11@00) r))
  :qid |qp.fvfResTrgDef50|)))
(assert (forall ((n@90@00 $Ref)) (!
  (=>
    (Set_in n@90@00 g1@11@00)
    (and
      (= (inv@91@00 s@$ g0@10@00 g1@11@00 n@90@00) n@90@00)
      (img@92@00 s@$ g0@10@00 g1@11@00 n@90@00)))
  :pattern ((Set_in n@90@00 g1@11@00))
  :pattern ((inv@91@00 s@$ g0@10@00 g1@11@00 n@90@00))
  :pattern ((img@92@00 s@$ g0@10@00 g1@11@00 n@90@00))
  :qid |next-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@92@00 s@$ g0@10@00 g1@11@00 r)
      (Set_in (inv@91@00 s@$ g0@10@00 g1@11@00 r) g1@11@00))
    (= (inv@91@00 s@$ g0@10@00 g1@11@00 r) r))
  :pattern ((inv@91@00 s@$ g0@10@00 g1@11@00 r))
  :qid |next-fctOfInv|)))
(assert (forall ((r $Ref)) (!
  (and
    (=>
      (Set_in r ($FVF.domain_next (sm@94@00 s@$ g0@10@00 g1@11@00)))
      (and
        (Set_in (inv@91@00 s@$ g0@10@00 g1@11@00 r) g1@11@00)
        (img@92@00 s@$ g0@10@00 g1@11@00 r)))
    (=>
      (and
        (Set_in (inv@91@00 s@$ g0@10@00 g1@11@00 r) g1@11@00)
        (img@92@00 s@$ g0@10@00 g1@11@00 r))
      (Set_in r ($FVF.domain_next (sm@94@00 s@$ g0@10@00 g1@11@00)))))
  :pattern ((Set_in r ($FVF.domain_next (sm@94@00 s@$ g0@10@00 g1@11@00))))
  :qid |qp.fvfDomDef54|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and
        (Set_in (inv@91@00 s@$ g0@10@00 g1@11@00 r) g1@11@00)
        (img@92@00 s@$ g0@10@00 g1@11@00 r))
      (and
        (img@70@00 s@$ g0@10@00 g1@11@00 r)
        (Set_in (inv@69@00 s@$ g0@10@00 g1@11@00 r) g0@10@00)))
    (=
      ($FVF.lookup_next (sm@94@00 s@$ g0@10@00 g1@11@00) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first s@$)) r)))
  :pattern (($FVF.lookup_next (sm@94@00 s@$ g0@10@00 g1@11@00) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first s@$)) r))
  :qid |qp.fvfValDef51|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and
        (Set_in (inv@91@00 s@$ g0@10@00 g1@11@00 r) g1@11@00)
        (img@92@00 s@$ g0@10@00 g1@11@00 r))
      (and
        (img@74@00 s@$ g0@10@00 g1@11@00 r)
        (Set_in (inv@73@00 s@$ g0@10@00 g1@11@00 r) g1@11@00)))
    (=
      ($FVF.lookup_next (sm@94@00 s@$ g0@10@00 g1@11@00) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second s@$))) r)))
  :pattern (($FVF.lookup_next (sm@94@00 s@$ g0@10@00 g1@11@00) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second s@$))) r))
  :qid |qp.fvfValDef52|)))
(assert (forall ((r $Ref)) (!
  (and
    ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first s@$)) r) r)
    ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second s@$))) r) r))
  :pattern (($FVF.lookup_next (sm@94@00 s@$ g0@10@00 g1@11@00) r))
  :qid |qp.fvfResTrgDef53|)))
(assert (and
  (forall ((r $Ref)) (!
    (=>
      (Set_in (inv@91@00 s@$ g0@10@00 g1@11@00 r) g1@11@00)
      ($FVF.loc_next ($FVF.lookup_next (sm@93@00 s@$ g0@10@00 g1@11@00) r) r))
    :pattern ((inv@91@00 s@$ g0@10@00 g1@11@00 r))
    :qid |quant-u-13727|))
  ($$%precondition ($SortWrappers.$FVF<next>To$Snap (sm@94@00 s@$ g0@10@00 g1@11@00)) g1@11@00)))
(pop) ; 6
(pop) ; 5
; Joined path conditions
; Joined path conditions
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@70@00 s@$ g0@10@00 g1@11@00 r)
      (Set_in (inv@69@00 s@$ g0@10@00 g1@11@00 r) g0@10@00))
    (=
      ($FVF.lookup_next (sm@93@00 s@$ g0@10@00 g1@11@00) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first s@$)) r)))
  :pattern (($FVF.lookup_next (sm@93@00 s@$ g0@10@00 g1@11@00) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first s@$)) r))
  :qid |qp.fvfValDef48|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@74@00 s@$ g0@10@00 g1@11@00 r)
      (Set_in (inv@73@00 s@$ g0@10@00 g1@11@00 r) g1@11@00))
    (=
      ($FVF.lookup_next (sm@93@00 s@$ g0@10@00 g1@11@00) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second s@$))) r)))
  :pattern (($FVF.lookup_next (sm@93@00 s@$ g0@10@00 g1@11@00) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second s@$))) r))
  :qid |qp.fvfValDef49|)))
(assert (forall ((r $Ref)) (!
  (and
    ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first s@$)) r) r)
    ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second s@$))) r) r))
  :pattern (($FVF.lookup_next (sm@93@00 s@$ g0@10@00 g1@11@00) r))
  :qid |qp.fvfResTrgDef50|)))
(assert (forall ((n@90@00 $Ref)) (!
  (=>
    (Set_in n@90@00 g1@11@00)
    (and
      (= (inv@91@00 s@$ g0@10@00 g1@11@00 n@90@00) n@90@00)
      (img@92@00 s@$ g0@10@00 g1@11@00 n@90@00)))
  :pattern ((Set_in n@90@00 g1@11@00))
  :pattern ((inv@91@00 s@$ g0@10@00 g1@11@00 n@90@00))
  :pattern ((img@92@00 s@$ g0@10@00 g1@11@00 n@90@00))
  :qid |next-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@92@00 s@$ g0@10@00 g1@11@00 r)
      (Set_in (inv@91@00 s@$ g0@10@00 g1@11@00 r) g1@11@00))
    (= (inv@91@00 s@$ g0@10@00 g1@11@00 r) r))
  :pattern ((inv@91@00 s@$ g0@10@00 g1@11@00 r))
  :qid |next-fctOfInv|)))
(assert (forall ((r $Ref)) (!
  (and
    (=>
      (Set_in r ($FVF.domain_next (sm@94@00 s@$ g0@10@00 g1@11@00)))
      (and
        (Set_in (inv@91@00 s@$ g0@10@00 g1@11@00 r) g1@11@00)
        (img@92@00 s@$ g0@10@00 g1@11@00 r)))
    (=>
      (and
        (Set_in (inv@91@00 s@$ g0@10@00 g1@11@00 r) g1@11@00)
        (img@92@00 s@$ g0@10@00 g1@11@00 r))
      (Set_in r ($FVF.domain_next (sm@94@00 s@$ g0@10@00 g1@11@00)))))
  :pattern ((Set_in r ($FVF.domain_next (sm@94@00 s@$ g0@10@00 g1@11@00))))
  :qid |qp.fvfDomDef54|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and
        (Set_in (inv@91@00 s@$ g0@10@00 g1@11@00 r) g1@11@00)
        (img@92@00 s@$ g0@10@00 g1@11@00 r))
      (and
        (img@70@00 s@$ g0@10@00 g1@11@00 r)
        (Set_in (inv@69@00 s@$ g0@10@00 g1@11@00 r) g0@10@00)))
    (=
      ($FVF.lookup_next (sm@94@00 s@$ g0@10@00 g1@11@00) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first s@$)) r)))
  :pattern (($FVF.lookup_next (sm@94@00 s@$ g0@10@00 g1@11@00) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first s@$)) r))
  :qid |qp.fvfValDef51|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and
        (Set_in (inv@91@00 s@$ g0@10@00 g1@11@00 r) g1@11@00)
        (img@92@00 s@$ g0@10@00 g1@11@00 r))
      (and
        (img@74@00 s@$ g0@10@00 g1@11@00 r)
        (Set_in (inv@73@00 s@$ g0@10@00 g1@11@00 r) g1@11@00)))
    (=
      ($FVF.lookup_next (sm@94@00 s@$ g0@10@00 g1@11@00) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second s@$))) r)))
  :pattern (($FVF.lookup_next (sm@94@00 s@$ g0@10@00 g1@11@00) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second s@$))) r))
  :qid |qp.fvfValDef52|)))
(assert (forall ((r $Ref)) (!
  (and
    ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first s@$)) r) r)
    ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second s@$))) r) r))
  :pattern (($FVF.lookup_next (sm@94@00 s@$ g0@10@00 g1@11@00) r))
  :qid |qp.fvfResTrgDef53|)))
(assert (=>
  (Set_in v@89@00 g1@11@00)
  (and
    (Set_in v@89@00 g1@11@00)
    (forall ((r $Ref)) (!
      (=>
        (Set_in (inv@91@00 s@$ g0@10@00 g1@11@00 r) g1@11@00)
        ($FVF.loc_next ($FVF.lookup_next (sm@93@00 s@$ g0@10@00 g1@11@00) r) r))
      :pattern ((inv@91@00 s@$ g0@10@00 g1@11@00 r))
      :qid |quant-u-13727|))
    ($$%precondition ($SortWrappers.$FVF<next>To$Snap (sm@94@00 s@$ g0@10@00 g1@11@00)) g1@11@00))))
(assert (or (Set_in v@89@00 g1@11@00) (not (Set_in v@89@00 g1@11@00))))
(pop) ; 4
(pop) ; 3
; Joined path conditions
; Joined path conditions
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@70@00 s@$ g0@10@00 g1@11@00 r)
      (Set_in (inv@69@00 s@$ g0@10@00 g1@11@00 r) g0@10@00))
    (=
      ($FVF.lookup_next (sm@93@00 s@$ g0@10@00 g1@11@00) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first s@$)) r)))
  :pattern (($FVF.lookup_next (sm@93@00 s@$ g0@10@00 g1@11@00) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first s@$)) r))
  :qid |qp.fvfValDef48|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@74@00 s@$ g0@10@00 g1@11@00 r)
      (Set_in (inv@73@00 s@$ g0@10@00 g1@11@00 r) g1@11@00))
    (=
      ($FVF.lookup_next (sm@93@00 s@$ g0@10@00 g1@11@00) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second s@$))) r)))
  :pattern (($FVF.lookup_next (sm@93@00 s@$ g0@10@00 g1@11@00) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second s@$))) r))
  :qid |qp.fvfValDef49|)))
(assert (forall ((r $Ref)) (!
  (and
    ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first s@$)) r) r)
    ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second s@$))) r) r))
  :pattern (($FVF.lookup_next (sm@93@00 s@$ g0@10@00 g1@11@00) r))
  :qid |qp.fvfResTrgDef50|)))
(assert (forall ((n@90@00 $Ref)) (!
  (=>
    (Set_in n@90@00 g1@11@00)
    (and
      (= (inv@91@00 s@$ g0@10@00 g1@11@00 n@90@00) n@90@00)
      (img@92@00 s@$ g0@10@00 g1@11@00 n@90@00)))
  :pattern ((Set_in n@90@00 g1@11@00))
  :pattern ((inv@91@00 s@$ g0@10@00 g1@11@00 n@90@00))
  :pattern ((img@92@00 s@$ g0@10@00 g1@11@00 n@90@00))
  :qid |next-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@92@00 s@$ g0@10@00 g1@11@00 r)
      (Set_in (inv@91@00 s@$ g0@10@00 g1@11@00 r) g1@11@00))
    (= (inv@91@00 s@$ g0@10@00 g1@11@00 r) r))
  :pattern ((inv@91@00 s@$ g0@10@00 g1@11@00 r))
  :qid |next-fctOfInv|)))
(assert (forall ((r $Ref)) (!
  (and
    (=>
      (Set_in r ($FVF.domain_next (sm@94@00 s@$ g0@10@00 g1@11@00)))
      (and
        (Set_in (inv@91@00 s@$ g0@10@00 g1@11@00 r) g1@11@00)
        (img@92@00 s@$ g0@10@00 g1@11@00 r)))
    (=>
      (and
        (Set_in (inv@91@00 s@$ g0@10@00 g1@11@00 r) g1@11@00)
        (img@92@00 s@$ g0@10@00 g1@11@00 r))
      (Set_in r ($FVF.domain_next (sm@94@00 s@$ g0@10@00 g1@11@00)))))
  :pattern ((Set_in r ($FVF.domain_next (sm@94@00 s@$ g0@10@00 g1@11@00))))
  :qid |qp.fvfDomDef54|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and
        (Set_in (inv@91@00 s@$ g0@10@00 g1@11@00 r) g1@11@00)
        (img@92@00 s@$ g0@10@00 g1@11@00 r))
      (and
        (img@70@00 s@$ g0@10@00 g1@11@00 r)
        (Set_in (inv@69@00 s@$ g0@10@00 g1@11@00 r) g0@10@00)))
    (=
      ($FVF.lookup_next (sm@94@00 s@$ g0@10@00 g1@11@00) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first s@$)) r)))
  :pattern (($FVF.lookup_next (sm@94@00 s@$ g0@10@00 g1@11@00) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first s@$)) r))
  :qid |qp.fvfValDef51|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and
        (Set_in (inv@91@00 s@$ g0@10@00 g1@11@00 r) g1@11@00)
        (img@92@00 s@$ g0@10@00 g1@11@00 r))
      (and
        (img@74@00 s@$ g0@10@00 g1@11@00 r)
        (Set_in (inv@73@00 s@$ g0@10@00 g1@11@00 r) g1@11@00)))
    (=
      ($FVF.lookup_next (sm@94@00 s@$ g0@10@00 g1@11@00) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second s@$))) r)))
  :pattern (($FVF.lookup_next (sm@94@00 s@$ g0@10@00 g1@11@00) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second s@$))) r))
  :qid |qp.fvfValDef52|)))
(assert (forall ((r $Ref)) (!
  (and
    ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first s@$)) r) r)
    ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second s@$))) r) r))
  :pattern (($FVF.lookup_next (sm@94@00 s@$ g0@10@00 g1@11@00) r))
  :qid |qp.fvfResTrgDef53|)))
(assert (=>
  (Set_in u@88@00 g1@11@00)
  (and
    (Set_in u@88@00 g1@11@00)
    (=>
      (Set_in v@89@00 g1@11@00)
      (and
        (Set_in v@89@00 g1@11@00)
        (forall ((r $Ref)) (!
          (=>
            (Set_in (inv@91@00 s@$ g0@10@00 g1@11@00 r) g1@11@00)
            ($FVF.loc_next ($FVF.lookup_next (sm@93@00 s@$ g0@10@00 g1@11@00) r) r))
          :pattern ((inv@91@00 s@$ g0@10@00 g1@11@00 r))
          :qid |quant-u-13727|))
        ($$%precondition ($SortWrappers.$FVF<next>To$Snap (sm@94@00 s@$ g0@10@00 g1@11@00)) g1@11@00)))
    (or (Set_in v@89@00 g1@11@00) (not (Set_in v@89@00 g1@11@00))))))
(assert (or (Set_in u@88@00 g1@11@00) (not (Set_in u@88@00 g1@11@00))))
(push) ; 3
; [then-branch: 21 | u@88@00 in g1@11@00 && v@89@00 in g1@11@00 && exists_path[Bool]($$(sm@94@00(s@$, g0@10@00, g1@11@00), g1@11@00), u@88@00, v@89@00) | live]
; [else-branch: 21 | !(u@88@00 in g1@11@00 && v@89@00 in g1@11@00 && exists_path[Bool]($$(sm@94@00(s@$, g0@10@00, g1@11@00), g1@11@00), u@88@00, v@89@00)) | live]
(push) ; 4
; [then-branch: 21 | u@88@00 in g1@11@00 && v@89@00 in g1@11@00 && exists_path[Bool]($$(sm@94@00(s@$, g0@10@00, g1@11@00), g1@11@00), u@88@00, v@89@00)]
(assert (and
  (Set_in u@88@00 g1@11@00)
  (and
    (Set_in v@89@00 g1@11@00)
    (exists_path<Bool> ($$ ($SortWrappers.$FVF<next>To$Snap (sm@94@00 s@$ g0@10@00 g1@11@00)) g1@11@00) u@88@00 v@89@00))))
; [eval] exists_path($$((g1 union g0)), u, v)
; [eval] $$((g1 union g0))
; [eval] (g1 union g0)
(push) ; 5
(declare-const n@95@00 $Ref)
(push) ; 6
; [eval] (n in refs)
(assert (Set_in n@95@00 (Set_union g1@11@00 g0@10@00)))
(pop) ; 6
(declare-fun inv@96@00 ($Snap Set<$Ref> Set<$Ref> $Ref) $Ref)
(declare-fun img@97@00 ($Snap Set<$Ref> Set<$Ref> $Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
(declare-fun sm@98@00 ($Snap Set<$Ref> Set<$Ref>) $FVF<next>)
; Definitional axioms for snapshot map domain
; Definitional axioms for snapshot map values
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@70@00 s@$ g0@10@00 g1@11@00 r)
      (Set_in (inv@69@00 s@$ g0@10@00 g1@11@00 r) g0@10@00))
    (=
      ($FVF.lookup_next (sm@98@00 s@$ g0@10@00 g1@11@00) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first s@$)) r)))
  :pattern (($FVF.lookup_next (sm@98@00 s@$ g0@10@00 g1@11@00) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first s@$)) r))
  :qid |qp.fvfValDef55|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@74@00 s@$ g0@10@00 g1@11@00 r)
      (Set_in (inv@73@00 s@$ g0@10@00 g1@11@00 r) g1@11@00))
    (=
      ($FVF.lookup_next (sm@98@00 s@$ g0@10@00 g1@11@00) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second s@$))) r)))
  :pattern (($FVF.lookup_next (sm@98@00 s@$ g0@10@00 g1@11@00) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second s@$))) r))
  :qid |qp.fvfValDef56|)))
(assert (forall ((r $Ref)) (!
  (and
    ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first s@$)) r) r)
    ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second s@$))) r) r))
  :pattern (($FVF.lookup_next (sm@98@00 s@$ g0@10@00 g1@11@00) r))
  :qid |qp.fvfResTrgDef57|)))
; Check receiver injectivity
(push) ; 6
(assert (not (forall ((n1@95@00 $Ref) (n2@95@00 $Ref)) (!
  (=>
    (and
      (and
        (Set_in n1@95@00 (Set_union g1@11@00 g0@10@00))
        ($FVF.loc_next ($FVF.lookup_next (sm@98@00 s@$ g0@10@00 g1@11@00) n1@95@00) n1@95@00))
      (and
        (Set_in n2@95@00 (Set_union g1@11@00 g0@10@00))
        ($FVF.loc_next ($FVF.lookup_next (sm@98@00 s@$ g0@10@00 g1@11@00) n2@95@00) n2@95@00))
      (= n1@95@00 n2@95@00))
    (= n1@95@00 n2@95@00))
  
  :qid |next-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((n@95@00 $Ref)) (!
  (=>
    (Set_in n@95@00 (Set_union g1@11@00 g0@10@00))
    (and
      (= (inv@96@00 s@$ g0@10@00 g1@11@00 n@95@00) n@95@00)
      (img@97@00 s@$ g0@10@00 g1@11@00 n@95@00)))
  :pattern ((Set_in n@95@00 (Set_union g1@11@00 g0@10@00)))
  :pattern ((inv@96@00 s@$ g0@10@00 g1@11@00 n@95@00))
  :pattern ((img@97@00 s@$ g0@10@00 g1@11@00 n@95@00))
  :qid |next-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@97@00 s@$ g0@10@00 g1@11@00 r)
      (Set_in (inv@96@00 s@$ g0@10@00 g1@11@00 r) (Set_union g1@11@00 g0@10@00)))
    (= (inv@96@00 s@$ g0@10@00 g1@11@00 r) r))
  :pattern ((inv@96@00 s@$ g0@10@00 g1@11@00 r))
  :qid |next-fctOfInv|)))
(assert (forall ((r $Ref)) (!
  (=>
    (Set_in (inv@96@00 s@$ g0@10@00 g1@11@00 r) (Set_union g1@11@00 g0@10@00))
    ($FVF.loc_next ($FVF.lookup_next (sm@98@00 s@$ g0@10@00 g1@11@00) r) r))
  :pattern ((inv@96@00 s@$ g0@10@00 g1@11@00 r))
  :qid |quant-u-13730|)))
(push) ; 6
(assert (not (forall ((r $Ref)) (!
  (=>
    (and
      (Set_in (inv@96@00 s@$ g0@10@00 g1@11@00 r) (Set_union g1@11@00 g0@10@00))
      (img@97@00 s@$ g0@10@00 g1@11@00 r)
      (= r (inv@96@00 s@$ g0@10@00 g1@11@00 r)))
    (>
      (+
        (ite
          (and
            (img@70@00 s@$ g0@10@00 g1@11@00 r)
            (Set_in (inv@69@00 s@$ g0@10@00 g1@11@00 r) g0@10@00))
          $Perm.Write
          $Perm.No)
        (ite
          (and
            (img@74@00 s@$ g0@10@00 g1@11@00 r)
            (Set_in (inv@73@00 s@$ g0@10@00 g1@11@00 r) g1@11@00))
          $Perm.Write
          $Perm.No))
      $Perm.No))
  
  :qid |quant-u-13731|))))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(declare-fun sm@99@00 ($Snap Set<$Ref> Set<$Ref>) $FVF<next>)
; Definitional axioms for snapshot map domain
(assert (forall ((r $Ref)) (!
  (and
    (=>
      (Set_in r ($FVF.domain_next (sm@99@00 s@$ g0@10@00 g1@11@00)))
      (and
        (Set_in (inv@96@00 s@$ g0@10@00 g1@11@00 r) (Set_union g1@11@00 g0@10@00))
        (img@97@00 s@$ g0@10@00 g1@11@00 r)))
    (=>
      (and
        (Set_in (inv@96@00 s@$ g0@10@00 g1@11@00 r) (Set_union g1@11@00 g0@10@00))
        (img@97@00 s@$ g0@10@00 g1@11@00 r))
      (Set_in r ($FVF.domain_next (sm@99@00 s@$ g0@10@00 g1@11@00)))))
  :pattern ((Set_in r ($FVF.domain_next (sm@99@00 s@$ g0@10@00 g1@11@00))))
  :qid |qp.fvfDomDef61|)))
; Definitional axioms for snapshot map values
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and
        (Set_in (inv@96@00 s@$ g0@10@00 g1@11@00 r) (Set_union g1@11@00 g0@10@00))
        (img@97@00 s@$ g0@10@00 g1@11@00 r))
      (and
        (img@70@00 s@$ g0@10@00 g1@11@00 r)
        (Set_in (inv@69@00 s@$ g0@10@00 g1@11@00 r) g0@10@00)))
    (=
      ($FVF.lookup_next (sm@99@00 s@$ g0@10@00 g1@11@00) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first s@$)) r)))
  :pattern (($FVF.lookup_next (sm@99@00 s@$ g0@10@00 g1@11@00) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first s@$)) r))
  :qid |qp.fvfValDef58|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and
        (Set_in (inv@96@00 s@$ g0@10@00 g1@11@00 r) (Set_union g1@11@00 g0@10@00))
        (img@97@00 s@$ g0@10@00 g1@11@00 r))
      (and
        (img@74@00 s@$ g0@10@00 g1@11@00 r)
        (Set_in (inv@73@00 s@$ g0@10@00 g1@11@00 r) g1@11@00)))
    (=
      ($FVF.lookup_next (sm@99@00 s@$ g0@10@00 g1@11@00) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second s@$))) r)))
  :pattern (($FVF.lookup_next (sm@99@00 s@$ g0@10@00 g1@11@00) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second s@$))) r))
  :qid |qp.fvfValDef59|)))
(assert (forall ((r $Ref)) (!
  (and
    ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first s@$)) r) r)
    ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second s@$))) r) r))
  :pattern (($FVF.lookup_next (sm@99@00 s@$ g0@10@00 g1@11@00) r))
  :qid |qp.fvfResTrgDef60|)))
(assert ($$%precondition ($SortWrappers.$FVF<next>To$Snap (sm@99@00 s@$ g0@10@00 g1@11@00)) (Set_union g1@11@00 g0@10@00)))
(pop) ; 5
; Joined path conditions
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@70@00 s@$ g0@10@00 g1@11@00 r)
      (Set_in (inv@69@00 s@$ g0@10@00 g1@11@00 r) g0@10@00))
    (=
      ($FVF.lookup_next (sm@98@00 s@$ g0@10@00 g1@11@00) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first s@$)) r)))
  :pattern (($FVF.lookup_next (sm@98@00 s@$ g0@10@00 g1@11@00) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first s@$)) r))
  :qid |qp.fvfValDef55|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@74@00 s@$ g0@10@00 g1@11@00 r)
      (Set_in (inv@73@00 s@$ g0@10@00 g1@11@00 r) g1@11@00))
    (=
      ($FVF.lookup_next (sm@98@00 s@$ g0@10@00 g1@11@00) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second s@$))) r)))
  :pattern (($FVF.lookup_next (sm@98@00 s@$ g0@10@00 g1@11@00) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second s@$))) r))
  :qid |qp.fvfValDef56|)))
(assert (forall ((r $Ref)) (!
  (and
    ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first s@$)) r) r)
    ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second s@$))) r) r))
  :pattern (($FVF.lookup_next (sm@98@00 s@$ g0@10@00 g1@11@00) r))
  :qid |qp.fvfResTrgDef57|)))
(assert (forall ((n@95@00 $Ref)) (!
  (=>
    (Set_in n@95@00 (Set_union g1@11@00 g0@10@00))
    (and
      (= (inv@96@00 s@$ g0@10@00 g1@11@00 n@95@00) n@95@00)
      (img@97@00 s@$ g0@10@00 g1@11@00 n@95@00)))
  :pattern ((Set_in n@95@00 (Set_union g1@11@00 g0@10@00)))
  :pattern ((inv@96@00 s@$ g0@10@00 g1@11@00 n@95@00))
  :pattern ((img@97@00 s@$ g0@10@00 g1@11@00 n@95@00))
  :qid |next-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@97@00 s@$ g0@10@00 g1@11@00 r)
      (Set_in (inv@96@00 s@$ g0@10@00 g1@11@00 r) (Set_union g1@11@00 g0@10@00)))
    (= (inv@96@00 s@$ g0@10@00 g1@11@00 r) r))
  :pattern ((inv@96@00 s@$ g0@10@00 g1@11@00 r))
  :qid |next-fctOfInv|)))
(assert (forall ((r $Ref)) (!
  (and
    (=>
      (Set_in r ($FVF.domain_next (sm@99@00 s@$ g0@10@00 g1@11@00)))
      (and
        (Set_in (inv@96@00 s@$ g0@10@00 g1@11@00 r) (Set_union g1@11@00 g0@10@00))
        (img@97@00 s@$ g0@10@00 g1@11@00 r)))
    (=>
      (and
        (Set_in (inv@96@00 s@$ g0@10@00 g1@11@00 r) (Set_union g1@11@00 g0@10@00))
        (img@97@00 s@$ g0@10@00 g1@11@00 r))
      (Set_in r ($FVF.domain_next (sm@99@00 s@$ g0@10@00 g1@11@00)))))
  :pattern ((Set_in r ($FVF.domain_next (sm@99@00 s@$ g0@10@00 g1@11@00))))
  :qid |qp.fvfDomDef61|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and
        (Set_in (inv@96@00 s@$ g0@10@00 g1@11@00 r) (Set_union g1@11@00 g0@10@00))
        (img@97@00 s@$ g0@10@00 g1@11@00 r))
      (and
        (img@70@00 s@$ g0@10@00 g1@11@00 r)
        (Set_in (inv@69@00 s@$ g0@10@00 g1@11@00 r) g0@10@00)))
    (=
      ($FVF.lookup_next (sm@99@00 s@$ g0@10@00 g1@11@00) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first s@$)) r)))
  :pattern (($FVF.lookup_next (sm@99@00 s@$ g0@10@00 g1@11@00) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first s@$)) r))
  :qid |qp.fvfValDef58|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and
        (Set_in (inv@96@00 s@$ g0@10@00 g1@11@00 r) (Set_union g1@11@00 g0@10@00))
        (img@97@00 s@$ g0@10@00 g1@11@00 r))
      (and
        (img@74@00 s@$ g0@10@00 g1@11@00 r)
        (Set_in (inv@73@00 s@$ g0@10@00 g1@11@00 r) g1@11@00)))
    (=
      ($FVF.lookup_next (sm@99@00 s@$ g0@10@00 g1@11@00) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second s@$))) r)))
  :pattern (($FVF.lookup_next (sm@99@00 s@$ g0@10@00 g1@11@00) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second s@$))) r))
  :qid |qp.fvfValDef59|)))
(assert (forall ((r $Ref)) (!
  (and
    ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first s@$)) r) r)
    ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second s@$))) r) r))
  :pattern (($FVF.lookup_next (sm@99@00 s@$ g0@10@00 g1@11@00) r))
  :qid |qp.fvfResTrgDef60|)))
(assert (and
  (forall ((r $Ref)) (!
    (=>
      (Set_in (inv@96@00 s@$ g0@10@00 g1@11@00 r) (Set_union g1@11@00 g0@10@00))
      ($FVF.loc_next ($FVF.lookup_next (sm@98@00 s@$ g0@10@00 g1@11@00) r) r))
    :pattern ((inv@96@00 s@$ g0@10@00 g1@11@00 r))
    :qid |quant-u-13730|))
  ($$%precondition ($SortWrappers.$FVF<next>To$Snap (sm@99@00 s@$ g0@10@00 g1@11@00)) (Set_union g1@11@00 g0@10@00))))
(pop) ; 4
(push) ; 4
; [else-branch: 21 | !(u@88@00 in g1@11@00 && v@89@00 in g1@11@00 && exists_path[Bool]($$(sm@94@00(s@$, g0@10@00, g1@11@00), g1@11@00), u@88@00, v@89@00))]
(assert (not
  (and
    (Set_in u@88@00 g1@11@00)
    (and
      (Set_in v@89@00 g1@11@00)
      (exists_path<Bool> ($$ ($SortWrappers.$FVF<next>To$Snap (sm@94@00 s@$ g0@10@00 g1@11@00)) g1@11@00) u@88@00 v@89@00)))))
(pop) ; 4
(pop) ; 3
; Joined path conditions
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@70@00 s@$ g0@10@00 g1@11@00 r)
      (Set_in (inv@69@00 s@$ g0@10@00 g1@11@00 r) g0@10@00))
    (=
      ($FVF.lookup_next (sm@98@00 s@$ g0@10@00 g1@11@00) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first s@$)) r)))
  :pattern (($FVF.lookup_next (sm@98@00 s@$ g0@10@00 g1@11@00) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first s@$)) r))
  :qid |qp.fvfValDef55|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@74@00 s@$ g0@10@00 g1@11@00 r)
      (Set_in (inv@73@00 s@$ g0@10@00 g1@11@00 r) g1@11@00))
    (=
      ($FVF.lookup_next (sm@98@00 s@$ g0@10@00 g1@11@00) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second s@$))) r)))
  :pattern (($FVF.lookup_next (sm@98@00 s@$ g0@10@00 g1@11@00) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second s@$))) r))
  :qid |qp.fvfValDef56|)))
(assert (forall ((r $Ref)) (!
  (and
    ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first s@$)) r) r)
    ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second s@$))) r) r))
  :pattern (($FVF.lookup_next (sm@98@00 s@$ g0@10@00 g1@11@00) r))
  :qid |qp.fvfResTrgDef57|)))
(assert (forall ((n@95@00 $Ref)) (!
  (=>
    (Set_in n@95@00 (Set_union g1@11@00 g0@10@00))
    (and
      (= (inv@96@00 s@$ g0@10@00 g1@11@00 n@95@00) n@95@00)
      (img@97@00 s@$ g0@10@00 g1@11@00 n@95@00)))
  :pattern ((Set_in n@95@00 (Set_union g1@11@00 g0@10@00)))
  :pattern ((inv@96@00 s@$ g0@10@00 g1@11@00 n@95@00))
  :pattern ((img@97@00 s@$ g0@10@00 g1@11@00 n@95@00))
  :qid |next-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@97@00 s@$ g0@10@00 g1@11@00 r)
      (Set_in (inv@96@00 s@$ g0@10@00 g1@11@00 r) (Set_union g1@11@00 g0@10@00)))
    (= (inv@96@00 s@$ g0@10@00 g1@11@00 r) r))
  :pattern ((inv@96@00 s@$ g0@10@00 g1@11@00 r))
  :qid |next-fctOfInv|)))
(assert (forall ((r $Ref)) (!
  (and
    (=>
      (Set_in r ($FVF.domain_next (sm@99@00 s@$ g0@10@00 g1@11@00)))
      (and
        (Set_in (inv@96@00 s@$ g0@10@00 g1@11@00 r) (Set_union g1@11@00 g0@10@00))
        (img@97@00 s@$ g0@10@00 g1@11@00 r)))
    (=>
      (and
        (Set_in (inv@96@00 s@$ g0@10@00 g1@11@00 r) (Set_union g1@11@00 g0@10@00))
        (img@97@00 s@$ g0@10@00 g1@11@00 r))
      (Set_in r ($FVF.domain_next (sm@99@00 s@$ g0@10@00 g1@11@00)))))
  :pattern ((Set_in r ($FVF.domain_next (sm@99@00 s@$ g0@10@00 g1@11@00))))
  :qid |qp.fvfDomDef61|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and
        (Set_in (inv@96@00 s@$ g0@10@00 g1@11@00 r) (Set_union g1@11@00 g0@10@00))
        (img@97@00 s@$ g0@10@00 g1@11@00 r))
      (and
        (img@70@00 s@$ g0@10@00 g1@11@00 r)
        (Set_in (inv@69@00 s@$ g0@10@00 g1@11@00 r) g0@10@00)))
    (=
      ($FVF.lookup_next (sm@99@00 s@$ g0@10@00 g1@11@00) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first s@$)) r)))
  :pattern (($FVF.lookup_next (sm@99@00 s@$ g0@10@00 g1@11@00) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first s@$)) r))
  :qid |qp.fvfValDef58|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and
        (Set_in (inv@96@00 s@$ g0@10@00 g1@11@00 r) (Set_union g1@11@00 g0@10@00))
        (img@97@00 s@$ g0@10@00 g1@11@00 r))
      (and
        (img@74@00 s@$ g0@10@00 g1@11@00 r)
        (Set_in (inv@73@00 s@$ g0@10@00 g1@11@00 r) g1@11@00)))
    (=
      ($FVF.lookup_next (sm@99@00 s@$ g0@10@00 g1@11@00) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second s@$))) r)))
  :pattern (($FVF.lookup_next (sm@99@00 s@$ g0@10@00 g1@11@00) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second s@$))) r))
  :qid |qp.fvfValDef59|)))
(assert (forall ((r $Ref)) (!
  (and
    ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first s@$)) r) r)
    ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second s@$))) r) r))
  :pattern (($FVF.lookup_next (sm@99@00 s@$ g0@10@00 g1@11@00) r))
  :qid |qp.fvfResTrgDef60|)))
(assert (=>
  (and
    (Set_in u@88@00 g1@11@00)
    (and
      (Set_in v@89@00 g1@11@00)
      (exists_path<Bool> ($$ ($SortWrappers.$FVF<next>To$Snap (sm@94@00 s@$ g0@10@00 g1@11@00)) g1@11@00) u@88@00 v@89@00)))
  (and
    (Set_in u@88@00 g1@11@00)
    (Set_in v@89@00 g1@11@00)
    (exists_path<Bool> ($$ ($SortWrappers.$FVF<next>To$Snap (sm@94@00 s@$ g0@10@00 g1@11@00)) g1@11@00) u@88@00 v@89@00)
    (forall ((r $Ref)) (!
      (=>
        (Set_in (inv@96@00 s@$ g0@10@00 g1@11@00 r) (Set_union g1@11@00 g0@10@00))
        ($FVF.loc_next ($FVF.lookup_next (sm@98@00 s@$ g0@10@00 g1@11@00) r) r))
      :pattern ((inv@96@00 s@$ g0@10@00 g1@11@00 r))
      :qid |quant-u-13730|))
    ($$%precondition ($SortWrappers.$FVF<next>To$Snap (sm@99@00 s@$ g0@10@00 g1@11@00)) (Set_union g1@11@00 g0@10@00)))))
; Joined path conditions
(assert (or
  (not
    (and
      (Set_in u@88@00 g1@11@00)
      (and
        (Set_in v@89@00 g1@11@00)
        (exists_path<Bool> ($$ ($SortWrappers.$FVF<next>To$Snap (sm@94@00 s@$ g0@10@00 g1@11@00)) g1@11@00) u@88@00 v@89@00))))
  (and
    (Set_in u@88@00 g1@11@00)
    (and
      (Set_in v@89@00 g1@11@00)
      (exists_path<Bool> ($$ ($SortWrappers.$FVF<next>To$Snap (sm@94@00 s@$ g0@10@00 g1@11@00)) g1@11@00) u@88@00 v@89@00)))))
(pop) ; 2
; Nested auxiliary terms: globals (aux)
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@70@00 s@$ g0@10@00 g1@11@00 r)
      (Set_in (inv@69@00 s@$ g0@10@00 g1@11@00 r) g0@10@00))
    (=
      ($FVF.lookup_next (sm@93@00 s@$ g0@10@00 g1@11@00) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first s@$)) r)))
  :pattern (($FVF.lookup_next (sm@93@00 s@$ g0@10@00 g1@11@00) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first s@$)) r))
  :qid |qp.fvfValDef48|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@74@00 s@$ g0@10@00 g1@11@00 r)
      (Set_in (inv@73@00 s@$ g0@10@00 g1@11@00 r) g1@11@00))
    (=
      ($FVF.lookup_next (sm@93@00 s@$ g0@10@00 g1@11@00) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second s@$))) r)))
  :pattern (($FVF.lookup_next (sm@93@00 s@$ g0@10@00 g1@11@00) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second s@$))) r))
  :qid |qp.fvfValDef49|)))
(assert (forall ((r $Ref)) (!
  (and
    ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first s@$)) r) r)
    ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second s@$))) r) r))
  :pattern (($FVF.lookup_next (sm@93@00 s@$ g0@10@00 g1@11@00) r))
  :qid |qp.fvfResTrgDef50|)))
(assert (forall ((n@90@00 $Ref)) (!
  (=>
    (Set_in n@90@00 g1@11@00)
    (and
      (= (inv@91@00 s@$ g0@10@00 g1@11@00 n@90@00) n@90@00)
      (img@92@00 s@$ g0@10@00 g1@11@00 n@90@00)))
  :pattern ((Set_in n@90@00 g1@11@00))
  :pattern ((inv@91@00 s@$ g0@10@00 g1@11@00 n@90@00))
  :pattern ((img@92@00 s@$ g0@10@00 g1@11@00 n@90@00))
  :qid |next-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@92@00 s@$ g0@10@00 g1@11@00 r)
      (Set_in (inv@91@00 s@$ g0@10@00 g1@11@00 r) g1@11@00))
    (= (inv@91@00 s@$ g0@10@00 g1@11@00 r) r))
  :pattern ((inv@91@00 s@$ g0@10@00 g1@11@00 r))
  :qid |next-fctOfInv|)))
(assert (forall ((r $Ref)) (!
  (and
    (=>
      (Set_in r ($FVF.domain_next (sm@94@00 s@$ g0@10@00 g1@11@00)))
      (and
        (Set_in (inv@91@00 s@$ g0@10@00 g1@11@00 r) g1@11@00)
        (img@92@00 s@$ g0@10@00 g1@11@00 r)))
    (=>
      (and
        (Set_in (inv@91@00 s@$ g0@10@00 g1@11@00 r) g1@11@00)
        (img@92@00 s@$ g0@10@00 g1@11@00 r))
      (Set_in r ($FVF.domain_next (sm@94@00 s@$ g0@10@00 g1@11@00)))))
  :pattern ((Set_in r ($FVF.domain_next (sm@94@00 s@$ g0@10@00 g1@11@00))))
  :qid |qp.fvfDomDef54|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and
        (Set_in (inv@91@00 s@$ g0@10@00 g1@11@00 r) g1@11@00)
        (img@92@00 s@$ g0@10@00 g1@11@00 r))
      (and
        (img@70@00 s@$ g0@10@00 g1@11@00 r)
        (Set_in (inv@69@00 s@$ g0@10@00 g1@11@00 r) g0@10@00)))
    (=
      ($FVF.lookup_next (sm@94@00 s@$ g0@10@00 g1@11@00) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first s@$)) r)))
  :pattern (($FVF.lookup_next (sm@94@00 s@$ g0@10@00 g1@11@00) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first s@$)) r))
  :qid |qp.fvfValDef51|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and
        (Set_in (inv@91@00 s@$ g0@10@00 g1@11@00 r) g1@11@00)
        (img@92@00 s@$ g0@10@00 g1@11@00 r))
      (and
        (img@74@00 s@$ g0@10@00 g1@11@00 r)
        (Set_in (inv@73@00 s@$ g0@10@00 g1@11@00 r) g1@11@00)))
    (=
      ($FVF.lookup_next (sm@94@00 s@$ g0@10@00 g1@11@00) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second s@$))) r)))
  :pattern (($FVF.lookup_next (sm@94@00 s@$ g0@10@00 g1@11@00) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second s@$))) r))
  :qid |qp.fvfValDef52|)))
(assert (forall ((r $Ref)) (!
  (and
    ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first s@$)) r) r)
    ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second s@$))) r) r))
  :pattern (($FVF.lookup_next (sm@94@00 s@$ g0@10@00 g1@11@00) r))
  :qid |qp.fvfResTrgDef53|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@70@00 s@$ g0@10@00 g1@11@00 r)
      (Set_in (inv@69@00 s@$ g0@10@00 g1@11@00 r) g0@10@00))
    (=
      ($FVF.lookup_next (sm@98@00 s@$ g0@10@00 g1@11@00) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first s@$)) r)))
  :pattern (($FVF.lookup_next (sm@98@00 s@$ g0@10@00 g1@11@00) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first s@$)) r))
  :qid |qp.fvfValDef55|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@74@00 s@$ g0@10@00 g1@11@00 r)
      (Set_in (inv@73@00 s@$ g0@10@00 g1@11@00 r) g1@11@00))
    (=
      ($FVF.lookup_next (sm@98@00 s@$ g0@10@00 g1@11@00) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second s@$))) r)))
  :pattern (($FVF.lookup_next (sm@98@00 s@$ g0@10@00 g1@11@00) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second s@$))) r))
  :qid |qp.fvfValDef56|)))
(assert (forall ((r $Ref)) (!
  (and
    ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first s@$)) r) r)
    ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second s@$))) r) r))
  :pattern (($FVF.lookup_next (sm@98@00 s@$ g0@10@00 g1@11@00) r))
  :qid |qp.fvfResTrgDef57|)))
(assert (forall ((n@95@00 $Ref)) (!
  (=>
    (Set_in n@95@00 (Set_union g1@11@00 g0@10@00))
    (and
      (= (inv@96@00 s@$ g0@10@00 g1@11@00 n@95@00) n@95@00)
      (img@97@00 s@$ g0@10@00 g1@11@00 n@95@00)))
  :pattern ((Set_in n@95@00 (Set_union g1@11@00 g0@10@00)))
  :pattern ((inv@96@00 s@$ g0@10@00 g1@11@00 n@95@00))
  :pattern ((img@97@00 s@$ g0@10@00 g1@11@00 n@95@00))
  :qid |next-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@97@00 s@$ g0@10@00 g1@11@00 r)
      (Set_in (inv@96@00 s@$ g0@10@00 g1@11@00 r) (Set_union g1@11@00 g0@10@00)))
    (= (inv@96@00 s@$ g0@10@00 g1@11@00 r) r))
  :pattern ((inv@96@00 s@$ g0@10@00 g1@11@00 r))
  :qid |next-fctOfInv|)))
(assert (forall ((r $Ref)) (!
  (and
    (=>
      (Set_in r ($FVF.domain_next (sm@99@00 s@$ g0@10@00 g1@11@00)))
      (and
        (Set_in (inv@96@00 s@$ g0@10@00 g1@11@00 r) (Set_union g1@11@00 g0@10@00))
        (img@97@00 s@$ g0@10@00 g1@11@00 r)))
    (=>
      (and
        (Set_in (inv@96@00 s@$ g0@10@00 g1@11@00 r) (Set_union g1@11@00 g0@10@00))
        (img@97@00 s@$ g0@10@00 g1@11@00 r))
      (Set_in r ($FVF.domain_next (sm@99@00 s@$ g0@10@00 g1@11@00)))))
  :pattern ((Set_in r ($FVF.domain_next (sm@99@00 s@$ g0@10@00 g1@11@00))))
  :qid |qp.fvfDomDef61|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and
        (Set_in (inv@96@00 s@$ g0@10@00 g1@11@00 r) (Set_union g1@11@00 g0@10@00))
        (img@97@00 s@$ g0@10@00 g1@11@00 r))
      (and
        (img@70@00 s@$ g0@10@00 g1@11@00 r)
        (Set_in (inv@69@00 s@$ g0@10@00 g1@11@00 r) g0@10@00)))
    (=
      ($FVF.lookup_next (sm@99@00 s@$ g0@10@00 g1@11@00) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first s@$)) r)))
  :pattern (($FVF.lookup_next (sm@99@00 s@$ g0@10@00 g1@11@00) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first s@$)) r))
  :qid |qp.fvfValDef58|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and
        (Set_in (inv@96@00 s@$ g0@10@00 g1@11@00 r) (Set_union g1@11@00 g0@10@00))
        (img@97@00 s@$ g0@10@00 g1@11@00 r))
      (and
        (img@74@00 s@$ g0@10@00 g1@11@00 r)
        (Set_in (inv@73@00 s@$ g0@10@00 g1@11@00 r) g1@11@00)))
    (=
      ($FVF.lookup_next (sm@99@00 s@$ g0@10@00 g1@11@00) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second s@$))) r)))
  :pattern (($FVF.lookup_next (sm@99@00 s@$ g0@10@00 g1@11@00) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second s@$))) r))
  :qid |qp.fvfValDef59|)))
(assert (forall ((r $Ref)) (!
  (and
    ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first s@$)) r) r)
    ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second s@$))) r) r))
  :pattern (($FVF.lookup_next (sm@99@00 s@$ g0@10@00 g1@11@00) r))
  :qid |qp.fvfResTrgDef60|)))
; Nested auxiliary terms: non-globals (aux)
(assert (forall ((u@88@00 $Ref) (v@89@00 $Ref)) (!
  (and
    (=>
      (Set_in u@88@00 g1@11@00)
      (and
        (Set_in u@88@00 g1@11@00)
        (=>
          (Set_in v@89@00 g1@11@00)
          (and
            (Set_in v@89@00 g1@11@00)
            (forall ((r $Ref)) (!
              (=>
                (Set_in (inv@91@00 s@$ g0@10@00 g1@11@00 r) g1@11@00)
                ($FVF.loc_next ($FVF.lookup_next (sm@93@00 s@$ g0@10@00 g1@11@00) r) r))
              :pattern ((inv@91@00 s@$ g0@10@00 g1@11@00 r))
              :qid |quant-u-13727|))
            ($$%precondition ($SortWrappers.$FVF<next>To$Snap (sm@94@00 s@$ g0@10@00 g1@11@00)) g1@11@00)))
        (or (Set_in v@89@00 g1@11@00) (not (Set_in v@89@00 g1@11@00)))))
    (or (Set_in u@88@00 g1@11@00) (not (Set_in u@88@00 g1@11@00)))
    (=>
      (and
        (Set_in u@88@00 g1@11@00)
        (and
          (Set_in v@89@00 g1@11@00)
          (exists_path<Bool> ($$ ($SortWrappers.$FVF<next>To$Snap (sm@94@00 s@$ g0@10@00 g1@11@00)) g1@11@00) u@88@00 v@89@00)))
      (and
        (Set_in u@88@00 g1@11@00)
        (Set_in v@89@00 g1@11@00)
        (exists_path<Bool> ($$ ($SortWrappers.$FVF<next>To$Snap (sm@94@00 s@$ g0@10@00 g1@11@00)) g1@11@00) u@88@00 v@89@00)
        (forall ((r $Ref)) (!
          (=>
            (Set_in (inv@96@00 s@$ g0@10@00 g1@11@00 r) (Set_union g1@11@00 g0@10@00))
            ($FVF.loc_next ($FVF.lookup_next (sm@98@00 s@$ g0@10@00 g1@11@00) r) r))
          :pattern ((inv@96@00 s@$ g0@10@00 g1@11@00 r))
          :qid |quant-u-13730|))
        ($$%precondition ($SortWrappers.$FVF<next>To$Snap (sm@99@00 s@$ g0@10@00 g1@11@00)) (Set_union g1@11@00 g0@10@00))))
    (or
      (not
        (and
          (Set_in u@88@00 g1@11@00)
          (and
            (Set_in v@89@00 g1@11@00)
            (exists_path<Bool> ($$ ($SortWrappers.$FVF<next>To$Snap (sm@94@00 s@$ g0@10@00 g1@11@00)) g1@11@00) u@88@00 v@89@00))))
      (and
        (Set_in u@88@00 g1@11@00)
        (and
          (Set_in v@89@00 g1@11@00)
          (exists_path<Bool> ($$ ($SortWrappers.$FVF<next>To$Snap (sm@94@00 s@$ g0@10@00 g1@11@00)) g1@11@00) u@88@00 v@89@00)))))
  :pattern ((exists_path<Bool> ($$ ($SortWrappers.$FVF<next>To$Snap (sm@94@00 s@$ g0@10@00 g1@11@00)) g1@11@00) u@88@00 v@89@00))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/graphs/static/tests/lists/framing1.vpr@296@13@296@182-aux|)))
(assert (forall ((u@88@00 $Ref) (v@89@00 $Ref)) (!
  (and
    (=>
      (Set_in u@88@00 g1@11@00)
      (and
        (Set_in u@88@00 g1@11@00)
        (=>
          (Set_in v@89@00 g1@11@00)
          (and
            (Set_in v@89@00 g1@11@00)
            (forall ((r $Ref)) (!
              (=>
                (Set_in (inv@91@00 s@$ g0@10@00 g1@11@00 r) g1@11@00)
                ($FVF.loc_next ($FVF.lookup_next (sm@93@00 s@$ g0@10@00 g1@11@00) r) r))
              :pattern ((inv@91@00 s@$ g0@10@00 g1@11@00 r))
              :qid |quant-u-13727|))
            ($$%precondition ($SortWrappers.$FVF<next>To$Snap (sm@94@00 s@$ g0@10@00 g1@11@00)) g1@11@00)))
        (or (Set_in v@89@00 g1@11@00) (not (Set_in v@89@00 g1@11@00)))))
    (or (Set_in u@88@00 g1@11@00) (not (Set_in u@88@00 g1@11@00)))
    (=>
      (and
        (Set_in u@88@00 g1@11@00)
        (and
          (Set_in v@89@00 g1@11@00)
          (exists_path<Bool> ($$ ($SortWrappers.$FVF<next>To$Snap (sm@94@00 s@$ g0@10@00 g1@11@00)) g1@11@00) u@88@00 v@89@00)))
      (and
        (Set_in u@88@00 g1@11@00)
        (Set_in v@89@00 g1@11@00)
        (exists_path<Bool> ($$ ($SortWrappers.$FVF<next>To$Snap (sm@94@00 s@$ g0@10@00 g1@11@00)) g1@11@00) u@88@00 v@89@00)
        (forall ((r $Ref)) (!
          (=>
            (Set_in (inv@96@00 s@$ g0@10@00 g1@11@00 r) (Set_union g1@11@00 g0@10@00))
            ($FVF.loc_next ($FVF.lookup_next (sm@98@00 s@$ g0@10@00 g1@11@00) r) r))
          :pattern ((inv@96@00 s@$ g0@10@00 g1@11@00 r))
          :qid |quant-u-13730|))
        ($$%precondition ($SortWrappers.$FVF<next>To$Snap (sm@99@00 s@$ g0@10@00 g1@11@00)) (Set_union g1@11@00 g0@10@00))))
    (or
      (not
        (and
          (Set_in u@88@00 g1@11@00)
          (and
            (Set_in v@89@00 g1@11@00)
            (exists_path<Bool> ($$ ($SortWrappers.$FVF<next>To$Snap (sm@94@00 s@$ g0@10@00 g1@11@00)) g1@11@00) u@88@00 v@89@00))))
      (and
        (Set_in u@88@00 g1@11@00)
        (and
          (Set_in v@89@00 g1@11@00)
          (exists_path<Bool> ($$ ($SortWrappers.$FVF<next>To$Snap (sm@94@00 s@$ g0@10@00 g1@11@00)) g1@11@00) u@88@00 v@89@00)))))
  :pattern ((exists_path<Bool> ($$ ($SortWrappers.$FVF<next>To$Snap (sm@99@00 s@$ g0@10@00 g1@11@00)) (Set_union g1@11@00 g0@10@00)) u@88@00 v@89@00))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/graphs/static/tests/lists/framing1.vpr@296@13@296@182-aux|)))
(assert (forall ((u@88@00 $Ref) (v@89@00 $Ref)) (!
  (=>
    (and
      (Set_in u@88@00 g1@11@00)
      (and
        (Set_in v@89@00 g1@11@00)
        (exists_path<Bool> ($$ ($SortWrappers.$FVF<next>To$Snap (sm@94@00 s@$ g0@10@00 g1@11@00)) g1@11@00) u@88@00 v@89@00)))
    (exists_path<Bool> ($$ ($SortWrappers.$FVF<next>To$Snap (sm@99@00 s@$ g0@10@00 g1@11@00)) (Set_union g1@11@00 g0@10@00)) u@88@00 v@89@00))
  :pattern ((exists_path<Bool> ($$ ($SortWrappers.$FVF<next>To$Snap (sm@94@00 s@$ g0@10@00 g1@11@00)) g1@11@00) u@88@00 v@89@00))
  :pattern ((exists_path<Bool> ($$ ($SortWrappers.$FVF<next>To$Snap (sm@99@00 s@$ g0@10@00 g1@11@00)) (Set_union g1@11@00 g0@10@00)) u@88@00 v@89@00))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/graphs/static/tests/lists/framing1.vpr@296@13@296@182|)))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second $t@76@00)))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@76@00))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@76@00)))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@76@00))))
  $Snap.unit))
; [eval] (forall u: Ref, v: Ref :: { (u in g0), (v in g0) } { (u in g0), exists_path($$(g0), u, v) } { (u in g0), exists_path($$((g0 union g1)), u, v) } { (v in g0), exists_path($$(g0), u, v) } { (v in g0), exists_path($$((g0 union g1)), u, v) } { exists_path($$(g0), u, v) } { exists_path($$((g0 union g1)), u, v) } (u in g0) && ((v in g0) && !exists_path($$(g0), u, v)) ==> !exists_path($$((g0 union g1)), u, v))
(declare-const u@100@00 $Ref)
(declare-const v@101@00 $Ref)
(push) ; 2
; [eval] (u in g0) && ((v in g0) && !exists_path($$(g0), u, v)) ==> !exists_path($$((g0 union g1)), u, v)
; [eval] (u in g0) && ((v in g0) && !exists_path($$(g0), u, v))
; [eval] (u in g0)
(push) ; 3
; [then-branch: 22 | !(u@100@00 in g0@10@00) | live]
; [else-branch: 22 | u@100@00 in g0@10@00 | live]
(push) ; 4
; [then-branch: 22 | !(u@100@00 in g0@10@00)]
(assert (not (Set_in u@100@00 g0@10@00)))
(pop) ; 4
(push) ; 4
; [else-branch: 22 | u@100@00 in g0@10@00]
(assert (Set_in u@100@00 g0@10@00))
; [eval] (v in g0)
(push) ; 5
; [then-branch: 23 | !(v@101@00 in g0@10@00) | live]
; [else-branch: 23 | v@101@00 in g0@10@00 | live]
(push) ; 6
; [then-branch: 23 | !(v@101@00 in g0@10@00)]
(assert (not (Set_in v@101@00 g0@10@00)))
(pop) ; 6
(push) ; 6
; [else-branch: 23 | v@101@00 in g0@10@00]
(assert (Set_in v@101@00 g0@10@00))
; [eval] !exists_path($$(g0), u, v)
; [eval] exists_path($$(g0), u, v)
; [eval] $$(g0)
(push) ; 7
(declare-const n@102@00 $Ref)
(push) ; 8
; [eval] (n in refs)
(assert (Set_in n@102@00 g0@10@00))
(pop) ; 8
(declare-fun inv@103@00 ($Snap Set<$Ref> Set<$Ref> $Ref) $Ref)
(declare-fun img@104@00 ($Snap Set<$Ref> Set<$Ref> $Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
(declare-fun sm@105@00 ($Snap Set<$Ref> Set<$Ref>) $FVF<next>)
; Definitional axioms for snapshot map domain
; Definitional axioms for snapshot map values
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@70@00 s@$ g0@10@00 g1@11@00 r)
      (Set_in (inv@69@00 s@$ g0@10@00 g1@11@00 r) g0@10@00))
    (=
      ($FVF.lookup_next (sm@105@00 s@$ g0@10@00 g1@11@00) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first s@$)) r)))
  :pattern (($FVF.lookup_next (sm@105@00 s@$ g0@10@00 g1@11@00) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first s@$)) r))
  :qid |qp.fvfValDef62|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@74@00 s@$ g0@10@00 g1@11@00 r)
      (Set_in (inv@73@00 s@$ g0@10@00 g1@11@00 r) g1@11@00))
    (=
      ($FVF.lookup_next (sm@105@00 s@$ g0@10@00 g1@11@00) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second s@$))) r)))
  :pattern (($FVF.lookup_next (sm@105@00 s@$ g0@10@00 g1@11@00) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second s@$))) r))
  :qid |qp.fvfValDef63|)))
(assert (forall ((r $Ref)) (!
  (and
    ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first s@$)) r) r)
    ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second s@$))) r) r))
  :pattern (($FVF.lookup_next (sm@105@00 s@$ g0@10@00 g1@11@00) r))
  :qid |qp.fvfResTrgDef64|)))
; Check receiver injectivity
(push) ; 8
(assert (not (forall ((n1@102@00 $Ref) (n2@102@00 $Ref)) (!
  (=>
    (and
      (and
        (Set_in n1@102@00 g0@10@00)
        ($FVF.loc_next ($FVF.lookup_next (sm@105@00 s@$ g0@10@00 g1@11@00) n1@102@00) n1@102@00))
      (and
        (Set_in n2@102@00 g0@10@00)
        ($FVF.loc_next ($FVF.lookup_next (sm@105@00 s@$ g0@10@00 g1@11@00) n2@102@00) n2@102@00))
      (= n1@102@00 n2@102@00))
    (= n1@102@00 n2@102@00))
  
  :qid |next-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 8
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((n@102@00 $Ref)) (!
  (=>
    (Set_in n@102@00 g0@10@00)
    (and
      (= (inv@103@00 s@$ g0@10@00 g1@11@00 n@102@00) n@102@00)
      (img@104@00 s@$ g0@10@00 g1@11@00 n@102@00)))
  :pattern ((Set_in n@102@00 g0@10@00))
  :pattern ((inv@103@00 s@$ g0@10@00 g1@11@00 n@102@00))
  :pattern ((img@104@00 s@$ g0@10@00 g1@11@00 n@102@00))
  :qid |next-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@104@00 s@$ g0@10@00 g1@11@00 r)
      (Set_in (inv@103@00 s@$ g0@10@00 g1@11@00 r) g0@10@00))
    (= (inv@103@00 s@$ g0@10@00 g1@11@00 r) r))
  :pattern ((inv@103@00 s@$ g0@10@00 g1@11@00 r))
  :qid |next-fctOfInv|)))
(assert (forall ((r $Ref)) (!
  (=>
    (Set_in (inv@103@00 s@$ g0@10@00 g1@11@00 r) g0@10@00)
    ($FVF.loc_next ($FVF.lookup_next (sm@105@00 s@$ g0@10@00 g1@11@00) r) r))
  :pattern ((inv@103@00 s@$ g0@10@00 g1@11@00 r))
  :qid |quant-u-13733|)))
(push) ; 8
(assert (not (forall ((r $Ref)) (!
  (=>
    (and
      (Set_in (inv@103@00 s@$ g0@10@00 g1@11@00 r) g0@10@00)
      (img@104@00 s@$ g0@10@00 g1@11@00 r)
      (= r (inv@103@00 s@$ g0@10@00 g1@11@00 r)))
    (>
      (+
        (ite
          (and
            (img@70@00 s@$ g0@10@00 g1@11@00 r)
            (Set_in (inv@69@00 s@$ g0@10@00 g1@11@00 r) g0@10@00))
          $Perm.Write
          $Perm.No)
        (ite
          (and
            (img@74@00 s@$ g0@10@00 g1@11@00 r)
            (Set_in (inv@73@00 s@$ g0@10@00 g1@11@00 r) g1@11@00))
          $Perm.Write
          $Perm.No))
      $Perm.No))
  
  :qid |quant-u-13734|))))
(check-sat)
; unsat
(pop) ; 8
; 0.00s
; (get-info :all-statistics)
(declare-fun sm@106@00 ($Snap Set<$Ref> Set<$Ref>) $FVF<next>)
; Definitional axioms for snapshot map domain
(assert (forall ((r $Ref)) (!
  (and
    (=>
      (Set_in r ($FVF.domain_next (sm@106@00 s@$ g0@10@00 g1@11@00)))
      (and
        (Set_in (inv@103@00 s@$ g0@10@00 g1@11@00 r) g0@10@00)
        (img@104@00 s@$ g0@10@00 g1@11@00 r)))
    (=>
      (and
        (Set_in (inv@103@00 s@$ g0@10@00 g1@11@00 r) g0@10@00)
        (img@104@00 s@$ g0@10@00 g1@11@00 r))
      (Set_in r ($FVF.domain_next (sm@106@00 s@$ g0@10@00 g1@11@00)))))
  :pattern ((Set_in r ($FVF.domain_next (sm@106@00 s@$ g0@10@00 g1@11@00))))
  :qid |qp.fvfDomDef68|)))
; Definitional axioms for snapshot map values
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and
        (Set_in (inv@103@00 s@$ g0@10@00 g1@11@00 r) g0@10@00)
        (img@104@00 s@$ g0@10@00 g1@11@00 r))
      (and
        (img@70@00 s@$ g0@10@00 g1@11@00 r)
        (Set_in (inv@69@00 s@$ g0@10@00 g1@11@00 r) g0@10@00)))
    (=
      ($FVF.lookup_next (sm@106@00 s@$ g0@10@00 g1@11@00) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first s@$)) r)))
  :pattern (($FVF.lookup_next (sm@106@00 s@$ g0@10@00 g1@11@00) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first s@$)) r))
  :qid |qp.fvfValDef65|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and
        (Set_in (inv@103@00 s@$ g0@10@00 g1@11@00 r) g0@10@00)
        (img@104@00 s@$ g0@10@00 g1@11@00 r))
      (and
        (img@74@00 s@$ g0@10@00 g1@11@00 r)
        (Set_in (inv@73@00 s@$ g0@10@00 g1@11@00 r) g1@11@00)))
    (=
      ($FVF.lookup_next (sm@106@00 s@$ g0@10@00 g1@11@00) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second s@$))) r)))
  :pattern (($FVF.lookup_next (sm@106@00 s@$ g0@10@00 g1@11@00) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second s@$))) r))
  :qid |qp.fvfValDef66|)))
(assert (forall ((r $Ref)) (!
  (and
    ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first s@$)) r) r)
    ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second s@$))) r) r))
  :pattern (($FVF.lookup_next (sm@106@00 s@$ g0@10@00 g1@11@00) r))
  :qid |qp.fvfResTrgDef67|)))
(assert ($$%precondition ($SortWrappers.$FVF<next>To$Snap (sm@106@00 s@$ g0@10@00 g1@11@00)) g0@10@00))
(pop) ; 7
; Joined path conditions
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@70@00 s@$ g0@10@00 g1@11@00 r)
      (Set_in (inv@69@00 s@$ g0@10@00 g1@11@00 r) g0@10@00))
    (=
      ($FVF.lookup_next (sm@105@00 s@$ g0@10@00 g1@11@00) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first s@$)) r)))
  :pattern (($FVF.lookup_next (sm@105@00 s@$ g0@10@00 g1@11@00) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first s@$)) r))
  :qid |qp.fvfValDef62|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@74@00 s@$ g0@10@00 g1@11@00 r)
      (Set_in (inv@73@00 s@$ g0@10@00 g1@11@00 r) g1@11@00))
    (=
      ($FVF.lookup_next (sm@105@00 s@$ g0@10@00 g1@11@00) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second s@$))) r)))
  :pattern (($FVF.lookup_next (sm@105@00 s@$ g0@10@00 g1@11@00) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second s@$))) r))
  :qid |qp.fvfValDef63|)))
(assert (forall ((r $Ref)) (!
  (and
    ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first s@$)) r) r)
    ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second s@$))) r) r))
  :pattern (($FVF.lookup_next (sm@105@00 s@$ g0@10@00 g1@11@00) r))
  :qid |qp.fvfResTrgDef64|)))
(assert (forall ((n@102@00 $Ref)) (!
  (=>
    (Set_in n@102@00 g0@10@00)
    (and
      (= (inv@103@00 s@$ g0@10@00 g1@11@00 n@102@00) n@102@00)
      (img@104@00 s@$ g0@10@00 g1@11@00 n@102@00)))
  :pattern ((Set_in n@102@00 g0@10@00))
  :pattern ((inv@103@00 s@$ g0@10@00 g1@11@00 n@102@00))
  :pattern ((img@104@00 s@$ g0@10@00 g1@11@00 n@102@00))
  :qid |next-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@104@00 s@$ g0@10@00 g1@11@00 r)
      (Set_in (inv@103@00 s@$ g0@10@00 g1@11@00 r) g0@10@00))
    (= (inv@103@00 s@$ g0@10@00 g1@11@00 r) r))
  :pattern ((inv@103@00 s@$ g0@10@00 g1@11@00 r))
  :qid |next-fctOfInv|)))
(assert (forall ((r $Ref)) (!
  (and
    (=>
      (Set_in r ($FVF.domain_next (sm@106@00 s@$ g0@10@00 g1@11@00)))
      (and
        (Set_in (inv@103@00 s@$ g0@10@00 g1@11@00 r) g0@10@00)
        (img@104@00 s@$ g0@10@00 g1@11@00 r)))
    (=>
      (and
        (Set_in (inv@103@00 s@$ g0@10@00 g1@11@00 r) g0@10@00)
        (img@104@00 s@$ g0@10@00 g1@11@00 r))
      (Set_in r ($FVF.domain_next (sm@106@00 s@$ g0@10@00 g1@11@00)))))
  :pattern ((Set_in r ($FVF.domain_next (sm@106@00 s@$ g0@10@00 g1@11@00))))
  :qid |qp.fvfDomDef68|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and
        (Set_in (inv@103@00 s@$ g0@10@00 g1@11@00 r) g0@10@00)
        (img@104@00 s@$ g0@10@00 g1@11@00 r))
      (and
        (img@70@00 s@$ g0@10@00 g1@11@00 r)
        (Set_in (inv@69@00 s@$ g0@10@00 g1@11@00 r) g0@10@00)))
    (=
      ($FVF.lookup_next (sm@106@00 s@$ g0@10@00 g1@11@00) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first s@$)) r)))
  :pattern (($FVF.lookup_next (sm@106@00 s@$ g0@10@00 g1@11@00) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first s@$)) r))
  :qid |qp.fvfValDef65|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and
        (Set_in (inv@103@00 s@$ g0@10@00 g1@11@00 r) g0@10@00)
        (img@104@00 s@$ g0@10@00 g1@11@00 r))
      (and
        (img@74@00 s@$ g0@10@00 g1@11@00 r)
        (Set_in (inv@73@00 s@$ g0@10@00 g1@11@00 r) g1@11@00)))
    (=
      ($FVF.lookup_next (sm@106@00 s@$ g0@10@00 g1@11@00) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second s@$))) r)))
  :pattern (($FVF.lookup_next (sm@106@00 s@$ g0@10@00 g1@11@00) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second s@$))) r))
  :qid |qp.fvfValDef66|)))
(assert (forall ((r $Ref)) (!
  (and
    ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first s@$)) r) r)
    ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second s@$))) r) r))
  :pattern (($FVF.lookup_next (sm@106@00 s@$ g0@10@00 g1@11@00) r))
  :qid |qp.fvfResTrgDef67|)))
(assert (and
  (forall ((r $Ref)) (!
    (=>
      (Set_in (inv@103@00 s@$ g0@10@00 g1@11@00 r) g0@10@00)
      ($FVF.loc_next ($FVF.lookup_next (sm@105@00 s@$ g0@10@00 g1@11@00) r) r))
    :pattern ((inv@103@00 s@$ g0@10@00 g1@11@00 r))
    :qid |quant-u-13733|))
  ($$%precondition ($SortWrappers.$FVF<next>To$Snap (sm@106@00 s@$ g0@10@00 g1@11@00)) g0@10@00)))
(pop) ; 6
(pop) ; 5
; Joined path conditions
; Joined path conditions
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@70@00 s@$ g0@10@00 g1@11@00 r)
      (Set_in (inv@69@00 s@$ g0@10@00 g1@11@00 r) g0@10@00))
    (=
      ($FVF.lookup_next (sm@105@00 s@$ g0@10@00 g1@11@00) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first s@$)) r)))
  :pattern (($FVF.lookup_next (sm@105@00 s@$ g0@10@00 g1@11@00) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first s@$)) r))
  :qid |qp.fvfValDef62|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@74@00 s@$ g0@10@00 g1@11@00 r)
      (Set_in (inv@73@00 s@$ g0@10@00 g1@11@00 r) g1@11@00))
    (=
      ($FVF.lookup_next (sm@105@00 s@$ g0@10@00 g1@11@00) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second s@$))) r)))
  :pattern (($FVF.lookup_next (sm@105@00 s@$ g0@10@00 g1@11@00) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second s@$))) r))
  :qid |qp.fvfValDef63|)))
(assert (forall ((r $Ref)) (!
  (and
    ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first s@$)) r) r)
    ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second s@$))) r) r))
  :pattern (($FVF.lookup_next (sm@105@00 s@$ g0@10@00 g1@11@00) r))
  :qid |qp.fvfResTrgDef64|)))
(assert (forall ((n@102@00 $Ref)) (!
  (=>
    (Set_in n@102@00 g0@10@00)
    (and
      (= (inv@103@00 s@$ g0@10@00 g1@11@00 n@102@00) n@102@00)
      (img@104@00 s@$ g0@10@00 g1@11@00 n@102@00)))
  :pattern ((Set_in n@102@00 g0@10@00))
  :pattern ((inv@103@00 s@$ g0@10@00 g1@11@00 n@102@00))
  :pattern ((img@104@00 s@$ g0@10@00 g1@11@00 n@102@00))
  :qid |next-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@104@00 s@$ g0@10@00 g1@11@00 r)
      (Set_in (inv@103@00 s@$ g0@10@00 g1@11@00 r) g0@10@00))
    (= (inv@103@00 s@$ g0@10@00 g1@11@00 r) r))
  :pattern ((inv@103@00 s@$ g0@10@00 g1@11@00 r))
  :qid |next-fctOfInv|)))
(assert (forall ((r $Ref)) (!
  (and
    (=>
      (Set_in r ($FVF.domain_next (sm@106@00 s@$ g0@10@00 g1@11@00)))
      (and
        (Set_in (inv@103@00 s@$ g0@10@00 g1@11@00 r) g0@10@00)
        (img@104@00 s@$ g0@10@00 g1@11@00 r)))
    (=>
      (and
        (Set_in (inv@103@00 s@$ g0@10@00 g1@11@00 r) g0@10@00)
        (img@104@00 s@$ g0@10@00 g1@11@00 r))
      (Set_in r ($FVF.domain_next (sm@106@00 s@$ g0@10@00 g1@11@00)))))
  :pattern ((Set_in r ($FVF.domain_next (sm@106@00 s@$ g0@10@00 g1@11@00))))
  :qid |qp.fvfDomDef68|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and
        (Set_in (inv@103@00 s@$ g0@10@00 g1@11@00 r) g0@10@00)
        (img@104@00 s@$ g0@10@00 g1@11@00 r))
      (and
        (img@70@00 s@$ g0@10@00 g1@11@00 r)
        (Set_in (inv@69@00 s@$ g0@10@00 g1@11@00 r) g0@10@00)))
    (=
      ($FVF.lookup_next (sm@106@00 s@$ g0@10@00 g1@11@00) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first s@$)) r)))
  :pattern (($FVF.lookup_next (sm@106@00 s@$ g0@10@00 g1@11@00) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first s@$)) r))
  :qid |qp.fvfValDef65|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and
        (Set_in (inv@103@00 s@$ g0@10@00 g1@11@00 r) g0@10@00)
        (img@104@00 s@$ g0@10@00 g1@11@00 r))
      (and
        (img@74@00 s@$ g0@10@00 g1@11@00 r)
        (Set_in (inv@73@00 s@$ g0@10@00 g1@11@00 r) g1@11@00)))
    (=
      ($FVF.lookup_next (sm@106@00 s@$ g0@10@00 g1@11@00) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second s@$))) r)))
  :pattern (($FVF.lookup_next (sm@106@00 s@$ g0@10@00 g1@11@00) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second s@$))) r))
  :qid |qp.fvfValDef66|)))
(assert (forall ((r $Ref)) (!
  (and
    ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first s@$)) r) r)
    ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second s@$))) r) r))
  :pattern (($FVF.lookup_next (sm@106@00 s@$ g0@10@00 g1@11@00) r))
  :qid |qp.fvfResTrgDef67|)))
(assert (=>
  (Set_in v@101@00 g0@10@00)
  (and
    (Set_in v@101@00 g0@10@00)
    (forall ((r $Ref)) (!
      (=>
        (Set_in (inv@103@00 s@$ g0@10@00 g1@11@00 r) g0@10@00)
        ($FVF.loc_next ($FVF.lookup_next (sm@105@00 s@$ g0@10@00 g1@11@00) r) r))
      :pattern ((inv@103@00 s@$ g0@10@00 g1@11@00 r))
      :qid |quant-u-13733|))
    ($$%precondition ($SortWrappers.$FVF<next>To$Snap (sm@106@00 s@$ g0@10@00 g1@11@00)) g0@10@00))))
(assert (or (Set_in v@101@00 g0@10@00) (not (Set_in v@101@00 g0@10@00))))
(pop) ; 4
(pop) ; 3
; Joined path conditions
; Joined path conditions
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@70@00 s@$ g0@10@00 g1@11@00 r)
      (Set_in (inv@69@00 s@$ g0@10@00 g1@11@00 r) g0@10@00))
    (=
      ($FVF.lookup_next (sm@105@00 s@$ g0@10@00 g1@11@00) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first s@$)) r)))
  :pattern (($FVF.lookup_next (sm@105@00 s@$ g0@10@00 g1@11@00) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first s@$)) r))
  :qid |qp.fvfValDef62|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@74@00 s@$ g0@10@00 g1@11@00 r)
      (Set_in (inv@73@00 s@$ g0@10@00 g1@11@00 r) g1@11@00))
    (=
      ($FVF.lookup_next (sm@105@00 s@$ g0@10@00 g1@11@00) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second s@$))) r)))
  :pattern (($FVF.lookup_next (sm@105@00 s@$ g0@10@00 g1@11@00) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second s@$))) r))
  :qid |qp.fvfValDef63|)))
(assert (forall ((r $Ref)) (!
  (and
    ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first s@$)) r) r)
    ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second s@$))) r) r))
  :pattern (($FVF.lookup_next (sm@105@00 s@$ g0@10@00 g1@11@00) r))
  :qid |qp.fvfResTrgDef64|)))
(assert (forall ((n@102@00 $Ref)) (!
  (=>
    (Set_in n@102@00 g0@10@00)
    (and
      (= (inv@103@00 s@$ g0@10@00 g1@11@00 n@102@00) n@102@00)
      (img@104@00 s@$ g0@10@00 g1@11@00 n@102@00)))
  :pattern ((Set_in n@102@00 g0@10@00))
  :pattern ((inv@103@00 s@$ g0@10@00 g1@11@00 n@102@00))
  :pattern ((img@104@00 s@$ g0@10@00 g1@11@00 n@102@00))
  :qid |next-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@104@00 s@$ g0@10@00 g1@11@00 r)
      (Set_in (inv@103@00 s@$ g0@10@00 g1@11@00 r) g0@10@00))
    (= (inv@103@00 s@$ g0@10@00 g1@11@00 r) r))
  :pattern ((inv@103@00 s@$ g0@10@00 g1@11@00 r))
  :qid |next-fctOfInv|)))
(assert (forall ((r $Ref)) (!
  (and
    (=>
      (Set_in r ($FVF.domain_next (sm@106@00 s@$ g0@10@00 g1@11@00)))
      (and
        (Set_in (inv@103@00 s@$ g0@10@00 g1@11@00 r) g0@10@00)
        (img@104@00 s@$ g0@10@00 g1@11@00 r)))
    (=>
      (and
        (Set_in (inv@103@00 s@$ g0@10@00 g1@11@00 r) g0@10@00)
        (img@104@00 s@$ g0@10@00 g1@11@00 r))
      (Set_in r ($FVF.domain_next (sm@106@00 s@$ g0@10@00 g1@11@00)))))
  :pattern ((Set_in r ($FVF.domain_next (sm@106@00 s@$ g0@10@00 g1@11@00))))
  :qid |qp.fvfDomDef68|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and
        (Set_in (inv@103@00 s@$ g0@10@00 g1@11@00 r) g0@10@00)
        (img@104@00 s@$ g0@10@00 g1@11@00 r))
      (and
        (img@70@00 s@$ g0@10@00 g1@11@00 r)
        (Set_in (inv@69@00 s@$ g0@10@00 g1@11@00 r) g0@10@00)))
    (=
      ($FVF.lookup_next (sm@106@00 s@$ g0@10@00 g1@11@00) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first s@$)) r)))
  :pattern (($FVF.lookup_next (sm@106@00 s@$ g0@10@00 g1@11@00) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first s@$)) r))
  :qid |qp.fvfValDef65|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and
        (Set_in (inv@103@00 s@$ g0@10@00 g1@11@00 r) g0@10@00)
        (img@104@00 s@$ g0@10@00 g1@11@00 r))
      (and
        (img@74@00 s@$ g0@10@00 g1@11@00 r)
        (Set_in (inv@73@00 s@$ g0@10@00 g1@11@00 r) g1@11@00)))
    (=
      ($FVF.lookup_next (sm@106@00 s@$ g0@10@00 g1@11@00) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second s@$))) r)))
  :pattern (($FVF.lookup_next (sm@106@00 s@$ g0@10@00 g1@11@00) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second s@$))) r))
  :qid |qp.fvfValDef66|)))
(assert (forall ((r $Ref)) (!
  (and
    ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first s@$)) r) r)
    ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second s@$))) r) r))
  :pattern (($FVF.lookup_next (sm@106@00 s@$ g0@10@00 g1@11@00) r))
  :qid |qp.fvfResTrgDef67|)))
(assert (=>
  (Set_in u@100@00 g0@10@00)
  (and
    (Set_in u@100@00 g0@10@00)
    (=>
      (Set_in v@101@00 g0@10@00)
      (and
        (Set_in v@101@00 g0@10@00)
        (forall ((r $Ref)) (!
          (=>
            (Set_in (inv@103@00 s@$ g0@10@00 g1@11@00 r) g0@10@00)
            ($FVF.loc_next ($FVF.lookup_next (sm@105@00 s@$ g0@10@00 g1@11@00) r) r))
          :pattern ((inv@103@00 s@$ g0@10@00 g1@11@00 r))
          :qid |quant-u-13733|))
        ($$%precondition ($SortWrappers.$FVF<next>To$Snap (sm@106@00 s@$ g0@10@00 g1@11@00)) g0@10@00)))
    (or (Set_in v@101@00 g0@10@00) (not (Set_in v@101@00 g0@10@00))))))
(assert (or (Set_in u@100@00 g0@10@00) (not (Set_in u@100@00 g0@10@00))))
(push) ; 3
; [then-branch: 24 | u@100@00 in g0@10@00 && v@101@00 in g0@10@00 && !(exists_path[Bool]($$(sm@106@00(s@$, g0@10@00, g1@11@00), g0@10@00), u@100@00, v@101@00)) | live]
; [else-branch: 24 | !(u@100@00 in g0@10@00 && v@101@00 in g0@10@00 && !(exists_path[Bool]($$(sm@106@00(s@$, g0@10@00, g1@11@00), g0@10@00), u@100@00, v@101@00))) | live]
(push) ; 4
; [then-branch: 24 | u@100@00 in g0@10@00 && v@101@00 in g0@10@00 && !(exists_path[Bool]($$(sm@106@00(s@$, g0@10@00, g1@11@00), g0@10@00), u@100@00, v@101@00))]
(assert (and
  (Set_in u@100@00 g0@10@00)
  (and
    (Set_in v@101@00 g0@10@00)
    (not
      (exists_path<Bool> ($$ ($SortWrappers.$FVF<next>To$Snap (sm@106@00 s@$ g0@10@00 g1@11@00)) g0@10@00) u@100@00 v@101@00)))))
; [eval] !exists_path($$((g0 union g1)), u, v)
; [eval] exists_path($$((g0 union g1)), u, v)
; [eval] $$((g0 union g1))
; [eval] (g0 union g1)
(push) ; 5
(declare-const n@107@00 $Ref)
(push) ; 6
; [eval] (n in refs)
(assert (Set_in n@107@00 (Set_union g0@10@00 g1@11@00)))
(pop) ; 6
(declare-fun inv@108@00 ($Snap Set<$Ref> Set<$Ref> $Ref) $Ref)
(declare-fun img@109@00 ($Snap Set<$Ref> Set<$Ref> $Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
(declare-fun sm@110@00 ($Snap Set<$Ref> Set<$Ref>) $FVF<next>)
; Definitional axioms for snapshot map domain
; Definitional axioms for snapshot map values
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@70@00 s@$ g0@10@00 g1@11@00 r)
      (Set_in (inv@69@00 s@$ g0@10@00 g1@11@00 r) g0@10@00))
    (=
      ($FVF.lookup_next (sm@110@00 s@$ g0@10@00 g1@11@00) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first s@$)) r)))
  :pattern (($FVF.lookup_next (sm@110@00 s@$ g0@10@00 g1@11@00) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first s@$)) r))
  :qid |qp.fvfValDef69|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@74@00 s@$ g0@10@00 g1@11@00 r)
      (Set_in (inv@73@00 s@$ g0@10@00 g1@11@00 r) g1@11@00))
    (=
      ($FVF.lookup_next (sm@110@00 s@$ g0@10@00 g1@11@00) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second s@$))) r)))
  :pattern (($FVF.lookup_next (sm@110@00 s@$ g0@10@00 g1@11@00) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second s@$))) r))
  :qid |qp.fvfValDef70|)))
(assert (forall ((r $Ref)) (!
  (and
    ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first s@$)) r) r)
    ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second s@$))) r) r))
  :pattern (($FVF.lookup_next (sm@110@00 s@$ g0@10@00 g1@11@00) r))
  :qid |qp.fvfResTrgDef71|)))
; Check receiver injectivity
(push) ; 6
(assert (not (forall ((n1@107@00 $Ref) (n2@107@00 $Ref)) (!
  (=>
    (and
      (and
        (Set_in n1@107@00 (Set_union g0@10@00 g1@11@00))
        ($FVF.loc_next ($FVF.lookup_next (sm@110@00 s@$ g0@10@00 g1@11@00) n1@107@00) n1@107@00))
      (and
        (Set_in n2@107@00 (Set_union g0@10@00 g1@11@00))
        ($FVF.loc_next ($FVF.lookup_next (sm@110@00 s@$ g0@10@00 g1@11@00) n2@107@00) n2@107@00))
      (= n1@107@00 n2@107@00))
    (= n1@107@00 n2@107@00))
  
  :qid |next-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((n@107@00 $Ref)) (!
  (=>
    (Set_in n@107@00 (Set_union g0@10@00 g1@11@00))
    (and
      (= (inv@108@00 s@$ g0@10@00 g1@11@00 n@107@00) n@107@00)
      (img@109@00 s@$ g0@10@00 g1@11@00 n@107@00)))
  :pattern ((Set_in n@107@00 (Set_union g0@10@00 g1@11@00)))
  :pattern ((inv@108@00 s@$ g0@10@00 g1@11@00 n@107@00))
  :pattern ((img@109@00 s@$ g0@10@00 g1@11@00 n@107@00))
  :qid |next-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@109@00 s@$ g0@10@00 g1@11@00 r)
      (Set_in (inv@108@00 s@$ g0@10@00 g1@11@00 r) (Set_union g0@10@00 g1@11@00)))
    (= (inv@108@00 s@$ g0@10@00 g1@11@00 r) r))
  :pattern ((inv@108@00 s@$ g0@10@00 g1@11@00 r))
  :qid |next-fctOfInv|)))
(assert (forall ((r $Ref)) (!
  (=>
    (Set_in (inv@108@00 s@$ g0@10@00 g1@11@00 r) (Set_union g0@10@00 g1@11@00))
    ($FVF.loc_next ($FVF.lookup_next (sm@110@00 s@$ g0@10@00 g1@11@00) r) r))
  :pattern ((inv@108@00 s@$ g0@10@00 g1@11@00 r))
  :qid |quant-u-13736|)))
(push) ; 6
(assert (not (forall ((r $Ref)) (!
  (=>
    (and
      (Set_in (inv@108@00 s@$ g0@10@00 g1@11@00 r) (Set_union g0@10@00 g1@11@00))
      (img@109@00 s@$ g0@10@00 g1@11@00 r)
      (= r (inv@108@00 s@$ g0@10@00 g1@11@00 r)))
    (>
      (+
        (ite
          (and
            (img@70@00 s@$ g0@10@00 g1@11@00 r)
            (Set_in (inv@69@00 s@$ g0@10@00 g1@11@00 r) g0@10@00))
          $Perm.Write
          $Perm.No)
        (ite
          (and
            (img@74@00 s@$ g0@10@00 g1@11@00 r)
            (Set_in (inv@73@00 s@$ g0@10@00 g1@11@00 r) g1@11@00))
          $Perm.Write
          $Perm.No))
      $Perm.No))
  
  :qid |quant-u-13737|))))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(declare-fun sm@111@00 ($Snap Set<$Ref> Set<$Ref>) $FVF<next>)
; Definitional axioms for snapshot map domain
(assert (forall ((r $Ref)) (!
  (and
    (=>
      (Set_in r ($FVF.domain_next (sm@111@00 s@$ g0@10@00 g1@11@00)))
      (and
        (Set_in (inv@108@00 s@$ g0@10@00 g1@11@00 r) (Set_union g0@10@00 g1@11@00))
        (img@109@00 s@$ g0@10@00 g1@11@00 r)))
    (=>
      (and
        (Set_in (inv@108@00 s@$ g0@10@00 g1@11@00 r) (Set_union g0@10@00 g1@11@00))
        (img@109@00 s@$ g0@10@00 g1@11@00 r))
      (Set_in r ($FVF.domain_next (sm@111@00 s@$ g0@10@00 g1@11@00)))))
  :pattern ((Set_in r ($FVF.domain_next (sm@111@00 s@$ g0@10@00 g1@11@00))))
  :qid |qp.fvfDomDef75|)))
; Definitional axioms for snapshot map values
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and
        (Set_in (inv@108@00 s@$ g0@10@00 g1@11@00 r) (Set_union g0@10@00 g1@11@00))
        (img@109@00 s@$ g0@10@00 g1@11@00 r))
      (and
        (img@70@00 s@$ g0@10@00 g1@11@00 r)
        (Set_in (inv@69@00 s@$ g0@10@00 g1@11@00 r) g0@10@00)))
    (=
      ($FVF.lookup_next (sm@111@00 s@$ g0@10@00 g1@11@00) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first s@$)) r)))
  :pattern (($FVF.lookup_next (sm@111@00 s@$ g0@10@00 g1@11@00) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first s@$)) r))
  :qid |qp.fvfValDef72|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and
        (Set_in (inv@108@00 s@$ g0@10@00 g1@11@00 r) (Set_union g0@10@00 g1@11@00))
        (img@109@00 s@$ g0@10@00 g1@11@00 r))
      (and
        (img@74@00 s@$ g0@10@00 g1@11@00 r)
        (Set_in (inv@73@00 s@$ g0@10@00 g1@11@00 r) g1@11@00)))
    (=
      ($FVF.lookup_next (sm@111@00 s@$ g0@10@00 g1@11@00) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second s@$))) r)))
  :pattern (($FVF.lookup_next (sm@111@00 s@$ g0@10@00 g1@11@00) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second s@$))) r))
  :qid |qp.fvfValDef73|)))
(assert (forall ((r $Ref)) (!
  (and
    ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first s@$)) r) r)
    ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second s@$))) r) r))
  :pattern (($FVF.lookup_next (sm@111@00 s@$ g0@10@00 g1@11@00) r))
  :qid |qp.fvfResTrgDef74|)))
(assert ($$%precondition ($SortWrappers.$FVF<next>To$Snap (sm@111@00 s@$ g0@10@00 g1@11@00)) (Set_union g0@10@00 g1@11@00)))
(pop) ; 5
; Joined path conditions
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@70@00 s@$ g0@10@00 g1@11@00 r)
      (Set_in (inv@69@00 s@$ g0@10@00 g1@11@00 r) g0@10@00))
    (=
      ($FVF.lookup_next (sm@110@00 s@$ g0@10@00 g1@11@00) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first s@$)) r)))
  :pattern (($FVF.lookup_next (sm@110@00 s@$ g0@10@00 g1@11@00) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first s@$)) r))
  :qid |qp.fvfValDef69|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@74@00 s@$ g0@10@00 g1@11@00 r)
      (Set_in (inv@73@00 s@$ g0@10@00 g1@11@00 r) g1@11@00))
    (=
      ($FVF.lookup_next (sm@110@00 s@$ g0@10@00 g1@11@00) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second s@$))) r)))
  :pattern (($FVF.lookup_next (sm@110@00 s@$ g0@10@00 g1@11@00) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second s@$))) r))
  :qid |qp.fvfValDef70|)))
(assert (forall ((r $Ref)) (!
  (and
    ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first s@$)) r) r)
    ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second s@$))) r) r))
  :pattern (($FVF.lookup_next (sm@110@00 s@$ g0@10@00 g1@11@00) r))
  :qid |qp.fvfResTrgDef71|)))
(assert (forall ((n@107@00 $Ref)) (!
  (=>
    (Set_in n@107@00 (Set_union g0@10@00 g1@11@00))
    (and
      (= (inv@108@00 s@$ g0@10@00 g1@11@00 n@107@00) n@107@00)
      (img@109@00 s@$ g0@10@00 g1@11@00 n@107@00)))
  :pattern ((Set_in n@107@00 (Set_union g0@10@00 g1@11@00)))
  :pattern ((inv@108@00 s@$ g0@10@00 g1@11@00 n@107@00))
  :pattern ((img@109@00 s@$ g0@10@00 g1@11@00 n@107@00))
  :qid |next-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@109@00 s@$ g0@10@00 g1@11@00 r)
      (Set_in (inv@108@00 s@$ g0@10@00 g1@11@00 r) (Set_union g0@10@00 g1@11@00)))
    (= (inv@108@00 s@$ g0@10@00 g1@11@00 r) r))
  :pattern ((inv@108@00 s@$ g0@10@00 g1@11@00 r))
  :qid |next-fctOfInv|)))
(assert (forall ((r $Ref)) (!
  (and
    (=>
      (Set_in r ($FVF.domain_next (sm@111@00 s@$ g0@10@00 g1@11@00)))
      (and
        (Set_in (inv@108@00 s@$ g0@10@00 g1@11@00 r) (Set_union g0@10@00 g1@11@00))
        (img@109@00 s@$ g0@10@00 g1@11@00 r)))
    (=>
      (and
        (Set_in (inv@108@00 s@$ g0@10@00 g1@11@00 r) (Set_union g0@10@00 g1@11@00))
        (img@109@00 s@$ g0@10@00 g1@11@00 r))
      (Set_in r ($FVF.domain_next (sm@111@00 s@$ g0@10@00 g1@11@00)))))
  :pattern ((Set_in r ($FVF.domain_next (sm@111@00 s@$ g0@10@00 g1@11@00))))
  :qid |qp.fvfDomDef75|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and
        (Set_in (inv@108@00 s@$ g0@10@00 g1@11@00 r) (Set_union g0@10@00 g1@11@00))
        (img@109@00 s@$ g0@10@00 g1@11@00 r))
      (and
        (img@70@00 s@$ g0@10@00 g1@11@00 r)
        (Set_in (inv@69@00 s@$ g0@10@00 g1@11@00 r) g0@10@00)))
    (=
      ($FVF.lookup_next (sm@111@00 s@$ g0@10@00 g1@11@00) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first s@$)) r)))
  :pattern (($FVF.lookup_next (sm@111@00 s@$ g0@10@00 g1@11@00) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first s@$)) r))
  :qid |qp.fvfValDef72|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and
        (Set_in (inv@108@00 s@$ g0@10@00 g1@11@00 r) (Set_union g0@10@00 g1@11@00))
        (img@109@00 s@$ g0@10@00 g1@11@00 r))
      (and
        (img@74@00 s@$ g0@10@00 g1@11@00 r)
        (Set_in (inv@73@00 s@$ g0@10@00 g1@11@00 r) g1@11@00)))
    (=
      ($FVF.lookup_next (sm@111@00 s@$ g0@10@00 g1@11@00) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second s@$))) r)))
  :pattern (($FVF.lookup_next (sm@111@00 s@$ g0@10@00 g1@11@00) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second s@$))) r))
  :qid |qp.fvfValDef73|)))
(assert (forall ((r $Ref)) (!
  (and
    ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first s@$)) r) r)
    ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second s@$))) r) r))
  :pattern (($FVF.lookup_next (sm@111@00 s@$ g0@10@00 g1@11@00) r))
  :qid |qp.fvfResTrgDef74|)))
(assert (and
  (forall ((r $Ref)) (!
    (=>
      (Set_in (inv@108@00 s@$ g0@10@00 g1@11@00 r) (Set_union g0@10@00 g1@11@00))
      ($FVF.loc_next ($FVF.lookup_next (sm@110@00 s@$ g0@10@00 g1@11@00) r) r))
    :pattern ((inv@108@00 s@$ g0@10@00 g1@11@00 r))
    :qid |quant-u-13736|))
  ($$%precondition ($SortWrappers.$FVF<next>To$Snap (sm@111@00 s@$ g0@10@00 g1@11@00)) (Set_union g0@10@00 g1@11@00))))
(pop) ; 4
(push) ; 4
; [else-branch: 24 | !(u@100@00 in g0@10@00 && v@101@00 in g0@10@00 && !(exists_path[Bool]($$(sm@106@00(s@$, g0@10@00, g1@11@00), g0@10@00), u@100@00, v@101@00)))]
(assert (not
  (and
    (Set_in u@100@00 g0@10@00)
    (and
      (Set_in v@101@00 g0@10@00)
      (not
        (exists_path<Bool> ($$ ($SortWrappers.$FVF<next>To$Snap (sm@106@00 s@$ g0@10@00 g1@11@00)) g0@10@00) u@100@00 v@101@00))))))
(pop) ; 4
(pop) ; 3
; Joined path conditions
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@70@00 s@$ g0@10@00 g1@11@00 r)
      (Set_in (inv@69@00 s@$ g0@10@00 g1@11@00 r) g0@10@00))
    (=
      ($FVF.lookup_next (sm@110@00 s@$ g0@10@00 g1@11@00) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first s@$)) r)))
  :pattern (($FVF.lookup_next (sm@110@00 s@$ g0@10@00 g1@11@00) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first s@$)) r))
  :qid |qp.fvfValDef69|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@74@00 s@$ g0@10@00 g1@11@00 r)
      (Set_in (inv@73@00 s@$ g0@10@00 g1@11@00 r) g1@11@00))
    (=
      ($FVF.lookup_next (sm@110@00 s@$ g0@10@00 g1@11@00) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second s@$))) r)))
  :pattern (($FVF.lookup_next (sm@110@00 s@$ g0@10@00 g1@11@00) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second s@$))) r))
  :qid |qp.fvfValDef70|)))
(assert (forall ((r $Ref)) (!
  (and
    ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first s@$)) r) r)
    ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second s@$))) r) r))
  :pattern (($FVF.lookup_next (sm@110@00 s@$ g0@10@00 g1@11@00) r))
  :qid |qp.fvfResTrgDef71|)))
(assert (forall ((n@107@00 $Ref)) (!
  (=>
    (Set_in n@107@00 (Set_union g0@10@00 g1@11@00))
    (and
      (= (inv@108@00 s@$ g0@10@00 g1@11@00 n@107@00) n@107@00)
      (img@109@00 s@$ g0@10@00 g1@11@00 n@107@00)))
  :pattern ((Set_in n@107@00 (Set_union g0@10@00 g1@11@00)))
  :pattern ((inv@108@00 s@$ g0@10@00 g1@11@00 n@107@00))
  :pattern ((img@109@00 s@$ g0@10@00 g1@11@00 n@107@00))
  :qid |next-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@109@00 s@$ g0@10@00 g1@11@00 r)
      (Set_in (inv@108@00 s@$ g0@10@00 g1@11@00 r) (Set_union g0@10@00 g1@11@00)))
    (= (inv@108@00 s@$ g0@10@00 g1@11@00 r) r))
  :pattern ((inv@108@00 s@$ g0@10@00 g1@11@00 r))
  :qid |next-fctOfInv|)))
(assert (forall ((r $Ref)) (!
  (and
    (=>
      (Set_in r ($FVF.domain_next (sm@111@00 s@$ g0@10@00 g1@11@00)))
      (and
        (Set_in (inv@108@00 s@$ g0@10@00 g1@11@00 r) (Set_union g0@10@00 g1@11@00))
        (img@109@00 s@$ g0@10@00 g1@11@00 r)))
    (=>
      (and
        (Set_in (inv@108@00 s@$ g0@10@00 g1@11@00 r) (Set_union g0@10@00 g1@11@00))
        (img@109@00 s@$ g0@10@00 g1@11@00 r))
      (Set_in r ($FVF.domain_next (sm@111@00 s@$ g0@10@00 g1@11@00)))))
  :pattern ((Set_in r ($FVF.domain_next (sm@111@00 s@$ g0@10@00 g1@11@00))))
  :qid |qp.fvfDomDef75|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and
        (Set_in (inv@108@00 s@$ g0@10@00 g1@11@00 r) (Set_union g0@10@00 g1@11@00))
        (img@109@00 s@$ g0@10@00 g1@11@00 r))
      (and
        (img@70@00 s@$ g0@10@00 g1@11@00 r)
        (Set_in (inv@69@00 s@$ g0@10@00 g1@11@00 r) g0@10@00)))
    (=
      ($FVF.lookup_next (sm@111@00 s@$ g0@10@00 g1@11@00) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first s@$)) r)))
  :pattern (($FVF.lookup_next (sm@111@00 s@$ g0@10@00 g1@11@00) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first s@$)) r))
  :qid |qp.fvfValDef72|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and
        (Set_in (inv@108@00 s@$ g0@10@00 g1@11@00 r) (Set_union g0@10@00 g1@11@00))
        (img@109@00 s@$ g0@10@00 g1@11@00 r))
      (and
        (img@74@00 s@$ g0@10@00 g1@11@00 r)
        (Set_in (inv@73@00 s@$ g0@10@00 g1@11@00 r) g1@11@00)))
    (=
      ($FVF.lookup_next (sm@111@00 s@$ g0@10@00 g1@11@00) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second s@$))) r)))
  :pattern (($FVF.lookup_next (sm@111@00 s@$ g0@10@00 g1@11@00) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second s@$))) r))
  :qid |qp.fvfValDef73|)))
(assert (forall ((r $Ref)) (!
  (and
    ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first s@$)) r) r)
    ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second s@$))) r) r))
  :pattern (($FVF.lookup_next (sm@111@00 s@$ g0@10@00 g1@11@00) r))
  :qid |qp.fvfResTrgDef74|)))
(assert (=>
  (and
    (Set_in u@100@00 g0@10@00)
    (and
      (Set_in v@101@00 g0@10@00)
      (not
        (exists_path<Bool> ($$ ($SortWrappers.$FVF<next>To$Snap (sm@106@00 s@$ g0@10@00 g1@11@00)) g0@10@00) u@100@00 v@101@00))))
  (and
    (Set_in u@100@00 g0@10@00)
    (Set_in v@101@00 g0@10@00)
    (not
      (exists_path<Bool> ($$ ($SortWrappers.$FVF<next>To$Snap (sm@106@00 s@$ g0@10@00 g1@11@00)) g0@10@00) u@100@00 v@101@00))
    (forall ((r $Ref)) (!
      (=>
        (Set_in (inv@108@00 s@$ g0@10@00 g1@11@00 r) (Set_union g0@10@00 g1@11@00))
        ($FVF.loc_next ($FVF.lookup_next (sm@110@00 s@$ g0@10@00 g1@11@00) r) r))
      :pattern ((inv@108@00 s@$ g0@10@00 g1@11@00 r))
      :qid |quant-u-13736|))
    ($$%precondition ($SortWrappers.$FVF<next>To$Snap (sm@111@00 s@$ g0@10@00 g1@11@00)) (Set_union g0@10@00 g1@11@00)))))
; Joined path conditions
(assert (or
  (not
    (and
      (Set_in u@100@00 g0@10@00)
      (and
        (Set_in v@101@00 g0@10@00)
        (not
          (exists_path<Bool> ($$ ($SortWrappers.$FVF<next>To$Snap (sm@106@00 s@$ g0@10@00 g1@11@00)) g0@10@00) u@100@00 v@101@00)))))
  (and
    (Set_in u@100@00 g0@10@00)
    (and
      (Set_in v@101@00 g0@10@00)
      (not
        (exists_path<Bool> ($$ ($SortWrappers.$FVF<next>To$Snap (sm@106@00 s@$ g0@10@00 g1@11@00)) g0@10@00) u@100@00 v@101@00))))))
(pop) ; 2
; Nested auxiliary terms: globals (aux)
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@70@00 s@$ g0@10@00 g1@11@00 r)
      (Set_in (inv@69@00 s@$ g0@10@00 g1@11@00 r) g0@10@00))
    (=
      ($FVF.lookup_next (sm@105@00 s@$ g0@10@00 g1@11@00) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first s@$)) r)))
  :pattern (($FVF.lookup_next (sm@105@00 s@$ g0@10@00 g1@11@00) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first s@$)) r))
  :qid |qp.fvfValDef62|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@74@00 s@$ g0@10@00 g1@11@00 r)
      (Set_in (inv@73@00 s@$ g0@10@00 g1@11@00 r) g1@11@00))
    (=
      ($FVF.lookup_next (sm@105@00 s@$ g0@10@00 g1@11@00) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second s@$))) r)))
  :pattern (($FVF.lookup_next (sm@105@00 s@$ g0@10@00 g1@11@00) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second s@$))) r))
  :qid |qp.fvfValDef63|)))
(assert (forall ((r $Ref)) (!
  (and
    ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first s@$)) r) r)
    ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second s@$))) r) r))
  :pattern (($FVF.lookup_next (sm@105@00 s@$ g0@10@00 g1@11@00) r))
  :qid |qp.fvfResTrgDef64|)))
(assert (forall ((n@102@00 $Ref)) (!
  (=>
    (Set_in n@102@00 g0@10@00)
    (and
      (= (inv@103@00 s@$ g0@10@00 g1@11@00 n@102@00) n@102@00)
      (img@104@00 s@$ g0@10@00 g1@11@00 n@102@00)))
  :pattern ((Set_in n@102@00 g0@10@00))
  :pattern ((inv@103@00 s@$ g0@10@00 g1@11@00 n@102@00))
  :pattern ((img@104@00 s@$ g0@10@00 g1@11@00 n@102@00))
  :qid |next-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@104@00 s@$ g0@10@00 g1@11@00 r)
      (Set_in (inv@103@00 s@$ g0@10@00 g1@11@00 r) g0@10@00))
    (= (inv@103@00 s@$ g0@10@00 g1@11@00 r) r))
  :pattern ((inv@103@00 s@$ g0@10@00 g1@11@00 r))
  :qid |next-fctOfInv|)))
(assert (forall ((r $Ref)) (!
  (and
    (=>
      (Set_in r ($FVF.domain_next (sm@106@00 s@$ g0@10@00 g1@11@00)))
      (and
        (Set_in (inv@103@00 s@$ g0@10@00 g1@11@00 r) g0@10@00)
        (img@104@00 s@$ g0@10@00 g1@11@00 r)))
    (=>
      (and
        (Set_in (inv@103@00 s@$ g0@10@00 g1@11@00 r) g0@10@00)
        (img@104@00 s@$ g0@10@00 g1@11@00 r))
      (Set_in r ($FVF.domain_next (sm@106@00 s@$ g0@10@00 g1@11@00)))))
  :pattern ((Set_in r ($FVF.domain_next (sm@106@00 s@$ g0@10@00 g1@11@00))))
  :qid |qp.fvfDomDef68|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and
        (Set_in (inv@103@00 s@$ g0@10@00 g1@11@00 r) g0@10@00)
        (img@104@00 s@$ g0@10@00 g1@11@00 r))
      (and
        (img@70@00 s@$ g0@10@00 g1@11@00 r)
        (Set_in (inv@69@00 s@$ g0@10@00 g1@11@00 r) g0@10@00)))
    (=
      ($FVF.lookup_next (sm@106@00 s@$ g0@10@00 g1@11@00) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first s@$)) r)))
  :pattern (($FVF.lookup_next (sm@106@00 s@$ g0@10@00 g1@11@00) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first s@$)) r))
  :qid |qp.fvfValDef65|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and
        (Set_in (inv@103@00 s@$ g0@10@00 g1@11@00 r) g0@10@00)
        (img@104@00 s@$ g0@10@00 g1@11@00 r))
      (and
        (img@74@00 s@$ g0@10@00 g1@11@00 r)
        (Set_in (inv@73@00 s@$ g0@10@00 g1@11@00 r) g1@11@00)))
    (=
      ($FVF.lookup_next (sm@106@00 s@$ g0@10@00 g1@11@00) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second s@$))) r)))
  :pattern (($FVF.lookup_next (sm@106@00 s@$ g0@10@00 g1@11@00) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second s@$))) r))
  :qid |qp.fvfValDef66|)))
(assert (forall ((r $Ref)) (!
  (and
    ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first s@$)) r) r)
    ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second s@$))) r) r))
  :pattern (($FVF.lookup_next (sm@106@00 s@$ g0@10@00 g1@11@00) r))
  :qid |qp.fvfResTrgDef67|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@70@00 s@$ g0@10@00 g1@11@00 r)
      (Set_in (inv@69@00 s@$ g0@10@00 g1@11@00 r) g0@10@00))
    (=
      ($FVF.lookup_next (sm@110@00 s@$ g0@10@00 g1@11@00) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first s@$)) r)))
  :pattern (($FVF.lookup_next (sm@110@00 s@$ g0@10@00 g1@11@00) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first s@$)) r))
  :qid |qp.fvfValDef69|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@74@00 s@$ g0@10@00 g1@11@00 r)
      (Set_in (inv@73@00 s@$ g0@10@00 g1@11@00 r) g1@11@00))
    (=
      ($FVF.lookup_next (sm@110@00 s@$ g0@10@00 g1@11@00) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second s@$))) r)))
  :pattern (($FVF.lookup_next (sm@110@00 s@$ g0@10@00 g1@11@00) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second s@$))) r))
  :qid |qp.fvfValDef70|)))
(assert (forall ((r $Ref)) (!
  (and
    ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first s@$)) r) r)
    ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second s@$))) r) r))
  :pattern (($FVF.lookup_next (sm@110@00 s@$ g0@10@00 g1@11@00) r))
  :qid |qp.fvfResTrgDef71|)))
(assert (forall ((n@107@00 $Ref)) (!
  (=>
    (Set_in n@107@00 (Set_union g0@10@00 g1@11@00))
    (and
      (= (inv@108@00 s@$ g0@10@00 g1@11@00 n@107@00) n@107@00)
      (img@109@00 s@$ g0@10@00 g1@11@00 n@107@00)))
  :pattern ((Set_in n@107@00 (Set_union g0@10@00 g1@11@00)))
  :pattern ((inv@108@00 s@$ g0@10@00 g1@11@00 n@107@00))
  :pattern ((img@109@00 s@$ g0@10@00 g1@11@00 n@107@00))
  :qid |next-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@109@00 s@$ g0@10@00 g1@11@00 r)
      (Set_in (inv@108@00 s@$ g0@10@00 g1@11@00 r) (Set_union g0@10@00 g1@11@00)))
    (= (inv@108@00 s@$ g0@10@00 g1@11@00 r) r))
  :pattern ((inv@108@00 s@$ g0@10@00 g1@11@00 r))
  :qid |next-fctOfInv|)))
(assert (forall ((r $Ref)) (!
  (and
    (=>
      (Set_in r ($FVF.domain_next (sm@111@00 s@$ g0@10@00 g1@11@00)))
      (and
        (Set_in (inv@108@00 s@$ g0@10@00 g1@11@00 r) (Set_union g0@10@00 g1@11@00))
        (img@109@00 s@$ g0@10@00 g1@11@00 r)))
    (=>
      (and
        (Set_in (inv@108@00 s@$ g0@10@00 g1@11@00 r) (Set_union g0@10@00 g1@11@00))
        (img@109@00 s@$ g0@10@00 g1@11@00 r))
      (Set_in r ($FVF.domain_next (sm@111@00 s@$ g0@10@00 g1@11@00)))))
  :pattern ((Set_in r ($FVF.domain_next (sm@111@00 s@$ g0@10@00 g1@11@00))))
  :qid |qp.fvfDomDef75|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and
        (Set_in (inv@108@00 s@$ g0@10@00 g1@11@00 r) (Set_union g0@10@00 g1@11@00))
        (img@109@00 s@$ g0@10@00 g1@11@00 r))
      (and
        (img@70@00 s@$ g0@10@00 g1@11@00 r)
        (Set_in (inv@69@00 s@$ g0@10@00 g1@11@00 r) g0@10@00)))
    (=
      ($FVF.lookup_next (sm@111@00 s@$ g0@10@00 g1@11@00) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first s@$)) r)))
  :pattern (($FVF.lookup_next (sm@111@00 s@$ g0@10@00 g1@11@00) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first s@$)) r))
  :qid |qp.fvfValDef72|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and
        (Set_in (inv@108@00 s@$ g0@10@00 g1@11@00 r) (Set_union g0@10@00 g1@11@00))
        (img@109@00 s@$ g0@10@00 g1@11@00 r))
      (and
        (img@74@00 s@$ g0@10@00 g1@11@00 r)
        (Set_in (inv@73@00 s@$ g0@10@00 g1@11@00 r) g1@11@00)))
    (=
      ($FVF.lookup_next (sm@111@00 s@$ g0@10@00 g1@11@00) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second s@$))) r)))
  :pattern (($FVF.lookup_next (sm@111@00 s@$ g0@10@00 g1@11@00) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second s@$))) r))
  :qid |qp.fvfValDef73|)))
(assert (forall ((r $Ref)) (!
  (and
    ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first s@$)) r) r)
    ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second s@$))) r) r))
  :pattern (($FVF.lookup_next (sm@111@00 s@$ g0@10@00 g1@11@00) r))
  :qid |qp.fvfResTrgDef74|)))
; Nested auxiliary terms: non-globals (aux)
(assert (forall ((u@100@00 $Ref) (v@101@00 $Ref)) (!
  (and
    (=>
      (Set_in u@100@00 g0@10@00)
      (and
        (Set_in u@100@00 g0@10@00)
        (=>
          (Set_in v@101@00 g0@10@00)
          (and
            (Set_in v@101@00 g0@10@00)
            (forall ((r $Ref)) (!
              (=>
                (Set_in (inv@103@00 s@$ g0@10@00 g1@11@00 r) g0@10@00)
                ($FVF.loc_next ($FVF.lookup_next (sm@105@00 s@$ g0@10@00 g1@11@00) r) r))
              :pattern ((inv@103@00 s@$ g0@10@00 g1@11@00 r))
              :qid |quant-u-13733|))
            ($$%precondition ($SortWrappers.$FVF<next>To$Snap (sm@106@00 s@$ g0@10@00 g1@11@00)) g0@10@00)))
        (or (Set_in v@101@00 g0@10@00) (not (Set_in v@101@00 g0@10@00)))))
    (or (Set_in u@100@00 g0@10@00) (not (Set_in u@100@00 g0@10@00)))
    (=>
      (and
        (Set_in u@100@00 g0@10@00)
        (and
          (Set_in v@101@00 g0@10@00)
          (not
            (exists_path<Bool> ($$ ($SortWrappers.$FVF<next>To$Snap (sm@106@00 s@$ g0@10@00 g1@11@00)) g0@10@00) u@100@00 v@101@00))))
      (and
        (Set_in u@100@00 g0@10@00)
        (Set_in v@101@00 g0@10@00)
        (not
          (exists_path<Bool> ($$ ($SortWrappers.$FVF<next>To$Snap (sm@106@00 s@$ g0@10@00 g1@11@00)) g0@10@00) u@100@00 v@101@00))
        (forall ((r $Ref)) (!
          (=>
            (Set_in (inv@108@00 s@$ g0@10@00 g1@11@00 r) (Set_union g0@10@00 g1@11@00))
            ($FVF.loc_next ($FVF.lookup_next (sm@110@00 s@$ g0@10@00 g1@11@00) r) r))
          :pattern ((inv@108@00 s@$ g0@10@00 g1@11@00 r))
          :qid |quant-u-13736|))
        ($$%precondition ($SortWrappers.$FVF<next>To$Snap (sm@111@00 s@$ g0@10@00 g1@11@00)) (Set_union g0@10@00 g1@11@00))))
    (or
      (not
        (and
          (Set_in u@100@00 g0@10@00)
          (and
            (Set_in v@101@00 g0@10@00)
            (not
              (exists_path<Bool> ($$ ($SortWrappers.$FVF<next>To$Snap (sm@106@00 s@$ g0@10@00 g1@11@00)) g0@10@00) u@100@00 v@101@00)))))
      (and
        (Set_in u@100@00 g0@10@00)
        (and
          (Set_in v@101@00 g0@10@00)
          (not
            (exists_path<Bool> ($$ ($SortWrappers.$FVF<next>To$Snap (sm@106@00 s@$ g0@10@00 g1@11@00)) g0@10@00) u@100@00 v@101@00))))))
  :pattern ((Set_in u@100@00 g0@10@00) (Set_in v@101@00 g0@10@00))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/graphs/static/tests/lists/framing1.vpr@297@13@297@120-aux|)))
(assert (forall ((u@100@00 $Ref) (v@101@00 $Ref)) (!
  (and
    (=>
      (Set_in u@100@00 g0@10@00)
      (and
        (Set_in u@100@00 g0@10@00)
        (=>
          (Set_in v@101@00 g0@10@00)
          (and
            (Set_in v@101@00 g0@10@00)
            (forall ((r $Ref)) (!
              (=>
                (Set_in (inv@103@00 s@$ g0@10@00 g1@11@00 r) g0@10@00)
                ($FVF.loc_next ($FVF.lookup_next (sm@105@00 s@$ g0@10@00 g1@11@00) r) r))
              :pattern ((inv@103@00 s@$ g0@10@00 g1@11@00 r))
              :qid |quant-u-13733|))
            ($$%precondition ($SortWrappers.$FVF<next>To$Snap (sm@106@00 s@$ g0@10@00 g1@11@00)) g0@10@00)))
        (or (Set_in v@101@00 g0@10@00) (not (Set_in v@101@00 g0@10@00)))))
    (or (Set_in u@100@00 g0@10@00) (not (Set_in u@100@00 g0@10@00)))
    (=>
      (and
        (Set_in u@100@00 g0@10@00)
        (and
          (Set_in v@101@00 g0@10@00)
          (not
            (exists_path<Bool> ($$ ($SortWrappers.$FVF<next>To$Snap (sm@106@00 s@$ g0@10@00 g1@11@00)) g0@10@00) u@100@00 v@101@00))))
      (and
        (Set_in u@100@00 g0@10@00)
        (Set_in v@101@00 g0@10@00)
        (not
          (exists_path<Bool> ($$ ($SortWrappers.$FVF<next>To$Snap (sm@106@00 s@$ g0@10@00 g1@11@00)) g0@10@00) u@100@00 v@101@00))
        (forall ((r $Ref)) (!
          (=>
            (Set_in (inv@108@00 s@$ g0@10@00 g1@11@00 r) (Set_union g0@10@00 g1@11@00))
            ($FVF.loc_next ($FVF.lookup_next (sm@110@00 s@$ g0@10@00 g1@11@00) r) r))
          :pattern ((inv@108@00 s@$ g0@10@00 g1@11@00 r))
          :qid |quant-u-13736|))
        ($$%precondition ($SortWrappers.$FVF<next>To$Snap (sm@111@00 s@$ g0@10@00 g1@11@00)) (Set_union g0@10@00 g1@11@00))))
    (or
      (not
        (and
          (Set_in u@100@00 g0@10@00)
          (and
            (Set_in v@101@00 g0@10@00)
            (not
              (exists_path<Bool> ($$ ($SortWrappers.$FVF<next>To$Snap (sm@106@00 s@$ g0@10@00 g1@11@00)) g0@10@00) u@100@00 v@101@00)))))
      (and
        (Set_in u@100@00 g0@10@00)
        (and
          (Set_in v@101@00 g0@10@00)
          (not
            (exists_path<Bool> ($$ ($SortWrappers.$FVF<next>To$Snap (sm@106@00 s@$ g0@10@00 g1@11@00)) g0@10@00) u@100@00 v@101@00))))))
  :pattern ((Set_in u@100@00 g0@10@00) (exists_path<Bool> ($$ ($SortWrappers.$FVF<next>To$Snap (sm@106@00 s@$ g0@10@00 g1@11@00)) g0@10@00) u@100@00 v@101@00))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/graphs/static/tests/lists/framing1.vpr@297@13@297@120-aux|)))
(assert (forall ((u@100@00 $Ref) (v@101@00 $Ref)) (!
  (and
    (=>
      (Set_in u@100@00 g0@10@00)
      (and
        (Set_in u@100@00 g0@10@00)
        (=>
          (Set_in v@101@00 g0@10@00)
          (and
            (Set_in v@101@00 g0@10@00)
            (forall ((r $Ref)) (!
              (=>
                (Set_in (inv@103@00 s@$ g0@10@00 g1@11@00 r) g0@10@00)
                ($FVF.loc_next ($FVF.lookup_next (sm@105@00 s@$ g0@10@00 g1@11@00) r) r))
              :pattern ((inv@103@00 s@$ g0@10@00 g1@11@00 r))
              :qid |quant-u-13733|))
            ($$%precondition ($SortWrappers.$FVF<next>To$Snap (sm@106@00 s@$ g0@10@00 g1@11@00)) g0@10@00)))
        (or (Set_in v@101@00 g0@10@00) (not (Set_in v@101@00 g0@10@00)))))
    (or (Set_in u@100@00 g0@10@00) (not (Set_in u@100@00 g0@10@00)))
    (=>
      (and
        (Set_in u@100@00 g0@10@00)
        (and
          (Set_in v@101@00 g0@10@00)
          (not
            (exists_path<Bool> ($$ ($SortWrappers.$FVF<next>To$Snap (sm@106@00 s@$ g0@10@00 g1@11@00)) g0@10@00) u@100@00 v@101@00))))
      (and
        (Set_in u@100@00 g0@10@00)
        (Set_in v@101@00 g0@10@00)
        (not
          (exists_path<Bool> ($$ ($SortWrappers.$FVF<next>To$Snap (sm@106@00 s@$ g0@10@00 g1@11@00)) g0@10@00) u@100@00 v@101@00))
        (forall ((r $Ref)) (!
          (=>
            (Set_in (inv@108@00 s@$ g0@10@00 g1@11@00 r) (Set_union g0@10@00 g1@11@00))
            ($FVF.loc_next ($FVF.lookup_next (sm@110@00 s@$ g0@10@00 g1@11@00) r) r))
          :pattern ((inv@108@00 s@$ g0@10@00 g1@11@00 r))
          :qid |quant-u-13736|))
        ($$%precondition ($SortWrappers.$FVF<next>To$Snap (sm@111@00 s@$ g0@10@00 g1@11@00)) (Set_union g0@10@00 g1@11@00))))
    (or
      (not
        (and
          (Set_in u@100@00 g0@10@00)
          (and
            (Set_in v@101@00 g0@10@00)
            (not
              (exists_path<Bool> ($$ ($SortWrappers.$FVF<next>To$Snap (sm@106@00 s@$ g0@10@00 g1@11@00)) g0@10@00) u@100@00 v@101@00)))))
      (and
        (Set_in u@100@00 g0@10@00)
        (and
          (Set_in v@101@00 g0@10@00)
          (not
            (exists_path<Bool> ($$ ($SortWrappers.$FVF<next>To$Snap (sm@106@00 s@$ g0@10@00 g1@11@00)) g0@10@00) u@100@00 v@101@00))))))
  :pattern ((Set_in u@100@00 g0@10@00) (exists_path<Bool> ($$ ($SortWrappers.$FVF<next>To$Snap (sm@111@00 s@$ g0@10@00 g1@11@00)) (Set_union g0@10@00 g1@11@00)) u@100@00 v@101@00))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/graphs/static/tests/lists/framing1.vpr@297@13@297@120-aux|)))
(assert (forall ((u@100@00 $Ref) (v@101@00 $Ref)) (!
  (and
    (=>
      (Set_in u@100@00 g0@10@00)
      (and
        (Set_in u@100@00 g0@10@00)
        (=>
          (Set_in v@101@00 g0@10@00)
          (and
            (Set_in v@101@00 g0@10@00)
            (forall ((r $Ref)) (!
              (=>
                (Set_in (inv@103@00 s@$ g0@10@00 g1@11@00 r) g0@10@00)
                ($FVF.loc_next ($FVF.lookup_next (sm@105@00 s@$ g0@10@00 g1@11@00) r) r))
              :pattern ((inv@103@00 s@$ g0@10@00 g1@11@00 r))
              :qid |quant-u-13733|))
            ($$%precondition ($SortWrappers.$FVF<next>To$Snap (sm@106@00 s@$ g0@10@00 g1@11@00)) g0@10@00)))
        (or (Set_in v@101@00 g0@10@00) (not (Set_in v@101@00 g0@10@00)))))
    (or (Set_in u@100@00 g0@10@00) (not (Set_in u@100@00 g0@10@00)))
    (=>
      (and
        (Set_in u@100@00 g0@10@00)
        (and
          (Set_in v@101@00 g0@10@00)
          (not
            (exists_path<Bool> ($$ ($SortWrappers.$FVF<next>To$Snap (sm@106@00 s@$ g0@10@00 g1@11@00)) g0@10@00) u@100@00 v@101@00))))
      (and
        (Set_in u@100@00 g0@10@00)
        (Set_in v@101@00 g0@10@00)
        (not
          (exists_path<Bool> ($$ ($SortWrappers.$FVF<next>To$Snap (sm@106@00 s@$ g0@10@00 g1@11@00)) g0@10@00) u@100@00 v@101@00))
        (forall ((r $Ref)) (!
          (=>
            (Set_in (inv@108@00 s@$ g0@10@00 g1@11@00 r) (Set_union g0@10@00 g1@11@00))
            ($FVF.loc_next ($FVF.lookup_next (sm@110@00 s@$ g0@10@00 g1@11@00) r) r))
          :pattern ((inv@108@00 s@$ g0@10@00 g1@11@00 r))
          :qid |quant-u-13736|))
        ($$%precondition ($SortWrappers.$FVF<next>To$Snap (sm@111@00 s@$ g0@10@00 g1@11@00)) (Set_union g0@10@00 g1@11@00))))
    (or
      (not
        (and
          (Set_in u@100@00 g0@10@00)
          (and
            (Set_in v@101@00 g0@10@00)
            (not
              (exists_path<Bool> ($$ ($SortWrappers.$FVF<next>To$Snap (sm@106@00 s@$ g0@10@00 g1@11@00)) g0@10@00) u@100@00 v@101@00)))))
      (and
        (Set_in u@100@00 g0@10@00)
        (and
          (Set_in v@101@00 g0@10@00)
          (not
            (exists_path<Bool> ($$ ($SortWrappers.$FVF<next>To$Snap (sm@106@00 s@$ g0@10@00 g1@11@00)) g0@10@00) u@100@00 v@101@00))))))
  :pattern ((Set_in v@101@00 g0@10@00) (exists_path<Bool> ($$ ($SortWrappers.$FVF<next>To$Snap (sm@106@00 s@$ g0@10@00 g1@11@00)) g0@10@00) u@100@00 v@101@00))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/graphs/static/tests/lists/framing1.vpr@297@13@297@120-aux|)))
(assert (forall ((u@100@00 $Ref) (v@101@00 $Ref)) (!
  (and
    (=>
      (Set_in u@100@00 g0@10@00)
      (and
        (Set_in u@100@00 g0@10@00)
        (=>
          (Set_in v@101@00 g0@10@00)
          (and
            (Set_in v@101@00 g0@10@00)
            (forall ((r $Ref)) (!
              (=>
                (Set_in (inv@103@00 s@$ g0@10@00 g1@11@00 r) g0@10@00)
                ($FVF.loc_next ($FVF.lookup_next (sm@105@00 s@$ g0@10@00 g1@11@00) r) r))
              :pattern ((inv@103@00 s@$ g0@10@00 g1@11@00 r))
              :qid |quant-u-13733|))
            ($$%precondition ($SortWrappers.$FVF<next>To$Snap (sm@106@00 s@$ g0@10@00 g1@11@00)) g0@10@00)))
        (or (Set_in v@101@00 g0@10@00) (not (Set_in v@101@00 g0@10@00)))))
    (or (Set_in u@100@00 g0@10@00) (not (Set_in u@100@00 g0@10@00)))
    (=>
      (and
        (Set_in u@100@00 g0@10@00)
        (and
          (Set_in v@101@00 g0@10@00)
          (not
            (exists_path<Bool> ($$ ($SortWrappers.$FVF<next>To$Snap (sm@106@00 s@$ g0@10@00 g1@11@00)) g0@10@00) u@100@00 v@101@00))))
      (and
        (Set_in u@100@00 g0@10@00)
        (Set_in v@101@00 g0@10@00)
        (not
          (exists_path<Bool> ($$ ($SortWrappers.$FVF<next>To$Snap (sm@106@00 s@$ g0@10@00 g1@11@00)) g0@10@00) u@100@00 v@101@00))
        (forall ((r $Ref)) (!
          (=>
            (Set_in (inv@108@00 s@$ g0@10@00 g1@11@00 r) (Set_union g0@10@00 g1@11@00))
            ($FVF.loc_next ($FVF.lookup_next (sm@110@00 s@$ g0@10@00 g1@11@00) r) r))
          :pattern ((inv@108@00 s@$ g0@10@00 g1@11@00 r))
          :qid |quant-u-13736|))
        ($$%precondition ($SortWrappers.$FVF<next>To$Snap (sm@111@00 s@$ g0@10@00 g1@11@00)) (Set_union g0@10@00 g1@11@00))))
    (or
      (not
        (and
          (Set_in u@100@00 g0@10@00)
          (and
            (Set_in v@101@00 g0@10@00)
            (not
              (exists_path<Bool> ($$ ($SortWrappers.$FVF<next>To$Snap (sm@106@00 s@$ g0@10@00 g1@11@00)) g0@10@00) u@100@00 v@101@00)))))
      (and
        (Set_in u@100@00 g0@10@00)
        (and
          (Set_in v@101@00 g0@10@00)
          (not
            (exists_path<Bool> ($$ ($SortWrappers.$FVF<next>To$Snap (sm@106@00 s@$ g0@10@00 g1@11@00)) g0@10@00) u@100@00 v@101@00))))))
  :pattern ((Set_in v@101@00 g0@10@00) (exists_path<Bool> ($$ ($SortWrappers.$FVF<next>To$Snap (sm@111@00 s@$ g0@10@00 g1@11@00)) (Set_union g0@10@00 g1@11@00)) u@100@00 v@101@00))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/graphs/static/tests/lists/framing1.vpr@297@13@297@120-aux|)))
(assert (forall ((u@100@00 $Ref) (v@101@00 $Ref)) (!
  (and
    (=>
      (Set_in u@100@00 g0@10@00)
      (and
        (Set_in u@100@00 g0@10@00)
        (=>
          (Set_in v@101@00 g0@10@00)
          (and
            (Set_in v@101@00 g0@10@00)
            (forall ((r $Ref)) (!
              (=>
                (Set_in (inv@103@00 s@$ g0@10@00 g1@11@00 r) g0@10@00)
                ($FVF.loc_next ($FVF.lookup_next (sm@105@00 s@$ g0@10@00 g1@11@00) r) r))
              :pattern ((inv@103@00 s@$ g0@10@00 g1@11@00 r))
              :qid |quant-u-13733|))
            ($$%precondition ($SortWrappers.$FVF<next>To$Snap (sm@106@00 s@$ g0@10@00 g1@11@00)) g0@10@00)))
        (or (Set_in v@101@00 g0@10@00) (not (Set_in v@101@00 g0@10@00)))))
    (or (Set_in u@100@00 g0@10@00) (not (Set_in u@100@00 g0@10@00)))
    (=>
      (and
        (Set_in u@100@00 g0@10@00)
        (and
          (Set_in v@101@00 g0@10@00)
          (not
            (exists_path<Bool> ($$ ($SortWrappers.$FVF<next>To$Snap (sm@106@00 s@$ g0@10@00 g1@11@00)) g0@10@00) u@100@00 v@101@00))))
      (and
        (Set_in u@100@00 g0@10@00)
        (Set_in v@101@00 g0@10@00)
        (not
          (exists_path<Bool> ($$ ($SortWrappers.$FVF<next>To$Snap (sm@106@00 s@$ g0@10@00 g1@11@00)) g0@10@00) u@100@00 v@101@00))
        (forall ((r $Ref)) (!
          (=>
            (Set_in (inv@108@00 s@$ g0@10@00 g1@11@00 r) (Set_union g0@10@00 g1@11@00))
            ($FVF.loc_next ($FVF.lookup_next (sm@110@00 s@$ g0@10@00 g1@11@00) r) r))
          :pattern ((inv@108@00 s@$ g0@10@00 g1@11@00 r))
          :qid |quant-u-13736|))
        ($$%precondition ($SortWrappers.$FVF<next>To$Snap (sm@111@00 s@$ g0@10@00 g1@11@00)) (Set_union g0@10@00 g1@11@00))))
    (or
      (not
        (and
          (Set_in u@100@00 g0@10@00)
          (and
            (Set_in v@101@00 g0@10@00)
            (not
              (exists_path<Bool> ($$ ($SortWrappers.$FVF<next>To$Snap (sm@106@00 s@$ g0@10@00 g1@11@00)) g0@10@00) u@100@00 v@101@00)))))
      (and
        (Set_in u@100@00 g0@10@00)
        (and
          (Set_in v@101@00 g0@10@00)
          (not
            (exists_path<Bool> ($$ ($SortWrappers.$FVF<next>To$Snap (sm@106@00 s@$ g0@10@00 g1@11@00)) g0@10@00) u@100@00 v@101@00))))))
  :pattern ((exists_path<Bool> ($$ ($SortWrappers.$FVF<next>To$Snap (sm@106@00 s@$ g0@10@00 g1@11@00)) g0@10@00) u@100@00 v@101@00))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/graphs/static/tests/lists/framing1.vpr@297@13@297@120-aux|)))
(assert (forall ((u@100@00 $Ref) (v@101@00 $Ref)) (!
  (and
    (=>
      (Set_in u@100@00 g0@10@00)
      (and
        (Set_in u@100@00 g0@10@00)
        (=>
          (Set_in v@101@00 g0@10@00)
          (and
            (Set_in v@101@00 g0@10@00)
            (forall ((r $Ref)) (!
              (=>
                (Set_in (inv@103@00 s@$ g0@10@00 g1@11@00 r) g0@10@00)
                ($FVF.loc_next ($FVF.lookup_next (sm@105@00 s@$ g0@10@00 g1@11@00) r) r))
              :pattern ((inv@103@00 s@$ g0@10@00 g1@11@00 r))
              :qid |quant-u-13733|))
            ($$%precondition ($SortWrappers.$FVF<next>To$Snap (sm@106@00 s@$ g0@10@00 g1@11@00)) g0@10@00)))
        (or (Set_in v@101@00 g0@10@00) (not (Set_in v@101@00 g0@10@00)))))
    (or (Set_in u@100@00 g0@10@00) (not (Set_in u@100@00 g0@10@00)))
    (=>
      (and
        (Set_in u@100@00 g0@10@00)
        (and
          (Set_in v@101@00 g0@10@00)
          (not
            (exists_path<Bool> ($$ ($SortWrappers.$FVF<next>To$Snap (sm@106@00 s@$ g0@10@00 g1@11@00)) g0@10@00) u@100@00 v@101@00))))
      (and
        (Set_in u@100@00 g0@10@00)
        (Set_in v@101@00 g0@10@00)
        (not
          (exists_path<Bool> ($$ ($SortWrappers.$FVF<next>To$Snap (sm@106@00 s@$ g0@10@00 g1@11@00)) g0@10@00) u@100@00 v@101@00))
        (forall ((r $Ref)) (!
          (=>
            (Set_in (inv@108@00 s@$ g0@10@00 g1@11@00 r) (Set_union g0@10@00 g1@11@00))
            ($FVF.loc_next ($FVF.lookup_next (sm@110@00 s@$ g0@10@00 g1@11@00) r) r))
          :pattern ((inv@108@00 s@$ g0@10@00 g1@11@00 r))
          :qid |quant-u-13736|))
        ($$%precondition ($SortWrappers.$FVF<next>To$Snap (sm@111@00 s@$ g0@10@00 g1@11@00)) (Set_union g0@10@00 g1@11@00))))
    (or
      (not
        (and
          (Set_in u@100@00 g0@10@00)
          (and
            (Set_in v@101@00 g0@10@00)
            (not
              (exists_path<Bool> ($$ ($SortWrappers.$FVF<next>To$Snap (sm@106@00 s@$ g0@10@00 g1@11@00)) g0@10@00) u@100@00 v@101@00)))))
      (and
        (Set_in u@100@00 g0@10@00)
        (and
          (Set_in v@101@00 g0@10@00)
          (not
            (exists_path<Bool> ($$ ($SortWrappers.$FVF<next>To$Snap (sm@106@00 s@$ g0@10@00 g1@11@00)) g0@10@00) u@100@00 v@101@00))))))
  :pattern ((exists_path<Bool> ($$ ($SortWrappers.$FVF<next>To$Snap (sm@111@00 s@$ g0@10@00 g1@11@00)) (Set_union g0@10@00 g1@11@00)) u@100@00 v@101@00))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/graphs/static/tests/lists/framing1.vpr@297@13@297@120-aux|)))
(assert (forall ((u@100@00 $Ref) (v@101@00 $Ref)) (!
  (=>
    (and
      (Set_in u@100@00 g0@10@00)
      (and
        (Set_in v@101@00 g0@10@00)
        (not
          (exists_path<Bool> ($$ ($SortWrappers.$FVF<next>To$Snap (sm@106@00 s@$ g0@10@00 g1@11@00)) g0@10@00) u@100@00 v@101@00))))
    (not
      (exists_path<Bool> ($$ ($SortWrappers.$FVF<next>To$Snap (sm@111@00 s@$ g0@10@00 g1@11@00)) (Set_union g0@10@00 g1@11@00)) u@100@00 v@101@00)))
  :pattern ((Set_in u@100@00 g0@10@00) (Set_in v@101@00 g0@10@00))
  :pattern ((Set_in u@100@00 g0@10@00) (exists_path<Bool> ($$ ($SortWrappers.$FVF<next>To$Snap (sm@106@00 s@$ g0@10@00 g1@11@00)) g0@10@00) u@100@00 v@101@00))
  :pattern ((Set_in u@100@00 g0@10@00) (exists_path<Bool> ($$ ($SortWrappers.$FVF<next>To$Snap (sm@111@00 s@$ g0@10@00 g1@11@00)) (Set_union g0@10@00 g1@11@00)) u@100@00 v@101@00))
  :pattern ((Set_in v@101@00 g0@10@00) (exists_path<Bool> ($$ ($SortWrappers.$FVF<next>To$Snap (sm@106@00 s@$ g0@10@00 g1@11@00)) g0@10@00) u@100@00 v@101@00))
  :pattern ((Set_in v@101@00 g0@10@00) (exists_path<Bool> ($$ ($SortWrappers.$FVF<next>To$Snap (sm@111@00 s@$ g0@10@00 g1@11@00)) (Set_union g0@10@00 g1@11@00)) u@100@00 v@101@00))
  :pattern ((exists_path<Bool> ($$ ($SortWrappers.$FVF<next>To$Snap (sm@106@00 s@$ g0@10@00 g1@11@00)) g0@10@00) u@100@00 v@101@00))
  :pattern ((exists_path<Bool> ($$ ($SortWrappers.$FVF<next>To$Snap (sm@111@00 s@$ g0@10@00 g1@11@00)) (Set_union g0@10@00 g1@11@00)) u@100@00 v@101@00))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/graphs/static/tests/lists/framing1.vpr@297@13@297@120|)))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@76@00))))
  $Snap.unit))
; [eval] (forall u: Ref, v: Ref :: { (u in g1), (v in g1) } { (u in g1), exists_path($$(g1), u, v) } { (u in g1), exists_path($$((g1 union g0)), u, v) } { (v in g1), exists_path($$(g1), u, v) } { (v in g1), exists_path($$((g1 union g0)), u, v) } { exists_path($$(g1), u, v) } { exists_path($$((g1 union g0)), u, v) } (u in g1) && ((v in g1) && !exists_path($$(g1), u, v)) ==> !exists_path($$((g1 union g0)), u, v))
(declare-const u@112@00 $Ref)
(declare-const v@113@00 $Ref)
(push) ; 2
; [eval] (u in g1) && ((v in g1) && !exists_path($$(g1), u, v)) ==> !exists_path($$((g1 union g0)), u, v)
; [eval] (u in g1) && ((v in g1) && !exists_path($$(g1), u, v))
; [eval] (u in g1)
(push) ; 3
; [then-branch: 25 | !(u@112@00 in g1@11@00) | live]
; [else-branch: 25 | u@112@00 in g1@11@00 | live]
(push) ; 4
; [then-branch: 25 | !(u@112@00 in g1@11@00)]
(assert (not (Set_in u@112@00 g1@11@00)))
(pop) ; 4
(push) ; 4
; [else-branch: 25 | u@112@00 in g1@11@00]
(assert (Set_in u@112@00 g1@11@00))
; [eval] (v in g1)
(push) ; 5
; [then-branch: 26 | !(v@113@00 in g1@11@00) | live]
; [else-branch: 26 | v@113@00 in g1@11@00 | live]
(push) ; 6
; [then-branch: 26 | !(v@113@00 in g1@11@00)]
(assert (not (Set_in v@113@00 g1@11@00)))
(pop) ; 6
(push) ; 6
; [else-branch: 26 | v@113@00 in g1@11@00]
(assert (Set_in v@113@00 g1@11@00))
; [eval] !exists_path($$(g1), u, v)
; [eval] exists_path($$(g1), u, v)
; [eval] $$(g1)
(push) ; 7
(declare-const n@114@00 $Ref)
(push) ; 8
; [eval] (n in refs)
(assert (Set_in n@114@00 g1@11@00))
(pop) ; 8
(declare-fun inv@115@00 ($Snap Set<$Ref> Set<$Ref> $Ref) $Ref)
(declare-fun img@116@00 ($Snap Set<$Ref> Set<$Ref> $Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
(declare-fun sm@117@00 ($Snap Set<$Ref> Set<$Ref>) $FVF<next>)
; Definitional axioms for snapshot map domain
; Definitional axioms for snapshot map values
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@70@00 s@$ g0@10@00 g1@11@00 r)
      (Set_in (inv@69@00 s@$ g0@10@00 g1@11@00 r) g0@10@00))
    (=
      ($FVF.lookup_next (sm@117@00 s@$ g0@10@00 g1@11@00) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first s@$)) r)))
  :pattern (($FVF.lookup_next (sm@117@00 s@$ g0@10@00 g1@11@00) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first s@$)) r))
  :qid |qp.fvfValDef76|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@74@00 s@$ g0@10@00 g1@11@00 r)
      (Set_in (inv@73@00 s@$ g0@10@00 g1@11@00 r) g1@11@00))
    (=
      ($FVF.lookup_next (sm@117@00 s@$ g0@10@00 g1@11@00) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second s@$))) r)))
  :pattern (($FVF.lookup_next (sm@117@00 s@$ g0@10@00 g1@11@00) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second s@$))) r))
  :qid |qp.fvfValDef77|)))
(assert (forall ((r $Ref)) (!
  (and
    ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first s@$)) r) r)
    ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second s@$))) r) r))
  :pattern (($FVF.lookup_next (sm@117@00 s@$ g0@10@00 g1@11@00) r))
  :qid |qp.fvfResTrgDef78|)))
; Check receiver injectivity
(push) ; 8
(assert (not (forall ((n1@114@00 $Ref) (n2@114@00 $Ref)) (!
  (=>
    (and
      (and
        (Set_in n1@114@00 g1@11@00)
        ($FVF.loc_next ($FVF.lookup_next (sm@117@00 s@$ g0@10@00 g1@11@00) n1@114@00) n1@114@00))
      (and
        (Set_in n2@114@00 g1@11@00)
        ($FVF.loc_next ($FVF.lookup_next (sm@117@00 s@$ g0@10@00 g1@11@00) n2@114@00) n2@114@00))
      (= n1@114@00 n2@114@00))
    (= n1@114@00 n2@114@00))
  
  :qid |next-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 8
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((n@114@00 $Ref)) (!
  (=>
    (Set_in n@114@00 g1@11@00)
    (and
      (= (inv@115@00 s@$ g0@10@00 g1@11@00 n@114@00) n@114@00)
      (img@116@00 s@$ g0@10@00 g1@11@00 n@114@00)))
  :pattern ((Set_in n@114@00 g1@11@00))
  :pattern ((inv@115@00 s@$ g0@10@00 g1@11@00 n@114@00))
  :pattern ((img@116@00 s@$ g0@10@00 g1@11@00 n@114@00))
  :qid |next-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@116@00 s@$ g0@10@00 g1@11@00 r)
      (Set_in (inv@115@00 s@$ g0@10@00 g1@11@00 r) g1@11@00))
    (= (inv@115@00 s@$ g0@10@00 g1@11@00 r) r))
  :pattern ((inv@115@00 s@$ g0@10@00 g1@11@00 r))
  :qid |next-fctOfInv|)))
(assert (forall ((r $Ref)) (!
  (=>
    (Set_in (inv@115@00 s@$ g0@10@00 g1@11@00 r) g1@11@00)
    ($FVF.loc_next ($FVF.lookup_next (sm@117@00 s@$ g0@10@00 g1@11@00) r) r))
  :pattern ((inv@115@00 s@$ g0@10@00 g1@11@00 r))
  :qid |quant-u-13739|)))
(push) ; 8
(assert (not (forall ((r $Ref)) (!
  (=>
    (and
      (Set_in (inv@115@00 s@$ g0@10@00 g1@11@00 r) g1@11@00)
      (img@116@00 s@$ g0@10@00 g1@11@00 r)
      (= r (inv@115@00 s@$ g0@10@00 g1@11@00 r)))
    (>
      (+
        (ite
          (and
            (img@70@00 s@$ g0@10@00 g1@11@00 r)
            (Set_in (inv@69@00 s@$ g0@10@00 g1@11@00 r) g0@10@00))
          $Perm.Write
          $Perm.No)
        (ite
          (and
            (img@74@00 s@$ g0@10@00 g1@11@00 r)
            (Set_in (inv@73@00 s@$ g0@10@00 g1@11@00 r) g1@11@00))
          $Perm.Write
          $Perm.No))
      $Perm.No))
  
  :qid |quant-u-13740|))))
(check-sat)
; unsat
(pop) ; 8
; 0.00s
; (get-info :all-statistics)
(declare-fun sm@118@00 ($Snap Set<$Ref> Set<$Ref>) $FVF<next>)
; Definitional axioms for snapshot map domain
(assert (forall ((r $Ref)) (!
  (and
    (=>
      (Set_in r ($FVF.domain_next (sm@118@00 s@$ g0@10@00 g1@11@00)))
      (and
        (Set_in (inv@115@00 s@$ g0@10@00 g1@11@00 r) g1@11@00)
        (img@116@00 s@$ g0@10@00 g1@11@00 r)))
    (=>
      (and
        (Set_in (inv@115@00 s@$ g0@10@00 g1@11@00 r) g1@11@00)
        (img@116@00 s@$ g0@10@00 g1@11@00 r))
      (Set_in r ($FVF.domain_next (sm@118@00 s@$ g0@10@00 g1@11@00)))))
  :pattern ((Set_in r ($FVF.domain_next (sm@118@00 s@$ g0@10@00 g1@11@00))))
  :qid |qp.fvfDomDef82|)))
; Definitional axioms for snapshot map values
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and
        (Set_in (inv@115@00 s@$ g0@10@00 g1@11@00 r) g1@11@00)
        (img@116@00 s@$ g0@10@00 g1@11@00 r))
      (and
        (img@70@00 s@$ g0@10@00 g1@11@00 r)
        (Set_in (inv@69@00 s@$ g0@10@00 g1@11@00 r) g0@10@00)))
    (=
      ($FVF.lookup_next (sm@118@00 s@$ g0@10@00 g1@11@00) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first s@$)) r)))
  :pattern (($FVF.lookup_next (sm@118@00 s@$ g0@10@00 g1@11@00) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first s@$)) r))
  :qid |qp.fvfValDef79|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and
        (Set_in (inv@115@00 s@$ g0@10@00 g1@11@00 r) g1@11@00)
        (img@116@00 s@$ g0@10@00 g1@11@00 r))
      (and
        (img@74@00 s@$ g0@10@00 g1@11@00 r)
        (Set_in (inv@73@00 s@$ g0@10@00 g1@11@00 r) g1@11@00)))
    (=
      ($FVF.lookup_next (sm@118@00 s@$ g0@10@00 g1@11@00) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second s@$))) r)))
  :pattern (($FVF.lookup_next (sm@118@00 s@$ g0@10@00 g1@11@00) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second s@$))) r))
  :qid |qp.fvfValDef80|)))
(assert (forall ((r $Ref)) (!
  (and
    ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first s@$)) r) r)
    ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second s@$))) r) r))
  :pattern (($FVF.lookup_next (sm@118@00 s@$ g0@10@00 g1@11@00) r))
  :qid |qp.fvfResTrgDef81|)))
(assert ($$%precondition ($SortWrappers.$FVF<next>To$Snap (sm@118@00 s@$ g0@10@00 g1@11@00)) g1@11@00))
(pop) ; 7
; Joined path conditions
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@70@00 s@$ g0@10@00 g1@11@00 r)
      (Set_in (inv@69@00 s@$ g0@10@00 g1@11@00 r) g0@10@00))
    (=
      ($FVF.lookup_next (sm@117@00 s@$ g0@10@00 g1@11@00) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first s@$)) r)))
  :pattern (($FVF.lookup_next (sm@117@00 s@$ g0@10@00 g1@11@00) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first s@$)) r))
  :qid |qp.fvfValDef76|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@74@00 s@$ g0@10@00 g1@11@00 r)
      (Set_in (inv@73@00 s@$ g0@10@00 g1@11@00 r) g1@11@00))
    (=
      ($FVF.lookup_next (sm@117@00 s@$ g0@10@00 g1@11@00) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second s@$))) r)))
  :pattern (($FVF.lookup_next (sm@117@00 s@$ g0@10@00 g1@11@00) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second s@$))) r))
  :qid |qp.fvfValDef77|)))
(assert (forall ((r $Ref)) (!
  (and
    ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first s@$)) r) r)
    ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second s@$))) r) r))
  :pattern (($FVF.lookup_next (sm@117@00 s@$ g0@10@00 g1@11@00) r))
  :qid |qp.fvfResTrgDef78|)))
(assert (forall ((n@114@00 $Ref)) (!
  (=>
    (Set_in n@114@00 g1@11@00)
    (and
      (= (inv@115@00 s@$ g0@10@00 g1@11@00 n@114@00) n@114@00)
      (img@116@00 s@$ g0@10@00 g1@11@00 n@114@00)))
  :pattern ((Set_in n@114@00 g1@11@00))
  :pattern ((inv@115@00 s@$ g0@10@00 g1@11@00 n@114@00))
  :pattern ((img@116@00 s@$ g0@10@00 g1@11@00 n@114@00))
  :qid |next-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@116@00 s@$ g0@10@00 g1@11@00 r)
      (Set_in (inv@115@00 s@$ g0@10@00 g1@11@00 r) g1@11@00))
    (= (inv@115@00 s@$ g0@10@00 g1@11@00 r) r))
  :pattern ((inv@115@00 s@$ g0@10@00 g1@11@00 r))
  :qid |next-fctOfInv|)))
(assert (forall ((r $Ref)) (!
  (and
    (=>
      (Set_in r ($FVF.domain_next (sm@118@00 s@$ g0@10@00 g1@11@00)))
      (and
        (Set_in (inv@115@00 s@$ g0@10@00 g1@11@00 r) g1@11@00)
        (img@116@00 s@$ g0@10@00 g1@11@00 r)))
    (=>
      (and
        (Set_in (inv@115@00 s@$ g0@10@00 g1@11@00 r) g1@11@00)
        (img@116@00 s@$ g0@10@00 g1@11@00 r))
      (Set_in r ($FVF.domain_next (sm@118@00 s@$ g0@10@00 g1@11@00)))))
  :pattern ((Set_in r ($FVF.domain_next (sm@118@00 s@$ g0@10@00 g1@11@00))))
  :qid |qp.fvfDomDef82|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and
        (Set_in (inv@115@00 s@$ g0@10@00 g1@11@00 r) g1@11@00)
        (img@116@00 s@$ g0@10@00 g1@11@00 r))
      (and
        (img@70@00 s@$ g0@10@00 g1@11@00 r)
        (Set_in (inv@69@00 s@$ g0@10@00 g1@11@00 r) g0@10@00)))
    (=
      ($FVF.lookup_next (sm@118@00 s@$ g0@10@00 g1@11@00) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first s@$)) r)))
  :pattern (($FVF.lookup_next (sm@118@00 s@$ g0@10@00 g1@11@00) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first s@$)) r))
  :qid |qp.fvfValDef79|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and
        (Set_in (inv@115@00 s@$ g0@10@00 g1@11@00 r) g1@11@00)
        (img@116@00 s@$ g0@10@00 g1@11@00 r))
      (and
        (img@74@00 s@$ g0@10@00 g1@11@00 r)
        (Set_in (inv@73@00 s@$ g0@10@00 g1@11@00 r) g1@11@00)))
    (=
      ($FVF.lookup_next (sm@118@00 s@$ g0@10@00 g1@11@00) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second s@$))) r)))
  :pattern (($FVF.lookup_next (sm@118@00 s@$ g0@10@00 g1@11@00) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second s@$))) r))
  :qid |qp.fvfValDef80|)))
(assert (forall ((r $Ref)) (!
  (and
    ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first s@$)) r) r)
    ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second s@$))) r) r))
  :pattern (($FVF.lookup_next (sm@118@00 s@$ g0@10@00 g1@11@00) r))
  :qid |qp.fvfResTrgDef81|)))
(assert (and
  (forall ((r $Ref)) (!
    (=>
      (Set_in (inv@115@00 s@$ g0@10@00 g1@11@00 r) g1@11@00)
      ($FVF.loc_next ($FVF.lookup_next (sm@117@00 s@$ g0@10@00 g1@11@00) r) r))
    :pattern ((inv@115@00 s@$ g0@10@00 g1@11@00 r))
    :qid |quant-u-13739|))
  ($$%precondition ($SortWrappers.$FVF<next>To$Snap (sm@118@00 s@$ g0@10@00 g1@11@00)) g1@11@00)))
(pop) ; 6
(pop) ; 5
; Joined path conditions
; Joined path conditions
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@70@00 s@$ g0@10@00 g1@11@00 r)
      (Set_in (inv@69@00 s@$ g0@10@00 g1@11@00 r) g0@10@00))
    (=
      ($FVF.lookup_next (sm@117@00 s@$ g0@10@00 g1@11@00) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first s@$)) r)))
  :pattern (($FVF.lookup_next (sm@117@00 s@$ g0@10@00 g1@11@00) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first s@$)) r))
  :qid |qp.fvfValDef76|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@74@00 s@$ g0@10@00 g1@11@00 r)
      (Set_in (inv@73@00 s@$ g0@10@00 g1@11@00 r) g1@11@00))
    (=
      ($FVF.lookup_next (sm@117@00 s@$ g0@10@00 g1@11@00) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second s@$))) r)))
  :pattern (($FVF.lookup_next (sm@117@00 s@$ g0@10@00 g1@11@00) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second s@$))) r))
  :qid |qp.fvfValDef77|)))
(assert (forall ((r $Ref)) (!
  (and
    ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first s@$)) r) r)
    ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second s@$))) r) r))
  :pattern (($FVF.lookup_next (sm@117@00 s@$ g0@10@00 g1@11@00) r))
  :qid |qp.fvfResTrgDef78|)))
(assert (forall ((n@114@00 $Ref)) (!
  (=>
    (Set_in n@114@00 g1@11@00)
    (and
      (= (inv@115@00 s@$ g0@10@00 g1@11@00 n@114@00) n@114@00)
      (img@116@00 s@$ g0@10@00 g1@11@00 n@114@00)))
  :pattern ((Set_in n@114@00 g1@11@00))
  :pattern ((inv@115@00 s@$ g0@10@00 g1@11@00 n@114@00))
  :pattern ((img@116@00 s@$ g0@10@00 g1@11@00 n@114@00))
  :qid |next-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@116@00 s@$ g0@10@00 g1@11@00 r)
      (Set_in (inv@115@00 s@$ g0@10@00 g1@11@00 r) g1@11@00))
    (= (inv@115@00 s@$ g0@10@00 g1@11@00 r) r))
  :pattern ((inv@115@00 s@$ g0@10@00 g1@11@00 r))
  :qid |next-fctOfInv|)))
(assert (forall ((r $Ref)) (!
  (and
    (=>
      (Set_in r ($FVF.domain_next (sm@118@00 s@$ g0@10@00 g1@11@00)))
      (and
        (Set_in (inv@115@00 s@$ g0@10@00 g1@11@00 r) g1@11@00)
        (img@116@00 s@$ g0@10@00 g1@11@00 r)))
    (=>
      (and
        (Set_in (inv@115@00 s@$ g0@10@00 g1@11@00 r) g1@11@00)
        (img@116@00 s@$ g0@10@00 g1@11@00 r))
      (Set_in r ($FVF.domain_next (sm@118@00 s@$ g0@10@00 g1@11@00)))))
  :pattern ((Set_in r ($FVF.domain_next (sm@118@00 s@$ g0@10@00 g1@11@00))))
  :qid |qp.fvfDomDef82|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and
        (Set_in (inv@115@00 s@$ g0@10@00 g1@11@00 r) g1@11@00)
        (img@116@00 s@$ g0@10@00 g1@11@00 r))
      (and
        (img@70@00 s@$ g0@10@00 g1@11@00 r)
        (Set_in (inv@69@00 s@$ g0@10@00 g1@11@00 r) g0@10@00)))
    (=
      ($FVF.lookup_next (sm@118@00 s@$ g0@10@00 g1@11@00) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first s@$)) r)))
  :pattern (($FVF.lookup_next (sm@118@00 s@$ g0@10@00 g1@11@00) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first s@$)) r))
  :qid |qp.fvfValDef79|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and
        (Set_in (inv@115@00 s@$ g0@10@00 g1@11@00 r) g1@11@00)
        (img@116@00 s@$ g0@10@00 g1@11@00 r))
      (and
        (img@74@00 s@$ g0@10@00 g1@11@00 r)
        (Set_in (inv@73@00 s@$ g0@10@00 g1@11@00 r) g1@11@00)))
    (=
      ($FVF.lookup_next (sm@118@00 s@$ g0@10@00 g1@11@00) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second s@$))) r)))
  :pattern (($FVF.lookup_next (sm@118@00 s@$ g0@10@00 g1@11@00) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second s@$))) r))
  :qid |qp.fvfValDef80|)))
(assert (forall ((r $Ref)) (!
  (and
    ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first s@$)) r) r)
    ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second s@$))) r) r))
  :pattern (($FVF.lookup_next (sm@118@00 s@$ g0@10@00 g1@11@00) r))
  :qid |qp.fvfResTrgDef81|)))
(assert (=>
  (Set_in v@113@00 g1@11@00)
  (and
    (Set_in v@113@00 g1@11@00)
    (forall ((r $Ref)) (!
      (=>
        (Set_in (inv@115@00 s@$ g0@10@00 g1@11@00 r) g1@11@00)
        ($FVF.loc_next ($FVF.lookup_next (sm@117@00 s@$ g0@10@00 g1@11@00) r) r))
      :pattern ((inv@115@00 s@$ g0@10@00 g1@11@00 r))
      :qid |quant-u-13739|))
    ($$%precondition ($SortWrappers.$FVF<next>To$Snap (sm@118@00 s@$ g0@10@00 g1@11@00)) g1@11@00))))
(assert (or (Set_in v@113@00 g1@11@00) (not (Set_in v@113@00 g1@11@00))))
(pop) ; 4
(pop) ; 3
; Joined path conditions
; Joined path conditions
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@70@00 s@$ g0@10@00 g1@11@00 r)
      (Set_in (inv@69@00 s@$ g0@10@00 g1@11@00 r) g0@10@00))
    (=
      ($FVF.lookup_next (sm@117@00 s@$ g0@10@00 g1@11@00) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first s@$)) r)))
  :pattern (($FVF.lookup_next (sm@117@00 s@$ g0@10@00 g1@11@00) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first s@$)) r))
  :qid |qp.fvfValDef76|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@74@00 s@$ g0@10@00 g1@11@00 r)
      (Set_in (inv@73@00 s@$ g0@10@00 g1@11@00 r) g1@11@00))
    (=
      ($FVF.lookup_next (sm@117@00 s@$ g0@10@00 g1@11@00) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second s@$))) r)))
  :pattern (($FVF.lookup_next (sm@117@00 s@$ g0@10@00 g1@11@00) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second s@$))) r))
  :qid |qp.fvfValDef77|)))
(assert (forall ((r $Ref)) (!
  (and
    ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first s@$)) r) r)
    ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second s@$))) r) r))
  :pattern (($FVF.lookup_next (sm@117@00 s@$ g0@10@00 g1@11@00) r))
  :qid |qp.fvfResTrgDef78|)))
(assert (forall ((n@114@00 $Ref)) (!
  (=>
    (Set_in n@114@00 g1@11@00)
    (and
      (= (inv@115@00 s@$ g0@10@00 g1@11@00 n@114@00) n@114@00)
      (img@116@00 s@$ g0@10@00 g1@11@00 n@114@00)))
  :pattern ((Set_in n@114@00 g1@11@00))
  :pattern ((inv@115@00 s@$ g0@10@00 g1@11@00 n@114@00))
  :pattern ((img@116@00 s@$ g0@10@00 g1@11@00 n@114@00))
  :qid |next-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@116@00 s@$ g0@10@00 g1@11@00 r)
      (Set_in (inv@115@00 s@$ g0@10@00 g1@11@00 r) g1@11@00))
    (= (inv@115@00 s@$ g0@10@00 g1@11@00 r) r))
  :pattern ((inv@115@00 s@$ g0@10@00 g1@11@00 r))
  :qid |next-fctOfInv|)))
(assert (forall ((r $Ref)) (!
  (and
    (=>
      (Set_in r ($FVF.domain_next (sm@118@00 s@$ g0@10@00 g1@11@00)))
      (and
        (Set_in (inv@115@00 s@$ g0@10@00 g1@11@00 r) g1@11@00)
        (img@116@00 s@$ g0@10@00 g1@11@00 r)))
    (=>
      (and
        (Set_in (inv@115@00 s@$ g0@10@00 g1@11@00 r) g1@11@00)
        (img@116@00 s@$ g0@10@00 g1@11@00 r))
      (Set_in r ($FVF.domain_next (sm@118@00 s@$ g0@10@00 g1@11@00)))))
  :pattern ((Set_in r ($FVF.domain_next (sm@118@00 s@$ g0@10@00 g1@11@00))))
  :qid |qp.fvfDomDef82|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and
        (Set_in (inv@115@00 s@$ g0@10@00 g1@11@00 r) g1@11@00)
        (img@116@00 s@$ g0@10@00 g1@11@00 r))
      (and
        (img@70@00 s@$ g0@10@00 g1@11@00 r)
        (Set_in (inv@69@00 s@$ g0@10@00 g1@11@00 r) g0@10@00)))
    (=
      ($FVF.lookup_next (sm@118@00 s@$ g0@10@00 g1@11@00) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first s@$)) r)))
  :pattern (($FVF.lookup_next (sm@118@00 s@$ g0@10@00 g1@11@00) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first s@$)) r))
  :qid |qp.fvfValDef79|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and
        (Set_in (inv@115@00 s@$ g0@10@00 g1@11@00 r) g1@11@00)
        (img@116@00 s@$ g0@10@00 g1@11@00 r))
      (and
        (img@74@00 s@$ g0@10@00 g1@11@00 r)
        (Set_in (inv@73@00 s@$ g0@10@00 g1@11@00 r) g1@11@00)))
    (=
      ($FVF.lookup_next (sm@118@00 s@$ g0@10@00 g1@11@00) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second s@$))) r)))
  :pattern (($FVF.lookup_next (sm@118@00 s@$ g0@10@00 g1@11@00) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second s@$))) r))
  :qid |qp.fvfValDef80|)))
(assert (forall ((r $Ref)) (!
  (and
    ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first s@$)) r) r)
    ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second s@$))) r) r))
  :pattern (($FVF.lookup_next (sm@118@00 s@$ g0@10@00 g1@11@00) r))
  :qid |qp.fvfResTrgDef81|)))
(assert (=>
  (Set_in u@112@00 g1@11@00)
  (and
    (Set_in u@112@00 g1@11@00)
    (=>
      (Set_in v@113@00 g1@11@00)
      (and
        (Set_in v@113@00 g1@11@00)
        (forall ((r $Ref)) (!
          (=>
            (Set_in (inv@115@00 s@$ g0@10@00 g1@11@00 r) g1@11@00)
            ($FVF.loc_next ($FVF.lookup_next (sm@117@00 s@$ g0@10@00 g1@11@00) r) r))
          :pattern ((inv@115@00 s@$ g0@10@00 g1@11@00 r))
          :qid |quant-u-13739|))
        ($$%precondition ($SortWrappers.$FVF<next>To$Snap (sm@118@00 s@$ g0@10@00 g1@11@00)) g1@11@00)))
    (or (Set_in v@113@00 g1@11@00) (not (Set_in v@113@00 g1@11@00))))))
(assert (or (Set_in u@112@00 g1@11@00) (not (Set_in u@112@00 g1@11@00))))
(push) ; 3
; [then-branch: 27 | u@112@00 in g1@11@00 && v@113@00 in g1@11@00 && !(exists_path[Bool]($$(sm@118@00(s@$, g0@10@00, g1@11@00), g1@11@00), u@112@00, v@113@00)) | live]
; [else-branch: 27 | !(u@112@00 in g1@11@00 && v@113@00 in g1@11@00 && !(exists_path[Bool]($$(sm@118@00(s@$, g0@10@00, g1@11@00), g1@11@00), u@112@00, v@113@00))) | live]
(push) ; 4
; [then-branch: 27 | u@112@00 in g1@11@00 && v@113@00 in g1@11@00 && !(exists_path[Bool]($$(sm@118@00(s@$, g0@10@00, g1@11@00), g1@11@00), u@112@00, v@113@00))]
(assert (and
  (Set_in u@112@00 g1@11@00)
  (and
    (Set_in v@113@00 g1@11@00)
    (not
      (exists_path<Bool> ($$ ($SortWrappers.$FVF<next>To$Snap (sm@118@00 s@$ g0@10@00 g1@11@00)) g1@11@00) u@112@00 v@113@00)))))
; [eval] !exists_path($$((g1 union g0)), u, v)
; [eval] exists_path($$((g1 union g0)), u, v)
; [eval] $$((g1 union g0))
; [eval] (g1 union g0)
(push) ; 5
(declare-const n@119@00 $Ref)
(push) ; 6
; [eval] (n in refs)
(assert (Set_in n@119@00 (Set_union g1@11@00 g0@10@00)))
(pop) ; 6
(declare-fun inv@120@00 ($Snap Set<$Ref> Set<$Ref> $Ref) $Ref)
(declare-fun img@121@00 ($Snap Set<$Ref> Set<$Ref> $Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
(declare-fun sm@122@00 ($Snap Set<$Ref> Set<$Ref>) $FVF<next>)
; Definitional axioms for snapshot map domain
; Definitional axioms for snapshot map values
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@70@00 s@$ g0@10@00 g1@11@00 r)
      (Set_in (inv@69@00 s@$ g0@10@00 g1@11@00 r) g0@10@00))
    (=
      ($FVF.lookup_next (sm@122@00 s@$ g0@10@00 g1@11@00) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first s@$)) r)))
  :pattern (($FVF.lookup_next (sm@122@00 s@$ g0@10@00 g1@11@00) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first s@$)) r))
  :qid |qp.fvfValDef83|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@74@00 s@$ g0@10@00 g1@11@00 r)
      (Set_in (inv@73@00 s@$ g0@10@00 g1@11@00 r) g1@11@00))
    (=
      ($FVF.lookup_next (sm@122@00 s@$ g0@10@00 g1@11@00) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second s@$))) r)))
  :pattern (($FVF.lookup_next (sm@122@00 s@$ g0@10@00 g1@11@00) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second s@$))) r))
  :qid |qp.fvfValDef84|)))
(assert (forall ((r $Ref)) (!
  (and
    ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first s@$)) r) r)
    ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second s@$))) r) r))
  :pattern (($FVF.lookup_next (sm@122@00 s@$ g0@10@00 g1@11@00) r))
  :qid |qp.fvfResTrgDef85|)))
; Check receiver injectivity
(push) ; 6
(assert (not (forall ((n1@119@00 $Ref) (n2@119@00 $Ref)) (!
  (=>
    (and
      (and
        (Set_in n1@119@00 (Set_union g1@11@00 g0@10@00))
        ($FVF.loc_next ($FVF.lookup_next (sm@122@00 s@$ g0@10@00 g1@11@00) n1@119@00) n1@119@00))
      (and
        (Set_in n2@119@00 (Set_union g1@11@00 g0@10@00))
        ($FVF.loc_next ($FVF.lookup_next (sm@122@00 s@$ g0@10@00 g1@11@00) n2@119@00) n2@119@00))
      (= n1@119@00 n2@119@00))
    (= n1@119@00 n2@119@00))
  
  :qid |next-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((n@119@00 $Ref)) (!
  (=>
    (Set_in n@119@00 (Set_union g1@11@00 g0@10@00))
    (and
      (= (inv@120@00 s@$ g0@10@00 g1@11@00 n@119@00) n@119@00)
      (img@121@00 s@$ g0@10@00 g1@11@00 n@119@00)))
  :pattern ((Set_in n@119@00 (Set_union g1@11@00 g0@10@00)))
  :pattern ((inv@120@00 s@$ g0@10@00 g1@11@00 n@119@00))
  :pattern ((img@121@00 s@$ g0@10@00 g1@11@00 n@119@00))
  :qid |next-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@121@00 s@$ g0@10@00 g1@11@00 r)
      (Set_in (inv@120@00 s@$ g0@10@00 g1@11@00 r) (Set_union g1@11@00 g0@10@00)))
    (= (inv@120@00 s@$ g0@10@00 g1@11@00 r) r))
  :pattern ((inv@120@00 s@$ g0@10@00 g1@11@00 r))
  :qid |next-fctOfInv|)))
(assert (forall ((r $Ref)) (!
  (=>
    (Set_in (inv@120@00 s@$ g0@10@00 g1@11@00 r) (Set_union g1@11@00 g0@10@00))
    ($FVF.loc_next ($FVF.lookup_next (sm@122@00 s@$ g0@10@00 g1@11@00) r) r))
  :pattern ((inv@120@00 s@$ g0@10@00 g1@11@00 r))
  :qid |quant-u-13742|)))
(push) ; 6
(assert (not (forall ((r $Ref)) (!
  (=>
    (and
      (Set_in (inv@120@00 s@$ g0@10@00 g1@11@00 r) (Set_union g1@11@00 g0@10@00))
      (img@121@00 s@$ g0@10@00 g1@11@00 r)
      (= r (inv@120@00 s@$ g0@10@00 g1@11@00 r)))
    (>
      (+
        (ite
          (and
            (img@70@00 s@$ g0@10@00 g1@11@00 r)
            (Set_in (inv@69@00 s@$ g0@10@00 g1@11@00 r) g0@10@00))
          $Perm.Write
          $Perm.No)
        (ite
          (and
            (img@74@00 s@$ g0@10@00 g1@11@00 r)
            (Set_in (inv@73@00 s@$ g0@10@00 g1@11@00 r) g1@11@00))
          $Perm.Write
          $Perm.No))
      $Perm.No))
  
  :qid |quant-u-13743|))))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(declare-fun sm@123@00 ($Snap Set<$Ref> Set<$Ref>) $FVF<next>)
; Definitional axioms for snapshot map domain
(assert (forall ((r $Ref)) (!
  (and
    (=>
      (Set_in r ($FVF.domain_next (sm@123@00 s@$ g0@10@00 g1@11@00)))
      (and
        (Set_in (inv@120@00 s@$ g0@10@00 g1@11@00 r) (Set_union g1@11@00 g0@10@00))
        (img@121@00 s@$ g0@10@00 g1@11@00 r)))
    (=>
      (and
        (Set_in (inv@120@00 s@$ g0@10@00 g1@11@00 r) (Set_union g1@11@00 g0@10@00))
        (img@121@00 s@$ g0@10@00 g1@11@00 r))
      (Set_in r ($FVF.domain_next (sm@123@00 s@$ g0@10@00 g1@11@00)))))
  :pattern ((Set_in r ($FVF.domain_next (sm@123@00 s@$ g0@10@00 g1@11@00))))
  :qid |qp.fvfDomDef89|)))
; Definitional axioms for snapshot map values
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and
        (Set_in (inv@120@00 s@$ g0@10@00 g1@11@00 r) (Set_union g1@11@00 g0@10@00))
        (img@121@00 s@$ g0@10@00 g1@11@00 r))
      (and
        (img@70@00 s@$ g0@10@00 g1@11@00 r)
        (Set_in (inv@69@00 s@$ g0@10@00 g1@11@00 r) g0@10@00)))
    (=
      ($FVF.lookup_next (sm@123@00 s@$ g0@10@00 g1@11@00) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first s@$)) r)))
  :pattern (($FVF.lookup_next (sm@123@00 s@$ g0@10@00 g1@11@00) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first s@$)) r))
  :qid |qp.fvfValDef86|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and
        (Set_in (inv@120@00 s@$ g0@10@00 g1@11@00 r) (Set_union g1@11@00 g0@10@00))
        (img@121@00 s@$ g0@10@00 g1@11@00 r))
      (and
        (img@74@00 s@$ g0@10@00 g1@11@00 r)
        (Set_in (inv@73@00 s@$ g0@10@00 g1@11@00 r) g1@11@00)))
    (=
      ($FVF.lookup_next (sm@123@00 s@$ g0@10@00 g1@11@00) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second s@$))) r)))
  :pattern (($FVF.lookup_next (sm@123@00 s@$ g0@10@00 g1@11@00) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second s@$))) r))
  :qid |qp.fvfValDef87|)))
(assert (forall ((r $Ref)) (!
  (and
    ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first s@$)) r) r)
    ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second s@$))) r) r))
  :pattern (($FVF.lookup_next (sm@123@00 s@$ g0@10@00 g1@11@00) r))
  :qid |qp.fvfResTrgDef88|)))
(assert ($$%precondition ($SortWrappers.$FVF<next>To$Snap (sm@123@00 s@$ g0@10@00 g1@11@00)) (Set_union g1@11@00 g0@10@00)))
(pop) ; 5
; Joined path conditions
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@70@00 s@$ g0@10@00 g1@11@00 r)
      (Set_in (inv@69@00 s@$ g0@10@00 g1@11@00 r) g0@10@00))
    (=
      ($FVF.lookup_next (sm@122@00 s@$ g0@10@00 g1@11@00) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first s@$)) r)))
  :pattern (($FVF.lookup_next (sm@122@00 s@$ g0@10@00 g1@11@00) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first s@$)) r))
  :qid |qp.fvfValDef83|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@74@00 s@$ g0@10@00 g1@11@00 r)
      (Set_in (inv@73@00 s@$ g0@10@00 g1@11@00 r) g1@11@00))
    (=
      ($FVF.lookup_next (sm@122@00 s@$ g0@10@00 g1@11@00) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second s@$))) r)))
  :pattern (($FVF.lookup_next (sm@122@00 s@$ g0@10@00 g1@11@00) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second s@$))) r))
  :qid |qp.fvfValDef84|)))
(assert (forall ((r $Ref)) (!
  (and
    ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first s@$)) r) r)
    ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second s@$))) r) r))
  :pattern (($FVF.lookup_next (sm@122@00 s@$ g0@10@00 g1@11@00) r))
  :qid |qp.fvfResTrgDef85|)))
(assert (forall ((n@119@00 $Ref)) (!
  (=>
    (Set_in n@119@00 (Set_union g1@11@00 g0@10@00))
    (and
      (= (inv@120@00 s@$ g0@10@00 g1@11@00 n@119@00) n@119@00)
      (img@121@00 s@$ g0@10@00 g1@11@00 n@119@00)))
  :pattern ((Set_in n@119@00 (Set_union g1@11@00 g0@10@00)))
  :pattern ((inv@120@00 s@$ g0@10@00 g1@11@00 n@119@00))
  :pattern ((img@121@00 s@$ g0@10@00 g1@11@00 n@119@00))
  :qid |next-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@121@00 s@$ g0@10@00 g1@11@00 r)
      (Set_in (inv@120@00 s@$ g0@10@00 g1@11@00 r) (Set_union g1@11@00 g0@10@00)))
    (= (inv@120@00 s@$ g0@10@00 g1@11@00 r) r))
  :pattern ((inv@120@00 s@$ g0@10@00 g1@11@00 r))
  :qid |next-fctOfInv|)))
(assert (forall ((r $Ref)) (!
  (and
    (=>
      (Set_in r ($FVF.domain_next (sm@123@00 s@$ g0@10@00 g1@11@00)))
      (and
        (Set_in (inv@120@00 s@$ g0@10@00 g1@11@00 r) (Set_union g1@11@00 g0@10@00))
        (img@121@00 s@$ g0@10@00 g1@11@00 r)))
    (=>
      (and
        (Set_in (inv@120@00 s@$ g0@10@00 g1@11@00 r) (Set_union g1@11@00 g0@10@00))
        (img@121@00 s@$ g0@10@00 g1@11@00 r))
      (Set_in r ($FVF.domain_next (sm@123@00 s@$ g0@10@00 g1@11@00)))))
  :pattern ((Set_in r ($FVF.domain_next (sm@123@00 s@$ g0@10@00 g1@11@00))))
  :qid |qp.fvfDomDef89|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and
        (Set_in (inv@120@00 s@$ g0@10@00 g1@11@00 r) (Set_union g1@11@00 g0@10@00))
        (img@121@00 s@$ g0@10@00 g1@11@00 r))
      (and
        (img@70@00 s@$ g0@10@00 g1@11@00 r)
        (Set_in (inv@69@00 s@$ g0@10@00 g1@11@00 r) g0@10@00)))
    (=
      ($FVF.lookup_next (sm@123@00 s@$ g0@10@00 g1@11@00) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first s@$)) r)))
  :pattern (($FVF.lookup_next (sm@123@00 s@$ g0@10@00 g1@11@00) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first s@$)) r))
  :qid |qp.fvfValDef86|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and
        (Set_in (inv@120@00 s@$ g0@10@00 g1@11@00 r) (Set_union g1@11@00 g0@10@00))
        (img@121@00 s@$ g0@10@00 g1@11@00 r))
      (and
        (img@74@00 s@$ g0@10@00 g1@11@00 r)
        (Set_in (inv@73@00 s@$ g0@10@00 g1@11@00 r) g1@11@00)))
    (=
      ($FVF.lookup_next (sm@123@00 s@$ g0@10@00 g1@11@00) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second s@$))) r)))
  :pattern (($FVF.lookup_next (sm@123@00 s@$ g0@10@00 g1@11@00) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second s@$))) r))
  :qid |qp.fvfValDef87|)))
(assert (forall ((r $Ref)) (!
  (and
    ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first s@$)) r) r)
    ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second s@$))) r) r))
  :pattern (($FVF.lookup_next (sm@123@00 s@$ g0@10@00 g1@11@00) r))
  :qid |qp.fvfResTrgDef88|)))
(assert (and
  (forall ((r $Ref)) (!
    (=>
      (Set_in (inv@120@00 s@$ g0@10@00 g1@11@00 r) (Set_union g1@11@00 g0@10@00))
      ($FVF.loc_next ($FVF.lookup_next (sm@122@00 s@$ g0@10@00 g1@11@00) r) r))
    :pattern ((inv@120@00 s@$ g0@10@00 g1@11@00 r))
    :qid |quant-u-13742|))
  ($$%precondition ($SortWrappers.$FVF<next>To$Snap (sm@123@00 s@$ g0@10@00 g1@11@00)) (Set_union g1@11@00 g0@10@00))))
(pop) ; 4
(push) ; 4
; [else-branch: 27 | !(u@112@00 in g1@11@00 && v@113@00 in g1@11@00 && !(exists_path[Bool]($$(sm@118@00(s@$, g0@10@00, g1@11@00), g1@11@00), u@112@00, v@113@00)))]
(assert (not
  (and
    (Set_in u@112@00 g1@11@00)
    (and
      (Set_in v@113@00 g1@11@00)
      (not
        (exists_path<Bool> ($$ ($SortWrappers.$FVF<next>To$Snap (sm@118@00 s@$ g0@10@00 g1@11@00)) g1@11@00) u@112@00 v@113@00))))))
(pop) ; 4
(pop) ; 3
; Joined path conditions
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@70@00 s@$ g0@10@00 g1@11@00 r)
      (Set_in (inv@69@00 s@$ g0@10@00 g1@11@00 r) g0@10@00))
    (=
      ($FVF.lookup_next (sm@122@00 s@$ g0@10@00 g1@11@00) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first s@$)) r)))
  :pattern (($FVF.lookup_next (sm@122@00 s@$ g0@10@00 g1@11@00) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first s@$)) r))
  :qid |qp.fvfValDef83|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@74@00 s@$ g0@10@00 g1@11@00 r)
      (Set_in (inv@73@00 s@$ g0@10@00 g1@11@00 r) g1@11@00))
    (=
      ($FVF.lookup_next (sm@122@00 s@$ g0@10@00 g1@11@00) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second s@$))) r)))
  :pattern (($FVF.lookup_next (sm@122@00 s@$ g0@10@00 g1@11@00) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second s@$))) r))
  :qid |qp.fvfValDef84|)))
(assert (forall ((r $Ref)) (!
  (and
    ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first s@$)) r) r)
    ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second s@$))) r) r))
  :pattern (($FVF.lookup_next (sm@122@00 s@$ g0@10@00 g1@11@00) r))
  :qid |qp.fvfResTrgDef85|)))
(assert (forall ((n@119@00 $Ref)) (!
  (=>
    (Set_in n@119@00 (Set_union g1@11@00 g0@10@00))
    (and
      (= (inv@120@00 s@$ g0@10@00 g1@11@00 n@119@00) n@119@00)
      (img@121@00 s@$ g0@10@00 g1@11@00 n@119@00)))
  :pattern ((Set_in n@119@00 (Set_union g1@11@00 g0@10@00)))
  :pattern ((inv@120@00 s@$ g0@10@00 g1@11@00 n@119@00))
  :pattern ((img@121@00 s@$ g0@10@00 g1@11@00 n@119@00))
  :qid |next-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@121@00 s@$ g0@10@00 g1@11@00 r)
      (Set_in (inv@120@00 s@$ g0@10@00 g1@11@00 r) (Set_union g1@11@00 g0@10@00)))
    (= (inv@120@00 s@$ g0@10@00 g1@11@00 r) r))
  :pattern ((inv@120@00 s@$ g0@10@00 g1@11@00 r))
  :qid |next-fctOfInv|)))
(assert (forall ((r $Ref)) (!
  (and
    (=>
      (Set_in r ($FVF.domain_next (sm@123@00 s@$ g0@10@00 g1@11@00)))
      (and
        (Set_in (inv@120@00 s@$ g0@10@00 g1@11@00 r) (Set_union g1@11@00 g0@10@00))
        (img@121@00 s@$ g0@10@00 g1@11@00 r)))
    (=>
      (and
        (Set_in (inv@120@00 s@$ g0@10@00 g1@11@00 r) (Set_union g1@11@00 g0@10@00))
        (img@121@00 s@$ g0@10@00 g1@11@00 r))
      (Set_in r ($FVF.domain_next (sm@123@00 s@$ g0@10@00 g1@11@00)))))
  :pattern ((Set_in r ($FVF.domain_next (sm@123@00 s@$ g0@10@00 g1@11@00))))
  :qid |qp.fvfDomDef89|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and
        (Set_in (inv@120@00 s@$ g0@10@00 g1@11@00 r) (Set_union g1@11@00 g0@10@00))
        (img@121@00 s@$ g0@10@00 g1@11@00 r))
      (and
        (img@70@00 s@$ g0@10@00 g1@11@00 r)
        (Set_in (inv@69@00 s@$ g0@10@00 g1@11@00 r) g0@10@00)))
    (=
      ($FVF.lookup_next (sm@123@00 s@$ g0@10@00 g1@11@00) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first s@$)) r)))
  :pattern (($FVF.lookup_next (sm@123@00 s@$ g0@10@00 g1@11@00) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first s@$)) r))
  :qid |qp.fvfValDef86|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and
        (Set_in (inv@120@00 s@$ g0@10@00 g1@11@00 r) (Set_union g1@11@00 g0@10@00))
        (img@121@00 s@$ g0@10@00 g1@11@00 r))
      (and
        (img@74@00 s@$ g0@10@00 g1@11@00 r)
        (Set_in (inv@73@00 s@$ g0@10@00 g1@11@00 r) g1@11@00)))
    (=
      ($FVF.lookup_next (sm@123@00 s@$ g0@10@00 g1@11@00) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second s@$))) r)))
  :pattern (($FVF.lookup_next (sm@123@00 s@$ g0@10@00 g1@11@00) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second s@$))) r))
  :qid |qp.fvfValDef87|)))
(assert (forall ((r $Ref)) (!
  (and
    ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first s@$)) r) r)
    ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second s@$))) r) r))
  :pattern (($FVF.lookup_next (sm@123@00 s@$ g0@10@00 g1@11@00) r))
  :qid |qp.fvfResTrgDef88|)))
(assert (=>
  (and
    (Set_in u@112@00 g1@11@00)
    (and
      (Set_in v@113@00 g1@11@00)
      (not
        (exists_path<Bool> ($$ ($SortWrappers.$FVF<next>To$Snap (sm@118@00 s@$ g0@10@00 g1@11@00)) g1@11@00) u@112@00 v@113@00))))
  (and
    (Set_in u@112@00 g1@11@00)
    (Set_in v@113@00 g1@11@00)
    (not
      (exists_path<Bool> ($$ ($SortWrappers.$FVF<next>To$Snap (sm@118@00 s@$ g0@10@00 g1@11@00)) g1@11@00) u@112@00 v@113@00))
    (forall ((r $Ref)) (!
      (=>
        (Set_in (inv@120@00 s@$ g0@10@00 g1@11@00 r) (Set_union g1@11@00 g0@10@00))
        ($FVF.loc_next ($FVF.lookup_next (sm@122@00 s@$ g0@10@00 g1@11@00) r) r))
      :pattern ((inv@120@00 s@$ g0@10@00 g1@11@00 r))
      :qid |quant-u-13742|))
    ($$%precondition ($SortWrappers.$FVF<next>To$Snap (sm@123@00 s@$ g0@10@00 g1@11@00)) (Set_union g1@11@00 g0@10@00)))))
; Joined path conditions
(assert (or
  (not
    (and
      (Set_in u@112@00 g1@11@00)
      (and
        (Set_in v@113@00 g1@11@00)
        (not
          (exists_path<Bool> ($$ ($SortWrappers.$FVF<next>To$Snap (sm@118@00 s@$ g0@10@00 g1@11@00)) g1@11@00) u@112@00 v@113@00)))))
  (and
    (Set_in u@112@00 g1@11@00)
    (and
      (Set_in v@113@00 g1@11@00)
      (not
        (exists_path<Bool> ($$ ($SortWrappers.$FVF<next>To$Snap (sm@118@00 s@$ g0@10@00 g1@11@00)) g1@11@00) u@112@00 v@113@00))))))
(pop) ; 2
; Nested auxiliary terms: globals (aux)
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@70@00 s@$ g0@10@00 g1@11@00 r)
      (Set_in (inv@69@00 s@$ g0@10@00 g1@11@00 r) g0@10@00))
    (=
      ($FVF.lookup_next (sm@117@00 s@$ g0@10@00 g1@11@00) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first s@$)) r)))
  :pattern (($FVF.lookup_next (sm@117@00 s@$ g0@10@00 g1@11@00) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first s@$)) r))
  :qid |qp.fvfValDef76|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@74@00 s@$ g0@10@00 g1@11@00 r)
      (Set_in (inv@73@00 s@$ g0@10@00 g1@11@00 r) g1@11@00))
    (=
      ($FVF.lookup_next (sm@117@00 s@$ g0@10@00 g1@11@00) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second s@$))) r)))
  :pattern (($FVF.lookup_next (sm@117@00 s@$ g0@10@00 g1@11@00) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second s@$))) r))
  :qid |qp.fvfValDef77|)))
(assert (forall ((r $Ref)) (!
  (and
    ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first s@$)) r) r)
    ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second s@$))) r) r))
  :pattern (($FVF.lookup_next (sm@117@00 s@$ g0@10@00 g1@11@00) r))
  :qid |qp.fvfResTrgDef78|)))
(assert (forall ((n@114@00 $Ref)) (!
  (=>
    (Set_in n@114@00 g1@11@00)
    (and
      (= (inv@115@00 s@$ g0@10@00 g1@11@00 n@114@00) n@114@00)
      (img@116@00 s@$ g0@10@00 g1@11@00 n@114@00)))
  :pattern ((Set_in n@114@00 g1@11@00))
  :pattern ((inv@115@00 s@$ g0@10@00 g1@11@00 n@114@00))
  :pattern ((img@116@00 s@$ g0@10@00 g1@11@00 n@114@00))
  :qid |next-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@116@00 s@$ g0@10@00 g1@11@00 r)
      (Set_in (inv@115@00 s@$ g0@10@00 g1@11@00 r) g1@11@00))
    (= (inv@115@00 s@$ g0@10@00 g1@11@00 r) r))
  :pattern ((inv@115@00 s@$ g0@10@00 g1@11@00 r))
  :qid |next-fctOfInv|)))
(assert (forall ((r $Ref)) (!
  (and
    (=>
      (Set_in r ($FVF.domain_next (sm@118@00 s@$ g0@10@00 g1@11@00)))
      (and
        (Set_in (inv@115@00 s@$ g0@10@00 g1@11@00 r) g1@11@00)
        (img@116@00 s@$ g0@10@00 g1@11@00 r)))
    (=>
      (and
        (Set_in (inv@115@00 s@$ g0@10@00 g1@11@00 r) g1@11@00)
        (img@116@00 s@$ g0@10@00 g1@11@00 r))
      (Set_in r ($FVF.domain_next (sm@118@00 s@$ g0@10@00 g1@11@00)))))
  :pattern ((Set_in r ($FVF.domain_next (sm@118@00 s@$ g0@10@00 g1@11@00))))
  :qid |qp.fvfDomDef82|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and
        (Set_in (inv@115@00 s@$ g0@10@00 g1@11@00 r) g1@11@00)
        (img@116@00 s@$ g0@10@00 g1@11@00 r))
      (and
        (img@70@00 s@$ g0@10@00 g1@11@00 r)
        (Set_in (inv@69@00 s@$ g0@10@00 g1@11@00 r) g0@10@00)))
    (=
      ($FVF.lookup_next (sm@118@00 s@$ g0@10@00 g1@11@00) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first s@$)) r)))
  :pattern (($FVF.lookup_next (sm@118@00 s@$ g0@10@00 g1@11@00) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first s@$)) r))
  :qid |qp.fvfValDef79|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and
        (Set_in (inv@115@00 s@$ g0@10@00 g1@11@00 r) g1@11@00)
        (img@116@00 s@$ g0@10@00 g1@11@00 r))
      (and
        (img@74@00 s@$ g0@10@00 g1@11@00 r)
        (Set_in (inv@73@00 s@$ g0@10@00 g1@11@00 r) g1@11@00)))
    (=
      ($FVF.lookup_next (sm@118@00 s@$ g0@10@00 g1@11@00) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second s@$))) r)))
  :pattern (($FVF.lookup_next (sm@118@00 s@$ g0@10@00 g1@11@00) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second s@$))) r))
  :qid |qp.fvfValDef80|)))
(assert (forall ((r $Ref)) (!
  (and
    ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first s@$)) r) r)
    ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second s@$))) r) r))
  :pattern (($FVF.lookup_next (sm@118@00 s@$ g0@10@00 g1@11@00) r))
  :qid |qp.fvfResTrgDef81|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@70@00 s@$ g0@10@00 g1@11@00 r)
      (Set_in (inv@69@00 s@$ g0@10@00 g1@11@00 r) g0@10@00))
    (=
      ($FVF.lookup_next (sm@122@00 s@$ g0@10@00 g1@11@00) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first s@$)) r)))
  :pattern (($FVF.lookup_next (sm@122@00 s@$ g0@10@00 g1@11@00) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first s@$)) r))
  :qid |qp.fvfValDef83|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@74@00 s@$ g0@10@00 g1@11@00 r)
      (Set_in (inv@73@00 s@$ g0@10@00 g1@11@00 r) g1@11@00))
    (=
      ($FVF.lookup_next (sm@122@00 s@$ g0@10@00 g1@11@00) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second s@$))) r)))
  :pattern (($FVF.lookup_next (sm@122@00 s@$ g0@10@00 g1@11@00) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second s@$))) r))
  :qid |qp.fvfValDef84|)))
(assert (forall ((r $Ref)) (!
  (and
    ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first s@$)) r) r)
    ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second s@$))) r) r))
  :pattern (($FVF.lookup_next (sm@122@00 s@$ g0@10@00 g1@11@00) r))
  :qid |qp.fvfResTrgDef85|)))
(assert (forall ((n@119@00 $Ref)) (!
  (=>
    (Set_in n@119@00 (Set_union g1@11@00 g0@10@00))
    (and
      (= (inv@120@00 s@$ g0@10@00 g1@11@00 n@119@00) n@119@00)
      (img@121@00 s@$ g0@10@00 g1@11@00 n@119@00)))
  :pattern ((Set_in n@119@00 (Set_union g1@11@00 g0@10@00)))
  :pattern ((inv@120@00 s@$ g0@10@00 g1@11@00 n@119@00))
  :pattern ((img@121@00 s@$ g0@10@00 g1@11@00 n@119@00))
  :qid |next-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@121@00 s@$ g0@10@00 g1@11@00 r)
      (Set_in (inv@120@00 s@$ g0@10@00 g1@11@00 r) (Set_union g1@11@00 g0@10@00)))
    (= (inv@120@00 s@$ g0@10@00 g1@11@00 r) r))
  :pattern ((inv@120@00 s@$ g0@10@00 g1@11@00 r))
  :qid |next-fctOfInv|)))
(assert (forall ((r $Ref)) (!
  (and
    (=>
      (Set_in r ($FVF.domain_next (sm@123@00 s@$ g0@10@00 g1@11@00)))
      (and
        (Set_in (inv@120@00 s@$ g0@10@00 g1@11@00 r) (Set_union g1@11@00 g0@10@00))
        (img@121@00 s@$ g0@10@00 g1@11@00 r)))
    (=>
      (and
        (Set_in (inv@120@00 s@$ g0@10@00 g1@11@00 r) (Set_union g1@11@00 g0@10@00))
        (img@121@00 s@$ g0@10@00 g1@11@00 r))
      (Set_in r ($FVF.domain_next (sm@123@00 s@$ g0@10@00 g1@11@00)))))
  :pattern ((Set_in r ($FVF.domain_next (sm@123@00 s@$ g0@10@00 g1@11@00))))
  :qid |qp.fvfDomDef89|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and
        (Set_in (inv@120@00 s@$ g0@10@00 g1@11@00 r) (Set_union g1@11@00 g0@10@00))
        (img@121@00 s@$ g0@10@00 g1@11@00 r))
      (and
        (img@70@00 s@$ g0@10@00 g1@11@00 r)
        (Set_in (inv@69@00 s@$ g0@10@00 g1@11@00 r) g0@10@00)))
    (=
      ($FVF.lookup_next (sm@123@00 s@$ g0@10@00 g1@11@00) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first s@$)) r)))
  :pattern (($FVF.lookup_next (sm@123@00 s@$ g0@10@00 g1@11@00) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first s@$)) r))
  :qid |qp.fvfValDef86|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and
        (Set_in (inv@120@00 s@$ g0@10@00 g1@11@00 r) (Set_union g1@11@00 g0@10@00))
        (img@121@00 s@$ g0@10@00 g1@11@00 r))
      (and
        (img@74@00 s@$ g0@10@00 g1@11@00 r)
        (Set_in (inv@73@00 s@$ g0@10@00 g1@11@00 r) g1@11@00)))
    (=
      ($FVF.lookup_next (sm@123@00 s@$ g0@10@00 g1@11@00) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second s@$))) r)))
  :pattern (($FVF.lookup_next (sm@123@00 s@$ g0@10@00 g1@11@00) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second s@$))) r))
  :qid |qp.fvfValDef87|)))
(assert (forall ((r $Ref)) (!
  (and
    ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first s@$)) r) r)
    ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second s@$))) r) r))
  :pattern (($FVF.lookup_next (sm@123@00 s@$ g0@10@00 g1@11@00) r))
  :qid |qp.fvfResTrgDef88|)))
; Nested auxiliary terms: non-globals (aux)
(assert (forall ((u@112@00 $Ref) (v@113@00 $Ref)) (!
  (and
    (=>
      (Set_in u@112@00 g1@11@00)
      (and
        (Set_in u@112@00 g1@11@00)
        (=>
          (Set_in v@113@00 g1@11@00)
          (and
            (Set_in v@113@00 g1@11@00)
            (forall ((r $Ref)) (!
              (=>
                (Set_in (inv@115@00 s@$ g0@10@00 g1@11@00 r) g1@11@00)
                ($FVF.loc_next ($FVF.lookup_next (sm@117@00 s@$ g0@10@00 g1@11@00) r) r))
              :pattern ((inv@115@00 s@$ g0@10@00 g1@11@00 r))
              :qid |quant-u-13739|))
            ($$%precondition ($SortWrappers.$FVF<next>To$Snap (sm@118@00 s@$ g0@10@00 g1@11@00)) g1@11@00)))
        (or (Set_in v@113@00 g1@11@00) (not (Set_in v@113@00 g1@11@00)))))
    (or (Set_in u@112@00 g1@11@00) (not (Set_in u@112@00 g1@11@00)))
    (=>
      (and
        (Set_in u@112@00 g1@11@00)
        (and
          (Set_in v@113@00 g1@11@00)
          (not
            (exists_path<Bool> ($$ ($SortWrappers.$FVF<next>To$Snap (sm@118@00 s@$ g0@10@00 g1@11@00)) g1@11@00) u@112@00 v@113@00))))
      (and
        (Set_in u@112@00 g1@11@00)
        (Set_in v@113@00 g1@11@00)
        (not
          (exists_path<Bool> ($$ ($SortWrappers.$FVF<next>To$Snap (sm@118@00 s@$ g0@10@00 g1@11@00)) g1@11@00) u@112@00 v@113@00))
        (forall ((r $Ref)) (!
          (=>
            (Set_in (inv@120@00 s@$ g0@10@00 g1@11@00 r) (Set_union g1@11@00 g0@10@00))
            ($FVF.loc_next ($FVF.lookup_next (sm@122@00 s@$ g0@10@00 g1@11@00) r) r))
          :pattern ((inv@120@00 s@$ g0@10@00 g1@11@00 r))
          :qid |quant-u-13742|))
        ($$%precondition ($SortWrappers.$FVF<next>To$Snap (sm@123@00 s@$ g0@10@00 g1@11@00)) (Set_union g1@11@00 g0@10@00))))
    (or
      (not
        (and
          (Set_in u@112@00 g1@11@00)
          (and
            (Set_in v@113@00 g1@11@00)
            (not
              (exists_path<Bool> ($$ ($SortWrappers.$FVF<next>To$Snap (sm@118@00 s@$ g0@10@00 g1@11@00)) g1@11@00) u@112@00 v@113@00)))))
      (and
        (Set_in u@112@00 g1@11@00)
        (and
          (Set_in v@113@00 g1@11@00)
          (not
            (exists_path<Bool> ($$ ($SortWrappers.$FVF<next>To$Snap (sm@118@00 s@$ g0@10@00 g1@11@00)) g1@11@00) u@112@00 v@113@00))))))
  :pattern ((Set_in u@112@00 g1@11@00) (Set_in v@113@00 g1@11@00))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/graphs/static/tests/lists/framing1.vpr@298@13@298@120-aux|)))
(assert (forall ((u@112@00 $Ref) (v@113@00 $Ref)) (!
  (and
    (=>
      (Set_in u@112@00 g1@11@00)
      (and
        (Set_in u@112@00 g1@11@00)
        (=>
          (Set_in v@113@00 g1@11@00)
          (and
            (Set_in v@113@00 g1@11@00)
            (forall ((r $Ref)) (!
              (=>
                (Set_in (inv@115@00 s@$ g0@10@00 g1@11@00 r) g1@11@00)
                ($FVF.loc_next ($FVF.lookup_next (sm@117@00 s@$ g0@10@00 g1@11@00) r) r))
              :pattern ((inv@115@00 s@$ g0@10@00 g1@11@00 r))
              :qid |quant-u-13739|))
            ($$%precondition ($SortWrappers.$FVF<next>To$Snap (sm@118@00 s@$ g0@10@00 g1@11@00)) g1@11@00)))
        (or (Set_in v@113@00 g1@11@00) (not (Set_in v@113@00 g1@11@00)))))
    (or (Set_in u@112@00 g1@11@00) (not (Set_in u@112@00 g1@11@00)))
    (=>
      (and
        (Set_in u@112@00 g1@11@00)
        (and
          (Set_in v@113@00 g1@11@00)
          (not
            (exists_path<Bool> ($$ ($SortWrappers.$FVF<next>To$Snap (sm@118@00 s@$ g0@10@00 g1@11@00)) g1@11@00) u@112@00 v@113@00))))
      (and
        (Set_in u@112@00 g1@11@00)
        (Set_in v@113@00 g1@11@00)
        (not
          (exists_path<Bool> ($$ ($SortWrappers.$FVF<next>To$Snap (sm@118@00 s@$ g0@10@00 g1@11@00)) g1@11@00) u@112@00 v@113@00))
        (forall ((r $Ref)) (!
          (=>
            (Set_in (inv@120@00 s@$ g0@10@00 g1@11@00 r) (Set_union g1@11@00 g0@10@00))
            ($FVF.loc_next ($FVF.lookup_next (sm@122@00 s@$ g0@10@00 g1@11@00) r) r))
          :pattern ((inv@120@00 s@$ g0@10@00 g1@11@00 r))
          :qid |quant-u-13742|))
        ($$%precondition ($SortWrappers.$FVF<next>To$Snap (sm@123@00 s@$ g0@10@00 g1@11@00)) (Set_union g1@11@00 g0@10@00))))
    (or
      (not
        (and
          (Set_in u@112@00 g1@11@00)
          (and
            (Set_in v@113@00 g1@11@00)
            (not
              (exists_path<Bool> ($$ ($SortWrappers.$FVF<next>To$Snap (sm@118@00 s@$ g0@10@00 g1@11@00)) g1@11@00) u@112@00 v@113@00)))))
      (and
        (Set_in u@112@00 g1@11@00)
        (and
          (Set_in v@113@00 g1@11@00)
          (not
            (exists_path<Bool> ($$ ($SortWrappers.$FVF<next>To$Snap (sm@118@00 s@$ g0@10@00 g1@11@00)) g1@11@00) u@112@00 v@113@00))))))
  :pattern ((Set_in u@112@00 g1@11@00) (exists_path<Bool> ($$ ($SortWrappers.$FVF<next>To$Snap (sm@118@00 s@$ g0@10@00 g1@11@00)) g1@11@00) u@112@00 v@113@00))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/graphs/static/tests/lists/framing1.vpr@298@13@298@120-aux|)))
(assert (forall ((u@112@00 $Ref) (v@113@00 $Ref)) (!
  (and
    (=>
      (Set_in u@112@00 g1@11@00)
      (and
        (Set_in u@112@00 g1@11@00)
        (=>
          (Set_in v@113@00 g1@11@00)
          (and
            (Set_in v@113@00 g1@11@00)
            (forall ((r $Ref)) (!
              (=>
                (Set_in (inv@115@00 s@$ g0@10@00 g1@11@00 r) g1@11@00)
                ($FVF.loc_next ($FVF.lookup_next (sm@117@00 s@$ g0@10@00 g1@11@00) r) r))
              :pattern ((inv@115@00 s@$ g0@10@00 g1@11@00 r))
              :qid |quant-u-13739|))
            ($$%precondition ($SortWrappers.$FVF<next>To$Snap (sm@118@00 s@$ g0@10@00 g1@11@00)) g1@11@00)))
        (or (Set_in v@113@00 g1@11@00) (not (Set_in v@113@00 g1@11@00)))))
    (or (Set_in u@112@00 g1@11@00) (not (Set_in u@112@00 g1@11@00)))
    (=>
      (and
        (Set_in u@112@00 g1@11@00)
        (and
          (Set_in v@113@00 g1@11@00)
          (not
            (exists_path<Bool> ($$ ($SortWrappers.$FVF<next>To$Snap (sm@118@00 s@$ g0@10@00 g1@11@00)) g1@11@00) u@112@00 v@113@00))))
      (and
        (Set_in u@112@00 g1@11@00)
        (Set_in v@113@00 g1@11@00)
        (not
          (exists_path<Bool> ($$ ($SortWrappers.$FVF<next>To$Snap (sm@118@00 s@$ g0@10@00 g1@11@00)) g1@11@00) u@112@00 v@113@00))
        (forall ((r $Ref)) (!
          (=>
            (Set_in (inv@120@00 s@$ g0@10@00 g1@11@00 r) (Set_union g1@11@00 g0@10@00))
            ($FVF.loc_next ($FVF.lookup_next (sm@122@00 s@$ g0@10@00 g1@11@00) r) r))
          :pattern ((inv@120@00 s@$ g0@10@00 g1@11@00 r))
          :qid |quant-u-13742|))
        ($$%precondition ($SortWrappers.$FVF<next>To$Snap (sm@123@00 s@$ g0@10@00 g1@11@00)) (Set_union g1@11@00 g0@10@00))))
    (or
      (not
        (and
          (Set_in u@112@00 g1@11@00)
          (and
            (Set_in v@113@00 g1@11@00)
            (not
              (exists_path<Bool> ($$ ($SortWrappers.$FVF<next>To$Snap (sm@118@00 s@$ g0@10@00 g1@11@00)) g1@11@00) u@112@00 v@113@00)))))
      (and
        (Set_in u@112@00 g1@11@00)
        (and
          (Set_in v@113@00 g1@11@00)
          (not
            (exists_path<Bool> ($$ ($SortWrappers.$FVF<next>To$Snap (sm@118@00 s@$ g0@10@00 g1@11@00)) g1@11@00) u@112@00 v@113@00))))))
  :pattern ((Set_in u@112@00 g1@11@00) (exists_path<Bool> ($$ ($SortWrappers.$FVF<next>To$Snap (sm@123@00 s@$ g0@10@00 g1@11@00)) (Set_union g1@11@00 g0@10@00)) u@112@00 v@113@00))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/graphs/static/tests/lists/framing1.vpr@298@13@298@120-aux|)))
(assert (forall ((u@112@00 $Ref) (v@113@00 $Ref)) (!
  (and
    (=>
      (Set_in u@112@00 g1@11@00)
      (and
        (Set_in u@112@00 g1@11@00)
        (=>
          (Set_in v@113@00 g1@11@00)
          (and
            (Set_in v@113@00 g1@11@00)
            (forall ((r $Ref)) (!
              (=>
                (Set_in (inv@115@00 s@$ g0@10@00 g1@11@00 r) g1@11@00)
                ($FVF.loc_next ($FVF.lookup_next (sm@117@00 s@$ g0@10@00 g1@11@00) r) r))
              :pattern ((inv@115@00 s@$ g0@10@00 g1@11@00 r))
              :qid |quant-u-13739|))
            ($$%precondition ($SortWrappers.$FVF<next>To$Snap (sm@118@00 s@$ g0@10@00 g1@11@00)) g1@11@00)))
        (or (Set_in v@113@00 g1@11@00) (not (Set_in v@113@00 g1@11@00)))))
    (or (Set_in u@112@00 g1@11@00) (not (Set_in u@112@00 g1@11@00)))
    (=>
      (and
        (Set_in u@112@00 g1@11@00)
        (and
          (Set_in v@113@00 g1@11@00)
          (not
            (exists_path<Bool> ($$ ($SortWrappers.$FVF<next>To$Snap (sm@118@00 s@$ g0@10@00 g1@11@00)) g1@11@00) u@112@00 v@113@00))))
      (and
        (Set_in u@112@00 g1@11@00)
        (Set_in v@113@00 g1@11@00)
        (not
          (exists_path<Bool> ($$ ($SortWrappers.$FVF<next>To$Snap (sm@118@00 s@$ g0@10@00 g1@11@00)) g1@11@00) u@112@00 v@113@00))
        (forall ((r $Ref)) (!
          (=>
            (Set_in (inv@120@00 s@$ g0@10@00 g1@11@00 r) (Set_union g1@11@00 g0@10@00))
            ($FVF.loc_next ($FVF.lookup_next (sm@122@00 s@$ g0@10@00 g1@11@00) r) r))
          :pattern ((inv@120@00 s@$ g0@10@00 g1@11@00 r))
          :qid |quant-u-13742|))
        ($$%precondition ($SortWrappers.$FVF<next>To$Snap (sm@123@00 s@$ g0@10@00 g1@11@00)) (Set_union g1@11@00 g0@10@00))))
    (or
      (not
        (and
          (Set_in u@112@00 g1@11@00)
          (and
            (Set_in v@113@00 g1@11@00)
            (not
              (exists_path<Bool> ($$ ($SortWrappers.$FVF<next>To$Snap (sm@118@00 s@$ g0@10@00 g1@11@00)) g1@11@00) u@112@00 v@113@00)))))
      (and
        (Set_in u@112@00 g1@11@00)
        (and
          (Set_in v@113@00 g1@11@00)
          (not
            (exists_path<Bool> ($$ ($SortWrappers.$FVF<next>To$Snap (sm@118@00 s@$ g0@10@00 g1@11@00)) g1@11@00) u@112@00 v@113@00))))))
  :pattern ((Set_in v@113@00 g1@11@00) (exists_path<Bool> ($$ ($SortWrappers.$FVF<next>To$Snap (sm@118@00 s@$ g0@10@00 g1@11@00)) g1@11@00) u@112@00 v@113@00))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/graphs/static/tests/lists/framing1.vpr@298@13@298@120-aux|)))
(assert (forall ((u@112@00 $Ref) (v@113@00 $Ref)) (!
  (and
    (=>
      (Set_in u@112@00 g1@11@00)
      (and
        (Set_in u@112@00 g1@11@00)
        (=>
          (Set_in v@113@00 g1@11@00)
          (and
            (Set_in v@113@00 g1@11@00)
            (forall ((r $Ref)) (!
              (=>
                (Set_in (inv@115@00 s@$ g0@10@00 g1@11@00 r) g1@11@00)
                ($FVF.loc_next ($FVF.lookup_next (sm@117@00 s@$ g0@10@00 g1@11@00) r) r))
              :pattern ((inv@115@00 s@$ g0@10@00 g1@11@00 r))
              :qid |quant-u-13739|))
            ($$%precondition ($SortWrappers.$FVF<next>To$Snap (sm@118@00 s@$ g0@10@00 g1@11@00)) g1@11@00)))
        (or (Set_in v@113@00 g1@11@00) (not (Set_in v@113@00 g1@11@00)))))
    (or (Set_in u@112@00 g1@11@00) (not (Set_in u@112@00 g1@11@00)))
    (=>
      (and
        (Set_in u@112@00 g1@11@00)
        (and
          (Set_in v@113@00 g1@11@00)
          (not
            (exists_path<Bool> ($$ ($SortWrappers.$FVF<next>To$Snap (sm@118@00 s@$ g0@10@00 g1@11@00)) g1@11@00) u@112@00 v@113@00))))
      (and
        (Set_in u@112@00 g1@11@00)
        (Set_in v@113@00 g1@11@00)
        (not
          (exists_path<Bool> ($$ ($SortWrappers.$FVF<next>To$Snap (sm@118@00 s@$ g0@10@00 g1@11@00)) g1@11@00) u@112@00 v@113@00))
        (forall ((r $Ref)) (!
          (=>
            (Set_in (inv@120@00 s@$ g0@10@00 g1@11@00 r) (Set_union g1@11@00 g0@10@00))
            ($FVF.loc_next ($FVF.lookup_next (sm@122@00 s@$ g0@10@00 g1@11@00) r) r))
          :pattern ((inv@120@00 s@$ g0@10@00 g1@11@00 r))
          :qid |quant-u-13742|))
        ($$%precondition ($SortWrappers.$FVF<next>To$Snap (sm@123@00 s@$ g0@10@00 g1@11@00)) (Set_union g1@11@00 g0@10@00))))
    (or
      (not
        (and
          (Set_in u@112@00 g1@11@00)
          (and
            (Set_in v@113@00 g1@11@00)
            (not
              (exists_path<Bool> ($$ ($SortWrappers.$FVF<next>To$Snap (sm@118@00 s@$ g0@10@00 g1@11@00)) g1@11@00) u@112@00 v@113@00)))))
      (and
        (Set_in u@112@00 g1@11@00)
        (and
          (Set_in v@113@00 g1@11@00)
          (not
            (exists_path<Bool> ($$ ($SortWrappers.$FVF<next>To$Snap (sm@118@00 s@$ g0@10@00 g1@11@00)) g1@11@00) u@112@00 v@113@00))))))
  :pattern ((Set_in v@113@00 g1@11@00) (exists_path<Bool> ($$ ($SortWrappers.$FVF<next>To$Snap (sm@123@00 s@$ g0@10@00 g1@11@00)) (Set_union g1@11@00 g0@10@00)) u@112@00 v@113@00))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/graphs/static/tests/lists/framing1.vpr@298@13@298@120-aux|)))
(assert (forall ((u@112@00 $Ref) (v@113@00 $Ref)) (!
  (and
    (=>
      (Set_in u@112@00 g1@11@00)
      (and
        (Set_in u@112@00 g1@11@00)
        (=>
          (Set_in v@113@00 g1@11@00)
          (and
            (Set_in v@113@00 g1@11@00)
            (forall ((r $Ref)) (!
              (=>
                (Set_in (inv@115@00 s@$ g0@10@00 g1@11@00 r) g1@11@00)
                ($FVF.loc_next ($FVF.lookup_next (sm@117@00 s@$ g0@10@00 g1@11@00) r) r))
              :pattern ((inv@115@00 s@$ g0@10@00 g1@11@00 r))
              :qid |quant-u-13739|))
            ($$%precondition ($SortWrappers.$FVF<next>To$Snap (sm@118@00 s@$ g0@10@00 g1@11@00)) g1@11@00)))
        (or (Set_in v@113@00 g1@11@00) (not (Set_in v@113@00 g1@11@00)))))
    (or (Set_in u@112@00 g1@11@00) (not (Set_in u@112@00 g1@11@00)))
    (=>
      (and
        (Set_in u@112@00 g1@11@00)
        (and
          (Set_in v@113@00 g1@11@00)
          (not
            (exists_path<Bool> ($$ ($SortWrappers.$FVF<next>To$Snap (sm@118@00 s@$ g0@10@00 g1@11@00)) g1@11@00) u@112@00 v@113@00))))
      (and
        (Set_in u@112@00 g1@11@00)
        (Set_in v@113@00 g1@11@00)
        (not
          (exists_path<Bool> ($$ ($SortWrappers.$FVF<next>To$Snap (sm@118@00 s@$ g0@10@00 g1@11@00)) g1@11@00) u@112@00 v@113@00))
        (forall ((r $Ref)) (!
          (=>
            (Set_in (inv@120@00 s@$ g0@10@00 g1@11@00 r) (Set_union g1@11@00 g0@10@00))
            ($FVF.loc_next ($FVF.lookup_next (sm@122@00 s@$ g0@10@00 g1@11@00) r) r))
          :pattern ((inv@120@00 s@$ g0@10@00 g1@11@00 r))
          :qid |quant-u-13742|))
        ($$%precondition ($SortWrappers.$FVF<next>To$Snap (sm@123@00 s@$ g0@10@00 g1@11@00)) (Set_union g1@11@00 g0@10@00))))
    (or
      (not
        (and
          (Set_in u@112@00 g1@11@00)
          (and
            (Set_in v@113@00 g1@11@00)
            (not
              (exists_path<Bool> ($$ ($SortWrappers.$FVF<next>To$Snap (sm@118@00 s@$ g0@10@00 g1@11@00)) g1@11@00) u@112@00 v@113@00)))))
      (and
        (Set_in u@112@00 g1@11@00)
        (and
          (Set_in v@113@00 g1@11@00)
          (not
            (exists_path<Bool> ($$ ($SortWrappers.$FVF<next>To$Snap (sm@118@00 s@$ g0@10@00 g1@11@00)) g1@11@00) u@112@00 v@113@00))))))
  :pattern ((exists_path<Bool> ($$ ($SortWrappers.$FVF<next>To$Snap (sm@118@00 s@$ g0@10@00 g1@11@00)) g1@11@00) u@112@00 v@113@00))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/graphs/static/tests/lists/framing1.vpr@298@13@298@120-aux|)))
(assert (forall ((u@112@00 $Ref) (v@113@00 $Ref)) (!
  (and
    (=>
      (Set_in u@112@00 g1@11@00)
      (and
        (Set_in u@112@00 g1@11@00)
        (=>
          (Set_in v@113@00 g1@11@00)
          (and
            (Set_in v@113@00 g1@11@00)
            (forall ((r $Ref)) (!
              (=>
                (Set_in (inv@115@00 s@$ g0@10@00 g1@11@00 r) g1@11@00)
                ($FVF.loc_next ($FVF.lookup_next (sm@117@00 s@$ g0@10@00 g1@11@00) r) r))
              :pattern ((inv@115@00 s@$ g0@10@00 g1@11@00 r))
              :qid |quant-u-13739|))
            ($$%precondition ($SortWrappers.$FVF<next>To$Snap (sm@118@00 s@$ g0@10@00 g1@11@00)) g1@11@00)))
        (or (Set_in v@113@00 g1@11@00) (not (Set_in v@113@00 g1@11@00)))))
    (or (Set_in u@112@00 g1@11@00) (not (Set_in u@112@00 g1@11@00)))
    (=>
      (and
        (Set_in u@112@00 g1@11@00)
        (and
          (Set_in v@113@00 g1@11@00)
          (not
            (exists_path<Bool> ($$ ($SortWrappers.$FVF<next>To$Snap (sm@118@00 s@$ g0@10@00 g1@11@00)) g1@11@00) u@112@00 v@113@00))))
      (and
        (Set_in u@112@00 g1@11@00)
        (Set_in v@113@00 g1@11@00)
        (not
          (exists_path<Bool> ($$ ($SortWrappers.$FVF<next>To$Snap (sm@118@00 s@$ g0@10@00 g1@11@00)) g1@11@00) u@112@00 v@113@00))
        (forall ((r $Ref)) (!
          (=>
            (Set_in (inv@120@00 s@$ g0@10@00 g1@11@00 r) (Set_union g1@11@00 g0@10@00))
            ($FVF.loc_next ($FVF.lookup_next (sm@122@00 s@$ g0@10@00 g1@11@00) r) r))
          :pattern ((inv@120@00 s@$ g0@10@00 g1@11@00 r))
          :qid |quant-u-13742|))
        ($$%precondition ($SortWrappers.$FVF<next>To$Snap (sm@123@00 s@$ g0@10@00 g1@11@00)) (Set_union g1@11@00 g0@10@00))))
    (or
      (not
        (and
          (Set_in u@112@00 g1@11@00)
          (and
            (Set_in v@113@00 g1@11@00)
            (not
              (exists_path<Bool> ($$ ($SortWrappers.$FVF<next>To$Snap (sm@118@00 s@$ g0@10@00 g1@11@00)) g1@11@00) u@112@00 v@113@00)))))
      (and
        (Set_in u@112@00 g1@11@00)
        (and
          (Set_in v@113@00 g1@11@00)
          (not
            (exists_path<Bool> ($$ ($SortWrappers.$FVF<next>To$Snap (sm@118@00 s@$ g0@10@00 g1@11@00)) g1@11@00) u@112@00 v@113@00))))))
  :pattern ((exists_path<Bool> ($$ ($SortWrappers.$FVF<next>To$Snap (sm@123@00 s@$ g0@10@00 g1@11@00)) (Set_union g1@11@00 g0@10@00)) u@112@00 v@113@00))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/graphs/static/tests/lists/framing1.vpr@298@13@298@120-aux|)))
(assert (forall ((u@112@00 $Ref) (v@113@00 $Ref)) (!
  (=>
    (and
      (Set_in u@112@00 g1@11@00)
      (and
        (Set_in v@113@00 g1@11@00)
        (not
          (exists_path<Bool> ($$ ($SortWrappers.$FVF<next>To$Snap (sm@118@00 s@$ g0@10@00 g1@11@00)) g1@11@00) u@112@00 v@113@00))))
    (not
      (exists_path<Bool> ($$ ($SortWrappers.$FVF<next>To$Snap (sm@123@00 s@$ g0@10@00 g1@11@00)) (Set_union g1@11@00 g0@10@00)) u@112@00 v@113@00)))
  :pattern ((Set_in u@112@00 g1@11@00) (Set_in v@113@00 g1@11@00))
  :pattern ((Set_in u@112@00 g1@11@00) (exists_path<Bool> ($$ ($SortWrappers.$FVF<next>To$Snap (sm@118@00 s@$ g0@10@00 g1@11@00)) g1@11@00) u@112@00 v@113@00))
  :pattern ((Set_in u@112@00 g1@11@00) (exists_path<Bool> ($$ ($SortWrappers.$FVF<next>To$Snap (sm@123@00 s@$ g0@10@00 g1@11@00)) (Set_union g1@11@00 g0@10@00)) u@112@00 v@113@00))
  :pattern ((Set_in v@113@00 g1@11@00) (exists_path<Bool> ($$ ($SortWrappers.$FVF<next>To$Snap (sm@118@00 s@$ g0@10@00 g1@11@00)) g1@11@00) u@112@00 v@113@00))
  :pattern ((Set_in v@113@00 g1@11@00) (exists_path<Bool> ($$ ($SortWrappers.$FVF<next>To$Snap (sm@123@00 s@$ g0@10@00 g1@11@00)) (Set_union g1@11@00 g0@10@00)) u@112@00 v@113@00))
  :pattern ((exists_path<Bool> ($$ ($SortWrappers.$FVF<next>To$Snap (sm@118@00 s@$ g0@10@00 g1@11@00)) g1@11@00) u@112@00 v@113@00))
  :pattern ((exists_path<Bool> ($$ ($SortWrappers.$FVF<next>To$Snap (sm@123@00 s@$ g0@10@00 g1@11@00)) (Set_union g1@11@00 g0@10@00)) u@112@00 v@113@00))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/graphs/static/tests/lists/framing1.vpr@298@13@298@120|)))
(pop) ; 1
(assert (forall ((s@$ $Snap) (g0@10@00 Set<$Ref>) (g1@11@00 Set<$Ref>)) (!
  (=
    (apply_TCFraming%limited s@$ g0@10@00 g1@11@00)
    (apply_TCFraming s@$ g0@10@00 g1@11@00))
  :pattern ((apply_TCFraming s@$ g0@10@00 g1@11@00))
  :qid |quant-u-13674|)))
(assert (forall ((s@$ $Snap) (g0@10@00 Set<$Ref>) (g1@11@00 Set<$Ref>)) (!
  (apply_TCFraming%stateless g0@10@00 g1@11@00)
  :pattern ((apply_TCFraming%limited s@$ g0@10@00 g1@11@00))
  :qid |quant-u-13675|)))
(assert (forall ((s@$ $Snap) (g0@10@00 Set<$Ref>) (g1@11@00 Set<$Ref>)) (!
  (let ((result@12@00 (apply_TCFraming%limited s@$ g0@10@00 g1@11@00))) (and
    (forall ((n@67@00 $Ref)) (!
      (=>
        (Set_in n@67@00 g0@10@00)
        (and
          (= (inv@69@00 s@$ g0@10@00 g1@11@00 n@67@00) n@67@00)
          (img@70@00 s@$ g0@10@00 g1@11@00 n@67@00)))
      :pattern (($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first s@$)) n@67@00) n@67@00))
      :qid |quant-u-13714|))
    (forall ((r $Ref)) (!
      (=>
        (and
          (img@70@00 s@$ g0@10@00 g1@11@00 r)
          (Set_in (inv@69@00 s@$ g0@10@00 g1@11@00 r) g0@10@00))
        (= (inv@69@00 s@$ g0@10@00 g1@11@00 r) r))
      :pattern ((inv@69@00 s@$ g0@10@00 g1@11@00 r))
      :qid |next-fctOfInv|))
    (forall ((n@72@00 $Ref)) (!
      (=>
        (Set_in n@72@00 g1@11@00)
        (and
          (= (inv@73@00 s@$ g0@10@00 g1@11@00 n@72@00) n@72@00)
          (img@74@00 s@$ g0@10@00 g1@11@00 n@72@00)))
      :pattern (($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second s@$))) n@72@00) n@72@00))
      :qid |quant-u-13717|))
    (forall ((r $Ref)) (!
      (=>
        (and
          (img@74@00 s@$ g0@10@00 g1@11@00 r)
          (Set_in (inv@73@00 s@$ g0@10@00 g1@11@00 r) g1@11@00))
        (= (inv@73@00 s@$ g0@10@00 g1@11@00 r) r))
      :pattern ((inv@73@00 s@$ g0@10@00 g1@11@00 r))
      :qid |next-fctOfInv|))
    (forall ((n@79@00 $Ref)) (!
      (=>
        (Set_in n@79@00 g0@10@00)
        (and
          (= (inv@80@00 s@$ g0@10@00 g1@11@00 n@79@00) n@79@00)
          (img@81@00 s@$ g0@10@00 g1@11@00 n@79@00)))
      :pattern ((Set_in n@79@00 g0@10@00))
      :pattern ((inv@80@00 s@$ g0@10@00 g1@11@00 n@79@00))
      :pattern ((img@81@00 s@$ g0@10@00 g1@11@00 n@79@00))
      :qid |next-invOfFct|))
    (forall ((r $Ref)) (!
      (=>
        (and
          (img@81@00 s@$ g0@10@00 g1@11@00 r)
          (Set_in (inv@80@00 s@$ g0@10@00 g1@11@00 r) g0@10@00))
        (= (inv@80@00 s@$ g0@10@00 g1@11@00 r) r))
      :pattern ((inv@80@00 s@$ g0@10@00 g1@11@00 r))
      :qid |next-fctOfInv|))
    (forall ((n@83@00 $Ref)) (!
      (=>
        (Set_in n@83@00 (Set_union g0@10@00 g1@11@00))
        (and
          (= (inv@84@00 s@$ g0@10@00 g1@11@00 n@83@00) n@83@00)
          (img@85@00 s@$ g0@10@00 g1@11@00 n@83@00)))
      :pattern ((Set_in n@83@00 (Set_union g0@10@00 g1@11@00)))
      :pattern ((inv@84@00 s@$ g0@10@00 g1@11@00 n@83@00))
      :pattern ((img@85@00 s@$ g0@10@00 g1@11@00 n@83@00))
      :qid |next-invOfFct|))
    (forall ((r $Ref)) (!
      (=>
        (and
          (img@85@00 s@$ g0@10@00 g1@11@00 r)
          (Set_in (inv@84@00 s@$ g0@10@00 g1@11@00 r) (Set_union g0@10@00 g1@11@00)))
        (= (inv@84@00 s@$ g0@10@00 g1@11@00 r) r))
      :pattern ((inv@84@00 s@$ g0@10@00 g1@11@00 r))
      :qid |next-fctOfInv|))
    (forall ((n@90@00 $Ref)) (!
      (=>
        (Set_in n@90@00 g1@11@00)
        (and
          (= (inv@91@00 s@$ g0@10@00 g1@11@00 n@90@00) n@90@00)
          (img@92@00 s@$ g0@10@00 g1@11@00 n@90@00)))
      :pattern ((Set_in n@90@00 g1@11@00))
      :pattern ((inv@91@00 s@$ g0@10@00 g1@11@00 n@90@00))
      :pattern ((img@92@00 s@$ g0@10@00 g1@11@00 n@90@00))
      :qid |next-invOfFct|))
    (forall ((r $Ref)) (!
      (=>
        (and
          (img@92@00 s@$ g0@10@00 g1@11@00 r)
          (Set_in (inv@91@00 s@$ g0@10@00 g1@11@00 r) g1@11@00))
        (= (inv@91@00 s@$ g0@10@00 g1@11@00 r) r))
      :pattern ((inv@91@00 s@$ g0@10@00 g1@11@00 r))
      :qid |next-fctOfInv|))
    (forall ((n@95@00 $Ref)) (!
      (=>
        (Set_in n@95@00 (Set_union g1@11@00 g0@10@00))
        (and
          (= (inv@96@00 s@$ g0@10@00 g1@11@00 n@95@00) n@95@00)
          (img@97@00 s@$ g0@10@00 g1@11@00 n@95@00)))
      :pattern ((Set_in n@95@00 (Set_union g1@11@00 g0@10@00)))
      :pattern ((inv@96@00 s@$ g0@10@00 g1@11@00 n@95@00))
      :pattern ((img@97@00 s@$ g0@10@00 g1@11@00 n@95@00))
      :qid |next-invOfFct|))
    (forall ((r $Ref)) (!
      (=>
        (and
          (img@97@00 s@$ g0@10@00 g1@11@00 r)
          (Set_in (inv@96@00 s@$ g0@10@00 g1@11@00 r) (Set_union g1@11@00 g0@10@00)))
        (= (inv@96@00 s@$ g0@10@00 g1@11@00 r) r))
      :pattern ((inv@96@00 s@$ g0@10@00 g1@11@00 r))
      :qid |next-fctOfInv|))
    (forall ((n@102@00 $Ref)) (!
      (=>
        (Set_in n@102@00 g0@10@00)
        (and
          (= (inv@103@00 s@$ g0@10@00 g1@11@00 n@102@00) n@102@00)
          (img@104@00 s@$ g0@10@00 g1@11@00 n@102@00)))
      :pattern ((Set_in n@102@00 g0@10@00))
      :pattern ((inv@103@00 s@$ g0@10@00 g1@11@00 n@102@00))
      :pattern ((img@104@00 s@$ g0@10@00 g1@11@00 n@102@00))
      :qid |next-invOfFct|))
    (forall ((r $Ref)) (!
      (=>
        (and
          (img@104@00 s@$ g0@10@00 g1@11@00 r)
          (Set_in (inv@103@00 s@$ g0@10@00 g1@11@00 r) g0@10@00))
        (= (inv@103@00 s@$ g0@10@00 g1@11@00 r) r))
      :pattern ((inv@103@00 s@$ g0@10@00 g1@11@00 r))
      :qid |next-fctOfInv|))
    (forall ((n@107@00 $Ref)) (!
      (=>
        (Set_in n@107@00 (Set_union g0@10@00 g1@11@00))
        (and
          (= (inv@108@00 s@$ g0@10@00 g1@11@00 n@107@00) n@107@00)
          (img@109@00 s@$ g0@10@00 g1@11@00 n@107@00)))
      :pattern ((Set_in n@107@00 (Set_union g0@10@00 g1@11@00)))
      :pattern ((inv@108@00 s@$ g0@10@00 g1@11@00 n@107@00))
      :pattern ((img@109@00 s@$ g0@10@00 g1@11@00 n@107@00))
      :qid |next-invOfFct|))
    (forall ((r $Ref)) (!
      (=>
        (and
          (img@109@00 s@$ g0@10@00 g1@11@00 r)
          (Set_in (inv@108@00 s@$ g0@10@00 g1@11@00 r) (Set_union g0@10@00 g1@11@00)))
        (= (inv@108@00 s@$ g0@10@00 g1@11@00 r) r))
      :pattern ((inv@108@00 s@$ g0@10@00 g1@11@00 r))
      :qid |next-fctOfInv|))
    (forall ((n@114@00 $Ref)) (!
      (=>
        (Set_in n@114@00 g1@11@00)
        (and
          (= (inv@115@00 s@$ g0@10@00 g1@11@00 n@114@00) n@114@00)
          (img@116@00 s@$ g0@10@00 g1@11@00 n@114@00)))
      :pattern ((Set_in n@114@00 g1@11@00))
      :pattern ((inv@115@00 s@$ g0@10@00 g1@11@00 n@114@00))
      :pattern ((img@116@00 s@$ g0@10@00 g1@11@00 n@114@00))
      :qid |next-invOfFct|))
    (forall ((r $Ref)) (!
      (=>
        (and
          (img@116@00 s@$ g0@10@00 g1@11@00 r)
          (Set_in (inv@115@00 s@$ g0@10@00 g1@11@00 r) g1@11@00))
        (= (inv@115@00 s@$ g0@10@00 g1@11@00 r) r))
      :pattern ((inv@115@00 s@$ g0@10@00 g1@11@00 r))
      :qid |next-fctOfInv|))
    (forall ((n@119@00 $Ref)) (!
      (=>
        (Set_in n@119@00 (Set_union g1@11@00 g0@10@00))
        (and
          (= (inv@120@00 s@$ g0@10@00 g1@11@00 n@119@00) n@119@00)
          (img@121@00 s@$ g0@10@00 g1@11@00 n@119@00)))
      :pattern ((Set_in n@119@00 (Set_union g1@11@00 g0@10@00)))
      :pattern ((inv@120@00 s@$ g0@10@00 g1@11@00 n@119@00))
      :pattern ((img@121@00 s@$ g0@10@00 g1@11@00 n@119@00))
      :qid |next-invOfFct|))
    (forall ((r $Ref)) (!
      (=>
        (and
          (img@121@00 s@$ g0@10@00 g1@11@00 r)
          (Set_in (inv@120@00 s@$ g0@10@00 g1@11@00 r) (Set_union g1@11@00 g0@10@00)))
        (= (inv@120@00 s@$ g0@10@00 g1@11@00 r) r))
      :pattern ((inv@120@00 s@$ g0@10@00 g1@11@00 r))
      :qid |next-fctOfInv|))
    (forall ((r $Ref)) (!
      true
      :pattern (($FVF.lookup_next (sm@68@00 s@$ g0@10@00 g1@11@00) r))
      :qid |qp.fvfResTrgDef31|))
    (forall ((r $Ref)) (!
      (=>
        (and
          (img@70@00 s@$ g0@10@00 g1@11@00 r)
          (Set_in (inv@69@00 s@$ g0@10@00 g1@11@00 r) g0@10@00))
        (=
          ($FVF.lookup_next (sm@71@00 s@$ g0@10@00 g1@11@00) r)
          ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first s@$)) r)))
      :pattern (($FVF.lookup_next (sm@71@00 s@$ g0@10@00 g1@11@00) r))
      :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first s@$)) r))
      :qid |qp.fvfValDef32|))
    (forall ((r $Ref)) (!
      ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first s@$)) r) r)
      :pattern (($FVF.lookup_next (sm@71@00 s@$ g0@10@00 g1@11@00) r))
      :qid |qp.fvfResTrgDef33|))
    (forall ((r $Ref)) (!
      (and
        (=>
          (Set_in r ($FVF.domain_next (sm@82@00 s@$ g0@10@00 g1@11@00)))
          (and
            (Set_in (inv@80@00 s@$ g0@10@00 g1@11@00 r) g0@10@00)
            (img@81@00 s@$ g0@10@00 g1@11@00 r)))
        (=>
          (and
            (Set_in (inv@80@00 s@$ g0@10@00 g1@11@00 r) g0@10@00)
            (img@81@00 s@$ g0@10@00 g1@11@00 r))
          (Set_in r ($FVF.domain_next (sm@82@00 s@$ g0@10@00 g1@11@00)))))
      :pattern ((Set_in r ($FVF.domain_next (sm@82@00 s@$ g0@10@00 g1@11@00))))
      :qid |qp.fvfDomDef40|))
    (forall ((r $Ref)) (!
      (=>
        (and
          (and
            (Set_in (inv@80@00 s@$ g0@10@00 g1@11@00 r) g0@10@00)
            (img@81@00 s@$ g0@10@00 g1@11@00 r))
          (and
            (img@70@00 s@$ g0@10@00 g1@11@00 r)
            (Set_in (inv@69@00 s@$ g0@10@00 g1@11@00 r) g0@10@00)))
        (=
          ($FVF.lookup_next (sm@82@00 s@$ g0@10@00 g1@11@00) r)
          ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first s@$)) r)))
      :pattern (($FVF.lookup_next (sm@82@00 s@$ g0@10@00 g1@11@00) r))
      :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first s@$)) r))
      :qid |qp.fvfValDef37|))
    (forall ((r $Ref)) (!
      (=>
        (and
          (and
            (Set_in (inv@80@00 s@$ g0@10@00 g1@11@00 r) g0@10@00)
            (img@81@00 s@$ g0@10@00 g1@11@00 r))
          (and
            (img@74@00 s@$ g0@10@00 g1@11@00 r)
            (Set_in (inv@73@00 s@$ g0@10@00 g1@11@00 r) g1@11@00)))
        (=
          ($FVF.lookup_next (sm@82@00 s@$ g0@10@00 g1@11@00) r)
          ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second s@$))) r)))
      :pattern (($FVF.lookup_next (sm@82@00 s@$ g0@10@00 g1@11@00) r))
      :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second s@$))) r))
      :qid |qp.fvfValDef38|))
    (forall ((r $Ref)) (!
      (and
        ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first s@$)) r) r)
        ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second s@$))) r) r))
      :pattern (($FVF.lookup_next (sm@82@00 s@$ g0@10@00 g1@11@00) r))
      :qid |qp.fvfResTrgDef39|))
    (forall ((r $Ref)) (!
      (and
        (=>
          (Set_in r ($FVF.domain_next (sm@87@00 s@$ g0@10@00 g1@11@00)))
          (and
            (Set_in (inv@84@00 s@$ g0@10@00 g1@11@00 r) (Set_union g0@10@00 g1@11@00))
            (img@85@00 s@$ g0@10@00 g1@11@00 r)))
        (=>
          (and
            (Set_in (inv@84@00 s@$ g0@10@00 g1@11@00 r) (Set_union g0@10@00 g1@11@00))
            (img@85@00 s@$ g0@10@00 g1@11@00 r))
          (Set_in r ($FVF.domain_next (sm@87@00 s@$ g0@10@00 g1@11@00)))))
      :pattern ((Set_in r ($FVF.domain_next (sm@87@00 s@$ g0@10@00 g1@11@00))))
      :qid |qp.fvfDomDef47|))
    (forall ((r $Ref)) (!
      (=>
        (and
          (and
            (Set_in (inv@84@00 s@$ g0@10@00 g1@11@00 r) (Set_union g0@10@00 g1@11@00))
            (img@85@00 s@$ g0@10@00 g1@11@00 r))
          (and
            (img@70@00 s@$ g0@10@00 g1@11@00 r)
            (Set_in (inv@69@00 s@$ g0@10@00 g1@11@00 r) g0@10@00)))
        (=
          ($FVF.lookup_next (sm@87@00 s@$ g0@10@00 g1@11@00) r)
          ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first s@$)) r)))
      :pattern (($FVF.lookup_next (sm@87@00 s@$ g0@10@00 g1@11@00) r))
      :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first s@$)) r))
      :qid |qp.fvfValDef44|))
    (forall ((r $Ref)) (!
      (=>
        (and
          (and
            (Set_in (inv@84@00 s@$ g0@10@00 g1@11@00 r) (Set_union g0@10@00 g1@11@00))
            (img@85@00 s@$ g0@10@00 g1@11@00 r))
          (and
            (img@74@00 s@$ g0@10@00 g1@11@00 r)
            (Set_in (inv@73@00 s@$ g0@10@00 g1@11@00 r) g1@11@00)))
        (=
          ($FVF.lookup_next (sm@87@00 s@$ g0@10@00 g1@11@00) r)
          ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second s@$))) r)))
      :pattern (($FVF.lookup_next (sm@87@00 s@$ g0@10@00 g1@11@00) r))
      :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second s@$))) r))
      :qid |qp.fvfValDef45|))
    (forall ((r $Ref)) (!
      (and
        ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first s@$)) r) r)
        ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second s@$))) r) r))
      :pattern (($FVF.lookup_next (sm@87@00 s@$ g0@10@00 g1@11@00) r))
      :qid |qp.fvfResTrgDef46|))
    (forall ((r $Ref)) (!
      (and
        (=>
          (Set_in r ($FVF.domain_next (sm@94@00 s@$ g0@10@00 g1@11@00)))
          (and
            (Set_in (inv@91@00 s@$ g0@10@00 g1@11@00 r) g1@11@00)
            (img@92@00 s@$ g0@10@00 g1@11@00 r)))
        (=>
          (and
            (Set_in (inv@91@00 s@$ g0@10@00 g1@11@00 r) g1@11@00)
            (img@92@00 s@$ g0@10@00 g1@11@00 r))
          (Set_in r ($FVF.domain_next (sm@94@00 s@$ g0@10@00 g1@11@00)))))
      :pattern ((Set_in r ($FVF.domain_next (sm@94@00 s@$ g0@10@00 g1@11@00))))
      :qid |qp.fvfDomDef54|))
    (forall ((r $Ref)) (!
      (=>
        (and
          (and
            (Set_in (inv@91@00 s@$ g0@10@00 g1@11@00 r) g1@11@00)
            (img@92@00 s@$ g0@10@00 g1@11@00 r))
          (and
            (img@70@00 s@$ g0@10@00 g1@11@00 r)
            (Set_in (inv@69@00 s@$ g0@10@00 g1@11@00 r) g0@10@00)))
        (=
          ($FVF.lookup_next (sm@94@00 s@$ g0@10@00 g1@11@00) r)
          ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first s@$)) r)))
      :pattern (($FVF.lookup_next (sm@94@00 s@$ g0@10@00 g1@11@00) r))
      :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first s@$)) r))
      :qid |qp.fvfValDef51|))
    (forall ((r $Ref)) (!
      (=>
        (and
          (and
            (Set_in (inv@91@00 s@$ g0@10@00 g1@11@00 r) g1@11@00)
            (img@92@00 s@$ g0@10@00 g1@11@00 r))
          (and
            (img@74@00 s@$ g0@10@00 g1@11@00 r)
            (Set_in (inv@73@00 s@$ g0@10@00 g1@11@00 r) g1@11@00)))
        (=
          ($FVF.lookup_next (sm@94@00 s@$ g0@10@00 g1@11@00) r)
          ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second s@$))) r)))
      :pattern (($FVF.lookup_next (sm@94@00 s@$ g0@10@00 g1@11@00) r))
      :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second s@$))) r))
      :qid |qp.fvfValDef52|))
    (forall ((r $Ref)) (!
      (and
        ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first s@$)) r) r)
        ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second s@$))) r) r))
      :pattern (($FVF.lookup_next (sm@94@00 s@$ g0@10@00 g1@11@00) r))
      :qid |qp.fvfResTrgDef53|))
    (forall ((r $Ref)) (!
      (and
        (=>
          (Set_in r ($FVF.domain_next (sm@99@00 s@$ g0@10@00 g1@11@00)))
          (and
            (Set_in (inv@96@00 s@$ g0@10@00 g1@11@00 r) (Set_union g1@11@00 g0@10@00))
            (img@97@00 s@$ g0@10@00 g1@11@00 r)))
        (=>
          (and
            (Set_in (inv@96@00 s@$ g0@10@00 g1@11@00 r) (Set_union g1@11@00 g0@10@00))
            (img@97@00 s@$ g0@10@00 g1@11@00 r))
          (Set_in r ($FVF.domain_next (sm@99@00 s@$ g0@10@00 g1@11@00)))))
      :pattern ((Set_in r ($FVF.domain_next (sm@99@00 s@$ g0@10@00 g1@11@00))))
      :qid |qp.fvfDomDef61|))
    (forall ((r $Ref)) (!
      (=>
        (and
          (and
            (Set_in (inv@96@00 s@$ g0@10@00 g1@11@00 r) (Set_union g1@11@00 g0@10@00))
            (img@97@00 s@$ g0@10@00 g1@11@00 r))
          (and
            (img@70@00 s@$ g0@10@00 g1@11@00 r)
            (Set_in (inv@69@00 s@$ g0@10@00 g1@11@00 r) g0@10@00)))
        (=
          ($FVF.lookup_next (sm@99@00 s@$ g0@10@00 g1@11@00) r)
          ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first s@$)) r)))
      :pattern (($FVF.lookup_next (sm@99@00 s@$ g0@10@00 g1@11@00) r))
      :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first s@$)) r))
      :qid |qp.fvfValDef58|))
    (forall ((r $Ref)) (!
      (=>
        (and
          (and
            (Set_in (inv@96@00 s@$ g0@10@00 g1@11@00 r) (Set_union g1@11@00 g0@10@00))
            (img@97@00 s@$ g0@10@00 g1@11@00 r))
          (and
            (img@74@00 s@$ g0@10@00 g1@11@00 r)
            (Set_in (inv@73@00 s@$ g0@10@00 g1@11@00 r) g1@11@00)))
        (=
          ($FVF.lookup_next (sm@99@00 s@$ g0@10@00 g1@11@00) r)
          ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second s@$))) r)))
      :pattern (($FVF.lookup_next (sm@99@00 s@$ g0@10@00 g1@11@00) r))
      :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second s@$))) r))
      :qid |qp.fvfValDef59|))
    (forall ((r $Ref)) (!
      (and
        ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first s@$)) r) r)
        ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second s@$))) r) r))
      :pattern (($FVF.lookup_next (sm@99@00 s@$ g0@10@00 g1@11@00) r))
      :qid |qp.fvfResTrgDef60|))
    (forall ((r $Ref)) (!
      (and
        (=>
          (Set_in r ($FVF.domain_next (sm@106@00 s@$ g0@10@00 g1@11@00)))
          (and
            (Set_in (inv@103@00 s@$ g0@10@00 g1@11@00 r) g0@10@00)
            (img@104@00 s@$ g0@10@00 g1@11@00 r)))
        (=>
          (and
            (Set_in (inv@103@00 s@$ g0@10@00 g1@11@00 r) g0@10@00)
            (img@104@00 s@$ g0@10@00 g1@11@00 r))
          (Set_in r ($FVF.domain_next (sm@106@00 s@$ g0@10@00 g1@11@00)))))
      :pattern ((Set_in r ($FVF.domain_next (sm@106@00 s@$ g0@10@00 g1@11@00))))
      :qid |qp.fvfDomDef68|))
    (forall ((r $Ref)) (!
      (=>
        (and
          (and
            (Set_in (inv@103@00 s@$ g0@10@00 g1@11@00 r) g0@10@00)
            (img@104@00 s@$ g0@10@00 g1@11@00 r))
          (and
            (img@70@00 s@$ g0@10@00 g1@11@00 r)
            (Set_in (inv@69@00 s@$ g0@10@00 g1@11@00 r) g0@10@00)))
        (=
          ($FVF.lookup_next (sm@106@00 s@$ g0@10@00 g1@11@00) r)
          ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first s@$)) r)))
      :pattern (($FVF.lookup_next (sm@106@00 s@$ g0@10@00 g1@11@00) r))
      :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first s@$)) r))
      :qid |qp.fvfValDef65|))
    (forall ((r $Ref)) (!
      (=>
        (and
          (and
            (Set_in (inv@103@00 s@$ g0@10@00 g1@11@00 r) g0@10@00)
            (img@104@00 s@$ g0@10@00 g1@11@00 r))
          (and
            (img@74@00 s@$ g0@10@00 g1@11@00 r)
            (Set_in (inv@73@00 s@$ g0@10@00 g1@11@00 r) g1@11@00)))
        (=
          ($FVF.lookup_next (sm@106@00 s@$ g0@10@00 g1@11@00) r)
          ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second s@$))) r)))
      :pattern (($FVF.lookup_next (sm@106@00 s@$ g0@10@00 g1@11@00) r))
      :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second s@$))) r))
      :qid |qp.fvfValDef66|))
    (forall ((r $Ref)) (!
      (and
        ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first s@$)) r) r)
        ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second s@$))) r) r))
      :pattern (($FVF.lookup_next (sm@106@00 s@$ g0@10@00 g1@11@00) r))
      :qid |qp.fvfResTrgDef67|))
    (forall ((r $Ref)) (!
      (and
        (=>
          (Set_in r ($FVF.domain_next (sm@111@00 s@$ g0@10@00 g1@11@00)))
          (and
            (Set_in (inv@108@00 s@$ g0@10@00 g1@11@00 r) (Set_union g0@10@00 g1@11@00))
            (img@109@00 s@$ g0@10@00 g1@11@00 r)))
        (=>
          (and
            (Set_in (inv@108@00 s@$ g0@10@00 g1@11@00 r) (Set_union g0@10@00 g1@11@00))
            (img@109@00 s@$ g0@10@00 g1@11@00 r))
          (Set_in r ($FVF.domain_next (sm@111@00 s@$ g0@10@00 g1@11@00)))))
      :pattern ((Set_in r ($FVF.domain_next (sm@111@00 s@$ g0@10@00 g1@11@00))))
      :qid |qp.fvfDomDef75|))
    (forall ((r $Ref)) (!
      (=>
        (and
          (and
            (Set_in (inv@108@00 s@$ g0@10@00 g1@11@00 r) (Set_union g0@10@00 g1@11@00))
            (img@109@00 s@$ g0@10@00 g1@11@00 r))
          (and
            (img@70@00 s@$ g0@10@00 g1@11@00 r)
            (Set_in (inv@69@00 s@$ g0@10@00 g1@11@00 r) g0@10@00)))
        (=
          ($FVF.lookup_next (sm@111@00 s@$ g0@10@00 g1@11@00) r)
          ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first s@$)) r)))
      :pattern (($FVF.lookup_next (sm@111@00 s@$ g0@10@00 g1@11@00) r))
      :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first s@$)) r))
      :qid |qp.fvfValDef72|))
    (forall ((r $Ref)) (!
      (=>
        (and
          (and
            (Set_in (inv@108@00 s@$ g0@10@00 g1@11@00 r) (Set_union g0@10@00 g1@11@00))
            (img@109@00 s@$ g0@10@00 g1@11@00 r))
          (and
            (img@74@00 s@$ g0@10@00 g1@11@00 r)
            (Set_in (inv@73@00 s@$ g0@10@00 g1@11@00 r) g1@11@00)))
        (=
          ($FVF.lookup_next (sm@111@00 s@$ g0@10@00 g1@11@00) r)
          ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second s@$))) r)))
      :pattern (($FVF.lookup_next (sm@111@00 s@$ g0@10@00 g1@11@00) r))
      :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second s@$))) r))
      :qid |qp.fvfValDef73|))
    (forall ((r $Ref)) (!
      (and
        ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first s@$)) r) r)
        ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second s@$))) r) r))
      :pattern (($FVF.lookup_next (sm@111@00 s@$ g0@10@00 g1@11@00) r))
      :qid |qp.fvfResTrgDef74|))
    (forall ((r $Ref)) (!
      (and
        (=>
          (Set_in r ($FVF.domain_next (sm@118@00 s@$ g0@10@00 g1@11@00)))
          (and
            (Set_in (inv@115@00 s@$ g0@10@00 g1@11@00 r) g1@11@00)
            (img@116@00 s@$ g0@10@00 g1@11@00 r)))
        (=>
          (and
            (Set_in (inv@115@00 s@$ g0@10@00 g1@11@00 r) g1@11@00)
            (img@116@00 s@$ g0@10@00 g1@11@00 r))
          (Set_in r ($FVF.domain_next (sm@118@00 s@$ g0@10@00 g1@11@00)))))
      :pattern ((Set_in r ($FVF.domain_next (sm@118@00 s@$ g0@10@00 g1@11@00))))
      :qid |qp.fvfDomDef82|))
    (forall ((r $Ref)) (!
      (=>
        (and
          (and
            (Set_in (inv@115@00 s@$ g0@10@00 g1@11@00 r) g1@11@00)
            (img@116@00 s@$ g0@10@00 g1@11@00 r))
          (and
            (img@70@00 s@$ g0@10@00 g1@11@00 r)
            (Set_in (inv@69@00 s@$ g0@10@00 g1@11@00 r) g0@10@00)))
        (=
          ($FVF.lookup_next (sm@118@00 s@$ g0@10@00 g1@11@00) r)
          ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first s@$)) r)))
      :pattern (($FVF.lookup_next (sm@118@00 s@$ g0@10@00 g1@11@00) r))
      :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first s@$)) r))
      :qid |qp.fvfValDef79|))
    (forall ((r $Ref)) (!
      (=>
        (and
          (and
            (Set_in (inv@115@00 s@$ g0@10@00 g1@11@00 r) g1@11@00)
            (img@116@00 s@$ g0@10@00 g1@11@00 r))
          (and
            (img@74@00 s@$ g0@10@00 g1@11@00 r)
            (Set_in (inv@73@00 s@$ g0@10@00 g1@11@00 r) g1@11@00)))
        (=
          ($FVF.lookup_next (sm@118@00 s@$ g0@10@00 g1@11@00) r)
          ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second s@$))) r)))
      :pattern (($FVF.lookup_next (sm@118@00 s@$ g0@10@00 g1@11@00) r))
      :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second s@$))) r))
      :qid |qp.fvfValDef80|))
    (forall ((r $Ref)) (!
      (and
        ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first s@$)) r) r)
        ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second s@$))) r) r))
      :pattern (($FVF.lookup_next (sm@118@00 s@$ g0@10@00 g1@11@00) r))
      :qid |qp.fvfResTrgDef81|))
    (forall ((r $Ref)) (!
      (and
        (=>
          (Set_in r ($FVF.domain_next (sm@123@00 s@$ g0@10@00 g1@11@00)))
          (and
            (Set_in (inv@120@00 s@$ g0@10@00 g1@11@00 r) (Set_union g1@11@00 g0@10@00))
            (img@121@00 s@$ g0@10@00 g1@11@00 r)))
        (=>
          (and
            (Set_in (inv@120@00 s@$ g0@10@00 g1@11@00 r) (Set_union g1@11@00 g0@10@00))
            (img@121@00 s@$ g0@10@00 g1@11@00 r))
          (Set_in r ($FVF.domain_next (sm@123@00 s@$ g0@10@00 g1@11@00)))))
      :pattern ((Set_in r ($FVF.domain_next (sm@123@00 s@$ g0@10@00 g1@11@00))))
      :qid |qp.fvfDomDef89|))
    (forall ((r $Ref)) (!
      (=>
        (and
          (and
            (Set_in (inv@120@00 s@$ g0@10@00 g1@11@00 r) (Set_union g1@11@00 g0@10@00))
            (img@121@00 s@$ g0@10@00 g1@11@00 r))
          (and
            (img@70@00 s@$ g0@10@00 g1@11@00 r)
            (Set_in (inv@69@00 s@$ g0@10@00 g1@11@00 r) g0@10@00)))
        (=
          ($FVF.lookup_next (sm@123@00 s@$ g0@10@00 g1@11@00) r)
          ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first s@$)) r)))
      :pattern (($FVF.lookup_next (sm@123@00 s@$ g0@10@00 g1@11@00) r))
      :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first s@$)) r))
      :qid |qp.fvfValDef86|))
    (forall ((r $Ref)) (!
      (=>
        (and
          (and
            (Set_in (inv@120@00 s@$ g0@10@00 g1@11@00 r) (Set_union g1@11@00 g0@10@00))
            (img@121@00 s@$ g0@10@00 g1@11@00 r))
          (and
            (img@74@00 s@$ g0@10@00 g1@11@00 r)
            (Set_in (inv@73@00 s@$ g0@10@00 g1@11@00 r) g1@11@00)))
        (=
          ($FVF.lookup_next (sm@123@00 s@$ g0@10@00 g1@11@00) r)
          ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second s@$))) r)))
      :pattern (($FVF.lookup_next (sm@123@00 s@$ g0@10@00 g1@11@00) r))
      :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second s@$))) r))
      :qid |qp.fvfValDef87|))
    (forall ((r $Ref)) (!
      (and
        ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first s@$)) r) r)
        ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second s@$))) r) r))
      :pattern (($FVF.lookup_next (sm@123@00 s@$ g0@10@00 g1@11@00) r))
      :qid |qp.fvfResTrgDef88|))
    (=>
      (apply_TCFraming%precondition s@$ g0@10@00 g1@11@00)
      (and
        (Set_equal (Set_union g0@10@00 g1@11@00) (Set_union g1@11@00 g0@10@00))
        (forall ((u $Ref) (v $Ref)) (!
          (=>
            (and
              (Set_in u g0@10@00)
              (and
                (Set_in v g0@10@00)
                (exists_path<Bool> ($$ (ite
                  (Set_in v g0@10@00)
                  (ite
                    (Set_in u g0@10@00)
                    ($SortWrappers.$FVF<next>To$Snap (sm@82@00 s@$ g0@10@00 g1@11@00))
                    ($SortWrappers.$FVF<next>To$Snap (sm@106@00 s@$ g0@10@00 g1@11@00)))
                  ($SortWrappers.$FVF<next>To$Snap (sm@106@00 s@$ g0@10@00 g1@11@00))) g0@10@00) u v)))
            (exists_path<Bool> ($$ (ite
              (and
                (Set_in u g0@10@00)
                (and
                  (Set_in v g0@10@00)
                  (exists_path<Bool> ($$ ($SortWrappers.$FVF<next>To$Snap (sm@82@00 s@$ g0@10@00 g1@11@00)) g0@10@00) u v)))
              ($SortWrappers.$FVF<next>To$Snap (sm@87@00 s@$ g0@10@00 g1@11@00))
              ($SortWrappers.$FVF<next>To$Snap (sm@111@00 s@$ g0@10@00 g1@11@00))) (Set_union g0@10@00 g1@11@00)) u v))
          :pattern ((exists_path<Bool> ($$ (ite
            (Set_in v g0@10@00)
            (ite
              (Set_in u g0@10@00)
              ($SortWrappers.$FVF<next>To$Snap (sm@82@00 s@$ g0@10@00 g1@11@00))
              ($SortWrappers.$FVF<next>To$Snap (sm@106@00 s@$ g0@10@00 g1@11@00)))
            ($SortWrappers.$FVF<next>To$Snap (sm@106@00 s@$ g0@10@00 g1@11@00))) g0@10@00) u v))
          :pattern ((exists_path<Bool> ($$ (ite
            (and
              (Set_in u g0@10@00)
              (and
                (Set_in v g0@10@00)
                (exists_path<Bool> ($$ ($SortWrappers.$FVF<next>To$Snap (sm@82@00 s@$ g0@10@00 g1@11@00)) g0@10@00) u v)))
            ($SortWrappers.$FVF<next>To$Snap (sm@87@00 s@$ g0@10@00 g1@11@00))
            ($SortWrappers.$FVF<next>To$Snap (sm@111@00 s@$ g0@10@00 g1@11@00))) (Set_union g0@10@00 g1@11@00)) u v))
          ))
        (forall ((u $Ref) (v $Ref)) (!
          (=>
            (and
              (Set_in u g1@11@00)
              (and
                (Set_in v g1@11@00)
                (exists_path<Bool> ($$ (ite
                  (Set_in v g1@11@00)
                  (ite
                    (Set_in u g1@11@00)
                    ($SortWrappers.$FVF<next>To$Snap (sm@94@00 s@$ g0@10@00 g1@11@00))
                    ($SortWrappers.$FVF<next>To$Snap (sm@118@00 s@$ g0@10@00 g1@11@00)))
                  ($SortWrappers.$FVF<next>To$Snap (sm@118@00 s@$ g0@10@00 g1@11@00))) g1@11@00) u v)))
            (exists_path<Bool> ($$ (ite
              (and
                (Set_in u g1@11@00)
                (and
                  (Set_in v g1@11@00)
                  (exists_path<Bool> ($$ ($SortWrappers.$FVF<next>To$Snap (sm@94@00 s@$ g0@10@00 g1@11@00)) g1@11@00) u v)))
              ($SortWrappers.$FVF<next>To$Snap (sm@99@00 s@$ g0@10@00 g1@11@00))
              ($SortWrappers.$FVF<next>To$Snap (sm@123@00 s@$ g0@10@00 g1@11@00))) (Set_union g1@11@00 g0@10@00)) u v))
          :pattern ((exists_path<Bool> ($$ (ite
            (Set_in v g1@11@00)
            (ite
              (Set_in u g1@11@00)
              ($SortWrappers.$FVF<next>To$Snap (sm@94@00 s@$ g0@10@00 g1@11@00))
              ($SortWrappers.$FVF<next>To$Snap (sm@118@00 s@$ g0@10@00 g1@11@00)))
            ($SortWrappers.$FVF<next>To$Snap (sm@118@00 s@$ g0@10@00 g1@11@00))) g1@11@00) u v))
          :pattern ((exists_path<Bool> ($$ (ite
            (and
              (Set_in u g1@11@00)
              (and
                (Set_in v g1@11@00)
                (exists_path<Bool> ($$ ($SortWrappers.$FVF<next>To$Snap (sm@94@00 s@$ g0@10@00 g1@11@00)) g1@11@00) u v)))
            ($SortWrappers.$FVF<next>To$Snap (sm@99@00 s@$ g0@10@00 g1@11@00))
            ($SortWrappers.$FVF<next>To$Snap (sm@123@00 s@$ g0@10@00 g1@11@00))) (Set_union g1@11@00 g0@10@00)) u v))
          ))
        (forall ((u $Ref) (v $Ref)) (!
          (=>
            (and
              (Set_in u g0@10@00)
              (and
                (Set_in v g0@10@00)
                (not
                  (exists_path<Bool> ($$ (ite
                    (Set_in v g0@10@00)
                    (ite
                      (Set_in u g0@10@00)
                      ($SortWrappers.$FVF<next>To$Snap (sm@82@00 s@$ g0@10@00 g1@11@00))
                      ($SortWrappers.$FVF<next>To$Snap (sm@106@00 s@$ g0@10@00 g1@11@00)))
                    ($SortWrappers.$FVF<next>To$Snap (sm@106@00 s@$ g0@10@00 g1@11@00))) g0@10@00) u v))))
            (not
              (exists_path<Bool> ($$ (ite
                (and
                  (Set_in u g0@10@00)
                  (and
                    (Set_in v g0@10@00)
                    (exists_path<Bool> ($$ ($SortWrappers.$FVF<next>To$Snap (sm@82@00 s@$ g0@10@00 g1@11@00)) g0@10@00) u v)))
                ($SortWrappers.$FVF<next>To$Snap (sm@87@00 s@$ g0@10@00 g1@11@00))
                ($SortWrappers.$FVF<next>To$Snap (sm@111@00 s@$ g0@10@00 g1@11@00))) (Set_union g0@10@00 g1@11@00)) u v)))
          :pattern ((Set_in u g0@10@00) (Set_in v g0@10@00))
          :pattern ((Set_in u g0@10@00) (exists_path<Bool> ($$ (ite
            (Set_in v g0@10@00)
            (ite
              (Set_in u g0@10@00)
              ($SortWrappers.$FVF<next>To$Snap (sm@82@00 s@$ g0@10@00 g1@11@00))
              ($SortWrappers.$FVF<next>To$Snap (sm@106@00 s@$ g0@10@00 g1@11@00)))
            ($SortWrappers.$FVF<next>To$Snap (sm@106@00 s@$ g0@10@00 g1@11@00))) g0@10@00) u v))
          :pattern ((Set_in u g0@10@00) (exists_path<Bool> ($$ (ite
            (and
              (Set_in u g0@10@00)
              (and
                (Set_in v g0@10@00)
                (exists_path<Bool> ($$ ($SortWrappers.$FVF<next>To$Snap (sm@82@00 s@$ g0@10@00 g1@11@00)) g0@10@00) u v)))
            ($SortWrappers.$FVF<next>To$Snap (sm@87@00 s@$ g0@10@00 g1@11@00))
            ($SortWrappers.$FVF<next>To$Snap (sm@111@00 s@$ g0@10@00 g1@11@00))) (Set_union g0@10@00 g1@11@00)) u v))
          :pattern ((Set_in v g0@10@00) (exists_path<Bool> ($$ (ite
            (Set_in v g0@10@00)
            (ite
              (Set_in u g0@10@00)
              ($SortWrappers.$FVF<next>To$Snap (sm@82@00 s@$ g0@10@00 g1@11@00))
              ($SortWrappers.$FVF<next>To$Snap (sm@106@00 s@$ g0@10@00 g1@11@00)))
            ($SortWrappers.$FVF<next>To$Snap (sm@106@00 s@$ g0@10@00 g1@11@00))) g0@10@00) u v))
          :pattern ((Set_in v g0@10@00) (exists_path<Bool> ($$ (ite
            (and
              (Set_in u g0@10@00)
              (and
                (Set_in v g0@10@00)
                (exists_path<Bool> ($$ ($SortWrappers.$FVF<next>To$Snap (sm@82@00 s@$ g0@10@00 g1@11@00)) g0@10@00) u v)))
            ($SortWrappers.$FVF<next>To$Snap (sm@87@00 s@$ g0@10@00 g1@11@00))
            ($SortWrappers.$FVF<next>To$Snap (sm@111@00 s@$ g0@10@00 g1@11@00))) (Set_union g0@10@00 g1@11@00)) u v))
          :pattern ((exists_path<Bool> ($$ (ite
            (Set_in v g0@10@00)
            (ite
              (Set_in u g0@10@00)
              ($SortWrappers.$FVF<next>To$Snap (sm@82@00 s@$ g0@10@00 g1@11@00))
              ($SortWrappers.$FVF<next>To$Snap (sm@106@00 s@$ g0@10@00 g1@11@00)))
            ($SortWrappers.$FVF<next>To$Snap (sm@106@00 s@$ g0@10@00 g1@11@00))) g0@10@00) u v))
          :pattern ((exists_path<Bool> ($$ (ite
            (and
              (Set_in u g0@10@00)
              (and
                (Set_in v g0@10@00)
                (exists_path<Bool> ($$ ($SortWrappers.$FVF<next>To$Snap (sm@82@00 s@$ g0@10@00 g1@11@00)) g0@10@00) u v)))
            ($SortWrappers.$FVF<next>To$Snap (sm@87@00 s@$ g0@10@00 g1@11@00))
            ($SortWrappers.$FVF<next>To$Snap (sm@111@00 s@$ g0@10@00 g1@11@00))) (Set_union g0@10@00 g1@11@00)) u v))
          ))
        (forall ((u $Ref) (v $Ref)) (!
          (=>
            (and
              (Set_in u g1@11@00)
              (and
                (Set_in v g1@11@00)
                (not
                  (exists_path<Bool> ($$ (ite
                    (Set_in v g1@11@00)
                    (ite
                      (Set_in u g1@11@00)
                      ($SortWrappers.$FVF<next>To$Snap (sm@94@00 s@$ g0@10@00 g1@11@00))
                      ($SortWrappers.$FVF<next>To$Snap (sm@118@00 s@$ g0@10@00 g1@11@00)))
                    ($SortWrappers.$FVF<next>To$Snap (sm@118@00 s@$ g0@10@00 g1@11@00))) g1@11@00) u v))))
            (not
              (exists_path<Bool> ($$ (ite
                (and
                  (Set_in u g1@11@00)
                  (and
                    (Set_in v g1@11@00)
                    (exists_path<Bool> ($$ ($SortWrappers.$FVF<next>To$Snap (sm@94@00 s@$ g0@10@00 g1@11@00)) g1@11@00) u v)))
                ($SortWrappers.$FVF<next>To$Snap (sm@99@00 s@$ g0@10@00 g1@11@00))
                ($SortWrappers.$FVF<next>To$Snap (sm@123@00 s@$ g0@10@00 g1@11@00))) (Set_union g1@11@00 g0@10@00)) u v)))
          :pattern ((Set_in u g1@11@00) (Set_in v g1@11@00))
          :pattern ((Set_in u g1@11@00) (exists_path<Bool> ($$ (ite
            (Set_in v g1@11@00)
            (ite
              (Set_in u g1@11@00)
              ($SortWrappers.$FVF<next>To$Snap (sm@94@00 s@$ g0@10@00 g1@11@00))
              ($SortWrappers.$FVF<next>To$Snap (sm@118@00 s@$ g0@10@00 g1@11@00)))
            ($SortWrappers.$FVF<next>To$Snap (sm@118@00 s@$ g0@10@00 g1@11@00))) g1@11@00) u v))
          :pattern ((Set_in u g1@11@00) (exists_path<Bool> ($$ (ite
            (and
              (Set_in u g1@11@00)
              (and
                (Set_in v g1@11@00)
                (exists_path<Bool> ($$ ($SortWrappers.$FVF<next>To$Snap (sm@94@00 s@$ g0@10@00 g1@11@00)) g1@11@00) u v)))
            ($SortWrappers.$FVF<next>To$Snap (sm@99@00 s@$ g0@10@00 g1@11@00))
            ($SortWrappers.$FVF<next>To$Snap (sm@123@00 s@$ g0@10@00 g1@11@00))) (Set_union g1@11@00 g0@10@00)) u v))
          :pattern ((Set_in v g1@11@00) (exists_path<Bool> ($$ (ite
            (Set_in v g1@11@00)
            (ite
              (Set_in u g1@11@00)
              ($SortWrappers.$FVF<next>To$Snap (sm@94@00 s@$ g0@10@00 g1@11@00))
              ($SortWrappers.$FVF<next>To$Snap (sm@118@00 s@$ g0@10@00 g1@11@00)))
            ($SortWrappers.$FVF<next>To$Snap (sm@118@00 s@$ g0@10@00 g1@11@00))) g1@11@00) u v))
          :pattern ((Set_in v g1@11@00) (exists_path<Bool> ($$ (ite
            (and
              (Set_in u g1@11@00)
              (and
                (Set_in v g1@11@00)
                (exists_path<Bool> ($$ ($SortWrappers.$FVF<next>To$Snap (sm@94@00 s@$ g0@10@00 g1@11@00)) g1@11@00) u v)))
            ($SortWrappers.$FVF<next>To$Snap (sm@99@00 s@$ g0@10@00 g1@11@00))
            ($SortWrappers.$FVF<next>To$Snap (sm@123@00 s@$ g0@10@00 g1@11@00))) (Set_union g1@11@00 g0@10@00)) u v))
          :pattern ((exists_path<Bool> ($$ (ite
            (Set_in v g1@11@00)
            (ite
              (Set_in u g1@11@00)
              ($SortWrappers.$FVF<next>To$Snap (sm@94@00 s@$ g0@10@00 g1@11@00))
              ($SortWrappers.$FVF<next>To$Snap (sm@118@00 s@$ g0@10@00 g1@11@00)))
            ($SortWrappers.$FVF<next>To$Snap (sm@118@00 s@$ g0@10@00 g1@11@00))) g1@11@00) u v))
          :pattern ((exists_path<Bool> ($$ (ite
            (and
              (Set_in u g1@11@00)
              (and
                (Set_in v g1@11@00)
                (exists_path<Bool> ($$ ($SortWrappers.$FVF<next>To$Snap (sm@94@00 s@$ g0@10@00 g1@11@00)) g1@11@00) u v)))
            ($SortWrappers.$FVF<next>To$Snap (sm@99@00 s@$ g0@10@00 g1@11@00))
            ($SortWrappers.$FVF<next>To$Snap (sm@123@00 s@$ g0@10@00 g1@11@00))) (Set_union g1@11@00 g0@10@00)) u v))
          ))))))
  :pattern ((apply_TCFraming%limited s@$ g0@10@00 g1@11@00))
  :qid |quant-u-13744|)))
; WARNING: (10336,11): 'if' cannot be used in patterns.
; WARNING: (10336,11): 'if' cannot be used in patterns.
; WARNING: (10336,11): 'and' cannot be used in patterns.
; WARNING: (10336,11): 'and' cannot be used in patterns.
; WARNING: (10336,11): 'if' cannot be used in patterns.
; WARNING: (10373,11): 'if' cannot be used in patterns.
; WARNING: (10373,11): 'if' cannot be used in patterns.
; WARNING: (10373,11): 'and' cannot be used in patterns.
; WARNING: (10373,11): 'and' cannot be used in patterns.
; WARNING: (10373,11): 'if' cannot be used in patterns.
; WARNING: (10443,11): 'if' cannot be used in patterns.
; WARNING: (10443,11): 'if' cannot be used in patterns.
; WARNING: (10443,11): 'and' cannot be used in patterns.
; WARNING: (10443,11): 'and' cannot be used in patterns.
; WARNING: (10443,11): 'if' cannot be used in patterns.
; WARNING: (10443,11): 'if' cannot be used in patterns.
; WARNING: (10443,11): 'if' cannot be used in patterns.
; WARNING: (10443,11): 'and' cannot be used in patterns.
; WARNING: (10443,11): 'and' cannot be used in patterns.
; WARNING: (10443,11): 'if' cannot be used in patterns.
; WARNING: (10443,11): 'if' cannot be used in patterns.
; WARNING: (10443,11): 'if' cannot be used in patterns.
; WARNING: (10443,11): 'and' cannot be used in patterns.
; WARNING: (10443,11): 'and' cannot be used in patterns.
; WARNING: (10443,11): 'if' cannot be used in patterns.
; WARNING: (10513,11): 'if' cannot be used in patterns.
; WARNING: (10513,11): 'if' cannot be used in patterns.
; WARNING: (10513,11): 'and' cannot be used in patterns.
; WARNING: (10513,11): 'and' cannot be used in patterns.
; WARNING: (10513,11): 'if' cannot be used in patterns.
; WARNING: (10513,11): 'if' cannot be used in patterns.
; WARNING: (10513,11): 'if' cannot be used in patterns.
; WARNING: (10513,11): 'and' cannot be used in patterns.
; WARNING: (10513,11): 'and' cannot be used in patterns.
; WARNING: (10513,11): 'if' cannot be used in patterns.
; WARNING: (10513,11): 'if' cannot be used in patterns.
; WARNING: (10513,11): 'if' cannot be used in patterns.
; WARNING: (10513,11): 'and' cannot be used in patterns.
; WARNING: (10513,11): 'and' cannot be used in patterns.
; WARNING: (10513,11): 'if' cannot be used in patterns.
(assert (forall ((s@$ $Snap) (g0@10@00 Set<$Ref>) (g1@11@00 Set<$Ref>)) (!
  (let ((result@12@00 (apply_TCFraming%limited s@$ g0@10@00 g1@11@00))) true)
  :pattern ((apply_TCFraming%limited s@$ g0@10@00 g1@11@00))
  :qid |quant-u-13745|)))
(assert (forall ((s@$ $Snap) (g0@10@00 Set<$Ref>) (g1@11@00 Set<$Ref>)) (!
  (let ((result@12@00 (apply_TCFraming%limited s@$ g0@10@00 g1@11@00))) (=>
    (apply_TCFraming%precondition s@$ g0@10@00 g1@11@00)
    (forall ((u $Ref) (v $Ref)) (!
      (and
        (=>
          (and (Set_in u g0@10@00) (Set_in v g0@10@00))
          ($$%precondition (ite
            (Set_in v g0@10@00)
            (ite
              (Set_in u g0@10@00)
              ($SortWrappers.$FVF<next>To$Snap (sm@82@00 s@$ g0@10@00 g1@11@00))
              ($SortWrappers.$FVF<next>To$Snap (sm@106@00 s@$ g0@10@00 g1@11@00)))
            ($SortWrappers.$FVF<next>To$Snap (sm@106@00 s@$ g0@10@00 g1@11@00))) g0@10@00))
        (=>
          (and
            (Set_in u g0@10@00)
            (and
              (Set_in v g0@10@00)
              (exists_path<Bool> ($$ (ite
                (Set_in v g0@10@00)
                (ite
                  (Set_in u g0@10@00)
                  ($SortWrappers.$FVF<next>To$Snap (sm@82@00 s@$ g0@10@00 g1@11@00))
                  ($SortWrappers.$FVF<next>To$Snap (sm@106@00 s@$ g0@10@00 g1@11@00)))
                ($SortWrappers.$FVF<next>To$Snap (sm@106@00 s@$ g0@10@00 g1@11@00))) g0@10@00) u v)))
          (and
            (=>
              (and (Set_in u g0@10@00) (Set_in v g0@10@00))
              ($$%precondition ($SortWrappers.$FVF<next>To$Snap (sm@82@00 s@$ g0@10@00 g1@11@00)) g0@10@00))
            ($$%precondition (ite
              (and
                (Set_in u g0@10@00)
                (and
                  (Set_in v g0@10@00)
                  (exists_path<Bool> ($$ ($SortWrappers.$FVF<next>To$Snap (sm@82@00 s@$ g0@10@00 g1@11@00)) g0@10@00) u v)))
              ($SortWrappers.$FVF<next>To$Snap (sm@87@00 s@$ g0@10@00 g1@11@00))
              ($SortWrappers.$FVF<next>To$Snap (sm@111@00 s@$ g0@10@00 g1@11@00))) (Set_union g0@10@00 g1@11@00)))))
      :pattern ((exists_path<Bool> ($$ (ite
        (Set_in v g0@10@00)
        (ite
          (Set_in u g0@10@00)
          ($SortWrappers.$FVF<next>To$Snap (sm@82@00 s@$ g0@10@00 g1@11@00))
          ($SortWrappers.$FVF<next>To$Snap (sm@106@00 s@$ g0@10@00 g1@11@00)))
        ($SortWrappers.$FVF<next>To$Snap (sm@106@00 s@$ g0@10@00 g1@11@00))) g0@10@00) u v))
      :pattern ((exists_path<Bool> ($$ (ite
        (and
          (Set_in u g0@10@00)
          (and
            (Set_in v g0@10@00)
            (exists_path<Bool> ($$ ($SortWrappers.$FVF<next>To$Snap (sm@82@00 s@$ g0@10@00 g1@11@00)) g0@10@00) u v)))
        ($SortWrappers.$FVF<next>To$Snap (sm@87@00 s@$ g0@10@00 g1@11@00))
        ($SortWrappers.$FVF<next>To$Snap (sm@111@00 s@$ g0@10@00 g1@11@00))) (Set_union g0@10@00 g1@11@00)) u v))
      ))))
  :pattern ((apply_TCFraming%limited s@$ g0@10@00 g1@11@00))
  :qid |quant-u-13746|)))
; WARNING: (10573,7): 'if' cannot be used in patterns.
; WARNING: (10573,7): 'if' cannot be used in patterns.
; WARNING: (10573,7): 'and' cannot be used in patterns.
; WARNING: (10573,7): 'and' cannot be used in patterns.
; WARNING: (10573,7): 'if' cannot be used in patterns.
(assert (forall ((s@$ $Snap) (g0@10@00 Set<$Ref>) (g1@11@00 Set<$Ref>)) (!
  (let ((result@12@00 (apply_TCFraming%limited s@$ g0@10@00 g1@11@00))) (=>
    (apply_TCFraming%precondition s@$ g0@10@00 g1@11@00)
    (forall ((u $Ref) (v $Ref)) (!
      (and
        (=>
          (and (Set_in u g1@11@00) (Set_in v g1@11@00))
          ($$%precondition (ite
            (Set_in v g1@11@00)
            (ite
              (Set_in u g1@11@00)
              ($SortWrappers.$FVF<next>To$Snap (sm@94@00 s@$ g0@10@00 g1@11@00))
              ($SortWrappers.$FVF<next>To$Snap (sm@118@00 s@$ g0@10@00 g1@11@00)))
            ($SortWrappers.$FVF<next>To$Snap (sm@118@00 s@$ g0@10@00 g1@11@00))) g1@11@00))
        (=>
          (and
            (Set_in u g1@11@00)
            (and
              (Set_in v g1@11@00)
              (exists_path<Bool> ($$ (ite
                (Set_in v g1@11@00)
                (ite
                  (Set_in u g1@11@00)
                  ($SortWrappers.$FVF<next>To$Snap (sm@94@00 s@$ g0@10@00 g1@11@00))
                  ($SortWrappers.$FVF<next>To$Snap (sm@118@00 s@$ g0@10@00 g1@11@00)))
                ($SortWrappers.$FVF<next>To$Snap (sm@118@00 s@$ g0@10@00 g1@11@00))) g1@11@00) u v)))
          (and
            (=>
              (and (Set_in u g1@11@00) (Set_in v g1@11@00))
              ($$%precondition ($SortWrappers.$FVF<next>To$Snap (sm@94@00 s@$ g0@10@00 g1@11@00)) g1@11@00))
            ($$%precondition (ite
              (and
                (Set_in u g1@11@00)
                (and
                  (Set_in v g1@11@00)
                  (exists_path<Bool> ($$ ($SortWrappers.$FVF<next>To$Snap (sm@94@00 s@$ g0@10@00 g1@11@00)) g1@11@00) u v)))
              ($SortWrappers.$FVF<next>To$Snap (sm@99@00 s@$ g0@10@00 g1@11@00))
              ($SortWrappers.$FVF<next>To$Snap (sm@123@00 s@$ g0@10@00 g1@11@00))) (Set_union g1@11@00 g0@10@00)))))
      :pattern ((exists_path<Bool> ($$ (ite
        (Set_in v g1@11@00)
        (ite
          (Set_in u g1@11@00)
          ($SortWrappers.$FVF<next>To$Snap (sm@94@00 s@$ g0@10@00 g1@11@00))
          ($SortWrappers.$FVF<next>To$Snap (sm@118@00 s@$ g0@10@00 g1@11@00)))
        ($SortWrappers.$FVF<next>To$Snap (sm@118@00 s@$ g0@10@00 g1@11@00))) g1@11@00) u v))
      :pattern ((exists_path<Bool> ($$ (ite
        (and
          (Set_in u g1@11@00)
          (and
            (Set_in v g1@11@00)
            (exists_path<Bool> ($$ ($SortWrappers.$FVF<next>To$Snap (sm@94@00 s@$ g0@10@00 g1@11@00)) g1@11@00) u v)))
        ($SortWrappers.$FVF<next>To$Snap (sm@99@00 s@$ g0@10@00 g1@11@00))
        ($SortWrappers.$FVF<next>To$Snap (sm@123@00 s@$ g0@10@00 g1@11@00))) (Set_union g1@11@00 g0@10@00)) u v))
      ))))
  :pattern ((apply_TCFraming%limited s@$ g0@10@00 g1@11@00))
  :qid |quant-u-13747|)))
; WARNING: (10629,7): 'if' cannot be used in patterns.
; WARNING: (10629,7): 'if' cannot be used in patterns.
; WARNING: (10629,7): 'and' cannot be used in patterns.
; WARNING: (10629,7): 'and' cannot be used in patterns.
; WARNING: (10629,7): 'if' cannot be used in patterns.
(assert (forall ((s@$ $Snap) (g0@10@00 Set<$Ref>) (g1@11@00 Set<$Ref>)) (!
  (let ((result@12@00 (apply_TCFraming%limited s@$ g0@10@00 g1@11@00))) (=>
    (apply_TCFraming%precondition s@$ g0@10@00 g1@11@00)
    (forall ((u $Ref) (v $Ref)) (!
      (and
        (=>
          (and (Set_in u g0@10@00) (Set_in v g0@10@00))
          ($$%precondition (ite
            (Set_in v g0@10@00)
            (ite
              (Set_in u g0@10@00)
              ($SortWrappers.$FVF<next>To$Snap (sm@82@00 s@$ g0@10@00 g1@11@00))
              ($SortWrappers.$FVF<next>To$Snap (sm@106@00 s@$ g0@10@00 g1@11@00)))
            ($SortWrappers.$FVF<next>To$Snap (sm@106@00 s@$ g0@10@00 g1@11@00))) g0@10@00))
        (=>
          (and
            (Set_in u g0@10@00)
            (and
              (Set_in v g0@10@00)
              (not
                (exists_path<Bool> ($$ (ite
                  (Set_in v g0@10@00)
                  (ite
                    (Set_in u g0@10@00)
                    ($SortWrappers.$FVF<next>To$Snap (sm@82@00 s@$ g0@10@00 g1@11@00))
                    ($SortWrappers.$FVF<next>To$Snap (sm@106@00 s@$ g0@10@00 g1@11@00)))
                  ($SortWrappers.$FVF<next>To$Snap (sm@106@00 s@$ g0@10@00 g1@11@00))) g0@10@00) u v))))
          (and
            (=>
              (and (Set_in u g0@10@00) (Set_in v g0@10@00))
              ($$%precondition ($SortWrappers.$FVF<next>To$Snap (sm@82@00 s@$ g0@10@00 g1@11@00)) g0@10@00))
            ($$%precondition (ite
              (and
                (Set_in u g0@10@00)
                (and
                  (Set_in v g0@10@00)
                  (exists_path<Bool> ($$ ($SortWrappers.$FVF<next>To$Snap (sm@82@00 s@$ g0@10@00 g1@11@00)) g0@10@00) u v)))
              ($SortWrappers.$FVF<next>To$Snap (sm@87@00 s@$ g0@10@00 g1@11@00))
              ($SortWrappers.$FVF<next>To$Snap (sm@111@00 s@$ g0@10@00 g1@11@00))) (Set_union g0@10@00 g1@11@00)))))
      :pattern ((Set_in u g0@10@00) (Set_in v g0@10@00))
      :pattern ((Set_in u g0@10@00) (exists_path<Bool> ($$ (ite
        (Set_in v g0@10@00)
        (ite
          (Set_in u g0@10@00)
          ($SortWrappers.$FVF<next>To$Snap (sm@82@00 s@$ g0@10@00 g1@11@00))
          ($SortWrappers.$FVF<next>To$Snap (sm@106@00 s@$ g0@10@00 g1@11@00)))
        ($SortWrappers.$FVF<next>To$Snap (sm@106@00 s@$ g0@10@00 g1@11@00))) g0@10@00) u v))
      :pattern ((Set_in u g0@10@00) (exists_path<Bool> ($$ (ite
        (and
          (Set_in u g0@10@00)
          (and
            (Set_in v g0@10@00)
            (exists_path<Bool> ($$ ($SortWrappers.$FVF<next>To$Snap (sm@82@00 s@$ g0@10@00 g1@11@00)) g0@10@00) u v)))
        ($SortWrappers.$FVF<next>To$Snap (sm@87@00 s@$ g0@10@00 g1@11@00))
        ($SortWrappers.$FVF<next>To$Snap (sm@111@00 s@$ g0@10@00 g1@11@00))) (Set_union g0@10@00 g1@11@00)) u v))
      :pattern ((Set_in v g0@10@00) (exists_path<Bool> ($$ (ite
        (Set_in v g0@10@00)
        (ite
          (Set_in u g0@10@00)
          ($SortWrappers.$FVF<next>To$Snap (sm@82@00 s@$ g0@10@00 g1@11@00))
          ($SortWrappers.$FVF<next>To$Snap (sm@106@00 s@$ g0@10@00 g1@11@00)))
        ($SortWrappers.$FVF<next>To$Snap (sm@106@00 s@$ g0@10@00 g1@11@00))) g0@10@00) u v))
      :pattern ((Set_in v g0@10@00) (exists_path<Bool> ($$ (ite
        (and
          (Set_in u g0@10@00)
          (and
            (Set_in v g0@10@00)
            (exists_path<Bool> ($$ ($SortWrappers.$FVF<next>To$Snap (sm@82@00 s@$ g0@10@00 g1@11@00)) g0@10@00) u v)))
        ($SortWrappers.$FVF<next>To$Snap (sm@87@00 s@$ g0@10@00 g1@11@00))
        ($SortWrappers.$FVF<next>To$Snap (sm@111@00 s@$ g0@10@00 g1@11@00))) (Set_union g0@10@00 g1@11@00)) u v))
      :pattern ((exists_path<Bool> ($$ (ite
        (Set_in v g0@10@00)
        (ite
          (Set_in u g0@10@00)
          ($SortWrappers.$FVF<next>To$Snap (sm@82@00 s@$ g0@10@00 g1@11@00))
          ($SortWrappers.$FVF<next>To$Snap (sm@106@00 s@$ g0@10@00 g1@11@00)))
        ($SortWrappers.$FVF<next>To$Snap (sm@106@00 s@$ g0@10@00 g1@11@00))) g0@10@00) u v))
      :pattern ((exists_path<Bool> ($$ (ite
        (and
          (Set_in u g0@10@00)
          (and
            (Set_in v g0@10@00)
            (exists_path<Bool> ($$ ($SortWrappers.$FVF<next>To$Snap (sm@82@00 s@$ g0@10@00 g1@11@00)) g0@10@00) u v)))
        ($SortWrappers.$FVF<next>To$Snap (sm@87@00 s@$ g0@10@00 g1@11@00))
        ($SortWrappers.$FVF<next>To$Snap (sm@111@00 s@$ g0@10@00 g1@11@00))) (Set_union g0@10@00 g1@11@00)) u v))
      ))))
  :pattern ((apply_TCFraming%limited s@$ g0@10@00 g1@11@00))
  :qid |quant-u-13748|)))
; WARNING: (10717,7): 'if' cannot be used in patterns.
; WARNING: (10717,7): 'if' cannot be used in patterns.
; WARNING: (10717,7): 'and' cannot be used in patterns.
; WARNING: (10717,7): 'and' cannot be used in patterns.
; WARNING: (10717,7): 'if' cannot be used in patterns.
; WARNING: (10717,7): 'if' cannot be used in patterns.
; WARNING: (10717,7): 'if' cannot be used in patterns.
; WARNING: (10717,7): 'and' cannot be used in patterns.
; WARNING: (10717,7): 'and' cannot be used in patterns.
; WARNING: (10717,7): 'if' cannot be used in patterns.
; WARNING: (10717,7): 'if' cannot be used in patterns.
; WARNING: (10717,7): 'if' cannot be used in patterns.
; WARNING: (10717,7): 'and' cannot be used in patterns.
; WARNING: (10717,7): 'and' cannot be used in patterns.
; WARNING: (10717,7): 'if' cannot be used in patterns.
(assert (forall ((s@$ $Snap) (g0@10@00 Set<$Ref>) (g1@11@00 Set<$Ref>)) (!
  (let ((result@12@00 (apply_TCFraming%limited s@$ g0@10@00 g1@11@00))) (=>
    (apply_TCFraming%precondition s@$ g0@10@00 g1@11@00)
    (forall ((u $Ref) (v $Ref)) (!
      (and
        (=>
          (and (Set_in u g1@11@00) (Set_in v g1@11@00))
          ($$%precondition (ite
            (Set_in v g1@11@00)
            (ite
              (Set_in u g1@11@00)
              ($SortWrappers.$FVF<next>To$Snap (sm@94@00 s@$ g0@10@00 g1@11@00))
              ($SortWrappers.$FVF<next>To$Snap (sm@118@00 s@$ g0@10@00 g1@11@00)))
            ($SortWrappers.$FVF<next>To$Snap (sm@118@00 s@$ g0@10@00 g1@11@00))) g1@11@00))
        (=>
          (and
            (Set_in u g1@11@00)
            (and
              (Set_in v g1@11@00)
              (not
                (exists_path<Bool> ($$ (ite
                  (Set_in v g1@11@00)
                  (ite
                    (Set_in u g1@11@00)
                    ($SortWrappers.$FVF<next>To$Snap (sm@94@00 s@$ g0@10@00 g1@11@00))
                    ($SortWrappers.$FVF<next>To$Snap (sm@118@00 s@$ g0@10@00 g1@11@00)))
                  ($SortWrappers.$FVF<next>To$Snap (sm@118@00 s@$ g0@10@00 g1@11@00))) g1@11@00) u v))))
          (and
            (=>
              (and (Set_in u g1@11@00) (Set_in v g1@11@00))
              ($$%precondition ($SortWrappers.$FVF<next>To$Snap (sm@94@00 s@$ g0@10@00 g1@11@00)) g1@11@00))
            ($$%precondition (ite
              (and
                (Set_in u g1@11@00)
                (and
                  (Set_in v g1@11@00)
                  (exists_path<Bool> ($$ ($SortWrappers.$FVF<next>To$Snap (sm@94@00 s@$ g0@10@00 g1@11@00)) g1@11@00) u v)))
              ($SortWrappers.$FVF<next>To$Snap (sm@99@00 s@$ g0@10@00 g1@11@00))
              ($SortWrappers.$FVF<next>To$Snap (sm@123@00 s@$ g0@10@00 g1@11@00))) (Set_union g1@11@00 g0@10@00)))))
      :pattern ((Set_in u g1@11@00) (Set_in v g1@11@00))
      :pattern ((Set_in u g1@11@00) (exists_path<Bool> ($$ (ite
        (Set_in v g1@11@00)
        (ite
          (Set_in u g1@11@00)
          ($SortWrappers.$FVF<next>To$Snap (sm@94@00 s@$ g0@10@00 g1@11@00))
          ($SortWrappers.$FVF<next>To$Snap (sm@118@00 s@$ g0@10@00 g1@11@00)))
        ($SortWrappers.$FVF<next>To$Snap (sm@118@00 s@$ g0@10@00 g1@11@00))) g1@11@00) u v))
      :pattern ((Set_in u g1@11@00) (exists_path<Bool> ($$ (ite
        (and
          (Set_in u g1@11@00)
          (and
            (Set_in v g1@11@00)
            (exists_path<Bool> ($$ ($SortWrappers.$FVF<next>To$Snap (sm@94@00 s@$ g0@10@00 g1@11@00)) g1@11@00) u v)))
        ($SortWrappers.$FVF<next>To$Snap (sm@99@00 s@$ g0@10@00 g1@11@00))
        ($SortWrappers.$FVF<next>To$Snap (sm@123@00 s@$ g0@10@00 g1@11@00))) (Set_union g1@11@00 g0@10@00)) u v))
      :pattern ((Set_in v g1@11@00) (exists_path<Bool> ($$ (ite
        (Set_in v g1@11@00)
        (ite
          (Set_in u g1@11@00)
          ($SortWrappers.$FVF<next>To$Snap (sm@94@00 s@$ g0@10@00 g1@11@00))
          ($SortWrappers.$FVF<next>To$Snap (sm@118@00 s@$ g0@10@00 g1@11@00)))
        ($SortWrappers.$FVF<next>To$Snap (sm@118@00 s@$ g0@10@00 g1@11@00))) g1@11@00) u v))
      :pattern ((Set_in v g1@11@00) (exists_path<Bool> ($$ (ite
        (and
          (Set_in u g1@11@00)
          (and
            (Set_in v g1@11@00)
            (exists_path<Bool> ($$ ($SortWrappers.$FVF<next>To$Snap (sm@94@00 s@$ g0@10@00 g1@11@00)) g1@11@00) u v)))
        ($SortWrappers.$FVF<next>To$Snap (sm@99@00 s@$ g0@10@00 g1@11@00))
        ($SortWrappers.$FVF<next>To$Snap (sm@123@00 s@$ g0@10@00 g1@11@00))) (Set_union g1@11@00 g0@10@00)) u v))
      :pattern ((exists_path<Bool> ($$ (ite
        (Set_in v g1@11@00)
        (ite
          (Set_in u g1@11@00)
          ($SortWrappers.$FVF<next>To$Snap (sm@94@00 s@$ g0@10@00 g1@11@00))
          ($SortWrappers.$FVF<next>To$Snap (sm@118@00 s@$ g0@10@00 g1@11@00)))
        ($SortWrappers.$FVF<next>To$Snap (sm@118@00 s@$ g0@10@00 g1@11@00))) g1@11@00) u v))
      :pattern ((exists_path<Bool> ($$ (ite
        (and
          (Set_in u g1@11@00)
          (and
            (Set_in v g1@11@00)
            (exists_path<Bool> ($$ ($SortWrappers.$FVF<next>To$Snap (sm@94@00 s@$ g0@10@00 g1@11@00)) g1@11@00) u v)))
        ($SortWrappers.$FVF<next>To$Snap (sm@99@00 s@$ g0@10@00 g1@11@00))
        ($SortWrappers.$FVF<next>To$Snap (sm@123@00 s@$ g0@10@00 g1@11@00))) (Set_union g1@11@00 g0@10@00)) u v))
      ))))
  :pattern ((apply_TCFraming%limited s@$ g0@10@00 g1@11@00))
  :qid |quant-u-13749|)))
; WARNING: (10805,7): 'if' cannot be used in patterns.
; WARNING: (10805,7): 'if' cannot be used in patterns.
; WARNING: (10805,7): 'and' cannot be used in patterns.
; WARNING: (10805,7): 'and' cannot be used in patterns.
; WARNING: (10805,7): 'if' cannot be used in patterns.
; WARNING: (10805,7): 'if' cannot be used in patterns.
; WARNING: (10805,7): 'if' cannot be used in patterns.
; WARNING: (10805,7): 'and' cannot be used in patterns.
; WARNING: (10805,7): 'and' cannot be used in patterns.
; WARNING: (10805,7): 'if' cannot be used in patterns.
; WARNING: (10805,7): 'if' cannot be used in patterns.
; WARNING: (10805,7): 'if' cannot be used in patterns.
; WARNING: (10805,7): 'and' cannot be used in patterns.
; WARNING: (10805,7): 'and' cannot be used in patterns.
; WARNING: (10805,7): 'if' cannot be used in patterns.
