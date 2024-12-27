(get-info :version)
; (:version "4.12.1")
; Started: 2024-12-27 01:51:44
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
(declare-sort Set<Seq<$Ref>> 0)
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
; /field_value_functions_declarations.smt2 [f: Int]
(declare-fun $FVF.domain_f ($FVF<f>) Set<$Ref>)
(declare-fun $FVF.lookup_f ($FVF<f> $Ref) Int)
(declare-fun $FVF.after_f ($FVF<f> $FVF<f>) Bool)
(declare-fun $FVF.loc_f (Int $Ref) Bool)
(declare-fun $FVF.perm_f ($FPM $Ref) $Perm)
(declare-const $fvfTOP_f $FVF<f>)
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
; ---------- m ----------
(declare-const S@0@01 Seq<$Ref>)
(declare-const start@1@01 Int)
(declare-const end@2@01 Int)
(declare-const S@3@01 Seq<$Ref>)
(declare-const start@4@01 Int)
(declare-const end@5@01 Int)
(set-option :timeout 0)
(push) ; 1
(declare-const $t@6@01 $Snap)
(assert (= $t@6@01 ($Snap.combine ($Snap.first $t@6@01) ($Snap.second $t@6@01))))
(assert (= ($Snap.first $t@6@01) $Snap.unit))
; [eval] start >= 0
(assert (>= start@4@01 0))
(assert (=
  ($Snap.second $t@6@01)
  ($Snap.combine
    ($Snap.first ($Snap.second $t@6@01))
    ($Snap.second ($Snap.second $t@6@01)))))
(assert (= ($Snap.first ($Snap.second $t@6@01)) $Snap.unit))
; [eval] end <= |S|
; [eval] |S|
(assert (<= end@5@01 (Seq_length S@3@01)))
(assert (=
  ($Snap.second ($Snap.second $t@6@01))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second $t@6@01)))
    ($Snap.second ($Snap.second ($Snap.second $t@6@01))))))
(assert (= ($Snap.first ($Snap.second ($Snap.second $t@6@01))) $Snap.unit))
; [eval] start <= end
(assert (<= start@4@01 end@5@01))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second $t@6@01)))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@6@01))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@6@01)))))))
(assert (= ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@6@01)))) $Snap.unit))
; [eval] (forall i: Int, j: Int :: { (i in [start..end)), (j in [start..end)) } { (i in [start..end)), S[j] } { (j in [start..end)), S[i] } { S[i], S[j] } (i in [start..end)) && ((j in [start..end)) && i != j) ==> S[i] != S[j])
(declare-const i@7@01 Int)
(declare-const j@8@01 Int)
(push) ; 2
; [eval] (i in [start..end)) && ((j in [start..end)) && i != j) ==> S[i] != S[j]
; [eval] (i in [start..end)) && ((j in [start..end)) && i != j)
; [eval] (i in [start..end))
; [eval] [start..end)
(push) ; 3
; [then-branch: 0 | !(i@7@01 in [start@4@01..end@5@01]) | live]
; [else-branch: 0 | i@7@01 in [start@4@01..end@5@01] | live]
(push) ; 4
; [then-branch: 0 | !(i@7@01 in [start@4@01..end@5@01])]
(assert (not (Seq_contains (Seq_range start@4@01 end@5@01) i@7@01)))
(pop) ; 4
(push) ; 4
; [else-branch: 0 | i@7@01 in [start@4@01..end@5@01]]
(assert (Seq_contains (Seq_range start@4@01 end@5@01) i@7@01))
; [eval] (j in [start..end))
; [eval] [start..end)
(push) ; 5
; [then-branch: 1 | !(j@8@01 in [start@4@01..end@5@01]) | live]
; [else-branch: 1 | j@8@01 in [start@4@01..end@5@01] | live]
(push) ; 6
; [then-branch: 1 | !(j@8@01 in [start@4@01..end@5@01])]
(assert (not (Seq_contains (Seq_range start@4@01 end@5@01) j@8@01)))
(pop) ; 6
(push) ; 6
; [else-branch: 1 | j@8@01 in [start@4@01..end@5@01]]
(assert (Seq_contains (Seq_range start@4@01 end@5@01) j@8@01))
; [eval] i != j
(pop) ; 6
(pop) ; 5
; Joined path conditions
; Joined path conditions
(assert (or
  (Seq_contains (Seq_range start@4@01 end@5@01) j@8@01)
  (not (Seq_contains (Seq_range start@4@01 end@5@01) j@8@01))))
(pop) ; 4
(pop) ; 3
; Joined path conditions
; Joined path conditions
(assert (=>
  (Seq_contains (Seq_range start@4@01 end@5@01) i@7@01)
  (and
    (Seq_contains (Seq_range start@4@01 end@5@01) i@7@01)
    (or
      (Seq_contains (Seq_range start@4@01 end@5@01) j@8@01)
      (not (Seq_contains (Seq_range start@4@01 end@5@01) j@8@01))))))
(assert (or
  (Seq_contains (Seq_range start@4@01 end@5@01) i@7@01)
  (not (Seq_contains (Seq_range start@4@01 end@5@01) i@7@01))))
(push) ; 3
; [then-branch: 2 | i@7@01 in [start@4@01..end@5@01] && j@8@01 in [start@4@01..end@5@01] && i@7@01 != j@8@01 | live]
; [else-branch: 2 | !(i@7@01 in [start@4@01..end@5@01] && j@8@01 in [start@4@01..end@5@01] && i@7@01 != j@8@01) | live]
(push) ; 4
; [then-branch: 2 | i@7@01 in [start@4@01..end@5@01] && j@8@01 in [start@4@01..end@5@01] && i@7@01 != j@8@01]
(assert (and
  (Seq_contains (Seq_range start@4@01 end@5@01) i@7@01)
  (and
    (Seq_contains (Seq_range start@4@01 end@5@01) j@8@01)
    (not (= i@7@01 j@8@01)))))
; [eval] S[i] != S[j]
; [eval] S[i]
(push) ; 5
(assert (not (>= i@7@01 0)))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(push) ; 5
(assert (not (< i@7@01 (Seq_length S@3@01))))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
; [eval] S[j]
(push) ; 5
(assert (not (>= j@8@01 0)))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(push) ; 5
(assert (not (< j@8@01 (Seq_length S@3@01))))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(pop) ; 4
(push) ; 4
; [else-branch: 2 | !(i@7@01 in [start@4@01..end@5@01] && j@8@01 in [start@4@01..end@5@01] && i@7@01 != j@8@01)]
(assert (not
  (and
    (Seq_contains (Seq_range start@4@01 end@5@01) i@7@01)
    (and
      (Seq_contains (Seq_range start@4@01 end@5@01) j@8@01)
      (not (= i@7@01 j@8@01))))))
(pop) ; 4
(pop) ; 3
; Joined path conditions
(assert (=>
  (and
    (Seq_contains (Seq_range start@4@01 end@5@01) i@7@01)
    (and
      (Seq_contains (Seq_range start@4@01 end@5@01) j@8@01)
      (not (= i@7@01 j@8@01))))
  (and
    (Seq_contains (Seq_range start@4@01 end@5@01) i@7@01)
    (Seq_contains (Seq_range start@4@01 end@5@01) j@8@01)
    (not (= i@7@01 j@8@01)))))
; Joined path conditions
(assert (or
  (not
    (and
      (Seq_contains (Seq_range start@4@01 end@5@01) i@7@01)
      (and
        (Seq_contains (Seq_range start@4@01 end@5@01) j@8@01)
        (not (= i@7@01 j@8@01)))))
  (and
    (Seq_contains (Seq_range start@4@01 end@5@01) i@7@01)
    (and
      (Seq_contains (Seq_range start@4@01 end@5@01) j@8@01)
      (not (= i@7@01 j@8@01))))))
