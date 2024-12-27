(get-info :version)
; (:version "4.12.1")
; Started: 2024-12-27 02:00:05
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
(declare-sort Set<Int> 0)
(declare-sort Set<$Ref> 0)
(declare-sort Set<$Snap> 0)
(declare-sort VCTArray<Ref> 0)
(declare-sort $FVF<item> 0)
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
(declare-fun $SortWrappers.VCTArray<Ref>To$Snap (VCTArray<Ref>) $Snap)
(declare-fun $SortWrappers.$SnapToVCTArray<Ref> ($Snap) VCTArray<Ref>)
(assert (forall ((x VCTArray<Ref>)) (!
    (= x ($SortWrappers.$SnapToVCTArray<Ref>($SortWrappers.VCTArray<Ref>To$Snap x)))
    :pattern (($SortWrappers.VCTArray<Ref>To$Snap x))
    :qid |$Snap.$SnapToVCTArray<Ref>To$Snap|
    )))
(assert (forall ((x $Snap)) (!
    (= x ($SortWrappers.VCTArray<Ref>To$Snap($SortWrappers.$SnapToVCTArray<Ref> x)))
    :pattern (($SortWrappers.$SnapToVCTArray<Ref> x))
    :qid |$Snap.VCTArray<Ref>To$SnapToVCTArray<Ref>|
    )))
; Declaring additional sort wrappers
(declare-fun $SortWrappers.$FVF<item>To$Snap ($FVF<item>) $Snap)
(declare-fun $SortWrappers.$SnapTo$FVF<item> ($Snap) $FVF<item>)
(assert (forall ((x $FVF<item>)) (!
    (= x ($SortWrappers.$SnapTo$FVF<item>($SortWrappers.$FVF<item>To$Snap x)))
    :pattern (($SortWrappers.$FVF<item>To$Snap x))
    :qid |$Snap.$SnapTo$FVF<item>To$Snap|
    )))
(assert (forall ((x $Snap)) (!
    (= x ($SortWrappers.$FVF<item>To$Snap($SortWrappers.$SnapTo$FVF<item> x)))
    :pattern (($SortWrappers.$SnapTo$FVF<item> x))
    :qid |$Snap.$FVF<item>To$SnapTo$FVF<item>|
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
(declare-fun loc<Ref> (VCTArray<Ref> Int) $Ref)
(declare-fun alen<Int> (VCTArray<Ref>) Int)
; /field_value_functions_declarations.smt2 [item: Int]
(declare-fun $FVF.domain_item ($FVF<item>) Set<$Ref>)
(declare-fun $FVF.lookup_item ($FVF<item> $Ref) Int)
(declare-fun $FVF.after_item ($FVF<item> $FVF<item>) Bool)
(declare-fun $FVF.loc_item (Int $Ref) Bool)
(declare-fun $FVF.perm_item ($FPM $Ref) $Perm)
(declare-const $fvfTOP_item $FVF<item>)
; Declaring symbols related to program functions (from program analysis)
(declare-fun sumContrib ($Snap VCTArray<Ref> Int $Perm) Int)
(declare-fun sumContrib%limited ($Snap VCTArray<Ref> Int $Perm) Int)
(declare-fun sumContrib%stateless (VCTArray<Ref> Int $Perm) Bool)
(declare-fun sumContrib%precondition ($Snap VCTArray<Ref> Int $Perm) Bool)
(declare-fun seqToSeqHelper_wild ($Snap Seq<$Ref> Int) Seq<Int>)
(declare-fun seqToSeqHelper_wild%limited ($Snap Seq<$Ref> Int) Seq<Int>)
(declare-fun seqToSeqHelper_wild%stateless (Seq<$Ref> Int) Bool)
(declare-fun seqToSeqHelper_wild%precondition ($Snap Seq<$Ref> Int) Bool)
(declare-fun seqToSeqHelper_frac ($Snap Seq<$Ref> Int) Seq<Int>)
(declare-fun seqToSeqHelper_frac%limited ($Snap Seq<$Ref> Int) Seq<Int>)
(declare-fun seqToSeqHelper_frac%stateless (Seq<$Ref> Int) Bool)
(declare-fun seqToSeqHelper_frac%precondition ($Snap Seq<$Ref> Int) Bool)
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
(assert (forall ((a VCTArray<Ref>)) (!
  (>= (alen<Int> a) 0)
  :pattern ((alen<Int> a))
  :qid |prog.len_nonneg|)))
(assert (forall ((a VCTArray<Ref>) (i Int) (j Int)) (!
  (=>
    (and
      (>= i 0)
      (and
        (>= j 0)
        (and (< i (alen<Int> a)) (and (< j (alen<Int> a)) (not (= i j))))))
    (not (= (loc<Ref> a i) (loc<Ref> a j))))
  :pattern ((loc<Ref> a i) (loc<Ref> a j))
  :qid |prog.loc_inject|)))
; /field_value_functions_axioms.smt2 [item: Int]
(assert (forall ((vs $FVF<item>) (ws $FVF<item>)) (!
    (=>
      (and
        (Set_equal ($FVF.domain_item vs) ($FVF.domain_item ws))
        (forall ((x $Ref)) (!
          (=>
            (Set_in x ($FVF.domain_item vs))
            (= ($FVF.lookup_item vs x) ($FVF.lookup_item ws x)))
          :pattern (($FVF.lookup_item vs x) ($FVF.lookup_item ws x))
          :qid |qp.$FVF<item>-eq-inner|
          )))
      (= vs ws))
    :pattern (($SortWrappers.$FVF<item>To$Snap vs)
              ($SortWrappers.$FVF<item>To$Snap ws)
              )
    :qid |qp.$FVF<item>-eq-outer|
    )))
(assert (forall ((r $Ref) (pm $FPM)) (!
    ($Perm.isValidVar ($FVF.perm_item pm r))
    :pattern (($FVF.perm_item pm r)))))
(assert (forall ((r $Ref) (f Int)) (!
    (= ($FVF.loc_item f r) true)
    :pattern (($FVF.loc_item f r)))))
; End preamble
; ------------------------------------------------------------
; State saturation: after preamble
(set-option :timeout 100)
(check-sat)
; unknown
; ------------------------------------------------------------
; Begin function- and predicate-related preamble
; Declaring symbols related to program functions (from verification)
(declare-fun $k@11@00 () $Perm)
(declare-fun inv@12@00 ($Snap VCTArray<Ref> Int $Perm $Ref) Int)
(declare-fun img@13@00 ($Snap VCTArray<Ref> Int $Perm $Ref) Bool)
(declare-fun $k@15@00 () $Perm)
(declare-fun inv@16@00 ($Snap VCTArray<Ref> Int $Perm $Ref) Int)
(declare-fun img@17@00 ($Snap VCTArray<Ref> Int $Perm $Ref) Bool)
(declare-fun sm@18@00 ($Snap VCTArray<Ref> Int $Perm) $FVF<item>)
(declare-fun $k@22@00 () $Perm)
(declare-fun inv@23@00 ($Snap Seq<$Ref> Int $Ref) Int)
(declare-fun img@24@00 ($Snap Seq<$Ref> Int $Ref) Bool)
(declare-fun $k@30@00 () $Perm)
(declare-fun inv@31@00 ($Snap Seq<$Ref> Int $Ref) Int)
(declare-fun img@32@00 ($Snap Seq<$Ref> Int $Ref) Bool)
(declare-fun sm@33@00 ($Snap Seq<$Ref> Int) $FVF<item>)
(declare-fun inv@38@00 ($Snap Seq<$Ref> Int $Ref) Int)
(declare-fun img@39@00 ($Snap Seq<$Ref> Int $Ref) Bool)
(declare-fun inv@45@00 ($Snap Seq<$Ref> Int $Ref) Int)
(declare-fun img@46@00 ($Snap Seq<$Ref> Int $Ref) Bool)
(declare-fun sm@47@00 ($Snap Seq<$Ref> Int) $FVF<item>)
(assert (forall ((s@$ $Snap) (A@0@00 VCTArray<Ref>) (i@1@00 Int) (P@2@00 $Perm)) (!
  (=
    (sumContrib%limited s@$ A@0@00 i@1@00 P@2@00)
    (sumContrib s@$ A@0@00 i@1@00 P@2@00))
  :pattern ((sumContrib s@$ A@0@00 i@1@00 P@2@00))
  :qid |quant-u-24084|)))
(assert (forall ((s@$ $Snap) (A@0@00 VCTArray<Ref>) (i@1@00 Int) (P@2@00 $Perm)) (!
  (sumContrib%stateless A@0@00 i@1@00 P@2@00)
  :pattern ((sumContrib%limited s@$ A@0@00 i@1@00 P@2@00))
  :qid |quant-u-24085|)))
(assert (forall ((s@$ $Snap) (A@0@00 VCTArray<Ref>) (i@1@00 Int) (P@2@00 $Perm)) (!
  (and
    (forall ((j@10@00 Int)) (!
      (=>
        (and
          (and (<= 0 j@10@00) (< j@10@00 (alen<Int> A@0@00)))
          (< $Perm.No $k@11@00))
        (and
          (=
            (inv@12@00 s@$ A@0@00 i@1@00 P@2@00 (loc<Ref> A@0@00 j@10@00))
            j@10@00)
          (img@13@00 s@$ A@0@00 i@1@00 P@2@00 (loc<Ref> A@0@00 j@10@00))))
      :pattern ((loc<Ref> A@0@00 j@10@00))
      :qid |quant-u-24091|))
    (forall ((r $Ref)) (!
      (=>
        (and
          (img@13@00 s@$ A@0@00 i@1@00 P@2@00 r)
          (and
            (and
              (<= 0 (inv@12@00 s@$ A@0@00 i@1@00 P@2@00 r))
              (< (inv@12@00 s@$ A@0@00 i@1@00 P@2@00 r) (alen<Int> A@0@00)))
            (< $Perm.No $k@11@00)))
        (= (loc<Ref> A@0@00 (inv@12@00 s@$ A@0@00 i@1@00 P@2@00 r)) r))
      :pattern ((inv@12@00 s@$ A@0@00 i@1@00 P@2@00 r))
      :qid |item-fctOfInv|))
    (forall ((j@14@00 Int)) (!
      (=>
        (and
          (and (<= 0 j@14@00) (< j@14@00 (alen<Int> A@0@00)))
          (< $Perm.No $k@15@00))
        (and
          (=
            (inv@16@00 s@$ A@0@00 i@1@00 P@2@00 (loc<Ref> A@0@00 j@14@00))
            j@14@00)
          (img@17@00 s@$ A@0@00 i@1@00 P@2@00 (loc<Ref> A@0@00 j@14@00))))
      :pattern ((loc<Ref> A@0@00 j@14@00))
      :qid |item-invOfFct|))
    (forall ((r $Ref)) (!
      (=>
        (and
          (img@17@00 s@$ A@0@00 i@1@00 P@2@00 r)
          (and
            (and
              (<= 0 (inv@16@00 s@$ A@0@00 i@1@00 P@2@00 r))
              (< (inv@16@00 s@$ A@0@00 i@1@00 P@2@00 r) (alen<Int> A@0@00)))
            (< $Perm.No $k@15@00)))
        (= (loc<Ref> A@0@00 (inv@16@00 s@$ A@0@00 i@1@00 P@2@00 r)) r))
      :pattern ((inv@16@00 s@$ A@0@00 i@1@00 P@2@00 r))
      :qid |item-fctOfInv|))
    (forall ((r $Ref)) (!
      (and
        (=>
          (Set_in r ($FVF.domain_item (sm@18@00 s@$ A@0@00 i@1@00 P@2@00)))
          (and
            (and
              (<= 0 (inv@16@00 s@$ A@0@00 i@1@00 P@2@00 r))
              (< (inv@16@00 s@$ A@0@00 i@1@00 P@2@00 r) (alen<Int> A@0@00)))
            (< $Perm.No $k@15@00)
            (img@17@00 s@$ A@0@00 i@1@00 P@2@00 r)))
        (=>
          (and
            (and
              (<= 0 (inv@16@00 s@$ A@0@00 i@1@00 P@2@00 r))
              (< (inv@16@00 s@$ A@0@00 i@1@00 P@2@00 r) (alen<Int> A@0@00)))
            (< $Perm.No $k@15@00)
            (img@17@00 s@$ A@0@00 i@1@00 P@2@00 r))
          (Set_in r ($FVF.domain_item (sm@18@00 s@$ A@0@00 i@1@00 P@2@00)))))
      :pattern ((Set_in r ($FVF.domain_item (sm@18@00 s@$ A@0@00 i@1@00 P@2@00))))
      :qid |qp.fvfDomDef1|))
    (forall ((r $Ref)) (!
      (=>
        (and
          (and
            (and
              (<= 0 (inv@16@00 s@$ A@0@00 i@1@00 P@2@00 r))
              (< (inv@16@00 s@$ A@0@00 i@1@00 P@2@00 r) (alen<Int> A@0@00)))
            (< $Perm.No $k@15@00)
            (img@17@00 s@$ A@0@00 i@1@00 P@2@00 r))
          (ite
            (and
              (img@13@00 s@$ A@0@00 i@1@00 P@2@00 r)
              (and
                (<= 0 (inv@12@00 s@$ A@0@00 i@1@00 P@2@00 r))
                (< (inv@12@00 s@$ A@0@00 i@1@00 P@2@00 r) (alen<Int> A@0@00))))
            (< $Perm.No $k@11@00)
            false))
        (=
          ($FVF.lookup_item (sm@18@00 s@$ A@0@00 i@1@00 P@2@00) r)
          ($FVF.lookup_item ($SortWrappers.$SnapTo$FVF<item> ($Snap.second ($Snap.second ($Snap.second ($Snap.second s@$))))) r)))
      :pattern (($FVF.lookup_item (sm@18@00 s@$ A@0@00 i@1@00 P@2@00) r))
      :pattern (($FVF.lookup_item ($SortWrappers.$SnapTo$FVF<item> ($Snap.second ($Snap.second ($Snap.second ($Snap.second s@$))))) r))
      :qid |qp.fvfValDef0|))
    ($Perm.isReadVar $k@11@00)
    ($Perm.isReadVar $k@15@00)
    (=>
      (sumContrib%precondition s@$ A@0@00 i@1@00 P@2@00)
      (=
        (sumContrib s@$ A@0@00 i@1@00 P@2@00)
        (ite
          (= i@1@00 (alen<Int> A@0@00))
          0
          (+
            ($FVF.lookup_item ($SortWrappers.$SnapTo$FVF<item> ($Snap.second ($Snap.second ($Snap.second ($Snap.second s@$))))) (loc<Ref> A@0@00 i@1@00))
            (sumContrib%limited ($Snap.combine
              $Snap.unit
              ($Snap.combine
                $Snap.unit
                ($Snap.combine
                  $Snap.unit
                  ($Snap.combine
                    $Snap.unit
                    ($SortWrappers.$FVF<item>To$Snap (sm@18@00 s@$ A@0@00 i@1@00 P@2@00)))))) A@0@00 (+
              i@1@00
              1) P@2@00))))))
  :pattern ((sumContrib s@$ A@0@00 i@1@00 P@2@00))
  :qid |quant-u-24094|)))
(assert (forall ((s@$ $Snap) (A@0@00 VCTArray<Ref>) (i@1@00 Int) (P@2@00 $Perm)) (!
  (=>
    (sumContrib%precondition s@$ A@0@00 i@1@00 P@2@00)
    (ite
      (= i@1@00 (alen<Int> A@0@00))
      true
      (sumContrib%precondition ($Snap.combine
        $Snap.unit
        ($Snap.combine
          $Snap.unit
          ($Snap.combine
            $Snap.unit
            ($Snap.combine
              $Snap.unit
              ($SortWrappers.$FVF<item>To$Snap (sm@18@00 s@$ A@0@00 i@1@00 P@2@00)))))) A@0@00 (+
        i@1@00
        1) P@2@00)))
  :pattern ((sumContrib s@$ A@0@00 i@1@00 P@2@00))
  :qid |quant-u-24095|)))
(assert (forall ((s@$ $Snap) (xs@4@00 Seq<$Ref>) (i@5@00 Int)) (!
  (=
    (seqToSeqHelper_wild%limited s@$ xs@4@00 i@5@00)
    (seqToSeqHelper_wild s@$ xs@4@00 i@5@00))
  :pattern ((seqToSeqHelper_wild s@$ xs@4@00 i@5@00))
  :qid |quant-u-24086|)))
(assert (forall ((s@$ $Snap) (xs@4@00 Seq<$Ref>) (i@5@00 Int)) (!
  (seqToSeqHelper_wild%stateless xs@4@00 i@5@00)
  :pattern ((seqToSeqHelper_wild%limited s@$ xs@4@00 i@5@00))
  :qid |quant-u-24087|)))
(assert (forall ((s@$ $Snap) (xs@4@00 Seq<$Ref>) (i@5@00 Int)) (!
  (let ((result@6@00 (seqToSeqHelper_wild%limited s@$ xs@4@00 i@5@00))) (and
    (forall ((j@21@00 Int)) (!
      (=>
        (and
          (and (<= 0 j@21@00) (< j@21@00 (Seq_length xs@4@00)))
          (< $Perm.No $k@22@00))
        (and
          (= (inv@23@00 s@$ xs@4@00 i@5@00 (Seq_index xs@4@00 j@21@00)) j@21@00)
          (img@24@00 s@$ xs@4@00 i@5@00 (Seq_index xs@4@00 j@21@00))))
      :pattern ((Seq_index xs@4@00 j@21@00))
      :qid |quant-u-24097|))
    (forall ((r $Ref)) (!
      (=>
        (and
          (img@24@00 s@$ xs@4@00 i@5@00 r)
          (and
            (and
              (<= 0 (inv@23@00 s@$ xs@4@00 i@5@00 r))
              (< (inv@23@00 s@$ xs@4@00 i@5@00 r) (Seq_length xs@4@00)))
            (< $Perm.No $k@22@00)))
        (= (Seq_index xs@4@00 (inv@23@00 s@$ xs@4@00 i@5@00 r)) r))
      :pattern ((inv@23@00 s@$ xs@4@00 i@5@00 r))
      :qid |item-fctOfInv|))
    ($Perm.isReadVar $k@22@00)
    (=>
      (seqToSeqHelper_wild%precondition s@$ xs@4@00 i@5@00)
      (and
        (= (Seq_length result@6@00) (- (Seq_length xs@4@00) i@5@00))
        (forall ((j Int)) (!
          (=>
            (and (<= i@5@00 j) (< j (Seq_length xs@4@00)))
            (=
              (Seq_index result@6@00 (- j i@5@00))
              ($FVF.lookup_item ($SortWrappers.$SnapTo$FVF<item> ($Snap.first ($Snap.second ($Snap.second ($Snap.second s@$))))) (Seq_index
                xs@4@00
                j))))
          :pattern ((Seq_index xs@4@00 j))
          ))))))
  :pattern ((seqToSeqHelper_wild%limited s@$ xs@4@00 i@5@00))
  :qid |quant-u-24098|)))
(assert (forall ((s@$ $Snap) (xs@4@00 Seq<$Ref>) (i@5@00 Int)) (!
  (let ((result@6@00 (seqToSeqHelper_wild%limited s@$ xs@4@00 i@5@00))) true)
  :pattern ((seqToSeqHelper_wild%limited s@$ xs@4@00 i@5@00))
  :qid |quant-u-24099|)))
(assert (forall ((s@$ $Snap) (xs@4@00 Seq<$Ref>) (i@5@00 Int)) (!
  (let ((result@6@00 (seqToSeqHelper_wild%limited s@$ xs@4@00 i@5@00))) true)
  :pattern ((seqToSeqHelper_wild%limited s@$ xs@4@00 i@5@00))
  :qid |quant-u-24100|)))
(assert (forall ((s@$ $Snap) (xs@4@00 Seq<$Ref>) (i@5@00 Int)) (!
  (and
    (forall ((j@21@00 Int)) (!
      (=>
        (and
          (and (<= 0 j@21@00) (< j@21@00 (Seq_length xs@4@00)))
          (< $Perm.No $k@22@00))
        (and
          (= (inv@23@00 s@$ xs@4@00 i@5@00 (Seq_index xs@4@00 j@21@00)) j@21@00)
          (img@24@00 s@$ xs@4@00 i@5@00 (Seq_index xs@4@00 j@21@00))))
      :pattern ((Seq_index xs@4@00 j@21@00))
      :qid |quant-u-24097|))
    (forall ((r $Ref)) (!
      (=>
        (and
          (img@24@00 s@$ xs@4@00 i@5@00 r)
          (and
            (and
              (<= 0 (inv@23@00 s@$ xs@4@00 i@5@00 r))
              (< (inv@23@00 s@$ xs@4@00 i@5@00 r) (Seq_length xs@4@00)))
            (< $Perm.No $k@22@00)))
        (= (Seq_index xs@4@00 (inv@23@00 s@$ xs@4@00 i@5@00 r)) r))
      :pattern ((inv@23@00 s@$ xs@4@00 i@5@00 r))
      :qid |item-fctOfInv|))
    (forall ((j@29@00 Int)) (!
      (=>
        (and
          (and (<= 0 j@29@00) (< j@29@00 (Seq_length xs@4@00)))
          (< $Perm.No $k@30@00))
        (and
          (= (inv@31@00 s@$ xs@4@00 i@5@00 (Seq_index xs@4@00 j@29@00)) j@29@00)
          (img@32@00 s@$ xs@4@00 i@5@00 (Seq_index xs@4@00 j@29@00))))
      :pattern ((Seq_index xs@4@00 j@29@00))
      :qid |item-invOfFct|))
    (forall ((r $Ref)) (!
      (=>
        (and
          (img@32@00 s@$ xs@4@00 i@5@00 r)
          (and
            (and
              (<= 0 (inv@31@00 s@$ xs@4@00 i@5@00 r))
              (< (inv@31@00 s@$ xs@4@00 i@5@00 r) (Seq_length xs@4@00)))
            (< $Perm.No $k@30@00)))
        (= (Seq_index xs@4@00 (inv@31@00 s@$ xs@4@00 i@5@00 r)) r))
      :pattern ((inv@31@00 s@$ xs@4@00 i@5@00 r))
      :qid |item-fctOfInv|))
    (forall ((r $Ref)) (!
      (and
        (=>
          (Set_in r ($FVF.domain_item (sm@33@00 s@$ xs@4@00 i@5@00)))
          (and
            (and
              (<= 0 (inv@31@00 s@$ xs@4@00 i@5@00 r))
              (< (inv@31@00 s@$ xs@4@00 i@5@00 r) (Seq_length xs@4@00)))
            (< $Perm.No $k@30@00)
            (img@32@00 s@$ xs@4@00 i@5@00 r)))
        (=>
          (and
            (and
              (<= 0 (inv@31@00 s@$ xs@4@00 i@5@00 r))
              (< (inv@31@00 s@$ xs@4@00 i@5@00 r) (Seq_length xs@4@00)))
            (< $Perm.No $k@30@00)
            (img@32@00 s@$ xs@4@00 i@5@00 r))
          (Set_in r ($FVF.domain_item (sm@33@00 s@$ xs@4@00 i@5@00)))))
      :pattern ((Set_in r ($FVF.domain_item (sm@33@00 s@$ xs@4@00 i@5@00))))
      :qid |qp.fvfDomDef3|))
    (forall ((r $Ref)) (!
      (=>
        (and
          (and
            (and
              (<= 0 (inv@31@00 s@$ xs@4@00 i@5@00 r))
              (< (inv@31@00 s@$ xs@4@00 i@5@00 r) (Seq_length xs@4@00)))
            (< $Perm.No $k@30@00)
            (img@32@00 s@$ xs@4@00 i@5@00 r))
          (ite
            (and
              (img@24@00 s@$ xs@4@00 i@5@00 r)
              (and
                (<= 0 (inv@23@00 s@$ xs@4@00 i@5@00 r))
                (< (inv@23@00 s@$ xs@4@00 i@5@00 r) (Seq_length xs@4@00))))
            (< $Perm.No $k@22@00)
            false))
        (=
          ($FVF.lookup_item (sm@33@00 s@$ xs@4@00 i@5@00) r)
          ($FVF.lookup_item ($SortWrappers.$SnapTo$FVF<item> ($Snap.first ($Snap.second ($Snap.second ($Snap.second s@$))))) r)))
      :pattern (($FVF.lookup_item (sm@33@00 s@$ xs@4@00 i@5@00) r))
      :pattern (($FVF.lookup_item ($SortWrappers.$SnapTo$FVF<item> ($Snap.first ($Snap.second ($Snap.second ($Snap.second s@$))))) r))
      :qid |qp.fvfValDef2|))
    ($Perm.isReadVar $k@22@00)
    ($Perm.isReadVar $k@30@00)
    (=>
      (seqToSeqHelper_wild%precondition s@$ xs@4@00 i@5@00)
      (=
        (seqToSeqHelper_wild s@$ xs@4@00 i@5@00)
        (Seq_append
          (Seq_singleton ($FVF.lookup_item ($SortWrappers.$SnapTo$FVF<item> ($Snap.first ($Snap.second ($Snap.second ($Snap.second s@$))))) (Seq_index
            xs@4@00
            i@5@00)))
          (seqToSeqHelper_wild%limited ($Snap.combine
            $Snap.unit
            ($Snap.combine
              $Snap.unit
              ($Snap.combine
                $Snap.unit
                ($Snap.combine
                  ($SortWrappers.$FVF<item>To$Snap (sm@33@00 s@$ xs@4@00 i@5@00))
                  $Snap.unit)))) xs@4@00 (+ i@5@00 1))))))
  :pattern ((seqToSeqHelper_wild s@$ xs@4@00 i@5@00))
  :qid |quant-u-24103|)))
(assert (forall ((s@$ $Snap) (xs@4@00 Seq<$Ref>) (i@5@00 Int)) (!
  (=>
    (seqToSeqHelper_wild%precondition s@$ xs@4@00 i@5@00)
    (seqToSeqHelper_wild%precondition ($Snap.combine
      $Snap.unit
      ($Snap.combine
        $Snap.unit
        ($Snap.combine
          $Snap.unit
          ($Snap.combine
            ($SortWrappers.$FVF<item>To$Snap (sm@33@00 s@$ xs@4@00 i@5@00))
            $Snap.unit)))) xs@4@00 (+ i@5@00 1)))
  :pattern ((seqToSeqHelper_wild s@$ xs@4@00 i@5@00))
  :qid |quant-u-24104|)))
(assert (forall ((s@$ $Snap) (xs@7@00 Seq<$Ref>) (i@8@00 Int)) (!
  (=
    (seqToSeqHelper_frac%limited s@$ xs@7@00 i@8@00)
    (seqToSeqHelper_frac s@$ xs@7@00 i@8@00))
  :pattern ((seqToSeqHelper_frac s@$ xs@7@00 i@8@00))
  :qid |quant-u-24088|)))
(assert (forall ((s@$ $Snap) (xs@7@00 Seq<$Ref>) (i@8@00 Int)) (!
  (seqToSeqHelper_frac%stateless xs@7@00 i@8@00)
  :pattern ((seqToSeqHelper_frac%limited s@$ xs@7@00 i@8@00))
  :qid |quant-u-24089|)))
(assert (forall ((s@$ $Snap) (xs@7@00 Seq<$Ref>) (i@8@00 Int)) (!
  (let ((result@9@00 (seqToSeqHelper_frac%limited s@$ xs@7@00 i@8@00))) (and
    (forall ((j@37@00 Int)) (!
      (=>
        (and (<= 0 j@37@00) (< j@37@00 (Seq_length xs@7@00)))
        (and
          (= (inv@38@00 s@$ xs@7@00 i@8@00 (Seq_index xs@7@00 j@37@00)) j@37@00)
          (img@39@00 s@$ xs@7@00 i@8@00 (Seq_index xs@7@00 j@37@00))))
      :pattern ((Seq_index xs@7@00 j@37@00))
      :qid |quant-u-24106|))
    (forall ((r $Ref)) (!
      (=>
        (and
          (img@39@00 s@$ xs@7@00 i@8@00 r)
          (and
            (<= 0 (inv@38@00 s@$ xs@7@00 i@8@00 r))
            (< (inv@38@00 s@$ xs@7@00 i@8@00 r) (Seq_length xs@7@00))))
        (= (Seq_index xs@7@00 (inv@38@00 s@$ xs@7@00 i@8@00 r)) r))
      :pattern ((inv@38@00 s@$ xs@7@00 i@8@00 r))
      :qid |item-fctOfInv|))
    (=>
      (seqToSeqHelper_frac%precondition s@$ xs@7@00 i@8@00)
      (and
        (= (Seq_length result@9@00) (- (Seq_length xs@7@00) i@8@00))
        (forall ((j Int)) (!
          (=>
            (and (<= i@8@00 j) (< j (Seq_length xs@7@00)))
            (=
              (Seq_index result@9@00 (- j i@8@00))
              ($FVF.lookup_item ($SortWrappers.$SnapTo$FVF<item> ($Snap.first ($Snap.second ($Snap.second ($Snap.second s@$))))) (Seq_index
                xs@7@00
                j))))
          :pattern ((Seq_index xs@7@00 j))
          ))))))
  :pattern ((seqToSeqHelper_frac%limited s@$ xs@7@00 i@8@00))
  :qid |quant-u-24107|)))
(assert (forall ((s@$ $Snap) (xs@7@00 Seq<$Ref>) (i@8@00 Int)) (!
  (let ((result@9@00 (seqToSeqHelper_frac%limited s@$ xs@7@00 i@8@00))) true)
  :pattern ((seqToSeqHelper_frac%limited s@$ xs@7@00 i@8@00))
  :qid |quant-u-24108|)))
(assert (forall ((s@$ $Snap) (xs@7@00 Seq<$Ref>) (i@8@00 Int)) (!
  (let ((result@9@00 (seqToSeqHelper_frac%limited s@$ xs@7@00 i@8@00))) true)
  :pattern ((seqToSeqHelper_frac%limited s@$ xs@7@00 i@8@00))
  :qid |quant-u-24109|)))
(assert (forall ((s@$ $Snap) (xs@7@00 Seq<$Ref>) (i@8@00 Int)) (!
  (and
    (forall ((j@37@00 Int)) (!
      (=>
        (and (<= 0 j@37@00) (< j@37@00 (Seq_length xs@7@00)))
        (and
          (= (inv@38@00 s@$ xs@7@00 i@8@00 (Seq_index xs@7@00 j@37@00)) j@37@00)
          (img@39@00 s@$ xs@7@00 i@8@00 (Seq_index xs@7@00 j@37@00))))
      :pattern ((Seq_index xs@7@00 j@37@00))
      :qid |quant-u-24106|))
    (forall ((r $Ref)) (!
      (=>
        (and
          (img@39@00 s@$ xs@7@00 i@8@00 r)
          (and
            (<= 0 (inv@38@00 s@$ xs@7@00 i@8@00 r))
            (< (inv@38@00 s@$ xs@7@00 i@8@00 r) (Seq_length xs@7@00))))
        (= (Seq_index xs@7@00 (inv@38@00 s@$ xs@7@00 i@8@00 r)) r))
      :pattern ((inv@38@00 s@$ xs@7@00 i@8@00 r))
      :qid |item-fctOfInv|))
    (forall ((j@44@00 Int)) (!
      (=>
        (and (<= 0 j@44@00) (< j@44@00 (Seq_length xs@7@00)))
        (and
          (= (inv@45@00 s@$ xs@7@00 i@8@00 (Seq_index xs@7@00 j@44@00)) j@44@00)
          (img@46@00 s@$ xs@7@00 i@8@00 (Seq_index xs@7@00 j@44@00))))
      :pattern ((Seq_index xs@7@00 j@44@00))
      :qid |item-invOfFct|))
    (forall ((r $Ref)) (!
      (=>
        (and
          (img@46@00 s@$ xs@7@00 i@8@00 r)
          (and
            (<= 0 (inv@45@00 s@$ xs@7@00 i@8@00 r))
            (< (inv@45@00 s@$ xs@7@00 i@8@00 r) (Seq_length xs@7@00))))
        (= (Seq_index xs@7@00 (inv@45@00 s@$ xs@7@00 i@8@00 r)) r))
      :pattern ((inv@45@00 s@$ xs@7@00 i@8@00 r))
      :qid |item-fctOfInv|))
    (forall ((r $Ref)) (!
      (and
        (=>
          (Set_in r ($FVF.domain_item (sm@47@00 s@$ xs@7@00 i@8@00)))
          (and
            (and
              (<= 0 (inv@45@00 s@$ xs@7@00 i@8@00 r))
              (< (inv@45@00 s@$ xs@7@00 i@8@00 r) (Seq_length xs@7@00)))
            (img@46@00 s@$ xs@7@00 i@8@00 r)))
        (=>
          (and
            (and
              (<= 0 (inv@45@00 s@$ xs@7@00 i@8@00 r))
              (< (inv@45@00 s@$ xs@7@00 i@8@00 r) (Seq_length xs@7@00)))
            (img@46@00 s@$ xs@7@00 i@8@00 r))
          (Set_in r ($FVF.domain_item (sm@47@00 s@$ xs@7@00 i@8@00)))))
      :pattern ((Set_in r ($FVF.domain_item (sm@47@00 s@$ xs@7@00 i@8@00))))
      :qid |qp.fvfDomDef5|))
    (forall ((r $Ref)) (!
      (=>
        (and
          (and
            (and
              (<= 0 (inv@45@00 s@$ xs@7@00 i@8@00 r))
              (< (inv@45@00 s@$ xs@7@00 i@8@00 r) (Seq_length xs@7@00)))
            (img@46@00 s@$ xs@7@00 i@8@00 r))
          (and
            (img@39@00 s@$ xs@7@00 i@8@00 r)
            (and
              (<= 0 (inv@38@00 s@$ xs@7@00 i@8@00 r))
              (< (inv@38@00 s@$ xs@7@00 i@8@00 r) (Seq_length xs@7@00)))))
        (=
          ($FVF.lookup_item (sm@47@00 s@$ xs@7@00 i@8@00) r)
          ($FVF.lookup_item ($SortWrappers.$SnapTo$FVF<item> ($Snap.first ($Snap.second ($Snap.second ($Snap.second s@$))))) r)))
      :pattern (($FVF.lookup_item (sm@47@00 s@$ xs@7@00 i@8@00) r))
      :pattern (($FVF.lookup_item ($SortWrappers.$SnapTo$FVF<item> ($Snap.first ($Snap.second ($Snap.second ($Snap.second s@$))))) r))
      :qid |qp.fvfValDef4|))
    (=>
      (seqToSeqHelper_frac%precondition s@$ xs@7@00 i@8@00)
      (=
        (seqToSeqHelper_frac s@$ xs@7@00 i@8@00)
        (Seq_append
          (Seq_singleton ($FVF.lookup_item ($SortWrappers.$SnapTo$FVF<item> ($Snap.first ($Snap.second ($Snap.second ($Snap.second s@$))))) (Seq_index
            xs@7@00
            i@8@00)))
          (seqToSeqHelper_frac%limited ($Snap.combine
            $Snap.unit
            ($Snap.combine
              $Snap.unit
              ($Snap.combine
                $Snap.unit
                ($Snap.combine
                  ($SortWrappers.$FVF<item>To$Snap (sm@47@00 s@$ xs@7@00 i@8@00))
                  $Snap.unit)))) xs@7@00 (+ i@8@00 1))))))
  :pattern ((seqToSeqHelper_frac s@$ xs@7@00 i@8@00))
  :qid |quant-u-24112|)))
(assert (forall ((s@$ $Snap) (xs@7@00 Seq<$Ref>) (i@8@00 Int)) (!
  (=>
    (seqToSeqHelper_frac%precondition s@$ xs@7@00 i@8@00)
    (seqToSeqHelper_frac%precondition ($Snap.combine
      $Snap.unit
      ($Snap.combine
        $Snap.unit
        ($Snap.combine
          $Snap.unit
          ($Snap.combine
            ($SortWrappers.$FVF<item>To$Snap (sm@47@00 s@$ xs@7@00 i@8@00))
            $Snap.unit)))) xs@7@00 (+ i@8@00 1)))
  :pattern ((seqToSeqHelper_frac s@$ xs@7@00 i@8@00))
  :qid |quant-u-24113|)))
; End function- and predicate-related preamble
; ------------------------------------------------------------
; ---------- method_seqToSeqHelper ----------
(declare-const xs@0@01 Seq<$Ref>)
(declare-const i@1@01 Int)
(declare-const res@2@01 Seq<Int>)
(declare-const xs@3@01 Seq<$Ref>)
(declare-const i@4@01 Int)
(declare-const res@5@01 Seq<Int>)
(set-option :timeout 0)
(push) ; 1
(declare-const $t@6@01 $Snap)
(assert (= $t@6@01 ($Snap.combine ($Snap.first $t@6@01) ($Snap.second $t@6@01))))
(assert (= ($Snap.first $t@6@01) $Snap.unit))
; [eval] 0 <= i
(assert (<= 0 i@4@01))
(assert (=
  ($Snap.second $t@6@01)
  ($Snap.combine
    ($Snap.first ($Snap.second $t@6@01))
    ($Snap.second ($Snap.second $t@6@01)))))
(assert (= ($Snap.first ($Snap.second $t@6@01)) $Snap.unit))
; [eval] i <= |xs|
; [eval] |xs|
(assert (<= i@4@01 (Seq_length xs@3@01)))
(assert (=
  ($Snap.second ($Snap.second $t@6@01))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second $t@6@01)))
    ($Snap.second ($Snap.second ($Snap.second $t@6@01))))))
