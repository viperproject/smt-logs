(get-info :version)
; (:version "4.12.1")
; Started: 2025-01-26 23:10:17
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
(declare-sort Seq<Int> 0)
(declare-sort Set<Seq<$Ref>> 0)
(declare-sort Set<Int> 0)
(declare-sort Set<$Ref> 0)
(declare-sort Set<$Snap> 0)
(declare-sort $FVF<src> 0)
(declare-sort $FVF<Integer_value> 0)
(declare-sort $FVF<dst> 0)
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
(declare-fun $SortWrappers.Seq<Int>To$Snap (Seq<Int>) $Snap)
(declare-fun $SortWrappers.$SnapToSeq<Int> ($Snap) Seq<Int>)
(assert (forall ((x Seq<Int>)) (!
    (= x ($SortWrappers.$SnapToSeq<Int>($SortWrappers.Seq<Int>To$Snap x)))
    :pattern (($SortWrappers.Seq<Int>To$Snap x))
    :qid |$Snap.$SnapToSeq<Int>To$Snap|
    )))
(assert (forall ((x $Snap)) (!
    (= x ($SortWrappers.Seq<Int>To$Snap($SortWrappers.$SnapToSeq<Int> x)))
    :pattern (($SortWrappers.$SnapToSeq<Int> x))
    :qid |$Snap.Seq<Int>To$SnapToSeq<Int>|
    )))
; Declaring additional sort wrappers
(declare-fun $SortWrappers.Set<Seq<$Ref>>To$Snap (Set<Seq<$Ref>>) $Snap)
(declare-fun $SortWrappers.$SnapToSet<Seq<$Ref>> ($Snap) Set<Seq<$Ref>>)
(assert (forall ((x Set<Seq<$Ref>>)) (!
    (= x ($SortWrappers.$SnapToSet<Seq<$Ref>>($SortWrappers.Set<Seq<$Ref>>To$Snap x)))
    :pattern (($SortWrappers.Set<Seq<$Ref>>To$Snap x))
    :qid |$Snap.$SnapToSet<Seq<$Ref>>To$Snap|
    )))
(assert (forall ((x $Snap)) (!
    (= x ($SortWrappers.Set<Seq<$Ref>>To$Snap($SortWrappers.$SnapToSet<Seq<$Ref>> x)))
    :pattern (($SortWrappers.$SnapToSet<Seq<$Ref>> x))
    :qid |$Snap.Set<Seq<$Ref>>To$SnapToSet<Seq<$Ref>>|
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
(declare-fun $SortWrappers.$FVF<src>To$Snap ($FVF<src>) $Snap)
(declare-fun $SortWrappers.$SnapTo$FVF<src> ($Snap) $FVF<src>)
(assert (forall ((x $FVF<src>)) (!
    (= x ($SortWrappers.$SnapTo$FVF<src>($SortWrappers.$FVF<src>To$Snap x)))
    :pattern (($SortWrappers.$FVF<src>To$Snap x))
    :qid |$Snap.$SnapTo$FVF<src>To$Snap|
    )))
(assert (forall ((x $Snap)) (!
    (= x ($SortWrappers.$FVF<src>To$Snap($SortWrappers.$SnapTo$FVF<src> x)))
    :pattern (($SortWrappers.$SnapTo$FVF<src> x))
    :qid |$Snap.$FVF<src>To$SnapTo$FVF<src>|
    )))
(declare-fun $SortWrappers.$FVF<Integer_value>To$Snap ($FVF<Integer_value>) $Snap)
(declare-fun $SortWrappers.$SnapTo$FVF<Integer_value> ($Snap) $FVF<Integer_value>)
(assert (forall ((x $FVF<Integer_value>)) (!
    (= x ($SortWrappers.$SnapTo$FVF<Integer_value>($SortWrappers.$FVF<Integer_value>To$Snap x)))
    :pattern (($SortWrappers.$FVF<Integer_value>To$Snap x))
    :qid |$Snap.$SnapTo$FVF<Integer_value>To$Snap|
    )))
(assert (forall ((x $Snap)) (!
    (= x ($SortWrappers.$FVF<Integer_value>To$Snap($SortWrappers.$SnapTo$FVF<Integer_value> x)))
    :pattern (($SortWrappers.$SnapTo$FVF<Integer_value> x))
    :qid |$Snap.$FVF<Integer_value>To$SnapTo$FVF<Integer_value>|
    )))
(declare-fun $SortWrappers.$FVF<dst>To$Snap ($FVF<dst>) $Snap)
(declare-fun $SortWrappers.$SnapTo$FVF<dst> ($Snap) $FVF<dst>)
(assert (forall ((x $FVF<dst>)) (!
    (= x ($SortWrappers.$SnapTo$FVF<dst>($SortWrappers.$FVF<dst>To$Snap x)))
    :pattern (($SortWrappers.$FVF<dst>To$Snap x))
    :qid |$Snap.$SnapTo$FVF<dst>To$Snap|
    )))
(assert (forall ((x $Snap)) (!
    (= x ($SortWrappers.$FVF<dst>To$Snap($SortWrappers.$SnapTo$FVF<dst> x)))
    :pattern (($SortWrappers.$SnapTo$FVF<dst> x))
    :qid |$Snap.$FVF<dst>To$SnapTo$FVF<dst>|
    )))
; ////////// Symbols
(declare-fun Set_card (Set<Seq<$Ref>>) Int)
(declare-const Set_empty Set<Seq<$Ref>>)
(declare-fun Set_in (Seq<$Ref> Set<Seq<$Ref>>) Bool)
(declare-fun Set_singleton (Seq<$Ref>) Set<Seq<$Ref>>)
(declare-fun Set_unionone (Set<Seq<$Ref>> Seq<$Ref>) Set<Seq<$Ref>>)
(declare-fun Set_union (Set<Seq<$Ref>> Set<Seq<$Ref>>) Set<Seq<$Ref>>)
(declare-fun Set_intersection (Set<Seq<$Ref>> Set<Seq<$Ref>>) Set<Seq<$Ref>>)
(declare-fun Set_difference (Set<Seq<$Ref>> Set<Seq<$Ref>>) Set<Seq<$Ref>>)
(declare-fun Set_subset (Set<Seq<$Ref>> Set<Seq<$Ref>>) Bool)
(declare-fun Set_equal (Set<Seq<$Ref>> Set<Seq<$Ref>>) Bool)
(declare-fun Set_skolem_diff (Set<Seq<$Ref>> Set<Seq<$Ref>>) Seq<$Ref>)
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
(declare-fun Seq_length (Seq<Int>) Int)
(declare-const Seq_empty Seq<Int>)
(declare-fun Seq_singleton (Int) Seq<Int>)
(declare-fun Seq_append (Seq<Int> Seq<Int>) Seq<Int>)
(declare-fun Seq_index (Seq<Int> Int) Int)
(declare-fun Seq_update (Seq<Int> Int Int) Seq<Int>)
(declare-fun Seq_take (Seq<Int> Int) Seq<Int>)
(declare-fun Seq_drop (Seq<Int> Int) Seq<Int>)
(declare-fun Seq_contains (Seq<Int> Int) Bool)
(declare-fun Seq_contains_trigger (Seq<Int> Int) Bool)
(declare-fun Seq_skolem (Seq<Int> Int) Int)
(declare-fun Seq_equal (Seq<Int> Seq<Int>) Bool)
(declare-fun Seq_skolem_diff (Seq<Int> Seq<Int>) Int)
(declare-fun Seq_range (Int Int) Seq<Int>)
; /field_value_functions_declarations.smt2 [src: Seq[Ref]]
(declare-fun $FVF.domain_src ($FVF<src>) Set<$Ref>)
(declare-fun $FVF.lookup_src ($FVF<src> $Ref) Seq<$Ref>)
(declare-fun $FVF.after_src ($FVF<src> $FVF<src>) Bool)
(declare-fun $FVF.loc_src (Seq<$Ref> $Ref) Bool)
(declare-fun $FVF.perm_src ($FPM $Ref) $Perm)
(declare-const $fvfTOP_src $FVF<src>)
; /field_value_functions_declarations.smt2 [Integer_value: Int]
(declare-fun $FVF.domain_Integer_value ($FVF<Integer_value>) Set<$Ref>)
(declare-fun $FVF.lookup_Integer_value ($FVF<Integer_value> $Ref) Int)
(declare-fun $FVF.after_Integer_value ($FVF<Integer_value> $FVF<Integer_value>) Bool)
(declare-fun $FVF.loc_Integer_value (Int $Ref) Bool)
(declare-fun $FVF.perm_Integer_value ($FPM $Ref) $Perm)
(declare-const $fvfTOP_Integer_value $FVF<Integer_value>)
; /field_value_functions_declarations.smt2 [dst: Seq[Ref]]
(declare-fun $FVF.domain_dst ($FVF<dst>) Set<$Ref>)
(declare-fun $FVF.lookup_dst ($FVF<dst> $Ref) Seq<$Ref>)
(declare-fun $FVF.after_dst ($FVF<dst> $FVF<dst>) Bool)
(declare-fun $FVF.loc_dst (Seq<$Ref> $Ref) Bool)
(declare-fun $FVF.perm_dst ($FPM $Ref) $Perm)
(declare-const $fvfTOP_dst $FVF<dst>)
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
(assert (forall ((s Seq<Int>)) (!
  (<= 0 (Seq_length s))
  :pattern ((Seq_length s))
  )))
(assert (= (Seq_length (as Seq_empty  Seq<Int>)) 0))
(assert (forall ((s Seq<Int>)) (!
  (=> (= (Seq_length s) 0) (= s (as Seq_empty  Seq<Int>)))
  :pattern ((Seq_length s))
  )))
(assert (forall ((e Int)) (!
  (= (Seq_length (Seq_singleton e)) 1)
  :pattern ((Seq_singleton e))
  )))
(assert (forall ((s0 Seq<Int>) (s1 Seq<Int>)) (!
  (=>
    (and
      (not (= s0 (as Seq_empty  Seq<Int>)))
      (not (= s1 (as Seq_empty  Seq<Int>))))
    (= (Seq_length (Seq_append s0 s1)) (+ (Seq_length s0) (Seq_length s1))))
  :pattern ((Seq_length (Seq_append s0 s1)))
  )))
(assert (forall ((s0 Seq<Int>) (s1 Seq<Int>)) (!
  (and
    (=> (= s0 (as Seq_empty  Seq<Int>)) (= (Seq_append s0 s1) s1))
    (=> (= s1 (as Seq_empty  Seq<Int>)) (= (Seq_append s0 s1) s0)))
  :pattern ((Seq_append s0 s1))
  )))
(assert (forall ((e Int)) (!
  (= (Seq_index (Seq_singleton e) 0) e)
  :pattern ((Seq_singleton e))
  )))
(assert (forall ((s0 Seq<Int>) (s1 Seq<Int>) (n Int)) (!
  (=>
    (and
      (not (= s0 (as Seq_empty  Seq<Int>)))
      (and
        (not (= s1 (as Seq_empty  Seq<Int>)))
        (and (<= 0 n) (< n (Seq_length s0)))))
    (= (Seq_index (Seq_append s0 s1) n) (Seq_index s0 n)))
  :pattern ((Seq_index (Seq_append s0 s1) n))
  :pattern ((Seq_index s0 n) (Seq_append s0 s1))
  )))
(assert (forall ((s0 Seq<Int>) (s1 Seq<Int>) (n Int)) (!
  (=>
    (and
      (not (= s0 (as Seq_empty  Seq<Int>)))
      (and
        (not (= s1 (as Seq_empty  Seq<Int>)))
        (and (<= (Seq_length s0) n) (< n (Seq_length (Seq_append s0 s1))))))
    (and
      (= (Seq_add (Seq_sub n (Seq_length s0)) (Seq_length s0)) n)
      (=
        (Seq_index (Seq_append s0 s1) n)
        (Seq_index s1 (Seq_sub n (Seq_length s0))))))
  :pattern ((Seq_index (Seq_append s0 s1) n))
  )))
(assert (forall ((s0 Seq<Int>) (s1 Seq<Int>) (m Int)) (!
  (=>
    (and
      (not (= s0 (as Seq_empty  Seq<Int>)))
      (and
        (not (= s1 (as Seq_empty  Seq<Int>)))
        (and (<= 0 m) (< m (Seq_length s1)))))
    (and
      (= (Seq_sub (Seq_add m (Seq_length s0)) (Seq_length s0)) m)
      (=
        (Seq_index (Seq_append s0 s1) (Seq_add m (Seq_length s0)))
        (Seq_index s1 m))))
  :pattern ((Seq_index s1 m) (Seq_append s0 s1))
  )))
(assert (forall ((s Seq<Int>) (i Int) (v Int)) (!
  (=>
    (and (<= 0 i) (< i (Seq_length s)))
    (= (Seq_length (Seq_update s i v)) (Seq_length s)))
  :pattern ((Seq_length (Seq_update s i v)))
  :pattern ((Seq_length s) (Seq_update s i v))
  )))
(assert (forall ((s Seq<Int>) (i Int) (v Int) (n Int)) (!
  (=>
    (and (<= 0 n) (< n (Seq_length s)))
    (and
      (=> (= i n) (= (Seq_index (Seq_update s i v) n) v))
      (=> (not (= i n)) (= (Seq_index (Seq_update s i v) n) (Seq_index s n)))))
  :pattern ((Seq_index (Seq_update s i v) n))
  :pattern ((Seq_index s n) (Seq_update s i v))
  )))
(assert (forall ((s Seq<Int>) (n Int)) (!
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
(assert (forall ((s Seq<Int>) (n Int) (j Int)) (!
  (=>
    (and (<= 0 j) (and (< j n) (< j (Seq_length s))))
    (= (Seq_index (Seq_take s n) j) (Seq_index s j)))
  :pattern ((Seq_index (Seq_take s n) j))
  :pattern ((Seq_index s j) (Seq_take s n))
  )))
(assert (forall ((s Seq<Int>) (n Int)) (!
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
(assert (forall ((s Seq<Int>) (n Int) (j Int)) (!
  (=>
    (and (< 0 n) (and (<= 0 j) (< j (- (Seq_length s) n))))
    (and
      (= (Seq_sub (Seq_add j n) n) j)
      (= (Seq_index (Seq_drop s n) j) (Seq_index s (Seq_add j n)))))
  :pattern ((Seq_index (Seq_drop s n) j))
  )))
(assert (forall ((s Seq<Int>) (n Int) (i Int)) (!
  (=>
    (and (< 0 n) (and (<= n i) (< i (Seq_length s))))
    (and
      (= (Seq_add (Seq_sub i n) n) i)
      (= (Seq_index (Seq_drop s n) (Seq_sub i n)) (Seq_index s i))))
  :pattern ((Seq_drop s n) (Seq_index s i))
  )))
(assert (forall ((s Seq<Int>) (t Seq<Int>) (n Int)) (!
  (=>
    (and (< 0 n) (<= n (Seq_length s)))
    (= (Seq_take (Seq_append s t) n) (Seq_take s n)))
  :pattern ((Seq_take (Seq_append s t) n))
  )))
(assert (forall ((s Seq<Int>) (t Seq<Int>) (n Int)) (!
  (=>
    (and (> n 0) (and (> n (Seq_length s)) (< n (Seq_length (Seq_append s t)))))
    (and
      (= (Seq_add (Seq_sub n (Seq_length s)) (Seq_length s)) n)
      (=
        (Seq_take (Seq_append s t) n)
        (Seq_append s (Seq_take t (Seq_sub n (Seq_length s)))))))
  :pattern ((Seq_take (Seq_append s t) n))
  )))
(assert (forall ((s Seq<Int>) (t Seq<Int>) (n Int)) (!
  (=>
    (and (< 0 n) (<= n (Seq_length s)))
    (= (Seq_drop (Seq_append s t) n) (Seq_append (Seq_drop s n) t)))
  :pattern ((Seq_drop (Seq_append s t) n))
  )))
(assert (forall ((s Seq<Int>) (t Seq<Int>) (n Int)) (!
  (=>
    (and (> n 0) (> n (Seq_length s)))
    (and
      (= (Seq_add (Seq_sub n (Seq_length s)) (Seq_length s)) n)
      (= (Seq_drop (Seq_append s t) n) (Seq_drop t (Seq_sub n (Seq_length s))))))
  :pattern ((Seq_drop (Seq_append s t) n))
  )))
(assert (forall ((s Seq<Int>) (n Int)) (!
  (=> (<= n 0) (= (Seq_take s n) (as Seq_empty  Seq<Int>)))
  :pattern ((Seq_take s n))
  )))
(assert (forall ((s Seq<Int>) (n Int)) (!
  (=> (<= n 0) (= (Seq_drop s n) s))
  :pattern ((Seq_drop s n))
  )))
(assert (forall ((s Seq<Int>) (n Int)) (!
  (=> (>= n (Seq_length s)) (= (Seq_take s n) s))
  :pattern ((Seq_take s n))
  )))
(assert (forall ((s Seq<Int>) (n Int)) (!
  (=> (>= n (Seq_length s)) (= (Seq_drop s n) (as Seq_empty  Seq<Int>)))
  :pattern ((Seq_drop s n))
  )))
(assert (forall ((s Seq<Int>) (x Int)) (!
  (=>
    (Seq_contains s x)
    (and
      (<= 0 (Seq_skolem s x))
      (and
        (< (Seq_skolem s x) (Seq_length s))
        (= (Seq_index s (Seq_skolem s x)) x))))
  :pattern ((Seq_contains s x))
  )))
(assert (forall ((s Seq<Int>) (x Int) (i Int)) (!
  (=>
    (and (<= 0 i) (and (< i (Seq_length s)) (= (Seq_index s i) x)))
    (Seq_contains s x))
  :pattern ((Seq_contains s x) (Seq_index s i))
  )))
(assert (forall ((s Seq<Int>) (i Int)) (!
  (=>
    (and (<= 0 i) (< i (Seq_length s)))
    (Seq_contains_trigger s (Seq_index s i)))
  :pattern ((Seq_index s i))
  )))
(assert (forall ((s0 Seq<Int>) (s1 Seq<Int>)) (!
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
(assert (forall ((a Seq<Int>) (b Seq<Int>)) (!
  (=> (Seq_equal a b) (= a b))
  :pattern ((Seq_equal a b))
  )))
(assert (forall ((x Int) (y Int)) (!
  (= (Seq_contains (Seq_singleton x) y) (= x y))
  :pattern ((Seq_contains (Seq_singleton x) y))
  )))
(assert (forall ((min_ Int) (max Int)) (!
  (and
    (=> (< min_ max) (= (Seq_length (Seq_range min_ max)) (- max min_)))
    (=> (<= max min_) (= (Seq_length (Seq_range min_ max)) 0)))
  :pattern ((Seq_length (Seq_range min_ max)))
  :qid |$Seq[Int]_prog.ranged_seq_length|)))
(assert (forall ((min_ Int) (max Int) (j Int)) (!
  (=>
    (and (<= 0 j) (< j (- max min_)))
    (= (Seq_index (Seq_range min_ max) j) (+ min_ j)))
  :pattern ((Seq_index (Seq_range min_ max) j))
  :qid |$Seq[Int]_prog.ranged_seq_index|)))
(assert (forall ((min_ Int) (max Int) (v Int)) (!
  (= (Seq_contains (Seq_range min_ max) v) (and (<= min_ v) (< v max)))
  :pattern ((Seq_contains (Seq_range min_ max) v))
  :qid |$Seq[Int]_prog.ranged_seq_contains|)))
(assert (forall ((s Set<Seq<$Ref>>)) (!
  (<= 0 (Set_card s))
  :pattern ((Set_card s))
  )))
(assert (forall ((o Seq<$Ref>)) (!
  (not (Set_in o (as Set_empty  Set<Seq<$Ref>>)))
  :pattern ((Set_in o (as Set_empty  Set<Seq<$Ref>>)))
  )))
(assert (forall ((s Set<Seq<$Ref>>)) (!
  (and
    (=> (= (Set_card s) 0) (= s (as Set_empty  Set<Seq<$Ref>>)))
    (=> (not (= (Set_card s) 0)) (exists ((x Seq<$Ref>))  (Set_in x s))))
  :pattern ((Set_card s))
  )))
(assert (forall ((r Seq<$Ref>)) (!
  (Set_in r (Set_singleton r))
  :pattern ((Set_singleton r))
  )))
(assert (forall ((r Seq<$Ref>) (o Seq<$Ref>)) (!
  (= (Set_in o (Set_singleton r)) (= r o))
  :pattern ((Set_in o (Set_singleton r)))
  )))
(assert (forall ((r Seq<$Ref>)) (!
  (= (Set_card (Set_singleton r)) 1)
  :pattern ((Set_card (Set_singleton r)))
  )))
(assert (forall ((a Set<Seq<$Ref>>) (x Seq<$Ref>) (o Seq<$Ref>)) (!
  (= (Set_in o (Set_unionone a x)) (or (= o x) (Set_in o a)))
  :pattern ((Set_in o (Set_unionone a x)))
  )))
(assert (forall ((a Set<Seq<$Ref>>) (x Seq<$Ref>)) (!
  (Set_in x (Set_unionone a x))
  :pattern ((Set_unionone a x))
  )))
(assert (forall ((a Set<Seq<$Ref>>) (x Seq<$Ref>) (y Seq<$Ref>)) (!
  (=> (Set_in y a) (Set_in y (Set_unionone a x)))
  :pattern ((Set_unionone a x) (Set_in y a))
  )))
(assert (forall ((a Set<Seq<$Ref>>) (x Seq<$Ref>)) (!
  (=> (Set_in x a) (= (Set_card (Set_unionone a x)) (Set_card a)))
  :pattern ((Set_card (Set_unionone a x)))
  )))
(assert (forall ((a Set<Seq<$Ref>>) (x Seq<$Ref>)) (!
  (=> (not (Set_in x a)) (= (Set_card (Set_unionone a x)) (+ (Set_card a) 1)))
  :pattern ((Set_card (Set_unionone a x)))
  )))
(assert (forall ((a Set<Seq<$Ref>>) (b Set<Seq<$Ref>>) (o Seq<$Ref>)) (!
  (= (Set_in o (Set_union a b)) (or (Set_in o a) (Set_in o b)))
  :pattern ((Set_in o (Set_union a b)))
  )))
(assert (forall ((a Set<Seq<$Ref>>) (b Set<Seq<$Ref>>) (y Seq<$Ref>)) (!
  (=> (Set_in y a) (Set_in y (Set_union a b)))
  :pattern ((Set_union a b) (Set_in y a))
  )))
(assert (forall ((a Set<Seq<$Ref>>) (b Set<Seq<$Ref>>) (y Seq<$Ref>)) (!
  (=> (Set_in y b) (Set_in y (Set_union a b)))
  :pattern ((Set_union a b) (Set_in y b))
  )))
(assert (forall ((a Set<Seq<$Ref>>) (b Set<Seq<$Ref>>) (o Seq<$Ref>)) (!
  (= (Set_in o (Set_intersection a b)) (and (Set_in o a) (Set_in o b)))
  :pattern ((Set_in o (Set_intersection a b)))
  :pattern ((Set_intersection a b) (Set_in o a))
  :pattern ((Set_intersection a b) (Set_in o b))
  )))
(assert (forall ((a Set<Seq<$Ref>>) (b Set<Seq<$Ref>>)) (!
  (= (Set_union (Set_union a b) b) (Set_union a b))
  :pattern ((Set_union (Set_union a b) b))
  )))
(assert (forall ((a Set<Seq<$Ref>>) (b Set<Seq<$Ref>>)) (!
  (= (Set_union a (Set_union a b)) (Set_union a b))
  :pattern ((Set_union a (Set_union a b)))
  )))
(assert (forall ((a Set<Seq<$Ref>>) (b Set<Seq<$Ref>>)) (!
  (= (Set_intersection (Set_intersection a b) b) (Set_intersection a b))
  :pattern ((Set_intersection (Set_intersection a b) b))
  )))
(assert (forall ((a Set<Seq<$Ref>>) (b Set<Seq<$Ref>>)) (!
  (= (Set_intersection a (Set_intersection a b)) (Set_intersection a b))
  :pattern ((Set_intersection a (Set_intersection a b)))
  )))
(assert (forall ((a Set<Seq<$Ref>>) (b Set<Seq<$Ref>>)) (!
  (=
    (+ (Set_card (Set_union a b)) (Set_card (Set_intersection a b)))
    (+ (Set_card a) (Set_card b)))
  :pattern ((Set_card (Set_union a b)))
  :pattern ((Set_card (Set_intersection a b)))
  )))
(assert (forall ((a Set<Seq<$Ref>>) (b Set<Seq<$Ref>>) (o Seq<$Ref>)) (!
  (= (Set_in o (Set_difference a b)) (and (Set_in o a) (not (Set_in o b))))
  :pattern ((Set_in o (Set_difference a b)))
  :pattern ((Set_difference a b) (Set_in o a))
  )))
(assert (forall ((a Set<Seq<$Ref>>) (b Set<Seq<$Ref>>) (y Seq<$Ref>)) (!
  (=> (Set_in y b) (not (Set_in y (Set_difference a b))))
  :pattern ((Set_difference a b) (Set_in y b))
  )))
(assert (forall ((a Set<Seq<$Ref>>) (b Set<Seq<$Ref>>)) (!
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
(assert (forall ((a Set<Seq<$Ref>>) (b Set<Seq<$Ref>>)) (!
  (=
    (Set_subset a b)
    (forall ((o Seq<$Ref>)) (!
      (=> (Set_in o a) (Set_in o b))
      :pattern ((Set_in o a))
      :pattern ((Set_in o b))
      )))
  :pattern ((Set_subset a b))
  )))
(assert (forall ((a Set<Seq<$Ref>>) (b Set<Seq<$Ref>>)) (!
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
(assert (forall ((a Set<Seq<$Ref>>) (b Set<Seq<$Ref>>)) (!
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
; /field_value_functions_axioms.smt2 [src: Seq[Ref]]
(assert (forall ((vs $FVF<src>) (ws $FVF<src>)) (!
    (=>
      (and
        (Set_equal ($FVF.domain_src vs) ($FVF.domain_src ws))
        (forall ((x $Ref)) (!
          (=>
            (Set_in x ($FVF.domain_src vs))
            (= ($FVF.lookup_src vs x) ($FVF.lookup_src ws x)))
          :pattern (($FVF.lookup_src vs x) ($FVF.lookup_src ws x))
          :qid |qp.$FVF<src>-eq-inner|
          )))
      (= vs ws))
    :pattern (($SortWrappers.$FVF<src>To$Snap vs)
              ($SortWrappers.$FVF<src>To$Snap ws)
              )
    :qid |qp.$FVF<src>-eq-outer|
    )))
(assert (forall ((r $Ref) (pm $FPM)) (!
    ($Perm.isValidVar ($FVF.perm_src pm r))
    :pattern (($FVF.perm_src pm r)))))
(assert (forall ((r $Ref) (f Seq<$Ref>)) (!
    (= ($FVF.loc_src f r) true)
    :pattern (($FVF.loc_src f r)))))
; /field_value_functions_axioms.smt2 [Integer_value: Int]
(assert (forall ((vs $FVF<Integer_value>) (ws $FVF<Integer_value>)) (!
    (=>
      (and
        (Set_equal ($FVF.domain_Integer_value vs) ($FVF.domain_Integer_value ws))
        (forall ((x $Ref)) (!
          (=>
            (Set_in x ($FVF.domain_Integer_value vs))
            (= ($FVF.lookup_Integer_value vs x) ($FVF.lookup_Integer_value ws x)))
          :pattern (($FVF.lookup_Integer_value vs x) ($FVF.lookup_Integer_value ws x))
          :qid |qp.$FVF<Integer_value>-eq-inner|
          )))
      (= vs ws))
    :pattern (($SortWrappers.$FVF<Integer_value>To$Snap vs)
              ($SortWrappers.$FVF<Integer_value>To$Snap ws)
              )
    :qid |qp.$FVF<Integer_value>-eq-outer|
    )))
(assert (forall ((r $Ref) (pm $FPM)) (!
    ($Perm.isValidVar ($FVF.perm_Integer_value pm r))
    :pattern (($FVF.perm_Integer_value pm r)))))
(assert (forall ((r $Ref) (f Int)) (!
    (= ($FVF.loc_Integer_value f r) true)
    :pattern (($FVF.loc_Integer_value f r)))))
; /field_value_functions_axioms.smt2 [dst: Seq[Ref]]
(assert (forall ((vs $FVF<dst>) (ws $FVF<dst>)) (!
    (=>
      (and
        (Set_equal ($FVF.domain_dst vs) ($FVF.domain_dst ws))
        (forall ((x $Ref)) (!
          (=>
            (Set_in x ($FVF.domain_dst vs))
            (= ($FVF.lookup_dst vs x) ($FVF.lookup_dst ws x)))
          :pattern (($FVF.lookup_dst vs x) ($FVF.lookup_dst ws x))
          :qid |qp.$FVF<dst>-eq-inner|
          )))
      (= vs ws))
    :pattern (($SortWrappers.$FVF<dst>To$Snap vs)
              ($SortWrappers.$FVF<dst>To$Snap ws)
              )
    :qid |qp.$FVF<dst>-eq-outer|
    )))
(assert (forall ((r $Ref) (pm $FPM)) (!
    ($Perm.isValidVar ($FVF.perm_dst pm r))
    :pattern (($FVF.perm_dst pm r)))))
(assert (forall ((r $Ref) (f Seq<$Ref>)) (!
    (= ($FVF.loc_dst f r) true)
    :pattern (($FVF.loc_dst f r)))))
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
; ---------- main_main ----------
(declare-const this@0@01 $Ref)
(declare-const tcount@1@01 Int)
(declare-const gsize@2@01 Int)
(declare-const tid@3@01 Int)
(declare-const gid@4@01 Int)
(declare-const lid@5@01 Int)
(declare-const this@6@01 $Ref)
(declare-const tcount@7@01 Int)
(declare-const gsize@8@01 Int)
(declare-const tid@9@01 Int)
(declare-const gid@10@01 Int)
(declare-const lid@11@01 Int)
(set-option :timeout 0)
(push) ; 1
(declare-const $t@12@01 $Snap)
(assert (= $t@12@01 ($Snap.combine ($Snap.first $t@12@01) ($Snap.second $t@12@01))))
(assert (= ($Snap.first $t@12@01) $Snap.unit))
; [eval] 0 <= tid
(assert (<= 0 tid@9@01))
(assert (=
  ($Snap.second $t@12@01)
  ($Snap.combine
    ($Snap.first ($Snap.second $t@12@01))
    ($Snap.second ($Snap.second $t@12@01)))))
(assert (= ($Snap.first ($Snap.second $t@12@01)) $Snap.unit))
; [eval] tid < tcount
(assert (< tid@9@01 tcount@7@01))
(assert (=
  ($Snap.second ($Snap.second $t@12@01))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second $t@12@01)))
    ($Snap.second ($Snap.second ($Snap.second $t@12@01))))))
(assert (= ($Snap.first ($Snap.second ($Snap.second $t@12@01))) $Snap.unit))
; [eval] tid == lid
(assert (= tid@9@01 lid@11@01))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second $t@12@01)))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@12@01))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@12@01)))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@12@01))))
  $Snap.unit))
; [eval] tcount == gsize
(assert (= tcount@7@01 gsize@8@01))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@12@01))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@12@01)))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@12@01))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@12@01)))))
  $Snap.unit))
; [eval] gid == 0
(assert (= gid@10@01 0))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@12@01)))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@12@01))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@12@01)))))))))
(declare-const $k@13@01 $Perm)
(assert ($Perm.isReadVar $k@13@01))
(assert (<= $Perm.No $k@13@01))
(assert (<= $k@13@01 $Perm.Write))
(assert (=> (< $Perm.No $k@13@01) (not (= this@6@01 $Ref.null))))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@12@01))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@12@01)))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@12@01))))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@12@01)))))))
  $Snap.unit))
; [eval] |this.src| == gsize
; [eval] |this.src|
(push) ; 2
(set-option :timeout 10)
(assert (not (< $Perm.No $k@13@01)))
(check-sat)
; unsat
(pop) ; 2
; 0.00s
; (get-info :all-statistics)
(assert (=
  (Seq_length
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@12@01))))))))
  gsize@8@01))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@12@01)))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@12@01))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@12@01)))))))))))
(declare-const $k@14@01 $Perm)
(assert ($Perm.isReadVar $k@14@01))
(assert (<= $Perm.No $k@14@01))
(assert (<= $k@14@01 $Perm.Write))
(assert (=> (< $Perm.No $k@14@01) (not (= this@6@01 $Ref.null))))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@12@01))))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@12@01)))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@12@01))))))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@12@01)))))))))
  $Snap.unit))
; [eval] |this.dst| == gsize
; [eval] |this.dst|
(set-option :timeout 0)
(push) ; 2
(set-option :timeout 10)
(assert (not (< $Perm.No $k@14@01)))
(check-sat)
; unsat
(pop) ; 2
; 0.00s
; (get-info :all-statistics)
(assert (=
  (Seq_length
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@12@01))))))))))
  gsize@8@01))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@12@01)))))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@12@01))))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@12@01)))))))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@12@01))))))))))
  $Snap.unit))
; [eval] 4 <= gsize
(assert (<= 4 gsize@8@01))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@12@01))))))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@12@01)))))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@12@01))))))))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@12@01)))))))))))
  $Snap.unit))
; [eval] gsize % 2 == 0
; [eval] gsize % 2
(assert (= (mod gsize@8@01 2) 0))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@12@01)))))))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@12@01))))))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@12@01)))))))))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@12@01))))))))))))
  $Snap.unit))
; [eval] (forall i: Int, j: Int :: { this.src[i], this.src[j] } 0 <= i && (i < gsize && (0 <= j && (j < gsize && i != j))) ==> this.src[i] != this.src[j])
(declare-const i@15@01 Int)
(declare-const j@16@01 Int)
(set-option :timeout 0)
(push) ; 2
; [eval] 0 <= i && (i < gsize && (0 <= j && (j < gsize && i != j))) ==> this.src[i] != this.src[j]
; [eval] 0 <= i && (i < gsize && (0 <= j && (j < gsize && i != j)))
; [eval] 0 <= i
(push) ; 3
; [then-branch: 0 | !(0 <= i@15@01) | live]
; [else-branch: 0 | 0 <= i@15@01 | live]
(push) ; 4
; [then-branch: 0 | !(0 <= i@15@01)]
(assert (not (<= 0 i@15@01)))
(pop) ; 4
(push) ; 4
; [else-branch: 0 | 0 <= i@15@01]
(assert (<= 0 i@15@01))
; [eval] i < gsize
(push) ; 5
; [then-branch: 1 | !(i@15@01 < gsize@8@01) | live]
; [else-branch: 1 | i@15@01 < gsize@8@01 | live]
(push) ; 6
; [then-branch: 1 | !(i@15@01 < gsize@8@01)]
(assert (not (< i@15@01 gsize@8@01)))
(pop) ; 6
(push) ; 6
; [else-branch: 1 | i@15@01 < gsize@8@01]
(assert (< i@15@01 gsize@8@01))
; [eval] 0 <= j
(push) ; 7
; [then-branch: 2 | !(0 <= j@16@01) | live]
; [else-branch: 2 | 0 <= j@16@01 | live]
(push) ; 8
; [then-branch: 2 | !(0 <= j@16@01)]
(assert (not (<= 0 j@16@01)))
(pop) ; 8
(push) ; 8
; [else-branch: 2 | 0 <= j@16@01]
(assert (<= 0 j@16@01))
; [eval] j < gsize
(push) ; 9
; [then-branch: 3 | !(j@16@01 < gsize@8@01) | live]
; [else-branch: 3 | j@16@01 < gsize@8@01 | live]
(push) ; 10
; [then-branch: 3 | !(j@16@01 < gsize@8@01)]
(assert (not (< j@16@01 gsize@8@01)))
(pop) ; 10
(push) ; 10
; [else-branch: 3 | j@16@01 < gsize@8@01]
(assert (< j@16@01 gsize@8@01))
; [eval] i != j
(pop) ; 10
(pop) ; 9
; Joined path conditions
; Joined path conditions
(assert (or (< j@16@01 gsize@8@01) (not (< j@16@01 gsize@8@01))))
(pop) ; 8
(pop) ; 7
; Joined path conditions
; Joined path conditions
(assert (=>
  (<= 0 j@16@01)
  (and (<= 0 j@16@01) (or (< j@16@01 gsize@8@01) (not (< j@16@01 gsize@8@01))))))
(assert (or (<= 0 j@16@01) (not (<= 0 j@16@01))))
(pop) ; 6
(pop) ; 5
; Joined path conditions
; Joined path conditions
(assert (=>
  (< i@15@01 gsize@8@01)
  (and
    (< i@15@01 gsize@8@01)
    (=>
      (<= 0 j@16@01)
      (and
        (<= 0 j@16@01)
        (or (< j@16@01 gsize@8@01) (not (< j@16@01 gsize@8@01)))))
    (or (<= 0 j@16@01) (not (<= 0 j@16@01))))))
(assert (or (< i@15@01 gsize@8@01) (not (< i@15@01 gsize@8@01))))
(pop) ; 4
(pop) ; 3
; Joined path conditions
; Joined path conditions
(assert (=>
  (<= 0 i@15@01)
  (and
    (<= 0 i@15@01)
    (=>
      (< i@15@01 gsize@8@01)
      (and
        (< i@15@01 gsize@8@01)
        (=>
          (<= 0 j@16@01)
          (and
            (<= 0 j@16@01)
            (or (< j@16@01 gsize@8@01) (not (< j@16@01 gsize@8@01)))))
        (or (<= 0 j@16@01) (not (<= 0 j@16@01)))))
    (or (< i@15@01 gsize@8@01) (not (< i@15@01 gsize@8@01))))))
(assert (or (<= 0 i@15@01) (not (<= 0 i@15@01))))
(push) ; 3
; [then-branch: 4 | 0 <= i@15@01 && i@15@01 < gsize@8@01 && 0 <= j@16@01 && j@16@01 < gsize@8@01 && i@15@01 != j@16@01 | live]
; [else-branch: 4 | !(0 <= i@15@01 && i@15@01 < gsize@8@01 && 0 <= j@16@01 && j@16@01 < gsize@8@01 && i@15@01 != j@16@01) | live]
(push) ; 4
; [then-branch: 4 | 0 <= i@15@01 && i@15@01 < gsize@8@01 && 0 <= j@16@01 && j@16@01 < gsize@8@01 && i@15@01 != j@16@01]
(assert (and
  (<= 0 i@15@01)
  (and
    (< i@15@01 gsize@8@01)
    (and (<= 0 j@16@01) (and (< j@16@01 gsize@8@01) (not (= i@15@01 j@16@01)))))))
; [eval] this.src[i] != this.src[j]
; [eval] this.src[i]
(push) ; 5
(set-option :timeout 10)
(assert (not (< $Perm.No $k@13@01)))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 5
(assert (not (>= i@15@01 0)))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(push) ; 5
(assert (not (<
  i@15@01
  (Seq_length
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@12@01)))))))))))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
; [eval] this.src[j]
(push) ; 5
(set-option :timeout 10)
(assert (not (< $Perm.No $k@13@01)))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 5
(assert (not (>= j@16@01 0)))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(push) ; 5
(assert (not (<
  j@16@01
  (Seq_length
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@12@01)))))))))))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(pop) ; 4
(push) ; 4
; [else-branch: 4 | !(0 <= i@15@01 && i@15@01 < gsize@8@01 && 0 <= j@16@01 && j@16@01 < gsize@8@01 && i@15@01 != j@16@01)]
(assert (not
  (and
    (<= 0 i@15@01)
    (and
      (< i@15@01 gsize@8@01)
      (and (<= 0 j@16@01) (and (< j@16@01 gsize@8@01) (not (= i@15@01 j@16@01))))))))
(pop) ; 4
(pop) ; 3
; Joined path conditions
(assert (=>
  (and
    (<= 0 i@15@01)
    (and
      (< i@15@01 gsize@8@01)
      (and (<= 0 j@16@01) (and (< j@16@01 gsize@8@01) (not (= i@15@01 j@16@01))))))
  (and
    (<= 0 i@15@01)
    (< i@15@01 gsize@8@01)
    (<= 0 j@16@01)
    (< j@16@01 gsize@8@01)
    (not (= i@15@01 j@16@01)))))
; Joined path conditions
(assert (or
  (not
    (and
      (<= 0 i@15@01)
      (and
        (< i@15@01 gsize@8@01)
        (and
          (<= 0 j@16@01)
          (and (< j@16@01 gsize@8@01) (not (= i@15@01 j@16@01)))))))
  (and
    (<= 0 i@15@01)
    (and
      (< i@15@01 gsize@8@01)
      (and (<= 0 j@16@01) (and (< j@16@01 gsize@8@01) (not (= i@15@01 j@16@01))))))))
(pop) ; 2
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall ((i@15@01 Int) (j@16@01 Int)) (!
  (and
    (=>
      (<= 0 i@15@01)
      (and
        (<= 0 i@15@01)
        (=>
          (< i@15@01 gsize@8@01)
          (and
            (< i@15@01 gsize@8@01)
            (=>
              (<= 0 j@16@01)
              (and
                (<= 0 j@16@01)
                (or (< j@16@01 gsize@8@01) (not (< j@16@01 gsize@8@01)))))
            (or (<= 0 j@16@01) (not (<= 0 j@16@01)))))
        (or (< i@15@01 gsize@8@01) (not (< i@15@01 gsize@8@01)))))
    (or (<= 0 i@15@01) (not (<= 0 i@15@01)))
    (=>
      (and
        (<= 0 i@15@01)
        (and
          (< i@15@01 gsize@8@01)
          (and
            (<= 0 j@16@01)
            (and (< j@16@01 gsize@8@01) (not (= i@15@01 j@16@01))))))
      (and
        (<= 0 i@15@01)
        (< i@15@01 gsize@8@01)
        (<= 0 j@16@01)
        (< j@16@01 gsize@8@01)
        (not (= i@15@01 j@16@01))))
    (or
      (not
        (and
          (<= 0 i@15@01)
          (and
            (< i@15@01 gsize@8@01)
            (and
              (<= 0 j@16@01)
              (and (< j@16@01 gsize@8@01) (not (= i@15@01 j@16@01)))))))
      (and
        (<= 0 i@15@01)
        (and
          (< i@15@01 gsize@8@01)
          (and
            (<= 0 j@16@01)
            (and (< j@16@01 gsize@8@01) (not (= i@15@01 j@16@01))))))))
  :pattern ((Seq_index
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@12@01)))))))
    i@15@01) (Seq_index
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@12@01)))))))
    j@16@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/third_party/max-two-range.vpr@24@12@24@120-aux|)))
(assert (forall ((i@15@01 Int) (j@16@01 Int)) (!
  (=>
    (and
      (<= 0 i@15@01)
      (and
        (< i@15@01 gsize@8@01)
        (and
          (<= 0 j@16@01)
          (and (< j@16@01 gsize@8@01) (not (= i@15@01 j@16@01))))))
    (not
      (=
        (Seq_index
          ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@12@01)))))))
          i@15@01)
        (Seq_index
          ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@12@01)))))))
          j@16@01))))
  :pattern ((Seq_index
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@12@01)))))))
    i@15@01) (Seq_index
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@12@01)))))))
    j@16@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/third_party/max-two-range.vpr@24@12@24@120|)))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@12@01))))))))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@12@01)))))))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@12@01))))))))))))))))
(declare-const i@17@01 Int)
(push) ; 2
; [eval] (i in [0..gsize))
; [eval] [0..gsize)
(assert (Seq_contains (Seq_range 0 gsize@8@01) i@17@01))
; [eval] this.src[i]
(push) ; 3
(set-option :timeout 10)
(assert (not (< $Perm.No $k@13@01)))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(assert (not (>= i@17@01 0)))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(push) ; 3
(assert (not (<
  i@17@01
  (Seq_length
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@12@01)))))))))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(push) ; 3
(assert (not (not (= gsize@8@01 0))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(pop) ; 2
(declare-fun inv@18@01 ($Ref) Int)
(declare-fun img@19@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
(push) ; 2
(assert (not (forall ((i@17@01 Int)) (!
  (=>
    (Seq_contains (Seq_range 0 gsize@8@01) i@17@01)
    (or
      (= (/ (to_real 1) (to_real gsize@8@01)) $Perm.No)
      (< $Perm.No (/ (to_real 1) (to_real gsize@8@01)))))
  
  :qid |quant-u-17918|))))
(check-sat)
; unsat
(pop) ; 2
; 0.00s
; (get-info :all-statistics)
; Check receiver injectivity
(push) ; 2
(assert (not (forall ((i1@17@01 Int) (i2@17@01 Int)) (!
  (=>
    (and
      (and
        (Seq_contains (Seq_range 0 gsize@8@01) i1@17@01)
        (< $Perm.No (/ (to_real 1) (to_real gsize@8@01))))
      (and
        (Seq_contains (Seq_range 0 gsize@8@01) i2@17@01)
        (< $Perm.No (/ (to_real 1) (to_real gsize@8@01))))
      (=
        (Seq_index
          ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@12@01)))))))
          i1@17@01)
        (Seq_index
          ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@12@01)))))))
          i2@17@01)))
    (= i1@17@01 i2@17@01))
  
  :qid |Integer_value-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 2
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((i@17@01 Int)) (!
  (=>
    (and
      (Seq_contains (Seq_range 0 gsize@8@01) i@17@01)
      (< $Perm.No (/ (to_real 1) (to_real gsize@8@01))))
    (and
      (=
        (inv@18@01 (Seq_index
          ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@12@01)))))))
          i@17@01))
        i@17@01)
      (img@19@01 (Seq_index
        ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@12@01)))))))
        i@17@01))))
  :pattern ((Seq_index
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@12@01)))))))
    i@17@01))
  :qid |quant-u-17919|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@19@01 r)
      (and
        (Seq_contains (Seq_range 0 gsize@8@01) (inv@18@01 r))
        (< $Perm.No (/ (to_real 1) (to_real gsize@8@01)))))
    (=
      (Seq_index
        ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@12@01)))))))
        (inv@18@01 r))
      r))
  :pattern ((inv@18@01 r))
  :qid |Integer_value-fctOfInv|)))
; Permissions are non-negative
(assert (forall ((i@17@01 Int)) (!
  (<= $Perm.No (/ (to_real 1) (to_real gsize@8@01)))
  :pattern ((Seq_index
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@12@01)))))))
    i@17@01))
  :qid |Integer_value-permAtLeastZero|)))
; Field permissions are at most one
(assert (forall ((i@17@01 Int)) (!
  (<= (/ (to_real 1) (to_real gsize@8@01)) $Perm.Write)
  :pattern ((Seq_index
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@12@01)))))))
    i@17@01))
  :qid |Integer_value-permAtMostOne|)))
; Permission implies non-null receiver
(assert (forall ((i@17@01 Int)) (!
  (=>
    (and
      (Seq_contains (Seq_range 0 gsize@8@01) i@17@01)
      (< $Perm.No (/ (to_real 1) (to_real gsize@8@01))))
    (not
      (=
        (Seq_index
          ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@12@01)))))))
          i@17@01)
        $Ref.null)))
  :pattern ((Seq_index
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@12@01)))))))
    i@17@01))
  :qid |Integer_value-permImpliesNonNull|)))
; [eval] this.dst[tid]
(push) ; 2
(set-option :timeout 10)
(assert (not (< $Perm.No $k@14@01)))
(check-sat)
; unsat
(pop) ; 2
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 2
(assert (not (>= tid@9@01 0)))
(check-sat)
; unsat
(pop) ; 2
; 0.00s
; (get-info :all-statistics)
(push) ; 2
(assert (not (<
  tid@9@01
  (Seq_length
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@12@01)))))))))))))
(check-sat)
; unsat
(pop) ; 2
; 0.00s
; (get-info :all-statistics)
(declare-const sm@20@01 $FVF<Integer_value>)
; Definitional axioms for singleton-SM's value
(assert (=
  ($FVF.lookup_Integer_value (as sm@20@01  $FVF<Integer_value>) (Seq_index
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@12@01)))))))))
    tid@9@01))
  ($SortWrappers.$SnapToInt ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@12@01))))))))))))))))
(assert (<=
  $Perm.No
  (ite
    (=
      (Seq_index
        ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@12@01)))))))))
        tid@9@01)
      (Seq_index
        ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@12@01)))))))))
        tid@9@01))
    $Perm.Write
    $Perm.No)))
(assert (<=
  (ite
    (=
      (Seq_index
        ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@12@01)))))))))
        tid@9@01)
      (Seq_index
        ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@12@01)))))))))
        tid@9@01))
    $Perm.Write
    $Perm.No)
  $Perm.Write))
(assert (=>
  (=
    (Seq_index
      ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@12@01)))))))))
      tid@9@01)
    (Seq_index
      ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@12@01)))))))))
      tid@9@01))
  (not
    (=
      (Seq_index
        ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@12@01)))))))))
        tid@9@01)
      $Ref.null))))
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
(set-option :timeout 0)
(push) ; 2
(declare-const $t@21@01 $Snap)
(assert (= $t@21@01 ($Snap.combine ($Snap.first $t@21@01) ($Snap.second $t@21@01))))
(assert (= ($Snap.first $t@21@01) $Snap.unit))
; [eval] 0 <= tid
(assert (=
  ($Snap.second $t@21@01)
  ($Snap.combine
    ($Snap.first ($Snap.second $t@21@01))
    ($Snap.second ($Snap.second $t@21@01)))))
(assert (= ($Snap.first ($Snap.second $t@21@01)) $Snap.unit))
; [eval] tid < tcount
(assert (=
  ($Snap.second ($Snap.second $t@21@01))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second $t@21@01)))
    ($Snap.second ($Snap.second ($Snap.second $t@21@01))))))
(assert (= ($Snap.first ($Snap.second ($Snap.second $t@21@01))) $Snap.unit))
; [eval] tid == lid
(assert (=
  ($Snap.second ($Snap.second ($Snap.second $t@21@01)))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@21@01))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@21@01)))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@21@01))))
  $Snap.unit))
; [eval] tcount == gsize
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@21@01))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@21@01)))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@21@01))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@21@01)))))
  $Snap.unit))
; [eval] gid == 0
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@21@01)))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@21@01))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@21@01)))))))))
(declare-const $k@22@01 $Perm)
(assert ($Perm.isReadVar $k@22@01))
(assert (<= $Perm.No $k@22@01))
(assert (<= $k@22@01 $Perm.Write))
(assert (=> (< $Perm.No $k@22@01) (not (= this@6@01 $Ref.null))))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@21@01))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@21@01)))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@21@01))))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@21@01)))))))
  $Snap.unit))
; [eval] |this.src| == gsize
; [eval] |this.src|
(push) ; 3
(set-option :timeout 10)
(assert (not (< $Perm.No $k@22@01)))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(assert (=
  (Seq_length
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@21@01))))))))
  gsize@8@01))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@21@01)))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@21@01))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@21@01)))))))))))
(declare-const $k@23@01 $Perm)
(assert ($Perm.isReadVar $k@23@01))
(assert (<= $Perm.No $k@23@01))
(assert (<= $k@23@01 $Perm.Write))
(assert (=> (< $Perm.No $k@23@01) (not (= this@6@01 $Ref.null))))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@21@01))))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@21@01)))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@21@01))))))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@21@01)))))))))
  $Snap.unit))
; [eval] |this.dst| == gsize
; [eval] |this.dst|
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (< $Perm.No $k@23@01)))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(assert (=
  (Seq_length
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@21@01))))))))))
  gsize@8@01))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@21@01)))))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@21@01))))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@21@01)))))))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@21@01))))))))))
  $Snap.unit))
; [eval] 4 <= gsize
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@21@01))))))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@21@01)))))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@21@01))))))))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@21@01)))))))))))
  $Snap.unit))
; [eval] gsize % 2 == 0
; [eval] gsize % 2
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@21@01)))))))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@21@01))))))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@21@01)))))))))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@21@01))))))))))))
  $Snap.unit))
; [eval] this.src == old(this.src)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (< $Perm.No $k@22@01)))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; [eval] old(this.src)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (< $Perm.No $k@13@01)))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(assert (Seq_equal
  ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@21@01)))))))
  ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@12@01)))))))))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@21@01))))))))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@21@01)))))))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@21@01))))))))))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@21@01)))))))))))))
  $Snap.unit))
; [eval] this.dst == old(this.dst)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (< $Perm.No $k@23@01)))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; [eval] old(this.dst)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (< $Perm.No $k@14@01)))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(assert (Seq_equal
  ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@21@01)))))))))
  ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@12@01)))))))))))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@21@01)))))))))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@21@01))))))))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@21@01)))))))))))))))))
(declare-const i@24@01 Int)
(set-option :timeout 0)
(push) ; 3
; [eval] (i in [0..gsize))
; [eval] [0..gsize)
(assert (Seq_contains (Seq_range 0 gsize@8@01) i@24@01))
; [eval] this.src[i]
(push) ; 4
(set-option :timeout 10)
(assert (not (< $Perm.No $k@22@01)))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 4
(assert (not (>= i@24@01 0)))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(push) ; 4
(assert (not (<
  i@24@01
  (Seq_length
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@21@01)))))))))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(push) ; 4
(assert (not (not (= gsize@8@01 0))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(pop) ; 3
(declare-fun inv@25@01 ($Ref) Int)
(declare-fun img@26@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
(push) ; 3
(assert (not (forall ((i@24@01 Int)) (!
  (=>
    (Seq_contains (Seq_range 0 gsize@8@01) i@24@01)
    (or
      (= (/ (to_real 1) (to_real gsize@8@01)) $Perm.No)
      (< $Perm.No (/ (to_real 1) (to_real gsize@8@01)))))
  
  :qid |quant-u-17920|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Check receiver injectivity
(push) ; 3
(assert (not (forall ((i1@24@01 Int) (i2@24@01 Int)) (!
  (=>
    (and
      (and
        (Seq_contains (Seq_range 0 gsize@8@01) i1@24@01)
        (< $Perm.No (/ (to_real 1) (to_real gsize@8@01))))
      (and
        (Seq_contains (Seq_range 0 gsize@8@01) i2@24@01)
        (< $Perm.No (/ (to_real 1) (to_real gsize@8@01))))
      (=
        (Seq_index
          ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@21@01)))))))
          i1@24@01)
        (Seq_index
          ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@21@01)))))))
          i2@24@01)))
    (= i1@24@01 i2@24@01))
  
  :qid |Integer_value-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((i@24@01 Int)) (!
  (=>
    (and
      (Seq_contains (Seq_range 0 gsize@8@01) i@24@01)
      (< $Perm.No (/ (to_real 1) (to_real gsize@8@01))))
    (and
      (=
        (inv@25@01 (Seq_index
          ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@21@01)))))))
          i@24@01))
        i@24@01)
      (img@26@01 (Seq_index
        ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@21@01)))))))
        i@24@01))))
  :pattern ((Seq_index
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@21@01)))))))
    i@24@01))
  :qid |quant-u-17921|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@26@01 r)
      (and
        (Seq_contains (Seq_range 0 gsize@8@01) (inv@25@01 r))
        (< $Perm.No (/ (to_real 1) (to_real gsize@8@01)))))
    (=
      (Seq_index
        ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@21@01)))))))
        (inv@25@01 r))
      r))
  :pattern ((inv@25@01 r))
  :qid |Integer_value-fctOfInv|)))
; Permissions are non-negative
(assert (forall ((i@24@01 Int)) (!
  (<= $Perm.No (/ (to_real 1) (to_real gsize@8@01)))
  :pattern ((Seq_index
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@21@01)))))))
    i@24@01))
  :qid |Integer_value-permAtLeastZero|)))
; Field permissions are at most one
(assert (forall ((i@24@01 Int)) (!
  (<= (/ (to_real 1) (to_real gsize@8@01)) $Perm.Write)
  :pattern ((Seq_index
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@21@01)))))))
    i@24@01))
  :qid |Integer_value-permAtMostOne|)))
; Permission implies non-null receiver
(assert (forall ((i@24@01 Int)) (!
  (=>
    (and
      (Seq_contains (Seq_range 0 gsize@8@01) i@24@01)
      (< $Perm.No (/ (to_real 1) (to_real gsize@8@01))))
    (not
      (=
        (Seq_index
          ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@21@01)))))))
          i@24@01)
        $Ref.null)))
  :pattern ((Seq_index
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@21@01)))))))
    i@24@01))
  :qid |Integer_value-permImpliesNonNull|)))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@21@01))))))))))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@21@01)))))))))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@21@01))))))))))))))))))
; [eval] tid == 0
(push) ; 3
(set-option :timeout 10)
(assert (not (not (= tid@9@01 0))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (= tid@9@01 0)))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; [then-branch: 5 | tid@9@01 == 0 | live]
; [else-branch: 5 | tid@9@01 != 0 | live]
(set-option :timeout 0)
(push) ; 3
; [then-branch: 5 | tid@9@01 == 0]
(assert (= tid@9@01 0))
; [eval] this.dst[0]
(push) ; 4
(set-option :timeout 10)
(assert (not (< $Perm.No $k@23@01)))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 4
(assert (not (<
  0
  (Seq_length
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@21@01)))))))))))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(declare-const sm@27@01 $FVF<Integer_value>)
; Definitional axioms for singleton-SM's value
(assert (=
  ($FVF.lookup_Integer_value (as sm@27@01  $FVF<Integer_value>) (Seq_index
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@21@01)))))))))
    0))
  ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@21@01))))))))))))))))))
(assert (<=
  $Perm.No
  (ite
    (=
      (Seq_index
        ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@21@01)))))))))
        0)
      (Seq_index
        ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@21@01)))))))))
        0))
    $Perm.Write
    $Perm.No)))
(assert (<=
  (ite
    (=
      (Seq_index
        ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@21@01)))))))))
        0)
      (Seq_index
        ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@21@01)))))))))
        0))
    $Perm.Write
    $Perm.No)
  $Perm.Write))
(assert (=>
  (=
    (Seq_index
      ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@21@01)))))))))
      0)
    (Seq_index
      ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@21@01)))))))))
      0))
  (not
    (=
      (Seq_index
        ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@21@01)))))))))
        0)
      $Ref.null))))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@21@01)))))))))))))))
  $Snap.unit))
; [eval] (tid == 0 ? (forall i: Int :: { this.src[i] } 0 <= i && i < tcount ==> this.dst[0].Integer_value >= this.src[i].Integer_value) : true)
; [eval] tid == 0
(push) ; 4
(push) ; 5
(set-option :timeout 10)
(assert (not (not (= tid@9@01 0))))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
; [then-branch: 6 | tid@9@01 == 0 | live]
; [else-branch: 6 | tid@9@01 != 0 | dead]
(set-option :timeout 0)
(push) ; 5
; [then-branch: 6 | tid@9@01 == 0]
; [eval] (forall i: Int :: { this.src[i] } 0 <= i && i < tcount ==> this.dst[0].Integer_value >= this.src[i].Integer_value)
(declare-const i@28@01 Int)
(push) ; 6
; [eval] 0 <= i && i < tcount ==> this.dst[0].Integer_value >= this.src[i].Integer_value
; [eval] 0 <= i && i < tcount
; [eval] 0 <= i
(push) ; 7
; [then-branch: 7 | !(0 <= i@28@01) | live]
; [else-branch: 7 | 0 <= i@28@01 | live]
(push) ; 8
; [then-branch: 7 | !(0 <= i@28@01)]
(assert (not (<= 0 i@28@01)))
(pop) ; 8
(push) ; 8
; [else-branch: 7 | 0 <= i@28@01]
(assert (<= 0 i@28@01))
; [eval] i < tcount
(pop) ; 8
(pop) ; 7
; Joined path conditions
; Joined path conditions
(assert (or (<= 0 i@28@01) (not (<= 0 i@28@01))))
(push) ; 7
; [then-branch: 8 | 0 <= i@28@01 && i@28@01 < tcount@7@01 | live]
; [else-branch: 8 | !(0 <= i@28@01 && i@28@01 < tcount@7@01) | live]
(push) ; 8
; [then-branch: 8 | 0 <= i@28@01 && i@28@01 < tcount@7@01]
(assert (and (<= 0 i@28@01) (< i@28@01 tcount@7@01)))
; [eval] this.dst[0].Integer_value >= this.src[i].Integer_value
; [eval] this.dst[0]
(push) ; 9
(set-option :timeout 10)
(assert (not (< $Perm.No $k@23@01)))
(check-sat)
; unsat
(pop) ; 9
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 9
(assert (not (<
  0
  (Seq_length
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@21@01)))))))))))))
(check-sat)
; unsat
(pop) ; 9
; 0.00s
; (get-info :all-statistics)
(declare-const sm@29@01 $FVF<Integer_value>)
; Definitional axioms for snapshot map values
(assert (forall ((r $Ref)) (!
  (=>
    (ite
      (and (img@26@01 r) (Seq_contains (Seq_range 0 gsize@8@01) (inv@25@01 r)))
      (< $Perm.No (/ (to_real 1) (to_real gsize@8@01)))
      false)
    (=
      ($FVF.lookup_Integer_value (as sm@29@01  $FVF<Integer_value>) r)
      ($FVF.lookup_Integer_value ($SortWrappers.$SnapTo$FVF<Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@21@01))))))))))))))) r)))
  :pattern (($FVF.lookup_Integer_value (as sm@29@01  $FVF<Integer_value>) r))
  :pattern (($FVF.lookup_Integer_value ($SortWrappers.$SnapTo$FVF<Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@21@01))))))))))))))) r))
  :qid |qp.fvfValDef0|)))
(assert (forall ((r $Ref)) (!
  (=>
    (=
      r
      (Seq_index
        ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@21@01)))))))))
        0))
    (=
      ($FVF.lookup_Integer_value (as sm@29@01  $FVF<Integer_value>) r)
      ($FVF.lookup_Integer_value (as sm@27@01  $FVF<Integer_value>) r)))
  :pattern (($FVF.lookup_Integer_value (as sm@29@01  $FVF<Integer_value>) r))
  :pattern (($FVF.lookup_Integer_value (as sm@27@01  $FVF<Integer_value>) r))
  :qid |qp.fvfValDef1|)))
(declare-const pm@30@01 $FPM)
(assert (forall ((r $Ref)) (!
  (=
    ($FVF.perm_Integer_value (as pm@30@01  $FPM) r)
    (+
      (ite
        (and (img@26@01 r) (Seq_contains (Seq_range 0 gsize@8@01) (inv@25@01 r)))
        (/ (to_real 1) (to_real gsize@8@01))
        $Perm.No)
      (ite
        (=
          r
          (Seq_index
            ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@21@01)))))))))
            0))
        $Perm.Write
        $Perm.No)))
  :pattern (($FVF.perm_Integer_value (as pm@30@01  $FPM) r))
  :qid |qp.resPrmSumDef2|)))
(push) ; 9
(assert (not (<
  $Perm.No
  ($FVF.perm_Integer_value (as pm@30@01  $FPM) (Seq_index
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@21@01)))))))))
    0)))))
(check-sat)
; unsat
(pop) ; 9
; 0.00s
; (get-info :all-statistics)
; [eval] this.src[i]
(push) ; 9
(set-option :timeout 10)
(assert (not (< $Perm.No $k@22@01)))
(check-sat)
; unsat
(pop) ; 9
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 9
(assert (not (>= i@28@01 0)))
(check-sat)
; unsat
(pop) ; 9
; 0.00s
; (get-info :all-statistics)
(push) ; 9
(assert (not (<
  i@28@01
  (Seq_length
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@21@01)))))))))))
(check-sat)
; unsat
(pop) ; 9
; 0.00s
; (get-info :all-statistics)
(assert (and
  (forall ((r $Ref)) (!
    (=>
      (ite
        (and (img@26@01 r) (Seq_contains (Seq_range 0 gsize@8@01) (inv@25@01 r)))
        (< $Perm.No (/ (to_real 1) (to_real gsize@8@01)))
        false)
      (=
        ($FVF.lookup_Integer_value (as sm@29@01  $FVF<Integer_value>) r)
        ($FVF.lookup_Integer_value ($SortWrappers.$SnapTo$FVF<Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@21@01))))))))))))))) r)))
    :pattern (($FVF.lookup_Integer_value (as sm@29@01  $FVF<Integer_value>) r))
    :pattern (($FVF.lookup_Integer_value ($SortWrappers.$SnapTo$FVF<Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@21@01))))))))))))))) r))
    :qid |qp.fvfValDef0|))
  (forall ((r $Ref)) (!
    (=>
      (=
        r
        (Seq_index
          ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@21@01)))))))))
          0))
      (=
        ($FVF.lookup_Integer_value (as sm@29@01  $FVF<Integer_value>) r)
        ($FVF.lookup_Integer_value (as sm@27@01  $FVF<Integer_value>) r)))
    :pattern (($FVF.lookup_Integer_value (as sm@29@01  $FVF<Integer_value>) r))
    :pattern (($FVF.lookup_Integer_value (as sm@27@01  $FVF<Integer_value>) r))
    :qid |qp.fvfValDef1|))))
(push) ; 9
(assert (not (<
  $Perm.No
  (+
    (ite
      (and
        (img@26@01 (Seq_index
          ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@21@01)))))))
          i@28@01))
        (Seq_contains
          (Seq_range 0 gsize@8@01)
          (inv@25@01 (Seq_index
            ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@21@01)))))))
            i@28@01))))
      (/ (to_real 1) (to_real gsize@8@01))
      $Perm.No)
    (ite
      (=
        (Seq_index
          ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@21@01)))))))
          i@28@01)
        (Seq_index
          ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@21@01)))))))))
          0))
      $Perm.Write
      $Perm.No)))))
(check-sat)
; unsat
(pop) ; 9
; 0.00s
; (get-info :all-statistics)
(pop) ; 8
(push) ; 8
; [else-branch: 8 | !(0 <= i@28@01 && i@28@01 < tcount@7@01)]
(assert (not (and (<= 0 i@28@01) (< i@28@01 tcount@7@01))))
(pop) ; 8
(pop) ; 7
; Joined path conditions
(assert (forall ((r $Ref)) (!
  (=>
    (ite
      (and (img@26@01 r) (Seq_contains (Seq_range 0 gsize@8@01) (inv@25@01 r)))
      (< $Perm.No (/ (to_real 1) (to_real gsize@8@01)))
      false)
    (=
      ($FVF.lookup_Integer_value (as sm@29@01  $FVF<Integer_value>) r)
      ($FVF.lookup_Integer_value ($SortWrappers.$SnapTo$FVF<Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@21@01))))))))))))))) r)))
  :pattern (($FVF.lookup_Integer_value (as sm@29@01  $FVF<Integer_value>) r))
  :pattern (($FVF.lookup_Integer_value ($SortWrappers.$SnapTo$FVF<Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@21@01))))))))))))))) r))
  :qid |qp.fvfValDef0|)))
(assert (forall ((r $Ref)) (!
  (=>
    (=
      r
      (Seq_index
        ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@21@01)))))))))
        0))
    (=
      ($FVF.lookup_Integer_value (as sm@29@01  $FVF<Integer_value>) r)
      ($FVF.lookup_Integer_value (as sm@27@01  $FVF<Integer_value>) r)))
  :pattern (($FVF.lookup_Integer_value (as sm@29@01  $FVF<Integer_value>) r))
  :pattern (($FVF.lookup_Integer_value (as sm@27@01  $FVF<Integer_value>) r))
  :qid |qp.fvfValDef1|)))
(assert (forall ((r $Ref)) (!
  (=
    ($FVF.perm_Integer_value (as pm@30@01  $FPM) r)
    (+
      (ite
        (and (img@26@01 r) (Seq_contains (Seq_range 0 gsize@8@01) (inv@25@01 r)))
        (/ (to_real 1) (to_real gsize@8@01))
        $Perm.No)
      (ite
        (=
          r
          (Seq_index
            ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@21@01)))))))))
            0))
        $Perm.Write
        $Perm.No)))
  :pattern (($FVF.perm_Integer_value (as pm@30@01  $FPM) r))
  :qid |qp.resPrmSumDef2|)))
; Joined path conditions
(assert (or
  (not (and (<= 0 i@28@01) (< i@28@01 tcount@7@01)))
  (and (<= 0 i@28@01) (< i@28@01 tcount@7@01))))
(pop) ; 6
; Nested auxiliary terms: globals (aux)
(assert (forall ((r $Ref)) (!
  (=>
    (ite
      (and (img@26@01 r) (Seq_contains (Seq_range 0 gsize@8@01) (inv@25@01 r)))
      (< $Perm.No (/ (to_real 1) (to_real gsize@8@01)))
      false)
    (=
      ($FVF.lookup_Integer_value (as sm@29@01  $FVF<Integer_value>) r)
      ($FVF.lookup_Integer_value ($SortWrappers.$SnapTo$FVF<Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@21@01))))))))))))))) r)))
  :pattern (($FVF.lookup_Integer_value (as sm@29@01  $FVF<Integer_value>) r))
  :pattern (($FVF.lookup_Integer_value ($SortWrappers.$SnapTo$FVF<Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@21@01))))))))))))))) r))
  :qid |qp.fvfValDef0|)))
(assert (forall ((r $Ref)) (!
  (=>
    (=
      r
      (Seq_index
        ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@21@01)))))))))
        0))
    (=
      ($FVF.lookup_Integer_value (as sm@29@01  $FVF<Integer_value>) r)
      ($FVF.lookup_Integer_value (as sm@27@01  $FVF<Integer_value>) r)))
  :pattern (($FVF.lookup_Integer_value (as sm@29@01  $FVF<Integer_value>) r))
  :pattern (($FVF.lookup_Integer_value (as sm@27@01  $FVF<Integer_value>) r))
  :qid |qp.fvfValDef1|)))
(assert (forall ((r $Ref)) (!
  (=
    ($FVF.perm_Integer_value (as pm@30@01  $FPM) r)
    (+
      (ite
        (and (img@26@01 r) (Seq_contains (Seq_range 0 gsize@8@01) (inv@25@01 r)))
        (/ (to_real 1) (to_real gsize@8@01))
        $Perm.No)
      (ite
        (=
          r
          (Seq_index
            ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@21@01)))))))))
            0))
        $Perm.Write
        $Perm.No)))
  :pattern (($FVF.perm_Integer_value (as pm@30@01  $FPM) r))
  :qid |qp.resPrmSumDef2|)))
; Nested auxiliary terms: non-globals (aux)
(assert (forall ((i@28@01 Int)) (!
  (and
    (or (<= 0 i@28@01) (not (<= 0 i@28@01)))
    (or
      (not (and (<= 0 i@28@01) (< i@28@01 tcount@7@01)))
      (and (<= 0 i@28@01) (< i@28@01 tcount@7@01))))
  :pattern ((Seq_index
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@21@01)))))))
    i@28@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/third_party/max-two-range.vpr@42@24@42@126-aux|)))
(pop) ; 5
(pop) ; 4
; Joined path conditions
(assert (forall ((r $Ref)) (!
  (=>
    (ite
      (and (img@26@01 r) (Seq_contains (Seq_range 0 gsize@8@01) (inv@25@01 r)))
      (< $Perm.No (/ (to_real 1) (to_real gsize@8@01)))
      false)
    (=
      ($FVF.lookup_Integer_value (as sm@29@01  $FVF<Integer_value>) r)
      ($FVF.lookup_Integer_value ($SortWrappers.$SnapTo$FVF<Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@21@01))))))))))))))) r)))
  :pattern (($FVF.lookup_Integer_value (as sm@29@01  $FVF<Integer_value>) r))
  :pattern (($FVF.lookup_Integer_value ($SortWrappers.$SnapTo$FVF<Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@21@01))))))))))))))) r))
  :qid |qp.fvfValDef0|)))
(assert (forall ((r $Ref)) (!
  (=>
    (=
      r
      (Seq_index
        ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@21@01)))))))))
        0))
    (=
      ($FVF.lookup_Integer_value (as sm@29@01  $FVF<Integer_value>) r)
      ($FVF.lookup_Integer_value (as sm@27@01  $FVF<Integer_value>) r)))
  :pattern (($FVF.lookup_Integer_value (as sm@29@01  $FVF<Integer_value>) r))
  :pattern (($FVF.lookup_Integer_value (as sm@27@01  $FVF<Integer_value>) r))
  :qid |qp.fvfValDef1|)))
(assert (forall ((r $Ref)) (!
  (=
    ($FVF.perm_Integer_value (as pm@30@01  $FPM) r)
    (+
      (ite
        (and (img@26@01 r) (Seq_contains (Seq_range 0 gsize@8@01) (inv@25@01 r)))
        (/ (to_real 1) (to_real gsize@8@01))
        $Perm.No)
      (ite
        (=
          r
          (Seq_index
            ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@21@01)))))))))
            0))
        $Perm.Write
        $Perm.No)))
  :pattern (($FVF.perm_Integer_value (as pm@30@01  $FPM) r))
  :qid |qp.resPrmSumDef2|)))
(assert (=>
  (= tid@9@01 0)
  (forall ((i@28@01 Int)) (!
    (and
      (or (<= 0 i@28@01) (not (<= 0 i@28@01)))
      (or
        (not (and (<= 0 i@28@01) (< i@28@01 tcount@7@01)))
        (and (<= 0 i@28@01) (< i@28@01 tcount@7@01))))
    :pattern ((Seq_index
      ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@21@01)))))))
      i@28@01))
    :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/third_party/max-two-range.vpr@42@24@42@126-aux|))))
(assert (forall ((i@28@01 Int)) (!
  (=>
    (and (<= 0 i@28@01) (< i@28@01 tcount@7@01))
    (>=
      ($FVF.lookup_Integer_value (as sm@29@01  $FVF<Integer_value>) (Seq_index
        ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@21@01)))))))))
        0))
      ($FVF.lookup_Integer_value (as sm@29@01  $FVF<Integer_value>) (Seq_index
        ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@21@01)))))))
        i@28@01))))
  :pattern ((Seq_index
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@21@01)))))))
    i@28@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/third_party/max-two-range.vpr@42@24@42@126|)))
(pop) ; 3
(push) ; 3
; [else-branch: 5 | tid@9@01 != 0]
(assert (not (= tid@9@01 0)))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@21@01)))))))))))))))
  $Snap.unit))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@21@01)))))))))))))))
  $Snap.unit))
; [eval] (tid == 0 ? (forall i: Int :: { this.src[i] } 0 <= i && i < tcount ==> this.dst[0].Integer_value >= this.src[i].Integer_value) : true)
; [eval] tid == 0
(push) ; 4
; [then-branch: 9 | tid@9@01 == 0 | dead]
; [else-branch: 9 | tid@9@01 != 0 | live]
(push) ; 5
; [else-branch: 9 | tid@9@01 != 0]
(pop) ; 5
(pop) ; 4
; Joined path conditions
(pop) ; 3
(pop) ; 2
(push) ; 2
; [exec]
; var __last_barrier: Int
(declare-const __last_barrier@31@01 Int)
; [exec]
; var k: Int
(declare-const k@32@01 Int)
; [exec]
; var half: Int
(declare-const half@33@01 Int)
; [exec]
; var offset: Int
(declare-const offset@34@01 Int)
; [exec]
; __last_barrier := 0
; [exec]
; half := gsize \ 2
; [eval] gsize \ 2
(declare-const half@35@01 Int)
(assert (= half@35@01 (div gsize@8@01 2)))
; [exec]
; offset := (tid == 0 ? 0 : half)
; [eval] (tid == 0 ? 0 : half)
; [eval] tid == 0
(push) ; 3
(push) ; 4
(set-option :timeout 10)
(assert (not (not (= tid@9@01 0))))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not (= tid@9@01 0)))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; [then-branch: 10 | tid@9@01 == 0 | live]
; [else-branch: 10 | tid@9@01 != 0 | live]
(set-option :timeout 0)
(push) ; 4
; [then-branch: 10 | tid@9@01 == 0]
(assert (= tid@9@01 0))
(pop) ; 4
(push) ; 4
; [else-branch: 10 | tid@9@01 != 0]
(assert (not (= tid@9@01 0)))
(pop) ; 4
(pop) ; 3
; Joined path conditions
; Joined path conditions
(assert (or (not (= tid@9@01 0)) (= tid@9@01 0)))
(declare-const offset@36@01 Int)
(assert (= offset@36@01 (ite (= tid@9@01 0) 0 half@35@01)))
; [eval] tid < 2
(push) ; 3
(set-option :timeout 10)
(assert (not (not (< tid@9@01 2))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (< tid@9@01 2)))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; [then-branch: 11 | tid@9@01 < 2 | live]
; [else-branch: 11 | !(tid@9@01 < 2) | live]
(set-option :timeout 0)
(push) ; 3
; [then-branch: 11 | tid@9@01 < 2]
(assert (< tid@9@01 2))
; [exec]
; this.dst[tid].Integer_value := this.src[offset].Integer_value
; [eval] this.dst[tid]
(push) ; 4
(set-option :timeout 10)
(assert (not (< $Perm.No $k@14@01)))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 4
(assert (not (>= tid@9@01 0)))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(push) ; 4
(assert (not (<
  tid@9@01
  (Seq_length
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@12@01)))))))))))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; [eval] this.src[offset]
(push) ; 4
(set-option :timeout 10)
(assert (not (< $Perm.No $k@13@01)))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 4
(assert (not (>= offset@36@01 0)))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(push) ; 4
(assert (not (<
  offset@36@01
  (Seq_length
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@12@01)))))))))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(declare-const sm@37@01 $FVF<Integer_value>)
; Definitional axioms for snapshot map values
(assert (forall ((r $Ref)) (!
  (=>
    (ite
      (and (img@19@01 r) (Seq_contains (Seq_range 0 gsize@8@01) (inv@18@01 r)))
      (< $Perm.No (/ (to_real 1) (to_real gsize@8@01)))
      false)
    (=
      ($FVF.lookup_Integer_value (as sm@37@01  $FVF<Integer_value>) r)
      ($FVF.lookup_Integer_value ($SortWrappers.$SnapTo$FVF<Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@12@01)))))))))))))) r)))
  :pattern (($FVF.lookup_Integer_value (as sm@37@01  $FVF<Integer_value>) r))
  :pattern (($FVF.lookup_Integer_value ($SortWrappers.$SnapTo$FVF<Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@12@01)))))))))))))) r))
  :qid |qp.fvfValDef3|)))
(assert (forall ((r $Ref)) (!
  (=>
    (=
      r
      (Seq_index
        ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@12@01)))))))))
        tid@9@01))
    (=
      ($FVF.lookup_Integer_value (as sm@37@01  $FVF<Integer_value>) r)
      ($FVF.lookup_Integer_value (as sm@20@01  $FVF<Integer_value>) r)))
  :pattern (($FVF.lookup_Integer_value (as sm@37@01  $FVF<Integer_value>) r))
  :pattern (($FVF.lookup_Integer_value (as sm@20@01  $FVF<Integer_value>) r))
  :qid |qp.fvfValDef4|)))
(declare-const pm@38@01 $FPM)
(assert (forall ((r $Ref)) (!
  (=
    ($FVF.perm_Integer_value (as pm@38@01  $FPM) r)
    (+
      (ite
        (and (img@19@01 r) (Seq_contains (Seq_range 0 gsize@8@01) (inv@18@01 r)))
        (/ (to_real 1) (to_real gsize@8@01))
        $Perm.No)
      (ite
        (=
          r
          (Seq_index
            ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@12@01)))))))))
            tid@9@01))
        $Perm.Write
        $Perm.No)))
  :pattern (($FVF.perm_Integer_value (as pm@38@01  $FPM) r))
  :qid |qp.resPrmSumDef5|)))
(push) ; 4
(assert (not (<
  $Perm.No
  ($FVF.perm_Integer_value (as pm@38@01  $FPM) (Seq_index
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@12@01)))))))
    offset@36@01)))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; Precomputing data for removing quantified permissions
(define-fun pTaken@39@01 ((r $Ref)) $Perm
  (ite
    (=
      r
      (Seq_index
        ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@12@01)))))))))
        tid@9@01))
    ($Perm.min
      (ite
        (=
          r
          (Seq_index
            ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@12@01)))))))))
            tid@9@01))
        $Perm.Write
        $Perm.No)
      $Perm.Write)
    $Perm.No))
(define-fun pTaken@40@01 ((r $Ref)) $Perm
  (ite
    (=
      r
      (Seq_index
        ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@12@01)))))))))
        tid@9@01))
    ($Perm.min
      (ite
        (and (img@19@01 r) (Seq_contains (Seq_range 0 gsize@8@01) (inv@18@01 r)))
        (/ (to_real 1) (to_real gsize@8@01))
        $Perm.No)
      (- $Perm.Write (pTaken@39@01 r)))
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
(assert (not (=
  (-
    (ite
      (=
        (Seq_index
          ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@12@01)))))))))
          tid@9@01)
        (Seq_index
          ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@12@01)))))))))
          tid@9@01))
      $Perm.Write
      $Perm.No)
    (pTaken@39@01 (Seq_index
      ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@12@01)))))))))
      tid@9@01)))
  $Perm.No)))
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
    (=
      r
      (Seq_index
        ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@12@01)))))))))
        tid@9@01))
    (= (- $Perm.Write (pTaken@39@01 r)) $Perm.No))
  
  :qid |quant-u-17924|))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; Final check if taken enough permissions
; Done removing quantified permissions
(declare-const sm@41@01 $FVF<Integer_value>)
; Definitional axioms for singleton-FVF's value
(assert (=
  ($FVF.lookup_Integer_value (as sm@41@01  $FVF<Integer_value>) (Seq_index
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@12@01)))))))))
    tid@9@01))
  ($FVF.lookup_Integer_value (as sm@37@01  $FVF<Integer_value>) (Seq_index
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@12@01)))))))
    offset@36@01))))
; [exec]
; k := 0
; [exec]
; assert this.dst[tid].Integer_value >= this.src[offset].Integer_value
; [eval] this.dst[tid].Integer_value >= this.src[offset].Integer_value
; [eval] this.dst[tid]
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not (< $Perm.No $k@14@01)))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 4
(assert (not (>= tid@9@01 0)))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(push) ; 4
(assert (not (<
  tid@9@01
  (Seq_length
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@12@01)))))))))))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(declare-const sm@42@01 $FVF<Integer_value>)
; Definitional axioms for snapshot map values
(assert (forall ((r $Ref)) (!
  (=>
    (=
      r
      (Seq_index
        ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@12@01)))))))))
        tid@9@01))
    (=
      ($FVF.lookup_Integer_value (as sm@42@01  $FVF<Integer_value>) r)
      ($FVF.lookup_Integer_value (as sm@41@01  $FVF<Integer_value>) r)))
  :pattern (($FVF.lookup_Integer_value (as sm@42@01  $FVF<Integer_value>) r))
  :pattern (($FVF.lookup_Integer_value (as sm@41@01  $FVF<Integer_value>) r))
  :qid |qp.fvfValDef6|)))
(assert (forall ((r $Ref)) (!
  (=>
    (ite
      (and (img@19@01 r) (Seq_contains (Seq_range 0 gsize@8@01) (inv@18@01 r)))
      (< $Perm.No (/ (to_real 1) (to_real gsize@8@01)))
      false)
    (=
      ($FVF.lookup_Integer_value (as sm@42@01  $FVF<Integer_value>) r)
      ($FVF.lookup_Integer_value ($SortWrappers.$SnapTo$FVF<Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@12@01)))))))))))))) r)))
  :pattern (($FVF.lookup_Integer_value (as sm@42@01  $FVF<Integer_value>) r))
  :pattern (($FVF.lookup_Integer_value ($SortWrappers.$SnapTo$FVF<Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@12@01)))))))))))))) r))
  :qid |qp.fvfValDef7|)))
(declare-const pm@43@01 $FPM)
(assert (forall ((r $Ref)) (!
  (=
    ($FVF.perm_Integer_value (as pm@43@01  $FPM) r)
    (+
      (ite
        (=
          r
          (Seq_index
            ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@12@01)))))))))
            tid@9@01))
        $Perm.Write
        $Perm.No)
      (ite
        (and (img@19@01 r) (Seq_contains (Seq_range 0 gsize@8@01) (inv@18@01 r)))
        (/ (to_real 1) (to_real gsize@8@01))
        $Perm.No)))
  :pattern (($FVF.perm_Integer_value (as pm@43@01  $FPM) r))
  :qid |qp.resPrmSumDef8|)))
(push) ; 4
(assert (not (<
  $Perm.No
  ($FVF.perm_Integer_value (as pm@43@01  $FPM) (Seq_index
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@12@01)))))))))
    tid@9@01)))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; [eval] this.src[offset]
(push) ; 4
(set-option :timeout 10)
(assert (not (< $Perm.No $k@13@01)))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 4
(assert (not (>= offset@36@01 0)))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(push) ; 4
(assert (not (<
  offset@36@01
  (Seq_length
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@12@01)))))))))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(assert (and
  (forall ((r $Ref)) (!
    (=>
      (=
        r
        (Seq_index
          ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@12@01)))))))))
          tid@9@01))
      (=
        ($FVF.lookup_Integer_value (as sm@42@01  $FVF<Integer_value>) r)
        ($FVF.lookup_Integer_value (as sm@41@01  $FVF<Integer_value>) r)))
    :pattern (($FVF.lookup_Integer_value (as sm@42@01  $FVF<Integer_value>) r))
    :pattern (($FVF.lookup_Integer_value (as sm@41@01  $FVF<Integer_value>) r))
    :qid |qp.fvfValDef6|))
  (forall ((r $Ref)) (!
    (=>
      (ite
        (and (img@19@01 r) (Seq_contains (Seq_range 0 gsize@8@01) (inv@18@01 r)))
        (< $Perm.No (/ (to_real 1) (to_real gsize@8@01)))
        false)
      (=
        ($FVF.lookup_Integer_value (as sm@42@01  $FVF<Integer_value>) r)
        ($FVF.lookup_Integer_value ($SortWrappers.$SnapTo$FVF<Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@12@01)))))))))))))) r)))
    :pattern (($FVF.lookup_Integer_value (as sm@42@01  $FVF<Integer_value>) r))
    :pattern (($FVF.lookup_Integer_value ($SortWrappers.$SnapTo$FVF<Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@12@01)))))))))))))) r))
    :qid |qp.fvfValDef7|))))
(push) ; 4
(assert (not (<
  $Perm.No
  (+
    (ite
      (=
        (Seq_index
          ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@12@01)))))))
          offset@36@01)
        (Seq_index
          ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@12@01)))))))))
          tid@9@01))
      $Perm.Write
      $Perm.No)
    (ite
      (and
        (img@19@01 (Seq_index
          ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@12@01)))))))
          offset@36@01))
        (Seq_contains
          (Seq_range 0 gsize@8@01)
          (inv@18@01 (Seq_index
            ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@12@01)))))))
            offset@36@01))))
      (/ (to_real 1) (to_real gsize@8@01))
      $Perm.No)))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(push) ; 4
(assert (not (>=
  ($FVF.lookup_Integer_value (as sm@42@01  $FVF<Integer_value>) (Seq_index
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@12@01)))))))))
    tid@9@01))
  ($FVF.lookup_Integer_value (as sm@42@01  $FVF<Integer_value>) (Seq_index
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@12@01)))))))
    offset@36@01)))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(assert (>=
  ($FVF.lookup_Integer_value (as sm@42@01  $FVF<Integer_value>) (Seq_index
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@12@01)))))))))
    tid@9@01))
  ($FVF.lookup_Integer_value (as sm@42@01  $FVF<Integer_value>) (Seq_index
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@12@01)))))))
    offset@36@01))))
; [exec]
; assert this.dst[tid].Integer_value >= this.src[offset + 0].Integer_value
; [eval] this.dst[tid].Integer_value >= this.src[offset + 0].Integer_value
; [eval] this.dst[tid]
(push) ; 4
(set-option :timeout 10)
(assert (not (< $Perm.No $k@14@01)))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 4
(assert (not (>= tid@9@01 0)))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(push) ; 4
(assert (not (<
  tid@9@01
  (Seq_length
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@12@01)))))))))))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(assert (and
  (forall ((r $Ref)) (!
    (=>
      (=
        r
        (Seq_index
          ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@12@01)))))))))
          tid@9@01))
      (=
        ($FVF.lookup_Integer_value (as sm@42@01  $FVF<Integer_value>) r)
        ($FVF.lookup_Integer_value (as sm@41@01  $FVF<Integer_value>) r)))
    :pattern (($FVF.lookup_Integer_value (as sm@42@01  $FVF<Integer_value>) r))
    :pattern (($FVF.lookup_Integer_value (as sm@41@01  $FVF<Integer_value>) r))
    :qid |qp.fvfValDef6|))
  (forall ((r $Ref)) (!
    (=>
      (ite
        (and (img@19@01 r) (Seq_contains (Seq_range 0 gsize@8@01) (inv@18@01 r)))
        (< $Perm.No (/ (to_real 1) (to_real gsize@8@01)))
        false)
      (=
        ($FVF.lookup_Integer_value (as sm@42@01  $FVF<Integer_value>) r)
        ($FVF.lookup_Integer_value ($SortWrappers.$SnapTo$FVF<Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@12@01)))))))))))))) r)))
    :pattern (($FVF.lookup_Integer_value (as sm@42@01  $FVF<Integer_value>) r))
    :pattern (($FVF.lookup_Integer_value ($SortWrappers.$SnapTo$FVF<Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@12@01)))))))))))))) r))
    :qid |qp.fvfValDef7|))))
(push) ; 4
(assert (not (<
  $Perm.No
  (+
    (ite
      (=
        (Seq_index
          ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@12@01)))))))))
          tid@9@01)
        (Seq_index
          ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@12@01)))))))))
          tid@9@01))
      $Perm.Write
      $Perm.No)
    (ite
      (and
        (img@19@01 (Seq_index
          ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@12@01)))))))))
          tid@9@01))
        (Seq_contains
          (Seq_range 0 gsize@8@01)
          (inv@18@01 (Seq_index
            ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@12@01)))))))))
            tid@9@01))))
      (/ (to_real 1) (to_real gsize@8@01))
      $Perm.No)))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; [eval] this.src[offset + 0]
(push) ; 4
(set-option :timeout 10)
(assert (not (< $Perm.No $k@13@01)))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; [eval] offset + 0
(set-option :timeout 0)
(push) ; 4
(assert (not (>= offset@36@01 0)))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(push) ; 4
(assert (not (<
  offset@36@01
  (Seq_length
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@12@01)))))))))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(assert (and
  (forall ((r $Ref)) (!
    (=>
      (=
        r
        (Seq_index
          ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@12@01)))))))))
          tid@9@01))
      (=
        ($FVF.lookup_Integer_value (as sm@42@01  $FVF<Integer_value>) r)
        ($FVF.lookup_Integer_value (as sm@41@01  $FVF<Integer_value>) r)))
    :pattern (($FVF.lookup_Integer_value (as sm@42@01  $FVF<Integer_value>) r))
    :pattern (($FVF.lookup_Integer_value (as sm@41@01  $FVF<Integer_value>) r))
    :qid |qp.fvfValDef6|))
  (forall ((r $Ref)) (!
    (=>
      (ite
        (and (img@19@01 r) (Seq_contains (Seq_range 0 gsize@8@01) (inv@18@01 r)))
        (< $Perm.No (/ (to_real 1) (to_real gsize@8@01)))
        false)
      (=
        ($FVF.lookup_Integer_value (as sm@42@01  $FVF<Integer_value>) r)
        ($FVF.lookup_Integer_value ($SortWrappers.$SnapTo$FVF<Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@12@01)))))))))))))) r)))
    :pattern (($FVF.lookup_Integer_value (as sm@42@01  $FVF<Integer_value>) r))
    :pattern (($FVF.lookup_Integer_value ($SortWrappers.$SnapTo$FVF<Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@12@01)))))))))))))) r))
    :qid |qp.fvfValDef7|))))
(push) ; 4
(assert (not (<
  $Perm.No
  (+
    (ite
      (=
        (Seq_index
          ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@12@01)))))))
          offset@36@01)
        (Seq_index
          ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@12@01)))))))))
          tid@9@01))
      $Perm.Write
      $Perm.No)
    (ite
      (and
        (img@19@01 (Seq_index
          ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@12@01)))))))
          offset@36@01))
        (Seq_contains
          (Seq_range 0 gsize@8@01)
          (inv@18@01 (Seq_index
            ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@12@01)))))))
            offset@36@01))))
      (/ (to_real 1) (to_real gsize@8@01))
      $Perm.No)))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; [exec]
; assert (forall __rw_i6: Int ::
;     { this.src[__rw_i6] }
;     true ==>
;     0 <= __rw_i6 - offset && __rw_i6 - offset < k ==>
;     this.dst[tid].Integer_value >= this.src[__rw_i6].Integer_value)
; [eval] (forall __rw_i6: Int :: { this.src[__rw_i6] } true ==> 0 <= __rw_i6 - offset && __rw_i6 - offset < k ==> this.dst[tid].Integer_value >= this.src[__rw_i6].Integer_value)
(declare-const __rw_i6@44@01 Int)
(push) ; 4
; [eval] true ==> 0 <= __rw_i6 - offset && __rw_i6 - offset < k ==> this.dst[tid].Integer_value >= this.src[__rw_i6].Integer_value
(push) ; 5
(push) ; 6
(set-option :timeout 10)
(assert (not false))
(check-sat)
; unknown
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
; [then-branch: 12 | True | live]
; [else-branch: 12 | False | dead]
(set-option :timeout 0)
(push) ; 6
; [then-branch: 12 | True]
; [eval] 0 <= __rw_i6 - offset && __rw_i6 - offset < k ==> this.dst[tid].Integer_value >= this.src[__rw_i6].Integer_value
; [eval] 0 <= __rw_i6 - offset && __rw_i6 - offset < k
; [eval] 0 <= __rw_i6 - offset
; [eval] __rw_i6 - offset
(push) ; 7
; [then-branch: 13 | !(0 <= __rw_i6@44@01 - offset@36@01) | live]
; [else-branch: 13 | 0 <= __rw_i6@44@01 - offset@36@01 | live]
(push) ; 8
; [then-branch: 13 | !(0 <= __rw_i6@44@01 - offset@36@01)]
(assert (not (<= 0 (- __rw_i6@44@01 offset@36@01))))
(pop) ; 8
(push) ; 8
; [else-branch: 13 | 0 <= __rw_i6@44@01 - offset@36@01]
(assert (<= 0 (- __rw_i6@44@01 offset@36@01)))
; [eval] __rw_i6 - offset < k
; [eval] __rw_i6 - offset
(pop) ; 8
(pop) ; 7
; Joined path conditions
; Joined path conditions
(assert (or
  (<= 0 (- __rw_i6@44@01 offset@36@01))
  (not (<= 0 (- __rw_i6@44@01 offset@36@01)))))
(push) ; 7
; [then-branch: 14 | 0 <= __rw_i6@44@01 - offset@36@01 && __rw_i6@44@01 - offset@36@01 < 0 | live]
; [else-branch: 14 | !(0 <= __rw_i6@44@01 - offset@36@01 && __rw_i6@44@01 - offset@36@01 < 0) | live]
(push) ; 8
; [then-branch: 14 | 0 <= __rw_i6@44@01 - offset@36@01 && __rw_i6@44@01 - offset@36@01 < 0]
(assert (and (<= 0 (- __rw_i6@44@01 offset@36@01)) (< (- __rw_i6@44@01 offset@36@01) 0)))
; [eval] this.dst[tid].Integer_value >= this.src[__rw_i6].Integer_value
; [eval] this.dst[tid]
(push) ; 9
(set-option :timeout 10)
(assert (not (< $Perm.No $k@14@01)))
(check-sat)
; unsat
(pop) ; 9
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 9
(assert (not (>= tid@9@01 0)))
(check-sat)
; unsat
(pop) ; 9
; 0.00s
; (get-info :all-statistics)
(push) ; 9
(assert (not (<
  tid@9@01
  (Seq_length
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@12@01)))))))))))))
(check-sat)
; unsat
(pop) ; 9
; 0.00s
; (get-info :all-statistics)
(assert (and
  (forall ((r $Ref)) (!
    (=>
      (=
        r
        (Seq_index
          ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@12@01)))))))))
          tid@9@01))
      (=
        ($FVF.lookup_Integer_value (as sm@42@01  $FVF<Integer_value>) r)
        ($FVF.lookup_Integer_value (as sm@41@01  $FVF<Integer_value>) r)))
    :pattern (($FVF.lookup_Integer_value (as sm@42@01  $FVF<Integer_value>) r))
    :pattern (($FVF.lookup_Integer_value (as sm@41@01  $FVF<Integer_value>) r))
    :qid |qp.fvfValDef6|))
  (forall ((r $Ref)) (!
    (=>
      (ite
        (and (img@19@01 r) (Seq_contains (Seq_range 0 gsize@8@01) (inv@18@01 r)))
        (< $Perm.No (/ (to_real 1) (to_real gsize@8@01)))
        false)
      (=
        ($FVF.lookup_Integer_value (as sm@42@01  $FVF<Integer_value>) r)
        ($FVF.lookup_Integer_value ($SortWrappers.$SnapTo$FVF<Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@12@01)))))))))))))) r)))
    :pattern (($FVF.lookup_Integer_value (as sm@42@01  $FVF<Integer_value>) r))
    :pattern (($FVF.lookup_Integer_value ($SortWrappers.$SnapTo$FVF<Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@12@01)))))))))))))) r))
    :qid |qp.fvfValDef7|))))
(push) ; 9
(assert (not (<
  $Perm.No
  (+
    (ite
      (=
        (Seq_index
          ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@12@01)))))))))
          tid@9@01)
        (Seq_index
          ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@12@01)))))))))
          tid@9@01))
      $Perm.Write
      $Perm.No)
    (ite
      (and
        (img@19@01 (Seq_index
          ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@12@01)))))))))
          tid@9@01))
        (Seq_contains
          (Seq_range 0 gsize@8@01)
          (inv@18@01 (Seq_index
            ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@12@01)))))))))
            tid@9@01))))
      (/ (to_real 1) (to_real gsize@8@01))
      $Perm.No)))))
(check-sat)
; unsat
(pop) ; 9
; 0.00s
; (get-info :all-statistics)
; [eval] this.src[__rw_i6]
(push) ; 9
(set-option :timeout 10)
(assert (not (< $Perm.No $k@13@01)))
(check-sat)
; unsat
(pop) ; 9
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 9
(assert (not (>= __rw_i6@44@01 0)))
(check-sat)
; unsat
(pop) ; 9
; 0.00s
; (get-info :all-statistics)
(push) ; 9
(assert (not (<
  __rw_i6@44@01
  (Seq_length
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@12@01)))))))))))
(check-sat)
; unsat
(pop) ; 9
; 0.00s
; (get-info :all-statistics)
(assert (and
  (forall ((r $Ref)) (!
    (=>
      (=
        r
        (Seq_index
          ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@12@01)))))))))
          tid@9@01))
      (=
        ($FVF.lookup_Integer_value (as sm@42@01  $FVF<Integer_value>) r)
        ($FVF.lookup_Integer_value (as sm@41@01  $FVF<Integer_value>) r)))
    :pattern (($FVF.lookup_Integer_value (as sm@42@01  $FVF<Integer_value>) r))
    :pattern (($FVF.lookup_Integer_value (as sm@41@01  $FVF<Integer_value>) r))
    :qid |qp.fvfValDef6|))
  (forall ((r $Ref)) (!
    (=>
      (ite
        (and (img@19@01 r) (Seq_contains (Seq_range 0 gsize@8@01) (inv@18@01 r)))
        (< $Perm.No (/ (to_real 1) (to_real gsize@8@01)))
        false)
      (=
        ($FVF.lookup_Integer_value (as sm@42@01  $FVF<Integer_value>) r)
        ($FVF.lookup_Integer_value ($SortWrappers.$SnapTo$FVF<Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@12@01)))))))))))))) r)))
    :pattern (($FVF.lookup_Integer_value (as sm@42@01  $FVF<Integer_value>) r))
    :pattern (($FVF.lookup_Integer_value ($SortWrappers.$SnapTo$FVF<Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@12@01)))))))))))))) r))
    :qid |qp.fvfValDef7|))))
(push) ; 9
(assert (not (<
  $Perm.No
  (+
    (ite
      (=
        (Seq_index
          ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@12@01)))))))
          __rw_i6@44@01)
        (Seq_index
          ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@12@01)))))))))
          tid@9@01))
      $Perm.Write
      $Perm.No)
    (ite
      (and
        (img@19@01 (Seq_index
          ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@12@01)))))))
          __rw_i6@44@01))
        (Seq_contains
          (Seq_range 0 gsize@8@01)
          (inv@18@01 (Seq_index
            ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@12@01)))))))
            __rw_i6@44@01))))
      (/ (to_real 1) (to_real gsize@8@01))
      $Perm.No)))))
(check-sat)
; unsat
(pop) ; 9
; 0.00s
; (get-info :all-statistics)
(pop) ; 8
(push) ; 8
; [else-branch: 14 | !(0 <= __rw_i6@44@01 - offset@36@01 && __rw_i6@44@01 - offset@36@01 < 0)]
(assert (not
  (and
    (<= 0 (- __rw_i6@44@01 offset@36@01))
    (< (- __rw_i6@44@01 offset@36@01) 0))))
(pop) ; 8
(pop) ; 7
; Joined path conditions
(assert (forall ((r $Ref)) (!
  (=>
    (=
      r
      (Seq_index
        ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@12@01)))))))))
        tid@9@01))
    (=
      ($FVF.lookup_Integer_value (as sm@42@01  $FVF<Integer_value>) r)
      ($FVF.lookup_Integer_value (as sm@41@01  $FVF<Integer_value>) r)))
  :pattern (($FVF.lookup_Integer_value (as sm@42@01  $FVF<Integer_value>) r))
  :pattern (($FVF.lookup_Integer_value (as sm@41@01  $FVF<Integer_value>) r))
  :qid |qp.fvfValDef6|)))
(assert (forall ((r $Ref)) (!
  (=>
    (ite
      (and (img@19@01 r) (Seq_contains (Seq_range 0 gsize@8@01) (inv@18@01 r)))
      (< $Perm.No (/ (to_real 1) (to_real gsize@8@01)))
      false)
    (=
      ($FVF.lookup_Integer_value (as sm@42@01  $FVF<Integer_value>) r)
      ($FVF.lookup_Integer_value ($SortWrappers.$SnapTo$FVF<Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@12@01)))))))))))))) r)))
  :pattern (($FVF.lookup_Integer_value (as sm@42@01  $FVF<Integer_value>) r))
  :pattern (($FVF.lookup_Integer_value ($SortWrappers.$SnapTo$FVF<Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@12@01)))))))))))))) r))
  :qid |qp.fvfValDef7|)))
; Joined path conditions
(assert (or
  (not
    (and
      (<= 0 (- __rw_i6@44@01 offset@36@01))
      (< (- __rw_i6@44@01 offset@36@01) 0)))
  (and
    (<= 0 (- __rw_i6@44@01 offset@36@01))
    (< (- __rw_i6@44@01 offset@36@01) 0))))
(pop) ; 6
(pop) ; 5
; Joined path conditions
(assert (forall ((r $Ref)) (!
  (=>
    (=
      r
      (Seq_index
        ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@12@01)))))))))
        tid@9@01))
    (=
      ($FVF.lookup_Integer_value (as sm@42@01  $FVF<Integer_value>) r)
      ($FVF.lookup_Integer_value (as sm@41@01  $FVF<Integer_value>) r)))
  :pattern (($FVF.lookup_Integer_value (as sm@42@01  $FVF<Integer_value>) r))
  :pattern (($FVF.lookup_Integer_value (as sm@41@01  $FVF<Integer_value>) r))
  :qid |qp.fvfValDef6|)))
(assert (forall ((r $Ref)) (!
  (=>
    (ite
      (and (img@19@01 r) (Seq_contains (Seq_range 0 gsize@8@01) (inv@18@01 r)))
      (< $Perm.No (/ (to_real 1) (to_real gsize@8@01)))
      false)
    (=
      ($FVF.lookup_Integer_value (as sm@42@01  $FVF<Integer_value>) r)
      ($FVF.lookup_Integer_value ($SortWrappers.$SnapTo$FVF<Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@12@01)))))))))))))) r)))
  :pattern (($FVF.lookup_Integer_value (as sm@42@01  $FVF<Integer_value>) r))
  :pattern (($FVF.lookup_Integer_value ($SortWrappers.$SnapTo$FVF<Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@12@01)))))))))))))) r))
  :qid |qp.fvfValDef7|)))
(assert (and
  (or
    (<= 0 (- __rw_i6@44@01 offset@36@01))
    (not (<= 0 (- __rw_i6@44@01 offset@36@01))))
  (or
    (not
      (and
        (<= 0 (- __rw_i6@44@01 offset@36@01))
        (< (- __rw_i6@44@01 offset@36@01) 0)))
    (and
      (<= 0 (- __rw_i6@44@01 offset@36@01))
      (< (- __rw_i6@44@01 offset@36@01) 0)))))
(pop) ; 4
; Nested auxiliary terms: globals (aux)
(assert (forall ((r $Ref)) (!
  (=>
    (=
      r
      (Seq_index
        ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@12@01)))))))))
        tid@9@01))
    (=
      ($FVF.lookup_Integer_value (as sm@42@01  $FVF<Integer_value>) r)
      ($FVF.lookup_Integer_value (as sm@41@01  $FVF<Integer_value>) r)))
  :pattern (($FVF.lookup_Integer_value (as sm@42@01  $FVF<Integer_value>) r))
  :pattern (($FVF.lookup_Integer_value (as sm@41@01  $FVF<Integer_value>) r))
  :qid |qp.fvfValDef6|)))
(assert (forall ((r $Ref)) (!
  (=>
    (ite
      (and (img@19@01 r) (Seq_contains (Seq_range 0 gsize@8@01) (inv@18@01 r)))
      (< $Perm.No (/ (to_real 1) (to_real gsize@8@01)))
      false)
    (=
      ($FVF.lookup_Integer_value (as sm@42@01  $FVF<Integer_value>) r)
      ($FVF.lookup_Integer_value ($SortWrappers.$SnapTo$FVF<Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@12@01)))))))))))))) r)))
  :pattern (($FVF.lookup_Integer_value (as sm@42@01  $FVF<Integer_value>) r))
  :pattern (($FVF.lookup_Integer_value ($SortWrappers.$SnapTo$FVF<Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@12@01)))))))))))))) r))
  :qid |qp.fvfValDef7|)))
; Nested auxiliary terms: non-globals (aux)
(assert (forall ((__rw_i6@44@01 Int)) (!
  (and
    (or
      (<= 0 (- __rw_i6@44@01 offset@36@01))
      (not (<= 0 (- __rw_i6@44@01 offset@36@01))))
    (or
      (not
        (and
          (<= 0 (- __rw_i6@44@01 offset@36@01))
          (< (- __rw_i6@44@01 offset@36@01) 0)))
      (and
        (<= 0 (- __rw_i6@44@01 offset@36@01))
        (< (- __rw_i6@44@01 offset@36@01) 0))))
  :pattern ((Seq_index
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@12@01)))))))
    __rw_i6@44@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/third_party/max-two-range.vpr@56@13@56@121-aux|)))
(push) ; 4
(assert (not (forall ((__rw_i6@44@01 Int)) (!
  (=>
    (and
      (<= 0 (- __rw_i6@44@01 offset@36@01))
      (< (- __rw_i6@44@01 offset@36@01) 0))
    (>=
      ($FVF.lookup_Integer_value (as sm@42@01  $FVF<Integer_value>) (Seq_index
        ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@12@01)))))))))
        tid@9@01))
      ($FVF.lookup_Integer_value (as sm@42@01  $FVF<Integer_value>) (Seq_index
        ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@12@01)))))))
        __rw_i6@44@01))))
  :pattern ((Seq_index
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@12@01)))))))
    __rw_i6@44@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/third_party/max-two-range.vpr@56@13@56@121|))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(assert (forall ((__rw_i6@44@01 Int)) (!
  (=>
    (and
      (<= 0 (- __rw_i6@44@01 offset@36@01))
      (< (- __rw_i6@44@01 offset@36@01) 0))
    (>=
      ($FVF.lookup_Integer_value (as sm@42@01  $FVF<Integer_value>) (Seq_index
        ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@12@01)))))))))
        tid@9@01))
      ($FVF.lookup_Integer_value (as sm@42@01  $FVF<Integer_value>) (Seq_index
        ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@12@01)))))))
        __rw_i6@44@01))))
  :pattern ((Seq_index
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@12@01)))))))
    __rw_i6@44@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/third_party/max-two-range.vpr@56@13@56@121|)))
(declare-const k@45@01 Int)
(push) ; 4
; Loop head block: Check well-definedness of invariant
(declare-const $t@46@01 $Snap)
(assert (= $t@46@01 ($Snap.combine ($Snap.first $t@46@01) ($Snap.second $t@46@01))))
(assert (= ($Snap.first $t@46@01) $Snap.unit))
; [eval] 0 <= tid
(assert (=
  ($Snap.second $t@46@01)
  ($Snap.combine
    ($Snap.first ($Snap.second $t@46@01))
    ($Snap.second ($Snap.second $t@46@01)))))
(assert (= ($Snap.first ($Snap.second $t@46@01)) $Snap.unit))
; [eval] tid < tcount
(assert (=
  ($Snap.second ($Snap.second $t@46@01))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second $t@46@01)))
    ($Snap.second ($Snap.second ($Snap.second $t@46@01))))))
(assert (= ($Snap.first ($Snap.second ($Snap.second $t@46@01))) $Snap.unit))
; [eval] tid == lid
(assert (=
  ($Snap.second ($Snap.second ($Snap.second $t@46@01)))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@46@01))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@46@01)))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@46@01))))
  $Snap.unit))
; [eval] tcount == gsize
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@46@01))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@46@01)))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@46@01))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@46@01)))))
  $Snap.unit))
; [eval] gid == 0
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@46@01)))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@46@01))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@46@01)))))))))
(declare-const $k@47@01 $Perm)
(assert ($Perm.isReadVar $k@47@01))
(assert (<= $Perm.No $k@47@01))
(assert (<= $k@47@01 $Perm.Write))
(assert (=> (< $Perm.No $k@47@01) (not (= this@6@01 $Ref.null))))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@46@01))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@46@01)))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@46@01))))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@46@01)))))))
  $Snap.unit))
; [eval] |this.src| == gsize
; [eval] |this.src|
(push) ; 5
(set-option :timeout 10)
(assert (not (< $Perm.No $k@47@01)))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(assert (=
  (Seq_length
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@46@01))))))))
  gsize@8@01))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@46@01)))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@46@01))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@46@01)))))))))))
(declare-const $k@48@01 $Perm)
(assert ($Perm.isReadVar $k@48@01))
(assert (<= $Perm.No $k@48@01))
(assert (<= $k@48@01 $Perm.Write))
(assert (=> (< $Perm.No $k@48@01) (not (= this@6@01 $Ref.null))))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@46@01))))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@46@01)))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@46@01))))))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@46@01)))))))))
  $Snap.unit))
; [eval] |this.dst| == gsize
; [eval] |this.dst|
(set-option :timeout 0)
(push) ; 5
(set-option :timeout 10)
(assert (not (< $Perm.No $k@48@01)))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(assert (=
  (Seq_length
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@46@01))))))))))
  gsize@8@01))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@46@01)))))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@46@01))))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@46@01)))))))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@46@01))))))))))
  $Snap.unit))
; [eval] 4 <= gsize
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@46@01))))))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@46@01)))))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@46@01))))))))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@46@01)))))))))))
  $Snap.unit))
; [eval] gsize % 2 == 0
; [eval] gsize % 2
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@46@01)))))))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@46@01))))))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@46@01)))))))))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@46@01))))))))))))
  $Snap.unit))
; [eval] offset == (tid == 0 ? 0 : half)
; [eval] (tid == 0 ? 0 : half)
; [eval] tid == 0
(set-option :timeout 0)
(push) ; 5
(push) ; 6
(set-option :timeout 10)
(assert (not (not (= tid@9@01 0))))
(check-sat)
; unknown
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 6
(set-option :timeout 10)
(assert (not (= tid@9@01 0)))
(check-sat)
; unknown
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
; [then-branch: 15 | tid@9@01 == 0 | live]
; [else-branch: 15 | tid@9@01 != 0 | live]
(set-option :timeout 0)
(push) ; 6
; [then-branch: 15 | tid@9@01 == 0]
(assert (= tid@9@01 0))
(pop) ; 6
(push) ; 6
; [else-branch: 15 | tid@9@01 != 0]
(assert (not (= tid@9@01 0)))
(pop) ; 6
(pop) ; 5
; Joined path conditions
; Joined path conditions
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@46@01))))))))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@46@01)))))))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@46@01))))))))))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@46@01)))))))))))))
  $Snap.unit))
; [eval] (forall i: Int, j: Int :: { this.src[i], this.src[j] } 0 <= i && (i < gsize && (0 <= j && (j < gsize && i != j))) ==> this.src[i] != this.src[j])
(declare-const i@49@01 Int)
(declare-const j@50@01 Int)
(push) ; 5
; [eval] 0 <= i && (i < gsize && (0 <= j && (j < gsize && i != j))) ==> this.src[i] != this.src[j]
; [eval] 0 <= i && (i < gsize && (0 <= j && (j < gsize && i != j)))
; [eval] 0 <= i
(push) ; 6
; [then-branch: 16 | !(0 <= i@49@01) | live]
; [else-branch: 16 | 0 <= i@49@01 | live]
(push) ; 7
; [then-branch: 16 | !(0 <= i@49@01)]
(assert (not (<= 0 i@49@01)))
(pop) ; 7
(push) ; 7
; [else-branch: 16 | 0 <= i@49@01]
(assert (<= 0 i@49@01))
; [eval] i < gsize
(push) ; 8
; [then-branch: 17 | !(i@49@01 < gsize@8@01) | live]
; [else-branch: 17 | i@49@01 < gsize@8@01 | live]
(push) ; 9
; [then-branch: 17 | !(i@49@01 < gsize@8@01)]
(assert (not (< i@49@01 gsize@8@01)))
(pop) ; 9
(push) ; 9
; [else-branch: 17 | i@49@01 < gsize@8@01]
(assert (< i@49@01 gsize@8@01))
; [eval] 0 <= j
(push) ; 10
; [then-branch: 18 | !(0 <= j@50@01) | live]
; [else-branch: 18 | 0 <= j@50@01 | live]
(push) ; 11
; [then-branch: 18 | !(0 <= j@50@01)]
(assert (not (<= 0 j@50@01)))
(pop) ; 11
(push) ; 11
; [else-branch: 18 | 0 <= j@50@01]
(assert (<= 0 j@50@01))
; [eval] j < gsize
(push) ; 12
; [then-branch: 19 | !(j@50@01 < gsize@8@01) | live]
; [else-branch: 19 | j@50@01 < gsize@8@01 | live]
(push) ; 13
; [then-branch: 19 | !(j@50@01 < gsize@8@01)]
(assert (not (< j@50@01 gsize@8@01)))
(pop) ; 13
(push) ; 13
; [else-branch: 19 | j@50@01 < gsize@8@01]
(assert (< j@50@01 gsize@8@01))
; [eval] i != j
(pop) ; 13
(pop) ; 12
; Joined path conditions
; Joined path conditions
(assert (or (< j@50@01 gsize@8@01) (not (< j@50@01 gsize@8@01))))
(pop) ; 11
(pop) ; 10
; Joined path conditions
; Joined path conditions
(assert (=>
  (<= 0 j@50@01)
  (and (<= 0 j@50@01) (or (< j@50@01 gsize@8@01) (not (< j@50@01 gsize@8@01))))))
(assert (or (<= 0 j@50@01) (not (<= 0 j@50@01))))
(pop) ; 9
(pop) ; 8
; Joined path conditions
; Joined path conditions
(assert (=>
  (< i@49@01 gsize@8@01)
  (and
    (< i@49@01 gsize@8@01)
    (=>
      (<= 0 j@50@01)
      (and
        (<= 0 j@50@01)
        (or (< j@50@01 gsize@8@01) (not (< j@50@01 gsize@8@01)))))
    (or (<= 0 j@50@01) (not (<= 0 j@50@01))))))
(assert (or (< i@49@01 gsize@8@01) (not (< i@49@01 gsize@8@01))))
(pop) ; 7
(pop) ; 6
; Joined path conditions
; Joined path conditions
(assert (=>
  (<= 0 i@49@01)
  (and
    (<= 0 i@49@01)
    (=>
      (< i@49@01 gsize@8@01)
      (and
        (< i@49@01 gsize@8@01)
        (=>
          (<= 0 j@50@01)
          (and
            (<= 0 j@50@01)
            (or (< j@50@01 gsize@8@01) (not (< j@50@01 gsize@8@01)))))
        (or (<= 0 j@50@01) (not (<= 0 j@50@01)))))
    (or (< i@49@01 gsize@8@01) (not (< i@49@01 gsize@8@01))))))
(assert (or (<= 0 i@49@01) (not (<= 0 i@49@01))))
(push) ; 6
; [then-branch: 20 | 0 <= i@49@01 && i@49@01 < gsize@8@01 && 0 <= j@50@01 && j@50@01 < gsize@8@01 && i@49@01 != j@50@01 | live]
; [else-branch: 20 | !(0 <= i@49@01 && i@49@01 < gsize@8@01 && 0 <= j@50@01 && j@50@01 < gsize@8@01 && i@49@01 != j@50@01) | live]
(push) ; 7
; [then-branch: 20 | 0 <= i@49@01 && i@49@01 < gsize@8@01 && 0 <= j@50@01 && j@50@01 < gsize@8@01 && i@49@01 != j@50@01]
(assert (and
  (<= 0 i@49@01)
  (and
    (< i@49@01 gsize@8@01)
    (and (<= 0 j@50@01) (and (< j@50@01 gsize@8@01) (not (= i@49@01 j@50@01)))))))
; [eval] this.src[i] != this.src[j]
; [eval] this.src[i]
(push) ; 8
(set-option :timeout 10)
(assert (not (< $Perm.No $k@47@01)))
(check-sat)
; unsat
(pop) ; 8
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 8
(assert (not (>= i@49@01 0)))
(check-sat)
; unsat
(pop) ; 8
; 0.00s
; (get-info :all-statistics)
(push) ; 8
(assert (not (<
  i@49@01
  (Seq_length
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@46@01)))))))))))
(check-sat)
; unsat
(pop) ; 8
; 0.00s
; (get-info :all-statistics)
; [eval] this.src[j]
(push) ; 8
(set-option :timeout 10)
(assert (not (< $Perm.No $k@47@01)))
(check-sat)
; unsat
(pop) ; 8
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 8
(assert (not (>= j@50@01 0)))
(check-sat)
; unsat
(pop) ; 8
; 0.00s
; (get-info :all-statistics)
(push) ; 8
(assert (not (<
  j@50@01
  (Seq_length
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@46@01)))))))))))
(check-sat)
; unsat
(pop) ; 8
; 0.00s
; (get-info :all-statistics)
(pop) ; 7
(push) ; 7
; [else-branch: 20 | !(0 <= i@49@01 && i@49@01 < gsize@8@01 && 0 <= j@50@01 && j@50@01 < gsize@8@01 && i@49@01 != j@50@01)]
(assert (not
  (and
    (<= 0 i@49@01)
    (and
      (< i@49@01 gsize@8@01)
      (and (<= 0 j@50@01) (and (< j@50@01 gsize@8@01) (not (= i@49@01 j@50@01))))))))
(pop) ; 7
(pop) ; 6
; Joined path conditions
(assert (=>
  (and
    (<= 0 i@49@01)
    (and
      (< i@49@01 gsize@8@01)
      (and (<= 0 j@50@01) (and (< j@50@01 gsize@8@01) (not (= i@49@01 j@50@01))))))
  (and
    (<= 0 i@49@01)
    (< i@49@01 gsize@8@01)
    (<= 0 j@50@01)
    (< j@50@01 gsize@8@01)
    (not (= i@49@01 j@50@01)))))
; Joined path conditions
(assert (or
  (not
    (and
      (<= 0 i@49@01)
      (and
        (< i@49@01 gsize@8@01)
        (and
          (<= 0 j@50@01)
          (and (< j@50@01 gsize@8@01) (not (= i@49@01 j@50@01)))))))
  (and
    (<= 0 i@49@01)
    (and
      (< i@49@01 gsize@8@01)
      (and (<= 0 j@50@01) (and (< j@50@01 gsize@8@01) (not (= i@49@01 j@50@01))))))))
(pop) ; 5
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall ((i@49@01 Int) (j@50@01 Int)) (!
  (and
    (=>
      (<= 0 i@49@01)
      (and
        (<= 0 i@49@01)
        (=>
          (< i@49@01 gsize@8@01)
          (and
            (< i@49@01 gsize@8@01)
            (=>
              (<= 0 j@50@01)
              (and
                (<= 0 j@50@01)
                (or (< j@50@01 gsize@8@01) (not (< j@50@01 gsize@8@01)))))
            (or (<= 0 j@50@01) (not (<= 0 j@50@01)))))
        (or (< i@49@01 gsize@8@01) (not (< i@49@01 gsize@8@01)))))
    (or (<= 0 i@49@01) (not (<= 0 i@49@01)))
    (=>
      (and
        (<= 0 i@49@01)
        (and
          (< i@49@01 gsize@8@01)
          (and
            (<= 0 j@50@01)
            (and (< j@50@01 gsize@8@01) (not (= i@49@01 j@50@01))))))
      (and
        (<= 0 i@49@01)
        (< i@49@01 gsize@8@01)
        (<= 0 j@50@01)
        (< j@50@01 gsize@8@01)
        (not (= i@49@01 j@50@01))))
    (or
      (not
        (and
          (<= 0 i@49@01)
          (and
            (< i@49@01 gsize@8@01)
            (and
              (<= 0 j@50@01)
              (and (< j@50@01 gsize@8@01) (not (= i@49@01 j@50@01)))))))
      (and
        (<= 0 i@49@01)
        (and
          (< i@49@01 gsize@8@01)
          (and
            (<= 0 j@50@01)
            (and (< j@50@01 gsize@8@01) (not (= i@49@01 j@50@01))))))))
  :pattern ((Seq_index
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@46@01)))))))
    i@49@01) (Seq_index
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@46@01)))))))
    j@50@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/third_party/max-two-range.vpr@70@17@70@125-aux|)))
(assert (forall ((i@49@01 Int) (j@50@01 Int)) (!
  (=>
    (and
      (<= 0 i@49@01)
      (and
        (< i@49@01 gsize@8@01)
        (and
          (<= 0 j@50@01)
          (and (< j@50@01 gsize@8@01) (not (= i@49@01 j@50@01))))))
    (not
      (=
        (Seq_index
          ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@46@01)))))))
          i@49@01)
        (Seq_index
          ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@46@01)))))))
          j@50@01))))
  :pattern ((Seq_index
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@46@01)))))))
    i@49@01) (Seq_index
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@46@01)))))))
    j@50@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/third_party/max-two-range.vpr@70@17@70@125|)))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@46@01)))))))))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@46@01))))))))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@46@01)))))))))))))))))
(declare-const i@51@01 Int)
(push) ; 5
; [eval] (i in [0..gsize))
; [eval] [0..gsize)
(assert (Seq_contains (Seq_range 0 gsize@8@01) i@51@01))
; [eval] this.src[i]
(push) ; 6
(set-option :timeout 10)
(assert (not (< $Perm.No $k@47@01)))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 6
(assert (not (>= i@51@01 0)))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(push) ; 6
(assert (not (<
  i@51@01
  (Seq_length
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@46@01)))))))))))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(push) ; 6
(assert (not (not (= gsize@8@01 0))))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(pop) ; 5
(declare-fun inv@52@01 ($Ref) Int)
(declare-fun img@53@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
(push) ; 5
(assert (not (forall ((i@51@01 Int)) (!
  (=>
    (Seq_contains (Seq_range 0 gsize@8@01) i@51@01)
    (or
      (= (/ (to_real 1) (to_real gsize@8@01)) $Perm.No)
      (< $Perm.No (/ (to_real 1) (to_real gsize@8@01)))))
  
  :qid |quant-u-17925|))))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
; Check receiver injectivity
(push) ; 5
(assert (not (forall ((i1@51@01 Int) (i2@51@01 Int)) (!
  (=>
    (and
      (and
        (Seq_contains (Seq_range 0 gsize@8@01) i1@51@01)
        (< $Perm.No (/ (to_real 1) (to_real gsize@8@01))))
      (and
        (Seq_contains (Seq_range 0 gsize@8@01) i2@51@01)
        (< $Perm.No (/ (to_real 1) (to_real gsize@8@01))))
      (=
        (Seq_index
          ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@46@01)))))))
          i1@51@01)
        (Seq_index
          ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@46@01)))))))
          i2@51@01)))
    (= i1@51@01 i2@51@01))
  
  :qid |Integer_value-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((i@51@01 Int)) (!
  (=>
    (and
      (Seq_contains (Seq_range 0 gsize@8@01) i@51@01)
      (< $Perm.No (/ (to_real 1) (to_real gsize@8@01))))
    (and
      (=
        (inv@52@01 (Seq_index
          ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@46@01)))))))
          i@51@01))
        i@51@01)
      (img@53@01 (Seq_index
        ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@46@01)))))))
        i@51@01))))
  :pattern ((Seq_index
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@46@01)))))))
    i@51@01))
  :qid |quant-u-17926|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@53@01 r)
      (and
        (Seq_contains (Seq_range 0 gsize@8@01) (inv@52@01 r))
        (< $Perm.No (/ (to_real 1) (to_real gsize@8@01)))))
    (=
      (Seq_index
        ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@46@01)))))))
        (inv@52@01 r))
      r))
  :pattern ((inv@52@01 r))
  :qid |Integer_value-fctOfInv|)))
; Permissions are non-negative
(assert (forall ((i@51@01 Int)) (!
  (<= $Perm.No (/ (to_real 1) (to_real gsize@8@01)))
  :pattern ((Seq_index
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@46@01)))))))
    i@51@01))
  :qid |Integer_value-permAtLeastZero|)))
; Field permissions are at most one
(assert (forall ((i@51@01 Int)) (!
  (<= (/ (to_real 1) (to_real gsize@8@01)) $Perm.Write)
  :pattern ((Seq_index
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@46@01)))))))
    i@51@01))
  :qid |Integer_value-permAtMostOne|)))
; Permission implies non-null receiver
(assert (forall ((i@51@01 Int)) (!
  (=>
    (and
      (Seq_contains (Seq_range 0 gsize@8@01) i@51@01)
      (< $Perm.No (/ (to_real 1) (to_real gsize@8@01))))
    (not
      (=
        (Seq_index
          ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@46@01)))))))
          i@51@01)
        $Ref.null)))
  :pattern ((Seq_index
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@46@01)))))))
    i@51@01))
  :qid |Integer_value-permImpliesNonNull|)))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@46@01))))))))))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@46@01)))))))))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@46@01))))))))))))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@46@01)))))))))))))))
  $Snap.unit))
; [eval] false || __last_barrier == 0
(push) ; 5
; [then-branch: 21 | False | live]
; [else-branch: 21 | True | live]
(push) ; 6
; [then-branch: 21 | False]
(assert false)
(pop) ; 6
(push) ; 6
; [else-branch: 21 | True]
; [eval] __last_barrier == 0
(pop) ; 6
(pop) ; 5
; Joined path conditions
; Joined path conditions
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@46@01)))))))))))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@46@01))))))))))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@46@01)))))))))))))))))))
; [eval] __last_barrier == 1
; [then-branch: 22 | False | dead]
; [else-branch: 22 | True | live]
(push) ; 5
; [else-branch: 22 | True]
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@46@01))))))))))))))))
  $Snap.unit))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@46@01))))))))))))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@46@01)))))))))))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@46@01))))))))))))))))))))
; [eval] __last_barrier == 0
(push) ; 6
(set-option :timeout 10)
(assert (not false))
(check-sat)
; unknown
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
; [then-branch: 23 | True | live]
; [else-branch: 23 | False | dead]
(set-option :timeout 0)
(push) ; 6
; [then-branch: 23 | True]
; [eval] this.dst[tid]
(push) ; 7
(set-option :timeout 10)
(assert (not (< $Perm.No $k@48@01)))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 7
(assert (not (>= tid@9@01 0)))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(push) ; 7
(assert (not (<
  tid@9@01
  (Seq_length
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@46@01)))))))))))))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(declare-const sm@54@01 $FVF<Integer_value>)
; Definitional axioms for singleton-SM's value
(assert (=
  ($FVF.lookup_Integer_value (as sm@54@01  $FVF<Integer_value>) (Seq_index
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@46@01)))))))))
    tid@9@01))
  ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@46@01))))))))))))))))))))
(assert (<=
  $Perm.No
  (ite
    (=
      (Seq_index
        ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@46@01)))))))))
        tid@9@01)
      (Seq_index
        ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@46@01)))))))))
        tid@9@01))
    $Perm.Write
    $Perm.No)))
(assert (<=
  (ite
    (=
      (Seq_index
        ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@46@01)))))))))
        tid@9@01)
      (Seq_index
        ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@46@01)))))))))
        tid@9@01))
    $Perm.Write
    $Perm.No)
  $Perm.Write))
(assert (=>
  (=
    (Seq_index
      ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@46@01)))))))))
      tid@9@01)
    (Seq_index
      ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@46@01)))))))))
      tid@9@01))
  (not
    (=
      (Seq_index
        ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@46@01)))))))))
        tid@9@01)
      $Ref.null))))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@46@01)))))))))))))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@46@01))))))))))))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@46@01)))))))))))))))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@46@01))))))))))))))))))
  $Snap.unit))
; [eval] 0 <= k
(assert (<= 0 k@45@01))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@46@01))))))))))))))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@46@01)))))))))))))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@46@01))))))))))))))))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@46@01)))))))))))))))))))
  $Snap.unit))
; [eval] k <= half
(assert (<= k@45@01 half@35@01))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@46@01)))))))))))))))))))
  $Snap.unit))
; [eval] (forall __rw_i7: Int :: { this.src[__rw_i7] } true ==> 0 <= __rw_i7 - offset && __rw_i7 - offset < k ==> this.dst[tid].Integer_value >= this.src[__rw_i7].Integer_value)
(declare-const __rw_i7@55@01 Int)
(push) ; 7
; [eval] true ==> 0 <= __rw_i7 - offset && __rw_i7 - offset < k ==> this.dst[tid].Integer_value >= this.src[__rw_i7].Integer_value
(push) ; 8
(push) ; 9
(set-option :timeout 10)
(assert (not false))
(check-sat)
; unknown
(pop) ; 9
; 0.00s
; (get-info :all-statistics)
; [then-branch: 24 | True | live]
; [else-branch: 24 | False | dead]
(set-option :timeout 0)
(push) ; 9
; [then-branch: 24 | True]
; [eval] 0 <= __rw_i7 - offset && __rw_i7 - offset < k ==> this.dst[tid].Integer_value >= this.src[__rw_i7].Integer_value
; [eval] 0 <= __rw_i7 - offset && __rw_i7 - offset < k
; [eval] 0 <= __rw_i7 - offset
; [eval] __rw_i7 - offset
(push) ; 10
; [then-branch: 25 | !(0 <= __rw_i7@55@01 - offset@36@01) | live]
; [else-branch: 25 | 0 <= __rw_i7@55@01 - offset@36@01 | live]
(push) ; 11
; [then-branch: 25 | !(0 <= __rw_i7@55@01 - offset@36@01)]
(assert (not (<= 0 (- __rw_i7@55@01 offset@36@01))))
(pop) ; 11
(push) ; 11
; [else-branch: 25 | 0 <= __rw_i7@55@01 - offset@36@01]
(assert (<= 0 (- __rw_i7@55@01 offset@36@01)))
; [eval] __rw_i7 - offset < k
; [eval] __rw_i7 - offset
(pop) ; 11
(pop) ; 10
; Joined path conditions
; Joined path conditions
(assert (or
  (<= 0 (- __rw_i7@55@01 offset@36@01))
  (not (<= 0 (- __rw_i7@55@01 offset@36@01)))))
(push) ; 10
; [then-branch: 26 | 0 <= __rw_i7@55@01 - offset@36@01 && __rw_i7@55@01 - offset@36@01 < k@45@01 | live]
; [else-branch: 26 | !(0 <= __rw_i7@55@01 - offset@36@01 && __rw_i7@55@01 - offset@36@01 < k@45@01) | live]
(push) ; 11
; [then-branch: 26 | 0 <= __rw_i7@55@01 - offset@36@01 && __rw_i7@55@01 - offset@36@01 < k@45@01]
(assert (and
  (<= 0 (- __rw_i7@55@01 offset@36@01))
  (< (- __rw_i7@55@01 offset@36@01) k@45@01)))
; [eval] this.dst[tid].Integer_value >= this.src[__rw_i7].Integer_value
; [eval] this.dst[tid]
(push) ; 12
(set-option :timeout 10)
(assert (not (< $Perm.No $k@48@01)))
(check-sat)
; unsat
(pop) ; 12
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 12
(assert (not (>= tid@9@01 0)))
(check-sat)
; unsat
(pop) ; 12
; 0.00s
; (get-info :all-statistics)
(push) ; 12
(assert (not (<
  tid@9@01
  (Seq_length
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@46@01)))))))))))))
(check-sat)
; unsat
(pop) ; 12
; 0.00s
; (get-info :all-statistics)
(declare-const sm@56@01 $FVF<Integer_value>)
; Definitional axioms for snapshot map values
(assert (forall ((r $Ref)) (!
  (=>
    (ite
      (and (img@53@01 r) (Seq_contains (Seq_range 0 gsize@8@01) (inv@52@01 r)))
      (< $Perm.No (/ (to_real 1) (to_real gsize@8@01)))
      false)
    (=
      ($FVF.lookup_Integer_value (as sm@56@01  $FVF<Integer_value>) r)
      ($FVF.lookup_Integer_value ($SortWrappers.$SnapTo$FVF<Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@46@01))))))))))))))) r)))
  :pattern (($FVF.lookup_Integer_value (as sm@56@01  $FVF<Integer_value>) r))
  :pattern (($FVF.lookup_Integer_value ($SortWrappers.$SnapTo$FVF<Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@46@01))))))))))))))) r))
  :qid |qp.fvfValDef9|)))
(assert (forall ((r $Ref)) (!
  (=>
    (=
      r
      (Seq_index
        ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@46@01)))))))))
        tid@9@01))
    (=
      ($FVF.lookup_Integer_value (as sm@56@01  $FVF<Integer_value>) r)
      ($FVF.lookup_Integer_value (as sm@54@01  $FVF<Integer_value>) r)))
  :pattern (($FVF.lookup_Integer_value (as sm@56@01  $FVF<Integer_value>) r))
  :pattern (($FVF.lookup_Integer_value (as sm@54@01  $FVF<Integer_value>) r))
  :qid |qp.fvfValDef10|)))
(declare-const pm@57@01 $FPM)
(assert (forall ((r $Ref)) (!
  (=
    ($FVF.perm_Integer_value (as pm@57@01  $FPM) r)
    (+
      (ite
        (and (img@53@01 r) (Seq_contains (Seq_range 0 gsize@8@01) (inv@52@01 r)))
        (/ (to_real 1) (to_real gsize@8@01))
        $Perm.No)
      (ite
        (=
          r
          (Seq_index
            ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@46@01)))))))))
            tid@9@01))
        $Perm.Write
        $Perm.No)))
  :pattern (($FVF.perm_Integer_value (as pm@57@01  $FPM) r))
  :qid |qp.resPrmSumDef11|)))
(push) ; 12
(assert (not (<
  $Perm.No
  ($FVF.perm_Integer_value (as pm@57@01  $FPM) (Seq_index
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@46@01)))))))))
    tid@9@01)))))
(check-sat)
; unsat
(pop) ; 12
; 0.00s
; (get-info :all-statistics)
; [eval] this.src[__rw_i7]
(push) ; 12
(set-option :timeout 10)
(assert (not (< $Perm.No $k@47@01)))
(check-sat)
; unsat
(pop) ; 12
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 12
(assert (not (>= __rw_i7@55@01 0)))
(check-sat)
; unsat
(pop) ; 12
; 0.00s
; (get-info :all-statistics)
(push) ; 12
(assert (not (<
  __rw_i7@55@01
  (Seq_length
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@46@01)))))))))))
(check-sat)
; unsat
(pop) ; 12
; 0.00s
; (get-info :all-statistics)
(assert (and
  (forall ((r $Ref)) (!
    (=>
      (ite
        (and (img@53@01 r) (Seq_contains (Seq_range 0 gsize@8@01) (inv@52@01 r)))
        (< $Perm.No (/ (to_real 1) (to_real gsize@8@01)))
        false)
      (=
        ($FVF.lookup_Integer_value (as sm@56@01  $FVF<Integer_value>) r)
        ($FVF.lookup_Integer_value ($SortWrappers.$SnapTo$FVF<Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@46@01))))))))))))))) r)))
    :pattern (($FVF.lookup_Integer_value (as sm@56@01  $FVF<Integer_value>) r))
    :pattern (($FVF.lookup_Integer_value ($SortWrappers.$SnapTo$FVF<Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@46@01))))))))))))))) r))
    :qid |qp.fvfValDef9|))
  (forall ((r $Ref)) (!
    (=>
      (=
        r
        (Seq_index
          ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@46@01)))))))))
          tid@9@01))
      (=
        ($FVF.lookup_Integer_value (as sm@56@01  $FVF<Integer_value>) r)
        ($FVF.lookup_Integer_value (as sm@54@01  $FVF<Integer_value>) r)))
    :pattern (($FVF.lookup_Integer_value (as sm@56@01  $FVF<Integer_value>) r))
    :pattern (($FVF.lookup_Integer_value (as sm@54@01  $FVF<Integer_value>) r))
    :qid |qp.fvfValDef10|))))
(push) ; 12
(assert (not (<
  $Perm.No
  (+
    (ite
      (and
        (img@53@01 (Seq_index
          ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@46@01)))))))
          __rw_i7@55@01))
        (Seq_contains
          (Seq_range 0 gsize@8@01)
          (inv@52@01 (Seq_index
            ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@46@01)))))))
            __rw_i7@55@01))))
      (/ (to_real 1) (to_real gsize@8@01))
      $Perm.No)
    (ite
      (=
        (Seq_index
          ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@46@01)))))))
          __rw_i7@55@01)
        (Seq_index
          ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@46@01)))))))))
          tid@9@01))
      $Perm.Write
      $Perm.No)))))
(check-sat)
; unsat
(pop) ; 12
; 0.00s
; (get-info :all-statistics)
(pop) ; 11
(push) ; 11
; [else-branch: 26 | !(0 <= __rw_i7@55@01 - offset@36@01 && __rw_i7@55@01 - offset@36@01 < k@45@01)]
(assert (not
  (and
    (<= 0 (- __rw_i7@55@01 offset@36@01))
    (< (- __rw_i7@55@01 offset@36@01) k@45@01))))
(pop) ; 11
(pop) ; 10
; Joined path conditions
(assert (forall ((r $Ref)) (!
  (=>
    (ite
      (and (img@53@01 r) (Seq_contains (Seq_range 0 gsize@8@01) (inv@52@01 r)))
      (< $Perm.No (/ (to_real 1) (to_real gsize@8@01)))
      false)
    (=
      ($FVF.lookup_Integer_value (as sm@56@01  $FVF<Integer_value>) r)
      ($FVF.lookup_Integer_value ($SortWrappers.$SnapTo$FVF<Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@46@01))))))))))))))) r)))
  :pattern (($FVF.lookup_Integer_value (as sm@56@01  $FVF<Integer_value>) r))
  :pattern (($FVF.lookup_Integer_value ($SortWrappers.$SnapTo$FVF<Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@46@01))))))))))))))) r))
  :qid |qp.fvfValDef9|)))
(assert (forall ((r $Ref)) (!
  (=>
    (=
      r
      (Seq_index
        ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@46@01)))))))))
        tid@9@01))
    (=
      ($FVF.lookup_Integer_value (as sm@56@01  $FVF<Integer_value>) r)
      ($FVF.lookup_Integer_value (as sm@54@01  $FVF<Integer_value>) r)))
  :pattern (($FVF.lookup_Integer_value (as sm@56@01  $FVF<Integer_value>) r))
  :pattern (($FVF.lookup_Integer_value (as sm@54@01  $FVF<Integer_value>) r))
  :qid |qp.fvfValDef10|)))
(assert (forall ((r $Ref)) (!
  (=
    ($FVF.perm_Integer_value (as pm@57@01  $FPM) r)
    (+
      (ite
        (and (img@53@01 r) (Seq_contains (Seq_range 0 gsize@8@01) (inv@52@01 r)))
        (/ (to_real 1) (to_real gsize@8@01))
        $Perm.No)
      (ite
        (=
          r
          (Seq_index
            ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@46@01)))))))))
            tid@9@01))
        $Perm.Write
        $Perm.No)))
  :pattern (($FVF.perm_Integer_value (as pm@57@01  $FPM) r))
  :qid |qp.resPrmSumDef11|)))
; Joined path conditions
(assert (or
  (not
    (and
      (<= 0 (- __rw_i7@55@01 offset@36@01))
      (< (- __rw_i7@55@01 offset@36@01) k@45@01)))
  (and
    (<= 0 (- __rw_i7@55@01 offset@36@01))
    (< (- __rw_i7@55@01 offset@36@01) k@45@01))))
(pop) ; 9
(pop) ; 8
; Joined path conditions
(assert (forall ((r $Ref)) (!
  (=>
    (ite
      (and (img@53@01 r) (Seq_contains (Seq_range 0 gsize@8@01) (inv@52@01 r)))
      (< $Perm.No (/ (to_real 1) (to_real gsize@8@01)))
      false)
    (=
      ($FVF.lookup_Integer_value (as sm@56@01  $FVF<Integer_value>) r)
      ($FVF.lookup_Integer_value ($SortWrappers.$SnapTo$FVF<Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@46@01))))))))))))))) r)))
  :pattern (($FVF.lookup_Integer_value (as sm@56@01  $FVF<Integer_value>) r))
  :pattern (($FVF.lookup_Integer_value ($SortWrappers.$SnapTo$FVF<Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@46@01))))))))))))))) r))
  :qid |qp.fvfValDef9|)))
(assert (forall ((r $Ref)) (!
  (=>
    (=
      r
      (Seq_index
        ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@46@01)))))))))
        tid@9@01))
    (=
      ($FVF.lookup_Integer_value (as sm@56@01  $FVF<Integer_value>) r)
      ($FVF.lookup_Integer_value (as sm@54@01  $FVF<Integer_value>) r)))
  :pattern (($FVF.lookup_Integer_value (as sm@56@01  $FVF<Integer_value>) r))
  :pattern (($FVF.lookup_Integer_value (as sm@54@01  $FVF<Integer_value>) r))
  :qid |qp.fvfValDef10|)))
(assert (forall ((r $Ref)) (!
  (=
    ($FVF.perm_Integer_value (as pm@57@01  $FPM) r)
    (+
      (ite
        (and (img@53@01 r) (Seq_contains (Seq_range 0 gsize@8@01) (inv@52@01 r)))
        (/ (to_real 1) (to_real gsize@8@01))
        $Perm.No)
      (ite
        (=
          r
          (Seq_index
            ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@46@01)))))))))
            tid@9@01))
        $Perm.Write
        $Perm.No)))
  :pattern (($FVF.perm_Integer_value (as pm@57@01  $FPM) r))
  :qid |qp.resPrmSumDef11|)))
(assert (and
  (or
    (<= 0 (- __rw_i7@55@01 offset@36@01))
    (not (<= 0 (- __rw_i7@55@01 offset@36@01))))
  (or
    (not
      (and
        (<= 0 (- __rw_i7@55@01 offset@36@01))
        (< (- __rw_i7@55@01 offset@36@01) k@45@01)))
    (and
      (<= 0 (- __rw_i7@55@01 offset@36@01))
      (< (- __rw_i7@55@01 offset@36@01) k@45@01)))))
(pop) ; 7
; Nested auxiliary terms: globals (aux)
(assert (forall ((r $Ref)) (!
  (=>
    (ite
      (and (img@53@01 r) (Seq_contains (Seq_range 0 gsize@8@01) (inv@52@01 r)))
      (< $Perm.No (/ (to_real 1) (to_real gsize@8@01)))
      false)
    (=
      ($FVF.lookup_Integer_value (as sm@56@01  $FVF<Integer_value>) r)
      ($FVF.lookup_Integer_value ($SortWrappers.$SnapTo$FVF<Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@46@01))))))))))))))) r)))
  :pattern (($FVF.lookup_Integer_value (as sm@56@01  $FVF<Integer_value>) r))
  :pattern (($FVF.lookup_Integer_value ($SortWrappers.$SnapTo$FVF<Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@46@01))))))))))))))) r))
  :qid |qp.fvfValDef9|)))
(assert (forall ((r $Ref)) (!
  (=>
    (=
      r
      (Seq_index
        ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@46@01)))))))))
        tid@9@01))
    (=
      ($FVF.lookup_Integer_value (as sm@56@01  $FVF<Integer_value>) r)
      ($FVF.lookup_Integer_value (as sm@54@01  $FVF<Integer_value>) r)))
  :pattern (($FVF.lookup_Integer_value (as sm@56@01  $FVF<Integer_value>) r))
  :pattern (($FVF.lookup_Integer_value (as sm@54@01  $FVF<Integer_value>) r))
  :qid |qp.fvfValDef10|)))
(assert (forall ((r $Ref)) (!
  (=
    ($FVF.perm_Integer_value (as pm@57@01  $FPM) r)
    (+
      (ite
        (and (img@53@01 r) (Seq_contains (Seq_range 0 gsize@8@01) (inv@52@01 r)))
        (/ (to_real 1) (to_real gsize@8@01))
        $Perm.No)
      (ite
        (=
          r
          (Seq_index
            ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@46@01)))))))))
            tid@9@01))
        $Perm.Write
        $Perm.No)))
  :pattern (($FVF.perm_Integer_value (as pm@57@01  $FPM) r))
  :qid |qp.resPrmSumDef11|)))
; Nested auxiliary terms: non-globals (aux)
(assert (forall ((__rw_i7@55@01 Int)) (!
  (and
    (or
      (<= 0 (- __rw_i7@55@01 offset@36@01))
      (not (<= 0 (- __rw_i7@55@01 offset@36@01))))
    (or
      (not
        (and
          (<= 0 (- __rw_i7@55@01 offset@36@01))
          (< (- __rw_i7@55@01 offset@36@01) k@45@01)))
      (and
        (<= 0 (- __rw_i7@55@01 offset@36@01))
        (< (- __rw_i7@55@01 offset@36@01) k@45@01))))
  :pattern ((Seq_index
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@46@01)))))))
    __rw_i7@55@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/third_party/max-two-range.vpr@76@18@76@126-aux|)))
(assert (forall ((__rw_i7@55@01 Int)) (!
  (=>
    (and
      (<= 0 (- __rw_i7@55@01 offset@36@01))
      (< (- __rw_i7@55@01 offset@36@01) k@45@01))
    (>=
      ($FVF.lookup_Integer_value (as sm@56@01  $FVF<Integer_value>) (Seq_index
        ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@46@01)))))))))
        tid@9@01))
      ($FVF.lookup_Integer_value (as sm@56@01  $FVF<Integer_value>) (Seq_index
        ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@46@01)))))))
        __rw_i7@55@01))))
  :pattern ((Seq_index
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@46@01)))))))
    __rw_i7@55@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/third_party/max-two-range.vpr@76@18@76@126|)))
(pop) ; 6
(pop) ; 5
(pop) ; 4
(push) ; 4
; Loop head block: Establish invariant
; [eval] 0 <= tid
; [eval] tid < tcount
; [eval] tid == lid
; [eval] tcount == gsize
; [eval] gid == 0
(declare-const $k@58@01 $Perm)
(assert ($Perm.isReadVar $k@58@01))
(push) ; 5
(set-option :timeout 10)
(assert (not (not (= $k@13@01 $Perm.No))))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(assert (< $k@58@01 $k@13@01))
(assert (<= $Perm.No (- $k@13@01 $k@58@01)))
(assert (<= (- $k@13@01 $k@58@01) $Perm.Write))
(assert (=> (< $Perm.No (- $k@13@01 $k@58@01)) (not (= this@6@01 $Ref.null))))
; [eval] |this.src| == gsize
; [eval] |this.src|
(set-option :timeout 0)
(push) ; 5
(set-option :timeout 10)
(assert (not (< $Perm.No $k@13@01)))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(declare-const $k@59@01 $Perm)
(assert ($Perm.isReadVar $k@59@01))
(set-option :timeout 0)
(push) ; 5
(set-option :timeout 10)
(assert (not (not (= $k@14@01 $Perm.No))))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(assert (< $k@59@01 $k@14@01))
(assert (<= $Perm.No (- $k@14@01 $k@59@01)))
(assert (<= (- $k@14@01 $k@59@01) $Perm.Write))
(assert (=> (< $Perm.No (- $k@14@01 $k@59@01)) (not (= this@6@01 $Ref.null))))
; [eval] |this.dst| == gsize
; [eval] |this.dst|
(set-option :timeout 0)
(push) ; 5
(set-option :timeout 10)
(assert (not (< $Perm.No $k@14@01)))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
; [eval] 4 <= gsize
; [eval] gsize % 2 == 0
; [eval] gsize % 2
; [eval] offset == (tid == 0 ? 0 : half)
; [eval] (tid == 0 ? 0 : half)
; [eval] tid == 0
(set-option :timeout 0)
(push) ; 5
(push) ; 6
(set-option :timeout 10)
(assert (not (not (= tid@9@01 0))))
(check-sat)
; unknown
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 6
(set-option :timeout 10)
(assert (not (= tid@9@01 0)))
(check-sat)
; unknown
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
; [then-branch: 27 | tid@9@01 == 0 | live]
; [else-branch: 27 | tid@9@01 != 0 | live]
(set-option :timeout 0)
(push) ; 6
; [then-branch: 27 | tid@9@01 == 0]
(assert (= tid@9@01 0))
(pop) ; 6
(push) ; 6
; [else-branch: 27 | tid@9@01 != 0]
(assert (not (= tid@9@01 0)))
(pop) ; 6
(pop) ; 5
; Joined path conditions
; Joined path conditions
; [eval] (forall i: Int, j: Int :: { this.src[i], this.src[j] } 0 <= i && (i < gsize && (0 <= j && (j < gsize && i != j))) ==> this.src[i] != this.src[j])
(declare-const i@60@01 Int)
(declare-const j@61@01 Int)
(push) ; 5
; [eval] 0 <= i && (i < gsize && (0 <= j && (j < gsize && i != j))) ==> this.src[i] != this.src[j]
; [eval] 0 <= i && (i < gsize && (0 <= j && (j < gsize && i != j)))
; [eval] 0 <= i
(push) ; 6
; [then-branch: 28 | !(0 <= i@60@01) | live]
; [else-branch: 28 | 0 <= i@60@01 | live]
(push) ; 7
; [then-branch: 28 | !(0 <= i@60@01)]
(assert (not (<= 0 i@60@01)))
(pop) ; 7
(push) ; 7
; [else-branch: 28 | 0 <= i@60@01]
(assert (<= 0 i@60@01))
; [eval] i < gsize
(push) ; 8
; [then-branch: 29 | !(i@60@01 < gsize@8@01) | live]
; [else-branch: 29 | i@60@01 < gsize@8@01 | live]
(push) ; 9
; [then-branch: 29 | !(i@60@01 < gsize@8@01)]
(assert (not (< i@60@01 gsize@8@01)))
(pop) ; 9
(push) ; 9
; [else-branch: 29 | i@60@01 < gsize@8@01]
(assert (< i@60@01 gsize@8@01))
; [eval] 0 <= j
(push) ; 10
; [then-branch: 30 | !(0 <= j@61@01) | live]
; [else-branch: 30 | 0 <= j@61@01 | live]
(push) ; 11
; [then-branch: 30 | !(0 <= j@61@01)]
(assert (not (<= 0 j@61@01)))
(pop) ; 11
(push) ; 11
; [else-branch: 30 | 0 <= j@61@01]
(assert (<= 0 j@61@01))
; [eval] j < gsize
(push) ; 12
; [then-branch: 31 | !(j@61@01 < gsize@8@01) | live]
; [else-branch: 31 | j@61@01 < gsize@8@01 | live]
(push) ; 13
; [then-branch: 31 | !(j@61@01 < gsize@8@01)]
(assert (not (< j@61@01 gsize@8@01)))
(pop) ; 13
(push) ; 13
; [else-branch: 31 | j@61@01 < gsize@8@01]
(assert (< j@61@01 gsize@8@01))
; [eval] i != j
(pop) ; 13
(pop) ; 12
; Joined path conditions
; Joined path conditions
(assert (or (< j@61@01 gsize@8@01) (not (< j@61@01 gsize@8@01))))
(pop) ; 11
(pop) ; 10
; Joined path conditions
; Joined path conditions
(assert (=>
  (<= 0 j@61@01)
  (and (<= 0 j@61@01) (or (< j@61@01 gsize@8@01) (not (< j@61@01 gsize@8@01))))))
(assert (or (<= 0 j@61@01) (not (<= 0 j@61@01))))
(pop) ; 9
(pop) ; 8
; Joined path conditions
; Joined path conditions
(assert (=>
  (< i@60@01 gsize@8@01)
  (and
    (< i@60@01 gsize@8@01)
    (=>
      (<= 0 j@61@01)
      (and
        (<= 0 j@61@01)
        (or (< j@61@01 gsize@8@01) (not (< j@61@01 gsize@8@01)))))
    (or (<= 0 j@61@01) (not (<= 0 j@61@01))))))
(assert (or (< i@60@01 gsize@8@01) (not (< i@60@01 gsize@8@01))))
(pop) ; 7
(pop) ; 6
; Joined path conditions
; Joined path conditions
(assert (=>
  (<= 0 i@60@01)
  (and
    (<= 0 i@60@01)
    (=>
      (< i@60@01 gsize@8@01)
      (and
        (< i@60@01 gsize@8@01)
        (=>
          (<= 0 j@61@01)
          (and
            (<= 0 j@61@01)
            (or (< j@61@01 gsize@8@01) (not (< j@61@01 gsize@8@01)))))
        (or (<= 0 j@61@01) (not (<= 0 j@61@01)))))
    (or (< i@60@01 gsize@8@01) (not (< i@60@01 gsize@8@01))))))
(assert (or (<= 0 i@60@01) (not (<= 0 i@60@01))))
(push) ; 6
; [then-branch: 32 | 0 <= i@60@01 && i@60@01 < gsize@8@01 && 0 <= j@61@01 && j@61@01 < gsize@8@01 && i@60@01 != j@61@01 | live]
; [else-branch: 32 | !(0 <= i@60@01 && i@60@01 < gsize@8@01 && 0 <= j@61@01 && j@61@01 < gsize@8@01 && i@60@01 != j@61@01) | live]
(push) ; 7
; [then-branch: 32 | 0 <= i@60@01 && i@60@01 < gsize@8@01 && 0 <= j@61@01 && j@61@01 < gsize@8@01 && i@60@01 != j@61@01]
(assert (and
  (<= 0 i@60@01)
  (and
    (< i@60@01 gsize@8@01)
    (and (<= 0 j@61@01) (and (< j@61@01 gsize@8@01) (not (= i@60@01 j@61@01)))))))
; [eval] this.src[i] != this.src[j]
; [eval] this.src[i]
(push) ; 8
(set-option :timeout 10)
(assert (not (< $Perm.No $k@13@01)))
(check-sat)
; unsat
(pop) ; 8
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 8
(assert (not (>= i@60@01 0)))
(check-sat)
; unsat
(pop) ; 8
; 0.00s
; (get-info :all-statistics)
(push) ; 8
(assert (not (<
  i@60@01
  (Seq_length
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@12@01)))))))))))
(check-sat)
; unsat
(pop) ; 8
; 0.00s
; (get-info :all-statistics)
; [eval] this.src[j]
(push) ; 8
(set-option :timeout 10)
(assert (not (< $Perm.No $k@13@01)))
(check-sat)
; unsat
(pop) ; 8
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 8
(assert (not (>= j@61@01 0)))
(check-sat)
; unsat
(pop) ; 8
; 0.00s
; (get-info :all-statistics)
(push) ; 8
(assert (not (<
  j@61@01
  (Seq_length
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@12@01)))))))))))
(check-sat)
; unsat
(pop) ; 8
; 0.00s
; (get-info :all-statistics)
(pop) ; 7
(push) ; 7
; [else-branch: 32 | !(0 <= i@60@01 && i@60@01 < gsize@8@01 && 0 <= j@61@01 && j@61@01 < gsize@8@01 && i@60@01 != j@61@01)]
(assert (not
  (and
    (<= 0 i@60@01)
    (and
      (< i@60@01 gsize@8@01)
      (and (<= 0 j@61@01) (and (< j@61@01 gsize@8@01) (not (= i@60@01 j@61@01))))))))
(pop) ; 7
(pop) ; 6
; Joined path conditions
(assert (=>
  (and
    (<= 0 i@60@01)
    (and
      (< i@60@01 gsize@8@01)
      (and (<= 0 j@61@01) (and (< j@61@01 gsize@8@01) (not (= i@60@01 j@61@01))))))
  (and
    (<= 0 i@60@01)
    (< i@60@01 gsize@8@01)
    (<= 0 j@61@01)
    (< j@61@01 gsize@8@01)
    (not (= i@60@01 j@61@01)))))
; Joined path conditions
(assert (or
  (not
    (and
      (<= 0 i@60@01)
      (and
        (< i@60@01 gsize@8@01)
        (and
          (<= 0 j@61@01)
          (and (< j@61@01 gsize@8@01) (not (= i@60@01 j@61@01)))))))
  (and
    (<= 0 i@60@01)
    (and
      (< i@60@01 gsize@8@01)
      (and (<= 0 j@61@01) (and (< j@61@01 gsize@8@01) (not (= i@60@01 j@61@01))))))))
(pop) ; 5
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall ((i@60@01 Int) (j@61@01 Int)) (!
  (and
    (=>
      (<= 0 i@60@01)
      (and
        (<= 0 i@60@01)
        (=>
          (< i@60@01 gsize@8@01)
          (and
            (< i@60@01 gsize@8@01)
            (=>
              (<= 0 j@61@01)
              (and
                (<= 0 j@61@01)
                (or (< j@61@01 gsize@8@01) (not (< j@61@01 gsize@8@01)))))
            (or (<= 0 j@61@01) (not (<= 0 j@61@01)))))
        (or (< i@60@01 gsize@8@01) (not (< i@60@01 gsize@8@01)))))
    (or (<= 0 i@60@01) (not (<= 0 i@60@01)))
    (=>
      (and
        (<= 0 i@60@01)
        (and
          (< i@60@01 gsize@8@01)
          (and
            (<= 0 j@61@01)
            (and (< j@61@01 gsize@8@01) (not (= i@60@01 j@61@01))))))
      (and
        (<= 0 i@60@01)
        (< i@60@01 gsize@8@01)
        (<= 0 j@61@01)
        (< j@61@01 gsize@8@01)
        (not (= i@60@01 j@61@01))))
    (or
      (not
        (and
          (<= 0 i@60@01)
          (and
            (< i@60@01 gsize@8@01)
            (and
              (<= 0 j@61@01)
              (and (< j@61@01 gsize@8@01) (not (= i@60@01 j@61@01)))))))
      (and
        (<= 0 i@60@01)
        (and
          (< i@60@01 gsize@8@01)
          (and
            (<= 0 j@61@01)
            (and (< j@61@01 gsize@8@01) (not (= i@60@01 j@61@01))))))))
  :pattern ((Seq_index
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@12@01)))))))
    i@60@01) (Seq_index
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@12@01)))))))
    j@61@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/third_party/max-two-range.vpr@70@17@70@125-aux|)))
(push) ; 5
(assert (not (forall ((i@60@01 Int) (j@61@01 Int)) (!
  (=>
    (and
      (<= 0 i@60@01)
      (and
        (< i@60@01 gsize@8@01)
        (and
          (<= 0 j@61@01)
          (and (< j@61@01 gsize@8@01) (not (= i@60@01 j@61@01))))))
    (not
      (=
        (Seq_index
          ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@12@01)))))))
          i@60@01)
        (Seq_index
          ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@12@01)))))))
          j@61@01))))
  :pattern ((Seq_index
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@12@01)))))))
    i@60@01) (Seq_index
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@12@01)))))))
    j@61@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/third_party/max-two-range.vpr@70@17@70@125|))))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(assert (forall ((i@60@01 Int) (j@61@01 Int)) (!
  (=>
    (and
      (<= 0 i@60@01)
      (and
        (< i@60@01 gsize@8@01)
        (and
          (<= 0 j@61@01)
          (and (< j@61@01 gsize@8@01) (not (= i@60@01 j@61@01))))))
    (not
      (=
        (Seq_index
          ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@12@01)))))))
          i@60@01)
        (Seq_index
          ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@12@01)))))))
          j@61@01))))
  :pattern ((Seq_index
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@12@01)))))))
    i@60@01) (Seq_index
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@12@01)))))))
    j@61@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/third_party/max-two-range.vpr@70@17@70@125|)))
(declare-const i@62@01 Int)
(push) ; 5
; [eval] (i in [0..gsize))
; [eval] [0..gsize)
(assert (Seq_contains (Seq_range 0 gsize@8@01) i@62@01))
(push) ; 6
(assert (not (not (= gsize@8@01 0))))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
; [eval] this.src[i]
(push) ; 6
(set-option :timeout 10)
(assert (not (< $Perm.No $k@13@01)))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 6
(assert (not (>= i@62@01 0)))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(push) ; 6
(assert (not (<
  i@62@01
  (Seq_length
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@12@01)))))))))))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(pop) ; 5
(declare-fun inv@63@01 ($Ref) Int)
(declare-fun img@64@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
(push) ; 5
(assert (not (forall ((i@62@01 Int)) (!
  (=>
    (Seq_contains (Seq_range 0 gsize@8@01) i@62@01)
    (or
      (= (/ (to_real 1) (to_real gsize@8@01)) $Perm.No)
      (< $Perm.No (/ (to_real 1) (to_real gsize@8@01)))))
  
  :qid |quant-u-17927|))))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
; Check receiver injectivity
(push) ; 5
(assert (not (forall ((i1@62@01 Int) (i2@62@01 Int)) (!
  (=>
    (and
      (and
        (Seq_contains (Seq_range 0 gsize@8@01) i1@62@01)
        (< $Perm.No (/ (to_real 1) (to_real gsize@8@01))))
      (and
        (Seq_contains (Seq_range 0 gsize@8@01) i2@62@01)
        (< $Perm.No (/ (to_real 1) (to_real gsize@8@01))))
      (=
        (Seq_index
          ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@12@01)))))))
          i1@62@01)
        (Seq_index
          ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@12@01)))))))
          i2@62@01)))
    (= i1@62@01 i2@62@01))
  
  :qid |Integer_value-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((i@62@01 Int)) (!
  (=>
    (and
      (Seq_contains (Seq_range 0 gsize@8@01) i@62@01)
      (< $Perm.No (/ (to_real 1) (to_real gsize@8@01))))
    (and
      (=
        (inv@63@01 (Seq_index
          ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@12@01)))))))
          i@62@01))
        i@62@01)
      (img@64@01 (Seq_index
        ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@12@01)))))))
        i@62@01))))
  :pattern ((Seq_index
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@12@01)))))))
    i@62@01))
  :qid |Integer_value-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@64@01 r)
      (and
        (Seq_contains (Seq_range 0 gsize@8@01) (inv@63@01 r))
        (< $Perm.No (/ (to_real 1) (to_real gsize@8@01)))))
    (=
      (Seq_index
        ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@12@01)))))))
        (inv@63@01 r))
      r))
  :pattern ((inv@63@01 r))
  :qid |Integer_value-fctOfInv|)))
; Precomputing data for removing quantified permissions
(define-fun pTaken@65@01 ((r $Ref)) $Perm
  (ite
    (and
      (Seq_contains (Seq_range 0 gsize@8@01) (inv@63@01 r))
      (img@64@01 r)
      (=
        r
        (Seq_index
          ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@12@01)))))))
          (inv@63@01 r))))
    ($Perm.min
      (ite
        (and (img@19@01 r) (Seq_contains (Seq_range 0 gsize@8@01) (inv@18@01 r)))
        (/ (to_real 1) (to_real gsize@8@01))
        $Perm.No)
      (/ (to_real 1) (to_real gsize@8@01)))
    $Perm.No))
(define-fun pTaken@66@01 ((r $Ref)) $Perm
  (ite
    (and
      (Seq_contains (Seq_range 0 gsize@8@01) (inv@63@01 r))
      (img@64@01 r)
      (=
        r
        (Seq_index
          ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@12@01)))))))
          (inv@63@01 r))))
    ($Perm.min
      (ite
        (=
          r
          (Seq_index
            ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@12@01)))))))))
            tid@9@01))
        $Perm.Write
        $Perm.No)
      (- (/ (to_real 1) (to_real gsize@8@01)) (pTaken@65@01 r)))
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
        (and (img@19@01 r) (Seq_contains (Seq_range 0 gsize@8@01) (inv@18@01 r)))
        (/ (to_real 1) (to_real gsize@8@01))
        $Perm.No)
      (pTaken@65@01 r))
    $Perm.No)
  
  :qid |quant-u-17929|))))
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
      (Seq_contains (Seq_range 0 gsize@8@01) (inv@63@01 r))
      (img@64@01 r)
      (=
        r
        (Seq_index
          ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@12@01)))))))
          (inv@63@01 r))))
    (= (- (/ (to_real 1) (to_real gsize@8@01)) (pTaken@65@01 r)) $Perm.No))
  
  :qid |quant-u-17930|))))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
; Final check if taken enough permissions
; Done removing quantified permissions
; [eval] false || __last_barrier == 0
(set-option :timeout 0)
(push) ; 5
; [then-branch: 33 | False | live]
; [else-branch: 33 | True | live]
(push) ; 6
; [then-branch: 33 | False]
(assert false)
(pop) ; 6
(push) ; 6
; [else-branch: 33 | True]
; [eval] __last_barrier == 0
(pop) ; 6
(pop) ; 5
; Joined path conditions
; Joined path conditions
; [eval] __last_barrier == 1
; [then-branch: 34 | False | dead]
; [else-branch: 34 | True | live]
(push) ; 5
; [else-branch: 34 | True]
; [eval] __last_barrier == 0
(push) ; 6
(set-option :timeout 10)
(assert (not false))
(check-sat)
; unknown
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
; [then-branch: 35 | True | live]
; [else-branch: 35 | False | dead]
(set-option :timeout 0)
(push) ; 6
; [then-branch: 35 | True]
; [eval] this.dst[tid]
(push) ; 7
(set-option :timeout 10)
(assert (not (< $Perm.No $k@14@01)))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 7
(assert (not (>= tid@9@01 0)))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(push) ; 7
(assert (not (<
  tid@9@01
  (Seq_length
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@12@01)))))))))))))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
; Precomputing data for removing quantified permissions
(define-fun pTaken@67@01 ((r $Ref)) $Perm
  (ite
    (=
      r
      (Seq_index
        ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@12@01)))))))))
        tid@9@01))
    ($Perm.min
      (ite
        (=
          r
          (Seq_index
            ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@12@01)))))))))
            tid@9@01))
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
(assert (not (=
  (-
    (ite
      (=
        (Seq_index
          ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@12@01)))))))))
          tid@9@01)
        (Seq_index
          ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@12@01)))))))))
          tid@9@01))
      $Perm.Write
      $Perm.No)
    (pTaken@67@01 (Seq_index
      ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@12@01)))))))))
      tid@9@01)))
  $Perm.No)))
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
    (=
      r
      (Seq_index
        ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@12@01)))))))))
        tid@9@01))
    (= (- $Perm.Write (pTaken@67@01 r)) $Perm.No))
  
  :qid |quant-u-17933|))))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
; Final check if taken enough permissions
; Done removing quantified permissions
; [eval] 0 <= k
; [eval] k <= half
(set-option :timeout 0)
(push) ; 7
(assert (not (<= 0 half@35@01)))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(assert (<= 0 half@35@01))
; [eval] (forall __rw_i7: Int :: { this.src[__rw_i7] } true ==> 0 <= __rw_i7 - offset && __rw_i7 - offset < k ==> this.dst[tid].Integer_value >= this.src[__rw_i7].Integer_value)
(declare-const __rw_i7@68@01 Int)
(push) ; 7
; [eval] true ==> 0 <= __rw_i7 - offset && __rw_i7 - offset < k ==> this.dst[tid].Integer_value >= this.src[__rw_i7].Integer_value
(push) ; 8
(push) ; 9
(set-option :timeout 10)
(assert (not false))
(check-sat)
; unknown
(pop) ; 9
; 0.00s
; (get-info :all-statistics)
; [then-branch: 36 | True | live]
; [else-branch: 36 | False | dead]
(set-option :timeout 0)
(push) ; 9
; [then-branch: 36 | True]
; [eval] 0 <= __rw_i7 - offset && __rw_i7 - offset < k ==> this.dst[tid].Integer_value >= this.src[__rw_i7].Integer_value
; [eval] 0 <= __rw_i7 - offset && __rw_i7 - offset < k
; [eval] 0 <= __rw_i7 - offset
; [eval] __rw_i7 - offset
(push) ; 10
; [then-branch: 37 | !(0 <= __rw_i7@68@01 - offset@36@01) | live]
; [else-branch: 37 | 0 <= __rw_i7@68@01 - offset@36@01 | live]
(push) ; 11
; [then-branch: 37 | !(0 <= __rw_i7@68@01 - offset@36@01)]
(assert (not (<= 0 (- __rw_i7@68@01 offset@36@01))))
(pop) ; 11
(push) ; 11
; [else-branch: 37 | 0 <= __rw_i7@68@01 - offset@36@01]
(assert (<= 0 (- __rw_i7@68@01 offset@36@01)))
; [eval] __rw_i7 - offset < k
; [eval] __rw_i7 - offset
(pop) ; 11
(pop) ; 10
; Joined path conditions
; Joined path conditions
(assert (or
  (<= 0 (- __rw_i7@68@01 offset@36@01))
  (not (<= 0 (- __rw_i7@68@01 offset@36@01)))))
(push) ; 10
; [then-branch: 38 | 0 <= __rw_i7@68@01 - offset@36@01 && __rw_i7@68@01 - offset@36@01 < 0 | live]
; [else-branch: 38 | !(0 <= __rw_i7@68@01 - offset@36@01 && __rw_i7@68@01 - offset@36@01 < 0) | live]
(push) ; 11
; [then-branch: 38 | 0 <= __rw_i7@68@01 - offset@36@01 && __rw_i7@68@01 - offset@36@01 < 0]
(assert (and (<= 0 (- __rw_i7@68@01 offset@36@01)) (< (- __rw_i7@68@01 offset@36@01) 0)))
; [eval] this.dst[tid].Integer_value >= this.src[__rw_i7].Integer_value
; [eval] this.dst[tid]
(push) ; 12
(set-option :timeout 10)
(assert (not (< $Perm.No $k@14@01)))
(check-sat)
; unsat
(pop) ; 12
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 12
(assert (not (>= tid@9@01 0)))
(check-sat)
; unsat
(pop) ; 12
; 0.00s
; (get-info :all-statistics)
(push) ; 12
(assert (not (<
  tid@9@01
  (Seq_length
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@12@01)))))))))))))
(check-sat)
; unsat
(pop) ; 12
; 0.00s
; (get-info :all-statistics)
(assert (and
  (forall ((r $Ref)) (!
    (=>
      (=
        r
        (Seq_index
          ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@12@01)))))))))
          tid@9@01))
      (=
        ($FVF.lookup_Integer_value (as sm@42@01  $FVF<Integer_value>) r)
        ($FVF.lookup_Integer_value (as sm@41@01  $FVF<Integer_value>) r)))
    :pattern (($FVF.lookup_Integer_value (as sm@42@01  $FVF<Integer_value>) r))
    :pattern (($FVF.lookup_Integer_value (as sm@41@01  $FVF<Integer_value>) r))
    :qid |qp.fvfValDef6|))
  (forall ((r $Ref)) (!
    (=>
      (ite
        (and (img@19@01 r) (Seq_contains (Seq_range 0 gsize@8@01) (inv@18@01 r)))
        (< $Perm.No (/ (to_real 1) (to_real gsize@8@01)))
        false)
      (=
        ($FVF.lookup_Integer_value (as sm@42@01  $FVF<Integer_value>) r)
        ($FVF.lookup_Integer_value ($SortWrappers.$SnapTo$FVF<Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@12@01)))))))))))))) r)))
    :pattern (($FVF.lookup_Integer_value (as sm@42@01  $FVF<Integer_value>) r))
    :pattern (($FVF.lookup_Integer_value ($SortWrappers.$SnapTo$FVF<Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@12@01)))))))))))))) r))
    :qid |qp.fvfValDef7|))))
(push) ; 12
(assert (not (<
  $Perm.No
  (+
    (ite
      (=
        (Seq_index
          ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@12@01)))))))))
          tid@9@01)
        (Seq_index
          ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@12@01)))))))))
          tid@9@01))
      $Perm.Write
      $Perm.No)
    (ite
      (and
        (img@19@01 (Seq_index
          ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@12@01)))))))))
          tid@9@01))
        (Seq_contains
          (Seq_range 0 gsize@8@01)
          (inv@18@01 (Seq_index
            ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@12@01)))))))))
            tid@9@01))))
      (/ (to_real 1) (to_real gsize@8@01))
      $Perm.No)))))
(check-sat)
; unsat
(pop) ; 12
; 0.00s
; (get-info :all-statistics)
; [eval] this.src[__rw_i7]
(push) ; 12
(set-option :timeout 10)
(assert (not (< $Perm.No $k@13@01)))
(check-sat)
; unsat
(pop) ; 12
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 12
(assert (not (>= __rw_i7@68@01 0)))
(check-sat)
; unsat
(pop) ; 12
; 0.00s
; (get-info :all-statistics)
(push) ; 12
(assert (not (<
  __rw_i7@68@01
  (Seq_length
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@12@01)))))))))))
(check-sat)
; unsat
(pop) ; 12
; 0.00s
; (get-info :all-statistics)
(assert (and
  (forall ((r $Ref)) (!
    (=>
      (=
        r
        (Seq_index
          ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@12@01)))))))))
          tid@9@01))
      (=
        ($FVF.lookup_Integer_value (as sm@42@01  $FVF<Integer_value>) r)
        ($FVF.lookup_Integer_value (as sm@41@01  $FVF<Integer_value>) r)))
    :pattern (($FVF.lookup_Integer_value (as sm@42@01  $FVF<Integer_value>) r))
    :pattern (($FVF.lookup_Integer_value (as sm@41@01  $FVF<Integer_value>) r))
    :qid |qp.fvfValDef6|))
  (forall ((r $Ref)) (!
    (=>
      (ite
        (and (img@19@01 r) (Seq_contains (Seq_range 0 gsize@8@01) (inv@18@01 r)))
        (< $Perm.No (/ (to_real 1) (to_real gsize@8@01)))
        false)
      (=
        ($FVF.lookup_Integer_value (as sm@42@01  $FVF<Integer_value>) r)
        ($FVF.lookup_Integer_value ($SortWrappers.$SnapTo$FVF<Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@12@01)))))))))))))) r)))
    :pattern (($FVF.lookup_Integer_value (as sm@42@01  $FVF<Integer_value>) r))
    :pattern (($FVF.lookup_Integer_value ($SortWrappers.$SnapTo$FVF<Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@12@01)))))))))))))) r))
    :qid |qp.fvfValDef7|))))
(push) ; 12
(assert (not (<
  $Perm.No
  (+
    (ite
      (=
        (Seq_index
          ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@12@01)))))))
          __rw_i7@68@01)
        (Seq_index
          ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@12@01)))))))))
          tid@9@01))
      $Perm.Write
      $Perm.No)
    (ite
      (and
        (img@19@01 (Seq_index
          ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@12@01)))))))
          __rw_i7@68@01))
        (Seq_contains
          (Seq_range 0 gsize@8@01)
          (inv@18@01 (Seq_index
            ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@12@01)))))))
            __rw_i7@68@01))))
      (/ (to_real 1) (to_real gsize@8@01))
      $Perm.No)))))
(check-sat)
; unsat
(pop) ; 12
; 0.00s
; (get-info :all-statistics)
(pop) ; 11
(push) ; 11
; [else-branch: 38 | !(0 <= __rw_i7@68@01 - offset@36@01 && __rw_i7@68@01 - offset@36@01 < 0)]
(assert (not
  (and
    (<= 0 (- __rw_i7@68@01 offset@36@01))
    (< (- __rw_i7@68@01 offset@36@01) 0))))
(pop) ; 11
(pop) ; 10
; Joined path conditions
(assert (forall ((r $Ref)) (!
  (=>
    (=
      r
      (Seq_index
        ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@12@01)))))))))
        tid@9@01))
    (=
      ($FVF.lookup_Integer_value (as sm@42@01  $FVF<Integer_value>) r)
      ($FVF.lookup_Integer_value (as sm@41@01  $FVF<Integer_value>) r)))
  :pattern (($FVF.lookup_Integer_value (as sm@42@01  $FVF<Integer_value>) r))
  :pattern (($FVF.lookup_Integer_value (as sm@41@01  $FVF<Integer_value>) r))
  :qid |qp.fvfValDef6|)))
(assert (forall ((r $Ref)) (!
  (=>
    (ite
      (and (img@19@01 r) (Seq_contains (Seq_range 0 gsize@8@01) (inv@18@01 r)))
      (< $Perm.No (/ (to_real 1) (to_real gsize@8@01)))
      false)
    (=
      ($FVF.lookup_Integer_value (as sm@42@01  $FVF<Integer_value>) r)
      ($FVF.lookup_Integer_value ($SortWrappers.$SnapTo$FVF<Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@12@01)))))))))))))) r)))
  :pattern (($FVF.lookup_Integer_value (as sm@42@01  $FVF<Integer_value>) r))
  :pattern (($FVF.lookup_Integer_value ($SortWrappers.$SnapTo$FVF<Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@12@01)))))))))))))) r))
  :qid |qp.fvfValDef7|)))
; Joined path conditions
(assert (or
  (not
    (and
      (<= 0 (- __rw_i7@68@01 offset@36@01))
      (< (- __rw_i7@68@01 offset@36@01) 0)))
  (and
    (<= 0 (- __rw_i7@68@01 offset@36@01))
    (< (- __rw_i7@68@01 offset@36@01) 0))))
(pop) ; 9
(pop) ; 8
; Joined path conditions
(assert (forall ((r $Ref)) (!
  (=>
    (=
      r
      (Seq_index
        ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@12@01)))))))))
        tid@9@01))
    (=
      ($FVF.lookup_Integer_value (as sm@42@01  $FVF<Integer_value>) r)
      ($FVF.lookup_Integer_value (as sm@41@01  $FVF<Integer_value>) r)))
  :pattern (($FVF.lookup_Integer_value (as sm@42@01  $FVF<Integer_value>) r))
  :pattern (($FVF.lookup_Integer_value (as sm@41@01  $FVF<Integer_value>) r))
  :qid |qp.fvfValDef6|)))
(assert (forall ((r $Ref)) (!
  (=>
    (ite
      (and (img@19@01 r) (Seq_contains (Seq_range 0 gsize@8@01) (inv@18@01 r)))
      (< $Perm.No (/ (to_real 1) (to_real gsize@8@01)))
      false)
    (=
      ($FVF.lookup_Integer_value (as sm@42@01  $FVF<Integer_value>) r)
      ($FVF.lookup_Integer_value ($SortWrappers.$SnapTo$FVF<Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@12@01)))))))))))))) r)))
  :pattern (($FVF.lookup_Integer_value (as sm@42@01  $FVF<Integer_value>) r))
  :pattern (($FVF.lookup_Integer_value ($SortWrappers.$SnapTo$FVF<Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@12@01)))))))))))))) r))
  :qid |qp.fvfValDef7|)))
(assert (and
  (or
    (<= 0 (- __rw_i7@68@01 offset@36@01))
    (not (<= 0 (- __rw_i7@68@01 offset@36@01))))
  (or
    (not
      (and
        (<= 0 (- __rw_i7@68@01 offset@36@01))
        (< (- __rw_i7@68@01 offset@36@01) 0)))
    (and
      (<= 0 (- __rw_i7@68@01 offset@36@01))
      (< (- __rw_i7@68@01 offset@36@01) 0)))))
(pop) ; 7
; Nested auxiliary terms: globals (aux)
(assert (forall ((r $Ref)) (!
  (=>
    (=
      r
      (Seq_index
        ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@12@01)))))))))
        tid@9@01))
    (=
      ($FVF.lookup_Integer_value (as sm@42@01  $FVF<Integer_value>) r)
      ($FVF.lookup_Integer_value (as sm@41@01  $FVF<Integer_value>) r)))
  :pattern (($FVF.lookup_Integer_value (as sm@42@01  $FVF<Integer_value>) r))
  :pattern (($FVF.lookup_Integer_value (as sm@41@01  $FVF<Integer_value>) r))
  :qid |qp.fvfValDef6|)))
(assert (forall ((r $Ref)) (!
  (=>
    (ite
      (and (img@19@01 r) (Seq_contains (Seq_range 0 gsize@8@01) (inv@18@01 r)))
      (< $Perm.No (/ (to_real 1) (to_real gsize@8@01)))
      false)
    (=
      ($FVF.lookup_Integer_value (as sm@42@01  $FVF<Integer_value>) r)
      ($FVF.lookup_Integer_value ($SortWrappers.$SnapTo$FVF<Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@12@01)))))))))))))) r)))
  :pattern (($FVF.lookup_Integer_value (as sm@42@01  $FVF<Integer_value>) r))
  :pattern (($FVF.lookup_Integer_value ($SortWrappers.$SnapTo$FVF<Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@12@01)))))))))))))) r))
  :qid |qp.fvfValDef7|)))
; Nested auxiliary terms: non-globals (aux)
(assert (forall ((__rw_i7@68@01 Int)) (!
  (and
    (or
      (<= 0 (- __rw_i7@68@01 offset@36@01))
      (not (<= 0 (- __rw_i7@68@01 offset@36@01))))
    (or
      (not
        (and
          (<= 0 (- __rw_i7@68@01 offset@36@01))
          (< (- __rw_i7@68@01 offset@36@01) 0)))
      (and
        (<= 0 (- __rw_i7@68@01 offset@36@01))
        (< (- __rw_i7@68@01 offset@36@01) 0))))
  :pattern ((Seq_index
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@12@01)))))))
    __rw_i7@68@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/third_party/max-two-range.vpr@76@18@76@126-aux|)))
(push) ; 7
(assert (not (forall ((__rw_i7@68@01 Int)) (!
  (=>
    (and
      (<= 0 (- __rw_i7@68@01 offset@36@01))
      (< (- __rw_i7@68@01 offset@36@01) 0))
    (>=
      ($FVF.lookup_Integer_value (as sm@42@01  $FVF<Integer_value>) (Seq_index
        ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@12@01)))))))))
        tid@9@01))
      ($FVF.lookup_Integer_value (as sm@42@01  $FVF<Integer_value>) (Seq_index
        ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@12@01)))))))
        __rw_i7@68@01))))
  :pattern ((Seq_index
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@12@01)))))))
    __rw_i7@68@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/third_party/max-two-range.vpr@76@18@76@126|))))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(assert (forall ((__rw_i7@68@01 Int)) (!
  (=>
    (and
      (<= 0 (- __rw_i7@68@01 offset@36@01))
      (< (- __rw_i7@68@01 offset@36@01) 0))
    (>=
      ($FVF.lookup_Integer_value (as sm@42@01  $FVF<Integer_value>) (Seq_index
        ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@12@01)))))))))
        tid@9@01))
      ($FVF.lookup_Integer_value (as sm@42@01  $FVF<Integer_value>) (Seq_index
        ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@12@01)))))))
        __rw_i7@68@01))))
  :pattern ((Seq_index
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@12@01)))))))
    __rw_i7@68@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/third_party/max-two-range.vpr@76@18@76@126|)))
; Loop head block: Execute statements of loop head block (in invariant state)
(push) ; 7
(assert (forall ((r $Ref)) (!
  (=>
    (ite
      (and (img@53@01 r) (Seq_contains (Seq_range 0 gsize@8@01) (inv@52@01 r)))
      (< $Perm.No (/ (to_real 1) (to_real gsize@8@01)))
      false)
    (=
      ($FVF.lookup_Integer_value (as sm@56@01  $FVF<Integer_value>) r)
      ($FVF.lookup_Integer_value ($SortWrappers.$SnapTo$FVF<Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@46@01))))))))))))))) r)))
  :pattern (($FVF.lookup_Integer_value (as sm@56@01  $FVF<Integer_value>) r))
  :pattern (($FVF.lookup_Integer_value ($SortWrappers.$SnapTo$FVF<Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@46@01))))))))))))))) r))
  :qid |qp.fvfValDef9|)))
(assert (forall ((r $Ref)) (!
  (=>
    (=
      r
      (Seq_index
        ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@46@01)))))))))
        tid@9@01))
    (=
      ($FVF.lookup_Integer_value (as sm@56@01  $FVF<Integer_value>) r)
      ($FVF.lookup_Integer_value (as sm@54@01  $FVF<Integer_value>) r)))
  :pattern (($FVF.lookup_Integer_value (as sm@56@01  $FVF<Integer_value>) r))
  :pattern (($FVF.lookup_Integer_value (as sm@54@01  $FVF<Integer_value>) r))
  :qid |qp.fvfValDef10|)))
(assert (forall ((r $Ref)) (!
  (=
    ($FVF.perm_Integer_value (as pm@57@01  $FPM) r)
    (+
      (ite
        (and (img@53@01 r) (Seq_contains (Seq_range 0 gsize@8@01) (inv@52@01 r)))
        (/ (to_real 1) (to_real gsize@8@01))
        $Perm.No)
      (ite
        (=
          r
          (Seq_index
            ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@46@01)))))))))
            tid@9@01))
        $Perm.Write
        $Perm.No)))
  :pattern (($FVF.perm_Integer_value (as pm@57@01  $FPM) r))
  :qid |qp.resPrmSumDef11|)))
(assert (=
  ($FVF.lookup_Integer_value (as sm@54@01  $FVF<Integer_value>) (Seq_index
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@46@01)))))))))
    tid@9@01))
  ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@46@01))))))))))))))))))))
(assert (<=
  $Perm.No
  (ite
    (=
      (Seq_index
        ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@46@01)))))))))
        tid@9@01)
      (Seq_index
        ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@46@01)))))))))
        tid@9@01))
    $Perm.Write
    $Perm.No)))
(assert (<=
  (ite
    (=
      (Seq_index
        ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@46@01)))))))))
        tid@9@01)
      (Seq_index
        ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@46@01)))))))))
        tid@9@01))
    $Perm.Write
    $Perm.No)
  $Perm.Write))
(assert (=>
  (=
    (Seq_index
      ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@46@01)))))))))
      tid@9@01)
    (Seq_index
      ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@46@01)))))))))
      tid@9@01))
  (not
    (=
      (Seq_index
        ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@46@01)))))))))
        tid@9@01)
      $Ref.null))))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@46@01)))))))))))))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@46@01))))))))))))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@46@01)))))))))))))))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@46@01))))))))))))))))))
  $Snap.unit))
(assert (<= 0 k@45@01))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@46@01))))))))))))))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@46@01)))))))))))))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@46@01))))))))))))))))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@46@01)))))))))))))))))))
  $Snap.unit))
(assert (<= k@45@01 half@35@01))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@46@01)))))))))))))))))))
  $Snap.unit))
(assert (forall ((__rw_i7@55@01 Int)) (!
  (and
    (or
      (<= 0 (- __rw_i7@55@01 offset@36@01))
      (not (<= 0 (- __rw_i7@55@01 offset@36@01))))
    (or
      (not
        (and
          (<= 0 (- __rw_i7@55@01 offset@36@01))
          (< (- __rw_i7@55@01 offset@36@01) k@45@01)))
      (and
        (<= 0 (- __rw_i7@55@01 offset@36@01))
        (< (- __rw_i7@55@01 offset@36@01) k@45@01))))
  :pattern ((Seq_index
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@46@01)))))))
    __rw_i7@55@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/third_party/max-two-range.vpr@76@18@76@126-aux|)))
(assert (forall ((__rw_i7@55@01 Int)) (!
  (=>
    (and
      (<= 0 (- __rw_i7@55@01 offset@36@01))
      (< (- __rw_i7@55@01 offset@36@01) k@45@01))
    (>=
      ($FVF.lookup_Integer_value (as sm@56@01  $FVF<Integer_value>) (Seq_index
        ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@46@01)))))))))
        tid@9@01))
      ($FVF.lookup_Integer_value (as sm@56@01  $FVF<Integer_value>) (Seq_index
        ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@46@01)))))))
        __rw_i7@55@01))))
  :pattern ((Seq_index
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@46@01)))))))
    __rw_i7@55@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/third_party/max-two-range.vpr@76@18@76@126|)))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@46@01))))))))))))))))
  $Snap.unit))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@46@01))))))))))))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@46@01)))))))))))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@46@01))))))))))))))))))))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@53@01 r)
      (and
        (Seq_contains (Seq_range 0 gsize@8@01) (inv@52@01 r))
        (< $Perm.No (/ (to_real 1) (to_real gsize@8@01)))))
    (=
      (Seq_index
        ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@46@01)))))))
        (inv@52@01 r))
      r))
  :pattern ((inv@52@01 r))
  :qid |Integer_value-fctOfInv|)))
(assert (forall ((i@51@01 Int)) (!
  (=>
    (and
      (Seq_contains (Seq_range 0 gsize@8@01) i@51@01)
      (< $Perm.No (/ (to_real 1) (to_real gsize@8@01))))
    (and
      (=
        (inv@52@01 (Seq_index
          ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@46@01)))))))
          i@51@01))
        i@51@01)
      (img@53@01 (Seq_index
        ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@46@01)))))))
        i@51@01))))
  :pattern ((Seq_index
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@46@01)))))))
    i@51@01))
  :qid |quant-u-17926|)))
(assert (forall ((i@51@01 Int)) (!
  (<= $Perm.No (/ (to_real 1) (to_real gsize@8@01)))
  :pattern ((Seq_index
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@46@01)))))))
    i@51@01))
  :qid |Integer_value-permAtLeastZero|)))
(assert (forall ((i@51@01 Int)) (!
  (<= (/ (to_real 1) (to_real gsize@8@01)) $Perm.Write)
  :pattern ((Seq_index
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@46@01)))))))
    i@51@01))
  :qid |Integer_value-permAtMostOne|)))
(assert (forall ((i@51@01 Int)) (!
  (=>
    (and
      (Seq_contains (Seq_range 0 gsize@8@01) i@51@01)
      (< $Perm.No (/ (to_real 1) (to_real gsize@8@01))))
    (not
      (=
        (Seq_index
          ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@46@01)))))))
          i@51@01)
        $Ref.null)))
  :pattern ((Seq_index
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@46@01)))))))
    i@51@01))
  :qid |Integer_value-permImpliesNonNull|)))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@46@01))))))))))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@46@01)))))))))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@46@01))))))))))))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@46@01)))))))))))))))
  $Snap.unit))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@46@01)))))))))))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@46@01))))))))))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@46@01)))))))))))))))))))
(assert ($Perm.isReadVar $k@47@01))
(assert ($Perm.isReadVar $k@48@01))
(assert (= $t@46@01 ($Snap.combine ($Snap.first $t@46@01) ($Snap.second $t@46@01))))
(assert (= ($Snap.first $t@46@01) $Snap.unit))
(assert (=
  ($Snap.second $t@46@01)
  ($Snap.combine
    ($Snap.first ($Snap.second $t@46@01))
    ($Snap.second ($Snap.second $t@46@01)))))
(assert (= ($Snap.first ($Snap.second $t@46@01)) $Snap.unit))
(assert (=
  ($Snap.second ($Snap.second $t@46@01))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second $t@46@01)))
    ($Snap.second ($Snap.second ($Snap.second $t@46@01))))))
(assert (= ($Snap.first ($Snap.second ($Snap.second $t@46@01))) $Snap.unit))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second $t@46@01)))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@46@01))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@46@01)))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@46@01))))
  $Snap.unit))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@46@01))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@46@01)))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@46@01))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@46@01)))))
  $Snap.unit))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@46@01)))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@46@01))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@46@01)))))))))
(assert (<= $Perm.No $k@47@01))
(assert (<= $k@47@01 $Perm.Write))
(assert (=> (< $Perm.No $k@47@01) (not (= this@6@01 $Ref.null))))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@46@01))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@46@01)))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@46@01))))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@46@01)))))))
  $Snap.unit))
(assert (=
  (Seq_length
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@46@01))))))))
  gsize@8@01))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@46@01)))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@46@01))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@46@01)))))))))))
(assert (<= $Perm.No $k@48@01))
(assert (<= $k@48@01 $Perm.Write))
(assert (=> (< $Perm.No $k@48@01) (not (= this@6@01 $Ref.null))))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@46@01))))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@46@01)))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@46@01))))))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@46@01)))))))))
  $Snap.unit))
(assert (=
  (Seq_length
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@46@01))))))))))
  gsize@8@01))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@46@01)))))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@46@01))))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@46@01)))))))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@46@01))))))))))
  $Snap.unit))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@46@01))))))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@46@01)))))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@46@01))))))))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@46@01)))))))))))
  $Snap.unit))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@46@01)))))))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@46@01))))))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@46@01)))))))))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@46@01))))))))))))
  $Snap.unit))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@46@01))))))))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@46@01)))))))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@46@01))))))))))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@46@01)))))))))))))
  $Snap.unit))
(assert (forall ((i@49@01 Int) (j@50@01 Int)) (!
  (and
    (=>
      (<= 0 i@49@01)
      (and
        (<= 0 i@49@01)
        (=>
          (< i@49@01 gsize@8@01)
          (and
            (< i@49@01 gsize@8@01)
            (=>
              (<= 0 j@50@01)
              (and
                (<= 0 j@50@01)
                (or (< j@50@01 gsize@8@01) (not (< j@50@01 gsize@8@01)))))
            (or (<= 0 j@50@01) (not (<= 0 j@50@01)))))
        (or (< i@49@01 gsize@8@01) (not (< i@49@01 gsize@8@01)))))
    (or (<= 0 i@49@01) (not (<= 0 i@49@01)))
    (=>
      (and
        (<= 0 i@49@01)
        (and
          (< i@49@01 gsize@8@01)
          (and
            (<= 0 j@50@01)
            (and (< j@50@01 gsize@8@01) (not (= i@49@01 j@50@01))))))
      (and
        (<= 0 i@49@01)
        (< i@49@01 gsize@8@01)
        (<= 0 j@50@01)
        (< j@50@01 gsize@8@01)
        (not (= i@49@01 j@50@01))))
    (or
      (not
        (and
          (<= 0 i@49@01)
          (and
            (< i@49@01 gsize@8@01)
            (and
              (<= 0 j@50@01)
              (and (< j@50@01 gsize@8@01) (not (= i@49@01 j@50@01)))))))
      (and
        (<= 0 i@49@01)
        (and
          (< i@49@01 gsize@8@01)
          (and
            (<= 0 j@50@01)
            (and (< j@50@01 gsize@8@01) (not (= i@49@01 j@50@01))))))))
  :pattern ((Seq_index
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@46@01)))))))
    i@49@01) (Seq_index
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@46@01)))))))
    j@50@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/third_party/max-two-range.vpr@70@17@70@125-aux|)))
(assert (forall ((i@49@01 Int) (j@50@01 Int)) (!
  (=>
    (and
      (<= 0 i@49@01)
      (and
        (< i@49@01 gsize@8@01)
        (and
          (<= 0 j@50@01)
          (and (< j@50@01 gsize@8@01) (not (= i@49@01 j@50@01))))))
    (not
      (=
        (Seq_index
          ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@46@01)))))))
          i@49@01)
        (Seq_index
          ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@46@01)))))))
          j@50@01))))
  :pattern ((Seq_index
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@46@01)))))))
    i@49@01) (Seq_index
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@46@01)))))))
    j@50@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/third_party/max-two-range.vpr@70@17@70@125|)))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@46@01)))))))))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@46@01))))))))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@46@01)))))))))))))))))
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
(set-option :timeout 10)
(check-sat)
; unknown
; Loop head block: Check well-definedness of edge conditions
(set-option :timeout 0)
(push) ; 8
; [eval] k < half
(pop) ; 8
(push) ; 8
; [eval] !(k < half)
; [eval] k < half
(pop) ; 8
; Loop head block: Follow loop-internal edges
; [eval] k < half
(push) ; 8
(set-option :timeout 10)
(assert (not (not (< k@45@01 half@35@01))))
(check-sat)
; unknown
(pop) ; 8
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 8
(set-option :timeout 10)
(assert (not (< k@45@01 half@35@01)))
(check-sat)
; unknown
(pop) ; 8
; 0.00s
; (get-info :all-statistics)
; [then-branch: 39 | k@45@01 < half@35@01 | live]
; [else-branch: 39 | !(k@45@01 < half@35@01) | live]
(set-option :timeout 0)
(push) ; 8
; [then-branch: 39 | k@45@01 < half@35@01]
(assert (< k@45@01 half@35@01))
; [exec]
; inhale false
(pop) ; 8
(push) ; 8
; [else-branch: 39 | !(k@45@01 < half@35@01)]
(assert (not (< k@45@01 half@35@01)))
(pop) ; 8
(declare-const $t@69@01 Seq<$Ref>)
(declare-const $t@70@01 Seq<$Ref>)
(assert (and
  (=>
    (< $Perm.No $k@47@01)
    (Seq_equal
      $t@69@01
      ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@46@01)))))))))
  (=>
    (< $Perm.No (- $k@13@01 $k@58@01))
    (Seq_equal
      $t@69@01
      ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@12@01)))))))))))
(assert (and
  (=>
    (< $Perm.No $k@48@01)
    (Seq_equal
      $t@70@01
      ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@46@01)))))))))))
  (=>
    (< $Perm.No (- $k@14@01 $k@59@01))
    (Seq_equal
      $t@70@01
      ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@12@01)))))))))))))
(assert (<= $Perm.No (+ $k@48@01 (- $k@14@01 $k@59@01))))
(assert (<= (+ $k@48@01 (- $k@14@01 $k@59@01)) $Perm.Write))
(assert (=>
  (< $Perm.No (+ $k@48@01 (- $k@14@01 $k@59@01)))
  (not (= this@6@01 $Ref.null))))
(assert (<= $Perm.No (+ $k@47@01 (- $k@13@01 $k@58@01))))
(assert (<= (+ $k@47@01 (- $k@13@01 $k@58@01)) $Perm.Write))
(assert (=>
  (< $Perm.No (+ $k@47@01 (- $k@13@01 $k@58@01)))
  (not (= this@6@01 $Ref.null))))
; [eval] !(k < half)
; [eval] k < half
(push) ; 8
(set-option :timeout 10)
(assert (not (< k@45@01 half@35@01)))
(check-sat)
; unknown
(pop) ; 8
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 8
(set-option :timeout 10)
(assert (not (not (< k@45@01 half@35@01))))
(check-sat)
; unknown
(pop) ; 8
; 0.00s
; (get-info :all-statistics)
; [then-branch: 40 | !(k@45@01 < half@35@01) | live]
; [else-branch: 40 | k@45@01 < half@35@01 | live]
(set-option :timeout 0)
(push) ; 8
; [then-branch: 40 | !(k@45@01 < half@35@01)]
(assert (not (< k@45@01 half@35@01)))
; [exec]
; inhale false
(pop) ; 8
(push) ; 8
; [else-branch: 40 | k@45@01 < half@35@01]
(assert (< k@45@01 half@35@01))
(pop) ; 8
(pop) ; 7
(pop) ; 6
(pop) ; 5
(pop) ; 4
(pop) ; 3
(push) ; 3
; [else-branch: 11 | !(tid@9@01 < 2)]
(assert (not (< tid@9@01 2)))
(pop) ; 3
; [eval] !(tid < 2)
; [eval] tid < 2
(push) ; 3
(set-option :timeout 10)
(assert (not (< tid@9@01 2)))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (not (< tid@9@01 2))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; [then-branch: 41 | !(tid@9@01 < 2) | live]
; [else-branch: 41 | tid@9@01 < 2 | live]
(set-option :timeout 0)
(push) ; 3
; [then-branch: 41 | !(tid@9@01 < 2)]
(assert (not (< tid@9@01 2)))
; [exec]
; inhale false
(pop) ; 3
(push) ; 3
; [else-branch: 41 | tid@9@01 < 2]
(assert (< tid@9@01 2))
(pop) ; 3
(pop) ; 2
(pop) ; 1
; ---------- main_barrier ----------
(declare-const this@71@01 $Ref)
(declare-const tcount@72@01 Int)
(declare-const gsize@73@01 Int)
(declare-const tid@74@01 Int)
(declare-const gid@75@01 Int)
(declare-const lid@76@01 Int)
(declare-const this_barrier@77@01 Int)
(declare-const last_barrier@78@01 Int)
(declare-const k@79@01 Int)
(declare-const half@80@01 Int)
(declare-const offset@81@01 Int)
(declare-const sys__result@82@01 Int)
(declare-const this@83@01 $Ref)
(declare-const tcount@84@01 Int)
(declare-const gsize@85@01 Int)
(declare-const tid@86@01 Int)
(declare-const gid@87@01 Int)
(declare-const lid@88@01 Int)
(declare-const this_barrier@89@01 Int)
(declare-const last_barrier@90@01 Int)
(declare-const k@91@01 Int)
(declare-const half@92@01 Int)
(declare-const offset@93@01 Int)
(declare-const sys__result@94@01 Int)
(push) ; 1
(declare-const $t@95@01 $Snap)
(assert (= $t@95@01 ($Snap.combine ($Snap.first $t@95@01) ($Snap.second $t@95@01))))
(assert (= ($Snap.first $t@95@01) $Snap.unit))
; [eval] this_barrier == 1 ==> false || last_barrier == 0
; [eval] this_barrier == 1
(push) ; 2
(push) ; 3
(set-option :timeout 10)
(assert (not (not (= this_barrier@89@01 1))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (= this_barrier@89@01 1)))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; [then-branch: 42 | this_barrier@89@01 == 1 | live]
; [else-branch: 42 | this_barrier@89@01 != 1 | live]
(set-option :timeout 0)
(push) ; 3
; [then-branch: 42 | this_barrier@89@01 == 1]
(assert (= this_barrier@89@01 1))
; [eval] false || last_barrier == 0
(push) ; 4
; [then-branch: 43 | False | live]
; [else-branch: 43 | True | live]
(push) ; 5
; [then-branch: 43 | False]
(assert false)
(pop) ; 5
(push) ; 5
; [else-branch: 43 | True]
; [eval] last_barrier == 0
(pop) ; 5
(pop) ; 4
; Joined path conditions
; Joined path conditions
(pop) ; 3
(push) ; 3
; [else-branch: 42 | this_barrier@89@01 != 1]
(assert (not (= this_barrier@89@01 1)))
(pop) ; 3
(pop) ; 2
; Joined path conditions
; Joined path conditions
(assert (or (not (= this_barrier@89@01 1)) (= this_barrier@89@01 1)))
(assert (=> (= this_barrier@89@01 1) (= last_barrier@90@01 0)))
(assert (=
  ($Snap.second $t@95@01)
  ($Snap.combine
    ($Snap.first ($Snap.second $t@95@01))
    ($Snap.second ($Snap.second $t@95@01)))))
(assert (= ($Snap.first ($Snap.second $t@95@01)) $Snap.unit))
; [eval] 0 <= tid
(assert (<= 0 tid@86@01))
(assert (=
  ($Snap.second ($Snap.second $t@95@01))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second $t@95@01)))
    ($Snap.second ($Snap.second ($Snap.second $t@95@01))))))
(assert (= ($Snap.first ($Snap.second ($Snap.second $t@95@01))) $Snap.unit))
; [eval] tid < tcount
(assert (< tid@86@01 tcount@84@01))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second $t@95@01)))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@95@01))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@95@01)))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@95@01))))
  $Snap.unit))
; [eval] tid == lid
(assert (= tid@86@01 lid@88@01))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@95@01))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@95@01)))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@95@01))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@95@01)))))
  $Snap.unit))
; [eval] tcount == gsize
(assert (= tcount@84@01 gsize@85@01))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@95@01)))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@95@01))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@95@01)))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@95@01))))))
  $Snap.unit))
; [eval] gid == 0
(assert (= gid@87@01 0))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@95@01))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@95@01)))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@95@01))))))))))
(declare-const $k@96@01 $Perm)
(assert ($Perm.isReadVar $k@96@01))
(assert (<= $Perm.No $k@96@01))
(assert (<= $k@96@01 $Perm.Write))
(assert (=> (< $Perm.No $k@96@01) (not (= this@83@01 $Ref.null))))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@95@01)))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@95@01))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@95@01)))))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@95@01))))))))
  $Snap.unit))
; [eval] |this.src| == gsize
; [eval] |this.src|
(push) ; 2
(set-option :timeout 10)
(assert (not (< $Perm.No $k@96@01)))
(check-sat)
; unsat
(pop) ; 2
; 0.00s
; (get-info :all-statistics)
(assert (=
  (Seq_length
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@95@01)))))))))
  gsize@85@01))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@95@01))))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@95@01)))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@95@01))))))))))))
(declare-const $k@97@01 $Perm)
(assert ($Perm.isReadVar $k@97@01))
(assert (<= $Perm.No $k@97@01))
(assert (<= $k@97@01 $Perm.Write))
(assert (=> (< $Perm.No $k@97@01) (not (= this@83@01 $Ref.null))))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@95@01)))))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@95@01))))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@95@01)))))))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@95@01))))))))))
  $Snap.unit))
; [eval] |this.dst| == gsize
; [eval] |this.dst|
(set-option :timeout 0)
(push) ; 2
(set-option :timeout 10)
(assert (not (< $Perm.No $k@97@01)))
(check-sat)
; unsat
(pop) ; 2
; 0.00s
; (get-info :all-statistics)
(assert (=
  (Seq_length
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@95@01)))))))))))
  gsize@85@01))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@95@01))))))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@95@01)))))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@95@01))))))))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@95@01)))))))))))
  $Snap.unit))
; [eval] 4 <= gsize
(assert (<= 4 gsize@85@01))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@95@01)))))))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@95@01))))))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@95@01)))))))))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@95@01))))))))))))
  $Snap.unit))
; [eval] gsize % 2 == 0
; [eval] gsize % 2
(assert (= (mod gsize@85@01 2) 0))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@95@01))))))))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@95@01)))))))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@95@01))))))))))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@95@01)))))))))))))
  $Snap.unit))
; [eval] (forall i: Int, j: Int :: { this.src[i], this.src[j] } 0 <= i && (i < gsize && (0 <= j && (j < gsize && i != j))) ==> this.src[i] != this.src[j])
(declare-const i@98@01 Int)
(declare-const j@99@01 Int)
(set-option :timeout 0)
(push) ; 2
; [eval] 0 <= i && (i < gsize && (0 <= j && (j < gsize && i != j))) ==> this.src[i] != this.src[j]
; [eval] 0 <= i && (i < gsize && (0 <= j && (j < gsize && i != j)))
; [eval] 0 <= i
(push) ; 3
; [then-branch: 44 | !(0 <= i@98@01) | live]
; [else-branch: 44 | 0 <= i@98@01 | live]
(push) ; 4
; [then-branch: 44 | !(0 <= i@98@01)]
(assert (not (<= 0 i@98@01)))
(pop) ; 4
(push) ; 4
; [else-branch: 44 | 0 <= i@98@01]
(assert (<= 0 i@98@01))
; [eval] i < gsize
(push) ; 5
; [then-branch: 45 | !(i@98@01 < gsize@85@01) | live]
; [else-branch: 45 | i@98@01 < gsize@85@01 | live]
(push) ; 6
; [then-branch: 45 | !(i@98@01 < gsize@85@01)]
(assert (not (< i@98@01 gsize@85@01)))
(pop) ; 6
(push) ; 6
; [else-branch: 45 | i@98@01 < gsize@85@01]
(assert (< i@98@01 gsize@85@01))
; [eval] 0 <= j
(push) ; 7
; [then-branch: 46 | !(0 <= j@99@01) | live]
; [else-branch: 46 | 0 <= j@99@01 | live]
(push) ; 8
; [then-branch: 46 | !(0 <= j@99@01)]
(assert (not (<= 0 j@99@01)))
(pop) ; 8
(push) ; 8
; [else-branch: 46 | 0 <= j@99@01]
(assert (<= 0 j@99@01))
; [eval] j < gsize
(push) ; 9
; [then-branch: 47 | !(j@99@01 < gsize@85@01) | live]
; [else-branch: 47 | j@99@01 < gsize@85@01 | live]
(push) ; 10
; [then-branch: 47 | !(j@99@01 < gsize@85@01)]
(assert (not (< j@99@01 gsize@85@01)))
(pop) ; 10
(push) ; 10
; [else-branch: 47 | j@99@01 < gsize@85@01]
(assert (< j@99@01 gsize@85@01))
; [eval] i != j
(pop) ; 10
(pop) ; 9
; Joined path conditions
; Joined path conditions
(assert (or (< j@99@01 gsize@85@01) (not (< j@99@01 gsize@85@01))))
(pop) ; 8
(pop) ; 7
; Joined path conditions
; Joined path conditions
(assert (=>
  (<= 0 j@99@01)
  (and (<= 0 j@99@01) (or (< j@99@01 gsize@85@01) (not (< j@99@01 gsize@85@01))))))
(assert (or (<= 0 j@99@01) (not (<= 0 j@99@01))))
(pop) ; 6
(pop) ; 5
; Joined path conditions
; Joined path conditions
(assert (=>
  (< i@98@01 gsize@85@01)
  (and
    (< i@98@01 gsize@85@01)
    (=>
      (<= 0 j@99@01)
      (and
        (<= 0 j@99@01)
        (or (< j@99@01 gsize@85@01) (not (< j@99@01 gsize@85@01)))))
    (or (<= 0 j@99@01) (not (<= 0 j@99@01))))))
(assert (or (< i@98@01 gsize@85@01) (not (< i@98@01 gsize@85@01))))
(pop) ; 4
(pop) ; 3
; Joined path conditions
; Joined path conditions
(assert (=>
  (<= 0 i@98@01)
  (and
    (<= 0 i@98@01)
    (=>
      (< i@98@01 gsize@85@01)
      (and
        (< i@98@01 gsize@85@01)
        (=>
          (<= 0 j@99@01)
          (and
            (<= 0 j@99@01)
            (or (< j@99@01 gsize@85@01) (not (< j@99@01 gsize@85@01)))))
        (or (<= 0 j@99@01) (not (<= 0 j@99@01)))))
    (or (< i@98@01 gsize@85@01) (not (< i@98@01 gsize@85@01))))))
(assert (or (<= 0 i@98@01) (not (<= 0 i@98@01))))
(push) ; 3
; [then-branch: 48 | 0 <= i@98@01 && i@98@01 < gsize@85@01 && 0 <= j@99@01 && j@99@01 < gsize@85@01 && i@98@01 != j@99@01 | live]
; [else-branch: 48 | !(0 <= i@98@01 && i@98@01 < gsize@85@01 && 0 <= j@99@01 && j@99@01 < gsize@85@01 && i@98@01 != j@99@01) | live]
(push) ; 4
; [then-branch: 48 | 0 <= i@98@01 && i@98@01 < gsize@85@01 && 0 <= j@99@01 && j@99@01 < gsize@85@01 && i@98@01 != j@99@01]
(assert (and
  (<= 0 i@98@01)
  (and
    (< i@98@01 gsize@85@01)
    (and (<= 0 j@99@01) (and (< j@99@01 gsize@85@01) (not (= i@98@01 j@99@01)))))))
; [eval] this.src[i] != this.src[j]
; [eval] this.src[i]
(push) ; 5
(set-option :timeout 10)
(assert (not (< $Perm.No $k@96@01)))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 5
(assert (not (>= i@98@01 0)))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(push) ; 5
(assert (not (<
  i@98@01
  (Seq_length
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@95@01))))))))))))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
; [eval] this.src[j]
(push) ; 5
(set-option :timeout 10)
(assert (not (< $Perm.No $k@96@01)))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 5
(assert (not (>= j@99@01 0)))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(push) ; 5
(assert (not (<
  j@99@01
  (Seq_length
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@95@01))))))))))))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(pop) ; 4
(push) ; 4
; [else-branch: 48 | !(0 <= i@98@01 && i@98@01 < gsize@85@01 && 0 <= j@99@01 && j@99@01 < gsize@85@01 && i@98@01 != j@99@01)]
(assert (not
  (and
    (<= 0 i@98@01)
    (and
      (< i@98@01 gsize@85@01)
      (and
        (<= 0 j@99@01)
        (and (< j@99@01 gsize@85@01) (not (= i@98@01 j@99@01))))))))
(pop) ; 4
(pop) ; 3
; Joined path conditions
(assert (=>
  (and
    (<= 0 i@98@01)
    (and
      (< i@98@01 gsize@85@01)
      (and
        (<= 0 j@99@01)
        (and (< j@99@01 gsize@85@01) (not (= i@98@01 j@99@01))))))
  (and
    (<= 0 i@98@01)
    (< i@98@01 gsize@85@01)
    (<= 0 j@99@01)
    (< j@99@01 gsize@85@01)
    (not (= i@98@01 j@99@01)))))
; Joined path conditions
(assert (or
  (not
    (and
      (<= 0 i@98@01)
      (and
        (< i@98@01 gsize@85@01)
        (and
          (<= 0 j@99@01)
          (and (< j@99@01 gsize@85@01) (not (= i@98@01 j@99@01)))))))
  (and
    (<= 0 i@98@01)
    (and
      (< i@98@01 gsize@85@01)
      (and
        (<= 0 j@99@01)
        (and (< j@99@01 gsize@85@01) (not (= i@98@01 j@99@01))))))))
(pop) ; 2
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall ((i@98@01 Int) (j@99@01 Int)) (!
  (and
    (=>
      (<= 0 i@98@01)
      (and
        (<= 0 i@98@01)
        (=>
          (< i@98@01 gsize@85@01)
          (and
            (< i@98@01 gsize@85@01)
            (=>
              (<= 0 j@99@01)
              (and
                (<= 0 j@99@01)
                (or (< j@99@01 gsize@85@01) (not (< j@99@01 gsize@85@01)))))
            (or (<= 0 j@99@01) (not (<= 0 j@99@01)))))
        (or (< i@98@01 gsize@85@01) (not (< i@98@01 gsize@85@01)))))
    (or (<= 0 i@98@01) (not (<= 0 i@98@01)))
    (=>
      (and
        (<= 0 i@98@01)
        (and
          (< i@98@01 gsize@85@01)
          (and
            (<= 0 j@99@01)
            (and (< j@99@01 gsize@85@01) (not (= i@98@01 j@99@01))))))
      (and
        (<= 0 i@98@01)
        (< i@98@01 gsize@85@01)
        (<= 0 j@99@01)
        (< j@99@01 gsize@85@01)
        (not (= i@98@01 j@99@01))))
    (or
      (not
        (and
          (<= 0 i@98@01)
          (and
            (< i@98@01 gsize@85@01)
            (and
              (<= 0 j@99@01)
              (and (< j@99@01 gsize@85@01) (not (= i@98@01 j@99@01)))))))
      (and
        (<= 0 i@98@01)
        (and
          (< i@98@01 gsize@85@01)
          (and
            (<= 0 j@99@01)
            (and (< j@99@01 gsize@85@01) (not (= i@98@01 j@99@01))))))))
  :pattern ((Seq_index
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@95@01))))))))
    i@98@01) (Seq_index
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@95@01))))))))
    j@99@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/third_party/max-two-range.vpr@111@12@111@120-aux|)))
(assert (forall ((i@98@01 Int) (j@99@01 Int)) (!
  (=>
    (and
      (<= 0 i@98@01)
      (and
        (< i@98@01 gsize@85@01)
        (and
          (<= 0 j@99@01)
          (and (< j@99@01 gsize@85@01) (not (= i@98@01 j@99@01))))))
    (not
      (=
        (Seq_index
          ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@95@01))))))))
          i@98@01)
        (Seq_index
          ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@95@01))))))))
          j@99@01))))
  :pattern ((Seq_index
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@95@01))))))))
    i@98@01) (Seq_index
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@95@01))))))))
    j@99@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/third_party/max-two-range.vpr@111@12@111@120|)))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@95@01)))))))))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@95@01))))))))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@95@01)))))))))))))))))
(declare-const i@100@01 Int)
(push) ; 2
; [eval] (i in [0..gsize))
; [eval] [0..gsize)
(assert (Seq_contains (Seq_range 0 gsize@85@01) i@100@01))
; [eval] this.src[i]
(push) ; 3
(set-option :timeout 10)
(assert (not (< $Perm.No $k@96@01)))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(assert (not (>= i@100@01 0)))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(push) ; 3
(assert (not (<
  i@100@01
  (Seq_length
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@95@01))))))))))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(push) ; 3
(assert (not (not (= gsize@85@01 0))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(pop) ; 2
(declare-fun inv@101@01 ($Ref) Int)
(declare-fun img@102@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
(push) ; 2
(assert (not (forall ((i@100@01 Int)) (!
  (=>
    (Seq_contains (Seq_range 0 gsize@85@01) i@100@01)
    (or
      (= (/ (to_real 1) (to_real gsize@85@01)) $Perm.No)
      (< $Perm.No (/ (to_real 1) (to_real gsize@85@01)))))
  
  :qid |quant-u-17934|))))
(check-sat)
; unsat
(pop) ; 2
; 0.00s
; (get-info :all-statistics)
; Check receiver injectivity
(push) ; 2
(assert (not (forall ((i1@100@01 Int) (i2@100@01 Int)) (!
  (=>
    (and
      (and
        (Seq_contains (Seq_range 0 gsize@85@01) i1@100@01)
        (< $Perm.No (/ (to_real 1) (to_real gsize@85@01))))
      (and
        (Seq_contains (Seq_range 0 gsize@85@01) i2@100@01)
        (< $Perm.No (/ (to_real 1) (to_real gsize@85@01))))
      (=
        (Seq_index
          ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@95@01))))))))
          i1@100@01)
        (Seq_index
          ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@95@01))))))))
          i2@100@01)))
    (= i1@100@01 i2@100@01))
  
  :qid |Integer_value-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 2
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((i@100@01 Int)) (!
  (=>
    (and
      (Seq_contains (Seq_range 0 gsize@85@01) i@100@01)
      (< $Perm.No (/ (to_real 1) (to_real gsize@85@01))))
    (and
      (=
        (inv@101@01 (Seq_index
          ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@95@01))))))))
          i@100@01))
        i@100@01)
      (img@102@01 (Seq_index
        ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@95@01))))))))
        i@100@01))))
  :pattern ((Seq_index
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@95@01))))))))
    i@100@01))
  :qid |quant-u-17935|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@102@01 r)
      (and
        (Seq_contains (Seq_range 0 gsize@85@01) (inv@101@01 r))
        (< $Perm.No (/ (to_real 1) (to_real gsize@85@01)))))
    (=
      (Seq_index
        ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@95@01))))))))
        (inv@101@01 r))
      r))
  :pattern ((inv@101@01 r))
  :qid |Integer_value-fctOfInv|)))
; Permissions are non-negative
(assert (forall ((i@100@01 Int)) (!
  (<= $Perm.No (/ (to_real 1) (to_real gsize@85@01)))
  :pattern ((Seq_index
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@95@01))))))))
    i@100@01))
  :qid |Integer_value-permAtLeastZero|)))
; Field permissions are at most one
(assert (forall ((i@100@01 Int)) (!
  (<= (/ (to_real 1) (to_real gsize@85@01)) $Perm.Write)
  :pattern ((Seq_index
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@95@01))))))))
    i@100@01))
  :qid |Integer_value-permAtMostOne|)))
; Permission implies non-null receiver
(assert (forall ((i@100@01 Int)) (!
  (=>
    (and
      (Seq_contains (Seq_range 0 gsize@85@01) i@100@01)
      (< $Perm.No (/ (to_real 1) (to_real gsize@85@01))))
    (not
      (=
        (Seq_index
          ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@95@01))))))))
          i@100@01)
        $Ref.null)))
  :pattern ((Seq_index
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@95@01))))))))
    i@100@01))
  :qid |Integer_value-permImpliesNonNull|)))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@95@01))))))))))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@95@01)))))))))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@95@01))))))))))))))))))
; [eval] last_barrier == 1
(push) ; 2
(set-option :timeout 10)
(assert (not (not (= last_barrier@90@01 1))))
(check-sat)
; unknown
(pop) ; 2
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 2
(set-option :timeout 10)
(assert (not (= last_barrier@90@01 1)))
(check-sat)
; unknown
(pop) ; 2
; 0.00s
; (get-info :all-statistics)
; [then-branch: 49 | last_barrier@90@01 == 1 | live]
; [else-branch: 49 | last_barrier@90@01 != 1 | live]
(set-option :timeout 0)
(push) ; 2
; [then-branch: 49 | last_barrier@90@01 == 1]
(assert (= last_barrier@90@01 1))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@95@01)))))))))))))))
  ($Snap.combine
    ($Snap.first ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@95@01))))))))))))))))
    ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@95@01)))))))))))))))))))
; [eval] tid == 0
(push) ; 3
(set-option :timeout 10)
(assert (not (not (= tid@86@01 0))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (= tid@86@01 0)))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; [then-branch: 50 | tid@86@01 == 0 | live]
; [else-branch: 50 | tid@86@01 != 0 | live]
(set-option :timeout 0)
(push) ; 3
; [then-branch: 50 | tid@86@01 == 0]
(assert (= tid@86@01 0))
; [eval] this.dst[0]
(push) ; 4
(set-option :timeout 10)
(assert (not (< $Perm.No $k@97@01)))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 4
(assert (not (<
  0
  (Seq_length
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@95@01))))))))))))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(declare-const sm@103@01 $FVF<Integer_value>)
; Definitional axioms for singleton-SM's value
(assert (=
  ($FVF.lookup_Integer_value (as sm@103@01  $FVF<Integer_value>) (Seq_index
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@95@01))))))))))
    0))
  ($SortWrappers.$SnapToInt ($Snap.first ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@95@01)))))))))))))))))))
(assert (<=
  $Perm.No
  (ite
    (=
      (Seq_index
        ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@95@01))))))))))
        0)
      (Seq_index
        ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@95@01))))))))))
        0))
    $Perm.Write
    $Perm.No)))
(assert (<=
  (ite
    (=
      (Seq_index
        ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@95@01))))))))))
        0)
      (Seq_index
        ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@95@01))))))))))
        0))
    $Perm.Write
    $Perm.No)
  $Perm.Write))
(assert (=>
  (=
    (Seq_index
      ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@95@01))))))))))
      0)
    (Seq_index
      ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@95@01))))))))))
      0))
  (not
    (=
      (Seq_index
        ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@95@01))))))))))
        0)
      $Ref.null))))
; [eval] tid == 0
(push) ; 4
(set-option :timeout 10)
(assert (not (not (= tid@86@01 0))))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; [then-branch: 51 | tid@86@01 == 0 | live]
; [else-branch: 51 | tid@86@01 != 0 | dead]
(set-option :timeout 0)
(push) ; 4
; [then-branch: 51 | tid@86@01 == 0]
; [eval] this.dst[1]
(push) ; 5
(set-option :timeout 10)
(assert (not (< $Perm.No $k@97@01)))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 5
(assert (not (<
  1
  (Seq_length
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@95@01))))))))))))))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(declare-const sm@104@01 $FVF<Integer_value>)
; Definitional axioms for singleton-SM's value
(assert (=
  ($FVF.lookup_Integer_value (as sm@104@01  $FVF<Integer_value>) (Seq_index
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@95@01))))))))))
    1))
  ($SortWrappers.$SnapToInt ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@95@01)))))))))))))))))))
(push) ; 5
(set-option :timeout 10)
(assert (not (and
  (and
    (=
      (Seq_index
        ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@95@01))))))))))
        1)
      (Seq_index
        ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@95@01))))))))))
        1))
    (=
      (Seq_index
        ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@95@01))))))))))
        0)
      (Seq_index
        ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@95@01))))))))))
        0)))
  (=
    (Seq_index
      ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@95@01))))))))))
      1)
    (Seq_index
      ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@95@01))))))))))
      0)))))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(assert (<=
  $Perm.No
  (ite
    (=
      (Seq_index
        ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@95@01))))))))))
        1)
      (Seq_index
        ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@95@01))))))))))
        1))
    $Perm.Write
    $Perm.No)))
(assert (<=
  (ite
    (=
      (Seq_index
        ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@95@01))))))))))
        1)
      (Seq_index
        ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@95@01))))))))))
        1))
    $Perm.Write
    $Perm.No)
  $Perm.Write))
(assert (=>
  (=
    (Seq_index
      ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@95@01))))))))))
      1)
    (Seq_index
      ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@95@01))))))))))
      1))
  (not
    (=
      (Seq_index
        ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@95@01))))))))))
        1)
      $Ref.null))))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@95@01)))))))))))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@95@01))))))))))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@95@01)))))))))))))))))))
; [eval] last_barrier == 0
(set-option :timeout 0)
(push) ; 5
(set-option :timeout 10)
(assert (not (not (= last_barrier@90@01 0))))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
; [then-branch: 52 | last_barrier@90@01 == 0 | dead]
; [else-branch: 52 | last_barrier@90@01 != 0 | live]
(set-option :timeout 0)
(push) ; 5
; [else-branch: 52 | last_barrier@90@01 != 0]
(assert (not (= last_barrier@90@01 0)))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@95@01))))))))))))))))
  $Snap.unit))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@95@01))))))))))))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@95@01)))))))))))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@95@01))))))))))))))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@95@01)))))))))))))))))
  $Snap.unit))
; [eval] this_barrier == 1 ==> half + half == gsize
; [eval] this_barrier == 1
(push) ; 6
(push) ; 7
(set-option :timeout 10)
(assert (not (not (= this_barrier@89@01 1))))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
; [then-branch: 53 | this_barrier@89@01 == 1 | dead]
; [else-branch: 53 | this_barrier@89@01 != 1 | live]
(set-option :timeout 0)
(push) ; 7
; [else-branch: 53 | this_barrier@89@01 != 1]
(assert (not (= this_barrier@89@01 1)))
(pop) ; 7
(pop) ; 6
; Joined path conditions
(assert (not (= this_barrier@89@01 1)))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@95@01)))))))))))))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@95@01))))))))))))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@95@01)))))))))))))))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@95@01))))))))))))))))))
  $Snap.unit))
; [eval] this_barrier == 1 ==> tid == 0 ==> (forall i: Int :: { this.src[i] } 0 <= i && i < half ==> this.dst[0].Integer_value >= this.src[i].Integer_value)
; [eval] this_barrier == 1
(push) ; 6
; [then-branch: 54 | this_barrier@89@01 == 1 | dead]
; [else-branch: 54 | this_barrier@89@01 != 1 | live]
(push) ; 7
; [else-branch: 54 | this_barrier@89@01 != 1]
(pop) ; 7
(pop) ; 6
; Joined path conditions
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@95@01))))))))))))))))))
  $Snap.unit))
; [eval] this_barrier == 1 ==> tid == 1 ==> (forall i: Int :: { this.src[i] } half <= i && i < gsize ==> this.dst[1].Integer_value >= this.src[i].Integer_value)
; [eval] this_barrier == 1
(push) ; 6
; [then-branch: 55 | this_barrier@89@01 == 1 | dead]
; [else-branch: 55 | this_barrier@89@01 != 1 | live]
(push) ; 7
; [else-branch: 55 | this_barrier@89@01 != 1]
(pop) ; 7
(pop) ; 6
; Joined path conditions
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
(set-option :timeout 0)
(push) ; 6
(declare-const $t@105@01 $Snap)
(assert (= $t@105@01 ($Snap.combine ($Snap.first $t@105@01) ($Snap.second $t@105@01))))
(assert (= ($Snap.first $t@105@01) $Snap.unit))
; [eval] 0 <= tid
(assert (=
  ($Snap.second $t@105@01)
  ($Snap.combine
    ($Snap.first ($Snap.second $t@105@01))
    ($Snap.second ($Snap.second $t@105@01)))))
(assert (= ($Snap.first ($Snap.second $t@105@01)) $Snap.unit))
; [eval] tid < tcount
(assert (=
  ($Snap.second ($Snap.second $t@105@01))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second $t@105@01)))
    ($Snap.second ($Snap.second ($Snap.second $t@105@01))))))
(assert (= ($Snap.first ($Snap.second ($Snap.second $t@105@01))) $Snap.unit))
; [eval] tid == lid
(assert (=
  ($Snap.second ($Snap.second ($Snap.second $t@105@01)))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@105@01))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@105@01)))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@105@01))))
  $Snap.unit))
; [eval] tcount == gsize
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@105@01))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@105@01)))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@105@01))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@105@01)))))
  $Snap.unit))
; [eval] gid == 0
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@105@01)))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@105@01))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@105@01)))))))))
(declare-const $k@106@01 $Perm)
(assert ($Perm.isReadVar $k@106@01))
(assert (<= $Perm.No $k@106@01))
(assert (<= $k@106@01 $Perm.Write))
(assert (=> (< $Perm.No $k@106@01) (not (= this@83@01 $Ref.null))))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@105@01))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@105@01)))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@105@01))))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@105@01)))))))
  $Snap.unit))
; [eval] |this.src| == gsize
; [eval] |this.src|
(push) ; 7
(set-option :timeout 10)
(assert (not (< $Perm.No $k@106@01)))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(assert (=
  (Seq_length
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@105@01))))))))
  gsize@85@01))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@105@01)))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@105@01))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@105@01)))))))))))
(declare-const $k@107@01 $Perm)
(assert ($Perm.isReadVar $k@107@01))
(assert (<= $Perm.No $k@107@01))
(assert (<= $k@107@01 $Perm.Write))
(assert (=> (< $Perm.No $k@107@01) (not (= this@83@01 $Ref.null))))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@105@01))))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@105@01)))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@105@01))))))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@105@01)))))))))
  $Snap.unit))
; [eval] |this.dst| == gsize
; [eval] |this.dst|
(set-option :timeout 0)
(push) ; 7
(set-option :timeout 10)
(assert (not (< $Perm.No $k@107@01)))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(assert (=
  (Seq_length
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@105@01))))))))))
  gsize@85@01))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@105@01)))))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@105@01))))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@105@01)))))))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@105@01))))))))))
  $Snap.unit))
; [eval] 4 <= gsize
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@105@01))))))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@105@01)))))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@105@01))))))))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@105@01)))))))))))
  $Snap.unit))
; [eval] gsize % 2 == 0
; [eval] gsize % 2
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@105@01)))))))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@105@01))))))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@105@01)))))))))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@105@01))))))))))))
  $Snap.unit))
; [eval] this.src == old(this.src)
(set-option :timeout 0)
(push) ; 7
(set-option :timeout 10)
(assert (not (< $Perm.No $k@106@01)))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
; [eval] old(this.src)
(set-option :timeout 0)
(push) ; 7
(set-option :timeout 10)
(assert (not (< $Perm.No $k@96@01)))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(assert (Seq_equal
  ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@105@01)))))))
  ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@95@01))))))))))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@105@01))))))))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@105@01)))))))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@105@01))))))))))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@105@01)))))))))))))
  $Snap.unit))
; [eval] this.dst == old(this.dst)
(set-option :timeout 0)
(push) ; 7
(set-option :timeout 10)
(assert (not (< $Perm.No $k@107@01)))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
; [eval] old(this.dst)
(set-option :timeout 0)
(push) ; 7
(set-option :timeout 10)
(assert (not (< $Perm.No $k@97@01)))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(assert (Seq_equal
  ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@105@01)))))))))
  ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@95@01))))))))))))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@105@01)))))))))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@105@01))))))))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@105@01)))))))))))))))))
(declare-const i@108@01 Int)
(set-option :timeout 0)
(push) ; 7
; [eval] (i in [0..gsize))
; [eval] [0..gsize)
(assert (Seq_contains (Seq_range 0 gsize@85@01) i@108@01))
; [eval] this.src[i]
(push) ; 8
(set-option :timeout 10)
(assert (not (< $Perm.No $k@106@01)))
(check-sat)
; unsat
(pop) ; 8
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 8
(assert (not (>= i@108@01 0)))
(check-sat)
; unsat
(pop) ; 8
; 0.00s
; (get-info :all-statistics)
(push) ; 8
(assert (not (<
  i@108@01
  (Seq_length
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@105@01)))))))))))
(check-sat)
; unsat
(pop) ; 8
; 0.00s
; (get-info :all-statistics)
(push) ; 8
(assert (not (not (= gsize@85@01 0))))
(check-sat)
; unsat
(pop) ; 8
; 0.00s
; (get-info :all-statistics)
(pop) ; 7
(declare-fun inv@109@01 ($Ref) Int)
(declare-fun img@110@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
(push) ; 7
(assert (not (forall ((i@108@01 Int)) (!
  (=>
    (Seq_contains (Seq_range 0 gsize@85@01) i@108@01)
    (or
      (= (/ (to_real 1) (to_real gsize@85@01)) $Perm.No)
      (< $Perm.No (/ (to_real 1) (to_real gsize@85@01)))))
  
  :qid |quant-u-17936|))))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
; Check receiver injectivity
(push) ; 7
(assert (not (forall ((i1@108@01 Int) (i2@108@01 Int)) (!
  (=>
    (and
      (and
        (Seq_contains (Seq_range 0 gsize@85@01) i1@108@01)
        (< $Perm.No (/ (to_real 1) (to_real gsize@85@01))))
      (and
        (Seq_contains (Seq_range 0 gsize@85@01) i2@108@01)
        (< $Perm.No (/ (to_real 1) (to_real gsize@85@01))))
      (=
        (Seq_index
          ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@105@01)))))))
          i1@108@01)
        (Seq_index
          ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@105@01)))))))
          i2@108@01)))
    (= i1@108@01 i2@108@01))
  
  :qid |Integer_value-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((i@108@01 Int)) (!
  (=>
    (and
      (Seq_contains (Seq_range 0 gsize@85@01) i@108@01)
      (< $Perm.No (/ (to_real 1) (to_real gsize@85@01))))
    (and
      (=
        (inv@109@01 (Seq_index
          ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@105@01)))))))
          i@108@01))
        i@108@01)
      (img@110@01 (Seq_index
        ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@105@01)))))))
        i@108@01))))
  :pattern ((Seq_index
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@105@01)))))))
    i@108@01))
  :qid |quant-u-17937|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@110@01 r)
      (and
        (Seq_contains (Seq_range 0 gsize@85@01) (inv@109@01 r))
        (< $Perm.No (/ (to_real 1) (to_real gsize@85@01)))))
    (=
      (Seq_index
        ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@105@01)))))))
        (inv@109@01 r))
      r))
  :pattern ((inv@109@01 r))
  :qid |Integer_value-fctOfInv|)))
; Permissions are non-negative
(assert (forall ((i@108@01 Int)) (!
  (<= $Perm.No (/ (to_real 1) (to_real gsize@85@01)))
  :pattern ((Seq_index
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@105@01)))))))
    i@108@01))
  :qid |Integer_value-permAtLeastZero|)))
; Field permissions are at most one
(assert (forall ((i@108@01 Int)) (!
  (<= (/ (to_real 1) (to_real gsize@85@01)) $Perm.Write)
  :pattern ((Seq_index
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@105@01)))))))
    i@108@01))
  :qid |Integer_value-permAtMostOne|)))
; Permission implies non-null receiver
(assert (forall ((i@108@01 Int)) (!
  (=>
    (and
      (Seq_contains (Seq_range 0 gsize@85@01) i@108@01)
      (< $Perm.No (/ (to_real 1) (to_real gsize@85@01))))
    (not
      (=
        (Seq_index
          ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@105@01)))))))
          i@108@01)
        $Ref.null)))
  :pattern ((Seq_index
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@105@01)))))))
    i@108@01))
  :qid |Integer_value-permImpliesNonNull|)))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@105@01))))))))))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@105@01)))))))))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@105@01))))))))))))))))))
; [eval] sys__result == 1
(push) ; 7
(set-option :timeout 10)
(assert (not (not (= sys__result@94@01 1))))
(check-sat)
; unknown
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 7
(set-option :timeout 10)
(assert (not (= sys__result@94@01 1)))
(check-sat)
; unknown
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
; [then-branch: 56 | sys__result@94@01 == 1 | live]
; [else-branch: 56 | sys__result@94@01 != 1 | live]
(set-option :timeout 0)
(push) ; 7
; [then-branch: 56 | sys__result@94@01 == 1]
(assert (= sys__result@94@01 1))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@105@01)))))))))))))))
  ($Snap.combine
    ($Snap.first ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@105@01))))))))))))))))
    ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@105@01)))))))))))))))))))
; [eval] tid == 0
(push) ; 8
(set-option :timeout 10)
(assert (not (not (= tid@86@01 0))))
(check-sat)
; unknown
(pop) ; 8
; 0.00s
; (get-info :all-statistics)
; [then-branch: 57 | tid@86@01 == 0 | live]
; [else-branch: 57 | tid@86@01 != 0 | dead]
(set-option :timeout 0)
(push) ; 8
; [then-branch: 57 | tid@86@01 == 0]
; [eval] this.dst[0]
(push) ; 9
(set-option :timeout 10)
(assert (not (< $Perm.No $k@107@01)))
(check-sat)
; unsat
(pop) ; 9
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 9
(assert (not (<
  0
  (Seq_length
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@105@01)))))))))))))
(check-sat)
; unsat
(pop) ; 9
; 0.00s
; (get-info :all-statistics)
(declare-const sm@111@01 $FVF<Integer_value>)
; Definitional axioms for singleton-SM's value
(assert (=
  ($FVF.lookup_Integer_value (as sm@111@01  $FVF<Integer_value>) (Seq_index
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@105@01)))))))))
    0))
  ($SortWrappers.$SnapToInt ($Snap.first ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@105@01)))))))))))))))))))
(assert (<=
  $Perm.No
  (ite
    (=
      (Seq_index
        ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@105@01)))))))))
        0)
      (Seq_index
        ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@105@01)))))))))
        0))
    $Perm.Write
    $Perm.No)))
(assert (<=
  (ite
    (=
      (Seq_index
        ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@105@01)))))))))
        0)
      (Seq_index
        ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@105@01)))))))))
        0))
    $Perm.Write
    $Perm.No)
  $Perm.Write))
(assert (=>
  (=
    (Seq_index
      ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@105@01)))))))))
      0)
    (Seq_index
      ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@105@01)))))))))
      0))
  (not
    (=
      (Seq_index
        ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@105@01)))))))))
        0)
      $Ref.null))))
; [eval] tid == 0
(push) ; 9
(set-option :timeout 10)
(assert (not (not (= tid@86@01 0))))
(check-sat)
; unknown
(pop) ; 9
; 0.00s
; (get-info :all-statistics)
; [then-branch: 58 | tid@86@01 == 0 | live]
; [else-branch: 58 | tid@86@01 != 0 | dead]
(set-option :timeout 0)
(push) ; 9
; [then-branch: 58 | tid@86@01 == 0]
; [eval] this.dst[1]
(push) ; 10
(set-option :timeout 10)
(assert (not (< $Perm.No $k@107@01)))
(check-sat)
; unsat
(pop) ; 10
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 10
(assert (not (<
  1
  (Seq_length
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@105@01)))))))))))))
(check-sat)
; unsat
(pop) ; 10
; 0.00s
; (get-info :all-statistics)
(declare-const sm@112@01 $FVF<Integer_value>)
; Definitional axioms for singleton-SM's value
(assert (=
  ($FVF.lookup_Integer_value (as sm@112@01  $FVF<Integer_value>) (Seq_index
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@105@01)))))))))
    1))
  ($SortWrappers.$SnapToInt ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@105@01)))))))))))))))))))
(push) ; 10
(set-option :timeout 10)
(assert (not (and
  (and
    (=
      (Seq_index
        ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@105@01)))))))))
        1)
      (Seq_index
        ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@105@01)))))))))
        1))
    (=
      (Seq_index
        ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@105@01)))))))))
        0)
      (Seq_index
        ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@105@01)))))))))
        0)))
  (=
    (Seq_index
      ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@105@01)))))))))
      1)
    (Seq_index
      ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@105@01)))))))))
      0)))))
(check-sat)
; unknown
(pop) ; 10
; 0.00s
; (get-info :all-statistics)
(assert (<=
  $Perm.No
  (ite
    (=
      (Seq_index
        ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@105@01)))))))))
        1)
      (Seq_index
        ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@105@01)))))))))
        1))
    $Perm.Write
    $Perm.No)))
(assert (<=
  (ite
    (=
      (Seq_index
        ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@105@01)))))))))
        1)
      (Seq_index
        ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@105@01)))))))))
        1))
    $Perm.Write
    $Perm.No)
  $Perm.Write))
(assert (=>
  (=
    (Seq_index
      ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@105@01)))))))))
      1)
    (Seq_index
      ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@105@01)))))))))
      1))
  (not
    (=
      (Seq_index
        ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@105@01)))))))))
        1)
      $Ref.null))))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@105@01)))))))))))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@105@01))))))))))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@105@01)))))))))))))))))))
; [eval] sys__result == 0
(set-option :timeout 0)
(push) ; 10
(set-option :timeout 10)
(assert (not (not (= sys__result@94@01 0))))
(check-sat)
; unsat
(pop) ; 10
; 0.00s
; (get-info :all-statistics)
; [then-branch: 59 | sys__result@94@01 == 0 | dead]
; [else-branch: 59 | sys__result@94@01 != 0 | live]
(set-option :timeout 0)
(push) ; 10
; [else-branch: 59 | sys__result@94@01 != 0]
(assert (not (= sys__result@94@01 0)))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@105@01))))))))))))))))
  $Snap.unit))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@105@01))))))))))))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@105@01)))))))))))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@105@01))))))))))))))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@105@01)))))))))))))))))
  $Snap.unit))
; [eval] sys__result == this_barrier
(assert (= sys__result@94@01 this_barrier@89@01))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@105@01)))))))))))))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@105@01))))))))))))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@105@01)))))))))))))))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@105@01))))))))))))))))))
  $Snap.unit))
; [eval] this_barrier == 1 ==> tid == 0 ==> (forall i: Int :: { this.src[i] } 0 <= i && i < half ==> this.dst[0].Integer_value >= this.src[i].Integer_value)
; [eval] this_barrier == 1
(push) ; 11
; [then-branch: 60 | this_barrier@89@01 == 1 | dead]
; [else-branch: 60 | this_barrier@89@01 != 1 | live]
(push) ; 12
; [else-branch: 60 | this_barrier@89@01 != 1]
(pop) ; 12
(pop) ; 11
; Joined path conditions
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@105@01))))))))))))))))))
  $Snap.unit))
; [eval] this_barrier == 1 ==> tid == 0 ==> (forall i: Int :: { this.src[i] } half <= i && i < gsize ==> this.dst[1].Integer_value >= this.src[i].Integer_value)
; [eval] this_barrier == 1
(push) ; 11
; [then-branch: 61 | this_barrier@89@01 == 1 | dead]
; [else-branch: 61 | this_barrier@89@01 != 1 | live]
(push) ; 12
; [else-branch: 61 | this_barrier@89@01 != 1]
(pop) ; 12
(pop) ; 11
; Joined path conditions
(pop) ; 10
(pop) ; 9
(pop) ; 8
(pop) ; 7
(push) ; 7
; [else-branch: 56 | sys__result@94@01 != 1]
(assert (not (= sys__result@94@01 1)))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@105@01)))))))))))))))
  $Snap.unit))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@105@01)))))))))))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@105@01))))))))))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@105@01)))))))))))))))))))
; [eval] sys__result == 0
(push) ; 8
(set-option :timeout 10)
(assert (not (not (= sys__result@94@01 0))))
(check-sat)
; unknown
(pop) ; 8
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 8
(set-option :timeout 10)
(assert (not (= sys__result@94@01 0)))
(check-sat)
; unknown
(pop) ; 8
; 0.00s
; (get-info :all-statistics)
; [then-branch: 62 | sys__result@94@01 == 0 | live]
; [else-branch: 62 | sys__result@94@01 != 0 | live]
(set-option :timeout 0)
(push) ; 8
; [then-branch: 62 | sys__result@94@01 == 0]
(assert (= sys__result@94@01 0))
; [eval] this.dst[tid]
(push) ; 9
(set-option :timeout 10)
(assert (not (< $Perm.No $k@107@01)))
(check-sat)
; unsat
(pop) ; 9
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 9
(assert (not (>= tid@86@01 0)))
(check-sat)
; unsat
(pop) ; 9
; 0.00s
; (get-info :all-statistics)
(push) ; 9
(assert (not (<
  tid@86@01
  (Seq_length
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@105@01)))))))))))))
(check-sat)
; unsat
(pop) ; 9
; 0.00s
; (get-info :all-statistics)
(declare-const sm@113@01 $FVF<Integer_value>)
; Definitional axioms for singleton-SM's value
(assert (=
  ($FVF.lookup_Integer_value (as sm@113@01  $FVF<Integer_value>) (Seq_index
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@105@01)))))))))
    tid@86@01))
  ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@105@01)))))))))))))))))))
(assert (<=
  $Perm.No
  (ite
    (=
      (Seq_index
        ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@105@01)))))))))
        tid@86@01)
      (Seq_index
        ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@105@01)))))))))
        tid@86@01))
    $Perm.Write
    $Perm.No)))
(assert (<=
  (ite
    (=
      (Seq_index
        ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@105@01)))))))))
        tid@86@01)
      (Seq_index
        ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@105@01)))))))))
        tid@86@01))
    $Perm.Write
    $Perm.No)
  $Perm.Write))
(assert (=>
  (=
    (Seq_index
      ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@105@01)))))))))
      tid@86@01)
    (Seq_index
      ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@105@01)))))))))
      tid@86@01))
  (not
    (=
      (Seq_index
        ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@105@01)))))))))
        tid@86@01)
      $Ref.null))))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@105@01))))))))))))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@105@01)))))))))))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@105@01))))))))))))))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@105@01)))))))))))))))))
  $Snap.unit))
; [eval] sys__result == this_barrier
(assert (= sys__result@94@01 this_barrier@89@01))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@105@01)))))))))))))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@105@01))))))))))))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@105@01)))))))))))))))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@105@01))))))))))))))))))
  $Snap.unit))
; [eval] this_barrier == 1 ==> tid == 0 ==> (forall i: Int :: { this.src[i] } 0 <= i && i < half ==> this.dst[0].Integer_value >= this.src[i].Integer_value)
; [eval] this_barrier == 1
(push) ; 9
; [then-branch: 63 | this_barrier@89@01 == 1 | dead]
; [else-branch: 63 | this_barrier@89@01 != 1 | live]
(push) ; 10
; [else-branch: 63 | this_barrier@89@01 != 1]
(pop) ; 10
(pop) ; 9
; Joined path conditions
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@105@01))))))))))))))))))
  $Snap.unit))
; [eval] this_barrier == 1 ==> tid == 0 ==> (forall i: Int :: { this.src[i] } half <= i && i < gsize ==> this.dst[1].Integer_value >= this.src[i].Integer_value)
; [eval] this_barrier == 1
(push) ; 9
; [then-branch: 64 | this_barrier@89@01 == 1 | dead]
; [else-branch: 64 | this_barrier@89@01 != 1 | live]
(push) ; 10
; [else-branch: 64 | this_barrier@89@01 != 1]
(pop) ; 10
(pop) ; 9
; Joined path conditions
(pop) ; 8
(push) ; 8
; [else-branch: 62 | sys__result@94@01 != 0]
(assert (not (= sys__result@94@01 0)))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@105@01))))))))))))))))
  $Snap.unit))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@105@01))))))))))))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@105@01)))))))))))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@105@01))))))))))))))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@105@01)))))))))))))))))
  $Snap.unit))
; [eval] sys__result == this_barrier
(assert (= sys__result@94@01 this_barrier@89@01))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@105@01)))))))))))))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@105@01))))))))))))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@105@01)))))))))))))))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@105@01))))))))))))))))))
  $Snap.unit))
; [eval] this_barrier == 1 ==> tid == 0 ==> (forall i: Int :: { this.src[i] } 0 <= i && i < half ==> this.dst[0].Integer_value >= this.src[i].Integer_value)
; [eval] this_barrier == 1
(push) ; 9
; [then-branch: 65 | this_barrier@89@01 == 1 | dead]
; [else-branch: 65 | this_barrier@89@01 != 1 | live]
(push) ; 10
; [else-branch: 65 | this_barrier@89@01 != 1]
(pop) ; 10
(pop) ; 9
; Joined path conditions
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@105@01))))))))))))))))))
  $Snap.unit))
; [eval] this_barrier == 1 ==> tid == 0 ==> (forall i: Int :: { this.src[i] } half <= i && i < gsize ==> this.dst[1].Integer_value >= this.src[i].Integer_value)
; [eval] this_barrier == 1
(push) ; 9
; [then-branch: 66 | this_barrier@89@01 == 1 | dead]
; [else-branch: 66 | this_barrier@89@01 != 1 | live]
(push) ; 10
; [else-branch: 66 | this_barrier@89@01 != 1]
(pop) ; 10
(pop) ; 9
; Joined path conditions
(pop) ; 8
(pop) ; 7
(pop) ; 6
(push) ; 6
; [exec]
; inhale false
(pop) ; 6
(pop) ; 5
(pop) ; 4
(pop) ; 3
(push) ; 3
; [else-branch: 50 | tid@86@01 != 0]
(assert (not (= tid@86@01 0)))
(assert (=
  ($Snap.first ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@95@01))))))))))))))))
  $Snap.unit))
; [eval] tid == 0
; [then-branch: 67 | tid@86@01 == 0 | dead]
; [else-branch: 67 | tid@86@01 != 0 | live]
(push) ; 4
; [else-branch: 67 | tid@86@01 != 0]
(assert (=
  ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@95@01))))))))))))))))
  $Snap.unit))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@95@01)))))))))))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@95@01))))))))))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@95@01)))))))))))))))))))
; [eval] last_barrier == 0
(push) ; 5
(set-option :timeout 10)
(assert (not (not (= last_barrier@90@01 0))))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
; [then-branch: 68 | last_barrier@90@01 == 0 | dead]
; [else-branch: 68 | last_barrier@90@01 != 0 | live]
(set-option :timeout 0)
(push) ; 5
; [else-branch: 68 | last_barrier@90@01 != 0]
(assert (not (= last_barrier@90@01 0)))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@95@01))))))))))))))))
  $Snap.unit))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@95@01))))))))))))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@95@01)))))))))))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@95@01))))))))))))))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@95@01)))))))))))))))))
  $Snap.unit))
; [eval] this_barrier == 1 ==> half + half == gsize
; [eval] this_barrier == 1
(push) ; 6
(push) ; 7
(set-option :timeout 10)
(assert (not (not (= this_barrier@89@01 1))))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
; [then-branch: 69 | this_barrier@89@01 == 1 | dead]
; [else-branch: 69 | this_barrier@89@01 != 1 | live]
(set-option :timeout 0)
(push) ; 7
; [else-branch: 69 | this_barrier@89@01 != 1]
(assert (not (= this_barrier@89@01 1)))
(pop) ; 7
(pop) ; 6
; Joined path conditions
(assert (not (= this_barrier@89@01 1)))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@95@01)))))))))))))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@95@01))))))))))))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@95@01)))))))))))))))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@95@01))))))))))))))))))
  $Snap.unit))
; [eval] this_barrier == 1 ==> tid == 0 ==> (forall i: Int :: { this.src[i] } 0 <= i && i < half ==> this.dst[0].Integer_value >= this.src[i].Integer_value)
; [eval] this_barrier == 1
(push) ; 6
; [then-branch: 70 | this_barrier@89@01 == 1 | dead]
; [else-branch: 70 | this_barrier@89@01 != 1 | live]
(push) ; 7
; [else-branch: 70 | this_barrier@89@01 != 1]
(pop) ; 7
(pop) ; 6
; Joined path conditions
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@95@01))))))))))))))))))
  $Snap.unit))
; [eval] this_barrier == 1 ==> tid == 1 ==> (forall i: Int :: { this.src[i] } half <= i && i < gsize ==> this.dst[1].Integer_value >= this.src[i].Integer_value)
; [eval] this_barrier == 1
(push) ; 6
; [then-branch: 71 | this_barrier@89@01 == 1 | dead]
; [else-branch: 71 | this_barrier@89@01 != 1 | live]
(push) ; 7
; [else-branch: 71 | this_barrier@89@01 != 1]
(pop) ; 7
(pop) ; 6
; Joined path conditions
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
(set-option :timeout 0)
(push) ; 6
(declare-const $t@114@01 $Snap)
(assert (= $t@114@01 ($Snap.combine ($Snap.first $t@114@01) ($Snap.second $t@114@01))))
(assert (= ($Snap.first $t@114@01) $Snap.unit))
; [eval] 0 <= tid
(assert (=
  ($Snap.second $t@114@01)
  ($Snap.combine
    ($Snap.first ($Snap.second $t@114@01))
    ($Snap.second ($Snap.second $t@114@01)))))
(assert (= ($Snap.first ($Snap.second $t@114@01)) $Snap.unit))
; [eval] tid < tcount
(assert (=
  ($Snap.second ($Snap.second $t@114@01))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second $t@114@01)))
    ($Snap.second ($Snap.second ($Snap.second $t@114@01))))))
(assert (= ($Snap.first ($Snap.second ($Snap.second $t@114@01))) $Snap.unit))
; [eval] tid == lid
(assert (=
  ($Snap.second ($Snap.second ($Snap.second $t@114@01)))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@114@01))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@114@01)))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@114@01))))
  $Snap.unit))
; [eval] tcount == gsize
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@114@01))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@114@01)))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@114@01))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@114@01)))))
  $Snap.unit))
; [eval] gid == 0
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@114@01)))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@114@01))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@114@01)))))))))
(declare-const $k@115@01 $Perm)
(assert ($Perm.isReadVar $k@115@01))
(assert (<= $Perm.No $k@115@01))
(assert (<= $k@115@01 $Perm.Write))
(assert (=> (< $Perm.No $k@115@01) (not (= this@83@01 $Ref.null))))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@114@01))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@114@01)))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@114@01))))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@114@01)))))))
  $Snap.unit))
; [eval] |this.src| == gsize
; [eval] |this.src|
(push) ; 7
(set-option :timeout 10)
(assert (not (< $Perm.No $k@115@01)))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(assert (=
  (Seq_length
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@114@01))))))))
  gsize@85@01))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@114@01)))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@114@01))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@114@01)))))))))))
(declare-const $k@116@01 $Perm)
(assert ($Perm.isReadVar $k@116@01))
(assert (<= $Perm.No $k@116@01))
(assert (<= $k@116@01 $Perm.Write))
(assert (=> (< $Perm.No $k@116@01) (not (= this@83@01 $Ref.null))))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@114@01))))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@114@01)))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@114@01))))))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@114@01)))))))))
  $Snap.unit))
; [eval] |this.dst| == gsize
; [eval] |this.dst|
(set-option :timeout 0)
(push) ; 7
(set-option :timeout 10)
(assert (not (< $Perm.No $k@116@01)))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(assert (=
  (Seq_length
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@114@01))))))))))
  gsize@85@01))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@114@01)))))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@114@01))))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@114@01)))))))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@114@01))))))))))
  $Snap.unit))
; [eval] 4 <= gsize
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@114@01))))))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@114@01)))))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@114@01))))))))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@114@01)))))))))))
  $Snap.unit))
; [eval] gsize % 2 == 0
; [eval] gsize % 2
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@114@01)))))))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@114@01))))))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@114@01)))))))))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@114@01))))))))))))
  $Snap.unit))
; [eval] this.src == old(this.src)
(set-option :timeout 0)
(push) ; 7
(set-option :timeout 10)
(assert (not (< $Perm.No $k@115@01)))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
; [eval] old(this.src)
(set-option :timeout 0)
(push) ; 7
(set-option :timeout 10)
(assert (not (< $Perm.No $k@96@01)))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(assert (Seq_equal
  ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@114@01)))))))
  ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@95@01))))))))))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@114@01))))))))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@114@01)))))))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@114@01))))))))))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@114@01)))))))))))))
  $Snap.unit))
; [eval] this.dst == old(this.dst)
(set-option :timeout 0)
(push) ; 7
(set-option :timeout 10)
(assert (not (< $Perm.No $k@116@01)))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
; [eval] old(this.dst)
(set-option :timeout 0)
(push) ; 7
(set-option :timeout 10)
(assert (not (< $Perm.No $k@97@01)))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(assert (Seq_equal
  ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@114@01)))))))))
  ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@95@01))))))))))))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@114@01)))))))))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@114@01))))))))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@114@01)))))))))))))))))
(declare-const i@117@01 Int)
(set-option :timeout 0)
(push) ; 7
; [eval] (i in [0..gsize))
; [eval] [0..gsize)
(assert (Seq_contains (Seq_range 0 gsize@85@01) i@117@01))
; [eval] this.src[i]
(push) ; 8
(set-option :timeout 10)
(assert (not (< $Perm.No $k@115@01)))
(check-sat)
; unsat
(pop) ; 8
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 8
(assert (not (>= i@117@01 0)))
(check-sat)
; unsat
(pop) ; 8
; 0.00s
; (get-info :all-statistics)
(push) ; 8
(assert (not (<
  i@117@01
  (Seq_length
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@114@01)))))))))))
(check-sat)
; unsat
(pop) ; 8
; 0.00s
; (get-info :all-statistics)
(push) ; 8
(assert (not (not (= gsize@85@01 0))))
(check-sat)
; unsat
(pop) ; 8
; 0.00s
; (get-info :all-statistics)
(pop) ; 7
(declare-fun inv@118@01 ($Ref) Int)
(declare-fun img@119@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
(push) ; 7
(assert (not (forall ((i@117@01 Int)) (!
  (=>
    (Seq_contains (Seq_range 0 gsize@85@01) i@117@01)
    (or
      (= (/ (to_real 1) (to_real gsize@85@01)) $Perm.No)
      (< $Perm.No (/ (to_real 1) (to_real gsize@85@01)))))
  
  :qid |quant-u-17938|))))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
; Check receiver injectivity
(push) ; 7
(assert (not (forall ((i1@117@01 Int) (i2@117@01 Int)) (!
  (=>
    (and
      (and
        (Seq_contains (Seq_range 0 gsize@85@01) i1@117@01)
        (< $Perm.No (/ (to_real 1) (to_real gsize@85@01))))
      (and
        (Seq_contains (Seq_range 0 gsize@85@01) i2@117@01)
        (< $Perm.No (/ (to_real 1) (to_real gsize@85@01))))
      (=
        (Seq_index
          ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@114@01)))))))
          i1@117@01)
        (Seq_index
          ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@114@01)))))))
          i2@117@01)))
    (= i1@117@01 i2@117@01))
  
  :qid |Integer_value-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((i@117@01 Int)) (!
  (=>
    (and
      (Seq_contains (Seq_range 0 gsize@85@01) i@117@01)
      (< $Perm.No (/ (to_real 1) (to_real gsize@85@01))))
    (and
      (=
        (inv@118@01 (Seq_index
          ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@114@01)))))))
          i@117@01))
        i@117@01)
      (img@119@01 (Seq_index
        ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@114@01)))))))
        i@117@01))))
  :pattern ((Seq_index
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@114@01)))))))
    i@117@01))
  :qid |quant-u-17939|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@119@01 r)
      (and
        (Seq_contains (Seq_range 0 gsize@85@01) (inv@118@01 r))
        (< $Perm.No (/ (to_real 1) (to_real gsize@85@01)))))
    (=
      (Seq_index
        ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@114@01)))))))
        (inv@118@01 r))
      r))
  :pattern ((inv@118@01 r))
  :qid |Integer_value-fctOfInv|)))
; Permissions are non-negative
(assert (forall ((i@117@01 Int)) (!
  (<= $Perm.No (/ (to_real 1) (to_real gsize@85@01)))
  :pattern ((Seq_index
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@114@01)))))))
    i@117@01))
  :qid |Integer_value-permAtLeastZero|)))
; Field permissions are at most one
(assert (forall ((i@117@01 Int)) (!
  (<= (/ (to_real 1) (to_real gsize@85@01)) $Perm.Write)
  :pattern ((Seq_index
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@114@01)))))))
    i@117@01))
  :qid |Integer_value-permAtMostOne|)))
; Permission implies non-null receiver
(assert (forall ((i@117@01 Int)) (!
  (=>
    (and
      (Seq_contains (Seq_range 0 gsize@85@01) i@117@01)
      (< $Perm.No (/ (to_real 1) (to_real gsize@85@01))))
    (not
      (=
        (Seq_index
          ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@114@01)))))))
          i@117@01)
        $Ref.null)))
  :pattern ((Seq_index
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@114@01)))))))
    i@117@01))
  :qid |Integer_value-permImpliesNonNull|)))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@114@01))))))))))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@114@01)))))))))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@114@01))))))))))))))))))
; [eval] sys__result == 1
(push) ; 7
(set-option :timeout 10)
(assert (not (not (= sys__result@94@01 1))))
(check-sat)
; unknown
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 7
(set-option :timeout 10)
(assert (not (= sys__result@94@01 1)))
(check-sat)
; unknown
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
; [then-branch: 72 | sys__result@94@01 == 1 | live]
; [else-branch: 72 | sys__result@94@01 != 1 | live]
(set-option :timeout 0)
(push) ; 7
; [then-branch: 72 | sys__result@94@01 == 1]
(assert (= sys__result@94@01 1))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@114@01)))))))))))))))
  ($Snap.combine
    ($Snap.first ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@114@01))))))))))))))))
    ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@114@01)))))))))))))))))))
; [eval] tid == 0
; [then-branch: 73 | tid@86@01 == 0 | dead]
; [else-branch: 73 | tid@86@01 != 0 | live]
(push) ; 8
; [else-branch: 73 | tid@86@01 != 0]
(assert (=
  ($Snap.first ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@114@01))))))))))))))))
  $Snap.unit))
; [eval] tid == 0
; [then-branch: 74 | tid@86@01 == 0 | dead]
; [else-branch: 74 | tid@86@01 != 0 | live]
(push) ; 9
; [else-branch: 74 | tid@86@01 != 0]
(assert (=
  ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@114@01))))))))))))))))
  $Snap.unit))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@114@01)))))))))))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@114@01))))))))))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@114@01)))))))))))))))))))
; [eval] sys__result == 0
(push) ; 10
(set-option :timeout 10)
(assert (not (not (= sys__result@94@01 0))))
(check-sat)
; unsat
(pop) ; 10
; 0.00s
; (get-info :all-statistics)
; [then-branch: 75 | sys__result@94@01 == 0 | dead]
; [else-branch: 75 | sys__result@94@01 != 0 | live]
(set-option :timeout 0)
(push) ; 10
; [else-branch: 75 | sys__result@94@01 != 0]
(assert (not (= sys__result@94@01 0)))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@114@01))))))))))))))))
  $Snap.unit))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@114@01))))))))))))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@114@01)))))))))))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@114@01))))))))))))))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@114@01)))))))))))))))))
  $Snap.unit))
; [eval] sys__result == this_barrier
(assert (= sys__result@94@01 this_barrier@89@01))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@114@01)))))))))))))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@114@01))))))))))))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@114@01)))))))))))))))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@114@01))))))))))))))))))
  $Snap.unit))
; [eval] this_barrier == 1 ==> tid == 0 ==> (forall i: Int :: { this.src[i] } 0 <= i && i < half ==> this.dst[0].Integer_value >= this.src[i].Integer_value)
; [eval] this_barrier == 1
(push) ; 11
; [then-branch: 76 | this_barrier@89@01 == 1 | dead]
; [else-branch: 76 | this_barrier@89@01 != 1 | live]
(push) ; 12
; [else-branch: 76 | this_barrier@89@01 != 1]
(pop) ; 12
(pop) ; 11
; Joined path conditions
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@114@01))))))))))))))))))
  $Snap.unit))
; [eval] this_barrier == 1 ==> tid == 0 ==> (forall i: Int :: { this.src[i] } half <= i && i < gsize ==> this.dst[1].Integer_value >= this.src[i].Integer_value)
; [eval] this_barrier == 1
(push) ; 11
; [then-branch: 77 | this_barrier@89@01 == 1 | dead]
; [else-branch: 77 | this_barrier@89@01 != 1 | live]
(push) ; 12
; [else-branch: 77 | this_barrier@89@01 != 1]
(pop) ; 12
(pop) ; 11
; Joined path conditions
(pop) ; 10
(pop) ; 9
(pop) ; 8
(pop) ; 7
(push) ; 7
; [else-branch: 72 | sys__result@94@01 != 1]
(assert (not (= sys__result@94@01 1)))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@114@01)))))))))))))))
  $Snap.unit))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@114@01)))))))))))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@114@01))))))))))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@114@01)))))))))))))))))))
; [eval] sys__result == 0
(push) ; 8
(set-option :timeout 10)
(assert (not (not (= sys__result@94@01 0))))
(check-sat)
; unknown
(pop) ; 8
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 8
(set-option :timeout 10)
(assert (not (= sys__result@94@01 0)))
(check-sat)
; unknown
(pop) ; 8
; 0.00s
; (get-info :all-statistics)
; [then-branch: 78 | sys__result@94@01 == 0 | live]
; [else-branch: 78 | sys__result@94@01 != 0 | live]
(set-option :timeout 0)
(push) ; 8
; [then-branch: 78 | sys__result@94@01 == 0]
(assert (= sys__result@94@01 0))
; [eval] this.dst[tid]
(push) ; 9
(set-option :timeout 10)
(assert (not (< $Perm.No $k@116@01)))
(check-sat)
; unsat
(pop) ; 9
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 9
(assert (not (>= tid@86@01 0)))
(check-sat)
; unsat
(pop) ; 9
; 0.00s
; (get-info :all-statistics)
(push) ; 9
(assert (not (<
  tid@86@01
  (Seq_length
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@114@01)))))))))))))
(check-sat)
; unsat
(pop) ; 9
; 0.00s
; (get-info :all-statistics)
(declare-const sm@120@01 $FVF<Integer_value>)
; Definitional axioms for singleton-SM's value
(assert (=
  ($FVF.lookup_Integer_value (as sm@120@01  $FVF<Integer_value>) (Seq_index
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@114@01)))))))))
    tid@86@01))
  ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@114@01)))))))))))))))))))
(assert (<=
  $Perm.No
  (ite
    (=
      (Seq_index
        ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@114@01)))))))))
        tid@86@01)
      (Seq_index
        ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@114@01)))))))))
        tid@86@01))
    $Perm.Write
    $Perm.No)))
(assert (<=
  (ite
    (=
      (Seq_index
        ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@114@01)))))))))
        tid@86@01)
      (Seq_index
        ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@114@01)))))))))
        tid@86@01))
    $Perm.Write
    $Perm.No)
  $Perm.Write))
(assert (=>
  (=
    (Seq_index
      ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@114@01)))))))))
      tid@86@01)
    (Seq_index
      ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@114@01)))))))))
      tid@86@01))
  (not
    (=
      (Seq_index
        ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@114@01)))))))))
        tid@86@01)
      $Ref.null))))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@114@01))))))))))))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@114@01)))))))))))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@114@01))))))))))))))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@114@01)))))))))))))))))
  $Snap.unit))
; [eval] sys__result == this_barrier
(assert (= sys__result@94@01 this_barrier@89@01))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@114@01)))))))))))))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@114@01))))))))))))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@114@01)))))))))))))))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@114@01))))))))))))))))))
  $Snap.unit))
; [eval] this_barrier == 1 ==> tid == 0 ==> (forall i: Int :: { this.src[i] } 0 <= i && i < half ==> this.dst[0].Integer_value >= this.src[i].Integer_value)
; [eval] this_barrier == 1
(push) ; 9
; [then-branch: 79 | this_barrier@89@01 == 1 | dead]
; [else-branch: 79 | this_barrier@89@01 != 1 | live]
(push) ; 10
; [else-branch: 79 | this_barrier@89@01 != 1]
(pop) ; 10
(pop) ; 9
; Joined path conditions
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@114@01))))))))))))))))))
  $Snap.unit))
; [eval] this_barrier == 1 ==> tid == 0 ==> (forall i: Int :: { this.src[i] } half <= i && i < gsize ==> this.dst[1].Integer_value >= this.src[i].Integer_value)
; [eval] this_barrier == 1
(push) ; 9
; [then-branch: 80 | this_barrier@89@01 == 1 | dead]
; [else-branch: 80 | this_barrier@89@01 != 1 | live]
(push) ; 10
; [else-branch: 80 | this_barrier@89@01 != 1]
(pop) ; 10
(pop) ; 9
; Joined path conditions
(pop) ; 8
(push) ; 8
; [else-branch: 78 | sys__result@94@01 != 0]
(assert (not (= sys__result@94@01 0)))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@114@01))))))))))))))))
  $Snap.unit))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@114@01))))))))))))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@114@01)))))))))))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@114@01))))))))))))))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@114@01)))))))))))))))))
  $Snap.unit))
; [eval] sys__result == this_barrier
(assert (= sys__result@94@01 this_barrier@89@01))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@114@01)))))))))))))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@114@01))))))))))))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@114@01)))))))))))))))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@114@01))))))))))))))))))
  $Snap.unit))
; [eval] this_barrier == 1 ==> tid == 0 ==> (forall i: Int :: { this.src[i] } 0 <= i && i < half ==> this.dst[0].Integer_value >= this.src[i].Integer_value)
; [eval] this_barrier == 1
(push) ; 9
; [then-branch: 81 | this_barrier@89@01 == 1 | dead]
; [else-branch: 81 | this_barrier@89@01 != 1 | live]
(push) ; 10
; [else-branch: 81 | this_barrier@89@01 != 1]
(pop) ; 10
(pop) ; 9
; Joined path conditions
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@114@01))))))))))))))))))
  $Snap.unit))
; [eval] this_barrier == 1 ==> tid == 0 ==> (forall i: Int :: { this.src[i] } half <= i && i < gsize ==> this.dst[1].Integer_value >= this.src[i].Integer_value)
; [eval] this_barrier == 1
(push) ; 9
; [then-branch: 82 | this_barrier@89@01 == 1 | dead]
; [else-branch: 82 | this_barrier@89@01 != 1 | live]
(push) ; 10
; [else-branch: 82 | this_barrier@89@01 != 1]
(pop) ; 10
(pop) ; 9
; Joined path conditions
(pop) ; 8
(pop) ; 7
(pop) ; 6
(push) ; 6
; [exec]
; inhale false
(pop) ; 6
(pop) ; 5
(pop) ; 4
(pop) ; 3
(pop) ; 2
(push) ; 2
; [else-branch: 49 | last_barrier@90@01 != 1]
(assert (not (= last_barrier@90@01 1)))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@95@01)))))))))))))))
  $Snap.unit))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@95@01)))))))))))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@95@01))))))))))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@95@01)))))))))))))))))))
; [eval] last_barrier == 0
(push) ; 3
(set-option :timeout 10)
(assert (not (not (= last_barrier@90@01 0))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (= last_barrier@90@01 0)))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; [then-branch: 83 | last_barrier@90@01 == 0 | live]
; [else-branch: 83 | last_barrier@90@01 != 0 | live]
(set-option :timeout 0)
(push) ; 3
; [then-branch: 83 | last_barrier@90@01 == 0]
(assert (= last_barrier@90@01 0))
; [eval] this.dst[tid]
(push) ; 4
(set-option :timeout 10)
(assert (not (< $Perm.No $k@97@01)))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 4
(assert (not (>= tid@86@01 0)))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(push) ; 4
(assert (not (<
  tid@86@01
  (Seq_length
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@95@01))))))))))))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(declare-const sm@121@01 $FVF<Integer_value>)
; Definitional axioms for singleton-SM's value
(assert (=
  ($FVF.lookup_Integer_value (as sm@121@01  $FVF<Integer_value>) (Seq_index
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@95@01))))))))))
    tid@86@01))
  ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@95@01)))))))))))))))))))
(assert (<=
  $Perm.No
  (ite
    (=
      (Seq_index
        ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@95@01))))))))))
        tid@86@01)
      (Seq_index
        ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@95@01))))))))))
        tid@86@01))
    $Perm.Write
    $Perm.No)))
(assert (<=
  (ite
    (=
      (Seq_index
        ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@95@01))))))))))
        tid@86@01)
      (Seq_index
        ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@95@01))))))))))
        tid@86@01))
    $Perm.Write
    $Perm.No)
  $Perm.Write))
(assert (=>
  (=
    (Seq_index
      ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@95@01))))))))))
      tid@86@01)
    (Seq_index
      ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@95@01))))))))))
      tid@86@01))
  (not
    (=
      (Seq_index
        ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@95@01))))))))))
        tid@86@01)
      $Ref.null))))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@95@01))))))))))))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@95@01)))))))))))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@95@01))))))))))))))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@95@01)))))))))))))))))
  $Snap.unit))
; [eval] this_barrier == 1 ==> half + half == gsize
; [eval] this_barrier == 1
(push) ; 4
(push) ; 5
(set-option :timeout 10)
(assert (not (not (= this_barrier@89@01 1))))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 5
(set-option :timeout 10)
(assert (not (= this_barrier@89@01 1)))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
; [then-branch: 84 | this_barrier@89@01 == 1 | live]
; [else-branch: 84 | this_barrier@89@01 != 1 | live]
(set-option :timeout 0)
(push) ; 5
; [then-branch: 84 | this_barrier@89@01 == 1]
(assert (= this_barrier@89@01 1))
; [eval] half + half == gsize
; [eval] half + half
(pop) ; 5
(push) ; 5
; [else-branch: 84 | this_barrier@89@01 != 1]
(assert (not (= this_barrier@89@01 1)))
(pop) ; 5
(pop) ; 4
; Joined path conditions
; Joined path conditions
(assert (=> (= this_barrier@89@01 1) (= (+ half@92@01 half@92@01) gsize@85@01)))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@95@01)))))))))))))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@95@01))))))))))))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@95@01)))))))))))))))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@95@01))))))))))))))))))
  $Snap.unit))
; [eval] this_barrier == 1 ==> tid == 0 ==> (forall i: Int :: { this.src[i] } 0 <= i && i < half ==> this.dst[0].Integer_value >= this.src[i].Integer_value)
; [eval] this_barrier == 1
(push) ; 4
(push) ; 5
(set-option :timeout 10)
(assert (not (not (= this_barrier@89@01 1))))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 5
(set-option :timeout 10)
(assert (not (= this_barrier@89@01 1)))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
; [then-branch: 85 | this_barrier@89@01 == 1 | live]
; [else-branch: 85 | this_barrier@89@01 != 1 | live]
(set-option :timeout 0)
(push) ; 5
; [then-branch: 85 | this_barrier@89@01 == 1]
(assert (= this_barrier@89@01 1))
; [eval] tid == 0 ==> (forall i: Int :: { this.src[i] } 0 <= i && i < half ==> this.dst[0].Integer_value >= this.src[i].Integer_value)
; [eval] tid == 0
(push) ; 6
(push) ; 7
(set-option :timeout 10)
(assert (not (not (= tid@86@01 0))))
(check-sat)
; unknown
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 7
(set-option :timeout 10)
(assert (not (= tid@86@01 0)))
(check-sat)
; unknown
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
; [then-branch: 86 | tid@86@01 == 0 | live]
; [else-branch: 86 | tid@86@01 != 0 | live]
(set-option :timeout 0)
(push) ; 7
; [then-branch: 86 | tid@86@01 == 0]
(assert (= tid@86@01 0))
; [eval] (forall i: Int :: { this.src[i] } 0 <= i && i < half ==> this.dst[0].Integer_value >= this.src[i].Integer_value)
(declare-const i@122@01 Int)
(push) ; 8
; [eval] 0 <= i && i < half ==> this.dst[0].Integer_value >= this.src[i].Integer_value
; [eval] 0 <= i && i < half
; [eval] 0 <= i
(push) ; 9
; [then-branch: 87 | !(0 <= i@122@01) | live]
; [else-branch: 87 | 0 <= i@122@01 | live]
(push) ; 10
; [then-branch: 87 | !(0 <= i@122@01)]
(assert (not (<= 0 i@122@01)))
(pop) ; 10
(push) ; 10
; [else-branch: 87 | 0 <= i@122@01]
(assert (<= 0 i@122@01))
; [eval] i < half
(pop) ; 10
(pop) ; 9
; Joined path conditions
; Joined path conditions
(assert (or (<= 0 i@122@01) (not (<= 0 i@122@01))))
(push) ; 9
; [then-branch: 88 | 0 <= i@122@01 && i@122@01 < half@92@01 | live]
; [else-branch: 88 | !(0 <= i@122@01 && i@122@01 < half@92@01) | live]
(push) ; 10
; [then-branch: 88 | 0 <= i@122@01 && i@122@01 < half@92@01]
(assert (and (<= 0 i@122@01) (< i@122@01 half@92@01)))
; [eval] this.dst[0].Integer_value >= this.src[i].Integer_value
; [eval] this.dst[0]
(push) ; 11
(set-option :timeout 10)
(assert (not (< $Perm.No $k@97@01)))
(check-sat)
; unsat
(pop) ; 11
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 11
(assert (not (<
  0
  (Seq_length
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@95@01))))))))))))))
(check-sat)
; unsat
(pop) ; 11
; 0.00s
; (get-info :all-statistics)
(declare-const sm@123@01 $FVF<Integer_value>)
; Definitional axioms for snapshot map values
(assert (forall ((r $Ref)) (!
  (=>
    (ite
      (and
        (img@102@01 r)
        (Seq_contains (Seq_range 0 gsize@85@01) (inv@101@01 r)))
      (< $Perm.No (/ (to_real 1) (to_real gsize@85@01)))
      false)
    (=
      ($FVF.lookup_Integer_value (as sm@123@01  $FVF<Integer_value>) r)
      ($FVF.lookup_Integer_value ($SortWrappers.$SnapTo$FVF<Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@95@01))))))))))))))) r)))
  :pattern (($FVF.lookup_Integer_value (as sm@123@01  $FVF<Integer_value>) r))
  :pattern (($FVF.lookup_Integer_value ($SortWrappers.$SnapTo$FVF<Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@95@01))))))))))))))) r))
  :qid |qp.fvfValDef12|)))
(assert (forall ((r $Ref)) (!
  (=>
    (=
      r
      (Seq_index
        ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@95@01))))))))))
        tid@86@01))
    (=
      ($FVF.lookup_Integer_value (as sm@123@01  $FVF<Integer_value>) r)
      ($FVF.lookup_Integer_value (as sm@121@01  $FVF<Integer_value>) r)))
  :pattern (($FVF.lookup_Integer_value (as sm@123@01  $FVF<Integer_value>) r))
  :pattern (($FVF.lookup_Integer_value (as sm@121@01  $FVF<Integer_value>) r))
  :qid |qp.fvfValDef13|)))
(declare-const pm@124@01 $FPM)
(assert (forall ((r $Ref)) (!
  (=
    ($FVF.perm_Integer_value (as pm@124@01  $FPM) r)
    (+
      (ite
        (and
          (img@102@01 r)
          (Seq_contains (Seq_range 0 gsize@85@01) (inv@101@01 r)))
        (/ (to_real 1) (to_real gsize@85@01))
        $Perm.No)
      (ite
        (=
          r
          (Seq_index
            ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@95@01))))))))))
            tid@86@01))
        $Perm.Write
        $Perm.No)))
  :pattern (($FVF.perm_Integer_value (as pm@124@01  $FPM) r))
  :qid |qp.resPrmSumDef14|)))
(push) ; 11
(assert (not (<
  $Perm.No
  ($FVF.perm_Integer_value (as pm@124@01  $FPM) (Seq_index
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@95@01))))))))))
    0)))))
(check-sat)
; unsat
(pop) ; 11
; 0.00s
; (get-info :all-statistics)
; [eval] this.src[i]
(push) ; 11
(set-option :timeout 10)
(assert (not (< $Perm.No $k@96@01)))
(check-sat)
; unsat
(pop) ; 11
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 11
(assert (not (>= i@122@01 0)))
(check-sat)
; unsat
(pop) ; 11
; 0.00s
; (get-info :all-statistics)
(push) ; 11
(assert (not (<
  i@122@01
  (Seq_length
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@95@01))))))))))))
(check-sat)
; unsat
(pop) ; 11
; 0.00s
; (get-info :all-statistics)
(assert (and
  (forall ((r $Ref)) (!
    (=>
      (ite
        (and
          (img@102@01 r)
          (Seq_contains (Seq_range 0 gsize@85@01) (inv@101@01 r)))
        (< $Perm.No (/ (to_real 1) (to_real gsize@85@01)))
        false)
      (=
        ($FVF.lookup_Integer_value (as sm@123@01  $FVF<Integer_value>) r)
        ($FVF.lookup_Integer_value ($SortWrappers.$SnapTo$FVF<Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@95@01))))))))))))))) r)))
    :pattern (($FVF.lookup_Integer_value (as sm@123@01  $FVF<Integer_value>) r))
    :pattern (($FVF.lookup_Integer_value ($SortWrappers.$SnapTo$FVF<Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@95@01))))))))))))))) r))
    :qid |qp.fvfValDef12|))
  (forall ((r $Ref)) (!
    (=>
      (=
        r
        (Seq_index
          ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@95@01))))))))))
          tid@86@01))
      (=
        ($FVF.lookup_Integer_value (as sm@123@01  $FVF<Integer_value>) r)
        ($FVF.lookup_Integer_value (as sm@121@01  $FVF<Integer_value>) r)))
    :pattern (($FVF.lookup_Integer_value (as sm@123@01  $FVF<Integer_value>) r))
    :pattern (($FVF.lookup_Integer_value (as sm@121@01  $FVF<Integer_value>) r))
    :qid |qp.fvfValDef13|))))
(push) ; 11
(assert (not (<
  $Perm.No
  (+
    (ite
      (and
        (img@102@01 (Seq_index
          ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@95@01))))))))
          i@122@01))
        (Seq_contains
          (Seq_range 0 gsize@85@01)
          (inv@101@01 (Seq_index
            ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@95@01))))))))
            i@122@01))))
      (/ (to_real 1) (to_real gsize@85@01))
      $Perm.No)
    (ite
      (=
        (Seq_index
          ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@95@01))))))))
          i@122@01)
        (Seq_index
          ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@95@01))))))))))
          tid@86@01))
      $Perm.Write
      $Perm.No)))))
(check-sat)
; unsat
(pop) ; 11
; 0.00s
; (get-info :all-statistics)
(pop) ; 10
(push) ; 10
; [else-branch: 88 | !(0 <= i@122@01 && i@122@01 < half@92@01)]
(assert (not (and (<= 0 i@122@01) (< i@122@01 half@92@01))))
(pop) ; 10
(pop) ; 9
; Joined path conditions
(assert (forall ((r $Ref)) (!
  (=>
    (ite
      (and
        (img@102@01 r)
        (Seq_contains (Seq_range 0 gsize@85@01) (inv@101@01 r)))
      (< $Perm.No (/ (to_real 1) (to_real gsize@85@01)))
      false)
    (=
      ($FVF.lookup_Integer_value (as sm@123@01  $FVF<Integer_value>) r)
      ($FVF.lookup_Integer_value ($SortWrappers.$SnapTo$FVF<Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@95@01))))))))))))))) r)))
  :pattern (($FVF.lookup_Integer_value (as sm@123@01  $FVF<Integer_value>) r))
  :pattern (($FVF.lookup_Integer_value ($SortWrappers.$SnapTo$FVF<Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@95@01))))))))))))))) r))
  :qid |qp.fvfValDef12|)))
(assert (forall ((r $Ref)) (!
  (=>
    (=
      r
      (Seq_index
        ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@95@01))))))))))
        tid@86@01))
    (=
      ($FVF.lookup_Integer_value (as sm@123@01  $FVF<Integer_value>) r)
      ($FVF.lookup_Integer_value (as sm@121@01  $FVF<Integer_value>) r)))
  :pattern (($FVF.lookup_Integer_value (as sm@123@01  $FVF<Integer_value>) r))
  :pattern (($FVF.lookup_Integer_value (as sm@121@01  $FVF<Integer_value>) r))
  :qid |qp.fvfValDef13|)))
(assert (forall ((r $Ref)) (!
  (=
    ($FVF.perm_Integer_value (as pm@124@01  $FPM) r)
    (+
      (ite
        (and
          (img@102@01 r)
          (Seq_contains (Seq_range 0 gsize@85@01) (inv@101@01 r)))
        (/ (to_real 1) (to_real gsize@85@01))
        $Perm.No)
      (ite
        (=
          r
          (Seq_index
            ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@95@01))))))))))
            tid@86@01))
        $Perm.Write
        $Perm.No)))
  :pattern (($FVF.perm_Integer_value (as pm@124@01  $FPM) r))
  :qid |qp.resPrmSumDef14|)))
; Joined path conditions
(assert (or
  (not (and (<= 0 i@122@01) (< i@122@01 half@92@01)))
  (and (<= 0 i@122@01) (< i@122@01 half@92@01))))
(pop) ; 8
; Nested auxiliary terms: globals (aux)
(assert (forall ((r $Ref)) (!
  (=>
    (ite
      (and
        (img@102@01 r)
        (Seq_contains (Seq_range 0 gsize@85@01) (inv@101@01 r)))
      (< $Perm.No (/ (to_real 1) (to_real gsize@85@01)))
      false)
    (=
      ($FVF.lookup_Integer_value (as sm@123@01  $FVF<Integer_value>) r)
      ($FVF.lookup_Integer_value ($SortWrappers.$SnapTo$FVF<Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@95@01))))))))))))))) r)))
  :pattern (($FVF.lookup_Integer_value (as sm@123@01  $FVF<Integer_value>) r))
  :pattern (($FVF.lookup_Integer_value ($SortWrappers.$SnapTo$FVF<Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@95@01))))))))))))))) r))
  :qid |qp.fvfValDef12|)))
(assert (forall ((r $Ref)) (!
  (=>
    (=
      r
      (Seq_index
        ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@95@01))))))))))
        tid@86@01))
    (=
      ($FVF.lookup_Integer_value (as sm@123@01  $FVF<Integer_value>) r)
      ($FVF.lookup_Integer_value (as sm@121@01  $FVF<Integer_value>) r)))
  :pattern (($FVF.lookup_Integer_value (as sm@123@01  $FVF<Integer_value>) r))
  :pattern (($FVF.lookup_Integer_value (as sm@121@01  $FVF<Integer_value>) r))
  :qid |qp.fvfValDef13|)))
(assert (forall ((r $Ref)) (!
  (=
    ($FVF.perm_Integer_value (as pm@124@01  $FPM) r)
    (+
      (ite
        (and
          (img@102@01 r)
          (Seq_contains (Seq_range 0 gsize@85@01) (inv@101@01 r)))
        (/ (to_real 1) (to_real gsize@85@01))
        $Perm.No)
      (ite
        (=
          r
          (Seq_index
            ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@95@01))))))))))
            tid@86@01))
        $Perm.Write
        $Perm.No)))
  :pattern (($FVF.perm_Integer_value (as pm@124@01  $FPM) r))
  :qid |qp.resPrmSumDef14|)))
; Nested auxiliary terms: non-globals (aux)
(assert (forall ((i@122@01 Int)) (!
  (and
    (or (<= 0 i@122@01) (not (<= 0 i@122@01)))
    (or
      (not (and (<= 0 i@122@01) (< i@122@01 half@92@01)))
      (and (<= 0 i@122@01) (< i@122@01 half@92@01))))
  :pattern ((Seq_index
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@95@01))))))))
    i@122@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/third_party/max-two-range.vpr@116@52@116@152-aux|)))
(pop) ; 7
(push) ; 7
; [else-branch: 86 | tid@86@01 != 0]
(assert (not (= tid@86@01 0)))
(pop) ; 7
(pop) ; 6
; Joined path conditions
(assert (forall ((r $Ref)) (!
  (=>
    (ite
      (and
        (img@102@01 r)
        (Seq_contains (Seq_range 0 gsize@85@01) (inv@101@01 r)))
      (< $Perm.No (/ (to_real 1) (to_real gsize@85@01)))
      false)
    (=
      ($FVF.lookup_Integer_value (as sm@123@01  $FVF<Integer_value>) r)
      ($FVF.lookup_Integer_value ($SortWrappers.$SnapTo$FVF<Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@95@01))))))))))))))) r)))
  :pattern (($FVF.lookup_Integer_value (as sm@123@01  $FVF<Integer_value>) r))
  :pattern (($FVF.lookup_Integer_value ($SortWrappers.$SnapTo$FVF<Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@95@01))))))))))))))) r))
  :qid |qp.fvfValDef12|)))
(assert (forall ((r $Ref)) (!
  (=>
    (=
      r
      (Seq_index
        ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@95@01))))))))))
        tid@86@01))
    (=
      ($FVF.lookup_Integer_value (as sm@123@01  $FVF<Integer_value>) r)
      ($FVF.lookup_Integer_value (as sm@121@01  $FVF<Integer_value>) r)))
  :pattern (($FVF.lookup_Integer_value (as sm@123@01  $FVF<Integer_value>) r))
  :pattern (($FVF.lookup_Integer_value (as sm@121@01  $FVF<Integer_value>) r))
  :qid |qp.fvfValDef13|)))
(assert (forall ((r $Ref)) (!
  (=
    ($FVF.perm_Integer_value (as pm@124@01  $FPM) r)
    (+
      (ite
        (and
          (img@102@01 r)
          (Seq_contains (Seq_range 0 gsize@85@01) (inv@101@01 r)))
        (/ (to_real 1) (to_real gsize@85@01))
        $Perm.No)
      (ite
        (=
          r
          (Seq_index
            ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@95@01))))))))))
            tid@86@01))
        $Perm.Write
        $Perm.No)))
  :pattern (($FVF.perm_Integer_value (as pm@124@01  $FPM) r))
  :qid |qp.resPrmSumDef14|)))
(assert (=>
  (= tid@86@01 0)
  (and
    (= tid@86@01 0)
    (forall ((i@122@01 Int)) (!
      (and
        (or (<= 0 i@122@01) (not (<= 0 i@122@01)))
        (or
          (not (and (<= 0 i@122@01) (< i@122@01 half@92@01)))
          (and (<= 0 i@122@01) (< i@122@01 half@92@01))))
      :pattern ((Seq_index
        ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@95@01))))))))
        i@122@01))
      :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/third_party/max-two-range.vpr@116@52@116@152-aux|)))))
; Joined path conditions
(assert (or (not (= tid@86@01 0)) (= tid@86@01 0)))
(pop) ; 5
(push) ; 5
; [else-branch: 85 | this_barrier@89@01 != 1]
(assert (not (= this_barrier@89@01 1)))
(pop) ; 5
(pop) ; 4
; Joined path conditions
(assert (forall ((r $Ref)) (!
  (=>
    (ite
      (and
        (img@102@01 r)
        (Seq_contains (Seq_range 0 gsize@85@01) (inv@101@01 r)))
      (< $Perm.No (/ (to_real 1) (to_real gsize@85@01)))
      false)
    (=
      ($FVF.lookup_Integer_value (as sm@123@01  $FVF<Integer_value>) r)
      ($FVF.lookup_Integer_value ($SortWrappers.$SnapTo$FVF<Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@95@01))))))))))))))) r)))
  :pattern (($FVF.lookup_Integer_value (as sm@123@01  $FVF<Integer_value>) r))
  :pattern (($FVF.lookup_Integer_value ($SortWrappers.$SnapTo$FVF<Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@95@01))))))))))))))) r))
  :qid |qp.fvfValDef12|)))
(assert (forall ((r $Ref)) (!
  (=>
    (=
      r
      (Seq_index
        ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@95@01))))))))))
        tid@86@01))
    (=
      ($FVF.lookup_Integer_value (as sm@123@01  $FVF<Integer_value>) r)
      ($FVF.lookup_Integer_value (as sm@121@01  $FVF<Integer_value>) r)))
  :pattern (($FVF.lookup_Integer_value (as sm@123@01  $FVF<Integer_value>) r))
  :pattern (($FVF.lookup_Integer_value (as sm@121@01  $FVF<Integer_value>) r))
  :qid |qp.fvfValDef13|)))
(assert (forall ((r $Ref)) (!
  (=
    ($FVF.perm_Integer_value (as pm@124@01  $FPM) r)
    (+
      (ite
        (and
          (img@102@01 r)
          (Seq_contains (Seq_range 0 gsize@85@01) (inv@101@01 r)))
        (/ (to_real 1) (to_real gsize@85@01))
        $Perm.No)
      (ite
        (=
          r
          (Seq_index
            ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@95@01))))))))))
            tid@86@01))
        $Perm.Write
        $Perm.No)))
  :pattern (($FVF.perm_Integer_value (as pm@124@01  $FPM) r))
  :qid |qp.resPrmSumDef14|)))
(assert (=>
  (= this_barrier@89@01 1)
  (and
    (= this_barrier@89@01 1)
    (=>
      (= tid@86@01 0)
      (and
        (= tid@86@01 0)
        (forall ((i@122@01 Int)) (!
          (and
            (or (<= 0 i@122@01) (not (<= 0 i@122@01)))
            (or
              (not (and (<= 0 i@122@01) (< i@122@01 half@92@01)))
              (and (<= 0 i@122@01) (< i@122@01 half@92@01))))
          :pattern ((Seq_index
            ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@95@01))))))))
            i@122@01))
          :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/third_party/max-two-range.vpr@116@52@116@152-aux|))))
    (or (not (= tid@86@01 0)) (= tid@86@01 0)))))
; Joined path conditions
(assert (=>
  (and (= this_barrier@89@01 1) (= tid@86@01 0))
  (forall ((i@122@01 Int)) (!
    (=>
      (and (<= 0 i@122@01) (< i@122@01 half@92@01))
      (>=
        ($FVF.lookup_Integer_value (as sm@123@01  $FVF<Integer_value>) (Seq_index
          ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@95@01))))))))))
          0))
        ($FVF.lookup_Integer_value (as sm@123@01  $FVF<Integer_value>) (Seq_index
          ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@95@01))))))))
          i@122@01))))
    :pattern ((Seq_index
      ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@95@01))))))))
      i@122@01))
    :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/third_party/max-two-range.vpr@116@52@116@152|))))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@95@01))))))))))))))))))
  $Snap.unit))
; [eval] this_barrier == 1 ==> tid == 1 ==> (forall i: Int :: { this.src[i] } half <= i && i < gsize ==> this.dst[1].Integer_value >= this.src[i].Integer_value)
; [eval] this_barrier == 1
(push) ; 4
(push) ; 5
(set-option :timeout 10)
(assert (not (not (= this_barrier@89@01 1))))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 5
(set-option :timeout 10)
(assert (not (= this_barrier@89@01 1)))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
; [then-branch: 89 | this_barrier@89@01 == 1 | live]
; [else-branch: 89 | this_barrier@89@01 != 1 | live]
(set-option :timeout 0)
(push) ; 5
; [then-branch: 89 | this_barrier@89@01 == 1]
(assert (= this_barrier@89@01 1))
; [eval] tid == 1 ==> (forall i: Int :: { this.src[i] } half <= i && i < gsize ==> this.dst[1].Integer_value >= this.src[i].Integer_value)
; [eval] tid == 1
(push) ; 6
(push) ; 7
(set-option :timeout 10)
(assert (not (not (= tid@86@01 1))))
(check-sat)
; unknown
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 7
(set-option :timeout 10)
(assert (not (= tid@86@01 1)))
(check-sat)
; unknown
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
; [then-branch: 90 | tid@86@01 == 1 | live]
; [else-branch: 90 | tid@86@01 != 1 | live]
(set-option :timeout 0)
(push) ; 7
; [then-branch: 90 | tid@86@01 == 1]
(assert (= tid@86@01 1))
; [eval] (forall i: Int :: { this.src[i] } half <= i && i < gsize ==> this.dst[1].Integer_value >= this.src[i].Integer_value)
(declare-const i@125@01 Int)
(push) ; 8
; [eval] half <= i && i < gsize ==> this.dst[1].Integer_value >= this.src[i].Integer_value
; [eval] half <= i && i < gsize
; [eval] half <= i
(push) ; 9
; [then-branch: 91 | !(half@92@01 <= i@125@01) | live]
; [else-branch: 91 | half@92@01 <= i@125@01 | live]
(push) ; 10
; [then-branch: 91 | !(half@92@01 <= i@125@01)]
(assert (not (<= half@92@01 i@125@01)))
(pop) ; 10
(push) ; 10
; [else-branch: 91 | half@92@01 <= i@125@01]
(assert (<= half@92@01 i@125@01))
; [eval] i < gsize
(pop) ; 10
(pop) ; 9
; Joined path conditions
; Joined path conditions
(assert (or (<= half@92@01 i@125@01) (not (<= half@92@01 i@125@01))))
(push) ; 9
; [then-branch: 92 | half@92@01 <= i@125@01 && i@125@01 < gsize@85@01 | live]
; [else-branch: 92 | !(half@92@01 <= i@125@01 && i@125@01 < gsize@85@01) | live]
(push) ; 10
; [then-branch: 92 | half@92@01 <= i@125@01 && i@125@01 < gsize@85@01]
(assert (and (<= half@92@01 i@125@01) (< i@125@01 gsize@85@01)))
; [eval] this.dst[1].Integer_value >= this.src[i].Integer_value
; [eval] this.dst[1]
(push) ; 11
(set-option :timeout 10)
(assert (not (< $Perm.No $k@97@01)))
(check-sat)
; unsat
(pop) ; 11
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 11
(assert (not (<
  1
  (Seq_length
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@95@01))))))))))))))
(check-sat)
; unsat
(pop) ; 11
; 0.00s
; (get-info :all-statistics)
(assert (and
  (forall ((r $Ref)) (!
    (=>
      (ite
        (and
          (img@102@01 r)
          (Seq_contains (Seq_range 0 gsize@85@01) (inv@101@01 r)))
        (< $Perm.No (/ (to_real 1) (to_real gsize@85@01)))
        false)
      (=
        ($FVF.lookup_Integer_value (as sm@123@01  $FVF<Integer_value>) r)
        ($FVF.lookup_Integer_value ($SortWrappers.$SnapTo$FVF<Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@95@01))))))))))))))) r)))
    :pattern (($FVF.lookup_Integer_value (as sm@123@01  $FVF<Integer_value>) r))
    :pattern (($FVF.lookup_Integer_value ($SortWrappers.$SnapTo$FVF<Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@95@01))))))))))))))) r))
    :qid |qp.fvfValDef12|))
  (forall ((r $Ref)) (!
    (=>
      (=
        r
        (Seq_index
          ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@95@01))))))))))
          tid@86@01))
      (=
        ($FVF.lookup_Integer_value (as sm@123@01  $FVF<Integer_value>) r)
        ($FVF.lookup_Integer_value (as sm@121@01  $FVF<Integer_value>) r)))
    :pattern (($FVF.lookup_Integer_value (as sm@123@01  $FVF<Integer_value>) r))
    :pattern (($FVF.lookup_Integer_value (as sm@121@01  $FVF<Integer_value>) r))
    :qid |qp.fvfValDef13|))))
(push) ; 11
(assert (not (<
  $Perm.No
  (+
    (ite
      (and
        (img@102@01 (Seq_index
          ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@95@01))))))))))
          1))
        (Seq_contains
          (Seq_range 0 gsize@85@01)
          (inv@101@01 (Seq_index
            ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@95@01))))))))))
            1))))
      (/ (to_real 1) (to_real gsize@85@01))
      $Perm.No)
    (ite
      (=
        (Seq_index
          ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@95@01))))))))))
          1)
        (Seq_index
          ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@95@01))))))))))
          tid@86@01))
      $Perm.Write
      $Perm.No)))))
(check-sat)
; unsat
(pop) ; 11
; 0.00s
; (get-info :all-statistics)
; [eval] this.src[i]
(push) ; 11
(set-option :timeout 10)
(assert (not (< $Perm.No $k@96@01)))
(check-sat)
; unsat
(pop) ; 11
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 11
(assert (not (>= i@125@01 0)))
(check-sat)
; unsat
(pop) ; 11
; 0.00s
; (get-info :all-statistics)
(push) ; 11
(assert (not (<
  i@125@01
  (Seq_length
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@95@01))))))))))))
(check-sat)
; unsat
(pop) ; 11
; 0.00s
; (get-info :all-statistics)
(assert (and
  (forall ((r $Ref)) (!
    (=>
      (ite
        (and
          (img@102@01 r)
          (Seq_contains (Seq_range 0 gsize@85@01) (inv@101@01 r)))
        (< $Perm.No (/ (to_real 1) (to_real gsize@85@01)))
        false)
      (=
        ($FVF.lookup_Integer_value (as sm@123@01  $FVF<Integer_value>) r)
        ($FVF.lookup_Integer_value ($SortWrappers.$SnapTo$FVF<Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@95@01))))))))))))))) r)))
    :pattern (($FVF.lookup_Integer_value (as sm@123@01  $FVF<Integer_value>) r))
    :pattern (($FVF.lookup_Integer_value ($SortWrappers.$SnapTo$FVF<Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@95@01))))))))))))))) r))
    :qid |qp.fvfValDef12|))
  (forall ((r $Ref)) (!
    (=>
      (=
        r
        (Seq_index
          ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@95@01))))))))))
          tid@86@01))
      (=
        ($FVF.lookup_Integer_value (as sm@123@01  $FVF<Integer_value>) r)
        ($FVF.lookup_Integer_value (as sm@121@01  $FVF<Integer_value>) r)))
    :pattern (($FVF.lookup_Integer_value (as sm@123@01  $FVF<Integer_value>) r))
    :pattern (($FVF.lookup_Integer_value (as sm@121@01  $FVF<Integer_value>) r))
    :qid |qp.fvfValDef13|))))
(push) ; 11
(assert (not (<
  $Perm.No
  (+
    (ite
      (and
        (img@102@01 (Seq_index
          ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@95@01))))))))
          i@125@01))
        (Seq_contains
          (Seq_range 0 gsize@85@01)
          (inv@101@01 (Seq_index
            ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@95@01))))))))
            i@125@01))))
      (/ (to_real 1) (to_real gsize@85@01))
      $Perm.No)
    (ite
      (=
        (Seq_index
          ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@95@01))))))))
          i@125@01)
        (Seq_index
          ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@95@01))))))))))
          tid@86@01))
      $Perm.Write
      $Perm.No)))))
(check-sat)
; unsat
(pop) ; 11
; 0.00s
; (get-info :all-statistics)
(pop) ; 10
(push) ; 10
; [else-branch: 92 | !(half@92@01 <= i@125@01 && i@125@01 < gsize@85@01)]
(assert (not (and (<= half@92@01 i@125@01) (< i@125@01 gsize@85@01))))
(pop) ; 10
(pop) ; 9
; Joined path conditions
(assert (forall ((r $Ref)) (!
  (=>
    (ite
      (and
        (img@102@01 r)
        (Seq_contains (Seq_range 0 gsize@85@01) (inv@101@01 r)))
      (< $Perm.No (/ (to_real 1) (to_real gsize@85@01)))
      false)
    (=
      ($FVF.lookup_Integer_value (as sm@123@01  $FVF<Integer_value>) r)
      ($FVF.lookup_Integer_value ($SortWrappers.$SnapTo$FVF<Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@95@01))))))))))))))) r)))
  :pattern (($FVF.lookup_Integer_value (as sm@123@01  $FVF<Integer_value>) r))
  :pattern (($FVF.lookup_Integer_value ($SortWrappers.$SnapTo$FVF<Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@95@01))))))))))))))) r))
  :qid |qp.fvfValDef12|)))
(assert (forall ((r $Ref)) (!
  (=>
    (=
      r
      (Seq_index
        ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@95@01))))))))))
        tid@86@01))
    (=
      ($FVF.lookup_Integer_value (as sm@123@01  $FVF<Integer_value>) r)
      ($FVF.lookup_Integer_value (as sm@121@01  $FVF<Integer_value>) r)))
  :pattern (($FVF.lookup_Integer_value (as sm@123@01  $FVF<Integer_value>) r))
  :pattern (($FVF.lookup_Integer_value (as sm@121@01  $FVF<Integer_value>) r))
  :qid |qp.fvfValDef13|)))
; Joined path conditions
(assert (or
  (not (and (<= half@92@01 i@125@01) (< i@125@01 gsize@85@01)))
  (and (<= half@92@01 i@125@01) (< i@125@01 gsize@85@01))))
(pop) ; 8
; Nested auxiliary terms: globals (aux)
(assert (forall ((r $Ref)) (!
  (=>
    (ite
      (and
        (img@102@01 r)
        (Seq_contains (Seq_range 0 gsize@85@01) (inv@101@01 r)))
      (< $Perm.No (/ (to_real 1) (to_real gsize@85@01)))
      false)
    (=
      ($FVF.lookup_Integer_value (as sm@123@01  $FVF<Integer_value>) r)
      ($FVF.lookup_Integer_value ($SortWrappers.$SnapTo$FVF<Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@95@01))))))))))))))) r)))
  :pattern (($FVF.lookup_Integer_value (as sm@123@01  $FVF<Integer_value>) r))
  :pattern (($FVF.lookup_Integer_value ($SortWrappers.$SnapTo$FVF<Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@95@01))))))))))))))) r))
  :qid |qp.fvfValDef12|)))
(assert (forall ((r $Ref)) (!
  (=>
    (=
      r
      (Seq_index
        ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@95@01))))))))))
        tid@86@01))
    (=
      ($FVF.lookup_Integer_value (as sm@123@01  $FVF<Integer_value>) r)
      ($FVF.lookup_Integer_value (as sm@121@01  $FVF<Integer_value>) r)))
  :pattern (($FVF.lookup_Integer_value (as sm@123@01  $FVF<Integer_value>) r))
  :pattern (($FVF.lookup_Integer_value (as sm@121@01  $FVF<Integer_value>) r))
  :qid |qp.fvfValDef13|)))
; Nested auxiliary terms: non-globals (aux)
(assert (forall ((i@125@01 Int)) (!
  (and
    (or (<= half@92@01 i@125@01) (not (<= half@92@01 i@125@01)))
    (or
      (not (and (<= half@92@01 i@125@01) (< i@125@01 gsize@85@01)))
      (and (<= half@92@01 i@125@01) (< i@125@01 gsize@85@01))))
  :pattern ((Seq_index
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@95@01))))))))
    i@125@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/third_party/max-two-range.vpr@117@52@117@156-aux|)))
(pop) ; 7
(push) ; 7
; [else-branch: 90 | tid@86@01 != 1]
(assert (not (= tid@86@01 1)))
(pop) ; 7
(pop) ; 6
; Joined path conditions
(assert (forall ((r $Ref)) (!
  (=>
    (ite
      (and
        (img@102@01 r)
        (Seq_contains (Seq_range 0 gsize@85@01) (inv@101@01 r)))
      (< $Perm.No (/ (to_real 1) (to_real gsize@85@01)))
      false)
    (=
      ($FVF.lookup_Integer_value (as sm@123@01  $FVF<Integer_value>) r)
      ($FVF.lookup_Integer_value ($SortWrappers.$SnapTo$FVF<Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@95@01))))))))))))))) r)))
  :pattern (($FVF.lookup_Integer_value (as sm@123@01  $FVF<Integer_value>) r))
  :pattern (($FVF.lookup_Integer_value ($SortWrappers.$SnapTo$FVF<Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@95@01))))))))))))))) r))
  :qid |qp.fvfValDef12|)))
(assert (forall ((r $Ref)) (!
  (=>
    (=
      r
      (Seq_index
        ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@95@01))))))))))
        tid@86@01))
    (=
      ($FVF.lookup_Integer_value (as sm@123@01  $FVF<Integer_value>) r)
      ($FVF.lookup_Integer_value (as sm@121@01  $FVF<Integer_value>) r)))
  :pattern (($FVF.lookup_Integer_value (as sm@123@01  $FVF<Integer_value>) r))
  :pattern (($FVF.lookup_Integer_value (as sm@121@01  $FVF<Integer_value>) r))
  :qid |qp.fvfValDef13|)))
(assert (=>
  (= tid@86@01 1)
  (and
    (= tid@86@01 1)
    (forall ((i@125@01 Int)) (!
      (and
        (or (<= half@92@01 i@125@01) (not (<= half@92@01 i@125@01)))
        (or
          (not (and (<= half@92@01 i@125@01) (< i@125@01 gsize@85@01)))
          (and (<= half@92@01 i@125@01) (< i@125@01 gsize@85@01))))
      :pattern ((Seq_index
        ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@95@01))))))))
        i@125@01))
      :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/third_party/max-two-range.vpr@117@52@117@156-aux|)))))
; Joined path conditions
(assert (or (not (= tid@86@01 1)) (= tid@86@01 1)))
(pop) ; 5
(push) ; 5
; [else-branch: 89 | this_barrier@89@01 != 1]
(assert (not (= this_barrier@89@01 1)))
(pop) ; 5
(pop) ; 4
; Joined path conditions
(assert (forall ((r $Ref)) (!
  (=>
    (ite
      (and
        (img@102@01 r)
        (Seq_contains (Seq_range 0 gsize@85@01) (inv@101@01 r)))
      (< $Perm.No (/ (to_real 1) (to_real gsize@85@01)))
      false)
    (=
      ($FVF.lookup_Integer_value (as sm@123@01  $FVF<Integer_value>) r)
      ($FVF.lookup_Integer_value ($SortWrappers.$SnapTo$FVF<Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@95@01))))))))))))))) r)))
  :pattern (($FVF.lookup_Integer_value (as sm@123@01  $FVF<Integer_value>) r))
  :pattern (($FVF.lookup_Integer_value ($SortWrappers.$SnapTo$FVF<Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@95@01))))))))))))))) r))
  :qid |qp.fvfValDef12|)))
(assert (forall ((r $Ref)) (!
  (=>
    (=
      r
      (Seq_index
        ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@95@01))))))))))
        tid@86@01))
    (=
      ($FVF.lookup_Integer_value (as sm@123@01  $FVF<Integer_value>) r)
      ($FVF.lookup_Integer_value (as sm@121@01  $FVF<Integer_value>) r)))
  :pattern (($FVF.lookup_Integer_value (as sm@123@01  $FVF<Integer_value>) r))
  :pattern (($FVF.lookup_Integer_value (as sm@121@01  $FVF<Integer_value>) r))
  :qid |qp.fvfValDef13|)))
(assert (=>
  (= this_barrier@89@01 1)
  (and
    (= this_barrier@89@01 1)
    (=>
      (= tid@86@01 1)
      (and
        (= tid@86@01 1)
        (forall ((i@125@01 Int)) (!
          (and
            (or (<= half@92@01 i@125@01) (not (<= half@92@01 i@125@01)))
            (or
              (not (and (<= half@92@01 i@125@01) (< i@125@01 gsize@85@01)))
              (and (<= half@92@01 i@125@01) (< i@125@01 gsize@85@01))))
          :pattern ((Seq_index
            ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@95@01))))))))
            i@125@01))
          :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/third_party/max-two-range.vpr@117@52@117@156-aux|))))
    (or (not (= tid@86@01 1)) (= tid@86@01 1)))))
; Joined path conditions
(assert (=>
  (and (= this_barrier@89@01 1) (= tid@86@01 1))
  (forall ((i@125@01 Int)) (!
    (=>
      (and (<= half@92@01 i@125@01) (< i@125@01 gsize@85@01))
      (>=
        ($FVF.lookup_Integer_value (as sm@123@01  $FVF<Integer_value>) (Seq_index
          ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@95@01))))))))))
          1))
        ($FVF.lookup_Integer_value (as sm@123@01  $FVF<Integer_value>) (Seq_index
          ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@95@01))))))))
          i@125@01))))
    :pattern ((Seq_index
      ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@95@01))))))))
      i@125@01))
    :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/third_party/max-two-range.vpr@117@52@117@156|))))
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
(set-option :timeout 0)
(push) ; 4
(declare-const $t@126@01 $Snap)
(assert (= $t@126@01 ($Snap.combine ($Snap.first $t@126@01) ($Snap.second $t@126@01))))
(assert (= ($Snap.first $t@126@01) $Snap.unit))
; [eval] 0 <= tid
(assert (=
  ($Snap.second $t@126@01)
  ($Snap.combine
    ($Snap.first ($Snap.second $t@126@01))
    ($Snap.second ($Snap.second $t@126@01)))))
(assert (= ($Snap.first ($Snap.second $t@126@01)) $Snap.unit))
; [eval] tid < tcount
(assert (=
  ($Snap.second ($Snap.second $t@126@01))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second $t@126@01)))
    ($Snap.second ($Snap.second ($Snap.second $t@126@01))))))
(assert (= ($Snap.first ($Snap.second ($Snap.second $t@126@01))) $Snap.unit))
; [eval] tid == lid
(assert (=
  ($Snap.second ($Snap.second ($Snap.second $t@126@01)))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@126@01))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@126@01)))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@126@01))))
  $Snap.unit))
; [eval] tcount == gsize
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@126@01))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@126@01)))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@126@01))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@126@01)))))
  $Snap.unit))
; [eval] gid == 0
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@126@01)))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@126@01))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@126@01)))))))))
(declare-const $k@127@01 $Perm)
(assert ($Perm.isReadVar $k@127@01))
(assert (<= $Perm.No $k@127@01))
(assert (<= $k@127@01 $Perm.Write))
(assert (=> (< $Perm.No $k@127@01) (not (= this@83@01 $Ref.null))))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@126@01))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@126@01)))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@126@01))))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@126@01)))))))
  $Snap.unit))
; [eval] |this.src| == gsize
; [eval] |this.src|
(push) ; 5
(set-option :timeout 10)
(assert (not (< $Perm.No $k@127@01)))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(assert (=
  (Seq_length
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@126@01))))))))
  gsize@85@01))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@126@01)))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@126@01))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@126@01)))))))))))
(declare-const $k@128@01 $Perm)
(assert ($Perm.isReadVar $k@128@01))
(assert (<= $Perm.No $k@128@01))
(assert (<= $k@128@01 $Perm.Write))
(assert (=> (< $Perm.No $k@128@01) (not (= this@83@01 $Ref.null))))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@126@01))))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@126@01)))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@126@01))))))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@126@01)))))))))
  $Snap.unit))
; [eval] |this.dst| == gsize
; [eval] |this.dst|
(set-option :timeout 0)
(push) ; 5
(set-option :timeout 10)
(assert (not (< $Perm.No $k@128@01)))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(assert (=
  (Seq_length
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@126@01))))))))))
  gsize@85@01))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@126@01)))))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@126@01))))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@126@01)))))))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@126@01))))))))))
  $Snap.unit))
; [eval] 4 <= gsize
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@126@01))))))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@126@01)))))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@126@01))))))))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@126@01)))))))))))
  $Snap.unit))
; [eval] gsize % 2 == 0
; [eval] gsize % 2
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@126@01)))))))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@126@01))))))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@126@01)))))))))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@126@01))))))))))))
  $Snap.unit))
; [eval] this.src == old(this.src)
(set-option :timeout 0)
(push) ; 5
(set-option :timeout 10)
(assert (not (< $Perm.No $k@127@01)))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
; [eval] old(this.src)
(set-option :timeout 0)
(push) ; 5
(set-option :timeout 10)
(assert (not (< $Perm.No $k@96@01)))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(assert (Seq_equal
  ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@126@01)))))))
  ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@95@01))))))))))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@126@01))))))))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@126@01)))))))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@126@01))))))))))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@126@01)))))))))))))
  $Snap.unit))
; [eval] this.dst == old(this.dst)
(set-option :timeout 0)
(push) ; 5
(set-option :timeout 10)
(assert (not (< $Perm.No $k@128@01)))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
; [eval] old(this.dst)
(set-option :timeout 0)
(push) ; 5
(set-option :timeout 10)
(assert (not (< $Perm.No $k@97@01)))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(assert (Seq_equal
  ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@126@01)))))))))
  ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@95@01))))))))))))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@126@01)))))))))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@126@01))))))))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@126@01)))))))))))))))))
(declare-const i@129@01 Int)
(set-option :timeout 0)
(push) ; 5
; [eval] (i in [0..gsize))
; [eval] [0..gsize)
(assert (Seq_contains (Seq_range 0 gsize@85@01) i@129@01))
; [eval] this.src[i]
(push) ; 6
(set-option :timeout 10)
(assert (not (< $Perm.No $k@127@01)))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 6
(assert (not (>= i@129@01 0)))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(push) ; 6
(assert (not (<
  i@129@01
  (Seq_length
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@126@01)))))))))))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(push) ; 6
(assert (not (not (= gsize@85@01 0))))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(pop) ; 5
(declare-fun inv@130@01 ($Ref) Int)
(declare-fun img@131@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
(push) ; 5
(assert (not (forall ((i@129@01 Int)) (!
  (=>
    (Seq_contains (Seq_range 0 gsize@85@01) i@129@01)
    (or
      (= (/ (to_real 1) (to_real gsize@85@01)) $Perm.No)
      (< $Perm.No (/ (to_real 1) (to_real gsize@85@01)))))
  
  :qid |quant-u-17940|))))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
; Check receiver injectivity
(push) ; 5
(assert (not (forall ((i1@129@01 Int) (i2@129@01 Int)) (!
  (=>
    (and
      (and
        (Seq_contains (Seq_range 0 gsize@85@01) i1@129@01)
        (< $Perm.No (/ (to_real 1) (to_real gsize@85@01))))
      (and
        (Seq_contains (Seq_range 0 gsize@85@01) i2@129@01)
        (< $Perm.No (/ (to_real 1) (to_real gsize@85@01))))
      (=
        (Seq_index
          ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@126@01)))))))
          i1@129@01)
        (Seq_index
          ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@126@01)))))))
          i2@129@01)))
    (= i1@129@01 i2@129@01))
  
  :qid |Integer_value-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((i@129@01 Int)) (!
  (=>
    (and
      (Seq_contains (Seq_range 0 gsize@85@01) i@129@01)
      (< $Perm.No (/ (to_real 1) (to_real gsize@85@01))))
    (and
      (=
        (inv@130@01 (Seq_index
          ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@126@01)))))))
          i@129@01))
        i@129@01)
      (img@131@01 (Seq_index
        ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@126@01)))))))
        i@129@01))))
  :pattern ((Seq_index
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@126@01)))))))
    i@129@01))
  :qid |quant-u-17941|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@131@01 r)
      (and
        (Seq_contains (Seq_range 0 gsize@85@01) (inv@130@01 r))
        (< $Perm.No (/ (to_real 1) (to_real gsize@85@01)))))
    (=
      (Seq_index
        ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@126@01)))))))
        (inv@130@01 r))
      r))
  :pattern ((inv@130@01 r))
  :qid |Integer_value-fctOfInv|)))
; Permissions are non-negative
(assert (forall ((i@129@01 Int)) (!
  (<= $Perm.No (/ (to_real 1) (to_real gsize@85@01)))
  :pattern ((Seq_index
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@126@01)))))))
    i@129@01))
  :qid |Integer_value-permAtLeastZero|)))
; Field permissions are at most one
(assert (forall ((i@129@01 Int)) (!
  (<= (/ (to_real 1) (to_real gsize@85@01)) $Perm.Write)
  :pattern ((Seq_index
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@126@01)))))))
    i@129@01))
  :qid |Integer_value-permAtMostOne|)))
; Permission implies non-null receiver
(assert (forall ((i@129@01 Int)) (!
  (=>
    (and
      (Seq_contains (Seq_range 0 gsize@85@01) i@129@01)
      (< $Perm.No (/ (to_real 1) (to_real gsize@85@01))))
    (not
      (=
        (Seq_index
          ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@126@01)))))))
          i@129@01)
        $Ref.null)))
  :pattern ((Seq_index
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@126@01)))))))
    i@129@01))
  :qid |Integer_value-permImpliesNonNull|)))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@126@01))))))))))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@126@01)))))))))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@126@01))))))))))))))))))
; [eval] sys__result == 1
(push) ; 5
(set-option :timeout 10)
(assert (not (not (= sys__result@94@01 1))))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 5
(set-option :timeout 10)
(assert (not (= sys__result@94@01 1)))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
; [then-branch: 93 | sys__result@94@01 == 1 | live]
; [else-branch: 93 | sys__result@94@01 != 1 | live]
(set-option :timeout 0)
(push) ; 5
; [then-branch: 93 | sys__result@94@01 == 1]
(assert (= sys__result@94@01 1))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@126@01)))))))))))))))
  ($Snap.combine
    ($Snap.first ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@126@01))))))))))))))))
    ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@126@01)))))))))))))))))))
; [eval] tid == 0
(push) ; 6
(set-option :timeout 10)
(assert (not (not (= tid@86@01 0))))
(check-sat)
; unknown
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 6
(set-option :timeout 10)
(assert (not (= tid@86@01 0)))
(check-sat)
; unknown
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
; [then-branch: 94 | tid@86@01 == 0 | live]
; [else-branch: 94 | tid@86@01 != 0 | live]
(set-option :timeout 0)
(push) ; 6
; [then-branch: 94 | tid@86@01 == 0]
(assert (= tid@86@01 0))
; [eval] this.dst[0]
(push) ; 7
(set-option :timeout 10)
(assert (not (< $Perm.No $k@128@01)))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 7
(assert (not (<
  0
  (Seq_length
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@126@01)))))))))))))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(declare-const sm@132@01 $FVF<Integer_value>)
; Definitional axioms for singleton-SM's value
(assert (=
  ($FVF.lookup_Integer_value (as sm@132@01  $FVF<Integer_value>) (Seq_index
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@126@01)))))))))
    0))
  ($SortWrappers.$SnapToInt ($Snap.first ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@126@01)))))))))))))))))))
(assert (<=
  $Perm.No
  (ite
    (=
      (Seq_index
        ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@126@01)))))))))
        0)
      (Seq_index
        ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@126@01)))))))))
        0))
    $Perm.Write
    $Perm.No)))
(assert (<=
  (ite
    (=
      (Seq_index
        ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@126@01)))))))))
        0)
      (Seq_index
        ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@126@01)))))))))
        0))
    $Perm.Write
    $Perm.No)
  $Perm.Write))
(assert (=>
  (=
    (Seq_index
      ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@126@01)))))))))
      0)
    (Seq_index
      ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@126@01)))))))))
      0))
  (not
    (=
      (Seq_index
        ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@126@01)))))))))
        0)
      $Ref.null))))
; [eval] tid == 0
(push) ; 7
(set-option :timeout 10)
(assert (not (not (= tid@86@01 0))))
(check-sat)
; unknown
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
; [then-branch: 95 | tid@86@01 == 0 | live]
; [else-branch: 95 | tid@86@01 != 0 | dead]
(set-option :timeout 0)
(push) ; 7
; [then-branch: 95 | tid@86@01 == 0]
; [eval] this.dst[1]
(push) ; 8
(set-option :timeout 10)
(assert (not (< $Perm.No $k@128@01)))
(check-sat)
; unsat
(pop) ; 8
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 8
(assert (not (<
  1
  (Seq_length
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@126@01)))))))))))))
(check-sat)
; unsat
(pop) ; 8
; 0.00s
; (get-info :all-statistics)
(declare-const sm@133@01 $FVF<Integer_value>)
; Definitional axioms for singleton-SM's value
(assert (=
  ($FVF.lookup_Integer_value (as sm@133@01  $FVF<Integer_value>) (Seq_index
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@126@01)))))))))
    1))
  ($SortWrappers.$SnapToInt ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@126@01)))))))))))))))))))
(push) ; 8
(set-option :timeout 10)
(assert (not (and
  (and
    (=
      (Seq_index
        ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@126@01)))))))))
        1)
      (Seq_index
        ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@126@01)))))))))
        1))
    (=
      (Seq_index
        ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@126@01)))))))))
        0)
      (Seq_index
        ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@126@01)))))))))
        0)))
  (=
    (Seq_index
      ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@126@01)))))))))
      1)
    (Seq_index
      ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@126@01)))))))))
      0)))))
(check-sat)
; unknown
(pop) ; 8
; 0.00s
; (get-info :all-statistics)
(assert (<=
  $Perm.No
  (ite
    (=
      (Seq_index
        ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@126@01)))))))))
        1)
      (Seq_index
        ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@126@01)))))))))
        1))
    $Perm.Write
    $Perm.No)))
(assert (<=
  (ite
    (=
      (Seq_index
        ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@126@01)))))))))
        1)
      (Seq_index
        ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@126@01)))))))))
        1))
    $Perm.Write
    $Perm.No)
  $Perm.Write))
(assert (=>
  (=
    (Seq_index
      ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@126@01)))))))))
      1)
    (Seq_index
      ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@126@01)))))))))
      1))
  (not
    (=
      (Seq_index
        ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@126@01)))))))))
        1)
      $Ref.null))))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@126@01)))))))))))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@126@01))))))))))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@126@01)))))))))))))))))))
; [eval] sys__result == 0
(set-option :timeout 0)
(push) ; 8
(set-option :timeout 10)
(assert (not (not (= sys__result@94@01 0))))
(check-sat)
; unsat
(pop) ; 8
; 0.00s
; (get-info :all-statistics)
; [then-branch: 96 | sys__result@94@01 == 0 | dead]
; [else-branch: 96 | sys__result@94@01 != 0 | live]
(set-option :timeout 0)
(push) ; 8
; [else-branch: 96 | sys__result@94@01 != 0]
(assert (not (= sys__result@94@01 0)))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@126@01))))))))))))))))
  $Snap.unit))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@126@01))))))))))))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@126@01)))))))))))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@126@01))))))))))))))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@126@01)))))))))))))))))
  $Snap.unit))
; [eval] sys__result == this_barrier
(assert (= sys__result@94@01 this_barrier@89@01))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@126@01)))))))))))))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@126@01))))))))))))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@126@01)))))))))))))))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@126@01))))))))))))))))))
  $Snap.unit))
; [eval] this_barrier == 1 ==> tid == 0 ==> (forall i: Int :: { this.src[i] } 0 <= i && i < half ==> this.dst[0].Integer_value >= this.src[i].Integer_value)
; [eval] this_barrier == 1
(push) ; 9
(push) ; 10
(set-option :timeout 10)
(assert (not (not (= this_barrier@89@01 1))))
(check-sat)
; unknown
(pop) ; 10
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 10
(set-option :timeout 10)
(assert (not (= this_barrier@89@01 1)))
(check-sat)
; unsat
(pop) ; 10
; 0.00s
; (get-info :all-statistics)
; [then-branch: 97 | this_barrier@89@01 == 1 | live]
; [else-branch: 97 | this_barrier@89@01 != 1 | dead]
(set-option :timeout 0)
(push) ; 10
; [then-branch: 97 | this_barrier@89@01 == 1]
(assert (= this_barrier@89@01 1))
; [eval] tid == 0 ==> (forall i: Int :: { this.src[i] } 0 <= i && i < half ==> this.dst[0].Integer_value >= this.src[i].Integer_value)
; [eval] tid == 0
(push) ; 11
(push) ; 12
(set-option :timeout 10)
(assert (not (not (= tid@86@01 0))))
(check-sat)
; unknown
(pop) ; 12
; 0.00s
; (get-info :all-statistics)
; [then-branch: 98 | tid@86@01 == 0 | live]
; [else-branch: 98 | tid@86@01 != 0 | dead]
(set-option :timeout 0)
(push) ; 12
; [then-branch: 98 | tid@86@01 == 0]
; [eval] (forall i: Int :: { this.src[i] } 0 <= i && i < half ==> this.dst[0].Integer_value >= this.src[i].Integer_value)
(declare-const i@134@01 Int)
(push) ; 13
; [eval] 0 <= i && i < half ==> this.dst[0].Integer_value >= this.src[i].Integer_value
; [eval] 0 <= i && i < half
; [eval] 0 <= i
(push) ; 14
; [then-branch: 99 | !(0 <= i@134@01) | live]
; [else-branch: 99 | 0 <= i@134@01 | live]
(push) ; 15
; [then-branch: 99 | !(0 <= i@134@01)]
(assert (not (<= 0 i@134@01)))
(pop) ; 15
(push) ; 15
; [else-branch: 99 | 0 <= i@134@01]
(assert (<= 0 i@134@01))
; [eval] i < half
(pop) ; 15
(pop) ; 14
; Joined path conditions
; Joined path conditions
(assert (or (<= 0 i@134@01) (not (<= 0 i@134@01))))
(push) ; 14
; [then-branch: 100 | 0 <= i@134@01 && i@134@01 < half@92@01 | live]
; [else-branch: 100 | !(0 <= i@134@01 && i@134@01 < half@92@01) | live]
(push) ; 15
; [then-branch: 100 | 0 <= i@134@01 && i@134@01 < half@92@01]
(assert (and (<= 0 i@134@01) (< i@134@01 half@92@01)))
; [eval] this.dst[0].Integer_value >= this.src[i].Integer_value
; [eval] this.dst[0]
(push) ; 16
(set-option :timeout 10)
(assert (not (< $Perm.No $k@128@01)))
(check-sat)
; unsat
(pop) ; 16
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 16
(assert (not (<
  0
  (Seq_length
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@126@01)))))))))))))
(check-sat)
; unsat
(pop) ; 16
; 0.00s
; (get-info :all-statistics)
(declare-const sm@135@01 $FVF<Integer_value>)
; Definitional axioms for snapshot map values
(assert (forall ((r $Ref)) (!
  (=>
    (ite
      (and
        (img@131@01 r)
        (Seq_contains (Seq_range 0 gsize@85@01) (inv@130@01 r)))
      (< $Perm.No (/ (to_real 1) (to_real gsize@85@01)))
      false)
    (=
      ($FVF.lookup_Integer_value (as sm@135@01  $FVF<Integer_value>) r)
      ($FVF.lookup_Integer_value ($SortWrappers.$SnapTo$FVF<Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@126@01))))))))))))))) r)))
  :pattern (($FVF.lookup_Integer_value (as sm@135@01  $FVF<Integer_value>) r))
  :pattern (($FVF.lookup_Integer_value ($SortWrappers.$SnapTo$FVF<Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@126@01))))))))))))))) r))
  :qid |qp.fvfValDef15|)))
(assert (forall ((r $Ref)) (!
  (=>
    (=
      r
      (Seq_index
        ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@126@01)))))))))
        0))
    (=
      ($FVF.lookup_Integer_value (as sm@135@01  $FVF<Integer_value>) r)
      ($FVF.lookup_Integer_value (as sm@132@01  $FVF<Integer_value>) r)))
  :pattern (($FVF.lookup_Integer_value (as sm@135@01  $FVF<Integer_value>) r))
  :pattern (($FVF.lookup_Integer_value (as sm@132@01  $FVF<Integer_value>) r))
  :qid |qp.fvfValDef16|)))
(assert (forall ((r $Ref)) (!
  (=>
    (=
      r
      (Seq_index
        ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@126@01)))))))))
        1))
    (=
      ($FVF.lookup_Integer_value (as sm@135@01  $FVF<Integer_value>) r)
      ($FVF.lookup_Integer_value (as sm@133@01  $FVF<Integer_value>) r)))
  :pattern (($FVF.lookup_Integer_value (as sm@135@01  $FVF<Integer_value>) r))
  :pattern (($FVF.lookup_Integer_value (as sm@133@01  $FVF<Integer_value>) r))
  :qid |qp.fvfValDef17|)))
(declare-const pm@136@01 $FPM)
(assert (forall ((r $Ref)) (!
  (=
    ($FVF.perm_Integer_value (as pm@136@01  $FPM) r)
    (+
      (+
        (ite
          (and
            (img@131@01 r)
            (Seq_contains (Seq_range 0 gsize@85@01) (inv@130@01 r)))
          (/ (to_real 1) (to_real gsize@85@01))
          $Perm.No)
        (ite
          (=
            r
            (Seq_index
              ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@126@01)))))))))
              0))
          $Perm.Write
          $Perm.No))
      (ite
        (=
          r
          (Seq_index
            ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@126@01)))))))))
            1))
        $Perm.Write
        $Perm.No)))
  :pattern (($FVF.perm_Integer_value (as pm@136@01  $FPM) r))
  :qid |qp.resPrmSumDef18|)))
(push) ; 16
(assert (not (<
  $Perm.No
  ($FVF.perm_Integer_value (as pm@136@01  $FPM) (Seq_index
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@126@01)))))))))
    0)))))
(check-sat)
; unsat
(pop) ; 16
; 0.00s
; (get-info :all-statistics)
; [eval] this.src[i]
(push) ; 16
(set-option :timeout 10)
(assert (not (< $Perm.No $k@127@01)))
(check-sat)
; unsat
(pop) ; 16
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 16
(assert (not (>= i@134@01 0)))
(check-sat)
; unsat
(pop) ; 16
; 0.00s
; (get-info :all-statistics)
(push) ; 16
(assert (not (<
  i@134@01
  (Seq_length
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@126@01)))))))))))
(check-sat)
; unsat
(pop) ; 16
; 0.00s
; (get-info :all-statistics)
(assert (and
  (forall ((r $Ref)) (!
    (=>
      (ite
        (and
          (img@131@01 r)
          (Seq_contains (Seq_range 0 gsize@85@01) (inv@130@01 r)))
        (< $Perm.No (/ (to_real 1) (to_real gsize@85@01)))
        false)
      (=
        ($FVF.lookup_Integer_value (as sm@135@01  $FVF<Integer_value>) r)
        ($FVF.lookup_Integer_value ($SortWrappers.$SnapTo$FVF<Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@126@01))))))))))))))) r)))
    :pattern (($FVF.lookup_Integer_value (as sm@135@01  $FVF<Integer_value>) r))
    :pattern (($FVF.lookup_Integer_value ($SortWrappers.$SnapTo$FVF<Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@126@01))))))))))))))) r))
    :qid |qp.fvfValDef15|))
  (forall ((r $Ref)) (!
    (=>
      (=
        r
        (Seq_index
          ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@126@01)))))))))
          0))
      (=
        ($FVF.lookup_Integer_value (as sm@135@01  $FVF<Integer_value>) r)
        ($FVF.lookup_Integer_value (as sm@132@01  $FVF<Integer_value>) r)))
    :pattern (($FVF.lookup_Integer_value (as sm@135@01  $FVF<Integer_value>) r))
    :pattern (($FVF.lookup_Integer_value (as sm@132@01  $FVF<Integer_value>) r))
    :qid |qp.fvfValDef16|))
  (forall ((r $Ref)) (!
    (=>
      (=
        r
        (Seq_index
          ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@126@01)))))))))
          1))
      (=
        ($FVF.lookup_Integer_value (as sm@135@01  $FVF<Integer_value>) r)
        ($FVF.lookup_Integer_value (as sm@133@01  $FVF<Integer_value>) r)))
    :pattern (($FVF.lookup_Integer_value (as sm@135@01  $FVF<Integer_value>) r))
    :pattern (($FVF.lookup_Integer_value (as sm@133@01  $FVF<Integer_value>) r))
    :qid |qp.fvfValDef17|))))
(push) ; 16
(assert (not (<
  $Perm.No
  (+
    (+
      (ite
        (and
          (img@131@01 (Seq_index
            ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@126@01)))))))
            i@134@01))
          (Seq_contains
            (Seq_range 0 gsize@85@01)
            (inv@130@01 (Seq_index
              ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@126@01)))))))
              i@134@01))))
        (/ (to_real 1) (to_real gsize@85@01))
        $Perm.No)
      (ite
        (=
          (Seq_index
            ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@126@01)))))))
            i@134@01)
          (Seq_index
            ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@126@01)))))))))
            0))
        $Perm.Write
        $Perm.No))
    (ite
      (=
        (Seq_index
          ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@126@01)))))))
          i@134@01)
        (Seq_index
          ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@126@01)))))))))
          1))
      $Perm.Write
      $Perm.No)))))
(check-sat)
; unsat
(pop) ; 16
; 0.00s
; (get-info :all-statistics)
(pop) ; 15
(push) ; 15
; [else-branch: 100 | !(0 <= i@134@01 && i@134@01 < half@92@01)]
(assert (not (and (<= 0 i@134@01) (< i@134@01 half@92@01))))
(pop) ; 15
(pop) ; 14
; Joined path conditions
(assert (forall ((r $Ref)) (!
  (=>
    (ite
      (and
        (img@131@01 r)
        (Seq_contains (Seq_range 0 gsize@85@01) (inv@130@01 r)))
      (< $Perm.No (/ (to_real 1) (to_real gsize@85@01)))
      false)
    (=
      ($FVF.lookup_Integer_value (as sm@135@01  $FVF<Integer_value>) r)
      ($FVF.lookup_Integer_value ($SortWrappers.$SnapTo$FVF<Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@126@01))))))))))))))) r)))
  :pattern (($FVF.lookup_Integer_value (as sm@135@01  $FVF<Integer_value>) r))
  :pattern (($FVF.lookup_Integer_value ($SortWrappers.$SnapTo$FVF<Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@126@01))))))))))))))) r))
  :qid |qp.fvfValDef15|)))
(assert (forall ((r $Ref)) (!
  (=>
    (=
      r
      (Seq_index
        ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@126@01)))))))))
        0))
    (=
      ($FVF.lookup_Integer_value (as sm@135@01  $FVF<Integer_value>) r)
      ($FVF.lookup_Integer_value (as sm@132@01  $FVF<Integer_value>) r)))
  :pattern (($FVF.lookup_Integer_value (as sm@135@01  $FVF<Integer_value>) r))
  :pattern (($FVF.lookup_Integer_value (as sm@132@01  $FVF<Integer_value>) r))
  :qid |qp.fvfValDef16|)))
(assert (forall ((r $Ref)) (!
  (=>
    (=
      r
      (Seq_index
        ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@126@01)))))))))
        1))
    (=
      ($FVF.lookup_Integer_value (as sm@135@01  $FVF<Integer_value>) r)
      ($FVF.lookup_Integer_value (as sm@133@01  $FVF<Integer_value>) r)))
  :pattern (($FVF.lookup_Integer_value (as sm@135@01  $FVF<Integer_value>) r))
  :pattern (($FVF.lookup_Integer_value (as sm@133@01  $FVF<Integer_value>) r))
  :qid |qp.fvfValDef17|)))
(assert (forall ((r $Ref)) (!
  (=
    ($FVF.perm_Integer_value (as pm@136@01  $FPM) r)
    (+
      (+
        (ite
          (and
            (img@131@01 r)
            (Seq_contains (Seq_range 0 gsize@85@01) (inv@130@01 r)))
          (/ (to_real 1) (to_real gsize@85@01))
          $Perm.No)
        (ite
          (=
            r
            (Seq_index
              ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@126@01)))))))))
              0))
          $Perm.Write
          $Perm.No))
      (ite
        (=
          r
          (Seq_index
            ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@126@01)))))))))
            1))
        $Perm.Write
        $Perm.No)))
  :pattern (($FVF.perm_Integer_value (as pm@136@01  $FPM) r))
  :qid |qp.resPrmSumDef18|)))
; Joined path conditions
(assert (or
  (not (and (<= 0 i@134@01) (< i@134@01 half@92@01)))
  (and (<= 0 i@134@01) (< i@134@01 half@92@01))))
(pop) ; 13
; Nested auxiliary terms: globals (aux)
(assert (forall ((r $Ref)) (!
  (=>
    (ite
      (and
        (img@131@01 r)
        (Seq_contains (Seq_range 0 gsize@85@01) (inv@130@01 r)))
      (< $Perm.No (/ (to_real 1) (to_real gsize@85@01)))
      false)
    (=
      ($FVF.lookup_Integer_value (as sm@135@01  $FVF<Integer_value>) r)
      ($FVF.lookup_Integer_value ($SortWrappers.$SnapTo$FVF<Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@126@01))))))))))))))) r)))
  :pattern (($FVF.lookup_Integer_value (as sm@135@01  $FVF<Integer_value>) r))
  :pattern (($FVF.lookup_Integer_value ($SortWrappers.$SnapTo$FVF<Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@126@01))))))))))))))) r))
  :qid |qp.fvfValDef15|)))
(assert (forall ((r $Ref)) (!
  (=>
    (=
      r
      (Seq_index
        ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@126@01)))))))))
        0))
    (=
      ($FVF.lookup_Integer_value (as sm@135@01  $FVF<Integer_value>) r)
      ($FVF.lookup_Integer_value (as sm@132@01  $FVF<Integer_value>) r)))
  :pattern (($FVF.lookup_Integer_value (as sm@135@01  $FVF<Integer_value>) r))
  :pattern (($FVF.lookup_Integer_value (as sm@132@01  $FVF<Integer_value>) r))
  :qid |qp.fvfValDef16|)))
(assert (forall ((r $Ref)) (!
  (=>
    (=
      r
      (Seq_index
        ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@126@01)))))))))
        1))
    (=
      ($FVF.lookup_Integer_value (as sm@135@01  $FVF<Integer_value>) r)
      ($FVF.lookup_Integer_value (as sm@133@01  $FVF<Integer_value>) r)))
  :pattern (($FVF.lookup_Integer_value (as sm@135@01  $FVF<Integer_value>) r))
  :pattern (($FVF.lookup_Integer_value (as sm@133@01  $FVF<Integer_value>) r))
  :qid |qp.fvfValDef17|)))
(assert (forall ((r $Ref)) (!
  (=
    ($FVF.perm_Integer_value (as pm@136@01  $FPM) r)
    (+
      (+
        (ite
          (and
            (img@131@01 r)
            (Seq_contains (Seq_range 0 gsize@85@01) (inv@130@01 r)))
          (/ (to_real 1) (to_real gsize@85@01))
          $Perm.No)
        (ite
          (=
            r
            (Seq_index
              ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@126@01)))))))))
              0))
          $Perm.Write
          $Perm.No))
      (ite
        (=
          r
          (Seq_index
            ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@126@01)))))))))
            1))
        $Perm.Write
        $Perm.No)))
  :pattern (($FVF.perm_Integer_value (as pm@136@01  $FPM) r))
  :qid |qp.resPrmSumDef18|)))
; Nested auxiliary terms: non-globals (aux)
(assert (forall ((i@134@01 Int)) (!
  (and
    (or (<= 0 i@134@01) (not (<= 0 i@134@01)))
    (or
      (not (and (<= 0 i@134@01) (< i@134@01 half@92@01)))
      (and (<= 0 i@134@01) (< i@134@01 half@92@01))))
  :pattern ((Seq_index
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@126@01)))))))
    i@134@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/third_party/max-two-range.vpr@135@51@135@151-aux|)))
(pop) ; 12
(pop) ; 11
; Joined path conditions
(assert (forall ((r $Ref)) (!
  (=>
    (ite
      (and
        (img@131@01 r)
        (Seq_contains (Seq_range 0 gsize@85@01) (inv@130@01 r)))
      (< $Perm.No (/ (to_real 1) (to_real gsize@85@01)))
      false)
    (=
      ($FVF.lookup_Integer_value (as sm@135@01  $FVF<Integer_value>) r)
      ($FVF.lookup_Integer_value ($SortWrappers.$SnapTo$FVF<Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@126@01))))))))))))))) r)))
  :pattern (($FVF.lookup_Integer_value (as sm@135@01  $FVF<Integer_value>) r))
  :pattern (($FVF.lookup_Integer_value ($SortWrappers.$SnapTo$FVF<Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@126@01))))))))))))))) r))
  :qid |qp.fvfValDef15|)))
(assert (forall ((r $Ref)) (!
  (=>
    (=
      r
      (Seq_index
        ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@126@01)))))))))
        0))
    (=
      ($FVF.lookup_Integer_value (as sm@135@01  $FVF<Integer_value>) r)
      ($FVF.lookup_Integer_value (as sm@132@01  $FVF<Integer_value>) r)))
  :pattern (($FVF.lookup_Integer_value (as sm@135@01  $FVF<Integer_value>) r))
  :pattern (($FVF.lookup_Integer_value (as sm@132@01  $FVF<Integer_value>) r))
  :qid |qp.fvfValDef16|)))
(assert (forall ((r $Ref)) (!
  (=>
    (=
      r
      (Seq_index
        ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@126@01)))))))))
        1))
    (=
      ($FVF.lookup_Integer_value (as sm@135@01  $FVF<Integer_value>) r)
      ($FVF.lookup_Integer_value (as sm@133@01  $FVF<Integer_value>) r)))
  :pattern (($FVF.lookup_Integer_value (as sm@135@01  $FVF<Integer_value>) r))
  :pattern (($FVF.lookup_Integer_value (as sm@133@01  $FVF<Integer_value>) r))
  :qid |qp.fvfValDef17|)))
(assert (forall ((r $Ref)) (!
  (=
    ($FVF.perm_Integer_value (as pm@136@01  $FPM) r)
    (+
      (+
        (ite
          (and
            (img@131@01 r)
            (Seq_contains (Seq_range 0 gsize@85@01) (inv@130@01 r)))
          (/ (to_real 1) (to_real gsize@85@01))
          $Perm.No)
        (ite
          (=
            r
            (Seq_index
              ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@126@01)))))))))
              0))
          $Perm.Write
          $Perm.No))
      (ite
        (=
          r
          (Seq_index
            ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@126@01)))))))))
            1))
        $Perm.Write
        $Perm.No)))
  :pattern (($FVF.perm_Integer_value (as pm@136@01  $FPM) r))
  :qid |qp.resPrmSumDef18|)))
(assert (=>
  (= tid@86@01 0)
  (forall ((i@134@01 Int)) (!
    (and
      (or (<= 0 i@134@01) (not (<= 0 i@134@01)))
      (or
        (not (and (<= 0 i@134@01) (< i@134@01 half@92@01)))
        (and (<= 0 i@134@01) (< i@134@01 half@92@01))))
    :pattern ((Seq_index
      ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@126@01)))))))
      i@134@01))
    :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/third_party/max-two-range.vpr@135@51@135@151-aux|))))
(pop) ; 10
(pop) ; 9
; Joined path conditions
(assert (forall ((r $Ref)) (!
  (=>
    (ite
      (and
        (img@131@01 r)
        (Seq_contains (Seq_range 0 gsize@85@01) (inv@130@01 r)))
      (< $Perm.No (/ (to_real 1) (to_real gsize@85@01)))
      false)
    (=
      ($FVF.lookup_Integer_value (as sm@135@01  $FVF<Integer_value>) r)
      ($FVF.lookup_Integer_value ($SortWrappers.$SnapTo$FVF<Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@126@01))))))))))))))) r)))
  :pattern (($FVF.lookup_Integer_value (as sm@135@01  $FVF<Integer_value>) r))
  :pattern (($FVF.lookup_Integer_value ($SortWrappers.$SnapTo$FVF<Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@126@01))))))))))))))) r))
  :qid |qp.fvfValDef15|)))
(assert (forall ((r $Ref)) (!
  (=>
    (=
      r
      (Seq_index
        ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@126@01)))))))))
        0))
    (=
      ($FVF.lookup_Integer_value (as sm@135@01  $FVF<Integer_value>) r)
      ($FVF.lookup_Integer_value (as sm@132@01  $FVF<Integer_value>) r)))
  :pattern (($FVF.lookup_Integer_value (as sm@135@01  $FVF<Integer_value>) r))
  :pattern (($FVF.lookup_Integer_value (as sm@132@01  $FVF<Integer_value>) r))
  :qid |qp.fvfValDef16|)))
(assert (forall ((r $Ref)) (!
  (=>
    (=
      r
      (Seq_index
        ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@126@01)))))))))
        1))
    (=
      ($FVF.lookup_Integer_value (as sm@135@01  $FVF<Integer_value>) r)
      ($FVF.lookup_Integer_value (as sm@133@01  $FVF<Integer_value>) r)))
  :pattern (($FVF.lookup_Integer_value (as sm@135@01  $FVF<Integer_value>) r))
  :pattern (($FVF.lookup_Integer_value (as sm@133@01  $FVF<Integer_value>) r))
  :qid |qp.fvfValDef17|)))
(assert (forall ((r $Ref)) (!
  (=
    ($FVF.perm_Integer_value (as pm@136@01  $FPM) r)
    (+
      (+
        (ite
          (and
            (img@131@01 r)
            (Seq_contains (Seq_range 0 gsize@85@01) (inv@130@01 r)))
          (/ (to_real 1) (to_real gsize@85@01))
          $Perm.No)
        (ite
          (=
            r
            (Seq_index
              ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@126@01)))))))))
              0))
          $Perm.Write
          $Perm.No))
      (ite
        (=
          r
          (Seq_index
            ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@126@01)))))))))
            1))
        $Perm.Write
        $Perm.No)))
  :pattern (($FVF.perm_Integer_value (as pm@136@01  $FPM) r))
  :qid |qp.resPrmSumDef18|)))
(assert (=>
  (= this_barrier@89@01 1)
  (and
    (= this_barrier@89@01 1)
    (=>
      (= tid@86@01 0)
      (forall ((i@134@01 Int)) (!
        (and
          (or (<= 0 i@134@01) (not (<= 0 i@134@01)))
          (or
            (not (and (<= 0 i@134@01) (< i@134@01 half@92@01)))
            (and (<= 0 i@134@01) (< i@134@01 half@92@01))))
        :pattern ((Seq_index
          ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@126@01)))))))
          i@134@01))
        :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/third_party/max-two-range.vpr@135@51@135@151-aux|))))))
(assert (= this_barrier@89@01 1))
(assert (=>
  (and (= this_barrier@89@01 1) (= tid@86@01 0))
  (forall ((i@134@01 Int)) (!
    (=>
      (and (<= 0 i@134@01) (< i@134@01 half@92@01))
      (>=
        ($FVF.lookup_Integer_value (as sm@135@01  $FVF<Integer_value>) (Seq_index
          ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@126@01)))))))))
          0))
        ($FVF.lookup_Integer_value (as sm@135@01  $FVF<Integer_value>) (Seq_index
          ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@126@01)))))))
          i@134@01))))
    :pattern ((Seq_index
      ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@126@01)))))))
      i@134@01))
    :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/third_party/max-two-range.vpr@135@51@135@151|))))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@126@01))))))))))))))))))
  $Snap.unit))
; [eval] this_barrier == 1 ==> tid == 0 ==> (forall i: Int :: { this.src[i] } half <= i && i < gsize ==> this.dst[1].Integer_value >= this.src[i].Integer_value)
; [eval] this_barrier == 1
(push) ; 9
(push) ; 10
(set-option :timeout 10)
(assert (not (not (= this_barrier@89@01 1))))
(check-sat)
; unknown
(pop) ; 10
; 0.00s
; (get-info :all-statistics)
; [then-branch: 101 | this_barrier@89@01 == 1 | live]
; [else-branch: 101 | this_barrier@89@01 != 1 | dead]
(set-option :timeout 0)
(push) ; 10
; [then-branch: 101 | this_barrier@89@01 == 1]
; [eval] tid == 0 ==> (forall i: Int :: { this.src[i] } half <= i && i < gsize ==> this.dst[1].Integer_value >= this.src[i].Integer_value)
; [eval] tid == 0
(push) ; 11
(push) ; 12
(set-option :timeout 10)
(assert (not (not (= tid@86@01 0))))
(check-sat)
; unknown
(pop) ; 12
; 0.00s
; (get-info :all-statistics)
; [then-branch: 102 | tid@86@01 == 0 | live]
; [else-branch: 102 | tid@86@01 != 0 | dead]
(set-option :timeout 0)
(push) ; 12
; [then-branch: 102 | tid@86@01 == 0]
; [eval] (forall i: Int :: { this.src[i] } half <= i && i < gsize ==> this.dst[1].Integer_value >= this.src[i].Integer_value)
(declare-const i@137@01 Int)
(push) ; 13
; [eval] half <= i && i < gsize ==> this.dst[1].Integer_value >= this.src[i].Integer_value
; [eval] half <= i && i < gsize
; [eval] half <= i
(push) ; 14
; [then-branch: 103 | !(half@92@01 <= i@137@01) | live]
; [else-branch: 103 | half@92@01 <= i@137@01 | live]
(push) ; 15
; [then-branch: 103 | !(half@92@01 <= i@137@01)]
(assert (not (<= half@92@01 i@137@01)))
(pop) ; 15
(push) ; 15
; [else-branch: 103 | half@92@01 <= i@137@01]
(assert (<= half@92@01 i@137@01))
; [eval] i < gsize
(pop) ; 15
(pop) ; 14
; Joined path conditions
; Joined path conditions
(assert (or (<= half@92@01 i@137@01) (not (<= half@92@01 i@137@01))))
(push) ; 14
; [then-branch: 104 | half@92@01 <= i@137@01 && i@137@01 < gsize@85@01 | live]
; [else-branch: 104 | !(half@92@01 <= i@137@01 && i@137@01 < gsize@85@01) | live]
(push) ; 15
; [then-branch: 104 | half@92@01 <= i@137@01 && i@137@01 < gsize@85@01]
(assert (and (<= half@92@01 i@137@01) (< i@137@01 gsize@85@01)))
; [eval] this.dst[1].Integer_value >= this.src[i].Integer_value
; [eval] this.dst[1]
(push) ; 16
(set-option :timeout 10)
(assert (not (< $Perm.No $k@128@01)))
(check-sat)
; unsat
(pop) ; 16
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 16
(assert (not (<
  1
  (Seq_length
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@126@01)))))))))))))
(check-sat)
; unsat
(pop) ; 16
; 0.00s
; (get-info :all-statistics)
(assert (and
  (forall ((r $Ref)) (!
    (=>
      (ite
        (and
          (img@131@01 r)
          (Seq_contains (Seq_range 0 gsize@85@01) (inv@130@01 r)))
        (< $Perm.No (/ (to_real 1) (to_real gsize@85@01)))
        false)
      (=
        ($FVF.lookup_Integer_value (as sm@135@01  $FVF<Integer_value>) r)
        ($FVF.lookup_Integer_value ($SortWrappers.$SnapTo$FVF<Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@126@01))))))))))))))) r)))
    :pattern (($FVF.lookup_Integer_value (as sm@135@01  $FVF<Integer_value>) r))
    :pattern (($FVF.lookup_Integer_value ($SortWrappers.$SnapTo$FVF<Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@126@01))))))))))))))) r))
    :qid |qp.fvfValDef15|))
  (forall ((r $Ref)) (!
    (=>
      (=
        r
        (Seq_index
          ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@126@01)))))))))
          0))
      (=
        ($FVF.lookup_Integer_value (as sm@135@01  $FVF<Integer_value>) r)
        ($FVF.lookup_Integer_value (as sm@132@01  $FVF<Integer_value>) r)))
    :pattern (($FVF.lookup_Integer_value (as sm@135@01  $FVF<Integer_value>) r))
    :pattern (($FVF.lookup_Integer_value (as sm@132@01  $FVF<Integer_value>) r))
    :qid |qp.fvfValDef16|))
  (forall ((r $Ref)) (!
    (=>
      (=
        r
        (Seq_index
          ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@126@01)))))))))
          1))
      (=
        ($FVF.lookup_Integer_value (as sm@135@01  $FVF<Integer_value>) r)
        ($FVF.lookup_Integer_value (as sm@133@01  $FVF<Integer_value>) r)))
    :pattern (($FVF.lookup_Integer_value (as sm@135@01  $FVF<Integer_value>) r))
    :pattern (($FVF.lookup_Integer_value (as sm@133@01  $FVF<Integer_value>) r))
    :qid |qp.fvfValDef17|))))
(push) ; 16
(assert (not (<
  $Perm.No
  (+
    (+
      (ite
        (and
          (img@131@01 (Seq_index
            ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@126@01)))))))))
            1))
          (Seq_contains
            (Seq_range 0 gsize@85@01)
            (inv@130@01 (Seq_index
              ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@126@01)))))))))
              1))))
        (/ (to_real 1) (to_real gsize@85@01))
        $Perm.No)
      (ite
        (=
          (Seq_index
            ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@126@01)))))))))
            1)
          (Seq_index
            ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@126@01)))))))))
            0))
        $Perm.Write
        $Perm.No))
    (ite
      (=
        (Seq_index
          ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@126@01)))))))))
          1)
        (Seq_index
          ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@126@01)))))))))
          1))
      $Perm.Write
      $Perm.No)))))
(check-sat)
; unsat
(pop) ; 16
; 0.00s
; (get-info :all-statistics)
; [eval] this.src[i]
(push) ; 16
(set-option :timeout 10)
(assert (not (< $Perm.No $k@127@01)))
(check-sat)
; unsat
(pop) ; 16
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 16
(assert (not (>= i@137@01 0)))
(check-sat)
; unsat
(pop) ; 16
; 0.00s
; (get-info :all-statistics)
(push) ; 16
(assert (not (<
  i@137@01
  (Seq_length
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@126@01)))))))))))
(check-sat)
; unsat
(pop) ; 16
; 0.00s
; (get-info :all-statistics)
(assert (and
  (forall ((r $Ref)) (!
    (=>
      (ite
        (and
          (img@131@01 r)
          (Seq_contains (Seq_range 0 gsize@85@01) (inv@130@01 r)))
        (< $Perm.No (/ (to_real 1) (to_real gsize@85@01)))
        false)
      (=
        ($FVF.lookup_Integer_value (as sm@135@01  $FVF<Integer_value>) r)
        ($FVF.lookup_Integer_value ($SortWrappers.$SnapTo$FVF<Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@126@01))))))))))))))) r)))
    :pattern (($FVF.lookup_Integer_value (as sm@135@01  $FVF<Integer_value>) r))
    :pattern (($FVF.lookup_Integer_value ($SortWrappers.$SnapTo$FVF<Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@126@01))))))))))))))) r))
    :qid |qp.fvfValDef15|))
  (forall ((r $Ref)) (!
    (=>
      (=
        r
        (Seq_index
          ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@126@01)))))))))
          0))
      (=
        ($FVF.lookup_Integer_value (as sm@135@01  $FVF<Integer_value>) r)
        ($FVF.lookup_Integer_value (as sm@132@01  $FVF<Integer_value>) r)))
    :pattern (($FVF.lookup_Integer_value (as sm@135@01  $FVF<Integer_value>) r))
    :pattern (($FVF.lookup_Integer_value (as sm@132@01  $FVF<Integer_value>) r))
    :qid |qp.fvfValDef16|))
  (forall ((r $Ref)) (!
    (=>
      (=
        r
        (Seq_index
          ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@126@01)))))))))
          1))
      (=
        ($FVF.lookup_Integer_value (as sm@135@01  $FVF<Integer_value>) r)
        ($FVF.lookup_Integer_value (as sm@133@01  $FVF<Integer_value>) r)))
    :pattern (($FVF.lookup_Integer_value (as sm@135@01  $FVF<Integer_value>) r))
    :pattern (($FVF.lookup_Integer_value (as sm@133@01  $FVF<Integer_value>) r))
    :qid |qp.fvfValDef17|))))
(push) ; 16
(assert (not (<
  $Perm.No
  (+
    (+
      (ite
        (and
          (img@131@01 (Seq_index
            ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@126@01)))))))
            i@137@01))
          (Seq_contains
            (Seq_range 0 gsize@85@01)
            (inv@130@01 (Seq_index
              ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@126@01)))))))
              i@137@01))))
        (/ (to_real 1) (to_real gsize@85@01))
        $Perm.No)
      (ite
        (=
          (Seq_index
            ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@126@01)))))))
            i@137@01)
          (Seq_index
            ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@126@01)))))))))
            0))
        $Perm.Write
        $Perm.No))
    (ite
      (=
        (Seq_index
          ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@126@01)))))))
          i@137@01)
        (Seq_index
          ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@126@01)))))))))
          1))
      $Perm.Write
      $Perm.No)))))
(check-sat)
; unsat
(pop) ; 16
; 0.00s
; (get-info :all-statistics)
(pop) ; 15
(push) ; 15
; [else-branch: 104 | !(half@92@01 <= i@137@01 && i@137@01 < gsize@85@01)]
(assert (not (and (<= half@92@01 i@137@01) (< i@137@01 gsize@85@01))))
(pop) ; 15
(pop) ; 14
; Joined path conditions
(assert (forall ((r $Ref)) (!
  (=>
    (ite
      (and
        (img@131@01 r)
        (Seq_contains (Seq_range 0 gsize@85@01) (inv@130@01 r)))
      (< $Perm.No (/ (to_real 1) (to_real gsize@85@01)))
      false)
    (=
      ($FVF.lookup_Integer_value (as sm@135@01  $FVF<Integer_value>) r)
      ($FVF.lookup_Integer_value ($SortWrappers.$SnapTo$FVF<Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@126@01))))))))))))))) r)))
  :pattern (($FVF.lookup_Integer_value (as sm@135@01  $FVF<Integer_value>) r))
  :pattern (($FVF.lookup_Integer_value ($SortWrappers.$SnapTo$FVF<Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@126@01))))))))))))))) r))
  :qid |qp.fvfValDef15|)))
(assert (forall ((r $Ref)) (!
  (=>
    (=
      r
      (Seq_index
        ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@126@01)))))))))
        0))
    (=
      ($FVF.lookup_Integer_value (as sm@135@01  $FVF<Integer_value>) r)
      ($FVF.lookup_Integer_value (as sm@132@01  $FVF<Integer_value>) r)))
  :pattern (($FVF.lookup_Integer_value (as sm@135@01  $FVF<Integer_value>) r))
  :pattern (($FVF.lookup_Integer_value (as sm@132@01  $FVF<Integer_value>) r))
  :qid |qp.fvfValDef16|)))
(assert (forall ((r $Ref)) (!
  (=>
    (=
      r
      (Seq_index
        ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@126@01)))))))))
        1))
    (=
      ($FVF.lookup_Integer_value (as sm@135@01  $FVF<Integer_value>) r)
      ($FVF.lookup_Integer_value (as sm@133@01  $FVF<Integer_value>) r)))
  :pattern (($FVF.lookup_Integer_value (as sm@135@01  $FVF<Integer_value>) r))
  :pattern (($FVF.lookup_Integer_value (as sm@133@01  $FVF<Integer_value>) r))
  :qid |qp.fvfValDef17|)))
; Joined path conditions
(assert (or
  (not (and (<= half@92@01 i@137@01) (< i@137@01 gsize@85@01)))
  (and (<= half@92@01 i@137@01) (< i@137@01 gsize@85@01))))
(pop) ; 13
; Nested auxiliary terms: globals (aux)
(assert (forall ((r $Ref)) (!
  (=>
    (ite
      (and
        (img@131@01 r)
        (Seq_contains (Seq_range 0 gsize@85@01) (inv@130@01 r)))
      (< $Perm.No (/ (to_real 1) (to_real gsize@85@01)))
      false)
    (=
      ($FVF.lookup_Integer_value (as sm@135@01  $FVF<Integer_value>) r)
      ($FVF.lookup_Integer_value ($SortWrappers.$SnapTo$FVF<Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@126@01))))))))))))))) r)))
  :pattern (($FVF.lookup_Integer_value (as sm@135@01  $FVF<Integer_value>) r))
  :pattern (($FVF.lookup_Integer_value ($SortWrappers.$SnapTo$FVF<Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@126@01))))))))))))))) r))
  :qid |qp.fvfValDef15|)))
(assert (forall ((r $Ref)) (!
  (=>
    (=
      r
      (Seq_index
        ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@126@01)))))))))
        0))
    (=
      ($FVF.lookup_Integer_value (as sm@135@01  $FVF<Integer_value>) r)
      ($FVF.lookup_Integer_value (as sm@132@01  $FVF<Integer_value>) r)))
  :pattern (($FVF.lookup_Integer_value (as sm@135@01  $FVF<Integer_value>) r))
  :pattern (($FVF.lookup_Integer_value (as sm@132@01  $FVF<Integer_value>) r))
  :qid |qp.fvfValDef16|)))
(assert (forall ((r $Ref)) (!
  (=>
    (=
      r
      (Seq_index
        ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@126@01)))))))))
        1))
    (=
      ($FVF.lookup_Integer_value (as sm@135@01  $FVF<Integer_value>) r)
      ($FVF.lookup_Integer_value (as sm@133@01  $FVF<Integer_value>) r)))
  :pattern (($FVF.lookup_Integer_value (as sm@135@01  $FVF<Integer_value>) r))
  :pattern (($FVF.lookup_Integer_value (as sm@133@01  $FVF<Integer_value>) r))
  :qid |qp.fvfValDef17|)))
; Nested auxiliary terms: non-globals (aux)
(assert (forall ((i@137@01 Int)) (!
  (and
    (or (<= half@92@01 i@137@01) (not (<= half@92@01 i@137@01)))
    (or
      (not (and (<= half@92@01 i@137@01) (< i@137@01 gsize@85@01)))
      (and (<= half@92@01 i@137@01) (< i@137@01 gsize@85@01))))
  :pattern ((Seq_index
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@126@01)))))))
    i@137@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/third_party/max-two-range.vpr@136@51@136@155-aux|)))
(pop) ; 12
(pop) ; 11
; Joined path conditions
(assert (forall ((r $Ref)) (!
  (=>
    (ite
      (and
        (img@131@01 r)
        (Seq_contains (Seq_range 0 gsize@85@01) (inv@130@01 r)))
      (< $Perm.No (/ (to_real 1) (to_real gsize@85@01)))
      false)
    (=
      ($FVF.lookup_Integer_value (as sm@135@01  $FVF<Integer_value>) r)
      ($FVF.lookup_Integer_value ($SortWrappers.$SnapTo$FVF<Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@126@01))))))))))))))) r)))
  :pattern (($FVF.lookup_Integer_value (as sm@135@01  $FVF<Integer_value>) r))
  :pattern (($FVF.lookup_Integer_value ($SortWrappers.$SnapTo$FVF<Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@126@01))))))))))))))) r))
  :qid |qp.fvfValDef15|)))
(assert (forall ((r $Ref)) (!
  (=>
    (=
      r
      (Seq_index
        ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@126@01)))))))))
        0))
    (=
      ($FVF.lookup_Integer_value (as sm@135@01  $FVF<Integer_value>) r)
      ($FVF.lookup_Integer_value (as sm@132@01  $FVF<Integer_value>) r)))
  :pattern (($FVF.lookup_Integer_value (as sm@135@01  $FVF<Integer_value>) r))
  :pattern (($FVF.lookup_Integer_value (as sm@132@01  $FVF<Integer_value>) r))
  :qid |qp.fvfValDef16|)))
(assert (forall ((r $Ref)) (!
  (=>
    (=
      r
      (Seq_index
        ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@126@01)))))))))
        1))
    (=
      ($FVF.lookup_Integer_value (as sm@135@01  $FVF<Integer_value>) r)
      ($FVF.lookup_Integer_value (as sm@133@01  $FVF<Integer_value>) r)))
  :pattern (($FVF.lookup_Integer_value (as sm@135@01  $FVF<Integer_value>) r))
  :pattern (($FVF.lookup_Integer_value (as sm@133@01  $FVF<Integer_value>) r))
  :qid |qp.fvfValDef17|)))
(assert (=>
  (= tid@86@01 0)
  (forall ((i@137@01 Int)) (!
    (and
      (or (<= half@92@01 i@137@01) (not (<= half@92@01 i@137@01)))
      (or
        (not (and (<= half@92@01 i@137@01) (< i@137@01 gsize@85@01)))
        (and (<= half@92@01 i@137@01) (< i@137@01 gsize@85@01))))
    :pattern ((Seq_index
      ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@126@01)))))))
      i@137@01))
    :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/third_party/max-two-range.vpr@136@51@136@155-aux|))))
(pop) ; 10
(pop) ; 9
; Joined path conditions
(assert (forall ((r $Ref)) (!
  (=>
    (ite
      (and
        (img@131@01 r)
        (Seq_contains (Seq_range 0 gsize@85@01) (inv@130@01 r)))
      (< $Perm.No (/ (to_real 1) (to_real gsize@85@01)))
      false)
    (=
      ($FVF.lookup_Integer_value (as sm@135@01  $FVF<Integer_value>) r)
      ($FVF.lookup_Integer_value ($SortWrappers.$SnapTo$FVF<Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@126@01))))))))))))))) r)))
  :pattern (($FVF.lookup_Integer_value (as sm@135@01  $FVF<Integer_value>) r))
  :pattern (($FVF.lookup_Integer_value ($SortWrappers.$SnapTo$FVF<Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@126@01))))))))))))))) r))
  :qid |qp.fvfValDef15|)))
(assert (forall ((r $Ref)) (!
  (=>
    (=
      r
      (Seq_index
        ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@126@01)))))))))
        0))
    (=
      ($FVF.lookup_Integer_value (as sm@135@01  $FVF<Integer_value>) r)
      ($FVF.lookup_Integer_value (as sm@132@01  $FVF<Integer_value>) r)))
  :pattern (($FVF.lookup_Integer_value (as sm@135@01  $FVF<Integer_value>) r))
  :pattern (($FVF.lookup_Integer_value (as sm@132@01  $FVF<Integer_value>) r))
  :qid |qp.fvfValDef16|)))
(assert (forall ((r $Ref)) (!
  (=>
    (=
      r
      (Seq_index
        ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@126@01)))))))))
        1))
    (=
      ($FVF.lookup_Integer_value (as sm@135@01  $FVF<Integer_value>) r)
      ($FVF.lookup_Integer_value (as sm@133@01  $FVF<Integer_value>) r)))
  :pattern (($FVF.lookup_Integer_value (as sm@135@01  $FVF<Integer_value>) r))
  :pattern (($FVF.lookup_Integer_value (as sm@133@01  $FVF<Integer_value>) r))
  :qid |qp.fvfValDef17|)))
(assert (=>
  (and (= this_barrier@89@01 1) (= tid@86@01 0))
  (forall ((i@137@01 Int)) (!
    (and
      (or (<= half@92@01 i@137@01) (not (<= half@92@01 i@137@01)))
      (or
        (not (and (<= half@92@01 i@137@01) (< i@137@01 gsize@85@01)))
        (and (<= half@92@01 i@137@01) (< i@137@01 gsize@85@01))))
    :pattern ((Seq_index
      ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@126@01)))))))
      i@137@01))
    :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/third_party/max-two-range.vpr@136@51@136@155-aux|))))
(assert (=>
  (and (= this_barrier@89@01 1) (= tid@86@01 0))
  (forall ((i@137@01 Int)) (!
    (=>
      (and (<= half@92@01 i@137@01) (< i@137@01 gsize@85@01))
      (>=
        ($FVF.lookup_Integer_value (as sm@135@01  $FVF<Integer_value>) (Seq_index
          ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@126@01)))))))))
          1))
        ($FVF.lookup_Integer_value (as sm@135@01  $FVF<Integer_value>) (Seq_index
          ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@126@01)))))))
          i@137@01))))
    :pattern ((Seq_index
      ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@126@01)))))))
      i@137@01))
    :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/third_party/max-two-range.vpr@136@51@136@155|))))
(pop) ; 8
(pop) ; 7
(pop) ; 6
(push) ; 6
; [else-branch: 94 | tid@86@01 != 0]
(assert (not (= tid@86@01 0)))
(assert (=
  ($Snap.first ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@126@01))))))))))))))))
  $Snap.unit))
; [eval] tid == 0
; [then-branch: 105 | tid@86@01 == 0 | dead]
; [else-branch: 105 | tid@86@01 != 0 | live]
(push) ; 7
; [else-branch: 105 | tid@86@01 != 0]
(assert (=
  ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@126@01))))))))))))))))
  $Snap.unit))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@126@01)))))))))))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@126@01))))))))))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@126@01)))))))))))))))))))
; [eval] sys__result == 0
(push) ; 8
(set-option :timeout 10)
(assert (not (not (= sys__result@94@01 0))))
(check-sat)
; unsat
(pop) ; 8
; 0.00s
; (get-info :all-statistics)
; [then-branch: 106 | sys__result@94@01 == 0 | dead]
; [else-branch: 106 | sys__result@94@01 != 0 | live]
(set-option :timeout 0)
(push) ; 8
; [else-branch: 106 | sys__result@94@01 != 0]
(assert (not (= sys__result@94@01 0)))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@126@01))))))))))))))))
  $Snap.unit))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@126@01))))))))))))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@126@01)))))))))))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@126@01))))))))))))))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@126@01)))))))))))))))))
  $Snap.unit))
; [eval] sys__result == this_barrier
(assert (= sys__result@94@01 this_barrier@89@01))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@126@01)))))))))))))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@126@01))))))))))))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@126@01)))))))))))))))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@126@01))))))))))))))))))
  $Snap.unit))
; [eval] this_barrier == 1 ==> tid == 0 ==> (forall i: Int :: { this.src[i] } 0 <= i && i < half ==> this.dst[0].Integer_value >= this.src[i].Integer_value)
; [eval] this_barrier == 1
(push) ; 9
(push) ; 10
(set-option :timeout 10)
(assert (not (not (= this_barrier@89@01 1))))
(check-sat)
; unknown
(pop) ; 10
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 10
(set-option :timeout 10)
(assert (not (= this_barrier@89@01 1)))
(check-sat)
; unsat
(pop) ; 10
; 0.00s
; (get-info :all-statistics)
; [then-branch: 107 | this_barrier@89@01 == 1 | live]
; [else-branch: 107 | this_barrier@89@01 != 1 | dead]
(set-option :timeout 0)
(push) ; 10
; [then-branch: 107 | this_barrier@89@01 == 1]
(assert (= this_barrier@89@01 1))
; [eval] tid == 0 ==> (forall i: Int :: { this.src[i] } 0 <= i && i < half ==> this.dst[0].Integer_value >= this.src[i].Integer_value)
; [eval] tid == 0
(push) ; 11
; [then-branch: 108 | tid@86@01 == 0 | dead]
; [else-branch: 108 | tid@86@01 != 0 | live]
(push) ; 12
; [else-branch: 108 | tid@86@01 != 0]
(pop) ; 12
(pop) ; 11
; Joined path conditions
(pop) ; 10
(pop) ; 9
; Joined path conditions
(assert (= this_barrier@89@01 1))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@126@01))))))))))))))))))
  $Snap.unit))
; [eval] this_barrier == 1 ==> tid == 0 ==> (forall i: Int :: { this.src[i] } half <= i && i < gsize ==> this.dst[1].Integer_value >= this.src[i].Integer_value)
; [eval] this_barrier == 1
(push) ; 9
(push) ; 10
(set-option :timeout 10)
(assert (not (not (= this_barrier@89@01 1))))
(check-sat)
; unknown
(pop) ; 10
; 0.00s
; (get-info :all-statistics)
; [then-branch: 109 | this_barrier@89@01 == 1 | live]
; [else-branch: 109 | this_barrier@89@01 != 1 | dead]
(set-option :timeout 0)
(push) ; 10
; [then-branch: 109 | this_barrier@89@01 == 1]
; [eval] tid == 0 ==> (forall i: Int :: { this.src[i] } half <= i && i < gsize ==> this.dst[1].Integer_value >= this.src[i].Integer_value)
; [eval] tid == 0
(push) ; 11
; [then-branch: 110 | tid@86@01 == 0 | dead]
; [else-branch: 110 | tid@86@01 != 0 | live]
(push) ; 12
; [else-branch: 110 | tid@86@01 != 0]
(pop) ; 12
(pop) ; 11
; Joined path conditions
(pop) ; 10
(pop) ; 9
; Joined path conditions
(pop) ; 8
(pop) ; 7
(pop) ; 6
(pop) ; 5
(push) ; 5
; [else-branch: 93 | sys__result@94@01 != 1]
(assert (not (= sys__result@94@01 1)))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@126@01)))))))))))))))
  $Snap.unit))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@126@01)))))))))))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@126@01))))))))))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@126@01)))))))))))))))))))
; [eval] sys__result == 0
(push) ; 6
(set-option :timeout 10)
(assert (not (not (= sys__result@94@01 0))))
(check-sat)
; unknown
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 6
(set-option :timeout 10)
(assert (not (= sys__result@94@01 0)))
(check-sat)
; unknown
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
; [then-branch: 111 | sys__result@94@01 == 0 | live]
; [else-branch: 111 | sys__result@94@01 != 0 | live]
(set-option :timeout 0)
(push) ; 6
; [then-branch: 111 | sys__result@94@01 == 0]
(assert (= sys__result@94@01 0))
; [eval] this.dst[tid]
(push) ; 7
(set-option :timeout 10)
(assert (not (< $Perm.No $k@128@01)))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 7
(assert (not (>= tid@86@01 0)))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(push) ; 7
(assert (not (<
  tid@86@01
  (Seq_length
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@126@01)))))))))))))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(declare-const sm@138@01 $FVF<Integer_value>)
; Definitional axioms for singleton-SM's value
(assert (=
  ($FVF.lookup_Integer_value (as sm@138@01  $FVF<Integer_value>) (Seq_index
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@126@01)))))))))
    tid@86@01))
  ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@126@01)))))))))))))))))))
(assert (<=
  $Perm.No
  (ite
    (=
      (Seq_index
        ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@126@01)))))))))
        tid@86@01)
      (Seq_index
        ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@126@01)))))))))
        tid@86@01))
    $Perm.Write
    $Perm.No)))
(assert (<=
  (ite
    (=
      (Seq_index
        ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@126@01)))))))))
        tid@86@01)
      (Seq_index
        ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@126@01)))))))))
        tid@86@01))
    $Perm.Write
    $Perm.No)
  $Perm.Write))
(assert (=>
  (=
    (Seq_index
      ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@126@01)))))))))
      tid@86@01)
    (Seq_index
      ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@126@01)))))))))
      tid@86@01))
  (not
    (=
      (Seq_index
        ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@126@01)))))))))
        tid@86@01)
      $Ref.null))))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@126@01))))))))))))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@126@01)))))))))))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@126@01))))))))))))))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@126@01)))))))))))))))))
  $Snap.unit))
; [eval] sys__result == this_barrier
(assert (= sys__result@94@01 this_barrier@89@01))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@126@01)))))))))))))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@126@01))))))))))))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@126@01)))))))))))))))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@126@01))))))))))))))))))
  $Snap.unit))
; [eval] this_barrier == 1 ==> tid == 0 ==> (forall i: Int :: { this.src[i] } 0 <= i && i < half ==> this.dst[0].Integer_value >= this.src[i].Integer_value)
; [eval] this_barrier == 1
(push) ; 7
(push) ; 8
(set-option :timeout 10)
(assert (not (not (= this_barrier@89@01 1))))
(check-sat)
; unsat
(pop) ; 8
; 0.00s
; (get-info :all-statistics)
; [then-branch: 112 | this_barrier@89@01 == 1 | dead]
; [else-branch: 112 | this_barrier@89@01 != 1 | live]
(set-option :timeout 0)
(push) ; 8
; [else-branch: 112 | this_barrier@89@01 != 1]
(assert (not (= this_barrier@89@01 1)))
(pop) ; 8
(pop) ; 7
; Joined path conditions
(assert (not (= this_barrier@89@01 1)))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@126@01))))))))))))))))))
  $Snap.unit))
; [eval] this_barrier == 1 ==> tid == 0 ==> (forall i: Int :: { this.src[i] } half <= i && i < gsize ==> this.dst[1].Integer_value >= this.src[i].Integer_value)
; [eval] this_barrier == 1
(push) ; 7
; [then-branch: 113 | this_barrier@89@01 == 1 | dead]
; [else-branch: 113 | this_barrier@89@01 != 1 | live]
(push) ; 8
; [else-branch: 113 | this_barrier@89@01 != 1]
(pop) ; 8
(pop) ; 7
; Joined path conditions
(pop) ; 6
(push) ; 6
; [else-branch: 111 | sys__result@94@01 != 0]
(assert (not (= sys__result@94@01 0)))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@126@01))))))))))))))))
  $Snap.unit))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@126@01))))))))))))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@126@01)))))))))))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@126@01))))))))))))))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@126@01)))))))))))))))))
  $Snap.unit))
; [eval] sys__result == this_barrier
(assert (= sys__result@94@01 this_barrier@89@01))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@126@01)))))))))))))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@126@01))))))))))))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@126@01)))))))))))))))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@126@01))))))))))))))))))
  $Snap.unit))
; [eval] this_barrier == 1 ==> tid == 0 ==> (forall i: Int :: { this.src[i] } 0 <= i && i < half ==> this.dst[0].Integer_value >= this.src[i].Integer_value)
; [eval] this_barrier == 1
(push) ; 7
(push) ; 8
(set-option :timeout 10)
(assert (not (not (= this_barrier@89@01 1))))
(check-sat)
; unsat
(pop) ; 8
; 0.00s
; (get-info :all-statistics)
; [then-branch: 114 | this_barrier@89@01 == 1 | dead]
; [else-branch: 114 | this_barrier@89@01 != 1 | live]
(set-option :timeout 0)
(push) ; 8
; [else-branch: 114 | this_barrier@89@01 != 1]
(assert (not (= this_barrier@89@01 1)))
(pop) ; 8
(pop) ; 7
; Joined path conditions
(assert (not (= this_barrier@89@01 1)))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@126@01))))))))))))))))))
  $Snap.unit))
; [eval] this_barrier == 1 ==> tid == 0 ==> (forall i: Int :: { this.src[i] } half <= i && i < gsize ==> this.dst[1].Integer_value >= this.src[i].Integer_value)
; [eval] this_barrier == 1
(push) ; 7
; [then-branch: 115 | this_barrier@89@01 == 1 | dead]
; [else-branch: 115 | this_barrier@89@01 != 1 | live]
(push) ; 8
; [else-branch: 115 | this_barrier@89@01 != 1]
(pop) ; 8
(pop) ; 7
; Joined path conditions
(pop) ; 6
(pop) ; 5
(pop) ; 4
(push) ; 4
; [exec]
; inhale false
(pop) ; 4
(pop) ; 3
(push) ; 3
; [else-branch: 83 | last_barrier@90@01 != 0]
(assert (not (= last_barrier@90@01 0)))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@95@01))))))))))))))))
  $Snap.unit))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@95@01))))))))))))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@95@01)))))))))))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@95@01))))))))))))))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@95@01)))))))))))))))))
  $Snap.unit))
; [eval] this_barrier == 1 ==> half + half == gsize
; [eval] this_barrier == 1
(push) ; 4
(push) ; 5
(set-option :timeout 10)
(assert (not (not (= this_barrier@89@01 1))))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
; [then-branch: 116 | this_barrier@89@01 == 1 | dead]
; [else-branch: 116 | this_barrier@89@01 != 1 | live]
(set-option :timeout 0)
(push) ; 5
; [else-branch: 116 | this_barrier@89@01 != 1]
(assert (not (= this_barrier@89@01 1)))
(pop) ; 5
(pop) ; 4
; Joined path conditions
(assert (not (= this_barrier@89@01 1)))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@95@01)))))))))))))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@95@01))))))))))))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@95@01)))))))))))))))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@95@01))))))))))))))))))
  $Snap.unit))
; [eval] this_barrier == 1 ==> tid == 0 ==> (forall i: Int :: { this.src[i] } 0 <= i && i < half ==> this.dst[0].Integer_value >= this.src[i].Integer_value)
; [eval] this_barrier == 1
(push) ; 4
; [then-branch: 117 | this_barrier@89@01 == 1 | dead]
; [else-branch: 117 | this_barrier@89@01 != 1 | live]
(push) ; 5
; [else-branch: 117 | this_barrier@89@01 != 1]
(pop) ; 5
(pop) ; 4
; Joined path conditions
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@95@01))))))))))))))))))
  $Snap.unit))
; [eval] this_barrier == 1 ==> tid == 1 ==> (forall i: Int :: { this.src[i] } half <= i && i < gsize ==> this.dst[1].Integer_value >= this.src[i].Integer_value)
; [eval] this_barrier == 1
(push) ; 4
; [then-branch: 118 | this_barrier@89@01 == 1 | dead]
; [else-branch: 118 | this_barrier@89@01 != 1 | live]
(push) ; 5
; [else-branch: 118 | this_barrier@89@01 != 1]
(pop) ; 5
(pop) ; 4
; Joined path conditions
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
(set-option :timeout 0)
(push) ; 4
(declare-const $t@139@01 $Snap)
(assert (= $t@139@01 ($Snap.combine ($Snap.first $t@139@01) ($Snap.second $t@139@01))))
(assert (= ($Snap.first $t@139@01) $Snap.unit))
; [eval] 0 <= tid
(assert (=
  ($Snap.second $t@139@01)
  ($Snap.combine
    ($Snap.first ($Snap.second $t@139@01))
    ($Snap.second ($Snap.second $t@139@01)))))
(assert (= ($Snap.first ($Snap.second $t@139@01)) $Snap.unit))
; [eval] tid < tcount
(assert (=
  ($Snap.second ($Snap.second $t@139@01))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second $t@139@01)))
    ($Snap.second ($Snap.second ($Snap.second $t@139@01))))))
(assert (= ($Snap.first ($Snap.second ($Snap.second $t@139@01))) $Snap.unit))
; [eval] tid == lid
(assert (=
  ($Snap.second ($Snap.second ($Snap.second $t@139@01)))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@139@01))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@139@01)))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@139@01))))
  $Snap.unit))
; [eval] tcount == gsize
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@139@01))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@139@01)))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@139@01))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@139@01)))))
  $Snap.unit))
; [eval] gid == 0
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@139@01)))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@139@01))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@139@01)))))))))
(declare-const $k@140@01 $Perm)
(assert ($Perm.isReadVar $k@140@01))
(assert (<= $Perm.No $k@140@01))
(assert (<= $k@140@01 $Perm.Write))
(assert (=> (< $Perm.No $k@140@01) (not (= this@83@01 $Ref.null))))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@139@01))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@139@01)))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@139@01))))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@139@01)))))))
  $Snap.unit))
; [eval] |this.src| == gsize
; [eval] |this.src|
(push) ; 5
(set-option :timeout 10)
(assert (not (< $Perm.No $k@140@01)))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(assert (=
  (Seq_length
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@139@01))))))))
  gsize@85@01))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@139@01)))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@139@01))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@139@01)))))))))))
(declare-const $k@141@01 $Perm)
(assert ($Perm.isReadVar $k@141@01))
(assert (<= $Perm.No $k@141@01))
(assert (<= $k@141@01 $Perm.Write))
(assert (=> (< $Perm.No $k@141@01) (not (= this@83@01 $Ref.null))))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@139@01))))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@139@01)))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@139@01))))))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@139@01)))))))))
  $Snap.unit))
; [eval] |this.dst| == gsize
; [eval] |this.dst|
(set-option :timeout 0)
(push) ; 5
(set-option :timeout 10)
(assert (not (< $Perm.No $k@141@01)))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(assert (=
  (Seq_length
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@139@01))))))))))
  gsize@85@01))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@139@01)))))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@139@01))))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@139@01)))))))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@139@01))))))))))
  $Snap.unit))
; [eval] 4 <= gsize
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@139@01))))))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@139@01)))))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@139@01))))))))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@139@01)))))))))))
  $Snap.unit))
; [eval] gsize % 2 == 0
; [eval] gsize % 2
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@139@01)))))))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@139@01))))))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@139@01)))))))))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@139@01))))))))))))
  $Snap.unit))
; [eval] this.src == old(this.src)
(set-option :timeout 0)
(push) ; 5
(set-option :timeout 10)
(assert (not (< $Perm.No $k@140@01)))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
; [eval] old(this.src)
(set-option :timeout 0)
(push) ; 5
(set-option :timeout 10)
(assert (not (< $Perm.No $k@96@01)))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(assert (Seq_equal
  ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@139@01)))))))
  ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@95@01))))))))))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@139@01))))))))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@139@01)))))))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@139@01))))))))))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@139@01)))))))))))))
  $Snap.unit))
; [eval] this.dst == old(this.dst)
(set-option :timeout 0)
(push) ; 5
(set-option :timeout 10)
(assert (not (< $Perm.No $k@141@01)))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
; [eval] old(this.dst)
(set-option :timeout 0)
(push) ; 5
(set-option :timeout 10)
(assert (not (< $Perm.No $k@97@01)))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(assert (Seq_equal
  ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@139@01)))))))))
  ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@95@01))))))))))))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@139@01)))))))))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@139@01))))))))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@139@01)))))))))))))))))
(declare-const i@142@01 Int)
(set-option :timeout 0)
(push) ; 5
; [eval] (i in [0..gsize))
; [eval] [0..gsize)
(assert (Seq_contains (Seq_range 0 gsize@85@01) i@142@01))
; [eval] this.src[i]
(push) ; 6
(set-option :timeout 10)
(assert (not (< $Perm.No $k@140@01)))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 6
(assert (not (>= i@142@01 0)))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(push) ; 6
(assert (not (<
  i@142@01
  (Seq_length
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@139@01)))))))))))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(push) ; 6
(assert (not (not (= gsize@85@01 0))))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(pop) ; 5
(declare-fun inv@143@01 ($Ref) Int)
(declare-fun img@144@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
(push) ; 5
(assert (not (forall ((i@142@01 Int)) (!
  (=>
    (Seq_contains (Seq_range 0 gsize@85@01) i@142@01)
    (or
      (= (/ (to_real 1) (to_real gsize@85@01)) $Perm.No)
      (< $Perm.No (/ (to_real 1) (to_real gsize@85@01)))))
  
  :qid |quant-u-17942|))))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
; Check receiver injectivity
(push) ; 5
(assert (not (forall ((i1@142@01 Int) (i2@142@01 Int)) (!
  (=>
    (and
      (and
        (Seq_contains (Seq_range 0 gsize@85@01) i1@142@01)
        (< $Perm.No (/ (to_real 1) (to_real gsize@85@01))))
      (and
        (Seq_contains (Seq_range 0 gsize@85@01) i2@142@01)
        (< $Perm.No (/ (to_real 1) (to_real gsize@85@01))))
      (=
        (Seq_index
          ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@139@01)))))))
          i1@142@01)
        (Seq_index
          ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@139@01)))))))
          i2@142@01)))
    (= i1@142@01 i2@142@01))
  
  :qid |Integer_value-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((i@142@01 Int)) (!
  (=>
    (and
      (Seq_contains (Seq_range 0 gsize@85@01) i@142@01)
      (< $Perm.No (/ (to_real 1) (to_real gsize@85@01))))
    (and
      (=
        (inv@143@01 (Seq_index
          ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@139@01)))))))
          i@142@01))
        i@142@01)
      (img@144@01 (Seq_index
        ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@139@01)))))))
        i@142@01))))
  :pattern ((Seq_index
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@139@01)))))))
    i@142@01))
  :qid |quant-u-17943|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@144@01 r)
      (and
        (Seq_contains (Seq_range 0 gsize@85@01) (inv@143@01 r))
        (< $Perm.No (/ (to_real 1) (to_real gsize@85@01)))))
    (=
      (Seq_index
        ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@139@01)))))))
        (inv@143@01 r))
      r))
  :pattern ((inv@143@01 r))
  :qid |Integer_value-fctOfInv|)))
; Permissions are non-negative
(assert (forall ((i@142@01 Int)) (!
  (<= $Perm.No (/ (to_real 1) (to_real gsize@85@01)))
  :pattern ((Seq_index
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@139@01)))))))
    i@142@01))
  :qid |Integer_value-permAtLeastZero|)))
; Field permissions are at most one
(assert (forall ((i@142@01 Int)) (!
  (<= (/ (to_real 1) (to_real gsize@85@01)) $Perm.Write)
  :pattern ((Seq_index
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@139@01)))))))
    i@142@01))
  :qid |Integer_value-permAtMostOne|)))
; Permission implies non-null receiver
(assert (forall ((i@142@01 Int)) (!
  (=>
    (and
      (Seq_contains (Seq_range 0 gsize@85@01) i@142@01)
      (< $Perm.No (/ (to_real 1) (to_real gsize@85@01))))
    (not
      (=
        (Seq_index
          ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@139@01)))))))
          i@142@01)
        $Ref.null)))
  :pattern ((Seq_index
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@139@01)))))))
    i@142@01))
  :qid |Integer_value-permImpliesNonNull|)))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@139@01))))))))))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@139@01)))))))))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@139@01))))))))))))))))))
; [eval] sys__result == 1
(push) ; 5
(set-option :timeout 10)
(assert (not (not (= sys__result@94@01 1))))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 5
(set-option :timeout 10)
(assert (not (= sys__result@94@01 1)))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
; [then-branch: 119 | sys__result@94@01 == 1 | live]
; [else-branch: 119 | sys__result@94@01 != 1 | live]
(set-option :timeout 0)
(push) ; 5
; [then-branch: 119 | sys__result@94@01 == 1]
(assert (= sys__result@94@01 1))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@139@01)))))))))))))))
  ($Snap.combine
    ($Snap.first ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@139@01))))))))))))))))
    ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@139@01)))))))))))))))))))
; [eval] tid == 0
(push) ; 6
(set-option :timeout 10)
(assert (not (not (= tid@86@01 0))))
(check-sat)
; unknown
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 6
(set-option :timeout 10)
(assert (not (= tid@86@01 0)))
(check-sat)
; unknown
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
; [then-branch: 120 | tid@86@01 == 0 | live]
; [else-branch: 120 | tid@86@01 != 0 | live]
(set-option :timeout 0)
(push) ; 6
; [then-branch: 120 | tid@86@01 == 0]
(assert (= tid@86@01 0))
; [eval] this.dst[0]
(push) ; 7
(set-option :timeout 10)
(assert (not (< $Perm.No $k@141@01)))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 7
(assert (not (<
  0
  (Seq_length
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@139@01)))))))))))))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(declare-const sm@145@01 $FVF<Integer_value>)
; Definitional axioms for singleton-SM's value
(assert (=
  ($FVF.lookup_Integer_value (as sm@145@01  $FVF<Integer_value>) (Seq_index
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@139@01)))))))))
    0))
  ($SortWrappers.$SnapToInt ($Snap.first ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@139@01)))))))))))))))))))
(assert (<=
  $Perm.No
  (ite
    (=
      (Seq_index
        ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@139@01)))))))))
        0)
      (Seq_index
        ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@139@01)))))))))
        0))
    $Perm.Write
    $Perm.No)))
(assert (<=
  (ite
    (=
      (Seq_index
        ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@139@01)))))))))
        0)
      (Seq_index
        ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@139@01)))))))))
        0))
    $Perm.Write
    $Perm.No)
  $Perm.Write))
(assert (=>
  (=
    (Seq_index
      ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@139@01)))))))))
      0)
    (Seq_index
      ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@139@01)))))))))
      0))
  (not
    (=
      (Seq_index
        ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@139@01)))))))))
        0)
      $Ref.null))))
; [eval] tid == 0
(push) ; 7
(set-option :timeout 10)
(assert (not (not (= tid@86@01 0))))
(check-sat)
; unknown
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
; [then-branch: 121 | tid@86@01 == 0 | live]
; [else-branch: 121 | tid@86@01 != 0 | dead]
(set-option :timeout 0)
(push) ; 7
; [then-branch: 121 | tid@86@01 == 0]
; [eval] this.dst[1]
(push) ; 8
(set-option :timeout 10)
(assert (not (< $Perm.No $k@141@01)))
(check-sat)
; unsat
(pop) ; 8
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 8
(assert (not (<
  1
  (Seq_length
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@139@01)))))))))))))
(check-sat)
; unsat
(pop) ; 8
; 0.00s
; (get-info :all-statistics)
(declare-const sm@146@01 $FVF<Integer_value>)
; Definitional axioms for singleton-SM's value
(assert (=
  ($FVF.lookup_Integer_value (as sm@146@01  $FVF<Integer_value>) (Seq_index
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@139@01)))))))))
    1))
  ($SortWrappers.$SnapToInt ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@139@01)))))))))))))))))))
(push) ; 8
(set-option :timeout 10)
(assert (not (and
  (and
    (=
      (Seq_index
        ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@139@01)))))))))
        1)
      (Seq_index
        ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@139@01)))))))))
        1))
    (=
      (Seq_index
        ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@139@01)))))))))
        0)
      (Seq_index
        ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@139@01)))))))))
        0)))
  (=
    (Seq_index
      ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@139@01)))))))))
      1)
    (Seq_index
      ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@139@01)))))))))
      0)))))
(check-sat)
; unknown
(pop) ; 8
; 0.00s
; (get-info :all-statistics)
(assert (<=
  $Perm.No
  (ite
    (=
      (Seq_index
        ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@139@01)))))))))
        1)
      (Seq_index
        ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@139@01)))))))))
        1))
    $Perm.Write
    $Perm.No)))
(assert (<=
  (ite
    (=
      (Seq_index
        ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@139@01)))))))))
        1)
      (Seq_index
        ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@139@01)))))))))
        1))
    $Perm.Write
    $Perm.No)
  $Perm.Write))
(assert (=>
  (=
    (Seq_index
      ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@139@01)))))))))
      1)
    (Seq_index
      ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@139@01)))))))))
      1))
  (not
    (=
      (Seq_index
        ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@139@01)))))))))
        1)
      $Ref.null))))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@139@01)))))))))))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@139@01))))))))))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@139@01)))))))))))))))))))
; [eval] sys__result == 0
(set-option :timeout 0)
(push) ; 8
(set-option :timeout 10)
(assert (not (not (= sys__result@94@01 0))))
(check-sat)
; unsat
(pop) ; 8
; 0.00s
; (get-info :all-statistics)
; [then-branch: 122 | sys__result@94@01 == 0 | dead]
; [else-branch: 122 | sys__result@94@01 != 0 | live]
(set-option :timeout 0)
(push) ; 8
; [else-branch: 122 | sys__result@94@01 != 0]
(assert (not (= sys__result@94@01 0)))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@139@01))))))))))))))))
  $Snap.unit))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@139@01))))))))))))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@139@01)))))))))))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@139@01))))))))))))))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@139@01)))))))))))))))))
  $Snap.unit))
; [eval] sys__result == this_barrier
(assert (= sys__result@94@01 this_barrier@89@01))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@139@01)))))))))))))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@139@01))))))))))))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@139@01)))))))))))))))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@139@01))))))))))))))))))
  $Snap.unit))
; [eval] this_barrier == 1 ==> tid == 0 ==> (forall i: Int :: { this.src[i] } 0 <= i && i < half ==> this.dst[0].Integer_value >= this.src[i].Integer_value)
; [eval] this_barrier == 1
(push) ; 9
; [then-branch: 123 | this_barrier@89@01 == 1 | dead]
; [else-branch: 123 | this_barrier@89@01 != 1 | live]
(push) ; 10
; [else-branch: 123 | this_barrier@89@01 != 1]
(pop) ; 10
(pop) ; 9
; Joined path conditions
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@139@01))))))))))))))))))
  $Snap.unit))
; [eval] this_barrier == 1 ==> tid == 0 ==> (forall i: Int :: { this.src[i] } half <= i && i < gsize ==> this.dst[1].Integer_value >= this.src[i].Integer_value)
; [eval] this_barrier == 1
(push) ; 9
; [then-branch: 124 | this_barrier@89@01 == 1 | dead]
; [else-branch: 124 | this_barrier@89@01 != 1 | live]
(push) ; 10
; [else-branch: 124 | this_barrier@89@01 != 1]
(pop) ; 10
(pop) ; 9
; Joined path conditions
(pop) ; 8
(pop) ; 7
(pop) ; 6
(push) ; 6
; [else-branch: 120 | tid@86@01 != 0]
(assert (not (= tid@86@01 0)))
(assert (=
  ($Snap.first ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@139@01))))))))))))))))
  $Snap.unit))
; [eval] tid == 0
; [then-branch: 125 | tid@86@01 == 0 | dead]
; [else-branch: 125 | tid@86@01 != 0 | live]
(push) ; 7
; [else-branch: 125 | tid@86@01 != 0]
(assert (=
  ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@139@01))))))))))))))))
  $Snap.unit))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@139@01)))))))))))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@139@01))))))))))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@139@01)))))))))))))))))))
; [eval] sys__result == 0
(push) ; 8
(set-option :timeout 10)
(assert (not (not (= sys__result@94@01 0))))
(check-sat)
; unsat
(pop) ; 8
; 0.00s
; (get-info :all-statistics)
; [then-branch: 126 | sys__result@94@01 == 0 | dead]
; [else-branch: 126 | sys__result@94@01 != 0 | live]
(set-option :timeout 0)
(push) ; 8
; [else-branch: 126 | sys__result@94@01 != 0]
(assert (not (= sys__result@94@01 0)))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@139@01))))))))))))))))
  $Snap.unit))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@139@01))))))))))))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@139@01)))))))))))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@139@01))))))))))))))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@139@01)))))))))))))))))
  $Snap.unit))
; [eval] sys__result == this_barrier
(assert (= sys__result@94@01 this_barrier@89@01))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@139@01)))))))))))))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@139@01))))))))))))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@139@01)))))))))))))))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@139@01))))))))))))))))))
  $Snap.unit))
; [eval] this_barrier == 1 ==> tid == 0 ==> (forall i: Int :: { this.src[i] } 0 <= i && i < half ==> this.dst[0].Integer_value >= this.src[i].Integer_value)
; [eval] this_barrier == 1
(push) ; 9
; [then-branch: 127 | this_barrier@89@01 == 1 | dead]
; [else-branch: 127 | this_barrier@89@01 != 1 | live]
(push) ; 10
; [else-branch: 127 | this_barrier@89@01 != 1]
(pop) ; 10
(pop) ; 9
; Joined path conditions
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@139@01))))))))))))))))))
  $Snap.unit))
; [eval] this_barrier == 1 ==> tid == 0 ==> (forall i: Int :: { this.src[i] } half <= i && i < gsize ==> this.dst[1].Integer_value >= this.src[i].Integer_value)
; [eval] this_barrier == 1
(push) ; 9
; [then-branch: 128 | this_barrier@89@01 == 1 | dead]
; [else-branch: 128 | this_barrier@89@01 != 1 | live]
(push) ; 10
; [else-branch: 128 | this_barrier@89@01 != 1]
(pop) ; 10
(pop) ; 9
; Joined path conditions
(pop) ; 8
(pop) ; 7
(pop) ; 6
(pop) ; 5
(push) ; 5
; [else-branch: 119 | sys__result@94@01 != 1]
(assert (not (= sys__result@94@01 1)))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@139@01)))))))))))))))
  $Snap.unit))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@139@01)))))))))))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@139@01))))))))))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@139@01)))))))))))))))))))
; [eval] sys__result == 0
(push) ; 6
(set-option :timeout 10)
(assert (not (not (= sys__result@94@01 0))))
(check-sat)
; unknown
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 6
(set-option :timeout 10)
(assert (not (= sys__result@94@01 0)))
(check-sat)
; unknown
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
; [then-branch: 129 | sys__result@94@01 == 0 | live]
; [else-branch: 129 | sys__result@94@01 != 0 | live]
(set-option :timeout 0)
(push) ; 6
; [then-branch: 129 | sys__result@94@01 == 0]
(assert (= sys__result@94@01 0))
; [eval] this.dst[tid]
(push) ; 7
(set-option :timeout 10)
(assert (not (< $Perm.No $k@141@01)))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 7
(assert (not (>= tid@86@01 0)))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(push) ; 7
(assert (not (<
  tid@86@01
  (Seq_length
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@139@01)))))))))))))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(declare-const sm@147@01 $FVF<Integer_value>)
; Definitional axioms for singleton-SM's value
(assert (=
  ($FVF.lookup_Integer_value (as sm@147@01  $FVF<Integer_value>) (Seq_index
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@139@01)))))))))
    tid@86@01))
  ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@139@01)))))))))))))))))))
(assert (<=
  $Perm.No
  (ite
    (=
      (Seq_index
        ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@139@01)))))))))
        tid@86@01)
      (Seq_index
        ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@139@01)))))))))
        tid@86@01))
    $Perm.Write
    $Perm.No)))
(assert (<=
  (ite
    (=
      (Seq_index
        ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@139@01)))))))))
        tid@86@01)
      (Seq_index
        ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@139@01)))))))))
        tid@86@01))
    $Perm.Write
    $Perm.No)
  $Perm.Write))
(assert (=>
  (=
    (Seq_index
      ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@139@01)))))))))
      tid@86@01)
    (Seq_index
      ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@139@01)))))))))
      tid@86@01))
  (not
    (=
      (Seq_index
        ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@139@01)))))))))
        tid@86@01)
      $Ref.null))))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@139@01))))))))))))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@139@01)))))))))))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@139@01))))))))))))))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@139@01)))))))))))))))))
  $Snap.unit))
; [eval] sys__result == this_barrier
(assert (= sys__result@94@01 this_barrier@89@01))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@139@01)))))))))))))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@139@01))))))))))))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@139@01)))))))))))))))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@139@01))))))))))))))))))
  $Snap.unit))
; [eval] this_barrier == 1 ==> tid == 0 ==> (forall i: Int :: { this.src[i] } 0 <= i && i < half ==> this.dst[0].Integer_value >= this.src[i].Integer_value)
; [eval] this_barrier == 1
(push) ; 7
; [then-branch: 130 | this_barrier@89@01 == 1 | dead]
; [else-branch: 130 | this_barrier@89@01 != 1 | live]
(push) ; 8
; [else-branch: 130 | this_barrier@89@01 != 1]
(pop) ; 8
(pop) ; 7
; Joined path conditions
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@139@01))))))))))))))))))
  $Snap.unit))
; [eval] this_barrier == 1 ==> tid == 0 ==> (forall i: Int :: { this.src[i] } half <= i && i < gsize ==> this.dst[1].Integer_value >= this.src[i].Integer_value)
; [eval] this_barrier == 1
(push) ; 7
; [then-branch: 131 | this_barrier@89@01 == 1 | dead]
; [else-branch: 131 | this_barrier@89@01 != 1 | live]
(push) ; 8
; [else-branch: 131 | this_barrier@89@01 != 1]
(pop) ; 8
(pop) ; 7
; Joined path conditions
(pop) ; 6
(push) ; 6
; [else-branch: 129 | sys__result@94@01 != 0]
(assert (not (= sys__result@94@01 0)))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@139@01))))))))))))))))
  $Snap.unit))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@139@01))))))))))))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@139@01)))))))))))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@139@01))))))))))))))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@139@01)))))))))))))))))
  $Snap.unit))
; [eval] sys__result == this_barrier
(assert (= sys__result@94@01 this_barrier@89@01))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@139@01)))))))))))))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@139@01))))))))))))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@139@01)))))))))))))))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@139@01))))))))))))))))))
  $Snap.unit))
; [eval] this_barrier == 1 ==> tid == 0 ==> (forall i: Int :: { this.src[i] } 0 <= i && i < half ==> this.dst[0].Integer_value >= this.src[i].Integer_value)
; [eval] this_barrier == 1
(push) ; 7
; [then-branch: 132 | this_barrier@89@01 == 1 | dead]
; [else-branch: 132 | this_barrier@89@01 != 1 | live]
(push) ; 8
; [else-branch: 132 | this_barrier@89@01 != 1]
(pop) ; 8
(pop) ; 7
; Joined path conditions
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@139@01))))))))))))))))))
  $Snap.unit))
; [eval] this_barrier == 1 ==> tid == 0 ==> (forall i: Int :: { this.src[i] } half <= i && i < gsize ==> this.dst[1].Integer_value >= this.src[i].Integer_value)
; [eval] this_barrier == 1
(push) ; 7
; [then-branch: 133 | this_barrier@89@01 == 1 | dead]
; [else-branch: 133 | this_barrier@89@01 != 1 | live]
(push) ; 8
; [else-branch: 133 | this_barrier@89@01 != 1]
(pop) ; 8
(pop) ; 7
; Joined path conditions
(pop) ; 6
(pop) ; 5
(pop) ; 4
(push) ; 4
; [exec]
; inhale false
(pop) ; 4
(pop) ; 3
(pop) ; 2
(pop) ; 1
; ---------- main_resources_of_1 ----------
(declare-const this@148@01 $Ref)
(declare-const tcount@149@01 Int)
(declare-const gsize@150@01 Int)
(declare-const gid@151@01 Int)
(declare-const k@152@01 Int)
(declare-const half@153@01 Int)
(declare-const offset@154@01 Int)
(declare-const this@155@01 $Ref)
(declare-const tcount@156@01 Int)
(declare-const gsize@157@01 Int)
(declare-const gid@158@01 Int)
(declare-const k@159@01 Int)
(declare-const half@160@01 Int)
(declare-const offset@161@01 Int)
(push) ; 1
(declare-const $t@162@01 $Snap)
(assert (= $t@162@01 ($Snap.combine ($Snap.first $t@162@01) ($Snap.second $t@162@01))))
(assert (= ($Snap.first $t@162@01) $Snap.unit))
; [eval] tcount == gsize
(assert (= tcount@156@01 gsize@157@01))
(assert (=
  ($Snap.second $t@162@01)
  ($Snap.combine
    ($Snap.first ($Snap.second $t@162@01))
    ($Snap.second ($Snap.second $t@162@01)))))
(assert (= ($Snap.first ($Snap.second $t@162@01)) $Snap.unit))
; [eval] gid == 0
(assert (= gid@158@01 0))
(assert (=
  ($Snap.second ($Snap.second $t@162@01))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second $t@162@01)))
    ($Snap.second ($Snap.second ($Snap.second $t@162@01))))))
(declare-const $k@163@01 $Perm)
(assert ($Perm.isReadVar $k@163@01))
(assert (<= $Perm.No $k@163@01))
(assert (<= $k@163@01 $Perm.Write))
(assert (=> (< $Perm.No $k@163@01) (not (= this@155@01 $Ref.null))))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second $t@162@01)))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@162@01))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@162@01)))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@162@01))))
  $Snap.unit))
; [eval] |this.src| == gsize
; [eval] |this.src|
(push) ; 2
(set-option :timeout 10)
(assert (not (< $Perm.No $k@163@01)))
(check-sat)
; unsat
(pop) ; 2
; 0.00s
; (get-info :all-statistics)
(assert (=
  (Seq_length
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second $t@162@01)))))
  gsize@157@01))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@162@01))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@162@01)))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@162@01))))))))
(declare-const $k@164@01 $Perm)
(assert ($Perm.isReadVar $k@164@01))
(assert (<= $Perm.No $k@164@01))
(assert (<= $k@164@01 $Perm.Write))
(assert (=> (< $Perm.No $k@164@01) (not (= this@155@01 $Ref.null))))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@162@01)))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@162@01))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@162@01)))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@162@01))))))
  $Snap.unit))
; [eval] |this.dst| == gsize
; [eval] |this.dst|
(set-option :timeout 0)
(push) ; 2
(set-option :timeout 10)
(assert (not (< $Perm.No $k@164@01)))
(check-sat)
; unsat
(pop) ; 2
; 0.00s
; (get-info :all-statistics)
(assert (=
  (Seq_length
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@162@01)))))))
  gsize@157@01))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@162@01))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@162@01)))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@162@01))))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@162@01)))))))
  $Snap.unit))
; [eval] 4 <= gsize
(assert (<= 4 gsize@157@01))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@162@01)))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@162@01))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@162@01)))))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@162@01))))))))
  $Snap.unit))
; [eval] gsize % 2 == 0
; [eval] gsize % 2
(assert (= (mod gsize@157@01 2) 0))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@162@01))))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@162@01)))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@162@01))))))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@162@01)))))))))
  $Snap.unit))
; [eval] (forall i: Int, j: Int :: { this.src[i], this.src[j] } 0 <= i && (i < gsize && (0 <= j && (j < gsize && i != j))) ==> this.src[i] != this.src[j])
(declare-const i@165@01 Int)
(declare-const j@166@01 Int)
(set-option :timeout 0)
(push) ; 2
; [eval] 0 <= i && (i < gsize && (0 <= j && (j < gsize && i != j))) ==> this.src[i] != this.src[j]
; [eval] 0 <= i && (i < gsize && (0 <= j && (j < gsize && i != j)))
; [eval] 0 <= i
(push) ; 3
; [then-branch: 134 | !(0 <= i@165@01) | live]
; [else-branch: 134 | 0 <= i@165@01 | live]
(push) ; 4
; [then-branch: 134 | !(0 <= i@165@01)]
(assert (not (<= 0 i@165@01)))
(pop) ; 4
(push) ; 4
; [else-branch: 134 | 0 <= i@165@01]
(assert (<= 0 i@165@01))
; [eval] i < gsize
(push) ; 5
; [then-branch: 135 | !(i@165@01 < gsize@157@01) | live]
; [else-branch: 135 | i@165@01 < gsize@157@01 | live]
(push) ; 6
; [then-branch: 135 | !(i@165@01 < gsize@157@01)]
(assert (not (< i@165@01 gsize@157@01)))
(pop) ; 6
(push) ; 6
; [else-branch: 135 | i@165@01 < gsize@157@01]
(assert (< i@165@01 gsize@157@01))
; [eval] 0 <= j
(push) ; 7
; [then-branch: 136 | !(0 <= j@166@01) | live]
; [else-branch: 136 | 0 <= j@166@01 | live]
(push) ; 8
; [then-branch: 136 | !(0 <= j@166@01)]
(assert (not (<= 0 j@166@01)))
(pop) ; 8
(push) ; 8
; [else-branch: 136 | 0 <= j@166@01]
(assert (<= 0 j@166@01))
; [eval] j < gsize
(push) ; 9
; [then-branch: 137 | !(j@166@01 < gsize@157@01) | live]
; [else-branch: 137 | j@166@01 < gsize@157@01 | live]
(push) ; 10
; [then-branch: 137 | !(j@166@01 < gsize@157@01)]
(assert (not (< j@166@01 gsize@157@01)))
(pop) ; 10
(push) ; 10
; [else-branch: 137 | j@166@01 < gsize@157@01]
(assert (< j@166@01 gsize@157@01))
; [eval] i != j
(pop) ; 10
(pop) ; 9
; Joined path conditions
; Joined path conditions
(assert (or (< j@166@01 gsize@157@01) (not (< j@166@01 gsize@157@01))))
(pop) ; 8
(pop) ; 7
; Joined path conditions
; Joined path conditions
(assert (=>
  (<= 0 j@166@01)
  (and
    (<= 0 j@166@01)
    (or (< j@166@01 gsize@157@01) (not (< j@166@01 gsize@157@01))))))
(assert (or (<= 0 j@166@01) (not (<= 0 j@166@01))))
(pop) ; 6
(pop) ; 5
; Joined path conditions
; Joined path conditions
(assert (=>
  (< i@165@01 gsize@157@01)
  (and
    (< i@165@01 gsize@157@01)
    (=>
      (<= 0 j@166@01)
      (and
        (<= 0 j@166@01)
        (or (< j@166@01 gsize@157@01) (not (< j@166@01 gsize@157@01)))))
    (or (<= 0 j@166@01) (not (<= 0 j@166@01))))))
(assert (or (< i@165@01 gsize@157@01) (not (< i@165@01 gsize@157@01))))
(pop) ; 4
(pop) ; 3
; Joined path conditions
; Joined path conditions
(assert (=>
  (<= 0 i@165@01)
  (and
    (<= 0 i@165@01)
    (=>
      (< i@165@01 gsize@157@01)
      (and
        (< i@165@01 gsize@157@01)
        (=>
          (<= 0 j@166@01)
          (and
            (<= 0 j@166@01)
            (or (< j@166@01 gsize@157@01) (not (< j@166@01 gsize@157@01)))))
        (or (<= 0 j@166@01) (not (<= 0 j@166@01)))))
    (or (< i@165@01 gsize@157@01) (not (< i@165@01 gsize@157@01))))))
(assert (or (<= 0 i@165@01) (not (<= 0 i@165@01))))
(push) ; 3
; [then-branch: 138 | 0 <= i@165@01 && i@165@01 < gsize@157@01 && 0 <= j@166@01 && j@166@01 < gsize@157@01 && i@165@01 != j@166@01 | live]
; [else-branch: 138 | !(0 <= i@165@01 && i@165@01 < gsize@157@01 && 0 <= j@166@01 && j@166@01 < gsize@157@01 && i@165@01 != j@166@01) | live]
(push) ; 4
; [then-branch: 138 | 0 <= i@165@01 && i@165@01 < gsize@157@01 && 0 <= j@166@01 && j@166@01 < gsize@157@01 && i@165@01 != j@166@01]
(assert (and
  (<= 0 i@165@01)
  (and
    (< i@165@01 gsize@157@01)
    (and
      (<= 0 j@166@01)
      (and (< j@166@01 gsize@157@01) (not (= i@165@01 j@166@01)))))))
; [eval] this.src[i] != this.src[j]
; [eval] this.src[i]
(push) ; 5
(set-option :timeout 10)
(assert (not (< $Perm.No $k@163@01)))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 5
(assert (not (>= i@165@01 0)))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(push) ; 5
(assert (not (<
  i@165@01
  (Seq_length
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second $t@162@01))))))))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
; [eval] this.src[j]
(push) ; 5
(set-option :timeout 10)
(assert (not (< $Perm.No $k@163@01)))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 5
(assert (not (>= j@166@01 0)))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(push) ; 5
(assert (not (<
  j@166@01
  (Seq_length
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second $t@162@01))))))))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(pop) ; 4
(push) ; 4
; [else-branch: 138 | !(0 <= i@165@01 && i@165@01 < gsize@157@01 && 0 <= j@166@01 && j@166@01 < gsize@157@01 && i@165@01 != j@166@01)]
(assert (not
  (and
    (<= 0 i@165@01)
    (and
      (< i@165@01 gsize@157@01)
      (and
        (<= 0 j@166@01)
        (and (< j@166@01 gsize@157@01) (not (= i@165@01 j@166@01))))))))
(pop) ; 4
(pop) ; 3
; Joined path conditions
(assert (=>
  (and
    (<= 0 i@165@01)
    (and
      (< i@165@01 gsize@157@01)
      (and
        (<= 0 j@166@01)
        (and (< j@166@01 gsize@157@01) (not (= i@165@01 j@166@01))))))
  (and
    (<= 0 i@165@01)
    (< i@165@01 gsize@157@01)
    (<= 0 j@166@01)
    (< j@166@01 gsize@157@01)
    (not (= i@165@01 j@166@01)))))
; Joined path conditions
(assert (or
  (not
    (and
      (<= 0 i@165@01)
      (and
        (< i@165@01 gsize@157@01)
        (and
          (<= 0 j@166@01)
          (and (< j@166@01 gsize@157@01) (not (= i@165@01 j@166@01)))))))
  (and
    (<= 0 i@165@01)
    (and
      (< i@165@01 gsize@157@01)
      (and
        (<= 0 j@166@01)
        (and (< j@166@01 gsize@157@01) (not (= i@165@01 j@166@01))))))))
(pop) ; 2
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall ((i@165@01 Int) (j@166@01 Int)) (!
  (and
    (=>
      (<= 0 i@165@01)
      (and
        (<= 0 i@165@01)
        (=>
          (< i@165@01 gsize@157@01)
          (and
            (< i@165@01 gsize@157@01)
            (=>
              (<= 0 j@166@01)
              (and
                (<= 0 j@166@01)
                (or (< j@166@01 gsize@157@01) (not (< j@166@01 gsize@157@01)))))
            (or (<= 0 j@166@01) (not (<= 0 j@166@01)))))
        (or (< i@165@01 gsize@157@01) (not (< i@165@01 gsize@157@01)))))
    (or (<= 0 i@165@01) (not (<= 0 i@165@01)))
    (=>
      (and
        (<= 0 i@165@01)
        (and
          (< i@165@01 gsize@157@01)
          (and
            (<= 0 j@166@01)
            (and (< j@166@01 gsize@157@01) (not (= i@165@01 j@166@01))))))
      (and
        (<= 0 i@165@01)
        (< i@165@01 gsize@157@01)
        (<= 0 j@166@01)
        (< j@166@01 gsize@157@01)
        (not (= i@165@01 j@166@01))))
    (or
      (not
        (and
          (<= 0 i@165@01)
          (and
            (< i@165@01 gsize@157@01)
            (and
              (<= 0 j@166@01)
              (and (< j@166@01 gsize@157@01) (not (= i@165@01 j@166@01)))))))
      (and
        (<= 0 i@165@01)
        (and
          (< i@165@01 gsize@157@01)
          (and
            (<= 0 j@166@01)
            (and (< j@166@01 gsize@157@01) (not (= i@165@01 j@166@01))))))))
  :pattern ((Seq_index
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second $t@162@01))))
    i@165@01) (Seq_index
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second $t@162@01))))
    j@166@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/third_party/max-two-range.vpr@150@12@150@120-aux|)))
(assert (forall ((i@165@01 Int) (j@166@01 Int)) (!
  (=>
    (and
      (<= 0 i@165@01)
      (and
        (< i@165@01 gsize@157@01)
        (and
          (<= 0 j@166@01)
          (and (< j@166@01 gsize@157@01) (not (= i@165@01 j@166@01))))))
    (not
      (=
        (Seq_index
          ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second $t@162@01))))
          i@165@01)
        (Seq_index
          ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second $t@162@01))))
          j@166@01))))
  :pattern ((Seq_index
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second $t@162@01))))
    i@165@01) (Seq_index
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second $t@162@01))))
    j@166@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/third_party/max-two-range.vpr@150@12@150@120|)))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@162@01)))))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@162@01))))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@162@01)))))))))))))
(declare-const i@167@01 Int)
(push) ; 2
; [eval] (i in [0..gsize))
; [eval] [0..gsize)
(assert (Seq_contains (Seq_range 0 gsize@157@01) i@167@01))
; [eval] this.src[i]
(push) ; 3
(set-option :timeout 10)
(assert (not (< $Perm.No $k@163@01)))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(assert (not (>= i@167@01 0)))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(push) ; 3
(assert (not (<
  i@167@01
  (Seq_length
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second $t@162@01))))))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(push) ; 3
(assert (not (not (= gsize@157@01 0))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(pop) ; 2
(declare-fun inv@168@01 ($Ref) Int)
(declare-fun img@169@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
(push) ; 2
(assert (not (forall ((i@167@01 Int)) (!
  (=>
    (Seq_contains (Seq_range 0 gsize@157@01) i@167@01)
    (or
      (= (/ (to_real 1) (to_real gsize@157@01)) $Perm.No)
      (< $Perm.No (/ (to_real 1) (to_real gsize@157@01)))))
  
  :qid |quant-u-17944|))))
(check-sat)
; unsat
(pop) ; 2
; 0.00s
; (get-info :all-statistics)
; Check receiver injectivity
(push) ; 2
(assert (not (forall ((i1@167@01 Int) (i2@167@01 Int)) (!
  (=>
    (and
      (and
        (Seq_contains (Seq_range 0 gsize@157@01) i1@167@01)
        (< $Perm.No (/ (to_real 1) (to_real gsize@157@01))))
      (and
        (Seq_contains (Seq_range 0 gsize@157@01) i2@167@01)
        (< $Perm.No (/ (to_real 1) (to_real gsize@157@01))))
      (=
        (Seq_index
          ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second $t@162@01))))
          i1@167@01)
        (Seq_index
          ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second $t@162@01))))
          i2@167@01)))
    (= i1@167@01 i2@167@01))
  
  :qid |Integer_value-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 2
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((i@167@01 Int)) (!
  (=>
    (and
      (Seq_contains (Seq_range 0 gsize@157@01) i@167@01)
      (< $Perm.No (/ (to_real 1) (to_real gsize@157@01))))
    (and
      (=
        (inv@168@01 (Seq_index
          ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second $t@162@01))))
          i@167@01))
        i@167@01)
      (img@169@01 (Seq_index
        ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second $t@162@01))))
        i@167@01))))
  :pattern ((Seq_index
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second $t@162@01))))
    i@167@01))
  :qid |quant-u-17945|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@169@01 r)
      (and
        (Seq_contains (Seq_range 0 gsize@157@01) (inv@168@01 r))
        (< $Perm.No (/ (to_real 1) (to_real gsize@157@01)))))
    (=
      (Seq_index
        ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second $t@162@01))))
        (inv@168@01 r))
      r))
  :pattern ((inv@168@01 r))
  :qid |Integer_value-fctOfInv|)))
; Permissions are non-negative
(assert (forall ((i@167@01 Int)) (!
  (<= $Perm.No (/ (to_real 1) (to_real gsize@157@01)))
  :pattern ((Seq_index
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second $t@162@01))))
    i@167@01))
  :qid |Integer_value-permAtLeastZero|)))
; Field permissions are at most one
(assert (forall ((i@167@01 Int)) (!
  (<= (/ (to_real 1) (to_real gsize@157@01)) $Perm.Write)
  :pattern ((Seq_index
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second $t@162@01))))
    i@167@01))
  :qid |Integer_value-permAtMostOne|)))
; Permission implies non-null receiver
(assert (forall ((i@167@01 Int)) (!
  (=>
    (and
      (Seq_contains (Seq_range 0 gsize@157@01) i@167@01)
      (< $Perm.No (/ (to_real 1) (to_real gsize@157@01))))
    (not
      (=
        (Seq_index
          ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second $t@162@01))))
          i@167@01)
        $Ref.null)))
  :pattern ((Seq_index
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second $t@162@01))))
    i@167@01))
  :qid |Integer_value-permImpliesNonNull|)))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@162@01))))))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@162@01)))))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@162@01))))))))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@162@01)))))))))))
  $Snap.unit))
; [eval] (forall i: Int, j: Int :: { this.dst[i], this.dst[j] } 0 <= i && (i < gsize && (0 <= j && (j < gsize && i != j))) ==> this.dst[i] != this.dst[j])
(declare-const i@170@01 Int)
(declare-const j@171@01 Int)
(push) ; 2
; [eval] 0 <= i && (i < gsize && (0 <= j && (j < gsize && i != j))) ==> this.dst[i] != this.dst[j]
; [eval] 0 <= i && (i < gsize && (0 <= j && (j < gsize && i != j)))
; [eval] 0 <= i
(push) ; 3
; [then-branch: 139 | !(0 <= i@170@01) | live]
; [else-branch: 139 | 0 <= i@170@01 | live]
(push) ; 4
; [then-branch: 139 | !(0 <= i@170@01)]
(assert (not (<= 0 i@170@01)))
(pop) ; 4
(push) ; 4
; [else-branch: 139 | 0 <= i@170@01]
(assert (<= 0 i@170@01))
; [eval] i < gsize
(push) ; 5
; [then-branch: 140 | !(i@170@01 < gsize@157@01) | live]
; [else-branch: 140 | i@170@01 < gsize@157@01 | live]
(push) ; 6
; [then-branch: 140 | !(i@170@01 < gsize@157@01)]
(assert (not (< i@170@01 gsize@157@01)))
(pop) ; 6
(push) ; 6
; [else-branch: 140 | i@170@01 < gsize@157@01]
(assert (< i@170@01 gsize@157@01))
; [eval] 0 <= j
(push) ; 7
; [then-branch: 141 | !(0 <= j@171@01) | live]
; [else-branch: 141 | 0 <= j@171@01 | live]
(push) ; 8
; [then-branch: 141 | !(0 <= j@171@01)]
(assert (not (<= 0 j@171@01)))
(pop) ; 8
(push) ; 8
; [else-branch: 141 | 0 <= j@171@01]
(assert (<= 0 j@171@01))
; [eval] j < gsize
(push) ; 9
; [then-branch: 142 | !(j@171@01 < gsize@157@01) | live]
; [else-branch: 142 | j@171@01 < gsize@157@01 | live]
(push) ; 10
; [then-branch: 142 | !(j@171@01 < gsize@157@01)]
(assert (not (< j@171@01 gsize@157@01)))
(pop) ; 10
(push) ; 10
; [else-branch: 142 | j@171@01 < gsize@157@01]
(assert (< j@171@01 gsize@157@01))
; [eval] i != j
(pop) ; 10
(pop) ; 9
; Joined path conditions
; Joined path conditions
(assert (or (< j@171@01 gsize@157@01) (not (< j@171@01 gsize@157@01))))
(pop) ; 8
(pop) ; 7
; Joined path conditions
; Joined path conditions
(assert (=>
  (<= 0 j@171@01)
  (and
    (<= 0 j@171@01)
    (or (< j@171@01 gsize@157@01) (not (< j@171@01 gsize@157@01))))))
(assert (or (<= 0 j@171@01) (not (<= 0 j@171@01))))
(pop) ; 6
(pop) ; 5
; Joined path conditions
; Joined path conditions
(assert (=>
  (< i@170@01 gsize@157@01)
  (and
    (< i@170@01 gsize@157@01)
    (=>
      (<= 0 j@171@01)
      (and
        (<= 0 j@171@01)
        (or (< j@171@01 gsize@157@01) (not (< j@171@01 gsize@157@01)))))
    (or (<= 0 j@171@01) (not (<= 0 j@171@01))))))
(assert (or (< i@170@01 gsize@157@01) (not (< i@170@01 gsize@157@01))))
(pop) ; 4
(pop) ; 3
; Joined path conditions
; Joined path conditions
(assert (=>
  (<= 0 i@170@01)
  (and
    (<= 0 i@170@01)
    (=>
      (< i@170@01 gsize@157@01)
      (and
        (< i@170@01 gsize@157@01)
        (=>
          (<= 0 j@171@01)
          (and
            (<= 0 j@171@01)
            (or (< j@171@01 gsize@157@01) (not (< j@171@01 gsize@157@01)))))
        (or (<= 0 j@171@01) (not (<= 0 j@171@01)))))
    (or (< i@170@01 gsize@157@01) (not (< i@170@01 gsize@157@01))))))
(assert (or (<= 0 i@170@01) (not (<= 0 i@170@01))))
(push) ; 3
; [then-branch: 143 | 0 <= i@170@01 && i@170@01 < gsize@157@01 && 0 <= j@171@01 && j@171@01 < gsize@157@01 && i@170@01 != j@171@01 | live]
; [else-branch: 143 | !(0 <= i@170@01 && i@170@01 < gsize@157@01 && 0 <= j@171@01 && j@171@01 < gsize@157@01 && i@170@01 != j@171@01) | live]
(push) ; 4
; [then-branch: 143 | 0 <= i@170@01 && i@170@01 < gsize@157@01 && 0 <= j@171@01 && j@171@01 < gsize@157@01 && i@170@01 != j@171@01]
(assert (and
  (<= 0 i@170@01)
  (and
    (< i@170@01 gsize@157@01)
    (and
      (<= 0 j@171@01)
      (and (< j@171@01 gsize@157@01) (not (= i@170@01 j@171@01)))))))
; [eval] this.dst[i] != this.dst[j]
; [eval] this.dst[i]
(push) ; 5
(set-option :timeout 10)
(assert (not (< $Perm.No $k@164@01)))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 5
(assert (not (>= i@170@01 0)))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(push) ; 5
(assert (not (<
  i@170@01
  (Seq_length
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@162@01))))))))))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
; [eval] this.dst[j]
(push) ; 5
(set-option :timeout 10)
(assert (not (< $Perm.No $k@164@01)))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 5
(assert (not (>= j@171@01 0)))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(push) ; 5
(assert (not (<
  j@171@01
  (Seq_length
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@162@01))))))))))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(pop) ; 4
(push) ; 4
; [else-branch: 143 | !(0 <= i@170@01 && i@170@01 < gsize@157@01 && 0 <= j@171@01 && j@171@01 < gsize@157@01 && i@170@01 != j@171@01)]
(assert (not
  (and
    (<= 0 i@170@01)
    (and
      (< i@170@01 gsize@157@01)
      (and
        (<= 0 j@171@01)
        (and (< j@171@01 gsize@157@01) (not (= i@170@01 j@171@01))))))))
(pop) ; 4
(pop) ; 3
; Joined path conditions
(assert (=>
  (and
    (<= 0 i@170@01)
    (and
      (< i@170@01 gsize@157@01)
      (and
        (<= 0 j@171@01)
        (and (< j@171@01 gsize@157@01) (not (= i@170@01 j@171@01))))))
  (and
    (<= 0 i@170@01)
    (< i@170@01 gsize@157@01)
    (<= 0 j@171@01)
    (< j@171@01 gsize@157@01)
    (not (= i@170@01 j@171@01)))))
; Joined path conditions
(assert (or
  (not
    (and
      (<= 0 i@170@01)
      (and
        (< i@170@01 gsize@157@01)
        (and
          (<= 0 j@171@01)
          (and (< j@171@01 gsize@157@01) (not (= i@170@01 j@171@01)))))))
  (and
    (<= 0 i@170@01)
    (and
      (< i@170@01 gsize@157@01)
      (and
        (<= 0 j@171@01)
        (and (< j@171@01 gsize@157@01) (not (= i@170@01 j@171@01))))))))
(pop) ; 2
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall ((i@170@01 Int) (j@171@01 Int)) (!
  (and
    (=>
      (<= 0 i@170@01)
      (and
        (<= 0 i@170@01)
        (=>
          (< i@170@01 gsize@157@01)
          (and
            (< i@170@01 gsize@157@01)
            (=>
              (<= 0 j@171@01)
              (and
                (<= 0 j@171@01)
                (or (< j@171@01 gsize@157@01) (not (< j@171@01 gsize@157@01)))))
            (or (<= 0 j@171@01) (not (<= 0 j@171@01)))))
        (or (< i@170@01 gsize@157@01) (not (< i@170@01 gsize@157@01)))))
    (or (<= 0 i@170@01) (not (<= 0 i@170@01)))
    (=>
      (and
        (<= 0 i@170@01)
        (and
          (< i@170@01 gsize@157@01)
          (and
            (<= 0 j@171@01)
            (and (< j@171@01 gsize@157@01) (not (= i@170@01 j@171@01))))))
      (and
        (<= 0 i@170@01)
        (< i@170@01 gsize@157@01)
        (<= 0 j@171@01)
        (< j@171@01 gsize@157@01)
        (not (= i@170@01 j@171@01))))
    (or
      (not
        (and
          (<= 0 i@170@01)
          (and
            (< i@170@01 gsize@157@01)
            (and
              (<= 0 j@171@01)
              (and (< j@171@01 gsize@157@01) (not (= i@170@01 j@171@01)))))))
      (and
        (<= 0 i@170@01)
        (and
          (< i@170@01 gsize@157@01)
          (and
            (<= 0 j@171@01)
            (and (< j@171@01 gsize@157@01) (not (= i@170@01 j@171@01))))))))
  :pattern ((Seq_index
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@162@01))))))
    i@170@01) (Seq_index
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@162@01))))))
    j@171@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/third_party/max-two-range.vpr@152@12@152@120-aux|)))
(assert (forall ((i@170@01 Int) (j@171@01 Int)) (!
  (=>
    (and
      (<= 0 i@170@01)
      (and
        (< i@170@01 gsize@157@01)
        (and
          (<= 0 j@171@01)
          (and (< j@171@01 gsize@157@01) (not (= i@170@01 j@171@01))))))
    (not
      (=
        (Seq_index
          ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@162@01))))))
          i@170@01)
        (Seq_index
          ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@162@01))))))
          j@171@01))))
  :pattern ((Seq_index
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@162@01))))))
    i@170@01) (Seq_index
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@162@01))))))
    j@171@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/third_party/max-two-range.vpr@152@12@152@120|)))
(declare-const tid@172@01 Int)
(push) ; 2
; [eval] (tid in [gid * gsize..gsize))
; [eval] [gid * gsize..gsize)
; [eval] gid * gsize
(assert (Seq_contains (Seq_range (* gid@158@01 gsize@157@01) gsize@157@01) tid@172@01))
; [eval] this.dst[tid]
(push) ; 3
(set-option :timeout 10)
(assert (not (< $Perm.No $k@164@01)))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(assert (not (>= tid@172@01 0)))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(push) ; 3
(assert (not (<
  tid@172@01
  (Seq_length
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@162@01))))))))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(pop) ; 2
(declare-fun inv@173@01 ($Ref) Int)
(declare-fun img@174@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
; Check receiver injectivity
(push) ; 2
(assert (not (forall ((tid1@172@01 Int) (tid2@172@01 Int)) (!
  (=>
    (and
      (Seq_contains
        (Seq_range (* gid@158@01 gsize@157@01) gsize@157@01)
        tid1@172@01)
      (Seq_contains
        (Seq_range (* gid@158@01 gsize@157@01) gsize@157@01)
        tid2@172@01)
      (=
        (Seq_index
          ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@162@01))))))
          tid1@172@01)
        (Seq_index
          ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@162@01))))))
          tid2@172@01)))
    (= tid1@172@01 tid2@172@01))
  
  :qid |Integer_value-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 2
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((tid@172@01 Int)) (!
  (=>
    (Seq_contains
      (Seq_range (* gid@158@01 gsize@157@01) gsize@157@01)
      tid@172@01)
    (and
      (=
        (inv@173@01 (Seq_index
          ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@162@01))))))
          tid@172@01))
        tid@172@01)
      (img@174@01 (Seq_index
        ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@162@01))))))
        tid@172@01))))
  :pattern ((Seq_index
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@162@01))))))
    tid@172@01))
  :qid |quant-u-17947|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@174@01 r)
      (Seq_contains
        (Seq_range (* gid@158@01 gsize@157@01) gsize@157@01)
        (inv@173@01 r)))
    (=
      (Seq_index
        ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@162@01))))))
        (inv@173@01 r))
      r))
  :pattern ((inv@173@01 r))
  :qid |Integer_value-fctOfInv|)))
; Permissions are non-negative
; Field permissions are at most one
; Permission implies non-null receiver
(assert (forall ((tid@172@01 Int)) (!
  (=>
    (Seq_contains
      (Seq_range (* gid@158@01 gsize@157@01) gsize@157@01)
      tid@172@01)
    (not
      (=
        (Seq_index
          ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@162@01))))))
          tid@172@01)
        $Ref.null)))
  :pattern ((Seq_index
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@162@01))))))
    tid@172@01))
  :qid |Integer_value-permImpliesNonNull|)))
(push) ; 2
(set-option :timeout 10)
(assert (not (forall ((r $Ref)) (!
  (and
    (=
      (Seq_index
        ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@162@01))))))
        tid@172@01)
      (Seq_index
        ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second $t@162@01))))
        i@167@01))
    (=
      (and
        (img@174@01 r)
        (Seq_contains
          (Seq_range (* gid@158@01 gsize@157@01) gsize@157@01)
          (inv@173@01 r)))
      (and
        (img@169@01 r)
        (Seq_contains (Seq_range 0 gsize@157@01) (inv@168@01 r)))))
  
  :qid |quant-u-17948|))))
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
(declare-const $t@175@01 $Snap)
(assert (= $t@175@01 ($Snap.combine ($Snap.first $t@175@01) ($Snap.second $t@175@01))))
(assert (= ($Snap.first $t@175@01) $Snap.unit))
; [eval] tcount == gsize
(assert (=
  ($Snap.second $t@175@01)
  ($Snap.combine
    ($Snap.first ($Snap.second $t@175@01))
    ($Snap.second ($Snap.second $t@175@01)))))
(assert (= ($Snap.first ($Snap.second $t@175@01)) $Snap.unit))
; [eval] gid == 0
(assert (=
  ($Snap.second ($Snap.second $t@175@01))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second $t@175@01)))
    ($Snap.second ($Snap.second ($Snap.second $t@175@01))))))
(declare-const $k@176@01 $Perm)
(assert ($Perm.isReadVar $k@176@01))
(assert (<= $Perm.No $k@176@01))
(assert (<= $k@176@01 $Perm.Write))
(assert (=> (< $Perm.No $k@176@01) (not (= this@155@01 $Ref.null))))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second $t@175@01)))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@175@01))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@175@01)))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@175@01))))
  $Snap.unit))
; [eval] |this.src| == gsize
; [eval] |this.src|
(push) ; 3
(set-option :timeout 10)
(assert (not (< $Perm.No $k@176@01)))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(assert (=
  (Seq_length
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second $t@175@01)))))
  gsize@157@01))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@175@01))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@175@01)))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@175@01))))))))
(declare-const $k@177@01 $Perm)
(assert ($Perm.isReadVar $k@177@01))
(assert (<= $Perm.No $k@177@01))
(assert (<= $k@177@01 $Perm.Write))
(assert (=> (< $Perm.No $k@177@01) (not (= this@155@01 $Ref.null))))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@175@01)))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@175@01))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@175@01)))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@175@01))))))
  $Snap.unit))
; [eval] |this.dst| == gsize
; [eval] |this.dst|
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (< $Perm.No $k@177@01)))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(assert (=
  (Seq_length
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@175@01)))))))
  gsize@157@01))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@175@01))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@175@01)))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@175@01))))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@175@01)))))))
  $Snap.unit))
; [eval] 4 <= gsize
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@175@01)))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@175@01))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@175@01)))))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@175@01))))))))
  $Snap.unit))
; [eval] gsize % 2 == 0
; [eval] gsize % 2
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@175@01))))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@175@01)))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@175@01))))))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@175@01)))))))))
  $Snap.unit))
; [eval] this.src == old(this.src)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (< $Perm.No $k@176@01)))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; [eval] old(this.src)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (< $Perm.No $k@163@01)))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(assert (Seq_equal
  ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second $t@175@01))))
  ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second $t@162@01))))))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@175@01)))))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@175@01))))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@175@01)))))))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@175@01))))))))))
  $Snap.unit))
; [eval] this.dst == old(this.dst)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (< $Perm.No $k@177@01)))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; [eval] old(this.dst)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (< $Perm.No $k@164@01)))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(assert (Seq_equal
  ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@175@01))))))
  ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@162@01))))))))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@175@01))))))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@175@01)))))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@175@01))))))))))))))
(declare-const i@178@01 Int)
(set-option :timeout 0)
(push) ; 3
; [eval] (i in [0..gsize))
; [eval] [0..gsize)
(assert (Seq_contains (Seq_range 0 gsize@157@01) i@178@01))
; [eval] this.src[i]
(push) ; 4
(set-option :timeout 10)
(assert (not (< $Perm.No $k@176@01)))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 4
(assert (not (>= i@178@01 0)))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(push) ; 4
(assert (not (<
  i@178@01
  (Seq_length
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second $t@175@01))))))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(push) ; 4
(assert (not (not (= gsize@157@01 0))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(pop) ; 3
(declare-fun inv@179@01 ($Ref) Int)
(declare-fun img@180@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
(push) ; 3
(assert (not (forall ((i@178@01 Int)) (!
  (=>
    (Seq_contains (Seq_range 0 gsize@157@01) i@178@01)
    (or
      (= (/ (to_real 1) (to_real gsize@157@01)) $Perm.No)
      (< $Perm.No (/ (to_real 1) (to_real gsize@157@01)))))
  
  :qid |quant-u-17949|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Check receiver injectivity
(push) ; 3
(assert (not (forall ((i1@178@01 Int) (i2@178@01 Int)) (!
  (=>
    (and
      (and
        (Seq_contains (Seq_range 0 gsize@157@01) i1@178@01)
        (< $Perm.No (/ (to_real 1) (to_real gsize@157@01))))
      (and
        (Seq_contains (Seq_range 0 gsize@157@01) i2@178@01)
        (< $Perm.No (/ (to_real 1) (to_real gsize@157@01))))
      (=
        (Seq_index
          ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second $t@175@01))))
          i1@178@01)
        (Seq_index
          ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second $t@175@01))))
          i2@178@01)))
    (= i1@178@01 i2@178@01))
  
  :qid |Integer_value-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((i@178@01 Int)) (!
  (=>
    (and
      (Seq_contains (Seq_range 0 gsize@157@01) i@178@01)
      (< $Perm.No (/ (to_real 1) (to_real gsize@157@01))))
    (and
      (=
        (inv@179@01 (Seq_index
          ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second $t@175@01))))
          i@178@01))
        i@178@01)
      (img@180@01 (Seq_index
        ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second $t@175@01))))
        i@178@01))))
  :pattern ((Seq_index
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second $t@175@01))))
    i@178@01))
  :qid |quant-u-17950|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@180@01 r)
      (and
        (Seq_contains (Seq_range 0 gsize@157@01) (inv@179@01 r))
        (< $Perm.No (/ (to_real 1) (to_real gsize@157@01)))))
    (=
      (Seq_index
        ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second $t@175@01))))
        (inv@179@01 r))
      r))
  :pattern ((inv@179@01 r))
  :qid |Integer_value-fctOfInv|)))
; Permissions are non-negative
(assert (forall ((i@178@01 Int)) (!
  (<= $Perm.No (/ (to_real 1) (to_real gsize@157@01)))
  :pattern ((Seq_index
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second $t@175@01))))
    i@178@01))
  :qid |Integer_value-permAtLeastZero|)))
; Field permissions are at most one
(assert (forall ((i@178@01 Int)) (!
  (<= (/ (to_real 1) (to_real gsize@157@01)) $Perm.Write)
  :pattern ((Seq_index
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second $t@175@01))))
    i@178@01))
  :qid |Integer_value-permAtMostOne|)))
; Permission implies non-null receiver
(assert (forall ((i@178@01 Int)) (!
  (=>
    (and
      (Seq_contains (Seq_range 0 gsize@157@01) i@178@01)
      (< $Perm.No (/ (to_real 1) (to_real gsize@157@01))))
    (not
      (=
        (Seq_index
          ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second $t@175@01))))
          i@178@01)
        $Ref.null)))
  :pattern ((Seq_index
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second $t@175@01))))
    i@178@01))
  :qid |Integer_value-permImpliesNonNull|)))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@175@01)))))))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@175@01))))))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@175@01)))))))))))))))
; [eval] gid * gsize <= 0 && 0 < gsize
; [eval] gid * gsize <= 0
; [eval] gid * gsize
(push) ; 3
; [then-branch: 144 | !(gid@158@01 * gsize@157@01 <= 0) | live]
; [else-branch: 144 | gid@158@01 * gsize@157@01 <= 0 | live]
(push) ; 4
; [then-branch: 144 | !(gid@158@01 * gsize@157@01 <= 0)]
(assert (not (<= (* gid@158@01 gsize@157@01) 0)))
(pop) ; 4
(push) ; 4
; [else-branch: 144 | gid@158@01 * gsize@157@01 <= 0]
(assert (<= (* gid@158@01 gsize@157@01) 0))
; [eval] 0 < gsize
(pop) ; 4
(pop) ; 3
; Joined path conditions
; Joined path conditions
(assert (or (<= (* gid@158@01 gsize@157@01) 0) (not (<= (* gid@158@01 gsize@157@01) 0))))
(push) ; 3
(set-option :timeout 10)
(assert (not (not (and (<= (* gid@158@01 gsize@157@01) 0) (< 0 gsize@157@01)))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (and (<= (* gid@158@01 gsize@157@01) 0) (< 0 gsize@157@01))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; [then-branch: 145 | gid@158@01 * gsize@157@01 <= 0 && 0 < gsize@157@01 | live]
; [else-branch: 145 | !(gid@158@01 * gsize@157@01 <= 0 && 0 < gsize@157@01) | dead]
(set-option :timeout 0)
(push) ; 3
; [then-branch: 145 | gid@158@01 * gsize@157@01 <= 0 && 0 < gsize@157@01]
(assert (and (<= (* gid@158@01 gsize@157@01) 0) (< 0 gsize@157@01)))
; [eval] this.dst[0]
(push) ; 4
(set-option :timeout 10)
(assert (not (< $Perm.No $k@177@01)))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 4
(assert (not (<
  0
  (Seq_length
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@175@01))))))))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(declare-const sm@181@01 $FVF<Integer_value>)
; Definitional axioms for singleton-SM's value
(assert (=
  ($FVF.lookup_Integer_value (as sm@181@01  $FVF<Integer_value>) (Seq_index
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@175@01))))))
    0))
  ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@175@01)))))))))))))))
(assert (<=
  $Perm.No
  (ite
    (=
      (Seq_index
        ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@175@01))))))
        0)
      (Seq_index
        ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@175@01))))))
        0))
    $Perm.Write
    $Perm.No)))
(assert (<=
  (ite
    (=
      (Seq_index
        ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@175@01))))))
        0)
      (Seq_index
        ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@175@01))))))
        0))
    $Perm.Write
    $Perm.No)
  $Perm.Write))
(assert (=>
  (=
    (Seq_index
      ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@175@01))))))
      0)
    (Seq_index
      ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@175@01))))))
      0))
  (not
    (=
      (Seq_index
        ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@175@01))))))
        0)
      $Ref.null))))
; [eval] gid * gsize <= 0 && 0 < gsize
; [eval] gid * gsize <= 0
; [eval] gid * gsize
(push) ; 4
; [then-branch: 146 | !(gid@158@01 * gsize@157@01 <= 0) | live]
; [else-branch: 146 | gid@158@01 * gsize@157@01 <= 0 | live]
(push) ; 5
; [then-branch: 146 | !(gid@158@01 * gsize@157@01 <= 0)]
(assert (not (<= (* gid@158@01 gsize@157@01) 0)))
(pop) ; 5
(push) ; 5
; [else-branch: 146 | gid@158@01 * gsize@157@01 <= 0]
; [eval] 0 < gsize
(pop) ; 5
(pop) ; 4
; Joined path conditions
; Joined path conditions
(push) ; 4
(set-option :timeout 10)
(assert (not (not (and (<= (* gid@158@01 gsize@157@01) 0) (< 0 gsize@157@01)))))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not (and (<= (* gid@158@01 gsize@157@01) 0) (< 0 gsize@157@01))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; [then-branch: 147 | gid@158@01 * gsize@157@01 <= 0 && 0 < gsize@157@01 | live]
; [else-branch: 147 | !(gid@158@01 * gsize@157@01 <= 0 && 0 < gsize@157@01) | dead]
(set-option :timeout 0)
(push) ; 4
; [then-branch: 147 | gid@158@01 * gsize@157@01 <= 0 && 0 < gsize@157@01]
(assert (and (<= (* gid@158@01 gsize@157@01) 0) (< 0 gsize@157@01)))
; [eval] this.dst[1]
(push) ; 5
(set-option :timeout 10)
(assert (not (< $Perm.No $k@177@01)))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 5
(assert (not (<
  1
  (Seq_length
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@175@01))))))))))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(declare-const sm@182@01 $FVF<Integer_value>)
; Definitional axioms for singleton-SM's value
(assert (=
  ($FVF.lookup_Integer_value (as sm@182@01  $FVF<Integer_value>) (Seq_index
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@175@01))))))
    1))
  ($SortWrappers.$SnapToInt ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@175@01)))))))))))))))
(push) ; 5
(set-option :timeout 10)
(assert (not (and
  (and
    (=
      (Seq_index
        ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@175@01))))))
        1)
      (Seq_index
        ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@175@01))))))
        1))
    (=
      (Seq_index
        ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@175@01))))))
        0)
      (Seq_index
        ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@175@01))))))
        0)))
  (=
    (Seq_index
      ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@175@01))))))
      1)
    (Seq_index
      ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@175@01))))))
      0)))))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(assert (<=
  $Perm.No
  (ite
    (=
      (Seq_index
        ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@175@01))))))
        1)
      (Seq_index
        ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@175@01))))))
        1))
    $Perm.Write
    $Perm.No)))
(assert (<=
  (ite
    (=
      (Seq_index
        ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@175@01))))))
        1)
      (Seq_index
        ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@175@01))))))
        1))
    $Perm.Write
    $Perm.No)
  $Perm.Write))
(assert (=>
  (=
    (Seq_index
      ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@175@01))))))
      1)
    (Seq_index
      ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@175@01))))))
      1))
  (not
    (=
      (Seq_index
        ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@175@01))))))
        1)
      $Ref.null))))
(pop) ; 4
(pop) ; 3
(pop) ; 2
(set-option :timeout 0)
(push) ; 2
; [eval] tcount == gsize
; [eval] gid == 0
(declare-const $k@183@01 $Perm)
(assert ($Perm.isReadVar $k@183@01))
(push) ; 3
(set-option :timeout 10)
(assert (not (not (= $k@163@01 $Perm.No))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(assert (< $k@183@01 $k@163@01))
(assert (<= $Perm.No (- $k@163@01 $k@183@01)))
(assert (<= (- $k@163@01 $k@183@01) $Perm.Write))
(assert (=> (< $Perm.No (- $k@163@01 $k@183@01)) (not (= this@155@01 $Ref.null))))
; [eval] |this.src| == gsize
; [eval] |this.src|
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (< $Perm.No $k@163@01)))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(declare-const $k@184@01 $Perm)
(assert ($Perm.isReadVar $k@184@01))
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (not (= $k@164@01 $Perm.No))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(assert (< $k@184@01 $k@164@01))
(assert (<= $Perm.No (- $k@164@01 $k@184@01)))
(assert (<= (- $k@164@01 $k@184@01) $Perm.Write))
(assert (=> (< $Perm.No (- $k@164@01 $k@184@01)) (not (= this@155@01 $Ref.null))))
; [eval] |this.dst| == gsize
; [eval] |this.dst|
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (< $Perm.No $k@164@01)))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; [eval] 4 <= gsize
; [eval] gsize % 2 == 0
; [eval] gsize % 2
; [eval] this.src == old(this.src)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (< $Perm.No $k@163@01)))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; [eval] old(this.src)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (< $Perm.No $k@163@01)))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; [eval] this.dst == old(this.dst)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (< $Perm.No $k@164@01)))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; [eval] old(this.dst)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (< $Perm.No $k@164@01)))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(declare-const i@185@01 Int)
(set-option :timeout 0)
(push) ; 3
; [eval] (i in [0..gsize))
; [eval] [0..gsize)
(assert (Seq_contains (Seq_range 0 gsize@157@01) i@185@01))
(push) ; 4
(assert (not (not (= gsize@157@01 0))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; [eval] this.src[i]
(push) ; 4
(set-option :timeout 10)
(assert (not (< $Perm.No $k@163@01)))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 4
(assert (not (>= i@185@01 0)))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(push) ; 4
(assert (not (<
  i@185@01
  (Seq_length
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second $t@162@01))))))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(pop) ; 3
(declare-fun inv@186@01 ($Ref) Int)
(declare-fun img@187@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
(push) ; 3
(assert (not (forall ((i@185@01 Int)) (!
  (=>
    (Seq_contains (Seq_range 0 gsize@157@01) i@185@01)
    (or
      (= (/ (to_real 1) (to_real gsize@157@01)) $Perm.No)
      (< $Perm.No (/ (to_real 1) (to_real gsize@157@01)))))
  
  :qid |quant-u-17951|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Check receiver injectivity
(push) ; 3
(assert (not (forall ((i1@185@01 Int) (i2@185@01 Int)) (!
  (=>
    (and
      (and
        (Seq_contains (Seq_range 0 gsize@157@01) i1@185@01)
        (< $Perm.No (/ (to_real 1) (to_real gsize@157@01))))
      (and
        (Seq_contains (Seq_range 0 gsize@157@01) i2@185@01)
        (< $Perm.No (/ (to_real 1) (to_real gsize@157@01))))
      (=
        (Seq_index
          ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second $t@162@01))))
          i1@185@01)
        (Seq_index
          ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second $t@162@01))))
          i2@185@01)))
    (= i1@185@01 i2@185@01))
  
  :qid |Integer_value-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((i@185@01 Int)) (!
  (=>
    (and
      (Seq_contains (Seq_range 0 gsize@157@01) i@185@01)
      (< $Perm.No (/ (to_real 1) (to_real gsize@157@01))))
    (and
      (=
        (inv@186@01 (Seq_index
          ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second $t@162@01))))
          i@185@01))
        i@185@01)
      (img@187@01 (Seq_index
        ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second $t@162@01))))
        i@185@01))))
  :pattern ((Seq_index
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second $t@162@01))))
    i@185@01))
  :qid |Integer_value-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@187@01 r)
      (and
        (Seq_contains (Seq_range 0 gsize@157@01) (inv@186@01 r))
        (< $Perm.No (/ (to_real 1) (to_real gsize@157@01)))))
    (=
      (Seq_index
        ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second $t@162@01))))
        (inv@186@01 r))
      r))
  :pattern ((inv@186@01 r))
  :qid |Integer_value-fctOfInv|)))
(push) ; 3
(set-option :timeout 10)
(assert (not (forall ((i@185@01 Int)) (!
  (=
    (Seq_index
      ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second $t@162@01))))
      i@185@01)
    (Seq_index
      ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@162@01))))))
      i@185@01))
  
  :qid |quant-u-17952|))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Precomputing data for removing quantified permissions
(define-fun pTaken@188@01 ((r $Ref)) $Perm
  (ite
    (and
      (Seq_contains (Seq_range 0 gsize@157@01) (inv@186@01 r))
      (img@187@01 r)
      (=
        r
        (Seq_index
          ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second $t@162@01))))
          (inv@186@01 r))))
    ($Perm.min
      (ite
        (and
          (img@169@01 r)
          (Seq_contains (Seq_range 0 gsize@157@01) (inv@168@01 r)))
        (/ (to_real 1) (to_real gsize@157@01))
        $Perm.No)
      (/ (to_real 1) (to_real gsize@157@01)))
    $Perm.No))
(define-fun pTaken@189@01 ((r $Ref)) $Perm
  (ite
    (and
      (Seq_contains (Seq_range 0 gsize@157@01) (inv@186@01 r))
      (img@187@01 r)
      (=
        r
        (Seq_index
          ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second $t@162@01))))
          (inv@186@01 r))))
    ($Perm.min
      (ite
        (and
          (img@174@01 r)
          (Seq_contains
            (Seq_range (* gid@158@01 gsize@157@01) gsize@157@01)
            (inv@173@01 r)))
        $Perm.Write
        $Perm.No)
      (- (/ (to_real 1) (to_real gsize@157@01)) (pTaken@188@01 r)))
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
          (img@169@01 r)
          (Seq_contains (Seq_range 0 gsize@157@01) (inv@168@01 r)))
        (/ (to_real 1) (to_real gsize@157@01))
        $Perm.No)
      (pTaken@188@01 r))
    $Perm.No)
  
  :qid |quant-u-17954|))))
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
      (Seq_contains (Seq_range 0 gsize@157@01) (inv@186@01 r))
      (img@187@01 r)
      (=
        r
        (Seq_index
          ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second $t@162@01))))
          (inv@186@01 r))))
    (= (- (/ (to_real 1) (to_real gsize@157@01)) (pTaken@188@01 r)) $Perm.No))
  
  :qid |quant-u-17955|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Final check if taken enough permissions
; Done removing quantified permissions
; [eval] gid * gsize <= 0 && 0 < gsize
; [eval] gid * gsize <= 0
; [eval] gid * gsize
(set-option :timeout 0)
(push) ; 3
; [then-branch: 148 | !(gid@158@01 * gsize@157@01 <= 0) | live]
; [else-branch: 148 | gid@158@01 * gsize@157@01 <= 0 | live]
(push) ; 4
; [then-branch: 148 | !(gid@158@01 * gsize@157@01 <= 0)]
(assert (not (<= (* gid@158@01 gsize@157@01) 0)))
(pop) ; 4
(push) ; 4
; [else-branch: 148 | gid@158@01 * gsize@157@01 <= 0]
(assert (<= (* gid@158@01 gsize@157@01) 0))
; [eval] 0 < gsize
(pop) ; 4
(pop) ; 3
; Joined path conditions
; Joined path conditions
(assert (or (<= (* gid@158@01 gsize@157@01) 0) (not (<= (* gid@158@01 gsize@157@01) 0))))
(push) ; 3
(set-option :timeout 10)
(assert (not (not (and (<= (* gid@158@01 gsize@157@01) 0) (< 0 gsize@157@01)))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (and (<= (* gid@158@01 gsize@157@01) 0) (< 0 gsize@157@01))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; [then-branch: 149 | gid@158@01 * gsize@157@01 <= 0 && 0 < gsize@157@01 | live]
; [else-branch: 149 | !(gid@158@01 * gsize@157@01 <= 0 && 0 < gsize@157@01) | dead]
(set-option :timeout 0)
(push) ; 3
; [then-branch: 149 | gid@158@01 * gsize@157@01 <= 0 && 0 < gsize@157@01]
(assert (and (<= (* gid@158@01 gsize@157@01) 0) (< 0 gsize@157@01)))
; [eval] this.dst[0]
(push) ; 4
(set-option :timeout 10)
(assert (not (< $Perm.No $k@164@01)))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 4
(assert (not (<
  0
  (Seq_length
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@162@01))))))))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; Precomputing data for removing quantified permissions
(define-fun pTaken@190@01 ((r $Ref)) $Perm
  (ite
    (=
      r
      (Seq_index
        ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@162@01))))))
        0))
    ($Perm.min
      (ite
        (and
          (img@174@01 r)
          (Seq_contains
            (Seq_range (* gid@158@01 gsize@157@01) gsize@157@01)
            (inv@173@01 r)))
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
        (and
          (img@174@01 r)
          (Seq_contains
            (Seq_range (* gid@158@01 gsize@157@01) gsize@157@01)
            (inv@173@01 r)))
        $Perm.Write
        $Perm.No)
      (pTaken@190@01 r))
    $Perm.No)
  
  :qid |quant-u-17957|))))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not (forall ((r $Ref)) (!
  (= (pTaken@190@01 r) $Perm.No)
  
  :qid |quant-u-17958|))))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; Intermediate check if already taken enough permissions
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 500)
(assert (not (forall ((r $Ref)) (!
  (=>
    (=
      r
      (Seq_index
        ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@162@01))))))
        0))
    (= (- $Perm.Write (pTaken@190@01 r)) $Perm.No))
  
  :qid |quant-u-17959|))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; Final check if taken enough permissions
; Done removing quantified permissions
; [eval] gid * gsize <= 0 && 0 < gsize
; [eval] gid * gsize <= 0
; [eval] gid * gsize
(set-option :timeout 0)
(push) ; 4
; [then-branch: 150 | !(gid@158@01 * gsize@157@01 <= 0) | live]
; [else-branch: 150 | gid@158@01 * gsize@157@01 <= 0 | live]
(push) ; 5
; [then-branch: 150 | !(gid@158@01 * gsize@157@01 <= 0)]
(assert (not (<= (* gid@158@01 gsize@157@01) 0)))
(pop) ; 5
(push) ; 5
; [else-branch: 150 | gid@158@01 * gsize@157@01 <= 0]
; [eval] 0 < gsize
(pop) ; 5
(pop) ; 4
; Joined path conditions
; Joined path conditions
(push) ; 4
(set-option :timeout 10)
(assert (not (not (and (<= (* gid@158@01 gsize@157@01) 0) (< 0 gsize@157@01)))))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not (and (<= (* gid@158@01 gsize@157@01) 0) (< 0 gsize@157@01))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; [then-branch: 151 | gid@158@01 * gsize@157@01 <= 0 && 0 < gsize@157@01 | live]
; [else-branch: 151 | !(gid@158@01 * gsize@157@01 <= 0 && 0 < gsize@157@01) | dead]
(set-option :timeout 0)
(push) ; 4
; [then-branch: 151 | gid@158@01 * gsize@157@01 <= 0 && 0 < gsize@157@01]
(assert (and (<= (* gid@158@01 gsize@157@01) 0) (< 0 gsize@157@01)))
; [eval] this.dst[1]
(push) ; 5
(set-option :timeout 10)
(assert (not (< $Perm.No $k@164@01)))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 5
(assert (not (<
  1
  (Seq_length
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@162@01))))))))))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
; Precomputing data for removing quantified permissions
(define-fun pTaken@191@01 ((r $Ref)) $Perm
  (ite
    (=
      r
      (Seq_index
        ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@162@01))))))
        1))
    ($Perm.min
      (ite
        (and
          (img@174@01 r)
          (Seq_contains
            (Seq_range (* gid@158@01 gsize@157@01) gsize@157@01)
            (inv@173@01 r)))
        (- $Perm.Write (pTaken@190@01 r))
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
        (and
          (img@174@01 r)
          (Seq_contains
            (Seq_range (* gid@158@01 gsize@157@01) gsize@157@01)
            (inv@173@01 r)))
        (- $Perm.Write (pTaken@190@01 r))
        $Perm.No)
      (pTaken@191@01 r))
    $Perm.No)
  
  :qid |quant-u-17961|))))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 5
(set-option :timeout 10)
(assert (not (forall ((r $Ref)) (!
  (= (pTaken@191@01 r) $Perm.No)
  
  :qid |quant-u-17962|))))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
; Intermediate check if already taken enough permissions
(set-option :timeout 0)
(push) ; 5
(set-option :timeout 500)
(assert (not (forall ((r $Ref)) (!
  (=>
    (=
      r
      (Seq_index
        ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@162@01))))))
        1))
    (= (- $Perm.Write (pTaken@191@01 r)) $Perm.No))
  
  :qid |quant-u-17963|))))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
; Final check if taken enough permissions
; Done removing quantified permissions
(pop) ; 4
(pop) ; 3
(pop) ; 2
(pop) ; 1
; ---------- main_post_check_1 ----------
(declare-const this@192@01 $Ref)
(declare-const tcount@193@01 Int)
(declare-const gsize@194@01 Int)
(declare-const tid@195@01 Int)
(declare-const gid@196@01 Int)
(declare-const lid@197@01 Int)
(declare-const k@198@01 Int)
(declare-const half@199@01 Int)
(declare-const offset@200@01 Int)
(declare-const this@201@01 $Ref)
(declare-const tcount@202@01 Int)
(declare-const gsize@203@01 Int)
(declare-const tid@204@01 Int)
(declare-const gid@205@01 Int)
(declare-const lid@206@01 Int)
(declare-const k@207@01 Int)
(declare-const half@208@01 Int)
(declare-const offset@209@01 Int)
(set-option :timeout 0)
(push) ; 1
(declare-const $t@210@01 $Snap)
(assert (= $t@210@01 ($Snap.combine ($Snap.first $t@210@01) ($Snap.second $t@210@01))))
(assert (= ($Snap.first $t@210@01) $Snap.unit))
; [eval] 0 <= tid
(assert (<= 0 tid@204@01))
(assert (=
  ($Snap.second $t@210@01)
  ($Snap.combine
    ($Snap.first ($Snap.second $t@210@01))
    ($Snap.second ($Snap.second $t@210@01)))))
(assert (= ($Snap.first ($Snap.second $t@210@01)) $Snap.unit))
; [eval] tid < tcount
(assert (< tid@204@01 tcount@202@01))
(assert (=
  ($Snap.second ($Snap.second $t@210@01))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second $t@210@01)))
    ($Snap.second ($Snap.second ($Snap.second $t@210@01))))))
(assert (= ($Snap.first ($Snap.second ($Snap.second $t@210@01))) $Snap.unit))
; [eval] tid == lid
(assert (= tid@204@01 lid@206@01))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second $t@210@01)))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@210@01))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@210@01)))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@210@01))))
  $Snap.unit))
; [eval] tcount == gsize
(assert (= tcount@202@01 gsize@203@01))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@210@01))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@210@01)))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@210@01))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@210@01)))))
  $Snap.unit))
; [eval] gid == 0
(assert (= gid@205@01 0))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@210@01)))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@210@01))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@210@01)))))))))
(declare-const $k@211@01 $Perm)
(assert ($Perm.isReadVar $k@211@01))
(assert (<= $Perm.No $k@211@01))
(assert (<= $k@211@01 $Perm.Write))
(assert (=> (< $Perm.No $k@211@01) (not (= this@201@01 $Ref.null))))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@210@01))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@210@01)))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@210@01))))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@210@01)))))))
  $Snap.unit))
; [eval] |this.src| == gsize
; [eval] |this.src|
(push) ; 2
(set-option :timeout 10)
(assert (not (< $Perm.No $k@211@01)))
(check-sat)
; unsat
(pop) ; 2
; 0.00s
; (get-info :all-statistics)
(assert (=
  (Seq_length
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@210@01))))))))
  gsize@203@01))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@210@01)))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@210@01))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@210@01)))))))))))
(declare-const $k@212@01 $Perm)
(assert ($Perm.isReadVar $k@212@01))
(assert (<= $Perm.No $k@212@01))
(assert (<= $k@212@01 $Perm.Write))
(assert (=> (< $Perm.No $k@212@01) (not (= this@201@01 $Ref.null))))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@210@01))))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@210@01)))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@210@01))))))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@210@01)))))))))
  $Snap.unit))
; [eval] |this.dst| == gsize
; [eval] |this.dst|
(set-option :timeout 0)
(push) ; 2
(set-option :timeout 10)
(assert (not (< $Perm.No $k@212@01)))
(check-sat)
; unsat
(pop) ; 2
; 0.00s
; (get-info :all-statistics)
(assert (=
  (Seq_length
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@210@01))))))))))
  gsize@203@01))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@210@01)))))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@210@01))))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@210@01)))))))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@210@01))))))))))
  $Snap.unit))
; [eval] 4 <= gsize
(assert (<= 4 gsize@203@01))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@210@01))))))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@210@01)))))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@210@01))))))))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@210@01)))))))))))
  $Snap.unit))
; [eval] gsize % 2 == 0
; [eval] gsize % 2
(assert (= (mod gsize@203@01 2) 0))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@210@01)))))))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@210@01))))))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@210@01)))))))))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@210@01))))))))))))
  $Snap.unit))
; [eval] (forall i: Int, j: Int :: { this.src[i], this.src[j] } 0 <= i && (i < gsize && (0 <= j && (j < gsize && i != j))) ==> this.src[i] != this.src[j])
(declare-const i@213@01 Int)
(declare-const j@214@01 Int)
(set-option :timeout 0)
(push) ; 2
; [eval] 0 <= i && (i < gsize && (0 <= j && (j < gsize && i != j))) ==> this.src[i] != this.src[j]
; [eval] 0 <= i && (i < gsize && (0 <= j && (j < gsize && i != j)))
; [eval] 0 <= i
(push) ; 3
; [then-branch: 152 | !(0 <= i@213@01) | live]
; [else-branch: 152 | 0 <= i@213@01 | live]
(push) ; 4
; [then-branch: 152 | !(0 <= i@213@01)]
(assert (not (<= 0 i@213@01)))
(pop) ; 4
(push) ; 4
; [else-branch: 152 | 0 <= i@213@01]
(assert (<= 0 i@213@01))
; [eval] i < gsize
(push) ; 5
; [then-branch: 153 | !(i@213@01 < gsize@203@01) | live]
; [else-branch: 153 | i@213@01 < gsize@203@01 | live]
(push) ; 6
; [then-branch: 153 | !(i@213@01 < gsize@203@01)]
(assert (not (< i@213@01 gsize@203@01)))
(pop) ; 6
(push) ; 6
; [else-branch: 153 | i@213@01 < gsize@203@01]
(assert (< i@213@01 gsize@203@01))
; [eval] 0 <= j
(push) ; 7
; [then-branch: 154 | !(0 <= j@214@01) | live]
; [else-branch: 154 | 0 <= j@214@01 | live]
(push) ; 8
; [then-branch: 154 | !(0 <= j@214@01)]
(assert (not (<= 0 j@214@01)))
(pop) ; 8
(push) ; 8
; [else-branch: 154 | 0 <= j@214@01]
(assert (<= 0 j@214@01))
; [eval] j < gsize
(push) ; 9
; [then-branch: 155 | !(j@214@01 < gsize@203@01) | live]
; [else-branch: 155 | j@214@01 < gsize@203@01 | live]
(push) ; 10
; [then-branch: 155 | !(j@214@01 < gsize@203@01)]
(assert (not (< j@214@01 gsize@203@01)))
(pop) ; 10
(push) ; 10
; [else-branch: 155 | j@214@01 < gsize@203@01]
(assert (< j@214@01 gsize@203@01))
; [eval] i != j
(pop) ; 10
(pop) ; 9
; Joined path conditions
; Joined path conditions
(assert (or (< j@214@01 gsize@203@01) (not (< j@214@01 gsize@203@01))))
(pop) ; 8
(pop) ; 7
; Joined path conditions
; Joined path conditions
(assert (=>
  (<= 0 j@214@01)
  (and
    (<= 0 j@214@01)
    (or (< j@214@01 gsize@203@01) (not (< j@214@01 gsize@203@01))))))
(assert (or (<= 0 j@214@01) (not (<= 0 j@214@01))))
(pop) ; 6
(pop) ; 5
; Joined path conditions
; Joined path conditions
(assert (=>
  (< i@213@01 gsize@203@01)
  (and
    (< i@213@01 gsize@203@01)
    (=>
      (<= 0 j@214@01)
      (and
        (<= 0 j@214@01)
        (or (< j@214@01 gsize@203@01) (not (< j@214@01 gsize@203@01)))))
    (or (<= 0 j@214@01) (not (<= 0 j@214@01))))))
(assert (or (< i@213@01 gsize@203@01) (not (< i@213@01 gsize@203@01))))
(pop) ; 4
(pop) ; 3
; Joined path conditions
; Joined path conditions
(assert (=>
  (<= 0 i@213@01)
  (and
    (<= 0 i@213@01)
    (=>
      (< i@213@01 gsize@203@01)
      (and
        (< i@213@01 gsize@203@01)
        (=>
          (<= 0 j@214@01)
          (and
            (<= 0 j@214@01)
            (or (< j@214@01 gsize@203@01) (not (< j@214@01 gsize@203@01)))))
        (or (<= 0 j@214@01) (not (<= 0 j@214@01)))))
    (or (< i@213@01 gsize@203@01) (not (< i@213@01 gsize@203@01))))))
(assert (or (<= 0 i@213@01) (not (<= 0 i@213@01))))
(push) ; 3
; [then-branch: 156 | 0 <= i@213@01 && i@213@01 < gsize@203@01 && 0 <= j@214@01 && j@214@01 < gsize@203@01 && i@213@01 != j@214@01 | live]
; [else-branch: 156 | !(0 <= i@213@01 && i@213@01 < gsize@203@01 && 0 <= j@214@01 && j@214@01 < gsize@203@01 && i@213@01 != j@214@01) | live]
(push) ; 4
; [then-branch: 156 | 0 <= i@213@01 && i@213@01 < gsize@203@01 && 0 <= j@214@01 && j@214@01 < gsize@203@01 && i@213@01 != j@214@01]
(assert (and
  (<= 0 i@213@01)
  (and
    (< i@213@01 gsize@203@01)
    (and
      (<= 0 j@214@01)
      (and (< j@214@01 gsize@203@01) (not (= i@213@01 j@214@01)))))))
; [eval] this.src[i] != this.src[j]
; [eval] this.src[i]
(push) ; 5
(set-option :timeout 10)
(assert (not (< $Perm.No $k@211@01)))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 5
(assert (not (>= i@213@01 0)))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(push) ; 5
(assert (not (<
  i@213@01
  (Seq_length
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@210@01)))))))))))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
; [eval] this.src[j]
(push) ; 5
(set-option :timeout 10)
(assert (not (< $Perm.No $k@211@01)))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 5
(assert (not (>= j@214@01 0)))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(push) ; 5
(assert (not (<
  j@214@01
  (Seq_length
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@210@01)))))))))))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(pop) ; 4
(push) ; 4
; [else-branch: 156 | !(0 <= i@213@01 && i@213@01 < gsize@203@01 && 0 <= j@214@01 && j@214@01 < gsize@203@01 && i@213@01 != j@214@01)]
(assert (not
  (and
    (<= 0 i@213@01)
    (and
      (< i@213@01 gsize@203@01)
      (and
        (<= 0 j@214@01)
        (and (< j@214@01 gsize@203@01) (not (= i@213@01 j@214@01))))))))
(pop) ; 4
(pop) ; 3
; Joined path conditions
(assert (=>
  (and
    (<= 0 i@213@01)
    (and
      (< i@213@01 gsize@203@01)
      (and
        (<= 0 j@214@01)
        (and (< j@214@01 gsize@203@01) (not (= i@213@01 j@214@01))))))
  (and
    (<= 0 i@213@01)
    (< i@213@01 gsize@203@01)
    (<= 0 j@214@01)
    (< j@214@01 gsize@203@01)
    (not (= i@213@01 j@214@01)))))
; Joined path conditions
(assert (or
  (not
    (and
      (<= 0 i@213@01)
      (and
        (< i@213@01 gsize@203@01)
        (and
          (<= 0 j@214@01)
          (and (< j@214@01 gsize@203@01) (not (= i@213@01 j@214@01)))))))
  (and
    (<= 0 i@213@01)
    (and
      (< i@213@01 gsize@203@01)
      (and
        (<= 0 j@214@01)
        (and (< j@214@01 gsize@203@01) (not (= i@213@01 j@214@01))))))))
(pop) ; 2
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall ((i@213@01 Int) (j@214@01 Int)) (!
  (and
    (=>
      (<= 0 i@213@01)
      (and
        (<= 0 i@213@01)
        (=>
          (< i@213@01 gsize@203@01)
          (and
            (< i@213@01 gsize@203@01)
            (=>
              (<= 0 j@214@01)
              (and
                (<= 0 j@214@01)
                (or (< j@214@01 gsize@203@01) (not (< j@214@01 gsize@203@01)))))
            (or (<= 0 j@214@01) (not (<= 0 j@214@01)))))
        (or (< i@213@01 gsize@203@01) (not (< i@213@01 gsize@203@01)))))
    (or (<= 0 i@213@01) (not (<= 0 i@213@01)))
    (=>
      (and
        (<= 0 i@213@01)
        (and
          (< i@213@01 gsize@203@01)
          (and
            (<= 0 j@214@01)
            (and (< j@214@01 gsize@203@01) (not (= i@213@01 j@214@01))))))
      (and
        (<= 0 i@213@01)
        (< i@213@01 gsize@203@01)
        (<= 0 j@214@01)
        (< j@214@01 gsize@203@01)
        (not (= i@213@01 j@214@01))))
    (or
      (not
        (and
          (<= 0 i@213@01)
          (and
            (< i@213@01 gsize@203@01)
            (and
              (<= 0 j@214@01)
              (and (< j@214@01 gsize@203@01) (not (= i@213@01 j@214@01)))))))
      (and
        (<= 0 i@213@01)
        (and
          (< i@213@01 gsize@203@01)
          (and
            (<= 0 j@214@01)
            (and (< j@214@01 gsize@203@01) (not (= i@213@01 j@214@01))))))))
  :pattern ((Seq_index
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@210@01)))))))
    i@213@01) (Seq_index
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@210@01)))))))
    j@214@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/third_party/max-two-range.vpr@182@12@182@120-aux|)))
(assert (forall ((i@213@01 Int) (j@214@01 Int)) (!
  (=>
    (and
      (<= 0 i@213@01)
      (and
        (< i@213@01 gsize@203@01)
        (and
          (<= 0 j@214@01)
          (and (< j@214@01 gsize@203@01) (not (= i@213@01 j@214@01))))))
    (not
      (=
        (Seq_index
          ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@210@01)))))))
          i@213@01)
        (Seq_index
          ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@210@01)))))))
          j@214@01))))
  :pattern ((Seq_index
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@210@01)))))))
    i@213@01) (Seq_index
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@210@01)))))))
    j@214@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/third_party/max-two-range.vpr@182@12@182@120|)))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@210@01))))))))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@210@01)))))))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@210@01))))))))))))))))
(declare-const i@215@01 Int)
(push) ; 2
; [eval] (i in [0..gsize))
; [eval] [0..gsize)
(assert (Seq_contains (Seq_range 0 gsize@203@01) i@215@01))
; [eval] this.src[i]
(push) ; 3
(set-option :timeout 10)
(assert (not (< $Perm.No $k@211@01)))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(assert (not (>= i@215@01 0)))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(push) ; 3
(assert (not (<
  i@215@01
  (Seq_length
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@210@01)))))))))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(push) ; 3
(assert (not (not (= gsize@203@01 0))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(pop) ; 2
(declare-fun inv@216@01 ($Ref) Int)
(declare-fun img@217@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
(push) ; 2
(assert (not (forall ((i@215@01 Int)) (!
  (=>
    (Seq_contains (Seq_range 0 gsize@203@01) i@215@01)
    (or
      (= (/ (to_real 1) (to_real gsize@203@01)) $Perm.No)
      (< $Perm.No (/ (to_real 1) (to_real gsize@203@01)))))
  
  :qid |quant-u-17964|))))
(check-sat)
; unsat
(pop) ; 2
; 0.00s
; (get-info :all-statistics)
; Check receiver injectivity
(push) ; 2
(assert (not (forall ((i1@215@01 Int) (i2@215@01 Int)) (!
  (=>
    (and
      (and
        (Seq_contains (Seq_range 0 gsize@203@01) i1@215@01)
        (< $Perm.No (/ (to_real 1) (to_real gsize@203@01))))
      (and
        (Seq_contains (Seq_range 0 gsize@203@01) i2@215@01)
        (< $Perm.No (/ (to_real 1) (to_real gsize@203@01))))
      (=
        (Seq_index
          ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@210@01)))))))
          i1@215@01)
        (Seq_index
          ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@210@01)))))))
          i2@215@01)))
    (= i1@215@01 i2@215@01))
  
  :qid |Integer_value-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 2
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((i@215@01 Int)) (!
  (=>
    (and
      (Seq_contains (Seq_range 0 gsize@203@01) i@215@01)
      (< $Perm.No (/ (to_real 1) (to_real gsize@203@01))))
    (and
      (=
        (inv@216@01 (Seq_index
          ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@210@01)))))))
          i@215@01))
        i@215@01)
      (img@217@01 (Seq_index
        ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@210@01)))))))
        i@215@01))))
  :pattern ((Seq_index
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@210@01)))))))
    i@215@01))
  :qid |quant-u-17965|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@217@01 r)
      (and
        (Seq_contains (Seq_range 0 gsize@203@01) (inv@216@01 r))
        (< $Perm.No (/ (to_real 1) (to_real gsize@203@01)))))
    (=
      (Seq_index
        ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@210@01)))))))
        (inv@216@01 r))
      r))
  :pattern ((inv@216@01 r))
  :qid |Integer_value-fctOfInv|)))
; Permissions are non-negative
(assert (forall ((i@215@01 Int)) (!
  (<= $Perm.No (/ (to_real 1) (to_real gsize@203@01)))
  :pattern ((Seq_index
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@210@01)))))))
    i@215@01))
  :qid |Integer_value-permAtLeastZero|)))
; Field permissions are at most one
(assert (forall ((i@215@01 Int)) (!
  (<= (/ (to_real 1) (to_real gsize@203@01)) $Perm.Write)
  :pattern ((Seq_index
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@210@01)))))))
    i@215@01))
  :qid |Integer_value-permAtMostOne|)))
; Permission implies non-null receiver
(assert (forall ((i@215@01 Int)) (!
  (=>
    (and
      (Seq_contains (Seq_range 0 gsize@203@01) i@215@01)
      (< $Perm.No (/ (to_real 1) (to_real gsize@203@01))))
    (not
      (=
        (Seq_index
          ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@210@01)))))))
          i@215@01)
        $Ref.null)))
  :pattern ((Seq_index
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@210@01)))))))
    i@215@01))
  :qid |Integer_value-permImpliesNonNull|)))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@210@01)))))))))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@210@01))))))))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@210@01)))))))))))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@210@01))))))))))))))
  $Snap.unit))
; [eval] (forall i: Int, j: Int :: { this.dst[i], this.dst[j] } 0 <= i && (i < gsize && (0 <= j && (j < gsize && i != j))) ==> this.dst[i] != this.dst[j])
(declare-const i@218@01 Int)
(declare-const j@219@01 Int)
(push) ; 2
; [eval] 0 <= i && (i < gsize && (0 <= j && (j < gsize && i != j))) ==> this.dst[i] != this.dst[j]
; [eval] 0 <= i && (i < gsize && (0 <= j && (j < gsize && i != j)))
; [eval] 0 <= i
(push) ; 3
; [then-branch: 157 | !(0 <= i@218@01) | live]
; [else-branch: 157 | 0 <= i@218@01 | live]
(push) ; 4
; [then-branch: 157 | !(0 <= i@218@01)]
(assert (not (<= 0 i@218@01)))
(pop) ; 4
(push) ; 4
; [else-branch: 157 | 0 <= i@218@01]
(assert (<= 0 i@218@01))
; [eval] i < gsize
(push) ; 5
; [then-branch: 158 | !(i@218@01 < gsize@203@01) | live]
; [else-branch: 158 | i@218@01 < gsize@203@01 | live]
(push) ; 6
; [then-branch: 158 | !(i@218@01 < gsize@203@01)]
(assert (not (< i@218@01 gsize@203@01)))
(pop) ; 6
(push) ; 6
; [else-branch: 158 | i@218@01 < gsize@203@01]
(assert (< i@218@01 gsize@203@01))
; [eval] 0 <= j
(push) ; 7
; [then-branch: 159 | !(0 <= j@219@01) | live]
; [else-branch: 159 | 0 <= j@219@01 | live]
(push) ; 8
; [then-branch: 159 | !(0 <= j@219@01)]
(assert (not (<= 0 j@219@01)))
(pop) ; 8
(push) ; 8
; [else-branch: 159 | 0 <= j@219@01]
(assert (<= 0 j@219@01))
; [eval] j < gsize
(push) ; 9
; [then-branch: 160 | !(j@219@01 < gsize@203@01) | live]
; [else-branch: 160 | j@219@01 < gsize@203@01 | live]
(push) ; 10
; [then-branch: 160 | !(j@219@01 < gsize@203@01)]
(assert (not (< j@219@01 gsize@203@01)))
(pop) ; 10
(push) ; 10
; [else-branch: 160 | j@219@01 < gsize@203@01]
(assert (< j@219@01 gsize@203@01))
; [eval] i != j
(pop) ; 10
(pop) ; 9
; Joined path conditions
; Joined path conditions
(assert (or (< j@219@01 gsize@203@01) (not (< j@219@01 gsize@203@01))))
(pop) ; 8
(pop) ; 7
; Joined path conditions
; Joined path conditions
(assert (=>
  (<= 0 j@219@01)
  (and
    (<= 0 j@219@01)
    (or (< j@219@01 gsize@203@01) (not (< j@219@01 gsize@203@01))))))
(assert (or (<= 0 j@219@01) (not (<= 0 j@219@01))))
(pop) ; 6
(pop) ; 5
; Joined path conditions
; Joined path conditions
(assert (=>
  (< i@218@01 gsize@203@01)
  (and
    (< i@218@01 gsize@203@01)
    (=>
      (<= 0 j@219@01)
      (and
        (<= 0 j@219@01)
        (or (< j@219@01 gsize@203@01) (not (< j@219@01 gsize@203@01)))))
    (or (<= 0 j@219@01) (not (<= 0 j@219@01))))))
(assert (or (< i@218@01 gsize@203@01) (not (< i@218@01 gsize@203@01))))
(pop) ; 4
(pop) ; 3
; Joined path conditions
; Joined path conditions
(assert (=>
  (<= 0 i@218@01)
  (and
    (<= 0 i@218@01)
    (=>
      (< i@218@01 gsize@203@01)
      (and
        (< i@218@01 gsize@203@01)
        (=>
          (<= 0 j@219@01)
          (and
            (<= 0 j@219@01)
            (or (< j@219@01 gsize@203@01) (not (< j@219@01 gsize@203@01)))))
        (or (<= 0 j@219@01) (not (<= 0 j@219@01)))))
    (or (< i@218@01 gsize@203@01) (not (< i@218@01 gsize@203@01))))))
(assert (or (<= 0 i@218@01) (not (<= 0 i@218@01))))
(push) ; 3
; [then-branch: 161 | 0 <= i@218@01 && i@218@01 < gsize@203@01 && 0 <= j@219@01 && j@219@01 < gsize@203@01 && i@218@01 != j@219@01 | live]
; [else-branch: 161 | !(0 <= i@218@01 && i@218@01 < gsize@203@01 && 0 <= j@219@01 && j@219@01 < gsize@203@01 && i@218@01 != j@219@01) | live]
(push) ; 4
; [then-branch: 161 | 0 <= i@218@01 && i@218@01 < gsize@203@01 && 0 <= j@219@01 && j@219@01 < gsize@203@01 && i@218@01 != j@219@01]
(assert (and
  (<= 0 i@218@01)
  (and
    (< i@218@01 gsize@203@01)
    (and
      (<= 0 j@219@01)
      (and (< j@219@01 gsize@203@01) (not (= i@218@01 j@219@01)))))))
; [eval] this.dst[i] != this.dst[j]
; [eval] this.dst[i]
(push) ; 5
(set-option :timeout 10)
(assert (not (< $Perm.No $k@212@01)))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 5
(assert (not (>= i@218@01 0)))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(push) ; 5
(assert (not (<
  i@218@01
  (Seq_length
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@210@01)))))))))))))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
; [eval] this.dst[j]
(push) ; 5
(set-option :timeout 10)
(assert (not (< $Perm.No $k@212@01)))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 5
(assert (not (>= j@219@01 0)))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(push) ; 5
(assert (not (<
  j@219@01
  (Seq_length
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@210@01)))))))))))))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(pop) ; 4
(push) ; 4
; [else-branch: 161 | !(0 <= i@218@01 && i@218@01 < gsize@203@01 && 0 <= j@219@01 && j@219@01 < gsize@203@01 && i@218@01 != j@219@01)]
(assert (not
  (and
    (<= 0 i@218@01)
    (and
      (< i@218@01 gsize@203@01)
      (and
        (<= 0 j@219@01)
        (and (< j@219@01 gsize@203@01) (not (= i@218@01 j@219@01))))))))
(pop) ; 4
(pop) ; 3
; Joined path conditions
(assert (=>
  (and
    (<= 0 i@218@01)
    (and
      (< i@218@01 gsize@203@01)
      (and
        (<= 0 j@219@01)
        (and (< j@219@01 gsize@203@01) (not (= i@218@01 j@219@01))))))
  (and
    (<= 0 i@218@01)
    (< i@218@01 gsize@203@01)
    (<= 0 j@219@01)
    (< j@219@01 gsize@203@01)
    (not (= i@218@01 j@219@01)))))
; Joined path conditions
(assert (or
  (not
    (and
      (<= 0 i@218@01)
      (and
        (< i@218@01 gsize@203@01)
        (and
          (<= 0 j@219@01)
          (and (< j@219@01 gsize@203@01) (not (= i@218@01 j@219@01)))))))
  (and
    (<= 0 i@218@01)
    (and
      (< i@218@01 gsize@203@01)
      (and
        (<= 0 j@219@01)
        (and (< j@219@01 gsize@203@01) (not (= i@218@01 j@219@01))))))))
(pop) ; 2
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall ((i@218@01 Int) (j@219@01 Int)) (!
  (and
    (=>
      (<= 0 i@218@01)
      (and
        (<= 0 i@218@01)
        (=>
          (< i@218@01 gsize@203@01)
          (and
            (< i@218@01 gsize@203@01)
            (=>
              (<= 0 j@219@01)
              (and
                (<= 0 j@219@01)
                (or (< j@219@01 gsize@203@01) (not (< j@219@01 gsize@203@01)))))
            (or (<= 0 j@219@01) (not (<= 0 j@219@01)))))
        (or (< i@218@01 gsize@203@01) (not (< i@218@01 gsize@203@01)))))
    (or (<= 0 i@218@01) (not (<= 0 i@218@01)))
    (=>
      (and
        (<= 0 i@218@01)
        (and
          (< i@218@01 gsize@203@01)
          (and
            (<= 0 j@219@01)
            (and (< j@219@01 gsize@203@01) (not (= i@218@01 j@219@01))))))
      (and
        (<= 0 i@218@01)
        (< i@218@01 gsize@203@01)
        (<= 0 j@219@01)
        (< j@219@01 gsize@203@01)
        (not (= i@218@01 j@219@01))))
    (or
      (not
        (and
          (<= 0 i@218@01)
          (and
            (< i@218@01 gsize@203@01)
            (and
              (<= 0 j@219@01)
              (and (< j@219@01 gsize@203@01) (not (= i@218@01 j@219@01)))))))
      (and
        (<= 0 i@218@01)
        (and
          (< i@218@01 gsize@203@01)
          (and
            (<= 0 j@219@01)
            (and (< j@219@01 gsize@203@01) (not (= i@218@01 j@219@01))))))))
  :pattern ((Seq_index
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@210@01)))))))))
    i@218@01) (Seq_index
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@210@01)))))))))
    j@219@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/third_party/max-two-range.vpr@184@12@184@120-aux|)))
(assert (forall ((i@218@01 Int) (j@219@01 Int)) (!
  (=>
    (and
      (<= 0 i@218@01)
      (and
        (< i@218@01 gsize@203@01)
        (and
          (<= 0 j@219@01)
          (and (< j@219@01 gsize@203@01) (not (= i@218@01 j@219@01))))))
    (not
      (=
        (Seq_index
          ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@210@01)))))))))
          i@218@01)
        (Seq_index
          ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@210@01)))))))))
          j@219@01))))
  :pattern ((Seq_index
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@210@01)))))))))
    i@218@01) (Seq_index
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@210@01)))))))))
    j@219@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/third_party/max-two-range.vpr@184@12@184@120|)))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@210@01))))))))))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@210@01)))))))))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@210@01))))))))))))))))))
(declare-const _x_tid@220@01 Int)
(push) ; 2
; [eval] (_x_tid in [0..gsize))
; [eval] [0..gsize)
(assert (Seq_contains (Seq_range 0 gsize@203@01) _x_tid@220@01))
; [eval] this.dst[_x_tid]
(push) ; 3
(set-option :timeout 10)
(assert (not (< $Perm.No $k@212@01)))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(assert (not (>= _x_tid@220@01 0)))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(push) ; 3
(assert (not (<
  _x_tid@220@01
  (Seq_length
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@210@01)))))))))))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(pop) ; 2
(declare-fun inv@221@01 ($Ref) Int)
(declare-fun img@222@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
; Check receiver injectivity
(push) ; 2
(assert (not (forall ((_x_tid1@220@01 Int) (_x_tid2@220@01 Int)) (!
  (=>
    (and
      (Seq_contains (Seq_range 0 gsize@203@01) _x_tid1@220@01)
      (Seq_contains (Seq_range 0 gsize@203@01) _x_tid2@220@01)
      (=
        (Seq_index
          ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@210@01)))))))))
          _x_tid1@220@01)
        (Seq_index
          ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@210@01)))))))))
          _x_tid2@220@01)))
    (= _x_tid1@220@01 _x_tid2@220@01))
  
  :qid |Integer_value-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 2
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((_x_tid@220@01 Int)) (!
  (=>
    (Seq_contains (Seq_range 0 gsize@203@01) _x_tid@220@01)
    (and
      (=
        (inv@221@01 (Seq_index
          ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@210@01)))))))))
          _x_tid@220@01))
        _x_tid@220@01)
      (img@222@01 (Seq_index
        ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@210@01)))))))))
        _x_tid@220@01))))
  :pattern ((Seq_index
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@210@01)))))))))
    _x_tid@220@01))
  :qid |quant-u-17967|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@222@01 r) (Seq_contains (Seq_range 0 gsize@203@01) (inv@221@01 r)))
    (=
      (Seq_index
        ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@210@01)))))))))
        (inv@221@01 r))
      r))
  :pattern ((inv@221@01 r))
  :qid |Integer_value-fctOfInv|)))
; Permissions are non-negative
; Field permissions are at most one
; Permission implies non-null receiver
(assert (forall ((_x_tid@220@01 Int)) (!
  (=>
    (Seq_contains (Seq_range 0 gsize@203@01) _x_tid@220@01)
    (not
      (=
        (Seq_index
          ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@210@01)))))))))
          _x_tid@220@01)
        $Ref.null)))
  :pattern ((Seq_index
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@210@01)))))))))
    _x_tid@220@01))
  :qid |Integer_value-permImpliesNonNull|)))
(push) ; 2
(set-option :timeout 10)
(assert (not (forall ((r $Ref)) (!
  (and
    (=
      (Seq_index
        ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@210@01)))))))))
        _x_tid@220@01)
      (Seq_index
        ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@210@01)))))))
        i@215@01))
    (=
      (and
        (img@222@01 r)
        (Seq_contains (Seq_range 0 gsize@203@01) (inv@221@01 r)))
      (and
        (img@217@01 r)
        (Seq_contains (Seq_range 0 gsize@203@01) (inv@216@01 r)))))
  
  :qid |quant-u-17968|))))
(check-sat)
; unknown
(pop) ; 2
; 0.00s
; (get-info :all-statistics)
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@210@01)))))))))))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@210@01))))))))))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@210@01)))))))))))))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@210@01))))))))))))))))
  $Snap.unit))
; [eval] half + half == gsize
; [eval] half + half
(assert (= (+ half@208@01 half@208@01) gsize@203@01))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@210@01))))))))))))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@210@01)))))))))))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@210@01))))))))))))))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@210@01)))))))))))))))))
  $Snap.unit))
; [eval] 0 <= 0 && 0 < gsize ==> (forall i: Int :: { this.src[i] } 0 <= i && i < half ==> this.dst[0].Integer_value >= this.src[i].Integer_value)
; [eval] 0 <= 0 && 0 < gsize
; [eval] 0 <= 0
(set-option :timeout 0)
(push) ; 2
; [then-branch: 162 | False | live]
; [else-branch: 162 | True | live]
(push) ; 3
; [then-branch: 162 | False]
(assert false)
(pop) ; 3
(push) ; 3
; [else-branch: 162 | True]
; [eval] 0 < gsize
(pop) ; 3
(pop) ; 2
; Joined path conditions
; Joined path conditions
(push) ; 2
(push) ; 3
(set-option :timeout 10)
(assert (not (not (< 0 gsize@203@01))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (< 0 gsize@203@01)))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; [then-branch: 163 | 0 < gsize@203@01 | live]
; [else-branch: 163 | !(0 < gsize@203@01) | dead]
(set-option :timeout 0)
(push) ; 3
; [then-branch: 163 | 0 < gsize@203@01]
(assert (< 0 gsize@203@01))
; [eval] (forall i: Int :: { this.src[i] } 0 <= i && i < half ==> this.dst[0].Integer_value >= this.src[i].Integer_value)
(declare-const i@223@01 Int)
(push) ; 4
; [eval] 0 <= i && i < half ==> this.dst[0].Integer_value >= this.src[i].Integer_value
; [eval] 0 <= i && i < half
; [eval] 0 <= i
(push) ; 5
; [then-branch: 164 | !(0 <= i@223@01) | live]
; [else-branch: 164 | 0 <= i@223@01 | live]
(push) ; 6
; [then-branch: 164 | !(0 <= i@223@01)]
(assert (not (<= 0 i@223@01)))
(pop) ; 6
(push) ; 6
; [else-branch: 164 | 0 <= i@223@01]
(assert (<= 0 i@223@01))
; [eval] i < half
(pop) ; 6
(pop) ; 5
; Joined path conditions
; Joined path conditions
(assert (or (<= 0 i@223@01) (not (<= 0 i@223@01))))
(push) ; 5
; [then-branch: 165 | 0 <= i@223@01 && i@223@01 < half@208@01 | live]
; [else-branch: 165 | !(0 <= i@223@01 && i@223@01 < half@208@01) | live]
(push) ; 6
; [then-branch: 165 | 0 <= i@223@01 && i@223@01 < half@208@01]
(assert (and (<= 0 i@223@01) (< i@223@01 half@208@01)))
; [eval] this.dst[0].Integer_value >= this.src[i].Integer_value
; [eval] this.dst[0]
(push) ; 7
(set-option :timeout 10)
(assert (not (< $Perm.No $k@212@01)))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 7
(assert (not (<
  0
  (Seq_length
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@210@01)))))))))))))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(declare-const sm@224@01 $FVF<Integer_value>)
; Definitional axioms for snapshot map values
(assert (forall ((r $Ref)) (!
  (=>
    (ite
      (and
        (img@217@01 r)
        (Seq_contains (Seq_range 0 gsize@203@01) (inv@216@01 r)))
      (< $Perm.No (/ (to_real 1) (to_real gsize@203@01)))
      false)
    (=
      ($FVF.lookup_Integer_value (as sm@224@01  $FVF<Integer_value>) r)
      ($FVF.lookup_Integer_value ($SortWrappers.$SnapTo$FVF<Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@210@01)))))))))))))) r)))
  :pattern (($FVF.lookup_Integer_value (as sm@224@01  $FVF<Integer_value>) r))
  :pattern (($FVF.lookup_Integer_value ($SortWrappers.$SnapTo$FVF<Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@210@01)))))))))))))) r))
  :qid |qp.fvfValDef19|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@222@01 r) (Seq_contains (Seq_range 0 gsize@203@01) (inv@221@01 r)))
    (=
      ($FVF.lookup_Integer_value (as sm@224@01  $FVF<Integer_value>) r)
      ($FVF.lookup_Integer_value ($SortWrappers.$SnapTo$FVF<Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@210@01)))))))))))))))) r)))
  :pattern (($FVF.lookup_Integer_value (as sm@224@01  $FVF<Integer_value>) r))
  :pattern (($FVF.lookup_Integer_value ($SortWrappers.$SnapTo$FVF<Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@210@01)))))))))))))))) r))
  :qid |qp.fvfValDef20|)))
(declare-const pm@225@01 $FPM)
(assert (forall ((r $Ref)) (!
  (=
    ($FVF.perm_Integer_value (as pm@225@01  $FPM) r)
    (+
      (ite
        (and
          (img@217@01 r)
          (Seq_contains (Seq_range 0 gsize@203@01) (inv@216@01 r)))
        (/ (to_real 1) (to_real gsize@203@01))
        $Perm.No)
      (ite
        (and
          (img@222@01 r)
          (Seq_contains (Seq_range 0 gsize@203@01) (inv@221@01 r)))
        $Perm.Write
        $Perm.No)))
  :pattern (($FVF.perm_Integer_value (as pm@225@01  $FPM) r))
  :qid |qp.resPrmSumDef21|)))
(push) ; 7
(assert (not (<
  $Perm.No
  ($FVF.perm_Integer_value (as pm@225@01  $FPM) (Seq_index
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@210@01)))))))))
    0)))))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
; [eval] this.src[i]
(push) ; 7
(set-option :timeout 10)
(assert (not (< $Perm.No $k@211@01)))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 7
(assert (not (>= i@223@01 0)))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(push) ; 7
(assert (not (<
  i@223@01
  (Seq_length
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@210@01)))))))))))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(assert (and
  (forall ((r $Ref)) (!
    (=>
      (ite
        (and
          (img@217@01 r)
          (Seq_contains (Seq_range 0 gsize@203@01) (inv@216@01 r)))
        (< $Perm.No (/ (to_real 1) (to_real gsize@203@01)))
        false)
      (=
        ($FVF.lookup_Integer_value (as sm@224@01  $FVF<Integer_value>) r)
        ($FVF.lookup_Integer_value ($SortWrappers.$SnapTo$FVF<Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@210@01)))))))))))))) r)))
    :pattern (($FVF.lookup_Integer_value (as sm@224@01  $FVF<Integer_value>) r))
    :pattern (($FVF.lookup_Integer_value ($SortWrappers.$SnapTo$FVF<Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@210@01)))))))))))))) r))
    :qid |qp.fvfValDef19|))
  (forall ((r $Ref)) (!
    (=>
      (and
        (img@222@01 r)
        (Seq_contains (Seq_range 0 gsize@203@01) (inv@221@01 r)))
      (=
        ($FVF.lookup_Integer_value (as sm@224@01  $FVF<Integer_value>) r)
        ($FVF.lookup_Integer_value ($SortWrappers.$SnapTo$FVF<Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@210@01)))))))))))))))) r)))
    :pattern (($FVF.lookup_Integer_value (as sm@224@01  $FVF<Integer_value>) r))
    :pattern (($FVF.lookup_Integer_value ($SortWrappers.$SnapTo$FVF<Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@210@01)))))))))))))))) r))
    :qid |qp.fvfValDef20|))))
(push) ; 7
(assert (not (<
  $Perm.No
  (+
    (ite
      (and
        (img@217@01 (Seq_index
          ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@210@01)))))))
          i@223@01))
        (Seq_contains
          (Seq_range 0 gsize@203@01)
          (inv@216@01 (Seq_index
            ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@210@01)))))))
            i@223@01))))
      (/ (to_real 1) (to_real gsize@203@01))
      $Perm.No)
    (ite
      (and
        (img@222@01 (Seq_index
          ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@210@01)))))))
          i@223@01))
        (Seq_contains
          (Seq_range 0 gsize@203@01)
          (inv@221@01 (Seq_index
            ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@210@01)))))))
            i@223@01))))
      $Perm.Write
      $Perm.No)))))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(pop) ; 6
(push) ; 6
; [else-branch: 165 | !(0 <= i@223@01 && i@223@01 < half@208@01)]
(assert (not (and (<= 0 i@223@01) (< i@223@01 half@208@01))))
(pop) ; 6
(pop) ; 5
; Joined path conditions
(assert (forall ((r $Ref)) (!
  (=>
    (ite
      (and
        (img@217@01 r)
        (Seq_contains (Seq_range 0 gsize@203@01) (inv@216@01 r)))
      (< $Perm.No (/ (to_real 1) (to_real gsize@203@01)))
      false)
    (=
      ($FVF.lookup_Integer_value (as sm@224@01  $FVF<Integer_value>) r)
      ($FVF.lookup_Integer_value ($SortWrappers.$SnapTo$FVF<Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@210@01)))))))))))))) r)))
  :pattern (($FVF.lookup_Integer_value (as sm@224@01  $FVF<Integer_value>) r))
  :pattern (($FVF.lookup_Integer_value ($SortWrappers.$SnapTo$FVF<Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@210@01)))))))))))))) r))
  :qid |qp.fvfValDef19|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@222@01 r) (Seq_contains (Seq_range 0 gsize@203@01) (inv@221@01 r)))
    (=
      ($FVF.lookup_Integer_value (as sm@224@01  $FVF<Integer_value>) r)
      ($FVF.lookup_Integer_value ($SortWrappers.$SnapTo$FVF<Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@210@01)))))))))))))))) r)))
  :pattern (($FVF.lookup_Integer_value (as sm@224@01  $FVF<Integer_value>) r))
  :pattern (($FVF.lookup_Integer_value ($SortWrappers.$SnapTo$FVF<Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@210@01)))))))))))))))) r))
  :qid |qp.fvfValDef20|)))
(assert (forall ((r $Ref)) (!
  (=
    ($FVF.perm_Integer_value (as pm@225@01  $FPM) r)
    (+
      (ite
        (and
          (img@217@01 r)
          (Seq_contains (Seq_range 0 gsize@203@01) (inv@216@01 r)))
        (/ (to_real 1) (to_real gsize@203@01))
        $Perm.No)
      (ite
        (and
          (img@222@01 r)
          (Seq_contains (Seq_range 0 gsize@203@01) (inv@221@01 r)))
        $Perm.Write
        $Perm.No)))
  :pattern (($FVF.perm_Integer_value (as pm@225@01  $FPM) r))
  :qid |qp.resPrmSumDef21|)))
; Joined path conditions
(assert (or
  (not (and (<= 0 i@223@01) (< i@223@01 half@208@01)))
  (and (<= 0 i@223@01) (< i@223@01 half@208@01))))
(pop) ; 4
; Nested auxiliary terms: globals (aux)
(assert (forall ((r $Ref)) (!
  (=>
    (ite
      (and
        (img@217@01 r)
        (Seq_contains (Seq_range 0 gsize@203@01) (inv@216@01 r)))
      (< $Perm.No (/ (to_real 1) (to_real gsize@203@01)))
      false)
    (=
      ($FVF.lookup_Integer_value (as sm@224@01  $FVF<Integer_value>) r)
      ($FVF.lookup_Integer_value ($SortWrappers.$SnapTo$FVF<Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@210@01)))))))))))))) r)))
  :pattern (($FVF.lookup_Integer_value (as sm@224@01  $FVF<Integer_value>) r))
  :pattern (($FVF.lookup_Integer_value ($SortWrappers.$SnapTo$FVF<Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@210@01)))))))))))))) r))
  :qid |qp.fvfValDef19|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@222@01 r) (Seq_contains (Seq_range 0 gsize@203@01) (inv@221@01 r)))
    (=
      ($FVF.lookup_Integer_value (as sm@224@01  $FVF<Integer_value>) r)
      ($FVF.lookup_Integer_value ($SortWrappers.$SnapTo$FVF<Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@210@01)))))))))))))))) r)))
  :pattern (($FVF.lookup_Integer_value (as sm@224@01  $FVF<Integer_value>) r))
  :pattern (($FVF.lookup_Integer_value ($SortWrappers.$SnapTo$FVF<Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@210@01)))))))))))))))) r))
  :qid |qp.fvfValDef20|)))
(assert (forall ((r $Ref)) (!
  (=
    ($FVF.perm_Integer_value (as pm@225@01  $FPM) r)
    (+
      (ite
        (and
          (img@217@01 r)
          (Seq_contains (Seq_range 0 gsize@203@01) (inv@216@01 r)))
        (/ (to_real 1) (to_real gsize@203@01))
        $Perm.No)
      (ite
        (and
          (img@222@01 r)
          (Seq_contains (Seq_range 0 gsize@203@01) (inv@221@01 r)))
        $Perm.Write
        $Perm.No)))
  :pattern (($FVF.perm_Integer_value (as pm@225@01  $FPM) r))
  :qid |qp.resPrmSumDef21|)))
; Nested auxiliary terms: non-globals (aux)
(assert (forall ((i@223@01 Int)) (!
  (and
    (or (<= 0 i@223@01) (not (<= 0 i@223@01)))
    (or
      (not (and (<= 0 i@223@01) (< i@223@01 half@208@01)))
      (and (<= 0 i@223@01) (< i@223@01 half@208@01))))
  :pattern ((Seq_index
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@210@01)))))))
    i@223@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/third_party/max-two-range.vpr@187@41@187@141-aux|)))
(pop) ; 3
(pop) ; 2
; Joined path conditions
(assert (forall ((r $Ref)) (!
  (=>
    (ite
      (and
        (img@217@01 r)
        (Seq_contains (Seq_range 0 gsize@203@01) (inv@216@01 r)))
      (< $Perm.No (/ (to_real 1) (to_real gsize@203@01)))
      false)
    (=
      ($FVF.lookup_Integer_value (as sm@224@01  $FVF<Integer_value>) r)
      ($FVF.lookup_Integer_value ($SortWrappers.$SnapTo$FVF<Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@210@01)))))))))))))) r)))
  :pattern (($FVF.lookup_Integer_value (as sm@224@01  $FVF<Integer_value>) r))
  :pattern (($FVF.lookup_Integer_value ($SortWrappers.$SnapTo$FVF<Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@210@01)))))))))))))) r))
  :qid |qp.fvfValDef19|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@222@01 r) (Seq_contains (Seq_range 0 gsize@203@01) (inv@221@01 r)))
    (=
      ($FVF.lookup_Integer_value (as sm@224@01  $FVF<Integer_value>) r)
      ($FVF.lookup_Integer_value ($SortWrappers.$SnapTo$FVF<Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@210@01)))))))))))))))) r)))
  :pattern (($FVF.lookup_Integer_value (as sm@224@01  $FVF<Integer_value>) r))
  :pattern (($FVF.lookup_Integer_value ($SortWrappers.$SnapTo$FVF<Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@210@01)))))))))))))))) r))
  :qid |qp.fvfValDef20|)))
(assert (forall ((r $Ref)) (!
  (=
    ($FVF.perm_Integer_value (as pm@225@01  $FPM) r)
    (+
      (ite
        (and
          (img@217@01 r)
          (Seq_contains (Seq_range 0 gsize@203@01) (inv@216@01 r)))
        (/ (to_real 1) (to_real gsize@203@01))
        $Perm.No)
      (ite
        (and
          (img@222@01 r)
          (Seq_contains (Seq_range 0 gsize@203@01) (inv@221@01 r)))
        $Perm.Write
        $Perm.No)))
  :pattern (($FVF.perm_Integer_value (as pm@225@01  $FPM) r))
  :qid |qp.resPrmSumDef21|)))
(assert (=>
  (< 0 gsize@203@01)
  (and
    (< 0 gsize@203@01)
    (forall ((i@223@01 Int)) (!
      (and
        (or (<= 0 i@223@01) (not (<= 0 i@223@01)))
        (or
          (not (and (<= 0 i@223@01) (< i@223@01 half@208@01)))
          (and (<= 0 i@223@01) (< i@223@01 half@208@01))))
      :pattern ((Seq_index
        ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@210@01)))))))
        i@223@01))
      :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/third_party/max-two-range.vpr@187@41@187@141-aux|)))))
(assert (< 0 gsize@203@01))
(assert (=>
  (< 0 gsize@203@01)
  (forall ((i@223@01 Int)) (!
    (=>
      (and (<= 0 i@223@01) (< i@223@01 half@208@01))
      (>=
        ($FVF.lookup_Integer_value (as sm@224@01  $FVF<Integer_value>) (Seq_index
          ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@210@01)))))))))
          0))
        ($FVF.lookup_Integer_value (as sm@224@01  $FVF<Integer_value>) (Seq_index
          ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@210@01)))))))
          i@223@01))))
    :pattern ((Seq_index
      ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@210@01)))))))
      i@223@01))
    :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/third_party/max-two-range.vpr@187@41@187@141|))))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@210@01)))))))))))))))))
  $Snap.unit))
; [eval] 0 <= 1 && 1 < gsize ==> (forall i: Int :: { this.src[i] } half <= i && i < gsize ==> this.dst[1].Integer_value >= this.src[i].Integer_value)
; [eval] 0 <= 1 && 1 < gsize
; [eval] 0 <= 1
(push) ; 2
; [then-branch: 166 | False | live]
; [else-branch: 166 | True | live]
(push) ; 3
; [then-branch: 166 | False]
(assert false)
(pop) ; 3
(push) ; 3
; [else-branch: 166 | True]
; [eval] 1 < gsize
(pop) ; 3
(pop) ; 2
; Joined path conditions
; Joined path conditions
(push) ; 2
(push) ; 3
(set-option :timeout 10)
(assert (not (not (< 1 gsize@203@01))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (< 1 gsize@203@01)))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; [then-branch: 167 | 1 < gsize@203@01 | live]
; [else-branch: 167 | !(1 < gsize@203@01) | dead]
(set-option :timeout 0)
(push) ; 3
; [then-branch: 167 | 1 < gsize@203@01]
(assert (< 1 gsize@203@01))
; [eval] (forall i: Int :: { this.src[i] } half <= i && i < gsize ==> this.dst[1].Integer_value >= this.src[i].Integer_value)
(declare-const i@226@01 Int)
(push) ; 4
; [eval] half <= i && i < gsize ==> this.dst[1].Integer_value >= this.src[i].Integer_value
; [eval] half <= i && i < gsize
; [eval] half <= i
(push) ; 5
; [then-branch: 168 | !(half@208@01 <= i@226@01) | live]
; [else-branch: 168 | half@208@01 <= i@226@01 | live]
(push) ; 6
; [then-branch: 168 | !(half@208@01 <= i@226@01)]
(assert (not (<= half@208@01 i@226@01)))
(pop) ; 6
(push) ; 6
; [else-branch: 168 | half@208@01 <= i@226@01]
(assert (<= half@208@01 i@226@01))
; [eval] i < gsize
(pop) ; 6
(pop) ; 5
; Joined path conditions
; Joined path conditions
(assert (or (<= half@208@01 i@226@01) (not (<= half@208@01 i@226@01))))
(push) ; 5
; [then-branch: 169 | half@208@01 <= i@226@01 && i@226@01 < gsize@203@01 | live]
; [else-branch: 169 | !(half@208@01 <= i@226@01 && i@226@01 < gsize@203@01) | live]
(push) ; 6
; [then-branch: 169 | half@208@01 <= i@226@01 && i@226@01 < gsize@203@01]
(assert (and (<= half@208@01 i@226@01) (< i@226@01 gsize@203@01)))
; [eval] this.dst[1].Integer_value >= this.src[i].Integer_value
; [eval] this.dst[1]
(push) ; 7
(set-option :timeout 10)
(assert (not (< $Perm.No $k@212@01)))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 7
(assert (not (<
  1
  (Seq_length
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@210@01)))))))))))))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(assert (and
  (forall ((r $Ref)) (!
    (=>
      (ite
        (and
          (img@217@01 r)
          (Seq_contains (Seq_range 0 gsize@203@01) (inv@216@01 r)))
        (< $Perm.No (/ (to_real 1) (to_real gsize@203@01)))
        false)
      (=
        ($FVF.lookup_Integer_value (as sm@224@01  $FVF<Integer_value>) r)
        ($FVF.lookup_Integer_value ($SortWrappers.$SnapTo$FVF<Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@210@01)))))))))))))) r)))
    :pattern (($FVF.lookup_Integer_value (as sm@224@01  $FVF<Integer_value>) r))
    :pattern (($FVF.lookup_Integer_value ($SortWrappers.$SnapTo$FVF<Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@210@01)))))))))))))) r))
    :qid |qp.fvfValDef19|))
  (forall ((r $Ref)) (!
    (=>
      (and
        (img@222@01 r)
        (Seq_contains (Seq_range 0 gsize@203@01) (inv@221@01 r)))
      (=
        ($FVF.lookup_Integer_value (as sm@224@01  $FVF<Integer_value>) r)
        ($FVF.lookup_Integer_value ($SortWrappers.$SnapTo$FVF<Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@210@01)))))))))))))))) r)))
    :pattern (($FVF.lookup_Integer_value (as sm@224@01  $FVF<Integer_value>) r))
    :pattern (($FVF.lookup_Integer_value ($SortWrappers.$SnapTo$FVF<Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@210@01)))))))))))))))) r))
    :qid |qp.fvfValDef20|))))
(push) ; 7
(assert (not (<
  $Perm.No
  (+
    (ite
      (and
        (img@217@01 (Seq_index
          ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@210@01)))))))))
          1))
        (Seq_contains
          (Seq_range 0 gsize@203@01)
          (inv@216@01 (Seq_index
            ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@210@01)))))))))
            1))))
      (/ (to_real 1) (to_real gsize@203@01))
      $Perm.No)
    (ite
      (and
        (img@222@01 (Seq_index
          ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@210@01)))))))))
          1))
        (Seq_contains
          (Seq_range 0 gsize@203@01)
          (inv@221@01 (Seq_index
            ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@210@01)))))))))
            1))))
      $Perm.Write
      $Perm.No)))))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
; [eval] this.src[i]
(push) ; 7
(set-option :timeout 10)
(assert (not (< $Perm.No $k@211@01)))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 7
(assert (not (>= i@226@01 0)))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(push) ; 7
(assert (not (<
  i@226@01
  (Seq_length
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@210@01)))))))))))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(assert (and
  (forall ((r $Ref)) (!
    (=>
      (ite
        (and
          (img@217@01 r)
          (Seq_contains (Seq_range 0 gsize@203@01) (inv@216@01 r)))
        (< $Perm.No (/ (to_real 1) (to_real gsize@203@01)))
        false)
      (=
        ($FVF.lookup_Integer_value (as sm@224@01  $FVF<Integer_value>) r)
        ($FVF.lookup_Integer_value ($SortWrappers.$SnapTo$FVF<Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@210@01)))))))))))))) r)))
    :pattern (($FVF.lookup_Integer_value (as sm@224@01  $FVF<Integer_value>) r))
    :pattern (($FVF.lookup_Integer_value ($SortWrappers.$SnapTo$FVF<Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@210@01)))))))))))))) r))
    :qid |qp.fvfValDef19|))
  (forall ((r $Ref)) (!
    (=>
      (and
        (img@222@01 r)
        (Seq_contains (Seq_range 0 gsize@203@01) (inv@221@01 r)))
      (=
        ($FVF.lookup_Integer_value (as sm@224@01  $FVF<Integer_value>) r)
        ($FVF.lookup_Integer_value ($SortWrappers.$SnapTo$FVF<Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@210@01)))))))))))))))) r)))
    :pattern (($FVF.lookup_Integer_value (as sm@224@01  $FVF<Integer_value>) r))
    :pattern (($FVF.lookup_Integer_value ($SortWrappers.$SnapTo$FVF<Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@210@01)))))))))))))))) r))
    :qid |qp.fvfValDef20|))))
(push) ; 7
(assert (not (<
  $Perm.No
  (+
    (ite
      (and
        (img@217@01 (Seq_index
          ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@210@01)))))))
          i@226@01))
        (Seq_contains
          (Seq_range 0 gsize@203@01)
          (inv@216@01 (Seq_index
            ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@210@01)))))))
            i@226@01))))
      (/ (to_real 1) (to_real gsize@203@01))
      $Perm.No)
    (ite
      (and
        (img@222@01 (Seq_index
          ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@210@01)))))))
          i@226@01))
        (Seq_contains
          (Seq_range 0 gsize@203@01)
          (inv@221@01 (Seq_index
            ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@210@01)))))))
            i@226@01))))
      $Perm.Write
      $Perm.No)))))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(pop) ; 6
(push) ; 6
; [else-branch: 169 | !(half@208@01 <= i@226@01 && i@226@01 < gsize@203@01)]
(assert (not (and (<= half@208@01 i@226@01) (< i@226@01 gsize@203@01))))
(pop) ; 6
(pop) ; 5
; Joined path conditions
(assert (forall ((r $Ref)) (!
  (=>
    (ite
      (and
        (img@217@01 r)
        (Seq_contains (Seq_range 0 gsize@203@01) (inv@216@01 r)))
      (< $Perm.No (/ (to_real 1) (to_real gsize@203@01)))
      false)
    (=
      ($FVF.lookup_Integer_value (as sm@224@01  $FVF<Integer_value>) r)
      ($FVF.lookup_Integer_value ($SortWrappers.$SnapTo$FVF<Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@210@01)))))))))))))) r)))
  :pattern (($FVF.lookup_Integer_value (as sm@224@01  $FVF<Integer_value>) r))
  :pattern (($FVF.lookup_Integer_value ($SortWrappers.$SnapTo$FVF<Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@210@01)))))))))))))) r))
  :qid |qp.fvfValDef19|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@222@01 r) (Seq_contains (Seq_range 0 gsize@203@01) (inv@221@01 r)))
    (=
      ($FVF.lookup_Integer_value (as sm@224@01  $FVF<Integer_value>) r)
      ($FVF.lookup_Integer_value ($SortWrappers.$SnapTo$FVF<Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@210@01)))))))))))))))) r)))
  :pattern (($FVF.lookup_Integer_value (as sm@224@01  $FVF<Integer_value>) r))
  :pattern (($FVF.lookup_Integer_value ($SortWrappers.$SnapTo$FVF<Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@210@01)))))))))))))))) r))
  :qid |qp.fvfValDef20|)))
; Joined path conditions
(assert (or
  (not (and (<= half@208@01 i@226@01) (< i@226@01 gsize@203@01)))
  (and (<= half@208@01 i@226@01) (< i@226@01 gsize@203@01))))
(pop) ; 4
; Nested auxiliary terms: globals (aux)
(assert (forall ((r $Ref)) (!
  (=>
    (ite
      (and
        (img@217@01 r)
        (Seq_contains (Seq_range 0 gsize@203@01) (inv@216@01 r)))
      (< $Perm.No (/ (to_real 1) (to_real gsize@203@01)))
      false)
    (=
      ($FVF.lookup_Integer_value (as sm@224@01  $FVF<Integer_value>) r)
      ($FVF.lookup_Integer_value ($SortWrappers.$SnapTo$FVF<Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@210@01)))))))))))))) r)))
  :pattern (($FVF.lookup_Integer_value (as sm@224@01  $FVF<Integer_value>) r))
  :pattern (($FVF.lookup_Integer_value ($SortWrappers.$SnapTo$FVF<Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@210@01)))))))))))))) r))
  :qid |qp.fvfValDef19|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@222@01 r) (Seq_contains (Seq_range 0 gsize@203@01) (inv@221@01 r)))
    (=
      ($FVF.lookup_Integer_value (as sm@224@01  $FVF<Integer_value>) r)
      ($FVF.lookup_Integer_value ($SortWrappers.$SnapTo$FVF<Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@210@01)))))))))))))))) r)))
  :pattern (($FVF.lookup_Integer_value (as sm@224@01  $FVF<Integer_value>) r))
  :pattern (($FVF.lookup_Integer_value ($SortWrappers.$SnapTo$FVF<Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@210@01)))))))))))))))) r))
  :qid |qp.fvfValDef20|)))
; Nested auxiliary terms: non-globals (aux)
(assert (forall ((i@226@01 Int)) (!
  (and
    (or (<= half@208@01 i@226@01) (not (<= half@208@01 i@226@01)))
    (or
      (not (and (<= half@208@01 i@226@01) (< i@226@01 gsize@203@01)))
      (and (<= half@208@01 i@226@01) (< i@226@01 gsize@203@01))))
  :pattern ((Seq_index
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@210@01)))))))
    i@226@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/third_party/max-two-range.vpr@188@41@188@145-aux|)))
(pop) ; 3
(pop) ; 2
; Joined path conditions
(assert (forall ((r $Ref)) (!
  (=>
    (ite
      (and
        (img@217@01 r)
        (Seq_contains (Seq_range 0 gsize@203@01) (inv@216@01 r)))
      (< $Perm.No (/ (to_real 1) (to_real gsize@203@01)))
      false)
    (=
      ($FVF.lookup_Integer_value (as sm@224@01  $FVF<Integer_value>) r)
      ($FVF.lookup_Integer_value ($SortWrappers.$SnapTo$FVF<Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@210@01)))))))))))))) r)))
  :pattern (($FVF.lookup_Integer_value (as sm@224@01  $FVF<Integer_value>) r))
  :pattern (($FVF.lookup_Integer_value ($SortWrappers.$SnapTo$FVF<Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@210@01)))))))))))))) r))
  :qid |qp.fvfValDef19|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@222@01 r) (Seq_contains (Seq_range 0 gsize@203@01) (inv@221@01 r)))
    (=
      ($FVF.lookup_Integer_value (as sm@224@01  $FVF<Integer_value>) r)
      ($FVF.lookup_Integer_value ($SortWrappers.$SnapTo$FVF<Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@210@01)))))))))))))))) r)))
  :pattern (($FVF.lookup_Integer_value (as sm@224@01  $FVF<Integer_value>) r))
  :pattern (($FVF.lookup_Integer_value ($SortWrappers.$SnapTo$FVF<Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@210@01)))))))))))))))) r))
  :qid |qp.fvfValDef20|)))
(assert (=>
  (< 1 gsize@203@01)
  (and
    (< 1 gsize@203@01)
    (forall ((i@226@01 Int)) (!
      (and
        (or (<= half@208@01 i@226@01) (not (<= half@208@01 i@226@01)))
        (or
          (not (and (<= half@208@01 i@226@01) (< i@226@01 gsize@203@01)))
          (and (<= half@208@01 i@226@01) (< i@226@01 gsize@203@01))))
      :pattern ((Seq_index
        ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@210@01)))))))
        i@226@01))
      :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/third_party/max-two-range.vpr@188@41@188@145-aux|)))))
(assert (< 1 gsize@203@01))
(assert (=>
  (< 1 gsize@203@01)
  (forall ((i@226@01 Int)) (!
    (=>
      (and (<= half@208@01 i@226@01) (< i@226@01 gsize@203@01))
      (>=
        ($FVF.lookup_Integer_value (as sm@224@01  $FVF<Integer_value>) (Seq_index
          ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@210@01)))))))))
          1))
        ($FVF.lookup_Integer_value (as sm@224@01  $FVF<Integer_value>) (Seq_index
          ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@210@01)))))))
          i@226@01))))
    :pattern ((Seq_index
      ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@210@01)))))))
      i@226@01))
    :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/third_party/max-two-range.vpr@188@41@188@145|))))
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
(set-option :timeout 0)
(push) ; 2
(declare-const $t@227@01 $Snap)
(assert (= $t@227@01 ($Snap.combine ($Snap.first $t@227@01) ($Snap.second $t@227@01))))
(assert (= ($Snap.first $t@227@01) $Snap.unit))
; [eval] 0 <= tid
(assert (=
  ($Snap.second $t@227@01)
  ($Snap.combine
    ($Snap.first ($Snap.second $t@227@01))
    ($Snap.second ($Snap.second $t@227@01)))))
(assert (= ($Snap.first ($Snap.second $t@227@01)) $Snap.unit))
; [eval] tid < tcount
(assert (=
  ($Snap.second ($Snap.second $t@227@01))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second $t@227@01)))
    ($Snap.second ($Snap.second ($Snap.second $t@227@01))))))
(assert (= ($Snap.first ($Snap.second ($Snap.second $t@227@01))) $Snap.unit))
; [eval] tid == lid
(assert (=
  ($Snap.second ($Snap.second ($Snap.second $t@227@01)))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@227@01))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@227@01)))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@227@01))))
  $Snap.unit))
; [eval] tcount == gsize
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@227@01))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@227@01)))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@227@01))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@227@01)))))
  $Snap.unit))
; [eval] gid == 0
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@227@01)))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@227@01))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@227@01)))))))))
(declare-const $k@228@01 $Perm)
(assert ($Perm.isReadVar $k@228@01))
(assert (<= $Perm.No $k@228@01))
(assert (<= $k@228@01 $Perm.Write))
(assert (=> (< $Perm.No $k@228@01) (not (= this@201@01 $Ref.null))))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@227@01))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@227@01)))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@227@01))))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@227@01)))))))
  $Snap.unit))
; [eval] |this.src| == gsize
; [eval] |this.src|
(push) ; 3
(set-option :timeout 10)
(assert (not (< $Perm.No $k@228@01)))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(assert (=
  (Seq_length
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@227@01))))))))
  gsize@203@01))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@227@01)))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@227@01))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@227@01)))))))))))
(declare-const $k@229@01 $Perm)
(assert ($Perm.isReadVar $k@229@01))
(assert (<= $Perm.No $k@229@01))
(assert (<= $k@229@01 $Perm.Write))
(assert (=> (< $Perm.No $k@229@01) (not (= this@201@01 $Ref.null))))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@227@01))))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@227@01)))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@227@01))))))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@227@01)))))))))
  $Snap.unit))
; [eval] |this.dst| == gsize
; [eval] |this.dst|
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (< $Perm.No $k@229@01)))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(assert (=
  (Seq_length
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@227@01))))))))))
  gsize@203@01))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@227@01)))))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@227@01))))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@227@01)))))))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@227@01))))))))))
  $Snap.unit))
; [eval] 4 <= gsize
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@227@01))))))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@227@01)))))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@227@01))))))))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@227@01)))))))))))
  $Snap.unit))
; [eval] gsize % 2 == 0
; [eval] gsize % 2
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@227@01)))))))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@227@01))))))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@227@01)))))))))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@227@01))))))))))))
  $Snap.unit))
; [eval] this.src == old(this.src)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (< $Perm.No $k@228@01)))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; [eval] old(this.src)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (< $Perm.No $k@211@01)))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(assert (Seq_equal
  ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@227@01)))))))
  ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@210@01)))))))))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@227@01))))))))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@227@01)))))))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@227@01))))))))))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@227@01)))))))))))))
  $Snap.unit))
; [eval] this.dst == old(this.dst)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (< $Perm.No $k@229@01)))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; [eval] old(this.dst)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (< $Perm.No $k@212@01)))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(assert (Seq_equal
  ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@227@01)))))))))
  ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@210@01)))))))))))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@227@01)))))))))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@227@01))))))))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@227@01)))))))))))))))))
(declare-const i@230@01 Int)
(set-option :timeout 0)
(push) ; 3
; [eval] (i in [0..gsize))
; [eval] [0..gsize)
(assert (Seq_contains (Seq_range 0 gsize@203@01) i@230@01))
; [eval] this.src[i]
(push) ; 4
(set-option :timeout 10)
(assert (not (< $Perm.No $k@228@01)))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 4
(assert (not (>= i@230@01 0)))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(push) ; 4
(assert (not (<
  i@230@01
  (Seq_length
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@227@01)))))))))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(push) ; 4
(assert (not (not (= gsize@203@01 0))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(pop) ; 3
(declare-fun inv@231@01 ($Ref) Int)
(declare-fun img@232@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
(push) ; 3
(assert (not (forall ((i@230@01 Int)) (!
  (=>
    (Seq_contains (Seq_range 0 gsize@203@01) i@230@01)
    (or
      (= (/ (to_real 1) (to_real gsize@203@01)) $Perm.No)
      (< $Perm.No (/ (to_real 1) (to_real gsize@203@01)))))
  
  :qid |quant-u-17969|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Check receiver injectivity
(push) ; 3
(assert (not (forall ((i1@230@01 Int) (i2@230@01 Int)) (!
  (=>
    (and
      (and
        (Seq_contains (Seq_range 0 gsize@203@01) i1@230@01)
        (< $Perm.No (/ (to_real 1) (to_real gsize@203@01))))
      (and
        (Seq_contains (Seq_range 0 gsize@203@01) i2@230@01)
        (< $Perm.No (/ (to_real 1) (to_real gsize@203@01))))
      (=
        (Seq_index
          ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@227@01)))))))
          i1@230@01)
        (Seq_index
          ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@227@01)))))))
          i2@230@01)))
    (= i1@230@01 i2@230@01))
  
  :qid |Integer_value-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((i@230@01 Int)) (!
  (=>
    (and
      (Seq_contains (Seq_range 0 gsize@203@01) i@230@01)
      (< $Perm.No (/ (to_real 1) (to_real gsize@203@01))))
    (and
      (=
        (inv@231@01 (Seq_index
          ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@227@01)))))))
          i@230@01))
        i@230@01)
      (img@232@01 (Seq_index
        ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@227@01)))))))
        i@230@01))))
  :pattern ((Seq_index
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@227@01)))))))
    i@230@01))
  :qid |quant-u-17970|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@232@01 r)
      (and
        (Seq_contains (Seq_range 0 gsize@203@01) (inv@231@01 r))
        (< $Perm.No (/ (to_real 1) (to_real gsize@203@01)))))
    (=
      (Seq_index
        ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@227@01)))))))
        (inv@231@01 r))
      r))
  :pattern ((inv@231@01 r))
  :qid |Integer_value-fctOfInv|)))
; Permissions are non-negative
(assert (forall ((i@230@01 Int)) (!
  (<= $Perm.No (/ (to_real 1) (to_real gsize@203@01)))
  :pattern ((Seq_index
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@227@01)))))))
    i@230@01))
  :qid |Integer_value-permAtLeastZero|)))
; Field permissions are at most one
(assert (forall ((i@230@01 Int)) (!
  (<= (/ (to_real 1) (to_real gsize@203@01)) $Perm.Write)
  :pattern ((Seq_index
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@227@01)))))))
    i@230@01))
  :qid |Integer_value-permAtMostOne|)))
; Permission implies non-null receiver
(assert (forall ((i@230@01 Int)) (!
  (=>
    (and
      (Seq_contains (Seq_range 0 gsize@203@01) i@230@01)
      (< $Perm.No (/ (to_real 1) (to_real gsize@203@01))))
    (not
      (=
        (Seq_index
          ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@227@01)))))))
          i@230@01)
        $Ref.null)))
  :pattern ((Seq_index
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@227@01)))))))
    i@230@01))
  :qid |Integer_value-permImpliesNonNull|)))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@227@01))))))))))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@227@01)))))))))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@227@01))))))))))))))))))
; [eval] tid == 0
(push) ; 3
(set-option :timeout 10)
(assert (not (not (= tid@204@01 0))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (= tid@204@01 0)))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; [then-branch: 170 | tid@204@01 == 0 | live]
; [else-branch: 170 | tid@204@01 != 0 | live]
(set-option :timeout 0)
(push) ; 3
; [then-branch: 170 | tid@204@01 == 0]
(assert (= tid@204@01 0))
; [eval] this.dst[0]
(push) ; 4
(set-option :timeout 10)
(assert (not (< $Perm.No $k@229@01)))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 4
(assert (not (<
  0
  (Seq_length
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@227@01)))))))))))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(declare-const sm@233@01 $FVF<Integer_value>)
; Definitional axioms for singleton-SM's value
(assert (=
  ($FVF.lookup_Integer_value (as sm@233@01  $FVF<Integer_value>) (Seq_index
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@227@01)))))))))
    0))
  ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@227@01))))))))))))))))))
(assert (<=
  $Perm.No
  (ite
    (=
      (Seq_index
        ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@227@01)))))))))
        0)
      (Seq_index
        ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@227@01)))))))))
        0))
    $Perm.Write
    $Perm.No)))
(assert (<=
  (ite
    (=
      (Seq_index
        ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@227@01)))))))))
        0)
      (Seq_index
        ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@227@01)))))))))
        0))
    $Perm.Write
    $Perm.No)
  $Perm.Write))
(assert (=>
  (=
    (Seq_index
      ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@227@01)))))))))
      0)
    (Seq_index
      ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@227@01)))))))))
      0))
  (not
    (=
      (Seq_index
        ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@227@01)))))))))
        0)
      $Ref.null))))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@227@01)))))))))))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@227@01))))))))))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@227@01)))))))))))))))))))
; [eval] tid == 0
(push) ; 4
(set-option :timeout 10)
(assert (not (not (= tid@204@01 0))))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; [then-branch: 171 | tid@204@01 == 0 | live]
; [else-branch: 171 | tid@204@01 != 0 | dead]
(set-option :timeout 0)
(push) ; 4
; [then-branch: 171 | tid@204@01 == 0]
; [eval] this.dst[1]
(push) ; 5
(set-option :timeout 10)
(assert (not (< $Perm.No $k@229@01)))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 5
(assert (not (<
  1
  (Seq_length
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@227@01)))))))))))))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(declare-const sm@234@01 $FVF<Integer_value>)
; Definitional axioms for singleton-SM's value
(assert (=
  ($FVF.lookup_Integer_value (as sm@234@01  $FVF<Integer_value>) (Seq_index
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@227@01)))))))))
    1))
  ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@227@01)))))))))))))))))))
(push) ; 5
(set-option :timeout 10)
(assert (not (and
  (and
    (=
      (Seq_index
        ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@227@01)))))))))
        1)
      (Seq_index
        ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@227@01)))))))))
        1))
    (=
      (Seq_index
        ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@227@01)))))))))
        0)
      (Seq_index
        ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@227@01)))))))))
        0)))
  (=
    (Seq_index
      ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@227@01)))))))))
      1)
    (Seq_index
      ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@227@01)))))))))
      0)))))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(assert (<=
  $Perm.No
  (ite
    (=
      (Seq_index
        ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@227@01)))))))))
        1)
      (Seq_index
        ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@227@01)))))))))
        1))
    $Perm.Write
    $Perm.No)))
(assert (<=
  (ite
    (=
      (Seq_index
        ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@227@01)))))))))
        1)
      (Seq_index
        ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@227@01)))))))))
        1))
    $Perm.Write
    $Perm.No)
  $Perm.Write))
(assert (=>
  (=
    (Seq_index
      ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@227@01)))))))))
      1)
    (Seq_index
      ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@227@01)))))))))
      1))
  (not
    (=
      (Seq_index
        ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@227@01)))))))))
        1)
      $Ref.null))))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@227@01))))))))))))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@227@01)))))))))))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@227@01))))))))))))))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@227@01)))))))))))))))))
  $Snap.unit))
; [eval] tid == 0 ==> (forall i: Int :: { this.src[i] } 0 <= i && i < half ==> this.dst[0].Integer_value >= this.src[i].Integer_value)
; [eval] tid == 0
(set-option :timeout 0)
(push) ; 5
(push) ; 6
(set-option :timeout 10)
(assert (not (not (= tid@204@01 0))))
(check-sat)
; unknown
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
; [then-branch: 172 | tid@204@01 == 0 | live]
; [else-branch: 172 | tid@204@01 != 0 | dead]
(set-option :timeout 0)
(push) ; 6
; [then-branch: 172 | tid@204@01 == 0]
; [eval] (forall i: Int :: { this.src[i] } 0 <= i && i < half ==> this.dst[0].Integer_value >= this.src[i].Integer_value)
(declare-const i@235@01 Int)
(push) ; 7
; [eval] 0 <= i && i < half ==> this.dst[0].Integer_value >= this.src[i].Integer_value
; [eval] 0 <= i && i < half
; [eval] 0 <= i
(push) ; 8
; [then-branch: 173 | !(0 <= i@235@01) | live]
; [else-branch: 173 | 0 <= i@235@01 | live]
(push) ; 9
; [then-branch: 173 | !(0 <= i@235@01)]
(assert (not (<= 0 i@235@01)))
(pop) ; 9
(push) ; 9
; [else-branch: 173 | 0 <= i@235@01]
(assert (<= 0 i@235@01))
; [eval] i < half
(pop) ; 9
(pop) ; 8
; Joined path conditions
; Joined path conditions
(assert (or (<= 0 i@235@01) (not (<= 0 i@235@01))))
(push) ; 8
; [then-branch: 174 | 0 <= i@235@01 && i@235@01 < half@208@01 | live]
; [else-branch: 174 | !(0 <= i@235@01 && i@235@01 < half@208@01) | live]
(push) ; 9
; [then-branch: 174 | 0 <= i@235@01 && i@235@01 < half@208@01]
(assert (and (<= 0 i@235@01) (< i@235@01 half@208@01)))
; [eval] this.dst[0].Integer_value >= this.src[i].Integer_value
; [eval] this.dst[0]
(push) ; 10
(set-option :timeout 10)
(assert (not (< $Perm.No $k@229@01)))
(check-sat)
; unsat
(pop) ; 10
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 10
(assert (not (<
  0
  (Seq_length
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@227@01)))))))))))))
(check-sat)
; unsat
(pop) ; 10
; 0.00s
; (get-info :all-statistics)
(declare-const sm@236@01 $FVF<Integer_value>)
; Definitional axioms for snapshot map values
(assert (forall ((r $Ref)) (!
  (=>
    (ite
      (and
        (img@232@01 r)
        (Seq_contains (Seq_range 0 gsize@203@01) (inv@231@01 r)))
      (< $Perm.No (/ (to_real 1) (to_real gsize@203@01)))
      false)
    (=
      ($FVF.lookup_Integer_value (as sm@236@01  $FVF<Integer_value>) r)
      ($FVF.lookup_Integer_value ($SortWrappers.$SnapTo$FVF<Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@227@01))))))))))))))) r)))
  :pattern (($FVF.lookup_Integer_value (as sm@236@01  $FVF<Integer_value>) r))
  :pattern (($FVF.lookup_Integer_value ($SortWrappers.$SnapTo$FVF<Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@227@01))))))))))))))) r))
  :qid |qp.fvfValDef22|)))
(assert (forall ((r $Ref)) (!
  (=>
    (=
      r
      (Seq_index
        ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@227@01)))))))))
        0))
    (=
      ($FVF.lookup_Integer_value (as sm@236@01  $FVF<Integer_value>) r)
      ($FVF.lookup_Integer_value (as sm@233@01  $FVF<Integer_value>) r)))
  :pattern (($FVF.lookup_Integer_value (as sm@236@01  $FVF<Integer_value>) r))
  :pattern (($FVF.lookup_Integer_value (as sm@233@01  $FVF<Integer_value>) r))
  :qid |qp.fvfValDef23|)))
(assert (forall ((r $Ref)) (!
  (=>
    (=
      r
      (Seq_index
        ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@227@01)))))))))
        1))
    (=
      ($FVF.lookup_Integer_value (as sm@236@01  $FVF<Integer_value>) r)
      ($FVF.lookup_Integer_value (as sm@234@01  $FVF<Integer_value>) r)))
  :pattern (($FVF.lookup_Integer_value (as sm@236@01  $FVF<Integer_value>) r))
  :pattern (($FVF.lookup_Integer_value (as sm@234@01  $FVF<Integer_value>) r))
  :qid |qp.fvfValDef24|)))
(declare-const pm@237@01 $FPM)
(assert (forall ((r $Ref)) (!
  (=
    ($FVF.perm_Integer_value (as pm@237@01  $FPM) r)
    (+
      (+
        (ite
          (and
            (img@232@01 r)
            (Seq_contains (Seq_range 0 gsize@203@01) (inv@231@01 r)))
          (/ (to_real 1) (to_real gsize@203@01))
          $Perm.No)
        (ite
          (=
            r
            (Seq_index
              ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@227@01)))))))))
              0))
          $Perm.Write
          $Perm.No))
      (ite
        (=
          r
          (Seq_index
            ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@227@01)))))))))
            1))
        $Perm.Write
        $Perm.No)))
  :pattern (($FVF.perm_Integer_value (as pm@237@01  $FPM) r))
  :qid |qp.resPrmSumDef25|)))
(push) ; 10
(assert (not (<
  $Perm.No
  ($FVF.perm_Integer_value (as pm@237@01  $FPM) (Seq_index
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@227@01)))))))))
    0)))))
(check-sat)
; unsat
(pop) ; 10
; 0.00s
; (get-info :all-statistics)
; [eval] this.src[i]
(push) ; 10
(set-option :timeout 10)
(assert (not (< $Perm.No $k@228@01)))
(check-sat)
; unsat
(pop) ; 10
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 10
(assert (not (>= i@235@01 0)))
(check-sat)
; unsat
(pop) ; 10
; 0.00s
; (get-info :all-statistics)
(push) ; 10
(assert (not (<
  i@235@01
  (Seq_length
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@227@01)))))))))))
(check-sat)
; unsat
(pop) ; 10
; 0.00s
; (get-info :all-statistics)
(assert (and
  (forall ((r $Ref)) (!
    (=>
      (ite
        (and
          (img@232@01 r)
          (Seq_contains (Seq_range 0 gsize@203@01) (inv@231@01 r)))
        (< $Perm.No (/ (to_real 1) (to_real gsize@203@01)))
        false)
      (=
        ($FVF.lookup_Integer_value (as sm@236@01  $FVF<Integer_value>) r)
        ($FVF.lookup_Integer_value ($SortWrappers.$SnapTo$FVF<Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@227@01))))))))))))))) r)))
    :pattern (($FVF.lookup_Integer_value (as sm@236@01  $FVF<Integer_value>) r))
    :pattern (($FVF.lookup_Integer_value ($SortWrappers.$SnapTo$FVF<Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@227@01))))))))))))))) r))
    :qid |qp.fvfValDef22|))
  (forall ((r $Ref)) (!
    (=>
      (=
        r
        (Seq_index
          ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@227@01)))))))))
          0))
      (=
        ($FVF.lookup_Integer_value (as sm@236@01  $FVF<Integer_value>) r)
        ($FVF.lookup_Integer_value (as sm@233@01  $FVF<Integer_value>) r)))
    :pattern (($FVF.lookup_Integer_value (as sm@236@01  $FVF<Integer_value>) r))
    :pattern (($FVF.lookup_Integer_value (as sm@233@01  $FVF<Integer_value>) r))
    :qid |qp.fvfValDef23|))
  (forall ((r $Ref)) (!
    (=>
      (=
        r
        (Seq_index
          ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@227@01)))))))))
          1))
      (=
        ($FVF.lookup_Integer_value (as sm@236@01  $FVF<Integer_value>) r)
        ($FVF.lookup_Integer_value (as sm@234@01  $FVF<Integer_value>) r)))
    :pattern (($FVF.lookup_Integer_value (as sm@236@01  $FVF<Integer_value>) r))
    :pattern (($FVF.lookup_Integer_value (as sm@234@01  $FVF<Integer_value>) r))
    :qid |qp.fvfValDef24|))))
(push) ; 10
(assert (not (<
  $Perm.No
  (+
    (+
      (ite
        (and
          (img@232@01 (Seq_index
            ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@227@01)))))))
            i@235@01))
          (Seq_contains
            (Seq_range 0 gsize@203@01)
            (inv@231@01 (Seq_index
              ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@227@01)))))))
              i@235@01))))
        (/ (to_real 1) (to_real gsize@203@01))
        $Perm.No)
      (ite
        (=
          (Seq_index
            ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@227@01)))))))
            i@235@01)
          (Seq_index
            ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@227@01)))))))))
            0))
        $Perm.Write
        $Perm.No))
    (ite
      (=
        (Seq_index
          ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@227@01)))))))
          i@235@01)
        (Seq_index
          ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@227@01)))))))))
          1))
      $Perm.Write
      $Perm.No)))))
(check-sat)
; unsat
(pop) ; 10
; 0.00s
; (get-info :all-statistics)
(pop) ; 9
(push) ; 9
; [else-branch: 174 | !(0 <= i@235@01 && i@235@01 < half@208@01)]
(assert (not (and (<= 0 i@235@01) (< i@235@01 half@208@01))))
(pop) ; 9
(pop) ; 8
; Joined path conditions
(assert (forall ((r $Ref)) (!
  (=>
    (ite
      (and
        (img@232@01 r)
        (Seq_contains (Seq_range 0 gsize@203@01) (inv@231@01 r)))
      (< $Perm.No (/ (to_real 1) (to_real gsize@203@01)))
      false)
    (=
      ($FVF.lookup_Integer_value (as sm@236@01  $FVF<Integer_value>) r)
      ($FVF.lookup_Integer_value ($SortWrappers.$SnapTo$FVF<Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@227@01))))))))))))))) r)))
  :pattern (($FVF.lookup_Integer_value (as sm@236@01  $FVF<Integer_value>) r))
  :pattern (($FVF.lookup_Integer_value ($SortWrappers.$SnapTo$FVF<Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@227@01))))))))))))))) r))
  :qid |qp.fvfValDef22|)))
(assert (forall ((r $Ref)) (!
  (=>
    (=
      r
      (Seq_index
        ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@227@01)))))))))
        0))
    (=
      ($FVF.lookup_Integer_value (as sm@236@01  $FVF<Integer_value>) r)
      ($FVF.lookup_Integer_value (as sm@233@01  $FVF<Integer_value>) r)))
  :pattern (($FVF.lookup_Integer_value (as sm@236@01  $FVF<Integer_value>) r))
  :pattern (($FVF.lookup_Integer_value (as sm@233@01  $FVF<Integer_value>) r))
  :qid |qp.fvfValDef23|)))
(assert (forall ((r $Ref)) (!
  (=>
    (=
      r
      (Seq_index
        ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@227@01)))))))))
        1))
    (=
      ($FVF.lookup_Integer_value (as sm@236@01  $FVF<Integer_value>) r)
      ($FVF.lookup_Integer_value (as sm@234@01  $FVF<Integer_value>) r)))
  :pattern (($FVF.lookup_Integer_value (as sm@236@01  $FVF<Integer_value>) r))
  :pattern (($FVF.lookup_Integer_value (as sm@234@01  $FVF<Integer_value>) r))
  :qid |qp.fvfValDef24|)))
(assert (forall ((r $Ref)) (!
  (=
    ($FVF.perm_Integer_value (as pm@237@01  $FPM) r)
    (+
      (+
        (ite
          (and
            (img@232@01 r)
            (Seq_contains (Seq_range 0 gsize@203@01) (inv@231@01 r)))
          (/ (to_real 1) (to_real gsize@203@01))
          $Perm.No)
        (ite
          (=
            r
            (Seq_index
              ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@227@01)))))))))
              0))
          $Perm.Write
          $Perm.No))
      (ite
        (=
          r
          (Seq_index
            ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@227@01)))))))))
            1))
        $Perm.Write
        $Perm.No)))
  :pattern (($FVF.perm_Integer_value (as pm@237@01  $FPM) r))
  :qid |qp.resPrmSumDef25|)))
; Joined path conditions
(assert (or
  (not (and (<= 0 i@235@01) (< i@235@01 half@208@01)))
  (and (<= 0 i@235@01) (< i@235@01 half@208@01))))
(pop) ; 7
; Nested auxiliary terms: globals (aux)
(assert (forall ((r $Ref)) (!
  (=>
    (ite
      (and
        (img@232@01 r)
        (Seq_contains (Seq_range 0 gsize@203@01) (inv@231@01 r)))
      (< $Perm.No (/ (to_real 1) (to_real gsize@203@01)))
      false)
    (=
      ($FVF.lookup_Integer_value (as sm@236@01  $FVF<Integer_value>) r)
      ($FVF.lookup_Integer_value ($SortWrappers.$SnapTo$FVF<Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@227@01))))))))))))))) r)))
  :pattern (($FVF.lookup_Integer_value (as sm@236@01  $FVF<Integer_value>) r))
  :pattern (($FVF.lookup_Integer_value ($SortWrappers.$SnapTo$FVF<Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@227@01))))))))))))))) r))
  :qid |qp.fvfValDef22|)))
(assert (forall ((r $Ref)) (!
  (=>
    (=
      r
      (Seq_index
        ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@227@01)))))))))
        0))
    (=
      ($FVF.lookup_Integer_value (as sm@236@01  $FVF<Integer_value>) r)
      ($FVF.lookup_Integer_value (as sm@233@01  $FVF<Integer_value>) r)))
  :pattern (($FVF.lookup_Integer_value (as sm@236@01  $FVF<Integer_value>) r))
  :pattern (($FVF.lookup_Integer_value (as sm@233@01  $FVF<Integer_value>) r))
  :qid |qp.fvfValDef23|)))
(assert (forall ((r $Ref)) (!
  (=>
    (=
      r
      (Seq_index
        ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@227@01)))))))))
        1))
    (=
      ($FVF.lookup_Integer_value (as sm@236@01  $FVF<Integer_value>) r)
      ($FVF.lookup_Integer_value (as sm@234@01  $FVF<Integer_value>) r)))
  :pattern (($FVF.lookup_Integer_value (as sm@236@01  $FVF<Integer_value>) r))
  :pattern (($FVF.lookup_Integer_value (as sm@234@01  $FVF<Integer_value>) r))
  :qid |qp.fvfValDef24|)))
(assert (forall ((r $Ref)) (!
  (=
    ($FVF.perm_Integer_value (as pm@237@01  $FPM) r)
    (+
      (+
        (ite
          (and
            (img@232@01 r)
            (Seq_contains (Seq_range 0 gsize@203@01) (inv@231@01 r)))
          (/ (to_real 1) (to_real gsize@203@01))
          $Perm.No)
        (ite
          (=
            r
            (Seq_index
              ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@227@01)))))))))
              0))
          $Perm.Write
          $Perm.No))
      (ite
        (=
          r
          (Seq_index
            ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@227@01)))))))))
            1))
        $Perm.Write
        $Perm.No)))
  :pattern (($FVF.perm_Integer_value (as pm@237@01  $FPM) r))
  :qid |qp.resPrmSumDef25|)))
; Nested auxiliary terms: non-globals (aux)
(assert (forall ((i@235@01 Int)) (!
  (and
    (or (<= 0 i@235@01) (not (<= 0 i@235@01)))
    (or
      (not (and (<= 0 i@235@01) (< i@235@01 half@208@01)))
      (and (<= 0 i@235@01) (< i@235@01 half@208@01))))
  :pattern ((Seq_index
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@227@01)))))))
    i@235@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/third_party/max-two-range.vpr@205@27@205@127-aux|)))
(pop) ; 6
(pop) ; 5
; Joined path conditions
(assert (forall ((r $Ref)) (!
  (=>
    (ite
      (and
        (img@232@01 r)
        (Seq_contains (Seq_range 0 gsize@203@01) (inv@231@01 r)))
      (< $Perm.No (/ (to_real 1) (to_real gsize@203@01)))
      false)
    (=
      ($FVF.lookup_Integer_value (as sm@236@01  $FVF<Integer_value>) r)
      ($FVF.lookup_Integer_value ($SortWrappers.$SnapTo$FVF<Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@227@01))))))))))))))) r)))
  :pattern (($FVF.lookup_Integer_value (as sm@236@01  $FVF<Integer_value>) r))
  :pattern (($FVF.lookup_Integer_value ($SortWrappers.$SnapTo$FVF<Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@227@01))))))))))))))) r))
  :qid |qp.fvfValDef22|)))
(assert (forall ((r $Ref)) (!
  (=>
    (=
      r
      (Seq_index
        ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@227@01)))))))))
        0))
    (=
      ($FVF.lookup_Integer_value (as sm@236@01  $FVF<Integer_value>) r)
      ($FVF.lookup_Integer_value (as sm@233@01  $FVF<Integer_value>) r)))
  :pattern (($FVF.lookup_Integer_value (as sm@236@01  $FVF<Integer_value>) r))
  :pattern (($FVF.lookup_Integer_value (as sm@233@01  $FVF<Integer_value>) r))
  :qid |qp.fvfValDef23|)))
(assert (forall ((r $Ref)) (!
  (=>
    (=
      r
      (Seq_index
        ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@227@01)))))))))
        1))
    (=
      ($FVF.lookup_Integer_value (as sm@236@01  $FVF<Integer_value>) r)
      ($FVF.lookup_Integer_value (as sm@234@01  $FVF<Integer_value>) r)))
  :pattern (($FVF.lookup_Integer_value (as sm@236@01  $FVF<Integer_value>) r))
  :pattern (($FVF.lookup_Integer_value (as sm@234@01  $FVF<Integer_value>) r))
  :qid |qp.fvfValDef24|)))
(assert (forall ((r $Ref)) (!
  (=
    ($FVF.perm_Integer_value (as pm@237@01  $FPM) r)
    (+
      (+
        (ite
          (and
            (img@232@01 r)
            (Seq_contains (Seq_range 0 gsize@203@01) (inv@231@01 r)))
          (/ (to_real 1) (to_real gsize@203@01))
          $Perm.No)
        (ite
          (=
            r
            (Seq_index
              ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@227@01)))))))))
              0))
          $Perm.Write
          $Perm.No))
      (ite
        (=
          r
          (Seq_index
            ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@227@01)))))))))
            1))
        $Perm.Write
        $Perm.No)))
  :pattern (($FVF.perm_Integer_value (as pm@237@01  $FPM) r))
  :qid |qp.resPrmSumDef25|)))
(assert (=>
  (= tid@204@01 0)
  (forall ((i@235@01 Int)) (!
    (and
      (or (<= 0 i@235@01) (not (<= 0 i@235@01)))
      (or
        (not (and (<= 0 i@235@01) (< i@235@01 half@208@01)))
        (and (<= 0 i@235@01) (< i@235@01 half@208@01))))
    :pattern ((Seq_index
      ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@227@01)))))))
      i@235@01))
    :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/third_party/max-two-range.vpr@205@27@205@127-aux|))))
(assert (=>
  (= tid@204@01 0)
  (forall ((i@235@01 Int)) (!
    (=>
      (and (<= 0 i@235@01) (< i@235@01 half@208@01))
      (>=
        ($FVF.lookup_Integer_value (as sm@236@01  $FVF<Integer_value>) (Seq_index
          ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@227@01)))))))))
          0))
        ($FVF.lookup_Integer_value (as sm@236@01  $FVF<Integer_value>) (Seq_index
          ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@227@01)))))))
          i@235@01))))
    :pattern ((Seq_index
      ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@227@01)))))))
      i@235@01))
    :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/third_party/max-two-range.vpr@205@27@205@127|))))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@227@01)))))))))))))))))
  $Snap.unit))
; [eval] tid == 0 ==> (forall i: Int :: { this.src[i] } half <= i && i < gsize ==> this.dst[1].Integer_value >= this.src[i].Integer_value)
; [eval] tid == 0
(push) ; 5
(push) ; 6
(set-option :timeout 10)
(assert (not (not (= tid@204@01 0))))
(check-sat)
; unknown
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
; [then-branch: 175 | tid@204@01 == 0 | live]
; [else-branch: 175 | tid@204@01 != 0 | dead]
(set-option :timeout 0)
(push) ; 6
; [then-branch: 175 | tid@204@01 == 0]
; [eval] (forall i: Int :: { this.src[i] } half <= i && i < gsize ==> this.dst[1].Integer_value >= this.src[i].Integer_value)
(declare-const i@238@01 Int)
(push) ; 7
; [eval] half <= i && i < gsize ==> this.dst[1].Integer_value >= this.src[i].Integer_value
; [eval] half <= i && i < gsize
; [eval] half <= i
(push) ; 8
; [then-branch: 176 | !(half@208@01 <= i@238@01) | live]
; [else-branch: 176 | half@208@01 <= i@238@01 | live]
(push) ; 9
; [then-branch: 176 | !(half@208@01 <= i@238@01)]
(assert (not (<= half@208@01 i@238@01)))
(pop) ; 9
(push) ; 9
; [else-branch: 176 | half@208@01 <= i@238@01]
(assert (<= half@208@01 i@238@01))
; [eval] i < gsize
(pop) ; 9
(pop) ; 8
; Joined path conditions
; Joined path conditions
(assert (or (<= half@208@01 i@238@01) (not (<= half@208@01 i@238@01))))
(push) ; 8
; [then-branch: 177 | half@208@01 <= i@238@01 && i@238@01 < gsize@203@01 | live]
; [else-branch: 177 | !(half@208@01 <= i@238@01 && i@238@01 < gsize@203@01) | live]
(push) ; 9
; [then-branch: 177 | half@208@01 <= i@238@01 && i@238@01 < gsize@203@01]
(assert (and (<= half@208@01 i@238@01) (< i@238@01 gsize@203@01)))
; [eval] this.dst[1].Integer_value >= this.src[i].Integer_value
; [eval] this.dst[1]
(push) ; 10
(set-option :timeout 10)
(assert (not (< $Perm.No $k@229@01)))
(check-sat)
; unsat
(pop) ; 10
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 10
(assert (not (<
  1
  (Seq_length
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@227@01)))))))))))))
(check-sat)
; unsat
(pop) ; 10
; 0.00s
; (get-info :all-statistics)
(assert (and
  (forall ((r $Ref)) (!
    (=>
      (ite
        (and
          (img@232@01 r)
          (Seq_contains (Seq_range 0 gsize@203@01) (inv@231@01 r)))
        (< $Perm.No (/ (to_real 1) (to_real gsize@203@01)))
        false)
      (=
        ($FVF.lookup_Integer_value (as sm@236@01  $FVF<Integer_value>) r)
        ($FVF.lookup_Integer_value ($SortWrappers.$SnapTo$FVF<Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@227@01))))))))))))))) r)))
    :pattern (($FVF.lookup_Integer_value (as sm@236@01  $FVF<Integer_value>) r))
    :pattern (($FVF.lookup_Integer_value ($SortWrappers.$SnapTo$FVF<Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@227@01))))))))))))))) r))
    :qid |qp.fvfValDef22|))
  (forall ((r $Ref)) (!
    (=>
      (=
        r
        (Seq_index
          ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@227@01)))))))))
          0))
      (=
        ($FVF.lookup_Integer_value (as sm@236@01  $FVF<Integer_value>) r)
        ($FVF.lookup_Integer_value (as sm@233@01  $FVF<Integer_value>) r)))
    :pattern (($FVF.lookup_Integer_value (as sm@236@01  $FVF<Integer_value>) r))
    :pattern (($FVF.lookup_Integer_value (as sm@233@01  $FVF<Integer_value>) r))
    :qid |qp.fvfValDef23|))
  (forall ((r $Ref)) (!
    (=>
      (=
        r
        (Seq_index
          ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@227@01)))))))))
          1))
      (=
        ($FVF.lookup_Integer_value (as sm@236@01  $FVF<Integer_value>) r)
        ($FVF.lookup_Integer_value (as sm@234@01  $FVF<Integer_value>) r)))
    :pattern (($FVF.lookup_Integer_value (as sm@236@01  $FVF<Integer_value>) r))
    :pattern (($FVF.lookup_Integer_value (as sm@234@01  $FVF<Integer_value>) r))
    :qid |qp.fvfValDef24|))))
(push) ; 10
(assert (not (<
  $Perm.No
  (+
    (+
      (ite
        (and
          (img@232@01 (Seq_index
            ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@227@01)))))))))
            1))
          (Seq_contains
            (Seq_range 0 gsize@203@01)
            (inv@231@01 (Seq_index
              ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@227@01)))))))))
              1))))
        (/ (to_real 1) (to_real gsize@203@01))
        $Perm.No)
      (ite
        (=
          (Seq_index
            ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@227@01)))))))))
            1)
          (Seq_index
            ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@227@01)))))))))
            0))
        $Perm.Write
        $Perm.No))
    (ite
      (=
        (Seq_index
          ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@227@01)))))))))
          1)
        (Seq_index
          ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@227@01)))))))))
          1))
      $Perm.Write
      $Perm.No)))))
(check-sat)
; unsat
(pop) ; 10
; 0.00s
; (get-info :all-statistics)
; [eval] this.src[i]
(push) ; 10
(set-option :timeout 10)
(assert (not (< $Perm.No $k@228@01)))
(check-sat)
; unsat
(pop) ; 10
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 10
(assert (not (>= i@238@01 0)))
(check-sat)
; unsat
(pop) ; 10
; 0.00s
; (get-info :all-statistics)
(push) ; 10
(assert (not (<
  i@238@01
  (Seq_length
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@227@01)))))))))))
(check-sat)
; unsat
(pop) ; 10
; 0.00s
; (get-info :all-statistics)
(assert (and
  (forall ((r $Ref)) (!
    (=>
      (ite
        (and
          (img@232@01 r)
          (Seq_contains (Seq_range 0 gsize@203@01) (inv@231@01 r)))
        (< $Perm.No (/ (to_real 1) (to_real gsize@203@01)))
        false)
      (=
        ($FVF.lookup_Integer_value (as sm@236@01  $FVF<Integer_value>) r)
        ($FVF.lookup_Integer_value ($SortWrappers.$SnapTo$FVF<Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@227@01))))))))))))))) r)))
    :pattern (($FVF.lookup_Integer_value (as sm@236@01  $FVF<Integer_value>) r))
    :pattern (($FVF.lookup_Integer_value ($SortWrappers.$SnapTo$FVF<Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@227@01))))))))))))))) r))
    :qid |qp.fvfValDef22|))
  (forall ((r $Ref)) (!
    (=>
      (=
        r
        (Seq_index
          ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@227@01)))))))))
          0))
      (=
        ($FVF.lookup_Integer_value (as sm@236@01  $FVF<Integer_value>) r)
        ($FVF.lookup_Integer_value (as sm@233@01  $FVF<Integer_value>) r)))
    :pattern (($FVF.lookup_Integer_value (as sm@236@01  $FVF<Integer_value>) r))
    :pattern (($FVF.lookup_Integer_value (as sm@233@01  $FVF<Integer_value>) r))
    :qid |qp.fvfValDef23|))
  (forall ((r $Ref)) (!
    (=>
      (=
        r
        (Seq_index
          ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@227@01)))))))))
          1))
      (=
        ($FVF.lookup_Integer_value (as sm@236@01  $FVF<Integer_value>) r)
        ($FVF.lookup_Integer_value (as sm@234@01  $FVF<Integer_value>) r)))
    :pattern (($FVF.lookup_Integer_value (as sm@236@01  $FVF<Integer_value>) r))
    :pattern (($FVF.lookup_Integer_value (as sm@234@01  $FVF<Integer_value>) r))
    :qid |qp.fvfValDef24|))))
(push) ; 10
(assert (not (<
  $Perm.No
  (+
    (+
      (ite
        (and
          (img@232@01 (Seq_index
            ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@227@01)))))))
            i@238@01))
          (Seq_contains
            (Seq_range 0 gsize@203@01)
            (inv@231@01 (Seq_index
              ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@227@01)))))))
              i@238@01))))
        (/ (to_real 1) (to_real gsize@203@01))
        $Perm.No)
      (ite
        (=
          (Seq_index
            ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@227@01)))))))
            i@238@01)
          (Seq_index
            ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@227@01)))))))))
            0))
        $Perm.Write
        $Perm.No))
    (ite
      (=
        (Seq_index
          ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@227@01)))))))
          i@238@01)
        (Seq_index
          ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@227@01)))))))))
          1))
      $Perm.Write
      $Perm.No)))))
(check-sat)
; unsat
(pop) ; 10
; 0.00s
; (get-info :all-statistics)
(pop) ; 9
(push) ; 9
; [else-branch: 177 | !(half@208@01 <= i@238@01 && i@238@01 < gsize@203@01)]
(assert (not (and (<= half@208@01 i@238@01) (< i@238@01 gsize@203@01))))
(pop) ; 9
(pop) ; 8
; Joined path conditions
(assert (forall ((r $Ref)) (!
  (=>
    (ite
      (and
        (img@232@01 r)
        (Seq_contains (Seq_range 0 gsize@203@01) (inv@231@01 r)))
      (< $Perm.No (/ (to_real 1) (to_real gsize@203@01)))
      false)
    (=
      ($FVF.lookup_Integer_value (as sm@236@01  $FVF<Integer_value>) r)
      ($FVF.lookup_Integer_value ($SortWrappers.$SnapTo$FVF<Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@227@01))))))))))))))) r)))
  :pattern (($FVF.lookup_Integer_value (as sm@236@01  $FVF<Integer_value>) r))
  :pattern (($FVF.lookup_Integer_value ($SortWrappers.$SnapTo$FVF<Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@227@01))))))))))))))) r))
  :qid |qp.fvfValDef22|)))
(assert (forall ((r $Ref)) (!
  (=>
    (=
      r
      (Seq_index
        ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@227@01)))))))))
        0))
    (=
      ($FVF.lookup_Integer_value (as sm@236@01  $FVF<Integer_value>) r)
      ($FVF.lookup_Integer_value (as sm@233@01  $FVF<Integer_value>) r)))
  :pattern (($FVF.lookup_Integer_value (as sm@236@01  $FVF<Integer_value>) r))
  :pattern (($FVF.lookup_Integer_value (as sm@233@01  $FVF<Integer_value>) r))
  :qid |qp.fvfValDef23|)))
(assert (forall ((r $Ref)) (!
  (=>
    (=
      r
      (Seq_index
        ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@227@01)))))))))
        1))
    (=
      ($FVF.lookup_Integer_value (as sm@236@01  $FVF<Integer_value>) r)
      ($FVF.lookup_Integer_value (as sm@234@01  $FVF<Integer_value>) r)))
  :pattern (($FVF.lookup_Integer_value (as sm@236@01  $FVF<Integer_value>) r))
  :pattern (($FVF.lookup_Integer_value (as sm@234@01  $FVF<Integer_value>) r))
  :qid |qp.fvfValDef24|)))
; Joined path conditions
(assert (or
  (not (and (<= half@208@01 i@238@01) (< i@238@01 gsize@203@01)))
  (and (<= half@208@01 i@238@01) (< i@238@01 gsize@203@01))))
(pop) ; 7
; Nested auxiliary terms: globals (aux)
(assert (forall ((r $Ref)) (!
  (=>
    (ite
      (and
        (img@232@01 r)
        (Seq_contains (Seq_range 0 gsize@203@01) (inv@231@01 r)))
      (< $Perm.No (/ (to_real 1) (to_real gsize@203@01)))
      false)
    (=
      ($FVF.lookup_Integer_value (as sm@236@01  $FVF<Integer_value>) r)
      ($FVF.lookup_Integer_value ($SortWrappers.$SnapTo$FVF<Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@227@01))))))))))))))) r)))
  :pattern (($FVF.lookup_Integer_value (as sm@236@01  $FVF<Integer_value>) r))
  :pattern (($FVF.lookup_Integer_value ($SortWrappers.$SnapTo$FVF<Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@227@01))))))))))))))) r))
  :qid |qp.fvfValDef22|)))
(assert (forall ((r $Ref)) (!
  (=>
    (=
      r
      (Seq_index
        ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@227@01)))))))))
        0))
    (=
      ($FVF.lookup_Integer_value (as sm@236@01  $FVF<Integer_value>) r)
      ($FVF.lookup_Integer_value (as sm@233@01  $FVF<Integer_value>) r)))
  :pattern (($FVF.lookup_Integer_value (as sm@236@01  $FVF<Integer_value>) r))
  :pattern (($FVF.lookup_Integer_value (as sm@233@01  $FVF<Integer_value>) r))
  :qid |qp.fvfValDef23|)))
(assert (forall ((r $Ref)) (!
  (=>
    (=
      r
      (Seq_index
        ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@227@01)))))))))
        1))
    (=
      ($FVF.lookup_Integer_value (as sm@236@01  $FVF<Integer_value>) r)
      ($FVF.lookup_Integer_value (as sm@234@01  $FVF<Integer_value>) r)))
  :pattern (($FVF.lookup_Integer_value (as sm@236@01  $FVF<Integer_value>) r))
  :pattern (($FVF.lookup_Integer_value (as sm@234@01  $FVF<Integer_value>) r))
  :qid |qp.fvfValDef24|)))
; Nested auxiliary terms: non-globals (aux)
(assert (forall ((i@238@01 Int)) (!
  (and
    (or (<= half@208@01 i@238@01) (not (<= half@208@01 i@238@01)))
    (or
      (not (and (<= half@208@01 i@238@01) (< i@238@01 gsize@203@01)))
      (and (<= half@208@01 i@238@01) (< i@238@01 gsize@203@01))))
  :pattern ((Seq_index
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@227@01)))))))
    i@238@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/third_party/max-two-range.vpr@206@27@206@131-aux|)))
(pop) ; 6
(pop) ; 5
; Joined path conditions
(assert (forall ((r $Ref)) (!
  (=>
    (ite
      (and
        (img@232@01 r)
        (Seq_contains (Seq_range 0 gsize@203@01) (inv@231@01 r)))
      (< $Perm.No (/ (to_real 1) (to_real gsize@203@01)))
      false)
    (=
      ($FVF.lookup_Integer_value (as sm@236@01  $FVF<Integer_value>) r)
      ($FVF.lookup_Integer_value ($SortWrappers.$SnapTo$FVF<Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@227@01))))))))))))))) r)))
  :pattern (($FVF.lookup_Integer_value (as sm@236@01  $FVF<Integer_value>) r))
  :pattern (($FVF.lookup_Integer_value ($SortWrappers.$SnapTo$FVF<Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@227@01))))))))))))))) r))
  :qid |qp.fvfValDef22|)))
(assert (forall ((r $Ref)) (!
  (=>
    (=
      r
      (Seq_index
        ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@227@01)))))))))
        0))
    (=
      ($FVF.lookup_Integer_value (as sm@236@01  $FVF<Integer_value>) r)
      ($FVF.lookup_Integer_value (as sm@233@01  $FVF<Integer_value>) r)))
  :pattern (($FVF.lookup_Integer_value (as sm@236@01  $FVF<Integer_value>) r))
  :pattern (($FVF.lookup_Integer_value (as sm@233@01  $FVF<Integer_value>) r))
  :qid |qp.fvfValDef23|)))
(assert (forall ((r $Ref)) (!
  (=>
    (=
      r
      (Seq_index
        ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@227@01)))))))))
        1))
    (=
      ($FVF.lookup_Integer_value (as sm@236@01  $FVF<Integer_value>) r)
      ($FVF.lookup_Integer_value (as sm@234@01  $FVF<Integer_value>) r)))
  :pattern (($FVF.lookup_Integer_value (as sm@236@01  $FVF<Integer_value>) r))
  :pattern (($FVF.lookup_Integer_value (as sm@234@01  $FVF<Integer_value>) r))
  :qid |qp.fvfValDef24|)))
(assert (=>
  (= tid@204@01 0)
  (forall ((i@238@01 Int)) (!
    (and
      (or (<= half@208@01 i@238@01) (not (<= half@208@01 i@238@01)))
      (or
        (not (and (<= half@208@01 i@238@01) (< i@238@01 gsize@203@01)))
        (and (<= half@208@01 i@238@01) (< i@238@01 gsize@203@01))))
    :pattern ((Seq_index
      ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@227@01)))))))
      i@238@01))
    :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/third_party/max-two-range.vpr@206@27@206@131-aux|))))
(assert (=>
  (= tid@204@01 0)
  (forall ((i@238@01 Int)) (!
    (=>
      (and (<= half@208@01 i@238@01) (< i@238@01 gsize@203@01))
      (>=
        ($FVF.lookup_Integer_value (as sm@236@01  $FVF<Integer_value>) (Seq_index
          ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@227@01)))))))))
          1))
        ($FVF.lookup_Integer_value (as sm@236@01  $FVF<Integer_value>) (Seq_index
          ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@227@01)))))))
          i@238@01))))
    :pattern ((Seq_index
      ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@227@01)))))))
      i@238@01))
    :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/third_party/max-two-range.vpr@206@27@206@131|))))
(pop) ; 4
(pop) ; 3
(push) ; 3
; [else-branch: 170 | tid@204@01 != 0]
(assert (not (= tid@204@01 0)))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@227@01)))))))))))))))
  $Snap.unit))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@227@01)))))))))))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@227@01))))))))))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@227@01)))))))))))))))))))
; [eval] tid == 0
; [then-branch: 178 | tid@204@01 == 0 | dead]
; [else-branch: 178 | tid@204@01 != 0 | live]
(push) ; 4
; [else-branch: 178 | tid@204@01 != 0]
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@227@01))))))))))))))))
  $Snap.unit))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@227@01))))))))))))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@227@01)))))))))))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@227@01))))))))))))))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@227@01)))))))))))))))))
  $Snap.unit))
; [eval] tid == 0 ==> (forall i: Int :: { this.src[i] } 0 <= i && i < half ==> this.dst[0].Integer_value >= this.src[i].Integer_value)
; [eval] tid == 0
(push) ; 5
; [then-branch: 179 | tid@204@01 == 0 | dead]
; [else-branch: 179 | tid@204@01 != 0 | live]
(push) ; 6
; [else-branch: 179 | tid@204@01 != 0]
(pop) ; 6
(pop) ; 5
; Joined path conditions
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@227@01)))))))))))))))))
  $Snap.unit))
; [eval] tid == 0 ==> (forall i: Int :: { this.src[i] } half <= i && i < gsize ==> this.dst[1].Integer_value >= this.src[i].Integer_value)
; [eval] tid == 0
(push) ; 5
; [then-branch: 180 | tid@204@01 == 0 | dead]
; [else-branch: 180 | tid@204@01 != 0 | live]
(push) ; 6
; [else-branch: 180 | tid@204@01 != 0]
(pop) ; 6
(pop) ; 5
; Joined path conditions
(pop) ; 4
(pop) ; 3
(pop) ; 2
(push) ; 2
; [eval] 0 <= tid
; [eval] tid < tcount
; [eval] tid == lid
; [eval] tcount == gsize
; [eval] gid == 0
(declare-const $k@239@01 $Perm)
(assert ($Perm.isReadVar $k@239@01))
(push) ; 3
(set-option :timeout 10)
(assert (not (not (= $k@211@01 $Perm.No))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(assert (< $k@239@01 $k@211@01))
(assert (<= $Perm.No (- $k@211@01 $k@239@01)))
(assert (<= (- $k@211@01 $k@239@01) $Perm.Write))
(assert (=> (< $Perm.No (- $k@211@01 $k@239@01)) (not (= this@201@01 $Ref.null))))
; [eval] |this.src| == gsize
; [eval] |this.src|
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (< $Perm.No $k@211@01)))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(declare-const $k@240@01 $Perm)
(assert ($Perm.isReadVar $k@240@01))
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (not (= $k@212@01 $Perm.No))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(assert (< $k@240@01 $k@212@01))
(assert (<= $Perm.No (- $k@212@01 $k@240@01)))
(assert (<= (- $k@212@01 $k@240@01) $Perm.Write))
(assert (=> (< $Perm.No (- $k@212@01 $k@240@01)) (not (= this@201@01 $Ref.null))))
; [eval] |this.dst| == gsize
; [eval] |this.dst|
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (< $Perm.No $k@212@01)))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; [eval] 4 <= gsize
; [eval] gsize % 2 == 0
; [eval] gsize % 2
; [eval] this.src == old(this.src)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (< $Perm.No $k@211@01)))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; [eval] old(this.src)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (< $Perm.No $k@211@01)))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; [eval] this.dst == old(this.dst)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (< $Perm.No $k@212@01)))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; [eval] old(this.dst)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (< $Perm.No $k@212@01)))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(declare-const i@241@01 Int)
(set-option :timeout 0)
(push) ; 3
; [eval] (i in [0..gsize))
; [eval] [0..gsize)
(assert (Seq_contains (Seq_range 0 gsize@203@01) i@241@01))
(push) ; 4
(assert (not (not (= gsize@203@01 0))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; [eval] this.src[i]
(push) ; 4
(set-option :timeout 10)
(assert (not (< $Perm.No $k@211@01)))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 4
(assert (not (>= i@241@01 0)))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(push) ; 4
(assert (not (<
  i@241@01
  (Seq_length
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@210@01)))))))))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(pop) ; 3
(declare-fun inv@242@01 ($Ref) Int)
(declare-fun img@243@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
(push) ; 3
(assert (not (forall ((i@241@01 Int)) (!
  (=>
    (Seq_contains (Seq_range 0 gsize@203@01) i@241@01)
    (or
      (= (/ (to_real 1) (to_real gsize@203@01)) $Perm.No)
      (< $Perm.No (/ (to_real 1) (to_real gsize@203@01)))))
  
  :qid |quant-u-17971|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Check receiver injectivity
(push) ; 3
(assert (not (forall ((i1@241@01 Int) (i2@241@01 Int)) (!
  (=>
    (and
      (and
        (Seq_contains (Seq_range 0 gsize@203@01) i1@241@01)
        (< $Perm.No (/ (to_real 1) (to_real gsize@203@01))))
      (and
        (Seq_contains (Seq_range 0 gsize@203@01) i2@241@01)
        (< $Perm.No (/ (to_real 1) (to_real gsize@203@01))))
      (=
        (Seq_index
          ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@210@01)))))))
          i1@241@01)
        (Seq_index
          ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@210@01)))))))
          i2@241@01)))
    (= i1@241@01 i2@241@01))
  
  :qid |Integer_value-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((i@241@01 Int)) (!
  (=>
    (and
      (Seq_contains (Seq_range 0 gsize@203@01) i@241@01)
      (< $Perm.No (/ (to_real 1) (to_real gsize@203@01))))
    (and
      (=
        (inv@242@01 (Seq_index
          ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@210@01)))))))
          i@241@01))
        i@241@01)
      (img@243@01 (Seq_index
        ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@210@01)))))))
        i@241@01))))
  :pattern ((Seq_index
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@210@01)))))))
    i@241@01))
  :qid |Integer_value-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@243@01 r)
      (and
        (Seq_contains (Seq_range 0 gsize@203@01) (inv@242@01 r))
        (< $Perm.No (/ (to_real 1) (to_real gsize@203@01)))))
    (=
      (Seq_index
        ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@210@01)))))))
        (inv@242@01 r))
      r))
  :pattern ((inv@242@01 r))
  :qid |Integer_value-fctOfInv|)))
(push) ; 3
(set-option :timeout 10)
(assert (not (forall ((i@241@01 Int)) (!
  (=
    (Seq_index
      ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@210@01)))))))
      i@241@01)
    (Seq_index
      ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@210@01)))))))))
      i@241@01))
  
  :qid |quant-u-17972|))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Precomputing data for removing quantified permissions
(define-fun pTaken@244@01 ((r $Ref)) $Perm
  (ite
    (and
      (Seq_contains (Seq_range 0 gsize@203@01) (inv@242@01 r))
      (img@243@01 r)
      (=
        r
        (Seq_index
          ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@210@01)))))))
          (inv@242@01 r))))
    ($Perm.min
      (ite
        (and
          (img@217@01 r)
          (Seq_contains (Seq_range 0 gsize@203@01) (inv@216@01 r)))
        (/ (to_real 1) (to_real gsize@203@01))
        $Perm.No)
      (/ (to_real 1) (to_real gsize@203@01)))
    $Perm.No))
(define-fun pTaken@245@01 ((r $Ref)) $Perm
  (ite
    (and
      (Seq_contains (Seq_range 0 gsize@203@01) (inv@242@01 r))
      (img@243@01 r)
      (=
        r
        (Seq_index
          ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@210@01)))))))
          (inv@242@01 r))))
    ($Perm.min
      (ite
        (and
          (img@222@01 r)
          (Seq_contains (Seq_range 0 gsize@203@01) (inv@221@01 r)))
        $Perm.Write
        $Perm.No)
      (- (/ (to_real 1) (to_real gsize@203@01)) (pTaken@244@01 r)))
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
          (img@217@01 r)
          (Seq_contains (Seq_range 0 gsize@203@01) (inv@216@01 r)))
        (/ (to_real 1) (to_real gsize@203@01))
        $Perm.No)
      (pTaken@244@01 r))
    $Perm.No)
  
  :qid |quant-u-17974|))))
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
      (Seq_contains (Seq_range 0 gsize@203@01) (inv@242@01 r))
      (img@243@01 r)
      (=
        r
        (Seq_index
          ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@210@01)))))))
          (inv@242@01 r))))
    (= (- (/ (to_real 1) (to_real gsize@203@01)) (pTaken@244@01 r)) $Perm.No))
  
  :qid |quant-u-17975|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Final check if taken enough permissions
; Done removing quantified permissions
; [eval] tid == 0
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (not (= tid@204@01 0))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (= tid@204@01 0)))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; [then-branch: 181 | tid@204@01 == 0 | live]
; [else-branch: 181 | tid@204@01 != 0 | live]
(set-option :timeout 0)
(push) ; 3
; [then-branch: 181 | tid@204@01 == 0]
(assert (= tid@204@01 0))
; [eval] this.dst[0]
(push) ; 4
(set-option :timeout 10)
(assert (not (< $Perm.No $k@212@01)))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 4
(assert (not (<
  0
  (Seq_length
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@210@01)))))))))))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; Precomputing data for removing quantified permissions
(define-fun pTaken@246@01 ((r $Ref)) $Perm
  (ite
    (=
      r
      (Seq_index
        ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@210@01)))))))))
        0))
    ($Perm.min
      (ite
        (and
          (img@222@01 r)
          (Seq_contains (Seq_range 0 gsize@203@01) (inv@221@01 r)))
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
        (and
          (img@222@01 r)
          (Seq_contains (Seq_range 0 gsize@203@01) (inv@221@01 r)))
        $Perm.Write
        $Perm.No)
      (pTaken@246@01 r))
    $Perm.No)
  
  :qid |quant-u-17977|))))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not (forall ((r $Ref)) (!
  (= (pTaken@246@01 r) $Perm.No)
  
  :qid |quant-u-17978|))))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; Intermediate check if already taken enough permissions
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 500)
(assert (not (forall ((r $Ref)) (!
  (=>
    (=
      r
      (Seq_index
        ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@210@01)))))))))
        0))
    (= (- $Perm.Write (pTaken@246@01 r)) $Perm.No))
  
  :qid |quant-u-17979|))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; Final check if taken enough permissions
; Done removing quantified permissions
; [eval] tid == 0
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not (not (= tid@204@01 0))))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; [then-branch: 182 | tid@204@01 == 0 | live]
; [else-branch: 182 | tid@204@01 != 0 | dead]
(set-option :timeout 0)
(push) ; 4
; [then-branch: 182 | tid@204@01 == 0]
; [eval] this.dst[1]
(push) ; 5
(set-option :timeout 10)
(assert (not (< $Perm.No $k@212@01)))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 5
(assert (not (<
  1
  (Seq_length
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@210@01)))))))))))))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
; Precomputing data for removing quantified permissions
(define-fun pTaken@247@01 ((r $Ref)) $Perm
  (ite
    (=
      r
      (Seq_index
        ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@210@01)))))))))
        1))
    ($Perm.min
      (ite
        (and
          (img@222@01 r)
          (Seq_contains (Seq_range 0 gsize@203@01) (inv@221@01 r)))
        (- $Perm.Write (pTaken@246@01 r))
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
        (and
          (img@222@01 r)
          (Seq_contains (Seq_range 0 gsize@203@01) (inv@221@01 r)))
        (- $Perm.Write (pTaken@246@01 r))
        $Perm.No)
      (pTaken@247@01 r))
    $Perm.No)
  
  :qid |quant-u-17981|))))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 5
(set-option :timeout 10)
(assert (not (forall ((r $Ref)) (!
  (= (pTaken@247@01 r) $Perm.No)
  
  :qid |quant-u-17982|))))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
; Intermediate check if already taken enough permissions
(set-option :timeout 0)
(push) ; 5
(set-option :timeout 500)
(assert (not (forall ((r $Ref)) (!
  (=>
    (=
      r
      (Seq_index
        ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@210@01)))))))))
        1))
    (= (- $Perm.Write (pTaken@247@01 r)) $Perm.No))
  
  :qid |quant-u-17983|))))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
; Final check if taken enough permissions
; Done removing quantified permissions
; [eval] tid == 0 ==> (forall i: Int :: { this.src[i] } 0 <= i && i < half ==> this.dst[0].Integer_value >= this.src[i].Integer_value)
; [eval] tid == 0
(set-option :timeout 0)
(push) ; 5
(push) ; 6
(set-option :timeout 10)
(assert (not (not (= tid@204@01 0))))
(check-sat)
; unknown
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
; [then-branch: 183 | tid@204@01 == 0 | live]
; [else-branch: 183 | tid@204@01 != 0 | dead]
(set-option :timeout 0)
(push) ; 6
; [then-branch: 183 | tid@204@01 == 0]
; [eval] (forall i: Int :: { this.src[i] } 0 <= i && i < half ==> this.dst[0].Integer_value >= this.src[i].Integer_value)
(declare-const i@248@01 Int)
(push) ; 7
; [eval] 0 <= i && i < half ==> this.dst[0].Integer_value >= this.src[i].Integer_value
; [eval] 0 <= i && i < half
; [eval] 0 <= i
(push) ; 8
; [then-branch: 184 | !(0 <= i@248@01) | live]
; [else-branch: 184 | 0 <= i@248@01 | live]
(push) ; 9
; [then-branch: 184 | !(0 <= i@248@01)]
(assert (not (<= 0 i@248@01)))
(pop) ; 9
(push) ; 9
; [else-branch: 184 | 0 <= i@248@01]
(assert (<= 0 i@248@01))
; [eval] i < half
(pop) ; 9
(pop) ; 8
; Joined path conditions
; Joined path conditions
(assert (or (<= 0 i@248@01) (not (<= 0 i@248@01))))
(push) ; 8
; [then-branch: 185 | 0 <= i@248@01 && i@248@01 < half@208@01 | live]
; [else-branch: 185 | !(0 <= i@248@01 && i@248@01 < half@208@01) | live]
(push) ; 9
; [then-branch: 185 | 0 <= i@248@01 && i@248@01 < half@208@01]
(assert (and (<= 0 i@248@01) (< i@248@01 half@208@01)))
; [eval] this.dst[0].Integer_value >= this.src[i].Integer_value
; [eval] this.dst[0]
(push) ; 10
(set-option :timeout 10)
(assert (not (< $Perm.No $k@212@01)))
(check-sat)
; unsat
(pop) ; 10
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 10
(assert (not (<
  0
  (Seq_length
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@210@01)))))))))))))
(check-sat)
; unsat
(pop) ; 10
; 0.00s
; (get-info :all-statistics)
(assert (and
  (forall ((r $Ref)) (!
    (=>
      (ite
        (and
          (img@217@01 r)
          (Seq_contains (Seq_range 0 gsize@203@01) (inv@216@01 r)))
        (< $Perm.No (/ (to_real 1) (to_real gsize@203@01)))
        false)
      (=
        ($FVF.lookup_Integer_value (as sm@224@01  $FVF<Integer_value>) r)
        ($FVF.lookup_Integer_value ($SortWrappers.$SnapTo$FVF<Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@210@01)))))))))))))) r)))
    :pattern (($FVF.lookup_Integer_value (as sm@224@01  $FVF<Integer_value>) r))
    :pattern (($FVF.lookup_Integer_value ($SortWrappers.$SnapTo$FVF<Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@210@01)))))))))))))) r))
    :qid |qp.fvfValDef19|))
  (forall ((r $Ref)) (!
    (=>
      (and
        (img@222@01 r)
        (Seq_contains (Seq_range 0 gsize@203@01) (inv@221@01 r)))
      (=
        ($FVF.lookup_Integer_value (as sm@224@01  $FVF<Integer_value>) r)
        ($FVF.lookup_Integer_value ($SortWrappers.$SnapTo$FVF<Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@210@01)))))))))))))))) r)))
    :pattern (($FVF.lookup_Integer_value (as sm@224@01  $FVF<Integer_value>) r))
    :pattern (($FVF.lookup_Integer_value ($SortWrappers.$SnapTo$FVF<Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@210@01)))))))))))))))) r))
    :qid |qp.fvfValDef20|))))
(push) ; 10
(assert (not (<
  $Perm.No
  (+
    (ite
      (and
        (img@217@01 (Seq_index
          ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@210@01)))))))))
          0))
        (Seq_contains
          (Seq_range 0 gsize@203@01)
          (inv@216@01 (Seq_index
            ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@210@01)))))))))
            0))))
      (/ (to_real 1) (to_real gsize@203@01))
      $Perm.No)
    (ite
      (and
        (img@222@01 (Seq_index
          ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@210@01)))))))))
          0))
        (Seq_contains
          (Seq_range 0 gsize@203@01)
          (inv@221@01 (Seq_index
            ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@210@01)))))))))
            0))))
      $Perm.Write
      $Perm.No)))))
(check-sat)
; unsat
(pop) ; 10
; 0.00s
; (get-info :all-statistics)
; [eval] this.src[i]
(push) ; 10
(set-option :timeout 10)
(assert (not (< $Perm.No $k@211@01)))
(check-sat)
; unsat
(pop) ; 10
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 10
(assert (not (>= i@248@01 0)))
(check-sat)
; unsat
(pop) ; 10
; 0.00s
; (get-info :all-statistics)
(push) ; 10
(assert (not (<
  i@248@01
  (Seq_length
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@210@01)))))))))))
(check-sat)
; unsat
(pop) ; 10
; 0.00s
; (get-info :all-statistics)
(assert (and
  (forall ((r $Ref)) (!
    (=>
      (ite
        (and
          (img@217@01 r)
          (Seq_contains (Seq_range 0 gsize@203@01) (inv@216@01 r)))
        (< $Perm.No (/ (to_real 1) (to_real gsize@203@01)))
        false)
      (=
        ($FVF.lookup_Integer_value (as sm@224@01  $FVF<Integer_value>) r)
        ($FVF.lookup_Integer_value ($SortWrappers.$SnapTo$FVF<Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@210@01)))))))))))))) r)))
    :pattern (($FVF.lookup_Integer_value (as sm@224@01  $FVF<Integer_value>) r))
    :pattern (($FVF.lookup_Integer_value ($SortWrappers.$SnapTo$FVF<Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@210@01)))))))))))))) r))
    :qid |qp.fvfValDef19|))
  (forall ((r $Ref)) (!
    (=>
      (and
        (img@222@01 r)
        (Seq_contains (Seq_range 0 gsize@203@01) (inv@221@01 r)))
      (=
        ($FVF.lookup_Integer_value (as sm@224@01  $FVF<Integer_value>) r)
        ($FVF.lookup_Integer_value ($SortWrappers.$SnapTo$FVF<Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@210@01)))))))))))))))) r)))
    :pattern (($FVF.lookup_Integer_value (as sm@224@01  $FVF<Integer_value>) r))
    :pattern (($FVF.lookup_Integer_value ($SortWrappers.$SnapTo$FVF<Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@210@01)))))))))))))))) r))
    :qid |qp.fvfValDef20|))))
(push) ; 10
(assert (not (<
  $Perm.No
  (+
    (ite
      (and
        (img@217@01 (Seq_index
          ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@210@01)))))))
          i@248@01))
        (Seq_contains
          (Seq_range 0 gsize@203@01)
          (inv@216@01 (Seq_index
            ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@210@01)))))))
            i@248@01))))
      (/ (to_real 1) (to_real gsize@203@01))
      $Perm.No)
    (ite
      (and
        (img@222@01 (Seq_index
          ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@210@01)))))))
          i@248@01))
        (Seq_contains
          (Seq_range 0 gsize@203@01)
          (inv@221@01 (Seq_index
            ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@210@01)))))))
            i@248@01))))
      $Perm.Write
      $Perm.No)))))
(check-sat)
; unsat
(pop) ; 10
; 0.00s
; (get-info :all-statistics)
(pop) ; 9
(push) ; 9
; [else-branch: 185 | !(0 <= i@248@01 && i@248@01 < half@208@01)]
(assert (not (and (<= 0 i@248@01) (< i@248@01 half@208@01))))
(pop) ; 9
(pop) ; 8
; Joined path conditions
(assert (forall ((r $Ref)) (!
  (=>
    (ite
      (and
        (img@217@01 r)
        (Seq_contains (Seq_range 0 gsize@203@01) (inv@216@01 r)))
      (< $Perm.No (/ (to_real 1) (to_real gsize@203@01)))
      false)
    (=
      ($FVF.lookup_Integer_value (as sm@224@01  $FVF<Integer_value>) r)
      ($FVF.lookup_Integer_value ($SortWrappers.$SnapTo$FVF<Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@210@01)))))))))))))) r)))
  :pattern (($FVF.lookup_Integer_value (as sm@224@01  $FVF<Integer_value>) r))
  :pattern (($FVF.lookup_Integer_value ($SortWrappers.$SnapTo$FVF<Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@210@01)))))))))))))) r))
  :qid |qp.fvfValDef19|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@222@01 r) (Seq_contains (Seq_range 0 gsize@203@01) (inv@221@01 r)))
    (=
      ($FVF.lookup_Integer_value (as sm@224@01  $FVF<Integer_value>) r)
      ($FVF.lookup_Integer_value ($SortWrappers.$SnapTo$FVF<Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@210@01)))))))))))))))) r)))
  :pattern (($FVF.lookup_Integer_value (as sm@224@01  $FVF<Integer_value>) r))
  :pattern (($FVF.lookup_Integer_value ($SortWrappers.$SnapTo$FVF<Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@210@01)))))))))))))))) r))
  :qid |qp.fvfValDef20|)))
; Joined path conditions
(assert (or
  (not (and (<= 0 i@248@01) (< i@248@01 half@208@01)))
  (and (<= 0 i@248@01) (< i@248@01 half@208@01))))
(pop) ; 7
; Nested auxiliary terms: globals (aux)
(assert (forall ((r $Ref)) (!
  (=>
    (ite
      (and
        (img@217@01 r)
        (Seq_contains (Seq_range 0 gsize@203@01) (inv@216@01 r)))
      (< $Perm.No (/ (to_real 1) (to_real gsize@203@01)))
      false)
    (=
      ($FVF.lookup_Integer_value (as sm@224@01  $FVF<Integer_value>) r)
      ($FVF.lookup_Integer_value ($SortWrappers.$SnapTo$FVF<Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@210@01)))))))))))))) r)))
  :pattern (($FVF.lookup_Integer_value (as sm@224@01  $FVF<Integer_value>) r))
  :pattern (($FVF.lookup_Integer_value ($SortWrappers.$SnapTo$FVF<Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@210@01)))))))))))))) r))
  :qid |qp.fvfValDef19|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@222@01 r) (Seq_contains (Seq_range 0 gsize@203@01) (inv@221@01 r)))
    (=
      ($FVF.lookup_Integer_value (as sm@224@01  $FVF<Integer_value>) r)
      ($FVF.lookup_Integer_value ($SortWrappers.$SnapTo$FVF<Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@210@01)))))))))))))))) r)))
  :pattern (($FVF.lookup_Integer_value (as sm@224@01  $FVF<Integer_value>) r))
  :pattern (($FVF.lookup_Integer_value ($SortWrappers.$SnapTo$FVF<Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@210@01)))))))))))))))) r))
  :qid |qp.fvfValDef20|)))
; Nested auxiliary terms: non-globals (aux)
(assert (forall ((i@248@01 Int)) (!
  (and
    (or (<= 0 i@248@01) (not (<= 0 i@248@01)))
    (or
      (not (and (<= 0 i@248@01) (< i@248@01 half@208@01)))
      (and (<= 0 i@248@01) (< i@248@01 half@208@01))))
  :pattern ((Seq_index
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@210@01)))))))
    i@248@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/third_party/max-two-range.vpr@205@27@205@127-aux|)))
(pop) ; 6
(pop) ; 5
; Joined path conditions
(assert (forall ((r $Ref)) (!
  (=>
    (ite
      (and
        (img@217@01 r)
        (Seq_contains (Seq_range 0 gsize@203@01) (inv@216@01 r)))
      (< $Perm.No (/ (to_real 1) (to_real gsize@203@01)))
      false)
    (=
      ($FVF.lookup_Integer_value (as sm@224@01  $FVF<Integer_value>) r)
      ($FVF.lookup_Integer_value ($SortWrappers.$SnapTo$FVF<Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@210@01)))))))))))))) r)))
  :pattern (($FVF.lookup_Integer_value (as sm@224@01  $FVF<Integer_value>) r))
  :pattern (($FVF.lookup_Integer_value ($SortWrappers.$SnapTo$FVF<Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@210@01)))))))))))))) r))
  :qid |qp.fvfValDef19|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@222@01 r) (Seq_contains (Seq_range 0 gsize@203@01) (inv@221@01 r)))
    (=
      ($FVF.lookup_Integer_value (as sm@224@01  $FVF<Integer_value>) r)
      ($FVF.lookup_Integer_value ($SortWrappers.$SnapTo$FVF<Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@210@01)))))))))))))))) r)))
  :pattern (($FVF.lookup_Integer_value (as sm@224@01  $FVF<Integer_value>) r))
  :pattern (($FVF.lookup_Integer_value ($SortWrappers.$SnapTo$FVF<Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@210@01)))))))))))))))) r))
  :qid |qp.fvfValDef20|)))
(assert (=>
  (= tid@204@01 0)
  (forall ((i@248@01 Int)) (!
    (and
      (or (<= 0 i@248@01) (not (<= 0 i@248@01)))
      (or
        (not (and (<= 0 i@248@01) (< i@248@01 half@208@01)))
        (and (<= 0 i@248@01) (< i@248@01 half@208@01))))
    :pattern ((Seq_index
      ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@210@01)))))))
      i@248@01))
    :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/third_party/max-two-range.vpr@205@27@205@127-aux|))))
(push) ; 5
(assert (not (=>
  (= tid@204@01 0)
  (forall ((i@248@01 Int)) (!
    (=>
      (and (<= 0 i@248@01) (< i@248@01 half@208@01))
      (>=
        ($FVF.lookup_Integer_value (as sm@224@01  $FVF<Integer_value>) (Seq_index
          ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@210@01)))))))))
          0))
        ($FVF.lookup_Integer_value (as sm@224@01  $FVF<Integer_value>) (Seq_index
          ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@210@01)))))))
          i@248@01))))
    :pattern ((Seq_index
      ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@210@01)))))))
      i@248@01))
    :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/third_party/max-two-range.vpr@205@27@205@127|)))))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(assert (=>
  (= tid@204@01 0)
  (forall ((i@248@01 Int)) (!
    (=>
      (and (<= 0 i@248@01) (< i@248@01 half@208@01))
      (>=
        ($FVF.lookup_Integer_value (as sm@224@01  $FVF<Integer_value>) (Seq_index
          ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@210@01)))))))))
          0))
        ($FVF.lookup_Integer_value (as sm@224@01  $FVF<Integer_value>) (Seq_index
          ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@210@01)))))))
          i@248@01))))
    :pattern ((Seq_index
      ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@210@01)))))))
      i@248@01))
    :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/third_party/max-two-range.vpr@205@27@205@127|))))
; [eval] tid == 0 ==> (forall i: Int :: { this.src[i] } half <= i && i < gsize ==> this.dst[1].Integer_value >= this.src[i].Integer_value)
; [eval] tid == 0
(push) ; 5
(push) ; 6
(set-option :timeout 10)
(assert (not (not (= tid@204@01 0))))
(check-sat)
; unknown
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
; [then-branch: 186 | tid@204@01 == 0 | live]
; [else-branch: 186 | tid@204@01 != 0 | dead]
(set-option :timeout 0)
(push) ; 6
; [then-branch: 186 | tid@204@01 == 0]
; [eval] (forall i: Int :: { this.src[i] } half <= i && i < gsize ==> this.dst[1].Integer_value >= this.src[i].Integer_value)
(declare-const i@249@01 Int)
(push) ; 7
; [eval] half <= i && i < gsize ==> this.dst[1].Integer_value >= this.src[i].Integer_value
; [eval] half <= i && i < gsize
; [eval] half <= i
(push) ; 8
; [then-branch: 187 | !(half@208@01 <= i@249@01) | live]
; [else-branch: 187 | half@208@01 <= i@249@01 | live]
(push) ; 9
; [then-branch: 187 | !(half@208@01 <= i@249@01)]
(assert (not (<= half@208@01 i@249@01)))
(pop) ; 9
(push) ; 9
; [else-branch: 187 | half@208@01 <= i@249@01]
(assert (<= half@208@01 i@249@01))
; [eval] i < gsize
(pop) ; 9
(pop) ; 8
; Joined path conditions
; Joined path conditions
(assert (or (<= half@208@01 i@249@01) (not (<= half@208@01 i@249@01))))
(push) ; 8
; [then-branch: 188 | half@208@01 <= i@249@01 && i@249@01 < gsize@203@01 | live]
; [else-branch: 188 | !(half@208@01 <= i@249@01 && i@249@01 < gsize@203@01) | live]
(push) ; 9
; [then-branch: 188 | half@208@01 <= i@249@01 && i@249@01 < gsize@203@01]
(assert (and (<= half@208@01 i@249@01) (< i@249@01 gsize@203@01)))
; [eval] this.dst[1].Integer_value >= this.src[i].Integer_value
; [eval] this.dst[1]
(push) ; 10
(set-option :timeout 10)
(assert (not (< $Perm.No $k@212@01)))
(check-sat)
; unsat
(pop) ; 10
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 10
(assert (not (<
  1
  (Seq_length
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@210@01)))))))))))))
(check-sat)
; unsat
(pop) ; 10
; 0.00s
; (get-info :all-statistics)
(assert (and
  (forall ((r $Ref)) (!
    (=>
      (ite
        (and
          (img@217@01 r)
          (Seq_contains (Seq_range 0 gsize@203@01) (inv@216@01 r)))
        (< $Perm.No (/ (to_real 1) (to_real gsize@203@01)))
        false)
      (=
        ($FVF.lookup_Integer_value (as sm@224@01  $FVF<Integer_value>) r)
        ($FVF.lookup_Integer_value ($SortWrappers.$SnapTo$FVF<Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@210@01)))))))))))))) r)))
    :pattern (($FVF.lookup_Integer_value (as sm@224@01  $FVF<Integer_value>) r))
    :pattern (($FVF.lookup_Integer_value ($SortWrappers.$SnapTo$FVF<Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@210@01)))))))))))))) r))
    :qid |qp.fvfValDef19|))
  (forall ((r $Ref)) (!
    (=>
      (and
        (img@222@01 r)
        (Seq_contains (Seq_range 0 gsize@203@01) (inv@221@01 r)))
      (=
        ($FVF.lookup_Integer_value (as sm@224@01  $FVF<Integer_value>) r)
        ($FVF.lookup_Integer_value ($SortWrappers.$SnapTo$FVF<Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@210@01)))))))))))))))) r)))
    :pattern (($FVF.lookup_Integer_value (as sm@224@01  $FVF<Integer_value>) r))
    :pattern (($FVF.lookup_Integer_value ($SortWrappers.$SnapTo$FVF<Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@210@01)))))))))))))))) r))
    :qid |qp.fvfValDef20|))))
(push) ; 10
(assert (not (<
  $Perm.No
  (+
    (ite
      (and
        (img@217@01 (Seq_index
          ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@210@01)))))))))
          1))
        (Seq_contains
          (Seq_range 0 gsize@203@01)
          (inv@216@01 (Seq_index
            ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@210@01)))))))))
            1))))
      (/ (to_real 1) (to_real gsize@203@01))
      $Perm.No)
    (ite
      (and
        (img@222@01 (Seq_index
          ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@210@01)))))))))
          1))
        (Seq_contains
          (Seq_range 0 gsize@203@01)
          (inv@221@01 (Seq_index
            ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@210@01)))))))))
            1))))
      $Perm.Write
      $Perm.No)))))
(check-sat)
; unsat
(pop) ; 10
; 0.00s
; (get-info :all-statistics)
; [eval] this.src[i]
(push) ; 10
(set-option :timeout 10)
(assert (not (< $Perm.No $k@211@01)))
(check-sat)
; unsat
(pop) ; 10
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 10
(assert (not (>= i@249@01 0)))
(check-sat)
; unsat
(pop) ; 10
; 0.00s
; (get-info :all-statistics)
(push) ; 10
(assert (not (<
  i@249@01
  (Seq_length
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@210@01)))))))))))
(check-sat)
; unsat
(pop) ; 10
; 0.00s
; (get-info :all-statistics)
(assert (and
  (forall ((r $Ref)) (!
    (=>
      (ite
        (and
          (img@217@01 r)
          (Seq_contains (Seq_range 0 gsize@203@01) (inv@216@01 r)))
        (< $Perm.No (/ (to_real 1) (to_real gsize@203@01)))
        false)
      (=
        ($FVF.lookup_Integer_value (as sm@224@01  $FVF<Integer_value>) r)
        ($FVF.lookup_Integer_value ($SortWrappers.$SnapTo$FVF<Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@210@01)))))))))))))) r)))
    :pattern (($FVF.lookup_Integer_value (as sm@224@01  $FVF<Integer_value>) r))
    :pattern (($FVF.lookup_Integer_value ($SortWrappers.$SnapTo$FVF<Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@210@01)))))))))))))) r))
    :qid |qp.fvfValDef19|))
  (forall ((r $Ref)) (!
    (=>
      (and
        (img@222@01 r)
        (Seq_contains (Seq_range 0 gsize@203@01) (inv@221@01 r)))
      (=
        ($FVF.lookup_Integer_value (as sm@224@01  $FVF<Integer_value>) r)
        ($FVF.lookup_Integer_value ($SortWrappers.$SnapTo$FVF<Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@210@01)))))))))))))))) r)))
    :pattern (($FVF.lookup_Integer_value (as sm@224@01  $FVF<Integer_value>) r))
    :pattern (($FVF.lookup_Integer_value ($SortWrappers.$SnapTo$FVF<Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@210@01)))))))))))))))) r))
    :qid |qp.fvfValDef20|))))
(push) ; 10
(assert (not (<
  $Perm.No
  (+
    (ite
      (and
        (img@217@01 (Seq_index
          ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@210@01)))))))
          i@249@01))
        (Seq_contains
          (Seq_range 0 gsize@203@01)
          (inv@216@01 (Seq_index
            ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@210@01)))))))
            i@249@01))))
      (/ (to_real 1) (to_real gsize@203@01))
      $Perm.No)
    (ite
      (and
        (img@222@01 (Seq_index
          ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@210@01)))))))
          i@249@01))
        (Seq_contains
          (Seq_range 0 gsize@203@01)
          (inv@221@01 (Seq_index
            ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@210@01)))))))
            i@249@01))))
      $Perm.Write
      $Perm.No)))))
(check-sat)
; unsat
(pop) ; 10
; 0.00s
; (get-info :all-statistics)
(pop) ; 9
(push) ; 9
; [else-branch: 188 | !(half@208@01 <= i@249@01 && i@249@01 < gsize@203@01)]
(assert (not (and (<= half@208@01 i@249@01) (< i@249@01 gsize@203@01))))
(pop) ; 9
(pop) ; 8
; Joined path conditions
(assert (forall ((r $Ref)) (!
  (=>
    (ite
      (and
        (img@217@01 r)
        (Seq_contains (Seq_range 0 gsize@203@01) (inv@216@01 r)))
      (< $Perm.No (/ (to_real 1) (to_real gsize@203@01)))
      false)
    (=
      ($FVF.lookup_Integer_value (as sm@224@01  $FVF<Integer_value>) r)
      ($FVF.lookup_Integer_value ($SortWrappers.$SnapTo$FVF<Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@210@01)))))))))))))) r)))
  :pattern (($FVF.lookup_Integer_value (as sm@224@01  $FVF<Integer_value>) r))
  :pattern (($FVF.lookup_Integer_value ($SortWrappers.$SnapTo$FVF<Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@210@01)))))))))))))) r))
  :qid |qp.fvfValDef19|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@222@01 r) (Seq_contains (Seq_range 0 gsize@203@01) (inv@221@01 r)))
    (=
      ($FVF.lookup_Integer_value (as sm@224@01  $FVF<Integer_value>) r)
      ($FVF.lookup_Integer_value ($SortWrappers.$SnapTo$FVF<Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@210@01)))))))))))))))) r)))
  :pattern (($FVF.lookup_Integer_value (as sm@224@01  $FVF<Integer_value>) r))
  :pattern (($FVF.lookup_Integer_value ($SortWrappers.$SnapTo$FVF<Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@210@01)))))))))))))))) r))
  :qid |qp.fvfValDef20|)))
; Joined path conditions
(assert (or
  (not (and (<= half@208@01 i@249@01) (< i@249@01 gsize@203@01)))
  (and (<= half@208@01 i@249@01) (< i@249@01 gsize@203@01))))
(pop) ; 7
; Nested auxiliary terms: globals (aux)
(assert (forall ((r $Ref)) (!
  (=>
    (ite
      (and
        (img@217@01 r)
        (Seq_contains (Seq_range 0 gsize@203@01) (inv@216@01 r)))
      (< $Perm.No (/ (to_real 1) (to_real gsize@203@01)))
      false)
    (=
      ($FVF.lookup_Integer_value (as sm@224@01  $FVF<Integer_value>) r)
      ($FVF.lookup_Integer_value ($SortWrappers.$SnapTo$FVF<Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@210@01)))))))))))))) r)))
  :pattern (($FVF.lookup_Integer_value (as sm@224@01  $FVF<Integer_value>) r))
  :pattern (($FVF.lookup_Integer_value ($SortWrappers.$SnapTo$FVF<Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@210@01)))))))))))))) r))
  :qid |qp.fvfValDef19|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@222@01 r) (Seq_contains (Seq_range 0 gsize@203@01) (inv@221@01 r)))
    (=
      ($FVF.lookup_Integer_value (as sm@224@01  $FVF<Integer_value>) r)
      ($FVF.lookup_Integer_value ($SortWrappers.$SnapTo$FVF<Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@210@01)))))))))))))))) r)))
  :pattern (($FVF.lookup_Integer_value (as sm@224@01  $FVF<Integer_value>) r))
  :pattern (($FVF.lookup_Integer_value ($SortWrappers.$SnapTo$FVF<Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@210@01)))))))))))))))) r))
  :qid |qp.fvfValDef20|)))
; Nested auxiliary terms: non-globals (aux)
(assert (forall ((i@249@01 Int)) (!
  (and
    (or (<= half@208@01 i@249@01) (not (<= half@208@01 i@249@01)))
    (or
      (not (and (<= half@208@01 i@249@01) (< i@249@01 gsize@203@01)))
      (and (<= half@208@01 i@249@01) (< i@249@01 gsize@203@01))))
  :pattern ((Seq_index
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@210@01)))))))
    i@249@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/third_party/max-two-range.vpr@206@27@206@131-aux|)))
(pop) ; 6
(pop) ; 5
; Joined path conditions
(assert (forall ((r $Ref)) (!
  (=>
    (ite
      (and
        (img@217@01 r)
        (Seq_contains (Seq_range 0 gsize@203@01) (inv@216@01 r)))
      (< $Perm.No (/ (to_real 1) (to_real gsize@203@01)))
      false)
    (=
      ($FVF.lookup_Integer_value (as sm@224@01  $FVF<Integer_value>) r)
      ($FVF.lookup_Integer_value ($SortWrappers.$SnapTo$FVF<Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@210@01)))))))))))))) r)))
  :pattern (($FVF.lookup_Integer_value (as sm@224@01  $FVF<Integer_value>) r))
  :pattern (($FVF.lookup_Integer_value ($SortWrappers.$SnapTo$FVF<Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@210@01)))))))))))))) r))
  :qid |qp.fvfValDef19|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@222@01 r) (Seq_contains (Seq_range 0 gsize@203@01) (inv@221@01 r)))
    (=
      ($FVF.lookup_Integer_value (as sm@224@01  $FVF<Integer_value>) r)
      ($FVF.lookup_Integer_value ($SortWrappers.$SnapTo$FVF<Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@210@01)))))))))))))))) r)))
  :pattern (($FVF.lookup_Integer_value (as sm@224@01  $FVF<Integer_value>) r))
  :pattern (($FVF.lookup_Integer_value ($SortWrappers.$SnapTo$FVF<Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@210@01)))))))))))))))) r))
  :qid |qp.fvfValDef20|)))
(assert (=>
  (= tid@204@01 0)
  (forall ((i@249@01 Int)) (!
    (and
      (or (<= half@208@01 i@249@01) (not (<= half@208@01 i@249@01)))
      (or
        (not (and (<= half@208@01 i@249@01) (< i@249@01 gsize@203@01)))
        (and (<= half@208@01 i@249@01) (< i@249@01 gsize@203@01))))
    :pattern ((Seq_index
      ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@210@01)))))))
      i@249@01))
    :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/third_party/max-two-range.vpr@206@27@206@131-aux|))))
(push) ; 5
(assert (not (=>
  (= tid@204@01 0)
  (forall ((i@249@01 Int)) (!
    (=>
      (and (<= half@208@01 i@249@01) (< i@249@01 gsize@203@01))
      (>=
        ($FVF.lookup_Integer_value (as sm@224@01  $FVF<Integer_value>) (Seq_index
          ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@210@01)))))))))
          1))
        ($FVF.lookup_Integer_value (as sm@224@01  $FVF<Integer_value>) (Seq_index
          ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@210@01)))))))
          i@249@01))))
    :pattern ((Seq_index
      ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@210@01)))))))
      i@249@01))
    :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/third_party/max-two-range.vpr@206@27@206@131|)))))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(assert (=>
  (= tid@204@01 0)
  (forall ((i@249@01 Int)) (!
    (=>
      (and (<= half@208@01 i@249@01) (< i@249@01 gsize@203@01))
      (>=
        ($FVF.lookup_Integer_value (as sm@224@01  $FVF<Integer_value>) (Seq_index
          ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@210@01)))))))))
          1))
        ($FVF.lookup_Integer_value (as sm@224@01  $FVF<Integer_value>) (Seq_index
          ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@210@01)))))))
          i@249@01))))
    :pattern ((Seq_index
      ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@210@01)))))))
      i@249@01))
    :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/third_party/max-two-range.vpr@206@27@206@131|))))
(pop) ; 4
(pop) ; 3
(push) ; 3
; [else-branch: 181 | tid@204@01 != 0]
(assert (not (= tid@204@01 0)))
; [eval] tid == 0
; [then-branch: 189 | tid@204@01 == 0 | dead]
; [else-branch: 189 | tid@204@01 != 0 | live]
(push) ; 4
; [else-branch: 189 | tid@204@01 != 0]
; [eval] tid == 0 ==> (forall i: Int :: { this.src[i] } 0 <= i && i < half ==> this.dst[0].Integer_value >= this.src[i].Integer_value)
; [eval] tid == 0
(push) ; 5
; [then-branch: 190 | tid@204@01 == 0 | dead]
; [else-branch: 190 | tid@204@01 != 0 | live]
(push) ; 6
; [else-branch: 190 | tid@204@01 != 0]
(pop) ; 6
(pop) ; 5
; Joined path conditions
; [eval] tid == 0 ==> (forall i: Int :: { this.src[i] } half <= i && i < gsize ==> this.dst[1].Integer_value >= this.src[i].Integer_value)
; [eval] tid == 0
(push) ; 5
; [then-branch: 191 | tid@204@01 == 0 | dead]
; [else-branch: 191 | tid@204@01 != 0 | live]
(push) ; 6
; [else-branch: 191 | tid@204@01 != 0]
(pop) ; 6
(pop) ; 5
; Joined path conditions
(pop) ; 4
(pop) ; 3
(pop) ; 2
(pop) ; 1
