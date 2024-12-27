(get-info :version)
; (:version "4.12.1")
; Started: 2024-12-27 01:51:48
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
(declare-sort $FVF<value> 0)
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
(declare-fun $SortWrappers.$FVF<value>To$Snap ($FVF<value>) $Snap)
(declare-fun $SortWrappers.$SnapTo$FVF<value> ($Snap) $FVF<value>)
(assert (forall ((x $FVF<value>)) (!
    (= x ($SortWrappers.$SnapTo$FVF<value>($SortWrappers.$FVF<value>To$Snap x)))
    :pattern (($SortWrappers.$FVF<value>To$Snap x))
    :qid |$Snap.$SnapTo$FVF<value>To$Snap|
    )))
(assert (forall ((x $Snap)) (!
    (= x ($SortWrappers.$FVF<value>To$Snap($SortWrappers.$SnapTo$FVF<value> x)))
    :pattern (($SortWrappers.$SnapTo$FVF<value> x))
    :qid |$Snap.$FVF<value>To$SnapTo$FVF<value>|
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
; /field_value_functions_declarations.smt2 [value: Int]
(declare-fun $FVF.domain_value ($FVF<value>) Set<$Ref>)
(declare-fun $FVF.lookup_value ($FVF<value> $Ref) Int)
(declare-fun $FVF.after_value ($FVF<value> $FVF<value>) Bool)
(declare-fun $FVF.loc_value (Int $Ref) Bool)
(declare-fun $FVF.perm_value ($FPM $Ref) $Perm)
(declare-const $fvfTOP_value $FVF<value>)
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
; /field_value_functions_axioms.smt2 [value: Int]
(assert (forall ((vs $FVF<value>) (ws $FVF<value>)) (!
    (=>
      (and
        (Set_equal ($FVF.domain_value vs) ($FVF.domain_value ws))
        (forall ((x $Ref)) (!
          (=>
            (Set_in x ($FVF.domain_value vs))
            (= ($FVF.lookup_value vs x) ($FVF.lookup_value ws x)))
          :pattern (($FVF.lookup_value vs x) ($FVF.lookup_value ws x))
          :qid |qp.$FVF<value>-eq-inner|
          )))
      (= vs ws))
    :pattern (($SortWrappers.$FVF<value>To$Snap vs)
              ($SortWrappers.$FVF<value>To$Snap ws)
              )
    :qid |qp.$FVF<value>-eq-outer|
    )))
(assert (forall ((r $Ref) (pm $FPM)) (!
    ($Perm.isValidVar ($FVF.perm_value pm r))
    :pattern (($FVF.perm_value pm r)))))
(assert (forall ((r $Ref) (f Int)) (!
    (= ($FVF.loc_value f r) true)
    :pattern (($FVF.loc_value f r)))))
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
; ---------- test01 ----------
(declare-const S@0@01 Seq<$Ref>)
(declare-const a@1@01 Int)
(declare-const S@2@01 Seq<$Ref>)
(declare-const a@3@01 Int)
(set-option :timeout 0)
(push) ; 1
(declare-const $t@4@01 $Snap)
(assert (= $t@4@01 ($Snap.combine ($Snap.first $t@4@01) ($Snap.second $t@4@01))))
(assert (= ($Snap.first $t@4@01) $Snap.unit))
; [eval] 0 <= a
(assert (<= 0 a@3@01))
(assert (=
  ($Snap.second $t@4@01)
  ($Snap.combine
    ($Snap.first ($Snap.second $t@4@01))
    ($Snap.second ($Snap.second $t@4@01)))))
(assert (= ($Snap.first ($Snap.second $t@4@01)) $Snap.unit))
; [eval] a < |S|
; [eval] |S|
(assert (< a@3@01 (Seq_length S@2@01)))
(assert (=
  ($Snap.second ($Snap.second $t@4@01))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second $t@4@01)))
    ($Snap.second ($Snap.second ($Snap.second $t@4@01))))))
(assert (= ($Snap.first ($Snap.second ($Snap.second $t@4@01))) $Snap.unit))
; [eval] (forall j1: Int, j2: Int :: { (j1 in [0..|S|)), (j2 in [0..|S|)) } { (j1 in [0..|S|)), S[j2] } { (j2 in [0..|S|)), S[j1] } { S[j1], S[j2] } (j1 in [0..|S|)) && ((j2 in [0..|S|)) && j1 != j2) ==> S[j1] != S[j2])
(declare-const j1@5@01 Int)
(declare-const j2@6@01 Int)
(push) ; 2
; [eval] (j1 in [0..|S|)) && ((j2 in [0..|S|)) && j1 != j2) ==> S[j1] != S[j2]
; [eval] (j1 in [0..|S|)) && ((j2 in [0..|S|)) && j1 != j2)
; [eval] (j1 in [0..|S|))
; [eval] [0..|S|)
; [eval] |S|
(push) ; 3
; [then-branch: 0 | !(j1@5@01 in [0..|S@2@01|]) | live]
; [else-branch: 0 | j1@5@01 in [0..|S@2@01|] | live]
(push) ; 4
; [then-branch: 0 | !(j1@5@01 in [0..|S@2@01|])]
(assert (not (Seq_contains (Seq_range 0 (Seq_length S@2@01)) j1@5@01)))
(pop) ; 4
(push) ; 4
; [else-branch: 0 | j1@5@01 in [0..|S@2@01|]]
(assert (Seq_contains (Seq_range 0 (Seq_length S@2@01)) j1@5@01))
; [eval] (j2 in [0..|S|))
; [eval] [0..|S|)
; [eval] |S|
(push) ; 5
; [then-branch: 1 | !(j2@6@01 in [0..|S@2@01|]) | live]
; [else-branch: 1 | j2@6@01 in [0..|S@2@01|] | live]
(push) ; 6
; [then-branch: 1 | !(j2@6@01 in [0..|S@2@01|])]
(assert (not (Seq_contains (Seq_range 0 (Seq_length S@2@01)) j2@6@01)))
(pop) ; 6
(push) ; 6
; [else-branch: 1 | j2@6@01 in [0..|S@2@01|]]
(assert (Seq_contains (Seq_range 0 (Seq_length S@2@01)) j2@6@01))
; [eval] j1 != j2
(pop) ; 6
(pop) ; 5
; Joined path conditions
; Joined path conditions
(assert (or
  (Seq_contains (Seq_range 0 (Seq_length S@2@01)) j2@6@01)
  (not (Seq_contains (Seq_range 0 (Seq_length S@2@01)) j2@6@01))))
(pop) ; 4
(pop) ; 3
; Joined path conditions
; Joined path conditions
(assert (=>
  (Seq_contains (Seq_range 0 (Seq_length S@2@01)) j1@5@01)
  (and
    (Seq_contains (Seq_range 0 (Seq_length S@2@01)) j1@5@01)
    (or
      (Seq_contains (Seq_range 0 (Seq_length S@2@01)) j2@6@01)
      (not (Seq_contains (Seq_range 0 (Seq_length S@2@01)) j2@6@01))))))
(assert (or
  (Seq_contains (Seq_range 0 (Seq_length S@2@01)) j1@5@01)
  (not (Seq_contains (Seq_range 0 (Seq_length S@2@01)) j1@5@01))))
(push) ; 3
; [then-branch: 2 | j1@5@01 in [0..|S@2@01|] && j2@6@01 in [0..|S@2@01|] && j1@5@01 != j2@6@01 | live]
; [else-branch: 2 | !(j1@5@01 in [0..|S@2@01|] && j2@6@01 in [0..|S@2@01|] && j1@5@01 != j2@6@01) | live]
(push) ; 4
; [then-branch: 2 | j1@5@01 in [0..|S@2@01|] && j2@6@01 in [0..|S@2@01|] && j1@5@01 != j2@6@01]
(assert (and
  (Seq_contains (Seq_range 0 (Seq_length S@2@01)) j1@5@01)
  (and
    (Seq_contains (Seq_range 0 (Seq_length S@2@01)) j2@6@01)
    (not (= j1@5@01 j2@6@01)))))
; [eval] S[j1] != S[j2]
; [eval] S[j1]
(push) ; 5
(assert (not (>= j1@5@01 0)))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(push) ; 5
(assert (not (< j1@5@01 (Seq_length S@2@01))))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
; [eval] S[j2]
(push) ; 5
(assert (not (>= j2@6@01 0)))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(push) ; 5
(assert (not (< j2@6@01 (Seq_length S@2@01))))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(pop) ; 4
(push) ; 4
; [else-branch: 2 | !(j1@5@01 in [0..|S@2@01|] && j2@6@01 in [0..|S@2@01|] && j1@5@01 != j2@6@01)]
(assert (not
  (and
    (Seq_contains (Seq_range 0 (Seq_length S@2@01)) j1@5@01)
    (and
      (Seq_contains (Seq_range 0 (Seq_length S@2@01)) j2@6@01)
      (not (= j1@5@01 j2@6@01))))))
(pop) ; 4
(pop) ; 3
; Joined path conditions
(assert (=>
  (and
    (Seq_contains (Seq_range 0 (Seq_length S@2@01)) j1@5@01)
    (and
      (Seq_contains (Seq_range 0 (Seq_length S@2@01)) j2@6@01)
      (not (= j1@5@01 j2@6@01))))
  (and
    (Seq_contains (Seq_range 0 (Seq_length S@2@01)) j1@5@01)
    (Seq_contains (Seq_range 0 (Seq_length S@2@01)) j2@6@01)
    (not (= j1@5@01 j2@6@01)))))
; Joined path conditions
(assert (or
  (not
    (and
      (Seq_contains (Seq_range 0 (Seq_length S@2@01)) j1@5@01)
      (and
        (Seq_contains (Seq_range 0 (Seq_length S@2@01)) j2@6@01)
        (not (= j1@5@01 j2@6@01)))))
  (and
    (Seq_contains (Seq_range 0 (Seq_length S@2@01)) j1@5@01)
    (and
      (Seq_contains (Seq_range 0 (Seq_length S@2@01)) j2@6@01)
      (not (= j1@5@01 j2@6@01))))))
(pop) ; 2
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall ((j1@5@01 Int) (j2@6@01 Int)) (!
  (and
    (=>
      (Seq_contains (Seq_range 0 (Seq_length S@2@01)) j1@5@01)
      (and
        (Seq_contains (Seq_range 0 (Seq_length S@2@01)) j1@5@01)
        (or
          (Seq_contains (Seq_range 0 (Seq_length S@2@01)) j2@6@01)
          (not (Seq_contains (Seq_range 0 (Seq_length S@2@01)) j2@6@01)))))
    (or
      (Seq_contains (Seq_range 0 (Seq_length S@2@01)) j1@5@01)
      (not (Seq_contains (Seq_range 0 (Seq_length S@2@01)) j1@5@01)))
    (=>
      (and
        (Seq_contains (Seq_range 0 (Seq_length S@2@01)) j1@5@01)
        (and
          (Seq_contains (Seq_range 0 (Seq_length S@2@01)) j2@6@01)
          (not (= j1@5@01 j2@6@01))))
      (and
        (Seq_contains (Seq_range 0 (Seq_length S@2@01)) j1@5@01)
        (Seq_contains (Seq_range 0 (Seq_length S@2@01)) j2@6@01)
        (not (= j1@5@01 j2@6@01))))
    (or
      (not
        (and
          (Seq_contains (Seq_range 0 (Seq_length S@2@01)) j1@5@01)
          (and
            (Seq_contains (Seq_range 0 (Seq_length S@2@01)) j2@6@01)
            (not (= j1@5@01 j2@6@01)))))
      (and
        (Seq_contains (Seq_range 0 (Seq_length S@2@01)) j1@5@01)
        (and
          (Seq_contains (Seq_range 0 (Seq_length S@2@01)) j2@6@01)
          (not (= j1@5@01 j2@6@01))))))
  :pattern ((Seq_contains (Seq_range 0 (Seq_length S@2@01)) j1@5@01) (Seq_contains
    (Seq_range 0 (Seq_length S@2@01))
    j2@6@01))
  :pattern ((Seq_contains_trigger (Seq_range 0 (Seq_length S@2@01)) j1@5@01) (Seq_contains_trigger
    (Seq_range 0 (Seq_length S@2@01))
    j2@6@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/sequences/seqsingleelements.vpr@8@12@8@102-aux|)))
(assert (forall ((j1@5@01 Int) (j2@6@01 Int)) (!
  (and
    (=>
      (Seq_contains (Seq_range 0 (Seq_length S@2@01)) j1@5@01)
      (and
        (Seq_contains (Seq_range 0 (Seq_length S@2@01)) j1@5@01)
        (or
          (Seq_contains (Seq_range 0 (Seq_length S@2@01)) j2@6@01)
          (not (Seq_contains (Seq_range 0 (Seq_length S@2@01)) j2@6@01)))))
    (or
      (Seq_contains (Seq_range 0 (Seq_length S@2@01)) j1@5@01)
      (not (Seq_contains (Seq_range 0 (Seq_length S@2@01)) j1@5@01)))
    (=>
      (and
        (Seq_contains (Seq_range 0 (Seq_length S@2@01)) j1@5@01)
        (and
          (Seq_contains (Seq_range 0 (Seq_length S@2@01)) j2@6@01)
          (not (= j1@5@01 j2@6@01))))
      (and
        (Seq_contains (Seq_range 0 (Seq_length S@2@01)) j1@5@01)
        (Seq_contains (Seq_range 0 (Seq_length S@2@01)) j2@6@01)
        (not (= j1@5@01 j2@6@01))))
    (or
      (not
        (and
          (Seq_contains (Seq_range 0 (Seq_length S@2@01)) j1@5@01)
          (and
            (Seq_contains (Seq_range 0 (Seq_length S@2@01)) j2@6@01)
            (not (= j1@5@01 j2@6@01)))))
      (and
        (Seq_contains (Seq_range 0 (Seq_length S@2@01)) j1@5@01)
        (and
          (Seq_contains (Seq_range 0 (Seq_length S@2@01)) j2@6@01)
          (not (= j1@5@01 j2@6@01))))))
  :pattern ((Seq_contains_trigger (Seq_range 0 (Seq_length S@2@01)) j1@5@01) (Seq_contains_trigger
    (Seq_range 0 (Seq_length S@2@01))
    j2@6@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/sequences/seqsingleelements.vpr@8@12@8@102-aux|)))
(assert (forall ((j1@5@01 Int) (j2@6@01 Int)) (!
  (and
    (=>
      (Seq_contains (Seq_range 0 (Seq_length S@2@01)) j1@5@01)
      (and
        (Seq_contains (Seq_range 0 (Seq_length S@2@01)) j1@5@01)
        (or
          (Seq_contains (Seq_range 0 (Seq_length S@2@01)) j2@6@01)
          (not (Seq_contains (Seq_range 0 (Seq_length S@2@01)) j2@6@01)))))
    (or
      (Seq_contains (Seq_range 0 (Seq_length S@2@01)) j1@5@01)
      (not (Seq_contains (Seq_range 0 (Seq_length S@2@01)) j1@5@01)))
    (=>
      (and
        (Seq_contains (Seq_range 0 (Seq_length S@2@01)) j1@5@01)
        (and
          (Seq_contains (Seq_range 0 (Seq_length S@2@01)) j2@6@01)
          (not (= j1@5@01 j2@6@01))))
      (and
        (Seq_contains (Seq_range 0 (Seq_length S@2@01)) j1@5@01)
        (Seq_contains (Seq_range 0 (Seq_length S@2@01)) j2@6@01)
        (not (= j1@5@01 j2@6@01))))
    (or
      (not
        (and
          (Seq_contains (Seq_range 0 (Seq_length S@2@01)) j1@5@01)
          (and
            (Seq_contains (Seq_range 0 (Seq_length S@2@01)) j2@6@01)
            (not (= j1@5@01 j2@6@01)))))
      (and
        (Seq_contains (Seq_range 0 (Seq_length S@2@01)) j1@5@01)
        (and
          (Seq_contains (Seq_range 0 (Seq_length S@2@01)) j2@6@01)
          (not (= j1@5@01 j2@6@01))))))
  :pattern ((Seq_contains (Seq_range 0 (Seq_length S@2@01)) j1@5@01) (Seq_index
    S@2@01
    j2@6@01))
  :pattern ((Seq_contains_trigger (Seq_range 0 (Seq_length S@2@01)) j1@5@01) (Seq_index
    S@2@01
    j2@6@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/sequences/seqsingleelements.vpr@8@12@8@102-aux|)))
(assert (forall ((j1@5@01 Int) (j2@6@01 Int)) (!
  (and
    (=>
      (Seq_contains (Seq_range 0 (Seq_length S@2@01)) j1@5@01)
      (and
        (Seq_contains (Seq_range 0 (Seq_length S@2@01)) j1@5@01)
        (or
          (Seq_contains (Seq_range 0 (Seq_length S@2@01)) j2@6@01)
          (not (Seq_contains (Seq_range 0 (Seq_length S@2@01)) j2@6@01)))))
    (or
      (Seq_contains (Seq_range 0 (Seq_length S@2@01)) j1@5@01)
      (not (Seq_contains (Seq_range 0 (Seq_length S@2@01)) j1@5@01)))
    (=>
      (and
        (Seq_contains (Seq_range 0 (Seq_length S@2@01)) j1@5@01)
        (and
          (Seq_contains (Seq_range 0 (Seq_length S@2@01)) j2@6@01)
          (not (= j1@5@01 j2@6@01))))
      (and
        (Seq_contains (Seq_range 0 (Seq_length S@2@01)) j1@5@01)
        (Seq_contains (Seq_range 0 (Seq_length S@2@01)) j2@6@01)
        (not (= j1@5@01 j2@6@01))))
    (or
      (not
        (and
          (Seq_contains (Seq_range 0 (Seq_length S@2@01)) j1@5@01)
          (and
            (Seq_contains (Seq_range 0 (Seq_length S@2@01)) j2@6@01)
            (not (= j1@5@01 j2@6@01)))))
      (and
        (Seq_contains (Seq_range 0 (Seq_length S@2@01)) j1@5@01)
        (and
          (Seq_contains (Seq_range 0 (Seq_length S@2@01)) j2@6@01)
          (not (= j1@5@01 j2@6@01))))))
  :pattern ((Seq_contains_trigger (Seq_range 0 (Seq_length S@2@01)) j1@5@01) (Seq_index
    S@2@01
    j2@6@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/sequences/seqsingleelements.vpr@8@12@8@102-aux|)))
(assert (forall ((j1@5@01 Int) (j2@6@01 Int)) (!
  (and
    (=>
      (Seq_contains (Seq_range 0 (Seq_length S@2@01)) j1@5@01)
      (and
        (Seq_contains (Seq_range 0 (Seq_length S@2@01)) j1@5@01)
        (or
          (Seq_contains (Seq_range 0 (Seq_length S@2@01)) j2@6@01)
          (not (Seq_contains (Seq_range 0 (Seq_length S@2@01)) j2@6@01)))))
    (or
      (Seq_contains (Seq_range 0 (Seq_length S@2@01)) j1@5@01)
      (not (Seq_contains (Seq_range 0 (Seq_length S@2@01)) j1@5@01)))
    (=>
      (and
        (Seq_contains (Seq_range 0 (Seq_length S@2@01)) j1@5@01)
        (and
          (Seq_contains (Seq_range 0 (Seq_length S@2@01)) j2@6@01)
          (not (= j1@5@01 j2@6@01))))
      (and
        (Seq_contains (Seq_range 0 (Seq_length S@2@01)) j1@5@01)
        (Seq_contains (Seq_range 0 (Seq_length S@2@01)) j2@6@01)
        (not (= j1@5@01 j2@6@01))))
    (or
      (not
        (and
          (Seq_contains (Seq_range 0 (Seq_length S@2@01)) j1@5@01)
          (and
            (Seq_contains (Seq_range 0 (Seq_length S@2@01)) j2@6@01)
            (not (= j1@5@01 j2@6@01)))))
      (and
        (Seq_contains (Seq_range 0 (Seq_length S@2@01)) j1@5@01)
        (and
          (Seq_contains (Seq_range 0 (Seq_length S@2@01)) j2@6@01)
          (not (= j1@5@01 j2@6@01))))))
  :pattern ((Seq_contains (Seq_range 0 (Seq_length S@2@01)) j2@6@01) (Seq_index
    S@2@01
    j1@5@01))
  :pattern ((Seq_contains_trigger (Seq_range 0 (Seq_length S@2@01)) j2@6@01) (Seq_index
    S@2@01
    j1@5@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/sequences/seqsingleelements.vpr@8@12@8@102-aux|)))
(assert (forall ((j1@5@01 Int) (j2@6@01 Int)) (!
  (and
    (=>
      (Seq_contains (Seq_range 0 (Seq_length S@2@01)) j1@5@01)
      (and
        (Seq_contains (Seq_range 0 (Seq_length S@2@01)) j1@5@01)
        (or
          (Seq_contains (Seq_range 0 (Seq_length S@2@01)) j2@6@01)
          (not (Seq_contains (Seq_range 0 (Seq_length S@2@01)) j2@6@01)))))
    (or
      (Seq_contains (Seq_range 0 (Seq_length S@2@01)) j1@5@01)
      (not (Seq_contains (Seq_range 0 (Seq_length S@2@01)) j1@5@01)))
    (=>
      (and
        (Seq_contains (Seq_range 0 (Seq_length S@2@01)) j1@5@01)
        (and
          (Seq_contains (Seq_range 0 (Seq_length S@2@01)) j2@6@01)
          (not (= j1@5@01 j2@6@01))))
      (and
        (Seq_contains (Seq_range 0 (Seq_length S@2@01)) j1@5@01)
        (Seq_contains (Seq_range 0 (Seq_length S@2@01)) j2@6@01)
        (not (= j1@5@01 j2@6@01))))
    (or
      (not
        (and
          (Seq_contains (Seq_range 0 (Seq_length S@2@01)) j1@5@01)
          (and
            (Seq_contains (Seq_range 0 (Seq_length S@2@01)) j2@6@01)
            (not (= j1@5@01 j2@6@01)))))
      (and
        (Seq_contains (Seq_range 0 (Seq_length S@2@01)) j1@5@01)
        (and
          (Seq_contains (Seq_range 0 (Seq_length S@2@01)) j2@6@01)
          (not (= j1@5@01 j2@6@01))))))
  :pattern ((Seq_contains_trigger (Seq_range 0 (Seq_length S@2@01)) j2@6@01) (Seq_index
    S@2@01
    j1@5@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/sequences/seqsingleelements.vpr@8@12@8@102-aux|)))
(assert (forall ((j1@5@01 Int) (j2@6@01 Int)) (!
  (and
    (=>
      (Seq_contains (Seq_range 0 (Seq_length S@2@01)) j1@5@01)
      (and
        (Seq_contains (Seq_range 0 (Seq_length S@2@01)) j1@5@01)
        (or
          (Seq_contains (Seq_range 0 (Seq_length S@2@01)) j2@6@01)
          (not (Seq_contains (Seq_range 0 (Seq_length S@2@01)) j2@6@01)))))
    (or
      (Seq_contains (Seq_range 0 (Seq_length S@2@01)) j1@5@01)
      (not (Seq_contains (Seq_range 0 (Seq_length S@2@01)) j1@5@01)))
    (=>
      (and
        (Seq_contains (Seq_range 0 (Seq_length S@2@01)) j1@5@01)
        (and
          (Seq_contains (Seq_range 0 (Seq_length S@2@01)) j2@6@01)
          (not (= j1@5@01 j2@6@01))))
      (and
        (Seq_contains (Seq_range 0 (Seq_length S@2@01)) j1@5@01)
        (Seq_contains (Seq_range 0 (Seq_length S@2@01)) j2@6@01)
        (not (= j1@5@01 j2@6@01))))
    (or
      (not
        (and
          (Seq_contains (Seq_range 0 (Seq_length S@2@01)) j1@5@01)
          (and
            (Seq_contains (Seq_range 0 (Seq_length S@2@01)) j2@6@01)
            (not (= j1@5@01 j2@6@01)))))
      (and
        (Seq_contains (Seq_range 0 (Seq_length S@2@01)) j1@5@01)
        (and
          (Seq_contains (Seq_range 0 (Seq_length S@2@01)) j2@6@01)
          (not (= j1@5@01 j2@6@01))))))
  :pattern ((Seq_index S@2@01 j1@5@01) (Seq_index S@2@01 j2@6@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/sequences/seqsingleelements.vpr@8@12@8@102-aux|)))
(assert (forall ((j1@5@01 Int) (j2@6@01 Int)) (!
  (=>
    (and
      (Seq_contains (Seq_range 0 (Seq_length S@2@01)) j1@5@01)
      (and
        (Seq_contains (Seq_range 0 (Seq_length S@2@01)) j2@6@01)
        (not (= j1@5@01 j2@6@01))))
    (not (= (Seq_index S@2@01 j1@5@01) (Seq_index S@2@01 j2@6@01))))
  :pattern ((Seq_contains (Seq_range 0 (Seq_length S@2@01)) j1@5@01) (Seq_contains
    (Seq_range 0 (Seq_length S@2@01))
    j2@6@01))
  :pattern ((Seq_contains_trigger (Seq_range 0 (Seq_length S@2@01)) j1@5@01) (Seq_contains_trigger
    (Seq_range 0 (Seq_length S@2@01))
    j2@6@01))
  :pattern ((Seq_contains (Seq_range 0 (Seq_length S@2@01)) j1@5@01) (Seq_index
    S@2@01
    j2@6@01))
  :pattern ((Seq_contains_trigger (Seq_range 0 (Seq_length S@2@01)) j1@5@01) (Seq_index
    S@2@01
    j2@6@01))
  :pattern ((Seq_contains (Seq_range 0 (Seq_length S@2@01)) j2@6@01) (Seq_index
    S@2@01
    j1@5@01))
  :pattern ((Seq_contains_trigger (Seq_range 0 (Seq_length S@2@01)) j2@6@01) (Seq_index
    S@2@01
    j1@5@01))
  :pattern ((Seq_index S@2@01 j1@5@01) (Seq_index S@2@01 j2@6@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/sequences/seqsingleelements.vpr@8@12@8@102|)))
(declare-const j@7@01 Int)
(push) ; 2
; [eval] (j in [0..|S|))
; [eval] [0..|S|)
; [eval] |S|
(assert (Seq_contains (Seq_range 0 (Seq_length S@2@01)) j@7@01))
; [eval] S[j]
(push) ; 3
(assert (not (>= j@7@01 0)))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(push) ; 3
(assert (not (< j@7@01 (Seq_length S@2@01))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(pop) ; 2
(declare-fun inv@8@01 ($Ref) Int)
(declare-fun img@9@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
; Check receiver injectivity
(push) ; 2
(assert (not (forall ((j1@7@01 Int) (j2@7@01 Int)) (!
  (=>
    (and
      (Seq_contains (Seq_range 0 (Seq_length S@2@01)) j1@7@01)
      (Seq_contains (Seq_range 0 (Seq_length S@2@01)) j2@7@01)
      (= (Seq_index S@2@01 j1@7@01) (Seq_index S@2@01 j2@7@01)))
    (= j1@7@01 j2@7@01))
  
  :qid |value-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 2
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((j@7@01 Int)) (!
  (=>
    (Seq_contains (Seq_range 0 (Seq_length S@2@01)) j@7@01)
    (and
      (= (inv@8@01 (Seq_index S@2@01 j@7@01)) j@7@01)
      (img@9@01 (Seq_index S@2@01 j@7@01))))
  :pattern ((Seq_index S@2@01 j@7@01))
  :qid |quant-u-10931|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@9@01 r)
      (Seq_contains (Seq_range 0 (Seq_length S@2@01)) (inv@8@01 r)))
    (= (Seq_index S@2@01 (inv@8@01 r)) r))
  :pattern ((inv@8@01 r))
  :qid |value-fctOfInv|)))
; Permissions are non-negative
; Field permissions are at most one
; Permission implies non-null receiver
(assert (forall ((j@7@01 Int)) (!
  (=>
    (Seq_contains (Seq_range 0 (Seq_length S@2@01)) j@7@01)
    (not (= (Seq_index S@2@01 j@7@01) $Ref.null)))
  :pattern ((Seq_index S@2@01 j@7@01))
  :qid |value-permImpliesNonNull|)))
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
(set-option :timeout 0)
(push) ; 2
(declare-const $t@10@01 $Snap)
(assert (= $t@10@01 ($Snap.combine ($Snap.first $t@10@01) ($Snap.second $t@10@01))))
(declare-const j@11@01 Int)
(push) ; 3
; [eval] (j in [0..|S|))
; [eval] [0..|S|)
; [eval] |S|
(assert (Seq_contains (Seq_range 0 (Seq_length S@2@01)) j@11@01))
; [eval] S[j]
(push) ; 4
(assert (not (>= j@11@01 0)))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(push) ; 4
(assert (not (< j@11@01 (Seq_length S@2@01))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(pop) ; 3
(declare-fun inv@12@01 ($Ref) Int)
(declare-fun img@13@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
; Check receiver injectivity
(push) ; 3
(assert (not (forall ((j1@11@01 Int) (j2@11@01 Int)) (!
  (=>
    (and
      (Seq_contains (Seq_range 0 (Seq_length S@2@01)) j1@11@01)
      (Seq_contains (Seq_range 0 (Seq_length S@2@01)) j2@11@01)
      (= (Seq_index S@2@01 j1@11@01) (Seq_index S@2@01 j2@11@01)))
    (= j1@11@01 j2@11@01))
  
  :qid |value-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((j@11@01 Int)) (!
  (=>
    (Seq_contains (Seq_range 0 (Seq_length S@2@01)) j@11@01)
    (and
      (= (inv@12@01 (Seq_index S@2@01 j@11@01)) j@11@01)
      (img@13@01 (Seq_index S@2@01 j@11@01))))
  :pattern ((Seq_index S@2@01 j@11@01))
  :qid |quant-u-10933|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@13@01 r)
      (Seq_contains (Seq_range 0 (Seq_length S@2@01)) (inv@12@01 r)))
    (= (Seq_index S@2@01 (inv@12@01 r)) r))
  :pattern ((inv@12@01 r))
  :qid |value-fctOfInv|)))
; Permissions are non-negative
; Field permissions are at most one
; Permission implies non-null receiver
(assert (forall ((j@11@01 Int)) (!
  (=>
    (Seq_contains (Seq_range 0 (Seq_length S@2@01)) j@11@01)
    (not (= (Seq_index S@2@01 j@11@01) $Ref.null)))
  :pattern ((Seq_index S@2@01 j@11@01))
  :qid |value-permImpliesNonNull|)))
(assert (= ($Snap.second $t@10@01) $Snap.unit))
; [eval] S[a].value == 2
; [eval] S[a]
(push) ; 3
(assert (not (>= a@3@01 0)))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(push) ; 3
(assert (not (and
  (img@13@01 (Seq_index S@2@01 a@3@01))
  (Seq_contains
    (Seq_range 0 (Seq_length S@2@01))
    (inv@12@01 (Seq_index S@2@01 a@3@01))))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(assert (=
  ($FVF.lookup_value ($SortWrappers.$SnapTo$FVF<value> ($Snap.first $t@10@01)) (Seq_index
    S@2@01
    a@3@01))
  2))
(pop) ; 2
(push) ; 2
; [exec]
; S[a].value := 2
; [eval] S[a]
(push) ; 3
(assert (not (>= a@3@01 0)))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Precomputing data for removing quantified permissions
(define-fun pTaken@14@01 ((r $Ref)) $Perm
  (ite
    (= r (Seq_index S@2@01 a@3@01))
    ($Perm.min
      (ite
        (and
          (img@9@01 r)
          (Seq_contains (Seq_range 0 (Seq_length S@2@01)) (inv@8@01 r)))
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
          (img@9@01 r)
          (Seq_contains (Seq_range 0 (Seq_length S@2@01)) (inv@8@01 r)))
        $Perm.Write
        $Perm.No)
      (pTaken@14@01 r))
    $Perm.No)
  
  :qid |quant-u-10935|))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (forall ((r $Ref)) (!
  (= (pTaken@14@01 r) $Perm.No)
  
  :qid |quant-u-10936|))))
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
    (= r (Seq_index S@2@01 a@3@01))
    (= (- $Perm.Write (pTaken@14@01 r)) $Perm.No))
  
  :qid |quant-u-10937|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Final check if taken enough permissions
; Done removing quantified permissions
(declare-const sm@15@01 $FVF<value>)
; Definitional axioms for singleton-FVF's value
(assert (= ($FVF.lookup_value (as sm@15@01  $FVF<value>) (Seq_index S@2@01 a@3@01)) 2))
(declare-const j@16@01 Int)
(set-option :timeout 0)
(push) ; 3
; [eval] (j in [0..|S|))
; [eval] [0..|S|)
; [eval] |S|
(assert (Seq_contains (Seq_range 0 (Seq_length S@2@01)) j@16@01))
; [eval] S[j]
(push) ; 4
(assert (not (>= j@16@01 0)))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(push) ; 4
(assert (not (< j@16@01 (Seq_length S@2@01))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(pop) ; 3
(declare-fun inv@17@01 ($Ref) Int)
(declare-fun img@18@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
; Check receiver injectivity
(push) ; 3
(assert (not (forall ((j1@16@01 Int) (j2@16@01 Int)) (!
  (=>
    (and
      (Seq_contains (Seq_range 0 (Seq_length S@2@01)) j1@16@01)
      (Seq_contains (Seq_range 0 (Seq_length S@2@01)) j2@16@01)
      (= (Seq_index S@2@01 j1@16@01) (Seq_index S@2@01 j2@16@01)))
    (= j1@16@01 j2@16@01))
  
  :qid |value-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((j@16@01 Int)) (!
  (=>
    (Seq_contains (Seq_range 0 (Seq_length S@2@01)) j@16@01)
    (and
      (= (inv@17@01 (Seq_index S@2@01 j@16@01)) j@16@01)
      (img@18@01 (Seq_index S@2@01 j@16@01))))
  :pattern ((Seq_index S@2@01 j@16@01))
  :qid |value-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@18@01 r)
      (Seq_contains (Seq_range 0 (Seq_length S@2@01)) (inv@17@01 r)))
    (= (Seq_index S@2@01 (inv@17@01 r)) r))
  :pattern ((inv@17@01 r))
  :qid |value-fctOfInv|)))
; Precomputing data for removing quantified permissions
(define-fun pTaken@19@01 ((r $Ref)) $Perm
  (ite
    (and
      (Seq_contains (Seq_range 0 (Seq_length S@2@01)) (inv@17@01 r))
      (img@18@01 r)
      (= r (Seq_index S@2@01 (inv@17@01 r))))
    ($Perm.min
      (ite
        (and
          (img@9@01 r)
          (Seq_contains (Seq_range 0 (Seq_length S@2@01)) (inv@8@01 r)))
        (- $Perm.Write (pTaken@14@01 r))
        $Perm.No)
      $Perm.Write)
    $Perm.No))
(define-fun pTaken@20@01 ((r $Ref)) $Perm
  (ite
    (and
      (Seq_contains (Seq_range 0 (Seq_length S@2@01)) (inv@17@01 r))
      (img@18@01 r)
      (= r (Seq_index S@2@01 (inv@17@01 r))))
    ($Perm.min
      (ite (= r (Seq_index S@2@01 a@3@01)) $Perm.Write $Perm.No)
      (- $Perm.Write (pTaken@19@01 r)))
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
          (img@9@01 r)
          (Seq_contains (Seq_range 0 (Seq_length S@2@01)) (inv@8@01 r)))
        (- $Perm.Write (pTaken@14@01 r))
        $Perm.No)
      (pTaken@19@01 r))
    $Perm.No)
  
  :qid |quant-u-10940|))))
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
      (Seq_contains (Seq_range 0 (Seq_length S@2@01)) (inv@17@01 r))
      (img@18@01 r)
      (= r (Seq_index S@2@01 (inv@17@01 r))))
    (= (- $Perm.Write (pTaken@19@01 r)) $Perm.No))
  
  :qid |quant-u-10941|))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Chunk depleted?
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 500)
(assert (not (=
  (-
    (ite
      (= (Seq_index S@2@01 a@3@01) (Seq_index S@2@01 a@3@01))
      $Perm.Write
      $Perm.No)
    (pTaken@20@01 (Seq_index S@2@01 a@3@01)))
  $Perm.No)))
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
      (Seq_contains (Seq_range 0 (Seq_length S@2@01)) (inv@17@01 r))
      (img@18@01 r)
      (= r (Seq_index S@2@01 (inv@17@01 r))))
    (= (- (- $Perm.Write (pTaken@19@01 r)) (pTaken@20@01 r)) $Perm.No))
  
  :qid |quant-u-10943|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Final check if taken enough permissions
; Done removing quantified permissions
; [eval] S[a].value == 2
; [eval] S[a]
(set-option :timeout 0)
(push) ; 3
(assert (not (>= a@3@01 0)))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(declare-const sm@21@01 $FVF<value>)
; Definitional axioms for snapshot map values
(assert (forall ((r $Ref)) (!
  (=>
    (= r (Seq_index S@2@01 a@3@01))
    (=
      ($FVF.lookup_value (as sm@21@01  $FVF<value>) r)
      ($FVF.lookup_value (as sm@15@01  $FVF<value>) r)))
  :pattern (($FVF.lookup_value (as sm@21@01  $FVF<value>) r))
  :pattern (($FVF.lookup_value (as sm@15@01  $FVF<value>) r))
  :qid |qp.fvfValDef0|)))
(assert (forall ((r $Ref)) (!
  (=>
    (ite
      (and
        (img@9@01 r)
        (Seq_contains (Seq_range 0 (Seq_length S@2@01)) (inv@8@01 r)))
      (< $Perm.No (- $Perm.Write (pTaken@14@01 r)))
      false)
    (=
      ($FVF.lookup_value (as sm@21@01  $FVF<value>) r)
      ($FVF.lookup_value ($SortWrappers.$SnapTo$FVF<value> ($Snap.second ($Snap.second ($Snap.second $t@4@01)))) r)))
  :pattern (($FVF.lookup_value (as sm@21@01  $FVF<value>) r))
  :pattern (($FVF.lookup_value ($SortWrappers.$SnapTo$FVF<value> ($Snap.second ($Snap.second ($Snap.second $t@4@01)))) r))
  :qid |qp.fvfValDef1|)))
(declare-const pm@22@01 $FPM)
(assert (forall ((r $Ref)) (!
  (=
    ($FVF.perm_value (as pm@22@01  $FPM) r)
    (+
      (ite (= r (Seq_index S@2@01 a@3@01)) $Perm.Write $Perm.No)
      (ite
        (and
          (img@9@01 r)
          (Seq_contains (Seq_range 0 (Seq_length S@2@01)) (inv@8@01 r)))
        (- $Perm.Write (pTaken@14@01 r))
        $Perm.No)))
  :pattern (($FVF.perm_value (as pm@22@01  $FPM) r))
  :qid |qp.resPrmSumDef2|)))
(push) ; 3
(assert (not (< $Perm.No ($FVF.perm_value (as pm@22@01  $FPM) (Seq_index S@2@01 a@3@01)))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(push) ; 3
(assert (not (= ($FVF.lookup_value (as sm@21@01  $FVF<value>) (Seq_index S@2@01 a@3@01)) 2)))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(assert (= ($FVF.lookup_value (as sm@21@01  $FVF<value>) (Seq_index S@2@01 a@3@01)) 2))
(pop) ; 2
(pop) ; 1
; ---------- test02 ----------
(declare-const S@23@01 Seq<$Ref>)
(declare-const a@24@01 Int)
(declare-const b@25@01 Int)
(declare-const c@26@01 Int)
(declare-const S@27@01 Seq<$Ref>)
(declare-const a@28@01 Int)
(declare-const b@29@01 Int)
(declare-const c@30@01 Int)
(push) ; 1
(declare-const $t@31@01 $Snap)
(assert (= $t@31@01 ($Snap.combine ($Snap.first $t@31@01) ($Snap.second $t@31@01))))
(assert (= ($Snap.first $t@31@01) $Snap.unit))
; [eval] 0 <= a
(assert (<= 0 a@28@01))
(assert (=
  ($Snap.second $t@31@01)
  ($Snap.combine
    ($Snap.first ($Snap.second $t@31@01))
    ($Snap.second ($Snap.second $t@31@01)))))
(assert (= ($Snap.first ($Snap.second $t@31@01)) $Snap.unit))
; [eval] a < b
(assert (< a@28@01 b@29@01))
(assert (=
  ($Snap.second ($Snap.second $t@31@01))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second $t@31@01)))
    ($Snap.second ($Snap.second ($Snap.second $t@31@01))))))
(assert (= ($Snap.first ($Snap.second ($Snap.second $t@31@01))) $Snap.unit))
; [eval] b < c
(assert (< b@29@01 c@30@01))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second $t@31@01)))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@31@01))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@31@01)))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@31@01))))
  $Snap.unit))