(assert (= ($Snap.first ($Snap.second ($Snap.second $t@6@01))) $Snap.unit))
; [eval] (forall k: Int, j: Int :: { xs[k], xs[j] } k >= 0 && (k < |xs| && (j >= 0 && (j < |xs| && k != j))) ==> xs[k] != xs[j])
(declare-const k@7@01 Int)
(declare-const j@8@01 Int)
(push) ; 2
; [eval] k >= 0 && (k < |xs| && (j >= 0 && (j < |xs| && k != j))) ==> xs[k] != xs[j]
; [eval] k >= 0 && (k < |xs| && (j >= 0 && (j < |xs| && k != j)))
; [eval] k >= 0
(push) ; 3
; [then-branch: 0 | !(k@7@01 >= 0) | live]
; [else-branch: 0 | k@7@01 >= 0 | live]
(push) ; 4
; [then-branch: 0 | !(k@7@01 >= 0)]
(assert (not (>= k@7@01 0)))
(pop) ; 4
(push) ; 4
; [else-branch: 0 | k@7@01 >= 0]
(assert (>= k@7@01 0))
; [eval] k < |xs|
; [eval] |xs|
(push) ; 5
; [then-branch: 1 | !(k@7@01 < |xs@3@01|) | live]
; [else-branch: 1 | k@7@01 < |xs@3@01| | live]
(push) ; 6
; [then-branch: 1 | !(k@7@01 < |xs@3@01|)]
(assert (not (< k@7@01 (Seq_length xs@3@01))))
(pop) ; 6
(push) ; 6
; [else-branch: 1 | k@7@01 < |xs@3@01|]
(assert (< k@7@01 (Seq_length xs@3@01)))
; [eval] j >= 0
(push) ; 7
; [then-branch: 2 | !(j@8@01 >= 0) | live]
; [else-branch: 2 | j@8@01 >= 0 | live]
(push) ; 8
; [then-branch: 2 | !(j@8@01 >= 0)]
(assert (not (>= j@8@01 0)))
(pop) ; 8
(push) ; 8
; [else-branch: 2 | j@8@01 >= 0]
(assert (>= j@8@01 0))
; [eval] j < |xs|
; [eval] |xs|
(push) ; 9
; [then-branch: 3 | !(j@8@01 < |xs@3@01|) | live]
; [else-branch: 3 | j@8@01 < |xs@3@01| | live]
(push) ; 10
; [then-branch: 3 | !(j@8@01 < |xs@3@01|)]
(assert (not (< j@8@01 (Seq_length xs@3@01))))
(pop) ; 10
(push) ; 10
; [else-branch: 3 | j@8@01 < |xs@3@01|]
(assert (< j@8@01 (Seq_length xs@3@01)))
; [eval] k != j
(pop) ; 10
(pop) ; 9
; Joined path conditions
; Joined path conditions
(assert (or (< j@8@01 (Seq_length xs@3@01)) (not (< j@8@01 (Seq_length xs@3@01)))))
(pop) ; 8
(pop) ; 7
; Joined path conditions
; Joined path conditions
(assert (=>
  (>= j@8@01 0)
  (and
    (>= j@8@01 0)
    (or (< j@8@01 (Seq_length xs@3@01)) (not (< j@8@01 (Seq_length xs@3@01)))))))
(assert (or (>= j@8@01 0) (not (>= j@8@01 0))))
(pop) ; 6
(pop) ; 5
; Joined path conditions
; Joined path conditions
(assert (=>
  (< k@7@01 (Seq_length xs@3@01))
  (and
    (< k@7@01 (Seq_length xs@3@01))
    (=>
      (>= j@8@01 0)
      (and
        (>= j@8@01 0)
        (or
          (< j@8@01 (Seq_length xs@3@01))
          (not (< j@8@01 (Seq_length xs@3@01))))))
    (or (>= j@8@01 0) (not (>= j@8@01 0))))))
(assert (or (< k@7@01 (Seq_length xs@3@01)) (not (< k@7@01 (Seq_length xs@3@01)))))
(pop) ; 4
(pop) ; 3
; Joined path conditions
; Joined path conditions
(assert (=>
  (>= k@7@01 0)
  (and
    (>= k@7@01 0)
    (=>
      (< k@7@01 (Seq_length xs@3@01))
      (and
        (< k@7@01 (Seq_length xs@3@01))
        (=>
          (>= j@8@01 0)
          (and
            (>= j@8@01 0)
            (or
              (< j@8@01 (Seq_length xs@3@01))
              (not (< j@8@01 (Seq_length xs@3@01))))))
        (or (>= j@8@01 0) (not (>= j@8@01 0)))))
    (or (< k@7@01 (Seq_length xs@3@01)) (not (< k@7@01 (Seq_length xs@3@01)))))))
(assert (or (>= k@7@01 0) (not (>= k@7@01 0))))
(push) ; 3
; [then-branch: 4 | k@7@01 >= 0 && k@7@01 < |xs@3@01| && j@8@01 >= 0 && j@8@01 < |xs@3@01| && k@7@01 != j@8@01 | live]
; [else-branch: 4 | !(k@7@01 >= 0 && k@7@01 < |xs@3@01| && j@8@01 >= 0 && j@8@01 < |xs@3@01| && k@7@01 != j@8@01) | live]
(push) ; 4
; [then-branch: 4 | k@7@01 >= 0 && k@7@01 < |xs@3@01| && j@8@01 >= 0 && j@8@01 < |xs@3@01| && k@7@01 != j@8@01]
(assert (and
  (>= k@7@01 0)
  (and
    (< k@7@01 (Seq_length xs@3@01))
    (and
      (>= j@8@01 0)
      (and (< j@8@01 (Seq_length xs@3@01)) (not (= k@7@01 j@8@01)))))))
; [eval] xs[k] != xs[j]
; [eval] xs[k]
; [eval] xs[j]
(pop) ; 4
(push) ; 4
; [else-branch: 4 | !(k@7@01 >= 0 && k@7@01 < |xs@3@01| && j@8@01 >= 0 && j@8@01 < |xs@3@01| && k@7@01 != j@8@01)]
(assert (not
  (and
    (>= k@7@01 0)
    (and
      (< k@7@01 (Seq_length xs@3@01))
      (and
        (>= j@8@01 0)
        (and (< j@8@01 (Seq_length xs@3@01)) (not (= k@7@01 j@8@01))))))))
(pop) ; 4
(pop) ; 3
; Joined path conditions
(assert (=>
  (and
    (>= k@7@01 0)
    (and
      (< k@7@01 (Seq_length xs@3@01))
      (and
        (>= j@8@01 0)
        (and (< j@8@01 (Seq_length xs@3@01)) (not (= k@7@01 j@8@01))))))
  (and
    (>= k@7@01 0)
    (< k@7@01 (Seq_length xs@3@01))
    (>= j@8@01 0)
    (< j@8@01 (Seq_length xs@3@01))
    (not (= k@7@01 j@8@01)))))
; Joined path conditions
(assert (or
  (not
    (and
      (>= k@7@01 0)
      (and
        (< k@7@01 (Seq_length xs@3@01))
        (and
          (>= j@8@01 0)
          (and (< j@8@01 (Seq_length xs@3@01)) (not (= k@7@01 j@8@01)))))))
  (and
    (>= k@7@01 0)
    (and
      (< k@7@01 (Seq_length xs@3@01))
      (and
        (>= j@8@01 0)
        (and (< j@8@01 (Seq_length xs@3@01)) (not (= k@7@01 j@8@01))))))))
(pop) ; 2
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall ((k@7@01 Int) (j@8@01 Int)) (!
  (and
    (=>
      (>= k@7@01 0)
      (and
        (>= k@7@01 0)
        (=>
          (< k@7@01 (Seq_length xs@3@01))
          (and
            (< k@7@01 (Seq_length xs@3@01))
            (=>
              (>= j@8@01 0)
              (and
                (>= j@8@01 0)
                (or
                  (< j@8@01 (Seq_length xs@3@01))
                  (not (< j@8@01 (Seq_length xs@3@01))))))
            (or (>= j@8@01 0) (not (>= j@8@01 0)))))
        (or
          (< k@7@01 (Seq_length xs@3@01))
          (not (< k@7@01 (Seq_length xs@3@01))))))
    (or (>= k@7@01 0) (not (>= k@7@01 0)))
    (=>
      (and
        (>= k@7@01 0)
        (and
          (< k@7@01 (Seq_length xs@3@01))
          (and
            (>= j@8@01 0)
            (and (< j@8@01 (Seq_length xs@3@01)) (not (= k@7@01 j@8@01))))))
      (and
        (>= k@7@01 0)
        (< k@7@01 (Seq_length xs@3@01))
        (>= j@8@01 0)
        (< j@8@01 (Seq_length xs@3@01))
        (not (= k@7@01 j@8@01))))
    (or
      (not
        (and
          (>= k@7@01 0)
          (and
            (< k@7@01 (Seq_length xs@3@01))
            (and
              (>= j@8@01 0)
              (and (< j@8@01 (Seq_length xs@3@01)) (not (= k@7@01 j@8@01)))))))
      (and
        (>= k@7@01 0)
        (and
          (< k@7@01 (Seq_length xs@3@01))
          (and
            (>= j@8@01 0)
            (and (< j@8@01 (Seq_length xs@3@01)) (not (= k@7@01 j@8@01))))))))
  :pattern ((Seq_index xs@3@01 k@7@01) (Seq_index xs@3@01 j@8@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/all/issues/silicon/0512.vpr@32@12@32@104-aux|)))
(assert (forall ((k@7@01 Int) (j@8@01 Int)) (!
  (=>
    (and
      (>= k@7@01 0)
      (and
        (< k@7@01 (Seq_length xs@3@01))
        (and
          (>= j@8@01 0)
          (and (< j@8@01 (Seq_length xs@3@01)) (not (= k@7@01 j@8@01))))))
    (not (= (Seq_index xs@3@01 k@7@01) (Seq_index xs@3@01 j@8@01))))
  :pattern ((Seq_index xs@3@01 k@7@01) (Seq_index xs@3@01 j@8@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/all/issues/silicon/0512.vpr@32@12@32@104|)))
(declare-const j@9@01 Int)
(push) ; 2
; [eval] 0 <= j && j < |xs|
; [eval] 0 <= j
(push) ; 3
; [then-branch: 5 | !(0 <= j@9@01) | live]
; [else-branch: 5 | 0 <= j@9@01 | live]
(push) ; 4
; [then-branch: 5 | !(0 <= j@9@01)]
(assert (not (<= 0 j@9@01)))
(pop) ; 4
(push) ; 4
; [else-branch: 5 | 0 <= j@9@01]
(assert (<= 0 j@9@01))
; [eval] j < |xs|
; [eval] |xs|
(pop) ; 4
(pop) ; 3
; Joined path conditions
; Joined path conditions
(assert (or (<= 0 j@9@01) (not (<= 0 j@9@01))))
(assert (and (<= 0 j@9@01) (< j@9@01 (Seq_length xs@3@01))))
; [eval] xs[j]
(push) ; 3
(assert (not (>= j@9@01 0)))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(declare-const $k@10@01 $Perm)
(assert ($Perm.isReadVar $k@10@01))
(pop) ; 2
(declare-fun inv@11@01 ($Ref) Int)
(declare-fun img@12@01 ($Ref) Bool)
; Nested auxiliary terms: globals
(assert ($Perm.isReadVar $k@10@01))
; Nested auxiliary terms: non-globals
(assert (forall ((j@9@01 Int)) (!
  (=>
    (and (<= 0 j@9@01) (< j@9@01 (Seq_length xs@3@01)))
    (or (<= 0 j@9@01) (not (<= 0 j@9@01))))
  :pattern ((Seq_index xs@3@01 j@9@01))
  :qid |item-aux|)))
(push) ; 2
(assert (not (forall ((j@9@01 Int)) (!
  (=>
    (and (<= 0 j@9@01) (< j@9@01 (Seq_length xs@3@01)))
    (or (= $k@10@01 $Perm.No) (< $Perm.No $k@10@01)))
  
  :qid |quant-u-24114|))))
(check-sat)
; unsat
(pop) ; 2
; 0.00s
; (get-info :all-statistics)
; Check receiver injectivity
(push) ; 2
(assert (not (forall ((j1@9@01 Int) (j2@9@01 Int)) (!
  (=>
    (and
      (and
        (and (<= 0 j1@9@01) (< j1@9@01 (Seq_length xs@3@01)))
        (< $Perm.No $k@10@01))
      (and
        (and (<= 0 j2@9@01) (< j2@9@01 (Seq_length xs@3@01)))
        (< $Perm.No $k@10@01))
      (= (Seq_index xs@3@01 j1@9@01) (Seq_index xs@3@01 j2@9@01)))
    (= j1@9@01 j2@9@01))
  
  :qid |item-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 2
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((j@9@01 Int)) (!
  (=>
    (and
      (and (<= 0 j@9@01) (< j@9@01 (Seq_length xs@3@01)))
      (< $Perm.No $k@10@01))
    (and
      (= (inv@11@01 (Seq_index xs@3@01 j@9@01)) j@9@01)
      (img@12@01 (Seq_index xs@3@01 j@9@01))))
  :pattern ((Seq_index xs@3@01 j@9@01))
  :qid |quant-u-24115|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@12@01 r)
      (and
        (and (<= 0 (inv@11@01 r)) (< (inv@11@01 r) (Seq_length xs@3@01)))
        (< $Perm.No $k@10@01)))
    (= (Seq_index xs@3@01 (inv@11@01 r)) r))
  :pattern ((inv@11@01 r))
  :qid |item-fctOfInv|)))
; Permissions are non-negative
(assert (forall ((j@9@01 Int)) (!
  (<= $Perm.No $k@10@01)
  :pattern ((Seq_index xs@3@01 j@9@01))
  :qid |item-permAtLeastZero|)))
; Field permissions are at most one
(assert (forall ((j@9@01 Int)) (!
  (<= $k@10@01 $Perm.Write)
  :pattern ((Seq_index xs@3@01 j@9@01))
  :qid |item-permAtMostOne|)))
; Permission implies non-null receiver
(assert (forall ((j@9@01 Int)) (!
  (=>
    (and
      (and (<= 0 j@9@01) (< j@9@01 (Seq_length xs@3@01)))
      (< $Perm.No $k@10@01))
    (not (= (Seq_index xs@3@01 j@9@01) $Ref.null)))
  :pattern ((Seq_index xs@3@01 j@9@01))
  :qid |item-permImpliesNonNull|)))
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
(set-option :timeout 0)
(push) ; 2
(declare-const $t@13@01 $Snap)
(assert (= $t@13@01 ($Snap.combine ($Snap.first $t@13@01) ($Snap.second $t@13@01))))
(assert (= ($Snap.first $t@13@01) $Snap.unit))
; [eval] 0 <= i
(assert (=
  ($Snap.second $t@13@01)
  ($Snap.combine
    ($Snap.first ($Snap.second $t@13@01))
    ($Snap.second ($Snap.second $t@13@01)))))
(assert (= ($Snap.first ($Snap.second $t@13@01)) $Snap.unit))
; [eval] i <= |xs|
; [eval] |xs|
(assert (=
  ($Snap.second ($Snap.second $t@13@01))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second $t@13@01)))
    ($Snap.second ($Snap.second ($Snap.second $t@13@01))))))
(declare-const j@14@01 Int)
(push) ; 3
; [eval] 0 <= j && j < |xs|
; [eval] 0 <= j
(push) ; 4
; [then-branch: 6 | !(0 <= j@14@01) | live]
; [else-branch: 6 | 0 <= j@14@01 | live]
(push) ; 5
; [then-branch: 6 | !(0 <= j@14@01)]
(assert (not (<= 0 j@14@01)))
(pop) ; 5
(push) ; 5
; [else-branch: 6 | 0 <= j@14@01]
(assert (<= 0 j@14@01))
; [eval] j < |xs|
; [eval] |xs|
(pop) ; 5
(pop) ; 4
; Joined path conditions
; Joined path conditions
(assert (or (<= 0 j@14@01) (not (<= 0 j@14@01))))
(assert (and (<= 0 j@14@01) (< j@14@01 (Seq_length xs@3@01))))
; [eval] xs[j]
(push) ; 4
(assert (not (>= j@14@01 0)))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(declare-const $k@15@01 $Perm)
(assert ($Perm.isReadVar $k@15@01))
(pop) ; 3
(declare-fun inv@16@01 ($Ref) Int)
(declare-fun img@17@01 ($Ref) Bool)
; Nested auxiliary terms: globals
(assert ($Perm.isReadVar $k@15@01))
; Nested auxiliary terms: non-globals
(assert (forall ((j@14@01 Int)) (!
  (=>
    (and (<= 0 j@14@01) (< j@14@01 (Seq_length xs@3@01)))
    (or (<= 0 j@14@01) (not (<= 0 j@14@01))))
  :pattern ((Seq_index xs@3@01 j@14@01))
  :qid |item-aux|)))
(push) ; 3
(assert (not (forall ((j@14@01 Int)) (!
  (=>
    (and (<= 0 j@14@01) (< j@14@01 (Seq_length xs@3@01)))
    (or (= $k@15@01 $Perm.No) (< $Perm.No $k@15@01)))
  
  :qid |quant-u-24116|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Check receiver injectivity
(push) ; 3
(assert (not (forall ((j1@14@01 Int) (j2@14@01 Int)) (!
  (=>
    (and
      (and
        (and (<= 0 j1@14@01) (< j1@14@01 (Seq_length xs@3@01)))
        (< $Perm.No $k@15@01))
      (and
        (and (<= 0 j2@14@01) (< j2@14@01 (Seq_length xs@3@01)))
        (< $Perm.No $k@15@01))
      (= (Seq_index xs@3@01 j1@14@01) (Seq_index xs@3@01 j2@14@01)))
    (= j1@14@01 j2@14@01))
  
  :qid |item-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((j@14@01 Int)) (!
  (=>
    (and
      (and (<= 0 j@14@01) (< j@14@01 (Seq_length xs@3@01)))
      (< $Perm.No $k@15@01))
    (and
      (= (inv@16@01 (Seq_index xs@3@01 j@14@01)) j@14@01)
      (img@17@01 (Seq_index xs@3@01 j@14@01))))
  :pattern ((Seq_index xs@3@01 j@14@01))
  :qid |quant-u-24117|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@17@01 r)
      (and
        (and (<= 0 (inv@16@01 r)) (< (inv@16@01 r) (Seq_length xs@3@01)))
        (< $Perm.No $k@15@01)))
    (= (Seq_index xs@3@01 (inv@16@01 r)) r))
  :pattern ((inv@16@01 r))
  :qid |item-fctOfInv|)))
; Permissions are non-negative
(assert (forall ((j@14@01 Int)) (!
  (<= $Perm.No $k@15@01)
  :pattern ((Seq_index xs@3@01 j@14@01))
  :qid |item-permAtLeastZero|)))
; Field permissions are at most one
(assert (forall ((j@14@01 Int)) (!
  (<= $k@15@01 $Perm.Write)
  :pattern ((Seq_index xs@3@01 j@14@01))
  :qid |item-permAtMostOne|)))
; Permission implies non-null receiver
(assert (forall ((j@14@01 Int)) (!
  (=>
    (and
      (and (<= 0 j@14@01) (< j@14@01 (Seq_length xs@3@01)))
      (< $Perm.No $k@15@01))
    (not (= (Seq_index xs@3@01 j@14@01) $Ref.null)))
  :pattern ((Seq_index xs@3@01 j@14@01))
  :qid |item-permImpliesNonNull|)))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second $t@13@01)))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@13@01))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@13@01)))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@13@01))))
  $Snap.unit))
; [eval] |res| == |xs| - i
; [eval] |res|
; [eval] |xs| - i
; [eval] |xs|
(assert (= (Seq_length res@5@01) (- (Seq_length xs@3@01) i@4@01)))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@13@01))))
  $Snap.unit))
; [eval] (forall j: Int :: { xs[j] } i <= j && j < |xs| ==> res[j - i] == xs[j].item)
(declare-const j@18@01 Int)
(push) ; 3
; [eval] i <= j && j < |xs| ==> res[j - i] == xs[j].item
; [eval] i <= j && j < |xs|
; [eval] i <= j
(push) ; 4
; [then-branch: 7 | !(i@4@01 <= j@18@01) | live]
; [else-branch: 7 | i@4@01 <= j@18@01 | live]
(push) ; 5
; [then-branch: 7 | !(i@4@01 <= j@18@01)]
(assert (not (<= i@4@01 j@18@01)))
(pop) ; 5
(push) ; 5
; [else-branch: 7 | i@4@01 <= j@18@01]
(assert (<= i@4@01 j@18@01))
; [eval] j < |xs|
; [eval] |xs|
(pop) ; 5
(pop) ; 4
; Joined path conditions
; Joined path conditions
(assert (or (<= i@4@01 j@18@01) (not (<= i@4@01 j@18@01))))
(push) ; 4
; [then-branch: 8 | i@4@01 <= j@18@01 && j@18@01 < |xs@3@01| | live]
; [else-branch: 8 | !(i@4@01 <= j@18@01 && j@18@01 < |xs@3@01|) | live]
(push) ; 5
; [then-branch: 8 | i@4@01 <= j@18@01 && j@18@01 < |xs@3@01|]
(assert (and (<= i@4@01 j@18@01) (< j@18@01 (Seq_length xs@3@01))))
; [eval] res[j - i] == xs[j].item
; [eval] res[j - i]
; [eval] j - i
(push) ; 6
(assert (not (>= (- j@18@01 i@4@01) 0)))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(push) ; 6
(assert (not (< (- j@18@01 i@4@01) (Seq_length res@5@01))))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
; [eval] xs[j]
(push) ; 6
(assert (not (>= j@18@01 0)))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(push) ; 6
(assert (not (ite
  (and
    (img@17@01 (Seq_index xs@3@01 j@18@01))
    (and
      (<= 0 (inv@16@01 (Seq_index xs@3@01 j@18@01)))
      (< (inv@16@01 (Seq_index xs@3@01 j@18@01)) (Seq_length xs@3@01))))
  (< $Perm.No $k@15@01)
  false)))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(pop) ; 5