(pop) ; 2
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall ((i@7@01 Int) (j@8@01 Int)) (!
  (and
    (=>
      (Seq_contains (Seq_range start@4@01 end@5@01) i@7@01)
      (and
        (Seq_contains (Seq_range start@4@01 end@5@01) i@7@01)
        (or
          (Seq_contains (Seq_range start@4@01 end@5@01) j@8@01)
          (not (Seq_contains (Seq_range start@4@01 end@5@01) j@8@01)))))
    (or
      (Seq_contains (Seq_range start@4@01 end@5@01) i@7@01)
      (not (Seq_contains (Seq_range start@4@01 end@5@01) i@7@01)))
    (=>
      (and
        (Seq_contains (Seq_range start@4@01 end@5@01) i@7@01)
        (and
          (Seq_contains (Seq_range start@4@01 end@5@01) j@8@01)
          (not (= i@7@01 j@8@01))))
      (and
        (Seq_contains (Seq_range start@4@01 end@5@01) i@7@01)
        (Seq_contains (Seq_range start@4@01 end@5@01) j@8@01)
        (not (= i@7@01 j@8@01))))
    (or
      (not
        (and
          (Seq_contains (Seq_range start@4@01 end@5@01) i@7@01)
          (and
            (Seq_contains (Seq_range start@4@01 end@5@01) j@8@01)
            (not (= i@7@01 j@8@01)))))
      (and
        (Seq_contains (Seq_range start@4@01 end@5@01) i@7@01)
        (and
          (Seq_contains (Seq_range start@4@01 end@5@01) j@8@01)
          (not (= i@7@01 j@8@01))))))
  :pattern ((Seq_contains (Seq_range start@4@01 end@5@01) i@7@01) (Seq_contains
    (Seq_range start@4@01 end@5@01)
    j@8@01))
  :pattern ((Seq_contains_trigger (Seq_range start@4@01 end@5@01) i@7@01) (Seq_contains_trigger
    (Seq_range start@4@01 end@5@01)
    j@8@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/sequences/exhaleseqparts.vpr@13@10@13@98-aux|)))