; [eval] c < |S|
; [eval] |S|
(assert (< c@30@01 (Seq_length S@27@01)))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@31@01))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@31@01)))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@31@01))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@31@01)))))
  $Snap.unit))
; [eval] (forall j1: Int, j2: Int :: { (j1 in [0..|S|)), (j2 in [0..|S|)) } { (j1 in [0..|S|)), S[j2] } { (j2 in [0..|S|)), S[j1] } { S[j1], S[j2] } (j1 in [0..|S|)) && ((j2 in [0..|S|)) && j1 != j2) ==> S[j1] != S[j2])
(declare-const j1@32@01 Int)
(declare-const j2@33@01 Int)
(push) ; 2
; [eval] (j1 in [0..|S|)) && ((j2 in [0..|S|)) && j1 != j2) ==> S[j1] != S[j2]
; [eval] (j1 in [0..|S|)) && ((j2 in [0..|S|)) && j1 != j2)
; [eval] (j1 in [0..|S|))
; [eval] [0..|S|)
; [eval] |S|
(push) ; 3
; [then-branch: 3 | !(j1@32@01 in [0..|S@27@01|]) | live]
; [else-branch: 3 | j1@32@01 in [0..|S@27@01|] | live]
(push) ; 4
; [then-branch: 3 | !(j1@32@01 in [0..|S@27@01|])]
(assert (not (Seq_contains (Seq_range 0 (Seq_length S@27@01)) j1@32@01)))
(pop) ; 4
(push) ; 4
; [else-branch: 3 | j1@32@01 in [0..|S@27@01|]]
(assert (Seq_contains (Seq_range 0 (Seq_length S@27@01)) j1@32@01))
; [eval] (j2 in [0..|S|))
; [eval] [0..|S|)
; [eval] |S|
(push) ; 5
; [then-branch: 4 | !(j2@33@01 in [0..|S@27@01|]) | live]
; [else-branch: 4 | j2@33@01 in [0..|S@27@01|] | live]
(push) ; 6
; [then-branch: 4 | !(j2@33@01 in [0..|S@27@01|])]
(assert (not (Seq_contains (Seq_range 0 (Seq_length S@27@01)) j2@33@01)))
(pop) ; 6
(push) ; 6
; [else-branch: 4 | j2@33@01 in [0..|S@27@01|]]
(assert (Seq_contains (Seq_range 0 (Seq_length S@27@01)) j2@33@01))
; [eval] j1 != j2
(pop) ; 6
(pop) ; 5
; Joined path conditions
; Joined path conditions
(assert (or
  (Seq_contains (Seq_range 0 (Seq_length S@27@01)) j2@33@01)
  (not (Seq_contains (Seq_range 0 (Seq_length S@27@01)) j2@33@01))))
(pop) ; 4
(pop) ; 3
; Joined path conditions
; Joined path conditions
(assert (=>
  (Seq_contains (Seq_range 0 (Seq_length S@27@01)) j1@32@01)
  (and
    (Seq_contains (Seq_range 0 (Seq_length S@27@01)) j1@32@01)
    (or
      (Seq_contains (Seq_range 0 (Seq_length S@27@01)) j2@33@01)
      (not (Seq_contains (Seq_range 0 (Seq_length S@27@01)) j2@33@01))))))
(assert (or
  (Seq_contains (Seq_range 0 (Seq_length S@27@01)) j1@32@01)
  (not (Seq_contains (Seq_range 0 (Seq_length S@27@01)) j1@32@01))))
(push) ; 3
; [then-branch: 5 | j1@32@01 in [0..|S@27@01|] && j2@33@01 in [0..|S@27@01|] && j1@32@01 != j2@33@01 | live]
; [else-branch: 5 | !(j1@32@01 in [0..|S@27@01|] && j2@33@01 in [0..|S@27@01|] && j1@32@01 != j2@33@01) | live]
(push) ; 4
; [then-branch: 5 | j1@32@01 in [0..|S@27@01|] && j2@33@01 in [0..|S@27@01|] && j1@32@01 != j2@33@01]
(assert (and
  (Seq_contains (Seq_range 0 (Seq_length S@27@01)) j1@32@01)
  (and
    (Seq_contains (Seq_range 0 (Seq_length S@27@01)) j2@33@01)
    (not (= j1@32@01 j2@33@01)))))
; [eval] S[j1] != S[j2]
; [eval] S[j1]
(push) ; 5
(assert (not (>= j1@32@01 0)))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(push) ; 5
(assert (not (< j1@32@01 (Seq_length S@27@01))))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
; [eval] S[j2]
(push) ; 5
(assert (not (>= j2@33@01 0)))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(push) ; 5
(assert (not (< j2@33@01 (Seq_length S@27@01))))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(pop) ; 4
(push) ; 4
; [else-branch: 5 | !(j1@32@01 in [0..|S@27@01|] && j2@33@01 in [0..|S@27@01|] && j1@32@01 != j2@33@01)]
(assert (not
  (and
    (Seq_contains (Seq_range 0 (Seq_length S@27@01)) j1@32@01)
    (and
      (Seq_contains (Seq_range 0 (Seq_length S@27@01)) j2@33@01)
      (not (= j1@32@01 j2@33@01))))))
(pop) ; 4
(pop) ; 3
; Joined path conditions
(assert (=>
  (and
    (Seq_contains (Seq_range 0 (Seq_length S@27@01)) j1@32@01)
    (and
      (Seq_contains (Seq_range 0 (Seq_length S@27@01)) j2@33@01)
      (not (= j1@32@01 j2@33@01))))
  (and
    (Seq_contains (Seq_range 0 (Seq_length S@27@01)) j1@32@01)
    (Seq_contains (Seq_range 0 (Seq_length S@27@01)) j2@33@01)
    (not (= j1@32@01 j2@33@01)))))
; Joined path conditions
(assert (or
  (not
    (and
      (Seq_contains (Seq_range 0 (Seq_length S@27@01)) j1@32@01)
      (and
        (Seq_contains (Seq_range 0 (Seq_length S@27@01)) j2@33@01)
        (not (= j1@32@01 j2@33@01)))))
  (and
    (Seq_contains (Seq_range 0 (Seq_length S@27@01)) j1@32@01)
    (and
      (Seq_contains (Seq_range 0 (Seq_length S@27@01)) j2@33@01)
      (not (= j1@32@01 j2@33@01))))))
(pop) ; 2
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall ((j1@32@01 Int) (j2@33@01 Int)) (!
  (and
    (=>
      (Seq_contains (Seq_range 0 (Seq_length S@27@01)) j1@32@01)
      (and
        (Seq_contains (Seq_range 0 (Seq_length S@27@01)) j1@32@01)
        (or
          (Seq_contains (Seq_range 0 (Seq_length S@27@01)) j2@33@01)
          (not (Seq_contains (Seq_range 0 (Seq_length S@27@01)) j2@33@01)))))
    (or
      (Seq_contains (Seq_range 0 (Seq_length S@27@01)) j1@32@01)
      (not (Seq_contains (Seq_range 0 (Seq_length S@27@01)) j1@32@01)))
    (=>
      (and
        (Seq_contains (Seq_range 0 (Seq_length S@27@01)) j1@32@01)
        (and
          (Seq_contains (Seq_range 0 (Seq_length S@27@01)) j2@33@01)
          (not (= j1@32@01 j2@33@01))))
      (and
        (Seq_contains (Seq_range 0 (Seq_length S@27@01)) j1@32@01)
        (Seq_contains (Seq_range 0 (Seq_length S@27@01)) j2@33@01)
        (not (= j1@32@01 j2@33@01))))
    (or
      (not
        (and
          (Seq_contains (Seq_range 0 (Seq_length S@27@01)) j1@32@01)
          (and
            (Seq_contains (Seq_range 0 (Seq_length S@27@01)) j2@33@01)
            (not (= j1@32@01 j2@33@01)))))
      (and
        (Seq_contains (Seq_range 0 (Seq_length S@27@01)) j1@32@01)
        (and
          (Seq_contains (Seq_range 0 (Seq_length S@27@01)) j2@33@01)
          (not (= j1@32@01 j2@33@01))))))
  :pattern ((Seq_contains (Seq_range 0 (Seq_length S@27@01)) j1@32@01) (Seq_contains
    (Seq_range 0 (Seq_length S@27@01))
    j2@33@01))
  :pattern ((Seq_contains_trigger (Seq_range 0 (Seq_length S@27@01)) j1@32@01) (Seq_contains_trigger
    (Seq_range 0 (Seq_length S@27@01))
    j2@33@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/sequences/seqsingleelements.vpr@18@12@18@102-aux|)))