(push) ; 5
; [else-branch: 8 | !(i@4@01 <= j@18@01 && j@18@01 < |xs@3@01|)]
(assert (not (and (<= i@4@01 j@18@01) (< j@18@01 (Seq_length xs@3@01)))))
(pop) ; 5
(pop) ; 4
; Joined path conditions
; Joined path conditions
(assert (or
  (not (and (<= i@4@01 j@18@01) (< j@18@01 (Seq_length xs@3@01))))
  (and (<= i@4@01 j@18@01) (< j@18@01 (Seq_length xs@3@01)))))
(pop) ; 3
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall ((j@18@01 Int)) (!
  (and
    (or (<= i@4@01 j@18@01) (not (<= i@4@01 j@18@01)))
    (or
      (not (and (<= i@4@01 j@18@01) (< j@18@01 (Seq_length xs@3@01))))
      (and (<= i@4@01 j@18@01) (< j@18@01 (Seq_length xs@3@01)))))
  :pattern ((Seq_index xs@3@01 j@18@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/all/issues/silicon/0512.vpr@38@12@38@76-aux|)))
(assert (forall ((j@18@01 Int)) (!
  (=>
    (and (<= i@4@01 j@18@01) (< j@18@01 (Seq_length xs@3@01)))
    (=
      (Seq_index res@5@01 (- j@18@01 i@4@01))
      ($FVF.lookup_item ($SortWrappers.$SnapTo$FVF<item> ($Snap.first ($Snap.second ($Snap.second $t@13@01)))) (Seq_index
        xs@3@01
        j@18@01))))
  :pattern ((Seq_index xs@3@01 j@18@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/all/issues/silicon/0512.vpr@38@12@38@76|)))
(pop) ; 2
(push) ; 2
; [eval] i < |xs|
; [eval] |xs|
(push) ; 3
(set-option :timeout 10)
(assert (not (not (< i@4@01 (Seq_length xs@3@01)))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (< i@4@01 (Seq_length xs@3@01))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; [then-branch: 9 | i@4@01 < |xs@3@01| | live]
; [else-branch: 9 | !(i@4@01 < |xs@3@01|) | live]
(set-option :timeout 0)
(push) ; 3
; [then-branch: 9 | i@4@01 < |xs@3@01|]
(assert (< i@4@01 (Seq_length xs@3@01)))
; [exec]
; var tail: Seq[Int]
(declare-const tail@19@01 Seq<Int>)
; [exec]
; tail := method_seqToSeqHelper(xs, i + 1)
; [eval] i + 1
; [eval] 0 <= i
(push) ; 4
(assert (not (<= 0 (+ i@4@01 1))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(assert (<= 0 (+ i@4@01 1)))
; [eval] i <= |xs|
; [eval] |xs|
(push) ; 4
(assert (not (<= (+ i@4@01 1) (Seq_length xs@3@01))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(assert (<= (+ i@4@01 1) (Seq_length xs@3@01)))
; [eval] (forall k: Int, j: Int :: { xs[k], xs[j] } k >= 0 && (k < |xs| && (j >= 0 && (j < |xs| && k != j))) ==> xs[k] != xs[j])
(declare-const k@20@01 Int)
(declare-const j@21@01 Int)
(push) ; 4
; [eval] k >= 0 && (k < |xs| && (j >= 0 && (j < |xs| && k != j))) ==> xs[k] != xs[j]
; [eval] k >= 0 && (k < |xs| && (j >= 0 && (j < |xs| && k != j)))
; [eval] k >= 0
(push) ; 5
; [then-branch: 10 | !(k@20@01 >= 0) | live]
; [else-branch: 10 | k@20@01 >= 0 | live]
(push) ; 6
; [then-branch: 10 | !(k@20@01 >= 0)]
(assert (not (>= k@20@01 0)))
(pop) ; 6
(push) ; 6
; [else-branch: 10 | k@20@01 >= 0]
(assert (>= k@20@01 0))
; [eval] k < |xs|
; [eval] |xs|
(push) ; 7
; [then-branch: 11 | !(k@20@01 < |xs@3@01|) | live]
; [else-branch: 11 | k@20@01 < |xs@3@01| | live]
(push) ; 8
; [then-branch: 11 | !(k@20@01 < |xs@3@01|)]
(assert (not (< k@20@01 (Seq_length xs@3@01))))
(pop) ; 8
(push) ; 8
; [else-branch: 11 | k@20@01 < |xs@3@01|]
(assert (< k@20@01 (Seq_length xs@3@01)))
; [eval] j >= 0
(push) ; 9
; [then-branch: 12 | !(j@21@01 >= 0) | live]
; [else-branch: 12 | j@21@01 >= 0 | live]
(push) ; 10
; [then-branch: 12 | !(j@21@01 >= 0)]
(assert (not (>= j@21@01 0)))
(pop) ; 10
(push) ; 10
; [else-branch: 12 | j@21@01 >= 0]
(assert (>= j@21@01 0))
; [eval] j < |xs|
; [eval] |xs|
(push) ; 11
; [then-branch: 13 | !(j@21@01 < |xs@3@01|) | live]
; [else-branch: 13 | j@21@01 < |xs@3@01| | live]
(push) ; 12
; [then-branch: 13 | !(j@21@01 < |xs@3@01|)]
(assert (not (< j@21@01 (Seq_length xs@3@01))))
(pop) ; 12
(push) ; 12
; [else-branch: 13 | j@21@01 < |xs@3@01|]
(assert (< j@21@01 (Seq_length xs@3@01)))
; [eval] k != j
(pop) ; 12
(pop) ; 11
; Joined path conditions
; Joined path conditions
(assert (or (< j@21@01 (Seq_length xs@3@01)) (not (< j@21@01 (Seq_length xs@3@01)))))
(pop) ; 10
(pop) ; 9
; Joined path conditions
; Joined path conditions
(assert (=>
  (>= j@21@01 0)
  (and
    (>= j@21@01 0)
    (or (< j@21@01 (Seq_length xs@3@01)) (not (< j@21@01 (Seq_length xs@3@01)))))))
(assert (or (>= j@21@01 0) (not (>= j@21@01 0))))
(pop) ; 8
(pop) ; 7
; Joined path conditions
; Joined path conditions
(assert (=>
  (< k@20@01 (Seq_length xs@3@01))
  (and
    (< k@20@01 (Seq_length xs@3@01))
    (=>
      (>= j@21@01 0)
      (and
        (>= j@21@01 0)
        (or
          (< j@21@01 (Seq_length xs@3@01))
          (not (< j@21@01 (Seq_length xs@3@01))))))
    (or (>= j@21@01 0) (not (>= j@21@01 0))))))
(assert (or (< k@20@01 (Seq_length xs@3@01)) (not (< k@20@01 (Seq_length xs@3@01)))))
(pop) ; 6
(pop) ; 5
; Joined path conditions
; Joined path conditions
(assert (=>
  (>= k@20@01 0)
  (and
    (>= k@20@01 0)
    (=>
      (< k@20@01 (Seq_length xs@3@01))
      (and
        (< k@20@01 (Seq_length xs@3@01))
        (=>
          (>= j@21@01 0)
          (and
            (>= j@21@01 0)
            (or
              (< j@21@01 (Seq_length xs@3@01))
              (not (< j@21@01 (Seq_length xs@3@01))))))
        (or (>= j@21@01 0) (not (>= j@21@01 0)))))
    (or (< k@20@01 (Seq_length xs@3@01)) (not (< k@20@01 (Seq_length xs@3@01)))))))
(assert (or (>= k@20@01 0) (not (>= k@20@01 0))))
(push) ; 5
; [then-branch: 14 | k@20@01 >= 0 && k@20@01 < |xs@3@01| && j@21@01 >= 0 && j@21@01 < |xs@3@01| && k@20@01 != j@21@01 | live]
; [else-branch: 14 | !(k@20@01 >= 0 && k@20@01 < |xs@3@01| && j@21@01 >= 0 && j@21@01 < |xs@3@01| && k@20@01 != j@21@01) | live]
(push) ; 6
; [then-branch: 14 | k@20@01 >= 0 && k@20@01 < |xs@3@01| && j@21@01 >= 0 && j@21@01 < |xs@3@01| && k@20@01 != j@21@01]
(assert (and
  (>= k@20@01 0)
  (and
    (< k@20@01 (Seq_length xs@3@01))
    (and
      (>= j@21@01 0)
      (and (< j@21@01 (Seq_length xs@3@01)) (not (= k@20@01 j@21@01)))))))
; [eval] xs[k] != xs[j]
; [eval] xs[k]
; [eval] xs[j]
(pop) ; 6
(push) ; 6
; [else-branch: 14 | !(k@20@01 >= 0 && k@20@01 < |xs@3@01| && j@21@01 >= 0 && j@21@01 < |xs@3@01| && k@20@01 != j@21@01)]
(assert (not
  (and
    (>= k@20@01 0)
    (and
      (< k@20@01 (Seq_length xs@3@01))
      (and
        (>= j@21@01 0)
        (and (< j@21@01 (Seq_length xs@3@01)) (not (= k@20@01 j@21@01))))))))
(pop) ; 6
(pop) ; 5
; Joined path conditions
(assert (=>
  (and
    (>= k@20@01 0)
    (and
      (< k@20@01 (Seq_length xs@3@01))
      (and
        (>= j@21@01 0)
        (and (< j@21@01 (Seq_length xs@3@01)) (not (= k@20@01 j@21@01))))))
  (and
    (>= k@20@01 0)
    (< k@20@01 (Seq_length xs@3@01))
    (>= j@21@01 0)
    (< j@21@01 (Seq_length xs@3@01))
    (not (= k@20@01 j@21@01)))))
; Joined path conditions
(assert (or
  (not
    (and
      (>= k@20@01 0)
      (and
        (< k@20@01 (Seq_length xs@3@01))
        (and
          (>= j@21@01 0)
          (and (< j@21@01 (Seq_length xs@3@01)) (not (= k@20@01 j@21@01)))))))
  (and
    (>= k@20@01 0)
    (and
      (< k@20@01 (Seq_length xs@3@01))
      (and
        (>= j@21@01 0)
        (and (< j@21@01 (Seq_length xs@3@01)) (not (= k@20@01 j@21@01))))))))
(pop) ; 4
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall ((k@20@01 Int) (j@21@01 Int)) (!
  (and
    (=>
      (>= k@20@01 0)
      (and
        (>= k@20@01 0)
        (=>
          (< k@20@01 (Seq_length xs@3@01))
          (and
            (< k@20@01 (Seq_length xs@3@01))
            (=>
              (>= j@21@01 0)
              (and
                (>= j@21@01 0)
                (or
                  (< j@21@01 (Seq_length xs@3@01))
                  (not (< j@21@01 (Seq_length xs@3@01))))))
            (or (>= j@21@01 0) (not (>= j@21@01 0)))))
        (or
          (< k@20@01 (Seq_length xs@3@01))
          (not (< k@20@01 (Seq_length xs@3@01))))))
    (or (>= k@20@01 0) (not (>= k@20@01 0)))
    (=>
      (and
        (>= k@20@01 0)
        (and
          (< k@20@01 (Seq_length xs@3@01))
          (and
            (>= j@21@01 0)
            (and (< j@21@01 (Seq_length xs@3@01)) (not (= k@20@01 j@21@01))))))
      (and
        (>= k@20@01 0)
        (< k@20@01 (Seq_length xs@3@01))
        (>= j@21@01 0)
        (< j@21@01 (Seq_length xs@3@01))
        (not (= k@20@01 j@21@01))))
    (or
      (not
        (and
          (>= k@20@01 0)
          (and
            (< k@20@01 (Seq_length xs@3@01))
            (and
              (>= j@21@01 0)
              (and (< j@21@01 (Seq_length xs@3@01)) (not (= k@20@01 j@21@01)))))))
      (and
        (>= k@20@01 0)
        (and
          (< k@20@01 (Seq_length xs@3@01))
          (and
            (>= j@21@01 0)
            (and (< j@21@01 (Seq_length xs@3@01)) (not (= k@20@01 j@21@01))))))))
  :pattern ((Seq_index xs@3@01 k@20@01) (Seq_index xs@3@01 j@21@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/all/issues/silicon/0512.vpr@32@12@32@104-aux|)))
(push) ; 4
(assert (not (forall ((k@20@01 Int) (j@21@01 Int)) (!
  (=>
    (and
      (>= k@20@01 0)
      (and
        (< k@20@01 (Seq_length xs@3@01))
        (and
          (>= j@21@01 0)
          (and (< j@21@01 (Seq_length xs@3@01)) (not (= k@20@01 j@21@01))))))
    (not (= (Seq_index xs@3@01 k@20@01) (Seq_index xs@3@01 j@21@01))))
  :pattern ((Seq_index xs@3@01 k@20@01) (Seq_index xs@3@01 j@21@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/all/issues/silicon/0512.vpr@32@12@32@104|))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(assert (forall ((k@20@01 Int) (j@21@01 Int)) (!
  (=>
    (and
      (>= k@20@01 0)
      (and
        (< k@20@01 (Seq_length xs@3@01))
        (and
          (>= j@21@01 0)
          (and (< j@21@01 (Seq_length xs@3@01)) (not (= k@20@01 j@21@01))))))
    (not (= (Seq_index xs@3@01 k@20@01) (Seq_index xs@3@01 j@21@01))))
  :pattern ((Seq_index xs@3@01 k@20@01) (Seq_index xs@3@01 j@21@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/all/issues/silicon/0512.vpr@32@12@32@104|)))
(declare-const j@22@01 Int)
(push) ; 4
; [eval] 0 <= j && j < |xs|
; [eval] 0 <= j
(push) ; 5
; [then-branch: 15 | !(0 <= j@22@01) | live]
; [else-branch: 15 | 0 <= j@22@01 | live]
(push) ; 6
; [then-branch: 15 | !(0 <= j@22@01)]
(assert (not (<= 0 j@22@01)))
(pop) ; 6
(push) ; 6
; [else-branch: 15 | 0 <= j@22@01]
(assert (<= 0 j@22@01))
; [eval] j < |xs|
; [eval] |xs|
(pop) ; 6
(pop) ; 5
; Joined path conditions
; Joined path conditions
(assert (or (<= 0 j@22@01) (not (<= 0 j@22@01))))
(assert (and (<= 0 j@22@01) (< j@22@01 (Seq_length xs@3@01))))
(declare-const $k@23@01 $Perm)
(assert ($Perm.isReadVar $k@23@01))
; [eval] xs[j]
(push) ; 5
(assert (not (>= j@22@01 0)))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(pop) ; 4
(declare-fun inv@24@01 ($Ref) Int)
(declare-fun img@25@01 ($Ref) Bool)
; Nested auxiliary terms: globals
(assert ($Perm.isReadVar $k@23@01))
; Nested auxiliary terms: non-globals
(assert (forall ((j@22@01 Int)) (!
  (=>
    (and (<= 0 j@22@01) (< j@22@01 (Seq_length xs@3@01)))
    (or (<= 0 j@22@01) (not (<= 0 j@22@01))))
  :pattern ((Seq_index xs@3@01 j@22@01))
  :qid |item-aux|)))
(push) ; 4
(assert (not (forall ((j@22@01 Int)) (!
  (=>
    (and (<= 0 j@22@01) (< j@22@01 (Seq_length xs@3@01)))
    (or (= $k@23@01 $Perm.No) (< $Perm.No $k@23@01)))
  
  :qid |quant-u-24118|))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; Check receiver injectivity
(push) ; 4
(assert (not (forall ((j1@22@01 Int) (j2@22@01 Int)) (!
  (=>
    (and
      (and
        (and (<= 0 j1@22@01) (< j1@22@01 (Seq_length xs@3@01)))
        (< $Perm.No $k@23@01))
      (and
        (and (<= 0 j2@22@01) (< j2@22@01 (Seq_length xs@3@01)))
        (< $Perm.No $k@23@01))
      (= (Seq_index xs@3@01 j1@22@01) (Seq_index xs@3@01 j2@22@01)))
    (= j1@22@01 j2@22@01))
  
  :qid |item-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((j@22@01 Int)) (!
  (=>
    (and
      (and (<= 0 j@22@01) (< j@22@01 (Seq_length xs@3@01)))
      (< $Perm.No $k@23@01))
    (and
      (= (inv@24@01 (Seq_index xs@3@01 j@22@01)) j@22@01)
      (img@25@01 (Seq_index xs@3@01 j@22@01))))
  :pattern ((Seq_index xs@3@01 j@22@01))
  :qid |item-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@25@01 r)
      (and
        (and (<= 0 (inv@24@01 r)) (< (inv@24@01 r) (Seq_length xs@3@01)))
        (< $Perm.No $k@23@01)))
    (= (Seq_index xs@3@01 (inv@24@01 r)) r))
  :pattern ((inv@24@01 r))
  :qid |item-fctOfInv|)))
; Precomputing data for removing quantified permissions
(define-fun pTaken@26@01 ((r $Ref)) $Perm
  (ite
    (and
      (and (<= 0 (inv@24@01 r)) (< (inv@24@01 r) (Seq_length xs@3@01)))
      (img@25@01 r)
      (= r (Seq_index xs@3@01 (inv@24@01 r))))
    ($Perm.min
      (ite
        (and
          (img@12@01 r)
          (and (<= 0 (inv@11@01 r)) (< (inv@11@01 r) (Seq_length xs@3@01))))
        $k@10@01
        $Perm.No)
      $k@23@01)
    $Perm.No))
; Done precomputing, updating quantified chunks
; State saturation: before repetition
(set-option :timeout 10)
(check-sat)
; unknown
; Constrain original permissions $k@23@01
(assert (forall ((r $Ref)) (!
  (=>
    (not
      (=
        (ite
          (and
            (img@12@01 r)
            (and (<= 0 (inv@11@01 r)) (< (inv@11@01 r) (Seq_length xs@3@01))))
          $k@10@01
          $Perm.No)
        $Perm.No))
    (ite
      (and
        (img@12@01 r)
        (and (<= 0 (inv@11@01 r)) (< (inv@11@01 r) (Seq_length xs@3@01))))
      (<
        (ite
          (and
            (and (<= 0 (inv@24@01 r)) (< (inv@24@01 r) (Seq_length xs@3@01)))
            (img@25@01 r)
            (= r (Seq_index xs@3@01 (inv@24@01 r))))
          $k@23@01
          $Perm.No)
        $k@10@01)
      (<
        (ite
          (and
            (and (<= 0 (inv@24@01 r)) (< (inv@24@01 r) (Seq_length xs@3@01)))
            (img@25@01 r)
            (= r (Seq_index xs@3@01 (inv@24@01 r))))
          $k@23@01
          $Perm.No)
        $Perm.No)))
  :pattern ((img@12@01 r))
  :pattern ((inv@11@01 r))
  :pattern ((img@25@01 r))
  :pattern ((Seq_index xs@3@01 (inv@24@01 r)))
  :qid |qp.srp0|)))
; Intermediate check if already taken enough permissions
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 500)
(assert (not (forall ((r $Ref)) (!
  (=>
    (and
      (and (<= 0 (inv@24@01 r)) (< (inv@24@01 r) (Seq_length xs@3@01)))
      (img@25@01 r)
      (= r (Seq_index xs@3@01 (inv@24@01 r))))
    (= (- $k@23@01 (pTaken@26@01 r)) $Perm.No))
  
  :qid |quant-u-24121|))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; Final check if taken enough permissions
; Done removing quantified permissions
(declare-const res@27@01 Seq<Int>)
(declare-const $t@28@01 $Snap)
(assert (= $t@28@01 ($Snap.combine ($Snap.first $t@28@01) ($Snap.second $t@28@01))))
(assert (= ($Snap.first $t@28@01) $Snap.unit))
; [eval] 0 <= i
(assert (=
  ($Snap.second $t@28@01)
  ($Snap.combine
    ($Snap.first ($Snap.second $t@28@01))
    ($Snap.second ($Snap.second $t@28@01)))))
(assert (= ($Snap.first ($Snap.second $t@28@01)) $Snap.unit))
; [eval] i <= |xs|
; [eval] |xs|
(assert (=
  ($Snap.second ($Snap.second $t@28@01))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second $t@28@01)))
    ($Snap.second ($Snap.second ($Snap.second $t@28@01))))))
(declare-const j@29@01 Int)
(set-option :timeout 0)
(push) ; 4
; [eval] 0 <= j && j < |xs|
; [eval] 0 <= j
(push) ; 5
; [then-branch: 16 | !(0 <= j@29@01) | live]
; [else-branch: 16 | 0 <= j@29@01 | live]
(push) ; 6
; [then-branch: 16 | !(0 <= j@29@01)]
(assert (not (<= 0 j@29@01)))
(pop) ; 6
(push) ; 6
; [else-branch: 16 | 0 <= j@29@01]
(assert (<= 0 j@29@01))
; [eval] j < |xs|
; [eval] |xs|
(pop) ; 6
(pop) ; 5
; Joined path conditions
; Joined path conditions
(assert (or (<= 0 j@29@01) (not (<= 0 j@29@01))))
(assert (and (<= 0 j@29@01) (< j@29@01 (Seq_length xs@3@01))))
; [eval] xs[j]
(push) ; 5
(assert (not (>= j@29@01 0)))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(declare-const $k@30@01 $Perm)
(assert ($Perm.isReadVar $k@30@01))
(pop) ; 4
(declare-fun inv@31@01 ($Ref) Int)
(declare-fun img@32@01 ($Ref) Bool)
; Nested auxiliary terms: globals
(assert ($Perm.isReadVar $k@30@01))
; Nested auxiliary terms: non-globals
(assert (forall ((j@29@01 Int)) (!
  (=>
    (and (<= 0 j@29@01) (< j@29@01 (Seq_length xs@3@01)))
    (or (<= 0 j@29@01) (not (<= 0 j@29@01))))
  :pattern ((Seq_index xs@3@01 j@29@01))
  :qid |item-aux|)))
(push) ; 4
(assert (not (forall ((j@29@01 Int)) (!
  (=>
    (and (<= 0 j@29@01) (< j@29@01 (Seq_length xs@3@01)))
    (or (= $k@30@01 $Perm.No) (< $Perm.No $k@30@01)))
  
  :qid |quant-u-24122|))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; Check receiver injectivity
(push) ; 4
(assert (not (forall ((j1@29@01 Int) (j2@29@01 Int)) (!
  (=>
    (and
      (and
        (and (<= 0 j1@29@01) (< j1@29@01 (Seq_length xs@3@01)))
        (< $Perm.No $k@30@01))
      (and
        (and (<= 0 j2@29@01) (< j2@29@01 (Seq_length xs@3@01)))
        (< $Perm.No $k@30@01))
      (= (Seq_index xs@3@01 j1@29@01) (Seq_index xs@3@01 j2@29@01)))
    (= j1@29@01 j2@29@01))
  
  :qid |item-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((j@29@01 Int)) (!
  (=>
    (and
      (and (<= 0 j@29@01) (< j@29@01 (Seq_length xs@3@01)))
      (< $Perm.No $k@30@01))
    (and
      (= (inv@31@01 (Seq_index xs@3@01 j@29@01)) j@29@01)
      (img@32@01 (Seq_index xs@3@01 j@29@01))))
  :pattern ((Seq_index xs@3@01 j@29@01))
  :qid |quant-u-24123|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@32@01 r)
      (and
        (and (<= 0 (inv@31@01 r)) (< (inv@31@01 r) (Seq_length xs@3@01)))
        (< $Perm.No $k@30@01)))
    (= (Seq_index xs@3@01 (inv@31@01 r)) r))
  :pattern ((inv@31@01 r))
  :qid |item-fctOfInv|)))
; Permissions are non-negative
(assert (forall ((j@29@01 Int)) (!
  (<= $Perm.No $k@30@01)
  :pattern ((Seq_index xs@3@01 j@29@01))
  :qid |item-permAtLeastZero|)))
; Field permissions are at most one
(assert (forall ((j@29@01 Int)) (!
  (<= $k@30@01 $Perm.Write)
  :pattern ((Seq_index xs@3@01 j@29@01))
  :qid |item-permAtMostOne|)))
; Permission implies non-null receiver
(assert (forall ((j@29@01 Int)) (!
  (=>
    (and
      (and (<= 0 j@29@01) (< j@29@01 (Seq_length xs@3@01)))
      (< $Perm.No $k@30@01))
    (not (= (Seq_index xs@3@01 j@29@01) $Ref.null)))
  :pattern ((Seq_index xs@3@01 j@29@01))
  :qid |item-permImpliesNonNull|)))
(push) ; 4
(set-option :timeout 10)
(assert (not (forall ((r $Ref)) (!
  (and
    (= (Seq_index xs@3@01 j@29@01) (Seq_index xs@3@01 j@9@01))
    (=
      (and
        (img@32@01 r)
        (and (<= 0 (inv@31@01 r)) (< (inv@31@01 r) (Seq_length xs@3@01))))
      (and
        (img@12@01 r)
        (and (<= 0 (inv@11@01 r)) (< (inv@11@01 r) (Seq_length xs@3@01))))))
  
  :qid |quant-u-24124|))))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(assert (=
  ($Snap.second ($Snap.second ($Snap.second $t@28@01)))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@28@01))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@28@01)))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@28@01))))
  $Snap.unit))
; [eval] |res| == |xs| - i
; [eval] |res|
; [eval] |xs| - i
; [eval] |xs|
(assert (= (Seq_length res@27@01) (- (Seq_length xs@3@01) (+ i@4@01 1))))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@28@01))))
  $Snap.unit))
; [eval] (forall j: Int :: { xs[j] } i <= j && j < |xs| ==> res[j - i] == xs[j].item)
(declare-const j@33@01 Int)
(set-option :timeout 0)
(push) ; 4
; [eval] i <= j && j < |xs| ==> res[j - i] == xs[j].item
; [eval] i <= j && j < |xs|
; [eval] i <= j
(push) ; 5
; [then-branch: 17 | !(i@4@01 + 1 <= j@33@01) | live]
; [else-branch: 17 | i@4@01 + 1 <= j@33@01 | live]
(push) ; 6
; [then-branch: 17 | !(i@4@01 + 1 <= j@33@01)]
(assert (not (<= (+ i@4@01 1) j@33@01)))
(pop) ; 6
(push) ; 6
; [else-branch: 17 | i@4@01 + 1 <= j@33@01]
(assert (<= (+ i@4@01 1) j@33@01))
; [eval] j < |xs|
; [eval] |xs|
(pop) ; 6
(pop) ; 5
; Joined path conditions
; Joined path conditions
(assert (or (<= (+ i@4@01 1) j@33@01) (not (<= (+ i@4@01 1) j@33@01))))
(push) ; 5
; [then-branch: 18 | i@4@01 + 1 <= j@33@01 && j@33@01 < |xs@3@01| | live]
; [else-branch: 18 | !(i@4@01 + 1 <= j@33@01 && j@33@01 < |xs@3@01|) | live]
(push) ; 6
; [then-branch: 18 | i@4@01 + 1 <= j@33@01 && j@33@01 < |xs@3@01|]
(assert (and (<= (+ i@4@01 1) j@33@01) (< j@33@01 (Seq_length xs@3@01))))
; [eval] res[j - i] == xs[j].item
; [eval] res[j - i]
; [eval] j - i
(push) ; 7
(assert (not (>= (- j@33@01 (+ i@4@01 1)) 0)))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(push) ; 7
(assert (not (< (- j@33@01 (+ i@4@01 1)) (Seq_length res@27@01))))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
; [eval] xs[j]
(push) ; 7
(assert (not (>= j@33@01 0)))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(declare-const sm@34@01 $FVF<item>)
; Definitional axioms for snapshot map values
(assert (forall ((r $Ref)) (!
  (=>
    (ite
      (and
        (img@12@01 r)
        (and (<= 0 (inv@11@01 r)) (< (inv@11@01 r) (Seq_length xs@3@01))))
      (< $Perm.No (- $k@10@01 (pTaken@26@01 r)))
      false)
    (=
      ($FVF.lookup_item (as sm@34@01  $FVF<item>) r)
      ($FVF.lookup_item ($SortWrappers.$SnapTo$FVF<item> ($Snap.second ($Snap.second ($Snap.second $t@6@01)))) r)))
  :pattern (($FVF.lookup_item (as sm@34@01  $FVF<item>) r))
  :pattern (($FVF.lookup_item ($SortWrappers.$SnapTo$FVF<item> ($Snap.second ($Snap.second ($Snap.second $t@6@01)))) r))
  :qid |qp.fvfValDef1|)))
(assert (forall ((r $Ref)) (!
  (=>
    (ite
      (and
        (img@32@01 r)
        (and (<= 0 (inv@31@01 r)) (< (inv@31@01 r) (Seq_length xs@3@01))))
      (< $Perm.No $k@30@01)
      false)
    (=
      ($FVF.lookup_item (as sm@34@01  $FVF<item>) r)
      ($FVF.lookup_item ($SortWrappers.$SnapTo$FVF<item> ($Snap.first ($Snap.second ($Snap.second $t@28@01)))) r)))
  :pattern (($FVF.lookup_item (as sm@34@01  $FVF<item>) r))
  :pattern (($FVF.lookup_item ($SortWrappers.$SnapTo$FVF<item> ($Snap.first ($Snap.second ($Snap.second $t@28@01)))) r))
  :qid |qp.fvfValDef2|)))
