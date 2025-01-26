(get-info :version)
; (:version "4.12.1")
; Started: 2025-01-26 21:36:54
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
(declare-sort Seq<$Ref> 0)
(declare-sort Set<$Ref> 0)
(declare-sort Set<Int> 0)
(declare-sort Set<IEdges> 0)
(declare-sort Set<$Snap> 0)
(declare-sort IEdges 0)
(declare-sort INodeMap 0)
(declare-sort $FVF<val> 0)
(declare-sort $FVF<edges> 0)
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
(declare-fun $SortWrappers.Seq<$Ref>To$Snap (Seq<$Ref>) $Snap)
(declare-fun $SortWrappers.$SnapToSeq<$Ref> ($Snap) Seq<$Ref>)
(assert (forall ((x Seq<$Ref>)) (!
    (= x ($SortWrappers.$SnapToSeq<$Ref>($SortWrappers.Seq<$Ref>To$Snap x)))
    :pattern (($SortWrappers.Seq<$Ref>To$Snap x))
    :qid |$Snap.$SnapToSeq<$Ref>To$Snap|
    )))
(assert (forall ((x $Snap)) (!
    (= x ($SortWrappers.Seq<$Ref>To$Snap($SortWrappers.$SnapToSeq<$Ref> x)))
    :pattern (($SortWrappers.$SnapToSeq<$Ref> x))
    :qid |$Snap.Seq<$Ref>To$SnapToSeq<$Ref>|
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
(declare-fun $SortWrappers.Set<IEdges>To$Snap (Set<IEdges>) $Snap)
(declare-fun $SortWrappers.$SnapToSet<IEdges> ($Snap) Set<IEdges>)
(assert (forall ((x Set<IEdges>)) (!
    (= x ($SortWrappers.$SnapToSet<IEdges>($SortWrappers.Set<IEdges>To$Snap x)))
    :pattern (($SortWrappers.Set<IEdges>To$Snap x))
    :qid |$Snap.$SnapToSet<IEdges>To$Snap|
    )))
(assert (forall ((x $Snap)) (!
    (= x ($SortWrappers.Set<IEdges>To$Snap($SortWrappers.$SnapToSet<IEdges> x)))
    :pattern (($SortWrappers.$SnapToSet<IEdges> x))
    :qid |$Snap.Set<IEdges>To$SnapToSet<IEdges>|
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
(declare-fun $SortWrappers.IEdgesTo$Snap (IEdges) $Snap)
(declare-fun $SortWrappers.$SnapToIEdges ($Snap) IEdges)
(assert (forall ((x IEdges)) (!
    (= x ($SortWrappers.$SnapToIEdges($SortWrappers.IEdgesTo$Snap x)))
    :pattern (($SortWrappers.IEdgesTo$Snap x))
    :qid |$Snap.$SnapToIEdgesTo$Snap|
    )))
(assert (forall ((x $Snap)) (!
    (= x ($SortWrappers.IEdgesTo$Snap($SortWrappers.$SnapToIEdges x)))
    :pattern (($SortWrappers.$SnapToIEdges x))
    :qid |$Snap.IEdgesTo$SnapToIEdges|
    )))
(declare-fun $SortWrappers.INodeMapTo$Snap (INodeMap) $Snap)
(declare-fun $SortWrappers.$SnapToINodeMap ($Snap) INodeMap)
(assert (forall ((x INodeMap)) (!
    (= x ($SortWrappers.$SnapToINodeMap($SortWrappers.INodeMapTo$Snap x)))
    :pattern (($SortWrappers.INodeMapTo$Snap x))
    :qid |$Snap.$SnapToINodeMapTo$Snap|
    )))
(assert (forall ((x $Snap)) (!
    (= x ($SortWrappers.INodeMapTo$Snap($SortWrappers.$SnapToINodeMap x)))
    :pattern (($SortWrappers.$SnapToINodeMap x))
    :qid |$Snap.INodeMapTo$SnapToINodeMap|
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
(declare-fun $SortWrappers.$FVF<edges>To$Snap ($FVF<edges>) $Snap)
(declare-fun $SortWrappers.$SnapTo$FVF<edges> ($Snap) $FVF<edges>)
(assert (forall ((x $FVF<edges>)) (!
    (= x ($SortWrappers.$SnapTo$FVF<edges>($SortWrappers.$FVF<edges>To$Snap x)))
    :pattern (($SortWrappers.$FVF<edges>To$Snap x))
    :qid |$Snap.$SnapTo$FVF<edges>To$Snap|
    )))
(assert (forall ((x $Snap)) (!
    (= x ($SortWrappers.$FVF<edges>To$Snap($SortWrappers.$SnapTo$FVF<edges> x)))
    :pattern (($SortWrappers.$SnapTo$FVF<edges> x))
    :qid |$Snap.$FVF<edges>To$SnapTo$FVF<edges>|
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
(declare-fun Set_card (Set<IEdges>) Int)
(declare-const Set_empty Set<IEdges>)
(declare-fun Set_in (IEdges Set<IEdges>) Bool)
(declare-fun Set_singleton (IEdges) Set<IEdges>)
(declare-fun Set_unionone (Set<IEdges> IEdges) Set<IEdges>)
(declare-fun Set_union (Set<IEdges> Set<IEdges>) Set<IEdges>)
(declare-fun Set_intersection (Set<IEdges> Set<IEdges>) Set<IEdges>)
(declare-fun Set_difference (Set<IEdges> Set<IEdges>) Set<IEdges>)
(declare-fun Set_subset (Set<IEdges> Set<IEdges>) Bool)
(declare-fun Set_equal (Set<IEdges> Set<IEdges>) Bool)
(declare-fun Set_skolem_diff (Set<IEdges> Set<IEdges>) IEdges)
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
(declare-fun Seq_length (Seq<$Ref>) Int)
(declare-const Seq_empty Seq<$Ref>)
(declare-fun Seq_singleton ($Ref) Seq<$Ref>)
(declare-fun Seq_append (Seq<$Ref> Seq<$Ref>) Seq<$Ref>)
(declare-fun Seq_index (Seq<$Ref> Int) $Ref)
(declare-fun Seq_add (Int Int) Int)
(declare-fun Seq_sub (Int Int) Int)
(declare-fun Seq_update (Seq<$Ref> Int $Ref) Seq<$Ref>)
(declare-fun Seq_take (Seq<$Ref> Int) Seq<$Ref>)
(declare-fun Seq_drop (Seq<$Ref> Int) Seq<$Ref>)
(declare-fun Seq_contains (Seq<$Ref> $Ref) Bool)
(declare-fun Seq_contains_trigger (Seq<$Ref> $Ref) Bool)
(declare-fun Seq_skolem (Seq<$Ref> $Ref) Int)
(declare-fun Seq_equal (Seq<$Ref> Seq<$Ref>) Bool)
(declare-fun Seq_skolem_diff (Seq<$Ref> Seq<$Ref>) Int)
(declare-fun edge_lookup<Ref> (IEdges Int) $Ref)
(declare-fun has_edge<Bool> (IEdges Int) Bool)
(declare-fun insert_edge<IEdges> (IEdges Int $Ref) IEdges)
(declare-fun edges_domain<Set<Int>> (IEdges) Set<Int>)
(declare-const empty_edges<IEdges> IEdges)
(declare-fun lookup<Ref> (INodeMap $Ref) $Ref)
(declare-fun has_node<Bool> (INodeMap $Ref) Bool)
(declare-fun insert<INodeMap> (INodeMap $Ref $Ref) INodeMap)
(declare-fun map_domain<Seq<Ref>> (INodeMap) Seq<$Ref>)
(declare-const empty_map<INodeMap> INodeMap)
; /field_value_functions_declarations.smt2 [val: Int]
(declare-fun $FVF.domain_val ($FVF<val>) Set<$Ref>)
(declare-fun $FVF.lookup_val ($FVF<val> $Ref) Int)
(declare-fun $FVF.after_val ($FVF<val> $FVF<val>) Bool)
(declare-fun $FVF.loc_val (Int $Ref) Bool)
(declare-fun $FVF.perm_val ($FPM $Ref) $Perm)
(declare-const $fvfTOP_val $FVF<val>)
; /field_value_functions_declarations.smt2 [edges: IEdges]
(declare-fun $FVF.domain_edges ($FVF<edges>) Set<$Ref>)
(declare-fun $FVF.lookup_edges ($FVF<edges> $Ref) IEdges)
(declare-fun $FVF.after_edges ($FVF<edges> $FVF<edges>) Bool)
(declare-fun $FVF.loc_edges (IEdges $Ref) Bool)
(declare-fun $FVF.perm_edges ($FPM $Ref) $Perm)
(declare-const $fvfTOP_edges $FVF<edges>)
; Declaring symbols related to program functions (from program analysis)
; Snapshot variable to be used during function verification
(declare-fun s@$ () $Snap)
; Declaring predicate trigger functions
; ////////// Uniqueness assumptions from domains
; ////////// Axioms
(assert (forall ((s Seq<$Ref>)) (!
  (<= 0 (Seq_length s))
  :pattern ((Seq_length s))
  )))
(assert (= (Seq_length (as Seq_empty  Seq<$Ref>)) 0))
(assert (forall ((s Seq<$Ref>)) (!
  (=> (= (Seq_length s) 0) (= s (as Seq_empty  Seq<$Ref>)))
  :pattern ((Seq_length s))
  )))
(assert (forall ((e $Ref)) (!
  (= (Seq_length (Seq_singleton e)) 1)
  :pattern ((Seq_singleton e))
  )))
(assert (forall ((s0 Seq<$Ref>) (s1 Seq<$Ref>)) (!
  (=>
    (and
      (not (= s0 (as Seq_empty  Seq<$Ref>)))
      (not (= s1 (as Seq_empty  Seq<$Ref>))))
    (= (Seq_length (Seq_append s0 s1)) (+ (Seq_length s0) (Seq_length s1))))
  :pattern ((Seq_length (Seq_append s0 s1)))
  )))
(assert (forall ((s0 Seq<$Ref>) (s1 Seq<$Ref>)) (!
  (and
    (=> (= s0 (as Seq_empty  Seq<$Ref>)) (= (Seq_append s0 s1) s1))
    (=> (= s1 (as Seq_empty  Seq<$Ref>)) (= (Seq_append s0 s1) s0)))
  :pattern ((Seq_append s0 s1))
  )))
(assert (forall ((e $Ref)) (!
  (= (Seq_index (Seq_singleton e) 0) e)
  :pattern ((Seq_singleton e))
  )))
(assert (forall ((i Int) (j Int)) (!
  (= (Seq_add i j) (+ i j))
  :pattern ((Seq_add i j))
  )))
(assert (forall ((i Int) (j Int)) (!
  (= (Seq_sub i j) (- i j))
  :pattern ((Seq_sub i j))
  )))
(assert (forall ((s0 Seq<$Ref>) (s1 Seq<$Ref>) (n Int)) (!
  (=>
    (and
      (not (= s0 (as Seq_empty  Seq<$Ref>)))
      (and
        (not (= s1 (as Seq_empty  Seq<$Ref>)))
        (and (<= 0 n) (< n (Seq_length s0)))))
    (= (Seq_index (Seq_append s0 s1) n) (Seq_index s0 n)))
  :pattern ((Seq_index (Seq_append s0 s1) n))
  :pattern ((Seq_index s0 n) (Seq_append s0 s1))
  )))
(assert (forall ((s0 Seq<$Ref>) (s1 Seq<$Ref>) (n Int)) (!
  (=>
    (and
      (not (= s0 (as Seq_empty  Seq<$Ref>)))
      (and
        (not (= s1 (as Seq_empty  Seq<$Ref>)))
        (and (<= (Seq_length s0) n) (< n (Seq_length (Seq_append s0 s1))))))
    (and
      (= (Seq_add (Seq_sub n (Seq_length s0)) (Seq_length s0)) n)
      (=
        (Seq_index (Seq_append s0 s1) n)
        (Seq_index s1 (Seq_sub n (Seq_length s0))))))
  :pattern ((Seq_index (Seq_append s0 s1) n))
  )))
(assert (forall ((s0 Seq<$Ref>) (s1 Seq<$Ref>) (m Int)) (!
  (=>
    (and
      (not (= s0 (as Seq_empty  Seq<$Ref>)))
      (and
        (not (= s1 (as Seq_empty  Seq<$Ref>)))
        (and (<= 0 m) (< m (Seq_length s1)))))
    (and
      (= (Seq_sub (Seq_add m (Seq_length s0)) (Seq_length s0)) m)
      (=
        (Seq_index (Seq_append s0 s1) (Seq_add m (Seq_length s0)))
        (Seq_index s1 m))))
  :pattern ((Seq_index s1 m) (Seq_append s0 s1))
  )))
(assert (forall ((s Seq<$Ref>) (i Int) (v $Ref)) (!
  (=>
    (and (<= 0 i) (< i (Seq_length s)))
    (= (Seq_length (Seq_update s i v)) (Seq_length s)))
  :pattern ((Seq_length (Seq_update s i v)))
  :pattern ((Seq_length s) (Seq_update s i v))
  )))
(assert (forall ((s Seq<$Ref>) (i Int) (v $Ref) (n Int)) (!
  (=>
    (and (<= 0 n) (< n (Seq_length s)))
    (and
      (=> (= i n) (= (Seq_index (Seq_update s i v) n) v))
      (=> (not (= i n)) (= (Seq_index (Seq_update s i v) n) (Seq_index s n)))))
  :pattern ((Seq_index (Seq_update s i v) n))
  :pattern ((Seq_index s n) (Seq_update s i v))
  )))
(assert (forall ((s Seq<$Ref>) (n Int)) (!
  (and
    (=>
      (<= 0 n)
      (and
        (=> (<= n (Seq_length s)) (= (Seq_length (Seq_take s n)) n))
        (=> (< (Seq_length s) n) (= (Seq_length (Seq_take s n)) (Seq_length s)))))
    (=> (< n 0) (= (Seq_length (Seq_take s n)) 0)))
  :pattern ((Seq_length (Seq_take s n)))
  :pattern ((Seq_take s n) (Seq_length s))
  )))
(assert (forall ((s Seq<$Ref>) (n Int) (j Int)) (!
  (=>
    (and (<= 0 j) (and (< j n) (< j (Seq_length s))))
    (= (Seq_index (Seq_take s n) j) (Seq_index s j)))
  :pattern ((Seq_index (Seq_take s n) j))
  :pattern ((Seq_index s j) (Seq_take s n))
  )))
(assert (forall ((s Seq<$Ref>) (n Int)) (!
  (and
    (=>
      (<= 0 n)
      (and
        (=>
          (<= n (Seq_length s))
          (= (Seq_length (Seq_drop s n)) (- (Seq_length s) n)))
        (=> (< (Seq_length s) n) (= (Seq_length (Seq_drop s n)) 0))))
    (=> (< n 0) (= (Seq_length (Seq_drop s n)) (Seq_length s))))
  :pattern ((Seq_length (Seq_drop s n)))
  :pattern ((Seq_length s) (Seq_drop s n))
  )))
(assert (forall ((s Seq<$Ref>) (n Int) (j Int)) (!
  (=>
    (and (< 0 n) (and (<= 0 j) (< j (- (Seq_length s) n))))
    (and
      (= (Seq_sub (Seq_add j n) n) j)
      (= (Seq_index (Seq_drop s n) j) (Seq_index s (Seq_add j n)))))
  :pattern ((Seq_index (Seq_drop s n) j))
  )))
(assert (forall ((s Seq<$Ref>) (n Int) (i Int)) (!
  (=>
    (and (< 0 n) (and (<= n i) (< i (Seq_length s))))
    (and
      (= (Seq_add (Seq_sub i n) n) i)
      (= (Seq_index (Seq_drop s n) (Seq_sub i n)) (Seq_index s i))))
  :pattern ((Seq_drop s n) (Seq_index s i))
  )))
(assert (forall ((s Seq<$Ref>) (t Seq<$Ref>) (n Int)) (!
  (=>
    (and (< 0 n) (<= n (Seq_length s)))
    (= (Seq_take (Seq_append s t) n) (Seq_take s n)))
  :pattern ((Seq_take (Seq_append s t) n))
  )))
(assert (forall ((s Seq<$Ref>) (t Seq<$Ref>) (n Int)) (!
  (=>
    (and (> n 0) (and (> n (Seq_length s)) (< n (Seq_length (Seq_append s t)))))
    (and
      (= (Seq_add (Seq_sub n (Seq_length s)) (Seq_length s)) n)
      (=
        (Seq_take (Seq_append s t) n)
        (Seq_append s (Seq_take t (Seq_sub n (Seq_length s)))))))
  :pattern ((Seq_take (Seq_append s t) n))
  )))
(assert (forall ((s Seq<$Ref>) (t Seq<$Ref>) (n Int)) (!
  (=>
    (and (< 0 n) (<= n (Seq_length s)))
    (= (Seq_drop (Seq_append s t) n) (Seq_append (Seq_drop s n) t)))
  :pattern ((Seq_drop (Seq_append s t) n))
  )))
(assert (forall ((s Seq<$Ref>) (t Seq<$Ref>) (n Int)) (!
  (=>
    (and (> n 0) (> n (Seq_length s)))
    (and
      (= (Seq_add (Seq_sub n (Seq_length s)) (Seq_length s)) n)
      (= (Seq_drop (Seq_append s t) n) (Seq_drop t (Seq_sub n (Seq_length s))))))
  :pattern ((Seq_drop (Seq_append s t) n))
  )))
(assert (forall ((s Seq<$Ref>) (n Int)) (!
  (=> (<= n 0) (= (Seq_take s n) (as Seq_empty  Seq<$Ref>)))
  :pattern ((Seq_take s n))
  )))
(assert (forall ((s Seq<$Ref>) (n Int)) (!
  (=> (<= n 0) (= (Seq_drop s n) s))
  :pattern ((Seq_drop s n))
  )))
(assert (forall ((s Seq<$Ref>) (n Int)) (!
  (=> (>= n (Seq_length s)) (= (Seq_take s n) s))
  :pattern ((Seq_take s n))
  )))
(assert (forall ((s Seq<$Ref>) (n Int)) (!
  (=> (>= n (Seq_length s)) (= (Seq_drop s n) (as Seq_empty  Seq<$Ref>)))
  :pattern ((Seq_drop s n))
  )))
(assert (forall ((s Seq<$Ref>) (x $Ref)) (!
  (=>
    (Seq_contains s x)
    (and
      (<= 0 (Seq_skolem s x))
      (and
        (< (Seq_skolem s x) (Seq_length s))
        (= (Seq_index s (Seq_skolem s x)) x))))
  :pattern ((Seq_contains s x))
  )))
(assert (forall ((s Seq<$Ref>) (x $Ref) (i Int)) (!
  (=>
    (and (<= 0 i) (and (< i (Seq_length s)) (= (Seq_index s i) x)))
    (Seq_contains s x))
  :pattern ((Seq_contains s x) (Seq_index s i))
  )))
(assert (forall ((s Seq<$Ref>) (i Int)) (!
  (=>
    (and (<= 0 i) (< i (Seq_length s)))
    (Seq_contains_trigger s (Seq_index s i)))
  :pattern ((Seq_index s i))
  )))
(assert (forall ((s0 Seq<$Ref>) (s1 Seq<$Ref>)) (!
  (or
    (and (= s0 s1) (Seq_equal s0 s1))
    (or
      (and
        (not (= s0 s1))
        (and (not (Seq_equal s0 s1)) (not (= (Seq_length s0) (Seq_length s1)))))
      (and
        (not (= s0 s1))
        (and
          (not (Seq_equal s0 s1))
          (and
            (= (Seq_length s0) (Seq_length s1))
            (and
              (= (Seq_skolem_diff s0 s1) (Seq_skolem_diff s1 s0))
              (and
                (<= 0 (Seq_skolem_diff s0 s1))
                (and
                  (< (Seq_skolem_diff s0 s1) (Seq_length s0))
                  (not
                    (=
                      (Seq_index s0 (Seq_skolem_diff s0 s1))
                      (Seq_index s1 (Seq_skolem_diff s0 s1))))))))))))
  :pattern ((Seq_equal s0 s1))
  )))
(assert (forall ((a Seq<$Ref>) (b Seq<$Ref>)) (!
  (=> (Seq_equal a b) (= a b))
  :pattern ((Seq_equal a b))
  )))
(assert (forall ((x $Ref) (y $Ref)) (!
  (= (Seq_contains (Seq_singleton x) y) (= x y))
  :pattern ((Seq_contains (Seq_singleton x) y))
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
(assert (forall ((s Set<IEdges>)) (!
  (<= 0 (Set_card s))
  :pattern ((Set_card s))
  )))
(assert (forall ((o IEdges)) (!
  (not (Set_in o (as Set_empty  Set<IEdges>)))
  :pattern ((Set_in o (as Set_empty  Set<IEdges>)))
  )))
(assert (forall ((s Set<IEdges>)) (!
  (and
    (=> (= (Set_card s) 0) (= s (as Set_empty  Set<IEdges>)))
    (=> (not (= (Set_card s) 0)) (exists ((x IEdges))  (Set_in x s))))
  :pattern ((Set_card s))
  )))
(assert (forall ((r IEdges)) (!
  (Set_in r (Set_singleton r))
  :pattern ((Set_singleton r))
  )))
(assert (forall ((r IEdges) (o IEdges)) (!
  (= (Set_in o (Set_singleton r)) (= r o))
  :pattern ((Set_in o (Set_singleton r)))
  )))
(assert (forall ((r IEdges)) (!
  (= (Set_card (Set_singleton r)) 1)
  :pattern ((Set_card (Set_singleton r)))
  )))
(assert (forall ((a Set<IEdges>) (x IEdges) (o IEdges)) (!
  (= (Set_in o (Set_unionone a x)) (or (= o x) (Set_in o a)))
  :pattern ((Set_in o (Set_unionone a x)))
  )))
(assert (forall ((a Set<IEdges>) (x IEdges)) (!
  (Set_in x (Set_unionone a x))
  :pattern ((Set_unionone a x))
  )))
(assert (forall ((a Set<IEdges>) (x IEdges) (y IEdges)) (!
  (=> (Set_in y a) (Set_in y (Set_unionone a x)))
  :pattern ((Set_unionone a x) (Set_in y a))
  )))
(assert (forall ((a Set<IEdges>) (x IEdges)) (!
  (=> (Set_in x a) (= (Set_card (Set_unionone a x)) (Set_card a)))
  :pattern ((Set_card (Set_unionone a x)))
  )))
(assert (forall ((a Set<IEdges>) (x IEdges)) (!
  (=> (not (Set_in x a)) (= (Set_card (Set_unionone a x)) (+ (Set_card a) 1)))
  :pattern ((Set_card (Set_unionone a x)))
  )))
(assert (forall ((a Set<IEdges>) (b Set<IEdges>) (o IEdges)) (!
  (= (Set_in o (Set_union a b)) (or (Set_in o a) (Set_in o b)))
  :pattern ((Set_in o (Set_union a b)))
  )))
(assert (forall ((a Set<IEdges>) (b Set<IEdges>) (y IEdges)) (!
  (=> (Set_in y a) (Set_in y (Set_union a b)))
  :pattern ((Set_union a b) (Set_in y a))
  )))
(assert (forall ((a Set<IEdges>) (b Set<IEdges>) (y IEdges)) (!
  (=> (Set_in y b) (Set_in y (Set_union a b)))
  :pattern ((Set_union a b) (Set_in y b))
  )))
(assert (forall ((a Set<IEdges>) (b Set<IEdges>) (o IEdges)) (!
  (= (Set_in o (Set_intersection a b)) (and (Set_in o a) (Set_in o b)))
  :pattern ((Set_in o (Set_intersection a b)))
  :pattern ((Set_intersection a b) (Set_in o a))
  :pattern ((Set_intersection a b) (Set_in o b))
  )))
(assert (forall ((a Set<IEdges>) (b Set<IEdges>)) (!
  (= (Set_union (Set_union a b) b) (Set_union a b))
  :pattern ((Set_union (Set_union a b) b))
  )))
(assert (forall ((a Set<IEdges>) (b Set<IEdges>)) (!
  (= (Set_union a (Set_union a b)) (Set_union a b))
  :pattern ((Set_union a (Set_union a b)))
  )))
(assert (forall ((a Set<IEdges>) (b Set<IEdges>)) (!
  (= (Set_intersection (Set_intersection a b) b) (Set_intersection a b))
  :pattern ((Set_intersection (Set_intersection a b) b))
  )))
(assert (forall ((a Set<IEdges>) (b Set<IEdges>)) (!
  (= (Set_intersection a (Set_intersection a b)) (Set_intersection a b))
  :pattern ((Set_intersection a (Set_intersection a b)))
  )))
(assert (forall ((a Set<IEdges>) (b Set<IEdges>)) (!
  (=
    (+ (Set_card (Set_union a b)) (Set_card (Set_intersection a b)))
    (+ (Set_card a) (Set_card b)))
  :pattern ((Set_card (Set_union a b)))
  :pattern ((Set_card (Set_intersection a b)))
  )))
(assert (forall ((a Set<IEdges>) (b Set<IEdges>) (o IEdges)) (!
  (= (Set_in o (Set_difference a b)) (and (Set_in o a) (not (Set_in o b))))
  :pattern ((Set_in o (Set_difference a b)))
  :pattern ((Set_difference a b) (Set_in o a))
  )))
(assert (forall ((a Set<IEdges>) (b Set<IEdges>) (y IEdges)) (!
  (=> (Set_in y b) (not (Set_in y (Set_difference a b))))
  :pattern ((Set_difference a b) (Set_in y b))
  )))
(assert (forall ((a Set<IEdges>) (b Set<IEdges>)) (!
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
(assert (forall ((a Set<IEdges>) (b Set<IEdges>)) (!
  (=
    (Set_subset a b)
    (forall ((o IEdges)) (!
      (=> (Set_in o a) (Set_in o b))
      :pattern ((Set_in o a))
      :pattern ((Set_in o b))
      )))
  :pattern ((Set_subset a b))
  )))
(assert (forall ((a Set<IEdges>) (b Set<IEdges>)) (!
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
(assert (forall ((a Set<IEdges>) (b Set<IEdges>)) (!
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
(assert (forall ((e IEdges) (i Int) (node $Ref)) (!
  (= (edge_lookup<Ref> (insert_edge<IEdges> e i node) i) node)
  :pattern ((edge_lookup<Ref> (insert_edge<IEdges> e i node) i))
  :qid |prog.inserted_edge_present|)))
(assert (forall ((e IEdges) (i Int) (node $Ref) (j Int)) (!
  (=>
    (not (= i j))
    (=
      (edge_lookup<Ref> e j)
      (edge_lookup<Ref> (insert_edge<IEdges> e i node) j)))
  :pattern ((edge_lookup<Ref> e j) (insert_edge<IEdges> e i node))
  :pattern ((edge_lookup<Ref> e j) (edge_lookup<Ref> (insert_edge<IEdges> e i node) j))
  :pattern ((edge_lookup<Ref> (insert_edge<IEdges> e i node) j))
  :qid |prog.other_edges_preserved_after_insertion|)))
(assert (forall ((e IEdges) (i Int) (node $Ref)) (!
  (has_edge<Bool> (insert_edge<IEdges> e i node) i)
  :pattern ((has_edge<Bool> (insert_edge<IEdges> e i node) i))
  :qid |prog.inserted_edge_defined|)))
(assert (forall ((e IEdges) (i Int)) (!
  (= (has_edge<Bool> e i) (not (= (edge_lookup<Ref> e i) $Ref.null)))
  :pattern ((has_edge<Bool> e i))
  :pattern ((edge_lookup<Ref> e i))
  :qid |prog.has_edge_complete|)))
(assert (forall ((e IEdges) (i Int)) (!
  (= (Set_in i (edges_domain<Set<Int>> e)) (has_edge<Bool> e i))
  :pattern ((edges_domain<Set<Int>> e) (has_edge<Bool> e i))
  :pattern ((Set_in i (edges_domain<Set<Int>> e)))
  :pattern ((has_edge<Bool> e i))
  :qid |prog.edges_domain_defined|)))
(assert (forall ((i Int)) (!
  (not (has_edge<Bool> (as empty_edges<IEdges>  IEdges) i))
  :pattern ((has_edge<Bool> (as empty_edges<IEdges>  IEdges) i))
  :qid |prog.empty_edges_has_no_nodes|)))
(assert (forall ((node_map INodeMap) (key_node $Ref) (val_node $Ref)) (!
  (=
    (lookup<Ref> (insert<INodeMap> node_map key_node val_node) key_node)
    val_node)
  :pattern ((lookup<Ref> (insert<INodeMap> node_map key_node val_node) key_node))
  :qid |prog.inserted_node_present|)))
(assert (forall ((node_map INodeMap) (key_node $Ref) (val_node $Ref) (node $Ref)) (!
  (=>
    (not (= node key_node))
    (=
      (lookup<Ref> node_map node)
      (lookup<Ref> (insert<INodeMap> node_map key_node val_node) node)))
  :pattern ((lookup<Ref> node_map node) (insert<INodeMap> node_map key_node val_node))
  :pattern ((lookup<Ref> node_map node) (lookup<Ref> (insert<INodeMap> node_map key_node val_node) node))
  :pattern ((lookup<Ref> (insert<INodeMap> node_map key_node val_node) node))
  :qid |prog.other_nodes_preserved_after_insertion|)))
(assert (forall ((node_map INodeMap) (key_node $Ref) (val_node $Ref)) (!
  (has_node<Bool> (insert<INodeMap> node_map key_node val_node) key_node)
  :pattern ((has_node<Bool> (insert<INodeMap> node_map key_node val_node) key_node))
  :qid |prog.inserted_node_defined|)))
(assert (forall ((node_map INodeMap) (node $Ref)) (!
  (=
    (has_node<Bool> node_map node)
    (not (= (lookup<Ref> node_map node) $Ref.null)))
  :pattern ((has_node<Bool> node_map node))
  :pattern ((lookup<Ref> node_map node))
  :qid |prog.has_node_complete|)))
(assert (forall ((node_map INodeMap) (key $Ref)) (!
  (=
    (Seq_contains (map_domain<Seq<Ref>> node_map) key)
    (has_node<Bool> node_map key))
  :pattern ((map_domain<Seq<Ref>> node_map) (has_node<Bool> node_map key))
  :pattern ((Seq_contains (map_domain<Seq<Ref>> node_map) key))
  :pattern ((Seq_contains_trigger (map_domain<Seq<Ref>> node_map) key))
  :pattern ((Seq_contains_trigger (map_domain<Seq<Ref>> node_map) key))
  :pattern ((has_node<Bool> node_map key))
  :qid |prog.domain_is_defined|)))
(assert (forall ((node $Ref)) (!
  (not (has_node<Bool> (as empty_map<INodeMap>  INodeMap) node))
  :pattern ((has_node<Bool> (as empty_map<INodeMap>  INodeMap) node))
  :qid |prog.empty_map_has_no_nodes|)))
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
; /field_value_functions_axioms.smt2 [edges: IEdges]
(assert (forall ((vs $FVF<edges>) (ws $FVF<edges>)) (!
    (=>
      (and
        (Set_equal ($FVF.domain_edges vs) ($FVF.domain_edges ws))
        (forall ((x $Ref)) (!
          (=>
            (Set_in x ($FVF.domain_edges vs))
            (= ($FVF.lookup_edges vs x) ($FVF.lookup_edges ws x)))
          :pattern (($FVF.lookup_edges vs x) ($FVF.lookup_edges ws x))
          :qid |qp.$FVF<edges>-eq-inner|
          )))
      (= vs ws))
    :pattern (($SortWrappers.$FVF<edges>To$Snap vs)
              ($SortWrappers.$FVF<edges>To$Snap ws)
              )
    :qid |qp.$FVF<edges>-eq-outer|
    )))
(assert (forall ((r $Ref) (pm $FPM)) (!
    ($Perm.isValidVar ($FVF.perm_edges pm r))
    :pattern (($FVF.perm_edges pm r)))))
(assert (forall ((r $Ref) (f IEdges)) (!
    (= ($FVF.loc_edges f r) true)
    :pattern (($FVF.loc_edges f r)))))
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
; ---------- graph_copy_rec ----------
(declare-const this@0@01 $Ref)
(declare-const node_map@1@01 INodeMap)
(declare-const setOfRef@2@01 Set<$Ref>)
(declare-const node_map_image@3@01 Set<$Ref>)
(declare-const rd@4@01 $Perm)
(declare-const nodeCopy@5@01 $Ref)
(declare-const res_node_map@6@01 INodeMap)
(declare-const res_copy_nodes@7@01 Set<$Ref>)
(declare-const this@8@01 $Ref)
(declare-const node_map@9@01 INodeMap)
(declare-const setOfRef@10@01 Set<$Ref>)
(declare-const node_map_image@11@01 Set<$Ref>)
(declare-const rd@12@01 $Perm)
(declare-const nodeCopy@13@01 $Ref)
(declare-const res_node_map@14@01 INodeMap)
(declare-const res_copy_nodes@15@01 Set<$Ref>)
(set-option :timeout 0)
(push) ; 1
(declare-const $t@16@01 $Snap)
(assert (= $t@16@01 ($Snap.combine ($Snap.first $t@16@01) ($Snap.second $t@16@01))))
(assert (= ($Snap.first $t@16@01) $Snap.unit))
; [eval] none < rd
(assert (< $Perm.No rd@12@01))
(assert (=
  ($Snap.second $t@16@01)
  ($Snap.combine
    ($Snap.first ($Snap.second $t@16@01))
    ($Snap.second ($Snap.second $t@16@01)))))
(assert (= ($Snap.first ($Snap.second $t@16@01)) $Snap.unit))
; [eval] this != null
(assert (not (= this@8@01 $Ref.null)))
(assert (=
  ($Snap.second ($Snap.second $t@16@01))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second $t@16@01)))
    ($Snap.second ($Snap.second ($Snap.second $t@16@01))))))
(assert (= ($Snap.first ($Snap.second ($Snap.second $t@16@01))) $Snap.unit))
; [eval] (this in setOfRef)
(assert (Set_in this@8@01 setOfRef@10@01))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second $t@16@01)))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@16@01))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@16@01)))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@16@01))))
  $Snap.unit))
; [eval] |(setOfRef intersection node_map_image)| == 0
; [eval] |(setOfRef intersection node_map_image)|
; [eval] (setOfRef intersection node_map_image)
(assert (= (Set_card (Set_intersection setOfRef@10@01 node_map_image@11@01)) 0))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@16@01))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@16@01)))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@16@01))))))))
(declare-const x@17@01 $Ref)
(push) ; 2
; [eval] (x in setOfRef)
(assert (Set_in x@17@01 setOfRef@10@01))
(pop) ; 2
(declare-fun inv@18@01 ($Ref) $Ref)
(declare-fun img@19@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
(push) ; 2
(assert (not (forall ((x@17@01 $Ref)) (!
  (=>
    (Set_in x@17@01 setOfRef@10@01)
    (or (= rd@12@01 $Perm.No) (< $Perm.No rd@12@01)))
  
  :qid |quant-u-13815|))))
(check-sat)
; unsat
(pop) ; 2
; 0.00s
; (get-info :all-statistics)
; Check receiver injectivity
(push) ; 2
(assert (not (forall ((x1@17@01 $Ref) (x2@17@01 $Ref)) (!
  (=>
    (and
      (and (Set_in x1@17@01 setOfRef@10@01) (< $Perm.No rd@12@01))
      (and (Set_in x2@17@01 setOfRef@10@01) (< $Perm.No rd@12@01))
      (= x1@17@01 x2@17@01))
    (= x1@17@01 x2@17@01))
  
  :qid |val-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 2
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((x@17@01 $Ref)) (!
  (=>
    (and (Set_in x@17@01 setOfRef@10@01) (< $Perm.No rd@12@01))
    (and (= (inv@18@01 x@17@01) x@17@01) (img@19@01 x@17@01)))
  :pattern ((Set_in x@17@01 setOfRef@10@01))
  :pattern ((inv@18@01 x@17@01))
  :pattern ((img@19@01 x@17@01))
  :qid |quant-u-13816|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@19@01 r)
      (and (Set_in (inv@18@01 r) setOfRef@10@01) (< $Perm.No rd@12@01)))
    (= (inv@18@01 r) r))
  :pattern ((inv@18@01 r))
  :qid |val-fctOfInv|)))
; Permissions are non-negative
(assert (forall ((x@17@01 $Ref)) (!
  (<= $Perm.No rd@12@01)
  :pattern ((Set_in x@17@01 setOfRef@10@01))
  :pattern ((inv@18@01 x@17@01))
  :pattern ((img@19@01 x@17@01))
  :qid |val-permAtLeastZero|)))
; Field permissions are at most one
(assert (forall ((x@17@01 $Ref)) (!
  (<= rd@12@01 $Perm.Write)
  :pattern ((Set_in x@17@01 setOfRef@10@01))
  :pattern ((inv@18@01 x@17@01))
  :pattern ((img@19@01 x@17@01))
  :qid |val-permAtMostOne|)))
; Permission implies non-null receiver
(assert (forall ((x@17@01 $Ref)) (!
  (=>
    (and (Set_in x@17@01 setOfRef@10@01) (< $Perm.No rd@12@01))
    (not (= x@17@01 $Ref.null)))
  :pattern ((Set_in x@17@01 setOfRef@10@01))
  :pattern ((inv@18@01 x@17@01))
  :pattern ((img@19@01 x@17@01))
  :qid |val-permImpliesNonNull|)))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@16@01)))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@16@01))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@16@01)))))))))
(declare-const x@20@01 $Ref)
(push) ; 2
; [eval] (x in setOfRef)
(assert (Set_in x@20@01 setOfRef@10@01))
(pop) ; 2
(declare-fun inv@21@01 ($Ref) $Ref)
(declare-fun img@22@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
(push) ; 2
(assert (not (forall ((x@20@01 $Ref)) (!
  (=>
    (Set_in x@20@01 setOfRef@10@01)
    (or (= rd@12@01 $Perm.No) (< $Perm.No rd@12@01)))
  
  :qid |quant-u-13817|))))
(check-sat)
; unsat
(pop) ; 2
; 0.00s
; (get-info :all-statistics)
; Check receiver injectivity
(push) ; 2
(assert (not (forall ((x1@20@01 $Ref) (x2@20@01 $Ref)) (!
  (=>
    (and
      (and (Set_in x1@20@01 setOfRef@10@01) (< $Perm.No rd@12@01))
      (and (Set_in x2@20@01 setOfRef@10@01) (< $Perm.No rd@12@01))
      (= x1@20@01 x2@20@01))
    (= x1@20@01 x2@20@01))
  
  :qid |edges-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 2
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((x@20@01 $Ref)) (!
  (=>
    (and (Set_in x@20@01 setOfRef@10@01) (< $Perm.No rd@12@01))
    (and (= (inv@21@01 x@20@01) x@20@01) (img@22@01 x@20@01)))
  :pattern ((Set_in x@20@01 setOfRef@10@01))
  :pattern ((inv@21@01 x@20@01))
  :pattern ((img@22@01 x@20@01))
  :qid |quant-u-13818|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@22@01 r)
      (and (Set_in (inv@21@01 r) setOfRef@10@01) (< $Perm.No rd@12@01)))
    (= (inv@21@01 r) r))
  :pattern ((inv@21@01 r))
  :qid |edges-fctOfInv|)))
; Permissions are non-negative
(assert (forall ((x@20@01 $Ref)) (!
  (<= $Perm.No rd@12@01)
  :pattern ((Set_in x@20@01 setOfRef@10@01))
  :pattern ((inv@21@01 x@20@01))
  :pattern ((img@22@01 x@20@01))
  :qid |edges-permAtLeastZero|)))
; Field permissions are at most one
(assert (forall ((x@20@01 $Ref)) (!
  (<= rd@12@01 $Perm.Write)
  :pattern ((Set_in x@20@01 setOfRef@10@01))
  :pattern ((inv@21@01 x@20@01))
  :pattern ((img@22@01 x@20@01))
  :qid |edges-permAtMostOne|)))
; Permission implies non-null receiver
(assert (forall ((x@20@01 $Ref)) (!
  (=>
    (and (Set_in x@20@01 setOfRef@10@01) (< $Perm.No rd@12@01))
    (not (= x@20@01 $Ref.null)))
  :pattern ((Set_in x@20@01 setOfRef@10@01))
  :pattern ((inv@21@01 x@20@01))
  :pattern ((img@22@01 x@20@01))
  :qid |edges-permImpliesNonNull|)))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@16@01))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@16@01)))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@16@01))))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@16@01)))))))
  $Snap.unit))
; [eval] (forall x: Ref, i: Int :: { (x in setOfRef), (i in edges_domain(x.edges)) } { (x in setOfRef), edge_lookup(x.edges, i) } { (x in setOfRef), (edge_lookup(x.edges, i) in setOfRef) } { edges_domain(x.edges), edge_lookup(x.edges, i) } { edges_domain(x.edges), (edge_lookup(x.edges, i) in setOfRef) } { (i in edges_domain(x.edges)) } { (edge_lookup(x.edges, i) in setOfRef) } (x in setOfRef) && (i in edges_domain(x.edges)) ==> (edge_lookup(x.edges, i) in setOfRef))
(declare-const x@23@01 $Ref)
(declare-const i@24@01 Int)
(push) ; 2
; [eval] (x in setOfRef) && (i in edges_domain(x.edges)) ==> (edge_lookup(x.edges, i) in setOfRef)
; [eval] (x in setOfRef) && (i in edges_domain(x.edges))
; [eval] (x in setOfRef)
(push) ; 3
; [then-branch: 0 | !(x@23@01 in setOfRef@10@01) | live]
; [else-branch: 0 | x@23@01 in setOfRef@10@01 | live]
(push) ; 4
; [then-branch: 0 | !(x@23@01 in setOfRef@10@01)]
(assert (not (Set_in x@23@01 setOfRef@10@01)))
(pop) ; 4
(push) ; 4
; [else-branch: 0 | x@23@01 in setOfRef@10@01]
(assert (Set_in x@23@01 setOfRef@10@01))
; [eval] (i in edges_domain(x.edges))
; [eval] edges_domain(x.edges)
(push) ; 5
(assert (not (ite
  (and (img@22@01 x@23@01) (Set_in (inv@21@01 x@23@01) setOfRef@10@01))
  (< $Perm.No rd@12@01)
  false)))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(pop) ; 4
(pop) ; 3
; Joined path conditions
; Joined path conditions
(assert (or (Set_in x@23@01 setOfRef@10@01) (not (Set_in x@23@01 setOfRef@10@01))))
(push) ; 3
; [then-branch: 1 | x@23@01 in setOfRef@10@01 && i@24@01 in edges_domain[Set[Int]](Lookup(edges, First:(Second:(Second:(Second:(Second:(Second:($t@16@01)))))), x@23@01)) | live]
; [else-branch: 1 | !(x@23@01 in setOfRef@10@01 && i@24@01 in edges_domain[Set[Int]](Lookup(edges, First:(Second:(Second:(Second:(Second:(Second:($t@16@01)))))), x@23@01))) | live]
(push) ; 4
; [then-branch: 1 | x@23@01 in setOfRef@10@01 && i@24@01 in edges_domain[Set[Int]](Lookup(edges, First:(Second:(Second:(Second:(Second:(Second:($t@16@01)))))), x@23@01))]
(assert (and
  (Set_in x@23@01 setOfRef@10@01)
  (Set_in i@24@01 (edges_domain<Set<Int>> ($FVF.lookup_edges ($SortWrappers.$SnapTo$FVF<edges> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@16@01))))))) x@23@01)))))
; [eval] (edge_lookup(x.edges, i) in setOfRef)
; [eval] edge_lookup(x.edges, i)
(push) ; 5
(assert (not (ite
  (and (img@22@01 x@23@01) (Set_in (inv@21@01 x@23@01) setOfRef@10@01))
  (< $Perm.No rd@12@01)
  false)))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(pop) ; 4
(push) ; 4
; [else-branch: 1 | !(x@23@01 in setOfRef@10@01 && i@24@01 in edges_domain[Set[Int]](Lookup(edges, First:(Second:(Second:(Second:(Second:(Second:($t@16@01)))))), x@23@01)))]
(assert (not
  (and
    (Set_in x@23@01 setOfRef@10@01)
    (Set_in i@24@01 (edges_domain<Set<Int>> ($FVF.lookup_edges ($SortWrappers.$SnapTo$FVF<edges> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@16@01))))))) x@23@01))))))
(pop) ; 4
(pop) ; 3
; Joined path conditions
; Joined path conditions
(assert (or
  (not
    (and
      (Set_in x@23@01 setOfRef@10@01)
      (Set_in i@24@01 (edges_domain<Set<Int>> ($FVF.lookup_edges ($SortWrappers.$SnapTo$FVF<edges> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@16@01))))))) x@23@01)))))
  (and
    (Set_in x@23@01 setOfRef@10@01)
    (Set_in i@24@01 (edges_domain<Set<Int>> ($FVF.lookup_edges ($SortWrappers.$SnapTo$FVF<edges> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@16@01))))))) x@23@01))))))
(pop) ; 2
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall ((x@23@01 $Ref) (i@24@01 Int)) (!
  (and
    (or (Set_in x@23@01 setOfRef@10@01) (not (Set_in x@23@01 setOfRef@10@01)))
    (or
      (not
        (and
          (Set_in x@23@01 setOfRef@10@01)
          (Set_in i@24@01 (edges_domain<Set<Int>> ($FVF.lookup_edges ($SortWrappers.$SnapTo$FVF<edges> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@16@01))))))) x@23@01)))))
      (and
        (Set_in x@23@01 setOfRef@10@01)
        (Set_in i@24@01 (edges_domain<Set<Int>> ($FVF.lookup_edges ($SortWrappers.$SnapTo$FVF<edges> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@16@01))))))) x@23@01))))))
  :pattern ((Set_in x@23@01 setOfRef@10@01) (Set_in i@24@01 (edges_domain<Set<Int>> ($FVF.lookup_edges ($SortWrappers.$SnapTo$FVF<edges> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@16@01))))))) x@23@01))))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/examples/graph-copy/graph-copy.vpr@98@12@98@120-aux|)))
(assert (forall ((x@23@01 $Ref) (i@24@01 Int)) (!
  (and
    (or (Set_in x@23@01 setOfRef@10@01) (not (Set_in x@23@01 setOfRef@10@01)))
    (or
      (not
        (and
          (Set_in x@23@01 setOfRef@10@01)
          (Set_in i@24@01 (edges_domain<Set<Int>> ($FVF.lookup_edges ($SortWrappers.$SnapTo$FVF<edges> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@16@01))))))) x@23@01)))))
      (and
        (Set_in x@23@01 setOfRef@10@01)
        (Set_in i@24@01 (edges_domain<Set<Int>> ($FVF.lookup_edges ($SortWrappers.$SnapTo$FVF<edges> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@16@01))))))) x@23@01))))))
  :pattern ((Set_in x@23@01 setOfRef@10@01) (edge_lookup<Ref> ($FVF.lookup_edges ($SortWrappers.$SnapTo$FVF<edges> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@16@01))))))) x@23@01) i@24@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/examples/graph-copy/graph-copy.vpr@98@12@98@120-aux|)))
(assert (forall ((x@23@01 $Ref) (i@24@01 Int)) (!
  (and
    (or (Set_in x@23@01 setOfRef@10@01) (not (Set_in x@23@01 setOfRef@10@01)))
    (or
      (not
        (and
          (Set_in x@23@01 setOfRef@10@01)
          (Set_in i@24@01 (edges_domain<Set<Int>> ($FVF.lookup_edges ($SortWrappers.$SnapTo$FVF<edges> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@16@01))))))) x@23@01)))))
      (and
        (Set_in x@23@01 setOfRef@10@01)
        (Set_in i@24@01 (edges_domain<Set<Int>> ($FVF.lookup_edges ($SortWrappers.$SnapTo$FVF<edges> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@16@01))))))) x@23@01))))))
  :pattern ((Set_in x@23@01 setOfRef@10@01) (Set_in (edge_lookup<Ref> ($FVF.lookup_edges ($SortWrappers.$SnapTo$FVF<edges> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@16@01))))))) x@23@01) i@24@01) setOfRef@10@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/examples/graph-copy/graph-copy.vpr@98@12@98@120-aux|)))
(assert (forall ((x@23@01 $Ref) (i@24@01 Int)) (!
  (and
    (or (Set_in x@23@01 setOfRef@10@01) (not (Set_in x@23@01 setOfRef@10@01)))
    (or
      (not
        (and
          (Set_in x@23@01 setOfRef@10@01)
          (Set_in i@24@01 (edges_domain<Set<Int>> ($FVF.lookup_edges ($SortWrappers.$SnapTo$FVF<edges> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@16@01))))))) x@23@01)))))
      (and
        (Set_in x@23@01 setOfRef@10@01)
        (Set_in i@24@01 (edges_domain<Set<Int>> ($FVF.lookup_edges ($SortWrappers.$SnapTo$FVF<edges> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@16@01))))))) x@23@01))))))
  :pattern ((edges_domain<Set<Int>> ($FVF.lookup_edges ($SortWrappers.$SnapTo$FVF<edges> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@16@01))))))) x@23@01)) (edge_lookup<Ref> ($FVF.lookup_edges ($SortWrappers.$SnapTo$FVF<edges> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@16@01))))))) x@23@01) i@24@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/examples/graph-copy/graph-copy.vpr@98@12@98@120-aux|)))
(assert (forall ((x@23@01 $Ref) (i@24@01 Int)) (!
  (and
    (or (Set_in x@23@01 setOfRef@10@01) (not (Set_in x@23@01 setOfRef@10@01)))
    (or
      (not
        (and
          (Set_in x@23@01 setOfRef@10@01)
          (Set_in i@24@01 (edges_domain<Set<Int>> ($FVF.lookup_edges ($SortWrappers.$SnapTo$FVF<edges> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@16@01))))))) x@23@01)))))
      (and
        (Set_in x@23@01 setOfRef@10@01)
        (Set_in i@24@01 (edges_domain<Set<Int>> ($FVF.lookup_edges ($SortWrappers.$SnapTo$FVF<edges> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@16@01))))))) x@23@01))))))
  :pattern ((edges_domain<Set<Int>> ($FVF.lookup_edges ($SortWrappers.$SnapTo$FVF<edges> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@16@01))))))) x@23@01)) (Set_in (edge_lookup<Ref> ($FVF.lookup_edges ($SortWrappers.$SnapTo$FVF<edges> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@16@01))))))) x@23@01) i@24@01) setOfRef@10@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/examples/graph-copy/graph-copy.vpr@98@12@98@120-aux|)))
(assert (forall ((x@23@01 $Ref) (i@24@01 Int)) (!
  (and
    (or (Set_in x@23@01 setOfRef@10@01) (not (Set_in x@23@01 setOfRef@10@01)))
    (or
      (not
        (and
          (Set_in x@23@01 setOfRef@10@01)
          (Set_in i@24@01 (edges_domain<Set<Int>> ($FVF.lookup_edges ($SortWrappers.$SnapTo$FVF<edges> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@16@01))))))) x@23@01)))))
      (and
        (Set_in x@23@01 setOfRef@10@01)
        (Set_in i@24@01 (edges_domain<Set<Int>> ($FVF.lookup_edges ($SortWrappers.$SnapTo$FVF<edges> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@16@01))))))) x@23@01))))))
  :pattern ((Set_in i@24@01 (edges_domain<Set<Int>> ($FVF.lookup_edges ($SortWrappers.$SnapTo$FVF<edges> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@16@01))))))) x@23@01))))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/examples/graph-copy/graph-copy.vpr@98@12@98@120-aux|)))
(assert (forall ((x@23@01 $Ref) (i@24@01 Int)) (!
  (and
    (or (Set_in x@23@01 setOfRef@10@01) (not (Set_in x@23@01 setOfRef@10@01)))
    (or
      (not
        (and
          (Set_in x@23@01 setOfRef@10@01)
          (Set_in i@24@01 (edges_domain<Set<Int>> ($FVF.lookup_edges ($SortWrappers.$SnapTo$FVF<edges> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@16@01))))))) x@23@01)))))
      (and
        (Set_in x@23@01 setOfRef@10@01)
        (Set_in i@24@01 (edges_domain<Set<Int>> ($FVF.lookup_edges ($SortWrappers.$SnapTo$FVF<edges> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@16@01))))))) x@23@01))))))
  :pattern ((Set_in (edge_lookup<Ref> ($FVF.lookup_edges ($SortWrappers.$SnapTo$FVF<edges> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@16@01))))))) x@23@01) i@24@01) setOfRef@10@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/examples/graph-copy/graph-copy.vpr@98@12@98@120-aux|)))
(assert (forall ((x@23@01 $Ref) (i@24@01 Int)) (!
  (=>
    (and
      (Set_in x@23@01 setOfRef@10@01)
      (Set_in i@24@01 (edges_domain<Set<Int>> ($FVF.lookup_edges ($SortWrappers.$SnapTo$FVF<edges> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@16@01))))))) x@23@01))))
    (Set_in (edge_lookup<Ref> ($FVF.lookup_edges ($SortWrappers.$SnapTo$FVF<edges> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@16@01))))))) x@23@01) i@24@01) setOfRef@10@01))
  :pattern ((Set_in x@23@01 setOfRef@10@01) (Set_in i@24@01 (edges_domain<Set<Int>> ($FVF.lookup_edges ($SortWrappers.$SnapTo$FVF<edges> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@16@01))))))) x@23@01))))
  :pattern ((Set_in x@23@01 setOfRef@10@01) (edge_lookup<Ref> ($FVF.lookup_edges ($SortWrappers.$SnapTo$FVF<edges> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@16@01))))))) x@23@01) i@24@01))
  :pattern ((Set_in x@23@01 setOfRef@10@01) (Set_in (edge_lookup<Ref> ($FVF.lookup_edges ($SortWrappers.$SnapTo$FVF<edges> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@16@01))))))) x@23@01) i@24@01) setOfRef@10@01))
  :pattern ((edges_domain<Set<Int>> ($FVF.lookup_edges ($SortWrappers.$SnapTo$FVF<edges> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@16@01))))))) x@23@01)) (edge_lookup<Ref> ($FVF.lookup_edges ($SortWrappers.$SnapTo$FVF<edges> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@16@01))))))) x@23@01) i@24@01))
  :pattern ((edges_domain<Set<Int>> ($FVF.lookup_edges ($SortWrappers.$SnapTo$FVF<edges> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@16@01))))))) x@23@01)) (Set_in (edge_lookup<Ref> ($FVF.lookup_edges ($SortWrappers.$SnapTo$FVF<edges> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@16@01))))))) x@23@01) i@24@01) setOfRef@10@01))
  :pattern ((Set_in i@24@01 (edges_domain<Set<Int>> ($FVF.lookup_edges ($SortWrappers.$SnapTo$FVF<edges> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@16@01))))))) x@23@01))))
  :pattern ((Set_in (edge_lookup<Ref> ($FVF.lookup_edges ($SortWrappers.$SnapTo$FVF<edges> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@16@01))))))) x@23@01) i@24@01) setOfRef@10@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/examples/graph-copy/graph-copy.vpr@98@12@98@120|)))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@16@01)))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@16@01))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@16@01)))))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@16@01))))))))
  $Snap.unit))
; [eval] (forall x: Ref :: { (x in map_domain(node_map)) } { (lookup(node_map, x) in node_map_image) } (x in map_domain(node_map)) ==> (lookup(node_map, x) in node_map_image))
(declare-const x@25@01 $Ref)
(push) ; 2
; [eval] (x in map_domain(node_map)) ==> (lookup(node_map, x) in node_map_image)
; [eval] (x in map_domain(node_map))
; [eval] map_domain(node_map)
(push) ; 3
; [then-branch: 2 | x@25@01 in map_domain[Seq[Ref]](node_map@9@01) | live]
; [else-branch: 2 | !(x@25@01 in map_domain[Seq[Ref]](node_map@9@01)) | live]
(push) ; 4
; [then-branch: 2 | x@25@01 in map_domain[Seq[Ref]](node_map@9@01)]
(assert (Seq_contains (map_domain<Seq<Ref>> node_map@9@01) x@25@01))
; [eval] (lookup(node_map, x) in node_map_image)
; [eval] lookup(node_map, x)
(pop) ; 4
(push) ; 4
; [else-branch: 2 | !(x@25@01 in map_domain[Seq[Ref]](node_map@9@01))]
(assert (not (Seq_contains (map_domain<Seq<Ref>> node_map@9@01) x@25@01)))
(pop) ; 4
(pop) ; 3
; Joined path conditions
; Joined path conditions
(assert (or
  (not (Seq_contains (map_domain<Seq<Ref>> node_map@9@01) x@25@01))
  (Seq_contains (map_domain<Seq<Ref>> node_map@9@01) x@25@01)))
(pop) ; 2
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall ((x@25@01 $Ref)) (!
  (or
    (not (Seq_contains (map_domain<Seq<Ref>> node_map@9@01) x@25@01))
    (Seq_contains (map_domain<Seq<Ref>> node_map@9@01) x@25@01))
  :pattern ((Seq_contains (map_domain<Seq<Ref>> node_map@9@01) x@25@01))
  :pattern ((Seq_contains_trigger (map_domain<Seq<Ref>> node_map@9@01) x@25@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/examples/graph-copy/graph-copy.vpr@100@12@100@96-aux|)))
(assert (forall ((x@25@01 $Ref)) (!
  (or
    (not (Seq_contains (map_domain<Seq<Ref>> node_map@9@01) x@25@01))
    (Seq_contains (map_domain<Seq<Ref>> node_map@9@01) x@25@01))
  :pattern ((Seq_contains_trigger (map_domain<Seq<Ref>> node_map@9@01) x@25@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/examples/graph-copy/graph-copy.vpr@100@12@100@96-aux|)))
(assert (forall ((x@25@01 $Ref)) (!
  (or
    (not (Seq_contains (map_domain<Seq<Ref>> node_map@9@01) x@25@01))
    (Seq_contains (map_domain<Seq<Ref>> node_map@9@01) x@25@01))
  :pattern ((Set_in (lookup<Ref> node_map@9@01 x@25@01) node_map_image@11@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/examples/graph-copy/graph-copy.vpr@100@12@100@96-aux|)))
(assert (forall ((x@25@01 $Ref)) (!
  (=>
    (Seq_contains (map_domain<Seq<Ref>> node_map@9@01) x@25@01)
    (Set_in (lookup<Ref> node_map@9@01 x@25@01) node_map_image@11@01))
  :pattern ((Seq_contains (map_domain<Seq<Ref>> node_map@9@01) x@25@01))
  :pattern ((Seq_contains_trigger (map_domain<Seq<Ref>> node_map@9@01) x@25@01))
  :pattern ((Set_in (lookup<Ref> node_map@9@01 x@25@01) node_map_image@11@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/examples/graph-copy/graph-copy.vpr@100@12@100@96|)))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@16@01))))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@16@01)))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@16@01))))))))))))
(declare-const x@26@01 $Ref)
(push) ; 2
; [eval] (x in node_map_image)
(assert (Set_in x@26@01 node_map_image@11@01))
(pop) ; 2
(declare-fun inv@27@01 ($Ref) $Ref)
(declare-fun img@28@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
; Check receiver injectivity
(push) ; 2
(assert (not (forall ((x1@26@01 $Ref) (x2@26@01 $Ref)) (!
  (=>
    (and
      (Set_in x1@26@01 node_map_image@11@01)
      (Set_in x2@26@01 node_map_image@11@01)
      (= x1@26@01 x2@26@01))
    (= x1@26@01 x2@26@01))
  
  :qid |val-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 2
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((x@26@01 $Ref)) (!
  (=>
    (Set_in x@26@01 node_map_image@11@01)
    (and (= (inv@27@01 x@26@01) x@26@01) (img@28@01 x@26@01)))
  :pattern ((Set_in x@26@01 node_map_image@11@01))
  :pattern ((inv@27@01 x@26@01))
  :pattern ((img@28@01 x@26@01))
  :qid |quant-u-13820|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@28@01 r) (Set_in (inv@27@01 r) node_map_image@11@01))
    (= (inv@27@01 r) r))
  :pattern ((inv@27@01 r))
  :qid |val-fctOfInv|)))
; Permissions are non-negative
; Field permissions are at most one
; Permission implies non-null receiver
(assert (forall ((x@26@01 $Ref)) (!
  (=> (Set_in x@26@01 node_map_image@11@01) (not (= x@26@01 $Ref.null)))
  :pattern ((Set_in x@26@01 node_map_image@11@01))
  :pattern ((inv@27@01 x@26@01))
  :pattern ((img@28@01 x@26@01))
  :qid |val-permImpliesNonNull|)))
(push) ; 2
(set-option :timeout 10)
(assert (not (forall ((r $Ref)) (!
  (and
    (= x@26@01 x@17@01)
    (=
      (and (img@28@01 r) (Set_in (inv@27@01 r) node_map_image@11@01))
      (and (img@19@01 r) (Set_in (inv@18@01 r) setOfRef@10@01))))
  
  :qid |quant-u-13821|))))
(check-sat)
; unknown
(pop) ; 2
; 0.00s
; (get-info :all-statistics)
(declare-const x@29@01 $Ref)
(set-option :timeout 0)
(push) ; 2
; [eval] (x in node_map_image)
(assert (Set_in x@29@01 node_map_image@11@01))
(pop) ; 2
(declare-fun inv@30@01 ($Ref) $Ref)
(declare-fun img@31@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
; Check receiver injectivity
(push) ; 2
(assert (not (forall ((x1@29@01 $Ref) (x2@29@01 $Ref)) (!
  (=>
    (and
      (Set_in x1@29@01 node_map_image@11@01)
      (Set_in x2@29@01 node_map_image@11@01)
      (= x1@29@01 x2@29@01))
    (= x1@29@01 x2@29@01))
  
  :qid |edges-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 2
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((x@29@01 $Ref)) (!
  (=>
    (Set_in x@29@01 node_map_image@11@01)
    (and (= (inv@30@01 x@29@01) x@29@01) (img@31@01 x@29@01)))
  :pattern ((Set_in x@29@01 node_map_image@11@01))
  :pattern ((inv@30@01 x@29@01))
  :pattern ((img@31@01 x@29@01))
  :qid |quant-u-13823|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@31@01 r) (Set_in (inv@30@01 r) node_map_image@11@01))
    (= (inv@30@01 r) r))
  :pattern ((inv@30@01 r))
  :qid |edges-fctOfInv|)))
; Permissions are non-negative
; Field permissions are at most one
; Permission implies non-null receiver
(assert (forall ((x@29@01 $Ref)) (!
  (=> (Set_in x@29@01 node_map_image@11@01) (not (= x@29@01 $Ref.null)))
  :pattern ((Set_in x@29@01 node_map_image@11@01))
  :pattern ((inv@30@01 x@29@01))
  :pattern ((img@31@01 x@29@01))
  :qid |edges-permImpliesNonNull|)))
(push) ; 2
(set-option :timeout 10)
(assert (not (forall ((r $Ref)) (!
  (and
    (= x@29@01 x@20@01)
    (=
      (and (img@31@01 r) (Set_in (inv@30@01 r) node_map_image@11@01))
      (and (img@22@01 r) (Set_in (inv@21@01 r) setOfRef@10@01))))
  
  :qid |quant-u-13824|))))
(check-sat)
; unknown
(pop) ; 2
; 0.00s
; (get-info :all-statistics)
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
(set-option :timeout 0)
(push) ; 2
(declare-const $t@32@01 $Snap)
(assert (= $t@32@01 ($Snap.combine ($Snap.first $t@32@01) ($Snap.second $t@32@01))))
(assert (= ($Snap.first $t@32@01) $Snap.unit))
; [eval] nodeCopy != null
(assert (not (= nodeCopy@13@01 $Ref.null)))
(assert (=
  ($Snap.second $t@32@01)
  ($Snap.combine
    ($Snap.first ($Snap.second $t@32@01))
    ($Snap.second ($Snap.second $t@32@01)))))
(assert (= ($Snap.first ($Snap.second $t@32@01)) $Snap.unit))
; [eval] (nodeCopy in res_copy_nodes)
(assert (Set_in nodeCopy@13@01 res_copy_nodes@15@01))
(assert (=
  ($Snap.second ($Snap.second $t@32@01))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second $t@32@01)))
    ($Snap.second ($Snap.second ($Snap.second $t@32@01))))))
(assert (= ($Snap.first ($Snap.second ($Snap.second $t@32@01))) $Snap.unit))
; [eval] |(setOfRef intersection res_copy_nodes)| == 0
; [eval] |(setOfRef intersection res_copy_nodes)|
; [eval] (setOfRef intersection res_copy_nodes)
(assert (= (Set_card (Set_intersection setOfRef@10@01 res_copy_nodes@15@01)) 0))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second $t@32@01)))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@32@01))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@32@01)))))))
(declare-const x@33@01 $Ref)
(push) ; 3
; [eval] (x in setOfRef)
(assert (Set_in x@33@01 setOfRef@10@01))
(pop) ; 3
(declare-fun inv@34@01 ($Ref) $Ref)
(declare-fun img@35@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
(push) ; 3
(assert (not (forall ((x@33@01 $Ref)) (!
  (=>
    (Set_in x@33@01 setOfRef@10@01)
    (or (= rd@12@01 $Perm.No) (< $Perm.No rd@12@01)))
  
  :qid |quant-u-13825|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Check receiver injectivity
(push) ; 3
(assert (not (forall ((x1@33@01 $Ref) (x2@33@01 $Ref)) (!
  (=>
    (and
      (and (Set_in x1@33@01 setOfRef@10@01) (< $Perm.No rd@12@01))
      (and (Set_in x2@33@01 setOfRef@10@01) (< $Perm.No rd@12@01))
      (= x1@33@01 x2@33@01))
    (= x1@33@01 x2@33@01))
  
  :qid |val-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((x@33@01 $Ref)) (!
  (=>
    (and (Set_in x@33@01 setOfRef@10@01) (< $Perm.No rd@12@01))
    (and (= (inv@34@01 x@33@01) x@33@01) (img@35@01 x@33@01)))
  :pattern ((Set_in x@33@01 setOfRef@10@01))
  :pattern ((inv@34@01 x@33@01))
  :pattern ((img@35@01 x@33@01))
  :qid |quant-u-13826|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@35@01 r)
      (and (Set_in (inv@34@01 r) setOfRef@10@01) (< $Perm.No rd@12@01)))
    (= (inv@34@01 r) r))
  :pattern ((inv@34@01 r))
  :qid |val-fctOfInv|)))
; Permissions are non-negative
(assert (forall ((x@33@01 $Ref)) (!
  (<= $Perm.No rd@12@01)
  :pattern ((Set_in x@33@01 setOfRef@10@01))
  :pattern ((inv@34@01 x@33@01))
  :pattern ((img@35@01 x@33@01))
  :qid |val-permAtLeastZero|)))
; Field permissions are at most one
(assert (forall ((x@33@01 $Ref)) (!
  (<= rd@12@01 $Perm.Write)
  :pattern ((Set_in x@33@01 setOfRef@10@01))
  :pattern ((inv@34@01 x@33@01))
  :pattern ((img@35@01 x@33@01))
  :qid |val-permAtMostOne|)))
; Permission implies non-null receiver
(assert (forall ((x@33@01 $Ref)) (!
  (=>
    (and (Set_in x@33@01 setOfRef@10@01) (< $Perm.No rd@12@01))
    (not (= x@33@01 $Ref.null)))
  :pattern ((Set_in x@33@01 setOfRef@10@01))
  :pattern ((inv@34@01 x@33@01))
  :pattern ((img@35@01 x@33@01))
  :qid |val-permImpliesNonNull|)))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@32@01))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@32@01)))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@32@01))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@32@01)))))
  $Snap.unit))
; [eval] (forall x: Ref :: { (x in setOfRef) } (x in setOfRef) ==> x.val == old(x.val))
(declare-const x@36@01 $Ref)
(push) ; 3
; [eval] (x in setOfRef) ==> x.val == old(x.val)
; [eval] (x in setOfRef)
(push) ; 4
; [then-branch: 3 | x@36@01 in setOfRef@10@01 | live]
; [else-branch: 3 | !(x@36@01 in setOfRef@10@01) | live]
(push) ; 5
; [then-branch: 3 | x@36@01 in setOfRef@10@01]
(assert (Set_in x@36@01 setOfRef@10@01))
; [eval] x.val == old(x.val)
(push) ; 6
(assert (not (ite
  (and (img@35@01 x@36@01) (Set_in (inv@34@01 x@36@01) setOfRef@10@01))
  (< $Perm.No rd@12@01)
  false)))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
; [eval] old(x.val)
(declare-const sm@37@01 $FVF<val>)
; Definitional axioms for snapshot map values
(assert (forall ((r $Ref)) (!
  (=>
    (ite
      (and (img@19@01 r) (Set_in (inv@18@01 r) setOfRef@10@01))
      (< $Perm.No rd@12@01)
      false)
    (=
      ($FVF.lookup_val (as sm@37@01  $FVF<val>) r)
      ($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@16@01)))))) r)))
  :pattern (($FVF.lookup_val (as sm@37@01  $FVF<val>) r))
  :pattern (($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@16@01)))))) r))
  :qid |qp.fvfValDef0|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@28@01 r) (Set_in (inv@27@01 r) node_map_image@11@01))
    (=
      ($FVF.lookup_val (as sm@37@01  $FVF<val>) r)
      ($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@16@01)))))))))) r)))
  :pattern (($FVF.lookup_val (as sm@37@01  $FVF<val>) r))
  :pattern (($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@16@01)))))))))) r))
  :qid |qp.fvfValDef1|)))
(declare-const pm@38@01 $FPM)
(assert (forall ((r $Ref)) (!
  (=
    ($FVF.perm_val (as pm@38@01  $FPM) r)
    (+
      (ite
        (and (img@19@01 r) (Set_in (inv@18@01 r) setOfRef@10@01))
        rd@12@01
        $Perm.No)
      (ite
        (and (img@28@01 r) (Set_in (inv@27@01 r) node_map_image@11@01))
        $Perm.Write
        $Perm.No)))
  :pattern (($FVF.perm_val (as pm@38@01  $FPM) r))
  :qid |qp.resPrmSumDef2|)))
(push) ; 6
(assert (not (< $Perm.No ($FVF.perm_val (as pm@38@01  $FPM) x@36@01))))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(pop) ; 5
(push) ; 5
; [else-branch: 3 | !(x@36@01 in setOfRef@10@01)]
(assert (not (Set_in x@36@01 setOfRef@10@01)))
(pop) ; 5
(pop) ; 4
; Joined path conditions
(assert (forall ((r $Ref)) (!
  (=>
    (ite
      (and (img@19@01 r) (Set_in (inv@18@01 r) setOfRef@10@01))
      (< $Perm.No rd@12@01)
      false)
    (=
      ($FVF.lookup_val (as sm@37@01  $FVF<val>) r)
      ($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@16@01)))))) r)))
  :pattern (($FVF.lookup_val (as sm@37@01  $FVF<val>) r))
  :pattern (($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@16@01)))))) r))
  :qid |qp.fvfValDef0|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@28@01 r) (Set_in (inv@27@01 r) node_map_image@11@01))
    (=
      ($FVF.lookup_val (as sm@37@01  $FVF<val>) r)
      ($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@16@01)))))))))) r)))
  :pattern (($FVF.lookup_val (as sm@37@01  $FVF<val>) r))
  :pattern (($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@16@01)))))))))) r))
  :qid |qp.fvfValDef1|)))
(assert (forall ((r $Ref)) (!
  (=
    ($FVF.perm_val (as pm@38@01  $FPM) r)
    (+
      (ite
        (and (img@19@01 r) (Set_in (inv@18@01 r) setOfRef@10@01))
        rd@12@01
        $Perm.No)
      (ite
        (and (img@28@01 r) (Set_in (inv@27@01 r) node_map_image@11@01))
        $Perm.Write
        $Perm.No)))
  :pattern (($FVF.perm_val (as pm@38@01  $FPM) r))
  :qid |qp.resPrmSumDef2|)))
; Joined path conditions
(assert (or (not (Set_in x@36@01 setOfRef@10@01)) (Set_in x@36@01 setOfRef@10@01)))
(pop) ; 3
; Nested auxiliary terms: globals (aux)
(assert (forall ((r $Ref)) (!
  (=>
    (ite
      (and (img@19@01 r) (Set_in (inv@18@01 r) setOfRef@10@01))
      (< $Perm.No rd@12@01)
      false)
    (=
      ($FVF.lookup_val (as sm@37@01  $FVF<val>) r)
      ($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@16@01)))))) r)))
  :pattern (($FVF.lookup_val (as sm@37@01  $FVF<val>) r))
  :pattern (($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@16@01)))))) r))
  :qid |qp.fvfValDef0|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@28@01 r) (Set_in (inv@27@01 r) node_map_image@11@01))
    (=
      ($FVF.lookup_val (as sm@37@01  $FVF<val>) r)
      ($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@16@01)))))))))) r)))
  :pattern (($FVF.lookup_val (as sm@37@01  $FVF<val>) r))
  :pattern (($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@16@01)))))))))) r))
  :qid |qp.fvfValDef1|)))
(assert (forall ((r $Ref)) (!
  (=
    ($FVF.perm_val (as pm@38@01  $FPM) r)
    (+
      (ite
        (and (img@19@01 r) (Set_in (inv@18@01 r) setOfRef@10@01))
        rd@12@01
        $Perm.No)
      (ite
        (and (img@28@01 r) (Set_in (inv@27@01 r) node_map_image@11@01))
        $Perm.Write
        $Perm.No)))
  :pattern (($FVF.perm_val (as pm@38@01  $FPM) r))
  :qid |qp.resPrmSumDef2|)))
; Nested auxiliary terms: non-globals (aux)
(assert (forall ((x@36@01 $Ref)) (!
  (or (not (Set_in x@36@01 setOfRef@10@01)) (Set_in x@36@01 setOfRef@10@01))
  :pattern ((Set_in x@36@01 setOfRef@10@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/examples/graph-copy/graph-copy.vpr@107@11@107@65-aux|)))
(assert (forall ((x@36@01 $Ref)) (!
  (=>
    (Set_in x@36@01 setOfRef@10@01)
    (=
      ($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@32@01))))) x@36@01)
      ($FVF.lookup_val (as sm@37@01  $FVF<val>) x@36@01)))
  :pattern ((Set_in x@36@01 setOfRef@10@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/examples/graph-copy/graph-copy.vpr@107@11@107@65|)))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@32@01)))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@32@01))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@32@01)))))))))
(declare-const x@39@01 $Ref)
(push) ; 3
; [eval] (x in setOfRef)
(assert (Set_in x@39@01 setOfRef@10@01))
(pop) ; 3
(declare-fun inv@40@01 ($Ref) $Ref)
(declare-fun img@41@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
(push) ; 3
(assert (not (forall ((x@39@01 $Ref)) (!
  (=>
    (Set_in x@39@01 setOfRef@10@01)
    (or (= rd@12@01 $Perm.No) (< $Perm.No rd@12@01)))
  
  :qid |quant-u-13827|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Check receiver injectivity
(push) ; 3
(assert (not (forall ((x1@39@01 $Ref) (x2@39@01 $Ref)) (!
  (=>
    (and
      (and (Set_in x1@39@01 setOfRef@10@01) (< $Perm.No rd@12@01))
      (and (Set_in x2@39@01 setOfRef@10@01) (< $Perm.No rd@12@01))
      (= x1@39@01 x2@39@01))
    (= x1@39@01 x2@39@01))
  
  :qid |edges-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((x@39@01 $Ref)) (!
  (=>
    (and (Set_in x@39@01 setOfRef@10@01) (< $Perm.No rd@12@01))
    (and (= (inv@40@01 x@39@01) x@39@01) (img@41@01 x@39@01)))
  :pattern ((Set_in x@39@01 setOfRef@10@01))
  :pattern ((inv@40@01 x@39@01))
  :pattern ((img@41@01 x@39@01))
  :qid |quant-u-13828|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@41@01 r)
      (and (Set_in (inv@40@01 r) setOfRef@10@01) (< $Perm.No rd@12@01)))
    (= (inv@40@01 r) r))
  :pattern ((inv@40@01 r))
  :qid |edges-fctOfInv|)))
; Permissions are non-negative
(assert (forall ((x@39@01 $Ref)) (!
  (<= $Perm.No rd@12@01)
  :pattern ((Set_in x@39@01 setOfRef@10@01))
  :pattern ((inv@40@01 x@39@01))
  :pattern ((img@41@01 x@39@01))
  :qid |edges-permAtLeastZero|)))
; Field permissions are at most one
(assert (forall ((x@39@01 $Ref)) (!
  (<= rd@12@01 $Perm.Write)
  :pattern ((Set_in x@39@01 setOfRef@10@01))
  :pattern ((inv@40@01 x@39@01))
  :pattern ((img@41@01 x@39@01))
  :qid |edges-permAtMostOne|)))
; Permission implies non-null receiver
(assert (forall ((x@39@01 $Ref)) (!
  (=>
    (and (Set_in x@39@01 setOfRef@10@01) (< $Perm.No rd@12@01))
    (not (= x@39@01 $Ref.null)))
  :pattern ((Set_in x@39@01 setOfRef@10@01))
  :pattern ((inv@40@01 x@39@01))
  :pattern ((img@41@01 x@39@01))
  :qid |edges-permImpliesNonNull|)))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@32@01))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@32@01)))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@32@01))))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@32@01)))))))
  $Snap.unit))
; [eval] (forall x: Ref :: { (x in setOfRef) } (x in setOfRef) ==> x.edges == old(x.edges))
(declare-const x@42@01 $Ref)
(push) ; 3
; [eval] (x in setOfRef) ==> x.edges == old(x.edges)
; [eval] (x in setOfRef)
(push) ; 4
; [then-branch: 4 | x@42@01 in setOfRef@10@01 | live]
; [else-branch: 4 | !(x@42@01 in setOfRef@10@01) | live]
(push) ; 5
; [then-branch: 4 | x@42@01 in setOfRef@10@01]
(assert (Set_in x@42@01 setOfRef@10@01))
; [eval] x.edges == old(x.edges)
(push) ; 6
(assert (not (ite
  (and (img@41@01 x@42@01) (Set_in (inv@40@01 x@42@01) setOfRef@10@01))
  (< $Perm.No rd@12@01)
  false)))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
; [eval] old(x.edges)
(declare-const sm@43@01 $FVF<edges>)
; Definitional axioms for snapshot map values
(assert (forall ((r $Ref)) (!
  (=>
    (ite
      (and (img@22@01 r) (Set_in (inv@21@01 r) setOfRef@10@01))
      (< $Perm.No rd@12@01)
      false)
    (=
      ($FVF.lookup_edges (as sm@43@01  $FVF<edges>) r)
      ($FVF.lookup_edges ($SortWrappers.$SnapTo$FVF<edges> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@16@01))))))) r)))
  :pattern (($FVF.lookup_edges (as sm@43@01  $FVF<edges>) r))
  :pattern (($FVF.lookup_edges ($SortWrappers.$SnapTo$FVF<edges> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@16@01))))))) r))
  :qid |qp.fvfValDef3|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@31@01 r) (Set_in (inv@30@01 r) node_map_image@11@01))
    (=
      ($FVF.lookup_edges (as sm@43@01  $FVF<edges>) r)
      ($FVF.lookup_edges ($SortWrappers.$SnapTo$FVF<edges> ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@16@01)))))))))) r)))
  :pattern (($FVF.lookup_edges (as sm@43@01  $FVF<edges>) r))
  :pattern (($FVF.lookup_edges ($SortWrappers.$SnapTo$FVF<edges> ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@16@01)))))))))) r))
  :qid |qp.fvfValDef4|)))
(declare-const pm@44@01 $FPM)
(assert (forall ((r $Ref)) (!
  (=
    ($FVF.perm_edges (as pm@44@01  $FPM) r)
    (+
      (ite
        (and (img@22@01 r) (Set_in (inv@21@01 r) setOfRef@10@01))
        rd@12@01
        $Perm.No)
      (ite
        (and (img@31@01 r) (Set_in (inv@30@01 r) node_map_image@11@01))
        $Perm.Write
        $Perm.No)))
  :pattern (($FVF.perm_edges (as pm@44@01  $FPM) r))
  :qid |qp.resPrmSumDef5|)))
(push) ; 6
(assert (not (< $Perm.No ($FVF.perm_edges (as pm@44@01  $FPM) x@42@01))))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(pop) ; 5
(push) ; 5
; [else-branch: 4 | !(x@42@01 in setOfRef@10@01)]
(assert (not (Set_in x@42@01 setOfRef@10@01)))
(pop) ; 5
(pop) ; 4
; Joined path conditions
(assert (forall ((r $Ref)) (!
  (=>
    (ite
      (and (img@22@01 r) (Set_in (inv@21@01 r) setOfRef@10@01))
      (< $Perm.No rd@12@01)
      false)
    (=
      ($FVF.lookup_edges (as sm@43@01  $FVF<edges>) r)
      ($FVF.lookup_edges ($SortWrappers.$SnapTo$FVF<edges> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@16@01))))))) r)))
  :pattern (($FVF.lookup_edges (as sm@43@01  $FVF<edges>) r))
  :pattern (($FVF.lookup_edges ($SortWrappers.$SnapTo$FVF<edges> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@16@01))))))) r))
  :qid |qp.fvfValDef3|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@31@01 r) (Set_in (inv@30@01 r) node_map_image@11@01))
    (=
      ($FVF.lookup_edges (as sm@43@01  $FVF<edges>) r)
      ($FVF.lookup_edges ($SortWrappers.$SnapTo$FVF<edges> ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@16@01)))))))))) r)))
  :pattern (($FVF.lookup_edges (as sm@43@01  $FVF<edges>) r))
  :pattern (($FVF.lookup_edges ($SortWrappers.$SnapTo$FVF<edges> ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@16@01)))))))))) r))
  :qid |qp.fvfValDef4|)))
(assert (forall ((r $Ref)) (!
  (=
    ($FVF.perm_edges (as pm@44@01  $FPM) r)
    (+
      (ite
        (and (img@22@01 r) (Set_in (inv@21@01 r) setOfRef@10@01))
        rd@12@01
        $Perm.No)
      (ite
        (and (img@31@01 r) (Set_in (inv@30@01 r) node_map_image@11@01))
        $Perm.Write
        $Perm.No)))
  :pattern (($FVF.perm_edges (as pm@44@01  $FPM) r))
  :qid |qp.resPrmSumDef5|)))
; Joined path conditions
(assert (or (not (Set_in x@42@01 setOfRef@10@01)) (Set_in x@42@01 setOfRef@10@01)))
(pop) ; 3
; Nested auxiliary terms: globals (aux)
(assert (forall ((r $Ref)) (!
  (=>
    (ite
      (and (img@22@01 r) (Set_in (inv@21@01 r) setOfRef@10@01))
      (< $Perm.No rd@12@01)
      false)
    (=
      ($FVF.lookup_edges (as sm@43@01  $FVF<edges>) r)
      ($FVF.lookup_edges ($SortWrappers.$SnapTo$FVF<edges> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@16@01))))))) r)))
  :pattern (($FVF.lookup_edges (as sm@43@01  $FVF<edges>) r))
  :pattern (($FVF.lookup_edges ($SortWrappers.$SnapTo$FVF<edges> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@16@01))))))) r))
  :qid |qp.fvfValDef3|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@31@01 r) (Set_in (inv@30@01 r) node_map_image@11@01))
    (=
      ($FVF.lookup_edges (as sm@43@01  $FVF<edges>) r)
      ($FVF.lookup_edges ($SortWrappers.$SnapTo$FVF<edges> ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@16@01)))))))))) r)))
  :pattern (($FVF.lookup_edges (as sm@43@01  $FVF<edges>) r))
  :pattern (($FVF.lookup_edges ($SortWrappers.$SnapTo$FVF<edges> ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@16@01)))))))))) r))
  :qid |qp.fvfValDef4|)))
(assert (forall ((r $Ref)) (!
  (=
    ($FVF.perm_edges (as pm@44@01  $FPM) r)
    (+
      (ite
        (and (img@22@01 r) (Set_in (inv@21@01 r) setOfRef@10@01))
        rd@12@01
        $Perm.No)
      (ite
        (and (img@31@01 r) (Set_in (inv@30@01 r) node_map_image@11@01))
        $Perm.Write
        $Perm.No)))
  :pattern (($FVF.perm_edges (as pm@44@01  $FPM) r))
  :qid |qp.resPrmSumDef5|)))
; Nested auxiliary terms: non-globals (aux)
(assert (forall ((x@42@01 $Ref)) (!
  (or (not (Set_in x@42@01 setOfRef@10@01)) (Set_in x@42@01 setOfRef@10@01))
  :pattern ((Set_in x@42@01 setOfRef@10@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/examples/graph-copy/graph-copy.vpr@109@11@109@69-aux|)))
(assert (forall ((x@42@01 $Ref)) (!
  (=>
    (Set_in x@42@01 setOfRef@10@01)
    (=
      ($FVF.lookup_edges ($SortWrappers.$SnapTo$FVF<edges> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@32@01))))))) x@42@01)
      ($FVF.lookup_edges (as sm@43@01  $FVF<edges>) x@42@01)))
  :pattern ((Set_in x@42@01 setOfRef@10@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/examples/graph-copy/graph-copy.vpr@109@11@109@69|)))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@32@01)))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@32@01))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@32@01)))))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@32@01))))))))
  $Snap.unit))
; [eval] (forall x: Ref, i: Int :: { (x in setOfRef), (i in edges_domain(x.edges)) } { (x in setOfRef), edge_lookup(x.edges, i) } { (x in setOfRef), (edge_lookup(x.edges, i) in setOfRef) } { edges_domain(x.edges), edge_lookup(x.edges, i) } { edges_domain(x.edges), (edge_lookup(x.edges, i) in setOfRef) } { (i in edges_domain(x.edges)) } { (edge_lookup(x.edges, i) in setOfRef) } (x in setOfRef) && (i in edges_domain(x.edges)) ==> (edge_lookup(x.edges, i) in setOfRef))
(declare-const x@45@01 $Ref)
(declare-const i@46@01 Int)
(push) ; 3
; [eval] (x in setOfRef) && (i in edges_domain(x.edges)) ==> (edge_lookup(x.edges, i) in setOfRef)
; [eval] (x in setOfRef) && (i in edges_domain(x.edges))
; [eval] (x in setOfRef)
(push) ; 4
; [then-branch: 5 | !(x@45@01 in setOfRef@10@01) | live]
; [else-branch: 5 | x@45@01 in setOfRef@10@01 | live]
(push) ; 5
; [then-branch: 5 | !(x@45@01 in setOfRef@10@01)]
(assert (not (Set_in x@45@01 setOfRef@10@01)))
(pop) ; 5
(push) ; 5
; [else-branch: 5 | x@45@01 in setOfRef@10@01]
(assert (Set_in x@45@01 setOfRef@10@01))
; [eval] (i in edges_domain(x.edges))
; [eval] edges_domain(x.edges)
(push) ; 6
(assert (not (ite
  (and (img@41@01 x@45@01) (Set_in (inv@40@01 x@45@01) setOfRef@10@01))
  (< $Perm.No rd@12@01)
  false)))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(pop) ; 5
(pop) ; 4
; Joined path conditions
; Joined path conditions
(assert (or (Set_in x@45@01 setOfRef@10@01) (not (Set_in x@45@01 setOfRef@10@01))))
(push) ; 4
; [then-branch: 6 | x@45@01 in setOfRef@10@01 && i@46@01 in edges_domain[Set[Int]](Lookup(edges, First:(Second:(Second:(Second:(Second:(Second:($t@32@01)))))), x@45@01)) | live]
; [else-branch: 6 | !(x@45@01 in setOfRef@10@01 && i@46@01 in edges_domain[Set[Int]](Lookup(edges, First:(Second:(Second:(Second:(Second:(Second:($t@32@01)))))), x@45@01))) | live]
(push) ; 5
; [then-branch: 6 | x@45@01 in setOfRef@10@01 && i@46@01 in edges_domain[Set[Int]](Lookup(edges, First:(Second:(Second:(Second:(Second:(Second:($t@32@01)))))), x@45@01))]
(assert (and
  (Set_in x@45@01 setOfRef@10@01)
  (Set_in i@46@01 (edges_domain<Set<Int>> ($FVF.lookup_edges ($SortWrappers.$SnapTo$FVF<edges> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@32@01))))))) x@45@01)))))
; [eval] (edge_lookup(x.edges, i) in setOfRef)
; [eval] edge_lookup(x.edges, i)
(push) ; 6
(assert (not (ite
  (and (img@41@01 x@45@01) (Set_in (inv@40@01 x@45@01) setOfRef@10@01))
  (< $Perm.No rd@12@01)
  false)))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(pop) ; 5
(push) ; 5
; [else-branch: 6 | !(x@45@01 in setOfRef@10@01 && i@46@01 in edges_domain[Set[Int]](Lookup(edges, First:(Second:(Second:(Second:(Second:(Second:($t@32@01)))))), x@45@01)))]
(assert (not
  (and
    (Set_in x@45@01 setOfRef@10@01)
    (Set_in i@46@01 (edges_domain<Set<Int>> ($FVF.lookup_edges ($SortWrappers.$SnapTo$FVF<edges> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@32@01))))))) x@45@01))))))
(pop) ; 5
(pop) ; 4
; Joined path conditions
; Joined path conditions
(assert (or
  (not
    (and
      (Set_in x@45@01 setOfRef@10@01)
      (Set_in i@46@01 (edges_domain<Set<Int>> ($FVF.lookup_edges ($SortWrappers.$SnapTo$FVF<edges> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@32@01))))))) x@45@01)))))
  (and
    (Set_in x@45@01 setOfRef@10@01)
    (Set_in i@46@01 (edges_domain<Set<Int>> ($FVF.lookup_edges ($SortWrappers.$SnapTo$FVF<edges> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@32@01))))))) x@45@01))))))
(pop) ; 3
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall ((x@45@01 $Ref) (i@46@01 Int)) (!
  (and
    (or (Set_in x@45@01 setOfRef@10@01) (not (Set_in x@45@01 setOfRef@10@01)))
    (or
      (not
        (and
          (Set_in x@45@01 setOfRef@10@01)
          (Set_in i@46@01 (edges_domain<Set<Int>> ($FVF.lookup_edges ($SortWrappers.$SnapTo$FVF<edges> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@32@01))))))) x@45@01)))))
      (and
        (Set_in x@45@01 setOfRef@10@01)
        (Set_in i@46@01 (edges_domain<Set<Int>> ($FVF.lookup_edges ($SortWrappers.$SnapTo$FVF<edges> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@32@01))))))) x@45@01))))))
  :pattern ((Set_in x@45@01 setOfRef@10@01) (Set_in i@46@01 (edges_domain<Set<Int>> ($FVF.lookup_edges ($SortWrappers.$SnapTo$FVF<edges> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@32@01))))))) x@45@01))))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/examples/graph-copy/graph-copy.vpr@110@11@110@119-aux|)))
(assert (forall ((x@45@01 $Ref) (i@46@01 Int)) (!
  (and
    (or (Set_in x@45@01 setOfRef@10@01) (not (Set_in x@45@01 setOfRef@10@01)))
    (or
      (not
        (and
          (Set_in x@45@01 setOfRef@10@01)
          (Set_in i@46@01 (edges_domain<Set<Int>> ($FVF.lookup_edges ($SortWrappers.$SnapTo$FVF<edges> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@32@01))))))) x@45@01)))))
      (and
        (Set_in x@45@01 setOfRef@10@01)
        (Set_in i@46@01 (edges_domain<Set<Int>> ($FVF.lookup_edges ($SortWrappers.$SnapTo$FVF<edges> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@32@01))))))) x@45@01))))))
  :pattern ((Set_in x@45@01 setOfRef@10@01) (edge_lookup<Ref> ($FVF.lookup_edges ($SortWrappers.$SnapTo$FVF<edges> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@32@01))))))) x@45@01) i@46@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/examples/graph-copy/graph-copy.vpr@110@11@110@119-aux|)))
(assert (forall ((x@45@01 $Ref) (i@46@01 Int)) (!
  (and
    (or (Set_in x@45@01 setOfRef@10@01) (not (Set_in x@45@01 setOfRef@10@01)))
    (or
      (not
        (and
          (Set_in x@45@01 setOfRef@10@01)
          (Set_in i@46@01 (edges_domain<Set<Int>> ($FVF.lookup_edges ($SortWrappers.$SnapTo$FVF<edges> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@32@01))))))) x@45@01)))))
      (and
        (Set_in x@45@01 setOfRef@10@01)
        (Set_in i@46@01 (edges_domain<Set<Int>> ($FVF.lookup_edges ($SortWrappers.$SnapTo$FVF<edges> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@32@01))))))) x@45@01))))))
  :pattern ((Set_in x@45@01 setOfRef@10@01) (Set_in (edge_lookup<Ref> ($FVF.lookup_edges ($SortWrappers.$SnapTo$FVF<edges> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@32@01))))))) x@45@01) i@46@01) setOfRef@10@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/examples/graph-copy/graph-copy.vpr@110@11@110@119-aux|)))
(assert (forall ((x@45@01 $Ref) (i@46@01 Int)) (!
  (and
    (or (Set_in x@45@01 setOfRef@10@01) (not (Set_in x@45@01 setOfRef@10@01)))
    (or
      (not
        (and
          (Set_in x@45@01 setOfRef@10@01)
          (Set_in i@46@01 (edges_domain<Set<Int>> ($FVF.lookup_edges ($SortWrappers.$SnapTo$FVF<edges> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@32@01))))))) x@45@01)))))
      (and
        (Set_in x@45@01 setOfRef@10@01)
        (Set_in i@46@01 (edges_domain<Set<Int>> ($FVF.lookup_edges ($SortWrappers.$SnapTo$FVF<edges> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@32@01))))))) x@45@01))))))
  :pattern ((edges_domain<Set<Int>> ($FVF.lookup_edges ($SortWrappers.$SnapTo$FVF<edges> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@32@01))))))) x@45@01)) (edge_lookup<Ref> ($FVF.lookup_edges ($SortWrappers.$SnapTo$FVF<edges> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@32@01))))))) x@45@01) i@46@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/examples/graph-copy/graph-copy.vpr@110@11@110@119-aux|)))
(assert (forall ((x@45@01 $Ref) (i@46@01 Int)) (!
  (and
    (or (Set_in x@45@01 setOfRef@10@01) (not (Set_in x@45@01 setOfRef@10@01)))
    (or
      (not
        (and
          (Set_in x@45@01 setOfRef@10@01)
          (Set_in i@46@01 (edges_domain<Set<Int>> ($FVF.lookup_edges ($SortWrappers.$SnapTo$FVF<edges> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@32@01))))))) x@45@01)))))
      (and
        (Set_in x@45@01 setOfRef@10@01)
        (Set_in i@46@01 (edges_domain<Set<Int>> ($FVF.lookup_edges ($SortWrappers.$SnapTo$FVF<edges> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@32@01))))))) x@45@01))))))
  :pattern ((edges_domain<Set<Int>> ($FVF.lookup_edges ($SortWrappers.$SnapTo$FVF<edges> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@32@01))))))) x@45@01)) (Set_in (edge_lookup<Ref> ($FVF.lookup_edges ($SortWrappers.$SnapTo$FVF<edges> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@32@01))))))) x@45@01) i@46@01) setOfRef@10@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/examples/graph-copy/graph-copy.vpr@110@11@110@119-aux|)))
(assert (forall ((x@45@01 $Ref) (i@46@01 Int)) (!
  (and
    (or (Set_in x@45@01 setOfRef@10@01) (not (Set_in x@45@01 setOfRef@10@01)))
    (or
      (not
        (and
          (Set_in x@45@01 setOfRef@10@01)
          (Set_in i@46@01 (edges_domain<Set<Int>> ($FVF.lookup_edges ($SortWrappers.$SnapTo$FVF<edges> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@32@01))))))) x@45@01)))))
      (and
        (Set_in x@45@01 setOfRef@10@01)
        (Set_in i@46@01 (edges_domain<Set<Int>> ($FVF.lookup_edges ($SortWrappers.$SnapTo$FVF<edges> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@32@01))))))) x@45@01))))))
  :pattern ((Set_in i@46@01 (edges_domain<Set<Int>> ($FVF.lookup_edges ($SortWrappers.$SnapTo$FVF<edges> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@32@01))))))) x@45@01))))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/examples/graph-copy/graph-copy.vpr@110@11@110@119-aux|)))
(assert (forall ((x@45@01 $Ref) (i@46@01 Int)) (!
  (and
    (or (Set_in x@45@01 setOfRef@10@01) (not (Set_in x@45@01 setOfRef@10@01)))
    (or
      (not
        (and
          (Set_in x@45@01 setOfRef@10@01)
          (Set_in i@46@01 (edges_domain<Set<Int>> ($FVF.lookup_edges ($SortWrappers.$SnapTo$FVF<edges> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@32@01))))))) x@45@01)))))
      (and
        (Set_in x@45@01 setOfRef@10@01)
        (Set_in i@46@01 (edges_domain<Set<Int>> ($FVF.lookup_edges ($SortWrappers.$SnapTo$FVF<edges> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@32@01))))))) x@45@01))))))
  :pattern ((Set_in (edge_lookup<Ref> ($FVF.lookup_edges ($SortWrappers.$SnapTo$FVF<edges> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@32@01))))))) x@45@01) i@46@01) setOfRef@10@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/examples/graph-copy/graph-copy.vpr@110@11@110@119-aux|)))
(assert (forall ((x@45@01 $Ref) (i@46@01 Int)) (!
  (=>
    (and
      (Set_in x@45@01 setOfRef@10@01)
      (Set_in i@46@01 (edges_domain<Set<Int>> ($FVF.lookup_edges ($SortWrappers.$SnapTo$FVF<edges> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@32@01))))))) x@45@01))))
    (Set_in (edge_lookup<Ref> ($FVF.lookup_edges ($SortWrappers.$SnapTo$FVF<edges> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@32@01))))))) x@45@01) i@46@01) setOfRef@10@01))
  :pattern ((Set_in x@45@01 setOfRef@10@01) (Set_in i@46@01 (edges_domain<Set<Int>> ($FVF.lookup_edges ($SortWrappers.$SnapTo$FVF<edges> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@32@01))))))) x@45@01))))
  :pattern ((Set_in x@45@01 setOfRef@10@01) (edge_lookup<Ref> ($FVF.lookup_edges ($SortWrappers.$SnapTo$FVF<edges> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@32@01))))))) x@45@01) i@46@01))
  :pattern ((Set_in x@45@01 setOfRef@10@01) (Set_in (edge_lookup<Ref> ($FVF.lookup_edges ($SortWrappers.$SnapTo$FVF<edges> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@32@01))))))) x@45@01) i@46@01) setOfRef@10@01))
  :pattern ((edges_domain<Set<Int>> ($FVF.lookup_edges ($SortWrappers.$SnapTo$FVF<edges> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@32@01))))))) x@45@01)) (edge_lookup<Ref> ($FVF.lookup_edges ($SortWrappers.$SnapTo$FVF<edges> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@32@01))))))) x@45@01) i@46@01))
  :pattern ((edges_domain<Set<Int>> ($FVF.lookup_edges ($SortWrappers.$SnapTo$FVF<edges> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@32@01))))))) x@45@01)) (Set_in (edge_lookup<Ref> ($FVF.lookup_edges ($SortWrappers.$SnapTo$FVF<edges> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@32@01))))))) x@45@01) i@46@01) setOfRef@10@01))
  :pattern ((Set_in i@46@01 (edges_domain<Set<Int>> ($FVF.lookup_edges ($SortWrappers.$SnapTo$FVF<edges> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@32@01))))))) x@45@01))))
  :pattern ((Set_in (edge_lookup<Ref> ($FVF.lookup_edges ($SortWrappers.$SnapTo$FVF<edges> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@32@01))))))) x@45@01) i@46@01) setOfRef@10@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/examples/graph-copy/graph-copy.vpr@110@11@110@119|)))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@32@01))))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@32@01)))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@32@01))))))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@32@01)))))))))
  $Snap.unit))
; [eval] res_copy_nodes == (res_copy_nodes union old(node_map_image))
; [eval] (res_copy_nodes union old(node_map_image))
; [eval] old(node_map_image)
(assert (Set_equal res_copy_nodes@15@01 (Set_union res_copy_nodes@15@01 node_map_image@11@01)))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@32@01)))))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@32@01))))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@32@01)))))))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@32@01))))))))))
  $Snap.unit))
; [eval] (forall x: Ref :: { (x in map_domain(res_node_map)) } { (lookup(res_node_map, x) in res_copy_nodes) } (x in map_domain(res_node_map)) ==> (lookup(res_node_map, x) in res_copy_nodes))
(declare-const x@47@01 $Ref)
(push) ; 3
; [eval] (x in map_domain(res_node_map)) ==> (lookup(res_node_map, x) in res_copy_nodes)
; [eval] (x in map_domain(res_node_map))
; [eval] map_domain(res_node_map)
(push) ; 4
; [then-branch: 7 | x@47@01 in map_domain[Seq[Ref]](res_node_map@14@01) | live]
; [else-branch: 7 | !(x@47@01 in map_domain[Seq[Ref]](res_node_map@14@01)) | live]
(push) ; 5
; [then-branch: 7 | x@47@01 in map_domain[Seq[Ref]](res_node_map@14@01)]
(assert (Seq_contains (map_domain<Seq<Ref>> res_node_map@14@01) x@47@01))
; [eval] (lookup(res_node_map, x) in res_copy_nodes)
; [eval] lookup(res_node_map, x)
(pop) ; 5
(push) ; 5
; [else-branch: 7 | !(x@47@01 in map_domain[Seq[Ref]](res_node_map@14@01))]
(assert (not (Seq_contains (map_domain<Seq<Ref>> res_node_map@14@01) x@47@01)))
(pop) ; 5
(pop) ; 4
; Joined path conditions
; Joined path conditions
(assert (or
  (not (Seq_contains (map_domain<Seq<Ref>> res_node_map@14@01) x@47@01))
  (Seq_contains (map_domain<Seq<Ref>> res_node_map@14@01) x@47@01)))
(pop) ; 3
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall ((x@47@01 $Ref)) (!
  (or
    (not (Seq_contains (map_domain<Seq<Ref>> res_node_map@14@01) x@47@01))
    (Seq_contains (map_domain<Seq<Ref>> res_node_map@14@01) x@47@01))
  :pattern ((Seq_contains (map_domain<Seq<Ref>> res_node_map@14@01) x@47@01))
  :pattern ((Seq_contains_trigger
    (map_domain<Seq<Ref>> res_node_map@14@01)
    x@47@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/examples/graph-copy/graph-copy.vpr@112@11@112@102-aux|)))
(assert (forall ((x@47@01 $Ref)) (!
  (or
    (not (Seq_contains (map_domain<Seq<Ref>> res_node_map@14@01) x@47@01))
    (Seq_contains (map_domain<Seq<Ref>> res_node_map@14@01) x@47@01))
  :pattern ((Seq_contains_trigger
    (map_domain<Seq<Ref>> res_node_map@14@01)
    x@47@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/examples/graph-copy/graph-copy.vpr@112@11@112@102-aux|)))
(assert (forall ((x@47@01 $Ref)) (!
  (or
    (not (Seq_contains (map_domain<Seq<Ref>> res_node_map@14@01) x@47@01))
    (Seq_contains (map_domain<Seq<Ref>> res_node_map@14@01) x@47@01))
  :pattern ((Set_in (lookup<Ref> res_node_map@14@01 x@47@01) res_copy_nodes@15@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/examples/graph-copy/graph-copy.vpr@112@11@112@102-aux|)))
(assert (forall ((x@47@01 $Ref)) (!
  (=>
    (Seq_contains (map_domain<Seq<Ref>> res_node_map@14@01) x@47@01)
    (Set_in (lookup<Ref> res_node_map@14@01 x@47@01) res_copy_nodes@15@01))
  :pattern ((Seq_contains (map_domain<Seq<Ref>> res_node_map@14@01) x@47@01))
  :pattern ((Seq_contains_trigger
    (map_domain<Seq<Ref>> res_node_map@14@01)
    x@47@01))
  :pattern ((Set_in (lookup<Ref> res_node_map@14@01 x@47@01) res_copy_nodes@15@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/examples/graph-copy/graph-copy.vpr@112@11@112@102|)))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@32@01))))))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@32@01)))))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@32@01))))))))))))))
(declare-const x@48@01 $Ref)
(push) ; 3
; [eval] (x in res_copy_nodes)
(assert (Set_in x@48@01 res_copy_nodes@15@01))
(pop) ; 3
(declare-fun inv@49@01 ($Ref) $Ref)
(declare-fun img@50@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
; Check receiver injectivity
(push) ; 3
(assert (not (forall ((x1@48@01 $Ref) (x2@48@01 $Ref)) (!
  (=>
    (and
      (Set_in x1@48@01 res_copy_nodes@15@01)
      (Set_in x2@48@01 res_copy_nodes@15@01)
      (= x1@48@01 x2@48@01))
    (= x1@48@01 x2@48@01))
  
  :qid |val-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((x@48@01 $Ref)) (!
  (=>
    (Set_in x@48@01 res_copy_nodes@15@01)
    (and (= (inv@49@01 x@48@01) x@48@01) (img@50@01 x@48@01)))
  :pattern ((Set_in x@48@01 res_copy_nodes@15@01))
  :pattern ((inv@49@01 x@48@01))
  :pattern ((img@50@01 x@48@01))
  :qid |quant-u-13830|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@50@01 r) (Set_in (inv@49@01 r) res_copy_nodes@15@01))
    (= (inv@49@01 r) r))
  :pattern ((inv@49@01 r))
  :qid |val-fctOfInv|)))
; Permissions are non-negative
; Field permissions are at most one
; Permission implies non-null receiver
(assert (forall ((x@48@01 $Ref)) (!
  (=> (Set_in x@48@01 res_copy_nodes@15@01) (not (= x@48@01 $Ref.null)))
  :pattern ((Set_in x@48@01 res_copy_nodes@15@01))
  :pattern ((inv@49@01 x@48@01))
  :pattern ((img@50@01 x@48@01))
  :qid |val-permImpliesNonNull|)))
(push) ; 3
(set-option :timeout 10)
(assert (not (forall ((r $Ref)) (!
  (and
    (= x@48@01 x@33@01)
    (=
      (and (img@50@01 r) (Set_in (inv@49@01 r) res_copy_nodes@15@01))
      (and (img@35@01 r) (Set_in (inv@34@01 r) setOfRef@10@01))))
  
  :qid |quant-u-13831|))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(declare-const x@51@01 $Ref)
(set-option :timeout 0)
(push) ; 3
; [eval] (x in res_copy_nodes)
(assert (Set_in x@51@01 res_copy_nodes@15@01))
(pop) ; 3
(declare-fun inv@52@01 ($Ref) $Ref)
(declare-fun img@53@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
; Check receiver injectivity
(push) ; 3
(assert (not (forall ((x1@51@01 $Ref) (x2@51@01 $Ref)) (!
  (=>
    (and
      (Set_in x1@51@01 res_copy_nodes@15@01)
      (Set_in x2@51@01 res_copy_nodes@15@01)
      (= x1@51@01 x2@51@01))
    (= x1@51@01 x2@51@01))
  
  :qid |edges-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((x@51@01 $Ref)) (!
  (=>
    (Set_in x@51@01 res_copy_nodes@15@01)
    (and (= (inv@52@01 x@51@01) x@51@01) (img@53@01 x@51@01)))
  :pattern ((Set_in x@51@01 res_copy_nodes@15@01))
  :pattern ((inv@52@01 x@51@01))
  :pattern ((img@53@01 x@51@01))
  :qid |quant-u-13833|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@53@01 r) (Set_in (inv@52@01 r) res_copy_nodes@15@01))
    (= (inv@52@01 r) r))
  :pattern ((inv@52@01 r))
  :qid |edges-fctOfInv|)))
; Permissions are non-negative
; Field permissions are at most one
; Permission implies non-null receiver
(assert (forall ((x@51@01 $Ref)) (!
  (=> (Set_in x@51@01 res_copy_nodes@15@01) (not (= x@51@01 $Ref.null)))
  :pattern ((Set_in x@51@01 res_copy_nodes@15@01))
  :pattern ((inv@52@01 x@51@01))
  :pattern ((img@53@01 x@51@01))
  :qid |edges-permImpliesNonNull|)))
(push) ; 3
(set-option :timeout 10)
(assert (not (forall ((r $Ref)) (!
  (and
    (= x@51@01 x@39@01)
    (=
      (and (img@53@01 r) (Set_in (inv@52@01 r) res_copy_nodes@15@01))
      (and (img@41@01 r) (Set_in (inv@40@01 r) setOfRef@10@01))))
  
  :qid |quant-u-13834|))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(pop) ; 2
(set-option :timeout 0)
(push) ; 2
; [exec]
; var i: Int
(declare-const i@54@01 Int)
; [exec]
; var S: Set[Int]
(declare-const S@55@01 Set<Int>)
; [eval] has_node(node_map, this)
(push) ; 3
(set-option :timeout 10)
(assert (not (not (has_node<Bool> node_map@9@01 this@8@01))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (has_node<Bool> node_map@9@01 this@8@01)))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; [then-branch: 8 | has_node[Bool](node_map@9@01, this@8@01) | live]
; [else-branch: 8 | !(has_node[Bool](node_map@9@01, this@8@01)) | live]
(set-option :timeout 0)
(push) ; 3
; [then-branch: 8 | has_node[Bool](node_map@9@01, this@8@01)]
(assert (has_node<Bool> node_map@9@01 this@8@01))
; [exec]
; nodeCopy := lookup(node_map, this)
; [eval] lookup(node_map, this)
(declare-const nodeCopy@56@01 $Ref)
(assert (= nodeCopy@56@01 (lookup<Ref> node_map@9@01 this@8@01)))
; [exec]
; res_node_map := node_map
; [exec]
; res_copy_nodes := node_map_image
; [eval] nodeCopy != null
(push) ; 4
(assert (not (not (= nodeCopy@56@01 $Ref.null))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(assert (not (= nodeCopy@56@01 $Ref.null)))
; [eval] (nodeCopy in res_copy_nodes)
(push) ; 4
(assert (not (Set_in nodeCopy@56@01 node_map_image@11@01)))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(assert (Set_in nodeCopy@56@01 node_map_image@11@01))
; [eval] |(setOfRef intersection res_copy_nodes)| == 0
; [eval] |(setOfRef intersection res_copy_nodes)|
; [eval] (setOfRef intersection res_copy_nodes)
(declare-const x@57@01 $Ref)
(push) ; 4
; [eval] (x in setOfRef)
(assert (Set_in x@57@01 setOfRef@10@01))
(pop) ; 4
(declare-fun inv@58@01 ($Ref) $Ref)
(declare-fun img@59@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
(push) ; 4
(assert (not (forall ((x@57@01 $Ref)) (!
  (=>
    (Set_in x@57@01 setOfRef@10@01)
    (or (= rd@12@01 $Perm.No) (< $Perm.No rd@12@01)))
  
  :qid |quant-u-13835|))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; Check receiver injectivity
(push) ; 4
(assert (not (forall ((x1@57@01 $Ref) (x2@57@01 $Ref)) (!
  (=>
    (and
      (and (Set_in x1@57@01 setOfRef@10@01) (< $Perm.No rd@12@01))
      (and (Set_in x2@57@01 setOfRef@10@01) (< $Perm.No rd@12@01))
      (= x1@57@01 x2@57@01))
    (= x1@57@01 x2@57@01))
  
  :qid |val-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((x@57@01 $Ref)) (!
  (=>
    (and (Set_in x@57@01 setOfRef@10@01) (< $Perm.No rd@12@01))
    (and (= (inv@58@01 x@57@01) x@57@01) (img@59@01 x@57@01)))
  :pattern ((Set_in x@57@01 setOfRef@10@01))
  :pattern ((inv@58@01 x@57@01))
  :pattern ((img@59@01 x@57@01))
  :qid |val-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@59@01 r)
      (and (Set_in (inv@58@01 r) setOfRef@10@01) (< $Perm.No rd@12@01)))
    (= (inv@58@01 r) r))
  :pattern ((inv@58@01 r))
  :qid |val-fctOfInv|)))
; Precomputing data for removing quantified permissions
(define-fun pTaken@60@01 ((r $Ref)) $Perm
  (ite
    (and (Set_in (inv@58@01 r) setOfRef@10@01) (img@59@01 r) (= r (inv@58@01 r)))
    ($Perm.min
      (ite
        (and (img@19@01 r) (Set_in (inv@18@01 r) setOfRef@10@01))
        rd@12@01
        $Perm.No)
      rd@12@01)
    $Perm.No))
(define-fun pTaken@61@01 ((r $Ref)) $Perm
  (ite
    (and (Set_in (inv@58@01 r) setOfRef@10@01) (img@59@01 r) (= r (inv@58@01 r)))
    ($Perm.min
      (ite
        (and (img@28@01 r) (Set_in (inv@27@01 r) node_map_image@11@01))
        $Perm.Write
        $Perm.No)
      (- rd@12@01 (pTaken@60@01 r)))
    $Perm.No))
; Done precomputing, updating quantified chunks
; State saturation: before repetition
(set-option :timeout 10)
(check-sat)
; unknown
; Chunk depleted?
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 500)
(assert (not (forall ((r $Ref)) (!
  (=
    (-
      (ite
        (and (img@19@01 r) (Set_in (inv@18@01 r) setOfRef@10@01))
        rd@12@01
        $Perm.No)
      (pTaken@60@01 r))
    $Perm.No)
  
  :qid |quant-u-13837|))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; Intermediate check if already taken enough permissions
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 500)
(assert (not (forall ((r $Ref)) (!
  (=>
    (and (Set_in (inv@58@01 r) setOfRef@10@01) (img@59@01 r) (= r (inv@58@01 r)))
    (= (- rd@12@01 (pTaken@60@01 r)) $Perm.No))
  
  :qid |quant-u-13838|))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; Final check if taken enough permissions
; Done removing quantified permissions
; [eval] (forall x: Ref :: { (x in setOfRef) } (x in setOfRef) ==> x.val == old(x.val))
(declare-const x@62@01 $Ref)
(set-option :timeout 0)
(push) ; 4
; [eval] (x in setOfRef) ==> x.val == old(x.val)
; [eval] (x in setOfRef)
(push) ; 5
; [then-branch: 9 | x@62@01 in setOfRef@10@01 | live]
; [else-branch: 9 | !(x@62@01 in setOfRef@10@01) | live]
(push) ; 6
; [then-branch: 9 | x@62@01 in setOfRef@10@01]
(assert (Set_in x@62@01 setOfRef@10@01))
; [eval] x.val == old(x.val)
(declare-const sm@63@01 $FVF<val>)
; Definitional axioms for snapshot map values
(assert (forall ((r $Ref)) (!
  (=>
    (ite
      (and (img@19@01 r) (Set_in (inv@18@01 r) setOfRef@10@01))
      (< $Perm.No rd@12@01)
      false)
    (=
      ($FVF.lookup_val (as sm@63@01  $FVF<val>) r)
      ($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@16@01)))))) r)))
  :pattern (($FVF.lookup_val (as sm@63@01  $FVF<val>) r))
  :pattern (($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@16@01)))))) r))
  :qid |qp.fvfValDef6|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@28@01 r) (Set_in (inv@27@01 r) node_map_image@11@01))
    (=
      ($FVF.lookup_val (as sm@63@01  $FVF<val>) r)
      ($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@16@01)))))))))) r)))
  :pattern (($FVF.lookup_val (as sm@63@01  $FVF<val>) r))
  :pattern (($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@16@01)))))))))) r))
  :qid |qp.fvfValDef7|)))
(declare-const pm@64@01 $FPM)
(assert (forall ((r $Ref)) (!
  (=
    ($FVF.perm_val (as pm@64@01  $FPM) r)
    (+
      (ite
        (and (img@19@01 r) (Set_in (inv@18@01 r) setOfRef@10@01))
        rd@12@01
        $Perm.No)
      (ite
        (and (img@28@01 r) (Set_in (inv@27@01 r) node_map_image@11@01))
        $Perm.Write
        $Perm.No)))
  :pattern (($FVF.perm_val (as pm@64@01  $FPM) r))
  :qid |qp.resPrmSumDef8|)))
(push) ; 7
(assert (not (< $Perm.No ($FVF.perm_val (as pm@64@01  $FPM) x@62@01))))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
; [eval] old(x.val)
(assert (and
  (forall ((r $Ref)) (!
    (=>
      (ite
        (and (img@19@01 r) (Set_in (inv@18@01 r) setOfRef@10@01))
        (< $Perm.No rd@12@01)
        false)
      (=
        ($FVF.lookup_val (as sm@63@01  $FVF<val>) r)
        ($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@16@01)))))) r)))
    :pattern (($FVF.lookup_val (as sm@63@01  $FVF<val>) r))
    :pattern (($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@16@01)))))) r))
    :qid |qp.fvfValDef6|))
  (forall ((r $Ref)) (!
    (=>
      (and (img@28@01 r) (Set_in (inv@27@01 r) node_map_image@11@01))
      (=
        ($FVF.lookup_val (as sm@63@01  $FVF<val>) r)
        ($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@16@01)))))))))) r)))
    :pattern (($FVF.lookup_val (as sm@63@01  $FVF<val>) r))
    :pattern (($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@16@01)))))))))) r))
    :qid |qp.fvfValDef7|))))
(push) ; 7
(assert (not (<
  $Perm.No
  (+
    (ite
      (and (img@19@01 x@62@01) (Set_in (inv@18@01 x@62@01) setOfRef@10@01))
      rd@12@01
      $Perm.No)
    (ite
      (and (img@28@01 x@62@01) (Set_in (inv@27@01 x@62@01) node_map_image@11@01))
      $Perm.Write
      $Perm.No)))))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(pop) ; 6
(push) ; 6
; [else-branch: 9 | !(x@62@01 in setOfRef@10@01)]
(assert (not (Set_in x@62@01 setOfRef@10@01)))
(pop) ; 6
(pop) ; 5
; Joined path conditions
(assert (forall ((r $Ref)) (!
  (=>
    (ite
      (and (img@19@01 r) (Set_in (inv@18@01 r) setOfRef@10@01))
      (< $Perm.No rd@12@01)
      false)
    (=
      ($FVF.lookup_val (as sm@63@01  $FVF<val>) r)
      ($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@16@01)))))) r)))
  :pattern (($FVF.lookup_val (as sm@63@01  $FVF<val>) r))
  :pattern (($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@16@01)))))) r))
  :qid |qp.fvfValDef6|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@28@01 r) (Set_in (inv@27@01 r) node_map_image@11@01))
    (=
      ($FVF.lookup_val (as sm@63@01  $FVF<val>) r)
      ($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@16@01)))))))))) r)))
  :pattern (($FVF.lookup_val (as sm@63@01  $FVF<val>) r))
  :pattern (($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@16@01)))))))))) r))
  :qid |qp.fvfValDef7|)))
(assert (forall ((r $Ref)) (!
  (=
    ($FVF.perm_val (as pm@64@01  $FPM) r)
    (+
      (ite
        (and (img@19@01 r) (Set_in (inv@18@01 r) setOfRef@10@01))
        rd@12@01
        $Perm.No)
      (ite
        (and (img@28@01 r) (Set_in (inv@27@01 r) node_map_image@11@01))
        $Perm.Write
        $Perm.No)))
  :pattern (($FVF.perm_val (as pm@64@01  $FPM) r))
  :qid |qp.resPrmSumDef8|)))
; Joined path conditions
(assert (or (not (Set_in x@62@01 setOfRef@10@01)) (Set_in x@62@01 setOfRef@10@01)))
(pop) ; 4
; Nested auxiliary terms: globals (aux)
(assert (forall ((r $Ref)) (!
  (=>
    (ite
      (and (img@19@01 r) (Set_in (inv@18@01 r) setOfRef@10@01))
      (< $Perm.No rd@12@01)
      false)
    (=
      ($FVF.lookup_val (as sm@63@01  $FVF<val>) r)
      ($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@16@01)))))) r)))
  :pattern (($FVF.lookup_val (as sm@63@01  $FVF<val>) r))
  :pattern (($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@16@01)))))) r))
  :qid |qp.fvfValDef6|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@28@01 r) (Set_in (inv@27@01 r) node_map_image@11@01))
    (=
      ($FVF.lookup_val (as sm@63@01  $FVF<val>) r)
      ($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@16@01)))))))))) r)))
  :pattern (($FVF.lookup_val (as sm@63@01  $FVF<val>) r))
  :pattern (($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@16@01)))))))))) r))
  :qid |qp.fvfValDef7|)))
(assert (forall ((r $Ref)) (!
  (=
    ($FVF.perm_val (as pm@64@01  $FPM) r)
    (+
      (ite
        (and (img@19@01 r) (Set_in (inv@18@01 r) setOfRef@10@01))
        rd@12@01
        $Perm.No)
      (ite
        (and (img@28@01 r) (Set_in (inv@27@01 r) node_map_image@11@01))
        $Perm.Write
        $Perm.No)))
  :pattern (($FVF.perm_val (as pm@64@01  $FPM) r))
  :qid |qp.resPrmSumDef8|)))
; Nested auxiliary terms: non-globals (aux)
(assert (forall ((x@62@01 $Ref)) (!
  (or (not (Set_in x@62@01 setOfRef@10@01)) (Set_in x@62@01 setOfRef@10@01))
  :pattern ((Set_in x@62@01 setOfRef@10@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/examples/graph-copy/graph-copy.vpr@107@11@107@65-aux|)))
(declare-const x@65@01 $Ref)
(push) ; 4
; [eval] (x in setOfRef)
(assert (Set_in x@65@01 setOfRef@10@01))
(pop) ; 4
(declare-fun inv@66@01 ($Ref) $Ref)
(declare-fun img@67@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
(push) ; 4
(assert (not (forall ((x@65@01 $Ref)) (!
  (=>
    (Set_in x@65@01 setOfRef@10@01)
    (or (= rd@12@01 $Perm.No) (< $Perm.No rd@12@01)))
  
  :qid |quant-u-13839|))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; Check receiver injectivity
(push) ; 4
(assert (not (forall ((x1@65@01 $Ref) (x2@65@01 $Ref)) (!
  (=>
    (and
      (and (Set_in x1@65@01 setOfRef@10@01) (< $Perm.No rd@12@01))
      (and (Set_in x2@65@01 setOfRef@10@01) (< $Perm.No rd@12@01))
      (= x1@65@01 x2@65@01))
    (= x1@65@01 x2@65@01))
  
  :qid |edges-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((x@65@01 $Ref)) (!
  (=>
    (and (Set_in x@65@01 setOfRef@10@01) (< $Perm.No rd@12@01))
    (and (= (inv@66@01 x@65@01) x@65@01) (img@67@01 x@65@01)))
  :pattern ((Set_in x@65@01 setOfRef@10@01))
  :pattern ((inv@66@01 x@65@01))
  :pattern ((img@67@01 x@65@01))
  :qid |edges-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@67@01 r)
      (and (Set_in (inv@66@01 r) setOfRef@10@01) (< $Perm.No rd@12@01)))
    (= (inv@66@01 r) r))
  :pattern ((inv@66@01 r))
  :qid |edges-fctOfInv|)))
; Precomputing data for removing quantified permissions
(define-fun pTaken@68@01 ((r $Ref)) $Perm
  (ite
    (and (Set_in (inv@66@01 r) setOfRef@10@01) (img@67@01 r) (= r (inv@66@01 r)))
    ($Perm.min
      (ite
        (and (img@31@01 r) (Set_in (inv@30@01 r) node_map_image@11@01))
        $Perm.Write
        $Perm.No)
      rd@12@01)
    $Perm.No))
(define-fun pTaken@69@01 ((r $Ref)) $Perm
  (ite
    (and (Set_in (inv@66@01 r) setOfRef@10@01) (img@67@01 r) (= r (inv@66@01 r)))
    ($Perm.min
      (ite
        (and (img@22@01 r) (Set_in (inv@21@01 r) setOfRef@10@01))
        rd@12@01
        $Perm.No)
      (- rd@12@01 (pTaken@68@01 r)))
    $Perm.No))
; Done precomputing, updating quantified chunks
; State saturation: before repetition
(set-option :timeout 10)
(check-sat)
; unknown
; Chunk depleted?
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 500)
(assert (not (forall ((r $Ref)) (!
  (=
    (-
      (ite
        (and (img@31@01 r) (Set_in (inv@30@01 r) node_map_image@11@01))
        $Perm.Write
        $Perm.No)
      (pTaken@68@01 r))
    $Perm.No)
  
  :qid |quant-u-13841|))))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not (forall ((r $Ref)) (!
  (= (pTaken@68@01 r) $Perm.No)
  
  :qid |quant-u-13842|))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; Intermediate check if already taken enough permissions
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 500)
(assert (not (forall ((r $Ref)) (!
  (=>
    (and (Set_in (inv@66@01 r) setOfRef@10@01) (img@67@01 r) (= r (inv@66@01 r)))
    (= (- rd@12@01 (pTaken@68@01 r)) $Perm.No))
  
  :qid |quant-u-13843|))))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; Chunk depleted?
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 500)
(assert (not (forall ((r $Ref)) (!
  (=
    (-
      (ite
        (and (img@22@01 r) (Set_in (inv@21@01 r) setOfRef@10@01))
        rd@12@01
        $Perm.No)
      (pTaken@69@01 r))
    $Perm.No)
  
  :qid |quant-u-13844|))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; Intermediate check if already taken enough permissions
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 500)
(assert (not (forall ((r $Ref)) (!
  (=>
    (and (Set_in (inv@66@01 r) setOfRef@10@01) (img@67@01 r) (= r (inv@66@01 r)))
    (= (- (- rd@12@01 (pTaken@68@01 r)) (pTaken@69@01 r)) $Perm.No))
  
  :qid |quant-u-13845|))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; Final check if taken enough permissions
; Done removing quantified permissions
; [eval] (forall x: Ref :: { (x in setOfRef) } (x in setOfRef) ==> x.edges == old(x.edges))
(declare-const x@70@01 $Ref)
(set-option :timeout 0)
(push) ; 4
; [eval] (x in setOfRef) ==> x.edges == old(x.edges)
; [eval] (x in setOfRef)
(push) ; 5
; [then-branch: 10 | x@70@01 in setOfRef@10@01 | live]
; [else-branch: 10 | !(x@70@01 in setOfRef@10@01) | live]
(push) ; 6
; [then-branch: 10 | x@70@01 in setOfRef@10@01]
(assert (Set_in x@70@01 setOfRef@10@01))
; [eval] x.edges == old(x.edges)
(declare-const sm@71@01 $FVF<edges>)
; Definitional axioms for snapshot map values
(assert (forall ((r $Ref)) (!
  (=>
    (ite
      (and (img@22@01 r) (Set_in (inv@21@01 r) setOfRef@10@01))
      (< $Perm.No rd@12@01)
      false)
    (=
      ($FVF.lookup_edges (as sm@71@01  $FVF<edges>) r)
      ($FVF.lookup_edges ($SortWrappers.$SnapTo$FVF<edges> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@16@01))))))) r)))
  :pattern (($FVF.lookup_edges (as sm@71@01  $FVF<edges>) r))
  :pattern (($FVF.lookup_edges ($SortWrappers.$SnapTo$FVF<edges> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@16@01))))))) r))
  :qid |qp.fvfValDef9|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@31@01 r) (Set_in (inv@30@01 r) node_map_image@11@01))
    (=
      ($FVF.lookup_edges (as sm@71@01  $FVF<edges>) r)
      ($FVF.lookup_edges ($SortWrappers.$SnapTo$FVF<edges> ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@16@01)))))))))) r)))
  :pattern (($FVF.lookup_edges (as sm@71@01  $FVF<edges>) r))
  :pattern (($FVF.lookup_edges ($SortWrappers.$SnapTo$FVF<edges> ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@16@01)))))))))) r))
  :qid |qp.fvfValDef10|)))
(declare-const pm@72@01 $FPM)
(assert (forall ((r $Ref)) (!
  (=
    ($FVF.perm_edges (as pm@72@01  $FPM) r)
    (+
      (ite
        (and (img@22@01 r) (Set_in (inv@21@01 r) setOfRef@10@01))
        rd@12@01
        $Perm.No)
      (ite
        (and (img@31@01 r) (Set_in (inv@30@01 r) node_map_image@11@01))
        $Perm.Write
        $Perm.No)))
  :pattern (($FVF.perm_edges (as pm@72@01  $FPM) r))
  :qid |qp.resPrmSumDef11|)))
(push) ; 7
(assert (not (< $Perm.No ($FVF.perm_edges (as pm@72@01  $FPM) x@70@01))))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
; [eval] old(x.edges)
(assert (and
  (forall ((r $Ref)) (!
    (=>
      (ite
        (and (img@22@01 r) (Set_in (inv@21@01 r) setOfRef@10@01))
        (< $Perm.No rd@12@01)
        false)
      (=
        ($FVF.lookup_edges (as sm@71@01  $FVF<edges>) r)
        ($FVF.lookup_edges ($SortWrappers.$SnapTo$FVF<edges> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@16@01))))))) r)))
    :pattern (($FVF.lookup_edges (as sm@71@01  $FVF<edges>) r))
    :pattern (($FVF.lookup_edges ($SortWrappers.$SnapTo$FVF<edges> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@16@01))))))) r))
    :qid |qp.fvfValDef9|))
  (forall ((r $Ref)) (!
    (=>
      (and (img@31@01 r) (Set_in (inv@30@01 r) node_map_image@11@01))
      (=
        ($FVF.lookup_edges (as sm@71@01  $FVF<edges>) r)
        ($FVF.lookup_edges ($SortWrappers.$SnapTo$FVF<edges> ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@16@01)))))))))) r)))
    :pattern (($FVF.lookup_edges (as sm@71@01  $FVF<edges>) r))
    :pattern (($FVF.lookup_edges ($SortWrappers.$SnapTo$FVF<edges> ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@16@01)))))))))) r))
    :qid |qp.fvfValDef10|))))
(push) ; 7
(assert (not (<
  $Perm.No
  (+
    (ite
      (and (img@22@01 x@70@01) (Set_in (inv@21@01 x@70@01) setOfRef@10@01))
      rd@12@01
      $Perm.No)
    (ite
      (and (img@31@01 x@70@01) (Set_in (inv@30@01 x@70@01) node_map_image@11@01))
      $Perm.Write
      $Perm.No)))))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(pop) ; 6
(push) ; 6
; [else-branch: 10 | !(x@70@01 in setOfRef@10@01)]
(assert (not (Set_in x@70@01 setOfRef@10@01)))
(pop) ; 6
(pop) ; 5
; Joined path conditions
(assert (forall ((r $Ref)) (!
  (=>
    (ite
      (and (img@22@01 r) (Set_in (inv@21@01 r) setOfRef@10@01))
      (< $Perm.No rd@12@01)
      false)
    (=
      ($FVF.lookup_edges (as sm@71@01  $FVF<edges>) r)
      ($FVF.lookup_edges ($SortWrappers.$SnapTo$FVF<edges> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@16@01))))))) r)))
  :pattern (($FVF.lookup_edges (as sm@71@01  $FVF<edges>) r))
  :pattern (($FVF.lookup_edges ($SortWrappers.$SnapTo$FVF<edges> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@16@01))))))) r))
  :qid |qp.fvfValDef9|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@31@01 r) (Set_in (inv@30@01 r) node_map_image@11@01))
    (=
      ($FVF.lookup_edges (as sm@71@01  $FVF<edges>) r)
      ($FVF.lookup_edges ($SortWrappers.$SnapTo$FVF<edges> ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@16@01)))))))))) r)))
  :pattern (($FVF.lookup_edges (as sm@71@01  $FVF<edges>) r))
  :pattern (($FVF.lookup_edges ($SortWrappers.$SnapTo$FVF<edges> ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@16@01)))))))))) r))
  :qid |qp.fvfValDef10|)))
(assert (forall ((r $Ref)) (!
  (=
    ($FVF.perm_edges (as pm@72@01  $FPM) r)
    (+
      (ite
        (and (img@22@01 r) (Set_in (inv@21@01 r) setOfRef@10@01))
        rd@12@01
        $Perm.No)
      (ite
        (and (img@31@01 r) (Set_in (inv@30@01 r) node_map_image@11@01))
        $Perm.Write
        $Perm.No)))
  :pattern (($FVF.perm_edges (as pm@72@01  $FPM) r))
  :qid |qp.resPrmSumDef11|)))
; Joined path conditions
(assert (or (not (Set_in x@70@01 setOfRef@10@01)) (Set_in x@70@01 setOfRef@10@01)))
(pop) ; 4
; Nested auxiliary terms: globals (aux)
(assert (forall ((r $Ref)) (!
  (=>
    (ite
      (and (img@22@01 r) (Set_in (inv@21@01 r) setOfRef@10@01))
      (< $Perm.No rd@12@01)
      false)
    (=
      ($FVF.lookup_edges (as sm@71@01  $FVF<edges>) r)
      ($FVF.lookup_edges ($SortWrappers.$SnapTo$FVF<edges> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@16@01))))))) r)))
  :pattern (($FVF.lookup_edges (as sm@71@01  $FVF<edges>) r))
  :pattern (($FVF.lookup_edges ($SortWrappers.$SnapTo$FVF<edges> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@16@01))))))) r))
  :qid |qp.fvfValDef9|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@31@01 r) (Set_in (inv@30@01 r) node_map_image@11@01))
    (=
      ($FVF.lookup_edges (as sm@71@01  $FVF<edges>) r)
      ($FVF.lookup_edges ($SortWrappers.$SnapTo$FVF<edges> ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@16@01)))))))))) r)))
  :pattern (($FVF.lookup_edges (as sm@71@01  $FVF<edges>) r))
  :pattern (($FVF.lookup_edges ($SortWrappers.$SnapTo$FVF<edges> ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@16@01)))))))))) r))
  :qid |qp.fvfValDef10|)))
(assert (forall ((r $Ref)) (!
  (=
    ($FVF.perm_edges (as pm@72@01  $FPM) r)
    (+
      (ite
        (and (img@22@01 r) (Set_in (inv@21@01 r) setOfRef@10@01))
        rd@12@01
        $Perm.No)
      (ite
        (and (img@31@01 r) (Set_in (inv@30@01 r) node_map_image@11@01))
        $Perm.Write
        $Perm.No)))
  :pattern (($FVF.perm_edges (as pm@72@01  $FPM) r))
  :qid |qp.resPrmSumDef11|)))
; Nested auxiliary terms: non-globals (aux)
(assert (forall ((x@70@01 $Ref)) (!
  (or (not (Set_in x@70@01 setOfRef@10@01)) (Set_in x@70@01 setOfRef@10@01))
  :pattern ((Set_in x@70@01 setOfRef@10@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/examples/graph-copy/graph-copy.vpr@109@11@109@69-aux|)))
; [eval] (forall x: Ref, i: Int :: { (x in setOfRef), (i in edges_domain(x.edges)) } { (x in setOfRef), edge_lookup(x.edges, i) } { (x in setOfRef), (edge_lookup(x.edges, i) in setOfRef) } { edges_domain(x.edges), edge_lookup(x.edges, i) } { edges_domain(x.edges), (edge_lookup(x.edges, i) in setOfRef) } { (i in edges_domain(x.edges)) } { (edge_lookup(x.edges, i) in setOfRef) } (x in setOfRef) && (i in edges_domain(x.edges)) ==> (edge_lookup(x.edges, i) in setOfRef))
(declare-const x@73@01 $Ref)
(declare-const i@74@01 Int)
(push) ; 4
; [eval] (x in setOfRef) && (i in edges_domain(x.edges)) ==> (edge_lookup(x.edges, i) in setOfRef)
; [eval] (x in setOfRef) && (i in edges_domain(x.edges))
; [eval] (x in setOfRef)
(push) ; 5
; [then-branch: 11 | !(x@73@01 in setOfRef@10@01) | live]
; [else-branch: 11 | x@73@01 in setOfRef@10@01 | live]
(push) ; 6
; [then-branch: 11 | !(x@73@01 in setOfRef@10@01)]
(assert (not (Set_in x@73@01 setOfRef@10@01)))
(pop) ; 6
(push) ; 6
; [else-branch: 11 | x@73@01 in setOfRef@10@01]
(assert (Set_in x@73@01 setOfRef@10@01))
; [eval] (i in edges_domain(x.edges))
; [eval] edges_domain(x.edges)
(assert (and
  (forall ((r $Ref)) (!
    (=>
      (ite
        (and (img@22@01 r) (Set_in (inv@21@01 r) setOfRef@10@01))
        (< $Perm.No rd@12@01)
        false)
      (=
        ($FVF.lookup_edges (as sm@71@01  $FVF<edges>) r)
        ($FVF.lookup_edges ($SortWrappers.$SnapTo$FVF<edges> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@16@01))))))) r)))
    :pattern (($FVF.lookup_edges (as sm@71@01  $FVF<edges>) r))
    :pattern (($FVF.lookup_edges ($SortWrappers.$SnapTo$FVF<edges> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@16@01))))))) r))
    :qid |qp.fvfValDef9|))
  (forall ((r $Ref)) (!
    (=>
      (and (img@31@01 r) (Set_in (inv@30@01 r) node_map_image@11@01))
      (=
        ($FVF.lookup_edges (as sm@71@01  $FVF<edges>) r)
        ($FVF.lookup_edges ($SortWrappers.$SnapTo$FVF<edges> ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@16@01)))))))))) r)))
    :pattern (($FVF.lookup_edges (as sm@71@01  $FVF<edges>) r))
    :pattern (($FVF.lookup_edges ($SortWrappers.$SnapTo$FVF<edges> ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@16@01)))))))))) r))
    :qid |qp.fvfValDef10|))))
(push) ; 7
(assert (not (<
  $Perm.No
  (+
    (ite
      (and (img@22@01 x@73@01) (Set_in (inv@21@01 x@73@01) setOfRef@10@01))
      rd@12@01
      $Perm.No)
    (ite
      (and (img@31@01 x@73@01) (Set_in (inv@30@01 x@73@01) node_map_image@11@01))
      $Perm.Write
      $Perm.No)))))
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
    (ite
      (and (img@22@01 r) (Set_in (inv@21@01 r) setOfRef@10@01))
      (< $Perm.No rd@12@01)
      false)
    (=
      ($FVF.lookup_edges (as sm@71@01  $FVF<edges>) r)
      ($FVF.lookup_edges ($SortWrappers.$SnapTo$FVF<edges> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@16@01))))))) r)))
  :pattern (($FVF.lookup_edges (as sm@71@01  $FVF<edges>) r))
  :pattern (($FVF.lookup_edges ($SortWrappers.$SnapTo$FVF<edges> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@16@01))))))) r))
  :qid |qp.fvfValDef9|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@31@01 r) (Set_in (inv@30@01 r) node_map_image@11@01))
    (=
      ($FVF.lookup_edges (as sm@71@01  $FVF<edges>) r)
      ($FVF.lookup_edges ($SortWrappers.$SnapTo$FVF<edges> ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@16@01)))))))))) r)))
  :pattern (($FVF.lookup_edges (as sm@71@01  $FVF<edges>) r))
  :pattern (($FVF.lookup_edges ($SortWrappers.$SnapTo$FVF<edges> ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@16@01)))))))))) r))
  :qid |qp.fvfValDef10|)))
(assert (or (Set_in x@73@01 setOfRef@10@01) (not (Set_in x@73@01 setOfRef@10@01))))
(push) ; 5
; [then-branch: 12 | x@73@01 in setOfRef@10@01 && i@74@01 in edges_domain[Set[Int]](Lookup(edges, sm@71@01, x@73@01)) | live]
; [else-branch: 12 | !(x@73@01 in setOfRef@10@01 && i@74@01 in edges_domain[Set[Int]](Lookup(edges, sm@71@01, x@73@01))) | live]
(push) ; 6
; [then-branch: 12 | x@73@01 in setOfRef@10@01 && i@74@01 in edges_domain[Set[Int]](Lookup(edges, sm@71@01, x@73@01))]
(assert (and
  (Set_in x@73@01 setOfRef@10@01)
  (Set_in i@74@01 (edges_domain<Set<Int>> ($FVF.lookup_edges (as sm@71@01  $FVF<edges>) x@73@01)))))
; [eval] (edge_lookup(x.edges, i) in setOfRef)
; [eval] edge_lookup(x.edges, i)
(assert (and
  (forall ((r $Ref)) (!
    (=>
      (ite
        (and (img@22@01 r) (Set_in (inv@21@01 r) setOfRef@10@01))
        (< $Perm.No rd@12@01)
        false)
      (=
        ($FVF.lookup_edges (as sm@71@01  $FVF<edges>) r)
        ($FVF.lookup_edges ($SortWrappers.$SnapTo$FVF<edges> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@16@01))))))) r)))
    :pattern (($FVF.lookup_edges (as sm@71@01  $FVF<edges>) r))
    :pattern (($FVF.lookup_edges ($SortWrappers.$SnapTo$FVF<edges> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@16@01))))))) r))
    :qid |qp.fvfValDef9|))
  (forall ((r $Ref)) (!
    (=>
      (and (img@31@01 r) (Set_in (inv@30@01 r) node_map_image@11@01))
      (=
        ($FVF.lookup_edges (as sm@71@01  $FVF<edges>) r)
        ($FVF.lookup_edges ($SortWrappers.$SnapTo$FVF<edges> ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@16@01)))))))))) r)))
    :pattern (($FVF.lookup_edges (as sm@71@01  $FVF<edges>) r))
    :pattern (($FVF.lookup_edges ($SortWrappers.$SnapTo$FVF<edges> ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@16@01)))))))))) r))
    :qid |qp.fvfValDef10|))))
(push) ; 7
(assert (not (<
  $Perm.No
  (+
    (ite
      (and (img@22@01 x@73@01) (Set_in (inv@21@01 x@73@01) setOfRef@10@01))
      rd@12@01
      $Perm.No)
    (ite
      (and (img@31@01 x@73@01) (Set_in (inv@30@01 x@73@01) node_map_image@11@01))
      $Perm.Write
      $Perm.No)))))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(pop) ; 6
(push) ; 6
; [else-branch: 12 | !(x@73@01 in setOfRef@10@01 && i@74@01 in edges_domain[Set[Int]](Lookup(edges, sm@71@01, x@73@01)))]
(assert (not
  (and
    (Set_in x@73@01 setOfRef@10@01)
    (Set_in i@74@01 (edges_domain<Set<Int>> ($FVF.lookup_edges (as sm@71@01  $FVF<edges>) x@73@01))))))
(pop) ; 6
(pop) ; 5
; Joined path conditions
(assert (forall ((r $Ref)) (!
  (=>
    (ite
      (and (img@22@01 r) (Set_in (inv@21@01 r) setOfRef@10@01))
      (< $Perm.No rd@12@01)
      false)
    (=
      ($FVF.lookup_edges (as sm@71@01  $FVF<edges>) r)
      ($FVF.lookup_edges ($SortWrappers.$SnapTo$FVF<edges> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@16@01))))))) r)))
  :pattern (($FVF.lookup_edges (as sm@71@01  $FVF<edges>) r))
  :pattern (($FVF.lookup_edges ($SortWrappers.$SnapTo$FVF<edges> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@16@01))))))) r))
  :qid |qp.fvfValDef9|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@31@01 r) (Set_in (inv@30@01 r) node_map_image@11@01))
    (=
      ($FVF.lookup_edges (as sm@71@01  $FVF<edges>) r)
      ($FVF.lookup_edges ($SortWrappers.$SnapTo$FVF<edges> ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@16@01)))))))))) r)))
  :pattern (($FVF.lookup_edges (as sm@71@01  $FVF<edges>) r))
  :pattern (($FVF.lookup_edges ($SortWrappers.$SnapTo$FVF<edges> ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@16@01)))))))))) r))
  :qid |qp.fvfValDef10|)))
; Joined path conditions
(assert (or
  (not
    (and
      (Set_in x@73@01 setOfRef@10@01)
      (Set_in i@74@01 (edges_domain<Set<Int>> ($FVF.lookup_edges (as sm@71@01  $FVF<edges>) x@73@01)))))
  (and
    (Set_in x@73@01 setOfRef@10@01)
    (Set_in i@74@01 (edges_domain<Set<Int>> ($FVF.lookup_edges (as sm@71@01  $FVF<edges>) x@73@01))))))
(pop) ; 4
; Nested auxiliary terms: globals (aux)
(assert (forall ((r $Ref)) (!
  (=>
    (ite
      (and (img@22@01 r) (Set_in (inv@21@01 r) setOfRef@10@01))
      (< $Perm.No rd@12@01)
      false)
    (=
      ($FVF.lookup_edges (as sm@71@01  $FVF<edges>) r)
      ($FVF.lookup_edges ($SortWrappers.$SnapTo$FVF<edges> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@16@01))))))) r)))
  :pattern (($FVF.lookup_edges (as sm@71@01  $FVF<edges>) r))
  :pattern (($FVF.lookup_edges ($SortWrappers.$SnapTo$FVF<edges> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@16@01))))))) r))
  :qid |qp.fvfValDef9|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@31@01 r) (Set_in (inv@30@01 r) node_map_image@11@01))
    (=
      ($FVF.lookup_edges (as sm@71@01  $FVF<edges>) r)
      ($FVF.lookup_edges ($SortWrappers.$SnapTo$FVF<edges> ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@16@01)))))))))) r)))
  :pattern (($FVF.lookup_edges (as sm@71@01  $FVF<edges>) r))
  :pattern (($FVF.lookup_edges ($SortWrappers.$SnapTo$FVF<edges> ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@16@01)))))))))) r))
  :qid |qp.fvfValDef10|)))
; Nested auxiliary terms: non-globals (aux)
(assert (forall ((x@73@01 $Ref) (i@74@01 Int)) (!
  (and
    (or (Set_in x@73@01 setOfRef@10@01) (not (Set_in x@73@01 setOfRef@10@01)))
    (or
      (not
        (and
          (Set_in x@73@01 setOfRef@10@01)
          (Set_in i@74@01 (edges_domain<Set<Int>> ($FVF.lookup_edges (as sm@71@01  $FVF<edges>) x@73@01)))))
      (and
        (Set_in x@73@01 setOfRef@10@01)
        (Set_in i@74@01 (edges_domain<Set<Int>> ($FVF.lookup_edges (as sm@71@01  $FVF<edges>) x@73@01))))))
  :pattern ((Set_in x@73@01 setOfRef@10@01) (Set_in i@74@01 (edges_domain<Set<Int>> ($FVF.lookup_edges (as sm@71@01  $FVF<edges>) x@73@01))))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/examples/graph-copy/graph-copy.vpr@110@11@110@119-aux|)))
(assert (forall ((x@73@01 $Ref) (i@74@01 Int)) (!
  (and
    (or (Set_in x@73@01 setOfRef@10@01) (not (Set_in x@73@01 setOfRef@10@01)))
    (or
      (not
        (and
          (Set_in x@73@01 setOfRef@10@01)
          (Set_in i@74@01 (edges_domain<Set<Int>> ($FVF.lookup_edges (as sm@71@01  $FVF<edges>) x@73@01)))))
      (and
        (Set_in x@73@01 setOfRef@10@01)
        (Set_in i@74@01 (edges_domain<Set<Int>> ($FVF.lookup_edges (as sm@71@01  $FVF<edges>) x@73@01))))))
  :pattern ((Set_in x@73@01 setOfRef@10@01) (edge_lookup<Ref> ($FVF.lookup_edges (as sm@71@01  $FVF<edges>) x@73@01) i@74@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/examples/graph-copy/graph-copy.vpr@110@11@110@119-aux|)))
(assert (forall ((x@73@01 $Ref) (i@74@01 Int)) (!
  (and
    (or (Set_in x@73@01 setOfRef@10@01) (not (Set_in x@73@01 setOfRef@10@01)))
    (or
      (not
        (and
          (Set_in x@73@01 setOfRef@10@01)
          (Set_in i@74@01 (edges_domain<Set<Int>> ($FVF.lookup_edges (as sm@71@01  $FVF<edges>) x@73@01)))))
      (and
        (Set_in x@73@01 setOfRef@10@01)
        (Set_in i@74@01 (edges_domain<Set<Int>> ($FVF.lookup_edges (as sm@71@01  $FVF<edges>) x@73@01))))))
  :pattern ((Set_in x@73@01 setOfRef@10@01) (Set_in (edge_lookup<Ref> ($FVF.lookup_edges (as sm@71@01  $FVF<edges>) x@73@01) i@74@01) setOfRef@10@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/examples/graph-copy/graph-copy.vpr@110@11@110@119-aux|)))
(assert (forall ((x@73@01 $Ref) (i@74@01 Int)) (!
  (and
    (or (Set_in x@73@01 setOfRef@10@01) (not (Set_in x@73@01 setOfRef@10@01)))
    (or
      (not
        (and
          (Set_in x@73@01 setOfRef@10@01)
          (Set_in i@74@01 (edges_domain<Set<Int>> ($FVF.lookup_edges (as sm@71@01  $FVF<edges>) x@73@01)))))
      (and
        (Set_in x@73@01 setOfRef@10@01)
        (Set_in i@74@01 (edges_domain<Set<Int>> ($FVF.lookup_edges (as sm@71@01  $FVF<edges>) x@73@01))))))
  :pattern ((edges_domain<Set<Int>> ($FVF.lookup_edges (as sm@71@01  $FVF<edges>) x@73@01)) (edge_lookup<Ref> ($FVF.lookup_edges (as sm@71@01  $FVF<edges>) x@73@01) i@74@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/examples/graph-copy/graph-copy.vpr@110@11@110@119-aux|)))
(assert (forall ((x@73@01 $Ref) (i@74@01 Int)) (!
  (and
    (or (Set_in x@73@01 setOfRef@10@01) (not (Set_in x@73@01 setOfRef@10@01)))
    (or
      (not
        (and
          (Set_in x@73@01 setOfRef@10@01)
          (Set_in i@74@01 (edges_domain<Set<Int>> ($FVF.lookup_edges (as sm@71@01  $FVF<edges>) x@73@01)))))
      (and
        (Set_in x@73@01 setOfRef@10@01)
        (Set_in i@74@01 (edges_domain<Set<Int>> ($FVF.lookup_edges (as sm@71@01  $FVF<edges>) x@73@01))))))
  :pattern ((edges_domain<Set<Int>> ($FVF.lookup_edges (as sm@71@01  $FVF<edges>) x@73@01)) (Set_in (edge_lookup<Ref> ($FVF.lookup_edges (as sm@71@01  $FVF<edges>) x@73@01) i@74@01) setOfRef@10@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/examples/graph-copy/graph-copy.vpr@110@11@110@119-aux|)))
(assert (forall ((x@73@01 $Ref) (i@74@01 Int)) (!
  (and
    (or (Set_in x@73@01 setOfRef@10@01) (not (Set_in x@73@01 setOfRef@10@01)))
    (or
      (not
        (and
          (Set_in x@73@01 setOfRef@10@01)
          (Set_in i@74@01 (edges_domain<Set<Int>> ($FVF.lookup_edges (as sm@71@01  $FVF<edges>) x@73@01)))))
      (and
        (Set_in x@73@01 setOfRef@10@01)
        (Set_in i@74@01 (edges_domain<Set<Int>> ($FVF.lookup_edges (as sm@71@01  $FVF<edges>) x@73@01))))))
  :pattern ((Set_in i@74@01 (edges_domain<Set<Int>> ($FVF.lookup_edges (as sm@71@01  $FVF<edges>) x@73@01))))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/examples/graph-copy/graph-copy.vpr@110@11@110@119-aux|)))
(assert (forall ((x@73@01 $Ref) (i@74@01 Int)) (!
  (and
    (or (Set_in x@73@01 setOfRef@10@01) (not (Set_in x@73@01 setOfRef@10@01)))
    (or
      (not
        (and
          (Set_in x@73@01 setOfRef@10@01)
          (Set_in i@74@01 (edges_domain<Set<Int>> ($FVF.lookup_edges (as sm@71@01  $FVF<edges>) x@73@01)))))
      (and
        (Set_in x@73@01 setOfRef@10@01)
        (Set_in i@74@01 (edges_domain<Set<Int>> ($FVF.lookup_edges (as sm@71@01  $FVF<edges>) x@73@01))))))
  :pattern ((Set_in (edge_lookup<Ref> ($FVF.lookup_edges (as sm@71@01  $FVF<edges>) x@73@01) i@74@01) setOfRef@10@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/examples/graph-copy/graph-copy.vpr@110@11@110@119-aux|)))
(push) ; 4
(assert (not (forall ((x@73@01 $Ref) (i@74@01 Int)) (!
  (=>
    (and
      (Set_in x@73@01 setOfRef@10@01)
      (Set_in i@74@01 (edges_domain<Set<Int>> ($FVF.lookup_edges (as sm@71@01  $FVF<edges>) x@73@01))))
    (Set_in (edge_lookup<Ref> ($FVF.lookup_edges (as sm@71@01  $FVF<edges>) x@73@01) i@74@01) setOfRef@10@01))
  :pattern ((Set_in x@73@01 setOfRef@10@01) (Set_in i@74@01 (edges_domain<Set<Int>> ($FVF.lookup_edges (as sm@71@01  $FVF<edges>) x@73@01))))
  :pattern ((Set_in x@73@01 setOfRef@10@01) (edge_lookup<Ref> ($FVF.lookup_edges (as sm@71@01  $FVF<edges>) x@73@01) i@74@01))
  :pattern ((Set_in x@73@01 setOfRef@10@01) (Set_in (edge_lookup<Ref> ($FVF.lookup_edges (as sm@71@01  $FVF<edges>) x@73@01) i@74@01) setOfRef@10@01))
  :pattern ((edges_domain<Set<Int>> ($FVF.lookup_edges (as sm@71@01  $FVF<edges>) x@73@01)) (edge_lookup<Ref> ($FVF.lookup_edges (as sm@71@01  $FVF<edges>) x@73@01) i@74@01))
  :pattern ((edges_domain<Set<Int>> ($FVF.lookup_edges (as sm@71@01  $FVF<edges>) x@73@01)) (Set_in (edge_lookup<Ref> ($FVF.lookup_edges (as sm@71@01  $FVF<edges>) x@73@01) i@74@01) setOfRef@10@01))
  :pattern ((Set_in i@74@01 (edges_domain<Set<Int>> ($FVF.lookup_edges (as sm@71@01  $FVF<edges>) x@73@01))))
  :pattern ((Set_in (edge_lookup<Ref> ($FVF.lookup_edges (as sm@71@01  $FVF<edges>) x@73@01) i@74@01) setOfRef@10@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/examples/graph-copy/graph-copy.vpr@110@11@110@119|))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(assert (forall ((x@73@01 $Ref) (i@74@01 Int)) (!
  (=>
    (and
      (Set_in x@73@01 setOfRef@10@01)
      (Set_in i@74@01 (edges_domain<Set<Int>> ($FVF.lookup_edges (as sm@71@01  $FVF<edges>) x@73@01))))
    (Set_in (edge_lookup<Ref> ($FVF.lookup_edges (as sm@71@01  $FVF<edges>) x@73@01) i@74@01) setOfRef@10@01))
  :pattern ((Set_in x@73@01 setOfRef@10@01) (Set_in i@74@01 (edges_domain<Set<Int>> ($FVF.lookup_edges (as sm@71@01  $FVF<edges>) x@73@01))))
  :pattern ((Set_in x@73@01 setOfRef@10@01) (edge_lookup<Ref> ($FVF.lookup_edges (as sm@71@01  $FVF<edges>) x@73@01) i@74@01))
  :pattern ((Set_in x@73@01 setOfRef@10@01) (Set_in (edge_lookup<Ref> ($FVF.lookup_edges (as sm@71@01  $FVF<edges>) x@73@01) i@74@01) setOfRef@10@01))
  :pattern ((edges_domain<Set<Int>> ($FVF.lookup_edges (as sm@71@01  $FVF<edges>) x@73@01)) (edge_lookup<Ref> ($FVF.lookup_edges (as sm@71@01  $FVF<edges>) x@73@01) i@74@01))
  :pattern ((edges_domain<Set<Int>> ($FVF.lookup_edges (as sm@71@01  $FVF<edges>) x@73@01)) (Set_in (edge_lookup<Ref> ($FVF.lookup_edges (as sm@71@01  $FVF<edges>) x@73@01) i@74@01) setOfRef@10@01))
  :pattern ((Set_in i@74@01 (edges_domain<Set<Int>> ($FVF.lookup_edges (as sm@71@01  $FVF<edges>) x@73@01))))
  :pattern ((Set_in (edge_lookup<Ref> ($FVF.lookup_edges (as sm@71@01  $FVF<edges>) x@73@01) i@74@01) setOfRef@10@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/examples/graph-copy/graph-copy.vpr@110@11@110@119|)))
; [eval] res_copy_nodes == (res_copy_nodes union old(node_map_image))
; [eval] (res_copy_nodes union old(node_map_image))
; [eval] old(node_map_image)
(push) ; 4
(assert (not (Set_equal node_map_image@11@01 (Set_union node_map_image@11@01 node_map_image@11@01))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(assert (Set_equal node_map_image@11@01 (Set_union node_map_image@11@01 node_map_image@11@01)))
; [eval] (forall x: Ref :: { (x in map_domain(res_node_map)) } { (lookup(res_node_map, x) in res_copy_nodes) } (x in map_domain(res_node_map)) ==> (lookup(res_node_map, x) in res_copy_nodes))
(declare-const x@75@01 $Ref)
(push) ; 4
; [eval] (x in map_domain(res_node_map)) ==> (lookup(res_node_map, x) in res_copy_nodes)
; [eval] (x in map_domain(res_node_map))
; [eval] map_domain(res_node_map)
(push) ; 5
; [then-branch: 13 | x@75@01 in map_domain[Seq[Ref]](node_map@9@01) | live]
; [else-branch: 13 | !(x@75@01 in map_domain[Seq[Ref]](node_map@9@01)) | live]
(push) ; 6
; [then-branch: 13 | x@75@01 in map_domain[Seq[Ref]](node_map@9@01)]
(assert (Seq_contains (map_domain<Seq<Ref>> node_map@9@01) x@75@01))
; [eval] (lookup(res_node_map, x) in res_copy_nodes)
; [eval] lookup(res_node_map, x)
(pop) ; 6
(push) ; 6
; [else-branch: 13 | !(x@75@01 in map_domain[Seq[Ref]](node_map@9@01))]
(assert (not (Seq_contains (map_domain<Seq<Ref>> node_map@9@01) x@75@01)))
(pop) ; 6
(pop) ; 5
; Joined path conditions
; Joined path conditions
(assert (or
  (not (Seq_contains (map_domain<Seq<Ref>> node_map@9@01) x@75@01))
  (Seq_contains (map_domain<Seq<Ref>> node_map@9@01) x@75@01)))
(pop) ; 4
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall ((x@75@01 $Ref)) (!
  (or
    (not (Seq_contains (map_domain<Seq<Ref>> node_map@9@01) x@75@01))
    (Seq_contains (map_domain<Seq<Ref>> node_map@9@01) x@75@01))
  :pattern ((Seq_contains (map_domain<Seq<Ref>> node_map@9@01) x@75@01))
  :pattern ((Seq_contains_trigger (map_domain<Seq<Ref>> node_map@9@01) x@75@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/examples/graph-copy/graph-copy.vpr@112@11@112@102-aux|)))
(assert (forall ((x@75@01 $Ref)) (!
  (or
    (not (Seq_contains (map_domain<Seq<Ref>> node_map@9@01) x@75@01))
    (Seq_contains (map_domain<Seq<Ref>> node_map@9@01) x@75@01))
  :pattern ((Seq_contains_trigger (map_domain<Seq<Ref>> node_map@9@01) x@75@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/examples/graph-copy/graph-copy.vpr@112@11@112@102-aux|)))
(assert (forall ((x@75@01 $Ref)) (!
  (or
    (not (Seq_contains (map_domain<Seq<Ref>> node_map@9@01) x@75@01))
    (Seq_contains (map_domain<Seq<Ref>> node_map@9@01) x@75@01))
  :pattern ((Set_in (lookup<Ref> node_map@9@01 x@75@01) node_map_image@11@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/examples/graph-copy/graph-copy.vpr@112@11@112@102-aux|)))
(push) ; 4
(assert (not (forall ((x@75@01 $Ref)) (!
  (=>
    (Seq_contains (map_domain<Seq<Ref>> node_map@9@01) x@75@01)
    (Set_in (lookup<Ref> node_map@9@01 x@75@01) node_map_image@11@01))
  :pattern ((Seq_contains (map_domain<Seq<Ref>> node_map@9@01) x@75@01))
  :pattern ((Seq_contains_trigger (map_domain<Seq<Ref>> node_map@9@01) x@75@01))
  :pattern ((Seq_contains_trigger (map_domain<Seq<Ref>> node_map@9@01) x@75@01))
  :pattern ((Set_in (lookup<Ref> node_map@9@01 x@75@01) node_map_image@11@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/examples/graph-copy/graph-copy.vpr@112@11@112@102|))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(assert (forall ((x@75@01 $Ref)) (!
  (=>
    (Seq_contains (map_domain<Seq<Ref>> node_map@9@01) x@75@01)
    (Set_in (lookup<Ref> node_map@9@01 x@75@01) node_map_image@11@01))
  :pattern ((Seq_contains (map_domain<Seq<Ref>> node_map@9@01) x@75@01))
  :pattern ((Seq_contains_trigger (map_domain<Seq<Ref>> node_map@9@01) x@75@01))
  :pattern ((Set_in (lookup<Ref> node_map@9@01 x@75@01) node_map_image@11@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/examples/graph-copy/graph-copy.vpr@112@11@112@102|)))
(declare-const x@76@01 $Ref)
(push) ; 4
; [eval] (x in res_copy_nodes)
(assert (Set_in x@76@01 node_map_image@11@01))
(pop) ; 4
(declare-fun inv@77@01 ($Ref) $Ref)
(declare-fun img@78@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
; Check receiver injectivity
(push) ; 4
(assert (not (forall ((x1@76@01 $Ref) (x2@76@01 $Ref)) (!
  (=>
    (and
      (Set_in x1@76@01 node_map_image@11@01)
      (Set_in x2@76@01 node_map_image@11@01)
      (= x1@76@01 x2@76@01))
    (= x1@76@01 x2@76@01))
  
  :qid |val-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((x@76@01 $Ref)) (!
  (=>
    (Set_in x@76@01 node_map_image@11@01)
    (and (= (inv@77@01 x@76@01) x@76@01) (img@78@01 x@76@01)))
  :pattern ((Set_in x@76@01 node_map_image@11@01))
  :pattern ((inv@77@01 x@76@01))
  :pattern ((img@78@01 x@76@01))
  :qid |val-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@78@01 r) (Set_in (inv@77@01 r) node_map_image@11@01))
    (= (inv@77@01 r) r))
  :pattern ((inv@77@01 r))
  :qid |val-fctOfInv|)))
; Precomputing data for removing quantified permissions
(define-fun pTaken@79@01 ((r $Ref)) $Perm
  (ite
    (and
      (Set_in (inv@77@01 r) node_map_image@11@01)
      (img@78@01 r)
      (= r (inv@77@01 r)))
    ($Perm.min
      (ite
        (and (img@28@01 r) (Set_in (inv@27@01 r) node_map_image@11@01))
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
(push) ; 4
(set-option :timeout 500)
(assert (not (forall ((r $Ref)) (!
  (=
    (-
      (ite
        (and (img@28@01 r) (Set_in (inv@27@01 r) node_map_image@11@01))
        $Perm.Write
        $Perm.No)
      (pTaken@79@01 r))
    $Perm.No)
  
  :qid |quant-u-13848|))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; Intermediate check if already taken enough permissions
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 500)
(assert (not (forall ((r $Ref)) (!
  (=>
    (and
      (Set_in (inv@77@01 r) node_map_image@11@01)
      (img@78@01 r)
      (= r (inv@77@01 r)))
    (= (- $Perm.Write (pTaken@79@01 r)) $Perm.No))
  
  :qid |quant-u-13849|))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; Final check if taken enough permissions
; Done removing quantified permissions
(declare-const x@80@01 $Ref)
(set-option :timeout 0)
(push) ; 4
; [eval] (x in res_copy_nodes)
(assert (Set_in x@80@01 node_map_image@11@01))
(pop) ; 4
(declare-fun inv@81@01 ($Ref) $Ref)
(declare-fun img@82@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
; Check receiver injectivity
(push) ; 4
(assert (not (forall ((x1@80@01 $Ref) (x2@80@01 $Ref)) (!
  (=>
    (and
      (Set_in x1@80@01 node_map_image@11@01)
      (Set_in x2@80@01 node_map_image@11@01)
      (= x1@80@01 x2@80@01))
    (= x1@80@01 x2@80@01))
  
  :qid |edges-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((x@80@01 $Ref)) (!
  (=>
    (Set_in x@80@01 node_map_image@11@01)
    (and (= (inv@81@01 x@80@01) x@80@01) (img@82@01 x@80@01)))
  :pattern ((Set_in x@80@01 node_map_image@11@01))
  :pattern ((inv@81@01 x@80@01))
  :pattern ((img@82@01 x@80@01))
  :qid |edges-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@82@01 r) (Set_in (inv@81@01 r) node_map_image@11@01))
    (= (inv@81@01 r) r))
  :pattern ((inv@81@01 r))
  :qid |edges-fctOfInv|)))
; Precomputing data for removing quantified permissions
(define-fun pTaken@83@01 ((r $Ref)) $Perm
  (ite
    (and
      (Set_in (inv@81@01 r) node_map_image@11@01)
      (img@82@01 r)
      (= r (inv@81@01 r)))
    ($Perm.min
      (ite
        (and (img@31@01 r) (Set_in (inv@30@01 r) node_map_image@11@01))
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
(push) ; 4
(set-option :timeout 500)
(assert (not (forall ((r $Ref)) (!
  (=
    (-
      (ite
        (and (img@31@01 r) (Set_in (inv@30@01 r) node_map_image@11@01))
        $Perm.Write
        $Perm.No)
      (pTaken@83@01 r))
    $Perm.No)
  
  :qid |quant-u-13852|))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; Intermediate check if already taken enough permissions
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 500)
(assert (not (forall ((r $Ref)) (!
  (=>
    (and
      (Set_in (inv@81@01 r) node_map_image@11@01)
      (img@82@01 r)
      (= r (inv@81@01 r)))
    (= (- $Perm.Write (pTaken@83@01 r)) $Perm.No))
  
  :qid |quant-u-13853|))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; Final check if taken enough permissions
; Done removing quantified permissions
(pop) ; 3
(set-option :timeout 0)
(push) ; 3
; [else-branch: 8 | !(has_node[Bool](node_map@9@01, this@8@01))]
(assert (not (has_node<Bool> node_map@9@01 this@8@01)))
(pop) ; 3
; [eval] !has_node(node_map, this)
; [eval] has_node(node_map, this)
(push) ; 3
(set-option :timeout 10)
(assert (not (has_node<Bool> node_map@9@01 this@8@01)))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (not (has_node<Bool> node_map@9@01 this@8@01))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; [then-branch: 14 | !(has_node[Bool](node_map@9@01, this@8@01)) | live]
; [else-branch: 14 | has_node[Bool](node_map@9@01, this@8@01) | live]
(set-option :timeout 0)
(push) ; 3
; [then-branch: 14 | !(has_node[Bool](node_map@9@01, this@8@01))]
(assert (not (has_node<Bool> node_map@9@01 this@8@01)))
; [exec]
; nodeCopy := new(val, edges)
(declare-const nodeCopy@84@01 $Ref)
(assert (not (= nodeCopy@84@01 $Ref.null)))
(declare-const val@85@01 Int)
(declare-const sm@86@01 $FVF<val>)
; Definitional axioms for singleton-FVF's value
(assert (= ($FVF.lookup_val (as sm@86@01  $FVF<val>) nodeCopy@84@01) val@85@01))
(declare-const edges@87@01 IEdges)
(declare-const sm@88@01 $FVF<edges>)
; Definitional axioms for singleton-FVF's value
(assert (= ($FVF.lookup_edges (as sm@88@01  $FVF<edges>) nodeCopy@84@01) edges@87@01))
(assert (not (= nodeCopy@84@01 this@8@01)))
(assert (not (= nodeCopy@84@01 nodeCopy@13@01)))
(assert (not (Set_in nodeCopy@84@01 setOfRef@10@01)))
(assert (not (Set_in nodeCopy@84@01 node_map_image@11@01)))
(assert (not (Set_in nodeCopy@84@01 res_copy_nodes@15@01)))
; [exec]
; nodeCopy.val := this.val
(declare-const sm@89@01 $FVF<val>)
; Definitional axioms for snapshot map values
(assert (forall ((r $Ref)) (!
  (=>
    (= r nodeCopy@84@01)
    (=
      ($FVF.lookup_val (as sm@89@01  $FVF<val>) r)
      ($FVF.lookup_val (as sm@86@01  $FVF<val>) r)))
  :pattern (($FVF.lookup_val (as sm@89@01  $FVF<val>) r))
  :pattern (($FVF.lookup_val (as sm@86@01  $FVF<val>) r))
  :qid |qp.fvfValDef12|)))
(assert (forall ((r $Ref)) (!
  (=>
    (ite
      (and (img@19@01 r) (Set_in (inv@18@01 r) setOfRef@10@01))
      (< $Perm.No rd@12@01)
      false)
    (=
      ($FVF.lookup_val (as sm@89@01  $FVF<val>) r)
      ($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@16@01)))))) r)))
  :pattern (($FVF.lookup_val (as sm@89@01  $FVF<val>) r))
  :pattern (($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@16@01)))))) r))
  :qid |qp.fvfValDef13|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@28@01 r) (Set_in (inv@27@01 r) node_map_image@11@01))
    (=
      ($FVF.lookup_val (as sm@89@01  $FVF<val>) r)
      ($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@16@01)))))))))) r)))
  :pattern (($FVF.lookup_val (as sm@89@01  $FVF<val>) r))
  :pattern (($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@16@01)))))))))) r))
  :qid |qp.fvfValDef14|)))
(declare-const pm@90@01 $FPM)
(assert (forall ((r $Ref)) (!
  (=
    ($FVF.perm_val (as pm@90@01  $FPM) r)
    (+
      (+
        (ite (= r nodeCopy@84@01) $Perm.Write $Perm.No)
        (ite
          (and (img@19@01 r) (Set_in (inv@18@01 r) setOfRef@10@01))
          rd@12@01
          $Perm.No))
      (ite
        (and (img@28@01 r) (Set_in (inv@27@01 r) node_map_image@11@01))
        $Perm.Write
        $Perm.No)))
  :pattern (($FVF.perm_val (as pm@90@01  $FPM) r))
  :qid |qp.resPrmSumDef15|)))
(push) ; 4
(assert (not (< $Perm.No ($FVF.perm_val (as pm@90@01  $FPM) this@8@01))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; Precomputing data for removing quantified permissions
(define-fun pTaken@91@01 ((r $Ref)) $Perm
  (ite
    (= r nodeCopy@84@01)
    ($Perm.min (ite (= r nodeCopy@84@01) $Perm.Write $Perm.No) $Perm.Write)
    $Perm.No))
(define-fun pTaken@92@01 ((r $Ref)) $Perm
  (ite
    (= r nodeCopy@84@01)
    ($Perm.min
      (ite
        (and (img@19@01 r) (Set_in (inv@18@01 r) setOfRef@10@01))
        rd@12@01
        $Perm.No)
      (- $Perm.Write (pTaken@91@01 r)))
    $Perm.No))
(define-fun pTaken@93@01 ((r $Ref)) $Perm
  (ite
    (= r nodeCopy@84@01)
    ($Perm.min
      (ite
        (and (img@28@01 r) (Set_in (inv@27@01 r) node_map_image@11@01))
        $Perm.Write
        $Perm.No)
      (- (- $Perm.Write (pTaken@91@01 r)) (pTaken@92@01 r)))
    $Perm.No))
; Done precomputing, updating quantified chunks
; State saturation: before repetition
(set-option :timeout 10)
(check-sat)
; unknown
; Chunk depleted?
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 500)
(assert (not (= (- $Perm.Write (pTaken@91@01 nodeCopy@84@01)) $Perm.No)))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; Intermediate check if already taken enough permissions
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 500)
(assert (not (forall ((r $Ref)) (!
  (=> (= r nodeCopy@84@01) (= (- $Perm.Write (pTaken@91@01 r)) $Perm.No))
  
  :qid |quant-u-13856|))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; Final check if taken enough permissions
; Done removing quantified permissions
(declare-const sm@94@01 $FVF<val>)
; Definitional axioms for singleton-FVF's value
(assert (=
  ($FVF.lookup_val (as sm@94@01  $FVF<val>) nodeCopy@84@01)
  ($FVF.lookup_val (as sm@89@01  $FVF<val>) this@8@01)))
; [exec]
; res_node_map := insert(node_map, this, nodeCopy)
; [eval] insert(node_map, this, nodeCopy)
(declare-const res_node_map@95@01 INodeMap)
(assert (= res_node_map@95@01 (insert<INodeMap> node_map@9@01 this@8@01 nodeCopy@84@01)))
; [exec]
; res_copy_nodes := (node_map_image union Set(nodeCopy))
; [eval] (node_map_image union Set(nodeCopy))
; [eval] Set(nodeCopy)
(declare-const res_copy_nodes@96@01 Set<$Ref>)
(assert (=
  res_copy_nodes@96@01
  (Set_union node_map_image@11@01 (Set_singleton nodeCopy@84@01))))
; [exec]
; assert ((setOfRef intersection node_map_image) union
;   (setOfRef intersection Set(nodeCopy))) ==
;   (setOfRef intersection res_copy_nodes)
; [eval] ((setOfRef intersection node_map_image) union (setOfRef intersection Set(nodeCopy))) == (setOfRef intersection res_copy_nodes)
; [eval] ((setOfRef intersection node_map_image) union (setOfRef intersection Set(nodeCopy)))
; [eval] (setOfRef intersection node_map_image)
; [eval] (setOfRef intersection Set(nodeCopy))
; [eval] Set(nodeCopy)
; [eval] (setOfRef intersection res_copy_nodes)
(set-option :timeout 0)
(push) ; 4
(assert (not (Set_equal (Set_union (Set_intersection setOfRef@10@01 node_map_image@11@01) (Set_intersection setOfRef@10@01 (Set_singleton nodeCopy@84@01))) (Set_intersection setOfRef@10@01 res_copy_nodes@96@01))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(assert (Set_equal (Set_union (Set_intersection setOfRef@10@01 node_map_image@11@01) (Set_intersection setOfRef@10@01 (Set_singleton nodeCopy@84@01))) (Set_intersection setOfRef@10@01 res_copy_nodes@96@01)))
; [exec]
; S := edges_domain(this.edges)
; [eval] edges_domain(this.edges)
(declare-const sm@97@01 $FVF<edges>)
; Definitional axioms for snapshot map values
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@31@01 r) (Set_in (inv@30@01 r) node_map_image@11@01))
    (=
      ($FVF.lookup_edges (as sm@97@01  $FVF<edges>) r)
      ($FVF.lookup_edges ($SortWrappers.$SnapTo$FVF<edges> ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@16@01)))))))))) r)))
  :pattern (($FVF.lookup_edges (as sm@97@01  $FVF<edges>) r))
  :pattern (($FVF.lookup_edges ($SortWrappers.$SnapTo$FVF<edges> ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@16@01)))))))))) r))
  :qid |qp.fvfValDef16|)))
(assert (forall ((r $Ref)) (!
  (=>
    (ite
      (and (img@22@01 r) (Set_in (inv@21@01 r) setOfRef@10@01))
      (< $Perm.No rd@12@01)
      false)
    (=
      ($FVF.lookup_edges (as sm@97@01  $FVF<edges>) r)
      ($FVF.lookup_edges ($SortWrappers.$SnapTo$FVF<edges> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@16@01))))))) r)))
  :pattern (($FVF.lookup_edges (as sm@97@01  $FVF<edges>) r))
  :pattern (($FVF.lookup_edges ($SortWrappers.$SnapTo$FVF<edges> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@16@01))))))) r))
  :qid |qp.fvfValDef17|)))
(assert (forall ((r $Ref)) (!
  (=>
    (= r nodeCopy@84@01)
    (=
      ($FVF.lookup_edges (as sm@97@01  $FVF<edges>) r)
      ($FVF.lookup_edges (as sm@88@01  $FVF<edges>) r)))
  :pattern (($FVF.lookup_edges (as sm@97@01  $FVF<edges>) r))
  :pattern (($FVF.lookup_edges (as sm@88@01  $FVF<edges>) r))
  :qid |qp.fvfValDef18|)))
(declare-const pm@98@01 $FPM)
(assert (forall ((r $Ref)) (!
  (=
    ($FVF.perm_edges (as pm@98@01  $FPM) r)
    (+
      (+
        (ite
          (and (img@31@01 r) (Set_in (inv@30@01 r) node_map_image@11@01))
          $Perm.Write
          $Perm.No)
        (ite
          (and (img@22@01 r) (Set_in (inv@21@01 r) setOfRef@10@01))
          rd@12@01
          $Perm.No))
      (ite (= r nodeCopy@84@01) $Perm.Write $Perm.No)))
  :pattern (($FVF.perm_edges (as pm@98@01  $FPM) r))
  :qid |qp.resPrmSumDef19|)))
(push) ; 4
(assert (not (< $Perm.No ($FVF.perm_edges (as pm@98@01  $FPM) this@8@01))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(declare-const S@99@01 Set<Int>)
(assert (=
  S@99@01
  (edges_domain<Set<Int>> ($FVF.lookup_edges (as sm@97@01  $FVF<edges>) this@8@01))))
(declare-const S@100@01 Set<Int>)
(declare-const i@101@01 Int)
(declare-const nodeForId@102@01 $Ref)
(declare-const newNode@103@01 $Ref)
(declare-const res_node_map@104@01 INodeMap)
(declare-const res_copy_nodes@105@01 Set<$Ref>)
(push) ; 4
; Loop head block: Check well-definedness of invariant
(declare-const $t@106@01 $Snap)
(assert (= $t@106@01 ($Snap.combine ($Snap.first $t@106@01) ($Snap.second $t@106@01))))
(assert (= ($Snap.first $t@106@01) $Snap.unit))
; [eval] (nodeCopy in res_copy_nodes)
(assert (Set_in nodeCopy@84@01 res_copy_nodes@105@01))
(assert (=
  ($Snap.second $t@106@01)
  ($Snap.combine
    ($Snap.first ($Snap.second $t@106@01))
    ($Snap.second ($Snap.second $t@106@01)))))
(assert (= ($Snap.first ($Snap.second $t@106@01)) $Snap.unit))
; [eval] (this in setOfRef)
(assert (=
  ($Snap.second ($Snap.second $t@106@01))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second $t@106@01)))
    ($Snap.second ($Snap.second ($Snap.second $t@106@01))))))
(declare-const x@107@01 $Ref)
(push) ; 5
; [eval] (x in setOfRef)
(assert (Set_in x@107@01 setOfRef@10@01))
(pop) ; 5
(declare-fun inv@108@01 ($Ref) $Ref)
(declare-fun img@109@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
(push) ; 5
(assert (not (forall ((x@107@01 $Ref)) (!
  (=>
    (Set_in x@107@01 setOfRef@10@01)
    (or (= rd@12@01 $Perm.No) (< $Perm.No rd@12@01)))
  
  :qid |quant-u-13857|))))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
; Check receiver injectivity
(push) ; 5
(assert (not (forall ((x1@107@01 $Ref) (x2@107@01 $Ref)) (!
  (=>
    (and
      (and (Set_in x1@107@01 setOfRef@10@01) (< $Perm.No rd@12@01))
      (and (Set_in x2@107@01 setOfRef@10@01) (< $Perm.No rd@12@01))
      (= x1@107@01 x2@107@01))
    (= x1@107@01 x2@107@01))
  
  :qid |val-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((x@107@01 $Ref)) (!
  (=>
    (and (Set_in x@107@01 setOfRef@10@01) (< $Perm.No rd@12@01))
    (and (= (inv@108@01 x@107@01) x@107@01) (img@109@01 x@107@01)))
  :pattern ((Set_in x@107@01 setOfRef@10@01))
  :pattern ((inv@108@01 x@107@01))
  :pattern ((img@109@01 x@107@01))
  :qid |quant-u-13858|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@109@01 r)
      (and (Set_in (inv@108@01 r) setOfRef@10@01) (< $Perm.No rd@12@01)))
    (= (inv@108@01 r) r))
  :pattern ((inv@108@01 r))
  :qid |val-fctOfInv|)))
; Permissions are non-negative
(assert (forall ((x@107@01 $Ref)) (!
  (<= $Perm.No rd@12@01)
  :pattern ((Set_in x@107@01 setOfRef@10@01))
  :pattern ((inv@108@01 x@107@01))
  :pattern ((img@109@01 x@107@01))
  :qid |val-permAtLeastZero|)))
; Field permissions are at most one
(assert (forall ((x@107@01 $Ref)) (!
  (<= rd@12@01 $Perm.Write)
  :pattern ((Set_in x@107@01 setOfRef@10@01))
  :pattern ((inv@108@01 x@107@01))
  :pattern ((img@109@01 x@107@01))
  :qid |val-permAtMostOne|)))
; Permission implies non-null receiver
(assert (forall ((x@107@01 $Ref)) (!
  (=>
    (and (Set_in x@107@01 setOfRef@10@01) (< $Perm.No rd@12@01))
    (not (= x@107@01 $Ref.null)))
  :pattern ((Set_in x@107@01 setOfRef@10@01))
  :pattern ((inv@108@01 x@107@01))
  :pattern ((img@109@01 x@107@01))
  :qid |val-permImpliesNonNull|)))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second $t@106@01)))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@106@01))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@106@01)))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@106@01))))
  $Snap.unit))
; [eval] (forall x: Ref :: { (x in setOfRef) } (x in setOfRef) ==> x.val == old(x.val))
(declare-const x@110@01 $Ref)
(push) ; 5
; [eval] (x in setOfRef) ==> x.val == old(x.val)
; [eval] (x in setOfRef)
(push) ; 6
; [then-branch: 15 | x@110@01 in setOfRef@10@01 | live]
; [else-branch: 15 | !(x@110@01 in setOfRef@10@01) | live]
(push) ; 7
; [then-branch: 15 | x@110@01 in setOfRef@10@01]
(assert (Set_in x@110@01 setOfRef@10@01))
; [eval] x.val == old(x.val)
(push) ; 8
(assert (not (ite
  (and (img@109@01 x@110@01) (Set_in (inv@108@01 x@110@01) setOfRef@10@01))
  (< $Perm.No rd@12@01)
  false)))
(check-sat)
; unsat
(pop) ; 8
; 0.00s
; (get-info :all-statistics)
; [eval] old(x.val)
(declare-const sm@111@01 $FVF<val>)
; Definitional axioms for snapshot map values
(assert (forall ((r $Ref)) (!
  (=>
    (ite
      (and (img@19@01 r) (Set_in (inv@18@01 r) setOfRef@10@01))
      (< $Perm.No rd@12@01)
      false)
    (=
      ($FVF.lookup_val (as sm@111@01  $FVF<val>) r)
      ($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@16@01)))))) r)))
  :pattern (($FVF.lookup_val (as sm@111@01  $FVF<val>) r))
  :pattern (($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@16@01)))))) r))
  :qid |qp.fvfValDef20|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@28@01 r) (Set_in (inv@27@01 r) node_map_image@11@01))
    (=
      ($FVF.lookup_val (as sm@111@01  $FVF<val>) r)
      ($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@16@01)))))))))) r)))
  :pattern (($FVF.lookup_val (as sm@111@01  $FVF<val>) r))
  :pattern (($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@16@01)))))))))) r))
  :qid |qp.fvfValDef21|)))
(declare-const pm@112@01 $FPM)
(assert (forall ((r $Ref)) (!
  (=
    ($FVF.perm_val (as pm@112@01  $FPM) r)
    (+
      (ite
        (and (img@19@01 r) (Set_in (inv@18@01 r) setOfRef@10@01))
        rd@12@01
        $Perm.No)
      (ite
        (and (img@28@01 r) (Set_in (inv@27@01 r) node_map_image@11@01))
        $Perm.Write
        $Perm.No)))
  :pattern (($FVF.perm_val (as pm@112@01  $FPM) r))
  :qid |qp.resPrmSumDef22|)))
(push) ; 8
(assert (not (< $Perm.No ($FVF.perm_val (as pm@112@01  $FPM) x@110@01))))
(check-sat)
; unsat
(pop) ; 8
; 0.00s
; (get-info :all-statistics)
(pop) ; 7
(push) ; 7
; [else-branch: 15 | !(x@110@01 in setOfRef@10@01)]
(assert (not (Set_in x@110@01 setOfRef@10@01)))
(pop) ; 7
(pop) ; 6
; Joined path conditions
(assert (forall ((r $Ref)) (!
  (=>
    (ite
      (and (img@19@01 r) (Set_in (inv@18@01 r) setOfRef@10@01))
      (< $Perm.No rd@12@01)
      false)
    (=
      ($FVF.lookup_val (as sm@111@01  $FVF<val>) r)
      ($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@16@01)))))) r)))
  :pattern (($FVF.lookup_val (as sm@111@01  $FVF<val>) r))
  :pattern (($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@16@01)))))) r))
  :qid |qp.fvfValDef20|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@28@01 r) (Set_in (inv@27@01 r) node_map_image@11@01))
    (=
      ($FVF.lookup_val (as sm@111@01  $FVF<val>) r)
      ($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@16@01)))))))))) r)))
  :pattern (($FVF.lookup_val (as sm@111@01  $FVF<val>) r))
  :pattern (($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@16@01)))))))))) r))
  :qid |qp.fvfValDef21|)))
(assert (forall ((r $Ref)) (!
  (=
    ($FVF.perm_val (as pm@112@01  $FPM) r)
    (+
      (ite
        (and (img@19@01 r) (Set_in (inv@18@01 r) setOfRef@10@01))
        rd@12@01
        $Perm.No)
      (ite
        (and (img@28@01 r) (Set_in (inv@27@01 r) node_map_image@11@01))
        $Perm.Write
        $Perm.No)))
  :pattern (($FVF.perm_val (as pm@112@01  $FPM) r))
  :qid |qp.resPrmSumDef22|)))
; Joined path conditions
(assert (or (not (Set_in x@110@01 setOfRef@10@01)) (Set_in x@110@01 setOfRef@10@01)))
(pop) ; 5
; Nested auxiliary terms: globals (aux)
(assert (forall ((r $Ref)) (!
  (=>
    (ite
      (and (img@19@01 r) (Set_in (inv@18@01 r) setOfRef@10@01))
      (< $Perm.No rd@12@01)
      false)
    (=
      ($FVF.lookup_val (as sm@111@01  $FVF<val>) r)
      ($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@16@01)))))) r)))
  :pattern (($FVF.lookup_val (as sm@111@01  $FVF<val>) r))
  :pattern (($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@16@01)))))) r))
  :qid |qp.fvfValDef20|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@28@01 r) (Set_in (inv@27@01 r) node_map_image@11@01))
    (=
      ($FVF.lookup_val (as sm@111@01  $FVF<val>) r)
      ($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@16@01)))))))))) r)))
  :pattern (($FVF.lookup_val (as sm@111@01  $FVF<val>) r))
  :pattern (($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@16@01)))))))))) r))
  :qid |qp.fvfValDef21|)))
(assert (forall ((r $Ref)) (!
  (=
    ($FVF.perm_val (as pm@112@01  $FPM) r)
    (+
      (ite
        (and (img@19@01 r) (Set_in (inv@18@01 r) setOfRef@10@01))
        rd@12@01
        $Perm.No)
      (ite
        (and (img@28@01 r) (Set_in (inv@27@01 r) node_map_image@11@01))
        $Perm.Write
        $Perm.No)))
  :pattern (($FVF.perm_val (as pm@112@01  $FPM) r))
  :qid |qp.resPrmSumDef22|)))
; Nested auxiliary terms: non-globals (aux)
(assert (forall ((x@110@01 $Ref)) (!
  (or (not (Set_in x@110@01 setOfRef@10@01)) (Set_in x@110@01 setOfRef@10@01))
  :pattern ((Set_in x@110@01 setOfRef@10@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/examples/graph-copy/graph-copy.vpr@146@17@146@71-aux|)))
(assert (forall ((x@110@01 $Ref)) (!
  (=>
    (Set_in x@110@01 setOfRef@10@01)
    (=
      ($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.first ($Snap.second ($Snap.second $t@106@01)))) x@110@01)
      ($FVF.lookup_val (as sm@111@01  $FVF<val>) x@110@01)))
  :pattern ((Set_in x@110@01 setOfRef@10@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/examples/graph-copy/graph-copy.vpr@146@17@146@71|)))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@106@01))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@106@01)))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@106@01))))))))
(declare-const x@113@01 $Ref)
(push) ; 5
; [eval] (x in setOfRef)
(assert (Set_in x@113@01 setOfRef@10@01))
(pop) ; 5
(declare-fun inv@114@01 ($Ref) $Ref)
(declare-fun img@115@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
(push) ; 5
(assert (not (forall ((x@113@01 $Ref)) (!
  (=>
    (Set_in x@113@01 setOfRef@10@01)
    (or (= rd@12@01 $Perm.No) (< $Perm.No rd@12@01)))
  
  :qid |quant-u-13859|))))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
; Check receiver injectivity
(push) ; 5
(assert (not (forall ((x1@113@01 $Ref) (x2@113@01 $Ref)) (!
  (=>
    (and
      (and (Set_in x1@113@01 setOfRef@10@01) (< $Perm.No rd@12@01))
      (and (Set_in x2@113@01 setOfRef@10@01) (< $Perm.No rd@12@01))
      (= x1@113@01 x2@113@01))
    (= x1@113@01 x2@113@01))
  
  :qid |edges-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((x@113@01 $Ref)) (!
  (=>
    (and (Set_in x@113@01 setOfRef@10@01) (< $Perm.No rd@12@01))
    (and (= (inv@114@01 x@113@01) x@113@01) (img@115@01 x@113@01)))
  :pattern ((Set_in x@113@01 setOfRef@10@01))
  :pattern ((inv@114@01 x@113@01))
  :pattern ((img@115@01 x@113@01))
  :qid |quant-u-13860|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@115@01 r)
      (and (Set_in (inv@114@01 r) setOfRef@10@01) (< $Perm.No rd@12@01)))
    (= (inv@114@01 r) r))
  :pattern ((inv@114@01 r))
  :qid |edges-fctOfInv|)))
; Permissions are non-negative
(assert (forall ((x@113@01 $Ref)) (!
  (<= $Perm.No rd@12@01)
  :pattern ((Set_in x@113@01 setOfRef@10@01))
  :pattern ((inv@114@01 x@113@01))
  :pattern ((img@115@01 x@113@01))
  :qid |edges-permAtLeastZero|)))
; Field permissions are at most one
(assert (forall ((x@113@01 $Ref)) (!
  (<= rd@12@01 $Perm.Write)
  :pattern ((Set_in x@113@01 setOfRef@10@01))
  :pattern ((inv@114@01 x@113@01))
  :pattern ((img@115@01 x@113@01))
  :qid |edges-permAtMostOne|)))
; Permission implies non-null receiver
(assert (forall ((x@113@01 $Ref)) (!
  (=>
    (and (Set_in x@113@01 setOfRef@10@01) (< $Perm.No rd@12@01))
    (not (= x@113@01 $Ref.null)))
  :pattern ((Set_in x@113@01 setOfRef@10@01))
  :pattern ((inv@114@01 x@113@01))
  :pattern ((img@115@01 x@113@01))
  :qid |edges-permImpliesNonNull|)))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@106@01)))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@106@01))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@106@01)))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@106@01))))))
  $Snap.unit))
; [eval] (forall x: Ref :: { (x in setOfRef) } (x in setOfRef) ==> x.edges == old(x.edges))
(declare-const x@116@01 $Ref)
(push) ; 5
; [eval] (x in setOfRef) ==> x.edges == old(x.edges)
; [eval] (x in setOfRef)
(push) ; 6
; [then-branch: 16 | x@116@01 in setOfRef@10@01 | live]
; [else-branch: 16 | !(x@116@01 in setOfRef@10@01) | live]
(push) ; 7
; [then-branch: 16 | x@116@01 in setOfRef@10@01]
(assert (Set_in x@116@01 setOfRef@10@01))
; [eval] x.edges == old(x.edges)
(push) ; 8
(assert (not (ite
  (and (img@115@01 x@116@01) (Set_in (inv@114@01 x@116@01) setOfRef@10@01))
  (< $Perm.No rd@12@01)
  false)))
(check-sat)
; unsat
(pop) ; 8
; 0.00s
; (get-info :all-statistics)
; [eval] old(x.edges)
(declare-const sm@117@01 $FVF<edges>)
; Definitional axioms for snapshot map values
(assert (forall ((r $Ref)) (!
  (=>
    (ite
      (and (img@22@01 r) (Set_in (inv@21@01 r) setOfRef@10@01))
      (< $Perm.No rd@12@01)
      false)
    (=
      ($FVF.lookup_edges (as sm@117@01  $FVF<edges>) r)
      ($FVF.lookup_edges ($SortWrappers.$SnapTo$FVF<edges> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@16@01))))))) r)))
  :pattern (($FVF.lookup_edges (as sm@117@01  $FVF<edges>) r))
  :pattern (($FVF.lookup_edges ($SortWrappers.$SnapTo$FVF<edges> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@16@01))))))) r))
  :qid |qp.fvfValDef23|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@31@01 r) (Set_in (inv@30@01 r) node_map_image@11@01))
    (=
      ($FVF.lookup_edges (as sm@117@01  $FVF<edges>) r)
      ($FVF.lookup_edges ($SortWrappers.$SnapTo$FVF<edges> ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@16@01)))))))))) r)))
  :pattern (($FVF.lookup_edges (as sm@117@01  $FVF<edges>) r))
  :pattern (($FVF.lookup_edges ($SortWrappers.$SnapTo$FVF<edges> ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@16@01)))))))))) r))
  :qid |qp.fvfValDef24|)))
(declare-const pm@118@01 $FPM)
(assert (forall ((r $Ref)) (!
  (=
    ($FVF.perm_edges (as pm@118@01  $FPM) r)
    (+
      (ite
        (and (img@22@01 r) (Set_in (inv@21@01 r) setOfRef@10@01))
        rd@12@01
        $Perm.No)
      (ite
        (and (img@31@01 r) (Set_in (inv@30@01 r) node_map_image@11@01))
        $Perm.Write
        $Perm.No)))
  :pattern (($FVF.perm_edges (as pm@118@01  $FPM) r))
  :qid |qp.resPrmSumDef25|)))
(push) ; 8
(assert (not (< $Perm.No ($FVF.perm_edges (as pm@118@01  $FPM) x@116@01))))
(check-sat)
; unsat
(pop) ; 8
; 0.00s
; (get-info :all-statistics)
(pop) ; 7
(push) ; 7
; [else-branch: 16 | !(x@116@01 in setOfRef@10@01)]
(assert (not (Set_in x@116@01 setOfRef@10@01)))
(pop) ; 7
(pop) ; 6
; Joined path conditions
(assert (forall ((r $Ref)) (!
  (=>
    (ite
      (and (img@22@01 r) (Set_in (inv@21@01 r) setOfRef@10@01))
      (< $Perm.No rd@12@01)
      false)
    (=
      ($FVF.lookup_edges (as sm@117@01  $FVF<edges>) r)
      ($FVF.lookup_edges ($SortWrappers.$SnapTo$FVF<edges> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@16@01))))))) r)))
  :pattern (($FVF.lookup_edges (as sm@117@01  $FVF<edges>) r))
  :pattern (($FVF.lookup_edges ($SortWrappers.$SnapTo$FVF<edges> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@16@01))))))) r))
  :qid |qp.fvfValDef23|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@31@01 r) (Set_in (inv@30@01 r) node_map_image@11@01))
    (=
      ($FVF.lookup_edges (as sm@117@01  $FVF<edges>) r)
      ($FVF.lookup_edges ($SortWrappers.$SnapTo$FVF<edges> ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@16@01)))))))))) r)))
  :pattern (($FVF.lookup_edges (as sm@117@01  $FVF<edges>) r))
  :pattern (($FVF.lookup_edges ($SortWrappers.$SnapTo$FVF<edges> ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@16@01)))))))))) r))
  :qid |qp.fvfValDef24|)))
(assert (forall ((r $Ref)) (!
  (=
    ($FVF.perm_edges (as pm@118@01  $FPM) r)
    (+
      (ite
        (and (img@22@01 r) (Set_in (inv@21@01 r) setOfRef@10@01))
        rd@12@01
        $Perm.No)
      (ite
        (and (img@31@01 r) (Set_in (inv@30@01 r) node_map_image@11@01))
        $Perm.Write
        $Perm.No)))
  :pattern (($FVF.perm_edges (as pm@118@01  $FPM) r))
  :qid |qp.resPrmSumDef25|)))
; Joined path conditions
(assert (or (not (Set_in x@116@01 setOfRef@10@01)) (Set_in x@116@01 setOfRef@10@01)))
(pop) ; 5
; Nested auxiliary terms: globals (aux)
(assert (forall ((r $Ref)) (!
  (=>
    (ite
      (and (img@22@01 r) (Set_in (inv@21@01 r) setOfRef@10@01))
      (< $Perm.No rd@12@01)
      false)
    (=
      ($FVF.lookup_edges (as sm@117@01  $FVF<edges>) r)
      ($FVF.lookup_edges ($SortWrappers.$SnapTo$FVF<edges> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@16@01))))))) r)))
  :pattern (($FVF.lookup_edges (as sm@117@01  $FVF<edges>) r))
  :pattern (($FVF.lookup_edges ($SortWrappers.$SnapTo$FVF<edges> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@16@01))))))) r))
  :qid |qp.fvfValDef23|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@31@01 r) (Set_in (inv@30@01 r) node_map_image@11@01))
    (=
      ($FVF.lookup_edges (as sm@117@01  $FVF<edges>) r)
      ($FVF.lookup_edges ($SortWrappers.$SnapTo$FVF<edges> ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@16@01)))))))))) r)))
  :pattern (($FVF.lookup_edges (as sm@117@01  $FVF<edges>) r))
  :pattern (($FVF.lookup_edges ($SortWrappers.$SnapTo$FVF<edges> ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@16@01)))))))))) r))
  :qid |qp.fvfValDef24|)))
(assert (forall ((r $Ref)) (!
  (=
    ($FVF.perm_edges (as pm@118@01  $FPM) r)
    (+
      (ite
        (and (img@22@01 r) (Set_in (inv@21@01 r) setOfRef@10@01))
        rd@12@01
        $Perm.No)
      (ite
        (and (img@31@01 r) (Set_in (inv@30@01 r) node_map_image@11@01))
        $Perm.Write
        $Perm.No)))
  :pattern (($FVF.perm_edges (as pm@118@01  $FPM) r))
  :qid |qp.resPrmSumDef25|)))
; Nested auxiliary terms: non-globals (aux)
(assert (forall ((x@116@01 $Ref)) (!
  (or (not (Set_in x@116@01 setOfRef@10@01)) (Set_in x@116@01 setOfRef@10@01))
  :pattern ((Set_in x@116@01 setOfRef@10@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/examples/graph-copy/graph-copy.vpr@148@17@148@75-aux|)))
(assert (forall ((x@116@01 $Ref)) (!
  (=>
    (Set_in x@116@01 setOfRef@10@01)
    (=
      ($FVF.lookup_edges ($SortWrappers.$SnapTo$FVF<edges> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@106@01)))))) x@116@01)
      ($FVF.lookup_edges (as sm@117@01  $FVF<edges>) x@116@01)))
  :pattern ((Set_in x@116@01 setOfRef@10@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/examples/graph-copy/graph-copy.vpr@148@17@148@75|)))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@106@01))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@106@01)))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@106@01))))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@106@01)))))))
  $Snap.unit))
; [eval] (forall j: Int :: { (j in S) } { (edge_lookup(this.edges, j) in setOfRef) } (j in S) ==> (edge_lookup(this.edges, j) in setOfRef))
(declare-const j@119@01 Int)
(push) ; 5
; [eval] (j in S) ==> (edge_lookup(this.edges, j) in setOfRef)
; [eval] (j in S)
(push) ; 6
; [then-branch: 17 | j@119@01 in S@100@01 | live]
; [else-branch: 17 | !(j@119@01 in S@100@01) | live]
(push) ; 7
; [then-branch: 17 | j@119@01 in S@100@01]
(assert (Set_in j@119@01 S@100@01))
; [eval] (edge_lookup(this.edges, j) in setOfRef)
; [eval] edge_lookup(this.edges, j)
(push) ; 8
(assert (not (ite
  (and (img@115@01 this@8@01) (Set_in (inv@114@01 this@8@01) setOfRef@10@01))
  (< $Perm.No rd@12@01)
  false)))
(check-sat)
; unsat
(pop) ; 8
; 0.00s
; (get-info :all-statistics)
(pop) ; 7
(push) ; 7
; [else-branch: 17 | !(j@119@01 in S@100@01)]
(assert (not (Set_in j@119@01 S@100@01)))
(pop) ; 7
(pop) ; 6
; Joined path conditions
; Joined path conditions
(assert (or (not (Set_in j@119@01 S@100@01)) (Set_in j@119@01 S@100@01)))
(pop) ; 5
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall ((j@119@01 Int)) (!
  (or (not (Set_in j@119@01 S@100@01)) (Set_in j@119@01 S@100@01))
  :pattern ((Set_in j@119@01 S@100@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/examples/graph-copy/graph-copy.vpr@149@17@149@83-aux|)))
(assert (forall ((j@119@01 Int)) (!
  (or (not (Set_in j@119@01 S@100@01)) (Set_in j@119@01 S@100@01))
  :pattern ((Set_in (edge_lookup<Ref> ($FVF.lookup_edges ($SortWrappers.$SnapTo$FVF<edges> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@106@01)))))) this@8@01) j@119@01) setOfRef@10@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/examples/graph-copy/graph-copy.vpr@149@17@149@83-aux|)))
(assert (forall ((j@119@01 Int)) (!
  (=>
    (Set_in j@119@01 S@100@01)
    (Set_in (edge_lookup<Ref> ($FVF.lookup_edges ($SortWrappers.$SnapTo$FVF<edges> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@106@01)))))) this@8@01) j@119@01) setOfRef@10@01))
  :pattern ((Set_in j@119@01 S@100@01))
  :pattern ((Set_in (edge_lookup<Ref> ($FVF.lookup_edges ($SortWrappers.$SnapTo$FVF<edges> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@106@01)))))) this@8@01) j@119@01) setOfRef@10@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/examples/graph-copy/graph-copy.vpr@149@17@149@83|)))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@106@01)))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@106@01))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@106@01)))))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@106@01))))))))
  $Snap.unit))
; [eval] (forall r: Ref, j: Int :: { (r in setOfRef), (j in edges_domain(r.edges)) } { (r in setOfRef), edge_lookup(r.edges, j) } { (r in setOfRef), (edge_lookup(r.edges, j) in setOfRef) } { edges_domain(r.edges), edge_lookup(r.edges, j) } { edges_domain(r.edges), (edge_lookup(r.edges, j) in setOfRef) } { (j in edges_domain(r.edges)) } { (edge_lookup(r.edges, j) in setOfRef) } (r in setOfRef) && (j in edges_domain(r.edges)) ==> (edge_lookup(r.edges, j) in setOfRef))
(declare-const r@120@01 $Ref)
(declare-const j@121@01 Int)
(push) ; 5
; [eval] (r in setOfRef) && (j in edges_domain(r.edges)) ==> (edge_lookup(r.edges, j) in setOfRef)
; [eval] (r in setOfRef) && (j in edges_domain(r.edges))
; [eval] (r in setOfRef)
(push) ; 6
; [then-branch: 18 | !(r@120@01 in setOfRef@10@01) | live]
; [else-branch: 18 | r@120@01 in setOfRef@10@01 | live]
(push) ; 7
; [then-branch: 18 | !(r@120@01 in setOfRef@10@01)]
(assert (not (Set_in r@120@01 setOfRef@10@01)))
(pop) ; 7
(push) ; 7
; [else-branch: 18 | r@120@01 in setOfRef@10@01]
(assert (Set_in r@120@01 setOfRef@10@01))
; [eval] (j in edges_domain(r.edges))
; [eval] edges_domain(r.edges)
(push) ; 8
(assert (not (ite
  (and (img@115@01 r@120@01) (Set_in (inv@114@01 r@120@01) setOfRef@10@01))
  (< $Perm.No rd@12@01)
  false)))
(check-sat)
; unsat
(pop) ; 8
; 0.00s
; (get-info :all-statistics)
(pop) ; 7
(pop) ; 6
; Joined path conditions
; Joined path conditions
(assert (or (Set_in r@120@01 setOfRef@10@01) (not (Set_in r@120@01 setOfRef@10@01))))
(push) ; 6
; [then-branch: 19 | r@120@01 in setOfRef@10@01 && j@121@01 in edges_domain[Set[Int]](Lookup(edges, First:(Second:(Second:(Second:(Second:($t@106@01))))), r@120@01)) | live]
; [else-branch: 19 | !(r@120@01 in setOfRef@10@01 && j@121@01 in edges_domain[Set[Int]](Lookup(edges, First:(Second:(Second:(Second:(Second:($t@106@01))))), r@120@01))) | live]
(push) ; 7
; [then-branch: 19 | r@120@01 in setOfRef@10@01 && j@121@01 in edges_domain[Set[Int]](Lookup(edges, First:(Second:(Second:(Second:(Second:($t@106@01))))), r@120@01))]
(assert (and
  (Set_in r@120@01 setOfRef@10@01)
  (Set_in j@121@01 (edges_domain<Set<Int>> ($FVF.lookup_edges ($SortWrappers.$SnapTo$FVF<edges> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@106@01)))))) r@120@01)))))
; [eval] (edge_lookup(r.edges, j) in setOfRef)
; [eval] edge_lookup(r.edges, j)
(push) ; 8
(assert (not (ite
  (and (img@115@01 r@120@01) (Set_in (inv@114@01 r@120@01) setOfRef@10@01))
  (< $Perm.No rd@12@01)
  false)))
(check-sat)
; unsat
(pop) ; 8
; 0.00s
; (get-info :all-statistics)
(pop) ; 7
(push) ; 7
; [else-branch: 19 | !(r@120@01 in setOfRef@10@01 && j@121@01 in edges_domain[Set[Int]](Lookup(edges, First:(Second:(Second:(Second:(Second:($t@106@01))))), r@120@01)))]
(assert (not
  (and
    (Set_in r@120@01 setOfRef@10@01)
    (Set_in j@121@01 (edges_domain<Set<Int>> ($FVF.lookup_edges ($SortWrappers.$SnapTo$FVF<edges> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@106@01)))))) r@120@01))))))
(pop) ; 7
(pop) ; 6
; Joined path conditions
; Joined path conditions
(assert (or
  (not
    (and
      (Set_in r@120@01 setOfRef@10@01)
      (Set_in j@121@01 (edges_domain<Set<Int>> ($FVF.lookup_edges ($SortWrappers.$SnapTo$FVF<edges> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@106@01)))))) r@120@01)))))
  (and
    (Set_in r@120@01 setOfRef@10@01)
    (Set_in j@121@01 (edges_domain<Set<Int>> ($FVF.lookup_edges ($SortWrappers.$SnapTo$FVF<edges> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@106@01)))))) r@120@01))))))
(pop) ; 5
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall ((r@120@01 $Ref) (j@121@01 Int)) (!
  (and
    (or (Set_in r@120@01 setOfRef@10@01) (not (Set_in r@120@01 setOfRef@10@01)))
    (or
      (not
        (and
          (Set_in r@120@01 setOfRef@10@01)
          (Set_in j@121@01 (edges_domain<Set<Int>> ($FVF.lookup_edges ($SortWrappers.$SnapTo$FVF<edges> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@106@01)))))) r@120@01)))))
      (and
        (Set_in r@120@01 setOfRef@10@01)
        (Set_in j@121@01 (edges_domain<Set<Int>> ($FVF.lookup_edges ($SortWrappers.$SnapTo$FVF<edges> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@106@01)))))) r@120@01))))))
  :pattern ((Set_in r@120@01 setOfRef@10@01) (Set_in j@121@01 (edges_domain<Set<Int>> ($FVF.lookup_edges ($SortWrappers.$SnapTo$FVF<edges> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@106@01)))))) r@120@01))))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/examples/graph-copy/graph-copy.vpr@150@17@150@125-aux|)))
(assert (forall ((r@120@01 $Ref) (j@121@01 Int)) (!
  (and
    (or (Set_in r@120@01 setOfRef@10@01) (not (Set_in r@120@01 setOfRef@10@01)))
    (or
      (not
        (and
          (Set_in r@120@01 setOfRef@10@01)
          (Set_in j@121@01 (edges_domain<Set<Int>> ($FVF.lookup_edges ($SortWrappers.$SnapTo$FVF<edges> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@106@01)))))) r@120@01)))))
      (and
        (Set_in r@120@01 setOfRef@10@01)
        (Set_in j@121@01 (edges_domain<Set<Int>> ($FVF.lookup_edges ($SortWrappers.$SnapTo$FVF<edges> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@106@01)))))) r@120@01))))))
  :pattern ((Set_in r@120@01 setOfRef@10@01) (edge_lookup<Ref> ($FVF.lookup_edges ($SortWrappers.$SnapTo$FVF<edges> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@106@01)))))) r@120@01) j@121@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/examples/graph-copy/graph-copy.vpr@150@17@150@125-aux|)))
(assert (forall ((r@120@01 $Ref) (j@121@01 Int)) (!
  (and
    (or (Set_in r@120@01 setOfRef@10@01) (not (Set_in r@120@01 setOfRef@10@01)))
    (or
      (not
        (and
          (Set_in r@120@01 setOfRef@10@01)
          (Set_in j@121@01 (edges_domain<Set<Int>> ($FVF.lookup_edges ($SortWrappers.$SnapTo$FVF<edges> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@106@01)))))) r@120@01)))))
      (and
        (Set_in r@120@01 setOfRef@10@01)
        (Set_in j@121@01 (edges_domain<Set<Int>> ($FVF.lookup_edges ($SortWrappers.$SnapTo$FVF<edges> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@106@01)))))) r@120@01))))))
  :pattern ((Set_in r@120@01 setOfRef@10@01) (Set_in (edge_lookup<Ref> ($FVF.lookup_edges ($SortWrappers.$SnapTo$FVF<edges> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@106@01)))))) r@120@01) j@121@01) setOfRef@10@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/examples/graph-copy/graph-copy.vpr@150@17@150@125-aux|)))
(assert (forall ((r@120@01 $Ref) (j@121@01 Int)) (!
  (and
    (or (Set_in r@120@01 setOfRef@10@01) (not (Set_in r@120@01 setOfRef@10@01)))
    (or
      (not
        (and
          (Set_in r@120@01 setOfRef@10@01)
          (Set_in j@121@01 (edges_domain<Set<Int>> ($FVF.lookup_edges ($SortWrappers.$SnapTo$FVF<edges> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@106@01)))))) r@120@01)))))
      (and
        (Set_in r@120@01 setOfRef@10@01)
        (Set_in j@121@01 (edges_domain<Set<Int>> ($FVF.lookup_edges ($SortWrappers.$SnapTo$FVF<edges> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@106@01)))))) r@120@01))))))
  :pattern ((edges_domain<Set<Int>> ($FVF.lookup_edges ($SortWrappers.$SnapTo$FVF<edges> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@106@01)))))) r@120@01)) (edge_lookup<Ref> ($FVF.lookup_edges ($SortWrappers.$SnapTo$FVF<edges> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@106@01)))))) r@120@01) j@121@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/examples/graph-copy/graph-copy.vpr@150@17@150@125-aux|)))
(assert (forall ((r@120@01 $Ref) (j@121@01 Int)) (!
  (and
    (or (Set_in r@120@01 setOfRef@10@01) (not (Set_in r@120@01 setOfRef@10@01)))
    (or
      (not
        (and
          (Set_in r@120@01 setOfRef@10@01)
          (Set_in j@121@01 (edges_domain<Set<Int>> ($FVF.lookup_edges ($SortWrappers.$SnapTo$FVF<edges> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@106@01)))))) r@120@01)))))
      (and
        (Set_in r@120@01 setOfRef@10@01)
        (Set_in j@121@01 (edges_domain<Set<Int>> ($FVF.lookup_edges ($SortWrappers.$SnapTo$FVF<edges> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@106@01)))))) r@120@01))))))
  :pattern ((edges_domain<Set<Int>> ($FVF.lookup_edges ($SortWrappers.$SnapTo$FVF<edges> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@106@01)))))) r@120@01)) (Set_in (edge_lookup<Ref> ($FVF.lookup_edges ($SortWrappers.$SnapTo$FVF<edges> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@106@01)))))) r@120@01) j@121@01) setOfRef@10@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/examples/graph-copy/graph-copy.vpr@150@17@150@125-aux|)))
(assert (forall ((r@120@01 $Ref) (j@121@01 Int)) (!
  (and
    (or (Set_in r@120@01 setOfRef@10@01) (not (Set_in r@120@01 setOfRef@10@01)))
    (or
      (not
        (and
          (Set_in r@120@01 setOfRef@10@01)
          (Set_in j@121@01 (edges_domain<Set<Int>> ($FVF.lookup_edges ($SortWrappers.$SnapTo$FVF<edges> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@106@01)))))) r@120@01)))))
      (and
        (Set_in r@120@01 setOfRef@10@01)
        (Set_in j@121@01 (edges_domain<Set<Int>> ($FVF.lookup_edges ($SortWrappers.$SnapTo$FVF<edges> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@106@01)))))) r@120@01))))))
  :pattern ((Set_in j@121@01 (edges_domain<Set<Int>> ($FVF.lookup_edges ($SortWrappers.$SnapTo$FVF<edges> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@106@01)))))) r@120@01))))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/examples/graph-copy/graph-copy.vpr@150@17@150@125-aux|)))
(assert (forall ((r@120@01 $Ref) (j@121@01 Int)) (!
  (and
    (or (Set_in r@120@01 setOfRef@10@01) (not (Set_in r@120@01 setOfRef@10@01)))
    (or
      (not
        (and
          (Set_in r@120@01 setOfRef@10@01)
          (Set_in j@121@01 (edges_domain<Set<Int>> ($FVF.lookup_edges ($SortWrappers.$SnapTo$FVF<edges> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@106@01)))))) r@120@01)))))
      (and
        (Set_in r@120@01 setOfRef@10@01)
        (Set_in j@121@01 (edges_domain<Set<Int>> ($FVF.lookup_edges ($SortWrappers.$SnapTo$FVF<edges> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@106@01)))))) r@120@01))))))
  :pattern ((Set_in (edge_lookup<Ref> ($FVF.lookup_edges ($SortWrappers.$SnapTo$FVF<edges> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@106@01)))))) r@120@01) j@121@01) setOfRef@10@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/examples/graph-copy/graph-copy.vpr@150@17@150@125-aux|)))
(assert (forall ((r@120@01 $Ref) (j@121@01 Int)) (!
  (=>
    (and
      (Set_in r@120@01 setOfRef@10@01)
      (Set_in j@121@01 (edges_domain<Set<Int>> ($FVF.lookup_edges ($SortWrappers.$SnapTo$FVF<edges> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@106@01)))))) r@120@01))))
    (Set_in (edge_lookup<Ref> ($FVF.lookup_edges ($SortWrappers.$SnapTo$FVF<edges> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@106@01)))))) r@120@01) j@121@01) setOfRef@10@01))
  :pattern ((Set_in r@120@01 setOfRef@10@01) (Set_in j@121@01 (edges_domain<Set<Int>> ($FVF.lookup_edges ($SortWrappers.$SnapTo$FVF<edges> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@106@01)))))) r@120@01))))
  :pattern ((Set_in r@120@01 setOfRef@10@01) (edge_lookup<Ref> ($FVF.lookup_edges ($SortWrappers.$SnapTo$FVF<edges> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@106@01)))))) r@120@01) j@121@01))
  :pattern ((Set_in r@120@01 setOfRef@10@01) (Set_in (edge_lookup<Ref> ($FVF.lookup_edges ($SortWrappers.$SnapTo$FVF<edges> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@106@01)))))) r@120@01) j@121@01) setOfRef@10@01))
  :pattern ((edges_domain<Set<Int>> ($FVF.lookup_edges ($SortWrappers.$SnapTo$FVF<edges> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@106@01)))))) r@120@01)) (edge_lookup<Ref> ($FVF.lookup_edges ($SortWrappers.$SnapTo$FVF<edges> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@106@01)))))) r@120@01) j@121@01))
  :pattern ((edges_domain<Set<Int>> ($FVF.lookup_edges ($SortWrappers.$SnapTo$FVF<edges> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@106@01)))))) r@120@01)) (Set_in (edge_lookup<Ref> ($FVF.lookup_edges ($SortWrappers.$SnapTo$FVF<edges> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@106@01)))))) r@120@01) j@121@01) setOfRef@10@01))
  :pattern ((Set_in j@121@01 (edges_domain<Set<Int>> ($FVF.lookup_edges ($SortWrappers.$SnapTo$FVF<edges> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@106@01)))))) r@120@01))))
  :pattern ((Set_in (edge_lookup<Ref> ($FVF.lookup_edges ($SortWrappers.$SnapTo$FVF<edges> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@106@01)))))) r@120@01) j@121@01) setOfRef@10@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/examples/graph-copy/graph-copy.vpr@150@17@150@125|)))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@106@01))))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@106@01)))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@106@01))))))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@106@01)))))))))
  $Snap.unit))
; [eval] (node_map_image subset res_copy_nodes)
(assert (Set_subset node_map_image@11@01 res_copy_nodes@105@01))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@106@01)))))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@106@01))))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@106@01)))))))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@106@01))))))))))
  $Snap.unit))
; [eval] |(setOfRef intersection res_copy_nodes)| == 0
; [eval] |(setOfRef intersection res_copy_nodes)|
; [eval] (setOfRef intersection res_copy_nodes)
(assert (= (Set_card (Set_intersection setOfRef@10@01 res_copy_nodes@105@01)) 0))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@106@01))))))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@106@01)))))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@106@01))))))))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@106@01)))))))))))
  $Snap.unit))
; [eval] (forall r: Ref :: { (r in map_domain(res_node_map)) } { (lookup(res_node_map, r) in res_copy_nodes) } (r in map_domain(res_node_map)) ==> (lookup(res_node_map, r) in res_copy_nodes))
(declare-const r@122@01 $Ref)
(push) ; 5
; [eval] (r in map_domain(res_node_map)) ==> (lookup(res_node_map, r) in res_copy_nodes)
; [eval] (r in map_domain(res_node_map))
; [eval] map_domain(res_node_map)
(push) ; 6
; [then-branch: 20 | r@122@01 in map_domain[Seq[Ref]](res_node_map@104@01) | live]
; [else-branch: 20 | !(r@122@01 in map_domain[Seq[Ref]](res_node_map@104@01)) | live]
(push) ; 7
; [then-branch: 20 | r@122@01 in map_domain[Seq[Ref]](res_node_map@104@01)]
(assert (Seq_contains (map_domain<Seq<Ref>> res_node_map@104@01) r@122@01))
; [eval] (lookup(res_node_map, r) in res_copy_nodes)
; [eval] lookup(res_node_map, r)
(pop) ; 7
(push) ; 7
; [else-branch: 20 | !(r@122@01 in map_domain[Seq[Ref]](res_node_map@104@01))]
(assert (not (Seq_contains (map_domain<Seq<Ref>> res_node_map@104@01) r@122@01)))
(pop) ; 7
(pop) ; 6
; Joined path conditions
; Joined path conditions
(assert (or
  (not (Seq_contains (map_domain<Seq<Ref>> res_node_map@104@01) r@122@01))
  (Seq_contains (map_domain<Seq<Ref>> res_node_map@104@01) r@122@01)))
(pop) ; 5
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall ((r@122@01 $Ref)) (!
  (or
    (not (Seq_contains (map_domain<Seq<Ref>> res_node_map@104@01) r@122@01))
    (Seq_contains (map_domain<Seq<Ref>> res_node_map@104@01) r@122@01))
  :pattern ((Seq_contains (map_domain<Seq<Ref>> res_node_map@104@01) r@122@01))
  :pattern ((Seq_contains_trigger
    (map_domain<Seq<Ref>> res_node_map@104@01)
    r@122@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/examples/graph-copy/graph-copy.vpr@153@17@153@108-aux|)))
(assert (forall ((r@122@01 $Ref)) (!
  (or
    (not (Seq_contains (map_domain<Seq<Ref>> res_node_map@104@01) r@122@01))
    (Seq_contains (map_domain<Seq<Ref>> res_node_map@104@01) r@122@01))
  :pattern ((Seq_contains_trigger
    (map_domain<Seq<Ref>> res_node_map@104@01)
    r@122@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/examples/graph-copy/graph-copy.vpr@153@17@153@108-aux|)))
(assert (forall ((r@122@01 $Ref)) (!
  (or
    (not (Seq_contains (map_domain<Seq<Ref>> res_node_map@104@01) r@122@01))
    (Seq_contains (map_domain<Seq<Ref>> res_node_map@104@01) r@122@01))
  :pattern ((Set_in (lookup<Ref> res_node_map@104@01 r@122@01) res_copy_nodes@105@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/examples/graph-copy/graph-copy.vpr@153@17@153@108-aux|)))
(assert (forall ((r@122@01 $Ref)) (!
  (=>
    (Seq_contains (map_domain<Seq<Ref>> res_node_map@104@01) r@122@01)
    (Set_in (lookup<Ref> res_node_map@104@01 r@122@01) res_copy_nodes@105@01))
  :pattern ((Seq_contains (map_domain<Seq<Ref>> res_node_map@104@01) r@122@01))
  :pattern ((Seq_contains_trigger
    (map_domain<Seq<Ref>> res_node_map@104@01)
    r@122@01))
  :pattern ((Set_in (lookup<Ref> res_node_map@104@01 r@122@01) res_copy_nodes@105@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/examples/graph-copy/graph-copy.vpr@153@17@153@108|)))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@106@01)))))))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@106@01))))))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@106@01)))))))))))))))
(declare-const r@123@01 $Ref)
(push) ; 5
; [eval] (r in res_copy_nodes)
(assert (Set_in r@123@01 res_copy_nodes@105@01))
(pop) ; 5
(declare-fun inv@124@01 ($Ref) $Ref)
(declare-fun img@125@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
; Check receiver injectivity
(push) ; 5
(assert (not (forall ((r1@123@01 $Ref) (r2@123@01 $Ref)) (!
  (=>
    (and
      (Set_in r1@123@01 res_copy_nodes@105@01)
      (Set_in r2@123@01 res_copy_nodes@105@01)
      (= r1@123@01 r2@123@01))
    (= r1@123@01 r2@123@01))
  
  :qid |val-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((r@123@01 $Ref)) (!
  (=>
    (Set_in r@123@01 res_copy_nodes@105@01)
    (and (= (inv@124@01 r@123@01) r@123@01) (img@125@01 r@123@01)))
  :pattern ((Set_in r@123@01 res_copy_nodes@105@01))
  :pattern ((inv@124@01 r@123@01))
  :pattern ((img@125@01 r@123@01))
  :qid |quant-u-13862|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@125@01 r) (Set_in (inv@124@01 r) res_copy_nodes@105@01))
    (= (inv@124@01 r) r))
  :pattern ((inv@124@01 r))
  :qid |val-fctOfInv|)))
; Permissions are non-negative
; Field permissions are at most one
; Permission implies non-null receiver
(assert (forall ((r@123@01 $Ref)) (!
  (=> (Set_in r@123@01 res_copy_nodes@105@01) (not (= r@123@01 $Ref.null)))
  :pattern ((Set_in r@123@01 res_copy_nodes@105@01))
  :pattern ((inv@124@01 r@123@01))
  :pattern ((img@125@01 r@123@01))
  :qid |val-permImpliesNonNull|)))
(push) ; 5
(set-option :timeout 10)
(assert (not (forall ((r $Ref)) (!
  (and
    (= r@123@01 x@107@01)
    (=
      (and (img@125@01 r) (Set_in (inv@124@01 r) res_copy_nodes@105@01))
      (and (img@109@01 r) (Set_in (inv@108@01 r) setOfRef@10@01))))
  
  :qid |quant-u-13863|))))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(declare-const r@126@01 $Ref)
(set-option :timeout 0)
(push) ; 5
; [eval] (r in res_copy_nodes)
(assert (Set_in r@126@01 res_copy_nodes@105@01))
(pop) ; 5
(declare-fun inv@127@01 ($Ref) $Ref)
(declare-fun img@128@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
; Check receiver injectivity
(push) ; 5
(assert (not (forall ((r1@126@01 $Ref) (r2@126@01 $Ref)) (!
  (=>
    (and
      (Set_in r1@126@01 res_copy_nodes@105@01)
      (Set_in r2@126@01 res_copy_nodes@105@01)
      (= r1@126@01 r2@126@01))
    (= r1@126@01 r2@126@01))
  
  :qid |edges-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((r@126@01 $Ref)) (!
  (=>
    (Set_in r@126@01 res_copy_nodes@105@01)
    (and (= (inv@127@01 r@126@01) r@126@01) (img@128@01 r@126@01)))
  :pattern ((Set_in r@126@01 res_copy_nodes@105@01))
  :pattern ((inv@127@01 r@126@01))
  :pattern ((img@128@01 r@126@01))
  :qid |quant-u-13865|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@128@01 r) (Set_in (inv@127@01 r) res_copy_nodes@105@01))
    (= (inv@127@01 r) r))
  :pattern ((inv@127@01 r))
  :qid |edges-fctOfInv|)))
; Permissions are non-negative
; Field permissions are at most one
; Permission implies non-null receiver
(assert (forall ((r@126@01 $Ref)) (!
  (=> (Set_in r@126@01 res_copy_nodes@105@01) (not (= r@126@01 $Ref.null)))
  :pattern ((Set_in r@126@01 res_copy_nodes@105@01))
  :pattern ((inv@127@01 r@126@01))
  :pattern ((img@128@01 r@126@01))
  :qid |edges-permImpliesNonNull|)))
(push) ; 5
(set-option :timeout 10)
(assert (not (forall ((r $Ref)) (!
  (and
    (= r@126@01 x@113@01)
    (=
      (and (img@128@01 r) (Set_in (inv@127@01 r) res_copy_nodes@105@01))
      (and (img@115@01 r) (Set_in (inv@114@01 r) setOfRef@10@01))))
  
  :qid |quant-u-13866|))))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(pop) ; 4
(set-option :timeout 0)
(push) ; 4
; Loop head block: Establish invariant
; [eval] (nodeCopy in res_copy_nodes)
(push) ; 5
(assert (not (Set_in nodeCopy@84@01 res_copy_nodes@96@01)))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(assert (Set_in nodeCopy@84@01 res_copy_nodes@96@01))
; [eval] (this in setOfRef)
(declare-const x@129@01 $Ref)
(push) ; 5
; [eval] (x in setOfRef)
(assert (Set_in x@129@01 setOfRef@10@01))
(pop) ; 5
(declare-fun inv@130@01 ($Ref) $Ref)
(declare-fun img@131@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
(push) ; 5
(assert (not (forall ((x@129@01 $Ref)) (!
  (=>
    (Set_in x@129@01 setOfRef@10@01)
    (or (= rd@12@01 $Perm.No) (< $Perm.No rd@12@01)))
  
  :qid |quant-u-13867|))))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
; Check receiver injectivity
(push) ; 5
(assert (not (forall ((x1@129@01 $Ref) (x2@129@01 $Ref)) (!
  (=>
    (and
      (and (Set_in x1@129@01 setOfRef@10@01) (< $Perm.No rd@12@01))
      (and (Set_in x2@129@01 setOfRef@10@01) (< $Perm.No rd@12@01))
      (= x1@129@01 x2@129@01))
    (= x1@129@01 x2@129@01))
  
  :qid |val-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((x@129@01 $Ref)) (!
  (=>
    (and (Set_in x@129@01 setOfRef@10@01) (< $Perm.No rd@12@01))
    (and (= (inv@130@01 x@129@01) x@129@01) (img@131@01 x@129@01)))
  :pattern ((Set_in x@129@01 setOfRef@10@01))
  :pattern ((inv@130@01 x@129@01))
  :pattern ((img@131@01 x@129@01))
  :qid |val-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@131@01 r)
      (and (Set_in (inv@130@01 r) setOfRef@10@01) (< $Perm.No rd@12@01)))
    (= (inv@130@01 r) r))
  :pattern ((inv@130@01 r))
  :qid |val-fctOfInv|)))
; Precomputing data for removing quantified permissions
(define-fun pTaken@132@01 ((r $Ref)) $Perm
  (ite
    (and
      (Set_in (inv@130@01 r) setOfRef@10@01)
      (img@131@01 r)
      (= r (inv@130@01 r)))
    ($Perm.min
      (ite
        (and (img@28@01 r) (Set_in (inv@27@01 r) node_map_image@11@01))
        $Perm.Write
        $Perm.No)
      rd@12@01)
    $Perm.No))
(define-fun pTaken@133@01 ((r $Ref)) $Perm
  (ite
    (and
      (Set_in (inv@130@01 r) setOfRef@10@01)
      (img@131@01 r)
      (= r (inv@130@01 r)))
    ($Perm.min
      (ite
        (and (img@19@01 r) (Set_in (inv@18@01 r) setOfRef@10@01))
        rd@12@01
        $Perm.No)
      (- rd@12@01 (pTaken@132@01 r)))
    $Perm.No))
(define-fun pTaken@134@01 ((r $Ref)) $Perm
  (ite
    (and
      (Set_in (inv@130@01 r) setOfRef@10@01)
      (img@131@01 r)
      (= r (inv@130@01 r)))
    ($Perm.min
      (ite (= r nodeCopy@84@01) $Perm.Write $Perm.No)
      (- (- rd@12@01 (pTaken@132@01 r)) (pTaken@133@01 r)))
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
        (and (img@28@01 r) (Set_in (inv@27@01 r) node_map_image@11@01))
        $Perm.Write
        $Perm.No)
      (pTaken@132@01 r))
    $Perm.No)
  
  :qid |quant-u-13869|))))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 5
(set-option :timeout 10)
(assert (not (forall ((r $Ref)) (!
  (= (pTaken@132@01 r) $Perm.No)
  
  :qid |quant-u-13870|))))
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
    (and
      (Set_in (inv@130@01 r) setOfRef@10@01)
      (img@131@01 r)
      (= r (inv@130@01 r)))
    (= (- rd@12@01 (pTaken@132@01 r)) $Perm.No))
  
  :qid |quant-u-13871|))))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
; Chunk depleted?
(set-option :timeout 0)
(push) ; 5
(set-option :timeout 500)
(assert (not (forall ((r $Ref)) (!
  (=
    (-
      (ite
        (and (img@19@01 r) (Set_in (inv@18@01 r) setOfRef@10@01))
        rd@12@01
        $Perm.No)
      (pTaken@133@01 r))
    $Perm.No)
  
  :qid |quant-u-13872|))))
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
    (and
      (Set_in (inv@130@01 r) setOfRef@10@01)
      (img@131@01 r)
      (= r (inv@130@01 r)))
    (= (- (- rd@12@01 (pTaken@132@01 r)) (pTaken@133@01 r)) $Perm.No))
  
  :qid |quant-u-13873|))))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
; Final check if taken enough permissions
; Done removing quantified permissions
; [eval] (forall x: Ref :: { (x in setOfRef) } (x in setOfRef) ==> x.val == old(x.val))
(declare-const x@135@01 $Ref)
(set-option :timeout 0)
(push) ; 5
; [eval] (x in setOfRef) ==> x.val == old(x.val)
; [eval] (x in setOfRef)
(push) ; 6
; [then-branch: 21 | x@135@01 in setOfRef@10@01 | live]
; [else-branch: 21 | !(x@135@01 in setOfRef@10@01) | live]
(push) ; 7
; [then-branch: 21 | x@135@01 in setOfRef@10@01]
(assert (Set_in x@135@01 setOfRef@10@01))
; [eval] x.val == old(x.val)
(declare-const sm@136@01 $FVF<val>)
; Definitional axioms for snapshot map values
(assert (forall ((r $Ref)) (!
  (=>
    (= r nodeCopy@84@01)
    (=
      ($FVF.lookup_val (as sm@136@01  $FVF<val>) r)
      ($FVF.lookup_val (as sm@94@01  $FVF<val>) r)))
  :pattern (($FVF.lookup_val (as sm@136@01  $FVF<val>) r))
  :pattern (($FVF.lookup_val (as sm@94@01  $FVF<val>) r))
  :qid |qp.fvfValDef26|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@28@01 r) (Set_in (inv@27@01 r) node_map_image@11@01))
    (=
      ($FVF.lookup_val (as sm@136@01  $FVF<val>) r)
      ($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@16@01)))))))))) r)))
  :pattern (($FVF.lookup_val (as sm@136@01  $FVF<val>) r))
  :pattern (($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@16@01)))))))))) r))
  :qid |qp.fvfValDef27|)))
(assert (forall ((r $Ref)) (!
  (=>
    (ite
      (and (img@19@01 r) (Set_in (inv@18@01 r) setOfRef@10@01))
      (< $Perm.No rd@12@01)
      false)
    (=
      ($FVF.lookup_val (as sm@136@01  $FVF<val>) r)
      ($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@16@01)))))) r)))
  :pattern (($FVF.lookup_val (as sm@136@01  $FVF<val>) r))
  :pattern (($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@16@01)))))) r))
  :qid |qp.fvfValDef28|)))
(declare-const pm@137@01 $FPM)
(assert (forall ((r $Ref)) (!
  (=
    ($FVF.perm_val (as pm@137@01  $FPM) r)
    (+
      (+
        (ite (= r nodeCopy@84@01) $Perm.Write $Perm.No)
        (ite
          (and (img@28@01 r) (Set_in (inv@27@01 r) node_map_image@11@01))
          $Perm.Write
          $Perm.No))
      (ite
        (and (img@19@01 r) (Set_in (inv@18@01 r) setOfRef@10@01))
        rd@12@01
        $Perm.No)))
  :pattern (($FVF.perm_val (as pm@137@01  $FPM) r))
  :qid |qp.resPrmSumDef29|)))
(push) ; 8
(assert (not (< $Perm.No ($FVF.perm_val (as pm@137@01  $FPM) x@135@01))))
(check-sat)
; unsat
(pop) ; 8
; 0.00s
; (get-info :all-statistics)
; [eval] old(x.val)
(declare-const sm@138@01 $FVF<val>)
; Definitional axioms for snapshot map values
(assert (forall ((r $Ref)) (!
  (=>
    (ite
      (and (img@19@01 r) (Set_in (inv@18@01 r) setOfRef@10@01))
      (< $Perm.No rd@12@01)
      false)
    (=
      ($FVF.lookup_val (as sm@138@01  $FVF<val>) r)
      ($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@16@01)))))) r)))
  :pattern (($FVF.lookup_val (as sm@138@01  $FVF<val>) r))
  :pattern (($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@16@01)))))) r))
  :qid |qp.fvfValDef30|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@28@01 r) (Set_in (inv@27@01 r) node_map_image@11@01))
    (=
      ($FVF.lookup_val (as sm@138@01  $FVF<val>) r)
      ($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@16@01)))))))))) r)))
  :pattern (($FVF.lookup_val (as sm@138@01  $FVF<val>) r))
  :pattern (($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@16@01)))))))))) r))
  :qid |qp.fvfValDef31|)))
(declare-const pm@139@01 $FPM)
(assert (forall ((r $Ref)) (!
  (=
    ($FVF.perm_val (as pm@139@01  $FPM) r)
    (+
      (ite
        (and (img@19@01 r) (Set_in (inv@18@01 r) setOfRef@10@01))
        rd@12@01
        $Perm.No)
      (ite
        (and (img@28@01 r) (Set_in (inv@27@01 r) node_map_image@11@01))
        $Perm.Write
        $Perm.No)))
  :pattern (($FVF.perm_val (as pm@139@01  $FPM) r))
  :qid |qp.resPrmSumDef32|)))
(push) ; 8
(assert (not (< $Perm.No ($FVF.perm_val (as pm@139@01  $FPM) x@135@01))))
(check-sat)
; unsat
(pop) ; 8
; 0.00s
; (get-info :all-statistics)
(pop) ; 7
(push) ; 7
; [else-branch: 21 | !(x@135@01 in setOfRef@10@01)]
(assert (not (Set_in x@135@01 setOfRef@10@01)))
(pop) ; 7
(pop) ; 6
; Joined path conditions
(assert (forall ((r $Ref)) (!
  (=>
    (= r nodeCopy@84@01)
    (=
      ($FVF.lookup_val (as sm@136@01  $FVF<val>) r)
      ($FVF.lookup_val (as sm@94@01  $FVF<val>) r)))
  :pattern (($FVF.lookup_val (as sm@136@01  $FVF<val>) r))
  :pattern (($FVF.lookup_val (as sm@94@01  $FVF<val>) r))
  :qid |qp.fvfValDef26|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@28@01 r) (Set_in (inv@27@01 r) node_map_image@11@01))
    (=
      ($FVF.lookup_val (as sm@136@01  $FVF<val>) r)
      ($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@16@01)))))))))) r)))
  :pattern (($FVF.lookup_val (as sm@136@01  $FVF<val>) r))
  :pattern (($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@16@01)))))))))) r))
  :qid |qp.fvfValDef27|)))
(assert (forall ((r $Ref)) (!
  (=>
    (ite
      (and (img@19@01 r) (Set_in (inv@18@01 r) setOfRef@10@01))
      (< $Perm.No rd@12@01)
      false)
    (=
      ($FVF.lookup_val (as sm@136@01  $FVF<val>) r)
      ($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@16@01)))))) r)))
  :pattern (($FVF.lookup_val (as sm@136@01  $FVF<val>) r))
  :pattern (($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@16@01)))))) r))
  :qid |qp.fvfValDef28|)))
(assert (forall ((r $Ref)) (!
  (=
    ($FVF.perm_val (as pm@137@01  $FPM) r)
    (+
      (+
        (ite (= r nodeCopy@84@01) $Perm.Write $Perm.No)
        (ite
          (and (img@28@01 r) (Set_in (inv@27@01 r) node_map_image@11@01))
          $Perm.Write
          $Perm.No))
      (ite
        (and (img@19@01 r) (Set_in (inv@18@01 r) setOfRef@10@01))
        rd@12@01
        $Perm.No)))
  :pattern (($FVF.perm_val (as pm@137@01  $FPM) r))
  :qid |qp.resPrmSumDef29|)))
(assert (forall ((r $Ref)) (!
  (=>
    (ite
      (and (img@19@01 r) (Set_in (inv@18@01 r) setOfRef@10@01))
      (< $Perm.No rd@12@01)
      false)
    (=
      ($FVF.lookup_val (as sm@138@01  $FVF<val>) r)
      ($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@16@01)))))) r)))
  :pattern (($FVF.lookup_val (as sm@138@01  $FVF<val>) r))
  :pattern (($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@16@01)))))) r))
  :qid |qp.fvfValDef30|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@28@01 r) (Set_in (inv@27@01 r) node_map_image@11@01))
    (=
      ($FVF.lookup_val (as sm@138@01  $FVF<val>) r)
      ($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@16@01)))))))))) r)))
  :pattern (($FVF.lookup_val (as sm@138@01  $FVF<val>) r))
  :pattern (($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@16@01)))))))))) r))
  :qid |qp.fvfValDef31|)))
(assert (forall ((r $Ref)) (!
  (=
    ($FVF.perm_val (as pm@139@01  $FPM) r)
    (+
      (ite
        (and (img@19@01 r) (Set_in (inv@18@01 r) setOfRef@10@01))
        rd@12@01
        $Perm.No)
      (ite
        (and (img@28@01 r) (Set_in (inv@27@01 r) node_map_image@11@01))
        $Perm.Write
        $Perm.No)))
  :pattern (($FVF.perm_val (as pm@139@01  $FPM) r))
  :qid |qp.resPrmSumDef32|)))
; Joined path conditions
(assert (or (not (Set_in x@135@01 setOfRef@10@01)) (Set_in x@135@01 setOfRef@10@01)))
(pop) ; 5
; Nested auxiliary terms: globals (aux)
(assert (forall ((r $Ref)) (!
  (=>
    (= r nodeCopy@84@01)
    (=
      ($FVF.lookup_val (as sm@136@01  $FVF<val>) r)
      ($FVF.lookup_val (as sm@94@01  $FVF<val>) r)))
  :pattern (($FVF.lookup_val (as sm@136@01  $FVF<val>) r))
  :pattern (($FVF.lookup_val (as sm@94@01  $FVF<val>) r))
  :qid |qp.fvfValDef26|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@28@01 r) (Set_in (inv@27@01 r) node_map_image@11@01))
    (=
      ($FVF.lookup_val (as sm@136@01  $FVF<val>) r)
      ($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@16@01)))))))))) r)))
  :pattern (($FVF.lookup_val (as sm@136@01  $FVF<val>) r))
  :pattern (($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@16@01)))))))))) r))
  :qid |qp.fvfValDef27|)))
(assert (forall ((r $Ref)) (!
  (=>
    (ite
      (and (img@19@01 r) (Set_in (inv@18@01 r) setOfRef@10@01))
      (< $Perm.No rd@12@01)
      false)
    (=
      ($FVF.lookup_val (as sm@136@01  $FVF<val>) r)
      ($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@16@01)))))) r)))
  :pattern (($FVF.lookup_val (as sm@136@01  $FVF<val>) r))
  :pattern (($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@16@01)))))) r))
  :qid |qp.fvfValDef28|)))
(assert (forall ((r $Ref)) (!
  (=
    ($FVF.perm_val (as pm@137@01  $FPM) r)
    (+
      (+
        (ite (= r nodeCopy@84@01) $Perm.Write $Perm.No)
        (ite
          (and (img@28@01 r) (Set_in (inv@27@01 r) node_map_image@11@01))
          $Perm.Write
          $Perm.No))
      (ite
        (and (img@19@01 r) (Set_in (inv@18@01 r) setOfRef@10@01))
        rd@12@01
        $Perm.No)))
  :pattern (($FVF.perm_val (as pm@137@01  $FPM) r))
  :qid |qp.resPrmSumDef29|)))
(assert (forall ((r $Ref)) (!
  (=>
    (ite
      (and (img@19@01 r) (Set_in (inv@18@01 r) setOfRef@10@01))
      (< $Perm.No rd@12@01)
      false)
    (=
      ($FVF.lookup_val (as sm@138@01  $FVF<val>) r)
      ($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@16@01)))))) r)))
  :pattern (($FVF.lookup_val (as sm@138@01  $FVF<val>) r))
  :pattern (($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@16@01)))))) r))
  :qid |qp.fvfValDef30|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@28@01 r) (Set_in (inv@27@01 r) node_map_image@11@01))
    (=
      ($FVF.lookup_val (as sm@138@01  $FVF<val>) r)
      ($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@16@01)))))))))) r)))
  :pattern (($FVF.lookup_val (as sm@138@01  $FVF<val>) r))
  :pattern (($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@16@01)))))))))) r))
  :qid |qp.fvfValDef31|)))
(assert (forall ((r $Ref)) (!
  (=
    ($FVF.perm_val (as pm@139@01  $FPM) r)
    (+
      (ite
        (and (img@19@01 r) (Set_in (inv@18@01 r) setOfRef@10@01))
        rd@12@01
        $Perm.No)
      (ite
        (and (img@28@01 r) (Set_in (inv@27@01 r) node_map_image@11@01))
        $Perm.Write
        $Perm.No)))
  :pattern (($FVF.perm_val (as pm@139@01  $FPM) r))
  :qid |qp.resPrmSumDef32|)))
; Nested auxiliary terms: non-globals (aux)
(assert (forall ((x@135@01 $Ref)) (!
  (or (not (Set_in x@135@01 setOfRef@10@01)) (Set_in x@135@01 setOfRef@10@01))
  :pattern ((Set_in x@135@01 setOfRef@10@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/examples/graph-copy/graph-copy.vpr@146@17@146@71-aux|)))
(push) ; 5
(assert (not (forall ((x@135@01 $Ref)) (!
  (=>
    (Set_in x@135@01 setOfRef@10@01)
    (=
      ($FVF.lookup_val (as sm@136@01  $FVF<val>) x@135@01)
      ($FVF.lookup_val (as sm@138@01  $FVF<val>) x@135@01)))
  :pattern ((Set_in x@135@01 setOfRef@10@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/examples/graph-copy/graph-copy.vpr@146@17@146@71|))))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(assert (forall ((x@135@01 $Ref)) (!
  (=>
    (Set_in x@135@01 setOfRef@10@01)
    (=
      ($FVF.lookup_val (as sm@136@01  $FVF<val>) x@135@01)
      ($FVF.lookup_val (as sm@138@01  $FVF<val>) x@135@01)))
  :pattern ((Set_in x@135@01 setOfRef@10@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/examples/graph-copy/graph-copy.vpr@146@17@146@71|)))
(declare-const x@140@01 $Ref)
(push) ; 5
; [eval] (x in setOfRef)
(assert (Set_in x@140@01 setOfRef@10@01))
(pop) ; 5
(declare-fun inv@141@01 ($Ref) $Ref)
(declare-fun img@142@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
(push) ; 5
(assert (not (forall ((x@140@01 $Ref)) (!
  (=>
    (Set_in x@140@01 setOfRef@10@01)
    (or (= rd@12@01 $Perm.No) (< $Perm.No rd@12@01)))
  
  :qid |quant-u-13874|))))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
; Check receiver injectivity
(push) ; 5
(assert (not (forall ((x1@140@01 $Ref) (x2@140@01 $Ref)) (!
  (=>
    (and
      (and (Set_in x1@140@01 setOfRef@10@01) (< $Perm.No rd@12@01))
      (and (Set_in x2@140@01 setOfRef@10@01) (< $Perm.No rd@12@01))
      (= x1@140@01 x2@140@01))
    (= x1@140@01 x2@140@01))
  
  :qid |edges-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((x@140@01 $Ref)) (!
  (=>
    (and (Set_in x@140@01 setOfRef@10@01) (< $Perm.No rd@12@01))
    (and (= (inv@141@01 x@140@01) x@140@01) (img@142@01 x@140@01)))
  :pattern ((Set_in x@140@01 setOfRef@10@01))
  :pattern ((inv@141@01 x@140@01))
  :pattern ((img@142@01 x@140@01))
  :qid |edges-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@142@01 r)
      (and (Set_in (inv@141@01 r) setOfRef@10@01) (< $Perm.No rd@12@01)))
    (= (inv@141@01 r) r))
  :pattern ((inv@141@01 r))
  :qid |edges-fctOfInv|)))
; Precomputing data for removing quantified permissions
(define-fun pTaken@143@01 ((r $Ref)) $Perm
  (ite
    (and
      (Set_in (inv@141@01 r) setOfRef@10@01)
      (img@142@01 r)
      (= r (inv@141@01 r)))
    ($Perm.min
      (ite
        (and (img@22@01 r) (Set_in (inv@21@01 r) setOfRef@10@01))
        rd@12@01
        $Perm.No)
      rd@12@01)
    $Perm.No))
(define-fun pTaken@144@01 ((r $Ref)) $Perm
  (ite
    (and
      (Set_in (inv@141@01 r) setOfRef@10@01)
      (img@142@01 r)
      (= r (inv@141@01 r)))
    ($Perm.min
      (ite
        (and (img@31@01 r) (Set_in (inv@30@01 r) node_map_image@11@01))
        $Perm.Write
        $Perm.No)
      (- rd@12@01 (pTaken@143@01 r)))
    $Perm.No))
(define-fun pTaken@145@01 ((r $Ref)) $Perm
  (ite
    (and
      (Set_in (inv@141@01 r) setOfRef@10@01)
      (img@142@01 r)
      (= r (inv@141@01 r)))
    ($Perm.min
      (ite (= r nodeCopy@84@01) $Perm.Write $Perm.No)
      (- (- rd@12@01 (pTaken@143@01 r)) (pTaken@144@01 r)))
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
        (and (img@22@01 r) (Set_in (inv@21@01 r) setOfRef@10@01))
        rd@12@01
        $Perm.No)
      (pTaken@143@01 r))
    $Perm.No)
  
  :qid |quant-u-13876|))))
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
    (and
      (Set_in (inv@141@01 r) setOfRef@10@01)
      (img@142@01 r)
      (= r (inv@141@01 r)))
    (= (- rd@12@01 (pTaken@143@01 r)) $Perm.No))
  
  :qid |quant-u-13877|))))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
; Final check if taken enough permissions
; Done removing quantified permissions
; [eval] (forall x: Ref :: { (x in setOfRef) } (x in setOfRef) ==> x.edges == old(x.edges))
(declare-const x@146@01 $Ref)
(set-option :timeout 0)
(push) ; 5
; [eval] (x in setOfRef) ==> x.edges == old(x.edges)
; [eval] (x in setOfRef)
(push) ; 6
; [then-branch: 22 | x@146@01 in setOfRef@10@01 | live]
; [else-branch: 22 | !(x@146@01 in setOfRef@10@01) | live]
(push) ; 7
; [then-branch: 22 | x@146@01 in setOfRef@10@01]
(assert (Set_in x@146@01 setOfRef@10@01))
; [eval] x.edges == old(x.edges)
(assert (and
  (forall ((r $Ref)) (!
    (=>
      (and (img@31@01 r) (Set_in (inv@30@01 r) node_map_image@11@01))
      (=
        ($FVF.lookup_edges (as sm@97@01  $FVF<edges>) r)
        ($FVF.lookup_edges ($SortWrappers.$SnapTo$FVF<edges> ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@16@01)))))))))) r)))
    :pattern (($FVF.lookup_edges (as sm@97@01  $FVF<edges>) r))
    :pattern (($FVF.lookup_edges ($SortWrappers.$SnapTo$FVF<edges> ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@16@01)))))))))) r))
    :qid |qp.fvfValDef16|))
  (forall ((r $Ref)) (!
    (=>
      (ite
        (and (img@22@01 r) (Set_in (inv@21@01 r) setOfRef@10@01))
        (< $Perm.No rd@12@01)
        false)
      (=
        ($FVF.lookup_edges (as sm@97@01  $FVF<edges>) r)
        ($FVF.lookup_edges ($SortWrappers.$SnapTo$FVF<edges> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@16@01))))))) r)))
    :pattern (($FVF.lookup_edges (as sm@97@01  $FVF<edges>) r))
    :pattern (($FVF.lookup_edges ($SortWrappers.$SnapTo$FVF<edges> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@16@01))))))) r))
    :qid |qp.fvfValDef17|))
  (forall ((r $Ref)) (!
    (=>
      (= r nodeCopy@84@01)
      (=
        ($FVF.lookup_edges (as sm@97@01  $FVF<edges>) r)
        ($FVF.lookup_edges (as sm@88@01  $FVF<edges>) r)))
    :pattern (($FVF.lookup_edges (as sm@97@01  $FVF<edges>) r))
    :pattern (($FVF.lookup_edges (as sm@88@01  $FVF<edges>) r))
    :qid |qp.fvfValDef18|))))
(push) ; 8
(assert (not (<
  $Perm.No
  (+
    (+
      (ite
        (and
          (img@31@01 x@146@01)
          (Set_in (inv@30@01 x@146@01) node_map_image@11@01))
        $Perm.Write
        $Perm.No)
      (ite
        (and (img@22@01 x@146@01) (Set_in (inv@21@01 x@146@01) setOfRef@10@01))
        rd@12@01
        $Perm.No))
    (ite (= x@146@01 nodeCopy@84@01) $Perm.Write $Perm.No)))))
(check-sat)
; unsat
(pop) ; 8
; 0.00s
; (get-info :all-statistics)
; [eval] old(x.edges)
(declare-const sm@147@01 $FVF<edges>)
; Definitional axioms for snapshot map values
(assert (forall ((r $Ref)) (!
  (=>
    (ite
      (and (img@22@01 r) (Set_in (inv@21@01 r) setOfRef@10@01))
      (< $Perm.No rd@12@01)
      false)
    (=
      ($FVF.lookup_edges (as sm@147@01  $FVF<edges>) r)
      ($FVF.lookup_edges ($SortWrappers.$SnapTo$FVF<edges> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@16@01))))))) r)))
  :pattern (($FVF.lookup_edges (as sm@147@01  $FVF<edges>) r))
  :pattern (($FVF.lookup_edges ($SortWrappers.$SnapTo$FVF<edges> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@16@01))))))) r))
  :qid |qp.fvfValDef33|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@31@01 r) (Set_in (inv@30@01 r) node_map_image@11@01))
    (=
      ($FVF.lookup_edges (as sm@147@01  $FVF<edges>) r)
      ($FVF.lookup_edges ($SortWrappers.$SnapTo$FVF<edges> ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@16@01)))))))))) r)))
  :pattern (($FVF.lookup_edges (as sm@147@01  $FVF<edges>) r))
  :pattern (($FVF.lookup_edges ($SortWrappers.$SnapTo$FVF<edges> ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@16@01)))))))))) r))
  :qid |qp.fvfValDef34|)))
(declare-const pm@148@01 $FPM)
(assert (forall ((r $Ref)) (!
  (=
    ($FVF.perm_edges (as pm@148@01  $FPM) r)
    (+
      (ite
        (and (img@22@01 r) (Set_in (inv@21@01 r) setOfRef@10@01))
        rd@12@01
        $Perm.No)
      (ite
        (and (img@31@01 r) (Set_in (inv@30@01 r) node_map_image@11@01))
        $Perm.Write
        $Perm.No)))
  :pattern (($FVF.perm_edges (as pm@148@01  $FPM) r))
  :qid |qp.resPrmSumDef35|)))
(push) ; 8
(assert (not (< $Perm.No ($FVF.perm_edges (as pm@148@01  $FPM) x@146@01))))
(check-sat)
; unsat
(pop) ; 8
; 0.00s
; (get-info :all-statistics)
(pop) ; 7
(push) ; 7
; [else-branch: 22 | !(x@146@01 in setOfRef@10@01)]
(assert (not (Set_in x@146@01 setOfRef@10@01)))
(pop) ; 7
(pop) ; 6
; Joined path conditions
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@31@01 r) (Set_in (inv@30@01 r) node_map_image@11@01))
    (=
      ($FVF.lookup_edges (as sm@97@01  $FVF<edges>) r)
      ($FVF.lookup_edges ($SortWrappers.$SnapTo$FVF<edges> ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@16@01)))))))))) r)))
  :pattern (($FVF.lookup_edges (as sm@97@01  $FVF<edges>) r))
  :pattern (($FVF.lookup_edges ($SortWrappers.$SnapTo$FVF<edges> ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@16@01)))))))))) r))
  :qid |qp.fvfValDef16|)))
(assert (forall ((r $Ref)) (!
  (=>
    (ite
      (and (img@22@01 r) (Set_in (inv@21@01 r) setOfRef@10@01))
      (< $Perm.No rd@12@01)
      false)
    (=
      ($FVF.lookup_edges (as sm@97@01  $FVF<edges>) r)
      ($FVF.lookup_edges ($SortWrappers.$SnapTo$FVF<edges> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@16@01))))))) r)))
  :pattern (($FVF.lookup_edges (as sm@97@01  $FVF<edges>) r))
  :pattern (($FVF.lookup_edges ($SortWrappers.$SnapTo$FVF<edges> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@16@01))))))) r))
  :qid |qp.fvfValDef17|)))
(assert (forall ((r $Ref)) (!
  (=>
    (= r nodeCopy@84@01)
    (=
      ($FVF.lookup_edges (as sm@97@01  $FVF<edges>) r)
      ($FVF.lookup_edges (as sm@88@01  $FVF<edges>) r)))
  :pattern (($FVF.lookup_edges (as sm@97@01  $FVF<edges>) r))
  :pattern (($FVF.lookup_edges (as sm@88@01  $FVF<edges>) r))
  :qid |qp.fvfValDef18|)))
(assert (forall ((r $Ref)) (!
  (=>
    (ite
      (and (img@22@01 r) (Set_in (inv@21@01 r) setOfRef@10@01))
      (< $Perm.No rd@12@01)
      false)
    (=
      ($FVF.lookup_edges (as sm@147@01  $FVF<edges>) r)
      ($FVF.lookup_edges ($SortWrappers.$SnapTo$FVF<edges> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@16@01))))))) r)))
  :pattern (($FVF.lookup_edges (as sm@147@01  $FVF<edges>) r))
  :pattern (($FVF.lookup_edges ($SortWrappers.$SnapTo$FVF<edges> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@16@01))))))) r))
  :qid |qp.fvfValDef33|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@31@01 r) (Set_in (inv@30@01 r) node_map_image@11@01))
    (=
      ($FVF.lookup_edges (as sm@147@01  $FVF<edges>) r)
      ($FVF.lookup_edges ($SortWrappers.$SnapTo$FVF<edges> ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@16@01)))))))))) r)))
  :pattern (($FVF.lookup_edges (as sm@147@01  $FVF<edges>) r))
  :pattern (($FVF.lookup_edges ($SortWrappers.$SnapTo$FVF<edges> ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@16@01)))))))))) r))
  :qid |qp.fvfValDef34|)))
(assert (forall ((r $Ref)) (!
  (=
    ($FVF.perm_edges (as pm@148@01  $FPM) r)
    (+
      (ite
        (and (img@22@01 r) (Set_in (inv@21@01 r) setOfRef@10@01))
        rd@12@01
        $Perm.No)
      (ite
        (and (img@31@01 r) (Set_in (inv@30@01 r) node_map_image@11@01))
        $Perm.Write
        $Perm.No)))
  :pattern (($FVF.perm_edges (as pm@148@01  $FPM) r))
  :qid |qp.resPrmSumDef35|)))
; Joined path conditions
(assert (or (not (Set_in x@146@01 setOfRef@10@01)) (Set_in x@146@01 setOfRef@10@01)))
(pop) ; 5
; Nested auxiliary terms: globals (aux)
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@31@01 r) (Set_in (inv@30@01 r) node_map_image@11@01))
    (=
      ($FVF.lookup_edges (as sm@97@01  $FVF<edges>) r)
      ($FVF.lookup_edges ($SortWrappers.$SnapTo$FVF<edges> ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@16@01)))))))))) r)))
  :pattern (($FVF.lookup_edges (as sm@97@01  $FVF<edges>) r))
  :pattern (($FVF.lookup_edges ($SortWrappers.$SnapTo$FVF<edges> ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@16@01)))))))))) r))
  :qid |qp.fvfValDef16|)))
(assert (forall ((r $Ref)) (!
  (=>
    (ite
      (and (img@22@01 r) (Set_in (inv@21@01 r) setOfRef@10@01))
      (< $Perm.No rd@12@01)
      false)
    (=
      ($FVF.lookup_edges (as sm@97@01  $FVF<edges>) r)
      ($FVF.lookup_edges ($SortWrappers.$SnapTo$FVF<edges> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@16@01))))))) r)))
  :pattern (($FVF.lookup_edges (as sm@97@01  $FVF<edges>) r))
  :pattern (($FVF.lookup_edges ($SortWrappers.$SnapTo$FVF<edges> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@16@01))))))) r))
  :qid |qp.fvfValDef17|)))
(assert (forall ((r $Ref)) (!
  (=>
    (= r nodeCopy@84@01)
    (=
      ($FVF.lookup_edges (as sm@97@01  $FVF<edges>) r)
      ($FVF.lookup_edges (as sm@88@01  $FVF<edges>) r)))
  :pattern (($FVF.lookup_edges (as sm@97@01  $FVF<edges>) r))
  :pattern (($FVF.lookup_edges (as sm@88@01  $FVF<edges>) r))
  :qid |qp.fvfValDef18|)))
(assert (forall ((r $Ref)) (!
  (=>
    (ite
      (and (img@22@01 r) (Set_in (inv@21@01 r) setOfRef@10@01))
      (< $Perm.No rd@12@01)
      false)
    (=
      ($FVF.lookup_edges (as sm@147@01  $FVF<edges>) r)
      ($FVF.lookup_edges ($SortWrappers.$SnapTo$FVF<edges> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@16@01))))))) r)))
  :pattern (($FVF.lookup_edges (as sm@147@01  $FVF<edges>) r))
  :pattern (($FVF.lookup_edges ($SortWrappers.$SnapTo$FVF<edges> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@16@01))))))) r))
  :qid |qp.fvfValDef33|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@31@01 r) (Set_in (inv@30@01 r) node_map_image@11@01))
    (=
      ($FVF.lookup_edges (as sm@147@01  $FVF<edges>) r)
      ($FVF.lookup_edges ($SortWrappers.$SnapTo$FVF<edges> ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@16@01)))))))))) r)))
  :pattern (($FVF.lookup_edges (as sm@147@01  $FVF<edges>) r))
  :pattern (($FVF.lookup_edges ($SortWrappers.$SnapTo$FVF<edges> ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@16@01)))))))))) r))
  :qid |qp.fvfValDef34|)))
(assert (forall ((r $Ref)) (!
  (=
    ($FVF.perm_edges (as pm@148@01  $FPM) r)
    (+
      (ite
        (and (img@22@01 r) (Set_in (inv@21@01 r) setOfRef@10@01))
        rd@12@01
        $Perm.No)
      (ite
        (and (img@31@01 r) (Set_in (inv@30@01 r) node_map_image@11@01))
        $Perm.Write
        $Perm.No)))
  :pattern (($FVF.perm_edges (as pm@148@01  $FPM) r))
  :qid |qp.resPrmSumDef35|)))
; Nested auxiliary terms: non-globals (aux)
(assert (forall ((x@146@01 $Ref)) (!
  (or (not (Set_in x@146@01 setOfRef@10@01)) (Set_in x@146@01 setOfRef@10@01))
  :pattern ((Set_in x@146@01 setOfRef@10@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/examples/graph-copy/graph-copy.vpr@148@17@148@75-aux|)))
(push) ; 5
(assert (not (forall ((x@146@01 $Ref)) (!
  (=>
    (Set_in x@146@01 setOfRef@10@01)
    (=
      ($FVF.lookup_edges (as sm@97@01  $FVF<edges>) x@146@01)
      ($FVF.lookup_edges (as sm@147@01  $FVF<edges>) x@146@01)))
  :pattern ((Set_in x@146@01 setOfRef@10@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/examples/graph-copy/graph-copy.vpr@148@17@148@75|))))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(assert (forall ((x@146@01 $Ref)) (!
  (=>
    (Set_in x@146@01 setOfRef@10@01)
    (=
      ($FVF.lookup_edges (as sm@97@01  $FVF<edges>) x@146@01)
      ($FVF.lookup_edges (as sm@147@01  $FVF<edges>) x@146@01)))
  :pattern ((Set_in x@146@01 setOfRef@10@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/examples/graph-copy/graph-copy.vpr@148@17@148@75|)))
; [eval] (forall j: Int :: { (j in S) } { (edge_lookup(this.edges, j) in setOfRef) } (j in S) ==> (edge_lookup(this.edges, j) in setOfRef))
(declare-const j@149@01 Int)
(push) ; 5
; [eval] (j in S) ==> (edge_lookup(this.edges, j) in setOfRef)
; [eval] (j in S)
(push) ; 6
; [then-branch: 23 | j@149@01 in S@99@01 | live]
; [else-branch: 23 | !(j@149@01 in S@99@01) | live]
(push) ; 7
; [then-branch: 23 | j@149@01 in S@99@01]
(assert (Set_in j@149@01 S@99@01))
; [eval] (edge_lookup(this.edges, j) in setOfRef)
; [eval] edge_lookup(this.edges, j)
(assert (and
  (forall ((r $Ref)) (!
    (=>
      (and (img@31@01 r) (Set_in (inv@30@01 r) node_map_image@11@01))
      (=
        ($FVF.lookup_edges (as sm@97@01  $FVF<edges>) r)
        ($FVF.lookup_edges ($SortWrappers.$SnapTo$FVF<edges> ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@16@01)))))))))) r)))
    :pattern (($FVF.lookup_edges (as sm@97@01  $FVF<edges>) r))
    :pattern (($FVF.lookup_edges ($SortWrappers.$SnapTo$FVF<edges> ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@16@01)))))))))) r))
    :qid |qp.fvfValDef16|))
  (forall ((r $Ref)) (!
    (=>
      (ite
        (and (img@22@01 r) (Set_in (inv@21@01 r) setOfRef@10@01))
        (< $Perm.No rd@12@01)
        false)
      (=
        ($FVF.lookup_edges (as sm@97@01  $FVF<edges>) r)
        ($FVF.lookup_edges ($SortWrappers.$SnapTo$FVF<edges> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@16@01))))))) r)))
    :pattern (($FVF.lookup_edges (as sm@97@01  $FVF<edges>) r))
    :pattern (($FVF.lookup_edges ($SortWrappers.$SnapTo$FVF<edges> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@16@01))))))) r))
    :qid |qp.fvfValDef17|))
  (forall ((r $Ref)) (!
    (=>
      (= r nodeCopy@84@01)
      (=
        ($FVF.lookup_edges (as sm@97@01  $FVF<edges>) r)
        ($FVF.lookup_edges (as sm@88@01  $FVF<edges>) r)))
    :pattern (($FVF.lookup_edges (as sm@97@01  $FVF<edges>) r))
    :pattern (($FVF.lookup_edges (as sm@88@01  $FVF<edges>) r))
    :qid |qp.fvfValDef18|))))
(push) ; 8
(assert (not (<
  $Perm.No
  (+
    (+
      (ite
        (and
          (img@31@01 this@8@01)
          (Set_in (inv@30@01 this@8@01) node_map_image@11@01))
        $Perm.Write
        $Perm.No)
      (ite
        (and (img@22@01 this@8@01) (Set_in (inv@21@01 this@8@01) setOfRef@10@01))
        rd@12@01
        $Perm.No))
    (ite (= this@8@01 nodeCopy@84@01) $Perm.Write $Perm.No)))))
(check-sat)
; unsat
(pop) ; 8
; 0.00s
; (get-info :all-statistics)
(pop) ; 7
(push) ; 7
; [else-branch: 23 | !(j@149@01 in S@99@01)]
(assert (not (Set_in j@149@01 S@99@01)))
(pop) ; 7
(pop) ; 6
; Joined path conditions
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@31@01 r) (Set_in (inv@30@01 r) node_map_image@11@01))
    (=
      ($FVF.lookup_edges (as sm@97@01  $FVF<edges>) r)
      ($FVF.lookup_edges ($SortWrappers.$SnapTo$FVF<edges> ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@16@01)))))))))) r)))
  :pattern (($FVF.lookup_edges (as sm@97@01  $FVF<edges>) r))
  :pattern (($FVF.lookup_edges ($SortWrappers.$SnapTo$FVF<edges> ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@16@01)))))))))) r))
  :qid |qp.fvfValDef16|)))
(assert (forall ((r $Ref)) (!
  (=>
    (ite
      (and (img@22@01 r) (Set_in (inv@21@01 r) setOfRef@10@01))
      (< $Perm.No rd@12@01)
      false)
    (=
      ($FVF.lookup_edges (as sm@97@01  $FVF<edges>) r)
      ($FVF.lookup_edges ($SortWrappers.$SnapTo$FVF<edges> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@16@01))))))) r)))
  :pattern (($FVF.lookup_edges (as sm@97@01  $FVF<edges>) r))
  :pattern (($FVF.lookup_edges ($SortWrappers.$SnapTo$FVF<edges> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@16@01))))))) r))
  :qid |qp.fvfValDef17|)))
(assert (forall ((r $Ref)) (!
  (=>
    (= r nodeCopy@84@01)
    (=
      ($FVF.lookup_edges (as sm@97@01  $FVF<edges>) r)
      ($FVF.lookup_edges (as sm@88@01  $FVF<edges>) r)))
  :pattern (($FVF.lookup_edges (as sm@97@01  $FVF<edges>) r))
  :pattern (($FVF.lookup_edges (as sm@88@01  $FVF<edges>) r))
  :qid |qp.fvfValDef18|)))
; Joined path conditions
(assert (or (not (Set_in j@149@01 S@99@01)) (Set_in j@149@01 S@99@01)))
(pop) ; 5
; Nested auxiliary terms: globals (aux)
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@31@01 r) (Set_in (inv@30@01 r) node_map_image@11@01))
    (=
      ($FVF.lookup_edges (as sm@97@01  $FVF<edges>) r)
      ($FVF.lookup_edges ($SortWrappers.$SnapTo$FVF<edges> ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@16@01)))))))))) r)))
  :pattern (($FVF.lookup_edges (as sm@97@01  $FVF<edges>) r))
  :pattern (($FVF.lookup_edges ($SortWrappers.$SnapTo$FVF<edges> ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@16@01)))))))))) r))
  :qid |qp.fvfValDef16|)))
(assert (forall ((r $Ref)) (!
  (=>
    (ite
      (and (img@22@01 r) (Set_in (inv@21@01 r) setOfRef@10@01))
      (< $Perm.No rd@12@01)
      false)
    (=
      ($FVF.lookup_edges (as sm@97@01  $FVF<edges>) r)
      ($FVF.lookup_edges ($SortWrappers.$SnapTo$FVF<edges> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@16@01))))))) r)))
  :pattern (($FVF.lookup_edges (as sm@97@01  $FVF<edges>) r))
  :pattern (($FVF.lookup_edges ($SortWrappers.$SnapTo$FVF<edges> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@16@01))))))) r))
  :qid |qp.fvfValDef17|)))
(assert (forall ((r $Ref)) (!
  (=>
    (= r nodeCopy@84@01)
    (=
      ($FVF.lookup_edges (as sm@97@01  $FVF<edges>) r)
      ($FVF.lookup_edges (as sm@88@01  $FVF<edges>) r)))
  :pattern (($FVF.lookup_edges (as sm@97@01  $FVF<edges>) r))
  :pattern (($FVF.lookup_edges (as sm@88@01  $FVF<edges>) r))
  :qid |qp.fvfValDef18|)))
; Nested auxiliary terms: non-globals (aux)
(assert (forall ((j@149@01 Int)) (!
  (or (not (Set_in j@149@01 S@99@01)) (Set_in j@149@01 S@99@01))
  :pattern ((Set_in j@149@01 S@99@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/examples/graph-copy/graph-copy.vpr@149@17@149@83-aux|)))
(assert (forall ((j@149@01 Int)) (!
  (or (not (Set_in j@149@01 S@99@01)) (Set_in j@149@01 S@99@01))
  :pattern ((Set_in (edge_lookup<Ref> ($FVF.lookup_edges (as sm@97@01  $FVF<edges>) this@8@01) j@149@01) setOfRef@10@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/examples/graph-copy/graph-copy.vpr@149@17@149@83-aux|)))
(push) ; 5
(assert (not (forall ((j@149@01 Int)) (!
  (=>
    (Set_in j@149@01 S@99@01)
    (Set_in (edge_lookup<Ref> ($FVF.lookup_edges (as sm@97@01  $FVF<edges>) this@8@01) j@149@01) setOfRef@10@01))
  :pattern ((Set_in j@149@01 S@99@01))
  :pattern ((Set_in (edge_lookup<Ref> ($FVF.lookup_edges (as sm@97@01  $FVF<edges>) this@8@01) j@149@01) setOfRef@10@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/examples/graph-copy/graph-copy.vpr@149@17@149@83|))))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(assert (forall ((j@149@01 Int)) (!
  (=>
    (Set_in j@149@01 S@99@01)
    (Set_in (edge_lookup<Ref> ($FVF.lookup_edges (as sm@97@01  $FVF<edges>) this@8@01) j@149@01) setOfRef@10@01))
  :pattern ((Set_in j@149@01 S@99@01))
  :pattern ((Set_in (edge_lookup<Ref> ($FVF.lookup_edges (as sm@97@01  $FVF<edges>) this@8@01) j@149@01) setOfRef@10@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/examples/graph-copy/graph-copy.vpr@149@17@149@83|)))
; [eval] (forall r: Ref, j: Int :: { (r in setOfRef), (j in edges_domain(r.edges)) } { (r in setOfRef), edge_lookup(r.edges, j) } { (r in setOfRef), (edge_lookup(r.edges, j) in setOfRef) } { edges_domain(r.edges), edge_lookup(r.edges, j) } { edges_domain(r.edges), (edge_lookup(r.edges, j) in setOfRef) } { (j in edges_domain(r.edges)) } { (edge_lookup(r.edges, j) in setOfRef) } (r in setOfRef) && (j in edges_domain(r.edges)) ==> (edge_lookup(r.edges, j) in setOfRef))
(declare-const r@150@01 $Ref)
(declare-const j@151@01 Int)
(push) ; 5
; [eval] (r in setOfRef) && (j in edges_domain(r.edges)) ==> (edge_lookup(r.edges, j) in setOfRef)
; [eval] (r in setOfRef) && (j in edges_domain(r.edges))
; [eval] (r in setOfRef)
(push) ; 6
; [then-branch: 24 | !(r@150@01 in setOfRef@10@01) | live]
; [else-branch: 24 | r@150@01 in setOfRef@10@01 | live]
(push) ; 7
; [then-branch: 24 | !(r@150@01 in setOfRef@10@01)]
(assert (not (Set_in r@150@01 setOfRef@10@01)))
(pop) ; 7
(push) ; 7
; [else-branch: 24 | r@150@01 in setOfRef@10@01]
(assert (Set_in r@150@01 setOfRef@10@01))
; [eval] (j in edges_domain(r.edges))
; [eval] edges_domain(r.edges)
(assert (and
  (forall ((r $Ref)) (!
    (=>
      (and (img@31@01 r) (Set_in (inv@30@01 r) node_map_image@11@01))
      (=
        ($FVF.lookup_edges (as sm@97@01  $FVF<edges>) r)
        ($FVF.lookup_edges ($SortWrappers.$SnapTo$FVF<edges> ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@16@01)))))))))) r)))
    :pattern (($FVF.lookup_edges (as sm@97@01  $FVF<edges>) r))
    :pattern (($FVF.lookup_edges ($SortWrappers.$SnapTo$FVF<edges> ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@16@01)))))))))) r))
    :qid |qp.fvfValDef16|))
  (forall ((r $Ref)) (!
    (=>
      (ite
        (and (img@22@01 r) (Set_in (inv@21@01 r) setOfRef@10@01))
        (< $Perm.No rd@12@01)
        false)
      (=
        ($FVF.lookup_edges (as sm@97@01  $FVF<edges>) r)
        ($FVF.lookup_edges ($SortWrappers.$SnapTo$FVF<edges> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@16@01))))))) r)))
    :pattern (($FVF.lookup_edges (as sm@97@01  $FVF<edges>) r))
    :pattern (($FVF.lookup_edges ($SortWrappers.$SnapTo$FVF<edges> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@16@01))))))) r))
    :qid |qp.fvfValDef17|))
  (forall ((r $Ref)) (!
    (=>
      (= r nodeCopy@84@01)
      (=
        ($FVF.lookup_edges (as sm@97@01  $FVF<edges>) r)
        ($FVF.lookup_edges (as sm@88@01  $FVF<edges>) r)))
    :pattern (($FVF.lookup_edges (as sm@97@01  $FVF<edges>) r))
    :pattern (($FVF.lookup_edges (as sm@88@01  $FVF<edges>) r))
    :qid |qp.fvfValDef18|))))
(push) ; 8
(assert (not (<
  $Perm.No
  (+
    (+
      (ite
        (and
          (img@31@01 r@150@01)
          (Set_in (inv@30@01 r@150@01) node_map_image@11@01))
        $Perm.Write
        $Perm.No)
      (ite
        (and (img@22@01 r@150@01) (Set_in (inv@21@01 r@150@01) setOfRef@10@01))
        rd@12@01
        $Perm.No))
    (ite (= r@150@01 nodeCopy@84@01) $Perm.Write $Perm.No)))))
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
    (and (img@31@01 r) (Set_in (inv@30@01 r) node_map_image@11@01))
    (=
      ($FVF.lookup_edges (as sm@97@01  $FVF<edges>) r)
      ($FVF.lookup_edges ($SortWrappers.$SnapTo$FVF<edges> ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@16@01)))))))))) r)))
  :pattern (($FVF.lookup_edges (as sm@97@01  $FVF<edges>) r))
  :pattern (($FVF.lookup_edges ($SortWrappers.$SnapTo$FVF<edges> ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@16@01)))))))))) r))
  :qid |qp.fvfValDef16|)))
(assert (forall ((r $Ref)) (!
  (=>
    (ite
      (and (img@22@01 r) (Set_in (inv@21@01 r) setOfRef@10@01))
      (< $Perm.No rd@12@01)
      false)
    (=
      ($FVF.lookup_edges (as sm@97@01  $FVF<edges>) r)
      ($FVF.lookup_edges ($SortWrappers.$SnapTo$FVF<edges> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@16@01))))))) r)))
  :pattern (($FVF.lookup_edges (as sm@97@01  $FVF<edges>) r))
  :pattern (($FVF.lookup_edges ($SortWrappers.$SnapTo$FVF<edges> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@16@01))))))) r))
  :qid |qp.fvfValDef17|)))
(assert (forall ((r $Ref)) (!
  (=>
    (= r nodeCopy@84@01)
    (=
      ($FVF.lookup_edges (as sm@97@01  $FVF<edges>) r)
      ($FVF.lookup_edges (as sm@88@01  $FVF<edges>) r)))
  :pattern (($FVF.lookup_edges (as sm@97@01  $FVF<edges>) r))
  :pattern (($FVF.lookup_edges (as sm@88@01  $FVF<edges>) r))
  :qid |qp.fvfValDef18|)))
(assert (or (Set_in r@150@01 setOfRef@10@01) (not (Set_in r@150@01 setOfRef@10@01))))
(push) ; 6
; [then-branch: 25 | r@150@01 in setOfRef@10@01 && j@151@01 in edges_domain[Set[Int]](Lookup(edges, sm@97@01, r@150@01)) | live]
; [else-branch: 25 | !(r@150@01 in setOfRef@10@01 && j@151@01 in edges_domain[Set[Int]](Lookup(edges, sm@97@01, r@150@01))) | live]
(push) ; 7
; [then-branch: 25 | r@150@01 in setOfRef@10@01 && j@151@01 in edges_domain[Set[Int]](Lookup(edges, sm@97@01, r@150@01))]
(assert (and
  (Set_in r@150@01 setOfRef@10@01)
  (Set_in j@151@01 (edges_domain<Set<Int>> ($FVF.lookup_edges (as sm@97@01  $FVF<edges>) r@150@01)))))
; [eval] (edge_lookup(r.edges, j) in setOfRef)
; [eval] edge_lookup(r.edges, j)
(assert (and
  (forall ((r $Ref)) (!
    (=>
      (and (img@31@01 r) (Set_in (inv@30@01 r) node_map_image@11@01))
      (=
        ($FVF.lookup_edges (as sm@97@01  $FVF<edges>) r)
        ($FVF.lookup_edges ($SortWrappers.$SnapTo$FVF<edges> ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@16@01)))))))))) r)))
    :pattern (($FVF.lookup_edges (as sm@97@01  $FVF<edges>) r))
    :pattern (($FVF.lookup_edges ($SortWrappers.$SnapTo$FVF<edges> ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@16@01)))))))))) r))
    :qid |qp.fvfValDef16|))
  (forall ((r $Ref)) (!
    (=>
      (ite
        (and (img@22@01 r) (Set_in (inv@21@01 r) setOfRef@10@01))
        (< $Perm.No rd@12@01)
        false)
      (=
        ($FVF.lookup_edges (as sm@97@01  $FVF<edges>) r)
        ($FVF.lookup_edges ($SortWrappers.$SnapTo$FVF<edges> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@16@01))))))) r)))
    :pattern (($FVF.lookup_edges (as sm@97@01  $FVF<edges>) r))
    :pattern (($FVF.lookup_edges ($SortWrappers.$SnapTo$FVF<edges> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@16@01))))))) r))
    :qid |qp.fvfValDef17|))
  (forall ((r $Ref)) (!
    (=>
      (= r nodeCopy@84@01)
      (=
        ($FVF.lookup_edges (as sm@97@01  $FVF<edges>) r)
        ($FVF.lookup_edges (as sm@88@01  $FVF<edges>) r)))
    :pattern (($FVF.lookup_edges (as sm@97@01  $FVF<edges>) r))
    :pattern (($FVF.lookup_edges (as sm@88@01  $FVF<edges>) r))
    :qid |qp.fvfValDef18|))))
(push) ; 8
(assert (not (<
  $Perm.No
  (+
    (+
      (ite
        (and
          (img@31@01 r@150@01)
          (Set_in (inv@30@01 r@150@01) node_map_image@11@01))
        $Perm.Write
        $Perm.No)
      (ite
        (and (img@22@01 r@150@01) (Set_in (inv@21@01 r@150@01) setOfRef@10@01))
        rd@12@01
        $Perm.No))
    (ite (= r@150@01 nodeCopy@84@01) $Perm.Write $Perm.No)))))
(check-sat)
; unsat
(pop) ; 8
; 0.00s
; (get-info :all-statistics)
(pop) ; 7
(push) ; 7
; [else-branch: 25 | !(r@150@01 in setOfRef@10@01 && j@151@01 in edges_domain[Set[Int]](Lookup(edges, sm@97@01, r@150@01)))]
(assert (not
  (and
    (Set_in r@150@01 setOfRef@10@01)
    (Set_in j@151@01 (edges_domain<Set<Int>> ($FVF.lookup_edges (as sm@97@01  $FVF<edges>) r@150@01))))))
(pop) ; 7
(pop) ; 6
; Joined path conditions
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@31@01 r) (Set_in (inv@30@01 r) node_map_image@11@01))
    (=
      ($FVF.lookup_edges (as sm@97@01  $FVF<edges>) r)
      ($FVF.lookup_edges ($SortWrappers.$SnapTo$FVF<edges> ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@16@01)))))))))) r)))
  :pattern (($FVF.lookup_edges (as sm@97@01  $FVF<edges>) r))
  :pattern (($FVF.lookup_edges ($SortWrappers.$SnapTo$FVF<edges> ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@16@01)))))))))) r))
  :qid |qp.fvfValDef16|)))
(assert (forall ((r $Ref)) (!
  (=>
    (ite
      (and (img@22@01 r) (Set_in (inv@21@01 r) setOfRef@10@01))
      (< $Perm.No rd@12@01)
      false)
    (=
      ($FVF.lookup_edges (as sm@97@01  $FVF<edges>) r)
      ($FVF.lookup_edges ($SortWrappers.$SnapTo$FVF<edges> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@16@01))))))) r)))
  :pattern (($FVF.lookup_edges (as sm@97@01  $FVF<edges>) r))
  :pattern (($FVF.lookup_edges ($SortWrappers.$SnapTo$FVF<edges> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@16@01))))))) r))
  :qid |qp.fvfValDef17|)))
(assert (forall ((r $Ref)) (!
  (=>
    (= r nodeCopy@84@01)
    (=
      ($FVF.lookup_edges (as sm@97@01  $FVF<edges>) r)
      ($FVF.lookup_edges (as sm@88@01  $FVF<edges>) r)))
  :pattern (($FVF.lookup_edges (as sm@97@01  $FVF<edges>) r))
  :pattern (($FVF.lookup_edges (as sm@88@01  $FVF<edges>) r))
  :qid |qp.fvfValDef18|)))
; Joined path conditions
(assert (or
  (not
    (and
      (Set_in r@150@01 setOfRef@10@01)
      (Set_in j@151@01 (edges_domain<Set<Int>> ($FVF.lookup_edges (as sm@97@01  $FVF<edges>) r@150@01)))))
  (and
    (Set_in r@150@01 setOfRef@10@01)
    (Set_in j@151@01 (edges_domain<Set<Int>> ($FVF.lookup_edges (as sm@97@01  $FVF<edges>) r@150@01))))))
(pop) ; 5
; Nested auxiliary terms: globals (aux)
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@31@01 r) (Set_in (inv@30@01 r) node_map_image@11@01))
    (=
      ($FVF.lookup_edges (as sm@97@01  $FVF<edges>) r)
      ($FVF.lookup_edges ($SortWrappers.$SnapTo$FVF<edges> ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@16@01)))))))))) r)))
  :pattern (($FVF.lookup_edges (as sm@97@01  $FVF<edges>) r))
  :pattern (($FVF.lookup_edges ($SortWrappers.$SnapTo$FVF<edges> ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@16@01)))))))))) r))
  :qid |qp.fvfValDef16|)))
(assert (forall ((r $Ref)) (!
  (=>
    (ite
      (and (img@22@01 r) (Set_in (inv@21@01 r) setOfRef@10@01))
      (< $Perm.No rd@12@01)
      false)
    (=
      ($FVF.lookup_edges (as sm@97@01  $FVF<edges>) r)
      ($FVF.lookup_edges ($SortWrappers.$SnapTo$FVF<edges> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@16@01))))))) r)))
  :pattern (($FVF.lookup_edges (as sm@97@01  $FVF<edges>) r))
  :pattern (($FVF.lookup_edges ($SortWrappers.$SnapTo$FVF<edges> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@16@01))))))) r))
  :qid |qp.fvfValDef17|)))
(assert (forall ((r $Ref)) (!
  (=>
    (= r nodeCopy@84@01)
    (=
      ($FVF.lookup_edges (as sm@97@01  $FVF<edges>) r)
      ($FVF.lookup_edges (as sm@88@01  $FVF<edges>) r)))
  :pattern (($FVF.lookup_edges (as sm@97@01  $FVF<edges>) r))
  :pattern (($FVF.lookup_edges (as sm@88@01  $FVF<edges>) r))
  :qid |qp.fvfValDef18|)))
; Nested auxiliary terms: non-globals (aux)
(assert (forall ((r@150@01 $Ref) (j@151@01 Int)) (!
  (and
    (or (Set_in r@150@01 setOfRef@10@01) (not (Set_in r@150@01 setOfRef@10@01)))
    (or
      (not
        (and
          (Set_in r@150@01 setOfRef@10@01)
          (Set_in j@151@01 (edges_domain<Set<Int>> ($FVF.lookup_edges (as sm@97@01  $FVF<edges>) r@150@01)))))
      (and
        (Set_in r@150@01 setOfRef@10@01)
        (Set_in j@151@01 (edges_domain<Set<Int>> ($FVF.lookup_edges (as sm@97@01  $FVF<edges>) r@150@01))))))
  :pattern ((Set_in r@150@01 setOfRef@10@01) (Set_in j@151@01 (edges_domain<Set<Int>> ($FVF.lookup_edges (as sm@97@01  $FVF<edges>) r@150@01))))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/examples/graph-copy/graph-copy.vpr@150@17@150@125-aux|)))
(assert (forall ((r@150@01 $Ref) (j@151@01 Int)) (!
  (and
    (or (Set_in r@150@01 setOfRef@10@01) (not (Set_in r@150@01 setOfRef@10@01)))
    (or
      (not
        (and
          (Set_in r@150@01 setOfRef@10@01)
          (Set_in j@151@01 (edges_domain<Set<Int>> ($FVF.lookup_edges (as sm@97@01  $FVF<edges>) r@150@01)))))
      (and
        (Set_in r@150@01 setOfRef@10@01)
        (Set_in j@151@01 (edges_domain<Set<Int>> ($FVF.lookup_edges (as sm@97@01  $FVF<edges>) r@150@01))))))
  :pattern ((Set_in r@150@01 setOfRef@10@01) (edge_lookup<Ref> ($FVF.lookup_edges (as sm@97@01  $FVF<edges>) r@150@01) j@151@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/examples/graph-copy/graph-copy.vpr@150@17@150@125-aux|)))
(assert (forall ((r@150@01 $Ref) (j@151@01 Int)) (!
  (and
    (or (Set_in r@150@01 setOfRef@10@01) (not (Set_in r@150@01 setOfRef@10@01)))
    (or
      (not
        (and
          (Set_in r@150@01 setOfRef@10@01)
          (Set_in j@151@01 (edges_domain<Set<Int>> ($FVF.lookup_edges (as sm@97@01  $FVF<edges>) r@150@01)))))
      (and
        (Set_in r@150@01 setOfRef@10@01)
        (Set_in j@151@01 (edges_domain<Set<Int>> ($FVF.lookup_edges (as sm@97@01  $FVF<edges>) r@150@01))))))
  :pattern ((Set_in r@150@01 setOfRef@10@01) (Set_in (edge_lookup<Ref> ($FVF.lookup_edges (as sm@97@01  $FVF<edges>) r@150@01) j@151@01) setOfRef@10@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/examples/graph-copy/graph-copy.vpr@150@17@150@125-aux|)))
(assert (forall ((r@150@01 $Ref) (j@151@01 Int)) (!
  (and
    (or (Set_in r@150@01 setOfRef@10@01) (not (Set_in r@150@01 setOfRef@10@01)))
    (or
      (not
        (and
          (Set_in r@150@01 setOfRef@10@01)
          (Set_in j@151@01 (edges_domain<Set<Int>> ($FVF.lookup_edges (as sm@97@01  $FVF<edges>) r@150@01)))))
      (and
        (Set_in r@150@01 setOfRef@10@01)
        (Set_in j@151@01 (edges_domain<Set<Int>> ($FVF.lookup_edges (as sm@97@01  $FVF<edges>) r@150@01))))))
  :pattern ((edges_domain<Set<Int>> ($FVF.lookup_edges (as sm@97@01  $FVF<edges>) r@150@01)) (edge_lookup<Ref> ($FVF.lookup_edges (as sm@97@01  $FVF<edges>) r@150@01) j@151@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/examples/graph-copy/graph-copy.vpr@150@17@150@125-aux|)))
(assert (forall ((r@150@01 $Ref) (j@151@01 Int)) (!
  (and
    (or (Set_in r@150@01 setOfRef@10@01) (not (Set_in r@150@01 setOfRef@10@01)))
    (or
      (not
        (and
          (Set_in r@150@01 setOfRef@10@01)
          (Set_in j@151@01 (edges_domain<Set<Int>> ($FVF.lookup_edges (as sm@97@01  $FVF<edges>) r@150@01)))))
      (and
        (Set_in r@150@01 setOfRef@10@01)
        (Set_in j@151@01 (edges_domain<Set<Int>> ($FVF.lookup_edges (as sm@97@01  $FVF<edges>) r@150@01))))))
  :pattern ((edges_domain<Set<Int>> ($FVF.lookup_edges (as sm@97@01  $FVF<edges>) r@150@01)) (Set_in (edge_lookup<Ref> ($FVF.lookup_edges (as sm@97@01  $FVF<edges>) r@150@01) j@151@01) setOfRef@10@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/examples/graph-copy/graph-copy.vpr@150@17@150@125-aux|)))
(assert (forall ((r@150@01 $Ref) (j@151@01 Int)) (!
  (and
    (or (Set_in r@150@01 setOfRef@10@01) (not (Set_in r@150@01 setOfRef@10@01)))
    (or
      (not
        (and
          (Set_in r@150@01 setOfRef@10@01)
          (Set_in j@151@01 (edges_domain<Set<Int>> ($FVF.lookup_edges (as sm@97@01  $FVF<edges>) r@150@01)))))
      (and
        (Set_in r@150@01 setOfRef@10@01)
        (Set_in j@151@01 (edges_domain<Set<Int>> ($FVF.lookup_edges (as sm@97@01  $FVF<edges>) r@150@01))))))
  :pattern ((Set_in j@151@01 (edges_domain<Set<Int>> ($FVF.lookup_edges (as sm@97@01  $FVF<edges>) r@150@01))))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/examples/graph-copy/graph-copy.vpr@150@17@150@125-aux|)))
(assert (forall ((r@150@01 $Ref) (j@151@01 Int)) (!
  (and
    (or (Set_in r@150@01 setOfRef@10@01) (not (Set_in r@150@01 setOfRef@10@01)))
    (or
      (not
        (and
          (Set_in r@150@01 setOfRef@10@01)
          (Set_in j@151@01 (edges_domain<Set<Int>> ($FVF.lookup_edges (as sm@97@01  $FVF<edges>) r@150@01)))))
      (and
        (Set_in r@150@01 setOfRef@10@01)
        (Set_in j@151@01 (edges_domain<Set<Int>> ($FVF.lookup_edges (as sm@97@01  $FVF<edges>) r@150@01))))))
  :pattern ((Set_in (edge_lookup<Ref> ($FVF.lookup_edges (as sm@97@01  $FVF<edges>) r@150@01) j@151@01) setOfRef@10@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/examples/graph-copy/graph-copy.vpr@150@17@150@125-aux|)))
(push) ; 5
(assert (not (forall ((r@150@01 $Ref) (j@151@01 Int)) (!
  (=>
    (and
      (Set_in r@150@01 setOfRef@10@01)
      (Set_in j@151@01 (edges_domain<Set<Int>> ($FVF.lookup_edges (as sm@97@01  $FVF<edges>) r@150@01))))
    (Set_in (edge_lookup<Ref> ($FVF.lookup_edges (as sm@97@01  $FVF<edges>) r@150@01) j@151@01) setOfRef@10@01))
  :pattern ((Set_in r@150@01 setOfRef@10@01) (Set_in j@151@01 (edges_domain<Set<Int>> ($FVF.lookup_edges (as sm@97@01  $FVF<edges>) r@150@01))))
  :pattern ((Set_in r@150@01 setOfRef@10@01) (edge_lookup<Ref> ($FVF.lookup_edges (as sm@97@01  $FVF<edges>) r@150@01) j@151@01))
  :pattern ((Set_in r@150@01 setOfRef@10@01) (Set_in (edge_lookup<Ref> ($FVF.lookup_edges (as sm@97@01  $FVF<edges>) r@150@01) j@151@01) setOfRef@10@01))
  :pattern ((edges_domain<Set<Int>> ($FVF.lookup_edges (as sm@97@01  $FVF<edges>) r@150@01)) (edge_lookup<Ref> ($FVF.lookup_edges (as sm@97@01  $FVF<edges>) r@150@01) j@151@01))
  :pattern ((edges_domain<Set<Int>> ($FVF.lookup_edges (as sm@97@01  $FVF<edges>) r@150@01)) (Set_in (edge_lookup<Ref> ($FVF.lookup_edges (as sm@97@01  $FVF<edges>) r@150@01) j@151@01) setOfRef@10@01))
  :pattern ((Set_in j@151@01 (edges_domain<Set<Int>> ($FVF.lookup_edges (as sm@97@01  $FVF<edges>) r@150@01))))
  :pattern ((Set_in (edge_lookup<Ref> ($FVF.lookup_edges (as sm@97@01  $FVF<edges>) r@150@01) j@151@01) setOfRef@10@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/examples/graph-copy/graph-copy.vpr@150@17@150@125|))))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(assert (forall ((r@150@01 $Ref) (j@151@01 Int)) (!
  (=>
    (and
      (Set_in r@150@01 setOfRef@10@01)
      (Set_in j@151@01 (edges_domain<Set<Int>> ($FVF.lookup_edges (as sm@97@01  $FVF<edges>) r@150@01))))
    (Set_in (edge_lookup<Ref> ($FVF.lookup_edges (as sm@97@01  $FVF<edges>) r@150@01) j@151@01) setOfRef@10@01))
  :pattern ((Set_in r@150@01 setOfRef@10@01) (Set_in j@151@01 (edges_domain<Set<Int>> ($FVF.lookup_edges (as sm@97@01  $FVF<edges>) r@150@01))))
  :pattern ((Set_in r@150@01 setOfRef@10@01) (edge_lookup<Ref> ($FVF.lookup_edges (as sm@97@01  $FVF<edges>) r@150@01) j@151@01))
  :pattern ((Set_in r@150@01 setOfRef@10@01) (Set_in (edge_lookup<Ref> ($FVF.lookup_edges (as sm@97@01  $FVF<edges>) r@150@01) j@151@01) setOfRef@10@01))
  :pattern ((edges_domain<Set<Int>> ($FVF.lookup_edges (as sm@97@01  $FVF<edges>) r@150@01)) (edge_lookup<Ref> ($FVF.lookup_edges (as sm@97@01  $FVF<edges>) r@150@01) j@151@01))
  :pattern ((edges_domain<Set<Int>> ($FVF.lookup_edges (as sm@97@01  $FVF<edges>) r@150@01)) (Set_in (edge_lookup<Ref> ($FVF.lookup_edges (as sm@97@01  $FVF<edges>) r@150@01) j@151@01) setOfRef@10@01))
  :pattern ((Set_in j@151@01 (edges_domain<Set<Int>> ($FVF.lookup_edges (as sm@97@01  $FVF<edges>) r@150@01))))
  :pattern ((Set_in (edge_lookup<Ref> ($FVF.lookup_edges (as sm@97@01  $FVF<edges>) r@150@01) j@151@01) setOfRef@10@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/examples/graph-copy/graph-copy.vpr@150@17@150@125|)))
; [eval] (node_map_image subset res_copy_nodes)
(push) ; 5
(assert (not (Set_subset node_map_image@11@01 res_copy_nodes@96@01)))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(assert (Set_subset node_map_image@11@01 res_copy_nodes@96@01))
; [eval] |(setOfRef intersection res_copy_nodes)| == 0
; [eval] |(setOfRef intersection res_copy_nodes)|
; [eval] (setOfRef intersection res_copy_nodes)
(push) ; 5
(assert (not (= (Set_card (Set_intersection setOfRef@10@01 res_copy_nodes@96@01)) 0)))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(assert (= (Set_card (Set_intersection setOfRef@10@01 res_copy_nodes@96@01)) 0))
; [eval] (forall r: Ref :: { (r in map_domain(res_node_map)) } { (lookup(res_node_map, r) in res_copy_nodes) } (r in map_domain(res_node_map)) ==> (lookup(res_node_map, r) in res_copy_nodes))
(declare-const r@152@01 $Ref)
(push) ; 5
; [eval] (r in map_domain(res_node_map)) ==> (lookup(res_node_map, r) in res_copy_nodes)
; [eval] (r in map_domain(res_node_map))
; [eval] map_domain(res_node_map)
(push) ; 6
; [then-branch: 26 | r@152@01 in map_domain[Seq[Ref]](res_node_map@95@01) | live]
; [else-branch: 26 | !(r@152@01 in map_domain[Seq[Ref]](res_node_map@95@01)) | live]
(push) ; 7
; [then-branch: 26 | r@152@01 in map_domain[Seq[Ref]](res_node_map@95@01)]
(assert (Seq_contains (map_domain<Seq<Ref>> res_node_map@95@01) r@152@01))
; [eval] (lookup(res_node_map, r) in res_copy_nodes)
; [eval] lookup(res_node_map, r)
(pop) ; 7
(push) ; 7
; [else-branch: 26 | !(r@152@01 in map_domain[Seq[Ref]](res_node_map@95@01))]
(assert (not (Seq_contains (map_domain<Seq<Ref>> res_node_map@95@01) r@152@01)))
(pop) ; 7
(pop) ; 6
; Joined path conditions
; Joined path conditions
(assert (or
  (not (Seq_contains (map_domain<Seq<Ref>> res_node_map@95@01) r@152@01))
  (Seq_contains (map_domain<Seq<Ref>> res_node_map@95@01) r@152@01)))
(pop) ; 5
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall ((r@152@01 $Ref)) (!
  (or
    (not (Seq_contains (map_domain<Seq<Ref>> res_node_map@95@01) r@152@01))
    (Seq_contains (map_domain<Seq<Ref>> res_node_map@95@01) r@152@01))
  :pattern ((Seq_contains (map_domain<Seq<Ref>> res_node_map@95@01) r@152@01))
  :pattern ((Seq_contains_trigger
    (map_domain<Seq<Ref>> res_node_map@95@01)
    r@152@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/examples/graph-copy/graph-copy.vpr@153@17@153@108-aux|)))
(assert (forall ((r@152@01 $Ref)) (!
  (or
    (not (Seq_contains (map_domain<Seq<Ref>> res_node_map@95@01) r@152@01))
    (Seq_contains (map_domain<Seq<Ref>> res_node_map@95@01) r@152@01))
  :pattern ((Seq_contains_trigger
    (map_domain<Seq<Ref>> res_node_map@95@01)
    r@152@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/examples/graph-copy/graph-copy.vpr@153@17@153@108-aux|)))
(assert (forall ((r@152@01 $Ref)) (!
  (or
    (not (Seq_contains (map_domain<Seq<Ref>> res_node_map@95@01) r@152@01))
    (Seq_contains (map_domain<Seq<Ref>> res_node_map@95@01) r@152@01))
  :pattern ((Set_in (lookup<Ref> res_node_map@95@01 r@152@01) res_copy_nodes@96@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/examples/graph-copy/graph-copy.vpr@153@17@153@108-aux|)))
(push) ; 5
(assert (not (forall ((r@152@01 $Ref)) (!
  (=>
    (Seq_contains (map_domain<Seq<Ref>> res_node_map@95@01) r@152@01)
    (Set_in (lookup<Ref> res_node_map@95@01 r@152@01) res_copy_nodes@96@01))
  :pattern ((Seq_contains (map_domain<Seq<Ref>> res_node_map@95@01) r@152@01))
  :pattern ((Seq_contains_trigger
    (map_domain<Seq<Ref>> res_node_map@95@01)
    r@152@01))
  :pattern ((Seq_contains_trigger
    (map_domain<Seq<Ref>> res_node_map@95@01)
    r@152@01))
  :pattern ((Set_in (lookup<Ref> res_node_map@95@01 r@152@01) res_copy_nodes@96@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/examples/graph-copy/graph-copy.vpr@153@17@153@108|))))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(assert (forall ((r@152@01 $Ref)) (!
  (=>
    (Seq_contains (map_domain<Seq<Ref>> res_node_map@95@01) r@152@01)
    (Set_in (lookup<Ref> res_node_map@95@01 r@152@01) res_copy_nodes@96@01))
  :pattern ((Seq_contains (map_domain<Seq<Ref>> res_node_map@95@01) r@152@01))
  :pattern ((Seq_contains_trigger
    (map_domain<Seq<Ref>> res_node_map@95@01)
    r@152@01))
  :pattern ((Set_in (lookup<Ref> res_node_map@95@01 r@152@01) res_copy_nodes@96@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/examples/graph-copy/graph-copy.vpr@153@17@153@108|)))
(declare-const r@153@01 $Ref)
(push) ; 5
; [eval] (r in res_copy_nodes)
(assert (Set_in r@153@01 res_copy_nodes@96@01))
(pop) ; 5
(declare-fun inv@154@01 ($Ref) $Ref)
(declare-fun img@155@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
; Check receiver injectivity
(push) ; 5
(assert (not (forall ((r1@153@01 $Ref) (r2@153@01 $Ref)) (!
  (=>
    (and
      (Set_in r1@153@01 res_copy_nodes@96@01)
      (Set_in r2@153@01 res_copy_nodes@96@01)
      (= r1@153@01 r2@153@01))
    (= r1@153@01 r2@153@01))
  
  :qid |val-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((r@153@01 $Ref)) (!
  (=>
    (Set_in r@153@01 res_copy_nodes@96@01)
    (and (= (inv@154@01 r@153@01) r@153@01) (img@155@01 r@153@01)))
  :pattern ((Set_in r@153@01 res_copy_nodes@96@01))
  :pattern ((inv@154@01 r@153@01))
  :pattern ((img@155@01 r@153@01))
  :qid |val-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@155@01 r) (Set_in (inv@154@01 r) res_copy_nodes@96@01))
    (= (inv@154@01 r) r))
  :pattern ((inv@154@01 r))
  :qid |val-fctOfInv|)))
; Precomputing data for removing quantified permissions
(define-fun pTaken@156@01 ((r $Ref)) $Perm
  (ite
    (and
      (Set_in (inv@154@01 r) res_copy_nodes@96@01)
      (img@155@01 r)
      (= r (inv@154@01 r)))
    ($Perm.min
      (ite
        (and (img@28@01 r) (Set_in (inv@27@01 r) node_map_image@11@01))
        $Perm.Write
        $Perm.No)
      $Perm.Write)
    $Perm.No))
(define-fun pTaken@157@01 ((r $Ref)) $Perm
  (ite
    (and
      (Set_in (inv@154@01 r) res_copy_nodes@96@01)
      (img@155@01 r)
      (= r (inv@154@01 r)))
    ($Perm.min
      (ite (= r nodeCopy@84@01) $Perm.Write $Perm.No)
      (- $Perm.Write (pTaken@156@01 r)))
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
        (and (img@28@01 r) (Set_in (inv@27@01 r) node_map_image@11@01))
        $Perm.Write
        $Perm.No)
      (pTaken@156@01 r))
    $Perm.No)
  
  :qid |quant-u-13880|))))
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
    (and
      (Set_in (inv@154@01 r) res_copy_nodes@96@01)
      (img@155@01 r)
      (= r (inv@154@01 r)))
    (= (- $Perm.Write (pTaken@156@01 r)) $Perm.No))
  
  :qid |quant-u-13881|))))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
; Chunk depleted?
(set-option :timeout 0)
(push) ; 5
(set-option :timeout 500)
(assert (not (= (- $Perm.Write (pTaken@157@01 nodeCopy@84@01)) $Perm.No)))
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
    (and
      (Set_in (inv@154@01 r) res_copy_nodes@96@01)
      (img@155@01 r)
      (= r (inv@154@01 r)))
    (= (- (- $Perm.Write (pTaken@156@01 r)) (pTaken@157@01 r)) $Perm.No))
  
  :qid |quant-u-13883|))))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
; Final check if taken enough permissions
; Done removing quantified permissions
(declare-const r@158@01 $Ref)
(set-option :timeout 0)
(push) ; 5
; [eval] (r in res_copy_nodes)
(assert (Set_in r@158@01 res_copy_nodes@96@01))
(pop) ; 5
(declare-fun inv@159@01 ($Ref) $Ref)
(declare-fun img@160@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
; Check receiver injectivity
(push) ; 5
(assert (not (forall ((r1@158@01 $Ref) (r2@158@01 $Ref)) (!
  (=>
    (and
      (Set_in r1@158@01 res_copy_nodes@96@01)
      (Set_in r2@158@01 res_copy_nodes@96@01)
      (= r1@158@01 r2@158@01))
    (= r1@158@01 r2@158@01))
  
  :qid |edges-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((r@158@01 $Ref)) (!
  (=>
    (Set_in r@158@01 res_copy_nodes@96@01)
    (and (= (inv@159@01 r@158@01) r@158@01) (img@160@01 r@158@01)))
  :pattern ((Set_in r@158@01 res_copy_nodes@96@01))
  :pattern ((inv@159@01 r@158@01))
  :pattern ((img@160@01 r@158@01))
  :qid |edges-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@160@01 r) (Set_in (inv@159@01 r) res_copy_nodes@96@01))
    (= (inv@159@01 r) r))
  :pattern ((inv@159@01 r))
  :qid |edges-fctOfInv|)))
; Precomputing data for removing quantified permissions
(define-fun pTaken@161@01 ((r $Ref)) $Perm
  (ite
    (and
      (Set_in (inv@159@01 r) res_copy_nodes@96@01)
      (img@160@01 r)
      (= r (inv@159@01 r)))
    ($Perm.min
      (ite
        (and (img@31@01 r) (Set_in (inv@30@01 r) node_map_image@11@01))
        $Perm.Write
        $Perm.No)
      $Perm.Write)
    $Perm.No))
(define-fun pTaken@162@01 ((r $Ref)) $Perm
  (ite
    (and
      (Set_in (inv@159@01 r) res_copy_nodes@96@01)
      (img@160@01 r)
      (= r (inv@159@01 r)))
    ($Perm.min
      (ite (= r nodeCopy@84@01) $Perm.Write $Perm.No)
      (- $Perm.Write (pTaken@161@01 r)))
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
        (and (img@31@01 r) (Set_in (inv@30@01 r) node_map_image@11@01))
        $Perm.Write
        $Perm.No)
      (pTaken@161@01 r))
    $Perm.No)
  
  :qid |quant-u-13886|))))
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
    (and
      (Set_in (inv@159@01 r) res_copy_nodes@96@01)
      (img@160@01 r)
      (= r (inv@159@01 r)))
    (= (- $Perm.Write (pTaken@161@01 r)) $Perm.No))
  
  :qid |quant-u-13887|))))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
; Chunk depleted?
(set-option :timeout 0)
(push) ; 5
(set-option :timeout 500)
(assert (not (= (- $Perm.Write (pTaken@162@01 nodeCopy@84@01)) $Perm.No)))
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
    (and
      (Set_in (inv@159@01 r) res_copy_nodes@96@01)
      (img@160@01 r)
      (= r (inv@159@01 r)))
    (= (- (- $Perm.Write (pTaken@161@01 r)) (pTaken@162@01 r)) $Perm.No))
  
  :qid |quant-u-13889|))))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
; Final check if taken enough permissions
; Done removing quantified permissions
; Loop head block: Execute statements of loop head block (in invariant state)
(set-option :timeout 0)
(push) ; 5
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@128@01 r) (Set_in (inv@127@01 r) res_copy_nodes@105@01))
    (= (inv@127@01 r) r))
  :pattern ((inv@127@01 r))
  :qid |edges-fctOfInv|)))
(assert (forall ((r@126@01 $Ref)) (!
  (=>
    (Set_in r@126@01 res_copy_nodes@105@01)
    (and (= (inv@127@01 r@126@01) r@126@01) (img@128@01 r@126@01)))
  :pattern ((Set_in r@126@01 res_copy_nodes@105@01))
  :pattern ((inv@127@01 r@126@01))
  :pattern ((img@128@01 r@126@01))
  :qid |quant-u-13865|)))
(assert (forall ((r@126@01 $Ref)) (!
  (=> (Set_in r@126@01 res_copy_nodes@105@01) (not (= r@126@01 $Ref.null)))
  :pattern ((Set_in r@126@01 res_copy_nodes@105@01))
  :pattern ((inv@127@01 r@126@01))
  :pattern ((img@128@01 r@126@01))
  :qid |edges-permImpliesNonNull|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@125@01 r) (Set_in (inv@124@01 r) res_copy_nodes@105@01))
    (= (inv@124@01 r) r))
  :pattern ((inv@124@01 r))
  :qid |val-fctOfInv|)))
(assert (forall ((r@123@01 $Ref)) (!
  (=>
    (Set_in r@123@01 res_copy_nodes@105@01)
    (and (= (inv@124@01 r@123@01) r@123@01) (img@125@01 r@123@01)))
  :pattern ((Set_in r@123@01 res_copy_nodes@105@01))
  :pattern ((inv@124@01 r@123@01))
  :pattern ((img@125@01 r@123@01))
  :qid |quant-u-13862|)))
(assert (forall ((r@123@01 $Ref)) (!
  (=> (Set_in r@123@01 res_copy_nodes@105@01) (not (= r@123@01 $Ref.null)))
  :pattern ((Set_in r@123@01 res_copy_nodes@105@01))
  :pattern ((inv@124@01 r@123@01))
  :pattern ((img@125@01 r@123@01))
  :qid |val-permImpliesNonNull|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@115@01 r)
      (and (Set_in (inv@114@01 r) setOfRef@10@01) (< $Perm.No rd@12@01)))
    (= (inv@114@01 r) r))
  :pattern ((inv@114@01 r))
  :qid |edges-fctOfInv|)))
(assert (forall ((r $Ref)) (!
  (=>
    (ite
      (and (img@22@01 r) (Set_in (inv@21@01 r) setOfRef@10@01))
      (< $Perm.No rd@12@01)
      false)
    (=
      ($FVF.lookup_edges (as sm@117@01  $FVF<edges>) r)
      ($FVF.lookup_edges ($SortWrappers.$SnapTo$FVF<edges> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@16@01))))))) r)))
  :pattern (($FVF.lookup_edges (as sm@117@01  $FVF<edges>) r))
  :pattern (($FVF.lookup_edges ($SortWrappers.$SnapTo$FVF<edges> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@16@01))))))) r))
  :qid |qp.fvfValDef23|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@31@01 r) (Set_in (inv@30@01 r) node_map_image@11@01))
    (=
      ($FVF.lookup_edges (as sm@117@01  $FVF<edges>) r)
      ($FVF.lookup_edges ($SortWrappers.$SnapTo$FVF<edges> ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@16@01)))))))))) r)))
  :pattern (($FVF.lookup_edges (as sm@117@01  $FVF<edges>) r))
  :pattern (($FVF.lookup_edges ($SortWrappers.$SnapTo$FVF<edges> ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@16@01)))))))))) r))
  :qid |qp.fvfValDef24|)))
(assert (forall ((r $Ref)) (!
  (=
    ($FVF.perm_edges (as pm@118@01  $FPM) r)
    (+
      (ite
        (and (img@22@01 r) (Set_in (inv@21@01 r) setOfRef@10@01))
        rd@12@01
        $Perm.No)
      (ite
        (and (img@31@01 r) (Set_in (inv@30@01 r) node_map_image@11@01))
        $Perm.Write
        $Perm.No)))
  :pattern (($FVF.perm_edges (as pm@118@01  $FPM) r))
  :qid |qp.resPrmSumDef25|)))
(assert (forall ((x@113@01 $Ref)) (!
  (=>
    (and (Set_in x@113@01 setOfRef@10@01) (< $Perm.No rd@12@01))
    (and (= (inv@114@01 x@113@01) x@113@01) (img@115@01 x@113@01)))
  :pattern ((Set_in x@113@01 setOfRef@10@01))
  :pattern ((inv@114@01 x@113@01))
  :pattern ((img@115@01 x@113@01))
  :qid |quant-u-13860|)))
(assert (forall ((x@113@01 $Ref)) (!
  (<= $Perm.No rd@12@01)
  :pattern ((Set_in x@113@01 setOfRef@10@01))
  :pattern ((inv@114@01 x@113@01))
  :pattern ((img@115@01 x@113@01))
  :qid |edges-permAtLeastZero|)))
(assert (forall ((x@113@01 $Ref)) (!
  (<= rd@12@01 $Perm.Write)
  :pattern ((Set_in x@113@01 setOfRef@10@01))
  :pattern ((inv@114@01 x@113@01))
  :pattern ((img@115@01 x@113@01))
  :qid |edges-permAtMostOne|)))
(assert (forall ((x@113@01 $Ref)) (!
  (=>
    (and (Set_in x@113@01 setOfRef@10@01) (< $Perm.No rd@12@01))
    (not (= x@113@01 $Ref.null)))
  :pattern ((Set_in x@113@01 setOfRef@10@01))
  :pattern ((inv@114@01 x@113@01))
  :pattern ((img@115@01 x@113@01))
  :qid |edges-permImpliesNonNull|)))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@106@01)))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@106@01))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@106@01)))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@106@01))))))
  $Snap.unit))
(assert (forall ((x@116@01 $Ref)) (!
  (or (not (Set_in x@116@01 setOfRef@10@01)) (Set_in x@116@01 setOfRef@10@01))
  :pattern ((Set_in x@116@01 setOfRef@10@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/examples/graph-copy/graph-copy.vpr@148@17@148@75-aux|)))
(assert (forall ((x@116@01 $Ref)) (!
  (=>
    (Set_in x@116@01 setOfRef@10@01)
    (=
      ($FVF.lookup_edges ($SortWrappers.$SnapTo$FVF<edges> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@106@01)))))) x@116@01)
      ($FVF.lookup_edges (as sm@117@01  $FVF<edges>) x@116@01)))
  :pattern ((Set_in x@116@01 setOfRef@10@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/examples/graph-copy/graph-copy.vpr@148@17@148@75|)))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@106@01))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@106@01)))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@106@01))))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@106@01)))))))
  $Snap.unit))
(assert (forall ((j@119@01 Int)) (!
  (or (not (Set_in j@119@01 S@100@01)) (Set_in j@119@01 S@100@01))
  :pattern ((Set_in j@119@01 S@100@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/examples/graph-copy/graph-copy.vpr@149@17@149@83-aux|)))
(assert (forall ((j@119@01 Int)) (!
  (or (not (Set_in j@119@01 S@100@01)) (Set_in j@119@01 S@100@01))
  :pattern ((Set_in (edge_lookup<Ref> ($FVF.lookup_edges ($SortWrappers.$SnapTo$FVF<edges> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@106@01)))))) this@8@01) j@119@01) setOfRef@10@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/examples/graph-copy/graph-copy.vpr@149@17@149@83-aux|)))
(assert (forall ((j@119@01 Int)) (!
  (=>
    (Set_in j@119@01 S@100@01)
    (Set_in (edge_lookup<Ref> ($FVF.lookup_edges ($SortWrappers.$SnapTo$FVF<edges> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@106@01)))))) this@8@01) j@119@01) setOfRef@10@01))
  :pattern ((Set_in j@119@01 S@100@01))
  :pattern ((Set_in (edge_lookup<Ref> ($FVF.lookup_edges ($SortWrappers.$SnapTo$FVF<edges> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@106@01)))))) this@8@01) j@119@01) setOfRef@10@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/examples/graph-copy/graph-copy.vpr@149@17@149@83|)))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@106@01)))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@106@01))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@106@01)))))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@106@01))))))))
  $Snap.unit))
(assert (forall ((r@120@01 $Ref) (j@121@01 Int)) (!
  (and
    (or (Set_in r@120@01 setOfRef@10@01) (not (Set_in r@120@01 setOfRef@10@01)))
    (or
      (not
        (and
          (Set_in r@120@01 setOfRef@10@01)
          (Set_in j@121@01 (edges_domain<Set<Int>> ($FVF.lookup_edges ($SortWrappers.$SnapTo$FVF<edges> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@106@01)))))) r@120@01)))))
      (and
        (Set_in r@120@01 setOfRef@10@01)
        (Set_in j@121@01 (edges_domain<Set<Int>> ($FVF.lookup_edges ($SortWrappers.$SnapTo$FVF<edges> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@106@01)))))) r@120@01))))))
  :pattern ((Set_in r@120@01 setOfRef@10@01) (Set_in j@121@01 (edges_domain<Set<Int>> ($FVF.lookup_edges ($SortWrappers.$SnapTo$FVF<edges> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@106@01)))))) r@120@01))))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/examples/graph-copy/graph-copy.vpr@150@17@150@125-aux|)))
(assert (forall ((r@120@01 $Ref) (j@121@01 Int)) (!
  (and
    (or (Set_in r@120@01 setOfRef@10@01) (not (Set_in r@120@01 setOfRef@10@01)))
    (or
      (not
        (and
          (Set_in r@120@01 setOfRef@10@01)
          (Set_in j@121@01 (edges_domain<Set<Int>> ($FVF.lookup_edges ($SortWrappers.$SnapTo$FVF<edges> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@106@01)))))) r@120@01)))))
      (and
        (Set_in r@120@01 setOfRef@10@01)
        (Set_in j@121@01 (edges_domain<Set<Int>> ($FVF.lookup_edges ($SortWrappers.$SnapTo$FVF<edges> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@106@01)))))) r@120@01))))))
  :pattern ((Set_in r@120@01 setOfRef@10@01) (edge_lookup<Ref> ($FVF.lookup_edges ($SortWrappers.$SnapTo$FVF<edges> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@106@01)))))) r@120@01) j@121@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/examples/graph-copy/graph-copy.vpr@150@17@150@125-aux|)))
(assert (forall ((r@120@01 $Ref) (j@121@01 Int)) (!
  (and
    (or (Set_in r@120@01 setOfRef@10@01) (not (Set_in r@120@01 setOfRef@10@01)))
    (or
      (not
        (and
          (Set_in r@120@01 setOfRef@10@01)
          (Set_in j@121@01 (edges_domain<Set<Int>> ($FVF.lookup_edges ($SortWrappers.$SnapTo$FVF<edges> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@106@01)))))) r@120@01)))))
      (and
        (Set_in r@120@01 setOfRef@10@01)
        (Set_in j@121@01 (edges_domain<Set<Int>> ($FVF.lookup_edges ($SortWrappers.$SnapTo$FVF<edges> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@106@01)))))) r@120@01))))))
  :pattern ((Set_in r@120@01 setOfRef@10@01) (Set_in (edge_lookup<Ref> ($FVF.lookup_edges ($SortWrappers.$SnapTo$FVF<edges> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@106@01)))))) r@120@01) j@121@01) setOfRef@10@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/examples/graph-copy/graph-copy.vpr@150@17@150@125-aux|)))
(assert (forall ((r@120@01 $Ref) (j@121@01 Int)) (!
  (and
    (or (Set_in r@120@01 setOfRef@10@01) (not (Set_in r@120@01 setOfRef@10@01)))
    (or
      (not
        (and
          (Set_in r@120@01 setOfRef@10@01)
          (Set_in j@121@01 (edges_domain<Set<Int>> ($FVF.lookup_edges ($SortWrappers.$SnapTo$FVF<edges> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@106@01)))))) r@120@01)))))
      (and
        (Set_in r@120@01 setOfRef@10@01)
        (Set_in j@121@01 (edges_domain<Set<Int>> ($FVF.lookup_edges ($SortWrappers.$SnapTo$FVF<edges> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@106@01)))))) r@120@01))))))
  :pattern ((edges_domain<Set<Int>> ($FVF.lookup_edges ($SortWrappers.$SnapTo$FVF<edges> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@106@01)))))) r@120@01)) (edge_lookup<Ref> ($FVF.lookup_edges ($SortWrappers.$SnapTo$FVF<edges> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@106@01)))))) r@120@01) j@121@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/examples/graph-copy/graph-copy.vpr@150@17@150@125-aux|)))
(assert (forall ((r@120@01 $Ref) (j@121@01 Int)) (!
  (and
    (or (Set_in r@120@01 setOfRef@10@01) (not (Set_in r@120@01 setOfRef@10@01)))
    (or
      (not
        (and
          (Set_in r@120@01 setOfRef@10@01)
          (Set_in j@121@01 (edges_domain<Set<Int>> ($FVF.lookup_edges ($SortWrappers.$SnapTo$FVF<edges> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@106@01)))))) r@120@01)))))
      (and
        (Set_in r@120@01 setOfRef@10@01)
        (Set_in j@121@01 (edges_domain<Set<Int>> ($FVF.lookup_edges ($SortWrappers.$SnapTo$FVF<edges> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@106@01)))))) r@120@01))))))
  :pattern ((edges_domain<Set<Int>> ($FVF.lookup_edges ($SortWrappers.$SnapTo$FVF<edges> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@106@01)))))) r@120@01)) (Set_in (edge_lookup<Ref> ($FVF.lookup_edges ($SortWrappers.$SnapTo$FVF<edges> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@106@01)))))) r@120@01) j@121@01) setOfRef@10@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/examples/graph-copy/graph-copy.vpr@150@17@150@125-aux|)))
(assert (forall ((r@120@01 $Ref) (j@121@01 Int)) (!
  (and
    (or (Set_in r@120@01 setOfRef@10@01) (not (Set_in r@120@01 setOfRef@10@01)))
    (or
      (not
        (and
          (Set_in r@120@01 setOfRef@10@01)
          (Set_in j@121@01 (edges_domain<Set<Int>> ($FVF.lookup_edges ($SortWrappers.$SnapTo$FVF<edges> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@106@01)))))) r@120@01)))))
      (and
        (Set_in r@120@01 setOfRef@10@01)
        (Set_in j@121@01 (edges_domain<Set<Int>> ($FVF.lookup_edges ($SortWrappers.$SnapTo$FVF<edges> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@106@01)))))) r@120@01))))))
  :pattern ((Set_in j@121@01 (edges_domain<Set<Int>> ($FVF.lookup_edges ($SortWrappers.$SnapTo$FVF<edges> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@106@01)))))) r@120@01))))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/examples/graph-copy/graph-copy.vpr@150@17@150@125-aux|)))
(assert (forall ((r@120@01 $Ref) (j@121@01 Int)) (!
  (and
    (or (Set_in r@120@01 setOfRef@10@01) (not (Set_in r@120@01 setOfRef@10@01)))
    (or
      (not
        (and
          (Set_in r@120@01 setOfRef@10@01)
          (Set_in j@121@01 (edges_domain<Set<Int>> ($FVF.lookup_edges ($SortWrappers.$SnapTo$FVF<edges> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@106@01)))))) r@120@01)))))
      (and
        (Set_in r@120@01 setOfRef@10@01)
        (Set_in j@121@01 (edges_domain<Set<Int>> ($FVF.lookup_edges ($SortWrappers.$SnapTo$FVF<edges> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@106@01)))))) r@120@01))))))
  :pattern ((Set_in (edge_lookup<Ref> ($FVF.lookup_edges ($SortWrappers.$SnapTo$FVF<edges> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@106@01)))))) r@120@01) j@121@01) setOfRef@10@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/examples/graph-copy/graph-copy.vpr@150@17@150@125-aux|)))
(assert (forall ((r@120@01 $Ref) (j@121@01 Int)) (!
  (=>
    (and
      (Set_in r@120@01 setOfRef@10@01)
      (Set_in j@121@01 (edges_domain<Set<Int>> ($FVF.lookup_edges ($SortWrappers.$SnapTo$FVF<edges> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@106@01)))))) r@120@01))))
    (Set_in (edge_lookup<Ref> ($FVF.lookup_edges ($SortWrappers.$SnapTo$FVF<edges> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@106@01)))))) r@120@01) j@121@01) setOfRef@10@01))
  :pattern ((Set_in r@120@01 setOfRef@10@01) (Set_in j@121@01 (edges_domain<Set<Int>> ($FVF.lookup_edges ($SortWrappers.$SnapTo$FVF<edges> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@106@01)))))) r@120@01))))
  :pattern ((Set_in r@120@01 setOfRef@10@01) (edge_lookup<Ref> ($FVF.lookup_edges ($SortWrappers.$SnapTo$FVF<edges> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@106@01)))))) r@120@01) j@121@01))
  :pattern ((Set_in r@120@01 setOfRef@10@01) (Set_in (edge_lookup<Ref> ($FVF.lookup_edges ($SortWrappers.$SnapTo$FVF<edges> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@106@01)))))) r@120@01) j@121@01) setOfRef@10@01))
  :pattern ((edges_domain<Set<Int>> ($FVF.lookup_edges ($SortWrappers.$SnapTo$FVF<edges> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@106@01)))))) r@120@01)) (edge_lookup<Ref> ($FVF.lookup_edges ($SortWrappers.$SnapTo$FVF<edges> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@106@01)))))) r@120@01) j@121@01))
  :pattern ((edges_domain<Set<Int>> ($FVF.lookup_edges ($SortWrappers.$SnapTo$FVF<edges> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@106@01)))))) r@120@01)) (Set_in (edge_lookup<Ref> ($FVF.lookup_edges ($SortWrappers.$SnapTo$FVF<edges> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@106@01)))))) r@120@01) j@121@01) setOfRef@10@01))
  :pattern ((Set_in j@121@01 (edges_domain<Set<Int>> ($FVF.lookup_edges ($SortWrappers.$SnapTo$FVF<edges> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@106@01)))))) r@120@01))))
  :pattern ((Set_in (edge_lookup<Ref> ($FVF.lookup_edges ($SortWrappers.$SnapTo$FVF<edges> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@106@01)))))) r@120@01) j@121@01) setOfRef@10@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/examples/graph-copy/graph-copy.vpr@150@17@150@125|)))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@106@01))))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@106@01)))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@106@01))))))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@106@01)))))))))
  $Snap.unit))
(assert (Set_subset node_map_image@11@01 res_copy_nodes@105@01))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@106@01)))))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@106@01))))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@106@01)))))))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@106@01))))))))))
  $Snap.unit))
(assert (= (Set_card (Set_intersection setOfRef@10@01 res_copy_nodes@105@01)) 0))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@106@01))))))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@106@01)))))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@106@01))))))))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@106@01)))))))))))
  $Snap.unit))
(assert (forall ((r@122@01 $Ref)) (!
  (or
    (not (Seq_contains (map_domain<Seq<Ref>> res_node_map@104@01) r@122@01))
    (Seq_contains (map_domain<Seq<Ref>> res_node_map@104@01) r@122@01))
  :pattern ((Seq_contains (map_domain<Seq<Ref>> res_node_map@104@01) r@122@01))
  :pattern ((Seq_contains_trigger
    (map_domain<Seq<Ref>> res_node_map@104@01)
    r@122@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/examples/graph-copy/graph-copy.vpr@153@17@153@108-aux|)))
(assert (forall ((r@122@01 $Ref)) (!
  (or
    (not (Seq_contains (map_domain<Seq<Ref>> res_node_map@104@01) r@122@01))
    (Seq_contains (map_domain<Seq<Ref>> res_node_map@104@01) r@122@01))
  :pattern ((Seq_contains_trigger
    (map_domain<Seq<Ref>> res_node_map@104@01)
    r@122@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/examples/graph-copy/graph-copy.vpr@153@17@153@108-aux|)))
(assert (forall ((r@122@01 $Ref)) (!
  (or
    (not (Seq_contains (map_domain<Seq<Ref>> res_node_map@104@01) r@122@01))
    (Seq_contains (map_domain<Seq<Ref>> res_node_map@104@01) r@122@01))
  :pattern ((Set_in (lookup<Ref> res_node_map@104@01 r@122@01) res_copy_nodes@105@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/examples/graph-copy/graph-copy.vpr@153@17@153@108-aux|)))
(assert (forall ((r@122@01 $Ref)) (!
  (=>
    (Seq_contains (map_domain<Seq<Ref>> res_node_map@104@01) r@122@01)
    (Set_in (lookup<Ref> res_node_map@104@01 r@122@01) res_copy_nodes@105@01))
  :pattern ((Seq_contains (map_domain<Seq<Ref>> res_node_map@104@01) r@122@01))
  :pattern ((Seq_contains_trigger
    (map_domain<Seq<Ref>> res_node_map@104@01)
    r@122@01))
  :pattern ((Set_in (lookup<Ref> res_node_map@104@01 r@122@01) res_copy_nodes@105@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/examples/graph-copy/graph-copy.vpr@153@17@153@108|)))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@106@01)))))))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@106@01))))))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@106@01)))))))))))))))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@109@01 r)
      (and (Set_in (inv@108@01 r) setOfRef@10@01) (< $Perm.No rd@12@01)))
    (= (inv@108@01 r) r))
  :pattern ((inv@108@01 r))
  :qid |val-fctOfInv|)))
(assert (forall ((r $Ref)) (!
  (=>
    (ite
      (and (img@19@01 r) (Set_in (inv@18@01 r) setOfRef@10@01))
      (< $Perm.No rd@12@01)
      false)
    (=
      ($FVF.lookup_val (as sm@111@01  $FVF<val>) r)
      ($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@16@01)))))) r)))
  :pattern (($FVF.lookup_val (as sm@111@01  $FVF<val>) r))
  :pattern (($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@16@01)))))) r))
  :qid |qp.fvfValDef20|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@28@01 r) (Set_in (inv@27@01 r) node_map_image@11@01))
    (=
      ($FVF.lookup_val (as sm@111@01  $FVF<val>) r)
      ($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@16@01)))))))))) r)))
  :pattern (($FVF.lookup_val (as sm@111@01  $FVF<val>) r))
  :pattern (($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@16@01)))))))))) r))
  :qid |qp.fvfValDef21|)))
(assert (forall ((r $Ref)) (!
  (=
    ($FVF.perm_val (as pm@112@01  $FPM) r)
    (+
      (ite
        (and (img@19@01 r) (Set_in (inv@18@01 r) setOfRef@10@01))
        rd@12@01
        $Perm.No)
      (ite
        (and (img@28@01 r) (Set_in (inv@27@01 r) node_map_image@11@01))
        $Perm.Write
        $Perm.No)))
  :pattern (($FVF.perm_val (as pm@112@01  $FPM) r))
  :qid |qp.resPrmSumDef22|)))
(assert (forall ((x@107@01 $Ref)) (!
  (=>
    (and (Set_in x@107@01 setOfRef@10@01) (< $Perm.No rd@12@01))
    (and (= (inv@108@01 x@107@01) x@107@01) (img@109@01 x@107@01)))
  :pattern ((Set_in x@107@01 setOfRef@10@01))
  :pattern ((inv@108@01 x@107@01))
  :pattern ((img@109@01 x@107@01))
  :qid |quant-u-13858|)))
(assert (forall ((x@107@01 $Ref)) (!
  (<= $Perm.No rd@12@01)
  :pattern ((Set_in x@107@01 setOfRef@10@01))
  :pattern ((inv@108@01 x@107@01))
  :pattern ((img@109@01 x@107@01))
  :qid |val-permAtLeastZero|)))
(assert (forall ((x@107@01 $Ref)) (!
  (<= rd@12@01 $Perm.Write)
  :pattern ((Set_in x@107@01 setOfRef@10@01))
  :pattern ((inv@108@01 x@107@01))
  :pattern ((img@109@01 x@107@01))
  :qid |val-permAtMostOne|)))
(assert (forall ((x@107@01 $Ref)) (!
  (=>
    (and (Set_in x@107@01 setOfRef@10@01) (< $Perm.No rd@12@01))
    (not (= x@107@01 $Ref.null)))
  :pattern ((Set_in x@107@01 setOfRef@10@01))
  :pattern ((inv@108@01 x@107@01))
  :pattern ((img@109@01 x@107@01))
  :qid |val-permImpliesNonNull|)))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second $t@106@01)))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@106@01))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@106@01)))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@106@01))))
  $Snap.unit))
(assert (forall ((x@110@01 $Ref)) (!
  (or (not (Set_in x@110@01 setOfRef@10@01)) (Set_in x@110@01 setOfRef@10@01))
  :pattern ((Set_in x@110@01 setOfRef@10@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/examples/graph-copy/graph-copy.vpr@146@17@146@71-aux|)))
(assert (forall ((x@110@01 $Ref)) (!
  (=>
    (Set_in x@110@01 setOfRef@10@01)
    (=
      ($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.first ($Snap.second ($Snap.second $t@106@01)))) x@110@01)
      ($FVF.lookup_val (as sm@111@01  $FVF<val>) x@110@01)))
  :pattern ((Set_in x@110@01 setOfRef@10@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/examples/graph-copy/graph-copy.vpr@146@17@146@71|)))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@106@01))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@106@01)))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@106@01))))))))
(assert (= $t@106@01 ($Snap.combine ($Snap.first $t@106@01) ($Snap.second $t@106@01))))
(assert (= ($Snap.first $t@106@01) $Snap.unit))
(assert (Set_in nodeCopy@84@01 res_copy_nodes@105@01))
(assert (=
  ($Snap.second $t@106@01)
  ($Snap.combine
    ($Snap.first ($Snap.second $t@106@01))
    ($Snap.second ($Snap.second $t@106@01)))))
(assert (= ($Snap.first ($Snap.second $t@106@01)) $Snap.unit))
(assert (=
  ($Snap.second ($Snap.second $t@106@01))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second $t@106@01)))
    ($Snap.second ($Snap.second ($Snap.second $t@106@01))))))
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
; [eval] |S| > 0
; [eval] |S|
(pop) ; 6
(push) ; 6
; [eval] !(|S| > 0)
; [eval] |S| > 0
; [eval] |S|
(pop) ; 6
; Loop head block: Follow loop-internal edges
; [eval] |S| > 0
; [eval] |S|
(push) ; 6
(set-option :timeout 10)
(assert (not (not (> (Set_card S@100@01) 0))))
(check-sat)
; unknown
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 6
(set-option :timeout 10)
(assert (not (> (Set_card S@100@01) 0)))
(check-sat)
; unknown
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
; [then-branch: 27 | |S@100@01| > 0 | live]
; [else-branch: 27 | !(|S@100@01| > 0) | live]
(set-option :timeout 0)
(push) ; 6
; [then-branch: 27 | |S@100@01| > 0]
(assert (> (Set_card S@100@01) 0))
; [exec]
; var newNode: Ref
(declare-const newNode@163@01 $Ref)
; [exec]
; var newResultMap: INodeMap
(declare-const newResultMap@164@01 INodeMap)
; [exec]
; var nodeForId: Ref
(declare-const nodeForId@165@01 $Ref)
; [exec]
; S, i := pop(S)
; [eval] 0 < |s1|
; [eval] |s1|
(push) ; 7
(assert (not (< 0 (Set_card S@100@01))))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(assert (< 0 (Set_card S@100@01)))
(declare-const s2@166@01 Set<Int>)
(declare-const i@167@01 Int)
(declare-const $t@168@01 $Snap)
(assert (= $t@168@01 ($Snap.combine ($Snap.first $t@168@01) ($Snap.second $t@168@01))))
(assert (= ($Snap.first $t@168@01) $Snap.unit))
; [eval] (i in s1)
(assert (Set_in i@167@01 S@100@01))
(assert (= ($Snap.second $t@168@01) $Snap.unit))
; [eval] s2 == (s1 setminus Set(i))
; [eval] (s1 setminus Set(i))
; [eval] Set(i)
(assert (Set_equal s2@166@01 (Set_difference S@100@01 (Set_singleton i@167@01))))
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
; [exec]
; nodeForId := edge_lookup(this.edges, i)
; [eval] edge_lookup(this.edges, i)
(declare-const sm@169@01 $FVF<edges>)
; Definitional axioms for snapshot map values
(assert (forall ((r $Ref)) (!
  (=>
    (ite
      (and (img@115@01 r) (Set_in (inv@114@01 r) setOfRef@10@01))
      (< $Perm.No rd@12@01)
      false)
    (=
      ($FVF.lookup_edges (as sm@169@01  $FVF<edges>) r)
      ($FVF.lookup_edges ($SortWrappers.$SnapTo$FVF<edges> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@106@01)))))) r)))
  :pattern (($FVF.lookup_edges (as sm@169@01  $FVF<edges>) r))
  :pattern (($FVF.lookup_edges ($SortWrappers.$SnapTo$FVF<edges> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@106@01)))))) r))
  :qid |qp.fvfValDef36|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@128@01 r) (Set_in (inv@127@01 r) res_copy_nodes@105@01))
    (=
      ($FVF.lookup_edges (as sm@169@01  $FVF<edges>) r)
      ($FVF.lookup_edges ($SortWrappers.$SnapTo$FVF<edges> ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@106@01))))))))))))) r)))
  :pattern (($FVF.lookup_edges (as sm@169@01  $FVF<edges>) r))
  :pattern (($FVF.lookup_edges ($SortWrappers.$SnapTo$FVF<edges> ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@106@01))))))))))))) r))
  :qid |qp.fvfValDef37|)))
(declare-const pm@170@01 $FPM)
(assert (forall ((r $Ref)) (!
  (=
    ($FVF.perm_edges (as pm@170@01  $FPM) r)
    (+
      (ite
        (and (img@115@01 r) (Set_in (inv@114@01 r) setOfRef@10@01))
        rd@12@01
        $Perm.No)
      (ite
        (and (img@128@01 r) (Set_in (inv@127@01 r) res_copy_nodes@105@01))
        $Perm.Write
        $Perm.No)))
  :pattern (($FVF.perm_edges (as pm@170@01  $FPM) r))
  :qid |qp.resPrmSumDef38|)))
(set-option :timeout 0)
(push) ; 7
(assert (not (< $Perm.No ($FVF.perm_edges (as pm@170@01  $FPM) this@8@01))))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(declare-const nodeForId@171@01 $Ref)
(assert (=
  nodeForId@171@01
  (edge_lookup<Ref> ($FVF.lookup_edges (as sm@169@01  $FVF<edges>) this@8@01) i@167@01)))
; [exec]
; newNode, res_node_map, res_copy_nodes := graph_copy_rec(nodeForId, res_node_map,
;   setOfRef, res_copy_nodes, rd / 2)
; [eval] rd / 2
; [eval] none < rd
(push) ; 7
(assert (not (< $Perm.No (/ rd@12@01 (to_real 2)))))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(assert (< $Perm.No (/ rd@12@01 (to_real 2))))
; [eval] this != null
(push) ; 7
(assert (not (not (= nodeForId@171@01 $Ref.null))))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(assert (not (= nodeForId@171@01 $Ref.null)))
; [eval] (this in setOfRef)
(push) ; 7
(assert (not (Set_in nodeForId@171@01 setOfRef@10@01)))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(assert (Set_in nodeForId@171@01 setOfRef@10@01))
; [eval] |(setOfRef intersection node_map_image)| == 0
; [eval] |(setOfRef intersection node_map_image)|
; [eval] (setOfRef intersection node_map_image)
(declare-const x@172@01 $Ref)
(push) ; 7
; [eval] (x in setOfRef)
(assert (Set_in x@172@01 setOfRef@10@01))
(pop) ; 7
(declare-fun inv@173@01 ($Ref) $Ref)
(declare-fun img@174@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
(push) ; 7
(assert (not (forall ((x@172@01 $Ref)) (!
  (=>
    (Set_in x@172@01 setOfRef@10@01)
    (or
      (= (/ rd@12@01 (to_real 2)) $Perm.No)
      (< $Perm.No (/ rd@12@01 (to_real 2)))))
  
  :qid |quant-u-13890|))))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
; Check receiver injectivity
(push) ; 7
(assert (not (forall ((x1@172@01 $Ref) (x2@172@01 $Ref)) (!
  (=>
    (and
      (and
        (Set_in x1@172@01 setOfRef@10@01)
        (< $Perm.No (/ rd@12@01 (to_real 2))))
      (and
        (Set_in x2@172@01 setOfRef@10@01)
        (< $Perm.No (/ rd@12@01 (to_real 2))))
      (= x1@172@01 x2@172@01))
    (= x1@172@01 x2@172@01))
  
  :qid |val-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((x@172@01 $Ref)) (!
  (=>
    (and (Set_in x@172@01 setOfRef@10@01) (< $Perm.No (/ rd@12@01 (to_real 2))))
    (and (= (inv@173@01 x@172@01) x@172@01) (img@174@01 x@172@01)))
  :pattern ((Set_in x@172@01 setOfRef@10@01))
  :pattern ((inv@173@01 x@172@01))
  :pattern ((img@174@01 x@172@01))
  :qid |val-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@174@01 r)
      (and
        (Set_in (inv@173@01 r) setOfRef@10@01)
        (< $Perm.No (/ rd@12@01 (to_real 2)))))
    (= (inv@173@01 r) r))
  :pattern ((inv@173@01 r))
  :qid |val-fctOfInv|)))
; Precomputing data for removing quantified permissions
(define-fun pTaken@175@01 ((r $Ref)) $Perm
  (ite
    (and
      (Set_in (inv@173@01 r) setOfRef@10@01)
      (img@174@01 r)
      (= r (inv@173@01 r)))
    ($Perm.min
      (ite
        (and (img@109@01 r) (Set_in (inv@108@01 r) setOfRef@10@01))
        rd@12@01
        $Perm.No)
      (/ rd@12@01 (to_real 2)))
    $Perm.No))
(define-fun pTaken@176@01 ((r $Ref)) $Perm
  (ite
    (and
      (Set_in (inv@173@01 r) setOfRef@10@01)
      (img@174@01 r)
      (= r (inv@173@01 r)))
    ($Perm.min
      (ite
        (and (img@125@01 r) (Set_in (inv@124@01 r) res_copy_nodes@105@01))
        $Perm.Write
        $Perm.No)
      (- (/ rd@12@01 (to_real 2)) (pTaken@175@01 r)))
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
        (and (img@109@01 r) (Set_in (inv@108@01 r) setOfRef@10@01))
        rd@12@01
        $Perm.No)
      (pTaken@175@01 r))
    $Perm.No)
  
  :qid |quant-u-13892|))))
(check-sat)
; unknown
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 7
(set-option :timeout 10)
(assert (not (forall ((r $Ref)) (!
  (= (pTaken@175@01 r) $Perm.No)
  
  :qid |quant-u-13893|))))
(check-sat)
; unknown
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
; Intermediate check if already taken enough permissions
(set-option :timeout 0)
(push) ; 7
(set-option :timeout 500)
(assert (not (forall ((r $Ref)) (!
  (=>
    (and
      (Set_in (inv@173@01 r) setOfRef@10@01)
      (img@174@01 r)
      (= r (inv@173@01 r)))
    (= (- (/ rd@12@01 (to_real 2)) (pTaken@175@01 r)) $Perm.No))
  
  :qid |quant-u-13894|))))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
; Final check if taken enough permissions
; Done removing quantified permissions
(declare-const x@177@01 $Ref)
(set-option :timeout 0)
(push) ; 7
; [eval] (x in setOfRef)
(assert (Set_in x@177@01 setOfRef@10@01))
(pop) ; 7
(declare-fun inv@178@01 ($Ref) $Ref)
(declare-fun img@179@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
(push) ; 7
(assert (not (forall ((x@177@01 $Ref)) (!
  (=>
    (Set_in x@177@01 setOfRef@10@01)
    (or
      (= (/ rd@12@01 (to_real 2)) $Perm.No)
      (< $Perm.No (/ rd@12@01 (to_real 2)))))
  
  :qid |quant-u-13895|))))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
; Check receiver injectivity
(push) ; 7
(assert (not (forall ((x1@177@01 $Ref) (x2@177@01 $Ref)) (!
  (=>
    (and
      (and
        (Set_in x1@177@01 setOfRef@10@01)
        (< $Perm.No (/ rd@12@01 (to_real 2))))
      (and
        (Set_in x2@177@01 setOfRef@10@01)
        (< $Perm.No (/ rd@12@01 (to_real 2))))
      (= x1@177@01 x2@177@01))
    (= x1@177@01 x2@177@01))
  
  :qid |edges-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((x@177@01 $Ref)) (!
  (=>
    (and (Set_in x@177@01 setOfRef@10@01) (< $Perm.No (/ rd@12@01 (to_real 2))))
    (and (= (inv@178@01 x@177@01) x@177@01) (img@179@01 x@177@01)))
  :pattern ((Set_in x@177@01 setOfRef@10@01))
  :pattern ((inv@178@01 x@177@01))
  :pattern ((img@179@01 x@177@01))
  :qid |edges-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@179@01 r)
      (and
        (Set_in (inv@178@01 r) setOfRef@10@01)
        (< $Perm.No (/ rd@12@01 (to_real 2)))))
    (= (inv@178@01 r) r))
  :pattern ((inv@178@01 r))
  :qid |edges-fctOfInv|)))
; Precomputing data for removing quantified permissions
(define-fun pTaken@180@01 ((r $Ref)) $Perm
  (ite
    (and
      (Set_in (inv@178@01 r) setOfRef@10@01)
      (img@179@01 r)
      (= r (inv@178@01 r)))
    ($Perm.min
      (ite
        (and (img@128@01 r) (Set_in (inv@127@01 r) res_copy_nodes@105@01))
        $Perm.Write
        $Perm.No)
      (/ rd@12@01 (to_real 2)))
    $Perm.No))
(define-fun pTaken@181@01 ((r $Ref)) $Perm
  (ite
    (and
      (Set_in (inv@178@01 r) setOfRef@10@01)
      (img@179@01 r)
      (= r (inv@178@01 r)))
    ($Perm.min
      (ite
        (and (img@115@01 r) (Set_in (inv@114@01 r) setOfRef@10@01))
        rd@12@01
        $Perm.No)
      (- (/ rd@12@01 (to_real 2)) (pTaken@180@01 r)))
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
        (and (img@128@01 r) (Set_in (inv@127@01 r) res_copy_nodes@105@01))
        $Perm.Write
        $Perm.No)
      (pTaken@180@01 r))
    $Perm.No)
  
  :qid |quant-u-13897|))))
(check-sat)
; unknown
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 7
(set-option :timeout 10)
(assert (not (forall ((r $Ref)) (!
  (= (pTaken@180@01 r) $Perm.No)
  
  :qid |quant-u-13898|))))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
; Intermediate check if already taken enough permissions
(set-option :timeout 0)
(push) ; 7
(set-option :timeout 500)
(assert (not (forall ((r $Ref)) (!
  (=>
    (and
      (Set_in (inv@178@01 r) setOfRef@10@01)
      (img@179@01 r)
      (= r (inv@178@01 r)))
    (= (- (/ rd@12@01 (to_real 2)) (pTaken@180@01 r)) $Perm.No))
  
  :qid |quant-u-13899|))))
(check-sat)
; unknown
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
; Chunk depleted?
(set-option :timeout 0)
(push) ; 7
(set-option :timeout 500)
(assert (not (forall ((r $Ref)) (!
  (=
    (-
      (ite
        (and (img@115@01 r) (Set_in (inv@114@01 r) setOfRef@10@01))
        rd@12@01
        $Perm.No)
      (pTaken@181@01 r))
    $Perm.No)
  
  :qid |quant-u-13900|))))
(check-sat)
; unknown
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 7
(set-option :timeout 10)
(assert (not (forall ((r $Ref)) (!
  (= (pTaken@181@01 r) $Perm.No)
  
  :qid |quant-u-13901|))))
(check-sat)
; unknown
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
; Intermediate check if already taken enough permissions
(set-option :timeout 0)
(push) ; 7
(set-option :timeout 500)
(assert (not (forall ((r $Ref)) (!
  (=>
    (and
      (Set_in (inv@178@01 r) setOfRef@10@01)
      (img@179@01 r)
      (= r (inv@178@01 r)))
    (=
      (- (- (/ rd@12@01 (to_real 2)) (pTaken@180@01 r)) (pTaken@181@01 r))
      $Perm.No))
  
  :qid |quant-u-13902|))))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
; Final check if taken enough permissions
; Done removing quantified permissions
; [eval] (forall x: Ref, i: Int :: { (x in setOfRef), (i in edges_domain(x.edges)) } { (x in setOfRef), edge_lookup(x.edges, i) } { (x in setOfRef), (edge_lookup(x.edges, i) in setOfRef) } { edges_domain(x.edges), edge_lookup(x.edges, i) } { edges_domain(x.edges), (edge_lookup(x.edges, i) in setOfRef) } { (i in edges_domain(x.edges)) } { (edge_lookup(x.edges, i) in setOfRef) } (x in setOfRef) && (i in edges_domain(x.edges)) ==> (edge_lookup(x.edges, i) in setOfRef))
(declare-const x@182@01 $Ref)
(declare-const i@183@01 Int)
(set-option :timeout 0)
(push) ; 7
; [eval] (x in setOfRef) && (i in edges_domain(x.edges)) ==> (edge_lookup(x.edges, i) in setOfRef)
; [eval] (x in setOfRef) && (i in edges_domain(x.edges))
; [eval] (x in setOfRef)
(push) ; 8
; [then-branch: 28 | !(x@182@01 in setOfRef@10@01) | live]
; [else-branch: 28 | x@182@01 in setOfRef@10@01 | live]
(push) ; 9
; [then-branch: 28 | !(x@182@01 in setOfRef@10@01)]
(assert (not (Set_in x@182@01 setOfRef@10@01)))
(pop) ; 9
(push) ; 9
; [else-branch: 28 | x@182@01 in setOfRef@10@01]
(assert (Set_in x@182@01 setOfRef@10@01))
; [eval] (i in edges_domain(x.edges))
; [eval] edges_domain(x.edges)
(assert (and
  (forall ((r $Ref)) (!
    (=>
      (ite
        (and (img@115@01 r) (Set_in (inv@114@01 r) setOfRef@10@01))
        (< $Perm.No rd@12@01)
        false)
      (=
        ($FVF.lookup_edges (as sm@169@01  $FVF<edges>) r)
        ($FVF.lookup_edges ($SortWrappers.$SnapTo$FVF<edges> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@106@01)))))) r)))
    :pattern (($FVF.lookup_edges (as sm@169@01  $FVF<edges>) r))
    :pattern (($FVF.lookup_edges ($SortWrappers.$SnapTo$FVF<edges> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@106@01)))))) r))
    :qid |qp.fvfValDef36|))
  (forall ((r $Ref)) (!
    (=>
      (and (img@128@01 r) (Set_in (inv@127@01 r) res_copy_nodes@105@01))
      (=
        ($FVF.lookup_edges (as sm@169@01  $FVF<edges>) r)
        ($FVF.lookup_edges ($SortWrappers.$SnapTo$FVF<edges> ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@106@01))))))))))))) r)))
    :pattern (($FVF.lookup_edges (as sm@169@01  $FVF<edges>) r))
    :pattern (($FVF.lookup_edges ($SortWrappers.$SnapTo$FVF<edges> ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@106@01))))))))))))) r))
    :qid |qp.fvfValDef37|))))
(push) ; 10
(assert (not (<
  $Perm.No
  (+
    (ite
      (and (img@115@01 x@182@01) (Set_in (inv@114@01 x@182@01) setOfRef@10@01))
      rd@12@01
      $Perm.No)
    (ite
      (and
        (img@128@01 x@182@01)
        (Set_in (inv@127@01 x@182@01) res_copy_nodes@105@01))
      $Perm.Write
      $Perm.No)))))
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
    (ite
      (and (img@115@01 r) (Set_in (inv@114@01 r) setOfRef@10@01))
      (< $Perm.No rd@12@01)
      false)
    (=
      ($FVF.lookup_edges (as sm@169@01  $FVF<edges>) r)
      ($FVF.lookup_edges ($SortWrappers.$SnapTo$FVF<edges> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@106@01)))))) r)))
  :pattern (($FVF.lookup_edges (as sm@169@01  $FVF<edges>) r))
  :pattern (($FVF.lookup_edges ($SortWrappers.$SnapTo$FVF<edges> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@106@01)))))) r))
  :qid |qp.fvfValDef36|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@128@01 r) (Set_in (inv@127@01 r) res_copy_nodes@105@01))
    (=
      ($FVF.lookup_edges (as sm@169@01  $FVF<edges>) r)
      ($FVF.lookup_edges ($SortWrappers.$SnapTo$FVF<edges> ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@106@01))))))))))))) r)))
  :pattern (($FVF.lookup_edges (as sm@169@01  $FVF<edges>) r))
  :pattern (($FVF.lookup_edges ($SortWrappers.$SnapTo$FVF<edges> ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@106@01))))))))))))) r))
  :qid |qp.fvfValDef37|)))
(assert (or (Set_in x@182@01 setOfRef@10@01) (not (Set_in x@182@01 setOfRef@10@01))))
(push) ; 8
; [then-branch: 29 | x@182@01 in setOfRef@10@01 && i@183@01 in edges_domain[Set[Int]](Lookup(edges, sm@169@01, x@182@01)) | live]
; [else-branch: 29 | !(x@182@01 in setOfRef@10@01 && i@183@01 in edges_domain[Set[Int]](Lookup(edges, sm@169@01, x@182@01))) | live]
(push) ; 9
; [then-branch: 29 | x@182@01 in setOfRef@10@01 && i@183@01 in edges_domain[Set[Int]](Lookup(edges, sm@169@01, x@182@01))]
(assert (and
  (Set_in x@182@01 setOfRef@10@01)
  (Set_in i@183@01 (edges_domain<Set<Int>> ($FVF.lookup_edges (as sm@169@01  $FVF<edges>) x@182@01)))))
; [eval] (edge_lookup(x.edges, i) in setOfRef)
; [eval] edge_lookup(x.edges, i)
(assert (and
  (forall ((r $Ref)) (!
    (=>
      (ite
        (and (img@115@01 r) (Set_in (inv@114@01 r) setOfRef@10@01))
        (< $Perm.No rd@12@01)
        false)
      (=
        ($FVF.lookup_edges (as sm@169@01  $FVF<edges>) r)
        ($FVF.lookup_edges ($SortWrappers.$SnapTo$FVF<edges> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@106@01)))))) r)))
    :pattern (($FVF.lookup_edges (as sm@169@01  $FVF<edges>) r))
    :pattern (($FVF.lookup_edges ($SortWrappers.$SnapTo$FVF<edges> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@106@01)))))) r))
    :qid |qp.fvfValDef36|))
  (forall ((r $Ref)) (!
    (=>
      (and (img@128@01 r) (Set_in (inv@127@01 r) res_copy_nodes@105@01))
      (=
        ($FVF.lookup_edges (as sm@169@01  $FVF<edges>) r)
        ($FVF.lookup_edges ($SortWrappers.$SnapTo$FVF<edges> ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@106@01))))))))))))) r)))
    :pattern (($FVF.lookup_edges (as sm@169@01  $FVF<edges>) r))
    :pattern (($FVF.lookup_edges ($SortWrappers.$SnapTo$FVF<edges> ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@106@01))))))))))))) r))
    :qid |qp.fvfValDef37|))))
(push) ; 10
(assert (not (<
  $Perm.No
  (+
    (ite
      (and (img@115@01 x@182@01) (Set_in (inv@114@01 x@182@01) setOfRef@10@01))
      rd@12@01
      $Perm.No)
    (ite
      (and
        (img@128@01 x@182@01)
        (Set_in (inv@127@01 x@182@01) res_copy_nodes@105@01))
      $Perm.Write
      $Perm.No)))))
(check-sat)
; unsat
(pop) ; 10
; 0.00s
; (get-info :all-statistics)
(pop) ; 9
(push) ; 9
; [else-branch: 29 | !(x@182@01 in setOfRef@10@01 && i@183@01 in edges_domain[Set[Int]](Lookup(edges, sm@169@01, x@182@01)))]
(assert (not
  (and
    (Set_in x@182@01 setOfRef@10@01)
    (Set_in i@183@01 (edges_domain<Set<Int>> ($FVF.lookup_edges (as sm@169@01  $FVF<edges>) x@182@01))))))
(pop) ; 9
(pop) ; 8
; Joined path conditions
(assert (forall ((r $Ref)) (!
  (=>
    (ite
      (and (img@115@01 r) (Set_in (inv@114@01 r) setOfRef@10@01))
      (< $Perm.No rd@12@01)
      false)
    (=
      ($FVF.lookup_edges (as sm@169@01  $FVF<edges>) r)
      ($FVF.lookup_edges ($SortWrappers.$SnapTo$FVF<edges> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@106@01)))))) r)))
  :pattern (($FVF.lookup_edges (as sm@169@01  $FVF<edges>) r))
  :pattern (($FVF.lookup_edges ($SortWrappers.$SnapTo$FVF<edges> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@106@01)))))) r))
  :qid |qp.fvfValDef36|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@128@01 r) (Set_in (inv@127@01 r) res_copy_nodes@105@01))
    (=
      ($FVF.lookup_edges (as sm@169@01  $FVF<edges>) r)
      ($FVF.lookup_edges ($SortWrappers.$SnapTo$FVF<edges> ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@106@01))))))))))))) r)))
  :pattern (($FVF.lookup_edges (as sm@169@01  $FVF<edges>) r))
  :pattern (($FVF.lookup_edges ($SortWrappers.$SnapTo$FVF<edges> ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@106@01))))))))))))) r))
  :qid |qp.fvfValDef37|)))
; Joined path conditions
(assert (or
  (not
    (and
      (Set_in x@182@01 setOfRef@10@01)
      (Set_in i@183@01 (edges_domain<Set<Int>> ($FVF.lookup_edges (as sm@169@01  $FVF<edges>) x@182@01)))))
  (and
    (Set_in x@182@01 setOfRef@10@01)
    (Set_in i@183@01 (edges_domain<Set<Int>> ($FVF.lookup_edges (as sm@169@01  $FVF<edges>) x@182@01))))))
(pop) ; 7
; Nested auxiliary terms: globals (aux)
(assert (forall ((r $Ref)) (!
  (=>
    (ite
      (and (img@115@01 r) (Set_in (inv@114@01 r) setOfRef@10@01))
      (< $Perm.No rd@12@01)
      false)
    (=
      ($FVF.lookup_edges (as sm@169@01  $FVF<edges>) r)
      ($FVF.lookup_edges ($SortWrappers.$SnapTo$FVF<edges> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@106@01)))))) r)))
  :pattern (($FVF.lookup_edges (as sm@169@01  $FVF<edges>) r))
  :pattern (($FVF.lookup_edges ($SortWrappers.$SnapTo$FVF<edges> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@106@01)))))) r))
  :qid |qp.fvfValDef36|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@128@01 r) (Set_in (inv@127@01 r) res_copy_nodes@105@01))
    (=
      ($FVF.lookup_edges (as sm@169@01  $FVF<edges>) r)
      ($FVF.lookup_edges ($SortWrappers.$SnapTo$FVF<edges> ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@106@01))))))))))))) r)))
  :pattern (($FVF.lookup_edges (as sm@169@01  $FVF<edges>) r))
  :pattern (($FVF.lookup_edges ($SortWrappers.$SnapTo$FVF<edges> ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@106@01))))))))))))) r))
  :qid |qp.fvfValDef37|)))
; Nested auxiliary terms: non-globals (aux)
(assert (forall ((x@182@01 $Ref) (i@183@01 Int)) (!
  (and
    (or (Set_in x@182@01 setOfRef@10@01) (not (Set_in x@182@01 setOfRef@10@01)))
    (or
      (not
        (and
          (Set_in x@182@01 setOfRef@10@01)
          (Set_in i@183@01 (edges_domain<Set<Int>> ($FVF.lookup_edges (as sm@169@01  $FVF<edges>) x@182@01)))))
      (and
        (Set_in x@182@01 setOfRef@10@01)
        (Set_in i@183@01 (edges_domain<Set<Int>> ($FVF.lookup_edges (as sm@169@01  $FVF<edges>) x@182@01))))))
  :pattern ((Set_in x@182@01 setOfRef@10@01) (Set_in i@183@01 (edges_domain<Set<Int>> ($FVF.lookup_edges (as sm@169@01  $FVF<edges>) x@182@01))))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/examples/graph-copy/graph-copy.vpr@98@12@98@120-aux|)))
(assert (forall ((x@182@01 $Ref) (i@183@01 Int)) (!
  (and
    (or (Set_in x@182@01 setOfRef@10@01) (not (Set_in x@182@01 setOfRef@10@01)))
    (or
      (not
        (and
          (Set_in x@182@01 setOfRef@10@01)
          (Set_in i@183@01 (edges_domain<Set<Int>> ($FVF.lookup_edges (as sm@169@01  $FVF<edges>) x@182@01)))))
      (and
        (Set_in x@182@01 setOfRef@10@01)
        (Set_in i@183@01 (edges_domain<Set<Int>> ($FVF.lookup_edges (as sm@169@01  $FVF<edges>) x@182@01))))))
  :pattern ((Set_in x@182@01 setOfRef@10@01) (edge_lookup<Ref> ($FVF.lookup_edges (as sm@169@01  $FVF<edges>) x@182@01) i@183@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/examples/graph-copy/graph-copy.vpr@98@12@98@120-aux|)))
(assert (forall ((x@182@01 $Ref) (i@183@01 Int)) (!
  (and
    (or (Set_in x@182@01 setOfRef@10@01) (not (Set_in x@182@01 setOfRef@10@01)))
    (or
      (not
        (and
          (Set_in x@182@01 setOfRef@10@01)
          (Set_in i@183@01 (edges_domain<Set<Int>> ($FVF.lookup_edges (as sm@169@01  $FVF<edges>) x@182@01)))))
      (and
        (Set_in x@182@01 setOfRef@10@01)
        (Set_in i@183@01 (edges_domain<Set<Int>> ($FVF.lookup_edges (as sm@169@01  $FVF<edges>) x@182@01))))))
  :pattern ((Set_in x@182@01 setOfRef@10@01) (Set_in (edge_lookup<Ref> ($FVF.lookup_edges (as sm@169@01  $FVF<edges>) x@182@01) i@183@01) setOfRef@10@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/examples/graph-copy/graph-copy.vpr@98@12@98@120-aux|)))
(assert (forall ((x@182@01 $Ref) (i@183@01 Int)) (!
  (and
    (or (Set_in x@182@01 setOfRef@10@01) (not (Set_in x@182@01 setOfRef@10@01)))
    (or
      (not
        (and
          (Set_in x@182@01 setOfRef@10@01)
          (Set_in i@183@01 (edges_domain<Set<Int>> ($FVF.lookup_edges (as sm@169@01  $FVF<edges>) x@182@01)))))
      (and
        (Set_in x@182@01 setOfRef@10@01)
        (Set_in i@183@01 (edges_domain<Set<Int>> ($FVF.lookup_edges (as sm@169@01  $FVF<edges>) x@182@01))))))
  :pattern ((edges_domain<Set<Int>> ($FVF.lookup_edges (as sm@169@01  $FVF<edges>) x@182@01)) (edge_lookup<Ref> ($FVF.lookup_edges (as sm@169@01  $FVF<edges>) x@182@01) i@183@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/examples/graph-copy/graph-copy.vpr@98@12@98@120-aux|)))
(assert (forall ((x@182@01 $Ref) (i@183@01 Int)) (!
  (and
    (or (Set_in x@182@01 setOfRef@10@01) (not (Set_in x@182@01 setOfRef@10@01)))
    (or
      (not
        (and
          (Set_in x@182@01 setOfRef@10@01)
          (Set_in i@183@01 (edges_domain<Set<Int>> ($FVF.lookup_edges (as sm@169@01  $FVF<edges>) x@182@01)))))
      (and
        (Set_in x@182@01 setOfRef@10@01)
        (Set_in i@183@01 (edges_domain<Set<Int>> ($FVF.lookup_edges (as sm@169@01  $FVF<edges>) x@182@01))))))
  :pattern ((edges_domain<Set<Int>> ($FVF.lookup_edges (as sm@169@01  $FVF<edges>) x@182@01)) (Set_in (edge_lookup<Ref> ($FVF.lookup_edges (as sm@169@01  $FVF<edges>) x@182@01) i@183@01) setOfRef@10@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/examples/graph-copy/graph-copy.vpr@98@12@98@120-aux|)))
(assert (forall ((x@182@01 $Ref) (i@183@01 Int)) (!
  (and
    (or (Set_in x@182@01 setOfRef@10@01) (not (Set_in x@182@01 setOfRef@10@01)))
    (or
      (not
        (and
          (Set_in x@182@01 setOfRef@10@01)
          (Set_in i@183@01 (edges_domain<Set<Int>> ($FVF.lookup_edges (as sm@169@01  $FVF<edges>) x@182@01)))))
      (and
        (Set_in x@182@01 setOfRef@10@01)
        (Set_in i@183@01 (edges_domain<Set<Int>> ($FVF.lookup_edges (as sm@169@01  $FVF<edges>) x@182@01))))))
  :pattern ((Set_in i@183@01 (edges_domain<Set<Int>> ($FVF.lookup_edges (as sm@169@01  $FVF<edges>) x@182@01))))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/examples/graph-copy/graph-copy.vpr@98@12@98@120-aux|)))
(assert (forall ((x@182@01 $Ref) (i@183@01 Int)) (!
  (and
    (or (Set_in x@182@01 setOfRef@10@01) (not (Set_in x@182@01 setOfRef@10@01)))
    (or
      (not
        (and
          (Set_in x@182@01 setOfRef@10@01)
          (Set_in i@183@01 (edges_domain<Set<Int>> ($FVF.lookup_edges (as sm@169@01  $FVF<edges>) x@182@01)))))
      (and
        (Set_in x@182@01 setOfRef@10@01)
        (Set_in i@183@01 (edges_domain<Set<Int>> ($FVF.lookup_edges (as sm@169@01  $FVF<edges>) x@182@01))))))
  :pattern ((Set_in (edge_lookup<Ref> ($FVF.lookup_edges (as sm@169@01  $FVF<edges>) x@182@01) i@183@01) setOfRef@10@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/examples/graph-copy/graph-copy.vpr@98@12@98@120-aux|)))
(push) ; 7
(assert (not (forall ((x@182@01 $Ref) (i@183@01 Int)) (!
  (=>
    (and
      (Set_in x@182@01 setOfRef@10@01)
      (Set_in i@183@01 (edges_domain<Set<Int>> ($FVF.lookup_edges (as sm@169@01  $FVF<edges>) x@182@01))))
    (Set_in (edge_lookup<Ref> ($FVF.lookup_edges (as sm@169@01  $FVF<edges>) x@182@01) i@183@01) setOfRef@10@01))
  :pattern ((Set_in x@182@01 setOfRef@10@01) (Set_in i@183@01 (edges_domain<Set<Int>> ($FVF.lookup_edges (as sm@169@01  $FVF<edges>) x@182@01))))
  :pattern ((Set_in x@182@01 setOfRef@10@01) (edge_lookup<Ref> ($FVF.lookup_edges (as sm@169@01  $FVF<edges>) x@182@01) i@183@01))
  :pattern ((Set_in x@182@01 setOfRef@10@01) (Set_in (edge_lookup<Ref> ($FVF.lookup_edges (as sm@169@01  $FVF<edges>) x@182@01) i@183@01) setOfRef@10@01))
  :pattern ((edges_domain<Set<Int>> ($FVF.lookup_edges (as sm@169@01  $FVF<edges>) x@182@01)) (edge_lookup<Ref> ($FVF.lookup_edges (as sm@169@01  $FVF<edges>) x@182@01) i@183@01))
  :pattern ((edges_domain<Set<Int>> ($FVF.lookup_edges (as sm@169@01  $FVF<edges>) x@182@01)) (Set_in (edge_lookup<Ref> ($FVF.lookup_edges (as sm@169@01  $FVF<edges>) x@182@01) i@183@01) setOfRef@10@01))
  :pattern ((Set_in i@183@01 (edges_domain<Set<Int>> ($FVF.lookup_edges (as sm@169@01  $FVF<edges>) x@182@01))))
  :pattern ((Set_in (edge_lookup<Ref> ($FVF.lookup_edges (as sm@169@01  $FVF<edges>) x@182@01) i@183@01) setOfRef@10@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/examples/graph-copy/graph-copy.vpr@98@12@98@120|))))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(assert (forall ((x@182@01 $Ref) (i@183@01 Int)) (!
  (=>
    (and
      (Set_in x@182@01 setOfRef@10@01)
      (Set_in i@183@01 (edges_domain<Set<Int>> ($FVF.lookup_edges (as sm@169@01  $FVF<edges>) x@182@01))))
    (Set_in (edge_lookup<Ref> ($FVF.lookup_edges (as sm@169@01  $FVF<edges>) x@182@01) i@183@01) setOfRef@10@01))
  :pattern ((Set_in x@182@01 setOfRef@10@01) (Set_in i@183@01 (edges_domain<Set<Int>> ($FVF.lookup_edges (as sm@169@01  $FVF<edges>) x@182@01))))
  :pattern ((Set_in x@182@01 setOfRef@10@01) (edge_lookup<Ref> ($FVF.lookup_edges (as sm@169@01  $FVF<edges>) x@182@01) i@183@01))
  :pattern ((Set_in x@182@01 setOfRef@10@01) (Set_in (edge_lookup<Ref> ($FVF.lookup_edges (as sm@169@01  $FVF<edges>) x@182@01) i@183@01) setOfRef@10@01))
  :pattern ((edges_domain<Set<Int>> ($FVF.lookup_edges (as sm@169@01  $FVF<edges>) x@182@01)) (edge_lookup<Ref> ($FVF.lookup_edges (as sm@169@01  $FVF<edges>) x@182@01) i@183@01))
  :pattern ((edges_domain<Set<Int>> ($FVF.lookup_edges (as sm@169@01  $FVF<edges>) x@182@01)) (Set_in (edge_lookup<Ref> ($FVF.lookup_edges (as sm@169@01  $FVF<edges>) x@182@01) i@183@01) setOfRef@10@01))
  :pattern ((Set_in i@183@01 (edges_domain<Set<Int>> ($FVF.lookup_edges (as sm@169@01  $FVF<edges>) x@182@01))))
  :pattern ((Set_in (edge_lookup<Ref> ($FVF.lookup_edges (as sm@169@01  $FVF<edges>) x@182@01) i@183@01) setOfRef@10@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/examples/graph-copy/graph-copy.vpr@98@12@98@120|)))
; [eval] (forall x: Ref :: { (x in map_domain(node_map)) } { (lookup(node_map, x) in node_map_image) } (x in map_domain(node_map)) ==> (lookup(node_map, x) in node_map_image))
(declare-const x@184@01 $Ref)
(push) ; 7
; [eval] (x in map_domain(node_map)) ==> (lookup(node_map, x) in node_map_image)
; [eval] (x in map_domain(node_map))
; [eval] map_domain(node_map)
(push) ; 8
; [then-branch: 30 | x@184@01 in map_domain[Seq[Ref]](res_node_map@104@01) | live]
; [else-branch: 30 | !(x@184@01 in map_domain[Seq[Ref]](res_node_map@104@01)) | live]
(push) ; 9
; [then-branch: 30 | x@184@01 in map_domain[Seq[Ref]](res_node_map@104@01)]
(assert (Seq_contains (map_domain<Seq<Ref>> res_node_map@104@01) x@184@01))
; [eval] (lookup(node_map, x) in node_map_image)
; [eval] lookup(node_map, x)
(pop) ; 9
(push) ; 9
; [else-branch: 30 | !(x@184@01 in map_domain[Seq[Ref]](res_node_map@104@01))]
(assert (not (Seq_contains (map_domain<Seq<Ref>> res_node_map@104@01) x@184@01)))
(pop) ; 9
(pop) ; 8
; Joined path conditions
; Joined path conditions
(assert (or
  (not (Seq_contains (map_domain<Seq<Ref>> res_node_map@104@01) x@184@01))
  (Seq_contains (map_domain<Seq<Ref>> res_node_map@104@01) x@184@01)))
(pop) ; 7
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall ((x@184@01 $Ref)) (!
  (or
    (not (Seq_contains (map_domain<Seq<Ref>> res_node_map@104@01) x@184@01))
    (Seq_contains (map_domain<Seq<Ref>> res_node_map@104@01) x@184@01))
  :pattern ((Seq_contains (map_domain<Seq<Ref>> res_node_map@104@01) x@184@01))
  :pattern ((Seq_contains_trigger
    (map_domain<Seq<Ref>> res_node_map@104@01)
    x@184@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/examples/graph-copy/graph-copy.vpr@100@12@100@96-aux|)))
(assert (forall ((x@184@01 $Ref)) (!
  (or
    (not (Seq_contains (map_domain<Seq<Ref>> res_node_map@104@01) x@184@01))
    (Seq_contains (map_domain<Seq<Ref>> res_node_map@104@01) x@184@01))
  :pattern ((Seq_contains_trigger
    (map_domain<Seq<Ref>> res_node_map@104@01)
    x@184@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/examples/graph-copy/graph-copy.vpr@100@12@100@96-aux|)))
(assert (forall ((x@184@01 $Ref)) (!
  (or
    (not (Seq_contains (map_domain<Seq<Ref>> res_node_map@104@01) x@184@01))
    (Seq_contains (map_domain<Seq<Ref>> res_node_map@104@01) x@184@01))
  :pattern ((Set_in (lookup<Ref> res_node_map@104@01 x@184@01) res_copy_nodes@105@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/examples/graph-copy/graph-copy.vpr@100@12@100@96-aux|)))
(push) ; 7
(assert (not (forall ((x@184@01 $Ref)) (!
  (=>
    (Seq_contains (map_domain<Seq<Ref>> res_node_map@104@01) x@184@01)
    (Set_in (lookup<Ref> res_node_map@104@01 x@184@01) res_copy_nodes@105@01))
  :pattern ((Seq_contains (map_domain<Seq<Ref>> res_node_map@104@01) x@184@01))
  :pattern ((Seq_contains_trigger
    (map_domain<Seq<Ref>> res_node_map@104@01)
    x@184@01))
  :pattern ((Seq_contains_trigger
    (map_domain<Seq<Ref>> res_node_map@104@01)
    x@184@01))
  :pattern ((Set_in (lookup<Ref> res_node_map@104@01 x@184@01) res_copy_nodes@105@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/examples/graph-copy/graph-copy.vpr@100@12@100@96|))))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(assert (forall ((x@184@01 $Ref)) (!
  (=>
    (Seq_contains (map_domain<Seq<Ref>> res_node_map@104@01) x@184@01)
    (Set_in (lookup<Ref> res_node_map@104@01 x@184@01) res_copy_nodes@105@01))
  :pattern ((Seq_contains (map_domain<Seq<Ref>> res_node_map@104@01) x@184@01))
  :pattern ((Seq_contains_trigger
    (map_domain<Seq<Ref>> res_node_map@104@01)
    x@184@01))
  :pattern ((Set_in (lookup<Ref> res_node_map@104@01 x@184@01) res_copy_nodes@105@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/examples/graph-copy/graph-copy.vpr@100@12@100@96|)))
(declare-const x@185@01 $Ref)
(push) ; 7
; [eval] (x in node_map_image)
(assert (Set_in x@185@01 res_copy_nodes@105@01))
(pop) ; 7
(declare-fun inv@186@01 ($Ref) $Ref)
(declare-fun img@187@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
; Check receiver injectivity
(push) ; 7
(assert (not (forall ((x1@185@01 $Ref) (x2@185@01 $Ref)) (!
  (=>
    (and
      (Set_in x1@185@01 res_copy_nodes@105@01)
      (Set_in x2@185@01 res_copy_nodes@105@01)
      (= x1@185@01 x2@185@01))
    (= x1@185@01 x2@185@01))
  
  :qid |val-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((x@185@01 $Ref)) (!
  (=>
    (Set_in x@185@01 res_copy_nodes@105@01)
    (and (= (inv@186@01 x@185@01) x@185@01) (img@187@01 x@185@01)))
  :pattern ((Set_in x@185@01 res_copy_nodes@105@01))
  :pattern ((inv@186@01 x@185@01))
  :pattern ((img@187@01 x@185@01))
  :qid |val-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@187@01 r) (Set_in (inv@186@01 r) res_copy_nodes@105@01))
    (= (inv@186@01 r) r))
  :pattern ((inv@186@01 r))
  :qid |val-fctOfInv|)))
; Precomputing data for removing quantified permissions
(define-fun pTaken@188@01 ((r $Ref)) $Perm
  (ite
    (and
      (Set_in (inv@186@01 r) res_copy_nodes@105@01)
      (img@187@01 r)
      (= r (inv@186@01 r)))
    ($Perm.min
      (ite
        (and (img@109@01 r) (Set_in (inv@108@01 r) setOfRef@10@01))
        (- rd@12@01 (pTaken@175@01 r))
        $Perm.No)
      $Perm.Write)
    $Perm.No))
(define-fun pTaken@189@01 ((r $Ref)) $Perm
  (ite
    (and
      (Set_in (inv@186@01 r) res_copy_nodes@105@01)
      (img@187@01 r)
      (= r (inv@186@01 r)))
    ($Perm.min
      (ite
        (and (img@125@01 r) (Set_in (inv@124@01 r) res_copy_nodes@105@01))
        $Perm.Write
        $Perm.No)
      (- $Perm.Write (pTaken@188@01 r)))
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
        (and (img@109@01 r) (Set_in (inv@108@01 r) setOfRef@10@01))
        (- rd@12@01 (pTaken@175@01 r))
        $Perm.No)
      (pTaken@188@01 r))
    $Perm.No)
  
  :qid |quant-u-13905|))))
(check-sat)
; unknown
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 7
(set-option :timeout 10)
(assert (not (forall ((r $Ref)) (!
  (= (pTaken@188@01 r) $Perm.No)
  
  :qid |quant-u-13906|))))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
; Intermediate check if already taken enough permissions
(set-option :timeout 0)
(push) ; 7
(set-option :timeout 500)
(assert (not (forall ((r $Ref)) (!
  (=>
    (and
      (Set_in (inv@186@01 r) res_copy_nodes@105@01)
      (img@187@01 r)
      (= r (inv@186@01 r)))
    (= (- $Perm.Write (pTaken@188@01 r)) $Perm.No))
  
  :qid |quant-u-13907|))))
(check-sat)
; unknown
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
; Chunk depleted?
(set-option :timeout 0)
(push) ; 7
(set-option :timeout 500)
(assert (not (forall ((r $Ref)) (!
  (=
    (-
      (ite
        (and (img@125@01 r) (Set_in (inv@124@01 r) res_copy_nodes@105@01))
        $Perm.Write
        $Perm.No)
      (pTaken@189@01 r))
    $Perm.No)
  
  :qid |quant-u-13908|))))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
; Intermediate check if already taken enough permissions
(set-option :timeout 0)
(push) ; 7
(set-option :timeout 500)
(assert (not (forall ((r $Ref)) (!
  (=>
    (and
      (Set_in (inv@186@01 r) res_copy_nodes@105@01)
      (img@187@01 r)
      (= r (inv@186@01 r)))
    (= (- (- $Perm.Write (pTaken@188@01 r)) (pTaken@189@01 r)) $Perm.No))
  
  :qid |quant-u-13909|))))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
; Final check if taken enough permissions
; Done removing quantified permissions
(declare-const x@190@01 $Ref)
(set-option :timeout 0)
(push) ; 7
; [eval] (x in node_map_image)
(assert (Set_in x@190@01 res_copy_nodes@105@01))
(pop) ; 7
(declare-fun inv@191@01 ($Ref) $Ref)
(declare-fun img@192@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
; Check receiver injectivity
(push) ; 7
(assert (not (forall ((x1@190@01 $Ref) (x2@190@01 $Ref)) (!
  (=>
    (and
      (Set_in x1@190@01 res_copy_nodes@105@01)
      (Set_in x2@190@01 res_copy_nodes@105@01)
      (= x1@190@01 x2@190@01))
    (= x1@190@01 x2@190@01))
  
  :qid |edges-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((x@190@01 $Ref)) (!
  (=>
    (Set_in x@190@01 res_copy_nodes@105@01)
    (and (= (inv@191@01 x@190@01) x@190@01) (img@192@01 x@190@01)))
  :pattern ((Set_in x@190@01 res_copy_nodes@105@01))
  :pattern ((inv@191@01 x@190@01))
  :pattern ((img@192@01 x@190@01))
  :qid |edges-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@192@01 r) (Set_in (inv@191@01 r) res_copy_nodes@105@01))
    (= (inv@191@01 r) r))
  :pattern ((inv@191@01 r))
  :qid |edges-fctOfInv|)))
; Precomputing data for removing quantified permissions
(define-fun pTaken@193@01 ((r $Ref)) $Perm
  (ite
    (and
      (Set_in (inv@191@01 r) res_copy_nodes@105@01)
      (img@192@01 r)
      (= r (inv@191@01 r)))
    ($Perm.min
      (ite
        (and (img@128@01 r) (Set_in (inv@127@01 r) res_copy_nodes@105@01))
        $Perm.Write
        $Perm.No)
      $Perm.Write)
    $Perm.No))
(define-fun pTaken@194@01 ((r $Ref)) $Perm
  (ite
    (and
      (Set_in (inv@191@01 r) res_copy_nodes@105@01)
      (img@192@01 r)
      (= r (inv@191@01 r)))
    ($Perm.min
      (ite
        (and (img@115@01 r) (Set_in (inv@114@01 r) setOfRef@10@01))
        (- rd@12@01 (pTaken@181@01 r))
        $Perm.No)
      (- $Perm.Write (pTaken@193@01 r)))
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
        (and (img@128@01 r) (Set_in (inv@127@01 r) res_copy_nodes@105@01))
        $Perm.Write
        $Perm.No)
      (pTaken@193@01 r))
    $Perm.No)
  
  :qid |quant-u-13912|))))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
; Intermediate check if already taken enough permissions
(set-option :timeout 0)
(push) ; 7
(set-option :timeout 500)
(assert (not (forall ((r $Ref)) (!
  (=>
    (and
      (Set_in (inv@191@01 r) res_copy_nodes@105@01)
      (img@192@01 r)
      (= r (inv@191@01 r)))
    (= (- $Perm.Write (pTaken@193@01 r)) $Perm.No))
  
  :qid |quant-u-13913|))))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
; Final check if taken enough permissions
; Done removing quantified permissions
(declare-const nodeCopy@195@01 $Ref)
(declare-const res_node_map@196@01 INodeMap)
(declare-const res_copy_nodes@197@01 Set<$Ref>)
(declare-const $t@198@01 $Snap)
(assert (= $t@198@01 ($Snap.combine ($Snap.first $t@198@01) ($Snap.second $t@198@01))))
(assert (= ($Snap.first $t@198@01) $Snap.unit))
; [eval] nodeCopy != null
(assert (not (= nodeCopy@195@01 $Ref.null)))
(assert (=
  ($Snap.second $t@198@01)
  ($Snap.combine
    ($Snap.first ($Snap.second $t@198@01))
    ($Snap.second ($Snap.second $t@198@01)))))
(assert (= ($Snap.first ($Snap.second $t@198@01)) $Snap.unit))
; [eval] (nodeCopy in res_copy_nodes)
(assert (Set_in nodeCopy@195@01 res_copy_nodes@197@01))
(assert (=
  ($Snap.second ($Snap.second $t@198@01))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second $t@198@01)))
    ($Snap.second ($Snap.second ($Snap.second $t@198@01))))))
(assert (= ($Snap.first ($Snap.second ($Snap.second $t@198@01))) $Snap.unit))
; [eval] |(setOfRef intersection res_copy_nodes)| == 0
; [eval] |(setOfRef intersection res_copy_nodes)|
; [eval] (setOfRef intersection res_copy_nodes)
(assert (= (Set_card (Set_intersection setOfRef@10@01 res_copy_nodes@197@01)) 0))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second $t@198@01)))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@198@01))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@198@01)))))))
(declare-const x@199@01 $Ref)
(set-option :timeout 0)
(push) ; 7
; [eval] (x in setOfRef)
(assert (Set_in x@199@01 setOfRef@10@01))
(pop) ; 7
(declare-fun inv@200@01 ($Ref) $Ref)
(declare-fun img@201@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
(push) ; 7
(assert (not (forall ((x@199@01 $Ref)) (!
  (=>
    (Set_in x@199@01 setOfRef@10@01)
    (or
      (= (/ rd@12@01 (to_real 2)) $Perm.No)
      (< $Perm.No (/ rd@12@01 (to_real 2)))))
  
  :qid |quant-u-13914|))))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
; Check receiver injectivity
(push) ; 7
(assert (not (forall ((x1@199@01 $Ref) (x2@199@01 $Ref)) (!
  (=>
    (and
      (and
        (Set_in x1@199@01 setOfRef@10@01)
        (< $Perm.No (/ rd@12@01 (to_real 2))))
      (and
        (Set_in x2@199@01 setOfRef@10@01)
        (< $Perm.No (/ rd@12@01 (to_real 2))))
      (= x1@199@01 x2@199@01))
    (= x1@199@01 x2@199@01))
  
  :qid |val-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((x@199@01 $Ref)) (!
  (=>
    (and (Set_in x@199@01 setOfRef@10@01) (< $Perm.No (/ rd@12@01 (to_real 2))))
    (and (= (inv@200@01 x@199@01) x@199@01) (img@201@01 x@199@01)))
  :pattern ((Set_in x@199@01 setOfRef@10@01))
  :pattern ((inv@200@01 x@199@01))
  :pattern ((img@201@01 x@199@01))
  :qid |quant-u-13915|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@201@01 r)
      (and
        (Set_in (inv@200@01 r) setOfRef@10@01)
        (< $Perm.No (/ rd@12@01 (to_real 2)))))
    (= (inv@200@01 r) r))
  :pattern ((inv@200@01 r))
  :qid |val-fctOfInv|)))
; Permissions are non-negative
(assert (forall ((x@199@01 $Ref)) (!
  (<= $Perm.No (/ rd@12@01 (to_real 2)))
  :pattern ((Set_in x@199@01 setOfRef@10@01))
  :pattern ((inv@200@01 x@199@01))
  :pattern ((img@201@01 x@199@01))
  :qid |val-permAtLeastZero|)))
; Field permissions are at most one
(assert (forall ((x@199@01 $Ref)) (!
  (<= (/ rd@12@01 (to_real 2)) $Perm.Write)
  :pattern ((Set_in x@199@01 setOfRef@10@01))
  :pattern ((inv@200@01 x@199@01))
  :pattern ((img@201@01 x@199@01))
  :qid |val-permAtMostOne|)))
; Permission implies non-null receiver
(assert (forall ((x@199@01 $Ref)) (!
  (=>
    (and (Set_in x@199@01 setOfRef@10@01) (< $Perm.No (/ rd@12@01 (to_real 2))))
    (not (= x@199@01 $Ref.null)))
  :pattern ((Set_in x@199@01 setOfRef@10@01))
  :pattern ((inv@200@01 x@199@01))
  :pattern ((img@201@01 x@199@01))
  :qid |val-permImpliesNonNull|)))
(push) ; 7
(set-option :timeout 10)
(assert (not (forall ((r $Ref)) (!
  (and
    (= x@199@01 x@107@01)
    (=
      (and (img@201@01 r) (Set_in (inv@200@01 r) setOfRef@10@01))
      (and (img@109@01 r) (Set_in (inv@108@01 r) setOfRef@10@01))))
  
  :qid |quant-u-13916|))))
(check-sat)
; unknown
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@198@01))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@198@01)))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@198@01))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@198@01)))))
  $Snap.unit))
; [eval] (forall x: Ref :: { (x in setOfRef) } (x in setOfRef) ==> x.val == old(x.val))
(declare-const x@202@01 $Ref)
(set-option :timeout 0)
(push) ; 7
; [eval] (x in setOfRef) ==> x.val == old(x.val)
; [eval] (x in setOfRef)
(push) ; 8
; [then-branch: 31 | x@202@01 in setOfRef@10@01 | live]
; [else-branch: 31 | !(x@202@01 in setOfRef@10@01) | live]
(push) ; 9
; [then-branch: 31 | x@202@01 in setOfRef@10@01]
(assert (Set_in x@202@01 setOfRef@10@01))
; [eval] x.val == old(x.val)
(declare-const sm@203@01 $FVF<val>)
; Definitional axioms for snapshot map values
(assert (forall ((r $Ref)) (!
  (=>
    (ite
      (and (img@109@01 r) (Set_in (inv@108@01 r) setOfRef@10@01))
      (< $Perm.No (- rd@12@01 (pTaken@175@01 r)))
      false)
    (=
      ($FVF.lookup_val (as sm@203@01  $FVF<val>) r)
      ($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.first ($Snap.second ($Snap.second $t@106@01)))) r)))
  :pattern (($FVF.lookup_val (as sm@203@01  $FVF<val>) r))
  :pattern (($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.first ($Snap.second ($Snap.second $t@106@01)))) r))
  :qid |qp.fvfValDef39|)))
(assert (forall ((r $Ref)) (!
  (=>
    (ite
      (and (img@201@01 r) (Set_in (inv@200@01 r) setOfRef@10@01))
      (< $Perm.No (/ rd@12@01 (to_real 2)))
      false)
    (=
      ($FVF.lookup_val (as sm@203@01  $FVF<val>) r)
      ($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@198@01))))) r)))
  :pattern (($FVF.lookup_val (as sm@203@01  $FVF<val>) r))
  :pattern (($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@198@01))))) r))
  :qid |qp.fvfValDef40|)))
(declare-const pm@204@01 $FPM)
(assert (forall ((r $Ref)) (!
  (=
    ($FVF.perm_val (as pm@204@01  $FPM) r)
    (+
      (ite
        (and (img@109@01 r) (Set_in (inv@108@01 r) setOfRef@10@01))
        (- rd@12@01 (pTaken@175@01 r))
        $Perm.No)
      (ite
        (and (img@201@01 r) (Set_in (inv@200@01 r) setOfRef@10@01))
        (/ rd@12@01 (to_real 2))
        $Perm.No)))
  :pattern (($FVF.perm_val (as pm@204@01  $FPM) r))
  :qid |qp.resPrmSumDef41|)))
(push) ; 10
(assert (not (< $Perm.No ($FVF.perm_val (as pm@204@01  $FPM) x@202@01))))
(check-sat)
; unsat
(pop) ; 10
; 0.00s
; (get-info :all-statistics)
; [eval] old(x.val)
(declare-const sm@205@01 $FVF<val>)
; Definitional axioms for snapshot map values
(assert (forall ((r $Ref)) (!
  (=>
    (ite
      (and (img@109@01 r) (Set_in (inv@108@01 r) setOfRef@10@01))
      (< $Perm.No rd@12@01)
      false)
    (=
      ($FVF.lookup_val (as sm@205@01  $FVF<val>) r)
      ($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.first ($Snap.second ($Snap.second $t@106@01)))) r)))
  :pattern (($FVF.lookup_val (as sm@205@01  $FVF<val>) r))
  :pattern (($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.first ($Snap.second ($Snap.second $t@106@01)))) r))
  :qid |qp.fvfValDef42|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@125@01 r) (Set_in (inv@124@01 r) res_copy_nodes@105@01))
    (=
      ($FVF.lookup_val (as sm@205@01  $FVF<val>) r)
      ($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@106@01))))))))))))) r)))
  :pattern (($FVF.lookup_val (as sm@205@01  $FVF<val>) r))
  :pattern (($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@106@01))))))))))))) r))
  :qid |qp.fvfValDef43|)))
(declare-const pm@206@01 $FPM)
(assert (forall ((r $Ref)) (!
  (=
    ($FVF.perm_val (as pm@206@01  $FPM) r)
    (+
      (ite
        (and (img@109@01 r) (Set_in (inv@108@01 r) setOfRef@10@01))
        rd@12@01
        $Perm.No)
      (ite
        (and (img@125@01 r) (Set_in (inv@124@01 r) res_copy_nodes@105@01))
        $Perm.Write
        $Perm.No)))
  :pattern (($FVF.perm_val (as pm@206@01  $FPM) r))
  :qid |qp.resPrmSumDef44|)))
(push) ; 10
(assert (not (< $Perm.No ($FVF.perm_val (as pm@206@01  $FPM) x@202@01))))
(check-sat)
; unsat
(pop) ; 10
; 0.00s
; (get-info :all-statistics)
(pop) ; 9
(push) ; 9
; [else-branch: 31 | !(x@202@01 in setOfRef@10@01)]
(assert (not (Set_in x@202@01 setOfRef@10@01)))
(pop) ; 9
(pop) ; 8
; Joined path conditions
(assert (forall ((r $Ref)) (!
  (=>
    (ite
      (and (img@109@01 r) (Set_in (inv@108@01 r) setOfRef@10@01))
      (< $Perm.No (- rd@12@01 (pTaken@175@01 r)))
      false)
    (=
      ($FVF.lookup_val (as sm@203@01  $FVF<val>) r)
      ($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.first ($Snap.second ($Snap.second $t@106@01)))) r)))
  :pattern (($FVF.lookup_val (as sm@203@01  $FVF<val>) r))
  :pattern (($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.first ($Snap.second ($Snap.second $t@106@01)))) r))
  :qid |qp.fvfValDef39|)))
(assert (forall ((r $Ref)) (!
  (=>
    (ite
      (and (img@201@01 r) (Set_in (inv@200@01 r) setOfRef@10@01))
      (< $Perm.No (/ rd@12@01 (to_real 2)))
      false)
    (=
      ($FVF.lookup_val (as sm@203@01  $FVF<val>) r)
      ($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@198@01))))) r)))
  :pattern (($FVF.lookup_val (as sm@203@01  $FVF<val>) r))
  :pattern (($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@198@01))))) r))
  :qid |qp.fvfValDef40|)))
(assert (forall ((r $Ref)) (!
  (=
    ($FVF.perm_val (as pm@204@01  $FPM) r)
    (+
      (ite
        (and (img@109@01 r) (Set_in (inv@108@01 r) setOfRef@10@01))
        (- rd@12@01 (pTaken@175@01 r))
        $Perm.No)
      (ite
        (and (img@201@01 r) (Set_in (inv@200@01 r) setOfRef@10@01))
        (/ rd@12@01 (to_real 2))
        $Perm.No)))
  :pattern (($FVF.perm_val (as pm@204@01  $FPM) r))
  :qid |qp.resPrmSumDef41|)))
(assert (forall ((r $Ref)) (!
  (=>
    (ite
      (and (img@109@01 r) (Set_in (inv@108@01 r) setOfRef@10@01))
      (< $Perm.No rd@12@01)
      false)
    (=
      ($FVF.lookup_val (as sm@205@01  $FVF<val>) r)
      ($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.first ($Snap.second ($Snap.second $t@106@01)))) r)))
  :pattern (($FVF.lookup_val (as sm@205@01  $FVF<val>) r))
  :pattern (($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.first ($Snap.second ($Snap.second $t@106@01)))) r))
  :qid |qp.fvfValDef42|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@125@01 r) (Set_in (inv@124@01 r) res_copy_nodes@105@01))
    (=
      ($FVF.lookup_val (as sm@205@01  $FVF<val>) r)
      ($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@106@01))))))))))))) r)))
  :pattern (($FVF.lookup_val (as sm@205@01  $FVF<val>) r))
  :pattern (($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@106@01))))))))))))) r))
  :qid |qp.fvfValDef43|)))
(assert (forall ((r $Ref)) (!
  (=
    ($FVF.perm_val (as pm@206@01  $FPM) r)
    (+
      (ite
        (and (img@109@01 r) (Set_in (inv@108@01 r) setOfRef@10@01))
        rd@12@01
        $Perm.No)
      (ite
        (and (img@125@01 r) (Set_in (inv@124@01 r) res_copy_nodes@105@01))
        $Perm.Write
        $Perm.No)))
  :pattern (($FVF.perm_val (as pm@206@01  $FPM) r))
  :qid |qp.resPrmSumDef44|)))
; Joined path conditions
(assert (or (not (Set_in x@202@01 setOfRef@10@01)) (Set_in x@202@01 setOfRef@10@01)))
(pop) ; 7
; Nested auxiliary terms: globals (aux)
(assert (forall ((r $Ref)) (!
  (=>
    (ite
      (and (img@109@01 r) (Set_in (inv@108@01 r) setOfRef@10@01))
      (< $Perm.No (- rd@12@01 (pTaken@175@01 r)))
      false)
    (=
      ($FVF.lookup_val (as sm@203@01  $FVF<val>) r)
      ($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.first ($Snap.second ($Snap.second $t@106@01)))) r)))
  :pattern (($FVF.lookup_val (as sm@203@01  $FVF<val>) r))
  :pattern (($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.first ($Snap.second ($Snap.second $t@106@01)))) r))
  :qid |qp.fvfValDef39|)))
(assert (forall ((r $Ref)) (!
  (=>
    (ite
      (and (img@201@01 r) (Set_in (inv@200@01 r) setOfRef@10@01))
      (< $Perm.No (/ rd@12@01 (to_real 2)))
      false)
    (=
      ($FVF.lookup_val (as sm@203@01  $FVF<val>) r)
      ($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@198@01))))) r)))
  :pattern (($FVF.lookup_val (as sm@203@01  $FVF<val>) r))
  :pattern (($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@198@01))))) r))
  :qid |qp.fvfValDef40|)))
(assert (forall ((r $Ref)) (!
  (=
    ($FVF.perm_val (as pm@204@01  $FPM) r)
    (+
      (ite
        (and (img@109@01 r) (Set_in (inv@108@01 r) setOfRef@10@01))
        (- rd@12@01 (pTaken@175@01 r))
        $Perm.No)
      (ite
        (and (img@201@01 r) (Set_in (inv@200@01 r) setOfRef@10@01))
        (/ rd@12@01 (to_real 2))
        $Perm.No)))
  :pattern (($FVF.perm_val (as pm@204@01  $FPM) r))
  :qid |qp.resPrmSumDef41|)))
(assert (forall ((r $Ref)) (!
  (=>
    (ite
      (and (img@109@01 r) (Set_in (inv@108@01 r) setOfRef@10@01))
      (< $Perm.No rd@12@01)
      false)
    (=
      ($FVF.lookup_val (as sm@205@01  $FVF<val>) r)
      ($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.first ($Snap.second ($Snap.second $t@106@01)))) r)))
  :pattern (($FVF.lookup_val (as sm@205@01  $FVF<val>) r))
  :pattern (($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.first ($Snap.second ($Snap.second $t@106@01)))) r))
  :qid |qp.fvfValDef42|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@125@01 r) (Set_in (inv@124@01 r) res_copy_nodes@105@01))
    (=
      ($FVF.lookup_val (as sm@205@01  $FVF<val>) r)
      ($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@106@01))))))))))))) r)))
  :pattern (($FVF.lookup_val (as sm@205@01  $FVF<val>) r))
  :pattern (($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@106@01))))))))))))) r))
  :qid |qp.fvfValDef43|)))
(assert (forall ((r $Ref)) (!
  (=
    ($FVF.perm_val (as pm@206@01  $FPM) r)
    (+
      (ite
        (and (img@109@01 r) (Set_in (inv@108@01 r) setOfRef@10@01))
        rd@12@01
        $Perm.No)
      (ite
        (and (img@125@01 r) (Set_in (inv@124@01 r) res_copy_nodes@105@01))
        $Perm.Write
        $Perm.No)))
  :pattern (($FVF.perm_val (as pm@206@01  $FPM) r))
  :qid |qp.resPrmSumDef44|)))
; Nested auxiliary terms: non-globals (aux)
(assert (forall ((x@202@01 $Ref)) (!
  (or (not (Set_in x@202@01 setOfRef@10@01)) (Set_in x@202@01 setOfRef@10@01))
  :pattern ((Set_in x@202@01 setOfRef@10@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/examples/graph-copy/graph-copy.vpr@107@11@107@65-aux|)))
(assert (forall ((x@202@01 $Ref)) (!
  (=>
    (Set_in x@202@01 setOfRef@10@01)
    (=
      ($FVF.lookup_val (as sm@203@01  $FVF<val>) x@202@01)
      ($FVF.lookup_val (as sm@205@01  $FVF<val>) x@202@01)))
  :pattern ((Set_in x@202@01 setOfRef@10@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/examples/graph-copy/graph-copy.vpr@107@11@107@65|)))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@198@01)))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@198@01))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@198@01)))))))))
(declare-const x@207@01 $Ref)
(push) ; 7
; [eval] (x in setOfRef)
(assert (Set_in x@207@01 setOfRef@10@01))
(pop) ; 7
(declare-fun inv@208@01 ($Ref) $Ref)
(declare-fun img@209@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
(push) ; 7
(assert (not (forall ((x@207@01 $Ref)) (!
  (=>
    (Set_in x@207@01 setOfRef@10@01)
    (or
      (= (/ rd@12@01 (to_real 2)) $Perm.No)
      (< $Perm.No (/ rd@12@01 (to_real 2)))))
  
  :qid |quant-u-13917|))))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
; Check receiver injectivity
(push) ; 7
(assert (not (forall ((x1@207@01 $Ref) (x2@207@01 $Ref)) (!
  (=>
    (and
      (and
        (Set_in x1@207@01 setOfRef@10@01)
        (< $Perm.No (/ rd@12@01 (to_real 2))))
      (and
        (Set_in x2@207@01 setOfRef@10@01)
        (< $Perm.No (/ rd@12@01 (to_real 2))))
      (= x1@207@01 x2@207@01))
    (= x1@207@01 x2@207@01))
  
  :qid |edges-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((x@207@01 $Ref)) (!
  (=>
    (and (Set_in x@207@01 setOfRef@10@01) (< $Perm.No (/ rd@12@01 (to_real 2))))
    (and (= (inv@208@01 x@207@01) x@207@01) (img@209@01 x@207@01)))
  :pattern ((Set_in x@207@01 setOfRef@10@01))
  :pattern ((inv@208@01 x@207@01))
  :pattern ((img@209@01 x@207@01))
  :qid |quant-u-13918|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@209@01 r)
      (and
        (Set_in (inv@208@01 r) setOfRef@10@01)
        (< $Perm.No (/ rd@12@01 (to_real 2)))))
    (= (inv@208@01 r) r))
  :pattern ((inv@208@01 r))
  :qid |edges-fctOfInv|)))
; Permissions are non-negative
(assert (forall ((x@207@01 $Ref)) (!
  (<= $Perm.No (/ rd@12@01 (to_real 2)))
  :pattern ((Set_in x@207@01 setOfRef@10@01))
  :pattern ((inv@208@01 x@207@01))
  :pattern ((img@209@01 x@207@01))
  :qid |edges-permAtLeastZero|)))
; Field permissions are at most one
(assert (forall ((x@207@01 $Ref)) (!
  (<= (/ rd@12@01 (to_real 2)) $Perm.Write)
  :pattern ((Set_in x@207@01 setOfRef@10@01))
  :pattern ((inv@208@01 x@207@01))
  :pattern ((img@209@01 x@207@01))
  :qid |edges-permAtMostOne|)))
; Permission implies non-null receiver
(assert (forall ((x@207@01 $Ref)) (!
  (=>
    (and (Set_in x@207@01 setOfRef@10@01) (< $Perm.No (/ rd@12@01 (to_real 2))))
    (not (= x@207@01 $Ref.null)))
  :pattern ((Set_in x@207@01 setOfRef@10@01))
  :pattern ((inv@208@01 x@207@01))
  :pattern ((img@209@01 x@207@01))
  :qid |edges-permImpliesNonNull|)))
(push) ; 7
(set-option :timeout 10)
(assert (not (forall ((r $Ref)) (!
  (and
    (= x@207@01 x@113@01)
    (=
      (and (img@209@01 r) (Set_in (inv@208@01 r) setOfRef@10@01))
      (and (img@115@01 r) (Set_in (inv@114@01 r) setOfRef@10@01))))
  
  :qid |quant-u-13919|))))
(check-sat)
; unknown
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@198@01))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@198@01)))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@198@01))))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@198@01)))))))
  $Snap.unit))
; [eval] (forall x: Ref :: { (x in setOfRef) } (x in setOfRef) ==> x.edges == old(x.edges))
(declare-const x@210@01 $Ref)
(set-option :timeout 0)
(push) ; 7
; [eval] (x in setOfRef) ==> x.edges == old(x.edges)
; [eval] (x in setOfRef)
(push) ; 8
; [then-branch: 32 | x@210@01 in setOfRef@10@01 | live]
; [else-branch: 32 | !(x@210@01 in setOfRef@10@01) | live]
(push) ; 9
; [then-branch: 32 | x@210@01 in setOfRef@10@01]
(assert (Set_in x@210@01 setOfRef@10@01))
; [eval] x.edges == old(x.edges)
(declare-const sm@211@01 $FVF<edges>)
; Definitional axioms for snapshot map values
(assert (forall ((r $Ref)) (!
  (=>
    (ite
      (and (img@115@01 r) (Set_in (inv@114@01 r) setOfRef@10@01))
      (< $Perm.No (- rd@12@01 (pTaken@181@01 r)))
      false)
    (=
      ($FVF.lookup_edges (as sm@211@01  $FVF<edges>) r)
      ($FVF.lookup_edges ($SortWrappers.$SnapTo$FVF<edges> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@106@01)))))) r)))
  :pattern (($FVF.lookup_edges (as sm@211@01  $FVF<edges>) r))
  :pattern (($FVF.lookup_edges ($SortWrappers.$SnapTo$FVF<edges> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@106@01)))))) r))
  :qid |qp.fvfValDef45|)))
(assert (forall ((r $Ref)) (!
  (=>
    (ite
      (and (img@209@01 r) (Set_in (inv@208@01 r) setOfRef@10@01))
      (< $Perm.No (/ rd@12@01 (to_real 2)))
      false)
    (=
      ($FVF.lookup_edges (as sm@211@01  $FVF<edges>) r)
      ($FVF.lookup_edges ($SortWrappers.$SnapTo$FVF<edges> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@198@01))))))) r)))
  :pattern (($FVF.lookup_edges (as sm@211@01  $FVF<edges>) r))
  :pattern (($FVF.lookup_edges ($SortWrappers.$SnapTo$FVF<edges> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@198@01))))))) r))
  :qid |qp.fvfValDef46|)))
(declare-const pm@212@01 $FPM)
(assert (forall ((r $Ref)) (!
  (=
    ($FVF.perm_edges (as pm@212@01  $FPM) r)
    (+
      (ite
        (and (img@115@01 r) (Set_in (inv@114@01 r) setOfRef@10@01))
        (- rd@12@01 (pTaken@181@01 r))
        $Perm.No)
      (ite
        (and (img@209@01 r) (Set_in (inv@208@01 r) setOfRef@10@01))
        (/ rd@12@01 (to_real 2))
        $Perm.No)))
  :pattern (($FVF.perm_edges (as pm@212@01  $FPM) r))
  :qid |qp.resPrmSumDef47|)))
(push) ; 10
(assert (not (< $Perm.No ($FVF.perm_edges (as pm@212@01  $FPM) x@210@01))))
(check-sat)
; unsat
(pop) ; 10
; 0.00s
; (get-info :all-statistics)
; [eval] old(x.edges)
(assert (and
  (forall ((r $Ref)) (!
    (=>
      (ite
        (and (img@115@01 r) (Set_in (inv@114@01 r) setOfRef@10@01))
        (< $Perm.No rd@12@01)
        false)
      (=
        ($FVF.lookup_edges (as sm@169@01  $FVF<edges>) r)
        ($FVF.lookup_edges ($SortWrappers.$SnapTo$FVF<edges> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@106@01)))))) r)))
    :pattern (($FVF.lookup_edges (as sm@169@01  $FVF<edges>) r))
    :pattern (($FVF.lookup_edges ($SortWrappers.$SnapTo$FVF<edges> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@106@01)))))) r))
    :qid |qp.fvfValDef36|))
  (forall ((r $Ref)) (!
    (=>
      (and (img@128@01 r) (Set_in (inv@127@01 r) res_copy_nodes@105@01))
      (=
        ($FVF.lookup_edges (as sm@169@01  $FVF<edges>) r)
        ($FVF.lookup_edges ($SortWrappers.$SnapTo$FVF<edges> ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@106@01))))))))))))) r)))
    :pattern (($FVF.lookup_edges (as sm@169@01  $FVF<edges>) r))
    :pattern (($FVF.lookup_edges ($SortWrappers.$SnapTo$FVF<edges> ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@106@01))))))))))))) r))
    :qid |qp.fvfValDef37|))))
(push) ; 10
(assert (not (<
  $Perm.No
  (+
    (ite
      (and (img@115@01 x@210@01) (Set_in (inv@114@01 x@210@01) setOfRef@10@01))
      rd@12@01
      $Perm.No)
    (ite
      (and
        (img@128@01 x@210@01)
        (Set_in (inv@127@01 x@210@01) res_copy_nodes@105@01))
      $Perm.Write
      $Perm.No)))))
(check-sat)
; unsat
(pop) ; 10
; 0.00s
; (get-info :all-statistics)
(pop) ; 9
(push) ; 9
; [else-branch: 32 | !(x@210@01 in setOfRef@10@01)]
(assert (not (Set_in x@210@01 setOfRef@10@01)))
(pop) ; 9
(pop) ; 8
; Joined path conditions
(assert (forall ((r $Ref)) (!
  (=>
    (ite
      (and (img@115@01 r) (Set_in (inv@114@01 r) setOfRef@10@01))
      (< $Perm.No (- rd@12@01 (pTaken@181@01 r)))
      false)
    (=
      ($FVF.lookup_edges (as sm@211@01  $FVF<edges>) r)
      ($FVF.lookup_edges ($SortWrappers.$SnapTo$FVF<edges> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@106@01)))))) r)))
  :pattern (($FVF.lookup_edges (as sm@211@01  $FVF<edges>) r))
  :pattern (($FVF.lookup_edges ($SortWrappers.$SnapTo$FVF<edges> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@106@01)))))) r))
  :qid |qp.fvfValDef45|)))
(assert (forall ((r $Ref)) (!
  (=>
    (ite
      (and (img@209@01 r) (Set_in (inv@208@01 r) setOfRef@10@01))
      (< $Perm.No (/ rd@12@01 (to_real 2)))
      false)
    (=
      ($FVF.lookup_edges (as sm@211@01  $FVF<edges>) r)
      ($FVF.lookup_edges ($SortWrappers.$SnapTo$FVF<edges> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@198@01))))))) r)))
  :pattern (($FVF.lookup_edges (as sm@211@01  $FVF<edges>) r))
  :pattern (($FVF.lookup_edges ($SortWrappers.$SnapTo$FVF<edges> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@198@01))))))) r))
  :qid |qp.fvfValDef46|)))
(assert (forall ((r $Ref)) (!
  (=
    ($FVF.perm_edges (as pm@212@01  $FPM) r)
    (+
      (ite
        (and (img@115@01 r) (Set_in (inv@114@01 r) setOfRef@10@01))
        (- rd@12@01 (pTaken@181@01 r))
        $Perm.No)
      (ite
        (and (img@209@01 r) (Set_in (inv@208@01 r) setOfRef@10@01))
        (/ rd@12@01 (to_real 2))
        $Perm.No)))
  :pattern (($FVF.perm_edges (as pm@212@01  $FPM) r))
  :qid |qp.resPrmSumDef47|)))
(assert (forall ((r $Ref)) (!
  (=>
    (ite
      (and (img@115@01 r) (Set_in (inv@114@01 r) setOfRef@10@01))
      (< $Perm.No rd@12@01)
      false)
    (=
      ($FVF.lookup_edges (as sm@169@01  $FVF<edges>) r)
      ($FVF.lookup_edges ($SortWrappers.$SnapTo$FVF<edges> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@106@01)))))) r)))
  :pattern (($FVF.lookup_edges (as sm@169@01  $FVF<edges>) r))
  :pattern (($FVF.lookup_edges ($SortWrappers.$SnapTo$FVF<edges> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@106@01)))))) r))
  :qid |qp.fvfValDef36|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@128@01 r) (Set_in (inv@127@01 r) res_copy_nodes@105@01))
    (=
      ($FVF.lookup_edges (as sm@169@01  $FVF<edges>) r)
      ($FVF.lookup_edges ($SortWrappers.$SnapTo$FVF<edges> ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@106@01))))))))))))) r)))
  :pattern (($FVF.lookup_edges (as sm@169@01  $FVF<edges>) r))
  :pattern (($FVF.lookup_edges ($SortWrappers.$SnapTo$FVF<edges> ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@106@01))))))))))))) r))
  :qid |qp.fvfValDef37|)))
; Joined path conditions
(assert (or (not (Set_in x@210@01 setOfRef@10@01)) (Set_in x@210@01 setOfRef@10@01)))
(pop) ; 7
; Nested auxiliary terms: globals (aux)
(assert (forall ((r $Ref)) (!
  (=>
    (ite
      (and (img@115@01 r) (Set_in (inv@114@01 r) setOfRef@10@01))
      (< $Perm.No (- rd@12@01 (pTaken@181@01 r)))
      false)
    (=
      ($FVF.lookup_edges (as sm@211@01  $FVF<edges>) r)
      ($FVF.lookup_edges ($SortWrappers.$SnapTo$FVF<edges> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@106@01)))))) r)))
  :pattern (($FVF.lookup_edges (as sm@211@01  $FVF<edges>) r))
  :pattern (($FVF.lookup_edges ($SortWrappers.$SnapTo$FVF<edges> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@106@01)))))) r))
  :qid |qp.fvfValDef45|)))
(assert (forall ((r $Ref)) (!
  (=>
    (ite
      (and (img@209@01 r) (Set_in (inv@208@01 r) setOfRef@10@01))
      (< $Perm.No (/ rd@12@01 (to_real 2)))
      false)
    (=
      ($FVF.lookup_edges (as sm@211@01  $FVF<edges>) r)
      ($FVF.lookup_edges ($SortWrappers.$SnapTo$FVF<edges> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@198@01))))))) r)))
  :pattern (($FVF.lookup_edges (as sm@211@01  $FVF<edges>) r))
  :pattern (($FVF.lookup_edges ($SortWrappers.$SnapTo$FVF<edges> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@198@01))))))) r))
  :qid |qp.fvfValDef46|)))
(assert (forall ((r $Ref)) (!
  (=
    ($FVF.perm_edges (as pm@212@01  $FPM) r)
    (+
      (ite
        (and (img@115@01 r) (Set_in (inv@114@01 r) setOfRef@10@01))
        (- rd@12@01 (pTaken@181@01 r))
        $Perm.No)
      (ite
        (and (img@209@01 r) (Set_in (inv@208@01 r) setOfRef@10@01))
        (/ rd@12@01 (to_real 2))
        $Perm.No)))
  :pattern (($FVF.perm_edges (as pm@212@01  $FPM) r))
  :qid |qp.resPrmSumDef47|)))
(assert (forall ((r $Ref)) (!
  (=>
    (ite
      (and (img@115@01 r) (Set_in (inv@114@01 r) setOfRef@10@01))
      (< $Perm.No rd@12@01)
      false)
    (=
      ($FVF.lookup_edges (as sm@169@01  $FVF<edges>) r)
      ($FVF.lookup_edges ($SortWrappers.$SnapTo$FVF<edges> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@106@01)))))) r)))
  :pattern (($FVF.lookup_edges (as sm@169@01  $FVF<edges>) r))
  :pattern (($FVF.lookup_edges ($SortWrappers.$SnapTo$FVF<edges> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@106@01)))))) r))
  :qid |qp.fvfValDef36|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@128@01 r) (Set_in (inv@127@01 r) res_copy_nodes@105@01))
    (=
      ($FVF.lookup_edges (as sm@169@01  $FVF<edges>) r)
      ($FVF.lookup_edges ($SortWrappers.$SnapTo$FVF<edges> ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@106@01))))))))))))) r)))
  :pattern (($FVF.lookup_edges (as sm@169@01  $FVF<edges>) r))
  :pattern (($FVF.lookup_edges ($SortWrappers.$SnapTo$FVF<edges> ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@106@01))))))))))))) r))
  :qid |qp.fvfValDef37|)))
; Nested auxiliary terms: non-globals (aux)
(assert (forall ((x@210@01 $Ref)) (!
  (or (not (Set_in x@210@01 setOfRef@10@01)) (Set_in x@210@01 setOfRef@10@01))
  :pattern ((Set_in x@210@01 setOfRef@10@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/examples/graph-copy/graph-copy.vpr@109@11@109@69-aux|)))
(assert (forall ((x@210@01 $Ref)) (!
  (=>
    (Set_in x@210@01 setOfRef@10@01)
    (=
      ($FVF.lookup_edges (as sm@211@01  $FVF<edges>) x@210@01)
      ($FVF.lookup_edges (as sm@169@01  $FVF<edges>) x@210@01)))
  :pattern ((Set_in x@210@01 setOfRef@10@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/examples/graph-copy/graph-copy.vpr@109@11@109@69|)))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@198@01)))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@198@01))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@198@01)))))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@198@01))))))))
  $Snap.unit))
; [eval] (forall x: Ref, i: Int :: { (x in setOfRef), (i in edges_domain(x.edges)) } { (x in setOfRef), edge_lookup(x.edges, i) } { (x in setOfRef), (edge_lookup(x.edges, i) in setOfRef) } { edges_domain(x.edges), edge_lookup(x.edges, i) } { edges_domain(x.edges), (edge_lookup(x.edges, i) in setOfRef) } { (i in edges_domain(x.edges)) } { (edge_lookup(x.edges, i) in setOfRef) } (x in setOfRef) && (i in edges_domain(x.edges)) ==> (edge_lookup(x.edges, i) in setOfRef))
(declare-const x@213@01 $Ref)
(declare-const i@214@01 Int)
(push) ; 7
; [eval] (x in setOfRef) && (i in edges_domain(x.edges)) ==> (edge_lookup(x.edges, i) in setOfRef)
; [eval] (x in setOfRef) && (i in edges_domain(x.edges))
; [eval] (x in setOfRef)
(push) ; 8
; [then-branch: 33 | !(x@213@01 in setOfRef@10@01) | live]
; [else-branch: 33 | x@213@01 in setOfRef@10@01 | live]
(push) ; 9
; [then-branch: 33 | !(x@213@01 in setOfRef@10@01)]
(assert (not (Set_in x@213@01 setOfRef@10@01)))
(pop) ; 9
(push) ; 9
; [else-branch: 33 | x@213@01 in setOfRef@10@01]
(assert (Set_in x@213@01 setOfRef@10@01))
; [eval] (i in edges_domain(x.edges))
; [eval] edges_domain(x.edges)
(assert (and
  (forall ((r $Ref)) (!
    (=>
      (ite
        (and (img@115@01 r) (Set_in (inv@114@01 r) setOfRef@10@01))
        (< $Perm.No (- rd@12@01 (pTaken@181@01 r)))
        false)
      (=
        ($FVF.lookup_edges (as sm@211@01  $FVF<edges>) r)
        ($FVF.lookup_edges ($SortWrappers.$SnapTo$FVF<edges> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@106@01)))))) r)))
    :pattern (($FVF.lookup_edges (as sm@211@01  $FVF<edges>) r))
    :pattern (($FVF.lookup_edges ($SortWrappers.$SnapTo$FVF<edges> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@106@01)))))) r))
    :qid |qp.fvfValDef45|))
  (forall ((r $Ref)) (!
    (=>
      (ite
        (and (img@209@01 r) (Set_in (inv@208@01 r) setOfRef@10@01))
        (< $Perm.No (/ rd@12@01 (to_real 2)))
        false)
      (=
        ($FVF.lookup_edges (as sm@211@01  $FVF<edges>) r)
        ($FVF.lookup_edges ($SortWrappers.$SnapTo$FVF<edges> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@198@01))))))) r)))
    :pattern (($FVF.lookup_edges (as sm@211@01  $FVF<edges>) r))
    :pattern (($FVF.lookup_edges ($SortWrappers.$SnapTo$FVF<edges> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@198@01))))))) r))
    :qid |qp.fvfValDef46|))))
(push) ; 10
(assert (not (<
  $Perm.No
  (+
    (ite
      (and (img@115@01 x@213@01) (Set_in (inv@114@01 x@213@01) setOfRef@10@01))
      (- rd@12@01 (pTaken@181@01 x@213@01))
      $Perm.No)
    (ite
      (and (img@209@01 x@213@01) (Set_in (inv@208@01 x@213@01) setOfRef@10@01))
      (/ rd@12@01 (to_real 2))
      $Perm.No)))))
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
    (ite
      (and (img@115@01 r) (Set_in (inv@114@01 r) setOfRef@10@01))
      (< $Perm.No (- rd@12@01 (pTaken@181@01 r)))
      false)
    (=
      ($FVF.lookup_edges (as sm@211@01  $FVF<edges>) r)
      ($FVF.lookup_edges ($SortWrappers.$SnapTo$FVF<edges> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@106@01)))))) r)))
  :pattern (($FVF.lookup_edges (as sm@211@01  $FVF<edges>) r))
  :pattern (($FVF.lookup_edges ($SortWrappers.$SnapTo$FVF<edges> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@106@01)))))) r))
  :qid |qp.fvfValDef45|)))
(assert (forall ((r $Ref)) (!
  (=>
    (ite
      (and (img@209@01 r) (Set_in (inv@208@01 r) setOfRef@10@01))
      (< $Perm.No (/ rd@12@01 (to_real 2)))
      false)
    (=
      ($FVF.lookup_edges (as sm@211@01  $FVF<edges>) r)
      ($FVF.lookup_edges ($SortWrappers.$SnapTo$FVF<edges> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@198@01))))))) r)))
  :pattern (($FVF.lookup_edges (as sm@211@01  $FVF<edges>) r))
  :pattern (($FVF.lookup_edges ($SortWrappers.$SnapTo$FVF<edges> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@198@01))))))) r))
  :qid |qp.fvfValDef46|)))
(assert (or (Set_in x@213@01 setOfRef@10@01) (not (Set_in x@213@01 setOfRef@10@01))))
(push) ; 8
; [then-branch: 34 | x@213@01 in setOfRef@10@01 && i@214@01 in edges_domain[Set[Int]](Lookup(edges, sm@211@01, x@213@01)) | live]
; [else-branch: 34 | !(x@213@01 in setOfRef@10@01 && i@214@01 in edges_domain[Set[Int]](Lookup(edges, sm@211@01, x@213@01))) | live]
(push) ; 9
; [then-branch: 34 | x@213@01 in setOfRef@10@01 && i@214@01 in edges_domain[Set[Int]](Lookup(edges, sm@211@01, x@213@01))]
(assert (and
  (Set_in x@213@01 setOfRef@10@01)
  (Set_in i@214@01 (edges_domain<Set<Int>> ($FVF.lookup_edges (as sm@211@01  $FVF<edges>) x@213@01)))))
; [eval] (edge_lookup(x.edges, i) in setOfRef)
; [eval] edge_lookup(x.edges, i)
(assert (and
  (forall ((r $Ref)) (!
    (=>
      (ite
        (and (img@115@01 r) (Set_in (inv@114@01 r) setOfRef@10@01))
        (< $Perm.No (- rd@12@01 (pTaken@181@01 r)))
        false)
      (=
        ($FVF.lookup_edges (as sm@211@01  $FVF<edges>) r)
        ($FVF.lookup_edges ($SortWrappers.$SnapTo$FVF<edges> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@106@01)))))) r)))
    :pattern (($FVF.lookup_edges (as sm@211@01  $FVF<edges>) r))
    :pattern (($FVF.lookup_edges ($SortWrappers.$SnapTo$FVF<edges> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@106@01)))))) r))
    :qid |qp.fvfValDef45|))
  (forall ((r $Ref)) (!
    (=>
      (ite
        (and (img@209@01 r) (Set_in (inv@208@01 r) setOfRef@10@01))
        (< $Perm.No (/ rd@12@01 (to_real 2)))
        false)
      (=
        ($FVF.lookup_edges (as sm@211@01  $FVF<edges>) r)
        ($FVF.lookup_edges ($SortWrappers.$SnapTo$FVF<edges> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@198@01))))))) r)))
    :pattern (($FVF.lookup_edges (as sm@211@01  $FVF<edges>) r))
    :pattern (($FVF.lookup_edges ($SortWrappers.$SnapTo$FVF<edges> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@198@01))))))) r))
    :qid |qp.fvfValDef46|))))
(push) ; 10
(assert (not (<
  $Perm.No
  (+
    (ite
      (and (img@115@01 x@213@01) (Set_in (inv@114@01 x@213@01) setOfRef@10@01))
      (- rd@12@01 (pTaken@181@01 x@213@01))
      $Perm.No)
    (ite
      (and (img@209@01 x@213@01) (Set_in (inv@208@01 x@213@01) setOfRef@10@01))
      (/ rd@12@01 (to_real 2))
      $Perm.No)))))
(check-sat)
; unsat
(pop) ; 10
; 0.00s
; (get-info :all-statistics)
(pop) ; 9
(push) ; 9
; [else-branch: 34 | !(x@213@01 in setOfRef@10@01 && i@214@01 in edges_domain[Set[Int]](Lookup(edges, sm@211@01, x@213@01)))]
(assert (not
  (and
    (Set_in x@213@01 setOfRef@10@01)
    (Set_in i@214@01 (edges_domain<Set<Int>> ($FVF.lookup_edges (as sm@211@01  $FVF<edges>) x@213@01))))))
(pop) ; 9
(pop) ; 8
; Joined path conditions
(assert (forall ((r $Ref)) (!
  (=>
    (ite
      (and (img@115@01 r) (Set_in (inv@114@01 r) setOfRef@10@01))
      (< $Perm.No (- rd@12@01 (pTaken@181@01 r)))
      false)
    (=
      ($FVF.lookup_edges (as sm@211@01  $FVF<edges>) r)
      ($FVF.lookup_edges ($SortWrappers.$SnapTo$FVF<edges> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@106@01)))))) r)))
  :pattern (($FVF.lookup_edges (as sm@211@01  $FVF<edges>) r))
  :pattern (($FVF.lookup_edges ($SortWrappers.$SnapTo$FVF<edges> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@106@01)))))) r))
  :qid |qp.fvfValDef45|)))
(assert (forall ((r $Ref)) (!
  (=>
    (ite
      (and (img@209@01 r) (Set_in (inv@208@01 r) setOfRef@10@01))
      (< $Perm.No (/ rd@12@01 (to_real 2)))
      false)
    (=
      ($FVF.lookup_edges (as sm@211@01  $FVF<edges>) r)
      ($FVF.lookup_edges ($SortWrappers.$SnapTo$FVF<edges> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@198@01))))))) r)))
  :pattern (($FVF.lookup_edges (as sm@211@01  $FVF<edges>) r))
  :pattern (($FVF.lookup_edges ($SortWrappers.$SnapTo$FVF<edges> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@198@01))))))) r))
  :qid |qp.fvfValDef46|)))
; Joined path conditions
(assert (or
  (not
    (and
      (Set_in x@213@01 setOfRef@10@01)
      (Set_in i@214@01 (edges_domain<Set<Int>> ($FVF.lookup_edges (as sm@211@01  $FVF<edges>) x@213@01)))))
  (and
    (Set_in x@213@01 setOfRef@10@01)
    (Set_in i@214@01 (edges_domain<Set<Int>> ($FVF.lookup_edges (as sm@211@01  $FVF<edges>) x@213@01))))))
(pop) ; 7
; Nested auxiliary terms: globals (aux)
(assert (forall ((r $Ref)) (!
  (=>
    (ite
      (and (img@115@01 r) (Set_in (inv@114@01 r) setOfRef@10@01))
      (< $Perm.No (- rd@12@01 (pTaken@181@01 r)))
      false)
    (=
      ($FVF.lookup_edges (as sm@211@01  $FVF<edges>) r)
      ($FVF.lookup_edges ($SortWrappers.$SnapTo$FVF<edges> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@106@01)))))) r)))
  :pattern (($FVF.lookup_edges (as sm@211@01  $FVF<edges>) r))
  :pattern (($FVF.lookup_edges ($SortWrappers.$SnapTo$FVF<edges> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@106@01)))))) r))
  :qid |qp.fvfValDef45|)))
(assert (forall ((r $Ref)) (!
  (=>
    (ite
      (and (img@209@01 r) (Set_in (inv@208@01 r) setOfRef@10@01))
      (< $Perm.No (/ rd@12@01 (to_real 2)))
      false)
    (=
      ($FVF.lookup_edges (as sm@211@01  $FVF<edges>) r)
      ($FVF.lookup_edges ($SortWrappers.$SnapTo$FVF<edges> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@198@01))))))) r)))
  :pattern (($FVF.lookup_edges (as sm@211@01  $FVF<edges>) r))
  :pattern (($FVF.lookup_edges ($SortWrappers.$SnapTo$FVF<edges> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@198@01))))))) r))
  :qid |qp.fvfValDef46|)))
; Nested auxiliary terms: non-globals (aux)
(assert (forall ((x@213@01 $Ref) (i@214@01 Int)) (!
  (and
    (or (Set_in x@213@01 setOfRef@10@01) (not (Set_in x@213@01 setOfRef@10@01)))
    (or
      (not
        (and
          (Set_in x@213@01 setOfRef@10@01)
          (Set_in i@214@01 (edges_domain<Set<Int>> ($FVF.lookup_edges (as sm@211@01  $FVF<edges>) x@213@01)))))
      (and
        (Set_in x@213@01 setOfRef@10@01)
        (Set_in i@214@01 (edges_domain<Set<Int>> ($FVF.lookup_edges (as sm@211@01  $FVF<edges>) x@213@01))))))
  :pattern ((Set_in x@213@01 setOfRef@10@01) (Set_in i@214@01 (edges_domain<Set<Int>> ($FVF.lookup_edges (as sm@211@01  $FVF<edges>) x@213@01))))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/examples/graph-copy/graph-copy.vpr@110@11@110@119-aux|)))
(assert (forall ((x@213@01 $Ref) (i@214@01 Int)) (!
  (and
    (or (Set_in x@213@01 setOfRef@10@01) (not (Set_in x@213@01 setOfRef@10@01)))
    (or
      (not
        (and
          (Set_in x@213@01 setOfRef@10@01)
          (Set_in i@214@01 (edges_domain<Set<Int>> ($FVF.lookup_edges (as sm@211@01  $FVF<edges>) x@213@01)))))
      (and
        (Set_in x@213@01 setOfRef@10@01)
        (Set_in i@214@01 (edges_domain<Set<Int>> ($FVF.lookup_edges (as sm@211@01  $FVF<edges>) x@213@01))))))
  :pattern ((Set_in x@213@01 setOfRef@10@01) (edge_lookup<Ref> ($FVF.lookup_edges (as sm@211@01  $FVF<edges>) x@213@01) i@214@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/examples/graph-copy/graph-copy.vpr@110@11@110@119-aux|)))
(assert (forall ((x@213@01 $Ref) (i@214@01 Int)) (!
  (and
    (or (Set_in x@213@01 setOfRef@10@01) (not (Set_in x@213@01 setOfRef@10@01)))
    (or
      (not
        (and
          (Set_in x@213@01 setOfRef@10@01)
          (Set_in i@214@01 (edges_domain<Set<Int>> ($FVF.lookup_edges (as sm@211@01  $FVF<edges>) x@213@01)))))
      (and
        (Set_in x@213@01 setOfRef@10@01)
        (Set_in i@214@01 (edges_domain<Set<Int>> ($FVF.lookup_edges (as sm@211@01  $FVF<edges>) x@213@01))))))
  :pattern ((Set_in x@213@01 setOfRef@10@01) (Set_in (edge_lookup<Ref> ($FVF.lookup_edges (as sm@211@01  $FVF<edges>) x@213@01) i@214@01) setOfRef@10@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/examples/graph-copy/graph-copy.vpr@110@11@110@119-aux|)))
(assert (forall ((x@213@01 $Ref) (i@214@01 Int)) (!
  (and
    (or (Set_in x@213@01 setOfRef@10@01) (not (Set_in x@213@01 setOfRef@10@01)))
    (or
      (not
        (and
          (Set_in x@213@01 setOfRef@10@01)
          (Set_in i@214@01 (edges_domain<Set<Int>> ($FVF.lookup_edges (as sm@211@01  $FVF<edges>) x@213@01)))))
      (and
        (Set_in x@213@01 setOfRef@10@01)
        (Set_in i@214@01 (edges_domain<Set<Int>> ($FVF.lookup_edges (as sm@211@01  $FVF<edges>) x@213@01))))))
  :pattern ((edges_domain<Set<Int>> ($FVF.lookup_edges (as sm@211@01  $FVF<edges>) x@213@01)) (edge_lookup<Ref> ($FVF.lookup_edges (as sm@211@01  $FVF<edges>) x@213@01) i@214@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/examples/graph-copy/graph-copy.vpr@110@11@110@119-aux|)))
(assert (forall ((x@213@01 $Ref) (i@214@01 Int)) (!
  (and
    (or (Set_in x@213@01 setOfRef@10@01) (not (Set_in x@213@01 setOfRef@10@01)))
    (or
      (not
        (and
          (Set_in x@213@01 setOfRef@10@01)
          (Set_in i@214@01 (edges_domain<Set<Int>> ($FVF.lookup_edges (as sm@211@01  $FVF<edges>) x@213@01)))))
      (and
        (Set_in x@213@01 setOfRef@10@01)
        (Set_in i@214@01 (edges_domain<Set<Int>> ($FVF.lookup_edges (as sm@211@01  $FVF<edges>) x@213@01))))))
  :pattern ((edges_domain<Set<Int>> ($FVF.lookup_edges (as sm@211@01  $FVF<edges>) x@213@01)) (Set_in (edge_lookup<Ref> ($FVF.lookup_edges (as sm@211@01  $FVF<edges>) x@213@01) i@214@01) setOfRef@10@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/examples/graph-copy/graph-copy.vpr@110@11@110@119-aux|)))
(assert (forall ((x@213@01 $Ref) (i@214@01 Int)) (!
  (and
    (or (Set_in x@213@01 setOfRef@10@01) (not (Set_in x@213@01 setOfRef@10@01)))
    (or
      (not
        (and
          (Set_in x@213@01 setOfRef@10@01)
          (Set_in i@214@01 (edges_domain<Set<Int>> ($FVF.lookup_edges (as sm@211@01  $FVF<edges>) x@213@01)))))
      (and
        (Set_in x@213@01 setOfRef@10@01)
        (Set_in i@214@01 (edges_domain<Set<Int>> ($FVF.lookup_edges (as sm@211@01  $FVF<edges>) x@213@01))))))
  :pattern ((Set_in i@214@01 (edges_domain<Set<Int>> ($FVF.lookup_edges (as sm@211@01  $FVF<edges>) x@213@01))))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/examples/graph-copy/graph-copy.vpr@110@11@110@119-aux|)))
(assert (forall ((x@213@01 $Ref) (i@214@01 Int)) (!
  (and
    (or (Set_in x@213@01 setOfRef@10@01) (not (Set_in x@213@01 setOfRef@10@01)))
    (or
      (not
        (and
          (Set_in x@213@01 setOfRef@10@01)
          (Set_in i@214@01 (edges_domain<Set<Int>> ($FVF.lookup_edges (as sm@211@01  $FVF<edges>) x@213@01)))))
      (and
        (Set_in x@213@01 setOfRef@10@01)
        (Set_in i@214@01 (edges_domain<Set<Int>> ($FVF.lookup_edges (as sm@211@01  $FVF<edges>) x@213@01))))))
  :pattern ((Set_in (edge_lookup<Ref> ($FVF.lookup_edges (as sm@211@01  $FVF<edges>) x@213@01) i@214@01) setOfRef@10@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/examples/graph-copy/graph-copy.vpr@110@11@110@119-aux|)))
(assert (forall ((x@213@01 $Ref) (i@214@01 Int)) (!
  (=>
    (and
      (Set_in x@213@01 setOfRef@10@01)
      (Set_in i@214@01 (edges_domain<Set<Int>> ($FVF.lookup_edges (as sm@211@01  $FVF<edges>) x@213@01))))
    (Set_in (edge_lookup<Ref> ($FVF.lookup_edges (as sm@211@01  $FVF<edges>) x@213@01) i@214@01) setOfRef@10@01))
  :pattern ((Set_in x@213@01 setOfRef@10@01) (Set_in i@214@01 (edges_domain<Set<Int>> ($FVF.lookup_edges (as sm@211@01  $FVF<edges>) x@213@01))))
  :pattern ((Set_in x@213@01 setOfRef@10@01) (edge_lookup<Ref> ($FVF.lookup_edges (as sm@211@01  $FVF<edges>) x@213@01) i@214@01))
  :pattern ((Set_in x@213@01 setOfRef@10@01) (Set_in (edge_lookup<Ref> ($FVF.lookup_edges (as sm@211@01  $FVF<edges>) x@213@01) i@214@01) setOfRef@10@01))
  :pattern ((edges_domain<Set<Int>> ($FVF.lookup_edges (as sm@211@01  $FVF<edges>) x@213@01)) (edge_lookup<Ref> ($FVF.lookup_edges (as sm@211@01  $FVF<edges>) x@213@01) i@214@01))
  :pattern ((edges_domain<Set<Int>> ($FVF.lookup_edges (as sm@211@01  $FVF<edges>) x@213@01)) (Set_in (edge_lookup<Ref> ($FVF.lookup_edges (as sm@211@01  $FVF<edges>) x@213@01) i@214@01) setOfRef@10@01))
  :pattern ((Set_in i@214@01 (edges_domain<Set<Int>> ($FVF.lookup_edges (as sm@211@01  $FVF<edges>) x@213@01))))
  :pattern ((Set_in (edge_lookup<Ref> ($FVF.lookup_edges (as sm@211@01  $FVF<edges>) x@213@01) i@214@01) setOfRef@10@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/examples/graph-copy/graph-copy.vpr@110@11@110@119|)))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@198@01))))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@198@01)))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@198@01))))))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@198@01)))))))))
  $Snap.unit))
; [eval] res_copy_nodes == (res_copy_nodes union old(node_map_image))
; [eval] (res_copy_nodes union old(node_map_image))
; [eval] old(node_map_image)
(assert (Set_equal res_copy_nodes@197@01 (Set_union res_copy_nodes@197@01 res_copy_nodes@105@01)))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@198@01)))))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@198@01))))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@198@01)))))))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@198@01))))))))))
  $Snap.unit))
; [eval] (forall x: Ref :: { (x in map_domain(res_node_map)) } { (lookup(res_node_map, x) in res_copy_nodes) } (x in map_domain(res_node_map)) ==> (lookup(res_node_map, x) in res_copy_nodes))
(declare-const x@215@01 $Ref)
(push) ; 7
; [eval] (x in map_domain(res_node_map)) ==> (lookup(res_node_map, x) in res_copy_nodes)
; [eval] (x in map_domain(res_node_map))
; [eval] map_domain(res_node_map)
(push) ; 8
; [then-branch: 35 | x@215@01 in map_domain[Seq[Ref]](res_node_map@196@01) | live]
; [else-branch: 35 | !(x@215@01 in map_domain[Seq[Ref]](res_node_map@196@01)) | live]
(push) ; 9
; [then-branch: 35 | x@215@01 in map_domain[Seq[Ref]](res_node_map@196@01)]
(assert (Seq_contains (map_domain<Seq<Ref>> res_node_map@196@01) x@215@01))
; [eval] (lookup(res_node_map, x) in res_copy_nodes)
; [eval] lookup(res_node_map, x)
(pop) ; 9
(push) ; 9
; [else-branch: 35 | !(x@215@01 in map_domain[Seq[Ref]](res_node_map@196@01))]
(assert (not (Seq_contains (map_domain<Seq<Ref>> res_node_map@196@01) x@215@01)))
(pop) ; 9
(pop) ; 8
; Joined path conditions
; Joined path conditions
(assert (or
  (not (Seq_contains (map_domain<Seq<Ref>> res_node_map@196@01) x@215@01))
  (Seq_contains (map_domain<Seq<Ref>> res_node_map@196@01) x@215@01)))
(pop) ; 7
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall ((x@215@01 $Ref)) (!
  (or
    (not (Seq_contains (map_domain<Seq<Ref>> res_node_map@196@01) x@215@01))
    (Seq_contains (map_domain<Seq<Ref>> res_node_map@196@01) x@215@01))
  :pattern ((Seq_contains (map_domain<Seq<Ref>> res_node_map@196@01) x@215@01))
  :pattern ((Seq_contains_trigger
    (map_domain<Seq<Ref>> res_node_map@196@01)
    x@215@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/examples/graph-copy/graph-copy.vpr@112@11@112@102-aux|)))
(assert (forall ((x@215@01 $Ref)) (!
  (or
    (not (Seq_contains (map_domain<Seq<Ref>> res_node_map@196@01) x@215@01))
    (Seq_contains (map_domain<Seq<Ref>> res_node_map@196@01) x@215@01))
  :pattern ((Seq_contains_trigger
    (map_domain<Seq<Ref>> res_node_map@196@01)
    x@215@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/examples/graph-copy/graph-copy.vpr@112@11@112@102-aux|)))
(assert (forall ((x@215@01 $Ref)) (!
  (or
    (not (Seq_contains (map_domain<Seq<Ref>> res_node_map@196@01) x@215@01))
    (Seq_contains (map_domain<Seq<Ref>> res_node_map@196@01) x@215@01))
  :pattern ((Set_in (lookup<Ref> res_node_map@196@01 x@215@01) res_copy_nodes@197@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/examples/graph-copy/graph-copy.vpr@112@11@112@102-aux|)))
(assert (forall ((x@215@01 $Ref)) (!
  (=>
    (Seq_contains (map_domain<Seq<Ref>> res_node_map@196@01) x@215@01)
    (Set_in (lookup<Ref> res_node_map@196@01 x@215@01) res_copy_nodes@197@01))
  :pattern ((Seq_contains (map_domain<Seq<Ref>> res_node_map@196@01) x@215@01))
  :pattern ((Seq_contains_trigger
    (map_domain<Seq<Ref>> res_node_map@196@01)
    x@215@01))
  :pattern ((Set_in (lookup<Ref> res_node_map@196@01 x@215@01) res_copy_nodes@197@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/examples/graph-copy/graph-copy.vpr@112@11@112@102|)))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@198@01))))))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@198@01)))))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@198@01))))))))))))))
(declare-const x@216@01 $Ref)
(push) ; 7
; [eval] (x in res_copy_nodes)
(assert (Set_in x@216@01 res_copy_nodes@197@01))
(pop) ; 7
(declare-fun inv@217@01 ($Ref) $Ref)
(declare-fun img@218@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
; Check receiver injectivity
(push) ; 7
(assert (not (forall ((x1@216@01 $Ref) (x2@216@01 $Ref)) (!
  (=>
    (and
      (Set_in x1@216@01 res_copy_nodes@197@01)
      (Set_in x2@216@01 res_copy_nodes@197@01)
      (= x1@216@01 x2@216@01))
    (= x1@216@01 x2@216@01))
  
  :qid |val-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((x@216@01 $Ref)) (!
  (=>
    (Set_in x@216@01 res_copy_nodes@197@01)
    (and (= (inv@217@01 x@216@01) x@216@01) (img@218@01 x@216@01)))
  :pattern ((Set_in x@216@01 res_copy_nodes@197@01))
  :pattern ((inv@217@01 x@216@01))
  :pattern ((img@218@01 x@216@01))
  :qid |quant-u-13921|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@218@01 r) (Set_in (inv@217@01 r) res_copy_nodes@197@01))
    (= (inv@217@01 r) r))
  :pattern ((inv@217@01 r))
  :qid |val-fctOfInv|)))
; Permissions are non-negative
; Field permissions are at most one
; Permission implies non-null receiver
(assert (forall ((x@216@01 $Ref)) (!
  (=> (Set_in x@216@01 res_copy_nodes@197@01) (not (= x@216@01 $Ref.null)))
  :pattern ((Set_in x@216@01 res_copy_nodes@197@01))
  :pattern ((inv@217@01 x@216@01))
  :pattern ((img@218@01 x@216@01))
  :qid |val-permImpliesNonNull|)))
(push) ; 7
(set-option :timeout 10)
(assert (not (forall ((r $Ref)) (!
  (and
    (= x@216@01 x@199@01)
    (=
      (and (img@218@01 r) (Set_in (inv@217@01 r) res_copy_nodes@197@01))
      (and (img@201@01 r) (Set_in (inv@200@01 r) setOfRef@10@01))))
  
  :qid |quant-u-13922|))))
(check-sat)
; unknown
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 7
(set-option :timeout 10)
(assert (not (forall ((r $Ref)) (!
  (and
    (= x@216@01 x@107@01)
    (=
      (and (img@218@01 r) (Set_in (inv@217@01 r) res_copy_nodes@197@01))
      (and (img@109@01 r) (Set_in (inv@108@01 r) setOfRef@10@01))))
  
  :qid |quant-u-13923|))))
(check-sat)
; unknown
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(declare-const x@219@01 $Ref)
(set-option :timeout 0)
(push) ; 7
; [eval] (x in res_copy_nodes)
(assert (Set_in x@219@01 res_copy_nodes@197@01))
(pop) ; 7
(declare-fun inv@220@01 ($Ref) $Ref)
(declare-fun img@221@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
; Check receiver injectivity
(push) ; 7
(assert (not (forall ((x1@219@01 $Ref) (x2@219@01 $Ref)) (!
  (=>
    (and
      (Set_in x1@219@01 res_copy_nodes@197@01)
      (Set_in x2@219@01 res_copy_nodes@197@01)
      (= x1@219@01 x2@219@01))
    (= x1@219@01 x2@219@01))
  
  :qid |edges-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((x@219@01 $Ref)) (!
  (=>
    (Set_in x@219@01 res_copy_nodes@197@01)
    (and (= (inv@220@01 x@219@01) x@219@01) (img@221@01 x@219@01)))
  :pattern ((Set_in x@219@01 res_copy_nodes@197@01))
  :pattern ((inv@220@01 x@219@01))
  :pattern ((img@221@01 x@219@01))
  :qid |quant-u-13925|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@221@01 r) (Set_in (inv@220@01 r) res_copy_nodes@197@01))
    (= (inv@220@01 r) r))
  :pattern ((inv@220@01 r))
  :qid |edges-fctOfInv|)))
; Permissions are non-negative
; Field permissions are at most one
; Permission implies non-null receiver
(assert (forall ((x@219@01 $Ref)) (!
  (=> (Set_in x@219@01 res_copy_nodes@197@01) (not (= x@219@01 $Ref.null)))
  :pattern ((Set_in x@219@01 res_copy_nodes@197@01))
  :pattern ((inv@220@01 x@219@01))
  :pattern ((img@221@01 x@219@01))
  :qid |edges-permImpliesNonNull|)))
(push) ; 7
(set-option :timeout 10)
(assert (not (forall ((r $Ref)) (!
  (and
    (= x@219@01 x@207@01)
    (=
      (and (img@221@01 r) (Set_in (inv@220@01 r) res_copy_nodes@197@01))
      (and (img@209@01 r) (Set_in (inv@208@01 r) setOfRef@10@01))))
  
  :qid |quant-u-13926|))))
(check-sat)
; unknown
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 7
(set-option :timeout 10)
(assert (not (forall ((r $Ref)) (!
  (and
    (= x@219@01 x@113@01)
    (=
      (and (img@221@01 r) (Set_in (inv@220@01 r) res_copy_nodes@197@01))
      (and (img@115@01 r) (Set_in (inv@114@01 r) setOfRef@10@01))))
  
  :qid |quant-u-13927|))))
(check-sat)
; unknown
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
; [exec]
; nodeCopy.edges := insert_edge(nodeCopy.edges, i, newNode)
; [eval] insert_edge(nodeCopy.edges, i, newNode)
(declare-const sm@222@01 $FVF<edges>)
; Definitional axioms for snapshot map values
(assert (forall ((r $Ref)) (!
  (=>
    (ite
      (and (img@115@01 r) (Set_in (inv@114@01 r) setOfRef@10@01))
      (< $Perm.No (- rd@12@01 (pTaken@181@01 r)))
      false)
    (=
      ($FVF.lookup_edges (as sm@222@01  $FVF<edges>) r)
      ($FVF.lookup_edges ($SortWrappers.$SnapTo$FVF<edges> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@106@01)))))) r)))
  :pattern (($FVF.lookup_edges (as sm@222@01  $FVF<edges>) r))
  :pattern (($FVF.lookup_edges ($SortWrappers.$SnapTo$FVF<edges> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@106@01)))))) r))
  :qid |qp.fvfValDef48|)))
(assert (forall ((r $Ref)) (!
  (=>
    (ite
      (and (img@209@01 r) (Set_in (inv@208@01 r) setOfRef@10@01))
      (< $Perm.No (/ rd@12@01 (to_real 2)))
      false)
    (=
      ($FVF.lookup_edges (as sm@222@01  $FVF<edges>) r)
      ($FVF.lookup_edges ($SortWrappers.$SnapTo$FVF<edges> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@198@01))))))) r)))
  :pattern (($FVF.lookup_edges (as sm@222@01  $FVF<edges>) r))
  :pattern (($FVF.lookup_edges ($SortWrappers.$SnapTo$FVF<edges> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@198@01))))))) r))
  :qid |qp.fvfValDef49|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@221@01 r) (Set_in (inv@220@01 r) res_copy_nodes@197@01))
    (=
      ($FVF.lookup_edges (as sm@222@01  $FVF<edges>) r)
      ($FVF.lookup_edges ($SortWrappers.$SnapTo$FVF<edges> ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@198@01)))))))))))) r)))
  :pattern (($FVF.lookup_edges (as sm@222@01  $FVF<edges>) r))
  :pattern (($FVF.lookup_edges ($SortWrappers.$SnapTo$FVF<edges> ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@198@01)))))))))))) r))
  :qid |qp.fvfValDef50|)))
(declare-const pm@223@01 $FPM)
(assert (forall ((r $Ref)) (!
  (=
    ($FVF.perm_edges (as pm@223@01  $FPM) r)
    (+
      (+
        (ite
          (and (img@115@01 r) (Set_in (inv@114@01 r) setOfRef@10@01))
          (- rd@12@01 (pTaken@181@01 r))
          $Perm.No)
        (ite
          (and (img@209@01 r) (Set_in (inv@208@01 r) setOfRef@10@01))
          (/ rd@12@01 (to_real 2))
          $Perm.No))
      (ite
        (and (img@221@01 r) (Set_in (inv@220@01 r) res_copy_nodes@197@01))
        $Perm.Write
        $Perm.No)))
  :pattern (($FVF.perm_edges (as pm@223@01  $FPM) r))
  :qid |qp.resPrmSumDef51|)))
(set-option :timeout 0)
(push) ; 7
(assert (not (< $Perm.No ($FVF.perm_edges (as pm@223@01  $FPM) nodeCopy@84@01))))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
; Precomputing data for removing quantified permissions
(define-fun pTaken@224@01 ((r $Ref)) $Perm
  (ite
    (= r nodeCopy@84@01)
    ($Perm.min
      (ite
        (and (img@115@01 r) (Set_in (inv@114@01 r) setOfRef@10@01))
        (- rd@12@01 (pTaken@181@01 r))
        $Perm.No)
      $Perm.Write)
    $Perm.No))
(define-fun pTaken@225@01 ((r $Ref)) $Perm
  (ite
    (= r nodeCopy@84@01)
    ($Perm.min
      (ite
        (and (img@209@01 r) (Set_in (inv@208@01 r) setOfRef@10@01))
        (/ rd@12@01 (to_real 2))
        $Perm.No)
      (- $Perm.Write (pTaken@224@01 r)))
    $Perm.No))
(define-fun pTaken@226@01 ((r $Ref)) $Perm
  (ite
    (= r nodeCopy@84@01)
    ($Perm.min
      (ite
        (and (img@221@01 r) (Set_in (inv@220@01 r) res_copy_nodes@197@01))
        $Perm.Write
        $Perm.No)
      (- (- $Perm.Write (pTaken@224@01 r)) (pTaken@225@01 r)))
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
        (and (img@115@01 r) (Set_in (inv@114@01 r) setOfRef@10@01))
        (- rd@12@01 (pTaken@181@01 r))
        $Perm.No)
      (pTaken@224@01 r))
    $Perm.No)
  
  :qid |quant-u-13929|))))
(check-sat)
; unknown
(pop) ; 7
; 0.01s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 7
(set-option :timeout 10)
(assert (not (forall ((r $Ref)) (!
  (= (pTaken@224@01 r) $Perm.No)
  
  :qid |quant-u-13930|))))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
; Intermediate check if already taken enough permissions
(set-option :timeout 0)
(push) ; 7
(set-option :timeout 500)
(assert (not (forall ((r $Ref)) (!
  (=> (= r nodeCopy@84@01) (= (- $Perm.Write (pTaken@224@01 r)) $Perm.No))
  
  :qid |quant-u-13931|))))
(check-sat)
; unknown
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
; Chunk depleted?
(set-option :timeout 0)
(push) ; 7
(set-option :timeout 500)
(assert (not (forall ((r $Ref)) (!
  (=
    (-
      (ite
        (and (img@209@01 r) (Set_in (inv@208@01 r) setOfRef@10@01))
        (/ rd@12@01 (to_real 2))
        $Perm.No)
      (pTaken@225@01 r))
    $Perm.No)
  
  :qid |quant-u-13932|))))
(check-sat)
; unknown
(pop) ; 7
; 0.01s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 7
(set-option :timeout 10)
(assert (not (forall ((r $Ref)) (!
  (= (pTaken@225@01 r) $Perm.No)
  
  :qid |quant-u-13933|))))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
; Intermediate check if already taken enough permissions
(set-option :timeout 0)
(push) ; 7
(set-option :timeout 500)
(assert (not (forall ((r $Ref)) (!
  (=>
    (= r nodeCopy@84@01)
    (= (- (- $Perm.Write (pTaken@224@01 r)) (pTaken@225@01 r)) $Perm.No))
  
  :qid |quant-u-13934|))))
(check-sat)
; unknown
(pop) ; 7
; 0.01s
; (get-info :all-statistics)
; Chunk depleted?
(set-option :timeout 0)
(push) ; 7
(set-option :timeout 500)
(assert (not (forall ((r $Ref)) (!
  (=
    (-
      (ite
        (and (img@221@01 r) (Set_in (inv@220@01 r) res_copy_nodes@197@01))
        $Perm.Write
        $Perm.No)
      (pTaken@226@01 r))
    $Perm.No)
  
  :qid |quant-u-13935|))))
(check-sat)
; unknown
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 7
(set-option :timeout 10)
(assert (not (forall ((r $Ref)) (!
  (= (pTaken@226@01 r) $Perm.No)
  
  :qid |quant-u-13936|))))
(check-sat)
; unknown
(pop) ; 7
; 0.01s
; (get-info :all-statistics)
; Intermediate check if already taken enough permissions
(set-option :timeout 0)
(push) ; 7
(set-option :timeout 500)
(assert (not (forall ((r $Ref)) (!
  (=>
    (= r nodeCopy@84@01)
    (=
      (-
        (- (- $Perm.Write (pTaken@224@01 r)) (pTaken@225@01 r))
        (pTaken@226@01 r))
      $Perm.No))
  
  :qid |quant-u-13937|))))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
; Final check if taken enough permissions
; Done removing quantified permissions
(declare-const sm@227@01 $FVF<edges>)
; Definitional axioms for singleton-FVF's value
(assert (=
  ($FVF.lookup_edges (as sm@227@01  $FVF<edges>) nodeCopy@84@01)
  (insert_edge<IEdges> ($FVF.lookup_edges (as sm@222@01  $FVF<edges>) nodeCopy@84@01) i@167@01 nodeCopy@195@01)))
; Loop head block: Re-establish invariant
; [eval] (nodeCopy in res_copy_nodes)
(set-option :timeout 0)
(push) ; 7
(assert (not (Set_in nodeCopy@84@01 res_copy_nodes@197@01)))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(assert (Set_in nodeCopy@84@01 res_copy_nodes@197@01))
; [eval] (this in setOfRef)
(declare-const x@228@01 $Ref)
(push) ; 7
; [eval] (x in setOfRef)
(assert (Set_in x@228@01 setOfRef@10@01))
(pop) ; 7
(declare-fun inv@229@01 ($Ref) $Ref)
(declare-fun img@230@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
(push) ; 7
(assert (not (forall ((x@228@01 $Ref)) (!
  (=>
    (Set_in x@228@01 setOfRef@10@01)
    (or (= rd@12@01 $Perm.No) (< $Perm.No rd@12@01)))
  
  :qid |quant-u-13938|))))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
; Check receiver injectivity
(push) ; 7
(assert (not (forall ((x1@228@01 $Ref) (x2@228@01 $Ref)) (!
  (=>
    (and
      (and (Set_in x1@228@01 setOfRef@10@01) (< $Perm.No rd@12@01))
      (and (Set_in x2@228@01 setOfRef@10@01) (< $Perm.No rd@12@01))
      (= x1@228@01 x2@228@01))
    (= x1@228@01 x2@228@01))
  
  :qid |val-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((x@228@01 $Ref)) (!
  (=>
    (and (Set_in x@228@01 setOfRef@10@01) (< $Perm.No rd@12@01))
    (and (= (inv@229@01 x@228@01) x@228@01) (img@230@01 x@228@01)))
  :pattern ((Set_in x@228@01 setOfRef@10@01))
  :pattern ((inv@229@01 x@228@01))
  :pattern ((img@230@01 x@228@01))
  :qid |val-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@230@01 r)
      (and (Set_in (inv@229@01 r) setOfRef@10@01) (< $Perm.No rd@12@01)))
    (= (inv@229@01 r) r))
  :pattern ((inv@229@01 r))
  :qid |val-fctOfInv|)))
; Precomputing data for removing quantified permissions
(define-fun pTaken@231@01 ((r $Ref)) $Perm
  (ite
    (and
      (Set_in (inv@229@01 r) setOfRef@10@01)
      (img@230@01 r)
      (= r (inv@229@01 r)))
    ($Perm.min
      (ite
        (and (img@218@01 r) (Set_in (inv@217@01 r) res_copy_nodes@197@01))
        $Perm.Write
        $Perm.No)
      rd@12@01)
    $Perm.No))
(define-fun pTaken@232@01 ((r $Ref)) $Perm
  (ite
    (and
      (Set_in (inv@229@01 r) setOfRef@10@01)
      (img@230@01 r)
      (= r (inv@229@01 r)))
    ($Perm.min
      (ite
        (and (img@201@01 r) (Set_in (inv@200@01 r) setOfRef@10@01))
        (/ rd@12@01 (to_real 2))
        $Perm.No)
      (- rd@12@01 (pTaken@231@01 r)))
    $Perm.No))
(define-fun pTaken@233@01 ((r $Ref)) $Perm
  (ite
    (and
      (Set_in (inv@229@01 r) setOfRef@10@01)
      (img@230@01 r)
      (= r (inv@229@01 r)))
    ($Perm.min
      (ite
        (and (img@109@01 r) (Set_in (inv@108@01 r) setOfRef@10@01))
        (- rd@12@01 (pTaken@175@01 r))
        $Perm.No)
      (- (- rd@12@01 (pTaken@231@01 r)) (pTaken@232@01 r)))
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
        (and (img@218@01 r) (Set_in (inv@217@01 r) res_copy_nodes@197@01))
        $Perm.Write
        $Perm.No)
      (pTaken@231@01 r))
    $Perm.No)
  
  :qid |quant-u-13940|))))
(check-sat)
; unknown
(pop) ; 7
; 0.01s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 7
(set-option :timeout 10)
(assert (not (forall ((r $Ref)) (!
  (= (pTaken@231@01 r) $Perm.No)
  
  :qid |quant-u-13941|))))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
; Intermediate check if already taken enough permissions
(set-option :timeout 0)
(push) ; 7
(set-option :timeout 500)
(assert (not (forall ((r $Ref)) (!
  (=>
    (and
      (Set_in (inv@229@01 r) setOfRef@10@01)
      (img@230@01 r)
      (= r (inv@229@01 r)))
    (= (- rd@12@01 (pTaken@231@01 r)) $Perm.No))
  
  :qid |quant-u-13942|))))
(check-sat)
; unknown
(pop) ; 7
; 0.01s
; (get-info :all-statistics)
; Chunk depleted?
(set-option :timeout 0)
(push) ; 7
(set-option :timeout 500)
(assert (not (forall ((r $Ref)) (!
  (=
    (-
      (ite
        (and (img@201@01 r) (Set_in (inv@200@01 r) setOfRef@10@01))
        (/ rd@12@01 (to_real 2))
        $Perm.No)
      (pTaken@232@01 r))
    $Perm.No)
  
  :qid |quant-u-13943|))))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
; Intermediate check if already taken enough permissions
(set-option :timeout 0)
(push) ; 7
(set-option :timeout 500)
(assert (not (forall ((r $Ref)) (!
  (=>
    (and
      (Set_in (inv@229@01 r) setOfRef@10@01)
      (img@230@01 r)
      (= r (inv@229@01 r)))
    (= (- (- rd@12@01 (pTaken@231@01 r)) (pTaken@232@01 r)) $Perm.No))
  
  :qid |quant-u-13944|))))
(check-sat)
; unknown
(pop) ; 7
; 0.01s
; (get-info :all-statistics)
; Chunk depleted?
(set-option :timeout 0)
(push) ; 7
(set-option :timeout 500)
(assert (not (forall ((r $Ref)) (!
  (=
    (-
      (ite
        (and (img@109@01 r) (Set_in (inv@108@01 r) setOfRef@10@01))
        (- rd@12@01 (pTaken@175@01 r))
        $Perm.No)
      (pTaken@233@01 r))
    $Perm.No)
  
  :qid |quant-u-13945|))))
(check-sat)
; unsat
(pop) ; 7
; 0.01s
; (get-info :all-statistics)
; Intermediate check if already taken enough permissions
(set-option :timeout 0)
(push) ; 7
(set-option :timeout 500)
(assert (not (forall ((r $Ref)) (!
  (=>
    (and
      (Set_in (inv@229@01 r) setOfRef@10@01)
      (img@230@01 r)
      (= r (inv@229@01 r)))
    (=
      (- (- (- rd@12@01 (pTaken@231@01 r)) (pTaken@232@01 r)) (pTaken@233@01 r))
      $Perm.No))
  
  :qid |quant-u-13946|))))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
; Final check if taken enough permissions
; Done removing quantified permissions
; [eval] (forall x: Ref :: { (x in setOfRef) } (x in setOfRef) ==> x.val == old(x.val))
(declare-const x@234@01 $Ref)
(set-option :timeout 0)
(push) ; 7
; [eval] (x in setOfRef) ==> x.val == old(x.val)
; [eval] (x in setOfRef)
(push) ; 8
; [then-branch: 36 | x@234@01 in setOfRef@10@01 | live]
; [else-branch: 36 | !(x@234@01 in setOfRef@10@01) | live]
(push) ; 9
; [then-branch: 36 | x@234@01 in setOfRef@10@01]
(assert (Set_in x@234@01 setOfRef@10@01))
; [eval] x.val == old(x.val)
(declare-const sm@235@01 $FVF<val>)
; Definitional axioms for snapshot map values
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@218@01 r) (Set_in (inv@217@01 r) res_copy_nodes@197@01))
    (=
      ($FVF.lookup_val (as sm@235@01  $FVF<val>) r)
      ($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@198@01)))))))))))) r)))
  :pattern (($FVF.lookup_val (as sm@235@01  $FVF<val>) r))
  :pattern (($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@198@01)))))))))))) r))
  :qid |qp.fvfValDef52|)))
(assert (forall ((r $Ref)) (!
  (=>
    (ite
      (and (img@201@01 r) (Set_in (inv@200@01 r) setOfRef@10@01))
      (< $Perm.No (/ rd@12@01 (to_real 2)))
      false)
    (=
      ($FVF.lookup_val (as sm@235@01  $FVF<val>) r)
      ($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@198@01))))) r)))
  :pattern (($FVF.lookup_val (as sm@235@01  $FVF<val>) r))
  :pattern (($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@198@01))))) r))
  :qid |qp.fvfValDef53|)))
(assert (forall ((r $Ref)) (!
  (=>
    (ite
      (and (img@109@01 r) (Set_in (inv@108@01 r) setOfRef@10@01))
      (< $Perm.No (- rd@12@01 (pTaken@175@01 r)))
      false)
    (=
      ($FVF.lookup_val (as sm@235@01  $FVF<val>) r)
      ($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.first ($Snap.second ($Snap.second $t@106@01)))) r)))
  :pattern (($FVF.lookup_val (as sm@235@01  $FVF<val>) r))
  :pattern (($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.first ($Snap.second ($Snap.second $t@106@01)))) r))
  :qid |qp.fvfValDef54|)))
(declare-const pm@236@01 $FPM)
(assert (forall ((r $Ref)) (!
  (=
    ($FVF.perm_val (as pm@236@01  $FPM) r)
    (+
      (+
        (ite
          (and (img@218@01 r) (Set_in (inv@217@01 r) res_copy_nodes@197@01))
          $Perm.Write
          $Perm.No)
        (ite
          (and (img@201@01 r) (Set_in (inv@200@01 r) setOfRef@10@01))
          (/ rd@12@01 (to_real 2))
          $Perm.No))
      (ite
        (and (img@109@01 r) (Set_in (inv@108@01 r) setOfRef@10@01))
        (- rd@12@01 (pTaken@175@01 r))
        $Perm.No)))
  :pattern (($FVF.perm_val (as pm@236@01  $FPM) r))
  :qid |qp.resPrmSumDef55|)))
(push) ; 10
(assert (not (< $Perm.No ($FVF.perm_val (as pm@236@01  $FPM) x@234@01))))
(check-sat)
; unsat
(pop) ; 10
; 0.00s
; (get-info :all-statistics)
; [eval] old(x.val)
(assert (and
  (forall ((r $Ref)) (!
    (=>
      (ite
        (and (img@19@01 r) (Set_in (inv@18@01 r) setOfRef@10@01))
        (< $Perm.No rd@12@01)
        false)
      (=
        ($FVF.lookup_val (as sm@111@01  $FVF<val>) r)
        ($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@16@01)))))) r)))
    :pattern (($FVF.lookup_val (as sm@111@01  $FVF<val>) r))
    :pattern (($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@16@01)))))) r))
    :qid |qp.fvfValDef20|))
  (forall ((r $Ref)) (!
    (=>
      (and (img@28@01 r) (Set_in (inv@27@01 r) node_map_image@11@01))
      (=
        ($FVF.lookup_val (as sm@111@01  $FVF<val>) r)
        ($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@16@01)))))))))) r)))
    :pattern (($FVF.lookup_val (as sm@111@01  $FVF<val>) r))
    :pattern (($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@16@01)))))))))) r))
    :qid |qp.fvfValDef21|))))
(push) ; 10
(assert (not (<
  $Perm.No
  (+
    (ite
      (and (img@19@01 x@234@01) (Set_in (inv@18@01 x@234@01) setOfRef@10@01))
      rd@12@01
      $Perm.No)
    (ite
      (and
        (img@28@01 x@234@01)
        (Set_in (inv@27@01 x@234@01) node_map_image@11@01))
      $Perm.Write
      $Perm.No)))))
(check-sat)
; unsat
(pop) ; 10
; 0.00s
; (get-info :all-statistics)
(pop) ; 9
(push) ; 9
; [else-branch: 36 | !(x@234@01 in setOfRef@10@01)]
(assert (not (Set_in x@234@01 setOfRef@10@01)))
(pop) ; 9
(pop) ; 8
; Joined path conditions
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@218@01 r) (Set_in (inv@217@01 r) res_copy_nodes@197@01))
    (=
      ($FVF.lookup_val (as sm@235@01  $FVF<val>) r)
      ($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@198@01)))))))))))) r)))
  :pattern (($FVF.lookup_val (as sm@235@01  $FVF<val>) r))
  :pattern (($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@198@01)))))))))))) r))
  :qid |qp.fvfValDef52|)))
(assert (forall ((r $Ref)) (!
  (=>
    (ite
      (and (img@201@01 r) (Set_in (inv@200@01 r) setOfRef@10@01))
      (< $Perm.No (/ rd@12@01 (to_real 2)))
      false)
    (=
      ($FVF.lookup_val (as sm@235@01  $FVF<val>) r)
      ($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@198@01))))) r)))
  :pattern (($FVF.lookup_val (as sm@235@01  $FVF<val>) r))
  :pattern (($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@198@01))))) r))
  :qid |qp.fvfValDef53|)))
(assert (forall ((r $Ref)) (!
  (=>
    (ite
      (and (img@109@01 r) (Set_in (inv@108@01 r) setOfRef@10@01))
      (< $Perm.No (- rd@12@01 (pTaken@175@01 r)))
      false)
    (=
      ($FVF.lookup_val (as sm@235@01  $FVF<val>) r)
      ($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.first ($Snap.second ($Snap.second $t@106@01)))) r)))
  :pattern (($FVF.lookup_val (as sm@235@01  $FVF<val>) r))
  :pattern (($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.first ($Snap.second ($Snap.second $t@106@01)))) r))
  :qid |qp.fvfValDef54|)))
(assert (forall ((r $Ref)) (!
  (=
    ($FVF.perm_val (as pm@236@01  $FPM) r)
    (+
      (+
        (ite
          (and (img@218@01 r) (Set_in (inv@217@01 r) res_copy_nodes@197@01))
          $Perm.Write
          $Perm.No)
        (ite
          (and (img@201@01 r) (Set_in (inv@200@01 r) setOfRef@10@01))
          (/ rd@12@01 (to_real 2))
          $Perm.No))
      (ite
        (and (img@109@01 r) (Set_in (inv@108@01 r) setOfRef@10@01))
        (- rd@12@01 (pTaken@175@01 r))
        $Perm.No)))
  :pattern (($FVF.perm_val (as pm@236@01  $FPM) r))
  :qid |qp.resPrmSumDef55|)))
(assert (forall ((r $Ref)) (!
  (=>
    (ite
      (and (img@19@01 r) (Set_in (inv@18@01 r) setOfRef@10@01))
      (< $Perm.No rd@12@01)
      false)
    (=
      ($FVF.lookup_val (as sm@111@01  $FVF<val>) r)
      ($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@16@01)))))) r)))
  :pattern (($FVF.lookup_val (as sm@111@01  $FVF<val>) r))
  :pattern (($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@16@01)))))) r))
  :qid |qp.fvfValDef20|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@28@01 r) (Set_in (inv@27@01 r) node_map_image@11@01))
    (=
      ($FVF.lookup_val (as sm@111@01  $FVF<val>) r)
      ($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@16@01)))))))))) r)))
  :pattern (($FVF.lookup_val (as sm@111@01  $FVF<val>) r))
  :pattern (($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@16@01)))))))))) r))
  :qid |qp.fvfValDef21|)))
; Joined path conditions
(assert (or (not (Set_in x@234@01 setOfRef@10@01)) (Set_in x@234@01 setOfRef@10@01)))
(pop) ; 7
; Nested auxiliary terms: globals (aux)
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@218@01 r) (Set_in (inv@217@01 r) res_copy_nodes@197@01))
    (=
      ($FVF.lookup_val (as sm@235@01  $FVF<val>) r)
      ($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@198@01)))))))))))) r)))
  :pattern (($FVF.lookup_val (as sm@235@01  $FVF<val>) r))
  :pattern (($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@198@01)))))))))))) r))
  :qid |qp.fvfValDef52|)))
(assert (forall ((r $Ref)) (!
  (=>
    (ite
      (and (img@201@01 r) (Set_in (inv@200@01 r) setOfRef@10@01))
      (< $Perm.No (/ rd@12@01 (to_real 2)))
      false)
    (=
      ($FVF.lookup_val (as sm@235@01  $FVF<val>) r)
      ($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@198@01))))) r)))
  :pattern (($FVF.lookup_val (as sm@235@01  $FVF<val>) r))
  :pattern (($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@198@01))))) r))
  :qid |qp.fvfValDef53|)))
(assert (forall ((r $Ref)) (!
  (=>
    (ite
      (and (img@109@01 r) (Set_in (inv@108@01 r) setOfRef@10@01))
      (< $Perm.No (- rd@12@01 (pTaken@175@01 r)))
      false)
    (=
      ($FVF.lookup_val (as sm@235@01  $FVF<val>) r)
      ($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.first ($Snap.second ($Snap.second $t@106@01)))) r)))
  :pattern (($FVF.lookup_val (as sm@235@01  $FVF<val>) r))
  :pattern (($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.first ($Snap.second ($Snap.second $t@106@01)))) r))
  :qid |qp.fvfValDef54|)))
(assert (forall ((r $Ref)) (!
  (=
    ($FVF.perm_val (as pm@236@01  $FPM) r)
    (+
      (+
        (ite
          (and (img@218@01 r) (Set_in (inv@217@01 r) res_copy_nodes@197@01))
          $Perm.Write
          $Perm.No)
        (ite
          (and (img@201@01 r) (Set_in (inv@200@01 r) setOfRef@10@01))
          (/ rd@12@01 (to_real 2))
          $Perm.No))
      (ite
        (and (img@109@01 r) (Set_in (inv@108@01 r) setOfRef@10@01))
        (- rd@12@01 (pTaken@175@01 r))
        $Perm.No)))
  :pattern (($FVF.perm_val (as pm@236@01  $FPM) r))
  :qid |qp.resPrmSumDef55|)))
(assert (forall ((r $Ref)) (!
  (=>
    (ite
      (and (img@19@01 r) (Set_in (inv@18@01 r) setOfRef@10@01))
      (< $Perm.No rd@12@01)
      false)
    (=
      ($FVF.lookup_val (as sm@111@01  $FVF<val>) r)
      ($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@16@01)))))) r)))
  :pattern (($FVF.lookup_val (as sm@111@01  $FVF<val>) r))
  :pattern (($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@16@01)))))) r))
  :qid |qp.fvfValDef20|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@28@01 r) (Set_in (inv@27@01 r) node_map_image@11@01))
    (=
      ($FVF.lookup_val (as sm@111@01  $FVF<val>) r)
      ($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@16@01)))))))))) r)))
  :pattern (($FVF.lookup_val (as sm@111@01  $FVF<val>) r))
  :pattern (($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@16@01)))))))))) r))
  :qid |qp.fvfValDef21|)))
; Nested auxiliary terms: non-globals (aux)
(assert (forall ((x@234@01 $Ref)) (!
  (or (not (Set_in x@234@01 setOfRef@10@01)) (Set_in x@234@01 setOfRef@10@01))
  :pattern ((Set_in x@234@01 setOfRef@10@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/examples/graph-copy/graph-copy.vpr@146@17@146@71-aux|)))
(push) ; 7
(assert (not (forall ((x@234@01 $Ref)) (!
  (=>
    (Set_in x@234@01 setOfRef@10@01)
    (=
      ($FVF.lookup_val (as sm@235@01  $FVF<val>) x@234@01)
      ($FVF.lookup_val (as sm@111@01  $FVF<val>) x@234@01)))
  :pattern ((Set_in x@234@01 setOfRef@10@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/examples/graph-copy/graph-copy.vpr@146@17@146@71|))))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(assert (forall ((x@234@01 $Ref)) (!
  (=>
    (Set_in x@234@01 setOfRef@10@01)
    (=
      ($FVF.lookup_val (as sm@235@01  $FVF<val>) x@234@01)
      ($FVF.lookup_val (as sm@111@01  $FVF<val>) x@234@01)))
  :pattern ((Set_in x@234@01 setOfRef@10@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/examples/graph-copy/graph-copy.vpr@146@17@146@71|)))
(declare-const x@237@01 $Ref)
(push) ; 7
; [eval] (x in setOfRef)
(assert (Set_in x@237@01 setOfRef@10@01))
(pop) ; 7
(declare-fun inv@238@01 ($Ref) $Ref)
(declare-fun img@239@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
(push) ; 7
(assert (not (forall ((x@237@01 $Ref)) (!
  (=>
    (Set_in x@237@01 setOfRef@10@01)
    (or (= rd@12@01 $Perm.No) (< $Perm.No rd@12@01)))
  
  :qid |quant-u-13947|))))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
; Check receiver injectivity
(push) ; 7
(assert (not (forall ((x1@237@01 $Ref) (x2@237@01 $Ref)) (!
  (=>
    (and
      (and (Set_in x1@237@01 setOfRef@10@01) (< $Perm.No rd@12@01))
      (and (Set_in x2@237@01 setOfRef@10@01) (< $Perm.No rd@12@01))
      (= x1@237@01 x2@237@01))
    (= x1@237@01 x2@237@01))
  
  :qid |edges-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((x@237@01 $Ref)) (!
  (=>
    (and (Set_in x@237@01 setOfRef@10@01) (< $Perm.No rd@12@01))
    (and (= (inv@238@01 x@237@01) x@237@01) (img@239@01 x@237@01)))
  :pattern ((Set_in x@237@01 setOfRef@10@01))
  :pattern ((inv@238@01 x@237@01))
  :pattern ((img@239@01 x@237@01))
  :qid |edges-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@239@01 r)
      (and (Set_in (inv@238@01 r) setOfRef@10@01) (< $Perm.No rd@12@01)))
    (= (inv@238@01 r) r))
  :pattern ((inv@238@01 r))
  :qid |edges-fctOfInv|)))
; Precomputing data for removing quantified permissions
(define-fun pTaken@240@01 ((r $Ref)) $Perm
  (ite
    (and
      (Set_in (inv@238@01 r) setOfRef@10@01)
      (img@239@01 r)
      (= r (inv@238@01 r)))
    ($Perm.min
      (ite
        (and (img@115@01 r) (Set_in (inv@114@01 r) setOfRef@10@01))
        (- rd@12@01 (pTaken@181@01 r))
        $Perm.No)
      rd@12@01)
    $Perm.No))
(define-fun pTaken@241@01 ((r $Ref)) $Perm
  (ite
    (and
      (Set_in (inv@238@01 r) setOfRef@10@01)
      (img@239@01 r)
      (= r (inv@238@01 r)))
    ($Perm.min
      (ite
        (and (img@209@01 r) (Set_in (inv@208@01 r) setOfRef@10@01))
        (/ rd@12@01 (to_real 2))
        $Perm.No)
      (- rd@12@01 (pTaken@240@01 r)))
    $Perm.No))
(define-fun pTaken@242@01 ((r $Ref)) $Perm
  (ite
    (and
      (Set_in (inv@238@01 r) setOfRef@10@01)
      (img@239@01 r)
      (= r (inv@238@01 r)))
    ($Perm.min
      (ite
        (and (img@221@01 r) (Set_in (inv@220@01 r) res_copy_nodes@197@01))
        (- $Perm.Write (pTaken@226@01 r))
        $Perm.No)
      (- (- rd@12@01 (pTaken@240@01 r)) (pTaken@241@01 r)))
    $Perm.No))
(define-fun pTaken@243@01 ((r $Ref)) $Perm
  (ite
    (and
      (Set_in (inv@238@01 r) setOfRef@10@01)
      (img@239@01 r)
      (= r (inv@238@01 r)))
    ($Perm.min
      (ite (= r nodeCopy@84@01) $Perm.Write $Perm.No)
      (- (- (- rd@12@01 (pTaken@240@01 r)) (pTaken@241@01 r)) (pTaken@242@01 r)))
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
        (and (img@115@01 r) (Set_in (inv@114@01 r) setOfRef@10@01))
        (- rd@12@01 (pTaken@181@01 r))
        $Perm.No)
      (pTaken@240@01 r))
    $Perm.No)
  
  :qid |quant-u-13949|))))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
; Intermediate check if already taken enough permissions
(set-option :timeout 0)
(push) ; 7
(set-option :timeout 500)
(assert (not (forall ((r $Ref)) (!
  (=>
    (and
      (Set_in (inv@238@01 r) setOfRef@10@01)
      (img@239@01 r)
      (= r (inv@238@01 r)))
    (= (- rd@12@01 (pTaken@240@01 r)) $Perm.No))
  
  :qid |quant-u-13950|))))
(check-sat)
; unknown
(pop) ; 7
; 0.01s
; (get-info :all-statistics)
; Chunk depleted?
(set-option :timeout 0)
(push) ; 7
(set-option :timeout 500)
(assert (not (forall ((r $Ref)) (!
  (=
    (-
      (ite
        (and (img@209@01 r) (Set_in (inv@208@01 r) setOfRef@10@01))
        (/ rd@12@01 (to_real 2))
        $Perm.No)
      (pTaken@241@01 r))
    $Perm.No)
  
  :qid |quant-u-13951|))))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
; Intermediate check if already taken enough permissions
(set-option :timeout 0)
(push) ; 7
(set-option :timeout 500)
(assert (not (forall ((r $Ref)) (!
  (=>
    (and
      (Set_in (inv@238@01 r) setOfRef@10@01)
      (img@239@01 r)
      (= r (inv@238@01 r)))
    (= (- (- rd@12@01 (pTaken@240@01 r)) (pTaken@241@01 r)) $Perm.No))
  
  :qid |quant-u-13952|))))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
; Final check if taken enough permissions
; Done removing quantified permissions
; [eval] (forall x: Ref :: { (x in setOfRef) } (x in setOfRef) ==> x.edges == old(x.edges))
(declare-const x@244@01 $Ref)
(set-option :timeout 0)
(push) ; 7
; [eval] (x in setOfRef) ==> x.edges == old(x.edges)
; [eval] (x in setOfRef)
(push) ; 8
; [then-branch: 37 | x@244@01 in setOfRef@10@01 | live]
; [else-branch: 37 | !(x@244@01 in setOfRef@10@01) | live]
(push) ; 9
; [then-branch: 37 | x@244@01 in setOfRef@10@01]
(assert (Set_in x@244@01 setOfRef@10@01))
; [eval] x.edges == old(x.edges)
(declare-const sm@245@01 $FVF<edges>)
; Definitional axioms for snapshot map values
(assert (forall ((r $Ref)) (!
  (=>
    (= r nodeCopy@84@01)
    (=
      ($FVF.lookup_edges (as sm@245@01  $FVF<edges>) r)
      ($FVF.lookup_edges (as sm@227@01  $FVF<edges>) r)))
  :pattern (($FVF.lookup_edges (as sm@245@01  $FVF<edges>) r))
  :pattern (($FVF.lookup_edges (as sm@227@01  $FVF<edges>) r))
  :qid |qp.fvfValDef56|)))
(assert (forall ((r $Ref)) (!
  (=>
    (ite
      (and (img@221@01 r) (Set_in (inv@220@01 r) res_copy_nodes@197@01))
      (< $Perm.No (- $Perm.Write (pTaken@226@01 r)))
      false)
    (=
      ($FVF.lookup_edges (as sm@245@01  $FVF<edges>) r)
      ($FVF.lookup_edges ($SortWrappers.$SnapTo$FVF<edges> ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@198@01)))))))))))) r)))
  :pattern (($FVF.lookup_edges (as sm@245@01  $FVF<edges>) r))
  :pattern (($FVF.lookup_edges ($SortWrappers.$SnapTo$FVF<edges> ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@198@01)))))))))))) r))
  :qid |qp.fvfValDef57|)))
(assert (forall ((r $Ref)) (!
  (=>
    (ite
      (and (img@209@01 r) (Set_in (inv@208@01 r) setOfRef@10@01))
      (< $Perm.No (/ rd@12@01 (to_real 2)))
      false)
    (=
      ($FVF.lookup_edges (as sm@245@01  $FVF<edges>) r)
      ($FVF.lookup_edges ($SortWrappers.$SnapTo$FVF<edges> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@198@01))))))) r)))
  :pattern (($FVF.lookup_edges (as sm@245@01  $FVF<edges>) r))
  :pattern (($FVF.lookup_edges ($SortWrappers.$SnapTo$FVF<edges> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@198@01))))))) r))
  :qid |qp.fvfValDef58|)))
(assert (forall ((r $Ref)) (!
  (=>
    (ite
      (and (img@115@01 r) (Set_in (inv@114@01 r) setOfRef@10@01))
      (< $Perm.No (- rd@12@01 (pTaken@181@01 r)))
      false)
    (=
      ($FVF.lookup_edges (as sm@245@01  $FVF<edges>) r)
      ($FVF.lookup_edges ($SortWrappers.$SnapTo$FVF<edges> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@106@01)))))) r)))
  :pattern (($FVF.lookup_edges (as sm@245@01  $FVF<edges>) r))
  :pattern (($FVF.lookup_edges ($SortWrappers.$SnapTo$FVF<edges> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@106@01)))))) r))
  :qid |qp.fvfValDef59|)))
(declare-const pm@246@01 $FPM)
(assert (forall ((r $Ref)) (!
  (=
    ($FVF.perm_edges (as pm@246@01  $FPM) r)
    (+
      (+
        (+
          (ite (= r nodeCopy@84@01) $Perm.Write $Perm.No)
          (ite
            (and (img@221@01 r) (Set_in (inv@220@01 r) res_copy_nodes@197@01))
            (- $Perm.Write (pTaken@226@01 r))
            $Perm.No))
        (ite
          (and (img@209@01 r) (Set_in (inv@208@01 r) setOfRef@10@01))
          (/ rd@12@01 (to_real 2))
          $Perm.No))
      (ite
        (and (img@115@01 r) (Set_in (inv@114@01 r) setOfRef@10@01))
        (- rd@12@01 (pTaken@181@01 r))
        $Perm.No)))
  :pattern (($FVF.perm_edges (as pm@246@01  $FPM) r))
  :qid |qp.resPrmSumDef60|)))
(push) ; 10
(assert (not (< $Perm.No ($FVF.perm_edges (as pm@246@01  $FPM) x@244@01))))
(check-sat)
; unsat
(pop) ; 10
; 0.00s
; (get-info :all-statistics)
; [eval] old(x.edges)
(assert (and
  (forall ((r $Ref)) (!
    (=>
      (ite
        (and (img@22@01 r) (Set_in (inv@21@01 r) setOfRef@10@01))
        (< $Perm.No rd@12@01)
        false)
      (=
        ($FVF.lookup_edges (as sm@117@01  $FVF<edges>) r)
        ($FVF.lookup_edges ($SortWrappers.$SnapTo$FVF<edges> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@16@01))))))) r)))
    :pattern (($FVF.lookup_edges (as sm@117@01  $FVF<edges>) r))
    :pattern (($FVF.lookup_edges ($SortWrappers.$SnapTo$FVF<edges> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@16@01))))))) r))
    :qid |qp.fvfValDef23|))
  (forall ((r $Ref)) (!
    (=>
      (and (img@31@01 r) (Set_in (inv@30@01 r) node_map_image@11@01))
      (=
        ($FVF.lookup_edges (as sm@117@01  $FVF<edges>) r)
        ($FVF.lookup_edges ($SortWrappers.$SnapTo$FVF<edges> ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@16@01)))))))))) r)))
    :pattern (($FVF.lookup_edges (as sm@117@01  $FVF<edges>) r))
    :pattern (($FVF.lookup_edges ($SortWrappers.$SnapTo$FVF<edges> ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@16@01)))))))))) r))
    :qid |qp.fvfValDef24|))))
(push) ; 10
(assert (not (<
  $Perm.No
  (+
    (ite
      (and (img@22@01 x@244@01) (Set_in (inv@21@01 x@244@01) setOfRef@10@01))
      rd@12@01
      $Perm.No)
    (ite
      (and
        (img@31@01 x@244@01)
        (Set_in (inv@30@01 x@244@01) node_map_image@11@01))
      $Perm.Write
      $Perm.No)))))
(check-sat)
; unsat
(pop) ; 10
; 0.00s
; (get-info :all-statistics)
(pop) ; 9
(push) ; 9
; [else-branch: 37 | !(x@244@01 in setOfRef@10@01)]
(assert (not (Set_in x@244@01 setOfRef@10@01)))
(pop) ; 9
(pop) ; 8
; Joined path conditions
(assert (forall ((r $Ref)) (!
  (=>
    (= r nodeCopy@84@01)
    (=
      ($FVF.lookup_edges (as sm@245@01  $FVF<edges>) r)
      ($FVF.lookup_edges (as sm@227@01  $FVF<edges>) r)))
  :pattern (($FVF.lookup_edges (as sm@245@01  $FVF<edges>) r))
  :pattern (($FVF.lookup_edges (as sm@227@01  $FVF<edges>) r))
  :qid |qp.fvfValDef56|)))
(assert (forall ((r $Ref)) (!
  (=>
    (ite
      (and (img@221@01 r) (Set_in (inv@220@01 r) res_copy_nodes@197@01))
      (< $Perm.No (- $Perm.Write (pTaken@226@01 r)))
      false)
    (=
      ($FVF.lookup_edges (as sm@245@01  $FVF<edges>) r)
      ($FVF.lookup_edges ($SortWrappers.$SnapTo$FVF<edges> ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@198@01)))))))))))) r)))
  :pattern (($FVF.lookup_edges (as sm@245@01  $FVF<edges>) r))
  :pattern (($FVF.lookup_edges ($SortWrappers.$SnapTo$FVF<edges> ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@198@01)))))))))))) r))
  :qid |qp.fvfValDef57|)))
(assert (forall ((r $Ref)) (!
  (=>
    (ite
      (and (img@209@01 r) (Set_in (inv@208@01 r) setOfRef@10@01))
      (< $Perm.No (/ rd@12@01 (to_real 2)))
      false)
    (=
      ($FVF.lookup_edges (as sm@245@01  $FVF<edges>) r)
      ($FVF.lookup_edges ($SortWrappers.$SnapTo$FVF<edges> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@198@01))))))) r)))
  :pattern (($FVF.lookup_edges (as sm@245@01  $FVF<edges>) r))
  :pattern (($FVF.lookup_edges ($SortWrappers.$SnapTo$FVF<edges> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@198@01))))))) r))
  :qid |qp.fvfValDef58|)))
(assert (forall ((r $Ref)) (!
  (=>
    (ite
      (and (img@115@01 r) (Set_in (inv@114@01 r) setOfRef@10@01))
      (< $Perm.No (- rd@12@01 (pTaken@181@01 r)))
      false)
    (=
      ($FVF.lookup_edges (as sm@245@01  $FVF<edges>) r)
      ($FVF.lookup_edges ($SortWrappers.$SnapTo$FVF<edges> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@106@01)))))) r)))
  :pattern (($FVF.lookup_edges (as sm@245@01  $FVF<edges>) r))
  :pattern (($FVF.lookup_edges ($SortWrappers.$SnapTo$FVF<edges> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@106@01)))))) r))
  :qid |qp.fvfValDef59|)))
(assert (forall ((r $Ref)) (!
  (=
    ($FVF.perm_edges (as pm@246@01  $FPM) r)
    (+
      (+
        (+
          (ite (= r nodeCopy@84@01) $Perm.Write $Perm.No)
          (ite
            (and (img@221@01 r) (Set_in (inv@220@01 r) res_copy_nodes@197@01))
            (- $Perm.Write (pTaken@226@01 r))
            $Perm.No))
        (ite
          (and (img@209@01 r) (Set_in (inv@208@01 r) setOfRef@10@01))
          (/ rd@12@01 (to_real 2))
          $Perm.No))
      (ite
        (and (img@115@01 r) (Set_in (inv@114@01 r) setOfRef@10@01))
        (- rd@12@01 (pTaken@181@01 r))
        $Perm.No)))
  :pattern (($FVF.perm_edges (as pm@246@01  $FPM) r))
  :qid |qp.resPrmSumDef60|)))
(assert (forall ((r $Ref)) (!
  (=>
    (ite
      (and (img@22@01 r) (Set_in (inv@21@01 r) setOfRef@10@01))
      (< $Perm.No rd@12@01)
      false)
    (=
      ($FVF.lookup_edges (as sm@117@01  $FVF<edges>) r)
      ($FVF.lookup_edges ($SortWrappers.$SnapTo$FVF<edges> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@16@01))))))) r)))
  :pattern (($FVF.lookup_edges (as sm@117@01  $FVF<edges>) r))
  :pattern (($FVF.lookup_edges ($SortWrappers.$SnapTo$FVF<edges> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@16@01))))))) r))
  :qid |qp.fvfValDef23|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@31@01 r) (Set_in (inv@30@01 r) node_map_image@11@01))
    (=
      ($FVF.lookup_edges (as sm@117@01  $FVF<edges>) r)
      ($FVF.lookup_edges ($SortWrappers.$SnapTo$FVF<edges> ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@16@01)))))))))) r)))
  :pattern (($FVF.lookup_edges (as sm@117@01  $FVF<edges>) r))
  :pattern (($FVF.lookup_edges ($SortWrappers.$SnapTo$FVF<edges> ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@16@01)))))))))) r))
  :qid |qp.fvfValDef24|)))
; Joined path conditions
(assert (or (not (Set_in x@244@01 setOfRef@10@01)) (Set_in x@244@01 setOfRef@10@01)))
(pop) ; 7
; Nested auxiliary terms: globals (aux)
(assert (forall ((r $Ref)) (!
  (=>
    (= r nodeCopy@84@01)
    (=
      ($FVF.lookup_edges (as sm@245@01  $FVF<edges>) r)
      ($FVF.lookup_edges (as sm@227@01  $FVF<edges>) r)))
  :pattern (($FVF.lookup_edges (as sm@245@01  $FVF<edges>) r))
  :pattern (($FVF.lookup_edges (as sm@227@01  $FVF<edges>) r))
  :qid |qp.fvfValDef56|)))
(assert (forall ((r $Ref)) (!
  (=>
    (ite
      (and (img@221@01 r) (Set_in (inv@220@01 r) res_copy_nodes@197@01))
      (< $Perm.No (- $Perm.Write (pTaken@226@01 r)))
      false)
    (=
      ($FVF.lookup_edges (as sm@245@01  $FVF<edges>) r)
      ($FVF.lookup_edges ($SortWrappers.$SnapTo$FVF<edges> ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@198@01)))))))))))) r)))
  :pattern (($FVF.lookup_edges (as sm@245@01  $FVF<edges>) r))
  :pattern (($FVF.lookup_edges ($SortWrappers.$SnapTo$FVF<edges> ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@198@01)))))))))))) r))
  :qid |qp.fvfValDef57|)))
(assert (forall ((r $Ref)) (!
  (=>
    (ite
      (and (img@209@01 r) (Set_in (inv@208@01 r) setOfRef@10@01))
      (< $Perm.No (/ rd@12@01 (to_real 2)))
      false)
    (=
      ($FVF.lookup_edges (as sm@245@01  $FVF<edges>) r)
      ($FVF.lookup_edges ($SortWrappers.$SnapTo$FVF<edges> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@198@01))))))) r)))
  :pattern (($FVF.lookup_edges (as sm@245@01  $FVF<edges>) r))
  :pattern (($FVF.lookup_edges ($SortWrappers.$SnapTo$FVF<edges> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@198@01))))))) r))
  :qid |qp.fvfValDef58|)))
(assert (forall ((r $Ref)) (!
  (=>
    (ite
      (and (img@115@01 r) (Set_in (inv@114@01 r) setOfRef@10@01))
      (< $Perm.No (- rd@12@01 (pTaken@181@01 r)))
      false)
    (=
      ($FVF.lookup_edges (as sm@245@01  $FVF<edges>) r)
      ($FVF.lookup_edges ($SortWrappers.$SnapTo$FVF<edges> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@106@01)))))) r)))
  :pattern (($FVF.lookup_edges (as sm@245@01  $FVF<edges>) r))
  :pattern (($FVF.lookup_edges ($SortWrappers.$SnapTo$FVF<edges> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@106@01)))))) r))
  :qid |qp.fvfValDef59|)))
(assert (forall ((r $Ref)) (!
  (=
    ($FVF.perm_edges (as pm@246@01  $FPM) r)
    (+
      (+
        (+
          (ite (= r nodeCopy@84@01) $Perm.Write $Perm.No)
          (ite
            (and (img@221@01 r) (Set_in (inv@220@01 r) res_copy_nodes@197@01))
            (- $Perm.Write (pTaken@226@01 r))
            $Perm.No))
        (ite
          (and (img@209@01 r) (Set_in (inv@208@01 r) setOfRef@10@01))
          (/ rd@12@01 (to_real 2))
          $Perm.No))
      (ite
        (and (img@115@01 r) (Set_in (inv@114@01 r) setOfRef@10@01))
        (- rd@12@01 (pTaken@181@01 r))
        $Perm.No)))
  :pattern (($FVF.perm_edges (as pm@246@01  $FPM) r))
  :qid |qp.resPrmSumDef60|)))
(assert (forall ((r $Ref)) (!
  (=>
    (ite
      (and (img@22@01 r) (Set_in (inv@21@01 r) setOfRef@10@01))
      (< $Perm.No rd@12@01)
      false)
    (=
      ($FVF.lookup_edges (as sm@117@01  $FVF<edges>) r)
      ($FVF.lookup_edges ($SortWrappers.$SnapTo$FVF<edges> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@16@01))))))) r)))
  :pattern (($FVF.lookup_edges (as sm@117@01  $FVF<edges>) r))
  :pattern (($FVF.lookup_edges ($SortWrappers.$SnapTo$FVF<edges> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@16@01))))))) r))
  :qid |qp.fvfValDef23|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@31@01 r) (Set_in (inv@30@01 r) node_map_image@11@01))
    (=
      ($FVF.lookup_edges (as sm@117@01  $FVF<edges>) r)
      ($FVF.lookup_edges ($SortWrappers.$SnapTo$FVF<edges> ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@16@01)))))))))) r)))
  :pattern (($FVF.lookup_edges (as sm@117@01  $FVF<edges>) r))
  :pattern (($FVF.lookup_edges ($SortWrappers.$SnapTo$FVF<edges> ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@16@01)))))))))) r))
  :qid |qp.fvfValDef24|)))
; Nested auxiliary terms: non-globals (aux)
(assert (forall ((x@244@01 $Ref)) (!
  (or (not (Set_in x@244@01 setOfRef@10@01)) (Set_in x@244@01 setOfRef@10@01))
  :pattern ((Set_in x@244@01 setOfRef@10@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/examples/graph-copy/graph-copy.vpr@148@17@148@75-aux|)))
(push) ; 7
(assert (not (forall ((x@244@01 $Ref)) (!
  (=>
    (Set_in x@244@01 setOfRef@10@01)
    (=
      ($FVF.lookup_edges (as sm@245@01  $FVF<edges>) x@244@01)
      ($FVF.lookup_edges (as sm@117@01  $FVF<edges>) x@244@01)))
  :pattern ((Set_in x@244@01 setOfRef@10@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/examples/graph-copy/graph-copy.vpr@148@17@148@75|))))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(assert (forall ((x@244@01 $Ref)) (!
  (=>
    (Set_in x@244@01 setOfRef@10@01)
    (=
      ($FVF.lookup_edges (as sm@245@01  $FVF<edges>) x@244@01)
      ($FVF.lookup_edges (as sm@117@01  $FVF<edges>) x@244@01)))
  :pattern ((Set_in x@244@01 setOfRef@10@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/examples/graph-copy/graph-copy.vpr@148@17@148@75|)))
; [eval] (forall j: Int :: { (j in S) } { (edge_lookup(this.edges, j) in setOfRef) } (j in S) ==> (edge_lookup(this.edges, j) in setOfRef))
(declare-const j@247@01 Int)
(push) ; 7
; [eval] (j in S) ==> (edge_lookup(this.edges, j) in setOfRef)
; [eval] (j in S)
(push) ; 8
; [then-branch: 38 | j@247@01 in s2@166@01 | live]
; [else-branch: 38 | !(j@247@01 in s2@166@01) | live]
(push) ; 9
; [then-branch: 38 | j@247@01 in s2@166@01]
(assert (Set_in j@247@01 s2@166@01))
; [eval] (edge_lookup(this.edges, j) in setOfRef)
; [eval] edge_lookup(this.edges, j)
(assert (and
  (forall ((r $Ref)) (!
    (=>
      (= r nodeCopy@84@01)
      (=
        ($FVF.lookup_edges (as sm@245@01  $FVF<edges>) r)
        ($FVF.lookup_edges (as sm@227@01  $FVF<edges>) r)))
    :pattern (($FVF.lookup_edges (as sm@245@01  $FVF<edges>) r))
    :pattern (($FVF.lookup_edges (as sm@227@01  $FVF<edges>) r))
    :qid |qp.fvfValDef56|))
  (forall ((r $Ref)) (!
    (=>
      (ite
        (and (img@221@01 r) (Set_in (inv@220@01 r) res_copy_nodes@197@01))
        (< $Perm.No (- $Perm.Write (pTaken@226@01 r)))
        false)
      (=
        ($FVF.lookup_edges (as sm@245@01  $FVF<edges>) r)
        ($FVF.lookup_edges ($SortWrappers.$SnapTo$FVF<edges> ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@198@01)))))))))))) r)))
    :pattern (($FVF.lookup_edges (as sm@245@01  $FVF<edges>) r))
    :pattern (($FVF.lookup_edges ($SortWrappers.$SnapTo$FVF<edges> ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@198@01)))))))))))) r))
    :qid |qp.fvfValDef57|))
  (forall ((r $Ref)) (!
    (=>
      (ite
        (and (img@209@01 r) (Set_in (inv@208@01 r) setOfRef@10@01))
        (< $Perm.No (/ rd@12@01 (to_real 2)))
        false)
      (=
        ($FVF.lookup_edges (as sm@245@01  $FVF<edges>) r)
        ($FVF.lookup_edges ($SortWrappers.$SnapTo$FVF<edges> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@198@01))))))) r)))
    :pattern (($FVF.lookup_edges (as sm@245@01  $FVF<edges>) r))
    :pattern (($FVF.lookup_edges ($SortWrappers.$SnapTo$FVF<edges> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@198@01))))))) r))
    :qid |qp.fvfValDef58|))
  (forall ((r $Ref)) (!
    (=>
      (ite
        (and (img@115@01 r) (Set_in (inv@114@01 r) setOfRef@10@01))
        (< $Perm.No (- rd@12@01 (pTaken@181@01 r)))
        false)
      (=
        ($FVF.lookup_edges (as sm@245@01  $FVF<edges>) r)
        ($FVF.lookup_edges ($SortWrappers.$SnapTo$FVF<edges> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@106@01)))))) r)))
    :pattern (($FVF.lookup_edges (as sm@245@01  $FVF<edges>) r))
    :pattern (($FVF.lookup_edges ($SortWrappers.$SnapTo$FVF<edges> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@106@01)))))) r))
    :qid |qp.fvfValDef59|))))
(push) ; 10
(assert (not (<
  $Perm.No
  (+
    (+
      (+
        (ite (= this@8@01 nodeCopy@84@01) $Perm.Write $Perm.No)
        (ite
          (and
            (img@221@01 this@8@01)
            (Set_in (inv@220@01 this@8@01) res_copy_nodes@197@01))
          (- $Perm.Write (pTaken@226@01 this@8@01))
          $Perm.No))
      (ite
        (and
          (img@209@01 this@8@01)
          (Set_in (inv@208@01 this@8@01) setOfRef@10@01))
        (/ rd@12@01 (to_real 2))
        $Perm.No))
    (ite
      (and (img@115@01 this@8@01) (Set_in (inv@114@01 this@8@01) setOfRef@10@01))
      (- rd@12@01 (pTaken@181@01 this@8@01))
      $Perm.No)))))
(check-sat)
; unsat
(pop) ; 10
; 0.00s
; (get-info :all-statistics)
(pop) ; 9
(push) ; 9
; [else-branch: 38 | !(j@247@01 in s2@166@01)]
(assert (not (Set_in j@247@01 s2@166@01)))
(pop) ; 9
(pop) ; 8
; Joined path conditions
(assert (forall ((r $Ref)) (!
  (=>
    (= r nodeCopy@84@01)
    (=
      ($FVF.lookup_edges (as sm@245@01  $FVF<edges>) r)
      ($FVF.lookup_edges (as sm@227@01  $FVF<edges>) r)))
  :pattern (($FVF.lookup_edges (as sm@245@01  $FVF<edges>) r))
  :pattern (($FVF.lookup_edges (as sm@227@01  $FVF<edges>) r))
  :qid |qp.fvfValDef56|)))
(assert (forall ((r $Ref)) (!
  (=>
    (ite
      (and (img@221@01 r) (Set_in (inv@220@01 r) res_copy_nodes@197@01))
      (< $Perm.No (- $Perm.Write (pTaken@226@01 r)))
      false)
    (=
      ($FVF.lookup_edges (as sm@245@01  $FVF<edges>) r)
      ($FVF.lookup_edges ($SortWrappers.$SnapTo$FVF<edges> ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@198@01)))))))))))) r)))
  :pattern (($FVF.lookup_edges (as sm@245@01  $FVF<edges>) r))
  :pattern (($FVF.lookup_edges ($SortWrappers.$SnapTo$FVF<edges> ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@198@01)))))))))))) r))
  :qid |qp.fvfValDef57|)))
(assert (forall ((r $Ref)) (!
  (=>
    (ite
      (and (img@209@01 r) (Set_in (inv@208@01 r) setOfRef@10@01))
      (< $Perm.No (/ rd@12@01 (to_real 2)))
      false)
    (=
      ($FVF.lookup_edges (as sm@245@01  $FVF<edges>) r)
      ($FVF.lookup_edges ($SortWrappers.$SnapTo$FVF<edges> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@198@01))))))) r)))
  :pattern (($FVF.lookup_edges (as sm@245@01  $FVF<edges>) r))
  :pattern (($FVF.lookup_edges ($SortWrappers.$SnapTo$FVF<edges> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@198@01))))))) r))
  :qid |qp.fvfValDef58|)))
(assert (forall ((r $Ref)) (!
  (=>
    (ite
      (and (img@115@01 r) (Set_in (inv@114@01 r) setOfRef@10@01))
      (< $Perm.No (- rd@12@01 (pTaken@181@01 r)))
      false)
    (=
      ($FVF.lookup_edges (as sm@245@01  $FVF<edges>) r)
      ($FVF.lookup_edges ($SortWrappers.$SnapTo$FVF<edges> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@106@01)))))) r)))
  :pattern (($FVF.lookup_edges (as sm@245@01  $FVF<edges>) r))
  :pattern (($FVF.lookup_edges ($SortWrappers.$SnapTo$FVF<edges> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@106@01)))))) r))
  :qid |qp.fvfValDef59|)))
; Joined path conditions
(assert (or (not (Set_in j@247@01 s2@166@01)) (Set_in j@247@01 s2@166@01)))
(pop) ; 7
; Nested auxiliary terms: globals (aux)
(assert (forall ((r $Ref)) (!
  (=>
    (= r nodeCopy@84@01)
    (=
      ($FVF.lookup_edges (as sm@245@01  $FVF<edges>) r)
      ($FVF.lookup_edges (as sm@227@01  $FVF<edges>) r)))
  :pattern (($FVF.lookup_edges (as sm@245@01  $FVF<edges>) r))
  :pattern (($FVF.lookup_edges (as sm@227@01  $FVF<edges>) r))
  :qid |qp.fvfValDef56|)))
(assert (forall ((r $Ref)) (!
  (=>
    (ite
      (and (img@221@01 r) (Set_in (inv@220@01 r) res_copy_nodes@197@01))
      (< $Perm.No (- $Perm.Write (pTaken@226@01 r)))
      false)
    (=
      ($FVF.lookup_edges (as sm@245@01  $FVF<edges>) r)
      ($FVF.lookup_edges ($SortWrappers.$SnapTo$FVF<edges> ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@198@01)))))))))))) r)))
  :pattern (($FVF.lookup_edges (as sm@245@01  $FVF<edges>) r))
  :pattern (($FVF.lookup_edges ($SortWrappers.$SnapTo$FVF<edges> ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@198@01)))))))))))) r))
  :qid |qp.fvfValDef57|)))
(assert (forall ((r $Ref)) (!
  (=>
    (ite
      (and (img@209@01 r) (Set_in (inv@208@01 r) setOfRef@10@01))
      (< $Perm.No (/ rd@12@01 (to_real 2)))
      false)
    (=
      ($FVF.lookup_edges (as sm@245@01  $FVF<edges>) r)
      ($FVF.lookup_edges ($SortWrappers.$SnapTo$FVF<edges> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@198@01))))))) r)))
  :pattern (($FVF.lookup_edges (as sm@245@01  $FVF<edges>) r))
  :pattern (($FVF.lookup_edges ($SortWrappers.$SnapTo$FVF<edges> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@198@01))))))) r))
  :qid |qp.fvfValDef58|)))
(assert (forall ((r $Ref)) (!
  (=>
    (ite
      (and (img@115@01 r) (Set_in (inv@114@01 r) setOfRef@10@01))
      (< $Perm.No (- rd@12@01 (pTaken@181@01 r)))
      false)
    (=
      ($FVF.lookup_edges (as sm@245@01  $FVF<edges>) r)
      ($FVF.lookup_edges ($SortWrappers.$SnapTo$FVF<edges> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@106@01)))))) r)))
  :pattern (($FVF.lookup_edges (as sm@245@01  $FVF<edges>) r))
  :pattern (($FVF.lookup_edges ($SortWrappers.$SnapTo$FVF<edges> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@106@01)))))) r))
  :qid |qp.fvfValDef59|)))
; Nested auxiliary terms: non-globals (aux)
(assert (forall ((j@247@01 Int)) (!
  (or (not (Set_in j@247@01 s2@166@01)) (Set_in j@247@01 s2@166@01))
  :pattern ((Set_in j@247@01 s2@166@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/examples/graph-copy/graph-copy.vpr@149@17@149@83-aux|)))
(assert (forall ((j@247@01 Int)) (!
  (or (not (Set_in j@247@01 s2@166@01)) (Set_in j@247@01 s2@166@01))
  :pattern ((Set_in (edge_lookup<Ref> ($FVF.lookup_edges (as sm@245@01  $FVF<edges>) this@8@01) j@247@01) setOfRef@10@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/examples/graph-copy/graph-copy.vpr@149@17@149@83-aux|)))
(push) ; 7
(assert (not (forall ((j@247@01 Int)) (!
  (=>
    (Set_in j@247@01 s2@166@01)
    (Set_in (edge_lookup<Ref> ($FVF.lookup_edges (as sm@245@01  $FVF<edges>) this@8@01) j@247@01) setOfRef@10@01))
  :pattern ((Set_in j@247@01 s2@166@01))
  :pattern ((Set_in (edge_lookup<Ref> ($FVF.lookup_edges (as sm@245@01  $FVF<edges>) this@8@01) j@247@01) setOfRef@10@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/examples/graph-copy/graph-copy.vpr@149@17@149@83|))))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(assert (forall ((j@247@01 Int)) (!
  (=>
    (Set_in j@247@01 s2@166@01)
    (Set_in (edge_lookup<Ref> ($FVF.lookup_edges (as sm@245@01  $FVF<edges>) this@8@01) j@247@01) setOfRef@10@01))
  :pattern ((Set_in j@247@01 s2@166@01))
  :pattern ((Set_in (edge_lookup<Ref> ($FVF.lookup_edges (as sm@245@01  $FVF<edges>) this@8@01) j@247@01) setOfRef@10@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/examples/graph-copy/graph-copy.vpr@149@17@149@83|)))
; [eval] (forall r: Ref, j: Int :: { (r in setOfRef), (j in edges_domain(r.edges)) } { (r in setOfRef), edge_lookup(r.edges, j) } { (r in setOfRef), (edge_lookup(r.edges, j) in setOfRef) } { edges_domain(r.edges), edge_lookup(r.edges, j) } { edges_domain(r.edges), (edge_lookup(r.edges, j) in setOfRef) } { (j in edges_domain(r.edges)) } { (edge_lookup(r.edges, j) in setOfRef) } (r in setOfRef) && (j in edges_domain(r.edges)) ==> (edge_lookup(r.edges, j) in setOfRef))
(declare-const r@248@01 $Ref)
(declare-const j@249@01 Int)
(push) ; 7
; [eval] (r in setOfRef) && (j in edges_domain(r.edges)) ==> (edge_lookup(r.edges, j) in setOfRef)
; [eval] (r in setOfRef) && (j in edges_domain(r.edges))
; [eval] (r in setOfRef)
(push) ; 8
; [then-branch: 39 | !(r@248@01 in setOfRef@10@01) | live]
; [else-branch: 39 | r@248@01 in setOfRef@10@01 | live]
(push) ; 9
; [then-branch: 39 | !(r@248@01 in setOfRef@10@01)]
(assert (not (Set_in r@248@01 setOfRef@10@01)))
(pop) ; 9
(push) ; 9
; [else-branch: 39 | r@248@01 in setOfRef@10@01]
(assert (Set_in r@248@01 setOfRef@10@01))
; [eval] (j in edges_domain(r.edges))
; [eval] edges_domain(r.edges)
(assert (and
  (forall ((r $Ref)) (!
    (=>
      (= r nodeCopy@84@01)
      (=
        ($FVF.lookup_edges (as sm@245@01  $FVF<edges>) r)
        ($FVF.lookup_edges (as sm@227@01  $FVF<edges>) r)))
    :pattern (($FVF.lookup_edges (as sm@245@01  $FVF<edges>) r))
    :pattern (($FVF.lookup_edges (as sm@227@01  $FVF<edges>) r))
    :qid |qp.fvfValDef56|))
  (forall ((r $Ref)) (!
    (=>
      (ite
        (and (img@221@01 r) (Set_in (inv@220@01 r) res_copy_nodes@197@01))
        (< $Perm.No (- $Perm.Write (pTaken@226@01 r)))
        false)
      (=
        ($FVF.lookup_edges (as sm@245@01  $FVF<edges>) r)
        ($FVF.lookup_edges ($SortWrappers.$SnapTo$FVF<edges> ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@198@01)))))))))))) r)))
    :pattern (($FVF.lookup_edges (as sm@245@01  $FVF<edges>) r))
    :pattern (($FVF.lookup_edges ($SortWrappers.$SnapTo$FVF<edges> ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@198@01)))))))))))) r))
    :qid |qp.fvfValDef57|))
  (forall ((r $Ref)) (!
    (=>
      (ite
        (and (img@209@01 r) (Set_in (inv@208@01 r) setOfRef@10@01))
        (< $Perm.No (/ rd@12@01 (to_real 2)))
        false)
      (=
        ($FVF.lookup_edges (as sm@245@01  $FVF<edges>) r)
        ($FVF.lookup_edges ($SortWrappers.$SnapTo$FVF<edges> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@198@01))))))) r)))
    :pattern (($FVF.lookup_edges (as sm@245@01  $FVF<edges>) r))
    :pattern (($FVF.lookup_edges ($SortWrappers.$SnapTo$FVF<edges> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@198@01))))))) r))
    :qid |qp.fvfValDef58|))
  (forall ((r $Ref)) (!
    (=>
      (ite
        (and (img@115@01 r) (Set_in (inv@114@01 r) setOfRef@10@01))
        (< $Perm.No (- rd@12@01 (pTaken@181@01 r)))
        false)
      (=
        ($FVF.lookup_edges (as sm@245@01  $FVF<edges>) r)
        ($FVF.lookup_edges ($SortWrappers.$SnapTo$FVF<edges> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@106@01)))))) r)))
    :pattern (($FVF.lookup_edges (as sm@245@01  $FVF<edges>) r))
    :pattern (($FVF.lookup_edges ($SortWrappers.$SnapTo$FVF<edges> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@106@01)))))) r))
    :qid |qp.fvfValDef59|))))
(push) ; 10
(assert (not (<
  $Perm.No
  (+
    (+
      (+
        (ite (= r@248@01 nodeCopy@84@01) $Perm.Write $Perm.No)
        (ite
          (and
            (img@221@01 r@248@01)
            (Set_in (inv@220@01 r@248@01) res_copy_nodes@197@01))
          (- $Perm.Write (pTaken@226@01 r@248@01))
          $Perm.No))
      (ite
        (and (img@209@01 r@248@01) (Set_in (inv@208@01 r@248@01) setOfRef@10@01))
        (/ rd@12@01 (to_real 2))
        $Perm.No))
    (ite
      (and (img@115@01 r@248@01) (Set_in (inv@114@01 r@248@01) setOfRef@10@01))
      (- rd@12@01 (pTaken@181@01 r@248@01))
      $Perm.No)))))
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
    (= r nodeCopy@84@01)
    (=
      ($FVF.lookup_edges (as sm@245@01  $FVF<edges>) r)
      ($FVF.lookup_edges (as sm@227@01  $FVF<edges>) r)))
  :pattern (($FVF.lookup_edges (as sm@245@01  $FVF<edges>) r))
  :pattern (($FVF.lookup_edges (as sm@227@01  $FVF<edges>) r))
  :qid |qp.fvfValDef56|)))
(assert (forall ((r $Ref)) (!
  (=>
    (ite
      (and (img@221@01 r) (Set_in (inv@220@01 r) res_copy_nodes@197@01))
      (< $Perm.No (- $Perm.Write (pTaken@226@01 r)))
      false)
    (=
      ($FVF.lookup_edges (as sm@245@01  $FVF<edges>) r)
      ($FVF.lookup_edges ($SortWrappers.$SnapTo$FVF<edges> ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@198@01)))))))))))) r)))
  :pattern (($FVF.lookup_edges (as sm@245@01  $FVF<edges>) r))
  :pattern (($FVF.lookup_edges ($SortWrappers.$SnapTo$FVF<edges> ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@198@01)))))))))))) r))
  :qid |qp.fvfValDef57|)))
(assert (forall ((r $Ref)) (!
  (=>
    (ite
      (and (img@209@01 r) (Set_in (inv@208@01 r) setOfRef@10@01))
      (< $Perm.No (/ rd@12@01 (to_real 2)))
      false)
    (=
      ($FVF.lookup_edges (as sm@245@01  $FVF<edges>) r)
      ($FVF.lookup_edges ($SortWrappers.$SnapTo$FVF<edges> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@198@01))))))) r)))
  :pattern (($FVF.lookup_edges (as sm@245@01  $FVF<edges>) r))
  :pattern (($FVF.lookup_edges ($SortWrappers.$SnapTo$FVF<edges> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@198@01))))))) r))
  :qid |qp.fvfValDef58|)))
(assert (forall ((r $Ref)) (!
  (=>
    (ite
      (and (img@115@01 r) (Set_in (inv@114@01 r) setOfRef@10@01))
      (< $Perm.No (- rd@12@01 (pTaken@181@01 r)))
      false)
    (=
      ($FVF.lookup_edges (as sm@245@01  $FVF<edges>) r)
      ($FVF.lookup_edges ($SortWrappers.$SnapTo$FVF<edges> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@106@01)))))) r)))
  :pattern (($FVF.lookup_edges (as sm@245@01  $FVF<edges>) r))
  :pattern (($FVF.lookup_edges ($SortWrappers.$SnapTo$FVF<edges> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@106@01)))))) r))
  :qid |qp.fvfValDef59|)))
(assert (or (Set_in r@248@01 setOfRef@10@01) (not (Set_in r@248@01 setOfRef@10@01))))
(push) ; 8
; [then-branch: 40 | r@248@01 in setOfRef@10@01 && j@249@01 in edges_domain[Set[Int]](Lookup(edges, sm@245@01, r@248@01)) | live]
; [else-branch: 40 | !(r@248@01 in setOfRef@10@01 && j@249@01 in edges_domain[Set[Int]](Lookup(edges, sm@245@01, r@248@01))) | live]
(push) ; 9
; [then-branch: 40 | r@248@01 in setOfRef@10@01 && j@249@01 in edges_domain[Set[Int]](Lookup(edges, sm@245@01, r@248@01))]
(assert (and
  (Set_in r@248@01 setOfRef@10@01)
  (Set_in j@249@01 (edges_domain<Set<Int>> ($FVF.lookup_edges (as sm@245@01  $FVF<edges>) r@248@01)))))
; [eval] (edge_lookup(r.edges, j) in setOfRef)
; [eval] edge_lookup(r.edges, j)
(assert (and
  (forall ((r $Ref)) (!
    (=>
      (= r nodeCopy@84@01)
      (=
        ($FVF.lookup_edges (as sm@245@01  $FVF<edges>) r)
        ($FVF.lookup_edges (as sm@227@01  $FVF<edges>) r)))
    :pattern (($FVF.lookup_edges (as sm@245@01  $FVF<edges>) r))
    :pattern (($FVF.lookup_edges (as sm@227@01  $FVF<edges>) r))
    :qid |qp.fvfValDef56|))
  (forall ((r $Ref)) (!
    (=>
      (ite
        (and (img@221@01 r) (Set_in (inv@220@01 r) res_copy_nodes@197@01))
        (< $Perm.No (- $Perm.Write (pTaken@226@01 r)))
        false)
      (=
        ($FVF.lookup_edges (as sm@245@01  $FVF<edges>) r)
        ($FVF.lookup_edges ($SortWrappers.$SnapTo$FVF<edges> ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@198@01)))))))))))) r)))
    :pattern (($FVF.lookup_edges (as sm@245@01  $FVF<edges>) r))
    :pattern (($FVF.lookup_edges ($SortWrappers.$SnapTo$FVF<edges> ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@198@01)))))))))))) r))
    :qid |qp.fvfValDef57|))
  (forall ((r $Ref)) (!
    (=>
      (ite
        (and (img@209@01 r) (Set_in (inv@208@01 r) setOfRef@10@01))
        (< $Perm.No (/ rd@12@01 (to_real 2)))
        false)
      (=
        ($FVF.lookup_edges (as sm@245@01  $FVF<edges>) r)
        ($FVF.lookup_edges ($SortWrappers.$SnapTo$FVF<edges> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@198@01))))))) r)))
    :pattern (($FVF.lookup_edges (as sm@245@01  $FVF<edges>) r))
    :pattern (($FVF.lookup_edges ($SortWrappers.$SnapTo$FVF<edges> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@198@01))))))) r))
    :qid |qp.fvfValDef58|))
  (forall ((r $Ref)) (!
    (=>
      (ite
        (and (img@115@01 r) (Set_in (inv@114@01 r) setOfRef@10@01))
        (< $Perm.No (- rd@12@01 (pTaken@181@01 r)))
        false)
      (=
        ($FVF.lookup_edges (as sm@245@01  $FVF<edges>) r)
        ($FVF.lookup_edges ($SortWrappers.$SnapTo$FVF<edges> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@106@01)))))) r)))
    :pattern (($FVF.lookup_edges (as sm@245@01  $FVF<edges>) r))
    :pattern (($FVF.lookup_edges ($SortWrappers.$SnapTo$FVF<edges> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@106@01)))))) r))
    :qid |qp.fvfValDef59|))))
(push) ; 10
(assert (not (<
  $Perm.No
  (+
    (+
      (+
        (ite (= r@248@01 nodeCopy@84@01) $Perm.Write $Perm.No)
        (ite
          (and
            (img@221@01 r@248@01)
            (Set_in (inv@220@01 r@248@01) res_copy_nodes@197@01))
          (- $Perm.Write (pTaken@226@01 r@248@01))
          $Perm.No))
      (ite
        (and (img@209@01 r@248@01) (Set_in (inv@208@01 r@248@01) setOfRef@10@01))
        (/ rd@12@01 (to_real 2))
        $Perm.No))
    (ite
      (and (img@115@01 r@248@01) (Set_in (inv@114@01 r@248@01) setOfRef@10@01))
      (- rd@12@01 (pTaken@181@01 r@248@01))
      $Perm.No)))))
(check-sat)
; unsat
(pop) ; 10
; 0.00s
; (get-info :all-statistics)
(pop) ; 9
(push) ; 9
; [else-branch: 40 | !(r@248@01 in setOfRef@10@01 && j@249@01 in edges_domain[Set[Int]](Lookup(edges, sm@245@01, r@248@01)))]
(assert (not
  (and
    (Set_in r@248@01 setOfRef@10@01)
    (Set_in j@249@01 (edges_domain<Set<Int>> ($FVF.lookup_edges (as sm@245@01  $FVF<edges>) r@248@01))))))
(pop) ; 9
(pop) ; 8
; Joined path conditions
(assert (forall ((r $Ref)) (!
  (=>
    (= r nodeCopy@84@01)
    (=
      ($FVF.lookup_edges (as sm@245@01  $FVF<edges>) r)
      ($FVF.lookup_edges (as sm@227@01  $FVF<edges>) r)))
  :pattern (($FVF.lookup_edges (as sm@245@01  $FVF<edges>) r))
  :pattern (($FVF.lookup_edges (as sm@227@01  $FVF<edges>) r))
  :qid |qp.fvfValDef56|)))
(assert (forall ((r $Ref)) (!
  (=>
    (ite
      (and (img@221@01 r) (Set_in (inv@220@01 r) res_copy_nodes@197@01))
      (< $Perm.No (- $Perm.Write (pTaken@226@01 r)))
      false)
    (=
      ($FVF.lookup_edges (as sm@245@01  $FVF<edges>) r)
      ($FVF.lookup_edges ($SortWrappers.$SnapTo$FVF<edges> ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@198@01)))))))))))) r)))
  :pattern (($FVF.lookup_edges (as sm@245@01  $FVF<edges>) r))
  :pattern (($FVF.lookup_edges ($SortWrappers.$SnapTo$FVF<edges> ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@198@01)))))))))))) r))
  :qid |qp.fvfValDef57|)))
(assert (forall ((r $Ref)) (!
  (=>
    (ite
      (and (img@209@01 r) (Set_in (inv@208@01 r) setOfRef@10@01))
      (< $Perm.No (/ rd@12@01 (to_real 2)))
      false)
    (=
      ($FVF.lookup_edges (as sm@245@01  $FVF<edges>) r)
      ($FVF.lookup_edges ($SortWrappers.$SnapTo$FVF<edges> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@198@01))))))) r)))
  :pattern (($FVF.lookup_edges (as sm@245@01  $FVF<edges>) r))
  :pattern (($FVF.lookup_edges ($SortWrappers.$SnapTo$FVF<edges> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@198@01))))))) r))
  :qid |qp.fvfValDef58|)))
(assert (forall ((r $Ref)) (!
  (=>
    (ite
      (and (img@115@01 r) (Set_in (inv@114@01 r) setOfRef@10@01))
      (< $Perm.No (- rd@12@01 (pTaken@181@01 r)))
      false)
    (=
      ($FVF.lookup_edges (as sm@245@01  $FVF<edges>) r)
      ($FVF.lookup_edges ($SortWrappers.$SnapTo$FVF<edges> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@106@01)))))) r)))
  :pattern (($FVF.lookup_edges (as sm@245@01  $FVF<edges>) r))
  :pattern (($FVF.lookup_edges ($SortWrappers.$SnapTo$FVF<edges> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@106@01)))))) r))
  :qid |qp.fvfValDef59|)))
; Joined path conditions
(assert (or
  (not
    (and
      (Set_in r@248@01 setOfRef@10@01)
      (Set_in j@249@01 (edges_domain<Set<Int>> ($FVF.lookup_edges (as sm@245@01  $FVF<edges>) r@248@01)))))
  (and
    (Set_in r@248@01 setOfRef@10@01)
    (Set_in j@249@01 (edges_domain<Set<Int>> ($FVF.lookup_edges (as sm@245@01  $FVF<edges>) r@248@01))))))
(pop) ; 7
; Nested auxiliary terms: globals (aux)
(assert (forall ((r $Ref)) (!
  (=>
    (= r nodeCopy@84@01)
    (=
      ($FVF.lookup_edges (as sm@245@01  $FVF<edges>) r)
      ($FVF.lookup_edges (as sm@227@01  $FVF<edges>) r)))
  :pattern (($FVF.lookup_edges (as sm@245@01  $FVF<edges>) r))
  :pattern (($FVF.lookup_edges (as sm@227@01  $FVF<edges>) r))
  :qid |qp.fvfValDef56|)))
(assert (forall ((r $Ref)) (!
  (=>
    (ite
      (and (img@221@01 r) (Set_in (inv@220@01 r) res_copy_nodes@197@01))
      (< $Perm.No (- $Perm.Write (pTaken@226@01 r)))
      false)
    (=
      ($FVF.lookup_edges (as sm@245@01  $FVF<edges>) r)
      ($FVF.lookup_edges ($SortWrappers.$SnapTo$FVF<edges> ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@198@01)))))))))))) r)))
  :pattern (($FVF.lookup_edges (as sm@245@01  $FVF<edges>) r))
  :pattern (($FVF.lookup_edges ($SortWrappers.$SnapTo$FVF<edges> ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@198@01)))))))))))) r))
  :qid |qp.fvfValDef57|)))
(assert (forall ((r $Ref)) (!
  (=>
    (ite
      (and (img@209@01 r) (Set_in (inv@208@01 r) setOfRef@10@01))
      (< $Perm.No (/ rd@12@01 (to_real 2)))
      false)
    (=
      ($FVF.lookup_edges (as sm@245@01  $FVF<edges>) r)
      ($FVF.lookup_edges ($SortWrappers.$SnapTo$FVF<edges> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@198@01))))))) r)))
  :pattern (($FVF.lookup_edges (as sm@245@01  $FVF<edges>) r))
  :pattern (($FVF.lookup_edges ($SortWrappers.$SnapTo$FVF<edges> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@198@01))))))) r))
  :qid |qp.fvfValDef58|)))
(assert (forall ((r $Ref)) (!
  (=>
    (ite
      (and (img@115@01 r) (Set_in (inv@114@01 r) setOfRef@10@01))
      (< $Perm.No (- rd@12@01 (pTaken@181@01 r)))
      false)
    (=
      ($FVF.lookup_edges (as sm@245@01  $FVF<edges>) r)
      ($FVF.lookup_edges ($SortWrappers.$SnapTo$FVF<edges> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@106@01)))))) r)))
  :pattern (($FVF.lookup_edges (as sm@245@01  $FVF<edges>) r))
  :pattern (($FVF.lookup_edges ($SortWrappers.$SnapTo$FVF<edges> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@106@01)))))) r))
  :qid |qp.fvfValDef59|)))
; Nested auxiliary terms: non-globals (aux)
(assert (forall ((r@248@01 $Ref) (j@249@01 Int)) (!
  (and
    (or (Set_in r@248@01 setOfRef@10@01) (not (Set_in r@248@01 setOfRef@10@01)))
    (or
      (not
        (and
          (Set_in r@248@01 setOfRef@10@01)
          (Set_in j@249@01 (edges_domain<Set<Int>> ($FVF.lookup_edges (as sm@245@01  $FVF<edges>) r@248@01)))))
      (and
        (Set_in r@248@01 setOfRef@10@01)
        (Set_in j@249@01 (edges_domain<Set<Int>> ($FVF.lookup_edges (as sm@245@01  $FVF<edges>) r@248@01))))))
  :pattern ((Set_in r@248@01 setOfRef@10@01) (Set_in j@249@01 (edges_domain<Set<Int>> ($FVF.lookup_edges (as sm@245@01  $FVF<edges>) r@248@01))))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/examples/graph-copy/graph-copy.vpr@150@17@150@125-aux|)))
(assert (forall ((r@248@01 $Ref) (j@249@01 Int)) (!
  (and
    (or (Set_in r@248@01 setOfRef@10@01) (not (Set_in r@248@01 setOfRef@10@01)))
    (or
      (not
        (and
          (Set_in r@248@01 setOfRef@10@01)
          (Set_in j@249@01 (edges_domain<Set<Int>> ($FVF.lookup_edges (as sm@245@01  $FVF<edges>) r@248@01)))))
      (and
        (Set_in r@248@01 setOfRef@10@01)
        (Set_in j@249@01 (edges_domain<Set<Int>> ($FVF.lookup_edges (as sm@245@01  $FVF<edges>) r@248@01))))))
  :pattern ((Set_in r@248@01 setOfRef@10@01) (edge_lookup<Ref> ($FVF.lookup_edges (as sm@245@01  $FVF<edges>) r@248@01) j@249@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/examples/graph-copy/graph-copy.vpr@150@17@150@125-aux|)))
(assert (forall ((r@248@01 $Ref) (j@249@01 Int)) (!
  (and
    (or (Set_in r@248@01 setOfRef@10@01) (not (Set_in r@248@01 setOfRef@10@01)))
    (or
      (not
        (and
          (Set_in r@248@01 setOfRef@10@01)
          (Set_in j@249@01 (edges_domain<Set<Int>> ($FVF.lookup_edges (as sm@245@01  $FVF<edges>) r@248@01)))))
      (and
        (Set_in r@248@01 setOfRef@10@01)
        (Set_in j@249@01 (edges_domain<Set<Int>> ($FVF.lookup_edges (as sm@245@01  $FVF<edges>) r@248@01))))))
  :pattern ((Set_in r@248@01 setOfRef@10@01) (Set_in (edge_lookup<Ref> ($FVF.lookup_edges (as sm@245@01  $FVF<edges>) r@248@01) j@249@01) setOfRef@10@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/examples/graph-copy/graph-copy.vpr@150@17@150@125-aux|)))
(assert (forall ((r@248@01 $Ref) (j@249@01 Int)) (!
  (and
    (or (Set_in r@248@01 setOfRef@10@01) (not (Set_in r@248@01 setOfRef@10@01)))
    (or
      (not
        (and
          (Set_in r@248@01 setOfRef@10@01)
          (Set_in j@249@01 (edges_domain<Set<Int>> ($FVF.lookup_edges (as sm@245@01  $FVF<edges>) r@248@01)))))
      (and
        (Set_in r@248@01 setOfRef@10@01)
        (Set_in j@249@01 (edges_domain<Set<Int>> ($FVF.lookup_edges (as sm@245@01  $FVF<edges>) r@248@01))))))
  :pattern ((edges_domain<Set<Int>> ($FVF.lookup_edges (as sm@245@01  $FVF<edges>) r@248@01)) (edge_lookup<Ref> ($FVF.lookup_edges (as sm@245@01  $FVF<edges>) r@248@01) j@249@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/examples/graph-copy/graph-copy.vpr@150@17@150@125-aux|)))
(assert (forall ((r@248@01 $Ref) (j@249@01 Int)) (!
  (and
    (or (Set_in r@248@01 setOfRef@10@01) (not (Set_in r@248@01 setOfRef@10@01)))
    (or
      (not
        (and
          (Set_in r@248@01 setOfRef@10@01)
          (Set_in j@249@01 (edges_domain<Set<Int>> ($FVF.lookup_edges (as sm@245@01  $FVF<edges>) r@248@01)))))
      (and
        (Set_in r@248@01 setOfRef@10@01)
        (Set_in j@249@01 (edges_domain<Set<Int>> ($FVF.lookup_edges (as sm@245@01  $FVF<edges>) r@248@01))))))
  :pattern ((edges_domain<Set<Int>> ($FVF.lookup_edges (as sm@245@01  $FVF<edges>) r@248@01)) (Set_in (edge_lookup<Ref> ($FVF.lookup_edges (as sm@245@01  $FVF<edges>) r@248@01) j@249@01) setOfRef@10@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/examples/graph-copy/graph-copy.vpr@150@17@150@125-aux|)))
(assert (forall ((r@248@01 $Ref) (j@249@01 Int)) (!
  (and
    (or (Set_in r@248@01 setOfRef@10@01) (not (Set_in r@248@01 setOfRef@10@01)))
    (or
      (not
        (and
          (Set_in r@248@01 setOfRef@10@01)
          (Set_in j@249@01 (edges_domain<Set<Int>> ($FVF.lookup_edges (as sm@245@01  $FVF<edges>) r@248@01)))))
      (and
        (Set_in r@248@01 setOfRef@10@01)
        (Set_in j@249@01 (edges_domain<Set<Int>> ($FVF.lookup_edges (as sm@245@01  $FVF<edges>) r@248@01))))))
  :pattern ((Set_in j@249@01 (edges_domain<Set<Int>> ($FVF.lookup_edges (as sm@245@01  $FVF<edges>) r@248@01))))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/examples/graph-copy/graph-copy.vpr@150@17@150@125-aux|)))
(assert (forall ((r@248@01 $Ref) (j@249@01 Int)) (!
  (and
    (or (Set_in r@248@01 setOfRef@10@01) (not (Set_in r@248@01 setOfRef@10@01)))
    (or
      (not
        (and
          (Set_in r@248@01 setOfRef@10@01)
          (Set_in j@249@01 (edges_domain<Set<Int>> ($FVF.lookup_edges (as sm@245@01  $FVF<edges>) r@248@01)))))
      (and
        (Set_in r@248@01 setOfRef@10@01)
        (Set_in j@249@01 (edges_domain<Set<Int>> ($FVF.lookup_edges (as sm@245@01  $FVF<edges>) r@248@01))))))
  :pattern ((Set_in (edge_lookup<Ref> ($FVF.lookup_edges (as sm@245@01  $FVF<edges>) r@248@01) j@249@01) setOfRef@10@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/examples/graph-copy/graph-copy.vpr@150@17@150@125-aux|)))
(push) ; 7
(assert (not (forall ((r@248@01 $Ref) (j@249@01 Int)) (!
  (=>
    (and
      (Set_in r@248@01 setOfRef@10@01)
      (Set_in j@249@01 (edges_domain<Set<Int>> ($FVF.lookup_edges (as sm@245@01  $FVF<edges>) r@248@01))))
    (Set_in (edge_lookup<Ref> ($FVF.lookup_edges (as sm@245@01  $FVF<edges>) r@248@01) j@249@01) setOfRef@10@01))
  :pattern ((Set_in r@248@01 setOfRef@10@01) (Set_in j@249@01 (edges_domain<Set<Int>> ($FVF.lookup_edges (as sm@245@01  $FVF<edges>) r@248@01))))
  :pattern ((Set_in r@248@01 setOfRef@10@01) (edge_lookup<Ref> ($FVF.lookup_edges (as sm@245@01  $FVF<edges>) r@248@01) j@249@01))
  :pattern ((Set_in r@248@01 setOfRef@10@01) (Set_in (edge_lookup<Ref> ($FVF.lookup_edges (as sm@245@01  $FVF<edges>) r@248@01) j@249@01) setOfRef@10@01))
  :pattern ((edges_domain<Set<Int>> ($FVF.lookup_edges (as sm@245@01  $FVF<edges>) r@248@01)) (edge_lookup<Ref> ($FVF.lookup_edges (as sm@245@01  $FVF<edges>) r@248@01) j@249@01))
  :pattern ((edges_domain<Set<Int>> ($FVF.lookup_edges (as sm@245@01  $FVF<edges>) r@248@01)) (Set_in (edge_lookup<Ref> ($FVF.lookup_edges (as sm@245@01  $FVF<edges>) r@248@01) j@249@01) setOfRef@10@01))
  :pattern ((Set_in j@249@01 (edges_domain<Set<Int>> ($FVF.lookup_edges (as sm@245@01  $FVF<edges>) r@248@01))))
  :pattern ((Set_in (edge_lookup<Ref> ($FVF.lookup_edges (as sm@245@01  $FVF<edges>) r@248@01) j@249@01) setOfRef@10@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/examples/graph-copy/graph-copy.vpr@150@17@150@125|))))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(assert (forall ((r@248@01 $Ref) (j@249@01 Int)) (!
  (=>
    (and
      (Set_in r@248@01 setOfRef@10@01)
      (Set_in j@249@01 (edges_domain<Set<Int>> ($FVF.lookup_edges (as sm@245@01  $FVF<edges>) r@248@01))))
    (Set_in (edge_lookup<Ref> ($FVF.lookup_edges (as sm@245@01  $FVF<edges>) r@248@01) j@249@01) setOfRef@10@01))
  :pattern ((Set_in r@248@01 setOfRef@10@01) (Set_in j@249@01 (edges_domain<Set<Int>> ($FVF.lookup_edges (as sm@245@01  $FVF<edges>) r@248@01))))
  :pattern ((Set_in r@248@01 setOfRef@10@01) (edge_lookup<Ref> ($FVF.lookup_edges (as sm@245@01  $FVF<edges>) r@248@01) j@249@01))
  :pattern ((Set_in r@248@01 setOfRef@10@01) (Set_in (edge_lookup<Ref> ($FVF.lookup_edges (as sm@245@01  $FVF<edges>) r@248@01) j@249@01) setOfRef@10@01))
  :pattern ((edges_domain<Set<Int>> ($FVF.lookup_edges (as sm@245@01  $FVF<edges>) r@248@01)) (edge_lookup<Ref> ($FVF.lookup_edges (as sm@245@01  $FVF<edges>) r@248@01) j@249@01))
  :pattern ((edges_domain<Set<Int>> ($FVF.lookup_edges (as sm@245@01  $FVF<edges>) r@248@01)) (Set_in (edge_lookup<Ref> ($FVF.lookup_edges (as sm@245@01  $FVF<edges>) r@248@01) j@249@01) setOfRef@10@01))
  :pattern ((Set_in j@249@01 (edges_domain<Set<Int>> ($FVF.lookup_edges (as sm@245@01  $FVF<edges>) r@248@01))))
  :pattern ((Set_in (edge_lookup<Ref> ($FVF.lookup_edges (as sm@245@01  $FVF<edges>) r@248@01) j@249@01) setOfRef@10@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/examples/graph-copy/graph-copy.vpr@150@17@150@125|)))
; [eval] (node_map_image subset res_copy_nodes)
(push) ; 7
(assert (not (Set_subset node_map_image@11@01 res_copy_nodes@197@01)))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(assert (Set_subset node_map_image@11@01 res_copy_nodes@197@01))
; [eval] |(setOfRef intersection res_copy_nodes)| == 0
; [eval] |(setOfRef intersection res_copy_nodes)|
; [eval] (setOfRef intersection res_copy_nodes)
; [eval] (forall r: Ref :: { (r in map_domain(res_node_map)) } { (lookup(res_node_map, r) in res_copy_nodes) } (r in map_domain(res_node_map)) ==> (lookup(res_node_map, r) in res_copy_nodes))
(declare-const r@250@01 $Ref)
(push) ; 7
; [eval] (r in map_domain(res_node_map)) ==> (lookup(res_node_map, r) in res_copy_nodes)
; [eval] (r in map_domain(res_node_map))
; [eval] map_domain(res_node_map)
(push) ; 8
; [then-branch: 41 | r@250@01 in map_domain[Seq[Ref]](res_node_map@196@01) | live]
; [else-branch: 41 | !(r@250@01 in map_domain[Seq[Ref]](res_node_map@196@01)) | live]
(push) ; 9
; [then-branch: 41 | r@250@01 in map_domain[Seq[Ref]](res_node_map@196@01)]
(assert (Seq_contains (map_domain<Seq<Ref>> res_node_map@196@01) r@250@01))
; [eval] (lookup(res_node_map, r) in res_copy_nodes)
; [eval] lookup(res_node_map, r)
(pop) ; 9
(push) ; 9
; [else-branch: 41 | !(r@250@01 in map_domain[Seq[Ref]](res_node_map@196@01))]
(assert (not (Seq_contains (map_domain<Seq<Ref>> res_node_map@196@01) r@250@01)))
(pop) ; 9
(pop) ; 8
; Joined path conditions
; Joined path conditions
(assert (or
  (not (Seq_contains (map_domain<Seq<Ref>> res_node_map@196@01) r@250@01))
  (Seq_contains (map_domain<Seq<Ref>> res_node_map@196@01) r@250@01)))
(pop) ; 7
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall ((r@250@01 $Ref)) (!
  (or
    (not (Seq_contains (map_domain<Seq<Ref>> res_node_map@196@01) r@250@01))
    (Seq_contains (map_domain<Seq<Ref>> res_node_map@196@01) r@250@01))
  :pattern ((Seq_contains (map_domain<Seq<Ref>> res_node_map@196@01) r@250@01))
  :pattern ((Seq_contains_trigger
    (map_domain<Seq<Ref>> res_node_map@196@01)
    r@250@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/examples/graph-copy/graph-copy.vpr@153@17@153@108-aux|)))
(assert (forall ((r@250@01 $Ref)) (!
  (or
    (not (Seq_contains (map_domain<Seq<Ref>> res_node_map@196@01) r@250@01))
    (Seq_contains (map_domain<Seq<Ref>> res_node_map@196@01) r@250@01))
  :pattern ((Seq_contains_trigger
    (map_domain<Seq<Ref>> res_node_map@196@01)
    r@250@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/examples/graph-copy/graph-copy.vpr@153@17@153@108-aux|)))
(assert (forall ((r@250@01 $Ref)) (!
  (or
    (not (Seq_contains (map_domain<Seq<Ref>> res_node_map@196@01) r@250@01))
    (Seq_contains (map_domain<Seq<Ref>> res_node_map@196@01) r@250@01))
  :pattern ((Set_in (lookup<Ref> res_node_map@196@01 r@250@01) res_copy_nodes@197@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/examples/graph-copy/graph-copy.vpr@153@17@153@108-aux|)))
(push) ; 7
(assert (not (forall ((r@250@01 $Ref)) (!
  (=>
    (Seq_contains (map_domain<Seq<Ref>> res_node_map@196@01) r@250@01)
    (Set_in (lookup<Ref> res_node_map@196@01 r@250@01) res_copy_nodes@197@01))
  :pattern ((Seq_contains (map_domain<Seq<Ref>> res_node_map@196@01) r@250@01))
  :pattern ((Seq_contains_trigger
    (map_domain<Seq<Ref>> res_node_map@196@01)
    r@250@01))
  :pattern ((Seq_contains_trigger
    (map_domain<Seq<Ref>> res_node_map@196@01)
    r@250@01))
  :pattern ((Set_in (lookup<Ref> res_node_map@196@01 r@250@01) res_copy_nodes@197@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/examples/graph-copy/graph-copy.vpr@153@17@153@108|))))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(assert (forall ((r@250@01 $Ref)) (!
  (=>
    (Seq_contains (map_domain<Seq<Ref>> res_node_map@196@01) r@250@01)
    (Set_in (lookup<Ref> res_node_map@196@01 r@250@01) res_copy_nodes@197@01))
  :pattern ((Seq_contains (map_domain<Seq<Ref>> res_node_map@196@01) r@250@01))
  :pattern ((Seq_contains_trigger
    (map_domain<Seq<Ref>> res_node_map@196@01)
    r@250@01))
  :pattern ((Set_in (lookup<Ref> res_node_map@196@01 r@250@01) res_copy_nodes@197@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/examples/graph-copy/graph-copy.vpr@153@17@153@108|)))
(declare-const r@251@01 $Ref)
(push) ; 7
; [eval] (r in res_copy_nodes)
(assert (Set_in r@251@01 res_copy_nodes@197@01))
(pop) ; 7
(declare-fun inv@252@01 ($Ref) $Ref)
(declare-fun img@253@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
; Check receiver injectivity
(push) ; 7
(assert (not (forall ((r1@251@01 $Ref) (r2@251@01 $Ref)) (!
  (=>
    (and
      (Set_in r1@251@01 res_copy_nodes@197@01)
      (Set_in r2@251@01 res_copy_nodes@197@01)
      (= r1@251@01 r2@251@01))
    (= r1@251@01 r2@251@01))
  
  :qid |val-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((r@251@01 $Ref)) (!
  (=>
    (Set_in r@251@01 res_copy_nodes@197@01)
    (and (= (inv@252@01 r@251@01) r@251@01) (img@253@01 r@251@01)))
  :pattern ((Set_in r@251@01 res_copy_nodes@197@01))
  :pattern ((inv@252@01 r@251@01))
  :pattern ((img@253@01 r@251@01))
  :qid |val-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@253@01 r) (Set_in (inv@252@01 r) res_copy_nodes@197@01))
    (= (inv@252@01 r) r))
  :pattern ((inv@252@01 r))
  :qid |val-fctOfInv|)))
; Precomputing data for removing quantified permissions
(define-fun pTaken@254@01 ((r $Ref)) $Perm
  (ite
    (and
      (Set_in (inv@252@01 r) res_copy_nodes@197@01)
      (img@253@01 r)
      (= r (inv@252@01 r)))
    ($Perm.min
      (ite
        (and (img@218@01 r) (Set_in (inv@217@01 r) res_copy_nodes@197@01))
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
        (and (img@218@01 r) (Set_in (inv@217@01 r) res_copy_nodes@197@01))
        $Perm.Write
        $Perm.No)
      (pTaken@254@01 r))
    $Perm.No)
  
  :qid |quant-u-13955|))))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
; Intermediate check if already taken enough permissions
(set-option :timeout 0)
(push) ; 7
(set-option :timeout 500)
(assert (not (forall ((r $Ref)) (!
  (=>
    (and
      (Set_in (inv@252@01 r) res_copy_nodes@197@01)
      (img@253@01 r)
      (= r (inv@252@01 r)))
    (= (- $Perm.Write (pTaken@254@01 r)) $Perm.No))
  
  :qid |quant-u-13956|))))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
; Final check if taken enough permissions
; Done removing quantified permissions
(declare-const r@255@01 $Ref)
(set-option :timeout 0)
(push) ; 7
; [eval] (r in res_copy_nodes)
(assert (Set_in r@255@01 res_copy_nodes@197@01))
(pop) ; 7
(declare-fun inv@256@01 ($Ref) $Ref)
(declare-fun img@257@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
; Check receiver injectivity
(push) ; 7
(assert (not (forall ((r1@255@01 $Ref) (r2@255@01 $Ref)) (!
  (=>
    (and
      (Set_in r1@255@01 res_copy_nodes@197@01)
      (Set_in r2@255@01 res_copy_nodes@197@01)
      (= r1@255@01 r2@255@01))
    (= r1@255@01 r2@255@01))
  
  :qid |edges-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((r@255@01 $Ref)) (!
  (=>
    (Set_in r@255@01 res_copy_nodes@197@01)
    (and (= (inv@256@01 r@255@01) r@255@01) (img@257@01 r@255@01)))
  :pattern ((Set_in r@255@01 res_copy_nodes@197@01))
  :pattern ((inv@256@01 r@255@01))
  :pattern ((img@257@01 r@255@01))
  :qid |edges-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@257@01 r) (Set_in (inv@256@01 r) res_copy_nodes@197@01))
    (= (inv@256@01 r) r))
  :pattern ((inv@256@01 r))
  :qid |edges-fctOfInv|)))
; Precomputing data for removing quantified permissions
(define-fun pTaken@258@01 ((r $Ref)) $Perm
  (ite
    (and
      (Set_in (inv@256@01 r) res_copy_nodes@197@01)
      (img@257@01 r)
      (= r (inv@256@01 r)))
    ($Perm.min
      (ite
        (and (img@221@01 r) (Set_in (inv@220@01 r) res_copy_nodes@197@01))
        (- $Perm.Write (pTaken@226@01 r))
        $Perm.No)
      $Perm.Write)
    $Perm.No))
(define-fun pTaken@259@01 ((r $Ref)) $Perm
  (ite
    (and
      (Set_in (inv@256@01 r) res_copy_nodes@197@01)
      (img@257@01 r)
      (= r (inv@256@01 r)))
    ($Perm.min
      (ite (= r nodeCopy@84@01) $Perm.Write $Perm.No)
      (- $Perm.Write (pTaken@258@01 r)))
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
        (and (img@221@01 r) (Set_in (inv@220@01 r) res_copy_nodes@197@01))
        (- $Perm.Write (pTaken@226@01 r))
        $Perm.No)
      (pTaken@258@01 r))
    $Perm.No)
  
  :qid |quant-u-13959|))))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
; Intermediate check if already taken enough permissions
(set-option :timeout 0)
(push) ; 7
(set-option :timeout 500)
(assert (not (forall ((r $Ref)) (!
  (=>
    (and
      (Set_in (inv@256@01 r) res_copy_nodes@197@01)
      (img@257@01 r)
      (= r (inv@256@01 r)))
    (= (- $Perm.Write (pTaken@258@01 r)) $Perm.No))
  
  :qid |quant-u-13960|))))
(check-sat)
; unknown
(pop) ; 7
; 0.01s
; (get-info :all-statistics)
; Chunk depleted?
(set-option :timeout 0)
(push) ; 7
(set-option :timeout 500)
(assert (not (= (- $Perm.Write (pTaken@259@01 nodeCopy@84@01)) $Perm.No)))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
; Intermediate check if already taken enough permissions
(set-option :timeout 0)
(push) ; 7
(set-option :timeout 500)
(assert (not (forall ((r $Ref)) (!
  (=>
    (and
      (Set_in (inv@256@01 r) res_copy_nodes@197@01)
      (img@257@01 r)
      (= r (inv@256@01 r)))
    (= (- (- $Perm.Write (pTaken@258@01 r)) (pTaken@259@01 r)) $Perm.No))
  
  :qid |quant-u-13962|))))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
; Final check if taken enough permissions
; Done removing quantified permissions
(pop) ; 6
(set-option :timeout 0)
(push) ; 6
; [else-branch: 27 | !(|S@100@01| > 0)]
(assert (not (> (Set_card S@100@01) 0)))
(pop) ; 6
; [eval] !(|S| > 0)
; [eval] |S| > 0
; [eval] |S|
(push) ; 6
(set-option :timeout 10)
(assert (not (> (Set_card S@100@01) 0)))
(check-sat)
; unknown
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 6
(set-option :timeout 10)
(assert (not (not (> (Set_card S@100@01) 0))))
(check-sat)
; unknown
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
; [then-branch: 42 | !(|S@100@01| > 0) | live]
; [else-branch: 42 | |S@100@01| > 0 | live]
(set-option :timeout 0)
(push) ; 6
; [then-branch: 42 | !(|S@100@01| > 0)]
(assert (not (> (Set_card S@100@01) 0)))
; [eval] nodeCopy != null
; [eval] (nodeCopy in res_copy_nodes)
; [eval] |(setOfRef intersection res_copy_nodes)| == 0
; [eval] |(setOfRef intersection res_copy_nodes)|
; [eval] (setOfRef intersection res_copy_nodes)
(declare-const x@260@01 $Ref)
(push) ; 7
; [eval] (x in setOfRef)
(assert (Set_in x@260@01 setOfRef@10@01))
(pop) ; 7
(declare-fun inv@261@01 ($Ref) $Ref)
(declare-fun img@262@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
(push) ; 7
(assert (not (forall ((x@260@01 $Ref)) (!
  (=>
    (Set_in x@260@01 setOfRef@10@01)
    (or (= rd@12@01 $Perm.No) (< $Perm.No rd@12@01)))
  
  :qid |quant-u-13963|))))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
; Check receiver injectivity
(push) ; 7
(assert (not (forall ((x1@260@01 $Ref) (x2@260@01 $Ref)) (!
  (=>
    (and
      (and (Set_in x1@260@01 setOfRef@10@01) (< $Perm.No rd@12@01))
      (and (Set_in x2@260@01 setOfRef@10@01) (< $Perm.No rd@12@01))
      (= x1@260@01 x2@260@01))
    (= x1@260@01 x2@260@01))
  
  :qid |val-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((x@260@01 $Ref)) (!
  (=>
    (and (Set_in x@260@01 setOfRef@10@01) (< $Perm.No rd@12@01))
    (and (= (inv@261@01 x@260@01) x@260@01) (img@262@01 x@260@01)))
  :pattern ((Set_in x@260@01 setOfRef@10@01))
  :pattern ((inv@261@01 x@260@01))
  :pattern ((img@262@01 x@260@01))
  :qid |val-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@262@01 r)
      (and (Set_in (inv@261@01 r) setOfRef@10@01) (< $Perm.No rd@12@01)))
    (= (inv@261@01 r) r))
  :pattern ((inv@261@01 r))
  :qid |val-fctOfInv|)))
; Precomputing data for removing quantified permissions
(define-fun pTaken@263@01 ((r $Ref)) $Perm
  (ite
    (and
      (Set_in (inv@261@01 r) setOfRef@10@01)
      (img@262@01 r)
      (= r (inv@261@01 r)))
    ($Perm.min
      (ite
        (and (img@109@01 r) (Set_in (inv@108@01 r) setOfRef@10@01))
        rd@12@01
        $Perm.No)
      rd@12@01)
    $Perm.No))
(define-fun pTaken@264@01 ((r $Ref)) $Perm
  (ite
    (and
      (Set_in (inv@261@01 r) setOfRef@10@01)
      (img@262@01 r)
      (= r (inv@261@01 r)))
    ($Perm.min
      (ite
        (and (img@125@01 r) (Set_in (inv@124@01 r) res_copy_nodes@105@01))
        $Perm.Write
        $Perm.No)
      (- rd@12@01 (pTaken@263@01 r)))
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
        (and (img@109@01 r) (Set_in (inv@108@01 r) setOfRef@10@01))
        rd@12@01
        $Perm.No)
      (pTaken@263@01 r))
    $Perm.No)
  
  :qid |quant-u-13965|))))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
; Intermediate check if already taken enough permissions
(set-option :timeout 0)
(push) ; 7
(set-option :timeout 500)
(assert (not (forall ((r $Ref)) (!
  (=>
    (and
      (Set_in (inv@261@01 r) setOfRef@10@01)
      (img@262@01 r)
      (= r (inv@261@01 r)))
    (= (- rd@12@01 (pTaken@263@01 r)) $Perm.No))
  
  :qid |quant-u-13966|))))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
; Final check if taken enough permissions
; Done removing quantified permissions
; [eval] (forall x: Ref :: { (x in setOfRef) } (x in setOfRef) ==> x.val == old(x.val))
(declare-const x@265@01 $Ref)
(set-option :timeout 0)
(push) ; 7
; [eval] (x in setOfRef) ==> x.val == old(x.val)
; [eval] (x in setOfRef)
(push) ; 8
; [then-branch: 43 | x@265@01 in setOfRef@10@01 | live]
; [else-branch: 43 | !(x@265@01 in setOfRef@10@01) | live]
(push) ; 9
; [then-branch: 43 | x@265@01 in setOfRef@10@01]
(assert (Set_in x@265@01 setOfRef@10@01))
; [eval] x.val == old(x.val)
(declare-const sm@266@01 $FVF<val>)
; Definitional axioms for snapshot map values
(assert (forall ((r $Ref)) (!
  (=>
    (ite
      (and (img@109@01 r) (Set_in (inv@108@01 r) setOfRef@10@01))
      (< $Perm.No rd@12@01)
      false)
    (=
      ($FVF.lookup_val (as sm@266@01  $FVF<val>) r)
      ($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.first ($Snap.second ($Snap.second $t@106@01)))) r)))
  :pattern (($FVF.lookup_val (as sm@266@01  $FVF<val>) r))
  :pattern (($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.first ($Snap.second ($Snap.second $t@106@01)))) r))
  :qid |qp.fvfValDef61|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@125@01 r) (Set_in (inv@124@01 r) res_copy_nodes@105@01))
    (=
      ($FVF.lookup_val (as sm@266@01  $FVF<val>) r)
      ($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@106@01))))))))))))) r)))
  :pattern (($FVF.lookup_val (as sm@266@01  $FVF<val>) r))
  :pattern (($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@106@01))))))))))))) r))
  :qid |qp.fvfValDef62|)))
(declare-const pm@267@01 $FPM)
(assert (forall ((r $Ref)) (!
  (=
    ($FVF.perm_val (as pm@267@01  $FPM) r)
    (+
      (ite
        (and (img@109@01 r) (Set_in (inv@108@01 r) setOfRef@10@01))
        rd@12@01
        $Perm.No)
      (ite
        (and (img@125@01 r) (Set_in (inv@124@01 r) res_copy_nodes@105@01))
        $Perm.Write
        $Perm.No)))
  :pattern (($FVF.perm_val (as pm@267@01  $FPM) r))
  :qid |qp.resPrmSumDef63|)))
(push) ; 10
(assert (not (< $Perm.No ($FVF.perm_val (as pm@267@01  $FPM) x@265@01))))
(check-sat)
; unsat
(pop) ; 10
; 0.00s
; (get-info :all-statistics)
; [eval] old(x.val)
(assert (and
  (forall ((r $Ref)) (!
    (=>
      (ite
        (and (img@19@01 r) (Set_in (inv@18@01 r) setOfRef@10@01))
        (< $Perm.No rd@12@01)
        false)
      (=
        ($FVF.lookup_val (as sm@111@01  $FVF<val>) r)
        ($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@16@01)))))) r)))
    :pattern (($FVF.lookup_val (as sm@111@01  $FVF<val>) r))
    :pattern (($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@16@01)))))) r))
    :qid |qp.fvfValDef20|))
  (forall ((r $Ref)) (!
    (=>
      (and (img@28@01 r) (Set_in (inv@27@01 r) node_map_image@11@01))
      (=
        ($FVF.lookup_val (as sm@111@01  $FVF<val>) r)
        ($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@16@01)))))))))) r)))
    :pattern (($FVF.lookup_val (as sm@111@01  $FVF<val>) r))
    :pattern (($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@16@01)))))))))) r))
    :qid |qp.fvfValDef21|))))
(push) ; 10
(assert (not (<
  $Perm.No
  (+
    (ite
      (and (img@19@01 x@265@01) (Set_in (inv@18@01 x@265@01) setOfRef@10@01))
      rd@12@01
      $Perm.No)
    (ite
      (and
        (img@28@01 x@265@01)
        (Set_in (inv@27@01 x@265@01) node_map_image@11@01))
      $Perm.Write
      $Perm.No)))))
(check-sat)
; unsat
(pop) ; 10
; 0.00s
; (get-info :all-statistics)
(pop) ; 9
(push) ; 9
; [else-branch: 43 | !(x@265@01 in setOfRef@10@01)]
(assert (not (Set_in x@265@01 setOfRef@10@01)))
(pop) ; 9
(pop) ; 8
; Joined path conditions
(assert (forall ((r $Ref)) (!
  (=>
    (ite
      (and (img@109@01 r) (Set_in (inv@108@01 r) setOfRef@10@01))
      (< $Perm.No rd@12@01)
      false)
    (=
      ($FVF.lookup_val (as sm@266@01  $FVF<val>) r)
      ($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.first ($Snap.second ($Snap.second $t@106@01)))) r)))
  :pattern (($FVF.lookup_val (as sm@266@01  $FVF<val>) r))
  :pattern (($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.first ($Snap.second ($Snap.second $t@106@01)))) r))
  :qid |qp.fvfValDef61|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@125@01 r) (Set_in (inv@124@01 r) res_copy_nodes@105@01))
    (=
      ($FVF.lookup_val (as sm@266@01  $FVF<val>) r)
      ($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@106@01))))))))))))) r)))
  :pattern (($FVF.lookup_val (as sm@266@01  $FVF<val>) r))
  :pattern (($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@106@01))))))))))))) r))
  :qid |qp.fvfValDef62|)))
(assert (forall ((r $Ref)) (!
  (=
    ($FVF.perm_val (as pm@267@01  $FPM) r)
    (+
      (ite
        (and (img@109@01 r) (Set_in (inv@108@01 r) setOfRef@10@01))
        rd@12@01
        $Perm.No)
      (ite
        (and (img@125@01 r) (Set_in (inv@124@01 r) res_copy_nodes@105@01))
        $Perm.Write
        $Perm.No)))
  :pattern (($FVF.perm_val (as pm@267@01  $FPM) r))
  :qid |qp.resPrmSumDef63|)))
(assert (forall ((r $Ref)) (!
  (=>
    (ite
      (and (img@19@01 r) (Set_in (inv@18@01 r) setOfRef@10@01))
      (< $Perm.No rd@12@01)
      false)
    (=
      ($FVF.lookup_val (as sm@111@01  $FVF<val>) r)
      ($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@16@01)))))) r)))
  :pattern (($FVF.lookup_val (as sm@111@01  $FVF<val>) r))
  :pattern (($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@16@01)))))) r))
  :qid |qp.fvfValDef20|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@28@01 r) (Set_in (inv@27@01 r) node_map_image@11@01))
    (=
      ($FVF.lookup_val (as sm@111@01  $FVF<val>) r)
      ($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@16@01)))))))))) r)))
  :pattern (($FVF.lookup_val (as sm@111@01  $FVF<val>) r))
  :pattern (($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@16@01)))))))))) r))
  :qid |qp.fvfValDef21|)))
; Joined path conditions
(assert (or (not (Set_in x@265@01 setOfRef@10@01)) (Set_in x@265@01 setOfRef@10@01)))
(pop) ; 7
; Nested auxiliary terms: globals (aux)
(assert (forall ((r $Ref)) (!
  (=>
    (ite
      (and (img@109@01 r) (Set_in (inv@108@01 r) setOfRef@10@01))
      (< $Perm.No rd@12@01)
      false)
    (=
      ($FVF.lookup_val (as sm@266@01  $FVF<val>) r)
      ($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.first ($Snap.second ($Snap.second $t@106@01)))) r)))
  :pattern (($FVF.lookup_val (as sm@266@01  $FVF<val>) r))
  :pattern (($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.first ($Snap.second ($Snap.second $t@106@01)))) r))
  :qid |qp.fvfValDef61|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@125@01 r) (Set_in (inv@124@01 r) res_copy_nodes@105@01))
    (=
      ($FVF.lookup_val (as sm@266@01  $FVF<val>) r)
      ($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@106@01))))))))))))) r)))
  :pattern (($FVF.lookup_val (as sm@266@01  $FVF<val>) r))
  :pattern (($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@106@01))))))))))))) r))
  :qid |qp.fvfValDef62|)))
(assert (forall ((r $Ref)) (!
  (=
    ($FVF.perm_val (as pm@267@01  $FPM) r)
    (+
      (ite
        (and (img@109@01 r) (Set_in (inv@108@01 r) setOfRef@10@01))
        rd@12@01
        $Perm.No)
      (ite
        (and (img@125@01 r) (Set_in (inv@124@01 r) res_copy_nodes@105@01))
        $Perm.Write
        $Perm.No)))
  :pattern (($FVF.perm_val (as pm@267@01  $FPM) r))
  :qid |qp.resPrmSumDef63|)))
(assert (forall ((r $Ref)) (!
  (=>
    (ite
      (and (img@19@01 r) (Set_in (inv@18@01 r) setOfRef@10@01))
      (< $Perm.No rd@12@01)
      false)
    (=
      ($FVF.lookup_val (as sm@111@01  $FVF<val>) r)
      ($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@16@01)))))) r)))
  :pattern (($FVF.lookup_val (as sm@111@01  $FVF<val>) r))
  :pattern (($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@16@01)))))) r))
  :qid |qp.fvfValDef20|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@28@01 r) (Set_in (inv@27@01 r) node_map_image@11@01))
    (=
      ($FVF.lookup_val (as sm@111@01  $FVF<val>) r)
      ($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@16@01)))))))))) r)))
  :pattern (($FVF.lookup_val (as sm@111@01  $FVF<val>) r))
  :pattern (($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@16@01)))))))))) r))
  :qid |qp.fvfValDef21|)))
; Nested auxiliary terms: non-globals (aux)
(assert (forall ((x@265@01 $Ref)) (!
  (or (not (Set_in x@265@01 setOfRef@10@01)) (Set_in x@265@01 setOfRef@10@01))
  :pattern ((Set_in x@265@01 setOfRef@10@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/examples/graph-copy/graph-copy.vpr@107@11@107@65-aux|)))
(push) ; 7
(assert (not (forall ((x@265@01 $Ref)) (!
  (=>
    (Set_in x@265@01 setOfRef@10@01)
    (=
      ($FVF.lookup_val (as sm@266@01  $FVF<val>) x@265@01)
      ($FVF.lookup_val (as sm@111@01  $FVF<val>) x@265@01)))
  :pattern ((Set_in x@265@01 setOfRef@10@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/examples/graph-copy/graph-copy.vpr@107@11@107@65|))))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(assert (forall ((x@265@01 $Ref)) (!
  (=>
    (Set_in x@265@01 setOfRef@10@01)
    (=
      ($FVF.lookup_val (as sm@266@01  $FVF<val>) x@265@01)
      ($FVF.lookup_val (as sm@111@01  $FVF<val>) x@265@01)))
  :pattern ((Set_in x@265@01 setOfRef@10@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/examples/graph-copy/graph-copy.vpr@107@11@107@65|)))
(declare-const x@268@01 $Ref)
(push) ; 7
; [eval] (x in setOfRef)
(assert (Set_in x@268@01 setOfRef@10@01))
(pop) ; 7
(declare-fun inv@269@01 ($Ref) $Ref)
(declare-fun img@270@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
(push) ; 7
(assert (not (forall ((x@268@01 $Ref)) (!
  (=>
    (Set_in x@268@01 setOfRef@10@01)
    (or (= rd@12@01 $Perm.No) (< $Perm.No rd@12@01)))
  
  :qid |quant-u-13967|))))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
; Check receiver injectivity
(push) ; 7
(assert (not (forall ((x1@268@01 $Ref) (x2@268@01 $Ref)) (!
  (=>
    (and
      (and (Set_in x1@268@01 setOfRef@10@01) (< $Perm.No rd@12@01))
      (and (Set_in x2@268@01 setOfRef@10@01) (< $Perm.No rd@12@01))
      (= x1@268@01 x2@268@01))
    (= x1@268@01 x2@268@01))
  
  :qid |edges-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((x@268@01 $Ref)) (!
  (=>
    (and (Set_in x@268@01 setOfRef@10@01) (< $Perm.No rd@12@01))
    (and (= (inv@269@01 x@268@01) x@268@01) (img@270@01 x@268@01)))
  :pattern ((Set_in x@268@01 setOfRef@10@01))
  :pattern ((inv@269@01 x@268@01))
  :pattern ((img@270@01 x@268@01))
  :qid |edges-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@270@01 r)
      (and (Set_in (inv@269@01 r) setOfRef@10@01) (< $Perm.No rd@12@01)))
    (= (inv@269@01 r) r))
  :pattern ((inv@269@01 r))
  :qid |edges-fctOfInv|)))
; Precomputing data for removing quantified permissions
(define-fun pTaken@271@01 ((r $Ref)) $Perm
  (ite
    (and
      (Set_in (inv@269@01 r) setOfRef@10@01)
      (img@270@01 r)
      (= r (inv@269@01 r)))
    ($Perm.min
      (ite
        (and (img@128@01 r) (Set_in (inv@127@01 r) res_copy_nodes@105@01))
        $Perm.Write
        $Perm.No)
      rd@12@01)
    $Perm.No))
(define-fun pTaken@272@01 ((r $Ref)) $Perm
  (ite
    (and
      (Set_in (inv@269@01 r) setOfRef@10@01)
      (img@270@01 r)
      (= r (inv@269@01 r)))
    ($Perm.min
      (ite
        (and (img@115@01 r) (Set_in (inv@114@01 r) setOfRef@10@01))
        rd@12@01
        $Perm.No)
      (- rd@12@01 (pTaken@271@01 r)))
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
        (and (img@128@01 r) (Set_in (inv@127@01 r) res_copy_nodes@105@01))
        $Perm.Write
        $Perm.No)
      (pTaken@271@01 r))
    $Perm.No)
  
  :qid |quant-u-13969|))))
(check-sat)
; unknown
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 7
(set-option :timeout 10)
(assert (not (forall ((r $Ref)) (!
  (= (pTaken@271@01 r) $Perm.No)
  
  :qid |quant-u-13970|))))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
; Intermediate check if already taken enough permissions
(set-option :timeout 0)
(push) ; 7
(set-option :timeout 500)
(assert (not (forall ((r $Ref)) (!
  (=>
    (and
      (Set_in (inv@269@01 r) setOfRef@10@01)
      (img@270@01 r)
      (= r (inv@269@01 r)))
    (= (- rd@12@01 (pTaken@271@01 r)) $Perm.No))
  
  :qid |quant-u-13971|))))
(check-sat)
; unknown
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
; Chunk depleted?
(set-option :timeout 0)
(push) ; 7
(set-option :timeout 500)
(assert (not (forall ((r $Ref)) (!
  (=
    (-
      (ite
        (and (img@115@01 r) (Set_in (inv@114@01 r) setOfRef@10@01))
        rd@12@01
        $Perm.No)
      (pTaken@272@01 r))
    $Perm.No)
  
  :qid |quant-u-13972|))))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
; Intermediate check if already taken enough permissions
(set-option :timeout 0)
(push) ; 7
(set-option :timeout 500)
(assert (not (forall ((r $Ref)) (!
  (=>
    (and
      (Set_in (inv@269@01 r) setOfRef@10@01)
      (img@270@01 r)
      (= r (inv@269@01 r)))
    (= (- (- rd@12@01 (pTaken@271@01 r)) (pTaken@272@01 r)) $Perm.No))
  
  :qid |quant-u-13973|))))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
; Final check if taken enough permissions
; Done removing quantified permissions
; [eval] (forall x: Ref :: { (x in setOfRef) } (x in setOfRef) ==> x.edges == old(x.edges))
(declare-const x@273@01 $Ref)
(set-option :timeout 0)
(push) ; 7
; [eval] (x in setOfRef) ==> x.edges == old(x.edges)
; [eval] (x in setOfRef)
(push) ; 8
; [then-branch: 44 | x@273@01 in setOfRef@10@01 | live]
; [else-branch: 44 | !(x@273@01 in setOfRef@10@01) | live]
(push) ; 9
; [then-branch: 44 | x@273@01 in setOfRef@10@01]
(assert (Set_in x@273@01 setOfRef@10@01))
; [eval] x.edges == old(x.edges)
(declare-const sm@274@01 $FVF<edges>)
; Definitional axioms for snapshot map values
(assert (forall ((r $Ref)) (!
  (=>
    (ite
      (and (img@115@01 r) (Set_in (inv@114@01 r) setOfRef@10@01))
      (< $Perm.No rd@12@01)
      false)
    (=
      ($FVF.lookup_edges (as sm@274@01  $FVF<edges>) r)
      ($FVF.lookup_edges ($SortWrappers.$SnapTo$FVF<edges> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@106@01)))))) r)))
  :pattern (($FVF.lookup_edges (as sm@274@01  $FVF<edges>) r))
  :pattern (($FVF.lookup_edges ($SortWrappers.$SnapTo$FVF<edges> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@106@01)))))) r))
  :qid |qp.fvfValDef64|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@128@01 r) (Set_in (inv@127@01 r) res_copy_nodes@105@01))
    (=
      ($FVF.lookup_edges (as sm@274@01  $FVF<edges>) r)
      ($FVF.lookup_edges ($SortWrappers.$SnapTo$FVF<edges> ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@106@01))))))))))))) r)))
  :pattern (($FVF.lookup_edges (as sm@274@01  $FVF<edges>) r))
  :pattern (($FVF.lookup_edges ($SortWrappers.$SnapTo$FVF<edges> ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@106@01))))))))))))) r))
  :qid |qp.fvfValDef65|)))
(declare-const pm@275@01 $FPM)
(assert (forall ((r $Ref)) (!
  (=
    ($FVF.perm_edges (as pm@275@01  $FPM) r)
    (+
      (ite
        (and (img@115@01 r) (Set_in (inv@114@01 r) setOfRef@10@01))
        rd@12@01
        $Perm.No)
      (ite
        (and (img@128@01 r) (Set_in (inv@127@01 r) res_copy_nodes@105@01))
        $Perm.Write
        $Perm.No)))
  :pattern (($FVF.perm_edges (as pm@275@01  $FPM) r))
  :qid |qp.resPrmSumDef66|)))
(push) ; 10
(assert (not (< $Perm.No ($FVF.perm_edges (as pm@275@01  $FPM) x@273@01))))
(check-sat)
; unsat
(pop) ; 10
; 0.00s
; (get-info :all-statistics)
; [eval] old(x.edges)
(assert (and
  (forall ((r $Ref)) (!
    (=>
      (ite
        (and (img@22@01 r) (Set_in (inv@21@01 r) setOfRef@10@01))
        (< $Perm.No rd@12@01)
        false)
      (=
        ($FVF.lookup_edges (as sm@117@01  $FVF<edges>) r)
        ($FVF.lookup_edges ($SortWrappers.$SnapTo$FVF<edges> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@16@01))))))) r)))
    :pattern (($FVF.lookup_edges (as sm@117@01  $FVF<edges>) r))
    :pattern (($FVF.lookup_edges ($SortWrappers.$SnapTo$FVF<edges> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@16@01))))))) r))
    :qid |qp.fvfValDef23|))
  (forall ((r $Ref)) (!
    (=>
      (and (img@31@01 r) (Set_in (inv@30@01 r) node_map_image@11@01))
      (=
        ($FVF.lookup_edges (as sm@117@01  $FVF<edges>) r)
        ($FVF.lookup_edges ($SortWrappers.$SnapTo$FVF<edges> ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@16@01)))))))))) r)))
    :pattern (($FVF.lookup_edges (as sm@117@01  $FVF<edges>) r))
    :pattern (($FVF.lookup_edges ($SortWrappers.$SnapTo$FVF<edges> ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@16@01)))))))))) r))
    :qid |qp.fvfValDef24|))))
(push) ; 10
(assert (not (<
  $Perm.No
  (+
    (ite
      (and (img@22@01 x@273@01) (Set_in (inv@21@01 x@273@01) setOfRef@10@01))
      rd@12@01
      $Perm.No)
    (ite
      (and
        (img@31@01 x@273@01)
        (Set_in (inv@30@01 x@273@01) node_map_image@11@01))
      $Perm.Write
      $Perm.No)))))
(check-sat)
; unsat
(pop) ; 10
; 0.00s
; (get-info :all-statistics)
(pop) ; 9
(push) ; 9
; [else-branch: 44 | !(x@273@01 in setOfRef@10@01)]
(assert (not (Set_in x@273@01 setOfRef@10@01)))
(pop) ; 9
(pop) ; 8
; Joined path conditions
(assert (forall ((r $Ref)) (!
  (=>
    (ite
      (and (img@115@01 r) (Set_in (inv@114@01 r) setOfRef@10@01))
      (< $Perm.No rd@12@01)
      false)
    (=
      ($FVF.lookup_edges (as sm@274@01  $FVF<edges>) r)
      ($FVF.lookup_edges ($SortWrappers.$SnapTo$FVF<edges> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@106@01)))))) r)))
  :pattern (($FVF.lookup_edges (as sm@274@01  $FVF<edges>) r))
  :pattern (($FVF.lookup_edges ($SortWrappers.$SnapTo$FVF<edges> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@106@01)))))) r))
  :qid |qp.fvfValDef64|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@128@01 r) (Set_in (inv@127@01 r) res_copy_nodes@105@01))
    (=
      ($FVF.lookup_edges (as sm@274@01  $FVF<edges>) r)
      ($FVF.lookup_edges ($SortWrappers.$SnapTo$FVF<edges> ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@106@01))))))))))))) r)))
  :pattern (($FVF.lookup_edges (as sm@274@01  $FVF<edges>) r))
  :pattern (($FVF.lookup_edges ($SortWrappers.$SnapTo$FVF<edges> ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@106@01))))))))))))) r))
  :qid |qp.fvfValDef65|)))
(assert (forall ((r $Ref)) (!
  (=
    ($FVF.perm_edges (as pm@275@01  $FPM) r)
    (+
      (ite
        (and (img@115@01 r) (Set_in (inv@114@01 r) setOfRef@10@01))
        rd@12@01
        $Perm.No)
      (ite
        (and (img@128@01 r) (Set_in (inv@127@01 r) res_copy_nodes@105@01))
        $Perm.Write
        $Perm.No)))
  :pattern (($FVF.perm_edges (as pm@275@01  $FPM) r))
  :qid |qp.resPrmSumDef66|)))
(assert (forall ((r $Ref)) (!
  (=>
    (ite
      (and (img@22@01 r) (Set_in (inv@21@01 r) setOfRef@10@01))
      (< $Perm.No rd@12@01)
      false)
    (=
      ($FVF.lookup_edges (as sm@117@01  $FVF<edges>) r)
      ($FVF.lookup_edges ($SortWrappers.$SnapTo$FVF<edges> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@16@01))))))) r)))
  :pattern (($FVF.lookup_edges (as sm@117@01  $FVF<edges>) r))
  :pattern (($FVF.lookup_edges ($SortWrappers.$SnapTo$FVF<edges> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@16@01))))))) r))
  :qid |qp.fvfValDef23|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@31@01 r) (Set_in (inv@30@01 r) node_map_image@11@01))
    (=
      ($FVF.lookup_edges (as sm@117@01  $FVF<edges>) r)
      ($FVF.lookup_edges ($SortWrappers.$SnapTo$FVF<edges> ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@16@01)))))))))) r)))
  :pattern (($FVF.lookup_edges (as sm@117@01  $FVF<edges>) r))
  :pattern (($FVF.lookup_edges ($SortWrappers.$SnapTo$FVF<edges> ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@16@01)))))))))) r))
  :qid |qp.fvfValDef24|)))
; Joined path conditions
(assert (or (not (Set_in x@273@01 setOfRef@10@01)) (Set_in x@273@01 setOfRef@10@01)))
(pop) ; 7
; Nested auxiliary terms: globals (aux)
(assert (forall ((r $Ref)) (!
  (=>
    (ite
      (and (img@115@01 r) (Set_in (inv@114@01 r) setOfRef@10@01))
      (< $Perm.No rd@12@01)
      false)
    (=
      ($FVF.lookup_edges (as sm@274@01  $FVF<edges>) r)
      ($FVF.lookup_edges ($SortWrappers.$SnapTo$FVF<edges> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@106@01)))))) r)))
  :pattern (($FVF.lookup_edges (as sm@274@01  $FVF<edges>) r))
  :pattern (($FVF.lookup_edges ($SortWrappers.$SnapTo$FVF<edges> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@106@01)))))) r))
  :qid |qp.fvfValDef64|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@128@01 r) (Set_in (inv@127@01 r) res_copy_nodes@105@01))
    (=
      ($FVF.lookup_edges (as sm@274@01  $FVF<edges>) r)
      ($FVF.lookup_edges ($SortWrappers.$SnapTo$FVF<edges> ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@106@01))))))))))))) r)))
  :pattern (($FVF.lookup_edges (as sm@274@01  $FVF<edges>) r))
  :pattern (($FVF.lookup_edges ($SortWrappers.$SnapTo$FVF<edges> ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@106@01))))))))))))) r))
  :qid |qp.fvfValDef65|)))
(assert (forall ((r $Ref)) (!
  (=
    ($FVF.perm_edges (as pm@275@01  $FPM) r)
    (+
      (ite
        (and (img@115@01 r) (Set_in (inv@114@01 r) setOfRef@10@01))
        rd@12@01
        $Perm.No)
      (ite
        (and (img@128@01 r) (Set_in (inv@127@01 r) res_copy_nodes@105@01))
        $Perm.Write
        $Perm.No)))
  :pattern (($FVF.perm_edges (as pm@275@01  $FPM) r))
  :qid |qp.resPrmSumDef66|)))
(assert (forall ((r $Ref)) (!
  (=>
    (ite
      (and (img@22@01 r) (Set_in (inv@21@01 r) setOfRef@10@01))
      (< $Perm.No rd@12@01)
      false)
    (=
      ($FVF.lookup_edges (as sm@117@01  $FVF<edges>) r)
      ($FVF.lookup_edges ($SortWrappers.$SnapTo$FVF<edges> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@16@01))))))) r)))
  :pattern (($FVF.lookup_edges (as sm@117@01  $FVF<edges>) r))
  :pattern (($FVF.lookup_edges ($SortWrappers.$SnapTo$FVF<edges> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@16@01))))))) r))
  :qid |qp.fvfValDef23|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@31@01 r) (Set_in (inv@30@01 r) node_map_image@11@01))
    (=
      ($FVF.lookup_edges (as sm@117@01  $FVF<edges>) r)
      ($FVF.lookup_edges ($SortWrappers.$SnapTo$FVF<edges> ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@16@01)))))))))) r)))
  :pattern (($FVF.lookup_edges (as sm@117@01  $FVF<edges>) r))
  :pattern (($FVF.lookup_edges ($SortWrappers.$SnapTo$FVF<edges> ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@16@01)))))))))) r))
  :qid |qp.fvfValDef24|)))
; Nested auxiliary terms: non-globals (aux)
(assert (forall ((x@273@01 $Ref)) (!
  (or (not (Set_in x@273@01 setOfRef@10@01)) (Set_in x@273@01 setOfRef@10@01))
  :pattern ((Set_in x@273@01 setOfRef@10@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/examples/graph-copy/graph-copy.vpr@109@11@109@69-aux|)))
(push) ; 7
(assert (not (forall ((x@273@01 $Ref)) (!
  (=>
    (Set_in x@273@01 setOfRef@10@01)
    (=
      ($FVF.lookup_edges (as sm@274@01  $FVF<edges>) x@273@01)
      ($FVF.lookup_edges (as sm@117@01  $FVF<edges>) x@273@01)))
  :pattern ((Set_in x@273@01 setOfRef@10@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/examples/graph-copy/graph-copy.vpr@109@11@109@69|))))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(assert (forall ((x@273@01 $Ref)) (!
  (=>
    (Set_in x@273@01 setOfRef@10@01)
    (=
      ($FVF.lookup_edges (as sm@274@01  $FVF<edges>) x@273@01)
      ($FVF.lookup_edges (as sm@117@01  $FVF<edges>) x@273@01)))
  :pattern ((Set_in x@273@01 setOfRef@10@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/examples/graph-copy/graph-copy.vpr@109@11@109@69|)))
; [eval] (forall x: Ref, i: Int :: { (x in setOfRef), (i in edges_domain(x.edges)) } { (x in setOfRef), edge_lookup(x.edges, i) } { (x in setOfRef), (edge_lookup(x.edges, i) in setOfRef) } { edges_domain(x.edges), edge_lookup(x.edges, i) } { edges_domain(x.edges), (edge_lookup(x.edges, i) in setOfRef) } { (i in edges_domain(x.edges)) } { (edge_lookup(x.edges, i) in setOfRef) } (x in setOfRef) && (i in edges_domain(x.edges)) ==> (edge_lookup(x.edges, i) in setOfRef))
(declare-const x@276@01 $Ref)
(declare-const i@277@01 Int)
(push) ; 7
; [eval] (x in setOfRef) && (i in edges_domain(x.edges)) ==> (edge_lookup(x.edges, i) in setOfRef)
; [eval] (x in setOfRef) && (i in edges_domain(x.edges))
; [eval] (x in setOfRef)
(push) ; 8
; [then-branch: 45 | !(x@276@01 in setOfRef@10@01) | live]
; [else-branch: 45 | x@276@01 in setOfRef@10@01 | live]
(push) ; 9
; [then-branch: 45 | !(x@276@01 in setOfRef@10@01)]
(assert (not (Set_in x@276@01 setOfRef@10@01)))
(pop) ; 9
(push) ; 9
; [else-branch: 45 | x@276@01 in setOfRef@10@01]
(assert (Set_in x@276@01 setOfRef@10@01))
; [eval] (i in edges_domain(x.edges))
; [eval] edges_domain(x.edges)
(assert (and
  (forall ((r $Ref)) (!
    (=>
      (ite
        (and (img@115@01 r) (Set_in (inv@114@01 r) setOfRef@10@01))
        (< $Perm.No rd@12@01)
        false)
      (=
        ($FVF.lookup_edges (as sm@274@01  $FVF<edges>) r)
        ($FVF.lookup_edges ($SortWrappers.$SnapTo$FVF<edges> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@106@01)))))) r)))
    :pattern (($FVF.lookup_edges (as sm@274@01  $FVF<edges>) r))
    :pattern (($FVF.lookup_edges ($SortWrappers.$SnapTo$FVF<edges> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@106@01)))))) r))
    :qid |qp.fvfValDef64|))
  (forall ((r $Ref)) (!
    (=>
      (and (img@128@01 r) (Set_in (inv@127@01 r) res_copy_nodes@105@01))
      (=
        ($FVF.lookup_edges (as sm@274@01  $FVF<edges>) r)
        ($FVF.lookup_edges ($SortWrappers.$SnapTo$FVF<edges> ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@106@01))))))))))))) r)))
    :pattern (($FVF.lookup_edges (as sm@274@01  $FVF<edges>) r))
    :pattern (($FVF.lookup_edges ($SortWrappers.$SnapTo$FVF<edges> ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@106@01))))))))))))) r))
    :qid |qp.fvfValDef65|))))
(push) ; 10
(assert (not (<
  $Perm.No
  (+
    (ite
      (and (img@115@01 x@276@01) (Set_in (inv@114@01 x@276@01) setOfRef@10@01))
      rd@12@01
      $Perm.No)
    (ite
      (and
        (img@128@01 x@276@01)
        (Set_in (inv@127@01 x@276@01) res_copy_nodes@105@01))
      $Perm.Write
      $Perm.No)))))
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
    (ite
      (and (img@115@01 r) (Set_in (inv@114@01 r) setOfRef@10@01))
      (< $Perm.No rd@12@01)
      false)
    (=
      ($FVF.lookup_edges (as sm@274@01  $FVF<edges>) r)
      ($FVF.lookup_edges ($SortWrappers.$SnapTo$FVF<edges> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@106@01)))))) r)))
  :pattern (($FVF.lookup_edges (as sm@274@01  $FVF<edges>) r))
  :pattern (($FVF.lookup_edges ($SortWrappers.$SnapTo$FVF<edges> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@106@01)))))) r))
  :qid |qp.fvfValDef64|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@128@01 r) (Set_in (inv@127@01 r) res_copy_nodes@105@01))
    (=
      ($FVF.lookup_edges (as sm@274@01  $FVF<edges>) r)
      ($FVF.lookup_edges ($SortWrappers.$SnapTo$FVF<edges> ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@106@01))))))))))))) r)))
  :pattern (($FVF.lookup_edges (as sm@274@01  $FVF<edges>) r))
  :pattern (($FVF.lookup_edges ($SortWrappers.$SnapTo$FVF<edges> ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@106@01))))))))))))) r))
  :qid |qp.fvfValDef65|)))
(assert (or (Set_in x@276@01 setOfRef@10@01) (not (Set_in x@276@01 setOfRef@10@01))))
(push) ; 8
; [then-branch: 46 | x@276@01 in setOfRef@10@01 && i@277@01 in edges_domain[Set[Int]](Lookup(edges, sm@274@01, x@276@01)) | live]
; [else-branch: 46 | !(x@276@01 in setOfRef@10@01 && i@277@01 in edges_domain[Set[Int]](Lookup(edges, sm@274@01, x@276@01))) | live]
(push) ; 9
; [then-branch: 46 | x@276@01 in setOfRef@10@01 && i@277@01 in edges_domain[Set[Int]](Lookup(edges, sm@274@01, x@276@01))]
(assert (and
  (Set_in x@276@01 setOfRef@10@01)
  (Set_in i@277@01 (edges_domain<Set<Int>> ($FVF.lookup_edges (as sm@274@01  $FVF<edges>) x@276@01)))))
; [eval] (edge_lookup(x.edges, i) in setOfRef)
; [eval] edge_lookup(x.edges, i)
(assert (and
  (forall ((r $Ref)) (!
    (=>
      (ite
        (and (img@115@01 r) (Set_in (inv@114@01 r) setOfRef@10@01))
        (< $Perm.No rd@12@01)
        false)
      (=
        ($FVF.lookup_edges (as sm@274@01  $FVF<edges>) r)
        ($FVF.lookup_edges ($SortWrappers.$SnapTo$FVF<edges> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@106@01)))))) r)))
    :pattern (($FVF.lookup_edges (as sm@274@01  $FVF<edges>) r))
    :pattern (($FVF.lookup_edges ($SortWrappers.$SnapTo$FVF<edges> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@106@01)))))) r))
    :qid |qp.fvfValDef64|))
  (forall ((r $Ref)) (!
    (=>
      (and (img@128@01 r) (Set_in (inv@127@01 r) res_copy_nodes@105@01))
      (=
        ($FVF.lookup_edges (as sm@274@01  $FVF<edges>) r)
        ($FVF.lookup_edges ($SortWrappers.$SnapTo$FVF<edges> ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@106@01))))))))))))) r)))
    :pattern (($FVF.lookup_edges (as sm@274@01  $FVF<edges>) r))
    :pattern (($FVF.lookup_edges ($SortWrappers.$SnapTo$FVF<edges> ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@106@01))))))))))))) r))
    :qid |qp.fvfValDef65|))))
(push) ; 10
(assert (not (<
  $Perm.No
  (+
    (ite
      (and (img@115@01 x@276@01) (Set_in (inv@114@01 x@276@01) setOfRef@10@01))
      rd@12@01
      $Perm.No)
    (ite
      (and
        (img@128@01 x@276@01)
        (Set_in (inv@127@01 x@276@01) res_copy_nodes@105@01))
      $Perm.Write
      $Perm.No)))))
(check-sat)
; unsat
(pop) ; 10
; 0.00s
; (get-info :all-statistics)
(pop) ; 9
(push) ; 9
; [else-branch: 46 | !(x@276@01 in setOfRef@10@01 && i@277@01 in edges_domain[Set[Int]](Lookup(edges, sm@274@01, x@276@01)))]
(assert (not
  (and
    (Set_in x@276@01 setOfRef@10@01)
    (Set_in i@277@01 (edges_domain<Set<Int>> ($FVF.lookup_edges (as sm@274@01  $FVF<edges>) x@276@01))))))
(pop) ; 9
(pop) ; 8
; Joined path conditions
(assert (forall ((r $Ref)) (!
  (=>
    (ite
      (and (img@115@01 r) (Set_in (inv@114@01 r) setOfRef@10@01))
      (< $Perm.No rd@12@01)
      false)
    (=
      ($FVF.lookup_edges (as sm@274@01  $FVF<edges>) r)
      ($FVF.lookup_edges ($SortWrappers.$SnapTo$FVF<edges> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@106@01)))))) r)))
  :pattern (($FVF.lookup_edges (as sm@274@01  $FVF<edges>) r))
  :pattern (($FVF.lookup_edges ($SortWrappers.$SnapTo$FVF<edges> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@106@01)))))) r))
  :qid |qp.fvfValDef64|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@128@01 r) (Set_in (inv@127@01 r) res_copy_nodes@105@01))
    (=
      ($FVF.lookup_edges (as sm@274@01  $FVF<edges>) r)
      ($FVF.lookup_edges ($SortWrappers.$SnapTo$FVF<edges> ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@106@01))))))))))))) r)))
  :pattern (($FVF.lookup_edges (as sm@274@01  $FVF<edges>) r))
  :pattern (($FVF.lookup_edges ($SortWrappers.$SnapTo$FVF<edges> ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@106@01))))))))))))) r))
  :qid |qp.fvfValDef65|)))
; Joined path conditions
(assert (or
  (not
    (and
      (Set_in x@276@01 setOfRef@10@01)
      (Set_in i@277@01 (edges_domain<Set<Int>> ($FVF.lookup_edges (as sm@274@01  $FVF<edges>) x@276@01)))))
  (and
    (Set_in x@276@01 setOfRef@10@01)
    (Set_in i@277@01 (edges_domain<Set<Int>> ($FVF.lookup_edges (as sm@274@01  $FVF<edges>) x@276@01))))))
(pop) ; 7
; Nested auxiliary terms: globals (aux)
(assert (forall ((r $Ref)) (!
  (=>
    (ite
      (and (img@115@01 r) (Set_in (inv@114@01 r) setOfRef@10@01))
      (< $Perm.No rd@12@01)
      false)
    (=
      ($FVF.lookup_edges (as sm@274@01  $FVF<edges>) r)
      ($FVF.lookup_edges ($SortWrappers.$SnapTo$FVF<edges> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@106@01)))))) r)))
  :pattern (($FVF.lookup_edges (as sm@274@01  $FVF<edges>) r))
  :pattern (($FVF.lookup_edges ($SortWrappers.$SnapTo$FVF<edges> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@106@01)))))) r))
  :qid |qp.fvfValDef64|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@128@01 r) (Set_in (inv@127@01 r) res_copy_nodes@105@01))
    (=
      ($FVF.lookup_edges (as sm@274@01  $FVF<edges>) r)
      ($FVF.lookup_edges ($SortWrappers.$SnapTo$FVF<edges> ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@106@01))))))))))))) r)))
  :pattern (($FVF.lookup_edges (as sm@274@01  $FVF<edges>) r))
  :pattern (($FVF.lookup_edges ($SortWrappers.$SnapTo$FVF<edges> ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@106@01))))))))))))) r))
  :qid |qp.fvfValDef65|)))
; Nested auxiliary terms: non-globals (aux)
(assert (forall ((x@276@01 $Ref) (i@277@01 Int)) (!
  (and
    (or (Set_in x@276@01 setOfRef@10@01) (not (Set_in x@276@01 setOfRef@10@01)))
    (or
      (not
        (and
          (Set_in x@276@01 setOfRef@10@01)
          (Set_in i@277@01 (edges_domain<Set<Int>> ($FVF.lookup_edges (as sm@274@01  $FVF<edges>) x@276@01)))))
      (and
        (Set_in x@276@01 setOfRef@10@01)
        (Set_in i@277@01 (edges_domain<Set<Int>> ($FVF.lookup_edges (as sm@274@01  $FVF<edges>) x@276@01))))))
  :pattern ((Set_in x@276@01 setOfRef@10@01) (Set_in i@277@01 (edges_domain<Set<Int>> ($FVF.lookup_edges (as sm@274@01  $FVF<edges>) x@276@01))))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/examples/graph-copy/graph-copy.vpr@110@11@110@119-aux|)))
(assert (forall ((x@276@01 $Ref) (i@277@01 Int)) (!
  (and
    (or (Set_in x@276@01 setOfRef@10@01) (not (Set_in x@276@01 setOfRef@10@01)))
    (or
      (not
        (and
          (Set_in x@276@01 setOfRef@10@01)
          (Set_in i@277@01 (edges_domain<Set<Int>> ($FVF.lookup_edges (as sm@274@01  $FVF<edges>) x@276@01)))))
      (and
        (Set_in x@276@01 setOfRef@10@01)
        (Set_in i@277@01 (edges_domain<Set<Int>> ($FVF.lookup_edges (as sm@274@01  $FVF<edges>) x@276@01))))))
  :pattern ((Set_in x@276@01 setOfRef@10@01) (edge_lookup<Ref> ($FVF.lookup_edges (as sm@274@01  $FVF<edges>) x@276@01) i@277@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/examples/graph-copy/graph-copy.vpr@110@11@110@119-aux|)))
(assert (forall ((x@276@01 $Ref) (i@277@01 Int)) (!
  (and
    (or (Set_in x@276@01 setOfRef@10@01) (not (Set_in x@276@01 setOfRef@10@01)))
    (or
      (not
        (and
          (Set_in x@276@01 setOfRef@10@01)
          (Set_in i@277@01 (edges_domain<Set<Int>> ($FVF.lookup_edges (as sm@274@01  $FVF<edges>) x@276@01)))))
      (and
        (Set_in x@276@01 setOfRef@10@01)
        (Set_in i@277@01 (edges_domain<Set<Int>> ($FVF.lookup_edges (as sm@274@01  $FVF<edges>) x@276@01))))))
  :pattern ((Set_in x@276@01 setOfRef@10@01) (Set_in (edge_lookup<Ref> ($FVF.lookup_edges (as sm@274@01  $FVF<edges>) x@276@01) i@277@01) setOfRef@10@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/examples/graph-copy/graph-copy.vpr@110@11@110@119-aux|)))
(assert (forall ((x@276@01 $Ref) (i@277@01 Int)) (!
  (and
    (or (Set_in x@276@01 setOfRef@10@01) (not (Set_in x@276@01 setOfRef@10@01)))
    (or
      (not
        (and
          (Set_in x@276@01 setOfRef@10@01)
          (Set_in i@277@01 (edges_domain<Set<Int>> ($FVF.lookup_edges (as sm@274@01  $FVF<edges>) x@276@01)))))
      (and
        (Set_in x@276@01 setOfRef@10@01)
        (Set_in i@277@01 (edges_domain<Set<Int>> ($FVF.lookup_edges (as sm@274@01  $FVF<edges>) x@276@01))))))
  :pattern ((edges_domain<Set<Int>> ($FVF.lookup_edges (as sm@274@01  $FVF<edges>) x@276@01)) (edge_lookup<Ref> ($FVF.lookup_edges (as sm@274@01  $FVF<edges>) x@276@01) i@277@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/examples/graph-copy/graph-copy.vpr@110@11@110@119-aux|)))
(assert (forall ((x@276@01 $Ref) (i@277@01 Int)) (!
  (and
    (or (Set_in x@276@01 setOfRef@10@01) (not (Set_in x@276@01 setOfRef@10@01)))
    (or
      (not
        (and
          (Set_in x@276@01 setOfRef@10@01)
          (Set_in i@277@01 (edges_domain<Set<Int>> ($FVF.lookup_edges (as sm@274@01  $FVF<edges>) x@276@01)))))
      (and
        (Set_in x@276@01 setOfRef@10@01)
        (Set_in i@277@01 (edges_domain<Set<Int>> ($FVF.lookup_edges (as sm@274@01  $FVF<edges>) x@276@01))))))
  :pattern ((edges_domain<Set<Int>> ($FVF.lookup_edges (as sm@274@01  $FVF<edges>) x@276@01)) (Set_in (edge_lookup<Ref> ($FVF.lookup_edges (as sm@274@01  $FVF<edges>) x@276@01) i@277@01) setOfRef@10@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/examples/graph-copy/graph-copy.vpr@110@11@110@119-aux|)))
(assert (forall ((x@276@01 $Ref) (i@277@01 Int)) (!
  (and
    (or (Set_in x@276@01 setOfRef@10@01) (not (Set_in x@276@01 setOfRef@10@01)))
    (or
      (not
        (and
          (Set_in x@276@01 setOfRef@10@01)
          (Set_in i@277@01 (edges_domain<Set<Int>> ($FVF.lookup_edges (as sm@274@01  $FVF<edges>) x@276@01)))))
      (and
        (Set_in x@276@01 setOfRef@10@01)
        (Set_in i@277@01 (edges_domain<Set<Int>> ($FVF.lookup_edges (as sm@274@01  $FVF<edges>) x@276@01))))))
  :pattern ((Set_in i@277@01 (edges_domain<Set<Int>> ($FVF.lookup_edges (as sm@274@01  $FVF<edges>) x@276@01))))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/examples/graph-copy/graph-copy.vpr@110@11@110@119-aux|)))
(assert (forall ((x@276@01 $Ref) (i@277@01 Int)) (!
  (and
    (or (Set_in x@276@01 setOfRef@10@01) (not (Set_in x@276@01 setOfRef@10@01)))
    (or
      (not
        (and
          (Set_in x@276@01 setOfRef@10@01)
          (Set_in i@277@01 (edges_domain<Set<Int>> ($FVF.lookup_edges (as sm@274@01  $FVF<edges>) x@276@01)))))
      (and
        (Set_in x@276@01 setOfRef@10@01)
        (Set_in i@277@01 (edges_domain<Set<Int>> ($FVF.lookup_edges (as sm@274@01  $FVF<edges>) x@276@01))))))
  :pattern ((Set_in (edge_lookup<Ref> ($FVF.lookup_edges (as sm@274@01  $FVF<edges>) x@276@01) i@277@01) setOfRef@10@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/examples/graph-copy/graph-copy.vpr@110@11@110@119-aux|)))
(push) ; 7
(assert (not (forall ((x@276@01 $Ref) (i@277@01 Int)) (!
  (=>
    (and
      (Set_in x@276@01 setOfRef@10@01)
      (Set_in i@277@01 (edges_domain<Set<Int>> ($FVF.lookup_edges (as sm@274@01  $FVF<edges>) x@276@01))))
    (Set_in (edge_lookup<Ref> ($FVF.lookup_edges (as sm@274@01  $FVF<edges>) x@276@01) i@277@01) setOfRef@10@01))
  :pattern ((Set_in x@276@01 setOfRef@10@01) (Set_in i@277@01 (edges_domain<Set<Int>> ($FVF.lookup_edges (as sm@274@01  $FVF<edges>) x@276@01))))
  :pattern ((Set_in x@276@01 setOfRef@10@01) (edge_lookup<Ref> ($FVF.lookup_edges (as sm@274@01  $FVF<edges>) x@276@01) i@277@01))
  :pattern ((Set_in x@276@01 setOfRef@10@01) (Set_in (edge_lookup<Ref> ($FVF.lookup_edges (as sm@274@01  $FVF<edges>) x@276@01) i@277@01) setOfRef@10@01))
  :pattern ((edges_domain<Set<Int>> ($FVF.lookup_edges (as sm@274@01  $FVF<edges>) x@276@01)) (edge_lookup<Ref> ($FVF.lookup_edges (as sm@274@01  $FVF<edges>) x@276@01) i@277@01))
  :pattern ((edges_domain<Set<Int>> ($FVF.lookup_edges (as sm@274@01  $FVF<edges>) x@276@01)) (Set_in (edge_lookup<Ref> ($FVF.lookup_edges (as sm@274@01  $FVF<edges>) x@276@01) i@277@01) setOfRef@10@01))
  :pattern ((Set_in i@277@01 (edges_domain<Set<Int>> ($FVF.lookup_edges (as sm@274@01  $FVF<edges>) x@276@01))))
  :pattern ((Set_in (edge_lookup<Ref> ($FVF.lookup_edges (as sm@274@01  $FVF<edges>) x@276@01) i@277@01) setOfRef@10@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/examples/graph-copy/graph-copy.vpr@110@11@110@119|))))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(assert (forall ((x@276@01 $Ref) (i@277@01 Int)) (!
  (=>
    (and
      (Set_in x@276@01 setOfRef@10@01)
      (Set_in i@277@01 (edges_domain<Set<Int>> ($FVF.lookup_edges (as sm@274@01  $FVF<edges>) x@276@01))))
    (Set_in (edge_lookup<Ref> ($FVF.lookup_edges (as sm@274@01  $FVF<edges>) x@276@01) i@277@01) setOfRef@10@01))
  :pattern ((Set_in x@276@01 setOfRef@10@01) (Set_in i@277@01 (edges_domain<Set<Int>> ($FVF.lookup_edges (as sm@274@01  $FVF<edges>) x@276@01))))
  :pattern ((Set_in x@276@01 setOfRef@10@01) (edge_lookup<Ref> ($FVF.lookup_edges (as sm@274@01  $FVF<edges>) x@276@01) i@277@01))
  :pattern ((Set_in x@276@01 setOfRef@10@01) (Set_in (edge_lookup<Ref> ($FVF.lookup_edges (as sm@274@01  $FVF<edges>) x@276@01) i@277@01) setOfRef@10@01))
  :pattern ((edges_domain<Set<Int>> ($FVF.lookup_edges (as sm@274@01  $FVF<edges>) x@276@01)) (edge_lookup<Ref> ($FVF.lookup_edges (as sm@274@01  $FVF<edges>) x@276@01) i@277@01))
  :pattern ((edges_domain<Set<Int>> ($FVF.lookup_edges (as sm@274@01  $FVF<edges>) x@276@01)) (Set_in (edge_lookup<Ref> ($FVF.lookup_edges (as sm@274@01  $FVF<edges>) x@276@01) i@277@01) setOfRef@10@01))
  :pattern ((Set_in i@277@01 (edges_domain<Set<Int>> ($FVF.lookup_edges (as sm@274@01  $FVF<edges>) x@276@01))))
  :pattern ((Set_in (edge_lookup<Ref> ($FVF.lookup_edges (as sm@274@01  $FVF<edges>) x@276@01) i@277@01) setOfRef@10@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/examples/graph-copy/graph-copy.vpr@110@11@110@119|)))
; [eval] res_copy_nodes == (res_copy_nodes union old(node_map_image))
; [eval] (res_copy_nodes union old(node_map_image))
; [eval] old(node_map_image)
(push) ; 7
(assert (not (Set_equal res_copy_nodes@105@01 (Set_union res_copy_nodes@105@01 node_map_image@11@01))))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(assert (Set_equal res_copy_nodes@105@01 (Set_union res_copy_nodes@105@01 node_map_image@11@01)))
; [eval] (forall x: Ref :: { (x in map_domain(res_node_map)) } { (lookup(res_node_map, x) in res_copy_nodes) } (x in map_domain(res_node_map)) ==> (lookup(res_node_map, x) in res_copy_nodes))
(declare-const x@278@01 $Ref)
(push) ; 7
; [eval] (x in map_domain(res_node_map)) ==> (lookup(res_node_map, x) in res_copy_nodes)
; [eval] (x in map_domain(res_node_map))
; [eval] map_domain(res_node_map)
(push) ; 8
; [then-branch: 47 | x@278@01 in map_domain[Seq[Ref]](res_node_map@104@01) | live]
; [else-branch: 47 | !(x@278@01 in map_domain[Seq[Ref]](res_node_map@104@01)) | live]
(push) ; 9
; [then-branch: 47 | x@278@01 in map_domain[Seq[Ref]](res_node_map@104@01)]
(assert (Seq_contains (map_domain<Seq<Ref>> res_node_map@104@01) x@278@01))
; [eval] (lookup(res_node_map, x) in res_copy_nodes)
; [eval] lookup(res_node_map, x)
(pop) ; 9
(push) ; 9
; [else-branch: 47 | !(x@278@01 in map_domain[Seq[Ref]](res_node_map@104@01))]
(assert (not (Seq_contains (map_domain<Seq<Ref>> res_node_map@104@01) x@278@01)))
(pop) ; 9
(pop) ; 8
; Joined path conditions
; Joined path conditions
(assert (or
  (not (Seq_contains (map_domain<Seq<Ref>> res_node_map@104@01) x@278@01))
  (Seq_contains (map_domain<Seq<Ref>> res_node_map@104@01) x@278@01)))
(pop) ; 7
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall ((x@278@01 $Ref)) (!
  (or
    (not (Seq_contains (map_domain<Seq<Ref>> res_node_map@104@01) x@278@01))
    (Seq_contains (map_domain<Seq<Ref>> res_node_map@104@01) x@278@01))
  :pattern ((Seq_contains (map_domain<Seq<Ref>> res_node_map@104@01) x@278@01))
  :pattern ((Seq_contains_trigger
    (map_domain<Seq<Ref>> res_node_map@104@01)
    x@278@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/examples/graph-copy/graph-copy.vpr@112@11@112@102-aux|)))
(assert (forall ((x@278@01 $Ref)) (!
  (or
    (not (Seq_contains (map_domain<Seq<Ref>> res_node_map@104@01) x@278@01))
    (Seq_contains (map_domain<Seq<Ref>> res_node_map@104@01) x@278@01))
  :pattern ((Seq_contains_trigger
    (map_domain<Seq<Ref>> res_node_map@104@01)
    x@278@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/examples/graph-copy/graph-copy.vpr@112@11@112@102-aux|)))
(assert (forall ((x@278@01 $Ref)) (!
  (or
    (not (Seq_contains (map_domain<Seq<Ref>> res_node_map@104@01) x@278@01))
    (Seq_contains (map_domain<Seq<Ref>> res_node_map@104@01) x@278@01))
  :pattern ((Set_in (lookup<Ref> res_node_map@104@01 x@278@01) res_copy_nodes@105@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/examples/graph-copy/graph-copy.vpr@112@11@112@102-aux|)))
(push) ; 7
(assert (not (forall ((x@278@01 $Ref)) (!
  (=>
    (Seq_contains (map_domain<Seq<Ref>> res_node_map@104@01) x@278@01)
    (Set_in (lookup<Ref> res_node_map@104@01 x@278@01) res_copy_nodes@105@01))
  :pattern ((Seq_contains (map_domain<Seq<Ref>> res_node_map@104@01) x@278@01))
  :pattern ((Seq_contains_trigger
    (map_domain<Seq<Ref>> res_node_map@104@01)
    x@278@01))
  :pattern ((Seq_contains_trigger
    (map_domain<Seq<Ref>> res_node_map@104@01)
    x@278@01))
  :pattern ((Set_in (lookup<Ref> res_node_map@104@01 x@278@01) res_copy_nodes@105@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/examples/graph-copy/graph-copy.vpr@112@11@112@102|))))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(assert (forall ((x@278@01 $Ref)) (!
  (=>
    (Seq_contains (map_domain<Seq<Ref>> res_node_map@104@01) x@278@01)
    (Set_in (lookup<Ref> res_node_map@104@01 x@278@01) res_copy_nodes@105@01))
  :pattern ((Seq_contains (map_domain<Seq<Ref>> res_node_map@104@01) x@278@01))
  :pattern ((Seq_contains_trigger
    (map_domain<Seq<Ref>> res_node_map@104@01)
    x@278@01))
  :pattern ((Set_in (lookup<Ref> res_node_map@104@01 x@278@01) res_copy_nodes@105@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/examples/graph-copy/graph-copy.vpr@112@11@112@102|)))
(declare-const x@279@01 $Ref)
(push) ; 7
; [eval] (x in res_copy_nodes)
(assert (Set_in x@279@01 res_copy_nodes@105@01))
(pop) ; 7
(declare-fun inv@280@01 ($Ref) $Ref)
(declare-fun img@281@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
; Check receiver injectivity
(push) ; 7
(assert (not (forall ((x1@279@01 $Ref) (x2@279@01 $Ref)) (!
  (=>
    (and
      (Set_in x1@279@01 res_copy_nodes@105@01)
      (Set_in x2@279@01 res_copy_nodes@105@01)
      (= x1@279@01 x2@279@01))
    (= x1@279@01 x2@279@01))
  
  :qid |val-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((x@279@01 $Ref)) (!
  (=>
    (Set_in x@279@01 res_copy_nodes@105@01)
    (and (= (inv@280@01 x@279@01) x@279@01) (img@281@01 x@279@01)))
  :pattern ((Set_in x@279@01 res_copy_nodes@105@01))
  :pattern ((inv@280@01 x@279@01))
  :pattern ((img@281@01 x@279@01))
  :qid |val-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@281@01 r) (Set_in (inv@280@01 r) res_copy_nodes@105@01))
    (= (inv@280@01 r) r))
  :pattern ((inv@280@01 r))
  :qid |val-fctOfInv|)))
; Precomputing data for removing quantified permissions
(define-fun pTaken@282@01 ((r $Ref)) $Perm
  (ite
    (and
      (Set_in (inv@280@01 r) res_copy_nodes@105@01)
      (img@281@01 r)
      (= r (inv@280@01 r)))
    ($Perm.min
      (ite
        (and (img@125@01 r) (Set_in (inv@124@01 r) res_copy_nodes@105@01))
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
        (and (img@125@01 r) (Set_in (inv@124@01 r) res_copy_nodes@105@01))
        $Perm.Write
        $Perm.No)
      (pTaken@282@01 r))
    $Perm.No)
  
  :qid |quant-u-13976|))))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
; Intermediate check if already taken enough permissions
(set-option :timeout 0)
(push) ; 7
(set-option :timeout 500)
(assert (not (forall ((r $Ref)) (!
  (=>
    (and
      (Set_in (inv@280@01 r) res_copy_nodes@105@01)
      (img@281@01 r)
      (= r (inv@280@01 r)))
    (= (- $Perm.Write (pTaken@282@01 r)) $Perm.No))
  
  :qid |quant-u-13977|))))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
; Final check if taken enough permissions
; Done removing quantified permissions
(declare-const x@283@01 $Ref)
(set-option :timeout 0)
(push) ; 7
; [eval] (x in res_copy_nodes)
(assert (Set_in x@283@01 res_copy_nodes@105@01))
(pop) ; 7
(declare-fun inv@284@01 ($Ref) $Ref)
(declare-fun img@285@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
; Check receiver injectivity
(push) ; 7
(assert (not (forall ((x1@283@01 $Ref) (x2@283@01 $Ref)) (!
  (=>
    (and
      (Set_in x1@283@01 res_copy_nodes@105@01)
      (Set_in x2@283@01 res_copy_nodes@105@01)
      (= x1@283@01 x2@283@01))
    (= x1@283@01 x2@283@01))
  
  :qid |edges-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((x@283@01 $Ref)) (!
  (=>
    (Set_in x@283@01 res_copy_nodes@105@01)
    (and (= (inv@284@01 x@283@01) x@283@01) (img@285@01 x@283@01)))
  :pattern ((Set_in x@283@01 res_copy_nodes@105@01))
  :pattern ((inv@284@01 x@283@01))
  :pattern ((img@285@01 x@283@01))
  :qid |edges-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@285@01 r) (Set_in (inv@284@01 r) res_copy_nodes@105@01))
    (= (inv@284@01 r) r))
  :pattern ((inv@284@01 r))
  :qid |edges-fctOfInv|)))
; Precomputing data for removing quantified permissions
(define-fun pTaken@286@01 ((r $Ref)) $Perm
  (ite
    (and
      (Set_in (inv@284@01 r) res_copy_nodes@105@01)
      (img@285@01 r)
      (= r (inv@284@01 r)))
    ($Perm.min
      (ite
        (and (img@128@01 r) (Set_in (inv@127@01 r) res_copy_nodes@105@01))
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
        (and (img@128@01 r) (Set_in (inv@127@01 r) res_copy_nodes@105@01))
        $Perm.Write
        $Perm.No)
      (pTaken@286@01 r))
    $Perm.No)
  
  :qid |quant-u-13980|))))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
; Intermediate check if already taken enough permissions
(set-option :timeout 0)
(push) ; 7
(set-option :timeout 500)
(assert (not (forall ((r $Ref)) (!
  (=>
    (and
      (Set_in (inv@284@01 r) res_copy_nodes@105@01)
      (img@285@01 r)
      (= r (inv@284@01 r)))
    (= (- $Perm.Write (pTaken@286@01 r)) $Perm.No))
  
  :qid |quant-u-13981|))))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
; Final check if taken enough permissions
; Done removing quantified permissions
(pop) ; 6
(set-option :timeout 0)
(push) ; 6
; [else-branch: 42 | |S@100@01| > 0]
(assert (> (Set_card S@100@01) 0))
(pop) ; 6
(pop) ; 5
(pop) ; 4
(pop) ; 3
(push) ; 3
; [else-branch: 14 | has_node[Bool](node_map@9@01, this@8@01)]
(assert (has_node<Bool> node_map@9@01 this@8@01))
(pop) ; 3
(pop) ; 2
(pop) ; 1
; ---------- pop ----------
(declare-const s1@287@01 Set<Int>)
(declare-const s2@288@01 Set<Int>)
(declare-const i@289@01 Int)
(declare-const s1@290@01 Set<Int>)
(declare-const s2@291@01 Set<Int>)
(declare-const i@292@01 Int)
(push) ; 1
(declare-const $t@293@01 $Snap)
(assert (= $t@293@01 $Snap.unit))
; [eval] 0 < |s1|
; [eval] |s1|
(assert (< 0 (Set_card s1@290@01)))
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
(set-option :timeout 0)
(push) ; 2
(declare-const $t@294@01 $Snap)
(assert (= $t@294@01 ($Snap.combine ($Snap.first $t@294@01) ($Snap.second $t@294@01))))
(assert (= ($Snap.first $t@294@01) $Snap.unit))
; [eval] (i in s1)
(assert (Set_in i@292@01 s1@290@01))
(assert (= ($Snap.second $t@294@01) $Snap.unit))
; [eval] s2 == (s1 setminus Set(i))
; [eval] (s1 setminus Set(i))
; [eval] Set(i)
(assert (Set_equal s2@291@01 (Set_difference s1@290@01 (Set_singleton i@292@01))))
(pop) ; 2
(push) ; 2
; [exec]
; inhale false
(pop) ; 2
(pop) ; 1