(assert (forall ((j1@32@01 Int) (j2@33@01 Int)) (!
  (and
    (=>
      (Seq_contains (Seq_range 0 (Seq_length S@27@01)) j1@32@01)
      (and
        (Seq_contains (Seq_range 0 (Seq_length S@27@01)) j1@32@01)
        (or
          (Seq_contains (Seq_range 0 (Seq_length S@27@01)) j2@33@01)
          (not (Seq_contains (Seq_range 0 (Seq_length S@27@01)) j2@33@01)))))
    (or
      (Seq_contains (Seq_range 0 (Seq_length S@27@01)) j1@32@01)
      (not (Seq_contains (Seq_range 0 (Seq_length S@27@01)) j1@32@01)))
    (=>
      (and
        (Seq_contains (Seq_range 0 (Seq_length S@27@01)) j1@32@01)
        (and
          (Seq_contains (Seq_range 0 (Seq_length S@27@01)) j2@33@01)
          (not (= j1@32@01 j2@33@01))))
      (and
        (Seq_contains (Seq_range 0 (Seq_length S@27@01)) j1@32@01)
        (Seq_contains (Seq_range 0 (Seq_length S@27@01)) j2@33@01)
        (not (= j1@32@01 j2@33@01))))
    (or
      (not
        (and
          (Seq_contains (Seq_range 0 (Seq_length S@27@01)) j1@32@01)
          (and
            (Seq_contains (Seq_range 0 (Seq_length S@27@01)) j2@33@01)
            (not (= j1@32@01 j2@33@01)))))
      (and
        (Seq_contains (Seq_range 0 (Seq_length S@27@01)) j1@32@01)
        (and
          (Seq_contains (Seq_range 0 (Seq_length S@27@01)) j2@33@01)
          (not (= j1@32@01 j2@33@01))))))
  :pattern ((Seq_contains_trigger (Seq_range 0 (Seq_length S@27@01)) j1@32@01) (Seq_contains_trigger
    (Seq_range 0 (Seq_length S@27@01))
    j2@33@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/sequences/seqsingleelements.vpr@18@12@18@102-aux|)))
(assert (forall ((j1@32@01 Int) (j2@33@01 Int)) (!
  (and
    (=>
      (Seq_contains (Seq_range 0 (Seq_length S@27@01)) j1@32@01)
      (and
        (Seq_contains (Seq_range 0 (Seq_length S@27@01)) j1@32@01)
        (or
          (Seq_contains (Seq_range 0 (Seq_length S@27@01)) j2@33@01)
          (not (Seq_contains (Seq_range 0 (Seq_length S@27@01)) j2@33@01)))))
    (or
      (Seq_contains (Seq_range 0 (Seq_length S@27@01)) j1@32@01)
      (not (Seq_contains (Seq_range 0 (Seq_length S@27@01)) j1@32@01)))
    (=>
      (and
        (Seq_contains (Seq_range 0 (Seq_length S@27@01)) j1@32@01)
        (and
          (Seq_contains (Seq_range 0 (Seq_length S@27@01)) j2@33@01)
          (not (= j1@32@01 j2@33@01))))
      (and
        (Seq_contains (Seq_range 0 (Seq_length S@27@01)) j1@32@01)
        (Seq_contains (Seq_range 0 (Seq_length S@27@01)) j2@33@01)
        (not (= j1@32@01 j2@33@01))))
    (or
      (not
        (and
          (Seq_contains (Seq_range 0 (Seq_length S@27@01)) j1@32@01)
          (and
            (Seq_contains (Seq_range 0 (Seq_length S@27@01)) j2@33@01)
            (not (= j1@32@01 j2@33@01)))))
      (and
        (Seq_contains (Seq_range 0 (Seq_length S@27@01)) j1@32@01)
        (and
          (Seq_contains (Seq_range 0 (Seq_length S@27@01)) j2@33@01)
          (not (= j1@32@01 j2@33@01))))))
  :pattern ((Seq_contains (Seq_range 0 (Seq_length S@27@01)) j1@32@01) (Seq_index
    S@27@01
    j2@33@01))
  :pattern ((Seq_contains_trigger (Seq_range 0 (Seq_length S@27@01)) j1@32@01) (Seq_index
    S@27@01
    j2@33@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/sequences/seqsingleelements.vpr@18@12@18@102-aux|)))
(assert (forall ((j1@32@01 Int) (j2@33@01 Int)) (!
  (and
    (=>
      (Seq_contains (Seq_range 0 (Seq_length S@27@01)) j1@32@01)
      (and
        (Seq_contains (Seq_range 0 (Seq_length S@27@01)) j1@32@01)
        (or
          (Seq_contains (Seq_range 0 (Seq_length S@27@01)) j2@33@01)
          (not (Seq_contains (Seq_range 0 (Seq_length S@27@01)) j2@33@01)))))
    (or
      (Seq_contains (Seq_range 0 (Seq_length S@27@01)) j1@32@01)
      (not (Seq_contains (Seq_range 0 (Seq_length S@27@01)) j1@32@01)))
    (=>
      (and
        (Seq_contains (Seq_range 0 (Seq_length S@27@01)) j1@32@01)
        (and
          (Seq_contains (Seq_range 0 (Seq_length S@27@01)) j2@33@01)
          (not (= j1@32@01 j2@33@01))))
      (and
        (Seq_contains (Seq_range 0 (Seq_length S@27@01)) j1@32@01)
        (Seq_contains (Seq_range 0 (Seq_length S@27@01)) j2@33@01)
        (not (= j1@32@01 j2@33@01))))
    (or
      (not
        (and
          (Seq_contains (Seq_range 0 (Seq_length S@27@01)) j1@32@01)
          (and
            (Seq_contains (Seq_range 0 (Seq_length S@27@01)) j2@33@01)
            (not (= j1@32@01 j2@33@01)))))
      (and
        (Seq_contains (Seq_range 0 (Seq_length S@27@01)) j1@32@01)
        (and
          (Seq_contains (Seq_range 0 (Seq_length S@27@01)) j2@33@01)
          (not (= j1@32@01 j2@33@01))))))
  :pattern ((Seq_contains_trigger (Seq_range 0 (Seq_length S@27@01)) j1@32@01) (Seq_index
    S@27@01
    j2@33@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/sequences/seqsingleelements.vpr@18@12@18@102-aux|)))
(assert (forall ((j1@32@01 Int) (j2@33@01 Int)) (!
  (and
    (=>
      (Seq_contains (Seq_range 0 (Seq_length S@27@01)) j1@32@01)
      (and
        (Seq_contains (Seq_range 0 (Seq_length S@27@01)) j1@32@01)
        (or
          (Seq_contains (Seq_range 0 (Seq_length S@27@01)) j2@33@01)
          (not (Seq_contains (Seq_range 0 (Seq_length S@27@01)) j2@33@01)))))
    (or
      (Seq_contains (Seq_range 0 (Seq_length S@27@01)) j1@32@01)
      (not (Seq_contains (Seq_range 0 (Seq_length S@27@01)) j1@32@01)))
    (=>
      (and
        (Seq_contains (Seq_range 0 (Seq_length S@27@01)) j1@32@01)
        (and
          (Seq_contains (Seq_range 0 (Seq_length S@27@01)) j2@33@01)
          (not (= j1@32@01 j2@33@01))))
      (and
        (Seq_contains (Seq_range 0 (Seq_length S@27@01)) j1@32@01)
        (Seq_contains (Seq_range 0 (Seq_length S@27@01)) j2@33@01)
        (not (= j1@32@01 j2@33@01))))
    (or
      (not
        (and
          (Seq_contains (Seq_range 0 (Seq_length S@27@01)) j1@32@01)
          (and
            (Seq_contains (Seq_range 0 (Seq_length S@27@01)) j2@33@01)
            (not (= j1@32@01 j2@33@01)))))
      (and
        (Seq_contains (Seq_range 0 (Seq_length S@27@01)) j1@32@01)
        (and
          (Seq_contains (Seq_range 0 (Seq_length S@27@01)) j2@33@01)
          (not (= j1@32@01 j2@33@01))))))
  :pattern ((Seq_contains (Seq_range 0 (Seq_length S@27@01)) j2@33@01) (Seq_index
    S@27@01
    j1@32@01))
  :pattern ((Seq_contains_trigger (Seq_range 0 (Seq_length S@27@01)) j2@33@01) (Seq_index
    S@27@01
    j1@32@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/sequences/seqsingleelements.vpr@18@12@18@102-aux|)))
(assert (forall ((j1@32@01 Int) (j2@33@01 Int)) (!
  (and
    (=>
      (Seq_contains (Seq_range 0 (Seq_length S@27@01)) j1@32@01)
      (and
        (Seq_contains (Seq_range 0 (Seq_length S@27@01)) j1@32@01)
        (or
          (Seq_contains (Seq_range 0 (Seq_length S@27@01)) j2@33@01)
          (not (Seq_contains (Seq_range 0 (Seq_length S@27@01)) j2@33@01)))))
    (or
      (Seq_contains (Seq_range 0 (Seq_length S@27@01)) j1@32@01)
      (not (Seq_contains (Seq_range 0 (Seq_length S@27@01)) j1@32@01)))
    (=>
      (and
        (Seq_contains (Seq_range 0 (Seq_length S@27@01)) j1@32@01)
        (and
          (Seq_contains (Seq_range 0 (Seq_length S@27@01)) j2@33@01)
          (not (= j1@32@01 j2@33@01))))
      (and
        (Seq_contains (Seq_range 0 (Seq_length S@27@01)) j1@32@01)
        (Seq_contains (Seq_range 0 (Seq_length S@27@01)) j2@33@01)
        (not (= j1@32@01 j2@33@01))))
    (or
      (not
        (and
          (Seq_contains (Seq_range 0 (Seq_length S@27@01)) j1@32@01)
          (and
            (Seq_contains (Seq_range 0 (Seq_length S@27@01)) j2@33@01)
            (not (= j1@32@01 j2@33@01)))))
      (and
        (Seq_contains (Seq_range 0 (Seq_length S@27@01)) j1@32@01)
        (and
          (Seq_contains (Seq_range 0 (Seq_length S@27@01)) j2@33@01)
          (not (= j1@32@01 j2@33@01))))))
  :pattern ((Seq_contains_trigger (Seq_range 0 (Seq_length S@27@01)) j2@33@01) (Seq_index
    S@27@01
    j1@32@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/sequences/seqsingleelements.vpr@18@12@18@102-aux|)))
(assert (forall ((j1@32@01 Int) (j2@33@01 Int)) (!
  (and
    (=>
      (Seq_contains (Seq_range 0 (Seq_length S@27@01)) j1@32@01)
      (and
        (Seq_contains (Seq_range 0 (Seq_length S@27@01)) j1@32@01)
        (or
          (Seq_contains (Seq_range 0 (Seq_length S@27@01)) j2@33@01)
          (not (Seq_contains (Seq_range 0 (Seq_length S@27@01)) j2@33@01)))))
    (or
      (Seq_contains (Seq_range 0 (Seq_length S@27@01)) j1@32@01)
      (not (Seq_contains (Seq_range 0 (Seq_length S@27@01)) j1@32@01)))
    (=>
      (and
        (Seq_contains (Seq_range 0 (Seq_length S@27@01)) j1@32@01)
        (and
          (Seq_contains (Seq_range 0 (Seq_length S@27@01)) j2@33@01)
          (not (= j1@32@01 j2@33@01))))
      (and
        (Seq_contains (Seq_range 0 (Seq_length S@27@01)) j1@32@01)
        (Seq_contains (Seq_range 0 (Seq_length S@27@01)) j2@33@01)
        (not (= j1@32@01 j2@33@01))))
    (or
      (not
        (and
          (Seq_contains (Seq_range 0 (Seq_length S@27@01)) j1@32@01)
          (and
            (Seq_contains (Seq_range 0 (Seq_length S@27@01)) j2@33@01)
            (not (= j1@32@01 j2@33@01)))))
      (and
        (Seq_contains (Seq_range 0 (Seq_length S@27@01)) j1@32@01)
        (and
          (Seq_contains (Seq_range 0 (Seq_length S@27@01)) j2@33@01)
          (not (= j1@32@01 j2@33@01))))))
  :pattern ((Seq_index S@27@01 j1@32@01) (Seq_index S@27@01 j2@33@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/sequences/seqsingleelements.vpr@18@12@18@102-aux|)))
(assert (forall ((j1@32@01 Int) (j2@33@01 Int)) (!
  (=>
    (and
      (Seq_contains (Seq_range 0 (Seq_length S@27@01)) j1@32@01)
      (and
        (Seq_contains (Seq_range 0 (Seq_length S@27@01)) j2@33@01)
        (not (= j1@32@01 j2@33@01))))
    (not (= (Seq_index S@27@01 j1@32@01) (Seq_index S@27@01 j2@33@01))))
  :pattern ((Seq_contains (Seq_range 0 (Seq_length S@27@01)) j1@32@01) (Seq_contains
    (Seq_range 0 (Seq_length S@27@01))
    j2@33@01))
  :pattern ((Seq_contains_trigger (Seq_range 0 (Seq_length S@27@01)) j1@32@01) (Seq_contains_trigger
    (Seq_range 0 (Seq_length S@27@01))
    j2@33@01))
  :pattern ((Seq_contains (Seq_range 0 (Seq_length S@27@01)) j1@32@01) (Seq_index
    S@27@01
    j2@33@01))
  :pattern ((Seq_contains_trigger (Seq_range 0 (Seq_length S@27@01)) j1@32@01) (Seq_index
    S@27@01
    j2@33@01))
  :pattern ((Seq_contains (Seq_range 0 (Seq_length S@27@01)) j2@33@01) (Seq_index
    S@27@01
    j1@32@01))
  :pattern ((Seq_contains_trigger (Seq_range 0 (Seq_length S@27@01)) j2@33@01) (Seq_index
    S@27@01
    j1@32@01))
  :pattern ((Seq_index S@27@01 j1@32@01) (Seq_index S@27@01 j2@33@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/sequences/seqsingleelements.vpr@18@12@18@102|)))
(declare-const j@34@01 Int)
(push) ; 2
; [eval] (j in [0..|S|))
; [eval] [0..|S|)
; [eval] |S|
(assert (Seq_contains (Seq_range 0 (Seq_length S@27@01)) j@34@01))
; [eval] S[j]
(push) ; 3
(assert (not (>= j@34@01 0)))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(push) ; 3
(assert (not (< j@34@01 (Seq_length S@27@01))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(pop) ; 2
(declare-fun inv@35@01 ($Ref) Int)
(declare-fun img@36@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
; Check receiver injectivity
(push) ; 2
(assert (not (forall ((j1@34@01 Int) (j2@34@01 Int)) (!
  (=>
    (and
      (Seq_contains (Seq_range 0 (Seq_length S@27@01)) j1@34@01)
      (Seq_contains (Seq_range 0 (Seq_length S@27@01)) j2@34@01)
      (= (Seq_index S@27@01 j1@34@01) (Seq_index S@27@01 j2@34@01)))
    (= j1@34@01 j2@34@01))
  
  :qid |value-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 2
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((j@34@01 Int)) (!
  (=>
    (Seq_contains (Seq_range 0 (Seq_length S@27@01)) j@34@01)
    (and
      (= (inv@35@01 (Seq_index S@27@01 j@34@01)) j@34@01)
      (img@36@01 (Seq_index S@27@01 j@34@01))))
  :pattern ((Seq_index S@27@01 j@34@01))
  :qid |quant-u-10945|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@36@01 r)
      (Seq_contains (Seq_range 0 (Seq_length S@27@01)) (inv@35@01 r)))
    (= (Seq_index S@27@01 (inv@35@01 r)) r))
  :pattern ((inv@35@01 r))
  :qid |value-fctOfInv|)))
; Permissions are non-negative
; Field permissions are at most one
; Permission implies non-null receiver
(assert (forall ((j@34@01 Int)) (!
  (=>
    (Seq_contains (Seq_range 0 (Seq_length S@27@01)) j@34@01)
    (not (= (Seq_index S@27@01 j@34@01) $Ref.null)))
  :pattern ((Seq_index S@27@01 j@34@01))
  :qid |value-permImpliesNonNull|)))
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
(set-option :timeout 0)
(push) ; 2
(declare-const $t@37@01 $Snap)
(assert (= $t@37@01 ($Snap.combine ($Snap.first $t@37@01) ($Snap.second $t@37@01))))
(declare-const j@38@01 Int)
(push) ; 3
; [eval] (j in [0..|S|))
; [eval] [0..|S|)
; [eval] |S|
(assert (Seq_contains (Seq_range 0 (Seq_length S@27@01)) j@38@01))
; [eval] S[j]
(push) ; 4
(assert (not (>= j@38@01 0)))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(push) ; 4
(assert (not (< j@38@01 (Seq_length S@27@01))))
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
(assert (not (forall ((j1@38@01 Int) (j2@38@01 Int)) (!
  (=>
    (and
      (Seq_contains (Seq_range 0 (Seq_length S@27@01)) j1@38@01)
      (Seq_contains (Seq_range 0 (Seq_length S@27@01)) j2@38@01)
      (= (Seq_index S@27@01 j1@38@01) (Seq_index S@27@01 j2@38@01)))
    (= j1@38@01 j2@38@01))
  
  :qid |value-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((j@38@01 Int)) (!
  (=>
    (Seq_contains (Seq_range 0 (Seq_length S@27@01)) j@38@01)
    (and
      (= (inv@39@01 (Seq_index S@27@01 j@38@01)) j@38@01)
      (img@40@01 (Seq_index S@27@01 j@38@01))))
  :pattern ((Seq_index S@27@01 j@38@01))
  :qid |quant-u-10947|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@40@01 r)
      (Seq_contains (Seq_range 0 (Seq_length S@27@01)) (inv@39@01 r)))
    (= (Seq_index S@27@01 (inv@39@01 r)) r))
  :pattern ((inv@39@01 r))
  :qid |value-fctOfInv|)))
; Permissions are non-negative
; Field permissions are at most one
; Permission implies non-null receiver
(assert (forall ((j@38@01 Int)) (!
  (=>
    (Seq_contains (Seq_range 0 (Seq_length S@27@01)) j@38@01)
    (not (= (Seq_index S@27@01 j@38@01) $Ref.null)))
  :pattern ((Seq_index S@27@01 j@38@01))
  :qid |value-permImpliesNonNull|)))
(assert (=
  ($Snap.second $t@37@01)
  ($Snap.combine
    ($Snap.first ($Snap.second $t@37@01))
    ($Snap.second ($Snap.second $t@37@01)))))
(assert (= ($Snap.first ($Snap.second $t@37@01)) $Snap.unit))
; [eval] S[a].value == 5
; [eval] S[a]
(push) ; 3
(assert (not (>= a@28@01 0)))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(push) ; 3
(assert (not (< a@28@01 (Seq_length S@27@01))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(push) ; 3
(assert (not (and
  (img@40@01 (Seq_index S@27@01 a@28@01))
  (Seq_contains
    (Seq_range 0 (Seq_length S@27@01))
    (inv@39@01 (Seq_index S@27@01 a@28@01))))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(assert (=
  ($FVF.lookup_value ($SortWrappers.$SnapTo$FVF<value> ($Snap.first $t@37@01)) (Seq_index
    S@27@01
    a@28@01))
  5))
(assert (=
  ($Snap.second ($Snap.second $t@37@01))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second $t@37@01)))
    ($Snap.second ($Snap.second ($Snap.second $t@37@01))))))
(assert (= ($Snap.first ($Snap.second ($Snap.second $t@37@01))) $Snap.unit))
; [eval] S[b].value == 10
; [eval] S[b]
(push) ; 3
(assert (not (>= b@29@01 0)))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(push) ; 3
(assert (not (< b@29@01 (Seq_length S@27@01))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(push) ; 3
(assert (not (and
  (img@40@01 (Seq_index S@27@01 b@29@01))
  (Seq_contains
    (Seq_range 0 (Seq_length S@27@01))
    (inv@39@01 (Seq_index S@27@01 b@29@01))))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(assert (=
  ($FVF.lookup_value ($SortWrappers.$SnapTo$FVF<value> ($Snap.first $t@37@01)) (Seq_index
    S@27@01
    b@29@01))
  10))
(assert (= ($Snap.second ($Snap.second ($Snap.second $t@37@01))) $Snap.unit))
; [eval] S[c].value == 1
; [eval] S[c]
(push) ; 3
(assert (not (>= c@30@01 0)))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(push) ; 3
(assert (not (and
  (img@40@01 (Seq_index S@27@01 c@30@01))
  (Seq_contains
    (Seq_range 0 (Seq_length S@27@01))
    (inv@39@01 (Seq_index S@27@01 c@30@01))))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(assert (=
  ($FVF.lookup_value ($SortWrappers.$SnapTo$FVF<value> ($Snap.first $t@37@01)) (Seq_index
    S@27@01
    c@30@01))
  1))
(pop) ; 2
(push) ; 2
; [exec]
; S[a].value := 5
; [eval] S[a]
(push) ; 3
(assert (not (>= a@28@01 0)))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(push) ; 3
(assert (not (< a@28@01 (Seq_length S@27@01))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Precomputing data for removing quantified permissions
(define-fun pTaken@41@01 ((r $Ref)) $Perm
  (ite
    (= r (Seq_index S@27@01 a@28@01))
    ($Perm.min
      (ite
        (and
          (img@36@01 r)
          (Seq_contains (Seq_range 0 (Seq_length S@27@01)) (inv@35@01 r)))
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
          (img@36@01 r)
          (Seq_contains (Seq_range 0 (Seq_length S@27@01)) (inv@35@01 r)))
        $Perm.Write
        $Perm.No)
      (pTaken@41@01 r))
    $Perm.No)
  
  :qid |quant-u-10949|))))
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
  
  :qid |quant-u-10950|))))
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
    (= r (Seq_index S@27@01 a@28@01))
    (= (- $Perm.Write (pTaken@41@01 r)) $Perm.No))
  
  :qid |quant-u-10951|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Final check if taken enough permissions
; Done removing quantified permissions
(declare-const sm@42@01 $FVF<value>)
; Definitional axioms for singleton-FVF's value
(assert (= ($FVF.lookup_value (as sm@42@01  $FVF<value>) (Seq_index S@27@01 a@28@01)) 5))
; [exec]
; S[b].value := 10
; [eval] S[b]
(set-option :timeout 0)
(push) ; 3
(assert (not (>= b@29@01 0)))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(push) ; 3
(assert (not (< b@29@01 (Seq_length S@27@01))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(push) ; 3
(set-option :timeout 10)
(assert (not (= (Seq_index S@27@01 a@28@01) (Seq_index S@27@01 b@29@01))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Precomputing data for removing quantified permissions
(define-fun pTaken@43@01 ((r $Ref)) $Perm
  (ite
    (= r (Seq_index S@27@01 b@29@01))
    ($Perm.min
      (ite
        (and
          (img@36@01 r)
          (Seq_contains (Seq_range 0 (Seq_length S@27@01)) (inv@35@01 r)))
        (- $Perm.Write (pTaken@41@01 r))
        $Perm.No)
      $Perm.Write)
    $Perm.No))
(define-fun pTaken@44@01 ((r $Ref)) $Perm
  (ite
    (= r (Seq_index S@27@01 b@29@01))
    ($Perm.min
      (ite (= r (Seq_index S@27@01 a@28@01)) $Perm.Write $Perm.No)
      (- $Perm.Write (pTaken@43@01 r)))
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
          (img@36@01 r)
          (Seq_contains (Seq_range 0 (Seq_length S@27@01)) (inv@35@01 r)))
        (- $Perm.Write (pTaken@41@01 r))
        $Perm.No)
      (pTaken@43@01 r))
    $Perm.No)
  
  :qid |quant-u-10953|))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (forall ((r $Ref)) (!
  (= (pTaken@43@01 r) $Perm.No)
  
  :qid |quant-u-10954|))))
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
    (= r (Seq_index S@27@01 b@29@01))
    (= (- $Perm.Write (pTaken@43@01 r)) $Perm.No))
  
  :qid |quant-u-10955|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Final check if taken enough permissions
; Done removing quantified permissions
(declare-const sm@45@01 $FVF<value>)
; Definitional axioms for singleton-FVF's value
(assert (= ($FVF.lookup_value (as sm@45@01  $FVF<value>) (Seq_index S@27@01 b@29@01)) 10))
; [exec]
; S[c].value := 1
; [eval] S[c]
(set-option :timeout 0)
(push) ; 3
(assert (not (>= c@30@01 0)))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(push) ; 3
(set-option :timeout 10)
(assert (not (= (Seq_index S@27@01 b@29@01) (Seq_index S@27@01 c@30@01))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (= (Seq_index S@27@01 a@28@01) (Seq_index S@27@01 c@30@01))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Precomputing data for removing quantified permissions
(define-fun pTaken@46@01 ((r $Ref)) $Perm
  (ite
    (= r (Seq_index S@27@01 c@30@01))
    ($Perm.min
      (ite
        (and
          (img@36@01 r)
          (Seq_contains (Seq_range 0 (Seq_length S@27@01)) (inv@35@01 r)))
        (- (- $Perm.Write (pTaken@41@01 r)) (pTaken@43@01 r))
        $Perm.No)
      $Perm.Write)
    $Perm.No))
(define-fun pTaken@47@01 ((r $Ref)) $Perm
  (ite
    (= r (Seq_index S@27@01 c@30@01))
    ($Perm.min
      (ite (= r (Seq_index S@27@01 b@29@01)) $Perm.Write $Perm.No)
      (- $Perm.Write (pTaken@46@01 r)))
    $Perm.No))
(define-fun pTaken@48@01 ((r $Ref)) $Perm
  (ite
    (= r (Seq_index S@27@01 c@30@01))
    ($Perm.min
      (ite (= r (Seq_index S@27@01 a@28@01)) $Perm.Write $Perm.No)
      (- (- $Perm.Write (pTaken@46@01 r)) (pTaken@47@01 r)))
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
          (img@36@01 r)
          (Seq_contains (Seq_range 0 (Seq_length S@27@01)) (inv@35@01 r)))
        (- (- $Perm.Write (pTaken@41@01 r)) (pTaken@43@01 r))
        $Perm.No)
      (pTaken@46@01 r))
    $Perm.No)
  
  :qid |quant-u-10957|))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (forall ((r $Ref)) (!
  (= (pTaken@46@01 r) $Perm.No)
  
  :qid |quant-u-10958|))))
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
    (= r (Seq_index S@27@01 c@30@01))
    (= (- $Perm.Write (pTaken@46@01 r)) $Perm.No))
  
  :qid |quant-u-10959|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Final check if taken enough permissions
; Done removing quantified permissions
(declare-const sm@49@01 $FVF<value>)
; Definitional axioms for singleton-FVF's value
(assert (= ($FVF.lookup_value (as sm@49@01  $FVF<value>) (Seq_index S@27@01 c@30@01)) 1))
(declare-const j@50@01 Int)
(set-option :timeout 0)
(push) ; 3
; [eval] (j in [0..|S|))
; [eval] [0..|S|)
; [eval] |S|
(assert (Seq_contains (Seq_range 0 (Seq_length S@27@01)) j@50@01))
; [eval] S[j]
(push) ; 4
(assert (not (>= j@50@01 0)))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(push) ; 4
(assert (not (< j@50@01 (Seq_length S@27@01))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(pop) ; 3
(declare-fun inv@51@01 ($Ref) Int)
(declare-fun img@52@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
; Check receiver injectivity
(push) ; 3
(assert (not (forall ((j1@50@01 Int) (j2@50@01 Int)) (!
  (=>
    (and
      (Seq_contains (Seq_range 0 (Seq_length S@27@01)) j1@50@01)
      (Seq_contains (Seq_range 0 (Seq_length S@27@01)) j2@50@01)
      (= (Seq_index S@27@01 j1@50@01) (Seq_index S@27@01 j2@50@01)))
    (= j1@50@01 j2@50@01))
  
  :qid |value-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((j@50@01 Int)) (!
  (=>
    (Seq_contains (Seq_range 0 (Seq_length S@27@01)) j@50@01)
    (and
      (= (inv@51@01 (Seq_index S@27@01 j@50@01)) j@50@01)
      (img@52@01 (Seq_index S@27@01 j@50@01))))
  :pattern ((Seq_index S@27@01 j@50@01))
  :qid |value-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@52@01 r)
      (Seq_contains (Seq_range 0 (Seq_length S@27@01)) (inv@51@01 r)))
    (= (Seq_index S@27@01 (inv@51@01 r)) r))
  :pattern ((inv@51@01 r))
  :qid |value-fctOfInv|)))
; Precomputing data for removing quantified permissions
(define-fun pTaken@53@01 ((r $Ref)) $Perm
  (ite
    (and
      (Seq_contains (Seq_range 0 (Seq_length S@27@01)) (inv@51@01 r))
      (img@52@01 r)
      (= r (Seq_index S@27@01 (inv@51@01 r))))
    ($Perm.min
      (ite
        (and
          (img@36@01 r)
          (Seq_contains (Seq_range 0 (Seq_length S@27@01)) (inv@35@01 r)))
        (-
          (- (- $Perm.Write (pTaken@41@01 r)) (pTaken@43@01 r))
          (pTaken@46@01 r))
        $Perm.No)
      $Perm.Write)
    $Perm.No))
(define-fun pTaken@54@01 ((r $Ref)) $Perm
  (ite
    (and
      (Seq_contains (Seq_range 0 (Seq_length S@27@01)) (inv@51@01 r))
      (img@52@01 r)
      (= r (Seq_index S@27@01 (inv@51@01 r))))
    ($Perm.min
      (ite (= r (Seq_index S@27@01 c@30@01)) $Perm.Write $Perm.No)
      (- $Perm.Write (pTaken@53@01 r)))
    $Perm.No))
(define-fun pTaken@55@01 ((r $Ref)) $Perm
  (ite
    (and
      (Seq_contains (Seq_range 0 (Seq_length S@27@01)) (inv@51@01 r))
      (img@52@01 r)
      (= r (Seq_index S@27@01 (inv@51@01 r))))
    ($Perm.min
      (ite (= r (Seq_index S@27@01 a@28@01)) $Perm.Write $Perm.No)
      (- (- $Perm.Write (pTaken@53@01 r)) (pTaken@54@01 r)))
    $Perm.No))
(define-fun pTaken@56@01 ((r $Ref)) $Perm
  (ite
    (and
      (Seq_contains (Seq_range 0 (Seq_length S@27@01)) (inv@51@01 r))
      (img@52@01 r)
      (= r (Seq_index S@27@01 (inv@51@01 r))))
    ($Perm.min
      (ite (= r (Seq_index S@27@01 b@29@01)) $Perm.Write $Perm.No)
      (- (- (- $Perm.Write (pTaken@53@01 r)) (pTaken@54@01 r)) (pTaken@55@01 r)))
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
          (img@36@01 r)
          (Seq_contains (Seq_range 0 (Seq_length S@27@01)) (inv@35@01 r)))
        (-
          (- (- $Perm.Write (pTaken@41@01 r)) (pTaken@43@01 r))
          (pTaken@46@01 r))
        $Perm.No)
      (pTaken@53@01 r))
    $Perm.No)
  
  :qid |quant-u-10962|))))
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
      (Seq_contains (Seq_range 0 (Seq_length S@27@01)) (inv@51@01 r))
      (img@52@01 r)
      (= r (Seq_index S@27@01 (inv@51@01 r))))
    (= (- $Perm.Write (pTaken@53@01 r)) $Perm.No))
  
  :qid |quant-u-10963|))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Chunk depleted?
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 500)
(assert (not (=
  (-
    (ite
      (= (Seq_index S@27@01 c@30@01) (Seq_index S@27@01 c@30@01))
      $Perm.Write
      $Perm.No)
    (pTaken@54@01 (Seq_index S@27@01 c@30@01)))
  $Perm.No)))
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
      (Seq_contains (Seq_range 0 (Seq_length S@27@01)) (inv@51@01 r))
      (img@52@01 r)
      (= r (Seq_index S@27@01 (inv@51@01 r))))
    (= (- (- $Perm.Write (pTaken@53@01 r)) (pTaken@54@01 r)) $Perm.No))
  
  :qid |quant-u-10965|))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Chunk depleted?
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 500)
(assert (not (=
  (-
    (ite
      (= (Seq_index S@27@01 a@28@01) (Seq_index S@27@01 a@28@01))
      $Perm.Write
      $Perm.No)
    (pTaken@55@01 (Seq_index S@27@01 a@28@01)))
  $Perm.No)))
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
      (Seq_contains (Seq_range 0 (Seq_length S@27@01)) (inv@51@01 r))
      (img@52@01 r)
      (= r (Seq_index S@27@01 (inv@51@01 r))))
    (=
      (- (- (- $Perm.Write (pTaken@53@01 r)) (pTaken@54@01 r)) (pTaken@55@01 r))
      $Perm.No))
  
  :qid |quant-u-10967|))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Chunk depleted?
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 500)
(assert (not (=
  (-
    (ite
      (= (Seq_index S@27@01 b@29@01) (Seq_index S@27@01 b@29@01))
      $Perm.Write
      $Perm.No)
    (pTaken@56@01 (Seq_index S@27@01 b@29@01)))
  $Perm.No)))
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
      (Seq_contains (Seq_range 0 (Seq_length S@27@01)) (inv@51@01 r))
      (img@52@01 r)
      (= r (Seq_index S@27@01 (inv@51@01 r))))
    (=
      (-
        (-
          (- (- $Perm.Write (pTaken@53@01 r)) (pTaken@54@01 r))
          (pTaken@55@01 r))
        (pTaken@56@01 r))
      $Perm.No))
  
  :qid |quant-u-10969|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Final check if taken enough permissions
; Done removing quantified permissions
; [eval] S[a].value == 5
; [eval] S[a]
(set-option :timeout 0)
(push) ; 3
(assert (not (>= a@28@01 0)))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(push) ; 3
(assert (not (< a@28@01 (Seq_length S@27@01))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(declare-const sm@57@01 $FVF<value>)
; Definitional axioms for snapshot map values
(assert (forall ((r $Ref)) (!
  (=>
    (= r (Seq_index S@27@01 c@30@01))
    (=
      ($FVF.lookup_value (as sm@57@01  $FVF<value>) r)
      ($FVF.lookup_value (as sm@49@01  $FVF<value>) r)))
  :pattern (($FVF.lookup_value (as sm@57@01  $FVF<value>) r))
  :pattern (($FVF.lookup_value (as sm@49@01  $FVF<value>) r))
  :qid |qp.fvfValDef3|)))
(assert (forall ((r $Ref)) (!
  (=>
    (= r (Seq_index S@27@01 a@28@01))
    (=
      ($FVF.lookup_value (as sm@57@01  $FVF<value>) r)
      ($FVF.lookup_value (as sm@42@01  $FVF<value>) r)))
  :pattern (($FVF.lookup_value (as sm@57@01  $FVF<value>) r))
  :pattern (($FVF.lookup_value (as sm@42@01  $FVF<value>) r))
  :qid |qp.fvfValDef4|)))
(assert (forall ((r $Ref)) (!
  (=>
    (= r (Seq_index S@27@01 b@29@01))
    (=
      ($FVF.lookup_value (as sm@57@01  $FVF<value>) r)
      ($FVF.lookup_value (as sm@45@01  $FVF<value>) r)))
  :pattern (($FVF.lookup_value (as sm@57@01  $FVF<value>) r))
  :pattern (($FVF.lookup_value (as sm@45@01  $FVF<value>) r))
  :qid |qp.fvfValDef5|)))
(assert (forall ((r $Ref)) (!
  (=>
    (ite
      (and
        (img@36@01 r)
        (Seq_contains (Seq_range 0 (Seq_length S@27@01)) (inv@35@01 r)))
      (<
        $Perm.No
        (-
          (- (- $Perm.Write (pTaken@41@01 r)) (pTaken@43@01 r))
          (pTaken@46@01 r)))
      false)
    (=
      ($FVF.lookup_value (as sm@57@01  $FVF<value>) r)
      ($FVF.lookup_value ($SortWrappers.$SnapTo$FVF<value> ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@31@01)))))) r)))
  :pattern (($FVF.lookup_value (as sm@57@01  $FVF<value>) r))
  :pattern (($FVF.lookup_value ($SortWrappers.$SnapTo$FVF<value> ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@31@01)))))) r))
  :qid |qp.fvfValDef6|)))