(declare-const pm@35@01 $FPM)
(assert (forall ((r $Ref)) (!
  (=
    ($FVF.perm_item (as pm@35@01  $FPM) r)
    (+
      (ite
        (and
          (img@12@01 r)
          (and (<= 0 (inv@11@01 r)) (< (inv@11@01 r) (Seq_length xs@3@01))))
        (- $k@10@01 (pTaken@26@01 r))
        $Perm.No)
      (ite
        (and
          (img@32@01 r)
          (and (<= 0 (inv@31@01 r)) (< (inv@31@01 r) (Seq_length xs@3@01))))
        $k@30@01
        $Perm.No)))
  :pattern (($FVF.perm_item (as pm@35@01  $FPM) r))
  :qid |qp.resPrmSumDef3|)))
(push) ; 7
(assert (not (< $Perm.No ($FVF.perm_item (as pm@35@01  $FPM) (Seq_index xs@3@01 j@33@01)))))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(pop) ; 6
(push) ; 6
; [else-branch: 18 | !(i@4@01 + 1 <= j@33@01 && j@33@01 < |xs@3@01|)]
(assert (not (and (<= (+ i@4@01 1) j@33@01) (< j@33@01 (Seq_length xs@3@01)))))
(pop) ; 6
(pop) ; 5
; Joined path conditions
(assert (forall ((r $Ref)) (!
  (=>
    (ite
      (and
        (img@12@01 r)
        (and (<= 0 (inv@11@01 r)) (< (inv@11@01 r) (Seq_length xs@3@01))))
      (< $Perm.No (- $k@10@01 (pTaken@26@01 r)))
      false)
    (=
      ($FVF.lookup_item (as sm@34@01  $FVF<item>) r)
      ($FVF.lookup_item ($SortWrappers.$SnapTo$FVF<item> ($Snap.second ($Snap.second ($Snap.second $t@6@01)))) r)))
  :pattern (($FVF.lookup_item (as sm@34@01  $FVF<item>) r))
  :pattern (($FVF.lookup_item ($SortWrappers.$SnapTo$FVF<item> ($Snap.second ($Snap.second ($Snap.second $t@6@01)))) r))
  :qid |qp.fvfValDef1|)))
(assert (forall ((r $Ref)) (!
  (=>
    (ite
      (and
        (img@32@01 r)
        (and (<= 0 (inv@31@01 r)) (< (inv@31@01 r) (Seq_length xs@3@01))))
      (< $Perm.No $k@30@01)
      false)
    (=
      ($FVF.lookup_item (as sm@34@01  $FVF<item>) r)
      ($FVF.lookup_item ($SortWrappers.$SnapTo$FVF<item> ($Snap.first ($Snap.second ($Snap.second $t@28@01)))) r)))
  :pattern (($FVF.lookup_item (as sm@34@01  $FVF<item>) r))
  :pattern (($FVF.lookup_item ($SortWrappers.$SnapTo$FVF<item> ($Snap.first ($Snap.second ($Snap.second $t@28@01)))) r))
  :qid |qp.fvfValDef2|)))
(assert (forall ((r $Ref)) (!
  (=
    ($FVF.perm_item (as pm@35@01  $FPM) r)
    (+
      (ite
        (and
          (img@12@01 r)
          (and (<= 0 (inv@11@01 r)) (< (inv@11@01 r) (Seq_length xs@3@01))))
        (- $k@10@01 (pTaken@26@01 r))
        $Perm.No)
      (ite
        (and
          (img@32@01 r)
          (and (<= 0 (inv@31@01 r)) (< (inv@31@01 r) (Seq_length xs@3@01))))
        $k@30@01
        $Perm.No)))
  :pattern (($FVF.perm_item (as pm@35@01  $FPM) r))
  :qid |qp.resPrmSumDef3|)))
; Joined path conditions
(assert (or
  (not (and (<= (+ i@4@01 1) j@33@01) (< j@33@01 (Seq_length xs@3@01))))
  (and (<= (+ i@4@01 1) j@33@01) (< j@33@01 (Seq_length xs@3@01)))))
(pop) ; 4
; Nested auxiliary terms: globals (aux)
(assert (forall ((r $Ref)) (!
  (=>
    (ite
      (and
        (img@12@01 r)
        (and (<= 0 (inv@11@01 r)) (< (inv@11@01 r) (Seq_length xs@3@01))))
      (< $Perm.No (- $k@10@01 (pTaken@26@01 r)))
      false)
    (=
      ($FVF.lookup_item (as sm@34@01  $FVF<item>) r)
      ($FVF.lookup_item ($SortWrappers.$SnapTo$FVF<item> ($Snap.second ($Snap.second ($Snap.second $t@6@01)))) r)))
  :pattern (($FVF.lookup_item (as sm@34@01  $FVF<item>) r))
  :pattern (($FVF.lookup_item ($SortWrappers.$SnapTo$FVF<item> ($Snap.second ($Snap.second ($Snap.second $t@6@01)))) r))
  :qid |qp.fvfValDef1|)))
(assert (forall ((r $Ref)) (!
  (=>
    (ite
      (and
        (img@32@01 r)
        (and (<= 0 (inv@31@01 r)) (< (inv@31@01 r) (Seq_length xs@3@01))))
      (< $Perm.No $k@30@01)
      false)
    (=
      ($FVF.lookup_item (as sm@34@01  $FVF<item>) r)
      ($FVF.lookup_item ($SortWrappers.$SnapTo$FVF<item> ($Snap.first ($Snap.second ($Snap.second $t@28@01)))) r)))
  :pattern (($FVF.lookup_item (as sm@34@01  $FVF<item>) r))
  :pattern (($FVF.lookup_item ($SortWrappers.$SnapTo$FVF<item> ($Snap.first ($Snap.second ($Snap.second $t@28@01)))) r))
  :qid |qp.fvfValDef2|)))
(assert (forall ((r $Ref)) (!
  (=
    ($FVF.perm_item (as pm@35@01  $FPM) r)
    (+
      (ite
        (and
          (img@12@01 r)
          (and (<= 0 (inv@11@01 r)) (< (inv@11@01 r) (Seq_length xs@3@01))))
        (- $k@10@01 (pTaken@26@01 r))
        $Perm.No)
      (ite
        (and
          (img@32@01 r)
          (and (<= 0 (inv@31@01 r)) (< (inv@31@01 r) (Seq_length xs@3@01))))
        $k@30@01
        $Perm.No)))
  :pattern (($FVF.perm_item (as pm@35@01  $FPM) r))
  :qid |qp.resPrmSumDef3|)))