(assert (forall ((i@7@01 Int) (j@8@01 Int)) (!
  (and
    (=>
      (Seq_contains (Seq_range start@4@01 end@5@01) i@7@01)
      (and
        (Seq_contains (Seq_range start@4@01 end@5@01) i@7@01)
        (or
          (Seq_contains (Seq_range start@4@01 end@5@01) j@8@01)
          (not (Seq_contains (Seq_range start@4@01 end@5@01) j@8@01)))))
    (or
      (Seq_contains (Seq_range start@4@01 end@5@01) i@7@01)
      (not (Seq_contains (Seq_range start@4@01 end@5@01) i@7@01)))
    (=>
      (and
        (Seq_contains (Seq_range start@4@01 end@5@01) i@7@01)
        (and
          (Seq_contains (Seq_range start@4@01 end@5@01) j@8@01)
          (not (= i@7@01 j@8@01))))
      (and
        (Seq_contains (Seq_range start@4@01 end@5@01) i@7@01)
        (Seq_contains (Seq_range start@4@01 end@5@01) j@8@01)
        (not (= i@7@01 j@8@01))))
    (or
      (not
        (and
          (Seq_contains (Seq_range start@4@01 end@5@01) i@7@01)
          (and
            (Seq_contains (Seq_range start@4@01 end@5@01) j@8@01)
            (not (= i@7@01 j@8@01)))))
      (and
        (Seq_contains (Seq_range start@4@01 end@5@01) i@7@01)
        (and
          (Seq_contains (Seq_range start@4@01 end@5@01) j@8@01)
          (not (= i@7@01 j@8@01))))))
  :pattern ((Seq_contains_trigger (Seq_range start@4@01 end@5@01) i@7@01) (Seq_contains_trigger
    (Seq_range start@4@01 end@5@01)
    j@8@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/sequences/exhaleseqparts.vpr@13@10@13@98-aux|)))
(assert (forall ((i@7@01 Int) (j@8@01 Int)) (!
  (and
    (=>
      (Seq_contains (Seq_range start@4@01 end@5@01) i@7@01)
      (and
        (Seq_contains (Seq_range start@4@01 end@5@01) i@7@01)
        (or
          (Seq_contains (Seq_range start@4@01 end@5@01) j@8@01)
          (not (Seq_contains (Seq_range start@4@01 end@5@01) j@8@01)))))
    (or
      (Seq_contains (Seq_range start@4@01 end@5@01) i@7@01)
      (not (Seq_contains (Seq_range start@4@01 end@5@01) i@7@01)))
    (=>
      (and
        (Seq_contains (Seq_range start@4@01 end@5@01) i@7@01)
        (and
          (Seq_contains (Seq_range start@4@01 end@5@01) j@8@01)
          (not (= i@7@01 j@8@01))))
      (and
        (Seq_contains (Seq_range start@4@01 end@5@01) i@7@01)
        (Seq_contains (Seq_range start@4@01 end@5@01) j@8@01)
        (not (= i@7@01 j@8@01))))
    (or
      (not
        (and
          (Seq_contains (Seq_range start@4@01 end@5@01) i@7@01)
          (and
            (Seq_contains (Seq_range start@4@01 end@5@01) j@8@01)
            (not (= i@7@01 j@8@01)))))
      (and
        (Seq_contains (Seq_range start@4@01 end@5@01) i@7@01)
        (and
          (Seq_contains (Seq_range start@4@01 end@5@01) j@8@01)
          (not (= i@7@01 j@8@01))))))
  :pattern ((Seq_contains (Seq_range start@4@01 end@5@01) i@7@01) (Seq_index
    S@3@01
    j@8@01))
  :pattern ((Seq_contains_trigger (Seq_range start@4@01 end@5@01) i@7@01) (Seq_index
    S@3@01
    j@8@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/sequences/exhaleseqparts.vpr@13@10@13@98-aux|)))
(assert (forall ((i@7@01 Int) (j@8@01 Int)) (!
  (and
    (=>
      (Seq_contains (Seq_range start@4@01 end@5@01) i@7@01)
      (and
        (Seq_contains (Seq_range start@4@01 end@5@01) i@7@01)
        (or
          (Seq_contains (Seq_range start@4@01 end@5@01) j@8@01)
          (not (Seq_contains (Seq_range start@4@01 end@5@01) j@8@01)))))
    (or
      (Seq_contains (Seq_range start@4@01 end@5@01) i@7@01)
      (not (Seq_contains (Seq_range start@4@01 end@5@01) i@7@01)))
    (=>
      (and
        (Seq_contains (Seq_range start@4@01 end@5@01) i@7@01)
        (and
          (Seq_contains (Seq_range start@4@01 end@5@01) j@8@01)
          (not (= i@7@01 j@8@01))))
      (and
        (Seq_contains (Seq_range start@4@01 end@5@01) i@7@01)
        (Seq_contains (Seq_range start@4@01 end@5@01) j@8@01)
        (not (= i@7@01 j@8@01))))
    (or
      (not
        (and
          (Seq_contains (Seq_range start@4@01 end@5@01) i@7@01)
          (and
            (Seq_contains (Seq_range start@4@01 end@5@01) j@8@01)
            (not (= i@7@01 j@8@01)))))
      (and
        (Seq_contains (Seq_range start@4@01 end@5@01) i@7@01)
        (and
          (Seq_contains (Seq_range start@4@01 end@5@01) j@8@01)
          (not (= i@7@01 j@8@01))))))
  :pattern ((Seq_contains_trigger (Seq_range start@4@01 end@5@01) i@7@01) (Seq_index
    S@3@01
    j@8@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/sequences/exhaleseqparts.vpr@13@10@13@98-aux|)))
(assert (forall ((i@7@01 Int) (j@8@01 Int)) (!
  (and
    (=>
      (Seq_contains (Seq_range start@4@01 end@5@01) i@7@01)
      (and
        (Seq_contains (Seq_range start@4@01 end@5@01) i@7@01)
        (or
          (Seq_contains (Seq_range start@4@01 end@5@01) j@8@01)
          (not (Seq_contains (Seq_range start@4@01 end@5@01) j@8@01)))))
    (or
      (Seq_contains (Seq_range start@4@01 end@5@01) i@7@01)
      (not (Seq_contains (Seq_range start@4@01 end@5@01) i@7@01)))
    (=>
      (and
        (Seq_contains (Seq_range start@4@01 end@5@01) i@7@01)
        (and
          (Seq_contains (Seq_range start@4@01 end@5@01) j@8@01)
          (not (= i@7@01 j@8@01))))
      (and
        (Seq_contains (Seq_range start@4@01 end@5@01) i@7@01)
        (Seq_contains (Seq_range start@4@01 end@5@01) j@8@01)
        (not (= i@7@01 j@8@01))))
    (or
      (not
        (and
          (Seq_contains (Seq_range start@4@01 end@5@01) i@7@01)
          (and
            (Seq_contains (Seq_range start@4@01 end@5@01) j@8@01)
            (not (= i@7@01 j@8@01)))))
      (and
        (Seq_contains (Seq_range start@4@01 end@5@01) i@7@01)
        (and
          (Seq_contains (Seq_range start@4@01 end@5@01) j@8@01)
          (not (= i@7@01 j@8@01))))))
  :pattern ((Seq_contains (Seq_range start@4@01 end@5@01) j@8@01) (Seq_index
    S@3@01
    i@7@01))
  :pattern ((Seq_contains_trigger (Seq_range start@4@01 end@5@01) j@8@01) (Seq_index
    S@3@01
    i@7@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/sequences/exhaleseqparts.vpr@13@10@13@98-aux|)))
(assert (forall ((i@7@01 Int) (j@8@01 Int)) (!
  (and
    (=>
      (Seq_contains (Seq_range start@4@01 end@5@01) i@7@01)
      (and
        (Seq_contains (Seq_range start@4@01 end@5@01) i@7@01)
        (or
          (Seq_contains (Seq_range start@4@01 end@5@01) j@8@01)
          (not (Seq_contains (Seq_range start@4@01 end@5@01) j@8@01)))))
    (or
      (Seq_contains (Seq_range start@4@01 end@5@01) i@7@01)
      (not (Seq_contains (Seq_range start@4@01 end@5@01) i@7@01)))
    (=>
      (and
        (Seq_contains (Seq_range start@4@01 end@5@01) i@7@01)
        (and
          (Seq_contains (Seq_range start@4@01 end@5@01) j@8@01)
          (not (= i@7@01 j@8@01))))
      (and
        (Seq_contains (Seq_range start@4@01 end@5@01) i@7@01)
        (Seq_contains (Seq_range start@4@01 end@5@01) j@8@01)
        (not (= i@7@01 j@8@01))))
    (or
      (not
        (and
          (Seq_contains (Seq_range start@4@01 end@5@01) i@7@01)
          (and
            (Seq_contains (Seq_range start@4@01 end@5@01) j@8@01)
            (not (= i@7@01 j@8@01)))))
      (and
        (Seq_contains (Seq_range start@4@01 end@5@01) i@7@01)
        (and
          (Seq_contains (Seq_range start@4@01 end@5@01) j@8@01)
          (not (= i@7@01 j@8@01))))))
  :pattern ((Seq_contains_trigger (Seq_range start@4@01 end@5@01) j@8@01) (Seq_index
    S@3@01
    i@7@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/sequences/exhaleseqparts.vpr@13@10@13@98-aux|)))
(assert (forall ((i@7@01 Int) (j@8@01 Int)) (!
  (and
    (=>
      (Seq_contains (Seq_range start@4@01 end@5@01) i@7@01)
      (and
        (Seq_contains (Seq_range start@4@01 end@5@01) i@7@01)
        (or
          (Seq_contains (Seq_range start@4@01 end@5@01) j@8@01)
          (not (Seq_contains (Seq_range start@4@01 end@5@01) j@8@01)))))
    (or
      (Seq_contains (Seq_range start@4@01 end@5@01) i@7@01)
      (not (Seq_contains (Seq_range start@4@01 end@5@01) i@7@01)))
    (=>
      (and
        (Seq_contains (Seq_range start@4@01 end@5@01) i@7@01)
        (and
          (Seq_contains (Seq_range start@4@01 end@5@01) j@8@01)
          (not (= i@7@01 j@8@01))))
      (and
        (Seq_contains (Seq_range start@4@01 end@5@01) i@7@01)
        (Seq_contains (Seq_range start@4@01 end@5@01) j@8@01)
        (not (= i@7@01 j@8@01))))
    (or
      (not
        (and
          (Seq_contains (Seq_range start@4@01 end@5@01) i@7@01)
          (and
            (Seq_contains (Seq_range start@4@01 end@5@01) j@8@01)
            (not (= i@7@01 j@8@01)))))
      (and
        (Seq_contains (Seq_range start@4@01 end@5@01) i@7@01)
        (and
          (Seq_contains (Seq_range start@4@01 end@5@01) j@8@01)
          (not (= i@7@01 j@8@01))))))
  :pattern ((Seq_index S@3@01 i@7@01) (Seq_index S@3@01 j@8@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/sequences/exhaleseqparts.vpr@13@10@13@98-aux|)))
(assert (forall ((i@7@01 Int) (j@8@01 Int)) (!
  (=>
    (and
      (Seq_contains (Seq_range start@4@01 end@5@01) i@7@01)
      (and
        (Seq_contains (Seq_range start@4@01 end@5@01) j@8@01)
        (not (= i@7@01 j@8@01))))
    (not (= (Seq_index S@3@01 i@7@01) (Seq_index S@3@01 j@8@01))))
  :pattern ((Seq_contains (Seq_range start@4@01 end@5@01) i@7@01) (Seq_contains
    (Seq_range start@4@01 end@5@01)
    j@8@01))
  :pattern ((Seq_contains_trigger (Seq_range start@4@01 end@5@01) i@7@01) (Seq_contains_trigger
    (Seq_range start@4@01 end@5@01)
    j@8@01))
  :pattern ((Seq_contains (Seq_range start@4@01 end@5@01) i@7@01) (Seq_index
    S@3@01
    j@8@01))
  :pattern ((Seq_contains_trigger (Seq_range start@4@01 end@5@01) i@7@01) (Seq_index
    S@3@01
    j@8@01))
  :pattern ((Seq_contains (Seq_range start@4@01 end@5@01) j@8@01) (Seq_index
    S@3@01
    i@7@01))
  :pattern ((Seq_contains_trigger (Seq_range start@4@01 end@5@01) j@8@01) (Seq_index
    S@3@01
    i@7@01))
  :pattern ((Seq_index S@3@01 i@7@01) (Seq_index S@3@01 j@8@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/sequences/exhaleseqparts.vpr@13@10@13@98|)))
(declare-const i@9@01 Int)
(push) ; 2
; [eval] (i in [start..end))
; [eval] [start..end)
(assert (Seq_contains (Seq_range start@4@01 end@5@01) i@9@01))
; [eval] S[i]
(push) ; 3
(assert (not (>= i@9@01 0)))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(push) ; 3
(assert (not (< i@9@01 (Seq_length S@3@01))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(pop) ; 2
(declare-fun inv@10@01 ($Ref) Int)
(declare-fun img@11@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
; Check receiver injectivity
(push) ; 2
(assert (not (forall ((i1@9@01 Int) (i2@9@01 Int)) (!
  (=>
    (and
      (Seq_contains (Seq_range start@4@01 end@5@01) i1@9@01)
      (Seq_contains (Seq_range start@4@01 end@5@01) i2@9@01)
      (= (Seq_index S@3@01 i1@9@01) (Seq_index S@3@01 i2@9@01)))
    (= i1@9@01 i2@9@01))
  
  :qid |f-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 2
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((i@9@01 Int)) (!
  (=>
    (Seq_contains (Seq_range start@4@01 end@5@01) i@9@01)
    (and
      (= (inv@10@01 (Seq_index S@3@01 i@9@01)) i@9@01)
      (img@11@01 (Seq_index S@3@01 i@9@01))))
  :pattern ((Seq_index S@3@01 i@9@01))
  :qid |quant-u-10635|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@11@01 r)
      (Seq_contains (Seq_range start@4@01 end@5@01) (inv@10@01 r)))
    (= (Seq_index S@3@01 (inv@10@01 r)) r))
  :pattern ((inv@10@01 r))
  :qid |f-fctOfInv|)))
; Permissions are non-negative
; Field permissions are at most one
; Permission implies non-null receiver
(assert (forall ((i@9@01 Int)) (!
  (=>
    (Seq_contains (Seq_range start@4@01 end@5@01) i@9@01)
    (not (= (Seq_index S@3@01 i@9@01) $Ref.null)))
  :pattern ((Seq_index S@3@01 i@9@01))
  :qid |f-permImpliesNonNull|)))
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
(set-option :timeout 0)
(push) ; 2
(pop) ; 2
(push) ; 2
; [exec]
; var k: Int
(declare-const k@12@01 Int)
; [exec]
; k := start + (end - start) \ 2
; [eval] start + (end - start) \ 2
; [eval] (end - start) \ 2
; [eval] end - start
(declare-const k@13@01 Int)
(assert (= k@13@01 (+ start@4@01 (div (- end@5@01 start@4@01) 2))))
; [exec]
; exhale (forall i: Int ::(i in [start..k)) ==> acc(S[i].f, write))
(declare-const i@14@01 Int)
(push) ; 3
; [eval] (i in [start..k))
; [eval] [start..k)
(assert (Seq_contains (Seq_range start@4@01 k@13@01) i@14@01))
; [eval] S[i]
(push) ; 4
(assert (not (>= i@14@01 0)))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(push) ; 4
(assert (not (< i@14@01 (Seq_length S@3@01))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(pop) ; 3
(declare-fun inv@15@01 ($Ref) Int)
(declare-fun img@16@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
; Check receiver injectivity
(push) ; 3
(assert (not (forall ((i1@14@01 Int) (i2@14@01 Int)) (!
  (=>
    (and
      (Seq_contains (Seq_range start@4@01 k@13@01) i1@14@01)
      (Seq_contains (Seq_range start@4@01 k@13@01) i2@14@01)
      (= (Seq_index S@3@01 i1@14@01) (Seq_index S@3@01 i2@14@01)))
    (= i1@14@01 i2@14@01))
  
  :qid |f-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((i@14@01 Int)) (!
  (=>
    (Seq_contains (Seq_range start@4@01 k@13@01) i@14@01)
    (and
      (= (inv@15@01 (Seq_index S@3@01 i@14@01)) i@14@01)
      (img@16@01 (Seq_index S@3@01 i@14@01))))
  :pattern ((Seq_index S@3@01 i@14@01))
  :qid |f-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@16@01 r)
      (Seq_contains (Seq_range start@4@01 k@13@01) (inv@15@01 r)))
    (= (Seq_index S@3@01 (inv@15@01 r)) r))
  :pattern ((inv@15@01 r))
  :qid |f-fctOfInv|)))
; Precomputing data for removing quantified permissions
(define-fun pTaken@17@01 ((r $Ref)) $Perm
  (ite
    (and
      (Seq_contains (Seq_range start@4@01 k@13@01) (inv@15@01 r))
      (img@16@01 r)
      (= r (Seq_index S@3@01 (inv@15@01 r))))
    ($Perm.min
      (ite
        (and
          (img@11@01 r)
          (Seq_contains (Seq_range start@4@01 end@5@01) (inv@10@01 r)))
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
          (img@11@01 r)
          (Seq_contains (Seq_range start@4@01 end@5@01) (inv@10@01 r)))
        $Perm.Write
        $Perm.No)
      (pTaken@17@01 r))
    $Perm.No)
  
  :qid |quant-u-10638|))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (forall ((r $Ref)) (!
  (= (pTaken@17@01 r) $Perm.No)
  
  :qid |quant-u-10639|))))
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
      (Seq_contains (Seq_range start@4@01 k@13@01) (inv@15@01 r))
      (img@16@01 r)
      (= r (Seq_index S@3@01 (inv@15@01 r))))
    (= (- $Perm.Write (pTaken@17@01 r)) $Perm.No))
  
  :qid |quant-u-10640|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Final check if taken enough permissions
; Done removing quantified permissions
; [exec]
; exhale (forall i: Int ::(i in [k..end)) ==> acc(S[i].f, write))
(declare-const i@18@01 Int)
(set-option :timeout 0)
(push) ; 3
; [eval] (i in [k..end))
; [eval] [k..end)
(assert (Seq_contains (Seq_range k@13@01 end@5@01) i@18@01))
; [eval] S[i]
(push) ; 4
(assert (not (>= i@18@01 0)))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(push) ; 4
(assert (not (< i@18@01 (Seq_length S@3@01))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(pop) ; 3
(declare-fun inv@19@01 ($Ref) Int)
(declare-fun img@20@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
; Check receiver injectivity
(push) ; 3
(assert (not (forall ((i1@18@01 Int) (i2@18@01 Int)) (!
  (=>
    (and
      (Seq_contains (Seq_range k@13@01 end@5@01) i1@18@01)
      (Seq_contains (Seq_range k@13@01 end@5@01) i2@18@01)
      (= (Seq_index S@3@01 i1@18@01) (Seq_index S@3@01 i2@18@01)))
    (= i1@18@01 i2@18@01))
  
  :qid |f-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((i@18@01 Int)) (!
  (=>
    (Seq_contains (Seq_range k@13@01 end@5@01) i@18@01)
    (and
      (= (inv@19@01 (Seq_index S@3@01 i@18@01)) i@18@01)
      (img@20@01 (Seq_index S@3@01 i@18@01))))
  :pattern ((Seq_index S@3@01 i@18@01))
  :qid |f-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@20@01 r) (Seq_contains (Seq_range k@13@01 end@5@01) (inv@19@01 r)))
    (= (Seq_index S@3@01 (inv@19@01 r)) r))
  :pattern ((inv@19@01 r))
  :qid |f-fctOfInv|)))
; Precomputing data for removing quantified permissions
(define-fun pTaken@21@01 ((r $Ref)) $Perm
  (ite
    (and
      (Seq_contains (Seq_range k@13@01 end@5@01) (inv@19@01 r))
      (img@20@01 r)
      (= r (Seq_index S@3@01 (inv@19@01 r))))
    ($Perm.min
      (ite
        (and
          (img@11@01 r)
          (Seq_contains (Seq_range start@4@01 end@5@01) (inv@10@01 r)))
        (- $Perm.Write (pTaken@17@01 r))
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
          (img@11@01 r)
          (Seq_contains (Seq_range start@4@01 end@5@01) (inv@10@01 r)))
        (- $Perm.Write (pTaken@17@01 r))
        $Perm.No)
      (pTaken@21@01 r))
    $Perm.No)
  
  :qid |quant-u-10643|))))
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
      (Seq_contains (Seq_range k@13@01 end@5@01) (inv@19@01 r))
      (img@20@01 r)
      (= r (Seq_index S@3@01 (inv@19@01 r))))
    (= (- $Perm.Write (pTaken@21@01 r)) $Perm.No))
  
  :qid |quant-u-10644|))))
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
(declare-const S@22@01 Seq<$Ref>)
(declare-const start@23@01 Int)
(declare-const end@24@01 Int)
(declare-const S@25@01 Seq<$Ref>)
(declare-const start@26@01 Int)
(declare-const end@27@01 Int)
(set-option :timeout 0)
(push) ; 1
(declare-const $t@28@01 $Snap)
(assert (= $t@28@01 ($Snap.combine ($Snap.first $t@28@01) ($Snap.second $t@28@01))))
(assert (= ($Snap.first $t@28@01) $Snap.unit))
; [eval] start >= 0
(assert (>= start@26@01 0))
(assert (=
  ($Snap.second $t@28@01)
  ($Snap.combine
    ($Snap.first ($Snap.second $t@28@01))
    ($Snap.second ($Snap.second $t@28@01)))))
(assert (= ($Snap.first ($Snap.second $t@28@01)) $Snap.unit))
; [eval] end <= |S|
; [eval] |S|
(assert (<= end@27@01 (Seq_length S@25@01)))
(assert (=
  ($Snap.second ($Snap.second $t@28@01))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second $t@28@01)))
    ($Snap.second ($Snap.second ($Snap.second $t@28@01))))))