(declare-const pm@58@01 $FPM)
(assert (forall ((r $Ref)) (!
  (=
    ($FVF.perm_value (as pm@58@01  $FPM) r)
    (+
      (+
        (+
          (ite (= r (Seq_index S@27@01 c@30@01)) $Perm.Write $Perm.No)
          (ite (= r (Seq_index S@27@01 a@28@01)) $Perm.Write $Perm.No))
        (ite (= r (Seq_index S@27@01 b@29@01)) $Perm.Write $Perm.No))
      (ite
        (and
          (img@36@01 r)
          (Seq_contains (Seq_range 0 (Seq_length S@27@01)) (inv@35@01 r)))
        (-
          (- (- $Perm.Write (pTaken@41@01 r)) (pTaken@43@01 r))
          (pTaken@46@01 r))
        $Perm.No)))
  :pattern (($FVF.perm_value (as pm@58@01  $FPM) r))
  :qid |qp.resPrmSumDef7|)))
(push) ; 3
(assert (not (< $Perm.No ($FVF.perm_value (as pm@58@01  $FPM) (Seq_index S@27@01 a@28@01)))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(push) ; 3
(assert (not (= ($FVF.lookup_value (as sm@57@01  $FVF<value>) (Seq_index S@27@01 a@28@01)) 5)))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(assert (= ($FVF.lookup_value (as sm@57@01  $FVF<value>) (Seq_index S@27@01 a@28@01)) 5))
; [eval] S[b].value == 10
; [eval] S[b]
(push) ; 3
(assert (not (>= b@29@01 0)))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(push) ; 3
(assert (not (< b@29@01 (Seq_length S@27@01))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(assert (and
  (forall ((r $Ref)) (!
    (=>
      (= r (Seq_index S@27@01 c@30@01))
      (=
        ($FVF.lookup_value (as sm@57@01  $FVF<value>) r)
        ($FVF.lookup_value (as sm@49@01  $FVF<value>) r)))
    :pattern (($FVF.lookup_value (as sm@57@01  $FVF<value>) r))
    :pattern (($FVF.lookup_value (as sm@49@01  $FVF<value>) r))
    :qid |qp.fvfValDef3|))
  (forall ((r $Ref)) (!
    (=>
      (= r (Seq_index S@27@01 a@28@01))
      (=
        ($FVF.lookup_value (as sm@57@01  $FVF<value>) r)
        ($FVF.lookup_value (as sm@42@01  $FVF<value>) r)))
    :pattern (($FVF.lookup_value (as sm@57@01  $FVF<value>) r))
    :pattern (($FVF.lookup_value (as sm@42@01  $FVF<value>) r))
    :qid |qp.fvfValDef4|))
  (forall ((r $Ref)) (!
    (=>
      (= r (Seq_index S@27@01 b@29@01))
      (=
        ($FVF.lookup_value (as sm@57@01  $FVF<value>) r)
        ($FVF.lookup_value (as sm@45@01  $FVF<value>) r)))
    :pattern (($FVF.lookup_value (as sm@57@01  $FVF<value>) r))
    :pattern (($FVF.lookup_value (as sm@45@01  $FVF<value>) r))
    :qid |qp.fvfValDef5|))
  (forall ((r $Ref)) (!
    (=>
      (ite
        (and
          (img@36@01 r)
          (Seq_contains (Seq_range 0 (Seq_length S@27@01)) (inv@35@01 r)))
        (<
          $Perm.No
          (-
            (- (- $Perm.Write (pTaken@41@01 r)) (pTaken@43@01 r))
            (pTaken@46@01 r)))
        false)
      (=
        ($FVF.lookup_value (as sm@57@01  $FVF<value>) r)
        ($FVF.lookup_value ($SortWrappers.$SnapTo$FVF<value> ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@31@01)))))) r)))
    :pattern (($FVF.lookup_value (as sm@57@01  $FVF<value>) r))
    :pattern (($FVF.lookup_value ($SortWrappers.$SnapTo$FVF<value> ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@31@01)))))) r))
    :qid |qp.fvfValDef6|))))
(push) ; 3
(assert (not (<
  $Perm.No
  (+
    (+
      (+
        (ite
          (= (Seq_index S@27@01 b@29@01) (Seq_index S@27@01 c@30@01))
          $Perm.Write
          $Perm.No)
        (ite
          (= (Seq_index S@27@01 b@29@01) (Seq_index S@27@01 a@28@01))
          $Perm.Write
          $Perm.No))
      (ite
        (= (Seq_index S@27@01 b@29@01) (Seq_index S@27@01 b@29@01))
        $Perm.Write
        $Perm.No))
    (ite
      (and
        (img@36@01 (Seq_index S@27@01 b@29@01))
        (Seq_contains
          (Seq_range 0 (Seq_length S@27@01))
          (inv@35@01 (Seq_index S@27@01 b@29@01))))
      (-
        (-
          (- $Perm.Write (pTaken@41@01 (Seq_index S@27@01 b@29@01)))
          (pTaken@43@01 (Seq_index S@27@01 b@29@01)))
        (pTaken@46@01 (Seq_index S@27@01 b@29@01)))
      $Perm.No)))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(push) ; 3
(assert (not (= ($FVF.lookup_value (as sm@57@01  $FVF<value>) (Seq_index S@27@01 b@29@01)) 10)))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(assert (= ($FVF.lookup_value (as sm@57@01  $FVF<value>) (Seq_index S@27@01 b@29@01)) 10))
; [eval] S[c].value == 1
; [eval] S[c]
(push) ; 3
(assert (not (>= c@30@01 0)))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(assert (and
  (forall ((r $Ref)) (!
    (=>
      (= r (Seq_index S@27@01 c@30@01))
      (=
        ($FVF.lookup_value (as sm@57@01  $FVF<value>) r)
        ($FVF.lookup_value (as sm@49@01  $FVF<value>) r)))
    :pattern (($FVF.lookup_value (as sm@57@01  $FVF<value>) r))
    :pattern (($FVF.lookup_value (as sm@49@01  $FVF<value>) r))
    :qid |qp.fvfValDef3|))
  (forall ((r $Ref)) (!
    (=>
      (= r (Seq_index S@27@01 a@28@01))
      (=
        ($FVF.lookup_value (as sm@57@01  $FVF<value>) r)
        ($FVF.lookup_value (as sm@42@01  $FVF<value>) r)))
    :pattern (($FVF.lookup_value (as sm@57@01  $FVF<value>) r))
    :pattern (($FVF.lookup_value (as sm@42@01  $FVF<value>) r))
    :qid |qp.fvfValDef4|))
  (forall ((r $Ref)) (!
    (=>
      (= r (Seq_index S@27@01 b@29@01))
      (=
        ($FVF.lookup_value (as sm@57@01  $FVF<value>) r)
        ($FVF.lookup_value (as sm@45@01  $FVF<value>) r)))
    :pattern (($FVF.lookup_value (as sm@57@01  $FVF<value>) r))
    :pattern (($FVF.lookup_value (as sm@45@01  $FVF<value>) r))
    :qid |qp.fvfValDef5|))
  (forall ((r $Ref)) (!
    (=>
      (ite
        (and
          (img@36@01 r)
          (Seq_contains (Seq_range 0 (Seq_length S@27@01)) (inv@35@01 r)))
        (<
          $Perm.No
          (-
            (- (- $Perm.Write (pTaken@41@01 r)) (pTaken@43@01 r))
            (pTaken@46@01 r)))
        false)
      (=
        ($FVF.lookup_value (as sm@57@01  $FVF<value>) r)
        ($FVF.lookup_value ($SortWrappers.$SnapTo$FVF<value> ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@31@01)))))) r)))
    :pattern (($FVF.lookup_value (as sm@57@01  $FVF<value>) r))
    :pattern (($FVF.lookup_value ($SortWrappers.$SnapTo$FVF<value> ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@31@01)))))) r))
    :qid |qp.fvfValDef6|))))
(push) ; 3
(assert (not (<
  $Perm.No
  (+
    (+
      (+
        (ite
          (= (Seq_index S@27@01 c@30@01) (Seq_index S@27@01 c@30@01))
          $Perm.Write
          $Perm.No)
        (ite
          (= (Seq_index S@27@01 c@30@01) (Seq_index S@27@01 a@28@01))
          $Perm.Write
          $Perm.No))
      (ite
        (= (Seq_index S@27@01 c@30@01) (Seq_index S@27@01 b@29@01))
        $Perm.Write
        $Perm.No))
    (ite
      (and
        (img@36@01 (Seq_index S@27@01 c@30@01))
        (Seq_contains
          (Seq_range 0 (Seq_length S@27@01))
          (inv@35@01 (Seq_index S@27@01 c@30@01))))
      (-
        (-
          (- $Perm.Write (pTaken@41@01 (Seq_index S@27@01 c@30@01)))
          (pTaken@43@01 (Seq_index S@27@01 c@30@01)))
        (pTaken@46@01 (Seq_index S@27@01 c@30@01)))
      $Perm.No)))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(push) ; 3
(assert (not (= ($FVF.lookup_value (as sm@57@01  $FVF<value>) (Seq_index S@27@01 c@30@01)) 1)))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(assert (= ($FVF.lookup_value (as sm@57@01  $FVF<value>) (Seq_index S@27@01 c@30@01)) 1))
(pop) ; 2
(pop) ; 1
; ---------- test03 ----------
(declare-const S@59@01 Seq<$Ref>)
(declare-const k@60@01 Int)
(declare-const a@61@01 Int)
(declare-const b@62@01 Int)
(declare-const S@63@01 Seq<$Ref>)
(declare-const k@64@01 Int)
(declare-const a@65@01 Int)
(declare-const b@66@01 Int)
(push) ; 1
(declare-const $t@67@01 $Snap)
(assert (= $t@67@01 ($Snap.combine ($Snap.first $t@67@01) ($Snap.second $t@67@01))))
(assert (= ($Snap.first $t@67@01) $Snap.unit))
; [eval] 0 <= k
(assert (<= 0 k@64@01))
(assert (=
  ($Snap.second $t@67@01)
  ($Snap.combine
    ($Snap.first ($Snap.second $t@67@01))
    ($Snap.second ($Snap.second $t@67@01)))))
(assert (= ($Snap.first ($Snap.second $t@67@01)) $Snap.unit))
; [eval] k < |S|
; [eval] |S|
(assert (< k@64@01 (Seq_length S@63@01)))
(assert (=
  ($Snap.second ($Snap.second $t@67@01))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second $t@67@01)))
    ($Snap.second ($Snap.second ($Snap.second $t@67@01))))))
(assert (= ($Snap.first ($Snap.second ($Snap.second $t@67@01))) $Snap.unit))
; [eval] 0 <= a
(assert (<= 0 a@65@01))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second $t@67@01)))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@67@01))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@67@01)))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@67@01))))
  $Snap.unit))
; [eval] a < b
(assert (< a@65@01 b@66@01))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@67@01))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@67@01)))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@67@01))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@67@01)))))
  $Snap.unit))
; [eval] b < |S|
; [eval] |S|
(assert (< b@66@01 (Seq_length S@63@01)))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@67@01)))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@67@01))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@67@01)))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@67@01))))))
  $Snap.unit))
; [eval] (forall j1: Int, j2: Int :: { (j1 in [0..|S|)), (j2 in [0..|S|)) } { (j1 in [0..|S|)), S[j2] } { (j2 in [0..|S|)), S[j1] } { S[j1], S[j2] } (j1 in [0..|S|)) && ((j2 in [0..|S|)) && j1 != j2) ==> S[j1] != S[j2])
(declare-const j1@68@01 Int)
(declare-const j2@69@01 Int)
(push) ; 2
; [eval] (j1 in [0..|S|)) && ((j2 in [0..|S|)) && j1 != j2) ==> S[j1] != S[j2]
; [eval] (j1 in [0..|S|)) && ((j2 in [0..|S|)) && j1 != j2)
; [eval] (j1 in [0..|S|))
; [eval] [0..|S|)
; [eval] |S|
(push) ; 3
; [then-branch: 6 | !(j1@68@01 in [0..|S@63@01|]) | live]
; [else-branch: 6 | j1@68@01 in [0..|S@63@01|] | live]
(push) ; 4
; [then-branch: 6 | !(j1@68@01 in [0..|S@63@01|])]
(assert (not (Seq_contains (Seq_range 0 (Seq_length S@63@01)) j1@68@01)))
(pop) ; 4
(push) ; 4
; [else-branch: 6 | j1@68@01 in [0..|S@63@01|]]
(assert (Seq_contains (Seq_range 0 (Seq_length S@63@01)) j1@68@01))
; [eval] (j2 in [0..|S|))
; [eval] [0..|S|)
; [eval] |S|
(push) ; 5
; [then-branch: 7 | !(j2@69@01 in [0..|S@63@01|]) | live]
; [else-branch: 7 | j2@69@01 in [0..|S@63@01|] | live]
(push) ; 6
; [then-branch: 7 | !(j2@69@01 in [0..|S@63@01|])]
(assert (not (Seq_contains (Seq_range 0 (Seq_length S@63@01)) j2@69@01)))
(pop) ; 6
(push) ; 6
; [else-branch: 7 | j2@69@01 in [0..|S@63@01|]]
(assert (Seq_contains (Seq_range 0 (Seq_length S@63@01)) j2@69@01))
; [eval] j1 != j2
(pop) ; 6
(pop) ; 5
; Joined path conditions
; Joined path conditions
(assert (or
  (Seq_contains (Seq_range 0 (Seq_length S@63@01)) j2@69@01)
  (not (Seq_contains (Seq_range 0 (Seq_length S@63@01)) j2@69@01))))
(pop) ; 4
(pop) ; 3
; Joined path conditions
; Joined path conditions
(assert (=>
  (Seq_contains (Seq_range 0 (Seq_length S@63@01)) j1@68@01)
  (and
    (Seq_contains (Seq_range 0 (Seq_length S@63@01)) j1@68@01)
    (or
      (Seq_contains (Seq_range 0 (Seq_length S@63@01)) j2@69@01)
      (not (Seq_contains (Seq_range 0 (Seq_length S@63@01)) j2@69@01))))))
(assert (or
  (Seq_contains (Seq_range 0 (Seq_length S@63@01)) j1@68@01)
  (not (Seq_contains (Seq_range 0 (Seq_length S@63@01)) j1@68@01))))
(push) ; 3
; [then-branch: 8 | j1@68@01 in [0..|S@63@01|] && j2@69@01 in [0..|S@63@01|] && j1@68@01 != j2@69@01 | live]
; [else-branch: 8 | !(j1@68@01 in [0..|S@63@01|] && j2@69@01 in [0..|S@63@01|] && j1@68@01 != j2@69@01) | live]
(push) ; 4
; [then-branch: 8 | j1@68@01 in [0..|S@63@01|] && j2@69@01 in [0..|S@63@01|] && j1@68@01 != j2@69@01]
(assert (and
  (Seq_contains (Seq_range 0 (Seq_length S@63@01)) j1@68@01)
  (and
    (Seq_contains (Seq_range 0 (Seq_length S@63@01)) j2@69@01)
    (not (= j1@68@01 j2@69@01)))))
; [eval] S[j1] != S[j2]
; [eval] S[j1]
(push) ; 5
(assert (not (>= j1@68@01 0)))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(push) ; 5
(assert (not (< j1@68@01 (Seq_length S@63@01))))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
; [eval] S[j2]
(push) ; 5
(assert (not (>= j2@69@01 0)))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(push) ; 5
(assert (not (< j2@69@01 (Seq_length S@63@01))))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(pop) ; 4
(push) ; 4
; [else-branch: 8 | !(j1@68@01 in [0..|S@63@01|] && j2@69@01 in [0..|S@63@01|] && j1@68@01 != j2@69@01)]
(assert (not
  (and
    (Seq_contains (Seq_range 0 (Seq_length S@63@01)) j1@68@01)
    (and
      (Seq_contains (Seq_range 0 (Seq_length S@63@01)) j2@69@01)
      (not (= j1@68@01 j2@69@01))))))
(pop) ; 4
(pop) ; 3
; Joined path conditions
(assert (=>
  (and
    (Seq_contains (Seq_range 0 (Seq_length S@63@01)) j1@68@01)
    (and
      (Seq_contains (Seq_range 0 (Seq_length S@63@01)) j2@69@01)
      (not (= j1@68@01 j2@69@01))))
  (and
    (Seq_contains (Seq_range 0 (Seq_length S@63@01)) j1@68@01)
    (Seq_contains (Seq_range 0 (Seq_length S@63@01)) j2@69@01)
    (not (= j1@68@01 j2@69@01)))))
; Joined path conditions
(assert (or
  (not
    (and
      (Seq_contains (Seq_range 0 (Seq_length S@63@01)) j1@68@01)
      (and
        (Seq_contains (Seq_range 0 (Seq_length S@63@01)) j2@69@01)
        (not (= j1@68@01 j2@69@01)))))
  (and
    (Seq_contains (Seq_range 0 (Seq_length S@63@01)) j1@68@01)
    (and
      (Seq_contains (Seq_range 0 (Seq_length S@63@01)) j2@69@01)
      (not (= j1@68@01 j2@69@01))))))
(pop) ; 2
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall ((j1@68@01 Int) (j2@69@01 Int)) (!
  (and
    (=>
      (Seq_contains (Seq_range 0 (Seq_length S@63@01)) j1@68@01)
      (and
        (Seq_contains (Seq_range 0 (Seq_length S@63@01)) j1@68@01)
        (or
          (Seq_contains (Seq_range 0 (Seq_length S@63@01)) j2@69@01)
          (not (Seq_contains (Seq_range 0 (Seq_length S@63@01)) j2@69@01)))))
    (or
      (Seq_contains (Seq_range 0 (Seq_length S@63@01)) j1@68@01)
      (not (Seq_contains (Seq_range 0 (Seq_length S@63@01)) j1@68@01)))
    (=>
      (and
        (Seq_contains (Seq_range 0 (Seq_length S@63@01)) j1@68@01)
        (and
          (Seq_contains (Seq_range 0 (Seq_length S@63@01)) j2@69@01)
          (not (= j1@68@01 j2@69@01))))
      (and
        (Seq_contains (Seq_range 0 (Seq_length S@63@01)) j1@68@01)
        (Seq_contains (Seq_range 0 (Seq_length S@63@01)) j2@69@01)
        (not (= j1@68@01 j2@69@01))))
    (or
      (not
        (and
          (Seq_contains (Seq_range 0 (Seq_length S@63@01)) j1@68@01)
          (and
            (Seq_contains (Seq_range 0 (Seq_length S@63@01)) j2@69@01)
            (not (= j1@68@01 j2@69@01)))))
      (and
        (Seq_contains (Seq_range 0 (Seq_length S@63@01)) j1@68@01)
        (and
          (Seq_contains (Seq_range 0 (Seq_length S@63@01)) j2@69@01)
          (not (= j1@68@01 j2@69@01))))))
  :pattern ((Seq_contains (Seq_range 0 (Seq_length S@63@01)) j1@68@01) (Seq_contains
    (Seq_range 0 (Seq_length S@63@01))
    j2@69@01))
  :pattern ((Seq_contains_trigger (Seq_range 0 (Seq_length S@63@01)) j1@68@01) (Seq_contains_trigger
    (Seq_range 0 (Seq_length S@63@01))
    j2@69@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/sequences/seqsingleelements.vpr@32@12@32@102-aux|)))