; Nested auxiliary terms: non-globals (aux)
(assert (forall ((j@33@01 Int)) (!
  (and
    (or (<= (+ i@4@01 1) j@33@01) (not (<= (+ i@4@01 1) j@33@01)))
    (or
      (not (and (<= (+ i@4@01 1) j@33@01) (< j@33@01 (Seq_length xs@3@01))))
      (and (<= (+ i@4@01 1) j@33@01) (< j@33@01 (Seq_length xs@3@01)))))
  :pattern ((Seq_index xs@3@01 j@33@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/all/issues/silicon/0512.vpr@38@12@38@76-aux|)))
(assert (forall ((j@33@01 Int)) (!
  (=>
    (and (<= (+ i@4@01 1) j@33@01) (< j@33@01 (Seq_length xs@3@01)))
    (=
      (Seq_index res@27@01 (- j@33@01 (+ i@4@01 1)))
      ($FVF.lookup_item (as sm@34@01  $FVF<item>) (Seq_index xs@3@01 j@33@01))))
  :pattern ((Seq_index xs@3@01 j@33@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/all/issues/silicon/0512.vpr@38@12@38@76|)))
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
; [exec]
; res := Seq(xs[i].item) ++ tail
; [eval] Seq(xs[i].item) ++ tail
; [eval] Seq(xs[i].item)
; [eval] xs[i]
(set-option :timeout 0)
(push) ; 4
(assert (not (>= i@4@01 0)))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(assert (and
  (forall ((r $Ref)) (!
    (=>
      (ite
        (and
          (img@12@01 r)
          (and (<= 0 (inv@11@01 r)) (< (inv@11@01 r) (Seq_length xs@3@01))))
        (< $Perm.No (- $k@10@01 (pTaken@26@01 r)))
        false)
      (=
        ($FVF.lookup_item (as sm@34@01  $FVF<item>) r)
        ($FVF.lookup_item ($SortWrappers.$SnapTo$FVF<item> ($Snap.second ($Snap.second ($Snap.second $t@6@01)))) r)))
    :pattern (($FVF.lookup_item (as sm@34@01  $FVF<item>) r))
    :pattern (($FVF.lookup_item ($SortWrappers.$SnapTo$FVF<item> ($Snap.second ($Snap.second ($Snap.second $t@6@01)))) r))
    :qid |qp.fvfValDef1|))
  (forall ((r $Ref)) (!
    (=>
      (ite
        (and
          (img@32@01 r)
          (and (<= 0 (inv@31@01 r)) (< (inv@31@01 r) (Seq_length xs@3@01))))
        (< $Perm.No $k@30@01)
        false)
      (=
        ($FVF.lookup_item (as sm@34@01  $FVF<item>) r)
        ($FVF.lookup_item ($SortWrappers.$SnapTo$FVF<item> ($Snap.first ($Snap.second ($Snap.second $t@28@01)))) r)))
    :pattern (($FVF.lookup_item (as sm@34@01  $FVF<item>) r))
    :pattern (($FVF.lookup_item ($SortWrappers.$SnapTo$FVF<item> ($Snap.first ($Snap.second ($Snap.second $t@28@01)))) r))
    :qid |qp.fvfValDef2|))))
(push) ; 4
(assert (not (<
  $Perm.No
  (+
    (ite
      (and
        (img@12@01 (Seq_index xs@3@01 i@4@01))
        (and
          (<= 0 (inv@11@01 (Seq_index xs@3@01 i@4@01)))
          (< (inv@11@01 (Seq_index xs@3@01 i@4@01)) (Seq_length xs@3@01))))
      (- $k@10@01 (pTaken@26@01 (Seq_index xs@3@01 i@4@01)))
      $Perm.No)
    (ite
      (and
        (img@32@01 (Seq_index xs@3@01 i@4@01))
        (and
          (<= 0 (inv@31@01 (Seq_index xs@3@01 i@4@01)))
          (< (inv@31@01 (Seq_index xs@3@01 i@4@01)) (Seq_length xs@3@01))))
      $k@30@01
      $Perm.No)))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(assert (=
  (Seq_length
    (Seq_singleton ($FVF.lookup_item (as sm@34@01  $FVF<item>) (Seq_index
      xs@3@01
      i@4@01))))
  1))
(declare-const res@36@01 Seq<Int>)
(assert (=
  res@36@01
  (Seq_append
    (Seq_singleton ($FVF.lookup_item (as sm@34@01  $FVF<item>) (Seq_index
      xs@3@01
      i@4@01)))
    res@27@01)))
; [eval] 0 <= i
; [eval] i <= |xs|
; [eval] |xs|
(declare-const j@37@01 Int)
(push) ; 4
; [eval] 0 <= j && j < |xs|
; [eval] 0 <= j
(push) ; 5
; [then-branch: 19 | !(0 <= j@37@01) | live]
; [else-branch: 19 | 0 <= j@37@01 | live]
(push) ; 6
; [then-branch: 19 | !(0 <= j@37@01)]
(assert (not (<= 0 j@37@01)))
(pop) ; 6
(push) ; 6
; [else-branch: 19 | 0 <= j@37@01]
(assert (<= 0 j@37@01))
; [eval] j < |xs|
; [eval] |xs|
(pop) ; 6
(pop) ; 5
; Joined path conditions
; Joined path conditions
(assert (or (<= 0 j@37@01) (not (<= 0 j@37@01))))
(assert (and (<= 0 j@37@01) (< j@37@01 (Seq_length xs@3@01))))
(declare-const $k@38@01 $Perm)
(assert ($Perm.isReadVar $k@38@01))
; [eval] xs[j]
(push) ; 5
(assert (not (>= j@37@01 0)))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(pop) ; 4
(declare-fun inv@39@01 ($Ref) Int)
(declare-fun img@40@01 ($Ref) Bool)
; Nested auxiliary terms: globals
(assert ($Perm.isReadVar $k@38@01))
; Nested auxiliary terms: non-globals
(assert (forall ((j@37@01 Int)) (!
  (=>
    (and (<= 0 j@37@01) (< j@37@01 (Seq_length xs@3@01)))
    (or (<= 0 j@37@01) (not (<= 0 j@37@01))))
  :pattern ((Seq_index xs@3@01 j@37@01))
  :qid |item-aux|)))
(push) ; 4
(assert (not (forall ((j@37@01 Int)) (!
  (=>
    (and (<= 0 j@37@01) (< j@37@01 (Seq_length xs@3@01)))
    (or (= $k@38@01 $Perm.No) (< $Perm.No $k@38@01)))
  
  :qid |quant-u-24125|))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; Check receiver injectivity
(push) ; 4
(assert (not (forall ((j1@37@01 Int) (j2@37@01 Int)) (!
  (=>
    (and
      (and
        (and (<= 0 j1@37@01) (< j1@37@01 (Seq_length xs@3@01)))
        (< $Perm.No $k@38@01))
      (and
        (and (<= 0 j2@37@01) (< j2@37@01 (Seq_length xs@3@01)))
        (< $Perm.No $k@38@01))
      (= (Seq_index xs@3@01 j1@37@01) (Seq_index xs@3@01 j2@37@01)))
    (= j1@37@01 j2@37@01))
  
  :qid |item-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((j@37@01 Int)) (!
  (=>
    (and
      (and (<= 0 j@37@01) (< j@37@01 (Seq_length xs@3@01)))
      (< $Perm.No $k@38@01))
    (and
      (= (inv@39@01 (Seq_index xs@3@01 j@37@01)) j@37@01)
      (img@40@01 (Seq_index xs@3@01 j@37@01))))
  :pattern ((Seq_index xs@3@01 j@37@01))
  :qid |item-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@40@01 r)
      (and
        (and (<= 0 (inv@39@01 r)) (< (inv@39@01 r) (Seq_length xs@3@01)))
        (< $Perm.No $k@38@01)))
    (= (Seq_index xs@3@01 (inv@39@01 r)) r))
  :pattern ((inv@39@01 r))
  :qid |item-fctOfInv|)))
; Precomputing data for removing quantified permissions
(define-fun pTaken@41@01 ((r $Ref)) $Perm
  (ite
    (and
      (and (<= 0 (inv@39@01 r)) (< (inv@39@01 r) (Seq_length xs@3@01)))
      (img@40@01 r)
      (= r (Seq_index xs@3@01 (inv@39@01 r))))
    ($Perm.min
      (ite
        (and
          (img@12@01 r)
          (and (<= 0 (inv@11@01 r)) (< (inv@11@01 r) (Seq_length xs@3@01))))
        (- $k@10@01 (pTaken@26@01 r))
        $Perm.No)
      $k@38@01)
    $Perm.No))
(define-fun pTaken@42@01 ((r $Ref)) $Perm
  (ite
    (and
      (and (<= 0 (inv@39@01 r)) (< (inv@39@01 r) (Seq_length xs@3@01)))
      (img@40@01 r)
      (= r (Seq_index xs@3@01 (inv@39@01 r))))
    ($Perm.min
      (ite
        (and
          (img@32@01 r)
          (and (<= 0 (inv@31@01 r)) (< (inv@31@01 r) (Seq_length xs@3@01))))
        $k@30@01
        $Perm.No)
      (- $k@38@01 (pTaken@41@01 r)))
    $Perm.No))
; Done precomputing, updating quantified chunks
; State saturation: before repetition
(set-option :timeout 10)
(check-sat)
; unknown
; Constrain original permissions $k@38@01
(assert (forall ((r $Ref)) (!
  (=>
    (not
      (=
        (ite
          (and
            (img@12@01 r)
            (and (<= 0 (inv@11@01 r)) (< (inv@11@01 r) (Seq_length xs@3@01))))
          (- $k@10@01 (pTaken@26@01 r))
          $Perm.No)
        $Perm.No))
    (ite
      (and
        (img@12@01 r)
        (and (<= 0 (inv@11@01 r)) (< (inv@11@01 r) (Seq_length xs@3@01))))
      (<
        (ite
          (and
            (and (<= 0 (inv@39@01 r)) (< (inv@39@01 r) (Seq_length xs@3@01)))
            (img@40@01 r)
            (= r (Seq_index xs@3@01 (inv@39@01 r))))
          $k@38@01
          $Perm.No)
        (- $k@10@01 (pTaken@26@01 r)))
      (<
        (ite
          (and
            (and (<= 0 (inv@39@01 r)) (< (inv@39@01 r) (Seq_length xs@3@01)))
            (img@40@01 r)
            (= r (Seq_index xs@3@01 (inv@39@01 r))))
          $k@38@01
          $Perm.No)
        $Perm.No)))
  :pattern ((img@12@01 r))
  :pattern ((inv@11@01 r))
  :pattern ((img@40@01 r))
  :pattern ((Seq_index xs@3@01 (inv@39@01 r)))
  :qid |qp.srp4|)))
; Intermediate check if already taken enough permissions
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 500)
(assert (not (forall ((r $Ref)) (!
  (=>
    (and
      (and (<= 0 (inv@39@01 r)) (< (inv@39@01 r) (Seq_length xs@3@01)))
      (img@40@01 r)
      (= r (Seq_index xs@3@01 (inv@39@01 r))))
    (= (- $k@38@01 (pTaken@41@01 r)) $Perm.No))
  
  :qid |quant-u-24128|))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; Final check if taken enough permissions
; Done removing quantified permissions
; [eval] |res| == |xs| - i
; [eval] |res|
; [eval] |xs| - i
; [eval] |xs|
(set-option :timeout 0)
(push) ; 4
(assert (not (= (Seq_length res@36@01) (- (Seq_length xs@3@01) i@4@01))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(assert (= (Seq_length res@36@01) (- (Seq_length xs@3@01) i@4@01)))
; [eval] (forall j: Int :: { xs[j] } i <= j && j < |xs| ==> res[j - i] == xs[j].item)
(declare-const j@43@01 Int)
(push) ; 4
; [eval] i <= j && j < |xs| ==> res[j - i] == xs[j].item
; [eval] i <= j && j < |xs|
; [eval] i <= j
(push) ; 5
; [then-branch: 20 | !(i@4@01 <= j@43@01) | live]
; [else-branch: 20 | i@4@01 <= j@43@01 | live]
(push) ; 6
; [then-branch: 20 | !(i@4@01 <= j@43@01)]
(assert (not (<= i@4@01 j@43@01)))
(pop) ; 6
(push) ; 6
; [else-branch: 20 | i@4@01 <= j@43@01]
(assert (<= i@4@01 j@43@01))
; [eval] j < |xs|
; [eval] |xs|
(pop) ; 6
(pop) ; 5
; Joined path conditions
; Joined path conditions
(assert (or (<= i@4@01 j@43@01) (not (<= i@4@01 j@43@01))))
(push) ; 5
; [then-branch: 21 | i@4@01 <= j@43@01 && j@43@01 < |xs@3@01| | live]
; [else-branch: 21 | !(i@4@01 <= j@43@01 && j@43@01 < |xs@3@01|) | live]
(push) ; 6
; [then-branch: 21 | i@4@01 <= j@43@01 && j@43@01 < |xs@3@01|]
(assert (and (<= i@4@01 j@43@01) (< j@43@01 (Seq_length xs@3@01))))
; [eval] res[j - i] == xs[j].item
; [eval] res[j - i]
; [eval] j - i
(push) ; 7
(assert (not (>= (- j@43@01 i@4@01) 0)))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(push) ; 7
(assert (not (< (- j@43@01 i@4@01) (Seq_length res@36@01))))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
; [eval] xs[j]
(push) ; 7
(assert (not (>= j@43@01 0)))
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
          (img@12@01 r)
          (and (<= 0 (inv@11@01 r)) (< (inv@11@01 r) (Seq_length xs@3@01))))
        (< $Perm.No (- $k@10@01 (pTaken@26@01 r)))
        false)
      (=
        ($FVF.lookup_item (as sm@34@01  $FVF<item>) r)
        ($FVF.lookup_item ($SortWrappers.$SnapTo$FVF<item> ($Snap.second ($Snap.second ($Snap.second $t@6@01)))) r)))
    :pattern (($FVF.lookup_item (as sm@34@01  $FVF<item>) r))
    :pattern (($FVF.lookup_item ($SortWrappers.$SnapTo$FVF<item> ($Snap.second ($Snap.second ($Snap.second $t@6@01)))) r))
    :qid |qp.fvfValDef1|))
  (forall ((r $Ref)) (!
    (=>
      (ite
        (and
          (img@32@01 r)
          (and (<= 0 (inv@31@01 r)) (< (inv@31@01 r) (Seq_length xs@3@01))))
        (< $Perm.No $k@30@01)
        false)
      (=
        ($FVF.lookup_item (as sm@34@01  $FVF<item>) r)
        ($FVF.lookup_item ($SortWrappers.$SnapTo$FVF<item> ($Snap.first ($Snap.second ($Snap.second $t@28@01)))) r)))
    :pattern (($FVF.lookup_item (as sm@34@01  $FVF<item>) r))
    :pattern (($FVF.lookup_item ($SortWrappers.$SnapTo$FVF<item> ($Snap.first ($Snap.second ($Snap.second $t@28@01)))) r))
    :qid |qp.fvfValDef2|))))
(push) ; 7
(assert (not (<
  $Perm.No
  (+
    (ite
      (and
        (img@12@01 (Seq_index xs@3@01 j@43@01))
        (and
          (<= 0 (inv@11@01 (Seq_index xs@3@01 j@43@01)))
          (< (inv@11@01 (Seq_index xs@3@01 j@43@01)) (Seq_length xs@3@01))))
      (- $k@10@01 (pTaken@26@01 (Seq_index xs@3@01 j@43@01)))
      $Perm.No)
    (ite
      (and
        (img@32@01 (Seq_index xs@3@01 j@43@01))
        (and
          (<= 0 (inv@31@01 (Seq_index xs@3@01 j@43@01)))
          (< (inv@31@01 (Seq_index xs@3@01 j@43@01)) (Seq_length xs@3@01))))
      $k@30@01
      $Perm.No)))))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(pop) ; 6
(push) ; 6
; [else-branch: 21 | !(i@4@01 <= j@43@01 && j@43@01 < |xs@3@01|)]
(assert (not (and (<= i@4@01 j@43@01) (< j@43@01 (Seq_length xs@3@01)))))
(pop) ; 6
(pop) ; 5
; Joined path conditions
(assert (forall ((r $Ref)) (!
  (=>
    (ite
      (and
        (img@12@01 r)
        (and (<= 0 (inv@11@01 r)) (< (inv@11@01 r) (Seq_length xs@3@01))))
      (< $Perm.No (- $k@10@01 (pTaken@26@01 r)))
      false)
    (=
      ($FVF.lookup_item (as sm@34@01  $FVF<item>) r)
      ($FVF.lookup_item ($SortWrappers.$SnapTo$FVF<item> ($Snap.second ($Snap.second ($Snap.second $t@6@01)))) r)))
  :pattern (($FVF.lookup_item (as sm@34@01  $FVF<item>) r))
  :pattern (($FVF.lookup_item ($SortWrappers.$SnapTo$FVF<item> ($Snap.second ($Snap.second ($Snap.second $t@6@01)))) r))
  :qid |qp.fvfValDef1|)))
(assert (forall ((r $Ref)) (!
  (=>
    (ite
      (and
        (img@32@01 r)
        (and (<= 0 (inv@31@01 r)) (< (inv@31@01 r) (Seq_length xs@3@01))))
      (< $Perm.No $k@30@01)
      false)
    (=
      ($FVF.lookup_item (as sm@34@01  $FVF<item>) r)
      ($FVF.lookup_item ($SortWrappers.$SnapTo$FVF<item> ($Snap.first ($Snap.second ($Snap.second $t@28@01)))) r)))
  :pattern (($FVF.lookup_item (as sm@34@01  $FVF<item>) r))
  :pattern (($FVF.lookup_item ($SortWrappers.$SnapTo$FVF<item> ($Snap.first ($Snap.second ($Snap.second $t@28@01)))) r))
  :qid |qp.fvfValDef2|)))
; Joined path conditions
(assert (or
  (not (and (<= i@4@01 j@43@01) (< j@43@01 (Seq_length xs@3@01))))
  (and (<= i@4@01 j@43@01) (< j@43@01 (Seq_length xs@3@01)))))
(pop) ; 4
; Nested auxiliary terms: globals (aux)
(assert (forall ((r $Ref)) (!
  (=>
    (ite
      (and
        (img@12@01 r)
        (and (<= 0 (inv@11@01 r)) (< (inv@11@01 r) (Seq_length xs@3@01))))
      (< $Perm.No (- $k@10@01 (pTaken@26@01 r)))
      false)
    (=
      ($FVF.lookup_item (as sm@34@01  $FVF<item>) r)
      ($FVF.lookup_item ($SortWrappers.$SnapTo$FVF<item> ($Snap.second ($Snap.second ($Snap.second $t@6@01)))) r)))
  :pattern (($FVF.lookup_item (as sm@34@01  $FVF<item>) r))
  :pattern (($FVF.lookup_item ($SortWrappers.$SnapTo$FVF<item> ($Snap.second ($Snap.second ($Snap.second $t@6@01)))) r))
  :qid |qp.fvfValDef1|)))
(assert (forall ((r $Ref)) (!
  (=>
    (ite
      (and
        (img@32@01 r)
        (and (<= 0 (inv@31@01 r)) (< (inv@31@01 r) (Seq_length xs@3@01))))
      (< $Perm.No $k@30@01)
      false)
    (=
      ($FVF.lookup_item (as sm@34@01  $FVF<item>) r)
      ($FVF.lookup_item ($SortWrappers.$SnapTo$FVF<item> ($Snap.first ($Snap.second ($Snap.second $t@28@01)))) r)))
  :pattern (($FVF.lookup_item (as sm@34@01  $FVF<item>) r))
  :pattern (($FVF.lookup_item ($SortWrappers.$SnapTo$FVF<item> ($Snap.first ($Snap.second ($Snap.second $t@28@01)))) r))
  :qid |qp.fvfValDef2|)))
; Nested auxiliary terms: non-globals (aux)
(assert (forall ((j@43@01 Int)) (!
  (and
    (or (<= i@4@01 j@43@01) (not (<= i@4@01 j@43@01)))
    (or
      (not (and (<= i@4@01 j@43@01) (< j@43@01 (Seq_length xs@3@01))))
      (and (<= i@4@01 j@43@01) (< j@43@01 (Seq_length xs@3@01)))))
  :pattern ((Seq_index xs@3@01 j@43@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/all/issues/silicon/0512.vpr@38@12@38@76-aux|)))
(push) ; 4
(assert (not (forall ((j@43@01 Int)) (!
  (=>
    (and (<= i@4@01 j@43@01) (< j@43@01 (Seq_length xs@3@01)))
    (=
      (Seq_index res@36@01 (- j@43@01 i@4@01))
      ($FVF.lookup_item (as sm@34@01  $FVF<item>) (Seq_index xs@3@01 j@43@01))))
  :pattern ((Seq_index xs@3@01 j@43@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/all/issues/silicon/0512.vpr@38@12@38@76|))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(assert (forall ((j@43@01 Int)) (!
  (=>
    (and (<= i@4@01 j@43@01) (< j@43@01 (Seq_length xs@3@01)))
    (=
      (Seq_index res@36@01 (- j@43@01 i@4@01))
      ($FVF.lookup_item (as sm@34@01  $FVF<item>) (Seq_index xs@3@01 j@43@01))))
  :pattern ((Seq_index xs@3@01 j@43@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/all/issues/silicon/0512.vpr@38@12@38@76|)))
(pop) ; 3
(push) ; 3
; [else-branch: 9 | !(i@4@01 < |xs@3@01|)]
(assert (not (< i@4@01 (Seq_length xs@3@01))))
(pop) ; 3
; [eval] !(i < |xs|)
; [eval] i < |xs|
; [eval] |xs|
(push) ; 3
(set-option :timeout 10)
(assert (not (< i@4@01 (Seq_length xs@3@01))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (not (< i@4@01 (Seq_length xs@3@01)))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; [then-branch: 22 | !(i@4@01 < |xs@3@01|) | live]
; [else-branch: 22 | i@4@01 < |xs@3@01| | live]
(set-option :timeout 0)
(push) ; 3
; [then-branch: 22 | !(i@4@01 < |xs@3@01|)]
(assert (not (< i@4@01 (Seq_length xs@3@01))))
; [exec]
; res := Seq[Int]()
; [eval] Seq[Int]()
; [eval] 0 <= i
; [eval] i <= |xs|
; [eval] |xs|
(declare-const j@44@01 Int)
(push) ; 4
; [eval] 0 <= j && j < |xs|
; [eval] 0 <= j
(push) ; 5
; [then-branch: 23 | !(0 <= j@44@01) | live]
; [else-branch: 23 | 0 <= j@44@01 | live]
(push) ; 6
; [then-branch: 23 | !(0 <= j@44@01)]
(assert (not (<= 0 j@44@01)))
(pop) ; 6
(push) ; 6
; [else-branch: 23 | 0 <= j@44@01]
(assert (<= 0 j@44@01))
; [eval] j < |xs|
; [eval] |xs|
(pop) ; 6
(pop) ; 5
; Joined path conditions
; Joined path conditions
(assert (or (<= 0 j@44@01) (not (<= 0 j@44@01))))
(assert (and (<= 0 j@44@01) (< j@44@01 (Seq_length xs@3@01))))
(declare-const $k@45@01 $Perm)
(assert ($Perm.isReadVar $k@45@01))
; [eval] xs[j]
(push) ; 5
(assert (not (>= j@44@01 0)))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(pop) ; 4
(declare-fun inv@46@01 ($Ref) Int)
(declare-fun img@47@01 ($Ref) Bool)
; Nested auxiliary terms: globals
(assert ($Perm.isReadVar $k@45@01))
; Nested auxiliary terms: non-globals
(assert (forall ((j@44@01 Int)) (!
  (=>
    (and (<= 0 j@44@01) (< j@44@01 (Seq_length xs@3@01)))
    (or (<= 0 j@44@01) (not (<= 0 j@44@01))))
  :pattern ((Seq_index xs@3@01 j@44@01))
  :qid |item-aux|)))
(push) ; 4
(assert (not (forall ((j@44@01 Int)) (!
  (=>
    (and (<= 0 j@44@01) (< j@44@01 (Seq_length xs@3@01)))
    (or (= $k@45@01 $Perm.No) (< $Perm.No $k@45@01)))
  
  :qid |quant-u-24129|))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; Check receiver injectivity
(push) ; 4
(assert (not (forall ((j1@44@01 Int) (j2@44@01 Int)) (!
  (=>
    (and
      (and
        (and (<= 0 j1@44@01) (< j1@44@01 (Seq_length xs@3@01)))
        (< $Perm.No $k@45@01))
      (and
        (and (<= 0 j2@44@01) (< j2@44@01 (Seq_length xs@3@01)))
        (< $Perm.No $k@45@01))
      (= (Seq_index xs@3@01 j1@44@01) (Seq_index xs@3@01 j2@44@01)))
    (= j1@44@01 j2@44@01))
  
  :qid |item-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((j@44@01 Int)) (!
  (=>
    (and
      (and (<= 0 j@44@01) (< j@44@01 (Seq_length xs@3@01)))
      (< $Perm.No $k@45@01))
    (and
      (= (inv@46@01 (Seq_index xs@3@01 j@44@01)) j@44@01)
      (img@47@01 (Seq_index xs@3@01 j@44@01))))
  :pattern ((Seq_index xs@3@01 j@44@01))
  :qid |item-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@47@01 r)
      (and
        (and (<= 0 (inv@46@01 r)) (< (inv@46@01 r) (Seq_length xs@3@01)))
        (< $Perm.No $k@45@01)))
    (= (Seq_index xs@3@01 (inv@46@01 r)) r))
  :pattern ((inv@46@01 r))
  :qid |item-fctOfInv|)))
; Precomputing data for removing quantified permissions
(define-fun pTaken@48@01 ((r $Ref)) $Perm
  (ite
    (and
      (and (<= 0 (inv@46@01 r)) (< (inv@46@01 r) (Seq_length xs@3@01)))
      (img@47@01 r)
      (= r (Seq_index xs@3@01 (inv@46@01 r))))
    ($Perm.min
      (ite
        (and
          (img@12@01 r)
          (and (<= 0 (inv@11@01 r)) (< (inv@11@01 r) (Seq_length xs@3@01))))
        $k@10@01
        $Perm.No)
      $k@45@01)
    $Perm.No))
; Done precomputing, updating quantified chunks
; State saturation: before repetition
(set-option :timeout 10)
(check-sat)
; unknown
; Constrain original permissions $k@45@01
(assert (forall ((r $Ref)) (!
  (=>
    (not
      (=
        (ite
          (and
            (img@12@01 r)
            (and (<= 0 (inv@11@01 r)) (< (inv@11@01 r) (Seq_length xs@3@01))))
          $k@10@01
          $Perm.No)
        $Perm.No))
    (ite
      (and
        (img@12@01 r)
        (and (<= 0 (inv@11@01 r)) (< (inv@11@01 r) (Seq_length xs@3@01))))
      (<
        (ite
          (and
            (and (<= 0 (inv@46@01 r)) (< (inv@46@01 r) (Seq_length xs@3@01)))
            (img@47@01 r)
            (= r (Seq_index xs@3@01 (inv@46@01 r))))
          $k@45@01
          $Perm.No)
        $k@10@01)
      (<
        (ite
          (and
            (and (<= 0 (inv@46@01 r)) (< (inv@46@01 r) (Seq_length xs@3@01)))
            (img@47@01 r)
            (= r (Seq_index xs@3@01 (inv@46@01 r))))
          $k@45@01
          $Perm.No)
        $Perm.No)))
  :pattern ((img@12@01 r))
  :pattern ((inv@11@01 r))
  :pattern ((img@47@01 r))
  :pattern ((Seq_index xs@3@01 (inv@46@01 r)))
  :qid |qp.srp5|)))
; Intermediate check if already taken enough permissions
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 500)
(assert (not (forall ((r $Ref)) (!
  (=>
    (and
      (and (<= 0 (inv@46@01 r)) (< (inv@46@01 r) (Seq_length xs@3@01)))
      (img@47@01 r)
      (= r (Seq_index xs@3@01 (inv@46@01 r))))
    (= (- $k@45@01 (pTaken@48@01 r)) $Perm.No))
  
  :qid |quant-u-24132|))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; Final check if taken enough permissions
; Done removing quantified permissions
; [eval] |res| == |xs| - i
; [eval] |res|
; [eval] |xs| - i
; [eval] |xs|
(set-option :timeout 0)
(push) ; 4
(assert (not (= (Seq_length (as Seq_empty  Seq<Int>)) (- (Seq_length xs@3@01) i@4@01))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(assert (= (Seq_length (as Seq_empty  Seq<Int>)) (- (Seq_length xs@3@01) i@4@01)))
; [eval] (forall j: Int :: { xs[j] } i <= j && j < |xs| ==> res[j - i] == xs[j].item)
(declare-const j@49@01 Int)
(push) ; 4
; [eval] i <= j && j < |xs| ==> res[j - i] == xs[j].item
; [eval] i <= j && j < |xs|
; [eval] i <= j
(push) ; 5
; [then-branch: 24 | !(i@4@01 <= j@49@01) | live]
; [else-branch: 24 | i@4@01 <= j@49@01 | live]
(push) ; 6
; [then-branch: 24 | !(i@4@01 <= j@49@01)]
(assert (not (<= i@4@01 j@49@01)))
(pop) ; 6
(push) ; 6
; [else-branch: 24 | i@4@01 <= j@49@01]
(assert (<= i@4@01 j@49@01))
; [eval] j < |xs|
; [eval] |xs|
(pop) ; 6
(pop) ; 5
; Joined path conditions
; Joined path conditions
(assert (or (<= i@4@01 j@49@01) (not (<= i@4@01 j@49@01))))
(push) ; 5
; [then-branch: 25 | i@4@01 <= j@49@01 && j@49@01 < |xs@3@01| | live]
; [else-branch: 25 | !(i@4@01 <= j@49@01 && j@49@01 < |xs@3@01|) | live]
(push) ; 6
; [then-branch: 25 | i@4@01 <= j@49@01 && j@49@01 < |xs@3@01|]
(assert (and (<= i@4@01 j@49@01) (< j@49@01 (Seq_length xs@3@01))))
; [eval] res[j - i] == xs[j].item
; [eval] res[j - i]
; [eval] j - i
(push) ; 7
(assert (not (>= (- j@49@01 i@4@01) 0)))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(push) ; 7
(assert (not (< (- j@49@01 i@4@01) (Seq_length (as Seq_empty  Seq<Int>)))))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
; [eval] xs[j]
(push) ; 7
(assert (not (>= j@49@01 0)))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(push) ; 7
(assert (not (ite
  (and
    (img@12@01 (Seq_index xs@3@01 j@49@01))
    (and
      (<= 0 (inv@11@01 (Seq_index xs@3@01 j@49@01)))
      (< (inv@11@01 (Seq_index xs@3@01 j@49@01)) (Seq_length xs@3@01))))
  (< $Perm.No $k@10@01)
  false)))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(pop) ; 6
(push) ; 6
; [else-branch: 25 | !(i@4@01 <= j@49@01 && j@49@01 < |xs@3@01|)]
(assert (not (and (<= i@4@01 j@49@01) (< j@49@01 (Seq_length xs@3@01)))))
(pop) ; 6
(pop) ; 5
; Joined path conditions
; Joined path conditions
(assert (or
  (not (and (<= i@4@01 j@49@01) (< j@49@01 (Seq_length xs@3@01))))
  (and (<= i@4@01 j@49@01) (< j@49@01 (Seq_length xs@3@01)))))
(pop) ; 4
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall ((j@49@01 Int)) (!
  (and
    (or (<= i@4@01 j@49@01) (not (<= i@4@01 j@49@01)))
    (or
      (not (and (<= i@4@01 j@49@01) (< j@49@01 (Seq_length xs@3@01))))
      (and (<= i@4@01 j@49@01) (< j@49@01 (Seq_length xs@3@01)))))
  :pattern ((Seq_index xs@3@01 j@49@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/all/issues/silicon/0512.vpr@38@12@38@76-aux|)))
(push) ; 4
(assert (not (forall ((j@49@01 Int)) (!
  (=>
    (and (<= i@4@01 j@49@01) (< j@49@01 (Seq_length xs@3@01)))
    (=
      (Seq_index (as Seq_empty  Seq<Int>) (- j@49@01 i@4@01))
      ($FVF.lookup_item ($SortWrappers.$SnapTo$FVF<item> ($Snap.second ($Snap.second ($Snap.second $t@6@01)))) (Seq_index
        xs@3@01
        j@49@01))))
  :pattern ((Seq_index xs@3@01 j@49@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/all/issues/silicon/0512.vpr@38@12@38@76|))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(assert (forall ((j@49@01 Int)) (!
  (=>
    (and (<= i@4@01 j@49@01) (< j@49@01 (Seq_length xs@3@01)))
    (=
      (Seq_index (as Seq_empty  Seq<Int>) (- j@49@01 i@4@01))
      ($FVF.lookup_item ($SortWrappers.$SnapTo$FVF<item> ($Snap.second ($Snap.second ($Snap.second $t@6@01)))) (Seq_index
        xs@3@01
        j@49@01))))
  :pattern ((Seq_index xs@3@01 j@49@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/all/issues/silicon/0512.vpr@38@12@38@76|)))
(pop) ; 3
(push) ; 3
; [else-branch: 22 | i@4@01 < |xs@3@01|]
(assert (< i@4@01 (Seq_length xs@3@01)))
(pop) ; 3
(pop) ; 2
(pop) ; 1
; ---------- method_seqToSeqHelper2 ----------
(declare-const xs@50@01 Seq<$Ref>)
(declare-const i@51@01 Int)
(declare-const res@52@01 Seq<Int>)
(declare-const xs@53@01 Seq<$Ref>)
(declare-const i@54@01 Int)
(declare-const res@55@01 Seq<Int>)
(push) ; 1
(declare-const $t@56@01 $Snap)
(assert (= $t@56@01 ($Snap.combine ($Snap.first $t@56@01) ($Snap.second $t@56@01))))
(assert (= ($Snap.first $t@56@01) $Snap.unit))
; [eval] 0 <= i
(assert (<= 0 i@54@01))
(assert (=
  ($Snap.second $t@56@01)
  ($Snap.combine
    ($Snap.first ($Snap.second $t@56@01))
    ($Snap.second ($Snap.second $t@56@01)))))
(assert (= ($Snap.first ($Snap.second $t@56@01)) $Snap.unit))
; [eval] i <= |xs|
; [eval] |xs|
(assert (<= i@54@01 (Seq_length xs@53@01)))
(assert (=
  ($Snap.second ($Snap.second $t@56@01))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second $t@56@01)))
    ($Snap.second ($Snap.second ($Snap.second $t@56@01))))))
(assert (= ($Snap.first ($Snap.second ($Snap.second $t@56@01))) $Snap.unit))
; [eval] (forall k: Int, j: Int :: { xs[k], xs[j] } k >= 0 && (k < |xs| && (j >= 0 && (j < |xs| && k != j))) ==> xs[k] != xs[j])
(declare-const k@57@01 Int)
(declare-const j@58@01 Int)
(push) ; 2
; [eval] k >= 0 && (k < |xs| && (j >= 0 && (j < |xs| && k != j))) ==> xs[k] != xs[j]
; [eval] k >= 0 && (k < |xs| && (j >= 0 && (j < |xs| && k != j)))
; [eval] k >= 0
(push) ; 3
; [then-branch: 26 | !(k@57@01 >= 0) | live]
; [else-branch: 26 | k@57@01 >= 0 | live]
(push) ; 4
; [then-branch: 26 | !(k@57@01 >= 0)]
(assert (not (>= k@57@01 0)))
(pop) ; 4
(push) ; 4
; [else-branch: 26 | k@57@01 >= 0]
(assert (>= k@57@01 0))
; [eval] k < |xs|
; [eval] |xs|
(push) ; 5
; [then-branch: 27 | !(k@57@01 < |xs@53@01|) | live]
; [else-branch: 27 | k@57@01 < |xs@53@01| | live]
(push) ; 6
; [then-branch: 27 | !(k@57@01 < |xs@53@01|)]
(assert (not (< k@57@01 (Seq_length xs@53@01))))
(pop) ; 6
(push) ; 6
; [else-branch: 27 | k@57@01 < |xs@53@01|]
(assert (< k@57@01 (Seq_length xs@53@01)))
; [eval] j >= 0
(push) ; 7
; [then-branch: 28 | !(j@58@01 >= 0) | live]
; [else-branch: 28 | j@58@01 >= 0 | live]
(push) ; 8
; [then-branch: 28 | !(j@58@01 >= 0)]
(assert (not (>= j@58@01 0)))
(pop) ; 8
(push) ; 8
; [else-branch: 28 | j@58@01 >= 0]
(assert (>= j@58@01 0))
; [eval] j < |xs|
; [eval] |xs|
(push) ; 9
; [then-branch: 29 | !(j@58@01 < |xs@53@01|) | live]
; [else-branch: 29 | j@58@01 < |xs@53@01| | live]
(push) ; 10
; [then-branch: 29 | !(j@58@01 < |xs@53@01|)]
(assert (not (< j@58@01 (Seq_length xs@53@01))))
(pop) ; 10
(push) ; 10
; [else-branch: 29 | j@58@01 < |xs@53@01|]
(assert (< j@58@01 (Seq_length xs@53@01)))
; [eval] k != j
(pop) ; 10
(pop) ; 9
; Joined path conditions
; Joined path conditions
(assert (or (< j@58@01 (Seq_length xs@53@01)) (not (< j@58@01 (Seq_length xs@53@01)))))
(pop) ; 8
(pop) ; 7
; Joined path conditions
; Joined path conditions
(assert (=>
  (>= j@58@01 0)
  (and
    (>= j@58@01 0)
    (or
      (< j@58@01 (Seq_length xs@53@01))
      (not (< j@58@01 (Seq_length xs@53@01)))))))
(assert (or (>= j@58@01 0) (not (>= j@58@01 0))))
(pop) ; 6
(pop) ; 5
; Joined path conditions
; Joined path conditions
(assert (=>
  (< k@57@01 (Seq_length xs@53@01))
  (and
    (< k@57@01 (Seq_length xs@53@01))
    (=>
      (>= j@58@01 0)
      (and
        (>= j@58@01 0)
        (or
          (< j@58@01 (Seq_length xs@53@01))
          (not (< j@58@01 (Seq_length xs@53@01))))))
    (or (>= j@58@01 0) (not (>= j@58@01 0))))))
(assert (or (< k@57@01 (Seq_length xs@53@01)) (not (< k@57@01 (Seq_length xs@53@01)))))
(pop) ; 4
(pop) ; 3
; Joined path conditions
; Joined path conditions
(assert (=>
  (>= k@57@01 0)
  (and
    (>= k@57@01 0)
    (=>
      (< k@57@01 (Seq_length xs@53@01))
      (and
        (< k@57@01 (Seq_length xs@53@01))
        (=>
          (>= j@58@01 0)
          (and
            (>= j@58@01 0)
            (or
              (< j@58@01 (Seq_length xs@53@01))
              (not (< j@58@01 (Seq_length xs@53@01))))))
        (or (>= j@58@01 0) (not (>= j@58@01 0)))))
    (or
      (< k@57@01 (Seq_length xs@53@01))
      (not (< k@57@01 (Seq_length xs@53@01)))))))
(assert (or (>= k@57@01 0) (not (>= k@57@01 0))))
(push) ; 3
; [then-branch: 30 | k@57@01 >= 0 && k@57@01 < |xs@53@01| && j@58@01 >= 0 && j@58@01 < |xs@53@01| && k@57@01 != j@58@01 | live]
; [else-branch: 30 | !(k@57@01 >= 0 && k@57@01 < |xs@53@01| && j@58@01 >= 0 && j@58@01 < |xs@53@01| && k@57@01 != j@58@01) | live]
(push) ; 4
; [then-branch: 30 | k@57@01 >= 0 && k@57@01 < |xs@53@01| && j@58@01 >= 0 && j@58@01 < |xs@53@01| && k@57@01 != j@58@01]
(assert (and
  (>= k@57@01 0)
  (and
    (< k@57@01 (Seq_length xs@53@01))
    (and
      (>= j@58@01 0)
      (and (< j@58@01 (Seq_length xs@53@01)) (not (= k@57@01 j@58@01)))))))
; [eval] xs[k] != xs[j]
; [eval] xs[k]
; [eval] xs[j]
(pop) ; 4
(push) ; 4
; [else-branch: 30 | !(k@57@01 >= 0 && k@57@01 < |xs@53@01| && j@58@01 >= 0 && j@58@01 < |xs@53@01| && k@57@01 != j@58@01)]
(assert (not
  (and
    (>= k@57@01 0)
    (and
      (< k@57@01 (Seq_length xs@53@01))
      (and
        (>= j@58@01 0)
        (and (< j@58@01 (Seq_length xs@53@01)) (not (= k@57@01 j@58@01))))))))
(pop) ; 4
(pop) ; 3
; Joined path conditions
(assert (=>
  (and
    (>= k@57@01 0)
    (and
      (< k@57@01 (Seq_length xs@53@01))
      (and
        (>= j@58@01 0)
        (and (< j@58@01 (Seq_length xs@53@01)) (not (= k@57@01 j@58@01))))))
  (and
    (>= k@57@01 0)
    (< k@57@01 (Seq_length xs@53@01))
    (>= j@58@01 0)
    (< j@58@01 (Seq_length xs@53@01))
    (not (= k@57@01 j@58@01)))))
; Joined path conditions
(assert (or
  (not
    (and
      (>= k@57@01 0)
      (and
        (< k@57@01 (Seq_length xs@53@01))
        (and
          (>= j@58@01 0)
          (and (< j@58@01 (Seq_length xs@53@01)) (not (= k@57@01 j@58@01)))))))
  (and
    (>= k@57@01 0)
    (and
      (< k@57@01 (Seq_length xs@53@01))
      (and
        (>= j@58@01 0)
        (and (< j@58@01 (Seq_length xs@53@01)) (not (= k@57@01 j@58@01))))))))
(pop) ; 2
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall ((k@57@01 Int) (j@58@01 Int)) (!
  (and
    (=>
      (>= k@57@01 0)
      (and
        (>= k@57@01 0)
        (=>
          (< k@57@01 (Seq_length xs@53@01))
          (and
            (< k@57@01 (Seq_length xs@53@01))
            (=>
              (>= j@58@01 0)
              (and
                (>= j@58@01 0)
                (or
                  (< j@58@01 (Seq_length xs@53@01))
                  (not (< j@58@01 (Seq_length xs@53@01))))))
            (or (>= j@58@01 0) (not (>= j@58@01 0)))))
        (or
          (< k@57@01 (Seq_length xs@53@01))
          (not (< k@57@01 (Seq_length xs@53@01))))))
    (or (>= k@57@01 0) (not (>= k@57@01 0)))
    (=>
      (and
        (>= k@57@01 0)
        (and
          (< k@57@01 (Seq_length xs@53@01))
          (and
            (>= j@58@01 0)
            (and (< j@58@01 (Seq_length xs@53@01)) (not (= k@57@01 j@58@01))))))
      (and
        (>= k@57@01 0)
        (< k@57@01 (Seq_length xs@53@01))
        (>= j@58@01 0)
        (< j@58@01 (Seq_length xs@53@01))
        (not (= k@57@01 j@58@01))))
    (or
      (not
        (and
          (>= k@57@01 0)
          (and
            (< k@57@01 (Seq_length xs@53@01))
            (and
              (>= j@58@01 0)
              (and (< j@58@01 (Seq_length xs@53@01)) (not (= k@57@01 j@58@01)))))))
      (and
        (>= k@57@01 0)
        (and
          (< k@57@01 (Seq_length xs@53@01))
          (and
            (>= j@58@01 0)
            (and (< j@58@01 (Seq_length xs@53@01)) (not (= k@57@01 j@58@01))))))))
  :pattern ((Seq_index xs@53@01 k@57@01) (Seq_index xs@53@01 j@58@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/all/issues/silicon/0512.vpr@51@12@51@104-aux|)))
(assert (forall ((k@57@01 Int) (j@58@01 Int)) (!
  (=>
    (and
      (>= k@57@01 0)
      (and
        (< k@57@01 (Seq_length xs@53@01))
        (and
          (>= j@58@01 0)
          (and (< j@58@01 (Seq_length xs@53@01)) (not (= k@57@01 j@58@01))))))
    (not (= (Seq_index xs@53@01 k@57@01) (Seq_index xs@53@01 j@58@01))))
  :pattern ((Seq_index xs@53@01 k@57@01) (Seq_index xs@53@01 j@58@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/all/issues/silicon/0512.vpr@51@12@51@104|)))
(declare-const j@59@01 Int)
(push) ; 2
; [eval] 0 <= j && j < |xs|
; [eval] 0 <= j
(push) ; 3
; [then-branch: 31 | !(0 <= j@59@01) | live]
; [else-branch: 31 | 0 <= j@59@01 | live]
(push) ; 4
; [then-branch: 31 | !(0 <= j@59@01)]
(assert (not (<= 0 j@59@01)))
(pop) ; 4
(push) ; 4
; [else-branch: 31 | 0 <= j@59@01]
(assert (<= 0 j@59@01))
; [eval] j < |xs|
; [eval] |xs|
(pop) ; 4
(pop) ; 3
; Joined path conditions
; Joined path conditions
(assert (or (<= 0 j@59@01) (not (<= 0 j@59@01))))
(assert (and (<= 0 j@59@01) (< j@59@01 (Seq_length xs@53@01))))
; [eval] xs[j]
(push) ; 3
(assert (not (>= j@59@01 0)))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(declare-const $k@60@01 $Perm)
(assert ($Perm.isReadVar $k@60@01))
(pop) ; 2
(declare-fun inv@61@01 ($Ref) Int)
(declare-fun img@62@01 ($Ref) Bool)
; Nested auxiliary terms: globals
(assert ($Perm.isReadVar $k@60@01))
; Nested auxiliary terms: non-globals
(assert (forall ((j@59@01 Int)) (!
  (=>
    (and (<= 0 j@59@01) (< j@59@01 (Seq_length xs@53@01)))
    (or (<= 0 j@59@01) (not (<= 0 j@59@01))))
  :pattern ((Seq_index xs@53@01 j@59@01))
  :qid |item-aux|)))
(push) ; 2
(assert (not (forall ((j@59@01 Int)) (!
  (=>
    (and (<= 0 j@59@01) (< j@59@01 (Seq_length xs@53@01)))
    (or (= $k@60@01 $Perm.No) (< $Perm.No $k@60@01)))
  
  :qid |quant-u-24133|))))
(check-sat)
; unsat
(pop) ; 2
; 0.00s
; (get-info :all-statistics)
; Check receiver injectivity
(push) ; 2
(assert (not (forall ((j1@59@01 Int) (j2@59@01 Int)) (!
  (=>
    (and
      (and
        (and (<= 0 j1@59@01) (< j1@59@01 (Seq_length xs@53@01)))
        (< $Perm.No $k@60@01))
      (and
        (and (<= 0 j2@59@01) (< j2@59@01 (Seq_length xs@53@01)))
        (< $Perm.No $k@60@01))
      (= (Seq_index xs@53@01 j1@59@01) (Seq_index xs@53@01 j2@59@01)))
    (= j1@59@01 j2@59@01))
  
  :qid |item-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 2
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((j@59@01 Int)) (!
  (=>
    (and
      (and (<= 0 j@59@01) (< j@59@01 (Seq_length xs@53@01)))
      (< $Perm.No $k@60@01))
    (and
      (= (inv@61@01 (Seq_index xs@53@01 j@59@01)) j@59@01)
      (img@62@01 (Seq_index xs@53@01 j@59@01))))
  :pattern ((Seq_index xs@53@01 j@59@01))
  :qid |quant-u-24134|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@62@01 r)
      (and
        (and (<= 0 (inv@61@01 r)) (< (inv@61@01 r) (Seq_length xs@53@01)))
        (< $Perm.No $k@60@01)))
    (= (Seq_index xs@53@01 (inv@61@01 r)) r))
  :pattern ((inv@61@01 r))
  :qid |item-fctOfInv|)))
; Permissions are non-negative
(assert (forall ((j@59@01 Int)) (!
  (<= $Perm.No $k@60@01)
  :pattern ((Seq_index xs@53@01 j@59@01))
  :qid |item-permAtLeastZero|)))
; Field permissions are at most one
(assert (forall ((j@59@01 Int)) (!
  (<= $k@60@01 $Perm.Write)
  :pattern ((Seq_index xs@53@01 j@59@01))
  :qid |item-permAtMostOne|)))
; Permission implies non-null receiver
(assert (forall ((j@59@01 Int)) (!
  (=>
    (and
      (and (<= 0 j@59@01) (< j@59@01 (Seq_length xs@53@01)))
      (< $Perm.No $k@60@01))
    (not (= (Seq_index xs@53@01 j@59@01) $Ref.null)))
  :pattern ((Seq_index xs@53@01 j@59@01))
  :qid |item-permImpliesNonNull|)))
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
(set-option :timeout 0)
(push) ; 2
(declare-const $t@63@01 $Snap)
(assert (= $t@63@01 ($Snap.combine ($Snap.first $t@63@01) ($Snap.second $t@63@01))))
(assert (= ($Snap.first $t@63@01) $Snap.unit))
; [eval] 0 <= i
(assert (=
  ($Snap.second $t@63@01)
  ($Snap.combine
    ($Snap.first ($Snap.second $t@63@01))
    ($Snap.second ($Snap.second $t@63@01)))))
(assert (= ($Snap.first ($Snap.second $t@63@01)) $Snap.unit))
; [eval] i <= |xs|
; [eval] |xs|
(assert (=
  ($Snap.second ($Snap.second $t@63@01))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second $t@63@01)))
    ($Snap.second ($Snap.second ($Snap.second $t@63@01))))))
(declare-const j@64@01 Int)
(push) ; 3
; [eval] 0 <= j && j < |xs|
; [eval] 0 <= j
(push) ; 4
; [then-branch: 32 | !(0 <= j@64@01) | live]
; [else-branch: 32 | 0 <= j@64@01 | live]
(push) ; 5
; [then-branch: 32 | !(0 <= j@64@01)]
(assert (not (<= 0 j@64@01)))
(pop) ; 5
(push) ; 5
; [else-branch: 32 | 0 <= j@64@01]
(assert (<= 0 j@64@01))
; [eval] j < |xs|
; [eval] |xs|
(pop) ; 5
(pop) ; 4
; Joined path conditions
; Joined path conditions
(assert (or (<= 0 j@64@01) (not (<= 0 j@64@01))))
(assert (and (<= 0 j@64@01) (< j@64@01 (Seq_length xs@53@01))))
; [eval] xs[j]
(push) ; 4
(assert (not (>= j@64@01 0)))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(declare-const $k@65@01 $Perm)
(assert ($Perm.isReadVar $k@65@01))
(pop) ; 3
(declare-fun inv@66@01 ($Ref) Int)
(declare-fun img@67@01 ($Ref) Bool)
; Nested auxiliary terms: globals
(assert ($Perm.isReadVar $k@65@01))
; Nested auxiliary terms: non-globals
(assert (forall ((j@64@01 Int)) (!
  (=>
    (and (<= 0 j@64@01) (< j@64@01 (Seq_length xs@53@01)))
    (or (<= 0 j@64@01) (not (<= 0 j@64@01))))
  :pattern ((Seq_index xs@53@01 j@64@01))
  :qid |item-aux|)))
(push) ; 3
(assert (not (forall ((j@64@01 Int)) (!
  (=>
    (and (<= 0 j@64@01) (< j@64@01 (Seq_length xs@53@01)))
    (or (= $k@65@01 $Perm.No) (< $Perm.No $k@65@01)))
  
  :qid |quant-u-24135|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Check receiver injectivity
(push) ; 3
(assert (not (forall ((j1@64@01 Int) (j2@64@01 Int)) (!
  (=>
    (and
      (and
        (and (<= 0 j1@64@01) (< j1@64@01 (Seq_length xs@53@01)))
        (< $Perm.No $k@65@01))
      (and
        (and (<= 0 j2@64@01) (< j2@64@01 (Seq_length xs@53@01)))
        (< $Perm.No $k@65@01))
      (= (Seq_index xs@53@01 j1@64@01) (Seq_index xs@53@01 j2@64@01)))
    (= j1@64@01 j2@64@01))
  
  :qid |item-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((j@64@01 Int)) (!
  (=>
    (and
      (and (<= 0 j@64@01) (< j@64@01 (Seq_length xs@53@01)))
      (< $Perm.No $k@65@01))
    (and
      (= (inv@66@01 (Seq_index xs@53@01 j@64@01)) j@64@01)
      (img@67@01 (Seq_index xs@53@01 j@64@01))))
  :pattern ((Seq_index xs@53@01 j@64@01))
  :qid |quant-u-24136|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@67@01 r)
      (and
        (and (<= 0 (inv@66@01 r)) (< (inv@66@01 r) (Seq_length xs@53@01)))
        (< $Perm.No $k@65@01)))
    (= (Seq_index xs@53@01 (inv@66@01 r)) r))
  :pattern ((inv@66@01 r))
  :qid |item-fctOfInv|)))
; Permissions are non-negative
(assert (forall ((j@64@01 Int)) (!
  (<= $Perm.No $k@65@01)
  :pattern ((Seq_index xs@53@01 j@64@01))
  :qid |item-permAtLeastZero|)))
; Field permissions are at most one
(assert (forall ((j@64@01 Int)) (!
  (<= $k@65@01 $Perm.Write)
  :pattern ((Seq_index xs@53@01 j@64@01))
  :qid |item-permAtMostOne|)))
; Permission implies non-null receiver
(assert (forall ((j@64@01 Int)) (!
  (=>
    (and
      (and (<= 0 j@64@01) (< j@64@01 (Seq_length xs@53@01)))
      (< $Perm.No $k@65@01))
    (not (= (Seq_index xs@53@01 j@64@01) $Ref.null)))
  :pattern ((Seq_index xs@53@01 j@64@01))
  :qid |item-permImpliesNonNull|)))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second $t@63@01)))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@63@01))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@63@01)))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@63@01))))
  $Snap.unit))
; [eval] |res| == |xs| - i
; [eval] |res|
; [eval] |xs| - i
; [eval] |xs|
(assert (= (Seq_length res@55@01) (- (Seq_length xs@53@01) i@54@01)))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@63@01))))
  $Snap.unit))