(assert (= ($Snap.first ($Snap.second ($Snap.second $t@28@01))) $Snap.unit))
; [eval] start <= end
(assert (<= start@26@01 end@27@01))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second $t@28@01)))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@28@01))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@28@01)))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@28@01))))
  $Snap.unit))
; [eval] (forall i: Int, j: Int :: { (i in [start..end)), (j in [start..end)) } { (i in [start..end)), S[j] } { (j in [start..end)), S[i] } { S[i], S[j] } (i in [start..end)) && ((j in [start..end)) && i != j) ==> S[i] != S[j])
(declare-const i@29@01 Int)
(declare-const j@30@01 Int)
(push) ; 2
; [eval] (i in [start..end)) && ((j in [start..end)) && i != j) ==> S[i] != S[j]
; [eval] (i in [start..end)) && ((j in [start..end)) && i != j)
; [eval] (i in [start..end))
; [eval] [start..end)
(push) ; 3
; [then-branch: 3 | !(i@29@01 in [start@26@01..end@27@01]) | live]
; [else-branch: 3 | i@29@01 in [start@26@01..end@27@01] | live]
(push) ; 4
; [then-branch: 3 | !(i@29@01 in [start@26@01..end@27@01])]
(assert (not (Seq_contains (Seq_range start@26@01 end@27@01) i@29@01)))
(pop) ; 4
(push) ; 4
; [else-branch: 3 | i@29@01 in [start@26@01..end@27@01]]
(assert (Seq_contains (Seq_range start@26@01 end@27@01) i@29@01))
; [eval] (j in [start..end))
; [eval] [start..end)
(push) ; 5
; [then-branch: 4 | !(j@30@01 in [start@26@01..end@27@01]) | live]
; [else-branch: 4 | j@30@01 in [start@26@01..end@27@01] | live]
(push) ; 6
; [then-branch: 4 | !(j@30@01 in [start@26@01..end@27@01])]
(assert (not (Seq_contains (Seq_range start@26@01 end@27@01) j@30@01)))
(pop) ; 6
(push) ; 6
; [else-branch: 4 | j@30@01 in [start@26@01..end@27@01]]
(assert (Seq_contains (Seq_range start@26@01 end@27@01) j@30@01))
; [eval] i != j
(pop) ; 6
(pop) ; 5
; Joined path conditions
; Joined path conditions
(assert (or
  (Seq_contains (Seq_range start@26@01 end@27@01) j@30@01)
  (not (Seq_contains (Seq_range start@26@01 end@27@01) j@30@01))))