(assert (forall ((j1@68@01 Int) (j2@69@01 Int)) (!
  (and
    (=>
      (Seq_contains (Seq_range 0 (Seq_length S@63@01)) j1@68@01)
      (and
        (Seq_contains (Seq_range 0 (Seq_length S@63@01)) j1@68@01)
        (or
          (Seq_contains (Seq_range 0 (Seq_length S@63@01)) j2@69@01)
          (not (Seq_contains (Seq_range 0 (Seq_length S@63@01)) j2@69@01)))))
    (or
      (Seq_contains (Seq_range 0 (Seq_length S@63@01)) j1@68@01)
      (not (Seq_contains (Seq_range 0 (Seq_length S@63@01)) j1@68@01)))
    (=>
      (and
        (Seq_contains (Seq_range 0 (Seq_length S@63@01)) j1@68@01)
        (and
          (Seq_contains (Seq_range 0 (Seq_length S@63@01)) j2@69@01)
          (not (= j1@68@01 j2@69@01))))
      (and
        (Seq_contains (Seq_range 0 (Seq_length S@63@01)) j1@68@01)
        (Seq_contains (Seq_range 0 (Seq_length S@63@01)) j2@69@01)
        (not (= j1@68@01 j2@69@01))))
    (or
      (not
        (and
          (Seq_contains (Seq_range 0 (Seq_length S@63@01)) j1@68@01)
          (and
            (Seq_contains (Seq_range 0 (Seq_length S@63@01)) j2@69@01)
            (not (= j1@68@01 j2@69@01)))))
      (and
        (Seq_contains (Seq_range 0 (Seq_length S@63@01)) j1@68@01)
        (and
          (Seq_contains (Seq_range 0 (Seq_length S@63@01)) j2@69@01)
          (not (= j1@68@01 j2@69@01))))))
  :pattern ((Seq_contains_trigger (Seq_range 0 (Seq_length S@63@01)) j1@68@01) (Seq_contains_trigger
    (Seq_range 0 (Seq_length S@63@01))
    j2@69@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/sequences/seqsingleelements.vpr@32@12@32@102-aux|)))
(assert (forall ((j1@68@01 Int) (j2@69@01 Int)) (!
  (and
    (=>
      (Seq_contains (Seq_range 0 (Seq_length S@63@01)) j1@68@01)
      (and
        (Seq_contains (Seq_range 0 (Seq_length S@63@01)) j1@68@01)
        (or
          (Seq_contains (Seq_range 0 (Seq_length S@63@01)) j2@69@01)
          (not (Seq_contains (Seq_range 0 (Seq_length S@63@01)) j2@69@01)))))
    (or
      (Seq_contains (Seq_range 0 (Seq_length S@63@01)) j1@68@01)
      (not (Seq_contains (Seq_range 0 (Seq_length S@63@01)) j1@68@01)))
    (=>
      (and
        (Seq_contains (Seq_range 0 (Seq_length S@63@01)) j1@68@01)
        (and
          (Seq_contains (Seq_range 0 (Seq_length S@63@01)) j2@69@01)
          (not (= j1@68@01 j2@69@01))))
      (and
        (Seq_contains (Seq_range 0 (Seq_length S@63@01)) j1@68@01)
        (Seq_contains (Seq_range 0 (Seq_length S@63@01)) j2@69@01)
        (not (= j1@68@01 j2@69@01))))
    (or
      (not
        (and
          (Seq_contains (Seq_range 0 (Seq_length S@63@01)) j1@68@01)
          (and
            (Seq_contains (Seq_range 0 (Seq_length S@63@01)) j2@69@01)
            (not (= j1@68@01 j2@69@01)))))
      (and
        (Seq_contains (Seq_range 0 (Seq_length S@63@01)) j1@68@01)
        (and
          (Seq_contains (Seq_range 0 (Seq_length S@63@01)) j2@69@01)
          (not (= j1@68@01 j2@69@01))))))
  :pattern ((Seq_contains (Seq_range 0 (Seq_length S@63@01)) j1@68@01) (Seq_index
    S@63@01
    j2@69@01))
  :pattern ((Seq_contains_trigger (Seq_range 0 (Seq_length S@63@01)) j1@68@01) (Seq_index
    S@63@01
    j2@69@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/sequences/seqsingleelements.vpr@32@12@32@102-aux|)))
(assert (forall ((j1@68@01 Int) (j2@69@01 Int)) (!
  (and
    (=>
      (Seq_contains (Seq_range 0 (Seq_length S@63@01)) j1@68@01)
      (and
        (Seq_contains (Seq_range 0 (Seq_length S@63@01)) j1@68@01)
        (or
          (Seq_contains (Seq_range 0 (Seq_length S@63@01)) j2@69@01)
          (not (Seq_contains (Seq_range 0 (Seq_length S@63@01)) j2@69@01)))))
    (or
      (Seq_contains (Seq_range 0 (Seq_length S@63@01)) j1@68@01)
      (not (Seq_contains (Seq_range 0 (Seq_length S@63@01)) j1@68@01)))
    (=>
      (and
        (Seq_contains (Seq_range 0 (Seq_length S@63@01)) j1@68@01)
        (and
          (Seq_contains (Seq_range 0 (Seq_length S@63@01)) j2@69@01)
          (not (= j1@68@01 j2@69@01))))
      (and
        (Seq_contains (Seq_range 0 (Seq_length S@63@01)) j1@68@01)
        (Seq_contains (Seq_range 0 (Seq_length S@63@01)) j2@69@01)
        (not (= j1@68@01 j2@69@01))))
    (or
      (not
        (and
          (Seq_contains (Seq_range 0 (Seq_length S@63@01)) j1@68@01)
          (and
            (Seq_contains (Seq_range 0 (Seq_length S@63@01)) j2@69@01)
            (not (= j1@68@01 j2@69@01)))))
      (and
        (Seq_contains (Seq_range 0 (Seq_length S@63@01)) j1@68@01)
        (and
          (Seq_contains (Seq_range 0 (Seq_length S@63@01)) j2@69@01)
          (not (= j1@68@01 j2@69@01))))))
  :pattern ((Seq_contains_trigger (Seq_range 0 (Seq_length S@63@01)) j1@68@01) (Seq_index
    S@63@01
    j2@69@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/sequences/seqsingleelements.vpr@32@12@32@102-aux|)))
(assert (forall ((j1@68@01 Int) (j2@69@01 Int)) (!
  (and
    (=>
      (Seq_contains (Seq_range 0 (Seq_length S@63@01)) j1@68@01)
      (and
        (Seq_contains (Seq_range 0 (Seq_length S@63@01)) j1@68@01)
        (or
          (Seq_contains (Seq_range 0 (Seq_length S@63@01)) j2@69@01)
          (not (Seq_contains (Seq_range 0 (Seq_length S@63@01)) j2@69@01)))))
    (or
      (Seq_contains (Seq_range 0 (Seq_length S@63@01)) j1@68@01)
      (not (Seq_contains (Seq_range 0 (Seq_length S@63@01)) j1@68@01)))
    (=>
      (and
        (Seq_contains (Seq_range 0 (Seq_length S@63@01)) j1@68@01)
        (and
          (Seq_contains (Seq_range 0 (Seq_length S@63@01)) j2@69@01)
          (not (= j1@68@01 j2@69@01))))
      (and
        (Seq_contains (Seq_range 0 (Seq_length S@63@01)) j1@68@01)
        (Seq_contains (Seq_range 0 (Seq_length S@63@01)) j2@69@01)
        (not (= j1@68@01 j2@69@01))))
    (or
      (not
        (and
          (Seq_contains (Seq_range 0 (Seq_length S@63@01)) j1@68@01)
          (and
            (Seq_contains (Seq_range 0 (Seq_length S@63@01)) j2@69@01)
            (not (= j1@68@01 j2@69@01)))))
      (and
        (Seq_contains (Seq_range 0 (Seq_length S@63@01)) j1@68@01)
        (and
          (Seq_contains (Seq_range 0 (Seq_length S@63@01)) j2@69@01)
          (not (= j1@68@01 j2@69@01))))))
  :pattern ((Seq_contains (Seq_range 0 (Seq_length S@63@01)) j2@69@01) (Seq_index
    S@63@01
    j1@68@01))
  :pattern ((Seq_contains_trigger (Seq_range 0 (Seq_length S@63@01)) j2@69@01) (Seq_index
    S@63@01
    j1@68@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/sequences/seqsingleelements.vpr@32@12@32@102-aux|)))
(assert (forall ((j1@68@01 Int) (j2@69@01 Int)) (!
  (and
    (=>
      (Seq_contains (Seq_range 0 (Seq_length S@63@01)) j1@68@01)
      (and
        (Seq_contains (Seq_range 0 (Seq_length S@63@01)) j1@68@01)
        (or
          (Seq_contains (Seq_range 0 (Seq_length S@63@01)) j2@69@01)
          (not (Seq_contains (Seq_range 0 (Seq_length S@63@01)) j2@69@01)))))
    (or
      (Seq_contains (Seq_range 0 (Seq_length S@63@01)) j1@68@01)
      (not (Seq_contains (Seq_range 0 (Seq_length S@63@01)) j1@68@01)))
    (=>
      (and
        (Seq_contains (Seq_range 0 (Seq_length S@63@01)) j1@68@01)
        (and
          (Seq_contains (Seq_range 0 (Seq_length S@63@01)) j2@69@01)
          (not (= j1@68@01 j2@69@01))))
      (and
        (Seq_contains (Seq_range 0 (Seq_length S@63@01)) j1@68@01)
        (Seq_contains (Seq_range 0 (Seq_length S@63@01)) j2@69@01)
        (not (= j1@68@01 j2@69@01))))
    (or
      (not
        (and
          (Seq_contains (Seq_range 0 (Seq_length S@63@01)) j1@68@01)
          (and
            (Seq_contains (Seq_range 0 (Seq_length S@63@01)) j2@69@01)
            (not (= j1@68@01 j2@69@01)))))
      (and
        (Seq_contains (Seq_range 0 (Seq_length S@63@01)) j1@68@01)
        (and
          (Seq_contains (Seq_range 0 (Seq_length S@63@01)) j2@69@01)
          (not (= j1@68@01 j2@69@01))))))
  :pattern ((Seq_contains_trigger (Seq_range 0 (Seq_length S@63@01)) j2@69@01) (Seq_index
    S@63@01
    j1@68@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/sequences/seqsingleelements.vpr@32@12@32@102-aux|)))
(assert (forall ((j1@68@01 Int) (j2@69@01 Int)) (!
  (and
    (=>
      (Seq_contains (Seq_range 0 (Seq_length S@63@01)) j1@68@01)
      (and
        (Seq_contains (Seq_range 0 (Seq_length S@63@01)) j1@68@01)
        (or
          (Seq_contains (Seq_range 0 (Seq_length S@63@01)) j2@69@01)
          (not (Seq_contains (Seq_range 0 (Seq_length S@63@01)) j2@69@01)))))
    (or
      (Seq_contains (Seq_range 0 (Seq_length S@63@01)) j1@68@01)
      (not (Seq_contains (Seq_range 0 (Seq_length S@63@01)) j1@68@01)))
    (=>
      (and
        (Seq_contains (Seq_range 0 (Seq_length S@63@01)) j1@68@01)
        (and
          (Seq_contains (Seq_range 0 (Seq_length S@63@01)) j2@69@01)
          (not (= j1@68@01 j2@69@01))))
      (and
        (Seq_contains (Seq_range 0 (Seq_length S@63@01)) j1@68@01)
        (Seq_contains (Seq_range 0 (Seq_length S@63@01)) j2@69@01)
        (not (= j1@68@01 j2@69@01))))
    (or
      (not
        (and
          (Seq_contains (Seq_range 0 (Seq_length S@63@01)) j1@68@01)
          (and
            (Seq_contains (Seq_range 0 (Seq_length S@63@01)) j2@69@01)
            (not (= j1@68@01 j2@69@01)))))
      (and
        (Seq_contains (Seq_range 0 (Seq_length S@63@01)) j1@68@01)
        (and
          (Seq_contains (Seq_range 0 (Seq_length S@63@01)) j2@69@01)
          (not (= j1@68@01 j2@69@01))))))
  :pattern ((Seq_index S@63@01 j1@68@01) (Seq_index S@63@01 j2@69@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/sequences/seqsingleelements.vpr@32@12@32@102-aux|)))
(assert (forall ((j1@68@01 Int) (j2@69@01 Int)) (!
  (=>
    (and
      (Seq_contains (Seq_range 0 (Seq_length S@63@01)) j1@68@01)
      (and
        (Seq_contains (Seq_range 0 (Seq_length S@63@01)) j2@69@01)
        (not (= j1@68@01 j2@69@01))))
    (not (= (Seq_index S@63@01 j1@68@01) (Seq_index S@63@01 j2@69@01))))
  :pattern ((Seq_contains (Seq_range 0 (Seq_length S@63@01)) j1@68@01) (Seq_contains
    (Seq_range 0 (Seq_length S@63@01))
    j2@69@01))
  :pattern ((Seq_contains_trigger (Seq_range 0 (Seq_length S@63@01)) j1@68@01) (Seq_contains_trigger
    (Seq_range 0 (Seq_length S@63@01))
    j2@69@01))
  :pattern ((Seq_contains (Seq_range 0 (Seq_length S@63@01)) j1@68@01) (Seq_index
    S@63@01
    j2@69@01))
  :pattern ((Seq_contains_trigger (Seq_range 0 (Seq_length S@63@01)) j1@68@01) (Seq_index
    S@63@01
    j2@69@01))
  :pattern ((Seq_contains (Seq_range 0 (Seq_length S@63@01)) j2@69@01) (Seq_index
    S@63@01
    j1@68@01))
  :pattern ((Seq_contains_trigger (Seq_range 0 (Seq_length S@63@01)) j2@69@01) (Seq_index
    S@63@01
    j1@68@01))
  :pattern ((Seq_index S@63@01 j1@68@01) (Seq_index S@63@01 j2@69@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/sequences/seqsingleelements.vpr@32@12@32@102|)))
(declare-const j@70@01 Int)
(push) ; 2
; [eval] (j in [0..|S|))
; [eval] [0..|S|)
; [eval] |S|
(assert (Seq_contains (Seq_range 0 (Seq_length S@63@01)) j@70@01))
; [eval] S[j]
(push) ; 3
(assert (not (>= j@70@01 0)))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(push) ; 3
(assert (not (< j@70@01 (Seq_length S@63@01))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(pop) ; 2
(declare-fun inv@71@01 ($Ref) Int)
(declare-fun img@72@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
; Check receiver injectivity
(push) ; 2
(assert (not (forall ((j1@70@01 Int) (j2@70@01 Int)) (!
  (=>
    (and
      (Seq_contains (Seq_range 0 (Seq_length S@63@01)) j1@70@01)
      (Seq_contains (Seq_range 0 (Seq_length S@63@01)) j2@70@01)
      (= (Seq_index S@63@01 j1@70@01) (Seq_index S@63@01 j2@70@01)))
    (= j1@70@01 j2@70@01))
  
  :qid |value-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 2
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((j@70@01 Int)) (!
  (=>
    (Seq_contains (Seq_range 0 (Seq_length S@63@01)) j@70@01)
    (and
      (= (inv@71@01 (Seq_index S@63@01 j@70@01)) j@70@01)
      (img@72@01 (Seq_index S@63@01 j@70@01))))
  :pattern ((Seq_index S@63@01 j@70@01))
  :qid |quant-u-10971|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@72@01 r)
      (Seq_contains (Seq_range 0 (Seq_length S@63@01)) (inv@71@01 r)))
    (= (Seq_index S@63@01 (inv@71@01 r)) r))
  :pattern ((inv@71@01 r))
  :qid |value-fctOfInv|)))
; Permissions are non-negative
; Field permissions are at most one
; Permission implies non-null receiver
(assert (forall ((j@70@01 Int)) (!
  (=>
    (Seq_contains (Seq_range 0 (Seq_length S@63@01)) j@70@01)
    (not (= (Seq_index S@63@01 j@70@01) $Ref.null)))
  :pattern ((Seq_index S@63@01 j@70@01))
  :qid |value-permImpliesNonNull|)))
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
(set-option :timeout 0)
(push) ; 2
(declare-const $t@73@01 $Snap)
(assert (= $t@73@01 ($Snap.combine ($Snap.first $t@73@01) ($Snap.second $t@73@01))))
(declare-const j@74@01 Int)
(push) ; 3
; [eval] (j in [0..|S|))
; [eval] [0..|S|)
; [eval] |S|
(assert (Seq_contains (Seq_range 0 (Seq_length S@63@01)) j@74@01))
; [eval] S[j]
(push) ; 4
(assert (not (>= j@74@01 0)))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(push) ; 4
(assert (not (< j@74@01 (Seq_length S@63@01))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(pop) ; 3
(declare-fun inv@75@01 ($Ref) Int)
(declare-fun img@76@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
; Check receiver injectivity
(push) ; 3
(assert (not (forall ((j1@74@01 Int) (j2@74@01 Int)) (!
  (=>
    (and
      (Seq_contains (Seq_range 0 (Seq_length S@63@01)) j1@74@01)
      (Seq_contains (Seq_range 0 (Seq_length S@63@01)) j2@74@01)
      (= (Seq_index S@63@01 j1@74@01) (Seq_index S@63@01 j2@74@01)))
    (= j1@74@01 j2@74@01))
  
  :qid |value-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((j@74@01 Int)) (!
  (=>
    (Seq_contains (Seq_range 0 (Seq_length S@63@01)) j@74@01)
    (and
      (= (inv@75@01 (Seq_index S@63@01 j@74@01)) j@74@01)
      (img@76@01 (Seq_index S@63@01 j@74@01))))
  :pattern ((Seq_index S@63@01 j@74@01))
  :qid |quant-u-10973|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@76@01 r)
      (Seq_contains (Seq_range 0 (Seq_length S@63@01)) (inv@75@01 r)))
    (= (Seq_index S@63@01 (inv@75@01 r)) r))
  :pattern ((inv@75@01 r))
  :qid |value-fctOfInv|)))
; Permissions are non-negative
; Field permissions are at most one
; Permission implies non-null receiver
(assert (forall ((j@74@01 Int)) (!
  (=>
    (Seq_contains (Seq_range 0 (Seq_length S@63@01)) j@74@01)
    (not (= (Seq_index S@63@01 j@74@01) $Ref.null)))
  :pattern ((Seq_index S@63@01 j@74@01))
  :qid |value-permImpliesNonNull|)))
(assert (=
  ($Snap.second $t@73@01)
  ($Snap.combine
    ($Snap.first ($Snap.second $t@73@01))
    ($Snap.second ($Snap.second $t@73@01)))))
(assert (= ($Snap.first ($Snap.second $t@73@01)) $Snap.unit))
; [eval] S[a].value == 5
; [eval] S[a]
(push) ; 3
(assert (not (>= a@65@01 0)))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(push) ; 3
(assert (not (< a@65@01 (Seq_length S@63@01))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(push) ; 3
(assert (not (and
  (img@76@01 (Seq_index S@63@01 a@65@01))
  (Seq_contains
    (Seq_range 0 (Seq_length S@63@01))
    (inv@75@01 (Seq_index S@63@01 a@65@01))))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(assert (=
  ($FVF.lookup_value ($SortWrappers.$SnapTo$FVF<value> ($Snap.first $t@73@01)) (Seq_index
    S@63@01
    a@65@01))
  5))
(assert (=
  ($Snap.second ($Snap.second $t@73@01))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second $t@73@01)))
    ($Snap.second ($Snap.second ($Snap.second $t@73@01))))))
(assert (= ($Snap.first ($Snap.second ($Snap.second $t@73@01))) $Snap.unit))
; [eval] S[b].value == 6
; [eval] S[b]
(push) ; 3
(assert (not (>= b@66@01 0)))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(push) ; 3
(assert (not (and
  (img@76@01 (Seq_index S@63@01 b@66@01))
  (Seq_contains
    (Seq_range 0 (Seq_length S@63@01))
    (inv@75@01 (Seq_index S@63@01 b@66@01))))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(assert (=
  ($FVF.lookup_value ($SortWrappers.$SnapTo$FVF<value> ($Snap.first $t@73@01)) (Seq_index
    S@63@01
    b@66@01))
  6))
(assert (= ($Snap.second ($Snap.second ($Snap.second $t@73@01))) $Snap.unit))
; [eval] S[k].value == 0
; [eval] S[k]
(push) ; 3
(assert (not (>= k@64@01 0)))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(push) ; 3
(assert (not (and
  (img@76@01 (Seq_index S@63@01 k@64@01))
  (Seq_contains
    (Seq_range 0 (Seq_length S@63@01))
    (inv@75@01 (Seq_index S@63@01 k@64@01))))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(assert (=
  ($FVF.lookup_value ($SortWrappers.$SnapTo$FVF<value> ($Snap.first $t@73@01)) (Seq_index
    S@63@01
    k@64@01))
  0))
(pop) ; 2
(push) ; 2
; [exec]
; exhale (forall l: Int ::(l in [0..k)) ==> acc(S[l].value, 1 / 2))
(declare-const l@77@01 Int)
(push) ; 3
; [eval] (l in [0..k))
; [eval] [0..k)
(assert (Seq_contains (Seq_range 0 k@64@01) l@77@01))
; [eval] S[l]
(push) ; 4
(assert (not (>= l@77@01 0)))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(push) ; 4
(assert (not (< l@77@01 (Seq_length S@63@01))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(pop) ; 3
(declare-fun inv@78@01 ($Ref) Int)
(declare-fun img@79@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
; Check receiver injectivity
(push) ; 3
(assert (not (forall ((l1@77@01 Int) (l2@77@01 Int)) (!
  (=>
    (and
      (Seq_contains (Seq_range 0 k@64@01) l1@77@01)
      (Seq_contains (Seq_range 0 k@64@01) l2@77@01)
      (= (Seq_index S@63@01 l1@77@01) (Seq_index S@63@01 l2@77@01)))
    (= l1@77@01 l2@77@01))
  
  :qid |value-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((l@77@01 Int)) (!
  (=>
    (Seq_contains (Seq_range 0 k@64@01) l@77@01)
    (and
      (= (inv@78@01 (Seq_index S@63@01 l@77@01)) l@77@01)
      (img@79@01 (Seq_index S@63@01 l@77@01))))
  :pattern ((Seq_index S@63@01 l@77@01))
  :qid |value-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@79@01 r) (Seq_contains (Seq_range 0 k@64@01) (inv@78@01 r)))
    (= (Seq_index S@63@01 (inv@78@01 r)) r))
  :pattern ((inv@78@01 r))
  :qid |value-fctOfInv|)))
; Precomputing data for removing quantified permissions
(define-fun pTaken@80@01 ((r $Ref)) $Perm
  (ite
    (and
      (Seq_contains (Seq_range 0 k@64@01) (inv@78@01 r))
      (img@79@01 r)
      (= r (Seq_index S@63@01 (inv@78@01 r))))
    ($Perm.min
      (ite
        (and
          (img@72@01 r)
          (Seq_contains (Seq_range 0 (Seq_length S@63@01)) (inv@71@01 r)))
        $Perm.Write
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
          (img@72@01 r)
          (Seq_contains (Seq_range 0 (Seq_length S@63@01)) (inv@71@01 r)))
        $Perm.Write
        $Perm.No)
      (pTaken@80@01 r))
    $Perm.No)
  
  :qid |quant-u-10976|))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (forall ((r $Ref)) (!
  (= (pTaken@80@01 r) $Perm.No)
  
  :qid |quant-u-10977|))))
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
      (Seq_contains (Seq_range 0 k@64@01) (inv@78@01 r))
      (img@79@01 r)
      (= r (Seq_index S@63@01 (inv@78@01 r))))
    (= (- (/ (to_real 1) (to_real 2)) (pTaken@80@01 r)) $Perm.No))
  
  :qid |quant-u-10978|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Final check if taken enough permissions
; Done removing quantified permissions
; [exec]
; inhale (forall o: Int ::(o in [0..k)) ==> acc(S[o].value, 1 / 2))
(declare-const o@81@01 Int)
(set-option :timeout 0)
(push) ; 3
; [eval] (o in [0..k))
; [eval] [0..k)
(assert (Seq_contains (Seq_range 0 k@64@01) o@81@01))
; [eval] S[o]
(push) ; 4
(assert (not (>= o@81@01 0)))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(push) ; 4
(assert (not (< o@81@01 (Seq_length S@63@01))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(pop) ; 3
(declare-const $t@82@01 $FVF<value>)
(declare-fun inv@83@01 ($Ref) Int)
(declare-fun img@84@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
; Check receiver injectivity
(push) ; 3
(assert (not (forall ((o1@81@01 Int) (o2@81@01 Int)) (!
  (=>
    (and
      (Seq_contains (Seq_range 0 k@64@01) o1@81@01)
      (Seq_contains (Seq_range 0 k@64@01) o2@81@01)
      (= (Seq_index S@63@01 o1@81@01) (Seq_index S@63@01 o2@81@01)))
    (= o1@81@01 o2@81@01))
  
  :qid |value-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((o@81@01 Int)) (!
  (=>
    (Seq_contains (Seq_range 0 k@64@01) o@81@01)
    (and
      (= (inv@83@01 (Seq_index S@63@01 o@81@01)) o@81@01)
      (img@84@01 (Seq_index S@63@01 o@81@01))))
  :pattern ((Seq_index S@63@01 o@81@01))
  :qid |quant-u-10980|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@84@01 r) (Seq_contains (Seq_range 0 k@64@01) (inv@83@01 r)))
    (= (Seq_index S@63@01 (inv@83@01 r)) r))
  :pattern ((inv@83@01 r))
  :qid |value-fctOfInv|)))
; Permissions are non-negative
; Field permissions are at most one
; Permission implies non-null receiver
(assert (forall ((o@81@01 Int)) (!
  (=>
    (Seq_contains (Seq_range 0 k@64@01) o@81@01)
    (not (= (Seq_index S@63@01 o@81@01) $Ref.null)))
  :pattern ((Seq_index S@63@01 o@81@01))
  :qid |value-permImpliesNonNull|)))
(push) ; 3
(set-option :timeout 10)
(assert (not (forall ((r $Ref)) (!
  (and
    (= (Seq_index S@63@01 o@81@01) (Seq_index S@63@01 j@70@01))
    (=
      (and (img@84@01 r) (Seq_contains (Seq_range 0 k@64@01) (inv@83@01 r)))
      (and
        (img@72@01 r)
        (Seq_contains (Seq_range 0 (Seq_length S@63@01)) (inv@71@01 r)))))
  
  :qid |quant-u-10981|))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; exhale (forall p: Int ::(p in [k..|S|)) ==> acc(S[p].value, 1 / 2))
(declare-const p@85@01 Int)
(set-option :timeout 0)
(push) ; 3
; [eval] (p in [k..|S|))
; [eval] [k..|S|)
; [eval] |S|
(assert (Seq_contains (Seq_range k@64@01 (Seq_length S@63@01)) p@85@01))
; [eval] S[p]
(push) ; 4
(assert (not (>= p@85@01 0)))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(push) ; 4
(assert (not (< p@85@01 (Seq_length S@63@01))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(pop) ; 3
(declare-fun inv@86@01 ($Ref) Int)
(declare-fun img@87@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
; Check receiver injectivity
(push) ; 3
(assert (not (forall ((p1@85@01 Int) (p2@85@01 Int)) (!
  (=>
    (and
      (Seq_contains (Seq_range k@64@01 (Seq_length S@63@01)) p1@85@01)
      (Seq_contains (Seq_range k@64@01 (Seq_length S@63@01)) p2@85@01)
      (= (Seq_index S@63@01 p1@85@01) (Seq_index S@63@01 p2@85@01)))
    (= p1@85@01 p2@85@01))
  
  :qid |value-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((p@85@01 Int)) (!
  (=>
    (Seq_contains (Seq_range k@64@01 (Seq_length S@63@01)) p@85@01)
    (and
      (= (inv@86@01 (Seq_index S@63@01 p@85@01)) p@85@01)
      (img@87@01 (Seq_index S@63@01 p@85@01))))
  :pattern ((Seq_index S@63@01 p@85@01))
  :qid |value-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@87@01 r)
      (Seq_contains (Seq_range k@64@01 (Seq_length S@63@01)) (inv@86@01 r)))
    (= (Seq_index S@63@01 (inv@86@01 r)) r))
  :pattern ((inv@86@01 r))
  :qid |value-fctOfInv|)))
; Precomputing data for removing quantified permissions
(define-fun pTaken@88@01 ((r $Ref)) $Perm
  (ite
    (and
      (Seq_contains (Seq_range k@64@01 (Seq_length S@63@01)) (inv@86@01 r))
      (img@87@01 r)
      (= r (Seq_index S@63@01 (inv@86@01 r))))
    ($Perm.min
      (ite
        (and
          (img@72@01 r)
          (Seq_contains (Seq_range 0 (Seq_length S@63@01)) (inv@71@01 r)))
        (- $Perm.Write (pTaken@80@01 r))
        $Perm.No)
      (/ (to_real 1) (to_real 2)))
    $Perm.No))
(define-fun pTaken@89@01 ((r $Ref)) $Perm
  (ite
    (and
      (Seq_contains (Seq_range k@64@01 (Seq_length S@63@01)) (inv@86@01 r))
      (img@87@01 r)
      (= r (Seq_index S@63@01 (inv@86@01 r))))
    ($Perm.min
      (ite
        (and (img@84@01 r) (Seq_contains (Seq_range 0 k@64@01) (inv@83@01 r)))
        (/ (to_real 1) (to_real 2))
        $Perm.No)
      (- (/ (to_real 1) (to_real 2)) (pTaken@88@01 r)))
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
          (img@72@01 r)
          (Seq_contains (Seq_range 0 (Seq_length S@63@01)) (inv@71@01 r)))
        (- $Perm.Write (pTaken@80@01 r))
        $Perm.No)
      (pTaken@88@01 r))
    $Perm.No)
  
  :qid |quant-u-10984|))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (forall ((r $Ref)) (!
  (= (pTaken@88@01 r) $Perm.No)
  
  :qid |quant-u-10985|))))
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
      (Seq_contains (Seq_range k@64@01 (Seq_length S@63@01)) (inv@86@01 r))
      (img@87@01 r)
      (= r (Seq_index S@63@01 (inv@86@01 r))))
    (= (- (/ (to_real 1) (to_real 2)) (pTaken@88@01 r)) $Perm.No))
  
  :qid |quant-u-10986|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Final check if taken enough permissions
; Done removing quantified permissions
; [exec]
; inhale (forall q: Int ::(q in [k..|S|)) ==> acc(S[q].value, 1 / 2))
(declare-const q@90@01 Int)
(set-option :timeout 0)
(push) ; 3
; [eval] (q in [k..|S|))
; [eval] [k..|S|)
; [eval] |S|
(assert (Seq_contains (Seq_range k@64@01 (Seq_length S@63@01)) q@90@01))
; [eval] S[q]
(push) ; 4
(assert (not (>= q@90@01 0)))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(push) ; 4
(assert (not (< q@90@01 (Seq_length S@63@01))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(pop) ; 3
(declare-const $t@91@01 $FVF<value>)
(declare-fun inv@92@01 ($Ref) Int)
(declare-fun img@93@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
; Check receiver injectivity
(push) ; 3
(assert (not (forall ((q1@90@01 Int) (q2@90@01 Int)) (!
  (=>
    (and
      (Seq_contains (Seq_range k@64@01 (Seq_length S@63@01)) q1@90@01)
      (Seq_contains (Seq_range k@64@01 (Seq_length S@63@01)) q2@90@01)
      (= (Seq_index S@63@01 q1@90@01) (Seq_index S@63@01 q2@90@01)))
    (= q1@90@01 q2@90@01))
  
  :qid |value-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((q@90@01 Int)) (!
  (=>
    (Seq_contains (Seq_range k@64@01 (Seq_length S@63@01)) q@90@01)
    (and
      (= (inv@92@01 (Seq_index S@63@01 q@90@01)) q@90@01)
      (img@93@01 (Seq_index S@63@01 q@90@01))))
  :pattern ((Seq_index S@63@01 q@90@01))
  :qid |quant-u-10988|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@93@01 r)
      (Seq_contains (Seq_range k@64@01 (Seq_length S@63@01)) (inv@92@01 r)))
    (= (Seq_index S@63@01 (inv@92@01 r)) r))
  :pattern ((inv@92@01 r))
  :qid |value-fctOfInv|)))
; Permissions are non-negative
; Field permissions are at most one
; Permission implies non-null receiver
(assert (forall ((q@90@01 Int)) (!
  (=>
    (Seq_contains (Seq_range k@64@01 (Seq_length S@63@01)) q@90@01)
    (not (= (Seq_index S@63@01 q@90@01) $Ref.null)))
  :pattern ((Seq_index S@63@01 q@90@01))
  :qid |value-permImpliesNonNull|)))
(push) ; 3
(set-option :timeout 10)
(assert (not (forall ((r $Ref)) (!
  (and
    (= (Seq_index S@63@01 q@90@01) (Seq_index S@63@01 j@70@01))
    (=
      (and
        (img@93@01 r)
        (Seq_contains (Seq_range k@64@01 (Seq_length S@63@01)) (inv@92@01 r)))
      (and
        (img@72@01 r)
        (Seq_contains (Seq_range 0 (Seq_length S@63@01)) (inv@71@01 r)))))
  
  :qid |quant-u-10989|))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (forall ((r $Ref)) (!
  (and
    (= (Seq_index S@63@01 q@90@01) (Seq_index S@63@01 o@81@01))
    (=
      (and
        (img@93@01 r)
        (Seq_contains (Seq_range k@64@01 (Seq_length S@63@01)) (inv@92@01 r)))
      (and (img@84@01 r) (Seq_contains (Seq_range 0 k@64@01) (inv@83@01 r)))))
  
  :qid |quant-u-10990|))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; S[k].value := 0
; [eval] S[k]
(set-option :timeout 0)
(push) ; 3
(assert (not (>= k@64@01 0)))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Precomputing data for removing quantified permissions
(define-fun pTaken@94@01 ((r $Ref)) $Perm
  (ite
    (= r (Seq_index S@63@01 k@64@01))
    ($Perm.min
      (ite
        (and (img@84@01 r) (Seq_contains (Seq_range 0 k@64@01) (inv@83@01 r)))
        (/ (to_real 1) (to_real 2))
        $Perm.No)
      $Perm.Write)
    $Perm.No))
(define-fun pTaken@95@01 ((r $Ref)) $Perm
  (ite
    (= r (Seq_index S@63@01 k@64@01))
    ($Perm.min
      (ite
        (and
          (img@72@01 r)
          (Seq_contains (Seq_range 0 (Seq_length S@63@01)) (inv@71@01 r)))
        (- (- $Perm.Write (pTaken@80@01 r)) (pTaken@88@01 r))
        $Perm.No)
      (- $Perm.Write (pTaken@94@01 r)))
    $Perm.No))
(define-fun pTaken@96@01 ((r $Ref)) $Perm
  (ite
    (= r (Seq_index S@63@01 k@64@01))
    ($Perm.min
      (ite
        (and
          (img@93@01 r)
          (Seq_contains (Seq_range k@64@01 (Seq_length S@63@01)) (inv@92@01 r)))
        (/ (to_real 1) (to_real 2))
        $Perm.No)
      (- (- $Perm.Write (pTaken@94@01 r)) (pTaken@95@01 r)))
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
        (and (img@84@01 r) (Seq_contains (Seq_range 0 k@64@01) (inv@83@01 r)))
        (/ (to_real 1) (to_real 2))
        $Perm.No)
      (pTaken@94@01 r))
    $Perm.No)
  
  :qid |quant-u-10992|))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (forall ((r $Ref)) (!
  (= (pTaken@94@01 r) $Perm.No)
  
  :qid |quant-u-10993|))))
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
    (= r (Seq_index S@63@01 k@64@01))
    (= (- $Perm.Write (pTaken@94@01 r)) $Perm.No))
  
  :qid |quant-u-10994|))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
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
          (img@72@01 r)
          (Seq_contains (Seq_range 0 (Seq_length S@63@01)) (inv@71@01 r)))
        (- (- $Perm.Write (pTaken@80@01 r)) (pTaken@88@01 r))
        $Perm.No)
      (pTaken@95@01 r))
    $Perm.No)
  
  :qid |quant-u-10995|))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (forall ((r $Ref)) (!
  (= (pTaken@95@01 r) $Perm.No)
  
  :qid |quant-u-10996|))))
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
    (= r (Seq_index S@63@01 k@64@01))
    (= (- (- $Perm.Write (pTaken@94@01 r)) (pTaken@95@01 r)) $Perm.No))
  
  :qid |quant-u-10997|))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
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
          (img@93@01 r)
          (Seq_contains (Seq_range k@64@01 (Seq_length S@63@01)) (inv@92@01 r)))
        (/ (to_real 1) (to_real 2))
        $Perm.No)
      (pTaken@96@01 r))
    $Perm.No)
  
  :qid |quant-u-10998|))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (forall ((r $Ref)) (!
  (= (pTaken@96@01 r) $Perm.No)
  
  :qid |quant-u-10999|))))
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
    (= r (Seq_index S@63@01 k@64@01))
    (=
      (- (- (- $Perm.Write (pTaken@94@01 r)) (pTaken@95@01 r)) (pTaken@96@01 r))
      $Perm.No))
  
  :qid |quant-u-11000|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Final check if taken enough permissions