; [eval] (forall j: Int :: { xs[j] } i <= j && j < |xs| ==> res[j - i] == xs[j].item)
(declare-const j@68@01 Int)
(push) ; 3
; [eval] i <= j && j < |xs| ==> res[j - i] == xs[j].item
; [eval] i <= j && j < |xs|
; [eval] i <= j
(push) ; 4
; [then-branch: 33 | !(i@54@01 <= j@68@01) | live]
; [else-branch: 33 | i@54@01 <= j@68@01 | live]
(push) ; 5
; [then-branch: 33 | !(i@54@01 <= j@68@01)]
(assert (not (<= i@54@01 j@68@01)))
(pop) ; 5
(push) ; 5
; [else-branch: 33 | i@54@01 <= j@68@01]
(assert (<= i@54@01 j@68@01))
; [eval] j < |xs|
; [eval] |xs|
(pop) ; 5
(pop) ; 4
; Joined path conditions
; Joined path conditions
(assert (or (<= i@54@01 j@68@01) (not (<= i@54@01 j@68@01))))
(push) ; 4
; [then-branch: 34 | i@54@01 <= j@68@01 && j@68@01 < |xs@53@01| | live]
; [else-branch: 34 | !(i@54@01 <= j@68@01 && j@68@01 < |xs@53@01|) | live]
(push) ; 5
; [then-branch: 34 | i@54@01 <= j@68@01 && j@68@01 < |xs@53@01|]
(assert (and (<= i@54@01 j@68@01) (< j@68@01 (Seq_length xs@53@01))))
; [eval] res[j - i] == xs[j].item
; [eval] res[j - i]
; [eval] j - i
(push) ; 6
(assert (not (>= (- j@68@01 i@54@01) 0)))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(push) ; 6
(assert (not (< (- j@68@01 i@54@01) (Seq_length res@55@01))))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
; [eval] xs[j]
(push) ; 6
(assert (not (>= j@68@01 0)))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(push) ; 6
(assert (not (ite
  (and
    (img@67@01 (Seq_index xs@53@01 j@68@01))
    (and
      (<= 0 (inv@66@01 (Seq_index xs@53@01 j@68@01)))
      (< (inv@66@01 (Seq_index xs@53@01 j@68@01)) (Seq_length xs@53@01))))
  (< $Perm.No $k@65@01)
  false)))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(pop) ; 5
(push) ; 5
; [else-branch: 34 | !(i@54@01 <= j@68@01 && j@68@01 < |xs@53@01|)]
(assert (not (and (<= i@54@01 j@68@01) (< j@68@01 (Seq_length xs@53@01)))))
(pop) ; 5
(pop) ; 4
; Joined path conditions
; Joined path conditions
(assert (or
  (not (and (<= i@54@01 j@68@01) (< j@68@01 (Seq_length xs@53@01))))
  (and (<= i@54@01 j@68@01) (< j@68@01 (Seq_length xs@53@01)))))
(pop) ; 3
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall ((j@68@01 Int)) (!
  (and
    (or (<= i@54@01 j@68@01) (not (<= i@54@01 j@68@01)))
    (or
      (not (and (<= i@54@01 j@68@01) (< j@68@01 (Seq_length xs@53@01))))
      (and (<= i@54@01 j@68@01) (< j@68@01 (Seq_length xs@53@01)))))
  :pattern ((Seq_index xs@53@01 j@68@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/all/issues/silicon/0512.vpr@57@12@57@76-aux|)))
(assert (forall ((j@68@01 Int)) (!
  (=>
    (and (<= i@54@01 j@68@01) (< j@68@01 (Seq_length xs@53@01)))
    (=
      (Seq_index res@55@01 (- j@68@01 i@54@01))
      ($FVF.lookup_item ($SortWrappers.$SnapTo$FVF<item> ($Snap.first ($Snap.second ($Snap.second $t@63@01)))) (Seq_index
        xs@53@01
        j@68@01))))
  :pattern ((Seq_index xs@53@01 j@68@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/all/issues/silicon/0512.vpr@57@12@57@76|)))
(pop) ; 2
(push) ; 2
; [eval] i < |xs|
; [eval] |xs|
(push) ; 3
(set-option :timeout 10)
(assert (not (not (< i@54@01 (Seq_length xs@53@01)))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (< i@54@01 (Seq_length xs@53@01))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; [then-branch: 35 | i@54@01 < |xs@53@01| | live]
; [else-branch: 35 | !(i@54@01 < |xs@53@01|) | live]
(set-option :timeout 0)
(push) ; 3
; [then-branch: 35 | i@54@01 < |xs@53@01|]
(assert (< i@54@01 (Seq_length xs@53@01)))
; [exec]
; var tail: Seq[Int]
(declare-const tail@69@01 Seq<Int>)
; [exec]
; tail := seqToSeqHelper_wild(xs, i + 1)
; [eval] seqToSeqHelper_wild(xs, i + 1)
; [eval] i + 1
(push) ; 4
; [eval] 0 <= i
(push) ; 5
(assert (not (<= 0 (+ i@54@01 1))))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(assert (<= 0 (+ i@54@01 1)))
; [eval] i <= |xs|
; [eval] |xs|
(push) ; 5
(assert (not (<= (+ i@54@01 1) (Seq_length xs@53@01))))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(assert (<= (+ i@54@01 1) (Seq_length xs@53@01)))
; [eval] (forall k: Int, j: Int ::k >= 0 && (k < |xs| && (j >= 0 && (j < |xs| && k != j))) ==> xs[k] != xs[j])
(declare-const k@70@01 Int)
(declare-const j@71@01 Int)
(push) ; 5
; [eval] k >= 0 && (k < |xs| && (j >= 0 && (j < |xs| && k != j))) ==> xs[k] != xs[j]
; [eval] k >= 0 && (k < |xs| && (j >= 0 && (j < |xs| && k != j)))
; [eval] k >= 0
(push) ; 6
; [then-branch: 36 | !(k@70@01 >= 0) | live]
; [else-branch: 36 | k@70@01 >= 0 | live]
(push) ; 7
; [then-branch: 36 | !(k@70@01 >= 0)]
(assert (not (>= k@70@01 0)))
(pop) ; 7
(push) ; 7
; [else-branch: 36 | k@70@01 >= 0]
(assert (>= k@70@01 0))
; [eval] k < |xs|
; [eval] |xs|
(push) ; 8
; [then-branch: 37 | !(k@70@01 < |xs@53@01|) | live]
; [else-branch: 37 | k@70@01 < |xs@53@01| | live]
(push) ; 9
; [then-branch: 37 | !(k@70@01 < |xs@53@01|)]
(assert (not (< k@70@01 (Seq_length xs@53@01))))
(pop) ; 9
(push) ; 9
; [else-branch: 37 | k@70@01 < |xs@53@01|]
(assert (< k@70@01 (Seq_length xs@53@01)))
; [eval] j >= 0
(push) ; 10
; [then-branch: 38 | !(j@71@01 >= 0) | live]
; [else-branch: 38 | j@71@01 >= 0 | live]
(push) ; 11
; [then-branch: 38 | !(j@71@01 >= 0)]
(assert (not (>= j@71@01 0)))
(pop) ; 11
(push) ; 11
; [else-branch: 38 | j@71@01 >= 0]
(assert (>= j@71@01 0))
; [eval] j < |xs|
; [eval] |xs|
(push) ; 12
; [then-branch: 39 | !(j@71@01 < |xs@53@01|) | live]
; [else-branch: 39 | j@71@01 < |xs@53@01| | live]
(push) ; 13
; [then-branch: 39 | !(j@71@01 < |xs@53@01|)]
(assert (not (< j@71@01 (Seq_length xs@53@01))))
(pop) ; 13
(push) ; 13
; [else-branch: 39 | j@71@01 < |xs@53@01|]
(assert (< j@71@01 (Seq_length xs@53@01)))
; [eval] k != j
(pop) ; 13
(pop) ; 12
; Joined path conditions
; Joined path conditions
(assert (or (< j@71@01 (Seq_length xs@53@01)) (not (< j@71@01 (Seq_length xs@53@01)))))
(pop) ; 11
(pop) ; 10
; Joined path conditions
; Joined path conditions
(assert (=>
  (>= j@71@01 0)
  (and
    (>= j@71@01 0)
    (or
      (< j@71@01 (Seq_length xs@53@01))
      (not (< j@71@01 (Seq_length xs@53@01)))))))
(assert (or (>= j@71@01 0) (not (>= j@71@01 0))))
(pop) ; 9
(pop) ; 8
; Joined path conditions
; Joined path conditions
(assert (=>
  (< k@70@01 (Seq_length xs@53@01))
  (and
    (< k@70@01 (Seq_length xs@53@01))
    (=>
      (>= j@71@01 0)
      (and
        (>= j@71@01 0)
        (or
          (< j@71@01 (Seq_length xs@53@01))
          (not (< j@71@01 (Seq_length xs@53@01))))))
    (or (>= j@71@01 0) (not (>= j@71@01 0))))))
(assert (or (< k@70@01 (Seq_length xs@53@01)) (not (< k@70@01 (Seq_length xs@53@01)))))
(pop) ; 7
(pop) ; 6
; Joined path conditions
; Joined path conditions
(assert (=>
  (>= k@70@01 0)
  (and
    (>= k@70@01 0)
    (=>
      (< k@70@01 (Seq_length xs@53@01))
      (and
        (< k@70@01 (Seq_length xs@53@01))
        (=>
          (>= j@71@01 0)
          (and
            (>= j@71@01 0)
            (or
              (< j@71@01 (Seq_length xs@53@01))
              (not (< j@71@01 (Seq_length xs@53@01))))))
        (or (>= j@71@01 0) (not (>= j@71@01 0)))))
    (or
      (< k@70@01 (Seq_length xs@53@01))
      (not (< k@70@01 (Seq_length xs@53@01)))))))
(assert (or (>= k@70@01 0) (not (>= k@70@01 0))))
(push) ; 6
; [then-branch: 40 | k@70@01 >= 0 && k@70@01 < |xs@53@01| && j@71@01 >= 0 && j@71@01 < |xs@53@01| && k@70@01 != j@71@01 | live]
; [else-branch: 40 | !(k@70@01 >= 0 && k@70@01 < |xs@53@01| && j@71@01 >= 0 && j@71@01 < |xs@53@01| && k@70@01 != j@71@01) | live]
(push) ; 7
; [then-branch: 40 | k@70@01 >= 0 && k@70@01 < |xs@53@01| && j@71@01 >= 0 && j@71@01 < |xs@53@01| && k@70@01 != j@71@01]
(assert (and
  (>= k@70@01 0)
  (and
    (< k@70@01 (Seq_length xs@53@01))
    (and
      (>= j@71@01 0)
      (and (< j@71@01 (Seq_length xs@53@01)) (not (= k@70@01 j@71@01)))))))
; [eval] xs[k] != xs[j]
; [eval] xs[k]
; [eval] xs[j]
(pop) ; 7
(push) ; 7
; [else-branch: 40 | !(k@70@01 >= 0 && k@70@01 < |xs@53@01| && j@71@01 >= 0 && j@71@01 < |xs@53@01| && k@70@01 != j@71@01)]
(assert (not
  (and
    (>= k@70@01 0)
    (and
      (< k@70@01 (Seq_length xs@53@01))
      (and
        (>= j@71@01 0)
        (and (< j@71@01 (Seq_length xs@53@01)) (not (= k@70@01 j@71@01))))))))
(pop) ; 7
(pop) ; 6
; Joined path conditions
(assert (=>
  (and
    (>= k@70@01 0)
    (and
      (< k@70@01 (Seq_length xs@53@01))
      (and
        (>= j@71@01 0)
        (and (< j@71@01 (Seq_length xs@53@01)) (not (= k@70@01 j@71@01))))))
  (and
    (>= k@70@01 0)
    (< k@70@01 (Seq_length xs@53@01))
    (>= j@71@01 0)
    (< j@71@01 (Seq_length xs@53@01))
    (not (= k@70@01 j@71@01)))))
; Joined path conditions
(assert (or
  (not
    (and
      (>= k@70@01 0)
      (and
        (< k@70@01 (Seq_length xs@53@01))
        (and
          (>= j@71@01 0)
          (and (< j@71@01 (Seq_length xs@53@01)) (not (= k@70@01 j@71@01)))))))
  (and
    (>= k@70@01 0)
    (and
      (< k@70@01 (Seq_length xs@53@01))
      (and
        (>= j@71@01 0)
        (and (< j@71@01 (Seq_length xs@53@01)) (not (= k@70@01 j@71@01))))))))
(pop) ; 5
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(push) ; 5
(assert (not (forall ((k@70@01 Int) (j@71@01 Int)) (!
  (=>
    (and
      (>= k@70@01 0)
      (and
        (< k@70@01 (Seq_length xs@53@01))
        (and
          (>= j@71@01 0)
          (and (< j@71@01 (Seq_length xs@53@01)) (not (= k@70@01 j@71@01))))))
    (not (= (Seq_index xs@53@01 k@70@01) (Seq_index xs@53@01 j@71@01))))
  
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/all/issues/silicon/0512.vpr@8@12@8@104|))))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(assert (forall ((k@70@01 Int) (j@71@01 Int)) (!
  (=>
    (and
      (>= k@70@01 0)
      (and
        (< k@70@01 (Seq_length xs@53@01))
        (and
          (>= j@71@01 0)
          (and (< j@71@01 (Seq_length xs@53@01)) (not (= k@70@01 j@71@01))))))
    (not (= (Seq_index xs@53@01 k@70@01) (Seq_index xs@53@01 j@71@01))))
  
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/all/issues/silicon/0512.vpr@8@12@8@104|)))
(declare-const j@72@01 Int)
(push) ; 5
; [eval] 0 <= j && j < |xs|
; [eval] 0 <= j
(push) ; 6
; [then-branch: 41 | !(0 <= j@72@01) | live]
; [else-branch: 41 | 0 <= j@72@01 | live]
(push) ; 7
; [then-branch: 41 | !(0 <= j@72@01)]
(assert (not (<= 0 j@72@01)))
(pop) ; 7
(push) ; 7
; [else-branch: 41 | 0 <= j@72@01]
(assert (<= 0 j@72@01))
; [eval] j < |xs|
; [eval] |xs|
(pop) ; 7
(pop) ; 6
; Joined path conditions
; Joined path conditions
(assert (or (<= 0 j@72@01) (not (<= 0 j@72@01))))
(assert (and (<= 0 j@72@01) (< j@72@01 (Seq_length xs@53@01))))
(declare-const $k@73@01 $Perm)
(assert ($Perm.isReadVar $k@73@01))
; [eval] xs[j]
(push) ; 6
(assert (not (>= j@72@01 0)))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(pop) ; 5
(declare-fun inv@74@01 ($Ref) Int)
(declare-fun img@75@01 ($Ref) Bool)
; Nested auxiliary terms: globals
(assert ($Perm.isReadVar $k@73@01))
; Nested auxiliary terms: non-globals
(assert (forall ((j@72@01 Int)) (!
  (=>
    (and (<= 0 j@72@01) (< j@72@01 (Seq_length xs@53@01)))
    (or (<= 0 j@72@01) (not (<= 0 j@72@01))))
  :pattern ((Seq_index xs@53@01 j@72@01))
  :qid |item-aux|)))
(push) ; 5
(assert (not (forall ((j@72@01 Int)) (!
  (=>
    (and (<= 0 j@72@01) (< j@72@01 (Seq_length xs@53@01)))
    (or (= $k@73@01 $Perm.No) (< $Perm.No $k@73@01)))
  
  :qid |quant-u-24137|))))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
; Check receiver injectivity
(push) ; 5
(assert (not (forall ((j1@72@01 Int) (j2@72@01 Int)) (!
  (=>
    (and
      (and
        (and (<= 0 j1@72@01) (< j1@72@01 (Seq_length xs@53@01)))
        (< $Perm.No $k@73@01))
      (and
        (and (<= 0 j2@72@01) (< j2@72@01 (Seq_length xs@53@01)))
        (< $Perm.No $k@73@01))
      (= (Seq_index xs@53@01 j1@72@01) (Seq_index xs@53@01 j2@72@01)))
    (= j1@72@01 j2@72@01))
  
  :qid |item-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((j@72@01 Int)) (!
  (=>
    (and
      (and (<= 0 j@72@01) (< j@72@01 (Seq_length xs@53@01)))
      (< $Perm.No $k@73@01))
    (and
      (= (inv@74@01 (Seq_index xs@53@01 j@72@01)) j@72@01)
      (img@75@01 (Seq_index xs@53@01 j@72@01))))
  :pattern ((Seq_index xs@53@01 j@72@01))
  :qid |item-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@75@01 r)
      (and
        (and (<= 0 (inv@74@01 r)) (< (inv@74@01 r) (Seq_length xs@53@01)))
        (< $Perm.No $k@73@01)))
    (= (Seq_index xs@53@01 (inv@74@01 r)) r))
  :pattern ((inv@74@01 r))
  :qid |item-fctOfInv|)))
(push) ; 5
(assert (not (forall ((r $Ref)) (!
  (=>
    (and
      (and
        (and (<= 0 (inv@74@01 r)) (< (inv@74@01 r) (Seq_length xs@53@01)))
        (img@75@01 r)
        (= r (Seq_index xs@53@01 (inv@74@01 r))))
      (> $k@73@01 $Perm.No))
    (>
      (ite
        (and
          (img@62@01 r)
          (and (<= 0 (inv@61@01 r)) (< (inv@61@01 r) (Seq_length xs@53@01))))
        $k@60@01
        $Perm.No)
      $Perm.No))
  
  :qid |quant-u-24138|))))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(declare-const sm@76@01 $FVF<item>)
; Definitional axioms for snapshot map domain
(assert (forall ((r $Ref)) (!
  (and
    (=>
      (Set_in r ($FVF.domain_item (as sm@76@01  $FVF<item>)))
      (and
        (and (<= 0 (inv@74@01 r)) (< (inv@74@01 r) (Seq_length xs@53@01)))
        (< $Perm.No $k@73@01)
        (img@75@01 r)))
    (=>
      (and
        (and (<= 0 (inv@74@01 r)) (< (inv@74@01 r) (Seq_length xs@53@01)))
        (< $Perm.No $k@73@01)
        (img@75@01 r))
      (Set_in r ($FVF.domain_item (as sm@76@01  $FVF<item>)))))
  :pattern ((Set_in r ($FVF.domain_item (as sm@76@01  $FVF<item>))))
  :qid |qp.fvfDomDef7|)))
; Definitional axioms for snapshot map values
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and
        (and (<= 0 (inv@74@01 r)) (< (inv@74@01 r) (Seq_length xs@53@01)))
        (< $Perm.No $k@73@01)
        (img@75@01 r))
      (ite
        (and
          (img@62@01 r)
          (and (<= 0 (inv@61@01 r)) (< (inv@61@01 r) (Seq_length xs@53@01))))
        (< $Perm.No $k@60@01)
        false))
    (=
      ($FVF.lookup_item (as sm@76@01  $FVF<item>) r)
      ($FVF.lookup_item ($SortWrappers.$SnapTo$FVF<item> ($Snap.second ($Snap.second ($Snap.second $t@56@01)))) r)))
  :pattern (($FVF.lookup_item (as sm@76@01  $FVF<item>) r))
  :pattern (($FVF.lookup_item ($SortWrappers.$SnapTo$FVF<item> ($Snap.second ($Snap.second ($Snap.second $t@56@01)))) r))
  :qid |qp.fvfValDef6|)))
(assert (seqToSeqHelper_wild%precondition ($Snap.combine
  $Snap.unit
  ($Snap.combine
    $Snap.unit
    ($Snap.combine
      $Snap.unit
      ($Snap.combine
        ($SortWrappers.$FVF<item>To$Snap (as sm@76@01  $FVF<item>))
        $Snap.unit)))) xs@53@01 (+ i@54@01 1)))
(pop) ; 4
; Joined path conditions
(assert ($Perm.isReadVar $k@73@01))
(assert (forall ((j@72@01 Int)) (!
  (=>
    (and
      (and (<= 0 j@72@01) (< j@72@01 (Seq_length xs@53@01)))
      (< $Perm.No $k@73@01))
    (and
      (= (inv@74@01 (Seq_index xs@53@01 j@72@01)) j@72@01)
      (img@75@01 (Seq_index xs@53@01 j@72@01))))
  :pattern ((Seq_index xs@53@01 j@72@01))
  :qid |item-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@75@01 r)
      (and
        (and (<= 0 (inv@74@01 r)) (< (inv@74@01 r) (Seq_length xs@53@01)))
        (< $Perm.No $k@73@01)))
    (= (Seq_index xs@53@01 (inv@74@01 r)) r))
  :pattern ((inv@74@01 r))
  :qid |item-fctOfInv|)))
(assert (forall ((r $Ref)) (!
  (and
    (=>
      (Set_in r ($FVF.domain_item (as sm@76@01  $FVF<item>)))
      (and
        (and (<= 0 (inv@74@01 r)) (< (inv@74@01 r) (Seq_length xs@53@01)))
        (< $Perm.No $k@73@01)
        (img@75@01 r)))
    (=>
      (and
        (and (<= 0 (inv@74@01 r)) (< (inv@74@01 r) (Seq_length xs@53@01)))
        (< $Perm.No $k@73@01)
        (img@75@01 r))
      (Set_in r ($FVF.domain_item (as sm@76@01  $FVF<item>)))))
  :pattern ((Set_in r ($FVF.domain_item (as sm@76@01  $FVF<item>))))
  :qid |qp.fvfDomDef7|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and
        (and (<= 0 (inv@74@01 r)) (< (inv@74@01 r) (Seq_length xs@53@01)))
        (< $Perm.No $k@73@01)
        (img@75@01 r))
      (ite
        (and
          (img@62@01 r)
          (and (<= 0 (inv@61@01 r)) (< (inv@61@01 r) (Seq_length xs@53@01))))
        (< $Perm.No $k@60@01)
        false))
    (=
      ($FVF.lookup_item (as sm@76@01  $FVF<item>) r)
      ($FVF.lookup_item ($SortWrappers.$SnapTo$FVF<item> ($Snap.second ($Snap.second ($Snap.second $t@56@01)))) r)))
  :pattern (($FVF.lookup_item (as sm@76@01  $FVF<item>) r))
  :pattern (($FVF.lookup_item ($SortWrappers.$SnapTo$FVF<item> ($Snap.second ($Snap.second ($Snap.second $t@56@01)))) r))
  :qid |qp.fvfValDef6|)))
(assert (and
  (<= 0 (+ i@54@01 1))
  (<= (+ i@54@01 1) (Seq_length xs@53@01))
  (forall ((k@70@01 Int) (j@71@01 Int)) (!
    (=>
      (and
        (>= k@70@01 0)
        (and
          (< k@70@01 (Seq_length xs@53@01))
          (and
            (>= j@71@01 0)
            (and (< j@71@01 (Seq_length xs@53@01)) (not (= k@70@01 j@71@01))))))
      (not (= (Seq_index xs@53@01 k@70@01) (Seq_index xs@53@01 j@71@01))))
    
    :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/all/issues/silicon/0512.vpr@8@12@8@104|))
  (forall ((j@72@01 Int)) (!
    (=>
      (and (<= 0 j@72@01) (< j@72@01 (Seq_length xs@53@01)))
      (or (<= 0 j@72@01) (not (<= 0 j@72@01))))
    :pattern ((Seq_index xs@53@01 j@72@01))
    :qid |item-aux|))
  (seqToSeqHelper_wild%precondition ($Snap.combine
    $Snap.unit
    ($Snap.combine
      $Snap.unit
      ($Snap.combine
        $Snap.unit
        ($Snap.combine
          ($SortWrappers.$FVF<item>To$Snap (as sm@76@01  $FVF<item>))
          $Snap.unit)))) xs@53@01 (+ i@54@01 1))))
(declare-const tail@77@01 Seq<Int>)
(assert (=
  tail@77@01
  (seqToSeqHelper_wild ($Snap.combine
    $Snap.unit
    ($Snap.combine
      $Snap.unit
      ($Snap.combine
        $Snap.unit
        ($Snap.combine
          ($SortWrappers.$FVF<item>To$Snap (as sm@76@01  $FVF<item>))
          $Snap.unit)))) xs@53@01 (+ i@54@01 1))))
; [exec]
; res := Seq(xs[i].item) ++ tail
; [eval] Seq(xs[i].item) ++ tail
; [eval] Seq(xs[i].item)
; [eval] xs[i]
(push) ; 4
(assert (not (>= i@54@01 0)))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(push) ; 4
(assert (not (ite
  (and
    (img@62@01 (Seq_index xs@53@01 i@54@01))
    (and
      (<= 0 (inv@61@01 (Seq_index xs@53@01 i@54@01)))
      (< (inv@61@01 (Seq_index xs@53@01 i@54@01)) (Seq_length xs@53@01))))
  (< $Perm.No $k@60@01)
  false)))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(assert (=
  (Seq_length
    (Seq_singleton ($FVF.lookup_item ($SortWrappers.$SnapTo$FVF<item> ($Snap.second ($Snap.second ($Snap.second $t@56@01)))) (Seq_index
      xs@53@01
      i@54@01))))
  1))
(declare-const res@78@01 Seq<Int>)
(assert (=
  res@78@01
  (Seq_append
    (Seq_singleton ($FVF.lookup_item ($SortWrappers.$SnapTo$FVF<item> ($Snap.second ($Snap.second ($Snap.second $t@56@01)))) (Seq_index
      xs@53@01
      i@54@01)))
    tail@77@01)))
; [eval] 0 <= i
; [eval] i <= |xs|
; [eval] |xs|
(declare-const j@79@01 Int)
(push) ; 4
; [eval] 0 <= j && j < |xs|
; [eval] 0 <= j
(push) ; 5
; [then-branch: 42 | !(0 <= j@79@01) | live]
; [else-branch: 42 | 0 <= j@79@01 | live]
(push) ; 6
; [then-branch: 42 | !(0 <= j@79@01)]
(assert (not (<= 0 j@79@01)))
(pop) ; 6
(push) ; 6
; [else-branch: 42 | 0 <= j@79@01]
(assert (<= 0 j@79@01))
; [eval] j < |xs|
; [eval] |xs|
(pop) ; 6
(pop) ; 5
; Joined path conditions
; Joined path conditions
(assert (or (<= 0 j@79@01) (not (<= 0 j@79@01))))
(assert (and (<= 0 j@79@01) (< j@79@01 (Seq_length xs@53@01))))
(declare-const $k@80@01 $Perm)
(assert ($Perm.isReadVar $k@80@01))
; [eval] xs[j]
(push) ; 5
(assert (not (>= j@79@01 0)))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(pop) ; 4
(declare-fun inv@81@01 ($Ref) Int)
(declare-fun img@82@01 ($Ref) Bool)
; Nested auxiliary terms: globals
(assert ($Perm.isReadVar $k@80@01))
; Nested auxiliary terms: non-globals
(assert (forall ((j@79@01 Int)) (!
  (=>
    (and (<= 0 j@79@01) (< j@79@01 (Seq_length xs@53@01)))
    (or (<= 0 j@79@01) (not (<= 0 j@79@01))))
  :pattern ((Seq_index xs@53@01 j@79@01))
  :qid |item-aux|)))