(pop) ; 4
(pop) ; 3
; Joined path conditions
; Joined path conditions
(assert (=>
  (Seq_contains (Seq_range start@26@01 end@27@01) i@29@01)
  (and
    (Seq_contains (Seq_range start@26@01 end@27@01) i@29@01)
    (or
      (Seq_contains (Seq_range start@26@01 end@27@01) j@30@01)
      (not (Seq_contains (Seq_range start@26@01 end@27@01) j@30@01))))))
(assert (or
  (Seq_contains (Seq_range start@26@01 end@27@01) i@29@01)
  (not (Seq_contains (Seq_range start@26@01 end@27@01) i@29@01))))
(push) ; 3
; [then-branch: 5 | i@29@01 in [start@26@01..end@27@01] && j@30@01 in [start@26@01..end@27@01] && i@29@01 != j@30@01 | live]
; [else-branch: 5 | !(i@29@01 in [start@26@01..end@27@01] && j@30@01 in [start@26@01..end@27@01] && i@29@01 != j@30@01) | live]
(push) ; 4
; [then-branch: 5 | i@29@01 in [start@26@01..end@27@01] && j@30@01 in [start@26@01..end@27@01] && i@29@01 != j@30@01]
(assert (and
  (Seq_contains (Seq_range start@26@01 end@27@01) i@29@01)
  (and
    (Seq_contains (Seq_range start@26@01 end@27@01) j@30@01)
    (not (= i@29@01 j@30@01)))))
; [eval] S[i] != S[j]
; [eval] S[i]
(push) ; 5
(assert (not (>= i@29@01 0)))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(push) ; 5
(assert (not (< i@29@01 (Seq_length S@25@01))))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
; [eval] S[j]
(push) ; 5
(assert (not (>= j@30@01 0)))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(push) ; 5
(assert (not (< j@30@01 (Seq_length S@25@01))))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(pop) ; 4
(push) ; 4
; [else-branch: 5 | !(i@29@01 in [start@26@01..end@27@01] && j@30@01 in [start@26@01..end@27@01] && i@29@01 != j@30@01)]
(assert (not
  (and
    (Seq_contains (Seq_range start@26@01 end@27@01) i@29@01)
    (and
      (Seq_contains (Seq_range start@26@01 end@27@01) j@30@01)
      (not (= i@29@01 j@30@01))))))
(pop) ; 4
(pop) ; 3
; Joined path conditions
(assert (=>
  (and
    (Seq_contains (Seq_range start@26@01 end@27@01) i@29@01)
    (and
      (Seq_contains (Seq_range start@26@01 end@27@01) j@30@01)
      (not (= i@29@01 j@30@01))))
  (and
    (Seq_contains (Seq_range start@26@01 end@27@01) i@29@01)
    (Seq_contains (Seq_range start@26@01 end@27@01) j@30@01)
    (not (= i@29@01 j@30@01)))))
; Joined path conditions
(assert (or
  (not
    (and
      (Seq_contains (Seq_range start@26@01 end@27@01) i@29@01)
      (and
        (Seq_contains (Seq_range start@26@01 end@27@01) j@30@01)
        (not (= i@29@01 j@30@01)))))
  (and
    (Seq_contains (Seq_range start@26@01 end@27@01) i@29@01)
    (and
      (Seq_contains (Seq_range start@26@01 end@27@01) j@30@01)
      (not (= i@29@01 j@30@01))))))
(pop) ; 2
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall ((i@29@01 Int) (j@30@01 Int)) (!
  (and
    (=>
      (Seq_contains (Seq_range start@26@01 end@27@01) i@29@01)
      (and
        (Seq_contains (Seq_range start@26@01 end@27@01) i@29@01)
        (or
          (Seq_contains (Seq_range start@26@01 end@27@01) j@30@01)
          (not (Seq_contains (Seq_range start@26@01 end@27@01) j@30@01)))))
    (or
      (Seq_contains (Seq_range start@26@01 end@27@01) i@29@01)
      (not (Seq_contains (Seq_range start@26@01 end@27@01) i@29@01)))
    (=>
      (and
        (Seq_contains (Seq_range start@26@01 end@27@01) i@29@01)
        (and
          (Seq_contains (Seq_range start@26@01 end@27@01) j@30@01)
          (not (= i@29@01 j@30@01))))
      (and
        (Seq_contains (Seq_range start@26@01 end@27@01) i@29@01)
        (Seq_contains (Seq_range start@26@01 end@27@01) j@30@01)
        (not (= i@29@01 j@30@01))))
    (or
      (not
        (and
          (Seq_contains (Seq_range start@26@01 end@27@01) i@29@01)
          (and
            (Seq_contains (Seq_range start@26@01 end@27@01) j@30@01)
            (not (= i@29@01 j@30@01)))))
      (and
        (Seq_contains (Seq_range start@26@01 end@27@01) i@29@01)
        (and
          (Seq_contains (Seq_range start@26@01 end@27@01) j@30@01)
          (not (= i@29@01 j@30@01))))))
  :pattern ((Seq_contains (Seq_range start@26@01 end@27@01) i@29@01) (Seq_contains
    (Seq_range start@26@01 end@27@01)
    j@30@01))
  :pattern ((Seq_contains_trigger (Seq_range start@26@01 end@27@01) i@29@01) (Seq_contains_trigger
    (Seq_range start@26@01 end@27@01)
    j@30@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/sequences/exhaleseqparts.vpr@25@10@25@98-aux|)))