; Done removing quantified permissions
(declare-const sm@97@01 $FVF<value>)
; Definitional axioms for singleton-FVF's value
(assert (= ($FVF.lookup_value (as sm@97@01  $FVF<value>) (Seq_index S@63@01 k@64@01)) 0))
; [exec]
; S[a].value := 5
; [eval] S[a]
(set-option :timeout 0)
(push) ; 3
(assert (not (>= a@65@01 0)))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(push) ; 3
(assert (not (< a@65@01 (Seq_length S@63@01))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(push) ; 3
(set-option :timeout 10)
(assert (not (= (Seq_index S@63@01 k@64@01) (Seq_index S@63@01 a@65@01))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Precomputing data for removing quantified permissions
(define-fun pTaken@98@01 ((r $Ref)) $Perm
  (ite
    (= r (Seq_index S@63@01 a@65@01))
    ($Perm.min
      (ite
        (and
          (img@93@01 r)
          (Seq_contains (Seq_range k@64@01 (Seq_length S@63@01)) (inv@92@01 r)))
        (- (/ (to_real 1) (to_real 2)) (pTaken@96@01 r))
        $Perm.No)
      $Perm.Write)
    $Perm.No))
(define-fun pTaken@99@01 ((r $Ref)) $Perm
  (ite
    (= r (Seq_index S@63@01 a@65@01))
    ($Perm.min
      (ite
        (and
          (img@72@01 r)
          (Seq_contains (Seq_range 0 (Seq_length S@63@01)) (inv@71@01 r)))
        (-
          (- (- $Perm.Write (pTaken@80@01 r)) (pTaken@88@01 r))
          (pTaken@95@01 r))
        $Perm.No)
      (- $Perm.Write (pTaken@98@01 r)))
    $Perm.No))
(define-fun pTaken@100@01 ((r $Ref)) $Perm
  (ite
    (= r (Seq_index S@63@01 a@65@01))
    ($Perm.min
      (ite
        (and (img@84@01 r) (Seq_contains (Seq_range 0 k@64@01) (inv@83@01 r)))
        (/ (to_real 1) (to_real 2))
        $Perm.No)
      (- (- $Perm.Write (pTaken@98@01 r)) (pTaken@99@01 r)))
    $Perm.No))
(define-fun pTaken@101@01 ((r $Ref)) $Perm
  (ite
    (= r (Seq_index S@63@01 a@65@01))
    ($Perm.min
      (ite (= r (Seq_index S@63@01 k@64@01)) $Perm.Write $Perm.No)
      (- (- (- $Perm.Write (pTaken@98@01 r)) (pTaken@99@01 r)) (pTaken@100@01 r)))
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
          (img@93@01 r)
          (Seq_contains (Seq_range k@64@01 (Seq_length S@63@01)) (inv@92@01 r)))
        (- (/ (to_real 1) (to_real 2)) (pTaken@96@01 r))
        $Perm.No)
      (pTaken@98@01 r))
    $Perm.No)
  
  :qid |quant-u-11002|))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (forall ((r $Ref)) (!
  (= (pTaken@98@01 r) $Perm.No)
  
  :qid |quant-u-11003|))))
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
    (= r (Seq_index S@63@01 a@65@01))
    (= (- $Perm.Write (pTaken@98@01 r)) $Perm.No))
  
  :qid |quant-u-11004|))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
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
          (img@72@01 r)
          (Seq_contains (Seq_range 0 (Seq_length S@63@01)) (inv@71@01 r)))
        (-
          (- (- $Perm.Write (pTaken@80@01 r)) (pTaken@88@01 r))
          (pTaken@95@01 r))
        $Perm.No)
      (pTaken@99@01 r))
    $Perm.No)
  
  :qid |quant-u-11005|))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (forall ((r $Ref)) (!
  (= (pTaken@99@01 r) $Perm.No)
  
  :qid |quant-u-11006|))))
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
    (= r (Seq_index S@63@01 a@65@01))
    (= (- (- $Perm.Write (pTaken@98@01 r)) (pTaken@99@01 r)) $Perm.No))
  
  :qid |quant-u-11007|))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Chunk depleted?
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 500)
(assert (not (forall ((r $Ref)) (!
  (=
    (-
      (ite
        (and (img@84@01 r) (Seq_contains (Seq_range 0 k@64@01) (inv@83@01 r)))
        (/ (to_real 1) (to_real 2))
        $Perm.No)
      (pTaken@100@01 r))
    $Perm.No)
  
  :qid |quant-u-11008|))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (forall ((r $Ref)) (!
  (= (pTaken@100@01 r) $Perm.No)
  
  :qid |quant-u-11009|))))
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
    (= r (Seq_index S@63@01 a@65@01))
    (=
      (- (- (- $Perm.Write (pTaken@98@01 r)) (pTaken@99@01 r)) (pTaken@100@01 r))
      $Perm.No))
  
  :qid |quant-u-11010|))))
(check-sat)
; unknown
(pop) ; 3
; 0.01s
; (get-info :all-statistics)
; Chunk depleted?
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 500)
(assert (not (=
  (-
    (ite
      (= (Seq_index S@63@01 k@64@01) (Seq_index S@63@01 k@64@01))
      $Perm.Write
      $Perm.No)
    (pTaken@101@01 (Seq_index S@63@01 k@64@01)))
  $Perm.No)))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (forall ((r $Ref)) (!
  (= (pTaken@101@01 r) $Perm.No)
  
  :qid |quant-u-11012|))))
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
    (= r (Seq_index S@63@01 a@65@01))
    (=
      (-
        (-
          (- (- $Perm.Write (pTaken@98@01 r)) (pTaken@99@01 r))
          (pTaken@100@01 r))
        (pTaken@101@01 r))
      $Perm.No))
  
  :qid |quant-u-11013|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Final check if taken enough permissions
; Done removing quantified permissions
(declare-const sm@102@01 $FVF<value>)
; Definitional axioms for singleton-FVF's value
(assert (= ($FVF.lookup_value (as sm@102@01  $FVF<value>) (Seq_index S@63@01 a@65@01)) 5))
; [exec]
; S[b].value := 6
; [eval] S[b]
(set-option :timeout 0)
(push) ; 3
(assert (not (>= b@66@01 0)))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(push) ; 3
(set-option :timeout 10)
(assert (not (= (Seq_index S@63@01 a@65@01) (Seq_index S@63@01 b@66@01))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (= (Seq_index S@63@01 k@64@01) (Seq_index S@63@01 b@66@01))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Precomputing data for removing quantified permissions
(define-fun pTaken@103@01 ((r $Ref)) $Perm
  (ite
    (= r (Seq_index S@63@01 b@66@01))
    ($Perm.min
      (ite
        (and (img@84@01 r) (Seq_contains (Seq_range 0 k@64@01) (inv@83@01 r)))
        (- (/ (to_real 1) (to_real 2)) (pTaken@100@01 r))
        $Perm.No)
      $Perm.Write)
    $Perm.No))
(define-fun pTaken@104@01 ((r $Ref)) $Perm
  (ite
    (= r (Seq_index S@63@01 b@66@01))
    ($Perm.min
      (ite
        (and
          (img@72@01 r)
          (Seq_contains (Seq_range 0 (Seq_length S@63@01)) (inv@71@01 r)))
        (-
          (-
            (- (- $Perm.Write (pTaken@80@01 r)) (pTaken@88@01 r))
            (pTaken@95@01 r))
          (pTaken@99@01 r))
        $Perm.No)
      (- $Perm.Write (pTaken@103@01 r)))
    $Perm.No))
(define-fun pTaken@105@01 ((r $Ref)) $Perm
  (ite
    (= r (Seq_index S@63@01 b@66@01))
    ($Perm.min
      (ite
        (and
          (img@93@01 r)
          (Seq_contains (Seq_range k@64@01 (Seq_length S@63@01)) (inv@92@01 r)))
        (- (- (/ (to_real 1) (to_real 2)) (pTaken@96@01 r)) (pTaken@98@01 r))
        $Perm.No)
      (- (- $Perm.Write (pTaken@103@01 r)) (pTaken@104@01 r)))
    $Perm.No))
(define-fun pTaken@106@01 ((r $Ref)) $Perm
  (ite
    (= r (Seq_index S@63@01 b@66@01))
    ($Perm.min
      (ite (= r (Seq_index S@63@01 a@65@01)) $Perm.Write $Perm.No)
      (-
        (- (- $Perm.Write (pTaken@103@01 r)) (pTaken@104@01 r))
        (pTaken@105@01 r)))
    $Perm.No))
(define-fun pTaken@107@01 ((r $Ref)) $Perm
  (ite
    (= r (Seq_index S@63@01 b@66@01))
    ($Perm.min
      (ite
        (= r (Seq_index S@63@01 k@64@01))
        (- $Perm.Write (pTaken@101@01 r))
        $Perm.No)
      (-
        (-
          (- (- $Perm.Write (pTaken@103@01 r)) (pTaken@104@01 r))
          (pTaken@105@01 r))
        (pTaken@106@01 r)))
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
        (and (img@84@01 r) (Seq_contains (Seq_range 0 k@64@01) (inv@83@01 r)))
        (- (/ (to_real 1) (to_real 2)) (pTaken@100@01 r))
        $Perm.No)
      (pTaken@103@01 r))
    $Perm.No)
  
  :qid |quant-u-11015|))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (forall ((r $Ref)) (!
  (= (pTaken@103@01 r) $Perm.No)
  
  :qid |quant-u-11016|))))
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
    (= r (Seq_index S@63@01 b@66@01))
    (= (- $Perm.Write (pTaken@103@01 r)) $Perm.No))
  
  :qid |quant-u-11017|))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
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
          (img@72@01 r)
          (Seq_contains (Seq_range 0 (Seq_length S@63@01)) (inv@71@01 r)))
        (-
          (-
            (- (- $Perm.Write (pTaken@80@01 r)) (pTaken@88@01 r))
            (pTaken@95@01 r))
          (pTaken@99@01 r))
        $Perm.No)
      (pTaken@104@01 r))
    $Perm.No)
  
  :qid |quant-u-11018|))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (forall ((r $Ref)) (!
  (= (pTaken@104@01 r) $Perm.No)
  
  :qid |quant-u-11019|))))
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
    (= r (Seq_index S@63@01 b@66@01))
    (= (- (- $Perm.Write (pTaken@103@01 r)) (pTaken@104@01 r)) $Perm.No))
  
  :qid |quant-u-11020|))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
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
          (img@93@01 r)
          (Seq_contains (Seq_range k@64@01 (Seq_length S@63@01)) (inv@92@01 r)))
        (- (- (/ (to_real 1) (to_real 2)) (pTaken@96@01 r)) (pTaken@98@01 r))
        $Perm.No)
      (pTaken@105@01 r))
    $Perm.No)
  
  :qid |quant-u-11021|))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (forall ((r $Ref)) (!
  (= (pTaken@105@01 r) $Perm.No)
  
  :qid |quant-u-11022|))))
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
    (= r (Seq_index S@63@01 b@66@01))
    (=
      (-
        (- (- $Perm.Write (pTaken@103@01 r)) (pTaken@104@01 r))
        (pTaken@105@01 r))
      $Perm.No))
  
  :qid |quant-u-11023|))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Chunk depleted?
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 500)
(assert (not (=
  (-
    (ite
      (= (Seq_index S@63@01 a@65@01) (Seq_index S@63@01 a@65@01))
      $Perm.Write
      $Perm.No)
    (pTaken@106@01 (Seq_index S@63@01 a@65@01)))
  $Perm.No)))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (forall ((r $Ref)) (!
  (= (pTaken@106@01 r) $Perm.No)
  
  :qid |quant-u-11025|))))
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
    (= r (Seq_index S@63@01 b@66@01))
    (=
      (-
        (-
          (- (- $Perm.Write (pTaken@103@01 r)) (pTaken@104@01 r))
          (pTaken@105@01 r))
        (pTaken@106@01 r))
      $Perm.No))
  
  :qid |quant-u-11026|))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Chunk depleted?
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 500)
(assert (not (=
  (-
    (ite
      (= (Seq_index S@63@01 k@64@01) (Seq_index S@63@01 k@64@01))
      (- $Perm.Write (pTaken@101@01 (Seq_index S@63@01 k@64@01)))
      $Perm.No)
    (pTaken@107@01 (Seq_index S@63@01 k@64@01)))
  $Perm.No)))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (forall ((r $Ref)) (!
  (= (pTaken@107@01 r) $Perm.No)
  
  :qid |quant-u-11028|))))
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
    (= r (Seq_index S@63@01 b@66@01))
    (=
      (-
        (-
          (-
            (- (- $Perm.Write (pTaken@103@01 r)) (pTaken@104@01 r))
            (pTaken@105@01 r))
          (pTaken@106@01 r))
        (pTaken@107@01 r))
      $Perm.No))
  
  :qid |quant-u-11029|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Final check if taken enough permissions
; Done removing quantified permissions
(declare-const sm@108@01 $FVF<value>)
; Definitional axioms for singleton-FVF's value
(assert (= ($FVF.lookup_value (as sm@108@01  $FVF<value>) (Seq_index S@63@01 b@66@01)) 6))
(declare-const j@109@01 Int)
(set-option :timeout 0)
(push) ; 3
; [eval] (j in [0..|S|))
; [eval] [0..|S|)
; [eval] |S|
(assert (Seq_contains (Seq_range 0 (Seq_length S@63@01)) j@109@01))
; [eval] S[j]
(push) ; 4
(assert (not (>= j@109@01 0)))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(push) ; 4
(assert (not (< j@109@01 (Seq_length S@63@01))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(pop) ; 3
(declare-fun inv@110@01 ($Ref) Int)
(declare-fun img@111@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
; Check receiver injectivity
(push) ; 3
(assert (not (forall ((j1@109@01 Int) (j2@109@01 Int)) (!
  (=>
    (and
      (Seq_contains (Seq_range 0 (Seq_length S@63@01)) j1@109@01)
      (Seq_contains (Seq_range 0 (Seq_length S@63@01)) j2@109@01)
      (= (Seq_index S@63@01 j1@109@01) (Seq_index S@63@01 j2@109@01)))
    (= j1@109@01 j2@109@01))
  
  :qid |value-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((j@109@01 Int)) (!
  (=>
    (Seq_contains (Seq_range 0 (Seq_length S@63@01)) j@109@01)
    (and
      (= (inv@110@01 (Seq_index S@63@01 j@109@01)) j@109@01)
      (img@111@01 (Seq_index S@63@01 j@109@01))))
  :pattern ((Seq_index S@63@01 j@109@01))
  :qid |value-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@111@01 r)
      (Seq_contains (Seq_range 0 (Seq_length S@63@01)) (inv@110@01 r)))
    (= (Seq_index S@63@01 (inv@110@01 r)) r))
  :pattern ((inv@110@01 r))
  :qid |value-fctOfInv|)))
; Precomputing data for removing quantified permissions
(define-fun pTaken@112@01 ((r $Ref)) $Perm
  (ite
    (and
      (Seq_contains (Seq_range 0 (Seq_length S@63@01)) (inv@110@01 r))
      (img@111@01 r)
      (= r (Seq_index S@63@01 (inv@110@01 r))))
    ($Perm.min
      (ite
        (and
          (img@93@01 r)
          (Seq_contains (Seq_range k@64@01 (Seq_length S@63@01)) (inv@92@01 r)))
        (-
          (- (- (/ (to_real 1) (to_real 2)) (pTaken@96@01 r)) (pTaken@98@01 r))
          (pTaken@105@01 r))
        $Perm.No)
      $Perm.Write)
    $Perm.No))
(define-fun pTaken@113@01 ((r $Ref)) $Perm
  (ite
    (and
      (Seq_contains (Seq_range 0 (Seq_length S@63@01)) (inv@110@01 r))
      (img@111@01 r)
      (= r (Seq_index S@63@01 (inv@110@01 r))))
    ($Perm.min
      (ite
        (and
          (img@72@01 r)
          (Seq_contains (Seq_range 0 (Seq_length S@63@01)) (inv@71@01 r)))
        (-
          (-
            (-
              (- (- $Perm.Write (pTaken@80@01 r)) (pTaken@88@01 r))
              (pTaken@95@01 r))
            (pTaken@99@01 r))
          (pTaken@104@01 r))
        $Perm.No)
      (- $Perm.Write (pTaken@112@01 r)))
    $Perm.No))
(define-fun pTaken@114@01 ((r $Ref)) $Perm
  (ite
    (and
      (Seq_contains (Seq_range 0 (Seq_length S@63@01)) (inv@110@01 r))
      (img@111@01 r)
      (= r (Seq_index S@63@01 (inv@110@01 r))))
    ($Perm.min
      (ite
        (and (img@84@01 r) (Seq_contains (Seq_range 0 k@64@01) (inv@83@01 r)))
        (- (- (/ (to_real 1) (to_real 2)) (pTaken@100@01 r)) (pTaken@103@01 r))
        $Perm.No)
      (- (- $Perm.Write (pTaken@112@01 r)) (pTaken@113@01 r)))
    $Perm.No))
(define-fun pTaken@115@01 ((r $Ref)) $Perm
  (ite
    (and
      (Seq_contains (Seq_range 0 (Seq_length S@63@01)) (inv@110@01 r))
      (img@111@01 r)
      (= r (Seq_index S@63@01 (inv@110@01 r))))
    ($Perm.min
      (ite (= r (Seq_index S@63@01 b@66@01)) $Perm.Write $Perm.No)
      (-
        (- (- $Perm.Write (pTaken@112@01 r)) (pTaken@113@01 r))
        (pTaken@114@01 r)))
    $Perm.No))
(define-fun pTaken@116@01 ((r $Ref)) $Perm
  (ite
    (and
      (Seq_contains (Seq_range 0 (Seq_length S@63@01)) (inv@110@01 r))
      (img@111@01 r)
      (= r (Seq_index S@63@01 (inv@110@01 r))))
    ($Perm.min
      (ite
        (= r (Seq_index S@63@01 k@64@01))
        (- (- $Perm.Write (pTaken@101@01 r)) (pTaken@107@01 r))
        $Perm.No)
      (-
        (-
          (- (- $Perm.Write (pTaken@112@01 r)) (pTaken@113@01 r))
          (pTaken@114@01 r))
        (pTaken@115@01 r)))
    $Perm.No))
(define-fun pTaken@117@01 ((r $Ref)) $Perm
  (ite
    (and
      (Seq_contains (Seq_range 0 (Seq_length S@63@01)) (inv@110@01 r))
      (img@111@01 r)
      (= r (Seq_index S@63@01 (inv@110@01 r))))
    ($Perm.min
      (ite (= r (Seq_index S@63@01 a@65@01)) $Perm.Write $Perm.No)
      (-
        (-
          (-
            (- (- $Perm.Write (pTaken@112@01 r)) (pTaken@113@01 r))
            (pTaken@114@01 r))
          (pTaken@115@01 r))
        (pTaken@116@01 r)))
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
          (img@93@01 r)
          (Seq_contains (Seq_range k@64@01 (Seq_length S@63@01)) (inv@92@01 r)))
        (-
          (- (- (/ (to_real 1) (to_real 2)) (pTaken@96@01 r)) (pTaken@98@01 r))
          (pTaken@105@01 r))
        $Perm.No)
      (pTaken@112@01 r))
    $Perm.No)
  
  :qid |quant-u-11032|))))
(check-sat)
; unsat
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
      (Seq_contains (Seq_range 0 (Seq_length S@63@01)) (inv@110@01 r))
      (img@111@01 r)
      (= r (Seq_index S@63@01 (inv@110@01 r))))
    (= (- $Perm.Write (pTaken@112@01 r)) $Perm.No))
  
  :qid |quant-u-11033|))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
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
          (img@72@01 r)
          (Seq_contains (Seq_range 0 (Seq_length S@63@01)) (inv@71@01 r)))
        (-
          (-
            (-
              (- (- $Perm.Write (pTaken@80@01 r)) (pTaken@88@01 r))
              (pTaken@95@01 r))
            (pTaken@99@01 r))
          (pTaken@104@01 r))
        $Perm.No)
      (pTaken@113@01 r))
    $Perm.No)
  
  :qid |quant-u-11034|))))
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
    (and
      (Seq_contains (Seq_range 0 (Seq_length S@63@01)) (inv@110@01 r))
      (img@111@01 r)
      (= r (Seq_index S@63@01 (inv@110@01 r))))
    (= (- (- $Perm.Write (pTaken@112@01 r)) (pTaken@113@01 r)) $Perm.No))
  
  :qid |quant-u-11035|))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Chunk depleted?
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 500)
(assert (not (forall ((r $Ref)) (!
  (=
    (-
      (ite
        (and (img@84@01 r) (Seq_contains (Seq_range 0 k@64@01) (inv@83@01 r)))
        (- (- (/ (to_real 1) (to_real 2)) (pTaken@100@01 r)) (pTaken@103@01 r))
        $Perm.No)
      (pTaken@114@01 r))
    $Perm.No)
  
  :qid |quant-u-11036|))))
(check-sat)
; unsat
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
      (Seq_contains (Seq_range 0 (Seq_length S@63@01)) (inv@110@01 r))
      (img@111@01 r)
      (= r (Seq_index S@63@01 (inv@110@01 r))))
    (=
      (-
        (- (- $Perm.Write (pTaken@112@01 r)) (pTaken@113@01 r))
        (pTaken@114@01 r))
      $Perm.No))
  
  :qid |quant-u-11037|))))
(check-sat)
; unknown
(pop) ; 3
; 0.01s
; (get-info :all-statistics)
; Chunk depleted?
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 500)
(assert (not (=
  (-
    (ite
      (= (Seq_index S@63@01 b@66@01) (Seq_index S@63@01 b@66@01))
      $Perm.Write
      $Perm.No)
    (pTaken@115@01 (Seq_index S@63@01 b@66@01)))
  $Perm.No)))
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
      (Seq_contains (Seq_range 0 (Seq_length S@63@01)) (inv@110@01 r))
      (img@111@01 r)
      (= r (Seq_index S@63@01 (inv@110@01 r))))
    (=
      (-
        (-
          (- (- $Perm.Write (pTaken@112@01 r)) (pTaken@113@01 r))
          (pTaken@114@01 r))
        (pTaken@115@01 r))
      $Perm.No))
  
  :qid |quant-u-11039|))))
(check-sat)
; unknown
(pop) ; 3
; 0.01s
; (get-info :all-statistics)
; Chunk depleted?
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 500)
(assert (not (=
  (-
    (ite
      (= (Seq_index S@63@01 k@64@01) (Seq_index S@63@01 k@64@01))
      (-
        (- $Perm.Write (pTaken@101@01 (Seq_index S@63@01 k@64@01)))
        (pTaken@107@01 (Seq_index S@63@01 k@64@01)))
      $Perm.No)
    (pTaken@116@01 (Seq_index S@63@01 k@64@01)))
  $Perm.No)))
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
      (Seq_contains (Seq_range 0 (Seq_length S@63@01)) (inv@110@01 r))
      (img@111@01 r)
      (= r (Seq_index S@63@01 (inv@110@01 r))))
    (=
      (-
        (-
          (-
            (- (- $Perm.Write (pTaken@112@01 r)) (pTaken@113@01 r))
            (pTaken@114@01 r))
          (pTaken@115@01 r))
        (pTaken@116@01 r))
      $Perm.No))
  
  :qid |quant-u-11041|))))
(check-sat)
; unknown
(pop) ; 3
; 0.01s
; (get-info :all-statistics)
; Chunk depleted?
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 500)
(assert (not (=
  (-
    (ite
      (= (Seq_index S@63@01 a@65@01) (Seq_index S@63@01 a@65@01))
      $Perm.Write
      $Perm.No)
    (pTaken@117@01 (Seq_index S@63@01 a@65@01)))
  $Perm.No)))
(check-sat)
; unsat
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
      (Seq_contains (Seq_range 0 (Seq_length S@63@01)) (inv@110@01 r))
      (img@111@01 r)
      (= r (Seq_index S@63@01 (inv@110@01 r))))
    (=
      (-
        (-
          (-
            (-
              (- (- $Perm.Write (pTaken@112@01 r)) (pTaken@113@01 r))
              (pTaken@114@01 r))
            (pTaken@115@01 r))
          (pTaken@116@01 r))
        (pTaken@117@01 r))
      $Perm.No))
  
  :qid |quant-u-11043|))))
(check-sat)
; unsat
(pop) ; 3
; 0.03s
; (get-info :all-statistics)
; Final check if taken enough permissions
; Done removing quantified permissions
; [eval] S[a].value == 5
; [eval] S[a]
(set-option :timeout 0)
(push) ; 3
(assert (not (>= a@65@01 0)))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(push) ; 3
(assert (not (< a@65@01 (Seq_length S@63@01))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(declare-const sm@118@01 $FVF<value>)
; Definitional axioms for snapshot map values
(assert (forall ((r $Ref)) (!
  (=>
    (= r (Seq_index S@63@01 b@66@01))
    (=
      ($FVF.lookup_value (as sm@118@01  $FVF<value>) r)
      ($FVF.lookup_value (as sm@108@01  $FVF<value>) r)))
  :pattern (($FVF.lookup_value (as sm@118@01  $FVF<value>) r))
  :pattern (($FVF.lookup_value (as sm@108@01  $FVF<value>) r))
  :qid |qp.fvfValDef8|)))
(assert (forall ((r $Ref)) (!
  (=>
    (ite
      (= r (Seq_index S@63@01 k@64@01))
      (< $Perm.No (- (- $Perm.Write (pTaken@101@01 r)) (pTaken@107@01 r)))
      false)
    (=
      ($FVF.lookup_value (as sm@118@01  $FVF<value>) r)
      ($FVF.lookup_value (as sm@97@01  $FVF<value>) r)))
  :pattern (($FVF.lookup_value (as sm@118@01  $FVF<value>) r))
  :pattern (($FVF.lookup_value (as sm@97@01  $FVF<value>) r))
  :qid |qp.fvfValDef9|)))
(assert (forall ((r $Ref)) (!
  (=>
    (= r (Seq_index S@63@01 a@65@01))
    (=
      ($FVF.lookup_value (as sm@118@01  $FVF<value>) r)
      ($FVF.lookup_value (as sm@102@01  $FVF<value>) r)))
  :pattern (($FVF.lookup_value (as sm@118@01  $FVF<value>) r))
  :pattern (($FVF.lookup_value (as sm@102@01  $FVF<value>) r))
  :qid |qp.fvfValDef10|)))
(assert (forall ((r $Ref)) (!
  (=>
    (ite
      (and
        (img@93@01 r)
        (Seq_contains (Seq_range k@64@01 (Seq_length S@63@01)) (inv@92@01 r)))
      (<
        $Perm.No
        (-
          (- (- (/ (to_real 1) (to_real 2)) (pTaken@96@01 r)) (pTaken@98@01 r))
          (pTaken@105@01 r)))
      false)
    (=
      ($FVF.lookup_value (as sm@118@01  $FVF<value>) r)
      ($FVF.lookup_value $t@91@01 r)))
  :pattern (($FVF.lookup_value (as sm@118@01  $FVF<value>) r))
  :pattern (($FVF.lookup_value $t@91@01 r))
  :qid |qp.fvfValDef11|)))
(assert (forall ((r $Ref)) (!
  (=>
    (ite
      (and
        (img@72@01 r)
        (Seq_contains (Seq_range 0 (Seq_length S@63@01)) (inv@71@01 r)))
      (<
        $Perm.No
        (-
          (-
            (-
              (- (- $Perm.Write (pTaken@80@01 r)) (pTaken@88@01 r))
              (pTaken@95@01 r))
            (pTaken@99@01 r))
          (pTaken@104@01 r)))
      false)
    (=
      ($FVF.lookup_value (as sm@118@01  $FVF<value>) r)
      ($FVF.lookup_value ($SortWrappers.$SnapTo$FVF<value> ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@67@01))))))) r)))
  :pattern (($FVF.lookup_value (as sm@118@01  $FVF<value>) r))
  :pattern (($FVF.lookup_value ($SortWrappers.$SnapTo$FVF<value> ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@67@01))))))) r))
  :qid |qp.fvfValDef12|)))