(push) ; 4
(assert (not (forall ((j@79@01 Int)) (!
  (=>
    (and (<= 0 j@79@01) (< j@79@01 (Seq_length xs@53@01)))
    (or (= $k@80@01 $Perm.No) (< $Perm.No $k@80@01)))
  
  :qid |quant-u-24139|))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; Check receiver injectivity
(push) ; 4
(assert (not (forall ((j1@79@01 Int) (j2@79@01 Int)) (!
  (=>
    (and
      (and
        (and (<= 0 j1@79@01) (< j1@79@01 (Seq_length xs@53@01)))
        (< $Perm.No $k@80@01))
      (and
        (and (<= 0 j2@79@01) (< j2@79@01 (Seq_length xs@53@01)))
        (< $Perm.No $k@80@01))
      (= (Seq_index xs@53@01 j1@79@01) (Seq_index xs@53@01 j2@79@01)))
    (= j1@79@01 j2@79@01))
  
  :qid |item-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((j@79@01 Int)) (!
  (=>
    (and
      (and (<= 0 j@79@01) (< j@79@01 (Seq_length xs@53@01)))
      (< $Perm.No $k@80@01))
    (and
      (= (inv@81@01 (Seq_index xs@53@01 j@79@01)) j@79@01)
      (img@82@01 (Seq_index xs@53@01 j@79@01))))
  :pattern ((Seq_index xs@53@01 j@79@01))
  :qid |item-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@82@01 r)
      (and
        (and (<= 0 (inv@81@01 r)) (< (inv@81@01 r) (Seq_length xs@53@01)))
        (< $Perm.No $k@80@01)))
    (= (Seq_index xs@53@01 (inv@81@01 r)) r))
  :pattern ((inv@81@01 r))
  :qid |item-fctOfInv|)))
; Precomputing data for removing quantified permissions
(define-fun pTaken@83@01 ((r $Ref)) $Perm
  (ite
    (and
      (and (<= 0 (inv@81@01 r)) (< (inv@81@01 r) (Seq_length xs@53@01)))
      (img@82@01 r)
      (= r (Seq_index xs@53@01 (inv@81@01 r))))
    ($Perm.min
      (ite
        (and
          (img@62@01 r)
          (and (<= 0 (inv@61@01 r)) (< (inv@61@01 r) (Seq_length xs@53@01))))
        $k@60@01
        $Perm.No)
      $k@80@01)
    $Perm.No))
; Done precomputing, updating quantified chunks
; State saturation: before repetition
(set-option :timeout 10)
(check-sat)
; unknown
; Constrain original permissions $k@80@01
(assert (forall ((r $Ref)) (!
  (=>
    (not
      (=
        (ite
          (and
            (img@62@01 r)
            (and (<= 0 (inv@61@01 r)) (< (inv@61@01 r) (Seq_length xs@53@01))))
          $k@60@01
          $Perm.No)
        $Perm.No))
    (ite
      (and
        (img@62@01 r)
        (and (<= 0 (inv@61@01 r)) (< (inv@61@01 r) (Seq_length xs@53@01))))
      (<
        (ite
          (and
            (and (<= 0 (inv@81@01 r)) (< (inv@81@01 r) (Seq_length xs@53@01)))
            (img@82@01 r)
            (= r (Seq_index xs@53@01 (inv@81@01 r))))
          $k@80@01
          $Perm.No)
        $k@60@01)
      (<
        (ite
          (and
            (and (<= 0 (inv@81@01 r)) (< (inv@81@01 r) (Seq_length xs@53@01)))
            (img@82@01 r)
            (= r (Seq_index xs@53@01 (inv@81@01 r))))
          $k@80@01
          $Perm.No)
        $Perm.No)))
  :pattern ((img@62@01 r))
  :pattern ((inv@61@01 r))
  :pattern ((img@82@01 r))
  :pattern ((Seq_index xs@53@01 (inv@81@01 r)))
  :qid |qp.srp8|)))
; Intermediate check if already taken enough permissions
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 500)
(assert (not (forall ((r $Ref)) (!
  (=>
    (and
      (and (<= 0 (inv@81@01 r)) (< (inv@81@01 r) (Seq_length xs@53@01)))
      (img@82@01 r)
      (= r (Seq_index xs@53@01 (inv@81@01 r))))
    (= (- $k@80@01 (pTaken@83@01 r)) $Perm.No))
  
  :qid |quant-u-24142|))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; Final check if taken enough permissions
; Done removing quantified permissions
; [eval] |res| == |xs| - i
; [eval] |res|
; [eval] |xs| - i
; [eval] |xs|
(set-option :timeout 0)
(push) ; 4
(assert (not (= (Seq_length res@78@01) (- (Seq_length xs@53@01) i@54@01))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(assert (= (Seq_length res@78@01) (- (Seq_length xs@53@01) i@54@01)))
; [eval] (forall j: Int :: { xs[j] } i <= j && j < |xs| ==> res[j - i] == xs[j].item)
(declare-const j@84@01 Int)
(push) ; 4
; [eval] i <= j && j < |xs| ==> res[j - i] == xs[j].item
; [eval] i <= j && j < |xs|
; [eval] i <= j
(push) ; 5
; [then-branch: 43 | !(i@54@01 <= j@84@01) | live]
; [else-branch: 43 | i@54@01 <= j@84@01 | live]
(push) ; 6
; [then-branch: 43 | !(i@54@01 <= j@84@01)]
(assert (not (<= i@54@01 j@84@01)))
(pop) ; 6
(push) ; 6
; [else-branch: 43 | i@54@01 <= j@84@01]
(assert (<= i@54@01 j@84@01))
; [eval] j < |xs|
; [eval] |xs|
(pop) ; 6
(pop) ; 5
; Joined path conditions
; Joined path conditions
(assert (or (<= i@54@01 j@84@01) (not (<= i@54@01 j@84@01))))
(push) ; 5
; [then-branch: 44 | i@54@01 <= j@84@01 && j@84@01 < |xs@53@01| | live]
; [else-branch: 44 | !(i@54@01 <= j@84@01 && j@84@01 < |xs@53@01|) | live]
(push) ; 6
; [then-branch: 44 | i@54@01 <= j@84@01 && j@84@01 < |xs@53@01|]
(assert (and (<= i@54@01 j@84@01) (< j@84@01 (Seq_length xs@53@01))))
; [eval] res[j - i] == xs[j].item
; [eval] res[j - i]
; [eval] j - i
(push) ; 7
(assert (not (>= (- j@84@01 i@54@01) 0)))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(push) ; 7
(assert (not (< (- j@84@01 i@54@01) (Seq_length res@78@01))))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
; [eval] xs[j]
(push) ; 7
(assert (not (>= j@84@01 0)))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(push) ; 7
(assert (not (ite
  (and
    (img@62@01 (Seq_index xs@53@01 j@84@01))
    (and
      (<= 0 (inv@61@01 (Seq_index xs@53@01 j@84@01)))
      (< (inv@61@01 (Seq_index xs@53@01 j@84@01)) (Seq_length xs@53@01))))
  (< $Perm.No $k@60@01)
  false)))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(pop) ; 6
(push) ; 6
; [else-branch: 44 | !(i@54@01 <= j@84@01 && j@84@01 < |xs@53@01|)]
(assert (not (and (<= i@54@01 j@84@01) (< j@84@01 (Seq_length xs@53@01)))))
(pop) ; 6
(pop) ; 5
; Joined path conditions
; Joined path conditions
(assert (or
  (not (and (<= i@54@01 j@84@01) (< j@84@01 (Seq_length xs@53@01))))
  (and (<= i@54@01 j@84@01) (< j@84@01 (Seq_length xs@53@01)))))
(pop) ; 4
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall ((j@84@01 Int)) (!
  (and
    (or (<= i@54@01 j@84@01) (not (<= i@54@01 j@84@01)))
    (or
      (not (and (<= i@54@01 j@84@01) (< j@84@01 (Seq_length xs@53@01))))
      (and (<= i@54@01 j@84@01) (< j@84@01 (Seq_length xs@53@01)))))
  :pattern ((Seq_index xs@53@01 j@84@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/all/issues/silicon/0512.vpr@57@12@57@76-aux|)))
(push) ; 4
(assert (not (forall ((j@84@01 Int)) (!
  (=>
    (and (<= i@54@01 j@84@01) (< j@84@01 (Seq_length xs@53@01)))
    (=
      (Seq_index res@78@01 (- j@84@01 i@54@01))
      ($FVF.lookup_item ($SortWrappers.$SnapTo$FVF<item> ($Snap.second ($Snap.second ($Snap.second $t@56@01)))) (Seq_index
        xs@53@01
        j@84@01))))
  :pattern ((Seq_index xs@53@01 j@84@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/all/issues/silicon/0512.vpr@57@12@57@76|))))
(check-sat)
; unsat
(pop) ; 4
; 0.01s
; (get-info :all-statistics)
(assert (forall ((j@84@01 Int)) (!
  (=>
    (and (<= i@54@01 j@84@01) (< j@84@01 (Seq_length xs@53@01)))
    (=
      (Seq_index res@78@01 (- j@84@01 i@54@01))
      ($FVF.lookup_item ($SortWrappers.$SnapTo$FVF<item> ($Snap.second ($Snap.second ($Snap.second $t@56@01)))) (Seq_index
        xs@53@01
        j@84@01))))
  :pattern ((Seq_index xs@53@01 j@84@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/all/issues/silicon/0512.vpr@57@12@57@76|)))
(pop) ; 3
(push) ; 3
; [else-branch: 35 | !(i@54@01 < |xs@53@01|)]
(assert (not (< i@54@01 (Seq_length xs@53@01))))
(pop) ; 3
; [eval] !(i < |xs|)
; [eval] i < |xs|
; [eval] |xs|
(push) ; 3
(set-option :timeout 10)
(assert (not (< i@54@01 (Seq_length xs@53@01))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (not (< i@54@01 (Seq_length xs@53@01)))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; [then-branch: 45 | !(i@54@01 < |xs@53@01|) | live]
; [else-branch: 45 | i@54@01 < |xs@53@01| | live]
(set-option :timeout 0)
(push) ; 3
; [then-branch: 45 | !(i@54@01 < |xs@53@01|)]
(assert (not (< i@54@01 (Seq_length xs@53@01))))
; [exec]
; res := Seq[Int]()
; [eval] Seq[Int]()
; [eval] 0 <= i
; [eval] i <= |xs|
; [eval] |xs|
(declare-const j@85@01 Int)
(push) ; 4
; [eval] 0 <= j && j < |xs|
; [eval] 0 <= j
(push) ; 5
; [then-branch: 46 | !(0 <= j@85@01) | live]
; [else-branch: 46 | 0 <= j@85@01 | live]
(push) ; 6
; [then-branch: 46 | !(0 <= j@85@01)]
(assert (not (<= 0 j@85@01)))
(pop) ; 6
(push) ; 6
; [else-branch: 46 | 0 <= j@85@01]
(assert (<= 0 j@85@01))
; [eval] j < |xs|
; [eval] |xs|
(pop) ; 6
(pop) ; 5
; Joined path conditions
; Joined path conditions
(assert (or (<= 0 j@85@01) (not (<= 0 j@85@01))))
(assert (and (<= 0 j@85@01) (< j@85@01 (Seq_length xs@53@01))))
(declare-const $k@86@01 $Perm)
(assert ($Perm.isReadVar $k@86@01))
; [eval] xs[j]
(push) ; 5
(assert (not (>= j@85@01 0)))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(pop) ; 4
(declare-fun inv@87@01 ($Ref) Int)
(declare-fun img@88@01 ($Ref) Bool)
; Nested auxiliary terms: globals
(assert ($Perm.isReadVar $k@86@01))
; Nested auxiliary terms: non-globals
(assert (forall ((j@85@01 Int)) (!
  (=>
    (and (<= 0 j@85@01) (< j@85@01 (Seq_length xs@53@01)))
    (or (<= 0 j@85@01) (not (<= 0 j@85@01))))
  :pattern ((Seq_index xs@53@01 j@85@01))
  :qid |item-aux|)))
(push) ; 4
(assert (not (forall ((j@85@01 Int)) (!
  (=>
    (and (<= 0 j@85@01) (< j@85@01 (Seq_length xs@53@01)))
    (or (= $k@86@01 $Perm.No) (< $Perm.No $k@86@01)))
  
  :qid |quant-u-24143|))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; Check receiver injectivity
(push) ; 4
(assert (not (forall ((j1@85@01 Int) (j2@85@01 Int)) (!
  (=>
    (and
      (and
        (and (<= 0 j1@85@01) (< j1@85@01 (Seq_length xs@53@01)))
        (< $Perm.No $k@86@01))
      (and
        (and (<= 0 j2@85@01) (< j2@85@01 (Seq_length xs@53@01)))
        (< $Perm.No $k@86@01))
      (= (Seq_index xs@53@01 j1@85@01) (Seq_index xs@53@01 j2@85@01)))
    (= j1@85@01 j2@85@01))
  
  :qid |item-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((j@85@01 Int)) (!
  (=>
    (and
      (and (<= 0 j@85@01) (< j@85@01 (Seq_length xs@53@01)))
      (< $Perm.No $k@86@01))
    (and
      (= (inv@87@01 (Seq_index xs@53@01 j@85@01)) j@85@01)
      (img@88@01 (Seq_index xs@53@01 j@85@01))))
  :pattern ((Seq_index xs@53@01 j@85@01))
  :qid |item-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@88@01 r)
      (and
        (and (<= 0 (inv@87@01 r)) (< (inv@87@01 r) (Seq_length xs@53@01)))
        (< $Perm.No $k@86@01)))
    (= (Seq_index xs@53@01 (inv@87@01 r)) r))
  :pattern ((inv@87@01 r))
  :qid |item-fctOfInv|)))
; Precomputing data for removing quantified permissions
(define-fun pTaken@89@01 ((r $Ref)) $Perm
  (ite
    (and
      (and (<= 0 (inv@87@01 r)) (< (inv@87@01 r) (Seq_length xs@53@01)))
      (img@88@01 r)
      (= r (Seq_index xs@53@01 (inv@87@01 r))))
    ($Perm.min
      (ite
        (and
          (img@62@01 r)
          (and (<= 0 (inv@61@01 r)) (< (inv@61@01 r) (Seq_length xs@53@01))))
        $k@60@01
        $Perm.No)
      $k@86@01)
    $Perm.No))
; Done precomputing, updating quantified chunks
; State saturation: before repetition
(set-option :timeout 10)
(check-sat)
; unknown
; Constrain original permissions $k@86@01
(assert (forall ((r $Ref)) (!
  (=>
    (not
      (=
        (ite
          (and
            (img@62@01 r)
            (and (<= 0 (inv@61@01 r)) (< (inv@61@01 r) (Seq_length xs@53@01))))
          $k@60@01
          $Perm.No)
        $Perm.No))
    (ite
      (and
        (img@62@01 r)
        (and (<= 0 (inv@61@01 r)) (< (inv@61@01 r) (Seq_length xs@53@01))))
      (<
        (ite
          (and
            (and (<= 0 (inv@87@01 r)) (< (inv@87@01 r) (Seq_length xs@53@01)))
            (img@88@01 r)
            (= r (Seq_index xs@53@01 (inv@87@01 r))))
          $k@86@01
          $Perm.No)
        $k@60@01)
      (<
        (ite
          (and
            (and (<= 0 (inv@87@01 r)) (< (inv@87@01 r) (Seq_length xs@53@01)))
            (img@88@01 r)
            (= r (Seq_index xs@53@01 (inv@87@01 r))))
          $k@86@01
          $Perm.No)
        $Perm.No)))
  :pattern ((img@62@01 r))
  :pattern ((inv@61@01 r))
  :pattern ((img@88@01 r))
  :pattern ((Seq_index xs@53@01 (inv@87@01 r)))
  :qid |qp.srp9|)))
; Intermediate check if already taken enough permissions
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 500)
(assert (not (forall ((r $Ref)) (!
  (=>
    (and
      (and (<= 0 (inv@87@01 r)) (< (inv@87@01 r) (Seq_length xs@53@01)))
      (img@88@01 r)
      (= r (Seq_index xs@53@01 (inv@87@01 r))))
    (= (- $k@86@01 (pTaken@89@01 r)) $Perm.No))
  
  :qid |quant-u-24146|))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; Final check if taken enough permissions
; Done removing quantified permissions
; [eval] |res| == |xs| - i
; [eval] |res|
; [eval] |xs| - i
; [eval] |xs|
(set-option :timeout 0)
(push) ; 4
(assert (not (= (Seq_length (as Seq_empty  Seq<Int>)) (- (Seq_length xs@53@01) i@54@01))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(assert (= (Seq_length (as Seq_empty  Seq<Int>)) (- (Seq_length xs@53@01) i@54@01)))
; [eval] (forall j: Int :: { xs[j] } i <= j && j < |xs| ==> res[j - i] == xs[j].item)
(declare-const j@90@01 Int)
(push) ; 4
; [eval] i <= j && j < |xs| ==> res[j - i] == xs[j].item
; [eval] i <= j && j < |xs|
; [eval] i <= j
(push) ; 5
; [then-branch: 47 | !(i@54@01 <= j@90@01) | live]
; [else-branch: 47 | i@54@01 <= j@90@01 | live]
(push) ; 6
; [then-branch: 47 | !(i@54@01 <= j@90@01)]
(assert (not (<= i@54@01 j@90@01)))
(pop) ; 6
(push) ; 6
; [else-branch: 47 | i@54@01 <= j@90@01]
(assert (<= i@54@01 j@90@01))
; [eval] j < |xs|
; [eval] |xs|
(pop) ; 6
(pop) ; 5
; Joined path conditions
; Joined path conditions
(assert (or (<= i@54@01 j@90@01) (not (<= i@54@01 j@90@01))))
(push) ; 5
; [then-branch: 48 | i@54@01 <= j@90@01 && j@90@01 < |xs@53@01| | live]
; [else-branch: 48 | !(i@54@01 <= j@90@01 && j@90@01 < |xs@53@01|) | live]
(push) ; 6
; [then-branch: 48 | i@54@01 <= j@90@01 && j@90@01 < |xs@53@01|]
(assert (and (<= i@54@01 j@90@01) (< j@90@01 (Seq_length xs@53@01))))
; [eval] res[j - i] == xs[j].item
; [eval] res[j - i]
; [eval] j - i
(push) ; 7
(assert (not (>= (- j@90@01 i@54@01) 0)))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(push) ; 7
(assert (not (< (- j@90@01 i@54@01) (Seq_length (as Seq_empty  Seq<Int>)))))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
; [eval] xs[j]
(push) ; 7
(assert (not (>= j@90@01 0)))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(push) ; 7
(assert (not (ite
  (and
    (img@62@01 (Seq_index xs@53@01 j@90@01))
    (and
      (<= 0 (inv@61@01 (Seq_index xs@53@01 j@90@01)))
      (< (inv@61@01 (Seq_index xs@53@01 j@90@01)) (Seq_length xs@53@01))))
  (< $Perm.No $k@60@01)
  false)))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(pop) ; 6
(push) ; 6
; [else-branch: 48 | !(i@54@01 <= j@90@01 && j@90@01 < |xs@53@01|)]
(assert (not (and (<= i@54@01 j@90@01) (< j@90@01 (Seq_length xs@53@01)))))
(pop) ; 6
(pop) ; 5
; Joined path conditions
; Joined path conditions
(assert (or
  (not (and (<= i@54@01 j@90@01) (< j@90@01 (Seq_length xs@53@01))))
  (and (<= i@54@01 j@90@01) (< j@90@01 (Seq_length xs@53@01)))))
(pop) ; 4
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall ((j@90@01 Int)) (!
  (and
    (or (<= i@54@01 j@90@01) (not (<= i@54@01 j@90@01)))
    (or
      (not (and (<= i@54@01 j@90@01) (< j@90@01 (Seq_length xs@53@01))))
      (and (<= i@54@01 j@90@01) (< j@90@01 (Seq_length xs@53@01)))))
  :pattern ((Seq_index xs@53@01 j@90@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/all/issues/silicon/0512.vpr@57@12@57@76-aux|)))
(push) ; 4
(assert (not (forall ((j@90@01 Int)) (!
  (=>
    (and (<= i@54@01 j@90@01) (< j@90@01 (Seq_length xs@53@01)))
    (=
      (Seq_index (as Seq_empty  Seq<Int>) (- j@90@01 i@54@01))
      ($FVF.lookup_item ($SortWrappers.$SnapTo$FVF<item> ($Snap.second ($Snap.second ($Snap.second $t@56@01)))) (Seq_index
        xs@53@01
        j@90@01))))
  :pattern ((Seq_index xs@53@01 j@90@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/all/issues/silicon/0512.vpr@57@12@57@76|))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(assert (forall ((j@90@01 Int)) (!
  (=>
    (and (<= i@54@01 j@90@01) (< j@90@01 (Seq_length xs@53@01)))
    (=
      (Seq_index (as Seq_empty  Seq<Int>) (- j@90@01 i@54@01))
      ($FVF.lookup_item ($SortWrappers.$SnapTo$FVF<item> ($Snap.second ($Snap.second ($Snap.second $t@56@01)))) (Seq_index
        xs@53@01
        j@90@01))))
  :pattern ((Seq_index xs@53@01 j@90@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/all/issues/silicon/0512.vpr@57@12@57@76|)))
(pop) ; 3
(push) ; 3
; [else-branch: 45 | i@54@01 < |xs@53@01|]
(assert (< i@54@01 (Seq_length xs@53@01)))
(pop) ; 3
(pop) ; 2
(pop) ; 1
; ---------- lemmaSumInit ----------
(declare-const xs@91@01 VCTArray<Ref>)
(declare-const i@92@01 Int)
(declare-const P@93@01 $Perm)
(declare-const xs@94@01 VCTArray<Ref>)
(declare-const i@95@01 Int)
(declare-const P@96@01 $Perm)
(push) ; 1
(declare-const $t@97@01 $Snap)
(assert (= $t@97@01 ($Snap.combine ($Snap.first $t@97@01) ($Snap.second $t@97@01))))
(assert (= ($Snap.first $t@97@01) $Snap.unit))
; [eval] 0 / 1 < P
(assert (< $Perm.No P@96@01))
(assert (=
  ($Snap.second $t@97@01)
  ($Snap.combine
    ($Snap.first ($Snap.second $t@97@01))
    ($Snap.second ($Snap.second $t@97@01)))))
(assert (= ($Snap.first ($Snap.second $t@97@01)) $Snap.unit))
; [eval] P < 1 / 1
(assert (< P@96@01 $Perm.Write))
(assert (=
  ($Snap.second ($Snap.second $t@97@01))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second $t@97@01)))
    ($Snap.second ($Snap.second ($Snap.second $t@97@01))))))
(declare-const i_fresh_rw_0@98@01 Int)
(push) ; 2
; [eval] 0 <= i_fresh_rw_0 && i_fresh_rw_0 < (alen(xs): Int)
; [eval] 0 <= i_fresh_rw_0
(push) ; 3
; [then-branch: 49 | !(0 <= i_fresh_rw_0@98@01) | live]
; [else-branch: 49 | 0 <= i_fresh_rw_0@98@01 | live]
(push) ; 4
; [then-branch: 49 | !(0 <= i_fresh_rw_0@98@01)]
(assert (not (<= 0 i_fresh_rw_0@98@01)))
(pop) ; 4
(push) ; 4
; [else-branch: 49 | 0 <= i_fresh_rw_0@98@01]
(assert (<= 0 i_fresh_rw_0@98@01))
; [eval] i_fresh_rw_0 < (alen(xs): Int)
; [eval] (alen(xs): Int)
(pop) ; 4
(pop) ; 3
; Joined path conditions
; Joined path conditions
(assert (or (<= 0 i_fresh_rw_0@98@01) (not (<= 0 i_fresh_rw_0@98@01))))
(assert (and (<= 0 i_fresh_rw_0@98@01) (< i_fresh_rw_0@98@01 (alen<Int> xs@94@01))))
; [eval] (loc(xs, i_fresh_rw_0): Ref)
(declare-const $k@99@01 $Perm)
(assert ($Perm.isReadVar $k@99@01))
(pop) ; 2
(declare-fun inv@100@01 ($Ref) Int)
(declare-fun img@101@01 ($Ref) Bool)
; Nested auxiliary terms: globals
(assert ($Perm.isReadVar $k@99@01))
; Nested auxiliary terms: non-globals
(assert (forall ((i_fresh_rw_0@98@01 Int)) (!
  (=>
    (and (<= 0 i_fresh_rw_0@98@01) (< i_fresh_rw_0@98@01 (alen<Int> xs@94@01)))
    (or (<= 0 i_fresh_rw_0@98@01) (not (<= 0 i_fresh_rw_0@98@01))))
  :pattern ((loc<Ref> xs@94@01 i_fresh_rw_0@98@01))
  :qid |item-aux|)))
(push) ; 2
(assert (not (forall ((i_fresh_rw_0@98@01 Int)) (!
  (=>
    (and (<= 0 i_fresh_rw_0@98@01) (< i_fresh_rw_0@98@01 (alen<Int> xs@94@01)))
    (or (= $k@99@01 $Perm.No) (< $Perm.No $k@99@01)))
  
  :qid |quant-u-24147|))))
(check-sat)
; unsat
(pop) ; 2
; 0.00s
; (get-info :all-statistics)
; Check receiver injectivity
(push) ; 2
(assert (not (forall ((i_fresh_rw_01@98@01 Int) (i_fresh_rw_02@98@01 Int)) (!
  (=>
    (and
      (and
        (and
          (<= 0 i_fresh_rw_01@98@01)
          (< i_fresh_rw_01@98@01 (alen<Int> xs@94@01)))
        (< $Perm.No $k@99@01))
      (and
        (and
          (<= 0 i_fresh_rw_02@98@01)
          (< i_fresh_rw_02@98@01 (alen<Int> xs@94@01)))
        (< $Perm.No $k@99@01))
      (=
        (loc<Ref> xs@94@01 i_fresh_rw_01@98@01)
        (loc<Ref> xs@94@01 i_fresh_rw_02@98@01)))
    (= i_fresh_rw_01@98@01 i_fresh_rw_02@98@01))
  
  :qid |item-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 2
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((i_fresh_rw_0@98@01 Int)) (!
  (=>
    (and
      (and (<= 0 i_fresh_rw_0@98@01) (< i_fresh_rw_0@98@01 (alen<Int> xs@94@01)))
      (< $Perm.No $k@99@01))
    (and
      (= (inv@100@01 (loc<Ref> xs@94@01 i_fresh_rw_0@98@01)) i_fresh_rw_0@98@01)
      (img@101@01 (loc<Ref> xs@94@01 i_fresh_rw_0@98@01))))
  :pattern ((loc<Ref> xs@94@01 i_fresh_rw_0@98@01))
  :qid |quant-u-24148|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@101@01 r)
      (and
        (and (<= 0 (inv@100@01 r)) (< (inv@100@01 r) (alen<Int> xs@94@01)))
        (< $Perm.No $k@99@01)))
    (= (loc<Ref> xs@94@01 (inv@100@01 r)) r))
  :pattern ((inv@100@01 r))
  :qid |item-fctOfInv|)))
; Permissions are non-negative
(assert (forall ((i_fresh_rw_0@98@01 Int)) (!
  (<= $Perm.No $k@99@01)
  :pattern ((loc<Ref> xs@94@01 i_fresh_rw_0@98@01))
  :qid |item-permAtLeastZero|)))
; Field permissions are at most one
(assert (forall ((i_fresh_rw_0@98@01 Int)) (!
  (<= $k@99@01 $Perm.Write)
  :pattern ((loc<Ref> xs@94@01 i_fresh_rw_0@98@01))
  :qid |item-permAtMostOne|)))
; Permission implies non-null receiver
(assert (forall ((i_fresh_rw_0@98@01 Int)) (!
  (=>
    (and
      (and (<= 0 i_fresh_rw_0@98@01) (< i_fresh_rw_0@98@01 (alen<Int> xs@94@01)))
      (< $Perm.No $k@99@01))
    (not (= (loc<Ref> xs@94@01 i_fresh_rw_0@98@01) $Ref.null)))
  :pattern ((loc<Ref> xs@94@01 i_fresh_rw_0@98@01))
  :qid |item-permImpliesNonNull|)))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second $t@97@01)))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@97@01))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@97@01)))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@97@01))))
  $Snap.unit))
; [eval] (forall j: Int :: { (loc(xs, j): Ref) } 0 <= j && j < (alen(xs): Int) ==> (loc(xs, j): Ref).item == 0)
(declare-const j@102@01 Int)
(push) ; 2
; [eval] 0 <= j && j < (alen(xs): Int) ==> (loc(xs, j): Ref).item == 0
; [eval] 0 <= j && j < (alen(xs): Int)
; [eval] 0 <= j
(push) ; 3
; [then-branch: 50 | !(0 <= j@102@01) | live]
; [else-branch: 50 | 0 <= j@102@01 | live]
(push) ; 4
; [then-branch: 50 | !(0 <= j@102@01)]
(assert (not (<= 0 j@102@01)))
(pop) ; 4
(push) ; 4
; [else-branch: 50 | 0 <= j@102@01]
(assert (<= 0 j@102@01))
; [eval] j < (alen(xs): Int)
; [eval] (alen(xs): Int)
(pop) ; 4
(pop) ; 3
; Joined path conditions
; Joined path conditions
(assert (or (<= 0 j@102@01) (not (<= 0 j@102@01))))
(push) ; 3
; [then-branch: 51 | 0 <= j@102@01 && j@102@01 < alen[Int](xs@94@01) | live]
; [else-branch: 51 | !(0 <= j@102@01 && j@102@01 < alen[Int](xs@94@01)) | live]
(push) ; 4
; [then-branch: 51 | 0 <= j@102@01 && j@102@01 < alen[Int](xs@94@01)]
(assert (and (<= 0 j@102@01) (< j@102@01 (alen<Int> xs@94@01))))
; [eval] (loc(xs, j): Ref).item == 0
; [eval] (loc(xs, j): Ref)
(push) ; 5
(assert (not (ite
  (and
    (img@101@01 (loc<Ref> xs@94@01 j@102@01))
    (and
      (<= 0 (inv@100@01 (loc<Ref> xs@94@01 j@102@01)))
      (< (inv@100@01 (loc<Ref> xs@94@01 j@102@01)) (alen<Int> xs@94@01))))
  (< $Perm.No $k@99@01)
  false)))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(pop) ; 4
(push) ; 4
; [else-branch: 51 | !(0 <= j@102@01 && j@102@01 < alen[Int](xs@94@01))]
(assert (not (and (<= 0 j@102@01) (< j@102@01 (alen<Int> xs@94@01)))))
(pop) ; 4
(pop) ; 3
; Joined path conditions
; Joined path conditions
(assert (or
  (not (and (<= 0 j@102@01) (< j@102@01 (alen<Int> xs@94@01))))
  (and (<= 0 j@102@01) (< j@102@01 (alen<Int> xs@94@01)))))
(pop) ; 2
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall ((j@102@01 Int)) (!
  (and
    (or (<= 0 j@102@01) (not (<= 0 j@102@01)))
    (or
      (not (and (<= 0 j@102@01) (< j@102@01 (alen<Int> xs@94@01))))
      (and (<= 0 j@102@01) (< j@102@01 (alen<Int> xs@94@01)))))
  :pattern ((loc<Ref> xs@94@01 j@102@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/all/issues/silicon/0512.vpr@96@13@96@77-aux|)))
(assert (forall ((j@102@01 Int)) (!
  (=>
    (and (<= 0 j@102@01) (< j@102@01 (alen<Int> xs@94@01)))
    (=
      ($FVF.lookup_item ($SortWrappers.$SnapTo$FVF<item> ($Snap.first ($Snap.second ($Snap.second $t@97@01)))) (loc<Ref> xs@94@01 j@102@01))
      0))
  :pattern ((loc<Ref> xs@94@01 j@102@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/all/issues/silicon/0512.vpr@96@13@96@77|)))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@97@01))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@97@01)))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@97@01))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@97@01)))))
  $Snap.unit))
