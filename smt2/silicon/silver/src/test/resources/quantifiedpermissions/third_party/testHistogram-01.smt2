(get-info :version)
; (:version "4.12.1")
; Started: 2025-01-13 12:32:24
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
(declare-fun count_array ($Snap Int Int Seq<$Ref> Int) Int)
(declare-fun count_array%limited ($Snap Int Int Seq<$Ref> Int) Int)
(declare-fun count_array%stateless (Int Int Seq<$Ref> Int) Bool)
(declare-fun count_array%precondition ($Snap Int Int Seq<$Ref> Int) Bool)
(declare-fun Ref__multidim_index_2 ($Snap Int Int Int Int) Int)
(declare-fun Ref__multidim_index_2%limited ($Snap Int Int Int Int) Int)
(declare-fun Ref__multidim_index_2%stateless (Int Int Int Int) Bool)
(declare-fun Ref__multidim_index_2%precondition ($Snap Int Int Int Int) Bool)
(declare-fun sum_square ($Snap Int Int Int Int Int Int Seq<$Ref>) Int)
(declare-fun sum_square%limited ($Snap Int Int Int Int Int Int Seq<$Ref>) Int)
(declare-fun sum_square%stateless (Int Int Int Int Int Int Seq<$Ref>) Bool)
(declare-fun sum_square%precondition ($Snap Int Int Int Int Int Int Seq<$Ref>) Bool)
(declare-fun sum_array ($Snap Int Int Int Seq<$Ref>) Int)
(declare-fun sum_array%limited ($Snap Int Int Int Seq<$Ref>) Int)
(declare-fun sum_array%stateless (Int Int Int Seq<$Ref>) Bool)
(declare-fun sum_array%precondition ($Snap Int Int Int Seq<$Ref>) Bool)
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
(declare-fun $k@44@00 () $Perm)
(declare-fun inv@45@00 ($Snap Int Int Int Int Int Int Seq<$Ref> Int $Ref) Int)
(declare-fun img@46@00 ($Snap Int Int Int Int Int Int Seq<$Ref> Int $Ref) Bool)
(declare-fun $k@50@00 () $Perm)
(declare-fun inv@51@00 ($Snap Int Int Int Int Int Int Seq<$Ref> Int $Ref) Int)
(declare-fun img@52@00 ($Snap Int Int Int Int Int Int Seq<$Ref> Int $Ref) Bool)
(declare-fun sm@53@00 ($Snap Int Int Int Int Int Int Seq<$Ref> Int) $FVF<Ref__Integer_value>)
(declare-fun $k@57@00 () $Perm)
(declare-fun inv@58@00 ($Snap Int Int Seq<$Ref> Int $Ref) Int)
(declare-fun img@59@00 ($Snap Int Int Seq<$Ref> Int $Ref) Bool)
(declare-fun $k@63@00 () $Perm)
(declare-fun inv@64@00 ($Snap Int Int Seq<$Ref> Int $Ref) Int)
(declare-fun img@65@00 ($Snap Int Int Seq<$Ref> Int $Ref) Bool)
(declare-fun sm@66@00 ($Snap Int Int Seq<$Ref> Int) $FVF<Ref__Integer_value>)
(declare-fun $k@71@00 () $Perm)
(declare-fun inv@72@00 ($Snap Int Int Int Int Int Int Seq<$Ref> $Ref) Int)
(declare-fun img@73@00 ($Snap Int Int Int Int Int Int Seq<$Ref> $Ref) Bool)
(declare-fun $k@77@00 () $Perm)
(declare-fun inv@78@00 ($Snap Int Int Int Int Int Int Seq<$Ref> $Ref) Int)
(declare-fun img@79@00 ($Snap Int Int Int Int Int Int Seq<$Ref> $Ref) Bool)
(declare-fun sm@80@00 ($Snap Int Int Int Int Int Int Seq<$Ref>) $FVF<Ref__Integer_value>)
(declare-fun $k@84@00 () $Perm)
(declare-fun inv@85@00 ($Snap Int Int Int Seq<$Ref> $Ref) Int)
(declare-fun img@86@00 ($Snap Int Int Int Seq<$Ref> $Ref) Bool)
(declare-fun $k@90@00 () $Perm)
(declare-fun inv@91@00 ($Snap Int Int Int Seq<$Ref> $Ref) Int)
(declare-fun img@92@00 ($Snap Int Int Int Seq<$Ref> $Ref) Bool)
(declare-fun sm@93@00 ($Snap Int Int Int Seq<$Ref>) $FVF<Ref__Integer_value>)
(assert (forall ((s@$ $Snap) (i@0@00 Int) (hi@1@00 Int) (ar@2@00 Seq<Int>) (v@3@00 Int)) (!
  (=
    (count_list%limited s@$ i@0@00 hi@1@00 ar@2@00 v@3@00)
    (count_list s@$ i@0@00 hi@1@00 ar@2@00 v@3@00))
  :pattern ((count_list s@$ i@0@00 hi@1@00 ar@2@00 v@3@00))
  :qid |quant-u-9928|)))
(assert (forall ((s@$ $Snap) (i@0@00 Int) (hi@1@00 Int) (ar@2@00 Seq<Int>) (v@3@00 Int)) (!
  (count_list%stateless i@0@00 hi@1@00 ar@2@00 v@3@00)
  :pattern ((count_list%limited s@$ i@0@00 hi@1@00 ar@2@00 v@3@00))
  :qid |quant-u-9929|)))
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
  :qid |quant-u-9942|)))
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
  :qid |quant-u-9943|)))
(assert (forall ((s@$ $Snap) (i@5@00 Int) (hi@6@00 Int) (ar@7@00 Seq<Int>)) (!
  (=
    (sum_list%limited s@$ i@5@00 hi@6@00 ar@7@00)
    (sum_list s@$ i@5@00 hi@6@00 ar@7@00))
  :pattern ((sum_list s@$ i@5@00 hi@6@00 ar@7@00))
  :qid |quant-u-9930|)))
(assert (forall ((s@$ $Snap) (i@5@00 Int) (hi@6@00 Int) (ar@7@00 Seq<Int>)) (!
  (sum_list%stateless i@5@00 hi@6@00 ar@7@00)
  :pattern ((sum_list%limited s@$ i@5@00 hi@6@00 ar@7@00))
  :qid |quant-u-9931|)))
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
  :qid |quant-u-9944|)))
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
  :qid |quant-u-9945|)))
(assert (forall ((s@$ $Snap) (i@9@00 Int) (lo@10@00 Int) (hi@11@00 Int) (step@12@00 Int) (min@13@00 Int) (max@14@00 Int) (ar@15@00 Seq<$Ref>) (v@16@00 Int)) (!
  (=
    (count_square%limited s@$ i@9@00 lo@10@00 hi@11@00 step@12@00 min@13@00 max@14@00 ar@15@00 v@16@00)
    (count_square s@$ i@9@00 lo@10@00 hi@11@00 step@12@00 min@13@00 max@14@00 ar@15@00 v@16@00))
  :pattern ((count_square s@$ i@9@00 lo@10@00 hi@11@00 step@12@00 min@13@00 max@14@00 ar@15@00 v@16@00))
  :qid |quant-u-9932|)))
(assert (forall ((s@$ $Snap) (i@9@00 Int) (lo@10@00 Int) (hi@11@00 Int) (step@12@00 Int) (min@13@00 Int) (max@14@00 Int) (ar@15@00 Seq<$Ref>) (v@16@00 Int)) (!
  (count_square%stateless i@9@00 lo@10@00 hi@11@00 step@12@00 min@13@00 max@14@00 ar@15@00 v@16@00)
  :pattern ((count_square%limited s@$ i@9@00 lo@10@00 hi@11@00 step@12@00 min@13@00 max@14@00 ar@15@00 v@16@00))
  :qid |quant-u-9933|)))
(assert (forall ((s@$ $Snap) (i@9@00 Int) (lo@10@00 Int) (hi@11@00 Int) (step@12@00 Int) (min@13@00 Int) (max@14@00 Int) (ar@15@00 Seq<$Ref>) (v@16@00 Int)) (!
  (and
    (forall ((k@43@00 Int)) (!
      (=>
        (and
          (and
            (<= min@13@00 k@43@00)
            (and
              (< k@43@00 max@14@00)
              (and
                (<= lo@10@00 (mod k@43@00 step@12@00))
                (< (mod k@43@00 step@12@00) hi@11@00))))
          (< $Perm.No $k@44@00))
        (and
          (=
            (inv@45@00 s@$ i@9@00 lo@10@00 hi@11@00 step@12@00 min@13@00 max@14@00 ar@15@00 v@16@00 (Seq_index
              ar@15@00
              k@43@00))
            k@43@00)
          (img@46@00 s@$ i@9@00 lo@10@00 hi@11@00 step@12@00 min@13@00 max@14@00 ar@15@00 v@16@00 (Seq_index
            ar@15@00
            k@43@00))))
      :pattern ((Seq_index ar@15@00 k@43@00))
      :qid |quant-u-9947|))
    (forall ((r $Ref)) (!
      (=>
        (and
          (img@46@00 s@$ i@9@00 lo@10@00 hi@11@00 step@12@00 min@13@00 max@14@00 ar@15@00 v@16@00 r)
          (and
            (and
              (<=
                min@13@00
                (inv@45@00 s@$ i@9@00 lo@10@00 hi@11@00 step@12@00 min@13@00 max@14@00 ar@15@00 v@16@00 r))
              (and
                (<
                  (inv@45@00 s@$ i@9@00 lo@10@00 hi@11@00 step@12@00 min@13@00 max@14@00 ar@15@00 v@16@00 r)
                  max@14@00)
                (and
                  (<=
                    lo@10@00
                    (mod
                      (inv@45@00 s@$ i@9@00 lo@10@00 hi@11@00 step@12@00 min@13@00 max@14@00 ar@15@00 v@16@00 r)
                      step@12@00))
                  (<
                    (mod
                      (inv@45@00 s@$ i@9@00 lo@10@00 hi@11@00 step@12@00 min@13@00 max@14@00 ar@15@00 v@16@00 r)
                      step@12@00)
                    hi@11@00))))
            (< $Perm.No $k@44@00)))
        (=
          (Seq_index
            ar@15@00
            (inv@45@00 s@$ i@9@00 lo@10@00 hi@11@00 step@12@00 min@13@00 max@14@00 ar@15@00 v@16@00 r))
          r))
      :pattern ((inv@45@00 s@$ i@9@00 lo@10@00 hi@11@00 step@12@00 min@13@00 max@14@00 ar@15@00 v@16@00 r))
      :qid |Ref__Integer_value-fctOfInv|))
    (forall ((k@49@00 Int)) (!
      (=>
        (and
          (and
            (<= min@13@00 k@49@00)
            (and
              (< k@49@00 max@14@00)
              (and
                (<= lo@10@00 (mod k@49@00 step@12@00))
                (< (mod k@49@00 step@12@00) hi@11@00))))
          (< $Perm.No $k@50@00))
        (and
          (=
            (inv@51@00 s@$ i@9@00 lo@10@00 hi@11@00 step@12@00 min@13@00 max@14@00 ar@15@00 v@16@00 (Seq_index
              ar@15@00
              k@49@00))
            k@49@00)
          (img@52@00 s@$ i@9@00 lo@10@00 hi@11@00 step@12@00 min@13@00 max@14@00 ar@15@00 v@16@00 (Seq_index
            ar@15@00
            k@49@00))))
      :pattern ((Seq_index ar@15@00 k@49@00))
      :qid |Ref__Integer_value-invOfFct|))
    (forall ((r $Ref)) (!
      (=>
        (and
          (img@52@00 s@$ i@9@00 lo@10@00 hi@11@00 step@12@00 min@13@00 max@14@00 ar@15@00 v@16@00 r)
          (and
            (and
              (<=
                min@13@00
                (inv@51@00 s@$ i@9@00 lo@10@00 hi@11@00 step@12@00 min@13@00 max@14@00 ar@15@00 v@16@00 r))
              (and
                (<
                  (inv@51@00 s@$ i@9@00 lo@10@00 hi@11@00 step@12@00 min@13@00 max@14@00 ar@15@00 v@16@00 r)
                  max@14@00)
                (and
                  (<=
                    lo@10@00
                    (mod
                      (inv@51@00 s@$ i@9@00 lo@10@00 hi@11@00 step@12@00 min@13@00 max@14@00 ar@15@00 v@16@00 r)
                      step@12@00))
                  (<
                    (mod
                      (inv@51@00 s@$ i@9@00 lo@10@00 hi@11@00 step@12@00 min@13@00 max@14@00 ar@15@00 v@16@00 r)
                      step@12@00)
                    hi@11@00))))
            (< $Perm.No $k@50@00)))
        (=
          (Seq_index
            ar@15@00
            (inv@51@00 s@$ i@9@00 lo@10@00 hi@11@00 step@12@00 min@13@00 max@14@00 ar@15@00 v@16@00 r))
          r))
      :pattern ((inv@51@00 s@$ i@9@00 lo@10@00 hi@11@00 step@12@00 min@13@00 max@14@00 ar@15@00 v@16@00 r))
      :qid |Ref__Integer_value-fctOfInv|))
    (forall ((r $Ref)) (!
      (and
        (=>
          (Set_in r ($FVF.domain_Ref__Integer_value (sm@53@00 s@$ i@9@00 lo@10@00 hi@11@00 step@12@00 min@13@00 max@14@00 ar@15@00 v@16@00)))
          (and
            (and
              (<=
                min@13@00
                (inv@51@00 s@$ i@9@00 lo@10@00 hi@11@00 step@12@00 min@13@00 max@14@00 ar@15@00 v@16@00 r))
              (and
                (<
                  (inv@51@00 s@$ i@9@00 lo@10@00 hi@11@00 step@12@00 min@13@00 max@14@00 ar@15@00 v@16@00 r)
                  max@14@00)
                (and
                  (<=
                    lo@10@00
                    (mod
                      (inv@51@00 s@$ i@9@00 lo@10@00 hi@11@00 step@12@00 min@13@00 max@14@00 ar@15@00 v@16@00 r)
                      step@12@00))
                  (<
                    (mod
                      (inv@51@00 s@$ i@9@00 lo@10@00 hi@11@00 step@12@00 min@13@00 max@14@00 ar@15@00 v@16@00 r)
                      step@12@00)
                    hi@11@00))))
            (< $Perm.No $k@50@00)
            (img@52@00 s@$ i@9@00 lo@10@00 hi@11@00 step@12@00 min@13@00 max@14@00 ar@15@00 v@16@00 r)))
        (=>
          (and
            (and
              (<=
                min@13@00
                (inv@51@00 s@$ i@9@00 lo@10@00 hi@11@00 step@12@00 min@13@00 max@14@00 ar@15@00 v@16@00 r))
              (and
                (<
                  (inv@51@00 s@$ i@9@00 lo@10@00 hi@11@00 step@12@00 min@13@00 max@14@00 ar@15@00 v@16@00 r)
                  max@14@00)
                (and
                  (<=
                    lo@10@00
                    (mod
                      (inv@51@00 s@$ i@9@00 lo@10@00 hi@11@00 step@12@00 min@13@00 max@14@00 ar@15@00 v@16@00 r)
                      step@12@00))
                  (<
                    (mod
                      (inv@51@00 s@$ i@9@00 lo@10@00 hi@11@00 step@12@00 min@13@00 max@14@00 ar@15@00 v@16@00 r)
                      step@12@00)
                    hi@11@00))))
            (< $Perm.No $k@50@00)
            (img@52@00 s@$ i@9@00 lo@10@00 hi@11@00 step@12@00 min@13@00 max@14@00 ar@15@00 v@16@00 r))
          (Set_in r ($FVF.domain_Ref__Integer_value (sm@53@00 s@$ i@9@00 lo@10@00 hi@11@00 step@12@00 min@13@00 max@14@00 ar@15@00 v@16@00)))))
      :pattern ((Set_in r ($FVF.domain_Ref__Integer_value (sm@53@00 s@$ i@9@00 lo@10@00 hi@11@00 step@12@00 min@13@00 max@14@00 ar@15@00 v@16@00))))
      :qid |qp.fvfDomDef1|))
    (forall ((r $Ref)) (!
      (=>
        (and
          (and
            (and
              (<=
                min@13@00
                (inv@51@00 s@$ i@9@00 lo@10@00 hi@11@00 step@12@00 min@13@00 max@14@00 ar@15@00 v@16@00 r))
              (and
                (<
                  (inv@51@00 s@$ i@9@00 lo@10@00 hi@11@00 step@12@00 min@13@00 max@14@00 ar@15@00 v@16@00 r)
                  max@14@00)
                (and
                  (<=
                    lo@10@00
                    (mod
                      (inv@51@00 s@$ i@9@00 lo@10@00 hi@11@00 step@12@00 min@13@00 max@14@00 ar@15@00 v@16@00 r)
                      step@12@00))
                  (<
                    (mod
                      (inv@51@00 s@$ i@9@00 lo@10@00 hi@11@00 step@12@00 min@13@00 max@14@00 ar@15@00 v@16@00 r)
                      step@12@00)
                    hi@11@00))))
            (< $Perm.No $k@50@00)
            (img@52@00 s@$ i@9@00 lo@10@00 hi@11@00 step@12@00 min@13@00 max@14@00 ar@15@00 v@16@00 r))
          (ite
            (and
              (img@46@00 s@$ i@9@00 lo@10@00 hi@11@00 step@12@00 min@13@00 max@14@00 ar@15@00 v@16@00 r)
              (and
                (<=
                  min@13@00
                  (inv@45@00 s@$ i@9@00 lo@10@00 hi@11@00 step@12@00 min@13@00 max@14@00 ar@15@00 v@16@00 r))
                (and
                  (<
                    (inv@45@00 s@$ i@9@00 lo@10@00 hi@11@00 step@12@00 min@13@00 max@14@00 ar@15@00 v@16@00 r)
                    max@14@00)
                  (and
                    (<=
                      lo@10@00
                      (mod
                        (inv@45@00 s@$ i@9@00 lo@10@00 hi@11@00 step@12@00 min@13@00 max@14@00 ar@15@00 v@16@00 r)
                        step@12@00))
                    (<
                      (mod
                        (inv@45@00 s@$ i@9@00 lo@10@00 hi@11@00 step@12@00 min@13@00 max@14@00 ar@15@00 v@16@00 r)
                        step@12@00)
                      hi@11@00)))))
            (< $Perm.No $k@44@00)
            false))
        (=
          ($FVF.lookup_Ref__Integer_value (sm@53@00 s@$ i@9@00 lo@10@00 hi@11@00 step@12@00 min@13@00 max@14@00 ar@15@00 v@16@00) r)
          ($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second s@$)))))))))) r)))
      :pattern (($FVF.lookup_Ref__Integer_value (sm@53@00 s@$ i@9@00 lo@10@00 hi@11@00 step@12@00 min@13@00 max@14@00 ar@15@00 v@16@00) r))
      :pattern (($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second s@$)))))))))) r))
      :qid |qp.fvfValDef0|))
    ($Perm.isReadVar $k@44@00)
    ($Perm.isReadVar $k@50@00)
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
                              ($SortWrappers.$FVF<Ref__Integer_value>To$Snap (sm@53@00 s@$ i@9@00 lo@10@00 hi@11@00 step@12@00 min@13@00 max@14@00 ar@15@00 v@16@00))))))))))) (+
              i@9@00
              1) lo@10@00 hi@11@00 step@12@00 min@13@00 max@14@00 ar@15@00 v@16@00))
          0))))
  :pattern ((count_square s@$ i@9@00 lo@10@00 hi@11@00 step@12@00 min@13@00 max@14@00 ar@15@00 v@16@00))
  :qid |quant-u-9950|)))
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
                        ($SortWrappers.$FVF<Ref__Integer_value>To$Snap (sm@53@00 s@$ i@9@00 lo@10@00 hi@11@00 step@12@00 min@13@00 max@14@00 ar@15@00 v@16@00))))))))))) (+
        i@9@00
        1) lo@10@00 hi@11@00 step@12@00 min@13@00 max@14@00 ar@15@00 v@16@00)
      true))
  :pattern ((count_square s@$ i@9@00 lo@10@00 hi@11@00 step@12@00 min@13@00 max@14@00 ar@15@00 v@16@00))
  :qid |quant-u-9951|)))
(assert (forall ((s@$ $Snap) (i@18@00 Int) (hi@19@00 Int) (ar@20@00 Seq<$Ref>) (v@21@00 Int)) (!
  (=
    (count_array%limited s@$ i@18@00 hi@19@00 ar@20@00 v@21@00)
    (count_array s@$ i@18@00 hi@19@00 ar@20@00 v@21@00))
  :pattern ((count_array s@$ i@18@00 hi@19@00 ar@20@00 v@21@00))
  :qid |quant-u-9934|)))
(assert (forall ((s@$ $Snap) (i@18@00 Int) (hi@19@00 Int) (ar@20@00 Seq<$Ref>) (v@21@00 Int)) (!
  (count_array%stateless i@18@00 hi@19@00 ar@20@00 v@21@00)
  :pattern ((count_array%limited s@$ i@18@00 hi@19@00 ar@20@00 v@21@00))
  :qid |quant-u-9935|)))
(assert (forall ((s@$ $Snap) (i@18@00 Int) (hi@19@00 Int) (ar@20@00 Seq<$Ref>) (v@21@00 Int)) (!
  (and
    (forall ((k@56@00 Int)) (!
      (=>
        (and (and (<= 0 k@56@00) (< k@56@00 hi@19@00)) (< $Perm.No $k@57@00))
        (and
          (=
            (inv@58@00 s@$ i@18@00 hi@19@00 ar@20@00 v@21@00 (Seq_index
              ar@20@00
              k@56@00))
            k@56@00)
          (img@59@00 s@$ i@18@00 hi@19@00 ar@20@00 v@21@00 (Seq_index
            ar@20@00
            k@56@00))))
      :pattern ((Seq_index ar@20@00 k@56@00))
      :qid |quant-u-9953|))
    (forall ((r $Ref)) (!
      (=>
        (and
          (img@59@00 s@$ i@18@00 hi@19@00 ar@20@00 v@21@00 r)
          (and
            (and
              (<= 0 (inv@58@00 s@$ i@18@00 hi@19@00 ar@20@00 v@21@00 r))
              (< (inv@58@00 s@$ i@18@00 hi@19@00 ar@20@00 v@21@00 r) hi@19@00))
            (< $Perm.No $k@57@00)))
        (=
          (Seq_index
            ar@20@00
            (inv@58@00 s@$ i@18@00 hi@19@00 ar@20@00 v@21@00 r))
          r))
      :pattern ((inv@58@00 s@$ i@18@00 hi@19@00 ar@20@00 v@21@00 r))
      :qid |Ref__Integer_value-fctOfInv|))
    (forall ((k@62@00 Int)) (!
      (=>
        (and (and (<= 0 k@62@00) (< k@62@00 hi@19@00)) (< $Perm.No $k@63@00))
        (and
          (=
            (inv@64@00 s@$ i@18@00 hi@19@00 ar@20@00 v@21@00 (Seq_index
              ar@20@00
              k@62@00))
            k@62@00)
          (img@65@00 s@$ i@18@00 hi@19@00 ar@20@00 v@21@00 (Seq_index
            ar@20@00
            k@62@00))))
      :pattern ((Seq_index ar@20@00 k@62@00))
      :qid |Ref__Integer_value-invOfFct|))
    (forall ((r $Ref)) (!
      (=>
        (and
          (img@65@00 s@$ i@18@00 hi@19@00 ar@20@00 v@21@00 r)
          (and
            (and
              (<= 0 (inv@64@00 s@$ i@18@00 hi@19@00 ar@20@00 v@21@00 r))
              (< (inv@64@00 s@$ i@18@00 hi@19@00 ar@20@00 v@21@00 r) hi@19@00))
            (< $Perm.No $k@63@00)))
        (=
          (Seq_index
            ar@20@00
            (inv@64@00 s@$ i@18@00 hi@19@00 ar@20@00 v@21@00 r))
          r))
      :pattern ((inv@64@00 s@$ i@18@00 hi@19@00 ar@20@00 v@21@00 r))
      :qid |Ref__Integer_value-fctOfInv|))
    (forall ((r $Ref)) (!
      (and
        (=>
          (Set_in r ($FVF.domain_Ref__Integer_value (sm@66@00 s@$ i@18@00 hi@19@00 ar@20@00 v@21@00)))
          (and
            (and
              (<= 0 (inv@64@00 s@$ i@18@00 hi@19@00 ar@20@00 v@21@00 r))
              (< (inv@64@00 s@$ i@18@00 hi@19@00 ar@20@00 v@21@00 r) hi@19@00))
            (< $Perm.No $k@63@00)
            (img@65@00 s@$ i@18@00 hi@19@00 ar@20@00 v@21@00 r)))
        (=>
          (and
            (and
              (<= 0 (inv@64@00 s@$ i@18@00 hi@19@00 ar@20@00 v@21@00 r))
              (< (inv@64@00 s@$ i@18@00 hi@19@00 ar@20@00 v@21@00 r) hi@19@00))
            (< $Perm.No $k@63@00)
            (img@65@00 s@$ i@18@00 hi@19@00 ar@20@00 v@21@00 r))
          (Set_in r ($FVF.domain_Ref__Integer_value (sm@66@00 s@$ i@18@00 hi@19@00 ar@20@00 v@21@00)))))
      :pattern ((Set_in r ($FVF.domain_Ref__Integer_value (sm@66@00 s@$ i@18@00 hi@19@00 ar@20@00 v@21@00))))
      :qid |qp.fvfDomDef3|))
    (forall ((r $Ref)) (!
      (=>
        (and
          (and
            (and
              (<= 0 (inv@64@00 s@$ i@18@00 hi@19@00 ar@20@00 v@21@00 r))
              (< (inv@64@00 s@$ i@18@00 hi@19@00 ar@20@00 v@21@00 r) hi@19@00))
            (< $Perm.No $k@63@00)
            (img@65@00 s@$ i@18@00 hi@19@00 ar@20@00 v@21@00 r))
          (ite
            (and
              (img@59@00 s@$ i@18@00 hi@19@00 ar@20@00 v@21@00 r)
              (and
                (<= 0 (inv@58@00 s@$ i@18@00 hi@19@00 ar@20@00 v@21@00 r))
                (< (inv@58@00 s@$ i@18@00 hi@19@00 ar@20@00 v@21@00 r) hi@19@00)))
            (< $Perm.No $k@57@00)
            false))
        (=
          ($FVF.lookup_Ref__Integer_value (sm@66@00 s@$ i@18@00 hi@19@00 ar@20@00 v@21@00) r)
          ($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.second ($Snap.second ($Snap.second ($Snap.second s@$))))) r)))
      :pattern (($FVF.lookup_Ref__Integer_value (sm@66@00 s@$ i@18@00 hi@19@00 ar@20@00 v@21@00) r))
      :pattern (($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.second ($Snap.second ($Snap.second ($Snap.second s@$))))) r))
      :qid |qp.fvfValDef2|))
    ($Perm.isReadVar $k@57@00)
    ($Perm.isReadVar $k@63@00)
    (=>
      (count_array%precondition s@$ i@18@00 hi@19@00 ar@20@00 v@21@00)
      (=
        (count_array s@$ i@18@00 hi@19@00 ar@20@00 v@21@00)
        (ite
          (< i@18@00 hi@19@00)
          (+
            (ite
              (=
                ($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.second ($Snap.second ($Snap.second ($Snap.second s@$))))) (Seq_index
                  ar@20@00
                  i@18@00))
                v@21@00)
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
                    ($SortWrappers.$FVF<Ref__Integer_value>To$Snap (sm@66@00 s@$ i@18@00 hi@19@00 ar@20@00 v@21@00)))))) (+
              i@18@00
              1) hi@19@00 ar@20@00 v@21@00))
          0))))
  :pattern ((count_array s@$ i@18@00 hi@19@00 ar@20@00 v@21@00))
  :qid |quant-u-9956|)))
(assert (forall ((s@$ $Snap) (i@18@00 Int) (hi@19@00 Int) (ar@20@00 Seq<$Ref>) (v@21@00 Int)) (!
  (=>
    (count_array%precondition s@$ i@18@00 hi@19@00 ar@20@00 v@21@00)
    (ite
      (< i@18@00 hi@19@00)
      (count_array%precondition ($Snap.combine
        $Snap.unit
        ($Snap.combine
          $Snap.unit
          ($Snap.combine
            $Snap.unit
            ($Snap.combine
              $Snap.unit
              ($SortWrappers.$FVF<Ref__Integer_value>To$Snap (sm@66@00 s@$ i@18@00 hi@19@00 ar@20@00 v@21@00)))))) (+
        i@18@00
        1) hi@19@00 ar@20@00 v@21@00)
      true))
  :pattern ((count_array s@$ i@18@00 hi@19@00 ar@20@00 v@21@00))
  :qid |quant-u-9957|)))
(assert (forall ((s@$ $Snap) (N0@23@00 Int) (N1@24@00 Int) (i0@25@00 Int) (i1@26@00 Int)) (!
  (=
    (Ref__multidim_index_2%limited s@$ N0@23@00 N1@24@00 i0@25@00 i1@26@00)
    (Ref__multidim_index_2 s@$ N0@23@00 N1@24@00 i0@25@00 i1@26@00))
  :pattern ((Ref__multidim_index_2 s@$ N0@23@00 N1@24@00 i0@25@00 i1@26@00))
  :qid |quant-u-9936|)))
(assert (forall ((s@$ $Snap) (N0@23@00 Int) (N1@24@00 Int) (i0@25@00 Int) (i1@26@00 Int)) (!
  (Ref__multidim_index_2%stateless N0@23@00 N1@24@00 i0@25@00 i1@26@00)
  :pattern ((Ref__multidim_index_2%limited s@$ N0@23@00 N1@24@00 i0@25@00 i1@26@00))
  :qid |quant-u-9937|)))
(assert (forall ((s@$ $Snap) (N0@23@00 Int) (N1@24@00 Int) (i0@25@00 Int) (i1@26@00 Int)) (!
  (let ((result@27@00 (Ref__multidim_index_2%limited s@$ N0@23@00 N1@24@00 i0@25@00 i1@26@00))) (=>
    (Ref__multidim_index_2%precondition s@$ N0@23@00 N1@24@00 i0@25@00 i1@26@00)
    (and
      (<= 0 result@27@00)
      (< result@27@00 (* N0@23@00 N1@24@00))
      (= result@27@00 (+ (* i0@25@00 N1@24@00) i1@26@00))
      (= (mod result@27@00 N1@24@00) i1@26@00)
      (< (mod result@27@00 N1@24@00) N0@23@00))))
  :pattern ((Ref__multidim_index_2%limited s@$ N0@23@00 N1@24@00 i0@25@00 i1@26@00))
  :qid |quant-u-9958|)))
(assert (forall ((s@$ $Snap) (N0@23@00 Int) (N1@24@00 Int) (i0@25@00 Int) (i1@26@00 Int)) (!
  (let ((result@27@00 (Ref__multidim_index_2%limited s@$ N0@23@00 N1@24@00 i0@25@00 i1@26@00))) true)
  :pattern ((Ref__multidim_index_2%limited s@$ N0@23@00 N1@24@00 i0@25@00 i1@26@00))
  :qid |quant-u-9959|)))
(assert (forall ((s@$ $Snap) (N0@23@00 Int) (N1@24@00 Int) (i0@25@00 Int) (i1@26@00 Int)) (!
  (let ((result@27@00 (Ref__multidim_index_2%limited s@$ N0@23@00 N1@24@00 i0@25@00 i1@26@00))) true)
  :pattern ((Ref__multidim_index_2%limited s@$ N0@23@00 N1@24@00 i0@25@00 i1@26@00))
  :qid |quant-u-9960|)))
(assert (forall ((s@$ $Snap) (N0@23@00 Int) (N1@24@00 Int) (i0@25@00 Int) (i1@26@00 Int)) (!
  (let ((result@27@00 (Ref__multidim_index_2%limited s@$ N0@23@00 N1@24@00 i0@25@00 i1@26@00))) true)
  :pattern ((Ref__multidim_index_2%limited s@$ N0@23@00 N1@24@00 i0@25@00 i1@26@00))
  :qid |quant-u-9961|)))
(assert (forall ((s@$ $Snap) (N0@23@00 Int) (N1@24@00 Int) (i0@25@00 Int) (i1@26@00 Int)) (!
  (let ((result@27@00 (Ref__multidim_index_2%limited s@$ N0@23@00 N1@24@00 i0@25@00 i1@26@00))) true)
  :pattern ((Ref__multidim_index_2%limited s@$ N0@23@00 N1@24@00 i0@25@00 i1@26@00))
  :qid |quant-u-9962|)))
(assert (forall ((s@$ $Snap) (N0@23@00 Int) (N1@24@00 Int) (i0@25@00 Int) (i1@26@00 Int)) (!
  (let ((result@27@00 (Ref__multidim_index_2%limited s@$ N0@23@00 N1@24@00 i0@25@00 i1@26@00))) true)
  :pattern ((Ref__multidim_index_2%limited s@$ N0@23@00 N1@24@00 i0@25@00 i1@26@00))
  :qid |quant-u-9963|)))
(assert (forall ((s@$ $Snap) (i@28@00 Int) (lo@29@00 Int) (hi@30@00 Int) (step@31@00 Int) (min@32@00 Int) (max@33@00 Int) (ar@34@00 Seq<$Ref>)) (!
  (=
    (sum_square%limited s@$ i@28@00 lo@29@00 hi@30@00 step@31@00 min@32@00 max@33@00 ar@34@00)
    (sum_square s@$ i@28@00 lo@29@00 hi@30@00 step@31@00 min@32@00 max@33@00 ar@34@00))
  :pattern ((sum_square s@$ i@28@00 lo@29@00 hi@30@00 step@31@00 min@32@00 max@33@00 ar@34@00))
  :qid |quant-u-9938|)))
(assert (forall ((s@$ $Snap) (i@28@00 Int) (lo@29@00 Int) (hi@30@00 Int) (step@31@00 Int) (min@32@00 Int) (max@33@00 Int) (ar@34@00 Seq<$Ref>)) (!
  (sum_square%stateless i@28@00 lo@29@00 hi@30@00 step@31@00 min@32@00 max@33@00 ar@34@00)
  :pattern ((sum_square%limited s@$ i@28@00 lo@29@00 hi@30@00 step@31@00 min@32@00 max@33@00 ar@34@00))
  :qid |quant-u-9939|)))
(assert (forall ((s@$ $Snap) (i@28@00 Int) (lo@29@00 Int) (hi@30@00 Int) (step@31@00 Int) (min@32@00 Int) (max@33@00 Int) (ar@34@00 Seq<$Ref>)) (!
  (and
    (forall ((k@70@00 Int)) (!
      (=>
        (and
          (and
            (<= min@32@00 k@70@00)
            (and
              (< k@70@00 max@33@00)
              (and
                (<= lo@29@00 (mod k@70@00 step@31@00))
                (< (mod k@70@00 step@31@00) hi@30@00))))
          (< $Perm.No $k@71@00))
        (and
          (=
            (inv@72@00 s@$ i@28@00 lo@29@00 hi@30@00 step@31@00 min@32@00 max@33@00 ar@34@00 (Seq_index
              ar@34@00
              k@70@00))
            k@70@00)
          (img@73@00 s@$ i@28@00 lo@29@00 hi@30@00 step@31@00 min@32@00 max@33@00 ar@34@00 (Seq_index
            ar@34@00
            k@70@00))))
      :pattern ((Seq_index ar@34@00 k@70@00))
      :qid |quant-u-9965|))
    (forall ((r $Ref)) (!
      (=>
        (and
          (img@73@00 s@$ i@28@00 lo@29@00 hi@30@00 step@31@00 min@32@00 max@33@00 ar@34@00 r)
          (and
            (and
              (<=
                min@32@00
                (inv@72@00 s@$ i@28@00 lo@29@00 hi@30@00 step@31@00 min@32@00 max@33@00 ar@34@00 r))
              (and
                (<
                  (inv@72@00 s@$ i@28@00 lo@29@00 hi@30@00 step@31@00 min@32@00 max@33@00 ar@34@00 r)
                  max@33@00)
                (and
                  (<=
                    lo@29@00
                    (mod
                      (inv@72@00 s@$ i@28@00 lo@29@00 hi@30@00 step@31@00 min@32@00 max@33@00 ar@34@00 r)
                      step@31@00))
                  (<
                    (mod
                      (inv@72@00 s@$ i@28@00 lo@29@00 hi@30@00 step@31@00 min@32@00 max@33@00 ar@34@00 r)
                      step@31@00)
                    hi@30@00))))
            (< $Perm.No $k@71@00)))
        (=
          (Seq_index
            ar@34@00
            (inv@72@00 s@$ i@28@00 lo@29@00 hi@30@00 step@31@00 min@32@00 max@33@00 ar@34@00 r))
          r))
      :pattern ((inv@72@00 s@$ i@28@00 lo@29@00 hi@30@00 step@31@00 min@32@00 max@33@00 ar@34@00 r))
      :qid |Ref__Integer_value-fctOfInv|))
    (forall ((k@76@00 Int)) (!
      (=>
        (and
          (and
            (<= min@32@00 k@76@00)
            (and
              (< k@76@00 max@33@00)
              (and
                (<= lo@29@00 (mod k@76@00 step@31@00))
                (< (mod k@76@00 step@31@00) hi@30@00))))
          (< $Perm.No $k@77@00))
        (and
          (=
            (inv@78@00 s@$ i@28@00 lo@29@00 hi@30@00 step@31@00 min@32@00 max@33@00 ar@34@00 (Seq_index
              ar@34@00
              k@76@00))
            k@76@00)
          (img@79@00 s@$ i@28@00 lo@29@00 hi@30@00 step@31@00 min@32@00 max@33@00 ar@34@00 (Seq_index
            ar@34@00
            k@76@00))))
      :pattern ((Seq_index ar@34@00 k@76@00))
      :qid |Ref__Integer_value-invOfFct|))
    (forall ((r $Ref)) (!
      (=>
        (and
          (img@79@00 s@$ i@28@00 lo@29@00 hi@30@00 step@31@00 min@32@00 max@33@00 ar@34@00 r)
          (and
            (and
              (<=
                min@32@00
                (inv@78@00 s@$ i@28@00 lo@29@00 hi@30@00 step@31@00 min@32@00 max@33@00 ar@34@00 r))
              (and
                (<
                  (inv@78@00 s@$ i@28@00 lo@29@00 hi@30@00 step@31@00 min@32@00 max@33@00 ar@34@00 r)
                  max@33@00)
                (and
                  (<=
                    lo@29@00
                    (mod
                      (inv@78@00 s@$ i@28@00 lo@29@00 hi@30@00 step@31@00 min@32@00 max@33@00 ar@34@00 r)
                      step@31@00))
                  (<
                    (mod
                      (inv@78@00 s@$ i@28@00 lo@29@00 hi@30@00 step@31@00 min@32@00 max@33@00 ar@34@00 r)
                      step@31@00)
                    hi@30@00))))
            (< $Perm.No $k@77@00)))
        (=
          (Seq_index
            ar@34@00
            (inv@78@00 s@$ i@28@00 lo@29@00 hi@30@00 step@31@00 min@32@00 max@33@00 ar@34@00 r))
          r))
      :pattern ((inv@78@00 s@$ i@28@00 lo@29@00 hi@30@00 step@31@00 min@32@00 max@33@00 ar@34@00 r))
      :qid |Ref__Integer_value-fctOfInv|))
    (forall ((r $Ref)) (!
      (and
        (=>
          (Set_in r ($FVF.domain_Ref__Integer_value (sm@80@00 s@$ i@28@00 lo@29@00 hi@30@00 step@31@00 min@32@00 max@33@00 ar@34@00)))
          (and
            (and
              (<=
                min@32@00
                (inv@78@00 s@$ i@28@00 lo@29@00 hi@30@00 step@31@00 min@32@00 max@33@00 ar@34@00 r))
              (and
                (<
                  (inv@78@00 s@$ i@28@00 lo@29@00 hi@30@00 step@31@00 min@32@00 max@33@00 ar@34@00 r)
                  max@33@00)
                (and
                  (<=
                    lo@29@00
                    (mod
                      (inv@78@00 s@$ i@28@00 lo@29@00 hi@30@00 step@31@00 min@32@00 max@33@00 ar@34@00 r)
                      step@31@00))
                  (<
                    (mod
                      (inv@78@00 s@$ i@28@00 lo@29@00 hi@30@00 step@31@00 min@32@00 max@33@00 ar@34@00 r)
                      step@31@00)
                    hi@30@00))))
            (< $Perm.No $k@77@00)
            (img@79@00 s@$ i@28@00 lo@29@00 hi@30@00 step@31@00 min@32@00 max@33@00 ar@34@00 r)))
        (=>
          (and
            (and
              (<=
                min@32@00
                (inv@78@00 s@$ i@28@00 lo@29@00 hi@30@00 step@31@00 min@32@00 max@33@00 ar@34@00 r))
              (and
                (<
                  (inv@78@00 s@$ i@28@00 lo@29@00 hi@30@00 step@31@00 min@32@00 max@33@00 ar@34@00 r)
                  max@33@00)
                (and
                  (<=
                    lo@29@00
                    (mod
                      (inv@78@00 s@$ i@28@00 lo@29@00 hi@30@00 step@31@00 min@32@00 max@33@00 ar@34@00 r)
                      step@31@00))
                  (<
                    (mod
                      (inv@78@00 s@$ i@28@00 lo@29@00 hi@30@00 step@31@00 min@32@00 max@33@00 ar@34@00 r)
                      step@31@00)
                    hi@30@00))))
            (< $Perm.No $k@77@00)
            (img@79@00 s@$ i@28@00 lo@29@00 hi@30@00 step@31@00 min@32@00 max@33@00 ar@34@00 r))
          (Set_in r ($FVF.domain_Ref__Integer_value (sm@80@00 s@$ i@28@00 lo@29@00 hi@30@00 step@31@00 min@32@00 max@33@00 ar@34@00)))))
      :pattern ((Set_in r ($FVF.domain_Ref__Integer_value (sm@80@00 s@$ i@28@00 lo@29@00 hi@30@00 step@31@00 min@32@00 max@33@00 ar@34@00))))
      :qid |qp.fvfDomDef5|))
    (forall ((r $Ref)) (!
      (=>
        (and
          (and
            (and
              (<=
                min@32@00
                (inv@78@00 s@$ i@28@00 lo@29@00 hi@30@00 step@31@00 min@32@00 max@33@00 ar@34@00 r))
              (and
                (<
                  (inv@78@00 s@$ i@28@00 lo@29@00 hi@30@00 step@31@00 min@32@00 max@33@00 ar@34@00 r)
                  max@33@00)
                (and
                  (<=
                    lo@29@00
                    (mod
                      (inv@78@00 s@$ i@28@00 lo@29@00 hi@30@00 step@31@00 min@32@00 max@33@00 ar@34@00 r)
                      step@31@00))
                  (<
                    (mod
                      (inv@78@00 s@$ i@28@00 lo@29@00 hi@30@00 step@31@00 min@32@00 max@33@00 ar@34@00 r)
                      step@31@00)
                    hi@30@00))))
            (< $Perm.No $k@77@00)
            (img@79@00 s@$ i@28@00 lo@29@00 hi@30@00 step@31@00 min@32@00 max@33@00 ar@34@00 r))
          (ite
            (and
              (img@73@00 s@$ i@28@00 lo@29@00 hi@30@00 step@31@00 min@32@00 max@33@00 ar@34@00 r)
              (and
                (<=
                  min@32@00
                  (inv@72@00 s@$ i@28@00 lo@29@00 hi@30@00 step@31@00 min@32@00 max@33@00 ar@34@00 r))
                (and
                  (<
                    (inv@72@00 s@$ i@28@00 lo@29@00 hi@30@00 step@31@00 min@32@00 max@33@00 ar@34@00 r)
                    max@33@00)
                  (and
                    (<=
                      lo@29@00
                      (mod
                        (inv@72@00 s@$ i@28@00 lo@29@00 hi@30@00 step@31@00 min@32@00 max@33@00 ar@34@00 r)
                        step@31@00))
                    (<
                      (mod
                        (inv@72@00 s@$ i@28@00 lo@29@00 hi@30@00 step@31@00 min@32@00 max@33@00 ar@34@00 r)
                        step@31@00)
                      hi@30@00)))))
            (< $Perm.No $k@71@00)
            false))
        (=
          ($FVF.lookup_Ref__Integer_value (sm@80@00 s@$ i@28@00 lo@29@00 hi@30@00 step@31@00 min@32@00 max@33@00 ar@34@00) r)
          ($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second s@$)))))))))) r)))
      :pattern (($FVF.lookup_Ref__Integer_value (sm@80@00 s@$ i@28@00 lo@29@00 hi@30@00 step@31@00 min@32@00 max@33@00 ar@34@00) r))
      :pattern (($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second s@$)))))))))) r))
      :qid |qp.fvfValDef4|))
    ($Perm.isReadVar $k@71@00)
    ($Perm.isReadVar $k@77@00)
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
                              ($SortWrappers.$FVF<Ref__Integer_value>To$Snap (sm@80@00 s@$ i@28@00 lo@29@00 hi@30@00 step@31@00 min@32@00 max@33@00 ar@34@00))))))))))) (+
              i@28@00
              1) lo@29@00 hi@30@00 step@31@00 min@32@00 max@33@00 ar@34@00))
          0))))
  :pattern ((sum_square s@$ i@28@00 lo@29@00 hi@30@00 step@31@00 min@32@00 max@33@00 ar@34@00))
  :qid |quant-u-9968|)))
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
                        ($SortWrappers.$FVF<Ref__Integer_value>To$Snap (sm@80@00 s@$ i@28@00 lo@29@00 hi@30@00 step@31@00 min@32@00 max@33@00 ar@34@00))))))))))) (+
        i@28@00
        1) lo@29@00 hi@30@00 step@31@00 min@32@00 max@33@00 ar@34@00)
      true))
  :pattern ((sum_square s@$ i@28@00 lo@29@00 hi@30@00 step@31@00 min@32@00 max@33@00 ar@34@00))
  :qid |quant-u-9969|)))
(assert (forall ((s@$ $Snap) (i@36@00 Int) (lo@37@00 Int) (hi@38@00 Int) (ar@39@00 Seq<$Ref>)) (!
  (=
    (sum_array%limited s@$ i@36@00 lo@37@00 hi@38@00 ar@39@00)
    (sum_array s@$ i@36@00 lo@37@00 hi@38@00 ar@39@00))
  :pattern ((sum_array s@$ i@36@00 lo@37@00 hi@38@00 ar@39@00))
  :qid |quant-u-9940|)))
(assert (forall ((s@$ $Snap) (i@36@00 Int) (lo@37@00 Int) (hi@38@00 Int) (ar@39@00 Seq<$Ref>)) (!
  (sum_array%stateless i@36@00 lo@37@00 hi@38@00 ar@39@00)
  :pattern ((sum_array%limited s@$ i@36@00 lo@37@00 hi@38@00 ar@39@00))
  :qid |quant-u-9941|)))
(assert (forall ((s@$ $Snap) (i@36@00 Int) (lo@37@00 Int) (hi@38@00 Int) (ar@39@00 Seq<$Ref>)) (!
  (and
    (forall ((k@83@00 Int)) (!
      (=>
        (and
          (and (<= lo@37@00 k@83@00) (< k@83@00 hi@38@00))
          (< $Perm.No $k@84@00))
        (and
          (=
            (inv@85@00 s@$ i@36@00 lo@37@00 hi@38@00 ar@39@00 (Seq_index
              ar@39@00
              k@83@00))
            k@83@00)
          (img@86@00 s@$ i@36@00 lo@37@00 hi@38@00 ar@39@00 (Seq_index
            ar@39@00
            k@83@00))))
      :pattern ((Seq_index ar@39@00 k@83@00))
      :qid |quant-u-9971|))
    (forall ((r $Ref)) (!
      (=>
        (and
          (img@86@00 s@$ i@36@00 lo@37@00 hi@38@00 ar@39@00 r)
          (and
            (and
              (<= lo@37@00 (inv@85@00 s@$ i@36@00 lo@37@00 hi@38@00 ar@39@00 r))
              (< (inv@85@00 s@$ i@36@00 lo@37@00 hi@38@00 ar@39@00 r) hi@38@00))
            (< $Perm.No $k@84@00)))
        (=
          (Seq_index
            ar@39@00
            (inv@85@00 s@$ i@36@00 lo@37@00 hi@38@00 ar@39@00 r))
          r))
      :pattern ((inv@85@00 s@$ i@36@00 lo@37@00 hi@38@00 ar@39@00 r))
      :qid |Ref__Integer_value-fctOfInv|))
    (forall ((k@89@00 Int)) (!
      (=>
        (and
          (and (<= lo@37@00 k@89@00) (< k@89@00 hi@38@00))
          (< $Perm.No $k@90@00))
        (and
          (=
            (inv@91@00 s@$ i@36@00 lo@37@00 hi@38@00 ar@39@00 (Seq_index
              ar@39@00
              k@89@00))
            k@89@00)
          (img@92@00 s@$ i@36@00 lo@37@00 hi@38@00 ar@39@00 (Seq_index
            ar@39@00
            k@89@00))))
      :pattern ((Seq_index ar@39@00 k@89@00))
      :qid |Ref__Integer_value-invOfFct|))
    (forall ((r $Ref)) (!
      (=>
        (and
          (img@92@00 s@$ i@36@00 lo@37@00 hi@38@00 ar@39@00 r)
          (and
            (and
              (<= lo@37@00 (inv@91@00 s@$ i@36@00 lo@37@00 hi@38@00 ar@39@00 r))
              (< (inv@91@00 s@$ i@36@00 lo@37@00 hi@38@00 ar@39@00 r) hi@38@00))
            (< $Perm.No $k@90@00)))
        (=
          (Seq_index
            ar@39@00
            (inv@91@00 s@$ i@36@00 lo@37@00 hi@38@00 ar@39@00 r))
          r))
      :pattern ((inv@91@00 s@$ i@36@00 lo@37@00 hi@38@00 ar@39@00 r))
      :qid |Ref__Integer_value-fctOfInv|))
    (forall ((r $Ref)) (!
      (and
        (=>
          (Set_in r ($FVF.domain_Ref__Integer_value (sm@93@00 s@$ i@36@00 lo@37@00 hi@38@00 ar@39@00)))
          (and
            (and
              (<= lo@37@00 (inv@91@00 s@$ i@36@00 lo@37@00 hi@38@00 ar@39@00 r))
              (< (inv@91@00 s@$ i@36@00 lo@37@00 hi@38@00 ar@39@00 r) hi@38@00))
            (< $Perm.No $k@90@00)
            (img@92@00 s@$ i@36@00 lo@37@00 hi@38@00 ar@39@00 r)))
        (=>
          (and
            (and
              (<= lo@37@00 (inv@91@00 s@$ i@36@00 lo@37@00 hi@38@00 ar@39@00 r))
              (< (inv@91@00 s@$ i@36@00 lo@37@00 hi@38@00 ar@39@00 r) hi@38@00))
            (< $Perm.No $k@90@00)
            (img@92@00 s@$ i@36@00 lo@37@00 hi@38@00 ar@39@00 r))
          (Set_in r ($FVF.domain_Ref__Integer_value (sm@93@00 s@$ i@36@00 lo@37@00 hi@38@00 ar@39@00)))))
      :pattern ((Set_in r ($FVF.domain_Ref__Integer_value (sm@93@00 s@$ i@36@00 lo@37@00 hi@38@00 ar@39@00))))
      :qid |qp.fvfDomDef7|))
    (forall ((r $Ref)) (!
      (=>
        (and
          (and
            (and
              (<= lo@37@00 (inv@91@00 s@$ i@36@00 lo@37@00 hi@38@00 ar@39@00 r))
              (< (inv@91@00 s@$ i@36@00 lo@37@00 hi@38@00 ar@39@00 r) hi@38@00))
            (< $Perm.No $k@90@00)
            (img@92@00 s@$ i@36@00 lo@37@00 hi@38@00 ar@39@00 r))
          (ite
            (and
              (img@86@00 s@$ i@36@00 lo@37@00 hi@38@00 ar@39@00 r)
              (and
                (<=
                  lo@37@00
                  (inv@85@00 s@$ i@36@00 lo@37@00 hi@38@00 ar@39@00 r))
                (< (inv@85@00 s@$ i@36@00 lo@37@00 hi@38@00 ar@39@00 r) hi@38@00)))
            (< $Perm.No $k@84@00)
            false))
        (=
          ($FVF.lookup_Ref__Integer_value (sm@93@00 s@$ i@36@00 lo@37@00 hi@38@00 ar@39@00) r)
          ($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second s@$)))))) r)))
      :pattern (($FVF.lookup_Ref__Integer_value (sm@93@00 s@$ i@36@00 lo@37@00 hi@38@00 ar@39@00) r))
      :pattern (($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second s@$)))))) r))
      :qid |qp.fvfValDef6|))
    ($Perm.isReadVar $k@84@00)
    ($Perm.isReadVar $k@90@00)
    (=>
      (sum_array%precondition s@$ i@36@00 lo@37@00 hi@38@00 ar@39@00)
      (=
        (sum_array s@$ i@36@00 lo@37@00 hi@38@00 ar@39@00)
        (ite
          (< i@36@00 hi@38@00)
          (+
            ($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second s@$)))))) (Seq_index
              ar@39@00
              i@36@00))
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
                      ($SortWrappers.$FVF<Ref__Integer_value>To$Snap (sm@93@00 s@$ i@36@00 lo@37@00 hi@38@00 ar@39@00))))))) (+
              i@36@00
              1) lo@37@00 hi@38@00 ar@39@00))
          0))))
  :pattern ((sum_array s@$ i@36@00 lo@37@00 hi@38@00 ar@39@00))
  :qid |quant-u-9974|)))
(assert (forall ((s@$ $Snap) (i@36@00 Int) (lo@37@00 Int) (hi@38@00 Int) (ar@39@00 Seq<$Ref>)) (!
  (=>
    (sum_array%precondition s@$ i@36@00 lo@37@00 hi@38@00 ar@39@00)
    (ite
      (< i@36@00 hi@38@00)
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
                ($SortWrappers.$FVF<Ref__Integer_value>To$Snap (sm@93@00 s@$ i@36@00 lo@37@00 hi@38@00 ar@39@00))))))) (+
        i@36@00
        1) lo@37@00 hi@38@00 ar@39@00)
      true))
  :pattern ((sum_array s@$ i@36@00 lo@37@00 hi@38@00 ar@39@00))
  :qid |quant-u-9975|)))
; End function- and predicate-related preamble
; ------------------------------------------------------------
; ---------- Ref__loop_main_76 ----------
(declare-const diz@0@01 $Ref)
(declare-const current_thread_id@1@01 Int)
(declare-const P@2@01 Int)
(declare-const hist@3@01 Seq<$Ref>)
(declare-const diz@4@01 $Ref)
(declare-const current_thread_id@5@01 Int)
(declare-const P@6@01 Int)
(declare-const hist@7@01 Seq<$Ref>)
(set-option :timeout 0)
(push) ; 1
(declare-const $t@8@01 $Snap)
(assert (= $t@8@01 ($Snap.combine ($Snap.first $t@8@01) ($Snap.second $t@8@01))))
(assert (= ($Snap.first $t@8@01) $Snap.unit))
; [eval] diz != null
(assert (not (= diz@4@01 $Ref.null)))
(assert (=
  ($Snap.second $t@8@01)
  ($Snap.combine
    ($Snap.first ($Snap.second $t@8@01))
    ($Snap.second ($Snap.second $t@8@01)))))
(assert (= ($Snap.first ($Snap.second $t@8@01)) $Snap.unit))
; [eval] current_thread_id >= 0
(assert (>= current_thread_id@5@01 0))
(assert (=
  ($Snap.second ($Snap.second $t@8@01))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second $t@8@01)))
    ($Snap.second ($Snap.second ($Snap.second $t@8@01))))))
(assert (= ($Snap.first ($Snap.second ($Snap.second $t@8@01))) $Snap.unit))
; [eval] P <= |hist|
; [eval] |hist|
(assert (<= P@6@01 (Seq_length hist@7@01)))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second $t@8@01)))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@8@01))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@8@01)))))))
(assert (= ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@8@01)))) $Snap.unit))
; [eval] (forall j: Int, k: Int :: { hist[j], hist[k] } 0 <= j && (j < P && (0 <= k && (k < P && j != k))) ==> hist[j] != hist[k])
(declare-const j@9@01 Int)
(declare-const k@10@01 Int)
(push) ; 2
; [eval] 0 <= j && (j < P && (0 <= k && (k < P && j != k))) ==> hist[j] != hist[k]
; [eval] 0 <= j && (j < P && (0 <= k && (k < P && j != k)))
; [eval] 0 <= j
(push) ; 3
; [then-branch: 0 | !(0 <= j@9@01) | live]
; [else-branch: 0 | 0 <= j@9@01 | live]
(push) ; 4
; [then-branch: 0 | !(0 <= j@9@01)]
(assert (not (<= 0 j@9@01)))
(pop) ; 4
(push) ; 4
; [else-branch: 0 | 0 <= j@9@01]
(assert (<= 0 j@9@01))
; [eval] j < P
(push) ; 5
; [then-branch: 1 | !(j@9@01 < P@6@01) | live]
; [else-branch: 1 | j@9@01 < P@6@01 | live]
(push) ; 6
; [then-branch: 1 | !(j@9@01 < P@6@01)]
(assert (not (< j@9@01 P@6@01)))
(pop) ; 6
(push) ; 6
; [else-branch: 1 | j@9@01 < P@6@01]
(assert (< j@9@01 P@6@01))
; [eval] 0 <= k
(push) ; 7
; [then-branch: 2 | !(0 <= k@10@01) | live]
; [else-branch: 2 | 0 <= k@10@01 | live]
(push) ; 8
; [then-branch: 2 | !(0 <= k@10@01)]
(assert (not (<= 0 k@10@01)))
(pop) ; 8
(push) ; 8
; [else-branch: 2 | 0 <= k@10@01]
(assert (<= 0 k@10@01))
; [eval] k < P
(push) ; 9
; [then-branch: 3 | !(k@10@01 < P@6@01) | live]
; [else-branch: 3 | k@10@01 < P@6@01 | live]
(push) ; 10
; [then-branch: 3 | !(k@10@01 < P@6@01)]
(assert (not (< k@10@01 P@6@01)))
(pop) ; 10
(push) ; 10
; [else-branch: 3 | k@10@01 < P@6@01]
(assert (< k@10@01 P@6@01))
; [eval] j != k
(pop) ; 10
(pop) ; 9
; Joined path conditions
; Joined path conditions
(assert (or (< k@10@01 P@6@01) (not (< k@10@01 P@6@01))))
(pop) ; 8
(pop) ; 7
; Joined path conditions
; Joined path conditions
(assert (=>
  (<= 0 k@10@01)
  (and (<= 0 k@10@01) (or (< k@10@01 P@6@01) (not (< k@10@01 P@6@01))))))
(assert (or (<= 0 k@10@01) (not (<= 0 k@10@01))))
(pop) ; 6
(pop) ; 5
; Joined path conditions
; Joined path conditions
(assert (=>
  (< j@9@01 P@6@01)
  (and
    (< j@9@01 P@6@01)
    (=>
      (<= 0 k@10@01)
      (and (<= 0 k@10@01) (or (< k@10@01 P@6@01) (not (< k@10@01 P@6@01)))))
    (or (<= 0 k@10@01) (not (<= 0 k@10@01))))))
(assert (or (< j@9@01 P@6@01) (not (< j@9@01 P@6@01))))
(pop) ; 4
(pop) ; 3
; Joined path conditions
; Joined path conditions
(assert (=>
  (<= 0 j@9@01)
  (and
    (<= 0 j@9@01)
    (=>
      (< j@9@01 P@6@01)
      (and
        (< j@9@01 P@6@01)
        (=>
          (<= 0 k@10@01)
          (and (<= 0 k@10@01) (or (< k@10@01 P@6@01) (not (< k@10@01 P@6@01)))))
        (or (<= 0 k@10@01) (not (<= 0 k@10@01)))))
    (or (< j@9@01 P@6@01) (not (< j@9@01 P@6@01))))))
(assert (or (<= 0 j@9@01) (not (<= 0 j@9@01))))
(push) ; 3
; [then-branch: 4 | 0 <= j@9@01 && j@9@01 < P@6@01 && 0 <= k@10@01 && k@10@01 < P@6@01 && j@9@01 != k@10@01 | live]
; [else-branch: 4 | !(0 <= j@9@01 && j@9@01 < P@6@01 && 0 <= k@10@01 && k@10@01 < P@6@01 && j@9@01 != k@10@01) | live]
(push) ; 4
; [then-branch: 4 | 0 <= j@9@01 && j@9@01 < P@6@01 && 0 <= k@10@01 && k@10@01 < P@6@01 && j@9@01 != k@10@01]
(assert (and
  (<= 0 j@9@01)
  (and
    (< j@9@01 P@6@01)
    (and (<= 0 k@10@01) (and (< k@10@01 P@6@01) (not (= j@9@01 k@10@01)))))))
; [eval] hist[j] != hist[k]
; [eval] hist[j]
(push) ; 5
(assert (not (>= j@9@01 0)))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(push) ; 5
(assert (not (< j@9@01 (Seq_length hist@7@01))))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
; [eval] hist[k]
(push) ; 5
(assert (not (>= k@10@01 0)))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(push) ; 5
(assert (not (< k@10@01 (Seq_length hist@7@01))))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(pop) ; 4
(push) ; 4
; [else-branch: 4 | !(0 <= j@9@01 && j@9@01 < P@6@01 && 0 <= k@10@01 && k@10@01 < P@6@01 && j@9@01 != k@10@01)]
(assert (not
  (and
    (<= 0 j@9@01)
    (and
      (< j@9@01 P@6@01)
      (and (<= 0 k@10@01) (and (< k@10@01 P@6@01) (not (= j@9@01 k@10@01))))))))
(pop) ; 4
(pop) ; 3
; Joined path conditions
(assert (=>
  (and
    (<= 0 j@9@01)
    (and
      (< j@9@01 P@6@01)
      (and (<= 0 k@10@01) (and (< k@10@01 P@6@01) (not (= j@9@01 k@10@01))))))
  (and
    (<= 0 j@9@01)
    (< j@9@01 P@6@01)
    (<= 0 k@10@01)
    (< k@10@01 P@6@01)
    (not (= j@9@01 k@10@01)))))
; Joined path conditions
(assert (or
  (not
    (and
      (<= 0 j@9@01)
      (and
        (< j@9@01 P@6@01)
        (and (<= 0 k@10@01) (and (< k@10@01 P@6@01) (not (= j@9@01 k@10@01)))))))
  (and
    (<= 0 j@9@01)
    (and
      (< j@9@01 P@6@01)
      (and (<= 0 k@10@01) (and (< k@10@01 P@6@01) (not (= j@9@01 k@10@01))))))))
(pop) ; 2
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall ((j@9@01 Int) (k@10@01 Int)) (!
  (and
    (=>
      (<= 0 j@9@01)
      (and
        (<= 0 j@9@01)
        (=>
          (< j@9@01 P@6@01)
          (and
            (< j@9@01 P@6@01)
            (=>
              (<= 0 k@10@01)
              (and
                (<= 0 k@10@01)
                (or (< k@10@01 P@6@01) (not (< k@10@01 P@6@01)))))
            (or (<= 0 k@10@01) (not (<= 0 k@10@01)))))
        (or (< j@9@01 P@6@01) (not (< j@9@01 P@6@01)))))
    (or (<= 0 j@9@01) (not (<= 0 j@9@01)))
    (=>
      (and
        (<= 0 j@9@01)
        (and
          (< j@9@01 P@6@01)
          (and (<= 0 k@10@01) (and (< k@10@01 P@6@01) (not (= j@9@01 k@10@01))))))
      (and
        (<= 0 j@9@01)
        (< j@9@01 P@6@01)
        (<= 0 k@10@01)
        (< k@10@01 P@6@01)
        (not (= j@9@01 k@10@01))))
    (or
      (not
        (and
          (<= 0 j@9@01)
          (and
            (< j@9@01 P@6@01)
            (and
              (<= 0 k@10@01)
              (and (< k@10@01 P@6@01) (not (= j@9@01 k@10@01)))))))
      (and
        (<= 0 j@9@01)
        (and
          (< j@9@01 P@6@01)
          (and (<= 0 k@10@01) (and (< k@10@01 P@6@01) (not (= j@9@01 k@10@01))))))))
  :pattern ((Seq_index hist@7@01 j@9@01) (Seq_index hist@7@01 k@10@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/third_party/testHistogram.vpr@76@12@76@104-aux|)))
(assert (forall ((j@9@01 Int) (k@10@01 Int)) (!
  (=>
    (and
      (<= 0 j@9@01)
      (and
        (< j@9@01 P@6@01)
        (and (<= 0 k@10@01) (and (< k@10@01 P@6@01) (not (= j@9@01 k@10@01))))))
    (not (= (Seq_index hist@7@01 j@9@01) (Seq_index hist@7@01 k@10@01))))
  :pattern ((Seq_index hist@7@01 j@9@01) (Seq_index hist@7@01 k@10@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/third_party/testHistogram.vpr@76@12@76@104|)))
(declare-const k@11@01 Int)
(push) ; 2
; [eval] 0 <= k && k < P
; [eval] 0 <= k
(push) ; 3
; [then-branch: 5 | !(0 <= k@11@01) | live]
; [else-branch: 5 | 0 <= k@11@01 | live]
(push) ; 4
; [then-branch: 5 | !(0 <= k@11@01)]
(assert (not (<= 0 k@11@01)))
(pop) ; 4
(push) ; 4
; [else-branch: 5 | 0 <= k@11@01]
(assert (<= 0 k@11@01))
; [eval] k < P
(pop) ; 4
(pop) ; 3
; Joined path conditions
; Joined path conditions
(assert (or (<= 0 k@11@01) (not (<= 0 k@11@01))))
(assert (and (<= 0 k@11@01) (< k@11@01 P@6@01)))
; [eval] hist[k]
(push) ; 3
(assert (not (>= k@11@01 0)))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(push) ; 3
(assert (not (< k@11@01 (Seq_length hist@7@01))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(pop) ; 2
(declare-fun inv@12@01 ($Ref) Int)
(declare-fun img@13@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
(assert (forall ((k@11@01 Int)) (!
  (=>
    (and (<= 0 k@11@01) (< k@11@01 P@6@01))
    (or (<= 0 k@11@01) (not (<= 0 k@11@01))))
  :pattern ((Seq_index hist@7@01 k@11@01))
  :qid |Ref__Integer_value-aux|)))
; Check receiver injectivity
(push) ; 2
(assert (not (forall ((k1@11@01 Int) (k2@11@01 Int)) (!
  (=>
    (and
      (and (<= 0 k1@11@01) (< k1@11@01 P@6@01))
      (and (<= 0 k2@11@01) (< k2@11@01 P@6@01))
      (= (Seq_index hist@7@01 k1@11@01) (Seq_index hist@7@01 k2@11@01)))
    (= k1@11@01 k2@11@01))
  
  :qid |Ref__Integer_value-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 2
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((k@11@01 Int)) (!
  (=>
    (and (<= 0 k@11@01) (< k@11@01 P@6@01))
    (and
      (= (inv@12@01 (Seq_index hist@7@01 k@11@01)) k@11@01)
      (img@13@01 (Seq_index hist@7@01 k@11@01))))
  :pattern ((Seq_index hist@7@01 k@11@01))
  :qid |quant-u-9977|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@13@01 r) (and (<= 0 (inv@12@01 r)) (< (inv@12@01 r) P@6@01)))
    (= (Seq_index hist@7@01 (inv@12@01 r)) r))
  :pattern ((inv@12@01 r))
  :qid |Ref__Integer_value-fctOfInv|)))
; Permissions are non-negative
; Field permissions are at most one
; Permission implies non-null receiver
(assert (forall ((k@11@01 Int)) (!
  (=>
    (and (<= 0 k@11@01) (< k@11@01 P@6@01))
    (not (= (Seq_index hist@7@01 k@11@01) $Ref.null)))
  :pattern ((Seq_index hist@7@01 k@11@01))
  :qid |Ref__Integer_value-permImpliesNonNull|)))
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
(set-option :timeout 0)
(push) ; 2
(declare-const $t@14@01 $Snap)
(assert (= $t@14@01 ($Snap.combine ($Snap.first $t@14@01) ($Snap.second $t@14@01))))
(declare-const k@15@01 Int)
(push) ; 3
; [eval] 0 <= k && k < P
; [eval] 0 <= k
(push) ; 4
; [then-branch: 6 | !(0 <= k@15@01) | live]
; [else-branch: 6 | 0 <= k@15@01 | live]
(push) ; 5
; [then-branch: 6 | !(0 <= k@15@01)]
(assert (not (<= 0 k@15@01)))
(pop) ; 5
(push) ; 5
; [else-branch: 6 | 0 <= k@15@01]
(assert (<= 0 k@15@01))
; [eval] k < P
(pop) ; 5
(pop) ; 4
; Joined path conditions
; Joined path conditions
(assert (or (<= 0 k@15@01) (not (<= 0 k@15@01))))
(assert (and (<= 0 k@15@01) (< k@15@01 P@6@01)))
; [eval] hist[k]
(push) ; 4
(assert (not (>= k@15@01 0)))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(push) ; 4
(assert (not (< k@15@01 (Seq_length hist@7@01))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(pop) ; 3
(declare-fun inv@16@01 ($Ref) Int)
(declare-fun img@17@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
(assert (forall ((k@15@01 Int)) (!
  (=>
    (and (<= 0 k@15@01) (< k@15@01 P@6@01))
    (or (<= 0 k@15@01) (not (<= 0 k@15@01))))
  :pattern ((Seq_index hist@7@01 k@15@01))
  :qid |Ref__Integer_value-aux|)))
; Check receiver injectivity
(push) ; 3
(assert (not (forall ((k1@15@01 Int) (k2@15@01 Int)) (!
  (=>
    (and
      (and (<= 0 k1@15@01) (< k1@15@01 P@6@01))
      (and (<= 0 k2@15@01) (< k2@15@01 P@6@01))
      (= (Seq_index hist@7@01 k1@15@01) (Seq_index hist@7@01 k2@15@01)))
    (= k1@15@01 k2@15@01))
  
  :qid |Ref__Integer_value-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((k@15@01 Int)) (!
  (=>
    (and (<= 0 k@15@01) (< k@15@01 P@6@01))
    (and
      (= (inv@16@01 (Seq_index hist@7@01 k@15@01)) k@15@01)
      (img@17@01 (Seq_index hist@7@01 k@15@01))))
  :pattern ((Seq_index hist@7@01 k@15@01))
  :qid |quant-u-9979|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@17@01 r) (and (<= 0 (inv@16@01 r)) (< (inv@16@01 r) P@6@01)))
    (= (Seq_index hist@7@01 (inv@16@01 r)) r))
  :pattern ((inv@16@01 r))
  :qid |Ref__Integer_value-fctOfInv|)))
; Permissions are non-negative
; Field permissions are at most one
; Permission implies non-null receiver
(assert (forall ((k@15@01 Int)) (!
  (=>
    (and (<= 0 k@15@01) (< k@15@01 P@6@01))
    (not (= (Seq_index hist@7@01 k@15@01) $Ref.null)))
  :pattern ((Seq_index hist@7@01 k@15@01))
  :qid |Ref__Integer_value-permImpliesNonNull|)))
(assert (= ($Snap.second $t@14@01) $Snap.unit))
; [eval] (forall k: Int :: { hist[k] } 0 <= k && k < P ==> hist[k].Ref__Integer_value == 0)
(declare-const k@18@01 Int)
(push) ; 3
; [eval] 0 <= k && k < P ==> hist[k].Ref__Integer_value == 0
; [eval] 0 <= k && k < P
; [eval] 0 <= k
(push) ; 4
; [then-branch: 7 | !(0 <= k@18@01) | live]
; [else-branch: 7 | 0 <= k@18@01 | live]
(push) ; 5
; [then-branch: 7 | !(0 <= k@18@01)]
(assert (not (<= 0 k@18@01)))
(pop) ; 5
(push) ; 5
; [else-branch: 7 | 0 <= k@18@01]
(assert (<= 0 k@18@01))
; [eval] k < P
(pop) ; 5
(pop) ; 4
; Joined path conditions
; Joined path conditions
(assert (or (<= 0 k@18@01) (not (<= 0 k@18@01))))
(push) ; 4
; [then-branch: 8 | 0 <= k@18@01 && k@18@01 < P@6@01 | live]
; [else-branch: 8 | !(0 <= k@18@01 && k@18@01 < P@6@01) | live]
(push) ; 5
; [then-branch: 8 | 0 <= k@18@01 && k@18@01 < P@6@01]
(assert (and (<= 0 k@18@01) (< k@18@01 P@6@01)))
; [eval] hist[k].Ref__Integer_value == 0
; [eval] hist[k]
(push) ; 6
(assert (not (>= k@18@01 0)))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(push) ; 6
(assert (not (< k@18@01 (Seq_length hist@7@01))))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(push) ; 6
(assert (not (and
  (img@17@01 (Seq_index hist@7@01 k@18@01))
  (and
    (<= 0 (inv@16@01 (Seq_index hist@7@01 k@18@01)))
    (< (inv@16@01 (Seq_index hist@7@01 k@18@01)) P@6@01)))))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(pop) ; 5
(push) ; 5
; [else-branch: 8 | !(0 <= k@18@01 && k@18@01 < P@6@01)]
(assert (not (and (<= 0 k@18@01) (< k@18@01 P@6@01))))
(pop) ; 5
(pop) ; 4
; Joined path conditions
; Joined path conditions
(assert (or
  (not (and (<= 0 k@18@01) (< k@18@01 P@6@01)))
  (and (<= 0 k@18@01) (< k@18@01 P@6@01))))
(pop) ; 3
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall ((k@18@01 Int)) (!
  (and
    (or (<= 0 k@18@01) (not (<= 0 k@18@01)))
    (or
      (not (and (<= 0 k@18@01) (< k@18@01 P@6@01)))
      (and (<= 0 k@18@01) (< k@18@01 P@6@01))))
  :pattern ((Seq_index hist@7@01 k@18@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/third_party/testHistogram.vpr@79@12@79@86-aux|)))
(assert (forall ((k@18@01 Int)) (!
  (=>
    (and (<= 0 k@18@01) (< k@18@01 P@6@01))
    (=
      ($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first $t@14@01)) (Seq_index
        hist@7@01
        k@18@01))
      0))
  :pattern ((Seq_index hist@7@01 k@18@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/third_party/testHistogram.vpr@79@12@79@86|)))
(pop) ; 2
(push) ; 2
; [exec]
; inhale false
(pop) ; 2
(pop) ; 1
; ---------- Ref__loop_body_76 ----------
(declare-const diz@19@01 $Ref)
(declare-const current_thread_id@20@01 Int)
(declare-const k@21@01 Int)
(declare-const P@22@01 Int)
(declare-const hist@23@01 Seq<$Ref>)
(declare-const diz@24@01 $Ref)
(declare-const current_thread_id@25@01 Int)
(declare-const k@26@01 Int)
(declare-const P@27@01 Int)
(declare-const hist@28@01 Seq<$Ref>)
(push) ; 1
(declare-const $t@29@01 $Snap)
(assert (= $t@29@01 ($Snap.combine ($Snap.first $t@29@01) ($Snap.second $t@29@01))))
(assert (= ($Snap.first $t@29@01) $Snap.unit))
; [eval] diz != null
(assert (not (= diz@24@01 $Ref.null)))
(assert (=
  ($Snap.second $t@29@01)
  ($Snap.combine
    ($Snap.first ($Snap.second $t@29@01))
    ($Snap.second ($Snap.second $t@29@01)))))
(assert (= ($Snap.first ($Snap.second $t@29@01)) $Snap.unit))
; [eval] current_thread_id >= 0
(assert (>= current_thread_id@25@01 0))
(assert (=
  ($Snap.second ($Snap.second $t@29@01))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second $t@29@01)))
    ($Snap.second ($Snap.second ($Snap.second $t@29@01))))))
(assert (= ($Snap.first ($Snap.second ($Snap.second $t@29@01))) $Snap.unit))
; [eval] 0 <= k
(assert (<= 0 k@26@01))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second $t@29@01)))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@29@01))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@29@01)))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@29@01))))
  $Snap.unit))
; [eval] k < P
(assert (< k@26@01 P@27@01))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@29@01))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@29@01)))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@29@01))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@29@01)))))
  $Snap.unit))
; [eval] P <= |hist|
; [eval] |hist|
(assert (<= P@27@01 (Seq_length hist@28@01)))
; [eval] hist[k]
(push) ; 2
(assert (not (>= k@26@01 0)))
(check-sat)
; unsat
(pop) ; 2
; 0.00s
; (get-info :all-statistics)
(push) ; 2
(assert (not (< k@26@01 (Seq_length hist@28@01))))
(check-sat)
; unsat
(pop) ; 2
; 0.00s
; (get-info :all-statistics)
(assert (not (= (Seq_index hist@28@01 k@26@01) $Ref.null)))
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
(set-option :timeout 0)
(push) ; 2
(declare-const $t@30@01 $Snap)
(assert (= $t@30@01 ($Snap.combine ($Snap.first $t@30@01) ($Snap.second $t@30@01))))
(assert (= ($Snap.first $t@30@01) $Snap.unit))
; [eval] 0 <= k
(assert (=
  ($Snap.second $t@30@01)
  ($Snap.combine
    ($Snap.first ($Snap.second $t@30@01))
    ($Snap.second ($Snap.second $t@30@01)))))
(assert (= ($Snap.first ($Snap.second $t@30@01)) $Snap.unit))
; [eval] k < P
(assert (=
  ($Snap.second ($Snap.second $t@30@01))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second $t@30@01)))
    ($Snap.second ($Snap.second ($Snap.second $t@30@01))))))
; [eval] hist[k]
(push) ; 3
(assert (not (>= k@26@01 0)))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(push) ; 3
(assert (not (< k@26@01 (Seq_length hist@28@01))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(assert (= ($Snap.second ($Snap.second ($Snap.second $t@30@01))) $Snap.unit))
; [eval] hist[k].Ref__Integer_value == 0
; [eval] hist[k]
(push) ; 3
(assert (not (>= k@26@01 0)))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(push) ; 3
(assert (not (< k@26@01 (Seq_length hist@28@01))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(assert (=
  ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second ($Snap.second $t@30@01))))
  0))
(pop) ; 2
(push) ; 2
; [exec]
; var __flatten_4: Ref
(declare-const __flatten_4@31@01 $Ref)
; [exec]
; var __flatten_5: Int
(declare-const __flatten_5@32@01 Int)
; [exec]
; __flatten_4 := hist[k]
; [eval] hist[k]
(push) ; 3
(assert (not (>= k@26@01 0)))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(push) ; 3
(assert (not (< k@26@01 (Seq_length hist@28@01))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(declare-const __flatten_4@33@01 $Ref)
(assert (= __flatten_4@33@01 (Seq_index hist@28@01 k@26@01)))
; [exec]
; __flatten_5 := 0
; [exec]
; __flatten_4.Ref__Integer_value := __flatten_5
(push) ; 3
(set-option :timeout 10)
(assert (not (= (Seq_index hist@28@01 k@26@01) __flatten_4@33@01)))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(assert (not (= __flatten_4@33@01 $Ref.null)))
; [eval] 0 <= k
; [eval] k < P
; [eval] hist[k]
(set-option :timeout 0)
(push) ; 3
(assert (not (>= k@26@01 0)))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(push) ; 3
(assert (not (< k@26@01 (Seq_length hist@28@01))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; [eval] hist[k].Ref__Integer_value == 0
; [eval] hist[k]
(push) ; 3
(assert (not (>= k@26@01 0)))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(push) ; 3
(assert (not (< k@26@01 (Seq_length hist@28@01))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(pop) ; 2
(pop) ; 1
; ---------- Ref__loop_main_96 ----------
(declare-const diz@34@01 $Ref)
(declare-const current_thread_id@35@01 Int)
(declare-const P@36@01 Int)
(declare-const N@37@01 Int)
(declare-const M@38@01 Int)
(declare-const matrix@39@01 Seq<$Ref>)
(declare-const hist@40@01 Seq<$Ref>)
(declare-const diz@41@01 $Ref)
(declare-const current_thread_id@42@01 Int)
(declare-const P@43@01 Int)
(declare-const N@44@01 Int)
(declare-const M@45@01 Int)
(declare-const matrix@46@01 Seq<$Ref>)
(declare-const hist@47@01 Seq<$Ref>)
(push) ; 1
(declare-const $t@48@01 $Snap)
(assert (= $t@48@01 ($Snap.combine ($Snap.first $t@48@01) ($Snap.second $t@48@01))))
(assert (= ($Snap.first $t@48@01) $Snap.unit))
; [eval] diz != null
(assert (not (= diz@41@01 $Ref.null)))
(assert (=
  ($Snap.second $t@48@01)
  ($Snap.combine
    ($Snap.first ($Snap.second $t@48@01))
    ($Snap.second ($Snap.second $t@48@01)))))
(assert (= ($Snap.first ($Snap.second $t@48@01)) $Snap.unit))
; [eval] current_thread_id >= 0
(assert (>= current_thread_id@42@01 0))
(assert (=
  ($Snap.second ($Snap.second $t@48@01))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second $t@48@01)))
    ($Snap.second ($Snap.second ($Snap.second $t@48@01))))))
(assert (= ($Snap.first ($Snap.second ($Snap.second $t@48@01))) $Snap.unit))
; [eval] M > 0
(assert (> M@45@01 0))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second $t@48@01)))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@48@01))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@48@01)))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@48@01))))
  $Snap.unit))
; [eval] N > 0
(assert (> N@44@01 0))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@48@01))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@48@01)))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@48@01))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@48@01)))))
  $Snap.unit))
; [eval] P > 0
(assert (> P@43@01 0))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@48@01)))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@48@01))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@48@01)))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@48@01))))))
  $Snap.unit))
; [eval] P <= |hist|
; [eval] |hist|
(assert (<= P@43@01 (Seq_length hist@47@01)))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@48@01))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@48@01)))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@48@01))))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@48@01)))))))
  $Snap.unit))
; [eval] (forall j: Int, k: Int :: { hist[j], hist[k] } 0 <= j && (j < P && (0 <= k && (k < P && j != k))) ==> hist[j] != hist[k])
(declare-const j@49@01 Int)
(declare-const k@50@01 Int)
(push) ; 2
; [eval] 0 <= j && (j < P && (0 <= k && (k < P && j != k))) ==> hist[j] != hist[k]
; [eval] 0 <= j && (j < P && (0 <= k && (k < P && j != k)))
; [eval] 0 <= j
(push) ; 3
; [then-branch: 9 | !(0 <= j@49@01) | live]
; [else-branch: 9 | 0 <= j@49@01 | live]
(push) ; 4
; [then-branch: 9 | !(0 <= j@49@01)]
(assert (not (<= 0 j@49@01)))
(pop) ; 4
(push) ; 4
; [else-branch: 9 | 0 <= j@49@01]
(assert (<= 0 j@49@01))
; [eval] j < P
(push) ; 5
; [then-branch: 10 | !(j@49@01 < P@43@01) | live]
; [else-branch: 10 | j@49@01 < P@43@01 | live]
(push) ; 6
; [then-branch: 10 | !(j@49@01 < P@43@01)]
(assert (not (< j@49@01 P@43@01)))
(pop) ; 6
(push) ; 6
; [else-branch: 10 | j@49@01 < P@43@01]
(assert (< j@49@01 P@43@01))
; [eval] 0 <= k
(push) ; 7
; [then-branch: 11 | !(0 <= k@50@01) | live]
; [else-branch: 11 | 0 <= k@50@01 | live]
(push) ; 8
; [then-branch: 11 | !(0 <= k@50@01)]
(assert (not (<= 0 k@50@01)))
(pop) ; 8
(push) ; 8
; [else-branch: 11 | 0 <= k@50@01]
(assert (<= 0 k@50@01))
; [eval] k < P
(push) ; 9
; [then-branch: 12 | !(k@50@01 < P@43@01) | live]
; [else-branch: 12 | k@50@01 < P@43@01 | live]
(push) ; 10
; [then-branch: 12 | !(k@50@01 < P@43@01)]
(assert (not (< k@50@01 P@43@01)))
(pop) ; 10
(push) ; 10
; [else-branch: 12 | k@50@01 < P@43@01]
(assert (< k@50@01 P@43@01))
; [eval] j != k
(pop) ; 10
(pop) ; 9
; Joined path conditions
; Joined path conditions
(assert (or (< k@50@01 P@43@01) (not (< k@50@01 P@43@01))))
(pop) ; 8
(pop) ; 7
; Joined path conditions
; Joined path conditions
(assert (=>
  (<= 0 k@50@01)
  (and (<= 0 k@50@01) (or (< k@50@01 P@43@01) (not (< k@50@01 P@43@01))))))
(assert (or (<= 0 k@50@01) (not (<= 0 k@50@01))))
(pop) ; 6
(pop) ; 5
; Joined path conditions
; Joined path conditions
(assert (=>
  (< j@49@01 P@43@01)
  (and
    (< j@49@01 P@43@01)
    (=>
      (<= 0 k@50@01)
      (and (<= 0 k@50@01) (or (< k@50@01 P@43@01) (not (< k@50@01 P@43@01)))))
    (or (<= 0 k@50@01) (not (<= 0 k@50@01))))))
(assert (or (< j@49@01 P@43@01) (not (< j@49@01 P@43@01))))
(pop) ; 4
(pop) ; 3
; Joined path conditions
; Joined path conditions
(assert (=>
  (<= 0 j@49@01)
  (and
    (<= 0 j@49@01)
    (=>
      (< j@49@01 P@43@01)
      (and
        (< j@49@01 P@43@01)
        (=>
          (<= 0 k@50@01)
          (and (<= 0 k@50@01) (or (< k@50@01 P@43@01) (not (< k@50@01 P@43@01)))))
        (or (<= 0 k@50@01) (not (<= 0 k@50@01)))))
    (or (< j@49@01 P@43@01) (not (< j@49@01 P@43@01))))))
(assert (or (<= 0 j@49@01) (not (<= 0 j@49@01))))
(push) ; 3
; [then-branch: 13 | 0 <= j@49@01 && j@49@01 < P@43@01 && 0 <= k@50@01 && k@50@01 < P@43@01 && j@49@01 != k@50@01 | live]
; [else-branch: 13 | !(0 <= j@49@01 && j@49@01 < P@43@01 && 0 <= k@50@01 && k@50@01 < P@43@01 && j@49@01 != k@50@01) | live]
(push) ; 4
; [then-branch: 13 | 0 <= j@49@01 && j@49@01 < P@43@01 && 0 <= k@50@01 && k@50@01 < P@43@01 && j@49@01 != k@50@01]
(assert (and
  (<= 0 j@49@01)
  (and
    (< j@49@01 P@43@01)
    (and (<= 0 k@50@01) (and (< k@50@01 P@43@01) (not (= j@49@01 k@50@01)))))))
; [eval] hist[j] != hist[k]
; [eval] hist[j]
(push) ; 5
(assert (not (>= j@49@01 0)))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(push) ; 5
(assert (not (< j@49@01 (Seq_length hist@47@01))))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
; [eval] hist[k]
(push) ; 5
(assert (not (>= k@50@01 0)))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(push) ; 5
(assert (not (< k@50@01 (Seq_length hist@47@01))))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(pop) ; 4
(push) ; 4
; [else-branch: 13 | !(0 <= j@49@01 && j@49@01 < P@43@01 && 0 <= k@50@01 && k@50@01 < P@43@01 && j@49@01 != k@50@01)]
(assert (not
  (and
    (<= 0 j@49@01)
    (and
      (< j@49@01 P@43@01)
      (and (<= 0 k@50@01) (and (< k@50@01 P@43@01) (not (= j@49@01 k@50@01))))))))
(pop) ; 4
(pop) ; 3
; Joined path conditions
(assert (=>
  (and
    (<= 0 j@49@01)
    (and
      (< j@49@01 P@43@01)
      (and (<= 0 k@50@01) (and (< k@50@01 P@43@01) (not (= j@49@01 k@50@01))))))
  (and
    (<= 0 j@49@01)
    (< j@49@01 P@43@01)
    (<= 0 k@50@01)
    (< k@50@01 P@43@01)
    (not (= j@49@01 k@50@01)))))
; Joined path conditions
(assert (or
  (not
    (and
      (<= 0 j@49@01)
      (and
        (< j@49@01 P@43@01)
        (and (<= 0 k@50@01) (and (< k@50@01 P@43@01) (not (= j@49@01 k@50@01)))))))
  (and
    (<= 0 j@49@01)
    (and
      (< j@49@01 P@43@01)
      (and (<= 0 k@50@01) (and (< k@50@01 P@43@01) (not (= j@49@01 k@50@01))))))))
(pop) ; 2
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall ((j@49@01 Int) (k@50@01 Int)) (!
  (and
    (=>
      (<= 0 j@49@01)
      (and
        (<= 0 j@49@01)
        (=>
          (< j@49@01 P@43@01)
          (and
            (< j@49@01 P@43@01)
            (=>
              (<= 0 k@50@01)
              (and
                (<= 0 k@50@01)
                (or (< k@50@01 P@43@01) (not (< k@50@01 P@43@01)))))
            (or (<= 0 k@50@01) (not (<= 0 k@50@01)))))
        (or (< j@49@01 P@43@01) (not (< j@49@01 P@43@01)))))
    (or (<= 0 j@49@01) (not (<= 0 j@49@01)))
    (=>
      (and
        (<= 0 j@49@01)
        (and
          (< j@49@01 P@43@01)
          (and
            (<= 0 k@50@01)
            (and (< k@50@01 P@43@01) (not (= j@49@01 k@50@01))))))
      (and
        (<= 0 j@49@01)
        (< j@49@01 P@43@01)
        (<= 0 k@50@01)
        (< k@50@01 P@43@01)
        (not (= j@49@01 k@50@01))))
    (or
      (not
        (and
          (<= 0 j@49@01)
          (and
            (< j@49@01 P@43@01)
            (and
              (<= 0 k@50@01)
              (and (< k@50@01 P@43@01) (not (= j@49@01 k@50@01)))))))
      (and
        (<= 0 j@49@01)
        (and
          (< j@49@01 P@43@01)
          (and
            (<= 0 k@50@01)
            (and (< k@50@01 P@43@01) (not (= j@49@01 k@50@01))))))))
  :pattern ((Seq_index hist@47@01 j@49@01) (Seq_index hist@47@01 k@50@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/third_party/testHistogram.vpr@106@12@106@104-aux|)))
(assert (forall ((j@49@01 Int) (k@50@01 Int)) (!
  (=>
    (and
      (<= 0 j@49@01)
      (and
        (< j@49@01 P@43@01)
        (and (<= 0 k@50@01) (and (< k@50@01 P@43@01) (not (= j@49@01 k@50@01))))))
    (not (= (Seq_index hist@47@01 j@49@01) (Seq_index hist@47@01 k@50@01))))
  :pattern ((Seq_index hist@47@01 j@49@01) (Seq_index hist@47@01 k@50@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/third_party/testHistogram.vpr@106@12@106@104|)))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@48@01)))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@48@01))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@48@01)))))))))))
(declare-const k@51@01 Int)
(push) ; 2
; [eval] 0 <= k && k < P
; [eval] 0 <= k
(push) ; 3
; [then-branch: 14 | !(0 <= k@51@01) | live]
; [else-branch: 14 | 0 <= k@51@01 | live]
(push) ; 4
; [then-branch: 14 | !(0 <= k@51@01)]
(assert (not (<= 0 k@51@01)))
(pop) ; 4
(push) ; 4
; [else-branch: 14 | 0 <= k@51@01]
(assert (<= 0 k@51@01))
; [eval] k < P
(pop) ; 4
(pop) ; 3
; Joined path conditions
; Joined path conditions
(assert (or (<= 0 k@51@01) (not (<= 0 k@51@01))))
(assert (and (<= 0 k@51@01) (< k@51@01 P@43@01)))
; [eval] hist[k]
(push) ; 3
(assert (not (>= k@51@01 0)))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(push) ; 3
(assert (not (< k@51@01 (Seq_length hist@47@01))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(pop) ; 2
(declare-fun inv@52@01 ($Ref) Int)
(declare-fun img@53@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
(assert (forall ((k@51@01 Int)) (!
  (=>
    (and (<= 0 k@51@01) (< k@51@01 P@43@01))
    (or (<= 0 k@51@01) (not (<= 0 k@51@01))))
  :pattern ((Seq_index hist@47@01 k@51@01))
  :qid |Ref__Integer_value-aux|)))
; Check receiver injectivity
(push) ; 2
(assert (not (forall ((k1@51@01 Int) (k2@51@01 Int)) (!
  (=>
    (and
      (and (<= 0 k1@51@01) (< k1@51@01 P@43@01))
      (and (<= 0 k2@51@01) (< k2@51@01 P@43@01))
      (= (Seq_index hist@47@01 k1@51@01) (Seq_index hist@47@01 k2@51@01)))
    (= k1@51@01 k2@51@01))
  
  :qid |Ref__Integer_value-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 2
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((k@51@01 Int)) (!
  (=>
    (and (<= 0 k@51@01) (< k@51@01 P@43@01))
    (and
      (= (inv@52@01 (Seq_index hist@47@01 k@51@01)) k@51@01)
      (img@53@01 (Seq_index hist@47@01 k@51@01))))
  :pattern ((Seq_index hist@47@01 k@51@01))
  :qid |quant-u-9981|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@53@01 r) (and (<= 0 (inv@52@01 r)) (< (inv@52@01 r) P@43@01)))
    (= (Seq_index hist@47@01 (inv@52@01 r)) r))
  :pattern ((inv@52@01 r))
  :qid |Ref__Integer_value-fctOfInv|)))
; Permissions are non-negative
; Field permissions are at most one
; Permission implies non-null receiver
(assert (forall ((k@51@01 Int)) (!
  (=>
    (and (<= 0 k@51@01) (< k@51@01 P@43@01))
    (not (= (Seq_index hist@47@01 k@51@01) $Ref.null)))
  :pattern ((Seq_index hist@47@01 k@51@01))
  :qid |Ref__Integer_value-permImpliesNonNull|)))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@48@01))))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@48@01)))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@48@01))))))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@48@01)))))))))
  $Snap.unit))
; [eval] M * N <= |matrix|
; [eval] M * N
; [eval] |matrix|
(assert (<= (* M@45@01 N@44@01) (Seq_length matrix@46@01)))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@48@01)))))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@48@01))))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@48@01)))))))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@48@01))))))))))
  $Snap.unit))
; [eval] (forall j: Int, k: Int :: { matrix[j], matrix[k] } 0 <= j && (j < M * N && (0 <= k && (k < M * N && j != k))) ==> matrix[j] != matrix[k])
(declare-const j@54@01 Int)
(declare-const k@55@01 Int)
(push) ; 2
; [eval] 0 <= j && (j < M * N && (0 <= k && (k < M * N && j != k))) ==> matrix[j] != matrix[k]
; [eval] 0 <= j && (j < M * N && (0 <= k && (k < M * N && j != k)))
; [eval] 0 <= j
(push) ; 3
; [then-branch: 15 | !(0 <= j@54@01) | live]
; [else-branch: 15 | 0 <= j@54@01 | live]
(push) ; 4
; [then-branch: 15 | !(0 <= j@54@01)]
(assert (not (<= 0 j@54@01)))
(pop) ; 4
(push) ; 4
; [else-branch: 15 | 0 <= j@54@01]
(assert (<= 0 j@54@01))
; [eval] j < M * N
; [eval] M * N
(push) ; 5
; [then-branch: 16 | !(j@54@01 < M@45@01 * N@44@01) | live]
; [else-branch: 16 | j@54@01 < M@45@01 * N@44@01 | live]
(push) ; 6
; [then-branch: 16 | !(j@54@01 < M@45@01 * N@44@01)]
(assert (not (< j@54@01 (* M@45@01 N@44@01))))
(pop) ; 6
(push) ; 6
; [else-branch: 16 | j@54@01 < M@45@01 * N@44@01]
(assert (< j@54@01 (* M@45@01 N@44@01)))
; [eval] 0 <= k
(push) ; 7
; [then-branch: 17 | !(0 <= k@55@01) | live]
; [else-branch: 17 | 0 <= k@55@01 | live]
(push) ; 8
; [then-branch: 17 | !(0 <= k@55@01)]
(assert (not (<= 0 k@55@01)))
(pop) ; 8
(push) ; 8
; [else-branch: 17 | 0 <= k@55@01]
(assert (<= 0 k@55@01))
; [eval] k < M * N
; [eval] M * N
(push) ; 9
; [then-branch: 18 | !(k@55@01 < M@45@01 * N@44@01) | live]
; [else-branch: 18 | k@55@01 < M@45@01 * N@44@01 | live]
(push) ; 10
; [then-branch: 18 | !(k@55@01 < M@45@01 * N@44@01)]
(assert (not (< k@55@01 (* M@45@01 N@44@01))))
(pop) ; 10
(push) ; 10
; [else-branch: 18 | k@55@01 < M@45@01 * N@44@01]
(assert (< k@55@01 (* M@45@01 N@44@01)))
; [eval] j != k
(pop) ; 10
(pop) ; 9
; Joined path conditions
; Joined path conditions
(assert (or (< k@55@01 (* M@45@01 N@44@01)) (not (< k@55@01 (* M@45@01 N@44@01)))))
(pop) ; 8
(pop) ; 7
; Joined path conditions
; Joined path conditions
(assert (=>
  (<= 0 k@55@01)
  (and
    (<= 0 k@55@01)
    (or (< k@55@01 (* M@45@01 N@44@01)) (not (< k@55@01 (* M@45@01 N@44@01)))))))
(assert (or (<= 0 k@55@01) (not (<= 0 k@55@01))))
(pop) ; 6
(pop) ; 5
; Joined path conditions
; Joined path conditions
(assert (=>
  (< j@54@01 (* M@45@01 N@44@01))
  (and
    (< j@54@01 (* M@45@01 N@44@01))
    (=>
      (<= 0 k@55@01)
      (and
        (<= 0 k@55@01)
        (or
          (< k@55@01 (* M@45@01 N@44@01))
          (not (< k@55@01 (* M@45@01 N@44@01))))))
    (or (<= 0 k@55@01) (not (<= 0 k@55@01))))))
(assert (or (< j@54@01 (* M@45@01 N@44@01)) (not (< j@54@01 (* M@45@01 N@44@01)))))
(pop) ; 4
(pop) ; 3
; Joined path conditions
; Joined path conditions
(assert (=>
  (<= 0 j@54@01)
  (and
    (<= 0 j@54@01)
    (=>
      (< j@54@01 (* M@45@01 N@44@01))
      (and
        (< j@54@01 (* M@45@01 N@44@01))
        (=>
          (<= 0 k@55@01)
          (and
            (<= 0 k@55@01)
            (or
              (< k@55@01 (* M@45@01 N@44@01))
              (not (< k@55@01 (* M@45@01 N@44@01))))))
        (or (<= 0 k@55@01) (not (<= 0 k@55@01)))))
    (or (< j@54@01 (* M@45@01 N@44@01)) (not (< j@54@01 (* M@45@01 N@44@01)))))))
(assert (or (<= 0 j@54@01) (not (<= 0 j@54@01))))
(push) ; 3
; [then-branch: 19 | 0 <= j@54@01 && j@54@01 < M@45@01 * N@44@01 && 0 <= k@55@01 && k@55@01 < M@45@01 * N@44@01 && j@54@01 != k@55@01 | live]
; [else-branch: 19 | !(0 <= j@54@01 && j@54@01 < M@45@01 * N@44@01 && 0 <= k@55@01 && k@55@01 < M@45@01 * N@44@01 && j@54@01 != k@55@01) | live]
(push) ; 4
; [then-branch: 19 | 0 <= j@54@01 && j@54@01 < M@45@01 * N@44@01 && 0 <= k@55@01 && k@55@01 < M@45@01 * N@44@01 && j@54@01 != k@55@01]
(assert (and
  (<= 0 j@54@01)
  (and
    (< j@54@01 (* M@45@01 N@44@01))
    (and
      (<= 0 k@55@01)
      (and (< k@55@01 (* M@45@01 N@44@01)) (not (= j@54@01 k@55@01)))))))
; [eval] matrix[j] != matrix[k]
; [eval] matrix[j]
(push) ; 5
(assert (not (>= j@54@01 0)))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(push) ; 5
(assert (not (< j@54@01 (Seq_length matrix@46@01))))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
; [eval] matrix[k]
(push) ; 5
(assert (not (>= k@55@01 0)))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(push) ; 5
(assert (not (< k@55@01 (Seq_length matrix@46@01))))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(pop) ; 4
(push) ; 4
; [else-branch: 19 | !(0 <= j@54@01 && j@54@01 < M@45@01 * N@44@01 && 0 <= k@55@01 && k@55@01 < M@45@01 * N@44@01 && j@54@01 != k@55@01)]
(assert (not
  (and
    (<= 0 j@54@01)
    (and
      (< j@54@01 (* M@45@01 N@44@01))
      (and
        (<= 0 k@55@01)
        (and (< k@55@01 (* M@45@01 N@44@01)) (not (= j@54@01 k@55@01))))))))
(pop) ; 4
(pop) ; 3
; Joined path conditions
(assert (=>
  (and
    (<= 0 j@54@01)
    (and
      (< j@54@01 (* M@45@01 N@44@01))
      (and
        (<= 0 k@55@01)
        (and (< k@55@01 (* M@45@01 N@44@01)) (not (= j@54@01 k@55@01))))))
  (and
    (<= 0 j@54@01)
    (< j@54@01 (* M@45@01 N@44@01))
    (<= 0 k@55@01)
    (< k@55@01 (* M@45@01 N@44@01))
    (not (= j@54@01 k@55@01)))))
; Joined path conditions
(assert (or
  (not
    (and
      (<= 0 j@54@01)
      (and
        (< j@54@01 (* M@45@01 N@44@01))
        (and
          (<= 0 k@55@01)
          (and (< k@55@01 (* M@45@01 N@44@01)) (not (= j@54@01 k@55@01)))))))
  (and
    (<= 0 j@54@01)
    (and
      (< j@54@01 (* M@45@01 N@44@01))
      (and
        (<= 0 k@55@01)
        (and (< k@55@01 (* M@45@01 N@44@01)) (not (= j@54@01 k@55@01))))))))
(pop) ; 2
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall ((j@54@01 Int) (k@55@01 Int)) (!
  (and
    (=>
      (<= 0 j@54@01)
      (and
        (<= 0 j@54@01)
        (=>
          (< j@54@01 (* M@45@01 N@44@01))
          (and
            (< j@54@01 (* M@45@01 N@44@01))
            (=>
              (<= 0 k@55@01)
              (and
                (<= 0 k@55@01)
                (or
                  (< k@55@01 (* M@45@01 N@44@01))
                  (not (< k@55@01 (* M@45@01 N@44@01))))))
            (or (<= 0 k@55@01) (not (<= 0 k@55@01)))))
        (or
          (< j@54@01 (* M@45@01 N@44@01))
          (not (< j@54@01 (* M@45@01 N@44@01))))))
    (or (<= 0 j@54@01) (not (<= 0 j@54@01)))
    (=>
      (and
        (<= 0 j@54@01)
        (and
          (< j@54@01 (* M@45@01 N@44@01))
          (and
            (<= 0 k@55@01)
            (and (< k@55@01 (* M@45@01 N@44@01)) (not (= j@54@01 k@55@01))))))
      (and
        (<= 0 j@54@01)
        (< j@54@01 (* M@45@01 N@44@01))
        (<= 0 k@55@01)
        (< k@55@01 (* M@45@01 N@44@01))
        (not (= j@54@01 k@55@01))))
    (or
      (not
        (and
          (<= 0 j@54@01)
          (and
            (< j@54@01 (* M@45@01 N@44@01))
            (and
              (<= 0 k@55@01)
              (and (< k@55@01 (* M@45@01 N@44@01)) (not (= j@54@01 k@55@01)))))))
      (and
        (<= 0 j@54@01)
        (and
          (< j@54@01 (* M@45@01 N@44@01))
          (and
            (<= 0 k@55@01)
            (and (< k@55@01 (* M@45@01 N@44@01)) (not (= j@54@01 k@55@01))))))))
  :pattern ((Seq_index matrix@46@01 j@54@01) (Seq_index matrix@46@01 k@55@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/third_party/testHistogram.vpr@109@12@109@112-aux|)))
(assert (forall ((j@54@01 Int) (k@55@01 Int)) (!
  (=>
    (and
      (<= 0 j@54@01)
      (and
        (< j@54@01 (* M@45@01 N@44@01))
        (and
          (<= 0 k@55@01)
          (and (< k@55@01 (* M@45@01 N@44@01)) (not (= j@54@01 k@55@01))))))
    (not (= (Seq_index matrix@46@01 j@54@01) (Seq_index matrix@46@01 k@55@01))))
  :pattern ((Seq_index matrix@46@01 j@54@01) (Seq_index matrix@46@01 k@55@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/third_party/testHistogram.vpr@109@12@109@112|)))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@48@01))))))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@48@01)))))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@48@01))))))))))))))
(declare-const j@56@01 Int)
(push) ; 2
; [eval] 0 <= j && j < M * N
; [eval] 0 <= j
(push) ; 3
; [then-branch: 20 | !(0 <= j@56@01) | live]
; [else-branch: 20 | 0 <= j@56@01 | live]
(push) ; 4
; [then-branch: 20 | !(0 <= j@56@01)]
(assert (not (<= 0 j@56@01)))
(pop) ; 4
(push) ; 4
; [else-branch: 20 | 0 <= j@56@01]
(assert (<= 0 j@56@01))
; [eval] j < M * N
; [eval] M * N
(pop) ; 4
(pop) ; 3
; Joined path conditions
; Joined path conditions
(assert (or (<= 0 j@56@01) (not (<= 0 j@56@01))))
(assert (and (<= 0 j@56@01) (< j@56@01 (* M@45@01 N@44@01))))
; [eval] matrix[j]
(push) ; 3
(assert (not (>= j@56@01 0)))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(push) ; 3
(assert (not (< j@56@01 (Seq_length matrix@46@01))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(pop) ; 2
(declare-fun inv@57@01 ($Ref) Int)
(declare-fun img@58@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
(assert (forall ((j@56@01 Int)) (!
  (=>
    (and (<= 0 j@56@01) (< j@56@01 (* M@45@01 N@44@01)))
    (or (<= 0 j@56@01) (not (<= 0 j@56@01))))
  :pattern ((Seq_index matrix@46@01 j@56@01))
  :qid |Ref__Integer_value-aux|)))
; Check receiver injectivity
(push) ; 2
(assert (not (forall ((j1@56@01 Int) (j2@56@01 Int)) (!
  (=>
    (and
      (and (<= 0 j1@56@01) (< j1@56@01 (* M@45@01 N@44@01)))
      (and (<= 0 j2@56@01) (< j2@56@01 (* M@45@01 N@44@01)))
      (= (Seq_index matrix@46@01 j1@56@01) (Seq_index matrix@46@01 j2@56@01)))
    (= j1@56@01 j2@56@01))
  
  :qid |Ref__Integer_value-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 2
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((j@56@01 Int)) (!
  (=>
    (and (<= 0 j@56@01) (< j@56@01 (* M@45@01 N@44@01)))
    (and
      (= (inv@57@01 (Seq_index matrix@46@01 j@56@01)) j@56@01)
      (img@58@01 (Seq_index matrix@46@01 j@56@01))))
  :pattern ((Seq_index matrix@46@01 j@56@01))
  :qid |quant-u-9983|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@58@01 r)
      (and (<= 0 (inv@57@01 r)) (< (inv@57@01 r) (* M@45@01 N@44@01))))
    (= (Seq_index matrix@46@01 (inv@57@01 r)) r))
  :pattern ((inv@57@01 r))
  :qid |Ref__Integer_value-fctOfInv|)))
; Permissions are non-negative
; Field permissions are at most one
; Permission implies non-null receiver
(assert (forall ((j@56@01 Int)) (!
  (=>
    (and (<= 0 j@56@01) (< j@56@01 (* M@45@01 N@44@01)))
    (not (= (Seq_index matrix@46@01 j@56@01) $Ref.null)))
  :pattern ((Seq_index matrix@46@01 j@56@01))
  :qid |Ref__Integer_value-permImpliesNonNull|)))
(push) ; 2
(set-option :timeout 10)
(assert (not (forall ((r $Ref)) (!
  (and
    (= (Seq_index matrix@46@01 j@56@01) (Seq_index hist@47@01 k@51@01))
    (=
      (and
        (img@58@01 r)
        (and (<= 0 (inv@57@01 r)) (< (inv@57@01 r) (* M@45@01 N@44@01))))
      (and (img@53@01 r) (and (<= 0 (inv@52@01 r)) (< (inv@52@01 r) P@43@01)))))
  
  :qid |quant-u-9984|))))
(check-sat)
; unknown
(pop) ; 2
; 0.00s
; (get-info :all-statistics)
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@48@01)))))))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@48@01))))))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@48@01)))))))))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@48@01))))))))))))
  $Snap.unit))
; [eval] (forall i: Int, j: Int :: { Ref__multidim_index_2(M, N, i, j) } 0 <= i && (i < M && (0 <= j && j < N)) ==> Ref__multidim_index_2(M, N, i, j) < |matrix|)
(declare-const i@59@01 Int)
(declare-const j@60@01 Int)
(set-option :timeout 0)
(push) ; 2
; [eval] 0 <= i && (i < M && (0 <= j && j < N)) ==> Ref__multidim_index_2(M, N, i, j) < |matrix|
; [eval] 0 <= i && (i < M && (0 <= j && j < N))
; [eval] 0 <= i
(push) ; 3
; [then-branch: 21 | !(0 <= i@59@01) | live]
; [else-branch: 21 | 0 <= i@59@01 | live]
(push) ; 4
; [then-branch: 21 | !(0 <= i@59@01)]
(assert (not (<= 0 i@59@01)))
(pop) ; 4
(push) ; 4
; [else-branch: 21 | 0 <= i@59@01]
(assert (<= 0 i@59@01))
; [eval] i < M
(push) ; 5
; [then-branch: 22 | !(i@59@01 < M@45@01) | live]
; [else-branch: 22 | i@59@01 < M@45@01 | live]
(push) ; 6
; [then-branch: 22 | !(i@59@01 < M@45@01)]
(assert (not (< i@59@01 M@45@01)))
(pop) ; 6
(push) ; 6
; [else-branch: 22 | i@59@01 < M@45@01]
(assert (< i@59@01 M@45@01))
; [eval] 0 <= j
(push) ; 7
; [then-branch: 23 | !(0 <= j@60@01) | live]
; [else-branch: 23 | 0 <= j@60@01 | live]
(push) ; 8
; [then-branch: 23 | !(0 <= j@60@01)]
(assert (not (<= 0 j@60@01)))
(pop) ; 8
(push) ; 8
; [else-branch: 23 | 0 <= j@60@01]
(assert (<= 0 j@60@01))
; [eval] j < N
(pop) ; 8
(pop) ; 7
; Joined path conditions
; Joined path conditions
(assert (or (<= 0 j@60@01) (not (<= 0 j@60@01))))
(pop) ; 6
(pop) ; 5
; Joined path conditions
; Joined path conditions
(assert (=>
  (< i@59@01 M@45@01)
  (and (< i@59@01 M@45@01) (or (<= 0 j@60@01) (not (<= 0 j@60@01))))))
(assert (or (< i@59@01 M@45@01) (not (< i@59@01 M@45@01))))
(pop) ; 4
(pop) ; 3
; Joined path conditions
; Joined path conditions
(assert (=>
  (<= 0 i@59@01)
  (and
    (<= 0 i@59@01)
    (=>
      (< i@59@01 M@45@01)
      (and (< i@59@01 M@45@01) (or (<= 0 j@60@01) (not (<= 0 j@60@01)))))
    (or (< i@59@01 M@45@01) (not (< i@59@01 M@45@01))))))
(assert (or (<= 0 i@59@01) (not (<= 0 i@59@01))))
(push) ; 3
; [then-branch: 24 | 0 <= i@59@01 && i@59@01 < M@45@01 && 0 <= j@60@01 && j@60@01 < N@44@01 | live]
; [else-branch: 24 | !(0 <= i@59@01 && i@59@01 < M@45@01 && 0 <= j@60@01 && j@60@01 < N@44@01) | live]
(push) ; 4
; [then-branch: 24 | 0 <= i@59@01 && i@59@01 < M@45@01 && 0 <= j@60@01 && j@60@01 < N@44@01]
(assert (and
  (<= 0 i@59@01)
  (and (< i@59@01 M@45@01) (and (<= 0 j@60@01) (< j@60@01 N@44@01)))))
; [eval] Ref__multidim_index_2(M, N, i, j) < |matrix|
; [eval] Ref__multidim_index_2(M, N, i, j)
(push) ; 5
; [eval] 0 <= i0
; [eval] i0 < N0
; [eval] 0 <= N0
(push) ; 6
(assert (not (<= 0 M@45@01)))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(assert (<= 0 M@45@01))
; [eval] 0 <= i1
; [eval] i1 < N1
; [eval] 0 <= N1
(push) ; 6
(assert (not (<= 0 N@44@01)))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(assert (<= 0 N@44@01))
(assert (Ref__multidim_index_2%precondition ($Snap.combine
  $Snap.unit
  ($Snap.combine
    $Snap.unit
    ($Snap.combine
      $Snap.unit
      ($Snap.combine $Snap.unit ($Snap.combine $Snap.unit $Snap.unit))))) M@45@01 N@44@01 i@59@01 j@60@01))
(pop) ; 5
; Joined path conditions
(assert (and
  (<= 0 M@45@01)
  (<= 0 N@44@01)
  (Ref__multidim_index_2%precondition ($Snap.combine
    $Snap.unit
    ($Snap.combine
      $Snap.unit
      ($Snap.combine
        $Snap.unit
        ($Snap.combine $Snap.unit ($Snap.combine $Snap.unit $Snap.unit))))) M@45@01 N@44@01 i@59@01 j@60@01)))
; [eval] |matrix|
(pop) ; 4
(push) ; 4
; [else-branch: 24 | !(0 <= i@59@01 && i@59@01 < M@45@01 && 0 <= j@60@01 && j@60@01 < N@44@01)]
(assert (not
  (and
    (<= 0 i@59@01)
    (and (< i@59@01 M@45@01) (and (<= 0 j@60@01) (< j@60@01 N@44@01))))))
(pop) ; 4
(pop) ; 3
; Joined path conditions
(assert (=>
  (and
    (<= 0 i@59@01)
    (and (< i@59@01 M@45@01) (and (<= 0 j@60@01) (< j@60@01 N@44@01))))
  (and
    (<= 0 i@59@01)
    (< i@59@01 M@45@01)
    (<= 0 j@60@01)
    (< j@60@01 N@44@01)
    (<= 0 M@45@01)
    (<= 0 N@44@01)
    (Ref__multidim_index_2%precondition ($Snap.combine
      $Snap.unit
      ($Snap.combine
        $Snap.unit
        ($Snap.combine
          $Snap.unit
          ($Snap.combine $Snap.unit ($Snap.combine $Snap.unit $Snap.unit))))) M@45@01 N@44@01 i@59@01 j@60@01))))
; Joined path conditions
(assert (or
  (not
    (and
      (<= 0 i@59@01)
      (and (< i@59@01 M@45@01) (and (<= 0 j@60@01) (< j@60@01 N@44@01)))))
  (and
    (<= 0 i@59@01)
    (and (< i@59@01 M@45@01) (and (<= 0 j@60@01) (< j@60@01 N@44@01))))))
(pop) ; 2
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall ((i@59@01 Int) (j@60@01 Int)) (!
  (and
    (=>
      (<= 0 i@59@01)
      (and
        (<= 0 i@59@01)
        (=>
          (< i@59@01 M@45@01)
          (and (< i@59@01 M@45@01) (or (<= 0 j@60@01) (not (<= 0 j@60@01)))))
        (or (< i@59@01 M@45@01) (not (< i@59@01 M@45@01)))))
    (or (<= 0 i@59@01) (not (<= 0 i@59@01)))
    (=>
      (and
        (<= 0 i@59@01)
        (and (< i@59@01 M@45@01) (and (<= 0 j@60@01) (< j@60@01 N@44@01))))
      (and
        (<= 0 i@59@01)
        (< i@59@01 M@45@01)
        (<= 0 j@60@01)
        (< j@60@01 N@44@01)
        (<= 0 M@45@01)
        (<= 0 N@44@01)
        (Ref__multidim_index_2%precondition ($Snap.combine
          $Snap.unit
          ($Snap.combine
            $Snap.unit
            ($Snap.combine
              $Snap.unit
              ($Snap.combine $Snap.unit ($Snap.combine $Snap.unit $Snap.unit))))) M@45@01 N@44@01 i@59@01 j@60@01)))
    (or
      (not
        (and
          (<= 0 i@59@01)
          (and (< i@59@01 M@45@01) (and (<= 0 j@60@01) (< j@60@01 N@44@01)))))
      (and
        (<= 0 i@59@01)
        (and (< i@59@01 M@45@01) (and (<= 0 j@60@01) (< j@60@01 N@44@01))))))
  :pattern ((Ref__multidim_index_2%limited ($Snap.combine
    $Snap.unit
    ($Snap.combine
      $Snap.unit
      ($Snap.combine
        $Snap.unit
        ($Snap.combine $Snap.unit ($Snap.combine $Snap.unit $Snap.unit))))) M@45@01 N@44@01 i@59@01 j@60@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/third_party/testHistogram.vpr@111@13@111@129-aux|)))
(assert (forall ((i@59@01 Int) (j@60@01 Int)) (!
  (=>
    (and
      (<= 0 i@59@01)
      (and (< i@59@01 M@45@01) (and (<= 0 j@60@01) (< j@60@01 N@44@01))))
    (<
      (Ref__multidim_index_2 ($Snap.combine
        $Snap.unit
        ($Snap.combine
          $Snap.unit
          ($Snap.combine
            $Snap.unit
            ($Snap.combine $Snap.unit ($Snap.combine $Snap.unit $Snap.unit))))) M@45@01 N@44@01 i@59@01 j@60@01)
      (Seq_length matrix@46@01)))
  :pattern ((Ref__multidim_index_2%limited ($Snap.combine
    $Snap.unit
    ($Snap.combine
      $Snap.unit
      ($Snap.combine
        $Snap.unit
        ($Snap.combine $Snap.unit ($Snap.combine $Snap.unit $Snap.unit))))) M@45@01 N@44@01 i@59@01 j@60@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/third_party/testHistogram.vpr@111@13@111@129|)))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@48@01))))))))))))
  $Snap.unit))
; [eval] (forall i: Int, j: Int :: { matrix[Ref__multidim_index_2(M, N, i, j)] } 0 <= i && (i < M && (0 <= j && j < N)) ==> 0 <= matrix[Ref__multidim_index_2(M, N, i, j)].Ref__Integer_value && matrix[Ref__multidim_index_2(M, N, i, j)].Ref__Integer_value < P)
(declare-const i@61@01 Int)
(declare-const j@62@01 Int)
(push) ; 2
; [eval] 0 <= i && (i < M && (0 <= j && j < N)) ==> 0 <= matrix[Ref__multidim_index_2(M, N, i, j)].Ref__Integer_value && matrix[Ref__multidim_index_2(M, N, i, j)].Ref__Integer_value < P
; [eval] 0 <= i && (i < M && (0 <= j && j < N))
; [eval] 0 <= i
(push) ; 3
; [then-branch: 25 | !(0 <= i@61@01) | live]
; [else-branch: 25 | 0 <= i@61@01 | live]
(push) ; 4
; [then-branch: 25 | !(0 <= i@61@01)]
(assert (not (<= 0 i@61@01)))
(pop) ; 4
(push) ; 4
; [else-branch: 25 | 0 <= i@61@01]
(assert (<= 0 i@61@01))
; [eval] i < M
(push) ; 5
; [then-branch: 26 | !(i@61@01 < M@45@01) | live]
; [else-branch: 26 | i@61@01 < M@45@01 | live]
(push) ; 6
; [then-branch: 26 | !(i@61@01 < M@45@01)]
(assert (not (< i@61@01 M@45@01)))
(pop) ; 6
(push) ; 6
; [else-branch: 26 | i@61@01 < M@45@01]
(assert (< i@61@01 M@45@01))
; [eval] 0 <= j
(push) ; 7
; [then-branch: 27 | !(0 <= j@62@01) | live]
; [else-branch: 27 | 0 <= j@62@01 | live]
(push) ; 8
; [then-branch: 27 | !(0 <= j@62@01)]
(assert (not (<= 0 j@62@01)))
(pop) ; 8
(push) ; 8
; [else-branch: 27 | 0 <= j@62@01]
(assert (<= 0 j@62@01))
; [eval] j < N
(pop) ; 8
(pop) ; 7
; Joined path conditions
; Joined path conditions
(assert (or (<= 0 j@62@01) (not (<= 0 j@62@01))))
(pop) ; 6
(pop) ; 5
; Joined path conditions
; Joined path conditions
(assert (=>
  (< i@61@01 M@45@01)
  (and (< i@61@01 M@45@01) (or (<= 0 j@62@01) (not (<= 0 j@62@01))))))
(assert (or (< i@61@01 M@45@01) (not (< i@61@01 M@45@01))))
(pop) ; 4
(pop) ; 3
; Joined path conditions
; Joined path conditions
(assert (=>
  (<= 0 i@61@01)
  (and
    (<= 0 i@61@01)
    (=>
      (< i@61@01 M@45@01)
      (and (< i@61@01 M@45@01) (or (<= 0 j@62@01) (not (<= 0 j@62@01)))))
    (or (< i@61@01 M@45@01) (not (< i@61@01 M@45@01))))))
(assert (or (<= 0 i@61@01) (not (<= 0 i@61@01))))
(push) ; 3
; [then-branch: 28 | 0 <= i@61@01 && i@61@01 < M@45@01 && 0 <= j@62@01 && j@62@01 < N@44@01 | live]
; [else-branch: 28 | !(0 <= i@61@01 && i@61@01 < M@45@01 && 0 <= j@62@01 && j@62@01 < N@44@01) | live]
(push) ; 4
; [then-branch: 28 | 0 <= i@61@01 && i@61@01 < M@45@01 && 0 <= j@62@01 && j@62@01 < N@44@01]
(assert (and
  (<= 0 i@61@01)
  (and (< i@61@01 M@45@01) (and (<= 0 j@62@01) (< j@62@01 N@44@01)))))
; [eval] 0 <= matrix[Ref__multidim_index_2(M, N, i, j)].Ref__Integer_value && matrix[Ref__multidim_index_2(M, N, i, j)].Ref__Integer_value < P
; [eval] 0 <= matrix[Ref__multidim_index_2(M, N, i, j)].Ref__Integer_value
; [eval] matrix[Ref__multidim_index_2(M, N, i, j)]
; [eval] Ref__multidim_index_2(M, N, i, j)
(push) ; 5
; [eval] 0 <= i0
; [eval] i0 < N0
; [eval] 0 <= N0
(push) ; 6
(assert (not (<= 0 M@45@01)))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(assert (<= 0 M@45@01))
; [eval] 0 <= i1
; [eval] i1 < N1
; [eval] 0 <= N1
(push) ; 6
(assert (not (<= 0 N@44@01)))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(assert (<= 0 N@44@01))
(assert (Ref__multidim_index_2%precondition ($Snap.combine
  $Snap.unit
  ($Snap.combine
    $Snap.unit
    ($Snap.combine
      $Snap.unit
      ($Snap.combine $Snap.unit ($Snap.combine $Snap.unit $Snap.unit))))) M@45@01 N@44@01 i@61@01 j@62@01))
(pop) ; 5
; Joined path conditions
(assert (and
  (<= 0 M@45@01)
  (<= 0 N@44@01)
  (Ref__multidim_index_2%precondition ($Snap.combine
    $Snap.unit
    ($Snap.combine
      $Snap.unit
      ($Snap.combine
        $Snap.unit
        ($Snap.combine $Snap.unit ($Snap.combine $Snap.unit $Snap.unit))))) M@45@01 N@44@01 i@61@01 j@62@01)))
(push) ; 5
(assert (not (>=
  (Ref__multidim_index_2 ($Snap.combine
    $Snap.unit
    ($Snap.combine
      $Snap.unit
      ($Snap.combine
        $Snap.unit
        ($Snap.combine $Snap.unit ($Snap.combine $Snap.unit $Snap.unit))))) M@45@01 N@44@01 i@61@01 j@62@01)
  0)))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(push) ; 5
(assert (not (<
  (Ref__multidim_index_2 ($Snap.combine
    $Snap.unit
    ($Snap.combine
      $Snap.unit
      ($Snap.combine
        $Snap.unit
        ($Snap.combine $Snap.unit ($Snap.combine $Snap.unit $Snap.unit))))) M@45@01 N@44@01 i@61@01 j@62@01)
  (Seq_length matrix@46@01))))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(declare-const sm@63@01 $FVF<Ref__Integer_value>)
; Definitional axioms for snapshot map values
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@53@01 r) (and (<= 0 (inv@52@01 r)) (< (inv@52@01 r) P@43@01)))
    (=
      ($FVF.lookup_Ref__Integer_value (as sm@63@01  $FVF<Ref__Integer_value>) r)
      ($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@48@01))))))))) r)))
  :pattern (($FVF.lookup_Ref__Integer_value (as sm@63@01  $FVF<Ref__Integer_value>) r))
  :pattern (($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@48@01))))))))) r))
  :qid |qp.fvfValDef0|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@58@01 r)
      (and (<= 0 (inv@57@01 r)) (< (inv@57@01 r) (* M@45@01 N@44@01))))
    (=
      ($FVF.lookup_Ref__Integer_value (as sm@63@01  $FVF<Ref__Integer_value>) r)
      ($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@48@01)))))))))))) r)))
  :pattern (($FVF.lookup_Ref__Integer_value (as sm@63@01  $FVF<Ref__Integer_value>) r))
  :pattern (($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@48@01)))))))))))) r))
  :qid |qp.fvfValDef1|)))
(declare-const pm@64@01 $FPM)
(assert (forall ((r $Ref)) (!
  (=
    ($FVF.perm_Ref__Integer_value (as pm@64@01  $FPM) r)
    (+
      (ite
        (and (img@53@01 r) (and (<= 0 (inv@52@01 r)) (< (inv@52@01 r) P@43@01)))
        $Perm.Write
        $Perm.No)
      (ite
        (and
          (img@58@01 r)
          (and (<= 0 (inv@57@01 r)) (< (inv@57@01 r) (* M@45@01 N@44@01))))
        (/ (to_real 1) (to_real 4))
        $Perm.No)))
  :pattern (($FVF.perm_Ref__Integer_value (as pm@64@01  $FPM) r))
  :qid |qp.resPrmSumDef2|)))
(push) ; 5
(assert (not (<
  $Perm.No
  ($FVF.perm_Ref__Integer_value (as pm@64@01  $FPM) (Seq_index
    matrix@46@01
    (Ref__multidim_index_2 ($Snap.combine
      $Snap.unit
      ($Snap.combine
        $Snap.unit
        ($Snap.combine
          $Snap.unit
          ($Snap.combine $Snap.unit ($Snap.combine $Snap.unit $Snap.unit))))) M@45@01 N@44@01 i@61@01 j@62@01))))))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(push) ; 5
; [then-branch: 29 | !(0 <= Lookup(Ref__Integer_value, sm@63@01, matrix@46@01[Ref__multidim_index_2((_, (_, (_, (_, (_, _))))), M@45@01, N@44@01, i@61@01, j@62@01)])) | live]
; [else-branch: 29 | 0 <= Lookup(Ref__Integer_value, sm@63@01, matrix@46@01[Ref__multidim_index_2((_, (_, (_, (_, (_, _))))), M@45@01, N@44@01, i@61@01, j@62@01)]) | live]
(push) ; 6
; [then-branch: 29 | !(0 <= Lookup(Ref__Integer_value, sm@63@01, matrix@46@01[Ref__multidim_index_2((_, (_, (_, (_, (_, _))))), M@45@01, N@44@01, i@61@01, j@62@01)]))]
(assert (not
  (<=
    0
    ($FVF.lookup_Ref__Integer_value (as sm@63@01  $FVF<Ref__Integer_value>) (Seq_index
      matrix@46@01
      (Ref__multidim_index_2 ($Snap.combine
        $Snap.unit
        ($Snap.combine
          $Snap.unit
          ($Snap.combine
            $Snap.unit
            ($Snap.combine $Snap.unit ($Snap.combine $Snap.unit $Snap.unit))))) M@45@01 N@44@01 i@61@01 j@62@01))))))
(pop) ; 6
(push) ; 6
; [else-branch: 29 | 0 <= Lookup(Ref__Integer_value, sm@63@01, matrix@46@01[Ref__multidim_index_2((_, (_, (_, (_, (_, _))))), M@45@01, N@44@01, i@61@01, j@62@01)])]
(assert (<=
  0
  ($FVF.lookup_Ref__Integer_value (as sm@63@01  $FVF<Ref__Integer_value>) (Seq_index
    matrix@46@01
    (Ref__multidim_index_2 ($Snap.combine
      $Snap.unit
      ($Snap.combine
        $Snap.unit
        ($Snap.combine
          $Snap.unit
          ($Snap.combine $Snap.unit ($Snap.combine $Snap.unit $Snap.unit))))) M@45@01 N@44@01 i@61@01 j@62@01)))))
; [eval] matrix[Ref__multidim_index_2(M, N, i, j)].Ref__Integer_value < P
; [eval] matrix[Ref__multidim_index_2(M, N, i, j)]
; [eval] Ref__multidim_index_2(M, N, i, j)
(push) ; 7
; [eval] 0 <= i0
; [eval] i0 < N0
; [eval] 0 <= N0
; [eval] 0 <= i1
; [eval] i1 < N1
; [eval] 0 <= N1
(pop) ; 7
; Joined path conditions
(push) ; 7
(assert (not (>=
  (Ref__multidim_index_2 ($Snap.combine
    $Snap.unit
    ($Snap.combine
      $Snap.unit
      ($Snap.combine
        $Snap.unit
        ($Snap.combine $Snap.unit ($Snap.combine $Snap.unit $Snap.unit))))) M@45@01 N@44@01 i@61@01 j@62@01)
  0)))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(push) ; 7
(assert (not (<
  (Ref__multidim_index_2 ($Snap.combine
    $Snap.unit
    ($Snap.combine
      $Snap.unit
      ($Snap.combine
        $Snap.unit
        ($Snap.combine $Snap.unit ($Snap.combine $Snap.unit $Snap.unit))))) M@45@01 N@44@01 i@61@01 j@62@01)
  (Seq_length matrix@46@01))))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(assert (and
  (forall ((r $Ref)) (!
    (=>
      (and (img@53@01 r) (and (<= 0 (inv@52@01 r)) (< (inv@52@01 r) P@43@01)))
      (=
        ($FVF.lookup_Ref__Integer_value (as sm@63@01  $FVF<Ref__Integer_value>) r)
        ($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@48@01))))))))) r)))
    :pattern (($FVF.lookup_Ref__Integer_value (as sm@63@01  $FVF<Ref__Integer_value>) r))
    :pattern (($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@48@01))))))))) r))
    :qid |qp.fvfValDef0|))
  (forall ((r $Ref)) (!
    (=>
      (and
        (img@58@01 r)
        (and (<= 0 (inv@57@01 r)) (< (inv@57@01 r) (* M@45@01 N@44@01))))
      (=
        ($FVF.lookup_Ref__Integer_value (as sm@63@01  $FVF<Ref__Integer_value>) r)
        ($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@48@01)))))))))))) r)))
    :pattern (($FVF.lookup_Ref__Integer_value (as sm@63@01  $FVF<Ref__Integer_value>) r))
    :pattern (($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@48@01)))))))))))) r))
    :qid |qp.fvfValDef1|))))
(push) ; 7
(assert (not (<
  $Perm.No
  (+
    (ite
      (and
        (img@53@01 (Seq_index
          matrix@46@01
          (Ref__multidim_index_2 ($Snap.combine
            $Snap.unit
            ($Snap.combine
              $Snap.unit
              ($Snap.combine
                $Snap.unit
                ($Snap.combine $Snap.unit ($Snap.combine $Snap.unit $Snap.unit))))) M@45@01 N@44@01 i@61@01 j@62@01)))
        (and
          (<=
            0
            (inv@52@01 (Seq_index
              matrix@46@01
              (Ref__multidim_index_2 ($Snap.combine
                $Snap.unit
                ($Snap.combine
                  $Snap.unit
                  ($Snap.combine
                    $Snap.unit
                    ($Snap.combine
                      $Snap.unit
                      ($Snap.combine $Snap.unit $Snap.unit))))) M@45@01 N@44@01 i@61@01 j@62@01))))
          (<
            (inv@52@01 (Seq_index
              matrix@46@01
              (Ref__multidim_index_2 ($Snap.combine
                $Snap.unit
                ($Snap.combine
                  $Snap.unit
                  ($Snap.combine
                    $Snap.unit
                    ($Snap.combine
                      $Snap.unit
                      ($Snap.combine $Snap.unit $Snap.unit))))) M@45@01 N@44@01 i@61@01 j@62@01)))
            P@43@01)))
      $Perm.Write
      $Perm.No)
    (ite
      (and
        (img@58@01 (Seq_index
          matrix@46@01
          (Ref__multidim_index_2 ($Snap.combine
            $Snap.unit
            ($Snap.combine
              $Snap.unit
              ($Snap.combine
                $Snap.unit
                ($Snap.combine $Snap.unit ($Snap.combine $Snap.unit $Snap.unit))))) M@45@01 N@44@01 i@61@01 j@62@01)))
        (and
          (<=
            0
            (inv@57@01 (Seq_index
              matrix@46@01
              (Ref__multidim_index_2 ($Snap.combine
                $Snap.unit
                ($Snap.combine
                  $Snap.unit
                  ($Snap.combine
                    $Snap.unit
                    ($Snap.combine
                      $Snap.unit
                      ($Snap.combine $Snap.unit $Snap.unit))))) M@45@01 N@44@01 i@61@01 j@62@01))))
          (<
            (inv@57@01 (Seq_index
              matrix@46@01
              (Ref__multidim_index_2 ($Snap.combine
                $Snap.unit
                ($Snap.combine
                  $Snap.unit
                  ($Snap.combine
                    $Snap.unit
                    ($Snap.combine
                      $Snap.unit
                      ($Snap.combine $Snap.unit $Snap.unit))))) M@45@01 N@44@01 i@61@01 j@62@01)))
            (* M@45@01 N@44@01))))
      (/ (to_real 1) (to_real 4))
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
    (and (img@53@01 r) (and (<= 0 (inv@52@01 r)) (< (inv@52@01 r) P@43@01)))
    (=
      ($FVF.lookup_Ref__Integer_value (as sm@63@01  $FVF<Ref__Integer_value>) r)
      ($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@48@01))))))))) r)))
  :pattern (($FVF.lookup_Ref__Integer_value (as sm@63@01  $FVF<Ref__Integer_value>) r))
  :pattern (($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@48@01))))))))) r))
  :qid |qp.fvfValDef0|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@58@01 r)
      (and (<= 0 (inv@57@01 r)) (< (inv@57@01 r) (* M@45@01 N@44@01))))
    (=
      ($FVF.lookup_Ref__Integer_value (as sm@63@01  $FVF<Ref__Integer_value>) r)
      ($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@48@01)))))))))))) r)))
  :pattern (($FVF.lookup_Ref__Integer_value (as sm@63@01  $FVF<Ref__Integer_value>) r))
  :pattern (($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@48@01)))))))))))) r))
  :qid |qp.fvfValDef1|)))
(assert (or
  (<=
    0
    ($FVF.lookup_Ref__Integer_value (as sm@63@01  $FVF<Ref__Integer_value>) (Seq_index
      matrix@46@01
      (Ref__multidim_index_2 ($Snap.combine
        $Snap.unit
        ($Snap.combine
          $Snap.unit
          ($Snap.combine
            $Snap.unit
            ($Snap.combine $Snap.unit ($Snap.combine $Snap.unit $Snap.unit))))) M@45@01 N@44@01 i@61@01 j@62@01))))
  (not
    (<=
      0
      ($FVF.lookup_Ref__Integer_value (as sm@63@01  $FVF<Ref__Integer_value>) (Seq_index
        matrix@46@01
        (Ref__multidim_index_2 ($Snap.combine
          $Snap.unit
          ($Snap.combine
            $Snap.unit
            ($Snap.combine
              $Snap.unit
              ($Snap.combine $Snap.unit ($Snap.combine $Snap.unit $Snap.unit))))) M@45@01 N@44@01 i@61@01 j@62@01)))))))
(pop) ; 4
(push) ; 4
; [else-branch: 28 | !(0 <= i@61@01 && i@61@01 < M@45@01 && 0 <= j@62@01 && j@62@01 < N@44@01)]
(assert (not
  (and
    (<= 0 i@61@01)
    (and (< i@61@01 M@45@01) (and (<= 0 j@62@01) (< j@62@01 N@44@01))))))
(pop) ; 4
(pop) ; 3
; Joined path conditions
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@53@01 r) (and (<= 0 (inv@52@01 r)) (< (inv@52@01 r) P@43@01)))
    (=
      ($FVF.lookup_Ref__Integer_value (as sm@63@01  $FVF<Ref__Integer_value>) r)
      ($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@48@01))))))))) r)))
  :pattern (($FVF.lookup_Ref__Integer_value (as sm@63@01  $FVF<Ref__Integer_value>) r))
  :pattern (($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@48@01))))))))) r))
  :qid |qp.fvfValDef0|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@58@01 r)
      (and (<= 0 (inv@57@01 r)) (< (inv@57@01 r) (* M@45@01 N@44@01))))
    (=
      ($FVF.lookup_Ref__Integer_value (as sm@63@01  $FVF<Ref__Integer_value>) r)
      ($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@48@01)))))))))))) r)))
  :pattern (($FVF.lookup_Ref__Integer_value (as sm@63@01  $FVF<Ref__Integer_value>) r))
  :pattern (($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@48@01)))))))))))) r))
  :qid |qp.fvfValDef1|)))
(assert (forall ((r $Ref)) (!
  (=
    ($FVF.perm_Ref__Integer_value (as pm@64@01  $FPM) r)
    (+
      (ite
        (and (img@53@01 r) (and (<= 0 (inv@52@01 r)) (< (inv@52@01 r) P@43@01)))
        $Perm.Write
        $Perm.No)
      (ite
        (and
          (img@58@01 r)
          (and (<= 0 (inv@57@01 r)) (< (inv@57@01 r) (* M@45@01 N@44@01))))
        (/ (to_real 1) (to_real 4))
        $Perm.No)))
  :pattern (($FVF.perm_Ref__Integer_value (as pm@64@01  $FPM) r))
  :qid |qp.resPrmSumDef2|)))
(assert (=>
  (and
    (<= 0 i@61@01)
    (and (< i@61@01 M@45@01) (and (<= 0 j@62@01) (< j@62@01 N@44@01))))
  (and
    (<= 0 i@61@01)
    (< i@61@01 M@45@01)
    (<= 0 j@62@01)
    (< j@62@01 N@44@01)
    (<= 0 M@45@01)
    (<= 0 N@44@01)
    (Ref__multidim_index_2%precondition ($Snap.combine
      $Snap.unit
      ($Snap.combine
        $Snap.unit
        ($Snap.combine
          $Snap.unit
          ($Snap.combine $Snap.unit ($Snap.combine $Snap.unit $Snap.unit))))) M@45@01 N@44@01 i@61@01 j@62@01)
    (or
      (<=
        0
        ($FVF.lookup_Ref__Integer_value (as sm@63@01  $FVF<Ref__Integer_value>) (Seq_index
          matrix@46@01
          (Ref__multidim_index_2 ($Snap.combine
            $Snap.unit
            ($Snap.combine
              $Snap.unit
              ($Snap.combine
                $Snap.unit
                ($Snap.combine $Snap.unit ($Snap.combine $Snap.unit $Snap.unit))))) M@45@01 N@44@01 i@61@01 j@62@01))))
      (not
        (<=
          0
          ($FVF.lookup_Ref__Integer_value (as sm@63@01  $FVF<Ref__Integer_value>) (Seq_index
            matrix@46@01
            (Ref__multidim_index_2 ($Snap.combine
              $Snap.unit
              ($Snap.combine
                $Snap.unit
                ($Snap.combine
                  $Snap.unit
                  ($Snap.combine
                    $Snap.unit
                    ($Snap.combine $Snap.unit $Snap.unit))))) M@45@01 N@44@01 i@61@01 j@62@01)))))))))
; Joined path conditions
(assert (or
  (not
    (and
      (<= 0 i@61@01)
      (and (< i@61@01 M@45@01) (and (<= 0 j@62@01) (< j@62@01 N@44@01)))))
  (and
    (<= 0 i@61@01)
    (and (< i@61@01 M@45@01) (and (<= 0 j@62@01) (< j@62@01 N@44@01))))))
(pop) ; 2
; Nested auxiliary terms: globals (aux)
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@53@01 r) (and (<= 0 (inv@52@01 r)) (< (inv@52@01 r) P@43@01)))
    (=
      ($FVF.lookup_Ref__Integer_value (as sm@63@01  $FVF<Ref__Integer_value>) r)
      ($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@48@01))))))))) r)))
  :pattern (($FVF.lookup_Ref__Integer_value (as sm@63@01  $FVF<Ref__Integer_value>) r))
  :pattern (($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@48@01))))))))) r))
  :qid |qp.fvfValDef0|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@58@01 r)
      (and (<= 0 (inv@57@01 r)) (< (inv@57@01 r) (* M@45@01 N@44@01))))
    (=
      ($FVF.lookup_Ref__Integer_value (as sm@63@01  $FVF<Ref__Integer_value>) r)
      ($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@48@01)))))))))))) r)))
  :pattern (($FVF.lookup_Ref__Integer_value (as sm@63@01  $FVF<Ref__Integer_value>) r))
  :pattern (($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@48@01)))))))))))) r))
  :qid |qp.fvfValDef1|)))
(assert (forall ((r $Ref)) (!
  (=
    ($FVF.perm_Ref__Integer_value (as pm@64@01  $FPM) r)
    (+
      (ite
        (and (img@53@01 r) (and (<= 0 (inv@52@01 r)) (< (inv@52@01 r) P@43@01)))
        $Perm.Write
        $Perm.No)
      (ite
        (and
          (img@58@01 r)
          (and (<= 0 (inv@57@01 r)) (< (inv@57@01 r) (* M@45@01 N@44@01))))
        (/ (to_real 1) (to_real 4))
        $Perm.No)))
  :pattern (($FVF.perm_Ref__Integer_value (as pm@64@01  $FPM) r))
  :qid |qp.resPrmSumDef2|)))
; Nested auxiliary terms: non-globals (aux)
(assert (forall ((i@61@01 Int) (j@62@01 Int)) (!
  (and
    (=>
      (<= 0 i@61@01)
      (and
        (<= 0 i@61@01)
        (=>
          (< i@61@01 M@45@01)
          (and (< i@61@01 M@45@01) (or (<= 0 j@62@01) (not (<= 0 j@62@01)))))
        (or (< i@61@01 M@45@01) (not (< i@61@01 M@45@01)))))
    (or (<= 0 i@61@01) (not (<= 0 i@61@01)))
    (=>
      (and
        (<= 0 i@61@01)
        (and (< i@61@01 M@45@01) (and (<= 0 j@62@01) (< j@62@01 N@44@01))))
      (and
        (<= 0 i@61@01)
        (< i@61@01 M@45@01)
        (<= 0 j@62@01)
        (< j@62@01 N@44@01)
        (<= 0 M@45@01)
        (<= 0 N@44@01)
        (Ref__multidim_index_2%precondition ($Snap.combine
          $Snap.unit
          ($Snap.combine
            $Snap.unit
            ($Snap.combine
              $Snap.unit
              ($Snap.combine $Snap.unit ($Snap.combine $Snap.unit $Snap.unit))))) M@45@01 N@44@01 i@61@01 j@62@01)
        (or
          (<=
            0
            ($FVF.lookup_Ref__Integer_value (as sm@63@01  $FVF<Ref__Integer_value>) (Seq_index
              matrix@46@01
              (Ref__multidim_index_2 ($Snap.combine
                $Snap.unit
                ($Snap.combine
                  $Snap.unit
                  ($Snap.combine
                    $Snap.unit
                    ($Snap.combine
                      $Snap.unit
                      ($Snap.combine $Snap.unit $Snap.unit))))) M@45@01 N@44@01 i@61@01 j@62@01))))
          (not
            (<=
              0
              ($FVF.lookup_Ref__Integer_value (as sm@63@01  $FVF<Ref__Integer_value>) (Seq_index
                matrix@46@01
                (Ref__multidim_index_2 ($Snap.combine
                  $Snap.unit
                  ($Snap.combine
                    $Snap.unit
                    ($Snap.combine
                      $Snap.unit
                      ($Snap.combine
                        $Snap.unit
                        ($Snap.combine $Snap.unit $Snap.unit))))) M@45@01 N@44@01 i@61@01 j@62@01))))))))
    (or
      (not
        (and
          (<= 0 i@61@01)
          (and (< i@61@01 M@45@01) (and (<= 0 j@62@01) (< j@62@01 N@44@01)))))
      (and
        (<= 0 i@61@01)
        (and (< i@61@01 M@45@01) (and (<= 0 j@62@01) (< j@62@01 N@44@01))))))
  :pattern ((Seq_index
    matrix@46@01
    (Ref__multidim_index_2 ($Snap.combine
      $Snap.unit
      ($Snap.combine
        $Snap.unit
        ($Snap.combine
          $Snap.unit
          ($Snap.combine $Snap.unit ($Snap.combine $Snap.unit $Snap.unit))))) M@45@01 N@44@01 i@61@01 j@62@01)))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/third_party/testHistogram.vpr@112@13@112@222-aux|)))
(assert (forall ((i@61@01 Int) (j@62@01 Int)) (!
  (=>
    (and
      (<= 0 i@61@01)
      (and (< i@61@01 M@45@01) (and (<= 0 j@62@01) (< j@62@01 N@44@01))))
    (and
      (<=
        0
        ($FVF.lookup_Ref__Integer_value (as sm@63@01  $FVF<Ref__Integer_value>) (Seq_index
          matrix@46@01
          (Ref__multidim_index_2 ($Snap.combine
            $Snap.unit
            ($Snap.combine
              $Snap.unit
              ($Snap.combine
                $Snap.unit
                ($Snap.combine $Snap.unit ($Snap.combine $Snap.unit $Snap.unit))))) M@45@01 N@44@01 i@61@01 j@62@01))))
      (<
        ($FVF.lookup_Ref__Integer_value (as sm@63@01  $FVF<Ref__Integer_value>) (Seq_index
          matrix@46@01
          (Ref__multidim_index_2 ($Snap.combine
            $Snap.unit
            ($Snap.combine
              $Snap.unit
              ($Snap.combine
                $Snap.unit
                ($Snap.combine $Snap.unit ($Snap.combine $Snap.unit $Snap.unit))))) M@45@01 N@44@01 i@61@01 j@62@01)))
        P@43@01)))
  :pattern ((Seq_index
    matrix@46@01
    (Ref__multidim_index_2 ($Snap.combine
      $Snap.unit
      ($Snap.combine
        $Snap.unit
        ($Snap.combine
          $Snap.unit
          ($Snap.combine $Snap.unit ($Snap.combine $Snap.unit $Snap.unit))))) M@45@01 N@44@01 i@61@01 j@62@01)))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/third_party/testHistogram.vpr@112@13@112@222|)))
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
(set-option :timeout 0)
(push) ; 2
(declare-const $t@65@01 $Snap)
(assert (= $t@65@01 ($Snap.combine ($Snap.first $t@65@01) ($Snap.second $t@65@01))))
(assert (= ($Snap.first $t@65@01) $Snap.unit))
; [eval] M > 0
(assert (=
  ($Snap.second $t@65@01)
  ($Snap.combine
    ($Snap.first ($Snap.second $t@65@01))
    ($Snap.second ($Snap.second $t@65@01)))))
(assert (= ($Snap.first ($Snap.second $t@65@01)) $Snap.unit))
; [eval] N > 0
(assert (=
  ($Snap.second ($Snap.second $t@65@01))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second $t@65@01)))
    ($Snap.second ($Snap.second ($Snap.second $t@65@01))))))
(assert (= ($Snap.first ($Snap.second ($Snap.second $t@65@01))) $Snap.unit))
; [eval] P > 0
(assert (=
  ($Snap.second ($Snap.second ($Snap.second $t@65@01)))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@65@01))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@65@01)))))))
(declare-const j@66@01 Int)
(push) ; 3
; [eval] 0 <= j && j < M * N
; [eval] 0 <= j
(push) ; 4
; [then-branch: 30 | !(0 <= j@66@01) | live]
; [else-branch: 30 | 0 <= j@66@01 | live]
(push) ; 5
; [then-branch: 30 | !(0 <= j@66@01)]
(assert (not (<= 0 j@66@01)))
(pop) ; 5
(push) ; 5
; [else-branch: 30 | 0 <= j@66@01]
(assert (<= 0 j@66@01))
; [eval] j < M * N
; [eval] M * N
(pop) ; 5
(pop) ; 4
; Joined path conditions
; Joined path conditions
(assert (or (<= 0 j@66@01) (not (<= 0 j@66@01))))
(assert (and (<= 0 j@66@01) (< j@66@01 (* M@45@01 N@44@01))))
; [eval] matrix[j]
(push) ; 4
(assert (not (>= j@66@01 0)))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(push) ; 4
(assert (not (< j@66@01 (Seq_length matrix@46@01))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(pop) ; 3
(declare-fun inv@67@01 ($Ref) Int)
(declare-fun img@68@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
(assert (forall ((j@66@01 Int)) (!
  (=>
    (and (<= 0 j@66@01) (< j@66@01 (* M@45@01 N@44@01)))
    (or (<= 0 j@66@01) (not (<= 0 j@66@01))))
  :pattern ((Seq_index matrix@46@01 j@66@01))
  :qid |Ref__Integer_value-aux|)))
; Check receiver injectivity
(push) ; 3
(assert (not (forall ((j1@66@01 Int) (j2@66@01 Int)) (!
  (=>
    (and
      (and (<= 0 j1@66@01) (< j1@66@01 (* M@45@01 N@44@01)))
      (and (<= 0 j2@66@01) (< j2@66@01 (* M@45@01 N@44@01)))
      (= (Seq_index matrix@46@01 j1@66@01) (Seq_index matrix@46@01 j2@66@01)))
    (= j1@66@01 j2@66@01))
  
  :qid |Ref__Integer_value-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((j@66@01 Int)) (!
  (=>
    (and (<= 0 j@66@01) (< j@66@01 (* M@45@01 N@44@01)))
    (and
      (= (inv@67@01 (Seq_index matrix@46@01 j@66@01)) j@66@01)
      (img@68@01 (Seq_index matrix@46@01 j@66@01))))
  :pattern ((Seq_index matrix@46@01 j@66@01))
  :qid |quant-u-9986|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@68@01 r)
      (and (<= 0 (inv@67@01 r)) (< (inv@67@01 r) (* M@45@01 N@44@01))))
    (= (Seq_index matrix@46@01 (inv@67@01 r)) r))
  :pattern ((inv@67@01 r))
  :qid |Ref__Integer_value-fctOfInv|)))
; Permissions are non-negative
; Field permissions are at most one
; Permission implies non-null receiver
(assert (forall ((j@66@01 Int)) (!
  (=>
    (and (<= 0 j@66@01) (< j@66@01 (* M@45@01 N@44@01)))
    (not (= (Seq_index matrix@46@01 j@66@01) $Ref.null)))
  :pattern ((Seq_index matrix@46@01 j@66@01))
  :qid |Ref__Integer_value-permImpliesNonNull|)))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@65@01))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@65@01)))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@65@01))))))))
(declare-const k@69@01 Int)
(push) ; 3
; [eval] 0 <= k && k < P
; [eval] 0 <= k
(push) ; 4
; [then-branch: 31 | !(0 <= k@69@01) | live]
; [else-branch: 31 | 0 <= k@69@01 | live]
(push) ; 5
; [then-branch: 31 | !(0 <= k@69@01)]
(assert (not (<= 0 k@69@01)))
(pop) ; 5
(push) ; 5
; [else-branch: 31 | 0 <= k@69@01]
(assert (<= 0 k@69@01))
; [eval] k < P
(pop) ; 5
(pop) ; 4
; Joined path conditions
; Joined path conditions
(assert (or (<= 0 k@69@01) (not (<= 0 k@69@01))))
(assert (and (<= 0 k@69@01) (< k@69@01 P@43@01)))
; [eval] hist[k]
(push) ; 4
(assert (not (>= k@69@01 0)))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(push) ; 4
(assert (not (< k@69@01 (Seq_length hist@47@01))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(pop) ; 3
(declare-fun inv@70@01 ($Ref) Int)
(declare-fun img@71@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
(assert (forall ((k@69@01 Int)) (!
  (=>
    (and (<= 0 k@69@01) (< k@69@01 P@43@01))
    (or (<= 0 k@69@01) (not (<= 0 k@69@01))))
  :pattern ((Seq_index hist@47@01 k@69@01))
  :qid |Ref__Integer_value-aux|)))
; Check receiver injectivity
(push) ; 3
(assert (not (forall ((k1@69@01 Int) (k2@69@01 Int)) (!
  (=>
    (and
      (and (<= 0 k1@69@01) (< k1@69@01 P@43@01))
      (and (<= 0 k2@69@01) (< k2@69@01 P@43@01))
      (= (Seq_index hist@47@01 k1@69@01) (Seq_index hist@47@01 k2@69@01)))
    (= k1@69@01 k2@69@01))
  
  :qid |Ref__Integer_value-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((k@69@01 Int)) (!
  (=>
    (and (<= 0 k@69@01) (< k@69@01 P@43@01))
    (and
      (= (inv@70@01 (Seq_index hist@47@01 k@69@01)) k@69@01)
      (img@71@01 (Seq_index hist@47@01 k@69@01))))
  :pattern ((Seq_index hist@47@01 k@69@01))
  :qid |quant-u-9988|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@71@01 r) (and (<= 0 (inv@70@01 r)) (< (inv@70@01 r) P@43@01)))
    (= (Seq_index hist@47@01 (inv@70@01 r)) r))
  :pattern ((inv@70@01 r))
  :qid |Ref__Integer_value-fctOfInv|)))
; Permissions are non-negative
; Field permissions are at most one
; Permission implies non-null receiver
(assert (forall ((k@69@01 Int)) (!
  (=>
    (and (<= 0 k@69@01) (< k@69@01 P@43@01))
    (not (= (Seq_index hist@47@01 k@69@01) $Ref.null)))
  :pattern ((Seq_index hist@47@01 k@69@01))
  :qid |Ref__Integer_value-permImpliesNonNull|)))
(push) ; 3
(set-option :timeout 10)
(assert (not (forall ((r $Ref)) (!
  (and
    (= (Seq_index hist@47@01 k@69@01) (Seq_index matrix@46@01 j@66@01))
    (=
      (and (img@71@01 r) (and (<= 0 (inv@70@01 r)) (< (inv@70@01 r) P@43@01)))
      (and
        (img@68@01 r)
        (and (<= 0 (inv@67@01 r)) (< (inv@67@01 r) (* M@45@01 N@44@01))))))
  
  :qid |quant-u-9989|))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@65@01)))))
  $Snap.unit))
; [eval] (forall k: Int :: { old(hist[k]) } 0 <= k && k < P ==> hist[k].Ref__Integer_value == old(hist[k].Ref__Integer_value) + count_array(0, M * N, matrix, k))
(declare-const k@72@01 Int)
(set-option :timeout 0)
(push) ; 3
; [eval] 0 <= k && k < P ==> hist[k].Ref__Integer_value == old(hist[k].Ref__Integer_value) + count_array(0, M * N, matrix, k)
; [eval] 0 <= k && k < P
; [eval] 0 <= k
(push) ; 4
; [then-branch: 32 | !(0 <= k@72@01) | live]
; [else-branch: 32 | 0 <= k@72@01 | live]
(push) ; 5
; [then-branch: 32 | !(0 <= k@72@01)]
(assert (not (<= 0 k@72@01)))
(pop) ; 5
(push) ; 5
; [else-branch: 32 | 0 <= k@72@01]
(assert (<= 0 k@72@01))
; [eval] k < P
(pop) ; 5
(pop) ; 4
; Joined path conditions
; Joined path conditions
(assert (or (<= 0 k@72@01) (not (<= 0 k@72@01))))
(push) ; 4
; [then-branch: 33 | 0 <= k@72@01 && k@72@01 < P@43@01 | live]
; [else-branch: 33 | !(0 <= k@72@01 && k@72@01 < P@43@01) | live]
(push) ; 5
; [then-branch: 33 | 0 <= k@72@01 && k@72@01 < P@43@01]
(assert (and (<= 0 k@72@01) (< k@72@01 P@43@01)))
; [eval] hist[k].Ref__Integer_value == old(hist[k].Ref__Integer_value) + count_array(0, M * N, matrix, k)
; [eval] hist[k]
(push) ; 6
(assert (not (>= k@72@01 0)))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(push) ; 6
(assert (not (< k@72@01 (Seq_length hist@47@01))))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(declare-const sm@73@01 $FVF<Ref__Integer_value>)
; Definitional axioms for snapshot map values
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@68@01 r)
      (and (<= 0 (inv@67@01 r)) (< (inv@67@01 r) (* M@45@01 N@44@01))))
    (=
      ($FVF.lookup_Ref__Integer_value (as sm@73@01  $FVF<Ref__Integer_value>) r)
      ($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@65@01))))) r)))
  :pattern (($FVF.lookup_Ref__Integer_value (as sm@73@01  $FVF<Ref__Integer_value>) r))
  :pattern (($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@65@01))))) r))
  :qid |qp.fvfValDef3|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@71@01 r) (and (<= 0 (inv@70@01 r)) (< (inv@70@01 r) P@43@01)))
    (=
      ($FVF.lookup_Ref__Integer_value (as sm@73@01  $FVF<Ref__Integer_value>) r)
      ($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@65@01)))))) r)))
  :pattern (($FVF.lookup_Ref__Integer_value (as sm@73@01  $FVF<Ref__Integer_value>) r))
  :pattern (($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@65@01)))))) r))
  :qid |qp.fvfValDef4|)))
(declare-const pm@74@01 $FPM)
(assert (forall ((r $Ref)) (!
  (=
    ($FVF.perm_Ref__Integer_value (as pm@74@01  $FPM) r)
    (+
      (ite
        (and
          (img@68@01 r)
          (and (<= 0 (inv@67@01 r)) (< (inv@67@01 r) (* M@45@01 N@44@01))))
        (/ (to_real 1) (to_real 4))
        $Perm.No)
      (ite
        (and (img@71@01 r) (and (<= 0 (inv@70@01 r)) (< (inv@70@01 r) P@43@01)))
        $Perm.Write
        $Perm.No)))
  :pattern (($FVF.perm_Ref__Integer_value (as pm@74@01  $FPM) r))
  :qid |qp.resPrmSumDef5|)))
(push) ; 6
(assert (not (<
  $Perm.No
  ($FVF.perm_Ref__Integer_value (as pm@74@01  $FPM) (Seq_index
    hist@47@01
    k@72@01)))))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
; [eval] old(hist[k].Ref__Integer_value) + count_array(0, M * N, matrix, k)
; [eval] old(hist[k].Ref__Integer_value)
; [eval] hist[k]
(push) ; 6
(assert (not (>= k@72@01 0)))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(push) ; 6
(assert (not (< k@72@01 (Seq_length hist@47@01))))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(assert (and
  (forall ((r $Ref)) (!
    (=>
      (and (img@53@01 r) (and (<= 0 (inv@52@01 r)) (< (inv@52@01 r) P@43@01)))
      (=
        ($FVF.lookup_Ref__Integer_value (as sm@63@01  $FVF<Ref__Integer_value>) r)
        ($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@48@01))))))))) r)))
    :pattern (($FVF.lookup_Ref__Integer_value (as sm@63@01  $FVF<Ref__Integer_value>) r))
    :pattern (($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@48@01))))))))) r))
    :qid |qp.fvfValDef0|))
  (forall ((r $Ref)) (!
    (=>
      (and
        (img@58@01 r)
        (and (<= 0 (inv@57@01 r)) (< (inv@57@01 r) (* M@45@01 N@44@01))))
      (=
        ($FVF.lookup_Ref__Integer_value (as sm@63@01  $FVF<Ref__Integer_value>) r)
        ($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@48@01)))))))))))) r)))
    :pattern (($FVF.lookup_Ref__Integer_value (as sm@63@01  $FVF<Ref__Integer_value>) r))
    :pattern (($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@48@01)))))))))))) r))
    :qid |qp.fvfValDef1|))))
(push) ; 6
(assert (not (<
  $Perm.No
  (+
    (ite
      (and
        (img@53@01 (Seq_index hist@47@01 k@72@01))
        (and
          (<= 0 (inv@52@01 (Seq_index hist@47@01 k@72@01)))
          (< (inv@52@01 (Seq_index hist@47@01 k@72@01)) P@43@01)))
      $Perm.Write
      $Perm.No)
    (ite
      (and
        (img@58@01 (Seq_index hist@47@01 k@72@01))
        (and
          (<= 0 (inv@57@01 (Seq_index hist@47@01 k@72@01)))
          (< (inv@57@01 (Seq_index hist@47@01 k@72@01)) (* M@45@01 N@44@01))))
      (/ (to_real 1) (to_real 4))
      $Perm.No)))))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
; [eval] count_array(0, M * N, matrix, k)
; [eval] M * N
(push) ; 6
; [eval] 0 <= i
; [eval] i <= hi
(push) ; 7
(assert (not (<= 0 (* M@45@01 N@44@01))))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(assert (<= 0 (* M@45@01 N@44@01)))
; [eval] hi <= |ar|
; [eval] |ar|
; [eval] (forall j: Int, k: Int ::0 <= j && (j < hi && (0 <= k && (k < hi && j != k))) ==> ar[j] != ar[k])
(declare-const j@75@01 Int)
(declare-const k@76@01 Int)
(push) ; 7
; [eval] 0 <= j && (j < hi && (0 <= k && (k < hi && j != k))) ==> ar[j] != ar[k]
; [eval] 0 <= j && (j < hi && (0 <= k && (k < hi && j != k)))
; [eval] 0 <= j
(push) ; 8
; [then-branch: 34 | !(0 <= j@75@01) | live]
; [else-branch: 34 | 0 <= j@75@01 | live]
(push) ; 9
; [then-branch: 34 | !(0 <= j@75@01)]
(assert (not (<= 0 j@75@01)))
(pop) ; 9
(push) ; 9
; [else-branch: 34 | 0 <= j@75@01]
(assert (<= 0 j@75@01))
; [eval] j < hi
(push) ; 10
; [then-branch: 35 | !(j@75@01 < M@45@01 * N@44@01) | live]
; [else-branch: 35 | j@75@01 < M@45@01 * N@44@01 | live]
(push) ; 11
; [then-branch: 35 | !(j@75@01 < M@45@01 * N@44@01)]
(assert (not (< j@75@01 (* M@45@01 N@44@01))))
(pop) ; 11
(push) ; 11
; [else-branch: 35 | j@75@01 < M@45@01 * N@44@01]
(assert (< j@75@01 (* M@45@01 N@44@01)))
; [eval] 0 <= k
(push) ; 12
; [then-branch: 36 | !(0 <= k@76@01) | live]
; [else-branch: 36 | 0 <= k@76@01 | live]
(push) ; 13
; [then-branch: 36 | !(0 <= k@76@01)]
(assert (not (<= 0 k@76@01)))
(pop) ; 13
(push) ; 13
; [else-branch: 36 | 0 <= k@76@01]
(assert (<= 0 k@76@01))
; [eval] k < hi
(push) ; 14
; [then-branch: 37 | !(k@76@01 < M@45@01 * N@44@01) | live]
; [else-branch: 37 | k@76@01 < M@45@01 * N@44@01 | live]
(push) ; 15
; [then-branch: 37 | !(k@76@01 < M@45@01 * N@44@01)]
(assert (not (< k@76@01 (* M@45@01 N@44@01))))
(pop) ; 15
(push) ; 15
; [else-branch: 37 | k@76@01 < M@45@01 * N@44@01]
(assert (< k@76@01 (* M@45@01 N@44@01)))
; [eval] j != k
(pop) ; 15
(pop) ; 14
; Joined path conditions
; Joined path conditions
(assert (or (< k@76@01 (* M@45@01 N@44@01)) (not (< k@76@01 (* M@45@01 N@44@01)))))
(pop) ; 13
(pop) ; 12
; Joined path conditions
; Joined path conditions
(assert (=>
  (<= 0 k@76@01)
  (and
    (<= 0 k@76@01)
    (or (< k@76@01 (* M@45@01 N@44@01)) (not (< k@76@01 (* M@45@01 N@44@01)))))))
(assert (or (<= 0 k@76@01) (not (<= 0 k@76@01))))
(pop) ; 11
(pop) ; 10
; Joined path conditions
; Joined path conditions
(assert (=>
  (< j@75@01 (* M@45@01 N@44@01))
  (and
    (< j@75@01 (* M@45@01 N@44@01))
    (=>
      (<= 0 k@76@01)
      (and
        (<= 0 k@76@01)
        (or
          (< k@76@01 (* M@45@01 N@44@01))
          (not (< k@76@01 (* M@45@01 N@44@01))))))
    (or (<= 0 k@76@01) (not (<= 0 k@76@01))))))
(assert (or (< j@75@01 (* M@45@01 N@44@01)) (not (< j@75@01 (* M@45@01 N@44@01)))))
(pop) ; 9
(pop) ; 8
; Joined path conditions
; Joined path conditions
(assert (=>
  (<= 0 j@75@01)
  (and
    (<= 0 j@75@01)
    (=>
      (< j@75@01 (* M@45@01 N@44@01))
      (and
        (< j@75@01 (* M@45@01 N@44@01))
        (=>
          (<= 0 k@76@01)
          (and
            (<= 0 k@76@01)
            (or
              (< k@76@01 (* M@45@01 N@44@01))
              (not (< k@76@01 (* M@45@01 N@44@01))))))
        (or (<= 0 k@76@01) (not (<= 0 k@76@01)))))
    (or (< j@75@01 (* M@45@01 N@44@01)) (not (< j@75@01 (* M@45@01 N@44@01)))))))
(assert (or (<= 0 j@75@01) (not (<= 0 j@75@01))))
(push) ; 8
; [then-branch: 38 | 0 <= j@75@01 && j@75@01 < M@45@01 * N@44@01 && 0 <= k@76@01 && k@76@01 < M@45@01 * N@44@01 && j@75@01 != k@76@01 | live]
; [else-branch: 38 | !(0 <= j@75@01 && j@75@01 < M@45@01 * N@44@01 && 0 <= k@76@01 && k@76@01 < M@45@01 * N@44@01 && j@75@01 != k@76@01) | live]
(push) ; 9
; [then-branch: 38 | 0 <= j@75@01 && j@75@01 < M@45@01 * N@44@01 && 0 <= k@76@01 && k@76@01 < M@45@01 * N@44@01 && j@75@01 != k@76@01]
(assert (and
  (<= 0 j@75@01)
  (and
    (< j@75@01 (* M@45@01 N@44@01))
    (and
      (<= 0 k@76@01)
      (and (< k@76@01 (* M@45@01 N@44@01)) (not (= j@75@01 k@76@01)))))))
; [eval] ar[j] != ar[k]
; [eval] ar[j]
(push) ; 10
(assert (not (>= j@75@01 0)))
(check-sat)
; unsat
(pop) ; 10
; 0.00s
; (get-info :all-statistics)
(push) ; 10
(assert (not (< j@75@01 (Seq_length matrix@46@01))))
(check-sat)
; unsat
(pop) ; 10
; 0.00s
; (get-info :all-statistics)
; [eval] ar[k]
(push) ; 10
(assert (not (>= k@76@01 0)))
(check-sat)
; unsat
(pop) ; 10
; 0.00s
; (get-info :all-statistics)
(push) ; 10
(assert (not (< k@76@01 (Seq_length matrix@46@01))))
(check-sat)
; unsat
(pop) ; 10
; 0.00s
; (get-info :all-statistics)
(pop) ; 9
(push) ; 9
; [else-branch: 38 | !(0 <= j@75@01 && j@75@01 < M@45@01 * N@44@01 && 0 <= k@76@01 && k@76@01 < M@45@01 * N@44@01 && j@75@01 != k@76@01)]
(assert (not
  (and
    (<= 0 j@75@01)
    (and
      (< j@75@01 (* M@45@01 N@44@01))
      (and
        (<= 0 k@76@01)
        (and (< k@76@01 (* M@45@01 N@44@01)) (not (= j@75@01 k@76@01))))))))
(pop) ; 9
(pop) ; 8
; Joined path conditions
(assert (=>
  (and
    (<= 0 j@75@01)
    (and
      (< j@75@01 (* M@45@01 N@44@01))
      (and
        (<= 0 k@76@01)
        (and (< k@76@01 (* M@45@01 N@44@01)) (not (= j@75@01 k@76@01))))))
  (and
    (<= 0 j@75@01)
    (< j@75@01 (* M@45@01 N@44@01))
    (<= 0 k@76@01)
    (< k@76@01 (* M@45@01 N@44@01))
    (not (= j@75@01 k@76@01)))))
; Joined path conditions
(assert (or
  (not
    (and
      (<= 0 j@75@01)
      (and
        (< j@75@01 (* M@45@01 N@44@01))
        (and
          (<= 0 k@76@01)
          (and (< k@76@01 (* M@45@01 N@44@01)) (not (= j@75@01 k@76@01)))))))
  (and
    (<= 0 j@75@01)
    (and
      (< j@75@01 (* M@45@01 N@44@01))
      (and
        (<= 0 k@76@01)
        (and (< k@76@01 (* M@45@01 N@44@01)) (not (= j@75@01 k@76@01))))))))
(pop) ; 7
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(push) ; 7
(assert (not (forall ((j@75@01 Int) (k@76@01 Int)) (!
  (=>
    (and
      (<= 0 j@75@01)
      (and
        (< j@75@01 (* M@45@01 N@44@01))
        (and
          (<= 0 k@76@01)
          (and (< k@76@01 (* M@45@01 N@44@01)) (not (= j@75@01 k@76@01))))))
    (not (= (Seq_index matrix@46@01 j@75@01) (Seq_index matrix@46@01 k@76@01))))
  
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/third_party/testHistogram.vpr@66@12@66@102|))))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(assert (forall ((j@75@01 Int) (k@76@01 Int)) (!
  (=>
    (and
      (<= 0 j@75@01)
      (and
        (< j@75@01 (* M@45@01 N@44@01))
        (and
          (<= 0 k@76@01)
          (and (< k@76@01 (* M@45@01 N@44@01)) (not (= j@75@01 k@76@01))))))
    (not (= (Seq_index matrix@46@01 j@75@01) (Seq_index matrix@46@01 k@76@01))))
  
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/third_party/testHistogram.vpr@66@12@66@102|)))
(declare-const k@77@01 Int)
(push) ; 7
; [eval] 0 <= k && k < hi
; [eval] 0 <= k
(push) ; 8
; [then-branch: 39 | !(0 <= k@77@01) | live]
; [else-branch: 39 | 0 <= k@77@01 | live]
(push) ; 9
; [then-branch: 39 | !(0 <= k@77@01)]
(assert (not (<= 0 k@77@01)))
(pop) ; 9
(push) ; 9
; [else-branch: 39 | 0 <= k@77@01]
(assert (<= 0 k@77@01))
; [eval] k < hi
(pop) ; 9
(pop) ; 8
; Joined path conditions
; Joined path conditions
(assert (or (<= 0 k@77@01) (not (<= 0 k@77@01))))
(assert (and (<= 0 k@77@01) (< k@77@01 (* M@45@01 N@44@01))))
(declare-const $k@78@01 $Perm)
(assert ($Perm.isReadVar $k@78@01))
; [eval] ar[k]
(push) ; 8
(assert (not (>= k@77@01 0)))
(check-sat)
; unsat
(pop) ; 8
; 0.00s
; (get-info :all-statistics)
(push) ; 8
(assert (not (< k@77@01 (Seq_length matrix@46@01))))
(check-sat)
; unsat
(pop) ; 8
; 0.00s
; (get-info :all-statistics)
(pop) ; 7
(declare-fun inv@79@01 ($Ref) Int)
(declare-fun img@80@01 ($Ref) Bool)
; Nested auxiliary terms: globals
(assert ($Perm.isReadVar $k@78@01))
; Nested auxiliary terms: non-globals
(assert (forall ((k@77@01 Int)) (!
  (=>
    (and (<= 0 k@77@01) (< k@77@01 (* M@45@01 N@44@01)))
    (or (<= 0 k@77@01) (not (<= 0 k@77@01))))
  :pattern ((Seq_index matrix@46@01 k@77@01))
  :qid |Ref__Integer_value-aux|)))
(push) ; 7
(assert (not (forall ((k@77@01 Int)) (!
  (=>
    (and (<= 0 k@77@01) (< k@77@01 (* M@45@01 N@44@01)))
    (or (= $k@78@01 $Perm.No) (< $Perm.No $k@78@01)))
  
  :qid |quant-u-9990|))))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
; Check receiver injectivity
(push) ; 7
(assert (not (forall ((k1@77@01 Int) (k2@77@01 Int)) (!
  (=>
    (and
      (and
        (and (<= 0 k1@77@01) (< k1@77@01 (* M@45@01 N@44@01)))
        (< $Perm.No $k@78@01))
      (and
        (and (<= 0 k2@77@01) (< k2@77@01 (* M@45@01 N@44@01)))
        (< $Perm.No $k@78@01))
      (= (Seq_index matrix@46@01 k1@77@01) (Seq_index matrix@46@01 k2@77@01)))
    (= k1@77@01 k2@77@01))
  
  :qid |Ref__Integer_value-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((k@77@01 Int)) (!
  (=>
    (and
      (and (<= 0 k@77@01) (< k@77@01 (* M@45@01 N@44@01)))
      (< $Perm.No $k@78@01))
    (and
      (= (inv@79@01 (Seq_index matrix@46@01 k@77@01)) k@77@01)
      (img@80@01 (Seq_index matrix@46@01 k@77@01))))
  :pattern ((Seq_index matrix@46@01 k@77@01))
  :qid |Ref__Integer_value-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@80@01 r)
      (and
        (and (<= 0 (inv@79@01 r)) (< (inv@79@01 r) (* M@45@01 N@44@01)))
        (< $Perm.No $k@78@01)))
    (= (Seq_index matrix@46@01 (inv@79@01 r)) r))
  :pattern ((inv@79@01 r))
  :qid |Ref__Integer_value-fctOfInv|)))
(push) ; 7
(set-option :timeout 10)
(assert (not (forall ((k@77@01 Int)) (!
  (= (Seq_index matrix@46@01 k@77@01) (Seq_index hist@47@01 k@77@01))
  
  :qid |quant-u-9991|))))
(check-sat)
; unknown
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 7
(assert (not (forall ((r $Ref)) (!
  (=>
    (and
      (and
        (and (<= 0 (inv@79@01 r)) (< (inv@79@01 r) (* M@45@01 N@44@01)))
        (img@80@01 r)
        (= r (Seq_index matrix@46@01 (inv@79@01 r))))
      (> $k@78@01 $Perm.No))
    (>
      (+
        (ite
          (and
            (img@68@01 r)
            (and (<= 0 (inv@67@01 r)) (< (inv@67@01 r) (* M@45@01 N@44@01))))
          (/ (to_real 1) (to_real 4))
          $Perm.No)
        (ite
          (and
            (img@71@01 r)
            (and (<= 0 (inv@70@01 r)) (< (inv@70@01 r) P@43@01)))
          $Perm.Write
          $Perm.No))
      $Perm.No))
  
  :qid |quant-u-9992|))))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(declare-const sm@81@01 $FVF<Ref__Integer_value>)
; Definitional axioms for snapshot map domain
(assert (forall ((r $Ref)) (!
  (and
    (=>
      (Set_in r ($FVF.domain_Ref__Integer_value (as sm@81@01  $FVF<Ref__Integer_value>)))
      (and
        (and (<= 0 (inv@79@01 r)) (< (inv@79@01 r) (* M@45@01 N@44@01)))
        (< $Perm.No $k@78@01)
        (img@80@01 r)))
    (=>
      (and
        (and (<= 0 (inv@79@01 r)) (< (inv@79@01 r) (* M@45@01 N@44@01)))
        (< $Perm.No $k@78@01)
        (img@80@01 r))
      (Set_in r ($FVF.domain_Ref__Integer_value (as sm@81@01  $FVF<Ref__Integer_value>)))))
  :pattern ((Set_in r ($FVF.domain_Ref__Integer_value (as sm@81@01  $FVF<Ref__Integer_value>))))
  :qid |qp.fvfDomDef8|)))
; Definitional axioms for snapshot map values
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and
        (and (<= 0 (inv@79@01 r)) (< (inv@79@01 r) (* M@45@01 N@44@01)))
        (< $Perm.No $k@78@01)
        (img@80@01 r))
      (and
        (img@68@01 r)
        (and (<= 0 (inv@67@01 r)) (< (inv@67@01 r) (* M@45@01 N@44@01)))))
    (=
      ($FVF.lookup_Ref__Integer_value (as sm@81@01  $FVF<Ref__Integer_value>) r)
      ($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@65@01))))) r)))
  :pattern (($FVF.lookup_Ref__Integer_value (as sm@81@01  $FVF<Ref__Integer_value>) r))
  :pattern (($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@65@01))))) r))
  :qid |qp.fvfValDef6|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and
        (and (<= 0 (inv@79@01 r)) (< (inv@79@01 r) (* M@45@01 N@44@01)))
        (< $Perm.No $k@78@01)
        (img@80@01 r))
      (and (img@71@01 r) (and (<= 0 (inv@70@01 r)) (< (inv@70@01 r) P@43@01))))
    (=
      ($FVF.lookup_Ref__Integer_value (as sm@81@01  $FVF<Ref__Integer_value>) r)
      ($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@65@01)))))) r)))
  :pattern (($FVF.lookup_Ref__Integer_value (as sm@81@01  $FVF<Ref__Integer_value>) r))
  :pattern (($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@65@01)))))) r))
  :qid |qp.fvfValDef7|)))
(assert (count_array%precondition ($Snap.combine
  $Snap.unit
  ($Snap.combine
    $Snap.unit
    ($Snap.combine
      $Snap.unit
      ($Snap.combine
        $Snap.unit
        ($SortWrappers.$FVF<Ref__Integer_value>To$Snap (as sm@81@01  $FVF<Ref__Integer_value>)))))) 0 (*
  M@45@01
  N@44@01) matrix@46@01 k@72@01))
(pop) ; 6
; Joined path conditions
(assert ($Perm.isReadVar $k@78@01))
(assert (forall ((k@77@01 Int)) (!
  (=>
    (and
      (and (<= 0 k@77@01) (< k@77@01 (* M@45@01 N@44@01)))
      (< $Perm.No $k@78@01))
    (and
      (= (inv@79@01 (Seq_index matrix@46@01 k@77@01)) k@77@01)
      (img@80@01 (Seq_index matrix@46@01 k@77@01))))
  :pattern ((Seq_index matrix@46@01 k@77@01))
  :qid |Ref__Integer_value-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@80@01 r)
      (and
        (and (<= 0 (inv@79@01 r)) (< (inv@79@01 r) (* M@45@01 N@44@01)))
        (< $Perm.No $k@78@01)))
    (= (Seq_index matrix@46@01 (inv@79@01 r)) r))
  :pattern ((inv@79@01 r))
  :qid |Ref__Integer_value-fctOfInv|)))
(assert (forall ((r $Ref)) (!
  (and
    (=>
      (Set_in r ($FVF.domain_Ref__Integer_value (as sm@81@01  $FVF<Ref__Integer_value>)))
      (and
        (and (<= 0 (inv@79@01 r)) (< (inv@79@01 r) (* M@45@01 N@44@01)))
        (< $Perm.No $k@78@01)
        (img@80@01 r)))
    (=>
      (and
        (and (<= 0 (inv@79@01 r)) (< (inv@79@01 r) (* M@45@01 N@44@01)))
        (< $Perm.No $k@78@01)
        (img@80@01 r))
      (Set_in r ($FVF.domain_Ref__Integer_value (as sm@81@01  $FVF<Ref__Integer_value>)))))
  :pattern ((Set_in r ($FVF.domain_Ref__Integer_value (as sm@81@01  $FVF<Ref__Integer_value>))))
  :qid |qp.fvfDomDef8|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and
        (and (<= 0 (inv@79@01 r)) (< (inv@79@01 r) (* M@45@01 N@44@01)))
        (< $Perm.No $k@78@01)
        (img@80@01 r))
      (and
        (img@68@01 r)
        (and (<= 0 (inv@67@01 r)) (< (inv@67@01 r) (* M@45@01 N@44@01)))))
    (=
      ($FVF.lookup_Ref__Integer_value (as sm@81@01  $FVF<Ref__Integer_value>) r)
      ($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@65@01))))) r)))
  :pattern (($FVF.lookup_Ref__Integer_value (as sm@81@01  $FVF<Ref__Integer_value>) r))
  :pattern (($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@65@01))))) r))
  :qid |qp.fvfValDef6|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and
        (and (<= 0 (inv@79@01 r)) (< (inv@79@01 r) (* M@45@01 N@44@01)))
        (< $Perm.No $k@78@01)
        (img@80@01 r))
      (and (img@71@01 r) (and (<= 0 (inv@70@01 r)) (< (inv@70@01 r) P@43@01))))
    (=
      ($FVF.lookup_Ref__Integer_value (as sm@81@01  $FVF<Ref__Integer_value>) r)
      ($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@65@01)))))) r)))
  :pattern (($FVF.lookup_Ref__Integer_value (as sm@81@01  $FVF<Ref__Integer_value>) r))
  :pattern (($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@65@01)))))) r))
  :qid |qp.fvfValDef7|)))
(assert (and
  (<= 0 (* M@45@01 N@44@01))
  (forall ((j@75@01 Int) (k@76@01 Int)) (!
    (=>
      (and
        (<= 0 j@75@01)
        (and
          (< j@75@01 (* M@45@01 N@44@01))
          (and
            (<= 0 k@76@01)
            (and (< k@76@01 (* M@45@01 N@44@01)) (not (= j@75@01 k@76@01))))))
      (not (= (Seq_index matrix@46@01 j@75@01) (Seq_index matrix@46@01 k@76@01))))
    
    :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/third_party/testHistogram.vpr@66@12@66@102|))
  (forall ((k@77@01 Int)) (!
    (=>
      (and (<= 0 k@77@01) (< k@77@01 (* M@45@01 N@44@01)))
      (or (<= 0 k@77@01) (not (<= 0 k@77@01))))
    :pattern ((Seq_index matrix@46@01 k@77@01))
    :qid |Ref__Integer_value-aux|))
  (count_array%precondition ($Snap.combine
    $Snap.unit
    ($Snap.combine
      $Snap.unit
      ($Snap.combine
        $Snap.unit
        ($Snap.combine
          $Snap.unit
          ($SortWrappers.$FVF<Ref__Integer_value>To$Snap (as sm@81@01  $FVF<Ref__Integer_value>)))))) 0 (*
    M@45@01
    N@44@01) matrix@46@01 k@72@01)))
(pop) ; 5
(push) ; 5
; [else-branch: 33 | !(0 <= k@72@01 && k@72@01 < P@43@01)]
(assert (not (and (<= 0 k@72@01) (< k@72@01 P@43@01))))
(pop) ; 5
(pop) ; 4
; Joined path conditions
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@68@01 r)
      (and (<= 0 (inv@67@01 r)) (< (inv@67@01 r) (* M@45@01 N@44@01))))
    (=
      ($FVF.lookup_Ref__Integer_value (as sm@73@01  $FVF<Ref__Integer_value>) r)
      ($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@65@01))))) r)))
  :pattern (($FVF.lookup_Ref__Integer_value (as sm@73@01  $FVF<Ref__Integer_value>) r))
  :pattern (($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@65@01))))) r))
  :qid |qp.fvfValDef3|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@71@01 r) (and (<= 0 (inv@70@01 r)) (< (inv@70@01 r) P@43@01)))
    (=
      ($FVF.lookup_Ref__Integer_value (as sm@73@01  $FVF<Ref__Integer_value>) r)
      ($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@65@01)))))) r)))
  :pattern (($FVF.lookup_Ref__Integer_value (as sm@73@01  $FVF<Ref__Integer_value>) r))
  :pattern (($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@65@01)))))) r))
  :qid |qp.fvfValDef4|)))
(assert (forall ((r $Ref)) (!
  (=
    ($FVF.perm_Ref__Integer_value (as pm@74@01  $FPM) r)
    (+
      (ite
        (and
          (img@68@01 r)
          (and (<= 0 (inv@67@01 r)) (< (inv@67@01 r) (* M@45@01 N@44@01))))
        (/ (to_real 1) (to_real 4))
        $Perm.No)
      (ite
        (and (img@71@01 r) (and (<= 0 (inv@70@01 r)) (< (inv@70@01 r) P@43@01)))
        $Perm.Write
        $Perm.No)))
  :pattern (($FVF.perm_Ref__Integer_value (as pm@74@01  $FPM) r))
  :qid |qp.resPrmSumDef5|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@53@01 r) (and (<= 0 (inv@52@01 r)) (< (inv@52@01 r) P@43@01)))
    (=
      ($FVF.lookup_Ref__Integer_value (as sm@63@01  $FVF<Ref__Integer_value>) r)
      ($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@48@01))))))))) r)))
  :pattern (($FVF.lookup_Ref__Integer_value (as sm@63@01  $FVF<Ref__Integer_value>) r))
  :pattern (($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@48@01))))))))) r))
  :qid |qp.fvfValDef0|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@58@01 r)
      (and (<= 0 (inv@57@01 r)) (< (inv@57@01 r) (* M@45@01 N@44@01))))
    (=
      ($FVF.lookup_Ref__Integer_value (as sm@63@01  $FVF<Ref__Integer_value>) r)
      ($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@48@01)))))))))))) r)))
  :pattern (($FVF.lookup_Ref__Integer_value (as sm@63@01  $FVF<Ref__Integer_value>) r))
  :pattern (($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@48@01)))))))))))) r))
  :qid |qp.fvfValDef1|)))
(assert ($Perm.isReadVar $k@78@01))
(assert (forall ((k@77@01 Int)) (!
  (=>
    (and
      (and (<= 0 k@77@01) (< k@77@01 (* M@45@01 N@44@01)))
      (< $Perm.No $k@78@01))
    (and
      (= (inv@79@01 (Seq_index matrix@46@01 k@77@01)) k@77@01)
      (img@80@01 (Seq_index matrix@46@01 k@77@01))))
  :pattern ((Seq_index matrix@46@01 k@77@01))
  :qid |Ref__Integer_value-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@80@01 r)
      (and
        (and (<= 0 (inv@79@01 r)) (< (inv@79@01 r) (* M@45@01 N@44@01)))
        (< $Perm.No $k@78@01)))
    (= (Seq_index matrix@46@01 (inv@79@01 r)) r))
  :pattern ((inv@79@01 r))
  :qid |Ref__Integer_value-fctOfInv|)))
(assert (forall ((r $Ref)) (!
  (and
    (=>
      (Set_in r ($FVF.domain_Ref__Integer_value (as sm@81@01  $FVF<Ref__Integer_value>)))
      (and
        (and (<= 0 (inv@79@01 r)) (< (inv@79@01 r) (* M@45@01 N@44@01)))
        (< $Perm.No $k@78@01)
        (img@80@01 r)))
    (=>
      (and
        (and (<= 0 (inv@79@01 r)) (< (inv@79@01 r) (* M@45@01 N@44@01)))
        (< $Perm.No $k@78@01)
        (img@80@01 r))
      (Set_in r ($FVF.domain_Ref__Integer_value (as sm@81@01  $FVF<Ref__Integer_value>)))))
  :pattern ((Set_in r ($FVF.domain_Ref__Integer_value (as sm@81@01  $FVF<Ref__Integer_value>))))
  :qid |qp.fvfDomDef8|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and
        (and (<= 0 (inv@79@01 r)) (< (inv@79@01 r) (* M@45@01 N@44@01)))
        (< $Perm.No $k@78@01)
        (img@80@01 r))
      (and
        (img@68@01 r)
        (and (<= 0 (inv@67@01 r)) (< (inv@67@01 r) (* M@45@01 N@44@01)))))
    (=
      ($FVF.lookup_Ref__Integer_value (as sm@81@01  $FVF<Ref__Integer_value>) r)
      ($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@65@01))))) r)))
  :pattern (($FVF.lookup_Ref__Integer_value (as sm@81@01  $FVF<Ref__Integer_value>) r))
  :pattern (($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@65@01))))) r))
  :qid |qp.fvfValDef6|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and
        (and (<= 0 (inv@79@01 r)) (< (inv@79@01 r) (* M@45@01 N@44@01)))
        (< $Perm.No $k@78@01)
        (img@80@01 r))
      (and (img@71@01 r) (and (<= 0 (inv@70@01 r)) (< (inv@70@01 r) P@43@01))))
    (=
      ($FVF.lookup_Ref__Integer_value (as sm@81@01  $FVF<Ref__Integer_value>) r)
      ($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@65@01)))))) r)))
  :pattern (($FVF.lookup_Ref__Integer_value (as sm@81@01  $FVF<Ref__Integer_value>) r))
  :pattern (($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@65@01)))))) r))
  :qid |qp.fvfValDef7|)))
(assert (=>
  (and (<= 0 k@72@01) (< k@72@01 P@43@01))
  (and
    (<= 0 k@72@01)
    (< k@72@01 P@43@01)
    (<= 0 (* M@45@01 N@44@01))
    (forall ((j@75@01 Int) (k@76@01 Int)) (!
      (=>
        (and
          (<= 0 j@75@01)
          (and
            (< j@75@01 (* M@45@01 N@44@01))
            (and
              (<= 0 k@76@01)
              (and (< k@76@01 (* M@45@01 N@44@01)) (not (= j@75@01 k@76@01))))))
        (not
          (= (Seq_index matrix@46@01 j@75@01) (Seq_index matrix@46@01 k@76@01))))
      
      :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/third_party/testHistogram.vpr@66@12@66@102|))
    (forall ((k@77@01 Int)) (!
      (=>
        (and (<= 0 k@77@01) (< k@77@01 (* M@45@01 N@44@01)))
        (or (<= 0 k@77@01) (not (<= 0 k@77@01))))
      :pattern ((Seq_index matrix@46@01 k@77@01))
      :qid |Ref__Integer_value-aux|))
    (count_array%precondition ($Snap.combine
      $Snap.unit
      ($Snap.combine
        $Snap.unit
        ($Snap.combine
          $Snap.unit
          ($Snap.combine
            $Snap.unit
            ($SortWrappers.$FVF<Ref__Integer_value>To$Snap (as sm@81@01  $FVF<Ref__Integer_value>)))))) 0 (*
      M@45@01
      N@44@01) matrix@46@01 k@72@01))))
; Joined path conditions
(assert (or
  (not (and (<= 0 k@72@01) (< k@72@01 P@43@01)))
  (and (<= 0 k@72@01) (< k@72@01 P@43@01))))
; [eval] old(hist[k])
; [eval] hist[k]
(push) ; 4
(assert (not (>= k@72@01 0)))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(pop) ; 3
; Nested auxiliary terms: globals (aux)
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@68@01 r)
      (and (<= 0 (inv@67@01 r)) (< (inv@67@01 r) (* M@45@01 N@44@01))))
    (=
      ($FVF.lookup_Ref__Integer_value (as sm@73@01  $FVF<Ref__Integer_value>) r)
      ($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@65@01))))) r)))
  :pattern (($FVF.lookup_Ref__Integer_value (as sm@73@01  $FVF<Ref__Integer_value>) r))
  :pattern (($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@65@01))))) r))
  :qid |qp.fvfValDef3|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@71@01 r) (and (<= 0 (inv@70@01 r)) (< (inv@70@01 r) P@43@01)))
    (=
      ($FVF.lookup_Ref__Integer_value (as sm@73@01  $FVF<Ref__Integer_value>) r)
      ($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@65@01)))))) r)))
  :pattern (($FVF.lookup_Ref__Integer_value (as sm@73@01  $FVF<Ref__Integer_value>) r))
  :pattern (($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@65@01)))))) r))
  :qid |qp.fvfValDef4|)))
(assert (forall ((r $Ref)) (!
  (=
    ($FVF.perm_Ref__Integer_value (as pm@74@01  $FPM) r)
    (+
      (ite
        (and
          (img@68@01 r)
          (and (<= 0 (inv@67@01 r)) (< (inv@67@01 r) (* M@45@01 N@44@01))))
        (/ (to_real 1) (to_real 4))
        $Perm.No)
      (ite
        (and (img@71@01 r) (and (<= 0 (inv@70@01 r)) (< (inv@70@01 r) P@43@01)))
        $Perm.Write
        $Perm.No)))
  :pattern (($FVF.perm_Ref__Integer_value (as pm@74@01  $FPM) r))
  :qid |qp.resPrmSumDef5|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@53@01 r) (and (<= 0 (inv@52@01 r)) (< (inv@52@01 r) P@43@01)))
    (=
      ($FVF.lookup_Ref__Integer_value (as sm@63@01  $FVF<Ref__Integer_value>) r)
      ($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@48@01))))))))) r)))
  :pattern (($FVF.lookup_Ref__Integer_value (as sm@63@01  $FVF<Ref__Integer_value>) r))
  :pattern (($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@48@01))))))))) r))
  :qid |qp.fvfValDef0|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@58@01 r)
      (and (<= 0 (inv@57@01 r)) (< (inv@57@01 r) (* M@45@01 N@44@01))))
    (=
      ($FVF.lookup_Ref__Integer_value (as sm@63@01  $FVF<Ref__Integer_value>) r)
      ($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@48@01)))))))))))) r)))
  :pattern (($FVF.lookup_Ref__Integer_value (as sm@63@01  $FVF<Ref__Integer_value>) r))
  :pattern (($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@48@01)))))))))))) r))
  :qid |qp.fvfValDef1|)))
(assert ($Perm.isReadVar $k@78@01))
(assert (forall ((k@77@01 Int)) (!
  (=>
    (and
      (and (<= 0 k@77@01) (< k@77@01 (* M@45@01 N@44@01)))
      (< $Perm.No $k@78@01))
    (and
      (= (inv@79@01 (Seq_index matrix@46@01 k@77@01)) k@77@01)
      (img@80@01 (Seq_index matrix@46@01 k@77@01))))
  :pattern ((Seq_index matrix@46@01 k@77@01))
  :qid |Ref__Integer_value-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@80@01 r)
      (and
        (and (<= 0 (inv@79@01 r)) (< (inv@79@01 r) (* M@45@01 N@44@01)))
        (< $Perm.No $k@78@01)))
    (= (Seq_index matrix@46@01 (inv@79@01 r)) r))
  :pattern ((inv@79@01 r))
  :qid |Ref__Integer_value-fctOfInv|)))
(assert (forall ((r $Ref)) (!
  (and
    (=>
      (Set_in r ($FVF.domain_Ref__Integer_value (as sm@81@01  $FVF<Ref__Integer_value>)))
      (and
        (and (<= 0 (inv@79@01 r)) (< (inv@79@01 r) (* M@45@01 N@44@01)))
        (< $Perm.No $k@78@01)
        (img@80@01 r)))
    (=>
      (and
        (and (<= 0 (inv@79@01 r)) (< (inv@79@01 r) (* M@45@01 N@44@01)))
        (< $Perm.No $k@78@01)
        (img@80@01 r))
      (Set_in r ($FVF.domain_Ref__Integer_value (as sm@81@01  $FVF<Ref__Integer_value>)))))
  :pattern ((Set_in r ($FVF.domain_Ref__Integer_value (as sm@81@01  $FVF<Ref__Integer_value>))))
  :qid |qp.fvfDomDef8|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and
        (and (<= 0 (inv@79@01 r)) (< (inv@79@01 r) (* M@45@01 N@44@01)))
        (< $Perm.No $k@78@01)
        (img@80@01 r))
      (and
        (img@68@01 r)
        (and (<= 0 (inv@67@01 r)) (< (inv@67@01 r) (* M@45@01 N@44@01)))))
    (=
      ($FVF.lookup_Ref__Integer_value (as sm@81@01  $FVF<Ref__Integer_value>) r)
      ($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@65@01))))) r)))
  :pattern (($FVF.lookup_Ref__Integer_value (as sm@81@01  $FVF<Ref__Integer_value>) r))
  :pattern (($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@65@01))))) r))
  :qid |qp.fvfValDef6|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and
        (and (<= 0 (inv@79@01 r)) (< (inv@79@01 r) (* M@45@01 N@44@01)))
        (< $Perm.No $k@78@01)
        (img@80@01 r))
      (and (img@71@01 r) (and (<= 0 (inv@70@01 r)) (< (inv@70@01 r) P@43@01))))
    (=
      ($FVF.lookup_Ref__Integer_value (as sm@81@01  $FVF<Ref__Integer_value>) r)
      ($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@65@01)))))) r)))
  :pattern (($FVF.lookup_Ref__Integer_value (as sm@81@01  $FVF<Ref__Integer_value>) r))
  :pattern (($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@65@01)))))) r))
  :qid |qp.fvfValDef7|)))
; Nested auxiliary terms: non-globals (aux)
(assert (forall ((k@72@01 Int)) (!
  (and
    (or (<= 0 k@72@01) (not (<= 0 k@72@01)))
    (=>
      (and (<= 0 k@72@01) (< k@72@01 P@43@01))
      (and
        (<= 0 k@72@01)
        (< k@72@01 P@43@01)
        (<= 0 (* M@45@01 N@44@01))
        (forall ((j@75@01 Int) (k@76@01 Int)) (!
          (=>
            (and
              (<= 0 j@75@01)
              (and
                (< j@75@01 (* M@45@01 N@44@01))
                (and
                  (<= 0 k@76@01)
                  (and (< k@76@01 (* M@45@01 N@44@01)) (not (= j@75@01 k@76@01))))))
            (not
              (=
                (Seq_index matrix@46@01 j@75@01)
                (Seq_index matrix@46@01 k@76@01))))
          
          :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/third_party/testHistogram.vpr@66@12@66@102|))
        (forall ((k@77@01 Int)) (!
          (=>
            (and (<= 0 k@77@01) (< k@77@01 (* M@45@01 N@44@01)))
            (or (<= 0 k@77@01) (not (<= 0 k@77@01))))
          :pattern ((Seq_index matrix@46@01 k@77@01))
          :qid |Ref__Integer_value-aux|))
        (count_array%precondition ($Snap.combine
          $Snap.unit
          ($Snap.combine
            $Snap.unit
            ($Snap.combine
              $Snap.unit
              ($Snap.combine
                $Snap.unit
                ($SortWrappers.$FVF<Ref__Integer_value>To$Snap (as sm@81@01  $FVF<Ref__Integer_value>)))))) 0 (*
          M@45@01
          N@44@01) matrix@46@01 k@72@01)))
    (or
      (not (and (<= 0 k@72@01) (< k@72@01 P@43@01)))
      (and (<= 0 k@72@01) (< k@72@01 P@43@01))))
  
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/third_party/testHistogram.vpr@116@12@116@151-aux|)))
(assert (forall ((k@72@01 Int)) (!
  (=>
    (and (<= 0 k@72@01) (< k@72@01 P@43@01))
    (=
      ($FVF.lookup_Ref__Integer_value (as sm@73@01  $FVF<Ref__Integer_value>) (Seq_index
        hist@47@01
        k@72@01))
      (+
        ($FVF.lookup_Ref__Integer_value (as sm@63@01  $FVF<Ref__Integer_value>) (Seq_index
          hist@47@01
          k@72@01))
        (count_array ($Snap.combine
          $Snap.unit
          ($Snap.combine
            $Snap.unit
            ($Snap.combine
              $Snap.unit
              ($Snap.combine
                $Snap.unit
                ($SortWrappers.$FVF<Ref__Integer_value>To$Snap (as sm@81@01  $FVF<Ref__Integer_value>)))))) 0 (*
          M@45@01
          N@44@01) matrix@46@01 k@72@01))))
  
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/third_party/testHistogram.vpr@116@12@116@151|)))
(pop) ; 2
(push) ; 2
; [exec]
; inhale false
(pop) ; 2
(pop) ; 1
; ---------- Ref__loop_body_96 ----------
(declare-const diz@82@01 $Ref)
(declare-const current_thread_id@83@01 Int)
(declare-const matrix@84@01 Seq<$Ref>)
(declare-const j@85@01 Int)
(declare-const i@86@01 Int)
(declare-const P@87@01 Int)
(declare-const hist@88@01 Seq<$Ref>)
(declare-const N@89@01 Int)
(declare-const M@90@01 Int)
(declare-const diz@91@01 $Ref)
(declare-const current_thread_id@92@01 Int)
(declare-const matrix@93@01 Seq<$Ref>)
(declare-const j@94@01 Int)
(declare-const i@95@01 Int)
(declare-const P@96@01 Int)
(declare-const hist@97@01 Seq<$Ref>)
(declare-const N@98@01 Int)
(declare-const M@99@01 Int)
(push) ; 1
(declare-const $t@100@01 $Snap)
(assert (= $t@100@01 ($Snap.combine ($Snap.first $t@100@01) ($Snap.second $t@100@01))))
(assert (= ($Snap.first $t@100@01) $Snap.unit))
; [eval] diz != null
(assert (not (= diz@91@01 $Ref.null)))
(assert (=
  ($Snap.second $t@100@01)
  ($Snap.combine
    ($Snap.first ($Snap.second $t@100@01))
    ($Snap.second ($Snap.second $t@100@01)))))
(assert (= ($Snap.first ($Snap.second $t@100@01)) $Snap.unit))
; [eval] current_thread_id >= 0
(assert (>= current_thread_id@92@01 0))
(assert (=
  ($Snap.second ($Snap.second $t@100@01))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second $t@100@01)))
    ($Snap.second ($Snap.second ($Snap.second $t@100@01))))))
(assert (= ($Snap.first ($Snap.second ($Snap.second $t@100@01))) $Snap.unit))
; [eval] M > 0
(assert (> M@99@01 0))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second $t@100@01)))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@100@01))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@100@01)))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@100@01))))
  $Snap.unit))
; [eval] N > 0
(assert (> N@98@01 0))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@100@01))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@100@01)))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@100@01))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@100@01)))))
  $Snap.unit))
; [eval] P > 0
(assert (> P@96@01 0))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@100@01)))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@100@01))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@100@01)))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@100@01))))))
  $Snap.unit))
; [eval] 0 <= i
(assert (<= 0 i@95@01))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@100@01))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@100@01)))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@100@01))))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@100@01)))))))
  $Snap.unit))
; [eval] i < M
(assert (< i@95@01 M@99@01))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@100@01)))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@100@01))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@100@01)))))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@100@01))))))))
  $Snap.unit))
; [eval] 0 <= j
(assert (<= 0 j@94@01))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@100@01))))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@100@01)))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@100@01))))))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@100@01)))))))))
  $Snap.unit))
; [eval] j < N
(assert (< j@94@01 N@98@01))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@100@01)))))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@100@01))))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@100@01)))))))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@100@01))))))))))
  $Snap.unit))
; [eval] P <= |hist|
; [eval] |hist|
(assert (<= P@96@01 (Seq_length hist@97@01)))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@100@01))))))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@100@01)))))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@100@01))))))))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@100@01)))))))))))
  $Snap.unit))
; [eval] (forall j1: Int, k: Int :: { hist[j1], hist[k] } 0 <= j1 && (j1 < P && (0 <= k && (k < P && j1 != k))) ==> hist[j1] != hist[k])
(declare-const j1@101@01 Int)
(declare-const k@102@01 Int)
(push) ; 2
; [eval] 0 <= j1 && (j1 < P && (0 <= k && (k < P && j1 != k))) ==> hist[j1] != hist[k]
; [eval] 0 <= j1 && (j1 < P && (0 <= k && (k < P && j1 != k)))
; [eval] 0 <= j1
(push) ; 3
; [then-branch: 40 | !(0 <= j1@101@01) | live]
; [else-branch: 40 | 0 <= j1@101@01 | live]
(push) ; 4
; [then-branch: 40 | !(0 <= j1@101@01)]
(assert (not (<= 0 j1@101@01)))
(pop) ; 4
(push) ; 4
; [else-branch: 40 | 0 <= j1@101@01]
(assert (<= 0 j1@101@01))
; [eval] j1 < P
(push) ; 5
; [then-branch: 41 | !(j1@101@01 < P@96@01) | live]
; [else-branch: 41 | j1@101@01 < P@96@01 | live]
(push) ; 6
; [then-branch: 41 | !(j1@101@01 < P@96@01)]
(assert (not (< j1@101@01 P@96@01)))
(pop) ; 6
(push) ; 6
; [else-branch: 41 | j1@101@01 < P@96@01]
(assert (< j1@101@01 P@96@01))
; [eval] 0 <= k
(push) ; 7
; [then-branch: 42 | !(0 <= k@102@01) | live]
; [else-branch: 42 | 0 <= k@102@01 | live]
(push) ; 8
; [then-branch: 42 | !(0 <= k@102@01)]
(assert (not (<= 0 k@102@01)))
(pop) ; 8
(push) ; 8
; [else-branch: 42 | 0 <= k@102@01]
(assert (<= 0 k@102@01))
; [eval] k < P
(push) ; 9
; [then-branch: 43 | !(k@102@01 < P@96@01) | live]
; [else-branch: 43 | k@102@01 < P@96@01 | live]
(push) ; 10
; [then-branch: 43 | !(k@102@01 < P@96@01)]
(assert (not (< k@102@01 P@96@01)))
(pop) ; 10
(push) ; 10
; [else-branch: 43 | k@102@01 < P@96@01]
(assert (< k@102@01 P@96@01))
; [eval] j1 != k
(pop) ; 10
(pop) ; 9
; Joined path conditions
; Joined path conditions
(assert (or (< k@102@01 P@96@01) (not (< k@102@01 P@96@01))))
(pop) ; 8
(pop) ; 7
; Joined path conditions
; Joined path conditions
(assert (=>
  (<= 0 k@102@01)
  (and (<= 0 k@102@01) (or (< k@102@01 P@96@01) (not (< k@102@01 P@96@01))))))
(assert (or (<= 0 k@102@01) (not (<= 0 k@102@01))))
(pop) ; 6
(pop) ; 5
; Joined path conditions
; Joined path conditions
(assert (=>
  (< j1@101@01 P@96@01)
  (and
    (< j1@101@01 P@96@01)
    (=>
      (<= 0 k@102@01)
      (and (<= 0 k@102@01) (or (< k@102@01 P@96@01) (not (< k@102@01 P@96@01)))))
    (or (<= 0 k@102@01) (not (<= 0 k@102@01))))))
(assert (or (< j1@101@01 P@96@01) (not (< j1@101@01 P@96@01))))
(pop) ; 4
(pop) ; 3
; Joined path conditions
; Joined path conditions
(assert (=>
  (<= 0 j1@101@01)
  (and
    (<= 0 j1@101@01)
    (=>
      (< j1@101@01 P@96@01)
      (and
        (< j1@101@01 P@96@01)
        (=>
          (<= 0 k@102@01)
          (and
            (<= 0 k@102@01)
            (or (< k@102@01 P@96@01) (not (< k@102@01 P@96@01)))))
        (or (<= 0 k@102@01) (not (<= 0 k@102@01)))))
    (or (< j1@101@01 P@96@01) (not (< j1@101@01 P@96@01))))))
(assert (or (<= 0 j1@101@01) (not (<= 0 j1@101@01))))
(push) ; 3
; [then-branch: 44 | 0 <= j1@101@01 && j1@101@01 < P@96@01 && 0 <= k@102@01 && k@102@01 < P@96@01 && j1@101@01 != k@102@01 | live]
; [else-branch: 44 | !(0 <= j1@101@01 && j1@101@01 < P@96@01 && 0 <= k@102@01 && k@102@01 < P@96@01 && j1@101@01 != k@102@01) | live]
(push) ; 4
; [then-branch: 44 | 0 <= j1@101@01 && j1@101@01 < P@96@01 && 0 <= k@102@01 && k@102@01 < P@96@01 && j1@101@01 != k@102@01]
(assert (and
  (<= 0 j1@101@01)
  (and
    (< j1@101@01 P@96@01)
    (and (<= 0 k@102@01) (and (< k@102@01 P@96@01) (not (= j1@101@01 k@102@01)))))))
; [eval] hist[j1] != hist[k]
; [eval] hist[j1]
(push) ; 5
(assert (not (>= j1@101@01 0)))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(push) ; 5
(assert (not (< j1@101@01 (Seq_length hist@97@01))))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
; [eval] hist[k]
(push) ; 5
(assert (not (>= k@102@01 0)))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(push) ; 5
(assert (not (< k@102@01 (Seq_length hist@97@01))))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(pop) ; 4
(push) ; 4
; [else-branch: 44 | !(0 <= j1@101@01 && j1@101@01 < P@96@01 && 0 <= k@102@01 && k@102@01 < P@96@01 && j1@101@01 != k@102@01)]
(assert (not
  (and
    (<= 0 j1@101@01)
    (and
      (< j1@101@01 P@96@01)
      (and
        (<= 0 k@102@01)
        (and (< k@102@01 P@96@01) (not (= j1@101@01 k@102@01))))))))
(pop) ; 4
(pop) ; 3
; Joined path conditions
(assert (=>
  (and
    (<= 0 j1@101@01)
    (and
      (< j1@101@01 P@96@01)
      (and
        (<= 0 k@102@01)
        (and (< k@102@01 P@96@01) (not (= j1@101@01 k@102@01))))))
  (and
    (<= 0 j1@101@01)
    (< j1@101@01 P@96@01)
    (<= 0 k@102@01)
    (< k@102@01 P@96@01)
    (not (= j1@101@01 k@102@01)))))
; Joined path conditions
(assert (or
  (not
    (and
      (<= 0 j1@101@01)
      (and
        (< j1@101@01 P@96@01)
        (and
          (<= 0 k@102@01)
          (and (< k@102@01 P@96@01) (not (= j1@101@01 k@102@01)))))))
  (and
    (<= 0 j1@101@01)
    (and
      (< j1@101@01 P@96@01)
      (and
        (<= 0 k@102@01)
        (and (< k@102@01 P@96@01) (not (= j1@101@01 k@102@01))))))))
(pop) ; 2
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall ((j1@101@01 Int) (k@102@01 Int)) (!
  (and
    (=>
      (<= 0 j1@101@01)
      (and
        (<= 0 j1@101@01)
        (=>
          (< j1@101@01 P@96@01)
          (and
            (< j1@101@01 P@96@01)
            (=>
              (<= 0 k@102@01)
              (and
                (<= 0 k@102@01)
                (or (< k@102@01 P@96@01) (not (< k@102@01 P@96@01)))))
            (or (<= 0 k@102@01) (not (<= 0 k@102@01)))))
        (or (< j1@101@01 P@96@01) (not (< j1@101@01 P@96@01)))))
    (or (<= 0 j1@101@01) (not (<= 0 j1@101@01)))
    (=>
      (and
        (<= 0 j1@101@01)
        (and
          (< j1@101@01 P@96@01)
          (and
            (<= 0 k@102@01)
            (and (< k@102@01 P@96@01) (not (= j1@101@01 k@102@01))))))
      (and
        (<= 0 j1@101@01)
        (< j1@101@01 P@96@01)
        (<= 0 k@102@01)
        (< k@102@01 P@96@01)
        (not (= j1@101@01 k@102@01))))
    (or
      (not
        (and
          (<= 0 j1@101@01)
          (and
            (< j1@101@01 P@96@01)
            (and
              (<= 0 k@102@01)
              (and (< k@102@01 P@96@01) (not (= j1@101@01 k@102@01)))))))
      (and
        (<= 0 j1@101@01)
        (and
          (< j1@101@01 P@96@01)
          (and
            (<= 0 k@102@01)
            (and (< k@102@01 P@96@01) (not (= j1@101@01 k@102@01))))))))
  :pattern ((Seq_index hist@97@01 j1@101@01) (Seq_index hist@97@01 k@102@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/third_party/testHistogram.vpr@127@12@127@109-aux|)))
(assert (forall ((j1@101@01 Int) (k@102@01 Int)) (!
  (=>
    (and
      (<= 0 j1@101@01)
      (and
        (< j1@101@01 P@96@01)
        (and
          (<= 0 k@102@01)
          (and (< k@102@01 P@96@01) (not (= j1@101@01 k@102@01))))))
    (not (= (Seq_index hist@97@01 j1@101@01) (Seq_index hist@97@01 k@102@01))))
  :pattern ((Seq_index hist@97@01 j1@101@01) (Seq_index hist@97@01 k@102@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/third_party/testHistogram.vpr@127@12@127@109|)))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@100@01)))))))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@100@01))))))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@100@01)))))))))))))))
(declare-const k@103@01 Int)
(push) ; 2
; [eval] 0 <= k && k < P
; [eval] 0 <= k
(push) ; 3
; [then-branch: 45 | !(0 <= k@103@01) | live]
; [else-branch: 45 | 0 <= k@103@01 | live]
(push) ; 4
; [then-branch: 45 | !(0 <= k@103@01)]
(assert (not (<= 0 k@103@01)))
(pop) ; 4
(push) ; 4
; [else-branch: 45 | 0 <= k@103@01]
(assert (<= 0 k@103@01))
; [eval] k < P
(pop) ; 4
(pop) ; 3
; Joined path conditions
; Joined path conditions
(assert (or (<= 0 k@103@01) (not (<= 0 k@103@01))))
(assert (and (<= 0 k@103@01) (< k@103@01 P@96@01)))
; [eval] hist[k]
(push) ; 3
(assert (not (>= k@103@01 0)))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(push) ; 3
(assert (not (< k@103@01 (Seq_length hist@97@01))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(pop) ; 2
(declare-fun inv@104@01 ($Ref) Int)
(declare-fun img@105@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
(assert (forall ((k@103@01 Int)) (!
  (=>
    (and (<= 0 k@103@01) (< k@103@01 P@96@01))
    (or (<= 0 k@103@01) (not (<= 0 k@103@01))))
  :pattern ((Seq_index hist@97@01 k@103@01))
  :qid |Ref__Integer_value-aux|)))
; Check receiver injectivity
(push) ; 2
(assert (not (forall ((k1@103@01 Int) (k2@103@01 Int)) (!
  (=>
    (and
      (and (<= 0 k1@103@01) (< k1@103@01 P@96@01))
      (and (<= 0 k2@103@01) (< k2@103@01 P@96@01))
      (= (Seq_index hist@97@01 k1@103@01) (Seq_index hist@97@01 k2@103@01)))
    (= k1@103@01 k2@103@01))
  
  :qid |Ref__Integer_value-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 2
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((k@103@01 Int)) (!
  (=>
    (and (<= 0 k@103@01) (< k@103@01 P@96@01))
    (and
      (= (inv@104@01 (Seq_index hist@97@01 k@103@01)) k@103@01)
      (img@105@01 (Seq_index hist@97@01 k@103@01))))
  :pattern ((Seq_index hist@97@01 k@103@01))
  :qid |quant-u-9994|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@105@01 r) (and (<= 0 (inv@104@01 r)) (< (inv@104@01 r) P@96@01)))
    (= (Seq_index hist@97@01 (inv@104@01 r)) r))
  :pattern ((inv@104@01 r))
  :qid |Ref__Integer_value-fctOfInv|)))
; Permissions are non-negative
; Field permissions are at most one
; Permission implies non-null receiver
(assert (forall ((k@103@01 Int)) (!
  (=>
    (and (<= 0 k@103@01) (< k@103@01 P@96@01))
    (not (= (Seq_index hist@97@01 k@103@01) $Ref.null)))
  :pattern ((Seq_index hist@97@01 k@103@01))
  :qid |Ref__Integer_value-permImpliesNonNull|)))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@100@01))))))))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@100@01)))))))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@100@01))))))))))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@100@01)))))))))))))
  $Snap.unit))
; [eval] (forall k: Int :: { hist[k] } 0 <= k && k < P ==> hist[k].Ref__Integer_value == 0)
(declare-const k@106@01 Int)
(push) ; 2
; [eval] 0 <= k && k < P ==> hist[k].Ref__Integer_value == 0
; [eval] 0 <= k && k < P
; [eval] 0 <= k
(push) ; 3
; [then-branch: 46 | !(0 <= k@106@01) | live]
; [else-branch: 46 | 0 <= k@106@01 | live]
(push) ; 4
; [then-branch: 46 | !(0 <= k@106@01)]
(assert (not (<= 0 k@106@01)))
(pop) ; 4
(push) ; 4
; [else-branch: 46 | 0 <= k@106@01]
(assert (<= 0 k@106@01))
; [eval] k < P
(pop) ; 4
(pop) ; 3
; Joined path conditions
; Joined path conditions
(assert (or (<= 0 k@106@01) (not (<= 0 k@106@01))))
(push) ; 3
; [then-branch: 47 | 0 <= k@106@01 && k@106@01 < P@96@01 | live]
; [else-branch: 47 | !(0 <= k@106@01 && k@106@01 < P@96@01) | live]
(push) ; 4
; [then-branch: 47 | 0 <= k@106@01 && k@106@01 < P@96@01]
(assert (and (<= 0 k@106@01) (< k@106@01 P@96@01)))
; [eval] hist[k].Ref__Integer_value == 0
; [eval] hist[k]
(push) ; 5
(assert (not (>= k@106@01 0)))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(push) ; 5
(assert (not (< k@106@01 (Seq_length hist@97@01))))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(push) ; 5
(assert (not (and
  (img@105@01 (Seq_index hist@97@01 k@106@01))
  (and
    (<= 0 (inv@104@01 (Seq_index hist@97@01 k@106@01)))
    (< (inv@104@01 (Seq_index hist@97@01 k@106@01)) P@96@01)))))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(pop) ; 4
(push) ; 4
; [else-branch: 47 | !(0 <= k@106@01 && k@106@01 < P@96@01)]
(assert (not (and (<= 0 k@106@01) (< k@106@01 P@96@01))))
(pop) ; 4
(pop) ; 3
; Joined path conditions
; Joined path conditions
(assert (or
  (not (and (<= 0 k@106@01) (< k@106@01 P@96@01)))
  (and (<= 0 k@106@01) (< k@106@01 P@96@01))))
(pop) ; 2
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall ((k@106@01 Int)) (!
  (and
    (or (<= 0 k@106@01) (not (<= 0 k@106@01)))
    (or
      (not (and (<= 0 k@106@01) (< k@106@01 P@96@01)))
      (and (<= 0 k@106@01) (< k@106@01 P@96@01))))
  :pattern ((Seq_index hist@97@01 k@106@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/third_party/testHistogram.vpr@129@13@129@87-aux|)))
(assert (forall ((k@106@01 Int)) (!
  (=>
    (and (<= 0 k@106@01) (< k@106@01 P@96@01))
    (=
      ($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@100@01))))))))))))) (Seq_index
        hist@97@01
        k@106@01))
      0))
  :pattern ((Seq_index hist@97@01 k@106@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/third_party/testHistogram.vpr@129@13@129@87|)))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@100@01)))))))))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@100@01))))))))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@100@01)))))))))))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@100@01))))))))))))))
  $Snap.unit))
; [eval] Ref__multidim_index_2(M, N, i, j) < |matrix|
; [eval] Ref__multidim_index_2(M, N, i, j)
(push) ; 2
; [eval] 0 <= i0
; [eval] i0 < N0
; [eval] 0 <= N0
(push) ; 3
(assert (not (<= 0 M@99@01)))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(assert (<= 0 M@99@01))
; [eval] 0 <= i1
; [eval] i1 < N1
; [eval] 0 <= N1
(push) ; 3
(assert (not (<= 0 N@98@01)))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(assert (<= 0 N@98@01))
(assert (Ref__multidim_index_2%precondition ($Snap.combine
  $Snap.unit
  ($Snap.combine
    $Snap.unit
    ($Snap.combine
      $Snap.unit
      ($Snap.combine $Snap.unit ($Snap.combine $Snap.unit $Snap.unit))))) M@99@01 N@98@01 i@95@01 j@94@01))
(pop) ; 2
; Joined path conditions
(assert (and
  (<= 0 M@99@01)
  (<= 0 N@98@01)
  (Ref__multidim_index_2%precondition ($Snap.combine
    $Snap.unit
    ($Snap.combine
      $Snap.unit
      ($Snap.combine
        $Snap.unit
        ($Snap.combine $Snap.unit ($Snap.combine $Snap.unit $Snap.unit))))) M@99@01 N@98@01 i@95@01 j@94@01)))
; [eval] |matrix|
(assert (<
  (Ref__multidim_index_2 ($Snap.combine
    $Snap.unit
    ($Snap.combine
      $Snap.unit
      ($Snap.combine
        $Snap.unit
        ($Snap.combine $Snap.unit ($Snap.combine $Snap.unit $Snap.unit))))) M@99@01 N@98@01 i@95@01 j@94@01)
  (Seq_length matrix@93@01)))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@100@01))))))))))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@100@01)))))))))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@100@01))))))))))))))))))
; [eval] matrix[Ref__multidim_index_2(M, N, i, j)]
; [eval] Ref__multidim_index_2(M, N, i, j)
(push) ; 2
; [eval] 0 <= i0
; [eval] i0 < N0
; [eval] 0 <= N0
; [eval] 0 <= i1
; [eval] i1 < N1
; [eval] 0 <= N1
(pop) ; 2
; Joined path conditions
(push) ; 2
(assert (not (>=
  (Ref__multidim_index_2 ($Snap.combine
    $Snap.unit
    ($Snap.combine
      $Snap.unit
      ($Snap.combine
        $Snap.unit
        ($Snap.combine $Snap.unit ($Snap.combine $Snap.unit $Snap.unit))))) M@99@01 N@98@01 i@95@01 j@94@01)
  0)))
(check-sat)
; unsat
(pop) ; 2
; 0.00s
; (get-info :all-statistics)
(declare-const sm@107@01 $FVF<Ref__Integer_value>)
; Definitional axioms for singleton-SM's value
(assert (=
  ($FVF.lookup_Ref__Integer_value (as sm@107@01  $FVF<Ref__Integer_value>) (Seq_index
    matrix@93@01
    (Ref__multidim_index_2 ($Snap.combine
      $Snap.unit
      ($Snap.combine
        $Snap.unit
        ($Snap.combine
          $Snap.unit
          ($Snap.combine $Snap.unit ($Snap.combine $Snap.unit $Snap.unit))))) M@99@01 N@98@01 i@95@01 j@94@01)))
  ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@100@01))))))))))))))))))
(assert (<=
  $Perm.No
  (ite
    (=
      (Seq_index
        matrix@93@01
        (Ref__multidim_index_2 ($Snap.combine
          $Snap.unit
          ($Snap.combine
            $Snap.unit
            ($Snap.combine
              $Snap.unit
              ($Snap.combine $Snap.unit ($Snap.combine $Snap.unit $Snap.unit))))) M@99@01 N@98@01 i@95@01 j@94@01))
      (Seq_index
        matrix@93@01
        (Ref__multidim_index_2 ($Snap.combine
          $Snap.unit
          ($Snap.combine
            $Snap.unit
            ($Snap.combine
              $Snap.unit
              ($Snap.combine $Snap.unit ($Snap.combine $Snap.unit $Snap.unit))))) M@99@01 N@98@01 i@95@01 j@94@01)))
    (/ (to_real 1) (to_real 4))
    $Perm.No)))
(assert (<=
  (ite
    (=
      (Seq_index
        matrix@93@01
        (Ref__multidim_index_2 ($Snap.combine
          $Snap.unit
          ($Snap.combine
            $Snap.unit
            ($Snap.combine
              $Snap.unit
              ($Snap.combine $Snap.unit ($Snap.combine $Snap.unit $Snap.unit))))) M@99@01 N@98@01 i@95@01 j@94@01))
      (Seq_index
        matrix@93@01
        (Ref__multidim_index_2 ($Snap.combine
          $Snap.unit
          ($Snap.combine
            $Snap.unit
            ($Snap.combine
              $Snap.unit
              ($Snap.combine $Snap.unit ($Snap.combine $Snap.unit $Snap.unit))))) M@99@01 N@98@01 i@95@01 j@94@01)))
    (/ (to_real 1) (to_real 4))
    $Perm.No)
  $Perm.Write))
(assert (=>
  (=
    (Seq_index
      matrix@93@01
      (Ref__multidim_index_2 ($Snap.combine
        $Snap.unit
        ($Snap.combine
          $Snap.unit
          ($Snap.combine
            $Snap.unit
            ($Snap.combine $Snap.unit ($Snap.combine $Snap.unit $Snap.unit))))) M@99@01 N@98@01 i@95@01 j@94@01))
    (Seq_index
      matrix@93@01
      (Ref__multidim_index_2 ($Snap.combine
        $Snap.unit
        ($Snap.combine
          $Snap.unit
          ($Snap.combine
            $Snap.unit
            ($Snap.combine $Snap.unit ($Snap.combine $Snap.unit $Snap.unit))))) M@99@01 N@98@01 i@95@01 j@94@01)))
  (not
    (=
      (Seq_index
        matrix@93@01
        (Ref__multidim_index_2 ($Snap.combine
          $Snap.unit
          ($Snap.combine
            $Snap.unit
            ($Snap.combine
              $Snap.unit
              ($Snap.combine $Snap.unit ($Snap.combine $Snap.unit $Snap.unit))))) M@99@01 N@98@01 i@95@01 j@94@01))
      $Ref.null))))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@100@01)))))))))))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@100@01))))))))))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@100@01)))))))))))))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@100@01))))))))))))))))
  $Snap.unit))
; [eval] 0 <= matrix[Ref__multidim_index_2(M, N, i, j)].Ref__Integer_value
; [eval] matrix[Ref__multidim_index_2(M, N, i, j)]
; [eval] Ref__multidim_index_2(M, N, i, j)
(push) ; 2
; [eval] 0 <= i0
; [eval] i0 < N0
; [eval] 0 <= N0
; [eval] 0 <= i1
; [eval] i1 < N1
; [eval] 0 <= N1
(pop) ; 2
; Joined path conditions
(push) ; 2
(assert (not (>=
  (Ref__multidim_index_2 ($Snap.combine
    $Snap.unit
    ($Snap.combine
      $Snap.unit
      ($Snap.combine
        $Snap.unit
        ($Snap.combine $Snap.unit ($Snap.combine $Snap.unit $Snap.unit))))) M@99@01 N@98@01 i@95@01 j@94@01)
  0)))
(check-sat)
; unsat
(pop) ; 2
; 0.00s
; (get-info :all-statistics)
(declare-const sm@108@01 $FVF<Ref__Integer_value>)
; Definitional axioms for snapshot map values
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@105@01 r) (and (<= 0 (inv@104@01 r)) (< (inv@104@01 r) P@96@01)))
    (=
      ($FVF.lookup_Ref__Integer_value (as sm@108@01  $FVF<Ref__Integer_value>) r)
      ($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@100@01))))))))))))) r)))
  :pattern (($FVF.lookup_Ref__Integer_value (as sm@108@01  $FVF<Ref__Integer_value>) r))
  :pattern (($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@100@01))))))))))))) r))
  :qid |qp.fvfValDef9|)))
(assert (forall ((r $Ref)) (!
  (=>
    (=
      r
      (Seq_index
        matrix@93@01
        (Ref__multidim_index_2 ($Snap.combine
          $Snap.unit
          ($Snap.combine
            $Snap.unit
            ($Snap.combine
              $Snap.unit
              ($Snap.combine $Snap.unit ($Snap.combine $Snap.unit $Snap.unit))))) M@99@01 N@98@01 i@95@01 j@94@01)))
    (=
      ($FVF.lookup_Ref__Integer_value (as sm@108@01  $FVF<Ref__Integer_value>) r)
      ($FVF.lookup_Ref__Integer_value (as sm@107@01  $FVF<Ref__Integer_value>) r)))
  :pattern (($FVF.lookup_Ref__Integer_value (as sm@108@01  $FVF<Ref__Integer_value>) r))
  :pattern (($FVF.lookup_Ref__Integer_value (as sm@107@01  $FVF<Ref__Integer_value>) r))
  :qid |qp.fvfValDef10|)))
(declare-const pm@109@01 $FPM)
(assert (forall ((r $Ref)) (!
  (=
    ($FVF.perm_Ref__Integer_value (as pm@109@01  $FPM) r)
    (+
      (ite
        (and
          (img@105@01 r)
          (and (<= 0 (inv@104@01 r)) (< (inv@104@01 r) P@96@01)))
        $Perm.Write
        $Perm.No)
      (ite
        (=
          r
          (Seq_index
            matrix@93@01
            (Ref__multidim_index_2 ($Snap.combine
              $Snap.unit
              ($Snap.combine
                $Snap.unit
                ($Snap.combine
                  $Snap.unit
                  ($Snap.combine
                    $Snap.unit
                    ($Snap.combine $Snap.unit $Snap.unit))))) M@99@01 N@98@01 i@95@01 j@94@01)))
        (/ (to_real 1) (to_real 4))
        $Perm.No)))
  :pattern (($FVF.perm_Ref__Integer_value (as pm@109@01  $FPM) r))
  :qid |qp.resPrmSumDef11|)))
(push) ; 2
(assert (not (<
  $Perm.No
  ($FVF.perm_Ref__Integer_value (as pm@109@01  $FPM) (Seq_index
    matrix@93@01
    (Ref__multidim_index_2 ($Snap.combine
      $Snap.unit
      ($Snap.combine
        $Snap.unit
        ($Snap.combine
          $Snap.unit
          ($Snap.combine $Snap.unit ($Snap.combine $Snap.unit $Snap.unit))))) M@99@01 N@98@01 i@95@01 j@94@01))))))
(check-sat)
; unsat
(pop) ; 2
; 0.00s
; (get-info :all-statistics)
(assert (<=
  0
  ($FVF.lookup_Ref__Integer_value (as sm@108@01  $FVF<Ref__Integer_value>) (Seq_index
    matrix@93@01
    (Ref__multidim_index_2 ($Snap.combine
      $Snap.unit
      ($Snap.combine
        $Snap.unit
        ($Snap.combine
          $Snap.unit
          ($Snap.combine $Snap.unit ($Snap.combine $Snap.unit $Snap.unit))))) M@99@01 N@98@01 i@95@01 j@94@01)))))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@100@01))))))))))))))))
  $Snap.unit))
; [eval] matrix[Ref__multidim_index_2(M, N, i, j)].Ref__Integer_value < P
; [eval] matrix[Ref__multidim_index_2(M, N, i, j)]
; [eval] Ref__multidim_index_2(M, N, i, j)
(push) ; 2
; [eval] 0 <= i0
; [eval] i0 < N0
; [eval] 0 <= N0
; [eval] 0 <= i1
; [eval] i1 < N1
; [eval] 0 <= N1
(pop) ; 2
; Joined path conditions
(push) ; 2
(assert (not (>=
  (Ref__multidim_index_2 ($Snap.combine
    $Snap.unit
    ($Snap.combine
      $Snap.unit
      ($Snap.combine
        $Snap.unit
        ($Snap.combine $Snap.unit ($Snap.combine $Snap.unit $Snap.unit))))) M@99@01 N@98@01 i@95@01 j@94@01)
  0)))
(check-sat)
; unsat
(pop) ; 2
; 0.00s
; (get-info :all-statistics)
(assert (and
  (forall ((r $Ref)) (!
    (=>
      (and (img@105@01 r) (and (<= 0 (inv@104@01 r)) (< (inv@104@01 r) P@96@01)))
      (=
        ($FVF.lookup_Ref__Integer_value (as sm@108@01  $FVF<Ref__Integer_value>) r)
        ($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@100@01))))))))))))) r)))
    :pattern (($FVF.lookup_Ref__Integer_value (as sm@108@01  $FVF<Ref__Integer_value>) r))
    :pattern (($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@100@01))))))))))))) r))
    :qid |qp.fvfValDef9|))
  (forall ((r $Ref)) (!
    (=>
      (=
        r
        (Seq_index
          matrix@93@01
          (Ref__multidim_index_2 ($Snap.combine
            $Snap.unit
            ($Snap.combine
              $Snap.unit
              ($Snap.combine
                $Snap.unit
                ($Snap.combine $Snap.unit ($Snap.combine $Snap.unit $Snap.unit))))) M@99@01 N@98@01 i@95@01 j@94@01)))
      (=
        ($FVF.lookup_Ref__Integer_value (as sm@108@01  $FVF<Ref__Integer_value>) r)
        ($FVF.lookup_Ref__Integer_value (as sm@107@01  $FVF<Ref__Integer_value>) r)))
    :pattern (($FVF.lookup_Ref__Integer_value (as sm@108@01  $FVF<Ref__Integer_value>) r))
    :pattern (($FVF.lookup_Ref__Integer_value (as sm@107@01  $FVF<Ref__Integer_value>) r))
    :qid |qp.fvfValDef10|))))
(push) ; 2
(assert (not (<
  $Perm.No
  (+
    (ite
      (and
        (img@105@01 (Seq_index
          matrix@93@01
          (Ref__multidim_index_2 ($Snap.combine
            $Snap.unit
            ($Snap.combine
              $Snap.unit
              ($Snap.combine
                $Snap.unit
                ($Snap.combine $Snap.unit ($Snap.combine $Snap.unit $Snap.unit))))) M@99@01 N@98@01 i@95@01 j@94@01)))
        (and
          (<=
            0
            (inv@104@01 (Seq_index
              matrix@93@01
              (Ref__multidim_index_2 ($Snap.combine
                $Snap.unit
                ($Snap.combine
                  $Snap.unit
                  ($Snap.combine
                    $Snap.unit
                    ($Snap.combine
                      $Snap.unit
                      ($Snap.combine $Snap.unit $Snap.unit))))) M@99@01 N@98@01 i@95@01 j@94@01))))
          (<
            (inv@104@01 (Seq_index
              matrix@93@01
              (Ref__multidim_index_2 ($Snap.combine
                $Snap.unit
                ($Snap.combine
                  $Snap.unit
                  ($Snap.combine
                    $Snap.unit
                    ($Snap.combine
                      $Snap.unit
                      ($Snap.combine $Snap.unit $Snap.unit))))) M@99@01 N@98@01 i@95@01 j@94@01)))
            P@96@01)))
      $Perm.Write
      $Perm.No)
    (ite
      (=
        (Seq_index
          matrix@93@01
          (Ref__multidim_index_2 ($Snap.combine
            $Snap.unit
            ($Snap.combine
              $Snap.unit
              ($Snap.combine
                $Snap.unit
                ($Snap.combine $Snap.unit ($Snap.combine $Snap.unit $Snap.unit))))) M@99@01 N@98@01 i@95@01 j@94@01))
        (Seq_index
          matrix@93@01
          (Ref__multidim_index_2 ($Snap.combine
            $Snap.unit
            ($Snap.combine
              $Snap.unit
              ($Snap.combine
                $Snap.unit
                ($Snap.combine $Snap.unit ($Snap.combine $Snap.unit $Snap.unit))))) M@99@01 N@98@01 i@95@01 j@94@01)))
      (/ (to_real 1) (to_real 4))
      $Perm.No)))))
(check-sat)
; unsat
(pop) ; 2
; 0.00s
; (get-info :all-statistics)
(assert (<
  ($FVF.lookup_Ref__Integer_value (as sm@108@01  $FVF<Ref__Integer_value>) (Seq_index
    matrix@93@01
    (Ref__multidim_index_2 ($Snap.combine
      $Snap.unit
      ($Snap.combine
        $Snap.unit
        ($Snap.combine
          $Snap.unit
          ($Snap.combine $Snap.unit ($Snap.combine $Snap.unit $Snap.unit))))) M@99@01 N@98@01 i@95@01 j@94@01)))
  P@96@01))
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
(set-option :timeout 0)
(push) ; 2
(declare-const $t@110@01 $Snap)
(assert (= $t@110@01 ($Snap.combine ($Snap.first $t@110@01) ($Snap.second $t@110@01))))
(assert (= ($Snap.first $t@110@01) $Snap.unit))
; [eval] M > 0
(assert (=
  ($Snap.second $t@110@01)
  ($Snap.combine
    ($Snap.first ($Snap.second $t@110@01))
    ($Snap.second ($Snap.second $t@110@01)))))
(assert (= ($Snap.first ($Snap.second $t@110@01)) $Snap.unit))
; [eval] N > 0
(assert (=
  ($Snap.second ($Snap.second $t@110@01))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second $t@110@01)))
    ($Snap.second ($Snap.second ($Snap.second $t@110@01))))))
(assert (= ($Snap.first ($Snap.second ($Snap.second $t@110@01))) $Snap.unit))
; [eval] P > 0
(assert (=
  ($Snap.second ($Snap.second ($Snap.second $t@110@01)))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@110@01))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@110@01)))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@110@01))))
  $Snap.unit))
; [eval] 0 <= i
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@110@01))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@110@01)))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@110@01))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@110@01)))))
  $Snap.unit))
; [eval] i < M
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@110@01)))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@110@01))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@110@01)))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@110@01))))))
  $Snap.unit))
; [eval] 0 <= j
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@110@01))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@110@01)))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@110@01))))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@110@01)))))))
  $Snap.unit))
; [eval] j < N
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@110@01)))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@110@01))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@110@01)))))))))))
; [eval] matrix[Ref__multidim_index_2(M, N, i, j)]
; [eval] Ref__multidim_index_2(M, N, i, j)
(push) ; 3
; [eval] 0 <= i0
; [eval] i0 < N0
; [eval] 0 <= N0
; [eval] 0 <= i1
; [eval] i1 < N1
; [eval] 0 <= N1
(pop) ; 3
; Joined path conditions
(push) ; 3
(assert (not (>=
  (Ref__multidim_index_2 ($Snap.combine
    $Snap.unit
    ($Snap.combine
      $Snap.unit
      ($Snap.combine
        $Snap.unit
        ($Snap.combine $Snap.unit ($Snap.combine $Snap.unit $Snap.unit))))) M@99@01 N@98@01 i@95@01 j@94@01)
  0)))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(declare-const sm@111@01 $FVF<Ref__Integer_value>)
; Definitional axioms for singleton-SM's value
(assert (=
  ($FVF.lookup_Ref__Integer_value (as sm@111@01  $FVF<Ref__Integer_value>) (Seq_index
    matrix@93@01
    (Ref__multidim_index_2 ($Snap.combine
      $Snap.unit
      ($Snap.combine
        $Snap.unit
        ($Snap.combine
          $Snap.unit
          ($Snap.combine $Snap.unit ($Snap.combine $Snap.unit $Snap.unit))))) M@99@01 N@98@01 i@95@01 j@94@01)))
  ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@110@01)))))))))))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@110@01))))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@110@01)))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@110@01))))))))))))
(declare-const k@112@01 Int)
(push) ; 3
; [eval] 0 <= k && k < P
; [eval] 0 <= k
(push) ; 4
; [then-branch: 48 | !(0 <= k@112@01) | live]
; [else-branch: 48 | 0 <= k@112@01 | live]
(push) ; 5
; [then-branch: 48 | !(0 <= k@112@01)]
(assert (not (<= 0 k@112@01)))
(pop) ; 5
(push) ; 5
; [else-branch: 48 | 0 <= k@112@01]
(assert (<= 0 k@112@01))
; [eval] k < P
(pop) ; 5
(pop) ; 4
; Joined path conditions
; Joined path conditions
(assert (or (<= 0 k@112@01) (not (<= 0 k@112@01))))
(assert (and (<= 0 k@112@01) (< k@112@01 P@96@01)))
; [eval] hist[k]
(push) ; 4
(assert (not (>= k@112@01 0)))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(push) ; 4
(assert (not (< k@112@01 (Seq_length hist@97@01))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(pop) ; 3
(declare-fun inv@113@01 ($Ref) Int)
(declare-fun img@114@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
(assert (forall ((k@112@01 Int)) (!
  (=>
    (and (<= 0 k@112@01) (< k@112@01 P@96@01))
    (or (<= 0 k@112@01) (not (<= 0 k@112@01))))
  :pattern ((Seq_index hist@97@01 k@112@01))
  :qid |Ref__Integer_value-aux|)))
; Check receiver injectivity
(push) ; 3
(assert (not (forall ((k1@112@01 Int) (k2@112@01 Int)) (!
  (=>
    (and
      (and (<= 0 k1@112@01) (< k1@112@01 P@96@01))
      (and (<= 0 k2@112@01) (< k2@112@01 P@96@01))
      (= (Seq_index hist@97@01 k1@112@01) (Seq_index hist@97@01 k2@112@01)))
    (= k1@112@01 k2@112@01))
  
  :qid |Ref__Integer_value-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((k@112@01 Int)) (!
  (=>
    (and (<= 0 k@112@01) (< k@112@01 P@96@01))
    (and
      (= (inv@113@01 (Seq_index hist@97@01 k@112@01)) k@112@01)
      (img@114@01 (Seq_index hist@97@01 k@112@01))))
  :pattern ((Seq_index hist@97@01 k@112@01))
  :qid |quant-u-9996|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@114@01 r) (and (<= 0 (inv@113@01 r)) (< (inv@113@01 r) P@96@01)))
    (= (Seq_index hist@97@01 (inv@113@01 r)) r))
  :pattern ((inv@113@01 r))
  :qid |Ref__Integer_value-fctOfInv|)))
; Permissions are non-negative
; Field permissions are at most one
; Permission implies non-null receiver
(assert (forall ((k@112@01 Int)) (!
  (=>
    (and (<= 0 k@112@01) (< k@112@01 P@96@01))
    (not (= (Seq_index hist@97@01 k@112@01) $Ref.null)))
  :pattern ((Seq_index hist@97@01 k@112@01))
  :qid |Ref__Integer_value-permImpliesNonNull|)))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@110@01)))))))))
  $Snap.unit))
; [eval] (forall k: Int :: { hist[k] } 0 <= k && k < P ==> hist[k].Ref__Integer_value == (matrix[Ref__multidim_index_2(M, N, i, j)].Ref__Integer_value == k ? 1 : 0))
(declare-const k@115@01 Int)
(push) ; 3
; [eval] 0 <= k && k < P ==> hist[k].Ref__Integer_value == (matrix[Ref__multidim_index_2(M, N, i, j)].Ref__Integer_value == k ? 1 : 0)
; [eval] 0 <= k && k < P
; [eval] 0 <= k
(push) ; 4
; [then-branch: 49 | !(0 <= k@115@01) | live]
; [else-branch: 49 | 0 <= k@115@01 | live]
(push) ; 5
; [then-branch: 49 | !(0 <= k@115@01)]
(assert (not (<= 0 k@115@01)))
(pop) ; 5
(push) ; 5
; [else-branch: 49 | 0 <= k@115@01]
(assert (<= 0 k@115@01))
; [eval] k < P
(pop) ; 5
(pop) ; 4
; Joined path conditions
; Joined path conditions
(assert (or (<= 0 k@115@01) (not (<= 0 k@115@01))))
(push) ; 4
; [then-branch: 50 | 0 <= k@115@01 && k@115@01 < P@96@01 | live]
; [else-branch: 50 | !(0 <= k@115@01 && k@115@01 < P@96@01) | live]
(push) ; 5
; [then-branch: 50 | 0 <= k@115@01 && k@115@01 < P@96@01]
(assert (and (<= 0 k@115@01) (< k@115@01 P@96@01)))
; [eval] hist[k].Ref__Integer_value == (matrix[Ref__multidim_index_2(M, N, i, j)].Ref__Integer_value == k ? 1 : 0)
; [eval] hist[k]
(push) ; 6
(assert (not (>= k@115@01 0)))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(push) ; 6
(assert (not (< k@115@01 (Seq_length hist@97@01))))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(declare-const sm@116@01 $FVF<Ref__Integer_value>)
; Definitional axioms for snapshot map values
(assert (forall ((r $Ref)) (!
  (=>
    (=
      r
      (Seq_index
        matrix@93@01
        (Ref__multidim_index_2 ($Snap.combine
          $Snap.unit
          ($Snap.combine
            $Snap.unit
            ($Snap.combine
              $Snap.unit
              ($Snap.combine $Snap.unit ($Snap.combine $Snap.unit $Snap.unit))))) M@99@01 N@98@01 i@95@01 j@94@01)))
    (=
      ($FVF.lookup_Ref__Integer_value (as sm@116@01  $FVF<Ref__Integer_value>) r)
      ($FVF.lookup_Ref__Integer_value (as sm@111@01  $FVF<Ref__Integer_value>) r)))
  :pattern (($FVF.lookup_Ref__Integer_value (as sm@116@01  $FVF<Ref__Integer_value>) r))
  :pattern (($FVF.lookup_Ref__Integer_value (as sm@111@01  $FVF<Ref__Integer_value>) r))
  :qid |qp.fvfValDef12|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@114@01 r) (and (<= 0 (inv@113@01 r)) (< (inv@113@01 r) P@96@01)))
    (=
      ($FVF.lookup_Ref__Integer_value (as sm@116@01  $FVF<Ref__Integer_value>) r)
      ($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@110@01)))))))))) r)))
  :pattern (($FVF.lookup_Ref__Integer_value (as sm@116@01  $FVF<Ref__Integer_value>) r))
  :pattern (($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@110@01)))))))))) r))
  :qid |qp.fvfValDef13|)))
(declare-const pm@117@01 $FPM)
(assert (forall ((r $Ref)) (!
  (=
    ($FVF.perm_Ref__Integer_value (as pm@117@01  $FPM) r)
    (+
      (ite
        (=
          r
          (Seq_index
            matrix@93@01
            (Ref__multidim_index_2 ($Snap.combine
              $Snap.unit
              ($Snap.combine
                $Snap.unit
                ($Snap.combine
                  $Snap.unit
                  ($Snap.combine
                    $Snap.unit
                    ($Snap.combine $Snap.unit $Snap.unit))))) M@99@01 N@98@01 i@95@01 j@94@01)))
        (/ (to_real 1) (to_real 4))
        $Perm.No)
      (ite
        (and
          (img@114@01 r)
          (and (<= 0 (inv@113@01 r)) (< (inv@113@01 r) P@96@01)))
        $Perm.Write
        $Perm.No)))
  :pattern (($FVF.perm_Ref__Integer_value (as pm@117@01  $FPM) r))
  :qid |qp.resPrmSumDef14|)))
(push) ; 6
(assert (not (<
  $Perm.No
  ($FVF.perm_Ref__Integer_value (as pm@117@01  $FPM) (Seq_index
    hist@97@01
    k@115@01)))))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
; [eval] (matrix[Ref__multidim_index_2(M, N, i, j)].Ref__Integer_value == k ? 1 : 0)
; [eval] matrix[Ref__multidim_index_2(M, N, i, j)].Ref__Integer_value == k
; [eval] matrix[Ref__multidim_index_2(M, N, i, j)]
; [eval] Ref__multidim_index_2(M, N, i, j)
(push) ; 6
; [eval] 0 <= i0
; [eval] i0 < N0
; [eval] 0 <= N0
; [eval] 0 <= i1
; [eval] i1 < N1
; [eval] 0 <= N1
(pop) ; 6
; Joined path conditions
(push) ; 6
(assert (not (>=
  (Ref__multidim_index_2 ($Snap.combine
    $Snap.unit
    ($Snap.combine
      $Snap.unit
      ($Snap.combine
        $Snap.unit
        ($Snap.combine $Snap.unit ($Snap.combine $Snap.unit $Snap.unit))))) M@99@01 N@98@01 i@95@01 j@94@01)
  0)))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(assert (and
  (forall ((r $Ref)) (!
    (=>
      (=
        r
        (Seq_index
          matrix@93@01
          (Ref__multidim_index_2 ($Snap.combine
            $Snap.unit
            ($Snap.combine
              $Snap.unit
              ($Snap.combine
                $Snap.unit
                ($Snap.combine $Snap.unit ($Snap.combine $Snap.unit $Snap.unit))))) M@99@01 N@98@01 i@95@01 j@94@01)))
      (=
        ($FVF.lookup_Ref__Integer_value (as sm@116@01  $FVF<Ref__Integer_value>) r)
        ($FVF.lookup_Ref__Integer_value (as sm@111@01  $FVF<Ref__Integer_value>) r)))
    :pattern (($FVF.lookup_Ref__Integer_value (as sm@116@01  $FVF<Ref__Integer_value>) r))
    :pattern (($FVF.lookup_Ref__Integer_value (as sm@111@01  $FVF<Ref__Integer_value>) r))
    :qid |qp.fvfValDef12|))
  (forall ((r $Ref)) (!
    (=>
      (and (img@114@01 r) (and (<= 0 (inv@113@01 r)) (< (inv@113@01 r) P@96@01)))
      (=
        ($FVF.lookup_Ref__Integer_value (as sm@116@01  $FVF<Ref__Integer_value>) r)
        ($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@110@01)))))))))) r)))
    :pattern (($FVF.lookup_Ref__Integer_value (as sm@116@01  $FVF<Ref__Integer_value>) r))
    :pattern (($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@110@01)))))))))) r))
    :qid |qp.fvfValDef13|))))
(push) ; 6
(assert (not (<
  $Perm.No
  (+
    (ite
      (=
        (Seq_index
          matrix@93@01
          (Ref__multidim_index_2 ($Snap.combine
            $Snap.unit
            ($Snap.combine
              $Snap.unit
              ($Snap.combine
                $Snap.unit
                ($Snap.combine $Snap.unit ($Snap.combine $Snap.unit $Snap.unit))))) M@99@01 N@98@01 i@95@01 j@94@01))
        (Seq_index
          matrix@93@01
          (Ref__multidim_index_2 ($Snap.combine
            $Snap.unit
            ($Snap.combine
              $Snap.unit
              ($Snap.combine
                $Snap.unit
                ($Snap.combine $Snap.unit ($Snap.combine $Snap.unit $Snap.unit))))) M@99@01 N@98@01 i@95@01 j@94@01)))
      (/ (to_real 1) (to_real 4))
      $Perm.No)
    (ite
      (and
        (img@114@01 (Seq_index
          matrix@93@01
          (Ref__multidim_index_2 ($Snap.combine
            $Snap.unit
            ($Snap.combine
              $Snap.unit
              ($Snap.combine
                $Snap.unit
                ($Snap.combine $Snap.unit ($Snap.combine $Snap.unit $Snap.unit))))) M@99@01 N@98@01 i@95@01 j@94@01)))
        (and
          (<=
            0
            (inv@113@01 (Seq_index
              matrix@93@01
              (Ref__multidim_index_2 ($Snap.combine
                $Snap.unit
                ($Snap.combine
                  $Snap.unit
                  ($Snap.combine
                    $Snap.unit
                    ($Snap.combine
                      $Snap.unit
                      ($Snap.combine $Snap.unit $Snap.unit))))) M@99@01 N@98@01 i@95@01 j@94@01))))
          (<
            (inv@113@01 (Seq_index
              matrix@93@01
              (Ref__multidim_index_2 ($Snap.combine
                $Snap.unit
                ($Snap.combine
                  $Snap.unit
                  ($Snap.combine
                    $Snap.unit
                    ($Snap.combine
                      $Snap.unit
                      ($Snap.combine $Snap.unit $Snap.unit))))) M@99@01 N@98@01 i@95@01 j@94@01)))
            P@96@01)))
      $Perm.Write
      $Perm.No)))))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(push) ; 6
; [then-branch: 51 | Lookup(Ref__Integer_value, sm@116@01, matrix@93@01[Ref__multidim_index_2((_, (_, (_, (_, (_, _))))), M@99@01, N@98@01, i@95@01, j@94@01)]) == k@115@01 | live]
; [else-branch: 51 | Lookup(Ref__Integer_value, sm@116@01, matrix@93@01[Ref__multidim_index_2((_, (_, (_, (_, (_, _))))), M@99@01, N@98@01, i@95@01, j@94@01)]) != k@115@01 | live]
(push) ; 7
; [then-branch: 51 | Lookup(Ref__Integer_value, sm@116@01, matrix@93@01[Ref__multidim_index_2((_, (_, (_, (_, (_, _))))), M@99@01, N@98@01, i@95@01, j@94@01)]) == k@115@01]
(assert (=
  ($FVF.lookup_Ref__Integer_value (as sm@116@01  $FVF<Ref__Integer_value>) (Seq_index
    matrix@93@01
    (Ref__multidim_index_2 ($Snap.combine
      $Snap.unit
      ($Snap.combine
        $Snap.unit
        ($Snap.combine
          $Snap.unit
          ($Snap.combine $Snap.unit ($Snap.combine $Snap.unit $Snap.unit))))) M@99@01 N@98@01 i@95@01 j@94@01)))
  k@115@01))
(pop) ; 7
(push) ; 7
; [else-branch: 51 | Lookup(Ref__Integer_value, sm@116@01, matrix@93@01[Ref__multidim_index_2((_, (_, (_, (_, (_, _))))), M@99@01, N@98@01, i@95@01, j@94@01)]) != k@115@01]
(assert (not
  (=
    ($FVF.lookup_Ref__Integer_value (as sm@116@01  $FVF<Ref__Integer_value>) (Seq_index
      matrix@93@01
      (Ref__multidim_index_2 ($Snap.combine
        $Snap.unit
        ($Snap.combine
          $Snap.unit
          ($Snap.combine
            $Snap.unit
            ($Snap.combine $Snap.unit ($Snap.combine $Snap.unit $Snap.unit))))) M@99@01 N@98@01 i@95@01 j@94@01)))
    k@115@01)))
(pop) ; 7
(pop) ; 6
; Joined path conditions
; Joined path conditions
(assert (or
  (not
    (=
      ($FVF.lookup_Ref__Integer_value (as sm@116@01  $FVF<Ref__Integer_value>) (Seq_index
        matrix@93@01
        (Ref__multidim_index_2 ($Snap.combine
          $Snap.unit
          ($Snap.combine
            $Snap.unit
            ($Snap.combine
              $Snap.unit
              ($Snap.combine $Snap.unit ($Snap.combine $Snap.unit $Snap.unit))))) M@99@01 N@98@01 i@95@01 j@94@01)))
      k@115@01))
  (=
    ($FVF.lookup_Ref__Integer_value (as sm@116@01  $FVF<Ref__Integer_value>) (Seq_index
      matrix@93@01
      (Ref__multidim_index_2 ($Snap.combine
        $Snap.unit
        ($Snap.combine
          $Snap.unit
          ($Snap.combine
            $Snap.unit
            ($Snap.combine $Snap.unit ($Snap.combine $Snap.unit $Snap.unit))))) M@99@01 N@98@01 i@95@01 j@94@01)))
    k@115@01)))
(pop) ; 5
(push) ; 5
; [else-branch: 50 | !(0 <= k@115@01 && k@115@01 < P@96@01)]
(assert (not (and (<= 0 k@115@01) (< k@115@01 P@96@01))))
(pop) ; 5
(pop) ; 4
; Joined path conditions
(assert (forall ((r $Ref)) (!
  (=>
    (=
      r
      (Seq_index
        matrix@93@01
        (Ref__multidim_index_2 ($Snap.combine
          $Snap.unit
          ($Snap.combine
            $Snap.unit
            ($Snap.combine
              $Snap.unit
              ($Snap.combine $Snap.unit ($Snap.combine $Snap.unit $Snap.unit))))) M@99@01 N@98@01 i@95@01 j@94@01)))
    (=
      ($FVF.lookup_Ref__Integer_value (as sm@116@01  $FVF<Ref__Integer_value>) r)
      ($FVF.lookup_Ref__Integer_value (as sm@111@01  $FVF<Ref__Integer_value>) r)))
  :pattern (($FVF.lookup_Ref__Integer_value (as sm@116@01  $FVF<Ref__Integer_value>) r))
  :pattern (($FVF.lookup_Ref__Integer_value (as sm@111@01  $FVF<Ref__Integer_value>) r))
  :qid |qp.fvfValDef12|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@114@01 r) (and (<= 0 (inv@113@01 r)) (< (inv@113@01 r) P@96@01)))
    (=
      ($FVF.lookup_Ref__Integer_value (as sm@116@01  $FVF<Ref__Integer_value>) r)
      ($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@110@01)))))))))) r)))
  :pattern (($FVF.lookup_Ref__Integer_value (as sm@116@01  $FVF<Ref__Integer_value>) r))
  :pattern (($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@110@01)))))))))) r))
  :qid |qp.fvfValDef13|)))
(assert (forall ((r $Ref)) (!
  (=
    ($FVF.perm_Ref__Integer_value (as pm@117@01  $FPM) r)
    (+
      (ite
        (=
          r
          (Seq_index
            matrix@93@01
            (Ref__multidim_index_2 ($Snap.combine
              $Snap.unit
              ($Snap.combine
                $Snap.unit
                ($Snap.combine
                  $Snap.unit
                  ($Snap.combine
                    $Snap.unit
                    ($Snap.combine $Snap.unit $Snap.unit))))) M@99@01 N@98@01 i@95@01 j@94@01)))
        (/ (to_real 1) (to_real 4))
        $Perm.No)
      (ite
        (and
          (img@114@01 r)
          (and (<= 0 (inv@113@01 r)) (< (inv@113@01 r) P@96@01)))
        $Perm.Write
        $Perm.No)))
  :pattern (($FVF.perm_Ref__Integer_value (as pm@117@01  $FPM) r))
  :qid |qp.resPrmSumDef14|)))
(assert (=>
  (and (<= 0 k@115@01) (< k@115@01 P@96@01))
  (and
    (<= 0 k@115@01)
    (< k@115@01 P@96@01)
    (or
      (not
        (=
          ($FVF.lookup_Ref__Integer_value (as sm@116@01  $FVF<Ref__Integer_value>) (Seq_index
            matrix@93@01
            (Ref__multidim_index_2 ($Snap.combine
              $Snap.unit
              ($Snap.combine
                $Snap.unit
                ($Snap.combine
                  $Snap.unit
                  ($Snap.combine
                    $Snap.unit
                    ($Snap.combine $Snap.unit $Snap.unit))))) M@99@01 N@98@01 i@95@01 j@94@01)))
          k@115@01))
      (=
        ($FVF.lookup_Ref__Integer_value (as sm@116@01  $FVF<Ref__Integer_value>) (Seq_index
          matrix@93@01
          (Ref__multidim_index_2 ($Snap.combine
            $Snap.unit
            ($Snap.combine
              $Snap.unit
              ($Snap.combine
                $Snap.unit
                ($Snap.combine $Snap.unit ($Snap.combine $Snap.unit $Snap.unit))))) M@99@01 N@98@01 i@95@01 j@94@01)))
        k@115@01)))))
; Joined path conditions
(assert (or
  (not (and (<= 0 k@115@01) (< k@115@01 P@96@01)))
  (and (<= 0 k@115@01) (< k@115@01 P@96@01))))
(pop) ; 3
; Nested auxiliary terms: globals (aux)
(assert (forall ((r $Ref)) (!
  (=>
    (=
      r
      (Seq_index
        matrix@93@01
        (Ref__multidim_index_2 ($Snap.combine
          $Snap.unit
          ($Snap.combine
            $Snap.unit
            ($Snap.combine
              $Snap.unit
              ($Snap.combine $Snap.unit ($Snap.combine $Snap.unit $Snap.unit))))) M@99@01 N@98@01 i@95@01 j@94@01)))
    (=
      ($FVF.lookup_Ref__Integer_value (as sm@116@01  $FVF<Ref__Integer_value>) r)
      ($FVF.lookup_Ref__Integer_value (as sm@111@01  $FVF<Ref__Integer_value>) r)))
  :pattern (($FVF.lookup_Ref__Integer_value (as sm@116@01  $FVF<Ref__Integer_value>) r))
  :pattern (($FVF.lookup_Ref__Integer_value (as sm@111@01  $FVF<Ref__Integer_value>) r))
  :qid |qp.fvfValDef12|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@114@01 r) (and (<= 0 (inv@113@01 r)) (< (inv@113@01 r) P@96@01)))
    (=
      ($FVF.lookup_Ref__Integer_value (as sm@116@01  $FVF<Ref__Integer_value>) r)
      ($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@110@01)))))))))) r)))
  :pattern (($FVF.lookup_Ref__Integer_value (as sm@116@01  $FVF<Ref__Integer_value>) r))
  :pattern (($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@110@01)))))))))) r))
  :qid |qp.fvfValDef13|)))
(assert (forall ((r $Ref)) (!
  (=
    ($FVF.perm_Ref__Integer_value (as pm@117@01  $FPM) r)
    (+
      (ite
        (=
          r
          (Seq_index
            matrix@93@01
            (Ref__multidim_index_2 ($Snap.combine
              $Snap.unit
              ($Snap.combine
                $Snap.unit
                ($Snap.combine
                  $Snap.unit
                  ($Snap.combine
                    $Snap.unit
                    ($Snap.combine $Snap.unit $Snap.unit))))) M@99@01 N@98@01 i@95@01 j@94@01)))
        (/ (to_real 1) (to_real 4))
        $Perm.No)
      (ite
        (and
          (img@114@01 r)
          (and (<= 0 (inv@113@01 r)) (< (inv@113@01 r) P@96@01)))
        $Perm.Write
        $Perm.No)))
  :pattern (($FVF.perm_Ref__Integer_value (as pm@117@01  $FPM) r))
  :qid |qp.resPrmSumDef14|)))
; Nested auxiliary terms: non-globals (aux)
(assert (forall ((k@115@01 Int)) (!
  (and
    (or (<= 0 k@115@01) (not (<= 0 k@115@01)))
    (=>
      (and (<= 0 k@115@01) (< k@115@01 P@96@01))
      (and
        (<= 0 k@115@01)
        (< k@115@01 P@96@01)
        (or
          (not
            (=
              ($FVF.lookup_Ref__Integer_value (as sm@116@01  $FVF<Ref__Integer_value>) (Seq_index
                matrix@93@01
                (Ref__multidim_index_2 ($Snap.combine
                  $Snap.unit
                  ($Snap.combine
                    $Snap.unit
                    ($Snap.combine
                      $Snap.unit
                      ($Snap.combine
                        $Snap.unit
                        ($Snap.combine $Snap.unit $Snap.unit))))) M@99@01 N@98@01 i@95@01 j@94@01)))
              k@115@01))
          (=
            ($FVF.lookup_Ref__Integer_value (as sm@116@01  $FVF<Ref__Integer_value>) (Seq_index
              matrix@93@01
              (Ref__multidim_index_2 ($Snap.combine
                $Snap.unit
                ($Snap.combine
                  $Snap.unit
                  ($Snap.combine
                    $Snap.unit
                    ($Snap.combine
                      $Snap.unit
                      ($Snap.combine $Snap.unit $Snap.unit))))) M@99@01 N@98@01 i@95@01 j@94@01)))
            k@115@01))))
    (or
      (not (and (<= 0 k@115@01) (< k@115@01 P@96@01)))
      (and (<= 0 k@115@01) (< k@115@01 P@96@01))))
  :pattern ((Seq_index hist@97@01 k@115@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/third_party/testHistogram.vpr@137@12@137@160-aux|)))
(assert (forall ((k@115@01 Int)) (!
  (=>
    (and (<= 0 k@115@01) (< k@115@01 P@96@01))
    (=
      ($FVF.lookup_Ref__Integer_value (as sm@116@01  $FVF<Ref__Integer_value>) (Seq_index
        hist@97@01
        k@115@01))
      (ite
        (=
          ($FVF.lookup_Ref__Integer_value (as sm@116@01  $FVF<Ref__Integer_value>) (Seq_index
            matrix@93@01
            (Ref__multidim_index_2 ($Snap.combine
              $Snap.unit
              ($Snap.combine
                $Snap.unit
                ($Snap.combine
                  $Snap.unit
                  ($Snap.combine
                    $Snap.unit
                    ($Snap.combine $Snap.unit $Snap.unit))))) M@99@01 N@98@01 i@95@01 j@94@01)))
          k@115@01)
        1
        0)))
  :pattern ((Seq_index hist@97@01 k@115@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/third_party/testHistogram.vpr@137@12@137@160|)))
(pop) ; 2
(push) ; 2
; [exec]
; var __flatten_1: Int
(declare-const __flatten_1@118@01 Int)
; [exec]
; var __flatten_6: Int
(declare-const __flatten_6@119@01 Int)
; [exec]
; var __flatten_7: Ref
(declare-const __flatten_7@120@01 $Ref)
; [exec]
; var __flatten_8: Ref
(declare-const __flatten_8@121@01 $Ref)
; [exec]
; var __flatten_9: Int
(declare-const __flatten_9@122@01 Int)
; [exec]
; var __flatten_10: Ref
(declare-const __flatten_10@123@01 $Ref)
; [exec]
; var __flatten_11: Ref
(declare-const __flatten_11@124@01 $Ref)
; [exec]
; __flatten_6 := Ref__multidim_index_2(M, N, i, j)
; [eval] Ref__multidim_index_2(M, N, i, j)
(push) ; 3
; [eval] 0 <= i0
; [eval] i0 < N0
; [eval] 0 <= N0
; [eval] 0 <= i1
; [eval] i1 < N1
; [eval] 0 <= N1
(pop) ; 3
; Joined path conditions
(declare-const __flatten_6@125@01 Int)
(assert (=
  __flatten_6@125@01
  (Ref__multidim_index_2 ($Snap.combine
    $Snap.unit
    ($Snap.combine
      $Snap.unit
      ($Snap.combine
        $Snap.unit
        ($Snap.combine $Snap.unit ($Snap.combine $Snap.unit $Snap.unit))))) M@99@01 N@98@01 i@95@01 j@94@01)))
; [exec]
; __flatten_1 := __flatten_6
; [exec]
; __flatten_8 := matrix[__flatten_1]
; [eval] matrix[__flatten_1]
(push) ; 3
(assert (not (>= __flatten_6@125@01 0)))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(push) ; 3
(assert (not (< __flatten_6@125@01 (Seq_length matrix@93@01))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(declare-const __flatten_8@126@01 $Ref)
(assert (= __flatten_8@126@01 (Seq_index matrix@93@01 __flatten_6@125@01)))
; [exec]
; __flatten_7 := hist[__flatten_8.Ref__Integer_value]
; [eval] hist[__flatten_8.Ref__Integer_value]
(assert (and
  (forall ((r $Ref)) (!
    (=>
      (and (img@105@01 r) (and (<= 0 (inv@104@01 r)) (< (inv@104@01 r) P@96@01)))
      (=
        ($FVF.lookup_Ref__Integer_value (as sm@108@01  $FVF<Ref__Integer_value>) r)
        ($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@100@01))))))))))))) r)))
    :pattern (($FVF.lookup_Ref__Integer_value (as sm@108@01  $FVF<Ref__Integer_value>) r))
    :pattern (($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@100@01))))))))))))) r))
    :qid |qp.fvfValDef9|))
  (forall ((r $Ref)) (!
    (=>
      (=
        r
        (Seq_index
          matrix@93@01
          (Ref__multidim_index_2 ($Snap.combine
            $Snap.unit
            ($Snap.combine
              $Snap.unit
              ($Snap.combine
                $Snap.unit
                ($Snap.combine $Snap.unit ($Snap.combine $Snap.unit $Snap.unit))))) M@99@01 N@98@01 i@95@01 j@94@01)))
      (=
        ($FVF.lookup_Ref__Integer_value (as sm@108@01  $FVF<Ref__Integer_value>) r)
        ($FVF.lookup_Ref__Integer_value (as sm@107@01  $FVF<Ref__Integer_value>) r)))
    :pattern (($FVF.lookup_Ref__Integer_value (as sm@108@01  $FVF<Ref__Integer_value>) r))
    :pattern (($FVF.lookup_Ref__Integer_value (as sm@107@01  $FVF<Ref__Integer_value>) r))
    :qid |qp.fvfValDef10|))))
(push) ; 3
(assert (not (<
  $Perm.No
  (+
    (ite
      (and
        (img@105@01 __flatten_8@126@01)
        (and
          (<= 0 (inv@104@01 __flatten_8@126@01))
          (< (inv@104@01 __flatten_8@126@01) P@96@01)))
      $Perm.Write
      $Perm.No)
    (ite
      (=
        __flatten_8@126@01
        (Seq_index
          matrix@93@01
          (Ref__multidim_index_2 ($Snap.combine
            $Snap.unit
            ($Snap.combine
              $Snap.unit
              ($Snap.combine
                $Snap.unit
                ($Snap.combine $Snap.unit ($Snap.combine $Snap.unit $Snap.unit))))) M@99@01 N@98@01 i@95@01 j@94@01)))
      (/ (to_real 1) (to_real 4))
      $Perm.No)))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(push) ; 3
(assert (not (>=
  ($FVF.lookup_Ref__Integer_value (as sm@108@01  $FVF<Ref__Integer_value>) __flatten_8@126@01)
  0)))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(push) ; 3
(assert (not (<
  ($FVF.lookup_Ref__Integer_value (as sm@108@01  $FVF<Ref__Integer_value>) __flatten_8@126@01)
  (Seq_length hist@97@01))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(declare-const __flatten_7@127@01 $Ref)
(assert (=
  __flatten_7@127@01
  (Seq_index
    hist@97@01
    ($FVF.lookup_Ref__Integer_value (as sm@108@01  $FVF<Ref__Integer_value>) __flatten_8@126@01))))
; [exec]
; __flatten_11 := matrix[__flatten_1]
; [eval] matrix[__flatten_1]
(push) ; 3
(assert (not (>= __flatten_6@125@01 0)))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(push) ; 3
(assert (not (< __flatten_6@125@01 (Seq_length matrix@93@01))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(declare-const __flatten_11@128@01 $Ref)
(assert (= __flatten_11@128@01 (Seq_index matrix@93@01 __flatten_6@125@01)))
; [exec]
; __flatten_10 := hist[__flatten_11.Ref__Integer_value]
; [eval] hist[__flatten_11.Ref__Integer_value]
(assert (and
  (forall ((r $Ref)) (!
    (=>
      (and (img@105@01 r) (and (<= 0 (inv@104@01 r)) (< (inv@104@01 r) P@96@01)))
      (=
        ($FVF.lookup_Ref__Integer_value (as sm@108@01  $FVF<Ref__Integer_value>) r)
        ($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@100@01))))))))))))) r)))
    :pattern (($FVF.lookup_Ref__Integer_value (as sm@108@01  $FVF<Ref__Integer_value>) r))
    :pattern (($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@100@01))))))))))))) r))
    :qid |qp.fvfValDef9|))
  (forall ((r $Ref)) (!
    (=>
      (=
        r
        (Seq_index
          matrix@93@01
          (Ref__multidim_index_2 ($Snap.combine
            $Snap.unit
            ($Snap.combine
              $Snap.unit
              ($Snap.combine
                $Snap.unit
                ($Snap.combine $Snap.unit ($Snap.combine $Snap.unit $Snap.unit))))) M@99@01 N@98@01 i@95@01 j@94@01)))
      (=
        ($FVF.lookup_Ref__Integer_value (as sm@108@01  $FVF<Ref__Integer_value>) r)
        ($FVF.lookup_Ref__Integer_value (as sm@107@01  $FVF<Ref__Integer_value>) r)))
    :pattern (($FVF.lookup_Ref__Integer_value (as sm@108@01  $FVF<Ref__Integer_value>) r))
    :pattern (($FVF.lookup_Ref__Integer_value (as sm@107@01  $FVF<Ref__Integer_value>) r))
    :qid |qp.fvfValDef10|))))
(push) ; 3
(assert (not (<
  $Perm.No
  (+
    (ite
      (and
        (img@105@01 __flatten_11@128@01)
        (and
          (<= 0 (inv@104@01 __flatten_11@128@01))
          (< (inv@104@01 __flatten_11@128@01) P@96@01)))
      $Perm.Write
      $Perm.No)
    (ite
      (=
        __flatten_11@128@01
        (Seq_index
          matrix@93@01
          (Ref__multidim_index_2 ($Snap.combine
            $Snap.unit
            ($Snap.combine
              $Snap.unit
              ($Snap.combine
                $Snap.unit
                ($Snap.combine $Snap.unit ($Snap.combine $Snap.unit $Snap.unit))))) M@99@01 N@98@01 i@95@01 j@94@01)))
      (/ (to_real 1) (to_real 4))
      $Perm.No)))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(push) ; 3
(assert (not (>=
  ($FVF.lookup_Ref__Integer_value (as sm@108@01  $FVF<Ref__Integer_value>) __flatten_11@128@01)
  0)))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(push) ; 3
(assert (not (<
  ($FVF.lookup_Ref__Integer_value (as sm@108@01  $FVF<Ref__Integer_value>) __flatten_11@128@01)
  (Seq_length hist@97@01))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(declare-const __flatten_10@129@01 $Ref)
(assert (=
  __flatten_10@129@01
  (Seq_index
    hist@97@01
    ($FVF.lookup_Ref__Integer_value (as sm@108@01  $FVF<Ref__Integer_value>) __flatten_11@128@01))))
; [exec]
; __flatten_9 := __flatten_10.Ref__Integer_value + 1
; [eval] __flatten_10.Ref__Integer_value + 1
(assert (and
  (forall ((r $Ref)) (!
    (=>
      (and (img@105@01 r) (and (<= 0 (inv@104@01 r)) (< (inv@104@01 r) P@96@01)))
      (=
        ($FVF.lookup_Ref__Integer_value (as sm@108@01  $FVF<Ref__Integer_value>) r)
        ($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@100@01))))))))))))) r)))
    :pattern (($FVF.lookup_Ref__Integer_value (as sm@108@01  $FVF<Ref__Integer_value>) r))
    :pattern (($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@100@01))))))))))))) r))
    :qid |qp.fvfValDef9|))
  (forall ((r $Ref)) (!
    (=>
      (=
        r
        (Seq_index
          matrix@93@01
          (Ref__multidim_index_2 ($Snap.combine
            $Snap.unit
            ($Snap.combine
              $Snap.unit
              ($Snap.combine
                $Snap.unit
                ($Snap.combine $Snap.unit ($Snap.combine $Snap.unit $Snap.unit))))) M@99@01 N@98@01 i@95@01 j@94@01)))
      (=
        ($FVF.lookup_Ref__Integer_value (as sm@108@01  $FVF<Ref__Integer_value>) r)
        ($FVF.lookup_Ref__Integer_value (as sm@107@01  $FVF<Ref__Integer_value>) r)))
    :pattern (($FVF.lookup_Ref__Integer_value (as sm@108@01  $FVF<Ref__Integer_value>) r))
    :pattern (($FVF.lookup_Ref__Integer_value (as sm@107@01  $FVF<Ref__Integer_value>) r))
    :qid |qp.fvfValDef10|))))
(push) ; 3
(assert (not (<
  $Perm.No
  (+
    (ite
      (and
        (img@105@01 __flatten_10@129@01)
        (and
          (<= 0 (inv@104@01 __flatten_10@129@01))
          (< (inv@104@01 __flatten_10@129@01) P@96@01)))
      $Perm.Write
      $Perm.No)
    (ite
      (=
        __flatten_10@129@01
        (Seq_index
          matrix@93@01
          (Ref__multidim_index_2 ($Snap.combine
            $Snap.unit
            ($Snap.combine
              $Snap.unit
              ($Snap.combine
                $Snap.unit
                ($Snap.combine $Snap.unit ($Snap.combine $Snap.unit $Snap.unit))))) M@99@01 N@98@01 i@95@01 j@94@01)))
      (/ (to_real 1) (to_real 4))
      $Perm.No)))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(declare-const __flatten_9@130@01 Int)
(assert (=
  __flatten_9@130@01
  (+
    ($FVF.lookup_Ref__Integer_value (as sm@108@01  $FVF<Ref__Integer_value>) __flatten_10@129@01)
    1)))
; [exec]
; __flatten_7.Ref__Integer_value := __flatten_9
(push) ; 3
(set-option :timeout 10)
(assert (not (=
  (Seq_index
    matrix@93@01
    (Ref__multidim_index_2 ($Snap.combine
      $Snap.unit
      ($Snap.combine
        $Snap.unit
        ($Snap.combine
          $Snap.unit
          ($Snap.combine $Snap.unit ($Snap.combine $Snap.unit $Snap.unit))))) M@99@01 N@98@01 i@95@01 j@94@01))
  __flatten_7@127@01)))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Precomputing data for removing quantified permissions
(define-fun pTaken@131@01 ((r $Ref)) $Perm
  (ite
    (= r __flatten_7@127@01)
    ($Perm.min
      (ite
        (and
          (img@105@01 r)
          (and (<= 0 (inv@104@01 r)) (< (inv@104@01 r) P@96@01)))
        $Perm.Write
        $Perm.No)
      $Perm.Write)
    $Perm.No))
(define-fun pTaken@132@01 ((r $Ref)) $Perm
  (ite
    (= r __flatten_7@127@01)
    ($Perm.min
      (ite
        (=
          r
          (Seq_index
            matrix@93@01
            (Ref__multidim_index_2 ($Snap.combine
              $Snap.unit
              ($Snap.combine
                $Snap.unit
                ($Snap.combine
                  $Snap.unit
                  ($Snap.combine
                    $Snap.unit
                    ($Snap.combine $Snap.unit $Snap.unit))))) M@99@01 N@98@01 i@95@01 j@94@01)))
        (/ (to_real 1) (to_real 4))
        $Perm.No)
      (- $Perm.Write (pTaken@131@01 r)))
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
          (img@105@01 r)
          (and (<= 0 (inv@104@01 r)) (< (inv@104@01 r) P@96@01)))
        $Perm.Write
        $Perm.No)
      (pTaken@131@01 r))
    $Perm.No)
  
  :qid |quant-u-9998|))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (forall ((r $Ref)) (!
  (= (pTaken@131@01 r) $Perm.No)
  
  :qid |quant-u-9999|))))
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
  (=> (= r __flatten_7@127@01) (= (- $Perm.Write (pTaken@131@01 r)) $Perm.No))
  
  :qid |quant-u-10000|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Final check if taken enough permissions
; Done removing quantified permissions
(declare-const sm@133@01 $FVF<Ref__Integer_value>)
; Definitional axioms for singleton-FVF's value
(assert (=
  ($FVF.lookup_Ref__Integer_value (as sm@133@01  $FVF<Ref__Integer_value>) __flatten_7@127@01)
  __flatten_9@130@01))
; [eval] M > 0
; [eval] N > 0
; [eval] P > 0
; [eval] 0 <= i
; [eval] i < M
; [eval] 0 <= j
; [eval] j < N
; [eval] matrix[Ref__multidim_index_2(M, N, i, j)]
; [eval] Ref__multidim_index_2(M, N, i, j)
(set-option :timeout 0)
(push) ; 3
; [eval] 0 <= i0
; [eval] i0 < N0
; [eval] 0 <= N0
; [eval] 0 <= i1
; [eval] i1 < N1
; [eval] 0 <= N1
(pop) ; 3
; Joined path conditions
(push) ; 3
(assert (not (>=
  (Ref__multidim_index_2 ($Snap.combine
    $Snap.unit
    ($Snap.combine
      $Snap.unit
      ($Snap.combine
        $Snap.unit
        ($Snap.combine $Snap.unit ($Snap.combine $Snap.unit $Snap.unit))))) M@99@01 N@98@01 i@95@01 j@94@01)
  0)))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Precomputing data for removing quantified permissions
(define-fun pTaken@134@01 ((r $Ref)) $Perm
  (ite
    (=
      r
      (Seq_index
        matrix@93@01
        (Ref__multidim_index_2 ($Snap.combine
          $Snap.unit
          ($Snap.combine
            $Snap.unit
            ($Snap.combine
              $Snap.unit
              ($Snap.combine $Snap.unit ($Snap.combine $Snap.unit $Snap.unit))))) M@99@01 N@98@01 i@95@01 j@94@01)))
    ($Perm.min
      (ite
        (=
          r
          (Seq_index
            matrix@93@01
            (Ref__multidim_index_2 ($Snap.combine
              $Snap.unit
              ($Snap.combine
                $Snap.unit
                ($Snap.combine
                  $Snap.unit
                  ($Snap.combine
                    $Snap.unit
                    ($Snap.combine $Snap.unit $Snap.unit))))) M@99@01 N@98@01 i@95@01 j@94@01)))
        (/ (to_real 1) (to_real 4))
        $Perm.No)
      (/ (to_real 1) (to_real 4)))
    $Perm.No))
(define-fun pTaken@135@01 ((r $Ref)) $Perm
  (ite
    (=
      r
      (Seq_index
        matrix@93@01
        (Ref__multidim_index_2 ($Snap.combine
          $Snap.unit
          ($Snap.combine
            $Snap.unit
            ($Snap.combine
              $Snap.unit
              ($Snap.combine $Snap.unit ($Snap.combine $Snap.unit $Snap.unit))))) M@99@01 N@98@01 i@95@01 j@94@01)))
    ($Perm.min
      (ite (= r __flatten_7@127@01) $Perm.Write $Perm.No)
      (- (/ (to_real 1) (to_real 4)) (pTaken@134@01 r)))
    $Perm.No))
(define-fun pTaken@136@01 ((r $Ref)) $Perm
  (ite
    (=
      r
      (Seq_index
        matrix@93@01
        (Ref__multidim_index_2 ($Snap.combine
          $Snap.unit
          ($Snap.combine
            $Snap.unit
            ($Snap.combine
              $Snap.unit
              ($Snap.combine $Snap.unit ($Snap.combine $Snap.unit $Snap.unit))))) M@99@01 N@98@01 i@95@01 j@94@01)))
    ($Perm.min
      (ite
        (and
          (img@105@01 r)
          (and (<= 0 (inv@104@01 r)) (< (inv@104@01 r) P@96@01)))
        (- $Perm.Write (pTaken@131@01 r))
        $Perm.No)
      (- (- (/ (to_real 1) (to_real 4)) (pTaken@134@01 r)) (pTaken@135@01 r)))
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
(assert (not (=
  (-
    (ite
      (=
        (Seq_index
          matrix@93@01
          (Ref__multidim_index_2 ($Snap.combine
            $Snap.unit
            ($Snap.combine
              $Snap.unit
              ($Snap.combine
                $Snap.unit
                ($Snap.combine $Snap.unit ($Snap.combine $Snap.unit $Snap.unit))))) M@99@01 N@98@01 i@95@01 j@94@01))
        (Seq_index
          matrix@93@01
          (Ref__multidim_index_2 ($Snap.combine
            $Snap.unit
            ($Snap.combine
              $Snap.unit
              ($Snap.combine
                $Snap.unit
                ($Snap.combine $Snap.unit ($Snap.combine $Snap.unit $Snap.unit))))) M@99@01 N@98@01 i@95@01 j@94@01)))
      (/ (to_real 1) (to_real 4))
      $Perm.No)
    (pTaken@134@01 (Seq_index
      matrix@93@01
      (Ref__multidim_index_2 ($Snap.combine
        $Snap.unit
        ($Snap.combine
          $Snap.unit
          ($Snap.combine
            $Snap.unit
            ($Snap.combine $Snap.unit ($Snap.combine $Snap.unit $Snap.unit))))) M@99@01 N@98@01 i@95@01 j@94@01))))
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
    (=
      r
      (Seq_index
        matrix@93@01
        (Ref__multidim_index_2 ($Snap.combine
          $Snap.unit
          ($Snap.combine
            $Snap.unit
            ($Snap.combine
              $Snap.unit
              ($Snap.combine $Snap.unit ($Snap.combine $Snap.unit $Snap.unit))))) M@99@01 N@98@01 i@95@01 j@94@01)))
    (= (- (/ (to_real 1) (to_real 4)) (pTaken@134@01 r)) $Perm.No))
  
  :qid |quant-u-10003|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Final check if taken enough permissions
; Done removing quantified permissions
(declare-const k@137@01 Int)
(set-option :timeout 0)
(push) ; 3
; [eval] 0 <= k && k < P
; [eval] 0 <= k
(push) ; 4
; [then-branch: 52 | !(0 <= k@137@01) | live]
; [else-branch: 52 | 0 <= k@137@01 | live]
(push) ; 5
; [then-branch: 52 | !(0 <= k@137@01)]
(assert (not (<= 0 k@137@01)))
(pop) ; 5
(push) ; 5
; [else-branch: 52 | 0 <= k@137@01]
(assert (<= 0 k@137@01))
; [eval] k < P
(pop) ; 5
(pop) ; 4
; Joined path conditions
; Joined path conditions
(assert (or (<= 0 k@137@01) (not (<= 0 k@137@01))))
(assert (and (<= 0 k@137@01) (< k@137@01 P@96@01)))
; [eval] hist[k]
(push) ; 4
(assert (not (>= k@137@01 0)))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(push) ; 4
(assert (not (< k@137@01 (Seq_length hist@97@01))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(pop) ; 3
(declare-fun inv@138@01 ($Ref) Int)
(declare-fun img@139@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
(assert (forall ((k@137@01 Int)) (!
  (=>
    (and (<= 0 k@137@01) (< k@137@01 P@96@01))
    (or (<= 0 k@137@01) (not (<= 0 k@137@01))))
  :pattern ((Seq_index hist@97@01 k@137@01))
  :qid |Ref__Integer_value-aux|)))
; Check receiver injectivity
(push) ; 3
(assert (not (forall ((k1@137@01 Int) (k2@137@01 Int)) (!
  (=>
    (and
      (and (<= 0 k1@137@01) (< k1@137@01 P@96@01))
      (and (<= 0 k2@137@01) (< k2@137@01 P@96@01))
      (= (Seq_index hist@97@01 k1@137@01) (Seq_index hist@97@01 k2@137@01)))
    (= k1@137@01 k2@137@01))
  
  :qid |Ref__Integer_value-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((k@137@01 Int)) (!
  (=>
    (and (<= 0 k@137@01) (< k@137@01 P@96@01))
    (and
      (= (inv@138@01 (Seq_index hist@97@01 k@137@01)) k@137@01)
      (img@139@01 (Seq_index hist@97@01 k@137@01))))
  :pattern ((Seq_index hist@97@01 k@137@01))
  :qid |Ref__Integer_value-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@139@01 r) (and (<= 0 (inv@138@01 r)) (< (inv@138@01 r) P@96@01)))
    (= (Seq_index hist@97@01 (inv@138@01 r)) r))
  :pattern ((inv@138@01 r))
  :qid |Ref__Integer_value-fctOfInv|)))
; Precomputing data for removing quantified permissions
(define-fun pTaken@140@01 ((r $Ref)) $Perm
  (ite
    (and
      (and (<= 0 (inv@138@01 r)) (< (inv@138@01 r) P@96@01))
      (img@139@01 r)
      (= r (Seq_index hist@97@01 (inv@138@01 r))))
    ($Perm.min
      (ite
        (and
          (img@105@01 r)
          (and (<= 0 (inv@104@01 r)) (< (inv@104@01 r) P@96@01)))
        (- $Perm.Write (pTaken@131@01 r))
        $Perm.No)
      $Perm.Write)
    $Perm.No))
(define-fun pTaken@141@01 ((r $Ref)) $Perm
  (ite
    (and
      (and (<= 0 (inv@138@01 r)) (< (inv@138@01 r) P@96@01))
      (img@139@01 r)
      (= r (Seq_index hist@97@01 (inv@138@01 r))))
    ($Perm.min
      (ite (= r __flatten_7@127@01) $Perm.Write $Perm.No)
      (- $Perm.Write (pTaken@140@01 r)))
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
          (img@105@01 r)
          (and (<= 0 (inv@104@01 r)) (< (inv@104@01 r) P@96@01)))
        (- $Perm.Write (pTaken@131@01 r))
        $Perm.No)
      (pTaken@140@01 r))
    $Perm.No)
  
  :qid |quant-u-10006|))))
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
      (and (<= 0 (inv@138@01 r)) (< (inv@138@01 r) P@96@01))
      (img@139@01 r)
      (= r (Seq_index hist@97@01 (inv@138@01 r))))
    (= (- $Perm.Write (pTaken@140@01 r)) $Perm.No))
  
  :qid |quant-u-10007|))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Chunk depleted?
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 500)
(assert (not (= (- $Perm.Write (pTaken@141@01 __flatten_7@127@01)) $Perm.No)))
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
      (and (<= 0 (inv@138@01 r)) (< (inv@138@01 r) P@96@01))
      (img@139@01 r)
      (= r (Seq_index hist@97@01 (inv@138@01 r))))
    (= (- (- $Perm.Write (pTaken@140@01 r)) (pTaken@141@01 r)) $Perm.No))
  
  :qid |quant-u-10009|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Final check if taken enough permissions
; Done removing quantified permissions
; [eval] (forall k: Int :: { hist[k] } 0 <= k && k < P ==> hist[k].Ref__Integer_value == (matrix[Ref__multidim_index_2(M, N, i, j)].Ref__Integer_value == k ? 1 : 0))
(declare-const k@142@01 Int)
(set-option :timeout 0)
(push) ; 3
; [eval] 0 <= k && k < P ==> hist[k].Ref__Integer_value == (matrix[Ref__multidim_index_2(M, N, i, j)].Ref__Integer_value == k ? 1 : 0)
; [eval] 0 <= k && k < P
; [eval] 0 <= k
(push) ; 4
; [then-branch: 53 | !(0 <= k@142@01) | live]
; [else-branch: 53 | 0 <= k@142@01 | live]
(push) ; 5
; [then-branch: 53 | !(0 <= k@142@01)]
(assert (not (<= 0 k@142@01)))
(pop) ; 5
(push) ; 5
; [else-branch: 53 | 0 <= k@142@01]
(assert (<= 0 k@142@01))
; [eval] k < P
(pop) ; 5
(pop) ; 4
; Joined path conditions
; Joined path conditions
(assert (or (<= 0 k@142@01) (not (<= 0 k@142@01))))
(push) ; 4
; [then-branch: 54 | 0 <= k@142@01 && k@142@01 < P@96@01 | live]
; [else-branch: 54 | !(0 <= k@142@01 && k@142@01 < P@96@01) | live]
(push) ; 5
; [then-branch: 54 | 0 <= k@142@01 && k@142@01 < P@96@01]
(assert (and (<= 0 k@142@01) (< k@142@01 P@96@01)))
; [eval] hist[k].Ref__Integer_value == (matrix[Ref__multidim_index_2(M, N, i, j)].Ref__Integer_value == k ? 1 : 0)
; [eval] hist[k]
(push) ; 6
(assert (not (>= k@142@01 0)))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(push) ; 6
(assert (not (< k@142@01 (Seq_length hist@97@01))))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(declare-const sm@143@01 $FVF<Ref__Integer_value>)
; Definitional axioms for snapshot map values
(assert (forall ((r $Ref)) (!
  (=>
    (= r __flatten_7@127@01)
    (=
      ($FVF.lookup_Ref__Integer_value (as sm@143@01  $FVF<Ref__Integer_value>) r)
      ($FVF.lookup_Ref__Integer_value (as sm@133@01  $FVF<Ref__Integer_value>) r)))
  :pattern (($FVF.lookup_Ref__Integer_value (as sm@143@01  $FVF<Ref__Integer_value>) r))
  :pattern (($FVF.lookup_Ref__Integer_value (as sm@133@01  $FVF<Ref__Integer_value>) r))
  :qid |qp.fvfValDef15|)))
(assert (forall ((r $Ref)) (!
  (=>
    (=
      r
      (Seq_index
        matrix@93@01
        (Ref__multidim_index_2 ($Snap.combine
          $Snap.unit
          ($Snap.combine
            $Snap.unit
            ($Snap.combine
              $Snap.unit
              ($Snap.combine $Snap.unit ($Snap.combine $Snap.unit $Snap.unit))))) M@99@01 N@98@01 i@95@01 j@94@01)))
    (=
      ($FVF.lookup_Ref__Integer_value (as sm@143@01  $FVF<Ref__Integer_value>) r)
      ($FVF.lookup_Ref__Integer_value (as sm@107@01  $FVF<Ref__Integer_value>) r)))
  :pattern (($FVF.lookup_Ref__Integer_value (as sm@143@01  $FVF<Ref__Integer_value>) r))
  :pattern (($FVF.lookup_Ref__Integer_value (as sm@107@01  $FVF<Ref__Integer_value>) r))
  :qid |qp.fvfValDef16|)))
(assert (forall ((r $Ref)) (!
  (=>
    (ite
      (and (img@105@01 r) (and (<= 0 (inv@104@01 r)) (< (inv@104@01 r) P@96@01)))
      (< $Perm.No (- $Perm.Write (pTaken@131@01 r)))
      false)
    (=
      ($FVF.lookup_Ref__Integer_value (as sm@143@01  $FVF<Ref__Integer_value>) r)
      ($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@100@01))))))))))))) r)))
  :pattern (($FVF.lookup_Ref__Integer_value (as sm@143@01  $FVF<Ref__Integer_value>) r))
  :pattern (($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@100@01))))))))))))) r))
  :qid |qp.fvfValDef17|)))
(declare-const pm@144@01 $FPM)
(assert (forall ((r $Ref)) (!
  (=
    ($FVF.perm_Ref__Integer_value (as pm@144@01  $FPM) r)
    (+
      (+
        (ite (= r __flatten_7@127@01) $Perm.Write $Perm.No)
        (ite
          (=
            r
            (Seq_index
              matrix@93@01
              (Ref__multidim_index_2 ($Snap.combine
                $Snap.unit
                ($Snap.combine
                  $Snap.unit
                  ($Snap.combine
                    $Snap.unit
                    ($Snap.combine
                      $Snap.unit
                      ($Snap.combine $Snap.unit $Snap.unit))))) M@99@01 N@98@01 i@95@01 j@94@01)))
          (/ (to_real 1) (to_real 4))
          $Perm.No))
      (ite
        (and
          (img@105@01 r)
          (and (<= 0 (inv@104@01 r)) (< (inv@104@01 r) P@96@01)))
        (- $Perm.Write (pTaken@131@01 r))
        $Perm.No)))
  :pattern (($FVF.perm_Ref__Integer_value (as pm@144@01  $FPM) r))
  :qid |qp.resPrmSumDef18|)))
(push) ; 6
(assert (not (<
  $Perm.No
  ($FVF.perm_Ref__Integer_value (as pm@144@01  $FPM) (Seq_index
    hist@97@01
    k@142@01)))))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
; [eval] (matrix[Ref__multidim_index_2(M, N, i, j)].Ref__Integer_value == k ? 1 : 0)
; [eval] matrix[Ref__multidim_index_2(M, N, i, j)].Ref__Integer_value == k
; [eval] matrix[Ref__multidim_index_2(M, N, i, j)]
; [eval] Ref__multidim_index_2(M, N, i, j)
(push) ; 6
; [eval] 0 <= i0
; [eval] i0 < N0
; [eval] 0 <= N0
; [eval] 0 <= i1
; [eval] i1 < N1
; [eval] 0 <= N1
(pop) ; 6
; Joined path conditions
(push) ; 6
(assert (not (>=
  (Ref__multidim_index_2 ($Snap.combine
    $Snap.unit
    ($Snap.combine
      $Snap.unit
      ($Snap.combine
        $Snap.unit
        ($Snap.combine $Snap.unit ($Snap.combine $Snap.unit $Snap.unit))))) M@99@01 N@98@01 i@95@01 j@94@01)
  0)))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(assert (and
  (forall ((r $Ref)) (!
    (=>
      (= r __flatten_7@127@01)
      (=
        ($FVF.lookup_Ref__Integer_value (as sm@143@01  $FVF<Ref__Integer_value>) r)
        ($FVF.lookup_Ref__Integer_value (as sm@133@01  $FVF<Ref__Integer_value>) r)))
    :pattern (($FVF.lookup_Ref__Integer_value (as sm@143@01  $FVF<Ref__Integer_value>) r))
    :pattern (($FVF.lookup_Ref__Integer_value (as sm@133@01  $FVF<Ref__Integer_value>) r))
    :qid |qp.fvfValDef15|))
  (forall ((r $Ref)) (!
    (=>
      (=
        r
        (Seq_index
          matrix@93@01
          (Ref__multidim_index_2 ($Snap.combine
            $Snap.unit
            ($Snap.combine
              $Snap.unit
              ($Snap.combine
                $Snap.unit
                ($Snap.combine $Snap.unit ($Snap.combine $Snap.unit $Snap.unit))))) M@99@01 N@98@01 i@95@01 j@94@01)))
      (=
        ($FVF.lookup_Ref__Integer_value (as sm@143@01  $FVF<Ref__Integer_value>) r)
        ($FVF.lookup_Ref__Integer_value (as sm@107@01  $FVF<Ref__Integer_value>) r)))
    :pattern (($FVF.lookup_Ref__Integer_value (as sm@143@01  $FVF<Ref__Integer_value>) r))
    :pattern (($FVF.lookup_Ref__Integer_value (as sm@107@01  $FVF<Ref__Integer_value>) r))
    :qid |qp.fvfValDef16|))
  (forall ((r $Ref)) (!
    (=>
      (ite
        (and
          (img@105@01 r)
          (and (<= 0 (inv@104@01 r)) (< (inv@104@01 r) P@96@01)))
        (< $Perm.No (- $Perm.Write (pTaken@131@01 r)))
        false)
      (=
        ($FVF.lookup_Ref__Integer_value (as sm@143@01  $FVF<Ref__Integer_value>) r)
        ($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@100@01))))))))))))) r)))
    :pattern (($FVF.lookup_Ref__Integer_value (as sm@143@01  $FVF<Ref__Integer_value>) r))
    :pattern (($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@100@01))))))))))))) r))
    :qid |qp.fvfValDef17|))))
(push) ; 6
(assert (not (<
  $Perm.No
  (+
    (+
      (ite
        (=
          (Seq_index
            matrix@93@01
            (Ref__multidim_index_2 ($Snap.combine
              $Snap.unit
              ($Snap.combine
                $Snap.unit
                ($Snap.combine
                  $Snap.unit
                  ($Snap.combine
                    $Snap.unit
                    ($Snap.combine $Snap.unit $Snap.unit))))) M@99@01 N@98@01 i@95@01 j@94@01))
          __flatten_7@127@01)
        $Perm.Write
        $Perm.No)
      (ite
        (=
          (Seq_index
            matrix@93@01
            (Ref__multidim_index_2 ($Snap.combine
              $Snap.unit
              ($Snap.combine
                $Snap.unit
                ($Snap.combine
                  $Snap.unit
                  ($Snap.combine
                    $Snap.unit
                    ($Snap.combine $Snap.unit $Snap.unit))))) M@99@01 N@98@01 i@95@01 j@94@01))
          (Seq_index
            matrix@93@01
            (Ref__multidim_index_2 ($Snap.combine
              $Snap.unit
              ($Snap.combine
                $Snap.unit
                ($Snap.combine
                  $Snap.unit
                  ($Snap.combine
                    $Snap.unit
                    ($Snap.combine $Snap.unit $Snap.unit))))) M@99@01 N@98@01 i@95@01 j@94@01)))
        (/ (to_real 1) (to_real 4))
        $Perm.No))
    (ite
      (and
        (img@105@01 (Seq_index
          matrix@93@01
          (Ref__multidim_index_2 ($Snap.combine
            $Snap.unit
            ($Snap.combine
              $Snap.unit
              ($Snap.combine
                $Snap.unit
                ($Snap.combine $Snap.unit ($Snap.combine $Snap.unit $Snap.unit))))) M@99@01 N@98@01 i@95@01 j@94@01)))
        (and
          (<=
            0
            (inv@104@01 (Seq_index
              matrix@93@01
              (Ref__multidim_index_2 ($Snap.combine
                $Snap.unit
                ($Snap.combine
                  $Snap.unit
                  ($Snap.combine
                    $Snap.unit
                    ($Snap.combine
                      $Snap.unit
                      ($Snap.combine $Snap.unit $Snap.unit))))) M@99@01 N@98@01 i@95@01 j@94@01))))
          (<
            (inv@104@01 (Seq_index
              matrix@93@01
              (Ref__multidim_index_2 ($Snap.combine
                $Snap.unit
                ($Snap.combine
                  $Snap.unit
                  ($Snap.combine
                    $Snap.unit
                    ($Snap.combine
                      $Snap.unit
                      ($Snap.combine $Snap.unit $Snap.unit))))) M@99@01 N@98@01 i@95@01 j@94@01)))
            P@96@01)))
      (-
        $Perm.Write
        (pTaken@131@01 (Seq_index
          matrix@93@01
          (Ref__multidim_index_2 ($Snap.combine
            $Snap.unit
            ($Snap.combine
              $Snap.unit
              ($Snap.combine
                $Snap.unit
                ($Snap.combine $Snap.unit ($Snap.combine $Snap.unit $Snap.unit))))) M@99@01 N@98@01 i@95@01 j@94@01))))
      $Perm.No)))))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(push) ; 6
; [then-branch: 55 | Lookup(Ref__Integer_value, sm@143@01, matrix@93@01[Ref__multidim_index_2((_, (_, (_, (_, (_, _))))), M@99@01, N@98@01, i@95@01, j@94@01)]) == k@142@01 | live]
; [else-branch: 55 | Lookup(Ref__Integer_value, sm@143@01, matrix@93@01[Ref__multidim_index_2((_, (_, (_, (_, (_, _))))), M@99@01, N@98@01, i@95@01, j@94@01)]) != k@142@01 | live]
(push) ; 7
; [then-branch: 55 | Lookup(Ref__Integer_value, sm@143@01, matrix@93@01[Ref__multidim_index_2((_, (_, (_, (_, (_, _))))), M@99@01, N@98@01, i@95@01, j@94@01)]) == k@142@01]
(assert (=
  ($FVF.lookup_Ref__Integer_value (as sm@143@01  $FVF<Ref__Integer_value>) (Seq_index
    matrix@93@01
    (Ref__multidim_index_2 ($Snap.combine
      $Snap.unit
      ($Snap.combine
        $Snap.unit
        ($Snap.combine
          $Snap.unit
          ($Snap.combine $Snap.unit ($Snap.combine $Snap.unit $Snap.unit))))) M@99@01 N@98@01 i@95@01 j@94@01)))
  k@142@01))
(pop) ; 7
(push) ; 7
; [else-branch: 55 | Lookup(Ref__Integer_value, sm@143@01, matrix@93@01[Ref__multidim_index_2((_, (_, (_, (_, (_, _))))), M@99@01, N@98@01, i@95@01, j@94@01)]) != k@142@01]
(assert (not
  (=
    ($FVF.lookup_Ref__Integer_value (as sm@143@01  $FVF<Ref__Integer_value>) (Seq_index
      matrix@93@01
      (Ref__multidim_index_2 ($Snap.combine
        $Snap.unit
        ($Snap.combine
          $Snap.unit
          ($Snap.combine
            $Snap.unit
            ($Snap.combine $Snap.unit ($Snap.combine $Snap.unit $Snap.unit))))) M@99@01 N@98@01 i@95@01 j@94@01)))
    k@142@01)))
(pop) ; 7
(pop) ; 6
; Joined path conditions
; Joined path conditions
(assert (or
  (not
    (=
      ($FVF.lookup_Ref__Integer_value (as sm@143@01  $FVF<Ref__Integer_value>) (Seq_index
        matrix@93@01
        (Ref__multidim_index_2 ($Snap.combine
          $Snap.unit
          ($Snap.combine
            $Snap.unit
            ($Snap.combine
              $Snap.unit
              ($Snap.combine $Snap.unit ($Snap.combine $Snap.unit $Snap.unit))))) M@99@01 N@98@01 i@95@01 j@94@01)))
      k@142@01))
  (=
    ($FVF.lookup_Ref__Integer_value (as sm@143@01  $FVF<Ref__Integer_value>) (Seq_index
      matrix@93@01
      (Ref__multidim_index_2 ($Snap.combine
        $Snap.unit
        ($Snap.combine
          $Snap.unit
          ($Snap.combine
            $Snap.unit
            ($Snap.combine $Snap.unit ($Snap.combine $Snap.unit $Snap.unit))))) M@99@01 N@98@01 i@95@01 j@94@01)))
    k@142@01)))
(pop) ; 5
(push) ; 5
; [else-branch: 54 | !(0 <= k@142@01 && k@142@01 < P@96@01)]
(assert (not (and (<= 0 k@142@01) (< k@142@01 P@96@01))))
(pop) ; 5
(pop) ; 4
; Joined path conditions
(assert (forall ((r $Ref)) (!
  (=>
    (= r __flatten_7@127@01)
    (=
      ($FVF.lookup_Ref__Integer_value (as sm@143@01  $FVF<Ref__Integer_value>) r)
      ($FVF.lookup_Ref__Integer_value (as sm@133@01  $FVF<Ref__Integer_value>) r)))
  :pattern (($FVF.lookup_Ref__Integer_value (as sm@143@01  $FVF<Ref__Integer_value>) r))
  :pattern (($FVF.lookup_Ref__Integer_value (as sm@133@01  $FVF<Ref__Integer_value>) r))
  :qid |qp.fvfValDef15|)))
(assert (forall ((r $Ref)) (!
  (=>
    (=
      r
      (Seq_index
        matrix@93@01
        (Ref__multidim_index_2 ($Snap.combine
          $Snap.unit
          ($Snap.combine
            $Snap.unit
            ($Snap.combine
              $Snap.unit
              ($Snap.combine $Snap.unit ($Snap.combine $Snap.unit $Snap.unit))))) M@99@01 N@98@01 i@95@01 j@94@01)))
    (=
      ($FVF.lookup_Ref__Integer_value (as sm@143@01  $FVF<Ref__Integer_value>) r)
      ($FVF.lookup_Ref__Integer_value (as sm@107@01  $FVF<Ref__Integer_value>) r)))
  :pattern (($FVF.lookup_Ref__Integer_value (as sm@143@01  $FVF<Ref__Integer_value>) r))
  :pattern (($FVF.lookup_Ref__Integer_value (as sm@107@01  $FVF<Ref__Integer_value>) r))
  :qid |qp.fvfValDef16|)))
(assert (forall ((r $Ref)) (!
  (=>
    (ite
      (and (img@105@01 r) (and (<= 0 (inv@104@01 r)) (< (inv@104@01 r) P@96@01)))
      (< $Perm.No (- $Perm.Write (pTaken@131@01 r)))
      false)
    (=
      ($FVF.lookup_Ref__Integer_value (as sm@143@01  $FVF<Ref__Integer_value>) r)
      ($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@100@01))))))))))))) r)))
  :pattern (($FVF.lookup_Ref__Integer_value (as sm@143@01  $FVF<Ref__Integer_value>) r))
  :pattern (($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@100@01))))))))))))) r))
  :qid |qp.fvfValDef17|)))
(assert (forall ((r $Ref)) (!
  (=
    ($FVF.perm_Ref__Integer_value (as pm@144@01  $FPM) r)
    (+
      (+
        (ite (= r __flatten_7@127@01) $Perm.Write $Perm.No)
        (ite
          (=
            r
            (Seq_index
              matrix@93@01
              (Ref__multidim_index_2 ($Snap.combine
                $Snap.unit
                ($Snap.combine
                  $Snap.unit
                  ($Snap.combine
                    $Snap.unit
                    ($Snap.combine
                      $Snap.unit
                      ($Snap.combine $Snap.unit $Snap.unit))))) M@99@01 N@98@01 i@95@01 j@94@01)))
          (/ (to_real 1) (to_real 4))
          $Perm.No))
      (ite
        (and
          (img@105@01 r)
          (and (<= 0 (inv@104@01 r)) (< (inv@104@01 r) P@96@01)))
        (- $Perm.Write (pTaken@131@01 r))
        $Perm.No)))
  :pattern (($FVF.perm_Ref__Integer_value (as pm@144@01  $FPM) r))
  :qid |qp.resPrmSumDef18|)))
(assert (=>
  (and (<= 0 k@142@01) (< k@142@01 P@96@01))
  (and
    (<= 0 k@142@01)
    (< k@142@01 P@96@01)
    (or
      (not
        (=
          ($FVF.lookup_Ref__Integer_value (as sm@143@01  $FVF<Ref__Integer_value>) (Seq_index
            matrix@93@01
            (Ref__multidim_index_2 ($Snap.combine
              $Snap.unit
              ($Snap.combine
                $Snap.unit
                ($Snap.combine
                  $Snap.unit
                  ($Snap.combine
                    $Snap.unit
                    ($Snap.combine $Snap.unit $Snap.unit))))) M@99@01 N@98@01 i@95@01 j@94@01)))
          k@142@01))
      (=
        ($FVF.lookup_Ref__Integer_value (as sm@143@01  $FVF<Ref__Integer_value>) (Seq_index
          matrix@93@01
          (Ref__multidim_index_2 ($Snap.combine
            $Snap.unit
            ($Snap.combine
              $Snap.unit
              ($Snap.combine
                $Snap.unit
                ($Snap.combine $Snap.unit ($Snap.combine $Snap.unit $Snap.unit))))) M@99@01 N@98@01 i@95@01 j@94@01)))
        k@142@01)))))
; Joined path conditions
(assert (or
  (not (and (<= 0 k@142@01) (< k@142@01 P@96@01)))
  (and (<= 0 k@142@01) (< k@142@01 P@96@01))))
(pop) ; 3
; Nested auxiliary terms: globals (aux)
(assert (forall ((r $Ref)) (!
  (=>
    (= r __flatten_7@127@01)
    (=
      ($FVF.lookup_Ref__Integer_value (as sm@143@01  $FVF<Ref__Integer_value>) r)
      ($FVF.lookup_Ref__Integer_value (as sm@133@01  $FVF<Ref__Integer_value>) r)))
  :pattern (($FVF.lookup_Ref__Integer_value (as sm@143@01  $FVF<Ref__Integer_value>) r))
  :pattern (($FVF.lookup_Ref__Integer_value (as sm@133@01  $FVF<Ref__Integer_value>) r))
  :qid |qp.fvfValDef15|)))
(assert (forall ((r $Ref)) (!
  (=>
    (=
      r
      (Seq_index
        matrix@93@01
        (Ref__multidim_index_2 ($Snap.combine
          $Snap.unit
          ($Snap.combine
            $Snap.unit
            ($Snap.combine
              $Snap.unit
              ($Snap.combine $Snap.unit ($Snap.combine $Snap.unit $Snap.unit))))) M@99@01 N@98@01 i@95@01 j@94@01)))
    (=
      ($FVF.lookup_Ref__Integer_value (as sm@143@01  $FVF<Ref__Integer_value>) r)
      ($FVF.lookup_Ref__Integer_value (as sm@107@01  $FVF<Ref__Integer_value>) r)))
  :pattern (($FVF.lookup_Ref__Integer_value (as sm@143@01  $FVF<Ref__Integer_value>) r))
  :pattern (($FVF.lookup_Ref__Integer_value (as sm@107@01  $FVF<Ref__Integer_value>) r))
  :qid |qp.fvfValDef16|)))
(assert (forall ((r $Ref)) (!
  (=>
    (ite
      (and (img@105@01 r) (and (<= 0 (inv@104@01 r)) (< (inv@104@01 r) P@96@01)))
      (< $Perm.No (- $Perm.Write (pTaken@131@01 r)))
      false)
    (=
      ($FVF.lookup_Ref__Integer_value (as sm@143@01  $FVF<Ref__Integer_value>) r)
      ($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@100@01))))))))))))) r)))
  :pattern (($FVF.lookup_Ref__Integer_value (as sm@143@01  $FVF<Ref__Integer_value>) r))
  :pattern (($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@100@01))))))))))))) r))
  :qid |qp.fvfValDef17|)))
(assert (forall ((r $Ref)) (!
  (=
    ($FVF.perm_Ref__Integer_value (as pm@144@01  $FPM) r)
    (+
      (+
        (ite (= r __flatten_7@127@01) $Perm.Write $Perm.No)
        (ite
          (=
            r
            (Seq_index
              matrix@93@01
              (Ref__multidim_index_2 ($Snap.combine
                $Snap.unit
                ($Snap.combine
                  $Snap.unit
                  ($Snap.combine
                    $Snap.unit
                    ($Snap.combine
                      $Snap.unit
                      ($Snap.combine $Snap.unit $Snap.unit))))) M@99@01 N@98@01 i@95@01 j@94@01)))
          (/ (to_real 1) (to_real 4))
          $Perm.No))
      (ite
        (and
          (img@105@01 r)
          (and (<= 0 (inv@104@01 r)) (< (inv@104@01 r) P@96@01)))
        (- $Perm.Write (pTaken@131@01 r))
        $Perm.No)))
  :pattern (($FVF.perm_Ref__Integer_value (as pm@144@01  $FPM) r))
  :qid |qp.resPrmSumDef18|)))
; Nested auxiliary terms: non-globals (aux)
(assert (forall ((k@142@01 Int)) (!
  (and
    (or (<= 0 k@142@01) (not (<= 0 k@142@01)))
    (=>
      (and (<= 0 k@142@01) (< k@142@01 P@96@01))
      (and
        (<= 0 k@142@01)
        (< k@142@01 P@96@01)
        (or
          (not
            (=
              ($FVF.lookup_Ref__Integer_value (as sm@143@01  $FVF<Ref__Integer_value>) (Seq_index
                matrix@93@01
                (Ref__multidim_index_2 ($Snap.combine
                  $Snap.unit
                  ($Snap.combine
                    $Snap.unit
                    ($Snap.combine
                      $Snap.unit
                      ($Snap.combine
                        $Snap.unit
                        ($Snap.combine $Snap.unit $Snap.unit))))) M@99@01 N@98@01 i@95@01 j@94@01)))
              k@142@01))
          (=
            ($FVF.lookup_Ref__Integer_value (as sm@143@01  $FVF<Ref__Integer_value>) (Seq_index
              matrix@93@01
              (Ref__multidim_index_2 ($Snap.combine
                $Snap.unit
                ($Snap.combine
                  $Snap.unit
                  ($Snap.combine
                    $Snap.unit
                    ($Snap.combine
                      $Snap.unit
                      ($Snap.combine $Snap.unit $Snap.unit))))) M@99@01 N@98@01 i@95@01 j@94@01)))
            k@142@01))))
    (or
      (not (and (<= 0 k@142@01) (< k@142@01 P@96@01)))
      (and (<= 0 k@142@01) (< k@142@01 P@96@01))))
  :pattern ((Seq_index hist@97@01 k@142@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/third_party/testHistogram.vpr@137@12@137@160-aux|)))
(assert (forall ((k@142@01 Int)) (!
  (=>
    (and (<= 0 k@142@01) (< k@142@01 P@96@01))
    (Ref__multidim_index_2%precondition ($Snap.combine
      $Snap.unit
      ($Snap.combine
        $Snap.unit
        ($Snap.combine
          $Snap.unit
          ($Snap.combine $Snap.unit ($Snap.combine $Snap.unit $Snap.unit))))) M@99@01 N@98@01 i@95@01 j@94@01))
  :pattern ((Seq_index hist@97@01 k@142@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/third_party/testHistogram.vpr@137@12@137@160_precondition|)))
(push) ; 3
(assert (not (forall ((k@142@01 Int)) (!
  (=>
    (and
      (=>
        (and (<= 0 k@142@01) (< k@142@01 P@96@01))
        (Ref__multidim_index_2%precondition ($Snap.combine
          $Snap.unit
          ($Snap.combine
            $Snap.unit
            ($Snap.combine
              $Snap.unit
              ($Snap.combine $Snap.unit ($Snap.combine $Snap.unit $Snap.unit))))) M@99@01 N@98@01 i@95@01 j@94@01))
      (and (<= 0 k@142@01) (< k@142@01 P@96@01)))
    (=
      ($FVF.lookup_Ref__Integer_value (as sm@143@01  $FVF<Ref__Integer_value>) (Seq_index
        hist@97@01
        k@142@01))
      (ite
        (=
          ($FVF.lookup_Ref__Integer_value (as sm@143@01  $FVF<Ref__Integer_value>) (Seq_index
            matrix@93@01
            (Ref__multidim_index_2 ($Snap.combine
              $Snap.unit
              ($Snap.combine
                $Snap.unit
                ($Snap.combine
                  $Snap.unit
                  ($Snap.combine
                    $Snap.unit
                    ($Snap.combine $Snap.unit $Snap.unit))))) M@99@01 N@98@01 i@95@01 j@94@01)))
          k@142@01)
        1
        0)))
  :pattern ((Seq_index hist@97@01 k@142@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/third_party/testHistogram.vpr@137@12@137@160|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(assert (forall ((k@142@01 Int)) (!
  (=>
    (and (<= 0 k@142@01) (< k@142@01 P@96@01))
    (=
      ($FVF.lookup_Ref__Integer_value (as sm@143@01  $FVF<Ref__Integer_value>) (Seq_index
        hist@97@01
        k@142@01))
      (ite
        (=
          ($FVF.lookup_Ref__Integer_value (as sm@143@01  $FVF<Ref__Integer_value>) (Seq_index
            matrix@93@01
            (Ref__multidim_index_2 ($Snap.combine
              $Snap.unit
              ($Snap.combine
                $Snap.unit
                ($Snap.combine
                  $Snap.unit
                  ($Snap.combine
                    $Snap.unit
                    ($Snap.combine $Snap.unit $Snap.unit))))) M@99@01 N@98@01 i@95@01 j@94@01)))
          k@142@01)
        1
        0)))
  :pattern ((Seq_index hist@97@01 k@142@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/third_party/testHistogram.vpr@137@12@137@160|)))
(pop) ; 2
(pop) ; 1
; ---------- Ref__histogram ----------
(declare-const diz@145@01 $Ref)
(declare-const current_thread_id@146@01 Int)
(declare-const M@147@01 Int)
(declare-const N@148@01 Int)
(declare-const matrix@149@01 Seq<$Ref>)
(declare-const P@150@01 Int)
(declare-const hist@151@01 Seq<$Ref>)
(declare-const diz@152@01 $Ref)
(declare-const current_thread_id@153@01 Int)
(declare-const M@154@01 Int)
(declare-const N@155@01 Int)
(declare-const matrix@156@01 Seq<$Ref>)
(declare-const P@157@01 Int)
(declare-const hist@158@01 Seq<$Ref>)
(push) ; 1
(declare-const $t@159@01 $Snap)
(assert (= $t@159@01 ($Snap.combine ($Snap.first $t@159@01) ($Snap.second $t@159@01))))
(assert (= ($Snap.first $t@159@01) $Snap.unit))
; [eval] diz != null
(assert (not (= diz@152@01 $Ref.null)))
(assert (=
  ($Snap.second $t@159@01)
  ($Snap.combine
    ($Snap.first ($Snap.second $t@159@01))
    ($Snap.second ($Snap.second $t@159@01)))))
(assert (= ($Snap.first ($Snap.second $t@159@01)) $Snap.unit))
; [eval] current_thread_id >= 0
(assert (>= current_thread_id@153@01 0))
(assert (=
  ($Snap.second ($Snap.second $t@159@01))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second $t@159@01)))
    ($Snap.second ($Snap.second ($Snap.second $t@159@01))))))
(assert (= ($Snap.first ($Snap.second ($Snap.second $t@159@01))) $Snap.unit))
; [eval] M > 0
(assert (> M@154@01 0))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second $t@159@01)))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@159@01))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@159@01)))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@159@01))))
  $Snap.unit))
; [eval] N > 0
(assert (> N@155@01 0))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@159@01))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@159@01)))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@159@01))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@159@01)))))
  $Snap.unit))
; [eval] P > 0
(assert (> P@157@01 0))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@159@01)))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@159@01))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@159@01)))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@159@01))))))
  $Snap.unit))
; [eval] M * N <= |matrix|
; [eval] M * N
; [eval] |matrix|
(assert (<= (* M@154@01 N@155@01) (Seq_length matrix@156@01)))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@159@01))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@159@01)))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@159@01))))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@159@01)))))))
  $Snap.unit))
; [eval] (forall j: Int, k: Int :: { matrix[j], matrix[k] } 0 <= j && (j < M * N && (0 <= k && (k < M * N && j != k))) ==> matrix[j] != matrix[k])
(declare-const j@160@01 Int)
(declare-const k@161@01 Int)
(push) ; 2
; [eval] 0 <= j && (j < M * N && (0 <= k && (k < M * N && j != k))) ==> matrix[j] != matrix[k]
; [eval] 0 <= j && (j < M * N && (0 <= k && (k < M * N && j != k)))
; [eval] 0 <= j
(push) ; 3
; [then-branch: 56 | !(0 <= j@160@01) | live]
; [else-branch: 56 | 0 <= j@160@01 | live]
(push) ; 4
; [then-branch: 56 | !(0 <= j@160@01)]
(assert (not (<= 0 j@160@01)))
(pop) ; 4
(push) ; 4
; [else-branch: 56 | 0 <= j@160@01]
(assert (<= 0 j@160@01))
; [eval] j < M * N
; [eval] M * N
(push) ; 5
; [then-branch: 57 | !(j@160@01 < M@154@01 * N@155@01) | live]
; [else-branch: 57 | j@160@01 < M@154@01 * N@155@01 | live]
(push) ; 6
; [then-branch: 57 | !(j@160@01 < M@154@01 * N@155@01)]
(assert (not (< j@160@01 (* M@154@01 N@155@01))))
(pop) ; 6
(push) ; 6
; [else-branch: 57 | j@160@01 < M@154@01 * N@155@01]
(assert (< j@160@01 (* M@154@01 N@155@01)))
; [eval] 0 <= k
(push) ; 7
; [then-branch: 58 | !(0 <= k@161@01) | live]
; [else-branch: 58 | 0 <= k@161@01 | live]
(push) ; 8
; [then-branch: 58 | !(0 <= k@161@01)]
(assert (not (<= 0 k@161@01)))
(pop) ; 8
(push) ; 8
; [else-branch: 58 | 0 <= k@161@01]
(assert (<= 0 k@161@01))
; [eval] k < M * N
; [eval] M * N
(push) ; 9
; [then-branch: 59 | !(k@161@01 < M@154@01 * N@155@01) | live]
; [else-branch: 59 | k@161@01 < M@154@01 * N@155@01 | live]
(push) ; 10
; [then-branch: 59 | !(k@161@01 < M@154@01 * N@155@01)]
(assert (not (< k@161@01 (* M@154@01 N@155@01))))
(pop) ; 10
(push) ; 10
; [else-branch: 59 | k@161@01 < M@154@01 * N@155@01]
(assert (< k@161@01 (* M@154@01 N@155@01)))
; [eval] j != k
(pop) ; 10
(pop) ; 9
; Joined path conditions
; Joined path conditions
(assert (or (< k@161@01 (* M@154@01 N@155@01)) (not (< k@161@01 (* M@154@01 N@155@01)))))
(pop) ; 8
(pop) ; 7
; Joined path conditions
; Joined path conditions
(assert (=>
  (<= 0 k@161@01)
  (and
    (<= 0 k@161@01)
    (or
      (< k@161@01 (* M@154@01 N@155@01))
      (not (< k@161@01 (* M@154@01 N@155@01)))))))
(assert (or (<= 0 k@161@01) (not (<= 0 k@161@01))))
(pop) ; 6
(pop) ; 5
; Joined path conditions
; Joined path conditions
(assert (=>
  (< j@160@01 (* M@154@01 N@155@01))
  (and
    (< j@160@01 (* M@154@01 N@155@01))
    (=>
      (<= 0 k@161@01)
      (and
        (<= 0 k@161@01)
        (or
          (< k@161@01 (* M@154@01 N@155@01))
          (not (< k@161@01 (* M@154@01 N@155@01))))))
    (or (<= 0 k@161@01) (not (<= 0 k@161@01))))))
(assert (or (< j@160@01 (* M@154@01 N@155@01)) (not (< j@160@01 (* M@154@01 N@155@01)))))
(pop) ; 4
(pop) ; 3
; Joined path conditions
; Joined path conditions
(assert (=>
  (<= 0 j@160@01)
  (and
    (<= 0 j@160@01)
    (=>
      (< j@160@01 (* M@154@01 N@155@01))
      (and
        (< j@160@01 (* M@154@01 N@155@01))
        (=>
          (<= 0 k@161@01)
          (and
            (<= 0 k@161@01)
            (or
              (< k@161@01 (* M@154@01 N@155@01))
              (not (< k@161@01 (* M@154@01 N@155@01))))))
        (or (<= 0 k@161@01) (not (<= 0 k@161@01)))))
    (or
      (< j@160@01 (* M@154@01 N@155@01))
      (not (< j@160@01 (* M@154@01 N@155@01)))))))
(assert (or (<= 0 j@160@01) (not (<= 0 j@160@01))))
(push) ; 3
; [then-branch: 60 | 0 <= j@160@01 && j@160@01 < M@154@01 * N@155@01 && 0 <= k@161@01 && k@161@01 < M@154@01 * N@155@01 && j@160@01 != k@161@01 | live]
; [else-branch: 60 | !(0 <= j@160@01 && j@160@01 < M@154@01 * N@155@01 && 0 <= k@161@01 && k@161@01 < M@154@01 * N@155@01 && j@160@01 != k@161@01) | live]
(push) ; 4
; [then-branch: 60 | 0 <= j@160@01 && j@160@01 < M@154@01 * N@155@01 && 0 <= k@161@01 && k@161@01 < M@154@01 * N@155@01 && j@160@01 != k@161@01]
(assert (and
  (<= 0 j@160@01)
  (and
    (< j@160@01 (* M@154@01 N@155@01))
    (and
      (<= 0 k@161@01)
      (and (< k@161@01 (* M@154@01 N@155@01)) (not (= j@160@01 k@161@01)))))))
; [eval] matrix[j] != matrix[k]
; [eval] matrix[j]
(push) ; 5
(assert (not (>= j@160@01 0)))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(push) ; 5
(assert (not (< j@160@01 (Seq_length matrix@156@01))))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
; [eval] matrix[k]
(push) ; 5
(assert (not (>= k@161@01 0)))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(push) ; 5
(assert (not (< k@161@01 (Seq_length matrix@156@01))))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(pop) ; 4
(push) ; 4
; [else-branch: 60 | !(0 <= j@160@01 && j@160@01 < M@154@01 * N@155@01 && 0 <= k@161@01 && k@161@01 < M@154@01 * N@155@01 && j@160@01 != k@161@01)]
(assert (not
  (and
    (<= 0 j@160@01)
    (and
      (< j@160@01 (* M@154@01 N@155@01))
      (and
        (<= 0 k@161@01)
        (and (< k@161@01 (* M@154@01 N@155@01)) (not (= j@160@01 k@161@01))))))))
(pop) ; 4
(pop) ; 3
; Joined path conditions
(assert (=>
  (and
    (<= 0 j@160@01)
    (and
      (< j@160@01 (* M@154@01 N@155@01))
      (and
        (<= 0 k@161@01)
        (and (< k@161@01 (* M@154@01 N@155@01)) (not (= j@160@01 k@161@01))))))
  (and
    (<= 0 j@160@01)
    (< j@160@01 (* M@154@01 N@155@01))
    (<= 0 k@161@01)
    (< k@161@01 (* M@154@01 N@155@01))
    (not (= j@160@01 k@161@01)))))
; Joined path conditions
(assert (or
  (not
    (and
      (<= 0 j@160@01)
      (and
        (< j@160@01 (* M@154@01 N@155@01))
        (and
          (<= 0 k@161@01)
          (and (< k@161@01 (* M@154@01 N@155@01)) (not (= j@160@01 k@161@01)))))))
  (and
    (<= 0 j@160@01)
    (and
      (< j@160@01 (* M@154@01 N@155@01))
      (and
        (<= 0 k@161@01)
        (and (< k@161@01 (* M@154@01 N@155@01)) (not (= j@160@01 k@161@01))))))))
(pop) ; 2
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall ((j@160@01 Int) (k@161@01 Int)) (!
  (and
    (=>
      (<= 0 j@160@01)
      (and
        (<= 0 j@160@01)
        (=>
          (< j@160@01 (* M@154@01 N@155@01))
          (and
            (< j@160@01 (* M@154@01 N@155@01))
            (=>
              (<= 0 k@161@01)
              (and
                (<= 0 k@161@01)
                (or
                  (< k@161@01 (* M@154@01 N@155@01))
                  (not (< k@161@01 (* M@154@01 N@155@01))))))
            (or (<= 0 k@161@01) (not (<= 0 k@161@01)))))
        (or
          (< j@160@01 (* M@154@01 N@155@01))
          (not (< j@160@01 (* M@154@01 N@155@01))))))
    (or (<= 0 j@160@01) (not (<= 0 j@160@01)))
    (=>
      (and
        (<= 0 j@160@01)
        (and
          (< j@160@01 (* M@154@01 N@155@01))
          (and
            (<= 0 k@161@01)
            (and (< k@161@01 (* M@154@01 N@155@01)) (not (= j@160@01 k@161@01))))))
      (and
        (<= 0 j@160@01)
        (< j@160@01 (* M@154@01 N@155@01))
        (<= 0 k@161@01)
        (< k@161@01 (* M@154@01 N@155@01))
        (not (= j@160@01 k@161@01))))
    (or
      (not
        (and
          (<= 0 j@160@01)
          (and
            (< j@160@01 (* M@154@01 N@155@01))
            (and
              (<= 0 k@161@01)
              (and
                (< k@161@01 (* M@154@01 N@155@01))
                (not (= j@160@01 k@161@01)))))))
      (and
        (<= 0 j@160@01)
        (and
          (< j@160@01 (* M@154@01 N@155@01))
          (and
            (<= 0 k@161@01)
            (and (< k@161@01 (* M@154@01 N@155@01)) (not (= j@160@01 k@161@01))))))))
  :pattern ((Seq_index matrix@156@01 j@160@01) (Seq_index matrix@156@01 k@161@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/third_party/testHistogram.vpr@161@12@161@112-aux|)))
(assert (forall ((j@160@01 Int) (k@161@01 Int)) (!
  (=>
    (and
      (<= 0 j@160@01)
      (and
        (< j@160@01 (* M@154@01 N@155@01))
        (and
          (<= 0 k@161@01)
          (and (< k@161@01 (* M@154@01 N@155@01)) (not (= j@160@01 k@161@01))))))
    (not
      (= (Seq_index matrix@156@01 j@160@01) (Seq_index matrix@156@01 k@161@01))))
  :pattern ((Seq_index matrix@156@01 j@160@01) (Seq_index matrix@156@01 k@161@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/third_party/testHistogram.vpr@161@12@161@112|)))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@159@01)))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@159@01))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@159@01)))))))))))
(declare-const j1@162@01 Int)
(push) ; 2
; [eval] 0 <= j1 && j1 < M * N
; [eval] 0 <= j1
(push) ; 3
; [then-branch: 61 | !(0 <= j1@162@01) | live]
; [else-branch: 61 | 0 <= j1@162@01 | live]
(push) ; 4
; [then-branch: 61 | !(0 <= j1@162@01)]
(assert (not (<= 0 j1@162@01)))
(pop) ; 4
(push) ; 4
; [else-branch: 61 | 0 <= j1@162@01]
(assert (<= 0 j1@162@01))
; [eval] j1 < M * N
; [eval] M * N
(pop) ; 4
(pop) ; 3
; Joined path conditions
; Joined path conditions
(assert (or (<= 0 j1@162@01) (not (<= 0 j1@162@01))))
(assert (and (<= 0 j1@162@01) (< j1@162@01 (* M@154@01 N@155@01))))
; [eval] matrix[j1]
(push) ; 3
(assert (not (>= j1@162@01 0)))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(push) ; 3
(assert (not (< j1@162@01 (Seq_length matrix@156@01))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(pop) ; 2
(declare-fun inv@163@01 ($Ref) Int)
(declare-fun img@164@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
(assert (forall ((j1@162@01 Int)) (!
  (=>
    (and (<= 0 j1@162@01) (< j1@162@01 (* M@154@01 N@155@01)))
    (or (<= 0 j1@162@01) (not (<= 0 j1@162@01))))
  :pattern ((Seq_index matrix@156@01 j1@162@01))
  :qid |Ref__Integer_value-aux|)))
; Check receiver injectivity
(push) ; 2
(assert (not (forall ((j11@162@01 Int) (j12@162@01 Int)) (!
  (=>
    (and
      (and (<= 0 j11@162@01) (< j11@162@01 (* M@154@01 N@155@01)))
      (and (<= 0 j12@162@01) (< j12@162@01 (* M@154@01 N@155@01)))
      (=
        (Seq_index matrix@156@01 j11@162@01)
        (Seq_index matrix@156@01 j12@162@01)))
    (= j11@162@01 j12@162@01))
  
  :qid |Ref__Integer_value-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 2
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((j1@162@01 Int)) (!
  (=>
    (and (<= 0 j1@162@01) (< j1@162@01 (* M@154@01 N@155@01)))
    (and
      (= (inv@163@01 (Seq_index matrix@156@01 j1@162@01)) j1@162@01)
      (img@164@01 (Seq_index matrix@156@01 j1@162@01))))
  :pattern ((Seq_index matrix@156@01 j1@162@01))
  :qid |quant-u-10011|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@164@01 r)
      (and (<= 0 (inv@163@01 r)) (< (inv@163@01 r) (* M@154@01 N@155@01))))
    (= (Seq_index matrix@156@01 (inv@163@01 r)) r))
  :pattern ((inv@163@01 r))
  :qid |Ref__Integer_value-fctOfInv|)))
; Permissions are non-negative
; Field permissions are at most one
; Permission implies non-null receiver
(assert (forall ((j1@162@01 Int)) (!
  (=>
    (and (<= 0 j1@162@01) (< j1@162@01 (* M@154@01 N@155@01)))
    (not (= (Seq_index matrix@156@01 j1@162@01) $Ref.null)))
  :pattern ((Seq_index matrix@156@01 j1@162@01))
  :qid |Ref__Integer_value-permImpliesNonNull|)))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@159@01))))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@159@01)))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@159@01))))))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@159@01)))))))))
  $Snap.unit))
; [eval] (forall i1: Int, j1: Int :: { matrix[Ref__multidim_index_2(M, N, i1, j1)] } 0 <= i1 && (i1 < M && (0 <= j1 && j1 < N)) ==> 0 <= matrix[Ref__multidim_index_2(M, N, i1, j1)].Ref__Integer_value && matrix[Ref__multidim_index_2(M, N, i1, j1)].Ref__Integer_value < P)
(declare-const i1@165@01 Int)
(declare-const j1@166@01 Int)
(push) ; 2
; [eval] 0 <= i1 && (i1 < M && (0 <= j1 && j1 < N)) ==> 0 <= matrix[Ref__multidim_index_2(M, N, i1, j1)].Ref__Integer_value && matrix[Ref__multidim_index_2(M, N, i1, j1)].Ref__Integer_value < P
; [eval] 0 <= i1 && (i1 < M && (0 <= j1 && j1 < N))
; [eval] 0 <= i1
(push) ; 3
; [then-branch: 62 | !(0 <= i1@165@01) | live]
; [else-branch: 62 | 0 <= i1@165@01 | live]
(push) ; 4
; [then-branch: 62 | !(0 <= i1@165@01)]
(assert (not (<= 0 i1@165@01)))
(pop) ; 4
(push) ; 4
; [else-branch: 62 | 0 <= i1@165@01]
(assert (<= 0 i1@165@01))
; [eval] i1 < M
(push) ; 5
; [then-branch: 63 | !(i1@165@01 < M@154@01) | live]
; [else-branch: 63 | i1@165@01 < M@154@01 | live]
(push) ; 6
; [then-branch: 63 | !(i1@165@01 < M@154@01)]
(assert (not (< i1@165@01 M@154@01)))
(pop) ; 6
(push) ; 6
; [else-branch: 63 | i1@165@01 < M@154@01]
(assert (< i1@165@01 M@154@01))
; [eval] 0 <= j1
(push) ; 7
; [then-branch: 64 | !(0 <= j1@166@01) | live]
; [else-branch: 64 | 0 <= j1@166@01 | live]
(push) ; 8
; [then-branch: 64 | !(0 <= j1@166@01)]
(assert (not (<= 0 j1@166@01)))
(pop) ; 8
(push) ; 8
; [else-branch: 64 | 0 <= j1@166@01]
(assert (<= 0 j1@166@01))
; [eval] j1 < N
(pop) ; 8
(pop) ; 7
; Joined path conditions
; Joined path conditions
(assert (or (<= 0 j1@166@01) (not (<= 0 j1@166@01))))
(pop) ; 6
(pop) ; 5
; Joined path conditions
; Joined path conditions
(assert (=>
  (< i1@165@01 M@154@01)
  (and (< i1@165@01 M@154@01) (or (<= 0 j1@166@01) (not (<= 0 j1@166@01))))))
(assert (or (< i1@165@01 M@154@01) (not (< i1@165@01 M@154@01))))
(pop) ; 4
(pop) ; 3
; Joined path conditions
; Joined path conditions
(assert (=>
  (<= 0 i1@165@01)
  (and
    (<= 0 i1@165@01)
    (=>
      (< i1@165@01 M@154@01)
      (and (< i1@165@01 M@154@01) (or (<= 0 j1@166@01) (not (<= 0 j1@166@01)))))
    (or (< i1@165@01 M@154@01) (not (< i1@165@01 M@154@01))))))
(assert (or (<= 0 i1@165@01) (not (<= 0 i1@165@01))))
(push) ; 3
; [then-branch: 65 | 0 <= i1@165@01 && i1@165@01 < M@154@01 && 0 <= j1@166@01 && j1@166@01 < N@155@01 | live]
; [else-branch: 65 | !(0 <= i1@165@01 && i1@165@01 < M@154@01 && 0 <= j1@166@01 && j1@166@01 < N@155@01) | live]
(push) ; 4
; [then-branch: 65 | 0 <= i1@165@01 && i1@165@01 < M@154@01 && 0 <= j1@166@01 && j1@166@01 < N@155@01]
(assert (and
  (<= 0 i1@165@01)
  (and (< i1@165@01 M@154@01) (and (<= 0 j1@166@01) (< j1@166@01 N@155@01)))))
; [eval] 0 <= matrix[Ref__multidim_index_2(M, N, i1, j1)].Ref__Integer_value && matrix[Ref__multidim_index_2(M, N, i1, j1)].Ref__Integer_value < P
; [eval] 0 <= matrix[Ref__multidim_index_2(M, N, i1, j1)].Ref__Integer_value
; [eval] matrix[Ref__multidim_index_2(M, N, i1, j1)]
; [eval] Ref__multidim_index_2(M, N, i1, j1)
(push) ; 5
; [eval] 0 <= i0
; [eval] i0 < N0
; [eval] 0 <= N0
(push) ; 6
(assert (not (<= 0 M@154@01)))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(assert (<= 0 M@154@01))
; [eval] 0 <= i1
; [eval] i1 < N1
; [eval] 0 <= N1
(push) ; 6
(assert (not (<= 0 N@155@01)))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(assert (<= 0 N@155@01))
(assert (Ref__multidim_index_2%precondition ($Snap.combine
  $Snap.unit
  ($Snap.combine
    $Snap.unit
    ($Snap.combine
      $Snap.unit
      ($Snap.combine $Snap.unit ($Snap.combine $Snap.unit $Snap.unit))))) M@154@01 N@155@01 i1@165@01 j1@166@01))
(pop) ; 5
; Joined path conditions
(assert (and
  (<= 0 M@154@01)
  (<= 0 N@155@01)
  (Ref__multidim_index_2%precondition ($Snap.combine
    $Snap.unit
    ($Snap.combine
      $Snap.unit
      ($Snap.combine
        $Snap.unit
        ($Snap.combine $Snap.unit ($Snap.combine $Snap.unit $Snap.unit))))) M@154@01 N@155@01 i1@165@01 j1@166@01)))
(push) ; 5
(assert (not (>=
  (Ref__multidim_index_2 ($Snap.combine
    $Snap.unit
    ($Snap.combine
      $Snap.unit
      ($Snap.combine
        $Snap.unit
        ($Snap.combine $Snap.unit ($Snap.combine $Snap.unit $Snap.unit))))) M@154@01 N@155@01 i1@165@01 j1@166@01)
  0)))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(push) ; 5
(assert (not (<
  (Ref__multidim_index_2 ($Snap.combine
    $Snap.unit
    ($Snap.combine
      $Snap.unit
      ($Snap.combine
        $Snap.unit
        ($Snap.combine $Snap.unit ($Snap.combine $Snap.unit $Snap.unit))))) M@154@01 N@155@01 i1@165@01 j1@166@01)
  (Seq_length matrix@156@01))))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(push) ; 5
(assert (not (and
  (img@164@01 (Seq_index
    matrix@156@01
    (Ref__multidim_index_2 ($Snap.combine
      $Snap.unit
      ($Snap.combine
        $Snap.unit
        ($Snap.combine
          $Snap.unit
          ($Snap.combine $Snap.unit ($Snap.combine $Snap.unit $Snap.unit))))) M@154@01 N@155@01 i1@165@01 j1@166@01)))
  (and
    (<=
      0
      (inv@163@01 (Seq_index
        matrix@156@01
        (Ref__multidim_index_2 ($Snap.combine
          $Snap.unit
          ($Snap.combine
            $Snap.unit
            ($Snap.combine
              $Snap.unit
              ($Snap.combine $Snap.unit ($Snap.combine $Snap.unit $Snap.unit))))) M@154@01 N@155@01 i1@165@01 j1@166@01))))
    (<
      (inv@163@01 (Seq_index
        matrix@156@01
        (Ref__multidim_index_2 ($Snap.combine
          $Snap.unit
          ($Snap.combine
            $Snap.unit
            ($Snap.combine
              $Snap.unit
              ($Snap.combine $Snap.unit ($Snap.combine $Snap.unit $Snap.unit))))) M@154@01 N@155@01 i1@165@01 j1@166@01)))
      (* M@154@01 N@155@01))))))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(push) ; 5
; [then-branch: 66 | !(0 <= Lookup(Ref__Integer_value, First:(Second:(Second:(Second:(Second:(Second:(Second:(Second:($t@159@01)))))))), matrix@156@01[Ref__multidim_index_2((_, (_, (_, (_, (_, _))))), M@154@01, N@155@01, i1@165@01, j1@166@01)])) | live]
; [else-branch: 66 | 0 <= Lookup(Ref__Integer_value, First:(Second:(Second:(Second:(Second:(Second:(Second:(Second:($t@159@01)))))))), matrix@156@01[Ref__multidim_index_2((_, (_, (_, (_, (_, _))))), M@154@01, N@155@01, i1@165@01, j1@166@01)]) | live]
(push) ; 6
; [then-branch: 66 | !(0 <= Lookup(Ref__Integer_value, First:(Second:(Second:(Second:(Second:(Second:(Second:(Second:($t@159@01)))))))), matrix@156@01[Ref__multidim_index_2((_, (_, (_, (_, (_, _))))), M@154@01, N@155@01, i1@165@01, j1@166@01)]))]
(assert (not
  (<=
    0
    ($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@159@01))))))))) (Seq_index
      matrix@156@01
      (Ref__multidim_index_2 ($Snap.combine
        $Snap.unit
        ($Snap.combine
          $Snap.unit
          ($Snap.combine
            $Snap.unit
            ($Snap.combine $Snap.unit ($Snap.combine $Snap.unit $Snap.unit))))) M@154@01 N@155@01 i1@165@01 j1@166@01))))))
(pop) ; 6
(push) ; 6
; [else-branch: 66 | 0 <= Lookup(Ref__Integer_value, First:(Second:(Second:(Second:(Second:(Second:(Second:(Second:($t@159@01)))))))), matrix@156@01[Ref__multidim_index_2((_, (_, (_, (_, (_, _))))), M@154@01, N@155@01, i1@165@01, j1@166@01)])]
(assert (<=
  0
  ($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@159@01))))))))) (Seq_index
    matrix@156@01
    (Ref__multidim_index_2 ($Snap.combine
      $Snap.unit
      ($Snap.combine
        $Snap.unit
        ($Snap.combine
          $Snap.unit
          ($Snap.combine $Snap.unit ($Snap.combine $Snap.unit $Snap.unit))))) M@154@01 N@155@01 i1@165@01 j1@166@01)))))
; [eval] matrix[Ref__multidim_index_2(M, N, i1, j1)].Ref__Integer_value < P
; [eval] matrix[Ref__multidim_index_2(M, N, i1, j1)]
; [eval] Ref__multidim_index_2(M, N, i1, j1)
(push) ; 7
; [eval] 0 <= i0
; [eval] i0 < N0
; [eval] 0 <= N0
; [eval] 0 <= i1
; [eval] i1 < N1
; [eval] 0 <= N1
(pop) ; 7
; Joined path conditions
(push) ; 7
(assert (not (>=
  (Ref__multidim_index_2 ($Snap.combine
    $Snap.unit
    ($Snap.combine
      $Snap.unit
      ($Snap.combine
        $Snap.unit
        ($Snap.combine $Snap.unit ($Snap.combine $Snap.unit $Snap.unit))))) M@154@01 N@155@01 i1@165@01 j1@166@01)
  0)))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(push) ; 7
(assert (not (<
  (Ref__multidim_index_2 ($Snap.combine
    $Snap.unit
    ($Snap.combine
      $Snap.unit
      ($Snap.combine
        $Snap.unit
        ($Snap.combine $Snap.unit ($Snap.combine $Snap.unit $Snap.unit))))) M@154@01 N@155@01 i1@165@01 j1@166@01)
  (Seq_length matrix@156@01))))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(push) ; 7
(assert (not (and
  (img@164@01 (Seq_index
    matrix@156@01
    (Ref__multidim_index_2 ($Snap.combine
      $Snap.unit
      ($Snap.combine
        $Snap.unit
        ($Snap.combine
          $Snap.unit
          ($Snap.combine $Snap.unit ($Snap.combine $Snap.unit $Snap.unit))))) M@154@01 N@155@01 i1@165@01 j1@166@01)))
  (and
    (<=
      0
      (inv@163@01 (Seq_index
        matrix@156@01
        (Ref__multidim_index_2 ($Snap.combine
          $Snap.unit
          ($Snap.combine
            $Snap.unit
            ($Snap.combine
              $Snap.unit
              ($Snap.combine $Snap.unit ($Snap.combine $Snap.unit $Snap.unit))))) M@154@01 N@155@01 i1@165@01 j1@166@01))))
    (<
      (inv@163@01 (Seq_index
        matrix@156@01
        (Ref__multidim_index_2 ($Snap.combine
          $Snap.unit
          ($Snap.combine
            $Snap.unit
            ($Snap.combine
              $Snap.unit
              ($Snap.combine $Snap.unit ($Snap.combine $Snap.unit $Snap.unit))))) M@154@01 N@155@01 i1@165@01 j1@166@01)))
      (* M@154@01 N@155@01))))))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(pop) ; 6
(pop) ; 5
; Joined path conditions
; Joined path conditions
(assert (or
  (<=
    0
    ($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@159@01))))))))) (Seq_index
      matrix@156@01
      (Ref__multidim_index_2 ($Snap.combine
        $Snap.unit
        ($Snap.combine
          $Snap.unit
          ($Snap.combine
            $Snap.unit
            ($Snap.combine $Snap.unit ($Snap.combine $Snap.unit $Snap.unit))))) M@154@01 N@155@01 i1@165@01 j1@166@01))))
  (not
    (<=
      0
      ($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@159@01))))))))) (Seq_index
        matrix@156@01
        (Ref__multidim_index_2 ($Snap.combine
          $Snap.unit
          ($Snap.combine
            $Snap.unit
            ($Snap.combine
              $Snap.unit
              ($Snap.combine $Snap.unit ($Snap.combine $Snap.unit $Snap.unit))))) M@154@01 N@155@01 i1@165@01 j1@166@01)))))))
(pop) ; 4
(push) ; 4
; [else-branch: 65 | !(0 <= i1@165@01 && i1@165@01 < M@154@01 && 0 <= j1@166@01 && j1@166@01 < N@155@01)]
(assert (not
  (and
    (<= 0 i1@165@01)
    (and (< i1@165@01 M@154@01) (and (<= 0 j1@166@01) (< j1@166@01 N@155@01))))))
(pop) ; 4
(pop) ; 3
; Joined path conditions
(assert (=>
  (and
    (<= 0 i1@165@01)
    (and (< i1@165@01 M@154@01) (and (<= 0 j1@166@01) (< j1@166@01 N@155@01))))
  (and
    (<= 0 i1@165@01)
    (< i1@165@01 M@154@01)
    (<= 0 j1@166@01)
    (< j1@166@01 N@155@01)
    (<= 0 M@154@01)
    (<= 0 N@155@01)
    (Ref__multidim_index_2%precondition ($Snap.combine
      $Snap.unit
      ($Snap.combine
        $Snap.unit
        ($Snap.combine
          $Snap.unit
          ($Snap.combine $Snap.unit ($Snap.combine $Snap.unit $Snap.unit))))) M@154@01 N@155@01 i1@165@01 j1@166@01)
    (or
      (<=
        0
        ($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@159@01))))))))) (Seq_index
          matrix@156@01
          (Ref__multidim_index_2 ($Snap.combine
            $Snap.unit
            ($Snap.combine
              $Snap.unit
              ($Snap.combine
                $Snap.unit
                ($Snap.combine $Snap.unit ($Snap.combine $Snap.unit $Snap.unit))))) M@154@01 N@155@01 i1@165@01 j1@166@01))))
      (not
        (<=
          0
          ($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@159@01))))))))) (Seq_index
            matrix@156@01
            (Ref__multidim_index_2 ($Snap.combine
              $Snap.unit
              ($Snap.combine
                $Snap.unit
                ($Snap.combine
                  $Snap.unit
                  ($Snap.combine
                    $Snap.unit
                    ($Snap.combine $Snap.unit $Snap.unit))))) M@154@01 N@155@01 i1@165@01 j1@166@01)))))))))
; Joined path conditions
(assert (or
  (not
    (and
      (<= 0 i1@165@01)
      (and (< i1@165@01 M@154@01) (and (<= 0 j1@166@01) (< j1@166@01 N@155@01)))))
  (and
    (<= 0 i1@165@01)
    (and (< i1@165@01 M@154@01) (and (<= 0 j1@166@01) (< j1@166@01 N@155@01))))))
(pop) ; 2
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall ((i1@165@01 Int) (j1@166@01 Int)) (!
  (and
    (=>
      (<= 0 i1@165@01)
      (and
        (<= 0 i1@165@01)
        (=>
          (< i1@165@01 M@154@01)
          (and
            (< i1@165@01 M@154@01)
            (or (<= 0 j1@166@01) (not (<= 0 j1@166@01)))))
        (or (< i1@165@01 M@154@01) (not (< i1@165@01 M@154@01)))))
    (or (<= 0 i1@165@01) (not (<= 0 i1@165@01)))
    (=>
      (and
        (<= 0 i1@165@01)
        (and
          (< i1@165@01 M@154@01)
          (and (<= 0 j1@166@01) (< j1@166@01 N@155@01))))
      (and
        (<= 0 i1@165@01)
        (< i1@165@01 M@154@01)
        (<= 0 j1@166@01)
        (< j1@166@01 N@155@01)
        (<= 0 M@154@01)
        (<= 0 N@155@01)
        (Ref__multidim_index_2%precondition ($Snap.combine
          $Snap.unit
          ($Snap.combine
            $Snap.unit
            ($Snap.combine
              $Snap.unit
              ($Snap.combine $Snap.unit ($Snap.combine $Snap.unit $Snap.unit))))) M@154@01 N@155@01 i1@165@01 j1@166@01)
        (or
          (<=
            0
            ($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@159@01))))))))) (Seq_index
              matrix@156@01
              (Ref__multidim_index_2 ($Snap.combine
                $Snap.unit
                ($Snap.combine
                  $Snap.unit
                  ($Snap.combine
                    $Snap.unit
                    ($Snap.combine
                      $Snap.unit
                      ($Snap.combine $Snap.unit $Snap.unit))))) M@154@01 N@155@01 i1@165@01 j1@166@01))))
          (not
            (<=
              0
              ($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@159@01))))))))) (Seq_index
                matrix@156@01
                (Ref__multidim_index_2 ($Snap.combine
                  $Snap.unit
                  ($Snap.combine
                    $Snap.unit
                    ($Snap.combine
                      $Snap.unit
                      ($Snap.combine
                        $Snap.unit
                        ($Snap.combine $Snap.unit $Snap.unit))))) M@154@01 N@155@01 i1@165@01 j1@166@01))))))))
    (or
      (not
        (and
          (<= 0 i1@165@01)
          (and
            (< i1@165@01 M@154@01)
            (and (<= 0 j1@166@01) (< j1@166@01 N@155@01)))))
      (and
        (<= 0 i1@165@01)
        (and
          (< i1@165@01 M@154@01)
          (and (<= 0 j1@166@01) (< j1@166@01 N@155@01))))))
  :pattern ((Seq_index
    matrix@156@01
    (Ref__multidim_index_2 ($Snap.combine
      $Snap.unit
      ($Snap.combine
        $Snap.unit
        ($Snap.combine
          $Snap.unit
          ($Snap.combine $Snap.unit ($Snap.combine $Snap.unit $Snap.unit))))) M@154@01 N@155@01 i1@165@01 j1@166@01)))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/third_party/testHistogram.vpr@163@13@163@232-aux|)))
(assert (forall ((i1@165@01 Int) (j1@166@01 Int)) (!
  (=>
    (and
      (<= 0 i1@165@01)
      (and (< i1@165@01 M@154@01) (and (<= 0 j1@166@01) (< j1@166@01 N@155@01))))
    (and
      (<=
        0
        ($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@159@01))))))))) (Seq_index
          matrix@156@01
          (Ref__multidim_index_2 ($Snap.combine
            $Snap.unit
            ($Snap.combine
              $Snap.unit
              ($Snap.combine
                $Snap.unit
                ($Snap.combine $Snap.unit ($Snap.combine $Snap.unit $Snap.unit))))) M@154@01 N@155@01 i1@165@01 j1@166@01))))
      (<
        ($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@159@01))))))))) (Seq_index
          matrix@156@01
          (Ref__multidim_index_2 ($Snap.combine
            $Snap.unit
            ($Snap.combine
              $Snap.unit
              ($Snap.combine
                $Snap.unit
                ($Snap.combine $Snap.unit ($Snap.combine $Snap.unit $Snap.unit))))) M@154@01 N@155@01 i1@165@01 j1@166@01)))
        P@157@01)))
  :pattern ((Seq_index
    matrix@156@01
    (Ref__multidim_index_2 ($Snap.combine
      $Snap.unit
      ($Snap.combine
        $Snap.unit
        ($Snap.combine
          $Snap.unit
          ($Snap.combine $Snap.unit ($Snap.combine $Snap.unit $Snap.unit))))) M@154@01 N@155@01 i1@165@01 j1@166@01)))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/third_party/testHistogram.vpr@163@13@163@232|)))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@159@01)))))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@159@01))))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@159@01)))))))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@159@01))))))))))
  $Snap.unit))
; [eval] P <= |hist|
; [eval] |hist|
(assert (<= P@157@01 (Seq_length hist@158@01)))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@159@01))))))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@159@01)))))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@159@01))))))))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@159@01)))))))))))
  $Snap.unit))
; [eval] (forall j: Int, k: Int :: { hist[j], hist[k] } 0 <= j && (j < P && (0 <= k && (k < P && j != k))) ==> hist[j] != hist[k])
(declare-const j@167@01 Int)
(declare-const k@168@01 Int)
(push) ; 2
; [eval] 0 <= j && (j < P && (0 <= k && (k < P && j != k))) ==> hist[j] != hist[k]
; [eval] 0 <= j && (j < P && (0 <= k && (k < P && j != k)))
; [eval] 0 <= j
(push) ; 3
; [then-branch: 67 | !(0 <= j@167@01) | live]
; [else-branch: 67 | 0 <= j@167@01 | live]
(push) ; 4
; [then-branch: 67 | !(0 <= j@167@01)]
(assert (not (<= 0 j@167@01)))
(pop) ; 4
(push) ; 4
; [else-branch: 67 | 0 <= j@167@01]
(assert (<= 0 j@167@01))
; [eval] j < P
(push) ; 5
; [then-branch: 68 | !(j@167@01 < P@157@01) | live]
; [else-branch: 68 | j@167@01 < P@157@01 | live]
(push) ; 6
; [then-branch: 68 | !(j@167@01 < P@157@01)]
(assert (not (< j@167@01 P@157@01)))
(pop) ; 6
(push) ; 6
; [else-branch: 68 | j@167@01 < P@157@01]
(assert (< j@167@01 P@157@01))
; [eval] 0 <= k
(push) ; 7
; [then-branch: 69 | !(0 <= k@168@01) | live]
; [else-branch: 69 | 0 <= k@168@01 | live]
(push) ; 8
; [then-branch: 69 | !(0 <= k@168@01)]
(assert (not (<= 0 k@168@01)))
(pop) ; 8
(push) ; 8
; [else-branch: 69 | 0 <= k@168@01]
(assert (<= 0 k@168@01))
; [eval] k < P
(push) ; 9
; [then-branch: 70 | !(k@168@01 < P@157@01) | live]
; [else-branch: 70 | k@168@01 < P@157@01 | live]
(push) ; 10
; [then-branch: 70 | !(k@168@01 < P@157@01)]
(assert (not (< k@168@01 P@157@01)))
(pop) ; 10
(push) ; 10
; [else-branch: 70 | k@168@01 < P@157@01]
(assert (< k@168@01 P@157@01))
; [eval] j != k
(pop) ; 10
(pop) ; 9
; Joined path conditions
; Joined path conditions
(assert (or (< k@168@01 P@157@01) (not (< k@168@01 P@157@01))))
(pop) ; 8
(pop) ; 7
; Joined path conditions
; Joined path conditions
(assert (=>
  (<= 0 k@168@01)
  (and (<= 0 k@168@01) (or (< k@168@01 P@157@01) (not (< k@168@01 P@157@01))))))
(assert (or (<= 0 k@168@01) (not (<= 0 k@168@01))))
(pop) ; 6
(pop) ; 5
; Joined path conditions
; Joined path conditions
(assert (=>
  (< j@167@01 P@157@01)
  (and
    (< j@167@01 P@157@01)
    (=>
      (<= 0 k@168@01)
      (and
        (<= 0 k@168@01)
        (or (< k@168@01 P@157@01) (not (< k@168@01 P@157@01)))))
    (or (<= 0 k@168@01) (not (<= 0 k@168@01))))))
(assert (or (< j@167@01 P@157@01) (not (< j@167@01 P@157@01))))
(pop) ; 4
(pop) ; 3
; Joined path conditions
; Joined path conditions
(assert (=>
  (<= 0 j@167@01)
  (and
    (<= 0 j@167@01)
    (=>
      (< j@167@01 P@157@01)
      (and
        (< j@167@01 P@157@01)
        (=>
          (<= 0 k@168@01)
          (and
            (<= 0 k@168@01)
            (or (< k@168@01 P@157@01) (not (< k@168@01 P@157@01)))))
        (or (<= 0 k@168@01) (not (<= 0 k@168@01)))))
    (or (< j@167@01 P@157@01) (not (< j@167@01 P@157@01))))))
(assert (or (<= 0 j@167@01) (not (<= 0 j@167@01))))
(push) ; 3
; [then-branch: 71 | 0 <= j@167@01 && j@167@01 < P@157@01 && 0 <= k@168@01 && k@168@01 < P@157@01 && j@167@01 != k@168@01 | live]
; [else-branch: 71 | !(0 <= j@167@01 && j@167@01 < P@157@01 && 0 <= k@168@01 && k@168@01 < P@157@01 && j@167@01 != k@168@01) | live]
(push) ; 4
; [then-branch: 71 | 0 <= j@167@01 && j@167@01 < P@157@01 && 0 <= k@168@01 && k@168@01 < P@157@01 && j@167@01 != k@168@01]
(assert (and
  (<= 0 j@167@01)
  (and
    (< j@167@01 P@157@01)
    (and (<= 0 k@168@01) (and (< k@168@01 P@157@01) (not (= j@167@01 k@168@01)))))))
; [eval] hist[j] != hist[k]
; [eval] hist[j]
(push) ; 5
(assert (not (>= j@167@01 0)))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(push) ; 5
(assert (not (< j@167@01 (Seq_length hist@158@01))))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
; [eval] hist[k]
(push) ; 5
(assert (not (>= k@168@01 0)))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(push) ; 5
(assert (not (< k@168@01 (Seq_length hist@158@01))))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(pop) ; 4
(push) ; 4
; [else-branch: 71 | !(0 <= j@167@01 && j@167@01 < P@157@01 && 0 <= k@168@01 && k@168@01 < P@157@01 && j@167@01 != k@168@01)]
(assert (not
  (and
    (<= 0 j@167@01)
    (and
      (< j@167@01 P@157@01)
      (and
        (<= 0 k@168@01)
        (and (< k@168@01 P@157@01) (not (= j@167@01 k@168@01))))))))
(pop) ; 4
(pop) ; 3
; Joined path conditions
(assert (=>
  (and
    (<= 0 j@167@01)
    (and
      (< j@167@01 P@157@01)
      (and
        (<= 0 k@168@01)
        (and (< k@168@01 P@157@01) (not (= j@167@01 k@168@01))))))
  (and
    (<= 0 j@167@01)
    (< j@167@01 P@157@01)
    (<= 0 k@168@01)
    (< k@168@01 P@157@01)
    (not (= j@167@01 k@168@01)))))
; Joined path conditions
(assert (or
  (not
    (and
      (<= 0 j@167@01)
      (and
        (< j@167@01 P@157@01)
        (and
          (<= 0 k@168@01)
          (and (< k@168@01 P@157@01) (not (= j@167@01 k@168@01)))))))
  (and
    (<= 0 j@167@01)
    (and
      (< j@167@01 P@157@01)
      (and
        (<= 0 k@168@01)
        (and (< k@168@01 P@157@01) (not (= j@167@01 k@168@01))))))))
(pop) ; 2
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall ((j@167@01 Int) (k@168@01 Int)) (!
  (and
    (=>
      (<= 0 j@167@01)
      (and
        (<= 0 j@167@01)
        (=>
          (< j@167@01 P@157@01)
          (and
            (< j@167@01 P@157@01)
            (=>
              (<= 0 k@168@01)
              (and
                (<= 0 k@168@01)
                (or (< k@168@01 P@157@01) (not (< k@168@01 P@157@01)))))
            (or (<= 0 k@168@01) (not (<= 0 k@168@01)))))
        (or (< j@167@01 P@157@01) (not (< j@167@01 P@157@01)))))
    (or (<= 0 j@167@01) (not (<= 0 j@167@01)))
    (=>
      (and
        (<= 0 j@167@01)
        (and
          (< j@167@01 P@157@01)
          (and
            (<= 0 k@168@01)
            (and (< k@168@01 P@157@01) (not (= j@167@01 k@168@01))))))
      (and
        (<= 0 j@167@01)
        (< j@167@01 P@157@01)
        (<= 0 k@168@01)
        (< k@168@01 P@157@01)
        (not (= j@167@01 k@168@01))))
    (or
      (not
        (and
          (<= 0 j@167@01)
          (and
            (< j@167@01 P@157@01)
            (and
              (<= 0 k@168@01)
              (and (< k@168@01 P@157@01) (not (= j@167@01 k@168@01)))))))
      (and
        (<= 0 j@167@01)
        (and
          (< j@167@01 P@157@01)
          (and
            (<= 0 k@168@01)
            (and (< k@168@01 P@157@01) (not (= j@167@01 k@168@01))))))))
  :pattern ((Seq_index hist@158@01 j@167@01) (Seq_index hist@158@01 k@168@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/third_party/testHistogram.vpr@165@12@165@104-aux|)))
(assert (forall ((j@167@01 Int) (k@168@01 Int)) (!
  (=>
    (and
      (<= 0 j@167@01)
      (and
        (< j@167@01 P@157@01)
        (and
          (<= 0 k@168@01)
          (and (< k@168@01 P@157@01) (not (= j@167@01 k@168@01))))))
    (not (= (Seq_index hist@158@01 j@167@01) (Seq_index hist@158@01 k@168@01))))
  :pattern ((Seq_index hist@158@01 j@167@01) (Seq_index hist@158@01 k@168@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/third_party/testHistogram.vpr@165@12@165@104|)))
(declare-const i1@169@01 Int)
(push) ; 2
; [eval] 0 <= i1 && i1 < P
; [eval] 0 <= i1
(push) ; 3
; [then-branch: 72 | !(0 <= i1@169@01) | live]
; [else-branch: 72 | 0 <= i1@169@01 | live]
(push) ; 4
; [then-branch: 72 | !(0 <= i1@169@01)]
(assert (not (<= 0 i1@169@01)))
(pop) ; 4
(push) ; 4
; [else-branch: 72 | 0 <= i1@169@01]
(assert (<= 0 i1@169@01))
; [eval] i1 < P
(pop) ; 4
(pop) ; 3
; Joined path conditions
; Joined path conditions
(assert (or (<= 0 i1@169@01) (not (<= 0 i1@169@01))))
(assert (and (<= 0 i1@169@01) (< i1@169@01 P@157@01)))
; [eval] hist[i1]
(push) ; 3
(assert (not (>= i1@169@01 0)))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(push) ; 3
(assert (not (< i1@169@01 (Seq_length hist@158@01))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(pop) ; 2
(declare-fun inv@170@01 ($Ref) Int)
(declare-fun img@171@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
(assert (forall ((i1@169@01 Int)) (!
  (=>
    (and (<= 0 i1@169@01) (< i1@169@01 P@157@01))
    (or (<= 0 i1@169@01) (not (<= 0 i1@169@01))))
  :pattern ((Seq_index hist@158@01 i1@169@01))
  :qid |Ref__Integer_value-aux|)))
; Check receiver injectivity
(push) ; 2
(assert (not (forall ((i11@169@01 Int) (i12@169@01 Int)) (!
  (=>
    (and
      (and (<= 0 i11@169@01) (< i11@169@01 P@157@01))
      (and (<= 0 i12@169@01) (< i12@169@01 P@157@01))
      (= (Seq_index hist@158@01 i11@169@01) (Seq_index hist@158@01 i12@169@01)))
    (= i11@169@01 i12@169@01))
  
  :qid |Ref__Integer_value-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 2
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((i1@169@01 Int)) (!
  (=>
    (and (<= 0 i1@169@01) (< i1@169@01 P@157@01))
    (and
      (= (inv@170@01 (Seq_index hist@158@01 i1@169@01)) i1@169@01)
      (img@171@01 (Seq_index hist@158@01 i1@169@01))))
  :pattern ((Seq_index hist@158@01 i1@169@01))
  :qid |quant-u-10013|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@171@01 r) (and (<= 0 (inv@170@01 r)) (< (inv@170@01 r) P@157@01)))
    (= (Seq_index hist@158@01 (inv@170@01 r)) r))
  :pattern ((inv@170@01 r))
  :qid |Ref__Integer_value-fctOfInv|)))
; Permissions are non-negative
; Field permissions are at most one
; Permission implies non-null receiver
(assert (forall ((i1@169@01 Int)) (!
  (=>
    (and (<= 0 i1@169@01) (< i1@169@01 P@157@01))
    (not (= (Seq_index hist@158@01 i1@169@01) $Ref.null)))
  :pattern ((Seq_index hist@158@01 i1@169@01))
  :qid |Ref__Integer_value-permImpliesNonNull|)))
(push) ; 2
(set-option :timeout 10)
(assert (not (forall ((r $Ref)) (!
  (and
    (= (Seq_index hist@158@01 i1@169@01) (Seq_index matrix@156@01 j1@162@01))
    (=
      (and
        (img@171@01 r)
        (and (<= 0 (inv@170@01 r)) (< (inv@170@01 r) P@157@01)))
      (and
        (img@164@01 r)
        (and (<= 0 (inv@163@01 r)) (< (inv@163@01 r) (* M@154@01 N@155@01))))))
  
  :qid |quant-u-10014|))))
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
(declare-const $t@172@01 $Snap)
(assert (= $t@172@01 ($Snap.combine ($Snap.first $t@172@01) ($Snap.second $t@172@01))))
(declare-const j1@173@01 Int)
(push) ; 3
; [eval] 0 <= j1 && j1 < M * N
; [eval] 0 <= j1
(push) ; 4
; [then-branch: 73 | !(0 <= j1@173@01) | live]
; [else-branch: 73 | 0 <= j1@173@01 | live]
(push) ; 5
; [then-branch: 73 | !(0 <= j1@173@01)]
(assert (not (<= 0 j1@173@01)))
(pop) ; 5
(push) ; 5
; [else-branch: 73 | 0 <= j1@173@01]
(assert (<= 0 j1@173@01))
; [eval] j1 < M * N
; [eval] M * N
(pop) ; 5
(pop) ; 4
; Joined path conditions
; Joined path conditions
(assert (or (<= 0 j1@173@01) (not (<= 0 j1@173@01))))
(assert (and (<= 0 j1@173@01) (< j1@173@01 (* M@154@01 N@155@01))))
; [eval] matrix[j1]
(push) ; 4
(assert (not (>= j1@173@01 0)))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(push) ; 4
(assert (not (< j1@173@01 (Seq_length matrix@156@01))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(pop) ; 3
(declare-fun inv@174@01 ($Ref) Int)
(declare-fun img@175@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
(assert (forall ((j1@173@01 Int)) (!
  (=>
    (and (<= 0 j1@173@01) (< j1@173@01 (* M@154@01 N@155@01)))
    (or (<= 0 j1@173@01) (not (<= 0 j1@173@01))))
  :pattern ((Seq_index matrix@156@01 j1@173@01))
  :qid |Ref__Integer_value-aux|)))
; Check receiver injectivity
(push) ; 3
(assert (not (forall ((j11@173@01 Int) (j12@173@01 Int)) (!
  (=>
    (and
      (and (<= 0 j11@173@01) (< j11@173@01 (* M@154@01 N@155@01)))
      (and (<= 0 j12@173@01) (< j12@173@01 (* M@154@01 N@155@01)))
      (=
        (Seq_index matrix@156@01 j11@173@01)
        (Seq_index matrix@156@01 j12@173@01)))
    (= j11@173@01 j12@173@01))
  
  :qid |Ref__Integer_value-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((j1@173@01 Int)) (!
  (=>
    (and (<= 0 j1@173@01) (< j1@173@01 (* M@154@01 N@155@01)))
    (and
      (= (inv@174@01 (Seq_index matrix@156@01 j1@173@01)) j1@173@01)
      (img@175@01 (Seq_index matrix@156@01 j1@173@01))))
  :pattern ((Seq_index matrix@156@01 j1@173@01))
  :qid |quant-u-10016|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@175@01 r)
      (and (<= 0 (inv@174@01 r)) (< (inv@174@01 r) (* M@154@01 N@155@01))))
    (= (Seq_index matrix@156@01 (inv@174@01 r)) r))
  :pattern ((inv@174@01 r))
  :qid |Ref__Integer_value-fctOfInv|)))
; Permissions are non-negative
; Field permissions are at most one
; Permission implies non-null receiver
(assert (forall ((j1@173@01 Int)) (!
  (=>
    (and (<= 0 j1@173@01) (< j1@173@01 (* M@154@01 N@155@01)))
    (not (= (Seq_index matrix@156@01 j1@173@01) $Ref.null)))
  :pattern ((Seq_index matrix@156@01 j1@173@01))
  :qid |Ref__Integer_value-permImpliesNonNull|)))
(assert (=
  ($Snap.second $t@172@01)
  ($Snap.combine
    ($Snap.first ($Snap.second $t@172@01))
    ($Snap.second ($Snap.second $t@172@01)))))
(declare-const i1@176@01 Int)
(push) ; 3
; [eval] 0 <= i1 && i1 < P
; [eval] 0 <= i1
(push) ; 4
; [then-branch: 74 | !(0 <= i1@176@01) | live]
; [else-branch: 74 | 0 <= i1@176@01 | live]
(push) ; 5
; [then-branch: 74 | !(0 <= i1@176@01)]
(assert (not (<= 0 i1@176@01)))
(pop) ; 5
(push) ; 5
; [else-branch: 74 | 0 <= i1@176@01]
(assert (<= 0 i1@176@01))
; [eval] i1 < P
(pop) ; 5
(pop) ; 4
; Joined path conditions
; Joined path conditions
(assert (or (<= 0 i1@176@01) (not (<= 0 i1@176@01))))
(assert (and (<= 0 i1@176@01) (< i1@176@01 P@157@01)))
; [eval] hist[i1]
(push) ; 4
(assert (not (>= i1@176@01 0)))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(push) ; 4
(assert (not (< i1@176@01 (Seq_length hist@158@01))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(pop) ; 3
(declare-fun inv@177@01 ($Ref) Int)
(declare-fun img@178@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
(assert (forall ((i1@176@01 Int)) (!
  (=>
    (and (<= 0 i1@176@01) (< i1@176@01 P@157@01))
    (or (<= 0 i1@176@01) (not (<= 0 i1@176@01))))
  :pattern ((Seq_index hist@158@01 i1@176@01))
  :qid |Ref__Integer_value-aux|)))
; Check receiver injectivity
(push) ; 3
(assert (not (forall ((i11@176@01 Int) (i12@176@01 Int)) (!
  (=>
    (and
      (and (<= 0 i11@176@01) (< i11@176@01 P@157@01))
      (and (<= 0 i12@176@01) (< i12@176@01 P@157@01))
      (= (Seq_index hist@158@01 i11@176@01) (Seq_index hist@158@01 i12@176@01)))
    (= i11@176@01 i12@176@01))
  
  :qid |Ref__Integer_value-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((i1@176@01 Int)) (!
  (=>
    (and (<= 0 i1@176@01) (< i1@176@01 P@157@01))
    (and
      (= (inv@177@01 (Seq_index hist@158@01 i1@176@01)) i1@176@01)
      (img@178@01 (Seq_index hist@158@01 i1@176@01))))
  :pattern ((Seq_index hist@158@01 i1@176@01))
  :qid |quant-u-10018|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@178@01 r) (and (<= 0 (inv@177@01 r)) (< (inv@177@01 r) P@157@01)))
    (= (Seq_index hist@158@01 (inv@177@01 r)) r))
  :pattern ((inv@177@01 r))
  :qid |Ref__Integer_value-fctOfInv|)))
; Permissions are non-negative
; Field permissions are at most one
; Permission implies non-null receiver
(assert (forall ((i1@176@01 Int)) (!
  (=>
    (and (<= 0 i1@176@01) (< i1@176@01 P@157@01))
    (not (= (Seq_index hist@158@01 i1@176@01) $Ref.null)))
  :pattern ((Seq_index hist@158@01 i1@176@01))
  :qid |Ref__Integer_value-permImpliesNonNull|)))
(push) ; 3
(set-option :timeout 10)
(assert (not (forall ((r $Ref)) (!
  (and
    (= (Seq_index hist@158@01 i1@176@01) (Seq_index matrix@156@01 j1@173@01))
    (=
      (and
        (img@178@01 r)
        (and (<= 0 (inv@177@01 r)) (< (inv@177@01 r) P@157@01)))
      (and
        (img@175@01 r)
        (and (<= 0 (inv@174@01 r)) (< (inv@174@01 r) (* M@154@01 N@155@01))))))
  
  :qid |quant-u-10019|))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(assert (=
  ($Snap.second ($Snap.second $t@172@01))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second $t@172@01)))
    ($Snap.second ($Snap.second ($Snap.second $t@172@01))))))
(assert (= ($Snap.first ($Snap.second ($Snap.second $t@172@01))) $Snap.unit))
; [eval] (forall k: Int :: { hist[k] } 0 <= k && k < P ==> hist[k].Ref__Integer_value == count_array(0, M * N, matrix, k))
(declare-const k@179@01 Int)
(set-option :timeout 0)
(push) ; 3
; [eval] 0 <= k && k < P ==> hist[k].Ref__Integer_value == count_array(0, M * N, matrix, k)
; [eval] 0 <= k && k < P
; [eval] 0 <= k
(push) ; 4
; [then-branch: 75 | !(0 <= k@179@01) | live]
; [else-branch: 75 | 0 <= k@179@01 | live]
(push) ; 5
; [then-branch: 75 | !(0 <= k@179@01)]
(assert (not (<= 0 k@179@01)))
(pop) ; 5
(push) ; 5
; [else-branch: 75 | 0 <= k@179@01]
(assert (<= 0 k@179@01))
; [eval] k < P
(pop) ; 5
(pop) ; 4
; Joined path conditions
; Joined path conditions
(assert (or (<= 0 k@179@01) (not (<= 0 k@179@01))))
(push) ; 4
; [then-branch: 76 | 0 <= k@179@01 && k@179@01 < P@157@01 | live]
; [else-branch: 76 | !(0 <= k@179@01 && k@179@01 < P@157@01) | live]
(push) ; 5
; [then-branch: 76 | 0 <= k@179@01 && k@179@01 < P@157@01]
(assert (and (<= 0 k@179@01) (< k@179@01 P@157@01)))
; [eval] hist[k].Ref__Integer_value == count_array(0, M * N, matrix, k)
; [eval] hist[k]
(push) ; 6
(assert (not (>= k@179@01 0)))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(push) ; 6
(assert (not (< k@179@01 (Seq_length hist@158@01))))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(declare-const sm@180@01 $FVF<Ref__Integer_value>)
; Definitional axioms for snapshot map values
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@175@01 r)
      (and (<= 0 (inv@174@01 r)) (< (inv@174@01 r) (* M@154@01 N@155@01))))
    (=
      ($FVF.lookup_Ref__Integer_value (as sm@180@01  $FVF<Ref__Integer_value>) r)
      ($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first $t@172@01)) r)))
  :pattern (($FVF.lookup_Ref__Integer_value (as sm@180@01  $FVF<Ref__Integer_value>) r))
  :pattern (($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first $t@172@01)) r))
  :qid |qp.fvfValDef19|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@178@01 r) (and (<= 0 (inv@177@01 r)) (< (inv@177@01 r) P@157@01)))
    (=
      ($FVF.lookup_Ref__Integer_value (as sm@180@01  $FVF<Ref__Integer_value>) r)
      ($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second $t@172@01))) r)))
  :pattern (($FVF.lookup_Ref__Integer_value (as sm@180@01  $FVF<Ref__Integer_value>) r))
  :pattern (($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second $t@172@01))) r))
  :qid |qp.fvfValDef20|)))
(declare-const pm@181@01 $FPM)
(assert (forall ((r $Ref)) (!
  (=
    ($FVF.perm_Ref__Integer_value (as pm@181@01  $FPM) r)
    (+
      (ite
        (and
          (img@175@01 r)
          (and (<= 0 (inv@174@01 r)) (< (inv@174@01 r) (* M@154@01 N@155@01))))
        (/ (to_real 1) (to_real 2))
        $Perm.No)
      (ite
        (and
          (img@178@01 r)
          (and (<= 0 (inv@177@01 r)) (< (inv@177@01 r) P@157@01)))
        $Perm.Write
        $Perm.No)))
  :pattern (($FVF.perm_Ref__Integer_value (as pm@181@01  $FPM) r))
  :qid |qp.resPrmSumDef21|)))
(push) ; 6
(assert (not (<
  $Perm.No
  ($FVF.perm_Ref__Integer_value (as pm@181@01  $FPM) (Seq_index
    hist@158@01
    k@179@01)))))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
; [eval] count_array(0, M * N, matrix, k)
; [eval] M * N
(push) ; 6
; [eval] 0 <= i
; [eval] i <= hi
(push) ; 7
(assert (not (<= 0 (* M@154@01 N@155@01))))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(assert (<= 0 (* M@154@01 N@155@01)))
; [eval] hi <= |ar|
; [eval] |ar|
; [eval] (forall j: Int, k: Int ::0 <= j && (j < hi && (0 <= k && (k < hi && j != k))) ==> ar[j] != ar[k])
(declare-const j@182@01 Int)
(declare-const k@183@01 Int)
(push) ; 7
; [eval] 0 <= j && (j < hi && (0 <= k && (k < hi && j != k))) ==> ar[j] != ar[k]
; [eval] 0 <= j && (j < hi && (0 <= k && (k < hi && j != k)))
; [eval] 0 <= j
(push) ; 8
; [then-branch: 77 | !(0 <= j@182@01) | live]
; [else-branch: 77 | 0 <= j@182@01 | live]
(push) ; 9
; [then-branch: 77 | !(0 <= j@182@01)]
(assert (not (<= 0 j@182@01)))
(pop) ; 9
(push) ; 9
; [else-branch: 77 | 0 <= j@182@01]
(assert (<= 0 j@182@01))
; [eval] j < hi
(push) ; 10
; [then-branch: 78 | !(j@182@01 < M@154@01 * N@155@01) | live]
; [else-branch: 78 | j@182@01 < M@154@01 * N@155@01 | live]
(push) ; 11
; [then-branch: 78 | !(j@182@01 < M@154@01 * N@155@01)]
(assert (not (< j@182@01 (* M@154@01 N@155@01))))
(pop) ; 11
(push) ; 11
; [else-branch: 78 | j@182@01 < M@154@01 * N@155@01]
(assert (< j@182@01 (* M@154@01 N@155@01)))
; [eval] 0 <= k
(push) ; 12
; [then-branch: 79 | !(0 <= k@183@01) | live]
; [else-branch: 79 | 0 <= k@183@01 | live]
(push) ; 13
; [then-branch: 79 | !(0 <= k@183@01)]
(assert (not (<= 0 k@183@01)))
(pop) ; 13
(push) ; 13
; [else-branch: 79 | 0 <= k@183@01]
(assert (<= 0 k@183@01))
; [eval] k < hi
(push) ; 14
; [then-branch: 80 | !(k@183@01 < M@154@01 * N@155@01) | live]
; [else-branch: 80 | k@183@01 < M@154@01 * N@155@01 | live]
(push) ; 15
; [then-branch: 80 | !(k@183@01 < M@154@01 * N@155@01)]
(assert (not (< k@183@01 (* M@154@01 N@155@01))))
(pop) ; 15
(push) ; 15
; [else-branch: 80 | k@183@01 < M@154@01 * N@155@01]
(assert (< k@183@01 (* M@154@01 N@155@01)))
; [eval] j != k
(pop) ; 15
(pop) ; 14
; Joined path conditions
; Joined path conditions
(assert (or (< k@183@01 (* M@154@01 N@155@01)) (not (< k@183@01 (* M@154@01 N@155@01)))))
(pop) ; 13
(pop) ; 12
; Joined path conditions
; Joined path conditions
(assert (=>
  (<= 0 k@183@01)
  (and
    (<= 0 k@183@01)
    (or
      (< k@183@01 (* M@154@01 N@155@01))
      (not (< k@183@01 (* M@154@01 N@155@01)))))))
(assert (or (<= 0 k@183@01) (not (<= 0 k@183@01))))
(pop) ; 11
(pop) ; 10
; Joined path conditions
; Joined path conditions
(assert (=>
  (< j@182@01 (* M@154@01 N@155@01))
  (and
    (< j@182@01 (* M@154@01 N@155@01))
    (=>
      (<= 0 k@183@01)
      (and
        (<= 0 k@183@01)
        (or
          (< k@183@01 (* M@154@01 N@155@01))
          (not (< k@183@01 (* M@154@01 N@155@01))))))
    (or (<= 0 k@183@01) (not (<= 0 k@183@01))))))
(assert (or (< j@182@01 (* M@154@01 N@155@01)) (not (< j@182@01 (* M@154@01 N@155@01)))))
(pop) ; 9
(pop) ; 8
; Joined path conditions
; Joined path conditions
(assert (=>
  (<= 0 j@182@01)
  (and
    (<= 0 j@182@01)
    (=>
      (< j@182@01 (* M@154@01 N@155@01))
      (and
        (< j@182@01 (* M@154@01 N@155@01))
        (=>
          (<= 0 k@183@01)
          (and
            (<= 0 k@183@01)
            (or
              (< k@183@01 (* M@154@01 N@155@01))
              (not (< k@183@01 (* M@154@01 N@155@01))))))
        (or (<= 0 k@183@01) (not (<= 0 k@183@01)))))
    (or
      (< j@182@01 (* M@154@01 N@155@01))
      (not (< j@182@01 (* M@154@01 N@155@01)))))))
(assert (or (<= 0 j@182@01) (not (<= 0 j@182@01))))
(push) ; 8
; [then-branch: 81 | 0 <= j@182@01 && j@182@01 < M@154@01 * N@155@01 && 0 <= k@183@01 && k@183@01 < M@154@01 * N@155@01 && j@182@01 != k@183@01 | live]
; [else-branch: 81 | !(0 <= j@182@01 && j@182@01 < M@154@01 * N@155@01 && 0 <= k@183@01 && k@183@01 < M@154@01 * N@155@01 && j@182@01 != k@183@01) | live]
(push) ; 9
; [then-branch: 81 | 0 <= j@182@01 && j@182@01 < M@154@01 * N@155@01 && 0 <= k@183@01 && k@183@01 < M@154@01 * N@155@01 && j@182@01 != k@183@01]
(assert (and
  (<= 0 j@182@01)
  (and
    (< j@182@01 (* M@154@01 N@155@01))
    (and
      (<= 0 k@183@01)
      (and (< k@183@01 (* M@154@01 N@155@01)) (not (= j@182@01 k@183@01)))))))
; [eval] ar[j] != ar[k]
; [eval] ar[j]
(push) ; 10
(assert (not (>= j@182@01 0)))
(check-sat)
; unsat
(pop) ; 10
; 0.00s
; (get-info :all-statistics)
(push) ; 10
(assert (not (< j@182@01 (Seq_length matrix@156@01))))
(check-sat)
; unsat
(pop) ; 10
; 0.00s
; (get-info :all-statistics)
; [eval] ar[k]
(push) ; 10
(assert (not (>= k@183@01 0)))
(check-sat)
; unsat
(pop) ; 10
; 0.00s
; (get-info :all-statistics)
(push) ; 10
(assert (not (< k@183@01 (Seq_length matrix@156@01))))
(check-sat)
; unsat
(pop) ; 10
; 0.00s
; (get-info :all-statistics)
(pop) ; 9
(push) ; 9
; [else-branch: 81 | !(0 <= j@182@01 && j@182@01 < M@154@01 * N@155@01 && 0 <= k@183@01 && k@183@01 < M@154@01 * N@155@01 && j@182@01 != k@183@01)]
(assert (not
  (and
    (<= 0 j@182@01)
    (and
      (< j@182@01 (* M@154@01 N@155@01))
      (and
        (<= 0 k@183@01)
        (and (< k@183@01 (* M@154@01 N@155@01)) (not (= j@182@01 k@183@01))))))))
(pop) ; 9
(pop) ; 8
; Joined path conditions
(assert (=>
  (and
    (<= 0 j@182@01)
    (and
      (< j@182@01 (* M@154@01 N@155@01))
      (and
        (<= 0 k@183@01)
        (and (< k@183@01 (* M@154@01 N@155@01)) (not (= j@182@01 k@183@01))))))
  (and
    (<= 0 j@182@01)
    (< j@182@01 (* M@154@01 N@155@01))
    (<= 0 k@183@01)
    (< k@183@01 (* M@154@01 N@155@01))
    (not (= j@182@01 k@183@01)))))
; Joined path conditions
(assert (or
  (not
    (and
      (<= 0 j@182@01)
      (and
        (< j@182@01 (* M@154@01 N@155@01))
        (and
          (<= 0 k@183@01)
          (and (< k@183@01 (* M@154@01 N@155@01)) (not (= j@182@01 k@183@01)))))))
  (and
    (<= 0 j@182@01)
    (and
      (< j@182@01 (* M@154@01 N@155@01))
      (and
        (<= 0 k@183@01)
        (and (< k@183@01 (* M@154@01 N@155@01)) (not (= j@182@01 k@183@01))))))))
(pop) ; 7
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(push) ; 7
(assert (not (forall ((j@182@01 Int) (k@183@01 Int)) (!
  (=>
    (and
      (<= 0 j@182@01)
      (and
        (< j@182@01 (* M@154@01 N@155@01))
        (and
          (<= 0 k@183@01)
          (and (< k@183@01 (* M@154@01 N@155@01)) (not (= j@182@01 k@183@01))))))
    (not
      (= (Seq_index matrix@156@01 j@182@01) (Seq_index matrix@156@01 k@183@01))))
  
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/third_party/testHistogram.vpr@66@12@66@102|))))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(assert (forall ((j@182@01 Int) (k@183@01 Int)) (!
  (=>
    (and
      (<= 0 j@182@01)
      (and
        (< j@182@01 (* M@154@01 N@155@01))
        (and
          (<= 0 k@183@01)
          (and (< k@183@01 (* M@154@01 N@155@01)) (not (= j@182@01 k@183@01))))))
    (not
      (= (Seq_index matrix@156@01 j@182@01) (Seq_index matrix@156@01 k@183@01))))
  
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/third_party/testHistogram.vpr@66@12@66@102|)))
(declare-const k@184@01 Int)
(push) ; 7
; [eval] 0 <= k && k < hi
; [eval] 0 <= k
(push) ; 8
; [then-branch: 82 | !(0 <= k@184@01) | live]
; [else-branch: 82 | 0 <= k@184@01 | live]
(push) ; 9
; [then-branch: 82 | !(0 <= k@184@01)]
(assert (not (<= 0 k@184@01)))
(pop) ; 9
(push) ; 9
; [else-branch: 82 | 0 <= k@184@01]
(assert (<= 0 k@184@01))
; [eval] k < hi
(pop) ; 9
(pop) ; 8
; Joined path conditions
; Joined path conditions
(assert (or (<= 0 k@184@01) (not (<= 0 k@184@01))))
(assert (and (<= 0 k@184@01) (< k@184@01 (* M@154@01 N@155@01))))
(declare-const $k@185@01 $Perm)
(assert ($Perm.isReadVar $k@185@01))
; [eval] ar[k]
(push) ; 8
(assert (not (>= k@184@01 0)))
(check-sat)
; unsat
(pop) ; 8
; 0.00s
; (get-info :all-statistics)
(push) ; 8
(assert (not (< k@184@01 (Seq_length matrix@156@01))))
(check-sat)
; unsat
(pop) ; 8
; 0.00s
; (get-info :all-statistics)
(pop) ; 7
(declare-fun inv@186@01 ($Ref) Int)
(declare-fun img@187@01 ($Ref) Bool)
; Nested auxiliary terms: globals
(assert ($Perm.isReadVar $k@185@01))
; Nested auxiliary terms: non-globals
(assert (forall ((k@184@01 Int)) (!
  (=>
    (and (<= 0 k@184@01) (< k@184@01 (* M@154@01 N@155@01)))
    (or (<= 0 k@184@01) (not (<= 0 k@184@01))))
  :pattern ((Seq_index matrix@156@01 k@184@01))
  :qid |Ref__Integer_value-aux|)))
(push) ; 7
(assert (not (forall ((k@184@01 Int)) (!
  (=>
    (and (<= 0 k@184@01) (< k@184@01 (* M@154@01 N@155@01)))
    (or (= $k@185@01 $Perm.No) (< $Perm.No $k@185@01)))
  
  :qid |quant-u-10020|))))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
; Check receiver injectivity
(push) ; 7
(assert (not (forall ((k1@184@01 Int) (k2@184@01 Int)) (!
  (=>
    (and
      (and
        (and (<= 0 k1@184@01) (< k1@184@01 (* M@154@01 N@155@01)))
        (< $Perm.No $k@185@01))
      (and
        (and (<= 0 k2@184@01) (< k2@184@01 (* M@154@01 N@155@01)))
        (< $Perm.No $k@185@01))
      (= (Seq_index matrix@156@01 k1@184@01) (Seq_index matrix@156@01 k2@184@01)))
    (= k1@184@01 k2@184@01))
  
  :qid |Ref__Integer_value-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((k@184@01 Int)) (!
  (=>
    (and
      (and (<= 0 k@184@01) (< k@184@01 (* M@154@01 N@155@01)))
      (< $Perm.No $k@185@01))
    (and
      (= (inv@186@01 (Seq_index matrix@156@01 k@184@01)) k@184@01)
      (img@187@01 (Seq_index matrix@156@01 k@184@01))))
  :pattern ((Seq_index matrix@156@01 k@184@01))
  :qid |Ref__Integer_value-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@187@01 r)
      (and
        (and (<= 0 (inv@186@01 r)) (< (inv@186@01 r) (* M@154@01 N@155@01)))
        (< $Perm.No $k@185@01)))
    (= (Seq_index matrix@156@01 (inv@186@01 r)) r))
  :pattern ((inv@186@01 r))
  :qid |Ref__Integer_value-fctOfInv|)))
(push) ; 7
(set-option :timeout 10)
(assert (not (forall ((k@184@01 Int)) (!
  (= (Seq_index matrix@156@01 k@184@01) (Seq_index hist@158@01 k@184@01))
  
  :qid |quant-u-10021|))))
(check-sat)
; unknown
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 7
(assert (not (forall ((r $Ref)) (!
  (=>
    (and
      (and
        (and (<= 0 (inv@186@01 r)) (< (inv@186@01 r) (* M@154@01 N@155@01)))
        (img@187@01 r)
        (= r (Seq_index matrix@156@01 (inv@186@01 r))))
      (> $k@185@01 $Perm.No))
    (>
      (+
        (ite
          (and
            (img@175@01 r)
            (and (<= 0 (inv@174@01 r)) (< (inv@174@01 r) (* M@154@01 N@155@01))))
          (/ (to_real 1) (to_real 2))
          $Perm.No)
        (ite
          (and
            (img@178@01 r)
            (and (<= 0 (inv@177@01 r)) (< (inv@177@01 r) P@157@01)))
          $Perm.Write
          $Perm.No))
      $Perm.No))
  
  :qid |quant-u-10022|))))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(declare-const sm@188@01 $FVF<Ref__Integer_value>)
; Definitional axioms for snapshot map domain
(assert (forall ((r $Ref)) (!
  (and
    (=>
      (Set_in r ($FVF.domain_Ref__Integer_value (as sm@188@01  $FVF<Ref__Integer_value>)))
      (and
        (and (<= 0 (inv@186@01 r)) (< (inv@186@01 r) (* M@154@01 N@155@01)))
        (< $Perm.No $k@185@01)
        (img@187@01 r)))
    (=>
      (and
        (and (<= 0 (inv@186@01 r)) (< (inv@186@01 r) (* M@154@01 N@155@01)))
        (< $Perm.No $k@185@01)
        (img@187@01 r))
      (Set_in r ($FVF.domain_Ref__Integer_value (as sm@188@01  $FVF<Ref__Integer_value>)))))
  :pattern ((Set_in r ($FVF.domain_Ref__Integer_value (as sm@188@01  $FVF<Ref__Integer_value>))))
  :qid |qp.fvfDomDef24|)))
; Definitional axioms for snapshot map values
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and
        (and (<= 0 (inv@186@01 r)) (< (inv@186@01 r) (* M@154@01 N@155@01)))
        (< $Perm.No $k@185@01)
        (img@187@01 r))
      (and
        (img@175@01 r)
        (and (<= 0 (inv@174@01 r)) (< (inv@174@01 r) (* M@154@01 N@155@01)))))
    (=
      ($FVF.lookup_Ref__Integer_value (as sm@188@01  $FVF<Ref__Integer_value>) r)
      ($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first $t@172@01)) r)))
  :pattern (($FVF.lookup_Ref__Integer_value (as sm@188@01  $FVF<Ref__Integer_value>) r))
  :pattern (($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first $t@172@01)) r))
  :qid |qp.fvfValDef22|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and
        (and (<= 0 (inv@186@01 r)) (< (inv@186@01 r) (* M@154@01 N@155@01)))
        (< $Perm.No $k@185@01)
        (img@187@01 r))
      (and
        (img@178@01 r)
        (and (<= 0 (inv@177@01 r)) (< (inv@177@01 r) P@157@01))))
    (=
      ($FVF.lookup_Ref__Integer_value (as sm@188@01  $FVF<Ref__Integer_value>) r)
      ($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second $t@172@01))) r)))
  :pattern (($FVF.lookup_Ref__Integer_value (as sm@188@01  $FVF<Ref__Integer_value>) r))
  :pattern (($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second $t@172@01))) r))
  :qid |qp.fvfValDef23|)))
(assert (count_array%precondition ($Snap.combine
  $Snap.unit
  ($Snap.combine
    $Snap.unit
    ($Snap.combine
      $Snap.unit
      ($Snap.combine
        $Snap.unit
        ($SortWrappers.$FVF<Ref__Integer_value>To$Snap (as sm@188@01  $FVF<Ref__Integer_value>)))))) 0 (*
  M@154@01
  N@155@01) matrix@156@01 k@179@01))
(pop) ; 6
; Joined path conditions
(assert ($Perm.isReadVar $k@185@01))
(assert (forall ((k@184@01 Int)) (!
  (=>
    (and
      (and (<= 0 k@184@01) (< k@184@01 (* M@154@01 N@155@01)))
      (< $Perm.No $k@185@01))
    (and
      (= (inv@186@01 (Seq_index matrix@156@01 k@184@01)) k@184@01)
      (img@187@01 (Seq_index matrix@156@01 k@184@01))))
  :pattern ((Seq_index matrix@156@01 k@184@01))
  :qid |Ref__Integer_value-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@187@01 r)
      (and
        (and (<= 0 (inv@186@01 r)) (< (inv@186@01 r) (* M@154@01 N@155@01)))
        (< $Perm.No $k@185@01)))
    (= (Seq_index matrix@156@01 (inv@186@01 r)) r))
  :pattern ((inv@186@01 r))
  :qid |Ref__Integer_value-fctOfInv|)))
(assert (forall ((r $Ref)) (!
  (and
    (=>
      (Set_in r ($FVF.domain_Ref__Integer_value (as sm@188@01  $FVF<Ref__Integer_value>)))
      (and
        (and (<= 0 (inv@186@01 r)) (< (inv@186@01 r) (* M@154@01 N@155@01)))
        (< $Perm.No $k@185@01)
        (img@187@01 r)))
    (=>
      (and
        (and (<= 0 (inv@186@01 r)) (< (inv@186@01 r) (* M@154@01 N@155@01)))
        (< $Perm.No $k@185@01)
        (img@187@01 r))
      (Set_in r ($FVF.domain_Ref__Integer_value (as sm@188@01  $FVF<Ref__Integer_value>)))))
  :pattern ((Set_in r ($FVF.domain_Ref__Integer_value (as sm@188@01  $FVF<Ref__Integer_value>))))
  :qid |qp.fvfDomDef24|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and
        (and (<= 0 (inv@186@01 r)) (< (inv@186@01 r) (* M@154@01 N@155@01)))
        (< $Perm.No $k@185@01)
        (img@187@01 r))
      (and
        (img@175@01 r)
        (and (<= 0 (inv@174@01 r)) (< (inv@174@01 r) (* M@154@01 N@155@01)))))
    (=
      ($FVF.lookup_Ref__Integer_value (as sm@188@01  $FVF<Ref__Integer_value>) r)
      ($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first $t@172@01)) r)))
  :pattern (($FVF.lookup_Ref__Integer_value (as sm@188@01  $FVF<Ref__Integer_value>) r))
  :pattern (($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first $t@172@01)) r))
  :qid |qp.fvfValDef22|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and
        (and (<= 0 (inv@186@01 r)) (< (inv@186@01 r) (* M@154@01 N@155@01)))
        (< $Perm.No $k@185@01)
        (img@187@01 r))
      (and
        (img@178@01 r)
        (and (<= 0 (inv@177@01 r)) (< (inv@177@01 r) P@157@01))))
    (=
      ($FVF.lookup_Ref__Integer_value (as sm@188@01  $FVF<Ref__Integer_value>) r)
      ($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second $t@172@01))) r)))
  :pattern (($FVF.lookup_Ref__Integer_value (as sm@188@01  $FVF<Ref__Integer_value>) r))
  :pattern (($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second $t@172@01))) r))
  :qid |qp.fvfValDef23|)))
(assert (and
  (<= 0 (* M@154@01 N@155@01))
  (forall ((j@182@01 Int) (k@183@01 Int)) (!
    (=>
      (and
        (<= 0 j@182@01)
        (and
          (< j@182@01 (* M@154@01 N@155@01))
          (and
            (<= 0 k@183@01)
            (and (< k@183@01 (* M@154@01 N@155@01)) (not (= j@182@01 k@183@01))))))
      (not
        (= (Seq_index matrix@156@01 j@182@01) (Seq_index matrix@156@01 k@183@01))))
    
    :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/third_party/testHistogram.vpr@66@12@66@102|))
  (forall ((k@184@01 Int)) (!
    (=>
      (and (<= 0 k@184@01) (< k@184@01 (* M@154@01 N@155@01)))
      (or (<= 0 k@184@01) (not (<= 0 k@184@01))))
    :pattern ((Seq_index matrix@156@01 k@184@01))
    :qid |Ref__Integer_value-aux|))
  (count_array%precondition ($Snap.combine
    $Snap.unit
    ($Snap.combine
      $Snap.unit
      ($Snap.combine
        $Snap.unit
        ($Snap.combine
          $Snap.unit
          ($SortWrappers.$FVF<Ref__Integer_value>To$Snap (as sm@188@01  $FVF<Ref__Integer_value>)))))) 0 (*
    M@154@01
    N@155@01) matrix@156@01 k@179@01)))
(pop) ; 5
(push) ; 5
; [else-branch: 76 | !(0 <= k@179@01 && k@179@01 < P@157@01)]
(assert (not (and (<= 0 k@179@01) (< k@179@01 P@157@01))))
(pop) ; 5
(pop) ; 4
; Joined path conditions
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@175@01 r)
      (and (<= 0 (inv@174@01 r)) (< (inv@174@01 r) (* M@154@01 N@155@01))))
    (=
      ($FVF.lookup_Ref__Integer_value (as sm@180@01  $FVF<Ref__Integer_value>) r)
      ($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first $t@172@01)) r)))
  :pattern (($FVF.lookup_Ref__Integer_value (as sm@180@01  $FVF<Ref__Integer_value>) r))
  :pattern (($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first $t@172@01)) r))
  :qid |qp.fvfValDef19|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@178@01 r) (and (<= 0 (inv@177@01 r)) (< (inv@177@01 r) P@157@01)))
    (=
      ($FVF.lookup_Ref__Integer_value (as sm@180@01  $FVF<Ref__Integer_value>) r)
      ($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second $t@172@01))) r)))
  :pattern (($FVF.lookup_Ref__Integer_value (as sm@180@01  $FVF<Ref__Integer_value>) r))
  :pattern (($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second $t@172@01))) r))
  :qid |qp.fvfValDef20|)))
(assert (forall ((r $Ref)) (!
  (=
    ($FVF.perm_Ref__Integer_value (as pm@181@01  $FPM) r)
    (+
      (ite
        (and
          (img@175@01 r)
          (and (<= 0 (inv@174@01 r)) (< (inv@174@01 r) (* M@154@01 N@155@01))))
        (/ (to_real 1) (to_real 2))
        $Perm.No)
      (ite
        (and
          (img@178@01 r)
          (and (<= 0 (inv@177@01 r)) (< (inv@177@01 r) P@157@01)))
        $Perm.Write
        $Perm.No)))
  :pattern (($FVF.perm_Ref__Integer_value (as pm@181@01  $FPM) r))
  :qid |qp.resPrmSumDef21|)))
(assert ($Perm.isReadVar $k@185@01))
(assert (forall ((k@184@01 Int)) (!
  (=>
    (and
      (and (<= 0 k@184@01) (< k@184@01 (* M@154@01 N@155@01)))
      (< $Perm.No $k@185@01))
    (and
      (= (inv@186@01 (Seq_index matrix@156@01 k@184@01)) k@184@01)
      (img@187@01 (Seq_index matrix@156@01 k@184@01))))
  :pattern ((Seq_index matrix@156@01 k@184@01))
  :qid |Ref__Integer_value-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@187@01 r)
      (and
        (and (<= 0 (inv@186@01 r)) (< (inv@186@01 r) (* M@154@01 N@155@01)))
        (< $Perm.No $k@185@01)))
    (= (Seq_index matrix@156@01 (inv@186@01 r)) r))
  :pattern ((inv@186@01 r))
  :qid |Ref__Integer_value-fctOfInv|)))
(assert (forall ((r $Ref)) (!
  (and
    (=>
      (Set_in r ($FVF.domain_Ref__Integer_value (as sm@188@01  $FVF<Ref__Integer_value>)))
      (and
        (and (<= 0 (inv@186@01 r)) (< (inv@186@01 r) (* M@154@01 N@155@01)))
        (< $Perm.No $k@185@01)
        (img@187@01 r)))
    (=>
      (and
        (and (<= 0 (inv@186@01 r)) (< (inv@186@01 r) (* M@154@01 N@155@01)))
        (< $Perm.No $k@185@01)
        (img@187@01 r))
      (Set_in r ($FVF.domain_Ref__Integer_value (as sm@188@01  $FVF<Ref__Integer_value>)))))
  :pattern ((Set_in r ($FVF.domain_Ref__Integer_value (as sm@188@01  $FVF<Ref__Integer_value>))))
  :qid |qp.fvfDomDef24|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and
        (and (<= 0 (inv@186@01 r)) (< (inv@186@01 r) (* M@154@01 N@155@01)))
        (< $Perm.No $k@185@01)
        (img@187@01 r))
      (and
        (img@175@01 r)
        (and (<= 0 (inv@174@01 r)) (< (inv@174@01 r) (* M@154@01 N@155@01)))))
    (=
      ($FVF.lookup_Ref__Integer_value (as sm@188@01  $FVF<Ref__Integer_value>) r)
      ($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first $t@172@01)) r)))
  :pattern (($FVF.lookup_Ref__Integer_value (as sm@188@01  $FVF<Ref__Integer_value>) r))
  :pattern (($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first $t@172@01)) r))
  :qid |qp.fvfValDef22|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and
        (and (<= 0 (inv@186@01 r)) (< (inv@186@01 r) (* M@154@01 N@155@01)))
        (< $Perm.No $k@185@01)
        (img@187@01 r))
      (and
        (img@178@01 r)
        (and (<= 0 (inv@177@01 r)) (< (inv@177@01 r) P@157@01))))
    (=
      ($FVF.lookup_Ref__Integer_value (as sm@188@01  $FVF<Ref__Integer_value>) r)
      ($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second $t@172@01))) r)))
  :pattern (($FVF.lookup_Ref__Integer_value (as sm@188@01  $FVF<Ref__Integer_value>) r))
  :pattern (($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second $t@172@01))) r))
  :qid |qp.fvfValDef23|)))
(assert (=>
  (and (<= 0 k@179@01) (< k@179@01 P@157@01))
  (and
    (<= 0 k@179@01)
    (< k@179@01 P@157@01)
    (<= 0 (* M@154@01 N@155@01))
    (forall ((j@182@01 Int) (k@183@01 Int)) (!
      (=>
        (and
          (<= 0 j@182@01)
          (and
            (< j@182@01 (* M@154@01 N@155@01))
            (and
              (<= 0 k@183@01)
              (and
                (< k@183@01 (* M@154@01 N@155@01))
                (not (= j@182@01 k@183@01))))))
        (not
          (=
            (Seq_index matrix@156@01 j@182@01)
            (Seq_index matrix@156@01 k@183@01))))
      
      :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/third_party/testHistogram.vpr@66@12@66@102|))
    (forall ((k@184@01 Int)) (!
      (=>
        (and (<= 0 k@184@01) (< k@184@01 (* M@154@01 N@155@01)))
        (or (<= 0 k@184@01) (not (<= 0 k@184@01))))
      :pattern ((Seq_index matrix@156@01 k@184@01))
      :qid |Ref__Integer_value-aux|))
    (count_array%precondition ($Snap.combine
      $Snap.unit
      ($Snap.combine
        $Snap.unit
        ($Snap.combine
          $Snap.unit
          ($Snap.combine
            $Snap.unit
            ($SortWrappers.$FVF<Ref__Integer_value>To$Snap (as sm@188@01  $FVF<Ref__Integer_value>)))))) 0 (*
      M@154@01
      N@155@01) matrix@156@01 k@179@01))))
; Joined path conditions
(assert (or
  (not (and (<= 0 k@179@01) (< k@179@01 P@157@01)))
  (and (<= 0 k@179@01) (< k@179@01 P@157@01))))
; [eval] hist[k]
(push) ; 4
(assert (not (>= k@179@01 0)))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(pop) ; 3
; Nested auxiliary terms: globals (aux)
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@175@01 r)
      (and (<= 0 (inv@174@01 r)) (< (inv@174@01 r) (* M@154@01 N@155@01))))
    (=
      ($FVF.lookup_Ref__Integer_value (as sm@180@01  $FVF<Ref__Integer_value>) r)
      ($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first $t@172@01)) r)))
  :pattern (($FVF.lookup_Ref__Integer_value (as sm@180@01  $FVF<Ref__Integer_value>) r))
  :pattern (($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first $t@172@01)) r))
  :qid |qp.fvfValDef19|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@178@01 r) (and (<= 0 (inv@177@01 r)) (< (inv@177@01 r) P@157@01)))
    (=
      ($FVF.lookup_Ref__Integer_value (as sm@180@01  $FVF<Ref__Integer_value>) r)
      ($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second $t@172@01))) r)))
  :pattern (($FVF.lookup_Ref__Integer_value (as sm@180@01  $FVF<Ref__Integer_value>) r))
  :pattern (($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second $t@172@01))) r))
  :qid |qp.fvfValDef20|)))
(assert (forall ((r $Ref)) (!
  (=
    ($FVF.perm_Ref__Integer_value (as pm@181@01  $FPM) r)
    (+
      (ite
        (and
          (img@175@01 r)
          (and (<= 0 (inv@174@01 r)) (< (inv@174@01 r) (* M@154@01 N@155@01))))
        (/ (to_real 1) (to_real 2))
        $Perm.No)
      (ite
        (and
          (img@178@01 r)
          (and (<= 0 (inv@177@01 r)) (< (inv@177@01 r) P@157@01)))
        $Perm.Write
        $Perm.No)))
  :pattern (($FVF.perm_Ref__Integer_value (as pm@181@01  $FPM) r))
  :qid |qp.resPrmSumDef21|)))
(assert ($Perm.isReadVar $k@185@01))
(assert (forall ((k@184@01 Int)) (!
  (=>
    (and
      (and (<= 0 k@184@01) (< k@184@01 (* M@154@01 N@155@01)))
      (< $Perm.No $k@185@01))
    (and
      (= (inv@186@01 (Seq_index matrix@156@01 k@184@01)) k@184@01)
      (img@187@01 (Seq_index matrix@156@01 k@184@01))))
  :pattern ((Seq_index matrix@156@01 k@184@01))
  :qid |Ref__Integer_value-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@187@01 r)
      (and
        (and (<= 0 (inv@186@01 r)) (< (inv@186@01 r) (* M@154@01 N@155@01)))
        (< $Perm.No $k@185@01)))
    (= (Seq_index matrix@156@01 (inv@186@01 r)) r))
  :pattern ((inv@186@01 r))
  :qid |Ref__Integer_value-fctOfInv|)))
(assert (forall ((r $Ref)) (!
  (and
    (=>
      (Set_in r ($FVF.domain_Ref__Integer_value (as sm@188@01  $FVF<Ref__Integer_value>)))
      (and
        (and (<= 0 (inv@186@01 r)) (< (inv@186@01 r) (* M@154@01 N@155@01)))
        (< $Perm.No $k@185@01)
        (img@187@01 r)))
    (=>
      (and
        (and (<= 0 (inv@186@01 r)) (< (inv@186@01 r) (* M@154@01 N@155@01)))
        (< $Perm.No $k@185@01)
        (img@187@01 r))
      (Set_in r ($FVF.domain_Ref__Integer_value (as sm@188@01  $FVF<Ref__Integer_value>)))))
  :pattern ((Set_in r ($FVF.domain_Ref__Integer_value (as sm@188@01  $FVF<Ref__Integer_value>))))
  :qid |qp.fvfDomDef24|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and
        (and (<= 0 (inv@186@01 r)) (< (inv@186@01 r) (* M@154@01 N@155@01)))
        (< $Perm.No $k@185@01)
        (img@187@01 r))
      (and
        (img@175@01 r)
        (and (<= 0 (inv@174@01 r)) (< (inv@174@01 r) (* M@154@01 N@155@01)))))
    (=
      ($FVF.lookup_Ref__Integer_value (as sm@188@01  $FVF<Ref__Integer_value>) r)
      ($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first $t@172@01)) r)))
  :pattern (($FVF.lookup_Ref__Integer_value (as sm@188@01  $FVF<Ref__Integer_value>) r))
  :pattern (($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first $t@172@01)) r))
  :qid |qp.fvfValDef22|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and
        (and (<= 0 (inv@186@01 r)) (< (inv@186@01 r) (* M@154@01 N@155@01)))
        (< $Perm.No $k@185@01)
        (img@187@01 r))
      (and
        (img@178@01 r)
        (and (<= 0 (inv@177@01 r)) (< (inv@177@01 r) P@157@01))))
    (=
      ($FVF.lookup_Ref__Integer_value (as sm@188@01  $FVF<Ref__Integer_value>) r)
      ($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second $t@172@01))) r)))
  :pattern (($FVF.lookup_Ref__Integer_value (as sm@188@01  $FVF<Ref__Integer_value>) r))
  :pattern (($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second $t@172@01))) r))
  :qid |qp.fvfValDef23|)))
; Nested auxiliary terms: non-globals (aux)
(assert (forall ((k@179@01 Int)) (!
  (and
    (or (<= 0 k@179@01) (not (<= 0 k@179@01)))
    (=>
      (and (<= 0 k@179@01) (< k@179@01 P@157@01))
      (and
        (<= 0 k@179@01)
        (< k@179@01 P@157@01)
        (<= 0 (* M@154@01 N@155@01))
        (forall ((j@182@01 Int) (k@183@01 Int)) (!
          (=>
            (and
              (<= 0 j@182@01)
              (and
                (< j@182@01 (* M@154@01 N@155@01))
                (and
                  (<= 0 k@183@01)
                  (and
                    (< k@183@01 (* M@154@01 N@155@01))
                    (not (= j@182@01 k@183@01))))))
            (not
              (=
                (Seq_index matrix@156@01 j@182@01)
                (Seq_index matrix@156@01 k@183@01))))
          
          :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/third_party/testHistogram.vpr@66@12@66@102|))
        (forall ((k@184@01 Int)) (!
          (=>
            (and (<= 0 k@184@01) (< k@184@01 (* M@154@01 N@155@01)))
            (or (<= 0 k@184@01) (not (<= 0 k@184@01))))
          :pattern ((Seq_index matrix@156@01 k@184@01))
          :qid |Ref__Integer_value-aux|))
        (count_array%precondition ($Snap.combine
          $Snap.unit
          ($Snap.combine
            $Snap.unit
            ($Snap.combine
              $Snap.unit
              ($Snap.combine
                $Snap.unit
                ($SortWrappers.$FVF<Ref__Integer_value>To$Snap (as sm@188@01  $FVF<Ref__Integer_value>)))))) 0 (*
          M@154@01
          N@155@01) matrix@156@01 k@179@01)))
    (or
      (not (and (<= 0 k@179@01) (< k@179@01 P@157@01)))
      (and (<= 0 k@179@01) (< k@179@01 P@157@01))))
  
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/third_party/testHistogram.vpr@170@12@170@117-aux|)))
(assert (forall ((k@179@01 Int)) (!
  (=>
    (and (<= 0 k@179@01) (< k@179@01 P@157@01))
    (=
      ($FVF.lookup_Ref__Integer_value (as sm@180@01  $FVF<Ref__Integer_value>) (Seq_index
        hist@158@01
        k@179@01))
      (count_array ($Snap.combine
        $Snap.unit
        ($Snap.combine
          $Snap.unit
          ($Snap.combine
            $Snap.unit
            ($Snap.combine
              $Snap.unit
              ($SortWrappers.$FVF<Ref__Integer_value>To$Snap (as sm@188@01  $FVF<Ref__Integer_value>)))))) 0 (*
        M@154@01
        N@155@01) matrix@156@01 k@179@01)))
  
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/third_party/testHistogram.vpr@170@12@170@117|)))
(assert (= ($Snap.second ($Snap.second ($Snap.second $t@172@01))) $Snap.unit))
; [eval] (forall i1: Int, j1: Int :: { old(Ref__multidim_index_2(M, N, i1, j1)) } { old(matrix[Ref__multidim_index_2(M, N, i1, j1)]) } 0 <= i1 && (i1 < M && (0 <= j1 && j1 < N)) ==> matrix[Ref__multidim_index_2(M, N, i1, j1)].Ref__Integer_value == old(matrix[Ref__multidim_index_2(M, N, i1, j1)].Ref__Integer_value))
(declare-const i1@189@01 Int)
(declare-const j1@190@01 Int)
(push) ; 3
; [eval] 0 <= i1 && (i1 < M && (0 <= j1 && j1 < N)) ==> matrix[Ref__multidim_index_2(M, N, i1, j1)].Ref__Integer_value == old(matrix[Ref__multidim_index_2(M, N, i1, j1)].Ref__Integer_value)
; [eval] 0 <= i1 && (i1 < M && (0 <= j1 && j1 < N))
; [eval] 0 <= i1
(push) ; 4
; [then-branch: 83 | !(0 <= i1@189@01) | live]
; [else-branch: 83 | 0 <= i1@189@01 | live]
(push) ; 5
; [then-branch: 83 | !(0 <= i1@189@01)]
(assert (not (<= 0 i1@189@01)))
(pop) ; 5
(push) ; 5
; [else-branch: 83 | 0 <= i1@189@01]
(assert (<= 0 i1@189@01))
; [eval] i1 < M
(push) ; 6
; [then-branch: 84 | !(i1@189@01 < M@154@01) | live]
; [else-branch: 84 | i1@189@01 < M@154@01 | live]
(push) ; 7
; [then-branch: 84 | !(i1@189@01 < M@154@01)]
(assert (not (< i1@189@01 M@154@01)))
(pop) ; 7
(push) ; 7
; [else-branch: 84 | i1@189@01 < M@154@01]
(assert (< i1@189@01 M@154@01))
; [eval] 0 <= j1
(push) ; 8
; [then-branch: 85 | !(0 <= j1@190@01) | live]
; [else-branch: 85 | 0 <= j1@190@01 | live]
(push) ; 9
; [then-branch: 85 | !(0 <= j1@190@01)]
(assert (not (<= 0 j1@190@01)))
(pop) ; 9
(push) ; 9
; [else-branch: 85 | 0 <= j1@190@01]
(assert (<= 0 j1@190@01))
; [eval] j1 < N
(pop) ; 9
(pop) ; 8
; Joined path conditions
; Joined path conditions
(assert (or (<= 0 j1@190@01) (not (<= 0 j1@190@01))))
(pop) ; 7
(pop) ; 6
; Joined path conditions
; Joined path conditions
(assert (=>
  (< i1@189@01 M@154@01)
  (and (< i1@189@01 M@154@01) (or (<= 0 j1@190@01) (not (<= 0 j1@190@01))))))
(assert (or (< i1@189@01 M@154@01) (not (< i1@189@01 M@154@01))))
(pop) ; 5
(pop) ; 4
; Joined path conditions
; Joined path conditions
(assert (=>
  (<= 0 i1@189@01)
  (and
    (<= 0 i1@189@01)
    (=>
      (< i1@189@01 M@154@01)
      (and (< i1@189@01 M@154@01) (or (<= 0 j1@190@01) (not (<= 0 j1@190@01)))))
    (or (< i1@189@01 M@154@01) (not (< i1@189@01 M@154@01))))))
(assert (or (<= 0 i1@189@01) (not (<= 0 i1@189@01))))
(push) ; 4
; [then-branch: 86 | 0 <= i1@189@01 && i1@189@01 < M@154@01 && 0 <= j1@190@01 && j1@190@01 < N@155@01 | live]
; [else-branch: 86 | !(0 <= i1@189@01 && i1@189@01 < M@154@01 && 0 <= j1@190@01 && j1@190@01 < N@155@01) | live]
(push) ; 5
; [then-branch: 86 | 0 <= i1@189@01 && i1@189@01 < M@154@01 && 0 <= j1@190@01 && j1@190@01 < N@155@01]
(assert (and
  (<= 0 i1@189@01)
  (and (< i1@189@01 M@154@01) (and (<= 0 j1@190@01) (< j1@190@01 N@155@01)))))
; [eval] matrix[Ref__multidim_index_2(M, N, i1, j1)].Ref__Integer_value == old(matrix[Ref__multidim_index_2(M, N, i1, j1)].Ref__Integer_value)
; [eval] matrix[Ref__multidim_index_2(M, N, i1, j1)]
; [eval] Ref__multidim_index_2(M, N, i1, j1)
(push) ; 6
; [eval] 0 <= i0
; [eval] i0 < N0
; [eval] 0 <= N0
(push) ; 7
(assert (not (<= 0 M@154@01)))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(assert (<= 0 M@154@01))
; [eval] 0 <= i1
; [eval] i1 < N1
; [eval] 0 <= N1
(push) ; 7
(assert (not (<= 0 N@155@01)))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(assert (<= 0 N@155@01))
(assert (Ref__multidim_index_2%precondition ($Snap.combine
  $Snap.unit
  ($Snap.combine
    $Snap.unit
    ($Snap.combine
      $Snap.unit
      ($Snap.combine $Snap.unit ($Snap.combine $Snap.unit $Snap.unit))))) M@154@01 N@155@01 i1@189@01 j1@190@01))
(pop) ; 6
; Joined path conditions
(assert (and
  (<= 0 M@154@01)
  (<= 0 N@155@01)
  (Ref__multidim_index_2%precondition ($Snap.combine
    $Snap.unit
    ($Snap.combine
      $Snap.unit
      ($Snap.combine
        $Snap.unit
        ($Snap.combine $Snap.unit ($Snap.combine $Snap.unit $Snap.unit))))) M@154@01 N@155@01 i1@189@01 j1@190@01)))
(push) ; 6
(assert (not (>=
  (Ref__multidim_index_2 ($Snap.combine
    $Snap.unit
    ($Snap.combine
      $Snap.unit
      ($Snap.combine
        $Snap.unit
        ($Snap.combine $Snap.unit ($Snap.combine $Snap.unit $Snap.unit))))) M@154@01 N@155@01 i1@189@01 j1@190@01)
  0)))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(push) ; 6
(assert (not (<
  (Ref__multidim_index_2 ($Snap.combine
    $Snap.unit
    ($Snap.combine
      $Snap.unit
      ($Snap.combine
        $Snap.unit
        ($Snap.combine $Snap.unit ($Snap.combine $Snap.unit $Snap.unit))))) M@154@01 N@155@01 i1@189@01 j1@190@01)
  (Seq_length matrix@156@01))))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(declare-const sm@191@01 $FVF<Ref__Integer_value>)
; Definitional axioms for snapshot map values
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@175@01 r)
      (and (<= 0 (inv@174@01 r)) (< (inv@174@01 r) (* M@154@01 N@155@01))))
    (=
      ($FVF.lookup_Ref__Integer_value (as sm@191@01  $FVF<Ref__Integer_value>) r)
      ($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first $t@172@01)) r)))
  :pattern (($FVF.lookup_Ref__Integer_value (as sm@191@01  $FVF<Ref__Integer_value>) r))
  :pattern (($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first $t@172@01)) r))
  :qid |qp.fvfValDef25|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@178@01 r) (and (<= 0 (inv@177@01 r)) (< (inv@177@01 r) P@157@01)))
    (=
      ($FVF.lookup_Ref__Integer_value (as sm@191@01  $FVF<Ref__Integer_value>) r)
      ($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second $t@172@01))) r)))
  :pattern (($FVF.lookup_Ref__Integer_value (as sm@191@01  $FVF<Ref__Integer_value>) r))
  :pattern (($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second $t@172@01))) r))
  :qid |qp.fvfValDef26|)))
(declare-const pm@192@01 $FPM)
(assert (forall ((r $Ref)) (!
  (=
    ($FVF.perm_Ref__Integer_value (as pm@192@01  $FPM) r)
    (+
      (ite
        (and
          (img@175@01 r)
          (and (<= 0 (inv@174@01 r)) (< (inv@174@01 r) (* M@154@01 N@155@01))))
        (/ (to_real 1) (to_real 2))
        $Perm.No)
      (ite
        (and
          (img@178@01 r)
          (and (<= 0 (inv@177@01 r)) (< (inv@177@01 r) P@157@01)))
        $Perm.Write
        $Perm.No)))
  :pattern (($FVF.perm_Ref__Integer_value (as pm@192@01  $FPM) r))
  :qid |qp.resPrmSumDef27|)))
(push) ; 6
(assert (not (<
  $Perm.No
  ($FVF.perm_Ref__Integer_value (as pm@192@01  $FPM) (Seq_index
    matrix@156@01
    (Ref__multidim_index_2 ($Snap.combine
      $Snap.unit
      ($Snap.combine
        $Snap.unit
        ($Snap.combine
          $Snap.unit
          ($Snap.combine $Snap.unit ($Snap.combine $Snap.unit $Snap.unit))))) M@154@01 N@155@01 i1@189@01 j1@190@01))))))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
; [eval] old(matrix[Ref__multidim_index_2(M, N, i1, j1)].Ref__Integer_value)
; [eval] matrix[Ref__multidim_index_2(M, N, i1, j1)]
; [eval] Ref__multidim_index_2(M, N, i1, j1)
(push) ; 6
; [eval] 0 <= i0
; [eval] i0 < N0
; [eval] 0 <= N0
; [eval] 0 <= i1
; [eval] i1 < N1
; [eval] 0 <= N1
(pop) ; 6
; Joined path conditions
(push) ; 6
(assert (not (>=
  (Ref__multidim_index_2 ($Snap.combine
    $Snap.unit
    ($Snap.combine
      $Snap.unit
      ($Snap.combine
        $Snap.unit
        ($Snap.combine $Snap.unit ($Snap.combine $Snap.unit $Snap.unit))))) M@154@01 N@155@01 i1@189@01 j1@190@01)
  0)))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(push) ; 6
(assert (not (<
  (Ref__multidim_index_2 ($Snap.combine
    $Snap.unit
    ($Snap.combine
      $Snap.unit
      ($Snap.combine
        $Snap.unit
        ($Snap.combine $Snap.unit ($Snap.combine $Snap.unit $Snap.unit))))) M@154@01 N@155@01 i1@189@01 j1@190@01)
  (Seq_length matrix@156@01))))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(declare-const sm@193@01 $FVF<Ref__Integer_value>)
; Definitional axioms for snapshot map values
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@164@01 r)
      (and (<= 0 (inv@163@01 r)) (< (inv@163@01 r) (* M@154@01 N@155@01))))
    (=
      ($FVF.lookup_Ref__Integer_value (as sm@193@01  $FVF<Ref__Integer_value>) r)
      ($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@159@01))))))))) r)))
  :pattern (($FVF.lookup_Ref__Integer_value (as sm@193@01  $FVF<Ref__Integer_value>) r))
  :pattern (($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@159@01))))))))) r))
  :qid |qp.fvfValDef28|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@171@01 r) (and (<= 0 (inv@170@01 r)) (< (inv@170@01 r) P@157@01)))
    (=
      ($FVF.lookup_Ref__Integer_value (as sm@193@01  $FVF<Ref__Integer_value>) r)
      ($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@159@01)))))))))))) r)))
  :pattern (($FVF.lookup_Ref__Integer_value (as sm@193@01  $FVF<Ref__Integer_value>) r))
  :pattern (($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@159@01)))))))))))) r))
  :qid |qp.fvfValDef29|)))
(declare-const pm@194@01 $FPM)
(assert (forall ((r $Ref)) (!
  (=
    ($FVF.perm_Ref__Integer_value (as pm@194@01  $FPM) r)
    (+
      (ite
        (and
          (img@164@01 r)
          (and (<= 0 (inv@163@01 r)) (< (inv@163@01 r) (* M@154@01 N@155@01))))
        (/ (to_real 1) (to_real 2))
        $Perm.No)
      (ite
        (and
          (img@171@01 r)
          (and (<= 0 (inv@170@01 r)) (< (inv@170@01 r) P@157@01)))
        $Perm.Write
        $Perm.No)))
  :pattern (($FVF.perm_Ref__Integer_value (as pm@194@01  $FPM) r))
  :qid |qp.resPrmSumDef30|)))
(push) ; 6
(assert (not (<
  $Perm.No
  ($FVF.perm_Ref__Integer_value (as pm@194@01  $FPM) (Seq_index
    matrix@156@01
    (Ref__multidim_index_2 ($Snap.combine
      $Snap.unit
      ($Snap.combine
        $Snap.unit
        ($Snap.combine
          $Snap.unit
          ($Snap.combine $Snap.unit ($Snap.combine $Snap.unit $Snap.unit))))) M@154@01 N@155@01 i1@189@01 j1@190@01))))))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(pop) ; 5
(push) ; 5
; [else-branch: 86 | !(0 <= i1@189@01 && i1@189@01 < M@154@01 && 0 <= j1@190@01 && j1@190@01 < N@155@01)]
(assert (not
  (and
    (<= 0 i1@189@01)
    (and (< i1@189@01 M@154@01) (and (<= 0 j1@190@01) (< j1@190@01 N@155@01))))))
(pop) ; 5
(pop) ; 4
; Joined path conditions
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@175@01 r)
      (and (<= 0 (inv@174@01 r)) (< (inv@174@01 r) (* M@154@01 N@155@01))))
    (=
      ($FVF.lookup_Ref__Integer_value (as sm@191@01  $FVF<Ref__Integer_value>) r)
      ($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first $t@172@01)) r)))
  :pattern (($FVF.lookup_Ref__Integer_value (as sm@191@01  $FVF<Ref__Integer_value>) r))
  :pattern (($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first $t@172@01)) r))
  :qid |qp.fvfValDef25|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@178@01 r) (and (<= 0 (inv@177@01 r)) (< (inv@177@01 r) P@157@01)))
    (=
      ($FVF.lookup_Ref__Integer_value (as sm@191@01  $FVF<Ref__Integer_value>) r)
      ($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second $t@172@01))) r)))
  :pattern (($FVF.lookup_Ref__Integer_value (as sm@191@01  $FVF<Ref__Integer_value>) r))
  :pattern (($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second $t@172@01))) r))
  :qid |qp.fvfValDef26|)))
(assert (forall ((r $Ref)) (!
  (=
    ($FVF.perm_Ref__Integer_value (as pm@192@01  $FPM) r)
    (+
      (ite
        (and
          (img@175@01 r)
          (and (<= 0 (inv@174@01 r)) (< (inv@174@01 r) (* M@154@01 N@155@01))))
        (/ (to_real 1) (to_real 2))
        $Perm.No)
      (ite
        (and
          (img@178@01 r)
          (and (<= 0 (inv@177@01 r)) (< (inv@177@01 r) P@157@01)))
        $Perm.Write
        $Perm.No)))
  :pattern (($FVF.perm_Ref__Integer_value (as pm@192@01  $FPM) r))
  :qid |qp.resPrmSumDef27|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@164@01 r)
      (and (<= 0 (inv@163@01 r)) (< (inv@163@01 r) (* M@154@01 N@155@01))))
    (=
      ($FVF.lookup_Ref__Integer_value (as sm@193@01  $FVF<Ref__Integer_value>) r)
      ($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@159@01))))))))) r)))
  :pattern (($FVF.lookup_Ref__Integer_value (as sm@193@01  $FVF<Ref__Integer_value>) r))
  :pattern (($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@159@01))))))))) r))
  :qid |qp.fvfValDef28|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@171@01 r) (and (<= 0 (inv@170@01 r)) (< (inv@170@01 r) P@157@01)))
    (=
      ($FVF.lookup_Ref__Integer_value (as sm@193@01  $FVF<Ref__Integer_value>) r)
      ($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@159@01)))))))))))) r)))
  :pattern (($FVF.lookup_Ref__Integer_value (as sm@193@01  $FVF<Ref__Integer_value>) r))
  :pattern (($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@159@01)))))))))))) r))
  :qid |qp.fvfValDef29|)))
(assert (forall ((r $Ref)) (!
  (=
    ($FVF.perm_Ref__Integer_value (as pm@194@01  $FPM) r)
    (+
      (ite
        (and
          (img@164@01 r)
          (and (<= 0 (inv@163@01 r)) (< (inv@163@01 r) (* M@154@01 N@155@01))))
        (/ (to_real 1) (to_real 2))
        $Perm.No)
      (ite
        (and
          (img@171@01 r)
          (and (<= 0 (inv@170@01 r)) (< (inv@170@01 r) P@157@01)))
        $Perm.Write
        $Perm.No)))
  :pattern (($FVF.perm_Ref__Integer_value (as pm@194@01  $FPM) r))
  :qid |qp.resPrmSumDef30|)))
(assert (=>
  (and
    (<= 0 i1@189@01)
    (and (< i1@189@01 M@154@01) (and (<= 0 j1@190@01) (< j1@190@01 N@155@01))))
  (and
    (<= 0 i1@189@01)
    (< i1@189@01 M@154@01)
    (<= 0 j1@190@01)
    (< j1@190@01 N@155@01)
    (<= 0 M@154@01)
    (<= 0 N@155@01)
    (Ref__multidim_index_2%precondition ($Snap.combine
      $Snap.unit
      ($Snap.combine
        $Snap.unit
        ($Snap.combine
          $Snap.unit
          ($Snap.combine $Snap.unit ($Snap.combine $Snap.unit $Snap.unit))))) M@154@01 N@155@01 i1@189@01 j1@190@01))))
; Joined path conditions
(assert (or
  (not
    (and
      (<= 0 i1@189@01)
      (and (< i1@189@01 M@154@01) (and (<= 0 j1@190@01) (< j1@190@01 N@155@01)))))
  (and
    (<= 0 i1@189@01)
    (and (< i1@189@01 M@154@01) (and (<= 0 j1@190@01) (< j1@190@01 N@155@01))))))
; [eval] old(Ref__multidim_index_2(M, N, i1, j1))
; [eval] Ref__multidim_index_2(M, N, i1, j1)
(push) ; 4
; [eval] 0 <= i0
(push) ; 5
(assert (not (<= 0 i1@189@01)))
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
(set-option :timeout 0)
(push) ; 5
(set-option :timeout 10)
(assert (not (forall ((r $Ref)) (!
  (and
    (= (Seq_index matrix@156@01 j1@162@01) (Seq_index hist@158@01 i1@169@01))
    (=
      (and
        (img@164@01 r)
        (and (<= 0 (inv@163@01 r)) (< (inv@163@01 r) (* M@154@01 N@155@01))))
      (and
        (img@171@01 r)
        (and (<= 0 (inv@170@01 r)) (< (inv@170@01 r) P@157@01)))))
  
  :qid |quant-u-10023|))))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for snapshot map domain
; Definitional axioms for snapshot map values
; Assume upper permission bound for field Ref__Integer_value
(assert (forall ((r $Ref)) (!
  (<= ($FVF.perm_Ref__Integer_value (as pm@194@01  $FPM) r) $Perm.Write)
  :pattern ((inv@163@01 r))
  :qid |qp-fld-prm-bnd|)))
; Assume upper permission bound for field Ref__Integer_value
(assert (forall ((r $Ref)) (!
  (<= ($FVF.perm_Ref__Integer_value (as pm@194@01  $FPM) r) $Perm.Write)
  :pattern ((inv@170@01 r))
  :qid |qp-fld-prm-bnd|)))
; [eval] 0 <= i0
(set-option :timeout 0)
(push) ; 5
(assert (not (<= 0 i1@189@01)))
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
(set-option :timeout 0)
(push) ; 5
(set-option :timeout 10)
(assert (not (forall ((r $Ref)) (!
  (and
    (= (Seq_index matrix@156@01 j1@162@01) (Seq_index hist@158@01 i1@169@01))
    (=
      (and
        (img@164@01 r)
        (and (<= 0 (inv@163@01 r)) (< (inv@163@01 r) (* M@154@01 N@155@01))))
      (and
        (img@171@01 r)
        (and (<= 0 (inv@170@01 r)) (< (inv@170@01 r) P@157@01)))))
  
  :qid |quant-u-10024|))))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for snapshot map domain
; Definitional axioms for snapshot map values
; Assume upper permission bound for field Ref__Integer_value
; Assume upper permission bound for field Ref__Integer_value
; [eval] 0 <= i0
(set-option :timeout 0)
(push) ; 5
(assert (not (<= 0 i1@189@01)))
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
(set-option :timeout 0)
(push) ; 5
(set-option :timeout 10)
(assert (not (forall ((r $Ref)) (!
  (and
    (= (Seq_index matrix@156@01 j1@162@01) (Seq_index hist@158@01 i1@169@01))
    (=
      (and
        (img@164@01 r)
        (and (<= 0 (inv@163@01 r)) (< (inv@163@01 r) (* M@154@01 N@155@01))))
      (and
        (img@171@01 r)
        (and (<= 0 (inv@170@01 r)) (< (inv@170@01 r) P@157@01)))))
  
  :qid |quant-u-10025|))))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for snapshot map domain
; Definitional axioms for snapshot map values
; Assume upper permission bound for field Ref__Integer_value
; Assume upper permission bound for field Ref__Integer_value
; [eval] 0 <= i0
(set-option :timeout 0)
(push) ; 5
(assert (not (<= 0 i1@189@01)))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(pop) ; 4
; [eval] old(matrix[Ref__multidim_index_2(M, N, i1, j1)])
; [eval] matrix[Ref__multidim_index_2(M, N, i1, j1)]
; [eval] Ref__multidim_index_2(M, N, i1, j1)
(push) ; 4
; [eval] 0 <= i0
(push) ; 5
(assert (not (<= 0 i1@189@01)))
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
(set-option :timeout 0)
(push) ; 5
(set-option :timeout 10)
(assert (not (forall ((r $Ref)) (!
  (and
    (= (Seq_index matrix@156@01 j1@162@01) (Seq_index hist@158@01 i1@169@01))
    (=
      (and
        (img@164@01 r)
        (and (<= 0 (inv@163@01 r)) (< (inv@163@01 r) (* M@154@01 N@155@01))))
      (and
        (img@171@01 r)
        (and (<= 0 (inv@170@01 r)) (< (inv@170@01 r) P@157@01)))))
  
  :qid |quant-u-10026|))))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for snapshot map domain
; Definitional axioms for snapshot map values
; Assume upper permission bound for field Ref__Integer_value
(assert (forall ((r $Ref)) (!
  (<= ($FVF.perm_Ref__Integer_value (as pm@194@01  $FPM) r) $Perm.Write)
  :pattern ((inv@163@01 r))
  :qid |qp-fld-prm-bnd|)))
; Assume upper permission bound for field Ref__Integer_value
(assert (forall ((r $Ref)) (!
  (<= ($FVF.perm_Ref__Integer_value (as pm@194@01  $FPM) r) $Perm.Write)
  :pattern ((inv@170@01 r))
  :qid |qp-fld-prm-bnd|)))
; [eval] 0 <= i0
(set-option :timeout 0)
(push) ; 5
(assert (not (<= 0 i1@189@01)))
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
(set-option :timeout 0)
(push) ; 5
(set-option :timeout 10)
(assert (not (forall ((r $Ref)) (!
  (and
    (= (Seq_index matrix@156@01 j1@162@01) (Seq_index hist@158@01 i1@169@01))
    (=
      (and
        (img@164@01 r)
        (and (<= 0 (inv@163@01 r)) (< (inv@163@01 r) (* M@154@01 N@155@01))))
      (and
        (img@171@01 r)
        (and (<= 0 (inv@170@01 r)) (< (inv@170@01 r) P@157@01)))))
  
  :qid |quant-u-10027|))))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for snapshot map domain
; Definitional axioms for snapshot map values
; Assume upper permission bound for field Ref__Integer_value
; Assume upper permission bound for field Ref__Integer_value
; [eval] 0 <= i0
(set-option :timeout 0)
(push) ; 5
(assert (not (<= 0 i1@189@01)))
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
(set-option :timeout 0)
(push) ; 5
(set-option :timeout 10)
(assert (not (forall ((r $Ref)) (!
  (and
    (= (Seq_index matrix@156@01 j1@162@01) (Seq_index hist@158@01 i1@169@01))
    (=
      (and
        (img@164@01 r)
        (and (<= 0 (inv@163@01 r)) (< (inv@163@01 r) (* M@154@01 N@155@01))))
      (and
        (img@171@01 r)
        (and (<= 0 (inv@170@01 r)) (< (inv@170@01 r) P@157@01)))))
  
  :qid |quant-u-10028|))))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for snapshot map domain
; Definitional axioms for snapshot map values
; Assume upper permission bound for field Ref__Integer_value
; Assume upper permission bound for field Ref__Integer_value
; [eval] 0 <= i0
(set-option :timeout 0)
(push) ; 5
(assert (not (<= 0 i1@189@01)))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(pop) ; 4
(pop) ; 3
; Nested auxiliary terms: globals (aux)
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@175@01 r)
      (and (<= 0 (inv@174@01 r)) (< (inv@174@01 r) (* M@154@01 N@155@01))))
    (=
      ($FVF.lookup_Ref__Integer_value (as sm@191@01  $FVF<Ref__Integer_value>) r)
      ($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first $t@172@01)) r)))
  :pattern (($FVF.lookup_Ref__Integer_value (as sm@191@01  $FVF<Ref__Integer_value>) r))
  :pattern (($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first $t@172@01)) r))
  :qid |qp.fvfValDef25|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@178@01 r) (and (<= 0 (inv@177@01 r)) (< (inv@177@01 r) P@157@01)))
    (=
      ($FVF.lookup_Ref__Integer_value (as sm@191@01  $FVF<Ref__Integer_value>) r)
      ($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second $t@172@01))) r)))
  :pattern (($FVF.lookup_Ref__Integer_value (as sm@191@01  $FVF<Ref__Integer_value>) r))
  :pattern (($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second $t@172@01))) r))
  :qid |qp.fvfValDef26|)))
(assert (forall ((r $Ref)) (!
  (=
    ($FVF.perm_Ref__Integer_value (as pm@192@01  $FPM) r)
    (+
      (ite
        (and
          (img@175@01 r)
          (and (<= 0 (inv@174@01 r)) (< (inv@174@01 r) (* M@154@01 N@155@01))))
        (/ (to_real 1) (to_real 2))
        $Perm.No)
      (ite
        (and
          (img@178@01 r)
          (and (<= 0 (inv@177@01 r)) (< (inv@177@01 r) P@157@01)))
        $Perm.Write
        $Perm.No)))
  :pattern (($FVF.perm_Ref__Integer_value (as pm@192@01  $FPM) r))
  :qid |qp.resPrmSumDef27|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@164@01 r)
      (and (<= 0 (inv@163@01 r)) (< (inv@163@01 r) (* M@154@01 N@155@01))))
    (=
      ($FVF.lookup_Ref__Integer_value (as sm@193@01  $FVF<Ref__Integer_value>) r)
      ($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@159@01))))))))) r)))
  :pattern (($FVF.lookup_Ref__Integer_value (as sm@193@01  $FVF<Ref__Integer_value>) r))
  :pattern (($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@159@01))))))))) r))
  :qid |qp.fvfValDef28|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@171@01 r) (and (<= 0 (inv@170@01 r)) (< (inv@170@01 r) P@157@01)))
    (=
      ($FVF.lookup_Ref__Integer_value (as sm@193@01  $FVF<Ref__Integer_value>) r)
      ($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@159@01)))))))))))) r)))
  :pattern (($FVF.lookup_Ref__Integer_value (as sm@193@01  $FVF<Ref__Integer_value>) r))
  :pattern (($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@159@01)))))))))))) r))
  :qid |qp.fvfValDef29|)))
(assert (forall ((r $Ref)) (!
  (=
    ($FVF.perm_Ref__Integer_value (as pm@194@01  $FPM) r)
    (+
      (ite
        (and
          (img@164@01 r)
          (and (<= 0 (inv@163@01 r)) (< (inv@163@01 r) (* M@154@01 N@155@01))))
        (/ (to_real 1) (to_real 2))
        $Perm.No)
      (ite
        (and
          (img@171@01 r)
          (and (<= 0 (inv@170@01 r)) (< (inv@170@01 r) P@157@01)))
        $Perm.Write
        $Perm.No)))
  :pattern (($FVF.perm_Ref__Integer_value (as pm@194@01  $FPM) r))
  :qid |qp.resPrmSumDef30|)))
; Nested auxiliary terms: non-globals (aux)
(assert (forall ((i1@189@01 Int) (j1@190@01 Int)) (!
  (and
    (=>
      (<= 0 i1@189@01)
      (and
        (<= 0 i1@189@01)
        (=>
          (< i1@189@01 M@154@01)
          (and
            (< i1@189@01 M@154@01)
            (or (<= 0 j1@190@01) (not (<= 0 j1@190@01)))))
        (or (< i1@189@01 M@154@01) (not (< i1@189@01 M@154@01)))))
    (or (<= 0 i1@189@01) (not (<= 0 i1@189@01)))
    (=>
      (and
        (<= 0 i1@189@01)
        (and
          (< i1@189@01 M@154@01)
          (and (<= 0 j1@190@01) (< j1@190@01 N@155@01))))
      (and
        (<= 0 i1@189@01)
        (< i1@189@01 M@154@01)
        (<= 0 j1@190@01)
        (< j1@190@01 N@155@01)
        (<= 0 M@154@01)
        (<= 0 N@155@01)
        (Ref__multidim_index_2%precondition ($Snap.combine
          $Snap.unit
          ($Snap.combine
            $Snap.unit
            ($Snap.combine
              $Snap.unit
              ($Snap.combine $Snap.unit ($Snap.combine $Snap.unit $Snap.unit))))) M@154@01 N@155@01 i1@189@01 j1@190@01)))
    (or
      (not
        (and
          (<= 0 i1@189@01)
          (and
            (< i1@189@01 M@154@01)
            (and (<= 0 j1@190@01) (< j1@190@01 N@155@01)))))
      (and
        (<= 0 i1@189@01)
        (and
          (< i1@189@01 M@154@01)
          (and (<= 0 j1@190@01) (< j1@190@01 N@155@01))))))
  
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/third_party/testHistogram.vpr@171@12@171@225-aux|)))
(assert (forall ((i1@189@01 Int) (j1@190@01 Int)) (!
  (=>
    (and
      (<= 0 i1@189@01)
      (and (< i1@189@01 M@154@01) (and (<= 0 j1@190@01) (< j1@190@01 N@155@01))))
    (=
      ($FVF.lookup_Ref__Integer_value (as sm@191@01  $FVF<Ref__Integer_value>) (Seq_index
        matrix@156@01
        (Ref__multidim_index_2 ($Snap.combine
          $Snap.unit
          ($Snap.combine
            $Snap.unit
            ($Snap.combine
              $Snap.unit
              ($Snap.combine $Snap.unit ($Snap.combine $Snap.unit $Snap.unit))))) M@154@01 N@155@01 i1@189@01 j1@190@01)))
      ($FVF.lookup_Ref__Integer_value (as sm@193@01  $FVF<Ref__Integer_value>) (Seq_index
        matrix@156@01
        (Ref__multidim_index_2 ($Snap.combine
          $Snap.unit
          ($Snap.combine
            $Snap.unit
            ($Snap.combine
              $Snap.unit
              ($Snap.combine $Snap.unit ($Snap.combine $Snap.unit $Snap.unit))))) M@154@01 N@155@01 i1@189@01 j1@190@01)))))
  
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/third_party/testHistogram.vpr@171@12@171@225|)))
(pop) ; 2
(push) ; 2
; [exec]
; Ref__loop_main_76(diz, current_thread_id, P, hist)
; [eval] diz != null
; [eval] current_thread_id >= 0
; [eval] P <= |hist|
; [eval] |hist|
; [eval] (forall j: Int, k: Int :: { hist[j], hist[k] } 0 <= j && (j < P && (0 <= k && (k < P && j != k))) ==> hist[j] != hist[k])
(declare-const j@195@01 Int)
(declare-const k@196@01 Int)
(push) ; 3
; [eval] 0 <= j && (j < P && (0 <= k && (k < P && j != k))) ==> hist[j] != hist[k]
; [eval] 0 <= j && (j < P && (0 <= k && (k < P && j != k)))
; [eval] 0 <= j
(push) ; 4
; [then-branch: 87 | !(0 <= j@195@01) | live]
; [else-branch: 87 | 0 <= j@195@01 | live]
(push) ; 5
; [then-branch: 87 | !(0 <= j@195@01)]
(assert (not (<= 0 j@195@01)))
(pop) ; 5
(push) ; 5
; [else-branch: 87 | 0 <= j@195@01]
(assert (<= 0 j@195@01))
; [eval] j < P
(push) ; 6
; [then-branch: 88 | !(j@195@01 < P@157@01) | live]
; [else-branch: 88 | j@195@01 < P@157@01 | live]
(push) ; 7
; [then-branch: 88 | !(j@195@01 < P@157@01)]
(assert (not (< j@195@01 P@157@01)))
(pop) ; 7
(push) ; 7
; [else-branch: 88 | j@195@01 < P@157@01]
(assert (< j@195@01 P@157@01))
; [eval] 0 <= k
(push) ; 8
; [then-branch: 89 | !(0 <= k@196@01) | live]
; [else-branch: 89 | 0 <= k@196@01 | live]
(push) ; 9
; [then-branch: 89 | !(0 <= k@196@01)]
(assert (not (<= 0 k@196@01)))
(pop) ; 9
(push) ; 9
; [else-branch: 89 | 0 <= k@196@01]
(assert (<= 0 k@196@01))
; [eval] k < P
(push) ; 10
; [then-branch: 90 | !(k@196@01 < P@157@01) | live]
; [else-branch: 90 | k@196@01 < P@157@01 | live]
(push) ; 11
; [then-branch: 90 | !(k@196@01 < P@157@01)]
(assert (not (< k@196@01 P@157@01)))
(pop) ; 11
(push) ; 11
; [else-branch: 90 | k@196@01 < P@157@01]
(assert (< k@196@01 P@157@01))
; [eval] j != k
(pop) ; 11
(pop) ; 10
; Joined path conditions
; Joined path conditions
(assert (or (< k@196@01 P@157@01) (not (< k@196@01 P@157@01))))
(pop) ; 9
(pop) ; 8
; Joined path conditions
; Joined path conditions
(assert (=>
  (<= 0 k@196@01)
  (and (<= 0 k@196@01) (or (< k@196@01 P@157@01) (not (< k@196@01 P@157@01))))))
(assert (or (<= 0 k@196@01) (not (<= 0 k@196@01))))
(pop) ; 7
(pop) ; 6
; Joined path conditions
; Joined path conditions
(assert (=>
  (< j@195@01 P@157@01)
  (and
    (< j@195@01 P@157@01)
    (=>
      (<= 0 k@196@01)
      (and
        (<= 0 k@196@01)
        (or (< k@196@01 P@157@01) (not (< k@196@01 P@157@01)))))
    (or (<= 0 k@196@01) (not (<= 0 k@196@01))))))
(assert (or (< j@195@01 P@157@01) (not (< j@195@01 P@157@01))))
(pop) ; 5
(pop) ; 4
; Joined path conditions
; Joined path conditions
(assert (=>
  (<= 0 j@195@01)
  (and
    (<= 0 j@195@01)
    (=>
      (< j@195@01 P@157@01)
      (and
        (< j@195@01 P@157@01)
        (=>
          (<= 0 k@196@01)
          (and
            (<= 0 k@196@01)
            (or (< k@196@01 P@157@01) (not (< k@196@01 P@157@01)))))
        (or (<= 0 k@196@01) (not (<= 0 k@196@01)))))
    (or (< j@195@01 P@157@01) (not (< j@195@01 P@157@01))))))
(assert (or (<= 0 j@195@01) (not (<= 0 j@195@01))))
(push) ; 4
; [then-branch: 91 | 0 <= j@195@01 && j@195@01 < P@157@01 && 0 <= k@196@01 && k@196@01 < P@157@01 && j@195@01 != k@196@01 | live]
; [else-branch: 91 | !(0 <= j@195@01 && j@195@01 < P@157@01 && 0 <= k@196@01 && k@196@01 < P@157@01 && j@195@01 != k@196@01) | live]
(push) ; 5
; [then-branch: 91 | 0 <= j@195@01 && j@195@01 < P@157@01 && 0 <= k@196@01 && k@196@01 < P@157@01 && j@195@01 != k@196@01]
(assert (and
  (<= 0 j@195@01)
  (and
    (< j@195@01 P@157@01)
    (and (<= 0 k@196@01) (and (< k@196@01 P@157@01) (not (= j@195@01 k@196@01)))))))
; [eval] hist[j] != hist[k]
; [eval] hist[j]
(push) ; 6
(assert (not (>= j@195@01 0)))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(push) ; 6
(assert (not (< j@195@01 (Seq_length hist@158@01))))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
; [eval] hist[k]
(push) ; 6
(assert (not (>= k@196@01 0)))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(push) ; 6
(assert (not (< k@196@01 (Seq_length hist@158@01))))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(pop) ; 5
(push) ; 5
; [else-branch: 91 | !(0 <= j@195@01 && j@195@01 < P@157@01 && 0 <= k@196@01 && k@196@01 < P@157@01 && j@195@01 != k@196@01)]
(assert (not
  (and
    (<= 0 j@195@01)
    (and
      (< j@195@01 P@157@01)
      (and
        (<= 0 k@196@01)
        (and (< k@196@01 P@157@01) (not (= j@195@01 k@196@01))))))))
(pop) ; 5
(pop) ; 4
; Joined path conditions
(assert (=>
  (and
    (<= 0 j@195@01)
    (and
      (< j@195@01 P@157@01)
      (and
        (<= 0 k@196@01)
        (and (< k@196@01 P@157@01) (not (= j@195@01 k@196@01))))))
  (and
    (<= 0 j@195@01)
    (< j@195@01 P@157@01)
    (<= 0 k@196@01)
    (< k@196@01 P@157@01)
    (not (= j@195@01 k@196@01)))))
; Joined path conditions
(assert (or
  (not
    (and
      (<= 0 j@195@01)
      (and
        (< j@195@01 P@157@01)
        (and
          (<= 0 k@196@01)
          (and (< k@196@01 P@157@01) (not (= j@195@01 k@196@01)))))))
  (and
    (<= 0 j@195@01)
    (and
      (< j@195@01 P@157@01)
      (and
        (<= 0 k@196@01)
        (and (< k@196@01 P@157@01) (not (= j@195@01 k@196@01))))))))
(pop) ; 3
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall ((j@195@01 Int) (k@196@01 Int)) (!
  (and
    (=>
      (<= 0 j@195@01)
      (and
        (<= 0 j@195@01)
        (=>
          (< j@195@01 P@157@01)
          (and
            (< j@195@01 P@157@01)
            (=>
              (<= 0 k@196@01)
              (and
                (<= 0 k@196@01)
                (or (< k@196@01 P@157@01) (not (< k@196@01 P@157@01)))))
            (or (<= 0 k@196@01) (not (<= 0 k@196@01)))))
        (or (< j@195@01 P@157@01) (not (< j@195@01 P@157@01)))))
    (or (<= 0 j@195@01) (not (<= 0 j@195@01)))
    (=>
      (and
        (<= 0 j@195@01)
        (and
          (< j@195@01 P@157@01)
          (and
            (<= 0 k@196@01)
            (and (< k@196@01 P@157@01) (not (= j@195@01 k@196@01))))))
      (and
        (<= 0 j@195@01)
        (< j@195@01 P@157@01)
        (<= 0 k@196@01)
        (< k@196@01 P@157@01)
        (not (= j@195@01 k@196@01))))
    (or
      (not
        (and
          (<= 0 j@195@01)
          (and
            (< j@195@01 P@157@01)
            (and
              (<= 0 k@196@01)
              (and (< k@196@01 P@157@01) (not (= j@195@01 k@196@01)))))))
      (and
        (<= 0 j@195@01)
        (and
          (< j@195@01 P@157@01)
          (and
            (<= 0 k@196@01)
            (and (< k@196@01 P@157@01) (not (= j@195@01 k@196@01))))))))
  :pattern ((Seq_index hist@158@01 j@195@01) (Seq_index hist@158@01 k@196@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/third_party/testHistogram.vpr@76@12@76@104-aux|)))
(push) ; 3
(assert (not (forall ((j@195@01 Int) (k@196@01 Int)) (!
  (=>
    (and
      (<= 0 j@195@01)
      (and
        (< j@195@01 P@157@01)
        (and
          (<= 0 k@196@01)
          (and (< k@196@01 P@157@01) (not (= j@195@01 k@196@01))))))
    (not (= (Seq_index hist@158@01 j@195@01) (Seq_index hist@158@01 k@196@01))))
  :pattern ((Seq_index hist@158@01 j@195@01) (Seq_index hist@158@01 k@196@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/third_party/testHistogram.vpr@76@12@76@104|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(assert (forall ((j@195@01 Int) (k@196@01 Int)) (!
  (=>
    (and
      (<= 0 j@195@01)
      (and
        (< j@195@01 P@157@01)
        (and
          (<= 0 k@196@01)
          (and (< k@196@01 P@157@01) (not (= j@195@01 k@196@01))))))
    (not (= (Seq_index hist@158@01 j@195@01) (Seq_index hist@158@01 k@196@01))))
  :pattern ((Seq_index hist@158@01 j@195@01) (Seq_index hist@158@01 k@196@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/third_party/testHistogram.vpr@76@12@76@104|)))
(declare-const k@197@01 Int)
(push) ; 3
; [eval] 0 <= k && k < P
; [eval] 0 <= k
(push) ; 4
; [then-branch: 92 | !(0 <= k@197@01) | live]
; [else-branch: 92 | 0 <= k@197@01 | live]
(push) ; 5
; [then-branch: 92 | !(0 <= k@197@01)]
(assert (not (<= 0 k@197@01)))
(pop) ; 5
(push) ; 5
; [else-branch: 92 | 0 <= k@197@01]
(assert (<= 0 k@197@01))
; [eval] k < P
(pop) ; 5
(pop) ; 4
; Joined path conditions
; Joined path conditions
(assert (or (<= 0 k@197@01) (not (<= 0 k@197@01))))
(assert (and (<= 0 k@197@01) (< k@197@01 P@157@01)))
; [eval] hist[k]
(push) ; 4
(assert (not (>= k@197@01 0)))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(push) ; 4
(assert (not (< k@197@01 (Seq_length hist@158@01))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(pop) ; 3
(declare-fun inv@198@01 ($Ref) Int)
(declare-fun img@199@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
(assert (forall ((k@197@01 Int)) (!
  (=>
    (and (<= 0 k@197@01) (< k@197@01 P@157@01))
    (or (<= 0 k@197@01) (not (<= 0 k@197@01))))
  :pattern ((Seq_index hist@158@01 k@197@01))
  :qid |Ref__Integer_value-aux|)))
; Check receiver injectivity
(push) ; 3
(assert (not (forall ((k1@197@01 Int) (k2@197@01 Int)) (!
  (=>
    (and
      (and (<= 0 k1@197@01) (< k1@197@01 P@157@01))
      (and (<= 0 k2@197@01) (< k2@197@01 P@157@01))
      (= (Seq_index hist@158@01 k1@197@01) (Seq_index hist@158@01 k2@197@01)))
    (= k1@197@01 k2@197@01))
  
  :qid |Ref__Integer_value-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((k@197@01 Int)) (!
  (=>
    (and (<= 0 k@197@01) (< k@197@01 P@157@01))
    (and
      (= (inv@198@01 (Seq_index hist@158@01 k@197@01)) k@197@01)
      (img@199@01 (Seq_index hist@158@01 k@197@01))))
  :pattern ((Seq_index hist@158@01 k@197@01))
  :qid |Ref__Integer_value-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@199@01 r) (and (<= 0 (inv@198@01 r)) (< (inv@198@01 r) P@157@01)))
    (= (Seq_index hist@158@01 (inv@198@01 r)) r))
  :pattern ((inv@198@01 r))
  :qid |Ref__Integer_value-fctOfInv|)))
(push) ; 3
(set-option :timeout 10)
(assert (not (forall ((k@197@01 Int)) (!
  (= (Seq_index hist@158@01 k@197@01) (Seq_index matrix@156@01 k@197@01))
  
  :qid |quant-u-10030|))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Precomputing data for removing quantified permissions
(define-fun pTaken@200@01 ((r $Ref)) $Perm
  (ite
    (and
      (and (<= 0 (inv@198@01 r)) (< (inv@198@01 r) P@157@01))
      (img@199@01 r)
      (= r (Seq_index hist@158@01 (inv@198@01 r))))
    ($Perm.min
      (ite
        (and
          (img@171@01 r)
          (and (<= 0 (inv@170@01 r)) (< (inv@170@01 r) P@157@01)))
        $Perm.Write
        $Perm.No)
      $Perm.Write)
    $Perm.No))
(define-fun pTaken@201@01 ((r $Ref)) $Perm
  (ite
    (and
      (and (<= 0 (inv@198@01 r)) (< (inv@198@01 r) P@157@01))
      (img@199@01 r)
      (= r (Seq_index hist@158@01 (inv@198@01 r))))
    ($Perm.min
      (ite
        (and
          (img@164@01 r)
          (and (<= 0 (inv@163@01 r)) (< (inv@163@01 r) (* M@154@01 N@155@01))))
        (/ (to_real 1) (to_real 2))
        $Perm.No)
      (- $Perm.Write (pTaken@200@01 r)))
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
          (img@171@01 r)
          (and (<= 0 (inv@170@01 r)) (< (inv@170@01 r) P@157@01)))
        $Perm.Write
        $Perm.No)
      (pTaken@200@01 r))
    $Perm.No)
  
  :qid |quant-u-10032|))))
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
      (and (<= 0 (inv@198@01 r)) (< (inv@198@01 r) P@157@01))
      (img@199@01 r)
      (= r (Seq_index hist@158@01 (inv@198@01 r))))
    (= (- $Perm.Write (pTaken@200@01 r)) $Perm.No))
  
  :qid |quant-u-10033|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Final check if taken enough permissions
; Done removing quantified permissions
(declare-const $t@202@01 $Snap)
(assert (= $t@202@01 ($Snap.combine ($Snap.first $t@202@01) ($Snap.second $t@202@01))))
(declare-const k@203@01 Int)
(set-option :timeout 0)
(push) ; 3
; [eval] 0 <= k && k < P
; [eval] 0 <= k
(push) ; 4
; [then-branch: 93 | !(0 <= k@203@01) | live]
; [else-branch: 93 | 0 <= k@203@01 | live]
(push) ; 5
; [then-branch: 93 | !(0 <= k@203@01)]
(assert (not (<= 0 k@203@01)))
(pop) ; 5
(push) ; 5
; [else-branch: 93 | 0 <= k@203@01]
(assert (<= 0 k@203@01))
; [eval] k < P
(pop) ; 5
(pop) ; 4
; Joined path conditions
; Joined path conditions
(assert (or (<= 0 k@203@01) (not (<= 0 k@203@01))))
(assert (and (<= 0 k@203@01) (< k@203@01 P@157@01)))
; [eval] hist[k]
(push) ; 4
(assert (not (>= k@203@01 0)))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(push) ; 4
(assert (not (< k@203@01 (Seq_length hist@158@01))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(pop) ; 3
(declare-fun inv@204@01 ($Ref) Int)
(declare-fun img@205@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
(assert (forall ((k@203@01 Int)) (!
  (=>
    (and (<= 0 k@203@01) (< k@203@01 P@157@01))
    (or (<= 0 k@203@01) (not (<= 0 k@203@01))))
  :pattern ((Seq_index hist@158@01 k@203@01))
  :qid |Ref__Integer_value-aux|)))
; Check receiver injectivity
(push) ; 3
(assert (not (forall ((k1@203@01 Int) (k2@203@01 Int)) (!
  (=>
    (and
      (and (<= 0 k1@203@01) (< k1@203@01 P@157@01))
      (and (<= 0 k2@203@01) (< k2@203@01 P@157@01))
      (= (Seq_index hist@158@01 k1@203@01) (Seq_index hist@158@01 k2@203@01)))
    (= k1@203@01 k2@203@01))
  
  :qid |Ref__Integer_value-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((k@203@01 Int)) (!
  (=>
    (and (<= 0 k@203@01) (< k@203@01 P@157@01))
    (and
      (= (inv@204@01 (Seq_index hist@158@01 k@203@01)) k@203@01)
      (img@205@01 (Seq_index hist@158@01 k@203@01))))
  :pattern ((Seq_index hist@158@01 k@203@01))
  :qid |quant-u-10035|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@205@01 r) (and (<= 0 (inv@204@01 r)) (< (inv@204@01 r) P@157@01)))
    (= (Seq_index hist@158@01 (inv@204@01 r)) r))
  :pattern ((inv@204@01 r))
  :qid |Ref__Integer_value-fctOfInv|)))
; Permissions are non-negative
; Field permissions are at most one
; Permission implies non-null receiver
(assert (forall ((k@203@01 Int)) (!
  (=>
    (and (<= 0 k@203@01) (< k@203@01 P@157@01))
    (not (= (Seq_index hist@158@01 k@203@01) $Ref.null)))
  :pattern ((Seq_index hist@158@01 k@203@01))
  :qid |Ref__Integer_value-permImpliesNonNull|)))
(push) ; 3
(set-option :timeout 10)
(assert (not (forall ((r $Ref)) (!
  (and
    (= (Seq_index hist@158@01 k@203@01) (Seq_index matrix@156@01 j1@162@01))
    (=
      (and
        (img@205@01 r)
        (and (<= 0 (inv@204@01 r)) (< (inv@204@01 r) P@157@01)))
      (and
        (img@164@01 r)
        (and (<= 0 (inv@163@01 r)) (< (inv@163@01 r) (* M@154@01 N@155@01))))))
  
  :qid |quant-u-10036|))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(assert (= ($Snap.second $t@202@01) $Snap.unit))
; [eval] (forall k: Int :: { hist[k] } 0 <= k && k < P ==> hist[k].Ref__Integer_value == 0)
(declare-const k@206@01 Int)
(set-option :timeout 0)
(push) ; 3
; [eval] 0 <= k && k < P ==> hist[k].Ref__Integer_value == 0
; [eval] 0 <= k && k < P
; [eval] 0 <= k
(push) ; 4
; [then-branch: 94 | !(0 <= k@206@01) | live]
; [else-branch: 94 | 0 <= k@206@01 | live]
(push) ; 5
; [then-branch: 94 | !(0 <= k@206@01)]
(assert (not (<= 0 k@206@01)))
(pop) ; 5
(push) ; 5
; [else-branch: 94 | 0 <= k@206@01]
(assert (<= 0 k@206@01))
; [eval] k < P
(pop) ; 5
(pop) ; 4
; Joined path conditions
; Joined path conditions
(assert (or (<= 0 k@206@01) (not (<= 0 k@206@01))))
(push) ; 4
; [then-branch: 95 | 0 <= k@206@01 && k@206@01 < P@157@01 | live]
; [else-branch: 95 | !(0 <= k@206@01 && k@206@01 < P@157@01) | live]
(push) ; 5
; [then-branch: 95 | 0 <= k@206@01 && k@206@01 < P@157@01]
(assert (and (<= 0 k@206@01) (< k@206@01 P@157@01)))
; [eval] hist[k].Ref__Integer_value == 0
; [eval] hist[k]
(push) ; 6
(assert (not (>= k@206@01 0)))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(push) ; 6
(assert (not (< k@206@01 (Seq_length hist@158@01))))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(declare-const sm@207@01 $FVF<Ref__Integer_value>)
; Definitional axioms for snapshot map values
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@164@01 r)
      (and (<= 0 (inv@163@01 r)) (< (inv@163@01 r) (* M@154@01 N@155@01))))
    (=
      ($FVF.lookup_Ref__Integer_value (as sm@207@01  $FVF<Ref__Integer_value>) r)
      ($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@159@01))))))))) r)))
  :pattern (($FVF.lookup_Ref__Integer_value (as sm@207@01  $FVF<Ref__Integer_value>) r))
  :pattern (($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@159@01))))))))) r))
  :qid |qp.fvfValDef31|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@205@01 r) (and (<= 0 (inv@204@01 r)) (< (inv@204@01 r) P@157@01)))
    (=
      ($FVF.lookup_Ref__Integer_value (as sm@207@01  $FVF<Ref__Integer_value>) r)
      ($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first $t@202@01)) r)))
  :pattern (($FVF.lookup_Ref__Integer_value (as sm@207@01  $FVF<Ref__Integer_value>) r))
  :pattern (($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first $t@202@01)) r))
  :qid |qp.fvfValDef32|)))
(declare-const pm@208@01 $FPM)
(assert (forall ((r $Ref)) (!
  (=
    ($FVF.perm_Ref__Integer_value (as pm@208@01  $FPM) r)
    (+
      (ite
        (and
          (img@164@01 r)
          (and (<= 0 (inv@163@01 r)) (< (inv@163@01 r) (* M@154@01 N@155@01))))
        (/ (to_real 1) (to_real 2))
        $Perm.No)
      (ite
        (and
          (img@205@01 r)
          (and (<= 0 (inv@204@01 r)) (< (inv@204@01 r) P@157@01)))
        $Perm.Write
        $Perm.No)))
  :pattern (($FVF.perm_Ref__Integer_value (as pm@208@01  $FPM) r))
  :qid |qp.resPrmSumDef33|)))
(push) ; 6
(assert (not (<
  $Perm.No
  ($FVF.perm_Ref__Integer_value (as pm@208@01  $FPM) (Seq_index
    hist@158@01
    k@206@01)))))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(pop) ; 5
(push) ; 5
; [else-branch: 95 | !(0 <= k@206@01 && k@206@01 < P@157@01)]
(assert (not (and (<= 0 k@206@01) (< k@206@01 P@157@01))))
(pop) ; 5
(pop) ; 4
; Joined path conditions
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@164@01 r)
      (and (<= 0 (inv@163@01 r)) (< (inv@163@01 r) (* M@154@01 N@155@01))))
    (=
      ($FVF.lookup_Ref__Integer_value (as sm@207@01  $FVF<Ref__Integer_value>) r)
      ($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@159@01))))))))) r)))
  :pattern (($FVF.lookup_Ref__Integer_value (as sm@207@01  $FVF<Ref__Integer_value>) r))
  :pattern (($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@159@01))))))))) r))
  :qid |qp.fvfValDef31|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@205@01 r) (and (<= 0 (inv@204@01 r)) (< (inv@204@01 r) P@157@01)))
    (=
      ($FVF.lookup_Ref__Integer_value (as sm@207@01  $FVF<Ref__Integer_value>) r)
      ($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first $t@202@01)) r)))
  :pattern (($FVF.lookup_Ref__Integer_value (as sm@207@01  $FVF<Ref__Integer_value>) r))
  :pattern (($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first $t@202@01)) r))
  :qid |qp.fvfValDef32|)))
(assert (forall ((r $Ref)) (!
  (=
    ($FVF.perm_Ref__Integer_value (as pm@208@01  $FPM) r)
    (+
      (ite
        (and
          (img@164@01 r)
          (and (<= 0 (inv@163@01 r)) (< (inv@163@01 r) (* M@154@01 N@155@01))))
        (/ (to_real 1) (to_real 2))
        $Perm.No)
      (ite
        (and
          (img@205@01 r)
          (and (<= 0 (inv@204@01 r)) (< (inv@204@01 r) P@157@01)))
        $Perm.Write
        $Perm.No)))
  :pattern (($FVF.perm_Ref__Integer_value (as pm@208@01  $FPM) r))
  :qid |qp.resPrmSumDef33|)))
; Joined path conditions
(assert (or
  (not (and (<= 0 k@206@01) (< k@206@01 P@157@01)))
  (and (<= 0 k@206@01) (< k@206@01 P@157@01))))
(pop) ; 3
; Nested auxiliary terms: globals (aux)
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@164@01 r)
      (and (<= 0 (inv@163@01 r)) (< (inv@163@01 r) (* M@154@01 N@155@01))))
    (=
      ($FVF.lookup_Ref__Integer_value (as sm@207@01  $FVF<Ref__Integer_value>) r)
      ($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@159@01))))))))) r)))
  :pattern (($FVF.lookup_Ref__Integer_value (as sm@207@01  $FVF<Ref__Integer_value>) r))
  :pattern (($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@159@01))))))))) r))
  :qid |qp.fvfValDef31|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@205@01 r) (and (<= 0 (inv@204@01 r)) (< (inv@204@01 r) P@157@01)))
    (=
      ($FVF.lookup_Ref__Integer_value (as sm@207@01  $FVF<Ref__Integer_value>) r)
      ($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first $t@202@01)) r)))
  :pattern (($FVF.lookup_Ref__Integer_value (as sm@207@01  $FVF<Ref__Integer_value>) r))
  :pattern (($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first $t@202@01)) r))
  :qid |qp.fvfValDef32|)))
(assert (forall ((r $Ref)) (!
  (=
    ($FVF.perm_Ref__Integer_value (as pm@208@01  $FPM) r)
    (+
      (ite
        (and
          (img@164@01 r)
          (and (<= 0 (inv@163@01 r)) (< (inv@163@01 r) (* M@154@01 N@155@01))))
        (/ (to_real 1) (to_real 2))
        $Perm.No)
      (ite
        (and
          (img@205@01 r)
          (and (<= 0 (inv@204@01 r)) (< (inv@204@01 r) P@157@01)))
        $Perm.Write
        $Perm.No)))
  :pattern (($FVF.perm_Ref__Integer_value (as pm@208@01  $FPM) r))
  :qid |qp.resPrmSumDef33|)))
; Nested auxiliary terms: non-globals (aux)
(assert (forall ((k@206@01 Int)) (!
  (and
    (or (<= 0 k@206@01) (not (<= 0 k@206@01)))
    (or
      (not (and (<= 0 k@206@01) (< k@206@01 P@157@01)))
      (and (<= 0 k@206@01) (< k@206@01 P@157@01))))
  :pattern ((Seq_index hist@158@01 k@206@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/third_party/testHistogram.vpr@79@12@79@86-aux|)))
(assert (forall ((k@206@01 Int)) (!
  (=>
    (and (<= 0 k@206@01) (< k@206@01 P@157@01))
    (=
      ($FVF.lookup_Ref__Integer_value (as sm@207@01  $FVF<Ref__Integer_value>) (Seq_index
        hist@158@01
        k@206@01))
      0))
  :pattern ((Seq_index hist@158@01 k@206@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/third_party/testHistogram.vpr@79@12@79@86|)))
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
; [exec]
; Ref__loop_main_96(diz, current_thread_id, P, N, M, matrix, hist)
; [eval] diz != null
; [eval] current_thread_id >= 0
; [eval] M > 0
; [eval] N > 0
; [eval] P > 0
; [eval] P <= |hist|
; [eval] |hist|
; [eval] (forall j: Int, k: Int :: { hist[j], hist[k] } 0 <= j && (j < P && (0 <= k && (k < P && j != k))) ==> hist[j] != hist[k])
(declare-const j@209@01 Int)
(declare-const k@210@01 Int)
(set-option :timeout 0)
(push) ; 3
; [eval] 0 <= j && (j < P && (0 <= k && (k < P && j != k))) ==> hist[j] != hist[k]
; [eval] 0 <= j && (j < P && (0 <= k && (k < P && j != k)))
; [eval] 0 <= j
(push) ; 4
; [then-branch: 96 | !(0 <= j@209@01) | live]
; [else-branch: 96 | 0 <= j@209@01 | live]
(push) ; 5
; [then-branch: 96 | !(0 <= j@209@01)]
(assert (not (<= 0 j@209@01)))
(pop) ; 5
(push) ; 5
; [else-branch: 96 | 0 <= j@209@01]
(assert (<= 0 j@209@01))
; [eval] j < P
(push) ; 6
; [then-branch: 97 | !(j@209@01 < P@157@01) | live]
; [else-branch: 97 | j@209@01 < P@157@01 | live]
(push) ; 7
; [then-branch: 97 | !(j@209@01 < P@157@01)]
(assert (not (< j@209@01 P@157@01)))
(pop) ; 7
(push) ; 7
; [else-branch: 97 | j@209@01 < P@157@01]
(assert (< j@209@01 P@157@01))
; [eval] 0 <= k
(push) ; 8
; [then-branch: 98 | !(0 <= k@210@01) | live]
; [else-branch: 98 | 0 <= k@210@01 | live]
(push) ; 9
; [then-branch: 98 | !(0 <= k@210@01)]
(assert (not (<= 0 k@210@01)))
(pop) ; 9
(push) ; 9
; [else-branch: 98 | 0 <= k@210@01]
(assert (<= 0 k@210@01))
; [eval] k < P
(push) ; 10
; [then-branch: 99 | !(k@210@01 < P@157@01) | live]
; [else-branch: 99 | k@210@01 < P@157@01 | live]
(push) ; 11
; [then-branch: 99 | !(k@210@01 < P@157@01)]
(assert (not (< k@210@01 P@157@01)))
(pop) ; 11
(push) ; 11
; [else-branch: 99 | k@210@01 < P@157@01]
(assert (< k@210@01 P@157@01))
; [eval] j != k
(pop) ; 11
(pop) ; 10
; Joined path conditions
; Joined path conditions
(assert (or (< k@210@01 P@157@01) (not (< k@210@01 P@157@01))))
(pop) ; 9
(pop) ; 8
; Joined path conditions
; Joined path conditions
(assert (=>
  (<= 0 k@210@01)
  (and (<= 0 k@210@01) (or (< k@210@01 P@157@01) (not (< k@210@01 P@157@01))))))
(assert (or (<= 0 k@210@01) (not (<= 0 k@210@01))))
(pop) ; 7
(pop) ; 6
; Joined path conditions
; Joined path conditions
(assert (=>
  (< j@209@01 P@157@01)
  (and
    (< j@209@01 P@157@01)
    (=>
      (<= 0 k@210@01)
      (and
        (<= 0 k@210@01)
        (or (< k@210@01 P@157@01) (not (< k@210@01 P@157@01)))))
    (or (<= 0 k@210@01) (not (<= 0 k@210@01))))))
(assert (or (< j@209@01 P@157@01) (not (< j@209@01 P@157@01))))
(pop) ; 5
(pop) ; 4
; Joined path conditions
; Joined path conditions
(assert (=>
  (<= 0 j@209@01)
  (and
    (<= 0 j@209@01)
    (=>
      (< j@209@01 P@157@01)
      (and
        (< j@209@01 P@157@01)
        (=>
          (<= 0 k@210@01)
          (and
            (<= 0 k@210@01)
            (or (< k@210@01 P@157@01) (not (< k@210@01 P@157@01)))))
        (or (<= 0 k@210@01) (not (<= 0 k@210@01)))))
    (or (< j@209@01 P@157@01) (not (< j@209@01 P@157@01))))))
(assert (or (<= 0 j@209@01) (not (<= 0 j@209@01))))
(push) ; 4
; [then-branch: 100 | 0 <= j@209@01 && j@209@01 < P@157@01 && 0 <= k@210@01 && k@210@01 < P@157@01 && j@209@01 != k@210@01 | live]
; [else-branch: 100 | !(0 <= j@209@01 && j@209@01 < P@157@01 && 0 <= k@210@01 && k@210@01 < P@157@01 && j@209@01 != k@210@01) | live]
(push) ; 5
; [then-branch: 100 | 0 <= j@209@01 && j@209@01 < P@157@01 && 0 <= k@210@01 && k@210@01 < P@157@01 && j@209@01 != k@210@01]
(assert (and
  (<= 0 j@209@01)
  (and
    (< j@209@01 P@157@01)
    (and (<= 0 k@210@01) (and (< k@210@01 P@157@01) (not (= j@209@01 k@210@01)))))))
; [eval] hist[j] != hist[k]
; [eval] hist[j]
(push) ; 6
(assert (not (>= j@209@01 0)))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(push) ; 6
(assert (not (< j@209@01 (Seq_length hist@158@01))))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
; [eval] hist[k]
(push) ; 6
(assert (not (>= k@210@01 0)))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(push) ; 6
(assert (not (< k@210@01 (Seq_length hist@158@01))))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(pop) ; 5
(push) ; 5
; [else-branch: 100 | !(0 <= j@209@01 && j@209@01 < P@157@01 && 0 <= k@210@01 && k@210@01 < P@157@01 && j@209@01 != k@210@01)]
(assert (not
  (and
    (<= 0 j@209@01)
    (and
      (< j@209@01 P@157@01)
      (and
        (<= 0 k@210@01)
        (and (< k@210@01 P@157@01) (not (= j@209@01 k@210@01))))))))
(pop) ; 5
(pop) ; 4
; Joined path conditions
(assert (=>
  (and
    (<= 0 j@209@01)
    (and
      (< j@209@01 P@157@01)
      (and
        (<= 0 k@210@01)
        (and (< k@210@01 P@157@01) (not (= j@209@01 k@210@01))))))
  (and
    (<= 0 j@209@01)
    (< j@209@01 P@157@01)
    (<= 0 k@210@01)
    (< k@210@01 P@157@01)
    (not (= j@209@01 k@210@01)))))
; Joined path conditions
(assert (or
  (not
    (and
      (<= 0 j@209@01)
      (and
        (< j@209@01 P@157@01)
        (and
          (<= 0 k@210@01)
          (and (< k@210@01 P@157@01) (not (= j@209@01 k@210@01)))))))
  (and
    (<= 0 j@209@01)
    (and
      (< j@209@01 P@157@01)
      (and
        (<= 0 k@210@01)
        (and (< k@210@01 P@157@01) (not (= j@209@01 k@210@01))))))))
(pop) ; 3
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall ((j@209@01 Int) (k@210@01 Int)) (!
  (and
    (=>
      (<= 0 j@209@01)
      (and
        (<= 0 j@209@01)
        (=>
          (< j@209@01 P@157@01)
          (and
            (< j@209@01 P@157@01)
            (=>
              (<= 0 k@210@01)
              (and
                (<= 0 k@210@01)
                (or (< k@210@01 P@157@01) (not (< k@210@01 P@157@01)))))
            (or (<= 0 k@210@01) (not (<= 0 k@210@01)))))
        (or (< j@209@01 P@157@01) (not (< j@209@01 P@157@01)))))
    (or (<= 0 j@209@01) (not (<= 0 j@209@01)))
    (=>
      (and
        (<= 0 j@209@01)
        (and
          (< j@209@01 P@157@01)
          (and
            (<= 0 k@210@01)
            (and (< k@210@01 P@157@01) (not (= j@209@01 k@210@01))))))
      (and
        (<= 0 j@209@01)
        (< j@209@01 P@157@01)
        (<= 0 k@210@01)
        (< k@210@01 P@157@01)
        (not (= j@209@01 k@210@01))))
    (or
      (not
        (and
          (<= 0 j@209@01)
          (and
            (< j@209@01 P@157@01)
            (and
              (<= 0 k@210@01)
              (and (< k@210@01 P@157@01) (not (= j@209@01 k@210@01)))))))
      (and
        (<= 0 j@209@01)
        (and
          (< j@209@01 P@157@01)
          (and
            (<= 0 k@210@01)
            (and (< k@210@01 P@157@01) (not (= j@209@01 k@210@01))))))))
  :pattern ((Seq_index hist@158@01 j@209@01) (Seq_index hist@158@01 k@210@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/third_party/testHistogram.vpr@106@12@106@104-aux|)))
(push) ; 3
(assert (not (forall ((j@209@01 Int) (k@210@01 Int)) (!
  (=>
    (and
      (<= 0 j@209@01)
      (and
        (< j@209@01 P@157@01)
        (and
          (<= 0 k@210@01)
          (and (< k@210@01 P@157@01) (not (= j@209@01 k@210@01))))))
    (not (= (Seq_index hist@158@01 j@209@01) (Seq_index hist@158@01 k@210@01))))
  :pattern ((Seq_index hist@158@01 j@209@01) (Seq_index hist@158@01 k@210@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/third_party/testHistogram.vpr@106@12@106@104|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(assert (forall ((j@209@01 Int) (k@210@01 Int)) (!
  (=>
    (and
      (<= 0 j@209@01)
      (and
        (< j@209@01 P@157@01)
        (and
          (<= 0 k@210@01)
          (and (< k@210@01 P@157@01) (not (= j@209@01 k@210@01))))))
    (not (= (Seq_index hist@158@01 j@209@01) (Seq_index hist@158@01 k@210@01))))
  :pattern ((Seq_index hist@158@01 j@209@01) (Seq_index hist@158@01 k@210@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/third_party/testHistogram.vpr@106@12@106@104|)))
(declare-const k@211@01 Int)
(push) ; 3
; [eval] 0 <= k && k < P
; [eval] 0 <= k
(push) ; 4
; [then-branch: 101 | !(0 <= k@211@01) | live]
; [else-branch: 101 | 0 <= k@211@01 | live]
(push) ; 5
; [then-branch: 101 | !(0 <= k@211@01)]
(assert (not (<= 0 k@211@01)))
(pop) ; 5
(push) ; 5
; [else-branch: 101 | 0 <= k@211@01]
(assert (<= 0 k@211@01))
; [eval] k < P
(pop) ; 5
(pop) ; 4
; Joined path conditions
; Joined path conditions
(assert (or (<= 0 k@211@01) (not (<= 0 k@211@01))))
(assert (and (<= 0 k@211@01) (< k@211@01 P@157@01)))
; [eval] hist[k]
(push) ; 4
(assert (not (>= k@211@01 0)))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(push) ; 4
(assert (not (< k@211@01 (Seq_length hist@158@01))))
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
(assert (forall ((k@211@01 Int)) (!
  (=>
    (and (<= 0 k@211@01) (< k@211@01 P@157@01))
    (or (<= 0 k@211@01) (not (<= 0 k@211@01))))
  :pattern ((Seq_index hist@158@01 k@211@01))
  :qid |Ref__Integer_value-aux|)))
; Check receiver injectivity
(push) ; 3
(assert (not (forall ((k1@211@01 Int) (k2@211@01 Int)) (!
  (=>
    (and
      (and (<= 0 k1@211@01) (< k1@211@01 P@157@01))
      (and (<= 0 k2@211@01) (< k2@211@01 P@157@01))
      (= (Seq_index hist@158@01 k1@211@01) (Seq_index hist@158@01 k2@211@01)))
    (= k1@211@01 k2@211@01))
  
  :qid |Ref__Integer_value-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((k@211@01 Int)) (!
  (=>
    (and (<= 0 k@211@01) (< k@211@01 P@157@01))
    (and
      (= (inv@212@01 (Seq_index hist@158@01 k@211@01)) k@211@01)
      (img@213@01 (Seq_index hist@158@01 k@211@01))))
  :pattern ((Seq_index hist@158@01 k@211@01))
  :qid |Ref__Integer_value-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@213@01 r) (and (<= 0 (inv@212@01 r)) (< (inv@212@01 r) P@157@01)))
    (= (Seq_index hist@158@01 (inv@212@01 r)) r))
  :pattern ((inv@212@01 r))
  :qid |Ref__Integer_value-fctOfInv|)))
(push) ; 3
(set-option :timeout 10)
(assert (not (forall ((k@211@01 Int)) (!
  (= (Seq_index hist@158@01 k@211@01) (Seq_index matrix@156@01 k@211@01))
  
  :qid |quant-u-10038|))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Precomputing data for removing quantified permissions
(define-fun pTaken@214@01 ((r $Ref)) $Perm
  (ite
    (and
      (and (<= 0 (inv@212@01 r)) (< (inv@212@01 r) P@157@01))
      (img@213@01 r)
      (= r (Seq_index hist@158@01 (inv@212@01 r))))
    ($Perm.min
      (ite
        (and
          (img@205@01 r)
          (and (<= 0 (inv@204@01 r)) (< (inv@204@01 r) P@157@01)))
        $Perm.Write
        $Perm.No)
      $Perm.Write)
    $Perm.No))
(define-fun pTaken@215@01 ((r $Ref)) $Perm
  (ite
    (and
      (and (<= 0 (inv@212@01 r)) (< (inv@212@01 r) P@157@01))
      (img@213@01 r)
      (= r (Seq_index hist@158@01 (inv@212@01 r))))
    ($Perm.min
      (ite
        (and
          (img@164@01 r)
          (and (<= 0 (inv@163@01 r)) (< (inv@163@01 r) (* M@154@01 N@155@01))))
        (/ (to_real 1) (to_real 2))
        $Perm.No)
      (- $Perm.Write (pTaken@214@01 r)))
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
          (img@205@01 r)
          (and (<= 0 (inv@204@01 r)) (< (inv@204@01 r) P@157@01)))
        $Perm.Write
        $Perm.No)
      (pTaken@214@01 r))
    $Perm.No)
  
  :qid |quant-u-10040|))))
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
      (and (<= 0 (inv@212@01 r)) (< (inv@212@01 r) P@157@01))
      (img@213@01 r)
      (= r (Seq_index hist@158@01 (inv@212@01 r))))
    (= (- $Perm.Write (pTaken@214@01 r)) $Perm.No))
  
  :qid |quant-u-10041|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Final check if taken enough permissions
; Done removing quantified permissions
; [eval] M * N <= |matrix|
; [eval] M * N
; [eval] |matrix|
; [eval] (forall j: Int, k: Int :: { matrix[j], matrix[k] } 0 <= j && (j < M * N && (0 <= k && (k < M * N && j != k))) ==> matrix[j] != matrix[k])
(declare-const j@216@01 Int)
(declare-const k@217@01 Int)
(set-option :timeout 0)
(push) ; 3
; [eval] 0 <= j && (j < M * N && (0 <= k && (k < M * N && j != k))) ==> matrix[j] != matrix[k]
; [eval] 0 <= j && (j < M * N && (0 <= k && (k < M * N && j != k)))
; [eval] 0 <= j
(push) ; 4
; [then-branch: 102 | !(0 <= j@216@01) | live]
; [else-branch: 102 | 0 <= j@216@01 | live]
(push) ; 5
; [then-branch: 102 | !(0 <= j@216@01)]
(assert (not (<= 0 j@216@01)))
(pop) ; 5
(push) ; 5
; [else-branch: 102 | 0 <= j@216@01]
(assert (<= 0 j@216@01))
; [eval] j < M * N
; [eval] M * N
(push) ; 6
; [then-branch: 103 | !(j@216@01 < M@154@01 * N@155@01) | live]
; [else-branch: 103 | j@216@01 < M@154@01 * N@155@01 | live]
(push) ; 7
; [then-branch: 103 | !(j@216@01 < M@154@01 * N@155@01)]
(assert (not (< j@216@01 (* M@154@01 N@155@01))))
(pop) ; 7
(push) ; 7
; [else-branch: 103 | j@216@01 < M@154@01 * N@155@01]
(assert (< j@216@01 (* M@154@01 N@155@01)))
; [eval] 0 <= k
(push) ; 8
; [then-branch: 104 | !(0 <= k@217@01) | live]
; [else-branch: 104 | 0 <= k@217@01 | live]
(push) ; 9
; [then-branch: 104 | !(0 <= k@217@01)]
(assert (not (<= 0 k@217@01)))
(pop) ; 9
(push) ; 9
; [else-branch: 104 | 0 <= k@217@01]
(assert (<= 0 k@217@01))
; [eval] k < M * N
; [eval] M * N
(push) ; 10
; [then-branch: 105 | !(k@217@01 < M@154@01 * N@155@01) | live]
; [else-branch: 105 | k@217@01 < M@154@01 * N@155@01 | live]
(push) ; 11
; [then-branch: 105 | !(k@217@01 < M@154@01 * N@155@01)]
(assert (not (< k@217@01 (* M@154@01 N@155@01))))
(pop) ; 11
(push) ; 11
; [else-branch: 105 | k@217@01 < M@154@01 * N@155@01]
(assert (< k@217@01 (* M@154@01 N@155@01)))
; [eval] j != k
(pop) ; 11
(pop) ; 10
; Joined path conditions
; Joined path conditions
(assert (or (< k@217@01 (* M@154@01 N@155@01)) (not (< k@217@01 (* M@154@01 N@155@01)))))
(pop) ; 9
(pop) ; 8
; Joined path conditions
; Joined path conditions
(assert (=>
  (<= 0 k@217@01)
  (and
    (<= 0 k@217@01)
    (or
      (< k@217@01 (* M@154@01 N@155@01))
      (not (< k@217@01 (* M@154@01 N@155@01)))))))
(assert (or (<= 0 k@217@01) (not (<= 0 k@217@01))))
(pop) ; 7
(pop) ; 6
; Joined path conditions
; Joined path conditions
(assert (=>
  (< j@216@01 (* M@154@01 N@155@01))
  (and
    (< j@216@01 (* M@154@01 N@155@01))
    (=>
      (<= 0 k@217@01)
      (and
        (<= 0 k@217@01)
        (or
          (< k@217@01 (* M@154@01 N@155@01))
          (not (< k@217@01 (* M@154@01 N@155@01))))))
    (or (<= 0 k@217@01) (not (<= 0 k@217@01))))))
(assert (or (< j@216@01 (* M@154@01 N@155@01)) (not (< j@216@01 (* M@154@01 N@155@01)))))
(pop) ; 5
(pop) ; 4
; Joined path conditions
; Joined path conditions
(assert (=>
  (<= 0 j@216@01)
  (and
    (<= 0 j@216@01)
    (=>
      (< j@216@01 (* M@154@01 N@155@01))
      (and
        (< j@216@01 (* M@154@01 N@155@01))
        (=>
          (<= 0 k@217@01)
          (and
            (<= 0 k@217@01)
            (or
              (< k@217@01 (* M@154@01 N@155@01))
              (not (< k@217@01 (* M@154@01 N@155@01))))))
        (or (<= 0 k@217@01) (not (<= 0 k@217@01)))))
    (or
      (< j@216@01 (* M@154@01 N@155@01))
      (not (< j@216@01 (* M@154@01 N@155@01)))))))
(assert (or (<= 0 j@216@01) (not (<= 0 j@216@01))))
(push) ; 4
; [then-branch: 106 | 0 <= j@216@01 && j@216@01 < M@154@01 * N@155@01 && 0 <= k@217@01 && k@217@01 < M@154@01 * N@155@01 && j@216@01 != k@217@01 | live]
; [else-branch: 106 | !(0 <= j@216@01 && j@216@01 < M@154@01 * N@155@01 && 0 <= k@217@01 && k@217@01 < M@154@01 * N@155@01 && j@216@01 != k@217@01) | live]
(push) ; 5
; [then-branch: 106 | 0 <= j@216@01 && j@216@01 < M@154@01 * N@155@01 && 0 <= k@217@01 && k@217@01 < M@154@01 * N@155@01 && j@216@01 != k@217@01]
(assert (and
  (<= 0 j@216@01)
  (and
    (< j@216@01 (* M@154@01 N@155@01))
    (and
      (<= 0 k@217@01)
      (and (< k@217@01 (* M@154@01 N@155@01)) (not (= j@216@01 k@217@01)))))))
; [eval] matrix[j] != matrix[k]
; [eval] matrix[j]
(push) ; 6
(assert (not (>= j@216@01 0)))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(push) ; 6
(assert (not (< j@216@01 (Seq_length matrix@156@01))))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
; [eval] matrix[k]
(push) ; 6
(assert (not (>= k@217@01 0)))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(push) ; 6
(assert (not (< k@217@01 (Seq_length matrix@156@01))))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(pop) ; 5
(push) ; 5
; [else-branch: 106 | !(0 <= j@216@01 && j@216@01 < M@154@01 * N@155@01 && 0 <= k@217@01 && k@217@01 < M@154@01 * N@155@01 && j@216@01 != k@217@01)]
(assert (not
  (and
    (<= 0 j@216@01)
    (and
      (< j@216@01 (* M@154@01 N@155@01))
      (and
        (<= 0 k@217@01)
        (and (< k@217@01 (* M@154@01 N@155@01)) (not (= j@216@01 k@217@01))))))))
(pop) ; 5
(pop) ; 4
; Joined path conditions
(assert (=>
  (and
    (<= 0 j@216@01)
    (and
      (< j@216@01 (* M@154@01 N@155@01))
      (and
        (<= 0 k@217@01)
        (and (< k@217@01 (* M@154@01 N@155@01)) (not (= j@216@01 k@217@01))))))
  (and
    (<= 0 j@216@01)
    (< j@216@01 (* M@154@01 N@155@01))
    (<= 0 k@217@01)
    (< k@217@01 (* M@154@01 N@155@01))
    (not (= j@216@01 k@217@01)))))
; Joined path conditions
(assert (or
  (not
    (and
      (<= 0 j@216@01)
      (and
        (< j@216@01 (* M@154@01 N@155@01))
        (and
          (<= 0 k@217@01)
          (and (< k@217@01 (* M@154@01 N@155@01)) (not (= j@216@01 k@217@01)))))))
  (and
    (<= 0 j@216@01)
    (and
      (< j@216@01 (* M@154@01 N@155@01))
      (and
        (<= 0 k@217@01)
        (and (< k@217@01 (* M@154@01 N@155@01)) (not (= j@216@01 k@217@01))))))))
(pop) ; 3
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall ((j@216@01 Int) (k@217@01 Int)) (!
  (and
    (=>
      (<= 0 j@216@01)
      (and
        (<= 0 j@216@01)
        (=>
          (< j@216@01 (* M@154@01 N@155@01))
          (and
            (< j@216@01 (* M@154@01 N@155@01))
            (=>
              (<= 0 k@217@01)
              (and
                (<= 0 k@217@01)
                (or
                  (< k@217@01 (* M@154@01 N@155@01))
                  (not (< k@217@01 (* M@154@01 N@155@01))))))
            (or (<= 0 k@217@01) (not (<= 0 k@217@01)))))
        (or
          (< j@216@01 (* M@154@01 N@155@01))
          (not (< j@216@01 (* M@154@01 N@155@01))))))
    (or (<= 0 j@216@01) (not (<= 0 j@216@01)))
    (=>
      (and
        (<= 0 j@216@01)
        (and
          (< j@216@01 (* M@154@01 N@155@01))
          (and
            (<= 0 k@217@01)
            (and (< k@217@01 (* M@154@01 N@155@01)) (not (= j@216@01 k@217@01))))))
      (and
        (<= 0 j@216@01)
        (< j@216@01 (* M@154@01 N@155@01))
        (<= 0 k@217@01)
        (< k@217@01 (* M@154@01 N@155@01))
        (not (= j@216@01 k@217@01))))
    (or
      (not
        (and
          (<= 0 j@216@01)
          (and
            (< j@216@01 (* M@154@01 N@155@01))
            (and
              (<= 0 k@217@01)
              (and
                (< k@217@01 (* M@154@01 N@155@01))
                (not (= j@216@01 k@217@01)))))))
      (and
        (<= 0 j@216@01)
        (and
          (< j@216@01 (* M@154@01 N@155@01))
          (and
            (<= 0 k@217@01)
            (and (< k@217@01 (* M@154@01 N@155@01)) (not (= j@216@01 k@217@01))))))))
  :pattern ((Seq_index matrix@156@01 j@216@01) (Seq_index matrix@156@01 k@217@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/third_party/testHistogram.vpr@109@12@109@112-aux|)))
(push) ; 3
(assert (not (forall ((j@216@01 Int) (k@217@01 Int)) (!
  (=>
    (and
      (<= 0 j@216@01)
      (and
        (< j@216@01 (* M@154@01 N@155@01))
        (and
          (<= 0 k@217@01)
          (and (< k@217@01 (* M@154@01 N@155@01)) (not (= j@216@01 k@217@01))))))
    (not
      (= (Seq_index matrix@156@01 j@216@01) (Seq_index matrix@156@01 k@217@01))))
  :pattern ((Seq_index matrix@156@01 j@216@01) (Seq_index matrix@156@01 k@217@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/third_party/testHistogram.vpr@109@12@109@112|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(assert (forall ((j@216@01 Int) (k@217@01 Int)) (!
  (=>
    (and
      (<= 0 j@216@01)
      (and
        (< j@216@01 (* M@154@01 N@155@01))
        (and
          (<= 0 k@217@01)
          (and (< k@217@01 (* M@154@01 N@155@01)) (not (= j@216@01 k@217@01))))))
    (not
      (= (Seq_index matrix@156@01 j@216@01) (Seq_index matrix@156@01 k@217@01))))
  :pattern ((Seq_index matrix@156@01 j@216@01) (Seq_index matrix@156@01 k@217@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/third_party/testHistogram.vpr@109@12@109@112|)))
(declare-const j@218@01 Int)
(push) ; 3
; [eval] 0 <= j && j < M * N
; [eval] 0 <= j
(push) ; 4
; [then-branch: 107 | !(0 <= j@218@01) | live]
; [else-branch: 107 | 0 <= j@218@01 | live]
(push) ; 5
; [then-branch: 107 | !(0 <= j@218@01)]
(assert (not (<= 0 j@218@01)))
(pop) ; 5
(push) ; 5
; [else-branch: 107 | 0 <= j@218@01]
(assert (<= 0 j@218@01))
; [eval] j < M * N
; [eval] M * N
(pop) ; 5
(pop) ; 4
; Joined path conditions
; Joined path conditions
(assert (or (<= 0 j@218@01) (not (<= 0 j@218@01))))
(assert (and (<= 0 j@218@01) (< j@218@01 (* M@154@01 N@155@01))))
; [eval] matrix[j]
(push) ; 4
(assert (not (>= j@218@01 0)))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(push) ; 4
(assert (not (< j@218@01 (Seq_length matrix@156@01))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(pop) ; 3
(declare-fun inv@219@01 ($Ref) Int)
(declare-fun img@220@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
(assert (forall ((j@218@01 Int)) (!
  (=>
    (and (<= 0 j@218@01) (< j@218@01 (* M@154@01 N@155@01)))
    (or (<= 0 j@218@01) (not (<= 0 j@218@01))))
  :pattern ((Seq_index matrix@156@01 j@218@01))
  :qid |Ref__Integer_value-aux|)))
; Check receiver injectivity
(push) ; 3
(assert (not (forall ((j1@218@01 Int) (j2@218@01 Int)) (!
  (=>
    (and
      (and (<= 0 j1@218@01) (< j1@218@01 (* M@154@01 N@155@01)))
      (and (<= 0 j2@218@01) (< j2@218@01 (* M@154@01 N@155@01)))
      (= (Seq_index matrix@156@01 j1@218@01) (Seq_index matrix@156@01 j2@218@01)))
    (= j1@218@01 j2@218@01))
  
  :qid |Ref__Integer_value-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((j@218@01 Int)) (!
  (=>
    (and (<= 0 j@218@01) (< j@218@01 (* M@154@01 N@155@01)))
    (and
      (= (inv@219@01 (Seq_index matrix@156@01 j@218@01)) j@218@01)
      (img@220@01 (Seq_index matrix@156@01 j@218@01))))
  :pattern ((Seq_index matrix@156@01 j@218@01))
  :qid |Ref__Integer_value-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@220@01 r)
      (and (<= 0 (inv@219@01 r)) (< (inv@219@01 r) (* M@154@01 N@155@01))))
    (= (Seq_index matrix@156@01 (inv@219@01 r)) r))
  :pattern ((inv@219@01 r))
  :qid |Ref__Integer_value-fctOfInv|)))
; Precomputing data for removing quantified permissions
(define-fun pTaken@221@01 ((r $Ref)) $Perm
  (ite
    (and
      (and (<= 0 (inv@219@01 r)) (< (inv@219@01 r) (* M@154@01 N@155@01)))
      (img@220@01 r)
      (= r (Seq_index matrix@156@01 (inv@219@01 r))))
    ($Perm.min
      (ite
        (and
          (img@164@01 r)
          (and (<= 0 (inv@163@01 r)) (< (inv@163@01 r) (* M@154@01 N@155@01))))
        (/ (to_real 1) (to_real 2))
        $Perm.No)
      (/ (to_real 1) (to_real 4)))
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
          (img@164@01 r)
          (and (<= 0 (inv@163@01 r)) (< (inv@163@01 r) (* M@154@01 N@155@01))))
        (/ (to_real 1) (to_real 2))
        $Perm.No)
      (pTaken@221@01 r))
    $Perm.No)
  
  :qid |quant-u-10044|))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (forall ((r $Ref)) (!
  (= (pTaken@221@01 r) $Perm.No)
  
  :qid |quant-u-10045|))))
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
      (and (<= 0 (inv@219@01 r)) (< (inv@219@01 r) (* M@154@01 N@155@01)))
      (img@220@01 r)
      (= r (Seq_index matrix@156@01 (inv@219@01 r))))
    (= (- (/ (to_real 1) (to_real 4)) (pTaken@221@01 r)) $Perm.No))
  
  :qid |quant-u-10046|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Final check if taken enough permissions
; Done removing quantified permissions
; [eval] (forall i: Int, j: Int :: { Ref__multidim_index_2(M, N, i, j) } 0 <= i && (i < M && (0 <= j && j < N)) ==> Ref__multidim_index_2(M, N, i, j) < |matrix|)
(declare-const i@222@01 Int)
(declare-const j@223@01 Int)
(set-option :timeout 0)
(push) ; 3
; [eval] 0 <= i && (i < M && (0 <= j && j < N)) ==> Ref__multidim_index_2(M, N, i, j) < |matrix|
; [eval] 0 <= i && (i < M && (0 <= j && j < N))
; [eval] 0 <= i
(push) ; 4
; [then-branch: 108 | !(0 <= i@222@01) | live]
; [else-branch: 108 | 0 <= i@222@01 | live]
(push) ; 5
; [then-branch: 108 | !(0 <= i@222@01)]
(assert (not (<= 0 i@222@01)))
(pop) ; 5
(push) ; 5
; [else-branch: 108 | 0 <= i@222@01]
(assert (<= 0 i@222@01))
; [eval] i < M
(push) ; 6
; [then-branch: 109 | !(i@222@01 < M@154@01) | live]
; [else-branch: 109 | i@222@01 < M@154@01 | live]
(push) ; 7
; [then-branch: 109 | !(i@222@01 < M@154@01)]
(assert (not (< i@222@01 M@154@01)))
(pop) ; 7
(push) ; 7
; [else-branch: 109 | i@222@01 < M@154@01]
(assert (< i@222@01 M@154@01))
; [eval] 0 <= j
(push) ; 8
; [then-branch: 110 | !(0 <= j@223@01) | live]
; [else-branch: 110 | 0 <= j@223@01 | live]
(push) ; 9
; [then-branch: 110 | !(0 <= j@223@01)]
(assert (not (<= 0 j@223@01)))
(pop) ; 9
(push) ; 9
; [else-branch: 110 | 0 <= j@223@01]
(assert (<= 0 j@223@01))
; [eval] j < N
(pop) ; 9
(pop) ; 8
; Joined path conditions
; Joined path conditions
(assert (or (<= 0 j@223@01) (not (<= 0 j@223@01))))
(pop) ; 7
(pop) ; 6
; Joined path conditions
; Joined path conditions
(assert (=>
  (< i@222@01 M@154@01)
  (and (< i@222@01 M@154@01) (or (<= 0 j@223@01) (not (<= 0 j@223@01))))))
(assert (or (< i@222@01 M@154@01) (not (< i@222@01 M@154@01))))
(pop) ; 5
(pop) ; 4
; Joined path conditions
; Joined path conditions
(assert (=>
  (<= 0 i@222@01)
  (and
    (<= 0 i@222@01)
    (=>
      (< i@222@01 M@154@01)
      (and (< i@222@01 M@154@01) (or (<= 0 j@223@01) (not (<= 0 j@223@01)))))
    (or (< i@222@01 M@154@01) (not (< i@222@01 M@154@01))))))
(assert (or (<= 0 i@222@01) (not (<= 0 i@222@01))))
(push) ; 4
; [then-branch: 111 | 0 <= i@222@01 && i@222@01 < M@154@01 && 0 <= j@223@01 && j@223@01 < N@155@01 | live]
; [else-branch: 111 | !(0 <= i@222@01 && i@222@01 < M@154@01 && 0 <= j@223@01 && j@223@01 < N@155@01) | live]
(push) ; 5
; [then-branch: 111 | 0 <= i@222@01 && i@222@01 < M@154@01 && 0 <= j@223@01 && j@223@01 < N@155@01]
(assert (and
  (<= 0 i@222@01)
  (and (< i@222@01 M@154@01) (and (<= 0 j@223@01) (< j@223@01 N@155@01)))))
; [eval] Ref__multidim_index_2(M, N, i, j) < |matrix|
; [eval] Ref__multidim_index_2(M, N, i, j)
(push) ; 6
; [eval] 0 <= i0
; [eval] i0 < N0
; [eval] 0 <= N0
(push) ; 7
(assert (not (<= 0 M@154@01)))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(assert (<= 0 M@154@01))
; [eval] 0 <= i1
; [eval] i1 < N1
; [eval] 0 <= N1
(push) ; 7
(assert (not (<= 0 N@155@01)))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(assert (<= 0 N@155@01))
(assert (Ref__multidim_index_2%precondition ($Snap.combine
  $Snap.unit
  ($Snap.combine
    $Snap.unit
    ($Snap.combine
      $Snap.unit
      ($Snap.combine $Snap.unit ($Snap.combine $Snap.unit $Snap.unit))))) M@154@01 N@155@01 i@222@01 j@223@01))
(pop) ; 6
; Joined path conditions
(assert (and
  (<= 0 M@154@01)
  (<= 0 N@155@01)
  (Ref__multidim_index_2%precondition ($Snap.combine
    $Snap.unit
    ($Snap.combine
      $Snap.unit
      ($Snap.combine
        $Snap.unit
        ($Snap.combine $Snap.unit ($Snap.combine $Snap.unit $Snap.unit))))) M@154@01 N@155@01 i@222@01 j@223@01)))
; [eval] |matrix|
(pop) ; 5
(push) ; 5
; [else-branch: 111 | !(0 <= i@222@01 && i@222@01 < M@154@01 && 0 <= j@223@01 && j@223@01 < N@155@01)]
(assert (not
  (and
    (<= 0 i@222@01)
    (and (< i@222@01 M@154@01) (and (<= 0 j@223@01) (< j@223@01 N@155@01))))))
(pop) ; 5
(pop) ; 4
; Joined path conditions
(assert (=>
  (and
    (<= 0 i@222@01)
    (and (< i@222@01 M@154@01) (and (<= 0 j@223@01) (< j@223@01 N@155@01))))
  (and
    (<= 0 i@222@01)
    (< i@222@01 M@154@01)
    (<= 0 j@223@01)
    (< j@223@01 N@155@01)
    (<= 0 M@154@01)
    (<= 0 N@155@01)
    (Ref__multidim_index_2%precondition ($Snap.combine
      $Snap.unit
      ($Snap.combine
        $Snap.unit
        ($Snap.combine
          $Snap.unit
          ($Snap.combine $Snap.unit ($Snap.combine $Snap.unit $Snap.unit))))) M@154@01 N@155@01 i@222@01 j@223@01))))
; Joined path conditions
(assert (or
  (not
    (and
      (<= 0 i@222@01)
      (and (< i@222@01 M@154@01) (and (<= 0 j@223@01) (< j@223@01 N@155@01)))))
  (and
    (<= 0 i@222@01)
    (and (< i@222@01 M@154@01) (and (<= 0 j@223@01) (< j@223@01 N@155@01))))))
(pop) ; 3
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall ((i@222@01 Int) (j@223@01 Int)) (!
  (and
    (=>
      (<= 0 i@222@01)
      (and
        (<= 0 i@222@01)
        (=>
          (< i@222@01 M@154@01)
          (and (< i@222@01 M@154@01) (or (<= 0 j@223@01) (not (<= 0 j@223@01)))))
        (or (< i@222@01 M@154@01) (not (< i@222@01 M@154@01)))))
    (or (<= 0 i@222@01) (not (<= 0 i@222@01)))
    (=>
      (and
        (<= 0 i@222@01)
        (and (< i@222@01 M@154@01) (and (<= 0 j@223@01) (< j@223@01 N@155@01))))
      (and
        (<= 0 i@222@01)
        (< i@222@01 M@154@01)
        (<= 0 j@223@01)
        (< j@223@01 N@155@01)
        (<= 0 M@154@01)
        (<= 0 N@155@01)
        (Ref__multidim_index_2%precondition ($Snap.combine
          $Snap.unit
          ($Snap.combine
            $Snap.unit
            ($Snap.combine
              $Snap.unit
              ($Snap.combine $Snap.unit ($Snap.combine $Snap.unit $Snap.unit))))) M@154@01 N@155@01 i@222@01 j@223@01)))
    (or
      (not
        (and
          (<= 0 i@222@01)
          (and (< i@222@01 M@154@01) (and (<= 0 j@223@01) (< j@223@01 N@155@01)))))
      (and
        (<= 0 i@222@01)
        (and (< i@222@01 M@154@01) (and (<= 0 j@223@01) (< j@223@01 N@155@01))))))
  :pattern ((Ref__multidim_index_2%limited ($Snap.combine
    $Snap.unit
    ($Snap.combine
      $Snap.unit
      ($Snap.combine
        $Snap.unit
        ($Snap.combine $Snap.unit ($Snap.combine $Snap.unit $Snap.unit))))) M@154@01 N@155@01 i@222@01 j@223@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/third_party/testHistogram.vpr@111@13@111@129-aux|)))
(assert (forall ((i@222@01 Int) (j@223@01 Int)) (!
  (=>
    (and
      (<= 0 i@222@01)
      (and (< i@222@01 M@154@01) (and (<= 0 j@223@01) (< j@223@01 N@155@01))))
    (Ref__multidim_index_2%precondition ($Snap.combine
      $Snap.unit
      ($Snap.combine
        $Snap.unit
        ($Snap.combine
          $Snap.unit
          ($Snap.combine $Snap.unit ($Snap.combine $Snap.unit $Snap.unit))))) M@154@01 N@155@01 i@222@01 j@223@01))
  :pattern ((Ref__multidim_index_2%limited ($Snap.combine
    $Snap.unit
    ($Snap.combine
      $Snap.unit
      ($Snap.combine
        $Snap.unit
        ($Snap.combine $Snap.unit ($Snap.combine $Snap.unit $Snap.unit))))) M@154@01 N@155@01 i@222@01 j@223@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/third_party/testHistogram.vpr@111@13@111@129_precondition|)))
(push) ; 3
(assert (not (forall ((i@222@01 Int) (j@223@01 Int)) (!
  (=>
    (and
      (=>
        (and
          (<= 0 i@222@01)
          (and (< i@222@01 M@154@01) (and (<= 0 j@223@01) (< j@223@01 N@155@01))))
        (Ref__multidim_index_2%precondition ($Snap.combine
          $Snap.unit
          ($Snap.combine
            $Snap.unit
            ($Snap.combine
              $Snap.unit
              ($Snap.combine $Snap.unit ($Snap.combine $Snap.unit $Snap.unit))))) M@154@01 N@155@01 i@222@01 j@223@01))
      (and
        (<= 0 i@222@01)
        (and (< i@222@01 M@154@01) (and (<= 0 j@223@01) (< j@223@01 N@155@01)))))
    (<
      (Ref__multidim_index_2 ($Snap.combine
        $Snap.unit
        ($Snap.combine
          $Snap.unit
          ($Snap.combine
            $Snap.unit
            ($Snap.combine $Snap.unit ($Snap.combine $Snap.unit $Snap.unit))))) M@154@01 N@155@01 i@222@01 j@223@01)
      (Seq_length matrix@156@01)))
  :pattern ((Ref__multidim_index_2%limited ($Snap.combine
    $Snap.unit
    ($Snap.combine
      $Snap.unit
      ($Snap.combine
        $Snap.unit
        ($Snap.combine $Snap.unit ($Snap.combine $Snap.unit $Snap.unit))))) M@154@01 N@155@01 i@222@01 j@223@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/third_party/testHistogram.vpr@111@13@111@129|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(assert (forall ((i@222@01 Int) (j@223@01 Int)) (!
  (=>
    (and
      (<= 0 i@222@01)
      (and (< i@222@01 M@154@01) (and (<= 0 j@223@01) (< j@223@01 N@155@01))))
    (<
      (Ref__multidim_index_2 ($Snap.combine
        $Snap.unit
        ($Snap.combine
          $Snap.unit
          ($Snap.combine
            $Snap.unit
            ($Snap.combine $Snap.unit ($Snap.combine $Snap.unit $Snap.unit))))) M@154@01 N@155@01 i@222@01 j@223@01)
      (Seq_length matrix@156@01)))
  :pattern ((Ref__multidim_index_2%limited ($Snap.combine
    $Snap.unit
    ($Snap.combine
      $Snap.unit
      ($Snap.combine
        $Snap.unit
        ($Snap.combine $Snap.unit ($Snap.combine $Snap.unit $Snap.unit))))) M@154@01 N@155@01 i@222@01 j@223@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/third_party/testHistogram.vpr@111@13@111@129|)))
; [eval] (forall i: Int, j: Int :: { matrix[Ref__multidim_index_2(M, N, i, j)] } 0 <= i && (i < M && (0 <= j && j < N)) ==> 0 <= matrix[Ref__multidim_index_2(M, N, i, j)].Ref__Integer_value && matrix[Ref__multidim_index_2(M, N, i, j)].Ref__Integer_value < P)
(declare-const i@224@01 Int)
(declare-const j@225@01 Int)
(push) ; 3
; [eval] 0 <= i && (i < M && (0 <= j && j < N)) ==> 0 <= matrix[Ref__multidim_index_2(M, N, i, j)].Ref__Integer_value && matrix[Ref__multidim_index_2(M, N, i, j)].Ref__Integer_value < P
; [eval] 0 <= i && (i < M && (0 <= j && j < N))
; [eval] 0 <= i
(push) ; 4
; [then-branch: 112 | !(0 <= i@224@01) | live]
; [else-branch: 112 | 0 <= i@224@01 | live]
(push) ; 5
; [then-branch: 112 | !(0 <= i@224@01)]
(assert (not (<= 0 i@224@01)))
(pop) ; 5
(push) ; 5
; [else-branch: 112 | 0 <= i@224@01]
(assert (<= 0 i@224@01))
; [eval] i < M
(push) ; 6
; [then-branch: 113 | !(i@224@01 < M@154@01) | live]
; [else-branch: 113 | i@224@01 < M@154@01 | live]
(push) ; 7
; [then-branch: 113 | !(i@224@01 < M@154@01)]
(assert (not (< i@224@01 M@154@01)))
(pop) ; 7
(push) ; 7
; [else-branch: 113 | i@224@01 < M@154@01]
(assert (< i@224@01 M@154@01))
; [eval] 0 <= j
(push) ; 8
; [then-branch: 114 | !(0 <= j@225@01) | live]
; [else-branch: 114 | 0 <= j@225@01 | live]
(push) ; 9
; [then-branch: 114 | !(0 <= j@225@01)]
(assert (not (<= 0 j@225@01)))
(pop) ; 9
(push) ; 9
; [else-branch: 114 | 0 <= j@225@01]
(assert (<= 0 j@225@01))
; [eval] j < N
(pop) ; 9
(pop) ; 8
; Joined path conditions
; Joined path conditions
(assert (or (<= 0 j@225@01) (not (<= 0 j@225@01))))
(pop) ; 7
(pop) ; 6
; Joined path conditions
; Joined path conditions
(assert (=>
  (< i@224@01 M@154@01)
  (and (< i@224@01 M@154@01) (or (<= 0 j@225@01) (not (<= 0 j@225@01))))))
(assert (or (< i@224@01 M@154@01) (not (< i@224@01 M@154@01))))
(pop) ; 5
(pop) ; 4
; Joined path conditions
; Joined path conditions
(assert (=>
  (<= 0 i@224@01)
  (and
    (<= 0 i@224@01)
    (=>
      (< i@224@01 M@154@01)
      (and (< i@224@01 M@154@01) (or (<= 0 j@225@01) (not (<= 0 j@225@01)))))
    (or (< i@224@01 M@154@01) (not (< i@224@01 M@154@01))))))
(assert (or (<= 0 i@224@01) (not (<= 0 i@224@01))))
(push) ; 4
; [then-branch: 115 | 0 <= i@224@01 && i@224@01 < M@154@01 && 0 <= j@225@01 && j@225@01 < N@155@01 | live]
; [else-branch: 115 | !(0 <= i@224@01 && i@224@01 < M@154@01 && 0 <= j@225@01 && j@225@01 < N@155@01) | live]
(push) ; 5
; [then-branch: 115 | 0 <= i@224@01 && i@224@01 < M@154@01 && 0 <= j@225@01 && j@225@01 < N@155@01]
(assert (and
  (<= 0 i@224@01)
  (and (< i@224@01 M@154@01) (and (<= 0 j@225@01) (< j@225@01 N@155@01)))))
; [eval] 0 <= matrix[Ref__multidim_index_2(M, N, i, j)].Ref__Integer_value && matrix[Ref__multidim_index_2(M, N, i, j)].Ref__Integer_value < P
; [eval] 0 <= matrix[Ref__multidim_index_2(M, N, i, j)].Ref__Integer_value
; [eval] matrix[Ref__multidim_index_2(M, N, i, j)]
; [eval] Ref__multidim_index_2(M, N, i, j)
(push) ; 6
; [eval] 0 <= i0
; [eval] i0 < N0
; [eval] 0 <= N0
(push) ; 7
(assert (not (<= 0 M@154@01)))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(assert (<= 0 M@154@01))
; [eval] 0 <= i1
; [eval] i1 < N1
; [eval] 0 <= N1
(push) ; 7
(assert (not (<= 0 N@155@01)))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(assert (<= 0 N@155@01))
(assert (Ref__multidim_index_2%precondition ($Snap.combine
  $Snap.unit
  ($Snap.combine
    $Snap.unit
    ($Snap.combine
      $Snap.unit
      ($Snap.combine $Snap.unit ($Snap.combine $Snap.unit $Snap.unit))))) M@154@01 N@155@01 i@224@01 j@225@01))
(pop) ; 6
; Joined path conditions
(assert (and
  (<= 0 M@154@01)
  (<= 0 N@155@01)
  (Ref__multidim_index_2%precondition ($Snap.combine
    $Snap.unit
    ($Snap.combine
      $Snap.unit
      ($Snap.combine
        $Snap.unit
        ($Snap.combine $Snap.unit ($Snap.combine $Snap.unit $Snap.unit))))) M@154@01 N@155@01 i@224@01 j@225@01)))
(push) ; 6
(assert (not (>=
  (Ref__multidim_index_2 ($Snap.combine
    $Snap.unit
    ($Snap.combine
      $Snap.unit
      ($Snap.combine
        $Snap.unit
        ($Snap.combine $Snap.unit ($Snap.combine $Snap.unit $Snap.unit))))) M@154@01 N@155@01 i@224@01 j@225@01)
  0)))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(push) ; 6
(assert (not (<
  (Ref__multidim_index_2 ($Snap.combine
    $Snap.unit
    ($Snap.combine
      $Snap.unit
      ($Snap.combine
        $Snap.unit
        ($Snap.combine $Snap.unit ($Snap.combine $Snap.unit $Snap.unit))))) M@154@01 N@155@01 i@224@01 j@225@01)
  (Seq_length matrix@156@01))))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(assert (and
  (forall ((r $Ref)) (!
    (=>
      (and
        (img@164@01 r)
        (and (<= 0 (inv@163@01 r)) (< (inv@163@01 r) (* M@154@01 N@155@01))))
      (=
        ($FVF.lookup_Ref__Integer_value (as sm@207@01  $FVF<Ref__Integer_value>) r)
        ($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@159@01))))))))) r)))
    :pattern (($FVF.lookup_Ref__Integer_value (as sm@207@01  $FVF<Ref__Integer_value>) r))
    :pattern (($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@159@01))))))))) r))
    :qid |qp.fvfValDef31|))
  (forall ((r $Ref)) (!
    (=>
      (and
        (img@205@01 r)
        (and (<= 0 (inv@204@01 r)) (< (inv@204@01 r) P@157@01)))
      (=
        ($FVF.lookup_Ref__Integer_value (as sm@207@01  $FVF<Ref__Integer_value>) r)
        ($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first $t@202@01)) r)))
    :pattern (($FVF.lookup_Ref__Integer_value (as sm@207@01  $FVF<Ref__Integer_value>) r))
    :pattern (($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first $t@202@01)) r))
    :qid |qp.fvfValDef32|))))
(push) ; 6
(assert (not (<
  $Perm.No
  (+
    (ite
      (and
        (img@164@01 (Seq_index
          matrix@156@01
          (Ref__multidim_index_2 ($Snap.combine
            $Snap.unit
            ($Snap.combine
              $Snap.unit
              ($Snap.combine
                $Snap.unit
                ($Snap.combine $Snap.unit ($Snap.combine $Snap.unit $Snap.unit))))) M@154@01 N@155@01 i@224@01 j@225@01)))
        (and
          (<=
            0
            (inv@163@01 (Seq_index
              matrix@156@01
              (Ref__multidim_index_2 ($Snap.combine
                $Snap.unit
                ($Snap.combine
                  $Snap.unit
                  ($Snap.combine
                    $Snap.unit
                    ($Snap.combine
                      $Snap.unit
                      ($Snap.combine $Snap.unit $Snap.unit))))) M@154@01 N@155@01 i@224@01 j@225@01))))
          (<
            (inv@163@01 (Seq_index
              matrix@156@01
              (Ref__multidim_index_2 ($Snap.combine
                $Snap.unit
                ($Snap.combine
                  $Snap.unit
                  ($Snap.combine
                    $Snap.unit
                    ($Snap.combine
                      $Snap.unit
                      ($Snap.combine $Snap.unit $Snap.unit))))) M@154@01 N@155@01 i@224@01 j@225@01)))
            (* M@154@01 N@155@01))))
      (/ (to_real 1) (to_real 2))
      $Perm.No)
    (ite
      (and
        (img@205@01 (Seq_index
          matrix@156@01
          (Ref__multidim_index_2 ($Snap.combine
            $Snap.unit
            ($Snap.combine
              $Snap.unit
              ($Snap.combine
                $Snap.unit
                ($Snap.combine $Snap.unit ($Snap.combine $Snap.unit $Snap.unit))))) M@154@01 N@155@01 i@224@01 j@225@01)))
        (and
          (<=
            0
            (inv@204@01 (Seq_index
              matrix@156@01
              (Ref__multidim_index_2 ($Snap.combine
                $Snap.unit
                ($Snap.combine
                  $Snap.unit
                  ($Snap.combine
                    $Snap.unit
                    ($Snap.combine
                      $Snap.unit
                      ($Snap.combine $Snap.unit $Snap.unit))))) M@154@01 N@155@01 i@224@01 j@225@01))))
          (<
            (inv@204@01 (Seq_index
              matrix@156@01
              (Ref__multidim_index_2 ($Snap.combine
                $Snap.unit
                ($Snap.combine
                  $Snap.unit
                  ($Snap.combine
                    $Snap.unit
                    ($Snap.combine
                      $Snap.unit
                      ($Snap.combine $Snap.unit $Snap.unit))))) M@154@01 N@155@01 i@224@01 j@225@01)))
            P@157@01)))
      $Perm.Write
      $Perm.No)))))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(push) ; 6
; [then-branch: 116 | !(0 <= Lookup(Ref__Integer_value, sm@207@01, matrix@156@01[Ref__multidim_index_2((_, (_, (_, (_, (_, _))))), M@154@01, N@155@01, i@224@01, j@225@01)])) | live]
; [else-branch: 116 | 0 <= Lookup(Ref__Integer_value, sm@207@01, matrix@156@01[Ref__multidim_index_2((_, (_, (_, (_, (_, _))))), M@154@01, N@155@01, i@224@01, j@225@01)]) | live]
(push) ; 7
; [then-branch: 116 | !(0 <= Lookup(Ref__Integer_value, sm@207@01, matrix@156@01[Ref__multidim_index_2((_, (_, (_, (_, (_, _))))), M@154@01, N@155@01, i@224@01, j@225@01)]))]
(assert (not
  (<=
    0
    ($FVF.lookup_Ref__Integer_value (as sm@207@01  $FVF<Ref__Integer_value>) (Seq_index
      matrix@156@01
      (Ref__multidim_index_2 ($Snap.combine
        $Snap.unit
        ($Snap.combine
          $Snap.unit
          ($Snap.combine
            $Snap.unit
            ($Snap.combine $Snap.unit ($Snap.combine $Snap.unit $Snap.unit))))) M@154@01 N@155@01 i@224@01 j@225@01))))))
(pop) ; 7
(push) ; 7
; [else-branch: 116 | 0 <= Lookup(Ref__Integer_value, sm@207@01, matrix@156@01[Ref__multidim_index_2((_, (_, (_, (_, (_, _))))), M@154@01, N@155@01, i@224@01, j@225@01)])]
(assert (<=
  0
  ($FVF.lookup_Ref__Integer_value (as sm@207@01  $FVF<Ref__Integer_value>) (Seq_index
    matrix@156@01
    (Ref__multidim_index_2 ($Snap.combine
      $Snap.unit
      ($Snap.combine
        $Snap.unit
        ($Snap.combine
          $Snap.unit
          ($Snap.combine $Snap.unit ($Snap.combine $Snap.unit $Snap.unit))))) M@154@01 N@155@01 i@224@01 j@225@01)))))
; [eval] matrix[Ref__multidim_index_2(M, N, i, j)].Ref__Integer_value < P
; [eval] matrix[Ref__multidim_index_2(M, N, i, j)]
; [eval] Ref__multidim_index_2(M, N, i, j)
(push) ; 8
; [eval] 0 <= i0
; [eval] i0 < N0
; [eval] 0 <= N0
; [eval] 0 <= i1
; [eval] i1 < N1
; [eval] 0 <= N1
(pop) ; 8
; Joined path conditions
(push) ; 8
(assert (not (>=
  (Ref__multidim_index_2 ($Snap.combine
    $Snap.unit
    ($Snap.combine
      $Snap.unit
      ($Snap.combine
        $Snap.unit
        ($Snap.combine $Snap.unit ($Snap.combine $Snap.unit $Snap.unit))))) M@154@01 N@155@01 i@224@01 j@225@01)
  0)))
(check-sat)
; unsat
(pop) ; 8
; 0.00s
; (get-info :all-statistics)
(push) ; 8
(assert (not (<
  (Ref__multidim_index_2 ($Snap.combine
    $Snap.unit
    ($Snap.combine
      $Snap.unit
      ($Snap.combine
        $Snap.unit
        ($Snap.combine $Snap.unit ($Snap.combine $Snap.unit $Snap.unit))))) M@154@01 N@155@01 i@224@01 j@225@01)
  (Seq_length matrix@156@01))))
(check-sat)
; unsat
(pop) ; 8
; 0.00s
; (get-info :all-statistics)
(assert (and
  (forall ((r $Ref)) (!
    (=>
      (and
        (img@164@01 r)
        (and (<= 0 (inv@163@01 r)) (< (inv@163@01 r) (* M@154@01 N@155@01))))
      (=
        ($FVF.lookup_Ref__Integer_value (as sm@207@01  $FVF<Ref__Integer_value>) r)
        ($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@159@01))))))))) r)))
    :pattern (($FVF.lookup_Ref__Integer_value (as sm@207@01  $FVF<Ref__Integer_value>) r))
    :pattern (($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@159@01))))))))) r))
    :qid |qp.fvfValDef31|))
  (forall ((r $Ref)) (!
    (=>
      (and
        (img@205@01 r)
        (and (<= 0 (inv@204@01 r)) (< (inv@204@01 r) P@157@01)))
      (=
        ($FVF.lookup_Ref__Integer_value (as sm@207@01  $FVF<Ref__Integer_value>) r)
        ($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first $t@202@01)) r)))
    :pattern (($FVF.lookup_Ref__Integer_value (as sm@207@01  $FVF<Ref__Integer_value>) r))
    :pattern (($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first $t@202@01)) r))
    :qid |qp.fvfValDef32|))))
(push) ; 8
(assert (not (<
  $Perm.No
  (+
    (ite
      (and
        (img@164@01 (Seq_index
          matrix@156@01
          (Ref__multidim_index_2 ($Snap.combine
            $Snap.unit
            ($Snap.combine
              $Snap.unit
              ($Snap.combine
                $Snap.unit
                ($Snap.combine $Snap.unit ($Snap.combine $Snap.unit $Snap.unit))))) M@154@01 N@155@01 i@224@01 j@225@01)))
        (and
          (<=
            0
            (inv@163@01 (Seq_index
              matrix@156@01
              (Ref__multidim_index_2 ($Snap.combine
                $Snap.unit
                ($Snap.combine
                  $Snap.unit
                  ($Snap.combine
                    $Snap.unit
                    ($Snap.combine
                      $Snap.unit
                      ($Snap.combine $Snap.unit $Snap.unit))))) M@154@01 N@155@01 i@224@01 j@225@01))))
          (<
            (inv@163@01 (Seq_index
              matrix@156@01
              (Ref__multidim_index_2 ($Snap.combine
                $Snap.unit
                ($Snap.combine
                  $Snap.unit
                  ($Snap.combine
                    $Snap.unit
                    ($Snap.combine
                      $Snap.unit
                      ($Snap.combine $Snap.unit $Snap.unit))))) M@154@01 N@155@01 i@224@01 j@225@01)))
            (* M@154@01 N@155@01))))
      (/ (to_real 1) (to_real 2))
      $Perm.No)
    (ite
      (and
        (img@205@01 (Seq_index
          matrix@156@01
          (Ref__multidim_index_2 ($Snap.combine
            $Snap.unit
            ($Snap.combine
              $Snap.unit
              ($Snap.combine
                $Snap.unit
                ($Snap.combine $Snap.unit ($Snap.combine $Snap.unit $Snap.unit))))) M@154@01 N@155@01 i@224@01 j@225@01)))
        (and
          (<=
            0
            (inv@204@01 (Seq_index
              matrix@156@01
              (Ref__multidim_index_2 ($Snap.combine
                $Snap.unit
                ($Snap.combine
                  $Snap.unit
                  ($Snap.combine
                    $Snap.unit
                    ($Snap.combine
                      $Snap.unit
                      ($Snap.combine $Snap.unit $Snap.unit))))) M@154@01 N@155@01 i@224@01 j@225@01))))
          (<
            (inv@204@01 (Seq_index
              matrix@156@01
              (Ref__multidim_index_2 ($Snap.combine
                $Snap.unit
                ($Snap.combine
                  $Snap.unit
                  ($Snap.combine
                    $Snap.unit
                    ($Snap.combine
                      $Snap.unit
                      ($Snap.combine $Snap.unit $Snap.unit))))) M@154@01 N@155@01 i@224@01 j@225@01)))
            P@157@01)))
      $Perm.Write
      $Perm.No)))))
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
    (and
      (img@164@01 r)
      (and (<= 0 (inv@163@01 r)) (< (inv@163@01 r) (* M@154@01 N@155@01))))
    (=
      ($FVF.lookup_Ref__Integer_value (as sm@207@01  $FVF<Ref__Integer_value>) r)
      ($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@159@01))))))))) r)))
  :pattern (($FVF.lookup_Ref__Integer_value (as sm@207@01  $FVF<Ref__Integer_value>) r))
  :pattern (($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@159@01))))))))) r))
  :qid |qp.fvfValDef31|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@205@01 r) (and (<= 0 (inv@204@01 r)) (< (inv@204@01 r) P@157@01)))
    (=
      ($FVF.lookup_Ref__Integer_value (as sm@207@01  $FVF<Ref__Integer_value>) r)
      ($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first $t@202@01)) r)))
  :pattern (($FVF.lookup_Ref__Integer_value (as sm@207@01  $FVF<Ref__Integer_value>) r))
  :pattern (($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first $t@202@01)) r))
  :qid |qp.fvfValDef32|)))
(assert (or
  (<=
    0
    ($FVF.lookup_Ref__Integer_value (as sm@207@01  $FVF<Ref__Integer_value>) (Seq_index
      matrix@156@01
      (Ref__multidim_index_2 ($Snap.combine
        $Snap.unit
        ($Snap.combine
          $Snap.unit
          ($Snap.combine
            $Snap.unit
            ($Snap.combine $Snap.unit ($Snap.combine $Snap.unit $Snap.unit))))) M@154@01 N@155@01 i@224@01 j@225@01))))
  (not
    (<=
      0
      ($FVF.lookup_Ref__Integer_value (as sm@207@01  $FVF<Ref__Integer_value>) (Seq_index
        matrix@156@01
        (Ref__multidim_index_2 ($Snap.combine
          $Snap.unit
          ($Snap.combine
            $Snap.unit
            ($Snap.combine
              $Snap.unit
              ($Snap.combine $Snap.unit ($Snap.combine $Snap.unit $Snap.unit))))) M@154@01 N@155@01 i@224@01 j@225@01)))))))
(pop) ; 5
(push) ; 5
; [else-branch: 115 | !(0 <= i@224@01 && i@224@01 < M@154@01 && 0 <= j@225@01 && j@225@01 < N@155@01)]
(assert (not
  (and
    (<= 0 i@224@01)
    (and (< i@224@01 M@154@01) (and (<= 0 j@225@01) (< j@225@01 N@155@01))))))
(pop) ; 5
(pop) ; 4
; Joined path conditions
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@164@01 r)
      (and (<= 0 (inv@163@01 r)) (< (inv@163@01 r) (* M@154@01 N@155@01))))
    (=
      ($FVF.lookup_Ref__Integer_value (as sm@207@01  $FVF<Ref__Integer_value>) r)
      ($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@159@01))))))))) r)))
  :pattern (($FVF.lookup_Ref__Integer_value (as sm@207@01  $FVF<Ref__Integer_value>) r))
  :pattern (($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@159@01))))))))) r))
  :qid |qp.fvfValDef31|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@205@01 r) (and (<= 0 (inv@204@01 r)) (< (inv@204@01 r) P@157@01)))
    (=
      ($FVF.lookup_Ref__Integer_value (as sm@207@01  $FVF<Ref__Integer_value>) r)
      ($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first $t@202@01)) r)))
  :pattern (($FVF.lookup_Ref__Integer_value (as sm@207@01  $FVF<Ref__Integer_value>) r))
  :pattern (($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first $t@202@01)) r))
  :qid |qp.fvfValDef32|)))
(assert (=>
  (and
    (<= 0 i@224@01)
    (and (< i@224@01 M@154@01) (and (<= 0 j@225@01) (< j@225@01 N@155@01))))
  (and
    (<= 0 i@224@01)
    (< i@224@01 M@154@01)
    (<= 0 j@225@01)
    (< j@225@01 N@155@01)
    (<= 0 M@154@01)
    (<= 0 N@155@01)
    (Ref__multidim_index_2%precondition ($Snap.combine
      $Snap.unit
      ($Snap.combine
        $Snap.unit
        ($Snap.combine
          $Snap.unit
          ($Snap.combine $Snap.unit ($Snap.combine $Snap.unit $Snap.unit))))) M@154@01 N@155@01 i@224@01 j@225@01)
    (or
      (<=
        0
        ($FVF.lookup_Ref__Integer_value (as sm@207@01  $FVF<Ref__Integer_value>) (Seq_index
          matrix@156@01
          (Ref__multidim_index_2 ($Snap.combine
            $Snap.unit
            ($Snap.combine
              $Snap.unit
              ($Snap.combine
                $Snap.unit
                ($Snap.combine $Snap.unit ($Snap.combine $Snap.unit $Snap.unit))))) M@154@01 N@155@01 i@224@01 j@225@01))))
      (not
        (<=
          0
          ($FVF.lookup_Ref__Integer_value (as sm@207@01  $FVF<Ref__Integer_value>) (Seq_index
            matrix@156@01
            (Ref__multidim_index_2 ($Snap.combine
              $Snap.unit
              ($Snap.combine
                $Snap.unit
                ($Snap.combine
                  $Snap.unit
                  ($Snap.combine
                    $Snap.unit
                    ($Snap.combine $Snap.unit $Snap.unit))))) M@154@01 N@155@01 i@224@01 j@225@01)))))))))
; Joined path conditions
(assert (or
  (not
    (and
      (<= 0 i@224@01)
      (and (< i@224@01 M@154@01) (and (<= 0 j@225@01) (< j@225@01 N@155@01)))))
  (and
    (<= 0 i@224@01)
    (and (< i@224@01 M@154@01) (and (<= 0 j@225@01) (< j@225@01 N@155@01))))))
(pop) ; 3
; Nested auxiliary terms: globals (aux)
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@164@01 r)
      (and (<= 0 (inv@163@01 r)) (< (inv@163@01 r) (* M@154@01 N@155@01))))
    (=
      ($FVF.lookup_Ref__Integer_value (as sm@207@01  $FVF<Ref__Integer_value>) r)
      ($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@159@01))))))))) r)))
  :pattern (($FVF.lookup_Ref__Integer_value (as sm@207@01  $FVF<Ref__Integer_value>) r))
  :pattern (($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@159@01))))))))) r))
  :qid |qp.fvfValDef31|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@205@01 r) (and (<= 0 (inv@204@01 r)) (< (inv@204@01 r) P@157@01)))
    (=
      ($FVF.lookup_Ref__Integer_value (as sm@207@01  $FVF<Ref__Integer_value>) r)
      ($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first $t@202@01)) r)))
  :pattern (($FVF.lookup_Ref__Integer_value (as sm@207@01  $FVF<Ref__Integer_value>) r))
  :pattern (($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first $t@202@01)) r))
  :qid |qp.fvfValDef32|)))
; Nested auxiliary terms: non-globals (aux)
(assert (forall ((i@224@01 Int) (j@225@01 Int)) (!
  (and
    (=>
      (<= 0 i@224@01)
      (and
        (<= 0 i@224@01)
        (=>
          (< i@224@01 M@154@01)
          (and (< i@224@01 M@154@01) (or (<= 0 j@225@01) (not (<= 0 j@225@01)))))
        (or (< i@224@01 M@154@01) (not (< i@224@01 M@154@01)))))
    (or (<= 0 i@224@01) (not (<= 0 i@224@01)))
    (=>
      (and
        (<= 0 i@224@01)
        (and (< i@224@01 M@154@01) (and (<= 0 j@225@01) (< j@225@01 N@155@01))))
      (and
        (<= 0 i@224@01)
        (< i@224@01 M@154@01)
        (<= 0 j@225@01)
        (< j@225@01 N@155@01)
        (<= 0 M@154@01)
        (<= 0 N@155@01)
        (Ref__multidim_index_2%precondition ($Snap.combine
          $Snap.unit
          ($Snap.combine
            $Snap.unit
            ($Snap.combine
              $Snap.unit
              ($Snap.combine $Snap.unit ($Snap.combine $Snap.unit $Snap.unit))))) M@154@01 N@155@01 i@224@01 j@225@01)
        (or
          (<=
            0
            ($FVF.lookup_Ref__Integer_value (as sm@207@01  $FVF<Ref__Integer_value>) (Seq_index
              matrix@156@01
              (Ref__multidim_index_2 ($Snap.combine
                $Snap.unit
                ($Snap.combine
                  $Snap.unit
                  ($Snap.combine
                    $Snap.unit
                    ($Snap.combine
                      $Snap.unit
                      ($Snap.combine $Snap.unit $Snap.unit))))) M@154@01 N@155@01 i@224@01 j@225@01))))
          (not
            (<=
              0
              ($FVF.lookup_Ref__Integer_value (as sm@207@01  $FVF<Ref__Integer_value>) (Seq_index
                matrix@156@01
                (Ref__multidim_index_2 ($Snap.combine
                  $Snap.unit
                  ($Snap.combine
                    $Snap.unit
                    ($Snap.combine
                      $Snap.unit
                      ($Snap.combine
                        $Snap.unit
                        ($Snap.combine $Snap.unit $Snap.unit))))) M@154@01 N@155@01 i@224@01 j@225@01))))))))
    (or
      (not
        (and
          (<= 0 i@224@01)
          (and (< i@224@01 M@154@01) (and (<= 0 j@225@01) (< j@225@01 N@155@01)))))
      (and
        (<= 0 i@224@01)
        (and (< i@224@01 M@154@01) (and (<= 0 j@225@01) (< j@225@01 N@155@01))))))
  :pattern ((Seq_index
    matrix@156@01
    (Ref__multidim_index_2 ($Snap.combine
      $Snap.unit
      ($Snap.combine
        $Snap.unit
        ($Snap.combine
          $Snap.unit
          ($Snap.combine $Snap.unit ($Snap.combine $Snap.unit $Snap.unit))))) M@154@01 N@155@01 i@224@01 j@225@01)))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/third_party/testHistogram.vpr@112@13@112@222-aux|)))
(assert (forall ((i@224@01 Int) (j@225@01 Int)) (!
  (=>
    (and
      (<= 0 i@224@01)
      (and (< i@224@01 M@154@01) (and (<= 0 j@225@01) (< j@225@01 N@155@01))))
    (and
      (Ref__multidim_index_2%precondition ($Snap.combine
        $Snap.unit
        ($Snap.combine
          $Snap.unit
          ($Snap.combine
            $Snap.unit
            ($Snap.combine $Snap.unit ($Snap.combine $Snap.unit $Snap.unit))))) M@154@01 N@155@01 i@224@01 j@225@01)
      (=>
        (<=
          0
          ($FVF.lookup_Ref__Integer_value (as sm@207@01  $FVF<Ref__Integer_value>) (Seq_index
            matrix@156@01
            (Ref__multidim_index_2 ($Snap.combine
              $Snap.unit
              ($Snap.combine
                $Snap.unit
                ($Snap.combine
                  $Snap.unit
                  ($Snap.combine
                    $Snap.unit
                    ($Snap.combine $Snap.unit $Snap.unit))))) M@154@01 N@155@01 i@224@01 j@225@01))))
        (Ref__multidim_index_2%precondition ($Snap.combine
          $Snap.unit
          ($Snap.combine
            $Snap.unit
            ($Snap.combine
              $Snap.unit
              ($Snap.combine $Snap.unit ($Snap.combine $Snap.unit $Snap.unit))))) M@154@01 N@155@01 i@224@01 j@225@01))))
  :pattern ((Seq_index
    matrix@156@01
    (Ref__multidim_index_2 ($Snap.combine
      $Snap.unit
      ($Snap.combine
        $Snap.unit
        ($Snap.combine
          $Snap.unit
          ($Snap.combine $Snap.unit ($Snap.combine $Snap.unit $Snap.unit))))) M@154@01 N@155@01 i@224@01 j@225@01)))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/third_party/testHistogram.vpr@112@13@112@222_precondition|)))
(push) ; 3
(assert (not (forall ((i@224@01 Int) (j@225@01 Int)) (!
  (=>
    (and
      (=>
        (and
          (<= 0 i@224@01)
          (and (< i@224@01 M@154@01) (and (<= 0 j@225@01) (< j@225@01 N@155@01))))
        (and
          (Ref__multidim_index_2%precondition ($Snap.combine
            $Snap.unit
            ($Snap.combine
              $Snap.unit
              ($Snap.combine
                $Snap.unit
                ($Snap.combine $Snap.unit ($Snap.combine $Snap.unit $Snap.unit))))) M@154@01 N@155@01 i@224@01 j@225@01)
          (=>
            (<=
              0
              ($FVF.lookup_Ref__Integer_value (as sm@207@01  $FVF<Ref__Integer_value>) (Seq_index
                matrix@156@01
                (Ref__multidim_index_2 ($Snap.combine
                  $Snap.unit
                  ($Snap.combine
                    $Snap.unit
                    ($Snap.combine
                      $Snap.unit
                      ($Snap.combine
                        $Snap.unit
                        ($Snap.combine $Snap.unit $Snap.unit))))) M@154@01 N@155@01 i@224@01 j@225@01))))
            (Ref__multidim_index_2%precondition ($Snap.combine
              $Snap.unit
              ($Snap.combine
                $Snap.unit
                ($Snap.combine
                  $Snap.unit
                  ($Snap.combine
                    $Snap.unit
                    ($Snap.combine $Snap.unit $Snap.unit))))) M@154@01 N@155@01 i@224@01 j@225@01))))
      (and
        (<= 0 i@224@01)
        (and (< i@224@01 M@154@01) (and (<= 0 j@225@01) (< j@225@01 N@155@01)))))
    (and
      (<=
        0
        ($FVF.lookup_Ref__Integer_value (as sm@207@01  $FVF<Ref__Integer_value>) (Seq_index
          matrix@156@01
          (Ref__multidim_index_2 ($Snap.combine
            $Snap.unit
            ($Snap.combine
              $Snap.unit
              ($Snap.combine
                $Snap.unit
                ($Snap.combine $Snap.unit ($Snap.combine $Snap.unit $Snap.unit))))) M@154@01 N@155@01 i@224@01 j@225@01))))
      (<
        ($FVF.lookup_Ref__Integer_value (as sm@207@01  $FVF<Ref__Integer_value>) (Seq_index
          matrix@156@01
          (Ref__multidim_index_2 ($Snap.combine
            $Snap.unit
            ($Snap.combine
              $Snap.unit
              ($Snap.combine
                $Snap.unit
                ($Snap.combine $Snap.unit ($Snap.combine $Snap.unit $Snap.unit))))) M@154@01 N@155@01 i@224@01 j@225@01)))
        P@157@01)))
  :pattern ((Seq_index
    matrix@156@01
    (Ref__multidim_index_2 ($Snap.combine
      $Snap.unit
      ($Snap.combine
        $Snap.unit
        ($Snap.combine
          $Snap.unit
          ($Snap.combine $Snap.unit ($Snap.combine $Snap.unit $Snap.unit))))) M@154@01 N@155@01 i@224@01 j@225@01)))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/third_party/testHistogram.vpr@112@13@112@222|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(assert (forall ((i@224@01 Int) (j@225@01 Int)) (!
  (=>
    (and
      (<= 0 i@224@01)
      (and (< i@224@01 M@154@01) (and (<= 0 j@225@01) (< j@225@01 N@155@01))))
    (and
      (<=
        0
        ($FVF.lookup_Ref__Integer_value (as sm@207@01  $FVF<Ref__Integer_value>) (Seq_index
          matrix@156@01
          (Ref__multidim_index_2 ($Snap.combine
            $Snap.unit
            ($Snap.combine
              $Snap.unit
              ($Snap.combine
                $Snap.unit
                ($Snap.combine $Snap.unit ($Snap.combine $Snap.unit $Snap.unit))))) M@154@01 N@155@01 i@224@01 j@225@01))))
      (<
        ($FVF.lookup_Ref__Integer_value (as sm@207@01  $FVF<Ref__Integer_value>) (Seq_index
          matrix@156@01
          (Ref__multidim_index_2 ($Snap.combine
            $Snap.unit
            ($Snap.combine
              $Snap.unit
              ($Snap.combine
                $Snap.unit
                ($Snap.combine $Snap.unit ($Snap.combine $Snap.unit $Snap.unit))))) M@154@01 N@155@01 i@224@01 j@225@01)))
        P@157@01)))
  :pattern ((Seq_index
    matrix@156@01
    (Ref__multidim_index_2 ($Snap.combine
      $Snap.unit
      ($Snap.combine
        $Snap.unit
        ($Snap.combine
          $Snap.unit
          ($Snap.combine $Snap.unit ($Snap.combine $Snap.unit $Snap.unit))))) M@154@01 N@155@01 i@224@01 j@225@01)))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/third_party/testHistogram.vpr@112@13@112@222|)))
(declare-const $t@226@01 $Snap)
(assert (= $t@226@01 ($Snap.combine ($Snap.first $t@226@01) ($Snap.second $t@226@01))))
(assert (= ($Snap.first $t@226@01) $Snap.unit))
; [eval] M > 0
(assert (=
  ($Snap.second $t@226@01)
  ($Snap.combine
    ($Snap.first ($Snap.second $t@226@01))
    ($Snap.second ($Snap.second $t@226@01)))))
(assert (= ($Snap.first ($Snap.second $t@226@01)) $Snap.unit))
; [eval] N > 0
(assert (=
  ($Snap.second ($Snap.second $t@226@01))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second $t@226@01)))
    ($Snap.second ($Snap.second ($Snap.second $t@226@01))))))
(assert (= ($Snap.first ($Snap.second ($Snap.second $t@226@01))) $Snap.unit))
; [eval] P > 0
(assert (=
  ($Snap.second ($Snap.second ($Snap.second $t@226@01)))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@226@01))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@226@01)))))))
(declare-const j@227@01 Int)
(push) ; 3
; [eval] 0 <= j && j < M * N
; [eval] 0 <= j
(push) ; 4
; [then-branch: 117 | !(0 <= j@227@01) | live]
; [else-branch: 117 | 0 <= j@227@01 | live]
(push) ; 5
; [then-branch: 117 | !(0 <= j@227@01)]
(assert (not (<= 0 j@227@01)))
(pop) ; 5
(push) ; 5
; [else-branch: 117 | 0 <= j@227@01]
(assert (<= 0 j@227@01))
; [eval] j < M * N
; [eval] M * N
(pop) ; 5
(pop) ; 4
; Joined path conditions
; Joined path conditions
(assert (or (<= 0 j@227@01) (not (<= 0 j@227@01))))
(assert (and (<= 0 j@227@01) (< j@227@01 (* M@154@01 N@155@01))))
; [eval] matrix[j]
(push) ; 4
(assert (not (>= j@227@01 0)))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(push) ; 4
(assert (not (< j@227@01 (Seq_length matrix@156@01))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(pop) ; 3
(declare-fun inv@228@01 ($Ref) Int)
(declare-fun img@229@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
(assert (forall ((j@227@01 Int)) (!
  (=>
    (and (<= 0 j@227@01) (< j@227@01 (* M@154@01 N@155@01)))
    (or (<= 0 j@227@01) (not (<= 0 j@227@01))))
  :pattern ((Seq_index matrix@156@01 j@227@01))
  :qid |Ref__Integer_value-aux|)))
; Check receiver injectivity
(push) ; 3
(assert (not (forall ((j1@227@01 Int) (j2@227@01 Int)) (!
  (=>
    (and
      (and (<= 0 j1@227@01) (< j1@227@01 (* M@154@01 N@155@01)))
      (and (<= 0 j2@227@01) (< j2@227@01 (* M@154@01 N@155@01)))
      (= (Seq_index matrix@156@01 j1@227@01) (Seq_index matrix@156@01 j2@227@01)))
    (= j1@227@01 j2@227@01))
  
  :qid |Ref__Integer_value-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((j@227@01 Int)) (!
  (=>
    (and (<= 0 j@227@01) (< j@227@01 (* M@154@01 N@155@01)))
    (and
      (= (inv@228@01 (Seq_index matrix@156@01 j@227@01)) j@227@01)
      (img@229@01 (Seq_index matrix@156@01 j@227@01))))
  :pattern ((Seq_index matrix@156@01 j@227@01))
  :qid |quant-u-10048|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@229@01 r)
      (and (<= 0 (inv@228@01 r)) (< (inv@228@01 r) (* M@154@01 N@155@01))))
    (= (Seq_index matrix@156@01 (inv@228@01 r)) r))
  :pattern ((inv@228@01 r))
  :qid |Ref__Integer_value-fctOfInv|)))
; Permissions are non-negative
; Field permissions are at most one
; Permission implies non-null receiver
(assert (forall ((j@227@01 Int)) (!
  (=>
    (and (<= 0 j@227@01) (< j@227@01 (* M@154@01 N@155@01)))
    (not (= (Seq_index matrix@156@01 j@227@01) $Ref.null)))
  :pattern ((Seq_index matrix@156@01 j@227@01))
  :qid |Ref__Integer_value-permImpliesNonNull|)))
(push) ; 3
(set-option :timeout 10)
(assert (not (forall ((r $Ref)) (!
  (and
    (= (Seq_index matrix@156@01 j@227@01) (Seq_index matrix@156@01 j1@162@01))
    (=
      (and
        (img@229@01 r)
        (and (<= 0 (inv@228@01 r)) (< (inv@228@01 r) (* M@154@01 N@155@01))))
      (and
        (img@164@01 r)
        (and (<= 0 (inv@163@01 r)) (< (inv@163@01 r) (* M@154@01 N@155@01))))))
  
  :qid |quant-u-10049|))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@226@01))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@226@01)))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@226@01))))))))
(declare-const k@230@01 Int)
(set-option :timeout 0)
(push) ; 3
; [eval] 0 <= k && k < P
; [eval] 0 <= k
(push) ; 4
; [then-branch: 118 | !(0 <= k@230@01) | live]
; [else-branch: 118 | 0 <= k@230@01 | live]
(push) ; 5
; [then-branch: 118 | !(0 <= k@230@01)]
(assert (not (<= 0 k@230@01)))
(pop) ; 5
(push) ; 5
; [else-branch: 118 | 0 <= k@230@01]
(assert (<= 0 k@230@01))
; [eval] k < P
(pop) ; 5
(pop) ; 4
; Joined path conditions
; Joined path conditions
(assert (or (<= 0 k@230@01) (not (<= 0 k@230@01))))
(assert (and (<= 0 k@230@01) (< k@230@01 P@157@01)))
; [eval] hist[k]
(push) ; 4
(assert (not (>= k@230@01 0)))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(push) ; 4
(assert (not (< k@230@01 (Seq_length hist@158@01))))
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
(assert (forall ((k@230@01 Int)) (!
  (=>
    (and (<= 0 k@230@01) (< k@230@01 P@157@01))
    (or (<= 0 k@230@01) (not (<= 0 k@230@01))))
  :pattern ((Seq_index hist@158@01 k@230@01))
  :qid |Ref__Integer_value-aux|)))
; Check receiver injectivity
(push) ; 3
(assert (not (forall ((k1@230@01 Int) (k2@230@01 Int)) (!
  (=>
    (and
      (and (<= 0 k1@230@01) (< k1@230@01 P@157@01))
      (and (<= 0 k2@230@01) (< k2@230@01 P@157@01))
      (= (Seq_index hist@158@01 k1@230@01) (Seq_index hist@158@01 k2@230@01)))
    (= k1@230@01 k2@230@01))
  
  :qid |Ref__Integer_value-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((k@230@01 Int)) (!
  (=>
    (and (<= 0 k@230@01) (< k@230@01 P@157@01))
    (and
      (= (inv@231@01 (Seq_index hist@158@01 k@230@01)) k@230@01)
      (img@232@01 (Seq_index hist@158@01 k@230@01))))
  :pattern ((Seq_index hist@158@01 k@230@01))
  :qid |quant-u-10051|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@232@01 r) (and (<= 0 (inv@231@01 r)) (< (inv@231@01 r) P@157@01)))
    (= (Seq_index hist@158@01 (inv@231@01 r)) r))
  :pattern ((inv@231@01 r))
  :qid |Ref__Integer_value-fctOfInv|)))
; Permissions are non-negative
; Field permissions are at most one
; Permission implies non-null receiver
(assert (forall ((k@230@01 Int)) (!
  (=>
    (and (<= 0 k@230@01) (< k@230@01 P@157@01))
    (not (= (Seq_index hist@158@01 k@230@01) $Ref.null)))
  :pattern ((Seq_index hist@158@01 k@230@01))
  :qid |Ref__Integer_value-permImpliesNonNull|)))
(push) ; 3
(set-option :timeout 10)
(assert (not (forall ((r $Ref)) (!
  (and
    (= (Seq_index hist@158@01 k@230@01) (Seq_index matrix@156@01 j@227@01))
    (=
      (and
        (img@232@01 r)
        (and (<= 0 (inv@231@01 r)) (< (inv@231@01 r) P@157@01)))
      (and
        (img@229@01 r)
        (and (<= 0 (inv@228@01 r)) (< (inv@228@01 r) (* M@154@01 N@155@01))))))
  
  :qid |quant-u-10052|))))
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
    (= (Seq_index hist@158@01 k@230@01) (Seq_index matrix@156@01 j1@162@01))
    (=
      (and
        (img@232@01 r)
        (and (<= 0 (inv@231@01 r)) (< (inv@231@01 r) P@157@01)))
      (and
        (img@164@01 r)
        (and (<= 0 (inv@163@01 r)) (< (inv@163@01 r) (* M@154@01 N@155@01))))))
  
  :qid |quant-u-10053|))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@226@01)))))
  $Snap.unit))
; [eval] (forall k: Int :: { old(hist[k]) } 0 <= k && k < P ==> hist[k].Ref__Integer_value == old(hist[k].Ref__Integer_value) + count_array(0, M * N, matrix, k))
(declare-const k@233@01 Int)
(set-option :timeout 0)
(push) ; 3
; [eval] 0 <= k && k < P ==> hist[k].Ref__Integer_value == old(hist[k].Ref__Integer_value) + count_array(0, M * N, matrix, k)
; [eval] 0 <= k && k < P
; [eval] 0 <= k
(push) ; 4
; [then-branch: 119 | !(0 <= k@233@01) | live]
; [else-branch: 119 | 0 <= k@233@01 | live]
(push) ; 5
; [then-branch: 119 | !(0 <= k@233@01)]
(assert (not (<= 0 k@233@01)))
(pop) ; 5
(push) ; 5
; [else-branch: 119 | 0 <= k@233@01]
(assert (<= 0 k@233@01))
; [eval] k < P
(pop) ; 5
(pop) ; 4
; Joined path conditions
; Joined path conditions
(assert (or (<= 0 k@233@01) (not (<= 0 k@233@01))))
(push) ; 4
; [then-branch: 120 | 0 <= k@233@01 && k@233@01 < P@157@01 | live]
; [else-branch: 120 | !(0 <= k@233@01 && k@233@01 < P@157@01) | live]
(push) ; 5
; [then-branch: 120 | 0 <= k@233@01 && k@233@01 < P@157@01]
(assert (and (<= 0 k@233@01) (< k@233@01 P@157@01)))
; [eval] hist[k].Ref__Integer_value == old(hist[k].Ref__Integer_value) + count_array(0, M * N, matrix, k)
; [eval] hist[k]
(push) ; 6
(assert (not (>= k@233@01 0)))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(push) ; 6
(assert (not (< k@233@01 (Seq_length hist@158@01))))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(declare-const sm@234@01 $FVF<Ref__Integer_value>)
; Definitional axioms for snapshot map values
(assert (forall ((r $Ref)) (!
  (=>
    (ite
      (and
        (img@164@01 r)
        (and (<= 0 (inv@163@01 r)) (< (inv@163@01 r) (* M@154@01 N@155@01))))
      (< $Perm.No (- (/ (to_real 1) (to_real 2)) (pTaken@221@01 r)))
      false)
    (=
      ($FVF.lookup_Ref__Integer_value (as sm@234@01  $FVF<Ref__Integer_value>) r)
      ($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@159@01))))))))) r)))
  :pattern (($FVF.lookup_Ref__Integer_value (as sm@234@01  $FVF<Ref__Integer_value>) r))
  :pattern (($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@159@01))))))))) r))
  :qid |qp.fvfValDef34|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@229@01 r)
      (and (<= 0 (inv@228@01 r)) (< (inv@228@01 r) (* M@154@01 N@155@01))))
    (=
      ($FVF.lookup_Ref__Integer_value (as sm@234@01  $FVF<Ref__Integer_value>) r)
      ($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@226@01))))) r)))
  :pattern (($FVF.lookup_Ref__Integer_value (as sm@234@01  $FVF<Ref__Integer_value>) r))
  :pattern (($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@226@01))))) r))
  :qid |qp.fvfValDef35|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@232@01 r) (and (<= 0 (inv@231@01 r)) (< (inv@231@01 r) P@157@01)))
    (=
      ($FVF.lookup_Ref__Integer_value (as sm@234@01  $FVF<Ref__Integer_value>) r)
      ($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@226@01)))))) r)))
  :pattern (($FVF.lookup_Ref__Integer_value (as sm@234@01  $FVF<Ref__Integer_value>) r))
  :pattern (($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@226@01)))))) r))
  :qid |qp.fvfValDef36|)))
(declare-const pm@235@01 $FPM)
(assert (forall ((r $Ref)) (!
  (=
    ($FVF.perm_Ref__Integer_value (as pm@235@01  $FPM) r)
    (+
      (+
        (ite
          (and
            (img@164@01 r)
            (and (<= 0 (inv@163@01 r)) (< (inv@163@01 r) (* M@154@01 N@155@01))))
          (- (/ (to_real 1) (to_real 2)) (pTaken@221@01 r))
          $Perm.No)
        (ite
          (and
            (img@229@01 r)
            (and (<= 0 (inv@228@01 r)) (< (inv@228@01 r) (* M@154@01 N@155@01))))
          (/ (to_real 1) (to_real 4))
          $Perm.No))
      (ite
        (and
          (img@232@01 r)
          (and (<= 0 (inv@231@01 r)) (< (inv@231@01 r) P@157@01)))
        $Perm.Write
        $Perm.No)))
  :pattern (($FVF.perm_Ref__Integer_value (as pm@235@01  $FPM) r))
  :qid |qp.resPrmSumDef37|)))
(push) ; 6
(assert (not (<
  $Perm.No
  ($FVF.perm_Ref__Integer_value (as pm@235@01  $FPM) (Seq_index
    hist@158@01
    k@233@01)))))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
; [eval] old(hist[k].Ref__Integer_value) + count_array(0, M * N, matrix, k)
; [eval] old(hist[k].Ref__Integer_value)
; [eval] hist[k]
(push) ; 6
(assert (not (>= k@233@01 0)))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(push) ; 6
(assert (not (< k@233@01 (Seq_length hist@158@01))))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(assert (and
  (forall ((r $Ref)) (!
    (=>
      (and
        (img@164@01 r)
        (and (<= 0 (inv@163@01 r)) (< (inv@163@01 r) (* M@154@01 N@155@01))))
      (=
        ($FVF.lookup_Ref__Integer_value (as sm@207@01  $FVF<Ref__Integer_value>) r)
        ($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@159@01))))))))) r)))
    :pattern (($FVF.lookup_Ref__Integer_value (as sm@207@01  $FVF<Ref__Integer_value>) r))
    :pattern (($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@159@01))))))))) r))
    :qid |qp.fvfValDef31|))
  (forall ((r $Ref)) (!
    (=>
      (and
        (img@205@01 r)
        (and (<= 0 (inv@204@01 r)) (< (inv@204@01 r) P@157@01)))
      (=
        ($FVF.lookup_Ref__Integer_value (as sm@207@01  $FVF<Ref__Integer_value>) r)
        ($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first $t@202@01)) r)))
    :pattern (($FVF.lookup_Ref__Integer_value (as sm@207@01  $FVF<Ref__Integer_value>) r))
    :pattern (($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first $t@202@01)) r))
    :qid |qp.fvfValDef32|))))
(push) ; 6
(assert (not (<
  $Perm.No
  (+
    (ite
      (and
        (img@164@01 (Seq_index hist@158@01 k@233@01))
        (and
          (<= 0 (inv@163@01 (Seq_index hist@158@01 k@233@01)))
          (< (inv@163@01 (Seq_index hist@158@01 k@233@01)) (* M@154@01 N@155@01))))
      (/ (to_real 1) (to_real 2))
      $Perm.No)
    (ite
      (and
        (img@205@01 (Seq_index hist@158@01 k@233@01))
        (and
          (<= 0 (inv@204@01 (Seq_index hist@158@01 k@233@01)))
          (< (inv@204@01 (Seq_index hist@158@01 k@233@01)) P@157@01)))
      $Perm.Write
      $Perm.No)))))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
; [eval] count_array(0, M * N, matrix, k)
; [eval] M * N
(push) ; 6
; [eval] 0 <= i
; [eval] i <= hi
(push) ; 7
(assert (not (<= 0 (* M@154@01 N@155@01))))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(assert (<= 0 (* M@154@01 N@155@01)))
; [eval] hi <= |ar|
; [eval] |ar|
; [eval] (forall j: Int, k: Int ::0 <= j && (j < hi && (0 <= k && (k < hi && j != k))) ==> ar[j] != ar[k])
(declare-const j@236@01 Int)
(declare-const k@237@01 Int)
(push) ; 7
; [eval] 0 <= j && (j < hi && (0 <= k && (k < hi && j != k))) ==> ar[j] != ar[k]
; [eval] 0 <= j && (j < hi && (0 <= k && (k < hi && j != k)))
; [eval] 0 <= j
(push) ; 8
; [then-branch: 121 | !(0 <= j@236@01) | live]
; [else-branch: 121 | 0 <= j@236@01 | live]
(push) ; 9
; [then-branch: 121 | !(0 <= j@236@01)]
(assert (not (<= 0 j@236@01)))
(pop) ; 9
(push) ; 9
; [else-branch: 121 | 0 <= j@236@01]
(assert (<= 0 j@236@01))
; [eval] j < hi
(push) ; 10
; [then-branch: 122 | !(j@236@01 < M@154@01 * N@155@01) | live]
; [else-branch: 122 | j@236@01 < M@154@01 * N@155@01 | live]
(push) ; 11
; [then-branch: 122 | !(j@236@01 < M@154@01 * N@155@01)]
(assert (not (< j@236@01 (* M@154@01 N@155@01))))
(pop) ; 11
(push) ; 11
; [else-branch: 122 | j@236@01 < M@154@01 * N@155@01]
(assert (< j@236@01 (* M@154@01 N@155@01)))
; [eval] 0 <= k
(push) ; 12
; [then-branch: 123 | !(0 <= k@237@01) | live]
; [else-branch: 123 | 0 <= k@237@01 | live]
(push) ; 13
; [then-branch: 123 | !(0 <= k@237@01)]
(assert (not (<= 0 k@237@01)))
(pop) ; 13
(push) ; 13
; [else-branch: 123 | 0 <= k@237@01]
(assert (<= 0 k@237@01))
; [eval] k < hi
(push) ; 14
; [then-branch: 124 | !(k@237@01 < M@154@01 * N@155@01) | live]
; [else-branch: 124 | k@237@01 < M@154@01 * N@155@01 | live]
(push) ; 15
; [then-branch: 124 | !(k@237@01 < M@154@01 * N@155@01)]
(assert (not (< k@237@01 (* M@154@01 N@155@01))))
(pop) ; 15
(push) ; 15
; [else-branch: 124 | k@237@01 < M@154@01 * N@155@01]
(assert (< k@237@01 (* M@154@01 N@155@01)))
; [eval] j != k
(pop) ; 15
(pop) ; 14
; Joined path conditions
; Joined path conditions
(assert (or (< k@237@01 (* M@154@01 N@155@01)) (not (< k@237@01 (* M@154@01 N@155@01)))))
(pop) ; 13
(pop) ; 12
; Joined path conditions
; Joined path conditions
(assert (=>
  (<= 0 k@237@01)
  (and
    (<= 0 k@237@01)
    (or
      (< k@237@01 (* M@154@01 N@155@01))
      (not (< k@237@01 (* M@154@01 N@155@01)))))))
(assert (or (<= 0 k@237@01) (not (<= 0 k@237@01))))
(pop) ; 11
(pop) ; 10
; Joined path conditions
; Joined path conditions
(assert (=>
  (< j@236@01 (* M@154@01 N@155@01))
  (and
    (< j@236@01 (* M@154@01 N@155@01))
    (=>
      (<= 0 k@237@01)
      (and
        (<= 0 k@237@01)
        (or
          (< k@237@01 (* M@154@01 N@155@01))
          (not (< k@237@01 (* M@154@01 N@155@01))))))
    (or (<= 0 k@237@01) (not (<= 0 k@237@01))))))
(assert (or (< j@236@01 (* M@154@01 N@155@01)) (not (< j@236@01 (* M@154@01 N@155@01)))))
(pop) ; 9
(pop) ; 8
; Joined path conditions
; Joined path conditions
(assert (=>
  (<= 0 j@236@01)
  (and
    (<= 0 j@236@01)
    (=>
      (< j@236@01 (* M@154@01 N@155@01))
      (and
        (< j@236@01 (* M@154@01 N@155@01))
        (=>
          (<= 0 k@237@01)
          (and
            (<= 0 k@237@01)
            (or
              (< k@237@01 (* M@154@01 N@155@01))
              (not (< k@237@01 (* M@154@01 N@155@01))))))
        (or (<= 0 k@237@01) (not (<= 0 k@237@01)))))
    (or
      (< j@236@01 (* M@154@01 N@155@01))
      (not (< j@236@01 (* M@154@01 N@155@01)))))))
(assert (or (<= 0 j@236@01) (not (<= 0 j@236@01))))
(push) ; 8
; [then-branch: 125 | 0 <= j@236@01 && j@236@01 < M@154@01 * N@155@01 && 0 <= k@237@01 && k@237@01 < M@154@01 * N@155@01 && j@236@01 != k@237@01 | live]
; [else-branch: 125 | !(0 <= j@236@01 && j@236@01 < M@154@01 * N@155@01 && 0 <= k@237@01 && k@237@01 < M@154@01 * N@155@01 && j@236@01 != k@237@01) | live]
(push) ; 9
; [then-branch: 125 | 0 <= j@236@01 && j@236@01 < M@154@01 * N@155@01 && 0 <= k@237@01 && k@237@01 < M@154@01 * N@155@01 && j@236@01 != k@237@01]
(assert (and
  (<= 0 j@236@01)
  (and
    (< j@236@01 (* M@154@01 N@155@01))
    (and
      (<= 0 k@237@01)
      (and (< k@237@01 (* M@154@01 N@155@01)) (not (= j@236@01 k@237@01)))))))
; [eval] ar[j] != ar[k]
; [eval] ar[j]
(push) ; 10
(assert (not (>= j@236@01 0)))
(check-sat)
; unsat
(pop) ; 10
; 0.00s
; (get-info :all-statistics)
(push) ; 10
(assert (not (< j@236@01 (Seq_length matrix@156@01))))
(check-sat)
; unsat
(pop) ; 10
; 0.00s
; (get-info :all-statistics)
; [eval] ar[k]
(push) ; 10
(assert (not (>= k@237@01 0)))
(check-sat)
; unsat
(pop) ; 10
; 0.00s
; (get-info :all-statistics)
(push) ; 10
(assert (not (< k@237@01 (Seq_length matrix@156@01))))
(check-sat)
; unsat
(pop) ; 10
; 0.00s
; (get-info :all-statistics)
(pop) ; 9
(push) ; 9
; [else-branch: 125 | !(0 <= j@236@01 && j@236@01 < M@154@01 * N@155@01 && 0 <= k@237@01 && k@237@01 < M@154@01 * N@155@01 && j@236@01 != k@237@01)]
(assert (not
  (and
    (<= 0 j@236@01)
    (and
      (< j@236@01 (* M@154@01 N@155@01))
      (and
        (<= 0 k@237@01)
        (and (< k@237@01 (* M@154@01 N@155@01)) (not (= j@236@01 k@237@01))))))))
(pop) ; 9
(pop) ; 8
; Joined path conditions
(assert (=>
  (and
    (<= 0 j@236@01)
    (and
      (< j@236@01 (* M@154@01 N@155@01))
      (and
        (<= 0 k@237@01)
        (and (< k@237@01 (* M@154@01 N@155@01)) (not (= j@236@01 k@237@01))))))
  (and
    (<= 0 j@236@01)
    (< j@236@01 (* M@154@01 N@155@01))
    (<= 0 k@237@01)
    (< k@237@01 (* M@154@01 N@155@01))
    (not (= j@236@01 k@237@01)))))
; Joined path conditions
(assert (or
  (not
    (and
      (<= 0 j@236@01)
      (and
        (< j@236@01 (* M@154@01 N@155@01))
        (and
          (<= 0 k@237@01)
          (and (< k@237@01 (* M@154@01 N@155@01)) (not (= j@236@01 k@237@01)))))))
  (and
    (<= 0 j@236@01)
    (and
      (< j@236@01 (* M@154@01 N@155@01))
      (and
        (<= 0 k@237@01)
        (and (< k@237@01 (* M@154@01 N@155@01)) (not (= j@236@01 k@237@01))))))))
(pop) ; 7
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(push) ; 7
(assert (not (forall ((j@236@01 Int) (k@237@01 Int)) (!
  (=>
    (and
      (<= 0 j@236@01)
      (and
        (< j@236@01 (* M@154@01 N@155@01))
        (and
          (<= 0 k@237@01)
          (and (< k@237@01 (* M@154@01 N@155@01)) (not (= j@236@01 k@237@01))))))
    (not
      (= (Seq_index matrix@156@01 j@236@01) (Seq_index matrix@156@01 k@237@01))))
  
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/third_party/testHistogram.vpr@66@12@66@102|))))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(assert (forall ((j@236@01 Int) (k@237@01 Int)) (!
  (=>
    (and
      (<= 0 j@236@01)
      (and
        (< j@236@01 (* M@154@01 N@155@01))
        (and
          (<= 0 k@237@01)
          (and (< k@237@01 (* M@154@01 N@155@01)) (not (= j@236@01 k@237@01))))))
    (not
      (= (Seq_index matrix@156@01 j@236@01) (Seq_index matrix@156@01 k@237@01))))
  
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/third_party/testHistogram.vpr@66@12@66@102|)))
(declare-const k@238@01 Int)
(push) ; 7
; [eval] 0 <= k && k < hi
; [eval] 0 <= k
(push) ; 8
; [then-branch: 126 | !(0 <= k@238@01) | live]
; [else-branch: 126 | 0 <= k@238@01 | live]
(push) ; 9
; [then-branch: 126 | !(0 <= k@238@01)]
(assert (not (<= 0 k@238@01)))
(pop) ; 9
(push) ; 9
; [else-branch: 126 | 0 <= k@238@01]
(assert (<= 0 k@238@01))
; [eval] k < hi
(pop) ; 9
(pop) ; 8
; Joined path conditions
; Joined path conditions
(assert (or (<= 0 k@238@01) (not (<= 0 k@238@01))))
(assert (and (<= 0 k@238@01) (< k@238@01 (* M@154@01 N@155@01))))
(declare-const $k@239@01 $Perm)
(assert ($Perm.isReadVar $k@239@01))
; [eval] ar[k]
(push) ; 8
(assert (not (>= k@238@01 0)))
(check-sat)
; unsat
(pop) ; 8
; 0.00s
; (get-info :all-statistics)
(push) ; 8
(assert (not (< k@238@01 (Seq_length matrix@156@01))))
(check-sat)
; unsat
(pop) ; 8
; 0.00s
; (get-info :all-statistics)
(pop) ; 7
(declare-fun inv@240@01 ($Ref) Int)
(declare-fun img@241@01 ($Ref) Bool)
; Nested auxiliary terms: globals
(assert ($Perm.isReadVar $k@239@01))
; Nested auxiliary terms: non-globals
(assert (forall ((k@238@01 Int)) (!
  (=>
    (and (<= 0 k@238@01) (< k@238@01 (* M@154@01 N@155@01)))
    (or (<= 0 k@238@01) (not (<= 0 k@238@01))))
  :pattern ((Seq_index matrix@156@01 k@238@01))
  :qid |Ref__Integer_value-aux|)))
(push) ; 7
(assert (not (forall ((k@238@01 Int)) (!
  (=>
    (and (<= 0 k@238@01) (< k@238@01 (* M@154@01 N@155@01)))
    (or (= $k@239@01 $Perm.No) (< $Perm.No $k@239@01)))
  
  :qid |quant-u-10054|))))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
; Check receiver injectivity
(push) ; 7
(assert (not (forall ((k1@238@01 Int) (k2@238@01 Int)) (!
  (=>
    (and
      (and
        (and (<= 0 k1@238@01) (< k1@238@01 (* M@154@01 N@155@01)))
        (< $Perm.No $k@239@01))
      (and
        (and (<= 0 k2@238@01) (< k2@238@01 (* M@154@01 N@155@01)))
        (< $Perm.No $k@239@01))
      (= (Seq_index matrix@156@01 k1@238@01) (Seq_index matrix@156@01 k2@238@01)))
    (= k1@238@01 k2@238@01))
  
  :qid |Ref__Integer_value-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((k@238@01 Int)) (!
  (=>
    (and
      (and (<= 0 k@238@01) (< k@238@01 (* M@154@01 N@155@01)))
      (< $Perm.No $k@239@01))
    (and
      (= (inv@240@01 (Seq_index matrix@156@01 k@238@01)) k@238@01)
      (img@241@01 (Seq_index matrix@156@01 k@238@01))))
  :pattern ((Seq_index matrix@156@01 k@238@01))
  :qid |Ref__Integer_value-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@241@01 r)
      (and
        (and (<= 0 (inv@240@01 r)) (< (inv@240@01 r) (* M@154@01 N@155@01)))
        (< $Perm.No $k@239@01)))
    (= (Seq_index matrix@156@01 (inv@240@01 r)) r))
  :pattern ((inv@240@01 r))
  :qid |Ref__Integer_value-fctOfInv|)))
(push) ; 7
(set-option :timeout 10)
(assert (not (forall ((k@238@01 Int)) (!
  (= (Seq_index matrix@156@01 k@238@01) (Seq_index hist@158@01 k@238@01))
  
  :qid |quant-u-10055|))))
(check-sat)
; unknown
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 7
(assert (not (forall ((r $Ref)) (!
  (=>
    (and
      (and
        (and (<= 0 (inv@240@01 r)) (< (inv@240@01 r) (* M@154@01 N@155@01)))
        (img@241@01 r)
        (= r (Seq_index matrix@156@01 (inv@240@01 r))))
      (> $k@239@01 $Perm.No))
    (>
      (+
        (+
          (ite
            (and
              (img@164@01 r)
              (and
                (<= 0 (inv@163@01 r))
                (< (inv@163@01 r) (* M@154@01 N@155@01))))
            (- (/ (to_real 1) (to_real 2)) (pTaken@221@01 r))
            $Perm.No)
          (ite
            (and
              (img@229@01 r)
              (and
                (<= 0 (inv@228@01 r))
                (< (inv@228@01 r) (* M@154@01 N@155@01))))
            (/ (to_real 1) (to_real 4))
            $Perm.No))
        (ite
          (and
            (img@232@01 r)
            (and (<= 0 (inv@231@01 r)) (< (inv@231@01 r) P@157@01)))
          $Perm.Write
          $Perm.No))
      $Perm.No))
  
  :qid |quant-u-10056|))))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(declare-const sm@242@01 $FVF<Ref__Integer_value>)
; Definitional axioms for snapshot map domain
(assert (forall ((r $Ref)) (!
  (and
    (=>
      (Set_in r ($FVF.domain_Ref__Integer_value (as sm@242@01  $FVF<Ref__Integer_value>)))
      (and
        (and (<= 0 (inv@240@01 r)) (< (inv@240@01 r) (* M@154@01 N@155@01)))
        (< $Perm.No $k@239@01)
        (img@241@01 r)))
    (=>
      (and
        (and (<= 0 (inv@240@01 r)) (< (inv@240@01 r) (* M@154@01 N@155@01)))
        (< $Perm.No $k@239@01)
        (img@241@01 r))
      (Set_in r ($FVF.domain_Ref__Integer_value (as sm@242@01  $FVF<Ref__Integer_value>)))))
  :pattern ((Set_in r ($FVF.domain_Ref__Integer_value (as sm@242@01  $FVF<Ref__Integer_value>))))
  :qid |qp.fvfDomDef41|)))
; Definitional axioms for snapshot map values
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and
        (and (<= 0 (inv@240@01 r)) (< (inv@240@01 r) (* M@154@01 N@155@01)))
        (< $Perm.No $k@239@01)
        (img@241@01 r))
      (ite
        (and
          (img@164@01 r)
          (and (<= 0 (inv@163@01 r)) (< (inv@163@01 r) (* M@154@01 N@155@01))))
        (< $Perm.No (- (/ (to_real 1) (to_real 2)) (pTaken@221@01 r)))
        false))
    (=
      ($FVF.lookup_Ref__Integer_value (as sm@242@01  $FVF<Ref__Integer_value>) r)
      ($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@159@01))))))))) r)))
  :pattern (($FVF.lookup_Ref__Integer_value (as sm@242@01  $FVF<Ref__Integer_value>) r))
  :pattern (($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@159@01))))))))) r))
  :qid |qp.fvfValDef38|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and
        (and (<= 0 (inv@240@01 r)) (< (inv@240@01 r) (* M@154@01 N@155@01)))
        (< $Perm.No $k@239@01)
        (img@241@01 r))
      (and
        (img@229@01 r)
        (and (<= 0 (inv@228@01 r)) (< (inv@228@01 r) (* M@154@01 N@155@01)))))
    (=
      ($FVF.lookup_Ref__Integer_value (as sm@242@01  $FVF<Ref__Integer_value>) r)
      ($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@226@01))))) r)))
  :pattern (($FVF.lookup_Ref__Integer_value (as sm@242@01  $FVF<Ref__Integer_value>) r))
  :pattern (($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@226@01))))) r))
  :qid |qp.fvfValDef39|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and
        (and (<= 0 (inv@240@01 r)) (< (inv@240@01 r) (* M@154@01 N@155@01)))
        (< $Perm.No $k@239@01)
        (img@241@01 r))
      (and
        (img@232@01 r)
        (and (<= 0 (inv@231@01 r)) (< (inv@231@01 r) P@157@01))))
    (=
      ($FVF.lookup_Ref__Integer_value (as sm@242@01  $FVF<Ref__Integer_value>) r)
      ($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@226@01)))))) r)))
  :pattern (($FVF.lookup_Ref__Integer_value (as sm@242@01  $FVF<Ref__Integer_value>) r))
  :pattern (($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@226@01)))))) r))
  :qid |qp.fvfValDef40|)))
(assert (count_array%precondition ($Snap.combine
  $Snap.unit
  ($Snap.combine
    $Snap.unit
    ($Snap.combine
      $Snap.unit
      ($Snap.combine
        $Snap.unit
        ($SortWrappers.$FVF<Ref__Integer_value>To$Snap (as sm@242@01  $FVF<Ref__Integer_value>)))))) 0 (*
  M@154@01
  N@155@01) matrix@156@01 k@233@01))
(pop) ; 6
; Joined path conditions
(assert ($Perm.isReadVar $k@239@01))
(assert (forall ((k@238@01 Int)) (!
  (=>
    (and
      (and (<= 0 k@238@01) (< k@238@01 (* M@154@01 N@155@01)))
      (< $Perm.No $k@239@01))
    (and
      (= (inv@240@01 (Seq_index matrix@156@01 k@238@01)) k@238@01)
      (img@241@01 (Seq_index matrix@156@01 k@238@01))))
  :pattern ((Seq_index matrix@156@01 k@238@01))
  :qid |Ref__Integer_value-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@241@01 r)
      (and
        (and (<= 0 (inv@240@01 r)) (< (inv@240@01 r) (* M@154@01 N@155@01)))
        (< $Perm.No $k@239@01)))
    (= (Seq_index matrix@156@01 (inv@240@01 r)) r))
  :pattern ((inv@240@01 r))
  :qid |Ref__Integer_value-fctOfInv|)))
(assert (forall ((r $Ref)) (!
  (and
    (=>
      (Set_in r ($FVF.domain_Ref__Integer_value (as sm@242@01  $FVF<Ref__Integer_value>)))
      (and
        (and (<= 0 (inv@240@01 r)) (< (inv@240@01 r) (* M@154@01 N@155@01)))
        (< $Perm.No $k@239@01)
        (img@241@01 r)))
    (=>
      (and
        (and (<= 0 (inv@240@01 r)) (< (inv@240@01 r) (* M@154@01 N@155@01)))
        (< $Perm.No $k@239@01)
        (img@241@01 r))
      (Set_in r ($FVF.domain_Ref__Integer_value (as sm@242@01  $FVF<Ref__Integer_value>)))))
  :pattern ((Set_in r ($FVF.domain_Ref__Integer_value (as sm@242@01  $FVF<Ref__Integer_value>))))
  :qid |qp.fvfDomDef41|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and
        (and (<= 0 (inv@240@01 r)) (< (inv@240@01 r) (* M@154@01 N@155@01)))
        (< $Perm.No $k@239@01)
        (img@241@01 r))
      (ite
        (and
          (img@164@01 r)
          (and (<= 0 (inv@163@01 r)) (< (inv@163@01 r) (* M@154@01 N@155@01))))
        (< $Perm.No (- (/ (to_real 1) (to_real 2)) (pTaken@221@01 r)))
        false))
    (=
      ($FVF.lookup_Ref__Integer_value (as sm@242@01  $FVF<Ref__Integer_value>) r)
      ($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@159@01))))))))) r)))
  :pattern (($FVF.lookup_Ref__Integer_value (as sm@242@01  $FVF<Ref__Integer_value>) r))
  :pattern (($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@159@01))))))))) r))
  :qid |qp.fvfValDef38|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and
        (and (<= 0 (inv@240@01 r)) (< (inv@240@01 r) (* M@154@01 N@155@01)))
        (< $Perm.No $k@239@01)
        (img@241@01 r))
      (and
        (img@229@01 r)
        (and (<= 0 (inv@228@01 r)) (< (inv@228@01 r) (* M@154@01 N@155@01)))))
    (=
      ($FVF.lookup_Ref__Integer_value (as sm@242@01  $FVF<Ref__Integer_value>) r)
      ($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@226@01))))) r)))
  :pattern (($FVF.lookup_Ref__Integer_value (as sm@242@01  $FVF<Ref__Integer_value>) r))
  :pattern (($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@226@01))))) r))
  :qid |qp.fvfValDef39|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and
        (and (<= 0 (inv@240@01 r)) (< (inv@240@01 r) (* M@154@01 N@155@01)))
        (< $Perm.No $k@239@01)
        (img@241@01 r))
      (and
        (img@232@01 r)
        (and (<= 0 (inv@231@01 r)) (< (inv@231@01 r) P@157@01))))
    (=
      ($FVF.lookup_Ref__Integer_value (as sm@242@01  $FVF<Ref__Integer_value>) r)
      ($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@226@01)))))) r)))
  :pattern (($FVF.lookup_Ref__Integer_value (as sm@242@01  $FVF<Ref__Integer_value>) r))
  :pattern (($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@226@01)))))) r))
  :qid |qp.fvfValDef40|)))
(assert (and
  (<= 0 (* M@154@01 N@155@01))
  (forall ((j@236@01 Int) (k@237@01 Int)) (!
    (=>
      (and
        (<= 0 j@236@01)
        (and
          (< j@236@01 (* M@154@01 N@155@01))
          (and
            (<= 0 k@237@01)
            (and (< k@237@01 (* M@154@01 N@155@01)) (not (= j@236@01 k@237@01))))))
      (not
        (= (Seq_index matrix@156@01 j@236@01) (Seq_index matrix@156@01 k@237@01))))
    
    :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/third_party/testHistogram.vpr@66@12@66@102|))
  (forall ((k@238@01 Int)) (!
    (=>
      (and (<= 0 k@238@01) (< k@238@01 (* M@154@01 N@155@01)))
      (or (<= 0 k@238@01) (not (<= 0 k@238@01))))
    :pattern ((Seq_index matrix@156@01 k@238@01))
    :qid |Ref__Integer_value-aux|))
  (count_array%precondition ($Snap.combine
    $Snap.unit
    ($Snap.combine
      $Snap.unit
      ($Snap.combine
        $Snap.unit
        ($Snap.combine
          $Snap.unit
          ($SortWrappers.$FVF<Ref__Integer_value>To$Snap (as sm@242@01  $FVF<Ref__Integer_value>)))))) 0 (*
    M@154@01
    N@155@01) matrix@156@01 k@233@01)))
(pop) ; 5
(push) ; 5
; [else-branch: 120 | !(0 <= k@233@01 && k@233@01 < P@157@01)]
(assert (not (and (<= 0 k@233@01) (< k@233@01 P@157@01))))
(pop) ; 5
(pop) ; 4
; Joined path conditions
(assert (forall ((r $Ref)) (!
  (=>
    (ite
      (and
        (img@164@01 r)
        (and (<= 0 (inv@163@01 r)) (< (inv@163@01 r) (* M@154@01 N@155@01))))
      (< $Perm.No (- (/ (to_real 1) (to_real 2)) (pTaken@221@01 r)))
      false)
    (=
      ($FVF.lookup_Ref__Integer_value (as sm@234@01  $FVF<Ref__Integer_value>) r)
      ($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@159@01))))))))) r)))
  :pattern (($FVF.lookup_Ref__Integer_value (as sm@234@01  $FVF<Ref__Integer_value>) r))
  :pattern (($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@159@01))))))))) r))
  :qid |qp.fvfValDef34|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@229@01 r)
      (and (<= 0 (inv@228@01 r)) (< (inv@228@01 r) (* M@154@01 N@155@01))))
    (=
      ($FVF.lookup_Ref__Integer_value (as sm@234@01  $FVF<Ref__Integer_value>) r)
      ($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@226@01))))) r)))
  :pattern (($FVF.lookup_Ref__Integer_value (as sm@234@01  $FVF<Ref__Integer_value>) r))
  :pattern (($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@226@01))))) r))
  :qid |qp.fvfValDef35|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@232@01 r) (and (<= 0 (inv@231@01 r)) (< (inv@231@01 r) P@157@01)))
    (=
      ($FVF.lookup_Ref__Integer_value (as sm@234@01  $FVF<Ref__Integer_value>) r)
      ($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@226@01)))))) r)))
  :pattern (($FVF.lookup_Ref__Integer_value (as sm@234@01  $FVF<Ref__Integer_value>) r))
  :pattern (($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@226@01)))))) r))
  :qid |qp.fvfValDef36|)))
(assert (forall ((r $Ref)) (!
  (=
    ($FVF.perm_Ref__Integer_value (as pm@235@01  $FPM) r)
    (+
      (+
        (ite
          (and
            (img@164@01 r)
            (and (<= 0 (inv@163@01 r)) (< (inv@163@01 r) (* M@154@01 N@155@01))))
          (- (/ (to_real 1) (to_real 2)) (pTaken@221@01 r))
          $Perm.No)
        (ite
          (and
            (img@229@01 r)
            (and (<= 0 (inv@228@01 r)) (< (inv@228@01 r) (* M@154@01 N@155@01))))
          (/ (to_real 1) (to_real 4))
          $Perm.No))
      (ite
        (and
          (img@232@01 r)
          (and (<= 0 (inv@231@01 r)) (< (inv@231@01 r) P@157@01)))
        $Perm.Write
        $Perm.No)))
  :pattern (($FVF.perm_Ref__Integer_value (as pm@235@01  $FPM) r))
  :qid |qp.resPrmSumDef37|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@164@01 r)
      (and (<= 0 (inv@163@01 r)) (< (inv@163@01 r) (* M@154@01 N@155@01))))
    (=
      ($FVF.lookup_Ref__Integer_value (as sm@207@01  $FVF<Ref__Integer_value>) r)
      ($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@159@01))))))))) r)))
  :pattern (($FVF.lookup_Ref__Integer_value (as sm@207@01  $FVF<Ref__Integer_value>) r))
  :pattern (($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@159@01))))))))) r))
  :qid |qp.fvfValDef31|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@205@01 r) (and (<= 0 (inv@204@01 r)) (< (inv@204@01 r) P@157@01)))
    (=
      ($FVF.lookup_Ref__Integer_value (as sm@207@01  $FVF<Ref__Integer_value>) r)
      ($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first $t@202@01)) r)))
  :pattern (($FVF.lookup_Ref__Integer_value (as sm@207@01  $FVF<Ref__Integer_value>) r))
  :pattern (($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first $t@202@01)) r))
  :qid |qp.fvfValDef32|)))
(assert ($Perm.isReadVar $k@239@01))
(assert (forall ((k@238@01 Int)) (!
  (=>
    (and
      (and (<= 0 k@238@01) (< k@238@01 (* M@154@01 N@155@01)))
      (< $Perm.No $k@239@01))
    (and
      (= (inv@240@01 (Seq_index matrix@156@01 k@238@01)) k@238@01)
      (img@241@01 (Seq_index matrix@156@01 k@238@01))))
  :pattern ((Seq_index matrix@156@01 k@238@01))
  :qid |Ref__Integer_value-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@241@01 r)
      (and
        (and (<= 0 (inv@240@01 r)) (< (inv@240@01 r) (* M@154@01 N@155@01)))
        (< $Perm.No $k@239@01)))
    (= (Seq_index matrix@156@01 (inv@240@01 r)) r))
  :pattern ((inv@240@01 r))
  :qid |Ref__Integer_value-fctOfInv|)))
(assert (forall ((r $Ref)) (!
  (and
    (=>
      (Set_in r ($FVF.domain_Ref__Integer_value (as sm@242@01  $FVF<Ref__Integer_value>)))
      (and
        (and (<= 0 (inv@240@01 r)) (< (inv@240@01 r) (* M@154@01 N@155@01)))
        (< $Perm.No $k@239@01)
        (img@241@01 r)))
    (=>
      (and
        (and (<= 0 (inv@240@01 r)) (< (inv@240@01 r) (* M@154@01 N@155@01)))
        (< $Perm.No $k@239@01)
        (img@241@01 r))
      (Set_in r ($FVF.domain_Ref__Integer_value (as sm@242@01  $FVF<Ref__Integer_value>)))))
  :pattern ((Set_in r ($FVF.domain_Ref__Integer_value (as sm@242@01  $FVF<Ref__Integer_value>))))
  :qid |qp.fvfDomDef41|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and
        (and (<= 0 (inv@240@01 r)) (< (inv@240@01 r) (* M@154@01 N@155@01)))
        (< $Perm.No $k@239@01)
        (img@241@01 r))
      (ite
        (and
          (img@164@01 r)
          (and (<= 0 (inv@163@01 r)) (< (inv@163@01 r) (* M@154@01 N@155@01))))
        (< $Perm.No (- (/ (to_real 1) (to_real 2)) (pTaken@221@01 r)))
        false))
    (=
      ($FVF.lookup_Ref__Integer_value (as sm@242@01  $FVF<Ref__Integer_value>) r)
      ($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@159@01))))))))) r)))
  :pattern (($FVF.lookup_Ref__Integer_value (as sm@242@01  $FVF<Ref__Integer_value>) r))
  :pattern (($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@159@01))))))))) r))
  :qid |qp.fvfValDef38|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and
        (and (<= 0 (inv@240@01 r)) (< (inv@240@01 r) (* M@154@01 N@155@01)))
        (< $Perm.No $k@239@01)
        (img@241@01 r))
      (and
        (img@229@01 r)
        (and (<= 0 (inv@228@01 r)) (< (inv@228@01 r) (* M@154@01 N@155@01)))))
    (=
      ($FVF.lookup_Ref__Integer_value (as sm@242@01  $FVF<Ref__Integer_value>) r)
      ($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@226@01))))) r)))
  :pattern (($FVF.lookup_Ref__Integer_value (as sm@242@01  $FVF<Ref__Integer_value>) r))
  :pattern (($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@226@01))))) r))
  :qid |qp.fvfValDef39|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and
        (and (<= 0 (inv@240@01 r)) (< (inv@240@01 r) (* M@154@01 N@155@01)))
        (< $Perm.No $k@239@01)
        (img@241@01 r))
      (and
        (img@232@01 r)
        (and (<= 0 (inv@231@01 r)) (< (inv@231@01 r) P@157@01))))
    (=
      ($FVF.lookup_Ref__Integer_value (as sm@242@01  $FVF<Ref__Integer_value>) r)
      ($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@226@01)))))) r)))
  :pattern (($FVF.lookup_Ref__Integer_value (as sm@242@01  $FVF<Ref__Integer_value>) r))
  :pattern (($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@226@01)))))) r))
  :qid |qp.fvfValDef40|)))
(assert (=>
  (and (<= 0 k@233@01) (< k@233@01 P@157@01))
  (and
    (<= 0 k@233@01)
    (< k@233@01 P@157@01)
    (<= 0 (* M@154@01 N@155@01))
    (forall ((j@236@01 Int) (k@237@01 Int)) (!
      (=>
        (and
          (<= 0 j@236@01)
          (and
            (< j@236@01 (* M@154@01 N@155@01))
            (and
              (<= 0 k@237@01)
              (and
                (< k@237@01 (* M@154@01 N@155@01))
                (not (= j@236@01 k@237@01))))))
        (not
          (=
            (Seq_index matrix@156@01 j@236@01)
            (Seq_index matrix@156@01 k@237@01))))
      
      :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/third_party/testHistogram.vpr@66@12@66@102|))
    (forall ((k@238@01 Int)) (!
      (=>
        (and (<= 0 k@238@01) (< k@238@01 (* M@154@01 N@155@01)))
        (or (<= 0 k@238@01) (not (<= 0 k@238@01))))
      :pattern ((Seq_index matrix@156@01 k@238@01))
      :qid |Ref__Integer_value-aux|))
    (count_array%precondition ($Snap.combine
      $Snap.unit
      ($Snap.combine
        $Snap.unit
        ($Snap.combine
          $Snap.unit
          ($Snap.combine
            $Snap.unit
            ($SortWrappers.$FVF<Ref__Integer_value>To$Snap (as sm@242@01  $FVF<Ref__Integer_value>)))))) 0 (*
      M@154@01
      N@155@01) matrix@156@01 k@233@01))))
; Joined path conditions
(assert (or
  (not (and (<= 0 k@233@01) (< k@233@01 P@157@01)))
  (and (<= 0 k@233@01) (< k@233@01 P@157@01))))
; [eval] old(hist[k])
; [eval] hist[k]
(push) ; 4
(assert (not (>= k@233@01 0)))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(pop) ; 3
; Nested auxiliary terms: globals (aux)
(assert (forall ((r $Ref)) (!
  (=>
    (ite
      (and
        (img@164@01 r)
        (and (<= 0 (inv@163@01 r)) (< (inv@163@01 r) (* M@154@01 N@155@01))))
      (< $Perm.No (- (/ (to_real 1) (to_real 2)) (pTaken@221@01 r)))
      false)
    (=
      ($FVF.lookup_Ref__Integer_value (as sm@234@01  $FVF<Ref__Integer_value>) r)
      ($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@159@01))))))))) r)))
  :pattern (($FVF.lookup_Ref__Integer_value (as sm@234@01  $FVF<Ref__Integer_value>) r))
  :pattern (($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@159@01))))))))) r))
  :qid |qp.fvfValDef34|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@229@01 r)
      (and (<= 0 (inv@228@01 r)) (< (inv@228@01 r) (* M@154@01 N@155@01))))
    (=
      ($FVF.lookup_Ref__Integer_value (as sm@234@01  $FVF<Ref__Integer_value>) r)
      ($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@226@01))))) r)))
  :pattern (($FVF.lookup_Ref__Integer_value (as sm@234@01  $FVF<Ref__Integer_value>) r))
  :pattern (($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@226@01))))) r))
  :qid |qp.fvfValDef35|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@232@01 r) (and (<= 0 (inv@231@01 r)) (< (inv@231@01 r) P@157@01)))
    (=
      ($FVF.lookup_Ref__Integer_value (as sm@234@01  $FVF<Ref__Integer_value>) r)
      ($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@226@01)))))) r)))
  :pattern (($FVF.lookup_Ref__Integer_value (as sm@234@01  $FVF<Ref__Integer_value>) r))
  :pattern (($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@226@01)))))) r))
  :qid |qp.fvfValDef36|)))
(assert (forall ((r $Ref)) (!
  (=
    ($FVF.perm_Ref__Integer_value (as pm@235@01  $FPM) r)
    (+
      (+
        (ite
          (and
            (img@164@01 r)
            (and (<= 0 (inv@163@01 r)) (< (inv@163@01 r) (* M@154@01 N@155@01))))
          (- (/ (to_real 1) (to_real 2)) (pTaken@221@01 r))
          $Perm.No)
        (ite
          (and
            (img@229@01 r)
            (and (<= 0 (inv@228@01 r)) (< (inv@228@01 r) (* M@154@01 N@155@01))))
          (/ (to_real 1) (to_real 4))
          $Perm.No))
      (ite
        (and
          (img@232@01 r)
          (and (<= 0 (inv@231@01 r)) (< (inv@231@01 r) P@157@01)))
        $Perm.Write
        $Perm.No)))
  :pattern (($FVF.perm_Ref__Integer_value (as pm@235@01  $FPM) r))
  :qid |qp.resPrmSumDef37|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@164@01 r)
      (and (<= 0 (inv@163@01 r)) (< (inv@163@01 r) (* M@154@01 N@155@01))))
    (=
      ($FVF.lookup_Ref__Integer_value (as sm@207@01  $FVF<Ref__Integer_value>) r)
      ($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@159@01))))))))) r)))
  :pattern (($FVF.lookup_Ref__Integer_value (as sm@207@01  $FVF<Ref__Integer_value>) r))
  :pattern (($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@159@01))))))))) r))
  :qid |qp.fvfValDef31|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@205@01 r) (and (<= 0 (inv@204@01 r)) (< (inv@204@01 r) P@157@01)))
    (=
      ($FVF.lookup_Ref__Integer_value (as sm@207@01  $FVF<Ref__Integer_value>) r)
      ($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first $t@202@01)) r)))
  :pattern (($FVF.lookup_Ref__Integer_value (as sm@207@01  $FVF<Ref__Integer_value>) r))
  :pattern (($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first $t@202@01)) r))
  :qid |qp.fvfValDef32|)))
(assert ($Perm.isReadVar $k@239@01))
(assert (forall ((k@238@01 Int)) (!
  (=>
    (and
      (and (<= 0 k@238@01) (< k@238@01 (* M@154@01 N@155@01)))
      (< $Perm.No $k@239@01))
    (and
      (= (inv@240@01 (Seq_index matrix@156@01 k@238@01)) k@238@01)
      (img@241@01 (Seq_index matrix@156@01 k@238@01))))
  :pattern ((Seq_index matrix@156@01 k@238@01))
  :qid |Ref__Integer_value-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@241@01 r)
      (and
        (and (<= 0 (inv@240@01 r)) (< (inv@240@01 r) (* M@154@01 N@155@01)))
        (< $Perm.No $k@239@01)))
    (= (Seq_index matrix@156@01 (inv@240@01 r)) r))
  :pattern ((inv@240@01 r))
  :qid |Ref__Integer_value-fctOfInv|)))
(assert (forall ((r $Ref)) (!
  (and
    (=>
      (Set_in r ($FVF.domain_Ref__Integer_value (as sm@242@01  $FVF<Ref__Integer_value>)))
      (and
        (and (<= 0 (inv@240@01 r)) (< (inv@240@01 r) (* M@154@01 N@155@01)))
        (< $Perm.No $k@239@01)
        (img@241@01 r)))
    (=>
      (and
        (and (<= 0 (inv@240@01 r)) (< (inv@240@01 r) (* M@154@01 N@155@01)))
        (< $Perm.No $k@239@01)
        (img@241@01 r))
      (Set_in r ($FVF.domain_Ref__Integer_value (as sm@242@01  $FVF<Ref__Integer_value>)))))
  :pattern ((Set_in r ($FVF.domain_Ref__Integer_value (as sm@242@01  $FVF<Ref__Integer_value>))))
  :qid |qp.fvfDomDef41|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and
        (and (<= 0 (inv@240@01 r)) (< (inv@240@01 r) (* M@154@01 N@155@01)))
        (< $Perm.No $k@239@01)
        (img@241@01 r))
      (ite
        (and
          (img@164@01 r)
          (and (<= 0 (inv@163@01 r)) (< (inv@163@01 r) (* M@154@01 N@155@01))))
        (< $Perm.No (- (/ (to_real 1) (to_real 2)) (pTaken@221@01 r)))
        false))
    (=
      ($FVF.lookup_Ref__Integer_value (as sm@242@01  $FVF<Ref__Integer_value>) r)
      ($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@159@01))))))))) r)))
  :pattern (($FVF.lookup_Ref__Integer_value (as sm@242@01  $FVF<Ref__Integer_value>) r))
  :pattern (($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@159@01))))))))) r))
  :qid |qp.fvfValDef38|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and
        (and (<= 0 (inv@240@01 r)) (< (inv@240@01 r) (* M@154@01 N@155@01)))
        (< $Perm.No $k@239@01)
        (img@241@01 r))
      (and
        (img@229@01 r)
        (and (<= 0 (inv@228@01 r)) (< (inv@228@01 r) (* M@154@01 N@155@01)))))
    (=
      ($FVF.lookup_Ref__Integer_value (as sm@242@01  $FVF<Ref__Integer_value>) r)
      ($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@226@01))))) r)))
  :pattern (($FVF.lookup_Ref__Integer_value (as sm@242@01  $FVF<Ref__Integer_value>) r))
  :pattern (($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@226@01))))) r))
  :qid |qp.fvfValDef39|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and
        (and (<= 0 (inv@240@01 r)) (< (inv@240@01 r) (* M@154@01 N@155@01)))
        (< $Perm.No $k@239@01)
        (img@241@01 r))
      (and
        (img@232@01 r)
        (and (<= 0 (inv@231@01 r)) (< (inv@231@01 r) P@157@01))))
    (=
      ($FVF.lookup_Ref__Integer_value (as sm@242@01  $FVF<Ref__Integer_value>) r)
      ($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@226@01)))))) r)))
  :pattern (($FVF.lookup_Ref__Integer_value (as sm@242@01  $FVF<Ref__Integer_value>) r))
  :pattern (($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@226@01)))))) r))
  :qid |qp.fvfValDef40|)))
; Nested auxiliary terms: non-globals (aux)
(assert (forall ((k@233@01 Int)) (!
  (and
    (or (<= 0 k@233@01) (not (<= 0 k@233@01)))
    (=>
      (and (<= 0 k@233@01) (< k@233@01 P@157@01))
      (and
        (<= 0 k@233@01)
        (< k@233@01 P@157@01)
        (<= 0 (* M@154@01 N@155@01))
        (forall ((j@236@01 Int) (k@237@01 Int)) (!
          (=>
            (and
              (<= 0 j@236@01)
              (and
                (< j@236@01 (* M@154@01 N@155@01))
                (and
                  (<= 0 k@237@01)
                  (and
                    (< k@237@01 (* M@154@01 N@155@01))
                    (not (= j@236@01 k@237@01))))))
            (not
              (=
                (Seq_index matrix@156@01 j@236@01)
                (Seq_index matrix@156@01 k@237@01))))
          
          :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/third_party/testHistogram.vpr@66@12@66@102|))
        (forall ((k@238@01 Int)) (!
          (=>
            (and (<= 0 k@238@01) (< k@238@01 (* M@154@01 N@155@01)))
            (or (<= 0 k@238@01) (not (<= 0 k@238@01))))
          :pattern ((Seq_index matrix@156@01 k@238@01))
          :qid |Ref__Integer_value-aux|))
        (count_array%precondition ($Snap.combine
          $Snap.unit
          ($Snap.combine
            $Snap.unit
            ($Snap.combine
              $Snap.unit
              ($Snap.combine
                $Snap.unit
                ($SortWrappers.$FVF<Ref__Integer_value>To$Snap (as sm@242@01  $FVF<Ref__Integer_value>)))))) 0 (*
          M@154@01
          N@155@01) matrix@156@01 k@233@01)))
    (or
      (not (and (<= 0 k@233@01) (< k@233@01 P@157@01)))
      (and (<= 0 k@233@01) (< k@233@01 P@157@01))))
  
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/third_party/testHistogram.vpr@116@12@116@151-aux|)))
(assert (forall ((k@233@01 Int)) (!
  (=>
    (and (<= 0 k@233@01) (< k@233@01 P@157@01))
    (=
      ($FVF.lookup_Ref__Integer_value (as sm@234@01  $FVF<Ref__Integer_value>) (Seq_index
        hist@158@01
        k@233@01))
      (+
        ($FVF.lookup_Ref__Integer_value (as sm@207@01  $FVF<Ref__Integer_value>) (Seq_index
          hist@158@01
          k@233@01))
        (count_array ($Snap.combine
          $Snap.unit
          ($Snap.combine
            $Snap.unit
            ($Snap.combine
              $Snap.unit
              ($Snap.combine
                $Snap.unit
                ($SortWrappers.$FVF<Ref__Integer_value>To$Snap (as sm@242@01  $FVF<Ref__Integer_value>)))))) 0 (*
          M@154@01
          N@155@01) matrix@156@01 k@233@01))))
  
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/third_party/testHistogram.vpr@116@12@116@151|)))
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
(declare-const j1@243@01 Int)
(set-option :timeout 0)
(push) ; 3
; [eval] 0 <= j1 && j1 < M * N
; [eval] 0 <= j1
(push) ; 4
; [then-branch: 127 | !(0 <= j1@243@01) | live]
; [else-branch: 127 | 0 <= j1@243@01 | live]
(push) ; 5
; [then-branch: 127 | !(0 <= j1@243@01)]
(assert (not (<= 0 j1@243@01)))
(pop) ; 5
(push) ; 5
; [else-branch: 127 | 0 <= j1@243@01]
(assert (<= 0 j1@243@01))
; [eval] j1 < M * N
; [eval] M * N
(pop) ; 5
(pop) ; 4
; Joined path conditions
; Joined path conditions
(assert (or (<= 0 j1@243@01) (not (<= 0 j1@243@01))))
(assert (and (<= 0 j1@243@01) (< j1@243@01 (* M@154@01 N@155@01))))
; [eval] matrix[j1]
(push) ; 4
(assert (not (>= j1@243@01 0)))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(push) ; 4
(assert (not (< j1@243@01 (Seq_length matrix@156@01))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(pop) ; 3
(declare-fun inv@244@01 ($Ref) Int)
(declare-fun img@245@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
(assert (forall ((j1@243@01 Int)) (!
  (=>
    (and (<= 0 j1@243@01) (< j1@243@01 (* M@154@01 N@155@01)))
    (or (<= 0 j1@243@01) (not (<= 0 j1@243@01))))
  :pattern ((Seq_index matrix@156@01 j1@243@01))
  :qid |Ref__Integer_value-aux|)))
; Check receiver injectivity
(push) ; 3
(assert (not (forall ((j11@243@01 Int) (j12@243@01 Int)) (!
  (=>
    (and
      (and (<= 0 j11@243@01) (< j11@243@01 (* M@154@01 N@155@01)))
      (and (<= 0 j12@243@01) (< j12@243@01 (* M@154@01 N@155@01)))
      (=
        (Seq_index matrix@156@01 j11@243@01)
        (Seq_index matrix@156@01 j12@243@01)))
    (= j11@243@01 j12@243@01))
  
  :qid |Ref__Integer_value-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((j1@243@01 Int)) (!
  (=>
    (and (<= 0 j1@243@01) (< j1@243@01 (* M@154@01 N@155@01)))
    (and
      (= (inv@244@01 (Seq_index matrix@156@01 j1@243@01)) j1@243@01)
      (img@245@01 (Seq_index matrix@156@01 j1@243@01))))
  :pattern ((Seq_index matrix@156@01 j1@243@01))
  :qid |Ref__Integer_value-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@245@01 r)
      (and (<= 0 (inv@244@01 r)) (< (inv@244@01 r) (* M@154@01 N@155@01))))
    (= (Seq_index matrix@156@01 (inv@244@01 r)) r))
  :pattern ((inv@244@01 r))
  :qid |Ref__Integer_value-fctOfInv|)))
(push) ; 3
(set-option :timeout 10)
(assert (not (forall ((j1@243@01 Int)) (!
  (= (Seq_index matrix@156@01 j1@243@01) (Seq_index hist@158@01 j1@243@01))
  
  :qid |quant-u-10058|))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Precomputing data for removing quantified permissions
(define-fun pTaken@246@01 ((r $Ref)) $Perm
  (ite
    (and
      (and (<= 0 (inv@244@01 r)) (< (inv@244@01 r) (* M@154@01 N@155@01)))
      (img@245@01 r)
      (= r (Seq_index matrix@156@01 (inv@244@01 r))))
    ($Perm.min
      (ite
        (and
          (img@164@01 r)
          (and (<= 0 (inv@163@01 r)) (< (inv@163@01 r) (* M@154@01 N@155@01))))
        (- (/ (to_real 1) (to_real 2)) (pTaken@221@01 r))
        $Perm.No)
      (/ (to_real 1) (to_real 2)))
    $Perm.No))
(define-fun pTaken@247@01 ((r $Ref)) $Perm
  (ite
    (and
      (and (<= 0 (inv@244@01 r)) (< (inv@244@01 r) (* M@154@01 N@155@01)))
      (img@245@01 r)
      (= r (Seq_index matrix@156@01 (inv@244@01 r))))
    ($Perm.min
      (ite
        (and
          (img@229@01 r)
          (and (<= 0 (inv@228@01 r)) (< (inv@228@01 r) (* M@154@01 N@155@01))))
        (/ (to_real 1) (to_real 4))
        $Perm.No)
      (- (/ (to_real 1) (to_real 2)) (pTaken@246@01 r)))
    $Perm.No))
(define-fun pTaken@248@01 ((r $Ref)) $Perm
  (ite
    (and
      (and (<= 0 (inv@244@01 r)) (< (inv@244@01 r) (* M@154@01 N@155@01)))
      (img@245@01 r)
      (= r (Seq_index matrix@156@01 (inv@244@01 r))))
    ($Perm.min
      (ite
        (and
          (img@232@01 r)
          (and (<= 0 (inv@231@01 r)) (< (inv@231@01 r) P@157@01)))
        $Perm.Write
        $Perm.No)
      (- (- (/ (to_real 1) (to_real 2)) (pTaken@246@01 r)) (pTaken@247@01 r)))
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
          (img@164@01 r)
          (and (<= 0 (inv@163@01 r)) (< (inv@163@01 r) (* M@154@01 N@155@01))))
        (- (/ (to_real 1) (to_real 2)) (pTaken@221@01 r))
        $Perm.No)
      (pTaken@246@01 r))
    $Perm.No)
  
  :qid |quant-u-10060|))))
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
      (and (<= 0 (inv@244@01 r)) (< (inv@244@01 r) (* M@154@01 N@155@01)))
      (img@245@01 r)
      (= r (Seq_index matrix@156@01 (inv@244@01 r))))
    (= (- (/ (to_real 1) (to_real 2)) (pTaken@246@01 r)) $Perm.No))
  
  :qid |quant-u-10061|))))
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
          (img@229@01 r)
          (and (<= 0 (inv@228@01 r)) (< (inv@228@01 r) (* M@154@01 N@155@01))))
        (/ (to_real 1) (to_real 4))
        $Perm.No)
      (pTaken@247@01 r))
    $Perm.No)
  
  :qid |quant-u-10062|))))
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
      (and (<= 0 (inv@244@01 r)) (< (inv@244@01 r) (* M@154@01 N@155@01)))
      (img@245@01 r)
      (= r (Seq_index matrix@156@01 (inv@244@01 r))))
    (=
      (- (- (/ (to_real 1) (to_real 2)) (pTaken@246@01 r)) (pTaken@247@01 r))
      $Perm.No))
  
  :qid |quant-u-10063|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Final check if taken enough permissions
; Done removing quantified permissions
(declare-const i1@249@01 Int)
(set-option :timeout 0)
(push) ; 3
; [eval] 0 <= i1 && i1 < P
; [eval] 0 <= i1
(push) ; 4
; [then-branch: 128 | !(0 <= i1@249@01) | live]
; [else-branch: 128 | 0 <= i1@249@01 | live]
(push) ; 5
; [then-branch: 128 | !(0 <= i1@249@01)]
(assert (not (<= 0 i1@249@01)))
(pop) ; 5
(push) ; 5
; [else-branch: 128 | 0 <= i1@249@01]
(assert (<= 0 i1@249@01))
; [eval] i1 < P
(pop) ; 5
(pop) ; 4
; Joined path conditions
; Joined path conditions
(assert (or (<= 0 i1@249@01) (not (<= 0 i1@249@01))))
(assert (and (<= 0 i1@249@01) (< i1@249@01 P@157@01)))
; [eval] hist[i1]
(push) ; 4
(assert (not (>= i1@249@01 0)))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(push) ; 4
(assert (not (< i1@249@01 (Seq_length hist@158@01))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(pop) ; 3
(declare-fun inv@250@01 ($Ref) Int)
(declare-fun img@251@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
(assert (forall ((i1@249@01 Int)) (!
  (=>
    (and (<= 0 i1@249@01) (< i1@249@01 P@157@01))
    (or (<= 0 i1@249@01) (not (<= 0 i1@249@01))))
  :pattern ((Seq_index hist@158@01 i1@249@01))
  :qid |Ref__Integer_value-aux|)))
; Check receiver injectivity
(push) ; 3
(assert (not (forall ((i11@249@01 Int) (i12@249@01 Int)) (!
  (=>
    (and
      (and (<= 0 i11@249@01) (< i11@249@01 P@157@01))
      (and (<= 0 i12@249@01) (< i12@249@01 P@157@01))
      (= (Seq_index hist@158@01 i11@249@01) (Seq_index hist@158@01 i12@249@01)))
    (= i11@249@01 i12@249@01))
  
  :qid |Ref__Integer_value-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((i1@249@01 Int)) (!
  (=>
    (and (<= 0 i1@249@01) (< i1@249@01 P@157@01))
    (and
      (= (inv@250@01 (Seq_index hist@158@01 i1@249@01)) i1@249@01)
      (img@251@01 (Seq_index hist@158@01 i1@249@01))))
  :pattern ((Seq_index hist@158@01 i1@249@01))
  :qid |Ref__Integer_value-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@251@01 r) (and (<= 0 (inv@250@01 r)) (< (inv@250@01 r) P@157@01)))
    (= (Seq_index hist@158@01 (inv@250@01 r)) r))
  :pattern ((inv@250@01 r))
  :qid |Ref__Integer_value-fctOfInv|)))
; Precomputing data for removing quantified permissions
(define-fun pTaken@252@01 ((r $Ref)) $Perm
  (ite
    (and
      (and (<= 0 (inv@250@01 r)) (< (inv@250@01 r) P@157@01))
      (img@251@01 r)
      (= r (Seq_index hist@158@01 (inv@250@01 r))))
    ($Perm.min
      (ite
        (and
          (img@232@01 r)
          (and (<= 0 (inv@231@01 r)) (< (inv@231@01 r) P@157@01)))
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
          (img@232@01 r)
          (and (<= 0 (inv@231@01 r)) (< (inv@231@01 r) P@157@01)))
        $Perm.Write
        $Perm.No)
      (pTaken@252@01 r))
    $Perm.No)
  
  :qid |quant-u-10066|))))
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
      (and (<= 0 (inv@250@01 r)) (< (inv@250@01 r) P@157@01))
      (img@251@01 r)
      (= r (Seq_index hist@158@01 (inv@250@01 r))))
    (= (- $Perm.Write (pTaken@252@01 r)) $Perm.No))
  
  :qid |quant-u-10067|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Final check if taken enough permissions
; Done removing quantified permissions
; [eval] (forall k: Int :: { hist[k] } 0 <= k && k < P ==> hist[k].Ref__Integer_value == count_array(0, M * N, matrix, k))
(declare-const k@253@01 Int)
(set-option :timeout 0)
(push) ; 3
; [eval] 0 <= k && k < P ==> hist[k].Ref__Integer_value == count_array(0, M * N, matrix, k)
; [eval] 0 <= k && k < P
; [eval] 0 <= k
(push) ; 4
; [then-branch: 129 | !(0 <= k@253@01) | live]
; [else-branch: 129 | 0 <= k@253@01 | live]
(push) ; 5
; [then-branch: 129 | !(0 <= k@253@01)]
(assert (not (<= 0 k@253@01)))
(pop) ; 5
(push) ; 5
; [else-branch: 129 | 0 <= k@253@01]
(assert (<= 0 k@253@01))
; [eval] k < P
(pop) ; 5
(pop) ; 4
; Joined path conditions
; Joined path conditions
(assert (or (<= 0 k@253@01) (not (<= 0 k@253@01))))
(push) ; 4
; [then-branch: 130 | 0 <= k@253@01 && k@253@01 < P@157@01 | live]
; [else-branch: 130 | !(0 <= k@253@01 && k@253@01 < P@157@01) | live]
(push) ; 5
; [then-branch: 130 | 0 <= k@253@01 && k@253@01 < P@157@01]
(assert (and (<= 0 k@253@01) (< k@253@01 P@157@01)))
; [eval] hist[k].Ref__Integer_value == count_array(0, M * N, matrix, k)
; [eval] hist[k]
(push) ; 6
(assert (not (>= k@253@01 0)))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(push) ; 6
(assert (not (< k@253@01 (Seq_length hist@158@01))))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(declare-const sm@254@01 $FVF<Ref__Integer_value>)
; Definitional axioms for snapshot map values
(assert (forall ((r $Ref)) (!
  (=>
    (ite
      (and
        (img@164@01 r)
        (and (<= 0 (inv@163@01 r)) (< (inv@163@01 r) (* M@154@01 N@155@01))))
      (< $Perm.No (- (/ (to_real 1) (to_real 2)) (pTaken@221@01 r)))
      false)
    (=
      ($FVF.lookup_Ref__Integer_value (as sm@254@01  $FVF<Ref__Integer_value>) r)
      ($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@159@01))))))))) r)))
  :pattern (($FVF.lookup_Ref__Integer_value (as sm@254@01  $FVF<Ref__Integer_value>) r))
  :pattern (($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@159@01))))))))) r))
  :qid |qp.fvfValDef42|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@229@01 r)
      (and (<= 0 (inv@228@01 r)) (< (inv@228@01 r) (* M@154@01 N@155@01))))
    (=
      ($FVF.lookup_Ref__Integer_value (as sm@254@01  $FVF<Ref__Integer_value>) r)
      ($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@226@01))))) r)))
  :pattern (($FVF.lookup_Ref__Integer_value (as sm@254@01  $FVF<Ref__Integer_value>) r))
  :pattern (($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@226@01))))) r))
  :qid |qp.fvfValDef43|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@232@01 r) (and (<= 0 (inv@231@01 r)) (< (inv@231@01 r) P@157@01)))
    (=
      ($FVF.lookup_Ref__Integer_value (as sm@254@01  $FVF<Ref__Integer_value>) r)
      ($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@226@01)))))) r)))
  :pattern (($FVF.lookup_Ref__Integer_value (as sm@254@01  $FVF<Ref__Integer_value>) r))
  :pattern (($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@226@01)))))) r))
  :qid |qp.fvfValDef44|)))
(declare-const pm@255@01 $FPM)
(assert (forall ((r $Ref)) (!
  (=
    ($FVF.perm_Ref__Integer_value (as pm@255@01  $FPM) r)
    (+
      (+
        (ite
          (and
            (img@164@01 r)
            (and (<= 0 (inv@163@01 r)) (< (inv@163@01 r) (* M@154@01 N@155@01))))
          (- (/ (to_real 1) (to_real 2)) (pTaken@221@01 r))
          $Perm.No)
        (ite
          (and
            (img@229@01 r)
            (and (<= 0 (inv@228@01 r)) (< (inv@228@01 r) (* M@154@01 N@155@01))))
          (/ (to_real 1) (to_real 4))
          $Perm.No))
      (ite
        (and
          (img@232@01 r)
          (and (<= 0 (inv@231@01 r)) (< (inv@231@01 r) P@157@01)))
        $Perm.Write
        $Perm.No)))
  :pattern (($FVF.perm_Ref__Integer_value (as pm@255@01  $FPM) r))
  :qid |qp.resPrmSumDef45|)))
(push) ; 6
(assert (not (<
  $Perm.No
  ($FVF.perm_Ref__Integer_value (as pm@255@01  $FPM) (Seq_index
    hist@158@01
    k@253@01)))))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
; [eval] count_array(0, M * N, matrix, k)
; [eval] M * N
(push) ; 6
; [eval] 0 <= i
; [eval] i <= hi
(push) ; 7
(assert (not (<= 0 (* M@154@01 N@155@01))))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(assert (<= 0 (* M@154@01 N@155@01)))
; [eval] hi <= |ar|
; [eval] |ar|
; [eval] (forall j: Int, k: Int ::0 <= j && (j < hi && (0 <= k && (k < hi && j != k))) ==> ar[j] != ar[k])
(declare-const j@256@01 Int)
(declare-const k@257@01 Int)
(push) ; 7
; [eval] 0 <= j && (j < hi && (0 <= k && (k < hi && j != k))) ==> ar[j] != ar[k]
; [eval] 0 <= j && (j < hi && (0 <= k && (k < hi && j != k)))
; [eval] 0 <= j
(push) ; 8
; [then-branch: 131 | !(0 <= j@256@01) | live]
; [else-branch: 131 | 0 <= j@256@01 | live]
(push) ; 9
; [then-branch: 131 | !(0 <= j@256@01)]
(assert (not (<= 0 j@256@01)))
(pop) ; 9
(push) ; 9
; [else-branch: 131 | 0 <= j@256@01]
(assert (<= 0 j@256@01))
; [eval] j < hi
(push) ; 10
; [then-branch: 132 | !(j@256@01 < M@154@01 * N@155@01) | live]
; [else-branch: 132 | j@256@01 < M@154@01 * N@155@01 | live]
(push) ; 11
; [then-branch: 132 | !(j@256@01 < M@154@01 * N@155@01)]
(assert (not (< j@256@01 (* M@154@01 N@155@01))))
(pop) ; 11
(push) ; 11
; [else-branch: 132 | j@256@01 < M@154@01 * N@155@01]
(assert (< j@256@01 (* M@154@01 N@155@01)))
; [eval] 0 <= k
(push) ; 12
; [then-branch: 133 | !(0 <= k@257@01) | live]
; [else-branch: 133 | 0 <= k@257@01 | live]
(push) ; 13
; [then-branch: 133 | !(0 <= k@257@01)]
(assert (not (<= 0 k@257@01)))
(pop) ; 13
(push) ; 13
; [else-branch: 133 | 0 <= k@257@01]
(assert (<= 0 k@257@01))
; [eval] k < hi
(push) ; 14
; [then-branch: 134 | !(k@257@01 < M@154@01 * N@155@01) | live]
; [else-branch: 134 | k@257@01 < M@154@01 * N@155@01 | live]
(push) ; 15
; [then-branch: 134 | !(k@257@01 < M@154@01 * N@155@01)]
(assert (not (< k@257@01 (* M@154@01 N@155@01))))
(pop) ; 15
(push) ; 15
; [else-branch: 134 | k@257@01 < M@154@01 * N@155@01]
(assert (< k@257@01 (* M@154@01 N@155@01)))
; [eval] j != k
(pop) ; 15
(pop) ; 14
; Joined path conditions
; Joined path conditions
(assert (or (< k@257@01 (* M@154@01 N@155@01)) (not (< k@257@01 (* M@154@01 N@155@01)))))
(pop) ; 13
(pop) ; 12
; Joined path conditions
; Joined path conditions
(assert (=>
  (<= 0 k@257@01)
  (and
    (<= 0 k@257@01)
    (or
      (< k@257@01 (* M@154@01 N@155@01))
      (not (< k@257@01 (* M@154@01 N@155@01)))))))
(assert (or (<= 0 k@257@01) (not (<= 0 k@257@01))))
(pop) ; 11
(pop) ; 10
; Joined path conditions
; Joined path conditions
(assert (=>
  (< j@256@01 (* M@154@01 N@155@01))
  (and
    (< j@256@01 (* M@154@01 N@155@01))
    (=>
      (<= 0 k@257@01)
      (and
        (<= 0 k@257@01)
        (or
          (< k@257@01 (* M@154@01 N@155@01))
          (not (< k@257@01 (* M@154@01 N@155@01))))))
    (or (<= 0 k@257@01) (not (<= 0 k@257@01))))))
(assert (or (< j@256@01 (* M@154@01 N@155@01)) (not (< j@256@01 (* M@154@01 N@155@01)))))
(pop) ; 9
(pop) ; 8
; Joined path conditions
; Joined path conditions
(assert (=>
  (<= 0 j@256@01)
  (and
    (<= 0 j@256@01)
    (=>
      (< j@256@01 (* M@154@01 N@155@01))
      (and
        (< j@256@01 (* M@154@01 N@155@01))
        (=>
          (<= 0 k@257@01)
          (and
            (<= 0 k@257@01)
            (or
              (< k@257@01 (* M@154@01 N@155@01))
              (not (< k@257@01 (* M@154@01 N@155@01))))))
        (or (<= 0 k@257@01) (not (<= 0 k@257@01)))))
    (or
      (< j@256@01 (* M@154@01 N@155@01))
      (not (< j@256@01 (* M@154@01 N@155@01)))))))
(assert (or (<= 0 j@256@01) (not (<= 0 j@256@01))))
(push) ; 8
; [then-branch: 135 | 0 <= j@256@01 && j@256@01 < M@154@01 * N@155@01 && 0 <= k@257@01 && k@257@01 < M@154@01 * N@155@01 && j@256@01 != k@257@01 | live]
; [else-branch: 135 | !(0 <= j@256@01 && j@256@01 < M@154@01 * N@155@01 && 0 <= k@257@01 && k@257@01 < M@154@01 * N@155@01 && j@256@01 != k@257@01) | live]
(push) ; 9
; [then-branch: 135 | 0 <= j@256@01 && j@256@01 < M@154@01 * N@155@01 && 0 <= k@257@01 && k@257@01 < M@154@01 * N@155@01 && j@256@01 != k@257@01]
(assert (and
  (<= 0 j@256@01)
  (and
    (< j@256@01 (* M@154@01 N@155@01))
    (and
      (<= 0 k@257@01)
      (and (< k@257@01 (* M@154@01 N@155@01)) (not (= j@256@01 k@257@01)))))))
; [eval] ar[j] != ar[k]
; [eval] ar[j]
(push) ; 10
(assert (not (>= j@256@01 0)))
(check-sat)
; unsat
(pop) ; 10
; 0.00s
; (get-info :all-statistics)
(push) ; 10
(assert (not (< j@256@01 (Seq_length matrix@156@01))))
(check-sat)
; unsat
(pop) ; 10
; 0.00s
; (get-info :all-statistics)
; [eval] ar[k]
(push) ; 10
(assert (not (>= k@257@01 0)))
(check-sat)
; unsat
(pop) ; 10
; 0.00s
; (get-info :all-statistics)
(push) ; 10
(assert (not (< k@257@01 (Seq_length matrix@156@01))))
(check-sat)
; unsat
(pop) ; 10
; 0.00s
; (get-info :all-statistics)
(pop) ; 9
(push) ; 9
; [else-branch: 135 | !(0 <= j@256@01 && j@256@01 < M@154@01 * N@155@01 && 0 <= k@257@01 && k@257@01 < M@154@01 * N@155@01 && j@256@01 != k@257@01)]
(assert (not
  (and
    (<= 0 j@256@01)
    (and
      (< j@256@01 (* M@154@01 N@155@01))
      (and
        (<= 0 k@257@01)
        (and (< k@257@01 (* M@154@01 N@155@01)) (not (= j@256@01 k@257@01))))))))
(pop) ; 9
(pop) ; 8
; Joined path conditions
(assert (=>
  (and
    (<= 0 j@256@01)
    (and
      (< j@256@01 (* M@154@01 N@155@01))
      (and
        (<= 0 k@257@01)
        (and (< k@257@01 (* M@154@01 N@155@01)) (not (= j@256@01 k@257@01))))))
  (and
    (<= 0 j@256@01)
    (< j@256@01 (* M@154@01 N@155@01))
    (<= 0 k@257@01)
    (< k@257@01 (* M@154@01 N@155@01))
    (not (= j@256@01 k@257@01)))))
; Joined path conditions
(assert (or
  (not
    (and
      (<= 0 j@256@01)
      (and
        (< j@256@01 (* M@154@01 N@155@01))
        (and
          (<= 0 k@257@01)
          (and (< k@257@01 (* M@154@01 N@155@01)) (not (= j@256@01 k@257@01)))))))
  (and
    (<= 0 j@256@01)
    (and
      (< j@256@01 (* M@154@01 N@155@01))
      (and
        (<= 0 k@257@01)
        (and (< k@257@01 (* M@154@01 N@155@01)) (not (= j@256@01 k@257@01))))))))
(pop) ; 7
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(push) ; 7
(assert (not (forall ((j@256@01 Int) (k@257@01 Int)) (!
  (=>
    (and
      (<= 0 j@256@01)
      (and
        (< j@256@01 (* M@154@01 N@155@01))
        (and
          (<= 0 k@257@01)
          (and (< k@257@01 (* M@154@01 N@155@01)) (not (= j@256@01 k@257@01))))))
    (not
      (= (Seq_index matrix@156@01 j@256@01) (Seq_index matrix@156@01 k@257@01))))
  
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/third_party/testHistogram.vpr@66@12@66@102|))))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(assert (forall ((j@256@01 Int) (k@257@01 Int)) (!
  (=>
    (and
      (<= 0 j@256@01)
      (and
        (< j@256@01 (* M@154@01 N@155@01))
        (and
          (<= 0 k@257@01)
          (and (< k@257@01 (* M@154@01 N@155@01)) (not (= j@256@01 k@257@01))))))
    (not
      (= (Seq_index matrix@156@01 j@256@01) (Seq_index matrix@156@01 k@257@01))))
  
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/third_party/testHistogram.vpr@66@12@66@102|)))
(declare-const k@258@01 Int)
(push) ; 7
; [eval] 0 <= k && k < hi
; [eval] 0 <= k
(push) ; 8
; [then-branch: 136 | !(0 <= k@258@01) | live]
; [else-branch: 136 | 0 <= k@258@01 | live]
(push) ; 9
; [then-branch: 136 | !(0 <= k@258@01)]
(assert (not (<= 0 k@258@01)))
(pop) ; 9
(push) ; 9
; [else-branch: 136 | 0 <= k@258@01]
(assert (<= 0 k@258@01))
; [eval] k < hi
(pop) ; 9
(pop) ; 8
; Joined path conditions
; Joined path conditions
(assert (or (<= 0 k@258@01) (not (<= 0 k@258@01))))
(assert (and (<= 0 k@258@01) (< k@258@01 (* M@154@01 N@155@01))))
(declare-const $k@259@01 $Perm)
(assert ($Perm.isReadVar $k@259@01))
; [eval] ar[k]
(push) ; 8
(assert (not (>= k@258@01 0)))
(check-sat)
; unsat
(pop) ; 8
; 0.00s
; (get-info :all-statistics)
(push) ; 8
(assert (not (< k@258@01 (Seq_length matrix@156@01))))
(check-sat)
; unsat
(pop) ; 8
; 0.00s
; (get-info :all-statistics)
(pop) ; 7
(declare-fun inv@260@01 ($Ref) Int)
(declare-fun img@261@01 ($Ref) Bool)
; Nested auxiliary terms: globals
(assert ($Perm.isReadVar $k@259@01))
; Nested auxiliary terms: non-globals
(assert (forall ((k@258@01 Int)) (!
  (=>
    (and (<= 0 k@258@01) (< k@258@01 (* M@154@01 N@155@01)))
    (or (<= 0 k@258@01) (not (<= 0 k@258@01))))
  :pattern ((Seq_index matrix@156@01 k@258@01))
  :qid |Ref__Integer_value-aux|)))
(push) ; 7
(assert (not (forall ((k@258@01 Int)) (!
  (=>
    (and (<= 0 k@258@01) (< k@258@01 (* M@154@01 N@155@01)))
    (or (= $k@259@01 $Perm.No) (< $Perm.No $k@259@01)))
  
  :qid |quant-u-10068|))))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
; Check receiver injectivity
(push) ; 7
(assert (not (forall ((k1@258@01 Int) (k2@258@01 Int)) (!
  (=>
    (and
      (and
        (and (<= 0 k1@258@01) (< k1@258@01 (* M@154@01 N@155@01)))
        (< $Perm.No $k@259@01))
      (and
        (and (<= 0 k2@258@01) (< k2@258@01 (* M@154@01 N@155@01)))
        (< $Perm.No $k@259@01))
      (= (Seq_index matrix@156@01 k1@258@01) (Seq_index matrix@156@01 k2@258@01)))
    (= k1@258@01 k2@258@01))
  
  :qid |Ref__Integer_value-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((k@258@01 Int)) (!
  (=>
    (and
      (and (<= 0 k@258@01) (< k@258@01 (* M@154@01 N@155@01)))
      (< $Perm.No $k@259@01))
    (and
      (= (inv@260@01 (Seq_index matrix@156@01 k@258@01)) k@258@01)
      (img@261@01 (Seq_index matrix@156@01 k@258@01))))
  :pattern ((Seq_index matrix@156@01 k@258@01))
  :qid |Ref__Integer_value-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@261@01 r)
      (and
        (and (<= 0 (inv@260@01 r)) (< (inv@260@01 r) (* M@154@01 N@155@01)))
        (< $Perm.No $k@259@01)))
    (= (Seq_index matrix@156@01 (inv@260@01 r)) r))
  :pattern ((inv@260@01 r))
  :qid |Ref__Integer_value-fctOfInv|)))
(push) ; 7
(set-option :timeout 10)
(assert (not (forall ((k@258@01 Int)) (!
  (= (Seq_index matrix@156@01 k@258@01) (Seq_index hist@158@01 k@258@01))
  
  :qid |quant-u-10069|))))
(check-sat)
; unknown
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 7
(assert (not (forall ((r $Ref)) (!
  (=>
    (and
      (and
        (and (<= 0 (inv@260@01 r)) (< (inv@260@01 r) (* M@154@01 N@155@01)))
        (img@261@01 r)
        (= r (Seq_index matrix@156@01 (inv@260@01 r))))
      (> $k@259@01 $Perm.No))
    (>
      (+
        (+
          (ite
            (and
              (img@164@01 r)
              (and
                (<= 0 (inv@163@01 r))
                (< (inv@163@01 r) (* M@154@01 N@155@01))))
            (- (/ (to_real 1) (to_real 2)) (pTaken@221@01 r))
            $Perm.No)
          (ite
            (and
              (img@229@01 r)
              (and
                (<= 0 (inv@228@01 r))
                (< (inv@228@01 r) (* M@154@01 N@155@01))))
            (/ (to_real 1) (to_real 4))
            $Perm.No))
        (ite
          (and
            (img@232@01 r)
            (and (<= 0 (inv@231@01 r)) (< (inv@231@01 r) P@157@01)))
          $Perm.Write
          $Perm.No))
      $Perm.No))
  
  :qid |quant-u-10070|))))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(declare-const sm@262@01 $FVF<Ref__Integer_value>)
; Definitional axioms for snapshot map domain
(assert (forall ((r $Ref)) (!
  (and
    (=>
      (Set_in r ($FVF.domain_Ref__Integer_value (as sm@262@01  $FVF<Ref__Integer_value>)))
      (and
        (and (<= 0 (inv@260@01 r)) (< (inv@260@01 r) (* M@154@01 N@155@01)))
        (< $Perm.No $k@259@01)
        (img@261@01 r)))
    (=>
      (and
        (and (<= 0 (inv@260@01 r)) (< (inv@260@01 r) (* M@154@01 N@155@01)))
        (< $Perm.No $k@259@01)
        (img@261@01 r))
      (Set_in r ($FVF.domain_Ref__Integer_value (as sm@262@01  $FVF<Ref__Integer_value>)))))
  :pattern ((Set_in r ($FVF.domain_Ref__Integer_value (as sm@262@01  $FVF<Ref__Integer_value>))))
  :qid |qp.fvfDomDef49|)))
; Definitional axioms for snapshot map values
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and
        (and (<= 0 (inv@260@01 r)) (< (inv@260@01 r) (* M@154@01 N@155@01)))
        (< $Perm.No $k@259@01)
        (img@261@01 r))
      (ite
        (and
          (img@164@01 r)
          (and (<= 0 (inv@163@01 r)) (< (inv@163@01 r) (* M@154@01 N@155@01))))
        (< $Perm.No (- (/ (to_real 1) (to_real 2)) (pTaken@221@01 r)))
        false))
    (=
      ($FVF.lookup_Ref__Integer_value (as sm@262@01  $FVF<Ref__Integer_value>) r)
      ($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@159@01))))))))) r)))
  :pattern (($FVF.lookup_Ref__Integer_value (as sm@262@01  $FVF<Ref__Integer_value>) r))
  :pattern (($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@159@01))))))))) r))
  :qid |qp.fvfValDef46|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and
        (and (<= 0 (inv@260@01 r)) (< (inv@260@01 r) (* M@154@01 N@155@01)))
        (< $Perm.No $k@259@01)
        (img@261@01 r))
      (and
        (img@229@01 r)
        (and (<= 0 (inv@228@01 r)) (< (inv@228@01 r) (* M@154@01 N@155@01)))))
    (=
      ($FVF.lookup_Ref__Integer_value (as sm@262@01  $FVF<Ref__Integer_value>) r)
      ($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@226@01))))) r)))
  :pattern (($FVF.lookup_Ref__Integer_value (as sm@262@01  $FVF<Ref__Integer_value>) r))
  :pattern (($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@226@01))))) r))
  :qid |qp.fvfValDef47|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and
        (and (<= 0 (inv@260@01 r)) (< (inv@260@01 r) (* M@154@01 N@155@01)))
        (< $Perm.No $k@259@01)
        (img@261@01 r))
      (and
        (img@232@01 r)
        (and (<= 0 (inv@231@01 r)) (< (inv@231@01 r) P@157@01))))
    (=
      ($FVF.lookup_Ref__Integer_value (as sm@262@01  $FVF<Ref__Integer_value>) r)
      ($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@226@01)))))) r)))
  :pattern (($FVF.lookup_Ref__Integer_value (as sm@262@01  $FVF<Ref__Integer_value>) r))
  :pattern (($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@226@01)))))) r))
  :qid |qp.fvfValDef48|)))
(assert (count_array%precondition ($Snap.combine
  $Snap.unit
  ($Snap.combine
    $Snap.unit
    ($Snap.combine
      $Snap.unit
      ($Snap.combine
        $Snap.unit
        ($SortWrappers.$FVF<Ref__Integer_value>To$Snap (as sm@262@01  $FVF<Ref__Integer_value>)))))) 0 (*
  M@154@01
  N@155@01) matrix@156@01 k@253@01))
(pop) ; 6
; Joined path conditions
(assert ($Perm.isReadVar $k@259@01))
(assert (forall ((k@258@01 Int)) (!
  (=>
    (and
      (and (<= 0 k@258@01) (< k@258@01 (* M@154@01 N@155@01)))
      (< $Perm.No $k@259@01))
    (and
      (= (inv@260@01 (Seq_index matrix@156@01 k@258@01)) k@258@01)
      (img@261@01 (Seq_index matrix@156@01 k@258@01))))
  :pattern ((Seq_index matrix@156@01 k@258@01))
  :qid |Ref__Integer_value-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@261@01 r)
      (and
        (and (<= 0 (inv@260@01 r)) (< (inv@260@01 r) (* M@154@01 N@155@01)))
        (< $Perm.No $k@259@01)))
    (= (Seq_index matrix@156@01 (inv@260@01 r)) r))
  :pattern ((inv@260@01 r))
  :qid |Ref__Integer_value-fctOfInv|)))
(assert (forall ((r $Ref)) (!
  (and
    (=>
      (Set_in r ($FVF.domain_Ref__Integer_value (as sm@262@01  $FVF<Ref__Integer_value>)))
      (and
        (and (<= 0 (inv@260@01 r)) (< (inv@260@01 r) (* M@154@01 N@155@01)))
        (< $Perm.No $k@259@01)
        (img@261@01 r)))
    (=>
      (and
        (and (<= 0 (inv@260@01 r)) (< (inv@260@01 r) (* M@154@01 N@155@01)))
        (< $Perm.No $k@259@01)
        (img@261@01 r))
      (Set_in r ($FVF.domain_Ref__Integer_value (as sm@262@01  $FVF<Ref__Integer_value>)))))
  :pattern ((Set_in r ($FVF.domain_Ref__Integer_value (as sm@262@01  $FVF<Ref__Integer_value>))))
  :qid |qp.fvfDomDef49|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and
        (and (<= 0 (inv@260@01 r)) (< (inv@260@01 r) (* M@154@01 N@155@01)))
        (< $Perm.No $k@259@01)
        (img@261@01 r))
      (ite
        (and
          (img@164@01 r)
          (and (<= 0 (inv@163@01 r)) (< (inv@163@01 r) (* M@154@01 N@155@01))))
        (< $Perm.No (- (/ (to_real 1) (to_real 2)) (pTaken@221@01 r)))
        false))
    (=
      ($FVF.lookup_Ref__Integer_value (as sm@262@01  $FVF<Ref__Integer_value>) r)
      ($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@159@01))))))))) r)))
  :pattern (($FVF.lookup_Ref__Integer_value (as sm@262@01  $FVF<Ref__Integer_value>) r))
  :pattern (($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@159@01))))))))) r))
  :qid |qp.fvfValDef46|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and
        (and (<= 0 (inv@260@01 r)) (< (inv@260@01 r) (* M@154@01 N@155@01)))
        (< $Perm.No $k@259@01)
        (img@261@01 r))
      (and
        (img@229@01 r)
        (and (<= 0 (inv@228@01 r)) (< (inv@228@01 r) (* M@154@01 N@155@01)))))
    (=
      ($FVF.lookup_Ref__Integer_value (as sm@262@01  $FVF<Ref__Integer_value>) r)
      ($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@226@01))))) r)))
  :pattern (($FVF.lookup_Ref__Integer_value (as sm@262@01  $FVF<Ref__Integer_value>) r))
  :pattern (($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@226@01))))) r))
  :qid |qp.fvfValDef47|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and
        (and (<= 0 (inv@260@01 r)) (< (inv@260@01 r) (* M@154@01 N@155@01)))
        (< $Perm.No $k@259@01)
        (img@261@01 r))
      (and
        (img@232@01 r)
        (and (<= 0 (inv@231@01 r)) (< (inv@231@01 r) P@157@01))))
    (=
      ($FVF.lookup_Ref__Integer_value (as sm@262@01  $FVF<Ref__Integer_value>) r)
      ($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@226@01)))))) r)))
  :pattern (($FVF.lookup_Ref__Integer_value (as sm@262@01  $FVF<Ref__Integer_value>) r))
  :pattern (($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@226@01)))))) r))
  :qid |qp.fvfValDef48|)))
(assert (and
  (<= 0 (* M@154@01 N@155@01))
  (forall ((j@256@01 Int) (k@257@01 Int)) (!
    (=>
      (and
        (<= 0 j@256@01)
        (and
          (< j@256@01 (* M@154@01 N@155@01))
          (and
            (<= 0 k@257@01)
            (and (< k@257@01 (* M@154@01 N@155@01)) (not (= j@256@01 k@257@01))))))
      (not
        (= (Seq_index matrix@156@01 j@256@01) (Seq_index matrix@156@01 k@257@01))))
    
    :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/third_party/testHistogram.vpr@66@12@66@102|))
  (forall ((k@258@01 Int)) (!
    (=>
      (and (<= 0 k@258@01) (< k@258@01 (* M@154@01 N@155@01)))
      (or (<= 0 k@258@01) (not (<= 0 k@258@01))))
    :pattern ((Seq_index matrix@156@01 k@258@01))
    :qid |Ref__Integer_value-aux|))
  (count_array%precondition ($Snap.combine
    $Snap.unit
    ($Snap.combine
      $Snap.unit
      ($Snap.combine
        $Snap.unit
        ($Snap.combine
          $Snap.unit
          ($SortWrappers.$FVF<Ref__Integer_value>To$Snap (as sm@262@01  $FVF<Ref__Integer_value>)))))) 0 (*
    M@154@01
    N@155@01) matrix@156@01 k@253@01)))
(pop) ; 5
(push) ; 5
; [else-branch: 130 | !(0 <= k@253@01 && k@253@01 < P@157@01)]
(assert (not (and (<= 0 k@253@01) (< k@253@01 P@157@01))))
(pop) ; 5
(pop) ; 4
; Joined path conditions
(assert (forall ((r $Ref)) (!
  (=>
    (ite
      (and
        (img@164@01 r)
        (and (<= 0 (inv@163@01 r)) (< (inv@163@01 r) (* M@154@01 N@155@01))))
      (< $Perm.No (- (/ (to_real 1) (to_real 2)) (pTaken@221@01 r)))
      false)
    (=
      ($FVF.lookup_Ref__Integer_value (as sm@254@01  $FVF<Ref__Integer_value>) r)
      ($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@159@01))))))))) r)))
  :pattern (($FVF.lookup_Ref__Integer_value (as sm@254@01  $FVF<Ref__Integer_value>) r))
  :pattern (($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@159@01))))))))) r))
  :qid |qp.fvfValDef42|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@229@01 r)
      (and (<= 0 (inv@228@01 r)) (< (inv@228@01 r) (* M@154@01 N@155@01))))
    (=
      ($FVF.lookup_Ref__Integer_value (as sm@254@01  $FVF<Ref__Integer_value>) r)
      ($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@226@01))))) r)))
  :pattern (($FVF.lookup_Ref__Integer_value (as sm@254@01  $FVF<Ref__Integer_value>) r))
  :pattern (($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@226@01))))) r))
  :qid |qp.fvfValDef43|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@232@01 r) (and (<= 0 (inv@231@01 r)) (< (inv@231@01 r) P@157@01)))
    (=
      ($FVF.lookup_Ref__Integer_value (as sm@254@01  $FVF<Ref__Integer_value>) r)
      ($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@226@01)))))) r)))
  :pattern (($FVF.lookup_Ref__Integer_value (as sm@254@01  $FVF<Ref__Integer_value>) r))
  :pattern (($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@226@01)))))) r))
  :qid |qp.fvfValDef44|)))
(assert (forall ((r $Ref)) (!
  (=
    ($FVF.perm_Ref__Integer_value (as pm@255@01  $FPM) r)
    (+
      (+
        (ite
          (and
            (img@164@01 r)
            (and (<= 0 (inv@163@01 r)) (< (inv@163@01 r) (* M@154@01 N@155@01))))
          (- (/ (to_real 1) (to_real 2)) (pTaken@221@01 r))
          $Perm.No)
        (ite
          (and
            (img@229@01 r)
            (and (<= 0 (inv@228@01 r)) (< (inv@228@01 r) (* M@154@01 N@155@01))))
          (/ (to_real 1) (to_real 4))
          $Perm.No))
      (ite
        (and
          (img@232@01 r)
          (and (<= 0 (inv@231@01 r)) (< (inv@231@01 r) P@157@01)))
        $Perm.Write
        $Perm.No)))
  :pattern (($FVF.perm_Ref__Integer_value (as pm@255@01  $FPM) r))
  :qid |qp.resPrmSumDef45|)))
(assert ($Perm.isReadVar $k@259@01))
(assert (forall ((k@258@01 Int)) (!
  (=>
    (and
      (and (<= 0 k@258@01) (< k@258@01 (* M@154@01 N@155@01)))
      (< $Perm.No $k@259@01))
    (and
      (= (inv@260@01 (Seq_index matrix@156@01 k@258@01)) k@258@01)
      (img@261@01 (Seq_index matrix@156@01 k@258@01))))
  :pattern ((Seq_index matrix@156@01 k@258@01))
  :qid |Ref__Integer_value-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@261@01 r)
      (and
        (and (<= 0 (inv@260@01 r)) (< (inv@260@01 r) (* M@154@01 N@155@01)))
        (< $Perm.No $k@259@01)))
    (= (Seq_index matrix@156@01 (inv@260@01 r)) r))
  :pattern ((inv@260@01 r))
  :qid |Ref__Integer_value-fctOfInv|)))
(assert (forall ((r $Ref)) (!
  (and
    (=>
      (Set_in r ($FVF.domain_Ref__Integer_value (as sm@262@01  $FVF<Ref__Integer_value>)))
      (and
        (and (<= 0 (inv@260@01 r)) (< (inv@260@01 r) (* M@154@01 N@155@01)))
        (< $Perm.No $k@259@01)
        (img@261@01 r)))
    (=>
      (and
        (and (<= 0 (inv@260@01 r)) (< (inv@260@01 r) (* M@154@01 N@155@01)))
        (< $Perm.No $k@259@01)
        (img@261@01 r))
      (Set_in r ($FVF.domain_Ref__Integer_value (as sm@262@01  $FVF<Ref__Integer_value>)))))
  :pattern ((Set_in r ($FVF.domain_Ref__Integer_value (as sm@262@01  $FVF<Ref__Integer_value>))))
  :qid |qp.fvfDomDef49|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and
        (and (<= 0 (inv@260@01 r)) (< (inv@260@01 r) (* M@154@01 N@155@01)))
        (< $Perm.No $k@259@01)
        (img@261@01 r))
      (ite
        (and
          (img@164@01 r)
          (and (<= 0 (inv@163@01 r)) (< (inv@163@01 r) (* M@154@01 N@155@01))))
        (< $Perm.No (- (/ (to_real 1) (to_real 2)) (pTaken@221@01 r)))
        false))
    (=
      ($FVF.lookup_Ref__Integer_value (as sm@262@01  $FVF<Ref__Integer_value>) r)
      ($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@159@01))))))))) r)))
  :pattern (($FVF.lookup_Ref__Integer_value (as sm@262@01  $FVF<Ref__Integer_value>) r))
  :pattern (($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@159@01))))))))) r))
  :qid |qp.fvfValDef46|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and
        (and (<= 0 (inv@260@01 r)) (< (inv@260@01 r) (* M@154@01 N@155@01)))
        (< $Perm.No $k@259@01)
        (img@261@01 r))
      (and
        (img@229@01 r)
        (and (<= 0 (inv@228@01 r)) (< (inv@228@01 r) (* M@154@01 N@155@01)))))
    (=
      ($FVF.lookup_Ref__Integer_value (as sm@262@01  $FVF<Ref__Integer_value>) r)
      ($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@226@01))))) r)))
  :pattern (($FVF.lookup_Ref__Integer_value (as sm@262@01  $FVF<Ref__Integer_value>) r))
  :pattern (($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@226@01))))) r))
  :qid |qp.fvfValDef47|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and
        (and (<= 0 (inv@260@01 r)) (< (inv@260@01 r) (* M@154@01 N@155@01)))
        (< $Perm.No $k@259@01)
        (img@261@01 r))
      (and
        (img@232@01 r)
        (and (<= 0 (inv@231@01 r)) (< (inv@231@01 r) P@157@01))))
    (=
      ($FVF.lookup_Ref__Integer_value (as sm@262@01  $FVF<Ref__Integer_value>) r)
      ($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@226@01)))))) r)))
  :pattern (($FVF.lookup_Ref__Integer_value (as sm@262@01  $FVF<Ref__Integer_value>) r))
  :pattern (($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@226@01)))))) r))
  :qid |qp.fvfValDef48|)))
(assert (=>
  (and (<= 0 k@253@01) (< k@253@01 P@157@01))
  (and
    (<= 0 k@253@01)
    (< k@253@01 P@157@01)
    (<= 0 (* M@154@01 N@155@01))
    (forall ((j@256@01 Int) (k@257@01 Int)) (!
      (=>
        (and
          (<= 0 j@256@01)
          (and
            (< j@256@01 (* M@154@01 N@155@01))
            (and
              (<= 0 k@257@01)
              (and
                (< k@257@01 (* M@154@01 N@155@01))
                (not (= j@256@01 k@257@01))))))
        (not
          (=
            (Seq_index matrix@156@01 j@256@01)
            (Seq_index matrix@156@01 k@257@01))))
      
      :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/third_party/testHistogram.vpr@66@12@66@102|))
    (forall ((k@258@01 Int)) (!
      (=>
        (and (<= 0 k@258@01) (< k@258@01 (* M@154@01 N@155@01)))
        (or (<= 0 k@258@01) (not (<= 0 k@258@01))))
      :pattern ((Seq_index matrix@156@01 k@258@01))
      :qid |Ref__Integer_value-aux|))
    (count_array%precondition ($Snap.combine
      $Snap.unit
      ($Snap.combine
        $Snap.unit
        ($Snap.combine
          $Snap.unit
          ($Snap.combine
            $Snap.unit
            ($SortWrappers.$FVF<Ref__Integer_value>To$Snap (as sm@262@01  $FVF<Ref__Integer_value>)))))) 0 (*
      M@154@01
      N@155@01) matrix@156@01 k@253@01))))
; Joined path conditions
(assert (or
  (not (and (<= 0 k@253@01) (< k@253@01 P@157@01)))
  (and (<= 0 k@253@01) (< k@253@01 P@157@01))))
; [eval] hist[k]
(push) ; 4
(assert (not (>= k@253@01 0)))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(pop) ; 3
; Nested auxiliary terms: globals (aux)
(assert (forall ((r $Ref)) (!
  (=>
    (ite
      (and
        (img@164@01 r)
        (and (<= 0 (inv@163@01 r)) (< (inv@163@01 r) (* M@154@01 N@155@01))))
      (< $Perm.No (- (/ (to_real 1) (to_real 2)) (pTaken@221@01 r)))
      false)
    (=
      ($FVF.lookup_Ref__Integer_value (as sm@254@01  $FVF<Ref__Integer_value>) r)
      ($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@159@01))))))))) r)))
  :pattern (($FVF.lookup_Ref__Integer_value (as sm@254@01  $FVF<Ref__Integer_value>) r))
  :pattern (($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@159@01))))))))) r))
  :qid |qp.fvfValDef42|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@229@01 r)
      (and (<= 0 (inv@228@01 r)) (< (inv@228@01 r) (* M@154@01 N@155@01))))
    (=
      ($FVF.lookup_Ref__Integer_value (as sm@254@01  $FVF<Ref__Integer_value>) r)
      ($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@226@01))))) r)))
  :pattern (($FVF.lookup_Ref__Integer_value (as sm@254@01  $FVF<Ref__Integer_value>) r))
  :pattern (($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@226@01))))) r))
  :qid |qp.fvfValDef43|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@232@01 r) (and (<= 0 (inv@231@01 r)) (< (inv@231@01 r) P@157@01)))
    (=
      ($FVF.lookup_Ref__Integer_value (as sm@254@01  $FVF<Ref__Integer_value>) r)
      ($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@226@01)))))) r)))
  :pattern (($FVF.lookup_Ref__Integer_value (as sm@254@01  $FVF<Ref__Integer_value>) r))
  :pattern (($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@226@01)))))) r))
  :qid |qp.fvfValDef44|)))
(assert (forall ((r $Ref)) (!
  (=
    ($FVF.perm_Ref__Integer_value (as pm@255@01  $FPM) r)
    (+
      (+
        (ite
          (and
            (img@164@01 r)
            (and (<= 0 (inv@163@01 r)) (< (inv@163@01 r) (* M@154@01 N@155@01))))
          (- (/ (to_real 1) (to_real 2)) (pTaken@221@01 r))
          $Perm.No)
        (ite
          (and
            (img@229@01 r)
            (and (<= 0 (inv@228@01 r)) (< (inv@228@01 r) (* M@154@01 N@155@01))))
          (/ (to_real 1) (to_real 4))
          $Perm.No))
      (ite
        (and
          (img@232@01 r)
          (and (<= 0 (inv@231@01 r)) (< (inv@231@01 r) P@157@01)))
        $Perm.Write
        $Perm.No)))
  :pattern (($FVF.perm_Ref__Integer_value (as pm@255@01  $FPM) r))
  :qid |qp.resPrmSumDef45|)))
(assert ($Perm.isReadVar $k@259@01))
(assert (forall ((k@258@01 Int)) (!
  (=>
    (and
      (and (<= 0 k@258@01) (< k@258@01 (* M@154@01 N@155@01)))
      (< $Perm.No $k@259@01))
    (and
      (= (inv@260@01 (Seq_index matrix@156@01 k@258@01)) k@258@01)
      (img@261@01 (Seq_index matrix@156@01 k@258@01))))
  :pattern ((Seq_index matrix@156@01 k@258@01))
  :qid |Ref__Integer_value-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@261@01 r)
      (and
        (and (<= 0 (inv@260@01 r)) (< (inv@260@01 r) (* M@154@01 N@155@01)))
        (< $Perm.No $k@259@01)))
    (= (Seq_index matrix@156@01 (inv@260@01 r)) r))
  :pattern ((inv@260@01 r))
  :qid |Ref__Integer_value-fctOfInv|)))
(assert (forall ((r $Ref)) (!
  (and
    (=>
      (Set_in r ($FVF.domain_Ref__Integer_value (as sm@262@01  $FVF<Ref__Integer_value>)))
      (and
        (and (<= 0 (inv@260@01 r)) (< (inv@260@01 r) (* M@154@01 N@155@01)))
        (< $Perm.No $k@259@01)
        (img@261@01 r)))
    (=>
      (and
        (and (<= 0 (inv@260@01 r)) (< (inv@260@01 r) (* M@154@01 N@155@01)))
        (< $Perm.No $k@259@01)
        (img@261@01 r))
      (Set_in r ($FVF.domain_Ref__Integer_value (as sm@262@01  $FVF<Ref__Integer_value>)))))
  :pattern ((Set_in r ($FVF.domain_Ref__Integer_value (as sm@262@01  $FVF<Ref__Integer_value>))))
  :qid |qp.fvfDomDef49|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and
        (and (<= 0 (inv@260@01 r)) (< (inv@260@01 r) (* M@154@01 N@155@01)))
        (< $Perm.No $k@259@01)
        (img@261@01 r))
      (ite
        (and
          (img@164@01 r)
          (and (<= 0 (inv@163@01 r)) (< (inv@163@01 r) (* M@154@01 N@155@01))))
        (< $Perm.No (- (/ (to_real 1) (to_real 2)) (pTaken@221@01 r)))
        false))
    (=
      ($FVF.lookup_Ref__Integer_value (as sm@262@01  $FVF<Ref__Integer_value>) r)
      ($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@159@01))))))))) r)))
  :pattern (($FVF.lookup_Ref__Integer_value (as sm@262@01  $FVF<Ref__Integer_value>) r))
  :pattern (($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@159@01))))))))) r))
  :qid |qp.fvfValDef46|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and
        (and (<= 0 (inv@260@01 r)) (< (inv@260@01 r) (* M@154@01 N@155@01)))
        (< $Perm.No $k@259@01)
        (img@261@01 r))
      (and
        (img@229@01 r)
        (and (<= 0 (inv@228@01 r)) (< (inv@228@01 r) (* M@154@01 N@155@01)))))
    (=
      ($FVF.lookup_Ref__Integer_value (as sm@262@01  $FVF<Ref__Integer_value>) r)
      ($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@226@01))))) r)))
  :pattern (($FVF.lookup_Ref__Integer_value (as sm@262@01  $FVF<Ref__Integer_value>) r))
  :pattern (($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@226@01))))) r))
  :qid |qp.fvfValDef47|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and
        (and (<= 0 (inv@260@01 r)) (< (inv@260@01 r) (* M@154@01 N@155@01)))
        (< $Perm.No $k@259@01)
        (img@261@01 r))
      (and
        (img@232@01 r)
        (and (<= 0 (inv@231@01 r)) (< (inv@231@01 r) P@157@01))))
    (=
      ($FVF.lookup_Ref__Integer_value (as sm@262@01  $FVF<Ref__Integer_value>) r)
      ($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@226@01)))))) r)))
  :pattern (($FVF.lookup_Ref__Integer_value (as sm@262@01  $FVF<Ref__Integer_value>) r))
  :pattern (($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@226@01)))))) r))
  :qid |qp.fvfValDef48|)))
; Nested auxiliary terms: non-globals (aux)
(assert (forall ((k@253@01 Int)) (!
  (and
    (or (<= 0 k@253@01) (not (<= 0 k@253@01)))
    (=>
      (and (<= 0 k@253@01) (< k@253@01 P@157@01))
      (and
        (<= 0 k@253@01)
        (< k@253@01 P@157@01)
        (<= 0 (* M@154@01 N@155@01))
        (forall ((j@256@01 Int) (k@257@01 Int)) (!
          (=>
            (and
              (<= 0 j@256@01)
              (and
                (< j@256@01 (* M@154@01 N@155@01))
                (and
                  (<= 0 k@257@01)
                  (and
                    (< k@257@01 (* M@154@01 N@155@01))
                    (not (= j@256@01 k@257@01))))))
            (not
              (=
                (Seq_index matrix@156@01 j@256@01)
                (Seq_index matrix@156@01 k@257@01))))
          
          :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/third_party/testHistogram.vpr@66@12@66@102|))
        (forall ((k@258@01 Int)) (!
          (=>
            (and (<= 0 k@258@01) (< k@258@01 (* M@154@01 N@155@01)))
            (or (<= 0 k@258@01) (not (<= 0 k@258@01))))
          :pattern ((Seq_index matrix@156@01 k@258@01))
          :qid |Ref__Integer_value-aux|))
        (count_array%precondition ($Snap.combine
          $Snap.unit
          ($Snap.combine
            $Snap.unit
            ($Snap.combine
              $Snap.unit
              ($Snap.combine
                $Snap.unit
                ($SortWrappers.$FVF<Ref__Integer_value>To$Snap (as sm@262@01  $FVF<Ref__Integer_value>)))))) 0 (*
          M@154@01
          N@155@01) matrix@156@01 k@253@01)))
    (or
      (not (and (<= 0 k@253@01) (< k@253@01 P@157@01)))
      (and (<= 0 k@253@01) (< k@253@01 P@157@01))))
  
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/third_party/testHistogram.vpr@170@12@170@117-aux|)))
(assert (forall ((k@253@01 Int)) (!
  (=>
    (and (<= 0 k@253@01) (< k@253@01 P@157@01))
    (count_array%precondition ($Snap.combine
      $Snap.unit
      ($Snap.combine
        $Snap.unit
        ($Snap.combine
          $Snap.unit
          ($Snap.combine
            $Snap.unit
            ($SortWrappers.$FVF<Ref__Integer_value>To$Snap (as sm@262@01  $FVF<Ref__Integer_value>)))))) 0 (*
      M@154@01
      N@155@01) matrix@156@01 k@253@01))
  
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/third_party/testHistogram.vpr@170@12@170@117_precondition|)))
(push) ; 3
(assert (not (forall ((k@253@01 Int)) (!
  (=>
    (and
      (=>
        (and (<= 0 k@253@01) (< k@253@01 P@157@01))
        (count_array%precondition ($Snap.combine
          $Snap.unit
          ($Snap.combine
            $Snap.unit
            ($Snap.combine
              $Snap.unit
              ($Snap.combine
                $Snap.unit
                ($SortWrappers.$FVF<Ref__Integer_value>To$Snap (as sm@262@01  $FVF<Ref__Integer_value>)))))) 0 (*
          M@154@01
          N@155@01) matrix@156@01 k@253@01))
      (and (<= 0 k@253@01) (< k@253@01 P@157@01)))
    (=
      ($FVF.lookup_Ref__Integer_value (as sm@254@01  $FVF<Ref__Integer_value>) (Seq_index
        hist@158@01
        k@253@01))
      (count_array ($Snap.combine
        $Snap.unit
        ($Snap.combine
          $Snap.unit
          ($Snap.combine
            $Snap.unit
            ($Snap.combine
              $Snap.unit
              ($SortWrappers.$FVF<Ref__Integer_value>To$Snap (as sm@262@01  $FVF<Ref__Integer_value>)))))) 0 (*
        M@154@01
        N@155@01) matrix@156@01 k@253@01)))
  
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/third_party/testHistogram.vpr@170@12@170@117|))))
(check-sat)
; unsat
(pop) ; 3
; 0.01s
; (get-info :all-statistics)
(assert (forall ((k@253@01 Int)) (!
  (=>
    (and (<= 0 k@253@01) (< k@253@01 P@157@01))
    (=
      ($FVF.lookup_Ref__Integer_value (as sm@254@01  $FVF<Ref__Integer_value>) (Seq_index
        hist@158@01
        k@253@01))
      (count_array ($Snap.combine
        $Snap.unit
        ($Snap.combine
          $Snap.unit
          ($Snap.combine
            $Snap.unit
            ($Snap.combine
              $Snap.unit
              ($SortWrappers.$FVF<Ref__Integer_value>To$Snap (as sm@262@01  $FVF<Ref__Integer_value>)))))) 0 (*
        M@154@01
        N@155@01) matrix@156@01 k@253@01)))
  
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/third_party/testHistogram.vpr@170@12@170@117|)))
; [eval] (forall i1: Int, j1: Int :: { old(Ref__multidim_index_2(M, N, i1, j1)) } { old(matrix[Ref__multidim_index_2(M, N, i1, j1)]) } 0 <= i1 && (i1 < M && (0 <= j1 && j1 < N)) ==> matrix[Ref__multidim_index_2(M, N, i1, j1)].Ref__Integer_value == old(matrix[Ref__multidim_index_2(M, N, i1, j1)].Ref__Integer_value))
(declare-const i1@263@01 Int)
(declare-const j1@264@01 Int)
(push) ; 3
; [eval] 0 <= i1 && (i1 < M && (0 <= j1 && j1 < N)) ==> matrix[Ref__multidim_index_2(M, N, i1, j1)].Ref__Integer_value == old(matrix[Ref__multidim_index_2(M, N, i1, j1)].Ref__Integer_value)
; [eval] 0 <= i1 && (i1 < M && (0 <= j1 && j1 < N))
; [eval] 0 <= i1
(push) ; 4
; [then-branch: 137 | !(0 <= i1@263@01) | live]
; [else-branch: 137 | 0 <= i1@263@01 | live]
(push) ; 5
; [then-branch: 137 | !(0 <= i1@263@01)]
(assert (not (<= 0 i1@263@01)))
(pop) ; 5
(push) ; 5
; [else-branch: 137 | 0 <= i1@263@01]
(assert (<= 0 i1@263@01))
; [eval] i1 < M
(push) ; 6
; [then-branch: 138 | !(i1@263@01 < M@154@01) | live]
; [else-branch: 138 | i1@263@01 < M@154@01 | live]
(push) ; 7
; [then-branch: 138 | !(i1@263@01 < M@154@01)]
(assert (not (< i1@263@01 M@154@01)))
(pop) ; 7
(push) ; 7
; [else-branch: 138 | i1@263@01 < M@154@01]
(assert (< i1@263@01 M@154@01))
; [eval] 0 <= j1
(push) ; 8
; [then-branch: 139 | !(0 <= j1@264@01) | live]
; [else-branch: 139 | 0 <= j1@264@01 | live]
(push) ; 9
; [then-branch: 139 | !(0 <= j1@264@01)]
(assert (not (<= 0 j1@264@01)))
(pop) ; 9
(push) ; 9
; [else-branch: 139 | 0 <= j1@264@01]
(assert (<= 0 j1@264@01))
; [eval] j1 < N
(pop) ; 9
(pop) ; 8
; Joined path conditions
; Joined path conditions
(assert (or (<= 0 j1@264@01) (not (<= 0 j1@264@01))))
(pop) ; 7
(pop) ; 6
; Joined path conditions
; Joined path conditions
(assert (=>
  (< i1@263@01 M@154@01)
  (and (< i1@263@01 M@154@01) (or (<= 0 j1@264@01) (not (<= 0 j1@264@01))))))
(assert (or (< i1@263@01 M@154@01) (not (< i1@263@01 M@154@01))))
(pop) ; 5
(pop) ; 4
; Joined path conditions
; Joined path conditions
(assert (=>
  (<= 0 i1@263@01)
  (and
    (<= 0 i1@263@01)
    (=>
      (< i1@263@01 M@154@01)
      (and (< i1@263@01 M@154@01) (or (<= 0 j1@264@01) (not (<= 0 j1@264@01)))))
    (or (< i1@263@01 M@154@01) (not (< i1@263@01 M@154@01))))))
(assert (or (<= 0 i1@263@01) (not (<= 0 i1@263@01))))
(push) ; 4
; [then-branch: 140 | 0 <= i1@263@01 && i1@263@01 < M@154@01 && 0 <= j1@264@01 && j1@264@01 < N@155@01 | live]
; [else-branch: 140 | !(0 <= i1@263@01 && i1@263@01 < M@154@01 && 0 <= j1@264@01 && j1@264@01 < N@155@01) | live]
(push) ; 5
; [then-branch: 140 | 0 <= i1@263@01 && i1@263@01 < M@154@01 && 0 <= j1@264@01 && j1@264@01 < N@155@01]
(assert (and
  (<= 0 i1@263@01)
  (and (< i1@263@01 M@154@01) (and (<= 0 j1@264@01) (< j1@264@01 N@155@01)))))
; [eval] matrix[Ref__multidim_index_2(M, N, i1, j1)].Ref__Integer_value == old(matrix[Ref__multidim_index_2(M, N, i1, j1)].Ref__Integer_value)
; [eval] matrix[Ref__multidim_index_2(M, N, i1, j1)]
; [eval] Ref__multidim_index_2(M, N, i1, j1)
(push) ; 6
; [eval] 0 <= i0
; [eval] i0 < N0
; [eval] 0 <= N0
(push) ; 7
(assert (not (<= 0 M@154@01)))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(assert (<= 0 M@154@01))
; [eval] 0 <= i1
; [eval] i1 < N1
; [eval] 0 <= N1
(push) ; 7
(assert (not (<= 0 N@155@01)))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(assert (<= 0 N@155@01))
(assert (Ref__multidim_index_2%precondition ($Snap.combine
  $Snap.unit
  ($Snap.combine
    $Snap.unit
    ($Snap.combine
      $Snap.unit
      ($Snap.combine $Snap.unit ($Snap.combine $Snap.unit $Snap.unit))))) M@154@01 N@155@01 i1@263@01 j1@264@01))
(pop) ; 6
; Joined path conditions
(assert (and
  (<= 0 M@154@01)
  (<= 0 N@155@01)
  (Ref__multidim_index_2%precondition ($Snap.combine
    $Snap.unit
    ($Snap.combine
      $Snap.unit
      ($Snap.combine
        $Snap.unit
        ($Snap.combine $Snap.unit ($Snap.combine $Snap.unit $Snap.unit))))) M@154@01 N@155@01 i1@263@01 j1@264@01)))
(push) ; 6
(assert (not (>=
  (Ref__multidim_index_2 ($Snap.combine
    $Snap.unit
    ($Snap.combine
      $Snap.unit
      ($Snap.combine
        $Snap.unit
        ($Snap.combine $Snap.unit ($Snap.combine $Snap.unit $Snap.unit))))) M@154@01 N@155@01 i1@263@01 j1@264@01)
  0)))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(push) ; 6
(assert (not (<
  (Ref__multidim_index_2 ($Snap.combine
    $Snap.unit
    ($Snap.combine
      $Snap.unit
      ($Snap.combine
        $Snap.unit
        ($Snap.combine $Snap.unit ($Snap.combine $Snap.unit $Snap.unit))))) M@154@01 N@155@01 i1@263@01 j1@264@01)
  (Seq_length matrix@156@01))))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(declare-const sm@265@01 $FVF<Ref__Integer_value>)
; Definitional axioms for snapshot map values
(assert (forall ((r $Ref)) (!
  (=>
    (ite
      (and
        (img@164@01 r)
        (and (<= 0 (inv@163@01 r)) (< (inv@163@01 r) (* M@154@01 N@155@01))))
      (< $Perm.No (- (/ (to_real 1) (to_real 2)) (pTaken@221@01 r)))
      false)
    (=
      ($FVF.lookup_Ref__Integer_value (as sm@265@01  $FVF<Ref__Integer_value>) r)
      ($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@159@01))))))))) r)))
  :pattern (($FVF.lookup_Ref__Integer_value (as sm@265@01  $FVF<Ref__Integer_value>) r))
  :pattern (($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@159@01))))))))) r))
  :qid |qp.fvfValDef50|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@229@01 r)
      (and (<= 0 (inv@228@01 r)) (< (inv@228@01 r) (* M@154@01 N@155@01))))
    (=
      ($FVF.lookup_Ref__Integer_value (as sm@265@01  $FVF<Ref__Integer_value>) r)
      ($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@226@01))))) r)))
  :pattern (($FVF.lookup_Ref__Integer_value (as sm@265@01  $FVF<Ref__Integer_value>) r))
  :pattern (($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@226@01))))) r))
  :qid |qp.fvfValDef51|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@232@01 r) (and (<= 0 (inv@231@01 r)) (< (inv@231@01 r) P@157@01)))
    (=
      ($FVF.lookup_Ref__Integer_value (as sm@265@01  $FVF<Ref__Integer_value>) r)
      ($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@226@01)))))) r)))
  :pattern (($FVF.lookup_Ref__Integer_value (as sm@265@01  $FVF<Ref__Integer_value>) r))
  :pattern (($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@226@01)))))) r))
  :qid |qp.fvfValDef52|)))
(declare-const pm@266@01 $FPM)
(assert (forall ((r $Ref)) (!
  (=
    ($FVF.perm_Ref__Integer_value (as pm@266@01  $FPM) r)
    (+
      (+
        (ite
          (and
            (img@164@01 r)
            (and (<= 0 (inv@163@01 r)) (< (inv@163@01 r) (* M@154@01 N@155@01))))
          (- (/ (to_real 1) (to_real 2)) (pTaken@221@01 r))
          $Perm.No)
        (ite
          (and
            (img@229@01 r)
            (and (<= 0 (inv@228@01 r)) (< (inv@228@01 r) (* M@154@01 N@155@01))))
          (/ (to_real 1) (to_real 4))
          $Perm.No))
      (ite
        (and
          (img@232@01 r)
          (and (<= 0 (inv@231@01 r)) (< (inv@231@01 r) P@157@01)))
        $Perm.Write
        $Perm.No)))
  :pattern (($FVF.perm_Ref__Integer_value (as pm@266@01  $FPM) r))
  :qid |qp.resPrmSumDef53|)))
(push) ; 6
(assert (not (<
  $Perm.No
  ($FVF.perm_Ref__Integer_value (as pm@266@01  $FPM) (Seq_index
    matrix@156@01
    (Ref__multidim_index_2 ($Snap.combine
      $Snap.unit
      ($Snap.combine
        $Snap.unit
        ($Snap.combine
          $Snap.unit
          ($Snap.combine $Snap.unit ($Snap.combine $Snap.unit $Snap.unit))))) M@154@01 N@155@01 i1@263@01 j1@264@01))))))
(check-sat)
; unsat
(pop) ; 6
; 0.01s
; (get-info :all-statistics)
; [eval] old(matrix[Ref__multidim_index_2(M, N, i1, j1)].Ref__Integer_value)
; [eval] matrix[Ref__multidim_index_2(M, N, i1, j1)]
; [eval] Ref__multidim_index_2(M, N, i1, j1)
(push) ; 6
; [eval] 0 <= i0
; [eval] i0 < N0
; [eval] 0 <= N0
; [eval] 0 <= i1
; [eval] i1 < N1
; [eval] 0 <= N1
(pop) ; 6
; Joined path conditions
(push) ; 6
(assert (not (>=
  (Ref__multidim_index_2 ($Snap.combine
    $Snap.unit
    ($Snap.combine
      $Snap.unit
      ($Snap.combine
        $Snap.unit
        ($Snap.combine $Snap.unit ($Snap.combine $Snap.unit $Snap.unit))))) M@154@01 N@155@01 i1@263@01 j1@264@01)
  0)))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(push) ; 6
(assert (not (<
  (Ref__multidim_index_2 ($Snap.combine
    $Snap.unit
    ($Snap.combine
      $Snap.unit
      ($Snap.combine
        $Snap.unit
        ($Snap.combine $Snap.unit ($Snap.combine $Snap.unit $Snap.unit))))) M@154@01 N@155@01 i1@263@01 j1@264@01)
  (Seq_length matrix@156@01))))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(declare-const sm@267@01 $FVF<Ref__Integer_value>)
; Definitional axioms for snapshot map values
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@164@01 r)
      (and (<= 0 (inv@163@01 r)) (< (inv@163@01 r) (* M@154@01 N@155@01))))
    (=
      ($FVF.lookup_Ref__Integer_value (as sm@267@01  $FVF<Ref__Integer_value>) r)
      ($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@159@01))))))))) r)))
  :pattern (($FVF.lookup_Ref__Integer_value (as sm@267@01  $FVF<Ref__Integer_value>) r))
  :pattern (($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@159@01))))))))) r))
  :qid |qp.fvfValDef54|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@171@01 r) (and (<= 0 (inv@170@01 r)) (< (inv@170@01 r) P@157@01)))
    (=
      ($FVF.lookup_Ref__Integer_value (as sm@267@01  $FVF<Ref__Integer_value>) r)
      ($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@159@01)))))))))))) r)))
  :pattern (($FVF.lookup_Ref__Integer_value (as sm@267@01  $FVF<Ref__Integer_value>) r))
  :pattern (($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@159@01)))))))))))) r))
  :qid |qp.fvfValDef55|)))
(declare-const pm@268@01 $FPM)
(assert (forall ((r $Ref)) (!
  (=
    ($FVF.perm_Ref__Integer_value (as pm@268@01  $FPM) r)
    (+
      (ite
        (and
          (img@164@01 r)
          (and (<= 0 (inv@163@01 r)) (< (inv@163@01 r) (* M@154@01 N@155@01))))
        (/ (to_real 1) (to_real 2))
        $Perm.No)
      (ite
        (and
          (img@171@01 r)
          (and (<= 0 (inv@170@01 r)) (< (inv@170@01 r) P@157@01)))
        $Perm.Write
        $Perm.No)))
  :pattern (($FVF.perm_Ref__Integer_value (as pm@268@01  $FPM) r))
  :qid |qp.resPrmSumDef56|)))
(push) ; 6
(assert (not (<
  $Perm.No
  ($FVF.perm_Ref__Integer_value (as pm@268@01  $FPM) (Seq_index
    matrix@156@01
    (Ref__multidim_index_2 ($Snap.combine
      $Snap.unit
      ($Snap.combine
        $Snap.unit
        ($Snap.combine
          $Snap.unit
          ($Snap.combine $Snap.unit ($Snap.combine $Snap.unit $Snap.unit))))) M@154@01 N@155@01 i1@263@01 j1@264@01))))))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(pop) ; 5
(push) ; 5
; [else-branch: 140 | !(0 <= i1@263@01 && i1@263@01 < M@154@01 && 0 <= j1@264@01 && j1@264@01 < N@155@01)]
(assert (not
  (and
    (<= 0 i1@263@01)
    (and (< i1@263@01 M@154@01) (and (<= 0 j1@264@01) (< j1@264@01 N@155@01))))))
(pop) ; 5
(pop) ; 4
; Joined path conditions
(assert (forall ((r $Ref)) (!
  (=>
    (ite
      (and
        (img@164@01 r)
        (and (<= 0 (inv@163@01 r)) (< (inv@163@01 r) (* M@154@01 N@155@01))))
      (< $Perm.No (- (/ (to_real 1) (to_real 2)) (pTaken@221@01 r)))
      false)
    (=
      ($FVF.lookup_Ref__Integer_value (as sm@265@01  $FVF<Ref__Integer_value>) r)
      ($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@159@01))))))))) r)))
  :pattern (($FVF.lookup_Ref__Integer_value (as sm@265@01  $FVF<Ref__Integer_value>) r))
  :pattern (($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@159@01))))))))) r))
  :qid |qp.fvfValDef50|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@229@01 r)
      (and (<= 0 (inv@228@01 r)) (< (inv@228@01 r) (* M@154@01 N@155@01))))
    (=
      ($FVF.lookup_Ref__Integer_value (as sm@265@01  $FVF<Ref__Integer_value>) r)
      ($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@226@01))))) r)))
  :pattern (($FVF.lookup_Ref__Integer_value (as sm@265@01  $FVF<Ref__Integer_value>) r))
  :pattern (($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@226@01))))) r))
  :qid |qp.fvfValDef51|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@232@01 r) (and (<= 0 (inv@231@01 r)) (< (inv@231@01 r) P@157@01)))
    (=
      ($FVF.lookup_Ref__Integer_value (as sm@265@01  $FVF<Ref__Integer_value>) r)
      ($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@226@01)))))) r)))
  :pattern (($FVF.lookup_Ref__Integer_value (as sm@265@01  $FVF<Ref__Integer_value>) r))
  :pattern (($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@226@01)))))) r))
  :qid |qp.fvfValDef52|)))
(assert (forall ((r $Ref)) (!
  (=
    ($FVF.perm_Ref__Integer_value (as pm@266@01  $FPM) r)
    (+
      (+
        (ite
          (and
            (img@164@01 r)
            (and (<= 0 (inv@163@01 r)) (< (inv@163@01 r) (* M@154@01 N@155@01))))
          (- (/ (to_real 1) (to_real 2)) (pTaken@221@01 r))
          $Perm.No)
        (ite
          (and
            (img@229@01 r)
            (and (<= 0 (inv@228@01 r)) (< (inv@228@01 r) (* M@154@01 N@155@01))))
          (/ (to_real 1) (to_real 4))
          $Perm.No))
      (ite
        (and
          (img@232@01 r)
          (and (<= 0 (inv@231@01 r)) (< (inv@231@01 r) P@157@01)))
        $Perm.Write
        $Perm.No)))
  :pattern (($FVF.perm_Ref__Integer_value (as pm@266@01  $FPM) r))
  :qid |qp.resPrmSumDef53|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@164@01 r)
      (and (<= 0 (inv@163@01 r)) (< (inv@163@01 r) (* M@154@01 N@155@01))))
    (=
      ($FVF.lookup_Ref__Integer_value (as sm@267@01  $FVF<Ref__Integer_value>) r)
      ($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@159@01))))))))) r)))
  :pattern (($FVF.lookup_Ref__Integer_value (as sm@267@01  $FVF<Ref__Integer_value>) r))
  :pattern (($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@159@01))))))))) r))
  :qid |qp.fvfValDef54|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@171@01 r) (and (<= 0 (inv@170@01 r)) (< (inv@170@01 r) P@157@01)))
    (=
      ($FVF.lookup_Ref__Integer_value (as sm@267@01  $FVF<Ref__Integer_value>) r)
      ($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@159@01)))))))))))) r)))
  :pattern (($FVF.lookup_Ref__Integer_value (as sm@267@01  $FVF<Ref__Integer_value>) r))
  :pattern (($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@159@01)))))))))))) r))
  :qid |qp.fvfValDef55|)))
(assert (forall ((r $Ref)) (!
  (=
    ($FVF.perm_Ref__Integer_value (as pm@268@01  $FPM) r)
    (+
      (ite
        (and
          (img@164@01 r)
          (and (<= 0 (inv@163@01 r)) (< (inv@163@01 r) (* M@154@01 N@155@01))))
        (/ (to_real 1) (to_real 2))
        $Perm.No)
      (ite
        (and
          (img@171@01 r)
          (and (<= 0 (inv@170@01 r)) (< (inv@170@01 r) P@157@01)))
        $Perm.Write
        $Perm.No)))
  :pattern (($FVF.perm_Ref__Integer_value (as pm@268@01  $FPM) r))
  :qid |qp.resPrmSumDef56|)))
(assert (=>
  (and
    (<= 0 i1@263@01)
    (and (< i1@263@01 M@154@01) (and (<= 0 j1@264@01) (< j1@264@01 N@155@01))))
  (and
    (<= 0 i1@263@01)
    (< i1@263@01 M@154@01)
    (<= 0 j1@264@01)
    (< j1@264@01 N@155@01)
    (<= 0 M@154@01)
    (<= 0 N@155@01)
    (Ref__multidim_index_2%precondition ($Snap.combine
      $Snap.unit
      ($Snap.combine
        $Snap.unit
        ($Snap.combine
          $Snap.unit
          ($Snap.combine $Snap.unit ($Snap.combine $Snap.unit $Snap.unit))))) M@154@01 N@155@01 i1@263@01 j1@264@01))))
; Joined path conditions
(assert (or
  (not
    (and
      (<= 0 i1@263@01)
      (and (< i1@263@01 M@154@01) (and (<= 0 j1@264@01) (< j1@264@01 N@155@01)))))
  (and
    (<= 0 i1@263@01)
    (and (< i1@263@01 M@154@01) (and (<= 0 j1@264@01) (< j1@264@01 N@155@01))))))
; [eval] old(Ref__multidim_index_2(M, N, i1, j1))
; [eval] Ref__multidim_index_2(M, N, i1, j1)
(push) ; 4
; [eval] 0 <= i0
(push) ; 5
(assert (not (<= 0 i1@263@01)))
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
(set-option :timeout 0)
(push) ; 5
(set-option :timeout 10)
(assert (not (forall ((r $Ref)) (!
  (and
    (= (Seq_index matrix@156@01 j1@162@01) (Seq_index hist@158@01 i1@169@01))
    (=
      (and
        (img@164@01 r)
        (and (<= 0 (inv@163@01 r)) (< (inv@163@01 r) (* M@154@01 N@155@01))))
      (and
        (img@171@01 r)
        (and (<= 0 (inv@170@01 r)) (< (inv@170@01 r) P@157@01)))))
  
  :qid |quant-u-10071|))))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for snapshot map domain
; Definitional axioms for snapshot map values
; Assume upper permission bound for field Ref__Integer_value
(assert (forall ((r $Ref)) (!
  (<= ($FVF.perm_Ref__Integer_value (as pm@268@01  $FPM) r) $Perm.Write)
  :pattern ((inv@163@01 r))
  :qid |qp-fld-prm-bnd|)))
; Assume upper permission bound for field Ref__Integer_value
(assert (forall ((r $Ref)) (!
  (<= ($FVF.perm_Ref__Integer_value (as pm@268@01  $FPM) r) $Perm.Write)
  :pattern ((inv@170@01 r))
  :qid |qp-fld-prm-bnd|)))
; [eval] 0 <= i0
(set-option :timeout 0)
(push) ; 5
(assert (not (<= 0 i1@263@01)))
(check-sat)
; unknown
(pop) ; 5
; 0.01s
; (get-info :all-statistics)
; [state consolidation]
; State saturation: before repetition
(set-option :timeout 10)
(check-sat)
; unknown
(set-option :timeout 0)
(push) ; 5
(set-option :timeout 10)
(assert (not (forall ((r $Ref)) (!
  (and
    (= (Seq_index matrix@156@01 j1@162@01) (Seq_index hist@158@01 i1@169@01))
    (=
      (and
        (img@164@01 r)
        (and (<= 0 (inv@163@01 r)) (< (inv@163@01 r) (* M@154@01 N@155@01))))
      (and
        (img@171@01 r)
        (and (<= 0 (inv@170@01 r)) (< (inv@170@01 r) P@157@01)))))
  
  :qid |quant-u-10072|))))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for snapshot map domain
; Definitional axioms for snapshot map values
; Assume upper permission bound for field Ref__Integer_value
; Assume upper permission bound for field Ref__Integer_value
; [eval] 0 <= i0
(set-option :timeout 0)
(push) ; 5
(assert (not (<= 0 i1@263@01)))
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
(set-option :timeout 0)
(push) ; 5
(set-option :timeout 10)
(assert (not (forall ((r $Ref)) (!
  (and
    (= (Seq_index matrix@156@01 j1@162@01) (Seq_index hist@158@01 i1@169@01))
    (=
      (and
        (img@164@01 r)
        (and (<= 0 (inv@163@01 r)) (< (inv@163@01 r) (* M@154@01 N@155@01))))
      (and
        (img@171@01 r)
        (and (<= 0 (inv@170@01 r)) (< (inv@170@01 r) P@157@01)))))
  
  :qid |quant-u-10073|))))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for snapshot map domain
; Definitional axioms for snapshot map values
; Assume upper permission bound for field Ref__Integer_value
; Assume upper permission bound for field Ref__Integer_value
; [eval] 0 <= i0
(set-option :timeout 0)
(push) ; 5
(assert (not (<= 0 i1@263@01)))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(pop) ; 4
; [eval] old(matrix[Ref__multidim_index_2(M, N, i1, j1)])
; [eval] matrix[Ref__multidim_index_2(M, N, i1, j1)]
; [eval] Ref__multidim_index_2(M, N, i1, j1)
(push) ; 4
; [eval] 0 <= i0
(push) ; 5
(assert (not (<= 0 i1@263@01)))
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
(set-option :timeout 0)
(push) ; 5
(set-option :timeout 10)
(assert (not (forall ((r $Ref)) (!
  (and
    (= (Seq_index matrix@156@01 j1@162@01) (Seq_index hist@158@01 i1@169@01))
    (=
      (and
        (img@164@01 r)
        (and (<= 0 (inv@163@01 r)) (< (inv@163@01 r) (* M@154@01 N@155@01))))
      (and
        (img@171@01 r)
        (and (<= 0 (inv@170@01 r)) (< (inv@170@01 r) P@157@01)))))
  
  :qid |quant-u-10074|))))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for snapshot map domain
; Definitional axioms for snapshot map values
; Assume upper permission bound for field Ref__Integer_value
(assert (forall ((r $Ref)) (!
  (<= ($FVF.perm_Ref__Integer_value (as pm@268@01  $FPM) r) $Perm.Write)
  :pattern ((inv@163@01 r))
  :qid |qp-fld-prm-bnd|)))
; Assume upper permission bound for field Ref__Integer_value
(assert (forall ((r $Ref)) (!
  (<= ($FVF.perm_Ref__Integer_value (as pm@268@01  $FPM) r) $Perm.Write)
  :pattern ((inv@170@01 r))
  :qid |qp-fld-prm-bnd|)))
; [eval] 0 <= i0
(set-option :timeout 0)
(push) ; 5
(assert (not (<= 0 i1@263@01)))
(check-sat)
; unknown
(pop) ; 5
; 0.01s
; (get-info :all-statistics)
; [state consolidation]
; State saturation: before repetition
(set-option :timeout 10)
(check-sat)
; unknown
(set-option :timeout 0)
(push) ; 5
(set-option :timeout 10)
(assert (not (forall ((r $Ref)) (!
  (and
    (= (Seq_index matrix@156@01 j1@162@01) (Seq_index hist@158@01 i1@169@01))
    (=
      (and
        (img@164@01 r)
        (and (<= 0 (inv@163@01 r)) (< (inv@163@01 r) (* M@154@01 N@155@01))))
      (and
        (img@171@01 r)
        (and (<= 0 (inv@170@01 r)) (< (inv@170@01 r) P@157@01)))))
  
  :qid |quant-u-10075|))))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for snapshot map domain
; Definitional axioms for snapshot map values
; Assume upper permission bound for field Ref__Integer_value
; Assume upper permission bound for field Ref__Integer_value
; [eval] 0 <= i0
(set-option :timeout 0)
(push) ; 5
(assert (not (<= 0 i1@263@01)))
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
(set-option :timeout 0)
(push) ; 5
(set-option :timeout 10)
(assert (not (forall ((r $Ref)) (!
  (and
    (= (Seq_index matrix@156@01 j1@162@01) (Seq_index hist@158@01 i1@169@01))
    (=
      (and
        (img@164@01 r)
        (and (<= 0 (inv@163@01 r)) (< (inv@163@01 r) (* M@154@01 N@155@01))))
      (and
        (img@171@01 r)
        (and (<= 0 (inv@170@01 r)) (< (inv@170@01 r) P@157@01)))))
  
  :qid |quant-u-10076|))))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for snapshot map domain
; Definitional axioms for snapshot map values
; Assume upper permission bound for field Ref__Integer_value
; Assume upper permission bound for field Ref__Integer_value
; [eval] 0 <= i0
(set-option :timeout 0)
(push) ; 5
(assert (not (<= 0 i1@263@01)))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(pop) ; 4
(pop) ; 3
; Nested auxiliary terms: globals (aux)
(assert (forall ((r $Ref)) (!
  (=>
    (ite
      (and
        (img@164@01 r)
        (and (<= 0 (inv@163@01 r)) (< (inv@163@01 r) (* M@154@01 N@155@01))))
      (< $Perm.No (- (/ (to_real 1) (to_real 2)) (pTaken@221@01 r)))
      false)
    (=
      ($FVF.lookup_Ref__Integer_value (as sm@265@01  $FVF<Ref__Integer_value>) r)
      ($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@159@01))))))))) r)))
  :pattern (($FVF.lookup_Ref__Integer_value (as sm@265@01  $FVF<Ref__Integer_value>) r))
  :pattern (($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@159@01))))))))) r))
  :qid |qp.fvfValDef50|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@229@01 r)
      (and (<= 0 (inv@228@01 r)) (< (inv@228@01 r) (* M@154@01 N@155@01))))
    (=
      ($FVF.lookup_Ref__Integer_value (as sm@265@01  $FVF<Ref__Integer_value>) r)
      ($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@226@01))))) r)))
  :pattern (($FVF.lookup_Ref__Integer_value (as sm@265@01  $FVF<Ref__Integer_value>) r))
  :pattern (($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@226@01))))) r))
  :qid |qp.fvfValDef51|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@232@01 r) (and (<= 0 (inv@231@01 r)) (< (inv@231@01 r) P@157@01)))
    (=
      ($FVF.lookup_Ref__Integer_value (as sm@265@01  $FVF<Ref__Integer_value>) r)
      ($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@226@01)))))) r)))
  :pattern (($FVF.lookup_Ref__Integer_value (as sm@265@01  $FVF<Ref__Integer_value>) r))
  :pattern (($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@226@01)))))) r))
  :qid |qp.fvfValDef52|)))
(assert (forall ((r $Ref)) (!
  (=
    ($FVF.perm_Ref__Integer_value (as pm@266@01  $FPM) r)
    (+
      (+
        (ite
          (and
            (img@164@01 r)
            (and (<= 0 (inv@163@01 r)) (< (inv@163@01 r) (* M@154@01 N@155@01))))
          (- (/ (to_real 1) (to_real 2)) (pTaken@221@01 r))
          $Perm.No)
        (ite
          (and
            (img@229@01 r)
            (and (<= 0 (inv@228@01 r)) (< (inv@228@01 r) (* M@154@01 N@155@01))))
          (/ (to_real 1) (to_real 4))
          $Perm.No))
      (ite
        (and
          (img@232@01 r)
          (and (<= 0 (inv@231@01 r)) (< (inv@231@01 r) P@157@01)))
        $Perm.Write
        $Perm.No)))
  :pattern (($FVF.perm_Ref__Integer_value (as pm@266@01  $FPM) r))
  :qid |qp.resPrmSumDef53|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@164@01 r)
      (and (<= 0 (inv@163@01 r)) (< (inv@163@01 r) (* M@154@01 N@155@01))))
    (=
      ($FVF.lookup_Ref__Integer_value (as sm@267@01  $FVF<Ref__Integer_value>) r)
      ($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@159@01))))))))) r)))
  :pattern (($FVF.lookup_Ref__Integer_value (as sm@267@01  $FVF<Ref__Integer_value>) r))
  :pattern (($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@159@01))))))))) r))
  :qid |qp.fvfValDef54|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@171@01 r) (and (<= 0 (inv@170@01 r)) (< (inv@170@01 r) P@157@01)))
    (=
      ($FVF.lookup_Ref__Integer_value (as sm@267@01  $FVF<Ref__Integer_value>) r)
      ($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@159@01)))))))))))) r)))
  :pattern (($FVF.lookup_Ref__Integer_value (as sm@267@01  $FVF<Ref__Integer_value>) r))
  :pattern (($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@159@01)))))))))))) r))
  :qid |qp.fvfValDef55|)))
(assert (forall ((r $Ref)) (!
  (=
    ($FVF.perm_Ref__Integer_value (as pm@268@01  $FPM) r)
    (+
      (ite
        (and
          (img@164@01 r)
          (and (<= 0 (inv@163@01 r)) (< (inv@163@01 r) (* M@154@01 N@155@01))))
        (/ (to_real 1) (to_real 2))
        $Perm.No)
      (ite
        (and
          (img@171@01 r)
          (and (<= 0 (inv@170@01 r)) (< (inv@170@01 r) P@157@01)))
        $Perm.Write
        $Perm.No)))
  :pattern (($FVF.perm_Ref__Integer_value (as pm@268@01  $FPM) r))
  :qid |qp.resPrmSumDef56|)))
; Nested auxiliary terms: non-globals (aux)
(assert (forall ((i1@263@01 Int) (j1@264@01 Int)) (!
  (and
    (=>
      (<= 0 i1@263@01)
      (and
        (<= 0 i1@263@01)
        (=>
          (< i1@263@01 M@154@01)
          (and
            (< i1@263@01 M@154@01)
            (or (<= 0 j1@264@01) (not (<= 0 j1@264@01)))))
        (or (< i1@263@01 M@154@01) (not (< i1@263@01 M@154@01)))))
    (or (<= 0 i1@263@01) (not (<= 0 i1@263@01)))
    (=>
      (and
        (<= 0 i1@263@01)
        (and
          (< i1@263@01 M@154@01)
          (and (<= 0 j1@264@01) (< j1@264@01 N@155@01))))
      (and
        (<= 0 i1@263@01)
        (< i1@263@01 M@154@01)
        (<= 0 j1@264@01)
        (< j1@264@01 N@155@01)
        (<= 0 M@154@01)
        (<= 0 N@155@01)
        (Ref__multidim_index_2%precondition ($Snap.combine
          $Snap.unit
          ($Snap.combine
            $Snap.unit
            ($Snap.combine
              $Snap.unit
              ($Snap.combine $Snap.unit ($Snap.combine $Snap.unit $Snap.unit))))) M@154@01 N@155@01 i1@263@01 j1@264@01)))
    (or
      (not
        (and
          (<= 0 i1@263@01)
          (and
            (< i1@263@01 M@154@01)
            (and (<= 0 j1@264@01) (< j1@264@01 N@155@01)))))
      (and
        (<= 0 i1@263@01)
        (and
          (< i1@263@01 M@154@01)
          (and (<= 0 j1@264@01) (< j1@264@01 N@155@01))))))
  
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/third_party/testHistogram.vpr@171@12@171@225-aux|)))
(assert (forall ((i1@263@01 Int) (j1@264@01 Int)) (!
  (=>
    (and
      (<= 0 i1@263@01)
      (and (< i1@263@01 M@154@01) (and (<= 0 j1@264@01) (< j1@264@01 N@155@01))))
    (Ref__multidim_index_2%precondition ($Snap.combine
      $Snap.unit
      ($Snap.combine
        $Snap.unit
        ($Snap.combine
          $Snap.unit
          ($Snap.combine $Snap.unit ($Snap.combine $Snap.unit $Snap.unit))))) M@154@01 N@155@01 i1@263@01 j1@264@01))
  
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/third_party/testHistogram.vpr@171@12@171@225_precondition|)))
(push) ; 3
(assert (not (forall ((i1@263@01 Int) (j1@264@01 Int)) (!
  (=>
    (and
      (=>
        (and
          (<= 0 i1@263@01)
          (and
            (< i1@263@01 M@154@01)
            (and (<= 0 j1@264@01) (< j1@264@01 N@155@01))))
        (Ref__multidim_index_2%precondition ($Snap.combine
          $Snap.unit
          ($Snap.combine
            $Snap.unit
            ($Snap.combine
              $Snap.unit
              ($Snap.combine $Snap.unit ($Snap.combine $Snap.unit $Snap.unit))))) M@154@01 N@155@01 i1@263@01 j1@264@01))
      (and
        (<= 0 i1@263@01)
        (and
          (< i1@263@01 M@154@01)
          (and (<= 0 j1@264@01) (< j1@264@01 N@155@01)))))
    (=
      ($FVF.lookup_Ref__Integer_value (as sm@265@01  $FVF<Ref__Integer_value>) (Seq_index
        matrix@156@01
        (Ref__multidim_index_2 ($Snap.combine
          $Snap.unit
          ($Snap.combine
            $Snap.unit
            ($Snap.combine
              $Snap.unit
              ($Snap.combine $Snap.unit ($Snap.combine $Snap.unit $Snap.unit))))) M@154@01 N@155@01 i1@263@01 j1@264@01)))
      ($FVF.lookup_Ref__Integer_value (as sm@267@01  $FVF<Ref__Integer_value>) (Seq_index
        matrix@156@01
        (Ref__multidim_index_2 ($Snap.combine
          $Snap.unit
          ($Snap.combine
            $Snap.unit
            ($Snap.combine
              $Snap.unit
              ($Snap.combine $Snap.unit ($Snap.combine $Snap.unit $Snap.unit))))) M@154@01 N@155@01 i1@263@01 j1@264@01)))))
  
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/third_party/testHistogram.vpr@171@12@171@225|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(assert (forall ((i1@263@01 Int) (j1@264@01 Int)) (!
  (=>
    (and
      (<= 0 i1@263@01)
      (and (< i1@263@01 M@154@01) (and (<= 0 j1@264@01) (< j1@264@01 N@155@01))))
    (=
      ($FVF.lookup_Ref__Integer_value (as sm@265@01  $FVF<Ref__Integer_value>) (Seq_index
        matrix@156@01
        (Ref__multidim_index_2 ($Snap.combine
          $Snap.unit
          ($Snap.combine
            $Snap.unit
            ($Snap.combine
              $Snap.unit
              ($Snap.combine $Snap.unit ($Snap.combine $Snap.unit $Snap.unit))))) M@154@01 N@155@01 i1@263@01 j1@264@01)))
      ($FVF.lookup_Ref__Integer_value (as sm@267@01  $FVF<Ref__Integer_value>) (Seq_index
        matrix@156@01
        (Ref__multidim_index_2 ($Snap.combine
          $Snap.unit
          ($Snap.combine
            $Snap.unit
            ($Snap.combine
              $Snap.unit
              ($Snap.combine $Snap.unit ($Snap.combine $Snap.unit $Snap.unit))))) M@154@01 N@155@01 i1@263@01 j1@264@01)))))
  
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/third_party/testHistogram.vpr@171@12@171@225|)))
(pop) ; 2
(pop) ; 1