(assert (forall ((r $Ref)) (!
  (=>
    (ite
      (and (img@84@01 r) (Seq_contains (Seq_range 0 k@64@01) (inv@83@01 r)))
      (<
        $Perm.No
        (- (- (/ (to_real 1) (to_real 2)) (pTaken@100@01 r)) (pTaken@103@01 r)))
      false)
    (=
      ($FVF.lookup_value (as sm@118@01  $FVF<value>) r)
      ($FVF.lookup_value $t@82@01 r)))
  :pattern (($FVF.lookup_value (as sm@118@01  $FVF<value>) r))
  :pattern (($FVF.lookup_value $t@82@01 r))
  :qid |qp.fvfValDef13|)))
(declare-const pm@119@01 $FPM)
(assert (forall ((r $Ref)) (!
  (=
    ($FVF.perm_value (as pm@119@01  $FPM) r)
    (+
      (+
        (+
          (+
            (+
              (ite (= r (Seq_index S@63@01 b@66@01)) $Perm.Write $Perm.No)
              (ite
                (= r (Seq_index S@63@01 k@64@01))
                (- (- $Perm.Write (pTaken@101@01 r)) (pTaken@107@01 r))
                $Perm.No))
            (ite (= r (Seq_index S@63@01 a@65@01)) $Perm.Write $Perm.No))
          (ite
            (and
              (img@93@01 r)
              (Seq_contains
                (Seq_range k@64@01 (Seq_length S@63@01))
                (inv@92@01 r)))
            (-
              (-
                (- (/ (to_real 1) (to_real 2)) (pTaken@96@01 r))
                (pTaken@98@01 r))
              (pTaken@105@01 r))
            $Perm.No))
        (ite
          (and
            (img@72@01 r)
            (Seq_contains (Seq_range 0 (Seq_length S@63@01)) (inv@71@01 r)))
          (-
            (-
              (-
                (- (- $Perm.Write (pTaken@80@01 r)) (pTaken@88@01 r))
                (pTaken@95@01 r))
              (pTaken@99@01 r))
            (pTaken@104@01 r))
          $Perm.No))
      (ite
        (and (img@84@01 r) (Seq_contains (Seq_range 0 k@64@01) (inv@83@01 r)))
        (- (- (/ (to_real 1) (to_real 2)) (pTaken@100@01 r)) (pTaken@103@01 r))
        $Perm.No)))
  :pattern (($FVF.perm_value (as pm@119@01  $FPM) r))
  :qid |qp.resPrmSumDef14|)))
(push) ; 3
(assert (not (< $Perm.No ($FVF.perm_value (as pm@119@01  $FPM) (Seq_index S@63@01 a@65@01)))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(push) ; 3
(assert (not (= ($FVF.lookup_value (as sm@118@01  $FVF<value>) (Seq_index S@63@01 a@65@01)) 5)))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(assert (= ($FVF.lookup_value (as sm@118@01  $FVF<value>) (Seq_index S@63@01 a@65@01)) 5))
; [eval] S[b].value == 6
; [eval] S[b]
(push) ; 3
(assert (not (>= b@66@01 0)))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(assert (and
  (forall ((r $Ref)) (!
    (=>
      (= r (Seq_index S@63@01 b@66@01))
      (=
        ($FVF.lookup_value (as sm@118@01  $FVF<value>) r)
        ($FVF.lookup_value (as sm@108@01  $FVF<value>) r)))
    :pattern (($FVF.lookup_value (as sm@118@01  $FVF<value>) r))
    :pattern (($FVF.lookup_value (as sm@108@01  $FVF<value>) r))
    :qid |qp.fvfValDef8|))
  (forall ((r $Ref)) (!
    (=>
      (ite
        (= r (Seq_index S@63@01 k@64@01))
        (< $Perm.No (- (- $Perm.Write (pTaken@101@01 r)) (pTaken@107@01 r)))
        false)
      (=
        ($FVF.lookup_value (as sm@118@01  $FVF<value>) r)
        ($FVF.lookup_value (as sm@97@01  $FVF<value>) r)))
    :pattern (($FVF.lookup_value (as sm@118@01  $FVF<value>) r))
    :pattern (($FVF.lookup_value (as sm@97@01  $FVF<value>) r))
    :qid |qp.fvfValDef9|))
  (forall ((r $Ref)) (!
    (=>
      (= r (Seq_index S@63@01 a@65@01))
      (=
        ($FVF.lookup_value (as sm@118@01  $FVF<value>) r)
        ($FVF.lookup_value (as sm@102@01  $FVF<value>) r)))
    :pattern (($FVF.lookup_value (as sm@118@01  $FVF<value>) r))
    :pattern (($FVF.lookup_value (as sm@102@01  $FVF<value>) r))
    :qid |qp.fvfValDef10|))
  (forall ((r $Ref)) (!
    (=>
      (ite
        (and
          (img@93@01 r)
          (Seq_contains (Seq_range k@64@01 (Seq_length S@63@01)) (inv@92@01 r)))
        (<
          $Perm.No
          (-
            (- (- (/ (to_real 1) (to_real 2)) (pTaken@96@01 r)) (pTaken@98@01 r))
            (pTaken@105@01 r)))
        false)
      (=
        ($FVF.lookup_value (as sm@118@01  $FVF<value>) r)
        ($FVF.lookup_value $t@91@01 r)))
    :pattern (($FVF.lookup_value (as sm@118@01  $FVF<value>) r))
    :pattern (($FVF.lookup_value $t@91@01 r))
    :qid |qp.fvfValDef11|))
  (forall ((r $Ref)) (!
    (=>
      (ite
        (and
          (img@72@01 r)
          (Seq_contains (Seq_range 0 (Seq_length S@63@01)) (inv@71@01 r)))
        (<
          $Perm.No
          (-
            (-
              (-
                (- (- $Perm.Write (pTaken@80@01 r)) (pTaken@88@01 r))
                (pTaken@95@01 r))
              (pTaken@99@01 r))
            (pTaken@104@01 r)))
        false)
      (=
        ($FVF.lookup_value (as sm@118@01  $FVF<value>) r)
        ($FVF.lookup_value ($SortWrappers.$SnapTo$FVF<value> ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@67@01))))))) r)))
    :pattern (($FVF.lookup_value (as sm@118@01  $FVF<value>) r))
    :pattern (($FVF.lookup_value ($SortWrappers.$SnapTo$FVF<value> ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@67@01))))))) r))
    :qid |qp.fvfValDef12|))
  (forall ((r $Ref)) (!
    (=>
      (ite
        (and (img@84@01 r) (Seq_contains (Seq_range 0 k@64@01) (inv@83@01 r)))
        (<
          $Perm.No
          (- (- (/ (to_real 1) (to_real 2)) (pTaken@100@01 r)) (pTaken@103@01 r)))
        false)
      (=
        ($FVF.lookup_value (as sm@118@01  $FVF<value>) r)
        ($FVF.lookup_value $t@82@01 r)))
    :pattern (($FVF.lookup_value (as sm@118@01  $FVF<value>) r))
    :pattern (($FVF.lookup_value $t@82@01 r))
    :qid |qp.fvfValDef13|))))
(push) ; 3
(assert (not (<
  $Perm.No
  (+
    (+
      (+
        (+
          (+
            (ite
              (= (Seq_index S@63@01 b@66@01) (Seq_index S@63@01 b@66@01))
              $Perm.Write
              $Perm.No)
            (ite
              (= (Seq_index S@63@01 b@66@01) (Seq_index S@63@01 k@64@01))
              (-
                (- $Perm.Write (pTaken@101@01 (Seq_index S@63@01 b@66@01)))
                (pTaken@107@01 (Seq_index S@63@01 b@66@01)))
              $Perm.No))
          (ite
            (= (Seq_index S@63@01 b@66@01) (Seq_index S@63@01 a@65@01))
            $Perm.Write
            $Perm.No))
        (ite
          (and
            (img@93@01 (Seq_index S@63@01 b@66@01))
            (Seq_contains
              (Seq_range k@64@01 (Seq_length S@63@01))
              (inv@92@01 (Seq_index S@63@01 b@66@01))))
          (-
            (-
              (-
                (/ (to_real 1) (to_real 2))
                (pTaken@96@01 (Seq_index S@63@01 b@66@01)))
              (pTaken@98@01 (Seq_index S@63@01 b@66@01)))
            (pTaken@105@01 (Seq_index S@63@01 b@66@01)))
          $Perm.No))
      (ite
        (and
          (img@72@01 (Seq_index S@63@01 b@66@01))
          (Seq_contains
            (Seq_range 0 (Seq_length S@63@01))
            (inv@71@01 (Seq_index S@63@01 b@66@01))))
        (-
          (-
            (-
              (-
                (- $Perm.Write (pTaken@80@01 (Seq_index S@63@01 b@66@01)))
                (pTaken@88@01 (Seq_index S@63@01 b@66@01)))
              (pTaken@95@01 (Seq_index S@63@01 b@66@01)))
            (pTaken@99@01 (Seq_index S@63@01 b@66@01)))
          (pTaken@104@01 (Seq_index S@63@01 b@66@01)))
        $Perm.No))
    (ite
      (and
        (img@84@01 (Seq_index S@63@01 b@66@01))
        (Seq_contains
          (Seq_range 0 k@64@01)
          (inv@83@01 (Seq_index S@63@01 b@66@01))))
      (-
        (-
          (/ (to_real 1) (to_real 2))
          (pTaken@100@01 (Seq_index S@63@01 b@66@01)))
        (pTaken@103@01 (Seq_index S@63@01 b@66@01)))
      $Perm.No)))))
(check-sat)
; unsat
(pop) ; 3
; 0.01s
; (get-info :all-statistics)
(push) ; 3
(assert (not (= ($FVF.lookup_value (as sm@118@01  $FVF<value>) (Seq_index S@63@01 b@66@01)) 6)))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(assert (= ($FVF.lookup_value (as sm@118@01  $FVF<value>) (Seq_index S@63@01 b@66@01)) 6))
; [eval] S[k].value == 0
; [eval] S[k]
(push) ; 3
(assert (not (>= k@64@01 0)))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(assert (and
  (forall ((r $Ref)) (!
    (=>
      (= r (Seq_index S@63@01 b@66@01))
      (=
        ($FVF.lookup_value (as sm@118@01  $FVF<value>) r)
        ($FVF.lookup_value (as sm@108@01  $FVF<value>) r)))
    :pattern (($FVF.lookup_value (as sm@118@01  $FVF<value>) r))
    :pattern (($FVF.lookup_value (as sm@108@01  $FVF<value>) r))
    :qid |qp.fvfValDef8|))
  (forall ((r $Ref)) (!
    (=>
      (ite
        (= r (Seq_index S@63@01 k@64@01))
        (< $Perm.No (- (- $Perm.Write (pTaken@101@01 r)) (pTaken@107@01 r)))
        false)
      (=
        ($FVF.lookup_value (as sm@118@01  $FVF<value>) r)
        ($FVF.lookup_value (as sm@97@01  $FVF<value>) r)))
    :pattern (($FVF.lookup_value (as sm@118@01  $FVF<value>) r))
    :pattern (($FVF.lookup_value (as sm@97@01  $FVF<value>) r))
    :qid |qp.fvfValDef9|))
  (forall ((r $Ref)) (!
    (=>
      (= r (Seq_index S@63@01 a@65@01))
      (=
        ($FVF.lookup_value (as sm@118@01  $FVF<value>) r)
        ($FVF.lookup_value (as sm@102@01  $FVF<value>) r)))
    :pattern (($FVF.lookup_value (as sm@118@01  $FVF<value>) r))
    :pattern (($FVF.lookup_value (as sm@102@01  $FVF<value>) r))
    :qid |qp.fvfValDef10|))
  (forall ((r $Ref)) (!
    (=>
      (ite
        (and
          (img@93@01 r)
          (Seq_contains (Seq_range k@64@01 (Seq_length S@63@01)) (inv@92@01 r)))
        (<
          $Perm.No
          (-
            (- (- (/ (to_real 1) (to_real 2)) (pTaken@96@01 r)) (pTaken@98@01 r))
            (pTaken@105@01 r)))
        false)
      (=
        ($FVF.lookup_value (as sm@118@01  $FVF<value>) r)
        ($FVF.lookup_value $t@91@01 r)))
    :pattern (($FVF.lookup_value (as sm@118@01  $FVF<value>) r))
    :pattern (($FVF.lookup_value $t@91@01 r))
    :qid |qp.fvfValDef11|))
  (forall ((r $Ref)) (!
    (=>
      (ite
        (and
          (img@72@01 r)
          (Seq_contains (Seq_range 0 (Seq_length S@63@01)) (inv@71@01 r)))
        (<
          $Perm.No
          (-
            (-
              (-
                (- (- $Perm.Write (pTaken@80@01 r)) (pTaken@88@01 r))
                (pTaken@95@01 r))
              (pTaken@99@01 r))
            (pTaken@104@01 r)))
        false)
      (=
        ($FVF.lookup_value (as sm@118@01  $FVF<value>) r)
        ($FVF.lookup_value ($SortWrappers.$SnapTo$FVF<value> ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@67@01))))))) r)))
    :pattern (($FVF.lookup_value (as sm@118@01  $FVF<value>) r))
    :pattern (($FVF.lookup_value ($SortWrappers.$SnapTo$FVF<value> ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@67@01))))))) r))
    :qid |qp.fvfValDef12|))
  (forall ((r $Ref)) (!
    (=>
      (ite
        (and (img@84@01 r) (Seq_contains (Seq_range 0 k@64@01) (inv@83@01 r)))
        (<
          $Perm.No
          (- (- (/ (to_real 1) (to_real 2)) (pTaken@100@01 r)) (pTaken@103@01 r)))
        false)
      (=
        ($FVF.lookup_value (as sm@118@01  $FVF<value>) r)
        ($FVF.lookup_value $t@82@01 r)))
    :pattern (($FVF.lookup_value (as sm@118@01  $FVF<value>) r))
    :pattern (($FVF.lookup_value $t@82@01 r))
    :qid |qp.fvfValDef13|))))
(push) ; 3
(assert (not (<
  $Perm.No
  (+
    (+
      (+
        (+
          (+
            (ite
              (= (Seq_index S@63@01 k@64@01) (Seq_index S@63@01 b@66@01))
              $Perm.Write
              $Perm.No)
            (ite
              (= (Seq_index S@63@01 k@64@01) (Seq_index S@63@01 k@64@01))
              (-
                (- $Perm.Write (pTaken@101@01 (Seq_index S@63@01 k@64@01)))
                (pTaken@107@01 (Seq_index S@63@01 k@64@01)))
              $Perm.No))
          (ite
            (= (Seq_index S@63@01 k@64@01) (Seq_index S@63@01 a@65@01))
            $Perm.Write
            $Perm.No))
        (ite
          (and
            (img@93@01 (Seq_index S@63@01 k@64@01))
            (Seq_contains
              (Seq_range k@64@01 (Seq_length S@63@01))
              (inv@92@01 (Seq_index S@63@01 k@64@01))))
          (-
            (-
              (-
                (/ (to_real 1) (to_real 2))
                (pTaken@96@01 (Seq_index S@63@01 k@64@01)))
              (pTaken@98@01 (Seq_index S@63@01 k@64@01)))
            (pTaken@105@01 (Seq_index S@63@01 k@64@01)))
          $Perm.No))
      (ite
        (and
          (img@72@01 (Seq_index S@63@01 k@64@01))
          (Seq_contains
            (Seq_range 0 (Seq_length S@63@01))
            (inv@71@01 (Seq_index S@63@01 k@64@01))))
        (-
          (-
            (-
              (-
                (- $Perm.Write (pTaken@80@01 (Seq_index S@63@01 k@64@01)))
                (pTaken@88@01 (Seq_index S@63@01 k@64@01)))
              (pTaken@95@01 (Seq_index S@63@01 k@64@01)))
            (pTaken@99@01 (Seq_index S@63@01 k@64@01)))
          (pTaken@104@01 (Seq_index S@63@01 k@64@01)))
        $Perm.No))
    (ite
      (and
        (img@84@01 (Seq_index S@63@01 k@64@01))
        (Seq_contains
          (Seq_range 0 k@64@01)
          (inv@83@01 (Seq_index S@63@01 k@64@01))))
      (-
        (-
          (/ (to_real 1) (to_real 2))
          (pTaken@100@01 (Seq_index S@63@01 k@64@01)))
        (pTaken@103@01 (Seq_index S@63@01 k@64@01)))
      $Perm.No)))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(push) ; 3
(assert (not (= ($FVF.lookup_value (as sm@118@01  $FVF<value>) (Seq_index S@63@01 k@64@01)) 0)))
(check-sat)
; unknown
(pop) ; 3
; 0.01s
; (get-info :all-statistics)
; [state consolidation]
; State saturation: before repetition
(set-option :timeout 10)
(check-sat)
; unknown
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (forall ((r $Ref)) (!
  (and
    (= (Seq_index S@63@01 j@70@01) (Seq_index S@63@01 o@81@01))
    (=
      (and
        (img@72@01 r)
        (Seq_contains (Seq_range 0 (Seq_length S@63@01)) (inv@71@01 r)))
      (and (img@84@01 r) (Seq_contains (Seq_range 0 k@64@01) (inv@83@01 r)))))
  
  :qid |quant-u-11044|))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (forall ((r $Ref)) (!
  (and
    (= (Seq_index S@63@01 q@90@01) (Seq_index S@63@01 j@70@01))
    (=
      (and
        (img@93@01 r)
        (Seq_contains (Seq_range k@64@01 (Seq_length S@63@01)) (inv@92@01 r)))
      (and
        (img@72@01 r)
        (Seq_contains (Seq_range 0 (Seq_length S@63@01)) (inv@71@01 r)))))
  
  :qid |quant-u-11045|))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (forall ((r $Ref)) (!
  (and
    (= (Seq_index S@63@01 q@90@01) (Seq_index S@63@01 o@81@01))
    (=
      (and
        (img@93@01 r)
        (Seq_contains (Seq_range k@64@01 (Seq_length S@63@01)) (inv@92@01 r)))
      (and (img@84@01 r) (Seq_contains (Seq_range 0 k@64@01) (inv@83@01 r)))))
  
  :qid |quant-u-11046|))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (and
  (and
    (= (Seq_index S@63@01 k@64@01) (Seq_index S@63@01 k@64@01))
    (= (Seq_index S@63@01 a@65@01) (Seq_index S@63@01 a@65@01)))
  (= (Seq_index S@63@01 k@64@01) (Seq_index S@63@01 a@65@01)))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (and
  (and
    (= (Seq_index S@63@01 b@66@01) (Seq_index S@63@01 b@66@01))
    (= (Seq_index S@63@01 k@64@01) (Seq_index S@63@01 k@64@01)))
  (= (Seq_index S@63@01 b@66@01) (Seq_index S@63@01 k@64@01)))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (and
  (and
    (= (Seq_index S@63@01 b@66@01) (Seq_index S@63@01 b@66@01))
    (= (Seq_index S@63@01 a@65@01) (Seq_index S@63@01 a@65@01)))
  (= (Seq_index S@63@01 b@66@01) (Seq_index S@63@01 a@65@01)))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (<
  $Perm.Write
  (+
    (ite
      (= (Seq_index S@63@01 b@66@01) (Seq_index S@63@01 b@66@01))
      $Perm.Write
      $Perm.No)
    (ite
      (= (Seq_index S@63@01 k@64@01) (Seq_index S@63@01 k@64@01))
      (-
        (- $Perm.Write (pTaken@101@01 (Seq_index S@63@01 k@64@01)))
        (pTaken@107@01 (Seq_index S@63@01 k@64@01)))
      $Perm.No)))))
(check-sat)
; unknown
(pop) ; 3
; 0.01s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (<
  $Perm.Write
  (+
    (ite
      (= (Seq_index S@63@01 b@66@01) (Seq_index S@63@01 b@66@01))
      $Perm.Write
      $Perm.No)
    (ite
      (= (Seq_index S@63@01 a@65@01) (Seq_index S@63@01 a@65@01))
      $Perm.Write
      $Perm.No)))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (<
  $Perm.Write
  (+
    (ite
      (= (Seq_index S@63@01 k@64@01) (Seq_index S@63@01 k@64@01))
      (-
        (- $Perm.Write (pTaken@101@01 (Seq_index S@63@01 k@64@01)))
        (pTaken@107@01 (Seq_index S@63@01 k@64@01)))
      $Perm.No)
    (ite
      (= (Seq_index S@63@01 b@66@01) (Seq_index S@63@01 b@66@01))
      $Perm.Write
      $Perm.No)))))
(check-sat)
; unknown
(pop) ; 3
; 0.01s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (<
  $Perm.Write
  (+
    (ite
      (= (Seq_index S@63@01 k@64@01) (Seq_index S@63@01 k@64@01))
      (-
        (- $Perm.Write (pTaken@101@01 (Seq_index S@63@01 k@64@01)))
        (pTaken@107@01 (Seq_index S@63@01 k@64@01)))
      $Perm.No)
    (ite
      (= (Seq_index S@63@01 a@65@01) (Seq_index S@63@01 a@65@01))
      $Perm.Write
      $Perm.No)))))
(check-sat)
; unknown
(pop) ; 3
; 0.01s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (<
  $Perm.Write
  (+
    (ite
      (= (Seq_index S@63@01 a@65@01) (Seq_index S@63@01 a@65@01))
      $Perm.Write
      $Perm.No)
    (ite
      (= (Seq_index S@63@01 b@66@01) (Seq_index S@63@01 b@66@01))
      $Perm.Write
      $Perm.No)))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (<
  $Perm.Write
  (+
    (ite
      (= (Seq_index S@63@01 a@65@01) (Seq_index S@63@01 a@65@01))
      $Perm.Write
      $Perm.No)
    (ite
      (= (Seq_index S@63@01 k@64@01) (Seq_index S@63@01 k@64@01))
      (-
        (- $Perm.Write (pTaken@101@01 (Seq_index S@63@01 k@64@01)))
        (pTaken@107@01 (Seq_index S@63@01 k@64@01)))
      $Perm.No)))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (and
  (and
    (= (Seq_index S@63@01 b@66@01) (Seq_index S@63@01 b@66@01))
    (ite
      (= (Seq_index S@63@01 k@64@01) (Seq_index S@63@01 k@64@01))
      (<
        $Perm.No
        (-
          (- $Perm.Write (pTaken@101@01 (Seq_index S@63@01 k@64@01)))
          (pTaken@107@01 (Seq_index S@63@01 k@64@01))))
      false))
  (not
    (=
      ($FVF.lookup_value (as sm@108@01  $FVF<value>) (Seq_index S@63@01 b@66@01))
      ($FVF.lookup_value (as sm@97@01  $FVF<value>) (Seq_index S@63@01 k@64@01)))))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (and
  (and
    (= (Seq_index S@63@01 b@66@01) (Seq_index S@63@01 b@66@01))
    (= (Seq_index S@63@01 a@65@01) (Seq_index S@63@01 a@65@01)))
  (not
    (=
      ($FVF.lookup_value (as sm@108@01  $FVF<value>) (Seq_index S@63@01 b@66@01))
      ($FVF.lookup_value (as sm@102@01  $FVF<value>) (Seq_index S@63@01 a@65@01)))))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (and
  (and
    (ite
      (= (Seq_index S@63@01 k@64@01) (Seq_index S@63@01 k@64@01))
      (<
        $Perm.No
        (-
          (- $Perm.Write (pTaken@101@01 (Seq_index S@63@01 k@64@01)))
          (pTaken@107@01 (Seq_index S@63@01 k@64@01))))
      false)
    (= (Seq_index S@63@01 b@66@01) (Seq_index S@63@01 b@66@01)))
  (not
    (=
      ($FVF.lookup_value (as sm@97@01  $FVF<value>) (Seq_index S@63@01 k@64@01))
      ($FVF.lookup_value (as sm@108@01  $FVF<value>) (Seq_index S@63@01 b@66@01)))))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (and
  (and
    (ite
      (= (Seq_index S@63@01 k@64@01) (Seq_index S@63@01 k@64@01))
      (<
        $Perm.No
        (-
          (- $Perm.Write (pTaken@101@01 (Seq_index S@63@01 k@64@01)))
          (pTaken@107@01 (Seq_index S@63@01 k@64@01))))
      false)
    (= (Seq_index S@63@01 a@65@01) (Seq_index S@63@01 a@65@01)))
  (not
    (=
      ($FVF.lookup_value (as sm@97@01  $FVF<value>) (Seq_index S@63@01 k@64@01))
      ($FVF.lookup_value (as sm@102@01  $FVF<value>) (Seq_index S@63@01 a@65@01)))))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (and
  (and
    (= (Seq_index S@63@01 a@65@01) (Seq_index S@63@01 a@65@01))
    (= (Seq_index S@63@01 b@66@01) (Seq_index S@63@01 b@66@01)))
  (not
    (=
      ($FVF.lookup_value (as sm@102@01  $FVF<value>) (Seq_index S@63@01 a@65@01))
      ($FVF.lookup_value (as sm@108@01  $FVF<value>) (Seq_index S@63@01 b@66@01)))))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (and
  (and
    (= (Seq_index S@63@01 a@65@01) (Seq_index S@63@01 a@65@01))
    (ite
      (= (Seq_index S@63@01 k@64@01) (Seq_index S@63@01 k@64@01))
      (<
        $Perm.No
        (-
          (- $Perm.Write (pTaken@101@01 (Seq_index S@63@01 k@64@01)))
          (pTaken@107@01 (Seq_index S@63@01 k@64@01))))
      false))
  (not
    (=
      ($FVF.lookup_value (as sm@102@01  $FVF<value>) (Seq_index S@63@01 a@65@01))
      ($FVF.lookup_value (as sm@97@01  $FVF<value>) (Seq_index S@63@01 k@64@01)))))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(assert (and
  (not (= (Seq_index S@63@01 b@66@01) (Seq_index S@63@01 a@65@01)))
  (not (= (Seq_index S@63@01 a@65@01) (Seq_index S@63@01 b@66@01)))))
(assert (and
  (not (= (Seq_index S@63@01 b@66@01) (Seq_index S@63@01 a@65@01)))
  (not (= (Seq_index S@63@01 a@65@01) (Seq_index S@63@01 b@66@01)))))
; Definitional axioms for snapshot map values
(assert (<=
  ($FVF.perm_value (as pm@119@01  $FPM) (Seq_index S@63@01 b@66@01))
  $Perm.Write))
(assert (<=
  ($FVF.perm_value (as pm@119@01  $FPM) (Seq_index S@63@01 k@64@01))
  $Perm.Write))
(assert (<=
  ($FVF.perm_value (as pm@119@01  $FPM) (Seq_index S@63@01 a@65@01))
  $Perm.Write))
; Assume upper permission bound for field value
(assert (forall ((r $Ref)) (!
  (<= ($FVF.perm_value (as pm@119@01  $FPM) r) $Perm.Write)
  :pattern ((inv@92@01 r))
  :qid |qp-fld-prm-bnd|)))
; Assume upper permission bound for field value
(assert (forall ((r $Ref)) (!
  (<= ($FVF.perm_value (as pm@119@01  $FPM) r) $Perm.Write)
  :pattern ((inv@71@01 r))
  :qid |qp-fld-prm-bnd|)))
; Assume upper permission bound for field value
(assert (forall ((r $Ref)) (!
  (<= ($FVF.perm_value (as pm@119@01  $FPM) r) $Perm.Write)
  :pattern ((inv@83@01 r))
  :qid |qp-fld-prm-bnd|)))
; [eval] S[k].value == 0
; [eval] S[k]
(set-option :timeout 0)
(push) ; 3
(assert (not (>= k@64@01 0)))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(declare-const sm@120@01 $FVF<value>)
; Definitional axioms for snapshot map values
(assert (forall ((r $Ref)) (!
  (=>
    (ite
      (and (img@84@01 r) (Seq_contains (Seq_range 0 k@64@01) (inv@83@01 r)))
      (<
        $Perm.No
        (- (- (/ (to_real 1) (to_real 2)) (pTaken@100@01 r)) (pTaken@103@01 r)))
      false)
    (=
      ($FVF.lookup_value (as sm@120@01  $FVF<value>) r)
      ($FVF.lookup_value $t@82@01 r)))
  :pattern (($FVF.lookup_value (as sm@120@01  $FVF<value>) r))
  :pattern (($FVF.lookup_value $t@82@01 r))
  :qid |qp.fvfValDef15|)))