; [eval] 0 <= i
(assert (<= 0 i@95@01))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@97@01)))))
  $Snap.unit))
; [eval] i <= (alen(xs): Int)
; [eval] (alen(xs): Int)
(assert (<= i@95@01 (alen<Int> xs@94@01)))
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
(set-option :timeout 0)
(push) ; 2
(pop) ; 2
(push) ; 2
; [exec]
; assert sumContrib(xs, i, P) ==
;   (i == (alen(xs): Int) ?
;     0 :
;     (loc(xs, i): Ref).item + sumContrib(xs, i + 1, P))
; [eval] sumContrib(xs, i, P) == (i == (alen(xs): Int) ? 0 : (loc(xs, i): Ref).item + sumContrib(xs, i + 1, P))
; [eval] sumContrib(xs, i, P)
(push) ; 3
; [eval] 0 / 1 < P
; [eval] P < 1 / 1
; [eval] 0 <= i
; [eval] i <= (alen(A): Int)
; [eval] (alen(A): Int)
(declare-const j@103@01 Int)
(push) ; 4
; [eval] 0 <= j && j < (alen(A): Int)
; [eval] 0 <= j
(push) ; 5
; [then-branch: 52 | !(0 <= j@103@01) | live]
; [else-branch: 52 | 0 <= j@103@01 | live]
(push) ; 6
; [then-branch: 52 | !(0 <= j@103@01)]
(assert (not (<= 0 j@103@01)))
(pop) ; 6
(push) ; 6
; [else-branch: 52 | 0 <= j@103@01]
(assert (<= 0 j@103@01))
; [eval] j < (alen(A): Int)
; [eval] (alen(A): Int)
(pop) ; 6
(pop) ; 5
; Joined path conditions
; Joined path conditions
(assert (or (<= 0 j@103@01) (not (<= 0 j@103@01))))
(assert (and (<= 0 j@103@01) (< j@103@01 (alen<Int> xs@94@01))))
(declare-const $k@104@01 $Perm)
(assert ($Perm.isReadVar $k@104@01))
; [eval] (loc(A, j): Ref)
(pop) ; 4
(declare-fun inv@105@01 ($Ref) Int)
(declare-fun img@106@01 ($Ref) Bool)
; Nested auxiliary terms: globals
(assert ($Perm.isReadVar $k@104@01))
; Nested auxiliary terms: non-globals
(assert (forall ((j@103@01 Int)) (!
  (=>
    (and (<= 0 j@103@01) (< j@103@01 (alen<Int> xs@94@01)))
    (or (<= 0 j@103@01) (not (<= 0 j@103@01))))
  :pattern ((loc<Ref> xs@94@01 j@103@01))
  :qid |item-aux|)))
(push) ; 4
(assert (not (forall ((j@103@01 Int)) (!
  (=>
    (and (<= 0 j@103@01) (< j@103@01 (alen<Int> xs@94@01)))
    (or (= $k@104@01 $Perm.No) (< $Perm.No $k@104@01)))
  
  :qid |quant-u-24149|))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; Check receiver injectivity
(push) ; 4
(assert (not (forall ((j1@103@01 Int) (j2@103@01 Int)) (!
  (=>
    (and
      (and
        (and (<= 0 j1@103@01) (< j1@103@01 (alen<Int> xs@94@01)))
        (< $Perm.No $k@104@01))
      (and
        (and (<= 0 j2@103@01) (< j2@103@01 (alen<Int> xs@94@01)))
        (< $Perm.No $k@104@01))
      (= (loc<Ref> xs@94@01 j1@103@01) (loc<Ref> xs@94@01 j2@103@01)))
    (= j1@103@01 j2@103@01))
  
  :qid |item-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((j@103@01 Int)) (!
  (=>
    (and
      (and (<= 0 j@103@01) (< j@103@01 (alen<Int> xs@94@01)))
      (< $Perm.No $k@104@01))
    (and
      (= (inv@105@01 (loc<Ref> xs@94@01 j@103@01)) j@103@01)
      (img@106@01 (loc<Ref> xs@94@01 j@103@01))))
  :pattern ((loc<Ref> xs@94@01 j@103@01))
  :qid |item-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@106@01 r)
      (and
        (and (<= 0 (inv@105@01 r)) (< (inv@105@01 r) (alen<Int> xs@94@01)))
        (< $Perm.No $k@104@01)))
    (= (loc<Ref> xs@94@01 (inv@105@01 r)) r))
  :pattern ((inv@105@01 r))
  :qid |item-fctOfInv|)))
(push) ; 4
(assert (not (forall ((r $Ref)) (!
  (=>
    (and
      (and
        (and (<= 0 (inv@105@01 r)) (< (inv@105@01 r) (alen<Int> xs@94@01)))
        (img@106@01 r)
        (= r (loc<Ref> xs@94@01 (inv@105@01 r))))
      (> $k@104@01 $Perm.No))
    (>
      (ite
        (and
          (img@101@01 r)
          (and (<= 0 (inv@100@01 r)) (< (inv@100@01 r) (alen<Int> xs@94@01))))
        $k@99@01
        $Perm.No)
      $Perm.No))
  
  :qid |quant-u-24150|))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(declare-const sm@107@01 $FVF<item>)
; Definitional axioms for snapshot map domain
(assert (forall ((r $Ref)) (!
  (and
    (=>
      (Set_in r ($FVF.domain_item (as sm@107@01  $FVF<item>)))
      (and
        (and (<= 0 (inv@105@01 r)) (< (inv@105@01 r) (alen<Int> xs@94@01)))
        (< $Perm.No $k@104@01)
        (img@106@01 r)))
    (=>
      (and
        (and (<= 0 (inv@105@01 r)) (< (inv@105@01 r) (alen<Int> xs@94@01)))
        (< $Perm.No $k@104@01)
        (img@106@01 r))
      (Set_in r ($FVF.domain_item (as sm@107@01  $FVF<item>)))))
  :pattern ((Set_in r ($FVF.domain_item (as sm@107@01  $FVF<item>))))
  :qid |qp.fvfDomDef11|)))
; Definitional axioms for snapshot map values
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and
        (and (<= 0 (inv@105@01 r)) (< (inv@105@01 r) (alen<Int> xs@94@01)))
        (< $Perm.No $k@104@01)
        (img@106@01 r))
      (ite
        (and
          (img@101@01 r)
          (and (<= 0 (inv@100@01 r)) (< (inv@100@01 r) (alen<Int> xs@94@01))))
        (< $Perm.No $k@99@01)
        false))
    (=
      ($FVF.lookup_item (as sm@107@01  $FVF<item>) r)
      ($FVF.lookup_item ($SortWrappers.$SnapTo$FVF<item> ($Snap.first ($Snap.second ($Snap.second $t@97@01)))) r)))
  :pattern (($FVF.lookup_item (as sm@107@01  $FVF<item>) r))
  :pattern (($FVF.lookup_item ($SortWrappers.$SnapTo$FVF<item> ($Snap.first ($Snap.second ($Snap.second $t@97@01)))) r))
  :qid |qp.fvfValDef10|)))
(assert (sumContrib%precondition ($Snap.combine
  $Snap.unit
  ($Snap.combine
    $Snap.unit
    ($Snap.combine
      $Snap.unit
      ($Snap.combine
        $Snap.unit
        ($SortWrappers.$FVF<item>To$Snap (as sm@107@01  $FVF<item>)))))) xs@94@01 i@95@01 P@96@01))
(pop) ; 3
; Joined path conditions
(assert ($Perm.isReadVar $k@104@01))
(assert (forall ((j@103@01 Int)) (!
  (=>
    (and
      (and (<= 0 j@103@01) (< j@103@01 (alen<Int> xs@94@01)))
      (< $Perm.No $k@104@01))
    (and
      (= (inv@105@01 (loc<Ref> xs@94@01 j@103@01)) j@103@01)
      (img@106@01 (loc<Ref> xs@94@01 j@103@01))))
  :pattern ((loc<Ref> xs@94@01 j@103@01))
  :qid |item-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@106@01 r)
      (and
        (and (<= 0 (inv@105@01 r)) (< (inv@105@01 r) (alen<Int> xs@94@01)))
        (< $Perm.No $k@104@01)))
    (= (loc<Ref> xs@94@01 (inv@105@01 r)) r))
  :pattern ((inv@105@01 r))
  :qid |item-fctOfInv|)))
(assert (forall ((r $Ref)) (!
  (and
    (=>
      (Set_in r ($FVF.domain_item (as sm@107@01  $FVF<item>)))
      (and
        (and (<= 0 (inv@105@01 r)) (< (inv@105@01 r) (alen<Int> xs@94@01)))
        (< $Perm.No $k@104@01)
        (img@106@01 r)))
    (=>
      (and
        (and (<= 0 (inv@105@01 r)) (< (inv@105@01 r) (alen<Int> xs@94@01)))
        (< $Perm.No $k@104@01)
        (img@106@01 r))
      (Set_in r ($FVF.domain_item (as sm@107@01  $FVF<item>)))))
  :pattern ((Set_in r ($FVF.domain_item (as sm@107@01  $FVF<item>))))
  :qid |qp.fvfDomDef11|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and
        (and (<= 0 (inv@105@01 r)) (< (inv@105@01 r) (alen<Int> xs@94@01)))
        (< $Perm.No $k@104@01)
        (img@106@01 r))
      (ite
        (and
          (img@101@01 r)
          (and (<= 0 (inv@100@01 r)) (< (inv@100@01 r) (alen<Int> xs@94@01))))
        (< $Perm.No $k@99@01)
        false))
    (=
      ($FVF.lookup_item (as sm@107@01  $FVF<item>) r)
      ($FVF.lookup_item ($SortWrappers.$SnapTo$FVF<item> ($Snap.first ($Snap.second ($Snap.second $t@97@01)))) r)))
  :pattern (($FVF.lookup_item (as sm@107@01  $FVF<item>) r))
  :pattern (($FVF.lookup_item ($SortWrappers.$SnapTo$FVF<item> ($Snap.first ($Snap.second ($Snap.second $t@97@01)))) r))
  :qid |qp.fvfValDef10|)))
(assert (and
  (forall ((j@103@01 Int)) (!
    (=>
      (and (<= 0 j@103@01) (< j@103@01 (alen<Int> xs@94@01)))
      (or (<= 0 j@103@01) (not (<= 0 j@103@01))))
    :pattern ((loc<Ref> xs@94@01 j@103@01))
    :qid |item-aux|))
  (sumContrib%precondition ($Snap.combine
    $Snap.unit
    ($Snap.combine
      $Snap.unit
      ($Snap.combine
        $Snap.unit
        ($Snap.combine
          $Snap.unit
          ($SortWrappers.$FVF<item>To$Snap (as sm@107@01  $FVF<item>)))))) xs@94@01 i@95@01 P@96@01)))
; [eval] (i == (alen(xs): Int) ? 0 : (loc(xs, i): Ref).item + sumContrib(xs, i + 1, P))
; [eval] i == (alen(xs): Int)
; [eval] (alen(xs): Int)
(push) ; 3
(push) ; 4
(set-option :timeout 10)
(assert (not (not (= i@95@01 (alen<Int> xs@94@01)))))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not (= i@95@01 (alen<Int> xs@94@01))))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; [then-branch: 53 | i@95@01 == alen[Int](xs@94@01) | live]
; [else-branch: 53 | i@95@01 != alen[Int](xs@94@01) | live]
(set-option :timeout 0)
(push) ; 4
; [then-branch: 53 | i@95@01 == alen[Int](xs@94@01)]
(assert (= i@95@01 (alen<Int> xs@94@01)))
(pop) ; 4
(push) ; 4
; [else-branch: 53 | i@95@01 != alen[Int](xs@94@01)]
(assert (not (= i@95@01 (alen<Int> xs@94@01))))
; [eval] (loc(xs, i): Ref).item + sumContrib(xs, i + 1, P)
; [eval] (loc(xs, i): Ref)
(push) ; 5
(assert (not (ite
  (and
    (img@101@01 (loc<Ref> xs@94@01 i@95@01))
    (and
      (<= 0 (inv@100@01 (loc<Ref> xs@94@01 i@95@01)))
      (< (inv@100@01 (loc<Ref> xs@94@01 i@95@01)) (alen<Int> xs@94@01))))
  (< $Perm.No $k@99@01)
  false)))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
; [eval] sumContrib(xs, i + 1, P)
; [eval] i + 1
(push) ; 5
; [eval] 0 / 1 < P
; [eval] P < 1 / 1
; [eval] 0 <= i
(push) ; 6
(assert (not (<= 0 (+ i@95@01 1))))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(assert (<= 0 (+ i@95@01 1)))
; [eval] i <= (alen(A): Int)
; [eval] (alen(A): Int)
(push) ; 6
(assert (not (<= (+ i@95@01 1) (alen<Int> xs@94@01))))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(assert (<= (+ i@95@01 1) (alen<Int> xs@94@01)))
(declare-const j@108@01 Int)
(push) ; 6
; [eval] 0 <= j && j < (alen(A): Int)
; [eval] 0 <= j
(push) ; 7
; [then-branch: 54 | !(0 <= j@108@01) | live]
; [else-branch: 54 | 0 <= j@108@01 | live]
(push) ; 8
; [then-branch: 54 | !(0 <= j@108@01)]
(assert (not (<= 0 j@108@01)))
(pop) ; 8
(push) ; 8
; [else-branch: 54 | 0 <= j@108@01]
(assert (<= 0 j@108@01))
; [eval] j < (alen(A): Int)
; [eval] (alen(A): Int)
(pop) ; 8
(pop) ; 7
; Joined path conditions
; Joined path conditions
(assert (or (<= 0 j@108@01) (not (<= 0 j@108@01))))
(assert (and (<= 0 j@108@01) (< j@108@01 (alen<Int> xs@94@01))))
(declare-const $k@109@01 $Perm)
(assert ($Perm.isReadVar $k@109@01))
; [eval] (loc(A, j): Ref)
(pop) ; 6
(declare-fun inv@110@01 ($Ref) Int)
(declare-fun img@111@01 ($Ref) Bool)
; Nested auxiliary terms: globals
(assert ($Perm.isReadVar $k@109@01))
; Nested auxiliary terms: non-globals
(assert (forall ((j@108@01 Int)) (!
  (=>
    (and (<= 0 j@108@01) (< j@108@01 (alen<Int> xs@94@01)))
    (or (<= 0 j@108@01) (not (<= 0 j@108@01))))
  :pattern ((loc<Ref> xs@94@01 j@108@01))
  :qid |item-aux|)))
(push) ; 6
(assert (not (forall ((j@108@01 Int)) (!
  (=>
    (and (<= 0 j@108@01) (< j@108@01 (alen<Int> xs@94@01)))
    (or (= $k@109@01 $Perm.No) (< $Perm.No $k@109@01)))
  
  :qid |quant-u-24151|))))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
; Check receiver injectivity
(push) ; 6
(assert (not (forall ((j1@108@01 Int) (j2@108@01 Int)) (!
  (=>
    (and
      (and
        (and (<= 0 j1@108@01) (< j1@108@01 (alen<Int> xs@94@01)))
        (< $Perm.No $k@109@01))
      (and
        (and (<= 0 j2@108@01) (< j2@108@01 (alen<Int> xs@94@01)))
        (< $Perm.No $k@109@01))
      (= (loc<Ref> xs@94@01 j1@108@01) (loc<Ref> xs@94@01 j2@108@01)))
    (= j1@108@01 j2@108@01))
  
  :qid |item-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((j@108@01 Int)) (!
  (=>
    (and
      (and (<= 0 j@108@01) (< j@108@01 (alen<Int> xs@94@01)))
      (< $Perm.No $k@109@01))
    (and
      (= (inv@110@01 (loc<Ref> xs@94@01 j@108@01)) j@108@01)
      (img@111@01 (loc<Ref> xs@94@01 j@108@01))))
  :pattern ((loc<Ref> xs@94@01 j@108@01))
  :qid |item-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@111@01 r)
      (and
        (and (<= 0 (inv@110@01 r)) (< (inv@110@01 r) (alen<Int> xs@94@01)))
        (< $Perm.No $k@109@01)))
    (= (loc<Ref> xs@94@01 (inv@110@01 r)) r))
  :pattern ((inv@110@01 r))
  :qid |item-fctOfInv|)))
(push) ; 6
(assert (not (forall ((r $Ref)) (!
  (=>
    (and
      (and
        (and (<= 0 (inv@110@01 r)) (< (inv@110@01 r) (alen<Int> xs@94@01)))
        (img@111@01 r)
        (= r (loc<Ref> xs@94@01 (inv@110@01 r))))
      (> $k@109@01 $Perm.No))
    (>
      (ite
        (and
          (img@101@01 r)
          (and (<= 0 (inv@100@01 r)) (< (inv@100@01 r) (alen<Int> xs@94@01))))
        $k@99@01
        $Perm.No)
      $Perm.No))
  
  :qid |quant-u-24152|))))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(declare-const sm@112@01 $FVF<item>)
; Definitional axioms for snapshot map domain
(assert (forall ((r $Ref)) (!
  (and
    (=>
      (Set_in r ($FVF.domain_item (as sm@112@01  $FVF<item>)))
      (and
        (and (<= 0 (inv@110@01 r)) (< (inv@110@01 r) (alen<Int> xs@94@01)))
        (< $Perm.No $k@109@01)
        (img@111@01 r)))
    (=>
      (and
        (and (<= 0 (inv@110@01 r)) (< (inv@110@01 r) (alen<Int> xs@94@01)))
        (< $Perm.No $k@109@01)
        (img@111@01 r))
      (Set_in r ($FVF.domain_item (as sm@112@01  $FVF<item>)))))
  :pattern ((Set_in r ($FVF.domain_item (as sm@112@01  $FVF<item>))))
  :qid |qp.fvfDomDef13|)))
; Definitional axioms for snapshot map values
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and
        (and (<= 0 (inv@110@01 r)) (< (inv@110@01 r) (alen<Int> xs@94@01)))
        (< $Perm.No $k@109@01)
        (img@111@01 r))
      (ite
        (and
          (img@101@01 r)
          (and (<= 0 (inv@100@01 r)) (< (inv@100@01 r) (alen<Int> xs@94@01))))
        (< $Perm.No $k@99@01)
        false))
    (=
      ($FVF.lookup_item (as sm@112@01  $FVF<item>) r)
      ($FVF.lookup_item ($SortWrappers.$SnapTo$FVF<item> ($Snap.first ($Snap.second ($Snap.second $t@97@01)))) r)))
  :pattern (($FVF.lookup_item (as sm@112@01  $FVF<item>) r))
  :pattern (($FVF.lookup_item ($SortWrappers.$SnapTo$FVF<item> ($Snap.first ($Snap.second ($Snap.second $t@97@01)))) r))
  :qid |qp.fvfValDef12|)))
(assert (sumContrib%precondition ($Snap.combine
  $Snap.unit
  ($Snap.combine
    $Snap.unit
    ($Snap.combine
      $Snap.unit
      ($Snap.combine
        $Snap.unit
        ($SortWrappers.$FVF<item>To$Snap (as sm@112@01  $FVF<item>)))))) xs@94@01 (+
  i@95@01
  1) P@96@01))
(pop) ; 5
; Joined path conditions
(assert ($Perm.isReadVar $k@109@01))
(assert (forall ((j@108@01 Int)) (!
  (=>
    (and
      (and (<= 0 j@108@01) (< j@108@01 (alen<Int> xs@94@01)))
      (< $Perm.No $k@109@01))
    (and
      (= (inv@110@01 (loc<Ref> xs@94@01 j@108@01)) j@108@01)
      (img@111@01 (loc<Ref> xs@94@01 j@108@01))))
  :pattern ((loc<Ref> xs@94@01 j@108@01))
  :qid |item-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@111@01 r)
      (and
        (and (<= 0 (inv@110@01 r)) (< (inv@110@01 r) (alen<Int> xs@94@01)))
        (< $Perm.No $k@109@01)))
    (= (loc<Ref> xs@94@01 (inv@110@01 r)) r))
  :pattern ((inv@110@01 r))
  :qid |item-fctOfInv|)))
(assert (forall ((r $Ref)) (!
  (and
    (=>
      (Set_in r ($FVF.domain_item (as sm@112@01  $FVF<item>)))
      (and
        (and (<= 0 (inv@110@01 r)) (< (inv@110@01 r) (alen<Int> xs@94@01)))
        (< $Perm.No $k@109@01)
        (img@111@01 r)))
    (=>
      (and
        (and (<= 0 (inv@110@01 r)) (< (inv@110@01 r) (alen<Int> xs@94@01)))
        (< $Perm.No $k@109@01)
        (img@111@01 r))
      (Set_in r ($FVF.domain_item (as sm@112@01  $FVF<item>)))))
  :pattern ((Set_in r ($FVF.domain_item (as sm@112@01  $FVF<item>))))
  :qid |qp.fvfDomDef13|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and
        (and (<= 0 (inv@110@01 r)) (< (inv@110@01 r) (alen<Int> xs@94@01)))
        (< $Perm.No $k@109@01)
        (img@111@01 r))
      (ite
        (and
          (img@101@01 r)
          (and (<= 0 (inv@100@01 r)) (< (inv@100@01 r) (alen<Int> xs@94@01))))
        (< $Perm.No $k@99@01)
        false))
    (=
      ($FVF.lookup_item (as sm@112@01  $FVF<item>) r)
      ($FVF.lookup_item ($SortWrappers.$SnapTo$FVF<item> ($Snap.first ($Snap.second ($Snap.second $t@97@01)))) r)))
  :pattern (($FVF.lookup_item (as sm@112@01  $FVF<item>) r))
  :pattern (($FVF.lookup_item ($SortWrappers.$SnapTo$FVF<item> ($Snap.first ($Snap.second ($Snap.second $t@97@01)))) r))
  :qid |qp.fvfValDef12|)))
(assert (and
  (<= 0 (+ i@95@01 1))
  (<= (+ i@95@01 1) (alen<Int> xs@94@01))
  (forall ((j@108@01 Int)) (!
    (=>
      (and (<= 0 j@108@01) (< j@108@01 (alen<Int> xs@94@01)))
      (or (<= 0 j@108@01) (not (<= 0 j@108@01))))
    :pattern ((loc<Ref> xs@94@01 j@108@01))
    :qid |item-aux|))
  (sumContrib%precondition ($Snap.combine
    $Snap.unit
    ($Snap.combine
      $Snap.unit
      ($Snap.combine
        $Snap.unit
        ($Snap.combine
          $Snap.unit
          ($SortWrappers.$FVF<item>To$Snap (as sm@112@01  $FVF<item>)))))) xs@94@01 (+
    i@95@01
    1) P@96@01)))
(pop) ; 4
(pop) ; 3
; Joined path conditions
; Joined path conditions
(assert ($Perm.isReadVar $k@109@01))
(assert (forall ((j@108@01 Int)) (!
  (=>
    (and
      (and (<= 0 j@108@01) (< j@108@01 (alen<Int> xs@94@01)))
      (< $Perm.No $k@109@01))
    (and
      (= (inv@110@01 (loc<Ref> xs@94@01 j@108@01)) j@108@01)
      (img@111@01 (loc<Ref> xs@94@01 j@108@01))))
  :pattern ((loc<Ref> xs@94@01 j@108@01))
  :qid |item-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@111@01 r)
      (and
        (and (<= 0 (inv@110@01 r)) (< (inv@110@01 r) (alen<Int> xs@94@01)))
        (< $Perm.No $k@109@01)))
    (= (loc<Ref> xs@94@01 (inv@110@01 r)) r))
  :pattern ((inv@110@01 r))
  :qid |item-fctOfInv|)))
(assert (forall ((r $Ref)) (!
  (and
    (=>
      (Set_in r ($FVF.domain_item (as sm@112@01  $FVF<item>)))
      (and
        (and (<= 0 (inv@110@01 r)) (< (inv@110@01 r) (alen<Int> xs@94@01)))
        (< $Perm.No $k@109@01)
        (img@111@01 r)))
    (=>
      (and
        (and (<= 0 (inv@110@01 r)) (< (inv@110@01 r) (alen<Int> xs@94@01)))
        (< $Perm.No $k@109@01)
        (img@111@01 r))
      (Set_in r ($FVF.domain_item (as sm@112@01  $FVF<item>)))))
  :pattern ((Set_in r ($FVF.domain_item (as sm@112@01  $FVF<item>))))
  :qid |qp.fvfDomDef13|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and
        (and (<= 0 (inv@110@01 r)) (< (inv@110@01 r) (alen<Int> xs@94@01)))
        (< $Perm.No $k@109@01)
        (img@111@01 r))
      (ite
        (and
          (img@101@01 r)
          (and (<= 0 (inv@100@01 r)) (< (inv@100@01 r) (alen<Int> xs@94@01))))
        (< $Perm.No $k@99@01)
        false))
    (=
      ($FVF.lookup_item (as sm@112@01  $FVF<item>) r)
      ($FVF.lookup_item ($SortWrappers.$SnapTo$FVF<item> ($Snap.first ($Snap.second ($Snap.second $t@97@01)))) r)))
  :pattern (($FVF.lookup_item (as sm@112@01  $FVF<item>) r))
  :pattern (($FVF.lookup_item ($SortWrappers.$SnapTo$FVF<item> ($Snap.first ($Snap.second ($Snap.second $t@97@01)))) r))
  :qid |qp.fvfValDef12|)))
(assert (=>
  (not (= i@95@01 (alen<Int> xs@94@01)))
  (and
    (not (= i@95@01 (alen<Int> xs@94@01)))
    (<= 0 (+ i@95@01 1))
    (<= (+ i@95@01 1) (alen<Int> xs@94@01))
    (forall ((j@108@01 Int)) (!
      (=>
        (and (<= 0 j@108@01) (< j@108@01 (alen<Int> xs@94@01)))
        (or (<= 0 j@108@01) (not (<= 0 j@108@01))))
      :pattern ((loc<Ref> xs@94@01 j@108@01))
      :qid |item-aux|))
    (sumContrib%precondition ($Snap.combine
      $Snap.unit
      ($Snap.combine
        $Snap.unit
        ($Snap.combine
          $Snap.unit
          ($Snap.combine
            $Snap.unit
            ($SortWrappers.$FVF<item>To$Snap (as sm@112@01  $FVF<item>)))))) xs@94@01 (+
      i@95@01
      1) P@96@01))))
(assert (or (not (= i@95@01 (alen<Int> xs@94@01))) (= i@95@01 (alen<Int> xs@94@01))))
(push) ; 3
(assert (not (=
  (sumContrib ($Snap.combine
    $Snap.unit
    ($Snap.combine
      $Snap.unit
      ($Snap.combine
        $Snap.unit
        ($Snap.combine
          $Snap.unit
          ($SortWrappers.$FVF<item>To$Snap (as sm@107@01  $FVF<item>)))))) xs@94@01 i@95@01 P@96@01)
  (ite
    (= i@95@01 (alen<Int> xs@94@01))
    0
    (+
      ($FVF.lookup_item ($SortWrappers.$SnapTo$FVF<item> ($Snap.first ($Snap.second ($Snap.second $t@97@01)))) (loc<Ref> xs@94@01 i@95@01))
      (sumContrib ($Snap.combine
        $Snap.unit
        ($Snap.combine
          $Snap.unit
          ($Snap.combine
            $Snap.unit
            ($Snap.combine
              $Snap.unit
              ($SortWrappers.$FVF<item>To$Snap (as sm@112@01  $FVF<item>)))))) xs@94@01 (+
        i@95@01
        1) P@96@01))))))
(check-sat)
; unsat
(pop) ; 3
; 0.01s
; (get-info :all-statistics)
(assert (=
  (sumContrib ($Snap.combine
    $Snap.unit
    ($Snap.combine
      $Snap.unit
      ($Snap.combine
        $Snap.unit
        ($Snap.combine
          $Snap.unit
          ($SortWrappers.$FVF<item>To$Snap (as sm@107@01  $FVF<item>)))))) xs@94@01 i@95@01 P@96@01)
  (ite
    (= i@95@01 (alen<Int> xs@94@01))
    0
    (+
      ($FVF.lookup_item ($SortWrappers.$SnapTo$FVF<item> ($Snap.first ($Snap.second ($Snap.second $t@97@01)))) (loc<Ref> xs@94@01 i@95@01))
      (sumContrib ($Snap.combine
        $Snap.unit
        ($Snap.combine
          $Snap.unit
          ($Snap.combine
            $Snap.unit
            ($Snap.combine
              $Snap.unit
              ($SortWrappers.$FVF<item>To$Snap (as sm@112@01  $FVF<item>)))))) xs@94@01 (+
        i@95@01
        1) P@96@01)))))
(pop) ; 2
(pop) ; 1
