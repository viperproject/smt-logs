(get-info :version)
; (:version "4.12.1")
; Started: 2024-12-29 14:50:25
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
(declare-fun sum_square ($Snap Int Int Int Int Int Int Seq<$Ref>) Int)
(declare-fun sum_square%limited ($Snap Int Int Int Int Int Int Seq<$Ref>) Int)
(declare-fun sum_square%stateless (Int Int Int Int Int Int Seq<$Ref>) Bool)
(declare-fun sum_square%precondition ($Snap Int Int Int Int Int Int Seq<$Ref>) Bool)
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
(declare-fun inv@40@00 ($Snap Int Int Int Int Int Int Seq<$Ref> $Ref) Int)
(declare-fun img@41@00 ($Snap Int Int Int Int Int Int Seq<$Ref> $Ref) Bool)
(declare-fun $k@45@00 () $Perm)
(declare-fun inv@46@00 ($Snap Int Int Int Int Int Int Seq<$Ref> $Ref) Int)
(declare-fun img@47@00 ($Snap Int Int Int Int Int Int Seq<$Ref> $Ref) Bool)
(declare-fun sm@48@00 ($Snap Int Int Int Int Int Int Seq<$Ref>) $FVF<Ref__Integer_value>)
(declare-fun $k@52@00 () $Perm)
(declare-fun inv@53@00 ($Snap Int Int Int Int Int Int Seq<$Ref> Int $Ref) Int)
(declare-fun img@54@00 ($Snap Int Int Int Int Int Int Seq<$Ref> Int $Ref) Bool)
(declare-fun $k@58@00 () $Perm)
(declare-fun inv@59@00 ($Snap Int Int Int Int Int Int Seq<$Ref> Int $Ref) Int)
(declare-fun img@60@00 ($Snap Int Int Int Int Int Int Seq<$Ref> Int $Ref) Bool)
(declare-fun sm@61@00 ($Snap Int Int Int Int Int Int Seq<$Ref> Int) $FVF<Ref__Integer_value>)
(declare-fun $k@65@00 () $Perm)
(declare-fun inv@66@00 ($Snap Int Int Int Seq<$Ref> $Ref) Int)
(declare-fun img@67@00 ($Snap Int Int Int Seq<$Ref> $Ref) Bool)
(declare-fun $k@71@00 () $Perm)
(declare-fun inv@72@00 ($Snap Int Int Int Seq<$Ref> $Ref) Int)
(declare-fun img@73@00 ($Snap Int Int Int Seq<$Ref> $Ref) Bool)
(declare-fun sm@74@00 ($Snap Int Int Int Seq<$Ref>) $FVF<Ref__Integer_value>)
(declare-fun $k@78@00 () $Perm)
(declare-fun inv@79@00 ($Snap Int Int Seq<$Ref> Int $Ref) Int)
(declare-fun img@80@00 ($Snap Int Int Seq<$Ref> Int $Ref) Bool)
(declare-fun $k@84@00 () $Perm)
(declare-fun inv@85@00 ($Snap Int Int Seq<$Ref> Int $Ref) Int)
(declare-fun img@86@00 ($Snap Int Int Seq<$Ref> Int $Ref) Bool)
(declare-fun sm@87@00 ($Snap Int Int Seq<$Ref> Int) $FVF<Ref__Integer_value>)
(assert (forall ((s@$ $Snap) (i@0@00 Int) (hi@1@00 Int) (ar@2@00 Seq<Int>) (v@3@00 Int)) (!
  (=
    (count_list%limited s@$ i@0@00 hi@1@00 ar@2@00 v@3@00)
    (count_list s@$ i@0@00 hi@1@00 ar@2@00 v@3@00))
  :pattern ((count_list s@$ i@0@00 hi@1@00 ar@2@00 v@3@00))
  :qid |quant-u-8647|)))
(assert (forall ((s@$ $Snap) (i@0@00 Int) (hi@1@00 Int) (ar@2@00 Seq<Int>) (v@3@00 Int)) (!
  (count_list%stateless i@0@00 hi@1@00 ar@2@00 v@3@00)
  :pattern ((count_list%limited s@$ i@0@00 hi@1@00 ar@2@00 v@3@00))
  :qid |quant-u-8648|)))
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
  :qid |quant-u-8659|)))
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
  :qid |quant-u-8660|)))
(assert (forall ((s@$ $Snap) (i@5@00 Int) (hi@6@00 Int) (ar@7@00 Seq<Int>)) (!
  (=
    (sum_list%limited s@$ i@5@00 hi@6@00 ar@7@00)
    (sum_list s@$ i@5@00 hi@6@00 ar@7@00))
  :pattern ((sum_list s@$ i@5@00 hi@6@00 ar@7@00))
  :qid |quant-u-8649|)))
(assert (forall ((s@$ $Snap) (i@5@00 Int) (hi@6@00 Int) (ar@7@00 Seq<Int>)) (!
  (sum_list%stateless i@5@00 hi@6@00 ar@7@00)
  :pattern ((sum_list%limited s@$ i@5@00 hi@6@00 ar@7@00))
  :qid |quant-u-8650|)))
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
  :qid |quant-u-8661|)))
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
  :qid |quant-u-8662|)))
(assert (forall ((s@$ $Snap) (i@9@00 Int) (lo@10@00 Int) (hi@11@00 Int) (step@12@00 Int) (min@13@00 Int) (max@14@00 Int) (ar@15@00 Seq<$Ref>)) (!
  (=
    (sum_square%limited s@$ i@9@00 lo@10@00 hi@11@00 step@12@00 min@13@00 max@14@00 ar@15@00)
    (sum_square s@$ i@9@00 lo@10@00 hi@11@00 step@12@00 min@13@00 max@14@00 ar@15@00))
  :pattern ((sum_square s@$ i@9@00 lo@10@00 hi@11@00 step@12@00 min@13@00 max@14@00 ar@15@00))
  :qid |quant-u-8651|)))
(assert (forall ((s@$ $Snap) (i@9@00 Int) (lo@10@00 Int) (hi@11@00 Int) (step@12@00 Int) (min@13@00 Int) (max@14@00 Int) (ar@15@00 Seq<$Ref>)) (!
  (sum_square%stateless i@9@00 lo@10@00 hi@11@00 step@12@00 min@13@00 max@14@00 ar@15@00)
  :pattern ((sum_square%limited s@$ i@9@00 lo@10@00 hi@11@00 step@12@00 min@13@00 max@14@00 ar@15@00))
  :qid |quant-u-8652|)))
(assert (forall ((s@$ $Snap) (i@9@00 Int) (lo@10@00 Int) (hi@11@00 Int) (step@12@00 Int) (min@13@00 Int) (max@14@00 Int) (ar@15@00 Seq<$Ref>)) (!
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
            (inv@40@00 s@$ i@9@00 lo@10@00 hi@11@00 step@12@00 min@13@00 max@14@00 ar@15@00 (Seq_index
              ar@15@00
              k@38@00))
            k@38@00)
          (img@41@00 s@$ i@9@00 lo@10@00 hi@11@00 step@12@00 min@13@00 max@14@00 ar@15@00 (Seq_index
            ar@15@00
            k@38@00))))
      :pattern ((Seq_index ar@15@00 k@38@00))
      :qid |quant-u-8664|))
    (forall ((r $Ref)) (!
      (=>
        (and
          (img@41@00 s@$ i@9@00 lo@10@00 hi@11@00 step@12@00 min@13@00 max@14@00 ar@15@00 r)
          (and
            (and
              (<=
                min@13@00
                (inv@40@00 s@$ i@9@00 lo@10@00 hi@11@00 step@12@00 min@13@00 max@14@00 ar@15@00 r))
              (and
                (<
                  (inv@40@00 s@$ i@9@00 lo@10@00 hi@11@00 step@12@00 min@13@00 max@14@00 ar@15@00 r)
                  max@14@00)
                (and
                  (<=
                    lo@10@00
                    (mod
                      (inv@40@00 s@$ i@9@00 lo@10@00 hi@11@00 step@12@00 min@13@00 max@14@00 ar@15@00 r)
                      step@12@00))
                  (<
                    (mod
                      (inv@40@00 s@$ i@9@00 lo@10@00 hi@11@00 step@12@00 min@13@00 max@14@00 ar@15@00 r)
                      step@12@00)
                    hi@11@00))))
            (< $Perm.No $k@39@00)))
        (=
          (Seq_index
            ar@15@00
            (inv@40@00 s@$ i@9@00 lo@10@00 hi@11@00 step@12@00 min@13@00 max@14@00 ar@15@00 r))
          r))
      :pattern ((inv@40@00 s@$ i@9@00 lo@10@00 hi@11@00 step@12@00 min@13@00 max@14@00 ar@15@00 r))
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
            (inv@46@00 s@$ i@9@00 lo@10@00 hi@11@00 step@12@00 min@13@00 max@14@00 ar@15@00 (Seq_index
              ar@15@00
              k@44@00))
            k@44@00)
          (img@47@00 s@$ i@9@00 lo@10@00 hi@11@00 step@12@00 min@13@00 max@14@00 ar@15@00 (Seq_index
            ar@15@00
            k@44@00))))
      :pattern ((Seq_index ar@15@00 k@44@00))
      :qid |Ref__Integer_value-invOfFct|))
    (forall ((r $Ref)) (!
      (=>
        (and
          (img@47@00 s@$ i@9@00 lo@10@00 hi@11@00 step@12@00 min@13@00 max@14@00 ar@15@00 r)
          (and
            (and
              (<=
                min@13@00
                (inv@46@00 s@$ i@9@00 lo@10@00 hi@11@00 step@12@00 min@13@00 max@14@00 ar@15@00 r))
              (and
                (<
                  (inv@46@00 s@$ i@9@00 lo@10@00 hi@11@00 step@12@00 min@13@00 max@14@00 ar@15@00 r)
                  max@14@00)
                (and
                  (<=
                    lo@10@00
                    (mod
                      (inv@46@00 s@$ i@9@00 lo@10@00 hi@11@00 step@12@00 min@13@00 max@14@00 ar@15@00 r)
                      step@12@00))
                  (<
                    (mod
                      (inv@46@00 s@$ i@9@00 lo@10@00 hi@11@00 step@12@00 min@13@00 max@14@00 ar@15@00 r)
                      step@12@00)
                    hi@11@00))))
            (< $Perm.No $k@45@00)))
        (=
          (Seq_index
            ar@15@00
            (inv@46@00 s@$ i@9@00 lo@10@00 hi@11@00 step@12@00 min@13@00 max@14@00 ar@15@00 r))
          r))
      :pattern ((inv@46@00 s@$ i@9@00 lo@10@00 hi@11@00 step@12@00 min@13@00 max@14@00 ar@15@00 r))
      :qid |Ref__Integer_value-fctOfInv|))
    (forall ((r $Ref)) (!
      (and
        (=>
          (Set_in r ($FVF.domain_Ref__Integer_value (sm@48@00 s@$ i@9@00 lo@10@00 hi@11@00 step@12@00 min@13@00 max@14@00 ar@15@00)))
          (and
            (and
              (<=
                min@13@00
                (inv@46@00 s@$ i@9@00 lo@10@00 hi@11@00 step@12@00 min@13@00 max@14@00 ar@15@00 r))
              (and
                (<
                  (inv@46@00 s@$ i@9@00 lo@10@00 hi@11@00 step@12@00 min@13@00 max@14@00 ar@15@00 r)
                  max@14@00)
                (and
                  (<=
                    lo@10@00
                    (mod
                      (inv@46@00 s@$ i@9@00 lo@10@00 hi@11@00 step@12@00 min@13@00 max@14@00 ar@15@00 r)
                      step@12@00))
                  (<
                    (mod
                      (inv@46@00 s@$ i@9@00 lo@10@00 hi@11@00 step@12@00 min@13@00 max@14@00 ar@15@00 r)
                      step@12@00)
                    hi@11@00))))
            (< $Perm.No $k@45@00)
            (img@47@00 s@$ i@9@00 lo@10@00 hi@11@00 step@12@00 min@13@00 max@14@00 ar@15@00 r)))
        (=>
          (and
            (and
              (<=
                min@13@00
                (inv@46@00 s@$ i@9@00 lo@10@00 hi@11@00 step@12@00 min@13@00 max@14@00 ar@15@00 r))
              (and
                (<
                  (inv@46@00 s@$ i@9@00 lo@10@00 hi@11@00 step@12@00 min@13@00 max@14@00 ar@15@00 r)
                  max@14@00)
                (and
                  (<=
                    lo@10@00
                    (mod
                      (inv@46@00 s@$ i@9@00 lo@10@00 hi@11@00 step@12@00 min@13@00 max@14@00 ar@15@00 r)
                      step@12@00))
                  (<
                    (mod
                      (inv@46@00 s@$ i@9@00 lo@10@00 hi@11@00 step@12@00 min@13@00 max@14@00 ar@15@00 r)
                      step@12@00)
                    hi@11@00))))
            (< $Perm.No $k@45@00)
            (img@47@00 s@$ i@9@00 lo@10@00 hi@11@00 step@12@00 min@13@00 max@14@00 ar@15@00 r))
          (Set_in r ($FVF.domain_Ref__Integer_value (sm@48@00 s@$ i@9@00 lo@10@00 hi@11@00 step@12@00 min@13@00 max@14@00 ar@15@00)))))
      :pattern ((Set_in r ($FVF.domain_Ref__Integer_value (sm@48@00 s@$ i@9@00 lo@10@00 hi@11@00 step@12@00 min@13@00 max@14@00 ar@15@00))))
      :qid |qp.fvfDomDef1|))
    (forall ((r $Ref)) (!
      (=>
        (and
          (and
            (and
              (<=
                min@13@00
                (inv@46@00 s@$ i@9@00 lo@10@00 hi@11@00 step@12@00 min@13@00 max@14@00 ar@15@00 r))
              (and
                (<
                  (inv@46@00 s@$ i@9@00 lo@10@00 hi@11@00 step@12@00 min@13@00 max@14@00 ar@15@00 r)
                  max@14@00)
                (and
                  (<=
                    lo@10@00
                    (mod
                      (inv@46@00 s@$ i@9@00 lo@10@00 hi@11@00 step@12@00 min@13@00 max@14@00 ar@15@00 r)
                      step@12@00))
                  (<
                    (mod
                      (inv@46@00 s@$ i@9@00 lo@10@00 hi@11@00 step@12@00 min@13@00 max@14@00 ar@15@00 r)
                      step@12@00)
                    hi@11@00))))
            (< $Perm.No $k@45@00)
            (img@47@00 s@$ i@9@00 lo@10@00 hi@11@00 step@12@00 min@13@00 max@14@00 ar@15@00 r))
          (ite
            (and
              (img@41@00 s@$ i@9@00 lo@10@00 hi@11@00 step@12@00 min@13@00 max@14@00 ar@15@00 r)
              (and
                (<=
                  min@13@00
                  (inv@40@00 s@$ i@9@00 lo@10@00 hi@11@00 step@12@00 min@13@00 max@14@00 ar@15@00 r))
                (and
                  (<
                    (inv@40@00 s@$ i@9@00 lo@10@00 hi@11@00 step@12@00 min@13@00 max@14@00 ar@15@00 r)
                    max@14@00)
                  (and
                    (<=
                      lo@10@00
                      (mod
                        (inv@40@00 s@$ i@9@00 lo@10@00 hi@11@00 step@12@00 min@13@00 max@14@00 ar@15@00 r)
                        step@12@00))
                    (<
                      (mod
                        (inv@40@00 s@$ i@9@00 lo@10@00 hi@11@00 step@12@00 min@13@00 max@14@00 ar@15@00 r)
                        step@12@00)
                      hi@11@00)))))
            (< $Perm.No $k@39@00)
            false))
        (=
          ($FVF.lookup_Ref__Integer_value (sm@48@00 s@$ i@9@00 lo@10@00 hi@11@00 step@12@00 min@13@00 max@14@00 ar@15@00) r)
          ($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second s@$)))))))))) r)))
      :pattern (($FVF.lookup_Ref__Integer_value (sm@48@00 s@$ i@9@00 lo@10@00 hi@11@00 step@12@00 min@13@00 max@14@00 ar@15@00) r))
      :pattern (($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second s@$)))))))))) r))
      :qid |qp.fvfValDef0|))
    ($Perm.isReadVar $k@39@00)
    ($Perm.isReadVar $k@45@00)
    (=>
      (sum_square%precondition s@$ i@9@00 lo@10@00 hi@11@00 step@12@00 min@13@00 max@14@00 ar@15@00)
      (=
        (sum_square s@$ i@9@00 lo@10@00 hi@11@00 step@12@00 min@13@00 max@14@00 ar@15@00)
        (ite
          (< i@9@00 max@14@00)
          (+
            (ite
              (and
                (<= lo@10@00 (mod i@9@00 step@12@00))
                (< (mod i@9@00 step@12@00) hi@11@00))
              ($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second s@$)))))))))) (Seq_index
                ar@15@00
                i@9@00))
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
                              ($SortWrappers.$FVF<Ref__Integer_value>To$Snap (sm@48@00 s@$ i@9@00 lo@10@00 hi@11@00 step@12@00 min@13@00 max@14@00 ar@15@00))))))))))) (+
              i@9@00
              1) lo@10@00 hi@11@00 step@12@00 min@13@00 max@14@00 ar@15@00))
          0))))
  :pattern ((sum_square s@$ i@9@00 lo@10@00 hi@11@00 step@12@00 min@13@00 max@14@00 ar@15@00))
  :qid |quant-u-8667|)))
(assert (forall ((s@$ $Snap) (i@9@00 Int) (lo@10@00 Int) (hi@11@00 Int) (step@12@00 Int) (min@13@00 Int) (max@14@00 Int) (ar@15@00 Seq<$Ref>)) (!
  (=>
    (sum_square%precondition s@$ i@9@00 lo@10@00 hi@11@00 step@12@00 min@13@00 max@14@00 ar@15@00)
    (ite
      (< i@9@00 max@14@00)
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
                        ($SortWrappers.$FVF<Ref__Integer_value>To$Snap (sm@48@00 s@$ i@9@00 lo@10@00 hi@11@00 step@12@00 min@13@00 max@14@00 ar@15@00))))))))))) (+
        i@9@00
        1) lo@10@00 hi@11@00 step@12@00 min@13@00 max@14@00 ar@15@00)
      true))
  :pattern ((sum_square s@$ i@9@00 lo@10@00 hi@11@00 step@12@00 min@13@00 max@14@00 ar@15@00))
  :qid |quant-u-8668|)))
(assert (forall ((s@$ $Snap) (i@17@00 Int) (lo@18@00 Int) (hi@19@00 Int) (step@20@00 Int) (min@21@00 Int) (max@22@00 Int) (ar@23@00 Seq<$Ref>) (v@24@00 Int)) (!
  (=
    (count_square%limited s@$ i@17@00 lo@18@00 hi@19@00 step@20@00 min@21@00 max@22@00 ar@23@00 v@24@00)
    (count_square s@$ i@17@00 lo@18@00 hi@19@00 step@20@00 min@21@00 max@22@00 ar@23@00 v@24@00))
  :pattern ((count_square s@$ i@17@00 lo@18@00 hi@19@00 step@20@00 min@21@00 max@22@00 ar@23@00 v@24@00))
  :qid |quant-u-8653|)))
(assert (forall ((s@$ $Snap) (i@17@00 Int) (lo@18@00 Int) (hi@19@00 Int) (step@20@00 Int) (min@21@00 Int) (max@22@00 Int) (ar@23@00 Seq<$Ref>) (v@24@00 Int)) (!
  (count_square%stateless i@17@00 lo@18@00 hi@19@00 step@20@00 min@21@00 max@22@00 ar@23@00 v@24@00)
  :pattern ((count_square%limited s@$ i@17@00 lo@18@00 hi@19@00 step@20@00 min@21@00 max@22@00 ar@23@00 v@24@00))
  :qid |quant-u-8654|)))
(assert (forall ((s@$ $Snap) (i@17@00 Int) (lo@18@00 Int) (hi@19@00 Int) (step@20@00 Int) (min@21@00 Int) (max@22@00 Int) (ar@23@00 Seq<$Ref>) (v@24@00 Int)) (!
  (and
    (forall ((k@51@00 Int)) (!
      (=>
        (and
          (and
            (<= min@21@00 k@51@00)
            (and
              (< k@51@00 max@22@00)
              (and
                (<= lo@18@00 (mod k@51@00 step@20@00))
                (< (mod k@51@00 step@20@00) hi@19@00))))
          (< $Perm.No $k@52@00))
        (and
          (=
            (inv@53@00 s@$ i@17@00 lo@18@00 hi@19@00 step@20@00 min@21@00 max@22@00 ar@23@00 v@24@00 (Seq_index
              ar@23@00
              k@51@00))
            k@51@00)
          (img@54@00 s@$ i@17@00 lo@18@00 hi@19@00 step@20@00 min@21@00 max@22@00 ar@23@00 v@24@00 (Seq_index
            ar@23@00
            k@51@00))))
      :pattern ((Seq_index ar@23@00 k@51@00))
      :qid |quant-u-8670|))
    (forall ((r $Ref)) (!
      (=>
        (and
          (img@54@00 s@$ i@17@00 lo@18@00 hi@19@00 step@20@00 min@21@00 max@22@00 ar@23@00 v@24@00 r)
          (and
            (and
              (<=
                min@21@00
                (inv@53@00 s@$ i@17@00 lo@18@00 hi@19@00 step@20@00 min@21@00 max@22@00 ar@23@00 v@24@00 r))
              (and
                (<
                  (inv@53@00 s@$ i@17@00 lo@18@00 hi@19@00 step@20@00 min@21@00 max@22@00 ar@23@00 v@24@00 r)
                  max@22@00)
                (and
                  (<=
                    lo@18@00
                    (mod
                      (inv@53@00 s@$ i@17@00 lo@18@00 hi@19@00 step@20@00 min@21@00 max@22@00 ar@23@00 v@24@00 r)
                      step@20@00))
                  (<
                    (mod
                      (inv@53@00 s@$ i@17@00 lo@18@00 hi@19@00 step@20@00 min@21@00 max@22@00 ar@23@00 v@24@00 r)
                      step@20@00)
                    hi@19@00))))
            (< $Perm.No $k@52@00)))
        (=
          (Seq_index
            ar@23@00
            (inv@53@00 s@$ i@17@00 lo@18@00 hi@19@00 step@20@00 min@21@00 max@22@00 ar@23@00 v@24@00 r))
          r))
      :pattern ((inv@53@00 s@$ i@17@00 lo@18@00 hi@19@00 step@20@00 min@21@00 max@22@00 ar@23@00 v@24@00 r))
      :qid |Ref__Integer_value-fctOfInv|))
    (forall ((k@57@00 Int)) (!
      (=>
        (and
          (and
            (<= min@21@00 k@57@00)
            (and
              (< k@57@00 max@22@00)
              (and
                (<= lo@18@00 (mod k@57@00 step@20@00))
                (< (mod k@57@00 step@20@00) hi@19@00))))
          (< $Perm.No $k@58@00))
        (and
          (=
            (inv@59@00 s@$ i@17@00 lo@18@00 hi@19@00 step@20@00 min@21@00 max@22@00 ar@23@00 v@24@00 (Seq_index
              ar@23@00
              k@57@00))
            k@57@00)
          (img@60@00 s@$ i@17@00 lo@18@00 hi@19@00 step@20@00 min@21@00 max@22@00 ar@23@00 v@24@00 (Seq_index
            ar@23@00
            k@57@00))))
      :pattern ((Seq_index ar@23@00 k@57@00))
      :qid |Ref__Integer_value-invOfFct|))
    (forall ((r $Ref)) (!
      (=>
        (and
          (img@60@00 s@$ i@17@00 lo@18@00 hi@19@00 step@20@00 min@21@00 max@22@00 ar@23@00 v@24@00 r)
          (and
            (and
              (<=
                min@21@00
                (inv@59@00 s@$ i@17@00 lo@18@00 hi@19@00 step@20@00 min@21@00 max@22@00 ar@23@00 v@24@00 r))
              (and
                (<
                  (inv@59@00 s@$ i@17@00 lo@18@00 hi@19@00 step@20@00 min@21@00 max@22@00 ar@23@00 v@24@00 r)
                  max@22@00)
                (and
                  (<=
                    lo@18@00
                    (mod
                      (inv@59@00 s@$ i@17@00 lo@18@00 hi@19@00 step@20@00 min@21@00 max@22@00 ar@23@00 v@24@00 r)
                      step@20@00))
                  (<
                    (mod
                      (inv@59@00 s@$ i@17@00 lo@18@00 hi@19@00 step@20@00 min@21@00 max@22@00 ar@23@00 v@24@00 r)
                      step@20@00)
                    hi@19@00))))
            (< $Perm.No $k@58@00)))
        (=
          (Seq_index
            ar@23@00
            (inv@59@00 s@$ i@17@00 lo@18@00 hi@19@00 step@20@00 min@21@00 max@22@00 ar@23@00 v@24@00 r))
          r))
      :pattern ((inv@59@00 s@$ i@17@00 lo@18@00 hi@19@00 step@20@00 min@21@00 max@22@00 ar@23@00 v@24@00 r))
      :qid |Ref__Integer_value-fctOfInv|))
    (forall ((r $Ref)) (!
      (and
        (=>
          (Set_in r ($FVF.domain_Ref__Integer_value (sm@61@00 s@$ i@17@00 lo@18@00 hi@19@00 step@20@00 min@21@00 max@22@00 ar@23@00 v@24@00)))
          (and
            (and
              (<=
                min@21@00
                (inv@59@00 s@$ i@17@00 lo@18@00 hi@19@00 step@20@00 min@21@00 max@22@00 ar@23@00 v@24@00 r))
              (and
                (<
                  (inv@59@00 s@$ i@17@00 lo@18@00 hi@19@00 step@20@00 min@21@00 max@22@00 ar@23@00 v@24@00 r)
                  max@22@00)
                (and
                  (<=
                    lo@18@00
                    (mod
                      (inv@59@00 s@$ i@17@00 lo@18@00 hi@19@00 step@20@00 min@21@00 max@22@00 ar@23@00 v@24@00 r)
                      step@20@00))
                  (<
                    (mod
                      (inv@59@00 s@$ i@17@00 lo@18@00 hi@19@00 step@20@00 min@21@00 max@22@00 ar@23@00 v@24@00 r)
                      step@20@00)
                    hi@19@00))))
            (< $Perm.No $k@58@00)
            (img@60@00 s@$ i@17@00 lo@18@00 hi@19@00 step@20@00 min@21@00 max@22@00 ar@23@00 v@24@00 r)))
        (=>
          (and
            (and
              (<=
                min@21@00
                (inv@59@00 s@$ i@17@00 lo@18@00 hi@19@00 step@20@00 min@21@00 max@22@00 ar@23@00 v@24@00 r))
              (and
                (<
                  (inv@59@00 s@$ i@17@00 lo@18@00 hi@19@00 step@20@00 min@21@00 max@22@00 ar@23@00 v@24@00 r)
                  max@22@00)
                (and
                  (<=
                    lo@18@00
                    (mod
                      (inv@59@00 s@$ i@17@00 lo@18@00 hi@19@00 step@20@00 min@21@00 max@22@00 ar@23@00 v@24@00 r)
                      step@20@00))
                  (<
                    (mod
                      (inv@59@00 s@$ i@17@00 lo@18@00 hi@19@00 step@20@00 min@21@00 max@22@00 ar@23@00 v@24@00 r)
                      step@20@00)
                    hi@19@00))))
            (< $Perm.No $k@58@00)
            (img@60@00 s@$ i@17@00 lo@18@00 hi@19@00 step@20@00 min@21@00 max@22@00 ar@23@00 v@24@00 r))
          (Set_in r ($FVF.domain_Ref__Integer_value (sm@61@00 s@$ i@17@00 lo@18@00 hi@19@00 step@20@00 min@21@00 max@22@00 ar@23@00 v@24@00)))))
      :pattern ((Set_in r ($FVF.domain_Ref__Integer_value (sm@61@00 s@$ i@17@00 lo@18@00 hi@19@00 step@20@00 min@21@00 max@22@00 ar@23@00 v@24@00))))
      :qid |qp.fvfDomDef3|))
    (forall ((r $Ref)) (!
      (=>
        (and
          (and
            (and
              (<=
                min@21@00
                (inv@59@00 s@$ i@17@00 lo@18@00 hi@19@00 step@20@00 min@21@00 max@22@00 ar@23@00 v@24@00 r))
              (and
                (<
                  (inv@59@00 s@$ i@17@00 lo@18@00 hi@19@00 step@20@00 min@21@00 max@22@00 ar@23@00 v@24@00 r)
                  max@22@00)
                (and
                  (<=
                    lo@18@00
                    (mod
                      (inv@59@00 s@$ i@17@00 lo@18@00 hi@19@00 step@20@00 min@21@00 max@22@00 ar@23@00 v@24@00 r)
                      step@20@00))
                  (<
                    (mod
                      (inv@59@00 s@$ i@17@00 lo@18@00 hi@19@00 step@20@00 min@21@00 max@22@00 ar@23@00 v@24@00 r)
                      step@20@00)
                    hi@19@00))))
            (< $Perm.No $k@58@00)
            (img@60@00 s@$ i@17@00 lo@18@00 hi@19@00 step@20@00 min@21@00 max@22@00 ar@23@00 v@24@00 r))
          (ite
            (and
              (img@54@00 s@$ i@17@00 lo@18@00 hi@19@00 step@20@00 min@21@00 max@22@00 ar@23@00 v@24@00 r)
              (and
                (<=
                  min@21@00
                  (inv@53@00 s@$ i@17@00 lo@18@00 hi@19@00 step@20@00 min@21@00 max@22@00 ar@23@00 v@24@00 r))
                (and
                  (<
                    (inv@53@00 s@$ i@17@00 lo@18@00 hi@19@00 step@20@00 min@21@00 max@22@00 ar@23@00 v@24@00 r)
                    max@22@00)
                  (and
                    (<=
                      lo@18@00
                      (mod
                        (inv@53@00 s@$ i@17@00 lo@18@00 hi@19@00 step@20@00 min@21@00 max@22@00 ar@23@00 v@24@00 r)
                        step@20@00))
                    (<
                      (mod
                        (inv@53@00 s@$ i@17@00 lo@18@00 hi@19@00 step@20@00 min@21@00 max@22@00 ar@23@00 v@24@00 r)
                        step@20@00)
                      hi@19@00)))))
            (< $Perm.No $k@52@00)
            false))
        (=
          ($FVF.lookup_Ref__Integer_value (sm@61@00 s@$ i@17@00 lo@18@00 hi@19@00 step@20@00 min@21@00 max@22@00 ar@23@00 v@24@00) r)
          ($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second s@$)))))))))) r)))
      :pattern (($FVF.lookup_Ref__Integer_value (sm@61@00 s@$ i@17@00 lo@18@00 hi@19@00 step@20@00 min@21@00 max@22@00 ar@23@00 v@24@00) r))
      :pattern (($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second s@$)))))))))) r))
      :qid |qp.fvfValDef2|))
    ($Perm.isReadVar $k@52@00)
    ($Perm.isReadVar $k@58@00)
    (=>
      (count_square%precondition s@$ i@17@00 lo@18@00 hi@19@00 step@20@00 min@21@00 max@22@00 ar@23@00 v@24@00)
      (=
        (count_square s@$ i@17@00 lo@18@00 hi@19@00 step@20@00 min@21@00 max@22@00 ar@23@00 v@24@00)
        (ite
          (< i@17@00 max@22@00)
          (+
            (ite
              (and
                (<= lo@18@00 (mod i@17@00 step@20@00))
                (and
                  (< (mod i@17@00 step@20@00) hi@19@00)
                  (=
                    ($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second s@$)))))))))) (Seq_index
                      ar@23@00
                      i@17@00))
                    v@24@00)))
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
                              ($SortWrappers.$FVF<Ref__Integer_value>To$Snap (sm@61@00 s@$ i@17@00 lo@18@00 hi@19@00 step@20@00 min@21@00 max@22@00 ar@23@00 v@24@00))))))))))) (+
              i@17@00
              1) lo@18@00 hi@19@00 step@20@00 min@21@00 max@22@00 ar@23@00 v@24@00))
          0))))
  :pattern ((count_square s@$ i@17@00 lo@18@00 hi@19@00 step@20@00 min@21@00 max@22@00 ar@23@00 v@24@00))
  :qid |quant-u-8673|)))
(assert (forall ((s@$ $Snap) (i@17@00 Int) (lo@18@00 Int) (hi@19@00 Int) (step@20@00 Int) (min@21@00 Int) (max@22@00 Int) (ar@23@00 Seq<$Ref>) (v@24@00 Int)) (!
  (=>
    (count_square%precondition s@$ i@17@00 lo@18@00 hi@19@00 step@20@00 min@21@00 max@22@00 ar@23@00 v@24@00)
    (ite
      (< i@17@00 max@22@00)
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
                        ($SortWrappers.$FVF<Ref__Integer_value>To$Snap (sm@61@00 s@$ i@17@00 lo@18@00 hi@19@00 step@20@00 min@21@00 max@22@00 ar@23@00 v@24@00))))))))))) (+
        i@17@00
        1) lo@18@00 hi@19@00 step@20@00 min@21@00 max@22@00 ar@23@00 v@24@00)
      true))
  :pattern ((count_square s@$ i@17@00 lo@18@00 hi@19@00 step@20@00 min@21@00 max@22@00 ar@23@00 v@24@00))
  :qid |quant-u-8674|)))
(assert (forall ((s@$ $Snap) (i@26@00 Int) (lo@27@00 Int) (hi@28@00 Int) (ar@29@00 Seq<$Ref>)) (!
  (=
    (sum_array%limited s@$ i@26@00 lo@27@00 hi@28@00 ar@29@00)
    (sum_array s@$ i@26@00 lo@27@00 hi@28@00 ar@29@00))
  :pattern ((sum_array s@$ i@26@00 lo@27@00 hi@28@00 ar@29@00))
  :qid |quant-u-8655|)))
(assert (forall ((s@$ $Snap) (i@26@00 Int) (lo@27@00 Int) (hi@28@00 Int) (ar@29@00 Seq<$Ref>)) (!
  (sum_array%stateless i@26@00 lo@27@00 hi@28@00 ar@29@00)
  :pattern ((sum_array%limited s@$ i@26@00 lo@27@00 hi@28@00 ar@29@00))
  :qid |quant-u-8656|)))
(assert (forall ((s@$ $Snap) (i@26@00 Int) (lo@27@00 Int) (hi@28@00 Int) (ar@29@00 Seq<$Ref>)) (!
  (and
    (forall ((k@64@00 Int)) (!
      (=>
        (and
          (and (<= lo@27@00 k@64@00) (< k@64@00 hi@28@00))
          (< $Perm.No $k@65@00))
        (and
          (=
            (inv@66@00 s@$ i@26@00 lo@27@00 hi@28@00 ar@29@00 (Seq_index
              ar@29@00
              k@64@00))
            k@64@00)
          (img@67@00 s@$ i@26@00 lo@27@00 hi@28@00 ar@29@00 (Seq_index
            ar@29@00
            k@64@00))))
      :pattern ((Seq_index ar@29@00 k@64@00))
      :qid |quant-u-8676|))
    (forall ((r $Ref)) (!
      (=>
        (and
          (img@67@00 s@$ i@26@00 lo@27@00 hi@28@00 ar@29@00 r)
          (and
            (and
              (<= lo@27@00 (inv@66@00 s@$ i@26@00 lo@27@00 hi@28@00 ar@29@00 r))
              (< (inv@66@00 s@$ i@26@00 lo@27@00 hi@28@00 ar@29@00 r) hi@28@00))
            (< $Perm.No $k@65@00)))
        (=
          (Seq_index
            ar@29@00
            (inv@66@00 s@$ i@26@00 lo@27@00 hi@28@00 ar@29@00 r))
          r))
      :pattern ((inv@66@00 s@$ i@26@00 lo@27@00 hi@28@00 ar@29@00 r))
      :qid |Ref__Integer_value-fctOfInv|))
    (forall ((k@70@00 Int)) (!
      (=>
        (and
          (and (<= lo@27@00 k@70@00) (< k@70@00 hi@28@00))
          (< $Perm.No $k@71@00))
        (and
          (=
            (inv@72@00 s@$ i@26@00 lo@27@00 hi@28@00 ar@29@00 (Seq_index
              ar@29@00
              k@70@00))
            k@70@00)
          (img@73@00 s@$ i@26@00 lo@27@00 hi@28@00 ar@29@00 (Seq_index
            ar@29@00
            k@70@00))))
      :pattern ((Seq_index ar@29@00 k@70@00))
      :qid |Ref__Integer_value-invOfFct|))
    (forall ((r $Ref)) (!
      (=>
        (and
          (img@73@00 s@$ i@26@00 lo@27@00 hi@28@00 ar@29@00 r)
          (and
            (and
              (<= lo@27@00 (inv@72@00 s@$ i@26@00 lo@27@00 hi@28@00 ar@29@00 r))
              (< (inv@72@00 s@$ i@26@00 lo@27@00 hi@28@00 ar@29@00 r) hi@28@00))
            (< $Perm.No $k@71@00)))
        (=
          (Seq_index
            ar@29@00
            (inv@72@00 s@$ i@26@00 lo@27@00 hi@28@00 ar@29@00 r))
          r))
      :pattern ((inv@72@00 s@$ i@26@00 lo@27@00 hi@28@00 ar@29@00 r))
      :qid |Ref__Integer_value-fctOfInv|))
    (forall ((r $Ref)) (!
      (and
        (=>
          (Set_in r ($FVF.domain_Ref__Integer_value (sm@74@00 s@$ i@26@00 lo@27@00 hi@28@00 ar@29@00)))
          (and
            (and
              (<= lo@27@00 (inv@72@00 s@$ i@26@00 lo@27@00 hi@28@00 ar@29@00 r))
              (< (inv@72@00 s@$ i@26@00 lo@27@00 hi@28@00 ar@29@00 r) hi@28@00))
            (< $Perm.No $k@71@00)
            (img@73@00 s@$ i@26@00 lo@27@00 hi@28@00 ar@29@00 r)))
        (=>
          (and
            (and
              (<= lo@27@00 (inv@72@00 s@$ i@26@00 lo@27@00 hi@28@00 ar@29@00 r))
              (< (inv@72@00 s@$ i@26@00 lo@27@00 hi@28@00 ar@29@00 r) hi@28@00))
            (< $Perm.No $k@71@00)
            (img@73@00 s@$ i@26@00 lo@27@00 hi@28@00 ar@29@00 r))
          (Set_in r ($FVF.domain_Ref__Integer_value (sm@74@00 s@$ i@26@00 lo@27@00 hi@28@00 ar@29@00)))))
      :pattern ((Set_in r ($FVF.domain_Ref__Integer_value (sm@74@00 s@$ i@26@00 lo@27@00 hi@28@00 ar@29@00))))
      :qid |qp.fvfDomDef5|))
    (forall ((r $Ref)) (!
      (=>
        (and
          (and
            (and
              (<= lo@27@00 (inv@72@00 s@$ i@26@00 lo@27@00 hi@28@00 ar@29@00 r))
              (< (inv@72@00 s@$ i@26@00 lo@27@00 hi@28@00 ar@29@00 r) hi@28@00))
            (< $Perm.No $k@71@00)
            (img@73@00 s@$ i@26@00 lo@27@00 hi@28@00 ar@29@00 r))
          (ite
            (and
              (img@67@00 s@$ i@26@00 lo@27@00 hi@28@00 ar@29@00 r)
              (and
                (<=
                  lo@27@00
                  (inv@66@00 s@$ i@26@00 lo@27@00 hi@28@00 ar@29@00 r))
                (< (inv@66@00 s@$ i@26@00 lo@27@00 hi@28@00 ar@29@00 r) hi@28@00)))
            (< $Perm.No $k@65@00)
            false))
        (=
          ($FVF.lookup_Ref__Integer_value (sm@74@00 s@$ i@26@00 lo@27@00 hi@28@00 ar@29@00) r)
          ($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second s@$)))))) r)))
      :pattern (($FVF.lookup_Ref__Integer_value (sm@74@00 s@$ i@26@00 lo@27@00 hi@28@00 ar@29@00) r))
      :pattern (($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second s@$)))))) r))
      :qid |qp.fvfValDef4|))
    ($Perm.isReadVar $k@65@00)
    ($Perm.isReadVar $k@71@00)
    (=>
      (sum_array%precondition s@$ i@26@00 lo@27@00 hi@28@00 ar@29@00)
      (=
        (sum_array s@$ i@26@00 lo@27@00 hi@28@00 ar@29@00)
        (ite
          (< i@26@00 hi@28@00)
          (+
            ($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second s@$)))))) (Seq_index
              ar@29@00
              i@26@00))
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
                      ($SortWrappers.$FVF<Ref__Integer_value>To$Snap (sm@74@00 s@$ i@26@00 lo@27@00 hi@28@00 ar@29@00))))))) (+
              i@26@00
              1) lo@27@00 hi@28@00 ar@29@00))
          0))))
  :pattern ((sum_array s@$ i@26@00 lo@27@00 hi@28@00 ar@29@00))
  :qid |quant-u-8679|)))
(assert (forall ((s@$ $Snap) (i@26@00 Int) (lo@27@00 Int) (hi@28@00 Int) (ar@29@00 Seq<$Ref>)) (!
  (=>
    (sum_array%precondition s@$ i@26@00 lo@27@00 hi@28@00 ar@29@00)
    (ite
      (< i@26@00 hi@28@00)
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
                ($SortWrappers.$FVF<Ref__Integer_value>To$Snap (sm@74@00 s@$ i@26@00 lo@27@00 hi@28@00 ar@29@00))))))) (+
        i@26@00
        1) lo@27@00 hi@28@00 ar@29@00)
      true))
  :pattern ((sum_array s@$ i@26@00 lo@27@00 hi@28@00 ar@29@00))
  :qid |quant-u-8680|)))
(assert (forall ((s@$ $Snap) (i@31@00 Int) (hi@32@00 Int) (ar@33@00 Seq<$Ref>) (v@34@00 Int)) (!
  (=
    (count_array%limited s@$ i@31@00 hi@32@00 ar@33@00 v@34@00)
    (count_array s@$ i@31@00 hi@32@00 ar@33@00 v@34@00))
  :pattern ((count_array s@$ i@31@00 hi@32@00 ar@33@00 v@34@00))
  :qid |quant-u-8657|)))
(assert (forall ((s@$ $Snap) (i@31@00 Int) (hi@32@00 Int) (ar@33@00 Seq<$Ref>) (v@34@00 Int)) (!
  (count_array%stateless i@31@00 hi@32@00 ar@33@00 v@34@00)
  :pattern ((count_array%limited s@$ i@31@00 hi@32@00 ar@33@00 v@34@00))
  :qid |quant-u-8658|)))
(assert (forall ((s@$ $Snap) (i@31@00 Int) (hi@32@00 Int) (ar@33@00 Seq<$Ref>) (v@34@00 Int)) (!
  (and
    (forall ((k@77@00 Int)) (!
      (=>
        (and (and (<= 0 k@77@00) (< k@77@00 hi@32@00)) (< $Perm.No $k@78@00))
        (and
          (=
            (inv@79@00 s@$ i@31@00 hi@32@00 ar@33@00 v@34@00 (Seq_index
              ar@33@00
              k@77@00))
            k@77@00)
          (img@80@00 s@$ i@31@00 hi@32@00 ar@33@00 v@34@00 (Seq_index
            ar@33@00
            k@77@00))))
      :pattern ((Seq_index ar@33@00 k@77@00))
      :qid |quant-u-8682|))
    (forall ((r $Ref)) (!
      (=>
        (and
          (img@80@00 s@$ i@31@00 hi@32@00 ar@33@00 v@34@00 r)
          (and
            (and
              (<= 0 (inv@79@00 s@$ i@31@00 hi@32@00 ar@33@00 v@34@00 r))
              (< (inv@79@00 s@$ i@31@00 hi@32@00 ar@33@00 v@34@00 r) hi@32@00))
            (< $Perm.No $k@78@00)))
        (=
          (Seq_index
            ar@33@00
            (inv@79@00 s@$ i@31@00 hi@32@00 ar@33@00 v@34@00 r))
          r))
      :pattern ((inv@79@00 s@$ i@31@00 hi@32@00 ar@33@00 v@34@00 r))
      :qid |Ref__Integer_value-fctOfInv|))
    (forall ((k@83@00 Int)) (!
      (=>
        (and (and (<= 0 k@83@00) (< k@83@00 hi@32@00)) (< $Perm.No $k@84@00))
        (and
          (=
            (inv@85@00 s@$ i@31@00 hi@32@00 ar@33@00 v@34@00 (Seq_index
              ar@33@00
              k@83@00))
            k@83@00)
          (img@86@00 s@$ i@31@00 hi@32@00 ar@33@00 v@34@00 (Seq_index
            ar@33@00
            k@83@00))))
      :pattern ((Seq_index ar@33@00 k@83@00))
      :qid |Ref__Integer_value-invOfFct|))
    (forall ((r $Ref)) (!
      (=>
        (and
          (img@86@00 s@$ i@31@00 hi@32@00 ar@33@00 v@34@00 r)
          (and
            (and
              (<= 0 (inv@85@00 s@$ i@31@00 hi@32@00 ar@33@00 v@34@00 r))
              (< (inv@85@00 s@$ i@31@00 hi@32@00 ar@33@00 v@34@00 r) hi@32@00))
            (< $Perm.No $k@84@00)))
        (=
          (Seq_index
            ar@33@00
            (inv@85@00 s@$ i@31@00 hi@32@00 ar@33@00 v@34@00 r))
          r))
      :pattern ((inv@85@00 s@$ i@31@00 hi@32@00 ar@33@00 v@34@00 r))
      :qid |Ref__Integer_value-fctOfInv|))
    (forall ((r $Ref)) (!
      (and
        (=>
          (Set_in r ($FVF.domain_Ref__Integer_value (sm@87@00 s@$ i@31@00 hi@32@00 ar@33@00 v@34@00)))
          (and
            (and
              (<= 0 (inv@85@00 s@$ i@31@00 hi@32@00 ar@33@00 v@34@00 r))
              (< (inv@85@00 s@$ i@31@00 hi@32@00 ar@33@00 v@34@00 r) hi@32@00))
            (< $Perm.No $k@84@00)
            (img@86@00 s@$ i@31@00 hi@32@00 ar@33@00 v@34@00 r)))
        (=>
          (and
            (and
              (<= 0 (inv@85@00 s@$ i@31@00 hi@32@00 ar@33@00 v@34@00 r))
              (< (inv@85@00 s@$ i@31@00 hi@32@00 ar@33@00 v@34@00 r) hi@32@00))
            (< $Perm.No $k@84@00)
            (img@86@00 s@$ i@31@00 hi@32@00 ar@33@00 v@34@00 r))
          (Set_in r ($FVF.domain_Ref__Integer_value (sm@87@00 s@$ i@31@00 hi@32@00 ar@33@00 v@34@00)))))
      :pattern ((Set_in r ($FVF.domain_Ref__Integer_value (sm@87@00 s@$ i@31@00 hi@32@00 ar@33@00 v@34@00))))
      :qid |qp.fvfDomDef7|))
    (forall ((r $Ref)) (!
      (=>
        (and
          (and
            (and
              (<= 0 (inv@85@00 s@$ i@31@00 hi@32@00 ar@33@00 v@34@00 r))
              (< (inv@85@00 s@$ i@31@00 hi@32@00 ar@33@00 v@34@00 r) hi@32@00))
            (< $Perm.No $k@84@00)
            (img@86@00 s@$ i@31@00 hi@32@00 ar@33@00 v@34@00 r))
          (ite
            (and
              (img@80@00 s@$ i@31@00 hi@32@00 ar@33@00 v@34@00 r)
              (and
                (<= 0 (inv@79@00 s@$ i@31@00 hi@32@00 ar@33@00 v@34@00 r))
                (< (inv@79@00 s@$ i@31@00 hi@32@00 ar@33@00 v@34@00 r) hi@32@00)))
            (< $Perm.No $k@78@00)
            false))
        (=
          ($FVF.lookup_Ref__Integer_value (sm@87@00 s@$ i@31@00 hi@32@00 ar@33@00 v@34@00) r)
          ($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.second ($Snap.second ($Snap.second ($Snap.second s@$))))) r)))
      :pattern (($FVF.lookup_Ref__Integer_value (sm@87@00 s@$ i@31@00 hi@32@00 ar@33@00 v@34@00) r))
      :pattern (($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.second ($Snap.second ($Snap.second ($Snap.second s@$))))) r))
      :qid |qp.fvfValDef6|))
    ($Perm.isReadVar $k@78@00)
    ($Perm.isReadVar $k@84@00)
    (=>
      (count_array%precondition s@$ i@31@00 hi@32@00 ar@33@00 v@34@00)
      (=
        (count_array s@$ i@31@00 hi@32@00 ar@33@00 v@34@00)
        (ite
          (< i@31@00 hi@32@00)
          (+
            (ite
              (=
                ($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.second ($Snap.second ($Snap.second ($Snap.second s@$))))) (Seq_index
                  ar@33@00
                  i@31@00))
                v@34@00)
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
                    ($SortWrappers.$FVF<Ref__Integer_value>To$Snap (sm@87@00 s@$ i@31@00 hi@32@00 ar@33@00 v@34@00)))))) (+
              i@31@00
              1) hi@32@00 ar@33@00 v@34@00))
          0))))
  :pattern ((count_array s@$ i@31@00 hi@32@00 ar@33@00 v@34@00))
  :qid |quant-u-8685|)))
(assert (forall ((s@$ $Snap) (i@31@00 Int) (hi@32@00 Int) (ar@33@00 Seq<$Ref>) (v@34@00 Int)) (!
  (=>
    (count_array%precondition s@$ i@31@00 hi@32@00 ar@33@00 v@34@00)
    (ite
      (< i@31@00 hi@32@00)
      (count_array%precondition ($Snap.combine
        $Snap.unit
        ($Snap.combine
          $Snap.unit
          ($Snap.combine
            $Snap.unit
            ($Snap.combine
              $Snap.unit
              ($SortWrappers.$FVF<Ref__Integer_value>To$Snap (sm@87@00 s@$ i@31@00 hi@32@00 ar@33@00 v@34@00)))))) (+
        i@31@00
        1) hi@32@00 ar@33@00 v@34@00)
      true))
  :pattern ((count_array s@$ i@31@00 hi@32@00 ar@33@00 v@34@00))
  :qid |quant-u-8686|)))
; End function- and predicate-related preamble
; ------------------------------------------------------------
; ---------- Ref__loop_main_67 ----------
(declare-const diz@0@01 $Ref)
(declare-const current_thread_id@1@01 Int)
(declare-const b@2@01 Seq<$Ref>)
(declare-const len@3@01 Int)
(declare-const a@4@01 Seq<$Ref>)
(declare-const c@5@01 Seq<$Ref>)
(declare-const diz@6@01 $Ref)
(declare-const current_thread_id@7@01 Int)
(declare-const b@8@01 Seq<$Ref>)
(declare-const len@9@01 Int)
(declare-const a@10@01 Seq<$Ref>)
(declare-const c@11@01 Seq<$Ref>)
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
; [eval] 0 < len ==> |a| == len
; [eval] 0 < len
(push) ; 2
(push) ; 3
(set-option :timeout 10)
(assert (not (not (< 0 len@9@01))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (< 0 len@9@01)))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; [then-branch: 0 | 0 < len@9@01 | live]
; [else-branch: 0 | !(0 < len@9@01) | live]
(set-option :timeout 0)
(push) ; 3
; [then-branch: 0 | 0 < len@9@01]
(assert (< 0 len@9@01))
; [eval] |a| == len
; [eval] |a|
(pop) ; 3
(push) ; 3
; [else-branch: 0 | !(0 < len@9@01)]
(assert (not (< 0 len@9@01)))
(pop) ; 3
(pop) ; 2
; Joined path conditions
; Joined path conditions
(assert (or (not (< 0 len@9@01)) (< 0 len@9@01)))
(assert (=> (< 0 len@9@01) (= (Seq_length a@10@01) len@9@01)))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second $t@12@01)))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@12@01))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@12@01)))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@12@01))))
  $Snap.unit))
; [eval] (forall k: Int, j: Int :: { a[k], a[j] } k >= 0 && (k < |a| && (j >= 0 && (j < |a| && k != j))) ==> a[k] != a[j])
(declare-const k@13@01 Int)
(declare-const j@14@01 Int)
(push) ; 2
; [eval] k >= 0 && (k < |a| && (j >= 0 && (j < |a| && k != j))) ==> a[k] != a[j]
; [eval] k >= 0 && (k < |a| && (j >= 0 && (j < |a| && k != j)))
; [eval] k >= 0
(push) ; 3
; [then-branch: 1 | !(k@13@01 >= 0) | live]
; [else-branch: 1 | k@13@01 >= 0 | live]
(push) ; 4
; [then-branch: 1 | !(k@13@01 >= 0)]
(assert (not (>= k@13@01 0)))
(pop) ; 4
(push) ; 4
; [else-branch: 1 | k@13@01 >= 0]
(assert (>= k@13@01 0))
; [eval] k < |a|
; [eval] |a|
(push) ; 5
; [then-branch: 2 | !(k@13@01 < |a@10@01|) | live]
; [else-branch: 2 | k@13@01 < |a@10@01| | live]
(push) ; 6
; [then-branch: 2 | !(k@13@01 < |a@10@01|)]
(assert (not (< k@13@01 (Seq_length a@10@01))))
(pop) ; 6
(push) ; 6
; [else-branch: 2 | k@13@01 < |a@10@01|]
(assert (< k@13@01 (Seq_length a@10@01)))
; [eval] j >= 0
(push) ; 7
; [then-branch: 3 | !(j@14@01 >= 0) | live]
; [else-branch: 3 | j@14@01 >= 0 | live]
(push) ; 8
; [then-branch: 3 | !(j@14@01 >= 0)]
(assert (not (>= j@14@01 0)))
(pop) ; 8
(push) ; 8
; [else-branch: 3 | j@14@01 >= 0]
(assert (>= j@14@01 0))
; [eval] j < |a|
; [eval] |a|
(push) ; 9
; [then-branch: 4 | !(j@14@01 < |a@10@01|) | live]
; [else-branch: 4 | j@14@01 < |a@10@01| | live]
(push) ; 10
; [then-branch: 4 | !(j@14@01 < |a@10@01|)]
(assert (not (< j@14@01 (Seq_length a@10@01))))
(pop) ; 10
(push) ; 10
; [else-branch: 4 | j@14@01 < |a@10@01|]
(assert (< j@14@01 (Seq_length a@10@01)))
; [eval] k != j
(pop) ; 10
(pop) ; 9
; Joined path conditions
; Joined path conditions
(assert (or (< j@14@01 (Seq_length a@10@01)) (not (< j@14@01 (Seq_length a@10@01)))))
(pop) ; 8
(pop) ; 7
; Joined path conditions
; Joined path conditions
(assert (=>
  (>= j@14@01 0)
  (and
    (>= j@14@01 0)
    (or (< j@14@01 (Seq_length a@10@01)) (not (< j@14@01 (Seq_length a@10@01)))))))
(assert (or (>= j@14@01 0) (not (>= j@14@01 0))))
(pop) ; 6
(pop) ; 5
; Joined path conditions
; Joined path conditions
(assert (=>
  (< k@13@01 (Seq_length a@10@01))
  (and
    (< k@13@01 (Seq_length a@10@01))
    (=>
      (>= j@14@01 0)
      (and
        (>= j@14@01 0)
        (or
          (< j@14@01 (Seq_length a@10@01))
          (not (< j@14@01 (Seq_length a@10@01))))))
    (or (>= j@14@01 0) (not (>= j@14@01 0))))))
(assert (or (< k@13@01 (Seq_length a@10@01)) (not (< k@13@01 (Seq_length a@10@01)))))
(pop) ; 4
(pop) ; 3
; Joined path conditions
; Joined path conditions
(assert (=>
  (>= k@13@01 0)
  (and
    (>= k@13@01 0)
    (=>
      (< k@13@01 (Seq_length a@10@01))
      (and
        (< k@13@01 (Seq_length a@10@01))
        (=>
          (>= j@14@01 0)
          (and
            (>= j@14@01 0)
            (or
              (< j@14@01 (Seq_length a@10@01))
              (not (< j@14@01 (Seq_length a@10@01))))))
        (or (>= j@14@01 0) (not (>= j@14@01 0)))))
    (or (< k@13@01 (Seq_length a@10@01)) (not (< k@13@01 (Seq_length a@10@01)))))))
(assert (or (>= k@13@01 0) (not (>= k@13@01 0))))
(push) ; 3
; [then-branch: 5 | k@13@01 >= 0 && k@13@01 < |a@10@01| && j@14@01 >= 0 && j@14@01 < |a@10@01| && k@13@01 != j@14@01 | live]
; [else-branch: 5 | !(k@13@01 >= 0 && k@13@01 < |a@10@01| && j@14@01 >= 0 && j@14@01 < |a@10@01| && k@13@01 != j@14@01) | live]
(push) ; 4
; [then-branch: 5 | k@13@01 >= 0 && k@13@01 < |a@10@01| && j@14@01 >= 0 && j@14@01 < |a@10@01| && k@13@01 != j@14@01]
(assert (and
  (>= k@13@01 0)
  (and
    (< k@13@01 (Seq_length a@10@01))
    (and
      (>= j@14@01 0)
      (and (< j@14@01 (Seq_length a@10@01)) (not (= k@13@01 j@14@01)))))))
; [eval] a[k] != a[j]
; [eval] a[k]
; [eval] a[j]
(pop) ; 4
(push) ; 4
; [else-branch: 5 | !(k@13@01 >= 0 && k@13@01 < |a@10@01| && j@14@01 >= 0 && j@14@01 < |a@10@01| && k@13@01 != j@14@01)]
(assert (not
  (and
    (>= k@13@01 0)
    (and
      (< k@13@01 (Seq_length a@10@01))
      (and
        (>= j@14@01 0)
        (and (< j@14@01 (Seq_length a@10@01)) (not (= k@13@01 j@14@01))))))))
(pop) ; 4
(pop) ; 3
; Joined path conditions
(assert (=>
  (and
    (>= k@13@01 0)
    (and
      (< k@13@01 (Seq_length a@10@01))
      (and
        (>= j@14@01 0)
        (and (< j@14@01 (Seq_length a@10@01)) (not (= k@13@01 j@14@01))))))
  (and
    (>= k@13@01 0)
    (< k@13@01 (Seq_length a@10@01))
    (>= j@14@01 0)
    (< j@14@01 (Seq_length a@10@01))
    (not (= k@13@01 j@14@01)))))
; Joined path conditions
(assert (or
  (not
    (and
      (>= k@13@01 0)
      (and
        (< k@13@01 (Seq_length a@10@01))
        (and
          (>= j@14@01 0)
          (and (< j@14@01 (Seq_length a@10@01)) (not (= k@13@01 j@14@01)))))))
  (and
    (>= k@13@01 0)
    (and
      (< k@13@01 (Seq_length a@10@01))
      (and
        (>= j@14@01 0)
        (and (< j@14@01 (Seq_length a@10@01)) (not (= k@13@01 j@14@01))))))))
(pop) ; 2
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall ((k@13@01 Int) (j@14@01 Int)) (!
  (and
    (=>
      (>= k@13@01 0)
      (and
        (>= k@13@01 0)
        (=>
          (< k@13@01 (Seq_length a@10@01))
          (and
            (< k@13@01 (Seq_length a@10@01))
            (=>
              (>= j@14@01 0)
              (and
                (>= j@14@01 0)
                (or
                  (< j@14@01 (Seq_length a@10@01))
                  (not (< j@14@01 (Seq_length a@10@01))))))
            (or (>= j@14@01 0) (not (>= j@14@01 0)))))
        (or
          (< k@13@01 (Seq_length a@10@01))
          (not (< k@13@01 (Seq_length a@10@01))))))
    (or (>= k@13@01 0) (not (>= k@13@01 0)))
    (=>
      (and
        (>= k@13@01 0)
        (and
          (< k@13@01 (Seq_length a@10@01))
          (and
            (>= j@14@01 0)
            (and (< j@14@01 (Seq_length a@10@01)) (not (= k@13@01 j@14@01))))))
      (and
        (>= k@13@01 0)
        (< k@13@01 (Seq_length a@10@01))
        (>= j@14@01 0)
        (< j@14@01 (Seq_length a@10@01))
        (not (= k@13@01 j@14@01))))
    (or
      (not
        (and
          (>= k@13@01 0)
          (and
            (< k@13@01 (Seq_length a@10@01))
            (and
              (>= j@14@01 0)
              (and (< j@14@01 (Seq_length a@10@01)) (not (= k@13@01 j@14@01)))))))
      (and
        (>= k@13@01 0)
        (and
          (< k@13@01 (Seq_length a@10@01))
          (and
            (>= j@14@01 0)
            (and (< j@14@01 (Seq_length a@10@01)) (not (= k@13@01 j@14@01))))))))
  :pattern ((Seq_index a@10@01 k@13@01) (Seq_index a@10@01 j@14@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/third_party/test_forward_dep_c.vpr@62@12@62@100-aux|)))
(assert (forall ((k@13@01 Int) (j@14@01 Int)) (!
  (=>
    (and
      (>= k@13@01 0)
      (and
        (< k@13@01 (Seq_length a@10@01))
        (and
          (>= j@14@01 0)
          (and (< j@14@01 (Seq_length a@10@01)) (not (= k@13@01 j@14@01))))))
    (not (= (Seq_index a@10@01 k@13@01) (Seq_index a@10@01 j@14@01))))
  :pattern ((Seq_index a@10@01 k@13@01) (Seq_index a@10@01 j@14@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/third_party/test_forward_dep_c.vpr@62@12@62@100|)))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@12@01))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@12@01)))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@12@01))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@12@01)))))
  $Snap.unit))
; [eval] (forall k: Int, j: Int :: { b[k], b[j] } k >= 0 && (k < |b| && (j >= 0 && (j < |b| && k != j))) ==> b[k] != b[j])
(declare-const k@15@01 Int)
(declare-const j@16@01 Int)
(push) ; 2
; [eval] k >= 0 && (k < |b| && (j >= 0 && (j < |b| && k != j))) ==> b[k] != b[j]
; [eval] k >= 0 && (k < |b| && (j >= 0 && (j < |b| && k != j)))
; [eval] k >= 0
(push) ; 3
; [then-branch: 6 | !(k@15@01 >= 0) | live]
; [else-branch: 6 | k@15@01 >= 0 | live]
(push) ; 4
; [then-branch: 6 | !(k@15@01 >= 0)]
(assert (not (>= k@15@01 0)))
(pop) ; 4
(push) ; 4
; [else-branch: 6 | k@15@01 >= 0]
(assert (>= k@15@01 0))
; [eval] k < |b|
; [eval] |b|
(push) ; 5
; [then-branch: 7 | !(k@15@01 < |b@8@01|) | live]
; [else-branch: 7 | k@15@01 < |b@8@01| | live]
(push) ; 6
; [then-branch: 7 | !(k@15@01 < |b@8@01|)]
(assert (not (< k@15@01 (Seq_length b@8@01))))
(pop) ; 6
(push) ; 6
; [else-branch: 7 | k@15@01 < |b@8@01|]
(assert (< k@15@01 (Seq_length b@8@01)))
; [eval] j >= 0
(push) ; 7
; [then-branch: 8 | !(j@16@01 >= 0) | live]
; [else-branch: 8 | j@16@01 >= 0 | live]
(push) ; 8
; [then-branch: 8 | !(j@16@01 >= 0)]
(assert (not (>= j@16@01 0)))
(pop) ; 8
(push) ; 8
; [else-branch: 8 | j@16@01 >= 0]
(assert (>= j@16@01 0))
; [eval] j < |b|
; [eval] |b|
(push) ; 9
; [then-branch: 9 | !(j@16@01 < |b@8@01|) | live]
; [else-branch: 9 | j@16@01 < |b@8@01| | live]
(push) ; 10
; [then-branch: 9 | !(j@16@01 < |b@8@01|)]
(assert (not (< j@16@01 (Seq_length b@8@01))))
(pop) ; 10
(push) ; 10
; [else-branch: 9 | j@16@01 < |b@8@01|]
(assert (< j@16@01 (Seq_length b@8@01)))
; [eval] k != j
(pop) ; 10
(pop) ; 9
; Joined path conditions
; Joined path conditions
(assert (or (< j@16@01 (Seq_length b@8@01)) (not (< j@16@01 (Seq_length b@8@01)))))
(pop) ; 8
(pop) ; 7
; Joined path conditions
; Joined path conditions
(assert (=>
  (>= j@16@01 0)
  (and
    (>= j@16@01 0)
    (or (< j@16@01 (Seq_length b@8@01)) (not (< j@16@01 (Seq_length b@8@01)))))))
(assert (or (>= j@16@01 0) (not (>= j@16@01 0))))
(pop) ; 6
(pop) ; 5
; Joined path conditions
; Joined path conditions
(assert (=>
  (< k@15@01 (Seq_length b@8@01))
  (and
    (< k@15@01 (Seq_length b@8@01))
    (=>
      (>= j@16@01 0)
      (and
        (>= j@16@01 0)
        (or
          (< j@16@01 (Seq_length b@8@01))
          (not (< j@16@01 (Seq_length b@8@01))))))
    (or (>= j@16@01 0) (not (>= j@16@01 0))))))
(assert (or (< k@15@01 (Seq_length b@8@01)) (not (< k@15@01 (Seq_length b@8@01)))))
(pop) ; 4
(pop) ; 3
; Joined path conditions
; Joined path conditions
(assert (=>
  (>= k@15@01 0)
  (and
    (>= k@15@01 0)
    (=>
      (< k@15@01 (Seq_length b@8@01))
      (and
        (< k@15@01 (Seq_length b@8@01))
        (=>
          (>= j@16@01 0)
          (and
            (>= j@16@01 0)
            (or
              (< j@16@01 (Seq_length b@8@01))
              (not (< j@16@01 (Seq_length b@8@01))))))
        (or (>= j@16@01 0) (not (>= j@16@01 0)))))
    (or (< k@15@01 (Seq_length b@8@01)) (not (< k@15@01 (Seq_length b@8@01)))))))
(assert (or (>= k@15@01 0) (not (>= k@15@01 0))))
(push) ; 3
; [then-branch: 10 | k@15@01 >= 0 && k@15@01 < |b@8@01| && j@16@01 >= 0 && j@16@01 < |b@8@01| && k@15@01 != j@16@01 | live]
; [else-branch: 10 | !(k@15@01 >= 0 && k@15@01 < |b@8@01| && j@16@01 >= 0 && j@16@01 < |b@8@01| && k@15@01 != j@16@01) | live]
(push) ; 4
; [then-branch: 10 | k@15@01 >= 0 && k@15@01 < |b@8@01| && j@16@01 >= 0 && j@16@01 < |b@8@01| && k@15@01 != j@16@01]
(assert (and
  (>= k@15@01 0)
  (and
    (< k@15@01 (Seq_length b@8@01))
    (and
      (>= j@16@01 0)
      (and (< j@16@01 (Seq_length b@8@01)) (not (= k@15@01 j@16@01)))))))
; [eval] b[k] != b[j]
; [eval] b[k]
; [eval] b[j]
(pop) ; 4
(push) ; 4
; [else-branch: 10 | !(k@15@01 >= 0 && k@15@01 < |b@8@01| && j@16@01 >= 0 && j@16@01 < |b@8@01| && k@15@01 != j@16@01)]
(assert (not
  (and
    (>= k@15@01 0)
    (and
      (< k@15@01 (Seq_length b@8@01))
      (and
        (>= j@16@01 0)
        (and (< j@16@01 (Seq_length b@8@01)) (not (= k@15@01 j@16@01))))))))
(pop) ; 4
(pop) ; 3
; Joined path conditions
(assert (=>
  (and
    (>= k@15@01 0)
    (and
      (< k@15@01 (Seq_length b@8@01))
      (and
        (>= j@16@01 0)
        (and (< j@16@01 (Seq_length b@8@01)) (not (= k@15@01 j@16@01))))))
  (and
    (>= k@15@01 0)
    (< k@15@01 (Seq_length b@8@01))
    (>= j@16@01 0)
    (< j@16@01 (Seq_length b@8@01))
    (not (= k@15@01 j@16@01)))))
; Joined path conditions
(assert (or
  (not
    (and
      (>= k@15@01 0)
      (and
        (< k@15@01 (Seq_length b@8@01))
        (and
          (>= j@16@01 0)
          (and (< j@16@01 (Seq_length b@8@01)) (not (= k@15@01 j@16@01)))))))
  (and
    (>= k@15@01 0)
    (and
      (< k@15@01 (Seq_length b@8@01))
      (and
        (>= j@16@01 0)
        (and (< j@16@01 (Seq_length b@8@01)) (not (= k@15@01 j@16@01))))))))
(pop) ; 2
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall ((k@15@01 Int) (j@16@01 Int)) (!
  (and
    (=>
      (>= k@15@01 0)
      (and
        (>= k@15@01 0)
        (=>
          (< k@15@01 (Seq_length b@8@01))
          (and
            (< k@15@01 (Seq_length b@8@01))
            (=>
              (>= j@16@01 0)
              (and
                (>= j@16@01 0)
                (or
                  (< j@16@01 (Seq_length b@8@01))
                  (not (< j@16@01 (Seq_length b@8@01))))))
            (or (>= j@16@01 0) (not (>= j@16@01 0)))))
        (or
          (< k@15@01 (Seq_length b@8@01))
          (not (< k@15@01 (Seq_length b@8@01))))))
    (or (>= k@15@01 0) (not (>= k@15@01 0)))
    (=>
      (and
        (>= k@15@01 0)
        (and
          (< k@15@01 (Seq_length b@8@01))
          (and
            (>= j@16@01 0)
            (and (< j@16@01 (Seq_length b@8@01)) (not (= k@15@01 j@16@01))))))
      (and
        (>= k@15@01 0)
        (< k@15@01 (Seq_length b@8@01))
        (>= j@16@01 0)
        (< j@16@01 (Seq_length b@8@01))
        (not (= k@15@01 j@16@01))))
    (or
      (not
        (and
          (>= k@15@01 0)
          (and
            (< k@15@01 (Seq_length b@8@01))
            (and
              (>= j@16@01 0)
              (and (< j@16@01 (Seq_length b@8@01)) (not (= k@15@01 j@16@01)))))))
      (and
        (>= k@15@01 0)
        (and
          (< k@15@01 (Seq_length b@8@01))
          (and
            (>= j@16@01 0)
            (and (< j@16@01 (Seq_length b@8@01)) (not (= k@15@01 j@16@01))))))))
  :pattern ((Seq_index b@8@01 k@15@01) (Seq_index b@8@01 j@16@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/third_party/test_forward_dep_c.vpr@63@12@63@100-aux|)))
(assert (forall ((k@15@01 Int) (j@16@01 Int)) (!
  (=>
    (and
      (>= k@15@01 0)
      (and
        (< k@15@01 (Seq_length b@8@01))
        (and
          (>= j@16@01 0)
          (and (< j@16@01 (Seq_length b@8@01)) (not (= k@15@01 j@16@01))))))
    (not (= (Seq_index b@8@01 k@15@01) (Seq_index b@8@01 j@16@01))))
  :pattern ((Seq_index b@8@01 k@15@01) (Seq_index b@8@01 j@16@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/third_party/test_forward_dep_c.vpr@63@12@63@100|)))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@12@01)))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@12@01))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@12@01)))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@12@01))))))
  $Snap.unit))
; [eval] (forall k: Int, j: Int :: { c[k], c[j] } k >= 0 && (k < |c| && (j >= 0 && (j < |c| && k != j))) ==> c[k] != c[j])
(declare-const k@17@01 Int)
(declare-const j@18@01 Int)
(push) ; 2
; [eval] k >= 0 && (k < |c| && (j >= 0 && (j < |c| && k != j))) ==> c[k] != c[j]
; [eval] k >= 0 && (k < |c| && (j >= 0 && (j < |c| && k != j)))
; [eval] k >= 0
(push) ; 3
; [then-branch: 11 | !(k@17@01 >= 0) | live]
; [else-branch: 11 | k@17@01 >= 0 | live]
(push) ; 4
; [then-branch: 11 | !(k@17@01 >= 0)]
(assert (not (>= k@17@01 0)))
(pop) ; 4
(push) ; 4
; [else-branch: 11 | k@17@01 >= 0]
(assert (>= k@17@01 0))
; [eval] k < |c|
; [eval] |c|
(push) ; 5
; [then-branch: 12 | !(k@17@01 < |c@11@01|) | live]
; [else-branch: 12 | k@17@01 < |c@11@01| | live]
(push) ; 6
; [then-branch: 12 | !(k@17@01 < |c@11@01|)]
(assert (not (< k@17@01 (Seq_length c@11@01))))
(pop) ; 6
(push) ; 6
; [else-branch: 12 | k@17@01 < |c@11@01|]
(assert (< k@17@01 (Seq_length c@11@01)))
; [eval] j >= 0
(push) ; 7
; [then-branch: 13 | !(j@18@01 >= 0) | live]
; [else-branch: 13 | j@18@01 >= 0 | live]
(push) ; 8
; [then-branch: 13 | !(j@18@01 >= 0)]
(assert (not (>= j@18@01 0)))
(pop) ; 8
(push) ; 8
; [else-branch: 13 | j@18@01 >= 0]
(assert (>= j@18@01 0))
; [eval] j < |c|
; [eval] |c|
(push) ; 9
; [then-branch: 14 | !(j@18@01 < |c@11@01|) | live]
; [else-branch: 14 | j@18@01 < |c@11@01| | live]
(push) ; 10
; [then-branch: 14 | !(j@18@01 < |c@11@01|)]
(assert (not (< j@18@01 (Seq_length c@11@01))))
(pop) ; 10
(push) ; 10
; [else-branch: 14 | j@18@01 < |c@11@01|]
(assert (< j@18@01 (Seq_length c@11@01)))
; [eval] k != j
(pop) ; 10
(pop) ; 9
; Joined path conditions
; Joined path conditions
(assert (or (< j@18@01 (Seq_length c@11@01)) (not (< j@18@01 (Seq_length c@11@01)))))
(pop) ; 8
(pop) ; 7
; Joined path conditions
; Joined path conditions
(assert (=>
  (>= j@18@01 0)
  (and
    (>= j@18@01 0)
    (or (< j@18@01 (Seq_length c@11@01)) (not (< j@18@01 (Seq_length c@11@01)))))))
(assert (or (>= j@18@01 0) (not (>= j@18@01 0))))
(pop) ; 6
(pop) ; 5
; Joined path conditions
; Joined path conditions
(assert (=>
  (< k@17@01 (Seq_length c@11@01))
  (and
    (< k@17@01 (Seq_length c@11@01))
    (=>
      (>= j@18@01 0)
      (and
        (>= j@18@01 0)
        (or
          (< j@18@01 (Seq_length c@11@01))
          (not (< j@18@01 (Seq_length c@11@01))))))
    (or (>= j@18@01 0) (not (>= j@18@01 0))))))
(assert (or (< k@17@01 (Seq_length c@11@01)) (not (< k@17@01 (Seq_length c@11@01)))))
(pop) ; 4
(pop) ; 3
; Joined path conditions
; Joined path conditions
(assert (=>
  (>= k@17@01 0)
  (and
    (>= k@17@01 0)
    (=>
      (< k@17@01 (Seq_length c@11@01))
      (and
        (< k@17@01 (Seq_length c@11@01))
        (=>
          (>= j@18@01 0)
          (and
            (>= j@18@01 0)
            (or
              (< j@18@01 (Seq_length c@11@01))
              (not (< j@18@01 (Seq_length c@11@01))))))
        (or (>= j@18@01 0) (not (>= j@18@01 0)))))
    (or (< k@17@01 (Seq_length c@11@01)) (not (< k@17@01 (Seq_length c@11@01)))))))
(assert (or (>= k@17@01 0) (not (>= k@17@01 0))))
(push) ; 3
; [then-branch: 15 | k@17@01 >= 0 && k@17@01 < |c@11@01| && j@18@01 >= 0 && j@18@01 < |c@11@01| && k@17@01 != j@18@01 | live]
; [else-branch: 15 | !(k@17@01 >= 0 && k@17@01 < |c@11@01| && j@18@01 >= 0 && j@18@01 < |c@11@01| && k@17@01 != j@18@01) | live]
(push) ; 4
; [then-branch: 15 | k@17@01 >= 0 && k@17@01 < |c@11@01| && j@18@01 >= 0 && j@18@01 < |c@11@01| && k@17@01 != j@18@01]
(assert (and
  (>= k@17@01 0)
  (and
    (< k@17@01 (Seq_length c@11@01))
    (and
      (>= j@18@01 0)
      (and (< j@18@01 (Seq_length c@11@01)) (not (= k@17@01 j@18@01)))))))
; [eval] c[k] != c[j]
; [eval] c[k]
; [eval] c[j]
(pop) ; 4
(push) ; 4
; [else-branch: 15 | !(k@17@01 >= 0 && k@17@01 < |c@11@01| && j@18@01 >= 0 && j@18@01 < |c@11@01| && k@17@01 != j@18@01)]
(assert (not
  (and
    (>= k@17@01 0)
    (and
      (< k@17@01 (Seq_length c@11@01))
      (and
        (>= j@18@01 0)
        (and (< j@18@01 (Seq_length c@11@01)) (not (= k@17@01 j@18@01))))))))
(pop) ; 4
(pop) ; 3
; Joined path conditions
(assert (=>
  (and
    (>= k@17@01 0)
    (and
      (< k@17@01 (Seq_length c@11@01))
      (and
        (>= j@18@01 0)
        (and (< j@18@01 (Seq_length c@11@01)) (not (= k@17@01 j@18@01))))))
  (and
    (>= k@17@01 0)
    (< k@17@01 (Seq_length c@11@01))
    (>= j@18@01 0)
    (< j@18@01 (Seq_length c@11@01))
    (not (= k@17@01 j@18@01)))))
; Joined path conditions
(assert (or
  (not
    (and
      (>= k@17@01 0)
      (and
        (< k@17@01 (Seq_length c@11@01))
        (and
          (>= j@18@01 0)
          (and (< j@18@01 (Seq_length c@11@01)) (not (= k@17@01 j@18@01)))))))
  (and
    (>= k@17@01 0)
    (and
      (< k@17@01 (Seq_length c@11@01))
      (and
        (>= j@18@01 0)
        (and (< j@18@01 (Seq_length c@11@01)) (not (= k@17@01 j@18@01))))))))
(pop) ; 2
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall ((k@17@01 Int) (j@18@01 Int)) (!
  (and
    (=>
      (>= k@17@01 0)
      (and
        (>= k@17@01 0)
        (=>
          (< k@17@01 (Seq_length c@11@01))
          (and
            (< k@17@01 (Seq_length c@11@01))
            (=>
              (>= j@18@01 0)
              (and
                (>= j@18@01 0)
                (or
                  (< j@18@01 (Seq_length c@11@01))
                  (not (< j@18@01 (Seq_length c@11@01))))))
            (or (>= j@18@01 0) (not (>= j@18@01 0)))))
        (or
          (< k@17@01 (Seq_length c@11@01))
          (not (< k@17@01 (Seq_length c@11@01))))))
    (or (>= k@17@01 0) (not (>= k@17@01 0)))
    (=>
      (and
        (>= k@17@01 0)
        (and
          (< k@17@01 (Seq_length c@11@01))
          (and
            (>= j@18@01 0)
            (and (< j@18@01 (Seq_length c@11@01)) (not (= k@17@01 j@18@01))))))
      (and
        (>= k@17@01 0)
        (< k@17@01 (Seq_length c@11@01))
        (>= j@18@01 0)
        (< j@18@01 (Seq_length c@11@01))
        (not (= k@17@01 j@18@01))))
    (or
      (not
        (and
          (>= k@17@01 0)
          (and
            (< k@17@01 (Seq_length c@11@01))
            (and
              (>= j@18@01 0)
              (and (< j@18@01 (Seq_length c@11@01)) (not (= k@17@01 j@18@01)))))))
      (and
        (>= k@17@01 0)
        (and
          (< k@17@01 (Seq_length c@11@01))
          (and
            (>= j@18@01 0)
            (and (< j@18@01 (Seq_length c@11@01)) (not (= k@17@01 j@18@01))))))))
  :pattern ((Seq_index c@11@01 k@17@01) (Seq_index c@11@01 j@18@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/third_party/test_forward_dep_c.vpr@64@12@64@100-aux|)))
(assert (forall ((k@17@01 Int) (j@18@01 Int)) (!
  (=>
    (and
      (>= k@17@01 0)
      (and
        (< k@17@01 (Seq_length c@11@01))
        (and
          (>= j@18@01 0)
          (and (< j@18@01 (Seq_length c@11@01)) (not (= k@17@01 j@18@01))))))
    (not (= (Seq_index c@11@01 k@17@01) (Seq_index c@11@01 j@18@01))))
  :pattern ((Seq_index c@11@01 k@17@01) (Seq_index c@11@01 j@18@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/third_party/test_forward_dep_c.vpr@64@12@64@100|)))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@12@01))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@12@01)))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@12@01))))))))))
(declare-const i@19@01 Int)
(push) ; 2
; [eval] 0 <= i && i < len
; [eval] 0 <= i
(push) ; 3
; [then-branch: 16 | !(0 <= i@19@01) | live]
; [else-branch: 16 | 0 <= i@19@01 | live]
(push) ; 4
; [then-branch: 16 | !(0 <= i@19@01)]
(assert (not (<= 0 i@19@01)))
(pop) ; 4
(push) ; 4
; [else-branch: 16 | 0 <= i@19@01]
(assert (<= 0 i@19@01))
; [eval] i < len
(pop) ; 4
(pop) ; 3
; Joined path conditions
; Joined path conditions
(assert (or (<= 0 i@19@01) (not (<= 0 i@19@01))))
(assert (and (<= 0 i@19@01) (< i@19@01 len@9@01)))
; [eval] a[i]
(push) ; 3
(assert (not (>= i@19@01 0)))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(push) ; 3
(assert (not (< i@19@01 (Seq_length a@10@01))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(pop) ; 2
(declare-fun inv@20@01 ($Ref) Int)
(declare-fun img@21@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
(assert (forall ((i@19@01 Int)) (!
  (=>
    (and (<= 0 i@19@01) (< i@19@01 len@9@01))
    (or (<= 0 i@19@01) (not (<= 0 i@19@01))))
  :pattern ((Seq_index a@10@01 i@19@01))
  :qid |Ref__Integer_value-aux|)))
; Check receiver injectivity
(push) ; 2
(assert (not (forall ((i1@19@01 Int) (i2@19@01 Int)) (!
  (=>
    (and
      (and (<= 0 i1@19@01) (< i1@19@01 len@9@01))
      (and (<= 0 i2@19@01) (< i2@19@01 len@9@01))
      (= (Seq_index a@10@01 i1@19@01) (Seq_index a@10@01 i2@19@01)))
    (= i1@19@01 i2@19@01))
  
  :qid |Ref__Integer_value-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 2
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((i@19@01 Int)) (!
  (=>
    (and (<= 0 i@19@01) (< i@19@01 len@9@01))
    (and
      (= (inv@20@01 (Seq_index a@10@01 i@19@01)) i@19@01)
      (img@21@01 (Seq_index a@10@01 i@19@01))))
  :pattern ((Seq_index a@10@01 i@19@01))
  :qid |quant-u-8688|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@21@01 r) (and (<= 0 (inv@20@01 r)) (< (inv@20@01 r) len@9@01)))
    (= (Seq_index a@10@01 (inv@20@01 r)) r))
  :pattern ((inv@20@01 r))
  :qid |Ref__Integer_value-fctOfInv|)))
; Permissions are non-negative
; Field permissions are at most one
; Permission implies non-null receiver
(assert (forall ((i@19@01 Int)) (!
  (=>
    (and (<= 0 i@19@01) (< i@19@01 len@9@01))
    (not (= (Seq_index a@10@01 i@19@01) $Ref.null)))
  :pattern ((Seq_index a@10@01 i@19@01))
  :qid |Ref__Integer_value-permImpliesNonNull|)))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@12@01)))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@12@01))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@12@01)))))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@12@01))))))))
  $Snap.unit))
; [eval] 0 < len ==> |b| == len
; [eval] 0 < len
(push) ; 2
(push) ; 3
(set-option :timeout 10)
(assert (not (not (< 0 len@9@01))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (< 0 len@9@01)))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; [then-branch: 17 | 0 < len@9@01 | live]
; [else-branch: 17 | !(0 < len@9@01) | live]
(set-option :timeout 0)
(push) ; 3
; [then-branch: 17 | 0 < len@9@01]
(assert (< 0 len@9@01))
; [eval] |b| == len
; [eval] |b|
(pop) ; 3
(push) ; 3
; [else-branch: 17 | !(0 < len@9@01)]
(assert (not (< 0 len@9@01)))
(pop) ; 3
(pop) ; 2
; Joined path conditions
; Joined path conditions
(assert (=> (< 0 len@9@01) (= (Seq_length b@8@01) len@9@01)))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@12@01))))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@12@01)))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@12@01))))))))))))
(declare-const i@22@01 Int)
(push) ; 2
; [eval] 0 <= i && i < len
; [eval] 0 <= i
(push) ; 3
; [then-branch: 18 | !(0 <= i@22@01) | live]
; [else-branch: 18 | 0 <= i@22@01 | live]
(push) ; 4
; [then-branch: 18 | !(0 <= i@22@01)]
(assert (not (<= 0 i@22@01)))
(pop) ; 4
(push) ; 4
; [else-branch: 18 | 0 <= i@22@01]
(assert (<= 0 i@22@01))
; [eval] i < len
(pop) ; 4
(pop) ; 3
; Joined path conditions
; Joined path conditions
(assert (or (<= 0 i@22@01) (not (<= 0 i@22@01))))
(assert (and (<= 0 i@22@01) (< i@22@01 len@9@01)))
; [eval] b[i]
(push) ; 3
(assert (not (>= i@22@01 0)))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(push) ; 3
(assert (not (< i@22@01 (Seq_length b@8@01))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(pop) ; 2
(declare-fun inv@23@01 ($Ref) Int)
(declare-fun img@24@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
(assert (forall ((i@22@01 Int)) (!
  (=>
    (and (<= 0 i@22@01) (< i@22@01 len@9@01))
    (or (<= 0 i@22@01) (not (<= 0 i@22@01))))
  :pattern ((Seq_index b@8@01 i@22@01))
  :qid |Ref__Integer_value-aux|)))
; Check receiver injectivity
(push) ; 2
(assert (not (forall ((i1@22@01 Int) (i2@22@01 Int)) (!
  (=>
    (and
      (and (<= 0 i1@22@01) (< i1@22@01 len@9@01))
      (and (<= 0 i2@22@01) (< i2@22@01 len@9@01))
      (= (Seq_index b@8@01 i1@22@01) (Seq_index b@8@01 i2@22@01)))
    (= i1@22@01 i2@22@01))
  
  :qid |Ref__Integer_value-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 2
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((i@22@01 Int)) (!
  (=>
    (and (<= 0 i@22@01) (< i@22@01 len@9@01))
    (and
      (= (inv@23@01 (Seq_index b@8@01 i@22@01)) i@22@01)
      (img@24@01 (Seq_index b@8@01 i@22@01))))
  :pattern ((Seq_index b@8@01 i@22@01))
  :qid |quant-u-8690|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@24@01 r) (and (<= 0 (inv@23@01 r)) (< (inv@23@01 r) len@9@01)))
    (= (Seq_index b@8@01 (inv@23@01 r)) r))
  :pattern ((inv@23@01 r))
  :qid |Ref__Integer_value-fctOfInv|)))
; Permissions are non-negative
; Field permissions are at most one
; Permission implies non-null receiver
(assert (forall ((i@22@01 Int)) (!
  (=>
    (and (<= 0 i@22@01) (< i@22@01 len@9@01))
    (not (= (Seq_index b@8@01 i@22@01) $Ref.null)))
  :pattern ((Seq_index b@8@01 i@22@01))
  :qid |Ref__Integer_value-permImpliesNonNull|)))
(push) ; 2
(set-option :timeout 10)
(assert (not (forall ((r $Ref)) (!
  (and
    (= (Seq_index b@8@01 i@22@01) (Seq_index a@10@01 i@19@01))
    (=
      (and (img@24@01 r) (and (<= 0 (inv@23@01 r)) (< (inv@23@01 r) len@9@01)))
      (and (img@21@01 r) (and (<= 0 (inv@20@01 r)) (< (inv@20@01 r) len@9@01)))))
  
  :qid |quant-u-8691|))))
(check-sat)
; unknown
(pop) ; 2
; 0.00s
; (get-info :all-statistics)
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@12@01)))))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@12@01))))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@12@01)))))))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@12@01))))))))))
  $Snap.unit))
; [eval] 0 < len ==> |c| == len
; [eval] 0 < len
(set-option :timeout 0)
(push) ; 2
(push) ; 3
(set-option :timeout 10)
(assert (not (not (< 0 len@9@01))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (< 0 len@9@01)))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; [then-branch: 19 | 0 < len@9@01 | live]
; [else-branch: 19 | !(0 < len@9@01) | live]
(set-option :timeout 0)
(push) ; 3
; [then-branch: 19 | 0 < len@9@01]
(assert (< 0 len@9@01))
; [eval] |c| == len
; [eval] |c|
(pop) ; 3
(push) ; 3
; [else-branch: 19 | !(0 < len@9@01)]
(assert (not (< 0 len@9@01)))
(pop) ; 3
(pop) ; 2
; Joined path conditions
; Joined path conditions
(assert (=> (< 0 len@9@01) (= (Seq_length c@11@01) len@9@01)))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@12@01))))))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@12@01)))))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@12@01))))))))))))))
(declare-const i@25@01 Int)
(push) ; 2
; [eval] 0 <= i && i < len
; [eval] 0 <= i
(push) ; 3
; [then-branch: 20 | !(0 <= i@25@01) | live]
; [else-branch: 20 | 0 <= i@25@01 | live]
(push) ; 4
; [then-branch: 20 | !(0 <= i@25@01)]
(assert (not (<= 0 i@25@01)))
(pop) ; 4
(push) ; 4
; [else-branch: 20 | 0 <= i@25@01]
(assert (<= 0 i@25@01))
; [eval] i < len
(pop) ; 4
(pop) ; 3
; Joined path conditions
; Joined path conditions
(assert (or (<= 0 i@25@01) (not (<= 0 i@25@01))))
(assert (and (<= 0 i@25@01) (< i@25@01 len@9@01)))
; [eval] c[i]
(push) ; 3
(assert (not (>= i@25@01 0)))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(push) ; 3
(assert (not (< i@25@01 (Seq_length c@11@01))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(pop) ; 2
(declare-fun inv@26@01 ($Ref) Int)
(declare-fun img@27@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
(assert (forall ((i@25@01 Int)) (!
  (=>
    (and (<= 0 i@25@01) (< i@25@01 len@9@01))
    (or (<= 0 i@25@01) (not (<= 0 i@25@01))))
  :pattern ((Seq_index c@11@01 i@25@01))
  :qid |Ref__Integer_value-aux|)))
; Check receiver injectivity
(push) ; 2
(assert (not (forall ((i1@25@01 Int) (i2@25@01 Int)) (!
  (=>
    (and
      (and (<= 0 i1@25@01) (< i1@25@01 len@9@01))
      (and (<= 0 i2@25@01) (< i2@25@01 len@9@01))
      (= (Seq_index c@11@01 i1@25@01) (Seq_index c@11@01 i2@25@01)))
    (= i1@25@01 i2@25@01))
  
  :qid |Ref__Integer_value-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 2
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((i@25@01 Int)) (!
  (=>
    (and (<= 0 i@25@01) (< i@25@01 len@9@01))
    (and
      (= (inv@26@01 (Seq_index c@11@01 i@25@01)) i@25@01)
      (img@27@01 (Seq_index c@11@01 i@25@01))))
  :pattern ((Seq_index c@11@01 i@25@01))
  :qid |quant-u-8693|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@27@01 r) (and (<= 0 (inv@26@01 r)) (< (inv@26@01 r) len@9@01)))
    (= (Seq_index c@11@01 (inv@26@01 r)) r))
  :pattern ((inv@26@01 r))
  :qid |Ref__Integer_value-fctOfInv|)))
; Permissions are non-negative
; Field permissions are at most one
; Permission implies non-null receiver
(assert (forall ((i@25@01 Int)) (!
  (=>
    (and (<= 0 i@25@01) (< i@25@01 len@9@01))
    (not (= (Seq_index c@11@01 i@25@01) $Ref.null)))
  :pattern ((Seq_index c@11@01 i@25@01))
  :qid |Ref__Integer_value-permImpliesNonNull|)))
(push) ; 2
(set-option :timeout 10)
(assert (not (forall ((r $Ref)) (!
  (and
    (= (Seq_index c@11@01 i@25@01) (Seq_index b@8@01 i@22@01))
    (=
      (and (img@27@01 r) (and (<= 0 (inv@26@01 r)) (< (inv@26@01 r) len@9@01)))
      (and (img@24@01 r) (and (<= 0 (inv@23@01 r)) (< (inv@23@01 r) len@9@01)))))
  
  :qid |quant-u-8694|))))
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
    (= (Seq_index c@11@01 i@25@01) (Seq_index a@10@01 i@19@01))
    (=
      (and (img@27@01 r) (and (<= 0 (inv@26@01 r)) (< (inv@26@01 r) len@9@01)))
      (and (img@21@01 r) (and (<= 0 (inv@20@01 r)) (< (inv@20@01 r) len@9@01)))))
  
  :qid |quant-u-8695|))))
(check-sat)
; unknown
(pop) ; 2
; 0.00s
; (get-info :all-statistics)
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@12@01)))))))))))
  $Snap.unit))
; [eval] (forall i: Int :: { b[i] } 0 <= i && i < len ==> b[i].Ref__Integer_value == i)
(declare-const i@28@01 Int)
(set-option :timeout 0)
(push) ; 2
; [eval] 0 <= i && i < len ==> b[i].Ref__Integer_value == i
; [eval] 0 <= i && i < len
; [eval] 0 <= i
(push) ; 3
; [then-branch: 21 | !(0 <= i@28@01) | live]
; [else-branch: 21 | 0 <= i@28@01 | live]
(push) ; 4
; [then-branch: 21 | !(0 <= i@28@01)]
(assert (not (<= 0 i@28@01)))
(pop) ; 4
(push) ; 4
; [else-branch: 21 | 0 <= i@28@01]
(assert (<= 0 i@28@01))
; [eval] i < len
(pop) ; 4
(pop) ; 3
; Joined path conditions
; Joined path conditions
(assert (or (<= 0 i@28@01) (not (<= 0 i@28@01))))
(push) ; 3
; [then-branch: 22 | 0 <= i@28@01 && i@28@01 < len@9@01 | live]
; [else-branch: 22 | !(0 <= i@28@01 && i@28@01 < len@9@01) | live]
(push) ; 4
; [then-branch: 22 | 0 <= i@28@01 && i@28@01 < len@9@01]
(assert (and (<= 0 i@28@01) (< i@28@01 len@9@01)))
; [eval] b[i].Ref__Integer_value == i
; [eval] b[i]
(push) ; 5
(assert (not (>= i@28@01 0)))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(push) ; 5
(assert (not (< i@28@01 (Seq_length b@8@01))))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(declare-const sm@29@01 $FVF<Ref__Integer_value>)
; Definitional axioms for snapshot map values
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@21@01 r) (and (<= 0 (inv@20@01 r)) (< (inv@20@01 r) len@9@01)))
    (=
      ($FVF.lookup_Ref__Integer_value (as sm@29@01  $FVF<Ref__Integer_value>) r)
      ($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@12@01)))))))) r)))
  :pattern (($FVF.lookup_Ref__Integer_value (as sm@29@01  $FVF<Ref__Integer_value>) r))
  :pattern (($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@12@01)))))))) r))
  :qid |qp.fvfValDef0|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@24@01 r) (and (<= 0 (inv@23@01 r)) (< (inv@23@01 r) len@9@01)))
    (=
      ($FVF.lookup_Ref__Integer_value (as sm@29@01  $FVF<Ref__Integer_value>) r)
      ($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@12@01)))))))))) r)))
  :pattern (($FVF.lookup_Ref__Integer_value (as sm@29@01  $FVF<Ref__Integer_value>) r))
  :pattern (($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@12@01)))))))))) r))
  :qid |qp.fvfValDef1|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@27@01 r) (and (<= 0 (inv@26@01 r)) (< (inv@26@01 r) len@9@01)))
    (=
      ($FVF.lookup_Ref__Integer_value (as sm@29@01  $FVF<Ref__Integer_value>) r)
      ($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@12@01)))))))))))) r)))
  :pattern (($FVF.lookup_Ref__Integer_value (as sm@29@01  $FVF<Ref__Integer_value>) r))
  :pattern (($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@12@01)))))))))))) r))
  :qid |qp.fvfValDef2|)))
(declare-const pm@30@01 $FPM)
(assert (forall ((r $Ref)) (!
  (=
    ($FVF.perm_Ref__Integer_value (as pm@30@01  $FPM) r)
    (+
      (+
        (ite
          (and
            (img@21@01 r)
            (and (<= 0 (inv@20@01 r)) (< (inv@20@01 r) len@9@01)))
          $Perm.Write
          $Perm.No)
        (ite
          (and
            (img@24@01 r)
            (and (<= 0 (inv@23@01 r)) (< (inv@23@01 r) len@9@01)))
          (/ (to_real 1) (to_real 2))
          $Perm.No))
      (ite
        (and (img@27@01 r) (and (<= 0 (inv@26@01 r)) (< (inv@26@01 r) len@9@01)))
        $Perm.Write
        $Perm.No)))
  :pattern (($FVF.perm_Ref__Integer_value (as pm@30@01  $FPM) r))
  :qid |qp.resPrmSumDef3|)))
(push) ; 5
(assert (not (<
  $Perm.No
  ($FVF.perm_Ref__Integer_value (as pm@30@01  $FPM) (Seq_index b@8@01 i@28@01)))))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(pop) ; 4
(push) ; 4
; [else-branch: 22 | !(0 <= i@28@01 && i@28@01 < len@9@01)]
(assert (not (and (<= 0 i@28@01) (< i@28@01 len@9@01))))
(pop) ; 4
(pop) ; 3
; Joined path conditions
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@21@01 r) (and (<= 0 (inv@20@01 r)) (< (inv@20@01 r) len@9@01)))
    (=
      ($FVF.lookup_Ref__Integer_value (as sm@29@01  $FVF<Ref__Integer_value>) r)
      ($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@12@01)))))))) r)))
  :pattern (($FVF.lookup_Ref__Integer_value (as sm@29@01  $FVF<Ref__Integer_value>) r))
  :pattern (($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@12@01)))))))) r))
  :qid |qp.fvfValDef0|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@24@01 r) (and (<= 0 (inv@23@01 r)) (< (inv@23@01 r) len@9@01)))
    (=
      ($FVF.lookup_Ref__Integer_value (as sm@29@01  $FVF<Ref__Integer_value>) r)
      ($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@12@01)))))))))) r)))
  :pattern (($FVF.lookup_Ref__Integer_value (as sm@29@01  $FVF<Ref__Integer_value>) r))
  :pattern (($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@12@01)))))))))) r))
  :qid |qp.fvfValDef1|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@27@01 r) (and (<= 0 (inv@26@01 r)) (< (inv@26@01 r) len@9@01)))
    (=
      ($FVF.lookup_Ref__Integer_value (as sm@29@01  $FVF<Ref__Integer_value>) r)
      ($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@12@01)))))))))))) r)))
  :pattern (($FVF.lookup_Ref__Integer_value (as sm@29@01  $FVF<Ref__Integer_value>) r))
  :pattern (($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@12@01)))))))))))) r))
  :qid |qp.fvfValDef2|)))
(assert (forall ((r $Ref)) (!
  (=
    ($FVF.perm_Ref__Integer_value (as pm@30@01  $FPM) r)
    (+
      (+
        (ite
          (and
            (img@21@01 r)
            (and (<= 0 (inv@20@01 r)) (< (inv@20@01 r) len@9@01)))
          $Perm.Write
          $Perm.No)
        (ite
          (and
            (img@24@01 r)
            (and (<= 0 (inv@23@01 r)) (< (inv@23@01 r) len@9@01)))
          (/ (to_real 1) (to_real 2))
          $Perm.No))
      (ite
        (and (img@27@01 r) (and (<= 0 (inv@26@01 r)) (< (inv@26@01 r) len@9@01)))
        $Perm.Write
        $Perm.No)))
  :pattern (($FVF.perm_Ref__Integer_value (as pm@30@01  $FPM) r))
  :qid |qp.resPrmSumDef3|)))
; Joined path conditions
(assert (or
  (not (and (<= 0 i@28@01) (< i@28@01 len@9@01)))
  (and (<= 0 i@28@01) (< i@28@01 len@9@01))))
(pop) ; 2
; Nested auxiliary terms: globals (aux)
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@21@01 r) (and (<= 0 (inv@20@01 r)) (< (inv@20@01 r) len@9@01)))
    (=
      ($FVF.lookup_Ref__Integer_value (as sm@29@01  $FVF<Ref__Integer_value>) r)
      ($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@12@01)))))))) r)))
  :pattern (($FVF.lookup_Ref__Integer_value (as sm@29@01  $FVF<Ref__Integer_value>) r))
  :pattern (($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@12@01)))))))) r))
  :qid |qp.fvfValDef0|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@24@01 r) (and (<= 0 (inv@23@01 r)) (< (inv@23@01 r) len@9@01)))
    (=
      ($FVF.lookup_Ref__Integer_value (as sm@29@01  $FVF<Ref__Integer_value>) r)
      ($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@12@01)))))))))) r)))
  :pattern (($FVF.lookup_Ref__Integer_value (as sm@29@01  $FVF<Ref__Integer_value>) r))
  :pattern (($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@12@01)))))))))) r))
  :qid |qp.fvfValDef1|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@27@01 r) (and (<= 0 (inv@26@01 r)) (< (inv@26@01 r) len@9@01)))
    (=
      ($FVF.lookup_Ref__Integer_value (as sm@29@01  $FVF<Ref__Integer_value>) r)
      ($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@12@01)))))))))))) r)))
  :pattern (($FVF.lookup_Ref__Integer_value (as sm@29@01  $FVF<Ref__Integer_value>) r))
  :pattern (($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@12@01)))))))))))) r))
  :qid |qp.fvfValDef2|)))
(assert (forall ((r $Ref)) (!
  (=
    ($FVF.perm_Ref__Integer_value (as pm@30@01  $FPM) r)
    (+
      (+
        (ite
          (and
            (img@21@01 r)
            (and (<= 0 (inv@20@01 r)) (< (inv@20@01 r) len@9@01)))
          $Perm.Write
          $Perm.No)
        (ite
          (and
            (img@24@01 r)
            (and (<= 0 (inv@23@01 r)) (< (inv@23@01 r) len@9@01)))
          (/ (to_real 1) (to_real 2))
          $Perm.No))
      (ite
        (and (img@27@01 r) (and (<= 0 (inv@26@01 r)) (< (inv@26@01 r) len@9@01)))
        $Perm.Write
        $Perm.No)))
  :pattern (($FVF.perm_Ref__Integer_value (as pm@30@01  $FPM) r))
  :qid |qp.resPrmSumDef3|)))
; Nested auxiliary terms: non-globals (aux)
(assert (forall ((i@28@01 Int)) (!
  (and
    (or (<= 0 i@28@01) (not (<= 0 i@28@01)))
    (or
      (not (and (<= 0 i@28@01) (< i@28@01 len@9@01)))
      (and (<= 0 i@28@01) (< i@28@01 len@9@01))))
  :pattern ((Seq_index b@8@01 i@28@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/third_party/test_forward_dep_c.vpr@70@13@70@86-aux|)))
(assert (forall ((i@28@01 Int)) (!
  (=>
    (and (<= 0 i@28@01) (< i@28@01 len@9@01))
    (=
      ($FVF.lookup_Ref__Integer_value (as sm@29@01  $FVF<Ref__Integer_value>) (Seq_index
        b@8@01
        i@28@01))
      i@28@01))
  :pattern ((Seq_index b@8@01 i@28@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/third_party/test_forward_dep_c.vpr@70@13@70@86|)))
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
(set-option :timeout 0)
(push) ; 2
(declare-const $t@31@01 $Snap)
(assert (= $t@31@01 ($Snap.combine ($Snap.first $t@31@01) ($Snap.second $t@31@01))))
(assert (= ($Snap.first $t@31@01) $Snap.unit))
; [eval] 0 < len ==> |a| == len
; [eval] 0 < len
(push) ; 3
(push) ; 4
(set-option :timeout 10)
(assert (not (not (< 0 len@9@01))))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not (< 0 len@9@01)))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; [then-branch: 23 | 0 < len@9@01 | live]
; [else-branch: 23 | !(0 < len@9@01) | live]
(set-option :timeout 0)
(push) ; 4
; [then-branch: 23 | 0 < len@9@01]
(assert (< 0 len@9@01))
; [eval] |a| == len
; [eval] |a|
(pop) ; 4
(push) ; 4
; [else-branch: 23 | !(0 < len@9@01)]
(assert (not (< 0 len@9@01)))
(pop) ; 4
(pop) ; 3
; Joined path conditions
; Joined path conditions
(assert (=
  ($Snap.second $t@31@01)
  ($Snap.combine
    ($Snap.first ($Snap.second $t@31@01))
    ($Snap.second ($Snap.second $t@31@01)))))
(declare-const i@32@01 Int)
(push) ; 3
; [eval] 0 <= i && i < len
; [eval] 0 <= i
(push) ; 4
; [then-branch: 24 | !(0 <= i@32@01) | live]
; [else-branch: 24 | 0 <= i@32@01 | live]
(push) ; 5
; [then-branch: 24 | !(0 <= i@32@01)]
(assert (not (<= 0 i@32@01)))
(pop) ; 5
(push) ; 5
; [else-branch: 24 | 0 <= i@32@01]
(assert (<= 0 i@32@01))
; [eval] i < len
(pop) ; 5
(pop) ; 4
; Joined path conditions
; Joined path conditions
(assert (or (<= 0 i@32@01) (not (<= 0 i@32@01))))
(assert (and (<= 0 i@32@01) (< i@32@01 len@9@01)))
; [eval] a[i]
(push) ; 4
(assert (not (>= i@32@01 0)))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(push) ; 4
(assert (not (< i@32@01 (Seq_length a@10@01))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(pop) ; 3
(declare-fun inv@33@01 ($Ref) Int)
(declare-fun img@34@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
(assert (forall ((i@32@01 Int)) (!
  (=>
    (and (<= 0 i@32@01) (< i@32@01 len@9@01))
    (or (<= 0 i@32@01) (not (<= 0 i@32@01))))
  :pattern ((Seq_index a@10@01 i@32@01))
  :qid |Ref__Integer_value-aux|)))
; Check receiver injectivity
(push) ; 3
(assert (not (forall ((i1@32@01 Int) (i2@32@01 Int)) (!
  (=>
    (and
      (and (<= 0 i1@32@01) (< i1@32@01 len@9@01))
      (and (<= 0 i2@32@01) (< i2@32@01 len@9@01))
      (= (Seq_index a@10@01 i1@32@01) (Seq_index a@10@01 i2@32@01)))
    (= i1@32@01 i2@32@01))
  
  :qid |Ref__Integer_value-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((i@32@01 Int)) (!
  (=>
    (and (<= 0 i@32@01) (< i@32@01 len@9@01))
    (and
      (= (inv@33@01 (Seq_index a@10@01 i@32@01)) i@32@01)
      (img@34@01 (Seq_index a@10@01 i@32@01))))
  :pattern ((Seq_index a@10@01 i@32@01))
  :qid |quant-u-8697|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@34@01 r) (and (<= 0 (inv@33@01 r)) (< (inv@33@01 r) len@9@01)))
    (= (Seq_index a@10@01 (inv@33@01 r)) r))
  :pattern ((inv@33@01 r))
  :qid |Ref__Integer_value-fctOfInv|)))
; Permissions are non-negative
; Field permissions are at most one
; Permission implies non-null receiver
(assert (forall ((i@32@01 Int)) (!
  (=>
    (and (<= 0 i@32@01) (< i@32@01 len@9@01))
    (not (= (Seq_index a@10@01 i@32@01) $Ref.null)))
  :pattern ((Seq_index a@10@01 i@32@01))
  :qid |Ref__Integer_value-permImpliesNonNull|)))
(assert (=
  ($Snap.second ($Snap.second $t@31@01))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second $t@31@01)))
    ($Snap.second ($Snap.second ($Snap.second $t@31@01))))))
(assert (= ($Snap.first ($Snap.second ($Snap.second $t@31@01))) $Snap.unit))
; [eval] 0 < len ==> |b| == len
; [eval] 0 < len
(push) ; 3
(push) ; 4
(set-option :timeout 10)
(assert (not (not (< 0 len@9@01))))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not (< 0 len@9@01)))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; [then-branch: 25 | 0 < len@9@01 | live]
; [else-branch: 25 | !(0 < len@9@01) | live]
(set-option :timeout 0)
(push) ; 4
; [then-branch: 25 | 0 < len@9@01]
(assert (< 0 len@9@01))
; [eval] |b| == len
; [eval] |b|
(pop) ; 4
(push) ; 4
; [else-branch: 25 | !(0 < len@9@01)]
(assert (not (< 0 len@9@01)))
(pop) ; 4
(pop) ; 3
; Joined path conditions
; Joined path conditions
(assert (=
  ($Snap.second ($Snap.second ($Snap.second $t@31@01)))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@31@01))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@31@01)))))))
(declare-const i@35@01 Int)
(push) ; 3
; [eval] 0 <= i && i < len
; [eval] 0 <= i
(push) ; 4
; [then-branch: 26 | !(0 <= i@35@01) | live]
; [else-branch: 26 | 0 <= i@35@01 | live]
(push) ; 5
; [then-branch: 26 | !(0 <= i@35@01)]
(assert (not (<= 0 i@35@01)))
(pop) ; 5
(push) ; 5
; [else-branch: 26 | 0 <= i@35@01]
(assert (<= 0 i@35@01))
; [eval] i < len
(pop) ; 5
(pop) ; 4
; Joined path conditions
; Joined path conditions
(assert (or (<= 0 i@35@01) (not (<= 0 i@35@01))))
(assert (and (<= 0 i@35@01) (< i@35@01 len@9@01)))
; [eval] b[i]
(push) ; 4
(assert (not (>= i@35@01 0)))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(push) ; 4
(assert (not (< i@35@01 (Seq_length b@8@01))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(pop) ; 3
(declare-fun inv@36@01 ($Ref) Int)
(declare-fun img@37@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
(assert (forall ((i@35@01 Int)) (!
  (=>
    (and (<= 0 i@35@01) (< i@35@01 len@9@01))
    (or (<= 0 i@35@01) (not (<= 0 i@35@01))))
  :pattern ((Seq_index b@8@01 i@35@01))
  :qid |Ref__Integer_value-aux|)))
; Check receiver injectivity
(push) ; 3
(assert (not (forall ((i1@35@01 Int) (i2@35@01 Int)) (!
  (=>
    (and
      (and (<= 0 i1@35@01) (< i1@35@01 len@9@01))
      (and (<= 0 i2@35@01) (< i2@35@01 len@9@01))
      (= (Seq_index b@8@01 i1@35@01) (Seq_index b@8@01 i2@35@01)))
    (= i1@35@01 i2@35@01))
  
  :qid |Ref__Integer_value-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((i@35@01 Int)) (!
  (=>
    (and (<= 0 i@35@01) (< i@35@01 len@9@01))
    (and
      (= (inv@36@01 (Seq_index b@8@01 i@35@01)) i@35@01)
      (img@37@01 (Seq_index b@8@01 i@35@01))))
  :pattern ((Seq_index b@8@01 i@35@01))
  :qid |quant-u-8699|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@37@01 r) (and (<= 0 (inv@36@01 r)) (< (inv@36@01 r) len@9@01)))
    (= (Seq_index b@8@01 (inv@36@01 r)) r))
  :pattern ((inv@36@01 r))
  :qid |Ref__Integer_value-fctOfInv|)))
; Permissions are non-negative
; Field permissions are at most one
; Permission implies non-null receiver
(assert (forall ((i@35@01 Int)) (!
  (=>
    (and (<= 0 i@35@01) (< i@35@01 len@9@01))
    (not (= (Seq_index b@8@01 i@35@01) $Ref.null)))
  :pattern ((Seq_index b@8@01 i@35@01))
  :qid |Ref__Integer_value-permImpliesNonNull|)))
(push) ; 3
(set-option :timeout 10)
(assert (not (forall ((r $Ref)) (!
  (and
    (= (Seq_index b@8@01 i@35@01) (Seq_index a@10@01 i@32@01))
    (=
      (and (img@37@01 r) (and (<= 0 (inv@36@01 r)) (< (inv@36@01 r) len@9@01)))
      (and (img@34@01 r) (and (<= 0 (inv@33@01 r)) (< (inv@33@01 r) len@9@01)))))
  
  :qid |quant-u-8700|))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@31@01))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@31@01)))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@31@01))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@31@01)))))
  $Snap.unit))
; [eval] 0 < len ==> |c| == len
; [eval] 0 < len
(set-option :timeout 0)
(push) ; 3
(push) ; 4
(set-option :timeout 10)
(assert (not (not (< 0 len@9@01))))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not (< 0 len@9@01)))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; [then-branch: 27 | 0 < len@9@01 | live]
; [else-branch: 27 | !(0 < len@9@01) | live]
(set-option :timeout 0)
(push) ; 4
; [then-branch: 27 | 0 < len@9@01]
(assert (< 0 len@9@01))
; [eval] |c| == len
; [eval] |c|
(pop) ; 4
(push) ; 4
; [else-branch: 27 | !(0 < len@9@01)]
(assert (not (< 0 len@9@01)))
(pop) ; 4
(pop) ; 3
; Joined path conditions
; Joined path conditions
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@31@01)))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@31@01))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@31@01)))))))))
(declare-const i@38@01 Int)
(push) ; 3
; [eval] 0 <= i && i < len
; [eval] 0 <= i
(push) ; 4
; [then-branch: 28 | !(0 <= i@38@01) | live]
; [else-branch: 28 | 0 <= i@38@01 | live]
(push) ; 5
; [then-branch: 28 | !(0 <= i@38@01)]
(assert (not (<= 0 i@38@01)))
(pop) ; 5
(push) ; 5
; [else-branch: 28 | 0 <= i@38@01]
(assert (<= 0 i@38@01))
; [eval] i < len
(pop) ; 5
(pop) ; 4
; Joined path conditions
; Joined path conditions
(assert (or (<= 0 i@38@01) (not (<= 0 i@38@01))))
(assert (and (<= 0 i@38@01) (< i@38@01 len@9@01)))
; [eval] c[i]
(push) ; 4
(assert (not (>= i@38@01 0)))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(push) ; 4
(assert (not (< i@38@01 (Seq_length c@11@01))))
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
(assert (forall ((i@38@01 Int)) (!
  (=>
    (and (<= 0 i@38@01) (< i@38@01 len@9@01))
    (or (<= 0 i@38@01) (not (<= 0 i@38@01))))
  :pattern ((Seq_index c@11@01 i@38@01))
  :qid |Ref__Integer_value-aux|)))
; Check receiver injectivity
(push) ; 3
(assert (not (forall ((i1@38@01 Int) (i2@38@01 Int)) (!
  (=>
    (and
      (and (<= 0 i1@38@01) (< i1@38@01 len@9@01))
      (and (<= 0 i2@38@01) (< i2@38@01 len@9@01))
      (= (Seq_index c@11@01 i1@38@01) (Seq_index c@11@01 i2@38@01)))
    (= i1@38@01 i2@38@01))
  
  :qid |Ref__Integer_value-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((i@38@01 Int)) (!
  (=>
    (and (<= 0 i@38@01) (< i@38@01 len@9@01))
    (and
      (= (inv@39@01 (Seq_index c@11@01 i@38@01)) i@38@01)
      (img@40@01 (Seq_index c@11@01 i@38@01))))
  :pattern ((Seq_index c@11@01 i@38@01))
  :qid |quant-u-8702|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@40@01 r) (and (<= 0 (inv@39@01 r)) (< (inv@39@01 r) len@9@01)))
    (= (Seq_index c@11@01 (inv@39@01 r)) r))
  :pattern ((inv@39@01 r))
  :qid |Ref__Integer_value-fctOfInv|)))
; Permissions are non-negative
; Field permissions are at most one
; Permission implies non-null receiver
(assert (forall ((i@38@01 Int)) (!
  (=>
    (and (<= 0 i@38@01) (< i@38@01 len@9@01))
    (not (= (Seq_index c@11@01 i@38@01) $Ref.null)))
  :pattern ((Seq_index c@11@01 i@38@01))
  :qid |Ref__Integer_value-permImpliesNonNull|)))
(push) ; 3
(set-option :timeout 10)
(assert (not (forall ((r $Ref)) (!
  (and
    (= (Seq_index c@11@01 i@38@01) (Seq_index b@8@01 i@35@01))
    (=
      (and (img@40@01 r) (and (<= 0 (inv@39@01 r)) (< (inv@39@01 r) len@9@01)))
      (and (img@37@01 r) (and (<= 0 (inv@36@01 r)) (< (inv@36@01 r) len@9@01)))))
  
  :qid |quant-u-8703|))))
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
    (= (Seq_index c@11@01 i@38@01) (Seq_index a@10@01 i@32@01))
    (=
      (and (img@40@01 r) (and (<= 0 (inv@39@01 r)) (< (inv@39@01 r) len@9@01)))
      (and (img@34@01 r) (and (<= 0 (inv@33@01 r)) (< (inv@33@01 r) len@9@01)))))
  
  :qid |quant-u-8704|))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@31@01))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@31@01)))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@31@01))))))))))
(declare-const i@41@01 Int)
(set-option :timeout 0)
(push) ; 3
; [eval] (0 <= 0 ? 1 : 0) - 1 <= i && i < len - 1
; [eval] (0 <= 0 ? 1 : 0) - 1 <= i
; [eval] (0 <= 0 ? 1 : 0) - 1
; [eval] (0 <= 0 ? 1 : 0)
; [eval] 0 <= 0
(push) ; 4
(push) ; 5
(set-option :timeout 10)
(assert (not false))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
; [then-branch: 29 | True | live]
; [else-branch: 29 | False | dead]
(set-option :timeout 0)
(push) ; 5
; [then-branch: 29 | True]
(pop) ; 5
(pop) ; 4
; Joined path conditions
(push) ; 4
; [then-branch: 30 | !(0 <= i@41@01) | live]
; [else-branch: 30 | 0 <= i@41@01 | live]
(push) ; 5
; [then-branch: 30 | !(0 <= i@41@01)]
(assert (not (<= 0 i@41@01)))
(pop) ; 5
(push) ; 5
; [else-branch: 30 | 0 <= i@41@01]
(assert (<= 0 i@41@01))
; [eval] i < len - 1
; [eval] len - 1
(pop) ; 5
(pop) ; 4
; Joined path conditions
; Joined path conditions
(assert (or (<= 0 i@41@01) (not (<= 0 i@41@01))))
(assert (and (<= 0 i@41@01) (< i@41@01 (- len@9@01 1))))
; [eval] a[i]
(push) ; 4
(assert (not (>= i@41@01 0)))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(push) ; 4
(assert (not (< i@41@01 (Seq_length a@10@01))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(pop) ; 3
(declare-fun inv@42@01 ($Ref) Int)
(declare-fun img@43@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
(assert (forall ((i@41@01 Int)) (!
  (=>
    (and (<= 0 i@41@01) (< i@41@01 (- len@9@01 1)))
    (or (<= 0 i@41@01) (not (<= 0 i@41@01))))
  :pattern ((Seq_index a@10@01 i@41@01))
  :qid |Ref__Integer_value-aux|)))
; Check receiver injectivity
(push) ; 3
(assert (not (forall ((i1@41@01 Int) (i2@41@01 Int)) (!
  (=>
    (and
      (and (<= 0 i1@41@01) (< i1@41@01 (- len@9@01 1)))
      (and (<= 0 i2@41@01) (< i2@41@01 (- len@9@01 1)))
      (= (Seq_index a@10@01 i1@41@01) (Seq_index a@10@01 i2@41@01)))
    (= i1@41@01 i2@41@01))
  
  :qid |Ref__Integer_value-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((i@41@01 Int)) (!
  (=>
    (and (<= 0 i@41@01) (< i@41@01 (- len@9@01 1)))
    (and
      (= (inv@42@01 (Seq_index a@10@01 i@41@01)) i@41@01)
      (img@43@01 (Seq_index a@10@01 i@41@01))))
  :pattern ((Seq_index a@10@01 i@41@01))
  :qid |quant-u-8706|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@43@01 r)
      (and (<= 0 (inv@42@01 r)) (< (inv@42@01 r) (- len@9@01 1))))
    (= (Seq_index a@10@01 (inv@42@01 r)) r))
  :pattern ((inv@42@01 r))
  :qid |Ref__Integer_value-fctOfInv|)))
; Permissions are non-negative
; Field permissions are at most one
; Permission implies non-null receiver
(assert (forall ((i@41@01 Int)) (!
  (=>
    (and (<= 0 i@41@01) (< i@41@01 (- len@9@01 1)))
    (not (= (Seq_index a@10@01 i@41@01) $Ref.null)))
  :pattern ((Seq_index a@10@01 i@41@01))
  :qid |Ref__Integer_value-permImpliesNonNull|)))
(push) ; 3
(set-option :timeout 10)
(assert (not (forall ((r $Ref)) (!
  (and
    (= (Seq_index a@10@01 i@41@01) (Seq_index c@11@01 i@38@01))
    (=
      (and
        (img@43@01 r)
        (and (<= 0 (inv@42@01 r)) (< (inv@42@01 r) (- len@9@01 1))))
      (and (img@40@01 r) (and (<= 0 (inv@39@01 r)) (< (inv@39@01 r) len@9@01)))))
  
  :qid |quant-u-8707|))))
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
    (= (Seq_index a@10@01 i@41@01) (Seq_index b@8@01 i@35@01))
    (=
      (and
        (img@43@01 r)
        (and (<= 0 (inv@42@01 r)) (< (inv@42@01 r) (- len@9@01 1))))
      (and (img@37@01 r) (and (<= 0 (inv@36@01 r)) (< (inv@36@01 r) len@9@01)))))
  
  :qid |quant-u-8708|))))
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
    (= (Seq_index a@10@01 i@41@01) (Seq_index a@10@01 i@32@01))
    (=
      (and
        (img@43@01 r)
        (and (<= 0 (inv@42@01 r)) (< (inv@42@01 r) (- len@9@01 1))))
      (and (img@34@01 r) (and (<= 0 (inv@33@01 r)) (< (inv@33@01 r) len@9@01)))))
  
  :qid |quant-u-8709|))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@31@01)))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@31@01))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@31@01)))))))))))
; [eval] 0 <= |a| - 1 && |a| - 1 < len
; [eval] 0 <= |a| - 1
; [eval] |a| - 1
; [eval] |a|
(set-option :timeout 0)
(push) ; 3
; [then-branch: 31 | !(0 <= |a@10@01| - 1) | live]
; [else-branch: 31 | 0 <= |a@10@01| - 1 | live]
(push) ; 4
; [then-branch: 31 | !(0 <= |a@10@01| - 1)]
(assert (not (<= 0 (- (Seq_length a@10@01) 1))))
(pop) ; 4
(push) ; 4
; [else-branch: 31 | 0 <= |a@10@01| - 1]
(assert (<= 0 (- (Seq_length a@10@01) 1)))
; [eval] |a| - 1 < len
; [eval] |a| - 1
; [eval] |a|
(pop) ; 4
(pop) ; 3
; Joined path conditions
; Joined path conditions
(assert (or (<= 0 (- (Seq_length a@10@01) 1)) (not (<= 0 (- (Seq_length a@10@01) 1)))))
(push) ; 3
(set-option :timeout 10)
(assert (not (not
  (and (<= 0 (- (Seq_length a@10@01) 1)) (< (- (Seq_length a@10@01) 1) len@9@01)))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (and (<= 0 (- (Seq_length a@10@01) 1)) (< (- (Seq_length a@10@01) 1) len@9@01))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; [then-branch: 32 | 0 <= |a@10@01| - 1 && |a@10@01| - 1 < len@9@01 | live]
; [else-branch: 32 | !(0 <= |a@10@01| - 1 && |a@10@01| - 1 < len@9@01) | live]
(set-option :timeout 0)
(push) ; 3
; [then-branch: 32 | 0 <= |a@10@01| - 1 && |a@10@01| - 1 < len@9@01]
(assert (and (<= 0 (- (Seq_length a@10@01) 1)) (< (- (Seq_length a@10@01) 1) len@9@01)))
; [eval] a[|a| - 1]
; [eval] |a| - 1
; [eval] |a|
(push) ; 4
(assert (not (>= (- (Seq_length a@10@01) 1) 0)))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(push) ; 4
(assert (not (< (- (Seq_length a@10@01) 1) (Seq_length a@10@01))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(declare-const sm@44@01 $FVF<Ref__Integer_value>)
; Definitional axioms for singleton-SM's value
(assert (=
  ($FVF.lookup_Ref__Integer_value (as sm@44@01  $FVF<Ref__Integer_value>) (Seq_index
    a@10@01
    (- (Seq_length a@10@01) 1)))
  ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@31@01)))))))))))
(assert (<=
  $Perm.No
  (ite
    (=
      (Seq_index a@10@01 (- (Seq_length a@10@01) 1))
      (Seq_index a@10@01 (- (Seq_length a@10@01) 1)))
    (/ (to_real 1) (to_real 2))
    $Perm.No)))
(assert (<=
  (ite
    (=
      (Seq_index a@10@01 (- (Seq_length a@10@01) 1))
      (Seq_index a@10@01 (- (Seq_length a@10@01) 1)))
    (/ (to_real 1) (to_real 2))
    $Perm.No)
  $Perm.Write))
(assert (=>
  (=
    (Seq_index a@10@01 (- (Seq_length a@10@01) 1))
    (Seq_index a@10@01 (- (Seq_length a@10@01) 1)))
  (not (= (Seq_index a@10@01 (- (Seq_length a@10@01) 1)) $Ref.null))))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@31@01))))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@31@01)))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@31@01))))))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@31@01)))))))))
  $Snap.unit))
; [eval] (forall i: Int :: { a[i] } 0 <= i && i < len ==> a[i].Ref__Integer_value == i + 1)
(declare-const i@45@01 Int)
(push) ; 4
; [eval] 0 <= i && i < len ==> a[i].Ref__Integer_value == i + 1
; [eval] 0 <= i && i < len
; [eval] 0 <= i
(push) ; 5
; [then-branch: 33 | !(0 <= i@45@01) | live]
; [else-branch: 33 | 0 <= i@45@01 | live]
(push) ; 6
; [then-branch: 33 | !(0 <= i@45@01)]
(assert (not (<= 0 i@45@01)))
(pop) ; 6
(push) ; 6
; [else-branch: 33 | 0 <= i@45@01]
(assert (<= 0 i@45@01))
; [eval] i < len
(pop) ; 6
(pop) ; 5
; Joined path conditions
; Joined path conditions
(assert (or (<= 0 i@45@01) (not (<= 0 i@45@01))))
(push) ; 5
; [then-branch: 34 | 0 <= i@45@01 && i@45@01 < len@9@01 | live]
; [else-branch: 34 | !(0 <= i@45@01 && i@45@01 < len@9@01) | live]
(push) ; 6
; [then-branch: 34 | 0 <= i@45@01 && i@45@01 < len@9@01]
(assert (and (<= 0 i@45@01) (< i@45@01 len@9@01)))
; [eval] a[i].Ref__Integer_value == i + 1
; [eval] a[i]
(push) ; 7
(assert (not (>= i@45@01 0)))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(push) ; 7
(assert (not (< i@45@01 (Seq_length a@10@01))))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(declare-const sm@46@01 $FVF<Ref__Integer_value>)
; Definitional axioms for snapshot map values
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@34@01 r) (and (<= 0 (inv@33@01 r)) (< (inv@33@01 r) len@9@01)))
    (=
      ($FVF.lookup_Ref__Integer_value (as sm@46@01  $FVF<Ref__Integer_value>) r)
      ($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second $t@31@01))) r)))
  :pattern (($FVF.lookup_Ref__Integer_value (as sm@46@01  $FVF<Ref__Integer_value>) r))
  :pattern (($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second $t@31@01))) r))
  :qid |qp.fvfValDef4|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@37@01 r) (and (<= 0 (inv@36@01 r)) (< (inv@36@01 r) len@9@01)))
    (=
      ($FVF.lookup_Ref__Integer_value (as sm@46@01  $FVF<Ref__Integer_value>) r)
      ($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@31@01))))) r)))
  :pattern (($FVF.lookup_Ref__Integer_value (as sm@46@01  $FVF<Ref__Integer_value>) r))
  :pattern (($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@31@01))))) r))
  :qid |qp.fvfValDef5|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@40@01 r) (and (<= 0 (inv@39@01 r)) (< (inv@39@01 r) len@9@01)))
    (=
      ($FVF.lookup_Ref__Integer_value (as sm@46@01  $FVF<Ref__Integer_value>) r)
      ($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@31@01))))))) r)))
  :pattern (($FVF.lookup_Ref__Integer_value (as sm@46@01  $FVF<Ref__Integer_value>) r))
  :pattern (($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@31@01))))))) r))
  :qid |qp.fvfValDef6|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@43@01 r)
      (and (<= 0 (inv@42@01 r)) (< (inv@42@01 r) (- len@9@01 1))))
    (=
      ($FVF.lookup_Ref__Integer_value (as sm@46@01  $FVF<Ref__Integer_value>) r)
      ($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@31@01)))))))) r)))
  :pattern (($FVF.lookup_Ref__Integer_value (as sm@46@01  $FVF<Ref__Integer_value>) r))
  :pattern (($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@31@01)))))))) r))
  :qid |qp.fvfValDef7|)))
(assert (forall ((r $Ref)) (!
  (=>
    (= r (Seq_index a@10@01 (- (Seq_length a@10@01) 1)))
    (=
      ($FVF.lookup_Ref__Integer_value (as sm@46@01  $FVF<Ref__Integer_value>) r)
      ($FVF.lookup_Ref__Integer_value (as sm@44@01  $FVF<Ref__Integer_value>) r)))
  :pattern (($FVF.lookup_Ref__Integer_value (as sm@46@01  $FVF<Ref__Integer_value>) r))
  :pattern (($FVF.lookup_Ref__Integer_value (as sm@44@01  $FVF<Ref__Integer_value>) r))
  :qid |qp.fvfValDef8|)))
(declare-const pm@47@01 $FPM)
(assert (forall ((r $Ref)) (!
  (=
    ($FVF.perm_Ref__Integer_value (as pm@47@01  $FPM) r)
    (+
      (+
        (+
          (+
            (ite
              (and
                (img@34@01 r)
                (and (<= 0 (inv@33@01 r)) (< (inv@33@01 r) len@9@01)))
              (/ (to_real 1) (to_real 2))
              $Perm.No)
            (ite
              (and
                (img@37@01 r)
                (and (<= 0 (inv@36@01 r)) (< (inv@36@01 r) len@9@01)))
              (/ (to_real 1) (to_real 2))
              $Perm.No))
          (ite
            (and
              (img@40@01 r)
              (and (<= 0 (inv@39@01 r)) (< (inv@39@01 r) len@9@01)))
            $Perm.Write
            $Perm.No))
        (ite
          (and
            (img@43@01 r)
            (and (<= 0 (inv@42@01 r)) (< (inv@42@01 r) (- len@9@01 1))))
          (/ (to_real 1) (to_real 2))
          $Perm.No))
      (ite
        (= r (Seq_index a@10@01 (- (Seq_length a@10@01) 1)))
        (/ (to_real 1) (to_real 2))
        $Perm.No)))
  :pattern (($FVF.perm_Ref__Integer_value (as pm@47@01  $FPM) r))
  :qid |qp.resPrmSumDef9|)))
(push) ; 7
(assert (not (<
  $Perm.No
  ($FVF.perm_Ref__Integer_value (as pm@47@01  $FPM) (Seq_index a@10@01 i@45@01)))))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
; [eval] i + 1
(pop) ; 6
(push) ; 6
; [else-branch: 34 | !(0 <= i@45@01 && i@45@01 < len@9@01)]
(assert (not (and (<= 0 i@45@01) (< i@45@01 len@9@01))))
(pop) ; 6
(pop) ; 5
; Joined path conditions
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@34@01 r) (and (<= 0 (inv@33@01 r)) (< (inv@33@01 r) len@9@01)))
    (=
      ($FVF.lookup_Ref__Integer_value (as sm@46@01  $FVF<Ref__Integer_value>) r)
      ($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second $t@31@01))) r)))
  :pattern (($FVF.lookup_Ref__Integer_value (as sm@46@01  $FVF<Ref__Integer_value>) r))
  :pattern (($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second $t@31@01))) r))
  :qid |qp.fvfValDef4|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@37@01 r) (and (<= 0 (inv@36@01 r)) (< (inv@36@01 r) len@9@01)))
    (=
      ($FVF.lookup_Ref__Integer_value (as sm@46@01  $FVF<Ref__Integer_value>) r)
      ($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@31@01))))) r)))
  :pattern (($FVF.lookup_Ref__Integer_value (as sm@46@01  $FVF<Ref__Integer_value>) r))
  :pattern (($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@31@01))))) r))
  :qid |qp.fvfValDef5|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@40@01 r) (and (<= 0 (inv@39@01 r)) (< (inv@39@01 r) len@9@01)))
    (=
      ($FVF.lookup_Ref__Integer_value (as sm@46@01  $FVF<Ref__Integer_value>) r)
      ($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@31@01))))))) r)))
  :pattern (($FVF.lookup_Ref__Integer_value (as sm@46@01  $FVF<Ref__Integer_value>) r))
  :pattern (($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@31@01))))))) r))
  :qid |qp.fvfValDef6|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@43@01 r)
      (and (<= 0 (inv@42@01 r)) (< (inv@42@01 r) (- len@9@01 1))))
    (=
      ($FVF.lookup_Ref__Integer_value (as sm@46@01  $FVF<Ref__Integer_value>) r)
      ($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@31@01)))))))) r)))
  :pattern (($FVF.lookup_Ref__Integer_value (as sm@46@01  $FVF<Ref__Integer_value>) r))
  :pattern (($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@31@01)))))))) r))
  :qid |qp.fvfValDef7|)))
(assert (forall ((r $Ref)) (!
  (=>
    (= r (Seq_index a@10@01 (- (Seq_length a@10@01) 1)))
    (=
      ($FVF.lookup_Ref__Integer_value (as sm@46@01  $FVF<Ref__Integer_value>) r)
      ($FVF.lookup_Ref__Integer_value (as sm@44@01  $FVF<Ref__Integer_value>) r)))
  :pattern (($FVF.lookup_Ref__Integer_value (as sm@46@01  $FVF<Ref__Integer_value>) r))
  :pattern (($FVF.lookup_Ref__Integer_value (as sm@44@01  $FVF<Ref__Integer_value>) r))
  :qid |qp.fvfValDef8|)))
(assert (forall ((r $Ref)) (!
  (=
    ($FVF.perm_Ref__Integer_value (as pm@47@01  $FPM) r)
    (+
      (+
        (+
          (+
            (ite
              (and
                (img@34@01 r)
                (and (<= 0 (inv@33@01 r)) (< (inv@33@01 r) len@9@01)))
              (/ (to_real 1) (to_real 2))
              $Perm.No)
            (ite
              (and
                (img@37@01 r)
                (and (<= 0 (inv@36@01 r)) (< (inv@36@01 r) len@9@01)))
              (/ (to_real 1) (to_real 2))
              $Perm.No))
          (ite
            (and
              (img@40@01 r)
              (and (<= 0 (inv@39@01 r)) (< (inv@39@01 r) len@9@01)))
            $Perm.Write
            $Perm.No))
        (ite
          (and
            (img@43@01 r)
            (and (<= 0 (inv@42@01 r)) (< (inv@42@01 r) (- len@9@01 1))))
          (/ (to_real 1) (to_real 2))
          $Perm.No))
      (ite
        (= r (Seq_index a@10@01 (- (Seq_length a@10@01) 1)))
        (/ (to_real 1) (to_real 2))
        $Perm.No)))
  :pattern (($FVF.perm_Ref__Integer_value (as pm@47@01  $FPM) r))
  :qid |qp.resPrmSumDef9|)))
; Joined path conditions
(assert (or
  (not (and (<= 0 i@45@01) (< i@45@01 len@9@01)))
  (and (<= 0 i@45@01) (< i@45@01 len@9@01))))
(pop) ; 4
; Nested auxiliary terms: globals (aux)
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@34@01 r) (and (<= 0 (inv@33@01 r)) (< (inv@33@01 r) len@9@01)))
    (=
      ($FVF.lookup_Ref__Integer_value (as sm@46@01  $FVF<Ref__Integer_value>) r)
      ($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second $t@31@01))) r)))
  :pattern (($FVF.lookup_Ref__Integer_value (as sm@46@01  $FVF<Ref__Integer_value>) r))
  :pattern (($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second $t@31@01))) r))
  :qid |qp.fvfValDef4|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@37@01 r) (and (<= 0 (inv@36@01 r)) (< (inv@36@01 r) len@9@01)))
    (=
      ($FVF.lookup_Ref__Integer_value (as sm@46@01  $FVF<Ref__Integer_value>) r)
      ($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@31@01))))) r)))
  :pattern (($FVF.lookup_Ref__Integer_value (as sm@46@01  $FVF<Ref__Integer_value>) r))
  :pattern (($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@31@01))))) r))
  :qid |qp.fvfValDef5|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@40@01 r) (and (<= 0 (inv@39@01 r)) (< (inv@39@01 r) len@9@01)))
    (=
      ($FVF.lookup_Ref__Integer_value (as sm@46@01  $FVF<Ref__Integer_value>) r)
      ($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@31@01))))))) r)))
  :pattern (($FVF.lookup_Ref__Integer_value (as sm@46@01  $FVF<Ref__Integer_value>) r))
  :pattern (($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@31@01))))))) r))
  :qid |qp.fvfValDef6|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@43@01 r)
      (and (<= 0 (inv@42@01 r)) (< (inv@42@01 r) (- len@9@01 1))))
    (=
      ($FVF.lookup_Ref__Integer_value (as sm@46@01  $FVF<Ref__Integer_value>) r)
      ($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@31@01)))))))) r)))
  :pattern (($FVF.lookup_Ref__Integer_value (as sm@46@01  $FVF<Ref__Integer_value>) r))
  :pattern (($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@31@01)))))))) r))
  :qid |qp.fvfValDef7|)))
(assert (forall ((r $Ref)) (!
  (=>
    (= r (Seq_index a@10@01 (- (Seq_length a@10@01) 1)))
    (=
      ($FVF.lookup_Ref__Integer_value (as sm@46@01  $FVF<Ref__Integer_value>) r)
      ($FVF.lookup_Ref__Integer_value (as sm@44@01  $FVF<Ref__Integer_value>) r)))
  :pattern (($FVF.lookup_Ref__Integer_value (as sm@46@01  $FVF<Ref__Integer_value>) r))
  :pattern (($FVF.lookup_Ref__Integer_value (as sm@44@01  $FVF<Ref__Integer_value>) r))
  :qid |qp.fvfValDef8|)))
(assert (forall ((r $Ref)) (!
  (=
    ($FVF.perm_Ref__Integer_value (as pm@47@01  $FPM) r)
    (+
      (+
        (+
          (+
            (ite
              (and
                (img@34@01 r)
                (and (<= 0 (inv@33@01 r)) (< (inv@33@01 r) len@9@01)))
              (/ (to_real 1) (to_real 2))
              $Perm.No)
            (ite
              (and
                (img@37@01 r)
                (and (<= 0 (inv@36@01 r)) (< (inv@36@01 r) len@9@01)))
              (/ (to_real 1) (to_real 2))
              $Perm.No))
          (ite
            (and
              (img@40@01 r)
              (and (<= 0 (inv@39@01 r)) (< (inv@39@01 r) len@9@01)))
            $Perm.Write
            $Perm.No))
        (ite
          (and
            (img@43@01 r)
            (and (<= 0 (inv@42@01 r)) (< (inv@42@01 r) (- len@9@01 1))))
          (/ (to_real 1) (to_real 2))
          $Perm.No))
      (ite
        (= r (Seq_index a@10@01 (- (Seq_length a@10@01) 1)))
        (/ (to_real 1) (to_real 2))
        $Perm.No)))
  :pattern (($FVF.perm_Ref__Integer_value (as pm@47@01  $FPM) r))
  :qid |qp.resPrmSumDef9|)))
; Nested auxiliary terms: non-globals (aux)
(assert (forall ((i@45@01 Int)) (!
  (and
    (or (<= 0 i@45@01) (not (<= 0 i@45@01)))
    (or
      (not (and (<= 0 i@45@01) (< i@45@01 len@9@01)))
      (and (<= 0 i@45@01) (< i@45@01 len@9@01))))
  :pattern ((Seq_index a@10@01 i@45@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/third_party/test_forward_dep_c.vpr@79@12@79@89-aux|)))
(assert (forall ((i@45@01 Int)) (!
  (=>
    (and (<= 0 i@45@01) (< i@45@01 len@9@01))
    (=
      ($FVF.lookup_Ref__Integer_value (as sm@46@01  $FVF<Ref__Integer_value>) (Seq_index
        a@10@01
        i@45@01))
      (+ i@45@01 1)))
  :pattern ((Seq_index a@10@01 i@45@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/third_party/test_forward_dep_c.vpr@79@12@79@89|)))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@31@01)))))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@31@01))))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@31@01)))))))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@31@01))))))))))
  $Snap.unit))
; [eval] (forall i: Int :: { b[i] } 0 <= i && i < len ==> b[i].Ref__Integer_value == i)
(declare-const i@48@01 Int)
(push) ; 4
; [eval] 0 <= i && i < len ==> b[i].Ref__Integer_value == i
; [eval] 0 <= i && i < len
; [eval] 0 <= i
(push) ; 5
; [then-branch: 35 | !(0 <= i@48@01) | live]
; [else-branch: 35 | 0 <= i@48@01 | live]
(push) ; 6
; [then-branch: 35 | !(0 <= i@48@01)]
(assert (not (<= 0 i@48@01)))
(pop) ; 6
(push) ; 6
; [else-branch: 35 | 0 <= i@48@01]
(assert (<= 0 i@48@01))
; [eval] i < len
(pop) ; 6
(pop) ; 5
; Joined path conditions
; Joined path conditions
(assert (or (<= 0 i@48@01) (not (<= 0 i@48@01))))
(push) ; 5
; [then-branch: 36 | 0 <= i@48@01 && i@48@01 < len@9@01 | live]
; [else-branch: 36 | !(0 <= i@48@01 && i@48@01 < len@9@01) | live]
(push) ; 6
; [then-branch: 36 | 0 <= i@48@01 && i@48@01 < len@9@01]
(assert (and (<= 0 i@48@01) (< i@48@01 len@9@01)))
; [eval] b[i].Ref__Integer_value == i
; [eval] b[i]
(push) ; 7
(assert (not (>= i@48@01 0)))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(push) ; 7
(assert (not (< i@48@01 (Seq_length b@8@01))))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(assert (and
  (forall ((r $Ref)) (!
    (=>
      (and (img@34@01 r) (and (<= 0 (inv@33@01 r)) (< (inv@33@01 r) len@9@01)))
      (=
        ($FVF.lookup_Ref__Integer_value (as sm@46@01  $FVF<Ref__Integer_value>) r)
        ($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second $t@31@01))) r)))
    :pattern (($FVF.lookup_Ref__Integer_value (as sm@46@01  $FVF<Ref__Integer_value>) r))
    :pattern (($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second $t@31@01))) r))
    :qid |qp.fvfValDef4|))
  (forall ((r $Ref)) (!
    (=>
      (and (img@37@01 r) (and (<= 0 (inv@36@01 r)) (< (inv@36@01 r) len@9@01)))
      (=
        ($FVF.lookup_Ref__Integer_value (as sm@46@01  $FVF<Ref__Integer_value>) r)
        ($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@31@01))))) r)))
    :pattern (($FVF.lookup_Ref__Integer_value (as sm@46@01  $FVF<Ref__Integer_value>) r))
    :pattern (($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@31@01))))) r))
    :qid |qp.fvfValDef5|))
  (forall ((r $Ref)) (!
    (=>
      (and (img@40@01 r) (and (<= 0 (inv@39@01 r)) (< (inv@39@01 r) len@9@01)))
      (=
        ($FVF.lookup_Ref__Integer_value (as sm@46@01  $FVF<Ref__Integer_value>) r)
        ($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@31@01))))))) r)))
    :pattern (($FVF.lookup_Ref__Integer_value (as sm@46@01  $FVF<Ref__Integer_value>) r))
    :pattern (($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@31@01))))))) r))
    :qid |qp.fvfValDef6|))
  (forall ((r $Ref)) (!
    (=>
      (and
        (img@43@01 r)
        (and (<= 0 (inv@42@01 r)) (< (inv@42@01 r) (- len@9@01 1))))
      (=
        ($FVF.lookup_Ref__Integer_value (as sm@46@01  $FVF<Ref__Integer_value>) r)
        ($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@31@01)))))))) r)))
    :pattern (($FVF.lookup_Ref__Integer_value (as sm@46@01  $FVF<Ref__Integer_value>) r))
    :pattern (($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@31@01)))))))) r))
    :qid |qp.fvfValDef7|))
  (forall ((r $Ref)) (!
    (=>
      (= r (Seq_index a@10@01 (- (Seq_length a@10@01) 1)))
      (=
        ($FVF.lookup_Ref__Integer_value (as sm@46@01  $FVF<Ref__Integer_value>) r)
        ($FVF.lookup_Ref__Integer_value (as sm@44@01  $FVF<Ref__Integer_value>) r)))
    :pattern (($FVF.lookup_Ref__Integer_value (as sm@46@01  $FVF<Ref__Integer_value>) r))
    :pattern (($FVF.lookup_Ref__Integer_value (as sm@44@01  $FVF<Ref__Integer_value>) r))
    :qid |qp.fvfValDef8|))))
(push) ; 7
(assert (not (<
  $Perm.No
  (+
    (+
      (+
        (+
          (ite
            (and
              (img@34@01 (Seq_index b@8@01 i@48@01))
              (and
                (<= 0 (inv@33@01 (Seq_index b@8@01 i@48@01)))
                (< (inv@33@01 (Seq_index b@8@01 i@48@01)) len@9@01)))
            (/ (to_real 1) (to_real 2))
            $Perm.No)
          (ite
            (and
              (img@37@01 (Seq_index b@8@01 i@48@01))
              (and
                (<= 0 (inv@36@01 (Seq_index b@8@01 i@48@01)))
                (< (inv@36@01 (Seq_index b@8@01 i@48@01)) len@9@01)))
            (/ (to_real 1) (to_real 2))
            $Perm.No))
        (ite
          (and
            (img@40@01 (Seq_index b@8@01 i@48@01))
            (and
              (<= 0 (inv@39@01 (Seq_index b@8@01 i@48@01)))
              (< (inv@39@01 (Seq_index b@8@01 i@48@01)) len@9@01)))
          $Perm.Write
          $Perm.No))
      (ite
        (and
          (img@43@01 (Seq_index b@8@01 i@48@01))
          (and
            (<= 0 (inv@42@01 (Seq_index b@8@01 i@48@01)))
            (< (inv@42@01 (Seq_index b@8@01 i@48@01)) (- len@9@01 1))))
        (/ (to_real 1) (to_real 2))
        $Perm.No))
    (ite
      (=
        (Seq_index b@8@01 i@48@01)
        (Seq_index a@10@01 (- (Seq_length a@10@01) 1)))
      (/ (to_real 1) (to_real 2))
      $Perm.No)))))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(pop) ; 6
(push) ; 6
; [else-branch: 36 | !(0 <= i@48@01 && i@48@01 < len@9@01)]
(assert (not (and (<= 0 i@48@01) (< i@48@01 len@9@01))))
(pop) ; 6
(pop) ; 5
; Joined path conditions
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@34@01 r) (and (<= 0 (inv@33@01 r)) (< (inv@33@01 r) len@9@01)))
    (=
      ($FVF.lookup_Ref__Integer_value (as sm@46@01  $FVF<Ref__Integer_value>) r)
      ($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second $t@31@01))) r)))
  :pattern (($FVF.lookup_Ref__Integer_value (as sm@46@01  $FVF<Ref__Integer_value>) r))
  :pattern (($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second $t@31@01))) r))
  :qid |qp.fvfValDef4|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@37@01 r) (and (<= 0 (inv@36@01 r)) (< (inv@36@01 r) len@9@01)))
    (=
      ($FVF.lookup_Ref__Integer_value (as sm@46@01  $FVF<Ref__Integer_value>) r)
      ($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@31@01))))) r)))
  :pattern (($FVF.lookup_Ref__Integer_value (as sm@46@01  $FVF<Ref__Integer_value>) r))
  :pattern (($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@31@01))))) r))
  :qid |qp.fvfValDef5|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@40@01 r) (and (<= 0 (inv@39@01 r)) (< (inv@39@01 r) len@9@01)))
    (=
      ($FVF.lookup_Ref__Integer_value (as sm@46@01  $FVF<Ref__Integer_value>) r)
      ($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@31@01))))))) r)))
  :pattern (($FVF.lookup_Ref__Integer_value (as sm@46@01  $FVF<Ref__Integer_value>) r))
  :pattern (($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@31@01))))))) r))
  :qid |qp.fvfValDef6|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@43@01 r)
      (and (<= 0 (inv@42@01 r)) (< (inv@42@01 r) (- len@9@01 1))))
    (=
      ($FVF.lookup_Ref__Integer_value (as sm@46@01  $FVF<Ref__Integer_value>) r)
      ($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@31@01)))))))) r)))
  :pattern (($FVF.lookup_Ref__Integer_value (as sm@46@01  $FVF<Ref__Integer_value>) r))
  :pattern (($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@31@01)))))))) r))
  :qid |qp.fvfValDef7|)))
(assert (forall ((r $Ref)) (!
  (=>
    (= r (Seq_index a@10@01 (- (Seq_length a@10@01) 1)))
    (=
      ($FVF.lookup_Ref__Integer_value (as sm@46@01  $FVF<Ref__Integer_value>) r)
      ($FVF.lookup_Ref__Integer_value (as sm@44@01  $FVF<Ref__Integer_value>) r)))
  :pattern (($FVF.lookup_Ref__Integer_value (as sm@46@01  $FVF<Ref__Integer_value>) r))
  :pattern (($FVF.lookup_Ref__Integer_value (as sm@44@01  $FVF<Ref__Integer_value>) r))
  :qid |qp.fvfValDef8|)))
; Joined path conditions
(assert (or
  (not (and (<= 0 i@48@01) (< i@48@01 len@9@01)))
  (and (<= 0 i@48@01) (< i@48@01 len@9@01))))
(pop) ; 4
; Nested auxiliary terms: globals (aux)
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@34@01 r) (and (<= 0 (inv@33@01 r)) (< (inv@33@01 r) len@9@01)))
    (=
      ($FVF.lookup_Ref__Integer_value (as sm@46@01  $FVF<Ref__Integer_value>) r)
      ($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second $t@31@01))) r)))
  :pattern (($FVF.lookup_Ref__Integer_value (as sm@46@01  $FVF<Ref__Integer_value>) r))
  :pattern (($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second $t@31@01))) r))
  :qid |qp.fvfValDef4|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@37@01 r) (and (<= 0 (inv@36@01 r)) (< (inv@36@01 r) len@9@01)))
    (=
      ($FVF.lookup_Ref__Integer_value (as sm@46@01  $FVF<Ref__Integer_value>) r)
      ($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@31@01))))) r)))
  :pattern (($FVF.lookup_Ref__Integer_value (as sm@46@01  $FVF<Ref__Integer_value>) r))
  :pattern (($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@31@01))))) r))
  :qid |qp.fvfValDef5|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@40@01 r) (and (<= 0 (inv@39@01 r)) (< (inv@39@01 r) len@9@01)))
    (=
      ($FVF.lookup_Ref__Integer_value (as sm@46@01  $FVF<Ref__Integer_value>) r)
      ($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@31@01))))))) r)))
  :pattern (($FVF.lookup_Ref__Integer_value (as sm@46@01  $FVF<Ref__Integer_value>) r))
  :pattern (($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@31@01))))))) r))
  :qid |qp.fvfValDef6|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@43@01 r)
      (and (<= 0 (inv@42@01 r)) (< (inv@42@01 r) (- len@9@01 1))))
    (=
      ($FVF.lookup_Ref__Integer_value (as sm@46@01  $FVF<Ref__Integer_value>) r)
      ($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@31@01)))))))) r)))
  :pattern (($FVF.lookup_Ref__Integer_value (as sm@46@01  $FVF<Ref__Integer_value>) r))
  :pattern (($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@31@01)))))))) r))
  :qid |qp.fvfValDef7|)))
(assert (forall ((r $Ref)) (!
  (=>
    (= r (Seq_index a@10@01 (- (Seq_length a@10@01) 1)))
    (=
      ($FVF.lookup_Ref__Integer_value (as sm@46@01  $FVF<Ref__Integer_value>) r)
      ($FVF.lookup_Ref__Integer_value (as sm@44@01  $FVF<Ref__Integer_value>) r)))
  :pattern (($FVF.lookup_Ref__Integer_value (as sm@46@01  $FVF<Ref__Integer_value>) r))
  :pattern (($FVF.lookup_Ref__Integer_value (as sm@44@01  $FVF<Ref__Integer_value>) r))
  :qid |qp.fvfValDef8|)))
; Nested auxiliary terms: non-globals (aux)
(assert (forall ((i@48@01 Int)) (!
  (and
    (or (<= 0 i@48@01) (not (<= 0 i@48@01)))
    (or
      (not (and (<= 0 i@48@01) (< i@48@01 len@9@01)))
      (and (<= 0 i@48@01) (< i@48@01 len@9@01))))
  :pattern ((Seq_index b@8@01 i@48@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/third_party/test_forward_dep_c.vpr@80@12@80@85-aux|)))
(assert (forall ((i@48@01 Int)) (!
  (=>
    (and (<= 0 i@48@01) (< i@48@01 len@9@01))
    (=
      ($FVF.lookup_Ref__Integer_value (as sm@46@01  $FVF<Ref__Integer_value>) (Seq_index
        b@8@01
        i@48@01))
      i@48@01))
  :pattern ((Seq_index b@8@01 i@48@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/third_party/test_forward_dep_c.vpr@80@12@80@85|)))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@31@01))))))))))
  $Snap.unit))
; [eval] (forall i: Int :: { c[i] } (0 <= 0 ? 1 : 0) <= i && i < len ==> c[i].Ref__Integer_value == i + 2)
(declare-const i@49@01 Int)
(push) ; 4
; [eval] (0 <= 0 ? 1 : 0) <= i && i < len ==> c[i].Ref__Integer_value == i + 2
; [eval] (0 <= 0 ? 1 : 0) <= i && i < len
; [eval] (0 <= 0 ? 1 : 0) <= i
; [eval] (0 <= 0 ? 1 : 0)
; [eval] 0 <= 0
(push) ; 5
(push) ; 6
(set-option :timeout 10)
(assert (not false))
(check-sat)
; unknown
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
; [then-branch: 37 | True | live]
; [else-branch: 37 | False | dead]
(set-option :timeout 0)
(push) ; 6
; [then-branch: 37 | True]
(pop) ; 6
(pop) ; 5
; Joined path conditions
(push) ; 5
; [then-branch: 38 | !(1 <= i@49@01) | live]
; [else-branch: 38 | 1 <= i@49@01 | live]
(push) ; 6
; [then-branch: 38 | !(1 <= i@49@01)]
(assert (not (<= 1 i@49@01)))
(pop) ; 6
(push) ; 6
; [else-branch: 38 | 1 <= i@49@01]
(assert (<= 1 i@49@01))
; [eval] i < len
(pop) ; 6
(pop) ; 5
; Joined path conditions
; Joined path conditions
(assert (or (<= 1 i@49@01) (not (<= 1 i@49@01))))
(push) ; 5
; [then-branch: 39 | 1 <= i@49@01 && i@49@01 < len@9@01 | live]
; [else-branch: 39 | !(1 <= i@49@01 && i@49@01 < len@9@01) | live]
(push) ; 6
; [then-branch: 39 | 1 <= i@49@01 && i@49@01 < len@9@01]
(assert (and (<= 1 i@49@01) (< i@49@01 len@9@01)))
; [eval] c[i].Ref__Integer_value == i + 2
; [eval] c[i]
(push) ; 7
(assert (not (>= i@49@01 0)))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(push) ; 7
(assert (not (< i@49@01 (Seq_length c@11@01))))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(assert (and
  (forall ((r $Ref)) (!
    (=>
      (and (img@34@01 r) (and (<= 0 (inv@33@01 r)) (< (inv@33@01 r) len@9@01)))
      (=
        ($FVF.lookup_Ref__Integer_value (as sm@46@01  $FVF<Ref__Integer_value>) r)
        ($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second $t@31@01))) r)))
    :pattern (($FVF.lookup_Ref__Integer_value (as sm@46@01  $FVF<Ref__Integer_value>) r))
    :pattern (($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second $t@31@01))) r))
    :qid |qp.fvfValDef4|))
  (forall ((r $Ref)) (!
    (=>
      (and (img@37@01 r) (and (<= 0 (inv@36@01 r)) (< (inv@36@01 r) len@9@01)))
      (=
        ($FVF.lookup_Ref__Integer_value (as sm@46@01  $FVF<Ref__Integer_value>) r)
        ($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@31@01))))) r)))
    :pattern (($FVF.lookup_Ref__Integer_value (as sm@46@01  $FVF<Ref__Integer_value>) r))
    :pattern (($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@31@01))))) r))
    :qid |qp.fvfValDef5|))
  (forall ((r $Ref)) (!
    (=>
      (and (img@40@01 r) (and (<= 0 (inv@39@01 r)) (< (inv@39@01 r) len@9@01)))
      (=
        ($FVF.lookup_Ref__Integer_value (as sm@46@01  $FVF<Ref__Integer_value>) r)
        ($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@31@01))))))) r)))
    :pattern (($FVF.lookup_Ref__Integer_value (as sm@46@01  $FVF<Ref__Integer_value>) r))
    :pattern (($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@31@01))))))) r))
    :qid |qp.fvfValDef6|))
  (forall ((r $Ref)) (!
    (=>
      (and
        (img@43@01 r)
        (and (<= 0 (inv@42@01 r)) (< (inv@42@01 r) (- len@9@01 1))))
      (=
        ($FVF.lookup_Ref__Integer_value (as sm@46@01  $FVF<Ref__Integer_value>) r)
        ($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@31@01)))))))) r)))
    :pattern (($FVF.lookup_Ref__Integer_value (as sm@46@01  $FVF<Ref__Integer_value>) r))
    :pattern (($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@31@01)))))))) r))
    :qid |qp.fvfValDef7|))
  (forall ((r $Ref)) (!
    (=>
      (= r (Seq_index a@10@01 (- (Seq_length a@10@01) 1)))
      (=
        ($FVF.lookup_Ref__Integer_value (as sm@46@01  $FVF<Ref__Integer_value>) r)
        ($FVF.lookup_Ref__Integer_value (as sm@44@01  $FVF<Ref__Integer_value>) r)))
    :pattern (($FVF.lookup_Ref__Integer_value (as sm@46@01  $FVF<Ref__Integer_value>) r))
    :pattern (($FVF.lookup_Ref__Integer_value (as sm@44@01  $FVF<Ref__Integer_value>) r))
    :qid |qp.fvfValDef8|))))
(push) ; 7
(assert (not (<
  $Perm.No
  (+
    (+
      (+
        (+
          (ite
            (and
              (img@34@01 (Seq_index c@11@01 i@49@01))
              (and
                (<= 0 (inv@33@01 (Seq_index c@11@01 i@49@01)))
                (< (inv@33@01 (Seq_index c@11@01 i@49@01)) len@9@01)))
            (/ (to_real 1) (to_real 2))
            $Perm.No)
          (ite
            (and
              (img@37@01 (Seq_index c@11@01 i@49@01))
              (and
                (<= 0 (inv@36@01 (Seq_index c@11@01 i@49@01)))
                (< (inv@36@01 (Seq_index c@11@01 i@49@01)) len@9@01)))
            (/ (to_real 1) (to_real 2))
            $Perm.No))
        (ite
          (and
            (img@40@01 (Seq_index c@11@01 i@49@01))
            (and
              (<= 0 (inv@39@01 (Seq_index c@11@01 i@49@01)))
              (< (inv@39@01 (Seq_index c@11@01 i@49@01)) len@9@01)))
          $Perm.Write
          $Perm.No))
      (ite
        (and
          (img@43@01 (Seq_index c@11@01 i@49@01))
          (and
            (<= 0 (inv@42@01 (Seq_index c@11@01 i@49@01)))
            (< (inv@42@01 (Seq_index c@11@01 i@49@01)) (- len@9@01 1))))
        (/ (to_real 1) (to_real 2))
        $Perm.No))
    (ite
      (=
        (Seq_index c@11@01 i@49@01)
        (Seq_index a@10@01 (- (Seq_length a@10@01) 1)))
      (/ (to_real 1) (to_real 2))
      $Perm.No)))))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
; [eval] i + 2
(pop) ; 6
(push) ; 6
; [else-branch: 39 | !(1 <= i@49@01 && i@49@01 < len@9@01)]
(assert (not (and (<= 1 i@49@01) (< i@49@01 len@9@01))))
(pop) ; 6
(pop) ; 5
; Joined path conditions
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@34@01 r) (and (<= 0 (inv@33@01 r)) (< (inv@33@01 r) len@9@01)))
    (=
      ($FVF.lookup_Ref__Integer_value (as sm@46@01  $FVF<Ref__Integer_value>) r)
      ($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second $t@31@01))) r)))
  :pattern (($FVF.lookup_Ref__Integer_value (as sm@46@01  $FVF<Ref__Integer_value>) r))
  :pattern (($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second $t@31@01))) r))
  :qid |qp.fvfValDef4|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@37@01 r) (and (<= 0 (inv@36@01 r)) (< (inv@36@01 r) len@9@01)))
    (=
      ($FVF.lookup_Ref__Integer_value (as sm@46@01  $FVF<Ref__Integer_value>) r)
      ($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@31@01))))) r)))
  :pattern (($FVF.lookup_Ref__Integer_value (as sm@46@01  $FVF<Ref__Integer_value>) r))
  :pattern (($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@31@01))))) r))
  :qid |qp.fvfValDef5|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@40@01 r) (and (<= 0 (inv@39@01 r)) (< (inv@39@01 r) len@9@01)))
    (=
      ($FVF.lookup_Ref__Integer_value (as sm@46@01  $FVF<Ref__Integer_value>) r)
      ($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@31@01))))))) r)))
  :pattern (($FVF.lookup_Ref__Integer_value (as sm@46@01  $FVF<Ref__Integer_value>) r))
  :pattern (($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@31@01))))))) r))
  :qid |qp.fvfValDef6|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@43@01 r)
      (and (<= 0 (inv@42@01 r)) (< (inv@42@01 r) (- len@9@01 1))))
    (=
      ($FVF.lookup_Ref__Integer_value (as sm@46@01  $FVF<Ref__Integer_value>) r)
      ($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@31@01)))))))) r)))
  :pattern (($FVF.lookup_Ref__Integer_value (as sm@46@01  $FVF<Ref__Integer_value>) r))
  :pattern (($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@31@01)))))))) r))
  :qid |qp.fvfValDef7|)))
(assert (forall ((r $Ref)) (!
  (=>
    (= r (Seq_index a@10@01 (- (Seq_length a@10@01) 1)))
    (=
      ($FVF.lookup_Ref__Integer_value (as sm@46@01  $FVF<Ref__Integer_value>) r)
      ($FVF.lookup_Ref__Integer_value (as sm@44@01  $FVF<Ref__Integer_value>) r)))
  :pattern (($FVF.lookup_Ref__Integer_value (as sm@46@01  $FVF<Ref__Integer_value>) r))
  :pattern (($FVF.lookup_Ref__Integer_value (as sm@44@01  $FVF<Ref__Integer_value>) r))
  :qid |qp.fvfValDef8|)))
; Joined path conditions
(assert (or
  (not (and (<= 1 i@49@01) (< i@49@01 len@9@01)))
  (and (<= 1 i@49@01) (< i@49@01 len@9@01))))
(pop) ; 4
; Nested auxiliary terms: globals (aux)
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@34@01 r) (and (<= 0 (inv@33@01 r)) (< (inv@33@01 r) len@9@01)))
    (=
      ($FVF.lookup_Ref__Integer_value (as sm@46@01  $FVF<Ref__Integer_value>) r)
      ($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second $t@31@01))) r)))
  :pattern (($FVF.lookup_Ref__Integer_value (as sm@46@01  $FVF<Ref__Integer_value>) r))
  :pattern (($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second $t@31@01))) r))
  :qid |qp.fvfValDef4|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@37@01 r) (and (<= 0 (inv@36@01 r)) (< (inv@36@01 r) len@9@01)))
    (=
      ($FVF.lookup_Ref__Integer_value (as sm@46@01  $FVF<Ref__Integer_value>) r)
      ($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@31@01))))) r)))
  :pattern (($FVF.lookup_Ref__Integer_value (as sm@46@01  $FVF<Ref__Integer_value>) r))
  :pattern (($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@31@01))))) r))
  :qid |qp.fvfValDef5|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@40@01 r) (and (<= 0 (inv@39@01 r)) (< (inv@39@01 r) len@9@01)))
    (=
      ($FVF.lookup_Ref__Integer_value (as sm@46@01  $FVF<Ref__Integer_value>) r)
      ($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@31@01))))))) r)))
  :pattern (($FVF.lookup_Ref__Integer_value (as sm@46@01  $FVF<Ref__Integer_value>) r))
  :pattern (($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@31@01))))))) r))
  :qid |qp.fvfValDef6|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@43@01 r)
      (and (<= 0 (inv@42@01 r)) (< (inv@42@01 r) (- len@9@01 1))))
    (=
      ($FVF.lookup_Ref__Integer_value (as sm@46@01  $FVF<Ref__Integer_value>) r)
      ($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@31@01)))))))) r)))
  :pattern (($FVF.lookup_Ref__Integer_value (as sm@46@01  $FVF<Ref__Integer_value>) r))
  :pattern (($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@31@01)))))))) r))
  :qid |qp.fvfValDef7|)))
(assert (forall ((r $Ref)) (!
  (=>
    (= r (Seq_index a@10@01 (- (Seq_length a@10@01) 1)))
    (=
      ($FVF.lookup_Ref__Integer_value (as sm@46@01  $FVF<Ref__Integer_value>) r)
      ($FVF.lookup_Ref__Integer_value (as sm@44@01  $FVF<Ref__Integer_value>) r)))
  :pattern (($FVF.lookup_Ref__Integer_value (as sm@46@01  $FVF<Ref__Integer_value>) r))
  :pattern (($FVF.lookup_Ref__Integer_value (as sm@44@01  $FVF<Ref__Integer_value>) r))
  :qid |qp.fvfValDef8|)))
; Nested auxiliary terms: non-globals (aux)
(assert (forall ((i@49@01 Int)) (!
  (and
    (or (<= 1 i@49@01) (not (<= 1 i@49@01)))
    (or
      (not (and (<= 1 i@49@01) (< i@49@01 len@9@01)))
      (and (<= 1 i@49@01) (< i@49@01 len@9@01))))
  :pattern ((Seq_index c@11@01 i@49@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/third_party/test_forward_dep_c.vpr@81@12@81@104-aux|)))
(assert (forall ((i@49@01 Int)) (!
  (=>
    (and (<= 1 i@49@01) (< i@49@01 len@9@01))
    (=
      ($FVF.lookup_Ref__Integer_value (as sm@46@01  $FVF<Ref__Integer_value>) (Seq_index
        c@11@01
        i@49@01))
      (+ i@49@01 2)))
  :pattern ((Seq_index c@11@01 i@49@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/third_party/test_forward_dep_c.vpr@81@12@81@104|)))
(pop) ; 3
(push) ; 3
; [else-branch: 32 | !(0 <= |a@10@01| - 1 && |a@10@01| - 1 < len@9@01)]
(assert (not
  (and (<= 0 (- (Seq_length a@10@01) 1)) (< (- (Seq_length a@10@01) 1) len@9@01))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@31@01))))))))
  $Snap.unit))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@31@01))))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@31@01)))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@31@01))))))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@31@01)))))))))
  $Snap.unit))
; [eval] (forall i: Int :: { a[i] } 0 <= i && i < len ==> a[i].Ref__Integer_value == i + 1)
(declare-const i@50@01 Int)
(push) ; 4
; [eval] 0 <= i && i < len ==> a[i].Ref__Integer_value == i + 1
; [eval] 0 <= i && i < len
; [eval] 0 <= i
(push) ; 5
; [then-branch: 40 | !(0 <= i@50@01) | live]
; [else-branch: 40 | 0 <= i@50@01 | live]
(push) ; 6
; [then-branch: 40 | !(0 <= i@50@01)]
(assert (not (<= 0 i@50@01)))
(pop) ; 6
(push) ; 6
; [else-branch: 40 | 0 <= i@50@01]
(assert (<= 0 i@50@01))
; [eval] i < len
(pop) ; 6
(pop) ; 5
; Joined path conditions
; Joined path conditions
(assert (or (<= 0 i@50@01) (not (<= 0 i@50@01))))
(push) ; 5
; [then-branch: 41 | 0 <= i@50@01 && i@50@01 < len@9@01 | live]
; [else-branch: 41 | !(0 <= i@50@01 && i@50@01 < len@9@01) | live]
(push) ; 6
; [then-branch: 41 | 0 <= i@50@01 && i@50@01 < len@9@01]
(assert (and (<= 0 i@50@01) (< i@50@01 len@9@01)))
; [eval] a[i].Ref__Integer_value == i + 1
; [eval] a[i]
(push) ; 7
(assert (not (>= i@50@01 0)))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(push) ; 7
(assert (not (< i@50@01 (Seq_length a@10@01))))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(declare-const sm@51@01 $FVF<Ref__Integer_value>)
; Definitional axioms for snapshot map values
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@34@01 r) (and (<= 0 (inv@33@01 r)) (< (inv@33@01 r) len@9@01)))
    (=
      ($FVF.lookup_Ref__Integer_value (as sm@51@01  $FVF<Ref__Integer_value>) r)
      ($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second $t@31@01))) r)))
  :pattern (($FVF.lookup_Ref__Integer_value (as sm@51@01  $FVF<Ref__Integer_value>) r))
  :pattern (($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second $t@31@01))) r))
  :qid |qp.fvfValDef10|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@37@01 r) (and (<= 0 (inv@36@01 r)) (< (inv@36@01 r) len@9@01)))
    (=
      ($FVF.lookup_Ref__Integer_value (as sm@51@01  $FVF<Ref__Integer_value>) r)
      ($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@31@01))))) r)))
  :pattern (($FVF.lookup_Ref__Integer_value (as sm@51@01  $FVF<Ref__Integer_value>) r))
  :pattern (($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@31@01))))) r))
  :qid |qp.fvfValDef11|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@40@01 r) (and (<= 0 (inv@39@01 r)) (< (inv@39@01 r) len@9@01)))
    (=
      ($FVF.lookup_Ref__Integer_value (as sm@51@01  $FVF<Ref__Integer_value>) r)
      ($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@31@01))))))) r)))
  :pattern (($FVF.lookup_Ref__Integer_value (as sm@51@01  $FVF<Ref__Integer_value>) r))
  :pattern (($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@31@01))))))) r))
  :qid |qp.fvfValDef12|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@43@01 r)
      (and (<= 0 (inv@42@01 r)) (< (inv@42@01 r) (- len@9@01 1))))
    (=
      ($FVF.lookup_Ref__Integer_value (as sm@51@01  $FVF<Ref__Integer_value>) r)
      ($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@31@01)))))))) r)))
  :pattern (($FVF.lookup_Ref__Integer_value (as sm@51@01  $FVF<Ref__Integer_value>) r))
  :pattern (($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@31@01)))))))) r))
  :qid |qp.fvfValDef13|)))
(declare-const pm@52@01 $FPM)
(assert (forall ((r $Ref)) (!
  (=
    ($FVF.perm_Ref__Integer_value (as pm@52@01  $FPM) r)
    (+
      (+
        (+
          (ite
            (and
              (img@34@01 r)
              (and (<= 0 (inv@33@01 r)) (< (inv@33@01 r) len@9@01)))
            (/ (to_real 1) (to_real 2))
            $Perm.No)
          (ite
            (and
              (img@37@01 r)
              (and (<= 0 (inv@36@01 r)) (< (inv@36@01 r) len@9@01)))
            (/ (to_real 1) (to_real 2))
            $Perm.No))
        (ite
          (and
            (img@40@01 r)
            (and (<= 0 (inv@39@01 r)) (< (inv@39@01 r) len@9@01)))
          $Perm.Write
          $Perm.No))
      (ite
        (and
          (img@43@01 r)
          (and (<= 0 (inv@42@01 r)) (< (inv@42@01 r) (- len@9@01 1))))
        (/ (to_real 1) (to_real 2))
        $Perm.No)))
  :pattern (($FVF.perm_Ref__Integer_value (as pm@52@01  $FPM) r))
  :qid |qp.resPrmSumDef14|)))
(push) ; 7
(assert (not (<
  $Perm.No
  ($FVF.perm_Ref__Integer_value (as pm@52@01  $FPM) (Seq_index a@10@01 i@50@01)))))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
; [eval] i + 1
(pop) ; 6
(push) ; 6
; [else-branch: 41 | !(0 <= i@50@01 && i@50@01 < len@9@01)]
(assert (not (and (<= 0 i@50@01) (< i@50@01 len@9@01))))
(pop) ; 6
(pop) ; 5
; Joined path conditions
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@34@01 r) (and (<= 0 (inv@33@01 r)) (< (inv@33@01 r) len@9@01)))
    (=
      ($FVF.lookup_Ref__Integer_value (as sm@51@01  $FVF<Ref__Integer_value>) r)
      ($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second $t@31@01))) r)))
  :pattern (($FVF.lookup_Ref__Integer_value (as sm@51@01  $FVF<Ref__Integer_value>) r))
  :pattern (($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second $t@31@01))) r))
  :qid |qp.fvfValDef10|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@37@01 r) (and (<= 0 (inv@36@01 r)) (< (inv@36@01 r) len@9@01)))
    (=
      ($FVF.lookup_Ref__Integer_value (as sm@51@01  $FVF<Ref__Integer_value>) r)
      ($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@31@01))))) r)))
  :pattern (($FVF.lookup_Ref__Integer_value (as sm@51@01  $FVF<Ref__Integer_value>) r))
  :pattern (($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@31@01))))) r))
  :qid |qp.fvfValDef11|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@40@01 r) (and (<= 0 (inv@39@01 r)) (< (inv@39@01 r) len@9@01)))
    (=
      ($FVF.lookup_Ref__Integer_value (as sm@51@01  $FVF<Ref__Integer_value>) r)
      ($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@31@01))))))) r)))
  :pattern (($FVF.lookup_Ref__Integer_value (as sm@51@01  $FVF<Ref__Integer_value>) r))
  :pattern (($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@31@01))))))) r))
  :qid |qp.fvfValDef12|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@43@01 r)
      (and (<= 0 (inv@42@01 r)) (< (inv@42@01 r) (- len@9@01 1))))
    (=
      ($FVF.lookup_Ref__Integer_value (as sm@51@01  $FVF<Ref__Integer_value>) r)
      ($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@31@01)))))))) r)))
  :pattern (($FVF.lookup_Ref__Integer_value (as sm@51@01  $FVF<Ref__Integer_value>) r))
  :pattern (($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@31@01)))))))) r))
  :qid |qp.fvfValDef13|)))
(assert (forall ((r $Ref)) (!
  (=
    ($FVF.perm_Ref__Integer_value (as pm@52@01  $FPM) r)
    (+
      (+
        (+
          (ite
            (and
              (img@34@01 r)
              (and (<= 0 (inv@33@01 r)) (< (inv@33@01 r) len@9@01)))
            (/ (to_real 1) (to_real 2))
            $Perm.No)
          (ite
            (and
              (img@37@01 r)
              (and (<= 0 (inv@36@01 r)) (< (inv@36@01 r) len@9@01)))
            (/ (to_real 1) (to_real 2))
            $Perm.No))
        (ite
          (and
            (img@40@01 r)
            (and (<= 0 (inv@39@01 r)) (< (inv@39@01 r) len@9@01)))
          $Perm.Write
          $Perm.No))
      (ite
        (and
          (img@43@01 r)
          (and (<= 0 (inv@42@01 r)) (< (inv@42@01 r) (- len@9@01 1))))
        (/ (to_real 1) (to_real 2))
        $Perm.No)))
  :pattern (($FVF.perm_Ref__Integer_value (as pm@52@01  $FPM) r))
  :qid |qp.resPrmSumDef14|)))
; Joined path conditions
(assert (or
  (not (and (<= 0 i@50@01) (< i@50@01 len@9@01)))
  (and (<= 0 i@50@01) (< i@50@01 len@9@01))))
(pop) ; 4
; Nested auxiliary terms: globals (aux)
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@34@01 r) (and (<= 0 (inv@33@01 r)) (< (inv@33@01 r) len@9@01)))
    (=
      ($FVF.lookup_Ref__Integer_value (as sm@51@01  $FVF<Ref__Integer_value>) r)
      ($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second $t@31@01))) r)))
  :pattern (($FVF.lookup_Ref__Integer_value (as sm@51@01  $FVF<Ref__Integer_value>) r))
  :pattern (($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second $t@31@01))) r))
  :qid |qp.fvfValDef10|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@37@01 r) (and (<= 0 (inv@36@01 r)) (< (inv@36@01 r) len@9@01)))
    (=
      ($FVF.lookup_Ref__Integer_value (as sm@51@01  $FVF<Ref__Integer_value>) r)
      ($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@31@01))))) r)))
  :pattern (($FVF.lookup_Ref__Integer_value (as sm@51@01  $FVF<Ref__Integer_value>) r))
  :pattern (($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@31@01))))) r))
  :qid |qp.fvfValDef11|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@40@01 r) (and (<= 0 (inv@39@01 r)) (< (inv@39@01 r) len@9@01)))
    (=
      ($FVF.lookup_Ref__Integer_value (as sm@51@01  $FVF<Ref__Integer_value>) r)
      ($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@31@01))))))) r)))
  :pattern (($FVF.lookup_Ref__Integer_value (as sm@51@01  $FVF<Ref__Integer_value>) r))
  :pattern (($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@31@01))))))) r))
  :qid |qp.fvfValDef12|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@43@01 r)
      (and (<= 0 (inv@42@01 r)) (< (inv@42@01 r) (- len@9@01 1))))
    (=
      ($FVF.lookup_Ref__Integer_value (as sm@51@01  $FVF<Ref__Integer_value>) r)
      ($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@31@01)))))))) r)))
  :pattern (($FVF.lookup_Ref__Integer_value (as sm@51@01  $FVF<Ref__Integer_value>) r))
  :pattern (($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@31@01)))))))) r))
  :qid |qp.fvfValDef13|)))
(assert (forall ((r $Ref)) (!
  (=
    ($FVF.perm_Ref__Integer_value (as pm@52@01  $FPM) r)
    (+
      (+
        (+
          (ite
            (and
              (img@34@01 r)
              (and (<= 0 (inv@33@01 r)) (< (inv@33@01 r) len@9@01)))
            (/ (to_real 1) (to_real 2))
            $Perm.No)
          (ite
            (and
              (img@37@01 r)
              (and (<= 0 (inv@36@01 r)) (< (inv@36@01 r) len@9@01)))
            (/ (to_real 1) (to_real 2))
            $Perm.No))
        (ite
          (and
            (img@40@01 r)
            (and (<= 0 (inv@39@01 r)) (< (inv@39@01 r) len@9@01)))
          $Perm.Write
          $Perm.No))
      (ite
        (and
          (img@43@01 r)
          (and (<= 0 (inv@42@01 r)) (< (inv@42@01 r) (- len@9@01 1))))
        (/ (to_real 1) (to_real 2))
        $Perm.No)))
  :pattern (($FVF.perm_Ref__Integer_value (as pm@52@01  $FPM) r))
  :qid |qp.resPrmSumDef14|)))
; Nested auxiliary terms: non-globals (aux)
(assert (forall ((i@50@01 Int)) (!
  (and
    (or (<= 0 i@50@01) (not (<= 0 i@50@01)))
    (or
      (not (and (<= 0 i@50@01) (< i@50@01 len@9@01)))
      (and (<= 0 i@50@01) (< i@50@01 len@9@01))))
  :pattern ((Seq_index a@10@01 i@50@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/third_party/test_forward_dep_c.vpr@79@12@79@89-aux|)))
(assert (forall ((i@50@01 Int)) (!
  (=>
    (and (<= 0 i@50@01) (< i@50@01 len@9@01))
    (=
      ($FVF.lookup_Ref__Integer_value (as sm@51@01  $FVF<Ref__Integer_value>) (Seq_index
        a@10@01
        i@50@01))
      (+ i@50@01 1)))
  :pattern ((Seq_index a@10@01 i@50@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/third_party/test_forward_dep_c.vpr@79@12@79@89|)))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@31@01)))))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@31@01))))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@31@01)))))))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@31@01))))))))))
  $Snap.unit))
; [eval] (forall i: Int :: { b[i] } 0 <= i && i < len ==> b[i].Ref__Integer_value == i)
(declare-const i@53@01 Int)
(push) ; 4
; [eval] 0 <= i && i < len ==> b[i].Ref__Integer_value == i
; [eval] 0 <= i && i < len
; [eval] 0 <= i
(push) ; 5
; [then-branch: 42 | !(0 <= i@53@01) | live]
; [else-branch: 42 | 0 <= i@53@01 | live]
(push) ; 6
; [then-branch: 42 | !(0 <= i@53@01)]
(assert (not (<= 0 i@53@01)))
(pop) ; 6
(push) ; 6
; [else-branch: 42 | 0 <= i@53@01]
(assert (<= 0 i@53@01))
; [eval] i < len
(pop) ; 6
(pop) ; 5
; Joined path conditions
; Joined path conditions
(assert (or (<= 0 i@53@01) (not (<= 0 i@53@01))))
(push) ; 5
; [then-branch: 43 | 0 <= i@53@01 && i@53@01 < len@9@01 | live]
; [else-branch: 43 | !(0 <= i@53@01 && i@53@01 < len@9@01) | live]
(push) ; 6
; [then-branch: 43 | 0 <= i@53@01 && i@53@01 < len@9@01]
(assert (and (<= 0 i@53@01) (< i@53@01 len@9@01)))
; [eval] b[i].Ref__Integer_value == i
; [eval] b[i]
(push) ; 7
(assert (not (>= i@53@01 0)))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(push) ; 7
(assert (not (< i@53@01 (Seq_length b@8@01))))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(assert (and
  (forall ((r $Ref)) (!
    (=>
      (and (img@34@01 r) (and (<= 0 (inv@33@01 r)) (< (inv@33@01 r) len@9@01)))
      (=
        ($FVF.lookup_Ref__Integer_value (as sm@51@01  $FVF<Ref__Integer_value>) r)
        ($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second $t@31@01))) r)))
    :pattern (($FVF.lookup_Ref__Integer_value (as sm@51@01  $FVF<Ref__Integer_value>) r))
    :pattern (($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second $t@31@01))) r))
    :qid |qp.fvfValDef10|))
  (forall ((r $Ref)) (!
    (=>
      (and (img@37@01 r) (and (<= 0 (inv@36@01 r)) (< (inv@36@01 r) len@9@01)))
      (=
        ($FVF.lookup_Ref__Integer_value (as sm@51@01  $FVF<Ref__Integer_value>) r)
        ($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@31@01))))) r)))
    :pattern (($FVF.lookup_Ref__Integer_value (as sm@51@01  $FVF<Ref__Integer_value>) r))
    :pattern (($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@31@01))))) r))
    :qid |qp.fvfValDef11|))
  (forall ((r $Ref)) (!
    (=>
      (and (img@40@01 r) (and (<= 0 (inv@39@01 r)) (< (inv@39@01 r) len@9@01)))
      (=
        ($FVF.lookup_Ref__Integer_value (as sm@51@01  $FVF<Ref__Integer_value>) r)
        ($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@31@01))))))) r)))
    :pattern (($FVF.lookup_Ref__Integer_value (as sm@51@01  $FVF<Ref__Integer_value>) r))
    :pattern (($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@31@01))))))) r))
    :qid |qp.fvfValDef12|))
  (forall ((r $Ref)) (!
    (=>
      (and
        (img@43@01 r)
        (and (<= 0 (inv@42@01 r)) (< (inv@42@01 r) (- len@9@01 1))))
      (=
        ($FVF.lookup_Ref__Integer_value (as sm@51@01  $FVF<Ref__Integer_value>) r)
        ($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@31@01)))))))) r)))
    :pattern (($FVF.lookup_Ref__Integer_value (as sm@51@01  $FVF<Ref__Integer_value>) r))
    :pattern (($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@31@01)))))))) r))
    :qid |qp.fvfValDef13|))))
(push) ; 7
(assert (not (<
  $Perm.No
  (+
    (+
      (+
        (ite
          (and
            (img@34@01 (Seq_index b@8@01 i@53@01))
            (and
              (<= 0 (inv@33@01 (Seq_index b@8@01 i@53@01)))
              (< (inv@33@01 (Seq_index b@8@01 i@53@01)) len@9@01)))
          (/ (to_real 1) (to_real 2))
          $Perm.No)
        (ite
          (and
            (img@37@01 (Seq_index b@8@01 i@53@01))
            (and
              (<= 0 (inv@36@01 (Seq_index b@8@01 i@53@01)))
              (< (inv@36@01 (Seq_index b@8@01 i@53@01)) len@9@01)))
          (/ (to_real 1) (to_real 2))
          $Perm.No))
      (ite
        (and
          (img@40@01 (Seq_index b@8@01 i@53@01))
          (and
            (<= 0 (inv@39@01 (Seq_index b@8@01 i@53@01)))
            (< (inv@39@01 (Seq_index b@8@01 i@53@01)) len@9@01)))
        $Perm.Write
        $Perm.No))
    (ite
      (and
        (img@43@01 (Seq_index b@8@01 i@53@01))
        (and
          (<= 0 (inv@42@01 (Seq_index b@8@01 i@53@01)))
          (< (inv@42@01 (Seq_index b@8@01 i@53@01)) (- len@9@01 1))))
      (/ (to_real 1) (to_real 2))
      $Perm.No)))))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(pop) ; 6
(push) ; 6
; [else-branch: 43 | !(0 <= i@53@01 && i@53@01 < len@9@01)]
(assert (not (and (<= 0 i@53@01) (< i@53@01 len@9@01))))
(pop) ; 6
(pop) ; 5
; Joined path conditions
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@34@01 r) (and (<= 0 (inv@33@01 r)) (< (inv@33@01 r) len@9@01)))
    (=
      ($FVF.lookup_Ref__Integer_value (as sm@51@01  $FVF<Ref__Integer_value>) r)
      ($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second $t@31@01))) r)))
  :pattern (($FVF.lookup_Ref__Integer_value (as sm@51@01  $FVF<Ref__Integer_value>) r))
  :pattern (($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second $t@31@01))) r))
  :qid |qp.fvfValDef10|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@37@01 r) (and (<= 0 (inv@36@01 r)) (< (inv@36@01 r) len@9@01)))
    (=
      ($FVF.lookup_Ref__Integer_value (as sm@51@01  $FVF<Ref__Integer_value>) r)
      ($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@31@01))))) r)))
  :pattern (($FVF.lookup_Ref__Integer_value (as sm@51@01  $FVF<Ref__Integer_value>) r))
  :pattern (($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@31@01))))) r))
  :qid |qp.fvfValDef11|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@40@01 r) (and (<= 0 (inv@39@01 r)) (< (inv@39@01 r) len@9@01)))
    (=
      ($FVF.lookup_Ref__Integer_value (as sm@51@01  $FVF<Ref__Integer_value>) r)
      ($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@31@01))))))) r)))
  :pattern (($FVF.lookup_Ref__Integer_value (as sm@51@01  $FVF<Ref__Integer_value>) r))
  :pattern (($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@31@01))))))) r))
  :qid |qp.fvfValDef12|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@43@01 r)
      (and (<= 0 (inv@42@01 r)) (< (inv@42@01 r) (- len@9@01 1))))
    (=
      ($FVF.lookup_Ref__Integer_value (as sm@51@01  $FVF<Ref__Integer_value>) r)
      ($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@31@01)))))))) r)))
  :pattern (($FVF.lookup_Ref__Integer_value (as sm@51@01  $FVF<Ref__Integer_value>) r))
  :pattern (($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@31@01)))))))) r))
  :qid |qp.fvfValDef13|)))
; Joined path conditions
(assert (or
  (not (and (<= 0 i@53@01) (< i@53@01 len@9@01)))
  (and (<= 0 i@53@01) (< i@53@01 len@9@01))))
(pop) ; 4
; Nested auxiliary terms: globals (aux)
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@34@01 r) (and (<= 0 (inv@33@01 r)) (< (inv@33@01 r) len@9@01)))
    (=
      ($FVF.lookup_Ref__Integer_value (as sm@51@01  $FVF<Ref__Integer_value>) r)
      ($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second $t@31@01))) r)))
  :pattern (($FVF.lookup_Ref__Integer_value (as sm@51@01  $FVF<Ref__Integer_value>) r))
  :pattern (($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second $t@31@01))) r))
  :qid |qp.fvfValDef10|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@37@01 r) (and (<= 0 (inv@36@01 r)) (< (inv@36@01 r) len@9@01)))
    (=
      ($FVF.lookup_Ref__Integer_value (as sm@51@01  $FVF<Ref__Integer_value>) r)
      ($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@31@01))))) r)))
  :pattern (($FVF.lookup_Ref__Integer_value (as sm@51@01  $FVF<Ref__Integer_value>) r))
  :pattern (($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@31@01))))) r))
  :qid |qp.fvfValDef11|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@40@01 r) (and (<= 0 (inv@39@01 r)) (< (inv@39@01 r) len@9@01)))
    (=
      ($FVF.lookup_Ref__Integer_value (as sm@51@01  $FVF<Ref__Integer_value>) r)
      ($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@31@01))))))) r)))
  :pattern (($FVF.lookup_Ref__Integer_value (as sm@51@01  $FVF<Ref__Integer_value>) r))
  :pattern (($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@31@01))))))) r))
  :qid |qp.fvfValDef12|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@43@01 r)
      (and (<= 0 (inv@42@01 r)) (< (inv@42@01 r) (- len@9@01 1))))
    (=
      ($FVF.lookup_Ref__Integer_value (as sm@51@01  $FVF<Ref__Integer_value>) r)
      ($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@31@01)))))))) r)))
  :pattern (($FVF.lookup_Ref__Integer_value (as sm@51@01  $FVF<Ref__Integer_value>) r))
  :pattern (($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@31@01)))))))) r))
  :qid |qp.fvfValDef13|)))
; Nested auxiliary terms: non-globals (aux)
(assert (forall ((i@53@01 Int)) (!
  (and
    (or (<= 0 i@53@01) (not (<= 0 i@53@01)))
    (or
      (not (and (<= 0 i@53@01) (< i@53@01 len@9@01)))
      (and (<= 0 i@53@01) (< i@53@01 len@9@01))))
  :pattern ((Seq_index b@8@01 i@53@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/third_party/test_forward_dep_c.vpr@80@12@80@85-aux|)))
(assert (forall ((i@53@01 Int)) (!
  (=>
    (and (<= 0 i@53@01) (< i@53@01 len@9@01))
    (=
      ($FVF.lookup_Ref__Integer_value (as sm@51@01  $FVF<Ref__Integer_value>) (Seq_index
        b@8@01
        i@53@01))
      i@53@01))
  :pattern ((Seq_index b@8@01 i@53@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/third_party/test_forward_dep_c.vpr@80@12@80@85|)))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@31@01))))))))))
  $Snap.unit))
; [eval] (forall i: Int :: { c[i] } (0 <= 0 ? 1 : 0) <= i && i < len ==> c[i].Ref__Integer_value == i + 2)
(declare-const i@54@01 Int)
(push) ; 4
; [eval] (0 <= 0 ? 1 : 0) <= i && i < len ==> c[i].Ref__Integer_value == i + 2
; [eval] (0 <= 0 ? 1 : 0) <= i && i < len
; [eval] (0 <= 0 ? 1 : 0) <= i
; [eval] (0 <= 0 ? 1 : 0)
; [eval] 0 <= 0
(push) ; 5
(push) ; 6
(set-option :timeout 10)
(assert (not false))
(check-sat)
; unknown
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
; [then-branch: 44 | True | live]
; [else-branch: 44 | False | dead]
(set-option :timeout 0)
(push) ; 6
; [then-branch: 44 | True]
(pop) ; 6
(pop) ; 5
; Joined path conditions
(push) ; 5
; [then-branch: 45 | !(1 <= i@54@01) | live]
; [else-branch: 45 | 1 <= i@54@01 | live]
(push) ; 6
; [then-branch: 45 | !(1 <= i@54@01)]
(assert (not (<= 1 i@54@01)))
(pop) ; 6
(push) ; 6
; [else-branch: 45 | 1 <= i@54@01]
(assert (<= 1 i@54@01))
; [eval] i < len
(pop) ; 6
(pop) ; 5
; Joined path conditions
; Joined path conditions
(assert (or (<= 1 i@54@01) (not (<= 1 i@54@01))))
(push) ; 5
; [then-branch: 46 | 1 <= i@54@01 && i@54@01 < len@9@01 | live]
; [else-branch: 46 | !(1 <= i@54@01 && i@54@01 < len@9@01) | live]
(push) ; 6
; [then-branch: 46 | 1 <= i@54@01 && i@54@01 < len@9@01]
(assert (and (<= 1 i@54@01) (< i@54@01 len@9@01)))
; [eval] c[i].Ref__Integer_value == i + 2
; [eval] c[i]
(push) ; 7
(assert (not (>= i@54@01 0)))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(push) ; 7
(assert (not (< i@54@01 (Seq_length c@11@01))))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(assert (and
  (forall ((r $Ref)) (!
    (=>
      (and (img@34@01 r) (and (<= 0 (inv@33@01 r)) (< (inv@33@01 r) len@9@01)))
      (=
        ($FVF.lookup_Ref__Integer_value (as sm@51@01  $FVF<Ref__Integer_value>) r)
        ($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second $t@31@01))) r)))
    :pattern (($FVF.lookup_Ref__Integer_value (as sm@51@01  $FVF<Ref__Integer_value>) r))
    :pattern (($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second $t@31@01))) r))
    :qid |qp.fvfValDef10|))
  (forall ((r $Ref)) (!
    (=>
      (and (img@37@01 r) (and (<= 0 (inv@36@01 r)) (< (inv@36@01 r) len@9@01)))
      (=
        ($FVF.lookup_Ref__Integer_value (as sm@51@01  $FVF<Ref__Integer_value>) r)
        ($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@31@01))))) r)))
    :pattern (($FVF.lookup_Ref__Integer_value (as sm@51@01  $FVF<Ref__Integer_value>) r))
    :pattern (($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@31@01))))) r))
    :qid |qp.fvfValDef11|))
  (forall ((r $Ref)) (!
    (=>
      (and (img@40@01 r) (and (<= 0 (inv@39@01 r)) (< (inv@39@01 r) len@9@01)))
      (=
        ($FVF.lookup_Ref__Integer_value (as sm@51@01  $FVF<Ref__Integer_value>) r)
        ($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@31@01))))))) r)))
    :pattern (($FVF.lookup_Ref__Integer_value (as sm@51@01  $FVF<Ref__Integer_value>) r))
    :pattern (($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@31@01))))))) r))
    :qid |qp.fvfValDef12|))
  (forall ((r $Ref)) (!
    (=>
      (and
        (img@43@01 r)
        (and (<= 0 (inv@42@01 r)) (< (inv@42@01 r) (- len@9@01 1))))
      (=
        ($FVF.lookup_Ref__Integer_value (as sm@51@01  $FVF<Ref__Integer_value>) r)
        ($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@31@01)))))))) r)))
    :pattern (($FVF.lookup_Ref__Integer_value (as sm@51@01  $FVF<Ref__Integer_value>) r))
    :pattern (($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@31@01)))))))) r))
    :qid |qp.fvfValDef13|))))
(push) ; 7
(assert (not (<
  $Perm.No
  (+
    (+
      (+
        (ite
          (and
            (img@34@01 (Seq_index c@11@01 i@54@01))
            (and
              (<= 0 (inv@33@01 (Seq_index c@11@01 i@54@01)))
              (< (inv@33@01 (Seq_index c@11@01 i@54@01)) len@9@01)))
          (/ (to_real 1) (to_real 2))
          $Perm.No)
        (ite
          (and
            (img@37@01 (Seq_index c@11@01 i@54@01))
            (and
              (<= 0 (inv@36@01 (Seq_index c@11@01 i@54@01)))
              (< (inv@36@01 (Seq_index c@11@01 i@54@01)) len@9@01)))
          (/ (to_real 1) (to_real 2))
          $Perm.No))
      (ite
        (and
          (img@40@01 (Seq_index c@11@01 i@54@01))
          (and
            (<= 0 (inv@39@01 (Seq_index c@11@01 i@54@01)))
            (< (inv@39@01 (Seq_index c@11@01 i@54@01)) len@9@01)))
        $Perm.Write
        $Perm.No))
    (ite
      (and
        (img@43@01 (Seq_index c@11@01 i@54@01))
        (and
          (<= 0 (inv@42@01 (Seq_index c@11@01 i@54@01)))
          (< (inv@42@01 (Seq_index c@11@01 i@54@01)) (- len@9@01 1))))
      (/ (to_real 1) (to_real 2))
      $Perm.No)))))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
; [eval] i + 2
(pop) ; 6
(push) ; 6
; [else-branch: 46 | !(1 <= i@54@01 && i@54@01 < len@9@01)]
(assert (not (and (<= 1 i@54@01) (< i@54@01 len@9@01))))
(pop) ; 6
(pop) ; 5
; Joined path conditions
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@34@01 r) (and (<= 0 (inv@33@01 r)) (< (inv@33@01 r) len@9@01)))
    (=
      ($FVF.lookup_Ref__Integer_value (as sm@51@01  $FVF<Ref__Integer_value>) r)
      ($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second $t@31@01))) r)))
  :pattern (($FVF.lookup_Ref__Integer_value (as sm@51@01  $FVF<Ref__Integer_value>) r))
  :pattern (($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second $t@31@01))) r))
  :qid |qp.fvfValDef10|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@37@01 r) (and (<= 0 (inv@36@01 r)) (< (inv@36@01 r) len@9@01)))
    (=
      ($FVF.lookup_Ref__Integer_value (as sm@51@01  $FVF<Ref__Integer_value>) r)
      ($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@31@01))))) r)))
  :pattern (($FVF.lookup_Ref__Integer_value (as sm@51@01  $FVF<Ref__Integer_value>) r))
  :pattern (($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@31@01))))) r))
  :qid |qp.fvfValDef11|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@40@01 r) (and (<= 0 (inv@39@01 r)) (< (inv@39@01 r) len@9@01)))
    (=
      ($FVF.lookup_Ref__Integer_value (as sm@51@01  $FVF<Ref__Integer_value>) r)
      ($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@31@01))))))) r)))
  :pattern (($FVF.lookup_Ref__Integer_value (as sm@51@01  $FVF<Ref__Integer_value>) r))
  :pattern (($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@31@01))))))) r))
  :qid |qp.fvfValDef12|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@43@01 r)
      (and (<= 0 (inv@42@01 r)) (< (inv@42@01 r) (- len@9@01 1))))
    (=
      ($FVF.lookup_Ref__Integer_value (as sm@51@01  $FVF<Ref__Integer_value>) r)
      ($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@31@01)))))))) r)))
  :pattern (($FVF.lookup_Ref__Integer_value (as sm@51@01  $FVF<Ref__Integer_value>) r))
  :pattern (($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@31@01)))))))) r))
  :qid |qp.fvfValDef13|)))
; Joined path conditions
(assert (or
  (not (and (<= 1 i@54@01) (< i@54@01 len@9@01)))
  (and (<= 1 i@54@01) (< i@54@01 len@9@01))))
(pop) ; 4
; Nested auxiliary terms: globals (aux)
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@34@01 r) (and (<= 0 (inv@33@01 r)) (< (inv@33@01 r) len@9@01)))
    (=
      ($FVF.lookup_Ref__Integer_value (as sm@51@01  $FVF<Ref__Integer_value>) r)
      ($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second $t@31@01))) r)))
  :pattern (($FVF.lookup_Ref__Integer_value (as sm@51@01  $FVF<Ref__Integer_value>) r))
  :pattern (($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second $t@31@01))) r))
  :qid |qp.fvfValDef10|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@37@01 r) (and (<= 0 (inv@36@01 r)) (< (inv@36@01 r) len@9@01)))
    (=
      ($FVF.lookup_Ref__Integer_value (as sm@51@01  $FVF<Ref__Integer_value>) r)
      ($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@31@01))))) r)))
  :pattern (($FVF.lookup_Ref__Integer_value (as sm@51@01  $FVF<Ref__Integer_value>) r))
  :pattern (($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@31@01))))) r))
  :qid |qp.fvfValDef11|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@40@01 r) (and (<= 0 (inv@39@01 r)) (< (inv@39@01 r) len@9@01)))
    (=
      ($FVF.lookup_Ref__Integer_value (as sm@51@01  $FVF<Ref__Integer_value>) r)
      ($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@31@01))))))) r)))
  :pattern (($FVF.lookup_Ref__Integer_value (as sm@51@01  $FVF<Ref__Integer_value>) r))
  :pattern (($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@31@01))))))) r))
  :qid |qp.fvfValDef12|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@43@01 r)
      (and (<= 0 (inv@42@01 r)) (< (inv@42@01 r) (- len@9@01 1))))
    (=
      ($FVF.lookup_Ref__Integer_value (as sm@51@01  $FVF<Ref__Integer_value>) r)
      ($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@31@01)))))))) r)))
  :pattern (($FVF.lookup_Ref__Integer_value (as sm@51@01  $FVF<Ref__Integer_value>) r))
  :pattern (($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@31@01)))))))) r))
  :qid |qp.fvfValDef13|)))
; Nested auxiliary terms: non-globals (aux)
(assert (forall ((i@54@01 Int)) (!
  (and
    (or (<= 1 i@54@01) (not (<= 1 i@54@01)))
    (or
      (not (and (<= 1 i@54@01) (< i@54@01 len@9@01)))
      (and (<= 1 i@54@01) (< i@54@01 len@9@01))))
  :pattern ((Seq_index c@11@01 i@54@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/third_party/test_forward_dep_c.vpr@81@12@81@104-aux|)))
(assert (forall ((i@54@01 Int)) (!
  (=>
    (and (<= 1 i@54@01) (< i@54@01 len@9@01))
    (=
      ($FVF.lookup_Ref__Integer_value (as sm@51@01  $FVF<Ref__Integer_value>) (Seq_index
        c@11@01
        i@54@01))
      (+ i@54@01 2)))
  :pattern ((Seq_index c@11@01 i@54@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/third_party/test_forward_dep_c.vpr@81@12@81@104|)))
(pop) ; 3
(pop) ; 2
(push) ; 2
; [exec]
; inhale false
(pop) ; 2
(pop) ; 1
; ---------- Ref__send_body_183 ----------
(declare-const diz@55@01 $Ref)
(declare-const current_thread_id@56@01 Int)
(declare-const a@57@01 Seq<$Ref>)
(declare-const i@58@01 Int)
(declare-const diz@59@01 $Ref)
(declare-const current_thread_id@60@01 Int)
(declare-const a@61@01 Seq<$Ref>)
(declare-const i@62@01 Int)
(push) ; 1
(declare-const $t@63@01 $Snap)
(assert (= $t@63@01 ($Snap.combine ($Snap.first $t@63@01) ($Snap.second $t@63@01))))
(assert (= ($Snap.first $t@63@01) $Snap.unit))
; [eval] diz != null
(assert (not (= diz@59@01 $Ref.null)))
(assert (=
  ($Snap.second $t@63@01)
  ($Snap.combine
    ($Snap.first ($Snap.second $t@63@01))
    ($Snap.second ($Snap.second $t@63@01)))))
(assert (= ($Snap.first ($Snap.second $t@63@01)) $Snap.unit))
; [eval] current_thread_id >= 0
(assert (>= current_thread_id@60@01 0))
(assert (=
  ($Snap.second ($Snap.second $t@63@01))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second $t@63@01)))
    ($Snap.second ($Snap.second ($Snap.second $t@63@01))))))
(assert (= ($Snap.first ($Snap.second ($Snap.second $t@63@01))) $Snap.unit))
; [eval] 0 <= i
(assert (<= 0 i@62@01))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second $t@63@01)))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@63@01))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@63@01)))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@63@01))))
  $Snap.unit))
; [eval] i < |a|
; [eval] |a|
(assert (< i@62@01 (Seq_length a@61@01)))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@63@01))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@63@01)))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@63@01))))))))
; [eval] a[i]
(push) ; 2
(assert (not (>= i@62@01 0)))
(check-sat)
; unsat
(pop) ; 2
; 0.00s
; (get-info :all-statistics)
(assert (not (= (Seq_index a@61@01 i@62@01) $Ref.null)))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@63@01)))))
  $Snap.unit))
; [eval] a[i].Ref__Integer_value == i + 1
; [eval] a[i]
(push) ; 2
(assert (not (>= i@62@01 0)))
(check-sat)
; unsat
(pop) ; 2
; 0.00s
; (get-info :all-statistics)
; [eval] i + 1
(assert (=
  ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@63@01))))))
  (+ i@62@01 1)))
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
; ---------- Ref__recv_body_185 ----------
(declare-const diz@64@01 $Ref)
(declare-const current_thread_id@65@01 Int)
(declare-const a@66@01 Seq<$Ref>)
(declare-const i@67@01 Int)
(declare-const diz@68@01 $Ref)
(declare-const current_thread_id@69@01 Int)
(declare-const a@70@01 Seq<$Ref>)
(declare-const i@71@01 Int)
(push) ; 1
(declare-const $t@72@01 $Snap)
(assert (= $t@72@01 ($Snap.combine ($Snap.first $t@72@01) ($Snap.second $t@72@01))))
(assert (= ($Snap.first $t@72@01) $Snap.unit))
; [eval] diz != null
(assert (not (= diz@68@01 $Ref.null)))
(assert (=
  ($Snap.second $t@72@01)
  ($Snap.combine
    ($Snap.first ($Snap.second $t@72@01))
    ($Snap.second ($Snap.second $t@72@01)))))
(assert (= ($Snap.first ($Snap.second $t@72@01)) $Snap.unit))
; [eval] current_thread_id >= 0
(assert (>= current_thread_id@69@01 0))
(assert (=
  ($Snap.second ($Snap.second $t@72@01))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second $t@72@01)))
    ($Snap.second ($Snap.second ($Snap.second $t@72@01))))))
(assert (= ($Snap.first ($Snap.second ($Snap.second $t@72@01))) $Snap.unit))
; [eval] 0 < i
(assert (< 0 i@71@01))
(assert (= ($Snap.second ($Snap.second ($Snap.second $t@72@01))) $Snap.unit))
; [eval] i <= |a|
; [eval] |a|
(assert (<= i@71@01 (Seq_length a@70@01)))
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
(set-option :timeout 0)
(push) ; 2
(declare-const $t@73@01 $Snap)
(assert (= $t@73@01 ($Snap.combine ($Snap.first $t@73@01) ($Snap.second $t@73@01))))
; [eval] a[i - 1]
; [eval] i - 1
(push) ; 3
(assert (not (>= (- i@71@01 1) 0)))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(push) ; 3
(assert (not (< (- i@71@01 1) (Seq_length a@70@01))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(assert (not (= (Seq_index a@70@01 (- i@71@01 1)) $Ref.null)))
(assert (= ($Snap.second $t@73@01) $Snap.unit))
; [eval] a[i - 1].Ref__Integer_value == i
; [eval] a[i - 1]
; [eval] i - 1
(push) ; 3
(assert (not (>= (- i@71@01 1) 0)))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(push) ; 3
(assert (not (< (- i@71@01 1) (Seq_length a@70@01))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(assert (= ($SortWrappers.$SnapToInt ($Snap.first $t@73@01)) i@71@01))
(pop) ; 2
(push) ; 2
; [exec]
; inhale false
(pop) ; 2
(pop) ; 1
; ---------- Ref__loop_body_67 ----------
(declare-const diz@74@01 $Ref)
(declare-const current_thread_id@75@01 Int)
(declare-const len@76@01 Int)
(declare-const b@77@01 Seq<$Ref>)
(declare-const a@78@01 Seq<$Ref>)
(declare-const i@79@01 Int)
(declare-const c@80@01 Seq<$Ref>)
(declare-const diz@81@01 $Ref)
(declare-const current_thread_id@82@01 Int)
(declare-const len@83@01 Int)
(declare-const b@84@01 Seq<$Ref>)
(declare-const a@85@01 Seq<$Ref>)
(declare-const i@86@01 Int)
(declare-const c@87@01 Seq<$Ref>)
(push) ; 1
(declare-const $t@88@01 $Snap)
(assert (= $t@88@01 ($Snap.combine ($Snap.first $t@88@01) ($Snap.second $t@88@01))))
(assert (= ($Snap.first $t@88@01) $Snap.unit))
; [eval] diz != null
(assert (not (= diz@81@01 $Ref.null)))
(assert (=
  ($Snap.second $t@88@01)
  ($Snap.combine
    ($Snap.first ($Snap.second $t@88@01))
    ($Snap.second ($Snap.second $t@88@01)))))
(assert (= ($Snap.first ($Snap.second $t@88@01)) $Snap.unit))
; [eval] current_thread_id >= 0
(assert (>= current_thread_id@82@01 0))
(assert (=
  ($Snap.second ($Snap.second $t@88@01))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second $t@88@01)))
    ($Snap.second ($Snap.second ($Snap.second $t@88@01))))))
(assert (= ($Snap.first ($Snap.second ($Snap.second $t@88@01))) $Snap.unit))
; [eval] 0 <= i
(assert (<= 0 i@86@01))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second $t@88@01)))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@88@01))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@88@01)))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@88@01))))
  $Snap.unit))
; [eval] i < len
(assert (< i@86@01 len@83@01))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@88@01))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@88@01)))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@88@01))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@88@01)))))
  $Snap.unit))
; [eval] |a| == len
; [eval] |a|
(assert (= (Seq_length a@85@01) len@83@01))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@88@01)))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@88@01))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@88@01)))))))))
; [eval] a[i]
(push) ; 2
(assert (not (>= i@86@01 0)))
(check-sat)
; unsat
(pop) ; 2
; 0.00s
; (get-info :all-statistics)
(push) ; 2
(assert (not (< i@86@01 (Seq_length a@85@01))))
(check-sat)
; unsat
(pop) ; 2
; 0.00s
; (get-info :all-statistics)
(assert (not (= (Seq_index a@85@01 i@86@01) $Ref.null)))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@88@01))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@88@01)))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@88@01))))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@88@01)))))))
  $Snap.unit))
; [eval] |b| == len
; [eval] |b|
(assert (= (Seq_length b@84@01) len@83@01))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@88@01)))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@88@01))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@88@01)))))))))))
; [eval] b[i]
(push) ; 2
(assert (not (>= i@86@01 0)))
(check-sat)
; unsat
(pop) ; 2
; 0.00s
; (get-info :all-statistics)
(push) ; 2
(assert (not (< i@86@01 (Seq_length b@84@01))))
(check-sat)
; unsat
(pop) ; 2
; 0.00s
; (get-info :all-statistics)
(push) ; 2
(set-option :timeout 10)
(assert (not (= (Seq_index a@85@01 i@86@01) (Seq_index b@84@01 i@86@01))))
(check-sat)
; unknown
(pop) ; 2
; 0.00s
; (get-info :all-statistics)
(assert (not (= (Seq_index b@84@01 i@86@01) $Ref.null)))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@88@01))))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@88@01)))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@88@01))))))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@88@01)))))))))
  $Snap.unit))
; [eval] |c| == len
; [eval] |c|
(assert (= (Seq_length c@87@01) len@83@01))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@88@01)))))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@88@01))))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@88@01)))))))))))))
; [eval] c[i]
(set-option :timeout 0)
(push) ; 2
(assert (not (>= i@86@01 0)))
(check-sat)
; unsat
(pop) ; 2
; 0.00s
; (get-info :all-statistics)
(push) ; 2
(assert (not (< i@86@01 (Seq_length c@87@01))))
(check-sat)
; unsat
(pop) ; 2
; 0.00s
; (get-info :all-statistics)
(push) ; 2
(set-option :timeout 10)
(assert (not (= (Seq_index b@84@01 i@86@01) (Seq_index c@87@01 i@86@01))))
(check-sat)
; unknown
(pop) ; 2
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 2
(set-option :timeout 10)
(assert (not (= (Seq_index a@85@01 i@86@01) (Seq_index c@87@01 i@86@01))))
(check-sat)
; unknown
(pop) ; 2
; 0.00s
; (get-info :all-statistics)
(assert (not (= (Seq_index c@87@01 i@86@01) $Ref.null)))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@88@01))))))))))
  $Snap.unit))
; [eval] b[i].Ref__Integer_value == i
; [eval] b[i]
(set-option :timeout 0)
(push) ; 2
(assert (not (>= i@86@01 0)))
(check-sat)
; unsat
(pop) ; 2
; 0.00s
; (get-info :all-statistics)
(push) ; 2
(assert (not (< i@86@01 (Seq_length b@84@01))))
(check-sat)
; unsat
(pop) ; 2
; 0.00s
; (get-info :all-statistics)
(assert (=
  ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@88@01)))))))))
  i@86@01))
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
(set-option :timeout 0)
(push) ; 2
(declare-const $t@89@01 $Snap)
(assert (= $t@89@01 ($Snap.combine ($Snap.first $t@89@01) ($Snap.second $t@89@01))))
(assert (= ($Snap.first $t@89@01) $Snap.unit))
; [eval] 0 <= i
(assert (=
  ($Snap.second $t@89@01)
  ($Snap.combine
    ($Snap.first ($Snap.second $t@89@01))
    ($Snap.second ($Snap.second $t@89@01)))))
(assert (= ($Snap.first ($Snap.second $t@89@01)) $Snap.unit))
; [eval] i < len
(assert (=
  ($Snap.second ($Snap.second $t@89@01))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second $t@89@01)))
    ($Snap.second ($Snap.second ($Snap.second $t@89@01))))))
(assert (= ($Snap.first ($Snap.second ($Snap.second $t@89@01))) $Snap.unit))
; [eval] |a| == len
; [eval] |a|
(assert (=
  ($Snap.second ($Snap.second ($Snap.second $t@89@01)))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@89@01))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@89@01)))))))
; [eval] a[i]
(push) ; 3
(assert (not (>= i@86@01 0)))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(push) ; 3
(assert (not (< i@86@01 (Seq_length a@85@01))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@89@01))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@89@01)))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@89@01))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@89@01)))))
  $Snap.unit))
; [eval] |b| == len
; [eval] |b|
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@89@01)))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@89@01))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@89@01)))))))))
; [eval] b[i]
(push) ; 3
(assert (not (>= i@86@01 0)))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(push) ; 3
(assert (not (< i@86@01 (Seq_length b@84@01))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(push) ; 3
(set-option :timeout 10)
(assert (not (= (Seq_index a@85@01 i@86@01) (Seq_index b@84@01 i@86@01))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@89@01))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@89@01)))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@89@01))))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@89@01)))))))
  $Snap.unit))
; [eval] |c| == len
; [eval] |c|
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@89@01)))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@89@01))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@89@01)))))))))))
; [eval] c[i]
(set-option :timeout 0)
(push) ; 3
(assert (not (>= i@86@01 0)))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(push) ; 3
(assert (not (< i@86@01 (Seq_length c@87@01))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(push) ; 3
(set-option :timeout 10)
(assert (not (= (Seq_index b@84@01 i@86@01) (Seq_index c@87@01 i@86@01))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (= (Seq_index a@85@01 i@86@01) (Seq_index c@87@01 i@86@01))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@89@01))))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@89@01)))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@89@01))))))))))))
; [eval] i > 0
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (not (> i@86@01 0))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (> i@86@01 0)))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; [then-branch: 47 | i@86@01 > 0 | live]
; [else-branch: 47 | !(i@86@01 > 0) | live]
(set-option :timeout 0)
(push) ; 3
; [then-branch: 47 | i@86@01 > 0]
(assert (> i@86@01 0))
; [eval] a[i - 1]
; [eval] i - 1
(push) ; 4
(assert (not (>= (- i@86@01 1) 0)))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(push) ; 4
(assert (not (< (- i@86@01 1) (Seq_length a@85@01))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(push) ; 4
(set-option :timeout 10)
(assert (not (= (Seq_index c@87@01 i@86@01) (Seq_index a@85@01 (- i@86@01 1)))))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not (= (Seq_index b@84@01 i@86@01) (Seq_index a@85@01 (- i@86@01 1)))))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not (= (Seq_index a@85@01 i@86@01) (Seq_index a@85@01 (- i@86@01 1)))))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(assert (not (= (Seq_index a@85@01 (- i@86@01 1)) $Ref.null)))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@89@01)))))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@89@01))))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@89@01)))))))))))))
; [eval] i == |a| - 1
; [eval] |a| - 1
; [eval] |a|
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not (not (= i@86@01 (- (Seq_length a@85@01) 1)))))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not (= i@86@01 (- (Seq_length a@85@01) 1))))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; [then-branch: 48 | i@86@01 == |a@85@01| - 1 | live]
; [else-branch: 48 | i@86@01 != |a@85@01| - 1 | live]
(set-option :timeout 0)
(push) ; 4
; [then-branch: 48 | i@86@01 == |a@85@01| - 1]
(assert (= i@86@01 (- (Seq_length a@85@01) 1)))
; [eval] a[i]
(push) ; 5
(assert (not (>= i@86@01 0)))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(push) ; 5
(assert (not (< i@86@01 (Seq_length a@85@01))))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(assert (=
  ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@89@01)))))
  ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@89@01)))))))))))))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@89@01))))))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@89@01)))))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@89@01))))))))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@89@01)))))))))))
  $Snap.unit))
; [eval] a[i].Ref__Integer_value == i + 1
; [eval] a[i]
(push) ; 5
(assert (not (>= i@86@01 0)))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(push) ; 5
(assert (not (< i@86@01 (Seq_length a@85@01))))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
; [eval] i + 1
(assert (=
  ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@89@01)))))
  (+ i@86@01 1)))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@89@01)))))))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@89@01))))))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@89@01)))))))))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@89@01))))))))))))
  $Snap.unit))
; [eval] b[i].Ref__Integer_value == i
; [eval] b[i]
(push) ; 5
(assert (not (>= i@86@01 0)))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(push) ; 5
(assert (not (< i@86@01 (Seq_length b@84@01))))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(assert (=
  ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@89@01)))))))
  i@86@01))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@89@01))))))))))))
  $Snap.unit))
; [eval] i > 0 ==> c[i].Ref__Integer_value == i + 2
; [eval] i > 0
(push) ; 5
(push) ; 6
(set-option :timeout 10)
(assert (not (not (> i@86@01 0))))
(check-sat)
; unknown
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
; [then-branch: 49 | i@86@01 > 0 | live]
; [else-branch: 49 | !(i@86@01 > 0) | dead]
(set-option :timeout 0)
(push) ; 6
; [then-branch: 49 | i@86@01 > 0]
; [eval] c[i].Ref__Integer_value == i + 2
; [eval] c[i]
(push) ; 7
(assert (not (>= i@86@01 0)))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(push) ; 7
(assert (not (< i@86@01 (Seq_length c@87@01))))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
; [eval] i + 2
(pop) ; 6
(pop) ; 5
; Joined path conditions
(assert (=>
  (> i@86@01 0)
  (=
    ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@89@01)))))))))
    (+ i@86@01 2))))
(pop) ; 4
(push) ; 4
; [else-branch: 48 | i@86@01 != |a@85@01| - 1]
(assert (not (= i@86@01 (- (Seq_length a@85@01) 1))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@89@01))))))))))
  $Snap.unit))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@89@01))))))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@89@01)))))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@89@01))))))))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@89@01)))))))))))
  $Snap.unit))
; [eval] a[i].Ref__Integer_value == i + 1
; [eval] a[i]
(push) ; 5
(assert (not (>= i@86@01 0)))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(push) ; 5
(assert (not (< i@86@01 (Seq_length a@85@01))))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
; [eval] i + 1
(assert (=
  ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@89@01)))))
  (+ i@86@01 1)))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@89@01)))))))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@89@01))))))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@89@01)))))))))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@89@01))))))))))))
  $Snap.unit))
; [eval] b[i].Ref__Integer_value == i
; [eval] b[i]
(push) ; 5
(assert (not (>= i@86@01 0)))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(push) ; 5
(assert (not (< i@86@01 (Seq_length b@84@01))))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(assert (=
  ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@89@01)))))))
  i@86@01))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@89@01))))))))))))
  $Snap.unit))
; [eval] i > 0 ==> c[i].Ref__Integer_value == i + 2
; [eval] i > 0
(push) ; 5
(push) ; 6
(set-option :timeout 10)
(assert (not (not (> i@86@01 0))))
(check-sat)
; unknown
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
; [then-branch: 50 | i@86@01 > 0 | live]
; [else-branch: 50 | !(i@86@01 > 0) | dead]
(set-option :timeout 0)
(push) ; 6
; [then-branch: 50 | i@86@01 > 0]
; [eval] c[i].Ref__Integer_value == i + 2
; [eval] c[i]
(push) ; 7
(assert (not (>= i@86@01 0)))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(push) ; 7
(assert (not (< i@86@01 (Seq_length c@87@01))))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
; [eval] i + 2
(pop) ; 6
(pop) ; 5
; Joined path conditions
(assert (=>
  (> i@86@01 0)
  (=
    ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@89@01)))))))))
    (+ i@86@01 2))))
(pop) ; 4
(pop) ; 3
(push) ; 3
; [else-branch: 47 | !(i@86@01 > 0)]
(assert (not (> i@86@01 0)))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@89@01)))))))))
  $Snap.unit))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@89@01)))))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@89@01))))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@89@01)))))))))))))
; [eval] i == |a| - 1
; [eval] |a| - 1
; [eval] |a|
(push) ; 4
(set-option :timeout 10)
(assert (not (not (= i@86@01 (- (Seq_length a@85@01) 1)))))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not (= i@86@01 (- (Seq_length a@85@01) 1))))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; [then-branch: 51 | i@86@01 == |a@85@01| - 1 | live]
; [else-branch: 51 | i@86@01 != |a@85@01| - 1 | live]
(set-option :timeout 0)
(push) ; 4
; [then-branch: 51 | i@86@01 == |a@85@01| - 1]
(assert (= i@86@01 (- (Seq_length a@85@01) 1)))
; [eval] a[i]
(push) ; 5
(assert (not (>= i@86@01 0)))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(push) ; 5
(assert (not (< i@86@01 (Seq_length a@85@01))))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(assert (=
  ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@89@01)))))
  ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@89@01)))))))))))))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@89@01))))))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@89@01)))))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@89@01))))))))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@89@01)))))))))))
  $Snap.unit))
; [eval] a[i].Ref__Integer_value == i + 1
; [eval] a[i]
(push) ; 5
(assert (not (>= i@86@01 0)))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(push) ; 5
(assert (not (< i@86@01 (Seq_length a@85@01))))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
; [eval] i + 1
(assert (=
  ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@89@01)))))
  (+ i@86@01 1)))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@89@01)))))))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@89@01))))))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@89@01)))))))))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@89@01))))))))))))
  $Snap.unit))
; [eval] b[i].Ref__Integer_value == i
; [eval] b[i]
(push) ; 5
(assert (not (>= i@86@01 0)))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(push) ; 5
(assert (not (< i@86@01 (Seq_length b@84@01))))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(assert (=
  ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@89@01)))))))
  i@86@01))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@89@01))))))))))))
  $Snap.unit))
; [eval] i > 0 ==> c[i].Ref__Integer_value == i + 2
; [eval] i > 0
(push) ; 5
; [then-branch: 52 | i@86@01 > 0 | dead]
; [else-branch: 52 | !(i@86@01 > 0) | live]
(push) ; 6
; [else-branch: 52 | !(i@86@01 > 0)]
(pop) ; 6
(pop) ; 5
; Joined path conditions
(pop) ; 4
(push) ; 4
; [else-branch: 51 | i@86@01 != |a@85@01| - 1]
(assert (not (= i@86@01 (- (Seq_length a@85@01) 1))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@89@01))))))))))
  $Snap.unit))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@89@01))))))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@89@01)))))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@89@01))))))))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@89@01)))))))))))
  $Snap.unit))
; [eval] a[i].Ref__Integer_value == i + 1
; [eval] a[i]
(push) ; 5
(assert (not (>= i@86@01 0)))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(push) ; 5
(assert (not (< i@86@01 (Seq_length a@85@01))))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
; [eval] i + 1
(assert (=
  ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@89@01)))))
  (+ i@86@01 1)))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@89@01)))))))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@89@01))))))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@89@01)))))))))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@89@01))))))))))))
  $Snap.unit))
; [eval] b[i].Ref__Integer_value == i
; [eval] b[i]
(push) ; 5
(assert (not (>= i@86@01 0)))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(push) ; 5
(assert (not (< i@86@01 (Seq_length b@84@01))))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(assert (=
  ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@89@01)))))))
  i@86@01))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@89@01))))))))))))
  $Snap.unit))
; [eval] i > 0 ==> c[i].Ref__Integer_value == i + 2
; [eval] i > 0
(push) ; 5
; [then-branch: 53 | i@86@01 > 0 | dead]
; [else-branch: 53 | !(i@86@01 > 0) | live]
(push) ; 6
; [else-branch: 53 | !(i@86@01 > 0)]
(pop) ; 6
(pop) ; 5
; Joined path conditions
(pop) ; 4
(pop) ; 3
(pop) ; 2
(push) ; 2
; [exec]
; var __flatten_4: Ref
(declare-const __flatten_4@90@01 $Ref)
; [exec]
; var __flatten_5: Int
(declare-const __flatten_5@91@01 Int)
; [exec]
; var __flatten_6: Ref
(declare-const __flatten_6@92@01 $Ref)
; [exec]
; var __flatten_9: Ref
(declare-const __flatten_9@93@01 $Ref)
; [exec]
; var __flatten_10: Int
(declare-const __flatten_10@94@01 Int)
; [exec]
; var __flatten_11: Ref
(declare-const __flatten_11@95@01 $Ref)
; [exec]
; __flatten_4 := a[i]
; [eval] a[i]
(push) ; 3
(assert (not (>= i@86@01 0)))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(push) ; 3
(assert (not (< i@86@01 (Seq_length a@85@01))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(declare-const __flatten_4@96@01 $Ref)
(assert (= __flatten_4@96@01 (Seq_index a@85@01 i@86@01)))
; [exec]
; __flatten_6 := b[i]
; [eval] b[i]
(push) ; 3
(assert (not (>= i@86@01 0)))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(push) ; 3
(assert (not (< i@86@01 (Seq_length b@84@01))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(declare-const __flatten_6@97@01 $Ref)
(assert (= __flatten_6@97@01 (Seq_index b@84@01 i@86@01)))
; [exec]
; __flatten_5 := __flatten_6.Ref__Integer_value + 1
; [eval] __flatten_6.Ref__Integer_value + 1
(push) ; 3
(set-option :timeout 10)
(assert (not (= (Seq_index c@87@01 i@86@01) __flatten_6@97@01)))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (= (Seq_index b@84@01 i@86@01) __flatten_6@97@01)))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(declare-const __flatten_5@98@01 Int)
(assert (=
  __flatten_5@98@01
  (+
    ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@88@01)))))))))
    1)))
; [exec]
; __flatten_4.Ref__Integer_value := __flatten_5
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (= (Seq_index c@87@01 i@86@01) __flatten_4@96@01)))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (= (Seq_index b@84@01 i@86@01) __flatten_4@96@01)))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (= (Seq_index a@85@01 i@86@01) __flatten_4@96@01)))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (= (Seq_index c@87@01 i@86@01) __flatten_4@96@01)))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (= (Seq_index b@84@01 i@86@01) __flatten_4@96@01)))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(assert (not (= __flatten_4@96@01 $Ref.null)))
; [eval] i < len - 1
; [eval] len - 1
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (not (< i@86@01 (- len@83@01 1)))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (< i@86@01 (- len@83@01 1))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; [then-branch: 54 | i@86@01 < len@83@01 - 1 | live]
; [else-branch: 54 | !(i@86@01 < len@83@01 - 1) | live]
(set-option :timeout 0)
(push) ; 3
; [then-branch: 54 | i@86@01 < len@83@01 - 1]
(assert (< i@86@01 (- len@83@01 1)))
; [exec]
; Ref__send_body_183(diz, current_thread_id, a, i)
; [eval] diz != null
; [eval] current_thread_id >= 0
; [eval] 0 <= i
; [eval] i < |a|
; [eval] |a|
(push) ; 4
(assert (not (< i@86@01 (Seq_length a@85@01))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(assert (< i@86@01 (Seq_length a@85@01)))
; [eval] a[i]
(push) ; 4
(assert (not (>= i@86@01 0)))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(push) ; 4
(set-option :timeout 10)
(assert (not false))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; [eval] a[i].Ref__Integer_value == i + 1
; [eval] a[i]
(set-option :timeout 0)
(push) ; 4
(assert (not (>= i@86@01 0)))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; [eval] i + 1
(push) ; 4
(assert (not (= __flatten_5@98@01 (+ i@86@01 1))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(assert (= __flatten_5@98@01 (+ i@86@01 1)))
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
; [eval] i > 0
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not (not (> i@86@01 0))))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not (> i@86@01 0)))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; [then-branch: 55 | i@86@01 > 0 | live]
; [else-branch: 55 | !(i@86@01 > 0) | live]
(set-option :timeout 0)
(push) ; 4
; [then-branch: 55 | i@86@01 > 0]
(assert (> i@86@01 0))
; [exec]
; Ref__recv_body_185(diz, current_thread_id, a, i)
; [eval] diz != null
; [eval] current_thread_id >= 0
; [eval] 0 < i
(push) ; 5
(assert (not (< 0 i@86@01)))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(assert (< 0 i@86@01))
; [eval] i <= |a|
; [eval] |a|
(push) ; 5
(assert (not (<= i@86@01 (Seq_length a@85@01))))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(assert (<= i@86@01 (Seq_length a@85@01)))
(declare-const $t@99@01 $Snap)
(assert (= $t@99@01 ($Snap.combine ($Snap.first $t@99@01) ($Snap.second $t@99@01))))
; [eval] a[i - 1]
; [eval] i - 1
(push) ; 5
(assert (not (>= (- i@86@01 1) 0)))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(push) ; 5
(assert (not (< (- i@86@01 1) (Seq_length a@85@01))))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(push) ; 5
(set-option :timeout 10)
(assert (not (= (Seq_index c@87@01 i@86@01) (Seq_index a@85@01 (- i@86@01 1)))))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 5
(set-option :timeout 10)
(assert (not (= (Seq_index b@84@01 i@86@01) (Seq_index a@85@01 (- i@86@01 1)))))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 5
(set-option :timeout 10)
(assert (not (= __flatten_4@96@01 (Seq_index a@85@01 (- i@86@01 1)))))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(assert (not (= (Seq_index a@85@01 (- i@86@01 1)) $Ref.null)))
(assert (= ($Snap.second $t@99@01) $Snap.unit))
; [eval] a[i - 1].Ref__Integer_value == i
; [eval] a[i - 1]
; [eval] i - 1
(set-option :timeout 0)
(push) ; 5
(assert (not (>= (- i@86@01 1) 0)))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(push) ; 5
(assert (not (< (- i@86@01 1) (Seq_length a@85@01))))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(assert (= ($SortWrappers.$SnapToInt ($Snap.first $t@99@01)) i@86@01))
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
; [exec]
; __flatten_9 := c[i]
; [eval] c[i]
(set-option :timeout 0)
(push) ; 5
(assert (not (>= i@86@01 0)))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(push) ; 5
(assert (not (< i@86@01 (Seq_length c@87@01))))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(declare-const __flatten_9@100@01 $Ref)
(assert (= __flatten_9@100@01 (Seq_index c@87@01 i@86@01)))
; [exec]
; __flatten_11 := a[i - 1]
; [eval] a[i - 1]
; [eval] i - 1
(push) ; 5
(assert (not (>= (- i@86@01 1) 0)))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(push) ; 5
(assert (not (< (- i@86@01 1) (Seq_length a@85@01))))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(declare-const __flatten_11@101@01 $Ref)
(assert (= __flatten_11@101@01 (Seq_index a@85@01 (- i@86@01 1))))
; [exec]
; __flatten_10 := __flatten_11.Ref__Integer_value + 2
; [eval] __flatten_11.Ref__Integer_value + 2
(push) ; 5
(set-option :timeout 10)
(assert (not (= (Seq_index a@85@01 (- i@86@01 1)) __flatten_11@101@01)))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(declare-const __flatten_10@102@01 Int)
(assert (= __flatten_10@102@01 (+ ($SortWrappers.$SnapToInt ($Snap.first $t@99@01)) 2)))
; [exec]
; __flatten_9.Ref__Integer_value := __flatten_10
(set-option :timeout 0)
(push) ; 5
(set-option :timeout 10)
(assert (not (= (Seq_index a@85@01 (- i@86@01 1)) __flatten_9@100@01)))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 5
(set-option :timeout 10)
(assert (not (= (Seq_index c@87@01 i@86@01) __flatten_9@100@01)))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 5
(set-option :timeout 10)
(assert (not (= (Seq_index a@85@01 (- i@86@01 1)) __flatten_9@100@01)))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 5
(set-option :timeout 10)
(assert (not (= (Seq_index b@84@01 i@86@01) __flatten_9@100@01)))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 5
(set-option :timeout 10)
(assert (not (= __flatten_4@96@01 __flatten_9@100@01)))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(assert (not (= __flatten_9@100@01 $Ref.null)))
; [eval] 0 <= i
; [eval] i < len
; [eval] |a| == len
; [eval] |a|
; [eval] a[i]
(set-option :timeout 0)
(push) ; 5
(assert (not (>= i@86@01 0)))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(push) ; 5
(set-option :timeout 10)
(assert (not (= __flatten_9@100@01 (Seq_index a@85@01 i@86@01))))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 5
(set-option :timeout 10)
(assert (not (= (Seq_index a@85@01 (- i@86@01 1)) (Seq_index a@85@01 i@86@01))))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 5
(set-option :timeout 10)
(assert (not (= (Seq_index b@84@01 i@86@01) (Seq_index a@85@01 i@86@01))))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
; [eval] |b| == len
; [eval] |b|
; [eval] b[i]
(set-option :timeout 0)
(push) ; 5
(assert (not (>= i@86@01 0)))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(push) ; 5
(assert (not (< i@86@01 (Seq_length b@84@01))))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
; [eval] |c| == len
; [eval] |c|
; [eval] c[i]
(push) ; 5
(assert (not (>= i@86@01 0)))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(push) ; 5
(assert (not (< i@86@01 (Seq_length c@87@01))))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
; [eval] i > 0
(push) ; 5
(set-option :timeout 10)
(assert (not (not (> i@86@01 0))))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
; [then-branch: 56 | i@86@01 > 0 | live]
; [else-branch: 56 | !(i@86@01 > 0) | dead]
(set-option :timeout 0)
(push) ; 5
; [then-branch: 56 | i@86@01 > 0]
; [eval] a[i - 1]
; [eval] i - 1
(push) ; 6
(assert (not (>= (- i@86@01 1) 0)))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(push) ; 6
(assert (not (< (- i@86@01 1) (Seq_length a@85@01))))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
; [eval] i == |a| - 1
; [eval] |a| - 1
; [eval] |a|
(push) ; 6
(set-option :timeout 10)
(assert (not (not (= i@86@01 (- (Seq_length a@85@01) 1)))))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
; [then-branch: 57 | i@86@01 == |a@85@01| - 1 | dead]
; [else-branch: 57 | i@86@01 != |a@85@01| - 1 | live]
(set-option :timeout 0)
(push) ; 6
; [else-branch: 57 | i@86@01 != |a@85@01| - 1]
(assert (not (= i@86@01 (- (Seq_length a@85@01) 1))))
; [eval] a[i].Ref__Integer_value == i + 1
; [eval] a[i]
(push) ; 7
(assert (not (>= i@86@01 0)))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(push) ; 7
(set-option :timeout 10)
(assert (not (= __flatten_9@100@01 (Seq_index a@85@01 i@86@01))))
(check-sat)
; unknown
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 7
(set-option :timeout 10)
(assert (not (= (Seq_index a@85@01 (- i@86@01 1)) (Seq_index a@85@01 i@86@01))))
(check-sat)
; unknown
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 7
(set-option :timeout 10)
(assert (not (= (Seq_index b@84@01 i@86@01) (Seq_index a@85@01 i@86@01))))
(check-sat)
; unknown
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
; [eval] i + 1
; [eval] b[i].Ref__Integer_value == i
; [eval] b[i]
(set-option :timeout 0)
(push) ; 7
(assert (not (>= i@86@01 0)))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(push) ; 7
(assert (not (< i@86@01 (Seq_length b@84@01))))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
; [eval] i > 0 ==> c[i].Ref__Integer_value == i + 2
; [eval] i > 0
(push) ; 7
(push) ; 8
(set-option :timeout 10)
(assert (not (not (> i@86@01 0))))
(check-sat)
; unknown
(pop) ; 8
; 0.00s
; (get-info :all-statistics)
; [then-branch: 58 | i@86@01 > 0 | live]
; [else-branch: 58 | !(i@86@01 > 0) | dead]
(set-option :timeout 0)
(push) ; 8
; [then-branch: 58 | i@86@01 > 0]
; [eval] c[i].Ref__Integer_value == i + 2
; [eval] c[i]
(push) ; 9
(assert (not (>= i@86@01 0)))
(check-sat)
; unsat
(pop) ; 9
; 0.00s
; (get-info :all-statistics)
(push) ; 9
(assert (not (< i@86@01 (Seq_length c@87@01))))
(check-sat)
; unsat
(pop) ; 9
; 0.00s
; (get-info :all-statistics)
; [eval] i + 2
(pop) ; 8
(pop) ; 7
; Joined path conditions
(push) ; 7
(assert (not (=> (> i@86@01 0) (= __flatten_10@102@01 (+ i@86@01 2)))))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(assert (=> (> i@86@01 0) (= __flatten_10@102@01 (+ i@86@01 2))))
(pop) ; 6
(pop) ; 5
(pop) ; 4
(push) ; 4
; [else-branch: 55 | !(i@86@01 > 0)]
(assert (not (> i@86@01 0)))
(pop) ; 4
; [eval] !(i > 0)
; [eval] i > 0
(push) ; 4
(set-option :timeout 10)
(assert (not (> i@86@01 0)))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not (not (> i@86@01 0))))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; [then-branch: 59 | !(i@86@01 > 0) | live]
; [else-branch: 59 | i@86@01 > 0 | live]
(set-option :timeout 0)
(push) ; 4
; [then-branch: 59 | !(i@86@01 > 0)]
(assert (not (> i@86@01 0)))
; [eval] 0 <= i
; [eval] i < len
; [eval] |a| == len
; [eval] |a|
; [eval] a[i]
(push) ; 5
(assert (not (>= i@86@01 0)))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(push) ; 5
(set-option :timeout 10)
(assert (not (= (Seq_index c@87@01 i@86@01) (Seq_index a@85@01 i@86@01))))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 5
(set-option :timeout 10)
(assert (not (= (Seq_index b@84@01 i@86@01) (Seq_index a@85@01 i@86@01))))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
; [eval] |b| == len
; [eval] |b|
; [eval] b[i]
(set-option :timeout 0)
(push) ; 5
(assert (not (>= i@86@01 0)))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(push) ; 5
(assert (not (< i@86@01 (Seq_length b@84@01))))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
; [eval] |c| == len
; [eval] |c|
; [eval] c[i]
(push) ; 5
(assert (not (>= i@86@01 0)))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(push) ; 5
(assert (not (< i@86@01 (Seq_length c@87@01))))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
; [eval] i > 0
; [then-branch: 60 | i@86@01 > 0 | dead]
; [else-branch: 60 | !(i@86@01 > 0) | live]
(push) ; 5
; [else-branch: 60 | !(i@86@01 > 0)]
; [eval] i == |a| - 1
; [eval] |a| - 1
; [eval] |a|
(push) ; 6
(set-option :timeout 10)
(assert (not (not (= i@86@01 (- (Seq_length a@85@01) 1)))))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
; [then-branch: 61 | i@86@01 == |a@85@01| - 1 | dead]
; [else-branch: 61 | i@86@01 != |a@85@01| - 1 | live]
(set-option :timeout 0)
(push) ; 6
; [else-branch: 61 | i@86@01 != |a@85@01| - 1]
(assert (not (= i@86@01 (- (Seq_length a@85@01) 1))))
; [eval] a[i].Ref__Integer_value == i + 1
; [eval] a[i]
(push) ; 7
(assert (not (>= i@86@01 0)))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(push) ; 7
(set-option :timeout 10)
(assert (not (= (Seq_index c@87@01 i@86@01) (Seq_index a@85@01 i@86@01))))
(check-sat)
; unknown
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 7
(set-option :timeout 10)
(assert (not (= (Seq_index b@84@01 i@86@01) (Seq_index a@85@01 i@86@01))))
(check-sat)
; unknown
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
; [eval] i + 1
; [eval] b[i].Ref__Integer_value == i
; [eval] b[i]
(set-option :timeout 0)
(push) ; 7
(assert (not (>= i@86@01 0)))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(push) ; 7
(assert (not (< i@86@01 (Seq_length b@84@01))))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
; [eval] i > 0 ==> c[i].Ref__Integer_value == i + 2
; [eval] i > 0
(push) ; 7
; [then-branch: 62 | i@86@01 > 0 | dead]
; [else-branch: 62 | !(i@86@01 > 0) | live]
(push) ; 8
; [else-branch: 62 | !(i@86@01 > 0)]
(pop) ; 8
(pop) ; 7
; Joined path conditions
(pop) ; 6
(pop) ; 5
(pop) ; 4
(push) ; 4
; [else-branch: 59 | i@86@01 > 0]
(assert (> i@86@01 0))
(pop) ; 4
(pop) ; 3
(push) ; 3
; [else-branch: 54 | !(i@86@01 < len@83@01 - 1)]
(assert (not (< i@86@01 (- len@83@01 1))))
(pop) ; 3
; [eval] !(i < len - 1)
; [eval] i < len - 1
; [eval] len - 1
(push) ; 3
(set-option :timeout 10)
(assert (not (< i@86@01 (- len@83@01 1))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (not (< i@86@01 (- len@83@01 1)))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; [then-branch: 63 | !(i@86@01 < len@83@01 - 1) | live]
; [else-branch: 63 | i@86@01 < len@83@01 - 1 | live]
(set-option :timeout 0)
(push) ; 3
; [then-branch: 63 | !(i@86@01 < len@83@01 - 1)]
(assert (not (< i@86@01 (- len@83@01 1))))
; [eval] i > 0
(push) ; 4
(set-option :timeout 10)
(assert (not (not (> i@86@01 0))))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not (> i@86@01 0)))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; [then-branch: 64 | i@86@01 > 0 | live]
; [else-branch: 64 | !(i@86@01 > 0) | live]
(set-option :timeout 0)
(push) ; 4
; [then-branch: 64 | i@86@01 > 0]
(assert (> i@86@01 0))
; [exec]
; Ref__recv_body_185(diz, current_thread_id, a, i)
; [eval] diz != null
; [eval] current_thread_id >= 0
; [eval] 0 < i
(push) ; 5
(assert (not (< 0 i@86@01)))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(assert (< 0 i@86@01))
; [eval] i <= |a|
; [eval] |a|
(push) ; 5
(assert (not (<= i@86@01 (Seq_length a@85@01))))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(assert (<= i@86@01 (Seq_length a@85@01)))
(declare-const $t@103@01 $Snap)
(assert (= $t@103@01 ($Snap.combine ($Snap.first $t@103@01) ($Snap.second $t@103@01))))
; [eval] a[i - 1]
; [eval] i - 1
(push) ; 5
(assert (not (>= (- i@86@01 1) 0)))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(push) ; 5
(assert (not (< (- i@86@01 1) (Seq_length a@85@01))))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(push) ; 5
(set-option :timeout 10)
(assert (not (= __flatten_4@96@01 (Seq_index a@85@01 (- i@86@01 1)))))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 5
(set-option :timeout 10)
(assert (not (= (Seq_index c@87@01 i@86@01) (Seq_index a@85@01 (- i@86@01 1)))))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 5
(set-option :timeout 10)
(assert (not (= (Seq_index b@84@01 i@86@01) (Seq_index a@85@01 (- i@86@01 1)))))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(assert (not (= (Seq_index a@85@01 (- i@86@01 1)) $Ref.null)))
(assert (= ($Snap.second $t@103@01) $Snap.unit))
; [eval] a[i - 1].Ref__Integer_value == i
; [eval] a[i - 1]
; [eval] i - 1
(set-option :timeout 0)
(push) ; 5
(assert (not (>= (- i@86@01 1) 0)))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(push) ; 5
(assert (not (< (- i@86@01 1) (Seq_length a@85@01))))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(assert (= ($SortWrappers.$SnapToInt ($Snap.first $t@103@01)) i@86@01))
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
; [exec]
; __flatten_9 := c[i]
; [eval] c[i]
(set-option :timeout 0)
(push) ; 5
(assert (not (>= i@86@01 0)))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(push) ; 5
(assert (not (< i@86@01 (Seq_length c@87@01))))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(declare-const __flatten_9@104@01 $Ref)
(assert (= __flatten_9@104@01 (Seq_index c@87@01 i@86@01)))
; [exec]
; __flatten_11 := a[i - 1]
; [eval] a[i - 1]
; [eval] i - 1
(push) ; 5
(assert (not (>= (- i@86@01 1) 0)))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(push) ; 5
(assert (not (< (- i@86@01 1) (Seq_length a@85@01))))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(declare-const __flatten_11@105@01 $Ref)
(assert (= __flatten_11@105@01 (Seq_index a@85@01 (- i@86@01 1))))
; [exec]
; __flatten_10 := __flatten_11.Ref__Integer_value + 2
; [eval] __flatten_11.Ref__Integer_value + 2
(push) ; 5
(set-option :timeout 10)
(assert (not (= (Seq_index a@85@01 (- i@86@01 1)) __flatten_11@105@01)))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(declare-const __flatten_10@106@01 Int)
(assert (= __flatten_10@106@01 (+ ($SortWrappers.$SnapToInt ($Snap.first $t@103@01)) 2)))
; [exec]
; __flatten_9.Ref__Integer_value := __flatten_10
(set-option :timeout 0)
(push) ; 5
(set-option :timeout 10)
(assert (not (= (Seq_index a@85@01 (- i@86@01 1)) __flatten_9@104@01)))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 5
(set-option :timeout 10)
(assert (not (= __flatten_4@96@01 __flatten_9@104@01)))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 5
(set-option :timeout 10)
(assert (not (= (Seq_index c@87@01 i@86@01) __flatten_9@104@01)))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 5
(set-option :timeout 10)
(assert (not (= (Seq_index a@85@01 (- i@86@01 1)) __flatten_9@104@01)))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 5
(set-option :timeout 10)
(assert (not (= __flatten_4@96@01 __flatten_9@104@01)))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 5
(set-option :timeout 10)
(assert (not (= (Seq_index b@84@01 i@86@01) __flatten_9@104@01)))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(assert (not (= __flatten_9@104@01 $Ref.null)))
; [eval] 0 <= i
; [eval] i < len
; [eval] |a| == len
; [eval] |a|
; [eval] a[i]
(set-option :timeout 0)
(push) ; 5
(assert (not (>= i@86@01 0)))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(push) ; 5
(assert (not (< i@86@01 (Seq_length a@85@01))))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(push) ; 5
(set-option :timeout 10)
(assert (not (= __flatten_9@104@01 (Seq_index a@85@01 i@86@01))))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 5
(set-option :timeout 10)
(assert (not (= (Seq_index a@85@01 (- i@86@01 1)) (Seq_index a@85@01 i@86@01))))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 5
(set-option :timeout 10)
(assert (not false))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
; [eval] |b| == len
; [eval] |b|
; [eval] b[i]
(set-option :timeout 0)
(push) ; 5
(assert (not (>= i@86@01 0)))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(push) ; 5
(assert (not (< i@86@01 (Seq_length b@84@01))))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
; [eval] |c| == len
; [eval] |c|
; [eval] c[i]
(push) ; 5
(assert (not (>= i@86@01 0)))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(push) ; 5
(assert (not (< i@86@01 (Seq_length c@87@01))))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
; [eval] i > 0
(push) ; 5
(set-option :timeout 10)
(assert (not (not (> i@86@01 0))))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
; [then-branch: 65 | i@86@01 > 0 | live]
; [else-branch: 65 | !(i@86@01 > 0) | dead]
(set-option :timeout 0)
(push) ; 5
; [then-branch: 65 | i@86@01 > 0]
; [eval] a[i - 1]
; [eval] i - 1
(push) ; 6
(assert (not (>= (- i@86@01 1) 0)))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(push) ; 6
(assert (not (< (- i@86@01 1) (Seq_length a@85@01))))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
; [eval] i == |a| - 1
; [eval] |a| - 1
; [eval] |a|
(push) ; 6
(set-option :timeout 10)
(assert (not (not (= i@86@01 (- (Seq_length a@85@01) 1)))))
(check-sat)
; unknown
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 6
(set-option :timeout 10)
(assert (not (= i@86@01 (- (Seq_length a@85@01) 1))))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
; [then-branch: 66 | i@86@01 == |a@85@01| - 1 | live]
; [else-branch: 66 | i@86@01 != |a@85@01| - 1 | dead]
(set-option :timeout 0)
(push) ; 6
; [then-branch: 66 | i@86@01 == |a@85@01| - 1]
(assert (= i@86@01 (- (Seq_length a@85@01) 1)))
; [eval] a[i]
(push) ; 7
(assert (not (>= i@86@01 0)))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(push) ; 7
(assert (not (< i@86@01 (Seq_length a@85@01))))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
; [eval] a[i].Ref__Integer_value == i + 1
; [eval] a[i]
(push) ; 7
(assert (not (>= i@86@01 0)))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(push) ; 7
(assert (not (< i@86@01 (Seq_length a@85@01))))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(push) ; 7
(set-option :timeout 10)
(assert (not (= __flatten_9@104@01 (Seq_index a@85@01 i@86@01))))
(check-sat)
; unknown
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 7
(set-option :timeout 10)
(assert (not (= (Seq_index a@85@01 (- i@86@01 1)) (Seq_index a@85@01 i@86@01))))
(check-sat)
; unknown
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
; [eval] i + 1
(set-option :timeout 0)
(push) ; 7
(assert (not (= __flatten_5@98@01 (+ i@86@01 1))))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(assert (= __flatten_5@98@01 (+ i@86@01 1)))
; [eval] b[i].Ref__Integer_value == i
; [eval] b[i]
(push) ; 7
(assert (not (>= i@86@01 0)))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(push) ; 7
(assert (not (< i@86@01 (Seq_length b@84@01))))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
; [eval] i > 0 ==> c[i].Ref__Integer_value == i + 2
; [eval] i > 0
(push) ; 7
(push) ; 8
(set-option :timeout 10)
(assert (not (not (> i@86@01 0))))
(check-sat)
; unknown
(pop) ; 8
; 0.00s
; (get-info :all-statistics)
; [then-branch: 67 | i@86@01 > 0 | live]
; [else-branch: 67 | !(i@86@01 > 0) | dead]
(set-option :timeout 0)
(push) ; 8
; [then-branch: 67 | i@86@01 > 0]
; [eval] c[i].Ref__Integer_value == i + 2
; [eval] c[i]
(push) ; 9
(assert (not (>= i@86@01 0)))
(check-sat)
; unsat
(pop) ; 9
; 0.00s
; (get-info :all-statistics)
(push) ; 9
(assert (not (< i@86@01 (Seq_length c@87@01))))
(check-sat)
; unsat
(pop) ; 9
; 0.00s
; (get-info :all-statistics)
; [eval] i + 2
(pop) ; 8
(pop) ; 7
; Joined path conditions
(push) ; 7
(assert (not (=> (> i@86@01 0) (= __flatten_10@106@01 (+ i@86@01 2)))))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(assert (=> (> i@86@01 0) (= __flatten_10@106@01 (+ i@86@01 2))))
(pop) ; 6
(pop) ; 5
(pop) ; 4
(push) ; 4
; [else-branch: 64 | !(i@86@01 > 0)]
(assert (not (> i@86@01 0)))
(pop) ; 4
; [eval] !(i > 0)
; [eval] i > 0
(push) ; 4
(set-option :timeout 10)
(assert (not (> i@86@01 0)))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not (not (> i@86@01 0))))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; [then-branch: 68 | !(i@86@01 > 0) | live]
; [else-branch: 68 | i@86@01 > 0 | live]
(set-option :timeout 0)
(push) ; 4
; [then-branch: 68 | !(i@86@01 > 0)]
(assert (not (> i@86@01 0)))
; [eval] 0 <= i
; [eval] i < len
; [eval] |a| == len
; [eval] |a|
; [eval] a[i]
(push) ; 5
(assert (not (>= i@86@01 0)))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(push) ; 5
(assert (not (< i@86@01 (Seq_length a@85@01))))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(push) ; 5
(set-option :timeout 10)
(assert (not false))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
; [eval] |b| == len
; [eval] |b|
; [eval] b[i]
(set-option :timeout 0)
(push) ; 5
(assert (not (>= i@86@01 0)))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(push) ; 5
(assert (not (< i@86@01 (Seq_length b@84@01))))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
; [eval] |c| == len
; [eval] |c|
; [eval] c[i]
(push) ; 5
(assert (not (>= i@86@01 0)))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(push) ; 5
(assert (not (< i@86@01 (Seq_length c@87@01))))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
; [eval] i > 0
; [then-branch: 69 | i@86@01 > 0 | dead]
; [else-branch: 69 | !(i@86@01 > 0) | live]
(push) ; 5
; [else-branch: 69 | !(i@86@01 > 0)]
; [eval] i == |a| - 1
; [eval] |a| - 1
; [eval] |a|
(push) ; 6
(set-option :timeout 10)
(assert (not (not (= i@86@01 (- (Seq_length a@85@01) 1)))))
(check-sat)
; unknown
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 6
(set-option :timeout 10)
(assert (not (= i@86@01 (- (Seq_length a@85@01) 1))))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
; [then-branch: 70 | i@86@01 == |a@85@01| - 1 | live]
; [else-branch: 70 | i@86@01 != |a@85@01| - 1 | dead]
(set-option :timeout 0)
(push) ; 6
; [then-branch: 70 | i@86@01 == |a@85@01| - 1]
(assert (= i@86@01 (- (Seq_length a@85@01) 1)))
; [eval] a[i]
(push) ; 7
(assert (not (>= i@86@01 0)))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(push) ; 7
(assert (not (< i@86@01 (Seq_length a@85@01))))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
; [eval] a[i].Ref__Integer_value == i + 1
; [eval] a[i]
(push) ; 7
(assert (not (>= i@86@01 0)))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(push) ; 7
(assert (not (< i@86@01 (Seq_length a@85@01))))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
; [eval] i + 1
(push) ; 7
(assert (not (= __flatten_5@98@01 (+ i@86@01 1))))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(assert (= __flatten_5@98@01 (+ i@86@01 1)))
; [eval] b[i].Ref__Integer_value == i
; [eval] b[i]
(push) ; 7
(assert (not (>= i@86@01 0)))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(push) ; 7
(assert (not (< i@86@01 (Seq_length b@84@01))))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
; [eval] i > 0 ==> c[i].Ref__Integer_value == i + 2
; [eval] i > 0
(push) ; 7
; [then-branch: 71 | i@86@01 > 0 | dead]
; [else-branch: 71 | !(i@86@01 > 0) | live]
(push) ; 8
; [else-branch: 71 | !(i@86@01 > 0)]
(pop) ; 8
(pop) ; 7
; Joined path conditions
(pop) ; 6
(pop) ; 5
(pop) ; 4
(push) ; 4
; [else-branch: 68 | i@86@01 > 0]
(assert (> i@86@01 0))
(pop) ; 4
(pop) ; 3
(push) ; 3
; [else-branch: 63 | i@86@01 < len@83@01 - 1]
(assert (< i@86@01 (- len@83@01 1)))
(pop) ; 3
(pop) ; 2
(pop) ; 1
; ---------- Ref__guard_check_S1_S2 ----------
(declare-const diz@107@01 $Ref)
(declare-const current_thread_id@108@01 Int)
(declare-const len@109@01 Int)
(declare-const b@110@01 Seq<$Ref>)
(declare-const a@111@01 Seq<$Ref>)
(declare-const i@112@01 Int)
(declare-const c@113@01 Seq<$Ref>)
(declare-const diz@114@01 $Ref)
(declare-const current_thread_id@115@01 Int)
(declare-const len@116@01 Int)
(declare-const b@117@01 Seq<$Ref>)
(declare-const a@118@01 Seq<$Ref>)
(declare-const i@119@01 Int)
(declare-const c@120@01 Seq<$Ref>)
(push) ; 1
(declare-const $t@121@01 $Snap)
(assert (= $t@121@01 ($Snap.combine ($Snap.first $t@121@01) ($Snap.second $t@121@01))))
(assert (= ($Snap.first $t@121@01) $Snap.unit))
; [eval] diz != null
(assert (not (= diz@114@01 $Ref.null)))
(assert (=
  ($Snap.second $t@121@01)
  ($Snap.combine
    ($Snap.first ($Snap.second $t@121@01))
    ($Snap.second ($Snap.second $t@121@01)))))
(assert (= ($Snap.first ($Snap.second $t@121@01)) $Snap.unit))
; [eval] current_thread_id >= 0
(assert (>= current_thread_id@115@01 0))
(assert (=
  ($Snap.second ($Snap.second $t@121@01))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second $t@121@01)))
    ($Snap.second ($Snap.second ($Snap.second $t@121@01))))))
(assert (= ($Snap.first ($Snap.second ($Snap.second $t@121@01))) $Snap.unit))
; [eval] 0 <= i
(assert (<= 0 i@119@01))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second $t@121@01)))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@121@01))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@121@01)))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@121@01))))
  $Snap.unit))
; [eval] i < len
(assert (< i@119@01 len@116@01))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@121@01))))
  $Snap.unit))
; [eval] i > 0
(assert (> i@119@01 0))
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
(set-option :timeout 0)
(push) ; 2
(declare-const $t@122@01 $Snap)
(assert (= $t@122@01 ($Snap.combine ($Snap.first $t@122@01) ($Snap.second $t@122@01))))
(assert (= ($Snap.first $t@122@01) $Snap.unit))
; [eval] 1 <= i
(assert (<= 1 i@119@01))
(assert (= ($Snap.second $t@122@01) $Snap.unit))
; [eval] i - 1 < len - 1
; [eval] i - 1
; [eval] len - 1
(assert (< (- i@119@01 1) (- len@116@01 1)))
(pop) ; 2
(push) ; 2
; [eval] 1 <= i
(push) ; 3
(assert (not (<= 1 i@119@01)))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(assert (<= 1 i@119@01))
; [eval] i - 1 < len - 1
; [eval] i - 1
; [eval] len - 1
(push) ; 3
(assert (not (< (- i@119@01 1) (- len@116@01 1))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(assert (< (- i@119@01 1) (- len@116@01 1)))
(pop) ; 2
(pop) ; 1
; ---------- Ref__resource_check_S1_S2 ----------
(declare-const diz@123@01 $Ref)
(declare-const current_thread_id@124@01 Int)
(declare-const len@125@01 Int)
(declare-const b@126@01 Seq<$Ref>)
(declare-const a@127@01 Seq<$Ref>)
(declare-const i@128@01 Int)
(declare-const c@129@01 Seq<$Ref>)
(declare-const diz@130@01 $Ref)
(declare-const current_thread_id@131@01 Int)
(declare-const len@132@01 Int)
(declare-const b@133@01 Seq<$Ref>)
(declare-const a@134@01 Seq<$Ref>)
(declare-const i@135@01 Int)
(declare-const c@136@01 Seq<$Ref>)
(push) ; 1
(declare-const $t@137@01 $Snap)
(assert (= $t@137@01 ($Snap.combine ($Snap.first $t@137@01) ($Snap.second $t@137@01))))
(assert (= ($Snap.first $t@137@01) $Snap.unit))
; [eval] diz != null
(assert (not (= diz@130@01 $Ref.null)))
(assert (=
  ($Snap.second $t@137@01)
  ($Snap.combine
    ($Snap.first ($Snap.second $t@137@01))
    ($Snap.second ($Snap.second $t@137@01)))))
(assert (= ($Snap.first ($Snap.second $t@137@01)) $Snap.unit))
; [eval] current_thread_id >= 0
(assert (>= current_thread_id@131@01 0))
(assert (=
  ($Snap.second ($Snap.second $t@137@01))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second $t@137@01)))
    ($Snap.second ($Snap.second ($Snap.second $t@137@01))))))
(assert (= ($Snap.first ($Snap.second ($Snap.second $t@137@01))) $Snap.unit))
; [eval] 0 <= i
(assert (<= 0 i@135@01))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second $t@137@01)))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@137@01))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@137@01)))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@137@01))))
  $Snap.unit))
; [eval] i < len
(assert (< i@135@01 len@132@01))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@137@01))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@137@01)))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@137@01))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@137@01)))))
  $Snap.unit))
; [eval] i - 1 < len - 1
; [eval] i - 1
; [eval] len - 1
(assert (< (- i@135@01 1) (- len@132@01 1)))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@137@01)))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@137@01))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@137@01)))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@137@01))))))
  $Snap.unit))
; [eval] i > 0
(assert (> i@135@01 0))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@137@01))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@137@01)))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@137@01))))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@137@01)))))))
  $Snap.unit))
; [eval] len <= |a|
; [eval] |a|
(assert (<= len@132@01 (Seq_length a@134@01)))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@137@01)))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@137@01))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@137@01)))))))))))
; [eval] a[i - 1]
; [eval] i - 1
(push) ; 2
(assert (not (>= (- i@135@01 1) 0)))
(check-sat)
; unsat
(pop) ; 2
; 0.00s
; (get-info :all-statistics)
(push) ; 2
(assert (not (< (- i@135@01 1) (Seq_length a@134@01))))
(check-sat)
; unsat
(pop) ; 2
; 0.00s
; (get-info :all-statistics)
(assert (not (= (Seq_index a@134@01 (- i@135@01 1)) $Ref.null)))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@137@01))))))))
  $Snap.unit))
; [eval] a[i - 1].Ref__Integer_value == i - 1 + 1
; [eval] a[i - 1]
; [eval] i - 1
(push) ; 2
(assert (not (>= (- i@135@01 1) 0)))
(check-sat)
; unsat
(pop) ; 2
; 0.00s
; (get-info :all-statistics)
(push) ; 2
(assert (not (< (- i@135@01 1) (Seq_length a@134@01))))
(check-sat)
; unsat
(pop) ; 2
; 0.00s
; (get-info :all-statistics)
; [eval] i - 1 + 1
; [eval] i - 1
(assert (=
  ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@137@01)))))))))
  (+ (- i@135@01 1) 1)))
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
(set-option :timeout 0)
(push) ; 2
(declare-const $t@138@01 $Snap)
(assert (= $t@138@01 ($Snap.combine ($Snap.first $t@138@01) ($Snap.second $t@138@01))))
(assert (= ($Snap.first $t@138@01) $Snap.unit))
; [eval] i - 1 < len - 1
; [eval] i - 1
; [eval] len - 1
(assert (=
  ($Snap.second $t@138@01)
  ($Snap.combine
    ($Snap.first ($Snap.second $t@138@01))
    ($Snap.second ($Snap.second $t@138@01)))))
; [eval] a[i - 1]
; [eval] i - 1
(push) ; 3
(assert (not (>= (- i@135@01 1) 0)))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(push) ; 3
(assert (not (< (- i@135@01 1) (Seq_length a@134@01))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(assert (= ($Snap.second ($Snap.second $t@138@01)) $Snap.unit))
; [eval] a[i - 1].Ref__Integer_value == i
; [eval] a[i - 1]
; [eval] i - 1
(push) ; 3
(assert (not (>= (- i@135@01 1) 0)))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(push) ; 3
(assert (not (< (- i@135@01 1) (Seq_length a@134@01))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(assert (= ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second $t@138@01))) i@135@01))
(pop) ; 2
(push) ; 2
; [eval] i - 1 < len - 1
; [eval] i - 1
; [eval] len - 1
; [eval] a[i - 1]
; [eval] i - 1
(push) ; 3
(assert (not (>= (- i@135@01 1) 0)))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(push) ; 3
(assert (not (< (- i@135@01 1) (Seq_length a@134@01))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; [eval] a[i - 1].Ref__Integer_value == i
; [eval] a[i - 1]
; [eval] i - 1
(push) ; 3
(assert (not (>= (- i@135@01 1) 0)))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(push) ; 3
(assert (not (< (- i@135@01 1) (Seq_length a@134@01))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(push) ; 3
(assert (not (=
  ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@137@01)))))))))
  i@135@01)))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(assert (=
  ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@137@01)))))))))
  i@135@01))
(pop) ; 2
(pop) ; 1
; ---------- Ref__example ----------
(declare-const diz@139@01 $Ref)
(declare-const current_thread_id@140@01 Int)
(declare-const a@141@01 Seq<$Ref>)
(declare-const b@142@01 Seq<$Ref>)
(declare-const c@143@01 Seq<$Ref>)
(declare-const len@144@01 Int)
(declare-const diz@145@01 $Ref)
(declare-const current_thread_id@146@01 Int)
(declare-const a@147@01 Seq<$Ref>)
(declare-const b@148@01 Seq<$Ref>)
(declare-const c@149@01 Seq<$Ref>)
(declare-const len@150@01 Int)
(push) ; 1
(declare-const $t@151@01 $Snap)
(assert (= $t@151@01 ($Snap.combine ($Snap.first $t@151@01) ($Snap.second $t@151@01))))
(assert (= ($Snap.first $t@151@01) $Snap.unit))
; [eval] diz != null
(assert (not (= diz@145@01 $Ref.null)))
(assert (=
  ($Snap.second $t@151@01)
  ($Snap.combine
    ($Snap.first ($Snap.second $t@151@01))
    ($Snap.second ($Snap.second $t@151@01)))))
(assert (= ($Snap.first ($Snap.second $t@151@01)) $Snap.unit))
; [eval] current_thread_id >= 0
(assert (>= current_thread_id@146@01 0))
(assert (=
  ($Snap.second ($Snap.second $t@151@01))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second $t@151@01)))
    ($Snap.second ($Snap.second ($Snap.second $t@151@01))))))
(assert (= ($Snap.first ($Snap.second ($Snap.second $t@151@01))) $Snap.unit))
; [eval] (forall k: Int, j: Int :: { a[k], a[j] } k >= 0 && (k < |a| && (j >= 0 && (j < |a| && k != j))) ==> a[k] != a[j])
(declare-const k@152@01 Int)
(declare-const j@153@01 Int)
(push) ; 2
; [eval] k >= 0 && (k < |a| && (j >= 0 && (j < |a| && k != j))) ==> a[k] != a[j]
; [eval] k >= 0 && (k < |a| && (j >= 0 && (j < |a| && k != j)))
; [eval] k >= 0
(push) ; 3
; [then-branch: 72 | !(k@152@01 >= 0) | live]
; [else-branch: 72 | k@152@01 >= 0 | live]
(push) ; 4
; [then-branch: 72 | !(k@152@01 >= 0)]
(assert (not (>= k@152@01 0)))
(pop) ; 4
(push) ; 4
; [else-branch: 72 | k@152@01 >= 0]
(assert (>= k@152@01 0))
; [eval] k < |a|
; [eval] |a|
(push) ; 5
; [then-branch: 73 | !(k@152@01 < |a@147@01|) | live]
; [else-branch: 73 | k@152@01 < |a@147@01| | live]
(push) ; 6
; [then-branch: 73 | !(k@152@01 < |a@147@01|)]
(assert (not (< k@152@01 (Seq_length a@147@01))))
(pop) ; 6
(push) ; 6
; [else-branch: 73 | k@152@01 < |a@147@01|]
(assert (< k@152@01 (Seq_length a@147@01)))
; [eval] j >= 0
(push) ; 7
; [then-branch: 74 | !(j@153@01 >= 0) | live]
; [else-branch: 74 | j@153@01 >= 0 | live]
(push) ; 8
; [then-branch: 74 | !(j@153@01 >= 0)]
(assert (not (>= j@153@01 0)))
(pop) ; 8
(push) ; 8
; [else-branch: 74 | j@153@01 >= 0]
(assert (>= j@153@01 0))
; [eval] j < |a|
; [eval] |a|
(push) ; 9
; [then-branch: 75 | !(j@153@01 < |a@147@01|) | live]
; [else-branch: 75 | j@153@01 < |a@147@01| | live]
(push) ; 10
; [then-branch: 75 | !(j@153@01 < |a@147@01|)]
(assert (not (< j@153@01 (Seq_length a@147@01))))
(pop) ; 10
(push) ; 10
; [else-branch: 75 | j@153@01 < |a@147@01|]
(assert (< j@153@01 (Seq_length a@147@01)))
; [eval] k != j
(pop) ; 10
(pop) ; 9
; Joined path conditions
; Joined path conditions
(assert (or (< j@153@01 (Seq_length a@147@01)) (not (< j@153@01 (Seq_length a@147@01)))))
(pop) ; 8
(pop) ; 7
; Joined path conditions
; Joined path conditions
(assert (=>
  (>= j@153@01 0)
  (and
    (>= j@153@01 0)
    (or
      (< j@153@01 (Seq_length a@147@01))
      (not (< j@153@01 (Seq_length a@147@01)))))))
(assert (or (>= j@153@01 0) (not (>= j@153@01 0))))
(pop) ; 6
(pop) ; 5
; Joined path conditions
; Joined path conditions
(assert (=>
  (< k@152@01 (Seq_length a@147@01))
  (and
    (< k@152@01 (Seq_length a@147@01))
    (=>
      (>= j@153@01 0)
      (and
        (>= j@153@01 0)
        (or
          (< j@153@01 (Seq_length a@147@01))
          (not (< j@153@01 (Seq_length a@147@01))))))
    (or (>= j@153@01 0) (not (>= j@153@01 0))))))
(assert (or (< k@152@01 (Seq_length a@147@01)) (not (< k@152@01 (Seq_length a@147@01)))))
(pop) ; 4
(pop) ; 3
; Joined path conditions
; Joined path conditions
(assert (=>
  (>= k@152@01 0)
  (and
    (>= k@152@01 0)
    (=>
      (< k@152@01 (Seq_length a@147@01))
      (and
        (< k@152@01 (Seq_length a@147@01))
        (=>
          (>= j@153@01 0)
          (and
            (>= j@153@01 0)
            (or
              (< j@153@01 (Seq_length a@147@01))
              (not (< j@153@01 (Seq_length a@147@01))))))
        (or (>= j@153@01 0) (not (>= j@153@01 0)))))
    (or
      (< k@152@01 (Seq_length a@147@01))
      (not (< k@152@01 (Seq_length a@147@01)))))))
(assert (or (>= k@152@01 0) (not (>= k@152@01 0))))
(push) ; 3
; [then-branch: 76 | k@152@01 >= 0 && k@152@01 < |a@147@01| && j@153@01 >= 0 && j@153@01 < |a@147@01| && k@152@01 != j@153@01 | live]
; [else-branch: 76 | !(k@152@01 >= 0 && k@152@01 < |a@147@01| && j@153@01 >= 0 && j@153@01 < |a@147@01| && k@152@01 != j@153@01) | live]
(push) ; 4
; [then-branch: 76 | k@152@01 >= 0 && k@152@01 < |a@147@01| && j@153@01 >= 0 && j@153@01 < |a@147@01| && k@152@01 != j@153@01]
(assert (and
  (>= k@152@01 0)
  (and
    (< k@152@01 (Seq_length a@147@01))
    (and
      (>= j@153@01 0)
      (and (< j@153@01 (Seq_length a@147@01)) (not (= k@152@01 j@153@01)))))))
; [eval] a[k] != a[j]
; [eval] a[k]
; [eval] a[j]
(pop) ; 4
(push) ; 4
; [else-branch: 76 | !(k@152@01 >= 0 && k@152@01 < |a@147@01| && j@153@01 >= 0 && j@153@01 < |a@147@01| && k@152@01 != j@153@01)]
(assert (not
  (and
    (>= k@152@01 0)
    (and
      (< k@152@01 (Seq_length a@147@01))
      (and
        (>= j@153@01 0)
        (and (< j@153@01 (Seq_length a@147@01)) (not (= k@152@01 j@153@01))))))))
(pop) ; 4
(pop) ; 3
; Joined path conditions
(assert (=>
  (and
    (>= k@152@01 0)
    (and
      (< k@152@01 (Seq_length a@147@01))
      (and
        (>= j@153@01 0)
        (and (< j@153@01 (Seq_length a@147@01)) (not (= k@152@01 j@153@01))))))
  (and
    (>= k@152@01 0)
    (< k@152@01 (Seq_length a@147@01))
    (>= j@153@01 0)
    (< j@153@01 (Seq_length a@147@01))
    (not (= k@152@01 j@153@01)))))
; Joined path conditions
(assert (or
  (not
    (and
      (>= k@152@01 0)
      (and
        (< k@152@01 (Seq_length a@147@01))
        (and
          (>= j@153@01 0)
          (and (< j@153@01 (Seq_length a@147@01)) (not (= k@152@01 j@153@01)))))))
  (and
    (>= k@152@01 0)
    (and
      (< k@152@01 (Seq_length a@147@01))
      (and
        (>= j@153@01 0)
        (and (< j@153@01 (Seq_length a@147@01)) (not (= k@152@01 j@153@01))))))))
(pop) ; 2
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall ((k@152@01 Int) (j@153@01 Int)) (!
  (and
    (=>
      (>= k@152@01 0)
      (and
        (>= k@152@01 0)
        (=>
          (< k@152@01 (Seq_length a@147@01))
          (and
            (< k@152@01 (Seq_length a@147@01))
            (=>
              (>= j@153@01 0)
              (and
                (>= j@153@01 0)
                (or
                  (< j@153@01 (Seq_length a@147@01))
                  (not (< j@153@01 (Seq_length a@147@01))))))
            (or (>= j@153@01 0) (not (>= j@153@01 0)))))
        (or
          (< k@152@01 (Seq_length a@147@01))
          (not (< k@152@01 (Seq_length a@147@01))))))
    (or (>= k@152@01 0) (not (>= k@152@01 0)))
    (=>
      (and
        (>= k@152@01 0)
        (and
          (< k@152@01 (Seq_length a@147@01))
          (and
            (>= j@153@01 0)
            (and (< j@153@01 (Seq_length a@147@01)) (not (= k@152@01 j@153@01))))))
      (and
        (>= k@152@01 0)
        (< k@152@01 (Seq_length a@147@01))
        (>= j@153@01 0)
        (< j@153@01 (Seq_length a@147@01))
        (not (= k@152@01 j@153@01))))
    (or
      (not
        (and
          (>= k@152@01 0)
          (and
            (< k@152@01 (Seq_length a@147@01))
            (and
              (>= j@153@01 0)
              (and
                (< j@153@01 (Seq_length a@147@01))
                (not (= k@152@01 j@153@01)))))))
      (and
        (>= k@152@01 0)
        (and
          (< k@152@01 (Seq_length a@147@01))
          (and
            (>= j@153@01 0)
            (and (< j@153@01 (Seq_length a@147@01)) (not (= k@152@01 j@153@01))))))))
  :pattern ((Seq_index a@147@01 k@152@01) (Seq_index a@147@01 j@153@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/third_party/test_forward_dep_c.vpr@180@12@180@100-aux|)))
(assert (forall ((k@152@01 Int) (j@153@01 Int)) (!
  (=>
    (and
      (>= k@152@01 0)
      (and
        (< k@152@01 (Seq_length a@147@01))
        (and
          (>= j@153@01 0)
          (and (< j@153@01 (Seq_length a@147@01)) (not (= k@152@01 j@153@01))))))
    (not (= (Seq_index a@147@01 k@152@01) (Seq_index a@147@01 j@153@01))))
  :pattern ((Seq_index a@147@01 k@152@01) (Seq_index a@147@01 j@153@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/third_party/test_forward_dep_c.vpr@180@12@180@100|)))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second $t@151@01)))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@151@01))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@151@01)))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@151@01))))
  $Snap.unit))
; [eval] (forall k: Int, j: Int :: { b[k], b[j] } k >= 0 && (k < |b| && (j >= 0 && (j < |b| && k != j))) ==> b[k] != b[j])
(declare-const k@154@01 Int)
(declare-const j@155@01 Int)
(push) ; 2
; [eval] k >= 0 && (k < |b| && (j >= 0 && (j < |b| && k != j))) ==> b[k] != b[j]
; [eval] k >= 0 && (k < |b| && (j >= 0 && (j < |b| && k != j)))
; [eval] k >= 0
(push) ; 3
; [then-branch: 77 | !(k@154@01 >= 0) | live]
; [else-branch: 77 | k@154@01 >= 0 | live]
(push) ; 4
; [then-branch: 77 | !(k@154@01 >= 0)]
(assert (not (>= k@154@01 0)))
(pop) ; 4
(push) ; 4
; [else-branch: 77 | k@154@01 >= 0]
(assert (>= k@154@01 0))
; [eval] k < |b|
; [eval] |b|
(push) ; 5
; [then-branch: 78 | !(k@154@01 < |b@148@01|) | live]
; [else-branch: 78 | k@154@01 < |b@148@01| | live]
(push) ; 6
; [then-branch: 78 | !(k@154@01 < |b@148@01|)]
(assert (not (< k@154@01 (Seq_length b@148@01))))
(pop) ; 6
(push) ; 6
; [else-branch: 78 | k@154@01 < |b@148@01|]
(assert (< k@154@01 (Seq_length b@148@01)))
; [eval] j >= 0
(push) ; 7
; [then-branch: 79 | !(j@155@01 >= 0) | live]
; [else-branch: 79 | j@155@01 >= 0 | live]
(push) ; 8
; [then-branch: 79 | !(j@155@01 >= 0)]
(assert (not (>= j@155@01 0)))
(pop) ; 8
(push) ; 8
; [else-branch: 79 | j@155@01 >= 0]
(assert (>= j@155@01 0))
; [eval] j < |b|
; [eval] |b|
(push) ; 9
; [then-branch: 80 | !(j@155@01 < |b@148@01|) | live]
; [else-branch: 80 | j@155@01 < |b@148@01| | live]
(push) ; 10
; [then-branch: 80 | !(j@155@01 < |b@148@01|)]
(assert (not (< j@155@01 (Seq_length b@148@01))))
(pop) ; 10
(push) ; 10
; [else-branch: 80 | j@155@01 < |b@148@01|]
(assert (< j@155@01 (Seq_length b@148@01)))
; [eval] k != j
(pop) ; 10
(pop) ; 9
; Joined path conditions
; Joined path conditions
(assert (or (< j@155@01 (Seq_length b@148@01)) (not (< j@155@01 (Seq_length b@148@01)))))
(pop) ; 8
(pop) ; 7
; Joined path conditions
; Joined path conditions
(assert (=>
  (>= j@155@01 0)
  (and
    (>= j@155@01 0)
    (or
      (< j@155@01 (Seq_length b@148@01))
      (not (< j@155@01 (Seq_length b@148@01)))))))
(assert (or (>= j@155@01 0) (not (>= j@155@01 0))))
(pop) ; 6
(pop) ; 5
; Joined path conditions
; Joined path conditions
(assert (=>
  (< k@154@01 (Seq_length b@148@01))
  (and
    (< k@154@01 (Seq_length b@148@01))
    (=>
      (>= j@155@01 0)
      (and
        (>= j@155@01 0)
        (or
          (< j@155@01 (Seq_length b@148@01))
          (not (< j@155@01 (Seq_length b@148@01))))))
    (or (>= j@155@01 0) (not (>= j@155@01 0))))))
(assert (or (< k@154@01 (Seq_length b@148@01)) (not (< k@154@01 (Seq_length b@148@01)))))
(pop) ; 4
(pop) ; 3
; Joined path conditions
; Joined path conditions
(assert (=>
  (>= k@154@01 0)
  (and
    (>= k@154@01 0)
    (=>
      (< k@154@01 (Seq_length b@148@01))
      (and
        (< k@154@01 (Seq_length b@148@01))
        (=>
          (>= j@155@01 0)
          (and
            (>= j@155@01 0)
            (or
              (< j@155@01 (Seq_length b@148@01))
              (not (< j@155@01 (Seq_length b@148@01))))))
        (or (>= j@155@01 0) (not (>= j@155@01 0)))))
    (or
      (< k@154@01 (Seq_length b@148@01))
      (not (< k@154@01 (Seq_length b@148@01)))))))
(assert (or (>= k@154@01 0) (not (>= k@154@01 0))))
(push) ; 3
; [then-branch: 81 | k@154@01 >= 0 && k@154@01 < |b@148@01| && j@155@01 >= 0 && j@155@01 < |b@148@01| && k@154@01 != j@155@01 | live]
; [else-branch: 81 | !(k@154@01 >= 0 && k@154@01 < |b@148@01| && j@155@01 >= 0 && j@155@01 < |b@148@01| && k@154@01 != j@155@01) | live]
(push) ; 4
; [then-branch: 81 | k@154@01 >= 0 && k@154@01 < |b@148@01| && j@155@01 >= 0 && j@155@01 < |b@148@01| && k@154@01 != j@155@01]
(assert (and
  (>= k@154@01 0)
  (and
    (< k@154@01 (Seq_length b@148@01))
    (and
      (>= j@155@01 0)
      (and (< j@155@01 (Seq_length b@148@01)) (not (= k@154@01 j@155@01)))))))
; [eval] b[k] != b[j]
; [eval] b[k]
; [eval] b[j]
(pop) ; 4
(push) ; 4
; [else-branch: 81 | !(k@154@01 >= 0 && k@154@01 < |b@148@01| && j@155@01 >= 0 && j@155@01 < |b@148@01| && k@154@01 != j@155@01)]
(assert (not
  (and
    (>= k@154@01 0)
    (and
      (< k@154@01 (Seq_length b@148@01))
      (and
        (>= j@155@01 0)
        (and (< j@155@01 (Seq_length b@148@01)) (not (= k@154@01 j@155@01))))))))
(pop) ; 4
(pop) ; 3
; Joined path conditions
(assert (=>
  (and
    (>= k@154@01 0)
    (and
      (< k@154@01 (Seq_length b@148@01))
      (and
        (>= j@155@01 0)
        (and (< j@155@01 (Seq_length b@148@01)) (not (= k@154@01 j@155@01))))))
  (and
    (>= k@154@01 0)
    (< k@154@01 (Seq_length b@148@01))
    (>= j@155@01 0)
    (< j@155@01 (Seq_length b@148@01))
    (not (= k@154@01 j@155@01)))))
; Joined path conditions
(assert (or
  (not
    (and
      (>= k@154@01 0)
      (and
        (< k@154@01 (Seq_length b@148@01))
        (and
          (>= j@155@01 0)
          (and (< j@155@01 (Seq_length b@148@01)) (not (= k@154@01 j@155@01)))))))
  (and
    (>= k@154@01 0)
    (and
      (< k@154@01 (Seq_length b@148@01))
      (and
        (>= j@155@01 0)
        (and (< j@155@01 (Seq_length b@148@01)) (not (= k@154@01 j@155@01))))))))
(pop) ; 2
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall ((k@154@01 Int) (j@155@01 Int)) (!
  (and
    (=>
      (>= k@154@01 0)
      (and
        (>= k@154@01 0)
        (=>
          (< k@154@01 (Seq_length b@148@01))
          (and
            (< k@154@01 (Seq_length b@148@01))
            (=>
              (>= j@155@01 0)
              (and
                (>= j@155@01 0)
                (or
                  (< j@155@01 (Seq_length b@148@01))
                  (not (< j@155@01 (Seq_length b@148@01))))))
            (or (>= j@155@01 0) (not (>= j@155@01 0)))))
        (or
          (< k@154@01 (Seq_length b@148@01))
          (not (< k@154@01 (Seq_length b@148@01))))))
    (or (>= k@154@01 0) (not (>= k@154@01 0)))
    (=>
      (and
        (>= k@154@01 0)
        (and
          (< k@154@01 (Seq_length b@148@01))
          (and
            (>= j@155@01 0)
            (and (< j@155@01 (Seq_length b@148@01)) (not (= k@154@01 j@155@01))))))
      (and
        (>= k@154@01 0)
        (< k@154@01 (Seq_length b@148@01))
        (>= j@155@01 0)
        (< j@155@01 (Seq_length b@148@01))
        (not (= k@154@01 j@155@01))))
    (or
      (not
        (and
          (>= k@154@01 0)
          (and
            (< k@154@01 (Seq_length b@148@01))
            (and
              (>= j@155@01 0)
              (and
                (< j@155@01 (Seq_length b@148@01))
                (not (= k@154@01 j@155@01)))))))
      (and
        (>= k@154@01 0)
        (and
          (< k@154@01 (Seq_length b@148@01))
          (and
            (>= j@155@01 0)
            (and (< j@155@01 (Seq_length b@148@01)) (not (= k@154@01 j@155@01))))))))
  :pattern ((Seq_index b@148@01 k@154@01) (Seq_index b@148@01 j@155@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/third_party/test_forward_dep_c.vpr@181@12@181@100-aux|)))
(assert (forall ((k@154@01 Int) (j@155@01 Int)) (!
  (=>
    (and
      (>= k@154@01 0)
      (and
        (< k@154@01 (Seq_length b@148@01))
        (and
          (>= j@155@01 0)
          (and (< j@155@01 (Seq_length b@148@01)) (not (= k@154@01 j@155@01))))))
    (not (= (Seq_index b@148@01 k@154@01) (Seq_index b@148@01 j@155@01))))
  :pattern ((Seq_index b@148@01 k@154@01) (Seq_index b@148@01 j@155@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/third_party/test_forward_dep_c.vpr@181@12@181@100|)))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@151@01))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@151@01)))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@151@01))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@151@01)))))
  $Snap.unit))
; [eval] (forall k: Int, j: Int :: { c[k], c[j] } k >= 0 && (k < |c| && (j >= 0 && (j < |c| && k != j))) ==> c[k] != c[j])
(declare-const k@156@01 Int)
(declare-const j@157@01 Int)
(push) ; 2
; [eval] k >= 0 && (k < |c| && (j >= 0 && (j < |c| && k != j))) ==> c[k] != c[j]
; [eval] k >= 0 && (k < |c| && (j >= 0 && (j < |c| && k != j)))
; [eval] k >= 0
(push) ; 3
; [then-branch: 82 | !(k@156@01 >= 0) | live]
; [else-branch: 82 | k@156@01 >= 0 | live]
(push) ; 4
; [then-branch: 82 | !(k@156@01 >= 0)]
(assert (not (>= k@156@01 0)))
(pop) ; 4
(push) ; 4
; [else-branch: 82 | k@156@01 >= 0]
(assert (>= k@156@01 0))
; [eval] k < |c|
; [eval] |c|
(push) ; 5
; [then-branch: 83 | !(k@156@01 < |c@149@01|) | live]
; [else-branch: 83 | k@156@01 < |c@149@01| | live]
(push) ; 6
; [then-branch: 83 | !(k@156@01 < |c@149@01|)]
(assert (not (< k@156@01 (Seq_length c@149@01))))
(pop) ; 6
(push) ; 6
; [else-branch: 83 | k@156@01 < |c@149@01|]
(assert (< k@156@01 (Seq_length c@149@01)))
; [eval] j >= 0
(push) ; 7
; [then-branch: 84 | !(j@157@01 >= 0) | live]
; [else-branch: 84 | j@157@01 >= 0 | live]
(push) ; 8
; [then-branch: 84 | !(j@157@01 >= 0)]
(assert (not (>= j@157@01 0)))
(pop) ; 8
(push) ; 8
; [else-branch: 84 | j@157@01 >= 0]
(assert (>= j@157@01 0))
; [eval] j < |c|
; [eval] |c|
(push) ; 9
; [then-branch: 85 | !(j@157@01 < |c@149@01|) | live]
; [else-branch: 85 | j@157@01 < |c@149@01| | live]
(push) ; 10
; [then-branch: 85 | !(j@157@01 < |c@149@01|)]
(assert (not (< j@157@01 (Seq_length c@149@01))))
(pop) ; 10
(push) ; 10
; [else-branch: 85 | j@157@01 < |c@149@01|]
(assert (< j@157@01 (Seq_length c@149@01)))
; [eval] k != j
(pop) ; 10
(pop) ; 9
; Joined path conditions
; Joined path conditions
(assert (or (< j@157@01 (Seq_length c@149@01)) (not (< j@157@01 (Seq_length c@149@01)))))
(pop) ; 8
(pop) ; 7
; Joined path conditions
; Joined path conditions
(assert (=>
  (>= j@157@01 0)
  (and
    (>= j@157@01 0)
    (or
      (< j@157@01 (Seq_length c@149@01))
      (not (< j@157@01 (Seq_length c@149@01)))))))
(assert (or (>= j@157@01 0) (not (>= j@157@01 0))))
(pop) ; 6
(pop) ; 5
; Joined path conditions
; Joined path conditions
(assert (=>
  (< k@156@01 (Seq_length c@149@01))
  (and
    (< k@156@01 (Seq_length c@149@01))
    (=>
      (>= j@157@01 0)
      (and
        (>= j@157@01 0)
        (or
          (< j@157@01 (Seq_length c@149@01))
          (not (< j@157@01 (Seq_length c@149@01))))))
    (or (>= j@157@01 0) (not (>= j@157@01 0))))))
(assert (or (< k@156@01 (Seq_length c@149@01)) (not (< k@156@01 (Seq_length c@149@01)))))
(pop) ; 4
(pop) ; 3
; Joined path conditions
; Joined path conditions
(assert (=>
  (>= k@156@01 0)
  (and
    (>= k@156@01 0)
    (=>
      (< k@156@01 (Seq_length c@149@01))
      (and
        (< k@156@01 (Seq_length c@149@01))
        (=>
          (>= j@157@01 0)
          (and
            (>= j@157@01 0)
            (or
              (< j@157@01 (Seq_length c@149@01))
              (not (< j@157@01 (Seq_length c@149@01))))))
        (or (>= j@157@01 0) (not (>= j@157@01 0)))))
    (or
      (< k@156@01 (Seq_length c@149@01))
      (not (< k@156@01 (Seq_length c@149@01)))))))
(assert (or (>= k@156@01 0) (not (>= k@156@01 0))))
(push) ; 3
; [then-branch: 86 | k@156@01 >= 0 && k@156@01 < |c@149@01| && j@157@01 >= 0 && j@157@01 < |c@149@01| && k@156@01 != j@157@01 | live]
; [else-branch: 86 | !(k@156@01 >= 0 && k@156@01 < |c@149@01| && j@157@01 >= 0 && j@157@01 < |c@149@01| && k@156@01 != j@157@01) | live]
(push) ; 4
; [then-branch: 86 | k@156@01 >= 0 && k@156@01 < |c@149@01| && j@157@01 >= 0 && j@157@01 < |c@149@01| && k@156@01 != j@157@01]
(assert (and
  (>= k@156@01 0)
  (and
    (< k@156@01 (Seq_length c@149@01))
    (and
      (>= j@157@01 0)
      (and (< j@157@01 (Seq_length c@149@01)) (not (= k@156@01 j@157@01)))))))
; [eval] c[k] != c[j]
; [eval] c[k]
; [eval] c[j]
(pop) ; 4
(push) ; 4
; [else-branch: 86 | !(k@156@01 >= 0 && k@156@01 < |c@149@01| && j@157@01 >= 0 && j@157@01 < |c@149@01| && k@156@01 != j@157@01)]
(assert (not
  (and
    (>= k@156@01 0)
    (and
      (< k@156@01 (Seq_length c@149@01))
      (and
        (>= j@157@01 0)
        (and (< j@157@01 (Seq_length c@149@01)) (not (= k@156@01 j@157@01))))))))
(pop) ; 4
(pop) ; 3
; Joined path conditions
(assert (=>
  (and
    (>= k@156@01 0)
    (and
      (< k@156@01 (Seq_length c@149@01))
      (and
        (>= j@157@01 0)
        (and (< j@157@01 (Seq_length c@149@01)) (not (= k@156@01 j@157@01))))))
  (and
    (>= k@156@01 0)
    (< k@156@01 (Seq_length c@149@01))
    (>= j@157@01 0)
    (< j@157@01 (Seq_length c@149@01))
    (not (= k@156@01 j@157@01)))))
; Joined path conditions
(assert (or
  (not
    (and
      (>= k@156@01 0)
      (and
        (< k@156@01 (Seq_length c@149@01))
        (and
          (>= j@157@01 0)
          (and (< j@157@01 (Seq_length c@149@01)) (not (= k@156@01 j@157@01)))))))
  (and
    (>= k@156@01 0)
    (and
      (< k@156@01 (Seq_length c@149@01))
      (and
        (>= j@157@01 0)
        (and (< j@157@01 (Seq_length c@149@01)) (not (= k@156@01 j@157@01))))))))
(pop) ; 2
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall ((k@156@01 Int) (j@157@01 Int)) (!
  (and
    (=>
      (>= k@156@01 0)
      (and
        (>= k@156@01 0)
        (=>
          (< k@156@01 (Seq_length c@149@01))
          (and
            (< k@156@01 (Seq_length c@149@01))
            (=>
              (>= j@157@01 0)
              (and
                (>= j@157@01 0)
                (or
                  (< j@157@01 (Seq_length c@149@01))
                  (not (< j@157@01 (Seq_length c@149@01))))))
            (or (>= j@157@01 0) (not (>= j@157@01 0)))))
        (or
          (< k@156@01 (Seq_length c@149@01))
          (not (< k@156@01 (Seq_length c@149@01))))))
    (or (>= k@156@01 0) (not (>= k@156@01 0)))
    (=>
      (and
        (>= k@156@01 0)
        (and
          (< k@156@01 (Seq_length c@149@01))
          (and
            (>= j@157@01 0)
            (and (< j@157@01 (Seq_length c@149@01)) (not (= k@156@01 j@157@01))))))
      (and
        (>= k@156@01 0)
        (< k@156@01 (Seq_length c@149@01))
        (>= j@157@01 0)
        (< j@157@01 (Seq_length c@149@01))
        (not (= k@156@01 j@157@01))))
    (or
      (not
        (and
          (>= k@156@01 0)
          (and
            (< k@156@01 (Seq_length c@149@01))
            (and
              (>= j@157@01 0)
              (and
                (< j@157@01 (Seq_length c@149@01))
                (not (= k@156@01 j@157@01)))))))
      (and
        (>= k@156@01 0)
        (and
          (< k@156@01 (Seq_length c@149@01))
          (and
            (>= j@157@01 0)
            (and (< j@157@01 (Seq_length c@149@01)) (not (= k@156@01 j@157@01))))))))
  :pattern ((Seq_index c@149@01 k@156@01) (Seq_index c@149@01 j@157@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/third_party/test_forward_dep_c.vpr@182@12@182@100-aux|)))
(assert (forall ((k@156@01 Int) (j@157@01 Int)) (!
  (=>
    (and
      (>= k@156@01 0)
      (and
        (< k@156@01 (Seq_length c@149@01))
        (and
          (>= j@157@01 0)
          (and (< j@157@01 (Seq_length c@149@01)) (not (= k@156@01 j@157@01))))))
    (not (= (Seq_index c@149@01 k@156@01) (Seq_index c@149@01 j@157@01))))
  :pattern ((Seq_index c@149@01 k@156@01) (Seq_index c@149@01 j@157@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/third_party/test_forward_dep_c.vpr@182@12@182@100|)))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@151@01)))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@151@01))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@151@01)))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@151@01))))))
  $Snap.unit))
; [eval] |a| == len
; [eval] |a|
(assert (= (Seq_length a@147@01) len@150@01))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@151@01))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@151@01)))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@151@01))))))))))
(declare-const i@158@01 Int)
(push) ; 2
; [eval] 0 <= i && i < len
; [eval] 0 <= i
(push) ; 3
; [then-branch: 87 | !(0 <= i@158@01) | live]
; [else-branch: 87 | 0 <= i@158@01 | live]
(push) ; 4
; [then-branch: 87 | !(0 <= i@158@01)]
(assert (not (<= 0 i@158@01)))
(pop) ; 4
(push) ; 4
; [else-branch: 87 | 0 <= i@158@01]
(assert (<= 0 i@158@01))
; [eval] i < len
(pop) ; 4
(pop) ; 3
; Joined path conditions
; Joined path conditions
(assert (or (<= 0 i@158@01) (not (<= 0 i@158@01))))
(assert (and (<= 0 i@158@01) (< i@158@01 len@150@01)))
; [eval] a[i]
(push) ; 3
(assert (not (>= i@158@01 0)))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(push) ; 3
(assert (not (< i@158@01 (Seq_length a@147@01))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(pop) ; 2
(declare-fun inv@159@01 ($Ref) Int)
(declare-fun img@160@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
(assert (forall ((i@158@01 Int)) (!
  (=>
    (and (<= 0 i@158@01) (< i@158@01 len@150@01))
    (or (<= 0 i@158@01) (not (<= 0 i@158@01))))
  :pattern ((Seq_index a@147@01 i@158@01))
  :qid |Ref__Integer_value-aux|)))
; Check receiver injectivity
(push) ; 2
(assert (not (forall ((i1@158@01 Int) (i2@158@01 Int)) (!
  (=>
    (and
      (and (<= 0 i1@158@01) (< i1@158@01 len@150@01))
      (and (<= 0 i2@158@01) (< i2@158@01 len@150@01))
      (= (Seq_index a@147@01 i1@158@01) (Seq_index a@147@01 i2@158@01)))
    (= i1@158@01 i2@158@01))
  
  :qid |Ref__Integer_value-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 2
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((i@158@01 Int)) (!
  (=>
    (and (<= 0 i@158@01) (< i@158@01 len@150@01))
    (and
      (= (inv@159@01 (Seq_index a@147@01 i@158@01)) i@158@01)
      (img@160@01 (Seq_index a@147@01 i@158@01))))
  :pattern ((Seq_index a@147@01 i@158@01))
  :qid |quant-u-8711|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@160@01 r)
      (and (<= 0 (inv@159@01 r)) (< (inv@159@01 r) len@150@01)))
    (= (Seq_index a@147@01 (inv@159@01 r)) r))
  :pattern ((inv@159@01 r))
  :qid |Ref__Integer_value-fctOfInv|)))
; Permissions are non-negative
; Field permissions are at most one
; Permission implies non-null receiver
(assert (forall ((i@158@01 Int)) (!
  (=>
    (and (<= 0 i@158@01) (< i@158@01 len@150@01))
    (not (= (Seq_index a@147@01 i@158@01) $Ref.null)))
  :pattern ((Seq_index a@147@01 i@158@01))
  :qid |Ref__Integer_value-permImpliesNonNull|)))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@151@01)))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@151@01))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@151@01)))))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@151@01))))))))
  $Snap.unit))
; [eval] |b| == len
; [eval] |b|
(assert (= (Seq_length b@148@01) len@150@01))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@151@01))))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@151@01)))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@151@01))))))))))))
(declare-const i@161@01 Int)
(push) ; 2
; [eval] 0 <= i && i < len
; [eval] 0 <= i
(push) ; 3
; [then-branch: 88 | !(0 <= i@161@01) | live]
; [else-branch: 88 | 0 <= i@161@01 | live]
(push) ; 4
; [then-branch: 88 | !(0 <= i@161@01)]
(assert (not (<= 0 i@161@01)))
(pop) ; 4
(push) ; 4
; [else-branch: 88 | 0 <= i@161@01]
(assert (<= 0 i@161@01))
; [eval] i < len
(pop) ; 4
(pop) ; 3
; Joined path conditions
; Joined path conditions
(assert (or (<= 0 i@161@01) (not (<= 0 i@161@01))))
(assert (and (<= 0 i@161@01) (< i@161@01 len@150@01)))
; [eval] b[i]
(push) ; 3
(assert (not (>= i@161@01 0)))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(push) ; 3
(assert (not (< i@161@01 (Seq_length b@148@01))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(pop) ; 2
(declare-fun inv@162@01 ($Ref) Int)
(declare-fun img@163@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
(assert (forall ((i@161@01 Int)) (!
  (=>
    (and (<= 0 i@161@01) (< i@161@01 len@150@01))
    (or (<= 0 i@161@01) (not (<= 0 i@161@01))))
  :pattern ((Seq_index b@148@01 i@161@01))
  :qid |Ref__Integer_value-aux|)))
; Check receiver injectivity
(push) ; 2
(assert (not (forall ((i1@161@01 Int) (i2@161@01 Int)) (!
  (=>
    (and
      (and (<= 0 i1@161@01) (< i1@161@01 len@150@01))
      (and (<= 0 i2@161@01) (< i2@161@01 len@150@01))
      (= (Seq_index b@148@01 i1@161@01) (Seq_index b@148@01 i2@161@01)))
    (= i1@161@01 i2@161@01))
  
  :qid |Ref__Integer_value-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 2
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((i@161@01 Int)) (!
  (=>
    (and (<= 0 i@161@01) (< i@161@01 len@150@01))
    (and
      (= (inv@162@01 (Seq_index b@148@01 i@161@01)) i@161@01)
      (img@163@01 (Seq_index b@148@01 i@161@01))))
  :pattern ((Seq_index b@148@01 i@161@01))
  :qid |quant-u-8713|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@163@01 r)
      (and (<= 0 (inv@162@01 r)) (< (inv@162@01 r) len@150@01)))
    (= (Seq_index b@148@01 (inv@162@01 r)) r))
  :pattern ((inv@162@01 r))
  :qid |Ref__Integer_value-fctOfInv|)))
; Permissions are non-negative
; Field permissions are at most one
; Permission implies non-null receiver
(assert (forall ((i@161@01 Int)) (!
  (=>
    (and (<= 0 i@161@01) (< i@161@01 len@150@01))
    (not (= (Seq_index b@148@01 i@161@01) $Ref.null)))
  :pattern ((Seq_index b@148@01 i@161@01))
  :qid |Ref__Integer_value-permImpliesNonNull|)))
(push) ; 2
(set-option :timeout 10)
(assert (not (forall ((r $Ref)) (!
  (and
    (= (Seq_index b@148@01 i@161@01) (Seq_index a@147@01 i@158@01))
    (=
      (and
        (img@163@01 r)
        (and (<= 0 (inv@162@01 r)) (< (inv@162@01 r) len@150@01)))
      (and
        (img@160@01 r)
        (and (<= 0 (inv@159@01 r)) (< (inv@159@01 r) len@150@01)))))
  
  :qid |quant-u-8714|))))
(check-sat)
; unknown
(pop) ; 2
; 0.00s
; (get-info :all-statistics)
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@151@01)))))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@151@01))))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@151@01)))))))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@151@01))))))))))
  $Snap.unit))
; [eval] |c| == len
; [eval] |c|
(assert (= (Seq_length c@149@01) len@150@01))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@151@01))))))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@151@01)))))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@151@01))))))))))))))
(declare-const i@164@01 Int)
(set-option :timeout 0)
(push) ; 2
; [eval] 0 <= i && i < len
; [eval] 0 <= i
(push) ; 3
; [then-branch: 89 | !(0 <= i@164@01) | live]
; [else-branch: 89 | 0 <= i@164@01 | live]
(push) ; 4
; [then-branch: 89 | !(0 <= i@164@01)]
(assert (not (<= 0 i@164@01)))
(pop) ; 4
(push) ; 4
; [else-branch: 89 | 0 <= i@164@01]
(assert (<= 0 i@164@01))
; [eval] i < len
(pop) ; 4
(pop) ; 3
; Joined path conditions
; Joined path conditions
(assert (or (<= 0 i@164@01) (not (<= 0 i@164@01))))
(assert (and (<= 0 i@164@01) (< i@164@01 len@150@01)))
; [eval] c[i]
(push) ; 3
(assert (not (>= i@164@01 0)))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(push) ; 3
(assert (not (< i@164@01 (Seq_length c@149@01))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(pop) ; 2
(declare-fun inv@165@01 ($Ref) Int)
(declare-fun img@166@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
(assert (forall ((i@164@01 Int)) (!
  (=>
    (and (<= 0 i@164@01) (< i@164@01 len@150@01))
    (or (<= 0 i@164@01) (not (<= 0 i@164@01))))
  :pattern ((Seq_index c@149@01 i@164@01))
  :qid |Ref__Integer_value-aux|)))
; Check receiver injectivity
(push) ; 2
(assert (not (forall ((i1@164@01 Int) (i2@164@01 Int)) (!
  (=>
    (and
      (and (<= 0 i1@164@01) (< i1@164@01 len@150@01))
      (and (<= 0 i2@164@01) (< i2@164@01 len@150@01))
      (= (Seq_index c@149@01 i1@164@01) (Seq_index c@149@01 i2@164@01)))
    (= i1@164@01 i2@164@01))
  
  :qid |Ref__Integer_value-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 2
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((i@164@01 Int)) (!
  (=>
    (and (<= 0 i@164@01) (< i@164@01 len@150@01))
    (and
      (= (inv@165@01 (Seq_index c@149@01 i@164@01)) i@164@01)
      (img@166@01 (Seq_index c@149@01 i@164@01))))
  :pattern ((Seq_index c@149@01 i@164@01))
  :qid |quant-u-8716|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@166@01 r)
      (and (<= 0 (inv@165@01 r)) (< (inv@165@01 r) len@150@01)))
    (= (Seq_index c@149@01 (inv@165@01 r)) r))
  :pattern ((inv@165@01 r))
  :qid |Ref__Integer_value-fctOfInv|)))
; Permissions are non-negative
; Field permissions are at most one
; Permission implies non-null receiver
(assert (forall ((i@164@01 Int)) (!
  (=>
    (and (<= 0 i@164@01) (< i@164@01 len@150@01))
    (not (= (Seq_index c@149@01 i@164@01) $Ref.null)))
  :pattern ((Seq_index c@149@01 i@164@01))
  :qid |Ref__Integer_value-permImpliesNonNull|)))
(push) ; 2
(set-option :timeout 10)
(assert (not (forall ((r $Ref)) (!
  (and
    (= (Seq_index c@149@01 i@164@01) (Seq_index b@148@01 i@161@01))
    (=
      (and
        (img@166@01 r)
        (and (<= 0 (inv@165@01 r)) (< (inv@165@01 r) len@150@01)))
      (and
        (img@163@01 r)
        (and (<= 0 (inv@162@01 r)) (< (inv@162@01 r) len@150@01)))))
  
  :qid |quant-u-8717|))))
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
    (= (Seq_index c@149@01 i@164@01) (Seq_index a@147@01 i@158@01))
    (=
      (and
        (img@166@01 r)
        (and (<= 0 (inv@165@01 r)) (< (inv@165@01 r) len@150@01)))
      (and
        (img@160@01 r)
        (and (<= 0 (inv@159@01 r)) (< (inv@159@01 r) len@150@01)))))
  
  :qid |quant-u-8718|))))
(check-sat)
; unknown
(pop) ; 2
; 0.00s
; (get-info :all-statistics)
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@151@01)))))))))))
  $Snap.unit))
; [eval] (forall tid: Int :: { b[tid] } 0 <= tid && tid < len ==> b[tid].Ref__Integer_value == tid)
(declare-const tid@167@01 Int)
(set-option :timeout 0)
(push) ; 2
; [eval] 0 <= tid && tid < len ==> b[tid].Ref__Integer_value == tid
; [eval] 0 <= tid && tid < len
; [eval] 0 <= tid
(push) ; 3
; [then-branch: 90 | !(0 <= tid@167@01) | live]
; [else-branch: 90 | 0 <= tid@167@01 | live]
(push) ; 4
; [then-branch: 90 | !(0 <= tid@167@01)]
(assert (not (<= 0 tid@167@01)))
(pop) ; 4
(push) ; 4
; [else-branch: 90 | 0 <= tid@167@01]
(assert (<= 0 tid@167@01))
; [eval] tid < len
(pop) ; 4
(pop) ; 3
; Joined path conditions
; Joined path conditions
(assert (or (<= 0 tid@167@01) (not (<= 0 tid@167@01))))
(push) ; 3
; [then-branch: 91 | 0 <= tid@167@01 && tid@167@01 < len@150@01 | live]
; [else-branch: 91 | !(0 <= tid@167@01 && tid@167@01 < len@150@01) | live]
(push) ; 4
; [then-branch: 91 | 0 <= tid@167@01 && tid@167@01 < len@150@01]
(assert (and (<= 0 tid@167@01) (< tid@167@01 len@150@01)))
; [eval] b[tid].Ref__Integer_value == tid
; [eval] b[tid]
(push) ; 5
(assert (not (>= tid@167@01 0)))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(push) ; 5
(assert (not (< tid@167@01 (Seq_length b@148@01))))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(declare-const sm@168@01 $FVF<Ref__Integer_value>)
; Definitional axioms for snapshot map values
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@160@01 r)
      (and (<= 0 (inv@159@01 r)) (< (inv@159@01 r) len@150@01)))
    (=
      ($FVF.lookup_Ref__Integer_value (as sm@168@01  $FVF<Ref__Integer_value>) r)
      ($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@151@01)))))))) r)))
  :pattern (($FVF.lookup_Ref__Integer_value (as sm@168@01  $FVF<Ref__Integer_value>) r))
  :pattern (($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@151@01)))))))) r))
  :qid |qp.fvfValDef15|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@163@01 r)
      (and (<= 0 (inv@162@01 r)) (< (inv@162@01 r) len@150@01)))
    (=
      ($FVF.lookup_Ref__Integer_value (as sm@168@01  $FVF<Ref__Integer_value>) r)
      ($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@151@01)))))))))) r)))
  :pattern (($FVF.lookup_Ref__Integer_value (as sm@168@01  $FVF<Ref__Integer_value>) r))
  :pattern (($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@151@01)))))))))) r))
  :qid |qp.fvfValDef16|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@166@01 r)
      (and (<= 0 (inv@165@01 r)) (< (inv@165@01 r) len@150@01)))
    (=
      ($FVF.lookup_Ref__Integer_value (as sm@168@01  $FVF<Ref__Integer_value>) r)
      ($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@151@01)))))))))))) r)))
  :pattern (($FVF.lookup_Ref__Integer_value (as sm@168@01  $FVF<Ref__Integer_value>) r))
  :pattern (($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@151@01)))))))))))) r))
  :qid |qp.fvfValDef17|)))
(declare-const pm@169@01 $FPM)
(assert (forall ((r $Ref)) (!
  (=
    ($FVF.perm_Ref__Integer_value (as pm@169@01  $FPM) r)
    (+
      (+
        (ite
          (and
            (img@160@01 r)
            (and (<= 0 (inv@159@01 r)) (< (inv@159@01 r) len@150@01)))
          $Perm.Write
          $Perm.No)
        (ite
          (and
            (img@163@01 r)
            (and (<= 0 (inv@162@01 r)) (< (inv@162@01 r) len@150@01)))
          (/ (to_real 1) (to_real 2))
          $Perm.No))
      (ite
        (and
          (img@166@01 r)
          (and (<= 0 (inv@165@01 r)) (< (inv@165@01 r) len@150@01)))
        $Perm.Write
        $Perm.No)))
  :pattern (($FVF.perm_Ref__Integer_value (as pm@169@01  $FPM) r))
  :qid |qp.resPrmSumDef18|)))
(push) ; 5
(assert (not (<
  $Perm.No
  ($FVF.perm_Ref__Integer_value (as pm@169@01  $FPM) (Seq_index
    b@148@01
    tid@167@01)))))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(pop) ; 4
(push) ; 4
; [else-branch: 91 | !(0 <= tid@167@01 && tid@167@01 < len@150@01)]
(assert (not (and (<= 0 tid@167@01) (< tid@167@01 len@150@01))))
(pop) ; 4
(pop) ; 3
; Joined path conditions
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@160@01 r)
      (and (<= 0 (inv@159@01 r)) (< (inv@159@01 r) len@150@01)))
    (=
      ($FVF.lookup_Ref__Integer_value (as sm@168@01  $FVF<Ref__Integer_value>) r)
      ($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@151@01)))))))) r)))
  :pattern (($FVF.lookup_Ref__Integer_value (as sm@168@01  $FVF<Ref__Integer_value>) r))
  :pattern (($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@151@01)))))))) r))
  :qid |qp.fvfValDef15|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@163@01 r)
      (and (<= 0 (inv@162@01 r)) (< (inv@162@01 r) len@150@01)))
    (=
      ($FVF.lookup_Ref__Integer_value (as sm@168@01  $FVF<Ref__Integer_value>) r)
      ($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@151@01)))))))))) r)))
  :pattern (($FVF.lookup_Ref__Integer_value (as sm@168@01  $FVF<Ref__Integer_value>) r))
  :pattern (($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@151@01)))))))))) r))
  :qid |qp.fvfValDef16|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@166@01 r)
      (and (<= 0 (inv@165@01 r)) (< (inv@165@01 r) len@150@01)))
    (=
      ($FVF.lookup_Ref__Integer_value (as sm@168@01  $FVF<Ref__Integer_value>) r)
      ($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@151@01)))))))))))) r)))
  :pattern (($FVF.lookup_Ref__Integer_value (as sm@168@01  $FVF<Ref__Integer_value>) r))
  :pattern (($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@151@01)))))))))))) r))
  :qid |qp.fvfValDef17|)))
(assert (forall ((r $Ref)) (!
  (=
    ($FVF.perm_Ref__Integer_value (as pm@169@01  $FPM) r)
    (+
      (+
        (ite
          (and
            (img@160@01 r)
            (and (<= 0 (inv@159@01 r)) (< (inv@159@01 r) len@150@01)))
          $Perm.Write
          $Perm.No)
        (ite
          (and
            (img@163@01 r)
            (and (<= 0 (inv@162@01 r)) (< (inv@162@01 r) len@150@01)))
          (/ (to_real 1) (to_real 2))
          $Perm.No))
      (ite
        (and
          (img@166@01 r)
          (and (<= 0 (inv@165@01 r)) (< (inv@165@01 r) len@150@01)))
        $Perm.Write
        $Perm.No)))
  :pattern (($FVF.perm_Ref__Integer_value (as pm@169@01  $FPM) r))
  :qid |qp.resPrmSumDef18|)))
; Joined path conditions
(assert (or
  (not (and (<= 0 tid@167@01) (< tid@167@01 len@150@01)))
  (and (<= 0 tid@167@01) (< tid@167@01 len@150@01))))
(pop) ; 2
; Nested auxiliary terms: globals (aux)
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@160@01 r)
      (and (<= 0 (inv@159@01 r)) (< (inv@159@01 r) len@150@01)))
    (=
      ($FVF.lookup_Ref__Integer_value (as sm@168@01  $FVF<Ref__Integer_value>) r)
      ($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@151@01)))))))) r)))
  :pattern (($FVF.lookup_Ref__Integer_value (as sm@168@01  $FVF<Ref__Integer_value>) r))
  :pattern (($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@151@01)))))))) r))
  :qid |qp.fvfValDef15|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@163@01 r)
      (and (<= 0 (inv@162@01 r)) (< (inv@162@01 r) len@150@01)))
    (=
      ($FVF.lookup_Ref__Integer_value (as sm@168@01  $FVF<Ref__Integer_value>) r)
      ($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@151@01)))))))))) r)))
  :pattern (($FVF.lookup_Ref__Integer_value (as sm@168@01  $FVF<Ref__Integer_value>) r))
  :pattern (($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@151@01)))))))))) r))
  :qid |qp.fvfValDef16|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@166@01 r)
      (and (<= 0 (inv@165@01 r)) (< (inv@165@01 r) len@150@01)))
    (=
      ($FVF.lookup_Ref__Integer_value (as sm@168@01  $FVF<Ref__Integer_value>) r)
      ($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@151@01)))))))))))) r)))
  :pattern (($FVF.lookup_Ref__Integer_value (as sm@168@01  $FVF<Ref__Integer_value>) r))
  :pattern (($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@151@01)))))))))))) r))
  :qid |qp.fvfValDef17|)))
(assert (forall ((r $Ref)) (!
  (=
    ($FVF.perm_Ref__Integer_value (as pm@169@01  $FPM) r)
    (+
      (+
        (ite
          (and
            (img@160@01 r)
            (and (<= 0 (inv@159@01 r)) (< (inv@159@01 r) len@150@01)))
          $Perm.Write
          $Perm.No)
        (ite
          (and
            (img@163@01 r)
            (and (<= 0 (inv@162@01 r)) (< (inv@162@01 r) len@150@01)))
          (/ (to_real 1) (to_real 2))
          $Perm.No))
      (ite
        (and
          (img@166@01 r)
          (and (<= 0 (inv@165@01 r)) (< (inv@165@01 r) len@150@01)))
        $Perm.Write
        $Perm.No)))
  :pattern (($FVF.perm_Ref__Integer_value (as pm@169@01  $FPM) r))
  :qid |qp.resPrmSumDef18|)))
; Nested auxiliary terms: non-globals (aux)
(assert (forall ((tid@167@01 Int)) (!
  (and
    (or (<= 0 tid@167@01) (not (<= 0 tid@167@01)))
    (or
      (not (and (<= 0 tid@167@01) (< tid@167@01 len@150@01)))
      (and (<= 0 tid@167@01) (< tid@167@01 len@150@01))))
  :pattern ((Seq_index b@148@01 tid@167@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/third_party/test_forward_dep_c.vpr@189@13@189@96-aux|)))
(assert (forall ((tid@167@01 Int)) (!
  (=>
    (and (<= 0 tid@167@01) (< tid@167@01 len@150@01))
    (=
      ($FVF.lookup_Ref__Integer_value (as sm@168@01  $FVF<Ref__Integer_value>) (Seq_index
        b@148@01
        tid@167@01))
      tid@167@01))
  :pattern ((Seq_index b@148@01 tid@167@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/third_party/test_forward_dep_c.vpr@189@13@189@96|)))
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
(set-option :timeout 0)
(push) ; 2
(declare-const $t@170@01 $Snap)
(assert (= $t@170@01 ($Snap.combine ($Snap.first $t@170@01) ($Snap.second $t@170@01))))
(assert (= ($Snap.first $t@170@01) $Snap.unit))
; [eval] |a| == len
; [eval] |a|
(assert (=
  ($Snap.second $t@170@01)
  ($Snap.combine
    ($Snap.first ($Snap.second $t@170@01))
    ($Snap.second ($Snap.second $t@170@01)))))
(declare-const i@171@01 Int)
(push) ; 3
; [eval] 0 <= i && i < len
; [eval] 0 <= i
(push) ; 4
; [then-branch: 92 | !(0 <= i@171@01) | live]
; [else-branch: 92 | 0 <= i@171@01 | live]
(push) ; 5
; [then-branch: 92 | !(0 <= i@171@01)]
(assert (not (<= 0 i@171@01)))
(pop) ; 5
(push) ; 5
; [else-branch: 92 | 0 <= i@171@01]
(assert (<= 0 i@171@01))
; [eval] i < len
(pop) ; 5
(pop) ; 4
; Joined path conditions
; Joined path conditions
(assert (or (<= 0 i@171@01) (not (<= 0 i@171@01))))
(assert (and (<= 0 i@171@01) (< i@171@01 len@150@01)))
; [eval] a[i]
(push) ; 4
(assert (not (>= i@171@01 0)))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(push) ; 4
(assert (not (< i@171@01 (Seq_length a@147@01))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(pop) ; 3
(declare-fun inv@172@01 ($Ref) Int)
(declare-fun img@173@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
(assert (forall ((i@171@01 Int)) (!
  (=>
    (and (<= 0 i@171@01) (< i@171@01 len@150@01))
    (or (<= 0 i@171@01) (not (<= 0 i@171@01))))
  :pattern ((Seq_index a@147@01 i@171@01))
  :qid |Ref__Integer_value-aux|)))
; Check receiver injectivity
(push) ; 3
(assert (not (forall ((i1@171@01 Int) (i2@171@01 Int)) (!
  (=>
    (and
      (and (<= 0 i1@171@01) (< i1@171@01 len@150@01))
      (and (<= 0 i2@171@01) (< i2@171@01 len@150@01))
      (= (Seq_index a@147@01 i1@171@01) (Seq_index a@147@01 i2@171@01)))
    (= i1@171@01 i2@171@01))
  
  :qid |Ref__Integer_value-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((i@171@01 Int)) (!
  (=>
    (and (<= 0 i@171@01) (< i@171@01 len@150@01))
    (and
      (= (inv@172@01 (Seq_index a@147@01 i@171@01)) i@171@01)
      (img@173@01 (Seq_index a@147@01 i@171@01))))
  :pattern ((Seq_index a@147@01 i@171@01))
  :qid |quant-u-8720|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@173@01 r)
      (and (<= 0 (inv@172@01 r)) (< (inv@172@01 r) len@150@01)))
    (= (Seq_index a@147@01 (inv@172@01 r)) r))
  :pattern ((inv@172@01 r))
  :qid |Ref__Integer_value-fctOfInv|)))
; Permissions are non-negative
; Field permissions are at most one
; Permission implies non-null receiver
(assert (forall ((i@171@01 Int)) (!
  (=>
    (and (<= 0 i@171@01) (< i@171@01 len@150@01))
    (not (= (Seq_index a@147@01 i@171@01) $Ref.null)))
  :pattern ((Seq_index a@147@01 i@171@01))
  :qid |Ref__Integer_value-permImpliesNonNull|)))
(assert (=
  ($Snap.second ($Snap.second $t@170@01))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second $t@170@01)))
    ($Snap.second ($Snap.second ($Snap.second $t@170@01))))))
(assert (= ($Snap.first ($Snap.second ($Snap.second $t@170@01))) $Snap.unit))
; [eval] |b| == len
; [eval] |b|
(assert (=
  ($Snap.second ($Snap.second ($Snap.second $t@170@01)))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@170@01))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@170@01)))))))
(declare-const i@174@01 Int)
(push) ; 3
; [eval] 0 <= i && i < len
; [eval] 0 <= i
(push) ; 4
; [then-branch: 93 | !(0 <= i@174@01) | live]
; [else-branch: 93 | 0 <= i@174@01 | live]
(push) ; 5
; [then-branch: 93 | !(0 <= i@174@01)]
(assert (not (<= 0 i@174@01)))
(pop) ; 5
(push) ; 5
; [else-branch: 93 | 0 <= i@174@01]
(assert (<= 0 i@174@01))
; [eval] i < len
(pop) ; 5
(pop) ; 4
; Joined path conditions
; Joined path conditions
(assert (or (<= 0 i@174@01) (not (<= 0 i@174@01))))
(assert (and (<= 0 i@174@01) (< i@174@01 len@150@01)))
; [eval] b[i]
(push) ; 4
(assert (not (>= i@174@01 0)))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(push) ; 4
(assert (not (< i@174@01 (Seq_length b@148@01))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(pop) ; 3
(declare-fun inv@175@01 ($Ref) Int)
(declare-fun img@176@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
(assert (forall ((i@174@01 Int)) (!
  (=>
    (and (<= 0 i@174@01) (< i@174@01 len@150@01))
    (or (<= 0 i@174@01) (not (<= 0 i@174@01))))
  :pattern ((Seq_index b@148@01 i@174@01))
  :qid |Ref__Integer_value-aux|)))
; Check receiver injectivity
(push) ; 3
(assert (not (forall ((i1@174@01 Int) (i2@174@01 Int)) (!
  (=>
    (and
      (and (<= 0 i1@174@01) (< i1@174@01 len@150@01))
      (and (<= 0 i2@174@01) (< i2@174@01 len@150@01))
      (= (Seq_index b@148@01 i1@174@01) (Seq_index b@148@01 i2@174@01)))
    (= i1@174@01 i2@174@01))
  
  :qid |Ref__Integer_value-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((i@174@01 Int)) (!
  (=>
    (and (<= 0 i@174@01) (< i@174@01 len@150@01))
    (and
      (= (inv@175@01 (Seq_index b@148@01 i@174@01)) i@174@01)
      (img@176@01 (Seq_index b@148@01 i@174@01))))
  :pattern ((Seq_index b@148@01 i@174@01))
  :qid |quant-u-8722|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@176@01 r)
      (and (<= 0 (inv@175@01 r)) (< (inv@175@01 r) len@150@01)))
    (= (Seq_index b@148@01 (inv@175@01 r)) r))
  :pattern ((inv@175@01 r))
  :qid |Ref__Integer_value-fctOfInv|)))
; Permissions are non-negative
; Field permissions are at most one
; Permission implies non-null receiver
(assert (forall ((i@174@01 Int)) (!
  (=>
    (and (<= 0 i@174@01) (< i@174@01 len@150@01))
    (not (= (Seq_index b@148@01 i@174@01) $Ref.null)))
  :pattern ((Seq_index b@148@01 i@174@01))
  :qid |Ref__Integer_value-permImpliesNonNull|)))
(push) ; 3
(set-option :timeout 10)
(assert (not (forall ((r $Ref)) (!
  (and
    (= (Seq_index b@148@01 i@174@01) (Seq_index a@147@01 i@171@01))
    (=
      (and
        (img@176@01 r)
        (and (<= 0 (inv@175@01 r)) (< (inv@175@01 r) len@150@01)))
      (and
        (img@173@01 r)
        (and (<= 0 (inv@172@01 r)) (< (inv@172@01 r) len@150@01)))))
  
  :qid |quant-u-8723|))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@170@01))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@170@01)))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@170@01))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@170@01)))))
  $Snap.unit))
; [eval] |c| == len
; [eval] |c|
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@170@01)))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@170@01))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@170@01)))))))))
(declare-const i@177@01 Int)
(set-option :timeout 0)
(push) ; 3
; [eval] 0 <= i && i < len
; [eval] 0 <= i
(push) ; 4
; [then-branch: 94 | !(0 <= i@177@01) | live]
; [else-branch: 94 | 0 <= i@177@01 | live]
(push) ; 5
; [then-branch: 94 | !(0 <= i@177@01)]
(assert (not (<= 0 i@177@01)))
(pop) ; 5
(push) ; 5
; [else-branch: 94 | 0 <= i@177@01]
(assert (<= 0 i@177@01))
; [eval] i < len
(pop) ; 5
(pop) ; 4
; Joined path conditions
; Joined path conditions
(assert (or (<= 0 i@177@01) (not (<= 0 i@177@01))))
(assert (and (<= 0 i@177@01) (< i@177@01 len@150@01)))
; [eval] c[i]
(push) ; 4
(assert (not (>= i@177@01 0)))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(push) ; 4
(assert (not (< i@177@01 (Seq_length c@149@01))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(pop) ; 3
(declare-fun inv@178@01 ($Ref) Int)
(declare-fun img@179@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
(assert (forall ((i@177@01 Int)) (!
  (=>
    (and (<= 0 i@177@01) (< i@177@01 len@150@01))
    (or (<= 0 i@177@01) (not (<= 0 i@177@01))))
  :pattern ((Seq_index c@149@01 i@177@01))
  :qid |Ref__Integer_value-aux|)))
; Check receiver injectivity
(push) ; 3
(assert (not (forall ((i1@177@01 Int) (i2@177@01 Int)) (!
  (=>
    (and
      (and (<= 0 i1@177@01) (< i1@177@01 len@150@01))
      (and (<= 0 i2@177@01) (< i2@177@01 len@150@01))
      (= (Seq_index c@149@01 i1@177@01) (Seq_index c@149@01 i2@177@01)))
    (= i1@177@01 i2@177@01))
  
  :qid |Ref__Integer_value-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((i@177@01 Int)) (!
  (=>
    (and (<= 0 i@177@01) (< i@177@01 len@150@01))
    (and
      (= (inv@178@01 (Seq_index c@149@01 i@177@01)) i@177@01)
      (img@179@01 (Seq_index c@149@01 i@177@01))))
  :pattern ((Seq_index c@149@01 i@177@01))
  :qid |quant-u-8725|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@179@01 r)
      (and (<= 0 (inv@178@01 r)) (< (inv@178@01 r) len@150@01)))
    (= (Seq_index c@149@01 (inv@178@01 r)) r))
  :pattern ((inv@178@01 r))
  :qid |Ref__Integer_value-fctOfInv|)))
; Permissions are non-negative
; Field permissions are at most one
; Permission implies non-null receiver
(assert (forall ((i@177@01 Int)) (!
  (=>
    (and (<= 0 i@177@01) (< i@177@01 len@150@01))
    (not (= (Seq_index c@149@01 i@177@01) $Ref.null)))
  :pattern ((Seq_index c@149@01 i@177@01))
  :qid |Ref__Integer_value-permImpliesNonNull|)))
(push) ; 3
(set-option :timeout 10)
(assert (not (forall ((r $Ref)) (!
  (and
    (= (Seq_index c@149@01 i@177@01) (Seq_index b@148@01 i@174@01))
    (=
      (and
        (img@179@01 r)
        (and (<= 0 (inv@178@01 r)) (< (inv@178@01 r) len@150@01)))
      (and
        (img@176@01 r)
        (and (<= 0 (inv@175@01 r)) (< (inv@175@01 r) len@150@01)))))
  
  :qid |quant-u-8726|))))
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
    (= (Seq_index c@149@01 i@177@01) (Seq_index a@147@01 i@171@01))
    (=
      (and
        (img@179@01 r)
        (and (<= 0 (inv@178@01 r)) (< (inv@178@01 r) len@150@01)))
      (and
        (img@173@01 r)
        (and (<= 0 (inv@172@01 r)) (< (inv@172@01 r) len@150@01)))))
  
  :qid |quant-u-8727|))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@170@01))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@170@01)))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@170@01))))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@170@01)))))))
  $Snap.unit))
; [eval] (forall i: Int :: { a[i] } 0 <= i && i < len ==> a[i].Ref__Integer_value == i + 1)
(declare-const i@180@01 Int)
(set-option :timeout 0)
(push) ; 3
; [eval] 0 <= i && i < len ==> a[i].Ref__Integer_value == i + 1
; [eval] 0 <= i && i < len
; [eval] 0 <= i
(push) ; 4
; [then-branch: 95 | !(0 <= i@180@01) | live]
; [else-branch: 95 | 0 <= i@180@01 | live]
(push) ; 5
; [then-branch: 95 | !(0 <= i@180@01)]
(assert (not (<= 0 i@180@01)))
(pop) ; 5
(push) ; 5
; [else-branch: 95 | 0 <= i@180@01]
(assert (<= 0 i@180@01))
; [eval] i < len
(pop) ; 5
(pop) ; 4
; Joined path conditions
; Joined path conditions
(assert (or (<= 0 i@180@01) (not (<= 0 i@180@01))))
(push) ; 4
; [then-branch: 96 | 0 <= i@180@01 && i@180@01 < len@150@01 | live]
; [else-branch: 96 | !(0 <= i@180@01 && i@180@01 < len@150@01) | live]
(push) ; 5
; [then-branch: 96 | 0 <= i@180@01 && i@180@01 < len@150@01]
(assert (and (<= 0 i@180@01) (< i@180@01 len@150@01)))
; [eval] a[i].Ref__Integer_value == i + 1
; [eval] a[i]
(push) ; 6
(assert (not (>= i@180@01 0)))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(push) ; 6
(assert (not (< i@180@01 (Seq_length a@147@01))))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(declare-const sm@181@01 $FVF<Ref__Integer_value>)
; Definitional axioms for snapshot map values
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@173@01 r)
      (and (<= 0 (inv@172@01 r)) (< (inv@172@01 r) len@150@01)))
    (=
      ($FVF.lookup_Ref__Integer_value (as sm@181@01  $FVF<Ref__Integer_value>) r)
      ($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second $t@170@01))) r)))
  :pattern (($FVF.lookup_Ref__Integer_value (as sm@181@01  $FVF<Ref__Integer_value>) r))
  :pattern (($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second $t@170@01))) r))
  :qid |qp.fvfValDef19|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@176@01 r)
      (and (<= 0 (inv@175@01 r)) (< (inv@175@01 r) len@150@01)))
    (=
      ($FVF.lookup_Ref__Integer_value (as sm@181@01  $FVF<Ref__Integer_value>) r)
      ($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@170@01))))) r)))
  :pattern (($FVF.lookup_Ref__Integer_value (as sm@181@01  $FVF<Ref__Integer_value>) r))
  :pattern (($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@170@01))))) r))
  :qid |qp.fvfValDef20|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@179@01 r)
      (and (<= 0 (inv@178@01 r)) (< (inv@178@01 r) len@150@01)))
    (=
      ($FVF.lookup_Ref__Integer_value (as sm@181@01  $FVF<Ref__Integer_value>) r)
      ($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@170@01))))))) r)))
  :pattern (($FVF.lookup_Ref__Integer_value (as sm@181@01  $FVF<Ref__Integer_value>) r))
  :pattern (($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@170@01))))))) r))
  :qid |qp.fvfValDef21|)))
(declare-const pm@182@01 $FPM)
(assert (forall ((r $Ref)) (!
  (=
    ($FVF.perm_Ref__Integer_value (as pm@182@01  $FPM) r)
    (+
      (+
        (ite
          (and
            (img@173@01 r)
            (and (<= 0 (inv@172@01 r)) (< (inv@172@01 r) len@150@01)))
          $Perm.Write
          $Perm.No)
        (ite
          (and
            (img@176@01 r)
            (and (<= 0 (inv@175@01 r)) (< (inv@175@01 r) len@150@01)))
          (/ (to_real 1) (to_real 2))
          $Perm.No))
      (ite
        (and
          (img@179@01 r)
          (and (<= 0 (inv@178@01 r)) (< (inv@178@01 r) len@150@01)))
        $Perm.Write
        $Perm.No)))
  :pattern (($FVF.perm_Ref__Integer_value (as pm@182@01  $FPM) r))
  :qid |qp.resPrmSumDef22|)))
(push) ; 6
(assert (not (<
  $Perm.No
  ($FVF.perm_Ref__Integer_value (as pm@182@01  $FPM) (Seq_index
    a@147@01
    i@180@01)))))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
; [eval] i + 1
(pop) ; 5
(push) ; 5
; [else-branch: 96 | !(0 <= i@180@01 && i@180@01 < len@150@01)]
(assert (not (and (<= 0 i@180@01) (< i@180@01 len@150@01))))
(pop) ; 5
(pop) ; 4
; Joined path conditions
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@173@01 r)
      (and (<= 0 (inv@172@01 r)) (< (inv@172@01 r) len@150@01)))
    (=
      ($FVF.lookup_Ref__Integer_value (as sm@181@01  $FVF<Ref__Integer_value>) r)
      ($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second $t@170@01))) r)))
  :pattern (($FVF.lookup_Ref__Integer_value (as sm@181@01  $FVF<Ref__Integer_value>) r))
  :pattern (($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second $t@170@01))) r))
  :qid |qp.fvfValDef19|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@176@01 r)
      (and (<= 0 (inv@175@01 r)) (< (inv@175@01 r) len@150@01)))
    (=
      ($FVF.lookup_Ref__Integer_value (as sm@181@01  $FVF<Ref__Integer_value>) r)
      ($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@170@01))))) r)))
  :pattern (($FVF.lookup_Ref__Integer_value (as sm@181@01  $FVF<Ref__Integer_value>) r))
  :pattern (($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@170@01))))) r))
  :qid |qp.fvfValDef20|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@179@01 r)
      (and (<= 0 (inv@178@01 r)) (< (inv@178@01 r) len@150@01)))
    (=
      ($FVF.lookup_Ref__Integer_value (as sm@181@01  $FVF<Ref__Integer_value>) r)
      ($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@170@01))))))) r)))
  :pattern (($FVF.lookup_Ref__Integer_value (as sm@181@01  $FVF<Ref__Integer_value>) r))
  :pattern (($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@170@01))))))) r))
  :qid |qp.fvfValDef21|)))
(assert (forall ((r $Ref)) (!
  (=
    ($FVF.perm_Ref__Integer_value (as pm@182@01  $FPM) r)
    (+
      (+
        (ite
          (and
            (img@173@01 r)
            (and (<= 0 (inv@172@01 r)) (< (inv@172@01 r) len@150@01)))
          $Perm.Write
          $Perm.No)
        (ite
          (and
            (img@176@01 r)
            (and (<= 0 (inv@175@01 r)) (< (inv@175@01 r) len@150@01)))
          (/ (to_real 1) (to_real 2))
          $Perm.No))
      (ite
        (and
          (img@179@01 r)
          (and (<= 0 (inv@178@01 r)) (< (inv@178@01 r) len@150@01)))
        $Perm.Write
        $Perm.No)))
  :pattern (($FVF.perm_Ref__Integer_value (as pm@182@01  $FPM) r))
  :qid |qp.resPrmSumDef22|)))
; Joined path conditions
(assert (or
  (not (and (<= 0 i@180@01) (< i@180@01 len@150@01)))
  (and (<= 0 i@180@01) (< i@180@01 len@150@01))))
(pop) ; 3
; Nested auxiliary terms: globals (aux)
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@173@01 r)
      (and (<= 0 (inv@172@01 r)) (< (inv@172@01 r) len@150@01)))
    (=
      ($FVF.lookup_Ref__Integer_value (as sm@181@01  $FVF<Ref__Integer_value>) r)
      ($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second $t@170@01))) r)))
  :pattern (($FVF.lookup_Ref__Integer_value (as sm@181@01  $FVF<Ref__Integer_value>) r))
  :pattern (($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second $t@170@01))) r))
  :qid |qp.fvfValDef19|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@176@01 r)
      (and (<= 0 (inv@175@01 r)) (< (inv@175@01 r) len@150@01)))
    (=
      ($FVF.lookup_Ref__Integer_value (as sm@181@01  $FVF<Ref__Integer_value>) r)
      ($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@170@01))))) r)))
  :pattern (($FVF.lookup_Ref__Integer_value (as sm@181@01  $FVF<Ref__Integer_value>) r))
  :pattern (($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@170@01))))) r))
  :qid |qp.fvfValDef20|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@179@01 r)
      (and (<= 0 (inv@178@01 r)) (< (inv@178@01 r) len@150@01)))
    (=
      ($FVF.lookup_Ref__Integer_value (as sm@181@01  $FVF<Ref__Integer_value>) r)
      ($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@170@01))))))) r)))
  :pattern (($FVF.lookup_Ref__Integer_value (as sm@181@01  $FVF<Ref__Integer_value>) r))
  :pattern (($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@170@01))))))) r))
  :qid |qp.fvfValDef21|)))
(assert (forall ((r $Ref)) (!
  (=
    ($FVF.perm_Ref__Integer_value (as pm@182@01  $FPM) r)
    (+
      (+
        (ite
          (and
            (img@173@01 r)
            (and (<= 0 (inv@172@01 r)) (< (inv@172@01 r) len@150@01)))
          $Perm.Write
          $Perm.No)
        (ite
          (and
            (img@176@01 r)
            (and (<= 0 (inv@175@01 r)) (< (inv@175@01 r) len@150@01)))
          (/ (to_real 1) (to_real 2))
          $Perm.No))
      (ite
        (and
          (img@179@01 r)
          (and (<= 0 (inv@178@01 r)) (< (inv@178@01 r) len@150@01)))
        $Perm.Write
        $Perm.No)))
  :pattern (($FVF.perm_Ref__Integer_value (as pm@182@01  $FPM) r))
  :qid |qp.resPrmSumDef22|)))
; Nested auxiliary terms: non-globals (aux)
(assert (forall ((i@180@01 Int)) (!
  (and
    (or (<= 0 i@180@01) (not (<= 0 i@180@01)))
    (or
      (not (and (<= 0 i@180@01) (< i@180@01 len@150@01)))
      (and (<= 0 i@180@01) (< i@180@01 len@150@01))))
  :pattern ((Seq_index a@147@01 i@180@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/third_party/test_forward_dep_c.vpr@196@12@196@89-aux|)))
(assert (forall ((i@180@01 Int)) (!
  (=>
    (and (<= 0 i@180@01) (< i@180@01 len@150@01))
    (=
      ($FVF.lookup_Ref__Integer_value (as sm@181@01  $FVF<Ref__Integer_value>) (Seq_index
        a@147@01
        i@180@01))
      (+ i@180@01 1)))
  :pattern ((Seq_index a@147@01 i@180@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/third_party/test_forward_dep_c.vpr@196@12@196@89|)))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@170@01)))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@170@01))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@170@01)))))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@170@01))))))))
  $Snap.unit))
; [eval] (forall i: Int :: { b[i] } 0 <= i && i < len ==> b[i].Ref__Integer_value == i)
(declare-const i@183@01 Int)
(push) ; 3
; [eval] 0 <= i && i < len ==> b[i].Ref__Integer_value == i
; [eval] 0 <= i && i < len
; [eval] 0 <= i
(push) ; 4
; [then-branch: 97 | !(0 <= i@183@01) | live]
; [else-branch: 97 | 0 <= i@183@01 | live]
(push) ; 5
; [then-branch: 97 | !(0 <= i@183@01)]
(assert (not (<= 0 i@183@01)))
(pop) ; 5
(push) ; 5
; [else-branch: 97 | 0 <= i@183@01]
(assert (<= 0 i@183@01))
; [eval] i < len
(pop) ; 5
(pop) ; 4
; Joined path conditions
; Joined path conditions
(assert (or (<= 0 i@183@01) (not (<= 0 i@183@01))))
(push) ; 4
; [then-branch: 98 | 0 <= i@183@01 && i@183@01 < len@150@01 | live]
; [else-branch: 98 | !(0 <= i@183@01 && i@183@01 < len@150@01) | live]
(push) ; 5
; [then-branch: 98 | 0 <= i@183@01 && i@183@01 < len@150@01]
(assert (and (<= 0 i@183@01) (< i@183@01 len@150@01)))
; [eval] b[i].Ref__Integer_value == i
; [eval] b[i]
(push) ; 6
(assert (not (>= i@183@01 0)))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(push) ; 6
(assert (not (< i@183@01 (Seq_length b@148@01))))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(assert (and
  (forall ((r $Ref)) (!
    (=>
      (and
        (img@173@01 r)
        (and (<= 0 (inv@172@01 r)) (< (inv@172@01 r) len@150@01)))
      (=
        ($FVF.lookup_Ref__Integer_value (as sm@181@01  $FVF<Ref__Integer_value>) r)
        ($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second $t@170@01))) r)))
    :pattern (($FVF.lookup_Ref__Integer_value (as sm@181@01  $FVF<Ref__Integer_value>) r))
    :pattern (($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second $t@170@01))) r))
    :qid |qp.fvfValDef19|))
  (forall ((r $Ref)) (!
    (=>
      (and
        (img@176@01 r)
        (and (<= 0 (inv@175@01 r)) (< (inv@175@01 r) len@150@01)))
      (=
        ($FVF.lookup_Ref__Integer_value (as sm@181@01  $FVF<Ref__Integer_value>) r)
        ($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@170@01))))) r)))
    :pattern (($FVF.lookup_Ref__Integer_value (as sm@181@01  $FVF<Ref__Integer_value>) r))
    :pattern (($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@170@01))))) r))
    :qid |qp.fvfValDef20|))
  (forall ((r $Ref)) (!
    (=>
      (and
        (img@179@01 r)
        (and (<= 0 (inv@178@01 r)) (< (inv@178@01 r) len@150@01)))
      (=
        ($FVF.lookup_Ref__Integer_value (as sm@181@01  $FVF<Ref__Integer_value>) r)
        ($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@170@01))))))) r)))
    :pattern (($FVF.lookup_Ref__Integer_value (as sm@181@01  $FVF<Ref__Integer_value>) r))
    :pattern (($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@170@01))))))) r))
    :qid |qp.fvfValDef21|))))
(push) ; 6
(assert (not (<
  $Perm.No
  (+
    (+
      (ite
        (and
          (img@173@01 (Seq_index b@148@01 i@183@01))
          (and
            (<= 0 (inv@172@01 (Seq_index b@148@01 i@183@01)))
            (< (inv@172@01 (Seq_index b@148@01 i@183@01)) len@150@01)))
        $Perm.Write
        $Perm.No)
      (ite
        (and
          (img@176@01 (Seq_index b@148@01 i@183@01))
          (and
            (<= 0 (inv@175@01 (Seq_index b@148@01 i@183@01)))
            (< (inv@175@01 (Seq_index b@148@01 i@183@01)) len@150@01)))
        (/ (to_real 1) (to_real 2))
        $Perm.No))
    (ite
      (and
        (img@179@01 (Seq_index b@148@01 i@183@01))
        (and
          (<= 0 (inv@178@01 (Seq_index b@148@01 i@183@01)))
          (< (inv@178@01 (Seq_index b@148@01 i@183@01)) len@150@01)))
      $Perm.Write
      $Perm.No)))))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(pop) ; 5
(push) ; 5
; [else-branch: 98 | !(0 <= i@183@01 && i@183@01 < len@150@01)]
(assert (not (and (<= 0 i@183@01) (< i@183@01 len@150@01))))
(pop) ; 5
(pop) ; 4
; Joined path conditions
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@173@01 r)
      (and (<= 0 (inv@172@01 r)) (< (inv@172@01 r) len@150@01)))
    (=
      ($FVF.lookup_Ref__Integer_value (as sm@181@01  $FVF<Ref__Integer_value>) r)
      ($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second $t@170@01))) r)))
  :pattern (($FVF.lookup_Ref__Integer_value (as sm@181@01  $FVF<Ref__Integer_value>) r))
  :pattern (($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second $t@170@01))) r))
  :qid |qp.fvfValDef19|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@176@01 r)
      (and (<= 0 (inv@175@01 r)) (< (inv@175@01 r) len@150@01)))
    (=
      ($FVF.lookup_Ref__Integer_value (as sm@181@01  $FVF<Ref__Integer_value>) r)
      ($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@170@01))))) r)))
  :pattern (($FVF.lookup_Ref__Integer_value (as sm@181@01  $FVF<Ref__Integer_value>) r))
  :pattern (($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@170@01))))) r))
  :qid |qp.fvfValDef20|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@179@01 r)
      (and (<= 0 (inv@178@01 r)) (< (inv@178@01 r) len@150@01)))
    (=
      ($FVF.lookup_Ref__Integer_value (as sm@181@01  $FVF<Ref__Integer_value>) r)
      ($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@170@01))))))) r)))
  :pattern (($FVF.lookup_Ref__Integer_value (as sm@181@01  $FVF<Ref__Integer_value>) r))
  :pattern (($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@170@01))))))) r))
  :qid |qp.fvfValDef21|)))
; Joined path conditions
(assert (or
  (not (and (<= 0 i@183@01) (< i@183@01 len@150@01)))
  (and (<= 0 i@183@01) (< i@183@01 len@150@01))))
(pop) ; 3
; Nested auxiliary terms: globals (aux)
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@173@01 r)
      (and (<= 0 (inv@172@01 r)) (< (inv@172@01 r) len@150@01)))
    (=
      ($FVF.lookup_Ref__Integer_value (as sm@181@01  $FVF<Ref__Integer_value>) r)
      ($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second $t@170@01))) r)))
  :pattern (($FVF.lookup_Ref__Integer_value (as sm@181@01  $FVF<Ref__Integer_value>) r))
  :pattern (($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second $t@170@01))) r))
  :qid |qp.fvfValDef19|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@176@01 r)
      (and (<= 0 (inv@175@01 r)) (< (inv@175@01 r) len@150@01)))
    (=
      ($FVF.lookup_Ref__Integer_value (as sm@181@01  $FVF<Ref__Integer_value>) r)
      ($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@170@01))))) r)))
  :pattern (($FVF.lookup_Ref__Integer_value (as sm@181@01  $FVF<Ref__Integer_value>) r))
  :pattern (($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@170@01))))) r))
  :qid |qp.fvfValDef20|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@179@01 r)
      (and (<= 0 (inv@178@01 r)) (< (inv@178@01 r) len@150@01)))
    (=
      ($FVF.lookup_Ref__Integer_value (as sm@181@01  $FVF<Ref__Integer_value>) r)
      ($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@170@01))))))) r)))
  :pattern (($FVF.lookup_Ref__Integer_value (as sm@181@01  $FVF<Ref__Integer_value>) r))
  :pattern (($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@170@01))))))) r))
  :qid |qp.fvfValDef21|)))
; Nested auxiliary terms: non-globals (aux)
(assert (forall ((i@183@01 Int)) (!
  (and
    (or (<= 0 i@183@01) (not (<= 0 i@183@01)))
    (or
      (not (and (<= 0 i@183@01) (< i@183@01 len@150@01)))
      (and (<= 0 i@183@01) (< i@183@01 len@150@01))))
  :pattern ((Seq_index b@148@01 i@183@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/third_party/test_forward_dep_c.vpr@197@12@197@85-aux|)))
(assert (forall ((i@183@01 Int)) (!
  (=>
    (and (<= 0 i@183@01) (< i@183@01 len@150@01))
    (=
      ($FVF.lookup_Ref__Integer_value (as sm@181@01  $FVF<Ref__Integer_value>) (Seq_index
        b@148@01
        i@183@01))
      i@183@01))
  :pattern ((Seq_index b@148@01 i@183@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/third_party/test_forward_dep_c.vpr@197@12@197@85|)))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@170@01))))))))
  $Snap.unit))
; [eval] (forall i: Int :: { c[i] } 0 < i && i < len ==> c[i].Ref__Integer_value == i + 2)
(declare-const i@184@01 Int)
(push) ; 3
; [eval] 0 < i && i < len ==> c[i].Ref__Integer_value == i + 2
; [eval] 0 < i && i < len
; [eval] 0 < i
(push) ; 4
; [then-branch: 99 | !(0 < i@184@01) | live]
; [else-branch: 99 | 0 < i@184@01 | live]
(push) ; 5
; [then-branch: 99 | !(0 < i@184@01)]
(assert (not (< 0 i@184@01)))
(pop) ; 5
(push) ; 5
; [else-branch: 99 | 0 < i@184@01]
(assert (< 0 i@184@01))
; [eval] i < len
(pop) ; 5
(pop) ; 4
; Joined path conditions
; Joined path conditions
(assert (or (< 0 i@184@01) (not (< 0 i@184@01))))
(push) ; 4
; [then-branch: 100 | 0 < i@184@01 && i@184@01 < len@150@01 | live]
; [else-branch: 100 | !(0 < i@184@01 && i@184@01 < len@150@01) | live]
(push) ; 5
; [then-branch: 100 | 0 < i@184@01 && i@184@01 < len@150@01]
(assert (and (< 0 i@184@01) (< i@184@01 len@150@01)))
; [eval] c[i].Ref__Integer_value == i + 2
; [eval] c[i]
(push) ; 6
(assert (not (>= i@184@01 0)))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(push) ; 6
(assert (not (< i@184@01 (Seq_length c@149@01))))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(assert (and
  (forall ((r $Ref)) (!
    (=>
      (and
        (img@173@01 r)
        (and (<= 0 (inv@172@01 r)) (< (inv@172@01 r) len@150@01)))
      (=
        ($FVF.lookup_Ref__Integer_value (as sm@181@01  $FVF<Ref__Integer_value>) r)
        ($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second $t@170@01))) r)))
    :pattern (($FVF.lookup_Ref__Integer_value (as sm@181@01  $FVF<Ref__Integer_value>) r))
    :pattern (($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second $t@170@01))) r))
    :qid |qp.fvfValDef19|))
  (forall ((r $Ref)) (!
    (=>
      (and
        (img@176@01 r)
        (and (<= 0 (inv@175@01 r)) (< (inv@175@01 r) len@150@01)))
      (=
        ($FVF.lookup_Ref__Integer_value (as sm@181@01  $FVF<Ref__Integer_value>) r)
        ($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@170@01))))) r)))
    :pattern (($FVF.lookup_Ref__Integer_value (as sm@181@01  $FVF<Ref__Integer_value>) r))
    :pattern (($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@170@01))))) r))
    :qid |qp.fvfValDef20|))
  (forall ((r $Ref)) (!
    (=>
      (and
        (img@179@01 r)
        (and (<= 0 (inv@178@01 r)) (< (inv@178@01 r) len@150@01)))
      (=
        ($FVF.lookup_Ref__Integer_value (as sm@181@01  $FVF<Ref__Integer_value>) r)
        ($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@170@01))))))) r)))
    :pattern (($FVF.lookup_Ref__Integer_value (as sm@181@01  $FVF<Ref__Integer_value>) r))
    :pattern (($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@170@01))))))) r))
    :qid |qp.fvfValDef21|))))
(push) ; 6
(assert (not (<
  $Perm.No
  (+
    (+
      (ite
        (and
          (img@173@01 (Seq_index c@149@01 i@184@01))
          (and
            (<= 0 (inv@172@01 (Seq_index c@149@01 i@184@01)))
            (< (inv@172@01 (Seq_index c@149@01 i@184@01)) len@150@01)))
        $Perm.Write
        $Perm.No)
      (ite
        (and
          (img@176@01 (Seq_index c@149@01 i@184@01))
          (and
            (<= 0 (inv@175@01 (Seq_index c@149@01 i@184@01)))
            (< (inv@175@01 (Seq_index c@149@01 i@184@01)) len@150@01)))
        (/ (to_real 1) (to_real 2))
        $Perm.No))
    (ite
      (and
        (img@179@01 (Seq_index c@149@01 i@184@01))
        (and
          (<= 0 (inv@178@01 (Seq_index c@149@01 i@184@01)))
          (< (inv@178@01 (Seq_index c@149@01 i@184@01)) len@150@01)))
      $Perm.Write
      $Perm.No)))))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
; [eval] i + 2
(pop) ; 5
(push) ; 5
; [else-branch: 100 | !(0 < i@184@01 && i@184@01 < len@150@01)]
(assert (not (and (< 0 i@184@01) (< i@184@01 len@150@01))))
(pop) ; 5
(pop) ; 4
; Joined path conditions
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@173@01 r)
      (and (<= 0 (inv@172@01 r)) (< (inv@172@01 r) len@150@01)))
    (=
      ($FVF.lookup_Ref__Integer_value (as sm@181@01  $FVF<Ref__Integer_value>) r)
      ($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second $t@170@01))) r)))
  :pattern (($FVF.lookup_Ref__Integer_value (as sm@181@01  $FVF<Ref__Integer_value>) r))
  :pattern (($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second $t@170@01))) r))
  :qid |qp.fvfValDef19|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@176@01 r)
      (and (<= 0 (inv@175@01 r)) (< (inv@175@01 r) len@150@01)))
    (=
      ($FVF.lookup_Ref__Integer_value (as sm@181@01  $FVF<Ref__Integer_value>) r)
      ($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@170@01))))) r)))
  :pattern (($FVF.lookup_Ref__Integer_value (as sm@181@01  $FVF<Ref__Integer_value>) r))
  :pattern (($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@170@01))))) r))
  :qid |qp.fvfValDef20|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@179@01 r)
      (and (<= 0 (inv@178@01 r)) (< (inv@178@01 r) len@150@01)))
    (=
      ($FVF.lookup_Ref__Integer_value (as sm@181@01  $FVF<Ref__Integer_value>) r)
      ($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@170@01))))))) r)))
  :pattern (($FVF.lookup_Ref__Integer_value (as sm@181@01  $FVF<Ref__Integer_value>) r))
  :pattern (($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@170@01))))))) r))
  :qid |qp.fvfValDef21|)))
; Joined path conditions
(assert (or
  (not (and (< 0 i@184@01) (< i@184@01 len@150@01)))
  (and (< 0 i@184@01) (< i@184@01 len@150@01))))
(pop) ; 3
; Nested auxiliary terms: globals (aux)
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@173@01 r)
      (and (<= 0 (inv@172@01 r)) (< (inv@172@01 r) len@150@01)))
    (=
      ($FVF.lookup_Ref__Integer_value (as sm@181@01  $FVF<Ref__Integer_value>) r)
      ($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second $t@170@01))) r)))
  :pattern (($FVF.lookup_Ref__Integer_value (as sm@181@01  $FVF<Ref__Integer_value>) r))
  :pattern (($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second $t@170@01))) r))
  :qid |qp.fvfValDef19|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@176@01 r)
      (and (<= 0 (inv@175@01 r)) (< (inv@175@01 r) len@150@01)))
    (=
      ($FVF.lookup_Ref__Integer_value (as sm@181@01  $FVF<Ref__Integer_value>) r)
      ($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@170@01))))) r)))
  :pattern (($FVF.lookup_Ref__Integer_value (as sm@181@01  $FVF<Ref__Integer_value>) r))
  :pattern (($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@170@01))))) r))
  :qid |qp.fvfValDef20|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@179@01 r)
      (and (<= 0 (inv@178@01 r)) (< (inv@178@01 r) len@150@01)))
    (=
      ($FVF.lookup_Ref__Integer_value (as sm@181@01  $FVF<Ref__Integer_value>) r)
      ($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@170@01))))))) r)))
  :pattern (($FVF.lookup_Ref__Integer_value (as sm@181@01  $FVF<Ref__Integer_value>) r))
  :pattern (($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@170@01))))))) r))
  :qid |qp.fvfValDef21|)))
; Nested auxiliary terms: non-globals (aux)
(assert (forall ((i@184@01 Int)) (!
  (and
    (or (< 0 i@184@01) (not (< 0 i@184@01)))
    (or
      (not (and (< 0 i@184@01) (< i@184@01 len@150@01)))
      (and (< 0 i@184@01) (< i@184@01 len@150@01))))
  :pattern ((Seq_index c@149@01 i@184@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/third_party/test_forward_dep_c.vpr@198@12@198@88-aux|)))
(assert (forall ((i@184@01 Int)) (!
  (=>
    (and (< 0 i@184@01) (< i@184@01 len@150@01))
    (=
      ($FVF.lookup_Ref__Integer_value (as sm@181@01  $FVF<Ref__Integer_value>) (Seq_index
        c@149@01
        i@184@01))
      (+ i@184@01 2)))
  :pattern ((Seq_index c@149@01 i@184@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/third_party/test_forward_dep_c.vpr@198@12@198@88|)))
(pop) ; 2
(push) ; 2
; [exec]
; Ref__loop_main_67(diz, current_thread_id, b, len, a, c)
; [eval] diz != null
; [eval] current_thread_id >= 0
; [eval] 0 < len ==> |a| == len
; [eval] 0 < len
(push) ; 3
(push) ; 4
(set-option :timeout 10)
(assert (not (not (< 0 len@150@01))))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not (< 0 len@150@01)))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; [then-branch: 101 | 0 < len@150@01 | live]
; [else-branch: 101 | !(0 < len@150@01) | live]
(set-option :timeout 0)
(push) ; 4
; [then-branch: 101 | 0 < len@150@01]
(assert (< 0 len@150@01))
; [eval] |a| == len
; [eval] |a|
(pop) ; 4
(push) ; 4
; [else-branch: 101 | !(0 < len@150@01)]
(assert (not (< 0 len@150@01)))
(pop) ; 4
(pop) ; 3
; Joined path conditions
; Joined path conditions
(assert (or (not (< 0 len@150@01)) (< 0 len@150@01)))
(push) ; 3
(assert (not (=> (< 0 len@150@01) (= (Seq_length a@147@01) len@150@01))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(assert (=> (< 0 len@150@01) (= (Seq_length a@147@01) len@150@01)))
; [eval] (forall k: Int, j: Int :: { a[k], a[j] } k >= 0 && (k < |a| && (j >= 0 && (j < |a| && k != j))) ==> a[k] != a[j])
(declare-const k@185@01 Int)
(declare-const j@186@01 Int)
(push) ; 3
; [eval] k >= 0 && (k < |a| && (j >= 0 && (j < |a| && k != j))) ==> a[k] != a[j]
; [eval] k >= 0 && (k < |a| && (j >= 0 && (j < |a| && k != j)))
; [eval] k >= 0
(push) ; 4
; [then-branch: 102 | !(k@185@01 >= 0) | live]
; [else-branch: 102 | k@185@01 >= 0 | live]
(push) ; 5
; [then-branch: 102 | !(k@185@01 >= 0)]
(assert (not (>= k@185@01 0)))
(pop) ; 5
(push) ; 5
; [else-branch: 102 | k@185@01 >= 0]
(assert (>= k@185@01 0))
; [eval] k < |a|
; [eval] |a|
(push) ; 6
; [then-branch: 103 | !(k@185@01 < |a@147@01|) | live]
; [else-branch: 103 | k@185@01 < |a@147@01| | live]
(push) ; 7
; [then-branch: 103 | !(k@185@01 < |a@147@01|)]
(assert (not (< k@185@01 (Seq_length a@147@01))))
(pop) ; 7
(push) ; 7
; [else-branch: 103 | k@185@01 < |a@147@01|]
(assert (< k@185@01 (Seq_length a@147@01)))
; [eval] j >= 0
(push) ; 8
; [then-branch: 104 | !(j@186@01 >= 0) | live]
; [else-branch: 104 | j@186@01 >= 0 | live]
(push) ; 9
; [then-branch: 104 | !(j@186@01 >= 0)]
(assert (not (>= j@186@01 0)))
(pop) ; 9
(push) ; 9
; [else-branch: 104 | j@186@01 >= 0]
(assert (>= j@186@01 0))
; [eval] j < |a|
; [eval] |a|
(push) ; 10
; [then-branch: 105 | !(j@186@01 < |a@147@01|) | live]
; [else-branch: 105 | j@186@01 < |a@147@01| | live]
(push) ; 11
; [then-branch: 105 | !(j@186@01 < |a@147@01|)]
(assert (not (< j@186@01 (Seq_length a@147@01))))
(pop) ; 11
(push) ; 11
; [else-branch: 105 | j@186@01 < |a@147@01|]
(assert (< j@186@01 (Seq_length a@147@01)))
; [eval] k != j
(pop) ; 11
(pop) ; 10
; Joined path conditions
; Joined path conditions
(assert (or (< j@186@01 (Seq_length a@147@01)) (not (< j@186@01 (Seq_length a@147@01)))))
(pop) ; 9
(pop) ; 8
; Joined path conditions
; Joined path conditions
(assert (=>
  (>= j@186@01 0)
  (and
    (>= j@186@01 0)
    (or
      (< j@186@01 (Seq_length a@147@01))
      (not (< j@186@01 (Seq_length a@147@01)))))))
(assert (or (>= j@186@01 0) (not (>= j@186@01 0))))
(pop) ; 7
(pop) ; 6
; Joined path conditions
; Joined path conditions
(assert (=>
  (< k@185@01 (Seq_length a@147@01))
  (and
    (< k@185@01 (Seq_length a@147@01))
    (=>
      (>= j@186@01 0)
      (and
        (>= j@186@01 0)
        (or
          (< j@186@01 (Seq_length a@147@01))
          (not (< j@186@01 (Seq_length a@147@01))))))
    (or (>= j@186@01 0) (not (>= j@186@01 0))))))
(assert (or (< k@185@01 (Seq_length a@147@01)) (not (< k@185@01 (Seq_length a@147@01)))))
(pop) ; 5
(pop) ; 4
; Joined path conditions
; Joined path conditions
(assert (=>
  (>= k@185@01 0)
  (and
    (>= k@185@01 0)
    (=>
      (< k@185@01 (Seq_length a@147@01))
      (and
        (< k@185@01 (Seq_length a@147@01))
        (=>
          (>= j@186@01 0)
          (and
            (>= j@186@01 0)
            (or
              (< j@186@01 (Seq_length a@147@01))
              (not (< j@186@01 (Seq_length a@147@01))))))
        (or (>= j@186@01 0) (not (>= j@186@01 0)))))
    (or
      (< k@185@01 (Seq_length a@147@01))
      (not (< k@185@01 (Seq_length a@147@01)))))))
(assert (or (>= k@185@01 0) (not (>= k@185@01 0))))
(push) ; 4
; [then-branch: 106 | k@185@01 >= 0 && k@185@01 < |a@147@01| && j@186@01 >= 0 && j@186@01 < |a@147@01| && k@185@01 != j@186@01 | live]
; [else-branch: 106 | !(k@185@01 >= 0 && k@185@01 < |a@147@01| && j@186@01 >= 0 && j@186@01 < |a@147@01| && k@185@01 != j@186@01) | live]
(push) ; 5
; [then-branch: 106 | k@185@01 >= 0 && k@185@01 < |a@147@01| && j@186@01 >= 0 && j@186@01 < |a@147@01| && k@185@01 != j@186@01]
(assert (and
  (>= k@185@01 0)
  (and
    (< k@185@01 (Seq_length a@147@01))
    (and
      (>= j@186@01 0)
      (and (< j@186@01 (Seq_length a@147@01)) (not (= k@185@01 j@186@01)))))))
; [eval] a[k] != a[j]
; [eval] a[k]
; [eval] a[j]
(pop) ; 5
(push) ; 5
; [else-branch: 106 | !(k@185@01 >= 0 && k@185@01 < |a@147@01| && j@186@01 >= 0 && j@186@01 < |a@147@01| && k@185@01 != j@186@01)]
(assert (not
  (and
    (>= k@185@01 0)
    (and
      (< k@185@01 (Seq_length a@147@01))
      (and
        (>= j@186@01 0)
        (and (< j@186@01 (Seq_length a@147@01)) (not (= k@185@01 j@186@01))))))))
(pop) ; 5
(pop) ; 4
; Joined path conditions
(assert (=>
  (and
    (>= k@185@01 0)
    (and
      (< k@185@01 (Seq_length a@147@01))
      (and
        (>= j@186@01 0)
        (and (< j@186@01 (Seq_length a@147@01)) (not (= k@185@01 j@186@01))))))
  (and
    (>= k@185@01 0)
    (< k@185@01 (Seq_length a@147@01))
    (>= j@186@01 0)
    (< j@186@01 (Seq_length a@147@01))
    (not (= k@185@01 j@186@01)))))
; Joined path conditions
(assert (or
  (not
    (and
      (>= k@185@01 0)
      (and
        (< k@185@01 (Seq_length a@147@01))
        (and
          (>= j@186@01 0)
          (and (< j@186@01 (Seq_length a@147@01)) (not (= k@185@01 j@186@01)))))))
  (and
    (>= k@185@01 0)
    (and
      (< k@185@01 (Seq_length a@147@01))
      (and
        (>= j@186@01 0)
        (and (< j@186@01 (Seq_length a@147@01)) (not (= k@185@01 j@186@01))))))))
(pop) ; 3
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall ((k@185@01 Int) (j@186@01 Int)) (!
  (and
    (=>
      (>= k@185@01 0)
      (and
        (>= k@185@01 0)
        (=>
          (< k@185@01 (Seq_length a@147@01))
          (and
            (< k@185@01 (Seq_length a@147@01))
            (=>
              (>= j@186@01 0)
              (and
                (>= j@186@01 0)
                (or
                  (< j@186@01 (Seq_length a@147@01))
                  (not (< j@186@01 (Seq_length a@147@01))))))
            (or (>= j@186@01 0) (not (>= j@186@01 0)))))
        (or
          (< k@185@01 (Seq_length a@147@01))
          (not (< k@185@01 (Seq_length a@147@01))))))
    (or (>= k@185@01 0) (not (>= k@185@01 0)))
    (=>
      (and
        (>= k@185@01 0)
        (and
          (< k@185@01 (Seq_length a@147@01))
          (and
            (>= j@186@01 0)
            (and (< j@186@01 (Seq_length a@147@01)) (not (= k@185@01 j@186@01))))))
      (and
        (>= k@185@01 0)
        (< k@185@01 (Seq_length a@147@01))
        (>= j@186@01 0)
        (< j@186@01 (Seq_length a@147@01))
        (not (= k@185@01 j@186@01))))
    (or
      (not
        (and
          (>= k@185@01 0)
          (and
            (< k@185@01 (Seq_length a@147@01))
            (and
              (>= j@186@01 0)
              (and
                (< j@186@01 (Seq_length a@147@01))
                (not (= k@185@01 j@186@01)))))))
      (and
        (>= k@185@01 0)
        (and
          (< k@185@01 (Seq_length a@147@01))
          (and
            (>= j@186@01 0)
            (and (< j@186@01 (Seq_length a@147@01)) (not (= k@185@01 j@186@01))))))))
  :pattern ((Seq_index a@147@01 k@185@01) (Seq_index a@147@01 j@186@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/third_party/test_forward_dep_c.vpr@62@12@62@100-aux|)))
(push) ; 3
(assert (not (forall ((k@185@01 Int) (j@186@01 Int)) (!
  (=>
    (and
      (>= k@185@01 0)
      (and
        (< k@185@01 (Seq_length a@147@01))
        (and
          (>= j@186@01 0)
          (and (< j@186@01 (Seq_length a@147@01)) (not (= k@185@01 j@186@01))))))
    (not (= (Seq_index a@147@01 k@185@01) (Seq_index a@147@01 j@186@01))))
  :pattern ((Seq_index a@147@01 k@185@01) (Seq_index a@147@01 j@186@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/third_party/test_forward_dep_c.vpr@62@12@62@100|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(assert (forall ((k@185@01 Int) (j@186@01 Int)) (!
  (=>
    (and
      (>= k@185@01 0)
      (and
        (< k@185@01 (Seq_length a@147@01))
        (and
          (>= j@186@01 0)
          (and (< j@186@01 (Seq_length a@147@01)) (not (= k@185@01 j@186@01))))))
    (not (= (Seq_index a@147@01 k@185@01) (Seq_index a@147@01 j@186@01))))
  :pattern ((Seq_index a@147@01 k@185@01) (Seq_index a@147@01 j@186@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/third_party/test_forward_dep_c.vpr@62@12@62@100|)))
; [eval] (forall k: Int, j: Int :: { b[k], b[j] } k >= 0 && (k < |b| && (j >= 0 && (j < |b| && k != j))) ==> b[k] != b[j])
(declare-const k@187@01 Int)
(declare-const j@188@01 Int)
(push) ; 3
; [eval] k >= 0 && (k < |b| && (j >= 0 && (j < |b| && k != j))) ==> b[k] != b[j]
; [eval] k >= 0 && (k < |b| && (j >= 0 && (j < |b| && k != j)))
; [eval] k >= 0
(push) ; 4
; [then-branch: 107 | !(k@187@01 >= 0) | live]
; [else-branch: 107 | k@187@01 >= 0 | live]
(push) ; 5
; [then-branch: 107 | !(k@187@01 >= 0)]
(assert (not (>= k@187@01 0)))
(pop) ; 5
(push) ; 5
; [else-branch: 107 | k@187@01 >= 0]
(assert (>= k@187@01 0))
; [eval] k < |b|
; [eval] |b|
(push) ; 6
; [then-branch: 108 | !(k@187@01 < |b@148@01|) | live]
; [else-branch: 108 | k@187@01 < |b@148@01| | live]
(push) ; 7
; [then-branch: 108 | !(k@187@01 < |b@148@01|)]
(assert (not (< k@187@01 (Seq_length b@148@01))))
(pop) ; 7
(push) ; 7
; [else-branch: 108 | k@187@01 < |b@148@01|]
(assert (< k@187@01 (Seq_length b@148@01)))
; [eval] j >= 0
(push) ; 8
; [then-branch: 109 | !(j@188@01 >= 0) | live]
; [else-branch: 109 | j@188@01 >= 0 | live]
(push) ; 9
; [then-branch: 109 | !(j@188@01 >= 0)]
(assert (not (>= j@188@01 0)))
(pop) ; 9
(push) ; 9
; [else-branch: 109 | j@188@01 >= 0]
(assert (>= j@188@01 0))
; [eval] j < |b|
; [eval] |b|
(push) ; 10
; [then-branch: 110 | !(j@188@01 < |b@148@01|) | live]
; [else-branch: 110 | j@188@01 < |b@148@01| | live]
(push) ; 11
; [then-branch: 110 | !(j@188@01 < |b@148@01|)]
(assert (not (< j@188@01 (Seq_length b@148@01))))
(pop) ; 11
(push) ; 11
; [else-branch: 110 | j@188@01 < |b@148@01|]
(assert (< j@188@01 (Seq_length b@148@01)))
; [eval] k != j
(pop) ; 11
(pop) ; 10
; Joined path conditions
; Joined path conditions
(assert (or (< j@188@01 (Seq_length b@148@01)) (not (< j@188@01 (Seq_length b@148@01)))))
(pop) ; 9
(pop) ; 8
; Joined path conditions
; Joined path conditions
(assert (=>
  (>= j@188@01 0)
  (and
    (>= j@188@01 0)
    (or
      (< j@188@01 (Seq_length b@148@01))
      (not (< j@188@01 (Seq_length b@148@01)))))))
(assert (or (>= j@188@01 0) (not (>= j@188@01 0))))
(pop) ; 7
(pop) ; 6
; Joined path conditions
; Joined path conditions
(assert (=>
  (< k@187@01 (Seq_length b@148@01))
  (and
    (< k@187@01 (Seq_length b@148@01))
    (=>
      (>= j@188@01 0)
      (and
        (>= j@188@01 0)
        (or
          (< j@188@01 (Seq_length b@148@01))
          (not (< j@188@01 (Seq_length b@148@01))))))
    (or (>= j@188@01 0) (not (>= j@188@01 0))))))
(assert (or (< k@187@01 (Seq_length b@148@01)) (not (< k@187@01 (Seq_length b@148@01)))))
(pop) ; 5
(pop) ; 4
; Joined path conditions
; Joined path conditions
(assert (=>
  (>= k@187@01 0)
  (and
    (>= k@187@01 0)
    (=>
      (< k@187@01 (Seq_length b@148@01))
      (and
        (< k@187@01 (Seq_length b@148@01))
        (=>
          (>= j@188@01 0)
          (and
            (>= j@188@01 0)
            (or
              (< j@188@01 (Seq_length b@148@01))
              (not (< j@188@01 (Seq_length b@148@01))))))
        (or (>= j@188@01 0) (not (>= j@188@01 0)))))
    (or
      (< k@187@01 (Seq_length b@148@01))
      (not (< k@187@01 (Seq_length b@148@01)))))))
(assert (or (>= k@187@01 0) (not (>= k@187@01 0))))
(push) ; 4
; [then-branch: 111 | k@187@01 >= 0 && k@187@01 < |b@148@01| && j@188@01 >= 0 && j@188@01 < |b@148@01| && k@187@01 != j@188@01 | live]
; [else-branch: 111 | !(k@187@01 >= 0 && k@187@01 < |b@148@01| && j@188@01 >= 0 && j@188@01 < |b@148@01| && k@187@01 != j@188@01) | live]
(push) ; 5
; [then-branch: 111 | k@187@01 >= 0 && k@187@01 < |b@148@01| && j@188@01 >= 0 && j@188@01 < |b@148@01| && k@187@01 != j@188@01]
(assert (and
  (>= k@187@01 0)
  (and
    (< k@187@01 (Seq_length b@148@01))
    (and
      (>= j@188@01 0)
      (and (< j@188@01 (Seq_length b@148@01)) (not (= k@187@01 j@188@01)))))))
; [eval] b[k] != b[j]
; [eval] b[k]
; [eval] b[j]
(pop) ; 5
(push) ; 5
; [else-branch: 111 | !(k@187@01 >= 0 && k@187@01 < |b@148@01| && j@188@01 >= 0 && j@188@01 < |b@148@01| && k@187@01 != j@188@01)]
(assert (not
  (and
    (>= k@187@01 0)
    (and
      (< k@187@01 (Seq_length b@148@01))
      (and
        (>= j@188@01 0)
        (and (< j@188@01 (Seq_length b@148@01)) (not (= k@187@01 j@188@01))))))))
(pop) ; 5
(pop) ; 4
; Joined path conditions
(assert (=>
  (and
    (>= k@187@01 0)
    (and
      (< k@187@01 (Seq_length b@148@01))
      (and
        (>= j@188@01 0)
        (and (< j@188@01 (Seq_length b@148@01)) (not (= k@187@01 j@188@01))))))
  (and
    (>= k@187@01 0)
    (< k@187@01 (Seq_length b@148@01))
    (>= j@188@01 0)
    (< j@188@01 (Seq_length b@148@01))
    (not (= k@187@01 j@188@01)))))
; Joined path conditions
(assert (or
  (not
    (and
      (>= k@187@01 0)
      (and
        (< k@187@01 (Seq_length b@148@01))
        (and
          (>= j@188@01 0)
          (and (< j@188@01 (Seq_length b@148@01)) (not (= k@187@01 j@188@01)))))))
  (and
    (>= k@187@01 0)
    (and
      (< k@187@01 (Seq_length b@148@01))
      (and
        (>= j@188@01 0)
        (and (< j@188@01 (Seq_length b@148@01)) (not (= k@187@01 j@188@01))))))))
(pop) ; 3
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall ((k@187@01 Int) (j@188@01 Int)) (!
  (and
    (=>
      (>= k@187@01 0)
      (and
        (>= k@187@01 0)
        (=>
          (< k@187@01 (Seq_length b@148@01))
          (and
            (< k@187@01 (Seq_length b@148@01))
            (=>
              (>= j@188@01 0)
              (and
                (>= j@188@01 0)
                (or
                  (< j@188@01 (Seq_length b@148@01))
                  (not (< j@188@01 (Seq_length b@148@01))))))
            (or (>= j@188@01 0) (not (>= j@188@01 0)))))
        (or
          (< k@187@01 (Seq_length b@148@01))
          (not (< k@187@01 (Seq_length b@148@01))))))
    (or (>= k@187@01 0) (not (>= k@187@01 0)))
    (=>
      (and
        (>= k@187@01 0)
        (and
          (< k@187@01 (Seq_length b@148@01))
          (and
            (>= j@188@01 0)
            (and (< j@188@01 (Seq_length b@148@01)) (not (= k@187@01 j@188@01))))))
      (and
        (>= k@187@01 0)
        (< k@187@01 (Seq_length b@148@01))
        (>= j@188@01 0)
        (< j@188@01 (Seq_length b@148@01))
        (not (= k@187@01 j@188@01))))
    (or
      (not
        (and
          (>= k@187@01 0)
          (and
            (< k@187@01 (Seq_length b@148@01))
            (and
              (>= j@188@01 0)
              (and
                (< j@188@01 (Seq_length b@148@01))
                (not (= k@187@01 j@188@01)))))))
      (and
        (>= k@187@01 0)
        (and
          (< k@187@01 (Seq_length b@148@01))
          (and
            (>= j@188@01 0)
            (and (< j@188@01 (Seq_length b@148@01)) (not (= k@187@01 j@188@01))))))))
  :pattern ((Seq_index b@148@01 k@187@01) (Seq_index b@148@01 j@188@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/third_party/test_forward_dep_c.vpr@63@12@63@100-aux|)))
(push) ; 3
(assert (not (forall ((k@187@01 Int) (j@188@01 Int)) (!
  (=>
    (and
      (>= k@187@01 0)
      (and
        (< k@187@01 (Seq_length b@148@01))
        (and
          (>= j@188@01 0)
          (and (< j@188@01 (Seq_length b@148@01)) (not (= k@187@01 j@188@01))))))
    (not (= (Seq_index b@148@01 k@187@01) (Seq_index b@148@01 j@188@01))))
  :pattern ((Seq_index b@148@01 k@187@01) (Seq_index b@148@01 j@188@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/third_party/test_forward_dep_c.vpr@63@12@63@100|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(assert (forall ((k@187@01 Int) (j@188@01 Int)) (!
  (=>
    (and
      (>= k@187@01 0)
      (and
        (< k@187@01 (Seq_length b@148@01))
        (and
          (>= j@188@01 0)
          (and (< j@188@01 (Seq_length b@148@01)) (not (= k@187@01 j@188@01))))))
    (not (= (Seq_index b@148@01 k@187@01) (Seq_index b@148@01 j@188@01))))
  :pattern ((Seq_index b@148@01 k@187@01) (Seq_index b@148@01 j@188@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/third_party/test_forward_dep_c.vpr@63@12@63@100|)))
; [eval] (forall k: Int, j: Int :: { c[k], c[j] } k >= 0 && (k < |c| && (j >= 0 && (j < |c| && k != j))) ==> c[k] != c[j])
(declare-const k@189@01 Int)
(declare-const j@190@01 Int)
(push) ; 3
; [eval] k >= 0 && (k < |c| && (j >= 0 && (j < |c| && k != j))) ==> c[k] != c[j]
; [eval] k >= 0 && (k < |c| && (j >= 0 && (j < |c| && k != j)))
; [eval] k >= 0
(push) ; 4
; [then-branch: 112 | !(k@189@01 >= 0) | live]
; [else-branch: 112 | k@189@01 >= 0 | live]
(push) ; 5
; [then-branch: 112 | !(k@189@01 >= 0)]
(assert (not (>= k@189@01 0)))
(pop) ; 5
(push) ; 5
; [else-branch: 112 | k@189@01 >= 0]
(assert (>= k@189@01 0))
; [eval] k < |c|
; [eval] |c|
(push) ; 6
; [then-branch: 113 | !(k@189@01 < |c@149@01|) | live]
; [else-branch: 113 | k@189@01 < |c@149@01| | live]
(push) ; 7
; [then-branch: 113 | !(k@189@01 < |c@149@01|)]
(assert (not (< k@189@01 (Seq_length c@149@01))))
(pop) ; 7
(push) ; 7
; [else-branch: 113 | k@189@01 < |c@149@01|]
(assert (< k@189@01 (Seq_length c@149@01)))
; [eval] j >= 0
(push) ; 8
; [then-branch: 114 | !(j@190@01 >= 0) | live]
; [else-branch: 114 | j@190@01 >= 0 | live]
(push) ; 9
; [then-branch: 114 | !(j@190@01 >= 0)]
(assert (not (>= j@190@01 0)))
(pop) ; 9
(push) ; 9
; [else-branch: 114 | j@190@01 >= 0]
(assert (>= j@190@01 0))
; [eval] j < |c|
; [eval] |c|
(push) ; 10
; [then-branch: 115 | !(j@190@01 < |c@149@01|) | live]
; [else-branch: 115 | j@190@01 < |c@149@01| | live]
(push) ; 11
; [then-branch: 115 | !(j@190@01 < |c@149@01|)]
(assert (not (< j@190@01 (Seq_length c@149@01))))
(pop) ; 11
(push) ; 11
; [else-branch: 115 | j@190@01 < |c@149@01|]
(assert (< j@190@01 (Seq_length c@149@01)))
; [eval] k != j
(pop) ; 11
(pop) ; 10
; Joined path conditions
; Joined path conditions
(assert (or (< j@190@01 (Seq_length c@149@01)) (not (< j@190@01 (Seq_length c@149@01)))))
(pop) ; 9
(pop) ; 8
; Joined path conditions
; Joined path conditions
(assert (=>
  (>= j@190@01 0)
  (and
    (>= j@190@01 0)
    (or
      (< j@190@01 (Seq_length c@149@01))
      (not (< j@190@01 (Seq_length c@149@01)))))))
(assert (or (>= j@190@01 0) (not (>= j@190@01 0))))
(pop) ; 7
(pop) ; 6
; Joined path conditions
; Joined path conditions
(assert (=>
  (< k@189@01 (Seq_length c@149@01))
  (and
    (< k@189@01 (Seq_length c@149@01))
    (=>
      (>= j@190@01 0)
      (and
        (>= j@190@01 0)
        (or
          (< j@190@01 (Seq_length c@149@01))
          (not (< j@190@01 (Seq_length c@149@01))))))
    (or (>= j@190@01 0) (not (>= j@190@01 0))))))
(assert (or (< k@189@01 (Seq_length c@149@01)) (not (< k@189@01 (Seq_length c@149@01)))))
(pop) ; 5
(pop) ; 4
; Joined path conditions
; Joined path conditions
(assert (=>
  (>= k@189@01 0)
  (and
    (>= k@189@01 0)
    (=>
      (< k@189@01 (Seq_length c@149@01))
      (and
        (< k@189@01 (Seq_length c@149@01))
        (=>
          (>= j@190@01 0)
          (and
            (>= j@190@01 0)
            (or
              (< j@190@01 (Seq_length c@149@01))
              (not (< j@190@01 (Seq_length c@149@01))))))
        (or (>= j@190@01 0) (not (>= j@190@01 0)))))
    (or
      (< k@189@01 (Seq_length c@149@01))
      (not (< k@189@01 (Seq_length c@149@01)))))))
(assert (or (>= k@189@01 0) (not (>= k@189@01 0))))
(push) ; 4
; [then-branch: 116 | k@189@01 >= 0 && k@189@01 < |c@149@01| && j@190@01 >= 0 && j@190@01 < |c@149@01| && k@189@01 != j@190@01 | live]
; [else-branch: 116 | !(k@189@01 >= 0 && k@189@01 < |c@149@01| && j@190@01 >= 0 && j@190@01 < |c@149@01| && k@189@01 != j@190@01) | live]
(push) ; 5
; [then-branch: 116 | k@189@01 >= 0 && k@189@01 < |c@149@01| && j@190@01 >= 0 && j@190@01 < |c@149@01| && k@189@01 != j@190@01]
(assert (and
  (>= k@189@01 0)
  (and
    (< k@189@01 (Seq_length c@149@01))
    (and
      (>= j@190@01 0)
      (and (< j@190@01 (Seq_length c@149@01)) (not (= k@189@01 j@190@01)))))))
; [eval] c[k] != c[j]
; [eval] c[k]
; [eval] c[j]
(pop) ; 5
(push) ; 5
; [else-branch: 116 | !(k@189@01 >= 0 && k@189@01 < |c@149@01| && j@190@01 >= 0 && j@190@01 < |c@149@01| && k@189@01 != j@190@01)]
(assert (not
  (and
    (>= k@189@01 0)
    (and
      (< k@189@01 (Seq_length c@149@01))
      (and
        (>= j@190@01 0)
        (and (< j@190@01 (Seq_length c@149@01)) (not (= k@189@01 j@190@01))))))))
(pop) ; 5
(pop) ; 4
; Joined path conditions
(assert (=>
  (and
    (>= k@189@01 0)
    (and
      (< k@189@01 (Seq_length c@149@01))
      (and
        (>= j@190@01 0)
        (and (< j@190@01 (Seq_length c@149@01)) (not (= k@189@01 j@190@01))))))
  (and
    (>= k@189@01 0)
    (< k@189@01 (Seq_length c@149@01))
    (>= j@190@01 0)
    (< j@190@01 (Seq_length c@149@01))
    (not (= k@189@01 j@190@01)))))
; Joined path conditions
(assert (or
  (not
    (and
      (>= k@189@01 0)
      (and
        (< k@189@01 (Seq_length c@149@01))
        (and
          (>= j@190@01 0)
          (and (< j@190@01 (Seq_length c@149@01)) (not (= k@189@01 j@190@01)))))))
  (and
    (>= k@189@01 0)
    (and
      (< k@189@01 (Seq_length c@149@01))
      (and
        (>= j@190@01 0)
        (and (< j@190@01 (Seq_length c@149@01)) (not (= k@189@01 j@190@01))))))))
(pop) ; 3
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall ((k@189@01 Int) (j@190@01 Int)) (!
  (and
    (=>
      (>= k@189@01 0)
      (and
        (>= k@189@01 0)
        (=>
          (< k@189@01 (Seq_length c@149@01))
          (and
            (< k@189@01 (Seq_length c@149@01))
            (=>
              (>= j@190@01 0)
              (and
                (>= j@190@01 0)
                (or
                  (< j@190@01 (Seq_length c@149@01))
                  (not (< j@190@01 (Seq_length c@149@01))))))
            (or (>= j@190@01 0) (not (>= j@190@01 0)))))
        (or
          (< k@189@01 (Seq_length c@149@01))
          (not (< k@189@01 (Seq_length c@149@01))))))
    (or (>= k@189@01 0) (not (>= k@189@01 0)))
    (=>
      (and
        (>= k@189@01 0)
        (and
          (< k@189@01 (Seq_length c@149@01))
          (and
            (>= j@190@01 0)
            (and (< j@190@01 (Seq_length c@149@01)) (not (= k@189@01 j@190@01))))))
      (and
        (>= k@189@01 0)
        (< k@189@01 (Seq_length c@149@01))
        (>= j@190@01 0)
        (< j@190@01 (Seq_length c@149@01))
        (not (= k@189@01 j@190@01))))
    (or
      (not
        (and
          (>= k@189@01 0)
          (and
            (< k@189@01 (Seq_length c@149@01))
            (and
              (>= j@190@01 0)
              (and
                (< j@190@01 (Seq_length c@149@01))
                (not (= k@189@01 j@190@01)))))))
      (and
        (>= k@189@01 0)
        (and
          (< k@189@01 (Seq_length c@149@01))
          (and
            (>= j@190@01 0)
            (and (< j@190@01 (Seq_length c@149@01)) (not (= k@189@01 j@190@01))))))))
  :pattern ((Seq_index c@149@01 k@189@01) (Seq_index c@149@01 j@190@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/third_party/test_forward_dep_c.vpr@64@12@64@100-aux|)))
(push) ; 3
(assert (not (forall ((k@189@01 Int) (j@190@01 Int)) (!
  (=>
    (and
      (>= k@189@01 0)
      (and
        (< k@189@01 (Seq_length c@149@01))
        (and
          (>= j@190@01 0)
          (and (< j@190@01 (Seq_length c@149@01)) (not (= k@189@01 j@190@01))))))
    (not (= (Seq_index c@149@01 k@189@01) (Seq_index c@149@01 j@190@01))))
  :pattern ((Seq_index c@149@01 k@189@01) (Seq_index c@149@01 j@190@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/third_party/test_forward_dep_c.vpr@64@12@64@100|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(assert (forall ((k@189@01 Int) (j@190@01 Int)) (!
  (=>
    (and
      (>= k@189@01 0)
      (and
        (< k@189@01 (Seq_length c@149@01))
        (and
          (>= j@190@01 0)
          (and (< j@190@01 (Seq_length c@149@01)) (not (= k@189@01 j@190@01))))))
    (not (= (Seq_index c@149@01 k@189@01) (Seq_index c@149@01 j@190@01))))
  :pattern ((Seq_index c@149@01 k@189@01) (Seq_index c@149@01 j@190@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/third_party/test_forward_dep_c.vpr@64@12@64@100|)))
(declare-const i@191@01 Int)
(push) ; 3
; [eval] 0 <= i && i < len
; [eval] 0 <= i
(push) ; 4
; [then-branch: 117 | !(0 <= i@191@01) | live]
; [else-branch: 117 | 0 <= i@191@01 | live]
(push) ; 5
; [then-branch: 117 | !(0 <= i@191@01)]
(assert (not (<= 0 i@191@01)))
(pop) ; 5
(push) ; 5
; [else-branch: 117 | 0 <= i@191@01]
(assert (<= 0 i@191@01))
; [eval] i < len
(pop) ; 5
(pop) ; 4
; Joined path conditions
; Joined path conditions
(assert (or (<= 0 i@191@01) (not (<= 0 i@191@01))))
(assert (and (<= 0 i@191@01) (< i@191@01 len@150@01)))
; [eval] a[i]
(push) ; 4
(assert (not (>= i@191@01 0)))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(push) ; 4
(assert (not (< i@191@01 (Seq_length a@147@01))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(pop) ; 3
(declare-fun inv@192@01 ($Ref) Int)
(declare-fun img@193@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
(assert (forall ((i@191@01 Int)) (!
  (=>
    (and (<= 0 i@191@01) (< i@191@01 len@150@01))
    (or (<= 0 i@191@01) (not (<= 0 i@191@01))))
  :pattern ((Seq_index a@147@01 i@191@01))
  :qid |Ref__Integer_value-aux|)))
; Check receiver injectivity
(push) ; 3
(assert (not (forall ((i1@191@01 Int) (i2@191@01 Int)) (!
  (=>
    (and
      (and (<= 0 i1@191@01) (< i1@191@01 len@150@01))
      (and (<= 0 i2@191@01) (< i2@191@01 len@150@01))
      (= (Seq_index a@147@01 i1@191@01) (Seq_index a@147@01 i2@191@01)))
    (= i1@191@01 i2@191@01))
  
  :qid |Ref__Integer_value-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((i@191@01 Int)) (!
  (=>
    (and (<= 0 i@191@01) (< i@191@01 len@150@01))
    (and
      (= (inv@192@01 (Seq_index a@147@01 i@191@01)) i@191@01)
      (img@193@01 (Seq_index a@147@01 i@191@01))))
  :pattern ((Seq_index a@147@01 i@191@01))
  :qid |Ref__Integer_value-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@193@01 r)
      (and (<= 0 (inv@192@01 r)) (< (inv@192@01 r) len@150@01)))
    (= (Seq_index a@147@01 (inv@192@01 r)) r))
  :pattern ((inv@192@01 r))
  :qid |Ref__Integer_value-fctOfInv|)))
(push) ; 3
(set-option :timeout 10)
(assert (not (forall ((i@191@01 Int)) (!
  (= (Seq_index a@147@01 i@191@01) (Seq_index b@148@01 i@191@01))
  
  :qid |quant-u-8729|))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (forall ((i@191@01 Int)) (!
  (= (Seq_index a@147@01 i@191@01) (Seq_index c@149@01 i@191@01))
  
  :qid |quant-u-8730|))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Precomputing data for removing quantified permissions
(define-fun pTaken@194@01 ((r $Ref)) $Perm
  (ite
    (and
      (and (<= 0 (inv@192@01 r)) (< (inv@192@01 r) len@150@01))
      (img@193@01 r)
      (= r (Seq_index a@147@01 (inv@192@01 r))))
    ($Perm.min
      (ite
        (and
          (img@160@01 r)
          (and (<= 0 (inv@159@01 r)) (< (inv@159@01 r) len@150@01)))
        $Perm.Write
        $Perm.No)
      $Perm.Write)
    $Perm.No))
(define-fun pTaken@195@01 ((r $Ref)) $Perm
  (ite
    (and
      (and (<= 0 (inv@192@01 r)) (< (inv@192@01 r) len@150@01))
      (img@193@01 r)
      (= r (Seq_index a@147@01 (inv@192@01 r))))
    ($Perm.min
      (ite
        (and
          (img@163@01 r)
          (and (<= 0 (inv@162@01 r)) (< (inv@162@01 r) len@150@01)))
        (/ (to_real 1) (to_real 2))
        $Perm.No)
      (- $Perm.Write (pTaken@194@01 r)))
    $Perm.No))
(define-fun pTaken@196@01 ((r $Ref)) $Perm
  (ite
    (and
      (and (<= 0 (inv@192@01 r)) (< (inv@192@01 r) len@150@01))
      (img@193@01 r)
      (= r (Seq_index a@147@01 (inv@192@01 r))))
    ($Perm.min
      (ite
        (and
          (img@166@01 r)
          (and (<= 0 (inv@165@01 r)) (< (inv@165@01 r) len@150@01)))
        $Perm.Write
        $Perm.No)
      (- (- $Perm.Write (pTaken@194@01 r)) (pTaken@195@01 r)))
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
          (img@160@01 r)
          (and (<= 0 (inv@159@01 r)) (< (inv@159@01 r) len@150@01)))
        $Perm.Write
        $Perm.No)
      (pTaken@194@01 r))
    $Perm.No)
  
  :qid |quant-u-8732|))))
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
      (and (<= 0 (inv@192@01 r)) (< (inv@192@01 r) len@150@01))
      (img@193@01 r)
      (= r (Seq_index a@147@01 (inv@192@01 r))))
    (= (- $Perm.Write (pTaken@194@01 r)) $Perm.No))
  
  :qid |quant-u-8733|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Final check if taken enough permissions
; Done removing quantified permissions
; [eval] 0 < len ==> |b| == len
; [eval] 0 < len
(set-option :timeout 0)
(push) ; 3
(push) ; 4
(set-option :timeout 10)
(assert (not (not (< 0 len@150@01))))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not (< 0 len@150@01)))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; [then-branch: 118 | 0 < len@150@01 | live]
; [else-branch: 118 | !(0 < len@150@01) | live]
(set-option :timeout 0)
(push) ; 4
; [then-branch: 118 | 0 < len@150@01]
(assert (< 0 len@150@01))
; [eval] |b| == len
; [eval] |b|
(pop) ; 4
(push) ; 4
; [else-branch: 118 | !(0 < len@150@01)]
(assert (not (< 0 len@150@01)))
(pop) ; 4
(pop) ; 3
; Joined path conditions
; Joined path conditions
(push) ; 3
(assert (not (=> (< 0 len@150@01) (= (Seq_length b@148@01) len@150@01))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(assert (=> (< 0 len@150@01) (= (Seq_length b@148@01) len@150@01)))
(declare-const i@197@01 Int)
(push) ; 3
; [eval] 0 <= i && i < len
; [eval] 0 <= i
(push) ; 4
; [then-branch: 119 | !(0 <= i@197@01) | live]
; [else-branch: 119 | 0 <= i@197@01 | live]
(push) ; 5
; [then-branch: 119 | !(0 <= i@197@01)]
(assert (not (<= 0 i@197@01)))
(pop) ; 5
(push) ; 5
; [else-branch: 119 | 0 <= i@197@01]
(assert (<= 0 i@197@01))
; [eval] i < len
(pop) ; 5
(pop) ; 4
; Joined path conditions
; Joined path conditions
(assert (or (<= 0 i@197@01) (not (<= 0 i@197@01))))
(assert (and (<= 0 i@197@01) (< i@197@01 len@150@01)))
; [eval] b[i]
(push) ; 4
(assert (not (>= i@197@01 0)))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(push) ; 4
(assert (not (< i@197@01 (Seq_length b@148@01))))
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
(assert (forall ((i@197@01 Int)) (!
  (=>
    (and (<= 0 i@197@01) (< i@197@01 len@150@01))
    (or (<= 0 i@197@01) (not (<= 0 i@197@01))))
  :pattern ((Seq_index b@148@01 i@197@01))
  :qid |Ref__Integer_value-aux|)))
; Check receiver injectivity
(push) ; 3
(assert (not (forall ((i1@197@01 Int) (i2@197@01 Int)) (!
  (=>
    (and
      (and (<= 0 i1@197@01) (< i1@197@01 len@150@01))
      (and (<= 0 i2@197@01) (< i2@197@01 len@150@01))
      (= (Seq_index b@148@01 i1@197@01) (Seq_index b@148@01 i2@197@01)))
    (= i1@197@01 i2@197@01))
  
  :qid |Ref__Integer_value-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((i@197@01 Int)) (!
  (=>
    (and (<= 0 i@197@01) (< i@197@01 len@150@01))
    (and
      (= (inv@198@01 (Seq_index b@148@01 i@197@01)) i@197@01)
      (img@199@01 (Seq_index b@148@01 i@197@01))))
  :pattern ((Seq_index b@148@01 i@197@01))
  :qid |Ref__Integer_value-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@199@01 r)
      (and (<= 0 (inv@198@01 r)) (< (inv@198@01 r) len@150@01)))
    (= (Seq_index b@148@01 (inv@198@01 r)) r))
  :pattern ((inv@198@01 r))
  :qid |Ref__Integer_value-fctOfInv|)))
(push) ; 3
(set-option :timeout 10)
(assert (not (forall ((i@197@01 Int)) (!
  (= (Seq_index b@148@01 i@197@01) (Seq_index c@149@01 i@197@01))
  
  :qid |quant-u-8735|))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Precomputing data for removing quantified permissions
(define-fun pTaken@200@01 ((r $Ref)) $Perm
  (ite
    (and
      (and (<= 0 (inv@198@01 r)) (< (inv@198@01 r) len@150@01))
      (img@199@01 r)
      (= r (Seq_index b@148@01 (inv@198@01 r))))
    ($Perm.min
      (ite
        (and
          (img@163@01 r)
          (and (<= 0 (inv@162@01 r)) (< (inv@162@01 r) len@150@01)))
        (/ (to_real 1) (to_real 2))
        $Perm.No)
      (/ (to_real 1) (to_real 2)))
    $Perm.No))
(define-fun pTaken@201@01 ((r $Ref)) $Perm
  (ite
    (and
      (and (<= 0 (inv@198@01 r)) (< (inv@198@01 r) len@150@01))
      (img@199@01 r)
      (= r (Seq_index b@148@01 (inv@198@01 r))))
    ($Perm.min
      (ite
        (and
          (img@166@01 r)
          (and (<= 0 (inv@165@01 r)) (< (inv@165@01 r) len@150@01)))
        $Perm.Write
        $Perm.No)
      (- (/ (to_real 1) (to_real 2)) (pTaken@200@01 r)))
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
          (img@163@01 r)
          (and (<= 0 (inv@162@01 r)) (< (inv@162@01 r) len@150@01)))
        (/ (to_real 1) (to_real 2))
        $Perm.No)
      (pTaken@200@01 r))
    $Perm.No)
  
  :qid |quant-u-8737|))))
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
      (and (<= 0 (inv@198@01 r)) (< (inv@198@01 r) len@150@01))
      (img@199@01 r)
      (= r (Seq_index b@148@01 (inv@198@01 r))))
    (= (- (/ (to_real 1) (to_real 2)) (pTaken@200@01 r)) $Perm.No))
  
  :qid |quant-u-8738|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Final check if taken enough permissions
; Done removing quantified permissions
; [eval] 0 < len ==> |c| == len
; [eval] 0 < len
(set-option :timeout 0)
(push) ; 3
(push) ; 4
(set-option :timeout 10)
(assert (not (not (< 0 len@150@01))))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not (< 0 len@150@01)))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; [then-branch: 120 | 0 < len@150@01 | live]
; [else-branch: 120 | !(0 < len@150@01) | live]
(set-option :timeout 0)
(push) ; 4
; [then-branch: 120 | 0 < len@150@01]
(assert (< 0 len@150@01))
; [eval] |c| == len
; [eval] |c|
(pop) ; 4
(push) ; 4
; [else-branch: 120 | !(0 < len@150@01)]
(assert (not (< 0 len@150@01)))
(pop) ; 4
(pop) ; 3
; Joined path conditions
; Joined path conditions
(push) ; 3
(assert (not (=> (< 0 len@150@01) (= (Seq_length c@149@01) len@150@01))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(assert (=> (< 0 len@150@01) (= (Seq_length c@149@01) len@150@01)))
(declare-const i@202@01 Int)
(push) ; 3
; [eval] 0 <= i && i < len
; [eval] 0 <= i
(push) ; 4
; [then-branch: 121 | !(0 <= i@202@01) | live]
; [else-branch: 121 | 0 <= i@202@01 | live]
(push) ; 5
; [then-branch: 121 | !(0 <= i@202@01)]
(assert (not (<= 0 i@202@01)))
(pop) ; 5
(push) ; 5
; [else-branch: 121 | 0 <= i@202@01]
(assert (<= 0 i@202@01))
; [eval] i < len
(pop) ; 5
(pop) ; 4
; Joined path conditions
; Joined path conditions
(assert (or (<= 0 i@202@01) (not (<= 0 i@202@01))))
(assert (and (<= 0 i@202@01) (< i@202@01 len@150@01)))
; [eval] c[i]
(push) ; 4
(assert (not (>= i@202@01 0)))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(push) ; 4
(assert (not (< i@202@01 (Seq_length c@149@01))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(pop) ; 3
(declare-fun inv@203@01 ($Ref) Int)
(declare-fun img@204@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
(assert (forall ((i@202@01 Int)) (!
  (=>
    (and (<= 0 i@202@01) (< i@202@01 len@150@01))
    (or (<= 0 i@202@01) (not (<= 0 i@202@01))))
  :pattern ((Seq_index c@149@01 i@202@01))
  :qid |Ref__Integer_value-aux|)))
; Check receiver injectivity
(push) ; 3
(assert (not (forall ((i1@202@01 Int) (i2@202@01 Int)) (!
  (=>
    (and
      (and (<= 0 i1@202@01) (< i1@202@01 len@150@01))
      (and (<= 0 i2@202@01) (< i2@202@01 len@150@01))
      (= (Seq_index c@149@01 i1@202@01) (Seq_index c@149@01 i2@202@01)))
    (= i1@202@01 i2@202@01))
  
  :qid |Ref__Integer_value-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((i@202@01 Int)) (!
  (=>
    (and (<= 0 i@202@01) (< i@202@01 len@150@01))
    (and
      (= (inv@203@01 (Seq_index c@149@01 i@202@01)) i@202@01)
      (img@204@01 (Seq_index c@149@01 i@202@01))))
  :pattern ((Seq_index c@149@01 i@202@01))
  :qid |Ref__Integer_value-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@204@01 r)
      (and (<= 0 (inv@203@01 r)) (< (inv@203@01 r) len@150@01)))
    (= (Seq_index c@149@01 (inv@203@01 r)) r))
  :pattern ((inv@203@01 r))
  :qid |Ref__Integer_value-fctOfInv|)))
; Precomputing data for removing quantified permissions
(define-fun pTaken@205@01 ((r $Ref)) $Perm
  (ite
    (and
      (and (<= 0 (inv@203@01 r)) (< (inv@203@01 r) len@150@01))
      (img@204@01 r)
      (= r (Seq_index c@149@01 (inv@203@01 r))))
    ($Perm.min
      (ite
        (and
          (img@166@01 r)
          (and (<= 0 (inv@165@01 r)) (< (inv@165@01 r) len@150@01)))
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
          (img@166@01 r)
          (and (<= 0 (inv@165@01 r)) (< (inv@165@01 r) len@150@01)))
        $Perm.Write
        $Perm.No)
      (pTaken@205@01 r))
    $Perm.No)
  
  :qid |quant-u-8741|))))
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
      (and (<= 0 (inv@203@01 r)) (< (inv@203@01 r) len@150@01))
      (img@204@01 r)
      (= r (Seq_index c@149@01 (inv@203@01 r))))
    (= (- $Perm.Write (pTaken@205@01 r)) $Perm.No))
  
  :qid |quant-u-8742|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Final check if taken enough permissions
; Done removing quantified permissions
; [eval] (forall i: Int :: { b[i] } 0 <= i && i < len ==> b[i].Ref__Integer_value == i)
(declare-const i@206@01 Int)
(set-option :timeout 0)
(push) ; 3
; [eval] 0 <= i && i < len ==> b[i].Ref__Integer_value == i
; [eval] 0 <= i && i < len
; [eval] 0 <= i
(push) ; 4
; [then-branch: 122 | !(0 <= i@206@01) | live]
; [else-branch: 122 | 0 <= i@206@01 | live]
(push) ; 5
; [then-branch: 122 | !(0 <= i@206@01)]
(assert (not (<= 0 i@206@01)))
(pop) ; 5
(push) ; 5
; [else-branch: 122 | 0 <= i@206@01]
(assert (<= 0 i@206@01))
; [eval] i < len
(pop) ; 5
(pop) ; 4
; Joined path conditions
; Joined path conditions
(assert (or (<= 0 i@206@01) (not (<= 0 i@206@01))))
(push) ; 4
; [then-branch: 123 | 0 <= i@206@01 && i@206@01 < len@150@01 | live]
; [else-branch: 123 | !(0 <= i@206@01 && i@206@01 < len@150@01) | live]
(push) ; 5
; [then-branch: 123 | 0 <= i@206@01 && i@206@01 < len@150@01]
(assert (and (<= 0 i@206@01) (< i@206@01 len@150@01)))
; [eval] b[i].Ref__Integer_value == i
; [eval] b[i]
(push) ; 6
(assert (not (>= i@206@01 0)))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(push) ; 6
(assert (not (< i@206@01 (Seq_length b@148@01))))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(assert (and
  (forall ((r $Ref)) (!
    (=>
      (and
        (img@160@01 r)
        (and (<= 0 (inv@159@01 r)) (< (inv@159@01 r) len@150@01)))
      (=
        ($FVF.lookup_Ref__Integer_value (as sm@168@01  $FVF<Ref__Integer_value>) r)
        ($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@151@01)))))))) r)))
    :pattern (($FVF.lookup_Ref__Integer_value (as sm@168@01  $FVF<Ref__Integer_value>) r))
    :pattern (($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@151@01)))))))) r))
    :qid |qp.fvfValDef15|))
  (forall ((r $Ref)) (!
    (=>
      (and
        (img@163@01 r)
        (and (<= 0 (inv@162@01 r)) (< (inv@162@01 r) len@150@01)))
      (=
        ($FVF.lookup_Ref__Integer_value (as sm@168@01  $FVF<Ref__Integer_value>) r)
        ($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@151@01)))))))))) r)))
    :pattern (($FVF.lookup_Ref__Integer_value (as sm@168@01  $FVF<Ref__Integer_value>) r))
    :pattern (($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@151@01)))))))))) r))
    :qid |qp.fvfValDef16|))
  (forall ((r $Ref)) (!
    (=>
      (and
        (img@166@01 r)
        (and (<= 0 (inv@165@01 r)) (< (inv@165@01 r) len@150@01)))
      (=
        ($FVF.lookup_Ref__Integer_value (as sm@168@01  $FVF<Ref__Integer_value>) r)
        ($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@151@01)))))))))))) r)))
    :pattern (($FVF.lookup_Ref__Integer_value (as sm@168@01  $FVF<Ref__Integer_value>) r))
    :pattern (($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@151@01)))))))))))) r))
    :qid |qp.fvfValDef17|))))
(push) ; 6
(assert (not (<
  $Perm.No
  (+
    (+
      (ite
        (and
          (img@160@01 (Seq_index b@148@01 i@206@01))
          (and
            (<= 0 (inv@159@01 (Seq_index b@148@01 i@206@01)))
            (< (inv@159@01 (Seq_index b@148@01 i@206@01)) len@150@01)))
        $Perm.Write
        $Perm.No)
      (ite
        (and
          (img@163@01 (Seq_index b@148@01 i@206@01))
          (and
            (<= 0 (inv@162@01 (Seq_index b@148@01 i@206@01)))
            (< (inv@162@01 (Seq_index b@148@01 i@206@01)) len@150@01)))
        (/ (to_real 1) (to_real 2))
        $Perm.No))
    (ite
      (and
        (img@166@01 (Seq_index b@148@01 i@206@01))
        (and
          (<= 0 (inv@165@01 (Seq_index b@148@01 i@206@01)))
          (< (inv@165@01 (Seq_index b@148@01 i@206@01)) len@150@01)))
      $Perm.Write
      $Perm.No)))))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(pop) ; 5
(push) ; 5
; [else-branch: 123 | !(0 <= i@206@01 && i@206@01 < len@150@01)]
(assert (not (and (<= 0 i@206@01) (< i@206@01 len@150@01))))
(pop) ; 5
(pop) ; 4
; Joined path conditions
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@160@01 r)
      (and (<= 0 (inv@159@01 r)) (< (inv@159@01 r) len@150@01)))
    (=
      ($FVF.lookup_Ref__Integer_value (as sm@168@01  $FVF<Ref__Integer_value>) r)
      ($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@151@01)))))))) r)))
  :pattern (($FVF.lookup_Ref__Integer_value (as sm@168@01  $FVF<Ref__Integer_value>) r))
  :pattern (($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@151@01)))))))) r))
  :qid |qp.fvfValDef15|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@163@01 r)
      (and (<= 0 (inv@162@01 r)) (< (inv@162@01 r) len@150@01)))
    (=
      ($FVF.lookup_Ref__Integer_value (as sm@168@01  $FVF<Ref__Integer_value>) r)
      ($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@151@01)))))))))) r)))
  :pattern (($FVF.lookup_Ref__Integer_value (as sm@168@01  $FVF<Ref__Integer_value>) r))
  :pattern (($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@151@01)))))))))) r))
  :qid |qp.fvfValDef16|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@166@01 r)
      (and (<= 0 (inv@165@01 r)) (< (inv@165@01 r) len@150@01)))
    (=
      ($FVF.lookup_Ref__Integer_value (as sm@168@01  $FVF<Ref__Integer_value>) r)
      ($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@151@01)))))))))))) r)))
  :pattern (($FVF.lookup_Ref__Integer_value (as sm@168@01  $FVF<Ref__Integer_value>) r))
  :pattern (($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@151@01)))))))))))) r))
  :qid |qp.fvfValDef17|)))
; Joined path conditions
(assert (or
  (not (and (<= 0 i@206@01) (< i@206@01 len@150@01)))
  (and (<= 0 i@206@01) (< i@206@01 len@150@01))))
(pop) ; 3
; Nested auxiliary terms: globals (aux)
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@160@01 r)
      (and (<= 0 (inv@159@01 r)) (< (inv@159@01 r) len@150@01)))
    (=
      ($FVF.lookup_Ref__Integer_value (as sm@168@01  $FVF<Ref__Integer_value>) r)
      ($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@151@01)))))))) r)))
  :pattern (($FVF.lookup_Ref__Integer_value (as sm@168@01  $FVF<Ref__Integer_value>) r))
  :pattern (($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@151@01)))))))) r))
  :qid |qp.fvfValDef15|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@163@01 r)
      (and (<= 0 (inv@162@01 r)) (< (inv@162@01 r) len@150@01)))
    (=
      ($FVF.lookup_Ref__Integer_value (as sm@168@01  $FVF<Ref__Integer_value>) r)
      ($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@151@01)))))))))) r)))
  :pattern (($FVF.lookup_Ref__Integer_value (as sm@168@01  $FVF<Ref__Integer_value>) r))
  :pattern (($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@151@01)))))))))) r))
  :qid |qp.fvfValDef16|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@166@01 r)
      (and (<= 0 (inv@165@01 r)) (< (inv@165@01 r) len@150@01)))
    (=
      ($FVF.lookup_Ref__Integer_value (as sm@168@01  $FVF<Ref__Integer_value>) r)
      ($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@151@01)))))))))))) r)))
  :pattern (($FVF.lookup_Ref__Integer_value (as sm@168@01  $FVF<Ref__Integer_value>) r))
  :pattern (($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@151@01)))))))))))) r))
  :qid |qp.fvfValDef17|)))
; Nested auxiliary terms: non-globals (aux)
(assert (forall ((i@206@01 Int)) (!
  (and
    (or (<= 0 i@206@01) (not (<= 0 i@206@01)))
    (or
      (not (and (<= 0 i@206@01) (< i@206@01 len@150@01)))
      (and (<= 0 i@206@01) (< i@206@01 len@150@01))))
  :pattern ((Seq_index b@148@01 i@206@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/third_party/test_forward_dep_c.vpr@70@13@70@86-aux|)))
(push) ; 3
(assert (not (forall ((i@206@01 Int)) (!
  (=>
    (and (<= 0 i@206@01) (< i@206@01 len@150@01))
    (=
      ($FVF.lookup_Ref__Integer_value (as sm@168@01  $FVF<Ref__Integer_value>) (Seq_index
        b@148@01
        i@206@01))
      i@206@01))
  :pattern ((Seq_index b@148@01 i@206@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/third_party/test_forward_dep_c.vpr@70@13@70@86|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(assert (forall ((i@206@01 Int)) (!
  (=>
    (and (<= 0 i@206@01) (< i@206@01 len@150@01))
    (=
      ($FVF.lookup_Ref__Integer_value (as sm@168@01  $FVF<Ref__Integer_value>) (Seq_index
        b@148@01
        i@206@01))
      i@206@01))
  :pattern ((Seq_index b@148@01 i@206@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/third_party/test_forward_dep_c.vpr@70@13@70@86|)))
(declare-const $t@207@01 $Snap)
(assert (= $t@207@01 ($Snap.combine ($Snap.first $t@207@01) ($Snap.second $t@207@01))))
(assert (= ($Snap.first $t@207@01) $Snap.unit))
; [eval] 0 < len ==> |a| == len
; [eval] 0 < len
(push) ; 3
(push) ; 4
(set-option :timeout 10)
(assert (not (not (< 0 len@150@01))))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not (< 0 len@150@01)))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; [then-branch: 124 | 0 < len@150@01 | live]
; [else-branch: 124 | !(0 < len@150@01) | live]
(set-option :timeout 0)
(push) ; 4
; [then-branch: 124 | 0 < len@150@01]
(assert (< 0 len@150@01))
; [eval] |a| == len
; [eval] |a|
(pop) ; 4
(push) ; 4
; [else-branch: 124 | !(0 < len@150@01)]
(assert (not (< 0 len@150@01)))
(pop) ; 4
(pop) ; 3
; Joined path conditions
; Joined path conditions
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
; [then-branch: 125 | !(0 <= i@208@01) | live]
; [else-branch: 125 | 0 <= i@208@01 | live]
(push) ; 5
; [then-branch: 125 | !(0 <= i@208@01)]
(assert (not (<= 0 i@208@01)))
(pop) ; 5
(push) ; 5
; [else-branch: 125 | 0 <= i@208@01]
(assert (<= 0 i@208@01))
; [eval] i < len
(pop) ; 5
(pop) ; 4
; Joined path conditions
; Joined path conditions
(assert (or (<= 0 i@208@01) (not (<= 0 i@208@01))))
(assert (and (<= 0 i@208@01) (< i@208@01 len@150@01)))
; [eval] a[i]
(push) ; 4
(assert (not (>= i@208@01 0)))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(push) ; 4
(assert (not (< i@208@01 (Seq_length a@147@01))))
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
    (and (<= 0 i@208@01) (< i@208@01 len@150@01))
    (or (<= 0 i@208@01) (not (<= 0 i@208@01))))
  :pattern ((Seq_index a@147@01 i@208@01))
  :qid |Ref__Integer_value-aux|)))
; Check receiver injectivity
(push) ; 3
(assert (not (forall ((i1@208@01 Int) (i2@208@01 Int)) (!
  (=>
    (and
      (and (<= 0 i1@208@01) (< i1@208@01 len@150@01))
      (and (<= 0 i2@208@01) (< i2@208@01 len@150@01))
      (= (Seq_index a@147@01 i1@208@01) (Seq_index a@147@01 i2@208@01)))
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
    (and (<= 0 i@208@01) (< i@208@01 len@150@01))
    (and
      (= (inv@209@01 (Seq_index a@147@01 i@208@01)) i@208@01)
      (img@210@01 (Seq_index a@147@01 i@208@01))))
  :pattern ((Seq_index a@147@01 i@208@01))
  :qid |quant-u-8744|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@210@01 r)
      (and (<= 0 (inv@209@01 r)) (< (inv@209@01 r) len@150@01)))
    (= (Seq_index a@147@01 (inv@209@01 r)) r))
  :pattern ((inv@209@01 r))
  :qid |Ref__Integer_value-fctOfInv|)))
; Permissions are non-negative
; Field permissions are at most one
; Permission implies non-null receiver
(assert (forall ((i@208@01 Int)) (!
  (=>
    (and (<= 0 i@208@01) (< i@208@01 len@150@01))
    (not (= (Seq_index a@147@01 i@208@01) $Ref.null)))
  :pattern ((Seq_index a@147@01 i@208@01))
  :qid |Ref__Integer_value-permImpliesNonNull|)))
(assert (=
  ($Snap.second ($Snap.second $t@207@01))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second $t@207@01)))
    ($Snap.second ($Snap.second ($Snap.second $t@207@01))))))
(assert (= ($Snap.first ($Snap.second ($Snap.second $t@207@01))) $Snap.unit))
; [eval] 0 < len ==> |b| == len
; [eval] 0 < len
(push) ; 3
(push) ; 4
(set-option :timeout 10)
(assert (not (not (< 0 len@150@01))))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not (< 0 len@150@01)))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; [then-branch: 126 | 0 < len@150@01 | live]
; [else-branch: 126 | !(0 < len@150@01) | live]
(set-option :timeout 0)
(push) ; 4
; [then-branch: 126 | 0 < len@150@01]
(assert (< 0 len@150@01))
; [eval] |b| == len
; [eval] |b|
(pop) ; 4
(push) ; 4
; [else-branch: 126 | !(0 < len@150@01)]
(assert (not (< 0 len@150@01)))
(pop) ; 4
(pop) ; 3
; Joined path conditions
; Joined path conditions
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
; [then-branch: 127 | !(0 <= i@211@01) | live]
; [else-branch: 127 | 0 <= i@211@01 | live]
(push) ; 5
; [then-branch: 127 | !(0 <= i@211@01)]
(assert (not (<= 0 i@211@01)))
(pop) ; 5
(push) ; 5
; [else-branch: 127 | 0 <= i@211@01]
(assert (<= 0 i@211@01))
; [eval] i < len
(pop) ; 5
(pop) ; 4
; Joined path conditions
; Joined path conditions
(assert (or (<= 0 i@211@01) (not (<= 0 i@211@01))))
(assert (and (<= 0 i@211@01) (< i@211@01 len@150@01)))
; [eval] b[i]
(push) ; 4
(assert (not (>= i@211@01 0)))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(push) ; 4
(assert (not (< i@211@01 (Seq_length b@148@01))))
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
    (and (<= 0 i@211@01) (< i@211@01 len@150@01))
    (or (<= 0 i@211@01) (not (<= 0 i@211@01))))
  :pattern ((Seq_index b@148@01 i@211@01))
  :qid |Ref__Integer_value-aux|)))
; Check receiver injectivity
(push) ; 3
(assert (not (forall ((i1@211@01 Int) (i2@211@01 Int)) (!
  (=>
    (and
      (and (<= 0 i1@211@01) (< i1@211@01 len@150@01))
      (and (<= 0 i2@211@01) (< i2@211@01 len@150@01))
      (= (Seq_index b@148@01 i1@211@01) (Seq_index b@148@01 i2@211@01)))
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
    (and (<= 0 i@211@01) (< i@211@01 len@150@01))
    (and
      (= (inv@212@01 (Seq_index b@148@01 i@211@01)) i@211@01)
      (img@213@01 (Seq_index b@148@01 i@211@01))))
  :pattern ((Seq_index b@148@01 i@211@01))
  :qid |quant-u-8746|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@213@01 r)
      (and (<= 0 (inv@212@01 r)) (< (inv@212@01 r) len@150@01)))
    (= (Seq_index b@148@01 (inv@212@01 r)) r))
  :pattern ((inv@212@01 r))
  :qid |Ref__Integer_value-fctOfInv|)))
; Permissions are non-negative
; Field permissions are at most one
; Permission implies non-null receiver
(assert (forall ((i@211@01 Int)) (!
  (=>
    (and (<= 0 i@211@01) (< i@211@01 len@150@01))
    (not (= (Seq_index b@148@01 i@211@01) $Ref.null)))
  :pattern ((Seq_index b@148@01 i@211@01))
  :qid |Ref__Integer_value-permImpliesNonNull|)))
(push) ; 3
(set-option :timeout 10)
(assert (not (forall ((r $Ref)) (!
  (and
    (= (Seq_index b@148@01 i@211@01) (Seq_index a@147@01 i@208@01))
    (=
      (and
        (img@213@01 r)
        (and (<= 0 (inv@212@01 r)) (< (inv@212@01 r) len@150@01)))
      (and
        (img@210@01 r)
        (and (<= 0 (inv@209@01 r)) (< (inv@209@01 r) len@150@01)))))
  
  :qid |quant-u-8747|))))
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
; [eval] 0 < len ==> |c| == len
; [eval] 0 < len
(set-option :timeout 0)
(push) ; 3
(push) ; 4
(set-option :timeout 10)
(assert (not (not (< 0 len@150@01))))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not (< 0 len@150@01)))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; [then-branch: 128 | 0 < len@150@01 | live]
; [else-branch: 128 | !(0 < len@150@01) | live]
(set-option :timeout 0)
(push) ; 4
; [then-branch: 128 | 0 < len@150@01]
(assert (< 0 len@150@01))
; [eval] |c| == len
; [eval] |c|
(pop) ; 4
(push) ; 4
; [else-branch: 128 | !(0 < len@150@01)]
(assert (not (< 0 len@150@01)))
(pop) ; 4
(pop) ; 3
; Joined path conditions
; Joined path conditions
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@207@01)))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@207@01))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@207@01)))))))))
(declare-const i@214@01 Int)
(push) ; 3
; [eval] 0 <= i && i < len
; [eval] 0 <= i
(push) ; 4
; [then-branch: 129 | !(0 <= i@214@01) | live]
; [else-branch: 129 | 0 <= i@214@01 | live]
(push) ; 5
; [then-branch: 129 | !(0 <= i@214@01)]
(assert (not (<= 0 i@214@01)))
(pop) ; 5
(push) ; 5
; [else-branch: 129 | 0 <= i@214@01]
(assert (<= 0 i@214@01))
; [eval] i < len
(pop) ; 5
(pop) ; 4
; Joined path conditions
; Joined path conditions
(assert (or (<= 0 i@214@01) (not (<= 0 i@214@01))))
(assert (and (<= 0 i@214@01) (< i@214@01 len@150@01)))
; [eval] c[i]
(push) ; 4
(assert (not (>= i@214@01 0)))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(push) ; 4
(assert (not (< i@214@01 (Seq_length c@149@01))))
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
    (and (<= 0 i@214@01) (< i@214@01 len@150@01))
    (or (<= 0 i@214@01) (not (<= 0 i@214@01))))
  :pattern ((Seq_index c@149@01 i@214@01))
  :qid |Ref__Integer_value-aux|)))
; Check receiver injectivity
(push) ; 3
(assert (not (forall ((i1@214@01 Int) (i2@214@01 Int)) (!
  (=>
    (and
      (and (<= 0 i1@214@01) (< i1@214@01 len@150@01))
      (and (<= 0 i2@214@01) (< i2@214@01 len@150@01))
      (= (Seq_index c@149@01 i1@214@01) (Seq_index c@149@01 i2@214@01)))
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
    (and (<= 0 i@214@01) (< i@214@01 len@150@01))
    (and
      (= (inv@215@01 (Seq_index c@149@01 i@214@01)) i@214@01)
      (img@216@01 (Seq_index c@149@01 i@214@01))))
  :pattern ((Seq_index c@149@01 i@214@01))
  :qid |quant-u-8749|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@216@01 r)
      (and (<= 0 (inv@215@01 r)) (< (inv@215@01 r) len@150@01)))
    (= (Seq_index c@149@01 (inv@215@01 r)) r))
  :pattern ((inv@215@01 r))
  :qid |Ref__Integer_value-fctOfInv|)))
; Permissions are non-negative
; Field permissions are at most one
; Permission implies non-null receiver
(assert (forall ((i@214@01 Int)) (!
  (=>
    (and (<= 0 i@214@01) (< i@214@01 len@150@01))
    (not (= (Seq_index c@149@01 i@214@01) $Ref.null)))
  :pattern ((Seq_index c@149@01 i@214@01))
  :qid |Ref__Integer_value-permImpliesNonNull|)))
(push) ; 3
(set-option :timeout 10)
(assert (not (forall ((r $Ref)) (!
  (and
    (= (Seq_index c@149@01 i@214@01) (Seq_index b@148@01 i@211@01))
    (=
      (and
        (img@216@01 r)
        (and (<= 0 (inv@215@01 r)) (< (inv@215@01 r) len@150@01)))
      (and
        (img@213@01 r)
        (and (<= 0 (inv@212@01 r)) (< (inv@212@01 r) len@150@01)))))
  
  :qid |quant-u-8750|))))
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
    (= (Seq_index c@149@01 i@214@01) (Seq_index a@147@01 i@208@01))
    (=
      (and
        (img@216@01 r)
        (and (<= 0 (inv@215@01 r)) (< (inv@215@01 r) len@150@01)))
      (and
        (img@210@01 r)
        (and (<= 0 (inv@209@01 r)) (< (inv@209@01 r) len@150@01)))))
  
  :qid |quant-u-8751|))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@207@01))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@207@01)))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@207@01))))))))))
(declare-const i@217@01 Int)
(set-option :timeout 0)
(push) ; 3
; [eval] (0 <= 0 ? 1 : 0) - 1 <= i && i < len - 1
; [eval] (0 <= 0 ? 1 : 0) - 1 <= i
; [eval] (0 <= 0 ? 1 : 0) - 1
; [eval] (0 <= 0 ? 1 : 0)
; [eval] 0 <= 0
(push) ; 4
(push) ; 5
(set-option :timeout 10)
(assert (not false))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
; [then-branch: 130 | True | live]
; [else-branch: 130 | False | dead]
(set-option :timeout 0)
(push) ; 5
; [then-branch: 130 | True]
(pop) ; 5
(pop) ; 4
; Joined path conditions
(push) ; 4
; [then-branch: 131 | !(0 <= i@217@01) | live]
; [else-branch: 131 | 0 <= i@217@01 | live]
(push) ; 5
; [then-branch: 131 | !(0 <= i@217@01)]
(assert (not (<= 0 i@217@01)))
(pop) ; 5
(push) ; 5
; [else-branch: 131 | 0 <= i@217@01]
(assert (<= 0 i@217@01))
; [eval] i < len - 1
; [eval] len - 1
(pop) ; 5
(pop) ; 4
; Joined path conditions
; Joined path conditions
(assert (or (<= 0 i@217@01) (not (<= 0 i@217@01))))
(assert (and (<= 0 i@217@01) (< i@217@01 (- len@150@01 1))))
; [eval] a[i]
(push) ; 4
(assert (not (>= i@217@01 0)))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(push) ; 4
(assert (not (< i@217@01 (Seq_length a@147@01))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(pop) ; 3
(declare-fun inv@218@01 ($Ref) Int)
(declare-fun img@219@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
(assert (forall ((i@217@01 Int)) (!
  (=>
    (and (<= 0 i@217@01) (< i@217@01 (- len@150@01 1)))
    (or (<= 0 i@217@01) (not (<= 0 i@217@01))))
  :pattern ((Seq_index a@147@01 i@217@01))
  :qid |Ref__Integer_value-aux|)))
; Check receiver injectivity
(push) ; 3
(assert (not (forall ((i1@217@01 Int) (i2@217@01 Int)) (!
  (=>
    (and
      (and (<= 0 i1@217@01) (< i1@217@01 (- len@150@01 1)))
      (and (<= 0 i2@217@01) (< i2@217@01 (- len@150@01 1)))
      (= (Seq_index a@147@01 i1@217@01) (Seq_index a@147@01 i2@217@01)))
    (= i1@217@01 i2@217@01))
  
  :qid |Ref__Integer_value-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((i@217@01 Int)) (!
  (=>
    (and (<= 0 i@217@01) (< i@217@01 (- len@150@01 1)))
    (and
      (= (inv@218@01 (Seq_index a@147@01 i@217@01)) i@217@01)
      (img@219@01 (Seq_index a@147@01 i@217@01))))
  :pattern ((Seq_index a@147@01 i@217@01))
  :qid |quant-u-8753|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@219@01 r)
      (and (<= 0 (inv@218@01 r)) (< (inv@218@01 r) (- len@150@01 1))))
    (= (Seq_index a@147@01 (inv@218@01 r)) r))
  :pattern ((inv@218@01 r))
  :qid |Ref__Integer_value-fctOfInv|)))
; Permissions are non-negative
; Field permissions are at most one
; Permission implies non-null receiver
(assert (forall ((i@217@01 Int)) (!
  (=>
    (and (<= 0 i@217@01) (< i@217@01 (- len@150@01 1)))
    (not (= (Seq_index a@147@01 i@217@01) $Ref.null)))
  :pattern ((Seq_index a@147@01 i@217@01))
  :qid |Ref__Integer_value-permImpliesNonNull|)))
(push) ; 3
(set-option :timeout 10)
(assert (not (forall ((r $Ref)) (!
  (and
    (= (Seq_index a@147@01 i@217@01) (Seq_index c@149@01 i@214@01))
    (=
      (and
        (img@219@01 r)
        (and (<= 0 (inv@218@01 r)) (< (inv@218@01 r) (- len@150@01 1))))
      (and
        (img@216@01 r)
        (and (<= 0 (inv@215@01 r)) (< (inv@215@01 r) len@150@01)))))
  
  :qid |quant-u-8754|))))
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
    (= (Seq_index a@147@01 i@217@01) (Seq_index b@148@01 i@211@01))
    (=
      (and
        (img@219@01 r)
        (and (<= 0 (inv@218@01 r)) (< (inv@218@01 r) (- len@150@01 1))))
      (and
        (img@213@01 r)
        (and (<= 0 (inv@212@01 r)) (< (inv@212@01 r) len@150@01)))))
  
  :qid |quant-u-8755|))))
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
    (= (Seq_index a@147@01 i@217@01) (Seq_index a@147@01 i@208@01))
    (=
      (and
        (img@219@01 r)
        (and (<= 0 (inv@218@01 r)) (< (inv@218@01 r) (- len@150@01 1))))
      (and
        (img@210@01 r)
        (and (<= 0 (inv@209@01 r)) (< (inv@209@01 r) len@150@01)))))
  
  :qid |quant-u-8756|))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@207@01)))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@207@01))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@207@01)))))))))))
; [eval] 0 <= |a| - 1 && |a| - 1 < len
; [eval] 0 <= |a| - 1
; [eval] |a| - 1
; [eval] |a|
(set-option :timeout 0)
(push) ; 3
; [then-branch: 132 | !(0 <= |a@147@01| - 1) | live]
; [else-branch: 132 | 0 <= |a@147@01| - 1 | live]
(push) ; 4
; [then-branch: 132 | !(0 <= |a@147@01| - 1)]
(assert (not (<= 0 (- (Seq_length a@147@01) 1))))
(pop) ; 4
(push) ; 4
; [else-branch: 132 | 0 <= |a@147@01| - 1]
(assert (<= 0 (- (Seq_length a@147@01) 1)))
; [eval] |a| - 1 < len
; [eval] |a| - 1
; [eval] |a|
(pop) ; 4
(pop) ; 3
; Joined path conditions
; Joined path conditions
(assert (or (<= 0 (- (Seq_length a@147@01) 1)) (not (<= 0 (- (Seq_length a@147@01) 1)))))
(push) ; 3
(set-option :timeout 10)
(assert (not (not
  (and
    (<= 0 (- (Seq_length a@147@01) 1))
    (< (- (Seq_length a@147@01) 1) len@150@01)))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (and
  (<= 0 (- (Seq_length a@147@01) 1))
  (< (- (Seq_length a@147@01) 1) len@150@01))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; [then-branch: 133 | 0 <= |a@147@01| - 1 && |a@147@01| - 1 < len@150@01 | live]
; [else-branch: 133 | !(0 <= |a@147@01| - 1 && |a@147@01| - 1 < len@150@01) | live]
(set-option :timeout 0)
(push) ; 3
; [then-branch: 133 | 0 <= |a@147@01| - 1 && |a@147@01| - 1 < len@150@01]
(assert (and
  (<= 0 (- (Seq_length a@147@01) 1))
  (< (- (Seq_length a@147@01) 1) len@150@01)))
; [eval] a[|a| - 1]
; [eval] |a| - 1
; [eval] |a|
(push) ; 4
(assert (not (>= (- (Seq_length a@147@01) 1) 0)))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(push) ; 4
(assert (not (< (- (Seq_length a@147@01) 1) (Seq_length a@147@01))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(declare-const sm@220@01 $FVF<Ref__Integer_value>)
; Definitional axioms for singleton-SM's value
(assert (=
  ($FVF.lookup_Ref__Integer_value (as sm@220@01  $FVF<Ref__Integer_value>) (Seq_index
    a@147@01
    (- (Seq_length a@147@01) 1)))
  ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@207@01)))))))))))
(assert (<=
  $Perm.No
  (ite
    (=
      (Seq_index a@147@01 (- (Seq_length a@147@01) 1))
      (Seq_index a@147@01 (- (Seq_length a@147@01) 1)))
    (/ (to_real 1) (to_real 2))
    $Perm.No)))
(assert (<=
  (ite
    (=
      (Seq_index a@147@01 (- (Seq_length a@147@01) 1))
      (Seq_index a@147@01 (- (Seq_length a@147@01) 1)))
    (/ (to_real 1) (to_real 2))
    $Perm.No)
  $Perm.Write))
(assert (=>
  (=
    (Seq_index a@147@01 (- (Seq_length a@147@01) 1))
    (Seq_index a@147@01 (- (Seq_length a@147@01) 1)))
  (not (= (Seq_index a@147@01 (- (Seq_length a@147@01) 1)) $Ref.null))))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@207@01))))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@207@01)))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@207@01))))))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@207@01)))))))))
  $Snap.unit))
; [eval] (forall i: Int :: { a[i] } 0 <= i && i < len ==> a[i].Ref__Integer_value == i + 1)
(declare-const i@221@01 Int)
(push) ; 4
; [eval] 0 <= i && i < len ==> a[i].Ref__Integer_value == i + 1
; [eval] 0 <= i && i < len
; [eval] 0 <= i
(push) ; 5
; [then-branch: 134 | !(0 <= i@221@01) | live]
; [else-branch: 134 | 0 <= i@221@01 | live]
(push) ; 6
; [then-branch: 134 | !(0 <= i@221@01)]
(assert (not (<= 0 i@221@01)))
(pop) ; 6
(push) ; 6
; [else-branch: 134 | 0 <= i@221@01]
(assert (<= 0 i@221@01))
; [eval] i < len
(pop) ; 6
(pop) ; 5
; Joined path conditions
; Joined path conditions
(assert (or (<= 0 i@221@01) (not (<= 0 i@221@01))))
(push) ; 5
; [then-branch: 135 | 0 <= i@221@01 && i@221@01 < len@150@01 | live]
; [else-branch: 135 | !(0 <= i@221@01 && i@221@01 < len@150@01) | live]
(push) ; 6
; [then-branch: 135 | 0 <= i@221@01 && i@221@01 < len@150@01]
(assert (and (<= 0 i@221@01) (< i@221@01 len@150@01)))
; [eval] a[i].Ref__Integer_value == i + 1
; [eval] a[i]
(push) ; 7
(assert (not (>= i@221@01 0)))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(push) ; 7
(assert (not (< i@221@01 (Seq_length a@147@01))))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(declare-const sm@222@01 $FVF<Ref__Integer_value>)
; Definitional axioms for snapshot map values
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@210@01 r)
      (and (<= 0 (inv@209@01 r)) (< (inv@209@01 r) len@150@01)))
    (=
      ($FVF.lookup_Ref__Integer_value (as sm@222@01  $FVF<Ref__Integer_value>) r)
      ($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second $t@207@01))) r)))
  :pattern (($FVF.lookup_Ref__Integer_value (as sm@222@01  $FVF<Ref__Integer_value>) r))
  :pattern (($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second $t@207@01))) r))
  :qid |qp.fvfValDef23|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@213@01 r)
      (and (<= 0 (inv@212@01 r)) (< (inv@212@01 r) len@150@01)))
    (=
      ($FVF.lookup_Ref__Integer_value (as sm@222@01  $FVF<Ref__Integer_value>) r)
      ($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@207@01))))) r)))
  :pattern (($FVF.lookup_Ref__Integer_value (as sm@222@01  $FVF<Ref__Integer_value>) r))
  :pattern (($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@207@01))))) r))
  :qid |qp.fvfValDef24|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@216@01 r)
      (and (<= 0 (inv@215@01 r)) (< (inv@215@01 r) len@150@01)))
    (=
      ($FVF.lookup_Ref__Integer_value (as sm@222@01  $FVF<Ref__Integer_value>) r)
      ($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@207@01))))))) r)))
  :pattern (($FVF.lookup_Ref__Integer_value (as sm@222@01  $FVF<Ref__Integer_value>) r))
  :pattern (($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@207@01))))))) r))
  :qid |qp.fvfValDef25|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@219@01 r)
      (and (<= 0 (inv@218@01 r)) (< (inv@218@01 r) (- len@150@01 1))))
    (=
      ($FVF.lookup_Ref__Integer_value (as sm@222@01  $FVF<Ref__Integer_value>) r)
      ($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@207@01)))))))) r)))
  :pattern (($FVF.lookup_Ref__Integer_value (as sm@222@01  $FVF<Ref__Integer_value>) r))
  :pattern (($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@207@01)))))))) r))
  :qid |qp.fvfValDef26|)))
(assert (forall ((r $Ref)) (!
  (=>
    (= r (Seq_index a@147@01 (- (Seq_length a@147@01) 1)))
    (=
      ($FVF.lookup_Ref__Integer_value (as sm@222@01  $FVF<Ref__Integer_value>) r)
      ($FVF.lookup_Ref__Integer_value (as sm@220@01  $FVF<Ref__Integer_value>) r)))
  :pattern (($FVF.lookup_Ref__Integer_value (as sm@222@01  $FVF<Ref__Integer_value>) r))
  :pattern (($FVF.lookup_Ref__Integer_value (as sm@220@01  $FVF<Ref__Integer_value>) r))
  :qid |qp.fvfValDef27|)))
(declare-const pm@223@01 $FPM)
(assert (forall ((r $Ref)) (!
  (=
    ($FVF.perm_Ref__Integer_value (as pm@223@01  $FPM) r)
    (+
      (+
        (+
          (+
            (ite
              (and
                (img@210@01 r)
                (and (<= 0 (inv@209@01 r)) (< (inv@209@01 r) len@150@01)))
              (/ (to_real 1) (to_real 2))
              $Perm.No)
            (ite
              (and
                (img@213@01 r)
                (and (<= 0 (inv@212@01 r)) (< (inv@212@01 r) len@150@01)))
              (/ (to_real 1) (to_real 2))
              $Perm.No))
          (ite
            (and
              (img@216@01 r)
              (and (<= 0 (inv@215@01 r)) (< (inv@215@01 r) len@150@01)))
            $Perm.Write
            $Perm.No))
        (ite
          (and
            (img@219@01 r)
            (and (<= 0 (inv@218@01 r)) (< (inv@218@01 r) (- len@150@01 1))))
          (/ (to_real 1) (to_real 2))
          $Perm.No))
      (ite
        (= r (Seq_index a@147@01 (- (Seq_length a@147@01) 1)))
        (/ (to_real 1) (to_real 2))
        $Perm.No)))
  :pattern (($FVF.perm_Ref__Integer_value (as pm@223@01  $FPM) r))
  :qid |qp.resPrmSumDef28|)))
(push) ; 7
(assert (not (<
  $Perm.No
  ($FVF.perm_Ref__Integer_value (as pm@223@01  $FPM) (Seq_index
    a@147@01
    i@221@01)))))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
; [eval] i + 1
(pop) ; 6
(push) ; 6
; [else-branch: 135 | !(0 <= i@221@01 && i@221@01 < len@150@01)]
(assert (not (and (<= 0 i@221@01) (< i@221@01 len@150@01))))
(pop) ; 6
(pop) ; 5
; Joined path conditions
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@210@01 r)
      (and (<= 0 (inv@209@01 r)) (< (inv@209@01 r) len@150@01)))
    (=
      ($FVF.lookup_Ref__Integer_value (as sm@222@01  $FVF<Ref__Integer_value>) r)
      ($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second $t@207@01))) r)))
  :pattern (($FVF.lookup_Ref__Integer_value (as sm@222@01  $FVF<Ref__Integer_value>) r))
  :pattern (($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second $t@207@01))) r))
  :qid |qp.fvfValDef23|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@213@01 r)
      (and (<= 0 (inv@212@01 r)) (< (inv@212@01 r) len@150@01)))
    (=
      ($FVF.lookup_Ref__Integer_value (as sm@222@01  $FVF<Ref__Integer_value>) r)
      ($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@207@01))))) r)))
  :pattern (($FVF.lookup_Ref__Integer_value (as sm@222@01  $FVF<Ref__Integer_value>) r))
  :pattern (($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@207@01))))) r))
  :qid |qp.fvfValDef24|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@216@01 r)
      (and (<= 0 (inv@215@01 r)) (< (inv@215@01 r) len@150@01)))
    (=
      ($FVF.lookup_Ref__Integer_value (as sm@222@01  $FVF<Ref__Integer_value>) r)
      ($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@207@01))))))) r)))
  :pattern (($FVF.lookup_Ref__Integer_value (as sm@222@01  $FVF<Ref__Integer_value>) r))
  :pattern (($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@207@01))))))) r))
  :qid |qp.fvfValDef25|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@219@01 r)
      (and (<= 0 (inv@218@01 r)) (< (inv@218@01 r) (- len@150@01 1))))
    (=
      ($FVF.lookup_Ref__Integer_value (as sm@222@01  $FVF<Ref__Integer_value>) r)
      ($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@207@01)))))))) r)))
  :pattern (($FVF.lookup_Ref__Integer_value (as sm@222@01  $FVF<Ref__Integer_value>) r))
  :pattern (($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@207@01)))))))) r))
  :qid |qp.fvfValDef26|)))
(assert (forall ((r $Ref)) (!
  (=>
    (= r (Seq_index a@147@01 (- (Seq_length a@147@01) 1)))
    (=
      ($FVF.lookup_Ref__Integer_value (as sm@222@01  $FVF<Ref__Integer_value>) r)
      ($FVF.lookup_Ref__Integer_value (as sm@220@01  $FVF<Ref__Integer_value>) r)))
  :pattern (($FVF.lookup_Ref__Integer_value (as sm@222@01  $FVF<Ref__Integer_value>) r))
  :pattern (($FVF.lookup_Ref__Integer_value (as sm@220@01  $FVF<Ref__Integer_value>) r))
  :qid |qp.fvfValDef27|)))
(assert (forall ((r $Ref)) (!
  (=
    ($FVF.perm_Ref__Integer_value (as pm@223@01  $FPM) r)
    (+
      (+
        (+
          (+
            (ite
              (and
                (img@210@01 r)
                (and (<= 0 (inv@209@01 r)) (< (inv@209@01 r) len@150@01)))
              (/ (to_real 1) (to_real 2))
              $Perm.No)
            (ite
              (and
                (img@213@01 r)
                (and (<= 0 (inv@212@01 r)) (< (inv@212@01 r) len@150@01)))
              (/ (to_real 1) (to_real 2))
              $Perm.No))
          (ite
            (and
              (img@216@01 r)
              (and (<= 0 (inv@215@01 r)) (< (inv@215@01 r) len@150@01)))
            $Perm.Write
            $Perm.No))
        (ite
          (and
            (img@219@01 r)
            (and (<= 0 (inv@218@01 r)) (< (inv@218@01 r) (- len@150@01 1))))
          (/ (to_real 1) (to_real 2))
          $Perm.No))
      (ite
        (= r (Seq_index a@147@01 (- (Seq_length a@147@01) 1)))
        (/ (to_real 1) (to_real 2))
        $Perm.No)))
  :pattern (($FVF.perm_Ref__Integer_value (as pm@223@01  $FPM) r))
  :qid |qp.resPrmSumDef28|)))
; Joined path conditions
(assert (or
  (not (and (<= 0 i@221@01) (< i@221@01 len@150@01)))
  (and (<= 0 i@221@01) (< i@221@01 len@150@01))))
(pop) ; 4
; Nested auxiliary terms: globals (aux)
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@210@01 r)
      (and (<= 0 (inv@209@01 r)) (< (inv@209@01 r) len@150@01)))
    (=
      ($FVF.lookup_Ref__Integer_value (as sm@222@01  $FVF<Ref__Integer_value>) r)
      ($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second $t@207@01))) r)))
  :pattern (($FVF.lookup_Ref__Integer_value (as sm@222@01  $FVF<Ref__Integer_value>) r))
  :pattern (($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second $t@207@01))) r))
  :qid |qp.fvfValDef23|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@213@01 r)
      (and (<= 0 (inv@212@01 r)) (< (inv@212@01 r) len@150@01)))
    (=
      ($FVF.lookup_Ref__Integer_value (as sm@222@01  $FVF<Ref__Integer_value>) r)
      ($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@207@01))))) r)))
  :pattern (($FVF.lookup_Ref__Integer_value (as sm@222@01  $FVF<Ref__Integer_value>) r))
  :pattern (($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@207@01))))) r))
  :qid |qp.fvfValDef24|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@216@01 r)
      (and (<= 0 (inv@215@01 r)) (< (inv@215@01 r) len@150@01)))
    (=
      ($FVF.lookup_Ref__Integer_value (as sm@222@01  $FVF<Ref__Integer_value>) r)
      ($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@207@01))))))) r)))
  :pattern (($FVF.lookup_Ref__Integer_value (as sm@222@01  $FVF<Ref__Integer_value>) r))
  :pattern (($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@207@01))))))) r))
  :qid |qp.fvfValDef25|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@219@01 r)
      (and (<= 0 (inv@218@01 r)) (< (inv@218@01 r) (- len@150@01 1))))
    (=
      ($FVF.lookup_Ref__Integer_value (as sm@222@01  $FVF<Ref__Integer_value>) r)
      ($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@207@01)))))))) r)))
  :pattern (($FVF.lookup_Ref__Integer_value (as sm@222@01  $FVF<Ref__Integer_value>) r))
  :pattern (($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@207@01)))))))) r))
  :qid |qp.fvfValDef26|)))
(assert (forall ((r $Ref)) (!
  (=>
    (= r (Seq_index a@147@01 (- (Seq_length a@147@01) 1)))
    (=
      ($FVF.lookup_Ref__Integer_value (as sm@222@01  $FVF<Ref__Integer_value>) r)
      ($FVF.lookup_Ref__Integer_value (as sm@220@01  $FVF<Ref__Integer_value>) r)))
  :pattern (($FVF.lookup_Ref__Integer_value (as sm@222@01  $FVF<Ref__Integer_value>) r))
  :pattern (($FVF.lookup_Ref__Integer_value (as sm@220@01  $FVF<Ref__Integer_value>) r))
  :qid |qp.fvfValDef27|)))
(assert (forall ((r $Ref)) (!
  (=
    ($FVF.perm_Ref__Integer_value (as pm@223@01  $FPM) r)
    (+
      (+
        (+
          (+
            (ite
              (and
                (img@210@01 r)
                (and (<= 0 (inv@209@01 r)) (< (inv@209@01 r) len@150@01)))
              (/ (to_real 1) (to_real 2))
              $Perm.No)
            (ite
              (and
                (img@213@01 r)
                (and (<= 0 (inv@212@01 r)) (< (inv@212@01 r) len@150@01)))
              (/ (to_real 1) (to_real 2))
              $Perm.No))
          (ite
            (and
              (img@216@01 r)
              (and (<= 0 (inv@215@01 r)) (< (inv@215@01 r) len@150@01)))
            $Perm.Write
            $Perm.No))
        (ite
          (and
            (img@219@01 r)
            (and (<= 0 (inv@218@01 r)) (< (inv@218@01 r) (- len@150@01 1))))
          (/ (to_real 1) (to_real 2))
          $Perm.No))
      (ite
        (= r (Seq_index a@147@01 (- (Seq_length a@147@01) 1)))
        (/ (to_real 1) (to_real 2))
        $Perm.No)))
  :pattern (($FVF.perm_Ref__Integer_value (as pm@223@01  $FPM) r))
  :qid |qp.resPrmSumDef28|)))
; Nested auxiliary terms: non-globals (aux)
(assert (forall ((i@221@01 Int)) (!
  (and
    (or (<= 0 i@221@01) (not (<= 0 i@221@01)))
    (or
      (not (and (<= 0 i@221@01) (< i@221@01 len@150@01)))
      (and (<= 0 i@221@01) (< i@221@01 len@150@01))))
  :pattern ((Seq_index a@147@01 i@221@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/third_party/test_forward_dep_c.vpr@79@12@79@89-aux|)))
(assert (forall ((i@221@01 Int)) (!
  (=>
    (and (<= 0 i@221@01) (< i@221@01 len@150@01))
    (=
      ($FVF.lookup_Ref__Integer_value (as sm@222@01  $FVF<Ref__Integer_value>) (Seq_index
        a@147@01
        i@221@01))
      (+ i@221@01 1)))
  :pattern ((Seq_index a@147@01 i@221@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/third_party/test_forward_dep_c.vpr@79@12@79@89|)))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@207@01)))))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@207@01))))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@207@01)))))))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@207@01))))))))))
  $Snap.unit))
; [eval] (forall i: Int :: { b[i] } 0 <= i && i < len ==> b[i].Ref__Integer_value == i)
(declare-const i@224@01 Int)
(push) ; 4
; [eval] 0 <= i && i < len ==> b[i].Ref__Integer_value == i
; [eval] 0 <= i && i < len
; [eval] 0 <= i
(push) ; 5
; [then-branch: 136 | !(0 <= i@224@01) | live]
; [else-branch: 136 | 0 <= i@224@01 | live]
(push) ; 6
; [then-branch: 136 | !(0 <= i@224@01)]
(assert (not (<= 0 i@224@01)))
(pop) ; 6
(push) ; 6
; [else-branch: 136 | 0 <= i@224@01]
(assert (<= 0 i@224@01))
; [eval] i < len
(pop) ; 6
(pop) ; 5
; Joined path conditions
; Joined path conditions
(assert (or (<= 0 i@224@01) (not (<= 0 i@224@01))))
(push) ; 5
; [then-branch: 137 | 0 <= i@224@01 && i@224@01 < len@150@01 | live]
; [else-branch: 137 | !(0 <= i@224@01 && i@224@01 < len@150@01) | live]
(push) ; 6
; [then-branch: 137 | 0 <= i@224@01 && i@224@01 < len@150@01]
(assert (and (<= 0 i@224@01) (< i@224@01 len@150@01)))
; [eval] b[i].Ref__Integer_value == i
; [eval] b[i]
(push) ; 7
(assert (not (>= i@224@01 0)))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(push) ; 7
(assert (not (< i@224@01 (Seq_length b@148@01))))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(assert (and
  (forall ((r $Ref)) (!
    (=>
      (and
        (img@210@01 r)
        (and (<= 0 (inv@209@01 r)) (< (inv@209@01 r) len@150@01)))
      (=
        ($FVF.lookup_Ref__Integer_value (as sm@222@01  $FVF<Ref__Integer_value>) r)
        ($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second $t@207@01))) r)))
    :pattern (($FVF.lookup_Ref__Integer_value (as sm@222@01  $FVF<Ref__Integer_value>) r))
    :pattern (($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second $t@207@01))) r))
    :qid |qp.fvfValDef23|))
  (forall ((r $Ref)) (!
    (=>
      (and
        (img@213@01 r)
        (and (<= 0 (inv@212@01 r)) (< (inv@212@01 r) len@150@01)))
      (=
        ($FVF.lookup_Ref__Integer_value (as sm@222@01  $FVF<Ref__Integer_value>) r)
        ($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@207@01))))) r)))
    :pattern (($FVF.lookup_Ref__Integer_value (as sm@222@01  $FVF<Ref__Integer_value>) r))
    :pattern (($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@207@01))))) r))
    :qid |qp.fvfValDef24|))
  (forall ((r $Ref)) (!
    (=>
      (and
        (img@216@01 r)
        (and (<= 0 (inv@215@01 r)) (< (inv@215@01 r) len@150@01)))
      (=
        ($FVF.lookup_Ref__Integer_value (as sm@222@01  $FVF<Ref__Integer_value>) r)
        ($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@207@01))))))) r)))
    :pattern (($FVF.lookup_Ref__Integer_value (as sm@222@01  $FVF<Ref__Integer_value>) r))
    :pattern (($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@207@01))))))) r))
    :qid |qp.fvfValDef25|))
  (forall ((r $Ref)) (!
    (=>
      (and
        (img@219@01 r)
        (and (<= 0 (inv@218@01 r)) (< (inv@218@01 r) (- len@150@01 1))))
      (=
        ($FVF.lookup_Ref__Integer_value (as sm@222@01  $FVF<Ref__Integer_value>) r)
        ($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@207@01)))))))) r)))
    :pattern (($FVF.lookup_Ref__Integer_value (as sm@222@01  $FVF<Ref__Integer_value>) r))
    :pattern (($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@207@01)))))))) r))
    :qid |qp.fvfValDef26|))
  (forall ((r $Ref)) (!
    (=>
      (= r (Seq_index a@147@01 (- (Seq_length a@147@01) 1)))
      (=
        ($FVF.lookup_Ref__Integer_value (as sm@222@01  $FVF<Ref__Integer_value>) r)
        ($FVF.lookup_Ref__Integer_value (as sm@220@01  $FVF<Ref__Integer_value>) r)))
    :pattern (($FVF.lookup_Ref__Integer_value (as sm@222@01  $FVF<Ref__Integer_value>) r))
    :pattern (($FVF.lookup_Ref__Integer_value (as sm@220@01  $FVF<Ref__Integer_value>) r))
    :qid |qp.fvfValDef27|))))
(push) ; 7
(assert (not (<
  $Perm.No
  (+
    (+
      (+
        (+
          (ite
            (and
              (img@210@01 (Seq_index b@148@01 i@224@01))
              (and
                (<= 0 (inv@209@01 (Seq_index b@148@01 i@224@01)))
                (< (inv@209@01 (Seq_index b@148@01 i@224@01)) len@150@01)))
            (/ (to_real 1) (to_real 2))
            $Perm.No)
          (ite
            (and
              (img@213@01 (Seq_index b@148@01 i@224@01))
              (and
                (<= 0 (inv@212@01 (Seq_index b@148@01 i@224@01)))
                (< (inv@212@01 (Seq_index b@148@01 i@224@01)) len@150@01)))
            (/ (to_real 1) (to_real 2))
            $Perm.No))
        (ite
          (and
            (img@216@01 (Seq_index b@148@01 i@224@01))
            (and
              (<= 0 (inv@215@01 (Seq_index b@148@01 i@224@01)))
              (< (inv@215@01 (Seq_index b@148@01 i@224@01)) len@150@01)))
          $Perm.Write
          $Perm.No))
      (ite
        (and
          (img@219@01 (Seq_index b@148@01 i@224@01))
          (and
            (<= 0 (inv@218@01 (Seq_index b@148@01 i@224@01)))
            (< (inv@218@01 (Seq_index b@148@01 i@224@01)) (- len@150@01 1))))
        (/ (to_real 1) (to_real 2))
        $Perm.No))
    (ite
      (=
        (Seq_index b@148@01 i@224@01)
        (Seq_index a@147@01 (- (Seq_length a@147@01) 1)))
      (/ (to_real 1) (to_real 2))
      $Perm.No)))))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(pop) ; 6
(push) ; 6
; [else-branch: 137 | !(0 <= i@224@01 && i@224@01 < len@150@01)]
(assert (not (and (<= 0 i@224@01) (< i@224@01 len@150@01))))
(pop) ; 6
(pop) ; 5
; Joined path conditions
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@210@01 r)
      (and (<= 0 (inv@209@01 r)) (< (inv@209@01 r) len@150@01)))
    (=
      ($FVF.lookup_Ref__Integer_value (as sm@222@01  $FVF<Ref__Integer_value>) r)
      ($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second $t@207@01))) r)))
  :pattern (($FVF.lookup_Ref__Integer_value (as sm@222@01  $FVF<Ref__Integer_value>) r))
  :pattern (($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second $t@207@01))) r))
  :qid |qp.fvfValDef23|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@213@01 r)
      (and (<= 0 (inv@212@01 r)) (< (inv@212@01 r) len@150@01)))
    (=
      ($FVF.lookup_Ref__Integer_value (as sm@222@01  $FVF<Ref__Integer_value>) r)
      ($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@207@01))))) r)))
  :pattern (($FVF.lookup_Ref__Integer_value (as sm@222@01  $FVF<Ref__Integer_value>) r))
  :pattern (($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@207@01))))) r))
  :qid |qp.fvfValDef24|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@216@01 r)
      (and (<= 0 (inv@215@01 r)) (< (inv@215@01 r) len@150@01)))
    (=
      ($FVF.lookup_Ref__Integer_value (as sm@222@01  $FVF<Ref__Integer_value>) r)
      ($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@207@01))))))) r)))
  :pattern (($FVF.lookup_Ref__Integer_value (as sm@222@01  $FVF<Ref__Integer_value>) r))
  :pattern (($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@207@01))))))) r))
  :qid |qp.fvfValDef25|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@219@01 r)
      (and (<= 0 (inv@218@01 r)) (< (inv@218@01 r) (- len@150@01 1))))
    (=
      ($FVF.lookup_Ref__Integer_value (as sm@222@01  $FVF<Ref__Integer_value>) r)
      ($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@207@01)))))))) r)))
  :pattern (($FVF.lookup_Ref__Integer_value (as sm@222@01  $FVF<Ref__Integer_value>) r))
  :pattern (($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@207@01)))))))) r))
  :qid |qp.fvfValDef26|)))
(assert (forall ((r $Ref)) (!
  (=>
    (= r (Seq_index a@147@01 (- (Seq_length a@147@01) 1)))
    (=
      ($FVF.lookup_Ref__Integer_value (as sm@222@01  $FVF<Ref__Integer_value>) r)
      ($FVF.lookup_Ref__Integer_value (as sm@220@01  $FVF<Ref__Integer_value>) r)))
  :pattern (($FVF.lookup_Ref__Integer_value (as sm@222@01  $FVF<Ref__Integer_value>) r))
  :pattern (($FVF.lookup_Ref__Integer_value (as sm@220@01  $FVF<Ref__Integer_value>) r))
  :qid |qp.fvfValDef27|)))
; Joined path conditions
(assert (or
  (not (and (<= 0 i@224@01) (< i@224@01 len@150@01)))
  (and (<= 0 i@224@01) (< i@224@01 len@150@01))))
(pop) ; 4
; Nested auxiliary terms: globals (aux)
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@210@01 r)
      (and (<= 0 (inv@209@01 r)) (< (inv@209@01 r) len@150@01)))
    (=
      ($FVF.lookup_Ref__Integer_value (as sm@222@01  $FVF<Ref__Integer_value>) r)
      ($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second $t@207@01))) r)))
  :pattern (($FVF.lookup_Ref__Integer_value (as sm@222@01  $FVF<Ref__Integer_value>) r))
  :pattern (($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second $t@207@01))) r))
  :qid |qp.fvfValDef23|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@213@01 r)
      (and (<= 0 (inv@212@01 r)) (< (inv@212@01 r) len@150@01)))
    (=
      ($FVF.lookup_Ref__Integer_value (as sm@222@01  $FVF<Ref__Integer_value>) r)
      ($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@207@01))))) r)))
  :pattern (($FVF.lookup_Ref__Integer_value (as sm@222@01  $FVF<Ref__Integer_value>) r))
  :pattern (($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@207@01))))) r))
  :qid |qp.fvfValDef24|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@216@01 r)
      (and (<= 0 (inv@215@01 r)) (< (inv@215@01 r) len@150@01)))
    (=
      ($FVF.lookup_Ref__Integer_value (as sm@222@01  $FVF<Ref__Integer_value>) r)
      ($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@207@01))))))) r)))
  :pattern (($FVF.lookup_Ref__Integer_value (as sm@222@01  $FVF<Ref__Integer_value>) r))
  :pattern (($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@207@01))))))) r))
  :qid |qp.fvfValDef25|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@219@01 r)
      (and (<= 0 (inv@218@01 r)) (< (inv@218@01 r) (- len@150@01 1))))
    (=
      ($FVF.lookup_Ref__Integer_value (as sm@222@01  $FVF<Ref__Integer_value>) r)
      ($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@207@01)))))))) r)))
  :pattern (($FVF.lookup_Ref__Integer_value (as sm@222@01  $FVF<Ref__Integer_value>) r))
  :pattern (($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@207@01)))))))) r))
  :qid |qp.fvfValDef26|)))
(assert (forall ((r $Ref)) (!
  (=>
    (= r (Seq_index a@147@01 (- (Seq_length a@147@01) 1)))
    (=
      ($FVF.lookup_Ref__Integer_value (as sm@222@01  $FVF<Ref__Integer_value>) r)
      ($FVF.lookup_Ref__Integer_value (as sm@220@01  $FVF<Ref__Integer_value>) r)))
  :pattern (($FVF.lookup_Ref__Integer_value (as sm@222@01  $FVF<Ref__Integer_value>) r))
  :pattern (($FVF.lookup_Ref__Integer_value (as sm@220@01  $FVF<Ref__Integer_value>) r))
  :qid |qp.fvfValDef27|)))
; Nested auxiliary terms: non-globals (aux)
(assert (forall ((i@224@01 Int)) (!
  (and
    (or (<= 0 i@224@01) (not (<= 0 i@224@01)))
    (or
      (not (and (<= 0 i@224@01) (< i@224@01 len@150@01)))
      (and (<= 0 i@224@01) (< i@224@01 len@150@01))))
  :pattern ((Seq_index b@148@01 i@224@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/third_party/test_forward_dep_c.vpr@80@12@80@85-aux|)))
(assert (forall ((i@224@01 Int)) (!
  (=>
    (and (<= 0 i@224@01) (< i@224@01 len@150@01))
    (=
      ($FVF.lookup_Ref__Integer_value (as sm@222@01  $FVF<Ref__Integer_value>) (Seq_index
        b@148@01
        i@224@01))
      i@224@01))
  :pattern ((Seq_index b@148@01 i@224@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/third_party/test_forward_dep_c.vpr@80@12@80@85|)))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@207@01))))))))))
  $Snap.unit))
; [eval] (forall i: Int :: { c[i] } (0 <= 0 ? 1 : 0) <= i && i < len ==> c[i].Ref__Integer_value == i + 2)
(declare-const i@225@01 Int)
(push) ; 4
; [eval] (0 <= 0 ? 1 : 0) <= i && i < len ==> c[i].Ref__Integer_value == i + 2
; [eval] (0 <= 0 ? 1 : 0) <= i && i < len
; [eval] (0 <= 0 ? 1 : 0) <= i
; [eval] (0 <= 0 ? 1 : 0)
; [eval] 0 <= 0
(push) ; 5
(push) ; 6
(set-option :timeout 10)
(assert (not false))
(check-sat)
; unknown
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
; [then-branch: 138 | True | live]
; [else-branch: 138 | False | dead]
(set-option :timeout 0)
(push) ; 6
; [then-branch: 138 | True]
(pop) ; 6
(pop) ; 5
; Joined path conditions
(push) ; 5
; [then-branch: 139 | !(1 <= i@225@01) | live]
; [else-branch: 139 | 1 <= i@225@01 | live]
(push) ; 6
; [then-branch: 139 | !(1 <= i@225@01)]
(assert (not (<= 1 i@225@01)))
(pop) ; 6
(push) ; 6
; [else-branch: 139 | 1 <= i@225@01]
(assert (<= 1 i@225@01))
; [eval] i < len
(pop) ; 6
(pop) ; 5
; Joined path conditions
; Joined path conditions
(assert (or (<= 1 i@225@01) (not (<= 1 i@225@01))))
(push) ; 5
; [then-branch: 140 | 1 <= i@225@01 && i@225@01 < len@150@01 | live]
; [else-branch: 140 | !(1 <= i@225@01 && i@225@01 < len@150@01) | live]
(push) ; 6
; [then-branch: 140 | 1 <= i@225@01 && i@225@01 < len@150@01]
(assert (and (<= 1 i@225@01) (< i@225@01 len@150@01)))
; [eval] c[i].Ref__Integer_value == i + 2
; [eval] c[i]
(push) ; 7
(assert (not (>= i@225@01 0)))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(push) ; 7
(assert (not (< i@225@01 (Seq_length c@149@01))))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(assert (and
  (forall ((r $Ref)) (!
    (=>
      (and
        (img@210@01 r)
        (and (<= 0 (inv@209@01 r)) (< (inv@209@01 r) len@150@01)))
      (=
        ($FVF.lookup_Ref__Integer_value (as sm@222@01  $FVF<Ref__Integer_value>) r)
        ($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second $t@207@01))) r)))
    :pattern (($FVF.lookup_Ref__Integer_value (as sm@222@01  $FVF<Ref__Integer_value>) r))
    :pattern (($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second $t@207@01))) r))
    :qid |qp.fvfValDef23|))
  (forall ((r $Ref)) (!
    (=>
      (and
        (img@213@01 r)
        (and (<= 0 (inv@212@01 r)) (< (inv@212@01 r) len@150@01)))
      (=
        ($FVF.lookup_Ref__Integer_value (as sm@222@01  $FVF<Ref__Integer_value>) r)
        ($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@207@01))))) r)))
    :pattern (($FVF.lookup_Ref__Integer_value (as sm@222@01  $FVF<Ref__Integer_value>) r))
    :pattern (($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@207@01))))) r))
    :qid |qp.fvfValDef24|))
  (forall ((r $Ref)) (!
    (=>
      (and
        (img@216@01 r)
        (and (<= 0 (inv@215@01 r)) (< (inv@215@01 r) len@150@01)))
      (=
        ($FVF.lookup_Ref__Integer_value (as sm@222@01  $FVF<Ref__Integer_value>) r)
        ($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@207@01))))))) r)))
    :pattern (($FVF.lookup_Ref__Integer_value (as sm@222@01  $FVF<Ref__Integer_value>) r))
    :pattern (($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@207@01))))))) r))
    :qid |qp.fvfValDef25|))
  (forall ((r $Ref)) (!
    (=>
      (and
        (img@219@01 r)
        (and (<= 0 (inv@218@01 r)) (< (inv@218@01 r) (- len@150@01 1))))
      (=
        ($FVF.lookup_Ref__Integer_value (as sm@222@01  $FVF<Ref__Integer_value>) r)
        ($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@207@01)))))))) r)))
    :pattern (($FVF.lookup_Ref__Integer_value (as sm@222@01  $FVF<Ref__Integer_value>) r))
    :pattern (($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@207@01)))))))) r))
    :qid |qp.fvfValDef26|))
  (forall ((r $Ref)) (!
    (=>
      (= r (Seq_index a@147@01 (- (Seq_length a@147@01) 1)))
      (=
        ($FVF.lookup_Ref__Integer_value (as sm@222@01  $FVF<Ref__Integer_value>) r)
        ($FVF.lookup_Ref__Integer_value (as sm@220@01  $FVF<Ref__Integer_value>) r)))
    :pattern (($FVF.lookup_Ref__Integer_value (as sm@222@01  $FVF<Ref__Integer_value>) r))
    :pattern (($FVF.lookup_Ref__Integer_value (as sm@220@01  $FVF<Ref__Integer_value>) r))
    :qid |qp.fvfValDef27|))))
(push) ; 7
(assert (not (<
  $Perm.No
  (+
    (+
      (+
        (+
          (ite
            (and
              (img@210@01 (Seq_index c@149@01 i@225@01))
              (and
                (<= 0 (inv@209@01 (Seq_index c@149@01 i@225@01)))
                (< (inv@209@01 (Seq_index c@149@01 i@225@01)) len@150@01)))
            (/ (to_real 1) (to_real 2))
            $Perm.No)
          (ite
            (and
              (img@213@01 (Seq_index c@149@01 i@225@01))
              (and
                (<= 0 (inv@212@01 (Seq_index c@149@01 i@225@01)))
                (< (inv@212@01 (Seq_index c@149@01 i@225@01)) len@150@01)))
            (/ (to_real 1) (to_real 2))
            $Perm.No))
        (ite
          (and
            (img@216@01 (Seq_index c@149@01 i@225@01))
            (and
              (<= 0 (inv@215@01 (Seq_index c@149@01 i@225@01)))
              (< (inv@215@01 (Seq_index c@149@01 i@225@01)) len@150@01)))
          $Perm.Write
          $Perm.No))
      (ite
        (and
          (img@219@01 (Seq_index c@149@01 i@225@01))
          (and
            (<= 0 (inv@218@01 (Seq_index c@149@01 i@225@01)))
            (< (inv@218@01 (Seq_index c@149@01 i@225@01)) (- len@150@01 1))))
        (/ (to_real 1) (to_real 2))
        $Perm.No))
    (ite
      (=
        (Seq_index c@149@01 i@225@01)
        (Seq_index a@147@01 (- (Seq_length a@147@01) 1)))
      (/ (to_real 1) (to_real 2))
      $Perm.No)))))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
; [eval] i + 2
(pop) ; 6
(push) ; 6
; [else-branch: 140 | !(1 <= i@225@01 && i@225@01 < len@150@01)]
(assert (not (and (<= 1 i@225@01) (< i@225@01 len@150@01))))
(pop) ; 6
(pop) ; 5
; Joined path conditions
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@210@01 r)
      (and (<= 0 (inv@209@01 r)) (< (inv@209@01 r) len@150@01)))
    (=
      ($FVF.lookup_Ref__Integer_value (as sm@222@01  $FVF<Ref__Integer_value>) r)
      ($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second $t@207@01))) r)))
  :pattern (($FVF.lookup_Ref__Integer_value (as sm@222@01  $FVF<Ref__Integer_value>) r))
  :pattern (($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second $t@207@01))) r))
  :qid |qp.fvfValDef23|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@213@01 r)
      (and (<= 0 (inv@212@01 r)) (< (inv@212@01 r) len@150@01)))
    (=
      ($FVF.lookup_Ref__Integer_value (as sm@222@01  $FVF<Ref__Integer_value>) r)
      ($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@207@01))))) r)))
  :pattern (($FVF.lookup_Ref__Integer_value (as sm@222@01  $FVF<Ref__Integer_value>) r))
  :pattern (($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@207@01))))) r))
  :qid |qp.fvfValDef24|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@216@01 r)
      (and (<= 0 (inv@215@01 r)) (< (inv@215@01 r) len@150@01)))
    (=
      ($FVF.lookup_Ref__Integer_value (as sm@222@01  $FVF<Ref__Integer_value>) r)
      ($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@207@01))))))) r)))
  :pattern (($FVF.lookup_Ref__Integer_value (as sm@222@01  $FVF<Ref__Integer_value>) r))
  :pattern (($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@207@01))))))) r))
  :qid |qp.fvfValDef25|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@219@01 r)
      (and (<= 0 (inv@218@01 r)) (< (inv@218@01 r) (- len@150@01 1))))
    (=
      ($FVF.lookup_Ref__Integer_value (as sm@222@01  $FVF<Ref__Integer_value>) r)
      ($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@207@01)))))))) r)))
  :pattern (($FVF.lookup_Ref__Integer_value (as sm@222@01  $FVF<Ref__Integer_value>) r))
  :pattern (($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@207@01)))))))) r))
  :qid |qp.fvfValDef26|)))
(assert (forall ((r $Ref)) (!
  (=>
    (= r (Seq_index a@147@01 (- (Seq_length a@147@01) 1)))
    (=
      ($FVF.lookup_Ref__Integer_value (as sm@222@01  $FVF<Ref__Integer_value>) r)
      ($FVF.lookup_Ref__Integer_value (as sm@220@01  $FVF<Ref__Integer_value>) r)))
  :pattern (($FVF.lookup_Ref__Integer_value (as sm@222@01  $FVF<Ref__Integer_value>) r))
  :pattern (($FVF.lookup_Ref__Integer_value (as sm@220@01  $FVF<Ref__Integer_value>) r))
  :qid |qp.fvfValDef27|)))
; Joined path conditions
(assert (or
  (not (and (<= 1 i@225@01) (< i@225@01 len@150@01)))
  (and (<= 1 i@225@01) (< i@225@01 len@150@01))))
(pop) ; 4
; Nested auxiliary terms: globals (aux)
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@210@01 r)
      (and (<= 0 (inv@209@01 r)) (< (inv@209@01 r) len@150@01)))
    (=
      ($FVF.lookup_Ref__Integer_value (as sm@222@01  $FVF<Ref__Integer_value>) r)
      ($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second $t@207@01))) r)))
  :pattern (($FVF.lookup_Ref__Integer_value (as sm@222@01  $FVF<Ref__Integer_value>) r))
  :pattern (($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second $t@207@01))) r))
  :qid |qp.fvfValDef23|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@213@01 r)
      (and (<= 0 (inv@212@01 r)) (< (inv@212@01 r) len@150@01)))
    (=
      ($FVF.lookup_Ref__Integer_value (as sm@222@01  $FVF<Ref__Integer_value>) r)
      ($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@207@01))))) r)))
  :pattern (($FVF.lookup_Ref__Integer_value (as sm@222@01  $FVF<Ref__Integer_value>) r))
  :pattern (($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@207@01))))) r))
  :qid |qp.fvfValDef24|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@216@01 r)
      (and (<= 0 (inv@215@01 r)) (< (inv@215@01 r) len@150@01)))
    (=
      ($FVF.lookup_Ref__Integer_value (as sm@222@01  $FVF<Ref__Integer_value>) r)
      ($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@207@01))))))) r)))
  :pattern (($FVF.lookup_Ref__Integer_value (as sm@222@01  $FVF<Ref__Integer_value>) r))
  :pattern (($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@207@01))))))) r))
  :qid |qp.fvfValDef25|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@219@01 r)
      (and (<= 0 (inv@218@01 r)) (< (inv@218@01 r) (- len@150@01 1))))
    (=
      ($FVF.lookup_Ref__Integer_value (as sm@222@01  $FVF<Ref__Integer_value>) r)
      ($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@207@01)))))))) r)))
  :pattern (($FVF.lookup_Ref__Integer_value (as sm@222@01  $FVF<Ref__Integer_value>) r))
  :pattern (($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@207@01)))))))) r))
  :qid |qp.fvfValDef26|)))
(assert (forall ((r $Ref)) (!
  (=>
    (= r (Seq_index a@147@01 (- (Seq_length a@147@01) 1)))
    (=
      ($FVF.lookup_Ref__Integer_value (as sm@222@01  $FVF<Ref__Integer_value>) r)
      ($FVF.lookup_Ref__Integer_value (as sm@220@01  $FVF<Ref__Integer_value>) r)))
  :pattern (($FVF.lookup_Ref__Integer_value (as sm@222@01  $FVF<Ref__Integer_value>) r))
  :pattern (($FVF.lookup_Ref__Integer_value (as sm@220@01  $FVF<Ref__Integer_value>) r))
  :qid |qp.fvfValDef27|)))
; Nested auxiliary terms: non-globals (aux)
(assert (forall ((i@225@01 Int)) (!
  (and
    (or (<= 1 i@225@01) (not (<= 1 i@225@01)))
    (or
      (not (and (<= 1 i@225@01) (< i@225@01 len@150@01)))
      (and (<= 1 i@225@01) (< i@225@01 len@150@01))))
  :pattern ((Seq_index c@149@01 i@225@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/third_party/test_forward_dep_c.vpr@81@12@81@104-aux|)))
(assert (forall ((i@225@01 Int)) (!
  (=>
    (and (<= 1 i@225@01) (< i@225@01 len@150@01))
    (=
      ($FVF.lookup_Ref__Integer_value (as sm@222@01  $FVF<Ref__Integer_value>) (Seq_index
        c@149@01
        i@225@01))
      (+ i@225@01 2)))
  :pattern ((Seq_index c@149@01 i@225@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/third_party/test_forward_dep_c.vpr@81@12@81@104|)))
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
; [eval] |a| == len
; [eval] |a|
(declare-const i@226@01 Int)
(set-option :timeout 0)
(push) ; 4
; [eval] 0 <= i && i < len
; [eval] 0 <= i
(push) ; 5
; [then-branch: 141 | !(0 <= i@226@01) | live]
; [else-branch: 141 | 0 <= i@226@01 | live]
(push) ; 6
; [then-branch: 141 | !(0 <= i@226@01)]
(assert (not (<= 0 i@226@01)))
(pop) ; 6
(push) ; 6
; [else-branch: 141 | 0 <= i@226@01]
(assert (<= 0 i@226@01))
; [eval] i < len
(pop) ; 6
(pop) ; 5
; Joined path conditions
; Joined path conditions
(assert (or (<= 0 i@226@01) (not (<= 0 i@226@01))))
(assert (and (<= 0 i@226@01) (< i@226@01 len@150@01)))
; [eval] a[i]
(push) ; 5
(assert (not (>= i@226@01 0)))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(push) ; 5
(assert (not (< i@226@01 (Seq_length a@147@01))))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(pop) ; 4
(declare-fun inv@227@01 ($Ref) Int)
(declare-fun img@228@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
(assert (forall ((i@226@01 Int)) (!
  (=>
    (and (<= 0 i@226@01) (< i@226@01 len@150@01))
    (or (<= 0 i@226@01) (not (<= 0 i@226@01))))
  :pattern ((Seq_index a@147@01 i@226@01))
  :qid |Ref__Integer_value-aux|)))
; Check receiver injectivity
(push) ; 4
(assert (not (forall ((i1@226@01 Int) (i2@226@01 Int)) (!
  (=>
    (and
      (and (<= 0 i1@226@01) (< i1@226@01 len@150@01))
      (and (<= 0 i2@226@01) (< i2@226@01 len@150@01))
      (= (Seq_index a@147@01 i1@226@01) (Seq_index a@147@01 i2@226@01)))
    (= i1@226@01 i2@226@01))
  
  :qid |Ref__Integer_value-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((i@226@01 Int)) (!
  (=>
    (and (<= 0 i@226@01) (< i@226@01 len@150@01))
    (and
      (= (inv@227@01 (Seq_index a@147@01 i@226@01)) i@226@01)
      (img@228@01 (Seq_index a@147@01 i@226@01))))
  :pattern ((Seq_index a@147@01 i@226@01))
  :qid |Ref__Integer_value-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@228@01 r)
      (and (<= 0 (inv@227@01 r)) (< (inv@227@01 r) len@150@01)))
    (= (Seq_index a@147@01 (inv@227@01 r)) r))
  :pattern ((inv@227@01 r))
  :qid |Ref__Integer_value-fctOfInv|)))
(push) ; 4
(set-option :timeout 10)
(assert (not (forall ((i@226@01 Int)) (!
  (= (Seq_index a@147@01 i@226@01) (Seq_index b@148@01 i@226@01))
  
  :qid |quant-u-8758|))))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not (forall ((i@226@01 Int)) (!
  (= (Seq_index a@147@01 i@226@01) (Seq_index c@149@01 i@226@01))
  
  :qid |quant-u-8759|))))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; Precomputing data for removing quantified permissions
(define-fun pTaken@229@01 ((r $Ref)) $Perm
  (ite
    (and
      (and (<= 0 (inv@227@01 r)) (< (inv@227@01 r) len@150@01))
      (img@228@01 r)
      (= r (Seq_index a@147@01 (inv@227@01 r))))
    ($Perm.min
      (ite
        (and
          (img@210@01 r)
          (and (<= 0 (inv@209@01 r)) (< (inv@209@01 r) len@150@01)))
        (/ (to_real 1) (to_real 2))
        $Perm.No)
      $Perm.Write)
    $Perm.No))
(define-fun pTaken@230@01 ((r $Ref)) $Perm
  (ite
    (and
      (and (<= 0 (inv@227@01 r)) (< (inv@227@01 r) len@150@01))
      (img@228@01 r)
      (= r (Seq_index a@147@01 (inv@227@01 r))))
    ($Perm.min
      (ite
        (and
          (img@219@01 r)
          (and (<= 0 (inv@218@01 r)) (< (inv@218@01 r) (- len@150@01 1))))
        (/ (to_real 1) (to_real 2))
        $Perm.No)
      (- $Perm.Write (pTaken@229@01 r)))
    $Perm.No))
(define-fun pTaken@231@01 ((r $Ref)) $Perm
  (ite
    (and
      (and (<= 0 (inv@227@01 r)) (< (inv@227@01 r) len@150@01))
      (img@228@01 r)
      (= r (Seq_index a@147@01 (inv@227@01 r))))
    ($Perm.min
      (ite
        (= r (Seq_index a@147@01 (- (Seq_length a@147@01) 1)))
        (/ (to_real 1) (to_real 2))
        $Perm.No)
      (- (- $Perm.Write (pTaken@229@01 r)) (pTaken@230@01 r)))
    $Perm.No))
(define-fun pTaken@232@01 ((r $Ref)) $Perm
  (ite
    (and
      (and (<= 0 (inv@227@01 r)) (< (inv@227@01 r) len@150@01))
      (img@228@01 r)
      (= r (Seq_index a@147@01 (inv@227@01 r))))
    ($Perm.min
      (ite
        (and
          (img@213@01 r)
          (and (<= 0 (inv@212@01 r)) (< (inv@212@01 r) len@150@01)))
        (/ (to_real 1) (to_real 2))
        $Perm.No)
      (-
        (- (- $Perm.Write (pTaken@229@01 r)) (pTaken@230@01 r))
        (pTaken@231@01 r)))
    $Perm.No))
(define-fun pTaken@233@01 ((r $Ref)) $Perm
  (ite
    (and
      (and (<= 0 (inv@227@01 r)) (< (inv@227@01 r) len@150@01))
      (img@228@01 r)
      (= r (Seq_index a@147@01 (inv@227@01 r))))
    ($Perm.min
      (ite
        (and
          (img@216@01 r)
          (and (<= 0 (inv@215@01 r)) (< (inv@215@01 r) len@150@01)))
        $Perm.Write
        $Perm.No)
      (-
        (-
          (- (- $Perm.Write (pTaken@229@01 r)) (pTaken@230@01 r))
          (pTaken@231@01 r))
        (pTaken@232@01 r)))
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
          (img@210@01 r)
          (and (<= 0 (inv@209@01 r)) (< (inv@209@01 r) len@150@01)))
        (/ (to_real 1) (to_real 2))
        $Perm.No)
      (pTaken@229@01 r))
    $Perm.No)
  
  :qid |quant-u-8761|))))
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
      (and (<= 0 (inv@227@01 r)) (< (inv@227@01 r) len@150@01))
      (img@228@01 r)
      (= r (Seq_index a@147@01 (inv@227@01 r))))
    (= (- $Perm.Write (pTaken@229@01 r)) $Perm.No))
  
  :qid |quant-u-8762|))))
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
        (and
          (img@219@01 r)
          (and (<= 0 (inv@218@01 r)) (< (inv@218@01 r) (- len@150@01 1))))
        (/ (to_real 1) (to_real 2))
        $Perm.No)
      (pTaken@230@01 r))
    $Perm.No)
  
  :qid |quant-u-8763|))))
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
      (and (<= 0 (inv@227@01 r)) (< (inv@227@01 r) len@150@01))
      (img@228@01 r)
      (= r (Seq_index a@147@01 (inv@227@01 r))))
    (= (- (- $Perm.Write (pTaken@229@01 r)) (pTaken@230@01 r)) $Perm.No))
  
  :qid |quant-u-8764|))))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; Chunk depleted?
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 500)
(assert (not (=
  (-
    (ite
      (=
        (Seq_index a@147@01 (- (Seq_length a@147@01) 1))
        (Seq_index a@147@01 (- (Seq_length a@147@01) 1)))
      (/ (to_real 1) (to_real 2))
      $Perm.No)
    (pTaken@231@01 (Seq_index a@147@01 (- (Seq_length a@147@01) 1))))
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
    (and
      (and (<= 0 (inv@227@01 r)) (< (inv@227@01 r) len@150@01))
      (img@228@01 r)
      (= r (Seq_index a@147@01 (inv@227@01 r))))
    (=
      (-
        (- (- $Perm.Write (pTaken@229@01 r)) (pTaken@230@01 r))
        (pTaken@231@01 r))
      $Perm.No))
  
  :qid |quant-u-8766|))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; Final check if taken enough permissions
; Done removing quantified permissions
; [eval] |b| == len
; [eval] |b|
(declare-const i@234@01 Int)
(set-option :timeout 0)
(push) ; 4
; [eval] 0 <= i && i < len
; [eval] 0 <= i
(push) ; 5
; [then-branch: 142 | !(0 <= i@234@01) | live]
; [else-branch: 142 | 0 <= i@234@01 | live]
(push) ; 6
; [then-branch: 142 | !(0 <= i@234@01)]
(assert (not (<= 0 i@234@01)))
(pop) ; 6
(push) ; 6
; [else-branch: 142 | 0 <= i@234@01]
(assert (<= 0 i@234@01))
; [eval] i < len
(pop) ; 6
(pop) ; 5
; Joined path conditions
; Joined path conditions
(assert (or (<= 0 i@234@01) (not (<= 0 i@234@01))))
(assert (and (<= 0 i@234@01) (< i@234@01 len@150@01)))
; [eval] b[i]
(push) ; 5
(assert (not (>= i@234@01 0)))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(push) ; 5
(assert (not (< i@234@01 (Seq_length b@148@01))))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(pop) ; 4
(declare-fun inv@235@01 ($Ref) Int)
(declare-fun img@236@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
(assert (forall ((i@234@01 Int)) (!
  (=>
    (and (<= 0 i@234@01) (< i@234@01 len@150@01))
    (or (<= 0 i@234@01) (not (<= 0 i@234@01))))
  :pattern ((Seq_index b@148@01 i@234@01))
  :qid |Ref__Integer_value-aux|)))
; Check receiver injectivity
(push) ; 4
(assert (not (forall ((i1@234@01 Int) (i2@234@01 Int)) (!
  (=>
    (and
      (and (<= 0 i1@234@01) (< i1@234@01 len@150@01))
      (and (<= 0 i2@234@01) (< i2@234@01 len@150@01))
      (= (Seq_index b@148@01 i1@234@01) (Seq_index b@148@01 i2@234@01)))
    (= i1@234@01 i2@234@01))
  
  :qid |Ref__Integer_value-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((i@234@01 Int)) (!
  (=>
    (and (<= 0 i@234@01) (< i@234@01 len@150@01))
    (and
      (= (inv@235@01 (Seq_index b@148@01 i@234@01)) i@234@01)
      (img@236@01 (Seq_index b@148@01 i@234@01))))
  :pattern ((Seq_index b@148@01 i@234@01))
  :qid |Ref__Integer_value-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@236@01 r)
      (and (<= 0 (inv@235@01 r)) (< (inv@235@01 r) len@150@01)))
    (= (Seq_index b@148@01 (inv@235@01 r)) r))
  :pattern ((inv@235@01 r))
  :qid |Ref__Integer_value-fctOfInv|)))
(push) ; 4
(set-option :timeout 10)
(assert (not (forall ((i@234@01 Int)) (!
  (= (Seq_index b@148@01 i@234@01) (Seq_index c@149@01 i@234@01))
  
  :qid |quant-u-8768|))))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; Precomputing data for removing quantified permissions
(define-fun pTaken@237@01 ((r $Ref)) $Perm
  (ite
    (and
      (and (<= 0 (inv@235@01 r)) (< (inv@235@01 r) len@150@01))
      (img@236@01 r)
      (= r (Seq_index b@148@01 (inv@235@01 r))))
    ($Perm.min
      (ite
        (and
          (img@213@01 r)
          (and (<= 0 (inv@212@01 r)) (< (inv@212@01 r) len@150@01)))
        (/ (to_real 1) (to_real 2))
        $Perm.No)
      (/ (to_real 1) (to_real 2)))
    $Perm.No))
(define-fun pTaken@238@01 ((r $Ref)) $Perm
  (ite
    (and
      (and (<= 0 (inv@235@01 r)) (< (inv@235@01 r) len@150@01))
      (img@236@01 r)
      (= r (Seq_index b@148@01 (inv@235@01 r))))
    ($Perm.min
      (ite
        (and
          (img@216@01 r)
          (and (<= 0 (inv@215@01 r)) (< (inv@215@01 r) len@150@01)))
        $Perm.Write
        $Perm.No)
      (- (/ (to_real 1) (to_real 2)) (pTaken@237@01 r)))
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
          (img@213@01 r)
          (and (<= 0 (inv@212@01 r)) (< (inv@212@01 r) len@150@01)))
        (/ (to_real 1) (to_real 2))
        $Perm.No)
      (pTaken@237@01 r))
    $Perm.No)
  
  :qid |quant-u-8770|))))
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
      (and (<= 0 (inv@235@01 r)) (< (inv@235@01 r) len@150@01))
      (img@236@01 r)
      (= r (Seq_index b@148@01 (inv@235@01 r))))
    (= (- (/ (to_real 1) (to_real 2)) (pTaken@237@01 r)) $Perm.No))
  
  :qid |quant-u-8771|))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; Final check if taken enough permissions
; Done removing quantified permissions
; [eval] |c| == len
; [eval] |c|
(declare-const i@239@01 Int)
(set-option :timeout 0)
(push) ; 4
; [eval] 0 <= i && i < len
; [eval] 0 <= i
(push) ; 5
; [then-branch: 143 | !(0 <= i@239@01) | live]
; [else-branch: 143 | 0 <= i@239@01 | live]
(push) ; 6
; [then-branch: 143 | !(0 <= i@239@01)]
(assert (not (<= 0 i@239@01)))
(pop) ; 6
(push) ; 6
; [else-branch: 143 | 0 <= i@239@01]
(assert (<= 0 i@239@01))
; [eval] i < len
(pop) ; 6
(pop) ; 5
; Joined path conditions
; Joined path conditions
(assert (or (<= 0 i@239@01) (not (<= 0 i@239@01))))
(assert (and (<= 0 i@239@01) (< i@239@01 len@150@01)))
; [eval] c[i]
(push) ; 5
(assert (not (>= i@239@01 0)))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(push) ; 5
(assert (not (< i@239@01 (Seq_length c@149@01))))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(pop) ; 4
(declare-fun inv@240@01 ($Ref) Int)
(declare-fun img@241@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
(assert (forall ((i@239@01 Int)) (!
  (=>
    (and (<= 0 i@239@01) (< i@239@01 len@150@01))
    (or (<= 0 i@239@01) (not (<= 0 i@239@01))))
  :pattern ((Seq_index c@149@01 i@239@01))
  :qid |Ref__Integer_value-aux|)))
; Check receiver injectivity
(push) ; 4
(assert (not (forall ((i1@239@01 Int) (i2@239@01 Int)) (!
  (=>
    (and
      (and (<= 0 i1@239@01) (< i1@239@01 len@150@01))
      (and (<= 0 i2@239@01) (< i2@239@01 len@150@01))
      (= (Seq_index c@149@01 i1@239@01) (Seq_index c@149@01 i2@239@01)))
    (= i1@239@01 i2@239@01))
  
  :qid |Ref__Integer_value-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((i@239@01 Int)) (!
  (=>
    (and (<= 0 i@239@01) (< i@239@01 len@150@01))
    (and
      (= (inv@240@01 (Seq_index c@149@01 i@239@01)) i@239@01)
      (img@241@01 (Seq_index c@149@01 i@239@01))))
  :pattern ((Seq_index c@149@01 i@239@01))
  :qid |Ref__Integer_value-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@241@01 r)
      (and (<= 0 (inv@240@01 r)) (< (inv@240@01 r) len@150@01)))
    (= (Seq_index c@149@01 (inv@240@01 r)) r))
  :pattern ((inv@240@01 r))
  :qid |Ref__Integer_value-fctOfInv|)))
; Precomputing data for removing quantified permissions
(define-fun pTaken@242@01 ((r $Ref)) $Perm
  (ite
    (and
      (and (<= 0 (inv@240@01 r)) (< (inv@240@01 r) len@150@01))
      (img@241@01 r)
      (= r (Seq_index c@149@01 (inv@240@01 r))))
    ($Perm.min
      (ite
        (and
          (img@216@01 r)
          (and (<= 0 (inv@215@01 r)) (< (inv@215@01 r) len@150@01)))
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
          (img@216@01 r)
          (and (<= 0 (inv@215@01 r)) (< (inv@215@01 r) len@150@01)))
        $Perm.Write
        $Perm.No)
      (pTaken@242@01 r))
    $Perm.No)
  
  :qid |quant-u-8774|))))
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
      (and (<= 0 (inv@240@01 r)) (< (inv@240@01 r) len@150@01))
      (img@241@01 r)
      (= r (Seq_index c@149@01 (inv@240@01 r))))
    (= (- $Perm.Write (pTaken@242@01 r)) $Perm.No))
  
  :qid |quant-u-8775|))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; Final check if taken enough permissions
; Done removing quantified permissions
; [eval] (forall i: Int :: { a[i] } 0 <= i && i < len ==> a[i].Ref__Integer_value == i + 1)
(declare-const i@243@01 Int)
(set-option :timeout 0)
(push) ; 4
; [eval] 0 <= i && i < len ==> a[i].Ref__Integer_value == i + 1
; [eval] 0 <= i && i < len
; [eval] 0 <= i
(push) ; 5
; [then-branch: 144 | !(0 <= i@243@01) | live]
; [else-branch: 144 | 0 <= i@243@01 | live]
(push) ; 6
; [then-branch: 144 | !(0 <= i@243@01)]
(assert (not (<= 0 i@243@01)))
(pop) ; 6
(push) ; 6
; [else-branch: 144 | 0 <= i@243@01]
(assert (<= 0 i@243@01))
; [eval] i < len
(pop) ; 6
(pop) ; 5
; Joined path conditions
; Joined path conditions
(assert (or (<= 0 i@243@01) (not (<= 0 i@243@01))))
(push) ; 5
; [then-branch: 145 | 0 <= i@243@01 && i@243@01 < len@150@01 | live]
; [else-branch: 145 | !(0 <= i@243@01 && i@243@01 < len@150@01) | live]
(push) ; 6
; [then-branch: 145 | 0 <= i@243@01 && i@243@01 < len@150@01]
(assert (and (<= 0 i@243@01) (< i@243@01 len@150@01)))
; [eval] a[i].Ref__Integer_value == i + 1
; [eval] a[i]
(push) ; 7
(assert (not (>= i@243@01 0)))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(push) ; 7
(assert (not (< i@243@01 (Seq_length a@147@01))))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(assert (and
  (forall ((r $Ref)) (!
    (=>
      (and
        (img@210@01 r)
        (and (<= 0 (inv@209@01 r)) (< (inv@209@01 r) len@150@01)))
      (=
        ($FVF.lookup_Ref__Integer_value (as sm@222@01  $FVF<Ref__Integer_value>) r)
        ($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second $t@207@01))) r)))
    :pattern (($FVF.lookup_Ref__Integer_value (as sm@222@01  $FVF<Ref__Integer_value>) r))
    :pattern (($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second $t@207@01))) r))
    :qid |qp.fvfValDef23|))
  (forall ((r $Ref)) (!
    (=>
      (and
        (img@213@01 r)
        (and (<= 0 (inv@212@01 r)) (< (inv@212@01 r) len@150@01)))
      (=
        ($FVF.lookup_Ref__Integer_value (as sm@222@01  $FVF<Ref__Integer_value>) r)
        ($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@207@01))))) r)))
    :pattern (($FVF.lookup_Ref__Integer_value (as sm@222@01  $FVF<Ref__Integer_value>) r))
    :pattern (($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@207@01))))) r))
    :qid |qp.fvfValDef24|))
  (forall ((r $Ref)) (!
    (=>
      (and
        (img@216@01 r)
        (and (<= 0 (inv@215@01 r)) (< (inv@215@01 r) len@150@01)))
      (=
        ($FVF.lookup_Ref__Integer_value (as sm@222@01  $FVF<Ref__Integer_value>) r)
        ($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@207@01))))))) r)))
    :pattern (($FVF.lookup_Ref__Integer_value (as sm@222@01  $FVF<Ref__Integer_value>) r))
    :pattern (($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@207@01))))))) r))
    :qid |qp.fvfValDef25|))
  (forall ((r $Ref)) (!
    (=>
      (and
        (img@219@01 r)
        (and (<= 0 (inv@218@01 r)) (< (inv@218@01 r) (- len@150@01 1))))
      (=
        ($FVF.lookup_Ref__Integer_value (as sm@222@01  $FVF<Ref__Integer_value>) r)
        ($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@207@01)))))))) r)))
    :pattern (($FVF.lookup_Ref__Integer_value (as sm@222@01  $FVF<Ref__Integer_value>) r))
    :pattern (($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@207@01)))))))) r))
    :qid |qp.fvfValDef26|))
  (forall ((r $Ref)) (!
    (=>
      (= r (Seq_index a@147@01 (- (Seq_length a@147@01) 1)))
      (=
        ($FVF.lookup_Ref__Integer_value (as sm@222@01  $FVF<Ref__Integer_value>) r)
        ($FVF.lookup_Ref__Integer_value (as sm@220@01  $FVF<Ref__Integer_value>) r)))
    :pattern (($FVF.lookup_Ref__Integer_value (as sm@222@01  $FVF<Ref__Integer_value>) r))
    :pattern (($FVF.lookup_Ref__Integer_value (as sm@220@01  $FVF<Ref__Integer_value>) r))
    :qid |qp.fvfValDef27|))))
(push) ; 7
(assert (not (<
  $Perm.No
  (+
    (+
      (+
        (+
          (ite
            (and
              (img@210@01 (Seq_index a@147@01 i@243@01))
              (and
                (<= 0 (inv@209@01 (Seq_index a@147@01 i@243@01)))
                (< (inv@209@01 (Seq_index a@147@01 i@243@01)) len@150@01)))
            (/ (to_real 1) (to_real 2))
            $Perm.No)
          (ite
            (and
              (img@213@01 (Seq_index a@147@01 i@243@01))
              (and
                (<= 0 (inv@212@01 (Seq_index a@147@01 i@243@01)))
                (< (inv@212@01 (Seq_index a@147@01 i@243@01)) len@150@01)))
            (/ (to_real 1) (to_real 2))
            $Perm.No))
        (ite
          (and
            (img@216@01 (Seq_index a@147@01 i@243@01))
            (and
              (<= 0 (inv@215@01 (Seq_index a@147@01 i@243@01)))
              (< (inv@215@01 (Seq_index a@147@01 i@243@01)) len@150@01)))
          $Perm.Write
          $Perm.No))
      (ite
        (and
          (img@219@01 (Seq_index a@147@01 i@243@01))
          (and
            (<= 0 (inv@218@01 (Seq_index a@147@01 i@243@01)))
            (< (inv@218@01 (Seq_index a@147@01 i@243@01)) (- len@150@01 1))))
        (/ (to_real 1) (to_real 2))
        $Perm.No))
    (ite
      (=
        (Seq_index a@147@01 i@243@01)
        (Seq_index a@147@01 (- (Seq_length a@147@01) 1)))
      (/ (to_real 1) (to_real 2))
      $Perm.No)))))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
; [eval] i + 1
(pop) ; 6
(push) ; 6
; [else-branch: 145 | !(0 <= i@243@01 && i@243@01 < len@150@01)]
(assert (not (and (<= 0 i@243@01) (< i@243@01 len@150@01))))
(pop) ; 6
(pop) ; 5
; Joined path conditions
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@210@01 r)
      (and (<= 0 (inv@209@01 r)) (< (inv@209@01 r) len@150@01)))
    (=
      ($FVF.lookup_Ref__Integer_value (as sm@222@01  $FVF<Ref__Integer_value>) r)
      ($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second $t@207@01))) r)))
  :pattern (($FVF.lookup_Ref__Integer_value (as sm@222@01  $FVF<Ref__Integer_value>) r))
  :pattern (($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second $t@207@01))) r))
  :qid |qp.fvfValDef23|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@213@01 r)
      (and (<= 0 (inv@212@01 r)) (< (inv@212@01 r) len@150@01)))
    (=
      ($FVF.lookup_Ref__Integer_value (as sm@222@01  $FVF<Ref__Integer_value>) r)
      ($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@207@01))))) r)))
  :pattern (($FVF.lookup_Ref__Integer_value (as sm@222@01  $FVF<Ref__Integer_value>) r))
  :pattern (($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@207@01))))) r))
  :qid |qp.fvfValDef24|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@216@01 r)
      (and (<= 0 (inv@215@01 r)) (< (inv@215@01 r) len@150@01)))
    (=
      ($FVF.lookup_Ref__Integer_value (as sm@222@01  $FVF<Ref__Integer_value>) r)
      ($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@207@01))))))) r)))
  :pattern (($FVF.lookup_Ref__Integer_value (as sm@222@01  $FVF<Ref__Integer_value>) r))
  :pattern (($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@207@01))))))) r))
  :qid |qp.fvfValDef25|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@219@01 r)
      (and (<= 0 (inv@218@01 r)) (< (inv@218@01 r) (- len@150@01 1))))
    (=
      ($FVF.lookup_Ref__Integer_value (as sm@222@01  $FVF<Ref__Integer_value>) r)
      ($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@207@01)))))))) r)))
  :pattern (($FVF.lookup_Ref__Integer_value (as sm@222@01  $FVF<Ref__Integer_value>) r))
  :pattern (($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@207@01)))))))) r))
  :qid |qp.fvfValDef26|)))
(assert (forall ((r $Ref)) (!
  (=>
    (= r (Seq_index a@147@01 (- (Seq_length a@147@01) 1)))
    (=
      ($FVF.lookup_Ref__Integer_value (as sm@222@01  $FVF<Ref__Integer_value>) r)
      ($FVF.lookup_Ref__Integer_value (as sm@220@01  $FVF<Ref__Integer_value>) r)))
  :pattern (($FVF.lookup_Ref__Integer_value (as sm@222@01  $FVF<Ref__Integer_value>) r))
  :pattern (($FVF.lookup_Ref__Integer_value (as sm@220@01  $FVF<Ref__Integer_value>) r))
  :qid |qp.fvfValDef27|)))
; Joined path conditions
(assert (or
  (not (and (<= 0 i@243@01) (< i@243@01 len@150@01)))
  (and (<= 0 i@243@01) (< i@243@01 len@150@01))))
(pop) ; 4
; Nested auxiliary terms: globals (aux)
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@210@01 r)
      (and (<= 0 (inv@209@01 r)) (< (inv@209@01 r) len@150@01)))
    (=
      ($FVF.lookup_Ref__Integer_value (as sm@222@01  $FVF<Ref__Integer_value>) r)
      ($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second $t@207@01))) r)))
  :pattern (($FVF.lookup_Ref__Integer_value (as sm@222@01  $FVF<Ref__Integer_value>) r))
  :pattern (($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second $t@207@01))) r))
  :qid |qp.fvfValDef23|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@213@01 r)
      (and (<= 0 (inv@212@01 r)) (< (inv@212@01 r) len@150@01)))
    (=
      ($FVF.lookup_Ref__Integer_value (as sm@222@01  $FVF<Ref__Integer_value>) r)
      ($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@207@01))))) r)))
  :pattern (($FVF.lookup_Ref__Integer_value (as sm@222@01  $FVF<Ref__Integer_value>) r))
  :pattern (($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@207@01))))) r))
  :qid |qp.fvfValDef24|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@216@01 r)
      (and (<= 0 (inv@215@01 r)) (< (inv@215@01 r) len@150@01)))
    (=
      ($FVF.lookup_Ref__Integer_value (as sm@222@01  $FVF<Ref__Integer_value>) r)
      ($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@207@01))))))) r)))
  :pattern (($FVF.lookup_Ref__Integer_value (as sm@222@01  $FVF<Ref__Integer_value>) r))
  :pattern (($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@207@01))))))) r))
  :qid |qp.fvfValDef25|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@219@01 r)
      (and (<= 0 (inv@218@01 r)) (< (inv@218@01 r) (- len@150@01 1))))
    (=
      ($FVF.lookup_Ref__Integer_value (as sm@222@01  $FVF<Ref__Integer_value>) r)
      ($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@207@01)))))))) r)))
  :pattern (($FVF.lookup_Ref__Integer_value (as sm@222@01  $FVF<Ref__Integer_value>) r))
  :pattern (($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@207@01)))))))) r))
  :qid |qp.fvfValDef26|)))
(assert (forall ((r $Ref)) (!
  (=>
    (= r (Seq_index a@147@01 (- (Seq_length a@147@01) 1)))
    (=
      ($FVF.lookup_Ref__Integer_value (as sm@222@01  $FVF<Ref__Integer_value>) r)
      ($FVF.lookup_Ref__Integer_value (as sm@220@01  $FVF<Ref__Integer_value>) r)))
  :pattern (($FVF.lookup_Ref__Integer_value (as sm@222@01  $FVF<Ref__Integer_value>) r))
  :pattern (($FVF.lookup_Ref__Integer_value (as sm@220@01  $FVF<Ref__Integer_value>) r))
  :qid |qp.fvfValDef27|)))
; Nested auxiliary terms: non-globals (aux)
(assert (forall ((i@243@01 Int)) (!
  (and
    (or (<= 0 i@243@01) (not (<= 0 i@243@01)))
    (or
      (not (and (<= 0 i@243@01) (< i@243@01 len@150@01)))
      (and (<= 0 i@243@01) (< i@243@01 len@150@01))))
  :pattern ((Seq_index a@147@01 i@243@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/third_party/test_forward_dep_c.vpr@196@12@196@89-aux|)))
(push) ; 4
(assert (not (forall ((i@243@01 Int)) (!
  (=>
    (and (<= 0 i@243@01) (< i@243@01 len@150@01))
    (=
      ($FVF.lookup_Ref__Integer_value (as sm@222@01  $FVF<Ref__Integer_value>) (Seq_index
        a@147@01
        i@243@01))
      (+ i@243@01 1)))
  :pattern ((Seq_index a@147@01 i@243@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/third_party/test_forward_dep_c.vpr@196@12@196@89|))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(assert (forall ((i@243@01 Int)) (!
  (=>
    (and (<= 0 i@243@01) (< i@243@01 len@150@01))
    (=
      ($FVF.lookup_Ref__Integer_value (as sm@222@01  $FVF<Ref__Integer_value>) (Seq_index
        a@147@01
        i@243@01))
      (+ i@243@01 1)))
  :pattern ((Seq_index a@147@01 i@243@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/third_party/test_forward_dep_c.vpr@196@12@196@89|)))
; [eval] (forall i: Int :: { b[i] } 0 <= i && i < len ==> b[i].Ref__Integer_value == i)
(declare-const i@244@01 Int)
(push) ; 4
; [eval] 0 <= i && i < len ==> b[i].Ref__Integer_value == i
; [eval] 0 <= i && i < len
; [eval] 0 <= i
(push) ; 5
; [then-branch: 146 | !(0 <= i@244@01) | live]
; [else-branch: 146 | 0 <= i@244@01 | live]
(push) ; 6
; [then-branch: 146 | !(0 <= i@244@01)]
(assert (not (<= 0 i@244@01)))
(pop) ; 6
(push) ; 6
; [else-branch: 146 | 0 <= i@244@01]
(assert (<= 0 i@244@01))
; [eval] i < len
(pop) ; 6
(pop) ; 5
; Joined path conditions
; Joined path conditions
(assert (or (<= 0 i@244@01) (not (<= 0 i@244@01))))
(push) ; 5
; [then-branch: 147 | 0 <= i@244@01 && i@244@01 < len@150@01 | live]
; [else-branch: 147 | !(0 <= i@244@01 && i@244@01 < len@150@01) | live]
(push) ; 6
; [then-branch: 147 | 0 <= i@244@01 && i@244@01 < len@150@01]
(assert (and (<= 0 i@244@01) (< i@244@01 len@150@01)))
; [eval] b[i].Ref__Integer_value == i
; [eval] b[i]
(push) ; 7
(assert (not (>= i@244@01 0)))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(push) ; 7
(assert (not (< i@244@01 (Seq_length b@148@01))))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(assert (and
  (forall ((r $Ref)) (!
    (=>
      (and
        (img@210@01 r)
        (and (<= 0 (inv@209@01 r)) (< (inv@209@01 r) len@150@01)))
      (=
        ($FVF.lookup_Ref__Integer_value (as sm@222@01  $FVF<Ref__Integer_value>) r)
        ($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second $t@207@01))) r)))
    :pattern (($FVF.lookup_Ref__Integer_value (as sm@222@01  $FVF<Ref__Integer_value>) r))
    :pattern (($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second $t@207@01))) r))
    :qid |qp.fvfValDef23|))
  (forall ((r $Ref)) (!
    (=>
      (and
        (img@213@01 r)
        (and (<= 0 (inv@212@01 r)) (< (inv@212@01 r) len@150@01)))
      (=
        ($FVF.lookup_Ref__Integer_value (as sm@222@01  $FVF<Ref__Integer_value>) r)
        ($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@207@01))))) r)))
    :pattern (($FVF.lookup_Ref__Integer_value (as sm@222@01  $FVF<Ref__Integer_value>) r))
    :pattern (($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@207@01))))) r))
    :qid |qp.fvfValDef24|))
  (forall ((r $Ref)) (!
    (=>
      (and
        (img@216@01 r)
        (and (<= 0 (inv@215@01 r)) (< (inv@215@01 r) len@150@01)))
      (=
        ($FVF.lookup_Ref__Integer_value (as sm@222@01  $FVF<Ref__Integer_value>) r)
        ($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@207@01))))))) r)))
    :pattern (($FVF.lookup_Ref__Integer_value (as sm@222@01  $FVF<Ref__Integer_value>) r))
    :pattern (($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@207@01))))))) r))
    :qid |qp.fvfValDef25|))
  (forall ((r $Ref)) (!
    (=>
      (and
        (img@219@01 r)
        (and (<= 0 (inv@218@01 r)) (< (inv@218@01 r) (- len@150@01 1))))
      (=
        ($FVF.lookup_Ref__Integer_value (as sm@222@01  $FVF<Ref__Integer_value>) r)
        ($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@207@01)))))))) r)))
    :pattern (($FVF.lookup_Ref__Integer_value (as sm@222@01  $FVF<Ref__Integer_value>) r))
    :pattern (($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@207@01)))))))) r))
    :qid |qp.fvfValDef26|))
  (forall ((r $Ref)) (!
    (=>
      (= r (Seq_index a@147@01 (- (Seq_length a@147@01) 1)))
      (=
        ($FVF.lookup_Ref__Integer_value (as sm@222@01  $FVF<Ref__Integer_value>) r)
        ($FVF.lookup_Ref__Integer_value (as sm@220@01  $FVF<Ref__Integer_value>) r)))
    :pattern (($FVF.lookup_Ref__Integer_value (as sm@222@01  $FVF<Ref__Integer_value>) r))
    :pattern (($FVF.lookup_Ref__Integer_value (as sm@220@01  $FVF<Ref__Integer_value>) r))
    :qid |qp.fvfValDef27|))))
(push) ; 7
(assert (not (<
  $Perm.No
  (+
    (+
      (+
        (+
          (ite
            (and
              (img@210@01 (Seq_index b@148@01 i@244@01))
              (and
                (<= 0 (inv@209@01 (Seq_index b@148@01 i@244@01)))
                (< (inv@209@01 (Seq_index b@148@01 i@244@01)) len@150@01)))
            (/ (to_real 1) (to_real 2))
            $Perm.No)
          (ite
            (and
              (img@213@01 (Seq_index b@148@01 i@244@01))
              (and
                (<= 0 (inv@212@01 (Seq_index b@148@01 i@244@01)))
                (< (inv@212@01 (Seq_index b@148@01 i@244@01)) len@150@01)))
            (/ (to_real 1) (to_real 2))
            $Perm.No))
        (ite
          (and
            (img@216@01 (Seq_index b@148@01 i@244@01))
            (and
              (<= 0 (inv@215@01 (Seq_index b@148@01 i@244@01)))
              (< (inv@215@01 (Seq_index b@148@01 i@244@01)) len@150@01)))
          $Perm.Write
          $Perm.No))
      (ite
        (and
          (img@219@01 (Seq_index b@148@01 i@244@01))
          (and
            (<= 0 (inv@218@01 (Seq_index b@148@01 i@244@01)))
            (< (inv@218@01 (Seq_index b@148@01 i@244@01)) (- len@150@01 1))))
        (/ (to_real 1) (to_real 2))
        $Perm.No))
    (ite
      (=
        (Seq_index b@148@01 i@244@01)
        (Seq_index a@147@01 (- (Seq_length a@147@01) 1)))
      (/ (to_real 1) (to_real 2))
      $Perm.No)))))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(pop) ; 6
(push) ; 6
; [else-branch: 147 | !(0 <= i@244@01 && i@244@01 < len@150@01)]
(assert (not (and (<= 0 i@244@01) (< i@244@01 len@150@01))))
(pop) ; 6
(pop) ; 5
; Joined path conditions
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@210@01 r)
      (and (<= 0 (inv@209@01 r)) (< (inv@209@01 r) len@150@01)))
    (=
      ($FVF.lookup_Ref__Integer_value (as sm@222@01  $FVF<Ref__Integer_value>) r)
      ($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second $t@207@01))) r)))
  :pattern (($FVF.lookup_Ref__Integer_value (as sm@222@01  $FVF<Ref__Integer_value>) r))
  :pattern (($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second $t@207@01))) r))
  :qid |qp.fvfValDef23|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@213@01 r)
      (and (<= 0 (inv@212@01 r)) (< (inv@212@01 r) len@150@01)))
    (=
      ($FVF.lookup_Ref__Integer_value (as sm@222@01  $FVF<Ref__Integer_value>) r)
      ($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@207@01))))) r)))
  :pattern (($FVF.lookup_Ref__Integer_value (as sm@222@01  $FVF<Ref__Integer_value>) r))
  :pattern (($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@207@01))))) r))
  :qid |qp.fvfValDef24|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@216@01 r)
      (and (<= 0 (inv@215@01 r)) (< (inv@215@01 r) len@150@01)))
    (=
      ($FVF.lookup_Ref__Integer_value (as sm@222@01  $FVF<Ref__Integer_value>) r)
      ($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@207@01))))))) r)))
  :pattern (($FVF.lookup_Ref__Integer_value (as sm@222@01  $FVF<Ref__Integer_value>) r))
  :pattern (($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@207@01))))))) r))
  :qid |qp.fvfValDef25|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@219@01 r)
      (and (<= 0 (inv@218@01 r)) (< (inv@218@01 r) (- len@150@01 1))))
    (=
      ($FVF.lookup_Ref__Integer_value (as sm@222@01  $FVF<Ref__Integer_value>) r)
      ($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@207@01)))))))) r)))
  :pattern (($FVF.lookup_Ref__Integer_value (as sm@222@01  $FVF<Ref__Integer_value>) r))
  :pattern (($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@207@01)))))))) r))
  :qid |qp.fvfValDef26|)))
(assert (forall ((r $Ref)) (!
  (=>
    (= r (Seq_index a@147@01 (- (Seq_length a@147@01) 1)))
    (=
      ($FVF.lookup_Ref__Integer_value (as sm@222@01  $FVF<Ref__Integer_value>) r)
      ($FVF.lookup_Ref__Integer_value (as sm@220@01  $FVF<Ref__Integer_value>) r)))
  :pattern (($FVF.lookup_Ref__Integer_value (as sm@222@01  $FVF<Ref__Integer_value>) r))
  :pattern (($FVF.lookup_Ref__Integer_value (as sm@220@01  $FVF<Ref__Integer_value>) r))
  :qid |qp.fvfValDef27|)))
; Joined path conditions
(assert (or
  (not (and (<= 0 i@244@01) (< i@244@01 len@150@01)))
  (and (<= 0 i@244@01) (< i@244@01 len@150@01))))
(pop) ; 4
; Nested auxiliary terms: globals (aux)
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@210@01 r)
      (and (<= 0 (inv@209@01 r)) (< (inv@209@01 r) len@150@01)))
    (=
      ($FVF.lookup_Ref__Integer_value (as sm@222@01  $FVF<Ref__Integer_value>) r)
      ($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second $t@207@01))) r)))
  :pattern (($FVF.lookup_Ref__Integer_value (as sm@222@01  $FVF<Ref__Integer_value>) r))
  :pattern (($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second $t@207@01))) r))
  :qid |qp.fvfValDef23|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@213@01 r)
      (and (<= 0 (inv@212@01 r)) (< (inv@212@01 r) len@150@01)))
    (=
      ($FVF.lookup_Ref__Integer_value (as sm@222@01  $FVF<Ref__Integer_value>) r)
      ($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@207@01))))) r)))
  :pattern (($FVF.lookup_Ref__Integer_value (as sm@222@01  $FVF<Ref__Integer_value>) r))
  :pattern (($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@207@01))))) r))
  :qid |qp.fvfValDef24|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@216@01 r)
      (and (<= 0 (inv@215@01 r)) (< (inv@215@01 r) len@150@01)))
    (=
      ($FVF.lookup_Ref__Integer_value (as sm@222@01  $FVF<Ref__Integer_value>) r)
      ($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@207@01))))))) r)))
  :pattern (($FVF.lookup_Ref__Integer_value (as sm@222@01  $FVF<Ref__Integer_value>) r))
  :pattern (($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@207@01))))))) r))
  :qid |qp.fvfValDef25|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@219@01 r)
      (and (<= 0 (inv@218@01 r)) (< (inv@218@01 r) (- len@150@01 1))))
    (=
      ($FVF.lookup_Ref__Integer_value (as sm@222@01  $FVF<Ref__Integer_value>) r)
      ($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@207@01)))))))) r)))
  :pattern (($FVF.lookup_Ref__Integer_value (as sm@222@01  $FVF<Ref__Integer_value>) r))
  :pattern (($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@207@01)))))))) r))
  :qid |qp.fvfValDef26|)))
(assert (forall ((r $Ref)) (!
  (=>
    (= r (Seq_index a@147@01 (- (Seq_length a@147@01) 1)))
    (=
      ($FVF.lookup_Ref__Integer_value (as sm@222@01  $FVF<Ref__Integer_value>) r)
      ($FVF.lookup_Ref__Integer_value (as sm@220@01  $FVF<Ref__Integer_value>) r)))
  :pattern (($FVF.lookup_Ref__Integer_value (as sm@222@01  $FVF<Ref__Integer_value>) r))
  :pattern (($FVF.lookup_Ref__Integer_value (as sm@220@01  $FVF<Ref__Integer_value>) r))
  :qid |qp.fvfValDef27|)))
; Nested auxiliary terms: non-globals (aux)
(assert (forall ((i@244@01 Int)) (!
  (and
    (or (<= 0 i@244@01) (not (<= 0 i@244@01)))
    (or
      (not (and (<= 0 i@244@01) (< i@244@01 len@150@01)))
      (and (<= 0 i@244@01) (< i@244@01 len@150@01))))
  :pattern ((Seq_index b@148@01 i@244@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/third_party/test_forward_dep_c.vpr@197@12@197@85-aux|)))
(push) ; 4
(assert (not (forall ((i@244@01 Int)) (!
  (=>
    (and (<= 0 i@244@01) (< i@244@01 len@150@01))
    (=
      ($FVF.lookup_Ref__Integer_value (as sm@222@01  $FVF<Ref__Integer_value>) (Seq_index
        b@148@01
        i@244@01))
      i@244@01))
  :pattern ((Seq_index b@148@01 i@244@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/third_party/test_forward_dep_c.vpr@197@12@197@85|))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(assert (forall ((i@244@01 Int)) (!
  (=>
    (and (<= 0 i@244@01) (< i@244@01 len@150@01))
    (=
      ($FVF.lookup_Ref__Integer_value (as sm@222@01  $FVF<Ref__Integer_value>) (Seq_index
        b@148@01
        i@244@01))
      i@244@01))
  :pattern ((Seq_index b@148@01 i@244@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/third_party/test_forward_dep_c.vpr@197@12@197@85|)))
; [eval] (forall i: Int :: { c[i] } 0 < i && i < len ==> c[i].Ref__Integer_value == i + 2)
(declare-const i@245@01 Int)
(push) ; 4
; [eval] 0 < i && i < len ==> c[i].Ref__Integer_value == i + 2
; [eval] 0 < i && i < len
; [eval] 0 < i
(push) ; 5
; [then-branch: 148 | !(0 < i@245@01) | live]
; [else-branch: 148 | 0 < i@245@01 | live]
(push) ; 6
; [then-branch: 148 | !(0 < i@245@01)]
(assert (not (< 0 i@245@01)))
(pop) ; 6
(push) ; 6
; [else-branch: 148 | 0 < i@245@01]
(assert (< 0 i@245@01))
; [eval] i < len
(pop) ; 6
(pop) ; 5
; Joined path conditions
; Joined path conditions
(assert (or (< 0 i@245@01) (not (< 0 i@245@01))))
(push) ; 5
; [then-branch: 149 | 0 < i@245@01 && i@245@01 < len@150@01 | live]
; [else-branch: 149 | !(0 < i@245@01 && i@245@01 < len@150@01) | live]
(push) ; 6
; [then-branch: 149 | 0 < i@245@01 && i@245@01 < len@150@01]
(assert (and (< 0 i@245@01) (< i@245@01 len@150@01)))
; [eval] c[i].Ref__Integer_value == i + 2
; [eval] c[i]
(push) ; 7
(assert (not (>= i@245@01 0)))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(push) ; 7
(assert (not (< i@245@01 (Seq_length c@149@01))))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(assert (and
  (forall ((r $Ref)) (!
    (=>
      (and
        (img@210@01 r)
        (and (<= 0 (inv@209@01 r)) (< (inv@209@01 r) len@150@01)))
      (=
        ($FVF.lookup_Ref__Integer_value (as sm@222@01  $FVF<Ref__Integer_value>) r)
        ($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second $t@207@01))) r)))
    :pattern (($FVF.lookup_Ref__Integer_value (as sm@222@01  $FVF<Ref__Integer_value>) r))
    :pattern (($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second $t@207@01))) r))
    :qid |qp.fvfValDef23|))
  (forall ((r $Ref)) (!
    (=>
      (and
        (img@213@01 r)
        (and (<= 0 (inv@212@01 r)) (< (inv@212@01 r) len@150@01)))
      (=
        ($FVF.lookup_Ref__Integer_value (as sm@222@01  $FVF<Ref__Integer_value>) r)
        ($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@207@01))))) r)))
    :pattern (($FVF.lookup_Ref__Integer_value (as sm@222@01  $FVF<Ref__Integer_value>) r))
    :pattern (($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@207@01))))) r))
    :qid |qp.fvfValDef24|))
  (forall ((r $Ref)) (!
    (=>
      (and
        (img@216@01 r)
        (and (<= 0 (inv@215@01 r)) (< (inv@215@01 r) len@150@01)))
      (=
        ($FVF.lookup_Ref__Integer_value (as sm@222@01  $FVF<Ref__Integer_value>) r)
        ($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@207@01))))))) r)))
    :pattern (($FVF.lookup_Ref__Integer_value (as sm@222@01  $FVF<Ref__Integer_value>) r))
    :pattern (($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@207@01))))))) r))
    :qid |qp.fvfValDef25|))
  (forall ((r $Ref)) (!
    (=>
      (and
        (img@219@01 r)
        (and (<= 0 (inv@218@01 r)) (< (inv@218@01 r) (- len@150@01 1))))
      (=
        ($FVF.lookup_Ref__Integer_value (as sm@222@01  $FVF<Ref__Integer_value>) r)
        ($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@207@01)))))))) r)))
    :pattern (($FVF.lookup_Ref__Integer_value (as sm@222@01  $FVF<Ref__Integer_value>) r))
    :pattern (($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@207@01)))))))) r))
    :qid |qp.fvfValDef26|))
  (forall ((r $Ref)) (!
    (=>
      (= r (Seq_index a@147@01 (- (Seq_length a@147@01) 1)))
      (=
        ($FVF.lookup_Ref__Integer_value (as sm@222@01  $FVF<Ref__Integer_value>) r)
        ($FVF.lookup_Ref__Integer_value (as sm@220@01  $FVF<Ref__Integer_value>) r)))
    :pattern (($FVF.lookup_Ref__Integer_value (as sm@222@01  $FVF<Ref__Integer_value>) r))
    :pattern (($FVF.lookup_Ref__Integer_value (as sm@220@01  $FVF<Ref__Integer_value>) r))
    :qid |qp.fvfValDef27|))))
(push) ; 7
(assert (not (<
  $Perm.No
  (+
    (+
      (+
        (+
          (ite
            (and
              (img@210@01 (Seq_index c@149@01 i@245@01))
              (and
                (<= 0 (inv@209@01 (Seq_index c@149@01 i@245@01)))
                (< (inv@209@01 (Seq_index c@149@01 i@245@01)) len@150@01)))
            (/ (to_real 1) (to_real 2))
            $Perm.No)
          (ite
            (and
              (img@213@01 (Seq_index c@149@01 i@245@01))
              (and
                (<= 0 (inv@212@01 (Seq_index c@149@01 i@245@01)))
                (< (inv@212@01 (Seq_index c@149@01 i@245@01)) len@150@01)))
            (/ (to_real 1) (to_real 2))
            $Perm.No))
        (ite
          (and
            (img@216@01 (Seq_index c@149@01 i@245@01))
            (and
              (<= 0 (inv@215@01 (Seq_index c@149@01 i@245@01)))
              (< (inv@215@01 (Seq_index c@149@01 i@245@01)) len@150@01)))
          $Perm.Write
          $Perm.No))
      (ite
        (and
          (img@219@01 (Seq_index c@149@01 i@245@01))
          (and
            (<= 0 (inv@218@01 (Seq_index c@149@01 i@245@01)))
            (< (inv@218@01 (Seq_index c@149@01 i@245@01)) (- len@150@01 1))))
        (/ (to_real 1) (to_real 2))
        $Perm.No))
    (ite
      (=
        (Seq_index c@149@01 i@245@01)
        (Seq_index a@147@01 (- (Seq_length a@147@01) 1)))
      (/ (to_real 1) (to_real 2))
      $Perm.No)))))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
; [eval] i + 2
(pop) ; 6
(push) ; 6
; [else-branch: 149 | !(0 < i@245@01 && i@245@01 < len@150@01)]
(assert (not (and (< 0 i@245@01) (< i@245@01 len@150@01))))
(pop) ; 6
(pop) ; 5
; Joined path conditions
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@210@01 r)
      (and (<= 0 (inv@209@01 r)) (< (inv@209@01 r) len@150@01)))
    (=
      ($FVF.lookup_Ref__Integer_value (as sm@222@01  $FVF<Ref__Integer_value>) r)
      ($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second $t@207@01))) r)))
  :pattern (($FVF.lookup_Ref__Integer_value (as sm@222@01  $FVF<Ref__Integer_value>) r))
  :pattern (($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second $t@207@01))) r))
  :qid |qp.fvfValDef23|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@213@01 r)
      (and (<= 0 (inv@212@01 r)) (< (inv@212@01 r) len@150@01)))
    (=
      ($FVF.lookup_Ref__Integer_value (as sm@222@01  $FVF<Ref__Integer_value>) r)
      ($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@207@01))))) r)))
  :pattern (($FVF.lookup_Ref__Integer_value (as sm@222@01  $FVF<Ref__Integer_value>) r))
  :pattern (($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@207@01))))) r))
  :qid |qp.fvfValDef24|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@216@01 r)
      (and (<= 0 (inv@215@01 r)) (< (inv@215@01 r) len@150@01)))
    (=
      ($FVF.lookup_Ref__Integer_value (as sm@222@01  $FVF<Ref__Integer_value>) r)
      ($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@207@01))))))) r)))
  :pattern (($FVF.lookup_Ref__Integer_value (as sm@222@01  $FVF<Ref__Integer_value>) r))
  :pattern (($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@207@01))))))) r))
  :qid |qp.fvfValDef25|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@219@01 r)
      (and (<= 0 (inv@218@01 r)) (< (inv@218@01 r) (- len@150@01 1))))
    (=
      ($FVF.lookup_Ref__Integer_value (as sm@222@01  $FVF<Ref__Integer_value>) r)
      ($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@207@01)))))))) r)))
  :pattern (($FVF.lookup_Ref__Integer_value (as sm@222@01  $FVF<Ref__Integer_value>) r))
  :pattern (($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@207@01)))))))) r))
  :qid |qp.fvfValDef26|)))
(assert (forall ((r $Ref)) (!
  (=>
    (= r (Seq_index a@147@01 (- (Seq_length a@147@01) 1)))
    (=
      ($FVF.lookup_Ref__Integer_value (as sm@222@01  $FVF<Ref__Integer_value>) r)
      ($FVF.lookup_Ref__Integer_value (as sm@220@01  $FVF<Ref__Integer_value>) r)))
  :pattern (($FVF.lookup_Ref__Integer_value (as sm@222@01  $FVF<Ref__Integer_value>) r))
  :pattern (($FVF.lookup_Ref__Integer_value (as sm@220@01  $FVF<Ref__Integer_value>) r))
  :qid |qp.fvfValDef27|)))
; Joined path conditions
(assert (or
  (not (and (< 0 i@245@01) (< i@245@01 len@150@01)))
  (and (< 0 i@245@01) (< i@245@01 len@150@01))))
(pop) ; 4
; Nested auxiliary terms: globals (aux)
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@210@01 r)
      (and (<= 0 (inv@209@01 r)) (< (inv@209@01 r) len@150@01)))
    (=
      ($FVF.lookup_Ref__Integer_value (as sm@222@01  $FVF<Ref__Integer_value>) r)
      ($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second $t@207@01))) r)))
  :pattern (($FVF.lookup_Ref__Integer_value (as sm@222@01  $FVF<Ref__Integer_value>) r))
  :pattern (($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second $t@207@01))) r))
  :qid |qp.fvfValDef23|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@213@01 r)
      (and (<= 0 (inv@212@01 r)) (< (inv@212@01 r) len@150@01)))
    (=
      ($FVF.lookup_Ref__Integer_value (as sm@222@01  $FVF<Ref__Integer_value>) r)
      ($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@207@01))))) r)))
  :pattern (($FVF.lookup_Ref__Integer_value (as sm@222@01  $FVF<Ref__Integer_value>) r))
  :pattern (($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@207@01))))) r))
  :qid |qp.fvfValDef24|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@216@01 r)
      (and (<= 0 (inv@215@01 r)) (< (inv@215@01 r) len@150@01)))
    (=
      ($FVF.lookup_Ref__Integer_value (as sm@222@01  $FVF<Ref__Integer_value>) r)
      ($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@207@01))))))) r)))
  :pattern (($FVF.lookup_Ref__Integer_value (as sm@222@01  $FVF<Ref__Integer_value>) r))
  :pattern (($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@207@01))))))) r))
  :qid |qp.fvfValDef25|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@219@01 r)
      (and (<= 0 (inv@218@01 r)) (< (inv@218@01 r) (- len@150@01 1))))
    (=
      ($FVF.lookup_Ref__Integer_value (as sm@222@01  $FVF<Ref__Integer_value>) r)
      ($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@207@01)))))))) r)))
  :pattern (($FVF.lookup_Ref__Integer_value (as sm@222@01  $FVF<Ref__Integer_value>) r))
  :pattern (($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@207@01)))))))) r))
  :qid |qp.fvfValDef26|)))
(assert (forall ((r $Ref)) (!
  (=>
    (= r (Seq_index a@147@01 (- (Seq_length a@147@01) 1)))
    (=
      ($FVF.lookup_Ref__Integer_value (as sm@222@01  $FVF<Ref__Integer_value>) r)
      ($FVF.lookup_Ref__Integer_value (as sm@220@01  $FVF<Ref__Integer_value>) r)))
  :pattern (($FVF.lookup_Ref__Integer_value (as sm@222@01  $FVF<Ref__Integer_value>) r))
  :pattern (($FVF.lookup_Ref__Integer_value (as sm@220@01  $FVF<Ref__Integer_value>) r))
  :qid |qp.fvfValDef27|)))
; Nested auxiliary terms: non-globals (aux)
(assert (forall ((i@245@01 Int)) (!
  (and
    (or (< 0 i@245@01) (not (< 0 i@245@01)))
    (or
      (not (and (< 0 i@245@01) (< i@245@01 len@150@01)))
      (and (< 0 i@245@01) (< i@245@01 len@150@01))))
  :pattern ((Seq_index c@149@01 i@245@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/third_party/test_forward_dep_c.vpr@198@12@198@88-aux|)))
(push) ; 4
(assert (not (forall ((i@245@01 Int)) (!
  (=>
    (and (< 0 i@245@01) (< i@245@01 len@150@01))
    (=
      ($FVF.lookup_Ref__Integer_value (as sm@222@01  $FVF<Ref__Integer_value>) (Seq_index
        c@149@01
        i@245@01))
      (+ i@245@01 2)))
  :pattern ((Seq_index c@149@01 i@245@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/third_party/test_forward_dep_c.vpr@198@12@198@88|))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(assert (forall ((i@245@01 Int)) (!
  (=>
    (and (< 0 i@245@01) (< i@245@01 len@150@01))
    (=
      ($FVF.lookup_Ref__Integer_value (as sm@222@01  $FVF<Ref__Integer_value>) (Seq_index
        c@149@01
        i@245@01))
      (+ i@245@01 2)))
  :pattern ((Seq_index c@149@01 i@245@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/third_party/test_forward_dep_c.vpr@198@12@198@88|)))
(pop) ; 3
(push) ; 3
; [else-branch: 133 | !(0 <= |a@147@01| - 1 && |a@147@01| - 1 < len@150@01)]
(assert (not
  (and
    (<= 0 (- (Seq_length a@147@01) 1))
    (< (- (Seq_length a@147@01) 1) len@150@01))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@207@01))))))))
  $Snap.unit))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@207@01))))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@207@01)))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@207@01))))))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@207@01)))))))))
  $Snap.unit))
; [eval] (forall i: Int :: { a[i] } 0 <= i && i < len ==> a[i].Ref__Integer_value == i + 1)
(declare-const i@246@01 Int)
(push) ; 4
; [eval] 0 <= i && i < len ==> a[i].Ref__Integer_value == i + 1
; [eval] 0 <= i && i < len
; [eval] 0 <= i
(push) ; 5
; [then-branch: 150 | !(0 <= i@246@01) | live]
; [else-branch: 150 | 0 <= i@246@01 | live]
(push) ; 6
; [then-branch: 150 | !(0 <= i@246@01)]
(assert (not (<= 0 i@246@01)))
(pop) ; 6
(push) ; 6
; [else-branch: 150 | 0 <= i@246@01]
(assert (<= 0 i@246@01))
; [eval] i < len
(pop) ; 6
(pop) ; 5
; Joined path conditions
; Joined path conditions
(assert (or (<= 0 i@246@01) (not (<= 0 i@246@01))))
(push) ; 5
; [then-branch: 151 | 0 <= i@246@01 && i@246@01 < len@150@01 | live]
; [else-branch: 151 | !(0 <= i@246@01 && i@246@01 < len@150@01) | live]
(push) ; 6
; [then-branch: 151 | 0 <= i@246@01 && i@246@01 < len@150@01]
(assert (and (<= 0 i@246@01) (< i@246@01 len@150@01)))
; [eval] a[i].Ref__Integer_value == i + 1
; [eval] a[i]
(push) ; 7
(assert (not (>= i@246@01 0)))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(push) ; 7
(assert (not (< i@246@01 (Seq_length a@147@01))))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(declare-const sm@247@01 $FVF<Ref__Integer_value>)
; Definitional axioms for snapshot map values
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@210@01 r)
      (and (<= 0 (inv@209@01 r)) (< (inv@209@01 r) len@150@01)))
    (=
      ($FVF.lookup_Ref__Integer_value (as sm@247@01  $FVF<Ref__Integer_value>) r)
      ($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second $t@207@01))) r)))
  :pattern (($FVF.lookup_Ref__Integer_value (as sm@247@01  $FVF<Ref__Integer_value>) r))
  :pattern (($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second $t@207@01))) r))
  :qid |qp.fvfValDef29|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@213@01 r)
      (and (<= 0 (inv@212@01 r)) (< (inv@212@01 r) len@150@01)))
    (=
      ($FVF.lookup_Ref__Integer_value (as sm@247@01  $FVF<Ref__Integer_value>) r)
      ($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@207@01))))) r)))
  :pattern (($FVF.lookup_Ref__Integer_value (as sm@247@01  $FVF<Ref__Integer_value>) r))
  :pattern (($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@207@01))))) r))
  :qid |qp.fvfValDef30|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@216@01 r)
      (and (<= 0 (inv@215@01 r)) (< (inv@215@01 r) len@150@01)))
    (=
      ($FVF.lookup_Ref__Integer_value (as sm@247@01  $FVF<Ref__Integer_value>) r)
      ($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@207@01))))))) r)))
  :pattern (($FVF.lookup_Ref__Integer_value (as sm@247@01  $FVF<Ref__Integer_value>) r))
  :pattern (($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@207@01))))))) r))
  :qid |qp.fvfValDef31|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@219@01 r)
      (and (<= 0 (inv@218@01 r)) (< (inv@218@01 r) (- len@150@01 1))))
    (=
      ($FVF.lookup_Ref__Integer_value (as sm@247@01  $FVF<Ref__Integer_value>) r)
      ($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@207@01)))))))) r)))
  :pattern (($FVF.lookup_Ref__Integer_value (as sm@247@01  $FVF<Ref__Integer_value>) r))
  :pattern (($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@207@01)))))))) r))
  :qid |qp.fvfValDef32|)))
(declare-const pm@248@01 $FPM)
(assert (forall ((r $Ref)) (!
  (=
    ($FVF.perm_Ref__Integer_value (as pm@248@01  $FPM) r)
    (+
      (+
        (+
          (ite
            (and
              (img@210@01 r)
              (and (<= 0 (inv@209@01 r)) (< (inv@209@01 r) len@150@01)))
            (/ (to_real 1) (to_real 2))
            $Perm.No)
          (ite
            (and
              (img@213@01 r)
              (and (<= 0 (inv@212@01 r)) (< (inv@212@01 r) len@150@01)))
            (/ (to_real 1) (to_real 2))
            $Perm.No))
        (ite
          (and
            (img@216@01 r)
            (and (<= 0 (inv@215@01 r)) (< (inv@215@01 r) len@150@01)))
          $Perm.Write
          $Perm.No))
      (ite
        (and
          (img@219@01 r)
          (and (<= 0 (inv@218@01 r)) (< (inv@218@01 r) (- len@150@01 1))))
        (/ (to_real 1) (to_real 2))
        $Perm.No)))
  :pattern (($FVF.perm_Ref__Integer_value (as pm@248@01  $FPM) r))
  :qid |qp.resPrmSumDef33|)))
(push) ; 7
(assert (not (<
  $Perm.No
  ($FVF.perm_Ref__Integer_value (as pm@248@01  $FPM) (Seq_index
    a@147@01
    i@246@01)))))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
; [eval] i + 1
(pop) ; 6
(push) ; 6
; [else-branch: 151 | !(0 <= i@246@01 && i@246@01 < len@150@01)]
(assert (not (and (<= 0 i@246@01) (< i@246@01 len@150@01))))
(pop) ; 6
(pop) ; 5
; Joined path conditions
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@210@01 r)
      (and (<= 0 (inv@209@01 r)) (< (inv@209@01 r) len@150@01)))
    (=
      ($FVF.lookup_Ref__Integer_value (as sm@247@01  $FVF<Ref__Integer_value>) r)
      ($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second $t@207@01))) r)))
  :pattern (($FVF.lookup_Ref__Integer_value (as sm@247@01  $FVF<Ref__Integer_value>) r))
  :pattern (($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second $t@207@01))) r))
  :qid |qp.fvfValDef29|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@213@01 r)
      (and (<= 0 (inv@212@01 r)) (< (inv@212@01 r) len@150@01)))
    (=
      ($FVF.lookup_Ref__Integer_value (as sm@247@01  $FVF<Ref__Integer_value>) r)
      ($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@207@01))))) r)))
  :pattern (($FVF.lookup_Ref__Integer_value (as sm@247@01  $FVF<Ref__Integer_value>) r))
  :pattern (($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@207@01))))) r))
  :qid |qp.fvfValDef30|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@216@01 r)
      (and (<= 0 (inv@215@01 r)) (< (inv@215@01 r) len@150@01)))
    (=
      ($FVF.lookup_Ref__Integer_value (as sm@247@01  $FVF<Ref__Integer_value>) r)
      ($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@207@01))))))) r)))
  :pattern (($FVF.lookup_Ref__Integer_value (as sm@247@01  $FVF<Ref__Integer_value>) r))
  :pattern (($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@207@01))))))) r))
  :qid |qp.fvfValDef31|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@219@01 r)
      (and (<= 0 (inv@218@01 r)) (< (inv@218@01 r) (- len@150@01 1))))
    (=
      ($FVF.lookup_Ref__Integer_value (as sm@247@01  $FVF<Ref__Integer_value>) r)
      ($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@207@01)))))))) r)))
  :pattern (($FVF.lookup_Ref__Integer_value (as sm@247@01  $FVF<Ref__Integer_value>) r))
  :pattern (($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@207@01)))))))) r))
  :qid |qp.fvfValDef32|)))
(assert (forall ((r $Ref)) (!
  (=
    ($FVF.perm_Ref__Integer_value (as pm@248@01  $FPM) r)
    (+
      (+
        (+
          (ite
            (and
              (img@210@01 r)
              (and (<= 0 (inv@209@01 r)) (< (inv@209@01 r) len@150@01)))
            (/ (to_real 1) (to_real 2))
            $Perm.No)
          (ite
            (and
              (img@213@01 r)
              (and (<= 0 (inv@212@01 r)) (< (inv@212@01 r) len@150@01)))
            (/ (to_real 1) (to_real 2))
            $Perm.No))
        (ite
          (and
            (img@216@01 r)
            (and (<= 0 (inv@215@01 r)) (< (inv@215@01 r) len@150@01)))
          $Perm.Write
          $Perm.No))
      (ite
        (and
          (img@219@01 r)
          (and (<= 0 (inv@218@01 r)) (< (inv@218@01 r) (- len@150@01 1))))
        (/ (to_real 1) (to_real 2))
        $Perm.No)))
  :pattern (($FVF.perm_Ref__Integer_value (as pm@248@01  $FPM) r))
  :qid |qp.resPrmSumDef33|)))
; Joined path conditions
(assert (or
  (not (and (<= 0 i@246@01) (< i@246@01 len@150@01)))
  (and (<= 0 i@246@01) (< i@246@01 len@150@01))))
(pop) ; 4
; Nested auxiliary terms: globals (aux)
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@210@01 r)
      (and (<= 0 (inv@209@01 r)) (< (inv@209@01 r) len@150@01)))
    (=
      ($FVF.lookup_Ref__Integer_value (as sm@247@01  $FVF<Ref__Integer_value>) r)
      ($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second $t@207@01))) r)))
  :pattern (($FVF.lookup_Ref__Integer_value (as sm@247@01  $FVF<Ref__Integer_value>) r))
  :pattern (($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second $t@207@01))) r))
  :qid |qp.fvfValDef29|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@213@01 r)
      (and (<= 0 (inv@212@01 r)) (< (inv@212@01 r) len@150@01)))
    (=
      ($FVF.lookup_Ref__Integer_value (as sm@247@01  $FVF<Ref__Integer_value>) r)
      ($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@207@01))))) r)))
  :pattern (($FVF.lookup_Ref__Integer_value (as sm@247@01  $FVF<Ref__Integer_value>) r))
  :pattern (($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@207@01))))) r))
  :qid |qp.fvfValDef30|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@216@01 r)
      (and (<= 0 (inv@215@01 r)) (< (inv@215@01 r) len@150@01)))
    (=
      ($FVF.lookup_Ref__Integer_value (as sm@247@01  $FVF<Ref__Integer_value>) r)
      ($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@207@01))))))) r)))
  :pattern (($FVF.lookup_Ref__Integer_value (as sm@247@01  $FVF<Ref__Integer_value>) r))
  :pattern (($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@207@01))))))) r))
  :qid |qp.fvfValDef31|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@219@01 r)
      (and (<= 0 (inv@218@01 r)) (< (inv@218@01 r) (- len@150@01 1))))
    (=
      ($FVF.lookup_Ref__Integer_value (as sm@247@01  $FVF<Ref__Integer_value>) r)
      ($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@207@01)))))))) r)))
  :pattern (($FVF.lookup_Ref__Integer_value (as sm@247@01  $FVF<Ref__Integer_value>) r))
  :pattern (($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@207@01)))))))) r))
  :qid |qp.fvfValDef32|)))
(assert (forall ((r $Ref)) (!
  (=
    ($FVF.perm_Ref__Integer_value (as pm@248@01  $FPM) r)
    (+
      (+
        (+
          (ite
            (and
              (img@210@01 r)
              (and (<= 0 (inv@209@01 r)) (< (inv@209@01 r) len@150@01)))
            (/ (to_real 1) (to_real 2))
            $Perm.No)
          (ite
            (and
              (img@213@01 r)
              (and (<= 0 (inv@212@01 r)) (< (inv@212@01 r) len@150@01)))
            (/ (to_real 1) (to_real 2))
            $Perm.No))
        (ite
          (and
            (img@216@01 r)
            (and (<= 0 (inv@215@01 r)) (< (inv@215@01 r) len@150@01)))
          $Perm.Write
          $Perm.No))
      (ite
        (and
          (img@219@01 r)
          (and (<= 0 (inv@218@01 r)) (< (inv@218@01 r) (- len@150@01 1))))
        (/ (to_real 1) (to_real 2))
        $Perm.No)))
  :pattern (($FVF.perm_Ref__Integer_value (as pm@248@01  $FPM) r))
  :qid |qp.resPrmSumDef33|)))
; Nested auxiliary terms: non-globals (aux)
(assert (forall ((i@246@01 Int)) (!
  (and
    (or (<= 0 i@246@01) (not (<= 0 i@246@01)))
    (or
      (not (and (<= 0 i@246@01) (< i@246@01 len@150@01)))
      (and (<= 0 i@246@01) (< i@246@01 len@150@01))))
  :pattern ((Seq_index a@147@01 i@246@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/third_party/test_forward_dep_c.vpr@79@12@79@89-aux|)))
(assert (forall ((i@246@01 Int)) (!
  (=>
    (and (<= 0 i@246@01) (< i@246@01 len@150@01))
    (=
      ($FVF.lookup_Ref__Integer_value (as sm@247@01  $FVF<Ref__Integer_value>) (Seq_index
        a@147@01
        i@246@01))
      (+ i@246@01 1)))
  :pattern ((Seq_index a@147@01 i@246@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/third_party/test_forward_dep_c.vpr@79@12@79@89|)))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@207@01)))))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@207@01))))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@207@01)))))))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@207@01))))))))))
  $Snap.unit))
; [eval] (forall i: Int :: { b[i] } 0 <= i && i < len ==> b[i].Ref__Integer_value == i)
(declare-const i@249@01 Int)
(push) ; 4
; [eval] 0 <= i && i < len ==> b[i].Ref__Integer_value == i
; [eval] 0 <= i && i < len
; [eval] 0 <= i
(push) ; 5
; [then-branch: 152 | !(0 <= i@249@01) | live]
; [else-branch: 152 | 0 <= i@249@01 | live]
(push) ; 6
; [then-branch: 152 | !(0 <= i@249@01)]
(assert (not (<= 0 i@249@01)))
(pop) ; 6
(push) ; 6
; [else-branch: 152 | 0 <= i@249@01]
(assert (<= 0 i@249@01))
; [eval] i < len
(pop) ; 6
(pop) ; 5
; Joined path conditions
; Joined path conditions
(assert (or (<= 0 i@249@01) (not (<= 0 i@249@01))))
(push) ; 5
; [then-branch: 153 | 0 <= i@249@01 && i@249@01 < len@150@01 | live]
; [else-branch: 153 | !(0 <= i@249@01 && i@249@01 < len@150@01) | live]
(push) ; 6
; [then-branch: 153 | 0 <= i@249@01 && i@249@01 < len@150@01]
(assert (and (<= 0 i@249@01) (< i@249@01 len@150@01)))
; [eval] b[i].Ref__Integer_value == i
; [eval] b[i]
(push) ; 7
(assert (not (>= i@249@01 0)))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(push) ; 7
(assert (not (< i@249@01 (Seq_length b@148@01))))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(assert (and
  (forall ((r $Ref)) (!
    (=>
      (and
        (img@210@01 r)
        (and (<= 0 (inv@209@01 r)) (< (inv@209@01 r) len@150@01)))
      (=
        ($FVF.lookup_Ref__Integer_value (as sm@247@01  $FVF<Ref__Integer_value>) r)
        ($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second $t@207@01))) r)))
    :pattern (($FVF.lookup_Ref__Integer_value (as sm@247@01  $FVF<Ref__Integer_value>) r))
    :pattern (($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second $t@207@01))) r))
    :qid |qp.fvfValDef29|))
  (forall ((r $Ref)) (!
    (=>
      (and
        (img@213@01 r)
        (and (<= 0 (inv@212@01 r)) (< (inv@212@01 r) len@150@01)))
      (=
        ($FVF.lookup_Ref__Integer_value (as sm@247@01  $FVF<Ref__Integer_value>) r)
        ($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@207@01))))) r)))
    :pattern (($FVF.lookup_Ref__Integer_value (as sm@247@01  $FVF<Ref__Integer_value>) r))
    :pattern (($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@207@01))))) r))
    :qid |qp.fvfValDef30|))
  (forall ((r $Ref)) (!
    (=>
      (and
        (img@216@01 r)
        (and (<= 0 (inv@215@01 r)) (< (inv@215@01 r) len@150@01)))
      (=
        ($FVF.lookup_Ref__Integer_value (as sm@247@01  $FVF<Ref__Integer_value>) r)
        ($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@207@01))))))) r)))
    :pattern (($FVF.lookup_Ref__Integer_value (as sm@247@01  $FVF<Ref__Integer_value>) r))
    :pattern (($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@207@01))))))) r))
    :qid |qp.fvfValDef31|))
  (forall ((r $Ref)) (!
    (=>
      (and
        (img@219@01 r)
        (and (<= 0 (inv@218@01 r)) (< (inv@218@01 r) (- len@150@01 1))))
      (=
        ($FVF.lookup_Ref__Integer_value (as sm@247@01  $FVF<Ref__Integer_value>) r)
        ($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@207@01)))))))) r)))
    :pattern (($FVF.lookup_Ref__Integer_value (as sm@247@01  $FVF<Ref__Integer_value>) r))
    :pattern (($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@207@01)))))))) r))
    :qid |qp.fvfValDef32|))))
(push) ; 7
(assert (not (<
  $Perm.No
  (+
    (+
      (+
        (ite
          (and
            (img@210@01 (Seq_index b@148@01 i@249@01))
            (and
              (<= 0 (inv@209@01 (Seq_index b@148@01 i@249@01)))
              (< (inv@209@01 (Seq_index b@148@01 i@249@01)) len@150@01)))
          (/ (to_real 1) (to_real 2))
          $Perm.No)
        (ite
          (and
            (img@213@01 (Seq_index b@148@01 i@249@01))
            (and
              (<= 0 (inv@212@01 (Seq_index b@148@01 i@249@01)))
              (< (inv@212@01 (Seq_index b@148@01 i@249@01)) len@150@01)))
          (/ (to_real 1) (to_real 2))
          $Perm.No))
      (ite
        (and
          (img@216@01 (Seq_index b@148@01 i@249@01))
          (and
            (<= 0 (inv@215@01 (Seq_index b@148@01 i@249@01)))
            (< (inv@215@01 (Seq_index b@148@01 i@249@01)) len@150@01)))
        $Perm.Write
        $Perm.No))
    (ite
      (and
        (img@219@01 (Seq_index b@148@01 i@249@01))
        (and
          (<= 0 (inv@218@01 (Seq_index b@148@01 i@249@01)))
          (< (inv@218@01 (Seq_index b@148@01 i@249@01)) (- len@150@01 1))))
      (/ (to_real 1) (to_real 2))
      $Perm.No)))))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(pop) ; 6
(push) ; 6
; [else-branch: 153 | !(0 <= i@249@01 && i@249@01 < len@150@01)]
(assert (not (and (<= 0 i@249@01) (< i@249@01 len@150@01))))
(pop) ; 6
(pop) ; 5
; Joined path conditions
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@210@01 r)
      (and (<= 0 (inv@209@01 r)) (< (inv@209@01 r) len@150@01)))
    (=
      ($FVF.lookup_Ref__Integer_value (as sm@247@01  $FVF<Ref__Integer_value>) r)
      ($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second $t@207@01))) r)))
  :pattern (($FVF.lookup_Ref__Integer_value (as sm@247@01  $FVF<Ref__Integer_value>) r))
  :pattern (($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second $t@207@01))) r))
  :qid |qp.fvfValDef29|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@213@01 r)
      (and (<= 0 (inv@212@01 r)) (< (inv@212@01 r) len@150@01)))
    (=
      ($FVF.lookup_Ref__Integer_value (as sm@247@01  $FVF<Ref__Integer_value>) r)
      ($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@207@01))))) r)))
  :pattern (($FVF.lookup_Ref__Integer_value (as sm@247@01  $FVF<Ref__Integer_value>) r))
  :pattern (($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@207@01))))) r))
  :qid |qp.fvfValDef30|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@216@01 r)
      (and (<= 0 (inv@215@01 r)) (< (inv@215@01 r) len@150@01)))
    (=
      ($FVF.lookup_Ref__Integer_value (as sm@247@01  $FVF<Ref__Integer_value>) r)
      ($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@207@01))))))) r)))
  :pattern (($FVF.lookup_Ref__Integer_value (as sm@247@01  $FVF<Ref__Integer_value>) r))
  :pattern (($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@207@01))))))) r))
  :qid |qp.fvfValDef31|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@219@01 r)
      (and (<= 0 (inv@218@01 r)) (< (inv@218@01 r) (- len@150@01 1))))
    (=
      ($FVF.lookup_Ref__Integer_value (as sm@247@01  $FVF<Ref__Integer_value>) r)
      ($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@207@01)))))))) r)))
  :pattern (($FVF.lookup_Ref__Integer_value (as sm@247@01  $FVF<Ref__Integer_value>) r))
  :pattern (($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@207@01)))))))) r))
  :qid |qp.fvfValDef32|)))
; Joined path conditions
(assert (or
  (not (and (<= 0 i@249@01) (< i@249@01 len@150@01)))
  (and (<= 0 i@249@01) (< i@249@01 len@150@01))))
(pop) ; 4
; Nested auxiliary terms: globals (aux)
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@210@01 r)
      (and (<= 0 (inv@209@01 r)) (< (inv@209@01 r) len@150@01)))
    (=
      ($FVF.lookup_Ref__Integer_value (as sm@247@01  $FVF<Ref__Integer_value>) r)
      ($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second $t@207@01))) r)))
  :pattern (($FVF.lookup_Ref__Integer_value (as sm@247@01  $FVF<Ref__Integer_value>) r))
  :pattern (($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second $t@207@01))) r))
  :qid |qp.fvfValDef29|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@213@01 r)
      (and (<= 0 (inv@212@01 r)) (< (inv@212@01 r) len@150@01)))
    (=
      ($FVF.lookup_Ref__Integer_value (as sm@247@01  $FVF<Ref__Integer_value>) r)
      ($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@207@01))))) r)))
  :pattern (($FVF.lookup_Ref__Integer_value (as sm@247@01  $FVF<Ref__Integer_value>) r))
  :pattern (($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@207@01))))) r))
  :qid |qp.fvfValDef30|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@216@01 r)
      (and (<= 0 (inv@215@01 r)) (< (inv@215@01 r) len@150@01)))
    (=
      ($FVF.lookup_Ref__Integer_value (as sm@247@01  $FVF<Ref__Integer_value>) r)
      ($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@207@01))))))) r)))
  :pattern (($FVF.lookup_Ref__Integer_value (as sm@247@01  $FVF<Ref__Integer_value>) r))
  :pattern (($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@207@01))))))) r))
  :qid |qp.fvfValDef31|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@219@01 r)
      (and (<= 0 (inv@218@01 r)) (< (inv@218@01 r) (- len@150@01 1))))
    (=
      ($FVF.lookup_Ref__Integer_value (as sm@247@01  $FVF<Ref__Integer_value>) r)
      ($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@207@01)))))))) r)))
  :pattern (($FVF.lookup_Ref__Integer_value (as sm@247@01  $FVF<Ref__Integer_value>) r))
  :pattern (($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@207@01)))))))) r))
  :qid |qp.fvfValDef32|)))
; Nested auxiliary terms: non-globals (aux)
(assert (forall ((i@249@01 Int)) (!
  (and
    (or (<= 0 i@249@01) (not (<= 0 i@249@01)))
    (or
      (not (and (<= 0 i@249@01) (< i@249@01 len@150@01)))
      (and (<= 0 i@249@01) (< i@249@01 len@150@01))))
  :pattern ((Seq_index b@148@01 i@249@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/third_party/test_forward_dep_c.vpr@80@12@80@85-aux|)))
(assert (forall ((i@249@01 Int)) (!
  (=>
    (and (<= 0 i@249@01) (< i@249@01 len@150@01))
    (=
      ($FVF.lookup_Ref__Integer_value (as sm@247@01  $FVF<Ref__Integer_value>) (Seq_index
        b@148@01
        i@249@01))
      i@249@01))
  :pattern ((Seq_index b@148@01 i@249@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/third_party/test_forward_dep_c.vpr@80@12@80@85|)))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@207@01))))))))))
  $Snap.unit))
; [eval] (forall i: Int :: { c[i] } (0 <= 0 ? 1 : 0) <= i && i < len ==> c[i].Ref__Integer_value == i + 2)
(declare-const i@250@01 Int)
(push) ; 4
; [eval] (0 <= 0 ? 1 : 0) <= i && i < len ==> c[i].Ref__Integer_value == i + 2
; [eval] (0 <= 0 ? 1 : 0) <= i && i < len
; [eval] (0 <= 0 ? 1 : 0) <= i
; [eval] (0 <= 0 ? 1 : 0)
; [eval] 0 <= 0
(push) ; 5
(push) ; 6
(set-option :timeout 10)
(assert (not false))
(check-sat)
; unknown
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
; [then-branch: 154 | True | live]
; [else-branch: 154 | False | dead]
(set-option :timeout 0)
(push) ; 6
; [then-branch: 154 | True]
(pop) ; 6
(pop) ; 5
; Joined path conditions
(push) ; 5
; [then-branch: 155 | !(1 <= i@250@01) | live]
; [else-branch: 155 | 1 <= i@250@01 | live]
(push) ; 6
; [then-branch: 155 | !(1 <= i@250@01)]
(assert (not (<= 1 i@250@01)))
(pop) ; 6
(push) ; 6
; [else-branch: 155 | 1 <= i@250@01]
(assert (<= 1 i@250@01))
; [eval] i < len
(pop) ; 6
(pop) ; 5
; Joined path conditions
; Joined path conditions
(assert (or (<= 1 i@250@01) (not (<= 1 i@250@01))))
(push) ; 5
; [then-branch: 156 | 1 <= i@250@01 && i@250@01 < len@150@01 | live]
; [else-branch: 156 | !(1 <= i@250@01 && i@250@01 < len@150@01) | live]
(push) ; 6
; [then-branch: 156 | 1 <= i@250@01 && i@250@01 < len@150@01]
(assert (and (<= 1 i@250@01) (< i@250@01 len@150@01)))
; [eval] c[i].Ref__Integer_value == i + 2
; [eval] c[i]
(push) ; 7
(assert (not (>= i@250@01 0)))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(push) ; 7
(assert (not (< i@250@01 (Seq_length c@149@01))))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(assert (and
  (forall ((r $Ref)) (!
    (=>
      (and
        (img@210@01 r)
        (and (<= 0 (inv@209@01 r)) (< (inv@209@01 r) len@150@01)))
      (=
        ($FVF.lookup_Ref__Integer_value (as sm@247@01  $FVF<Ref__Integer_value>) r)
        ($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second $t@207@01))) r)))
    :pattern (($FVF.lookup_Ref__Integer_value (as sm@247@01  $FVF<Ref__Integer_value>) r))
    :pattern (($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second $t@207@01))) r))
    :qid |qp.fvfValDef29|))
  (forall ((r $Ref)) (!
    (=>
      (and
        (img@213@01 r)
        (and (<= 0 (inv@212@01 r)) (< (inv@212@01 r) len@150@01)))
      (=
        ($FVF.lookup_Ref__Integer_value (as sm@247@01  $FVF<Ref__Integer_value>) r)
        ($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@207@01))))) r)))
    :pattern (($FVF.lookup_Ref__Integer_value (as sm@247@01  $FVF<Ref__Integer_value>) r))
    :pattern (($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@207@01))))) r))
    :qid |qp.fvfValDef30|))
  (forall ((r $Ref)) (!
    (=>
      (and
        (img@216@01 r)
        (and (<= 0 (inv@215@01 r)) (< (inv@215@01 r) len@150@01)))
      (=
        ($FVF.lookup_Ref__Integer_value (as sm@247@01  $FVF<Ref__Integer_value>) r)
        ($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@207@01))))))) r)))
    :pattern (($FVF.lookup_Ref__Integer_value (as sm@247@01  $FVF<Ref__Integer_value>) r))
    :pattern (($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@207@01))))))) r))
    :qid |qp.fvfValDef31|))
  (forall ((r $Ref)) (!
    (=>
      (and
        (img@219@01 r)
        (and (<= 0 (inv@218@01 r)) (< (inv@218@01 r) (- len@150@01 1))))
      (=
        ($FVF.lookup_Ref__Integer_value (as sm@247@01  $FVF<Ref__Integer_value>) r)
        ($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@207@01)))))))) r)))
    :pattern (($FVF.lookup_Ref__Integer_value (as sm@247@01  $FVF<Ref__Integer_value>) r))
    :pattern (($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@207@01)))))))) r))
    :qid |qp.fvfValDef32|))))
(push) ; 7
(assert (not (<
  $Perm.No
  (+
    (+
      (+
        (ite
          (and
            (img@210@01 (Seq_index c@149@01 i@250@01))
            (and
              (<= 0 (inv@209@01 (Seq_index c@149@01 i@250@01)))
              (< (inv@209@01 (Seq_index c@149@01 i@250@01)) len@150@01)))
          (/ (to_real 1) (to_real 2))
          $Perm.No)
        (ite
          (and
            (img@213@01 (Seq_index c@149@01 i@250@01))
            (and
              (<= 0 (inv@212@01 (Seq_index c@149@01 i@250@01)))
              (< (inv@212@01 (Seq_index c@149@01 i@250@01)) len@150@01)))
          (/ (to_real 1) (to_real 2))
          $Perm.No))
      (ite
        (and
          (img@216@01 (Seq_index c@149@01 i@250@01))
          (and
            (<= 0 (inv@215@01 (Seq_index c@149@01 i@250@01)))
            (< (inv@215@01 (Seq_index c@149@01 i@250@01)) len@150@01)))
        $Perm.Write
        $Perm.No))
    (ite
      (and
        (img@219@01 (Seq_index c@149@01 i@250@01))
        (and
          (<= 0 (inv@218@01 (Seq_index c@149@01 i@250@01)))
          (< (inv@218@01 (Seq_index c@149@01 i@250@01)) (- len@150@01 1))))
      (/ (to_real 1) (to_real 2))
      $Perm.No)))))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
; [eval] i + 2
(pop) ; 6
(push) ; 6
; [else-branch: 156 | !(1 <= i@250@01 && i@250@01 < len@150@01)]
(assert (not (and (<= 1 i@250@01) (< i@250@01 len@150@01))))
(pop) ; 6
(pop) ; 5
; Joined path conditions
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@210@01 r)
      (and (<= 0 (inv@209@01 r)) (< (inv@209@01 r) len@150@01)))
    (=
      ($FVF.lookup_Ref__Integer_value (as sm@247@01  $FVF<Ref__Integer_value>) r)
      ($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second $t@207@01))) r)))
  :pattern (($FVF.lookup_Ref__Integer_value (as sm@247@01  $FVF<Ref__Integer_value>) r))
  :pattern (($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second $t@207@01))) r))
  :qid |qp.fvfValDef29|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@213@01 r)
      (and (<= 0 (inv@212@01 r)) (< (inv@212@01 r) len@150@01)))
    (=
      ($FVF.lookup_Ref__Integer_value (as sm@247@01  $FVF<Ref__Integer_value>) r)
      ($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@207@01))))) r)))
  :pattern (($FVF.lookup_Ref__Integer_value (as sm@247@01  $FVF<Ref__Integer_value>) r))
  :pattern (($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@207@01))))) r))
  :qid |qp.fvfValDef30|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@216@01 r)
      (and (<= 0 (inv@215@01 r)) (< (inv@215@01 r) len@150@01)))
    (=
      ($FVF.lookup_Ref__Integer_value (as sm@247@01  $FVF<Ref__Integer_value>) r)
      ($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@207@01))))))) r)))
  :pattern (($FVF.lookup_Ref__Integer_value (as sm@247@01  $FVF<Ref__Integer_value>) r))
  :pattern (($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@207@01))))))) r))
  :qid |qp.fvfValDef31|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@219@01 r)
      (and (<= 0 (inv@218@01 r)) (< (inv@218@01 r) (- len@150@01 1))))
    (=
      ($FVF.lookup_Ref__Integer_value (as sm@247@01  $FVF<Ref__Integer_value>) r)
      ($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@207@01)))))))) r)))
  :pattern (($FVF.lookup_Ref__Integer_value (as sm@247@01  $FVF<Ref__Integer_value>) r))
  :pattern (($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@207@01)))))))) r))
  :qid |qp.fvfValDef32|)))
; Joined path conditions
(assert (or
  (not (and (<= 1 i@250@01) (< i@250@01 len@150@01)))
  (and (<= 1 i@250@01) (< i@250@01 len@150@01))))
(pop) ; 4
; Nested auxiliary terms: globals (aux)
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@210@01 r)
      (and (<= 0 (inv@209@01 r)) (< (inv@209@01 r) len@150@01)))
    (=
      ($FVF.lookup_Ref__Integer_value (as sm@247@01  $FVF<Ref__Integer_value>) r)
      ($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second $t@207@01))) r)))
  :pattern (($FVF.lookup_Ref__Integer_value (as sm@247@01  $FVF<Ref__Integer_value>) r))
  :pattern (($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second $t@207@01))) r))
  :qid |qp.fvfValDef29|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@213@01 r)
      (and (<= 0 (inv@212@01 r)) (< (inv@212@01 r) len@150@01)))
    (=
      ($FVF.lookup_Ref__Integer_value (as sm@247@01  $FVF<Ref__Integer_value>) r)
      ($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@207@01))))) r)))
  :pattern (($FVF.lookup_Ref__Integer_value (as sm@247@01  $FVF<Ref__Integer_value>) r))
  :pattern (($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@207@01))))) r))
  :qid |qp.fvfValDef30|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@216@01 r)
      (and (<= 0 (inv@215@01 r)) (< (inv@215@01 r) len@150@01)))
    (=
      ($FVF.lookup_Ref__Integer_value (as sm@247@01  $FVF<Ref__Integer_value>) r)
      ($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@207@01))))))) r)))
  :pattern (($FVF.lookup_Ref__Integer_value (as sm@247@01  $FVF<Ref__Integer_value>) r))
  :pattern (($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@207@01))))))) r))
  :qid |qp.fvfValDef31|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@219@01 r)
      (and (<= 0 (inv@218@01 r)) (< (inv@218@01 r) (- len@150@01 1))))
    (=
      ($FVF.lookup_Ref__Integer_value (as sm@247@01  $FVF<Ref__Integer_value>) r)
      ($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@207@01)))))))) r)))
  :pattern (($FVF.lookup_Ref__Integer_value (as sm@247@01  $FVF<Ref__Integer_value>) r))
  :pattern (($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@207@01)))))))) r))
  :qid |qp.fvfValDef32|)))
; Nested auxiliary terms: non-globals (aux)
(assert (forall ((i@250@01 Int)) (!
  (and
    (or (<= 1 i@250@01) (not (<= 1 i@250@01)))
    (or
      (not (and (<= 1 i@250@01) (< i@250@01 len@150@01)))
      (and (<= 1 i@250@01) (< i@250@01 len@150@01))))
  :pattern ((Seq_index c@149@01 i@250@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/third_party/test_forward_dep_c.vpr@81@12@81@104-aux|)))
(assert (forall ((i@250@01 Int)) (!
  (=>
    (and (<= 1 i@250@01) (< i@250@01 len@150@01))
    (=
      ($FVF.lookup_Ref__Integer_value (as sm@247@01  $FVF<Ref__Integer_value>) (Seq_index
        c@149@01
        i@250@01))
      (+ i@250@01 2)))
  :pattern ((Seq_index c@149@01 i@250@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/third_party/test_forward_dep_c.vpr@81@12@81@104|)))
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
; [eval] |a| == len
; [eval] |a|
(declare-const i@251@01 Int)
(set-option :timeout 0)
(push) ; 4
; [eval] 0 <= i && i < len
; [eval] 0 <= i
(push) ; 5
; [then-branch: 157 | !(0 <= i@251@01) | live]
; [else-branch: 157 | 0 <= i@251@01 | live]
(push) ; 6
; [then-branch: 157 | !(0 <= i@251@01)]
(assert (not (<= 0 i@251@01)))
(pop) ; 6
(push) ; 6
; [else-branch: 157 | 0 <= i@251@01]
(assert (<= 0 i@251@01))
; [eval] i < len
(pop) ; 6
(pop) ; 5
; Joined path conditions
; Joined path conditions
(assert (or (<= 0 i@251@01) (not (<= 0 i@251@01))))
(assert (and (<= 0 i@251@01) (< i@251@01 len@150@01)))
; [eval] a[i]
(push) ; 5
(assert (not (>= i@251@01 0)))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(push) ; 5
(assert (not (< i@251@01 (Seq_length a@147@01))))
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
    (and (<= 0 i@251@01) (< i@251@01 len@150@01))
    (or (<= 0 i@251@01) (not (<= 0 i@251@01))))
  :pattern ((Seq_index a@147@01 i@251@01))
  :qid |Ref__Integer_value-aux|)))
; Check receiver injectivity
(push) ; 4
(assert (not (forall ((i1@251@01 Int) (i2@251@01 Int)) (!
  (=>
    (and
      (and (<= 0 i1@251@01) (< i1@251@01 len@150@01))
      (and (<= 0 i2@251@01) (< i2@251@01 len@150@01))
      (= (Seq_index a@147@01 i1@251@01) (Seq_index a@147@01 i2@251@01)))
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
    (and (<= 0 i@251@01) (< i@251@01 len@150@01))
    (and
      (= (inv@252@01 (Seq_index a@147@01 i@251@01)) i@251@01)
      (img@253@01 (Seq_index a@147@01 i@251@01))))
  :pattern ((Seq_index a@147@01 i@251@01))
  :qid |Ref__Integer_value-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@253@01 r)
      (and (<= 0 (inv@252@01 r)) (< (inv@252@01 r) len@150@01)))
    (= (Seq_index a@147@01 (inv@252@01 r)) r))
  :pattern ((inv@252@01 r))
  :qid |Ref__Integer_value-fctOfInv|)))
(push) ; 4
(set-option :timeout 10)
(assert (not (forall ((i@251@01 Int)) (!
  (= (Seq_index a@147@01 i@251@01) (Seq_index b@148@01 i@251@01))
  
  :qid |quant-u-8777|))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not (forall ((i@251@01 Int)) (!
  (= (Seq_index a@147@01 i@251@01) (Seq_index c@149@01 i@251@01))
  
  :qid |quant-u-8778|))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; Precomputing data for removing quantified permissions
(define-fun pTaken@254@01 ((r $Ref)) $Perm
  (ite
    (and
      (and (<= 0 (inv@252@01 r)) (< (inv@252@01 r) len@150@01))
      (img@253@01 r)
      (= r (Seq_index a@147@01 (inv@252@01 r))))
    ($Perm.min
      (ite
        (and
          (img@210@01 r)
          (and (<= 0 (inv@209@01 r)) (< (inv@209@01 r) len@150@01)))
        (/ (to_real 1) (to_real 2))
        $Perm.No)
      $Perm.Write)
    $Perm.No))
(define-fun pTaken@255@01 ((r $Ref)) $Perm
  (ite
    (and
      (and (<= 0 (inv@252@01 r)) (< (inv@252@01 r) len@150@01))
      (img@253@01 r)
      (= r (Seq_index a@147@01 (inv@252@01 r))))
    ($Perm.min
      (ite
        (and
          (img@213@01 r)
          (and (<= 0 (inv@212@01 r)) (< (inv@212@01 r) len@150@01)))
        (/ (to_real 1) (to_real 2))
        $Perm.No)
      (- $Perm.Write (pTaken@254@01 r)))
    $Perm.No))
(define-fun pTaken@256@01 ((r $Ref)) $Perm
  (ite
    (and
      (and (<= 0 (inv@252@01 r)) (< (inv@252@01 r) len@150@01))
      (img@253@01 r)
      (= r (Seq_index a@147@01 (inv@252@01 r))))
    ($Perm.min
      (ite
        (and
          (img@216@01 r)
          (and (<= 0 (inv@215@01 r)) (< (inv@215@01 r) len@150@01)))
        $Perm.Write
        $Perm.No)
      (- (- $Perm.Write (pTaken@254@01 r)) (pTaken@255@01 r)))
    $Perm.No))
(define-fun pTaken@257@01 ((r $Ref)) $Perm
  (ite
    (and
      (and (<= 0 (inv@252@01 r)) (< (inv@252@01 r) len@150@01))
      (img@253@01 r)
      (= r (Seq_index a@147@01 (inv@252@01 r))))
    ($Perm.min
      (ite
        (and
          (img@219@01 r)
          (and (<= 0 (inv@218@01 r)) (< (inv@218@01 r) (- len@150@01 1))))
        (/ (to_real 1) (to_real 2))
        $Perm.No)
      (-
        (- (- $Perm.Write (pTaken@254@01 r)) (pTaken@255@01 r))
        (pTaken@256@01 r)))
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
          (img@210@01 r)
          (and (<= 0 (inv@209@01 r)) (< (inv@209@01 r) len@150@01)))
        (/ (to_real 1) (to_real 2))
        $Perm.No)
      (pTaken@254@01 r))
    $Perm.No)
  
  :qid |quant-u-8780|))))
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
      (and (<= 0 (inv@252@01 r)) (< (inv@252@01 r) len@150@01))
      (img@253@01 r)
      (= r (Seq_index a@147@01 (inv@252@01 r))))
    (= (- $Perm.Write (pTaken@254@01 r)) $Perm.No))
  
  :qid |quant-u-8781|))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; Final check if taken enough permissions
; Done removing quantified permissions
; [eval] |b| == len
; [eval] |b|
(declare-const i@258@01 Int)
(set-option :timeout 0)
(push) ; 4
; [eval] 0 <= i && i < len
; [eval] 0 <= i
(push) ; 5
; [then-branch: 158 | !(0 <= i@258@01) | live]
; [else-branch: 158 | 0 <= i@258@01 | live]
(push) ; 6
; [then-branch: 158 | !(0 <= i@258@01)]
(assert (not (<= 0 i@258@01)))
(pop) ; 6
(push) ; 6
; [else-branch: 158 | 0 <= i@258@01]
(assert (<= 0 i@258@01))
; [eval] i < len
(pop) ; 6
(pop) ; 5
; Joined path conditions
; Joined path conditions
(assert (or (<= 0 i@258@01) (not (<= 0 i@258@01))))
(assert (and (<= 0 i@258@01) (< i@258@01 len@150@01)))
; [eval] b[i]
(push) ; 5
(assert (not (>= i@258@01 0)))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(push) ; 5
(assert (not (< i@258@01 (Seq_length b@148@01))))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(pop) ; 4
(declare-fun inv@259@01 ($Ref) Int)
(declare-fun img@260@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
(assert (forall ((i@258@01 Int)) (!
  (=>
    (and (<= 0 i@258@01) (< i@258@01 len@150@01))
    (or (<= 0 i@258@01) (not (<= 0 i@258@01))))
  :pattern ((Seq_index b@148@01 i@258@01))
  :qid |Ref__Integer_value-aux|)))
; Check receiver injectivity
(push) ; 4
(assert (not (forall ((i1@258@01 Int) (i2@258@01 Int)) (!
  (=>
    (and
      (and (<= 0 i1@258@01) (< i1@258@01 len@150@01))
      (and (<= 0 i2@258@01) (< i2@258@01 len@150@01))
      (= (Seq_index b@148@01 i1@258@01) (Seq_index b@148@01 i2@258@01)))
    (= i1@258@01 i2@258@01))
  
  :qid |Ref__Integer_value-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((i@258@01 Int)) (!
  (=>
    (and (<= 0 i@258@01) (< i@258@01 len@150@01))
    (and
      (= (inv@259@01 (Seq_index b@148@01 i@258@01)) i@258@01)
      (img@260@01 (Seq_index b@148@01 i@258@01))))
  :pattern ((Seq_index b@148@01 i@258@01))
  :qid |Ref__Integer_value-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@260@01 r)
      (and (<= 0 (inv@259@01 r)) (< (inv@259@01 r) len@150@01)))
    (= (Seq_index b@148@01 (inv@259@01 r)) r))
  :pattern ((inv@259@01 r))
  :qid |Ref__Integer_value-fctOfInv|)))
(push) ; 4
(set-option :timeout 10)
(assert (not (forall ((i@258@01 Int)) (!
  (= (Seq_index b@148@01 i@258@01) (Seq_index a@147@01 i@258@01))
  
  :qid |quant-u-8783|))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not (forall ((i@258@01 Int)) (!
  (= (Seq_index b@148@01 i@258@01) (Seq_index c@149@01 i@258@01))
  
  :qid |quant-u-8784|))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; Precomputing data for removing quantified permissions
(define-fun pTaken@261@01 ((r $Ref)) $Perm
  (ite
    (and
      (and (<= 0 (inv@259@01 r)) (< (inv@259@01 r) len@150@01))
      (img@260@01 r)
      (= r (Seq_index b@148@01 (inv@259@01 r))))
    ($Perm.min
      (ite
        (and
          (img@219@01 r)
          (and (<= 0 (inv@218@01 r)) (< (inv@218@01 r) (- len@150@01 1))))
        (/ (to_real 1) (to_real 2))
        $Perm.No)
      (/ (to_real 1) (to_real 2)))
    $Perm.No))
(define-fun pTaken@262@01 ((r $Ref)) $Perm
  (ite
    (and
      (and (<= 0 (inv@259@01 r)) (< (inv@259@01 r) len@150@01))
      (img@260@01 r)
      (= r (Seq_index b@148@01 (inv@259@01 r))))
    ($Perm.min
      (ite
        (and
          (img@216@01 r)
          (and (<= 0 (inv@215@01 r)) (< (inv@215@01 r) len@150@01)))
        $Perm.Write
        $Perm.No)
      (- (/ (to_real 1) (to_real 2)) (pTaken@261@01 r)))
    $Perm.No))
(define-fun pTaken@263@01 ((r $Ref)) $Perm
  (ite
    (and
      (and (<= 0 (inv@259@01 r)) (< (inv@259@01 r) len@150@01))
      (img@260@01 r)
      (= r (Seq_index b@148@01 (inv@259@01 r))))
    ($Perm.min
      (ite
        (and
          (img@213@01 r)
          (and (<= 0 (inv@212@01 r)) (< (inv@212@01 r) len@150@01)))
        (/ (to_real 1) (to_real 2))
        $Perm.No)
      (- (- (/ (to_real 1) (to_real 2)) (pTaken@261@01 r)) (pTaken@262@01 r)))
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
          (img@219@01 r)
          (and (<= 0 (inv@218@01 r)) (< (inv@218@01 r) (- len@150@01 1))))
        (/ (to_real 1) (to_real 2))
        $Perm.No)
      (pTaken@261@01 r))
    $Perm.No)
  
  :qid |quant-u-8786|))))
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
      (and (<= 0 (inv@259@01 r)) (< (inv@259@01 r) len@150@01))
      (img@260@01 r)
      (= r (Seq_index b@148@01 (inv@259@01 r))))
    (= (- (/ (to_real 1) (to_real 2)) (pTaken@261@01 r)) $Perm.No))
  
  :qid |quant-u-8787|))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; Final check if taken enough permissions
; Done removing quantified permissions
; [eval] |c| == len
; [eval] |c|
(declare-const i@264@01 Int)
(set-option :timeout 0)
(push) ; 4
; [eval] 0 <= i && i < len
; [eval] 0 <= i
(push) ; 5
; [then-branch: 159 | !(0 <= i@264@01) | live]
; [else-branch: 159 | 0 <= i@264@01 | live]
(push) ; 6
; [then-branch: 159 | !(0 <= i@264@01)]
(assert (not (<= 0 i@264@01)))
(pop) ; 6
(push) ; 6
; [else-branch: 159 | 0 <= i@264@01]
(assert (<= 0 i@264@01))
; [eval] i < len
(pop) ; 6
(pop) ; 5
; Joined path conditions
; Joined path conditions
(assert (or (<= 0 i@264@01) (not (<= 0 i@264@01))))
(assert (and (<= 0 i@264@01) (< i@264@01 len@150@01)))
; [eval] c[i]
(push) ; 5
(assert (not (>= i@264@01 0)))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(push) ; 5
(assert (not (< i@264@01 (Seq_length c@149@01))))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(pop) ; 4
(declare-fun inv@265@01 ($Ref) Int)
(declare-fun img@266@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
(assert (forall ((i@264@01 Int)) (!
  (=>
    (and (<= 0 i@264@01) (< i@264@01 len@150@01))
    (or (<= 0 i@264@01) (not (<= 0 i@264@01))))
  :pattern ((Seq_index c@149@01 i@264@01))
  :qid |Ref__Integer_value-aux|)))
; Check receiver injectivity
(push) ; 4
(assert (not (forall ((i1@264@01 Int) (i2@264@01 Int)) (!
  (=>
    (and
      (and (<= 0 i1@264@01) (< i1@264@01 len@150@01))
      (and (<= 0 i2@264@01) (< i2@264@01 len@150@01))
      (= (Seq_index c@149@01 i1@264@01) (Seq_index c@149@01 i2@264@01)))
    (= i1@264@01 i2@264@01))
  
  :qid |Ref__Integer_value-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((i@264@01 Int)) (!
  (=>
    (and (<= 0 i@264@01) (< i@264@01 len@150@01))
    (and
      (= (inv@265@01 (Seq_index c@149@01 i@264@01)) i@264@01)
      (img@266@01 (Seq_index c@149@01 i@264@01))))
  :pattern ((Seq_index c@149@01 i@264@01))
  :qid |Ref__Integer_value-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@266@01 r)
      (and (<= 0 (inv@265@01 r)) (< (inv@265@01 r) len@150@01)))
    (= (Seq_index c@149@01 (inv@265@01 r)) r))
  :pattern ((inv@265@01 r))
  :qid |Ref__Integer_value-fctOfInv|)))
(push) ; 4
(set-option :timeout 10)
(assert (not (forall ((i@264@01 Int)) (!
  (= (Seq_index c@149@01 i@264@01) (Seq_index b@148@01 i@264@01))
  
  :qid |quant-u-8789|))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; Precomputing data for removing quantified permissions
(define-fun pTaken@267@01 ((r $Ref)) $Perm
  (ite
    (and
      (and (<= 0 (inv@265@01 r)) (< (inv@265@01 r) len@150@01))
      (img@266@01 r)
      (= r (Seq_index c@149@01 (inv@265@01 r))))
    ($Perm.min
      (ite
        (and
          (img@213@01 r)
          (and (<= 0 (inv@212@01 r)) (< (inv@212@01 r) len@150@01)))
        (/ (to_real 1) (to_real 2))
        $Perm.No)
      $Perm.Write)
    $Perm.No))
(define-fun pTaken@268@01 ((r $Ref)) $Perm
  (ite
    (and
      (and (<= 0 (inv@265@01 r)) (< (inv@265@01 r) len@150@01))
      (img@266@01 r)
      (= r (Seq_index c@149@01 (inv@265@01 r))))
    ($Perm.min
      (ite
        (and
          (img@216@01 r)
          (and (<= 0 (inv@215@01 r)) (< (inv@215@01 r) len@150@01)))
        $Perm.Write
        $Perm.No)
      (- $Perm.Write (pTaken@267@01 r)))
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
          (img@213@01 r)
          (and (<= 0 (inv@212@01 r)) (< (inv@212@01 r) len@150@01)))
        (/ (to_real 1) (to_real 2))
        $Perm.No)
      (pTaken@267@01 r))
    $Perm.No)
  
  :qid |quant-u-8791|))))
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
      (and (<= 0 (inv@265@01 r)) (< (inv@265@01 r) len@150@01))
      (img@266@01 r)
      (= r (Seq_index c@149@01 (inv@265@01 r))))
    (= (- $Perm.Write (pTaken@267@01 r)) $Perm.No))
  
  :qid |quant-u-8792|))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; Final check if taken enough permissions
; Done removing quantified permissions
; [eval] (forall i: Int :: { a[i] } 0 <= i && i < len ==> a[i].Ref__Integer_value == i + 1)
(declare-const i@269@01 Int)
(set-option :timeout 0)
(push) ; 4
; [eval] 0 <= i && i < len ==> a[i].Ref__Integer_value == i + 1
; [eval] 0 <= i && i < len
; [eval] 0 <= i
(push) ; 5
; [then-branch: 160 | !(0 <= i@269@01) | live]
; [else-branch: 160 | 0 <= i@269@01 | live]
(push) ; 6
; [then-branch: 160 | !(0 <= i@269@01)]
(assert (not (<= 0 i@269@01)))
(pop) ; 6
(push) ; 6
; [else-branch: 160 | 0 <= i@269@01]
(assert (<= 0 i@269@01))
; [eval] i < len
(pop) ; 6
(pop) ; 5
; Joined path conditions
; Joined path conditions
(assert (or (<= 0 i@269@01) (not (<= 0 i@269@01))))
(push) ; 5
; [then-branch: 161 | 0 <= i@269@01 && i@269@01 < len@150@01 | live]
; [else-branch: 161 | !(0 <= i@269@01 && i@269@01 < len@150@01) | live]
(push) ; 6
; [then-branch: 161 | 0 <= i@269@01 && i@269@01 < len@150@01]
(assert (and (<= 0 i@269@01) (< i@269@01 len@150@01)))
; [eval] a[i].Ref__Integer_value == i + 1
; [eval] a[i]
(push) ; 7
(assert (not (>= i@269@01 0)))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(push) ; 7
(assert (not (< i@269@01 (Seq_length a@147@01))))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(assert (and
  (forall ((r $Ref)) (!
    (=>
      (and
        (img@210@01 r)
        (and (<= 0 (inv@209@01 r)) (< (inv@209@01 r) len@150@01)))
      (=
        ($FVF.lookup_Ref__Integer_value (as sm@247@01  $FVF<Ref__Integer_value>) r)
        ($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second $t@207@01))) r)))
    :pattern (($FVF.lookup_Ref__Integer_value (as sm@247@01  $FVF<Ref__Integer_value>) r))
    :pattern (($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second $t@207@01))) r))
    :qid |qp.fvfValDef29|))
  (forall ((r $Ref)) (!
    (=>
      (and
        (img@213@01 r)
        (and (<= 0 (inv@212@01 r)) (< (inv@212@01 r) len@150@01)))
      (=
        ($FVF.lookup_Ref__Integer_value (as sm@247@01  $FVF<Ref__Integer_value>) r)
        ($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@207@01))))) r)))
    :pattern (($FVF.lookup_Ref__Integer_value (as sm@247@01  $FVF<Ref__Integer_value>) r))
    :pattern (($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@207@01))))) r))
    :qid |qp.fvfValDef30|))
  (forall ((r $Ref)) (!
    (=>
      (and
        (img@216@01 r)
        (and (<= 0 (inv@215@01 r)) (< (inv@215@01 r) len@150@01)))
      (=
        ($FVF.lookup_Ref__Integer_value (as sm@247@01  $FVF<Ref__Integer_value>) r)
        ($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@207@01))))))) r)))
    :pattern (($FVF.lookup_Ref__Integer_value (as sm@247@01  $FVF<Ref__Integer_value>) r))
    :pattern (($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@207@01))))))) r))
    :qid |qp.fvfValDef31|))
  (forall ((r $Ref)) (!
    (=>
      (and
        (img@219@01 r)
        (and (<= 0 (inv@218@01 r)) (< (inv@218@01 r) (- len@150@01 1))))
      (=
        ($FVF.lookup_Ref__Integer_value (as sm@247@01  $FVF<Ref__Integer_value>) r)
        ($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@207@01)))))))) r)))
    :pattern (($FVF.lookup_Ref__Integer_value (as sm@247@01  $FVF<Ref__Integer_value>) r))
    :pattern (($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@207@01)))))))) r))
    :qid |qp.fvfValDef32|))))
(push) ; 7
(assert (not (<
  $Perm.No
  (+
    (+
      (+
        (ite
          (and
            (img@210@01 (Seq_index a@147@01 i@269@01))
            (and
              (<= 0 (inv@209@01 (Seq_index a@147@01 i@269@01)))
              (< (inv@209@01 (Seq_index a@147@01 i@269@01)) len@150@01)))
          (/ (to_real 1) (to_real 2))
          $Perm.No)
        (ite
          (and
            (img@213@01 (Seq_index a@147@01 i@269@01))
            (and
              (<= 0 (inv@212@01 (Seq_index a@147@01 i@269@01)))
              (< (inv@212@01 (Seq_index a@147@01 i@269@01)) len@150@01)))
          (/ (to_real 1) (to_real 2))
          $Perm.No))
      (ite
        (and
          (img@216@01 (Seq_index a@147@01 i@269@01))
          (and
            (<= 0 (inv@215@01 (Seq_index a@147@01 i@269@01)))
            (< (inv@215@01 (Seq_index a@147@01 i@269@01)) len@150@01)))
        $Perm.Write
        $Perm.No))
    (ite
      (and
        (img@219@01 (Seq_index a@147@01 i@269@01))
        (and
          (<= 0 (inv@218@01 (Seq_index a@147@01 i@269@01)))
          (< (inv@218@01 (Seq_index a@147@01 i@269@01)) (- len@150@01 1))))
      (/ (to_real 1) (to_real 2))
      $Perm.No)))))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
; [eval] i + 1
(pop) ; 6
(push) ; 6
; [else-branch: 161 | !(0 <= i@269@01 && i@269@01 < len@150@01)]
(assert (not (and (<= 0 i@269@01) (< i@269@01 len@150@01))))
(pop) ; 6
(pop) ; 5
; Joined path conditions
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@210@01 r)
      (and (<= 0 (inv@209@01 r)) (< (inv@209@01 r) len@150@01)))
    (=
      ($FVF.lookup_Ref__Integer_value (as sm@247@01  $FVF<Ref__Integer_value>) r)
      ($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second $t@207@01))) r)))
  :pattern (($FVF.lookup_Ref__Integer_value (as sm@247@01  $FVF<Ref__Integer_value>) r))
  :pattern (($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second $t@207@01))) r))
  :qid |qp.fvfValDef29|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@213@01 r)
      (and (<= 0 (inv@212@01 r)) (< (inv@212@01 r) len@150@01)))
    (=
      ($FVF.lookup_Ref__Integer_value (as sm@247@01  $FVF<Ref__Integer_value>) r)
      ($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@207@01))))) r)))
  :pattern (($FVF.lookup_Ref__Integer_value (as sm@247@01  $FVF<Ref__Integer_value>) r))
  :pattern (($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@207@01))))) r))
  :qid |qp.fvfValDef30|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@216@01 r)
      (and (<= 0 (inv@215@01 r)) (< (inv@215@01 r) len@150@01)))
    (=
      ($FVF.lookup_Ref__Integer_value (as sm@247@01  $FVF<Ref__Integer_value>) r)
      ($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@207@01))))))) r)))
  :pattern (($FVF.lookup_Ref__Integer_value (as sm@247@01  $FVF<Ref__Integer_value>) r))
  :pattern (($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@207@01))))))) r))
  :qid |qp.fvfValDef31|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@219@01 r)
      (and (<= 0 (inv@218@01 r)) (< (inv@218@01 r) (- len@150@01 1))))
    (=
      ($FVF.lookup_Ref__Integer_value (as sm@247@01  $FVF<Ref__Integer_value>) r)
      ($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@207@01)))))))) r)))
  :pattern (($FVF.lookup_Ref__Integer_value (as sm@247@01  $FVF<Ref__Integer_value>) r))
  :pattern (($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@207@01)))))))) r))
  :qid |qp.fvfValDef32|)))
; Joined path conditions
(assert (or
  (not (and (<= 0 i@269@01) (< i@269@01 len@150@01)))
  (and (<= 0 i@269@01) (< i@269@01 len@150@01))))
(pop) ; 4
; Nested auxiliary terms: globals (aux)
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@210@01 r)
      (and (<= 0 (inv@209@01 r)) (< (inv@209@01 r) len@150@01)))
    (=
      ($FVF.lookup_Ref__Integer_value (as sm@247@01  $FVF<Ref__Integer_value>) r)
      ($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second $t@207@01))) r)))
  :pattern (($FVF.lookup_Ref__Integer_value (as sm@247@01  $FVF<Ref__Integer_value>) r))
  :pattern (($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second $t@207@01))) r))
  :qid |qp.fvfValDef29|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@213@01 r)
      (and (<= 0 (inv@212@01 r)) (< (inv@212@01 r) len@150@01)))
    (=
      ($FVF.lookup_Ref__Integer_value (as sm@247@01  $FVF<Ref__Integer_value>) r)
      ($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@207@01))))) r)))
  :pattern (($FVF.lookup_Ref__Integer_value (as sm@247@01  $FVF<Ref__Integer_value>) r))
  :pattern (($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@207@01))))) r))
  :qid |qp.fvfValDef30|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@216@01 r)
      (and (<= 0 (inv@215@01 r)) (< (inv@215@01 r) len@150@01)))
    (=
      ($FVF.lookup_Ref__Integer_value (as sm@247@01  $FVF<Ref__Integer_value>) r)
      ($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@207@01))))))) r)))
  :pattern (($FVF.lookup_Ref__Integer_value (as sm@247@01  $FVF<Ref__Integer_value>) r))
  :pattern (($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@207@01))))))) r))
  :qid |qp.fvfValDef31|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@219@01 r)
      (and (<= 0 (inv@218@01 r)) (< (inv@218@01 r) (- len@150@01 1))))
    (=
      ($FVF.lookup_Ref__Integer_value (as sm@247@01  $FVF<Ref__Integer_value>) r)
      ($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@207@01)))))))) r)))
  :pattern (($FVF.lookup_Ref__Integer_value (as sm@247@01  $FVF<Ref__Integer_value>) r))
  :pattern (($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@207@01)))))))) r))
  :qid |qp.fvfValDef32|)))
; Nested auxiliary terms: non-globals (aux)
(assert (forall ((i@269@01 Int)) (!
  (and
    (or (<= 0 i@269@01) (not (<= 0 i@269@01)))
    (or
      (not (and (<= 0 i@269@01) (< i@269@01 len@150@01)))
      (and (<= 0 i@269@01) (< i@269@01 len@150@01))))
  :pattern ((Seq_index a@147@01 i@269@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/third_party/test_forward_dep_c.vpr@196@12@196@89-aux|)))
(push) ; 4
(assert (not (forall ((i@269@01 Int)) (!
  (=>
    (and (<= 0 i@269@01) (< i@269@01 len@150@01))
    (=
      ($FVF.lookup_Ref__Integer_value (as sm@247@01  $FVF<Ref__Integer_value>) (Seq_index
        a@147@01
        i@269@01))
      (+ i@269@01 1)))
  :pattern ((Seq_index a@147@01 i@269@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/third_party/test_forward_dep_c.vpr@196@12@196@89|))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(assert (forall ((i@269@01 Int)) (!
  (=>
    (and (<= 0 i@269@01) (< i@269@01 len@150@01))
    (=
      ($FVF.lookup_Ref__Integer_value (as sm@247@01  $FVF<Ref__Integer_value>) (Seq_index
        a@147@01
        i@269@01))
      (+ i@269@01 1)))
  :pattern ((Seq_index a@147@01 i@269@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/third_party/test_forward_dep_c.vpr@196@12@196@89|)))
; [eval] (forall i: Int :: { b[i] } 0 <= i && i < len ==> b[i].Ref__Integer_value == i)
(declare-const i@270@01 Int)
(push) ; 4
; [eval] 0 <= i && i < len ==> b[i].Ref__Integer_value == i
; [eval] 0 <= i && i < len
; [eval] 0 <= i
(push) ; 5
; [then-branch: 162 | !(0 <= i@270@01) | live]
; [else-branch: 162 | 0 <= i@270@01 | live]
(push) ; 6
; [then-branch: 162 | !(0 <= i@270@01)]
(assert (not (<= 0 i@270@01)))
(pop) ; 6
(push) ; 6
; [else-branch: 162 | 0 <= i@270@01]
(assert (<= 0 i@270@01))
; [eval] i < len
(pop) ; 6
(pop) ; 5
; Joined path conditions
; Joined path conditions
(assert (or (<= 0 i@270@01) (not (<= 0 i@270@01))))
(push) ; 5
; [then-branch: 163 | 0 <= i@270@01 && i@270@01 < len@150@01 | live]
; [else-branch: 163 | !(0 <= i@270@01 && i@270@01 < len@150@01) | live]
(push) ; 6
; [then-branch: 163 | 0 <= i@270@01 && i@270@01 < len@150@01]
(assert (and (<= 0 i@270@01) (< i@270@01 len@150@01)))
; [eval] b[i].Ref__Integer_value == i
; [eval] b[i]
(push) ; 7
(assert (not (>= i@270@01 0)))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(push) ; 7
(assert (not (< i@270@01 (Seq_length b@148@01))))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(assert (and
  (forall ((r $Ref)) (!
    (=>
      (and
        (img@210@01 r)
        (and (<= 0 (inv@209@01 r)) (< (inv@209@01 r) len@150@01)))
      (=
        ($FVF.lookup_Ref__Integer_value (as sm@247@01  $FVF<Ref__Integer_value>) r)
        ($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second $t@207@01))) r)))
    :pattern (($FVF.lookup_Ref__Integer_value (as sm@247@01  $FVF<Ref__Integer_value>) r))
    :pattern (($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second $t@207@01))) r))
    :qid |qp.fvfValDef29|))
  (forall ((r $Ref)) (!
    (=>
      (and
        (img@213@01 r)
        (and (<= 0 (inv@212@01 r)) (< (inv@212@01 r) len@150@01)))
      (=
        ($FVF.lookup_Ref__Integer_value (as sm@247@01  $FVF<Ref__Integer_value>) r)
        ($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@207@01))))) r)))
    :pattern (($FVF.lookup_Ref__Integer_value (as sm@247@01  $FVF<Ref__Integer_value>) r))
    :pattern (($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@207@01))))) r))
    :qid |qp.fvfValDef30|))
  (forall ((r $Ref)) (!
    (=>
      (and
        (img@216@01 r)
        (and (<= 0 (inv@215@01 r)) (< (inv@215@01 r) len@150@01)))
      (=
        ($FVF.lookup_Ref__Integer_value (as sm@247@01  $FVF<Ref__Integer_value>) r)
        ($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@207@01))))))) r)))
    :pattern (($FVF.lookup_Ref__Integer_value (as sm@247@01  $FVF<Ref__Integer_value>) r))
    :pattern (($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@207@01))))))) r))
    :qid |qp.fvfValDef31|))
  (forall ((r $Ref)) (!
    (=>
      (and
        (img@219@01 r)
        (and (<= 0 (inv@218@01 r)) (< (inv@218@01 r) (- len@150@01 1))))
      (=
        ($FVF.lookup_Ref__Integer_value (as sm@247@01  $FVF<Ref__Integer_value>) r)
        ($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@207@01)))))))) r)))
    :pattern (($FVF.lookup_Ref__Integer_value (as sm@247@01  $FVF<Ref__Integer_value>) r))
    :pattern (($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@207@01)))))))) r))
    :qid |qp.fvfValDef32|))))
(push) ; 7
(assert (not (<
  $Perm.No
  (+
    (+
      (+
        (ite
          (and
            (img@210@01 (Seq_index b@148@01 i@270@01))
            (and
              (<= 0 (inv@209@01 (Seq_index b@148@01 i@270@01)))
              (< (inv@209@01 (Seq_index b@148@01 i@270@01)) len@150@01)))
          (/ (to_real 1) (to_real 2))
          $Perm.No)
        (ite
          (and
            (img@213@01 (Seq_index b@148@01 i@270@01))
            (and
              (<= 0 (inv@212@01 (Seq_index b@148@01 i@270@01)))
              (< (inv@212@01 (Seq_index b@148@01 i@270@01)) len@150@01)))
          (/ (to_real 1) (to_real 2))
          $Perm.No))
      (ite
        (and
          (img@216@01 (Seq_index b@148@01 i@270@01))
          (and
            (<= 0 (inv@215@01 (Seq_index b@148@01 i@270@01)))
            (< (inv@215@01 (Seq_index b@148@01 i@270@01)) len@150@01)))
        $Perm.Write
        $Perm.No))
    (ite
      (and
        (img@219@01 (Seq_index b@148@01 i@270@01))
        (and
          (<= 0 (inv@218@01 (Seq_index b@148@01 i@270@01)))
          (< (inv@218@01 (Seq_index b@148@01 i@270@01)) (- len@150@01 1))))
      (/ (to_real 1) (to_real 2))
      $Perm.No)))))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(pop) ; 6
(push) ; 6
; [else-branch: 163 | !(0 <= i@270@01 && i@270@01 < len@150@01)]
(assert (not (and (<= 0 i@270@01) (< i@270@01 len@150@01))))
(pop) ; 6
(pop) ; 5
; Joined path conditions
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@210@01 r)
      (and (<= 0 (inv@209@01 r)) (< (inv@209@01 r) len@150@01)))
    (=
      ($FVF.lookup_Ref__Integer_value (as sm@247@01  $FVF<Ref__Integer_value>) r)
      ($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second $t@207@01))) r)))
  :pattern (($FVF.lookup_Ref__Integer_value (as sm@247@01  $FVF<Ref__Integer_value>) r))
  :pattern (($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second $t@207@01))) r))
  :qid |qp.fvfValDef29|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@213@01 r)
      (and (<= 0 (inv@212@01 r)) (< (inv@212@01 r) len@150@01)))
    (=
      ($FVF.lookup_Ref__Integer_value (as sm@247@01  $FVF<Ref__Integer_value>) r)
      ($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@207@01))))) r)))
  :pattern (($FVF.lookup_Ref__Integer_value (as sm@247@01  $FVF<Ref__Integer_value>) r))
  :pattern (($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@207@01))))) r))
  :qid |qp.fvfValDef30|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@216@01 r)
      (and (<= 0 (inv@215@01 r)) (< (inv@215@01 r) len@150@01)))
    (=
      ($FVF.lookup_Ref__Integer_value (as sm@247@01  $FVF<Ref__Integer_value>) r)
      ($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@207@01))))))) r)))
  :pattern (($FVF.lookup_Ref__Integer_value (as sm@247@01  $FVF<Ref__Integer_value>) r))
  :pattern (($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@207@01))))))) r))
  :qid |qp.fvfValDef31|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@219@01 r)
      (and (<= 0 (inv@218@01 r)) (< (inv@218@01 r) (- len@150@01 1))))
    (=
      ($FVF.lookup_Ref__Integer_value (as sm@247@01  $FVF<Ref__Integer_value>) r)
      ($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@207@01)))))))) r)))
  :pattern (($FVF.lookup_Ref__Integer_value (as sm@247@01  $FVF<Ref__Integer_value>) r))
  :pattern (($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@207@01)))))))) r))
  :qid |qp.fvfValDef32|)))
; Joined path conditions
(assert (or
  (not (and (<= 0 i@270@01) (< i@270@01 len@150@01)))
  (and (<= 0 i@270@01) (< i@270@01 len@150@01))))
(pop) ; 4
; Nested auxiliary terms: globals (aux)
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@210@01 r)
      (and (<= 0 (inv@209@01 r)) (< (inv@209@01 r) len@150@01)))
    (=
      ($FVF.lookup_Ref__Integer_value (as sm@247@01  $FVF<Ref__Integer_value>) r)
      ($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second $t@207@01))) r)))
  :pattern (($FVF.lookup_Ref__Integer_value (as sm@247@01  $FVF<Ref__Integer_value>) r))
  :pattern (($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second $t@207@01))) r))
  :qid |qp.fvfValDef29|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@213@01 r)
      (and (<= 0 (inv@212@01 r)) (< (inv@212@01 r) len@150@01)))
    (=
      ($FVF.lookup_Ref__Integer_value (as sm@247@01  $FVF<Ref__Integer_value>) r)
      ($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@207@01))))) r)))
  :pattern (($FVF.lookup_Ref__Integer_value (as sm@247@01  $FVF<Ref__Integer_value>) r))
  :pattern (($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@207@01))))) r))
  :qid |qp.fvfValDef30|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@216@01 r)
      (and (<= 0 (inv@215@01 r)) (< (inv@215@01 r) len@150@01)))
    (=
      ($FVF.lookup_Ref__Integer_value (as sm@247@01  $FVF<Ref__Integer_value>) r)
      ($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@207@01))))))) r)))
  :pattern (($FVF.lookup_Ref__Integer_value (as sm@247@01  $FVF<Ref__Integer_value>) r))
  :pattern (($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@207@01))))))) r))
  :qid |qp.fvfValDef31|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@219@01 r)
      (and (<= 0 (inv@218@01 r)) (< (inv@218@01 r) (- len@150@01 1))))
    (=
      ($FVF.lookup_Ref__Integer_value (as sm@247@01  $FVF<Ref__Integer_value>) r)
      ($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@207@01)))))))) r)))
  :pattern (($FVF.lookup_Ref__Integer_value (as sm@247@01  $FVF<Ref__Integer_value>) r))
  :pattern (($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@207@01)))))))) r))
  :qid |qp.fvfValDef32|)))
; Nested auxiliary terms: non-globals (aux)
(assert (forall ((i@270@01 Int)) (!
  (and
    (or (<= 0 i@270@01) (not (<= 0 i@270@01)))
    (or
      (not (and (<= 0 i@270@01) (< i@270@01 len@150@01)))
      (and (<= 0 i@270@01) (< i@270@01 len@150@01))))
  :pattern ((Seq_index b@148@01 i@270@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/third_party/test_forward_dep_c.vpr@197@12@197@85-aux|)))
(push) ; 4
(assert (not (forall ((i@270@01 Int)) (!
  (=>
    (and (<= 0 i@270@01) (< i@270@01 len@150@01))
    (=
      ($FVF.lookup_Ref__Integer_value (as sm@247@01  $FVF<Ref__Integer_value>) (Seq_index
        b@148@01
        i@270@01))
      i@270@01))
  :pattern ((Seq_index b@148@01 i@270@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/third_party/test_forward_dep_c.vpr@197@12@197@85|))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(assert (forall ((i@270@01 Int)) (!
  (=>
    (and (<= 0 i@270@01) (< i@270@01 len@150@01))
    (=
      ($FVF.lookup_Ref__Integer_value (as sm@247@01  $FVF<Ref__Integer_value>) (Seq_index
        b@148@01
        i@270@01))
      i@270@01))
  :pattern ((Seq_index b@148@01 i@270@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/third_party/test_forward_dep_c.vpr@197@12@197@85|)))
; [eval] (forall i: Int :: { c[i] } 0 < i && i < len ==> c[i].Ref__Integer_value == i + 2)
(declare-const i@271@01 Int)
(push) ; 4
; [eval] 0 < i && i < len ==> c[i].Ref__Integer_value == i + 2
; [eval] 0 < i && i < len
; [eval] 0 < i
(push) ; 5
; [then-branch: 164 | !(0 < i@271@01) | live]
; [else-branch: 164 | 0 < i@271@01 | live]
(push) ; 6
; [then-branch: 164 | !(0 < i@271@01)]
(assert (not (< 0 i@271@01)))
(pop) ; 6
(push) ; 6
; [else-branch: 164 | 0 < i@271@01]
(assert (< 0 i@271@01))
; [eval] i < len
(pop) ; 6
(pop) ; 5
; Joined path conditions
; Joined path conditions
(assert (or (< 0 i@271@01) (not (< 0 i@271@01))))
(push) ; 5
; [then-branch: 165 | 0 < i@271@01 && i@271@01 < len@150@01 | live]
; [else-branch: 165 | !(0 < i@271@01 && i@271@01 < len@150@01) | live]
(push) ; 6
; [then-branch: 165 | 0 < i@271@01 && i@271@01 < len@150@01]
(assert (and (< 0 i@271@01) (< i@271@01 len@150@01)))
; [eval] c[i].Ref__Integer_value == i + 2
; [eval] c[i]
(push) ; 7
(assert (not (>= i@271@01 0)))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(push) ; 7
(assert (not (< i@271@01 (Seq_length c@149@01))))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(assert (and
  (forall ((r $Ref)) (!
    (=>
      (and
        (img@210@01 r)
        (and (<= 0 (inv@209@01 r)) (< (inv@209@01 r) len@150@01)))
      (=
        ($FVF.lookup_Ref__Integer_value (as sm@247@01  $FVF<Ref__Integer_value>) r)
        ($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second $t@207@01))) r)))
    :pattern (($FVF.lookup_Ref__Integer_value (as sm@247@01  $FVF<Ref__Integer_value>) r))
    :pattern (($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second $t@207@01))) r))
    :qid |qp.fvfValDef29|))
  (forall ((r $Ref)) (!
    (=>
      (and
        (img@213@01 r)
        (and (<= 0 (inv@212@01 r)) (< (inv@212@01 r) len@150@01)))
      (=
        ($FVF.lookup_Ref__Integer_value (as sm@247@01  $FVF<Ref__Integer_value>) r)
        ($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@207@01))))) r)))
    :pattern (($FVF.lookup_Ref__Integer_value (as sm@247@01  $FVF<Ref__Integer_value>) r))
    :pattern (($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@207@01))))) r))
    :qid |qp.fvfValDef30|))
  (forall ((r $Ref)) (!
    (=>
      (and
        (img@216@01 r)
        (and (<= 0 (inv@215@01 r)) (< (inv@215@01 r) len@150@01)))
      (=
        ($FVF.lookup_Ref__Integer_value (as sm@247@01  $FVF<Ref__Integer_value>) r)
        ($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@207@01))))))) r)))
    :pattern (($FVF.lookup_Ref__Integer_value (as sm@247@01  $FVF<Ref__Integer_value>) r))
    :pattern (($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@207@01))))))) r))
    :qid |qp.fvfValDef31|))
  (forall ((r $Ref)) (!
    (=>
      (and
        (img@219@01 r)
        (and (<= 0 (inv@218@01 r)) (< (inv@218@01 r) (- len@150@01 1))))
      (=
        ($FVF.lookup_Ref__Integer_value (as sm@247@01  $FVF<Ref__Integer_value>) r)
        ($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@207@01)))))))) r)))
    :pattern (($FVF.lookup_Ref__Integer_value (as sm@247@01  $FVF<Ref__Integer_value>) r))
    :pattern (($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@207@01)))))))) r))
    :qid |qp.fvfValDef32|))))
(push) ; 7
(assert (not (<
  $Perm.No
  (+
    (+
      (+
        (ite
          (and
            (img@210@01 (Seq_index c@149@01 i@271@01))
            (and
              (<= 0 (inv@209@01 (Seq_index c@149@01 i@271@01)))
              (< (inv@209@01 (Seq_index c@149@01 i@271@01)) len@150@01)))
          (/ (to_real 1) (to_real 2))
          $Perm.No)
        (ite
          (and
            (img@213@01 (Seq_index c@149@01 i@271@01))
            (and
              (<= 0 (inv@212@01 (Seq_index c@149@01 i@271@01)))
              (< (inv@212@01 (Seq_index c@149@01 i@271@01)) len@150@01)))
          (/ (to_real 1) (to_real 2))
          $Perm.No))
      (ite
        (and
          (img@216@01 (Seq_index c@149@01 i@271@01))
          (and
            (<= 0 (inv@215@01 (Seq_index c@149@01 i@271@01)))
            (< (inv@215@01 (Seq_index c@149@01 i@271@01)) len@150@01)))
        $Perm.Write
        $Perm.No))
    (ite
      (and
        (img@219@01 (Seq_index c@149@01 i@271@01))
        (and
          (<= 0 (inv@218@01 (Seq_index c@149@01 i@271@01)))
          (< (inv@218@01 (Seq_index c@149@01 i@271@01)) (- len@150@01 1))))
      (/ (to_real 1) (to_real 2))
      $Perm.No)))))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
; [eval] i + 2
(pop) ; 6
(push) ; 6
; [else-branch: 165 | !(0 < i@271@01 && i@271@01 < len@150@01)]
(assert (not (and (< 0 i@271@01) (< i@271@01 len@150@01))))
(pop) ; 6
(pop) ; 5
; Joined path conditions
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@210@01 r)
      (and (<= 0 (inv@209@01 r)) (< (inv@209@01 r) len@150@01)))
    (=
      ($FVF.lookup_Ref__Integer_value (as sm@247@01  $FVF<Ref__Integer_value>) r)
      ($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second $t@207@01))) r)))
  :pattern (($FVF.lookup_Ref__Integer_value (as sm@247@01  $FVF<Ref__Integer_value>) r))
  :pattern (($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second $t@207@01))) r))
  :qid |qp.fvfValDef29|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@213@01 r)
      (and (<= 0 (inv@212@01 r)) (< (inv@212@01 r) len@150@01)))
    (=
      ($FVF.lookup_Ref__Integer_value (as sm@247@01  $FVF<Ref__Integer_value>) r)
      ($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@207@01))))) r)))
  :pattern (($FVF.lookup_Ref__Integer_value (as sm@247@01  $FVF<Ref__Integer_value>) r))
  :pattern (($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@207@01))))) r))
  :qid |qp.fvfValDef30|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@216@01 r)
      (and (<= 0 (inv@215@01 r)) (< (inv@215@01 r) len@150@01)))
    (=
      ($FVF.lookup_Ref__Integer_value (as sm@247@01  $FVF<Ref__Integer_value>) r)
      ($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@207@01))))))) r)))
  :pattern (($FVF.lookup_Ref__Integer_value (as sm@247@01  $FVF<Ref__Integer_value>) r))
  :pattern (($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@207@01))))))) r))
  :qid |qp.fvfValDef31|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@219@01 r)
      (and (<= 0 (inv@218@01 r)) (< (inv@218@01 r) (- len@150@01 1))))
    (=
      ($FVF.lookup_Ref__Integer_value (as sm@247@01  $FVF<Ref__Integer_value>) r)
      ($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@207@01)))))))) r)))
  :pattern (($FVF.lookup_Ref__Integer_value (as sm@247@01  $FVF<Ref__Integer_value>) r))
  :pattern (($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@207@01)))))))) r))
  :qid |qp.fvfValDef32|)))
; Joined path conditions
(assert (or
  (not (and (< 0 i@271@01) (< i@271@01 len@150@01)))
  (and (< 0 i@271@01) (< i@271@01 len@150@01))))
(pop) ; 4
; Nested auxiliary terms: globals (aux)
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@210@01 r)
      (and (<= 0 (inv@209@01 r)) (< (inv@209@01 r) len@150@01)))
    (=
      ($FVF.lookup_Ref__Integer_value (as sm@247@01  $FVF<Ref__Integer_value>) r)
      ($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second $t@207@01))) r)))
  :pattern (($FVF.lookup_Ref__Integer_value (as sm@247@01  $FVF<Ref__Integer_value>) r))
  :pattern (($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second $t@207@01))) r))
  :qid |qp.fvfValDef29|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@213@01 r)
      (and (<= 0 (inv@212@01 r)) (< (inv@212@01 r) len@150@01)))
    (=
      ($FVF.lookup_Ref__Integer_value (as sm@247@01  $FVF<Ref__Integer_value>) r)
      ($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@207@01))))) r)))
  :pattern (($FVF.lookup_Ref__Integer_value (as sm@247@01  $FVF<Ref__Integer_value>) r))
  :pattern (($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@207@01))))) r))
  :qid |qp.fvfValDef30|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@216@01 r)
      (and (<= 0 (inv@215@01 r)) (< (inv@215@01 r) len@150@01)))
    (=
      ($FVF.lookup_Ref__Integer_value (as sm@247@01  $FVF<Ref__Integer_value>) r)
      ($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@207@01))))))) r)))
  :pattern (($FVF.lookup_Ref__Integer_value (as sm@247@01  $FVF<Ref__Integer_value>) r))
  :pattern (($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@207@01))))))) r))
  :qid |qp.fvfValDef31|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@219@01 r)
      (and (<= 0 (inv@218@01 r)) (< (inv@218@01 r) (- len@150@01 1))))
    (=
      ($FVF.lookup_Ref__Integer_value (as sm@247@01  $FVF<Ref__Integer_value>) r)
      ($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@207@01)))))))) r)))
  :pattern (($FVF.lookup_Ref__Integer_value (as sm@247@01  $FVF<Ref__Integer_value>) r))
  :pattern (($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@207@01)))))))) r))
  :qid |qp.fvfValDef32|)))
; Nested auxiliary terms: non-globals (aux)
(assert (forall ((i@271@01 Int)) (!
  (and
    (or (< 0 i@271@01) (not (< 0 i@271@01)))
    (or
      (not (and (< 0 i@271@01) (< i@271@01 len@150@01)))
      (and (< 0 i@271@01) (< i@271@01 len@150@01))))
  :pattern ((Seq_index c@149@01 i@271@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/third_party/test_forward_dep_c.vpr@198@12@198@88-aux|)))
(push) ; 4
(assert (not (forall ((i@271@01 Int)) (!
  (=>
    (and (< 0 i@271@01) (< i@271@01 len@150@01))
    (=
      ($FVF.lookup_Ref__Integer_value (as sm@247@01  $FVF<Ref__Integer_value>) (Seq_index
        c@149@01
        i@271@01))
      (+ i@271@01 2)))
  :pattern ((Seq_index c@149@01 i@271@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/third_party/test_forward_dep_c.vpr@198@12@198@88|))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(assert (forall ((i@271@01 Int)) (!
  (=>
    (and (< 0 i@271@01) (< i@271@01 len@150@01))
    (=
      ($FVF.lookup_Ref__Integer_value (as sm@247@01  $FVF<Ref__Integer_value>) (Seq_index
        c@149@01
        i@271@01))
      (+ i@271@01 2)))
  :pattern ((Seq_index c@149@01 i@271@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/third_party/test_forward_dep_c.vpr@198@12@198@88|)))
(pop) ; 3
(pop) ; 2
(pop) ; 1