(assert (forall ((r $Ref)) (!
  (=>
    (ite
      (and
        (img@72@01 r)
        (Seq_contains (Seq_range 0 (Seq_length S@63@01)) (inv@71@01 r)))
      (<
        $Perm.No
        (-
          (-
            (-
              (- (- $Perm.Write (pTaken@80@01 r)) (pTaken@88@01 r))
              (pTaken@95@01 r))
            (pTaken@99@01 r))
          (pTaken@104@01 r)))
      false)
    (=
      ($FVF.lookup_value (as sm@120@01  $FVF<value>) r)
      ($FVF.lookup_value ($SortWrappers.$SnapTo$FVF<value> ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@67@01))))))) r)))
  :pattern (($FVF.lookup_value (as sm@120@01  $FVF<value>) r))
  :pattern (($FVF.lookup_value ($SortWrappers.$SnapTo$FVF<value> ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@67@01))))))) r))
  :qid |qp.fvfValDef16|)))
(assert (forall ((r $Ref)) (!
  (=>
    (ite
      (and
        (img@93@01 r)
        (Seq_contains (Seq_range k@64@01 (Seq_length S@63@01)) (inv@92@01 r)))
      (<
        $Perm.No
        (-
          (- (- (/ (to_real 1) (to_real 2)) (pTaken@96@01 r)) (pTaken@98@01 r))
          (pTaken@105@01 r)))
      false)
    (=
      ($FVF.lookup_value (as sm@120@01  $FVF<value>) r)
      ($FVF.lookup_value $t@91@01 r)))
  :pattern (($FVF.lookup_value (as sm@120@01  $FVF<value>) r))
  :pattern (($FVF.lookup_value $t@91@01 r))
  :qid |qp.fvfValDef17|)))
(assert (forall ((r $Ref)) (!
  (=>
    (= r (Seq_index S@63@01 a@65@01))
    (=
      ($FVF.lookup_value (as sm@120@01  $FVF<value>) r)
      ($FVF.lookup_value (as sm@102@01  $FVF<value>) r)))
  :pattern (($FVF.lookup_value (as sm@120@01  $FVF<value>) r))
  :pattern (($FVF.lookup_value (as sm@102@01  $FVF<value>) r))
  :qid |qp.fvfValDef18|)))
(assert (forall ((r $Ref)) (!
  (=>
    (ite
      (= r (Seq_index S@63@01 k@64@01))
      (< $Perm.No (- (- $Perm.Write (pTaken@101@01 r)) (pTaken@107@01 r)))
      false)
    (=
      ($FVF.lookup_value (as sm@120@01  $FVF<value>) r)
      ($FVF.lookup_value (as sm@97@01  $FVF<value>) r)))
  :pattern (($FVF.lookup_value (as sm@120@01  $FVF<value>) r))
  :pattern (($FVF.lookup_value (as sm@97@01  $FVF<value>) r))
  :qid |qp.fvfValDef19|)))
(assert (forall ((r $Ref)) (!
  (=>
    (= r (Seq_index S@63@01 b@66@01))
    (=
      ($FVF.lookup_value (as sm@120@01  $FVF<value>) r)
      ($FVF.lookup_value (as sm@108@01  $FVF<value>) r)))
  :pattern (($FVF.lookup_value (as sm@120@01  $FVF<value>) r))
  :pattern (($FVF.lookup_value (as sm@108@01  $FVF<value>) r))
  :qid |qp.fvfValDef20|)))
(declare-const pm@121@01 $FPM)
(assert (forall ((r $Ref)) (!
  (=
    ($FVF.perm_value (as pm@121@01  $FPM) r)
    (+
      (+
        (+
          (+
            (+
              (ite
                (and
                  (img@84@01 r)
                  (Seq_contains (Seq_range 0 k@64@01) (inv@83@01 r)))
                (-
                  (- (/ (to_real 1) (to_real 2)) (pTaken@100@01 r))
                  (pTaken@103@01 r))
                $Perm.No)
              (ite
                (and
                  (img@72@01 r)
                  (Seq_contains (Seq_range 0 (Seq_length S@63@01)) (inv@71@01 r)))
                (-
                  (-
                    (-
                      (- (- $Perm.Write (pTaken@80@01 r)) (pTaken@88@01 r))
                      (pTaken@95@01 r))
                    (pTaken@99@01 r))
                  (pTaken@104@01 r))
                $Perm.No))
            (ite
              (and
                (img@93@01 r)
                (Seq_contains
                  (Seq_range k@64@01 (Seq_length S@63@01))
                  (inv@92@01 r)))
              (-
                (-
                  (- (/ (to_real 1) (to_real 2)) (pTaken@96@01 r))
                  (pTaken@98@01 r))
                (pTaken@105@01 r))
              $Perm.No))
          (ite (= r (Seq_index S@63@01 a@65@01)) $Perm.Write $Perm.No))
        (ite
          (= r (Seq_index S@63@01 k@64@01))
          (- (- $Perm.Write (pTaken@101@01 r)) (pTaken@107@01 r))
          $Perm.No))
      (ite (= r (Seq_index S@63@01 b@66@01)) $Perm.Write $Perm.No)))
  :pattern (($FVF.perm_value (as pm@121@01  $FPM) r))
  :qid |qp.resPrmSumDef21|)))
(push) ; 3
(assert (not (< $Perm.No ($FVF.perm_value (as pm@121@01  $FPM) (Seq_index S@63@01 k@64@01)))))
(check-sat)
; unsat
(pop) ; 3
; 0.01s
; (get-info :all-statistics)
(push) ; 3
(assert (not (= ($FVF.lookup_value (as sm@120@01  $FVF<value>) (Seq_index S@63@01 k@64@01)) 0)))
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
; [eval] S[k].value == 0
; [eval] S[k]
(set-option :timeout 0)
(push) ; 3
(assert (not (>= k@64@01 0)))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(assert (and
  (forall ((r $Ref)) (!
    (=>
      (= r (Seq_index S@63@01 b@66@01))
      (=
        ($FVF.lookup_value (as sm@118@01  $FVF<value>) r)
        ($FVF.lookup_value (as sm@108@01  $FVF<value>) r)))
    :pattern (($FVF.lookup_value (as sm@118@01  $FVF<value>) r))
    :pattern (($FVF.lookup_value (as sm@108@01  $FVF<value>) r))
    :qid |qp.fvfValDef8|))
  (forall ((r $Ref)) (!
    (=>
      (ite
        (= r (Seq_index S@63@01 k@64@01))
        (< $Perm.No (- (- $Perm.Write (pTaken@101@01 r)) (pTaken@107@01 r)))
        false)
      (=
        ($FVF.lookup_value (as sm@118@01  $FVF<value>) r)
        ($FVF.lookup_value (as sm@97@01  $FVF<value>) r)))
    :pattern (($FVF.lookup_value (as sm@118@01  $FVF<value>) r))
    :pattern (($FVF.lookup_value (as sm@97@01  $FVF<value>) r))
    :qid |qp.fvfValDef9|))
  (forall ((r $Ref)) (!
    (=>
      (= r (Seq_index S@63@01 a@65@01))
      (=
        ($FVF.lookup_value (as sm@118@01  $FVF<value>) r)
        ($FVF.lookup_value (as sm@102@01  $FVF<value>) r)))
    :pattern (($FVF.lookup_value (as sm@118@01  $FVF<value>) r))
    :pattern (($FVF.lookup_value (as sm@102@01  $FVF<value>) r))
    :qid |qp.fvfValDef10|))
  (forall ((r $Ref)) (!
    (=>
      (ite
        (and
          (img@93@01 r)
          (Seq_contains (Seq_range k@64@01 (Seq_length S@63@01)) (inv@92@01 r)))
        (<
          $Perm.No
          (-
            (- (- (/ (to_real 1) (to_real 2)) (pTaken@96@01 r)) (pTaken@98@01 r))
            (pTaken@105@01 r)))
        false)
      (=
        ($FVF.lookup_value (as sm@118@01  $FVF<value>) r)
        ($FVF.lookup_value $t@91@01 r)))
    :pattern (($FVF.lookup_value (as sm@118@01  $FVF<value>) r))
    :pattern (($FVF.lookup_value $t@91@01 r))
    :qid |qp.fvfValDef11|))
  (forall ((r $Ref)) (!
    (=>
      (ite
        (and
          (img@72@01 r)
          (Seq_contains (Seq_range 0 (Seq_length S@63@01)) (inv@71@01 r)))
        (<
          $Perm.No
          (-
            (-
              (-
                (- (- $Perm.Write (pTaken@80@01 r)) (pTaken@88@01 r))
                (pTaken@95@01 r))
              (pTaken@99@01 r))
            (pTaken@104@01 r)))
        false)
      (=
        ($FVF.lookup_value (as sm@118@01  $FVF<value>) r)
        ($FVF.lookup_value ($SortWrappers.$SnapTo$FVF<value> ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@67@01))))))) r)))
    :pattern (($FVF.lookup_value (as sm@118@01  $FVF<value>) r))
    :pattern (($FVF.lookup_value ($SortWrappers.$SnapTo$FVF<value> ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@67@01))))))) r))
    :qid |qp.fvfValDef12|))
  (forall ((r $Ref)) (!
    (=>
      (ite
        (and (img@84@01 r) (Seq_contains (Seq_range 0 k@64@01) (inv@83@01 r)))
        (<
          $Perm.No
          (- (- (/ (to_real 1) (to_real 2)) (pTaken@100@01 r)) (pTaken@103@01 r)))
        false)
      (=
        ($FVF.lookup_value (as sm@118@01  $FVF<value>) r)
        ($FVF.lookup_value $t@82@01 r)))
    :pattern (($FVF.lookup_value (as sm@118@01  $FVF<value>) r))
    :pattern (($FVF.lookup_value $t@82@01 r))
    :qid |qp.fvfValDef13|))))
(push) ; 3
(assert (not (<
  $Perm.No
  (+
    (+
      (+
        (+
          (+
            (ite
              (= (Seq_index S@63@01 k@64@01) (Seq_index S@63@01 b@66@01))
              $Perm.Write
              $Perm.No)
            (ite
              (= (Seq_index S@63@01 k@64@01) (Seq_index S@63@01 k@64@01))
              (-
                (- $Perm.Write (pTaken@101@01 (Seq_index S@63@01 k@64@01)))
                (pTaken@107@01 (Seq_index S@63@01 k@64@01)))
              $Perm.No))
          (ite
            (= (Seq_index S@63@01 k@64@01) (Seq_index S@63@01 a@65@01))
            $Perm.Write
            $Perm.No))
        (ite
          (and
            (img@93@01 (Seq_index S@63@01 k@64@01))
            (Seq_contains
              (Seq_range k@64@01 (Seq_length S@63@01))
              (inv@92@01 (Seq_index S@63@01 k@64@01))))
          (-
            (-
              (-
                (/ (to_real 1) (to_real 2))
                (pTaken@96@01 (Seq_index S@63@01 k@64@01)))
              (pTaken@98@01 (Seq_index S@63@01 k@64@01)))
            (pTaken@105@01 (Seq_index S@63@01 k@64@01)))
          $Perm.No))
      (ite
        (and
          (img@72@01 (Seq_index S@63@01 k@64@01))
          (Seq_contains
            (Seq_range 0 (Seq_length S@63@01))
            (inv@71@01 (Seq_index S@63@01 k@64@01))))
        (-
          (-
            (-
              (-
                (- $Perm.Write (pTaken@80@01 (Seq_index S@63@01 k@64@01)))
                (pTaken@88@01 (Seq_index S@63@01 k@64@01)))
              (pTaken@95@01 (Seq_index S@63@01 k@64@01)))
            (pTaken@99@01 (Seq_index S@63@01 k@64@01)))
          (pTaken@104@01 (Seq_index S@63@01 k@64@01)))
        $Perm.No))
    (ite
      (and
        (img@84@01 (Seq_index S@63@01 k@64@01))
        (Seq_contains
          (Seq_range 0 k@64@01)
          (inv@83@01 (Seq_index S@63@01 k@64@01))))
      (-
        (-
          (/ (to_real 1) (to_real 2))
          (pTaken@100@01 (Seq_index S@63@01 k@64@01)))
        (pTaken@103@01 (Seq_index S@63@01 k@64@01)))
      $Perm.No)))))
(check-sat)
; unsat
(pop) ; 3
; 0.01s
; (get-info :all-statistics)
(push) ; 3
(assert (not (= ($FVF.lookup_value (as sm@118@01  $FVF<value>) (Seq_index S@63@01 k@64@01)) 0)))
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
(assert (not (forall ((r $Ref)) (!
  (and
    (= (Seq_index S@63@01 j@70@01) (Seq_index S@63@01 o@81@01))
    (=
      (and
        (img@72@01 r)
        (Seq_contains (Seq_range 0 (Seq_length S@63@01)) (inv@71@01 r)))
      (and (img@84@01 r) (Seq_contains (Seq_range 0 k@64@01) (inv@83@01 r)))))
  
  :qid |quant-u-11047|))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (forall ((r $Ref)) (!
  (and
    (= (Seq_index S@63@01 q@90@01) (Seq_index S@63@01 j@70@01))
    (=
      (and
        (img@93@01 r)
        (Seq_contains (Seq_range k@64@01 (Seq_length S@63@01)) (inv@92@01 r)))
      (and
        (img@72@01 r)
        (Seq_contains (Seq_range 0 (Seq_length S@63@01)) (inv@71@01 r)))))
  
  :qid |quant-u-11048|))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (forall ((r $Ref)) (!
  (and
    (= (Seq_index S@63@01 q@90@01) (Seq_index S@63@01 o@81@01))
    (=
      (and
        (img@93@01 r)
        (Seq_contains (Seq_range k@64@01 (Seq_length S@63@01)) (inv@92@01 r)))
      (and (img@84@01 r) (Seq_contains (Seq_range 0 k@64@01) (inv@83@01 r)))))
  
  :qid |quant-u-11049|))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (and
  (and
    (= (Seq_index S@63@01 k@64@01) (Seq_index S@63@01 k@64@01))
    (= (Seq_index S@63@01 a@65@01) (Seq_index S@63@01 a@65@01)))
  (= (Seq_index S@63@01 k@64@01) (Seq_index S@63@01 a@65@01)))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (and
  (and
    (= (Seq_index S@63@01 b@66@01) (Seq_index S@63@01 b@66@01))
    (= (Seq_index S@63@01 k@64@01) (Seq_index S@63@01 k@64@01)))
  (= (Seq_index S@63@01 b@66@01) (Seq_index S@63@01 k@64@01)))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (and
  (and
    (= (Seq_index S@63@01 b@66@01) (Seq_index S@63@01 b@66@01))
    (= (Seq_index S@63@01 a@65@01) (Seq_index S@63@01 a@65@01)))
  (= (Seq_index S@63@01 b@66@01) (Seq_index S@63@01 a@65@01)))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (<
  $Perm.Write
  (+
    (ite
      (= (Seq_index S@63@01 b@66@01) (Seq_index S@63@01 b@66@01))
      $Perm.Write
      $Perm.No)
    (ite
      (= (Seq_index S@63@01 k@64@01) (Seq_index S@63@01 k@64@01))
      (-
        (- $Perm.Write (pTaken@101@01 (Seq_index S@63@01 k@64@01)))
        (pTaken@107@01 (Seq_index S@63@01 k@64@01)))
      $Perm.No)))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (<
  $Perm.Write
  (+
    (ite
      (= (Seq_index S@63@01 b@66@01) (Seq_index S@63@01 b@66@01))
      $Perm.Write
      $Perm.No)
    (ite
      (= (Seq_index S@63@01 a@65@01) (Seq_index S@63@01 a@65@01))
      $Perm.Write
      $Perm.No)))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (<
  $Perm.Write
  (+
    (ite
      (= (Seq_index S@63@01 k@64@01) (Seq_index S@63@01 k@64@01))
      (-
        (- $Perm.Write (pTaken@101@01 (Seq_index S@63@01 k@64@01)))
        (pTaken@107@01 (Seq_index S@63@01 k@64@01)))
      $Perm.No)
    (ite
      (= (Seq_index S@63@01 b@66@01) (Seq_index S@63@01 b@66@01))
      $Perm.Write
      $Perm.No)))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (<
  $Perm.Write
  (+
    (ite
      (= (Seq_index S@63@01 k@64@01) (Seq_index S@63@01 k@64@01))
      (-
        (- $Perm.Write (pTaken@101@01 (Seq_index S@63@01 k@64@01)))
        (pTaken@107@01 (Seq_index S@63@01 k@64@01)))
      $Perm.No)
    (ite
      (= (Seq_index S@63@01 a@65@01) (Seq_index S@63@01 a@65@01))
      $Perm.Write
      $Perm.No)))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (<
  $Perm.Write
  (+
    (ite
      (= (Seq_index S@63@01 a@65@01) (Seq_index S@63@01 a@65@01))
      $Perm.Write
      $Perm.No)
    (ite
      (= (Seq_index S@63@01 b@66@01) (Seq_index S@63@01 b@66@01))
      $Perm.Write
      $Perm.No)))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (<
  $Perm.Write
  (+
    (ite
      (= (Seq_index S@63@01 a@65@01) (Seq_index S@63@01 a@65@01))
      $Perm.Write
      $Perm.No)
    (ite
      (= (Seq_index S@63@01 k@64@01) (Seq_index S@63@01 k@64@01))
      (-
        (- $Perm.Write (pTaken@101@01 (Seq_index S@63@01 k@64@01)))
        (pTaken@107@01 (Seq_index S@63@01 k@64@01)))
      $Perm.No)))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (and
  (and
    (= (Seq_index S@63@01 b@66@01) (Seq_index S@63@01 b@66@01))
    (ite
      (= (Seq_index S@63@01 k@64@01) (Seq_index S@63@01 k@64@01))
      (<
        $Perm.No
        (-
          (- $Perm.Write (pTaken@101@01 (Seq_index S@63@01 k@64@01)))
          (pTaken@107@01 (Seq_index S@63@01 k@64@01))))
      false))
  (not
    (=
      ($FVF.lookup_value (as sm@108@01  $FVF<value>) (Seq_index S@63@01 b@66@01))
      ($FVF.lookup_value (as sm@97@01  $FVF<value>) (Seq_index S@63@01 k@64@01)))))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (and
  (and
    (= (Seq_index S@63@01 b@66@01) (Seq_index S@63@01 b@66@01))
    (= (Seq_index S@63@01 a@65@01) (Seq_index S@63@01 a@65@01)))
  (not
    (=
      ($FVF.lookup_value (as sm@108@01  $FVF<value>) (Seq_index S@63@01 b@66@01))
      ($FVF.lookup_value (as sm@102@01  $FVF<value>) (Seq_index S@63@01 a@65@01)))))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (and
  (and
    (ite
      (= (Seq_index S@63@01 k@64@01) (Seq_index S@63@01 k@64@01))
      (<
        $Perm.No
        (-
          (- $Perm.Write (pTaken@101@01 (Seq_index S@63@01 k@64@01)))
          (pTaken@107@01 (Seq_index S@63@01 k@64@01))))
      false)
    (= (Seq_index S@63@01 b@66@01) (Seq_index S@63@01 b@66@01)))
  (not
    (=
      ($FVF.lookup_value (as sm@97@01  $FVF<value>) (Seq_index S@63@01 k@64@01))
      ($FVF.lookup_value (as sm@108@01  $FVF<value>) (Seq_index S@63@01 b@66@01)))))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (and
  (and
    (ite
      (= (Seq_index S@63@01 k@64@01) (Seq_index S@63@01 k@64@01))
      (<
        $Perm.No
        (-
          (- $Perm.Write (pTaken@101@01 (Seq_index S@63@01 k@64@01)))
          (pTaken@107@01 (Seq_index S@63@01 k@64@01))))
      false)
    (= (Seq_index S@63@01 a@65@01) (Seq_index S@63@01 a@65@01)))
  (not
    (=
      ($FVF.lookup_value (as sm@97@01  $FVF<value>) (Seq_index S@63@01 k@64@01))
      ($FVF.lookup_value (as sm@102@01  $FVF<value>) (Seq_index S@63@01 a@65@01)))))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (and
  (and
    (= (Seq_index S@63@01 a@65@01) (Seq_index S@63@01 a@65@01))
    (= (Seq_index S@63@01 b@66@01) (Seq_index S@63@01 b@66@01)))
  (not
    (=
      ($FVF.lookup_value (as sm@102@01  $FVF<value>) (Seq_index S@63@01 a@65@01))
      ($FVF.lookup_value (as sm@108@01  $FVF<value>) (Seq_index S@63@01 b@66@01)))))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (and
  (and
    (= (Seq_index S@63@01 a@65@01) (Seq_index S@63@01 a@65@01))
    (ite
      (= (Seq_index S@63@01 k@64@01) (Seq_index S@63@01 k@64@01))
      (<
        $Perm.No
        (-
          (- $Perm.Write (pTaken@101@01 (Seq_index S@63@01 k@64@01)))
          (pTaken@107@01 (Seq_index S@63@01 k@64@01))))
      false))
  (not
    (=
      ($FVF.lookup_value (as sm@102@01  $FVF<value>) (Seq_index S@63@01 a@65@01))
      ($FVF.lookup_value (as sm@97@01  $FVF<value>) (Seq_index S@63@01 k@64@01)))))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(assert (and
  (not (= (Seq_index S@63@01 b@66@01) (Seq_index S@63@01 a@65@01)))
  (not (= (Seq_index S@63@01 a@65@01) (Seq_index S@63@01 b@66@01)))))
(assert (and
  (not (= (Seq_index S@63@01 b@66@01) (Seq_index S@63@01 a@65@01)))
  (not (= (Seq_index S@63@01 a@65@01) (Seq_index S@63@01 b@66@01)))))
; Definitional axioms for snapshot map values
; Assume upper permission bound for field value
; Assume upper permission bound for field value
; Assume upper permission bound for field value
; [eval] S[k].value == 0
; [eval] S[k]
(set-option :timeout 0)
(push) ; 3
(assert (not (>= k@64@01 0)))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(declare-const sm@122@01 $FVF<value>)
; Definitional axioms for snapshot map values
(assert (forall ((r $Ref)) (!
  (=>
    (ite
      (and (img@84@01 r) (Seq_contains (Seq_range 0 k@64@01) (inv@83@01 r)))
      (<
        $Perm.No
        (- (- (/ (to_real 1) (to_real 2)) (pTaken@100@01 r)) (pTaken@103@01 r)))
      false)
    (=
      ($FVF.lookup_value (as sm@122@01  $FVF<value>) r)
      ($FVF.lookup_value $t@82@01 r)))
  :pattern (($FVF.lookup_value (as sm@122@01  $FVF<value>) r))
  :pattern (($FVF.lookup_value $t@82@01 r))
  :qid |qp.fvfValDef22|)))
(assert (forall ((r $Ref)) (!
  (=>
    (ite
      (and
        (img@72@01 r)
        (Seq_contains (Seq_range 0 (Seq_length S@63@01)) (inv@71@01 r)))
      (<
        $Perm.No
        (-
          (-
            (-
              (- (- $Perm.Write (pTaken@80@01 r)) (pTaken@88@01 r))
              (pTaken@95@01 r))
            (pTaken@99@01 r))
          (pTaken@104@01 r)))
      false)
    (=
      ($FVF.lookup_value (as sm@122@01  $FVF<value>) r)
      ($FVF.lookup_value ($SortWrappers.$SnapTo$FVF<value> ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@67@01))))))) r)))
  :pattern (($FVF.lookup_value (as sm@122@01  $FVF<value>) r))
  :pattern (($FVF.lookup_value ($SortWrappers.$SnapTo$FVF<value> ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@67@01))))))) r))
  :qid |qp.fvfValDef23|)))
(assert (forall ((r $Ref)) (!
  (=>
    (ite
      (and
        (img@93@01 r)
        (Seq_contains (Seq_range k@64@01 (Seq_length S@63@01)) (inv@92@01 r)))
      (<
        $Perm.No
        (-
          (- (- (/ (to_real 1) (to_real 2)) (pTaken@96@01 r)) (pTaken@98@01 r))
          (pTaken@105@01 r)))
      false)
    (=
      ($FVF.lookup_value (as sm@122@01  $FVF<value>) r)
      ($FVF.lookup_value $t@91@01 r)))
  :pattern (($FVF.lookup_value (as sm@122@01  $FVF<value>) r))
  :pattern (($FVF.lookup_value $t@91@01 r))
  :qid |qp.fvfValDef24|)))
(assert (forall ((r $Ref)) (!
  (=>
    (= r (Seq_index S@63@01 a@65@01))
    (=
      ($FVF.lookup_value (as sm@122@01  $FVF<value>) r)
      ($FVF.lookup_value (as sm@102@01  $FVF<value>) r)))
  :pattern (($FVF.lookup_value (as sm@122@01  $FVF<value>) r))
  :pattern (($FVF.lookup_value (as sm@102@01  $FVF<value>) r))
  :qid |qp.fvfValDef25|)))
(assert (forall ((r $Ref)) (!
  (=>
    (ite
      (= r (Seq_index S@63@01 k@64@01))
      (< $Perm.No (- (- $Perm.Write (pTaken@101@01 r)) (pTaken@107@01 r)))
      false)
    (=
      ($FVF.lookup_value (as sm@122@01  $FVF<value>) r)
      ($FVF.lookup_value (as sm@97@01  $FVF<value>) r)))
  :pattern (($FVF.lookup_value (as sm@122@01  $FVF<value>) r))
  :pattern (($FVF.lookup_value (as sm@97@01  $FVF<value>) r))
  :qid |qp.fvfValDef26|)))
(assert (forall ((r $Ref)) (!
  (=>
    (= r (Seq_index S@63@01 b@66@01))
    (=
      ($FVF.lookup_value (as sm@122@01  $FVF<value>) r)
      ($FVF.lookup_value (as sm@108@01  $FVF<value>) r)))
  :pattern (($FVF.lookup_value (as sm@122@01  $FVF<value>) r))
  :pattern (($FVF.lookup_value (as sm@108@01  $FVF<value>) r))
  :qid |qp.fvfValDef27|)))
(declare-const pm@123@01 $FPM)
(assert (forall ((r $Ref)) (!
  (=
    ($FVF.perm_value (as pm@123@01  $FPM) r)
    (+
      (+
        (+
          (+
            (+
              (ite
                (and
                  (img@84@01 r)
                  (Seq_contains (Seq_range 0 k@64@01) (inv@83@01 r)))
                (-
                  (- (/ (to_real 1) (to_real 2)) (pTaken@100@01 r))
                  (pTaken@103@01 r))
                $Perm.No)
              (ite
                (and
                  (img@72@01 r)
                  (Seq_contains (Seq_range 0 (Seq_length S@63@01)) (inv@71@01 r)))
                (-
                  (-
                    (-
                      (- (- $Perm.Write (pTaken@80@01 r)) (pTaken@88@01 r))
                      (pTaken@95@01 r))
                    (pTaken@99@01 r))
                  (pTaken@104@01 r))
                $Perm.No))
            (ite
              (and
                (img@93@01 r)
                (Seq_contains
                  (Seq_range k@64@01 (Seq_length S@63@01))
                  (inv@92@01 r)))
              (-
                (-
                  (- (/ (to_real 1) (to_real 2)) (pTaken@96@01 r))
                  (pTaken@98@01 r))
                (pTaken@105@01 r))
              $Perm.No))
          (ite (= r (Seq_index S@63@01 a@65@01)) $Perm.Write $Perm.No))
        (ite
          (= r (Seq_index S@63@01 k@64@01))
          (- (- $Perm.Write (pTaken@101@01 r)) (pTaken@107@01 r))
          $Perm.No))
      (ite (= r (Seq_index S@63@01 b@66@01)) $Perm.Write $Perm.No)))
  :pattern (($FVF.perm_value (as pm@123@01  $FPM) r))
  :qid |qp.resPrmSumDef28|)))
(push) ; 3
(assert (not (< $Perm.No ($FVF.perm_value (as pm@123@01  $FPM) (Seq_index S@63@01 k@64@01)))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(push) ; 3
(assert (not (= ($FVF.lookup_value (as sm@122@01  $FVF<value>) (Seq_index S@63@01 k@64@01)) 0)))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(pop) ; 2
(pop) ; 1