(assert (forall ((i@29@01 Int) (j@30@01 Int)) (!
  (and
    (=>
      (Seq_contains (Seq_range start@26@01 end@27@01) i@29@01)
      (and
        (Seq_contains (Seq_range start@26@01 end@27@01) i@29@01)
        (or
          (Seq_contains (Seq_range start@26@01 end@27@01) j@30@01)
          (not (Seq_contains (Seq_range start@26@01 end@27@01) j@30@01)))))
    (or
      (Seq_contains (Seq_range start@26@01 end@27@01) i@29@01)
      (not (Seq_contains (Seq_range start@26@01 end@27@01) i@29@01)))
    (=>
      (and
        (Seq_contains (Seq_range start@26@01 end@27@01) i@29@01)
        (and
          (Seq_contains (Seq_range start@26@01 end@27@01) j@30@01)
          (not (= i@29@01 j@30@01))))
      (and
        (Seq_contains (Seq_range start@26@01 end@27@01) i@29@01)
        (Seq_contains (Seq_range start@26@01 end@27@01) j@30@01)
        (not (= i@29@01 j@30@01))))
    (or
      (not
        (and
          (Seq_contains (Seq_range start@26@01 end@27@01) i@29@01)
          (and
            (Seq_contains (Seq_range start@26@01 end@27@01) j@30@01)
            (not (= i@29@01 j@30@01)))))
      (and
        (Seq_contains (Seq_range start@26@01 end@27@01) i@29@01)
        (and
          (Seq_contains (Seq_range start@26@01 end@27@01) j@30@01)
          (not (= i@29@01 j@30@01))))))
  :pattern ((Seq_contains_trigger (Seq_range start@26@01 end@27@01) i@29@01) (Seq_contains_trigger
    (Seq_range start@26@01 end@27@01)
    j@30@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/sequences/exhaleseqparts.vpr@25@10@25@98-aux|)))
(assert (forall ((i@29@01 Int) (j@30@01 Int)) (!
  (and
    (=>
      (Seq_contains (Seq_range start@26@01 end@27@01) i@29@01)
      (and
        (Seq_contains (Seq_range start@26@01 end@27@01) i@29@01)
        (or
          (Seq_contains (Seq_range start@26@01 end@27@01) j@30@01)
          (not (Seq_contains (Seq_range start@26@01 end@27@01) j@30@01)))))
    (or
      (Seq_contains (Seq_range start@26@01 end@27@01) i@29@01)
      (not (Seq_contains (Seq_range start@26@01 end@27@01) i@29@01)))
    (=>
      (and
        (Seq_contains (Seq_range start@26@01 end@27@01) i@29@01)
        (and
          (Seq_contains (Seq_range start@26@01 end@27@01) j@30@01)
          (not (= i@29@01 j@30@01))))
      (and
        (Seq_contains (Seq_range start@26@01 end@27@01) i@29@01)
        (Seq_contains (Seq_range start@26@01 end@27@01) j@30@01)
        (not (= i@29@01 j@30@01))))
    (or
      (not
        (and
          (Seq_contains (Seq_range start@26@01 end@27@01) i@29@01)
          (and
            (Seq_contains (Seq_range start@26@01 end@27@01) j@30@01)
            (not (= i@29@01 j@30@01)))))
      (and
        (Seq_contains (Seq_range start@26@01 end@27@01) i@29@01)
        (and
          (Seq_contains (Seq_range start@26@01 end@27@01) j@30@01)
          (not (= i@29@01 j@30@01))))))
  :pattern ((Seq_contains (Seq_range start@26@01 end@27@01) i@29@01) (Seq_index
    S@25@01
    j@30@01))
  :pattern ((Seq_contains_trigger (Seq_range start@26@01 end@27@01) i@29@01) (Seq_index
    S@25@01
    j@30@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/sequences/exhaleseqparts.vpr@25@10@25@98-aux|)))
(assert (forall ((i@29@01 Int) (j@30@01 Int)) (!
  (and
    (=>
      (Seq_contains (Seq_range start@26@01 end@27@01) i@29@01)
      (and
        (Seq_contains (Seq_range start@26@01 end@27@01) i@29@01)
        (or
          (Seq_contains (Seq_range start@26@01 end@27@01) j@30@01)
          (not (Seq_contains (Seq_range start@26@01 end@27@01) j@30@01)))))
    (or
      (Seq_contains (Seq_range start@26@01 end@27@01) i@29@01)
      (not (Seq_contains (Seq_range start@26@01 end@27@01) i@29@01)))
    (=>
      (and
        (Seq_contains (Seq_range start@26@01 end@27@01) i@29@01)
        (and
          (Seq_contains (Seq_range start@26@01 end@27@01) j@30@01)
          (not (= i@29@01 j@30@01))))
      (and
        (Seq_contains (Seq_range start@26@01 end@27@01) i@29@01)
        (Seq_contains (Seq_range start@26@01 end@27@01) j@30@01)
        (not (= i@29@01 j@30@01))))
    (or
      (not
        (and
          (Seq_contains (Seq_range start@26@01 end@27@01) i@29@01)
          (and
            (Seq_contains (Seq_range start@26@01 end@27@01) j@30@01)
            (not (= i@29@01 j@30@01)))))
      (and
        (Seq_contains (Seq_range start@26@01 end@27@01) i@29@01)
        (and
          (Seq_contains (Seq_range start@26@01 end@27@01) j@30@01)
          (not (= i@29@01 j@30@01))))))
  :pattern ((Seq_contains_trigger (Seq_range start@26@01 end@27@01) i@29@01) (Seq_index
    S@25@01
    j@30@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/sequences/exhaleseqparts.vpr@25@10@25@98-aux|)))
(assert (forall ((i@29@01 Int) (j@30@01 Int)) (!
  (and
    (=>
      (Seq_contains (Seq_range start@26@01 end@27@01) i@29@01)
      (and
        (Seq_contains (Seq_range start@26@01 end@27@01) i@29@01)
        (or
          (Seq_contains (Seq_range start@26@01 end@27@01) j@30@01)
          (not (Seq_contains (Seq_range start@26@01 end@27@01) j@30@01)))))
    (or
      (Seq_contains (Seq_range start@26@01 end@27@01) i@29@01)
      (not (Seq_contains (Seq_range start@26@01 end@27@01) i@29@01)))
    (=>
      (and
        (Seq_contains (Seq_range start@26@01 end@27@01) i@29@01)
        (and
          (Seq_contains (Seq_range start@26@01 end@27@01) j@30@01)
          (not (= i@29@01 j@30@01))))
      (and
        (Seq_contains (Seq_range start@26@01 end@27@01) i@29@01)
        (Seq_contains (Seq_range start@26@01 end@27@01) j@30@01)
        (not (= i@29@01 j@30@01))))
    (or
      (not
        (and
          (Seq_contains (Seq_range start@26@01 end@27@01) i@29@01)
          (and
            (Seq_contains (Seq_range start@26@01 end@27@01) j@30@01)
            (not (= i@29@01 j@30@01)))))
      (and
        (Seq_contains (Seq_range start@26@01 end@27@01) i@29@01)
        (and
          (Seq_contains (Seq_range start@26@01 end@27@01) j@30@01)
          (not (= i@29@01 j@30@01))))))
  :pattern ((Seq_contains (Seq_range start@26@01 end@27@01) j@30@01) (Seq_index
    S@25@01
    i@29@01))
  :pattern ((Seq_contains_trigger (Seq_range start@26@01 end@27@01) j@30@01) (Seq_index
    S@25@01
    i@29@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/sequences/exhaleseqparts.vpr@25@10@25@98-aux|)))
(assert (forall ((i@29@01 Int) (j@30@01 Int)) (!
  (and
    (=>
      (Seq_contains (Seq_range start@26@01 end@27@01) i@29@01)
      (and
        (Seq_contains (Seq_range start@26@01 end@27@01) i@29@01)
        (or
          (Seq_contains (Seq_range start@26@01 end@27@01) j@30@01)
          (not (Seq_contains (Seq_range start@26@01 end@27@01) j@30@01)))))
    (or
      (Seq_contains (Seq_range start@26@01 end@27@01) i@29@01)
      (not (Seq_contains (Seq_range start@26@01 end@27@01) i@29@01)))
    (=>
      (and
        (Seq_contains (Seq_range start@26@01 end@27@01) i@29@01)
        (and
          (Seq_contains (Seq_range start@26@01 end@27@01) j@30@01)
          (not (= i@29@01 j@30@01))))
      (and
        (Seq_contains (Seq_range start@26@01 end@27@01) i@29@01)
        (Seq_contains (Seq_range start@26@01 end@27@01) j@30@01)
        (not (= i@29@01 j@30@01))))
    (or
      (not
        (and
          (Seq_contains (Seq_range start@26@01 end@27@01) i@29@01)
          (and
            (Seq_contains (Seq_range start@26@01 end@27@01) j@30@01)
            (not (= i@29@01 j@30@01)))))
      (and
        (Seq_contains (Seq_range start@26@01 end@27@01) i@29@01)
        (and
          (Seq_contains (Seq_range start@26@01 end@27@01) j@30@01)
          (not (= i@29@01 j@30@01))))))
  :pattern ((Seq_contains_trigger (Seq_range start@26@01 end@27@01) j@30@01) (Seq_index
    S@25@01
    i@29@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/sequences/exhaleseqparts.vpr@25@10@25@98-aux|)))
(assert (forall ((i@29@01 Int) (j@30@01 Int)) (!
  (and
    (=>
      (Seq_contains (Seq_range start@26@01 end@27@01) i@29@01)
      (and
        (Seq_contains (Seq_range start@26@01 end@27@01) i@29@01)
        (or
          (Seq_contains (Seq_range start@26@01 end@27@01) j@30@01)
          (not (Seq_contains (Seq_range start@26@01 end@27@01) j@30@01)))))
    (or
      (Seq_contains (Seq_range start@26@01 end@27@01) i@29@01)
      (not (Seq_contains (Seq_range start@26@01 end@27@01) i@29@01)))
    (=>
      (and
        (Seq_contains (Seq_range start@26@01 end@27@01) i@29@01)
        (and
          (Seq_contains (Seq_range start@26@01 end@27@01) j@30@01)
          (not (= i@29@01 j@30@01))))
      (and
        (Seq_contains (Seq_range start@26@01 end@27@01) i@29@01)
        (Seq_contains (Seq_range start@26@01 end@27@01) j@30@01)
        (not (= i@29@01 j@30@01))))
    (or
      (not
        (and
          (Seq_contains (Seq_range start@26@01 end@27@01) i@29@01)
          (and
            (Seq_contains (Seq_range start@26@01 end@27@01) j@30@01)
            (not (= i@29@01 j@30@01)))))
      (and
        (Seq_contains (Seq_range start@26@01 end@27@01) i@29@01)
        (and
          (Seq_contains (Seq_range start@26@01 end@27@01) j@30@01)
          (not (= i@29@01 j@30@01))))))
  :pattern ((Seq_index S@25@01 i@29@01) (Seq_index S@25@01 j@30@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/sequences/exhaleseqparts.vpr@25@10@25@98-aux|)))
(assert (forall ((i@29@01 Int) (j@30@01 Int)) (!
  (=>
    (and
      (Seq_contains (Seq_range start@26@01 end@27@01) i@29@01)
      (and
        (Seq_contains (Seq_range start@26@01 end@27@01) j@30@01)
        (not (= i@29@01 j@30@01))))
    (not (= (Seq_index S@25@01 i@29@01) (Seq_index S@25@01 j@30@01))))
  :pattern ((Seq_contains (Seq_range start@26@01 end@27@01) i@29@01) (Seq_contains
    (Seq_range start@26@01 end@27@01)
    j@30@01))
  :pattern ((Seq_contains_trigger (Seq_range start@26@01 end@27@01) i@29@01) (Seq_contains_trigger
    (Seq_range start@26@01 end@27@01)
    j@30@01))
  :pattern ((Seq_contains (Seq_range start@26@01 end@27@01) i@29@01) (Seq_index
    S@25@01
    j@30@01))
  :pattern ((Seq_contains_trigger (Seq_range start@26@01 end@27@01) i@29@01) (Seq_index
    S@25@01
    j@30@01))
  :pattern ((Seq_contains (Seq_range start@26@01 end@27@01) j@30@01) (Seq_index
    S@25@01
    i@29@01))
  :pattern ((Seq_contains_trigger (Seq_range start@26@01 end@27@01) j@30@01) (Seq_index
    S@25@01
    i@29@01))
  :pattern ((Seq_index S@25@01 i@29@01) (Seq_index S@25@01 j@30@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/sequences/exhaleseqparts.vpr@25@10@25@98|)))
(declare-const i@31@01 Int)
(push) ; 2
; [eval] (i in [start..end))
; [eval] [start..end)
(assert (Seq_contains (Seq_range start@26@01 end@27@01) i@31@01))
; [eval] S[i]
(push) ; 3
(assert (not (>= i@31@01 0)))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(push) ; 3
(assert (not (< i@31@01 (Seq_length S@25@01))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(pop) ; 2
(declare-fun inv@32@01 ($Ref) Int)
(declare-fun img@33@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
; Check receiver injectivity
(push) ; 2
(assert (not (forall ((i1@31@01 Int) (i2@31@01 Int)) (!
  (=>
    (and
      (Seq_contains (Seq_range start@26@01 end@27@01) i1@31@01)
      (Seq_contains (Seq_range start@26@01 end@27@01) i2@31@01)
      (= (Seq_index S@25@01 i1@31@01) (Seq_index S@25@01 i2@31@01)))
    (= i1@31@01 i2@31@01))
  
  :qid |f-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 2
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((i@31@01 Int)) (!
  (=>
    (Seq_contains (Seq_range start@26@01 end@27@01) i@31@01)
    (and
      (= (inv@32@01 (Seq_index S@25@01 i@31@01)) i@31@01)
      (img@33@01 (Seq_index S@25@01 i@31@01))))
  :pattern ((Seq_index S@25@01 i@31@01))
  :qid |quant-u-10646|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@33@01 r)
      (Seq_contains (Seq_range start@26@01 end@27@01) (inv@32@01 r)))
    (= (Seq_index S@25@01 (inv@32@01 r)) r))
  :pattern ((inv@32@01 r))
  :qid |f-fctOfInv|)))
; Permissions are non-negative
; Field permissions are at most one
; Permission implies non-null receiver
(assert (forall ((i@31@01 Int)) (!
  (=>
    (Seq_contains (Seq_range start@26@01 end@27@01) i@31@01)
    (not (= (Seq_index S@25@01 i@31@01) $Ref.null)))
  :pattern ((Seq_index S@25@01 i@31@01))
  :qid |f-permImpliesNonNull|)))
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
(set-option :timeout 0)
(push) ; 2
(pop) ; 2
(push) ; 2
; [exec]
; var k: Int
(declare-const k@34@01 Int)
; [exec]
; var k2: Int
(declare-const k2@35@01 Int)
; [exec]
; k := start + (end - start) \ 3
; [eval] start + (end - start) \ 3
; [eval] (end - start) \ 3
; [eval] end - start
(declare-const k@36@01 Int)
(assert (= k@36@01 (+ start@26@01 (div (- end@27@01 start@26@01) 3))))
; [exec]
; k2 := start + 2 * (end - start) \ 3
; [eval] start + 2 * (end - start) \ 3
; [eval] 2 * (end - start) \ 3
; [eval] 2 * (end - start)
; [eval] end - start
(declare-const k2@37@01 Int)
(assert (= k2@37@01 (+ start@26@01 (div (* 2 (- end@27@01 start@26@01)) 3))))
; [exec]
; exhale (forall i: Int ::(i in [start..k)) ==> acc(S[i].f, write))
(declare-const i@38@01 Int)
(push) ; 3
; [eval] (i in [start..k))
; [eval] [start..k)
(assert (Seq_contains (Seq_range start@26@01 k@36@01) i@38@01))
; [eval] S[i]
(push) ; 4
(assert (not (>= i@38@01 0)))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(push) ; 4
(assert (not (< i@38@01 (Seq_length S@25@01))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(pop) ; 3
(declare-fun inv@39@01 ($Ref) Int)
(declare-fun img@40@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
; Check receiver injectivity
(push) ; 3
(assert (not (forall ((i1@38@01 Int) (i2@38@01 Int)) (!
  (=>
    (and
      (Seq_contains (Seq_range start@26@01 k@36@01) i1@38@01)
      (Seq_contains (Seq_range start@26@01 k@36@01) i2@38@01)
      (= (Seq_index S@25@01 i1@38@01) (Seq_index S@25@01 i2@38@01)))
    (= i1@38@01 i2@38@01))
  
  :qid |f-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((i@38@01 Int)) (!
  (=>
    (Seq_contains (Seq_range start@26@01 k@36@01) i@38@01)
    (and
      (= (inv@39@01 (Seq_index S@25@01 i@38@01)) i@38@01)
      (img@40@01 (Seq_index S@25@01 i@38@01))))
  :pattern ((Seq_index S@25@01 i@38@01))
  :qid |f-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@40@01 r)
      (Seq_contains (Seq_range start@26@01 k@36@01) (inv@39@01 r)))
    (= (Seq_index S@25@01 (inv@39@01 r)) r))
  :pattern ((inv@39@01 r))
  :qid |f-fctOfInv|)))
; Precomputing data for removing quantified permissions
(define-fun pTaken@41@01 ((r $Ref)) $Perm
  (ite
    (and
      (Seq_contains (Seq_range start@26@01 k@36@01) (inv@39@01 r))
      (img@40@01 r)
      (= r (Seq_index S@25@01 (inv@39@01 r))))
    ($Perm.min
      (ite
        (and
          (img@33@01 r)
          (Seq_contains (Seq_range start@26@01 end@27@01) (inv@32@01 r)))
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
          (img@33@01 r)
          (Seq_contains (Seq_range start@26@01 end@27@01) (inv@32@01 r)))
        $Perm.Write
        $Perm.No)
      (pTaken@41@01 r))
    $Perm.No)
  
  :qid |quant-u-10649|))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (forall ((r $Ref)) (!
  (= (pTaken@41@01 r) $Perm.No)
  
  :qid |quant-u-10650|))))
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
      (Seq_contains (Seq_range start@26@01 k@36@01) (inv@39@01 r))
      (img@40@01 r)
      (= r (Seq_index S@25@01 (inv@39@01 r))))
    (= (- $Perm.Write (pTaken@41@01 r)) $Perm.No))
  
  :qid |quant-u-10651|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Final check if taken enough permissions
; Done removing quantified permissions
; [exec]
; exhale (forall i: Int ::(i in [k..k2)) ==> acc(S[i].f, write))
(declare-const i@42@01 Int)
(set-option :timeout 0)
(push) ; 3
; [eval] (i in [k..k2))
; [eval] [k..k2)
(assert (Seq_contains (Seq_range k@36@01 k2@37@01) i@42@01))
; [eval] S[i]
(push) ; 4
(assert (not (>= i@42@01 0)))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(push) ; 4
(assert (not (< i@42@01 (Seq_length S@25@01))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(pop) ; 3
(declare-fun inv@43@01 ($Ref) Int)
(declare-fun img@44@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
; Check receiver injectivity
(push) ; 3
(assert (not (forall ((i1@42@01 Int) (i2@42@01 Int)) (!
  (=>
    (and
      (Seq_contains (Seq_range k@36@01 k2@37@01) i1@42@01)
      (Seq_contains (Seq_range k@36@01 k2@37@01) i2@42@01)
      (= (Seq_index S@25@01 i1@42@01) (Seq_index S@25@01 i2@42@01)))
    (= i1@42@01 i2@42@01))
  
  :qid |f-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((i@42@01 Int)) (!
  (=>
    (Seq_contains (Seq_range k@36@01 k2@37@01) i@42@01)
    (and
      (= (inv@43@01 (Seq_index S@25@01 i@42@01)) i@42@01)
      (img@44@01 (Seq_index S@25@01 i@42@01))))
  :pattern ((Seq_index S@25@01 i@42@01))
  :qid |f-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@44@01 r) (Seq_contains (Seq_range k@36@01 k2@37@01) (inv@43@01 r)))
    (= (Seq_index S@25@01 (inv@43@01 r)) r))
  :pattern ((inv@43@01 r))
  :qid |f-fctOfInv|)))
; Precomputing data for removing quantified permissions
(define-fun pTaken@45@01 ((r $Ref)) $Perm
  (ite
    (and
      (Seq_contains (Seq_range k@36@01 k2@37@01) (inv@43@01 r))
      (img@44@01 r)
      (= r (Seq_index S@25@01 (inv@43@01 r))))
    ($Perm.min
      (ite
        (and
          (img@33@01 r)
          (Seq_contains (Seq_range start@26@01 end@27@01) (inv@32@01 r)))
        (- $Perm.Write (pTaken@41@01 r))
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
          (img@33@01 r)
          (Seq_contains (Seq_range start@26@01 end@27@01) (inv@32@01 r)))
        (- $Perm.Write (pTaken@41@01 r))
        $Perm.No)
      (pTaken@45@01 r))
    $Perm.No)
  
  :qid |quant-u-10654|))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (forall ((r $Ref)) (!
  (= (pTaken@45@01 r) $Perm.No)
  
  :qid |quant-u-10655|))))
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
      (Seq_contains (Seq_range k@36@01 k2@37@01) (inv@43@01 r))
      (img@44@01 r)
      (= r (Seq_index S@25@01 (inv@43@01 r))))
    (= (- $Perm.Write (pTaken@45@01 r)) $Perm.No))
  
  :qid |quant-u-10656|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Final check if taken enough permissions
; Done removing quantified permissions
; [exec]
; exhale (forall i: Int ::(i in [k2..end)) ==> acc(S[i].f, write))
(declare-const i@46@01 Int)
(set-option :timeout 0)
(push) ; 3
; [eval] (i in [k2..end))
; [eval] [k2..end)
(assert (Seq_contains (Seq_range k2@37@01 end@27@01) i@46@01))
; [eval] S[i]
(push) ; 4
(assert (not (>= i@46@01 0)))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(push) ; 4
(assert (not (< i@46@01 (Seq_length S@25@01))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(pop) ; 3
(declare-fun inv@47@01 ($Ref) Int)
(declare-fun img@48@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
; Check receiver injectivity
(push) ; 3
(assert (not (forall ((i1@46@01 Int) (i2@46@01 Int)) (!
  (=>
    (and
      (Seq_contains (Seq_range k2@37@01 end@27@01) i1@46@01)
      (Seq_contains (Seq_range k2@37@01 end@27@01) i2@46@01)
      (= (Seq_index S@25@01 i1@46@01) (Seq_index S@25@01 i2@46@01)))
    (= i1@46@01 i2@46@01))
  
  :qid |f-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((i@46@01 Int)) (!
  (=>
    (Seq_contains (Seq_range k2@37@01 end@27@01) i@46@01)
    (and
      (= (inv@47@01 (Seq_index S@25@01 i@46@01)) i@46@01)
      (img@48@01 (Seq_index S@25@01 i@46@01))))
  :pattern ((Seq_index S@25@01 i@46@01))
  :qid |f-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@48@01 r)
      (Seq_contains (Seq_range k2@37@01 end@27@01) (inv@47@01 r)))
    (= (Seq_index S@25@01 (inv@47@01 r)) r))
  :pattern ((inv@47@01 r))
  :qid |f-fctOfInv|)))
; Precomputing data for removing quantified permissions
(define-fun pTaken@49@01 ((r $Ref)) $Perm
  (ite
    (and
      (Seq_contains (Seq_range k2@37@01 end@27@01) (inv@47@01 r))
      (img@48@01 r)
      (= r (Seq_index S@25@01 (inv@47@01 r))))
    ($Perm.min
      (ite
        (and
          (img@33@01 r)
          (Seq_contains (Seq_range start@26@01 end@27@01) (inv@32@01 r)))
        (- (- $Perm.Write (pTaken@41@01 r)) (pTaken@45@01 r))
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
          (img@33@01 r)
          (Seq_contains (Seq_range start@26@01 end@27@01) (inv@32@01 r)))
        (- (- $Perm.Write (pTaken@41@01 r)) (pTaken@45@01 r))
        $Perm.No)
      (pTaken@49@01 r))
    $Perm.No)
  
  :qid |quant-u-10659|))))
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
      (Seq_contains (Seq_range k2@37@01 end@27@01) (inv@47@01 r))
      (img@48@01 r)
      (= r (Seq_index S@25@01 (inv@47@01 r))))
    (= (- $Perm.Write (pTaken@49@01 r)) $Perm.No))
  
  :qid |quant-u-10660|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Final check if taken enough permissions
; Done removing quantified permissions
(pop) ; 2
(pop) ; 1