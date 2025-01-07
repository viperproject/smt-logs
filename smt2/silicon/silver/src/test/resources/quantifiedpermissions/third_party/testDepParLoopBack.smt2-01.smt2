(get-info :version)
; (:version "4.12.1")
; Started: 2025-01-07 13:40:12
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
(declare-sort $FVF<Ref__Integer_value> 0)
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
(declare-fun $SortWrappers.$FVF<Ref__Integer_value>To$Snap ($FVF<Ref__Integer_value>) $Snap)
(declare-fun $SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap) $FVF<Ref__Integer_value>)
(assert (forall ((x $FVF<Ref__Integer_value>)) (!
    (= x ($SortWrappers.$SnapTo$FVF<Ref__Integer_value>($SortWrappers.$FVF<Ref__Integer_value>To$Snap x)))
    :pattern (($SortWrappers.$FVF<Ref__Integer_value>To$Snap x))
    :qid |$Snap.$SnapTo$FVF<Ref__Integer_value>To$Snap|
    )))
(assert (forall ((x $Snap)) (!
    (= x ($SortWrappers.$FVF<Ref__Integer_value>To$Snap($SortWrappers.$SnapTo$FVF<Ref__Integer_value> x)))
    :pattern (($SortWrappers.$SnapTo$FVF<Ref__Integer_value> x))
    :qid |$Snap.$FVF<Ref__Integer_value>To$SnapTo$FVF<Ref__Integer_value>|
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
; /field_value_functions_declarations.smt2 [Ref__Integer_value: Int]
(declare-fun $FVF.domain_Ref__Integer_value ($FVF<Ref__Integer_value>) Set<$Ref>)
(declare-fun $FVF.lookup_Ref__Integer_value ($FVF<Ref__Integer_value> $Ref) Int)
(declare-fun $FVF.after_Ref__Integer_value ($FVF<Ref__Integer_value> $FVF<Ref__Integer_value>) Bool)
(declare-fun $FVF.loc_Ref__Integer_value (Int $Ref) Bool)
(declare-fun $FVF.perm_Ref__Integer_value ($FPM $Ref) $Perm)
(declare-const $fvfTOP_Ref__Integer_value $FVF<Ref__Integer_value>)
; Declaring symbols related to program functions (from program analysis)
(declare-fun count_list ($Snap Int Int Seq<Int> Int) Int)
(declare-fun count_list%limited ($Snap Int Int Seq<Int> Int) Int)
(declare-fun count_list%stateless (Int Int Seq<Int> Int) Bool)
(declare-fun count_list%precondition ($Snap Int Int Seq<Int> Int) Bool)
(declare-fun sum_list ($Snap Int Int Seq<Int>) Int)
(declare-fun sum_list%limited ($Snap Int Int Seq<Int>) Int)
(declare-fun sum_list%stateless (Int Int Seq<Int>) Bool)
(declare-fun sum_list%precondition ($Snap Int Int Seq<Int>) Bool)
(declare-fun count_square ($Snap Int Int Int Int Int Int Seq<$Ref> Int) Int)
(declare-fun count_square%limited ($Snap Int Int Int Int Int Int Seq<$Ref> Int) Int)
(declare-fun count_square%stateless (Int Int Int Int Int Int Seq<$Ref> Int) Bool)
(declare-fun count_square%precondition ($Snap Int Int Int Int Int Int Seq<$Ref> Int) Bool)
(declare-fun sum_array ($Snap Int Int Int Seq<$Ref>) Int)
(declare-fun sum_array%limited ($Snap Int Int Int Seq<$Ref>) Int)
(declare-fun sum_array%stateless (Int Int Int Seq<$Ref>) Bool)
(declare-fun sum_array%precondition ($Snap Int Int Int Seq<$Ref>) Bool)
(declare-fun count_array ($Snap Int Int Seq<$Ref> Int) Int)
(declare-fun count_array%limited ($Snap Int Int Seq<$Ref> Int) Int)
(declare-fun count_array%stateless (Int Int Seq<$Ref> Int) Bool)
(declare-fun count_array%precondition ($Snap Int Int Seq<$Ref> Int) Bool)
(declare-fun sum_square ($Snap Int Int Int Int Int Int Seq<$Ref>) Int)
(declare-fun sum_square%limited ($Snap Int Int Int Int Int Int Seq<$Ref>) Int)
(declare-fun sum_square%stateless (Int Int Int Int Int Int Seq<$Ref>) Bool)
(declare-fun sum_square%precondition ($Snap Int Int Int Int Int Int Seq<$Ref>) Bool)
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
; /field_value_functions_axioms.smt2 [Ref__Integer_value: Int]
(assert (forall ((vs $FVF<Ref__Integer_value>) (ws $FVF<Ref__Integer_value>)) (!
    (=>
      (and
        (Set_equal ($FVF.domain_Ref__Integer_value vs) ($FVF.domain_Ref__Integer_value ws))
        (forall ((x $Ref)) (!
          (=>
            (Set_in x ($FVF.domain_Ref__Integer_value vs))
            (= ($FVF.lookup_Ref__Integer_value vs x) ($FVF.lookup_Ref__Integer_value ws x)))
          :pattern (($FVF.lookup_Ref__Integer_value vs x) ($FVF.lookup_Ref__Integer_value ws x))
          :qid |qp.$FVF<Ref__Integer_value>-eq-inner|
          )))
      (= vs ws))
    :pattern (($SortWrappers.$FVF<Ref__Integer_value>To$Snap vs)
              ($SortWrappers.$FVF<Ref__Integer_value>To$Snap ws)
              )
    :qid |qp.$FVF<Ref__Integer_value>-eq-outer|
    )))
(assert (forall ((r $Ref) (pm $FPM)) (!
    ($Perm.isValidVar ($FVF.perm_Ref__Integer_value pm r))
    :pattern (($FVF.perm_Ref__Integer_value pm r)))))
(assert (forall ((r $Ref) (f Int)) (!
    (= ($FVF.loc_Ref__Integer_value f r) true)
    :pattern (($FVF.loc_Ref__Integer_value f r)))))
; End preamble
; ------------------------------------------------------------
; State saturation: after preamble
(set-option :timeout 100)
(check-sat)
; unknown
; ------------------------------------------------------------
; Begin function- and predicate-related preamble
; Declaring symbols related to program functions (from verification)
(declare-fun $k@39@00 () $Perm)
(declare-fun inv@40@00 ($Snap Int Int Int Int Int Int Seq<$Ref> Int $Ref) Int)
(declare-fun img@41@00 ($Snap Int Int Int Int Int Int Seq<$Ref> Int $Ref) Bool)
(declare-fun $k@45@00 () $Perm)
(declare-fun inv@46@00 ($Snap Int Int Int Int Int Int Seq<$Ref> Int $Ref) Int)
(declare-fun img@47@00 ($Snap Int Int Int Int Int Int Seq<$Ref> Int $Ref) Bool)
(declare-fun sm@48@00 ($Snap Int Int Int Int Int Int Seq<$Ref> Int) $FVF<Ref__Integer_value>)
(declare-fun $k@52@00 () $Perm)
(declare-fun inv@53@00 ($Snap Int Int Int Seq<$Ref> $Ref) Int)
(declare-fun img@54@00 ($Snap Int Int Int Seq<$Ref> $Ref) Bool)
(declare-fun $k@58@00 () $Perm)
(declare-fun inv@59@00 ($Snap Int Int Int Seq<$Ref> $Ref) Int)
(declare-fun img@60@00 ($Snap Int Int Int Seq<$Ref> $Ref) Bool)
(declare-fun sm@61@00 ($Snap Int Int Int Seq<$Ref>) $FVF<Ref__Integer_value>)
(declare-fun $k@65@00 () $Perm)
(declare-fun inv@66@00 ($Snap Int Int Seq<$Ref> Int $Ref) Int)
(declare-fun img@67@00 ($Snap Int Int Seq<$Ref> Int $Ref) Bool)
(declare-fun $k@71@00 () $Perm)
(declare-fun inv@72@00 ($Snap Int Int Seq<$Ref> Int $Ref) Int)
(declare-fun img@73@00 ($Snap Int Int Seq<$Ref> Int $Ref) Bool)
(declare-fun sm@74@00 ($Snap Int Int Seq<$Ref> Int) $FVF<Ref__Integer_value>)
(declare-fun $k@78@00 () $Perm)
(declare-fun inv@79@00 ($Snap Int Int Int Int Int Int Seq<$Ref> $Ref) Int)
(declare-fun img@80@00 ($Snap Int Int Int Int Int Int Seq<$Ref> $Ref) Bool)
(declare-fun $k@84@00 () $Perm)
(declare-fun inv@85@00 ($Snap Int Int Int Int Int Int Seq<$Ref> $Ref) Int)
(declare-fun img@86@00 ($Snap Int Int Int Int Int Int Seq<$Ref> $Ref) Bool)
(declare-fun sm@87@00 ($Snap Int Int Int Int Int Int Seq<$Ref>) $FVF<Ref__Integer_value>)
(assert (forall ((s@$ $Snap) (i@0@00 Int) (hi@1@00 Int) (ar@2@00 Seq<Int>) (v@3@00 Int)) (!
  (=
    (count_list%limited s@$ i@0@00 hi@1@00 ar@2@00 v@3@00)
    (count_list s@$ i@0@00 hi@1@00 ar@2@00 v@3@00))
  :pattern ((count_list s@$ i@0@00 hi@1@00 ar@2@00 v@3@00))
  :qid |quant-u-9349|)))
(assert (forall ((s@$ $Snap) (i@0@00 Int) (hi@1@00 Int) (ar@2@00 Seq<Int>) (v@3@00 Int)) (!
  (count_list%stateless i@0@00 hi@1@00 ar@2@00 v@3@00)
  :pattern ((count_list%limited s@$ i@0@00 hi@1@00 ar@2@00 v@3@00))
  :qid |quant-u-9350|)))
(assert (forall ((s@$ $Snap) (i@0@00 Int) (hi@1@00 Int) (ar@2@00 Seq<Int>) (v@3@00 Int)) (!
  (=>
    (count_list%precondition s@$ i@0@00 hi@1@00 ar@2@00 v@3@00)
    (=
      (count_list s@$ i@0@00 hi@1@00 ar@2@00 v@3@00)
      (ite
        (< i@0@00 hi@1@00)
        (+
          (ite (= (Seq_index ar@2@00 i@0@00) v@3@00) 1 0)
          (count_list%limited ($Snap.combine
            $Snap.unit
            ($Snap.combine $Snap.unit $Snap.unit)) (+ i@0@00 1) hi@1@00 ar@2@00 v@3@00))
        0)))
  :pattern ((count_list s@$ i@0@00 hi@1@00 ar@2@00 v@3@00))
  :qid |quant-u-9361|)))
(assert (forall ((s@$ $Snap) (i@0@00 Int) (hi@1@00 Int) (ar@2@00 Seq<Int>) (v@3@00 Int)) (!
  (=>
    (count_list%precondition s@$ i@0@00 hi@1@00 ar@2@00 v@3@00)
    (ite
      (< i@0@00 hi@1@00)
      (count_list%precondition ($Snap.combine
        $Snap.unit
        ($Snap.combine $Snap.unit $Snap.unit)) (+ i@0@00 1) hi@1@00 ar@2@00 v@3@00)
      true))
  :pattern ((count_list s@$ i@0@00 hi@1@00 ar@2@00 v@3@00))
  :qid |quant-u-9362|)))
(assert (forall ((s@$ $Snap) (i@5@00 Int) (hi@6@00 Int) (ar@7@00 Seq<Int>)) (!
  (=
    (sum_list%limited s@$ i@5@00 hi@6@00 ar@7@00)
    (sum_list s@$ i@5@00 hi@6@00 ar@7@00))
  :pattern ((sum_list s@$ i@5@00 hi@6@00 ar@7@00))
  :qid |quant-u-9351|)))
(assert (forall ((s@$ $Snap) (i@5@00 Int) (hi@6@00 Int) (ar@7@00 Seq<Int>)) (!
  (sum_list%stateless i@5@00 hi@6@00 ar@7@00)
  :pattern ((sum_list%limited s@$ i@5@00 hi@6@00 ar@7@00))
  :qid |quant-u-9352|)))
(assert (forall ((s@$ $Snap) (i@5@00 Int) (hi@6@00 Int) (ar@7@00 Seq<Int>)) (!
  (=>
    (sum_list%precondition s@$ i@5@00 hi@6@00 ar@7@00)
    (=
      (sum_list s@$ i@5@00 hi@6@00 ar@7@00)
      (ite
        (< i@5@00 hi@6@00)
        (+
          (Seq_index ar@7@00 i@5@00)
          (sum_list%limited ($Snap.combine
            $Snap.unit
            ($Snap.combine $Snap.unit $Snap.unit)) (+ i@5@00 1) hi@6@00 ar@7@00))
        0)))
  :pattern ((sum_list s@$ i@5@00 hi@6@00 ar@7@00))
  :qid |quant-u-9363|)))
(assert (forall ((s@$ $Snap) (i@5@00 Int) (hi@6@00 Int) (ar@7@00 Seq<Int>)) (!
  (=>
    (sum_list%precondition s@$ i@5@00 hi@6@00 ar@7@00)
    (ite
      (< i@5@00 hi@6@00)
      (sum_list%precondition ($Snap.combine
        $Snap.unit
        ($Snap.combine $Snap.unit $Snap.unit)) (+ i@5@00 1) hi@6@00 ar@7@00)
      true))
  :pattern ((sum_list s@$ i@5@00 hi@6@00 ar@7@00))
  :qid |quant-u-9364|)))
(assert (forall ((s@$ $Snap) (i@9@00 Int) (lo@10@00 Int) (hi@11@00 Int) (step@12@00 Int) (min@13@00 Int) (max@14@00 Int) (ar@15@00 Seq<$Ref>) (v@16@00 Int)) (!
  (=
    (count_square%limited s@$ i@9@00 lo@10@00 hi@11@00 step@12@00 min@13@00 max@14@00 ar@15@00 v@16@00)
    (count_square s@$ i@9@00 lo@10@00 hi@11@00 step@12@00 min@13@00 max@14@00 ar@15@00 v@16@00))
  :pattern ((count_square s@$ i@9@00 lo@10@00 hi@11@00 step@12@00 min@13@00 max@14@00 ar@15@00 v@16@00))
  :qid |quant-u-9353|)))
(assert (forall ((s@$ $Snap) (i@9@00 Int) (lo@10@00 Int) (hi@11@00 Int) (step@12@00 Int) (min@13@00 Int) (max@14@00 Int) (ar@15@00 Seq<$Ref>) (v@16@00 Int)) (!
  (count_square%stateless i@9@00 lo@10@00 hi@11@00 step@12@00 min@13@00 max@14@00 ar@15@00 v@16@00)
  :pattern ((count_square%limited s@$ i@9@00 lo@10@00 hi@11@00 step@12@00 min@13@00 max@14@00 ar@15@00 v@16@00))
  :qid |quant-u-9354|)))
(assert (forall ((s@$ $Snap) (i@9@00 Int) (lo@10@00 Int) (hi@11@00 Int) (step@12@00 Int) (min@13@00 Int) (max@14@00 Int) (ar@15@00 Seq<$Ref>) (v@16@00 Int)) (!
  (and
    (forall ((k@38@00 Int)) (!
      (=>
        (and
          (and
            (<= min@13@00 k@38@00)
            (and
              (< k@38@00 max@14@00)
              (and
                (<= lo@10@00 (mod k@38@00 step@12@00))
                (< (mod k@38@00 step@12@00) hi@11@00))))
          (< $Perm.No $k@39@00))
        (and
          (=
            (inv@40@00 s@$ i@9@00 lo@10@00 hi@11@00 step@12@00 min@13@00 max@14@00 ar@15@00 v@16@00 (Seq_index
              ar@15@00
              k@38@00))
            k@38@00)
          (img@41@00 s@$ i@9@00 lo@10@00 hi@11@00 step@12@00 min@13@00 max@14@00 ar@15@00 v@16@00 (Seq_index
            ar@15@00
            k@38@00))))
      :pattern ((Seq_index ar@15@00 k@38@00))
      :qid |quant-u-9366|))
    (forall ((r $Ref)) (!
      (=>
        (and
          (img@41@00 s@$ i@9@00 lo@10@00 hi@11@00 step@12@00 min@13@00 max@14@00 ar@15@00 v@16@00 r)
          (and
            (and
              (<=
                min@13@00
                (inv@40@00 s@$ i@9@00 lo@10@00 hi@11@00 step@12@00 min@13@00 max@14@00 ar@15@00 v@16@00 r))
              (and
                (<
                  (inv@40@00 s@$ i@9@00 lo@10@00 hi@11@00 step@12@00 min@13@00 max@14@00 ar@15@00 v@16@00 r)
                  max@14@00)
                (and
                  (<=
                    lo@10@00
                    (mod
                      (inv@40@00 s@$ i@9@00 lo@10@00 hi@11@00 step@12@00 min@13@00 max@14@00 ar@15@00 v@16@00 r)
                      step@12@00))
                  (<
                    (mod
                      (inv@40@00 s@$ i@9@00 lo@10@00 hi@11@00 step@12@00 min@13@00 max@14@00 ar@15@00 v@16@00 r)
                      step@12@00)
                    hi@11@00))))
            (< $Perm.No $k@39@00)))
        (=
          (Seq_index
            ar@15@00
            (inv@40@00 s@$ i@9@00 lo@10@00 hi@11@00 step@12@00 min@13@00 max@14@00 ar@15@00 v@16@00 r))
          r))
      :pattern ((inv@40@00 s@$ i@9@00 lo@10@00 hi@11@00 step@12@00 min@13@00 max@14@00 ar@15@00 v@16@00 r))
      :qid |Ref__Integer_value-fctOfInv|))
    (forall ((k@44@00 Int)) (!
      (=>
        (and
          (and
            (<= min@13@00 k@44@00)
            (and
              (< k@44@00 max@14@00)
              (and
                (<= lo@10@00 (mod k@44@00 step@12@00))
                (< (mod k@44@00 step@12@00) hi@11@00))))
          (< $Perm.No $k@45@00))
        (and
          (=
            (inv@46@00 s@$ i@9@00 lo@10@00 hi@11@00 step@12@00 min@13@00 max@14@00 ar@15@00 v@16@00 (Seq_index
              ar@15@00
              k@44@00))
            k@44@00)
          (img@47@00 s@$ i@9@00 lo@10@00 hi@11@00 step@12@00 min@13@00 max@14@00 ar@15@00 v@16@00 (Seq_index
            ar@15@00
            k@44@00))))
      :pattern ((Seq_index ar@15@00 k@44@00))
      :qid |Ref__Integer_value-invOfFct|))
    (forall ((r $Ref)) (!
      (=>
        (and
          (img@47@00 s@$ i@9@00 lo@10@00 hi@11@00 step@12@00 min@13@00 max@14@00 ar@15@00 v@16@00 r)
          (and
            (and
              (<=
                min@13@00
                (inv@46@00 s@$ i@9@00 lo@10@00 hi@11@00 step@12@00 min@13@00 max@14@00 ar@15@00 v@16@00 r))
              (and
                (<
                  (inv@46@00 s@$ i@9@00 lo@10@00 hi@11@00 step@12@00 min@13@00 max@14@00 ar@15@00 v@16@00 r)
                  max@14@00)
                (and
                  (<=
                    lo@10@00
                    (mod
                      (inv@46@00 s@$ i@9@00 lo@10@00 hi@11@00 step@12@00 min@13@00 max@14@00 ar@15@00 v@16@00 r)
                      step@12@00))
                  (<
                    (mod
                      (inv@46@00 s@$ i@9@00 lo@10@00 hi@11@00 step@12@00 min@13@00 max@14@00 ar@15@00 v@16@00 r)
                      step@12@00)
                    hi@11@00))))
            (< $Perm.No $k@45@00)))
        (=
          (Seq_index
            ar@15@00
            (inv@46@00 s@$ i@9@00 lo@10@00 hi@11@00 step@12@00 min@13@00 max@14@00 ar@15@00 v@16@00 r))
          r))
      :pattern ((inv@46@00 s@$ i@9@00 lo@10@00 hi@11@00 step@12@00 min@13@00 max@14@00 ar@15@00 v@16@00 r))
      :qid |Ref__Integer_value-fctOfInv|))
    (forall ((r $Ref)) (!
      (and
        (=>
          (Set_in r ($FVF.domain_Ref__Integer_value (sm@48@00 s@$ i@9@00 lo@10@00 hi@11@00 step@12@00 min@13@00 max@14@00 ar@15@00 v@16@00)))
          (and
            (and
              (<=
                min@13@00
                (inv@46@00 s@$ i@9@00 lo@10@00 hi@11@00 step@12@00 min@13@00 max@14@00 ar@15@00 v@16@00 r))
              (and
                (<
                  (inv@46@00 s@$ i@9@00 lo@10@00 hi@11@00 step@12@00 min@13@00 max@14@00 ar@15@00 v@16@00 r)
                  max@14@00)
                (and
                  (<=
                    lo@10@00
                    (mod
                      (inv@46@00 s@$ i@9@00 lo@10@00 hi@11@00 step@12@00 min@13@00 max@14@00 ar@15@00 v@16@00 r)
                      step@12@00))
                  (<
                    (mod
                      (inv@46@00 s@$ i@9@00 lo@10@00 hi@11@00 step@12@00 min@13@00 max@14@00 ar@15@00 v@16@00 r)
                      step@12@00)
                    hi@11@00))))
            (< $Perm.No $k@45@00)
            (img@47@00 s@$ i@9@00 lo@10@00 hi@11@00 step@12@00 min@13@00 max@14@00 ar@15@00 v@16@00 r)))
        (=>
          (and
            (and
              (<=
                min@13@00
                (inv@46@00 s@$ i@9@00 lo@10@00 hi@11@00 step@12@00 min@13@00 max@14@00 ar@15@00 v@16@00 r))
              (and
                (<
                  (inv@46@00 s@$ i@9@00 lo@10@00 hi@11@00 step@12@00 min@13@00 max@14@00 ar@15@00 v@16@00 r)
                  max@14@00)
                (and
                  (<=
                    lo@10@00
                    (mod
                      (inv@46@00 s@$ i@9@00 lo@10@00 hi@11@00 step@12@00 min@13@00 max@14@00 ar@15@00 v@16@00 r)
                      step@12@00))
                  (<
                    (mod
                      (inv@46@00 s@$ i@9@00 lo@10@00 hi@11@00 step@12@00 min@13@00 max@14@00 ar@15@00 v@16@00 r)
                      step@12@00)
                    hi@11@00))))
            (< $Perm.No $k@45@00)
            (img@47@00 s@$ i@9@00 lo@10@00 hi@11@00 step@12@00 min@13@00 max@14@00 ar@15@00 v@16@00 r))
          (Set_in r ($FVF.domain_Ref__Integer_value (sm@48@00 s@$ i@9@00 lo@10@00 hi@11@00 step@12@00 min@13@00 max@14@00 ar@15@00 v@16@00)))))
      :pattern ((Set_in r ($FVF.domain_Ref__Integer_value (sm@48@00 s@$ i@9@00 lo@10@00 hi@11@00 step@12@00 min@13@00 max@14@00 ar@15@00 v@16@00))))
      :qid |qp.fvfDomDef1|))
    (forall ((r $Ref)) (!
      (=>
        (and
          (and
            (and
              (<=
                min@13@00
                (inv@46@00 s@$ i@9@00 lo@10@00 hi@11@00 step@12@00 min@13@00 max@14@00 ar@15@00 v@16@00 r))
              (and
                (<
                  (inv@46@00 s@$ i@9@00 lo@10@00 hi@11@00 step@12@00 min@13@00 max@14@00 ar@15@00 v@16@00 r)
                  max@14@00)
                (and
                  (<=
                    lo@10@00
                    (mod
                      (inv@46@00 s@$ i@9@00 lo@10@00 hi@11@00 step@12@00 min@13@00 max@14@00 ar@15@00 v@16@00 r)
                      step@12@00))
                  (<
                    (mod
                      (inv@46@00 s@$ i@9@00 lo@10@00 hi@11@00 step@12@00 min@13@00 max@14@00 ar@15@00 v@16@00 r)
                      step@12@00)
                    hi@11@00))))
            (< $Perm.No $k@45@00)
            (img@47@00 s@$ i@9@00 lo@10@00 hi@11@00 step@12@00 min@13@00 max@14@00 ar@15@00 v@16@00 r))
          (ite
            (and
              (img@41@00 s@$ i@9@00 lo@10@00 hi@11@00 step@12@00 min@13@00 max@14@00 ar@15@00 v@16@00 r)
              (and
                (<=
                  min@13@00
                  (inv@40@00 s@$ i@9@00 lo@10@00 hi@11@00 step@12@00 min@13@00 max@14@00 ar@15@00 v@16@00 r))
                (and
                  (<
                    (inv@40@00 s@$ i@9@00 lo@10@00 hi@11@00 step@12@00 min@13@00 max@14@00 ar@15@00 v@16@00 r)
                    max@14@00)
                  (and
                    (<=
                      lo@10@00
                      (mod
                        (inv@40@00 s@$ i@9@00 lo@10@00 hi@11@00 step@12@00 min@13@00 max@14@00 ar@15@00 v@16@00 r)
                        step@12@00))
                    (<
                      (mod
                        (inv@40@00 s@$ i@9@00 lo@10@00 hi@11@00 step@12@00 min@13@00 max@14@00 ar@15@00 v@16@00 r)
                        step@12@00)
                      hi@11@00)))))
            (< $Perm.No $k@39@00)
            false))
        (=
          ($FVF.lookup_Ref__Integer_value (sm@48@00 s@$ i@9@00 lo@10@00 hi@11@00 step@12@00 min@13@00 max@14@00 ar@15@00 v@16@00) r)
          ($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second s@$)))))))))) r)))
      :pattern (($FVF.lookup_Ref__Integer_value (sm@48@00 s@$ i@9@00 lo@10@00 hi@11@00 step@12@00 min@13@00 max@14@00 ar@15@00 v@16@00) r))
      :pattern (($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second s@$)))))))))) r))
      :qid |qp.fvfValDef0|))
    ($Perm.isReadVar $k@39@00)
    ($Perm.isReadVar $k@45@00)
    (=>
      (count_square%precondition s@$ i@9@00 lo@10@00 hi@11@00 step@12@00 min@13@00 max@14@00 ar@15@00 v@16@00)
      (=
        (count_square s@$ i@9@00 lo@10@00 hi@11@00 step@12@00 min@13@00 max@14@00 ar@15@00 v@16@00)
        (ite
          (< i@9@00 max@14@00)
          (+
            (ite
              (and
                (<= lo@10@00 (mod i@9@00 step@12@00))
                (and
                  (< (mod i@9@00 step@12@00) hi@11@00)
                  (=
                    ($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second s@$)))))))))) (Seq_index
                      ar@15@00
                      i@9@00))
                    v@16@00)))
              1
              0)
            (count_square%limited ($Snap.combine
              $Snap.unit
              ($Snap.combine
                $Snap.unit
                ($Snap.combine
                  $Snap.unit
                  ($Snap.combine
                    $Snap.unit
                    ($Snap.combine
                      $Snap.unit
                      ($Snap.combine
                        $Snap.unit
                        ($Snap.combine
                          $Snap.unit
                          ($Snap.combine
                            $Snap.unit
                            ($Snap.combine
                              $Snap.unit
                              ($SortWrappers.$FVF<Ref__Integer_value>To$Snap (sm@48@00 s@$ i@9@00 lo@10@00 hi@11@00 step@12@00 min@13@00 max@14@00 ar@15@00 v@16@00))))))))))) (+
              i@9@00
              1) lo@10@00 hi@11@00 step@12@00 min@13@00 max@14@00 ar@15@00 v@16@00))
          0))))
  :pattern ((count_square s@$ i@9@00 lo@10@00 hi@11@00 step@12@00 min@13@00 max@14@00 ar@15@00 v@16@00))
  :qid |quant-u-9369|)))
(assert (forall ((s@$ $Snap) (i@9@00 Int) (lo@10@00 Int) (hi@11@00 Int) (step@12@00 Int) (min@13@00 Int) (max@14@00 Int) (ar@15@00 Seq<$Ref>) (v@16@00 Int)) (!
  (=>
    (count_square%precondition s@$ i@9@00 lo@10@00 hi@11@00 step@12@00 min@13@00 max@14@00 ar@15@00 v@16@00)
    (ite
      (< i@9@00 max@14@00)
      (count_square%precondition ($Snap.combine
        $Snap.unit
        ($Snap.combine
          $Snap.unit
          ($Snap.combine
            $Snap.unit
            ($Snap.combine
              $Snap.unit
              ($Snap.combine
                $Snap.unit
                ($Snap.combine
                  $Snap.unit
                  ($Snap.combine
                    $Snap.unit
                    ($Snap.combine
                      $Snap.unit
                      ($Snap.combine
                        $Snap.unit
                        ($SortWrappers.$FVF<Ref__Integer_value>To$Snap (sm@48@00 s@$ i@9@00 lo@10@00 hi@11@00 step@12@00 min@13@00 max@14@00 ar@15@00 v@16@00))))))))))) (+
        i@9@00
        1) lo@10@00 hi@11@00 step@12@00 min@13@00 max@14@00 ar@15@00 v@16@00)
      true))
  :pattern ((count_square s@$ i@9@00 lo@10@00 hi@11@00 step@12@00 min@13@00 max@14@00 ar@15@00 v@16@00))
  :qid |quant-u-9370|)))
(assert (forall ((s@$ $Snap) (i@18@00 Int) (lo@19@00 Int) (hi@20@00 Int) (ar@21@00 Seq<$Ref>)) (!
  (=
    (sum_array%limited s@$ i@18@00 lo@19@00 hi@20@00 ar@21@00)
    (sum_array s@$ i@18@00 lo@19@00 hi@20@00 ar@21@00))
  :pattern ((sum_array s@$ i@18@00 lo@19@00 hi@20@00 ar@21@00))
  :qid |quant-u-9355|)))
(assert (forall ((s@$ $Snap) (i@18@00 Int) (lo@19@00 Int) (hi@20@00 Int) (ar@21@00 Seq<$Ref>)) (!
  (sum_array%stateless i@18@00 lo@19@00 hi@20@00 ar@21@00)
  :pattern ((sum_array%limited s@$ i@18@00 lo@19@00 hi@20@00 ar@21@00))
  :qid |quant-u-9356|)))
(assert (forall ((s@$ $Snap) (i@18@00 Int) (lo@19@00 Int) (hi@20@00 Int) (ar@21@00 Seq<$Ref>)) (!
  (and
    (forall ((k@51@00 Int)) (!
      (=>
        (and
          (and (<= lo@19@00 k@51@00) (< k@51@00 hi@20@00))
          (< $Perm.No $k@52@00))
        (and
          (=
            (inv@53@00 s@$ i@18@00 lo@19@00 hi@20@00 ar@21@00 (Seq_index
              ar@21@00
              k@51@00))
            k@51@00)
          (img@54@00 s@$ i@18@00 lo@19@00 hi@20@00 ar@21@00 (Seq_index
            ar@21@00
            k@51@00))))
      :pattern ((Seq_index ar@21@00 k@51@00))
      :qid |quant-u-9372|))
    (forall ((r $Ref)) (!
      (=>
        (and
          (img@54@00 s@$ i@18@00 lo@19@00 hi@20@00 ar@21@00 r)
          (and
            (and
              (<= lo@19@00 (inv@53@00 s@$ i@18@00 lo@19@00 hi@20@00 ar@21@00 r))
              (< (inv@53@00 s@$ i@18@00 lo@19@00 hi@20@00 ar@21@00 r) hi@20@00))
            (< $Perm.No $k@52@00)))
        (=
          (Seq_index
            ar@21@00
            (inv@53@00 s@$ i@18@00 lo@19@00 hi@20@00 ar@21@00 r))
          r))
      :pattern ((inv@53@00 s@$ i@18@00 lo@19@00 hi@20@00 ar@21@00 r))
      :qid |Ref__Integer_value-fctOfInv|))
    (forall ((k@57@00 Int)) (!
      (=>
        (and
          (and (<= lo@19@00 k@57@00) (< k@57@00 hi@20@00))
          (< $Perm.No $k@58@00))
        (and
          (=
            (inv@59@00 s@$ i@18@00 lo@19@00 hi@20@00 ar@21@00 (Seq_index
              ar@21@00
              k@57@00))
            k@57@00)
          (img@60@00 s@$ i@18@00 lo@19@00 hi@20@00 ar@21@00 (Seq_index
            ar@21@00
            k@57@00))))
      :pattern ((Seq_index ar@21@00 k@57@00))
      :qid |Ref__Integer_value-invOfFct|))
    (forall ((r $Ref)) (!
      (=>
        (and
          (img@60@00 s@$ i@18@00 lo@19@00 hi@20@00 ar@21@00 r)
          (and
            (and
              (<= lo@19@00 (inv@59@00 s@$ i@18@00 lo@19@00 hi@20@00 ar@21@00 r))
              (< (inv@59@00 s@$ i@18@00 lo@19@00 hi@20@00 ar@21@00 r) hi@20@00))
            (< $Perm.No $k@58@00)))
        (=
          (Seq_index
            ar@21@00
            (inv@59@00 s@$ i@18@00 lo@19@00 hi@20@00 ar@21@00 r))
          r))
      :pattern ((inv@59@00 s@$ i@18@00 lo@19@00 hi@20@00 ar@21@00 r))
      :qid |Ref__Integer_value-fctOfInv|))
    (forall ((r $Ref)) (!
      (and
        (=>
          (Set_in r ($FVF.domain_Ref__Integer_value (sm@61@00 s@$ i@18@00 lo@19@00 hi@20@00 ar@21@00)))
          (and
            (and
              (<= lo@19@00 (inv@59@00 s@$ i@18@00 lo@19@00 hi@20@00 ar@21@00 r))
              (< (inv@59@00 s@$ i@18@00 lo@19@00 hi@20@00 ar@21@00 r) hi@20@00))
            (< $Perm.No $k@58@00)
            (img@60@00 s@$ i@18@00 lo@19@00 hi@20@00 ar@21@00 r)))
        (=>
          (and
            (and
              (<= lo@19@00 (inv@59@00 s@$ i@18@00 lo@19@00 hi@20@00 ar@21@00 r))
              (< (inv@59@00 s@$ i@18@00 lo@19@00 hi@20@00 ar@21@00 r) hi@20@00))
            (< $Perm.No $k@58@00)
            (img@60@00 s@$ i@18@00 lo@19@00 hi@20@00 ar@21@00 r))
          (Set_in r ($FVF.domain_Ref__Integer_value (sm@61@00 s@$ i@18@00 lo@19@00 hi@20@00 ar@21@00)))))
      :pattern ((Set_in r ($FVF.domain_Ref__Integer_value (sm@61@00 s@$ i@18@00 lo@19@00 hi@20@00 ar@21@00))))
      :qid |qp.fvfDomDef3|))
    (forall ((r $Ref)) (!
      (=>
        (and
          (and
            (and
              (<= lo@19@00 (inv@59@00 s@$ i@18@00 lo@19@00 hi@20@00 ar@21@00 r))
              (< (inv@59@00 s@$ i@18@00 lo@19@00 hi@20@00 ar@21@00 r) hi@20@00))
            (< $Perm.No $k@58@00)
            (img@60@00 s@$ i@18@00 lo@19@00 hi@20@00 ar@21@00 r))
          (ite
            (and
              (img@54@00 s@$ i@18@00 lo@19@00 hi@20@00 ar@21@00 r)
              (and
                (<=
                  lo@19@00
                  (inv@53@00 s@$ i@18@00 lo@19@00 hi@20@00 ar@21@00 r))
                (< (inv@53@00 s@$ i@18@00 lo@19@00 hi@20@00 ar@21@00 r) hi@20@00)))
            (< $Perm.No $k@52@00)
            false))
        (=
          ($FVF.lookup_Ref__Integer_value (sm@61@00 s@$ i@18@00 lo@19@00 hi@20@00 ar@21@00) r)
          ($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second s@$)))))) r)))
      :pattern (($FVF.lookup_Ref__Integer_value (sm@61@00 s@$ i@18@00 lo@19@00 hi@20@00 ar@21@00) r))
      :pattern (($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second s@$)))))) r))
      :qid |qp.fvfValDef2|))
    ($Perm.isReadVar $k@52@00)
    ($Perm.isReadVar $k@58@00)
    (=>
      (sum_array%precondition s@$ i@18@00 lo@19@00 hi@20@00 ar@21@00)
      (=
        (sum_array s@$ i@18@00 lo@19@00 hi@20@00 ar@21@00)
        (ite
          (< i@18@00 hi@20@00)
          (+
            ($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second s@$)))))) (Seq_index
              ar@21@00
              i@18@00))
            (sum_array%limited ($Snap.combine
              $Snap.unit
              ($Snap.combine
                $Snap.unit
                ($Snap.combine
                  $Snap.unit
                  ($Snap.combine
                    $Snap.unit
                    ($Snap.combine
                      $Snap.unit
                      ($SortWrappers.$FVF<Ref__Integer_value>To$Snap (sm@61@00 s@$ i@18@00 lo@19@00 hi@20@00 ar@21@00))))))) (+
              i@18@00
              1) lo@19@00 hi@20@00 ar@21@00))
          0))))
  :pattern ((sum_array s@$ i@18@00 lo@19@00 hi@20@00 ar@21@00))
  :qid |quant-u-9375|)))
(assert (forall ((s@$ $Snap) (i@18@00 Int) (lo@19@00 Int) (hi@20@00 Int) (ar@21@00 Seq<$Ref>)) (!
  (=>
    (sum_array%precondition s@$ i@18@00 lo@19@00 hi@20@00 ar@21@00)
    (ite
      (< i@18@00 hi@20@00)
      (sum_array%precondition ($Snap.combine
        $Snap.unit
        ($Snap.combine
          $Snap.unit
          ($Snap.combine
            $Snap.unit
            ($Snap.combine
              $Snap.unit
              ($Snap.combine
                $Snap.unit
                ($SortWrappers.$FVF<Ref__Integer_value>To$Snap (sm@61@00 s@$ i@18@00 lo@19@00 hi@20@00 ar@21@00))))))) (+
        i@18@00
        1) lo@19@00 hi@20@00 ar@21@00)
      true))
  :pattern ((sum_array s@$ i@18@00 lo@19@00 hi@20@00 ar@21@00))
  :qid |quant-u-9376|)))
(assert (forall ((s@$ $Snap) (i@23@00 Int) (hi@24@00 Int) (ar@25@00 Seq<$Ref>) (v@26@00 Int)) (!
  (=
    (count_array%limited s@$ i@23@00 hi@24@00 ar@25@00 v@26@00)
    (count_array s@$ i@23@00 hi@24@00 ar@25@00 v@26@00))
  :pattern ((count_array s@$ i@23@00 hi@24@00 ar@25@00 v@26@00))
  :qid |quant-u-9357|)))
(assert (forall ((s@$ $Snap) (i@23@00 Int) (hi@24@00 Int) (ar@25@00 Seq<$Ref>) (v@26@00 Int)) (!
  (count_array%stateless i@23@00 hi@24@00 ar@25@00 v@26@00)
  :pattern ((count_array%limited s@$ i@23@00 hi@24@00 ar@25@00 v@26@00))
  :qid |quant-u-9358|)))
(assert (forall ((s@$ $Snap) (i@23@00 Int) (hi@24@00 Int) (ar@25@00 Seq<$Ref>) (v@26@00 Int)) (!
  (and
    (forall ((k@64@00 Int)) (!
      (=>
        (and (and (<= 0 k@64@00) (< k@64@00 hi@24@00)) (< $Perm.No $k@65@00))
        (and
          (=
            (inv@66@00 s@$ i@23@00 hi@24@00 ar@25@00 v@26@00 (Seq_index
              ar@25@00
              k@64@00))
            k@64@00)
          (img@67@00 s@$ i@23@00 hi@24@00 ar@25@00 v@26@00 (Seq_index
            ar@25@00
            k@64@00))))
      :pattern ((Seq_index ar@25@00 k@64@00))
      :qid |quant-u-9378|))
    (forall ((r $Ref)) (!
      (=>
        (and
          (img@67@00 s@$ i@23@00 hi@24@00 ar@25@00 v@26@00 r)
          (and
            (and
              (<= 0 (inv@66@00 s@$ i@23@00 hi@24@00 ar@25@00 v@26@00 r))
              (< (inv@66@00 s@$ i@23@00 hi@24@00 ar@25@00 v@26@00 r) hi@24@00))
            (< $Perm.No $k@65@00)))
        (=
          (Seq_index
            ar@25@00
            (inv@66@00 s@$ i@23@00 hi@24@00 ar@25@00 v@26@00 r))
          r))
      :pattern ((inv@66@00 s@$ i@23@00 hi@24@00 ar@25@00 v@26@00 r))
      :qid |Ref__Integer_value-fctOfInv|))
    (forall ((k@70@00 Int)) (!
      (=>
        (and (and (<= 0 k@70@00) (< k@70@00 hi@24@00)) (< $Perm.No $k@71@00))
        (and
          (=
            (inv@72@00 s@$ i@23@00 hi@24@00 ar@25@00 v@26@00 (Seq_index
              ar@25@00
              k@70@00))
            k@70@00)
          (img@73@00 s@$ i@23@00 hi@24@00 ar@25@00 v@26@00 (Seq_index
            ar@25@00
            k@70@00))))
      :pattern ((Seq_index ar@25@00 k@70@00))
      :qid |Ref__Integer_value-invOfFct|))
    (forall ((r $Ref)) (!
      (=>
        (and
          (img@73@00 s@$ i@23@00 hi@24@00 ar@25@00 v@26@00 r)
          (and
            (and
              (<= 0 (inv@72@00 s@$ i@23@00 hi@24@00 ar@25@00 v@26@00 r))
              (< (inv@72@00 s@$ i@23@00 hi@24@00 ar@25@00 v@26@00 r) hi@24@00))
            (< $Perm.No $k@71@00)))
        (=
          (Seq_index
            ar@25@00
            (inv@72@00 s@$ i@23@00 hi@24@00 ar@25@00 v@26@00 r))
          r))
      :pattern ((inv@72@00 s@$ i@23@00 hi@24@00 ar@25@00 v@26@00 r))
      :qid |Ref__Integer_value-fctOfInv|))
    (forall ((r $Ref)) (!
      (and
        (=>
          (Set_in r ($FVF.domain_Ref__Integer_value (sm@74@00 s@$ i@23@00 hi@24@00 ar@25@00 v@26@00)))
          (and
            (and
              (<= 0 (inv@72@00 s@$ i@23@00 hi@24@00 ar@25@00 v@26@00 r))
              (< (inv@72@00 s@$ i@23@00 hi@24@00 ar@25@00 v@26@00 r) hi@24@00))
            (< $Perm.No $k@71@00)
            (img@73@00 s@$ i@23@00 hi@24@00 ar@25@00 v@26@00 r)))
        (=>
          (and
            (and
              (<= 0 (inv@72@00 s@$ i@23@00 hi@24@00 ar@25@00 v@26@00 r))
              (< (inv@72@00 s@$ i@23@00 hi@24@00 ar@25@00 v@26@00 r) hi@24@00))
            (< $Perm.No $k@71@00)
            (img@73@00 s@$ i@23@00 hi@24@00 ar@25@00 v@26@00 r))
          (Set_in r ($FVF.domain_Ref__Integer_value (sm@74@00 s@$ i@23@00 hi@24@00 ar@25@00 v@26@00)))))
      :pattern ((Set_in r ($FVF.domain_Ref__Integer_value (sm@74@00 s@$ i@23@00 hi@24@00 ar@25@00 v@26@00))))
      :qid |qp.fvfDomDef5|))
    (forall ((r $Ref)) (!
      (=>
        (and
          (and
            (and
              (<= 0 (inv@72@00 s@$ i@23@00 hi@24@00 ar@25@00 v@26@00 r))
              (< (inv@72@00 s@$ i@23@00 hi@24@00 ar@25@00 v@26@00 r) hi@24@00))
            (< $Perm.No $k@71@00)
            (img@73@00 s@$ i@23@00 hi@24@00 ar@25@00 v@26@00 r))
          (ite
            (and
              (img@67@00 s@$ i@23@00 hi@24@00 ar@25@00 v@26@00 r)
              (and
                (<= 0 (inv@66@00 s@$ i@23@00 hi@24@00 ar@25@00 v@26@00 r))
                (< (inv@66@00 s@$ i@23@00 hi@24@00 ar@25@00 v@26@00 r) hi@24@00)))
            (< $Perm.No $k@65@00)
            false))
        (=
          ($FVF.lookup_Ref__Integer_value (sm@74@00 s@$ i@23@00 hi@24@00 ar@25@00 v@26@00) r)
          ($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.second ($Snap.second ($Snap.second ($Snap.second s@$))))) r)))
      :pattern (($FVF.lookup_Ref__Integer_value (sm@74@00 s@$ i@23@00 hi@24@00 ar@25@00 v@26@00) r))
      :pattern (($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.second ($Snap.second ($Snap.second ($Snap.second s@$))))) r))
      :qid |qp.fvfValDef4|))
    ($Perm.isReadVar $k@65@00)
    ($Perm.isReadVar $k@71@00)
    (=>
      (count_array%precondition s@$ i@23@00 hi@24@00 ar@25@00 v@26@00)
      (=
        (count_array s@$ i@23@00 hi@24@00 ar@25@00 v@26@00)
        (ite
          (< i@23@00 hi@24@00)
          (+
            (ite
              (=
                ($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.second ($Snap.second ($Snap.second ($Snap.second s@$))))) (Seq_index
                  ar@25@00
                  i@23@00))
                v@26@00)
              1
              0)
            (count_array%limited ($Snap.combine
              $Snap.unit
              ($Snap.combine
                $Snap.unit
                ($Snap.combine
                  $Snap.unit
                  ($Snap.combine
                    $Snap.unit
                    ($SortWrappers.$FVF<Ref__Integer_value>To$Snap (sm@74@00 s@$ i@23@00 hi@24@00 ar@25@00 v@26@00)))))) (+
              i@23@00
              1) hi@24@00 ar@25@00 v@26@00))
          0))))
  :pattern ((count_array s@$ i@23@00 hi@24@00 ar@25@00 v@26@00))
  :qid |quant-u-9381|)))
(assert (forall ((s@$ $Snap) (i@23@00 Int) (hi@24@00 Int) (ar@25@00 Seq<$Ref>) (v@26@00 Int)) (!
  (=>
    (count_array%precondition s@$ i@23@00 hi@24@00 ar@25@00 v@26@00)
    (ite
      (< i@23@00 hi@24@00)
      (count_array%precondition ($Snap.combine
        $Snap.unit
        ($Snap.combine
          $Snap.unit
          ($Snap.combine
            $Snap.unit
            ($Snap.combine
              $Snap.unit
              ($SortWrappers.$FVF<Ref__Integer_value>To$Snap (sm@74@00 s@$ i@23@00 hi@24@00 ar@25@00 v@26@00)))))) (+
        i@23@00
        1) hi@24@00 ar@25@00 v@26@00)
      true))
  :pattern ((count_array s@$ i@23@00 hi@24@00 ar@25@00 v@26@00))
  :qid |quant-u-9382|)))
(assert (forall ((s@$ $Snap) (i@28@00 Int) (lo@29@00 Int) (hi@30@00 Int) (step@31@00 Int) (min@32@00 Int) (max@33@00 Int) (ar@34@00 Seq<$Ref>)) (!
  (=
    (sum_square%limited s@$ i@28@00 lo@29@00 hi@30@00 step@31@00 min@32@00 max@33@00 ar@34@00)
    (sum_square s@$ i@28@00 lo@29@00 hi@30@00 step@31@00 min@32@00 max@33@00 ar@34@00))
  :pattern ((sum_square s@$ i@28@00 lo@29@00 hi@30@00 step@31@00 min@32@00 max@33@00 ar@34@00))
  :qid |quant-u-9359|)))
(assert (forall ((s@$ $Snap) (i@28@00 Int) (lo@29@00 Int) (hi@30@00 Int) (step@31@00 Int) (min@32@00 Int) (max@33@00 Int) (ar@34@00 Seq<$Ref>)) (!
  (sum_square%stateless i@28@00 lo@29@00 hi@30@00 step@31@00 min@32@00 max@33@00 ar@34@00)
  :pattern ((sum_square%limited s@$ i@28@00 lo@29@00 hi@30@00 step@31@00 min@32@00 max@33@00 ar@34@00))
  :qid |quant-u-9360|)))
(assert (forall ((s@$ $Snap) (i@28@00 Int) (lo@29@00 Int) (hi@30@00 Int) (step@31@00 Int) (min@32@00 Int) (max@33@00 Int) (ar@34@00 Seq<$Ref>)) (!
  (and
    (forall ((k@77@00 Int)) (!
      (=>
        (and
          (and
            (<= min@32@00 k@77@00)
            (and
              (< k@77@00 max@33@00)
              (and
                (<= lo@29@00 (mod k@77@00 step@31@00))
                (< (mod k@77@00 step@31@00) hi@30@00))))
          (< $Perm.No $k@78@00))
        (and
          (=
            (inv@79@00 s@$ i@28@00 lo@29@00 hi@30@00 step@31@00 min@32@00 max@33@00 ar@34@00 (Seq_index
              ar@34@00
              k@77@00))
            k@77@00)
          (img@80@00 s@$ i@28@00 lo@29@00 hi@30@00 step@31@00 min@32@00 max@33@00 ar@34@00 (Seq_index
            ar@34@00
            k@77@00))))
      :pattern ((Seq_index ar@34@00 k@77@00))
      :qid |quant-u-9384|))
    (forall ((r $Ref)) (!
      (=>
        (and
          (img@80@00 s@$ i@28@00 lo@29@00 hi@30@00 step@31@00 min@32@00 max@33@00 ar@34@00 r)
          (and
            (and
              (<=
                min@32@00
                (inv@79@00 s@$ i@28@00 lo@29@00 hi@30@00 step@31@00 min@32@00 max@33@00 ar@34@00 r))
              (and
                (<
                  (inv@79@00 s@$ i@28@00 lo@29@00 hi@30@00 step@31@00 min@32@00 max@33@00 ar@34@00 r)
                  max@33@00)
                (and
                  (<=
                    lo@29@00
                    (mod
                      (inv@79@00 s@$ i@28@00 lo@29@00 hi@30@00 step@31@00 min@32@00 max@33@00 ar@34@00 r)
                      step@31@00))
                  (<
                    (mod
                      (inv@79@00 s@$ i@28@00 lo@29@00 hi@30@00 step@31@00 min@32@00 max@33@00 ar@34@00 r)
                      step@31@00)
                    hi@30@00))))
            (< $Perm.No $k@78@00)))
        (=
          (Seq_index
            ar@34@00
            (inv@79@00 s@$ i@28@00 lo@29@00 hi@30@00 step@31@00 min@32@00 max@33@00 ar@34@00 r))
          r))
      :pattern ((inv@79@00 s@$ i@28@00 lo@29@00 hi@30@00 step@31@00 min@32@00 max@33@00 ar@34@00 r))
      :qid |Ref__Integer_value-fctOfInv|))
    (forall ((k@83@00 Int)) (!
      (=>
        (and
          (and
            (<= min@32@00 k@83@00)
            (and
              (< k@83@00 max@33@00)
              (and
                (<= lo@29@00 (mod k@83@00 step@31@00))
                (< (mod k@83@00 step@31@00) hi@30@00))))
          (< $Perm.No $k@84@00))
        (and
          (=
            (inv@85@00 s@$ i@28@00 lo@29@00 hi@30@00 step@31@00 min@32@00 max@33@00 ar@34@00 (Seq_index
              ar@34@00
              k@83@00))
            k@83@00)
          (img@86@00 s@$ i@28@00 lo@29@00 hi@30@00 step@31@00 min@32@00 max@33@00 ar@34@00 (Seq_index
            ar@34@00
            k@83@00))))
      :pattern ((Seq_index ar@34@00 k@83@00))
      :qid |Ref__Integer_value-invOfFct|))
    (forall ((r $Ref)) (!
      (=>
        (and
          (img@86@00 s@$ i@28@00 lo@29@00 hi@30@00 step@31@00 min@32@00 max@33@00 ar@34@00 r)
          (and
            (and
              (<=
                min@32@00
                (inv@85@00 s@$ i@28@00 lo@29@00 hi@30@00 step@31@00 min@32@00 max@33@00 ar@34@00 r))
              (and
                (<
                  (inv@85@00 s@$ i@28@00 lo@29@00 hi@30@00 step@31@00 min@32@00 max@33@00 ar@34@00 r)
                  max@33@00)
                (and
                  (<=
                    lo@29@00
                    (mod
                      (inv@85@00 s@$ i@28@00 lo@29@00 hi@30@00 step@31@00 min@32@00 max@33@00 ar@34@00 r)
                      step@31@00))
                  (<
                    (mod
                      (inv@85@00 s@$ i@28@00 lo@29@00 hi@30@00 step@31@00 min@32@00 max@33@00 ar@34@00 r)
                      step@31@00)
                    hi@30@00))))
            (< $Perm.No $k@84@00)))
        (=
          (Seq_index
            ar@34@00
            (inv@85@00 s@$ i@28@00 lo@29@00 hi@30@00 step@31@00 min@32@00 max@33@00 ar@34@00 r))
          r))
      :pattern ((inv@85@00 s@$ i@28@00 lo@29@00 hi@30@00 step@31@00 min@32@00 max@33@00 ar@34@00 r))
      :qid |Ref__Integer_value-fctOfInv|))
    (forall ((r $Ref)) (!
      (and
        (=>
          (Set_in r ($FVF.domain_Ref__Integer_value (sm@87@00 s@$ i@28@00 lo@29@00 hi@30@00 step@31@00 min@32@00 max@33@00 ar@34@00)))
          (and
            (and
              (<=
                min@32@00
                (inv@85@00 s@$ i@28@00 lo@29@00 hi@30@00 step@31@00 min@32@00 max@33@00 ar@34@00 r))
              (and
                (<
                  (inv@85@00 s@$ i@28@00 lo@29@00 hi@30@00 step@31@00 min@32@00 max@33@00 ar@34@00 r)
                  max@33@00)
                (and
                  (<=
                    lo@29@00
                    (mod
                      (inv@85@00 s@$ i@28@00 lo@29@00 hi@30@00 step@31@00 min@32@00 max@33@00 ar@34@00 r)
                      step@31@00))
                  (<
                    (mod
                      (inv@85@00 s@$ i@28@00 lo@29@00 hi@30@00 step@31@00 min@32@00 max@33@00 ar@34@00 r)
                      step@31@00)
                    hi@30@00))))
            (< $Perm.No $k@84@00)
            (img@86@00 s@$ i@28@00 lo@29@00 hi@30@00 step@31@00 min@32@00 max@33@00 ar@34@00 r)))
        (=>
          (and
            (and
              (<=
                min@32@00
                (inv@85@00 s@$ i@28@00 lo@29@00 hi@30@00 step@31@00 min@32@00 max@33@00 ar@34@00 r))
              (and
                (<
                  (inv@85@00 s@$ i@28@00 lo@29@00 hi@30@00 step@31@00 min@32@00 max@33@00 ar@34@00 r)
                  max@33@00)
                (and
                  (<=
                    lo@29@00
                    (mod
                      (inv@85@00 s@$ i@28@00 lo@29@00 hi@30@00 step@31@00 min@32@00 max@33@00 ar@34@00 r)
                      step@31@00))
                  (<
                    (mod
                      (inv@85@00 s@$ i@28@00 lo@29@00 hi@30@00 step@31@00 min@32@00 max@33@00 ar@34@00 r)
                      step@31@00)
                    hi@30@00))))
            (< $Perm.No $k@84@00)
            (img@86@00 s@$ i@28@00 lo@29@00 hi@30@00 step@31@00 min@32@00 max@33@00 ar@34@00 r))
          (Set_in r ($FVF.domain_Ref__Integer_value (sm@87@00 s@$ i@28@00 lo@29@00 hi@30@00 step@31@00 min@32@00 max@33@00 ar@34@00)))))
      :pattern ((Set_in r ($FVF.domain_Ref__Integer_value (sm@87@00 s@$ i@28@00 lo@29@00 hi@30@00 step@31@00 min@32@00 max@33@00 ar@34@00))))
      :qid |qp.fvfDomDef7|))
    (forall ((r $Ref)) (!
      (=>
        (and
          (and
            (and
              (<=
                min@32@00
                (inv@85@00 s@$ i@28@00 lo@29@00 hi@30@00 step@31@00 min@32@00 max@33@00 ar@34@00 r))
              (and
                (<
                  (inv@85@00 s@$ i@28@00 lo@29@00 hi@30@00 step@31@00 min@32@00 max@33@00 ar@34@00 r)
                  max@33@00)
                (and
                  (<=
                    lo@29@00
                    (mod
                      (inv@85@00 s@$ i@28@00 lo@29@00 hi@30@00 step@31@00 min@32@00 max@33@00 ar@34@00 r)
                      step@31@00))
                  (<
                    (mod
                      (inv@85@00 s@$ i@28@00 lo@29@00 hi@30@00 step@31@00 min@32@00 max@33@00 ar@34@00 r)
                      step@31@00)
                    hi@30@00))))
            (< $Perm.No $k@84@00)
            (img@86@00 s@$ i@28@00 lo@29@00 hi@30@00 step@31@00 min@32@00 max@33@00 ar@34@00 r))
          (ite
            (and
              (img@80@00 s@$ i@28@00 lo@29@00 hi@30@00 step@31@00 min@32@00 max@33@00 ar@34@00 r)
              (and
                (<=
                  min@32@00
                  (inv@79@00 s@$ i@28@00 lo@29@00 hi@30@00 step@31@00 min@32@00 max@33@00 ar@34@00 r))
                (and
                  (<
                    (inv@79@00 s@$ i@28@00 lo@29@00 hi@30@00 step@31@00 min@32@00 max@33@00 ar@34@00 r)
                    max@33@00)
                  (and
                    (<=
                      lo@29@00
                      (mod
                        (inv@79@00 s@$ i@28@00 lo@29@00 hi@30@00 step@31@00 min@32@00 max@33@00 ar@34@00 r)
                        step@31@00))
                    (<
                      (mod
                        (inv@79@00 s@$ i@28@00 lo@29@00 hi@30@00 step@31@00 min@32@00 max@33@00 ar@34@00 r)
                        step@31@00)
                      hi@30@00)))))
            (< $Perm.No $k@78@00)
            false))
        (=
          ($FVF.lookup_Ref__Integer_value (sm@87@00 s@$ i@28@00 lo@29@00 hi@30@00 step@31@00 min@32@00 max@33@00 ar@34@00) r)
          ($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second s@$)))))))))) r)))
      :pattern (($FVF.lookup_Ref__Integer_value (sm@87@00 s@$ i@28@00 lo@29@00 hi@30@00 step@31@00 min@32@00 max@33@00 ar@34@00) r))
      :pattern (($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second s@$)))))))))) r))
      :qid |qp.fvfValDef6|))
    ($Perm.isReadVar $k@78@00)
    ($Perm.isReadVar $k@84@00)
    (=>
      (sum_square%precondition s@$ i@28@00 lo@29@00 hi@30@00 step@31@00 min@32@00 max@33@00 ar@34@00)
      (=
        (sum_square s@$ i@28@00 lo@29@00 hi@30@00 step@31@00 min@32@00 max@33@00 ar@34@00)
        (ite
          (< i@28@00 max@33@00)
          (+
            (ite
              (and
                (<= lo@29@00 (mod i@28@00 step@31@00))
                (< (mod i@28@00 step@31@00) hi@30@00))
              ($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second s@$)))))))))) (Seq_index
                ar@34@00
                i@28@00))
              0)
            (sum_square%limited ($Snap.combine
              $Snap.unit
              ($Snap.combine
                $Snap.unit
                ($Snap.combine
                  $Snap.unit
                  ($Snap.combine
                    $Snap.unit
                    ($Snap.combine
                      $Snap.unit
                      ($Snap.combine
                        $Snap.unit
                        ($Snap.combine
                          $Snap.unit
                          ($Snap.combine
                            $Snap.unit
                            ($Snap.combine
                              $Snap.unit
                              ($SortWrappers.$FVF<Ref__Integer_value>To$Snap (sm@87@00 s@$ i@28@00 lo@29@00 hi@30@00 step@31@00 min@32@00 max@33@00 ar@34@00))))))))))) (+
              i@28@00
              1) lo@29@00 hi@30@00 step@31@00 min@32@00 max@33@00 ar@34@00))
          0))))
  :pattern ((sum_square s@$ i@28@00 lo@29@00 hi@30@00 step@31@00 min@32@00 max@33@00 ar@34@00))
  :qid |quant-u-9387|)))
(assert (forall ((s@$ $Snap) (i@28@00 Int) (lo@29@00 Int) (hi@30@00 Int) (step@31@00 Int) (min@32@00 Int) (max@33@00 Int) (ar@34@00 Seq<$Ref>)) (!
  (=>
    (sum_square%precondition s@$ i@28@00 lo@29@00 hi@30@00 step@31@00 min@32@00 max@33@00 ar@34@00)
    (ite
      (< i@28@00 max@33@00)
      (sum_square%precondition ($Snap.combine
        $Snap.unit
        ($Snap.combine
          $Snap.unit
          ($Snap.combine
            $Snap.unit
            ($Snap.combine
              $Snap.unit
              ($Snap.combine
                $Snap.unit
                ($Snap.combine
                  $Snap.unit
                  ($Snap.combine
                    $Snap.unit
                    ($Snap.combine
                      $Snap.unit
                      ($Snap.combine
                        $Snap.unit
                        ($SortWrappers.$FVF<Ref__Integer_value>To$Snap (sm@87@00 s@$ i@28@00 lo@29@00 hi@30@00 step@31@00 min@32@00 max@33@00 ar@34@00))))))))))) (+
        i@28@00
        1) lo@29@00 hi@30@00 step@31@00 min@32@00 max@33@00 ar@34@00)
      true))
  :pattern ((sum_square s@$ i@28@00 lo@29@00 hi@30@00 step@31@00 min@32@00 max@33@00 ar@34@00))
  :qid |quant-u-9388|)))
; End function- and predicate-related preamble
; ------------------------------------------------------------
; ---------- Ref__loop_main_54 ----------
(declare-const diz@0@01 $Ref)
(declare-const current_thread_id@1@01 Int)
(declare-const len@2@01 Int)
(declare-const ar@3@01 Seq<$Ref>)
(declare-const br@4@01 Seq<$Ref>)
(declare-const cr@5@01 Seq<$Ref>)
(declare-const diz@6@01 $Ref)
(declare-const current_thread_id@7@01 Int)
(declare-const len@8@01 Int)
(declare-const ar@9@01 Seq<$Ref>)
(declare-const br@10@01 Seq<$Ref>)
(declare-const cr@11@01 Seq<$Ref>)
(set-option :timeout 0)
(push) ; 1
(declare-const $t@12@01 $Snap)
(assert (= $t@12@01 ($Snap.combine ($Snap.first $t@12@01) ($Snap.second $t@12@01))))
(assert (= ($Snap.first $t@12@01) $Snap.unit))
; [eval] diz != null
(assert (not (= diz@6@01 $Ref.null)))
(assert (=
  ($Snap.second $t@12@01)
  ($Snap.combine
    ($Snap.first ($Snap.second $t@12@01))
    ($Snap.second ($Snap.second $t@12@01)))))
(assert (= ($Snap.first ($Snap.second $t@12@01)) $Snap.unit))
; [eval] current_thread_id >= 0
(assert (>= current_thread_id@7@01 0))
(assert (=
  ($Snap.second ($Snap.second $t@12@01))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second $t@12@01)))
    ($Snap.second ($Snap.second ($Snap.second $t@12@01))))))
(assert (= ($Snap.first ($Snap.second ($Snap.second $t@12@01))) $Snap.unit))
; [eval] 0 < len ==> |ar| == len
; [eval] 0 < len
(push) ; 2
(push) ; 3
(set-option :timeout 10)
(assert (not (not (< 0 len@8@01))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (< 0 len@8@01)))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; [then-branch: 0 | 0 < len@8@01 | live]
; [else-branch: 0 | !(0 < len@8@01) | live]
(set-option :timeout 0)
(push) ; 3
; [then-branch: 0 | 0 < len@8@01]
(assert (< 0 len@8@01))
; [eval] |ar| == len
; [eval] |ar|
(pop) ; 3
(push) ; 3
; [else-branch: 0 | !(0 < len@8@01)]
(assert (not (< 0 len@8@01)))
(pop) ; 3
(pop) ; 2
; Joined path conditions
; Joined path conditions
(assert (or (not (< 0 len@8@01)) (< 0 len@8@01)))
(assert (=> (< 0 len@8@01) (= (Seq_length ar@9@01) len@8@01)))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second $t@12@01)))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@12@01))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@12@01)))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@12@01))))
  $Snap.unit))
; [eval] (forall j: Int, k: Int :: { ar[j], ar[k] } 0 <= j && (j < |ar| && (0 <= k && (k < |ar| && j != k))) ==> ar[j] != ar[k])
(declare-const j@13@01 Int)
(declare-const k@14@01 Int)
(push) ; 2
; [eval] 0 <= j && (j < |ar| && (0 <= k && (k < |ar| && j != k))) ==> ar[j] != ar[k]
; [eval] 0 <= j && (j < |ar| && (0 <= k && (k < |ar| && j != k)))
; [eval] 0 <= j
(push) ; 3
; [then-branch: 1 | !(0 <= j@13@01) | live]
; [else-branch: 1 | 0 <= j@13@01 | live]
(push) ; 4
; [then-branch: 1 | !(0 <= j@13@01)]
(assert (not (<= 0 j@13@01)))
(pop) ; 4
(push) ; 4
; [else-branch: 1 | 0 <= j@13@01]
(assert (<= 0 j@13@01))
; [eval] j < |ar|
; [eval] |ar|
(push) ; 5
; [then-branch: 2 | !(j@13@01 < |ar@9@01|) | live]
; [else-branch: 2 | j@13@01 < |ar@9@01| | live]
(push) ; 6
; [then-branch: 2 | !(j@13@01 < |ar@9@01|)]
(assert (not (< j@13@01 (Seq_length ar@9@01))))
(pop) ; 6
(push) ; 6
; [else-branch: 2 | j@13@01 < |ar@9@01|]
(assert (< j@13@01 (Seq_length ar@9@01)))
; [eval] 0 <= k
(push) ; 7
; [then-branch: 3 | !(0 <= k@14@01) | live]
; [else-branch: 3 | 0 <= k@14@01 | live]
(push) ; 8
; [then-branch: 3 | !(0 <= k@14@01)]
(assert (not (<= 0 k@14@01)))
(pop) ; 8
(push) ; 8
; [else-branch: 3 | 0 <= k@14@01]
(assert (<= 0 k@14@01))
; [eval] k < |ar|
; [eval] |ar|
(push) ; 9
; [then-branch: 4 | !(k@14@01 < |ar@9@01|) | live]
; [else-branch: 4 | k@14@01 < |ar@9@01| | live]
(push) ; 10
; [then-branch: 4 | !(k@14@01 < |ar@9@01|)]
(assert (not (< k@14@01 (Seq_length ar@9@01))))
(pop) ; 10
(push) ; 10
; [else-branch: 4 | k@14@01 < |ar@9@01|]
(assert (< k@14@01 (Seq_length ar@9@01)))
; [eval] j != k
(pop) ; 10
(pop) ; 9
; Joined path conditions
; Joined path conditions
(assert (or (< k@14@01 (Seq_length ar@9@01)) (not (< k@14@01 (Seq_length ar@9@01)))))
(pop) ; 8
(pop) ; 7
; Joined path conditions
; Joined path conditions
(assert (=>
  (<= 0 k@14@01)
  (and
    (<= 0 k@14@01)
    (or (< k@14@01 (Seq_length ar@9@01)) (not (< k@14@01 (Seq_length ar@9@01)))))))
(assert (or (<= 0 k@14@01) (not (<= 0 k@14@01))))
(pop) ; 6
(pop) ; 5
; Joined path conditions
; Joined path conditions
(assert (=>
  (< j@13@01 (Seq_length ar@9@01))
  (and
    (< j@13@01 (Seq_length ar@9@01))
    (=>
      (<= 0 k@14@01)
      (and
        (<= 0 k@14@01)
        (or
          (< k@14@01 (Seq_length ar@9@01))
          (not (< k@14@01 (Seq_length ar@9@01))))))
    (or (<= 0 k@14@01) (not (<= 0 k@14@01))))))
(assert (or (< j@13@01 (Seq_length ar@9@01)) (not (< j@13@01 (Seq_length ar@9@01)))))
(pop) ; 4
(pop) ; 3
; Joined path conditions
; Joined path conditions
(assert (=>
  (<= 0 j@13@01)
  (and
    (<= 0 j@13@01)
    (=>
      (< j@13@01 (Seq_length ar@9@01))
      (and
        (< j@13@01 (Seq_length ar@9@01))
        (=>
          (<= 0 k@14@01)
          (and
            (<= 0 k@14@01)
            (or
              (< k@14@01 (Seq_length ar@9@01))
              (not (< k@14@01 (Seq_length ar@9@01))))))
        (or (<= 0 k@14@01) (not (<= 0 k@14@01)))))
    (or (< j@13@01 (Seq_length ar@9@01)) (not (< j@13@01 (Seq_length ar@9@01)))))))
(assert (or (<= 0 j@13@01) (not (<= 0 j@13@01))))
(push) ; 3
; [then-branch: 5 | 0 <= j@13@01 && j@13@01 < |ar@9@01| && 0 <= k@14@01 && k@14@01 < |ar@9@01| && j@13@01 != k@14@01 | live]
; [else-branch: 5 | !(0 <= j@13@01 && j@13@01 < |ar@9@01| && 0 <= k@14@01 && k@14@01 < |ar@9@01| && j@13@01 != k@14@01) | live]
(push) ; 4
; [then-branch: 5 | 0 <= j@13@01 && j@13@01 < |ar@9@01| && 0 <= k@14@01 && k@14@01 < |ar@9@01| && j@13@01 != k@14@01]
(assert (and
  (<= 0 j@13@01)
  (and
    (< j@13@01 (Seq_length ar@9@01))
    (and
      (<= 0 k@14@01)
      (and (< k@14@01 (Seq_length ar@9@01)) (not (= j@13@01 k@14@01)))))))
; [eval] ar[j] != ar[k]
; [eval] ar[j]
(push) ; 5
(assert (not (>= j@13@01 0)))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
; [eval] ar[k]
(push) ; 5
(assert (not (>= k@14@01 0)))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(pop) ; 4
(push) ; 4
; [else-branch: 5 | !(0 <= j@13@01 && j@13@01 < |ar@9@01| && 0 <= k@14@01 && k@14@01 < |ar@9@01| && j@13@01 != k@14@01)]
(assert (not
  (and
    (<= 0 j@13@01)
    (and
      (< j@13@01 (Seq_length ar@9@01))
      (and
        (<= 0 k@14@01)
        (and (< k@14@01 (Seq_length ar@9@01)) (not (= j@13@01 k@14@01))))))))
(pop) ; 4
(pop) ; 3
; Joined path conditions
(assert (=>
  (and
    (<= 0 j@13@01)
    (and
      (< j@13@01 (Seq_length ar@9@01))
      (and
        (<= 0 k@14@01)
        (and (< k@14@01 (Seq_length ar@9@01)) (not (= j@13@01 k@14@01))))))
  (and
    (<= 0 j@13@01)
    (< j@13@01 (Seq_length ar@9@01))
    (<= 0 k@14@01)
    (< k@14@01 (Seq_length ar@9@01))
    (not (= j@13@01 k@14@01)))))
; Joined path conditions
(assert (or
  (not
    (and
      (<= 0 j@13@01)
      (and
        (< j@13@01 (Seq_length ar@9@01))
        (and
          (<= 0 k@14@01)
          (and (< k@14@01 (Seq_length ar@9@01)) (not (= j@13@01 k@14@01)))))))
  (and
    (<= 0 j@13@01)
    (and
      (< j@13@01 (Seq_length ar@9@01))
      (and
        (<= 0 k@14@01)
        (and (< k@14@01 (Seq_length ar@9@01)) (not (= j@13@01 k@14@01))))))))
(pop) ; 2
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall ((j@13@01 Int) (k@14@01 Int)) (!
  (and
    (=>
      (<= 0 j@13@01)
      (and
        (<= 0 j@13@01)
        (=>
          (< j@13@01 (Seq_length ar@9@01))
          (and
            (< j@13@01 (Seq_length ar@9@01))
            (=>
              (<= 0 k@14@01)
              (and
                (<= 0 k@14@01)
                (or
                  (< k@14@01 (Seq_length ar@9@01))
                  (not (< k@14@01 (Seq_length ar@9@01))))))
            (or (<= 0 k@14@01) (not (<= 0 k@14@01)))))
        (or
          (< j@13@01 (Seq_length ar@9@01))
          (not (< j@13@01 (Seq_length ar@9@01))))))
    (or (<= 0 j@13@01) (not (<= 0 j@13@01)))
    (=>
      (and
        (<= 0 j@13@01)
        (and
          (< j@13@01 (Seq_length ar@9@01))
          (and
            (<= 0 k@14@01)
            (and (< k@14@01 (Seq_length ar@9@01)) (not (= j@13@01 k@14@01))))))
      (and
        (<= 0 j@13@01)
        (< j@13@01 (Seq_length ar@9@01))
        (<= 0 k@14@01)
        (< k@14@01 (Seq_length ar@9@01))
        (not (= j@13@01 k@14@01))))
    (or
      (not
        (and
          (<= 0 j@13@01)
          (and
            (< j@13@01 (Seq_length ar@9@01))
            (and
              (<= 0 k@14@01)
              (and (< k@14@01 (Seq_length ar@9@01)) (not (= j@13@01 k@14@01)))))))
      (and
        (<= 0 j@13@01)
        (and
          (< j@13@01 (Seq_length ar@9@01))
          (and
            (<= 0 k@14@01)
            (and (< k@14@01 (Seq_length ar@9@01)) (not (= j@13@01 k@14@01))))))))
  :pattern ((Seq_index ar@9@01 j@13@01) (Seq_index ar@9@01 k@14@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/third_party/testDepParLoopBack.vpr@62@12@62@106-aux|)))
(assert (forall ((j@13@01 Int) (k@14@01 Int)) (!
  (=>
    (and
      (<= 0 j@13@01)
      (and
        (< j@13@01 (Seq_length ar@9@01))
        (and
          (<= 0 k@14@01)
          (and (< k@14@01 (Seq_length ar@9@01)) (not (= j@13@01 k@14@01))))))
    (not (= (Seq_index ar@9@01 j@13@01) (Seq_index ar@9@01 k@14@01))))
  :pattern ((Seq_index ar@9@01 j@13@01) (Seq_index ar@9@01 k@14@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/third_party/testDepParLoopBack.vpr@62@12@62@106|)))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@12@01))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@12@01)))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@12@01))))))))
(declare-const i@15@01 Int)
(push) ; 2
; [eval] 0 <= i && i < len
; [eval] 0 <= i
(push) ; 3
; [then-branch: 6 | !(0 <= i@15@01) | live]
; [else-branch: 6 | 0 <= i@15@01 | live]
(push) ; 4
; [then-branch: 6 | !(0 <= i@15@01)]
(assert (not (<= 0 i@15@01)))
(pop) ; 4
(push) ; 4
; [else-branch: 6 | 0 <= i@15@01]
(assert (<= 0 i@15@01))
; [eval] i < len
(pop) ; 4
(pop) ; 3
; Joined path conditions
; Joined path conditions
(assert (or (<= 0 i@15@01) (not (<= 0 i@15@01))))
(assert (and (<= 0 i@15@01) (< i@15@01 len@8@01)))
; [eval] ar[i]
(push) ; 3
(assert (not (>= i@15@01 0)))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(push) ; 3
(assert (not (< i@15@01 (Seq_length ar@9@01))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(pop) ; 2
(declare-fun inv@16@01 ($Ref) Int)
(declare-fun img@17@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
(assert (forall ((i@15@01 Int)) (!
  (=>
    (and (<= 0 i@15@01) (< i@15@01 len@8@01))
    (or (<= 0 i@15@01) (not (<= 0 i@15@01))))
  :pattern ((Seq_index ar@9@01 i@15@01))
  :qid |Ref__Integer_value-aux|)))
; Check receiver injectivity
(push) ; 2
(assert (not (forall ((i1@15@01 Int) (i2@15@01 Int)) (!
  (=>
    (and
      (and (<= 0 i1@15@01) (< i1@15@01 len@8@01))
      (and (<= 0 i2@15@01) (< i2@15@01 len@8@01))
      (= (Seq_index ar@9@01 i1@15@01) (Seq_index ar@9@01 i2@15@01)))
    (= i1@15@01 i2@15@01))
  
  :qid |Ref__Integer_value-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 2
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((i@15@01 Int)) (!
  (=>
    (and (<= 0 i@15@01) (< i@15@01 len@8@01))
    (and
      (= (inv@16@01 (Seq_index ar@9@01 i@15@01)) i@15@01)
      (img@17@01 (Seq_index ar@9@01 i@15@01))))
  :pattern ((Seq_index ar@9@01 i@15@01))
  :qid |quant-u-9390|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@17@01 r) (and (<= 0 (inv@16@01 r)) (< (inv@16@01 r) len@8@01)))
    (= (Seq_index ar@9@01 (inv@16@01 r)) r))
  :pattern ((inv@16@01 r))
  :qid |Ref__Integer_value-fctOfInv|)))
; Permissions are non-negative
; Field permissions are at most one
; Permission implies non-null receiver
(assert (forall ((i@15@01 Int)) (!
  (=>
    (and (<= 0 i@15@01) (< i@15@01 len@8@01))
    (not (= (Seq_index ar@9@01 i@15@01) $Ref.null)))
  :pattern ((Seq_index ar@9@01 i@15@01))
  :qid |Ref__Integer_value-permImpliesNonNull|)))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@12@01)))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@12@01))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@12@01)))))))))
; [eval] 0 <= 0 && 0 < len
; [eval] 0 <= 0
(push) ; 2
; [then-branch: 7 | False | live]
; [else-branch: 7 | True | live]
(push) ; 3
; [then-branch: 7 | False]
(assert false)
(pop) ; 3
(push) ; 3
; [else-branch: 7 | True]
; [eval] 0 < len
(pop) ; 3
(pop) ; 2
; Joined path conditions
; Joined path conditions
(push) ; 2
(set-option :timeout 10)
(assert (not (not (< 0 len@8@01))))
(check-sat)
; unknown
(pop) ; 2
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 2
(set-option :timeout 10)
(assert (not (< 0 len@8@01)))
(check-sat)
; unknown
(pop) ; 2
; 0.00s
; (get-info :all-statistics)
; [then-branch: 8 | 0 < len@8@01 | live]
; [else-branch: 8 | !(0 < len@8@01) | live]
(set-option :timeout 0)
(push) ; 2
; [then-branch: 8 | 0 < len@8@01]
(assert (< 0 len@8@01))
; [eval] ar[0]
(push) ; 3
(assert (not (< 0 (Seq_length ar@9@01))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(declare-const sm@18@01 $FVF<Ref__Integer_value>)
; Definitional axioms for singleton-SM's value
(assert (=
  ($FVF.lookup_Ref__Integer_value (as sm@18@01  $FVF<Ref__Integer_value>) (Seq_index
    ar@9@01
    0))
  ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@12@01)))))))))
(assert (<=
  $Perm.No
  (ite
    (= (Seq_index ar@9@01 0) (Seq_index ar@9@01 0))
    (/ (to_real 1) (to_real 2))
    $Perm.No)))
(assert (<=
  (ite
    (= (Seq_index ar@9@01 0) (Seq_index ar@9@01 0))
    (/ (to_real 1) (to_real 2))
    $Perm.No)
  $Perm.Write))
(assert (=>
  (= (Seq_index ar@9@01 0) (Seq_index ar@9@01 0))
  (not (= (Seq_index ar@9@01 0) $Ref.null))))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@12@01))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@12@01)))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@12@01))))))))))
(declare-const i@19@01 Int)
(push) ; 3
; [eval] 1 <= i && i < (|ar| - 1 < len ? |ar| - 1 : len) + 1
; [eval] 1 <= i
(push) ; 4
; [then-branch: 9 | !(1 <= i@19@01) | live]
; [else-branch: 9 | 1 <= i@19@01 | live]
(push) ; 5
; [then-branch: 9 | !(1 <= i@19@01)]
(assert (not (<= 1 i@19@01)))
(pop) ; 5
(push) ; 5
; [else-branch: 9 | 1 <= i@19@01]
(assert (<= 1 i@19@01))
; [eval] i < (|ar| - 1 < len ? |ar| - 1 : len) + 1
; [eval] (|ar| - 1 < len ? |ar| - 1 : len) + 1
; [eval] (|ar| - 1 < len ? |ar| - 1 : len)
; [eval] |ar| - 1 < len
; [eval] |ar| - 1
; [eval] |ar|
(push) ; 6
(push) ; 7
(set-option :timeout 10)
(assert (not (not (< (- (Seq_length ar@9@01) 1) len@8@01))))
(check-sat)
; unknown
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 7
(set-option :timeout 10)
(assert (not (< (- (Seq_length ar@9@01) 1) len@8@01)))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
; [then-branch: 10 | |ar@9@01| - 1 < len@8@01 | live]
; [else-branch: 10 | !(|ar@9@01| - 1 < len@8@01) | dead]
(set-option :timeout 0)
(push) ; 7
; [then-branch: 10 | |ar@9@01| - 1 < len@8@01]
(assert (< (- (Seq_length ar@9@01) 1) len@8@01))
; [eval] |ar| - 1
; [eval] |ar|
(pop) ; 7
(pop) ; 6
; Joined path conditions
(assert (< (- (Seq_length ar@9@01) 1) len@8@01))
(pop) ; 5
(pop) ; 4
; Joined path conditions
; Joined path conditions
(assert (=> (<= 1 i@19@01) (and (<= 1 i@19@01) (< (- (Seq_length ar@9@01) 1) len@8@01))))
(assert (or (<= 1 i@19@01) (not (<= 1 i@19@01))))
(assert (and (<= 1 i@19@01) (< i@19@01 (+ (- (Seq_length ar@9@01) 1) 1))))
; [eval] ar[i]
(push) ; 4
(assert (not (>= i@19@01 0)))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(push) ; 4
(assert (not (< i@19@01 (Seq_length ar@9@01))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(pop) ; 3
(declare-fun inv@20@01 ($Ref) Int)
(declare-fun img@21@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
(assert (forall ((i@19@01 Int)) (!
  (=>
    (and (<= 1 i@19@01) (< i@19@01 (+ (- (Seq_length ar@9@01) 1) 1)))
    (and
      (=>
        (<= 1 i@19@01)
        (and (<= 1 i@19@01) (< (- (Seq_length ar@9@01) 1) len@8@01)))
      (or (<= 1 i@19@01) (not (<= 1 i@19@01)))))
  :pattern ((Seq_index ar@9@01 i@19@01))
  :qid |Ref__Integer_value-aux|)))
; Check receiver injectivity
(push) ; 3
(assert (not (forall ((i1@19@01 Int) (i2@19@01 Int)) (!
  (=>
    (and
      (and (<= 1 i1@19@01) (< i1@19@01 (+ (- (Seq_length ar@9@01) 1) 1)))
      (and (<= 1 i2@19@01) (< i2@19@01 (+ (- (Seq_length ar@9@01) 1) 1)))
      (= (Seq_index ar@9@01 i1@19@01) (Seq_index ar@9@01 i2@19@01)))
    (= i1@19@01 i2@19@01))
  
  :qid |Ref__Integer_value-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((i@19@01 Int)) (!
  (=>
    (and (<= 1 i@19@01) (< i@19@01 (+ (- (Seq_length ar@9@01) 1) 1)))
    (and
      (= (inv@20@01 (Seq_index ar@9@01 i@19@01)) i@19@01)
      (img@21@01 (Seq_index ar@9@01 i@19@01))))
  :pattern ((Seq_index ar@9@01 i@19@01))
  :qid |quant-u-9392|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@21@01 r)
      (and
        (<= 1 (inv@20@01 r))
        (< (inv@20@01 r) (+ (- (Seq_length ar@9@01) 1) 1))))
    (= (Seq_index ar@9@01 (inv@20@01 r)) r))
  :pattern ((inv@20@01 r))
  :qid |Ref__Integer_value-fctOfInv|)))
; Permissions are non-negative
; Field permissions are at most one
; Permission implies non-null receiver
(assert (forall ((i@19@01 Int)) (!
  (=>
    (and (<= 1 i@19@01) (< i@19@01 (+ (- (Seq_length ar@9@01) 1) 1)))
    (not (= (Seq_index ar@9@01 i@19@01) $Ref.null)))
  :pattern ((Seq_index ar@9@01 i@19@01))
  :qid |Ref__Integer_value-permImpliesNonNull|)))
(push) ; 3
(set-option :timeout 10)
(assert (not (forall ((r $Ref)) (!
  (and
    (= (Seq_index ar@9@01 i@19@01) (Seq_index ar@9@01 i@15@01))
    (=
      (and
        (img@21@01 r)
        (and
          (<= 1 (inv@20@01 r))
          (< (inv@20@01 r) (+ (- (Seq_length ar@9@01) 1) 1))))
      (and (img@17@01 r) (and (<= 0 (inv@16@01 r)) (< (inv@16@01 r) len@8@01)))))
  
  :qid |quant-u-9393|))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@12@01)))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@12@01))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@12@01)))))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@12@01))))))))
  $Snap.unit))
; [eval] 0 < len ==> |br| == len
; [eval] 0 < len
(set-option :timeout 0)
(push) ; 3
(push) ; 4
(set-option :timeout 10)
(assert (not (not (< 0 len@8@01))))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; [then-branch: 11 | 0 < len@8@01 | live]
; [else-branch: 11 | !(0 < len@8@01) | dead]
(set-option :timeout 0)
(push) ; 4
; [then-branch: 11 | 0 < len@8@01]
; [eval] |br| == len
; [eval] |br|
(pop) ; 4
(pop) ; 3
; Joined path conditions
(assert (=> (< 0 len@8@01) (= (Seq_length br@10@01) len@8@01)))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@12@01))))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@12@01)))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@12@01))))))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@12@01)))))))))
  $Snap.unit))
; [eval] (forall j: Int, k: Int :: { br[j], br[k] } 0 <= j && (j < |br| && (0 <= k && (k < |br| && j != k))) ==> br[j] != br[k])
(declare-const j@22@01 Int)
(declare-const k@23@01 Int)
(push) ; 3
; [eval] 0 <= j && (j < |br| && (0 <= k && (k < |br| && j != k))) ==> br[j] != br[k]
; [eval] 0 <= j && (j < |br| && (0 <= k && (k < |br| && j != k)))
; [eval] 0 <= j
(push) ; 4
; [then-branch: 12 | !(0 <= j@22@01) | live]
; [else-branch: 12 | 0 <= j@22@01 | live]
(push) ; 5
; [then-branch: 12 | !(0 <= j@22@01)]
(assert (not (<= 0 j@22@01)))
(pop) ; 5
(push) ; 5
; [else-branch: 12 | 0 <= j@22@01]
(assert (<= 0 j@22@01))
; [eval] j < |br|
; [eval] |br|
(push) ; 6
; [then-branch: 13 | !(j@22@01 < |br@10@01|) | live]
; [else-branch: 13 | j@22@01 < |br@10@01| | live]
(push) ; 7
; [then-branch: 13 | !(j@22@01 < |br@10@01|)]
(assert (not (< j@22@01 (Seq_length br@10@01))))
(pop) ; 7
(push) ; 7
; [else-branch: 13 | j@22@01 < |br@10@01|]
(assert (< j@22@01 (Seq_length br@10@01)))
; [eval] 0 <= k
(push) ; 8
; [then-branch: 14 | !(0 <= k@23@01) | live]
; [else-branch: 14 | 0 <= k@23@01 | live]
(push) ; 9
; [then-branch: 14 | !(0 <= k@23@01)]
(assert (not (<= 0 k@23@01)))
(pop) ; 9
(push) ; 9
; [else-branch: 14 | 0 <= k@23@01]
(assert (<= 0 k@23@01))
; [eval] k < |br|
; [eval] |br|
(push) ; 10
; [then-branch: 15 | !(k@23@01 < |br@10@01|) | live]
; [else-branch: 15 | k@23@01 < |br@10@01| | live]
(push) ; 11
; [then-branch: 15 | !(k@23@01 < |br@10@01|)]
(assert (not (< k@23@01 (Seq_length br@10@01))))
(pop) ; 11
(push) ; 11
; [else-branch: 15 | k@23@01 < |br@10@01|]
(assert (< k@23@01 (Seq_length br@10@01)))
; [eval] j != k
(pop) ; 11
(pop) ; 10
; Joined path conditions
; Joined path conditions
(assert (or (< k@23@01 (Seq_length br@10@01)) (not (< k@23@01 (Seq_length br@10@01)))))
(pop) ; 9
(pop) ; 8
; Joined path conditions
; Joined path conditions
(assert (=>
  (<= 0 k@23@01)
  (and
    (<= 0 k@23@01)
    (or
      (< k@23@01 (Seq_length br@10@01))
      (not (< k@23@01 (Seq_length br@10@01)))))))
(assert (or (<= 0 k@23@01) (not (<= 0 k@23@01))))
(pop) ; 7
(pop) ; 6
; Joined path conditions
; Joined path conditions
(assert (=>
  (< j@22@01 (Seq_length br@10@01))
  (and
    (< j@22@01 (Seq_length br@10@01))
    (=>
      (<= 0 k@23@01)
      (and
        (<= 0 k@23@01)
        (or
          (< k@23@01 (Seq_length br@10@01))
          (not (< k@23@01 (Seq_length br@10@01))))))
    (or (<= 0 k@23@01) (not (<= 0 k@23@01))))))
(assert (or (< j@22@01 (Seq_length br@10@01)) (not (< j@22@01 (Seq_length br@10@01)))))
(pop) ; 5
(pop) ; 4
; Joined path conditions
; Joined path conditions
(assert (=>
  (<= 0 j@22@01)
  (and
    (<= 0 j@22@01)
    (=>
      (< j@22@01 (Seq_length br@10@01))
      (and
        (< j@22@01 (Seq_length br@10@01))
        (=>
          (<= 0 k@23@01)
          (and
            (<= 0 k@23@01)
            (or
              (< k@23@01 (Seq_length br@10@01))
              (not (< k@23@01 (Seq_length br@10@01))))))
        (or (<= 0 k@23@01) (not (<= 0 k@23@01)))))
    (or
      (< j@22@01 (Seq_length br@10@01))
      (not (< j@22@01 (Seq_length br@10@01)))))))
(assert (or (<= 0 j@22@01) (not (<= 0 j@22@01))))
(push) ; 4
; [then-branch: 16 | 0 <= j@22@01 && j@22@01 < |br@10@01| && 0 <= k@23@01 && k@23@01 < |br@10@01| && j@22@01 != k@23@01 | live]
; [else-branch: 16 | !(0 <= j@22@01 && j@22@01 < |br@10@01| && 0 <= k@23@01 && k@23@01 < |br@10@01| && j@22@01 != k@23@01) | live]
(push) ; 5
; [then-branch: 16 | 0 <= j@22@01 && j@22@01 < |br@10@01| && 0 <= k@23@01 && k@23@01 < |br@10@01| && j@22@01 != k@23@01]
(assert (and
  (<= 0 j@22@01)
  (and
    (< j@22@01 (Seq_length br@10@01))
    (and
      (<= 0 k@23@01)
      (and (< k@23@01 (Seq_length br@10@01)) (not (= j@22@01 k@23@01)))))))
; [eval] br[j] != br[k]
; [eval] br[j]
(push) ; 6
(assert (not (>= j@22@01 0)))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
; [eval] br[k]
(push) ; 6
(assert (not (>= k@23@01 0)))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(pop) ; 5
(push) ; 5
; [else-branch: 16 | !(0 <= j@22@01 && j@22@01 < |br@10@01| && 0 <= k@23@01 && k@23@01 < |br@10@01| && j@22@01 != k@23@01)]
(assert (not
  (and
    (<= 0 j@22@01)
    (and
      (< j@22@01 (Seq_length br@10@01))
      (and
        (<= 0 k@23@01)
        (and (< k@23@01 (Seq_length br@10@01)) (not (= j@22@01 k@23@01))))))))
(pop) ; 5
(pop) ; 4
; Joined path conditions
(assert (=>
  (and
    (<= 0 j@22@01)
    (and
      (< j@22@01 (Seq_length br@10@01))
      (and
        (<= 0 k@23@01)
        (and (< k@23@01 (Seq_length br@10@01)) (not (= j@22@01 k@23@01))))))
  (and
    (<= 0 j@22@01)
    (< j@22@01 (Seq_length br@10@01))
    (<= 0 k@23@01)
    (< k@23@01 (Seq_length br@10@01))
    (not (= j@22@01 k@23@01)))))
; Joined path conditions
(assert (or
  (not
    (and
      (<= 0 j@22@01)
      (and
        (< j@22@01 (Seq_length br@10@01))
        (and
          (<= 0 k@23@01)
          (and (< k@23@01 (Seq_length br@10@01)) (not (= j@22@01 k@23@01)))))))
  (and
    (<= 0 j@22@01)
    (and
      (< j@22@01 (Seq_length br@10@01))
      (and
        (<= 0 k@23@01)
        (and (< k@23@01 (Seq_length br@10@01)) (not (= j@22@01 k@23@01))))))))
(pop) ; 3
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall ((j@22@01 Int) (k@23@01 Int)) (!
  (and
    (=>
      (<= 0 j@22@01)
      (and
        (<= 0 j@22@01)
        (=>
          (< j@22@01 (Seq_length br@10@01))
          (and
            (< j@22@01 (Seq_length br@10@01))
            (=>
              (<= 0 k@23@01)
              (and
                (<= 0 k@23@01)
                (or
                  (< k@23@01 (Seq_length br@10@01))
                  (not (< k@23@01 (Seq_length br@10@01))))))
            (or (<= 0 k@23@01) (not (<= 0 k@23@01)))))
        (or
          (< j@22@01 (Seq_length br@10@01))
          (not (< j@22@01 (Seq_length br@10@01))))))
    (or (<= 0 j@22@01) (not (<= 0 j@22@01)))
    (=>
      (and
        (<= 0 j@22@01)
        (and
          (< j@22@01 (Seq_length br@10@01))
          (and
            (<= 0 k@23@01)
            (and (< k@23@01 (Seq_length br@10@01)) (not (= j@22@01 k@23@01))))))
      (and
        (<= 0 j@22@01)
        (< j@22@01 (Seq_length br@10@01))
        (<= 0 k@23@01)
        (< k@23@01 (Seq_length br@10@01))
        (not (= j@22@01 k@23@01))))
    (or
      (not
        (and
          (<= 0 j@22@01)
          (and
            (< j@22@01 (Seq_length br@10@01))
            (and
              (<= 0 k@23@01)
              (and (< k@23@01 (Seq_length br@10@01)) (not (= j@22@01 k@23@01)))))))
      (and
        (<= 0 j@22@01)
        (and
          (< j@22@01 (Seq_length br@10@01))
          (and
            (<= 0 k@23@01)
            (and (< k@23@01 (Seq_length br@10@01)) (not (= j@22@01 k@23@01))))))))
  :pattern ((Seq_index br@10@01 j@22@01) (Seq_index br@10@01 k@23@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/third_party/testDepParLoopBack.vpr@67@12@67@106-aux|)))
(assert (forall ((j@22@01 Int) (k@23@01 Int)) (!
  (=>
    (and
      (<= 0 j@22@01)
      (and
        (< j@22@01 (Seq_length br@10@01))
        (and
          (<= 0 k@23@01)
          (and (< k@23@01 (Seq_length br@10@01)) (not (= j@22@01 k@23@01))))))
    (not (= (Seq_index br@10@01 j@22@01) (Seq_index br@10@01 k@23@01))))
  :pattern ((Seq_index br@10@01 j@22@01) (Seq_index br@10@01 k@23@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/third_party/testDepParLoopBack.vpr@67@12@67@106|)))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@12@01)))))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@12@01))))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@12@01)))))))))))))
(declare-const i@24@01 Int)
(push) ; 3
; [eval] 0 <= i && i < len
; [eval] 0 <= i
(push) ; 4
; [then-branch: 17 | !(0 <= i@24@01) | live]
; [else-branch: 17 | 0 <= i@24@01 | live]
(push) ; 5
; [then-branch: 17 | !(0 <= i@24@01)]
(assert (not (<= 0 i@24@01)))
(pop) ; 5
(push) ; 5
; [else-branch: 17 | 0 <= i@24@01]
(assert (<= 0 i@24@01))
; [eval] i < len
(pop) ; 5
(pop) ; 4
; Joined path conditions
; Joined path conditions
(assert (or (<= 0 i@24@01) (not (<= 0 i@24@01))))
(assert (and (<= 0 i@24@01) (< i@24@01 len@8@01)))
; [eval] br[i]
(push) ; 4
(assert (not (>= i@24@01 0)))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(push) ; 4
(assert (not (< i@24@01 (Seq_length br@10@01))))
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
(assert (forall ((i@24@01 Int)) (!
  (=>
    (and (<= 0 i@24@01) (< i@24@01 len@8@01))
    (or (<= 0 i@24@01) (not (<= 0 i@24@01))))
  :pattern ((Seq_index br@10@01 i@24@01))
  :qid |Ref__Integer_value-aux|)))
; Check receiver injectivity
(push) ; 3
(assert (not (forall ((i1@24@01 Int) (i2@24@01 Int)) (!
  (=>
    (and
      (and (<= 0 i1@24@01) (< i1@24@01 len@8@01))
      (and (<= 0 i2@24@01) (< i2@24@01 len@8@01))
      (= (Seq_index br@10@01 i1@24@01) (Seq_index br@10@01 i2@24@01)))
    (= i1@24@01 i2@24@01))
  
  :qid |Ref__Integer_value-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((i@24@01 Int)) (!
  (=>
    (and (<= 0 i@24@01) (< i@24@01 len@8@01))
    (and
      (= (inv@25@01 (Seq_index br@10@01 i@24@01)) i@24@01)
      (img@26@01 (Seq_index br@10@01 i@24@01))))
  :pattern ((Seq_index br@10@01 i@24@01))
  :qid |quant-u-9395|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@26@01 r) (and (<= 0 (inv@25@01 r)) (< (inv@25@01 r) len@8@01)))
    (= (Seq_index br@10@01 (inv@25@01 r)) r))
  :pattern ((inv@25@01 r))
  :qid |Ref__Integer_value-fctOfInv|)))
; Permissions are non-negative
; Field permissions are at most one
; Permission implies non-null receiver
(assert (forall ((i@24@01 Int)) (!
  (=>
    (and (<= 0 i@24@01) (< i@24@01 len@8@01))
    (not (= (Seq_index br@10@01 i@24@01) $Ref.null)))
  :pattern ((Seq_index br@10@01 i@24@01))
  :qid |Ref__Integer_value-permImpliesNonNull|)))
(push) ; 3
(set-option :timeout 10)
(assert (not (forall ((r $Ref)) (!
  (and
    (= (Seq_index br@10@01 i@24@01) (Seq_index ar@9@01 i@19@01))
    (=
      (and (img@26@01 r) (and (<= 0 (inv@25@01 r)) (< (inv@25@01 r) len@8@01)))
      (and
        (img@21@01 r)
        (and
          (<= 1 (inv@20@01 r))
          (< (inv@20@01 r) (+ (- (Seq_length ar@9@01) 1) 1))))))
  
  :qid |quant-u-9396|))))
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
    (= (Seq_index br@10@01 i@24@01) (Seq_index ar@9@01 i@15@01))
    (=
      (and (img@26@01 r) (and (<= 0 (inv@25@01 r)) (< (inv@25@01 r) len@8@01)))
      (and (img@17@01 r) (and (<= 0 (inv@16@01 r)) (< (inv@16@01 r) len@8@01)))))
  
  :qid |quant-u-9397|))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@12@01))))))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@12@01)))))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@12@01))))))))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@12@01)))))))))))
  $Snap.unit))
; [eval] 0 < len ==> |cr| == len
; [eval] 0 < len
(set-option :timeout 0)
(push) ; 3
(push) ; 4
(set-option :timeout 10)
(assert (not (not (< 0 len@8@01))))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; [then-branch: 18 | 0 < len@8@01 | live]
; [else-branch: 18 | !(0 < len@8@01) | dead]
(set-option :timeout 0)
(push) ; 4
; [then-branch: 18 | 0 < len@8@01]
; [eval] |cr| == len
; [eval] |cr|
(pop) ; 4
(pop) ; 3
; Joined path conditions
(assert (=> (< 0 len@8@01) (= (Seq_length cr@11@01) len@8@01)))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@12@01)))))))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@12@01))))))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@12@01)))))))))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@12@01))))))))))))
  $Snap.unit))
; [eval] (forall j: Int, k: Int :: { cr[j], cr[k] } 0 <= j && (j < |cr| && (0 <= k && (k < |cr| && j != k))) ==> cr[j] != cr[k])
(declare-const j@27@01 Int)
(declare-const k@28@01 Int)
(push) ; 3
; [eval] 0 <= j && (j < |cr| && (0 <= k && (k < |cr| && j != k))) ==> cr[j] != cr[k]
; [eval] 0 <= j && (j < |cr| && (0 <= k && (k < |cr| && j != k)))
; [eval] 0 <= j
(push) ; 4
; [then-branch: 19 | !(0 <= j@27@01) | live]
; [else-branch: 19 | 0 <= j@27@01 | live]
(push) ; 5
; [then-branch: 19 | !(0 <= j@27@01)]
(assert (not (<= 0 j@27@01)))
(pop) ; 5
(push) ; 5
; [else-branch: 19 | 0 <= j@27@01]
(assert (<= 0 j@27@01))
; [eval] j < |cr|
; [eval] |cr|
(push) ; 6
; [then-branch: 20 | !(j@27@01 < |cr@11@01|) | live]
; [else-branch: 20 | j@27@01 < |cr@11@01| | live]
(push) ; 7
; [then-branch: 20 | !(j@27@01 < |cr@11@01|)]
(assert (not (< j@27@01 (Seq_length cr@11@01))))
(pop) ; 7
(push) ; 7
; [else-branch: 20 | j@27@01 < |cr@11@01|]
(assert (< j@27@01 (Seq_length cr@11@01)))
; [eval] 0 <= k
(push) ; 8
; [then-branch: 21 | !(0 <= k@28@01) | live]
; [else-branch: 21 | 0 <= k@28@01 | live]
(push) ; 9
; [then-branch: 21 | !(0 <= k@28@01)]
(assert (not (<= 0 k@28@01)))
(pop) ; 9
(push) ; 9
; [else-branch: 21 | 0 <= k@28@01]
(assert (<= 0 k@28@01))
; [eval] k < |cr|
; [eval] |cr|
(push) ; 10
; [then-branch: 22 | !(k@28@01 < |cr@11@01|) | live]
; [else-branch: 22 | k@28@01 < |cr@11@01| | live]
(push) ; 11
; [then-branch: 22 | !(k@28@01 < |cr@11@01|)]
(assert (not (< k@28@01 (Seq_length cr@11@01))))
(pop) ; 11
(push) ; 11
; [else-branch: 22 | k@28@01 < |cr@11@01|]
(assert (< k@28@01 (Seq_length cr@11@01)))
; [eval] j != k
(pop) ; 11
(pop) ; 10
; Joined path conditions
; Joined path conditions
(assert (or (< k@28@01 (Seq_length cr@11@01)) (not (< k@28@01 (Seq_length cr@11@01)))))
(pop) ; 9
(pop) ; 8
; Joined path conditions
; Joined path conditions
(assert (=>
  (<= 0 k@28@01)
  (and
    (<= 0 k@28@01)
    (or
      (< k@28@01 (Seq_length cr@11@01))
      (not (< k@28@01 (Seq_length cr@11@01)))))))
(assert (or (<= 0 k@28@01) (not (<= 0 k@28@01))))
(pop) ; 7
(pop) ; 6
; Joined path conditions
; Joined path conditions
(assert (=>
  (< j@27@01 (Seq_length cr@11@01))
  (and
    (< j@27@01 (Seq_length cr@11@01))
    (=>
      (<= 0 k@28@01)
      (and
        (<= 0 k@28@01)
        (or
          (< k@28@01 (Seq_length cr@11@01))
          (not (< k@28@01 (Seq_length cr@11@01))))))
    (or (<= 0 k@28@01) (not (<= 0 k@28@01))))))
(assert (or (< j@27@01 (Seq_length cr@11@01)) (not (< j@27@01 (Seq_length cr@11@01)))))
(pop) ; 5
(pop) ; 4
; Joined path conditions
; Joined path conditions
(assert (=>
  (<= 0 j@27@01)
  (and
    (<= 0 j@27@01)
    (=>
      (< j@27@01 (Seq_length cr@11@01))
      (and
        (< j@27@01 (Seq_length cr@11@01))
        (=>
          (<= 0 k@28@01)
          (and
            (<= 0 k@28@01)
            (or
              (< k@28@01 (Seq_length cr@11@01))
              (not (< k@28@01 (Seq_length cr@11@01))))))
        (or (<= 0 k@28@01) (not (<= 0 k@28@01)))))
    (or
      (< j@27@01 (Seq_length cr@11@01))
      (not (< j@27@01 (Seq_length cr@11@01)))))))
(assert (or (<= 0 j@27@01) (not (<= 0 j@27@01))))
(push) ; 4
; [then-branch: 23 | 0 <= j@27@01 && j@27@01 < |cr@11@01| && 0 <= k@28@01 && k@28@01 < |cr@11@01| && j@27@01 != k@28@01 | live]
; [else-branch: 23 | !(0 <= j@27@01 && j@27@01 < |cr@11@01| && 0 <= k@28@01 && k@28@01 < |cr@11@01| && j@27@01 != k@28@01) | live]
(push) ; 5
; [then-branch: 23 | 0 <= j@27@01 && j@27@01 < |cr@11@01| && 0 <= k@28@01 && k@28@01 < |cr@11@01| && j@27@01 != k@28@01]
(assert (and
  (<= 0 j@27@01)
  (and
    (< j@27@01 (Seq_length cr@11@01))
    (and
      (<= 0 k@28@01)
      (and (< k@28@01 (Seq_length cr@11@01)) (not (= j@27@01 k@28@01)))))))
; [eval] cr[j] != cr[k]
; [eval] cr[j]
(push) ; 6
(assert (not (>= j@27@01 0)))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
; [eval] cr[k]
(push) ; 6
(assert (not (>= k@28@01 0)))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(pop) ; 5
(push) ; 5
; [else-branch: 23 | !(0 <= j@27@01 && j@27@01 < |cr@11@01| && 0 <= k@28@01 && k@28@01 < |cr@11@01| && j@27@01 != k@28@01)]
(assert (not
  (and
    (<= 0 j@27@01)
    (and
      (< j@27@01 (Seq_length cr@11@01))
      (and
        (<= 0 k@28@01)
        (and (< k@28@01 (Seq_length cr@11@01)) (not (= j@27@01 k@28@01))))))))
(pop) ; 5
(pop) ; 4
; Joined path conditions
(assert (=>
  (and
    (<= 0 j@27@01)
    (and
      (< j@27@01 (Seq_length cr@11@01))
      (and
        (<= 0 k@28@01)
        (and (< k@28@01 (Seq_length cr@11@01)) (not (= j@27@01 k@28@01))))))
  (and
    (<= 0 j@27@01)
    (< j@27@01 (Seq_length cr@11@01))
    (<= 0 k@28@01)
    (< k@28@01 (Seq_length cr@11@01))
    (not (= j@27@01 k@28@01)))))
; Joined path conditions
(assert (or
  (not
    (and
      (<= 0 j@27@01)
      (and
        (< j@27@01 (Seq_length cr@11@01))
        (and
          (<= 0 k@28@01)
          (and (< k@28@01 (Seq_length cr@11@01)) (not (= j@27@01 k@28@01)))))))
  (and
    (<= 0 j@27@01)
    (and
      (< j@27@01 (Seq_length cr@11@01))
      (and
        (<= 0 k@28@01)
        (and (< k@28@01 (Seq_length cr@11@01)) (not (= j@27@01 k@28@01))))))))
(pop) ; 3
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall ((j@27@01 Int) (k@28@01 Int)) (!
  (and
    (=>
      (<= 0 j@27@01)
      (and
        (<= 0 j@27@01)
        (=>
          (< j@27@01 (Seq_length cr@11@01))
          (and
            (< j@27@01 (Seq_length cr@11@01))
            (=>
              (<= 0 k@28@01)
              (and
                (<= 0 k@28@01)
                (or
                  (< k@28@01 (Seq_length cr@11@01))
                  (not (< k@28@01 (Seq_length cr@11@01))))))
            (or (<= 0 k@28@01) (not (<= 0 k@28@01)))))
        (or
          (< j@27@01 (Seq_length cr@11@01))
          (not (< j@27@01 (Seq_length cr@11@01))))))
    (or (<= 0 j@27@01) (not (<= 0 j@27@01)))
    (=>
      (and
        (<= 0 j@27@01)
        (and
          (< j@27@01 (Seq_length cr@11@01))
          (and
            (<= 0 k@28@01)
            (and (< k@28@01 (Seq_length cr@11@01)) (not (= j@27@01 k@28@01))))))
      (and
        (<= 0 j@27@01)
        (< j@27@01 (Seq_length cr@11@01))
        (<= 0 k@28@01)
        (< k@28@01 (Seq_length cr@11@01))
        (not (= j@27@01 k@28@01))))
    (or
      (not
        (and
          (<= 0 j@27@01)
          (and
            (< j@27@01 (Seq_length cr@11@01))
            (and
              (<= 0 k@28@01)
              (and (< k@28@01 (Seq_length cr@11@01)) (not (= j@27@01 k@28@01)))))))
      (and
        (<= 0 j@27@01)
        (and
          (< j@27@01 (Seq_length cr@11@01))
          (and
            (<= 0 k@28@01)
            (and (< k@28@01 (Seq_length cr@11@01)) (not (= j@27@01 k@28@01))))))))
  :pattern ((Seq_index cr@11@01 j@27@01) (Seq_index cr@11@01 k@28@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/third_party/testDepParLoopBack.vpr@70@12@70@106-aux|)))
(assert (forall ((j@27@01 Int) (k@28@01 Int)) (!
  (=>
    (and
      (<= 0 j@27@01)
      (and
        (< j@27@01 (Seq_length cr@11@01))
        (and
          (<= 0 k@28@01)
          (and (< k@28@01 (Seq_length cr@11@01)) (not (= j@27@01 k@28@01))))))
    (not (= (Seq_index cr@11@01 j@27@01) (Seq_index cr@11@01 k@28@01))))
  :pattern ((Seq_index cr@11@01 j@27@01) (Seq_index cr@11@01 k@28@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/third_party/testDepParLoopBack.vpr@70@12@70@106|)))
(declare-const i@29@01 Int)
(push) ; 3
; [eval] 0 <= i && i < len
; [eval] 0 <= i
(push) ; 4
; [then-branch: 24 | !(0 <= i@29@01) | live]
; [else-branch: 24 | 0 <= i@29@01 | live]
(push) ; 5
; [then-branch: 24 | !(0 <= i@29@01)]
(assert (not (<= 0 i@29@01)))
(pop) ; 5
(push) ; 5
; [else-branch: 24 | 0 <= i@29@01]
(assert (<= 0 i@29@01))
; [eval] i < len
(pop) ; 5
(pop) ; 4
; Joined path conditions
; Joined path conditions
(assert (or (<= 0 i@29@01) (not (<= 0 i@29@01))))
(assert (and (<= 0 i@29@01) (< i@29@01 len@8@01)))
; [eval] cr[i]
(push) ; 4
(assert (not (>= i@29@01 0)))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(push) ; 4
(assert (not (< i@29@01 (Seq_length cr@11@01))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(pop) ; 3
(declare-fun inv@30@01 ($Ref) Int)
(declare-fun img@31@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
(assert (forall ((i@29@01 Int)) (!
  (=>
    (and (<= 0 i@29@01) (< i@29@01 len@8@01))
    (or (<= 0 i@29@01) (not (<= 0 i@29@01))))
  :pattern ((Seq_index cr@11@01 i@29@01))
  :qid |Ref__Integer_value-aux|)))
; Check receiver injectivity
(push) ; 3
(assert (not (forall ((i1@29@01 Int) (i2@29@01 Int)) (!
  (=>
    (and
      (and (<= 0 i1@29@01) (< i1@29@01 len@8@01))
      (and (<= 0 i2@29@01) (< i2@29@01 len@8@01))
      (= (Seq_index cr@11@01 i1@29@01) (Seq_index cr@11@01 i2@29@01)))
    (= i1@29@01 i2@29@01))
  
  :qid |Ref__Integer_value-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((i@29@01 Int)) (!
  (=>
    (and (<= 0 i@29@01) (< i@29@01 len@8@01))
    (and
      (= (inv@30@01 (Seq_index cr@11@01 i@29@01)) i@29@01)
      (img@31@01 (Seq_index cr@11@01 i@29@01))))
  :pattern ((Seq_index cr@11@01 i@29@01))
  :qid |quant-u-9399|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@31@01 r) (and (<= 0 (inv@30@01 r)) (< (inv@30@01 r) len@8@01)))
    (= (Seq_index cr@11@01 (inv@30@01 r)) r))
  :pattern ((inv@30@01 r))
  :qid |Ref__Integer_value-fctOfInv|)))
; Permissions are non-negative
; Field permissions are at most one
; Permission implies non-null receiver
(assert (forall ((i@29@01 Int)) (!
  (=>
    (and (<= 0 i@29@01) (< i@29@01 len@8@01))
    (not (= (Seq_index cr@11@01 i@29@01) $Ref.null)))
  :pattern ((Seq_index cr@11@01 i@29@01))
  :qid |Ref__Integer_value-permImpliesNonNull|)))
(push) ; 3
(set-option :timeout 10)
(assert (not (forall ((r $Ref)) (!
  (and
    (= (Seq_index cr@11@01 i@29@01) (Seq_index br@10@01 i@24@01))
    (=
      (and (img@31@01 r) (and (<= 0 (inv@30@01 r)) (< (inv@30@01 r) len@8@01)))
      (and (img@26@01 r) (and (<= 0 (inv@25@01 r)) (< (inv@25@01 r) len@8@01)))))
  
  :qid |quant-u-9400|))))
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
    (= (Seq_index cr@11@01 i@29@01) (Seq_index ar@9@01 i@19@01))
    (=
      (and (img@31@01 r) (and (<= 0 (inv@30@01 r)) (< (inv@30@01 r) len@8@01)))
      (and
        (img@21@01 r)
        (and
          (<= 1 (inv@20@01 r))
          (< (inv@20@01 r) (+ (- (Seq_length ar@9@01) 1) 1))))))
  
  :qid |quant-u-9401|))))
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
    (= (Seq_index cr@11@01 i@29@01) (Seq_index ar@9@01 i@15@01))
    (=
      (and (img@31@01 r) (and (<= 0 (inv@30@01 r)) (< (inv@30@01 r) len@8@01)))
      (and (img@17@01 r) (and (<= 0 (inv@16@01 r)) (< (inv@16@01 r) len@8@01)))))
  
  :qid |quant-u-9402|))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
(set-option :timeout 0)
(push) ; 3
(declare-const $t@32@01 $Snap)
(assert (= $t@32@01 ($Snap.combine ($Snap.first $t@32@01) ($Snap.second $t@32@01))))
(assert (= ($Snap.first $t@32@01) $Snap.unit))
; [eval] 0 < len ==> |ar| == len
; [eval] 0 < len
(push) ; 4
(push) ; 5
(set-option :timeout 10)
(assert (not (not (< 0 len@8@01))))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
; [then-branch: 25 | 0 < len@8@01 | live]
; [else-branch: 25 | !(0 < len@8@01) | dead]
(set-option :timeout 0)
(push) ; 5
; [then-branch: 25 | 0 < len@8@01]
; [eval] |ar| == len
; [eval] |ar|
(pop) ; 5
(pop) ; 4
; Joined path conditions
(assert (=
  ($Snap.second $t@32@01)
  ($Snap.combine
    ($Snap.first ($Snap.second $t@32@01))
    ($Snap.second ($Snap.second $t@32@01)))))
(declare-const i@33@01 Int)
(push) ; 4
; [eval] 0 <= i && i < len
; [eval] 0 <= i
(push) ; 5
; [then-branch: 26 | !(0 <= i@33@01) | live]
; [else-branch: 26 | 0 <= i@33@01 | live]
(push) ; 6
; [then-branch: 26 | !(0 <= i@33@01)]
(assert (not (<= 0 i@33@01)))
(pop) ; 6
(push) ; 6
; [else-branch: 26 | 0 <= i@33@01]
(assert (<= 0 i@33@01))
; [eval] i < len
(pop) ; 6
(pop) ; 5
; Joined path conditions
; Joined path conditions
(assert (or (<= 0 i@33@01) (not (<= 0 i@33@01))))
(assert (and (<= 0 i@33@01) (< i@33@01 len@8@01)))
; [eval] ar[i]
(push) ; 5
(assert (not (>= i@33@01 0)))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(push) ; 5
(assert (not (< i@33@01 (Seq_length ar@9@01))))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(pop) ; 4
(declare-fun inv@34@01 ($Ref) Int)
(declare-fun img@35@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
(assert (forall ((i@33@01 Int)) (!
  (=>
    (and (<= 0 i@33@01) (< i@33@01 len@8@01))
    (or (<= 0 i@33@01) (not (<= 0 i@33@01))))
  :pattern ((Seq_index ar@9@01 i@33@01))
  :qid |Ref__Integer_value-aux|)))
; Check receiver injectivity
(push) ; 4
(assert (not (forall ((i1@33@01 Int) (i2@33@01 Int)) (!
  (=>
    (and
      (and (<= 0 i1@33@01) (< i1@33@01 len@8@01))
      (and (<= 0 i2@33@01) (< i2@33@01 len@8@01))
      (= (Seq_index ar@9@01 i1@33@01) (Seq_index ar@9@01 i2@33@01)))
    (= i1@33@01 i2@33@01))
  
  :qid |Ref__Integer_value-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((i@33@01 Int)) (!
  (=>
    (and (<= 0 i@33@01) (< i@33@01 len@8@01))
    (and
      (= (inv@34@01 (Seq_index ar@9@01 i@33@01)) i@33@01)
      (img@35@01 (Seq_index ar@9@01 i@33@01))))
  :pattern ((Seq_index ar@9@01 i@33@01))
  :qid |quant-u-9404|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@35@01 r) (and (<= 0 (inv@34@01 r)) (< (inv@34@01 r) len@8@01)))
    (= (Seq_index ar@9@01 (inv@34@01 r)) r))
  :pattern ((inv@34@01 r))
  :qid |Ref__Integer_value-fctOfInv|)))
; Permissions are non-negative
; Field permissions are at most one
; Permission implies non-null receiver
(assert (forall ((i@33@01 Int)) (!
  (=>
    (and (<= 0 i@33@01) (< i@33@01 len@8@01))
    (not (= (Seq_index ar@9@01 i@33@01) $Ref.null)))
  :pattern ((Seq_index ar@9@01 i@33@01))
  :qid |Ref__Integer_value-permImpliesNonNull|)))
(assert (=
  ($Snap.second ($Snap.second $t@32@01))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second $t@32@01)))
    ($Snap.second ($Snap.second ($Snap.second $t@32@01))))))
(assert (= ($Snap.first ($Snap.second ($Snap.second $t@32@01))) $Snap.unit))
; [eval] 0 < len ==> |br| == len
; [eval] 0 < len
(push) ; 4
(push) ; 5
(set-option :timeout 10)
(assert (not (not (< 0 len@8@01))))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
; [then-branch: 27 | 0 < len@8@01 | live]
; [else-branch: 27 | !(0 < len@8@01) | dead]
(set-option :timeout 0)
(push) ; 5
; [then-branch: 27 | 0 < len@8@01]
; [eval] |br| == len
; [eval] |br|
(pop) ; 5
(pop) ; 4
; Joined path conditions
(assert (=
  ($Snap.second ($Snap.second ($Snap.second $t@32@01)))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@32@01))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@32@01)))))))
(declare-const i@36@01 Int)
(push) ; 4
; [eval] 0 <= i && i < len
; [eval] 0 <= i
(push) ; 5
; [then-branch: 28 | !(0 <= i@36@01) | live]
; [else-branch: 28 | 0 <= i@36@01 | live]
(push) ; 6
; [then-branch: 28 | !(0 <= i@36@01)]
(assert (not (<= 0 i@36@01)))
(pop) ; 6
(push) ; 6
; [else-branch: 28 | 0 <= i@36@01]
(assert (<= 0 i@36@01))
; [eval] i < len
(pop) ; 6
(pop) ; 5
; Joined path conditions
; Joined path conditions
(assert (or (<= 0 i@36@01) (not (<= 0 i@36@01))))
(assert (and (<= 0 i@36@01) (< i@36@01 len@8@01)))
; [eval] br[i]
(push) ; 5
(assert (not (>= i@36@01 0)))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(push) ; 5
(assert (not (< i@36@01 (Seq_length br@10@01))))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(pop) ; 4
(declare-fun inv@37@01 ($Ref) Int)
(declare-fun img@38@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
(assert (forall ((i@36@01 Int)) (!
  (=>
    (and (<= 0 i@36@01) (< i@36@01 len@8@01))
    (or (<= 0 i@36@01) (not (<= 0 i@36@01))))
  :pattern ((Seq_index br@10@01 i@36@01))
  :qid |Ref__Integer_value-aux|)))
; Check receiver injectivity
(push) ; 4
(assert (not (forall ((i1@36@01 Int) (i2@36@01 Int)) (!
  (=>
    (and
      (and (<= 0 i1@36@01) (< i1@36@01 len@8@01))
      (and (<= 0 i2@36@01) (< i2@36@01 len@8@01))
      (= (Seq_index br@10@01 i1@36@01) (Seq_index br@10@01 i2@36@01)))
    (= i1@36@01 i2@36@01))
  
  :qid |Ref__Integer_value-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((i@36@01 Int)) (!
  (=>
    (and (<= 0 i@36@01) (< i@36@01 len@8@01))
    (and
      (= (inv@37@01 (Seq_index br@10@01 i@36@01)) i@36@01)
      (img@38@01 (Seq_index br@10@01 i@36@01))))
  :pattern ((Seq_index br@10@01 i@36@01))
  :qid |quant-u-9406|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@38@01 r) (and (<= 0 (inv@37@01 r)) (< (inv@37@01 r) len@8@01)))
    (= (Seq_index br@10@01 (inv@37@01 r)) r))
  :pattern ((inv@37@01 r))
  :qid |Ref__Integer_value-fctOfInv|)))
; Permissions are non-negative
; Field permissions are at most one
; Permission implies non-null receiver
(assert (forall ((i@36@01 Int)) (!
  (=>
    (and (<= 0 i@36@01) (< i@36@01 len@8@01))
    (not (= (Seq_index br@10@01 i@36@01) $Ref.null)))
  :pattern ((Seq_index br@10@01 i@36@01))
  :qid |Ref__Integer_value-permImpliesNonNull|)))
(push) ; 4
(set-option :timeout 10)
(assert (not (forall ((r $Ref)) (!
  (and
    (= (Seq_index br@10@01 i@36@01) (Seq_index ar@9@01 i@33@01))
    (=
      (and (img@38@01 r) (and (<= 0 (inv@37@01 r)) (< (inv@37@01 r) len@8@01)))
      (and (img@35@01 r) (and (<= 0 (inv@34@01 r)) (< (inv@34@01 r) len@8@01)))))
  
  :qid |quant-u-9407|))))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@32@01))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@32@01)))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@32@01))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@32@01)))))
  $Snap.unit))
; [eval] 0 < len ==> |cr| == len
; [eval] 0 < len
(set-option :timeout 0)
(push) ; 4
(push) ; 5
(set-option :timeout 10)
(assert (not (not (< 0 len@8@01))))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
; [then-branch: 29 | 0 < len@8@01 | live]
; [else-branch: 29 | !(0 < len@8@01) | dead]
(set-option :timeout 0)
(push) ; 5
; [then-branch: 29 | 0 < len@8@01]
; [eval] |cr| == len
; [eval] |cr|
(pop) ; 5
(pop) ; 4
; Joined path conditions
(declare-const i@39@01 Int)
(push) ; 4
; [eval] 0 <= i && i < len
; [eval] 0 <= i
(push) ; 5
; [then-branch: 30 | !(0 <= i@39@01) | live]
; [else-branch: 30 | 0 <= i@39@01 | live]
(push) ; 6
; [then-branch: 30 | !(0 <= i@39@01)]
(assert (not (<= 0 i@39@01)))
(pop) ; 6
(push) ; 6
; [else-branch: 30 | 0 <= i@39@01]
(assert (<= 0 i@39@01))
; [eval] i < len
(pop) ; 6
(pop) ; 5
; Joined path conditions
; Joined path conditions
(assert (or (<= 0 i@39@01) (not (<= 0 i@39@01))))
(assert (and (<= 0 i@39@01) (< i@39@01 len@8@01)))
; [eval] cr[i]
(push) ; 5
(assert (not (>= i@39@01 0)))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(push) ; 5
(assert (not (< i@39@01 (Seq_length cr@11@01))))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(pop) ; 4
(declare-fun inv@40@01 ($Ref) Int)
(declare-fun img@41@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
(assert (forall ((i@39@01 Int)) (!
  (=>
    (and (<= 0 i@39@01) (< i@39@01 len@8@01))
    (or (<= 0 i@39@01) (not (<= 0 i@39@01))))
  :pattern ((Seq_index cr@11@01 i@39@01))
  :qid |Ref__Integer_value-aux|)))
; Check receiver injectivity
(push) ; 4
(assert (not (forall ((i1@39@01 Int) (i2@39@01 Int)) (!
  (=>
    (and
      (and (<= 0 i1@39@01) (< i1@39@01 len@8@01))
      (and (<= 0 i2@39@01) (< i2@39@01 len@8@01))
      (= (Seq_index cr@11@01 i1@39@01) (Seq_index cr@11@01 i2@39@01)))
    (= i1@39@01 i2@39@01))
  
  :qid |Ref__Integer_value-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((i@39@01 Int)) (!
  (=>
    (and (<= 0 i@39@01) (< i@39@01 len@8@01))
    (and
      (= (inv@40@01 (Seq_index cr@11@01 i@39@01)) i@39@01)
      (img@41@01 (Seq_index cr@11@01 i@39@01))))
  :pattern ((Seq_index cr@11@01 i@39@01))
  :qid |quant-u-9409|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@41@01 r) (and (<= 0 (inv@40@01 r)) (< (inv@40@01 r) len@8@01)))
    (= (Seq_index cr@11@01 (inv@40@01 r)) r))
  :pattern ((inv@40@01 r))
  :qid |Ref__Integer_value-fctOfInv|)))
; Permissions are non-negative
; Field permissions are at most one
; Permission implies non-null receiver
(assert (forall ((i@39@01 Int)) (!
  (=>
    (and (<= 0 i@39@01) (< i@39@01 len@8@01))
    (not (= (Seq_index cr@11@01 i@39@01) $Ref.null)))
  :pattern ((Seq_index cr@11@01 i@39@01))
  :qid |Ref__Integer_value-permImpliesNonNull|)))
(push) ; 4
(set-option :timeout 10)
(assert (not (forall ((r $Ref)) (!
  (and
    (= (Seq_index cr@11@01 i@39@01) (Seq_index br@10@01 i@36@01))
    (=
      (and (img@41@01 r) (and (<= 0 (inv@40@01 r)) (< (inv@40@01 r) len@8@01)))
      (and (img@38@01 r) (and (<= 0 (inv@37@01 r)) (< (inv@37@01 r) len@8@01)))))
  
  :qid |quant-u-9410|))))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not (forall ((r $Ref)) (!
  (and
    (= (Seq_index cr@11@01 i@39@01) (Seq_index ar@9@01 i@33@01))
    (=
      (and (img@41@01 r) (and (<= 0 (inv@40@01 r)) (< (inv@40@01 r) len@8@01)))
      (and (img@35@01 r) (and (<= 0 (inv@34@01 r)) (< (inv@34@01 r) len@8@01)))))
  
  :qid |quant-u-9411|))))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(pop) ; 3
(set-option :timeout 0)
(push) ; 3
; [exec]
; inhale false
(pop) ; 3
(pop) ; 2
(push) ; 2
; [else-branch: 8 | !(0 < len@8@01)]
(assert (not (< 0 len@8@01)))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@12@01))))))
  $Snap.unit))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@12@01))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@12@01)))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@12@01))))))))))
(declare-const i@42@01 Int)
(push) ; 3
; [eval] 1 <= i && i < (|ar| - 1 < len ? |ar| - 1 : len) + 1
; [eval] 1 <= i
(push) ; 4
; [then-branch: 31 | !(1 <= i@42@01) | live]
; [else-branch: 31 | 1 <= i@42@01 | live]
(push) ; 5
; [then-branch: 31 | !(1 <= i@42@01)]
(assert (not (<= 1 i@42@01)))
(pop) ; 5
(push) ; 5
; [else-branch: 31 | 1 <= i@42@01]
(assert (<= 1 i@42@01))
; [eval] i < (|ar| - 1 < len ? |ar| - 1 : len) + 1
; [eval] (|ar| - 1 < len ? |ar| - 1 : len) + 1
; [eval] (|ar| - 1 < len ? |ar| - 1 : len)
; [eval] |ar| - 1 < len
; [eval] |ar| - 1
; [eval] |ar|
(push) ; 6
(push) ; 7
(set-option :timeout 10)
(assert (not (not (< (- (Seq_length ar@9@01) 1) len@8@01))))
(check-sat)
; unknown
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 7
(set-option :timeout 10)
(assert (not (< (- (Seq_length ar@9@01) 1) len@8@01)))
(check-sat)
; unknown
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
; [then-branch: 32 | |ar@9@01| - 1 < len@8@01 | live]
; [else-branch: 32 | !(|ar@9@01| - 1 < len@8@01) | live]
(set-option :timeout 0)
(push) ; 7
; [then-branch: 32 | |ar@9@01| - 1 < len@8@01]
(assert (< (- (Seq_length ar@9@01) 1) len@8@01))
; [eval] |ar| - 1
; [eval] |ar|
(pop) ; 7
(push) ; 7
; [else-branch: 32 | !(|ar@9@01| - 1 < len@8@01)]
(assert (not (< (- (Seq_length ar@9@01) 1) len@8@01)))
(pop) ; 7
(pop) ; 6
; Joined path conditions
; Joined path conditions
(assert (or
  (not (< (- (Seq_length ar@9@01) 1) len@8@01))
  (< (- (Seq_length ar@9@01) 1) len@8@01)))
(pop) ; 5
(pop) ; 4
; Joined path conditions
; Joined path conditions
(assert (=>
  (<= 1 i@42@01)
  (and
    (<= 1 i@42@01)
    (or
      (not (< (- (Seq_length ar@9@01) 1) len@8@01))
      (< (- (Seq_length ar@9@01) 1) len@8@01)))))
(assert (or (<= 1 i@42@01) (not (<= 1 i@42@01))))
(assert (and
  (<= 1 i@42@01)
  (<
    i@42@01
    (+
      (ite
        (< (- (Seq_length ar@9@01) 1) len@8@01)
        (- (Seq_length ar@9@01) 1)
        len@8@01)
      1))))
; [eval] ar[i]
(push) ; 4
(assert (not (>= i@42@01 0)))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(push) ; 4
(assert (not (< i@42@01 (Seq_length ar@9@01))))
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
(assert (forall ((i@42@01 Int)) (!
  (=>
    (and
      (<= 1 i@42@01)
      (<
        i@42@01
        (+
          (ite
            (< (- (Seq_length ar@9@01) 1) len@8@01)
            (- (Seq_length ar@9@01) 1)
            len@8@01)
          1)))
    (and
      (=>
        (<= 1 i@42@01)
        (and
          (<= 1 i@42@01)
          (or
            (not (< (- (Seq_length ar@9@01) 1) len@8@01))
            (< (- (Seq_length ar@9@01) 1) len@8@01))))
      (or (<= 1 i@42@01) (not (<= 1 i@42@01)))))
  :pattern ((Seq_index ar@9@01 i@42@01))
  :qid |Ref__Integer_value-aux|)))
; Check receiver injectivity
(push) ; 3
(assert (not (forall ((i1@42@01 Int) (i2@42@01 Int)) (!
  (=>
    (and
      (and
        (<= 1 i1@42@01)
        (<
          i1@42@01
          (+
            (ite
              (< (- (Seq_length ar@9@01) 1) len@8@01)
              (- (Seq_length ar@9@01) 1)
              len@8@01)
            1)))
      (and
        (<= 1 i2@42@01)
        (<
          i2@42@01
          (+
            (ite
              (< (- (Seq_length ar@9@01) 1) len@8@01)
              (- (Seq_length ar@9@01) 1)
              len@8@01)
            1)))
      (= (Seq_index ar@9@01 i1@42@01) (Seq_index ar@9@01 i2@42@01)))
    (= i1@42@01 i2@42@01))
  
  :qid |Ref__Integer_value-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((i@42@01 Int)) (!
  (=>
    (and
      (<= 1 i@42@01)
      (<
        i@42@01
        (+
          (ite
            (< (- (Seq_length ar@9@01) 1) len@8@01)
            (- (Seq_length ar@9@01) 1)
            len@8@01)
          1)))
    (and
      (= (inv@43@01 (Seq_index ar@9@01 i@42@01)) i@42@01)
      (img@44@01 (Seq_index ar@9@01 i@42@01))))
  :pattern ((Seq_index ar@9@01 i@42@01))
  :qid |quant-u-9413|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@44@01 r)
      (and
        (<= 1 (inv@43@01 r))
        (<
          (inv@43@01 r)
          (+
            (ite
              (< (- (Seq_length ar@9@01) 1) len@8@01)
              (- (Seq_length ar@9@01) 1)
              len@8@01)
            1))))
    (= (Seq_index ar@9@01 (inv@43@01 r)) r))
  :pattern ((inv@43@01 r))
  :qid |Ref__Integer_value-fctOfInv|)))
; Permissions are non-negative
; Field permissions are at most one
; Permission implies non-null receiver
(assert (forall ((i@42@01 Int)) (!
  (=>
    (and
      (<= 1 i@42@01)
      (<
        i@42@01
        (+
          (ite
            (< (- (Seq_length ar@9@01) 1) len@8@01)
            (- (Seq_length ar@9@01) 1)
            len@8@01)
          1)))
    (not (= (Seq_index ar@9@01 i@42@01) $Ref.null)))
  :pattern ((Seq_index ar@9@01 i@42@01))
  :qid |Ref__Integer_value-permImpliesNonNull|)))
(push) ; 3
(set-option :timeout 10)
(assert (not (forall ((r $Ref)) (!
  (and
    (= (Seq_index ar@9@01 i@42@01) (Seq_index ar@9@01 i@15@01))
    (=
      (and
        (img@44@01 r)
        (and
          (<= 1 (inv@43@01 r))
          (<
            (inv@43@01 r)
            (+
              (ite
                (< (- (Seq_length ar@9@01) 1) len@8@01)
                (- (Seq_length ar@9@01) 1)
                len@8@01)
              1))))
      (and (img@17@01 r) (and (<= 0 (inv@16@01 r)) (< (inv@16@01 r) len@8@01)))))
  
  :qid |quant-u-9414|))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@12@01)))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@12@01))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@12@01)))))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@12@01))))))))
  $Snap.unit))
; [eval] 0 < len ==> |br| == len
; [eval] 0 < len
(set-option :timeout 0)
(push) ; 3
; [then-branch: 33 | 0 < len@8@01 | dead]
; [else-branch: 33 | !(0 < len@8@01) | live]
(push) ; 4
; [else-branch: 33 | !(0 < len@8@01)]
(pop) ; 4
(pop) ; 3
; Joined path conditions
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@12@01))))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@12@01)))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@12@01))))))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@12@01)))))))))
  $Snap.unit))
; [eval] (forall j: Int, k: Int :: { br[j], br[k] } 0 <= j && (j < |br| && (0 <= k && (k < |br| && j != k))) ==> br[j] != br[k])
(declare-const j@45@01 Int)
(declare-const k@46@01 Int)
(push) ; 3
; [eval] 0 <= j && (j < |br| && (0 <= k && (k < |br| && j != k))) ==> br[j] != br[k]
; [eval] 0 <= j && (j < |br| && (0 <= k && (k < |br| && j != k)))
; [eval] 0 <= j
(push) ; 4
; [then-branch: 34 | !(0 <= j@45@01) | live]
; [else-branch: 34 | 0 <= j@45@01 | live]
(push) ; 5
; [then-branch: 34 | !(0 <= j@45@01)]
(assert (not (<= 0 j@45@01)))
(pop) ; 5
(push) ; 5
; [else-branch: 34 | 0 <= j@45@01]
(assert (<= 0 j@45@01))
; [eval] j < |br|
; [eval] |br|
(push) ; 6
; [then-branch: 35 | !(j@45@01 < |br@10@01|) | live]
; [else-branch: 35 | j@45@01 < |br@10@01| | live]
(push) ; 7
; [then-branch: 35 | !(j@45@01 < |br@10@01|)]
(assert (not (< j@45@01 (Seq_length br@10@01))))
(pop) ; 7
(push) ; 7
; [else-branch: 35 | j@45@01 < |br@10@01|]
(assert (< j@45@01 (Seq_length br@10@01)))
; [eval] 0 <= k
(push) ; 8
; [then-branch: 36 | !(0 <= k@46@01) | live]
; [else-branch: 36 | 0 <= k@46@01 | live]
(push) ; 9
; [then-branch: 36 | !(0 <= k@46@01)]
(assert (not (<= 0 k@46@01)))
(pop) ; 9
(push) ; 9
; [else-branch: 36 | 0 <= k@46@01]
(assert (<= 0 k@46@01))
; [eval] k < |br|
; [eval] |br|
(push) ; 10
; [then-branch: 37 | !(k@46@01 < |br@10@01|) | live]
; [else-branch: 37 | k@46@01 < |br@10@01| | live]
(push) ; 11
; [then-branch: 37 | !(k@46@01 < |br@10@01|)]
(assert (not (< k@46@01 (Seq_length br@10@01))))
(pop) ; 11
(push) ; 11
; [else-branch: 37 | k@46@01 < |br@10@01|]
(assert (< k@46@01 (Seq_length br@10@01)))
; [eval] j != k
(pop) ; 11
(pop) ; 10
; Joined path conditions
; Joined path conditions
(assert (or (< k@46@01 (Seq_length br@10@01)) (not (< k@46@01 (Seq_length br@10@01)))))
(pop) ; 9
(pop) ; 8
; Joined path conditions
; Joined path conditions
(assert (=>
  (<= 0 k@46@01)
  (and
    (<= 0 k@46@01)
    (or
      (< k@46@01 (Seq_length br@10@01))
      (not (< k@46@01 (Seq_length br@10@01)))))))
(assert (or (<= 0 k@46@01) (not (<= 0 k@46@01))))
(pop) ; 7
(pop) ; 6
; Joined path conditions
; Joined path conditions
(assert (=>
  (< j@45@01 (Seq_length br@10@01))
  (and
    (< j@45@01 (Seq_length br@10@01))
    (=>
      (<= 0 k@46@01)
      (and
        (<= 0 k@46@01)
        (or
          (< k@46@01 (Seq_length br@10@01))
          (not (< k@46@01 (Seq_length br@10@01))))))
    (or (<= 0 k@46@01) (not (<= 0 k@46@01))))))
(assert (or (< j@45@01 (Seq_length br@10@01)) (not (< j@45@01 (Seq_length br@10@01)))))
(pop) ; 5
(pop) ; 4
; Joined path conditions
; Joined path conditions
(assert (=>
  (<= 0 j@45@01)
  (and
    (<= 0 j@45@01)
    (=>
      (< j@45@01 (Seq_length br@10@01))
      (and
        (< j@45@01 (Seq_length br@10@01))
        (=>
          (<= 0 k@46@01)
          (and
            (<= 0 k@46@01)
            (or
              (< k@46@01 (Seq_length br@10@01))
              (not (< k@46@01 (Seq_length br@10@01))))))
        (or (<= 0 k@46@01) (not (<= 0 k@46@01)))))
    (or
      (< j@45@01 (Seq_length br@10@01))
      (not (< j@45@01 (Seq_length br@10@01)))))))
(assert (or (<= 0 j@45@01) (not (<= 0 j@45@01))))
(push) ; 4
; [then-branch: 38 | 0 <= j@45@01 && j@45@01 < |br@10@01| && 0 <= k@46@01 && k@46@01 < |br@10@01| && j@45@01 != k@46@01 | live]
; [else-branch: 38 | !(0 <= j@45@01 && j@45@01 < |br@10@01| && 0 <= k@46@01 && k@46@01 < |br@10@01| && j@45@01 != k@46@01) | live]
(push) ; 5
; [then-branch: 38 | 0 <= j@45@01 && j@45@01 < |br@10@01| && 0 <= k@46@01 && k@46@01 < |br@10@01| && j@45@01 != k@46@01]
(assert (and
  (<= 0 j@45@01)
  (and
    (< j@45@01 (Seq_length br@10@01))
    (and
      (<= 0 k@46@01)
      (and (< k@46@01 (Seq_length br@10@01)) (not (= j@45@01 k@46@01)))))))
; [eval] br[j] != br[k]
; [eval] br[j]
(push) ; 6
(assert (not (>= j@45@01 0)))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
; [eval] br[k]
(push) ; 6
(assert (not (>= k@46@01 0)))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(pop) ; 5
(push) ; 5
; [else-branch: 38 | !(0 <= j@45@01 && j@45@01 < |br@10@01| && 0 <= k@46@01 && k@46@01 < |br@10@01| && j@45@01 != k@46@01)]
(assert (not
  (and
    (<= 0 j@45@01)
    (and
      (< j@45@01 (Seq_length br@10@01))
      (and
        (<= 0 k@46@01)
        (and (< k@46@01 (Seq_length br@10@01)) (not (= j@45@01 k@46@01))))))))
(pop) ; 5
(pop) ; 4
; Joined path conditions
(assert (=>
  (and
    (<= 0 j@45@01)
    (and
      (< j@45@01 (Seq_length br@10@01))
      (and
        (<= 0 k@46@01)
        (and (< k@46@01 (Seq_length br@10@01)) (not (= j@45@01 k@46@01))))))
  (and
    (<= 0 j@45@01)
    (< j@45@01 (Seq_length br@10@01))
    (<= 0 k@46@01)
    (< k@46@01 (Seq_length br@10@01))
    (not (= j@45@01 k@46@01)))))
; Joined path conditions
(assert (or
  (not
    (and
      (<= 0 j@45@01)
      (and
        (< j@45@01 (Seq_length br@10@01))
        (and
          (<= 0 k@46@01)
          (and (< k@46@01 (Seq_length br@10@01)) (not (= j@45@01 k@46@01)))))))
  (and
    (<= 0 j@45@01)
    (and
      (< j@45@01 (Seq_length br@10@01))
      (and
        (<= 0 k@46@01)
        (and (< k@46@01 (Seq_length br@10@01)) (not (= j@45@01 k@46@01))))))))
(pop) ; 3
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall ((j@45@01 Int) (k@46@01 Int)) (!
  (and
    (=>
      (<= 0 j@45@01)
      (and
        (<= 0 j@45@01)
        (=>
          (< j@45@01 (Seq_length br@10@01))
          (and
            (< j@45@01 (Seq_length br@10@01))
            (=>
              (<= 0 k@46@01)
              (and
                (<= 0 k@46@01)
                (or
                  (< k@46@01 (Seq_length br@10@01))
                  (not (< k@46@01 (Seq_length br@10@01))))))
            (or (<= 0 k@46@01) (not (<= 0 k@46@01)))))
        (or
          (< j@45@01 (Seq_length br@10@01))
          (not (< j@45@01 (Seq_length br@10@01))))))
    (or (<= 0 j@45@01) (not (<= 0 j@45@01)))
    (=>
      (and
        (<= 0 j@45@01)
        (and
          (< j@45@01 (Seq_length br@10@01))
          (and
            (<= 0 k@46@01)
            (and (< k@46@01 (Seq_length br@10@01)) (not (= j@45@01 k@46@01))))))
      (and
        (<= 0 j@45@01)
        (< j@45@01 (Seq_length br@10@01))
        (<= 0 k@46@01)
        (< k@46@01 (Seq_length br@10@01))
        (not (= j@45@01 k@46@01))))
    (or
      (not
        (and
          (<= 0 j@45@01)
          (and
            (< j@45@01 (Seq_length br@10@01))
            (and
              (<= 0 k@46@01)
              (and (< k@46@01 (Seq_length br@10@01)) (not (= j@45@01 k@46@01)))))))
      (and
        (<= 0 j@45@01)
        (and
          (< j@45@01 (Seq_length br@10@01))
          (and
            (<= 0 k@46@01)
            (and (< k@46@01 (Seq_length br@10@01)) (not (= j@45@01 k@46@01))))))))
  :pattern ((Seq_index br@10@01 j@45@01) (Seq_index br@10@01 k@46@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/third_party/testDepParLoopBack.vpr@67@12@67@106-aux|)))
(assert (forall ((j@45@01 Int) (k@46@01 Int)) (!
  (=>
    (and
      (<= 0 j@45@01)
      (and
        (< j@45@01 (Seq_length br@10@01))
        (and
          (<= 0 k@46@01)
          (and (< k@46@01 (Seq_length br@10@01)) (not (= j@45@01 k@46@01))))))
    (not (= (Seq_index br@10@01 j@45@01) (Seq_index br@10@01 k@46@01))))
  :pattern ((Seq_index br@10@01 j@45@01) (Seq_index br@10@01 k@46@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/third_party/testDepParLoopBack.vpr@67@12@67@106|)))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@12@01)))))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@12@01))))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@12@01)))))))))))))
(declare-const i@47@01 Int)
(push) ; 3
; [eval] 0 <= i && i < len
; [eval] 0 <= i
(push) ; 4
; [then-branch: 39 | !(0 <= i@47@01) | live]
; [else-branch: 39 | 0 <= i@47@01 | live]
(push) ; 5
; [then-branch: 39 | !(0 <= i@47@01)]
(assert (not (<= 0 i@47@01)))
(pop) ; 5
(push) ; 5
; [else-branch: 39 | 0 <= i@47@01]
(assert (<= 0 i@47@01))
; [eval] i < len
(pop) ; 5
(pop) ; 4
; Joined path conditions
; Joined path conditions
(assert (or (<= 0 i@47@01) (not (<= 0 i@47@01))))
(assert (and (<= 0 i@47@01) (< i@47@01 len@8@01)))
; [eval] br[i]
(push) ; 4
(assert (not (>= i@47@01 0)))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(push) ; 4
(assert (not (< i@47@01 (Seq_length br@10@01))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(pop) ; 3
(declare-fun inv@48@01 ($Ref) Int)
(declare-fun img@49@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
(assert (forall ((i@47@01 Int)) (!
  (=>
    (and (<= 0 i@47@01) (< i@47@01 len@8@01))
    (or (<= 0 i@47@01) (not (<= 0 i@47@01))))
  :pattern ((Seq_index br@10@01 i@47@01))
  :qid |Ref__Integer_value-aux|)))
; Check receiver injectivity
(push) ; 3
(assert (not (forall ((i1@47@01 Int) (i2@47@01 Int)) (!
  (=>
    (and
      (and (<= 0 i1@47@01) (< i1@47@01 len@8@01))
      (and (<= 0 i2@47@01) (< i2@47@01 len@8@01))
      (= (Seq_index br@10@01 i1@47@01) (Seq_index br@10@01 i2@47@01)))
    (= i1@47@01 i2@47@01))
  
  :qid |Ref__Integer_value-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((i@47@01 Int)) (!
  (=>
    (and (<= 0 i@47@01) (< i@47@01 len@8@01))
    (and
      (= (inv@48@01 (Seq_index br@10@01 i@47@01)) i@47@01)
      (img@49@01 (Seq_index br@10@01 i@47@01))))
  :pattern ((Seq_index br@10@01 i@47@01))
  :qid |quant-u-9416|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@49@01 r) (and (<= 0 (inv@48@01 r)) (< (inv@48@01 r) len@8@01)))
    (= (Seq_index br@10@01 (inv@48@01 r)) r))
  :pattern ((inv@48@01 r))
  :qid |Ref__Integer_value-fctOfInv|)))
; Permissions are non-negative
; Field permissions are at most one
; Permission implies non-null receiver
(assert (forall ((i@47@01 Int)) (!
  (=>
    (and (<= 0 i@47@01) (< i@47@01 len@8@01))
    (not (= (Seq_index br@10@01 i@47@01) $Ref.null)))
  :pattern ((Seq_index br@10@01 i@47@01))
  :qid |Ref__Integer_value-permImpliesNonNull|)))
(push) ; 3
(set-option :timeout 10)
(assert (not (forall ((r $Ref)) (!
  (and
    (= (Seq_index br@10@01 i@47@01) (Seq_index ar@9@01 i@42@01))
    (=
      (and (img@49@01 r) (and (<= 0 (inv@48@01 r)) (< (inv@48@01 r) len@8@01)))
      (and
        (img@44@01 r)
        (and
          (<= 1 (inv@43@01 r))
          (<
            (inv@43@01 r)
            (+
              (ite
                (< (- (Seq_length ar@9@01) 1) len@8@01)
                (- (Seq_length ar@9@01) 1)
                len@8@01)
              1))))))
  
  :qid |quant-u-9417|))))
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
    (= (Seq_index br@10@01 i@47@01) (Seq_index ar@9@01 i@15@01))
    (=
      (and (img@49@01 r) (and (<= 0 (inv@48@01 r)) (< (inv@48@01 r) len@8@01)))
      (and (img@17@01 r) (and (<= 0 (inv@16@01 r)) (< (inv@16@01 r) len@8@01)))))
  
  :qid |quant-u-9418|))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@12@01))))))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@12@01)))))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@12@01))))))))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@12@01)))))))))))
  $Snap.unit))
; [eval] 0 < len ==> |cr| == len
; [eval] 0 < len
(set-option :timeout 0)
(push) ; 3
; [then-branch: 40 | 0 < len@8@01 | dead]
; [else-branch: 40 | !(0 < len@8@01) | live]
(push) ; 4
; [else-branch: 40 | !(0 < len@8@01)]
(pop) ; 4
(pop) ; 3
; Joined path conditions
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@12@01)))))))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@12@01))))))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@12@01)))))))))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@12@01))))))))))))
  $Snap.unit))
; [eval] (forall j: Int, k: Int :: { cr[j], cr[k] } 0 <= j && (j < |cr| && (0 <= k && (k < |cr| && j != k))) ==> cr[j] != cr[k])
(declare-const j@50@01 Int)
(declare-const k@51@01 Int)
(push) ; 3
; [eval] 0 <= j && (j < |cr| && (0 <= k && (k < |cr| && j != k))) ==> cr[j] != cr[k]
; [eval] 0 <= j && (j < |cr| && (0 <= k && (k < |cr| && j != k)))
; [eval] 0 <= j
(push) ; 4
; [then-branch: 41 | !(0 <= j@50@01) | live]
; [else-branch: 41 | 0 <= j@50@01 | live]
(push) ; 5
; [then-branch: 41 | !(0 <= j@50@01)]
(assert (not (<= 0 j@50@01)))
(pop) ; 5
(push) ; 5
; [else-branch: 41 | 0 <= j@50@01]
(assert (<= 0 j@50@01))
; [eval] j < |cr|
; [eval] |cr|
(push) ; 6
; [then-branch: 42 | !(j@50@01 < |cr@11@01|) | live]
; [else-branch: 42 | j@50@01 < |cr@11@01| | live]
(push) ; 7
; [then-branch: 42 | !(j@50@01 < |cr@11@01|)]
(assert (not (< j@50@01 (Seq_length cr@11@01))))
(pop) ; 7
(push) ; 7
; [else-branch: 42 | j@50@01 < |cr@11@01|]
(assert (< j@50@01 (Seq_length cr@11@01)))
; [eval] 0 <= k
(push) ; 8
; [then-branch: 43 | !(0 <= k@51@01) | live]
; [else-branch: 43 | 0 <= k@51@01 | live]
(push) ; 9
; [then-branch: 43 | !(0 <= k@51@01)]
(assert (not (<= 0 k@51@01)))
(pop) ; 9
(push) ; 9
; [else-branch: 43 | 0 <= k@51@01]
(assert (<= 0 k@51@01))
; [eval] k < |cr|
; [eval] |cr|
(push) ; 10
; [then-branch: 44 | !(k@51@01 < |cr@11@01|) | live]
; [else-branch: 44 | k@51@01 < |cr@11@01| | live]
(push) ; 11
; [then-branch: 44 | !(k@51@01 < |cr@11@01|)]
(assert (not (< k@51@01 (Seq_length cr@11@01))))
(pop) ; 11
(push) ; 11
; [else-branch: 44 | k@51@01 < |cr@11@01|]
(assert (< k@51@01 (Seq_length cr@11@01)))
; [eval] j != k
(pop) ; 11
(pop) ; 10
; Joined path conditions
; Joined path conditions
(assert (or (< k@51@01 (Seq_length cr@11@01)) (not (< k@51@01 (Seq_length cr@11@01)))))
(pop) ; 9
(pop) ; 8
; Joined path conditions
; Joined path conditions
(assert (=>
  (<= 0 k@51@01)
  (and
    (<= 0 k@51@01)
    (or
      (< k@51@01 (Seq_length cr@11@01))
      (not (< k@51@01 (Seq_length cr@11@01)))))))
(assert (or (<= 0 k@51@01) (not (<= 0 k@51@01))))
(pop) ; 7
(pop) ; 6
; Joined path conditions
; Joined path conditions
(assert (=>
  (< j@50@01 (Seq_length cr@11@01))
  (and
    (< j@50@01 (Seq_length cr@11@01))
    (=>
      (<= 0 k@51@01)
      (and
        (<= 0 k@51@01)
        (or
          (< k@51@01 (Seq_length cr@11@01))
          (not (< k@51@01 (Seq_length cr@11@01))))))
    (or (<= 0 k@51@01) (not (<= 0 k@51@01))))))
(assert (or (< j@50@01 (Seq_length cr@11@01)) (not (< j@50@01 (Seq_length cr@11@01)))))
(pop) ; 5
(pop) ; 4
; Joined path conditions
; Joined path conditions
(assert (=>
  (<= 0 j@50@01)
  (and
    (<= 0 j@50@01)
    (=>
      (< j@50@01 (Seq_length cr@11@01))
      (and
        (< j@50@01 (Seq_length cr@11@01))
        (=>
          (<= 0 k@51@01)
          (and
            (<= 0 k@51@01)
            (or
              (< k@51@01 (Seq_length cr@11@01))
              (not (< k@51@01 (Seq_length cr@11@01))))))
        (or (<= 0 k@51@01) (not (<= 0 k@51@01)))))
    (or
      (< j@50@01 (Seq_length cr@11@01))
      (not (< j@50@01 (Seq_length cr@11@01)))))))
(assert (or (<= 0 j@50@01) (not (<= 0 j@50@01))))
(push) ; 4
; [then-branch: 45 | 0 <= j@50@01 && j@50@01 < |cr@11@01| && 0 <= k@51@01 && k@51@01 < |cr@11@01| && j@50@01 != k@51@01 | live]
; [else-branch: 45 | !(0 <= j@50@01 && j@50@01 < |cr@11@01| && 0 <= k@51@01 && k@51@01 < |cr@11@01| && j@50@01 != k@51@01) | live]
(push) ; 5
; [then-branch: 45 | 0 <= j@50@01 && j@50@01 < |cr@11@01| && 0 <= k@51@01 && k@51@01 < |cr@11@01| && j@50@01 != k@51@01]
(assert (and
  (<= 0 j@50@01)
  (and
    (< j@50@01 (Seq_length cr@11@01))
    (and
      (<= 0 k@51@01)
      (and (< k@51@01 (Seq_length cr@11@01)) (not (= j@50@01 k@51@01)))))))
; [eval] cr[j] != cr[k]
; [eval] cr[j]
(push) ; 6
(assert (not (>= j@50@01 0)))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
; [eval] cr[k]
(push) ; 6
(assert (not (>= k@51@01 0)))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(pop) ; 5
(push) ; 5
; [else-branch: 45 | !(0 <= j@50@01 && j@50@01 < |cr@11@01| && 0 <= k@51@01 && k@51@01 < |cr@11@01| && j@50@01 != k@51@01)]
(assert (not
  (and
    (<= 0 j@50@01)
    (and
      (< j@50@01 (Seq_length cr@11@01))
      (and
        (<= 0 k@51@01)
        (and (< k@51@01 (Seq_length cr@11@01)) (not (= j@50@01 k@51@01))))))))
(pop) ; 5
(pop) ; 4
; Joined path conditions
(assert (=>
  (and
    (<= 0 j@50@01)
    (and
      (< j@50@01 (Seq_length cr@11@01))
      (and
        (<= 0 k@51@01)
        (and (< k@51@01 (Seq_length cr@11@01)) (not (= j@50@01 k@51@01))))))
  (and
    (<= 0 j@50@01)
    (< j@50@01 (Seq_length cr@11@01))
    (<= 0 k@51@01)
    (< k@51@01 (Seq_length cr@11@01))
    (not (= j@50@01 k@51@01)))))
; Joined path conditions
(assert (or
  (not
    (and
      (<= 0 j@50@01)
      (and
        (< j@50@01 (Seq_length cr@11@01))
        (and
          (<= 0 k@51@01)
          (and (< k@51@01 (Seq_length cr@11@01)) (not (= j@50@01 k@51@01)))))))
  (and
    (<= 0 j@50@01)
    (and
      (< j@50@01 (Seq_length cr@11@01))
      (and
        (<= 0 k@51@01)
        (and (< k@51@01 (Seq_length cr@11@01)) (not (= j@50@01 k@51@01))))))))
(pop) ; 3
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall ((j@50@01 Int) (k@51@01 Int)) (!
  (and
    (=>
      (<= 0 j@50@01)
      (and
        (<= 0 j@50@01)
        (=>
          (< j@50@01 (Seq_length cr@11@01))
          (and
            (< j@50@01 (Seq_length cr@11@01))
            (=>
              (<= 0 k@51@01)
              (and
                (<= 0 k@51@01)
                (or
                  (< k@51@01 (Seq_length cr@11@01))
                  (not (< k@51@01 (Seq_length cr@11@01))))))
            (or (<= 0 k@51@01) (not (<= 0 k@51@01)))))
        (or
          (< j@50@01 (Seq_length cr@11@01))
          (not (< j@50@01 (Seq_length cr@11@01))))))
    (or (<= 0 j@50@01) (not (<= 0 j@50@01)))
    (=>
      (and
        (<= 0 j@50@01)
        (and
          (< j@50@01 (Seq_length cr@11@01))
          (and
            (<= 0 k@51@01)
            (and (< k@51@01 (Seq_length cr@11@01)) (not (= j@50@01 k@51@01))))))
      (and
        (<= 0 j@50@01)
        (< j@50@01 (Seq_length cr@11@01))
        (<= 0 k@51@01)
        (< k@51@01 (Seq_length cr@11@01))
        (not (= j@50@01 k@51@01))))
    (or
      (not
        (and
          (<= 0 j@50@01)
          (and
            (< j@50@01 (Seq_length cr@11@01))
            (and
              (<= 0 k@51@01)
              (and (< k@51@01 (Seq_length cr@11@01)) (not (= j@50@01 k@51@01)))))))
      (and
        (<= 0 j@50@01)
        (and
          (< j@50@01 (Seq_length cr@11@01))
          (and
            (<= 0 k@51@01)
            (and (< k@51@01 (Seq_length cr@11@01)) (not (= j@50@01 k@51@01))))))))
  :pattern ((Seq_index cr@11@01 j@50@01) (Seq_index cr@11@01 k@51@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/third_party/testDepParLoopBack.vpr@70@12@70@106-aux|)))
(assert (forall ((j@50@01 Int) (k@51@01 Int)) (!
  (=>
    (and
      (<= 0 j@50@01)
      (and
        (< j@50@01 (Seq_length cr@11@01))
        (and
          (<= 0 k@51@01)
          (and (< k@51@01 (Seq_length cr@11@01)) (not (= j@50@01 k@51@01))))))
    (not (= (Seq_index cr@11@01 j@50@01) (Seq_index cr@11@01 k@51@01))))
  :pattern ((Seq_index cr@11@01 j@50@01) (Seq_index cr@11@01 k@51@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/third_party/testDepParLoopBack.vpr@70@12@70@106|)))
(declare-const i@52@01 Int)
(push) ; 3
; [eval] 0 <= i && i < len
; [eval] 0 <= i
(push) ; 4
; [then-branch: 46 | !(0 <= i@52@01) | live]
; [else-branch: 46 | 0 <= i@52@01 | live]
(push) ; 5
; [then-branch: 46 | !(0 <= i@52@01)]
(assert (not (<= 0 i@52@01)))
(pop) ; 5
(push) ; 5
; [else-branch: 46 | 0 <= i@52@01]
(assert (<= 0 i@52@01))
; [eval] i < len
(pop) ; 5
(pop) ; 4
; Joined path conditions
; Joined path conditions
(assert (or (<= 0 i@52@01) (not (<= 0 i@52@01))))
(assert (and (<= 0 i@52@01) (< i@52@01 len@8@01)))
; [eval] cr[i]
(push) ; 4
(assert (not (>= i@52@01 0)))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(push) ; 4
(assert (not (< i@52@01 (Seq_length cr@11@01))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(pop) ; 3
(declare-fun inv@53@01 ($Ref) Int)
(declare-fun img@54@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
(assert (forall ((i@52@01 Int)) (!
  (=>
    (and (<= 0 i@52@01) (< i@52@01 len@8@01))
    (or (<= 0 i@52@01) (not (<= 0 i@52@01))))
  :pattern ((Seq_index cr@11@01 i@52@01))
  :qid |Ref__Integer_value-aux|)))
; Check receiver injectivity
(push) ; 3
(assert (not (forall ((i1@52@01 Int) (i2@52@01 Int)) (!
  (=>
    (and
      (and (<= 0 i1@52@01) (< i1@52@01 len@8@01))
      (and (<= 0 i2@52@01) (< i2@52@01 len@8@01))
      (= (Seq_index cr@11@01 i1@52@01) (Seq_index cr@11@01 i2@52@01)))
    (= i1@52@01 i2@52@01))
  
  :qid |Ref__Integer_value-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((i@52@01 Int)) (!
  (=>
    (and (<= 0 i@52@01) (< i@52@01 len@8@01))
    (and
      (= (inv@53@01 (Seq_index cr@11@01 i@52@01)) i@52@01)
      (img@54@01 (Seq_index cr@11@01 i@52@01))))
  :pattern ((Seq_index cr@11@01 i@52@01))
  :qid |quant-u-9420|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@54@01 r) (and (<= 0 (inv@53@01 r)) (< (inv@53@01 r) len@8@01)))
    (= (Seq_index cr@11@01 (inv@53@01 r)) r))
  :pattern ((inv@53@01 r))
  :qid |Ref__Integer_value-fctOfInv|)))
; Permissions are non-negative
; Field permissions are at most one
; Permission implies non-null receiver
(assert (forall ((i@52@01 Int)) (!
  (=>
    (and (<= 0 i@52@01) (< i@52@01 len@8@01))
    (not (= (Seq_index cr@11@01 i@52@01) $Ref.null)))
  :pattern ((Seq_index cr@11@01 i@52@01))
  :qid |Ref__Integer_value-permImpliesNonNull|)))
(push) ; 3
(set-option :timeout 10)
(assert (not (forall ((r $Ref)) (!
  (and
    (= (Seq_index cr@11@01 i@52@01) (Seq_index br@10@01 i@47@01))
    (=
      (and (img@54@01 r) (and (<= 0 (inv@53@01 r)) (< (inv@53@01 r) len@8@01)))
      (and (img@49@01 r) (and (<= 0 (inv@48@01 r)) (< (inv@48@01 r) len@8@01)))))
  
  :qid |quant-u-9421|))))
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
    (= (Seq_index cr@11@01 i@52@01) (Seq_index ar@9@01 i@42@01))
    (=
      (and (img@54@01 r) (and (<= 0 (inv@53@01 r)) (< (inv@53@01 r) len@8@01)))
      (and
        (img@44@01 r)
        (and
          (<= 1 (inv@43@01 r))
          (<
            (inv@43@01 r)
            (+
              (ite
                (< (- (Seq_length ar@9@01) 1) len@8@01)
                (- (Seq_length ar@9@01) 1)
                len@8@01)
              1))))))
  
  :qid |quant-u-9422|))))
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
    (= (Seq_index cr@11@01 i@52@01) (Seq_index ar@9@01 i@15@01))
    (=
      (and (img@54@01 r) (and (<= 0 (inv@53@01 r)) (< (inv@53@01 r) len@8@01)))
      (and (img@17@01 r) (and (<= 0 (inv@16@01 r)) (< (inv@16@01 r) len@8@01)))))
  
  :qid |quant-u-9423|))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
(set-option :timeout 0)
(push) ; 3
(declare-const $t@55@01 $Snap)
(assert (= $t@55@01 ($Snap.combine ($Snap.first $t@55@01) ($Snap.second $t@55@01))))
(assert (= ($Snap.first $t@55@01) $Snap.unit))
; [eval] 0 < len ==> |ar| == len
; [eval] 0 < len
(push) ; 4
; [then-branch: 47 | 0 < len@8@01 | dead]
; [else-branch: 47 | !(0 < len@8@01) | live]
(push) ; 5
; [else-branch: 47 | !(0 < len@8@01)]
(pop) ; 5
(pop) ; 4
; Joined path conditions
(assert (=
  ($Snap.second $t@55@01)
  ($Snap.combine
    ($Snap.first ($Snap.second $t@55@01))
    ($Snap.second ($Snap.second $t@55@01)))))
(declare-const i@56@01 Int)
(push) ; 4
; [eval] 0 <= i && i < len
; [eval] 0 <= i
(push) ; 5
; [then-branch: 48 | !(0 <= i@56@01) | live]
; [else-branch: 48 | 0 <= i@56@01 | live]
(push) ; 6
; [then-branch: 48 | !(0 <= i@56@01)]
(assert (not (<= 0 i@56@01)))
(pop) ; 6
(push) ; 6
; [else-branch: 48 | 0 <= i@56@01]
(assert (<= 0 i@56@01))
; [eval] i < len
(pop) ; 6
(pop) ; 5
; Joined path conditions
; Joined path conditions
(assert (or (<= 0 i@56@01) (not (<= 0 i@56@01))))
(assert (and (<= 0 i@56@01) (< i@56@01 len@8@01)))
; [eval] ar[i]
(push) ; 5
(assert (not (>= i@56@01 0)))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(push) ; 5
(assert (not (< i@56@01 (Seq_length ar@9@01))))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(pop) ; 4
(declare-fun inv@57@01 ($Ref) Int)
(declare-fun img@58@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
(assert (forall ((i@56@01 Int)) (!
  (=>
    (and (<= 0 i@56@01) (< i@56@01 len@8@01))
    (or (<= 0 i@56@01) (not (<= 0 i@56@01))))
  :pattern ((Seq_index ar@9@01 i@56@01))
  :qid |Ref__Integer_value-aux|)))
; Check receiver injectivity
(push) ; 4
(assert (not (forall ((i1@56@01 Int) (i2@56@01 Int)) (!
  (=>
    (and
      (and (<= 0 i1@56@01) (< i1@56@01 len@8@01))
      (and (<= 0 i2@56@01) (< i2@56@01 len@8@01))
      (= (Seq_index ar@9@01 i1@56@01) (Seq_index ar@9@01 i2@56@01)))
    (= i1@56@01 i2@56@01))
  
  :qid |Ref__Integer_value-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((i@56@01 Int)) (!
  (=>
    (and (<= 0 i@56@01) (< i@56@01 len@8@01))
    (and
      (= (inv@57@01 (Seq_index ar@9@01 i@56@01)) i@56@01)
      (img@58@01 (Seq_index ar@9@01 i@56@01))))
  :pattern ((Seq_index ar@9@01 i@56@01))
  :qid |quant-u-9425|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@58@01 r) (and (<= 0 (inv@57@01 r)) (< (inv@57@01 r) len@8@01)))
    (= (Seq_index ar@9@01 (inv@57@01 r)) r))
  :pattern ((inv@57@01 r))
  :qid |Ref__Integer_value-fctOfInv|)))
; Permissions are non-negative
; Field permissions are at most one
; Permission implies non-null receiver
(assert (forall ((i@56@01 Int)) (!
  (=>
    (and (<= 0 i@56@01) (< i@56@01 len@8@01))
    (not (= (Seq_index ar@9@01 i@56@01) $Ref.null)))
  :pattern ((Seq_index ar@9@01 i@56@01))
  :qid |Ref__Integer_value-permImpliesNonNull|)))
(assert (=
  ($Snap.second ($Snap.second $t@55@01))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second $t@55@01)))
    ($Snap.second ($Snap.second ($Snap.second $t@55@01))))))
(assert (= ($Snap.first ($Snap.second ($Snap.second $t@55@01))) $Snap.unit))
; [eval] 0 < len ==> |br| == len
; [eval] 0 < len
(push) ; 4
; [then-branch: 49 | 0 < len@8@01 | dead]
; [else-branch: 49 | !(0 < len@8@01) | live]
(push) ; 5
; [else-branch: 49 | !(0 < len@8@01)]
(pop) ; 5
(pop) ; 4
; Joined path conditions
(assert (=
  ($Snap.second ($Snap.second ($Snap.second $t@55@01)))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@55@01))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@55@01)))))))
(declare-const i@59@01 Int)
(push) ; 4
; [eval] 0 <= i && i < len
; [eval] 0 <= i
(push) ; 5
; [then-branch: 50 | !(0 <= i@59@01) | live]
; [else-branch: 50 | 0 <= i@59@01 | live]
(push) ; 6
; [then-branch: 50 | !(0 <= i@59@01)]
(assert (not (<= 0 i@59@01)))
(pop) ; 6
(push) ; 6
; [else-branch: 50 | 0 <= i@59@01]
(assert (<= 0 i@59@01))
; [eval] i < len
(pop) ; 6
(pop) ; 5
; Joined path conditions
; Joined path conditions
(assert (or (<= 0 i@59@01) (not (<= 0 i@59@01))))
(assert (and (<= 0 i@59@01) (< i@59@01 len@8@01)))
; [eval] br[i]
(push) ; 5
(assert (not (>= i@59@01 0)))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(push) ; 5
(assert (not (< i@59@01 (Seq_length br@10@01))))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(pop) ; 4
(declare-fun inv@60@01 ($Ref) Int)
(declare-fun img@61@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
(assert (forall ((i@59@01 Int)) (!
  (=>
    (and (<= 0 i@59@01) (< i@59@01 len@8@01))
    (or (<= 0 i@59@01) (not (<= 0 i@59@01))))
  :pattern ((Seq_index br@10@01 i@59@01))
  :qid |Ref__Integer_value-aux|)))
; Check receiver injectivity
(push) ; 4
(assert (not (forall ((i1@59@01 Int) (i2@59@01 Int)) (!
  (=>
    (and
      (and (<= 0 i1@59@01) (< i1@59@01 len@8@01))
      (and (<= 0 i2@59@01) (< i2@59@01 len@8@01))
      (= (Seq_index br@10@01 i1@59@01) (Seq_index br@10@01 i2@59@01)))
    (= i1@59@01 i2@59@01))
  
  :qid |Ref__Integer_value-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((i@59@01 Int)) (!
  (=>
    (and (<= 0 i@59@01) (< i@59@01 len@8@01))
    (and
      (= (inv@60@01 (Seq_index br@10@01 i@59@01)) i@59@01)
      (img@61@01 (Seq_index br@10@01 i@59@01))))
  :pattern ((Seq_index br@10@01 i@59@01))
  :qid |quant-u-9427|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@61@01 r) (and (<= 0 (inv@60@01 r)) (< (inv@60@01 r) len@8@01)))
    (= (Seq_index br@10@01 (inv@60@01 r)) r))
  :pattern ((inv@60@01 r))
  :qid |Ref__Integer_value-fctOfInv|)))
; Permissions are non-negative
; Field permissions are at most one
; Permission implies non-null receiver
(assert (forall ((i@59@01 Int)) (!
  (=>
    (and (<= 0 i@59@01) (< i@59@01 len@8@01))
    (not (= (Seq_index br@10@01 i@59@01) $Ref.null)))
  :pattern ((Seq_index br@10@01 i@59@01))
  :qid |Ref__Integer_value-permImpliesNonNull|)))
(push) ; 4
(set-option :timeout 10)
(assert (not (forall ((r $Ref)) (!
  (and
    (= (Seq_index br@10@01 i@59@01) (Seq_index ar@9@01 i@56@01))
    (=
      (and (img@61@01 r) (and (<= 0 (inv@60@01 r)) (< (inv@60@01 r) len@8@01)))
      (and (img@58@01 r) (and (<= 0 (inv@57@01 r)) (< (inv@57@01 r) len@8@01)))))
  
  :qid |quant-u-9428|))))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@55@01))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@55@01)))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@55@01))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@55@01)))))
  $Snap.unit))
; [eval] 0 < len ==> |cr| == len
; [eval] 0 < len
(set-option :timeout 0)
(push) ; 4
; [then-branch: 51 | 0 < len@8@01 | dead]
; [else-branch: 51 | !(0 < len@8@01) | live]
(push) ; 5
; [else-branch: 51 | !(0 < len@8@01)]
(pop) ; 5
(pop) ; 4
; Joined path conditions
(declare-const i@62@01 Int)
(push) ; 4
; [eval] 0 <= i && i < len
; [eval] 0 <= i
(push) ; 5
; [then-branch: 52 | !(0 <= i@62@01) | live]
; [else-branch: 52 | 0 <= i@62@01 | live]
(push) ; 6
; [then-branch: 52 | !(0 <= i@62@01)]
(assert (not (<= 0 i@62@01)))
(pop) ; 6
(push) ; 6
; [else-branch: 52 | 0 <= i@62@01]
(assert (<= 0 i@62@01))
; [eval] i < len
(pop) ; 6
(pop) ; 5
; Joined path conditions
; Joined path conditions
(assert (or (<= 0 i@62@01) (not (<= 0 i@62@01))))
(assert (and (<= 0 i@62@01) (< i@62@01 len@8@01)))
; [eval] cr[i]
(push) ; 5
(assert (not (>= i@62@01 0)))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(push) ; 5
(assert (not (< i@62@01 (Seq_length cr@11@01))))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(pop) ; 4
(declare-fun inv@63@01 ($Ref) Int)
(declare-fun img@64@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
(assert (forall ((i@62@01 Int)) (!
  (=>
    (and (<= 0 i@62@01) (< i@62@01 len@8@01))
    (or (<= 0 i@62@01) (not (<= 0 i@62@01))))
  :pattern ((Seq_index cr@11@01 i@62@01))
  :qid |Ref__Integer_value-aux|)))
; Check receiver injectivity
(push) ; 4
(assert (not (forall ((i1@62@01 Int) (i2@62@01 Int)) (!
  (=>
    (and
      (and (<= 0 i1@62@01) (< i1@62@01 len@8@01))
      (and (<= 0 i2@62@01) (< i2@62@01 len@8@01))
      (= (Seq_index cr@11@01 i1@62@01) (Seq_index cr@11@01 i2@62@01)))
    (= i1@62@01 i2@62@01))
  
  :qid |Ref__Integer_value-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((i@62@01 Int)) (!
  (=>
    (and (<= 0 i@62@01) (< i@62@01 len@8@01))
    (and
      (= (inv@63@01 (Seq_index cr@11@01 i@62@01)) i@62@01)
      (img@64@01 (Seq_index cr@11@01 i@62@01))))
  :pattern ((Seq_index cr@11@01 i@62@01))
  :qid |quant-u-9430|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@64@01 r) (and (<= 0 (inv@63@01 r)) (< (inv@63@01 r) len@8@01)))
    (= (Seq_index cr@11@01 (inv@63@01 r)) r))
  :pattern ((inv@63@01 r))
  :qid |Ref__Integer_value-fctOfInv|)))
; Permissions are non-negative
; Field permissions are at most one
; Permission implies non-null receiver
(assert (forall ((i@62@01 Int)) (!
  (=>
    (and (<= 0 i@62@01) (< i@62@01 len@8@01))
    (not (= (Seq_index cr@11@01 i@62@01) $Ref.null)))
  :pattern ((Seq_index cr@11@01 i@62@01))
  :qid |Ref__Integer_value-permImpliesNonNull|)))
(push) ; 4
(set-option :timeout 10)
(assert (not (forall ((r $Ref)) (!
  (and
    (= (Seq_index cr@11@01 i@62@01) (Seq_index br@10@01 i@59@01))
    (=
      (and (img@64@01 r) (and (<= 0 (inv@63@01 r)) (< (inv@63@01 r) len@8@01)))
      (and (img@61@01 r) (and (<= 0 (inv@60@01 r)) (< (inv@60@01 r) len@8@01)))))
  
  :qid |quant-u-9431|))))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not (forall ((r $Ref)) (!
  (and
    (= (Seq_index cr@11@01 i@62@01) (Seq_index ar@9@01 i@56@01))
    (=
      (and (img@64@01 r) (and (<= 0 (inv@63@01 r)) (< (inv@63@01 r) len@8@01)))
      (and (img@58@01 r) (and (<= 0 (inv@57@01 r)) (< (inv@57@01 r) len@8@01)))))
  
  :qid |quant-u-9432|))))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(pop) ; 3
(set-option :timeout 0)
(push) ; 3
; [exec]
; inhale false
(pop) ; 3
(pop) ; 2
(pop) ; 1
; ---------- Ref__recv_body_142 ----------
(declare-const diz@65@01 $Ref)
(declare-const current_thread_id@66@01 Int)
(declare-const ar@67@01 Seq<$Ref>)
(declare-const i@68@01 Int)
(declare-const diz@69@01 $Ref)
(declare-const current_thread_id@70@01 Int)
(declare-const ar@71@01 Seq<$Ref>)
(declare-const i@72@01 Int)
(push) ; 1
(declare-const $t@73@01 $Snap)
(assert (= $t@73@01 ($Snap.combine ($Snap.first $t@73@01) ($Snap.second $t@73@01))))
(assert (= ($Snap.first $t@73@01) $Snap.unit))
; [eval] diz != null
(assert (not (= diz@69@01 $Ref.null)))
(assert (=
  ($Snap.second $t@73@01)
  ($Snap.combine
    ($Snap.first ($Snap.second $t@73@01))
    ($Snap.second ($Snap.second $t@73@01)))))
(assert (= ($Snap.first ($Snap.second $t@73@01)) $Snap.unit))
; [eval] current_thread_id >= 0
(assert (>= current_thread_id@70@01 0))
(assert (=
  ($Snap.second ($Snap.second $t@73@01))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second $t@73@01)))
    ($Snap.second ($Snap.second ($Snap.second $t@73@01))))))
(assert (= ($Snap.first ($Snap.second ($Snap.second $t@73@01))) $Snap.unit))
; [eval] 0 <= i
(assert (<= 0 i@72@01))
(assert (= ($Snap.second ($Snap.second ($Snap.second $t@73@01))) $Snap.unit))
; [eval] i < |ar|
; [eval] |ar|
(assert (< i@72@01 (Seq_length ar@71@01)))
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
(set-option :timeout 0)
(push) ; 2
; [eval] ar[i]
(push) ; 3
(assert (not (>= i@72@01 0)))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(declare-const $t@74@01 Int)
(assert (not (= (Seq_index ar@71@01 i@72@01) $Ref.null)))
(pop) ; 2
(push) ; 2
; [exec]
; inhale false
(pop) ; 2
(pop) ; 1
; ---------- Ref__send_body_152 ----------
(declare-const diz@75@01 $Ref)
(declare-const current_thread_id@76@01 Int)
(declare-const ar@77@01 Seq<$Ref>)
(declare-const i@78@01 Int)
(declare-const diz@79@01 $Ref)
(declare-const current_thread_id@80@01 Int)
(declare-const ar@81@01 Seq<$Ref>)
(declare-const i@82@01 Int)
(push) ; 1
(declare-const $t@83@01 $Snap)
(assert (= $t@83@01 ($Snap.combine ($Snap.first $t@83@01) ($Snap.second $t@83@01))))
(assert (= ($Snap.first $t@83@01) $Snap.unit))
; [eval] diz != null
(assert (not (= diz@79@01 $Ref.null)))
(assert (=
  ($Snap.second $t@83@01)
  ($Snap.combine
    ($Snap.first ($Snap.second $t@83@01))
    ($Snap.second ($Snap.second $t@83@01)))))
(assert (= ($Snap.first ($Snap.second $t@83@01)) $Snap.unit))
; [eval] current_thread_id >= 0
(assert (>= current_thread_id@80@01 0))
(assert (=
  ($Snap.second ($Snap.second $t@83@01))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second $t@83@01)))
    ($Snap.second ($Snap.second ($Snap.second $t@83@01))))))
(assert (= ($Snap.first ($Snap.second ($Snap.second $t@83@01))) $Snap.unit))
; [eval] -1 <= i
; [eval] -1
(assert (<= (- 0 1) i@82@01))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second $t@83@01)))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@83@01))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@83@01)))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@83@01))))
  $Snap.unit))
; [eval] i + 1 < |ar|
; [eval] i + 1
; [eval] |ar|
(assert (< (+ i@82@01 1) (Seq_length ar@81@01)))
; [eval] ar[i + 1]
; [eval] i + 1
(push) ; 2
(assert (not (>= (+ i@82@01 1) 0)))
(check-sat)
; unsat
(pop) ; 2
; 0.00s
; (get-info :all-statistics)
(assert (not (= (Seq_index ar@81@01 (+ i@82@01 1)) $Ref.null)))
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
(set-option :timeout 0)
(push) ; 2
(pop) ; 2
(push) ; 2
; [exec]
; inhale false
(pop) ; 2
(pop) ; 1
; ---------- Ref__loop_body_54 ----------
(declare-const diz@84@01 $Ref)
(declare-const current_thread_id@85@01 Int)
(declare-const len@86@01 Int)
(declare-const ar@87@01 Seq<$Ref>)
(declare-const br@88@01 Seq<$Ref>)
(declare-const i@89@01 Int)
(declare-const cr@90@01 Seq<$Ref>)
(declare-const diz@91@01 $Ref)
(declare-const current_thread_id@92@01 Int)
(declare-const len@93@01 Int)
(declare-const ar@94@01 Seq<$Ref>)
(declare-const br@95@01 Seq<$Ref>)
(declare-const i@96@01 Int)
(declare-const cr@97@01 Seq<$Ref>)
(push) ; 1
(declare-const $t@98@01 $Snap)
(assert (= $t@98@01 ($Snap.combine ($Snap.first $t@98@01) ($Snap.second $t@98@01))))
(assert (= ($Snap.first $t@98@01) $Snap.unit))
; [eval] diz != null
(assert (not (= diz@91@01 $Ref.null)))
(assert (=
  ($Snap.second $t@98@01)
  ($Snap.combine
    ($Snap.first ($Snap.second $t@98@01))
    ($Snap.second ($Snap.second $t@98@01)))))
(assert (= ($Snap.first ($Snap.second $t@98@01)) $Snap.unit))
; [eval] current_thread_id >= 0
(assert (>= current_thread_id@92@01 0))
(assert (=
  ($Snap.second ($Snap.second $t@98@01))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second $t@98@01)))
    ($Snap.second ($Snap.second ($Snap.second $t@98@01))))))
(assert (= ($Snap.first ($Snap.second ($Snap.second $t@98@01))) $Snap.unit))
; [eval] 0 <= i
(assert (<= 0 i@96@01))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second $t@98@01)))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@98@01))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@98@01)))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@98@01))))
  $Snap.unit))
; [eval] i < len
(assert (< i@96@01 len@93@01))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@98@01))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@98@01)))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@98@01))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@98@01)))))
  $Snap.unit))
; [eval] |ar| == len
; [eval] |ar|
(assert (= (Seq_length ar@94@01) len@93@01))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@98@01)))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@98@01))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@98@01)))))))))
; [eval] ar[i]
(push) ; 2
(assert (not (>= i@96@01 0)))
(check-sat)
; unsat
(pop) ; 2
; 0.00s
; (get-info :all-statistics)
(push) ; 2
(assert (not (< i@96@01 (Seq_length ar@94@01))))
(check-sat)
; unsat
(pop) ; 2
; 0.00s
; (get-info :all-statistics)
(assert (not (= (Seq_index ar@94@01 i@96@01) $Ref.null)))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@98@01))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@98@01)))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@98@01))))))))))
; [eval] i == 0
(push) ; 2
(set-option :timeout 10)
(assert (not (not (= i@96@01 0))))
(check-sat)
; unknown
(pop) ; 2
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 2
(set-option :timeout 10)
(assert (not (= i@96@01 0)))
(check-sat)
; unknown
(pop) ; 2
; 0.00s
; (get-info :all-statistics)
; [then-branch: 53 | i@96@01 == 0 | live]
; [else-branch: 53 | i@96@01 != 0 | live]
(set-option :timeout 0)
(push) ; 2
; [then-branch: 53 | i@96@01 == 0]
(assert (= i@96@01 0))
; [eval] ar[i]
(push) ; 3
(assert (not (>= i@96@01 0)))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(push) ; 3
(assert (not (< i@96@01 (Seq_length ar@94@01))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(assert (=
  ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@98@01)))))))
  ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@98@01))))))))))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@98@01)))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@98@01))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@98@01)))))))))))
; [eval] i < |ar| - 1
; [eval] |ar| - 1
; [eval] |ar|
(push) ; 3
(set-option :timeout 10)
(assert (not (not (< i@96@01 (- (Seq_length ar@94@01) 1)))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (< i@96@01 (- (Seq_length ar@94@01) 1))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; [then-branch: 54 | i@96@01 < |ar@94@01| - 1 | live]
; [else-branch: 54 | !(i@96@01 < |ar@94@01| - 1) | live]
(set-option :timeout 0)
(push) ; 3
; [then-branch: 54 | i@96@01 < |ar@94@01| - 1]
(assert (< i@96@01 (- (Seq_length ar@94@01) 1)))
; [eval] ar[i + 1]
; [eval] i + 1
(push) ; 4
(assert (not (>= (+ i@96@01 1) 0)))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(push) ; 4
(assert (not (< (+ i@96@01 1) (Seq_length ar@94@01))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(push) ; 4
(set-option :timeout 10)
(assert (not (= (Seq_index ar@94@01 i@96@01) (Seq_index ar@94@01 (+ i@96@01 1)))))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(assert (not (= (Seq_index ar@94@01 (+ i@96@01 1)) $Ref.null)))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@98@01))))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@98@01)))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@98@01))))))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@98@01)))))))))
  $Snap.unit))
; [eval] |br| == len
; [eval] |br|
(assert (= (Seq_length br@95@01) len@93@01))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@98@01)))))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@98@01))))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@98@01)))))))))))))
; [eval] br[i]
(set-option :timeout 0)
(push) ; 4
(assert (not (>= i@96@01 0)))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(push) ; 4
(assert (not (< i@96@01 (Seq_length br@95@01))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(push) ; 4
(set-option :timeout 10)
(assert (not (= (Seq_index ar@94@01 (+ i@96@01 1)) (Seq_index br@95@01 i@96@01))))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not (= (Seq_index ar@94@01 i@96@01) (Seq_index br@95@01 i@96@01))))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(assert (not (= (Seq_index br@95@01 i@96@01) $Ref.null)))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@98@01))))))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@98@01)))))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@98@01))))))))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@98@01)))))))))))
  $Snap.unit))
; [eval] |cr| == len
; [eval] |cr|
(assert (= (Seq_length cr@97@01) len@93@01))
; [eval] cr[i]
(set-option :timeout 0)
(push) ; 4
(assert (not (>= i@96@01 0)))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(push) ; 4
(assert (not (< i@96@01 (Seq_length cr@97@01))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(push) ; 4
(set-option :timeout 10)
(assert (not (= (Seq_index br@95@01 i@96@01) (Seq_index cr@97@01 i@96@01))))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not (= (Seq_index ar@94@01 (+ i@96@01 1)) (Seq_index cr@97@01 i@96@01))))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not (= (Seq_index ar@94@01 i@96@01) (Seq_index cr@97@01 i@96@01))))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(assert (not (= (Seq_index cr@97@01 i@96@01) $Ref.null)))
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
(set-option :timeout 0)
(push) ; 4
(declare-const $t@99@01 $Snap)
(assert (= $t@99@01 ($Snap.combine ($Snap.first $t@99@01) ($Snap.second $t@99@01))))
(assert (= ($Snap.first $t@99@01) $Snap.unit))
; [eval] 0 <= i
(assert (=
  ($Snap.second $t@99@01)
  ($Snap.combine
    ($Snap.first ($Snap.second $t@99@01))
    ($Snap.second ($Snap.second $t@99@01)))))
(assert (= ($Snap.first ($Snap.second $t@99@01)) $Snap.unit))
; [eval] i < len
(assert (=
  ($Snap.second ($Snap.second $t@99@01))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second $t@99@01)))
    ($Snap.second ($Snap.second ($Snap.second $t@99@01))))))
(assert (= ($Snap.first ($Snap.second ($Snap.second $t@99@01))) $Snap.unit))
; [eval] |ar| == len
; [eval] |ar|
(assert (=
  ($Snap.second ($Snap.second ($Snap.second $t@99@01)))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@99@01))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@99@01)))))))
; [eval] ar[i]
(push) ; 5
(assert (not (>= i@96@01 0)))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(push) ; 5
(assert (not (< i@96@01 (Seq_length ar@94@01))))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@99@01))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@99@01)))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@99@01))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@99@01)))))
  $Snap.unit))
; [eval] |br| == len
; [eval] |br|
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@99@01)))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@99@01))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@99@01)))))))))
; [eval] br[i]
(push) ; 5
(assert (not (>= i@96@01 0)))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(push) ; 5
(assert (not (< i@96@01 (Seq_length br@95@01))))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(push) ; 5
(set-option :timeout 10)
(assert (not (= (Seq_index ar@94@01 i@96@01) (Seq_index br@95@01 i@96@01))))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@99@01))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@99@01)))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@99@01))))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@99@01)))))))
  $Snap.unit))
; [eval] |cr| == len
; [eval] |cr|
; [eval] cr[i]
(set-option :timeout 0)
(push) ; 5
(assert (not (>= i@96@01 0)))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(push) ; 5
(assert (not (< i@96@01 (Seq_length cr@97@01))))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(push) ; 5
(set-option :timeout 10)
(assert (not (= (Seq_index br@95@01 i@96@01) (Seq_index cr@97@01 i@96@01))))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 5
(set-option :timeout 10)
(assert (not (= (Seq_index ar@94@01 i@96@01) (Seq_index cr@97@01 i@96@01))))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(pop) ; 4
(set-option :timeout 0)
(push) ; 4
; [exec]
; var __flatten_5: Ref
(declare-const __flatten_5@100@01 $Ref)
; [exec]
; var __flatten_6: Int
(declare-const __flatten_6@101@01 Int)
; [exec]
; var __flatten_7: Ref
(declare-const __flatten_7@102@01 $Ref)
; [exec]
; var __flatten_8: Ref
(declare-const __flatten_8@103@01 $Ref)
; [exec]
; var __flatten_9: Int
(declare-const __flatten_9@104@01 Int)
; [exec]
; var __flatten_10: Ref
(declare-const __flatten_10@105@01 $Ref)
; [eval] i > 0
(push) ; 5
(set-option :timeout 10)
(assert (not (not (> i@96@01 0))))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
; [then-branch: 55 | i@96@01 > 0 | dead]
; [else-branch: 55 | !(i@96@01 > 0) | live]
(set-option :timeout 0)
(push) ; 5
; [else-branch: 55 | !(i@96@01 > 0)]
(assert (not (> i@96@01 0)))
(pop) ; 5
; [eval] !(i > 0)
; [eval] i > 0
(push) ; 5
(set-option :timeout 10)
(assert (not (> i@96@01 0)))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 5
(set-option :timeout 10)
(assert (not (not (> i@96@01 0))))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
; [then-branch: 56 | !(i@96@01 > 0) | live]
; [else-branch: 56 | i@96@01 > 0 | dead]
(set-option :timeout 0)
(push) ; 5
; [then-branch: 56 | !(i@96@01 > 0)]
(assert (not (> i@96@01 0)))
; [exec]
; __flatten_5 := ar[i]
; [eval] ar[i]
(push) ; 6
(assert (not (>= i@96@01 0)))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(push) ; 6
(assert (not (< i@96@01 (Seq_length ar@94@01))))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(declare-const __flatten_5@106@01 $Ref)
(assert (= __flatten_5@106@01 (Seq_index ar@94@01 i@96@01)))
; [exec]
; __flatten_7 := br[i]
; [eval] br[i]
(push) ; 6
(assert (not (>= i@96@01 0)))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(push) ; 6
(assert (not (< i@96@01 (Seq_length br@95@01))))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(declare-const __flatten_7@107@01 $Ref)
(assert (= __flatten_7@107@01 (Seq_index br@95@01 i@96@01)))
; [exec]
; __flatten_6 := __flatten_7.Ref__Integer_value + 1
; [eval] __flatten_7.Ref__Integer_value + 1
(push) ; 6
(set-option :timeout 10)
(assert (not (= (Seq_index cr@97@01 i@96@01) __flatten_7@107@01)))
(check-sat)
; unknown
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 6
(set-option :timeout 10)
(assert (not (= (Seq_index br@95@01 i@96@01) __flatten_7@107@01)))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(declare-const __flatten_6@108@01 Int)
(assert (=
  __flatten_6@108@01
  (+
    ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@98@01)))))))))))
    1)))
; [exec]
; __flatten_5.Ref__Integer_value := __flatten_6
(set-option :timeout 0)
(push) ; 6
(set-option :timeout 10)
(assert (not (= (Seq_index cr@97@01 i@96@01) __flatten_5@106@01)))
(check-sat)
; unknown
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 6
(set-option :timeout 10)
(assert (not (= (Seq_index br@95@01 i@96@01) __flatten_5@106@01)))
(check-sat)
; unknown
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 6
(set-option :timeout 10)
(assert (not (= (Seq_index ar@94@01 (+ i@96@01 1)) __flatten_5@106@01)))
(check-sat)
; unknown
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 6
(set-option :timeout 10)
(assert (not (= (Seq_index ar@94@01 i@96@01) __flatten_5@106@01)))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 6
(set-option :timeout 10)
(assert (not (= (Seq_index cr@97@01 i@96@01) __flatten_5@106@01)))
(check-sat)
; unknown
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 6
(set-option :timeout 10)
(assert (not (= (Seq_index br@95@01 i@96@01) __flatten_5@106@01)))
(check-sat)
; unknown
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 6
(set-option :timeout 10)
(assert (not (= (Seq_index ar@94@01 (+ i@96@01 1)) __flatten_5@106@01)))
(check-sat)
; unknown
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(assert (not (= __flatten_5@106@01 $Ref.null)))
; [eval] i < len - 1
; [eval] len - 1
(set-option :timeout 0)
(push) ; 6
(set-option :timeout 10)
(assert (not (not (< i@96@01 (- len@93@01 1)))))
(check-sat)
; unknown
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 6
(set-option :timeout 10)
(assert (not (< i@96@01 (- len@93@01 1))))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
; [then-branch: 57 | i@96@01 < len@93@01 - 1 | live]
; [else-branch: 57 | !(i@96@01 < len@93@01 - 1) | dead]
(set-option :timeout 0)
(push) ; 6
; [then-branch: 57 | i@96@01 < len@93@01 - 1]
(assert (< i@96@01 (- len@93@01 1)))
; [exec]
; __flatten_8 := cr[i]
; [eval] cr[i]
(push) ; 7
(assert (not (>= i@96@01 0)))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(push) ; 7
(assert (not (< i@96@01 (Seq_length cr@97@01))))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(declare-const __flatten_8@109@01 $Ref)
(assert (= __flatten_8@109@01 (Seq_index cr@97@01 i@96@01)))
; [exec]
; __flatten_10 := ar[i + 1]
; [eval] ar[i + 1]
; [eval] i + 1
(push) ; 7
(assert (not (>= (+ i@96@01 1) 0)))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(push) ; 7
(assert (not (< (+ i@96@01 1) (Seq_length ar@94@01))))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(declare-const __flatten_10@110@01 $Ref)
(assert (= __flatten_10@110@01 (Seq_index ar@94@01 (+ i@96@01 1))))
; [exec]
; __flatten_9 := __flatten_10.Ref__Integer_value + 2
; [eval] __flatten_10.Ref__Integer_value + 2
(push) ; 7
(set-option :timeout 10)
(assert (not (= __flatten_5@106@01 __flatten_10@110@01)))
(check-sat)
; unknown
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 7
(set-option :timeout 10)
(assert (not (= (Seq_index cr@97@01 i@96@01) __flatten_10@110@01)))
(check-sat)
; unknown
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 7
(set-option :timeout 10)
(assert (not (= (Seq_index br@95@01 i@96@01) __flatten_10@110@01)))
(check-sat)
; unknown
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 7
(set-option :timeout 10)
(assert (not (= (Seq_index ar@94@01 (+ i@96@01 1)) __flatten_10@110@01)))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(declare-const __flatten_9@111@01 Int)
(assert (=
  __flatten_9@111@01
  (+
    ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@98@01)))))))))
    2)))
; [exec]
; __flatten_8.Ref__Integer_value := __flatten_9
(set-option :timeout 0)
(push) ; 7
(set-option :timeout 10)
(assert (not (= __flatten_5@106@01 __flatten_8@109@01)))
(check-sat)
; unknown
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 7
(set-option :timeout 10)
(assert (not (= (Seq_index cr@97@01 i@96@01) __flatten_8@109@01)))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 7
(set-option :timeout 10)
(assert (not (= __flatten_5@106@01 __flatten_8@109@01)))
(check-sat)
; unknown
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 7
(set-option :timeout 10)
(assert (not (= (Seq_index br@95@01 i@96@01) __flatten_8@109@01)))
(check-sat)
; unknown
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 7
(set-option :timeout 10)
(assert (not (= (Seq_index ar@94@01 (+ i@96@01 1)) __flatten_8@109@01)))
(check-sat)
; unknown
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(assert (not (= __flatten_8@109@01 $Ref.null)))
; [exec]
; Ref__send_body_152(diz, current_thread_id, ar, i)
; [eval] diz != null
; [eval] current_thread_id >= 0
; [eval] -1 <= i
; [eval] -1
(set-option :timeout 0)
(push) ; 7
(assert (not (<= (- 0 1) i@96@01)))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(assert (<= (- 0 1) i@96@01))
; [eval] i + 1 < |ar|
; [eval] i + 1
; [eval] |ar|
(push) ; 7
(assert (not (< (+ i@96@01 1) (Seq_length ar@94@01))))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(assert (< (+ i@96@01 1) (Seq_length ar@94@01)))
; [eval] ar[i + 1]
; [eval] i + 1
(push) ; 7
(assert (not (>= (+ i@96@01 1) 0)))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
; [eval] 0 <= i
; [eval] i < len
; [eval] |ar| == len
; [eval] |ar|
; [eval] ar[i]
(set-option :timeout 0)
(push) ; 7
(assert (not (>= i@96@01 0)))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(push) ; 7
(assert (not (< i@96@01 (Seq_length ar@94@01))))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(push) ; 7
(set-option :timeout 10)
(assert (not (= __flatten_8@109@01 (Seq_index ar@94@01 i@96@01))))
(check-sat)
; unknown
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
; [eval] |br| == len
; [eval] |br|
; [eval] br[i]
(set-option :timeout 0)
(push) ; 7
(assert (not (>= i@96@01 0)))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(push) ; 7
(assert (not (< i@96@01 (Seq_length br@95@01))))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
; [eval] |cr| == len
; [eval] |cr|
; [eval] cr[i]
(push) ; 7
(assert (not (>= i@96@01 0)))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(push) ; 7
(assert (not (< i@96@01 (Seq_length cr@97@01))))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(pop) ; 6
; [eval] !(i < len - 1)
; [eval] i < len - 1
; [eval] len - 1
(push) ; 6
(set-option :timeout 10)
(assert (not (< i@96@01 (- len@93@01 1))))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
; [then-branch: 58 | !(i@96@01 < len@93@01 - 1) | dead]
; [else-branch: 58 | i@96@01 < len@93@01 - 1 | live]
(set-option :timeout 0)
(push) ; 6
; [else-branch: 58 | i@96@01 < len@93@01 - 1]
(assert (< i@96@01 (- len@93@01 1)))
(pop) ; 6
(pop) ; 5
(pop) ; 4
(pop) ; 3
(push) ; 3
; [else-branch: 54 | !(i@96@01 < |ar@94@01| - 1)]
(assert (not (< i@96@01 (- (Seq_length ar@94@01) 1))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@98@01))))))))
  $Snap.unit))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@98@01))))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@98@01)))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@98@01))))))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@98@01)))))))))
  $Snap.unit))
; [eval] |br| == len
; [eval] |br|
(assert (= (Seq_length br@95@01) len@93@01))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@98@01)))))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@98@01))))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@98@01)))))))))))))
; [eval] br[i]
(push) ; 4
(assert (not (>= i@96@01 0)))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(push) ; 4
(assert (not (< i@96@01 (Seq_length br@95@01))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(push) ; 4
(set-option :timeout 10)
(assert (not (= (Seq_index ar@94@01 i@96@01) (Seq_index br@95@01 i@96@01))))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(assert (not (= (Seq_index br@95@01 i@96@01) $Ref.null)))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@98@01))))))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@98@01)))))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@98@01))))))))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@98@01)))))))))))
  $Snap.unit))
; [eval] |cr| == len
; [eval] |cr|
(assert (= (Seq_length cr@97@01) len@93@01))
; [eval] cr[i]
(set-option :timeout 0)
(push) ; 4
(assert (not (>= i@96@01 0)))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(push) ; 4
(assert (not (< i@96@01 (Seq_length cr@97@01))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(push) ; 4
(set-option :timeout 10)
(assert (not (= (Seq_index br@95@01 i@96@01) (Seq_index cr@97@01 i@96@01))))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not (= (Seq_index ar@94@01 i@96@01) (Seq_index cr@97@01 i@96@01))))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(assert (not (= (Seq_index cr@97@01 i@96@01) $Ref.null)))
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
(set-option :timeout 0)
(push) ; 4
(declare-const $t@112@01 $Snap)
(assert (= $t@112@01 ($Snap.combine ($Snap.first $t@112@01) ($Snap.second $t@112@01))))
(assert (= ($Snap.first $t@112@01) $Snap.unit))
; [eval] 0 <= i
(assert (=
  ($Snap.second $t@112@01)
  ($Snap.combine
    ($Snap.first ($Snap.second $t@112@01))
    ($Snap.second ($Snap.second $t@112@01)))))
(assert (= ($Snap.first ($Snap.second $t@112@01)) $Snap.unit))
; [eval] i < len
(assert (=
  ($Snap.second ($Snap.second $t@112@01))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second $t@112@01)))
    ($Snap.second ($Snap.second ($Snap.second $t@112@01))))))
(assert (= ($Snap.first ($Snap.second ($Snap.second $t@112@01))) $Snap.unit))
; [eval] |ar| == len
; [eval] |ar|
(assert (=
  ($Snap.second ($Snap.second ($Snap.second $t@112@01)))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@112@01))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@112@01)))))))
; [eval] ar[i]
(push) ; 5
(assert (not (>= i@96@01 0)))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(push) ; 5
(assert (not (< i@96@01 (Seq_length ar@94@01))))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@112@01))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@112@01)))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@112@01))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@112@01)))))
  $Snap.unit))
; [eval] |br| == len
; [eval] |br|
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@112@01)))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@112@01))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@112@01)))))))))
; [eval] br[i]
(push) ; 5
(assert (not (>= i@96@01 0)))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(push) ; 5
(assert (not (< i@96@01 (Seq_length br@95@01))))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(push) ; 5
(set-option :timeout 10)
(assert (not (= (Seq_index ar@94@01 i@96@01) (Seq_index br@95@01 i@96@01))))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@112@01))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@112@01)))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@112@01))))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@112@01)))))))
  $Snap.unit))
; [eval] |cr| == len
; [eval] |cr|
; [eval] cr[i]
(set-option :timeout 0)
(push) ; 5
(assert (not (>= i@96@01 0)))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(push) ; 5
(assert (not (< i@96@01 (Seq_length cr@97@01))))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(push) ; 5
(set-option :timeout 10)
(assert (not (= (Seq_index br@95@01 i@96@01) (Seq_index cr@97@01 i@96@01))))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 5
(set-option :timeout 10)
(assert (not (= (Seq_index ar@94@01 i@96@01) (Seq_index cr@97@01 i@96@01))))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(pop) ; 4
(set-option :timeout 0)
(push) ; 4
; [exec]
; var __flatten_5: Ref
(declare-const __flatten_5@113@01 $Ref)
; [exec]
; var __flatten_6: Int
(declare-const __flatten_6@114@01 Int)
; [exec]
; var __flatten_7: Ref
(declare-const __flatten_7@115@01 $Ref)
; [exec]
; var __flatten_8: Ref
(declare-const __flatten_8@116@01 $Ref)
; [exec]
; var __flatten_9: Int
(declare-const __flatten_9@117@01 Int)
; [exec]
; var __flatten_10: Ref
(declare-const __flatten_10@118@01 $Ref)
; [eval] i > 0
(push) ; 5
(set-option :timeout 10)
(assert (not (not (> i@96@01 0))))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
; [then-branch: 59 | i@96@01 > 0 | dead]
; [else-branch: 59 | !(i@96@01 > 0) | live]
(set-option :timeout 0)
(push) ; 5
; [else-branch: 59 | !(i@96@01 > 0)]
(assert (not (> i@96@01 0)))
(pop) ; 5
; [eval] !(i > 0)
; [eval] i > 0
(push) ; 5
(set-option :timeout 10)
(assert (not (> i@96@01 0)))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 5
(set-option :timeout 10)
(assert (not (not (> i@96@01 0))))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
; [then-branch: 60 | !(i@96@01 > 0) | live]
; [else-branch: 60 | i@96@01 > 0 | dead]
(set-option :timeout 0)
(push) ; 5
; [then-branch: 60 | !(i@96@01 > 0)]
(assert (not (> i@96@01 0)))
; [exec]
; __flatten_5 := ar[i]
; [eval] ar[i]
(push) ; 6
(assert (not (>= i@96@01 0)))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(push) ; 6
(assert (not (< i@96@01 (Seq_length ar@94@01))))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(declare-const __flatten_5@119@01 $Ref)
(assert (= __flatten_5@119@01 (Seq_index ar@94@01 i@96@01)))
; [exec]
; __flatten_7 := br[i]
; [eval] br[i]
(push) ; 6
(assert (not (>= i@96@01 0)))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(push) ; 6
(assert (not (< i@96@01 (Seq_length br@95@01))))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(declare-const __flatten_7@120@01 $Ref)
(assert (= __flatten_7@120@01 (Seq_index br@95@01 i@96@01)))
; [exec]
; __flatten_6 := __flatten_7.Ref__Integer_value + 1
; [eval] __flatten_7.Ref__Integer_value + 1
(push) ; 6
(set-option :timeout 10)
(assert (not (= (Seq_index cr@97@01 i@96@01) __flatten_7@120@01)))
(check-sat)
; unknown
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 6
(set-option :timeout 10)
(assert (not (= (Seq_index br@95@01 i@96@01) __flatten_7@120@01)))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(declare-const __flatten_6@121@01 Int)
(assert (=
  __flatten_6@121@01
  (+
    ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@98@01)))))))))))
    1)))
; [exec]
; __flatten_5.Ref__Integer_value := __flatten_6
(set-option :timeout 0)
(push) ; 6
(set-option :timeout 10)
(assert (not (= (Seq_index cr@97@01 i@96@01) __flatten_5@119@01)))
(check-sat)
; unknown
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 6
(set-option :timeout 10)
(assert (not (= (Seq_index br@95@01 i@96@01) __flatten_5@119@01)))
(check-sat)
; unknown
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 6
(set-option :timeout 10)
(assert (not (= (Seq_index ar@94@01 i@96@01) __flatten_5@119@01)))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 6
(set-option :timeout 10)
(assert (not (= (Seq_index cr@97@01 i@96@01) __flatten_5@119@01)))
(check-sat)
; unknown
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 6
(set-option :timeout 10)
(assert (not (= (Seq_index br@95@01 i@96@01) __flatten_5@119@01)))
(check-sat)
; unknown
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(assert (not (= __flatten_5@119@01 $Ref.null)))
; [eval] i < len - 1
; [eval] len - 1
(set-option :timeout 0)
(push) ; 6
(set-option :timeout 10)
(assert (not (not (< i@96@01 (- len@93@01 1)))))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
; [then-branch: 61 | i@96@01 < len@93@01 - 1 | dead]
; [else-branch: 61 | !(i@96@01 < len@93@01 - 1) | live]
(set-option :timeout 0)
(push) ; 6
; [else-branch: 61 | !(i@96@01 < len@93@01 - 1)]
(assert (not (< i@96@01 (- len@93@01 1))))
(pop) ; 6
; [eval] !(i < len - 1)
; [eval] i < len - 1
; [eval] len - 1
(push) ; 6
(set-option :timeout 10)
(assert (not (< i@96@01 (- len@93@01 1))))
(check-sat)
; unknown
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 6
(set-option :timeout 10)
(assert (not (not (< i@96@01 (- len@93@01 1)))))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
; [then-branch: 62 | !(i@96@01 < len@93@01 - 1) | live]
; [else-branch: 62 | i@96@01 < len@93@01 - 1 | dead]
(set-option :timeout 0)
(push) ; 6
; [then-branch: 62 | !(i@96@01 < len@93@01 - 1)]
(assert (not (< i@96@01 (- len@93@01 1))))
; [eval] 0 <= i
; [eval] i < len
; [eval] |ar| == len
; [eval] |ar|
; [eval] ar[i]
(push) ; 7
(assert (not (>= i@96@01 0)))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(push) ; 7
(assert (not (< i@96@01 (Seq_length ar@94@01))))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
; [eval] |br| == len
; [eval] |br|
; [eval] br[i]
(push) ; 7
(assert (not (>= i@96@01 0)))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(push) ; 7
(assert (not (< i@96@01 (Seq_length br@95@01))))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
; [eval] |cr| == len
; [eval] |cr|
; [eval] cr[i]
(push) ; 7
(assert (not (>= i@96@01 0)))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(push) ; 7
(assert (not (< i@96@01 (Seq_length cr@97@01))))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(pop) ; 6
(pop) ; 5
(pop) ; 4
(pop) ; 3
(pop) ; 2
(push) ; 2
; [else-branch: 53 | i@96@01 != 0]
(assert (not (= i@96@01 0)))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@98@01)))))))
  $Snap.unit))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@98@01)))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@98@01))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@98@01)))))))))))
; [eval] i < |ar| - 1
; [eval] |ar| - 1
; [eval] |ar|
(push) ; 3
(set-option :timeout 10)
(assert (not (not (< i@96@01 (- (Seq_length ar@94@01) 1)))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (< i@96@01 (- (Seq_length ar@94@01) 1))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; [then-branch: 63 | i@96@01 < |ar@94@01| - 1 | live]
; [else-branch: 63 | !(i@96@01 < |ar@94@01| - 1) | live]
(set-option :timeout 0)
(push) ; 3
; [then-branch: 63 | i@96@01 < |ar@94@01| - 1]
(assert (< i@96@01 (- (Seq_length ar@94@01) 1)))
; [eval] ar[i + 1]
; [eval] i + 1
(push) ; 4
(assert (not (>= (+ i@96@01 1) 0)))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(push) ; 4
(assert (not (< (+ i@96@01 1) (Seq_length ar@94@01))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(push) ; 4
(set-option :timeout 10)
(assert (not (= (Seq_index ar@94@01 i@96@01) (Seq_index ar@94@01 (+ i@96@01 1)))))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(assert (not (= (Seq_index ar@94@01 (+ i@96@01 1)) $Ref.null)))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@98@01))))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@98@01)))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@98@01))))))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@98@01)))))))))
  $Snap.unit))
; [eval] |br| == len
; [eval] |br|
(assert (= (Seq_length br@95@01) len@93@01))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@98@01)))))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@98@01))))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@98@01)))))))))))))
; [eval] br[i]
(set-option :timeout 0)
(push) ; 4
(assert (not (>= i@96@01 0)))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(push) ; 4
(assert (not (< i@96@01 (Seq_length br@95@01))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(push) ; 4
(set-option :timeout 10)
(assert (not (= (Seq_index ar@94@01 (+ i@96@01 1)) (Seq_index br@95@01 i@96@01))))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not (= (Seq_index ar@94@01 i@96@01) (Seq_index br@95@01 i@96@01))))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(assert (not (= (Seq_index br@95@01 i@96@01) $Ref.null)))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@98@01))))))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@98@01)))))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@98@01))))))))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@98@01)))))))))))
  $Snap.unit))
; [eval] |cr| == len
; [eval] |cr|
(assert (= (Seq_length cr@97@01) len@93@01))
; [eval] cr[i]
(set-option :timeout 0)
(push) ; 4
(assert (not (>= i@96@01 0)))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(push) ; 4
(assert (not (< i@96@01 (Seq_length cr@97@01))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(push) ; 4
(set-option :timeout 10)
(assert (not (= (Seq_index br@95@01 i@96@01) (Seq_index cr@97@01 i@96@01))))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not (= (Seq_index ar@94@01 (+ i@96@01 1)) (Seq_index cr@97@01 i@96@01))))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not (= (Seq_index ar@94@01 i@96@01) (Seq_index cr@97@01 i@96@01))))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(assert (not (= (Seq_index cr@97@01 i@96@01) $Ref.null)))
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
(set-option :timeout 0)
(push) ; 4
(declare-const $t@122@01 $Snap)
(assert (= $t@122@01 ($Snap.combine ($Snap.first $t@122@01) ($Snap.second $t@122@01))))
(assert (= ($Snap.first $t@122@01) $Snap.unit))
; [eval] 0 <= i
(assert (=
  ($Snap.second $t@122@01)
  ($Snap.combine
    ($Snap.first ($Snap.second $t@122@01))
    ($Snap.second ($Snap.second $t@122@01)))))
(assert (= ($Snap.first ($Snap.second $t@122@01)) $Snap.unit))
; [eval] i < len
(assert (=
  ($Snap.second ($Snap.second $t@122@01))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second $t@122@01)))
    ($Snap.second ($Snap.second ($Snap.second $t@122@01))))))
(assert (= ($Snap.first ($Snap.second ($Snap.second $t@122@01))) $Snap.unit))
; [eval] |ar| == len
; [eval] |ar|
(assert (=
  ($Snap.second ($Snap.second ($Snap.second $t@122@01)))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@122@01))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@122@01)))))))
; [eval] ar[i]
(push) ; 5
(assert (not (>= i@96@01 0)))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(push) ; 5
(assert (not (< i@96@01 (Seq_length ar@94@01))))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@122@01))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@122@01)))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@122@01))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@122@01)))))
  $Snap.unit))
; [eval] |br| == len
; [eval] |br|
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@122@01)))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@122@01))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@122@01)))))))))
; [eval] br[i]
(push) ; 5
(assert (not (>= i@96@01 0)))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(push) ; 5
(assert (not (< i@96@01 (Seq_length br@95@01))))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(push) ; 5
(set-option :timeout 10)
(assert (not (= (Seq_index ar@94@01 i@96@01) (Seq_index br@95@01 i@96@01))))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@122@01))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@122@01)))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@122@01))))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@122@01)))))))
  $Snap.unit))
; [eval] |cr| == len
; [eval] |cr|
; [eval] cr[i]
(set-option :timeout 0)
(push) ; 5
(assert (not (>= i@96@01 0)))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(push) ; 5
(assert (not (< i@96@01 (Seq_length cr@97@01))))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(push) ; 5
(set-option :timeout 10)
(assert (not (= (Seq_index br@95@01 i@96@01) (Seq_index cr@97@01 i@96@01))))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 5
(set-option :timeout 10)
(assert (not (= (Seq_index ar@94@01 i@96@01) (Seq_index cr@97@01 i@96@01))))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(pop) ; 4
(set-option :timeout 0)
(push) ; 4
; [exec]
; var __flatten_5: Ref
(declare-const __flatten_5@123@01 $Ref)
; [exec]
; var __flatten_6: Int
(declare-const __flatten_6@124@01 Int)
; [exec]
; var __flatten_7: Ref
(declare-const __flatten_7@125@01 $Ref)
; [exec]
; var __flatten_8: Ref
(declare-const __flatten_8@126@01 $Ref)
; [exec]
; var __flatten_9: Int
(declare-const __flatten_9@127@01 Int)
; [exec]
; var __flatten_10: Ref
(declare-const __flatten_10@128@01 $Ref)
; [eval] i > 0
(push) ; 5
(set-option :timeout 10)
(assert (not (not (> i@96@01 0))))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 5
(set-option :timeout 10)
(assert (not (> i@96@01 0)))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
; [then-branch: 64 | i@96@01 > 0 | live]
; [else-branch: 64 | !(i@96@01 > 0) | dead]
(set-option :timeout 0)
(push) ; 5
; [then-branch: 64 | i@96@01 > 0]
(assert (> i@96@01 0))
; [exec]
; Ref__recv_body_142(diz, current_thread_id, ar, i)
; [eval] diz != null
; [eval] current_thread_id >= 0
; [eval] 0 <= i
; [eval] i < |ar|
; [eval] |ar|
(push) ; 6
(assert (not (< i@96@01 (Seq_length ar@94@01))))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(assert (< i@96@01 (Seq_length ar@94@01)))
; [eval] ar[i]
(push) ; 6
(assert (not (>= i@96@01 0)))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(declare-const $t@129@01 Int)
(assert (=
  ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@98@01)))))))
  $t@129@01))
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
; [exec]
; __flatten_5 := ar[i]
; [eval] ar[i]
(set-option :timeout 0)
(push) ; 6
(assert (not (>= i@96@01 0)))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(declare-const __flatten_5@130@01 $Ref)
(assert (= __flatten_5@130@01 (Seq_index ar@94@01 i@96@01)))
; [exec]
; __flatten_7 := br[i]
; [eval] br[i]
(push) ; 6
(assert (not (>= i@96@01 0)))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(push) ; 6
(assert (not (< i@96@01 (Seq_length br@95@01))))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(declare-const __flatten_7@131@01 $Ref)
(assert (= __flatten_7@131@01 (Seq_index br@95@01 i@96@01)))
; [exec]
; __flatten_6 := __flatten_7.Ref__Integer_value + 1
; [eval] __flatten_7.Ref__Integer_value + 1
(push) ; 6
(set-option :timeout 10)
(assert (not (= (Seq_index ar@94@01 i@96@01) __flatten_7@131@01)))
(check-sat)
; unknown
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 6
(set-option :timeout 10)
(assert (not (= (Seq_index cr@97@01 i@96@01) __flatten_7@131@01)))
(check-sat)
; unknown
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 6
(set-option :timeout 10)
(assert (not (= (Seq_index br@95@01 i@96@01) __flatten_7@131@01)))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(declare-const __flatten_6@132@01 Int)
(assert (=
  __flatten_6@132@01
  (+
    ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@98@01)))))))))))
    1)))
; [exec]
; __flatten_5.Ref__Integer_value := __flatten_6
(set-option :timeout 0)
(push) ; 6
(set-option :timeout 10)
(assert (not (= (Seq_index ar@94@01 i@96@01) __flatten_5@130@01)))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 6
(set-option :timeout 10)
(assert (not (= (Seq_index cr@97@01 i@96@01) __flatten_5@130@01)))
(check-sat)
; unknown
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 6
(set-option :timeout 10)
(assert (not (= (Seq_index br@95@01 i@96@01) __flatten_5@130@01)))
(check-sat)
; unknown
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 6
(set-option :timeout 10)
(assert (not (= (Seq_index ar@94@01 (+ i@96@01 1)) __flatten_5@130@01)))
(check-sat)
; unknown
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(assert (not (= __flatten_5@130@01 $Ref.null)))
; [eval] i < len - 1
; [eval] len - 1
(set-option :timeout 0)
(push) ; 6
(set-option :timeout 10)
(assert (not (not (< i@96@01 (- len@93@01 1)))))
(check-sat)
; unknown
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 6
(set-option :timeout 10)
(assert (not (< i@96@01 (- len@93@01 1))))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
; [then-branch: 65 | i@96@01 < len@93@01 - 1 | live]
; [else-branch: 65 | !(i@96@01 < len@93@01 - 1) | dead]
(set-option :timeout 0)
(push) ; 6
; [then-branch: 65 | i@96@01 < len@93@01 - 1]
(assert (< i@96@01 (- len@93@01 1)))
; [exec]
; __flatten_8 := cr[i]
; [eval] cr[i]
(push) ; 7
(assert (not (>= i@96@01 0)))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(push) ; 7
(assert (not (< i@96@01 (Seq_length cr@97@01))))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(declare-const __flatten_8@133@01 $Ref)
(assert (= __flatten_8@133@01 (Seq_index cr@97@01 i@96@01)))
; [exec]
; __flatten_10 := ar[i + 1]
; [eval] ar[i + 1]
; [eval] i + 1
(push) ; 7
(assert (not (>= (+ i@96@01 1) 0)))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(push) ; 7
(assert (not (< (+ i@96@01 1) (Seq_length ar@94@01))))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(declare-const __flatten_10@134@01 $Ref)
(assert (= __flatten_10@134@01 (Seq_index ar@94@01 (+ i@96@01 1))))
; [exec]
; __flatten_9 := __flatten_10.Ref__Integer_value + 2
; [eval] __flatten_10.Ref__Integer_value + 2
(push) ; 7
(set-option :timeout 10)
(assert (not (= __flatten_5@130@01 __flatten_10@134@01)))
(check-sat)
; unknown
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 7
(set-option :timeout 10)
(assert (not (= (Seq_index cr@97@01 i@96@01) __flatten_10@134@01)))
(check-sat)
; unknown
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 7
(set-option :timeout 10)
(assert (not (= (Seq_index br@95@01 i@96@01) __flatten_10@134@01)))
(check-sat)
; unknown
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 7
(set-option :timeout 10)
(assert (not (= (Seq_index ar@94@01 (+ i@96@01 1)) __flatten_10@134@01)))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(declare-const __flatten_9@135@01 Int)
(assert (=
  __flatten_9@135@01
  (+
    ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@98@01)))))))))
    2)))
; [exec]
; __flatten_8.Ref__Integer_value := __flatten_9
(set-option :timeout 0)
(push) ; 7
(set-option :timeout 10)
(assert (not (= __flatten_5@130@01 __flatten_8@133@01)))
(check-sat)
; unknown
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 7
(set-option :timeout 10)
(assert (not (= (Seq_index cr@97@01 i@96@01) __flatten_8@133@01)))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 7
(set-option :timeout 10)
(assert (not (= __flatten_5@130@01 __flatten_8@133@01)))
(check-sat)
; unknown
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 7
(set-option :timeout 10)
(assert (not (= (Seq_index br@95@01 i@96@01) __flatten_8@133@01)))
(check-sat)
; unknown
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 7
(set-option :timeout 10)
(assert (not (= (Seq_index ar@94@01 (+ i@96@01 1)) __flatten_8@133@01)))
(check-sat)
; unknown
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(assert (not (= __flatten_8@133@01 $Ref.null)))
; [exec]
; Ref__send_body_152(diz, current_thread_id, ar, i)
; [eval] diz != null
; [eval] current_thread_id >= 0
; [eval] -1 <= i
; [eval] -1
(set-option :timeout 0)
(push) ; 7
(assert (not (<= (- 0 1) i@96@01)))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(assert (<= (- 0 1) i@96@01))
; [eval] i + 1 < |ar|
; [eval] i + 1
; [eval] |ar|
(push) ; 7
(assert (not (< (+ i@96@01 1) (Seq_length ar@94@01))))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(assert (< (+ i@96@01 1) (Seq_length ar@94@01)))
; [eval] ar[i + 1]
; [eval] i + 1
(push) ; 7
(assert (not (>= (+ i@96@01 1) 0)))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
; [eval] 0 <= i
; [eval] i < len
; [eval] |ar| == len
; [eval] |ar|
; [eval] ar[i]
(set-option :timeout 0)
(push) ; 7
(assert (not (>= i@96@01 0)))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(push) ; 7
(set-option :timeout 10)
(assert (not (= __flatten_8@133@01 (Seq_index ar@94@01 i@96@01))))
(check-sat)
; unknown
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
; [eval] |br| == len
; [eval] |br|
; [eval] br[i]
(set-option :timeout 0)
(push) ; 7
(assert (not (>= i@96@01 0)))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(push) ; 7
(assert (not (< i@96@01 (Seq_length br@95@01))))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
; [eval] |cr| == len
; [eval] |cr|
; [eval] cr[i]
(push) ; 7
(assert (not (>= i@96@01 0)))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(push) ; 7
(assert (not (< i@96@01 (Seq_length cr@97@01))))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(pop) ; 6
; [eval] !(i < len - 1)
; [eval] i < len - 1
; [eval] len - 1
(push) ; 6
(set-option :timeout 10)
(assert (not (< i@96@01 (- len@93@01 1))))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
; [then-branch: 66 | !(i@96@01 < len@93@01 - 1) | dead]
; [else-branch: 66 | i@96@01 < len@93@01 - 1 | live]
(set-option :timeout 0)
(push) ; 6
; [else-branch: 66 | i@96@01 < len@93@01 - 1]
(assert (< i@96@01 (- len@93@01 1)))
(pop) ; 6
(pop) ; 5
; [eval] !(i > 0)
; [eval] i > 0
(push) ; 5
(set-option :timeout 10)
(assert (not (> i@96@01 0)))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
; [then-branch: 67 | !(i@96@01 > 0) | dead]
; [else-branch: 67 | i@96@01 > 0 | live]
(set-option :timeout 0)
(push) ; 5
; [else-branch: 67 | i@96@01 > 0]
(assert (> i@96@01 0))
(pop) ; 5
(pop) ; 4
(pop) ; 3
(push) ; 3
; [else-branch: 63 | !(i@96@01 < |ar@94@01| - 1)]
(assert (not (< i@96@01 (- (Seq_length ar@94@01) 1))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@98@01))))))))
  $Snap.unit))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@98@01))))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@98@01)))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@98@01))))))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@98@01)))))))))
  $Snap.unit))
; [eval] |br| == len
; [eval] |br|
(assert (= (Seq_length br@95@01) len@93@01))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@98@01)))))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@98@01))))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@98@01)))))))))))))
; [eval] br[i]
(push) ; 4
(assert (not (>= i@96@01 0)))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(push) ; 4
(assert (not (< i@96@01 (Seq_length br@95@01))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(push) ; 4
(set-option :timeout 10)
(assert (not (= (Seq_index ar@94@01 i@96@01) (Seq_index br@95@01 i@96@01))))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(assert (not (= (Seq_index br@95@01 i@96@01) $Ref.null)))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@98@01))))))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@98@01)))))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@98@01))))))))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@98@01)))))))))))
  $Snap.unit))
; [eval] |cr| == len
; [eval] |cr|
(assert (= (Seq_length cr@97@01) len@93@01))
; [eval] cr[i]
(set-option :timeout 0)
(push) ; 4
(assert (not (>= i@96@01 0)))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(push) ; 4
(assert (not (< i@96@01 (Seq_length cr@97@01))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(push) ; 4
(set-option :timeout 10)
(assert (not (= (Seq_index br@95@01 i@96@01) (Seq_index cr@97@01 i@96@01))))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not (= (Seq_index ar@94@01 i@96@01) (Seq_index cr@97@01 i@96@01))))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(assert (not (= (Seq_index cr@97@01 i@96@01) $Ref.null)))
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
(set-option :timeout 0)
(push) ; 4
(declare-const $t@136@01 $Snap)
(assert (= $t@136@01 ($Snap.combine ($Snap.first $t@136@01) ($Snap.second $t@136@01))))
(assert (= ($Snap.first $t@136@01) $Snap.unit))
; [eval] 0 <= i
(assert (=
  ($Snap.second $t@136@01)
  ($Snap.combine
    ($Snap.first ($Snap.second $t@136@01))
    ($Snap.second ($Snap.second $t@136@01)))))
(assert (= ($Snap.first ($Snap.second $t@136@01)) $Snap.unit))
; [eval] i < len
(assert (=
  ($Snap.second ($Snap.second $t@136@01))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second $t@136@01)))
    ($Snap.second ($Snap.second ($Snap.second $t@136@01))))))
(assert (= ($Snap.first ($Snap.second ($Snap.second $t@136@01))) $Snap.unit))
; [eval] |ar| == len
; [eval] |ar|
(assert (=
  ($Snap.second ($Snap.second ($Snap.second $t@136@01)))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@136@01))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@136@01)))))))
; [eval] ar[i]
(push) ; 5
(assert (not (>= i@96@01 0)))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(push) ; 5
(assert (not (< i@96@01 (Seq_length ar@94@01))))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@136@01))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@136@01)))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@136@01))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@136@01)))))
  $Snap.unit))
; [eval] |br| == len
; [eval] |br|
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@136@01)))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@136@01))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@136@01)))))))))
; [eval] br[i]
(push) ; 5
(assert (not (>= i@96@01 0)))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(push) ; 5
(assert (not (< i@96@01 (Seq_length br@95@01))))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(push) ; 5
(set-option :timeout 10)
(assert (not (= (Seq_index ar@94@01 i@96@01) (Seq_index br@95@01 i@96@01))))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@136@01))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@136@01)))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@136@01))))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@136@01)))))))
  $Snap.unit))
; [eval] |cr| == len
; [eval] |cr|
; [eval] cr[i]
(set-option :timeout 0)
(push) ; 5
(assert (not (>= i@96@01 0)))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(push) ; 5
(assert (not (< i@96@01 (Seq_length cr@97@01))))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(push) ; 5
(set-option :timeout 10)
(assert (not (= (Seq_index br@95@01 i@96@01) (Seq_index cr@97@01 i@96@01))))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 5
(set-option :timeout 10)
(assert (not (= (Seq_index ar@94@01 i@96@01) (Seq_index cr@97@01 i@96@01))))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(pop) ; 4
(set-option :timeout 0)
(push) ; 4
; [exec]
; var __flatten_5: Ref
(declare-const __flatten_5@137@01 $Ref)
; [exec]
; var __flatten_6: Int
(declare-const __flatten_6@138@01 Int)
; [exec]
; var __flatten_7: Ref
(declare-const __flatten_7@139@01 $Ref)
; [exec]
; var __flatten_8: Ref
(declare-const __flatten_8@140@01 $Ref)
; [exec]
; var __flatten_9: Int
(declare-const __flatten_9@141@01 Int)
; [exec]
; var __flatten_10: Ref
(declare-const __flatten_10@142@01 $Ref)
; [eval] i > 0
(push) ; 5
(set-option :timeout 10)
(assert (not (not (> i@96@01 0))))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 5
(set-option :timeout 10)
(assert (not (> i@96@01 0)))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
; [then-branch: 68 | i@96@01 > 0 | live]
; [else-branch: 68 | !(i@96@01 > 0) | dead]
(set-option :timeout 0)
(push) ; 5
; [then-branch: 68 | i@96@01 > 0]
(assert (> i@96@01 0))
; [exec]
; Ref__recv_body_142(diz, current_thread_id, ar, i)
; [eval] diz != null
; [eval] current_thread_id >= 0
; [eval] 0 <= i
; [eval] i < |ar|
; [eval] |ar|
(push) ; 6
(assert (not (< i@96@01 (Seq_length ar@94@01))))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(assert (< i@96@01 (Seq_length ar@94@01)))
; [eval] ar[i]
(push) ; 6
(assert (not (>= i@96@01 0)))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(declare-const $t@143@01 Int)
(assert (=
  ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@98@01)))))))
  $t@143@01))
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
; [exec]
; __flatten_5 := ar[i]
; [eval] ar[i]
(set-option :timeout 0)
(push) ; 6
(assert (not (>= i@96@01 0)))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(declare-const __flatten_5@144@01 $Ref)
(assert (= __flatten_5@144@01 (Seq_index ar@94@01 i@96@01)))
; [exec]
; __flatten_7 := br[i]
; [eval] br[i]
(push) ; 6
(assert (not (>= i@96@01 0)))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(push) ; 6
(assert (not (< i@96@01 (Seq_length br@95@01))))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(declare-const __flatten_7@145@01 $Ref)
(assert (= __flatten_7@145@01 (Seq_index br@95@01 i@96@01)))
; [exec]
; __flatten_6 := __flatten_7.Ref__Integer_value + 1
; [eval] __flatten_7.Ref__Integer_value + 1
(push) ; 6
(set-option :timeout 10)
(assert (not (= (Seq_index ar@94@01 i@96@01) __flatten_7@145@01)))
(check-sat)
; unknown
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 6
(set-option :timeout 10)
(assert (not (= (Seq_index cr@97@01 i@96@01) __flatten_7@145@01)))
(check-sat)
; unknown
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 6
(set-option :timeout 10)
(assert (not (= (Seq_index br@95@01 i@96@01) __flatten_7@145@01)))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(declare-const __flatten_6@146@01 Int)
(assert (=
  __flatten_6@146@01
  (+
    ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@98@01)))))))))))
    1)))
; [exec]
; __flatten_5.Ref__Integer_value := __flatten_6
(set-option :timeout 0)
(push) ; 6
(set-option :timeout 10)
(assert (not (= (Seq_index ar@94@01 i@96@01) __flatten_5@144@01)))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 6
(set-option :timeout 10)
(assert (not (= (Seq_index cr@97@01 i@96@01) __flatten_5@144@01)))
(check-sat)
; unknown
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 6
(set-option :timeout 10)
(assert (not (= (Seq_index br@95@01 i@96@01) __flatten_5@144@01)))
(check-sat)
; unknown
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(assert (not (= __flatten_5@144@01 $Ref.null)))
; [eval] i < len - 1
; [eval] len - 1
(set-option :timeout 0)
(push) ; 6
(set-option :timeout 10)
(assert (not (not (< i@96@01 (- len@93@01 1)))))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
; [then-branch: 69 | i@96@01 < len@93@01 - 1 | dead]
; [else-branch: 69 | !(i@96@01 < len@93@01 - 1) | live]
(set-option :timeout 0)
(push) ; 6
; [else-branch: 69 | !(i@96@01 < len@93@01 - 1)]
(assert (not (< i@96@01 (- len@93@01 1))))
(pop) ; 6
; [eval] !(i < len - 1)
; [eval] i < len - 1
; [eval] len - 1
(push) ; 6
(set-option :timeout 10)
(assert (not (< i@96@01 (- len@93@01 1))))
(check-sat)
; unknown
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 6
(set-option :timeout 10)
(assert (not (not (< i@96@01 (- len@93@01 1)))))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
; [then-branch: 70 | !(i@96@01 < len@93@01 - 1) | live]
; [else-branch: 70 | i@96@01 < len@93@01 - 1 | dead]
(set-option :timeout 0)
(push) ; 6
; [then-branch: 70 | !(i@96@01 < len@93@01 - 1)]
(assert (not (< i@96@01 (- len@93@01 1))))
; [eval] 0 <= i
; [eval] i < len
; [eval] |ar| == len
; [eval] |ar|
; [eval] ar[i]
(push) ; 7
(assert (not (>= i@96@01 0)))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
; [eval] |br| == len
; [eval] |br|
; [eval] br[i]
(push) ; 7
(assert (not (>= i@96@01 0)))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(push) ; 7
(assert (not (< i@96@01 (Seq_length br@95@01))))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
; [eval] |cr| == len
; [eval] |cr|
; [eval] cr[i]
(push) ; 7
(assert (not (>= i@96@01 0)))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(push) ; 7
(assert (not (< i@96@01 (Seq_length cr@97@01))))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(pop) ; 6
(pop) ; 5
; [eval] !(i > 0)
; [eval] i > 0
(push) ; 5
(set-option :timeout 10)
(assert (not (> i@96@01 0)))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
; [then-branch: 71 | !(i@96@01 > 0) | dead]
; [else-branch: 71 | i@96@01 > 0 | live]
(set-option :timeout 0)
(push) ; 5
; [else-branch: 71 | i@96@01 > 0]
(assert (> i@96@01 0))
(pop) ; 5
(pop) ; 4
(pop) ; 3
(pop) ; 2
(pop) ; 1
; ---------- Ref__guard_check_S2_S1 ----------
(declare-const diz@147@01 $Ref)
(declare-const current_thread_id@148@01 Int)
(declare-const len@149@01 Int)
(declare-const ar@150@01 Seq<$Ref>)
(declare-const br@151@01 Seq<$Ref>)
(declare-const i@152@01 Int)
(declare-const cr@153@01 Seq<$Ref>)
(declare-const diz@154@01 $Ref)
(declare-const current_thread_id@155@01 Int)
(declare-const len@156@01 Int)
(declare-const ar@157@01 Seq<$Ref>)
(declare-const br@158@01 Seq<$Ref>)
(declare-const i@159@01 Int)
(declare-const cr@160@01 Seq<$Ref>)
(push) ; 1
(declare-const $t@161@01 $Snap)
(assert (= $t@161@01 ($Snap.combine ($Snap.first $t@161@01) ($Snap.second $t@161@01))))
(assert (= ($Snap.first $t@161@01) $Snap.unit))
; [eval] diz != null
(assert (not (= diz@154@01 $Ref.null)))
(assert (=
  ($Snap.second $t@161@01)
  ($Snap.combine
    ($Snap.first ($Snap.second $t@161@01))
    ($Snap.second ($Snap.second $t@161@01)))))
(assert (= ($Snap.first ($Snap.second $t@161@01)) $Snap.unit))
; [eval] current_thread_id >= 0
(assert (>= current_thread_id@155@01 0))
(assert (=
  ($Snap.second ($Snap.second $t@161@01))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second $t@161@01)))
    ($Snap.second ($Snap.second ($Snap.second $t@161@01))))))
(assert (= ($Snap.first ($Snap.second ($Snap.second $t@161@01))) $Snap.unit))
; [eval] 0 <= i
(assert (<= 0 i@159@01))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second $t@161@01)))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@161@01))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@161@01)))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@161@01))))
  $Snap.unit))
; [eval] i < len
(assert (< i@159@01 len@156@01))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@161@01))))
  $Snap.unit))
; [eval] i > 0
(assert (> i@159@01 0))
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
(set-option :timeout 0)
(push) ; 2
(declare-const $t@162@01 $Snap)
(assert (= $t@162@01 ($Snap.combine ($Snap.first $t@162@01) ($Snap.second $t@162@01))))
(assert (= ($Snap.first $t@162@01) $Snap.unit))
; [eval] 1 <= i
(assert (<= 1 i@159@01))
(assert (= ($Snap.second $t@162@01) $Snap.unit))
; [eval] i - 1 < len - 1
; [eval] i - 1
; [eval] len - 1
(assert (< (- i@159@01 1) (- len@156@01 1)))
(pop) ; 2
(push) ; 2
; [eval] 1 <= i
(push) ; 3
(assert (not (<= 1 i@159@01)))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(assert (<= 1 i@159@01))
; [eval] i - 1 < len - 1
; [eval] i - 1
; [eval] len - 1
(push) ; 3
(assert (not (< (- i@159@01 1) (- len@156@01 1))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(assert (< (- i@159@01 1) (- len@156@01 1)))
(pop) ; 2
(pop) ; 1
; ---------- Ref__resource_check_S2_S1 ----------
(declare-const diz@163@01 $Ref)
(declare-const current_thread_id@164@01 Int)
(declare-const len@165@01 Int)
(declare-const ar@166@01 Seq<$Ref>)
(declare-const br@167@01 Seq<$Ref>)
(declare-const i@168@01 Int)
(declare-const cr@169@01 Seq<$Ref>)
(declare-const diz@170@01 $Ref)
(declare-const current_thread_id@171@01 Int)
(declare-const len@172@01 Int)
(declare-const ar@173@01 Seq<$Ref>)
(declare-const br@174@01 Seq<$Ref>)
(declare-const i@175@01 Int)
(declare-const cr@176@01 Seq<$Ref>)
(push) ; 1
(declare-const $t@177@01 $Snap)
(assert (= $t@177@01 ($Snap.combine ($Snap.first $t@177@01) ($Snap.second $t@177@01))))
(assert (= ($Snap.first $t@177@01) $Snap.unit))
; [eval] diz != null
(assert (not (= diz@170@01 $Ref.null)))
(assert (=
  ($Snap.second $t@177@01)
  ($Snap.combine
    ($Snap.first ($Snap.second $t@177@01))
    ($Snap.second ($Snap.second $t@177@01)))))
(assert (= ($Snap.first ($Snap.second $t@177@01)) $Snap.unit))
; [eval] current_thread_id >= 0
(assert (>= current_thread_id@171@01 0))
(assert (=
  ($Snap.second ($Snap.second $t@177@01))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second $t@177@01)))
    ($Snap.second ($Snap.second ($Snap.second $t@177@01))))))
(assert (= ($Snap.first ($Snap.second ($Snap.second $t@177@01))) $Snap.unit))
; [eval] 0 <= i
(assert (<= 0 i@175@01))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second $t@177@01)))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@177@01))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@177@01)))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@177@01))))
  $Snap.unit))
; [eval] i < len
(assert (< i@175@01 len@172@01))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@177@01))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@177@01)))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@177@01))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@177@01)))))
  $Snap.unit))
; [eval] i - 1 < len - 1
; [eval] i - 1
; [eval] len - 1
(assert (< (- i@175@01 1) (- len@172@01 1)))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@177@01)))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@177@01))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@177@01)))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@177@01))))))
  $Snap.unit))
; [eval] i > 0
(assert (> i@175@01 0))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@177@01))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@177@01)))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@177@01))))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@177@01)))))))
  $Snap.unit))
; [eval] len <= |ar|
; [eval] |ar|
(assert (<= len@172@01 (Seq_length ar@173@01)))
; [eval] ar[i - 1 + 1]
; [eval] i - 1 + 1
; [eval] i - 1
(push) ; 2
(assert (not (>= (+ (- i@175@01 1) 1) 0)))
(check-sat)
; unsat
(pop) ; 2
; 0.00s
; (get-info :all-statistics)
(push) ; 2
(assert (not (< (+ (- i@175@01 1) 1) (Seq_length ar@173@01))))
(check-sat)
; unsat
(pop) ; 2
; 0.00s
; (get-info :all-statistics)
(assert (not (= (Seq_index ar@173@01 (+ (- i@175@01 1) 1)) $Ref.null)))
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
(set-option :timeout 0)
(push) ; 2
(declare-const $t@178@01 $Snap)
(assert (= $t@178@01 ($Snap.combine ($Snap.first $t@178@01) ($Snap.second $t@178@01))))
(assert (= ($Snap.first $t@178@01) $Snap.unit))
; [eval] i - 1 < len - 1
; [eval] i - 1
; [eval] len - 1
; [eval] ar[i]
(push) ; 3
(assert (not (>= i@175@01 0)))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(push) ; 3
(assert (not (< i@175@01 (Seq_length ar@173@01))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(assert (not (= (Seq_index ar@173@01 i@175@01) $Ref.null)))
(pop) ; 2
(push) ; 2
; [eval] i - 1 < len - 1
; [eval] i - 1
; [eval] len - 1
; [eval] ar[i]
(push) ; 3
(assert (not (>= i@175@01 0)))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(push) ; 3
(assert (not (< i@175@01 (Seq_length ar@173@01))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(push) ; 3
(set-option :timeout 10)
(assert (not (= (Seq_index ar@173@01 (+ (- i@175@01 1) 1)) (Seq_index ar@173@01 i@175@01))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(pop) ; 2
(pop) ; 1
; ---------- Ref__zero_array ----------
(declare-const diz@179@01 $Ref)
(declare-const current_thread_id@180@01 Int)
(declare-const ar@181@01 Seq<$Ref>)
(declare-const br@182@01 Seq<$Ref>)
(declare-const cr@183@01 Seq<$Ref>)
(declare-const len@184@01 Int)
(declare-const diz@185@01 $Ref)
(declare-const current_thread_id@186@01 Int)
(declare-const ar@187@01 Seq<$Ref>)
(declare-const br@188@01 Seq<$Ref>)
(declare-const cr@189@01 Seq<$Ref>)
(declare-const len@190@01 Int)
(set-option :timeout 0)
(push) ; 1
(declare-const $t@191@01 $Snap)
(assert (= $t@191@01 ($Snap.combine ($Snap.first $t@191@01) ($Snap.second $t@191@01))))
(assert (= ($Snap.first $t@191@01) $Snap.unit))
; [eval] diz != null
(assert (not (= diz@185@01 $Ref.null)))
(assert (=
  ($Snap.second $t@191@01)
  ($Snap.combine
    ($Snap.first ($Snap.second $t@191@01))
    ($Snap.second ($Snap.second $t@191@01)))))
(assert (= ($Snap.first ($Snap.second $t@191@01)) $Snap.unit))
; [eval] current_thread_id >= 0
(assert (>= current_thread_id@186@01 0))
(assert (=
  ($Snap.second ($Snap.second $t@191@01))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second $t@191@01)))
    ($Snap.second ($Snap.second ($Snap.second $t@191@01))))))
(assert (= ($Snap.first ($Snap.second ($Snap.second $t@191@01))) $Snap.unit))
; [eval] |ar| == len
; [eval] |ar|
(assert (= (Seq_length ar@187@01) len@190@01))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second $t@191@01)))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@191@01))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@191@01)))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@191@01))))
  $Snap.unit))
; [eval] (forall j: Int, k: Int :: { ar[j], ar[k] } 0 <= j && (j < |ar| && (0 <= k && (k < |ar| && j != k))) ==> ar[j] != ar[k])
(declare-const j@192@01 Int)
(declare-const k@193@01 Int)
(push) ; 2
; [eval] 0 <= j && (j < |ar| && (0 <= k && (k < |ar| && j != k))) ==> ar[j] != ar[k]
; [eval] 0 <= j && (j < |ar| && (0 <= k && (k < |ar| && j != k)))
; [eval] 0 <= j
(push) ; 3
; [then-branch: 72 | !(0 <= j@192@01) | live]
; [else-branch: 72 | 0 <= j@192@01 | live]
(push) ; 4
; [then-branch: 72 | !(0 <= j@192@01)]
(assert (not (<= 0 j@192@01)))
(pop) ; 4
(push) ; 4
; [else-branch: 72 | 0 <= j@192@01]
(assert (<= 0 j@192@01))
; [eval] j < |ar|
; [eval] |ar|
(push) ; 5
; [then-branch: 73 | !(j@192@01 < |ar@187@01|) | live]
; [else-branch: 73 | j@192@01 < |ar@187@01| | live]
(push) ; 6
; [then-branch: 73 | !(j@192@01 < |ar@187@01|)]
(assert (not (< j@192@01 (Seq_length ar@187@01))))
(pop) ; 6
(push) ; 6
; [else-branch: 73 | j@192@01 < |ar@187@01|]
(assert (< j@192@01 (Seq_length ar@187@01)))
; [eval] 0 <= k
(push) ; 7
; [then-branch: 74 | !(0 <= k@193@01) | live]
; [else-branch: 74 | 0 <= k@193@01 | live]
(push) ; 8
; [then-branch: 74 | !(0 <= k@193@01)]
(assert (not (<= 0 k@193@01)))
(pop) ; 8
(push) ; 8
; [else-branch: 74 | 0 <= k@193@01]
(assert (<= 0 k@193@01))
; [eval] k < |ar|
; [eval] |ar|
(push) ; 9
; [then-branch: 75 | !(k@193@01 < |ar@187@01|) | live]
; [else-branch: 75 | k@193@01 < |ar@187@01| | live]
(push) ; 10
; [then-branch: 75 | !(k@193@01 < |ar@187@01|)]
(assert (not (< k@193@01 (Seq_length ar@187@01))))
(pop) ; 10
(push) ; 10
; [else-branch: 75 | k@193@01 < |ar@187@01|]
(assert (< k@193@01 (Seq_length ar@187@01)))
; [eval] j != k
(pop) ; 10
(pop) ; 9
; Joined path conditions
; Joined path conditions
(assert (or
  (< k@193@01 (Seq_length ar@187@01))
  (not (< k@193@01 (Seq_length ar@187@01)))))
(pop) ; 8
(pop) ; 7
; Joined path conditions
; Joined path conditions
(assert (=>
  (<= 0 k@193@01)
  (and
    (<= 0 k@193@01)
    (or
      (< k@193@01 (Seq_length ar@187@01))
      (not (< k@193@01 (Seq_length ar@187@01)))))))
(assert (or (<= 0 k@193@01) (not (<= 0 k@193@01))))
(pop) ; 6
(pop) ; 5
; Joined path conditions
; Joined path conditions
(assert (=>
  (< j@192@01 (Seq_length ar@187@01))
  (and
    (< j@192@01 (Seq_length ar@187@01))
    (=>
      (<= 0 k@193@01)
      (and
        (<= 0 k@193@01)
        (or
          (< k@193@01 (Seq_length ar@187@01))
          (not (< k@193@01 (Seq_length ar@187@01))))))
    (or (<= 0 k@193@01) (not (<= 0 k@193@01))))))
(assert (or
  (< j@192@01 (Seq_length ar@187@01))
  (not (< j@192@01 (Seq_length ar@187@01)))))
(pop) ; 4
(pop) ; 3
; Joined path conditions
; Joined path conditions
(assert (=>
  (<= 0 j@192@01)
  (and
    (<= 0 j@192@01)
    (=>
      (< j@192@01 (Seq_length ar@187@01))
      (and
        (< j@192@01 (Seq_length ar@187@01))
        (=>
          (<= 0 k@193@01)
          (and
            (<= 0 k@193@01)
            (or
              (< k@193@01 (Seq_length ar@187@01))
              (not (< k@193@01 (Seq_length ar@187@01))))))
        (or (<= 0 k@193@01) (not (<= 0 k@193@01)))))
    (or
      (< j@192@01 (Seq_length ar@187@01))
      (not (< j@192@01 (Seq_length ar@187@01)))))))
(assert (or (<= 0 j@192@01) (not (<= 0 j@192@01))))
(push) ; 3
; [then-branch: 76 | 0 <= j@192@01 && j@192@01 < |ar@187@01| && 0 <= k@193@01 && k@193@01 < |ar@187@01| && j@192@01 != k@193@01 | live]
; [else-branch: 76 | !(0 <= j@192@01 && j@192@01 < |ar@187@01| && 0 <= k@193@01 && k@193@01 < |ar@187@01| && j@192@01 != k@193@01) | live]
(push) ; 4
; [then-branch: 76 | 0 <= j@192@01 && j@192@01 < |ar@187@01| && 0 <= k@193@01 && k@193@01 < |ar@187@01| && j@192@01 != k@193@01]
(assert (and
  (<= 0 j@192@01)
  (and
    (< j@192@01 (Seq_length ar@187@01))
    (and
      (<= 0 k@193@01)
      (and (< k@193@01 (Seq_length ar@187@01)) (not (= j@192@01 k@193@01)))))))
; [eval] ar[j] != ar[k]
; [eval] ar[j]
(push) ; 5
(assert (not (>= j@192@01 0)))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
; [eval] ar[k]
(push) ; 5
(assert (not (>= k@193@01 0)))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(pop) ; 4
(push) ; 4
; [else-branch: 76 | !(0 <= j@192@01 && j@192@01 < |ar@187@01| && 0 <= k@193@01 && k@193@01 < |ar@187@01| && j@192@01 != k@193@01)]
(assert (not
  (and
    (<= 0 j@192@01)
    (and
      (< j@192@01 (Seq_length ar@187@01))
      (and
        (<= 0 k@193@01)
        (and (< k@193@01 (Seq_length ar@187@01)) (not (= j@192@01 k@193@01))))))))
(pop) ; 4
(pop) ; 3
; Joined path conditions
(assert (=>
  (and
    (<= 0 j@192@01)
    (and
      (< j@192@01 (Seq_length ar@187@01))
      (and
        (<= 0 k@193@01)
        (and (< k@193@01 (Seq_length ar@187@01)) (not (= j@192@01 k@193@01))))))
  (and
    (<= 0 j@192@01)
    (< j@192@01 (Seq_length ar@187@01))
    (<= 0 k@193@01)
    (< k@193@01 (Seq_length ar@187@01))
    (not (= j@192@01 k@193@01)))))
; Joined path conditions
(assert (or
  (not
    (and
      (<= 0 j@192@01)
      (and
        (< j@192@01 (Seq_length ar@187@01))
        (and
          (<= 0 k@193@01)
          (and (< k@193@01 (Seq_length ar@187@01)) (not (= j@192@01 k@193@01)))))))
  (and
    (<= 0 j@192@01)
    (and
      (< j@192@01 (Seq_length ar@187@01))
      (and
        (<= 0 k@193@01)
        (and (< k@193@01 (Seq_length ar@187@01)) (not (= j@192@01 k@193@01))))))))
(pop) ; 2
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall ((j@192@01 Int) (k@193@01 Int)) (!
  (and
    (=>
      (<= 0 j@192@01)
      (and
        (<= 0 j@192@01)
        (=>
          (< j@192@01 (Seq_length ar@187@01))
          (and
            (< j@192@01 (Seq_length ar@187@01))
            (=>
              (<= 0 k@193@01)
              (and
                (<= 0 k@193@01)
                (or
                  (< k@193@01 (Seq_length ar@187@01))
                  (not (< k@193@01 (Seq_length ar@187@01))))))
            (or (<= 0 k@193@01) (not (<= 0 k@193@01)))))
        (or
          (< j@192@01 (Seq_length ar@187@01))
          (not (< j@192@01 (Seq_length ar@187@01))))))
    (or (<= 0 j@192@01) (not (<= 0 j@192@01)))
    (=>
      (and
        (<= 0 j@192@01)
        (and
          (< j@192@01 (Seq_length ar@187@01))
          (and
            (<= 0 k@193@01)
            (and (< k@193@01 (Seq_length ar@187@01)) (not (= j@192@01 k@193@01))))))
      (and
        (<= 0 j@192@01)
        (< j@192@01 (Seq_length ar@187@01))
        (<= 0 k@193@01)
        (< k@193@01 (Seq_length ar@187@01))
        (not (= j@192@01 k@193@01))))
    (or
      (not
        (and
          (<= 0 j@192@01)
          (and
            (< j@192@01 (Seq_length ar@187@01))
            (and
              (<= 0 k@193@01)
              (and
                (< k@193@01 (Seq_length ar@187@01))
                (not (= j@192@01 k@193@01)))))))
      (and
        (<= 0 j@192@01)
        (and
          (< j@192@01 (Seq_length ar@187@01))
          (and
            (<= 0 k@193@01)
            (and (< k@193@01 (Seq_length ar@187@01)) (not (= j@192@01 k@193@01))))))))
  :pattern ((Seq_index ar@187@01 j@192@01) (Seq_index ar@187@01 k@193@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/third_party/testDepParLoopBack.vpr@169@12@169@106-aux|)))
(assert (forall ((j@192@01 Int) (k@193@01 Int)) (!
  (=>
    (and
      (<= 0 j@192@01)
      (and
        (< j@192@01 (Seq_length ar@187@01))
        (and
          (<= 0 k@193@01)
          (and (< k@193@01 (Seq_length ar@187@01)) (not (= j@192@01 k@193@01))))))
    (not (= (Seq_index ar@187@01 j@192@01) (Seq_index ar@187@01 k@193@01))))
  :pattern ((Seq_index ar@187@01 j@192@01) (Seq_index ar@187@01 k@193@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/third_party/testDepParLoopBack.vpr@169@12@169@106|)))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@191@01))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@191@01)))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@191@01))))))))
(declare-const i@194@01 Int)
(push) ; 2
; [eval] 0 <= i && i < len
; [eval] 0 <= i
(push) ; 3
; [then-branch: 77 | !(0 <= i@194@01) | live]
; [else-branch: 77 | 0 <= i@194@01 | live]
(push) ; 4
; [then-branch: 77 | !(0 <= i@194@01)]
(assert (not (<= 0 i@194@01)))
(pop) ; 4
(push) ; 4
; [else-branch: 77 | 0 <= i@194@01]
(assert (<= 0 i@194@01))
; [eval] i < len
(pop) ; 4
(pop) ; 3
; Joined path conditions
; Joined path conditions
(assert (or (<= 0 i@194@01) (not (<= 0 i@194@01))))
(assert (and (<= 0 i@194@01) (< i@194@01 len@190@01)))
; [eval] ar[i]
(push) ; 3
(assert (not (>= i@194@01 0)))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(push) ; 3
(assert (not (< i@194@01 (Seq_length ar@187@01))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(pop) ; 2
(declare-fun inv@195@01 ($Ref) Int)
(declare-fun img@196@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
(assert (forall ((i@194@01 Int)) (!
  (=>
    (and (<= 0 i@194@01) (< i@194@01 len@190@01))
    (or (<= 0 i@194@01) (not (<= 0 i@194@01))))
  :pattern ((Seq_index ar@187@01 i@194@01))
  :qid |Ref__Integer_value-aux|)))
; Check receiver injectivity
(push) ; 2
(assert (not (forall ((i1@194@01 Int) (i2@194@01 Int)) (!
  (=>
    (and
      (and (<= 0 i1@194@01) (< i1@194@01 len@190@01))
      (and (<= 0 i2@194@01) (< i2@194@01 len@190@01))
      (= (Seq_index ar@187@01 i1@194@01) (Seq_index ar@187@01 i2@194@01)))
    (= i1@194@01 i2@194@01))
  
  :qid |Ref__Integer_value-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 2
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((i@194@01 Int)) (!
  (=>
    (and (<= 0 i@194@01) (< i@194@01 len@190@01))
    (and
      (= (inv@195@01 (Seq_index ar@187@01 i@194@01)) i@194@01)
      (img@196@01 (Seq_index ar@187@01 i@194@01))))
  :pattern ((Seq_index ar@187@01 i@194@01))
  :qid |quant-u-9434|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@196@01 r)
      (and (<= 0 (inv@195@01 r)) (< (inv@195@01 r) len@190@01)))
    (= (Seq_index ar@187@01 (inv@195@01 r)) r))
  :pattern ((inv@195@01 r))
  :qid |Ref__Integer_value-fctOfInv|)))
; Permissions are non-negative
; Field permissions are at most one
; Permission implies non-null receiver
(assert (forall ((i@194@01 Int)) (!
  (=>
    (and (<= 0 i@194@01) (< i@194@01 len@190@01))
    (not (= (Seq_index ar@187@01 i@194@01) $Ref.null)))
  :pattern ((Seq_index ar@187@01 i@194@01))
  :qid |Ref__Integer_value-permImpliesNonNull|)))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@191@01)))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@191@01))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@191@01)))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@191@01))))))
  $Snap.unit))
; [eval] |br| == len
; [eval] |br|
(assert (= (Seq_length br@188@01) len@190@01))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@191@01))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@191@01)))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@191@01))))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@191@01)))))))
  $Snap.unit))
; [eval] (forall j: Int, k: Int :: { br[j], br[k] } 0 <= j && (j < |br| && (0 <= k && (k < |br| && j != k))) ==> br[j] != br[k])
(declare-const j@197@01 Int)
(declare-const k@198@01 Int)
(push) ; 2
; [eval] 0 <= j && (j < |br| && (0 <= k && (k < |br| && j != k))) ==> br[j] != br[k]
; [eval] 0 <= j && (j < |br| && (0 <= k && (k < |br| && j != k)))
; [eval] 0 <= j
(push) ; 3
; [then-branch: 78 | !(0 <= j@197@01) | live]
; [else-branch: 78 | 0 <= j@197@01 | live]
(push) ; 4
; [then-branch: 78 | !(0 <= j@197@01)]
(assert (not (<= 0 j@197@01)))
(pop) ; 4
(push) ; 4
; [else-branch: 78 | 0 <= j@197@01]
(assert (<= 0 j@197@01))
; [eval] j < |br|
; [eval] |br|
(push) ; 5
; [then-branch: 79 | !(j@197@01 < |br@188@01|) | live]
; [else-branch: 79 | j@197@01 < |br@188@01| | live]
(push) ; 6
; [then-branch: 79 | !(j@197@01 < |br@188@01|)]
(assert (not (< j@197@01 (Seq_length br@188@01))))
(pop) ; 6
(push) ; 6
; [else-branch: 79 | j@197@01 < |br@188@01|]
(assert (< j@197@01 (Seq_length br@188@01)))
; [eval] 0 <= k
(push) ; 7
; [then-branch: 80 | !(0 <= k@198@01) | live]
; [else-branch: 80 | 0 <= k@198@01 | live]
(push) ; 8
; [then-branch: 80 | !(0 <= k@198@01)]
(assert (not (<= 0 k@198@01)))
(pop) ; 8
(push) ; 8
; [else-branch: 80 | 0 <= k@198@01]
(assert (<= 0 k@198@01))
; [eval] k < |br|
; [eval] |br|
(push) ; 9
; [then-branch: 81 | !(k@198@01 < |br@188@01|) | live]
; [else-branch: 81 | k@198@01 < |br@188@01| | live]
(push) ; 10
; [then-branch: 81 | !(k@198@01 < |br@188@01|)]
(assert (not (< k@198@01 (Seq_length br@188@01))))
(pop) ; 10
(push) ; 10
; [else-branch: 81 | k@198@01 < |br@188@01|]
(assert (< k@198@01 (Seq_length br@188@01)))
; [eval] j != k
(pop) ; 10
(pop) ; 9
; Joined path conditions
; Joined path conditions
(assert (or
  (< k@198@01 (Seq_length br@188@01))
  (not (< k@198@01 (Seq_length br@188@01)))))
(pop) ; 8
(pop) ; 7
; Joined path conditions
; Joined path conditions
(assert (=>
  (<= 0 k@198@01)
  (and
    (<= 0 k@198@01)
    (or
      (< k@198@01 (Seq_length br@188@01))
      (not (< k@198@01 (Seq_length br@188@01)))))))
(assert (or (<= 0 k@198@01) (not (<= 0 k@198@01))))
(pop) ; 6
(pop) ; 5
; Joined path conditions
; Joined path conditions
(assert (=>
  (< j@197@01 (Seq_length br@188@01))
  (and
    (< j@197@01 (Seq_length br@188@01))
    (=>
      (<= 0 k@198@01)
      (and
        (<= 0 k@198@01)
        (or
          (< k@198@01 (Seq_length br@188@01))
          (not (< k@198@01 (Seq_length br@188@01))))))
    (or (<= 0 k@198@01) (not (<= 0 k@198@01))))))
(assert (or
  (< j@197@01 (Seq_length br@188@01))
  (not (< j@197@01 (Seq_length br@188@01)))))
(pop) ; 4
(pop) ; 3
; Joined path conditions
; Joined path conditions
(assert (=>
  (<= 0 j@197@01)
  (and
    (<= 0 j@197@01)
    (=>
      (< j@197@01 (Seq_length br@188@01))
      (and
        (< j@197@01 (Seq_length br@188@01))
        (=>
          (<= 0 k@198@01)
          (and
            (<= 0 k@198@01)
            (or
              (< k@198@01 (Seq_length br@188@01))
              (not (< k@198@01 (Seq_length br@188@01))))))
        (or (<= 0 k@198@01) (not (<= 0 k@198@01)))))
    (or
      (< j@197@01 (Seq_length br@188@01))
      (not (< j@197@01 (Seq_length br@188@01)))))))
(assert (or (<= 0 j@197@01) (not (<= 0 j@197@01))))
(push) ; 3
; [then-branch: 82 | 0 <= j@197@01 && j@197@01 < |br@188@01| && 0 <= k@198@01 && k@198@01 < |br@188@01| && j@197@01 != k@198@01 | live]
; [else-branch: 82 | !(0 <= j@197@01 && j@197@01 < |br@188@01| && 0 <= k@198@01 && k@198@01 < |br@188@01| && j@197@01 != k@198@01) | live]
(push) ; 4
; [then-branch: 82 | 0 <= j@197@01 && j@197@01 < |br@188@01| && 0 <= k@198@01 && k@198@01 < |br@188@01| && j@197@01 != k@198@01]
(assert (and
  (<= 0 j@197@01)
  (and
    (< j@197@01 (Seq_length br@188@01))
    (and
      (<= 0 k@198@01)
      (and (< k@198@01 (Seq_length br@188@01)) (not (= j@197@01 k@198@01)))))))
; [eval] br[j] != br[k]
; [eval] br[j]
(push) ; 5
(assert (not (>= j@197@01 0)))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
; [eval] br[k]
(push) ; 5
(assert (not (>= k@198@01 0)))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(pop) ; 4
(push) ; 4
; [else-branch: 82 | !(0 <= j@197@01 && j@197@01 < |br@188@01| && 0 <= k@198@01 && k@198@01 < |br@188@01| && j@197@01 != k@198@01)]
(assert (not
  (and
    (<= 0 j@197@01)
    (and
      (< j@197@01 (Seq_length br@188@01))
      (and
        (<= 0 k@198@01)
        (and (< k@198@01 (Seq_length br@188@01)) (not (= j@197@01 k@198@01))))))))
(pop) ; 4
(pop) ; 3
; Joined path conditions
(assert (=>
  (and
    (<= 0 j@197@01)
    (and
      (< j@197@01 (Seq_length br@188@01))
      (and
        (<= 0 k@198@01)
        (and (< k@198@01 (Seq_length br@188@01)) (not (= j@197@01 k@198@01))))))
  (and
    (<= 0 j@197@01)
    (< j@197@01 (Seq_length br@188@01))
    (<= 0 k@198@01)
    (< k@198@01 (Seq_length br@188@01))
    (not (= j@197@01 k@198@01)))))
; Joined path conditions
(assert (or
  (not
    (and
      (<= 0 j@197@01)
      (and
        (< j@197@01 (Seq_length br@188@01))
        (and
          (<= 0 k@198@01)
          (and (< k@198@01 (Seq_length br@188@01)) (not (= j@197@01 k@198@01)))))))
  (and
    (<= 0 j@197@01)
    (and
      (< j@197@01 (Seq_length br@188@01))
      (and
        (<= 0 k@198@01)
        (and (< k@198@01 (Seq_length br@188@01)) (not (= j@197@01 k@198@01))))))))
(pop) ; 2
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall ((j@197@01 Int) (k@198@01 Int)) (!
  (and
    (=>
      (<= 0 j@197@01)
      (and
        (<= 0 j@197@01)
        (=>
          (< j@197@01 (Seq_length br@188@01))
          (and
            (< j@197@01 (Seq_length br@188@01))
            (=>
              (<= 0 k@198@01)
              (and
                (<= 0 k@198@01)
                (or
                  (< k@198@01 (Seq_length br@188@01))
                  (not (< k@198@01 (Seq_length br@188@01))))))
            (or (<= 0 k@198@01) (not (<= 0 k@198@01)))))
        (or
          (< j@197@01 (Seq_length br@188@01))
          (not (< j@197@01 (Seq_length br@188@01))))))
    (or (<= 0 j@197@01) (not (<= 0 j@197@01)))
    (=>
      (and
        (<= 0 j@197@01)
        (and
          (< j@197@01 (Seq_length br@188@01))
          (and
            (<= 0 k@198@01)
            (and (< k@198@01 (Seq_length br@188@01)) (not (= j@197@01 k@198@01))))))
      (and
        (<= 0 j@197@01)
        (< j@197@01 (Seq_length br@188@01))
        (<= 0 k@198@01)
        (< k@198@01 (Seq_length br@188@01))
        (not (= j@197@01 k@198@01))))
    (or
      (not
        (and
          (<= 0 j@197@01)
          (and
            (< j@197@01 (Seq_length br@188@01))
            (and
              (<= 0 k@198@01)
              (and
                (< k@198@01 (Seq_length br@188@01))
                (not (= j@197@01 k@198@01)))))))
      (and
        (<= 0 j@197@01)
        (and
          (< j@197@01 (Seq_length br@188@01))
          (and
            (<= 0 k@198@01)
            (and (< k@198@01 (Seq_length br@188@01)) (not (= j@197@01 k@198@01))))))))
  :pattern ((Seq_index br@188@01 j@197@01) (Seq_index br@188@01 k@198@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/third_party/testDepParLoopBack.vpr@172@12@172@106-aux|)))
(assert (forall ((j@197@01 Int) (k@198@01 Int)) (!
  (=>
    (and
      (<= 0 j@197@01)
      (and
        (< j@197@01 (Seq_length br@188@01))
        (and
          (<= 0 k@198@01)
          (and (< k@198@01 (Seq_length br@188@01)) (not (= j@197@01 k@198@01))))))
    (not (= (Seq_index br@188@01 j@197@01) (Seq_index br@188@01 k@198@01))))
  :pattern ((Seq_index br@188@01 j@197@01) (Seq_index br@188@01 k@198@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/third_party/testDepParLoopBack.vpr@172@12@172@106|)))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@191@01)))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@191@01))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@191@01)))))))))))
(declare-const i@199@01 Int)
(push) ; 2
; [eval] 0 <= i && i < len
; [eval] 0 <= i
(push) ; 3
; [then-branch: 83 | !(0 <= i@199@01) | live]
; [else-branch: 83 | 0 <= i@199@01 | live]
(push) ; 4
; [then-branch: 83 | !(0 <= i@199@01)]
(assert (not (<= 0 i@199@01)))
(pop) ; 4
(push) ; 4
; [else-branch: 83 | 0 <= i@199@01]
(assert (<= 0 i@199@01))
; [eval] i < len
(pop) ; 4
(pop) ; 3
; Joined path conditions
; Joined path conditions
(assert (or (<= 0 i@199@01) (not (<= 0 i@199@01))))
(assert (and (<= 0 i@199@01) (< i@199@01 len@190@01)))
; [eval] br[i]
(push) ; 3
(assert (not (>= i@199@01 0)))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(push) ; 3
(assert (not (< i@199@01 (Seq_length br@188@01))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(pop) ; 2
(declare-fun inv@200@01 ($Ref) Int)
(declare-fun img@201@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
(assert (forall ((i@199@01 Int)) (!
  (=>
    (and (<= 0 i@199@01) (< i@199@01 len@190@01))
    (or (<= 0 i@199@01) (not (<= 0 i@199@01))))
  :pattern ((Seq_index br@188@01 i@199@01))
  :qid |Ref__Integer_value-aux|)))
; Check receiver injectivity
(push) ; 2
(assert (not (forall ((i1@199@01 Int) (i2@199@01 Int)) (!
  (=>
    (and
      (and (<= 0 i1@199@01) (< i1@199@01 len@190@01))
      (and (<= 0 i2@199@01) (< i2@199@01 len@190@01))
      (= (Seq_index br@188@01 i1@199@01) (Seq_index br@188@01 i2@199@01)))
    (= i1@199@01 i2@199@01))
  
  :qid |Ref__Integer_value-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 2
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((i@199@01 Int)) (!
  (=>
    (and (<= 0 i@199@01) (< i@199@01 len@190@01))
    (and
      (= (inv@200@01 (Seq_index br@188@01 i@199@01)) i@199@01)
      (img@201@01 (Seq_index br@188@01 i@199@01))))
  :pattern ((Seq_index br@188@01 i@199@01))
  :qid |quant-u-9436|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@201@01 r)
      (and (<= 0 (inv@200@01 r)) (< (inv@200@01 r) len@190@01)))
    (= (Seq_index br@188@01 (inv@200@01 r)) r))
  :pattern ((inv@200@01 r))
  :qid |Ref__Integer_value-fctOfInv|)))
; Permissions are non-negative
; Field permissions are at most one
; Permission implies non-null receiver
(assert (forall ((i@199@01 Int)) (!
  (=>
    (and (<= 0 i@199@01) (< i@199@01 len@190@01))
    (not (= (Seq_index br@188@01 i@199@01) $Ref.null)))
  :pattern ((Seq_index br@188@01 i@199@01))
  :qid |Ref__Integer_value-permImpliesNonNull|)))
(push) ; 2
(set-option :timeout 10)
(assert (not (forall ((r $Ref)) (!
  (and
    (= (Seq_index br@188@01 i@199@01) (Seq_index ar@187@01 i@194@01))
    (=
      (and
        (img@201@01 r)
        (and (<= 0 (inv@200@01 r)) (< (inv@200@01 r) len@190@01)))
      (and
        (img@196@01 r)
        (and (<= 0 (inv@195@01 r)) (< (inv@195@01 r) len@190@01)))))
  
  :qid |quant-u-9437|))))
(check-sat)
; unknown
(pop) ; 2
; 0.00s
; (get-info :all-statistics)
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@191@01))))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@191@01)))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@191@01))))))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@191@01)))))))))
  $Snap.unit))
; [eval] |cr| == len
; [eval] |cr|
(assert (= (Seq_length cr@189@01) len@190@01))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@191@01)))))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@191@01))))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@191@01)))))))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@191@01))))))))))
  $Snap.unit))
; [eval] (forall j: Int, k: Int :: { cr[j], cr[k] } 0 <= j && (j < |cr| && (0 <= k && (k < |cr| && j != k))) ==> cr[j] != cr[k])
(declare-const j@202@01 Int)
(declare-const k@203@01 Int)
(set-option :timeout 0)
(push) ; 2
; [eval] 0 <= j && (j < |cr| && (0 <= k && (k < |cr| && j != k))) ==> cr[j] != cr[k]
; [eval] 0 <= j && (j < |cr| && (0 <= k && (k < |cr| && j != k)))
; [eval] 0 <= j
(push) ; 3
; [then-branch: 84 | !(0 <= j@202@01) | live]
; [else-branch: 84 | 0 <= j@202@01 | live]
(push) ; 4
; [then-branch: 84 | !(0 <= j@202@01)]
(assert (not (<= 0 j@202@01)))
(pop) ; 4
(push) ; 4
; [else-branch: 84 | 0 <= j@202@01]
(assert (<= 0 j@202@01))
; [eval] j < |cr|
; [eval] |cr|
(push) ; 5
; [then-branch: 85 | !(j@202@01 < |cr@189@01|) | live]
; [else-branch: 85 | j@202@01 < |cr@189@01| | live]
(push) ; 6
; [then-branch: 85 | !(j@202@01 < |cr@189@01|)]
(assert (not (< j@202@01 (Seq_length cr@189@01))))
(pop) ; 6
(push) ; 6
; [else-branch: 85 | j@202@01 < |cr@189@01|]
(assert (< j@202@01 (Seq_length cr@189@01)))
; [eval] 0 <= k
(push) ; 7
; [then-branch: 86 | !(0 <= k@203@01) | live]
; [else-branch: 86 | 0 <= k@203@01 | live]
(push) ; 8
; [then-branch: 86 | !(0 <= k@203@01)]
(assert (not (<= 0 k@203@01)))
(pop) ; 8
(push) ; 8
; [else-branch: 86 | 0 <= k@203@01]
(assert (<= 0 k@203@01))
; [eval] k < |cr|
; [eval] |cr|
(push) ; 9
; [then-branch: 87 | !(k@203@01 < |cr@189@01|) | live]
; [else-branch: 87 | k@203@01 < |cr@189@01| | live]
(push) ; 10
; [then-branch: 87 | !(k@203@01 < |cr@189@01|)]
(assert (not (< k@203@01 (Seq_length cr@189@01))))
(pop) ; 10
(push) ; 10
; [else-branch: 87 | k@203@01 < |cr@189@01|]
(assert (< k@203@01 (Seq_length cr@189@01)))
; [eval] j != k
(pop) ; 10
(pop) ; 9
; Joined path conditions
; Joined path conditions
(assert (or
  (< k@203@01 (Seq_length cr@189@01))
  (not (< k@203@01 (Seq_length cr@189@01)))))
(pop) ; 8
(pop) ; 7
; Joined path conditions
; Joined path conditions
(assert (=>
  (<= 0 k@203@01)
  (and
    (<= 0 k@203@01)
    (or
      (< k@203@01 (Seq_length cr@189@01))
      (not (< k@203@01 (Seq_length cr@189@01)))))))
(assert (or (<= 0 k@203@01) (not (<= 0 k@203@01))))
(pop) ; 6
(pop) ; 5
; Joined path conditions
; Joined path conditions
(assert (=>
  (< j@202@01 (Seq_length cr@189@01))
  (and
    (< j@202@01 (Seq_length cr@189@01))
    (=>
      (<= 0 k@203@01)
      (and
        (<= 0 k@203@01)
        (or
          (< k@203@01 (Seq_length cr@189@01))
          (not (< k@203@01 (Seq_length cr@189@01))))))
    (or (<= 0 k@203@01) (not (<= 0 k@203@01))))))
(assert (or
  (< j@202@01 (Seq_length cr@189@01))
  (not (< j@202@01 (Seq_length cr@189@01)))))
(pop) ; 4
(pop) ; 3
; Joined path conditions
; Joined path conditions
(assert (=>
  (<= 0 j@202@01)
  (and
    (<= 0 j@202@01)
    (=>
      (< j@202@01 (Seq_length cr@189@01))
      (and
        (< j@202@01 (Seq_length cr@189@01))
        (=>
          (<= 0 k@203@01)
          (and
            (<= 0 k@203@01)
            (or
              (< k@203@01 (Seq_length cr@189@01))
              (not (< k@203@01 (Seq_length cr@189@01))))))
        (or (<= 0 k@203@01) (not (<= 0 k@203@01)))))
    (or
      (< j@202@01 (Seq_length cr@189@01))
      (not (< j@202@01 (Seq_length cr@189@01)))))))
(assert (or (<= 0 j@202@01) (not (<= 0 j@202@01))))
(push) ; 3
; [then-branch: 88 | 0 <= j@202@01 && j@202@01 < |cr@189@01| && 0 <= k@203@01 && k@203@01 < |cr@189@01| && j@202@01 != k@203@01 | live]
; [else-branch: 88 | !(0 <= j@202@01 && j@202@01 < |cr@189@01| && 0 <= k@203@01 && k@203@01 < |cr@189@01| && j@202@01 != k@203@01) | live]
(push) ; 4
; [then-branch: 88 | 0 <= j@202@01 && j@202@01 < |cr@189@01| && 0 <= k@203@01 && k@203@01 < |cr@189@01| && j@202@01 != k@203@01]
(assert (and
  (<= 0 j@202@01)
  (and
    (< j@202@01 (Seq_length cr@189@01))
    (and
      (<= 0 k@203@01)
      (and (< k@203@01 (Seq_length cr@189@01)) (not (= j@202@01 k@203@01)))))))
; [eval] cr[j] != cr[k]
; [eval] cr[j]
(push) ; 5
(assert (not (>= j@202@01 0)))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
; [eval] cr[k]
(push) ; 5
(assert (not (>= k@203@01 0)))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(pop) ; 4
(push) ; 4
; [else-branch: 88 | !(0 <= j@202@01 && j@202@01 < |cr@189@01| && 0 <= k@203@01 && k@203@01 < |cr@189@01| && j@202@01 != k@203@01)]
(assert (not
  (and
    (<= 0 j@202@01)
    (and
      (< j@202@01 (Seq_length cr@189@01))
      (and
        (<= 0 k@203@01)
        (and (< k@203@01 (Seq_length cr@189@01)) (not (= j@202@01 k@203@01))))))))
(pop) ; 4
(pop) ; 3
; Joined path conditions
(assert (=>
  (and
    (<= 0 j@202@01)
    (and
      (< j@202@01 (Seq_length cr@189@01))
      (and
        (<= 0 k@203@01)
        (and (< k@203@01 (Seq_length cr@189@01)) (not (= j@202@01 k@203@01))))))
  (and
    (<= 0 j@202@01)
    (< j@202@01 (Seq_length cr@189@01))
    (<= 0 k@203@01)
    (< k@203@01 (Seq_length cr@189@01))
    (not (= j@202@01 k@203@01)))))
; Joined path conditions
(assert (or
  (not
    (and
      (<= 0 j@202@01)
      (and
        (< j@202@01 (Seq_length cr@189@01))
        (and
          (<= 0 k@203@01)
          (and (< k@203@01 (Seq_length cr@189@01)) (not (= j@202@01 k@203@01)))))))
  (and
    (<= 0 j@202@01)
    (and
      (< j@202@01 (Seq_length cr@189@01))
      (and
        (<= 0 k@203@01)
        (and (< k@203@01 (Seq_length cr@189@01)) (not (= j@202@01 k@203@01))))))))
(pop) ; 2
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall ((j@202@01 Int) (k@203@01 Int)) (!
  (and
    (=>
      (<= 0 j@202@01)
      (and
        (<= 0 j@202@01)
        (=>
          (< j@202@01 (Seq_length cr@189@01))
          (and
            (< j@202@01 (Seq_length cr@189@01))
            (=>
              (<= 0 k@203@01)
              (and
                (<= 0 k@203@01)
                (or
                  (< k@203@01 (Seq_length cr@189@01))
                  (not (< k@203@01 (Seq_length cr@189@01))))))
            (or (<= 0 k@203@01) (not (<= 0 k@203@01)))))
        (or
          (< j@202@01 (Seq_length cr@189@01))
          (not (< j@202@01 (Seq_length cr@189@01))))))
    (or (<= 0 j@202@01) (not (<= 0 j@202@01)))
    (=>
      (and
        (<= 0 j@202@01)
        (and
          (< j@202@01 (Seq_length cr@189@01))
          (and
            (<= 0 k@203@01)
            (and (< k@203@01 (Seq_length cr@189@01)) (not (= j@202@01 k@203@01))))))
      (and
        (<= 0 j@202@01)
        (< j@202@01 (Seq_length cr@189@01))
        (<= 0 k@203@01)
        (< k@203@01 (Seq_length cr@189@01))
        (not (= j@202@01 k@203@01))))
    (or
      (not
        (and
          (<= 0 j@202@01)
          (and
            (< j@202@01 (Seq_length cr@189@01))
            (and
              (<= 0 k@203@01)
              (and
                (< k@203@01 (Seq_length cr@189@01))
                (not (= j@202@01 k@203@01)))))))
      (and
        (<= 0 j@202@01)
        (and
          (< j@202@01 (Seq_length cr@189@01))
          (and
            (<= 0 k@203@01)
            (and (< k@203@01 (Seq_length cr@189@01)) (not (= j@202@01 k@203@01))))))))
  :pattern ((Seq_index cr@189@01 j@202@01) (Seq_index cr@189@01 k@203@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/third_party/testDepParLoopBack.vpr@175@12@175@106-aux|)))
(assert (forall ((j@202@01 Int) (k@203@01 Int)) (!
  (=>
    (and
      (<= 0 j@202@01)
      (and
        (< j@202@01 (Seq_length cr@189@01))
        (and
          (<= 0 k@203@01)
          (and (< k@203@01 (Seq_length cr@189@01)) (not (= j@202@01 k@203@01))))))
    (not (= (Seq_index cr@189@01 j@202@01) (Seq_index cr@189@01 k@203@01))))
  :pattern ((Seq_index cr@189@01 j@202@01) (Seq_index cr@189@01 k@203@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/third_party/testDepParLoopBack.vpr@175@12@175@106|)))
(declare-const i@204@01 Int)
(push) ; 2
; [eval] 0 <= i && i < len
; [eval] 0 <= i
(push) ; 3
; [then-branch: 89 | !(0 <= i@204@01) | live]
; [else-branch: 89 | 0 <= i@204@01 | live]
(push) ; 4
; [then-branch: 89 | !(0 <= i@204@01)]
(assert (not (<= 0 i@204@01)))
(pop) ; 4
(push) ; 4
; [else-branch: 89 | 0 <= i@204@01]
(assert (<= 0 i@204@01))
; [eval] i < len
(pop) ; 4
(pop) ; 3
; Joined path conditions
; Joined path conditions
(assert (or (<= 0 i@204@01) (not (<= 0 i@204@01))))
(assert (and (<= 0 i@204@01) (< i@204@01 len@190@01)))
; [eval] cr[i]
(push) ; 3
(assert (not (>= i@204@01 0)))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(push) ; 3
(assert (not (< i@204@01 (Seq_length cr@189@01))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(pop) ; 2
(declare-fun inv@205@01 ($Ref) Int)
(declare-fun img@206@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
(assert (forall ((i@204@01 Int)) (!
  (=>
    (and (<= 0 i@204@01) (< i@204@01 len@190@01))
    (or (<= 0 i@204@01) (not (<= 0 i@204@01))))
  :pattern ((Seq_index cr@189@01 i@204@01))
  :qid |Ref__Integer_value-aux|)))
; Check receiver injectivity
(push) ; 2
(assert (not (forall ((i1@204@01 Int) (i2@204@01 Int)) (!
  (=>
    (and
      (and (<= 0 i1@204@01) (< i1@204@01 len@190@01))
      (and (<= 0 i2@204@01) (< i2@204@01 len@190@01))
      (= (Seq_index cr@189@01 i1@204@01) (Seq_index cr@189@01 i2@204@01)))
    (= i1@204@01 i2@204@01))
  
  :qid |Ref__Integer_value-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 2
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((i@204@01 Int)) (!
  (=>
    (and (<= 0 i@204@01) (< i@204@01 len@190@01))
    (and
      (= (inv@205@01 (Seq_index cr@189@01 i@204@01)) i@204@01)
      (img@206@01 (Seq_index cr@189@01 i@204@01))))
  :pattern ((Seq_index cr@189@01 i@204@01))
  :qid |quant-u-9439|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@206@01 r)
      (and (<= 0 (inv@205@01 r)) (< (inv@205@01 r) len@190@01)))
    (= (Seq_index cr@189@01 (inv@205@01 r)) r))
  :pattern ((inv@205@01 r))
  :qid |Ref__Integer_value-fctOfInv|)))
; Permissions are non-negative
; Field permissions are at most one
; Permission implies non-null receiver
(assert (forall ((i@204@01 Int)) (!
  (=>
    (and (<= 0 i@204@01) (< i@204@01 len@190@01))
    (not (= (Seq_index cr@189@01 i@204@01) $Ref.null)))
  :pattern ((Seq_index cr@189@01 i@204@01))
  :qid |Ref__Integer_value-permImpliesNonNull|)))
(push) ; 2
(set-option :timeout 10)
(assert (not (forall ((r $Ref)) (!
  (and
    (= (Seq_index cr@189@01 i@204@01) (Seq_index br@188@01 i@199@01))
    (=
      (and
        (img@206@01 r)
        (and (<= 0 (inv@205@01 r)) (< (inv@205@01 r) len@190@01)))
      (and
        (img@201@01 r)
        (and (<= 0 (inv@200@01 r)) (< (inv@200@01 r) len@190@01)))))
  
  :qid |quant-u-9440|))))
(check-sat)
; unknown
(pop) ; 2
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 2
(set-option :timeout 10)
(assert (not (forall ((r $Ref)) (!
  (and
    (= (Seq_index cr@189@01 i@204@01) (Seq_index ar@187@01 i@194@01))
    (=
      (and
        (img@206@01 r)
        (and (<= 0 (inv@205@01 r)) (< (inv@205@01 r) len@190@01)))
      (and
        (img@196@01 r)
        (and (<= 0 (inv@195@01 r)) (< (inv@195@01 r) len@190@01)))))
  
  :qid |quant-u-9441|))))
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
(declare-const $t@207@01 $Snap)
(assert (= $t@207@01 ($Snap.combine ($Snap.first $t@207@01) ($Snap.second $t@207@01))))
(assert (= ($Snap.first $t@207@01) $Snap.unit))
; [eval] |ar| == len
; [eval] |ar|
(assert (=
  ($Snap.second $t@207@01)
  ($Snap.combine
    ($Snap.first ($Snap.second $t@207@01))
    ($Snap.second ($Snap.second $t@207@01)))))
(declare-const i@208@01 Int)
(push) ; 3
; [eval] 0 <= i && i < len
; [eval] 0 <= i
(push) ; 4
; [then-branch: 90 | !(0 <= i@208@01) | live]
; [else-branch: 90 | 0 <= i@208@01 | live]
(push) ; 5
; [then-branch: 90 | !(0 <= i@208@01)]
(assert (not (<= 0 i@208@01)))
(pop) ; 5
(push) ; 5
; [else-branch: 90 | 0 <= i@208@01]
(assert (<= 0 i@208@01))
; [eval] i < len
(pop) ; 5
(pop) ; 4
; Joined path conditions
; Joined path conditions
(assert (or (<= 0 i@208@01) (not (<= 0 i@208@01))))
(assert (and (<= 0 i@208@01) (< i@208@01 len@190@01)))
; [eval] ar[i]
(push) ; 4
(assert (not (>= i@208@01 0)))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(push) ; 4
(assert (not (< i@208@01 (Seq_length ar@187@01))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(pop) ; 3
(declare-fun inv@209@01 ($Ref) Int)
(declare-fun img@210@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
(assert (forall ((i@208@01 Int)) (!
  (=>
    (and (<= 0 i@208@01) (< i@208@01 len@190@01))
    (or (<= 0 i@208@01) (not (<= 0 i@208@01))))
  :pattern ((Seq_index ar@187@01 i@208@01))
  :qid |Ref__Integer_value-aux|)))
; Check receiver injectivity
(push) ; 3
(assert (not (forall ((i1@208@01 Int) (i2@208@01 Int)) (!
  (=>
    (and
      (and (<= 0 i1@208@01) (< i1@208@01 len@190@01))
      (and (<= 0 i2@208@01) (< i2@208@01 len@190@01))
      (= (Seq_index ar@187@01 i1@208@01) (Seq_index ar@187@01 i2@208@01)))
    (= i1@208@01 i2@208@01))
  
  :qid |Ref__Integer_value-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((i@208@01 Int)) (!
  (=>
    (and (<= 0 i@208@01) (< i@208@01 len@190@01))
    (and
      (= (inv@209@01 (Seq_index ar@187@01 i@208@01)) i@208@01)
      (img@210@01 (Seq_index ar@187@01 i@208@01))))
  :pattern ((Seq_index ar@187@01 i@208@01))
  :qid |quant-u-9443|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@210@01 r)
      (and (<= 0 (inv@209@01 r)) (< (inv@209@01 r) len@190@01)))
    (= (Seq_index ar@187@01 (inv@209@01 r)) r))
  :pattern ((inv@209@01 r))
  :qid |Ref__Integer_value-fctOfInv|)))
; Permissions are non-negative
; Field permissions are at most one
; Permission implies non-null receiver
(assert (forall ((i@208@01 Int)) (!
  (=>
    (and (<= 0 i@208@01) (< i@208@01 len@190@01))
    (not (= (Seq_index ar@187@01 i@208@01) $Ref.null)))
  :pattern ((Seq_index ar@187@01 i@208@01))
  :qid |Ref__Integer_value-permImpliesNonNull|)))
(assert (=
  ($Snap.second ($Snap.second $t@207@01))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second $t@207@01)))
    ($Snap.second ($Snap.second ($Snap.second $t@207@01))))))
(assert (= ($Snap.first ($Snap.second ($Snap.second $t@207@01))) $Snap.unit))
; [eval] |br| == len
; [eval] |br|
(assert (=
  ($Snap.second ($Snap.second ($Snap.second $t@207@01)))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@207@01))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@207@01)))))))
(declare-const i@211@01 Int)
(push) ; 3
; [eval] 0 <= i && i < len
; [eval] 0 <= i
(push) ; 4
; [then-branch: 91 | !(0 <= i@211@01) | live]
; [else-branch: 91 | 0 <= i@211@01 | live]
(push) ; 5
; [then-branch: 91 | !(0 <= i@211@01)]
(assert (not (<= 0 i@211@01)))
(pop) ; 5
(push) ; 5
; [else-branch: 91 | 0 <= i@211@01]
(assert (<= 0 i@211@01))
; [eval] i < len
(pop) ; 5
(pop) ; 4
; Joined path conditions
; Joined path conditions
(assert (or (<= 0 i@211@01) (not (<= 0 i@211@01))))
(assert (and (<= 0 i@211@01) (< i@211@01 len@190@01)))
; [eval] br[i]
(push) ; 4
(assert (not (>= i@211@01 0)))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(push) ; 4
(assert (not (< i@211@01 (Seq_length br@188@01))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(pop) ; 3
(declare-fun inv@212@01 ($Ref) Int)
(declare-fun img@213@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
(assert (forall ((i@211@01 Int)) (!
  (=>
    (and (<= 0 i@211@01) (< i@211@01 len@190@01))
    (or (<= 0 i@211@01) (not (<= 0 i@211@01))))
  :pattern ((Seq_index br@188@01 i@211@01))
  :qid |Ref__Integer_value-aux|)))
; Check receiver injectivity
(push) ; 3
(assert (not (forall ((i1@211@01 Int) (i2@211@01 Int)) (!
  (=>
    (and
      (and (<= 0 i1@211@01) (< i1@211@01 len@190@01))
      (and (<= 0 i2@211@01) (< i2@211@01 len@190@01))
      (= (Seq_index br@188@01 i1@211@01) (Seq_index br@188@01 i2@211@01)))
    (= i1@211@01 i2@211@01))
  
  :qid |Ref__Integer_value-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((i@211@01 Int)) (!
  (=>
    (and (<= 0 i@211@01) (< i@211@01 len@190@01))
    (and
      (= (inv@212@01 (Seq_index br@188@01 i@211@01)) i@211@01)
      (img@213@01 (Seq_index br@188@01 i@211@01))))
  :pattern ((Seq_index br@188@01 i@211@01))
  :qid |quant-u-9445|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@213@01 r)
      (and (<= 0 (inv@212@01 r)) (< (inv@212@01 r) len@190@01)))
    (= (Seq_index br@188@01 (inv@212@01 r)) r))
  :pattern ((inv@212@01 r))
  :qid |Ref__Integer_value-fctOfInv|)))
; Permissions are non-negative
; Field permissions are at most one
; Permission implies non-null receiver
(assert (forall ((i@211@01 Int)) (!
  (=>
    (and (<= 0 i@211@01) (< i@211@01 len@190@01))
    (not (= (Seq_index br@188@01 i@211@01) $Ref.null)))
  :pattern ((Seq_index br@188@01 i@211@01))
  :qid |Ref__Integer_value-permImpliesNonNull|)))
(push) ; 3
(set-option :timeout 10)
(assert (not (forall ((r $Ref)) (!
  (and
    (= (Seq_index br@188@01 i@211@01) (Seq_index ar@187@01 i@208@01))
    (=
      (and
        (img@213@01 r)
        (and (<= 0 (inv@212@01 r)) (< (inv@212@01 r) len@190@01)))
      (and
        (img@210@01 r)
        (and (<= 0 (inv@209@01 r)) (< (inv@209@01 r) len@190@01)))))
  
  :qid |quant-u-9446|))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@207@01))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@207@01)))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@207@01))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@207@01)))))
  $Snap.unit))
; [eval] |cr| == len
; [eval] |cr|
(declare-const i@214@01 Int)
(set-option :timeout 0)
(push) ; 3
; [eval] 0 <= i && i < len
; [eval] 0 <= i
(push) ; 4
; [then-branch: 92 | !(0 <= i@214@01) | live]
; [else-branch: 92 | 0 <= i@214@01 | live]
(push) ; 5
; [then-branch: 92 | !(0 <= i@214@01)]
(assert (not (<= 0 i@214@01)))
(pop) ; 5
(push) ; 5
; [else-branch: 92 | 0 <= i@214@01]
(assert (<= 0 i@214@01))
; [eval] i < len
(pop) ; 5
(pop) ; 4
; Joined path conditions
; Joined path conditions
(assert (or (<= 0 i@214@01) (not (<= 0 i@214@01))))
(assert (and (<= 0 i@214@01) (< i@214@01 len@190@01)))
; [eval] cr[i]
(push) ; 4
(assert (not (>= i@214@01 0)))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(push) ; 4
(assert (not (< i@214@01 (Seq_length cr@189@01))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(pop) ; 3
(declare-fun inv@215@01 ($Ref) Int)
(declare-fun img@216@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
(assert (forall ((i@214@01 Int)) (!
  (=>
    (and (<= 0 i@214@01) (< i@214@01 len@190@01))
    (or (<= 0 i@214@01) (not (<= 0 i@214@01))))
  :pattern ((Seq_index cr@189@01 i@214@01))
  :qid |Ref__Integer_value-aux|)))
; Check receiver injectivity
(push) ; 3
(assert (not (forall ((i1@214@01 Int) (i2@214@01 Int)) (!
  (=>
    (and
      (and (<= 0 i1@214@01) (< i1@214@01 len@190@01))
      (and (<= 0 i2@214@01) (< i2@214@01 len@190@01))
      (= (Seq_index cr@189@01 i1@214@01) (Seq_index cr@189@01 i2@214@01)))
    (= i1@214@01 i2@214@01))
  
  :qid |Ref__Integer_value-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((i@214@01 Int)) (!
  (=>
    (and (<= 0 i@214@01) (< i@214@01 len@190@01))
    (and
      (= (inv@215@01 (Seq_index cr@189@01 i@214@01)) i@214@01)
      (img@216@01 (Seq_index cr@189@01 i@214@01))))
  :pattern ((Seq_index cr@189@01 i@214@01))
  :qid |quant-u-9448|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@216@01 r)
      (and (<= 0 (inv@215@01 r)) (< (inv@215@01 r) len@190@01)))
    (= (Seq_index cr@189@01 (inv@215@01 r)) r))
  :pattern ((inv@215@01 r))
  :qid |Ref__Integer_value-fctOfInv|)))
; Permissions are non-negative
; Field permissions are at most one
; Permission implies non-null receiver
(assert (forall ((i@214@01 Int)) (!
  (=>
    (and (<= 0 i@214@01) (< i@214@01 len@190@01))
    (not (= (Seq_index cr@189@01 i@214@01) $Ref.null)))
  :pattern ((Seq_index cr@189@01 i@214@01))
  :qid |Ref__Integer_value-permImpliesNonNull|)))
(push) ; 3
(set-option :timeout 10)
(assert (not (forall ((r $Ref)) (!
  (and
    (= (Seq_index cr@189@01 i@214@01) (Seq_index br@188@01 i@211@01))
    (=
      (and
        (img@216@01 r)
        (and (<= 0 (inv@215@01 r)) (< (inv@215@01 r) len@190@01)))
      (and
        (img@213@01 r)
        (and (<= 0 (inv@212@01 r)) (< (inv@212@01 r) len@190@01)))))
  
  :qid |quant-u-9449|))))
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
    (= (Seq_index cr@189@01 i@214@01) (Seq_index ar@187@01 i@208@01))
    (=
      (and
        (img@216@01 r)
        (and (<= 0 (inv@215@01 r)) (< (inv@215@01 r) len@190@01)))
      (and
        (img@210@01 r)
        (and (<= 0 (inv@209@01 r)) (< (inv@209@01 r) len@190@01)))))
  
  :qid |quant-u-9450|))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(pop) ; 2
(set-option :timeout 0)
(push) ; 2
; [exec]
; assert |ar| == len
; [eval] |ar| == len
; [eval] |ar|
; [exec]
; assert |br| == len
; [eval] |br| == len
; [eval] |br|
; [exec]
; assert |cr| == len
; [eval] |cr| == len
; [eval] |cr|
; [exec]
; Ref__loop_main_54(diz, current_thread_id, len, ar, br, cr)
; [eval] diz != null
; [eval] current_thread_id >= 0
; [eval] 0 < len ==> |ar| == len
; [eval] 0 < len
(push) ; 3
(push) ; 4
(set-option :timeout 10)
(assert (not (not (< 0 len@190@01))))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not (< 0 len@190@01)))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; [then-branch: 93 | 0 < len@190@01 | live]
; [else-branch: 93 | !(0 < len@190@01) | live]
(set-option :timeout 0)
(push) ; 4
; [then-branch: 93 | 0 < len@190@01]
(assert (< 0 len@190@01))
; [eval] |ar| == len
; [eval] |ar|
(pop) ; 4
(push) ; 4
; [else-branch: 93 | !(0 < len@190@01)]
(assert (not (< 0 len@190@01)))
(pop) ; 4
(pop) ; 3
; Joined path conditions
; Joined path conditions
(assert (or (not (< 0 len@190@01)) (< 0 len@190@01)))
(push) ; 3
(assert (not (=> (< 0 len@190@01) (= (Seq_length ar@187@01) len@190@01))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(assert (=> (< 0 len@190@01) (= (Seq_length ar@187@01) len@190@01)))
; [eval] (forall j: Int, k: Int :: { ar[j], ar[k] } 0 <= j && (j < |ar| && (0 <= k && (k < |ar| && j != k))) ==> ar[j] != ar[k])
(declare-const j@217@01 Int)
(declare-const k@218@01 Int)
(push) ; 3
; [eval] 0 <= j && (j < |ar| && (0 <= k && (k < |ar| && j != k))) ==> ar[j] != ar[k]
; [eval] 0 <= j && (j < |ar| && (0 <= k && (k < |ar| && j != k)))
; [eval] 0 <= j
(push) ; 4
; [then-branch: 94 | !(0 <= j@217@01) | live]
; [else-branch: 94 | 0 <= j@217@01 | live]
(push) ; 5
; [then-branch: 94 | !(0 <= j@217@01)]
(assert (not (<= 0 j@217@01)))
(pop) ; 5
(push) ; 5
; [else-branch: 94 | 0 <= j@217@01]
(assert (<= 0 j@217@01))
; [eval] j < |ar|
; [eval] |ar|
(push) ; 6
; [then-branch: 95 | !(j@217@01 < |ar@187@01|) | live]
; [else-branch: 95 | j@217@01 < |ar@187@01| | live]
(push) ; 7
; [then-branch: 95 | !(j@217@01 < |ar@187@01|)]
(assert (not (< j@217@01 (Seq_length ar@187@01))))
(pop) ; 7
(push) ; 7
; [else-branch: 95 | j@217@01 < |ar@187@01|]
(assert (< j@217@01 (Seq_length ar@187@01)))
; [eval] 0 <= k
(push) ; 8
; [then-branch: 96 | !(0 <= k@218@01) | live]
; [else-branch: 96 | 0 <= k@218@01 | live]
(push) ; 9
; [then-branch: 96 | !(0 <= k@218@01)]
(assert (not (<= 0 k@218@01)))
(pop) ; 9
(push) ; 9
; [else-branch: 96 | 0 <= k@218@01]
(assert (<= 0 k@218@01))
; [eval] k < |ar|
; [eval] |ar|
(push) ; 10
; [then-branch: 97 | !(k@218@01 < |ar@187@01|) | live]
; [else-branch: 97 | k@218@01 < |ar@187@01| | live]
(push) ; 11
; [then-branch: 97 | !(k@218@01 < |ar@187@01|)]
(assert (not (< k@218@01 (Seq_length ar@187@01))))
(pop) ; 11
(push) ; 11
; [else-branch: 97 | k@218@01 < |ar@187@01|]
(assert (< k@218@01 (Seq_length ar@187@01)))
; [eval] j != k
(pop) ; 11
(pop) ; 10
; Joined path conditions
; Joined path conditions
(assert (or
  (< k@218@01 (Seq_length ar@187@01))
  (not (< k@218@01 (Seq_length ar@187@01)))))
(pop) ; 9
(pop) ; 8
; Joined path conditions
; Joined path conditions
(assert (=>
  (<= 0 k@218@01)
  (and
    (<= 0 k@218@01)
    (or
      (< k@218@01 (Seq_length ar@187@01))
      (not (< k@218@01 (Seq_length ar@187@01)))))))
(assert (or (<= 0 k@218@01) (not (<= 0 k@218@01))))
(pop) ; 7
(pop) ; 6
; Joined path conditions
; Joined path conditions
(assert (=>
  (< j@217@01 (Seq_length ar@187@01))
  (and
    (< j@217@01 (Seq_length ar@187@01))
    (=>
      (<= 0 k@218@01)
      (and
        (<= 0 k@218@01)
        (or
          (< k@218@01 (Seq_length ar@187@01))
          (not (< k@218@01 (Seq_length ar@187@01))))))
    (or (<= 0 k@218@01) (not (<= 0 k@218@01))))))
(assert (or
  (< j@217@01 (Seq_length ar@187@01))
  (not (< j@217@01 (Seq_length ar@187@01)))))
(pop) ; 5
(pop) ; 4
; Joined path conditions
; Joined path conditions
(assert (=>
  (<= 0 j@217@01)
  (and
    (<= 0 j@217@01)
    (=>
      (< j@217@01 (Seq_length ar@187@01))
      (and
        (< j@217@01 (Seq_length ar@187@01))
        (=>
          (<= 0 k@218@01)
          (and
            (<= 0 k@218@01)
            (or
              (< k@218@01 (Seq_length ar@187@01))
              (not (< k@218@01 (Seq_length ar@187@01))))))
        (or (<= 0 k@218@01) (not (<= 0 k@218@01)))))
    (or
      (< j@217@01 (Seq_length ar@187@01))
      (not (< j@217@01 (Seq_length ar@187@01)))))))
(assert (or (<= 0 j@217@01) (not (<= 0 j@217@01))))
(push) ; 4
; [then-branch: 98 | 0 <= j@217@01 && j@217@01 < |ar@187@01| && 0 <= k@218@01 && k@218@01 < |ar@187@01| && j@217@01 != k@218@01 | live]
; [else-branch: 98 | !(0 <= j@217@01 && j@217@01 < |ar@187@01| && 0 <= k@218@01 && k@218@01 < |ar@187@01| && j@217@01 != k@218@01) | live]
(push) ; 5
; [then-branch: 98 | 0 <= j@217@01 && j@217@01 < |ar@187@01| && 0 <= k@218@01 && k@218@01 < |ar@187@01| && j@217@01 != k@218@01]
(assert (and
  (<= 0 j@217@01)
  (and
    (< j@217@01 (Seq_length ar@187@01))
    (and
      (<= 0 k@218@01)
      (and (< k@218@01 (Seq_length ar@187@01)) (not (= j@217@01 k@218@01)))))))
; [eval] ar[j] != ar[k]
; [eval] ar[j]
(push) ; 6
(assert (not (>= j@217@01 0)))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
; [eval] ar[k]
(push) ; 6
(assert (not (>= k@218@01 0)))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(pop) ; 5
(push) ; 5
; [else-branch: 98 | !(0 <= j@217@01 && j@217@01 < |ar@187@01| && 0 <= k@218@01 && k@218@01 < |ar@187@01| && j@217@01 != k@218@01)]
(assert (not
  (and
    (<= 0 j@217@01)
    (and
      (< j@217@01 (Seq_length ar@187@01))
      (and
        (<= 0 k@218@01)
        (and (< k@218@01 (Seq_length ar@187@01)) (not (= j@217@01 k@218@01))))))))
(pop) ; 5
(pop) ; 4
; Joined path conditions
(assert (=>
  (and
    (<= 0 j@217@01)
    (and
      (< j@217@01 (Seq_length ar@187@01))
      (and
        (<= 0 k@218@01)
        (and (< k@218@01 (Seq_length ar@187@01)) (not (= j@217@01 k@218@01))))))
  (and
    (<= 0 j@217@01)
    (< j@217@01 (Seq_length ar@187@01))
    (<= 0 k@218@01)
    (< k@218@01 (Seq_length ar@187@01))
    (not (= j@217@01 k@218@01)))))
; Joined path conditions
(assert (or
  (not
    (and
      (<= 0 j@217@01)
      (and
        (< j@217@01 (Seq_length ar@187@01))
        (and
          (<= 0 k@218@01)
          (and (< k@218@01 (Seq_length ar@187@01)) (not (= j@217@01 k@218@01)))))))
  (and
    (<= 0 j@217@01)
    (and
      (< j@217@01 (Seq_length ar@187@01))
      (and
        (<= 0 k@218@01)
        (and (< k@218@01 (Seq_length ar@187@01)) (not (= j@217@01 k@218@01))))))))
(pop) ; 3
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall ((j@217@01 Int) (k@218@01 Int)) (!
  (and
    (=>
      (<= 0 j@217@01)
      (and
        (<= 0 j@217@01)
        (=>
          (< j@217@01 (Seq_length ar@187@01))
          (and
            (< j@217@01 (Seq_length ar@187@01))
            (=>
              (<= 0 k@218@01)
              (and
                (<= 0 k@218@01)
                (or
                  (< k@218@01 (Seq_length ar@187@01))
                  (not (< k@218@01 (Seq_length ar@187@01))))))
            (or (<= 0 k@218@01) (not (<= 0 k@218@01)))))
        (or
          (< j@217@01 (Seq_length ar@187@01))
          (not (< j@217@01 (Seq_length ar@187@01))))))
    (or (<= 0 j@217@01) (not (<= 0 j@217@01)))
    (=>
      (and
        (<= 0 j@217@01)
        (and
          (< j@217@01 (Seq_length ar@187@01))
          (and
            (<= 0 k@218@01)
            (and (< k@218@01 (Seq_length ar@187@01)) (not (= j@217@01 k@218@01))))))
      (and
        (<= 0 j@217@01)
        (< j@217@01 (Seq_length ar@187@01))
        (<= 0 k@218@01)
        (< k@218@01 (Seq_length ar@187@01))
        (not (= j@217@01 k@218@01))))
    (or
      (not
        (and
          (<= 0 j@217@01)
          (and
            (< j@217@01 (Seq_length ar@187@01))
            (and
              (<= 0 k@218@01)
              (and
                (< k@218@01 (Seq_length ar@187@01))
                (not (= j@217@01 k@218@01)))))))
      (and
        (<= 0 j@217@01)
        (and
          (< j@217@01 (Seq_length ar@187@01))
          (and
            (<= 0 k@218@01)
            (and (< k@218@01 (Seq_length ar@187@01)) (not (= j@217@01 k@218@01))))))))
  :pattern ((Seq_index ar@187@01 j@217@01) (Seq_index ar@187@01 k@218@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/third_party/testDepParLoopBack.vpr@62@12@62@106-aux|)))
(push) ; 3
(assert (not (forall ((j@217@01 Int) (k@218@01 Int)) (!
  (=>
    (and
      (<= 0 j@217@01)
      (and
        (< j@217@01 (Seq_length ar@187@01))
        (and
          (<= 0 k@218@01)
          (and (< k@218@01 (Seq_length ar@187@01)) (not (= j@217@01 k@218@01))))))
    (not (= (Seq_index ar@187@01 j@217@01) (Seq_index ar@187@01 k@218@01))))
  :pattern ((Seq_index ar@187@01 j@217@01) (Seq_index ar@187@01 k@218@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/third_party/testDepParLoopBack.vpr@62@12@62@106|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(assert (forall ((j@217@01 Int) (k@218@01 Int)) (!
  (=>
    (and
      (<= 0 j@217@01)
      (and
        (< j@217@01 (Seq_length ar@187@01))
        (and
          (<= 0 k@218@01)
          (and (< k@218@01 (Seq_length ar@187@01)) (not (= j@217@01 k@218@01))))))
    (not (= (Seq_index ar@187@01 j@217@01) (Seq_index ar@187@01 k@218@01))))
  :pattern ((Seq_index ar@187@01 j@217@01) (Seq_index ar@187@01 k@218@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/third_party/testDepParLoopBack.vpr@62@12@62@106|)))
(declare-const i@219@01 Int)
(push) ; 3
; [eval] 0 <= i && i < len
; [eval] 0 <= i
(push) ; 4
; [then-branch: 99 | !(0 <= i@219@01) | live]
; [else-branch: 99 | 0 <= i@219@01 | live]
(push) ; 5
; [then-branch: 99 | !(0 <= i@219@01)]
(assert (not (<= 0 i@219@01)))
(pop) ; 5
(push) ; 5
; [else-branch: 99 | 0 <= i@219@01]
(assert (<= 0 i@219@01))
; [eval] i < len
(pop) ; 5
(pop) ; 4
; Joined path conditions
; Joined path conditions
(assert (or (<= 0 i@219@01) (not (<= 0 i@219@01))))
(assert (and (<= 0 i@219@01) (< i@219@01 len@190@01)))
; [eval] ar[i]
(push) ; 4
(assert (not (>= i@219@01 0)))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(push) ; 4
(assert (not (< i@219@01 (Seq_length ar@187@01))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(pop) ; 3
(declare-fun inv@220@01 ($Ref) Int)
(declare-fun img@221@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
(assert (forall ((i@219@01 Int)) (!
  (=>
    (and (<= 0 i@219@01) (< i@219@01 len@190@01))
    (or (<= 0 i@219@01) (not (<= 0 i@219@01))))
  :pattern ((Seq_index ar@187@01 i@219@01))
  :qid |Ref__Integer_value-aux|)))
; Check receiver injectivity
(push) ; 3
(assert (not (forall ((i1@219@01 Int) (i2@219@01 Int)) (!
  (=>
    (and
      (and (<= 0 i1@219@01) (< i1@219@01 len@190@01))
      (and (<= 0 i2@219@01) (< i2@219@01 len@190@01))
      (= (Seq_index ar@187@01 i1@219@01) (Seq_index ar@187@01 i2@219@01)))
    (= i1@219@01 i2@219@01))
  
  :qid |Ref__Integer_value-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((i@219@01 Int)) (!
  (=>
    (and (<= 0 i@219@01) (< i@219@01 len@190@01))
    (and
      (= (inv@220@01 (Seq_index ar@187@01 i@219@01)) i@219@01)
      (img@221@01 (Seq_index ar@187@01 i@219@01))))
  :pattern ((Seq_index ar@187@01 i@219@01))
  :qid |Ref__Integer_value-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@221@01 r)
      (and (<= 0 (inv@220@01 r)) (< (inv@220@01 r) len@190@01)))
    (= (Seq_index ar@187@01 (inv@220@01 r)) r))
  :pattern ((inv@220@01 r))
  :qid |Ref__Integer_value-fctOfInv|)))
(push) ; 3
(set-option :timeout 10)
(assert (not (forall ((i@219@01 Int)) (!
  (= (Seq_index ar@187@01 i@219@01) (Seq_index br@188@01 i@219@01))
  
  :qid |quant-u-9452|))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (forall ((i@219@01 Int)) (!
  (= (Seq_index ar@187@01 i@219@01) (Seq_index cr@189@01 i@219@01))
  
  :qid |quant-u-9453|))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Precomputing data for removing quantified permissions
(define-fun pTaken@222@01 ((r $Ref)) $Perm
  (ite
    (and
      (and (<= 0 (inv@220@01 r)) (< (inv@220@01 r) len@190@01))
      (img@221@01 r)
      (= r (Seq_index ar@187@01 (inv@220@01 r))))
    ($Perm.min
      (ite
        (and
          (img@196@01 r)
          (and (<= 0 (inv@195@01 r)) (< (inv@195@01 r) len@190@01)))
        $Perm.Write
        $Perm.No)
      (/ (to_real 1) (to_real 2)))
    $Perm.No))
(define-fun pTaken@223@01 ((r $Ref)) $Perm
  (ite
    (and
      (and (<= 0 (inv@220@01 r)) (< (inv@220@01 r) len@190@01))
      (img@221@01 r)
      (= r (Seq_index ar@187@01 (inv@220@01 r))))
    ($Perm.min
      (ite
        (and
          (img@201@01 r)
          (and (<= 0 (inv@200@01 r)) (< (inv@200@01 r) len@190@01)))
        (/ (to_real 1) (to_real 2))
        $Perm.No)
      (- (/ (to_real 1) (to_real 2)) (pTaken@222@01 r)))
    $Perm.No))
(define-fun pTaken@224@01 ((r $Ref)) $Perm
  (ite
    (and
      (and (<= 0 (inv@220@01 r)) (< (inv@220@01 r) len@190@01))
      (img@221@01 r)
      (= r (Seq_index ar@187@01 (inv@220@01 r))))
    ($Perm.min
      (ite
        (and
          (img@206@01 r)
          (and (<= 0 (inv@205@01 r)) (< (inv@205@01 r) len@190@01)))
        $Perm.Write
        $Perm.No)
      (- (- (/ (to_real 1) (to_real 2)) (pTaken@222@01 r)) (pTaken@223@01 r)))
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
          (img@196@01 r)
          (and (<= 0 (inv@195@01 r)) (< (inv@195@01 r) len@190@01)))
        $Perm.Write
        $Perm.No)
      (pTaken@222@01 r))
    $Perm.No)
  
  :qid |quant-u-9455|))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (forall ((r $Ref)) (!
  (= (pTaken@222@01 r) $Perm.No)
  
  :qid |quant-u-9456|))))
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
      (and (<= 0 (inv@220@01 r)) (< (inv@220@01 r) len@190@01))
      (img@221@01 r)
      (= r (Seq_index ar@187@01 (inv@220@01 r))))
    (= (- (/ (to_real 1) (to_real 2)) (pTaken@222@01 r)) $Perm.No))
  
  :qid |quant-u-9457|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Final check if taken enough permissions
; Done removing quantified permissions
; [eval] 0 <= 0 && 0 < len
; [eval] 0 <= 0
(set-option :timeout 0)
(push) ; 3
; [then-branch: 100 | False | live]
; [else-branch: 100 | True | live]
(push) ; 4
; [then-branch: 100 | False]
(assert false)
(pop) ; 4
(push) ; 4
; [else-branch: 100 | True]
; [eval] 0 < len
(pop) ; 4
(pop) ; 3
; Joined path conditions
; Joined path conditions
(push) ; 3
(set-option :timeout 10)
(assert (not (not (< 0 len@190@01))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (< 0 len@190@01)))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; [then-branch: 101 | 0 < len@190@01 | live]
; [else-branch: 101 | !(0 < len@190@01) | live]
(set-option :timeout 0)
(push) ; 3
; [then-branch: 101 | 0 < len@190@01]
(assert (< 0 len@190@01))
; [eval] ar[0]
(push) ; 4
(assert (not (< 0 (Seq_length ar@187@01))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; Precomputing data for removing quantified permissions
(define-fun pTaken@225@01 ((r $Ref)) $Perm
  (ite
    (= r (Seq_index ar@187@01 0))
    ($Perm.min
      (ite
        (and
          (img@196@01 r)
          (and (<= 0 (inv@195@01 r)) (< (inv@195@01 r) len@190@01)))
        (- $Perm.Write (pTaken@222@01 r))
        $Perm.No)
      (/ (to_real 1) (to_real 2)))
    $Perm.No))
(define-fun pTaken@226@01 ((r $Ref)) $Perm
  (ite
    (= r (Seq_index ar@187@01 0))
    ($Perm.min
      (ite
        (and
          (img@206@01 r)
          (and (<= 0 (inv@205@01 r)) (< (inv@205@01 r) len@190@01)))
        $Perm.Write
        $Perm.No)
      (- (/ (to_real 1) (to_real 2)) (pTaken@225@01 r)))
    $Perm.No))
(define-fun pTaken@227@01 ((r $Ref)) $Perm
  (ite
    (= r (Seq_index ar@187@01 0))
    ($Perm.min
      (ite
        (and
          (img@201@01 r)
          (and (<= 0 (inv@200@01 r)) (< (inv@200@01 r) len@190@01)))
        (/ (to_real 1) (to_real 2))
        $Perm.No)
      (- (- (/ (to_real 1) (to_real 2)) (pTaken@225@01 r)) (pTaken@226@01 r)))
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
          (img@196@01 r)
          (and (<= 0 (inv@195@01 r)) (< (inv@195@01 r) len@190@01)))
        (- $Perm.Write (pTaken@222@01 r))
        $Perm.No)
      (pTaken@225@01 r))
    $Perm.No)
  
  :qid |quant-u-9459|))))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not (forall ((r $Ref)) (!
  (= (pTaken@225@01 r) $Perm.No)
  
  :qid |quant-u-9460|))))
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
    (= r (Seq_index ar@187@01 0))
    (= (- (/ (to_real 1) (to_real 2)) (pTaken@225@01 r)) $Perm.No))
  
  :qid |quant-u-9461|))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; Final check if taken enough permissions
; Done removing quantified permissions
(declare-const i@228@01 Int)
(set-option :timeout 0)
(push) ; 4
; [eval] 1 <= i && i < (|ar| - 1 < len ? |ar| - 1 : len) + 1
; [eval] 1 <= i
(push) ; 5
; [then-branch: 102 | !(1 <= i@228@01) | live]
; [else-branch: 102 | 1 <= i@228@01 | live]
(push) ; 6
; [then-branch: 102 | !(1 <= i@228@01)]
(assert (not (<= 1 i@228@01)))
(pop) ; 6
(push) ; 6
; [else-branch: 102 | 1 <= i@228@01]
(assert (<= 1 i@228@01))
; [eval] i < (|ar| - 1 < len ? |ar| - 1 : len) + 1
; [eval] (|ar| - 1 < len ? |ar| - 1 : len) + 1
; [eval] (|ar| - 1 < len ? |ar| - 1 : len)
; [eval] |ar| - 1 < len
; [eval] |ar| - 1
; [eval] |ar|
(push) ; 7
(push) ; 8
(set-option :timeout 10)
(assert (not (not (< (- (Seq_length ar@187@01) 1) len@190@01))))
(check-sat)
; unknown
(pop) ; 8
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 8
(set-option :timeout 10)
(assert (not (< (- (Seq_length ar@187@01) 1) len@190@01)))
(check-sat)
; unsat
(pop) ; 8
; 0.00s
; (get-info :all-statistics)
; [then-branch: 103 | |ar@187@01| - 1 < len@190@01 | live]
; [else-branch: 103 | !(|ar@187@01| - 1 < len@190@01) | dead]
(set-option :timeout 0)
(push) ; 8
; [then-branch: 103 | |ar@187@01| - 1 < len@190@01]
(assert (< (- (Seq_length ar@187@01) 1) len@190@01))
; [eval] |ar| - 1
; [eval] |ar|
(pop) ; 8
(pop) ; 7
; Joined path conditions
(assert (< (- (Seq_length ar@187@01) 1) len@190@01))
(pop) ; 6
(pop) ; 5
; Joined path conditions
; Joined path conditions
(assert (=>
  (<= 1 i@228@01)
  (and (<= 1 i@228@01) (< (- (Seq_length ar@187@01) 1) len@190@01))))
(assert (or (<= 1 i@228@01) (not (<= 1 i@228@01))))
(assert (and (<= 1 i@228@01) (< i@228@01 (+ (- (Seq_length ar@187@01) 1) 1))))
; [eval] ar[i]
(push) ; 5
(assert (not (>= i@228@01 0)))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(push) ; 5
(assert (not (< i@228@01 (Seq_length ar@187@01))))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(pop) ; 4
(declare-fun inv@229@01 ($Ref) Int)
(declare-fun img@230@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
(assert (forall ((i@228@01 Int)) (!
  (=>
    (and (<= 1 i@228@01) (< i@228@01 (+ (- (Seq_length ar@187@01) 1) 1)))
    (and
      (=>
        (<= 1 i@228@01)
        (and (<= 1 i@228@01) (< (- (Seq_length ar@187@01) 1) len@190@01)))
      (or (<= 1 i@228@01) (not (<= 1 i@228@01)))))
  :pattern ((Seq_index ar@187@01 i@228@01))
  :qid |Ref__Integer_value-aux|)))
; Check receiver injectivity
(push) ; 4
(assert (not (forall ((i1@228@01 Int) (i2@228@01 Int)) (!
  (=>
    (and
      (and (<= 1 i1@228@01) (< i1@228@01 (+ (- (Seq_length ar@187@01) 1) 1)))
      (and (<= 1 i2@228@01) (< i2@228@01 (+ (- (Seq_length ar@187@01) 1) 1)))
      (= (Seq_index ar@187@01 i1@228@01) (Seq_index ar@187@01 i2@228@01)))
    (= i1@228@01 i2@228@01))
  
  :qid |Ref__Integer_value-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((i@228@01 Int)) (!
  (=>
    (and (<= 1 i@228@01) (< i@228@01 (+ (- (Seq_length ar@187@01) 1) 1)))
    (and
      (= (inv@229@01 (Seq_index ar@187@01 i@228@01)) i@228@01)
      (img@230@01 (Seq_index ar@187@01 i@228@01))))
  :pattern ((Seq_index ar@187@01 i@228@01))
  :qid |Ref__Integer_value-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@230@01 r)
      (and
        (<= 1 (inv@229@01 r))
        (< (inv@229@01 r) (+ (- (Seq_length ar@187@01) 1) 1))))
    (= (Seq_index ar@187@01 (inv@229@01 r)) r))
  :pattern ((inv@229@01 r))
  :qid |Ref__Integer_value-fctOfInv|)))
(push) ; 4
(set-option :timeout 10)
(assert (not (forall ((i@228@01 Int)) (!
  (= (Seq_index ar@187@01 i@228@01) (Seq_index br@188@01 i@228@01))
  
  :qid |quant-u-9463|))))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not (forall ((i@228@01 Int)) (!
  (= (Seq_index ar@187@01 i@228@01) (Seq_index cr@189@01 i@228@01))
  
  :qid |quant-u-9464|))))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; Precomputing data for removing quantified permissions
(define-fun pTaken@231@01 ((r $Ref)) $Perm
  (ite
    (and
      (and
        (<= 1 (inv@229@01 r))
        (< (inv@229@01 r) (+ (- (Seq_length ar@187@01) 1) 1)))
      (img@230@01 r)
      (= r (Seq_index ar@187@01 (inv@229@01 r))))
    ($Perm.min
      (ite
        (and
          (img@196@01 r)
          (and (<= 0 (inv@195@01 r)) (< (inv@195@01 r) len@190@01)))
        (- (- $Perm.Write (pTaken@222@01 r)) (pTaken@225@01 r))
        $Perm.No)
      (/ (to_real 1) (to_real 2)))
    $Perm.No))
(define-fun pTaken@232@01 ((r $Ref)) $Perm
  (ite
    (and
      (and
        (<= 1 (inv@229@01 r))
        (< (inv@229@01 r) (+ (- (Seq_length ar@187@01) 1) 1)))
      (img@230@01 r)
      (= r (Seq_index ar@187@01 (inv@229@01 r))))
    ($Perm.min
      (ite
        (and
          (img@201@01 r)
          (and (<= 0 (inv@200@01 r)) (< (inv@200@01 r) len@190@01)))
        (/ (to_real 1) (to_real 2))
        $Perm.No)
      (- (/ (to_real 1) (to_real 2)) (pTaken@231@01 r)))
    $Perm.No))
(define-fun pTaken@233@01 ((r $Ref)) $Perm
  (ite
    (and
      (and
        (<= 1 (inv@229@01 r))
        (< (inv@229@01 r) (+ (- (Seq_length ar@187@01) 1) 1)))
      (img@230@01 r)
      (= r (Seq_index ar@187@01 (inv@229@01 r))))
    ($Perm.min
      (ite
        (and
          (img@206@01 r)
          (and (<= 0 (inv@205@01 r)) (< (inv@205@01 r) len@190@01)))
        $Perm.Write
        $Perm.No)
      (- (- (/ (to_real 1) (to_real 2)) (pTaken@231@01 r)) (pTaken@232@01 r)))
    $Perm.No))
; Done precomputing, updating quantified chunks
; State saturation: before repetition
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
          (img@196@01 r)
          (and (<= 0 (inv@195@01 r)) (< (inv@195@01 r) len@190@01)))
        (- (- $Perm.Write (pTaken@222@01 r)) (pTaken@225@01 r))
        $Perm.No)
      (pTaken@231@01 r))
    $Perm.No)
  
  :qid |quant-u-9466|))))
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
      (and
        (<= 1 (inv@229@01 r))
        (< (inv@229@01 r) (+ (- (Seq_length ar@187@01) 1) 1)))
      (img@230@01 r)
      (= r (Seq_index ar@187@01 (inv@229@01 r))))
    (= (- (/ (to_real 1) (to_real 2)) (pTaken@231@01 r)) $Perm.No))
  
  :qid |quant-u-9467|))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; Final check if taken enough permissions
; Done removing quantified permissions
; [eval] 0 < len ==> |br| == len
; [eval] 0 < len
(set-option :timeout 0)
(push) ; 4
(push) ; 5
(set-option :timeout 10)
(assert (not (not (< 0 len@190@01))))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
; [then-branch: 104 | 0 < len@190@01 | live]
; [else-branch: 104 | !(0 < len@190@01) | dead]
(set-option :timeout 0)
(push) ; 5
; [then-branch: 104 | 0 < len@190@01]
; [eval] |br| == len
; [eval] |br|
(pop) ; 5
(pop) ; 4
; Joined path conditions
(push) ; 4
(assert (not (=> (< 0 len@190@01) (= (Seq_length br@188@01) len@190@01))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(assert (=> (< 0 len@190@01) (= (Seq_length br@188@01) len@190@01)))
; [eval] (forall j: Int, k: Int :: { br[j], br[k] } 0 <= j && (j < |br| && (0 <= k && (k < |br| && j != k))) ==> br[j] != br[k])
(declare-const j@234@01 Int)
(declare-const k@235@01 Int)
(push) ; 4
; [eval] 0 <= j && (j < |br| && (0 <= k && (k < |br| && j != k))) ==> br[j] != br[k]
; [eval] 0 <= j && (j < |br| && (0 <= k && (k < |br| && j != k)))
; [eval] 0 <= j
(push) ; 5
; [then-branch: 105 | !(0 <= j@234@01) | live]
; [else-branch: 105 | 0 <= j@234@01 | live]
(push) ; 6
; [then-branch: 105 | !(0 <= j@234@01)]
(assert (not (<= 0 j@234@01)))
(pop) ; 6
(push) ; 6
; [else-branch: 105 | 0 <= j@234@01]
(assert (<= 0 j@234@01))
; [eval] j < |br|
; [eval] |br|
(push) ; 7
; [then-branch: 106 | !(j@234@01 < |br@188@01|) | live]
; [else-branch: 106 | j@234@01 < |br@188@01| | live]
(push) ; 8
; [then-branch: 106 | !(j@234@01 < |br@188@01|)]
(assert (not (< j@234@01 (Seq_length br@188@01))))
(pop) ; 8
(push) ; 8
; [else-branch: 106 | j@234@01 < |br@188@01|]
(assert (< j@234@01 (Seq_length br@188@01)))
; [eval] 0 <= k
(push) ; 9
; [then-branch: 107 | !(0 <= k@235@01) | live]
; [else-branch: 107 | 0 <= k@235@01 | live]
(push) ; 10
; [then-branch: 107 | !(0 <= k@235@01)]
(assert (not (<= 0 k@235@01)))
(pop) ; 10
(push) ; 10
; [else-branch: 107 | 0 <= k@235@01]
(assert (<= 0 k@235@01))
; [eval] k < |br|
; [eval] |br|
(push) ; 11
; [then-branch: 108 | !(k@235@01 < |br@188@01|) | live]
; [else-branch: 108 | k@235@01 < |br@188@01| | live]
(push) ; 12
; [then-branch: 108 | !(k@235@01 < |br@188@01|)]
(assert (not (< k@235@01 (Seq_length br@188@01))))
(pop) ; 12
(push) ; 12
; [else-branch: 108 | k@235@01 < |br@188@01|]
(assert (< k@235@01 (Seq_length br@188@01)))
; [eval] j != k
(pop) ; 12
(pop) ; 11
; Joined path conditions
; Joined path conditions
(assert (or
  (< k@235@01 (Seq_length br@188@01))
  (not (< k@235@01 (Seq_length br@188@01)))))
(pop) ; 10
(pop) ; 9
; Joined path conditions
; Joined path conditions
(assert (=>
  (<= 0 k@235@01)
  (and
    (<= 0 k@235@01)
    (or
      (< k@235@01 (Seq_length br@188@01))
      (not (< k@235@01 (Seq_length br@188@01)))))))
(assert (or (<= 0 k@235@01) (not (<= 0 k@235@01))))
(pop) ; 8
(pop) ; 7
; Joined path conditions
; Joined path conditions
(assert (=>
  (< j@234@01 (Seq_length br@188@01))
  (and
    (< j@234@01 (Seq_length br@188@01))
    (=>
      (<= 0 k@235@01)
      (and
        (<= 0 k@235@01)
        (or
          (< k@235@01 (Seq_length br@188@01))
          (not (< k@235@01 (Seq_length br@188@01))))))
    (or (<= 0 k@235@01) (not (<= 0 k@235@01))))))
(assert (or
  (< j@234@01 (Seq_length br@188@01))
  (not (< j@234@01 (Seq_length br@188@01)))))
(pop) ; 6
(pop) ; 5
; Joined path conditions
; Joined path conditions
(assert (=>
  (<= 0 j@234@01)
  (and
    (<= 0 j@234@01)
    (=>
      (< j@234@01 (Seq_length br@188@01))
      (and
        (< j@234@01 (Seq_length br@188@01))
        (=>
          (<= 0 k@235@01)
          (and
            (<= 0 k@235@01)
            (or
              (< k@235@01 (Seq_length br@188@01))
              (not (< k@235@01 (Seq_length br@188@01))))))
        (or (<= 0 k@235@01) (not (<= 0 k@235@01)))))
    (or
      (< j@234@01 (Seq_length br@188@01))
      (not (< j@234@01 (Seq_length br@188@01)))))))
(assert (or (<= 0 j@234@01) (not (<= 0 j@234@01))))
(push) ; 5
; [then-branch: 109 | 0 <= j@234@01 && j@234@01 < |br@188@01| && 0 <= k@235@01 && k@235@01 < |br@188@01| && j@234@01 != k@235@01 | live]
; [else-branch: 109 | !(0 <= j@234@01 && j@234@01 < |br@188@01| && 0 <= k@235@01 && k@235@01 < |br@188@01| && j@234@01 != k@235@01) | live]
(push) ; 6
; [then-branch: 109 | 0 <= j@234@01 && j@234@01 < |br@188@01| && 0 <= k@235@01 && k@235@01 < |br@188@01| && j@234@01 != k@235@01]
(assert (and
  (<= 0 j@234@01)
  (and
    (< j@234@01 (Seq_length br@188@01))
    (and
      (<= 0 k@235@01)
      (and (< k@235@01 (Seq_length br@188@01)) (not (= j@234@01 k@235@01)))))))
; [eval] br[j] != br[k]
; [eval] br[j]
(push) ; 7
(assert (not (>= j@234@01 0)))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
; [eval] br[k]
(push) ; 7
(assert (not (>= k@235@01 0)))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(pop) ; 6
(push) ; 6
; [else-branch: 109 | !(0 <= j@234@01 && j@234@01 < |br@188@01| && 0 <= k@235@01 && k@235@01 < |br@188@01| && j@234@01 != k@235@01)]
(assert (not
  (and
    (<= 0 j@234@01)
    (and
      (< j@234@01 (Seq_length br@188@01))
      (and
        (<= 0 k@235@01)
        (and (< k@235@01 (Seq_length br@188@01)) (not (= j@234@01 k@235@01))))))))
(pop) ; 6
(pop) ; 5
; Joined path conditions
(assert (=>
  (and
    (<= 0 j@234@01)
    (and
      (< j@234@01 (Seq_length br@188@01))
      (and
        (<= 0 k@235@01)
        (and (< k@235@01 (Seq_length br@188@01)) (not (= j@234@01 k@235@01))))))
  (and
    (<= 0 j@234@01)
    (< j@234@01 (Seq_length br@188@01))
    (<= 0 k@235@01)
    (< k@235@01 (Seq_length br@188@01))
    (not (= j@234@01 k@235@01)))))
; Joined path conditions
(assert (or
  (not
    (and
      (<= 0 j@234@01)
      (and
        (< j@234@01 (Seq_length br@188@01))
        (and
          (<= 0 k@235@01)
          (and (< k@235@01 (Seq_length br@188@01)) (not (= j@234@01 k@235@01)))))))
  (and
    (<= 0 j@234@01)
    (and
      (< j@234@01 (Seq_length br@188@01))
      (and
        (<= 0 k@235@01)
        (and (< k@235@01 (Seq_length br@188@01)) (not (= j@234@01 k@235@01))))))))
(pop) ; 4
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall ((j@234@01 Int) (k@235@01 Int)) (!
  (and
    (=>
      (<= 0 j@234@01)
      (and
        (<= 0 j@234@01)
        (=>
          (< j@234@01 (Seq_length br@188@01))
          (and
            (< j@234@01 (Seq_length br@188@01))
            (=>
              (<= 0 k@235@01)
              (and
                (<= 0 k@235@01)
                (or
                  (< k@235@01 (Seq_length br@188@01))
                  (not (< k@235@01 (Seq_length br@188@01))))))
            (or (<= 0 k@235@01) (not (<= 0 k@235@01)))))
        (or
          (< j@234@01 (Seq_length br@188@01))
          (not (< j@234@01 (Seq_length br@188@01))))))
    (or (<= 0 j@234@01) (not (<= 0 j@234@01)))
    (=>
      (and
        (<= 0 j@234@01)
        (and
          (< j@234@01 (Seq_length br@188@01))
          (and
            (<= 0 k@235@01)
            (and (< k@235@01 (Seq_length br@188@01)) (not (= j@234@01 k@235@01))))))
      (and
        (<= 0 j@234@01)
        (< j@234@01 (Seq_length br@188@01))
        (<= 0 k@235@01)
        (< k@235@01 (Seq_length br@188@01))
        (not (= j@234@01 k@235@01))))
    (or
      (not
        (and
          (<= 0 j@234@01)
          (and
            (< j@234@01 (Seq_length br@188@01))
            (and
              (<= 0 k@235@01)
              (and
                (< k@235@01 (Seq_length br@188@01))
                (not (= j@234@01 k@235@01)))))))
      (and
        (<= 0 j@234@01)
        (and
          (< j@234@01 (Seq_length br@188@01))
          (and
            (<= 0 k@235@01)
            (and (< k@235@01 (Seq_length br@188@01)) (not (= j@234@01 k@235@01))))))))
  :pattern ((Seq_index br@188@01 j@234@01) (Seq_index br@188@01 k@235@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/third_party/testDepParLoopBack.vpr@67@12@67@106-aux|)))
(push) ; 4
(assert (not (forall ((j@234@01 Int) (k@235@01 Int)) (!
  (=>
    (and
      (<= 0 j@234@01)
      (and
        (< j@234@01 (Seq_length br@188@01))
        (and
          (<= 0 k@235@01)
          (and (< k@235@01 (Seq_length br@188@01)) (not (= j@234@01 k@235@01))))))
    (not (= (Seq_index br@188@01 j@234@01) (Seq_index br@188@01 k@235@01))))
  :pattern ((Seq_index br@188@01 j@234@01) (Seq_index br@188@01 k@235@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/third_party/testDepParLoopBack.vpr@67@12@67@106|))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(assert (forall ((j@234@01 Int) (k@235@01 Int)) (!
  (=>
    (and
      (<= 0 j@234@01)
      (and
        (< j@234@01 (Seq_length br@188@01))
        (and
          (<= 0 k@235@01)
          (and (< k@235@01 (Seq_length br@188@01)) (not (= j@234@01 k@235@01))))))
    (not (= (Seq_index br@188@01 j@234@01) (Seq_index br@188@01 k@235@01))))
  :pattern ((Seq_index br@188@01 j@234@01) (Seq_index br@188@01 k@235@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/third_party/testDepParLoopBack.vpr@67@12@67@106|)))
(declare-const i@236@01 Int)
(push) ; 4
; [eval] 0 <= i && i < len
; [eval] 0 <= i
(push) ; 5
; [then-branch: 110 | !(0 <= i@236@01) | live]
; [else-branch: 110 | 0 <= i@236@01 | live]
(push) ; 6
; [then-branch: 110 | !(0 <= i@236@01)]
(assert (not (<= 0 i@236@01)))
(pop) ; 6
(push) ; 6
; [else-branch: 110 | 0 <= i@236@01]
(assert (<= 0 i@236@01))
; [eval] i < len
(pop) ; 6
(pop) ; 5
; Joined path conditions
; Joined path conditions
(assert (or (<= 0 i@236@01) (not (<= 0 i@236@01))))
(assert (and (<= 0 i@236@01) (< i@236@01 len@190@01)))
; [eval] br[i]
(push) ; 5
(assert (not (>= i@236@01 0)))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(push) ; 5
(assert (not (< i@236@01 (Seq_length br@188@01))))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(pop) ; 4
(declare-fun inv@237@01 ($Ref) Int)
(declare-fun img@238@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
(assert (forall ((i@236@01 Int)) (!
  (=>
    (and (<= 0 i@236@01) (< i@236@01 len@190@01))
    (or (<= 0 i@236@01) (not (<= 0 i@236@01))))
  :pattern ((Seq_index br@188@01 i@236@01))
  :qid |Ref__Integer_value-aux|)))
; Check receiver injectivity
(push) ; 4
(assert (not (forall ((i1@236@01 Int) (i2@236@01 Int)) (!
  (=>
    (and
      (and (<= 0 i1@236@01) (< i1@236@01 len@190@01))
      (and (<= 0 i2@236@01) (< i2@236@01 len@190@01))
      (= (Seq_index br@188@01 i1@236@01) (Seq_index br@188@01 i2@236@01)))
    (= i1@236@01 i2@236@01))
  
  :qid |Ref__Integer_value-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((i@236@01 Int)) (!
  (=>
    (and (<= 0 i@236@01) (< i@236@01 len@190@01))
    (and
      (= (inv@237@01 (Seq_index br@188@01 i@236@01)) i@236@01)
      (img@238@01 (Seq_index br@188@01 i@236@01))))
  :pattern ((Seq_index br@188@01 i@236@01))
  :qid |Ref__Integer_value-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@238@01 r)
      (and (<= 0 (inv@237@01 r)) (< (inv@237@01 r) len@190@01)))
    (= (Seq_index br@188@01 (inv@237@01 r)) r))
  :pattern ((inv@237@01 r))
  :qid |Ref__Integer_value-fctOfInv|)))
(push) ; 4
(set-option :timeout 10)
(assert (not (forall ((i@236@01 Int)) (!
  (= (Seq_index br@188@01 i@236@01) (Seq_index cr@189@01 i@236@01))
  
  :qid |quant-u-9469|))))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; Precomputing data for removing quantified permissions
(define-fun pTaken@239@01 ((r $Ref)) $Perm
  (ite
    (and
      (and (<= 0 (inv@237@01 r)) (< (inv@237@01 r) len@190@01))
      (img@238@01 r)
      (= r (Seq_index br@188@01 (inv@237@01 r))))
    ($Perm.min
      (ite
        (and
          (img@201@01 r)
          (and (<= 0 (inv@200@01 r)) (< (inv@200@01 r) len@190@01)))
        (/ (to_real 1) (to_real 2))
        $Perm.No)
      (/ (to_real 1) (to_real 2)))
    $Perm.No))
(define-fun pTaken@240@01 ((r $Ref)) $Perm
  (ite
    (and
      (and (<= 0 (inv@237@01 r)) (< (inv@237@01 r) len@190@01))
      (img@238@01 r)
      (= r (Seq_index br@188@01 (inv@237@01 r))))
    ($Perm.min
      (ite
        (and
          (img@206@01 r)
          (and (<= 0 (inv@205@01 r)) (< (inv@205@01 r) len@190@01)))
        $Perm.Write
        $Perm.No)
      (- (/ (to_real 1) (to_real 2)) (pTaken@239@01 r)))
    $Perm.No))
; Done precomputing, updating quantified chunks
; State saturation: before repetition
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
          (img@201@01 r)
          (and (<= 0 (inv@200@01 r)) (< (inv@200@01 r) len@190@01)))
        (/ (to_real 1) (to_real 2))
        $Perm.No)
      (pTaken@239@01 r))
    $Perm.No)
  
  :qid |quant-u-9471|))))
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
      (and (<= 0 (inv@237@01 r)) (< (inv@237@01 r) len@190@01))
      (img@238@01 r)
      (= r (Seq_index br@188@01 (inv@237@01 r))))
    (= (- (/ (to_real 1) (to_real 2)) (pTaken@239@01 r)) $Perm.No))
  
  :qid |quant-u-9472|))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; Final check if taken enough permissions
; Done removing quantified permissions
; [eval] 0 < len ==> |cr| == len
; [eval] 0 < len
(set-option :timeout 0)
(push) ; 4
(push) ; 5
(set-option :timeout 10)
(assert (not (not (< 0 len@190@01))))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
; [then-branch: 111 | 0 < len@190@01 | live]
; [else-branch: 111 | !(0 < len@190@01) | dead]
(set-option :timeout 0)
(push) ; 5
; [then-branch: 111 | 0 < len@190@01]
; [eval] |cr| == len
; [eval] |cr|
(pop) ; 5
(pop) ; 4
; Joined path conditions
(push) ; 4
(assert (not (=> (< 0 len@190@01) (= (Seq_length cr@189@01) len@190@01))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(assert (=> (< 0 len@190@01) (= (Seq_length cr@189@01) len@190@01)))
; [eval] (forall j: Int, k: Int :: { cr[j], cr[k] } 0 <= j && (j < |cr| && (0 <= k && (k < |cr| && j != k))) ==> cr[j] != cr[k])
(declare-const j@241@01 Int)
(declare-const k@242@01 Int)
(push) ; 4
; [eval] 0 <= j && (j < |cr| && (0 <= k && (k < |cr| && j != k))) ==> cr[j] != cr[k]
; [eval] 0 <= j && (j < |cr| && (0 <= k && (k < |cr| && j != k)))
; [eval] 0 <= j
(push) ; 5
; [then-branch: 112 | !(0 <= j@241@01) | live]
; [else-branch: 112 | 0 <= j@241@01 | live]
(push) ; 6
; [then-branch: 112 | !(0 <= j@241@01)]
(assert (not (<= 0 j@241@01)))
(pop) ; 6
(push) ; 6
; [else-branch: 112 | 0 <= j@241@01]
(assert (<= 0 j@241@01))
; [eval] j < |cr|
; [eval] |cr|
(push) ; 7
; [then-branch: 113 | !(j@241@01 < |cr@189@01|) | live]
; [else-branch: 113 | j@241@01 < |cr@189@01| | live]
(push) ; 8
; [then-branch: 113 | !(j@241@01 < |cr@189@01|)]
(assert (not (< j@241@01 (Seq_length cr@189@01))))
(pop) ; 8
(push) ; 8
; [else-branch: 113 | j@241@01 < |cr@189@01|]
(assert (< j@241@01 (Seq_length cr@189@01)))
; [eval] 0 <= k
(push) ; 9
; [then-branch: 114 | !(0 <= k@242@01) | live]
; [else-branch: 114 | 0 <= k@242@01 | live]
(push) ; 10
; [then-branch: 114 | !(0 <= k@242@01)]
(assert (not (<= 0 k@242@01)))
(pop) ; 10
(push) ; 10
; [else-branch: 114 | 0 <= k@242@01]
(assert (<= 0 k@242@01))
; [eval] k < |cr|
; [eval] |cr|
(push) ; 11
; [then-branch: 115 | !(k@242@01 < |cr@189@01|) | live]
; [else-branch: 115 | k@242@01 < |cr@189@01| | live]
(push) ; 12
; [then-branch: 115 | !(k@242@01 < |cr@189@01|)]
(assert (not (< k@242@01 (Seq_length cr@189@01))))
(pop) ; 12
(push) ; 12
; [else-branch: 115 | k@242@01 < |cr@189@01|]
(assert (< k@242@01 (Seq_length cr@189@01)))
; [eval] j != k
(pop) ; 12
(pop) ; 11
; Joined path conditions
; Joined path conditions
(assert (or
  (< k@242@01 (Seq_length cr@189@01))
  (not (< k@242@01 (Seq_length cr@189@01)))))
(pop) ; 10
(pop) ; 9
; Joined path conditions
; Joined path conditions
(assert (=>
  (<= 0 k@242@01)
  (and
    (<= 0 k@242@01)
    (or
      (< k@242@01 (Seq_length cr@189@01))
      (not (< k@242@01 (Seq_length cr@189@01)))))))
(assert (or (<= 0 k@242@01) (not (<= 0 k@242@01))))
(pop) ; 8
(pop) ; 7
; Joined path conditions
; Joined path conditions
(assert (=>
  (< j@241@01 (Seq_length cr@189@01))
  (and
    (< j@241@01 (Seq_length cr@189@01))
    (=>
      (<= 0 k@242@01)
      (and
        (<= 0 k@242@01)
        (or
          (< k@242@01 (Seq_length cr@189@01))
          (not (< k@242@01 (Seq_length cr@189@01))))))
    (or (<= 0 k@242@01) (not (<= 0 k@242@01))))))
(assert (or
  (< j@241@01 (Seq_length cr@189@01))
  (not (< j@241@01 (Seq_length cr@189@01)))))
(pop) ; 6
(pop) ; 5
; Joined path conditions
; Joined path conditions
(assert (=>
  (<= 0 j@241@01)
  (and
    (<= 0 j@241@01)
    (=>
      (< j@241@01 (Seq_length cr@189@01))
      (and
        (< j@241@01 (Seq_length cr@189@01))
        (=>
          (<= 0 k@242@01)
          (and
            (<= 0 k@242@01)
            (or
              (< k@242@01 (Seq_length cr@189@01))
              (not (< k@242@01 (Seq_length cr@189@01))))))
        (or (<= 0 k@242@01) (not (<= 0 k@242@01)))))
    (or
      (< j@241@01 (Seq_length cr@189@01))
      (not (< j@241@01 (Seq_length cr@189@01)))))))
(assert (or (<= 0 j@241@01) (not (<= 0 j@241@01))))
(push) ; 5
; [then-branch: 116 | 0 <= j@241@01 && j@241@01 < |cr@189@01| && 0 <= k@242@01 && k@242@01 < |cr@189@01| && j@241@01 != k@242@01 | live]
; [else-branch: 116 | !(0 <= j@241@01 && j@241@01 < |cr@189@01| && 0 <= k@242@01 && k@242@01 < |cr@189@01| && j@241@01 != k@242@01) | live]
(push) ; 6
; [then-branch: 116 | 0 <= j@241@01 && j@241@01 < |cr@189@01| && 0 <= k@242@01 && k@242@01 < |cr@189@01| && j@241@01 != k@242@01]
(assert (and
  (<= 0 j@241@01)
  (and
    (< j@241@01 (Seq_length cr@189@01))
    (and
      (<= 0 k@242@01)
      (and (< k@242@01 (Seq_length cr@189@01)) (not (= j@241@01 k@242@01)))))))
; [eval] cr[j] != cr[k]
; [eval] cr[j]
(push) ; 7
(assert (not (>= j@241@01 0)))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
; [eval] cr[k]
(push) ; 7
(assert (not (>= k@242@01 0)))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(pop) ; 6
(push) ; 6
; [else-branch: 116 | !(0 <= j@241@01 && j@241@01 < |cr@189@01| && 0 <= k@242@01 && k@242@01 < |cr@189@01| && j@241@01 != k@242@01)]
(assert (not
  (and
    (<= 0 j@241@01)
    (and
      (< j@241@01 (Seq_length cr@189@01))
      (and
        (<= 0 k@242@01)
        (and (< k@242@01 (Seq_length cr@189@01)) (not (= j@241@01 k@242@01))))))))
(pop) ; 6
(pop) ; 5
; Joined path conditions
(assert (=>
  (and
    (<= 0 j@241@01)
    (and
      (< j@241@01 (Seq_length cr@189@01))
      (and
        (<= 0 k@242@01)
        (and (< k@242@01 (Seq_length cr@189@01)) (not (= j@241@01 k@242@01))))))
  (and
    (<= 0 j@241@01)
    (< j@241@01 (Seq_length cr@189@01))
    (<= 0 k@242@01)
    (< k@242@01 (Seq_length cr@189@01))
    (not (= j@241@01 k@242@01)))))
; Joined path conditions
(assert (or
  (not
    (and
      (<= 0 j@241@01)
      (and
        (< j@241@01 (Seq_length cr@189@01))
        (and
          (<= 0 k@242@01)
          (and (< k@242@01 (Seq_length cr@189@01)) (not (= j@241@01 k@242@01)))))))
  (and
    (<= 0 j@241@01)
    (and
      (< j@241@01 (Seq_length cr@189@01))
      (and
        (<= 0 k@242@01)
        (and (< k@242@01 (Seq_length cr@189@01)) (not (= j@241@01 k@242@01))))))))
(pop) ; 4
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall ((j@241@01 Int) (k@242@01 Int)) (!
  (and
    (=>
      (<= 0 j@241@01)
      (and
        (<= 0 j@241@01)
        (=>
          (< j@241@01 (Seq_length cr@189@01))
          (and
            (< j@241@01 (Seq_length cr@189@01))
            (=>
              (<= 0 k@242@01)
              (and
                (<= 0 k@242@01)
                (or
                  (< k@242@01 (Seq_length cr@189@01))
                  (not (< k@242@01 (Seq_length cr@189@01))))))
            (or (<= 0 k@242@01) (not (<= 0 k@242@01)))))
        (or
          (< j@241@01 (Seq_length cr@189@01))
          (not (< j@241@01 (Seq_length cr@189@01))))))
    (or (<= 0 j@241@01) (not (<= 0 j@241@01)))
    (=>
      (and
        (<= 0 j@241@01)
        (and
          (< j@241@01 (Seq_length cr@189@01))
          (and
            (<= 0 k@242@01)
            (and (< k@242@01 (Seq_length cr@189@01)) (not (= j@241@01 k@242@01))))))
      (and
        (<= 0 j@241@01)
        (< j@241@01 (Seq_length cr@189@01))
        (<= 0 k@242@01)
        (< k@242@01 (Seq_length cr@189@01))
        (not (= j@241@01 k@242@01))))
    (or
      (not
        (and
          (<= 0 j@241@01)
          (and
            (< j@241@01 (Seq_length cr@189@01))
            (and
              (<= 0 k@242@01)
              (and
                (< k@242@01 (Seq_length cr@189@01))
                (not (= j@241@01 k@242@01)))))))
      (and
        (<= 0 j@241@01)
        (and
          (< j@241@01 (Seq_length cr@189@01))
          (and
            (<= 0 k@242@01)
            (and (< k@242@01 (Seq_length cr@189@01)) (not (= j@241@01 k@242@01))))))))
  :pattern ((Seq_index cr@189@01 j@241@01) (Seq_index cr@189@01 k@242@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/third_party/testDepParLoopBack.vpr@70@12@70@106-aux|)))
(push) ; 4
(assert (not (forall ((j@241@01 Int) (k@242@01 Int)) (!
  (=>
    (and
      (<= 0 j@241@01)
      (and
        (< j@241@01 (Seq_length cr@189@01))
        (and
          (<= 0 k@242@01)
          (and (< k@242@01 (Seq_length cr@189@01)) (not (= j@241@01 k@242@01))))))
    (not (= (Seq_index cr@189@01 j@241@01) (Seq_index cr@189@01 k@242@01))))
  :pattern ((Seq_index cr@189@01 j@241@01) (Seq_index cr@189@01 k@242@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/third_party/testDepParLoopBack.vpr@70@12@70@106|))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(assert (forall ((j@241@01 Int) (k@242@01 Int)) (!
  (=>
    (and
      (<= 0 j@241@01)
      (and
        (< j@241@01 (Seq_length cr@189@01))
        (and
          (<= 0 k@242@01)
          (and (< k@242@01 (Seq_length cr@189@01)) (not (= j@241@01 k@242@01))))))
    (not (= (Seq_index cr@189@01 j@241@01) (Seq_index cr@189@01 k@242@01))))
  :pattern ((Seq_index cr@189@01 j@241@01) (Seq_index cr@189@01 k@242@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/third_party/testDepParLoopBack.vpr@70@12@70@106|)))
(declare-const i@243@01 Int)
(push) ; 4
; [eval] 0 <= i && i < len
; [eval] 0 <= i
(push) ; 5
; [then-branch: 117 | !(0 <= i@243@01) | live]
; [else-branch: 117 | 0 <= i@243@01 | live]
(push) ; 6
; [then-branch: 117 | !(0 <= i@243@01)]
(assert (not (<= 0 i@243@01)))
(pop) ; 6
(push) ; 6
; [else-branch: 117 | 0 <= i@243@01]
(assert (<= 0 i@243@01))
; [eval] i < len
(pop) ; 6
(pop) ; 5
; Joined path conditions
; Joined path conditions
(assert (or (<= 0 i@243@01) (not (<= 0 i@243@01))))
(assert (and (<= 0 i@243@01) (< i@243@01 len@190@01)))
; [eval] cr[i]
(push) ; 5
(assert (not (>= i@243@01 0)))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(push) ; 5
(assert (not (< i@243@01 (Seq_length cr@189@01))))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(pop) ; 4
(declare-fun inv@244@01 ($Ref) Int)
(declare-fun img@245@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
(assert (forall ((i@243@01 Int)) (!
  (=>
    (and (<= 0 i@243@01) (< i@243@01 len@190@01))
    (or (<= 0 i@243@01) (not (<= 0 i@243@01))))
  :pattern ((Seq_index cr@189@01 i@243@01))
  :qid |Ref__Integer_value-aux|)))
; Check receiver injectivity
(push) ; 4
(assert (not (forall ((i1@243@01 Int) (i2@243@01 Int)) (!
  (=>
    (and
      (and (<= 0 i1@243@01) (< i1@243@01 len@190@01))
      (and (<= 0 i2@243@01) (< i2@243@01 len@190@01))
      (= (Seq_index cr@189@01 i1@243@01) (Seq_index cr@189@01 i2@243@01)))
    (= i1@243@01 i2@243@01))
  
  :qid |Ref__Integer_value-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((i@243@01 Int)) (!
  (=>
    (and (<= 0 i@243@01) (< i@243@01 len@190@01))
    (and
      (= (inv@244@01 (Seq_index cr@189@01 i@243@01)) i@243@01)
      (img@245@01 (Seq_index cr@189@01 i@243@01))))
  :pattern ((Seq_index cr@189@01 i@243@01))
  :qid |Ref__Integer_value-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@245@01 r)
      (and (<= 0 (inv@244@01 r)) (< (inv@244@01 r) len@190@01)))
    (= (Seq_index cr@189@01 (inv@244@01 r)) r))
  :pattern ((inv@244@01 r))
  :qid |Ref__Integer_value-fctOfInv|)))
; Precomputing data for removing quantified permissions
(define-fun pTaken@246@01 ((r $Ref)) $Perm
  (ite
    (and
      (and (<= 0 (inv@244@01 r)) (< (inv@244@01 r) len@190@01))
      (img@245@01 r)
      (= r (Seq_index cr@189@01 (inv@244@01 r))))
    ($Perm.min
      (ite
        (and
          (img@206@01 r)
          (and (<= 0 (inv@205@01 r)) (< (inv@205@01 r) len@190@01)))
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
          (img@206@01 r)
          (and (<= 0 (inv@205@01 r)) (< (inv@205@01 r) len@190@01)))
        $Perm.Write
        $Perm.No)
      (pTaken@246@01 r))
    $Perm.No)
  
  :qid |quant-u-9475|))))
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
      (and (<= 0 (inv@244@01 r)) (< (inv@244@01 r) len@190@01))
      (img@245@01 r)
      (= r (Seq_index cr@189@01 (inv@244@01 r))))
    (= (- $Perm.Write (pTaken@246@01 r)) $Perm.No))
  
  :qid |quant-u-9476|))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; Final check if taken enough permissions
; Done removing quantified permissions
(declare-const $t@247@01 $Snap)
(assert (= $t@247@01 ($Snap.combine ($Snap.first $t@247@01) ($Snap.second $t@247@01))))
(assert (= ($Snap.first $t@247@01) $Snap.unit))
; [eval] 0 < len ==> |ar| == len
; [eval] 0 < len
(set-option :timeout 0)
(push) ; 4
(push) ; 5
(set-option :timeout 10)
(assert (not (not (< 0 len@190@01))))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
; [then-branch: 118 | 0 < len@190@01 | live]
; [else-branch: 118 | !(0 < len@190@01) | dead]
(set-option :timeout 0)
(push) ; 5
; [then-branch: 118 | 0 < len@190@01]
; [eval] |ar| == len
; [eval] |ar|
(pop) ; 5
(pop) ; 4
; Joined path conditions
(assert (=
  ($Snap.second $t@247@01)
  ($Snap.combine
    ($Snap.first ($Snap.second $t@247@01))
    ($Snap.second ($Snap.second $t@247@01)))))
(declare-const i@248@01 Int)
(push) ; 4
; [eval] 0 <= i && i < len
; [eval] 0 <= i
(push) ; 5
; [then-branch: 119 | !(0 <= i@248@01) | live]
; [else-branch: 119 | 0 <= i@248@01 | live]
(push) ; 6
; [then-branch: 119 | !(0 <= i@248@01)]
(assert (not (<= 0 i@248@01)))
(pop) ; 6
(push) ; 6
; [else-branch: 119 | 0 <= i@248@01]
(assert (<= 0 i@248@01))
; [eval] i < len
(pop) ; 6
(pop) ; 5
; Joined path conditions
; Joined path conditions
(assert (or (<= 0 i@248@01) (not (<= 0 i@248@01))))
(assert (and (<= 0 i@248@01) (< i@248@01 len@190@01)))
; [eval] ar[i]
(push) ; 5
(assert (not (>= i@248@01 0)))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(push) ; 5
(assert (not (< i@248@01 (Seq_length ar@187@01))))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(pop) ; 4
(declare-fun inv@249@01 ($Ref) Int)
(declare-fun img@250@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
(assert (forall ((i@248@01 Int)) (!
  (=>
    (and (<= 0 i@248@01) (< i@248@01 len@190@01))
    (or (<= 0 i@248@01) (not (<= 0 i@248@01))))
  :pattern ((Seq_index ar@187@01 i@248@01))
  :qid |Ref__Integer_value-aux|)))
; Check receiver injectivity
(push) ; 4
(assert (not (forall ((i1@248@01 Int) (i2@248@01 Int)) (!
  (=>
    (and
      (and (<= 0 i1@248@01) (< i1@248@01 len@190@01))
      (and (<= 0 i2@248@01) (< i2@248@01 len@190@01))
      (= (Seq_index ar@187@01 i1@248@01) (Seq_index ar@187@01 i2@248@01)))
    (= i1@248@01 i2@248@01))
  
  :qid |Ref__Integer_value-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((i@248@01 Int)) (!
  (=>
    (and (<= 0 i@248@01) (< i@248@01 len@190@01))
    (and
      (= (inv@249@01 (Seq_index ar@187@01 i@248@01)) i@248@01)
      (img@250@01 (Seq_index ar@187@01 i@248@01))))
  :pattern ((Seq_index ar@187@01 i@248@01))
  :qid |quant-u-9478|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@250@01 r)
      (and (<= 0 (inv@249@01 r)) (< (inv@249@01 r) len@190@01)))
    (= (Seq_index ar@187@01 (inv@249@01 r)) r))
  :pattern ((inv@249@01 r))
  :qid |Ref__Integer_value-fctOfInv|)))
; Permissions are non-negative
; Field permissions are at most one
; Permission implies non-null receiver
(assert (forall ((i@248@01 Int)) (!
  (=>
    (and (<= 0 i@248@01) (< i@248@01 len@190@01))
    (not (= (Seq_index ar@187@01 i@248@01) $Ref.null)))
  :pattern ((Seq_index ar@187@01 i@248@01))
  :qid |Ref__Integer_value-permImpliesNonNull|)))
(assert (=
  ($Snap.second ($Snap.second $t@247@01))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second $t@247@01)))
    ($Snap.second ($Snap.second ($Snap.second $t@247@01))))))
(assert (= ($Snap.first ($Snap.second ($Snap.second $t@247@01))) $Snap.unit))
; [eval] 0 < len ==> |br| == len
; [eval] 0 < len
(push) ; 4
(push) ; 5
(set-option :timeout 10)
(assert (not (not (< 0 len@190@01))))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
; [then-branch: 120 | 0 < len@190@01 | live]
; [else-branch: 120 | !(0 < len@190@01) | dead]
(set-option :timeout 0)
(push) ; 5
; [then-branch: 120 | 0 < len@190@01]
; [eval] |br| == len
; [eval] |br|
(pop) ; 5
(pop) ; 4
; Joined path conditions
(assert (=
  ($Snap.second ($Snap.second ($Snap.second $t@247@01)))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@247@01))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@247@01)))))))
(declare-const i@251@01 Int)
(push) ; 4
; [eval] 0 <= i && i < len
; [eval] 0 <= i
(push) ; 5
; [then-branch: 121 | !(0 <= i@251@01) | live]
; [else-branch: 121 | 0 <= i@251@01 | live]
(push) ; 6
; [then-branch: 121 | !(0 <= i@251@01)]
(assert (not (<= 0 i@251@01)))
(pop) ; 6
(push) ; 6
; [else-branch: 121 | 0 <= i@251@01]
(assert (<= 0 i@251@01))
; [eval] i < len
(pop) ; 6
(pop) ; 5
; Joined path conditions
; Joined path conditions
(assert (or (<= 0 i@251@01) (not (<= 0 i@251@01))))
(assert (and (<= 0 i@251@01) (< i@251@01 len@190@01)))
; [eval] br[i]
(push) ; 5
(assert (not (>= i@251@01 0)))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(push) ; 5
(assert (not (< i@251@01 (Seq_length br@188@01))))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(pop) ; 4
(declare-fun inv@252@01 ($Ref) Int)
(declare-fun img@253@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
(assert (forall ((i@251@01 Int)) (!
  (=>
    (and (<= 0 i@251@01) (< i@251@01 len@190@01))
    (or (<= 0 i@251@01) (not (<= 0 i@251@01))))
  :pattern ((Seq_index br@188@01 i@251@01))
  :qid |Ref__Integer_value-aux|)))
; Check receiver injectivity
(push) ; 4
(assert (not (forall ((i1@251@01 Int) (i2@251@01 Int)) (!
  (=>
    (and
      (and (<= 0 i1@251@01) (< i1@251@01 len@190@01))
      (and (<= 0 i2@251@01) (< i2@251@01 len@190@01))
      (= (Seq_index br@188@01 i1@251@01) (Seq_index br@188@01 i2@251@01)))
    (= i1@251@01 i2@251@01))
  
  :qid |Ref__Integer_value-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((i@251@01 Int)) (!
  (=>
    (and (<= 0 i@251@01) (< i@251@01 len@190@01))
    (and
      (= (inv@252@01 (Seq_index br@188@01 i@251@01)) i@251@01)
      (img@253@01 (Seq_index br@188@01 i@251@01))))
  :pattern ((Seq_index br@188@01 i@251@01))
  :qid |quant-u-9480|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@253@01 r)
      (and (<= 0 (inv@252@01 r)) (< (inv@252@01 r) len@190@01)))
    (= (Seq_index br@188@01 (inv@252@01 r)) r))
  :pattern ((inv@252@01 r))
  :qid |Ref__Integer_value-fctOfInv|)))
; Permissions are non-negative
; Field permissions are at most one
; Permission implies non-null receiver
(assert (forall ((i@251@01 Int)) (!
  (=>
    (and (<= 0 i@251@01) (< i@251@01 len@190@01))
    (not (= (Seq_index br@188@01 i@251@01) $Ref.null)))
  :pattern ((Seq_index br@188@01 i@251@01))
  :qid |Ref__Integer_value-permImpliesNonNull|)))
(push) ; 4
(set-option :timeout 10)
(assert (not (forall ((r $Ref)) (!
  (and
    (= (Seq_index br@188@01 i@251@01) (Seq_index ar@187@01 i@248@01))
    (=
      (and
        (img@253@01 r)
        (and (<= 0 (inv@252@01 r)) (< (inv@252@01 r) len@190@01)))
      (and
        (img@250@01 r)
        (and (<= 0 (inv@249@01 r)) (< (inv@249@01 r) len@190@01)))))
  
  :qid |quant-u-9481|))))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@247@01))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@247@01)))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@247@01))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@247@01)))))
  $Snap.unit))
; [eval] 0 < len ==> |cr| == len
; [eval] 0 < len
(set-option :timeout 0)
(push) ; 4
(push) ; 5
(set-option :timeout 10)
(assert (not (not (< 0 len@190@01))))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
; [then-branch: 122 | 0 < len@190@01 | live]
; [else-branch: 122 | !(0 < len@190@01) | dead]
(set-option :timeout 0)
(push) ; 5
; [then-branch: 122 | 0 < len@190@01]
; [eval] |cr| == len
; [eval] |cr|
(pop) ; 5
(pop) ; 4
; Joined path conditions
(declare-const i@254@01 Int)
(push) ; 4
; [eval] 0 <= i && i < len
; [eval] 0 <= i
(push) ; 5
; [then-branch: 123 | !(0 <= i@254@01) | live]
; [else-branch: 123 | 0 <= i@254@01 | live]
(push) ; 6
; [then-branch: 123 | !(0 <= i@254@01)]
(assert (not (<= 0 i@254@01)))
(pop) ; 6
(push) ; 6
; [else-branch: 123 | 0 <= i@254@01]
(assert (<= 0 i@254@01))
; [eval] i < len
(pop) ; 6
(pop) ; 5
; Joined path conditions
; Joined path conditions
(assert (or (<= 0 i@254@01) (not (<= 0 i@254@01))))
(assert (and (<= 0 i@254@01) (< i@254@01 len@190@01)))
; [eval] cr[i]
(push) ; 5
(assert (not (>= i@254@01 0)))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(push) ; 5
(assert (not (< i@254@01 (Seq_length cr@189@01))))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(pop) ; 4
(declare-fun inv@255@01 ($Ref) Int)
(declare-fun img@256@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
(assert (forall ((i@254@01 Int)) (!
  (=>
    (and (<= 0 i@254@01) (< i@254@01 len@190@01))
    (or (<= 0 i@254@01) (not (<= 0 i@254@01))))
  :pattern ((Seq_index cr@189@01 i@254@01))
  :qid |Ref__Integer_value-aux|)))
; Check receiver injectivity
(push) ; 4
(assert (not (forall ((i1@254@01 Int) (i2@254@01 Int)) (!
  (=>
    (and
      (and (<= 0 i1@254@01) (< i1@254@01 len@190@01))
      (and (<= 0 i2@254@01) (< i2@254@01 len@190@01))
      (= (Seq_index cr@189@01 i1@254@01) (Seq_index cr@189@01 i2@254@01)))
    (= i1@254@01 i2@254@01))
  
  :qid |Ref__Integer_value-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((i@254@01 Int)) (!
  (=>
    (and (<= 0 i@254@01) (< i@254@01 len@190@01))
    (and
      (= (inv@255@01 (Seq_index cr@189@01 i@254@01)) i@254@01)
      (img@256@01 (Seq_index cr@189@01 i@254@01))))
  :pattern ((Seq_index cr@189@01 i@254@01))
  :qid |quant-u-9483|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@256@01 r)
      (and (<= 0 (inv@255@01 r)) (< (inv@255@01 r) len@190@01)))
    (= (Seq_index cr@189@01 (inv@255@01 r)) r))
  :pattern ((inv@255@01 r))
  :qid |Ref__Integer_value-fctOfInv|)))
; Permissions are non-negative
; Field permissions are at most one
; Permission implies non-null receiver
(assert (forall ((i@254@01 Int)) (!
  (=>
    (and (<= 0 i@254@01) (< i@254@01 len@190@01))
    (not (= (Seq_index cr@189@01 i@254@01) $Ref.null)))
  :pattern ((Seq_index cr@189@01 i@254@01))
  :qid |Ref__Integer_value-permImpliesNonNull|)))
(push) ; 4
(set-option :timeout 10)
(assert (not (forall ((r $Ref)) (!
  (and
    (= (Seq_index cr@189@01 i@254@01) (Seq_index br@188@01 i@251@01))
    (=
      (and
        (img@256@01 r)
        (and (<= 0 (inv@255@01 r)) (< (inv@255@01 r) len@190@01)))
      (and
        (img@253@01 r)
        (and (<= 0 (inv@252@01 r)) (< (inv@252@01 r) len@190@01)))))
  
  :qid |quant-u-9484|))))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not (forall ((r $Ref)) (!
  (and
    (= (Seq_index cr@189@01 i@254@01) (Seq_index ar@187@01 i@248@01))
    (=
      (and
        (img@256@01 r)
        (and (<= 0 (inv@255@01 r)) (< (inv@255@01 r) len@190@01)))
      (and
        (img@250@01 r)
        (and (<= 0 (inv@249@01 r)) (< (inv@249@01 r) len@190@01)))))
  
  :qid |quant-u-9485|))))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
; [eval] |ar| == len
; [eval] |ar|
(declare-const i@257@01 Int)
(set-option :timeout 0)
(push) ; 4
; [eval] 0 <= i && i < len
; [eval] 0 <= i
(push) ; 5
; [then-branch: 124 | !(0 <= i@257@01) | live]
; [else-branch: 124 | 0 <= i@257@01 | live]
(push) ; 6
; [then-branch: 124 | !(0 <= i@257@01)]
(assert (not (<= 0 i@257@01)))
(pop) ; 6
(push) ; 6
; [else-branch: 124 | 0 <= i@257@01]
(assert (<= 0 i@257@01))
; [eval] i < len
(pop) ; 6
(pop) ; 5
; Joined path conditions
; Joined path conditions
(assert (or (<= 0 i@257@01) (not (<= 0 i@257@01))))
(assert (and (<= 0 i@257@01) (< i@257@01 len@190@01)))
; [eval] ar[i]
(push) ; 5
(assert (not (>= i@257@01 0)))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(push) ; 5
(assert (not (< i@257@01 (Seq_length ar@187@01))))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(pop) ; 4
(declare-fun inv@258@01 ($Ref) Int)
(declare-fun img@259@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
(assert (forall ((i@257@01 Int)) (!
  (=>
    (and (<= 0 i@257@01) (< i@257@01 len@190@01))
    (or (<= 0 i@257@01) (not (<= 0 i@257@01))))
  :pattern ((Seq_index ar@187@01 i@257@01))
  :qid |Ref__Integer_value-aux|)))
; Check receiver injectivity
(push) ; 4
(assert (not (forall ((i1@257@01 Int) (i2@257@01 Int)) (!
  (=>
    (and
      (and (<= 0 i1@257@01) (< i1@257@01 len@190@01))
      (and (<= 0 i2@257@01) (< i2@257@01 len@190@01))
      (= (Seq_index ar@187@01 i1@257@01) (Seq_index ar@187@01 i2@257@01)))
    (= i1@257@01 i2@257@01))
  
  :qid |Ref__Integer_value-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((i@257@01 Int)) (!
  (=>
    (and (<= 0 i@257@01) (< i@257@01 len@190@01))
    (and
      (= (inv@258@01 (Seq_index ar@187@01 i@257@01)) i@257@01)
      (img@259@01 (Seq_index ar@187@01 i@257@01))))
  :pattern ((Seq_index ar@187@01 i@257@01))
  :qid |Ref__Integer_value-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@259@01 r)
      (and (<= 0 (inv@258@01 r)) (< (inv@258@01 r) len@190@01)))
    (= (Seq_index ar@187@01 (inv@258@01 r)) r))
  :pattern ((inv@258@01 r))
  :qid |Ref__Integer_value-fctOfInv|)))
(push) ; 4
(set-option :timeout 10)
(assert (not (forall ((i@257@01 Int)) (!
  (= (Seq_index ar@187@01 i@257@01) (Seq_index br@188@01 i@257@01))
  
  :qid |quant-u-9487|))))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not (forall ((i@257@01 Int)) (!
  (= (Seq_index ar@187@01 i@257@01) (Seq_index cr@189@01 i@257@01))
  
  :qid |quant-u-9488|))))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; Precomputing data for removing quantified permissions
(define-fun pTaken@260@01 ((r $Ref)) $Perm
  (ite
    (and
      (and (<= 0 (inv@258@01 r)) (< (inv@258@01 r) len@190@01))
      (img@259@01 r)
      (= r (Seq_index ar@187@01 (inv@258@01 r))))
    ($Perm.min
      (ite
        (and
          (img@250@01 r)
          (and (<= 0 (inv@249@01 r)) (< (inv@249@01 r) len@190@01)))
        $Perm.Write
        $Perm.No)
      $Perm.Write)
    $Perm.No))
(define-fun pTaken@261@01 ((r $Ref)) $Perm
  (ite
    (and
      (and (<= 0 (inv@258@01 r)) (< (inv@258@01 r) len@190@01))
      (img@259@01 r)
      (= r (Seq_index ar@187@01 (inv@258@01 r))))
    ($Perm.min
      (ite
        (and
          (img@253@01 r)
          (and (<= 0 (inv@252@01 r)) (< (inv@252@01 r) len@190@01)))
        (/ (to_real 1) (to_real 2))
        $Perm.No)
      (- $Perm.Write (pTaken@260@01 r)))
    $Perm.No))
(define-fun pTaken@262@01 ((r $Ref)) $Perm
  (ite
    (and
      (and (<= 0 (inv@258@01 r)) (< (inv@258@01 r) len@190@01))
      (img@259@01 r)
      (= r (Seq_index ar@187@01 (inv@258@01 r))))
    ($Perm.min
      (ite
        (and
          (img@256@01 r)
          (and (<= 0 (inv@255@01 r)) (< (inv@255@01 r) len@190@01)))
        $Perm.Write
        $Perm.No)
      (- (- $Perm.Write (pTaken@260@01 r)) (pTaken@261@01 r)))
    $Perm.No))
; Done precomputing, updating quantified chunks
; State saturation: before repetition
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
          (img@250@01 r)
          (and (<= 0 (inv@249@01 r)) (< (inv@249@01 r) len@190@01)))
        $Perm.Write
        $Perm.No)
      (pTaken@260@01 r))
    $Perm.No)
  
  :qid |quant-u-9490|))))
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
      (and (<= 0 (inv@258@01 r)) (< (inv@258@01 r) len@190@01))
      (img@259@01 r)
      (= r (Seq_index ar@187@01 (inv@258@01 r))))
    (= (- $Perm.Write (pTaken@260@01 r)) $Perm.No))
  
  :qid |quant-u-9491|))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; Final check if taken enough permissions
; Done removing quantified permissions
; [eval] |br| == len
; [eval] |br|
(declare-const i@263@01 Int)
(set-option :timeout 0)
(push) ; 4
; [eval] 0 <= i && i < len
; [eval] 0 <= i
(push) ; 5
; [then-branch: 125 | !(0 <= i@263@01) | live]
; [else-branch: 125 | 0 <= i@263@01 | live]
(push) ; 6
; [then-branch: 125 | !(0 <= i@263@01)]
(assert (not (<= 0 i@263@01)))
(pop) ; 6
(push) ; 6
; [else-branch: 125 | 0 <= i@263@01]
(assert (<= 0 i@263@01))
; [eval] i < len
(pop) ; 6
(pop) ; 5
; Joined path conditions
; Joined path conditions
(assert (or (<= 0 i@263@01) (not (<= 0 i@263@01))))
(assert (and (<= 0 i@263@01) (< i@263@01 len@190@01)))
; [eval] br[i]
(push) ; 5
(assert (not (>= i@263@01 0)))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(push) ; 5
(assert (not (< i@263@01 (Seq_length br@188@01))))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(pop) ; 4
(declare-fun inv@264@01 ($Ref) Int)
(declare-fun img@265@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
(assert (forall ((i@263@01 Int)) (!
  (=>
    (and (<= 0 i@263@01) (< i@263@01 len@190@01))
    (or (<= 0 i@263@01) (not (<= 0 i@263@01))))
  :pattern ((Seq_index br@188@01 i@263@01))
  :qid |Ref__Integer_value-aux|)))
; Check receiver injectivity
(push) ; 4
(assert (not (forall ((i1@263@01 Int) (i2@263@01 Int)) (!
  (=>
    (and
      (and (<= 0 i1@263@01) (< i1@263@01 len@190@01))
      (and (<= 0 i2@263@01) (< i2@263@01 len@190@01))
      (= (Seq_index br@188@01 i1@263@01) (Seq_index br@188@01 i2@263@01)))
    (= i1@263@01 i2@263@01))
  
  :qid |Ref__Integer_value-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((i@263@01 Int)) (!
  (=>
    (and (<= 0 i@263@01) (< i@263@01 len@190@01))
    (and
      (= (inv@264@01 (Seq_index br@188@01 i@263@01)) i@263@01)
      (img@265@01 (Seq_index br@188@01 i@263@01))))
  :pattern ((Seq_index br@188@01 i@263@01))
  :qid |Ref__Integer_value-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@265@01 r)
      (and (<= 0 (inv@264@01 r)) (< (inv@264@01 r) len@190@01)))
    (= (Seq_index br@188@01 (inv@264@01 r)) r))
  :pattern ((inv@264@01 r))
  :qid |Ref__Integer_value-fctOfInv|)))
(push) ; 4
(set-option :timeout 10)
(assert (not (forall ((i@263@01 Int)) (!
  (= (Seq_index br@188@01 i@263@01) (Seq_index cr@189@01 i@263@01))
  
  :qid |quant-u-9493|))))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; Precomputing data for removing quantified permissions
(define-fun pTaken@266@01 ((r $Ref)) $Perm
  (ite
    (and
      (and (<= 0 (inv@264@01 r)) (< (inv@264@01 r) len@190@01))
      (img@265@01 r)
      (= r (Seq_index br@188@01 (inv@264@01 r))))
    ($Perm.min
      (ite
        (and
          (img@253@01 r)
          (and (<= 0 (inv@252@01 r)) (< (inv@252@01 r) len@190@01)))
        (/ (to_real 1) (to_real 2))
        $Perm.No)
      (/ (to_real 1) (to_real 2)))
    $Perm.No))
(define-fun pTaken@267@01 ((r $Ref)) $Perm
  (ite
    (and
      (and (<= 0 (inv@264@01 r)) (< (inv@264@01 r) len@190@01))
      (img@265@01 r)
      (= r (Seq_index br@188@01 (inv@264@01 r))))
    ($Perm.min
      (ite
        (and
          (img@256@01 r)
          (and (<= 0 (inv@255@01 r)) (< (inv@255@01 r) len@190@01)))
        $Perm.Write
        $Perm.No)
      (- (/ (to_real 1) (to_real 2)) (pTaken@266@01 r)))
    $Perm.No))
; Done precomputing, updating quantified chunks
; State saturation: before repetition
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
          (img@253@01 r)
          (and (<= 0 (inv@252@01 r)) (< (inv@252@01 r) len@190@01)))
        (/ (to_real 1) (to_real 2))
        $Perm.No)
      (pTaken@266@01 r))
    $Perm.No)
  
  :qid |quant-u-9495|))))
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
      (and (<= 0 (inv@264@01 r)) (< (inv@264@01 r) len@190@01))
      (img@265@01 r)
      (= r (Seq_index br@188@01 (inv@264@01 r))))
    (= (- (/ (to_real 1) (to_real 2)) (pTaken@266@01 r)) $Perm.No))
  
  :qid |quant-u-9496|))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; Final check if taken enough permissions
; Done removing quantified permissions
; [eval] |cr| == len
; [eval] |cr|
(declare-const i@268@01 Int)
(set-option :timeout 0)
(push) ; 4
; [eval] 0 <= i && i < len
; [eval] 0 <= i
(push) ; 5
; [then-branch: 126 | !(0 <= i@268@01) | live]
; [else-branch: 126 | 0 <= i@268@01 | live]
(push) ; 6
; [then-branch: 126 | !(0 <= i@268@01)]
(assert (not (<= 0 i@268@01)))
(pop) ; 6
(push) ; 6
; [else-branch: 126 | 0 <= i@268@01]
(assert (<= 0 i@268@01))
; [eval] i < len
(pop) ; 6
(pop) ; 5
; Joined path conditions
; Joined path conditions
(assert (or (<= 0 i@268@01) (not (<= 0 i@268@01))))
(assert (and (<= 0 i@268@01) (< i@268@01 len@190@01)))
; [eval] cr[i]
(push) ; 5
(assert (not (>= i@268@01 0)))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(push) ; 5
(assert (not (< i@268@01 (Seq_length cr@189@01))))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(pop) ; 4
(declare-fun inv@269@01 ($Ref) Int)
(declare-fun img@270@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
(assert (forall ((i@268@01 Int)) (!
  (=>
    (and (<= 0 i@268@01) (< i@268@01 len@190@01))
    (or (<= 0 i@268@01) (not (<= 0 i@268@01))))
  :pattern ((Seq_index cr@189@01 i@268@01))
  :qid |Ref__Integer_value-aux|)))
; Check receiver injectivity
(push) ; 4
(assert (not (forall ((i1@268@01 Int) (i2@268@01 Int)) (!
  (=>
    (and
      (and (<= 0 i1@268@01) (< i1@268@01 len@190@01))
      (and (<= 0 i2@268@01) (< i2@268@01 len@190@01))
      (= (Seq_index cr@189@01 i1@268@01) (Seq_index cr@189@01 i2@268@01)))
    (= i1@268@01 i2@268@01))
  
  :qid |Ref__Integer_value-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((i@268@01 Int)) (!
  (=>
    (and (<= 0 i@268@01) (< i@268@01 len@190@01))
    (and
      (= (inv@269@01 (Seq_index cr@189@01 i@268@01)) i@268@01)
      (img@270@01 (Seq_index cr@189@01 i@268@01))))
  :pattern ((Seq_index cr@189@01 i@268@01))
  :qid |Ref__Integer_value-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@270@01 r)
      (and (<= 0 (inv@269@01 r)) (< (inv@269@01 r) len@190@01)))
    (= (Seq_index cr@189@01 (inv@269@01 r)) r))
  :pattern ((inv@269@01 r))
  :qid |Ref__Integer_value-fctOfInv|)))
; Precomputing data for removing quantified permissions
(define-fun pTaken@271@01 ((r $Ref)) $Perm
  (ite
    (and
      (and (<= 0 (inv@269@01 r)) (< (inv@269@01 r) len@190@01))
      (img@270@01 r)
      (= r (Seq_index cr@189@01 (inv@269@01 r))))
    ($Perm.min
      (ite
        (and
          (img@256@01 r)
          (and (<= 0 (inv@255@01 r)) (< (inv@255@01 r) len@190@01)))
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
          (img@256@01 r)
          (and (<= 0 (inv@255@01 r)) (< (inv@255@01 r) len@190@01)))
        $Perm.Write
        $Perm.No)
      (pTaken@271@01 r))
    $Perm.No)
  
  :qid |quant-u-9499|))))
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
      (and (<= 0 (inv@269@01 r)) (< (inv@269@01 r) len@190@01))
      (img@270@01 r)
      (= r (Seq_index cr@189@01 (inv@269@01 r))))
    (= (- $Perm.Write (pTaken@271@01 r)) $Perm.No))
  
  :qid |quant-u-9500|))))
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
; [else-branch: 101 | !(0 < len@190@01)]
(assert (not (< 0 len@190@01)))
(declare-const i@272@01 Int)
(push) ; 4
; [eval] 1 <= i && i < (|ar| - 1 < len ? |ar| - 1 : len) + 1
; [eval] 1 <= i
(push) ; 5
; [then-branch: 127 | !(1 <= i@272@01) | live]
; [else-branch: 127 | 1 <= i@272@01 | live]
(push) ; 6
; [then-branch: 127 | !(1 <= i@272@01)]
(assert (not (<= 1 i@272@01)))
(pop) ; 6
(push) ; 6
; [else-branch: 127 | 1 <= i@272@01]
(assert (<= 1 i@272@01))
; [eval] i < (|ar| - 1 < len ? |ar| - 1 : len) + 1
; [eval] (|ar| - 1 < len ? |ar| - 1 : len) + 1
; [eval] (|ar| - 1 < len ? |ar| - 1 : len)
; [eval] |ar| - 1 < len
; [eval] |ar| - 1
; [eval] |ar|
(push) ; 7
(push) ; 8
(set-option :timeout 10)
(assert (not (not (< (- (Seq_length ar@187@01) 1) len@190@01))))
(check-sat)
; unknown
(pop) ; 8
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 8
(set-option :timeout 10)
(assert (not (< (- (Seq_length ar@187@01) 1) len@190@01)))
(check-sat)
; unsat
(pop) ; 8
; 0.00s
; (get-info :all-statistics)
; [then-branch: 128 | |ar@187@01| - 1 < len@190@01 | live]
; [else-branch: 128 | !(|ar@187@01| - 1 < len@190@01) | dead]
(set-option :timeout 0)
(push) ; 8
; [then-branch: 128 | |ar@187@01| - 1 < len@190@01]
(assert (< (- (Seq_length ar@187@01) 1) len@190@01))
; [eval] |ar| - 1
; [eval] |ar|
(pop) ; 8
(pop) ; 7
; Joined path conditions
(assert (< (- (Seq_length ar@187@01) 1) len@190@01))
(pop) ; 6
(pop) ; 5
; Joined path conditions
; Joined path conditions
(assert (=>
  (<= 1 i@272@01)
  (and (<= 1 i@272@01) (< (- (Seq_length ar@187@01) 1) len@190@01))))
(assert (or (<= 1 i@272@01) (not (<= 1 i@272@01))))
(assert (and (<= 1 i@272@01) (< i@272@01 (+ (- (Seq_length ar@187@01) 1) 1))))
; [eval] ar[i]
(push) ; 5
(assert (not (>= i@272@01 0)))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(push) ; 5
(assert (not (< i@272@01 (Seq_length ar@187@01))))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(pop) ; 4
(declare-fun inv@273@01 ($Ref) Int)
(declare-fun img@274@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
(assert (forall ((i@272@01 Int)) (!
  (=>
    (and (<= 1 i@272@01) (< i@272@01 (+ (- (Seq_length ar@187@01) 1) 1)))
    (and
      (=>
        (<= 1 i@272@01)
        (and (<= 1 i@272@01) (< (- (Seq_length ar@187@01) 1) len@190@01)))
      (or (<= 1 i@272@01) (not (<= 1 i@272@01)))))
  :pattern ((Seq_index ar@187@01 i@272@01))
  :qid |Ref__Integer_value-aux|)))
; Check receiver injectivity
(push) ; 4
(assert (not (forall ((i1@272@01 Int) (i2@272@01 Int)) (!
  (=>
    (and
      (and (<= 1 i1@272@01) (< i1@272@01 (+ (- (Seq_length ar@187@01) 1) 1)))
      (and (<= 1 i2@272@01) (< i2@272@01 (+ (- (Seq_length ar@187@01) 1) 1)))
      (= (Seq_index ar@187@01 i1@272@01) (Seq_index ar@187@01 i2@272@01)))
    (= i1@272@01 i2@272@01))
  
  :qid |Ref__Integer_value-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((i@272@01 Int)) (!
  (=>
    (and (<= 1 i@272@01) (< i@272@01 (+ (- (Seq_length ar@187@01) 1) 1)))
    (and
      (= (inv@273@01 (Seq_index ar@187@01 i@272@01)) i@272@01)
      (img@274@01 (Seq_index ar@187@01 i@272@01))))
  :pattern ((Seq_index ar@187@01 i@272@01))
  :qid |Ref__Integer_value-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@274@01 r)
      (and
        (<= 1 (inv@273@01 r))
        (< (inv@273@01 r) (+ (- (Seq_length ar@187@01) 1) 1))))
    (= (Seq_index ar@187@01 (inv@273@01 r)) r))
  :pattern ((inv@273@01 r))
  :qid |Ref__Integer_value-fctOfInv|)))
(push) ; 4
(set-option :timeout 10)
(assert (not (forall ((i@272@01 Int)) (!
  (= (Seq_index ar@187@01 i@272@01) (Seq_index cr@189@01 i@272@01))
  
  :qid |quant-u-9502|))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not (forall ((i@272@01 Int)) (!
  (= (Seq_index ar@187@01 i@272@01) (Seq_index br@188@01 i@272@01))
  
  :qid |quant-u-9503|))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; Precomputing data for removing quantified permissions
(define-fun pTaken@275@01 ((r $Ref)) $Perm
  (ite
    (and
      (and
        (<= 1 (inv@273@01 r))
        (< (inv@273@01 r) (+ (- (Seq_length ar@187@01) 1) 1)))
      (img@274@01 r)
      (= r (Seq_index ar@187@01 (inv@273@01 r))))
    ($Perm.min
      (ite
        (and
          (img@206@01 r)
          (and (<= 0 (inv@205@01 r)) (< (inv@205@01 r) len@190@01)))
        $Perm.Write
        $Perm.No)
      (/ (to_real 1) (to_real 2)))
    $Perm.No))
(define-fun pTaken@276@01 ((r $Ref)) $Perm
  (ite
    (and
      (and
        (<= 1 (inv@273@01 r))
        (< (inv@273@01 r) (+ (- (Seq_length ar@187@01) 1) 1)))
      (img@274@01 r)
      (= r (Seq_index ar@187@01 (inv@273@01 r))))
    ($Perm.min
      (ite
        (and
          (img@201@01 r)
          (and (<= 0 (inv@200@01 r)) (< (inv@200@01 r) len@190@01)))
        (/ (to_real 1) (to_real 2))
        $Perm.No)
      (- (/ (to_real 1) (to_real 2)) (pTaken@275@01 r)))
    $Perm.No))
(define-fun pTaken@277@01 ((r $Ref)) $Perm
  (ite
    (and
      (and
        (<= 1 (inv@273@01 r))
        (< (inv@273@01 r) (+ (- (Seq_length ar@187@01) 1) 1)))
      (img@274@01 r)
      (= r (Seq_index ar@187@01 (inv@273@01 r))))
    ($Perm.min
      (ite
        (and
          (img@196@01 r)
          (and (<= 0 (inv@195@01 r)) (< (inv@195@01 r) len@190@01)))
        (- $Perm.Write (pTaken@222@01 r))
        $Perm.No)
      (- (- (/ (to_real 1) (to_real 2)) (pTaken@275@01 r)) (pTaken@276@01 r)))
    $Perm.No))
; Done precomputing, updating quantified chunks
; State saturation: before repetition
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
          (img@206@01 r)
          (and (<= 0 (inv@205@01 r)) (< (inv@205@01 r) len@190@01)))
        $Perm.Write
        $Perm.No)
      (pTaken@275@01 r))
    $Perm.No)
  
  :qid |quant-u-9505|))))
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
      (and
        (<= 1 (inv@273@01 r))
        (< (inv@273@01 r) (+ (- (Seq_length ar@187@01) 1) 1)))
      (img@274@01 r)
      (= r (Seq_index ar@187@01 (inv@273@01 r))))
    (= (- (/ (to_real 1) (to_real 2)) (pTaken@275@01 r)) $Perm.No))
  
  :qid |quant-u-9506|))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; Final check if taken enough permissions
; Done removing quantified permissions
; [eval] 0 < len ==> |br| == len
; [eval] 0 < len
(set-option :timeout 0)
(push) ; 4
; [then-branch: 129 | 0 < len@190@01 | dead]
; [else-branch: 129 | !(0 < len@190@01) | live]
(push) ; 5
; [else-branch: 129 | !(0 < len@190@01)]
(pop) ; 5
(pop) ; 4
; Joined path conditions
; [eval] (forall j: Int, k: Int :: { br[j], br[k] } 0 <= j && (j < |br| && (0 <= k && (k < |br| && j != k))) ==> br[j] != br[k])
(declare-const j@278@01 Int)
(declare-const k@279@01 Int)
(push) ; 4
; [eval] 0 <= j && (j < |br| && (0 <= k && (k < |br| && j != k))) ==> br[j] != br[k]
; [eval] 0 <= j && (j < |br| && (0 <= k && (k < |br| && j != k)))
; [eval] 0 <= j
(push) ; 5
; [then-branch: 130 | !(0 <= j@278@01) | live]
; [else-branch: 130 | 0 <= j@278@01 | live]
(push) ; 6
; [then-branch: 130 | !(0 <= j@278@01)]
(assert (not (<= 0 j@278@01)))
(pop) ; 6
(push) ; 6
; [else-branch: 130 | 0 <= j@278@01]
(assert (<= 0 j@278@01))
; [eval] j < |br|
; [eval] |br|
(push) ; 7
; [then-branch: 131 | !(j@278@01 < |br@188@01|) | live]
; [else-branch: 131 | j@278@01 < |br@188@01| | live]
(push) ; 8
; [then-branch: 131 | !(j@278@01 < |br@188@01|)]
(assert (not (< j@278@01 (Seq_length br@188@01))))
(pop) ; 8
(push) ; 8
; [else-branch: 131 | j@278@01 < |br@188@01|]
(assert (< j@278@01 (Seq_length br@188@01)))
; [eval] 0 <= k
(push) ; 9
; [then-branch: 132 | !(0 <= k@279@01) | live]
; [else-branch: 132 | 0 <= k@279@01 | live]
(push) ; 10
; [then-branch: 132 | !(0 <= k@279@01)]
(assert (not (<= 0 k@279@01)))
(pop) ; 10
(push) ; 10
; [else-branch: 132 | 0 <= k@279@01]
(assert (<= 0 k@279@01))
; [eval] k < |br|
; [eval] |br|
(push) ; 11
; [then-branch: 133 | !(k@279@01 < |br@188@01|) | live]
; [else-branch: 133 | k@279@01 < |br@188@01| | live]
(push) ; 12
; [then-branch: 133 | !(k@279@01 < |br@188@01|)]
(assert (not (< k@279@01 (Seq_length br@188@01))))
(pop) ; 12
(push) ; 12
; [else-branch: 133 | k@279@01 < |br@188@01|]
(assert (< k@279@01 (Seq_length br@188@01)))
; [eval] j != k
(pop) ; 12
(pop) ; 11
; Joined path conditions
; Joined path conditions
(assert (or
  (< k@279@01 (Seq_length br@188@01))
  (not (< k@279@01 (Seq_length br@188@01)))))
(pop) ; 10
(pop) ; 9
; Joined path conditions
; Joined path conditions
(assert (=>
  (<= 0 k@279@01)
  (and
    (<= 0 k@279@01)
    (or
      (< k@279@01 (Seq_length br@188@01))
      (not (< k@279@01 (Seq_length br@188@01)))))))
(assert (or (<= 0 k@279@01) (not (<= 0 k@279@01))))
(pop) ; 8
(pop) ; 7
; Joined path conditions
; Joined path conditions
(assert (=>
  (< j@278@01 (Seq_length br@188@01))
  (and
    (< j@278@01 (Seq_length br@188@01))
    (=>
      (<= 0 k@279@01)
      (and
        (<= 0 k@279@01)
        (or
          (< k@279@01 (Seq_length br@188@01))
          (not (< k@279@01 (Seq_length br@188@01))))))
    (or (<= 0 k@279@01) (not (<= 0 k@279@01))))))
(assert (or
  (< j@278@01 (Seq_length br@188@01))
  (not (< j@278@01 (Seq_length br@188@01)))))
(pop) ; 6
(pop) ; 5
; Joined path conditions
; Joined path conditions
(assert (=>
  (<= 0 j@278@01)
  (and
    (<= 0 j@278@01)
    (=>
      (< j@278@01 (Seq_length br@188@01))
      (and
        (< j@278@01 (Seq_length br@188@01))
        (=>
          (<= 0 k@279@01)
          (and
            (<= 0 k@279@01)
            (or
              (< k@279@01 (Seq_length br@188@01))
              (not (< k@279@01 (Seq_length br@188@01))))))
        (or (<= 0 k@279@01) (not (<= 0 k@279@01)))))
    (or
      (< j@278@01 (Seq_length br@188@01))
      (not (< j@278@01 (Seq_length br@188@01)))))))
(assert (or (<= 0 j@278@01) (not (<= 0 j@278@01))))
(push) ; 5
; [then-branch: 134 | 0 <= j@278@01 && j@278@01 < |br@188@01| && 0 <= k@279@01 && k@279@01 < |br@188@01| && j@278@01 != k@279@01 | live]
; [else-branch: 134 | !(0 <= j@278@01 && j@278@01 < |br@188@01| && 0 <= k@279@01 && k@279@01 < |br@188@01| && j@278@01 != k@279@01) | live]
(push) ; 6
; [then-branch: 134 | 0 <= j@278@01 && j@278@01 < |br@188@01| && 0 <= k@279@01 && k@279@01 < |br@188@01| && j@278@01 != k@279@01]
(assert (and
  (<= 0 j@278@01)
  (and
    (< j@278@01 (Seq_length br@188@01))
    (and
      (<= 0 k@279@01)
      (and (< k@279@01 (Seq_length br@188@01)) (not (= j@278@01 k@279@01)))))))
; [eval] br[j] != br[k]
; [eval] br[j]
(push) ; 7
(assert (not (>= j@278@01 0)))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
; [eval] br[k]
(push) ; 7
(assert (not (>= k@279@01 0)))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(pop) ; 6
(push) ; 6
; [else-branch: 134 | !(0 <= j@278@01 && j@278@01 < |br@188@01| && 0 <= k@279@01 && k@279@01 < |br@188@01| && j@278@01 != k@279@01)]
(assert (not
  (and
    (<= 0 j@278@01)
    (and
      (< j@278@01 (Seq_length br@188@01))
      (and
        (<= 0 k@279@01)
        (and (< k@279@01 (Seq_length br@188@01)) (not (= j@278@01 k@279@01))))))))
(pop) ; 6
(pop) ; 5
; Joined path conditions
(assert (=>
  (and
    (<= 0 j@278@01)
    (and
      (< j@278@01 (Seq_length br@188@01))
      (and
        (<= 0 k@279@01)
        (and (< k@279@01 (Seq_length br@188@01)) (not (= j@278@01 k@279@01))))))
  (and
    (<= 0 j@278@01)
    (< j@278@01 (Seq_length br@188@01))
    (<= 0 k@279@01)
    (< k@279@01 (Seq_length br@188@01))
    (not (= j@278@01 k@279@01)))))
; Joined path conditions
(assert (or
  (not
    (and
      (<= 0 j@278@01)
      (and
        (< j@278@01 (Seq_length br@188@01))
        (and
          (<= 0 k@279@01)
          (and (< k@279@01 (Seq_length br@188@01)) (not (= j@278@01 k@279@01)))))))
  (and
    (<= 0 j@278@01)
    (and
      (< j@278@01 (Seq_length br@188@01))
      (and
        (<= 0 k@279@01)
        (and (< k@279@01 (Seq_length br@188@01)) (not (= j@278@01 k@279@01))))))))
(pop) ; 4
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall ((j@278@01 Int) (k@279@01 Int)) (!
  (and
    (=>
      (<= 0 j@278@01)
      (and
        (<= 0 j@278@01)
        (=>
          (< j@278@01 (Seq_length br@188@01))
          (and
            (< j@278@01 (Seq_length br@188@01))
            (=>
              (<= 0 k@279@01)
              (and
                (<= 0 k@279@01)
                (or
                  (< k@279@01 (Seq_length br@188@01))
                  (not (< k@279@01 (Seq_length br@188@01))))))
            (or (<= 0 k@279@01) (not (<= 0 k@279@01)))))
        (or
          (< j@278@01 (Seq_length br@188@01))
          (not (< j@278@01 (Seq_length br@188@01))))))
    (or (<= 0 j@278@01) (not (<= 0 j@278@01)))
    (=>
      (and
        (<= 0 j@278@01)
        (and
          (< j@278@01 (Seq_length br@188@01))
          (and
            (<= 0 k@279@01)
            (and (< k@279@01 (Seq_length br@188@01)) (not (= j@278@01 k@279@01))))))
      (and
        (<= 0 j@278@01)
        (< j@278@01 (Seq_length br@188@01))
        (<= 0 k@279@01)
        (< k@279@01 (Seq_length br@188@01))
        (not (= j@278@01 k@279@01))))
    (or
      (not
        (and
          (<= 0 j@278@01)
          (and
            (< j@278@01 (Seq_length br@188@01))
            (and
              (<= 0 k@279@01)
              (and
                (< k@279@01 (Seq_length br@188@01))
                (not (= j@278@01 k@279@01)))))))
      (and
        (<= 0 j@278@01)
        (and
          (< j@278@01 (Seq_length br@188@01))
          (and
            (<= 0 k@279@01)
            (and (< k@279@01 (Seq_length br@188@01)) (not (= j@278@01 k@279@01))))))))
  :pattern ((Seq_index br@188@01 j@278@01) (Seq_index br@188@01 k@279@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/third_party/testDepParLoopBack.vpr@67@12@67@106-aux|)))
(push) ; 4
(assert (not (forall ((j@278@01 Int) (k@279@01 Int)) (!
  (=>
    (and
      (<= 0 j@278@01)
      (and
        (< j@278@01 (Seq_length br@188@01))
        (and
          (<= 0 k@279@01)
          (and (< k@279@01 (Seq_length br@188@01)) (not (= j@278@01 k@279@01))))))
    (not (= (Seq_index br@188@01 j@278@01) (Seq_index br@188@01 k@279@01))))
  :pattern ((Seq_index br@188@01 j@278@01) (Seq_index br@188@01 k@279@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/third_party/testDepParLoopBack.vpr@67@12@67@106|))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(assert (forall ((j@278@01 Int) (k@279@01 Int)) (!
  (=>
    (and
      (<= 0 j@278@01)
      (and
        (< j@278@01 (Seq_length br@188@01))
        (and
          (<= 0 k@279@01)
          (and (< k@279@01 (Seq_length br@188@01)) (not (= j@278@01 k@279@01))))))
    (not (= (Seq_index br@188@01 j@278@01) (Seq_index br@188@01 k@279@01))))
  :pattern ((Seq_index br@188@01 j@278@01) (Seq_index br@188@01 k@279@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/third_party/testDepParLoopBack.vpr@67@12@67@106|)))
(declare-const i@280@01 Int)
(push) ; 4
; [eval] 0 <= i && i < len
; [eval] 0 <= i
(push) ; 5
; [then-branch: 135 | !(0 <= i@280@01) | live]
; [else-branch: 135 | 0 <= i@280@01 | live]
(push) ; 6
; [then-branch: 135 | !(0 <= i@280@01)]
(assert (not (<= 0 i@280@01)))
(pop) ; 6
(push) ; 6
; [else-branch: 135 | 0 <= i@280@01]
(assert (<= 0 i@280@01))
; [eval] i < len
(pop) ; 6
(pop) ; 5
; Joined path conditions
; Joined path conditions
(assert (or (<= 0 i@280@01) (not (<= 0 i@280@01))))
(assert (and (<= 0 i@280@01) (< i@280@01 len@190@01)))
; [eval] br[i]
(push) ; 5
(assert (not (>= i@280@01 0)))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(push) ; 5
(assert (not (< i@280@01 (Seq_length br@188@01))))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(pop) ; 4
(declare-fun inv@281@01 ($Ref) Int)
(declare-fun img@282@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
(assert (forall ((i@280@01 Int)) (!
  (=>
    (and (<= 0 i@280@01) (< i@280@01 len@190@01))
    (or (<= 0 i@280@01) (not (<= 0 i@280@01))))
  :pattern ((Seq_index br@188@01 i@280@01))
  :qid |Ref__Integer_value-aux|)))
; Check receiver injectivity
(push) ; 4
(assert (not (forall ((i1@280@01 Int) (i2@280@01 Int)) (!
  (=>
    (and
      (and (<= 0 i1@280@01) (< i1@280@01 len@190@01))
      (and (<= 0 i2@280@01) (< i2@280@01 len@190@01))
      (= (Seq_index br@188@01 i1@280@01) (Seq_index br@188@01 i2@280@01)))
    (= i1@280@01 i2@280@01))
  
  :qid |Ref__Integer_value-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((i@280@01 Int)) (!
  (=>
    (and (<= 0 i@280@01) (< i@280@01 len@190@01))
    (and
      (= (inv@281@01 (Seq_index br@188@01 i@280@01)) i@280@01)
      (img@282@01 (Seq_index br@188@01 i@280@01))))
  :pattern ((Seq_index br@188@01 i@280@01))
  :qid |Ref__Integer_value-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@282@01 r)
      (and (<= 0 (inv@281@01 r)) (< (inv@281@01 r) len@190@01)))
    (= (Seq_index br@188@01 (inv@281@01 r)) r))
  :pattern ((inv@281@01 r))
  :qid |Ref__Integer_value-fctOfInv|)))
(push) ; 4
(set-option :timeout 10)
(assert (not (forall ((i@280@01 Int)) (!
  (= (Seq_index br@188@01 i@280@01) (Seq_index ar@187@01 i@280@01))
  
  :qid |quant-u-9508|))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; Precomputing data for removing quantified permissions
(define-fun pTaken@283@01 ((r $Ref)) $Perm
  (ite
    (and
      (and (<= 0 (inv@281@01 r)) (< (inv@281@01 r) len@190@01))
      (img@282@01 r)
      (= r (Seq_index br@188@01 (inv@281@01 r))))
    ($Perm.min
      (ite
        (and
          (img@196@01 r)
          (and (<= 0 (inv@195@01 r)) (< (inv@195@01 r) len@190@01)))
        (- $Perm.Write (pTaken@222@01 r))
        $Perm.No)
      (/ (to_real 1) (to_real 2)))
    $Perm.No))
(define-fun pTaken@284@01 ((r $Ref)) $Perm
  (ite
    (and
      (and (<= 0 (inv@281@01 r)) (< (inv@281@01 r) len@190@01))
      (img@282@01 r)
      (= r (Seq_index br@188@01 (inv@281@01 r))))
    ($Perm.min
      (ite
        (and
          (img@201@01 r)
          (and (<= 0 (inv@200@01 r)) (< (inv@200@01 r) len@190@01)))
        (/ (to_real 1) (to_real 2))
        $Perm.No)
      (- (/ (to_real 1) (to_real 2)) (pTaken@283@01 r)))
    $Perm.No))
; Done precomputing, updating quantified chunks
; State saturation: before repetition
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
          (img@196@01 r)
          (and (<= 0 (inv@195@01 r)) (< (inv@195@01 r) len@190@01)))
        (- $Perm.Write (pTaken@222@01 r))
        $Perm.No)
      (pTaken@283@01 r))
    $Perm.No)
  
  :qid |quant-u-9510|))))
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
      (and (<= 0 (inv@281@01 r)) (< (inv@281@01 r) len@190@01))
      (img@282@01 r)
      (= r (Seq_index br@188@01 (inv@281@01 r))))
    (= (- (/ (to_real 1) (to_real 2)) (pTaken@283@01 r)) $Perm.No))
  
  :qid |quant-u-9511|))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; Final check if taken enough permissions
; Done removing quantified permissions
; [eval] 0 < len ==> |cr| == len
; [eval] 0 < len
(set-option :timeout 0)
(push) ; 4
; [then-branch: 136 | 0 < len@190@01 | dead]
; [else-branch: 136 | !(0 < len@190@01) | live]
(push) ; 5
; [else-branch: 136 | !(0 < len@190@01)]
(pop) ; 5
(pop) ; 4
; Joined path conditions
; [eval] (forall j: Int, k: Int :: { cr[j], cr[k] } 0 <= j && (j < |cr| && (0 <= k && (k < |cr| && j != k))) ==> cr[j] != cr[k])
(declare-const j@285@01 Int)
(declare-const k@286@01 Int)
(push) ; 4
; [eval] 0 <= j && (j < |cr| && (0 <= k && (k < |cr| && j != k))) ==> cr[j] != cr[k]
; [eval] 0 <= j && (j < |cr| && (0 <= k && (k < |cr| && j != k)))
; [eval] 0 <= j
(push) ; 5
; [then-branch: 137 | !(0 <= j@285@01) | live]
; [else-branch: 137 | 0 <= j@285@01 | live]
(push) ; 6
; [then-branch: 137 | !(0 <= j@285@01)]
(assert (not (<= 0 j@285@01)))
(pop) ; 6
(push) ; 6
; [else-branch: 137 | 0 <= j@285@01]
(assert (<= 0 j@285@01))
; [eval] j < |cr|
; [eval] |cr|
(push) ; 7
; [then-branch: 138 | !(j@285@01 < |cr@189@01|) | live]
; [else-branch: 138 | j@285@01 < |cr@189@01| | live]
(push) ; 8
; [then-branch: 138 | !(j@285@01 < |cr@189@01|)]
(assert (not (< j@285@01 (Seq_length cr@189@01))))
(pop) ; 8
(push) ; 8
; [else-branch: 138 | j@285@01 < |cr@189@01|]
(assert (< j@285@01 (Seq_length cr@189@01)))
; [eval] 0 <= k
(push) ; 9
; [then-branch: 139 | !(0 <= k@286@01) | live]
; [else-branch: 139 | 0 <= k@286@01 | live]
(push) ; 10
; [then-branch: 139 | !(0 <= k@286@01)]
(assert (not (<= 0 k@286@01)))
(pop) ; 10
(push) ; 10
; [else-branch: 139 | 0 <= k@286@01]
(assert (<= 0 k@286@01))
; [eval] k < |cr|
; [eval] |cr|
(push) ; 11
; [then-branch: 140 | !(k@286@01 < |cr@189@01|) | live]
; [else-branch: 140 | k@286@01 < |cr@189@01| | live]
(push) ; 12
; [then-branch: 140 | !(k@286@01 < |cr@189@01|)]
(assert (not (< k@286@01 (Seq_length cr@189@01))))
(pop) ; 12
(push) ; 12
; [else-branch: 140 | k@286@01 < |cr@189@01|]
(assert (< k@286@01 (Seq_length cr@189@01)))
; [eval] j != k
(pop) ; 12
(pop) ; 11
; Joined path conditions
; Joined path conditions
(assert (or
  (< k@286@01 (Seq_length cr@189@01))
  (not (< k@286@01 (Seq_length cr@189@01)))))
(pop) ; 10
(pop) ; 9
; Joined path conditions
; Joined path conditions
(assert (=>
  (<= 0 k@286@01)
  (and
    (<= 0 k@286@01)
    (or
      (< k@286@01 (Seq_length cr@189@01))
      (not (< k@286@01 (Seq_length cr@189@01)))))))
(assert (or (<= 0 k@286@01) (not (<= 0 k@286@01))))
(pop) ; 8
(pop) ; 7
; Joined path conditions
; Joined path conditions
(assert (=>
  (< j@285@01 (Seq_length cr@189@01))
  (and
    (< j@285@01 (Seq_length cr@189@01))
    (=>
      (<= 0 k@286@01)
      (and
        (<= 0 k@286@01)
        (or
          (< k@286@01 (Seq_length cr@189@01))
          (not (< k@286@01 (Seq_length cr@189@01))))))
    (or (<= 0 k@286@01) (not (<= 0 k@286@01))))))
(assert (or
  (< j@285@01 (Seq_length cr@189@01))
  (not (< j@285@01 (Seq_length cr@189@01)))))
(pop) ; 6
(pop) ; 5
; Joined path conditions
; Joined path conditions
(assert (=>
  (<= 0 j@285@01)
  (and
    (<= 0 j@285@01)
    (=>
      (< j@285@01 (Seq_length cr@189@01))
      (and
        (< j@285@01 (Seq_length cr@189@01))
        (=>
          (<= 0 k@286@01)
          (and
            (<= 0 k@286@01)
            (or
              (< k@286@01 (Seq_length cr@189@01))
              (not (< k@286@01 (Seq_length cr@189@01))))))
        (or (<= 0 k@286@01) (not (<= 0 k@286@01)))))
    (or
      (< j@285@01 (Seq_length cr@189@01))
      (not (< j@285@01 (Seq_length cr@189@01)))))))
(assert (or (<= 0 j@285@01) (not (<= 0 j@285@01))))
(push) ; 5
; [then-branch: 141 | 0 <= j@285@01 && j@285@01 < |cr@189@01| && 0 <= k@286@01 && k@286@01 < |cr@189@01| && j@285@01 != k@286@01 | live]
; [else-branch: 141 | !(0 <= j@285@01 && j@285@01 < |cr@189@01| && 0 <= k@286@01 && k@286@01 < |cr@189@01| && j@285@01 != k@286@01) | live]
(push) ; 6
; [then-branch: 141 | 0 <= j@285@01 && j@285@01 < |cr@189@01| && 0 <= k@286@01 && k@286@01 < |cr@189@01| && j@285@01 != k@286@01]
(assert (and
  (<= 0 j@285@01)
  (and
    (< j@285@01 (Seq_length cr@189@01))
    (and
      (<= 0 k@286@01)
      (and (< k@286@01 (Seq_length cr@189@01)) (not (= j@285@01 k@286@01)))))))
; [eval] cr[j] != cr[k]
; [eval] cr[j]
(push) ; 7
(assert (not (>= j@285@01 0)))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
; [eval] cr[k]
(push) ; 7
(assert (not (>= k@286@01 0)))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(pop) ; 6
(push) ; 6
; [else-branch: 141 | !(0 <= j@285@01 && j@285@01 < |cr@189@01| && 0 <= k@286@01 && k@286@01 < |cr@189@01| && j@285@01 != k@286@01)]
(assert (not
  (and
    (<= 0 j@285@01)
    (and
      (< j@285@01 (Seq_length cr@189@01))
      (and
        (<= 0 k@286@01)
        (and (< k@286@01 (Seq_length cr@189@01)) (not (= j@285@01 k@286@01))))))))
(pop) ; 6
(pop) ; 5
; Joined path conditions
(assert (=>
  (and
    (<= 0 j@285@01)
    (and
      (< j@285@01 (Seq_length cr@189@01))
      (and
        (<= 0 k@286@01)
        (and (< k@286@01 (Seq_length cr@189@01)) (not (= j@285@01 k@286@01))))))
  (and
    (<= 0 j@285@01)
    (< j@285@01 (Seq_length cr@189@01))
    (<= 0 k@286@01)
    (< k@286@01 (Seq_length cr@189@01))
    (not (= j@285@01 k@286@01)))))
; Joined path conditions
(assert (or
  (not
    (and
      (<= 0 j@285@01)
      (and
        (< j@285@01 (Seq_length cr@189@01))
        (and
          (<= 0 k@286@01)
          (and (< k@286@01 (Seq_length cr@189@01)) (not (= j@285@01 k@286@01)))))))
  (and
    (<= 0 j@285@01)
    (and
      (< j@285@01 (Seq_length cr@189@01))
      (and
        (<= 0 k@286@01)
        (and (< k@286@01 (Seq_length cr@189@01)) (not (= j@285@01 k@286@01))))))))
(pop) ; 4
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall ((j@285@01 Int) (k@286@01 Int)) (!
  (and
    (=>
      (<= 0 j@285@01)
      (and
        (<= 0 j@285@01)
        (=>
          (< j@285@01 (Seq_length cr@189@01))
          (and
            (< j@285@01 (Seq_length cr@189@01))
            (=>
              (<= 0 k@286@01)
              (and
                (<= 0 k@286@01)
                (or
                  (< k@286@01 (Seq_length cr@189@01))
                  (not (< k@286@01 (Seq_length cr@189@01))))))
            (or (<= 0 k@286@01) (not (<= 0 k@286@01)))))
        (or
          (< j@285@01 (Seq_length cr@189@01))
          (not (< j@285@01 (Seq_length cr@189@01))))))
    (or (<= 0 j@285@01) (not (<= 0 j@285@01)))
    (=>
      (and
        (<= 0 j@285@01)
        (and
          (< j@285@01 (Seq_length cr@189@01))
          (and
            (<= 0 k@286@01)
            (and (< k@286@01 (Seq_length cr@189@01)) (not (= j@285@01 k@286@01))))))
      (and
        (<= 0 j@285@01)
        (< j@285@01 (Seq_length cr@189@01))
        (<= 0 k@286@01)
        (< k@286@01 (Seq_length cr@189@01))
        (not (= j@285@01 k@286@01))))
    (or
      (not
        (and
          (<= 0 j@285@01)
          (and
            (< j@285@01 (Seq_length cr@189@01))
            (and
              (<= 0 k@286@01)
              (and
                (< k@286@01 (Seq_length cr@189@01))
                (not (= j@285@01 k@286@01)))))))
      (and
        (<= 0 j@285@01)
        (and
          (< j@285@01 (Seq_length cr@189@01))
          (and
            (<= 0 k@286@01)
            (and (< k@286@01 (Seq_length cr@189@01)) (not (= j@285@01 k@286@01))))))))
  :pattern ((Seq_index cr@189@01 j@285@01) (Seq_index cr@189@01 k@286@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/third_party/testDepParLoopBack.vpr@70@12@70@106-aux|)))
(push) ; 4
(assert (not (forall ((j@285@01 Int) (k@286@01 Int)) (!
  (=>
    (and
      (<= 0 j@285@01)
      (and
        (< j@285@01 (Seq_length cr@189@01))
        (and
          (<= 0 k@286@01)
          (and (< k@286@01 (Seq_length cr@189@01)) (not (= j@285@01 k@286@01))))))
    (not (= (Seq_index cr@189@01 j@285@01) (Seq_index cr@189@01 k@286@01))))
  :pattern ((Seq_index cr@189@01 j@285@01) (Seq_index cr@189@01 k@286@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/third_party/testDepParLoopBack.vpr@70@12@70@106|))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(assert (forall ((j@285@01 Int) (k@286@01 Int)) (!
  (=>
    (and
      (<= 0 j@285@01)
      (and
        (< j@285@01 (Seq_length cr@189@01))
        (and
          (<= 0 k@286@01)
          (and (< k@286@01 (Seq_length cr@189@01)) (not (= j@285@01 k@286@01))))))
    (not (= (Seq_index cr@189@01 j@285@01) (Seq_index cr@189@01 k@286@01))))
  :pattern ((Seq_index cr@189@01 j@285@01) (Seq_index cr@189@01 k@286@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/third_party/testDepParLoopBack.vpr@70@12@70@106|)))
(declare-const i@287@01 Int)
(push) ; 4
; [eval] 0 <= i && i < len
; [eval] 0 <= i
(push) ; 5
; [then-branch: 142 | !(0 <= i@287@01) | live]
; [else-branch: 142 | 0 <= i@287@01 | live]
(push) ; 6
; [then-branch: 142 | !(0 <= i@287@01)]
(assert (not (<= 0 i@287@01)))
(pop) ; 6
(push) ; 6
; [else-branch: 142 | 0 <= i@287@01]
(assert (<= 0 i@287@01))
; [eval] i < len
(pop) ; 6
(pop) ; 5
; Joined path conditions
; Joined path conditions
(assert (or (<= 0 i@287@01) (not (<= 0 i@287@01))))
(assert (and (<= 0 i@287@01) (< i@287@01 len@190@01)))
; [eval] cr[i]
(push) ; 5
(assert (not (>= i@287@01 0)))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(push) ; 5
(assert (not (< i@287@01 (Seq_length cr@189@01))))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(pop) ; 4
(declare-fun inv@288@01 ($Ref) Int)
(declare-fun img@289@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
(assert (forall ((i@287@01 Int)) (!
  (=>
    (and (<= 0 i@287@01) (< i@287@01 len@190@01))
    (or (<= 0 i@287@01) (not (<= 0 i@287@01))))
  :pattern ((Seq_index cr@189@01 i@287@01))
  :qid |Ref__Integer_value-aux|)))
; Check receiver injectivity
(push) ; 4
(assert (not (forall ((i1@287@01 Int) (i2@287@01 Int)) (!
  (=>
    (and
      (and (<= 0 i1@287@01) (< i1@287@01 len@190@01))
      (and (<= 0 i2@287@01) (< i2@287@01 len@190@01))
      (= (Seq_index cr@189@01 i1@287@01) (Seq_index cr@189@01 i2@287@01)))
    (= i1@287@01 i2@287@01))
  
  :qid |Ref__Integer_value-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((i@287@01 Int)) (!
  (=>
    (and (<= 0 i@287@01) (< i@287@01 len@190@01))
    (and
      (= (inv@288@01 (Seq_index cr@189@01 i@287@01)) i@287@01)
      (img@289@01 (Seq_index cr@189@01 i@287@01))))
  :pattern ((Seq_index cr@189@01 i@287@01))
  :qid |Ref__Integer_value-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@289@01 r)
      (and (<= 0 (inv@288@01 r)) (< (inv@288@01 r) len@190@01)))
    (= (Seq_index cr@189@01 (inv@288@01 r)) r))
  :pattern ((inv@288@01 r))
  :qid |Ref__Integer_value-fctOfInv|)))
(push) ; 4
(set-option :timeout 10)
(assert (not (forall ((i@287@01 Int)) (!
  (= (Seq_index cr@189@01 i@287@01) (Seq_index br@188@01 i@287@01))
  
  :qid |quant-u-9513|))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; Precomputing data for removing quantified permissions
(define-fun pTaken@290@01 ((r $Ref)) $Perm
  (ite
    (and
      (and (<= 0 (inv@288@01 r)) (< (inv@288@01 r) len@190@01))
      (img@289@01 r)
      (= r (Seq_index cr@189@01 (inv@288@01 r))))
    ($Perm.min
      (ite
        (and
          (img@201@01 r)
          (and (<= 0 (inv@200@01 r)) (< (inv@200@01 r) len@190@01)))
        (/ (to_real 1) (to_real 2))
        $Perm.No)
      $Perm.Write)
    $Perm.No))
; Done precomputing, updating quantified chunks
; State saturation: before repetition
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
          (img@201@01 r)
          (and (<= 0 (inv@200@01 r)) (< (inv@200@01 r) len@190@01)))
        (/ (to_real 1) (to_real 2))
        $Perm.No)
      (pTaken@290@01 r))
    $Perm.No)
  
  :qid |quant-u-9515|))))
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
      (and (<= 0 (inv@288@01 r)) (< (inv@288@01 r) len@190@01))
      (img@289@01 r)
      (= r (Seq_index cr@189@01 (inv@288@01 r))))
    (= (- $Perm.Write (pTaken@290@01 r)) $Perm.No))
  
  :qid |quant-u-9516|))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; Final check if taken enough permissions
; Done removing quantified permissions
(declare-const $t@291@01 $Snap)
(assert (= $t@291@01 ($Snap.combine ($Snap.first $t@291@01) ($Snap.second $t@291@01))))
(assert (= ($Snap.first $t@291@01) $Snap.unit))
; [eval] 0 < len ==> |ar| == len
; [eval] 0 < len
(set-option :timeout 0)
(push) ; 4
; [then-branch: 143 | 0 < len@190@01 | dead]
; [else-branch: 143 | !(0 < len@190@01) | live]
(push) ; 5
; [else-branch: 143 | !(0 < len@190@01)]
(pop) ; 5
(pop) ; 4
; Joined path conditions
(assert (=
  ($Snap.second $t@291@01)
  ($Snap.combine
    ($Snap.first ($Snap.second $t@291@01))
    ($Snap.second ($Snap.second $t@291@01)))))
(declare-const i@292@01 Int)
(push) ; 4
; [eval] 0 <= i && i < len
; [eval] 0 <= i
(push) ; 5
; [then-branch: 144 | !(0 <= i@292@01) | live]
; [else-branch: 144 | 0 <= i@292@01 | live]
(push) ; 6
; [then-branch: 144 | !(0 <= i@292@01)]
(assert (not (<= 0 i@292@01)))
(pop) ; 6
(push) ; 6
; [else-branch: 144 | 0 <= i@292@01]
(assert (<= 0 i@292@01))
; [eval] i < len
(pop) ; 6
(pop) ; 5
; Joined path conditions
; Joined path conditions
(assert (or (<= 0 i@292@01) (not (<= 0 i@292@01))))
(assert (and (<= 0 i@292@01) (< i@292@01 len@190@01)))
; [eval] ar[i]
(push) ; 5
(assert (not (>= i@292@01 0)))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(push) ; 5
(assert (not (< i@292@01 (Seq_length ar@187@01))))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(pop) ; 4
(declare-fun inv@293@01 ($Ref) Int)
(declare-fun img@294@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
(assert (forall ((i@292@01 Int)) (!
  (=>
    (and (<= 0 i@292@01) (< i@292@01 len@190@01))
    (or (<= 0 i@292@01) (not (<= 0 i@292@01))))
  :pattern ((Seq_index ar@187@01 i@292@01))
  :qid |Ref__Integer_value-aux|)))
; Check receiver injectivity
(push) ; 4
(assert (not (forall ((i1@292@01 Int) (i2@292@01 Int)) (!
  (=>
    (and
      (and (<= 0 i1@292@01) (< i1@292@01 len@190@01))
      (and (<= 0 i2@292@01) (< i2@292@01 len@190@01))
      (= (Seq_index ar@187@01 i1@292@01) (Seq_index ar@187@01 i2@292@01)))
    (= i1@292@01 i2@292@01))
  
  :qid |Ref__Integer_value-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((i@292@01 Int)) (!
  (=>
    (and (<= 0 i@292@01) (< i@292@01 len@190@01))
    (and
      (= (inv@293@01 (Seq_index ar@187@01 i@292@01)) i@292@01)
      (img@294@01 (Seq_index ar@187@01 i@292@01))))
  :pattern ((Seq_index ar@187@01 i@292@01))
  :qid |quant-u-9518|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@294@01 r)
      (and (<= 0 (inv@293@01 r)) (< (inv@293@01 r) len@190@01)))
    (= (Seq_index ar@187@01 (inv@293@01 r)) r))
  :pattern ((inv@293@01 r))
  :qid |Ref__Integer_value-fctOfInv|)))
; Permissions are non-negative
; Field permissions are at most one
; Permission implies non-null receiver
(assert (forall ((i@292@01 Int)) (!
  (=>
    (and (<= 0 i@292@01) (< i@292@01 len@190@01))
    (not (= (Seq_index ar@187@01 i@292@01) $Ref.null)))
  :pattern ((Seq_index ar@187@01 i@292@01))
  :qid |Ref__Integer_value-permImpliesNonNull|)))
(assert (=
  ($Snap.second ($Snap.second $t@291@01))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second $t@291@01)))
    ($Snap.second ($Snap.second ($Snap.second $t@291@01))))))
(assert (= ($Snap.first ($Snap.second ($Snap.second $t@291@01))) $Snap.unit))
; [eval] 0 < len ==> |br| == len
; [eval] 0 < len
(push) ; 4
; [then-branch: 145 | 0 < len@190@01 | dead]
; [else-branch: 145 | !(0 < len@190@01) | live]
(push) ; 5
; [else-branch: 145 | !(0 < len@190@01)]
(pop) ; 5
(pop) ; 4
; Joined path conditions
(assert (=
  ($Snap.second ($Snap.second ($Snap.second $t@291@01)))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@291@01))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@291@01)))))))
(declare-const i@295@01 Int)
(push) ; 4
; [eval] 0 <= i && i < len
; [eval] 0 <= i
(push) ; 5
; [then-branch: 146 | !(0 <= i@295@01) | live]
; [else-branch: 146 | 0 <= i@295@01 | live]
(push) ; 6
; [then-branch: 146 | !(0 <= i@295@01)]
(assert (not (<= 0 i@295@01)))
(pop) ; 6
(push) ; 6
; [else-branch: 146 | 0 <= i@295@01]
(assert (<= 0 i@295@01))
; [eval] i < len
(pop) ; 6
(pop) ; 5
; Joined path conditions
; Joined path conditions
(assert (or (<= 0 i@295@01) (not (<= 0 i@295@01))))
(assert (and (<= 0 i@295@01) (< i@295@01 len@190@01)))
; [eval] br[i]
(push) ; 5
(assert (not (>= i@295@01 0)))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(push) ; 5
(assert (not (< i@295@01 (Seq_length br@188@01))))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(pop) ; 4
(declare-fun inv@296@01 ($Ref) Int)
(declare-fun img@297@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
(assert (forall ((i@295@01 Int)) (!
  (=>
    (and (<= 0 i@295@01) (< i@295@01 len@190@01))
    (or (<= 0 i@295@01) (not (<= 0 i@295@01))))
  :pattern ((Seq_index br@188@01 i@295@01))
  :qid |Ref__Integer_value-aux|)))
; Check receiver injectivity
(push) ; 4
(assert (not (forall ((i1@295@01 Int) (i2@295@01 Int)) (!
  (=>
    (and
      (and (<= 0 i1@295@01) (< i1@295@01 len@190@01))
      (and (<= 0 i2@295@01) (< i2@295@01 len@190@01))
      (= (Seq_index br@188@01 i1@295@01) (Seq_index br@188@01 i2@295@01)))
    (= i1@295@01 i2@295@01))
  
  :qid |Ref__Integer_value-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((i@295@01 Int)) (!
  (=>
    (and (<= 0 i@295@01) (< i@295@01 len@190@01))
    (and
      (= (inv@296@01 (Seq_index br@188@01 i@295@01)) i@295@01)
      (img@297@01 (Seq_index br@188@01 i@295@01))))
  :pattern ((Seq_index br@188@01 i@295@01))
  :qid |quant-u-9520|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@297@01 r)
      (and (<= 0 (inv@296@01 r)) (< (inv@296@01 r) len@190@01)))
    (= (Seq_index br@188@01 (inv@296@01 r)) r))
  :pattern ((inv@296@01 r))
  :qid |Ref__Integer_value-fctOfInv|)))
; Permissions are non-negative
; Field permissions are at most one
; Permission implies non-null receiver
(assert (forall ((i@295@01 Int)) (!
  (=>
    (and (<= 0 i@295@01) (< i@295@01 len@190@01))
    (not (= (Seq_index br@188@01 i@295@01) $Ref.null)))
  :pattern ((Seq_index br@188@01 i@295@01))
  :qid |Ref__Integer_value-permImpliesNonNull|)))
(push) ; 4
(set-option :timeout 10)
(assert (not (forall ((r $Ref)) (!
  (and
    (= (Seq_index br@188@01 i@295@01) (Seq_index ar@187@01 i@292@01))
    (=
      (and
        (img@297@01 r)
        (and (<= 0 (inv@296@01 r)) (< (inv@296@01 r) len@190@01)))
      (and
        (img@294@01 r)
        (and (<= 0 (inv@293@01 r)) (< (inv@293@01 r) len@190@01)))))
  
  :qid |quant-u-9521|))))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@291@01))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@291@01)))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@291@01))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@291@01)))))
  $Snap.unit))
; [eval] 0 < len ==> |cr| == len
; [eval] 0 < len
(set-option :timeout 0)
(push) ; 4
; [then-branch: 147 | 0 < len@190@01 | dead]
; [else-branch: 147 | !(0 < len@190@01) | live]
(push) ; 5
; [else-branch: 147 | !(0 < len@190@01)]
(pop) ; 5
(pop) ; 4
; Joined path conditions
(declare-const i@298@01 Int)
(push) ; 4
; [eval] 0 <= i && i < len
; [eval] 0 <= i
(push) ; 5
; [then-branch: 148 | !(0 <= i@298@01) | live]
; [else-branch: 148 | 0 <= i@298@01 | live]
(push) ; 6
; [then-branch: 148 | !(0 <= i@298@01)]
(assert (not (<= 0 i@298@01)))
(pop) ; 6
(push) ; 6
; [else-branch: 148 | 0 <= i@298@01]
(assert (<= 0 i@298@01))
; [eval] i < len
(pop) ; 6
(pop) ; 5
; Joined path conditions
; Joined path conditions
(assert (or (<= 0 i@298@01) (not (<= 0 i@298@01))))
(assert (and (<= 0 i@298@01) (< i@298@01 len@190@01)))
; [eval] cr[i]
(push) ; 5
(assert (not (>= i@298@01 0)))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(push) ; 5
(assert (not (< i@298@01 (Seq_length cr@189@01))))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(pop) ; 4
(declare-fun inv@299@01 ($Ref) Int)
(declare-fun img@300@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
(assert (forall ((i@298@01 Int)) (!
  (=>
    (and (<= 0 i@298@01) (< i@298@01 len@190@01))
    (or (<= 0 i@298@01) (not (<= 0 i@298@01))))
  :pattern ((Seq_index cr@189@01 i@298@01))
  :qid |Ref__Integer_value-aux|)))
; Check receiver injectivity
(push) ; 4
(assert (not (forall ((i1@298@01 Int) (i2@298@01 Int)) (!
  (=>
    (and
      (and (<= 0 i1@298@01) (< i1@298@01 len@190@01))
      (and (<= 0 i2@298@01) (< i2@298@01 len@190@01))
      (= (Seq_index cr@189@01 i1@298@01) (Seq_index cr@189@01 i2@298@01)))
    (= i1@298@01 i2@298@01))
  
  :qid |Ref__Integer_value-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((i@298@01 Int)) (!
  (=>
    (and (<= 0 i@298@01) (< i@298@01 len@190@01))
    (and
      (= (inv@299@01 (Seq_index cr@189@01 i@298@01)) i@298@01)
      (img@300@01 (Seq_index cr@189@01 i@298@01))))
  :pattern ((Seq_index cr@189@01 i@298@01))
  :qid |quant-u-9523|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@300@01 r)
      (and (<= 0 (inv@299@01 r)) (< (inv@299@01 r) len@190@01)))
    (= (Seq_index cr@189@01 (inv@299@01 r)) r))
  :pattern ((inv@299@01 r))
  :qid |Ref__Integer_value-fctOfInv|)))
; Permissions are non-negative
; Field permissions are at most one
; Permission implies non-null receiver
(assert (forall ((i@298@01 Int)) (!
  (=>
    (and (<= 0 i@298@01) (< i@298@01 len@190@01))
    (not (= (Seq_index cr@189@01 i@298@01) $Ref.null)))
  :pattern ((Seq_index cr@189@01 i@298@01))
  :qid |Ref__Integer_value-permImpliesNonNull|)))
(push) ; 4
(set-option :timeout 10)
(assert (not (forall ((r $Ref)) (!
  (and
    (= (Seq_index cr@189@01 i@298@01) (Seq_index br@188@01 i@295@01))
    (=
      (and
        (img@300@01 r)
        (and (<= 0 (inv@299@01 r)) (< (inv@299@01 r) len@190@01)))
      (and
        (img@297@01 r)
        (and (<= 0 (inv@296@01 r)) (< (inv@296@01 r) len@190@01)))))
  
  :qid |quant-u-9524|))))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not (forall ((r $Ref)) (!
  (and
    (= (Seq_index cr@189@01 i@298@01) (Seq_index ar@187@01 i@292@01))
    (=
      (and
        (img@300@01 r)
        (and (<= 0 (inv@299@01 r)) (< (inv@299@01 r) len@190@01)))
      (and
        (img@294@01 r)
        (and (<= 0 (inv@293@01 r)) (< (inv@293@01 r) len@190@01)))))
  
  :qid |quant-u-9525|))))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
; [eval] |ar| == len
; [eval] |ar|
(declare-const i@301@01 Int)
(set-option :timeout 0)
(push) ; 4
; [eval] 0 <= i && i < len
; [eval] 0 <= i
(push) ; 5
; [then-branch: 149 | !(0 <= i@301@01) | live]
; [else-branch: 149 | 0 <= i@301@01 | live]
(push) ; 6
; [then-branch: 149 | !(0 <= i@301@01)]
(assert (not (<= 0 i@301@01)))
(pop) ; 6
(push) ; 6
; [else-branch: 149 | 0 <= i@301@01]
(assert (<= 0 i@301@01))
; [eval] i < len
(pop) ; 6
(pop) ; 5
; Joined path conditions
; Joined path conditions
(assert (or (<= 0 i@301@01) (not (<= 0 i@301@01))))
(assert (and (<= 0 i@301@01) (< i@301@01 len@190@01)))
; [eval] ar[i]
(push) ; 5
(assert (not (>= i@301@01 0)))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(push) ; 5
(assert (not (< i@301@01 (Seq_length ar@187@01))))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(pop) ; 4
(declare-fun inv@302@01 ($Ref) Int)
(declare-fun img@303@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
(assert (forall ((i@301@01 Int)) (!
  (=>
    (and (<= 0 i@301@01) (< i@301@01 len@190@01))
    (or (<= 0 i@301@01) (not (<= 0 i@301@01))))
  :pattern ((Seq_index ar@187@01 i@301@01))
  :qid |Ref__Integer_value-aux|)))
; Check receiver injectivity
(push) ; 4
(assert (not (forall ((i1@301@01 Int) (i2@301@01 Int)) (!
  (=>
    (and
      (and (<= 0 i1@301@01) (< i1@301@01 len@190@01))
      (and (<= 0 i2@301@01) (< i2@301@01 len@190@01))
      (= (Seq_index ar@187@01 i1@301@01) (Seq_index ar@187@01 i2@301@01)))
    (= i1@301@01 i2@301@01))
  
  :qid |Ref__Integer_value-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((i@301@01 Int)) (!
  (=>
    (and (<= 0 i@301@01) (< i@301@01 len@190@01))
    (and
      (= (inv@302@01 (Seq_index ar@187@01 i@301@01)) i@301@01)
      (img@303@01 (Seq_index ar@187@01 i@301@01))))
  :pattern ((Seq_index ar@187@01 i@301@01))
  :qid |Ref__Integer_value-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@303@01 r)
      (and (<= 0 (inv@302@01 r)) (< (inv@302@01 r) len@190@01)))
    (= (Seq_index ar@187@01 (inv@302@01 r)) r))
  :pattern ((inv@302@01 r))
  :qid |Ref__Integer_value-fctOfInv|)))
(push) ; 4
(set-option :timeout 10)
(assert (not (forall ((i@301@01 Int)) (!
  (= (Seq_index ar@187@01 i@301@01) (Seq_index br@188@01 i@301@01))
  
  :qid |quant-u-9527|))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not (forall ((i@301@01 Int)) (!
  (= (Seq_index ar@187@01 i@301@01) (Seq_index cr@189@01 i@301@01))
  
  :qid |quant-u-9528|))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; Precomputing data for removing quantified permissions
(define-fun pTaken@304@01 ((r $Ref)) $Perm
  (ite
    (and
      (and (<= 0 (inv@302@01 r)) (< (inv@302@01 r) len@190@01))
      (img@303@01 r)
      (= r (Seq_index ar@187@01 (inv@302@01 r))))
    ($Perm.min
      (ite
        (and
          (img@294@01 r)
          (and (<= 0 (inv@293@01 r)) (< (inv@293@01 r) len@190@01)))
        $Perm.Write
        $Perm.No)
      $Perm.Write)
    $Perm.No))
(define-fun pTaken@305@01 ((r $Ref)) $Perm
  (ite
    (and
      (and (<= 0 (inv@302@01 r)) (< (inv@302@01 r) len@190@01))
      (img@303@01 r)
      (= r (Seq_index ar@187@01 (inv@302@01 r))))
    ($Perm.min
      (ite
        (and
          (img@297@01 r)
          (and (<= 0 (inv@296@01 r)) (< (inv@296@01 r) len@190@01)))
        (/ (to_real 1) (to_real 2))
        $Perm.No)
      (- $Perm.Write (pTaken@304@01 r)))
    $Perm.No))
(define-fun pTaken@306@01 ((r $Ref)) $Perm
  (ite
    (and
      (and (<= 0 (inv@302@01 r)) (< (inv@302@01 r) len@190@01))
      (img@303@01 r)
      (= r (Seq_index ar@187@01 (inv@302@01 r))))
    ($Perm.min
      (ite
        (and
          (img@300@01 r)
          (and (<= 0 (inv@299@01 r)) (< (inv@299@01 r) len@190@01)))
        $Perm.Write
        $Perm.No)
      (- (- $Perm.Write (pTaken@304@01 r)) (pTaken@305@01 r)))
    $Perm.No))
; Done precomputing, updating quantified chunks
; State saturation: before repetition
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
          (img@294@01 r)
          (and (<= 0 (inv@293@01 r)) (< (inv@293@01 r) len@190@01)))
        $Perm.Write
        $Perm.No)
      (pTaken@304@01 r))
    $Perm.No)
  
  :qid |quant-u-9530|))))
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
      (and (<= 0 (inv@302@01 r)) (< (inv@302@01 r) len@190@01))
      (img@303@01 r)
      (= r (Seq_index ar@187@01 (inv@302@01 r))))
    (= (- $Perm.Write (pTaken@304@01 r)) $Perm.No))
  
  :qid |quant-u-9531|))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; Final check if taken enough permissions
; Done removing quantified permissions
; [eval] |br| == len
; [eval] |br|
(declare-const i@307@01 Int)
(set-option :timeout 0)
(push) ; 4
; [eval] 0 <= i && i < len
; [eval] 0 <= i
(push) ; 5
; [then-branch: 150 | !(0 <= i@307@01) | live]
; [else-branch: 150 | 0 <= i@307@01 | live]
(push) ; 6
; [then-branch: 150 | !(0 <= i@307@01)]
(assert (not (<= 0 i@307@01)))
(pop) ; 6
(push) ; 6
; [else-branch: 150 | 0 <= i@307@01]
(assert (<= 0 i@307@01))
; [eval] i < len
(pop) ; 6
(pop) ; 5
; Joined path conditions
; Joined path conditions
(assert (or (<= 0 i@307@01) (not (<= 0 i@307@01))))
(assert (and (<= 0 i@307@01) (< i@307@01 len@190@01)))
; [eval] br[i]
(push) ; 5
(assert (not (>= i@307@01 0)))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(push) ; 5
(assert (not (< i@307@01 (Seq_length br@188@01))))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(pop) ; 4
(declare-fun inv@308@01 ($Ref) Int)
(declare-fun img@309@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
(assert (forall ((i@307@01 Int)) (!
  (=>
    (and (<= 0 i@307@01) (< i@307@01 len@190@01))
    (or (<= 0 i@307@01) (not (<= 0 i@307@01))))
  :pattern ((Seq_index br@188@01 i@307@01))
  :qid |Ref__Integer_value-aux|)))
; Check receiver injectivity
(push) ; 4
(assert (not (forall ((i1@307@01 Int) (i2@307@01 Int)) (!
  (=>
    (and
      (and (<= 0 i1@307@01) (< i1@307@01 len@190@01))
      (and (<= 0 i2@307@01) (< i2@307@01 len@190@01))
      (= (Seq_index br@188@01 i1@307@01) (Seq_index br@188@01 i2@307@01)))
    (= i1@307@01 i2@307@01))
  
  :qid |Ref__Integer_value-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((i@307@01 Int)) (!
  (=>
    (and (<= 0 i@307@01) (< i@307@01 len@190@01))
    (and
      (= (inv@308@01 (Seq_index br@188@01 i@307@01)) i@307@01)
      (img@309@01 (Seq_index br@188@01 i@307@01))))
  :pattern ((Seq_index br@188@01 i@307@01))
  :qid |Ref__Integer_value-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@309@01 r)
      (and (<= 0 (inv@308@01 r)) (< (inv@308@01 r) len@190@01)))
    (= (Seq_index br@188@01 (inv@308@01 r)) r))
  :pattern ((inv@308@01 r))
  :qid |Ref__Integer_value-fctOfInv|)))
(push) ; 4
(set-option :timeout 10)
(assert (not (forall ((i@307@01 Int)) (!
  (= (Seq_index br@188@01 i@307@01) (Seq_index cr@189@01 i@307@01))
  
  :qid |quant-u-9533|))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; Precomputing data for removing quantified permissions
(define-fun pTaken@310@01 ((r $Ref)) $Perm
  (ite
    (and
      (and (<= 0 (inv@308@01 r)) (< (inv@308@01 r) len@190@01))
      (img@309@01 r)
      (= r (Seq_index br@188@01 (inv@308@01 r))))
    ($Perm.min
      (ite
        (and
          (img@300@01 r)
          (and (<= 0 (inv@299@01 r)) (< (inv@299@01 r) len@190@01)))
        $Perm.Write
        $Perm.No)
      (/ (to_real 1) (to_real 2)))
    $Perm.No))
(define-fun pTaken@311@01 ((r $Ref)) $Perm
  (ite
    (and
      (and (<= 0 (inv@308@01 r)) (< (inv@308@01 r) len@190@01))
      (img@309@01 r)
      (= r (Seq_index br@188@01 (inv@308@01 r))))
    ($Perm.min
      (ite
        (and
          (img@297@01 r)
          (and (<= 0 (inv@296@01 r)) (< (inv@296@01 r) len@190@01)))
        (/ (to_real 1) (to_real 2))
        $Perm.No)
      (- (/ (to_real 1) (to_real 2)) (pTaken@310@01 r)))
    $Perm.No))
; Done precomputing, updating quantified chunks
; State saturation: before repetition
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
          (img@300@01 r)
          (and (<= 0 (inv@299@01 r)) (< (inv@299@01 r) len@190@01)))
        $Perm.Write
        $Perm.No)
      (pTaken@310@01 r))
    $Perm.No)
  
  :qid |quant-u-9535|))))
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
      (and (<= 0 (inv@308@01 r)) (< (inv@308@01 r) len@190@01))
      (img@309@01 r)
      (= r (Seq_index br@188@01 (inv@308@01 r))))
    (= (- (/ (to_real 1) (to_real 2)) (pTaken@310@01 r)) $Perm.No))
  
  :qid |quant-u-9536|))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; Final check if taken enough permissions
; Done removing quantified permissions
; [eval] |cr| == len
; [eval] |cr|
(declare-const i@312@01 Int)
(set-option :timeout 0)
(push) ; 4
; [eval] 0 <= i && i < len
; [eval] 0 <= i
(push) ; 5
; [then-branch: 151 | !(0 <= i@312@01) | live]
; [else-branch: 151 | 0 <= i@312@01 | live]
(push) ; 6
; [then-branch: 151 | !(0 <= i@312@01)]
(assert (not (<= 0 i@312@01)))
(pop) ; 6
(push) ; 6
; [else-branch: 151 | 0 <= i@312@01]
(assert (<= 0 i@312@01))
; [eval] i < len
(pop) ; 6
(pop) ; 5
; Joined path conditions
; Joined path conditions
(assert (or (<= 0 i@312@01) (not (<= 0 i@312@01))))
(assert (and (<= 0 i@312@01) (< i@312@01 len@190@01)))
; [eval] cr[i]
(push) ; 5
(assert (not (>= i@312@01 0)))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(push) ; 5
(assert (not (< i@312@01 (Seq_length cr@189@01))))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(pop) ; 4
(declare-fun inv@313@01 ($Ref) Int)
(declare-fun img@314@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
(assert (forall ((i@312@01 Int)) (!
  (=>
    (and (<= 0 i@312@01) (< i@312@01 len@190@01))
    (or (<= 0 i@312@01) (not (<= 0 i@312@01))))
  :pattern ((Seq_index cr@189@01 i@312@01))
  :qid |Ref__Integer_value-aux|)))
; Check receiver injectivity
(push) ; 4
(assert (not (forall ((i1@312@01 Int) (i2@312@01 Int)) (!
  (=>
    (and
      (and (<= 0 i1@312@01) (< i1@312@01 len@190@01))
      (and (<= 0 i2@312@01) (< i2@312@01 len@190@01))
      (= (Seq_index cr@189@01 i1@312@01) (Seq_index cr@189@01 i2@312@01)))
    (= i1@312@01 i2@312@01))
  
  :qid |Ref__Integer_value-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((i@312@01 Int)) (!
  (=>
    (and (<= 0 i@312@01) (< i@312@01 len@190@01))
    (and
      (= (inv@313@01 (Seq_index cr@189@01 i@312@01)) i@312@01)
      (img@314@01 (Seq_index cr@189@01 i@312@01))))
  :pattern ((Seq_index cr@189@01 i@312@01))
  :qid |Ref__Integer_value-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@314@01 r)
      (and (<= 0 (inv@313@01 r)) (< (inv@313@01 r) len@190@01)))
    (= (Seq_index cr@189@01 (inv@313@01 r)) r))
  :pattern ((inv@313@01 r))
  :qid |Ref__Integer_value-fctOfInv|)))
(push) ; 4
(set-option :timeout 10)
(assert (not (forall ((i@312@01 Int)) (!
  (= (Seq_index cr@189@01 i@312@01) (Seq_index br@188@01 i@312@01))
  
  :qid |quant-u-9538|))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; Precomputing data for removing quantified permissions
(define-fun pTaken@315@01 ((r $Ref)) $Perm
  (ite
    (and
      (and (<= 0 (inv@313@01 r)) (< (inv@313@01 r) len@190@01))
      (img@314@01 r)
      (= r (Seq_index cr@189@01 (inv@313@01 r))))
    ($Perm.min
      (ite
        (and
          (img@297@01 r)
          (and (<= 0 (inv@296@01 r)) (< (inv@296@01 r) len@190@01)))
        (/ (to_real 1) (to_real 2))
        $Perm.No)
      $Perm.Write)
    $Perm.No))
; Done precomputing, updating quantified chunks
; State saturation: before repetition
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
          (img@297@01 r)
          (and (<= 0 (inv@296@01 r)) (< (inv@296@01 r) len@190@01)))
        (/ (to_real 1) (to_real 2))
        $Perm.No)
      (pTaken@315@01 r))
    $Perm.No)
  
  :qid |quant-u-9540|))))
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
      (and (<= 0 (inv@313@01 r)) (< (inv@313@01 r) len@190@01))
      (img@314@01 r)
      (= r (Seq_index cr@189@01 (inv@313@01 r))))
    (= (- $Perm.Write (pTaken@315@01 r)) $Perm.No))
  
  :qid |quant-u-9541|))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; Final check if taken enough permissions
; Done removing quantified permissions
(pop) ; 3
(pop) ; 2
(pop) ; 1
