(get-info :version)
; (:version "4.12.1")
; Started: 2024-12-29 14:50:22
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
(declare-sort Set<Seq<$Ref>> 0)
(declare-sort Set<Int> 0)
(declare-sort Set<$Ref> 0)
(declare-sort Set<$Snap> 0)
(declare-sort $FVF<demo__tmp> 0)
(declare-sort $FVF<Ref__Integer_value> 0)
(declare-sort $FVF<demo__ar> 0)
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
(declare-fun $SortWrappers.$FVF<demo__tmp>To$Snap ($FVF<demo__tmp>) $Snap)
(declare-fun $SortWrappers.$SnapTo$FVF<demo__tmp> ($Snap) $FVF<demo__tmp>)
(assert (forall ((x $FVF<demo__tmp>)) (!
    (= x ($SortWrappers.$SnapTo$FVF<demo__tmp>($SortWrappers.$FVF<demo__tmp>To$Snap x)))
    :pattern (($SortWrappers.$FVF<demo__tmp>To$Snap x))
    :qid |$Snap.$SnapTo$FVF<demo__tmp>To$Snap|
    )))
(assert (forall ((x $Snap)) (!
    (= x ($SortWrappers.$FVF<demo__tmp>To$Snap($SortWrappers.$SnapTo$FVF<demo__tmp> x)))
    :pattern (($SortWrappers.$SnapTo$FVF<demo__tmp> x))
    :qid |$Snap.$FVF<demo__tmp>To$SnapTo$FVF<demo__tmp>|
    )))
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
(declare-fun $SortWrappers.$FVF<demo__ar>To$Snap ($FVF<demo__ar>) $Snap)
(declare-fun $SortWrappers.$SnapTo$FVF<demo__ar> ($Snap) $FVF<demo__ar>)
(assert (forall ((x $FVF<demo__ar>)) (!
    (= x ($SortWrappers.$SnapTo$FVF<demo__ar>($SortWrappers.$FVF<demo__ar>To$Snap x)))
    :pattern (($SortWrappers.$FVF<demo__ar>To$Snap x))
    :qid |$Snap.$SnapTo$FVF<demo__ar>To$Snap|
    )))
(assert (forall ((x $Snap)) (!
    (= x ($SortWrappers.$FVF<demo__ar>To$Snap($SortWrappers.$SnapTo$FVF<demo__ar> x)))
    :pattern (($SortWrappers.$SnapTo$FVF<demo__ar> x))
    :qid |$Snap.$FVF<demo__ar>To$SnapTo$FVF<demo__ar>|
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
; /field_value_functions_declarations.smt2 [demo__tmp: Seq[Ref]]
(declare-fun $FVF.domain_demo__tmp ($FVF<demo__tmp>) Set<$Ref>)
(declare-fun $FVF.lookup_demo__tmp ($FVF<demo__tmp> $Ref) Seq<$Ref>)
(declare-fun $FVF.after_demo__tmp ($FVF<demo__tmp> $FVF<demo__tmp>) Bool)
(declare-fun $FVF.loc_demo__tmp (Seq<$Ref> $Ref) Bool)
(declare-fun $FVF.perm_demo__tmp ($FPM $Ref) $Perm)
(declare-const $fvfTOP_demo__tmp $FVF<demo__tmp>)
; /field_value_functions_declarations.smt2 [Ref__Integer_value: Int]
(declare-fun $FVF.domain_Ref__Integer_value ($FVF<Ref__Integer_value>) Set<$Ref>)
(declare-fun $FVF.lookup_Ref__Integer_value ($FVF<Ref__Integer_value> $Ref) Int)
(declare-fun $FVF.after_Ref__Integer_value ($FVF<Ref__Integer_value> $FVF<Ref__Integer_value>) Bool)
(declare-fun $FVF.loc_Ref__Integer_value (Int $Ref) Bool)
(declare-fun $FVF.perm_Ref__Integer_value ($FPM $Ref) $Perm)
(declare-const $fvfTOP_Ref__Integer_value $FVF<Ref__Integer_value>)
; /field_value_functions_declarations.smt2 [demo__ar: Seq[Ref]]
(declare-fun $FVF.domain_demo__ar ($FVF<demo__ar>) Set<$Ref>)
(declare-fun $FVF.lookup_demo__ar ($FVF<demo__ar> $Ref) Seq<$Ref>)
(declare-fun $FVF.after_demo__ar ($FVF<demo__ar> $FVF<demo__ar>) Bool)
(declare-fun $FVF.loc_demo__ar (Seq<$Ref> $Ref) Bool)
(declare-fun $FVF.perm_demo__ar ($FPM $Ref) $Perm)
(declare-const $fvfTOP_demo__ar $FVF<demo__ar>)
; Declaring symbols related to program functions (from program analysis)
(declare-fun demo__bin ($Snap Int Int) Int)
(declare-fun demo__bin%limited ($Snap Int Int) Int)
(declare-fun demo__bin%stateless (Int Int) Bool)
(declare-fun demo__bin%precondition ($Snap Int Int) Bool)
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
; /field_value_functions_axioms.smt2 [demo__tmp: Seq[Ref]]
(assert (forall ((vs $FVF<demo__tmp>) (ws $FVF<demo__tmp>)) (!
    (=>
      (and
        (Set_equal ($FVF.domain_demo__tmp vs) ($FVF.domain_demo__tmp ws))
        (forall ((x $Ref)) (!
          (=>
            (Set_in x ($FVF.domain_demo__tmp vs))
            (= ($FVF.lookup_demo__tmp vs x) ($FVF.lookup_demo__tmp ws x)))
          :pattern (($FVF.lookup_demo__tmp vs x) ($FVF.lookup_demo__tmp ws x))
          :qid |qp.$FVF<demo__tmp>-eq-inner|
          )))
      (= vs ws))
    :pattern (($SortWrappers.$FVF<demo__tmp>To$Snap vs)
              ($SortWrappers.$FVF<demo__tmp>To$Snap ws)
              )
    :qid |qp.$FVF<demo__tmp>-eq-outer|
    )))
(assert (forall ((r $Ref) (pm $FPM)) (!
    ($Perm.isValidVar ($FVF.perm_demo__tmp pm r))
    :pattern (($FVF.perm_demo__tmp pm r)))))
(assert (forall ((r $Ref) (f Seq<$Ref>)) (!
    (= ($FVF.loc_demo__tmp f r) true)
    :pattern (($FVF.loc_demo__tmp f r)))))
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
; /field_value_functions_axioms.smt2 [demo__ar: Seq[Ref]]
(assert (forall ((vs $FVF<demo__ar>) (ws $FVF<demo__ar>)) (!
    (=>
      (and
        (Set_equal ($FVF.domain_demo__ar vs) ($FVF.domain_demo__ar ws))
        (forall ((x $Ref)) (!
          (=>
            (Set_in x ($FVF.domain_demo__ar vs))
            (= ($FVF.lookup_demo__ar vs x) ($FVF.lookup_demo__ar ws x)))
          :pattern (($FVF.lookup_demo__ar vs x) ($FVF.lookup_demo__ar ws x))
          :qid |qp.$FVF<demo__ar>-eq-inner|
          )))
      (= vs ws))
    :pattern (($SortWrappers.$FVF<demo__ar>To$Snap vs)
              ($SortWrappers.$FVF<demo__ar>To$Snap ws)
              )
    :qid |qp.$FVF<demo__ar>-eq-outer|
    )))
(assert (forall ((r $Ref) (pm $FPM)) (!
    ($Perm.isValidVar ($FVF.perm_demo__ar pm r))
    :pattern (($FVF.perm_demo__ar pm r)))))
(assert (forall ((r $Ref) (f Seq<$Ref>)) (!
    (= ($FVF.loc_demo__ar f r) true)
    :pattern (($FVF.loc_demo__ar f r)))))
; End preamble
; ------------------------------------------------------------
; State saturation: after preamble
(set-option :timeout 100)
(check-sat)
; unknown
; ------------------------------------------------------------
; Begin function- and predicate-related preamble
; Declaring symbols related to program functions (from verification)
(assert (forall ((s@$ $Snap) (N@0@00 Int) (k@1@00 Int)) (!
  (= (demo__bin%limited s@$ N@0@00 k@1@00) (demo__bin s@$ N@0@00 k@1@00))
  :pattern ((demo__bin s@$ N@0@00 k@1@00))
  :qid |quant-u-8480|)))
(assert (forall ((s@$ $Snap) (N@0@00 Int) (k@1@00 Int)) (!
  (demo__bin%stateless N@0@00 k@1@00)
  :pattern ((demo__bin%limited s@$ N@0@00 k@1@00))
  :qid |quant-u-8481|)))
(assert (forall ((s@$ $Snap) (N@0@00 Int) (k@1@00 Int)) (!
  (=>
    (demo__bin%precondition s@$ N@0@00 k@1@00)
    (=
      (demo__bin s@$ N@0@00 k@1@00)
      (ite
        (or (= k@1@00 0) (or (= k@1@00 N@0@00) (<= N@0@00 0)))
        1
        (+
          (demo__bin%limited ($Snap.combine
            $Snap.unit
            ($Snap.combine $Snap.unit $Snap.unit)) (- N@0@00 1) (- k@1@00 1))
          (demo__bin%limited ($Snap.combine
            $Snap.unit
            ($Snap.combine $Snap.unit $Snap.unit)) (- N@0@00 1) k@1@00)))))
  :pattern ((demo__bin s@$ N@0@00 k@1@00))
  :qid |quant-u-8482|)))
(assert (forall ((s@$ $Snap) (N@0@00 Int) (k@1@00 Int)) (!
  (=>
    (demo__bin%precondition s@$ N@0@00 k@1@00)
    (ite
      (or (= k@1@00 0) (or (= k@1@00 N@0@00) (<= N@0@00 0)))
      true
      (and
        (demo__bin%precondition ($Snap.combine
          $Snap.unit
          ($Snap.combine $Snap.unit $Snap.unit)) (- N@0@00 1) (- k@1@00 1))
        (demo__bin%precondition ($Snap.combine
          $Snap.unit
          ($Snap.combine $Snap.unit $Snap.unit)) (- N@0@00 1) k@1@00))))
  :pattern ((demo__bin s@$ N@0@00 k@1@00))
  :qid |quant-u-8483|)))
; End function- and predicate-related preamble
; ------------------------------------------------------------
; ---------- demo__main_main ----------
(declare-const diz@0@01 $Ref)
(declare-const current_thread_id@1@01 Int)
(declare-const tcount@2@01 Int)
(declare-const gsize@3@01 Int)
(declare-const tid@4@01 Int)
(declare-const gid@5@01 Int)
(declare-const lid@6@01 Int)
(declare-const diz@7@01 $Ref)
(declare-const current_thread_id@8@01 Int)
(declare-const tcount@9@01 Int)
(declare-const gsize@10@01 Int)
(declare-const tid@11@01 Int)
(declare-const gid@12@01 Int)
(declare-const lid@13@01 Int)
(set-option :timeout 0)
(push) ; 1
(declare-const $t@14@01 $Snap)
(assert (= $t@14@01 ($Snap.combine ($Snap.first $t@14@01) ($Snap.second $t@14@01))))
(assert (= ($Snap.first $t@14@01) $Snap.unit))
; [eval] diz != null
(assert (not (= diz@7@01 $Ref.null)))
(assert (=
  ($Snap.second $t@14@01)
  ($Snap.combine
    ($Snap.first ($Snap.second $t@14@01))
    ($Snap.second ($Snap.second $t@14@01)))))
(assert (= ($Snap.first ($Snap.second $t@14@01)) $Snap.unit))
; [eval] current_thread_id >= 0
(assert (>= current_thread_id@8@01 0))
(assert (=
  ($Snap.second ($Snap.second $t@14@01))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second $t@14@01)))
    ($Snap.second ($Snap.second ($Snap.second $t@14@01))))))
(assert (= ($Snap.first ($Snap.second ($Snap.second $t@14@01))) $Snap.unit))
; [eval] 0 <= tid
(assert (<= 0 tid@11@01))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second $t@14@01)))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@14@01))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@14@01)))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@14@01))))
  $Snap.unit))
; [eval] tid < tcount
(assert (< tid@11@01 tcount@9@01))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@14@01))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@14@01)))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@14@01))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@14@01)))))
  $Snap.unit))
; [eval] tid == lid
(assert (= tid@11@01 lid@13@01))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@14@01)))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@14@01))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@14@01)))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@14@01))))))
  $Snap.unit))
; [eval] tcount == gsize
(assert (= tcount@9@01 gsize@10@01))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@14@01))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@14@01)))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@14@01))))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@14@01)))))))
  $Snap.unit))
; [eval] gid == 0
(assert (= gid@12@01 0))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@14@01)))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@14@01))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@14@01)))))))))))
(declare-const $k@15@01 $Perm)
(assert ($Perm.isReadVar $k@15@01))
(assert (<= $Perm.No $k@15@01))
(assert (<= $k@15@01 $Perm.Write))
(assert (=> (< $Perm.No $k@15@01) (not (= diz@7@01 $Ref.null))))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@14@01))))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@14@01)))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@14@01))))))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@14@01)))))))))
  $Snap.unit))
; [eval] |diz.demo__ar| == gsize
; [eval] |diz.demo__ar|
(push) ; 2
(set-option :timeout 10)
(assert (not (< $Perm.No $k@15@01)))
(check-sat)
; unsat
(pop) ; 2
; 0.00s
; (get-info :all-statistics)
(assert (=
  (Seq_length
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@14@01))))))))))
  gsize@10@01))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@14@01)))))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@14@01))))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@14@01)))))))))))))
(declare-const $k@16@01 $Perm)
(assert ($Perm.isReadVar $k@16@01))
(assert (<= $Perm.No $k@16@01))
(assert (<= $k@16@01 $Perm.Write))
(assert (=> (< $Perm.No $k@16@01) (not (= diz@7@01 $Ref.null))))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@14@01))))))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@14@01)))))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@14@01))))))))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@14@01)))))))))))
  $Snap.unit))
; [eval] |diz.demo__tmp| == gsize
; [eval] |diz.demo__tmp|
(set-option :timeout 0)
(push) ; 2
(set-option :timeout 10)
(assert (not (< $Perm.No $k@16@01)))
(check-sat)
; unsat
(pop) ; 2
; 0.00s
; (get-info :all-statistics)
(assert (=
  (Seq_length
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@14@01))))))))))))
  gsize@10@01))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@14@01)))))))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@14@01))))))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@14@01)))))))))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@14@01))))))))))))
  $Snap.unit))
; [eval] gsize > 1
(assert (> gsize@10@01 1))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@14@01))))))))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@14@01)))))))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@14@01))))))))))))))))
; [eval] diz.demo__ar[tid]
(set-option :timeout 0)
(push) ; 2
(set-option :timeout 10)
(assert (not (< $Perm.No $k@15@01)))
(check-sat)
; unsat
(pop) ; 2
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 2
(assert (not (>= tid@11@01 0)))
(check-sat)
; unsat
(pop) ; 2
; 0.00s
; (get-info :all-statistics)
(push) ; 2
(assert (not (<
  tid@11@01
  (Seq_length
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@14@01)))))))))))))
(check-sat)
; unsat
(pop) ; 2
; 0.00s
; (get-info :all-statistics)
(assert (not
  (=
    (Seq_index
      ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@14@01)))))))))
      tid@11@01)
    $Ref.null)))
; [eval] diz.demo__tmp[tid]
(push) ; 2
(set-option :timeout 10)
(assert (not (< $Perm.No $k@16@01)))
(check-sat)
; unsat
(pop) ; 2
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 2
(assert (not (>= tid@11@01 0)))
(check-sat)
; unsat
(pop) ; 2
; 0.00s
; (get-info :all-statistics)
(push) ; 2
(assert (not (<
  tid@11@01
  (Seq_length
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@14@01)))))))))))))))
(check-sat)
; unsat
(pop) ; 2
; 0.00s
; (get-info :all-statistics)
(push) ; 2
(set-option :timeout 10)
(assert (not (=
  (Seq_index
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@14@01)))))))))
    tid@11@01)
  (Seq_index
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@14@01)))))))))))
    tid@11@01))))
(check-sat)
; unknown
(pop) ; 2
; 0.00s
; (get-info :all-statistics)
(assert (not
  (=
    (Seq_index
      ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@14@01)))))))))))
      tid@11@01)
    $Ref.null)))
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
(set-option :timeout 0)
(push) ; 2
(declare-const $t@17@01 $Snap)
(assert (= $t@17@01 ($Snap.combine ($Snap.first $t@17@01) ($Snap.second $t@17@01))))
(assert (= ($Snap.first $t@17@01) $Snap.unit))
; [eval] 0 <= tid
(assert (=
  ($Snap.second $t@17@01)
  ($Snap.combine
    ($Snap.first ($Snap.second $t@17@01))
    ($Snap.second ($Snap.second $t@17@01)))))
(assert (= ($Snap.first ($Snap.second $t@17@01)) $Snap.unit))
; [eval] tid < tcount
(assert (=
  ($Snap.second ($Snap.second $t@17@01))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second $t@17@01)))
    ($Snap.second ($Snap.second ($Snap.second $t@17@01))))))
(assert (= ($Snap.first ($Snap.second ($Snap.second $t@17@01))) $Snap.unit))
; [eval] tid == lid
(assert (=
  ($Snap.second ($Snap.second ($Snap.second $t@17@01)))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@17@01))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@17@01)))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@17@01))))
  $Snap.unit))
; [eval] tcount == gsize
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@17@01))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@17@01)))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@17@01))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@17@01)))))
  $Snap.unit))
; [eval] gid == 0
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@17@01)))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@17@01))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@17@01)))))))))
(declare-const $k@18@01 $Perm)
(assert ($Perm.isReadVar $k@18@01))
(assert (<= $Perm.No $k@18@01))
(assert (<= $k@18@01 $Perm.Write))
(assert (=> (< $Perm.No $k@18@01) (not (= diz@7@01 $Ref.null))))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@17@01))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@17@01)))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@17@01))))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@17@01)))))))
  $Snap.unit))
; [eval] |diz.demo__ar| == gsize
; [eval] |diz.demo__ar|
(push) ; 3
(set-option :timeout 10)
(assert (not (< $Perm.No $k@18@01)))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(assert (=
  (Seq_length
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@17@01))))))))
  gsize@10@01))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@17@01)))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@17@01))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@17@01)))))))))))
(declare-const $k@19@01 $Perm)
(assert ($Perm.isReadVar $k@19@01))
(assert (<= $Perm.No $k@19@01))
(assert (<= $k@19@01 $Perm.Write))
(assert (=> (< $Perm.No $k@19@01) (not (= diz@7@01 $Ref.null))))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@17@01))))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@17@01)))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@17@01))))))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@17@01)))))))))
  $Snap.unit))
; [eval] |diz.demo__tmp| == gsize
; [eval] |diz.demo__tmp|
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (< $Perm.No $k@19@01)))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(assert (=
  (Seq_length
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@17@01))))))))))
  gsize@10@01))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@17@01)))))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@17@01))))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@17@01)))))))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@17@01))))))))))
  $Snap.unit))
; [eval] diz.demo__ar == old(diz.demo__ar)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (< $Perm.No $k@18@01)))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; [eval] old(diz.demo__ar)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (< $Perm.No $k@15@01)))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(assert (Seq_equal
  ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@17@01)))))))
  ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@14@01)))))))))))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@17@01))))))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@17@01)))))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@17@01))))))))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@17@01)))))))))))
  $Snap.unit))
; [eval] diz.demo__tmp == old(diz.demo__tmp)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (< $Perm.No $k@19@01)))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; [eval] old(diz.demo__tmp)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (< $Perm.No $k@16@01)))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(assert (Seq_equal
  ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@17@01)))))))))
  ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@14@01)))))))))))))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@17@01)))))))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@17@01))))))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@17@01)))))))))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@17@01))))))))))))
  $Snap.unit))
; [eval] gsize > 1
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@17@01))))))))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@17@01)))))))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@17@01))))))))))))))))
; [eval] diz.demo__ar[tid]
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (< $Perm.No $k@18@01)))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(assert (not (>= tid@11@01 0)))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(push) ; 3
(assert (not (<
  tid@11@01
  (Seq_length
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@17@01)))))))))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(assert (not
  (=
    (Seq_index
      ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@17@01)))))))
      tid@11@01)
    $Ref.null)))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@17@01)))))))))))))
  $Snap.unit))
; [eval] diz.demo__ar[tid].Ref__Integer_value == demo__bin(gsize - 1, tid)
; [eval] diz.demo__ar[tid]
(push) ; 3
(set-option :timeout 10)
(assert (not (< $Perm.No $k@18@01)))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(assert (not (>= tid@11@01 0)))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(push) ; 3
(assert (not (<
  tid@11@01
  (Seq_length
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@17@01)))))))))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; [eval] demo__bin(gsize - 1, tid)
; [eval] gsize - 1
(push) ; 3
; [eval] N >= 0
(push) ; 4
(assert (not (>= (- gsize@10@01 1) 0)))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(assert (>= (- gsize@10@01 1) 0))
; [eval] 0 <= k
; [eval] k <= N
(push) ; 4
(assert (not (<= tid@11@01 (- gsize@10@01 1))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(assert (<= tid@11@01 (- gsize@10@01 1)))
(assert (demo__bin%precondition ($Snap.combine
  $Snap.unit
  ($Snap.combine $Snap.unit $Snap.unit)) (- gsize@10@01 1) tid@11@01))
(pop) ; 3
; Joined path conditions
(assert (and
  (>= (- gsize@10@01 1) 0)
  (<= tid@11@01 (- gsize@10@01 1))
  (demo__bin%precondition ($Snap.combine
    $Snap.unit
    ($Snap.combine $Snap.unit $Snap.unit)) (- gsize@10@01 1) tid@11@01)))
(assert (=
  ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@17@01))))))))))))))
  (demo__bin ($Snap.combine $Snap.unit ($Snap.combine $Snap.unit $Snap.unit)) (-
    gsize@10@01
    1) tid@11@01)))
(pop) ; 2
(push) ; 2
; [exec]
; var __last_barrier: Int
(declare-const __last_barrier@20@01 Int)
; [exec]
; var N: Int
(declare-const N@21@01 Int)
; [exec]
; var __flatten_1: Ref
(declare-const __flatten_1@22@01 $Ref)
; [exec]
; var __flatten_2: Int
(declare-const __flatten_2@23@01 Int)
; [exec]
; var __flatten_3: Ref
(declare-const __flatten_3@24@01 $Ref)
; [exec]
; var __flatten_4: Int
(declare-const __flatten_4@25@01 Int)
; [exec]
; var __flatten_5: Ref
(declare-const __flatten_5@26@01 $Ref)
; [exec]
; var __flatten_6: Ref
(declare-const __flatten_6@27@01 $Ref)
; [exec]
; var __flatten_7: Int
(declare-const __flatten_7@28@01 Int)
; [exec]
; var __flatten_8: Ref
(declare-const __flatten_8@29@01 $Ref)
; [exec]
; var __flatten_9: Ref
(declare-const __flatten_9@30@01 $Ref)
; [exec]
; __last_barrier := 0
; [exec]
; N := 1
; [exec]
; __flatten_1 := diz.demo__ar[tid]
; [eval] diz.demo__ar[tid]
(push) ; 3
(set-option :timeout 10)
(assert (not (< $Perm.No $k@15@01)))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(assert (not (>= tid@11@01 0)))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(push) ; 3
(assert (not (<
  tid@11@01
  (Seq_length
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@14@01)))))))))))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(declare-const __flatten_1@31@01 $Ref)
(assert (=
  __flatten_1@31@01
  (Seq_index
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@14@01)))))))))
    tid@11@01)))
; [exec]
; __flatten_2 := 1
; [exec]
; __flatten_1.Ref__Integer_value := __flatten_2
(push) ; 3
(set-option :timeout 10)
(assert (not (=
  (Seq_index
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@14@01)))))))))))
    tid@11@01)
  __flatten_1@31@01)))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (=
  (Seq_index
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@14@01)))))))))
    tid@11@01)
  __flatten_1@31@01)))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (=
  (Seq_index
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@14@01)))))))))))
    tid@11@01)
  __flatten_1@31@01)))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(assert (not (= __flatten_1@31@01 $Ref.null)))
(declare-const __flatten_3@32@01 $Ref)
(declare-const __flatten_5@33@01 $Ref)
(declare-const __flatten_4@34@01 Int)
(declare-const N@35@01 Int)
(declare-const __flatten_6@36@01 $Ref)
(declare-const __flatten_8@37@01 $Ref)
(declare-const __flatten_9@38@01 $Ref)
(declare-const __flatten_7@39@01 Int)
(set-option :timeout 0)
(push) ; 3
; Loop head block: Check well-definedness of invariant
(declare-const $t@40@01 $Snap)
(assert (= $t@40@01 ($Snap.combine ($Snap.first $t@40@01) ($Snap.second $t@40@01))))
(assert (= ($Snap.first $t@40@01) $Snap.unit))
; [eval] 0 <= tid
(assert (=
  ($Snap.second $t@40@01)
  ($Snap.combine
    ($Snap.first ($Snap.second $t@40@01))
    ($Snap.second ($Snap.second $t@40@01)))))
(assert (= ($Snap.first ($Snap.second $t@40@01)) $Snap.unit))
; [eval] tid < tcount
(assert (=
  ($Snap.second ($Snap.second $t@40@01))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second $t@40@01)))
    ($Snap.second ($Snap.second ($Snap.second $t@40@01))))))
(assert (= ($Snap.first ($Snap.second ($Snap.second $t@40@01))) $Snap.unit))
; [eval] tid == lid
(assert (=
  ($Snap.second ($Snap.second ($Snap.second $t@40@01)))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@40@01))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@40@01)))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@40@01))))
  $Snap.unit))
; [eval] tcount == gsize
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@40@01))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@40@01)))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@40@01))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@40@01)))))
  $Snap.unit))
; [eval] gid == 0
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@40@01)))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@40@01))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@40@01)))))))))
(declare-const $k@41@01 $Perm)
(assert ($Perm.isReadVar $k@41@01))
(assert (<= $Perm.No $k@41@01))
(assert (<= $k@41@01 $Perm.Write))
(assert (=> (< $Perm.No $k@41@01) (not (= diz@7@01 $Ref.null))))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@40@01))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@40@01)))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@40@01))))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@40@01)))))))
  $Snap.unit))
; [eval] |diz.demo__ar| == gsize
; [eval] |diz.demo__ar|
(push) ; 4
(set-option :timeout 10)
(assert (not (< $Perm.No $k@41@01)))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(assert (=
  (Seq_length
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@40@01))))))))
  gsize@10@01))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@40@01)))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@40@01))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@40@01)))))))))))
(declare-const $k@42@01 $Perm)
(assert ($Perm.isReadVar $k@42@01))
(assert (<= $Perm.No $k@42@01))
(assert (<= $k@42@01 $Perm.Write))
(assert (=> (< $Perm.No $k@42@01) (not (= diz@7@01 $Ref.null))))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@40@01))))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@40@01)))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@40@01))))))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@40@01)))))))))
  $Snap.unit))
; [eval] |diz.demo__tmp| == gsize
; [eval] |diz.demo__tmp|
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not (< $Perm.No $k@42@01)))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(assert (=
  (Seq_length
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@40@01))))))))))
  gsize@10@01))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@40@01)))))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@40@01))))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@40@01)))))))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@40@01))))))))))
  $Snap.unit))
; [eval] gsize > 1
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@40@01))))))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@40@01)))))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@40@01))))))))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@40@01)))))))))))
  $Snap.unit))
; [eval] 0 < N
(assert (< 0 N@35@01))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@40@01)))))))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@40@01))))))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@40@01)))))))))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@40@01))))))))))))
  $Snap.unit))
; [eval] N < gsize
(assert (< N@35@01 gsize@10@01))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@40@01))))))))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@40@01)))))))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@40@01))))))))))))))))
; [eval] diz.demo__ar[tid]
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not (< $Perm.No $k@41@01)))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 4
(assert (not (>= tid@11@01 0)))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(push) ; 4
(assert (not (<
  tid@11@01
  (Seq_length
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@40@01)))))))))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(assert (not
  (=
    (Seq_index
      ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@40@01)))))))
      tid@11@01)
    $Ref.null)))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@40@01)))))))))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@40@01))))))))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@40@01)))))))))))))))))
; [eval] diz.demo__tmp[tid]
(push) ; 4
(set-option :timeout 10)
(assert (not (< $Perm.No $k@42@01)))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 4
(assert (not (>= tid@11@01 0)))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(push) ; 4
(assert (not (<
  tid@11@01
  (Seq_length
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@40@01)))))))))))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(push) ; 4
(set-option :timeout 10)
(assert (not (=
  (Seq_index
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@40@01)))))))
    tid@11@01)
  (Seq_index
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@40@01)))))))))
    tid@11@01))))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(assert (not
  (=
    (Seq_index
      ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@40@01)))))))))
      tid@11@01)
    $Ref.null)))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@40@01))))))))))))))
  $Snap.unit))
; [eval] diz.demo__ar[tid].Ref__Integer_value == (tid < N ? demo__bin(N, tid) : 1)
; [eval] diz.demo__ar[tid]
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not (< $Perm.No $k@41@01)))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 4
(assert (not (>= tid@11@01 0)))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(push) ; 4
(assert (not (<
  tid@11@01
  (Seq_length
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@40@01)))))))))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; [eval] (tid < N ? demo__bin(N, tid) : 1)
; [eval] tid < N
(push) ; 4
(push) ; 5
(set-option :timeout 10)
(assert (not (not (< tid@11@01 N@35@01))))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 5
(set-option :timeout 10)
(assert (not (< tid@11@01 N@35@01)))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
; [then-branch: 0 | tid@11@01 < N@35@01 | live]
; [else-branch: 0 | !(tid@11@01 < N@35@01) | live]
(set-option :timeout 0)
(push) ; 5
; [then-branch: 0 | tid@11@01 < N@35@01]
(assert (< tid@11@01 N@35@01))
; [eval] demo__bin(N, tid)
(push) ; 6
; [eval] N >= 0
(push) ; 7
(assert (not (>= N@35@01 0)))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(assert (>= N@35@01 0))
; [eval] 0 <= k
; [eval] k <= N
(push) ; 7
(assert (not (<= tid@11@01 N@35@01)))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(assert (<= tid@11@01 N@35@01))
(assert (demo__bin%precondition ($Snap.combine
  $Snap.unit
  ($Snap.combine $Snap.unit $Snap.unit)) N@35@01 tid@11@01))
(pop) ; 6
; Joined path conditions
(assert (and
  (>= N@35@01 0)
  (<= tid@11@01 N@35@01)
  (demo__bin%precondition ($Snap.combine
    $Snap.unit
    ($Snap.combine $Snap.unit $Snap.unit)) N@35@01 tid@11@01)))
(pop) ; 5
(push) ; 5
; [else-branch: 0 | !(tid@11@01 < N@35@01)]
(assert (not (< tid@11@01 N@35@01)))
(pop) ; 5
(pop) ; 4
; Joined path conditions
(assert (=>
  (< tid@11@01 N@35@01)
  (and
    (< tid@11@01 N@35@01)
    (>= N@35@01 0)
    (<= tid@11@01 N@35@01)
    (demo__bin%precondition ($Snap.combine
      $Snap.unit
      ($Snap.combine $Snap.unit $Snap.unit)) N@35@01 tid@11@01))))
; Joined path conditions
(assert (or (not (< tid@11@01 N@35@01)) (< tid@11@01 N@35@01)))
(assert (=
  ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@40@01))))))))))))))
  (ite
    (< tid@11@01 N@35@01)
    (demo__bin ($Snap.combine $Snap.unit ($Snap.combine $Snap.unit $Snap.unit)) N@35@01 tid@11@01)
    1)))
(pop) ; 3
(push) ; 3
; Loop head block: Establish invariant
; [eval] 0 <= tid
; [eval] tid < tcount
; [eval] tid == lid
; [eval] tcount == gsize
; [eval] gid == 0
(declare-const $k@43@01 $Perm)
(assert ($Perm.isReadVar $k@43@01))
(push) ; 4
(set-option :timeout 10)
(assert (not (not (= $k@15@01 $Perm.No))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(assert (< $k@43@01 $k@15@01))
(assert (<= $Perm.No (- $k@15@01 $k@43@01)))
(assert (<= (- $k@15@01 $k@43@01) $Perm.Write))
(assert (=> (< $Perm.No (- $k@15@01 $k@43@01)) (not (= diz@7@01 $Ref.null))))
; [eval] |diz.demo__ar| == gsize
; [eval] |diz.demo__ar|
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not (< $Perm.No $k@15@01)))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(declare-const $k@44@01 $Perm)
(assert ($Perm.isReadVar $k@44@01))
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not (not (= $k@16@01 $Perm.No))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(assert (< $k@44@01 $k@16@01))
(assert (<= $Perm.No (- $k@16@01 $k@44@01)))
(assert (<= (- $k@16@01 $k@44@01) $Perm.Write))
(assert (=> (< $Perm.No (- $k@16@01 $k@44@01)) (not (= diz@7@01 $Ref.null))))
; [eval] |diz.demo__tmp| == gsize
; [eval] |diz.demo__tmp|
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not (< $Perm.No $k@16@01)))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; [eval] gsize > 1
; [eval] 0 < N
; [eval] N < gsize
(set-option :timeout 0)
(push) ; 4
(assert (not (< 1 gsize@10@01)))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(assert (< 1 gsize@10@01))
; [eval] diz.demo__ar[tid]
(push) ; 4
(set-option :timeout 10)
(assert (not (< $Perm.No $k@15@01)))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 4
(assert (not (>= tid@11@01 0)))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(push) ; 4
(assert (not (<
  tid@11@01
  (Seq_length
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@14@01)))))))))))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; [eval] diz.demo__tmp[tid]
(push) ; 4
(set-option :timeout 10)
(assert (not (< $Perm.No $k@16@01)))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 4
(assert (not (>= tid@11@01 0)))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(push) ; 4
(assert (not (<
  tid@11@01
  (Seq_length
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@14@01)))))))))))))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; [eval] diz.demo__ar[tid].Ref__Integer_value == (tid < N ? demo__bin(N, tid) : 1)
; [eval] diz.demo__ar[tid]
(push) ; 4
(set-option :timeout 10)
(assert (not (< $Perm.No $k@15@01)))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 4
(assert (not (>= tid@11@01 0)))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(push) ; 4
(assert (not (<
  tid@11@01
  (Seq_length
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@14@01)))))))))))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; [eval] (tid < N ? demo__bin(N, tid) : 1)
; [eval] tid < N
(push) ; 4
(push) ; 5
(set-option :timeout 10)
(assert (not (not (< tid@11@01 1))))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 5
(set-option :timeout 10)
(assert (not (< tid@11@01 1)))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
; [then-branch: 1 | tid@11@01 < 1 | live]
; [else-branch: 1 | !(tid@11@01 < 1) | live]
(set-option :timeout 0)
(push) ; 5
; [then-branch: 1 | tid@11@01 < 1]
(assert (< tid@11@01 1))
; [eval] demo__bin(N, tid)
(push) ; 6
; [eval] N >= 0
; [eval] 0 <= k
; [eval] k <= N
(push) ; 7
(assert (not (<= tid@11@01 1)))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(assert (<= tid@11@01 1))
(assert (demo__bin%precondition ($Snap.combine
  $Snap.unit
  ($Snap.combine $Snap.unit $Snap.unit)) 1 tid@11@01))
(pop) ; 6
; Joined path conditions
(assert (and
  (<= tid@11@01 1)
  (demo__bin%precondition ($Snap.combine
    $Snap.unit
    ($Snap.combine $Snap.unit $Snap.unit)) 1 tid@11@01)))
(pop) ; 5
(push) ; 5
; [else-branch: 1 | !(tid@11@01 < 1)]
(assert (not (< tid@11@01 1)))
(pop) ; 5
(pop) ; 4
; Joined path conditions
(assert (=>
  (< tid@11@01 1)
  (and
    (< tid@11@01 1)
    (<= tid@11@01 1)
    (demo__bin%precondition ($Snap.combine
      $Snap.unit
      ($Snap.combine $Snap.unit $Snap.unit)) 1 tid@11@01))))
; Joined path conditions
(assert (or (not (< tid@11@01 1)) (< tid@11@01 1)))
(push) ; 4
(assert (not (=
  1
  (ite
    (< tid@11@01 1)
    (demo__bin ($Snap.combine $Snap.unit ($Snap.combine $Snap.unit $Snap.unit)) 1 tid@11@01)
    1))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(assert (=
  1
  (ite
    (< tid@11@01 1)
    (demo__bin ($Snap.combine $Snap.unit ($Snap.combine $Snap.unit $Snap.unit)) 1 tid@11@01)
    1)))
; Loop head block: Execute statements of loop head block (in invariant state)
(push) ; 4
(assert ($Perm.isReadVar $k@41@01))
(assert ($Perm.isReadVar $k@42@01))
(assert (= $t@40@01 ($Snap.combine ($Snap.first $t@40@01) ($Snap.second $t@40@01))))
(assert (= ($Snap.first $t@40@01) $Snap.unit))
(assert (=
  ($Snap.second $t@40@01)
  ($Snap.combine
    ($Snap.first ($Snap.second $t@40@01))
    ($Snap.second ($Snap.second $t@40@01)))))
(assert (= ($Snap.first ($Snap.second $t@40@01)) $Snap.unit))
(assert (=
  ($Snap.second ($Snap.second $t@40@01))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second $t@40@01)))
    ($Snap.second ($Snap.second ($Snap.second $t@40@01))))))
(assert (= ($Snap.first ($Snap.second ($Snap.second $t@40@01))) $Snap.unit))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second $t@40@01)))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@40@01))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@40@01)))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@40@01))))
  $Snap.unit))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@40@01))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@40@01)))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@40@01))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@40@01)))))
  $Snap.unit))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@40@01)))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@40@01))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@40@01)))))))))
(assert (<= $Perm.No $k@41@01))
(assert (<= $k@41@01 $Perm.Write))
(assert (=> (< $Perm.No $k@41@01) (not (= diz@7@01 $Ref.null))))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@40@01))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@40@01)))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@40@01))))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@40@01)))))))
  $Snap.unit))
(assert (=
  (Seq_length
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@40@01))))))))
  gsize@10@01))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@40@01)))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@40@01))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@40@01)))))))))))
(assert (<= $Perm.No $k@42@01))
(assert (<= $k@42@01 $Perm.Write))
(assert (=> (< $Perm.No $k@42@01) (not (= diz@7@01 $Ref.null))))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@40@01))))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@40@01)))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@40@01))))))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@40@01)))))))))
  $Snap.unit))
(assert (=
  (Seq_length
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@40@01))))))))))
  gsize@10@01))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@40@01)))))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@40@01))))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@40@01)))))))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@40@01))))))))))
  $Snap.unit))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@40@01))))))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@40@01)))))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@40@01))))))))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@40@01)))))))))))
  $Snap.unit))
(assert (< 0 N@35@01))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@40@01)))))))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@40@01))))))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@40@01)))))))))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@40@01))))))))))))
  $Snap.unit))
(assert (< N@35@01 gsize@10@01))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@40@01))))))))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@40@01)))))))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@40@01))))))))))))))))
(assert (not
  (=
    (Seq_index
      ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@40@01)))))))
      tid@11@01)
    $Ref.null)))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@40@01)))))))))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@40@01))))))))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@40@01)))))))))))))))))
(assert (not
  (=
    (Seq_index
      ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@40@01)))))))))
      tid@11@01)
    $Ref.null)))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@40@01))))))))))))))
  $Snap.unit))
(assert (=>
  (< tid@11@01 N@35@01)
  (and
    (< tid@11@01 N@35@01)
    (>= N@35@01 0)
    (<= tid@11@01 N@35@01)
    (demo__bin%precondition ($Snap.combine
      $Snap.unit
      ($Snap.combine $Snap.unit $Snap.unit)) N@35@01 tid@11@01))))
(assert (or (not (< tid@11@01 N@35@01)) (< tid@11@01 N@35@01)))
(assert (=
  ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@40@01))))))))))))))
  (ite
    (< tid@11@01 N@35@01)
    (demo__bin ($Snap.combine $Snap.unit ($Snap.combine $Snap.unit $Snap.unit)) N@35@01 tid@11@01)
    1)))
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
(set-option :timeout 10)
(check-sat)
; unknown
; Loop head block: Check well-definedness of edge conditions
(set-option :timeout 0)
(push) ; 5
; [eval] N < gsize - 1
; [eval] gsize - 1
(pop) ; 5
(push) ; 5
; [eval] !(N < gsize - 1)
; [eval] N < gsize - 1
; [eval] gsize - 1
(pop) ; 5
; Loop head block: Follow loop-internal edges
; [eval] N < gsize - 1
; [eval] gsize - 1
(push) ; 5
(set-option :timeout 10)
(assert (not (not (< N@35@01 (- gsize@10@01 1)))))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 5
(set-option :timeout 10)
(assert (not (< N@35@01 (- gsize@10@01 1))))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
; [then-branch: 2 | N@35@01 < gsize@10@01 - 1 | live]
; [else-branch: 2 | !(N@35@01 < gsize@10@01 - 1) | live]
(set-option :timeout 0)
(push) ; 5
; [then-branch: 2 | N@35@01 < gsize@10@01 - 1]
(assert (< N@35@01 (- gsize@10@01 1)))
; [exec]
; __flatten_3 := diz.demo__tmp[tid]
; [eval] diz.demo__tmp[tid]
(push) ; 6
(set-option :timeout 10)
(assert (not (< $Perm.No $k@42@01)))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 6
(assert (not (>= tid@11@01 0)))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(push) ; 6
(assert (not (<
  tid@11@01
  (Seq_length
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@40@01)))))))))))))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(declare-const __flatten_3@45@01 $Ref)
(assert (=
  __flatten_3@45@01
  (Seq_index
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@40@01)))))))))
    tid@11@01)))
; [exec]
; __flatten_5 := diz.demo__ar[tid]
; [eval] diz.demo__ar[tid]
(push) ; 6
(set-option :timeout 10)
(assert (not (< $Perm.No $k@41@01)))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 6
(assert (not (>= tid@11@01 0)))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(push) ; 6
(assert (not (<
  tid@11@01
  (Seq_length
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@40@01)))))))))))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(declare-const __flatten_5@46@01 $Ref)
(assert (=
  __flatten_5@46@01
  (Seq_index
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@40@01)))))))
    tid@11@01)))
; [exec]
; __flatten_4 := __flatten_5.Ref__Integer_value
(push) ; 6
(set-option :timeout 10)
(assert (not (=
  (Seq_index
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@40@01)))))))))
    tid@11@01)
  __flatten_5@46@01)))
(check-sat)
; unknown
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 6
(set-option :timeout 10)
(assert (not (=
  (Seq_index
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@40@01)))))))
    tid@11@01)
  __flatten_5@46@01)))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(declare-const __flatten_4@47@01 Int)
(assert (=
  __flatten_4@47@01
  ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@40@01))))))))))))))))
; [exec]
; __flatten_3.Ref__Integer_value := __flatten_4
(set-option :timeout 0)
(push) ; 6
(set-option :timeout 10)
(assert (not (=
  (Seq_index
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@40@01)))))))))
    tid@11@01)
  __flatten_3@45@01)))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 6
(set-option :timeout 10)
(assert (not (=
  (Seq_index
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@40@01)))))))
    tid@11@01)
  __flatten_3@45@01)))
(check-sat)
; unknown
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(assert (not (= __flatten_3@45@01 $Ref.null)))
; [exec]
; assert gsize > 1
; [eval] gsize > 1
; [exec]
; assert 0 < N
; [eval] 0 < N
; [exec]
; assert N < gsize
; [eval] N < gsize
; [exec]
; assert 0 <= tid && tid < N ==>
;   diz.demo__tmp[tid].Ref__Integer_value == demo__bin(N, tid)
; [eval] 0 <= tid && tid < N ==> diz.demo__tmp[tid].Ref__Integer_value == demo__bin(N, tid)
; [eval] 0 <= tid && tid < N
; [eval] 0 <= tid
(set-option :timeout 0)
(push) ; 6
; [then-branch: 3 | !(0 <= tid@11@01) | live]
; [else-branch: 3 | 0 <= tid@11@01 | live]
(push) ; 7
; [then-branch: 3 | !(0 <= tid@11@01)]
(assert (not (<= 0 tid@11@01)))
(pop) ; 7
(push) ; 7
; [else-branch: 3 | 0 <= tid@11@01]
; [eval] tid < N
(pop) ; 7
(pop) ; 6
; Joined path conditions
; Joined path conditions
(assert (or (<= 0 tid@11@01) (not (<= 0 tid@11@01))))
(push) ; 6
(push) ; 7
(set-option :timeout 10)
(assert (not (not (and (<= 0 tid@11@01) (< tid@11@01 N@35@01)))))
(check-sat)
; unknown
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 7
(set-option :timeout 10)
(assert (not (and (<= 0 tid@11@01) (< tid@11@01 N@35@01))))
(check-sat)
; unknown
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
; [then-branch: 4 | 0 <= tid@11@01 && tid@11@01 < N@35@01 | live]
; [else-branch: 4 | !(0 <= tid@11@01 && tid@11@01 < N@35@01) | live]
(set-option :timeout 0)
(push) ; 7
; [then-branch: 4 | 0 <= tid@11@01 && tid@11@01 < N@35@01]
(assert (and (<= 0 tid@11@01) (< tid@11@01 N@35@01)))
; [eval] diz.demo__tmp[tid].Ref__Integer_value == demo__bin(N, tid)
; [eval] diz.demo__tmp[tid]
(push) ; 8
(set-option :timeout 10)
(assert (not (< $Perm.No $k@42@01)))
(check-sat)
; unsat
(pop) ; 8
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 8
(assert (not (>= tid@11@01 0)))
(check-sat)
; unsat
(pop) ; 8
; 0.00s
; (get-info :all-statistics)
(push) ; 8
(assert (not (<
  tid@11@01
  (Seq_length
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@40@01)))))))))))))
(check-sat)
; unsat
(pop) ; 8
; 0.00s
; (get-info :all-statistics)
; [eval] demo__bin(N, tid)
(push) ; 8
; [eval] N >= 0
(push) ; 9
(assert (not (>= N@35@01 0)))
(check-sat)
; unsat
(pop) ; 9
; 0.00s
; (get-info :all-statistics)
(assert (>= N@35@01 0))
; [eval] 0 <= k
; [eval] k <= N
(push) ; 9
(assert (not (<= tid@11@01 N@35@01)))
(check-sat)
; unsat
(pop) ; 9
; 0.00s
; (get-info :all-statistics)
(assert (<= tid@11@01 N@35@01))
(assert (demo__bin%precondition ($Snap.combine
  $Snap.unit
  ($Snap.combine $Snap.unit $Snap.unit)) N@35@01 tid@11@01))
(pop) ; 8
; Joined path conditions
(assert (and
  (>= N@35@01 0)
  (<= tid@11@01 N@35@01)
  (demo__bin%precondition ($Snap.combine
    $Snap.unit
    ($Snap.combine $Snap.unit $Snap.unit)) N@35@01 tid@11@01)))
(pop) ; 7
(push) ; 7
; [else-branch: 4 | !(0 <= tid@11@01 && tid@11@01 < N@35@01)]
(assert (not (and (<= 0 tid@11@01) (< tid@11@01 N@35@01))))
(pop) ; 7
(pop) ; 6
; Joined path conditions
(assert (=>
  (and (<= 0 tid@11@01) (< tid@11@01 N@35@01))
  (and
    (<= 0 tid@11@01)
    (< tid@11@01 N@35@01)
    (>= N@35@01 0)
    (<= tid@11@01 N@35@01)
    (demo__bin%precondition ($Snap.combine
      $Snap.unit
      ($Snap.combine $Snap.unit $Snap.unit)) N@35@01 tid@11@01))))
; Joined path conditions
(assert (or
  (not (and (<= 0 tid@11@01) (< tid@11@01 N@35@01)))
  (and (<= 0 tid@11@01) (< tid@11@01 N@35@01))))
(push) ; 6
(assert (not (=>
  (and (<= 0 tid@11@01) (< tid@11@01 N@35@01))
  (=
    __flatten_4@47@01
    (demo__bin ($Snap.combine $Snap.unit ($Snap.combine $Snap.unit $Snap.unit)) N@35@01 tid@11@01)))))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(assert (=>
  (and (<= 0 tid@11@01) (< tid@11@01 N@35@01))
  (=
    __flatten_4@47@01
    (demo__bin ($Snap.combine $Snap.unit ($Snap.combine $Snap.unit $Snap.unit)) N@35@01 tid@11@01))))
; [exec]
; exhale tid < gsize - 1 ==>
;   acc(diz.demo__tmp[tid].Ref__Integer_value, write)
; [eval] tid < gsize - 1
; [eval] gsize - 1
(push) ; 6
(set-option :timeout 10)
(assert (not (not (< tid@11@01 (- gsize@10@01 1)))))
(check-sat)
; unknown
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 6
(set-option :timeout 10)
(assert (not (< tid@11@01 (- gsize@10@01 1))))
(check-sat)
; unknown
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
; [then-branch: 5 | tid@11@01 < gsize@10@01 - 1 | live]
; [else-branch: 5 | !(tid@11@01 < gsize@10@01 - 1) | live]
(set-option :timeout 0)
(push) ; 6
; [then-branch: 5 | tid@11@01 < gsize@10@01 - 1]
(assert (< tid@11@01 (- gsize@10@01 1)))
; [eval] diz.demo__tmp[tid]
(push) ; 7
(set-option :timeout 10)
(assert (not (< $Perm.No $k@42@01)))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 7
(assert (not (>= tid@11@01 0)))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(push) ; 7
(assert (not (<
  tid@11@01
  (Seq_length
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@40@01)))))))))))))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
; [exec]
; inhale gsize > 1
(declare-const $t@48@01 $Snap)
(assert (= $t@48@01 $Snap.unit))
; [eval] gsize > 1
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale 0 < N
(declare-const $t@49@01 $Snap)
(assert (= $t@49@01 $Snap.unit))
; [eval] 0 < N
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale N < gsize
(declare-const $t@50@01 $Snap)
(assert (= $t@50@01 $Snap.unit))
; [eval] N < gsize
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale tid > 0 ==> acc(diz.demo__tmp[tid - 1].Ref__Integer_value, write)
; [eval] tid > 0
(set-option :timeout 0)
(push) ; 7
(set-option :timeout 10)
(assert (not (not (> tid@11@01 0))))
(check-sat)
; unknown
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 7
(set-option :timeout 10)
(assert (not (> tid@11@01 0)))
(check-sat)
; unknown
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
; [then-branch: 6 | tid@11@01 > 0 | live]
; [else-branch: 6 | !(tid@11@01 > 0) | live]
(set-option :timeout 0)
(push) ; 7
; [then-branch: 6 | tid@11@01 > 0]
(assert (> tid@11@01 0))
; [eval] diz.demo__tmp[tid - 1]
(push) ; 8
(set-option :timeout 10)
(assert (not (< $Perm.No $k@42@01)))
(check-sat)
; unsat
(pop) ; 8
; 0.00s
; (get-info :all-statistics)
; [eval] tid - 1
(set-option :timeout 0)
(push) ; 8
(assert (not (>= (- tid@11@01 1) 0)))
(check-sat)
; unsat
(pop) ; 8
; 0.00s
; (get-info :all-statistics)
(push) ; 8
(assert (not (<
  (- tid@11@01 1)
  (Seq_length
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@40@01)))))))))))))
(check-sat)
; unsat
(pop) ; 8
; 0.00s
; (get-info :all-statistics)
(declare-const $t@51@01 Int)
(push) ; 8
(set-option :timeout 10)
(assert (not (=
  (Seq_index
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@40@01)))))))
    tid@11@01)
  (Seq_index
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@40@01)))))))))
    (- tid@11@01 1)))))
(check-sat)
; unknown
(pop) ; 8
; 0.00s
; (get-info :all-statistics)
(assert (not
  (=
    (Seq_index
      ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@40@01)))))))))
      (- tid@11@01 1))
    $Ref.null)))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale 0 < tid && tid <= N ==>
;   diz.demo__tmp[tid - 1].Ref__Integer_value == demo__bin(N, tid - 1)
(declare-const $t@52@01 $Snap)
(assert (= $t@52@01 $Snap.unit))
; [eval] 0 < tid && tid <= N ==> diz.demo__tmp[tid - 1].Ref__Integer_value == demo__bin(N, tid - 1)
; [eval] 0 < tid && tid <= N
; [eval] 0 < tid
(set-option :timeout 0)
(push) ; 8
; [then-branch: 7 | !(0 < tid@11@01) | live]
; [else-branch: 7 | 0 < tid@11@01 | live]
(push) ; 9
; [then-branch: 7 | !(0 < tid@11@01)]
(assert (not (< 0 tid@11@01)))
(pop) ; 9
(push) ; 9
; [else-branch: 7 | 0 < tid@11@01]
(assert (< 0 tid@11@01))
; [eval] tid <= N
(pop) ; 9
(pop) ; 8
; Joined path conditions
; Joined path conditions
(assert (or (< 0 tid@11@01) (not (< 0 tid@11@01))))
(push) ; 8
(push) ; 9
(set-option :timeout 10)
(assert (not (not (and (< 0 tid@11@01) (<= tid@11@01 N@35@01)))))
(check-sat)
; unknown
(pop) ; 9
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 9
(set-option :timeout 10)
(assert (not (and (< 0 tid@11@01) (<= tid@11@01 N@35@01))))
(check-sat)
; unknown
(pop) ; 9
; 0.00s
; (get-info :all-statistics)
; [then-branch: 8 | 0 < tid@11@01 && tid@11@01 <= N@35@01 | live]
; [else-branch: 8 | !(0 < tid@11@01 && tid@11@01 <= N@35@01) | live]
(set-option :timeout 0)
(push) ; 9
; [then-branch: 8 | 0 < tid@11@01 && tid@11@01 <= N@35@01]
(assert (and (< 0 tid@11@01) (<= tid@11@01 N@35@01)))
; [eval] diz.demo__tmp[tid - 1].Ref__Integer_value == demo__bin(N, tid - 1)
; [eval] diz.demo__tmp[tid - 1]
(push) ; 10
(set-option :timeout 10)
(assert (not (< $Perm.No $k@42@01)))
(check-sat)
; unsat
(pop) ; 10
; 0.00s
; (get-info :all-statistics)
; [eval] tid - 1
(set-option :timeout 0)
(push) ; 10
(assert (not (>= (- tid@11@01 1) 0)))
(check-sat)
; unsat
(pop) ; 10
; 0.00s
; (get-info :all-statistics)
(push) ; 10
(assert (not (<
  (- tid@11@01 1)
  (Seq_length
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@40@01)))))))))))))
(check-sat)
; unsat
(pop) ; 10
; 0.00s
; (get-info :all-statistics)
; [eval] demo__bin(N, tid - 1)
; [eval] tid - 1
(push) ; 10
; [eval] N >= 0
(push) ; 11
(assert (not (>= N@35@01 0)))
(check-sat)
; unsat
(pop) ; 11
; 0.00s
; (get-info :all-statistics)
(assert (>= N@35@01 0))
; [eval] 0 <= k
(push) ; 11
(assert (not (<= 0 (- tid@11@01 1))))
(check-sat)
; unsat
(pop) ; 11
; 0.00s
; (get-info :all-statistics)
(assert (<= 0 (- tid@11@01 1)))
; [eval] k <= N
(push) ; 11
(assert (not (<= (- tid@11@01 1) N@35@01)))
(check-sat)
; unsat
(pop) ; 11
; 0.00s
; (get-info :all-statistics)
(assert (<= (- tid@11@01 1) N@35@01))
(assert (demo__bin%precondition ($Snap.combine
  $Snap.unit
  ($Snap.combine $Snap.unit $Snap.unit)) N@35@01 (- tid@11@01 1)))
(pop) ; 10
; Joined path conditions
(assert (and
  (>= N@35@01 0)
  (<= 0 (- tid@11@01 1))
  (<= (- tid@11@01 1) N@35@01)
  (demo__bin%precondition ($Snap.combine
    $Snap.unit
    ($Snap.combine $Snap.unit $Snap.unit)) N@35@01 (- tid@11@01 1))))
(pop) ; 9
(push) ; 9
; [else-branch: 8 | !(0 < tid@11@01 && tid@11@01 <= N@35@01)]
(assert (not (and (< 0 tid@11@01) (<= tid@11@01 N@35@01))))
(pop) ; 9
(pop) ; 8
; Joined path conditions
(assert (=>
  (and (< 0 tid@11@01) (<= tid@11@01 N@35@01))
  (and
    (< 0 tid@11@01)
    (<= tid@11@01 N@35@01)
    (>= N@35@01 0)
    (<= 0 (- tid@11@01 1))
    (<= (- tid@11@01 1) N@35@01)
    (demo__bin%precondition ($Snap.combine
      $Snap.unit
      ($Snap.combine $Snap.unit $Snap.unit)) N@35@01 (- tid@11@01 1)))))
; Joined path conditions
(assert (or
  (not (and (< 0 tid@11@01) (<= tid@11@01 N@35@01)))
  (and (< 0 tid@11@01) (<= tid@11@01 N@35@01))))
(assert (=>
  (and (< 0 tid@11@01) (<= tid@11@01 N@35@01))
  (=
    $t@51@01
    (demo__bin ($Snap.combine $Snap.unit ($Snap.combine $Snap.unit $Snap.unit)) N@35@01 (-
      tid@11@01
      1)))))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; N := N + 1
; [eval] N + 1
(declare-const N@53@01 Int)
(assert (= N@53@01 (+ N@35@01 1)))
; [eval] 0 < tid && tid < N
; [eval] 0 < tid
(set-option :timeout 0)
(push) ; 8
; [then-branch: 9 | !(0 < tid@11@01) | live]
; [else-branch: 9 | 0 < tid@11@01 | live]
(push) ; 9
; [then-branch: 9 | !(0 < tid@11@01)]
(assert (not (< 0 tid@11@01)))
(pop) ; 9
(push) ; 9
; [else-branch: 9 | 0 < tid@11@01]
(assert (< 0 tid@11@01))
; [eval] tid < N
(pop) ; 9
(pop) ; 8
; Joined path conditions
; Joined path conditions
(push) ; 8
(set-option :timeout 10)
(assert (not (not (and (< 0 tid@11@01) (< tid@11@01 N@53@01)))))
(check-sat)
; unknown
(pop) ; 8
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 8
(set-option :timeout 10)
(assert (not (and (< 0 tid@11@01) (< tid@11@01 N@53@01))))
(check-sat)
; unknown
(pop) ; 8
; 0.00s
; (get-info :all-statistics)
; [then-branch: 10 | 0 < tid@11@01 && tid@11@01 < N@53@01 | live]
; [else-branch: 10 | !(0 < tid@11@01 && tid@11@01 < N@53@01) | live]
(set-option :timeout 0)
(push) ; 8
; [then-branch: 10 | 0 < tid@11@01 && tid@11@01 < N@53@01]
(assert (and (< 0 tid@11@01) (< tid@11@01 N@53@01)))
; [exec]
; assert diz.demo__tmp[tid - 1].Ref__Integer_value ==
;   demo__bin(N - 1, tid - 1) &&
;   diz.demo__ar[tid].Ref__Integer_value == demo__bin(N - 1, tid)
; [eval] diz.demo__tmp[tid - 1].Ref__Integer_value == demo__bin(N - 1, tid - 1)
; [eval] diz.demo__tmp[tid - 1]
(push) ; 9
(set-option :timeout 10)
(assert (not (< $Perm.No $k@42@01)))
(check-sat)
; unsat
(pop) ; 9
; 0.00s
; (get-info :all-statistics)
; [eval] tid - 1
(set-option :timeout 0)
(push) ; 9
(assert (not (>= (- tid@11@01 1) 0)))
(check-sat)
; unsat
(pop) ; 9
; 0.00s
; (get-info :all-statistics)
(push) ; 9
(assert (not (<
  (- tid@11@01 1)
  (Seq_length
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@40@01)))))))))))))
(check-sat)
; unsat
(pop) ; 9
; 0.00s
; (get-info :all-statistics)
; [eval] demo__bin(N - 1, tid - 1)
; [eval] N - 1
; [eval] tid - 1
(push) ; 9
; [eval] N >= 0
(push) ; 10
(assert (not (>= (- N@53@01 1) 0)))
(check-sat)
; unsat
(pop) ; 10
; 0.00s
; (get-info :all-statistics)
(assert (>= (- N@53@01 1) 0))
; [eval] 0 <= k
(push) ; 10
(assert (not (<= 0 (- tid@11@01 1))))
(check-sat)
; unsat
(pop) ; 10
; 0.00s
; (get-info :all-statistics)
(assert (<= 0 (- tid@11@01 1)))
; [eval] k <= N
(push) ; 10
(assert (not (<= (- tid@11@01 1) (- N@53@01 1))))
(check-sat)
; unsat
(pop) ; 10
; 0.00s
; (get-info :all-statistics)
(assert (<= (- tid@11@01 1) (- N@53@01 1)))
(assert (demo__bin%precondition ($Snap.combine
  $Snap.unit
  ($Snap.combine $Snap.unit $Snap.unit)) (- N@53@01 1) (- tid@11@01 1)))
(pop) ; 9
; Joined path conditions
(assert (and
  (>= (- N@53@01 1) 0)
  (<= 0 (- tid@11@01 1))
  (<= (- tid@11@01 1) (- N@53@01 1))
  (demo__bin%precondition ($Snap.combine
    $Snap.unit
    ($Snap.combine $Snap.unit $Snap.unit)) (- N@53@01 1) (- tid@11@01 1))))
(push) ; 9
(assert (not (=
  $t@51@01
  (demo__bin ($Snap.combine $Snap.unit ($Snap.combine $Snap.unit $Snap.unit)) (-
    N@53@01
    1) (- tid@11@01 1)))))
(check-sat)
; unsat
(pop) ; 9
; 0.00s
; (get-info :all-statistics)
(assert (=
  $t@51@01
  (demo__bin ($Snap.combine $Snap.unit ($Snap.combine $Snap.unit $Snap.unit)) (-
    N@53@01
    1) (- tid@11@01 1))))
; [eval] diz.demo__ar[tid].Ref__Integer_value == demo__bin(N - 1, tid)
; [eval] diz.demo__ar[tid]
(push) ; 9
(set-option :timeout 10)
(assert (not (< $Perm.No $k@41@01)))
(check-sat)
; unsat
(pop) ; 9
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 9
(assert (not (>= tid@11@01 0)))
(check-sat)
; unsat
(pop) ; 9
; 0.00s
; (get-info :all-statistics)
(push) ; 9
(assert (not (<
  tid@11@01
  (Seq_length
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@40@01)))))))))))
(check-sat)
; unsat
(pop) ; 9
; 0.00s
; (get-info :all-statistics)
; [eval] demo__bin(N - 1, tid)
; [eval] N - 1
(push) ; 9
; [eval] N >= 0
; [eval] 0 <= k
(push) ; 10
(assert (not (<= 0 tid@11@01)))
(check-sat)
; unsat
(pop) ; 10
; 0.00s
; (get-info :all-statistics)
(assert (<= 0 tid@11@01))
; [eval] k <= N
(push) ; 10
(assert (not (<= tid@11@01 (- N@53@01 1))))
(check-sat)
; unsat
(pop) ; 10
; 0.00s
; (get-info :all-statistics)
(assert (<= tid@11@01 (- N@53@01 1)))
(assert (demo__bin%precondition ($Snap.combine
  $Snap.unit
  ($Snap.combine $Snap.unit $Snap.unit)) (- N@53@01 1) tid@11@01))
(pop) ; 9
; Joined path conditions
(assert (and
  (<= 0 tid@11@01)
  (<= tid@11@01 (- N@53@01 1))
  (demo__bin%precondition ($Snap.combine
    $Snap.unit
    ($Snap.combine $Snap.unit $Snap.unit)) (- N@53@01 1) tid@11@01)))
(push) ; 9
(assert (not (=
  ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@40@01))))))))))))))
  (demo__bin ($Snap.combine $Snap.unit ($Snap.combine $Snap.unit $Snap.unit)) (-
    N@53@01
    1) tid@11@01))))
(check-sat)
; unsat
(pop) ; 9
; 0.00s
; (get-info :all-statistics)
(assert (=
  ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@40@01))))))))))))))
  (demo__bin ($Snap.combine $Snap.unit ($Snap.combine $Snap.unit $Snap.unit)) (-
    N@53@01
    1) tid@11@01)))
; [exec]
; __flatten_6 := diz.demo__ar[tid]
; [eval] diz.demo__ar[tid]
(push) ; 9
(set-option :timeout 10)
(assert (not (< $Perm.No $k@41@01)))
(check-sat)
; unsat
(pop) ; 9
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 9
(assert (not (>= tid@11@01 0)))
(check-sat)
; unsat
(pop) ; 9
; 0.00s
; (get-info :all-statistics)
(push) ; 9
(assert (not (<
  tid@11@01
  (Seq_length
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@40@01)))))))))))
(check-sat)
; unsat
(pop) ; 9
; 0.00s
; (get-info :all-statistics)
(declare-const __flatten_6@54@01 $Ref)
(assert (=
  __flatten_6@54@01
  (Seq_index
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@40@01)))))))
    tid@11@01)))
; [exec]
; __flatten_8 := diz.demo__tmp[tid - 1]
; [eval] diz.demo__tmp[tid - 1]
(push) ; 9
(set-option :timeout 10)
(assert (not (< $Perm.No $k@42@01)))
(check-sat)
; unsat
(pop) ; 9
; 0.00s
; (get-info :all-statistics)
; [eval] tid - 1
(set-option :timeout 0)
(push) ; 9
(assert (not (>= (- tid@11@01 1) 0)))
(check-sat)
; unsat
(pop) ; 9
; 0.00s
; (get-info :all-statistics)
(push) ; 9
(assert (not (<
  (- tid@11@01 1)
  (Seq_length
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@40@01)))))))))))))
(check-sat)
; unsat
(pop) ; 9
; 0.00s
; (get-info :all-statistics)
(declare-const __flatten_8@55@01 $Ref)
(assert (=
  __flatten_8@55@01
  (Seq_index
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@40@01)))))))))
    (- tid@11@01 1))))
; [exec]
; __flatten_9 := diz.demo__ar[tid]
; [eval] diz.demo__ar[tid]
(push) ; 9
(set-option :timeout 10)
(assert (not (< $Perm.No $k@41@01)))
(check-sat)
; unsat
(pop) ; 9
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 9
(assert (not (>= tid@11@01 0)))
(check-sat)
; unsat
(pop) ; 9
; 0.00s
; (get-info :all-statistics)
(push) ; 9
(assert (not (<
  tid@11@01
  (Seq_length
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@40@01)))))))))))
(check-sat)
; unsat
(pop) ; 9
; 0.00s
; (get-info :all-statistics)
(declare-const __flatten_9@56@01 $Ref)
(assert (=
  __flatten_9@56@01
  (Seq_index
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@40@01)))))))
    tid@11@01)))
; [exec]
; __flatten_7 := __flatten_8.Ref__Integer_value +
;   __flatten_9.Ref__Integer_value
; [eval] __flatten_8.Ref__Integer_value + __flatten_9.Ref__Integer_value
(push) ; 9
(set-option :timeout 10)
(assert (not (=
  (Seq_index
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@40@01)))))))))
    (- tid@11@01 1))
  __flatten_8@55@01)))
(check-sat)
; unsat
(pop) ; 9
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 9
(set-option :timeout 10)
(assert (not (=
  (Seq_index
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@40@01)))))))))
    (- tid@11@01 1))
  __flatten_9@56@01)))
(check-sat)
; unknown
(pop) ; 9
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 9
(set-option :timeout 10)
(assert (not (=
  (Seq_index
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@40@01)))))))
    tid@11@01)
  __flatten_9@56@01)))
(check-sat)
; unsat
(pop) ; 9
; 0.00s
; (get-info :all-statistics)
(declare-const __flatten_7@57@01 Int)
(assert (=
  __flatten_7@57@01
  (+
    $t@51@01
    ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@40@01)))))))))))))))))
; [exec]
; __flatten_6.Ref__Integer_value := __flatten_7
(set-option :timeout 0)
(push) ; 9
(set-option :timeout 10)
(assert (not (=
  (Seq_index
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@40@01)))))))))
    (- tid@11@01 1))
  __flatten_6@54@01)))
(check-sat)
; unknown
(pop) ; 9
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 9
(set-option :timeout 10)
(assert (not (=
  (Seq_index
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@40@01)))))))
    tid@11@01)
  __flatten_6@54@01)))
(check-sat)
; unsat
(pop) ; 9
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 9
(set-option :timeout 10)
(assert (not (=
  (Seq_index
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@40@01)))))))))
    (- tid@11@01 1))
  __flatten_6@54@01)))
(check-sat)
; unknown
(pop) ; 9
; 0.00s
; (get-info :all-statistics)
(assert (not (= __flatten_6@54@01 $Ref.null)))
; [exec]
; assert diz.demo__ar[tid].Ref__Integer_value == demo__bin(N, tid)
; [eval] diz.demo__ar[tid].Ref__Integer_value == demo__bin(N, tid)
; [eval] diz.demo__ar[tid]
(set-option :timeout 0)
(push) ; 9
(set-option :timeout 10)
(assert (not (< $Perm.No $k@41@01)))
(check-sat)
; unsat
(pop) ; 9
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 9
(assert (not (>= tid@11@01 0)))
(check-sat)
; unsat
(pop) ; 9
; 0.00s
; (get-info :all-statistics)
(push) ; 9
(assert (not (<
  tid@11@01
  (Seq_length
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@40@01)))))))))))
(check-sat)
; unsat
(pop) ; 9
; 0.00s
; (get-info :all-statistics)
; [eval] demo__bin(N, tid)
(push) ; 9
; [eval] N >= 0
(push) ; 10
(assert (not (>= N@53@01 0)))
(check-sat)
; unsat
(pop) ; 10
; 0.00s
; (get-info :all-statistics)
(assert (>= N@53@01 0))
; [eval] 0 <= k
; [eval] k <= N
(push) ; 10
(assert (not (<= tid@11@01 N@53@01)))
(check-sat)
; unsat
(pop) ; 10
; 0.00s
; (get-info :all-statistics)
(assert (<= tid@11@01 N@53@01))
(assert (demo__bin%precondition ($Snap.combine
  $Snap.unit
  ($Snap.combine $Snap.unit $Snap.unit)) N@53@01 tid@11@01))
(pop) ; 9
; Joined path conditions
(assert (and
  (>= N@53@01 0)
  (<= tid@11@01 N@53@01)
  (demo__bin%precondition ($Snap.combine
    $Snap.unit
    ($Snap.combine $Snap.unit $Snap.unit)) N@53@01 tid@11@01)))
(push) ; 9
(assert (not (=
  __flatten_7@57@01
  (demo__bin ($Snap.combine $Snap.unit ($Snap.combine $Snap.unit $Snap.unit)) N@53@01 tid@11@01))))
(check-sat)
; unsat
(pop) ; 9
; 0.00s
; (get-info :all-statistics)
(assert (=
  __flatten_7@57@01
  (demo__bin ($Snap.combine $Snap.unit ($Snap.combine $Snap.unit $Snap.unit)) N@53@01 tid@11@01)))
; [exec]
; assert gsize > 1
; [eval] gsize > 1
; [exec]
; assert 0 < N
; [eval] 0 < N
(push) ; 9
(assert (not (< 0 N@53@01)))
(check-sat)
; unsat
(pop) ; 9
; 0.00s
; (get-info :all-statistics)
(assert (< 0 N@53@01))
; [exec]
; assert N < gsize
; [eval] N < gsize
(push) ; 9
(assert (not (< N@53@01 gsize@10@01)))
(check-sat)
; unsat
(pop) ; 9
; 0.00s
; (get-info :all-statistics)
(assert (< N@53@01 gsize@10@01))
; [exec]
; exhale tid > 0 ==> acc(diz.demo__tmp[tid - 1].Ref__Integer_value, write)
; [eval] tid > 0
(push) ; 9
(set-option :timeout 10)
(assert (not (not (> tid@11@01 0))))
(check-sat)
; unknown
(pop) ; 9
; 0.00s
; (get-info :all-statistics)
; [then-branch: 11 | tid@11@01 > 0 | live]
; [else-branch: 11 | !(tid@11@01 > 0) | dead]
(set-option :timeout 0)
(push) ; 9
; [then-branch: 11 | tid@11@01 > 0]
; [eval] diz.demo__tmp[tid - 1]
(push) ; 10
(set-option :timeout 10)
(assert (not (< $Perm.No $k@42@01)))
(check-sat)
; unsat
(pop) ; 10
; 0.00s
; (get-info :all-statistics)
; [eval] tid - 1
(set-option :timeout 0)
(push) ; 10
(assert (not (>= (- tid@11@01 1) 0)))
(check-sat)
; unsat
(pop) ; 10
; 0.00s
; (get-info :all-statistics)
(push) ; 10
(assert (not (<
  (- tid@11@01 1)
  (Seq_length
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@40@01)))))))))))))
(check-sat)
; unsat
(pop) ; 10
; 0.00s
; (get-info :all-statistics)
; [exec]
; inhale gsize > 1
(declare-const $t@58@01 $Snap)
(assert (= $t@58@01 $Snap.unit))
; [eval] gsize > 1
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale 0 < N
(declare-const $t@59@01 $Snap)
(assert (= $t@59@01 $Snap.unit))
; [eval] 0 < N
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale N < gsize
(declare-const $t@60@01 $Snap)
(assert (= $t@60@01 $Snap.unit))
; [eval] N < gsize
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale tid < gsize - 1 ==>
;   acc(diz.demo__tmp[tid].Ref__Integer_value, write)
; [eval] tid < gsize - 1
; [eval] gsize - 1
(set-option :timeout 0)
(push) ; 10
(set-option :timeout 10)
(assert (not (not (< tid@11@01 (- gsize@10@01 1)))))
(check-sat)
; unknown
(pop) ; 10
; 0.00s
; (get-info :all-statistics)
; [then-branch: 12 | tid@11@01 < gsize@10@01 - 1 | live]
; [else-branch: 12 | !(tid@11@01 < gsize@10@01 - 1) | dead]
(set-option :timeout 0)
(push) ; 10
; [then-branch: 12 | tid@11@01 < gsize@10@01 - 1]
; [eval] diz.demo__tmp[tid]
(push) ; 11
(set-option :timeout 10)
(assert (not (< $Perm.No $k@42@01)))
(check-sat)
; unsat
(pop) ; 11
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 11
(assert (not (>= tid@11@01 0)))
(check-sat)
; unsat
(pop) ; 11
; 0.00s
; (get-info :all-statistics)
(push) ; 11
(assert (not (<
  tid@11@01
  (Seq_length
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@40@01)))))))))))))
(check-sat)
; unsat
(pop) ; 11
; 0.00s
; (get-info :all-statistics)
(declare-const $t@61@01 Int)
(push) ; 11
(set-option :timeout 10)
(assert (not (=
  __flatten_6@54@01
  (Seq_index
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@40@01)))))))))
    tid@11@01))))
(check-sat)
; unknown
(pop) ; 11
; 0.00s
; (get-info :all-statistics)
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; Loop head block: Re-establish invariant
; [eval] 0 <= tid
; [eval] tid < tcount
; [eval] tid == lid
; [eval] tcount == gsize
; [eval] gid == 0
(declare-const $k@62@01 $Perm)
(assert ($Perm.isReadVar $k@62@01))
(set-option :timeout 0)
(push) ; 11
(set-option :timeout 10)
(assert (not (not (= $k@41@01 $Perm.No))))
(check-sat)
; unsat
(pop) ; 11
; 0.00s
; (get-info :all-statistics)
(assert (< $k@62@01 $k@41@01))
(assert (<= $Perm.No (- $k@41@01 $k@62@01)))
(assert (<= (- $k@41@01 $k@62@01) $Perm.Write))
(assert (=> (< $Perm.No (- $k@41@01 $k@62@01)) (not (= diz@7@01 $Ref.null))))
; [eval] |diz.demo__ar| == gsize
; [eval] |diz.demo__ar|
(set-option :timeout 0)
(push) ; 11
(set-option :timeout 10)
(assert (not (< $Perm.No $k@41@01)))
(check-sat)
; unsat
(pop) ; 11
; 0.00s
; (get-info :all-statistics)
(declare-const $k@63@01 $Perm)
(assert ($Perm.isReadVar $k@63@01))
(set-option :timeout 0)
(push) ; 11
(set-option :timeout 10)
(assert (not (not (= $k@42@01 $Perm.No))))
(check-sat)
; unsat
(pop) ; 11
; 0.00s
; (get-info :all-statistics)
(assert (< $k@63@01 $k@42@01))
(assert (<= $Perm.No (- $k@42@01 $k@63@01)))
(assert (<= (- $k@42@01 $k@63@01) $Perm.Write))
(assert (=> (< $Perm.No (- $k@42@01 $k@63@01)) (not (= diz@7@01 $Ref.null))))
; [eval] |diz.demo__tmp| == gsize
; [eval] |diz.demo__tmp|
(set-option :timeout 0)
(push) ; 11
(set-option :timeout 10)
(assert (not (< $Perm.No $k@42@01)))
(check-sat)
; unsat
(pop) ; 11
; 0.00s
; (get-info :all-statistics)
; [eval] gsize > 1
; [eval] 0 < N
; [eval] N < gsize
; [eval] diz.demo__ar[tid]
(set-option :timeout 0)
(push) ; 11
(set-option :timeout 10)
(assert (not (< $Perm.No $k@41@01)))
(check-sat)
; unsat
(pop) ; 11
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 11
(assert (not (>= tid@11@01 0)))
(check-sat)
; unsat
(pop) ; 11
; 0.00s
; (get-info :all-statistics)
(push) ; 11
(assert (not (<
  tid@11@01
  (Seq_length
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@40@01)))))))))))
(check-sat)
; unsat
(pop) ; 11
; 0.00s
; (get-info :all-statistics)
(push) ; 11
(set-option :timeout 10)
(assert (not (=
  (Seq_index
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@40@01)))))))))
    tid@11@01)
  (Seq_index
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@40@01)))))))
    tid@11@01))))
(check-sat)
; unknown
(pop) ; 11
; 0.00s
; (get-info :all-statistics)
; [eval] diz.demo__tmp[tid]
(set-option :timeout 0)
(push) ; 11
(set-option :timeout 10)
(assert (not (< $Perm.No $k@42@01)))
(check-sat)
; unsat
(pop) ; 11
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 11
(assert (not (>= tid@11@01 0)))
(check-sat)
; unsat
(pop) ; 11
; 0.00s
; (get-info :all-statistics)
(push) ; 11
(assert (not (<
  tid@11@01
  (Seq_length
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@40@01)))))))))))))
(check-sat)
; unsat
(pop) ; 11
; 0.00s
; (get-info :all-statistics)
; [eval] diz.demo__ar[tid].Ref__Integer_value == (tid < N ? demo__bin(N, tid) : 1)
; [eval] diz.demo__ar[tid]
(push) ; 11
(set-option :timeout 10)
(assert (not (< $Perm.No $k@41@01)))
(check-sat)
; unsat
(pop) ; 11
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 11
(assert (not (>= tid@11@01 0)))
(check-sat)
; unsat
(pop) ; 11
; 0.00s
; (get-info :all-statistics)
(push) ; 11
(assert (not (<
  tid@11@01
  (Seq_length
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@40@01)))))))))))
(check-sat)
; unsat
(pop) ; 11
; 0.00s
; (get-info :all-statistics)
(push) ; 11
(set-option :timeout 10)
(assert (not (=
  (Seq_index
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@40@01)))))))))
    tid@11@01)
  (Seq_index
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@40@01)))))))
    tid@11@01))))
(check-sat)
; unknown
(pop) ; 11
; 0.00s
; (get-info :all-statistics)
; [eval] (tid < N ? demo__bin(N, tid) : 1)
; [eval] tid < N
(set-option :timeout 0)
(push) ; 11
(push) ; 12
(set-option :timeout 10)
(assert (not (not (< tid@11@01 N@53@01))))
(check-sat)
; unknown
(pop) ; 12
; 0.00s
; (get-info :all-statistics)
; [then-branch: 13 | tid@11@01 < N@53@01 | live]
; [else-branch: 13 | !(tid@11@01 < N@53@01) | dead]
(set-option :timeout 0)
(push) ; 12
; [then-branch: 13 | tid@11@01 < N@53@01]
; [eval] demo__bin(N, tid)
(push) ; 13
; [eval] N >= 0
; [eval] 0 <= k
; [eval] k <= N
(pop) ; 13
; Joined path conditions
(pop) ; 12
(pop) ; 11
; Joined path conditions
(pop) ; 10
(pop) ; 9
(pop) ; 8
(push) ; 8
; [else-branch: 10 | !(0 < tid@11@01 && tid@11@01 < N@53@01)]
(assert (not (and (< 0 tid@11@01) (< tid@11@01 N@53@01))))
(pop) ; 8
; [eval] !(0 < tid && tid < N)
; [eval] 0 < tid && tid < N
; [eval] 0 < tid
(push) ; 8
; [then-branch: 14 | !(0 < tid@11@01) | live]
; [else-branch: 14 | 0 < tid@11@01 | live]
(push) ; 9
; [then-branch: 14 | !(0 < tid@11@01)]
(assert (not (< 0 tid@11@01)))
(pop) ; 9
(push) ; 9
; [else-branch: 14 | 0 < tid@11@01]
(assert (< 0 tid@11@01))
; [eval] tid < N
(pop) ; 9
(pop) ; 8
; Joined path conditions
; Joined path conditions
(push) ; 8
(set-option :timeout 10)
(assert (not (and (< 0 tid@11@01) (< tid@11@01 N@53@01))))
(check-sat)
; unknown
(pop) ; 8
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 8
(set-option :timeout 10)
(assert (not (not (and (< 0 tid@11@01) (< tid@11@01 N@53@01)))))
(check-sat)
; unknown
(pop) ; 8
; 0.00s
; (get-info :all-statistics)
; [then-branch: 15 | !(0 < tid@11@01 && tid@11@01 < N@53@01) | live]
; [else-branch: 15 | 0 < tid@11@01 && tid@11@01 < N@53@01 | live]
(set-option :timeout 0)
(push) ; 8
; [then-branch: 15 | !(0 < tid@11@01 && tid@11@01 < N@53@01)]
(assert (not (and (< 0 tid@11@01) (< tid@11@01 N@53@01))))
; [exec]
; assert gsize > 1
; [eval] gsize > 1
; [exec]
; assert 0 < N
; [eval] 0 < N
(push) ; 9
(assert (not (< 0 N@53@01)))
(check-sat)
; unsat
(pop) ; 9
; 0.00s
; (get-info :all-statistics)
(assert (< 0 N@53@01))
; [exec]
; assert N < gsize
; [eval] N < gsize
(push) ; 9
(assert (not (< N@53@01 gsize@10@01)))
(check-sat)
; unsat
(pop) ; 9
; 0.00s
; (get-info :all-statistics)
(assert (< N@53@01 gsize@10@01))
; [exec]
; exhale tid > 0 ==> acc(diz.demo__tmp[tid - 1].Ref__Integer_value, write)
; [eval] tid > 0
(push) ; 9
(set-option :timeout 10)
(assert (not (not (> tid@11@01 0))))
(check-sat)
; unknown
(pop) ; 9
; 0.00s
; (get-info :all-statistics)
; [then-branch: 16 | tid@11@01 > 0 | live]
; [else-branch: 16 | !(tid@11@01 > 0) | dead]
(set-option :timeout 0)
(push) ; 9
; [then-branch: 16 | tid@11@01 > 0]
; [eval] diz.demo__tmp[tid - 1]
(push) ; 10
(set-option :timeout 10)
(assert (not (< $Perm.No $k@42@01)))
(check-sat)
; unsat
(pop) ; 10
; 0.00s
; (get-info :all-statistics)
; [eval] tid - 1
(set-option :timeout 0)
(push) ; 10
(assert (not (>= (- tid@11@01 1) 0)))
(check-sat)
; unsat
(pop) ; 10
; 0.00s
; (get-info :all-statistics)
(push) ; 10
(assert (not (<
  (- tid@11@01 1)
  (Seq_length
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@40@01)))))))))))))
(check-sat)
; unsat
(pop) ; 10
; 0.00s
; (get-info :all-statistics)
; [exec]
; inhale gsize > 1
(declare-const $t@64@01 $Snap)
(assert (= $t@64@01 $Snap.unit))
; [eval] gsize > 1
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale 0 < N
(declare-const $t@65@01 $Snap)
(assert (= $t@65@01 $Snap.unit))
; [eval] 0 < N
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale N < gsize
(declare-const $t@66@01 $Snap)
(assert (= $t@66@01 $Snap.unit))
; [eval] N < gsize
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale tid < gsize - 1 ==>
;   acc(diz.demo__tmp[tid].Ref__Integer_value, write)
; [eval] tid < gsize - 1
; [eval] gsize - 1
(set-option :timeout 0)
(push) ; 10
(set-option :timeout 10)
(assert (not (not (< tid@11@01 (- gsize@10@01 1)))))
(check-sat)
; unknown
(pop) ; 10
; 0.00s
; (get-info :all-statistics)
; [then-branch: 17 | tid@11@01 < gsize@10@01 - 1 | live]
; [else-branch: 17 | !(tid@11@01 < gsize@10@01 - 1) | dead]
(set-option :timeout 0)
(push) ; 10
; [then-branch: 17 | tid@11@01 < gsize@10@01 - 1]
; [eval] diz.demo__tmp[tid]
(push) ; 11
(set-option :timeout 10)
(assert (not (< $Perm.No $k@42@01)))
(check-sat)
; unsat
(pop) ; 11
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 11
(assert (not (>= tid@11@01 0)))
(check-sat)
; unsat
(pop) ; 11
; 0.00s
; (get-info :all-statistics)
(push) ; 11
(assert (not (<
  tid@11@01
  (Seq_length
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@40@01)))))))))))))
(check-sat)
; unsat
(pop) ; 11
; 0.00s
; (get-info :all-statistics)
(declare-const $t@67@01 Int)
(push) ; 11
(set-option :timeout 10)
(assert (not (=
  (Seq_index
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@40@01)))))))
    tid@11@01)
  (Seq_index
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@40@01)))))))))
    tid@11@01))))
(check-sat)
; unknown
(pop) ; 11
; 0.00s
; (get-info :all-statistics)
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; Loop head block: Re-establish invariant
; [eval] 0 <= tid
(set-option :timeout 0)
(push) ; 11
(assert (not (<= 0 tid@11@01)))
(check-sat)
; unsat
(pop) ; 11
; 0.00s
; (get-info :all-statistics)
(assert (<= 0 tid@11@01))
; [eval] tid < tcount
; [eval] tid == lid
; [eval] tcount == gsize
; [eval] gid == 0
(declare-const $k@68@01 $Perm)
(assert ($Perm.isReadVar $k@68@01))
(push) ; 11
(set-option :timeout 10)
(assert (not (not (= $k@41@01 $Perm.No))))
(check-sat)
; unsat
(pop) ; 11
; 0.00s
; (get-info :all-statistics)
(assert (< $k@68@01 $k@41@01))
(assert (<= $Perm.No (- $k@41@01 $k@68@01)))
(assert (<= (- $k@41@01 $k@68@01) $Perm.Write))
(assert (=> (< $Perm.No (- $k@41@01 $k@68@01)) (not (= diz@7@01 $Ref.null))))
; [eval] |diz.demo__ar| == gsize
; [eval] |diz.demo__ar|
(set-option :timeout 0)
(push) ; 11
(set-option :timeout 10)
(assert (not (< $Perm.No $k@41@01)))
(check-sat)
; unsat
(pop) ; 11
; 0.00s
; (get-info :all-statistics)
(declare-const $k@69@01 $Perm)
(assert ($Perm.isReadVar $k@69@01))
(set-option :timeout 0)
(push) ; 11
(set-option :timeout 10)
(assert (not (not (= $k@42@01 $Perm.No))))
(check-sat)
; unsat
(pop) ; 11
; 0.00s
; (get-info :all-statistics)
(assert (< $k@69@01 $k@42@01))
(assert (<= $Perm.No (- $k@42@01 $k@69@01)))
(assert (<= (- $k@42@01 $k@69@01) $Perm.Write))
(assert (=> (< $Perm.No (- $k@42@01 $k@69@01)) (not (= diz@7@01 $Ref.null))))
; [eval] |diz.demo__tmp| == gsize
; [eval] |diz.demo__tmp|
(set-option :timeout 0)
(push) ; 11
(set-option :timeout 10)
(assert (not (< $Perm.No $k@42@01)))
(check-sat)
; unsat
(pop) ; 11
; 0.00s
; (get-info :all-statistics)
; [eval] gsize > 1
; [eval] 0 < N
; [eval] N < gsize
; [eval] diz.demo__ar[tid]
(set-option :timeout 0)
(push) ; 11
(set-option :timeout 10)
(assert (not (< $Perm.No $k@41@01)))
(check-sat)
; unsat
(pop) ; 11
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 11
(assert (not (>= tid@11@01 0)))
(check-sat)
; unsat
(pop) ; 11
; 0.00s
; (get-info :all-statistics)
(push) ; 11
(assert (not (<
  tid@11@01
  (Seq_length
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@40@01)))))))))))
(check-sat)
; unsat
(pop) ; 11
; 0.00s
; (get-info :all-statistics)
; [eval] diz.demo__tmp[tid]
(push) ; 11
(set-option :timeout 10)
(assert (not (< $Perm.No $k@42@01)))
(check-sat)
; unsat
(pop) ; 11
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 11
(assert (not (>= tid@11@01 0)))
(check-sat)
; unsat
(pop) ; 11
; 0.00s
; (get-info :all-statistics)
(push) ; 11
(assert (not (<
  tid@11@01
  (Seq_length
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@40@01)))))))))))))
(check-sat)
; unsat
(pop) ; 11
; 0.00s
; (get-info :all-statistics)
; [eval] diz.demo__ar[tid].Ref__Integer_value == (tid < N ? demo__bin(N, tid) : 1)
; [eval] diz.demo__ar[tid]
(push) ; 11
(set-option :timeout 10)
(assert (not (< $Perm.No $k@41@01)))
(check-sat)
; unsat
(pop) ; 11
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 11
(assert (not (>= tid@11@01 0)))
(check-sat)
; unsat
(pop) ; 11
; 0.00s
; (get-info :all-statistics)
(push) ; 11
(assert (not (<
  tid@11@01
  (Seq_length
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@40@01)))))))))))
(check-sat)
; unsat
(pop) ; 11
; 0.00s
; (get-info :all-statistics)
; [eval] (tid < N ? demo__bin(N, tid) : 1)
; [eval] tid < N
(push) ; 11
(push) ; 12
(set-option :timeout 10)
(assert (not (not (< tid@11@01 N@53@01))))
(check-sat)
; unsat
(pop) ; 12
; 0.00s
; (get-info :all-statistics)
; [then-branch: 18 | tid@11@01 < N@53@01 | dead]
; [else-branch: 18 | !(tid@11@01 < N@53@01) | live]
(set-option :timeout 0)
(push) ; 12
; [else-branch: 18 | !(tid@11@01 < N@53@01)]
(assert (not (< tid@11@01 N@53@01)))
(pop) ; 12
(pop) ; 11
; Joined path conditions
(assert (not (< tid@11@01 N@53@01)))
(push) ; 11
(assert (not (=
  ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@40@01))))))))))))))
  1)))
(check-sat)
; unsat
(pop) ; 11
; 0.00s
; (get-info :all-statistics)
(assert (=
  ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@40@01))))))))))))))
  1))
(pop) ; 10
(pop) ; 9
(pop) ; 8
(push) ; 8
; [else-branch: 15 | 0 < tid@11@01 && tid@11@01 < N@53@01]
(assert (and (< 0 tid@11@01) (< tid@11@01 N@53@01)))
(pop) ; 8
(pop) ; 7
(push) ; 7
; [else-branch: 6 | !(tid@11@01 > 0)]
(assert (not (> tid@11@01 0)))
(declare-const $t@70@01 $Snap)
(assert (= $t@70@01 $Snap.unit))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale 0 < tid && tid <= N ==>
;   diz.demo__tmp[tid - 1].Ref__Integer_value == demo__bin(N, tid - 1)
(declare-const $t@71@01 $Snap)
(assert (= $t@71@01 $Snap.unit))
; [eval] 0 < tid && tid <= N ==> diz.demo__tmp[tid - 1].Ref__Integer_value == demo__bin(N, tid - 1)
; [eval] 0 < tid && tid <= N
; [eval] 0 < tid
(set-option :timeout 0)
(push) ; 8
; [then-branch: 19 | !(0 < tid@11@01) | live]
; [else-branch: 19 | 0 < tid@11@01 | live]
(push) ; 9
; [then-branch: 19 | !(0 < tid@11@01)]
(assert (not (< 0 tid@11@01)))
(pop) ; 9
(push) ; 9
; [else-branch: 19 | 0 < tid@11@01]
(assert (< 0 tid@11@01))
; [eval] tid <= N
(pop) ; 9
(pop) ; 8
; Joined path conditions
; Joined path conditions
(assert (or (< 0 tid@11@01) (not (< 0 tid@11@01))))
(push) ; 8
(push) ; 9
(set-option :timeout 10)
(assert (not (not (and (< 0 tid@11@01) (<= tid@11@01 N@35@01)))))
(check-sat)
; unsat
(pop) ; 9
; 0.00s
; (get-info :all-statistics)
; [then-branch: 20 | 0 < tid@11@01 && tid@11@01 <= N@35@01 | dead]
; [else-branch: 20 | !(0 < tid@11@01 && tid@11@01 <= N@35@01) | live]
(set-option :timeout 0)
(push) ; 9
; [else-branch: 20 | !(0 < tid@11@01 && tid@11@01 <= N@35@01)]
(assert (not (and (< 0 tid@11@01) (<= tid@11@01 N@35@01))))
(pop) ; 9
(pop) ; 8
; Joined path conditions
(assert (not (and (< 0 tid@11@01) (<= tid@11@01 N@35@01))))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; N := N + 1
; [eval] N + 1
(declare-const N@72@01 Int)
(assert (= N@72@01 (+ N@35@01 1)))
; [eval] 0 < tid && tid < N
; [eval] 0 < tid
(set-option :timeout 0)
(push) ; 8
; [then-branch: 21 | !(0 < tid@11@01) | live]
; [else-branch: 21 | 0 < tid@11@01 | live]
(push) ; 9
; [then-branch: 21 | !(0 < tid@11@01)]
(assert (not (< 0 tid@11@01)))
(pop) ; 9
(push) ; 9
; [else-branch: 21 | 0 < tid@11@01]
(assert (< 0 tid@11@01))
; [eval] tid < N
(pop) ; 9
(pop) ; 8
; Joined path conditions
; Joined path conditions
(push) ; 8
(set-option :timeout 10)
(assert (not (not (and (< 0 tid@11@01) (< tid@11@01 N@72@01)))))
(check-sat)
; unsat
(pop) ; 8
; 0.00s
; (get-info :all-statistics)
; [then-branch: 22 | 0 < tid@11@01 && tid@11@01 < N@72@01 | dead]
; [else-branch: 22 | !(0 < tid@11@01 && tid@11@01 < N@72@01) | live]
(set-option :timeout 0)
(push) ; 8
; [else-branch: 22 | !(0 < tid@11@01 && tid@11@01 < N@72@01)]
(assert (not (and (< 0 tid@11@01) (< tid@11@01 N@72@01))))
(pop) ; 8
; [eval] !(0 < tid && tid < N)
; [eval] 0 < tid && tid < N
; [eval] 0 < tid
(push) ; 8
; [then-branch: 23 | !(0 < tid@11@01) | live]
; [else-branch: 23 | 0 < tid@11@01 | live]
(push) ; 9
; [then-branch: 23 | !(0 < tid@11@01)]
(assert (not (< 0 tid@11@01)))
(pop) ; 9
(push) ; 9
; [else-branch: 23 | 0 < tid@11@01]
(assert (< 0 tid@11@01))
; [eval] tid < N
(pop) ; 9
(pop) ; 8
; Joined path conditions
; Joined path conditions
(push) ; 8
(set-option :timeout 10)
(assert (not (and (< 0 tid@11@01) (< tid@11@01 N@72@01))))
(check-sat)
; unknown
(pop) ; 8
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 8
(set-option :timeout 10)
(assert (not (not (and (< 0 tid@11@01) (< tid@11@01 N@72@01)))))
(check-sat)
; unsat
(pop) ; 8
; 0.00s
; (get-info :all-statistics)
; [then-branch: 24 | !(0 < tid@11@01 && tid@11@01 < N@72@01) | live]
; [else-branch: 24 | 0 < tid@11@01 && tid@11@01 < N@72@01 | dead]
(set-option :timeout 0)
(push) ; 8
; [then-branch: 24 | !(0 < tid@11@01 && tid@11@01 < N@72@01)]
(assert (not (and (< 0 tid@11@01) (< tid@11@01 N@72@01))))
; [exec]
; assert gsize > 1
; [eval] gsize > 1
; [exec]
; assert 0 < N
; [eval] 0 < N
(push) ; 9
(assert (not (< 0 N@72@01)))
(check-sat)
; unsat
(pop) ; 9
; 0.00s
; (get-info :all-statistics)
(assert (< 0 N@72@01))
; [exec]
; assert N < gsize
; [eval] N < gsize
(push) ; 9
(assert (not (< N@72@01 gsize@10@01)))
(check-sat)
; unsat
(pop) ; 9
; 0.00s
; (get-info :all-statistics)
(assert (< N@72@01 gsize@10@01))
; [exec]
; exhale tid > 0 ==> acc(diz.demo__tmp[tid - 1].Ref__Integer_value, write)
; [eval] tid > 0
; [then-branch: 25 | tid@11@01 > 0 | dead]
; [else-branch: 25 | !(tid@11@01 > 0) | live]
(push) ; 9
; [else-branch: 25 | !(tid@11@01 > 0)]
; [exec]
; inhale gsize > 1
(declare-const $t@73@01 $Snap)
(assert (= $t@73@01 $Snap.unit))
; [eval] gsize > 1
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale 0 < N
(declare-const $t@74@01 $Snap)
(assert (= $t@74@01 $Snap.unit))
; [eval] 0 < N
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale N < gsize
(declare-const $t@75@01 $Snap)
(assert (= $t@75@01 $Snap.unit))
; [eval] N < gsize
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale tid < gsize - 1 ==>
;   acc(diz.demo__tmp[tid].Ref__Integer_value, write)
; [eval] tid < gsize - 1
; [eval] gsize - 1
(set-option :timeout 0)
(push) ; 10
(set-option :timeout 10)
(assert (not (not (< tid@11@01 (- gsize@10@01 1)))))
(check-sat)
; unknown
(pop) ; 10
; 0.00s
; (get-info :all-statistics)
; [then-branch: 26 | tid@11@01 < gsize@10@01 - 1 | live]
; [else-branch: 26 | !(tid@11@01 < gsize@10@01 - 1) | dead]
(set-option :timeout 0)
(push) ; 10
; [then-branch: 26 | tid@11@01 < gsize@10@01 - 1]
; [eval] diz.demo__tmp[tid]
(push) ; 11
(set-option :timeout 10)
(assert (not (< $Perm.No $k@42@01)))
(check-sat)
; unsat
(pop) ; 11
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 11
(assert (not (>= tid@11@01 0)))
(check-sat)
; unsat
(pop) ; 11
; 0.00s
; (get-info :all-statistics)
(push) ; 11
(assert (not (<
  tid@11@01
  (Seq_length
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@40@01)))))))))))))
(check-sat)
; unsat
(pop) ; 11
; 0.00s
; (get-info :all-statistics)
(declare-const $t@76@01 Int)
(push) ; 11
(set-option :timeout 10)
(assert (not (=
  (Seq_index
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@40@01)))))))
    tid@11@01)
  (Seq_index
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@40@01)))))))))
    tid@11@01))))
(check-sat)
; unknown
(pop) ; 11
; 0.00s
; (get-info :all-statistics)
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; Loop head block: Re-establish invariant
; [eval] 0 <= tid
(set-option :timeout 0)
(push) ; 11
(assert (not (<= 0 tid@11@01)))
(check-sat)
; unsat
(pop) ; 11
; 0.00s
; (get-info :all-statistics)
(assert (<= 0 tid@11@01))
; [eval] tid < tcount
; [eval] tid == lid
; [eval] tcount == gsize
; [eval] gid == 0
(declare-const $k@77@01 $Perm)
(assert ($Perm.isReadVar $k@77@01))
(push) ; 11
(set-option :timeout 10)
(assert (not (not (= $k@41@01 $Perm.No))))
(check-sat)
; unsat
(pop) ; 11
; 0.00s
; (get-info :all-statistics)
(assert (< $k@77@01 $k@41@01))
(assert (<= $Perm.No (- $k@41@01 $k@77@01)))
(assert (<= (- $k@41@01 $k@77@01) $Perm.Write))
(assert (=> (< $Perm.No (- $k@41@01 $k@77@01)) (not (= diz@7@01 $Ref.null))))
; [eval] |diz.demo__ar| == gsize
; [eval] |diz.demo__ar|
(set-option :timeout 0)
(push) ; 11
(set-option :timeout 10)
(assert (not (< $Perm.No $k@41@01)))
(check-sat)
; unsat
(pop) ; 11
; 0.00s
; (get-info :all-statistics)
(declare-const $k@78@01 $Perm)
(assert ($Perm.isReadVar $k@78@01))
(set-option :timeout 0)
(push) ; 11
(set-option :timeout 10)
(assert (not (not (= $k@42@01 $Perm.No))))
(check-sat)
; unsat
(pop) ; 11
; 0.00s
; (get-info :all-statistics)
(assert (< $k@78@01 $k@42@01))
(assert (<= $Perm.No (- $k@42@01 $k@78@01)))
(assert (<= (- $k@42@01 $k@78@01) $Perm.Write))
(assert (=> (< $Perm.No (- $k@42@01 $k@78@01)) (not (= diz@7@01 $Ref.null))))
; [eval] |diz.demo__tmp| == gsize
; [eval] |diz.demo__tmp|
(set-option :timeout 0)
(push) ; 11
(set-option :timeout 10)
(assert (not (< $Perm.No $k@42@01)))
(check-sat)
; unsat
(pop) ; 11
; 0.00s
; (get-info :all-statistics)
; [eval] gsize > 1
; [eval] 0 < N
; [eval] N < gsize
; [eval] diz.demo__ar[tid]
(set-option :timeout 0)
(push) ; 11
(set-option :timeout 10)
(assert (not (< $Perm.No $k@41@01)))
(check-sat)
; unsat
(pop) ; 11
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 11
(assert (not (>= tid@11@01 0)))
(check-sat)
; unsat
(pop) ; 11
; 0.00s
; (get-info :all-statistics)
(push) ; 11
(assert (not (<
  tid@11@01
  (Seq_length
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@40@01)))))))))))
(check-sat)
; unsat
(pop) ; 11
; 0.00s
; (get-info :all-statistics)
; [eval] diz.demo__tmp[tid]
(push) ; 11
(set-option :timeout 10)
(assert (not (< $Perm.No $k@42@01)))
(check-sat)
; unsat
(pop) ; 11
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 11
(assert (not (>= tid@11@01 0)))
(check-sat)
; unsat
(pop) ; 11
; 0.00s
; (get-info :all-statistics)
(push) ; 11
(assert (not (<
  tid@11@01
  (Seq_length
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@40@01)))))))))))))
(check-sat)
; unsat
(pop) ; 11
; 0.00s
; (get-info :all-statistics)
; [eval] diz.demo__ar[tid].Ref__Integer_value == (tid < N ? demo__bin(N, tid) : 1)
; [eval] diz.demo__ar[tid]
(push) ; 11
(set-option :timeout 10)
(assert (not (< $Perm.No $k@41@01)))
(check-sat)
; unsat
(pop) ; 11
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 11
(assert (not (>= tid@11@01 0)))
(check-sat)
; unsat
(pop) ; 11
; 0.00s
; (get-info :all-statistics)
(push) ; 11
(assert (not (<
  tid@11@01
  (Seq_length
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@40@01)))))))))))
(check-sat)
; unsat
(pop) ; 11
; 0.00s
; (get-info :all-statistics)
; [eval] (tid < N ? demo__bin(N, tid) : 1)
; [eval] tid < N
(push) ; 11
(push) ; 12
(set-option :timeout 10)
(assert (not (not (< tid@11@01 N@72@01))))
(check-sat)
; unknown
(pop) ; 12
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 12
(set-option :timeout 10)
(assert (not (< tid@11@01 N@72@01)))
(check-sat)
; unsat
(pop) ; 12
; 0.00s
; (get-info :all-statistics)
; [then-branch: 27 | tid@11@01 < N@72@01 | live]
; [else-branch: 27 | !(tid@11@01 < N@72@01) | dead]
(set-option :timeout 0)
(push) ; 12
; [then-branch: 27 | tid@11@01 < N@72@01]
(assert (< tid@11@01 N@72@01))
; [eval] demo__bin(N, tid)
(push) ; 13
; [eval] N >= 0
(push) ; 14
(assert (not (>= N@72@01 0)))
(check-sat)
; unsat
(pop) ; 14
; 0.00s
; (get-info :all-statistics)
(assert (>= N@72@01 0))
; [eval] 0 <= k
; [eval] k <= N
(push) ; 14
(assert (not (<= tid@11@01 N@72@01)))
(check-sat)
; unsat
(pop) ; 14
; 0.00s
; (get-info :all-statistics)
(assert (<= tid@11@01 N@72@01))
(assert (demo__bin%precondition ($Snap.combine
  $Snap.unit
  ($Snap.combine $Snap.unit $Snap.unit)) N@72@01 tid@11@01))
(pop) ; 13
; Joined path conditions
(assert (and
  (>= N@72@01 0)
  (<= tid@11@01 N@72@01)
  (demo__bin%precondition ($Snap.combine
    $Snap.unit
    ($Snap.combine $Snap.unit $Snap.unit)) N@72@01 tid@11@01)))
(pop) ; 12
(pop) ; 11
; Joined path conditions
(assert (=>
  (< tid@11@01 N@72@01)
  (and
    (< tid@11@01 N@72@01)
    (>= N@72@01 0)
    (<= tid@11@01 N@72@01)
    (demo__bin%precondition ($Snap.combine
      $Snap.unit
      ($Snap.combine $Snap.unit $Snap.unit)) N@72@01 tid@11@01))))
(assert (< tid@11@01 N@72@01))
(push) ; 11
(assert (not (=
  ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@40@01))))))))))))))
  (demo__bin ($Snap.combine $Snap.unit ($Snap.combine $Snap.unit $Snap.unit)) N@72@01 tid@11@01))))
(check-sat)
; unsat
(pop) ; 11
; 0.00s
; (get-info :all-statistics)
(assert (=
  ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@40@01))))))))))))))
  (demo__bin ($Snap.combine $Snap.unit ($Snap.combine $Snap.unit $Snap.unit)) N@72@01 tid@11@01)))
(pop) ; 10
(pop) ; 9
(pop) ; 8
(pop) ; 7
(pop) ; 6
(push) ; 6
; [else-branch: 5 | !(tid@11@01 < gsize@10@01 - 1)]
(assert (not (< tid@11@01 (- gsize@10@01 1))))
; [exec]
; inhale gsize > 1
(declare-const $t@79@01 $Snap)
(assert (= $t@79@01 $Snap.unit))
; [eval] gsize > 1
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale 0 < N
(declare-const $t@80@01 $Snap)
(assert (= $t@80@01 $Snap.unit))
; [eval] 0 < N
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale N < gsize
(declare-const $t@81@01 $Snap)
(assert (= $t@81@01 $Snap.unit))
; [eval] N < gsize
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale tid > 0 ==> acc(diz.demo__tmp[tid - 1].Ref__Integer_value, write)
; [eval] tid > 0
(set-option :timeout 0)
(push) ; 7
(set-option :timeout 10)
(assert (not (not (> tid@11@01 0))))
(check-sat)
; unknown
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 7
(set-option :timeout 10)
(assert (not (> tid@11@01 0)))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
; [then-branch: 28 | tid@11@01 > 0 | live]
; [else-branch: 28 | !(tid@11@01 > 0) | dead]
(set-option :timeout 0)
(push) ; 7
; [then-branch: 28 | tid@11@01 > 0]
(assert (> tid@11@01 0))
; [eval] diz.demo__tmp[tid - 1]
(push) ; 8
(set-option :timeout 10)
(assert (not (< $Perm.No $k@42@01)))
(check-sat)
; unsat
(pop) ; 8
; 0.00s
; (get-info :all-statistics)
; [eval] tid - 1
(set-option :timeout 0)
(push) ; 8
(assert (not (>= (- tid@11@01 1) 0)))
(check-sat)
; unsat
(pop) ; 8
; 0.00s
; (get-info :all-statistics)
(push) ; 8
(assert (not (<
  (- tid@11@01 1)
  (Seq_length
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@40@01)))))))))))))
(check-sat)
; unsat
(pop) ; 8
; 0.00s
; (get-info :all-statistics)
(declare-const $t@82@01 Int)
(push) ; 8
(set-option :timeout 10)
(assert (not (=
  __flatten_3@45@01
  (Seq_index
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@40@01)))))))))
    (- tid@11@01 1)))))
(check-sat)
; unknown
(pop) ; 8
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 8
(set-option :timeout 10)
(assert (not (=
  (Seq_index
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@40@01)))))))
    tid@11@01)
  (Seq_index
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@40@01)))))))))
    (- tid@11@01 1)))))
(check-sat)
; unknown
(pop) ; 8
; 0.00s
; (get-info :all-statistics)
(assert (not
  (=
    (Seq_index
      ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@40@01)))))))))
      (- tid@11@01 1))
    $Ref.null)))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale 0 < tid && tid <= N ==>
;   diz.demo__tmp[tid - 1].Ref__Integer_value == demo__bin(N, tid - 1)
(declare-const $t@83@01 $Snap)
(assert (= $t@83@01 $Snap.unit))
; [eval] 0 < tid && tid <= N ==> diz.demo__tmp[tid - 1].Ref__Integer_value == demo__bin(N, tid - 1)
; [eval] 0 < tid && tid <= N
; [eval] 0 < tid
(set-option :timeout 0)
(push) ; 8
; [then-branch: 29 | !(0 < tid@11@01) | live]
; [else-branch: 29 | 0 < tid@11@01 | live]
(push) ; 9
; [then-branch: 29 | !(0 < tid@11@01)]
(assert (not (< 0 tid@11@01)))
(pop) ; 9
(push) ; 9
; [else-branch: 29 | 0 < tid@11@01]
(assert (< 0 tid@11@01))
; [eval] tid <= N
(pop) ; 9
(pop) ; 8
; Joined path conditions
; Joined path conditions
(assert (or (< 0 tid@11@01) (not (< 0 tid@11@01))))
(push) ; 8
(push) ; 9
(set-option :timeout 10)
(assert (not (not (and (< 0 tid@11@01) (<= tid@11@01 N@35@01)))))
(check-sat)
; unsat
(pop) ; 9
; 0.00s
; (get-info :all-statistics)
; [then-branch: 30 | 0 < tid@11@01 && tid@11@01 <= N@35@01 | dead]
; [else-branch: 30 | !(0 < tid@11@01 && tid@11@01 <= N@35@01) | live]
(set-option :timeout 0)
(push) ; 9
; [else-branch: 30 | !(0 < tid@11@01 && tid@11@01 <= N@35@01)]
(assert (not (and (< 0 tid@11@01) (<= tid@11@01 N@35@01))))
(pop) ; 9
(pop) ; 8
; Joined path conditions
(assert (not (and (< 0 tid@11@01) (<= tid@11@01 N@35@01))))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; N := N + 1
; [eval] N + 1
(declare-const N@84@01 Int)
(assert (= N@84@01 (+ N@35@01 1)))
; [eval] 0 < tid && tid < N
; [eval] 0 < tid
(set-option :timeout 0)
(push) ; 8
; [then-branch: 31 | !(0 < tid@11@01) | live]
; [else-branch: 31 | 0 < tid@11@01 | live]
(push) ; 9
; [then-branch: 31 | !(0 < tid@11@01)]
(assert (not (< 0 tid@11@01)))
(pop) ; 9
(push) ; 9
; [else-branch: 31 | 0 < tid@11@01]
(assert (< 0 tid@11@01))
; [eval] tid < N
(pop) ; 9
(pop) ; 8
; Joined path conditions
; Joined path conditions
(push) ; 8
(set-option :timeout 10)
(assert (not (not (and (< 0 tid@11@01) (< tid@11@01 N@84@01)))))
(check-sat)
; unsat
(pop) ; 8
; 0.00s
; (get-info :all-statistics)
; [then-branch: 32 | 0 < tid@11@01 && tid@11@01 < N@84@01 | dead]
; [else-branch: 32 | !(0 < tid@11@01 && tid@11@01 < N@84@01) | live]
(set-option :timeout 0)
(push) ; 8
; [else-branch: 32 | !(0 < tid@11@01 && tid@11@01 < N@84@01)]
(assert (not (and (< 0 tid@11@01) (< tid@11@01 N@84@01))))
(pop) ; 8
; [eval] !(0 < tid && tid < N)
; [eval] 0 < tid && tid < N
; [eval] 0 < tid
(push) ; 8
; [then-branch: 33 | !(0 < tid@11@01) | live]
; [else-branch: 33 | 0 < tid@11@01 | live]
(push) ; 9
; [then-branch: 33 | !(0 < tid@11@01)]
(assert (not (< 0 tid@11@01)))
(pop) ; 9
(push) ; 9
; [else-branch: 33 | 0 < tid@11@01]
(assert (< 0 tid@11@01))
; [eval] tid < N
(pop) ; 9
(pop) ; 8
; Joined path conditions
; Joined path conditions
(push) ; 8
(set-option :timeout 10)
(assert (not (and (< 0 tid@11@01) (< tid@11@01 N@84@01))))
(check-sat)
; unknown
(pop) ; 8
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 8
(set-option :timeout 10)
(assert (not (not (and (< 0 tid@11@01) (< tid@11@01 N@84@01)))))
(check-sat)
; unsat
(pop) ; 8
; 0.00s
; (get-info :all-statistics)
; [then-branch: 34 | !(0 < tid@11@01 && tid@11@01 < N@84@01) | live]
; [else-branch: 34 | 0 < tid@11@01 && tid@11@01 < N@84@01 | dead]
(set-option :timeout 0)
(push) ; 8
; [then-branch: 34 | !(0 < tid@11@01 && tid@11@01 < N@84@01)]
(assert (not (and (< 0 tid@11@01) (< tid@11@01 N@84@01))))
; [exec]
; assert gsize > 1
; [eval] gsize > 1
; [exec]
; assert 0 < N
; [eval] 0 < N
(push) ; 9
(assert (not (< 0 N@84@01)))
(check-sat)
; unsat
(pop) ; 9
; 0.00s
; (get-info :all-statistics)
(assert (< 0 N@84@01))
; [exec]
; assert N < gsize
; [eval] N < gsize
(push) ; 9
(assert (not (< N@84@01 gsize@10@01)))
(check-sat)
; unsat
(pop) ; 9
; 0.00s
; (get-info :all-statistics)
(assert (< N@84@01 gsize@10@01))
; [exec]
; exhale tid > 0 ==> acc(diz.demo__tmp[tid - 1].Ref__Integer_value, write)
; [eval] tid > 0
(push) ; 9
(set-option :timeout 10)
(assert (not (not (> tid@11@01 0))))
(check-sat)
; unknown
(pop) ; 9
; 0.00s
; (get-info :all-statistics)
; [then-branch: 35 | tid@11@01 > 0 | live]
; [else-branch: 35 | !(tid@11@01 > 0) | dead]
(set-option :timeout 0)
(push) ; 9
; [then-branch: 35 | tid@11@01 > 0]
; [eval] diz.demo__tmp[tid - 1]
(push) ; 10
(set-option :timeout 10)
(assert (not (< $Perm.No $k@42@01)))
(check-sat)
; unsat
(pop) ; 10
; 0.00s
; (get-info :all-statistics)
; [eval] tid - 1
(set-option :timeout 0)
(push) ; 10
(assert (not (>= (- tid@11@01 1) 0)))
(check-sat)
; unsat
(pop) ; 10
; 0.00s
; (get-info :all-statistics)
(push) ; 10
(assert (not (<
  (- tid@11@01 1)
  (Seq_length
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@40@01)))))))))))))
(check-sat)
; unsat
(pop) ; 10
; 0.00s
; (get-info :all-statistics)
; [exec]
; inhale gsize > 1
(declare-const $t@85@01 $Snap)
(assert (= $t@85@01 $Snap.unit))
; [eval] gsize > 1
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale 0 < N
(declare-const $t@86@01 $Snap)
(assert (= $t@86@01 $Snap.unit))
; [eval] 0 < N
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale N < gsize
(declare-const $t@87@01 $Snap)
(assert (= $t@87@01 $Snap.unit))
; [eval] N < gsize
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale tid < gsize - 1 ==>
;   acc(diz.demo__tmp[tid].Ref__Integer_value, write)
; [eval] tid < gsize - 1
; [eval] gsize - 1
; [then-branch: 36 | tid@11@01 < gsize@10@01 - 1 | dead]
; [else-branch: 36 | !(tid@11@01 < gsize@10@01 - 1) | live]
(set-option :timeout 0)
(push) ; 10
; [else-branch: 36 | !(tid@11@01 < gsize@10@01 - 1)]
(declare-const $t@88@01 $Snap)
(assert (= $t@88@01 $Snap.unit))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; Loop head block: Re-establish invariant
; [eval] 0 <= tid
(set-option :timeout 0)
(push) ; 11
(assert (not (<= 0 tid@11@01)))
(check-sat)
; unsat
(pop) ; 11
; 0.00s
; (get-info :all-statistics)
(assert (<= 0 tid@11@01))
; [eval] tid < tcount
; [eval] tid == lid
; [eval] tcount == gsize
; [eval] gid == 0
(declare-const $k@89@01 $Perm)
(assert ($Perm.isReadVar $k@89@01))
(push) ; 11
(set-option :timeout 10)
(assert (not (not (= $k@41@01 $Perm.No))))
(check-sat)
; unsat
(pop) ; 11
; 0.00s
; (get-info :all-statistics)
(assert (< $k@89@01 $k@41@01))
(assert (<= $Perm.No (- $k@41@01 $k@89@01)))
(assert (<= (- $k@41@01 $k@89@01) $Perm.Write))
(assert (=> (< $Perm.No (- $k@41@01 $k@89@01)) (not (= diz@7@01 $Ref.null))))
; [eval] |diz.demo__ar| == gsize
; [eval] |diz.demo__ar|
(set-option :timeout 0)
(push) ; 11
(set-option :timeout 10)
(assert (not (< $Perm.No $k@41@01)))
(check-sat)
; unsat
(pop) ; 11
; 0.00s
; (get-info :all-statistics)
(declare-const $k@90@01 $Perm)
(assert ($Perm.isReadVar $k@90@01))
(set-option :timeout 0)
(push) ; 11
(set-option :timeout 10)
(assert (not (not (= $k@42@01 $Perm.No))))
(check-sat)
; unsat
(pop) ; 11
; 0.00s
; (get-info :all-statistics)
(assert (< $k@90@01 $k@42@01))
(assert (<= $Perm.No (- $k@42@01 $k@90@01)))
(assert (<= (- $k@42@01 $k@90@01) $Perm.Write))
(assert (=> (< $Perm.No (- $k@42@01 $k@90@01)) (not (= diz@7@01 $Ref.null))))
; [eval] |diz.demo__tmp| == gsize
; [eval] |diz.demo__tmp|
(set-option :timeout 0)
(push) ; 11
(set-option :timeout 10)
(assert (not (< $Perm.No $k@42@01)))
(check-sat)
; unsat
(pop) ; 11
; 0.00s
; (get-info :all-statistics)
; [eval] gsize > 1
; [eval] 0 < N
; [eval] N < gsize
; [eval] diz.demo__ar[tid]
(set-option :timeout 0)
(push) ; 11
(set-option :timeout 10)
(assert (not (< $Perm.No $k@41@01)))
(check-sat)
; unsat
(pop) ; 11
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 11
(assert (not (>= tid@11@01 0)))
(check-sat)
; unsat
(pop) ; 11
; 0.00s
; (get-info :all-statistics)
(push) ; 11
(assert (not (<
  tid@11@01
  (Seq_length
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@40@01)))))))))))
(check-sat)
; unsat
(pop) ; 11
; 0.00s
; (get-info :all-statistics)
; [eval] diz.demo__tmp[tid]
(push) ; 11
(set-option :timeout 10)
(assert (not (< $Perm.No $k@42@01)))
(check-sat)
; unsat
(pop) ; 11
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 11
(assert (not (>= tid@11@01 0)))
(check-sat)
; unsat
(pop) ; 11
; 0.00s
; (get-info :all-statistics)
(push) ; 11
(assert (not (<
  tid@11@01
  (Seq_length
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@40@01)))))))))))))
(check-sat)
; unsat
(pop) ; 11
; 0.00s
; (get-info :all-statistics)
; [eval] diz.demo__ar[tid].Ref__Integer_value == (tid < N ? demo__bin(N, tid) : 1)
; [eval] diz.demo__ar[tid]
(push) ; 11
(set-option :timeout 10)
(assert (not (< $Perm.No $k@41@01)))
(check-sat)
; unsat
(pop) ; 11
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 11
(assert (not (>= tid@11@01 0)))
(check-sat)
; unsat
(pop) ; 11
; 0.00s
; (get-info :all-statistics)
(push) ; 11
(assert (not (<
  tid@11@01
  (Seq_length
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@40@01)))))))))))
(check-sat)
; unsat
(pop) ; 11
; 0.00s
; (get-info :all-statistics)
; [eval] (tid < N ? demo__bin(N, tid) : 1)
; [eval] tid < N
(push) ; 11
(push) ; 12
(set-option :timeout 10)
(assert (not (not (< tid@11@01 N@84@01))))
(check-sat)
; unsat
(pop) ; 12
; 0.00s
; (get-info :all-statistics)
; [then-branch: 37 | tid@11@01 < N@84@01 | dead]
; [else-branch: 37 | !(tid@11@01 < N@84@01) | live]
(set-option :timeout 0)
(push) ; 12
; [else-branch: 37 | !(tid@11@01 < N@84@01)]
(assert (not (< tid@11@01 N@84@01)))
(pop) ; 12
(pop) ; 11
; Joined path conditions
(assert (not (< tid@11@01 N@84@01)))
(push) ; 11
(assert (not (=
  ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@40@01))))))))))))))
  1)))
(check-sat)
; unsat
(pop) ; 11
; 0.00s
; (get-info :all-statistics)
(assert (=
  ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@40@01))))))))))))))
  1))
(pop) ; 10
(pop) ; 9
(pop) ; 8
(pop) ; 7
(pop) ; 6
(pop) ; 5
(push) ; 5
; [else-branch: 2 | !(N@35@01 < gsize@10@01 - 1)]
(assert (not (< N@35@01 (- gsize@10@01 1))))
(pop) ; 5
(declare-const $t@91@01 Seq<$Ref>)
(declare-const $t@92@01 Seq<$Ref>)
(assert (and
  (=>
    (< $Perm.No $k@41@01)
    (Seq_equal
      $t@91@01
      ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@40@01)))))))))
  (=>
    (< $Perm.No (- $k@15@01 $k@43@01))
    (Seq_equal
      $t@91@01
      ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@14@01)))))))))))))
(assert (and
  (=>
    (< $Perm.No $k@42@01)
    (Seq_equal
      $t@92@01
      ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@40@01)))))))))))
  (=>
    (< $Perm.No (- $k@16@01 $k@44@01))
    (Seq_equal
      $t@92@01
      ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@14@01)))))))))))))))
(assert (<= $Perm.No (+ $k@42@01 (- $k@16@01 $k@44@01))))
(assert (<= (+ $k@42@01 (- $k@16@01 $k@44@01)) $Perm.Write))
(assert (=> (< $Perm.No (+ $k@42@01 (- $k@16@01 $k@44@01))) (not (= diz@7@01 $Ref.null))))
(assert (<= $Perm.No (+ $k@41@01 (- $k@15@01 $k@43@01))))
(assert (<= (+ $k@41@01 (- $k@15@01 $k@43@01)) $Perm.Write))
(assert (=> (< $Perm.No (+ $k@41@01 (- $k@15@01 $k@43@01))) (not (= diz@7@01 $Ref.null))))
; [eval] !(N < gsize - 1)
; [eval] N < gsize - 1
; [eval] gsize - 1
(push) ; 5
(set-option :timeout 10)
(assert (not (< N@35@01 (- gsize@10@01 1))))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 5
(set-option :timeout 10)
(assert (not (not (< N@35@01 (- gsize@10@01 1)))))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
; [then-branch: 38 | !(N@35@01 < gsize@10@01 - 1) | live]
; [else-branch: 38 | N@35@01 < gsize@10@01 - 1 | live]
(set-option :timeout 0)
(push) ; 5
; [then-branch: 38 | !(N@35@01 < gsize@10@01 - 1)]
(assert (not (< N@35@01 (- gsize@10@01 1))))
; [eval] 0 <= tid
(push) ; 6
(assert (not (<= 0 tid@11@01)))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(assert (<= 0 tid@11@01))
; [eval] tid < tcount
; [eval] tid == lid
; [eval] tcount == gsize
; [eval] gid == 0
(declare-const $k@93@01 $Perm)
(assert ($Perm.isReadVar $k@93@01))
(push) ; 6
(set-option :timeout 10)
(assert (not (not (= (+ $k@41@01 (- $k@15@01 $k@43@01)) $Perm.No))))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(assert (< $k@93@01 (+ $k@41@01 (- $k@15@01 $k@43@01))))
(assert (<= $Perm.No (- (+ $k@41@01 (- $k@15@01 $k@43@01)) $k@93@01)))
(assert (<= (- (+ $k@41@01 (- $k@15@01 $k@43@01)) $k@93@01) $Perm.Write))
(assert (=>
  (< $Perm.No (- (+ $k@41@01 (- $k@15@01 $k@43@01)) $k@93@01))
  (not (= diz@7@01 $Ref.null))))
; [eval] |diz.demo__ar| == gsize
; [eval] |diz.demo__ar|
(set-option :timeout 0)
(push) ; 6
(set-option :timeout 10)
(assert (not (< $Perm.No (+ $k@41@01 (- $k@15@01 $k@43@01)))))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 6
(assert (not (= (Seq_length $t@91@01) gsize@10@01)))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(assert (= (Seq_length $t@91@01) gsize@10@01))
(declare-const $k@94@01 $Perm)
(assert ($Perm.isReadVar $k@94@01))
(push) ; 6
(set-option :timeout 10)
(assert (not (not (= (+ $k@42@01 (- $k@16@01 $k@44@01)) $Perm.No))))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(assert (< $k@94@01 (+ $k@42@01 (- $k@16@01 $k@44@01))))
(assert (<= $Perm.No (- (+ $k@42@01 (- $k@16@01 $k@44@01)) $k@94@01)))
(assert (<= (- (+ $k@42@01 (- $k@16@01 $k@44@01)) $k@94@01) $Perm.Write))
(assert (=>
  (< $Perm.No (- (+ $k@42@01 (- $k@16@01 $k@44@01)) $k@94@01))
  (not (= diz@7@01 $Ref.null))))
; [eval] |diz.demo__tmp| == gsize
; [eval] |diz.demo__tmp|
(set-option :timeout 0)
(push) ; 6
(set-option :timeout 10)
(assert (not (< $Perm.No (+ $k@42@01 (- $k@16@01 $k@44@01)))))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 6
(assert (not (= (Seq_length $t@92@01) gsize@10@01)))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(assert (= (Seq_length $t@92@01) gsize@10@01))
; [eval] diz.demo__ar == old(diz.demo__ar)
(push) ; 6
(set-option :timeout 10)
(assert (not (< $Perm.No (+ $k@41@01 (- $k@15@01 $k@43@01)))))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
; [eval] old(diz.demo__ar)
(set-option :timeout 0)
(push) ; 6
(set-option :timeout 10)
(assert (not (< $Perm.No $k@15@01)))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 6
(assert (not (Seq_equal
  $t@91@01
  ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@14@01))))))))))))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(assert (Seq_equal
  $t@91@01
  ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@14@01)))))))))))
; [eval] diz.demo__tmp == old(diz.demo__tmp)
(push) ; 6
(set-option :timeout 10)
(assert (not (< $Perm.No (+ $k@42@01 (- $k@16@01 $k@44@01)))))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
; [eval] old(diz.demo__tmp)
(set-option :timeout 0)
(push) ; 6
(set-option :timeout 10)
(assert (not (< $Perm.No $k@16@01)))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 6
(assert (not (Seq_equal
  $t@92@01
  ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@14@01))))))))))))))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(assert (Seq_equal
  $t@92@01
  ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@14@01)))))))))))))
; [eval] gsize > 1
; [eval] diz.demo__ar[tid]
(push) ; 6
(set-option :timeout 10)
(assert (not (< $Perm.No (+ $k@41@01 (- $k@15@01 $k@43@01)))))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 6
(assert (not (>= tid@11@01 0)))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(push) ; 6
(assert (not (< tid@11@01 (Seq_length $t@91@01))))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(push) ; 6
(set-option :timeout 10)
(assert (not (=
  (Seq_index
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@40@01)))))))))
    tid@11@01)
  (Seq_index $t@91@01 tid@11@01))))
(check-sat)
; unknown
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 6
(set-option :timeout 10)
(assert (not (=
  (Seq_index
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@40@01)))))))
    tid@11@01)
  (Seq_index $t@91@01 tid@11@01))))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
; [eval] diz.demo__ar[tid].Ref__Integer_value == demo__bin(gsize - 1, tid)
; [eval] diz.demo__ar[tid]
(set-option :timeout 0)
(push) ; 6
(set-option :timeout 10)
(assert (not (< $Perm.No (+ $k@41@01 (- $k@15@01 $k@43@01)))))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 6
(assert (not (>= tid@11@01 0)))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(push) ; 6
(assert (not (< tid@11@01 (Seq_length $t@91@01))))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(push) ; 6
(set-option :timeout 10)
(assert (not (=
  (Seq_index
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@40@01)))))))))
    tid@11@01)
  (Seq_index $t@91@01 tid@11@01))))
(check-sat)
; unknown
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 6
(set-option :timeout 10)
(assert (not (=
  (Seq_index
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@40@01)))))))
    tid@11@01)
  (Seq_index $t@91@01 tid@11@01))))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
; [eval] demo__bin(gsize - 1, tid)
; [eval] gsize - 1
(set-option :timeout 0)
(push) ; 6
; [eval] N >= 0
(push) ; 7
(assert (not (>= (- gsize@10@01 1) 0)))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(assert (>= (- gsize@10@01 1) 0))
; [eval] 0 <= k
; [eval] k <= N
(push) ; 7
(assert (not (<= tid@11@01 (- gsize@10@01 1))))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(assert (<= tid@11@01 (- gsize@10@01 1)))
(assert (demo__bin%precondition ($Snap.combine
  $Snap.unit
  ($Snap.combine $Snap.unit $Snap.unit)) (- gsize@10@01 1) tid@11@01))
(pop) ; 6
; Joined path conditions
(assert (and
  (>= (- gsize@10@01 1) 0)
  (<= tid@11@01 (- gsize@10@01 1))
  (demo__bin%precondition ($Snap.combine
    $Snap.unit
    ($Snap.combine $Snap.unit $Snap.unit)) (- gsize@10@01 1) tid@11@01)))
(push) ; 6
(assert (not (=
  ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@40@01))))))))))))))
  (demo__bin ($Snap.combine $Snap.unit ($Snap.combine $Snap.unit $Snap.unit)) (-
    gsize@10@01
    1) tid@11@01))))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(assert (=
  ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@40@01))))))))))))))
  (demo__bin ($Snap.combine $Snap.unit ($Snap.combine $Snap.unit $Snap.unit)) (-
    gsize@10@01
    1) tid@11@01)))
(pop) ; 5
(push) ; 5
; [else-branch: 38 | N@35@01 < gsize@10@01 - 1]
(assert (< N@35@01 (- gsize@10@01 1)))
(pop) ; 5
(pop) ; 4
(pop) ; 3
(pop) ; 2
(pop) ; 1
; ---------- demo__main_resources_of_1 ----------
(declare-const diz@95@01 $Ref)
(declare-const current_thread_id@96@01 Int)
(declare-const tcount@97@01 Int)
(declare-const gsize@98@01 Int)
(declare-const gid@99@01 Int)
(declare-const N@100@01 Int)
(declare-const diz@101@01 $Ref)
(declare-const current_thread_id@102@01 Int)
(declare-const tcount@103@01 Int)
(declare-const gsize@104@01 Int)
(declare-const gid@105@01 Int)
(declare-const N@106@01 Int)
(push) ; 1
(declare-const $t@107@01 $Snap)
(assert (= $t@107@01 ($Snap.combine ($Snap.first $t@107@01) ($Snap.second $t@107@01))))
(assert (= ($Snap.first $t@107@01) $Snap.unit))
; [eval] diz != null
(assert (not (= diz@101@01 $Ref.null)))
(assert (=
  ($Snap.second $t@107@01)
  ($Snap.combine
    ($Snap.first ($Snap.second $t@107@01))
    ($Snap.second ($Snap.second $t@107@01)))))
(assert (= ($Snap.first ($Snap.second $t@107@01)) $Snap.unit))
; [eval] current_thread_id >= 0
(assert (>= current_thread_id@102@01 0))
(assert (=
  ($Snap.second ($Snap.second $t@107@01))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second $t@107@01)))
    ($Snap.second ($Snap.second ($Snap.second $t@107@01))))))
(assert (= ($Snap.first ($Snap.second ($Snap.second $t@107@01))) $Snap.unit))
; [eval] tcount == gsize
(assert (= tcount@103@01 gsize@104@01))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second $t@107@01)))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@107@01))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@107@01)))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@107@01))))
  $Snap.unit))
; [eval] gid == 0
(assert (= gid@105@01 0))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@107@01))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@107@01)))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@107@01))))))))
(declare-const $k@108@01 $Perm)
(assert ($Perm.isReadVar $k@108@01))
(assert (<= $Perm.No $k@108@01))
(assert (<= $k@108@01 $Perm.Write))
(assert (=> (< $Perm.No $k@108@01) (not (= diz@101@01 $Ref.null))))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@107@01)))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@107@01))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@107@01)))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@107@01))))))
  $Snap.unit))
; [eval] |diz.demo__ar| == gsize
; [eval] |diz.demo__ar|
(push) ; 2
(set-option :timeout 10)
(assert (not (< $Perm.No $k@108@01)))
(check-sat)
; unsat
(pop) ; 2
; 0.00s
; (get-info :all-statistics)
(assert (=
  (Seq_length
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@107@01)))))))
  gsize@104@01))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@107@01))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@107@01)))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@107@01))))))))))
(declare-const $k@109@01 $Perm)
(assert ($Perm.isReadVar $k@109@01))
(assert (<= $Perm.No $k@109@01))
(assert (<= $k@109@01 $Perm.Write))
(assert (=> (< $Perm.No $k@109@01) (not (= diz@101@01 $Ref.null))))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@107@01)))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@107@01))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@107@01)))))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@107@01))))))))
  $Snap.unit))
; [eval] |diz.demo__tmp| == gsize
; [eval] |diz.demo__tmp|
(set-option :timeout 0)
(push) ; 2
(set-option :timeout 10)
(assert (not (< $Perm.No $k@109@01)))
(check-sat)
; unsat
(pop) ; 2
; 0.00s
; (get-info :all-statistics)
(assert (=
  (Seq_length
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@107@01)))))))))
  gsize@104@01))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@107@01))))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@107@01)))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@107@01))))))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@107@01)))))))))
  $Snap.unit))
; [eval] gsize > 1
(assert (> gsize@104@01 1))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@107@01)))))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@107@01))))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@107@01)))))))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@107@01))))))))))
  $Snap.unit))
; [eval] gsize > 1
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@107@01))))))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@107@01)))))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@107@01))))))))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@107@01)))))))))))
  $Snap.unit))
; [eval] 0 < N
(assert (< 0 N@106@01))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@107@01)))))))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@107@01))))))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@107@01)))))))))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@107@01))))))))))))
  $Snap.unit))
; [eval] N < gsize
(assert (< N@106@01 gsize@104@01))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@107@01))))))))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@107@01)))))))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@107@01))))))))))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@107@01)))))))))))))
  $Snap.unit))
; [eval] (forall i: Int, j: Int :: { diz.demo__tmp[i], diz.demo__tmp[j] } i >= 0 && (i < |diz.demo__tmp| && (j >= 0 && (j < |diz.demo__tmp| && i != j))) ==> diz.demo__tmp[i] != diz.demo__tmp[j])
(declare-const i@110@01 Int)
(declare-const j@111@01 Int)
(set-option :timeout 0)
(push) ; 2
; [eval] i >= 0 && (i < |diz.demo__tmp| && (j >= 0 && (j < |diz.demo__tmp| && i != j))) ==> diz.demo__tmp[i] != diz.demo__tmp[j]
; [eval] i >= 0 && (i < |diz.demo__tmp| && (j >= 0 && (j < |diz.demo__tmp| && i != j)))
; [eval] i >= 0
(push) ; 3
; [then-branch: 39 | !(i@110@01 >= 0) | live]
; [else-branch: 39 | i@110@01 >= 0 | live]
(push) ; 4
; [then-branch: 39 | !(i@110@01 >= 0)]
(assert (not (>= i@110@01 0)))
(pop) ; 4
(push) ; 4
; [else-branch: 39 | i@110@01 >= 0]
(assert (>= i@110@01 0))
; [eval] i < |diz.demo__tmp|
; [eval] |diz.demo__tmp|
(push) ; 5
(set-option :timeout 10)
(assert (not (< $Perm.No $k@109@01)))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 5
; [then-branch: 40 | !(i@110@01 < |First:(Second:(Second:(Second:(Second:(Second:(Second:($t@107@01)))))))|) | live]
; [else-branch: 40 | i@110@01 < |First:(Second:(Second:(Second:(Second:(Second:(Second:($t@107@01)))))))| | live]
(push) ; 6
; [then-branch: 40 | !(i@110@01 < |First:(Second:(Second:(Second:(Second:(Second:(Second:($t@107@01)))))))|)]
(assert (not
  (<
    i@110@01
    (Seq_length
      ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@107@01))))))))))))
(pop) ; 6
(push) ; 6
; [else-branch: 40 | i@110@01 < |First:(Second:(Second:(Second:(Second:(Second:(Second:($t@107@01)))))))|]
(assert (<
  i@110@01
  (Seq_length
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@107@01)))))))))))
; [eval] j >= 0
(push) ; 7
; [then-branch: 41 | !(j@111@01 >= 0) | live]
; [else-branch: 41 | j@111@01 >= 0 | live]
(push) ; 8
; [then-branch: 41 | !(j@111@01 >= 0)]
(assert (not (>= j@111@01 0)))
(pop) ; 8
(push) ; 8
; [else-branch: 41 | j@111@01 >= 0]
(assert (>= j@111@01 0))
; [eval] j < |diz.demo__tmp|
; [eval] |diz.demo__tmp|
(push) ; 9
(set-option :timeout 10)
(assert (not (< $Perm.No $k@109@01)))
(check-sat)
; unsat
(pop) ; 9
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 9
; [then-branch: 42 | !(j@111@01 < |First:(Second:(Second:(Second:(Second:(Second:(Second:($t@107@01)))))))|) | live]
; [else-branch: 42 | j@111@01 < |First:(Second:(Second:(Second:(Second:(Second:(Second:($t@107@01)))))))| | live]
(push) ; 10
; [then-branch: 42 | !(j@111@01 < |First:(Second:(Second:(Second:(Second:(Second:(Second:($t@107@01)))))))|)]
(assert (not
  (<
    j@111@01
    (Seq_length
      ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@107@01))))))))))))
(pop) ; 10
(push) ; 10
; [else-branch: 42 | j@111@01 < |First:(Second:(Second:(Second:(Second:(Second:(Second:($t@107@01)))))))|]
(assert (<
  j@111@01
  (Seq_length
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@107@01)))))))))))
; [eval] i != j
(pop) ; 10
(pop) ; 9
; Joined path conditions
; Joined path conditions
(assert (or
  (<
    j@111@01
    (Seq_length
      ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@107@01))))))))))
  (not
    (<
      j@111@01
      (Seq_length
        ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@107@01)))))))))))))
(pop) ; 8
(pop) ; 7
; Joined path conditions
; Joined path conditions
(assert (=>
  (>= j@111@01 0)
  (and
    (>= j@111@01 0)
    (or
      (<
        j@111@01
        (Seq_length
          ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@107@01))))))))))
      (not
        (<
          j@111@01
          (Seq_length
            ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@107@01)))))))))))))))
(assert (or (>= j@111@01 0) (not (>= j@111@01 0))))
(pop) ; 6
(pop) ; 5
; Joined path conditions
; Joined path conditions
(assert (=>
  (<
    i@110@01
    (Seq_length
      ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@107@01))))))))))
  (and
    (<
      i@110@01
      (Seq_length
        ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@107@01))))))))))
    (=>
      (>= j@111@01 0)
      (and
        (>= j@111@01 0)
        (or
          (<
            j@111@01
            (Seq_length
              ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@107@01))))))))))
          (not
            (<
              j@111@01
              (Seq_length
                ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@107@01))))))))))))))
    (or (>= j@111@01 0) (not (>= j@111@01 0))))))
(assert (or
  (<
    i@110@01
    (Seq_length
      ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@107@01))))))))))
  (not
    (<
      i@110@01
      (Seq_length
        ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@107@01)))))))))))))
(pop) ; 4
(pop) ; 3
; Joined path conditions
; Joined path conditions
(assert (=>
  (>= i@110@01 0)
  (and
    (>= i@110@01 0)
    (=>
      (<
        i@110@01
        (Seq_length
          ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@107@01))))))))))
      (and
        (<
          i@110@01
          (Seq_length
            ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@107@01))))))))))
        (=>
          (>= j@111@01 0)
          (and
            (>= j@111@01 0)
            (or
              (<
                j@111@01
                (Seq_length
                  ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@107@01))))))))))
              (not
                (<
                  j@111@01
                  (Seq_length
                    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@107@01))))))))))))))
        (or (>= j@111@01 0) (not (>= j@111@01 0)))))
    (or
      (<
        i@110@01
        (Seq_length
          ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@107@01))))))))))
      (not
        (<
          i@110@01
          (Seq_length
            ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@107@01)))))))))))))))
(assert (or (>= i@110@01 0) (not (>= i@110@01 0))))
(push) ; 3
; [then-branch: 43 | i@110@01 >= 0 && i@110@01 < |First:(Second:(Second:(Second:(Second:(Second:(Second:($t@107@01)))))))| && j@111@01 >= 0 && j@111@01 < |First:(Second:(Second:(Second:(Second:(Second:(Second:($t@107@01)))))))| && i@110@01 != j@111@01 | live]
; [else-branch: 43 | !(i@110@01 >= 0 && i@110@01 < |First:(Second:(Second:(Second:(Second:(Second:(Second:($t@107@01)))))))| && j@111@01 >= 0 && j@111@01 < |First:(Second:(Second:(Second:(Second:(Second:(Second:($t@107@01)))))))| && i@110@01 != j@111@01) | live]
(push) ; 4
; [then-branch: 43 | i@110@01 >= 0 && i@110@01 < |First:(Second:(Second:(Second:(Second:(Second:(Second:($t@107@01)))))))| && j@111@01 >= 0 && j@111@01 < |First:(Second:(Second:(Second:(Second:(Second:(Second:($t@107@01)))))))| && i@110@01 != j@111@01]
(assert (and
  (>= i@110@01 0)
  (and
    (<
      i@110@01
      (Seq_length
        ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@107@01))))))))))
    (and
      (>= j@111@01 0)
      (and
        (<
          j@111@01
          (Seq_length
            ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@107@01))))))))))
        (not (= i@110@01 j@111@01)))))))
; [eval] diz.demo__tmp[i] != diz.demo__tmp[j]
; [eval] diz.demo__tmp[i]
(push) ; 5
(set-option :timeout 10)
(assert (not (< $Perm.No $k@109@01)))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
; [eval] diz.demo__tmp[j]
(set-option :timeout 0)
(push) ; 5
(set-option :timeout 10)
(assert (not (< $Perm.No $k@109@01)))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(pop) ; 4
(set-option :timeout 0)
(push) ; 4
; [else-branch: 43 | !(i@110@01 >= 0 && i@110@01 < |First:(Second:(Second:(Second:(Second:(Second:(Second:($t@107@01)))))))| && j@111@01 >= 0 && j@111@01 < |First:(Second:(Second:(Second:(Second:(Second:(Second:($t@107@01)))))))| && i@110@01 != j@111@01)]
(assert (not
  (and
    (>= i@110@01 0)
    (and
      (<
        i@110@01
        (Seq_length
          ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@107@01))))))))))
      (and
        (>= j@111@01 0)
        (and
          (<
            j@111@01
            (Seq_length
              ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@107@01))))))))))
          (not (= i@110@01 j@111@01))))))))
(pop) ; 4
(pop) ; 3
; Joined path conditions
(assert (=>
  (and
    (>= i@110@01 0)
    (and
      (<
        i@110@01
        (Seq_length
          ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@107@01))))))))))
      (and
        (>= j@111@01 0)
        (and
          (<
            j@111@01
            (Seq_length
              ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@107@01))))))))))
          (not (= i@110@01 j@111@01))))))
  (and
    (>= i@110@01 0)
    (<
      i@110@01
      (Seq_length
        ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@107@01))))))))))
    (>= j@111@01 0)
    (<
      j@111@01
      (Seq_length
        ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@107@01))))))))))
    (not (= i@110@01 j@111@01)))))
; Joined path conditions
(assert (or
  (not
    (and
      (>= i@110@01 0)
      (and
        (<
          i@110@01
          (Seq_length
            ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@107@01))))))))))
        (and
          (>= j@111@01 0)
          (and
            (<
              j@111@01
              (Seq_length
                ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@107@01))))))))))
            (not (= i@110@01 j@111@01)))))))
  (and
    (>= i@110@01 0)
    (and
      (<
        i@110@01
        (Seq_length
          ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@107@01))))))))))
      (and
        (>= j@111@01 0)
        (and
          (<
            j@111@01
            (Seq_length
              ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@107@01))))))))))
          (not (= i@110@01 j@111@01))))))))
(pop) ; 2
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall ((i@110@01 Int) (j@111@01 Int)) (!
  (and
    (=>
      (>= i@110@01 0)
      (and
        (>= i@110@01 0)
        (=>
          (<
            i@110@01
            (Seq_length
              ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@107@01))))))))))
          (and
            (<
              i@110@01
              (Seq_length
                ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@107@01))))))))))
            (=>
              (>= j@111@01 0)
              (and
                (>= j@111@01 0)
                (or
                  (<
                    j@111@01
                    (Seq_length
                      ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@107@01))))))))))
                  (not
                    (<
                      j@111@01
                      (Seq_length
                        ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@107@01))))))))))))))
            (or (>= j@111@01 0) (not (>= j@111@01 0)))))
        (or
          (<
            i@110@01
            (Seq_length
              ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@107@01))))))))))
          (not
            (<
              i@110@01
              (Seq_length
                ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@107@01))))))))))))))
    (or (>= i@110@01 0) (not (>= i@110@01 0)))
    (=>
      (and
        (>= i@110@01 0)
        (and
          (<
            i@110@01
            (Seq_length
              ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@107@01))))))))))
          (and
            (>= j@111@01 0)
            (and
              (<
                j@111@01
                (Seq_length
                  ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@107@01))))))))))
              (not (= i@110@01 j@111@01))))))
      (and
        (>= i@110@01 0)
        (<
          i@110@01
          (Seq_length
            ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@107@01))))))))))
        (>= j@111@01 0)
        (<
          j@111@01
          (Seq_length
            ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@107@01))))))))))
        (not (= i@110@01 j@111@01))))
    (or
      (not
        (and
          (>= i@110@01 0)
          (and
            (<
              i@110@01
              (Seq_length
                ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@107@01))))))))))
            (and
              (>= j@111@01 0)
              (and
                (<
                  j@111@01
                  (Seq_length
                    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@107@01))))))))))
                (not (= i@110@01 j@111@01)))))))
      (and
        (>= i@110@01 0)
        (and
          (<
            i@110@01
            (Seq_length
              ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@107@01))))))))))
          (and
            (>= j@111@01 0)
            (and
              (<
                j@111@01
                (Seq_length
                  ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@107@01))))))))))
              (not (= i@110@01 j@111@01))))))))
  :pattern ((Seq_index
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@107@01))))))))
    i@110@01) (Seq_index
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@107@01))))))))
    j@111@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/third_party/test_binomial_noauto.vpr@129@12@129@148-aux|)))
(assert (forall ((i@110@01 Int) (j@111@01 Int)) (!
  (=>
    (and
      (>= i@110@01 0)
      (and
        (<
          i@110@01
          (Seq_length
            ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@107@01))))))))))
        (and
          (>= j@111@01 0)
          (and
            (<
              j@111@01
              (Seq_length
                ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@107@01))))))))))
            (not (= i@110@01 j@111@01))))))
    (not
      (=
        (Seq_index
          ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@107@01))))))))
          i@110@01)
        (Seq_index
          ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@107@01))))))))
          j@111@01))))
  :pattern ((Seq_index
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@107@01))))))))
    i@110@01) (Seq_index
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@107@01))))))))
    j@111@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/third_party/test_binomial_noauto.vpr@129@12@129@148|)))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@107@01)))))))))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@107@01))))))))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@107@01)))))))))))))))))
(declare-const tid@112@01 Int)
(push) ; 2
; [eval] 0 <= tid && tid < (gsize - 1 < gsize ? gsize - 1 : gsize)
; [eval] 0 <= tid
(push) ; 3
; [then-branch: 44 | !(0 <= tid@112@01) | live]
; [else-branch: 44 | 0 <= tid@112@01 | live]
(push) ; 4
; [then-branch: 44 | !(0 <= tid@112@01)]
(assert (not (<= 0 tid@112@01)))
(pop) ; 4
(push) ; 4
; [else-branch: 44 | 0 <= tid@112@01]
(assert (<= 0 tid@112@01))
; [eval] tid < (gsize - 1 < gsize ? gsize - 1 : gsize)
; [eval] (gsize - 1 < gsize ? gsize - 1 : gsize)
; [eval] gsize - 1 < gsize
; [eval] gsize - 1
(push) ; 5
(push) ; 6
(set-option :timeout 10)
(assert (not (not (< (- gsize@104@01 1) gsize@104@01))))
(check-sat)
; unknown
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 6
(set-option :timeout 10)
(assert (not (< (- gsize@104@01 1) gsize@104@01)))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
; [then-branch: 45 | gsize@104@01 - 1 < gsize@104@01 | live]
; [else-branch: 45 | !(gsize@104@01 - 1 < gsize@104@01) | dead]
(set-option :timeout 0)
(push) ; 6
; [then-branch: 45 | gsize@104@01 - 1 < gsize@104@01]
(assert (< (- gsize@104@01 1) gsize@104@01))
; [eval] gsize - 1
(pop) ; 6
(pop) ; 5
; Joined path conditions
(assert (< (- gsize@104@01 1) gsize@104@01))
(pop) ; 4
(pop) ; 3
; Joined path conditions
; Joined path conditions
(assert (=>
  (<= 0 tid@112@01)
  (and (<= 0 tid@112@01) (< (- gsize@104@01 1) gsize@104@01))))
(assert (or (<= 0 tid@112@01) (not (<= 0 tid@112@01))))
(assert (and (<= 0 tid@112@01) (< tid@112@01 (- gsize@104@01 1))))
; [eval] diz.demo__tmp[tid]
(push) ; 3
(set-option :timeout 10)
(assert (not (< $Perm.No $k@109@01)))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(assert (not (>= tid@112@01 0)))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(push) ; 3
(assert (not (<
  tid@112@01
  (Seq_length
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@107@01))))))))))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(pop) ; 2
(declare-fun inv@113@01 ($Ref) Int)
(declare-fun img@114@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
(assert (forall ((tid@112@01 Int)) (!
  (=>
    (and (<= 0 tid@112@01) (< tid@112@01 (- gsize@104@01 1)))
    (and
      (=>
        (<= 0 tid@112@01)
        (and (<= 0 tid@112@01) (< (- gsize@104@01 1) gsize@104@01)))
      (or (<= 0 tid@112@01) (not (<= 0 tid@112@01)))))
  :pattern ((Seq_index
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@107@01))))))))
    tid@112@01))
  :qid |Ref__Integer_value-aux|)))
; Check receiver injectivity
(push) ; 2
(assert (not (forall ((tid1@112@01 Int) (tid2@112@01 Int)) (!
  (=>
    (and
      (and (<= 0 tid1@112@01) (< tid1@112@01 (- gsize@104@01 1)))
      (and (<= 0 tid2@112@01) (< tid2@112@01 (- gsize@104@01 1)))
      (=
        (Seq_index
          ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@107@01))))))))
          tid1@112@01)
        (Seq_index
          ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@107@01))))))))
          tid2@112@01)))
    (= tid1@112@01 tid2@112@01))
  
  :qid |Ref__Integer_value-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 2
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((tid@112@01 Int)) (!
  (=>
    (and (<= 0 tid@112@01) (< tid@112@01 (- gsize@104@01 1)))
    (and
      (=
        (inv@113@01 (Seq_index
          ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@107@01))))))))
          tid@112@01))
        tid@112@01)
      (img@114@01 (Seq_index
        ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@107@01))))))))
        tid@112@01))))
  :pattern ((Seq_index
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@107@01))))))))
    tid@112@01))
  :qid |quant-u-8485|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@114@01 r)
      (and (<= 0 (inv@113@01 r)) (< (inv@113@01 r) (- gsize@104@01 1))))
    (=
      (Seq_index
        ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@107@01))))))))
        (inv@113@01 r))
      r))
  :pattern ((inv@113@01 r))
  :qid |Ref__Integer_value-fctOfInv|)))
; Permissions are non-negative
; Field permissions are at most one
; Permission implies non-null receiver
(assert (forall ((tid@112@01 Int)) (!
  (=>
    (and (<= 0 tid@112@01) (< tid@112@01 (- gsize@104@01 1)))
    (not
      (=
        (Seq_index
          ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@107@01))))))))
          tid@112@01)
        $Ref.null)))
  :pattern ((Seq_index
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@107@01))))))))
    tid@112@01))
  :qid |Ref__Integer_value-permImpliesNonNull|)))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@107@01))))))))))))))
  $Snap.unit))
; [eval] (forall tid: Int :: { diz.demo__tmp[tid] } { demo__bin(N, tid) } 0 <= tid && (tid < gsize && (0 <= tid && tid < N)) ==> diz.demo__tmp[tid].Ref__Integer_value == demo__bin(N, tid))
(declare-const tid@115@01 Int)
(push) ; 2
; [eval] 0 <= tid && (tid < gsize && (0 <= tid && tid < N)) ==> diz.demo__tmp[tid].Ref__Integer_value == demo__bin(N, tid)
; [eval] 0 <= tid && (tid < gsize && (0 <= tid && tid < N))
; [eval] 0 <= tid
(push) ; 3
; [then-branch: 46 | !(0 <= tid@115@01) | live]
; [else-branch: 46 | 0 <= tid@115@01 | live]
(push) ; 4
; [then-branch: 46 | !(0 <= tid@115@01)]
(assert (not (<= 0 tid@115@01)))
(pop) ; 4
(push) ; 4
; [else-branch: 46 | 0 <= tid@115@01]
(assert (<= 0 tid@115@01))
; [eval] tid < gsize
(push) ; 5
; [then-branch: 47 | !(tid@115@01 < gsize@104@01) | live]
; [else-branch: 47 | tid@115@01 < gsize@104@01 | live]
(push) ; 6
; [then-branch: 47 | !(tid@115@01 < gsize@104@01)]
(assert (not (< tid@115@01 gsize@104@01)))
(pop) ; 6
(push) ; 6
; [else-branch: 47 | tid@115@01 < gsize@104@01]
(assert (< tid@115@01 gsize@104@01))
; [eval] 0 <= tid
(push) ; 7
; [then-branch: 48 | !(0 <= tid@115@01) | live]
; [else-branch: 48 | 0 <= tid@115@01 | live]
(push) ; 8
; [then-branch: 48 | !(0 <= tid@115@01)]
(assert (not (<= 0 tid@115@01)))
(pop) ; 8
(push) ; 8
; [else-branch: 48 | 0 <= tid@115@01]
; [eval] tid < N
(pop) ; 8
(pop) ; 7
; Joined path conditions
; Joined path conditions
(assert (or (<= 0 tid@115@01) (not (<= 0 tid@115@01))))
(pop) ; 6
(pop) ; 5
; Joined path conditions
; Joined path conditions
(assert (=>
  (< tid@115@01 gsize@104@01)
  (and
    (< tid@115@01 gsize@104@01)
    (or (<= 0 tid@115@01) (not (<= 0 tid@115@01))))))
(assert (or (< tid@115@01 gsize@104@01) (not (< tid@115@01 gsize@104@01))))
(pop) ; 4
(pop) ; 3
; Joined path conditions
; Joined path conditions
(assert (=>
  (<= 0 tid@115@01)
  (and
    (<= 0 tid@115@01)
    (=>
      (< tid@115@01 gsize@104@01)
      (and
        (< tid@115@01 gsize@104@01)
        (or (<= 0 tid@115@01) (not (<= 0 tid@115@01)))))
    (or (< tid@115@01 gsize@104@01) (not (< tid@115@01 gsize@104@01))))))
(assert (or (<= 0 tid@115@01) (not (<= 0 tid@115@01))))
(push) ; 3
; [then-branch: 49 | 0 <= tid@115@01 && tid@115@01 < gsize@104@01 && 0 <= tid@115@01 && tid@115@01 < N@106@01 | live]
; [else-branch: 49 | !(0 <= tid@115@01 && tid@115@01 < gsize@104@01 && 0 <= tid@115@01 && tid@115@01 < N@106@01) | live]
(push) ; 4
; [then-branch: 49 | 0 <= tid@115@01 && tid@115@01 < gsize@104@01 && 0 <= tid@115@01 && tid@115@01 < N@106@01]
(assert (and
  (<= 0 tid@115@01)
  (and
    (< tid@115@01 gsize@104@01)
    (and (<= 0 tid@115@01) (< tid@115@01 N@106@01)))))
; [eval] diz.demo__tmp[tid].Ref__Integer_value == demo__bin(N, tid)
; [eval] diz.demo__tmp[tid]
(push) ; 5
(set-option :timeout 10)
(assert (not (< $Perm.No $k@109@01)))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 5
(assert (not (>= tid@115@01 0)))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(push) ; 5
(assert (not (<
  tid@115@01
  (Seq_length
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@107@01))))))))))))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(push) ; 5
(assert (not (and
  (img@114@01 (Seq_index
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@107@01))))))))
    tid@115@01))
  (and
    (<=
      0
      (inv@113@01 (Seq_index
        ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@107@01))))))))
        tid@115@01)))
    (<
      (inv@113@01 (Seq_index
        ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@107@01))))))))
        tid@115@01))
      (- gsize@104@01 1))))))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
; [eval] demo__bin(N, tid)
(push) ; 5
; [eval] N >= 0
(push) ; 6
(assert (not (>= N@106@01 0)))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(assert (>= N@106@01 0))
; [eval] 0 <= k
; [eval] k <= N
(push) ; 6
(assert (not (<= tid@115@01 N@106@01)))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(assert (<= tid@115@01 N@106@01))
(assert (demo__bin%precondition ($Snap.combine
  $Snap.unit
  ($Snap.combine $Snap.unit $Snap.unit)) N@106@01 tid@115@01))
(pop) ; 5
; Joined path conditions
(assert (and
  (>= N@106@01 0)
  (<= tid@115@01 N@106@01)
  (demo__bin%precondition ($Snap.combine
    $Snap.unit
    ($Snap.combine $Snap.unit $Snap.unit)) N@106@01 tid@115@01)))
(pop) ; 4
(push) ; 4
; [else-branch: 49 | !(0 <= tid@115@01 && tid@115@01 < gsize@104@01 && 0 <= tid@115@01 && tid@115@01 < N@106@01)]
(assert (not
  (and
    (<= 0 tid@115@01)
    (and
      (< tid@115@01 gsize@104@01)
      (and (<= 0 tid@115@01) (< tid@115@01 N@106@01))))))
(pop) ; 4
(pop) ; 3
; Joined path conditions
(assert (=>
  (and
    (<= 0 tid@115@01)
    (and
      (< tid@115@01 gsize@104@01)
      (and (<= 0 tid@115@01) (< tid@115@01 N@106@01))))
  (and
    (<= 0 tid@115@01)
    (< tid@115@01 gsize@104@01)
    (< tid@115@01 N@106@01)
    (>= N@106@01 0)
    (<= tid@115@01 N@106@01)
    (demo__bin%precondition ($Snap.combine
      $Snap.unit
      ($Snap.combine $Snap.unit $Snap.unit)) N@106@01 tid@115@01))))
; Joined path conditions
(assert (or
  (not
    (and
      (<= 0 tid@115@01)
      (and
        (< tid@115@01 gsize@104@01)
        (and (<= 0 tid@115@01) (< tid@115@01 N@106@01)))))
  (and
    (<= 0 tid@115@01)
    (and
      (< tid@115@01 gsize@104@01)
      (and (<= 0 tid@115@01) (< tid@115@01 N@106@01))))))
(pop) ; 2
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall ((tid@115@01 Int)) (!
  (and
    (=>
      (<= 0 tid@115@01)
      (and
        (<= 0 tid@115@01)
        (=>
          (< tid@115@01 gsize@104@01)
          (and
            (< tid@115@01 gsize@104@01)
            (or (<= 0 tid@115@01) (not (<= 0 tid@115@01)))))
        (or (< tid@115@01 gsize@104@01) (not (< tid@115@01 gsize@104@01)))))
    (or (<= 0 tid@115@01) (not (<= 0 tid@115@01)))
    (=>
      (and
        (<= 0 tid@115@01)
        (and
          (< tid@115@01 gsize@104@01)
          (and (<= 0 tid@115@01) (< tid@115@01 N@106@01))))
      (and
        (<= 0 tid@115@01)
        (< tid@115@01 gsize@104@01)
        (< tid@115@01 N@106@01)
        (>= N@106@01 0)
        (<= tid@115@01 N@106@01)
        (demo__bin%precondition ($Snap.combine
          $Snap.unit
          ($Snap.combine $Snap.unit $Snap.unit)) N@106@01 tid@115@01)))
    (or
      (not
        (and
          (<= 0 tid@115@01)
          (and
            (< tid@115@01 gsize@104@01)
            (and (<= 0 tid@115@01) (< tid@115@01 N@106@01)))))
      (and
        (<= 0 tid@115@01)
        (and
          (< tid@115@01 gsize@104@01)
          (and (<= 0 tid@115@01) (< tid@115@01 N@106@01))))))
  :pattern ((Seq_index
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@107@01))))))))
    tid@115@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/third_party/test_binomial_noauto.vpr@131@13@131@153-aux|)))
(assert (forall ((tid@115@01 Int)) (!
  (and
    (=>
      (<= 0 tid@115@01)
      (and
        (<= 0 tid@115@01)
        (=>
          (< tid@115@01 gsize@104@01)
          (and
            (< tid@115@01 gsize@104@01)
            (or (<= 0 tid@115@01) (not (<= 0 tid@115@01)))))
        (or (< tid@115@01 gsize@104@01) (not (< tid@115@01 gsize@104@01)))))
    (or (<= 0 tid@115@01) (not (<= 0 tid@115@01)))
    (=>
      (and
        (<= 0 tid@115@01)
        (and
          (< tid@115@01 gsize@104@01)
          (and (<= 0 tid@115@01) (< tid@115@01 N@106@01))))
      (and
        (<= 0 tid@115@01)
        (< tid@115@01 gsize@104@01)
        (< tid@115@01 N@106@01)
        (>= N@106@01 0)
        (<= tid@115@01 N@106@01)
        (demo__bin%precondition ($Snap.combine
          $Snap.unit
          ($Snap.combine $Snap.unit $Snap.unit)) N@106@01 tid@115@01)))
    (or
      (not
        (and
          (<= 0 tid@115@01)
          (and
            (< tid@115@01 gsize@104@01)
            (and (<= 0 tid@115@01) (< tid@115@01 N@106@01)))))
      (and
        (<= 0 tid@115@01)
        (and
          (< tid@115@01 gsize@104@01)
          (and (<= 0 tid@115@01) (< tid@115@01 N@106@01))))))
  :pattern ((demo__bin%limited ($Snap.combine
    $Snap.unit
    ($Snap.combine $Snap.unit $Snap.unit)) N@106@01 tid@115@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/third_party/test_binomial_noauto.vpr@131@13@131@153-aux|)))
(assert (forall ((tid@115@01 Int)) (!
  (=>
    (and
      (<= 0 tid@115@01)
      (and
        (< tid@115@01 gsize@104@01)
        (and (<= 0 tid@115@01) (< tid@115@01 N@106@01))))
    (=
      ($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@107@01))))))))))))))) (Seq_index
        ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@107@01))))))))
        tid@115@01))
      (demo__bin ($Snap.combine $Snap.unit ($Snap.combine $Snap.unit $Snap.unit)) N@106@01 tid@115@01)))
  :pattern ((Seq_index
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@107@01))))))))
    tid@115@01))
  :pattern ((demo__bin%limited ($Snap.combine
    $Snap.unit
    ($Snap.combine $Snap.unit $Snap.unit)) N@106@01 tid@115@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/third_party/test_binomial_noauto.vpr@131@13@131@153|)))
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
(set-option :timeout 0)
(push) ; 2
(declare-const $t@116@01 $Snap)
(assert (= $t@116@01 ($Snap.combine ($Snap.first $t@116@01) ($Snap.second $t@116@01))))
(assert (= ($Snap.first $t@116@01) $Snap.unit))
; [eval] tcount == gsize
(assert (=
  ($Snap.second $t@116@01)
  ($Snap.combine
    ($Snap.first ($Snap.second $t@116@01))
    ($Snap.second ($Snap.second $t@116@01)))))
(assert (= ($Snap.first ($Snap.second $t@116@01)) $Snap.unit))
; [eval] gid == 0
(assert (=
  ($Snap.second ($Snap.second $t@116@01))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second $t@116@01)))
    ($Snap.second ($Snap.second ($Snap.second $t@116@01))))))
(declare-const $k@117@01 $Perm)
(assert ($Perm.isReadVar $k@117@01))
(assert (<= $Perm.No $k@117@01))
(assert (<= $k@117@01 $Perm.Write))
(assert (=> (< $Perm.No $k@117@01) (not (= diz@101@01 $Ref.null))))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second $t@116@01)))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@116@01))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@116@01)))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@116@01))))
  $Snap.unit))
; [eval] |diz.demo__ar| == gsize
; [eval] |diz.demo__ar|
(push) ; 3
(set-option :timeout 10)
(assert (not (< $Perm.No $k@117@01)))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(assert (=
  (Seq_length
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second $t@116@01)))))
  gsize@104@01))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@116@01))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@116@01)))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@116@01))))))))
(declare-const $k@118@01 $Perm)
(assert ($Perm.isReadVar $k@118@01))
(assert (<= $Perm.No $k@118@01))
(assert (<= $k@118@01 $Perm.Write))
(assert (=> (< $Perm.No $k@118@01) (not (= diz@101@01 $Ref.null))))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@116@01)))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@116@01))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@116@01)))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@116@01))))))
  $Snap.unit))
; [eval] |diz.demo__tmp| == gsize
; [eval] |diz.demo__tmp|
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (< $Perm.No $k@118@01)))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(assert (=
  (Seq_length
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@116@01)))))))
  gsize@104@01))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@116@01))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@116@01)))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@116@01))))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@116@01)))))))
  $Snap.unit))
; [eval] gsize > 1
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@116@01)))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@116@01))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@116@01)))))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@116@01))))))))
  $Snap.unit))
; [eval] diz.demo__ar == old(diz.demo__ar)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (< $Perm.No $k@117@01)))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; [eval] old(diz.demo__ar)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (< $Perm.No $k@108@01)))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(assert (Seq_equal
  ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second $t@116@01))))
  ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@107@01))))))))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@116@01))))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@116@01)))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@116@01))))))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@116@01)))))))))
  $Snap.unit))
; [eval] diz.demo__tmp == old(diz.demo__tmp)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (< $Perm.No $k@118@01)))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; [eval] old(diz.demo__tmp)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (< $Perm.No $k@109@01)))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(assert (Seq_equal
  ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@116@01))))))
  ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@107@01))))))))))
(declare-const tid@119@01 Int)
(set-option :timeout 0)
(push) ; 3
; [eval] (0 <= 0 ? 1 : 0) - 1 <= tid && tid < gsize - 1
; [eval] (0 <= 0 ? 1 : 0) - 1 <= tid
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
; [then-branch: 50 | True | live]
; [else-branch: 50 | False | dead]
(set-option :timeout 0)
(push) ; 5
; [then-branch: 50 | True]
(pop) ; 5
(pop) ; 4
; Joined path conditions
(push) ; 4
; [then-branch: 51 | !(0 <= tid@119@01) | live]
; [else-branch: 51 | 0 <= tid@119@01 | live]
(push) ; 5
; [then-branch: 51 | !(0 <= tid@119@01)]
(assert (not (<= 0 tid@119@01)))
(pop) ; 5
(push) ; 5
; [else-branch: 51 | 0 <= tid@119@01]
(assert (<= 0 tid@119@01))
; [eval] tid < gsize - 1
; [eval] gsize - 1
(pop) ; 5
(pop) ; 4
; Joined path conditions
; Joined path conditions
(assert (or (<= 0 tid@119@01) (not (<= 0 tid@119@01))))
(assert (and (<= 0 tid@119@01) (< tid@119@01 (- gsize@104@01 1))))
; [eval] diz.demo__tmp[tid]
(push) ; 4
(set-option :timeout 10)
(assert (not (< $Perm.No $k@118@01)))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 4
(assert (not (>= tid@119@01 0)))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(push) ; 4
(assert (not (<
  tid@119@01
  (Seq_length
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@116@01))))))))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(pop) ; 3
(declare-fun inv@120@01 ($Ref) Int)
(declare-fun img@121@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
(assert (forall ((tid@119@01 Int)) (!
  (=>
    (and (<= 0 tid@119@01) (< tid@119@01 (- gsize@104@01 1)))
    (or (<= 0 tid@119@01) (not (<= 0 tid@119@01))))
  :pattern ((Seq_index
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@116@01))))))
    tid@119@01))
  :qid |Ref__Integer_value-aux|)))
; Check receiver injectivity
(push) ; 3
(assert (not (forall ((tid1@119@01 Int) (tid2@119@01 Int)) (!
  (=>
    (and
      (and (<= 0 tid1@119@01) (< tid1@119@01 (- gsize@104@01 1)))
      (and (<= 0 tid2@119@01) (< tid2@119@01 (- gsize@104@01 1)))
      (=
        (Seq_index
          ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@116@01))))))
          tid1@119@01)
        (Seq_index
          ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@116@01))))))
          tid2@119@01)))
    (= tid1@119@01 tid2@119@01))
  
  :qid |Ref__Integer_value-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((tid@119@01 Int)) (!
  (=>
    (and (<= 0 tid@119@01) (< tid@119@01 (- gsize@104@01 1)))
    (and
      (=
        (inv@120@01 (Seq_index
          ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@116@01))))))
          tid@119@01))
        tid@119@01)
      (img@121@01 (Seq_index
        ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@116@01))))))
        tid@119@01))))
  :pattern ((Seq_index
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@116@01))))))
    tid@119@01))
  :qid |quant-u-8487|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@121@01 r)
      (and (<= 0 (inv@120@01 r)) (< (inv@120@01 r) (- gsize@104@01 1))))
    (=
      (Seq_index
        ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@116@01))))))
        (inv@120@01 r))
      r))
  :pattern ((inv@120@01 r))
  :qid |Ref__Integer_value-fctOfInv|)))
; Permissions are non-negative
; Field permissions are at most one
; Permission implies non-null receiver
(assert (forall ((tid@119@01 Int)) (!
  (=>
    (and (<= 0 tid@119@01) (< tid@119@01 (- gsize@104@01 1)))
    (not
      (=
        (Seq_index
          ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@116@01))))))
          tid@119@01)
        $Ref.null)))
  :pattern ((Seq_index
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@116@01))))))
    tid@119@01))
  :qid |Ref__Integer_value-permImpliesNonNull|)))
(pop) ; 2
(push) ; 2
; [eval] tcount == gsize
; [eval] gid == 0
(declare-const $k@122@01 $Perm)
(assert ($Perm.isReadVar $k@122@01))
(push) ; 3
(set-option :timeout 10)
(assert (not (not (= $k@108@01 $Perm.No))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(assert (< $k@122@01 $k@108@01))
(assert (<= $Perm.No (- $k@108@01 $k@122@01)))
(assert (<= (- $k@108@01 $k@122@01) $Perm.Write))
(assert (=> (< $Perm.No (- $k@108@01 $k@122@01)) (not (= diz@101@01 $Ref.null))))
; [eval] |diz.demo__ar| == gsize
; [eval] |diz.demo__ar|
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (< $Perm.No $k@108@01)))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(declare-const $k@123@01 $Perm)
(assert ($Perm.isReadVar $k@123@01))
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (not (= $k@109@01 $Perm.No))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(assert (< $k@123@01 $k@109@01))
(assert (<= $Perm.No (- $k@109@01 $k@123@01)))
(assert (<= (- $k@109@01 $k@123@01) $Perm.Write))
(assert (=> (< $Perm.No (- $k@109@01 $k@123@01)) (not (= diz@101@01 $Ref.null))))
; [eval] |diz.demo__tmp| == gsize
; [eval] |diz.demo__tmp|
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (< $Perm.No $k@109@01)))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; [eval] gsize > 1
; [eval] diz.demo__ar == old(diz.demo__ar)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (< $Perm.No $k@108@01)))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; [eval] old(diz.demo__ar)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (< $Perm.No $k@108@01)))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; [eval] diz.demo__tmp == old(diz.demo__tmp)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (< $Perm.No $k@109@01)))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; [eval] old(diz.demo__tmp)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (< $Perm.No $k@109@01)))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(declare-const tid@124@01 Int)
(set-option :timeout 0)
(push) ; 3
; [eval] (0 <= 0 ? 1 : 0) - 1 <= tid && tid < gsize - 1
; [eval] (0 <= 0 ? 1 : 0) - 1 <= tid
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
; [then-branch: 52 | True | live]
; [else-branch: 52 | False | dead]
(set-option :timeout 0)
(push) ; 5
; [then-branch: 52 | True]
(pop) ; 5
(pop) ; 4
; Joined path conditions
(push) ; 4
; [then-branch: 53 | !(0 <= tid@124@01) | live]
; [else-branch: 53 | 0 <= tid@124@01 | live]
(push) ; 5
; [then-branch: 53 | !(0 <= tid@124@01)]
(assert (not (<= 0 tid@124@01)))
(pop) ; 5
(push) ; 5
; [else-branch: 53 | 0 <= tid@124@01]
(assert (<= 0 tid@124@01))
; [eval] tid < gsize - 1
; [eval] gsize - 1
(pop) ; 5
(pop) ; 4
; Joined path conditions
; Joined path conditions
(assert (or (<= 0 tid@124@01) (not (<= 0 tid@124@01))))
(assert (and (<= 0 tid@124@01) (< tid@124@01 (- gsize@104@01 1))))
; [eval] diz.demo__tmp[tid]
(push) ; 4
(set-option :timeout 10)
(assert (not (< $Perm.No $k@109@01)))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 4
(assert (not (>= tid@124@01 0)))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(push) ; 4
(assert (not (<
  tid@124@01
  (Seq_length
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@107@01))))))))))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(pop) ; 3
(declare-fun inv@125@01 ($Ref) Int)
(declare-fun img@126@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
(assert (forall ((tid@124@01 Int)) (!
  (=>
    (and (<= 0 tid@124@01) (< tid@124@01 (- gsize@104@01 1)))
    (or (<= 0 tid@124@01) (not (<= 0 tid@124@01))))
  :pattern ((Seq_index
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@107@01))))))))
    tid@124@01))
  :qid |Ref__Integer_value-aux|)))
; Check receiver injectivity
(push) ; 3
(assert (not (forall ((tid1@124@01 Int) (tid2@124@01 Int)) (!
  (=>
    (and
      (and (<= 0 tid1@124@01) (< tid1@124@01 (- gsize@104@01 1)))
      (and (<= 0 tid2@124@01) (< tid2@124@01 (- gsize@104@01 1)))
      (=
        (Seq_index
          ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@107@01))))))))
          tid1@124@01)
        (Seq_index
          ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@107@01))))))))
          tid2@124@01)))
    (= tid1@124@01 tid2@124@01))
  
  :qid |Ref__Integer_value-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((tid@124@01 Int)) (!
  (=>
    (and (<= 0 tid@124@01) (< tid@124@01 (- gsize@104@01 1)))
    (and
      (=
        (inv@125@01 (Seq_index
          ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@107@01))))))))
          tid@124@01))
        tid@124@01)
      (img@126@01 (Seq_index
        ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@107@01))))))))
        tid@124@01))))
  :pattern ((Seq_index
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@107@01))))))))
    tid@124@01))
  :qid |Ref__Integer_value-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@126@01 r)
      (and (<= 0 (inv@125@01 r)) (< (inv@125@01 r) (- gsize@104@01 1))))
    (=
      (Seq_index
        ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@107@01))))))))
        (inv@125@01 r))
      r))
  :pattern ((inv@125@01 r))
  :qid |Ref__Integer_value-fctOfInv|)))
; Precomputing data for removing quantified permissions
(define-fun pTaken@127@01 ((r $Ref)) $Perm
  (ite
    (and
      (and (<= 0 (inv@125@01 r)) (< (inv@125@01 r) (- gsize@104@01 1)))
      (img@126@01 r)
      (=
        r
        (Seq_index
          ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@107@01))))))))
          (inv@125@01 r))))
    ($Perm.min
      (ite
        (and
          (img@114@01 r)
          (and (<= 0 (inv@113@01 r)) (< (inv@113@01 r) (- gsize@104@01 1))))
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
          (img@114@01 r)
          (and (<= 0 (inv@113@01 r)) (< (inv@113@01 r) (- gsize@104@01 1))))
        $Perm.Write
        $Perm.No)
      (pTaken@127@01 r))
    $Perm.No)
  
  :qid |quant-u-8490|))))
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
      (and (<= 0 (inv@125@01 r)) (< (inv@125@01 r) (- gsize@104@01 1)))
      (img@126@01 r)
      (=
        r
        (Seq_index
          ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@107@01))))))))
          (inv@125@01 r))))
    (= (- $Perm.Write (pTaken@127@01 r)) $Perm.No))
  
  :qid |quant-u-8491|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Final check if taken enough permissions
; Done removing quantified permissions
(pop) ; 2
(pop) ; 1
; ---------- demo__main_resources_of_2 ----------
(declare-const diz@128@01 $Ref)
(declare-const current_thread_id@129@01 Int)
(declare-const tcount@130@01 Int)
(declare-const gsize@131@01 Int)
(declare-const gid@132@01 Int)
(declare-const N@133@01 Int)
(declare-const diz@134@01 $Ref)
(declare-const current_thread_id@135@01 Int)
(declare-const tcount@136@01 Int)
(declare-const gsize@137@01 Int)
(declare-const gid@138@01 Int)
(declare-const N@139@01 Int)
(set-option :timeout 0)
(push) ; 1
(declare-const $t@140@01 $Snap)
(assert (= $t@140@01 ($Snap.combine ($Snap.first $t@140@01) ($Snap.second $t@140@01))))
(assert (= ($Snap.first $t@140@01) $Snap.unit))
; [eval] diz != null
(assert (not (= diz@134@01 $Ref.null)))
(assert (=
  ($Snap.second $t@140@01)
  ($Snap.combine
    ($Snap.first ($Snap.second $t@140@01))
    ($Snap.second ($Snap.second $t@140@01)))))
(assert (= ($Snap.first ($Snap.second $t@140@01)) $Snap.unit))
; [eval] current_thread_id >= 0
(assert (>= current_thread_id@135@01 0))
(assert (=
  ($Snap.second ($Snap.second $t@140@01))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second $t@140@01)))
    ($Snap.second ($Snap.second ($Snap.second $t@140@01))))))
(assert (= ($Snap.first ($Snap.second ($Snap.second $t@140@01))) $Snap.unit))
; [eval] tcount == gsize
(assert (= tcount@136@01 gsize@137@01))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second $t@140@01)))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@140@01))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@140@01)))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@140@01))))
  $Snap.unit))
; [eval] gid == 0
(assert (= gid@138@01 0))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@140@01))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@140@01)))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@140@01))))))))
(declare-const $k@141@01 $Perm)
(assert ($Perm.isReadVar $k@141@01))
(assert (<= $Perm.No $k@141@01))
(assert (<= $k@141@01 $Perm.Write))
(assert (=> (< $Perm.No $k@141@01) (not (= diz@134@01 $Ref.null))))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@140@01)))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@140@01))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@140@01)))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@140@01))))))
  $Snap.unit))
; [eval] |diz.demo__ar| == gsize
; [eval] |diz.demo__ar|
(push) ; 2
(set-option :timeout 10)
(assert (not (< $Perm.No $k@141@01)))
(check-sat)
; unsat
(pop) ; 2
; 0.00s
; (get-info :all-statistics)
(assert (=
  (Seq_length
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@140@01)))))))
  gsize@137@01))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@140@01))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@140@01)))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@140@01))))))))))
(declare-const $k@142@01 $Perm)
(assert ($Perm.isReadVar $k@142@01))
(assert (<= $Perm.No $k@142@01))
(assert (<= $k@142@01 $Perm.Write))
(assert (=> (< $Perm.No $k@142@01) (not (= diz@134@01 $Ref.null))))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@140@01)))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@140@01))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@140@01)))))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@140@01))))))))
  $Snap.unit))
; [eval] |diz.demo__tmp| == gsize
; [eval] |diz.demo__tmp|
(set-option :timeout 0)
(push) ; 2
(set-option :timeout 10)
(assert (not (< $Perm.No $k@142@01)))
(check-sat)
; unsat
(pop) ; 2
; 0.00s
; (get-info :all-statistics)
(assert (=
  (Seq_length
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@140@01)))))))))
  gsize@137@01))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@140@01))))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@140@01)))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@140@01))))))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@140@01)))))))))
  $Snap.unit))
; [eval] gsize > 1
(assert (> gsize@137@01 1))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@140@01)))))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@140@01))))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@140@01)))))))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@140@01))))))))))
  $Snap.unit))
; [eval] gsize > 1
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@140@01))))))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@140@01)))))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@140@01))))))))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@140@01)))))))))))
  $Snap.unit))
; [eval] 0 < N
(assert (< 0 N@139@01))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@140@01)))))))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@140@01))))))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@140@01)))))))))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@140@01))))))))))))
  $Snap.unit))
; [eval] N < gsize
(assert (< N@139@01 gsize@137@01))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@140@01))))))))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@140@01)))))))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@140@01))))))))))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@140@01)))))))))))))
  $Snap.unit))
; [eval] (forall i: Int, j: Int :: { diz.demo__tmp[i], diz.demo__tmp[j] } i >= 0 && (i < |diz.demo__tmp| && (j >= 0 && (j < |diz.demo__tmp| && i != j))) ==> diz.demo__tmp[i] != diz.demo__tmp[j])
(declare-const i@143@01 Int)
(declare-const j@144@01 Int)
(set-option :timeout 0)
(push) ; 2
; [eval] i >= 0 && (i < |diz.demo__tmp| && (j >= 0 && (j < |diz.demo__tmp| && i != j))) ==> diz.demo__tmp[i] != diz.demo__tmp[j]
; [eval] i >= 0 && (i < |diz.demo__tmp| && (j >= 0 && (j < |diz.demo__tmp| && i != j)))
; [eval] i >= 0
(push) ; 3
; [then-branch: 54 | !(i@143@01 >= 0) | live]
; [else-branch: 54 | i@143@01 >= 0 | live]
(push) ; 4
; [then-branch: 54 | !(i@143@01 >= 0)]
(assert (not (>= i@143@01 0)))
(pop) ; 4
(push) ; 4
; [else-branch: 54 | i@143@01 >= 0]
(assert (>= i@143@01 0))
; [eval] i < |diz.demo__tmp|
; [eval] |diz.demo__tmp|
(push) ; 5
(set-option :timeout 10)
(assert (not (< $Perm.No $k@142@01)))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 5
; [then-branch: 55 | !(i@143@01 < |First:(Second:(Second:(Second:(Second:(Second:(Second:($t@140@01)))))))|) | live]
; [else-branch: 55 | i@143@01 < |First:(Second:(Second:(Second:(Second:(Second:(Second:($t@140@01)))))))| | live]
(push) ; 6
; [then-branch: 55 | !(i@143@01 < |First:(Second:(Second:(Second:(Second:(Second:(Second:($t@140@01)))))))|)]
(assert (not
  (<
    i@143@01
    (Seq_length
      ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@140@01))))))))))))
(pop) ; 6
(push) ; 6
; [else-branch: 55 | i@143@01 < |First:(Second:(Second:(Second:(Second:(Second:(Second:($t@140@01)))))))|]
(assert (<
  i@143@01
  (Seq_length
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@140@01)))))))))))
; [eval] j >= 0
(push) ; 7
; [then-branch: 56 | !(j@144@01 >= 0) | live]
; [else-branch: 56 | j@144@01 >= 0 | live]
(push) ; 8
; [then-branch: 56 | !(j@144@01 >= 0)]
(assert (not (>= j@144@01 0)))
(pop) ; 8
(push) ; 8
; [else-branch: 56 | j@144@01 >= 0]
(assert (>= j@144@01 0))
; [eval] j < |diz.demo__tmp|
; [eval] |diz.demo__tmp|
(push) ; 9
(set-option :timeout 10)
(assert (not (< $Perm.No $k@142@01)))
(check-sat)
; unsat
(pop) ; 9
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 9
; [then-branch: 57 | !(j@144@01 < |First:(Second:(Second:(Second:(Second:(Second:(Second:($t@140@01)))))))|) | live]
; [else-branch: 57 | j@144@01 < |First:(Second:(Second:(Second:(Second:(Second:(Second:($t@140@01)))))))| | live]
(push) ; 10
; [then-branch: 57 | !(j@144@01 < |First:(Second:(Second:(Second:(Second:(Second:(Second:($t@140@01)))))))|)]
(assert (not
  (<
    j@144@01
    (Seq_length
      ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@140@01))))))))))))
(pop) ; 10
(push) ; 10
; [else-branch: 57 | j@144@01 < |First:(Second:(Second:(Second:(Second:(Second:(Second:($t@140@01)))))))|]
(assert (<
  j@144@01
  (Seq_length
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@140@01)))))))))))
; [eval] i != j
(pop) ; 10
(pop) ; 9
; Joined path conditions
; Joined path conditions
(assert (or
  (<
    j@144@01
    (Seq_length
      ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@140@01))))))))))
  (not
    (<
      j@144@01
      (Seq_length
        ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@140@01)))))))))))))
(pop) ; 8
(pop) ; 7
; Joined path conditions
; Joined path conditions
(assert (=>
  (>= j@144@01 0)
  (and
    (>= j@144@01 0)
    (or
      (<
        j@144@01
        (Seq_length
          ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@140@01))))))))))
      (not
        (<
          j@144@01
          (Seq_length
            ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@140@01)))))))))))))))
(assert (or (>= j@144@01 0) (not (>= j@144@01 0))))
(pop) ; 6
(pop) ; 5
; Joined path conditions
; Joined path conditions
(assert (=>
  (<
    i@143@01
    (Seq_length
      ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@140@01))))))))))
  (and
    (<
      i@143@01
      (Seq_length
        ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@140@01))))))))))
    (=>
      (>= j@144@01 0)
      (and
        (>= j@144@01 0)
        (or
          (<
            j@144@01
            (Seq_length
              ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@140@01))))))))))
          (not
            (<
              j@144@01
              (Seq_length
                ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@140@01))))))))))))))
    (or (>= j@144@01 0) (not (>= j@144@01 0))))))
(assert (or
  (<
    i@143@01
    (Seq_length
      ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@140@01))))))))))
  (not
    (<
      i@143@01
      (Seq_length
        ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@140@01)))))))))))))
(pop) ; 4
(pop) ; 3
; Joined path conditions
; Joined path conditions
(assert (=>
  (>= i@143@01 0)
  (and
    (>= i@143@01 0)
    (=>
      (<
        i@143@01
        (Seq_length
          ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@140@01))))))))))
      (and
        (<
          i@143@01
          (Seq_length
            ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@140@01))))))))))
        (=>
          (>= j@144@01 0)
          (and
            (>= j@144@01 0)
            (or
              (<
                j@144@01
                (Seq_length
                  ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@140@01))))))))))
              (not
                (<
                  j@144@01
                  (Seq_length
                    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@140@01))))))))))))))
        (or (>= j@144@01 0) (not (>= j@144@01 0)))))
    (or
      (<
        i@143@01
        (Seq_length
          ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@140@01))))))))))
      (not
        (<
          i@143@01
          (Seq_length
            ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@140@01)))))))))))))))
(assert (or (>= i@143@01 0) (not (>= i@143@01 0))))
(push) ; 3
; [then-branch: 58 | i@143@01 >= 0 && i@143@01 < |First:(Second:(Second:(Second:(Second:(Second:(Second:($t@140@01)))))))| && j@144@01 >= 0 && j@144@01 < |First:(Second:(Second:(Second:(Second:(Second:(Second:($t@140@01)))))))| && i@143@01 != j@144@01 | live]
; [else-branch: 58 | !(i@143@01 >= 0 && i@143@01 < |First:(Second:(Second:(Second:(Second:(Second:(Second:($t@140@01)))))))| && j@144@01 >= 0 && j@144@01 < |First:(Second:(Second:(Second:(Second:(Second:(Second:($t@140@01)))))))| && i@143@01 != j@144@01) | live]
(push) ; 4
; [then-branch: 58 | i@143@01 >= 0 && i@143@01 < |First:(Second:(Second:(Second:(Second:(Second:(Second:($t@140@01)))))))| && j@144@01 >= 0 && j@144@01 < |First:(Second:(Second:(Second:(Second:(Second:(Second:($t@140@01)))))))| && i@143@01 != j@144@01]
(assert (and
  (>= i@143@01 0)
  (and
    (<
      i@143@01
      (Seq_length
        ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@140@01))))))))))
    (and
      (>= j@144@01 0)
      (and
        (<
          j@144@01
          (Seq_length
            ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@140@01))))))))))
        (not (= i@143@01 j@144@01)))))))
; [eval] diz.demo__tmp[i] != diz.demo__tmp[j]
; [eval] diz.demo__tmp[i]
(push) ; 5
(set-option :timeout 10)
(assert (not (< $Perm.No $k@142@01)))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
; [eval] diz.demo__tmp[j]
(set-option :timeout 0)
(push) ; 5
(set-option :timeout 10)
(assert (not (< $Perm.No $k@142@01)))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(pop) ; 4
(set-option :timeout 0)
(push) ; 4
; [else-branch: 58 | !(i@143@01 >= 0 && i@143@01 < |First:(Second:(Second:(Second:(Second:(Second:(Second:($t@140@01)))))))| && j@144@01 >= 0 && j@144@01 < |First:(Second:(Second:(Second:(Second:(Second:(Second:($t@140@01)))))))| && i@143@01 != j@144@01)]
(assert (not
  (and
    (>= i@143@01 0)
    (and
      (<
        i@143@01
        (Seq_length
          ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@140@01))))))))))
      (and
        (>= j@144@01 0)
        (and
          (<
            j@144@01
            (Seq_length
              ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@140@01))))))))))
          (not (= i@143@01 j@144@01))))))))
(pop) ; 4
(pop) ; 3
; Joined path conditions
(assert (=>
  (and
    (>= i@143@01 0)
    (and
      (<
        i@143@01
        (Seq_length
          ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@140@01))))))))))
      (and
        (>= j@144@01 0)
        (and
          (<
            j@144@01
            (Seq_length
              ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@140@01))))))))))
          (not (= i@143@01 j@144@01))))))
  (and
    (>= i@143@01 0)
    (<
      i@143@01
      (Seq_length
        ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@140@01))))))))))
    (>= j@144@01 0)
    (<
      j@144@01
      (Seq_length
        ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@140@01))))))))))
    (not (= i@143@01 j@144@01)))))
; Joined path conditions
(assert (or
  (not
    (and
      (>= i@143@01 0)
      (and
        (<
          i@143@01
          (Seq_length
            ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@140@01))))))))))
        (and
          (>= j@144@01 0)
          (and
            (<
              j@144@01
              (Seq_length
                ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@140@01))))))))))
            (not (= i@143@01 j@144@01)))))))
  (and
    (>= i@143@01 0)
    (and
      (<
        i@143@01
        (Seq_length
          ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@140@01))))))))))
      (and
        (>= j@144@01 0)
        (and
          (<
            j@144@01
            (Seq_length
              ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@140@01))))))))))
          (not (= i@143@01 j@144@01))))))))
(pop) ; 2
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall ((i@143@01 Int) (j@144@01 Int)) (!
  (and
    (=>
      (>= i@143@01 0)
      (and
        (>= i@143@01 0)
        (=>
          (<
            i@143@01
            (Seq_length
              ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@140@01))))))))))
          (and
            (<
              i@143@01
              (Seq_length
                ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@140@01))))))))))
            (=>
              (>= j@144@01 0)
              (and
                (>= j@144@01 0)
                (or
                  (<
                    j@144@01
                    (Seq_length
                      ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@140@01))))))))))
                  (not
                    (<
                      j@144@01
                      (Seq_length
                        ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@140@01))))))))))))))
            (or (>= j@144@01 0) (not (>= j@144@01 0)))))
        (or
          (<
            i@143@01
            (Seq_length
              ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@140@01))))))))))
          (not
            (<
              i@143@01
              (Seq_length
                ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@140@01))))))))))))))
    (or (>= i@143@01 0) (not (>= i@143@01 0)))
    (=>
      (and
        (>= i@143@01 0)
        (and
          (<
            i@143@01
            (Seq_length
              ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@140@01))))))))))
          (and
            (>= j@144@01 0)
            (and
              (<
                j@144@01
                (Seq_length
                  ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@140@01))))))))))
              (not (= i@143@01 j@144@01))))))
      (and
        (>= i@143@01 0)
        (<
          i@143@01
          (Seq_length
            ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@140@01))))))))))
        (>= j@144@01 0)
        (<
          j@144@01
          (Seq_length
            ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@140@01))))))))))
        (not (= i@143@01 j@144@01))))
    (or
      (not
        (and
          (>= i@143@01 0)
          (and
            (<
              i@143@01
              (Seq_length
                ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@140@01))))))))))
            (and
              (>= j@144@01 0)
              (and
                (<
                  j@144@01
                  (Seq_length
                    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@140@01))))))))))
                (not (= i@143@01 j@144@01)))))))
      (and
        (>= i@143@01 0)
        (and
          (<
            i@143@01
            (Seq_length
              ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@140@01))))))))))
          (and
            (>= j@144@01 0)
            (and
              (<
                j@144@01
                (Seq_length
                  ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@140@01))))))))))
              (not (= i@143@01 j@144@01))))))))
  :pattern ((Seq_index
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@140@01))))))))
    i@143@01) (Seq_index
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@140@01))))))))
    j@144@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/third_party/test_binomial_noauto.vpr@158@12@158@148-aux|)))
(assert (forall ((i@143@01 Int) (j@144@01 Int)) (!
  (=>
    (and
      (>= i@143@01 0)
      (and
        (<
          i@143@01
          (Seq_length
            ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@140@01))))))))))
        (and
          (>= j@144@01 0)
          (and
            (<
              j@144@01
              (Seq_length
                ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@140@01))))))))))
            (not (= i@143@01 j@144@01))))))
    (not
      (=
        (Seq_index
          ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@140@01))))))))
          i@143@01)
        (Seq_index
          ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@140@01))))))))
          j@144@01))))
  :pattern ((Seq_index
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@140@01))))))))
    i@143@01) (Seq_index
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@140@01))))))))
    j@144@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/third_party/test_binomial_noauto.vpr@158@12@158@148|)))
(declare-const tid@145@01 Int)
(push) ; 2
; [eval] (0 <= 0 ? 1 : 0) - 1 <= tid && tid < gsize - 1
; [eval] (0 <= 0 ? 1 : 0) - 1 <= tid
; [eval] (0 <= 0 ? 1 : 0) - 1
; [eval] (0 <= 0 ? 1 : 0)
; [eval] 0 <= 0
(push) ; 3
(push) ; 4
(set-option :timeout 10)
(assert (not false))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; [then-branch: 59 | True | live]
; [else-branch: 59 | False | dead]
(set-option :timeout 0)
(push) ; 4
; [then-branch: 59 | True]
(pop) ; 4
(pop) ; 3
; Joined path conditions
(push) ; 3
; [then-branch: 60 | !(0 <= tid@145@01) | live]
; [else-branch: 60 | 0 <= tid@145@01 | live]
(push) ; 4
; [then-branch: 60 | !(0 <= tid@145@01)]
(assert (not (<= 0 tid@145@01)))
(pop) ; 4
(push) ; 4
; [else-branch: 60 | 0 <= tid@145@01]
(assert (<= 0 tid@145@01))
; [eval] tid < gsize - 1
; [eval] gsize - 1
(pop) ; 4
(pop) ; 3
; Joined path conditions
; Joined path conditions
(assert (or (<= 0 tid@145@01) (not (<= 0 tid@145@01))))
(assert (and (<= 0 tid@145@01) (< tid@145@01 (- gsize@137@01 1))))
; [eval] diz.demo__tmp[tid]
(push) ; 3
(set-option :timeout 10)
(assert (not (< $Perm.No $k@142@01)))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(assert (not (>= tid@145@01 0)))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(push) ; 3
(assert (not (<
  tid@145@01
  (Seq_length
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@140@01))))))))))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(pop) ; 2
(declare-fun inv@146@01 ($Ref) Int)
(declare-fun img@147@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
(assert (forall ((tid@145@01 Int)) (!
  (=>
    (and (<= 0 tid@145@01) (< tid@145@01 (- gsize@137@01 1)))
    (or (<= 0 tid@145@01) (not (<= 0 tid@145@01))))
  :pattern ((Seq_index
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@140@01))))))))
    tid@145@01))
  :qid |Ref__Integer_value-aux|)))
; Check receiver injectivity
(push) ; 2
(assert (not (forall ((tid1@145@01 Int) (tid2@145@01 Int)) (!
  (=>
    (and
      (and (<= 0 tid1@145@01) (< tid1@145@01 (- gsize@137@01 1)))
      (and (<= 0 tid2@145@01) (< tid2@145@01 (- gsize@137@01 1)))
      (=
        (Seq_index
          ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@140@01))))))))
          tid1@145@01)
        (Seq_index
          ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@140@01))))))))
          tid2@145@01)))
    (= tid1@145@01 tid2@145@01))
  
  :qid |Ref__Integer_value-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 2
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((tid@145@01 Int)) (!
  (=>
    (and (<= 0 tid@145@01) (< tid@145@01 (- gsize@137@01 1)))
    (and
      (=
        (inv@146@01 (Seq_index
          ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@140@01))))))))
          tid@145@01))
        tid@145@01)
      (img@147@01 (Seq_index
        ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@140@01))))))))
        tid@145@01))))
  :pattern ((Seq_index
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@140@01))))))))
    tid@145@01))
  :qid |quant-u-8493|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@147@01 r)
      (and (<= 0 (inv@146@01 r)) (< (inv@146@01 r) (- gsize@137@01 1))))
    (=
      (Seq_index
        ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@140@01))))))))
        (inv@146@01 r))
      r))
  :pattern ((inv@146@01 r))
  :qid |Ref__Integer_value-fctOfInv|)))
; Permissions are non-negative
; Field permissions are at most one
; Permission implies non-null receiver
(assert (forall ((tid@145@01 Int)) (!
  (=>
    (and (<= 0 tid@145@01) (< tid@145@01 (- gsize@137@01 1)))
    (not
      (=
        (Seq_index
          ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@140@01))))))))
          tid@145@01)
        $Ref.null)))
  :pattern ((Seq_index
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@140@01))))))))
    tid@145@01))
  :qid |Ref__Integer_value-permImpliesNonNull|)))
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
(set-option :timeout 0)
(push) ; 2
(declare-const $t@148@01 $Snap)
(assert (= $t@148@01 ($Snap.combine ($Snap.first $t@148@01) ($Snap.second $t@148@01))))
(assert (= ($Snap.first $t@148@01) $Snap.unit))
; [eval] tcount == gsize
(assert (=
  ($Snap.second $t@148@01)
  ($Snap.combine
    ($Snap.first ($Snap.second $t@148@01))
    ($Snap.second ($Snap.second $t@148@01)))))
(assert (= ($Snap.first ($Snap.second $t@148@01)) $Snap.unit))
; [eval] gid == 0
(assert (=
  ($Snap.second ($Snap.second $t@148@01))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second $t@148@01)))
    ($Snap.second ($Snap.second ($Snap.second $t@148@01))))))
(declare-const $k@149@01 $Perm)
(assert ($Perm.isReadVar $k@149@01))
(assert (<= $Perm.No $k@149@01))
(assert (<= $k@149@01 $Perm.Write))
(assert (=> (< $Perm.No $k@149@01) (not (= diz@134@01 $Ref.null))))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second $t@148@01)))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@148@01))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@148@01)))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@148@01))))
  $Snap.unit))
; [eval] |diz.demo__ar| == gsize
; [eval] |diz.demo__ar|
(push) ; 3
(set-option :timeout 10)
(assert (not (< $Perm.No $k@149@01)))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(assert (=
  (Seq_length
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second $t@148@01)))))
  gsize@137@01))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@148@01))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@148@01)))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@148@01))))))))
(declare-const $k@150@01 $Perm)
(assert ($Perm.isReadVar $k@150@01))
(assert (<= $Perm.No $k@150@01))
(assert (<= $k@150@01 $Perm.Write))
(assert (=> (< $Perm.No $k@150@01) (not (= diz@134@01 $Ref.null))))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@148@01)))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@148@01))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@148@01)))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@148@01))))))
  $Snap.unit))
; [eval] |diz.demo__tmp| == gsize
; [eval] |diz.demo__tmp|
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (< $Perm.No $k@150@01)))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(assert (=
  (Seq_length
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@148@01)))))))
  gsize@137@01))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@148@01))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@148@01)))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@148@01))))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@148@01)))))))
  $Snap.unit))
; [eval] gsize > 1
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@148@01)))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@148@01))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@148@01)))))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@148@01))))))))
  $Snap.unit))
; [eval] diz.demo__ar == old(diz.demo__ar)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (< $Perm.No $k@149@01)))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; [eval] old(diz.demo__ar)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (< $Perm.No $k@141@01)))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(assert (Seq_equal
  ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second $t@148@01))))
  ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@140@01))))))))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@148@01))))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@148@01)))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@148@01))))))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@148@01)))))))))
  $Snap.unit))
; [eval] diz.demo__tmp == old(diz.demo__tmp)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (< $Perm.No $k@150@01)))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; [eval] old(diz.demo__tmp)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (< $Perm.No $k@142@01)))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(assert (Seq_equal
  ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@148@01))))))
  ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@140@01))))))))))
(declare-const tid@151@01 Int)
(set-option :timeout 0)
(push) ; 3
; [eval] 0 <= tid && tid < (gsize - 1 < gsize ? gsize - 1 : gsize)
; [eval] 0 <= tid
(push) ; 4
; [then-branch: 61 | !(0 <= tid@151@01) | live]
; [else-branch: 61 | 0 <= tid@151@01 | live]
(push) ; 5
; [then-branch: 61 | !(0 <= tid@151@01)]
(assert (not (<= 0 tid@151@01)))
(pop) ; 5
(push) ; 5
; [else-branch: 61 | 0 <= tid@151@01]
(assert (<= 0 tid@151@01))
; [eval] tid < (gsize - 1 < gsize ? gsize - 1 : gsize)
; [eval] (gsize - 1 < gsize ? gsize - 1 : gsize)
; [eval] gsize - 1 < gsize
; [eval] gsize - 1
(push) ; 6
(push) ; 7
(set-option :timeout 10)
(assert (not (not (< (- gsize@137@01 1) gsize@137@01))))
(check-sat)
; unknown
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 7
(set-option :timeout 10)
(assert (not (< (- gsize@137@01 1) gsize@137@01)))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
; [then-branch: 62 | gsize@137@01 - 1 < gsize@137@01 | live]
; [else-branch: 62 | !(gsize@137@01 - 1 < gsize@137@01) | dead]
(set-option :timeout 0)
(push) ; 7
; [then-branch: 62 | gsize@137@01 - 1 < gsize@137@01]
(assert (< (- gsize@137@01 1) gsize@137@01))
; [eval] gsize - 1
(pop) ; 7
(pop) ; 6
; Joined path conditions
(assert (< (- gsize@137@01 1) gsize@137@01))
(pop) ; 5
(pop) ; 4
; Joined path conditions
; Joined path conditions
(assert (=>
  (<= 0 tid@151@01)
  (and (<= 0 tid@151@01) (< (- gsize@137@01 1) gsize@137@01))))
(assert (or (<= 0 tid@151@01) (not (<= 0 tid@151@01))))
(assert (and (<= 0 tid@151@01) (< tid@151@01 (- gsize@137@01 1))))
; [eval] diz.demo__tmp[tid]
(push) ; 4
(set-option :timeout 10)
(assert (not (< $Perm.No $k@150@01)))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 4
(assert (not (>= tid@151@01 0)))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(push) ; 4
(assert (not (<
  tid@151@01
  (Seq_length
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@148@01))))))))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(pop) ; 3
(declare-fun inv@152@01 ($Ref) Int)
(declare-fun img@153@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
(assert (forall ((tid@151@01 Int)) (!
  (=>
    (and (<= 0 tid@151@01) (< tid@151@01 (- gsize@137@01 1)))
    (and
      (=>
        (<= 0 tid@151@01)
        (and (<= 0 tid@151@01) (< (- gsize@137@01 1) gsize@137@01)))
      (or (<= 0 tid@151@01) (not (<= 0 tid@151@01)))))
  :pattern ((Seq_index
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@148@01))))))
    tid@151@01))
  :qid |Ref__Integer_value-aux|)))
; Check receiver injectivity
(push) ; 3
(assert (not (forall ((tid1@151@01 Int) (tid2@151@01 Int)) (!
  (=>
    (and
      (and (<= 0 tid1@151@01) (< tid1@151@01 (- gsize@137@01 1)))
      (and (<= 0 tid2@151@01) (< tid2@151@01 (- gsize@137@01 1)))
      (=
        (Seq_index
          ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@148@01))))))
          tid1@151@01)
        (Seq_index
          ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@148@01))))))
          tid2@151@01)))
    (= tid1@151@01 tid2@151@01))
  
  :qid |Ref__Integer_value-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((tid@151@01 Int)) (!
  (=>
    (and (<= 0 tid@151@01) (< tid@151@01 (- gsize@137@01 1)))
    (and
      (=
        (inv@152@01 (Seq_index
          ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@148@01))))))
          tid@151@01))
        tid@151@01)
      (img@153@01 (Seq_index
        ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@148@01))))))
        tid@151@01))))
  :pattern ((Seq_index
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@148@01))))))
    tid@151@01))
  :qid |quant-u-8495|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@153@01 r)
      (and (<= 0 (inv@152@01 r)) (< (inv@152@01 r) (- gsize@137@01 1))))
    (=
      (Seq_index
        ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@148@01))))))
        (inv@152@01 r))
      r))
  :pattern ((inv@152@01 r))
  :qid |Ref__Integer_value-fctOfInv|)))
; Permissions are non-negative
; Field permissions are at most one
; Permission implies non-null receiver
(assert (forall ((tid@151@01 Int)) (!
  (=>
    (and (<= 0 tid@151@01) (< tid@151@01 (- gsize@137@01 1)))
    (not
      (=
        (Seq_index
          ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@148@01))))))
          tid@151@01)
        $Ref.null)))
  :pattern ((Seq_index
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@148@01))))))
    tid@151@01))
  :qid |Ref__Integer_value-permImpliesNonNull|)))
(pop) ; 2
(push) ; 2
; [eval] tcount == gsize
; [eval] gid == 0
(declare-const $k@154@01 $Perm)
(assert ($Perm.isReadVar $k@154@01))
(push) ; 3
(set-option :timeout 10)
(assert (not (not (= $k@141@01 $Perm.No))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(assert (< $k@154@01 $k@141@01))
(assert (<= $Perm.No (- $k@141@01 $k@154@01)))
(assert (<= (- $k@141@01 $k@154@01) $Perm.Write))
(assert (=> (< $Perm.No (- $k@141@01 $k@154@01)) (not (= diz@134@01 $Ref.null))))
; [eval] |diz.demo__ar| == gsize
; [eval] |diz.demo__ar|
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (< $Perm.No $k@141@01)))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(declare-const $k@155@01 $Perm)
(assert ($Perm.isReadVar $k@155@01))
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (not (= $k@142@01 $Perm.No))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(assert (< $k@155@01 $k@142@01))
(assert (<= $Perm.No (- $k@142@01 $k@155@01)))
(assert (<= (- $k@142@01 $k@155@01) $Perm.Write))
(assert (=> (< $Perm.No (- $k@142@01 $k@155@01)) (not (= diz@134@01 $Ref.null))))
; [eval] |diz.demo__tmp| == gsize
; [eval] |diz.demo__tmp|
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (< $Perm.No $k@142@01)))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; [eval] gsize > 1
; [eval] diz.demo__ar == old(diz.demo__ar)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (< $Perm.No $k@141@01)))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; [eval] old(diz.demo__ar)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (< $Perm.No $k@141@01)))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; [eval] diz.demo__tmp == old(diz.demo__tmp)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (< $Perm.No $k@142@01)))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; [eval] old(diz.demo__tmp)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (< $Perm.No $k@142@01)))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(declare-const tid@156@01 Int)
(set-option :timeout 0)
(push) ; 3
; [eval] 0 <= tid && tid < (gsize - 1 < gsize ? gsize - 1 : gsize)
; [eval] 0 <= tid
(push) ; 4
; [then-branch: 63 | !(0 <= tid@156@01) | live]
; [else-branch: 63 | 0 <= tid@156@01 | live]
(push) ; 5
; [then-branch: 63 | !(0 <= tid@156@01)]
(assert (not (<= 0 tid@156@01)))
(pop) ; 5
(push) ; 5
; [else-branch: 63 | 0 <= tid@156@01]
(assert (<= 0 tid@156@01))
; [eval] tid < (gsize - 1 < gsize ? gsize - 1 : gsize)
; [eval] (gsize - 1 < gsize ? gsize - 1 : gsize)
; [eval] gsize - 1 < gsize
; [eval] gsize - 1
(push) ; 6
(push) ; 7
(set-option :timeout 10)
(assert (not (not (< (- gsize@137@01 1) gsize@137@01))))
(check-sat)
; unknown
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 7
(set-option :timeout 10)
(assert (not (< (- gsize@137@01 1) gsize@137@01)))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
; [then-branch: 64 | gsize@137@01 - 1 < gsize@137@01 | live]
; [else-branch: 64 | !(gsize@137@01 - 1 < gsize@137@01) | dead]
(set-option :timeout 0)
(push) ; 7
; [then-branch: 64 | gsize@137@01 - 1 < gsize@137@01]
(assert (< (- gsize@137@01 1) gsize@137@01))
; [eval] gsize - 1
(pop) ; 7
(pop) ; 6
; Joined path conditions
(assert (< (- gsize@137@01 1) gsize@137@01))
(pop) ; 5
(pop) ; 4
; Joined path conditions
; Joined path conditions
(assert (=>
  (<= 0 tid@156@01)
  (and (<= 0 tid@156@01) (< (- gsize@137@01 1) gsize@137@01))))
(assert (or (<= 0 tid@156@01) (not (<= 0 tid@156@01))))
(assert (and (<= 0 tid@156@01) (< tid@156@01 (- gsize@137@01 1))))
; [eval] diz.demo__tmp[tid]
(push) ; 4
(set-option :timeout 10)
(assert (not (< $Perm.No $k@142@01)))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 4
(assert (not (>= tid@156@01 0)))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(push) ; 4
(assert (not (<
  tid@156@01
  (Seq_length
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@140@01))))))))))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(pop) ; 3
(declare-fun inv@157@01 ($Ref) Int)
(declare-fun img@158@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
(assert (forall ((tid@156@01 Int)) (!
  (=>
    (and (<= 0 tid@156@01) (< tid@156@01 (- gsize@137@01 1)))
    (and
      (=>
        (<= 0 tid@156@01)
        (and (<= 0 tid@156@01) (< (- gsize@137@01 1) gsize@137@01)))
      (or (<= 0 tid@156@01) (not (<= 0 tid@156@01)))))
  :pattern ((Seq_index
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@140@01))))))))
    tid@156@01))
  :qid |Ref__Integer_value-aux|)))
; Check receiver injectivity
(push) ; 3
(assert (not (forall ((tid1@156@01 Int) (tid2@156@01 Int)) (!
  (=>
    (and
      (and (<= 0 tid1@156@01) (< tid1@156@01 (- gsize@137@01 1)))
      (and (<= 0 tid2@156@01) (< tid2@156@01 (- gsize@137@01 1)))
      (=
        (Seq_index
          ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@140@01))))))))
          tid1@156@01)
        (Seq_index
          ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@140@01))))))))
          tid2@156@01)))
    (= tid1@156@01 tid2@156@01))
  
  :qid |Ref__Integer_value-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((tid@156@01 Int)) (!
  (=>
    (and (<= 0 tid@156@01) (< tid@156@01 (- gsize@137@01 1)))
    (and
      (=
        (inv@157@01 (Seq_index
          ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@140@01))))))))
          tid@156@01))
        tid@156@01)
      (img@158@01 (Seq_index
        ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@140@01))))))))
        tid@156@01))))
  :pattern ((Seq_index
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@140@01))))))))
    tid@156@01))
  :qid |Ref__Integer_value-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@158@01 r)
      (and (<= 0 (inv@157@01 r)) (< (inv@157@01 r) (- gsize@137@01 1))))
    (=
      (Seq_index
        ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@140@01))))))))
        (inv@157@01 r))
      r))
  :pattern ((inv@157@01 r))
  :qid |Ref__Integer_value-fctOfInv|)))
; Precomputing data for removing quantified permissions
(define-fun pTaken@159@01 ((r $Ref)) $Perm
  (ite
    (and
      (and (<= 0 (inv@157@01 r)) (< (inv@157@01 r) (- gsize@137@01 1)))
      (img@158@01 r)
      (=
        r
        (Seq_index
          ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@140@01))))))))
          (inv@157@01 r))))
    ($Perm.min
      (ite
        (and
          (img@147@01 r)
          (and (<= 0 (inv@146@01 r)) (< (inv@146@01 r) (- gsize@137@01 1))))
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
          (img@147@01 r)
          (and (<= 0 (inv@146@01 r)) (< (inv@146@01 r) (- gsize@137@01 1))))
        $Perm.Write
        $Perm.No)
      (pTaken@159@01 r))
    $Perm.No)
  
  :qid |quant-u-8498|))))
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
      (and (<= 0 (inv@157@01 r)) (< (inv@157@01 r) (- gsize@137@01 1)))
      (img@158@01 r)
      (=
        r
        (Seq_index
          ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@140@01))))))))
          (inv@157@01 r))))
    (= (- $Perm.Write (pTaken@159@01 r)) $Perm.No))
  
  :qid |quant-u-8499|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Final check if taken enough permissions
; Done removing quantified permissions
(pop) ; 2
(pop) ; 1
; ---------- demo__main_post_check_1 ----------
(declare-const diz@160@01 $Ref)
(declare-const current_thread_id@161@01 Int)
(declare-const tcount@162@01 Int)
(declare-const gsize@163@01 Int)
(declare-const tid@164@01 Int)
(declare-const gid@165@01 Int)
(declare-const lid@166@01 Int)
(declare-const N@167@01 Int)
(declare-const diz@168@01 $Ref)
(declare-const current_thread_id@169@01 Int)
(declare-const tcount@170@01 Int)
(declare-const gsize@171@01 Int)
(declare-const tid@172@01 Int)
(declare-const gid@173@01 Int)
(declare-const lid@174@01 Int)
(declare-const N@175@01 Int)
(set-option :timeout 0)
(push) ; 1
(declare-const $t@176@01 $Snap)
(assert (= $t@176@01 ($Snap.combine ($Snap.first $t@176@01) ($Snap.second $t@176@01))))
(assert (= ($Snap.first $t@176@01) $Snap.unit))
; [eval] diz != null
(assert (not (= diz@168@01 $Ref.null)))
(assert (=
  ($Snap.second $t@176@01)
  ($Snap.combine
    ($Snap.first ($Snap.second $t@176@01))
    ($Snap.second ($Snap.second $t@176@01)))))
(assert (= ($Snap.first ($Snap.second $t@176@01)) $Snap.unit))
; [eval] current_thread_id >= 0
(assert (>= current_thread_id@169@01 0))
(assert (=
  ($Snap.second ($Snap.second $t@176@01))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second $t@176@01)))
    ($Snap.second ($Snap.second ($Snap.second $t@176@01))))))
(assert (= ($Snap.first ($Snap.second ($Snap.second $t@176@01))) $Snap.unit))
; [eval] 0 <= tid
(assert (<= 0 tid@172@01))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second $t@176@01)))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@176@01))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@176@01)))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@176@01))))
  $Snap.unit))
; [eval] tid < tcount
(assert (< tid@172@01 tcount@170@01))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@176@01))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@176@01)))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@176@01))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@176@01)))))
  $Snap.unit))
; [eval] tid == lid
(assert (= tid@172@01 lid@174@01))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@176@01)))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@176@01))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@176@01)))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@176@01))))))
  $Snap.unit))
; [eval] tcount == gsize
(assert (= tcount@170@01 gsize@171@01))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@176@01))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@176@01)))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@176@01))))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@176@01)))))))
  $Snap.unit))
; [eval] gid == 0
(assert (= gid@173@01 0))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@176@01)))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@176@01))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@176@01)))))))))))
(declare-const $k@177@01 $Perm)
(assert ($Perm.isReadVar $k@177@01))
(assert (<= $Perm.No $k@177@01))
(assert (<= $k@177@01 $Perm.Write))
(assert (=> (< $Perm.No $k@177@01) (not (= diz@168@01 $Ref.null))))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@176@01))))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@176@01)))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@176@01))))))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@176@01)))))))))
  $Snap.unit))
; [eval] |diz.demo__ar| == gsize
; [eval] |diz.demo__ar|
(push) ; 2
(set-option :timeout 10)
(assert (not (< $Perm.No $k@177@01)))
(check-sat)
; unsat
(pop) ; 2
; 0.00s
; (get-info :all-statistics)
(assert (=
  (Seq_length
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@176@01))))))))))
  gsize@171@01))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@176@01)))))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@176@01))))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@176@01)))))))))))))
(declare-const $k@178@01 $Perm)
(assert ($Perm.isReadVar $k@178@01))
(assert (<= $Perm.No $k@178@01))
(assert (<= $k@178@01 $Perm.Write))
(assert (=> (< $Perm.No $k@178@01) (not (= diz@168@01 $Ref.null))))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@176@01))))))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@176@01)))))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@176@01))))))))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@176@01)))))))))))
  $Snap.unit))
; [eval] |diz.demo__tmp| == gsize
; [eval] |diz.demo__tmp|
(set-option :timeout 0)
(push) ; 2
(set-option :timeout 10)
(assert (not (< $Perm.No $k@178@01)))
(check-sat)
; unsat
(pop) ; 2
; 0.00s
; (get-info :all-statistics)
(assert (=
  (Seq_length
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@176@01))))))))))))
  gsize@171@01))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@176@01)))))))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@176@01))))))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@176@01)))))))))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@176@01))))))))))))
  $Snap.unit))
; [eval] (forall i: Int, j: Int :: { diz.demo__ar[i], diz.demo__ar[j] } i >= 0 && (i < |diz.demo__ar| && (j >= 0 && (j < |diz.demo__ar| && i != j))) ==> diz.demo__ar[i] != diz.demo__ar[j])
(declare-const i@179@01 Int)
(declare-const j@180@01 Int)
(set-option :timeout 0)
(push) ; 2
; [eval] i >= 0 && (i < |diz.demo__ar| && (j >= 0 && (j < |diz.demo__ar| && i != j))) ==> diz.demo__ar[i] != diz.demo__ar[j]
; [eval] i >= 0 && (i < |diz.demo__ar| && (j >= 0 && (j < |diz.demo__ar| && i != j)))
; [eval] i >= 0
(push) ; 3
; [then-branch: 65 | !(i@179@01 >= 0) | live]
; [else-branch: 65 | i@179@01 >= 0 | live]
(push) ; 4
; [then-branch: 65 | !(i@179@01 >= 0)]
(assert (not (>= i@179@01 0)))
(pop) ; 4
(push) ; 4
; [else-branch: 65 | i@179@01 >= 0]
(assert (>= i@179@01 0))
; [eval] i < |diz.demo__ar|
; [eval] |diz.demo__ar|
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
; [then-branch: 66 | !(i@179@01 < |First:(Second:(Second:(Second:(Second:(Second:(Second:(Second:($t@176@01))))))))|) | live]
; [else-branch: 66 | i@179@01 < |First:(Second:(Second:(Second:(Second:(Second:(Second:(Second:($t@176@01))))))))| | live]
(push) ; 6
; [then-branch: 66 | !(i@179@01 < |First:(Second:(Second:(Second:(Second:(Second:(Second:(Second:($t@176@01))))))))|)]
(assert (not
  (<
    i@179@01
    (Seq_length
      ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@176@01)))))))))))))
(pop) ; 6
(push) ; 6
; [else-branch: 66 | i@179@01 < |First:(Second:(Second:(Second:(Second:(Second:(Second:(Second:($t@176@01))))))))|]
(assert (<
  i@179@01
  (Seq_length
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@176@01))))))))))))
; [eval] j >= 0
(push) ; 7
; [then-branch: 67 | !(j@180@01 >= 0) | live]
; [else-branch: 67 | j@180@01 >= 0 | live]
(push) ; 8
; [then-branch: 67 | !(j@180@01 >= 0)]
(assert (not (>= j@180@01 0)))
(pop) ; 8
(push) ; 8
; [else-branch: 67 | j@180@01 >= 0]
(assert (>= j@180@01 0))
; [eval] j < |diz.demo__ar|
; [eval] |diz.demo__ar|
(push) ; 9
(set-option :timeout 10)
(assert (not (< $Perm.No $k@177@01)))
(check-sat)
; unsat
(pop) ; 9
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 9
; [then-branch: 68 | !(j@180@01 < |First:(Second:(Second:(Second:(Second:(Second:(Second:(Second:($t@176@01))))))))|) | live]
; [else-branch: 68 | j@180@01 < |First:(Second:(Second:(Second:(Second:(Second:(Second:(Second:($t@176@01))))))))| | live]
(push) ; 10
; [then-branch: 68 | !(j@180@01 < |First:(Second:(Second:(Second:(Second:(Second:(Second:(Second:($t@176@01))))))))|)]
(assert (not
  (<
    j@180@01
    (Seq_length
      ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@176@01)))))))))))))
(pop) ; 10
(push) ; 10
; [else-branch: 68 | j@180@01 < |First:(Second:(Second:(Second:(Second:(Second:(Second:(Second:($t@176@01))))))))|]
(assert (<
  j@180@01
  (Seq_length
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@176@01))))))))))))
; [eval] i != j
(pop) ; 10
(pop) ; 9
; Joined path conditions
; Joined path conditions
(assert (or
  (<
    j@180@01
    (Seq_length
      ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@176@01)))))))))))
  (not
    (<
      j@180@01
      (Seq_length
        ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@176@01))))))))))))))
(pop) ; 8
(pop) ; 7
; Joined path conditions
; Joined path conditions
(assert (=>
  (>= j@180@01 0)
  (and
    (>= j@180@01 0)
    (or
      (<
        j@180@01
        (Seq_length
          ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@176@01)))))))))))
      (not
        (<
          j@180@01
          (Seq_length
            ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@176@01))))))))))))))))
(assert (or (>= j@180@01 0) (not (>= j@180@01 0))))
(pop) ; 6
(pop) ; 5
; Joined path conditions
; Joined path conditions
(assert (=>
  (<
    i@179@01
    (Seq_length
      ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@176@01)))))))))))
  (and
    (<
      i@179@01
      (Seq_length
        ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@176@01)))))))))))
    (=>
      (>= j@180@01 0)
      (and
        (>= j@180@01 0)
        (or
          (<
            j@180@01
            (Seq_length
              ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@176@01)))))))))))
          (not
            (<
              j@180@01
              (Seq_length
                ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@176@01)))))))))))))))
    (or (>= j@180@01 0) (not (>= j@180@01 0))))))
(assert (or
  (<
    i@179@01
    (Seq_length
      ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@176@01)))))))))))
  (not
    (<
      i@179@01
      (Seq_length
        ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@176@01))))))))))))))
(pop) ; 4
(pop) ; 3
; Joined path conditions
; Joined path conditions
(assert (=>
  (>= i@179@01 0)
  (and
    (>= i@179@01 0)
    (=>
      (<
        i@179@01
        (Seq_length
          ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@176@01)))))))))))
      (and
        (<
          i@179@01
          (Seq_length
            ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@176@01)))))))))))
        (=>
          (>= j@180@01 0)
          (and
            (>= j@180@01 0)
            (or
              (<
                j@180@01
                (Seq_length
                  ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@176@01)))))))))))
              (not
                (<
                  j@180@01
                  (Seq_length
                    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@176@01)))))))))))))))
        (or (>= j@180@01 0) (not (>= j@180@01 0)))))
    (or
      (<
        i@179@01
        (Seq_length
          ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@176@01)))))))))))
      (not
        (<
          i@179@01
          (Seq_length
            ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@176@01))))))))))))))))
(assert (or (>= i@179@01 0) (not (>= i@179@01 0))))
(push) ; 3
; [then-branch: 69 | i@179@01 >= 0 && i@179@01 < |First:(Second:(Second:(Second:(Second:(Second:(Second:(Second:($t@176@01))))))))| && j@180@01 >= 0 && j@180@01 < |First:(Second:(Second:(Second:(Second:(Second:(Second:(Second:($t@176@01))))))))| && i@179@01 != j@180@01 | live]
; [else-branch: 69 | !(i@179@01 >= 0 && i@179@01 < |First:(Second:(Second:(Second:(Second:(Second:(Second:(Second:($t@176@01))))))))| && j@180@01 >= 0 && j@180@01 < |First:(Second:(Second:(Second:(Second:(Second:(Second:(Second:($t@176@01))))))))| && i@179@01 != j@180@01) | live]
(push) ; 4
; [then-branch: 69 | i@179@01 >= 0 && i@179@01 < |First:(Second:(Second:(Second:(Second:(Second:(Second:(Second:($t@176@01))))))))| && j@180@01 >= 0 && j@180@01 < |First:(Second:(Second:(Second:(Second:(Second:(Second:(Second:($t@176@01))))))))| && i@179@01 != j@180@01]
(assert (and
  (>= i@179@01 0)
  (and
    (<
      i@179@01
      (Seq_length
        ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@176@01)))))))))))
    (and
      (>= j@180@01 0)
      (and
        (<
          j@180@01
          (Seq_length
            ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@176@01)))))))))))
        (not (= i@179@01 j@180@01)))))))
; [eval] diz.demo__ar[i] != diz.demo__ar[j]
; [eval] diz.demo__ar[i]
(push) ; 5
(set-option :timeout 10)
(assert (not (< $Perm.No $k@177@01)))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
; [eval] diz.demo__ar[j]
(set-option :timeout 0)
(push) ; 5
(set-option :timeout 10)
(assert (not (< $Perm.No $k@177@01)))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(pop) ; 4
(set-option :timeout 0)
(push) ; 4
; [else-branch: 69 | !(i@179@01 >= 0 && i@179@01 < |First:(Second:(Second:(Second:(Second:(Second:(Second:(Second:($t@176@01))))))))| && j@180@01 >= 0 && j@180@01 < |First:(Second:(Second:(Second:(Second:(Second:(Second:(Second:($t@176@01))))))))| && i@179@01 != j@180@01)]
(assert (not
  (and
    (>= i@179@01 0)
    (and
      (<
        i@179@01
        (Seq_length
          ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@176@01)))))))))))
      (and
        (>= j@180@01 0)
        (and
          (<
            j@180@01
            (Seq_length
              ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@176@01)))))))))))
          (not (= i@179@01 j@180@01))))))))
(pop) ; 4
(pop) ; 3
; Joined path conditions
(assert (=>
  (and
    (>= i@179@01 0)
    (and
      (<
        i@179@01
        (Seq_length
          ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@176@01)))))))))))
      (and
        (>= j@180@01 0)
        (and
          (<
            j@180@01
            (Seq_length
              ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@176@01)))))))))))
          (not (= i@179@01 j@180@01))))))
  (and
    (>= i@179@01 0)
    (<
      i@179@01
      (Seq_length
        ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@176@01)))))))))))
    (>= j@180@01 0)
    (<
      j@180@01
      (Seq_length
        ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@176@01)))))))))))
    (not (= i@179@01 j@180@01)))))
; Joined path conditions
(assert (or
  (not
    (and
      (>= i@179@01 0)
      (and
        (<
          i@179@01
          (Seq_length
            ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@176@01)))))))))))
        (and
          (>= j@180@01 0)
          (and
            (<
              j@180@01
              (Seq_length
                ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@176@01)))))))))))
            (not (= i@179@01 j@180@01)))))))
  (and
    (>= i@179@01 0)
    (and
      (<
        i@179@01
        (Seq_length
          ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@176@01)))))))))))
      (and
        (>= j@180@01 0)
        (and
          (<
            j@180@01
            (Seq_length
              ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@176@01)))))))))))
          (not (= i@179@01 j@180@01))))))))
(pop) ; 2
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall ((i@179@01 Int) (j@180@01 Int)) (!
  (and
    (=>
      (>= i@179@01 0)
      (and
        (>= i@179@01 0)
        (=>
          (<
            i@179@01
            (Seq_length
              ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@176@01)))))))))))
          (and
            (<
              i@179@01
              (Seq_length
                ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@176@01)))))))))))
            (=>
              (>= j@180@01 0)
              (and
                (>= j@180@01 0)
                (or
                  (<
                    j@180@01
                    (Seq_length
                      ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@176@01)))))))))))
                  (not
                    (<
                      j@180@01
                      (Seq_length
                        ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@176@01)))))))))))))))
            (or (>= j@180@01 0) (not (>= j@180@01 0)))))
        (or
          (<
            i@179@01
            (Seq_length
              ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@176@01)))))))))))
          (not
            (<
              i@179@01
              (Seq_length
                ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@176@01)))))))))))))))
    (or (>= i@179@01 0) (not (>= i@179@01 0)))
    (=>
      (and
        (>= i@179@01 0)
        (and
          (<
            i@179@01
            (Seq_length
              ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@176@01)))))))))))
          (and
            (>= j@180@01 0)
            (and
              (<
                j@180@01
                (Seq_length
                  ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@176@01)))))))))))
              (not (= i@179@01 j@180@01))))))
      (and
        (>= i@179@01 0)
        (<
          i@179@01
          (Seq_length
            ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@176@01)))))))))))
        (>= j@180@01 0)
        (<
          j@180@01
          (Seq_length
            ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@176@01)))))))))))
        (not (= i@179@01 j@180@01))))
    (or
      (not
        (and
          (>= i@179@01 0)
          (and
            (<
              i@179@01
              (Seq_length
                ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@176@01)))))))))))
            (and
              (>= j@180@01 0)
              (and
                (<
                  j@180@01
                  (Seq_length
                    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@176@01)))))))))))
                (not (= i@179@01 j@180@01)))))))
      (and
        (>= i@179@01 0)
        (and
          (<
            i@179@01
            (Seq_length
              ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@176@01)))))))))))
          (and
            (>= j@180@01 0)
            (and
              (<
                j@180@01
                (Seq_length
                  ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@176@01)))))))))))
              (not (= i@179@01 j@180@01))))))))
  :pattern ((Seq_index
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@176@01)))))))))
    i@179@01) (Seq_index
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@176@01)))))))))
    j@180@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/third_party/test_binomial_noauto.vpr@185@12@185@144-aux|)))
(assert (forall ((i@179@01 Int) (j@180@01 Int)) (!
  (=>
    (and
      (>= i@179@01 0)
      (and
        (<
          i@179@01
          (Seq_length
            ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@176@01)))))))))))
        (and
          (>= j@180@01 0)
          (and
            (<
              j@180@01
              (Seq_length
                ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@176@01)))))))))))
            (not (= i@179@01 j@180@01))))))
    (not
      (=
        (Seq_index
          ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@176@01)))))))))
          i@179@01)
        (Seq_index
          ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@176@01)))))))))
          j@180@01))))
  :pattern ((Seq_index
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@176@01)))))))))
    i@179@01) (Seq_index
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@176@01)))))))))
    j@180@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/third_party/test_binomial_noauto.vpr@185@12@185@144|)))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@176@01))))))))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@176@01)))))))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@176@01))))))))))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@176@01)))))))))))))
  $Snap.unit))
; [eval] (forall i: Int, j: Int :: { diz.demo__tmp[i], diz.demo__tmp[j] } i >= 0 && (i < |diz.demo__tmp| && (j >= 0 && (j < |diz.demo__tmp| && i != j))) ==> diz.demo__tmp[i] != diz.demo__tmp[j])
(declare-const i@181@01 Int)
(declare-const j@182@01 Int)
(push) ; 2
; [eval] i >= 0 && (i < |diz.demo__tmp| && (j >= 0 && (j < |diz.demo__tmp| && i != j))) ==> diz.demo__tmp[i] != diz.demo__tmp[j]
; [eval] i >= 0 && (i < |diz.demo__tmp| && (j >= 0 && (j < |diz.demo__tmp| && i != j)))
; [eval] i >= 0
(push) ; 3
; [then-branch: 70 | !(i@181@01 >= 0) | live]
; [else-branch: 70 | i@181@01 >= 0 | live]
(push) ; 4
; [then-branch: 70 | !(i@181@01 >= 0)]
(assert (not (>= i@181@01 0)))
(pop) ; 4
(push) ; 4
; [else-branch: 70 | i@181@01 >= 0]
(assert (>= i@181@01 0))
; [eval] i < |diz.demo__tmp|
; [eval] |diz.demo__tmp|
(push) ; 5
(set-option :timeout 10)
(assert (not (< $Perm.No $k@178@01)))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 5
; [then-branch: 71 | !(i@181@01 < |First:(Second:(Second:(Second:(Second:(Second:(Second:(Second:(Second:(Second:($t@176@01))))))))))|) | live]
; [else-branch: 71 | i@181@01 < |First:(Second:(Second:(Second:(Second:(Second:(Second:(Second:(Second:(Second:($t@176@01))))))))))| | live]
(push) ; 6
; [then-branch: 71 | !(i@181@01 < |First:(Second:(Second:(Second:(Second:(Second:(Second:(Second:(Second:(Second:($t@176@01))))))))))|)]
(assert (not
  (<
    i@181@01
    (Seq_length
      ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@176@01)))))))))))))))
(pop) ; 6
(push) ; 6
; [else-branch: 71 | i@181@01 < |First:(Second:(Second:(Second:(Second:(Second:(Second:(Second:(Second:(Second:($t@176@01))))))))))|]
(assert (<
  i@181@01
  (Seq_length
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@176@01))))))))))))))
; [eval] j >= 0
(push) ; 7
; [then-branch: 72 | !(j@182@01 >= 0) | live]
; [else-branch: 72 | j@182@01 >= 0 | live]
(push) ; 8
; [then-branch: 72 | !(j@182@01 >= 0)]
(assert (not (>= j@182@01 0)))
(pop) ; 8
(push) ; 8
; [else-branch: 72 | j@182@01 >= 0]
(assert (>= j@182@01 0))
; [eval] j < |diz.demo__tmp|
; [eval] |diz.demo__tmp|
(push) ; 9
(set-option :timeout 10)
(assert (not (< $Perm.No $k@178@01)))
(check-sat)
; unsat
(pop) ; 9
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 9
; [then-branch: 73 | !(j@182@01 < |First:(Second:(Second:(Second:(Second:(Second:(Second:(Second:(Second:(Second:($t@176@01))))))))))|) | live]
; [else-branch: 73 | j@182@01 < |First:(Second:(Second:(Second:(Second:(Second:(Second:(Second:(Second:(Second:($t@176@01))))))))))| | live]
(push) ; 10
; [then-branch: 73 | !(j@182@01 < |First:(Second:(Second:(Second:(Second:(Second:(Second:(Second:(Second:(Second:($t@176@01))))))))))|)]
(assert (not
  (<
    j@182@01
    (Seq_length
      ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@176@01)))))))))))))))
(pop) ; 10
(push) ; 10
; [else-branch: 73 | j@182@01 < |First:(Second:(Second:(Second:(Second:(Second:(Second:(Second:(Second:(Second:($t@176@01))))))))))|]
(assert (<
  j@182@01
  (Seq_length
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@176@01))))))))))))))
; [eval] i != j
(pop) ; 10
(pop) ; 9
; Joined path conditions
; Joined path conditions
(assert (or
  (<
    j@182@01
    (Seq_length
      ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@176@01)))))))))))))
  (not
    (<
      j@182@01
      (Seq_length
        ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@176@01))))))))))))))))
(pop) ; 8
(pop) ; 7
; Joined path conditions
; Joined path conditions
(assert (=>
  (>= j@182@01 0)
  (and
    (>= j@182@01 0)
    (or
      (<
        j@182@01
        (Seq_length
          ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@176@01)))))))))))))
      (not
        (<
          j@182@01
          (Seq_length
            ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@176@01))))))))))))))))))
(assert (or (>= j@182@01 0) (not (>= j@182@01 0))))
(pop) ; 6
(pop) ; 5
; Joined path conditions
; Joined path conditions
(assert (=>
  (<
    i@181@01
    (Seq_length
      ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@176@01)))))))))))))
  (and
    (<
      i@181@01
      (Seq_length
        ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@176@01)))))))))))))
    (=>
      (>= j@182@01 0)
      (and
        (>= j@182@01 0)
        (or
          (<
            j@182@01
            (Seq_length
              ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@176@01)))))))))))))
          (not
            (<
              j@182@01
              (Seq_length
                ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@176@01)))))))))))))))))
    (or (>= j@182@01 0) (not (>= j@182@01 0))))))
(assert (or
  (<
    i@181@01
    (Seq_length
      ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@176@01)))))))))))))
  (not
    (<
      i@181@01
      (Seq_length
        ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@176@01))))))))))))))))
(pop) ; 4
(pop) ; 3
; Joined path conditions
; Joined path conditions
(assert (=>
  (>= i@181@01 0)
  (and
    (>= i@181@01 0)
    (=>
      (<
        i@181@01
        (Seq_length
          ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@176@01)))))))))))))
      (and
        (<
          i@181@01
          (Seq_length
            ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@176@01)))))))))))))
        (=>
          (>= j@182@01 0)
          (and
            (>= j@182@01 0)
            (or
              (<
                j@182@01
                (Seq_length
                  ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@176@01)))))))))))))
              (not
                (<
                  j@182@01
                  (Seq_length
                    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@176@01)))))))))))))))))
        (or (>= j@182@01 0) (not (>= j@182@01 0)))))
    (or
      (<
        i@181@01
        (Seq_length
          ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@176@01)))))))))))))
      (not
        (<
          i@181@01
          (Seq_length
            ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@176@01))))))))))))))))))
(assert (or (>= i@181@01 0) (not (>= i@181@01 0))))
(push) ; 3
; [then-branch: 74 | i@181@01 >= 0 && i@181@01 < |First:(Second:(Second:(Second:(Second:(Second:(Second:(Second:(Second:(Second:($t@176@01))))))))))| && j@182@01 >= 0 && j@182@01 < |First:(Second:(Second:(Second:(Second:(Second:(Second:(Second:(Second:(Second:($t@176@01))))))))))| && i@181@01 != j@182@01 | live]
; [else-branch: 74 | !(i@181@01 >= 0 && i@181@01 < |First:(Second:(Second:(Second:(Second:(Second:(Second:(Second:(Second:(Second:($t@176@01))))))))))| && j@182@01 >= 0 && j@182@01 < |First:(Second:(Second:(Second:(Second:(Second:(Second:(Second:(Second:(Second:($t@176@01))))))))))| && i@181@01 != j@182@01) | live]
(push) ; 4
; [then-branch: 74 | i@181@01 >= 0 && i@181@01 < |First:(Second:(Second:(Second:(Second:(Second:(Second:(Second:(Second:(Second:($t@176@01))))))))))| && j@182@01 >= 0 && j@182@01 < |First:(Second:(Second:(Second:(Second:(Second:(Second:(Second:(Second:(Second:($t@176@01))))))))))| && i@181@01 != j@182@01]
(assert (and
  (>= i@181@01 0)
  (and
    (<
      i@181@01
      (Seq_length
        ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@176@01)))))))))))))
    (and
      (>= j@182@01 0)
      (and
        (<
          j@182@01
          (Seq_length
            ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@176@01)))))))))))))
        (not (= i@181@01 j@182@01)))))))
; [eval] diz.demo__tmp[i] != diz.demo__tmp[j]
; [eval] diz.demo__tmp[i]
(push) ; 5
(set-option :timeout 10)
(assert (not (< $Perm.No $k@178@01)))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
; [eval] diz.demo__tmp[j]
(set-option :timeout 0)
(push) ; 5
(set-option :timeout 10)
(assert (not (< $Perm.No $k@178@01)))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(pop) ; 4
(set-option :timeout 0)
(push) ; 4
; [else-branch: 74 | !(i@181@01 >= 0 && i@181@01 < |First:(Second:(Second:(Second:(Second:(Second:(Second:(Second:(Second:(Second:($t@176@01))))))))))| && j@182@01 >= 0 && j@182@01 < |First:(Second:(Second:(Second:(Second:(Second:(Second:(Second:(Second:(Second:($t@176@01))))))))))| && i@181@01 != j@182@01)]
(assert (not
  (and
    (>= i@181@01 0)
    (and
      (<
        i@181@01
        (Seq_length
          ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@176@01)))))))))))))
      (and
        (>= j@182@01 0)
        (and
          (<
            j@182@01
            (Seq_length
              ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@176@01)))))))))))))
          (not (= i@181@01 j@182@01))))))))
(pop) ; 4
(pop) ; 3
; Joined path conditions
(assert (=>
  (and
    (>= i@181@01 0)
    (and
      (<
        i@181@01
        (Seq_length
          ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@176@01)))))))))))))
      (and
        (>= j@182@01 0)
        (and
          (<
            j@182@01
            (Seq_length
              ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@176@01)))))))))))))
          (not (= i@181@01 j@182@01))))))
  (and
    (>= i@181@01 0)
    (<
      i@181@01
      (Seq_length
        ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@176@01)))))))))))))
    (>= j@182@01 0)
    (<
      j@182@01
      (Seq_length
        ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@176@01)))))))))))))
    (not (= i@181@01 j@182@01)))))
; Joined path conditions
(assert (or
  (not
    (and
      (>= i@181@01 0)
      (and
        (<
          i@181@01
          (Seq_length
            ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@176@01)))))))))))))
        (and
          (>= j@182@01 0)
          (and
            (<
              j@182@01
              (Seq_length
                ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@176@01)))))))))))))
            (not (= i@181@01 j@182@01)))))))
  (and
    (>= i@181@01 0)
    (and
      (<
        i@181@01
        (Seq_length
          ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@176@01)))))))))))))
      (and
        (>= j@182@01 0)
        (and
          (<
            j@182@01
            (Seq_length
              ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@176@01)))))))))))))
          (not (= i@181@01 j@182@01))))))))
(pop) ; 2
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall ((i@181@01 Int) (j@182@01 Int)) (!
  (and
    (=>
      (>= i@181@01 0)
      (and
        (>= i@181@01 0)
        (=>
          (<
            i@181@01
            (Seq_length
              ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@176@01)))))))))))))
          (and
            (<
              i@181@01
              (Seq_length
                ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@176@01)))))))))))))
            (=>
              (>= j@182@01 0)
              (and
                (>= j@182@01 0)
                (or
                  (<
                    j@182@01
                    (Seq_length
                      ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@176@01)))))))))))))
                  (not
                    (<
                      j@182@01
                      (Seq_length
                        ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@176@01)))))))))))))))))
            (or (>= j@182@01 0) (not (>= j@182@01 0)))))
        (or
          (<
            i@181@01
            (Seq_length
              ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@176@01)))))))))))))
          (not
            (<
              i@181@01
              (Seq_length
                ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@176@01)))))))))))))))))
    (or (>= i@181@01 0) (not (>= i@181@01 0)))
    (=>
      (and
        (>= i@181@01 0)
        (and
          (<
            i@181@01
            (Seq_length
              ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@176@01)))))))))))))
          (and
            (>= j@182@01 0)
            (and
              (<
                j@182@01
                (Seq_length
                  ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@176@01)))))))))))))
              (not (= i@181@01 j@182@01))))))
      (and
        (>= i@181@01 0)
        (<
          i@181@01
          (Seq_length
            ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@176@01)))))))))))))
        (>= j@182@01 0)
        (<
          j@182@01
          (Seq_length
            ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@176@01)))))))))))))
        (not (= i@181@01 j@182@01))))
    (or
      (not
        (and
          (>= i@181@01 0)
          (and
            (<
              i@181@01
              (Seq_length
                ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@176@01)))))))))))))
            (and
              (>= j@182@01 0)
              (and
                (<
                  j@182@01
                  (Seq_length
                    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@176@01)))))))))))))
                (not (= i@181@01 j@182@01)))))))
      (and
        (>= i@181@01 0)
        (and
          (<
            i@181@01
            (Seq_length
              ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@176@01)))))))))))))
          (and
            (>= j@182@01 0)
            (and
              (<
                j@182@01
                (Seq_length
                  ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@176@01)))))))))))))
              (not (= i@181@01 j@182@01))))))))
  :pattern ((Seq_index
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@176@01)))))))))))
    i@181@01) (Seq_index
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@176@01)))))))))))
    j@182@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/third_party/test_binomial_noauto.vpr@186@12@186@148-aux|)))
(assert (forall ((i@181@01 Int) (j@182@01 Int)) (!
  (=>
    (and
      (>= i@181@01 0)
      (and
        (<
          i@181@01
          (Seq_length
            ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@176@01)))))))))))))
        (and
          (>= j@182@01 0)
          (and
            (<
              j@182@01
              (Seq_length
                ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@176@01)))))))))))))
            (not (= i@181@01 j@182@01))))))
    (not
      (=
        (Seq_index
          ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@176@01)))))))))))
          i@181@01)
        (Seq_index
          ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@176@01)))))))))))
          j@182@01))))
  :pattern ((Seq_index
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@176@01)))))))))))
    i@181@01) (Seq_index
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@176@01)))))))))))
    j@182@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/third_party/test_binomial_noauto.vpr@186@12@186@148|)))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@176@01)))))))))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@176@01))))))))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@176@01)))))))))))))))))
(declare-const _x_tid@183@01 Int)
(push) ; 2
; [eval] 0 <= _x_tid && _x_tid < gsize
; [eval] 0 <= _x_tid
(push) ; 3
; [then-branch: 75 | !(0 <= _x_tid@183@01) | live]
; [else-branch: 75 | 0 <= _x_tid@183@01 | live]
(push) ; 4
; [then-branch: 75 | !(0 <= _x_tid@183@01)]
(assert (not (<= 0 _x_tid@183@01)))
(pop) ; 4
(push) ; 4
; [else-branch: 75 | 0 <= _x_tid@183@01]
(assert (<= 0 _x_tid@183@01))
; [eval] _x_tid < gsize
(pop) ; 4
(pop) ; 3
; Joined path conditions
; Joined path conditions
(assert (or (<= 0 _x_tid@183@01) (not (<= 0 _x_tid@183@01))))
(assert (and (<= 0 _x_tid@183@01) (< _x_tid@183@01 gsize@171@01)))
; [eval] diz.demo__ar[_x_tid]
(push) ; 3
(set-option :timeout 10)
(assert (not (< $Perm.No $k@177@01)))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(assert (not (>= _x_tid@183@01 0)))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(push) ; 3
(assert (not (<
  _x_tid@183@01
  (Seq_length
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@176@01)))))))))))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(pop) ; 2
(declare-fun inv@184@01 ($Ref) Int)
(declare-fun img@185@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
(assert (forall ((_x_tid@183@01 Int)) (!
  (=>
    (and (<= 0 _x_tid@183@01) (< _x_tid@183@01 gsize@171@01))
    (or (<= 0 _x_tid@183@01) (not (<= 0 _x_tid@183@01))))
  :pattern ((Seq_index
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@176@01)))))))))
    _x_tid@183@01))
  :qid |Ref__Integer_value-aux|)))
; Check receiver injectivity
(push) ; 2
(assert (not (forall ((_x_tid1@183@01 Int) (_x_tid2@183@01 Int)) (!
  (=>
    (and
      (and (<= 0 _x_tid1@183@01) (< _x_tid1@183@01 gsize@171@01))
      (and (<= 0 _x_tid2@183@01) (< _x_tid2@183@01 gsize@171@01))
      (=
        (Seq_index
          ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@176@01)))))))))
          _x_tid1@183@01)
        (Seq_index
          ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@176@01)))))))))
          _x_tid2@183@01)))
    (= _x_tid1@183@01 _x_tid2@183@01))
  
  :qid |Ref__Integer_value-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 2
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((_x_tid@183@01 Int)) (!
  (=>
    (and (<= 0 _x_tid@183@01) (< _x_tid@183@01 gsize@171@01))
    (and
      (=
        (inv@184@01 (Seq_index
          ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@176@01)))))))))
          _x_tid@183@01))
        _x_tid@183@01)
      (img@185@01 (Seq_index
        ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@176@01)))))))))
        _x_tid@183@01))))
  :pattern ((Seq_index
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@176@01)))))))))
    _x_tid@183@01))
  :qid |quant-u-8501|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@185@01 r)
      (and (<= 0 (inv@184@01 r)) (< (inv@184@01 r) gsize@171@01)))
    (=
      (Seq_index
        ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@176@01)))))))))
        (inv@184@01 r))
      r))
  :pattern ((inv@184@01 r))
  :qid |Ref__Integer_value-fctOfInv|)))
; Permissions are non-negative
; Field permissions are at most one
; Permission implies non-null receiver
(assert (forall ((_x_tid@183@01 Int)) (!
  (=>
    (and (<= 0 _x_tid@183@01) (< _x_tid@183@01 gsize@171@01))
    (not
      (=
        (Seq_index
          ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@176@01)))))))))
          _x_tid@183@01)
        $Ref.null)))
  :pattern ((Seq_index
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@176@01)))))))))
    _x_tid@183@01))
  :qid |Ref__Integer_value-permImpliesNonNull|)))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@176@01))))))))))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@176@01)))))))))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@176@01))))))))))))))))))
(declare-const _x_tid@186@01 Int)
(push) ; 2
; [eval] 0 <= _x_tid && _x_tid < gsize
; [eval] 0 <= _x_tid
(push) ; 3
; [then-branch: 76 | !(0 <= _x_tid@186@01) | live]
; [else-branch: 76 | 0 <= _x_tid@186@01 | live]
(push) ; 4
; [then-branch: 76 | !(0 <= _x_tid@186@01)]
(assert (not (<= 0 _x_tid@186@01)))
(pop) ; 4
(push) ; 4
; [else-branch: 76 | 0 <= _x_tid@186@01]
(assert (<= 0 _x_tid@186@01))
; [eval] _x_tid < gsize
(pop) ; 4
(pop) ; 3
; Joined path conditions
; Joined path conditions
(assert (or (<= 0 _x_tid@186@01) (not (<= 0 _x_tid@186@01))))
(assert (and (<= 0 _x_tid@186@01) (< _x_tid@186@01 gsize@171@01)))
; [eval] diz.demo__tmp[_x_tid]
(push) ; 3
(set-option :timeout 10)
(assert (not (< $Perm.No $k@178@01)))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(assert (not (>= _x_tid@186@01 0)))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(push) ; 3
(assert (not (<
  _x_tid@186@01
  (Seq_length
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@176@01)))))))))))))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(pop) ; 2
(declare-fun inv@187@01 ($Ref) Int)
(declare-fun img@188@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
(assert (forall ((_x_tid@186@01 Int)) (!
  (=>
    (and (<= 0 _x_tid@186@01) (< _x_tid@186@01 gsize@171@01))
    (or (<= 0 _x_tid@186@01) (not (<= 0 _x_tid@186@01))))
  :pattern ((Seq_index
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@176@01)))))))))))
    _x_tid@186@01))
  :qid |Ref__Integer_value-aux|)))
; Check receiver injectivity
(push) ; 2
(assert (not (forall ((_x_tid1@186@01 Int) (_x_tid2@186@01 Int)) (!
  (=>
    (and
      (and (<= 0 _x_tid1@186@01) (< _x_tid1@186@01 gsize@171@01))
      (and (<= 0 _x_tid2@186@01) (< _x_tid2@186@01 gsize@171@01))
      (=
        (Seq_index
          ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@176@01)))))))))))
          _x_tid1@186@01)
        (Seq_index
          ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@176@01)))))))))))
          _x_tid2@186@01)))
    (= _x_tid1@186@01 _x_tid2@186@01))
  
  :qid |Ref__Integer_value-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 2
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((_x_tid@186@01 Int)) (!
  (=>
    (and (<= 0 _x_tid@186@01) (< _x_tid@186@01 gsize@171@01))
    (and
      (=
        (inv@187@01 (Seq_index
          ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@176@01)))))))))))
          _x_tid@186@01))
        _x_tid@186@01)
      (img@188@01 (Seq_index
        ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@176@01)))))))))))
        _x_tid@186@01))))
  :pattern ((Seq_index
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@176@01)))))))))))
    _x_tid@186@01))
  :qid |quant-u-8503|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@188@01 r)
      (and (<= 0 (inv@187@01 r)) (< (inv@187@01 r) gsize@171@01)))
    (=
      (Seq_index
        ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@176@01)))))))))))
        (inv@187@01 r))
      r))
  :pattern ((inv@187@01 r))
  :qid |Ref__Integer_value-fctOfInv|)))
; Permissions are non-negative
; Field permissions are at most one
; Permission implies non-null receiver
(assert (forall ((_x_tid@186@01 Int)) (!
  (=>
    (and (<= 0 _x_tid@186@01) (< _x_tid@186@01 gsize@171@01))
    (not
      (=
        (Seq_index
          ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@176@01)))))))))))
          _x_tid@186@01)
        $Ref.null)))
  :pattern ((Seq_index
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@176@01)))))))))))
    _x_tid@186@01))
  :qid |Ref__Integer_value-permImpliesNonNull|)))
(push) ; 2
(set-option :timeout 10)
(assert (not (forall ((r $Ref)) (!
  (and
    (=
      (Seq_index
        ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@176@01)))))))))))
        _x_tid@186@01)
      (Seq_index
        ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@176@01)))))))))
        _x_tid@183@01))
    (=
      (and
        (img@188@01 r)
        (and (<= 0 (inv@187@01 r)) (< (inv@187@01 r) gsize@171@01)))
      (and
        (img@185@01 r)
        (and (<= 0 (inv@184@01 r)) (< (inv@184@01 r) gsize@171@01)))))
  
  :qid |quant-u-8504|))))
(check-sat)
; unknown
(pop) ; 2
; 0.00s
; (get-info :all-statistics)
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@176@01)))))))))))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@176@01))))))))))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@176@01)))))))))))))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@176@01))))))))))))))))
  $Snap.unit))
; [eval] gsize > 1
(assert (> gsize@171@01 1))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@176@01))))))))))))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@176@01)))))))))))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@176@01))))))))))))))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@176@01)))))))))))))))))
  $Snap.unit))
; [eval] 0 < N
(assert (< 0 N@175@01))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@176@01)))))))))))))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@176@01))))))))))))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@176@01)))))))))))))))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@176@01))))))))))))))))))
  $Snap.unit))
; [eval] N < gsize
(assert (< N@175@01 gsize@171@01))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@176@01))))))))))))))))))
  $Snap.unit))
; [eval] (forall _x_tid: Int :: { diz.demo__tmp[_x_tid] } { demo__bin(N, _x_tid) } 0 <= _x_tid && (_x_tid < gsize && (0 <= _x_tid && _x_tid < N)) ==> diz.demo__tmp[_x_tid].Ref__Integer_value == demo__bin(N, _x_tid))
(declare-const _x_tid@189@01 Int)
(set-option :timeout 0)
(push) ; 2
; [eval] 0 <= _x_tid && (_x_tid < gsize && (0 <= _x_tid && _x_tid < N)) ==> diz.demo__tmp[_x_tid].Ref__Integer_value == demo__bin(N, _x_tid)
; [eval] 0 <= _x_tid && (_x_tid < gsize && (0 <= _x_tid && _x_tid < N))
; [eval] 0 <= _x_tid
(push) ; 3
; [then-branch: 77 | !(0 <= _x_tid@189@01) | live]
; [else-branch: 77 | 0 <= _x_tid@189@01 | live]
(push) ; 4
; [then-branch: 77 | !(0 <= _x_tid@189@01)]
(assert (not (<= 0 _x_tid@189@01)))
(pop) ; 4
(push) ; 4
; [else-branch: 77 | 0 <= _x_tid@189@01]
(assert (<= 0 _x_tid@189@01))
; [eval] _x_tid < gsize
(push) ; 5
; [then-branch: 78 | !(_x_tid@189@01 < gsize@171@01) | live]
; [else-branch: 78 | _x_tid@189@01 < gsize@171@01 | live]
(push) ; 6
; [then-branch: 78 | !(_x_tid@189@01 < gsize@171@01)]
(assert (not (< _x_tid@189@01 gsize@171@01)))
(pop) ; 6
(push) ; 6
; [else-branch: 78 | _x_tid@189@01 < gsize@171@01]
(assert (< _x_tid@189@01 gsize@171@01))
; [eval] 0 <= _x_tid
(push) ; 7
; [then-branch: 79 | !(0 <= _x_tid@189@01) | live]
; [else-branch: 79 | 0 <= _x_tid@189@01 | live]
(push) ; 8
; [then-branch: 79 | !(0 <= _x_tid@189@01)]
(assert (not (<= 0 _x_tid@189@01)))
(pop) ; 8
(push) ; 8
; [else-branch: 79 | 0 <= _x_tid@189@01]
; [eval] _x_tid < N
(pop) ; 8
(pop) ; 7
; Joined path conditions
; Joined path conditions
(assert (or (<= 0 _x_tid@189@01) (not (<= 0 _x_tid@189@01))))
(pop) ; 6
(pop) ; 5
; Joined path conditions
; Joined path conditions
(assert (=>
  (< _x_tid@189@01 gsize@171@01)
  (and
    (< _x_tid@189@01 gsize@171@01)
    (or (<= 0 _x_tid@189@01) (not (<= 0 _x_tid@189@01))))))
(assert (or (< _x_tid@189@01 gsize@171@01) (not (< _x_tid@189@01 gsize@171@01))))
(pop) ; 4
(pop) ; 3
; Joined path conditions
; Joined path conditions
(assert (=>
  (<= 0 _x_tid@189@01)
  (and
    (<= 0 _x_tid@189@01)
    (=>
      (< _x_tid@189@01 gsize@171@01)
      (and
        (< _x_tid@189@01 gsize@171@01)
        (or (<= 0 _x_tid@189@01) (not (<= 0 _x_tid@189@01)))))
    (or (< _x_tid@189@01 gsize@171@01) (not (< _x_tid@189@01 gsize@171@01))))))
(assert (or (<= 0 _x_tid@189@01) (not (<= 0 _x_tid@189@01))))
(push) ; 3
; [then-branch: 80 | 0 <= _x_tid@189@01 && _x_tid@189@01 < gsize@171@01 && 0 <= _x_tid@189@01 && _x_tid@189@01 < N@175@01 | live]
; [else-branch: 80 | !(0 <= _x_tid@189@01 && _x_tid@189@01 < gsize@171@01 && 0 <= _x_tid@189@01 && _x_tid@189@01 < N@175@01) | live]
(push) ; 4
; [then-branch: 80 | 0 <= _x_tid@189@01 && _x_tid@189@01 < gsize@171@01 && 0 <= _x_tid@189@01 && _x_tid@189@01 < N@175@01]
(assert (and
  (<= 0 _x_tid@189@01)
  (and
    (< _x_tid@189@01 gsize@171@01)
    (and (<= 0 _x_tid@189@01) (< _x_tid@189@01 N@175@01)))))
; [eval] diz.demo__tmp[_x_tid].Ref__Integer_value == demo__bin(N, _x_tid)
; [eval] diz.demo__tmp[_x_tid]
(push) ; 5
(set-option :timeout 10)
(assert (not (< $Perm.No $k@178@01)))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 5
(assert (not (>= _x_tid@189@01 0)))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(push) ; 5
(assert (not (<
  _x_tid@189@01
  (Seq_length
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@176@01)))))))))))))))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(declare-const sm@190@01 $FVF<Ref__Integer_value>)
; Definitional axioms for snapshot map values
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@185@01 r)
      (and (<= 0 (inv@184@01 r)) (< (inv@184@01 r) gsize@171@01)))
    (=
      ($FVF.lookup_Ref__Integer_value (as sm@190@01  $FVF<Ref__Integer_value>) r)
      ($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@176@01))))))))))))))) r)))
  :pattern (($FVF.lookup_Ref__Integer_value (as sm@190@01  $FVF<Ref__Integer_value>) r))
  :pattern (($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@176@01))))))))))))))) r))
  :qid |qp.fvfValDef0|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@188@01 r)
      (and (<= 0 (inv@187@01 r)) (< (inv@187@01 r) gsize@171@01)))
    (=
      ($FVF.lookup_Ref__Integer_value (as sm@190@01  $FVF<Ref__Integer_value>) r)
      ($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@176@01)))))))))))))))) r)))
  :pattern (($FVF.lookup_Ref__Integer_value (as sm@190@01  $FVF<Ref__Integer_value>) r))
  :pattern (($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@176@01)))))))))))))))) r))
  :qid |qp.fvfValDef1|)))
(declare-const pm@191@01 $FPM)
(assert (forall ((r $Ref)) (!
  (=
    ($FVF.perm_Ref__Integer_value (as pm@191@01  $FPM) r)
    (+
      (ite
        (and
          (img@185@01 r)
          (and (<= 0 (inv@184@01 r)) (< (inv@184@01 r) gsize@171@01)))
        $Perm.Write
        $Perm.No)
      (ite
        (and
          (img@188@01 r)
          (and (<= 0 (inv@187@01 r)) (< (inv@187@01 r) gsize@171@01)))
        $Perm.Write
        $Perm.No)))
  :pattern (($FVF.perm_Ref__Integer_value (as pm@191@01  $FPM) r))
  :qid |qp.resPrmSumDef2|)))
(push) ; 5
(assert (not (<
  $Perm.No
  ($FVF.perm_Ref__Integer_value (as pm@191@01  $FPM) (Seq_index
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@176@01)))))))))))
    _x_tid@189@01)))))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
; [eval] demo__bin(N, _x_tid)
(push) ; 5
; [eval] N >= 0
(push) ; 6
(assert (not (>= N@175@01 0)))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(assert (>= N@175@01 0))
; [eval] 0 <= k
; [eval] k <= N
(push) ; 6
(assert (not (<= _x_tid@189@01 N@175@01)))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(assert (<= _x_tid@189@01 N@175@01))
(assert (demo__bin%precondition ($Snap.combine
  $Snap.unit
  ($Snap.combine $Snap.unit $Snap.unit)) N@175@01 _x_tid@189@01))
(pop) ; 5
; Joined path conditions
(assert (and
  (>= N@175@01 0)
  (<= _x_tid@189@01 N@175@01)
  (demo__bin%precondition ($Snap.combine
    $Snap.unit
    ($Snap.combine $Snap.unit $Snap.unit)) N@175@01 _x_tid@189@01)))
(pop) ; 4
(push) ; 4
; [else-branch: 80 | !(0 <= _x_tid@189@01 && _x_tid@189@01 < gsize@171@01 && 0 <= _x_tid@189@01 && _x_tid@189@01 < N@175@01)]
(assert (not
  (and
    (<= 0 _x_tid@189@01)
    (and
      (< _x_tid@189@01 gsize@171@01)
      (and (<= 0 _x_tid@189@01) (< _x_tid@189@01 N@175@01))))))
(pop) ; 4
(pop) ; 3
; Joined path conditions
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@185@01 r)
      (and (<= 0 (inv@184@01 r)) (< (inv@184@01 r) gsize@171@01)))
    (=
      ($FVF.lookup_Ref__Integer_value (as sm@190@01  $FVF<Ref__Integer_value>) r)
      ($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@176@01))))))))))))))) r)))
  :pattern (($FVF.lookup_Ref__Integer_value (as sm@190@01  $FVF<Ref__Integer_value>) r))
  :pattern (($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@176@01))))))))))))))) r))
  :qid |qp.fvfValDef0|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@188@01 r)
      (and (<= 0 (inv@187@01 r)) (< (inv@187@01 r) gsize@171@01)))
    (=
      ($FVF.lookup_Ref__Integer_value (as sm@190@01  $FVF<Ref__Integer_value>) r)
      ($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@176@01)))))))))))))))) r)))
  :pattern (($FVF.lookup_Ref__Integer_value (as sm@190@01  $FVF<Ref__Integer_value>) r))
  :pattern (($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@176@01)))))))))))))))) r))
  :qid |qp.fvfValDef1|)))
(assert (forall ((r $Ref)) (!
  (=
    ($FVF.perm_Ref__Integer_value (as pm@191@01  $FPM) r)
    (+
      (ite
        (and
          (img@185@01 r)
          (and (<= 0 (inv@184@01 r)) (< (inv@184@01 r) gsize@171@01)))
        $Perm.Write
        $Perm.No)
      (ite
        (and
          (img@188@01 r)
          (and (<= 0 (inv@187@01 r)) (< (inv@187@01 r) gsize@171@01)))
        $Perm.Write
        $Perm.No)))
  :pattern (($FVF.perm_Ref__Integer_value (as pm@191@01  $FPM) r))
  :qid |qp.resPrmSumDef2|)))
(assert (=>
  (and
    (<= 0 _x_tid@189@01)
    (and
      (< _x_tid@189@01 gsize@171@01)
      (and (<= 0 _x_tid@189@01) (< _x_tid@189@01 N@175@01))))
  (and
    (<= 0 _x_tid@189@01)
    (< _x_tid@189@01 gsize@171@01)
    (< _x_tid@189@01 N@175@01)
    (>= N@175@01 0)
    (<= _x_tid@189@01 N@175@01)
    (demo__bin%precondition ($Snap.combine
      $Snap.unit
      ($Snap.combine $Snap.unit $Snap.unit)) N@175@01 _x_tid@189@01))))
; Joined path conditions
(assert (or
  (not
    (and
      (<= 0 _x_tid@189@01)
      (and
        (< _x_tid@189@01 gsize@171@01)
        (and (<= 0 _x_tid@189@01) (< _x_tid@189@01 N@175@01)))))
  (and
    (<= 0 _x_tid@189@01)
    (and
      (< _x_tid@189@01 gsize@171@01)
      (and (<= 0 _x_tid@189@01) (< _x_tid@189@01 N@175@01))))))
(pop) ; 2
; Nested auxiliary terms: globals (aux)
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@185@01 r)
      (and (<= 0 (inv@184@01 r)) (< (inv@184@01 r) gsize@171@01)))
    (=
      ($FVF.lookup_Ref__Integer_value (as sm@190@01  $FVF<Ref__Integer_value>) r)
      ($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@176@01))))))))))))))) r)))
  :pattern (($FVF.lookup_Ref__Integer_value (as sm@190@01  $FVF<Ref__Integer_value>) r))
  :pattern (($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@176@01))))))))))))))) r))
  :qid |qp.fvfValDef0|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@188@01 r)
      (and (<= 0 (inv@187@01 r)) (< (inv@187@01 r) gsize@171@01)))
    (=
      ($FVF.lookup_Ref__Integer_value (as sm@190@01  $FVF<Ref__Integer_value>) r)
      ($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@176@01)))))))))))))))) r)))
  :pattern (($FVF.lookup_Ref__Integer_value (as sm@190@01  $FVF<Ref__Integer_value>) r))
  :pattern (($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@176@01)))))))))))))))) r))
  :qid |qp.fvfValDef1|)))
(assert (forall ((r $Ref)) (!
  (=
    ($FVF.perm_Ref__Integer_value (as pm@191@01  $FPM) r)
    (+
      (ite
        (and
          (img@185@01 r)
          (and (<= 0 (inv@184@01 r)) (< (inv@184@01 r) gsize@171@01)))
        $Perm.Write
        $Perm.No)
      (ite
        (and
          (img@188@01 r)
          (and (<= 0 (inv@187@01 r)) (< (inv@187@01 r) gsize@171@01)))
        $Perm.Write
        $Perm.No)))
  :pattern (($FVF.perm_Ref__Integer_value (as pm@191@01  $FPM) r))
  :qid |qp.resPrmSumDef2|)))
; Nested auxiliary terms: non-globals (aux)
(assert (forall ((_x_tid@189@01 Int)) (!
  (and
    (=>
      (<= 0 _x_tid@189@01)
      (and
        (<= 0 _x_tid@189@01)
        (=>
          (< _x_tid@189@01 gsize@171@01)
          (and
            (< _x_tid@189@01 gsize@171@01)
            (or (<= 0 _x_tid@189@01) (not (<= 0 _x_tid@189@01)))))
        (or (< _x_tid@189@01 gsize@171@01) (not (< _x_tid@189@01 gsize@171@01)))))
    (or (<= 0 _x_tid@189@01) (not (<= 0 _x_tid@189@01)))
    (=>
      (and
        (<= 0 _x_tid@189@01)
        (and
          (< _x_tid@189@01 gsize@171@01)
          (and (<= 0 _x_tid@189@01) (< _x_tid@189@01 N@175@01))))
      (and
        (<= 0 _x_tid@189@01)
        (< _x_tid@189@01 gsize@171@01)
        (< _x_tid@189@01 N@175@01)
        (>= N@175@01 0)
        (<= _x_tid@189@01 N@175@01)
        (demo__bin%precondition ($Snap.combine
          $Snap.unit
          ($Snap.combine $Snap.unit $Snap.unit)) N@175@01 _x_tid@189@01)))
    (or
      (not
        (and
          (<= 0 _x_tid@189@01)
          (and
            (< _x_tid@189@01 gsize@171@01)
            (and (<= 0 _x_tid@189@01) (< _x_tid@189@01 N@175@01)))))
      (and
        (<= 0 _x_tid@189@01)
        (and
          (< _x_tid@189@01 gsize@171@01)
          (and (<= 0 _x_tid@189@01) (< _x_tid@189@01 N@175@01))))))
  :pattern ((Seq_index
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@176@01)))))))))))
    _x_tid@189@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/third_party/test_binomial_noauto.vpr@192@13@192@174-aux|)))
(assert (forall ((_x_tid@189@01 Int)) (!
  (and
    (=>
      (<= 0 _x_tid@189@01)
      (and
        (<= 0 _x_tid@189@01)
        (=>
          (< _x_tid@189@01 gsize@171@01)
          (and
            (< _x_tid@189@01 gsize@171@01)
            (or (<= 0 _x_tid@189@01) (not (<= 0 _x_tid@189@01)))))
        (or (< _x_tid@189@01 gsize@171@01) (not (< _x_tid@189@01 gsize@171@01)))))
    (or (<= 0 _x_tid@189@01) (not (<= 0 _x_tid@189@01)))
    (=>
      (and
        (<= 0 _x_tid@189@01)
        (and
          (< _x_tid@189@01 gsize@171@01)
          (and (<= 0 _x_tid@189@01) (< _x_tid@189@01 N@175@01))))
      (and
        (<= 0 _x_tid@189@01)
        (< _x_tid@189@01 gsize@171@01)
        (< _x_tid@189@01 N@175@01)
        (>= N@175@01 0)
        (<= _x_tid@189@01 N@175@01)
        (demo__bin%precondition ($Snap.combine
          $Snap.unit
          ($Snap.combine $Snap.unit $Snap.unit)) N@175@01 _x_tid@189@01)))
    (or
      (not
        (and
          (<= 0 _x_tid@189@01)
          (and
            (< _x_tid@189@01 gsize@171@01)
            (and (<= 0 _x_tid@189@01) (< _x_tid@189@01 N@175@01)))))
      (and
        (<= 0 _x_tid@189@01)
        (and
          (< _x_tid@189@01 gsize@171@01)
          (and (<= 0 _x_tid@189@01) (< _x_tid@189@01 N@175@01))))))
  :pattern ((demo__bin%limited ($Snap.combine
    $Snap.unit
    ($Snap.combine $Snap.unit $Snap.unit)) N@175@01 _x_tid@189@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/third_party/test_binomial_noauto.vpr@192@13@192@174-aux|)))
(assert (forall ((_x_tid@189@01 Int)) (!
  (=>
    (and
      (<= 0 _x_tid@189@01)
      (and
        (< _x_tid@189@01 gsize@171@01)
        (and (<= 0 _x_tid@189@01) (< _x_tid@189@01 N@175@01))))
    (=
      ($FVF.lookup_Ref__Integer_value (as sm@190@01  $FVF<Ref__Integer_value>) (Seq_index
        ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@176@01)))))))))))
        _x_tid@189@01))
      (demo__bin ($Snap.combine $Snap.unit ($Snap.combine $Snap.unit $Snap.unit)) N@175@01 _x_tid@189@01)))
  :pattern ((Seq_index
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@176@01)))))))))))
    _x_tid@189@01))
  :pattern ((demo__bin%limited ($Snap.combine
    $Snap.unit
    ($Snap.combine $Snap.unit $Snap.unit)) N@175@01 _x_tid@189@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/third_party/test_binomial_noauto.vpr@192@13@192@174|)))
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
(set-option :timeout 0)
(push) ; 2
(declare-const $t@192@01 $Snap)
(assert (= $t@192@01 ($Snap.combine ($Snap.first $t@192@01) ($Snap.second $t@192@01))))
(assert (= ($Snap.first $t@192@01) $Snap.unit))
; [eval] 0 <= tid
(assert (=
  ($Snap.second $t@192@01)
  ($Snap.combine
    ($Snap.first ($Snap.second $t@192@01))
    ($Snap.second ($Snap.second $t@192@01)))))
(assert (= ($Snap.first ($Snap.second $t@192@01)) $Snap.unit))
; [eval] tid < tcount
(assert (=
  ($Snap.second ($Snap.second $t@192@01))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second $t@192@01)))
    ($Snap.second ($Snap.second ($Snap.second $t@192@01))))))
(assert (= ($Snap.first ($Snap.second ($Snap.second $t@192@01))) $Snap.unit))
; [eval] tid == lid
(assert (=
  ($Snap.second ($Snap.second ($Snap.second $t@192@01)))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@192@01))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@192@01)))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@192@01))))
  $Snap.unit))
; [eval] tcount == gsize
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@192@01))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@192@01)))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@192@01))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@192@01)))))
  $Snap.unit))
; [eval] gid == 0
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@192@01)))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@192@01))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@192@01)))))))))
(declare-const $k@193@01 $Perm)
(assert ($Perm.isReadVar $k@193@01))
(assert (<= $Perm.No $k@193@01))
(assert (<= $k@193@01 $Perm.Write))
(assert (=> (< $Perm.No $k@193@01) (not (= diz@168@01 $Ref.null))))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@192@01))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@192@01)))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@192@01))))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@192@01)))))))
  $Snap.unit))
; [eval] |diz.demo__ar| == gsize
; [eval] |diz.demo__ar|
(push) ; 3
(set-option :timeout 10)
(assert (not (< $Perm.No $k@193@01)))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(assert (=
  (Seq_length
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@192@01))))))))
  gsize@171@01))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@192@01)))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@192@01))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@192@01)))))))))))
(declare-const $k@194@01 $Perm)
(assert ($Perm.isReadVar $k@194@01))
(assert (<= $Perm.No $k@194@01))
(assert (<= $k@194@01 $Perm.Write))
(assert (=> (< $Perm.No $k@194@01) (not (= diz@168@01 $Ref.null))))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@192@01))))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@192@01)))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@192@01))))))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@192@01)))))))))
  $Snap.unit))
; [eval] |diz.demo__tmp| == gsize
; [eval] |diz.demo__tmp|
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (< $Perm.No $k@194@01)))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(assert (=
  (Seq_length
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@192@01))))))))))
  gsize@171@01))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@192@01)))))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@192@01))))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@192@01)))))))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@192@01))))))))))
  $Snap.unit))
; [eval] diz.demo__ar == old(diz.demo__ar)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (< $Perm.No $k@193@01)))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; [eval] old(diz.demo__ar)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (< $Perm.No $k@177@01)))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(assert (Seq_equal
  ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@192@01)))))))
  ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@176@01)))))))))))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@192@01))))))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@192@01)))))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@192@01))))))))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@192@01)))))))))))
  $Snap.unit))
; [eval] diz.demo__tmp == old(diz.demo__tmp)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (< $Perm.No $k@194@01)))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; [eval] old(diz.demo__tmp)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (< $Perm.No $k@178@01)))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(assert (Seq_equal
  ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@192@01)))))))))
  ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@176@01)))))))))))))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@192@01)))))))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@192@01))))))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@192@01)))))))))))))))
; [eval] tid > 0
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (not (> tid@172@01 0))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (> tid@172@01 0)))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; [then-branch: 81 | tid@172@01 > 0 | live]
; [else-branch: 81 | !(tid@172@01 > 0) | live]
(set-option :timeout 0)
(push) ; 3
; [then-branch: 81 | tid@172@01 > 0]
(assert (> tid@172@01 0))
; [eval] diz.demo__tmp[tid - 1]
(push) ; 4
(set-option :timeout 10)
(assert (not (< $Perm.No $k@194@01)))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; [eval] tid - 1
(set-option :timeout 0)
(push) ; 4
(assert (not (>= (- tid@172@01 1) 0)))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(push) ; 4
(assert (not (<
  (- tid@172@01 1)
  (Seq_length
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@192@01)))))))))))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(declare-const sm@195@01 $FVF<Ref__Integer_value>)
; Definitional axioms for singleton-SM's value
(assert (=
  ($FVF.lookup_Ref__Integer_value (as sm@195@01  $FVF<Ref__Integer_value>) (Seq_index
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@192@01)))))))))
    (- tid@172@01 1)))
  ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@192@01)))))))))))))))
(assert (<=
  $Perm.No
  (ite
    (=
      (Seq_index
        ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@192@01)))))))))
        (- tid@172@01 1))
      (Seq_index
        ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@192@01)))))))))
        (- tid@172@01 1)))
    $Perm.Write
    $Perm.No)))
(assert (<=
  (ite
    (=
      (Seq_index
        ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@192@01)))))))))
        (- tid@172@01 1))
      (Seq_index
        ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@192@01)))))))))
        (- tid@172@01 1)))
    $Perm.Write
    $Perm.No)
  $Perm.Write))
(assert (=>
  (=
    (Seq_index
      ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@192@01)))))))))
      (- tid@172@01 1))
    (Seq_index
      ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@192@01)))))))))
      (- tid@172@01 1)))
  (not
    (=
      (Seq_index
        ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@192@01)))))))))
        (- tid@172@01 1))
      $Ref.null))))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@192@01))))))))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@192@01)))))))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@192@01))))))))))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@192@01)))))))))))))
  $Snap.unit))
; [eval] gsize > 1
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@192@01)))))))))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@192@01))))))))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@192@01)))))))))))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@192@01))))))))))))))
  $Snap.unit))
; [eval] 0 < N
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@192@01))))))))))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@192@01)))))))))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@192@01))))))))))))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@192@01)))))))))))))))
  $Snap.unit))
; [eval] N < gsize
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@192@01)))))))))))))))
  $Snap.unit))
; [eval] 0 < tid && tid <= N ==> diz.demo__tmp[tid - 1].Ref__Integer_value == demo__bin(N, tid - 1)
; [eval] 0 < tid && tid <= N
; [eval] 0 < tid
(push) ; 4
; [then-branch: 82 | !(0 < tid@172@01) | live]
; [else-branch: 82 | 0 < tid@172@01 | live]
(push) ; 5
; [then-branch: 82 | !(0 < tid@172@01)]
(assert (not (< 0 tid@172@01)))
(pop) ; 5
(push) ; 5
; [else-branch: 82 | 0 < tid@172@01]
(assert (< 0 tid@172@01))
; [eval] tid <= N
(pop) ; 5
(pop) ; 4
; Joined path conditions
; Joined path conditions
(assert (or (< 0 tid@172@01) (not (< 0 tid@172@01))))
(push) ; 4
(push) ; 5
(set-option :timeout 10)
(assert (not (not (and (< 0 tid@172@01) (<= tid@172@01 N@175@01)))))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 5
(set-option :timeout 10)
(assert (not (and (< 0 tid@172@01) (<= tid@172@01 N@175@01))))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
; [then-branch: 83 | 0 < tid@172@01 && tid@172@01 <= N@175@01 | live]
; [else-branch: 83 | !(0 < tid@172@01 && tid@172@01 <= N@175@01) | live]
(set-option :timeout 0)
(push) ; 5
; [then-branch: 83 | 0 < tid@172@01 && tid@172@01 <= N@175@01]
(assert (and (< 0 tid@172@01) (<= tid@172@01 N@175@01)))
; [eval] diz.demo__tmp[tid - 1].Ref__Integer_value == demo__bin(N, tid - 1)
; [eval] diz.demo__tmp[tid - 1]
(push) ; 6
(set-option :timeout 10)
(assert (not (< $Perm.No $k@194@01)))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
; [eval] tid - 1
(set-option :timeout 0)
(push) ; 6
(assert (not (>= (- tid@172@01 1) 0)))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(push) ; 6
(assert (not (<
  (- tid@172@01 1)
  (Seq_length
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@192@01)))))))))))))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(push) ; 6
(assert (not (=
  (Seq_index
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@192@01)))))))))
    (- tid@172@01 1))
  (Seq_index
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@192@01)))))))))
    (- tid@172@01 1)))))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
; [eval] demo__bin(N, tid - 1)
; [eval] tid - 1
(push) ; 6
; [eval] N >= 0
(push) ; 7
(assert (not (>= N@175@01 0)))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(assert (>= N@175@01 0))
; [eval] 0 <= k
(push) ; 7
(assert (not (<= 0 (- tid@172@01 1))))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(assert (<= 0 (- tid@172@01 1)))
; [eval] k <= N
(push) ; 7
(assert (not (<= (- tid@172@01 1) N@175@01)))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(assert (<= (- tid@172@01 1) N@175@01))
(assert (demo__bin%precondition ($Snap.combine
  $Snap.unit
  ($Snap.combine $Snap.unit $Snap.unit)) N@175@01 (- tid@172@01 1)))
(pop) ; 6
; Joined path conditions
(assert (and
  (>= N@175@01 0)
  (<= 0 (- tid@172@01 1))
  (<= (- tid@172@01 1) N@175@01)
  (demo__bin%precondition ($Snap.combine
    $Snap.unit
    ($Snap.combine $Snap.unit $Snap.unit)) N@175@01 (- tid@172@01 1))))
(pop) ; 5
(push) ; 5
; [else-branch: 83 | !(0 < tid@172@01 && tid@172@01 <= N@175@01)]
(assert (not (and (< 0 tid@172@01) (<= tid@172@01 N@175@01))))
(pop) ; 5
(pop) ; 4
; Joined path conditions
(assert (=>
  (and (< 0 tid@172@01) (<= tid@172@01 N@175@01))
  (and
    (< 0 tid@172@01)
    (<= tid@172@01 N@175@01)
    (>= N@175@01 0)
    (<= 0 (- tid@172@01 1))
    (<= (- tid@172@01 1) N@175@01)
    (demo__bin%precondition ($Snap.combine
      $Snap.unit
      ($Snap.combine $Snap.unit $Snap.unit)) N@175@01 (- tid@172@01 1)))))
; Joined path conditions
(assert (or
  (not (and (< 0 tid@172@01) (<= tid@172@01 N@175@01)))
  (and (< 0 tid@172@01) (<= tid@172@01 N@175@01))))
(assert (=>
  (and (< 0 tid@172@01) (<= tid@172@01 N@175@01))
  (=
    ($FVF.lookup_Ref__Integer_value (as sm@195@01  $FVF<Ref__Integer_value>) (Seq_index
      ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@192@01)))))))))
      (- tid@172@01 1)))
    (demo__bin ($Snap.combine $Snap.unit ($Snap.combine $Snap.unit $Snap.unit)) N@175@01 (-
      tid@172@01
      1)))))
(pop) ; 3
(push) ; 3
; [else-branch: 81 | !(tid@172@01 > 0)]
(assert (not (> tid@172@01 0)))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@192@01))))))))))))
  $Snap.unit))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@192@01))))))))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@192@01)))))))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@192@01))))))))))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@192@01)))))))))))))
  $Snap.unit))
; [eval] gsize > 1
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@192@01)))))))))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@192@01))))))))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@192@01)))))))))))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@192@01))))))))))))))
  $Snap.unit))
; [eval] 0 < N
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@192@01))))))))))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@192@01)))))))))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@192@01))))))))))))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@192@01)))))))))))))))
  $Snap.unit))
; [eval] N < gsize
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@192@01)))))))))))))))
  $Snap.unit))
; [eval] 0 < tid && tid <= N ==> diz.demo__tmp[tid - 1].Ref__Integer_value == demo__bin(N, tid - 1)
; [eval] 0 < tid && tid <= N
; [eval] 0 < tid
(push) ; 4
; [then-branch: 84 | !(0 < tid@172@01) | live]
; [else-branch: 84 | 0 < tid@172@01 | live]
(push) ; 5
; [then-branch: 84 | !(0 < tid@172@01)]
(assert (not (< 0 tid@172@01)))
(pop) ; 5
(push) ; 5
; [else-branch: 84 | 0 < tid@172@01]
(assert (< 0 tid@172@01))
; [eval] tid <= N
(pop) ; 5
(pop) ; 4
; Joined path conditions
; Joined path conditions
(assert (or (< 0 tid@172@01) (not (< 0 tid@172@01))))
(push) ; 4
(push) ; 5
(set-option :timeout 10)
(assert (not (not (and (< 0 tid@172@01) (<= tid@172@01 N@175@01)))))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
; [then-branch: 85 | 0 < tid@172@01 && tid@172@01 <= N@175@01 | dead]
; [else-branch: 85 | !(0 < tid@172@01 && tid@172@01 <= N@175@01) | live]
(set-option :timeout 0)
(push) ; 5
; [else-branch: 85 | !(0 < tid@172@01 && tid@172@01 <= N@175@01)]
(assert (not (and (< 0 tid@172@01) (<= tid@172@01 N@175@01))))
(pop) ; 5
(pop) ; 4
; Joined path conditions
(assert (not (and (< 0 tid@172@01) (<= tid@172@01 N@175@01))))
(pop) ; 3
(pop) ; 2
(push) ; 2
; [eval] 0 <= tid
; [eval] tid < tcount
; [eval] tid == lid
; [eval] tcount == gsize
; [eval] gid == 0
(declare-const $k@196@01 $Perm)
(assert ($Perm.isReadVar $k@196@01))
(push) ; 3
(set-option :timeout 10)
(assert (not (not (= $k@177@01 $Perm.No))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(assert (< $k@196@01 $k@177@01))
(assert (<= $Perm.No (- $k@177@01 $k@196@01)))
(assert (<= (- $k@177@01 $k@196@01) $Perm.Write))
(assert (=> (< $Perm.No (- $k@177@01 $k@196@01)) (not (= diz@168@01 $Ref.null))))
; [eval] |diz.demo__ar| == gsize
; [eval] |diz.demo__ar|
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (< $Perm.No $k@177@01)))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(declare-const $k@197@01 $Perm)
(assert ($Perm.isReadVar $k@197@01))
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (not (= $k@178@01 $Perm.No))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(assert (< $k@197@01 $k@178@01))
(assert (<= $Perm.No (- $k@178@01 $k@197@01)))
(assert (<= (- $k@178@01 $k@197@01) $Perm.Write))
(assert (=> (< $Perm.No (- $k@178@01 $k@197@01)) (not (= diz@168@01 $Ref.null))))
; [eval] |diz.demo__tmp| == gsize
; [eval] |diz.demo__tmp|
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (< $Perm.No $k@178@01)))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; [eval] diz.demo__ar == old(diz.demo__ar)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (< $Perm.No $k@177@01)))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; [eval] old(diz.demo__ar)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (< $Perm.No $k@177@01)))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; [eval] diz.demo__tmp == old(diz.demo__tmp)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (< $Perm.No $k@178@01)))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; [eval] old(diz.demo__tmp)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (< $Perm.No $k@178@01)))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; [eval] tid > 0
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (not (> tid@172@01 0))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (> tid@172@01 0)))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; [then-branch: 86 | tid@172@01 > 0 | live]
; [else-branch: 86 | !(tid@172@01 > 0) | live]
(set-option :timeout 0)
(push) ; 3
; [then-branch: 86 | tid@172@01 > 0]
(assert (> tid@172@01 0))
; [eval] diz.demo__tmp[tid - 1]
(push) ; 4
(set-option :timeout 10)
(assert (not (< $Perm.No $k@178@01)))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; [eval] tid - 1
(set-option :timeout 0)
(push) ; 4
(assert (not (>= (- tid@172@01 1) 0)))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(push) ; 4
(assert (not (<
  (- tid@172@01 1)
  (Seq_length
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@176@01)))))))))))))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; Precomputing data for removing quantified permissions
(define-fun pTaken@198@01 ((r $Ref)) $Perm
  (ite
    (=
      r
      (Seq_index
        ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@176@01)))))))))))
        (- tid@172@01 1)))
    ($Perm.min
      (ite
        (and
          (img@188@01 r)
          (and (<= 0 (inv@187@01 r)) (< (inv@187@01 r) gsize@171@01)))
        $Perm.Write
        $Perm.No)
      $Perm.Write)
    $Perm.No))
(define-fun pTaken@199@01 ((r $Ref)) $Perm
  (ite
    (=
      r
      (Seq_index
        ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@176@01)))))))))))
        (- tid@172@01 1)))
    ($Perm.min
      (ite
        (and
          (img@185@01 r)
          (and (<= 0 (inv@184@01 r)) (< (inv@184@01 r) gsize@171@01)))
        $Perm.Write
        $Perm.No)
      (- $Perm.Write (pTaken@198@01 r)))
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
          (img@188@01 r)
          (and (<= 0 (inv@187@01 r)) (< (inv@187@01 r) gsize@171@01)))
        $Perm.Write
        $Perm.No)
      (pTaken@198@01 r))
    $Perm.No)
  
  :qid |quant-u-8506|))))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not (forall ((r $Ref)) (!
  (= (pTaken@198@01 r) $Perm.No)
  
  :qid |quant-u-8507|))))
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
        ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@176@01)))))))))))
        (- tid@172@01 1)))
    (= (- $Perm.Write (pTaken@198@01 r)) $Perm.No))
  
  :qid |quant-u-8508|))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; Final check if taken enough permissions
; Done removing quantified permissions
; [eval] gsize > 1
; [eval] 0 < N
; [eval] N < gsize
; [eval] 0 < tid && tid <= N ==> diz.demo__tmp[tid - 1].Ref__Integer_value == demo__bin(N, tid - 1)
; [eval] 0 < tid && tid <= N
; [eval] 0 < tid
(set-option :timeout 0)
(push) ; 4
; [then-branch: 87 | !(0 < tid@172@01) | live]
; [else-branch: 87 | 0 < tid@172@01 | live]
(push) ; 5
; [then-branch: 87 | !(0 < tid@172@01)]
(assert (not (< 0 tid@172@01)))
(pop) ; 5
(push) ; 5
; [else-branch: 87 | 0 < tid@172@01]
(assert (< 0 tid@172@01))
; [eval] tid <= N
(pop) ; 5
(pop) ; 4
; Joined path conditions
; Joined path conditions
(assert (or (< 0 tid@172@01) (not (< 0 tid@172@01))))
(push) ; 4
(push) ; 5
(set-option :timeout 10)
(assert (not (not (and (< 0 tid@172@01) (<= tid@172@01 N@175@01)))))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 5
(set-option :timeout 10)
(assert (not (and (< 0 tid@172@01) (<= tid@172@01 N@175@01))))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
; [then-branch: 88 | 0 < tid@172@01 && tid@172@01 <= N@175@01 | live]
; [else-branch: 88 | !(0 < tid@172@01 && tid@172@01 <= N@175@01) | live]
(set-option :timeout 0)
(push) ; 5
; [then-branch: 88 | 0 < tid@172@01 && tid@172@01 <= N@175@01]
(assert (and (< 0 tid@172@01) (<= tid@172@01 N@175@01)))
; [eval] diz.demo__tmp[tid - 1].Ref__Integer_value == demo__bin(N, tid - 1)
; [eval] diz.demo__tmp[tid - 1]
(push) ; 6
(set-option :timeout 10)
(assert (not (< $Perm.No $k@178@01)))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
; [eval] tid - 1
(set-option :timeout 0)
(push) ; 6
(assert (not (>= (- tid@172@01 1) 0)))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(push) ; 6
(assert (not (<
  (- tid@172@01 1)
  (Seq_length
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@176@01)))))))))))))))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(assert (and
  (forall ((r $Ref)) (!
    (=>
      (and
        (img@185@01 r)
        (and (<= 0 (inv@184@01 r)) (< (inv@184@01 r) gsize@171@01)))
      (=
        ($FVF.lookup_Ref__Integer_value (as sm@190@01  $FVF<Ref__Integer_value>) r)
        ($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@176@01))))))))))))))) r)))
    :pattern (($FVF.lookup_Ref__Integer_value (as sm@190@01  $FVF<Ref__Integer_value>) r))
    :pattern (($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@176@01))))))))))))))) r))
    :qid |qp.fvfValDef0|))
  (forall ((r $Ref)) (!
    (=>
      (and
        (img@188@01 r)
        (and (<= 0 (inv@187@01 r)) (< (inv@187@01 r) gsize@171@01)))
      (=
        ($FVF.lookup_Ref__Integer_value (as sm@190@01  $FVF<Ref__Integer_value>) r)
        ($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@176@01)))))))))))))))) r)))
    :pattern (($FVF.lookup_Ref__Integer_value (as sm@190@01  $FVF<Ref__Integer_value>) r))
    :pattern (($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@176@01)))))))))))))))) r))
    :qid |qp.fvfValDef1|))))
(push) ; 6
(assert (not (<
  $Perm.No
  (+
    (ite
      (and
        (img@185@01 (Seq_index
          ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@176@01)))))))))))
          (- tid@172@01 1)))
        (and
          (<=
            0
            (inv@184@01 (Seq_index
              ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@176@01)))))))))))
              (- tid@172@01 1))))
          (<
            (inv@184@01 (Seq_index
              ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@176@01)))))))))))
              (- tid@172@01 1)))
            gsize@171@01)))
      $Perm.Write
      $Perm.No)
    (ite
      (and
        (img@188@01 (Seq_index
          ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@176@01)))))))))))
          (- tid@172@01 1)))
        (and
          (<=
            0
            (inv@187@01 (Seq_index
              ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@176@01)))))))))))
              (- tid@172@01 1))))
          (<
            (inv@187@01 (Seq_index
              ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@176@01)))))))))))
              (- tid@172@01 1)))
            gsize@171@01)))
      $Perm.Write
      $Perm.No)))))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
; [eval] demo__bin(N, tid - 1)
; [eval] tid - 1
(push) ; 6
; [eval] N >= 0
(push) ; 7
(assert (not (>= N@175@01 0)))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(assert (>= N@175@01 0))
; [eval] 0 <= k
(push) ; 7
(assert (not (<= 0 (- tid@172@01 1))))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(assert (<= 0 (- tid@172@01 1)))
; [eval] k <= N
(push) ; 7
(assert (not (<= (- tid@172@01 1) N@175@01)))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(assert (<= (- tid@172@01 1) N@175@01))
(assert (demo__bin%precondition ($Snap.combine
  $Snap.unit
  ($Snap.combine $Snap.unit $Snap.unit)) N@175@01 (- tid@172@01 1)))
(pop) ; 6
; Joined path conditions
(assert (and
  (>= N@175@01 0)
  (<= 0 (- tid@172@01 1))
  (<= (- tid@172@01 1) N@175@01)
  (demo__bin%precondition ($Snap.combine
    $Snap.unit
    ($Snap.combine $Snap.unit $Snap.unit)) N@175@01 (- tid@172@01 1))))
(pop) ; 5
(push) ; 5
; [else-branch: 88 | !(0 < tid@172@01 && tid@172@01 <= N@175@01)]
(assert (not (and (< 0 tid@172@01) (<= tid@172@01 N@175@01))))
(pop) ; 5
(pop) ; 4
; Joined path conditions
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@185@01 r)
      (and (<= 0 (inv@184@01 r)) (< (inv@184@01 r) gsize@171@01)))
    (=
      ($FVF.lookup_Ref__Integer_value (as sm@190@01  $FVF<Ref__Integer_value>) r)
      ($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@176@01))))))))))))))) r)))
  :pattern (($FVF.lookup_Ref__Integer_value (as sm@190@01  $FVF<Ref__Integer_value>) r))
  :pattern (($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@176@01))))))))))))))) r))
  :qid |qp.fvfValDef0|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@188@01 r)
      (and (<= 0 (inv@187@01 r)) (< (inv@187@01 r) gsize@171@01)))
    (=
      ($FVF.lookup_Ref__Integer_value (as sm@190@01  $FVF<Ref__Integer_value>) r)
      ($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@176@01)))))))))))))))) r)))
  :pattern (($FVF.lookup_Ref__Integer_value (as sm@190@01  $FVF<Ref__Integer_value>) r))
  :pattern (($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@176@01)))))))))))))))) r))
  :qid |qp.fvfValDef1|)))
(assert (=>
  (and (< 0 tid@172@01) (<= tid@172@01 N@175@01))
  (and
    (< 0 tid@172@01)
    (<= tid@172@01 N@175@01)
    (>= N@175@01 0)
    (<= 0 (- tid@172@01 1))
    (<= (- tid@172@01 1) N@175@01)
    (demo__bin%precondition ($Snap.combine
      $Snap.unit
      ($Snap.combine $Snap.unit $Snap.unit)) N@175@01 (- tid@172@01 1)))))
; Joined path conditions
(assert (or
  (not (and (< 0 tid@172@01) (<= tid@172@01 N@175@01)))
  (and (< 0 tid@172@01) (<= tid@172@01 N@175@01))))
(push) ; 4
(assert (not (=>
  (and (< 0 tid@172@01) (<= tid@172@01 N@175@01))
  (=
    ($FVF.lookup_Ref__Integer_value (as sm@190@01  $FVF<Ref__Integer_value>) (Seq_index
      ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@176@01)))))))))))
      (- tid@172@01 1)))
    (demo__bin ($Snap.combine $Snap.unit ($Snap.combine $Snap.unit $Snap.unit)) N@175@01 (-
      tid@172@01
      1))))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(assert (=>
  (and (< 0 tid@172@01) (<= tid@172@01 N@175@01))
  (=
    ($FVF.lookup_Ref__Integer_value (as sm@190@01  $FVF<Ref__Integer_value>) (Seq_index
      ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@176@01)))))))))))
      (- tid@172@01 1)))
    (demo__bin ($Snap.combine $Snap.unit ($Snap.combine $Snap.unit $Snap.unit)) N@175@01 (-
      tid@172@01
      1)))))
(pop) ; 3
(push) ; 3
; [else-branch: 86 | !(tid@172@01 > 0)]
(assert (not (> tid@172@01 0)))
; [eval] gsize > 1
; [eval] 0 < N
; [eval] N < gsize
; [eval] 0 < tid && tid <= N ==> diz.demo__tmp[tid - 1].Ref__Integer_value == demo__bin(N, tid - 1)
; [eval] 0 < tid && tid <= N
; [eval] 0 < tid
(push) ; 4
; [then-branch: 89 | !(0 < tid@172@01) | live]
; [else-branch: 89 | 0 < tid@172@01 | live]
(push) ; 5
; [then-branch: 89 | !(0 < tid@172@01)]
(assert (not (< 0 tid@172@01)))
(pop) ; 5
(push) ; 5
; [else-branch: 89 | 0 < tid@172@01]
(assert (< 0 tid@172@01))
; [eval] tid <= N
(pop) ; 5
(pop) ; 4
; Joined path conditions
; Joined path conditions
(assert (or (< 0 tid@172@01) (not (< 0 tid@172@01))))
(push) ; 4
(push) ; 5
(set-option :timeout 10)
(assert (not (not (and (< 0 tid@172@01) (<= tid@172@01 N@175@01)))))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
; [then-branch: 90 | 0 < tid@172@01 && tid@172@01 <= N@175@01 | dead]
; [else-branch: 90 | !(0 < tid@172@01 && tid@172@01 <= N@175@01) | live]
(set-option :timeout 0)
(push) ; 5
; [else-branch: 90 | !(0 < tid@172@01 && tid@172@01 <= N@175@01)]
(assert (not (and (< 0 tid@172@01) (<= tid@172@01 N@175@01))))
(pop) ; 5
(pop) ; 4
; Joined path conditions
(assert (not (and (< 0 tid@172@01) (<= tid@172@01 N@175@01))))
(pop) ; 3
(pop) ; 2
(pop) ; 1
; ---------- demo__main_post_check_2 ----------
(declare-const diz@200@01 $Ref)
(declare-const current_thread_id@201@01 Int)
(declare-const tcount@202@01 Int)
(declare-const gsize@203@01 Int)
(declare-const tid@204@01 Int)
(declare-const gid@205@01 Int)
(declare-const lid@206@01 Int)
(declare-const N@207@01 Int)
(declare-const diz@208@01 $Ref)
(declare-const current_thread_id@209@01 Int)
(declare-const tcount@210@01 Int)
(declare-const gsize@211@01 Int)
(declare-const tid@212@01 Int)
(declare-const gid@213@01 Int)
(declare-const lid@214@01 Int)
(declare-const N@215@01 Int)
(push) ; 1
(declare-const $t@216@01 $Snap)
(assert (= $t@216@01 ($Snap.combine ($Snap.first $t@216@01) ($Snap.second $t@216@01))))
(assert (= ($Snap.first $t@216@01) $Snap.unit))
; [eval] diz != null
(assert (not (= diz@208@01 $Ref.null)))
(assert (=
  ($Snap.second $t@216@01)
  ($Snap.combine
    ($Snap.first ($Snap.second $t@216@01))
    ($Snap.second ($Snap.second $t@216@01)))))
(assert (= ($Snap.first ($Snap.second $t@216@01)) $Snap.unit))
; [eval] current_thread_id >= 0
(assert (>= current_thread_id@209@01 0))
(assert (=
  ($Snap.second ($Snap.second $t@216@01))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second $t@216@01)))
    ($Snap.second ($Snap.second ($Snap.second $t@216@01))))))
(assert (= ($Snap.first ($Snap.second ($Snap.second $t@216@01))) $Snap.unit))
; [eval] 0 <= tid
(assert (<= 0 tid@212@01))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second $t@216@01)))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@216@01))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@216@01)))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@216@01))))
  $Snap.unit))
; [eval] tid < tcount
(assert (< tid@212@01 tcount@210@01))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@216@01))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@216@01)))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@216@01))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@216@01)))))
  $Snap.unit))
; [eval] tid == lid
(assert (= tid@212@01 lid@214@01))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@216@01)))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@216@01))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@216@01)))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@216@01))))))
  $Snap.unit))
; [eval] tcount == gsize
(assert (= tcount@210@01 gsize@211@01))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@216@01))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@216@01)))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@216@01))))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@216@01)))))))
  $Snap.unit))
; [eval] gid == 0
(assert (= gid@213@01 0))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@216@01)))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@216@01))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@216@01)))))))))))
(declare-const $k@217@01 $Perm)
(assert ($Perm.isReadVar $k@217@01))
(assert (<= $Perm.No $k@217@01))
(assert (<= $k@217@01 $Perm.Write))
(assert (=> (< $Perm.No $k@217@01) (not (= diz@208@01 $Ref.null))))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@216@01))))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@216@01)))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@216@01))))))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@216@01)))))))))
  $Snap.unit))
; [eval] |diz.demo__ar| == gsize
; [eval] |diz.demo__ar|
(push) ; 2
(set-option :timeout 10)
(assert (not (< $Perm.No $k@217@01)))
(check-sat)
; unsat
(pop) ; 2
; 0.00s
; (get-info :all-statistics)
(assert (=
  (Seq_length
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@216@01))))))))))
  gsize@211@01))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@216@01)))))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@216@01))))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@216@01)))))))))))))
(declare-const $k@218@01 $Perm)
(assert ($Perm.isReadVar $k@218@01))
(assert (<= $Perm.No $k@218@01))
(assert (<= $k@218@01 $Perm.Write))
(assert (=> (< $Perm.No $k@218@01) (not (= diz@208@01 $Ref.null))))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@216@01))))))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@216@01)))))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@216@01))))))))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@216@01)))))))))))
  $Snap.unit))
; [eval] |diz.demo__tmp| == gsize
; [eval] |diz.demo__tmp|
(set-option :timeout 0)
(push) ; 2
(set-option :timeout 10)
(assert (not (< $Perm.No $k@218@01)))
(check-sat)
; unsat
(pop) ; 2
; 0.00s
; (get-info :all-statistics)
(assert (=
  (Seq_length
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@216@01))))))))))))
  gsize@211@01))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@216@01)))))))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@216@01))))))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@216@01)))))))))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@216@01))))))))))))
  $Snap.unit))
; [eval] (forall i: Int, j: Int :: { diz.demo__ar[i], diz.demo__ar[j] } i >= 0 && (i < |diz.demo__ar| && (j >= 0 && (j < |diz.demo__ar| && i != j))) ==> diz.demo__ar[i] != diz.demo__ar[j])
(declare-const i@219@01 Int)
(declare-const j@220@01 Int)
(set-option :timeout 0)
(push) ; 2
; [eval] i >= 0 && (i < |diz.demo__ar| && (j >= 0 && (j < |diz.demo__ar| && i != j))) ==> diz.demo__ar[i] != diz.demo__ar[j]
; [eval] i >= 0 && (i < |diz.demo__ar| && (j >= 0 && (j < |diz.demo__ar| && i != j)))
; [eval] i >= 0
(push) ; 3
; [then-branch: 91 | !(i@219@01 >= 0) | live]
; [else-branch: 91 | i@219@01 >= 0 | live]
(push) ; 4
; [then-branch: 91 | !(i@219@01 >= 0)]
(assert (not (>= i@219@01 0)))
(pop) ; 4
(push) ; 4
; [else-branch: 91 | i@219@01 >= 0]
(assert (>= i@219@01 0))
; [eval] i < |diz.demo__ar|
; [eval] |diz.demo__ar|
(push) ; 5
(set-option :timeout 10)
(assert (not (< $Perm.No $k@217@01)))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 5
; [then-branch: 92 | !(i@219@01 < |First:(Second:(Second:(Second:(Second:(Second:(Second:(Second:($t@216@01))))))))|) | live]
; [else-branch: 92 | i@219@01 < |First:(Second:(Second:(Second:(Second:(Second:(Second:(Second:($t@216@01))))))))| | live]
(push) ; 6
; [then-branch: 92 | !(i@219@01 < |First:(Second:(Second:(Second:(Second:(Second:(Second:(Second:($t@216@01))))))))|)]
(assert (not
  (<
    i@219@01
    (Seq_length
      ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@216@01)))))))))))))
(pop) ; 6
(push) ; 6
; [else-branch: 92 | i@219@01 < |First:(Second:(Second:(Second:(Second:(Second:(Second:(Second:($t@216@01))))))))|]
(assert (<
  i@219@01
  (Seq_length
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@216@01))))))))))))
; [eval] j >= 0
(push) ; 7
; [then-branch: 93 | !(j@220@01 >= 0) | live]
; [else-branch: 93 | j@220@01 >= 0 | live]
(push) ; 8
; [then-branch: 93 | !(j@220@01 >= 0)]
(assert (not (>= j@220@01 0)))
(pop) ; 8
(push) ; 8
; [else-branch: 93 | j@220@01 >= 0]
(assert (>= j@220@01 0))
; [eval] j < |diz.demo__ar|
; [eval] |diz.demo__ar|
(push) ; 9
(set-option :timeout 10)
(assert (not (< $Perm.No $k@217@01)))
(check-sat)
; unsat
(pop) ; 9
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 9
; [then-branch: 94 | !(j@220@01 < |First:(Second:(Second:(Second:(Second:(Second:(Second:(Second:($t@216@01))))))))|) | live]
; [else-branch: 94 | j@220@01 < |First:(Second:(Second:(Second:(Second:(Second:(Second:(Second:($t@216@01))))))))| | live]
(push) ; 10
; [then-branch: 94 | !(j@220@01 < |First:(Second:(Second:(Second:(Second:(Second:(Second:(Second:($t@216@01))))))))|)]
(assert (not
  (<
    j@220@01
    (Seq_length
      ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@216@01)))))))))))))
(pop) ; 10
(push) ; 10
; [else-branch: 94 | j@220@01 < |First:(Second:(Second:(Second:(Second:(Second:(Second:(Second:($t@216@01))))))))|]
(assert (<
  j@220@01
  (Seq_length
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@216@01))))))))))))
; [eval] i != j
(pop) ; 10
(pop) ; 9
; Joined path conditions
; Joined path conditions
(assert (or
  (<
    j@220@01
    (Seq_length
      ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@216@01)))))))))))
  (not
    (<
      j@220@01
      (Seq_length
        ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@216@01))))))))))))))
(pop) ; 8
(pop) ; 7
; Joined path conditions
; Joined path conditions
(assert (=>
  (>= j@220@01 0)
  (and
    (>= j@220@01 0)
    (or
      (<
        j@220@01
        (Seq_length
          ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@216@01)))))))))))
      (not
        (<
          j@220@01
          (Seq_length
            ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@216@01))))))))))))))))
(assert (or (>= j@220@01 0) (not (>= j@220@01 0))))
(pop) ; 6
(pop) ; 5
; Joined path conditions
; Joined path conditions
(assert (=>
  (<
    i@219@01
    (Seq_length
      ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@216@01)))))))))))
  (and
    (<
      i@219@01
      (Seq_length
        ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@216@01)))))))))))
    (=>
      (>= j@220@01 0)
      (and
        (>= j@220@01 0)
        (or
          (<
            j@220@01
            (Seq_length
              ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@216@01)))))))))))
          (not
            (<
              j@220@01
              (Seq_length
                ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@216@01)))))))))))))))
    (or (>= j@220@01 0) (not (>= j@220@01 0))))))
(assert (or
  (<
    i@219@01
    (Seq_length
      ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@216@01)))))))))))
  (not
    (<
      i@219@01
      (Seq_length
        ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@216@01))))))))))))))
(pop) ; 4
(pop) ; 3
; Joined path conditions
; Joined path conditions
(assert (=>
  (>= i@219@01 0)
  (and
    (>= i@219@01 0)
    (=>
      (<
        i@219@01
        (Seq_length
          ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@216@01)))))))))))
      (and
        (<
          i@219@01
          (Seq_length
            ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@216@01)))))))))))
        (=>
          (>= j@220@01 0)
          (and
            (>= j@220@01 0)
            (or
              (<
                j@220@01
                (Seq_length
                  ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@216@01)))))))))))
              (not
                (<
                  j@220@01
                  (Seq_length
                    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@216@01)))))))))))))))
        (or (>= j@220@01 0) (not (>= j@220@01 0)))))
    (or
      (<
        i@219@01
        (Seq_length
          ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@216@01)))))))))))
      (not
        (<
          i@219@01
          (Seq_length
            ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@216@01))))))))))))))))
(assert (or (>= i@219@01 0) (not (>= i@219@01 0))))
(push) ; 3
; [then-branch: 95 | i@219@01 >= 0 && i@219@01 < |First:(Second:(Second:(Second:(Second:(Second:(Second:(Second:($t@216@01))))))))| && j@220@01 >= 0 && j@220@01 < |First:(Second:(Second:(Second:(Second:(Second:(Second:(Second:($t@216@01))))))))| && i@219@01 != j@220@01 | live]
; [else-branch: 95 | !(i@219@01 >= 0 && i@219@01 < |First:(Second:(Second:(Second:(Second:(Second:(Second:(Second:($t@216@01))))))))| && j@220@01 >= 0 && j@220@01 < |First:(Second:(Second:(Second:(Second:(Second:(Second:(Second:($t@216@01))))))))| && i@219@01 != j@220@01) | live]
(push) ; 4
; [then-branch: 95 | i@219@01 >= 0 && i@219@01 < |First:(Second:(Second:(Second:(Second:(Second:(Second:(Second:($t@216@01))))))))| && j@220@01 >= 0 && j@220@01 < |First:(Second:(Second:(Second:(Second:(Second:(Second:(Second:($t@216@01))))))))| && i@219@01 != j@220@01]
(assert (and
  (>= i@219@01 0)
  (and
    (<
      i@219@01
      (Seq_length
        ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@216@01)))))))))))
    (and
      (>= j@220@01 0)
      (and
        (<
          j@220@01
          (Seq_length
            ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@216@01)))))))))))
        (not (= i@219@01 j@220@01)))))))
; [eval] diz.demo__ar[i] != diz.demo__ar[j]
; [eval] diz.demo__ar[i]
(push) ; 5
(set-option :timeout 10)
(assert (not (< $Perm.No $k@217@01)))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
; [eval] diz.demo__ar[j]
(set-option :timeout 0)
(push) ; 5
(set-option :timeout 10)
(assert (not (< $Perm.No $k@217@01)))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(pop) ; 4
(set-option :timeout 0)
(push) ; 4
; [else-branch: 95 | !(i@219@01 >= 0 && i@219@01 < |First:(Second:(Second:(Second:(Second:(Second:(Second:(Second:($t@216@01))))))))| && j@220@01 >= 0 && j@220@01 < |First:(Second:(Second:(Second:(Second:(Second:(Second:(Second:($t@216@01))))))))| && i@219@01 != j@220@01)]
(assert (not
  (and
    (>= i@219@01 0)
    (and
      (<
        i@219@01
        (Seq_length
          ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@216@01)))))))))))
      (and
        (>= j@220@01 0)
        (and
          (<
            j@220@01
            (Seq_length
              ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@216@01)))))))))))
          (not (= i@219@01 j@220@01))))))))
(pop) ; 4
(pop) ; 3
; Joined path conditions
(assert (=>
  (and
    (>= i@219@01 0)
    (and
      (<
        i@219@01
        (Seq_length
          ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@216@01)))))))))))
      (and
        (>= j@220@01 0)
        (and
          (<
            j@220@01
            (Seq_length
              ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@216@01)))))))))))
          (not (= i@219@01 j@220@01))))))
  (and
    (>= i@219@01 0)
    (<
      i@219@01
      (Seq_length
        ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@216@01)))))))))))
    (>= j@220@01 0)
    (<
      j@220@01
      (Seq_length
        ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@216@01)))))))))))
    (not (= i@219@01 j@220@01)))))
; Joined path conditions
(assert (or
  (not
    (and
      (>= i@219@01 0)
      (and
        (<
          i@219@01
          (Seq_length
            ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@216@01)))))))))))
        (and
          (>= j@220@01 0)
          (and
            (<
              j@220@01
              (Seq_length
                ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@216@01)))))))))))
            (not (= i@219@01 j@220@01)))))))
  (and
    (>= i@219@01 0)
    (and
      (<
        i@219@01
        (Seq_length
          ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@216@01)))))))))))
      (and
        (>= j@220@01 0)
        (and
          (<
            j@220@01
            (Seq_length
              ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@216@01)))))))))))
          (not (= i@219@01 j@220@01))))))))
(pop) ; 2
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall ((i@219@01 Int) (j@220@01 Int)) (!
  (and
    (=>
      (>= i@219@01 0)
      (and
        (>= i@219@01 0)
        (=>
          (<
            i@219@01
            (Seq_length
              ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@216@01)))))))))))
          (and
            (<
              i@219@01
              (Seq_length
                ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@216@01)))))))))))
            (=>
              (>= j@220@01 0)
              (and
                (>= j@220@01 0)
                (or
                  (<
                    j@220@01
                    (Seq_length
                      ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@216@01)))))))))))
                  (not
                    (<
                      j@220@01
                      (Seq_length
                        ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@216@01)))))))))))))))
            (or (>= j@220@01 0) (not (>= j@220@01 0)))))
        (or
          (<
            i@219@01
            (Seq_length
              ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@216@01)))))))))))
          (not
            (<
              i@219@01
              (Seq_length
                ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@216@01)))))))))))))))
    (or (>= i@219@01 0) (not (>= i@219@01 0)))
    (=>
      (and
        (>= i@219@01 0)
        (and
          (<
            i@219@01
            (Seq_length
              ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@216@01)))))))))))
          (and
            (>= j@220@01 0)
            (and
              (<
                j@220@01
                (Seq_length
                  ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@216@01)))))))))))
              (not (= i@219@01 j@220@01))))))
      (and
        (>= i@219@01 0)
        (<
          i@219@01
          (Seq_length
            ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@216@01)))))))))))
        (>= j@220@01 0)
        (<
          j@220@01
          (Seq_length
            ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@216@01)))))))))))
        (not (= i@219@01 j@220@01))))
    (or
      (not
        (and
          (>= i@219@01 0)
          (and
            (<
              i@219@01
              (Seq_length
                ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@216@01)))))))))))
            (and
              (>= j@220@01 0)
              (and
                (<
                  j@220@01
                  (Seq_length
                    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@216@01)))))))))))
                (not (= i@219@01 j@220@01)))))))
      (and
        (>= i@219@01 0)
        (and
          (<
            i@219@01
            (Seq_length
              ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@216@01)))))))))))
          (and
            (>= j@220@01 0)
            (and
              (<
                j@220@01
                (Seq_length
                  ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@216@01)))))))))))
              (not (= i@219@01 j@220@01))))))))
  :pattern ((Seq_index
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@216@01)))))))))
    i@219@01) (Seq_index
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@216@01)))))))))
    j@220@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/third_party/test_binomial_noauto.vpr@224@12@224@144-aux|)))
(assert (forall ((i@219@01 Int) (j@220@01 Int)) (!
  (=>
    (and
      (>= i@219@01 0)
      (and
        (<
          i@219@01
          (Seq_length
            ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@216@01)))))))))))
        (and
          (>= j@220@01 0)
          (and
            (<
              j@220@01
              (Seq_length
                ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@216@01)))))))))))
            (not (= i@219@01 j@220@01))))))
    (not
      (=
        (Seq_index
          ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@216@01)))))))))
          i@219@01)
        (Seq_index
          ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@216@01)))))))))
          j@220@01))))
  :pattern ((Seq_index
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@216@01)))))))))
    i@219@01) (Seq_index
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@216@01)))))))))
    j@220@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/third_party/test_binomial_noauto.vpr@224@12@224@144|)))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@216@01))))))))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@216@01)))))))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@216@01))))))))))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@216@01)))))))))))))
  $Snap.unit))
; [eval] (forall i: Int, j: Int :: { diz.demo__tmp[i], diz.demo__tmp[j] } i >= 0 && (i < |diz.demo__tmp| && (j >= 0 && (j < |diz.demo__tmp| && i != j))) ==> diz.demo__tmp[i] != diz.demo__tmp[j])
(declare-const i@221@01 Int)
(declare-const j@222@01 Int)
(push) ; 2
; [eval] i >= 0 && (i < |diz.demo__tmp| && (j >= 0 && (j < |diz.demo__tmp| && i != j))) ==> diz.demo__tmp[i] != diz.demo__tmp[j]
; [eval] i >= 0 && (i < |diz.demo__tmp| && (j >= 0 && (j < |diz.demo__tmp| && i != j)))
; [eval] i >= 0
(push) ; 3
; [then-branch: 96 | !(i@221@01 >= 0) | live]
; [else-branch: 96 | i@221@01 >= 0 | live]
(push) ; 4
; [then-branch: 96 | !(i@221@01 >= 0)]
(assert (not (>= i@221@01 0)))
(pop) ; 4
(push) ; 4
; [else-branch: 96 | i@221@01 >= 0]
(assert (>= i@221@01 0))
; [eval] i < |diz.demo__tmp|
; [eval] |diz.demo__tmp|
(push) ; 5
(set-option :timeout 10)
(assert (not (< $Perm.No $k@218@01)))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 5
; [then-branch: 97 | !(i@221@01 < |First:(Second:(Second:(Second:(Second:(Second:(Second:(Second:(Second:(Second:($t@216@01))))))))))|) | live]
; [else-branch: 97 | i@221@01 < |First:(Second:(Second:(Second:(Second:(Second:(Second:(Second:(Second:(Second:($t@216@01))))))))))| | live]
(push) ; 6
; [then-branch: 97 | !(i@221@01 < |First:(Second:(Second:(Second:(Second:(Second:(Second:(Second:(Second:(Second:($t@216@01))))))))))|)]
(assert (not
  (<
    i@221@01
    (Seq_length
      ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@216@01)))))))))))))))
(pop) ; 6
(push) ; 6
; [else-branch: 97 | i@221@01 < |First:(Second:(Second:(Second:(Second:(Second:(Second:(Second:(Second:(Second:($t@216@01))))))))))|]
(assert (<
  i@221@01
  (Seq_length
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@216@01))))))))))))))
; [eval] j >= 0
(push) ; 7
; [then-branch: 98 | !(j@222@01 >= 0) | live]
; [else-branch: 98 | j@222@01 >= 0 | live]
(push) ; 8
; [then-branch: 98 | !(j@222@01 >= 0)]
(assert (not (>= j@222@01 0)))
(pop) ; 8
(push) ; 8
; [else-branch: 98 | j@222@01 >= 0]
(assert (>= j@222@01 0))
; [eval] j < |diz.demo__tmp|
; [eval] |diz.demo__tmp|
(push) ; 9
(set-option :timeout 10)
(assert (not (< $Perm.No $k@218@01)))
(check-sat)
; unsat
(pop) ; 9
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 9
; [then-branch: 99 | !(j@222@01 < |First:(Second:(Second:(Second:(Second:(Second:(Second:(Second:(Second:(Second:($t@216@01))))))))))|) | live]
; [else-branch: 99 | j@222@01 < |First:(Second:(Second:(Second:(Second:(Second:(Second:(Second:(Second:(Second:($t@216@01))))))))))| | live]
(push) ; 10
; [then-branch: 99 | !(j@222@01 < |First:(Second:(Second:(Second:(Second:(Second:(Second:(Second:(Second:(Second:($t@216@01))))))))))|)]
(assert (not
  (<
    j@222@01
    (Seq_length
      ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@216@01)))))))))))))))
(pop) ; 10
(push) ; 10
; [else-branch: 99 | j@222@01 < |First:(Second:(Second:(Second:(Second:(Second:(Second:(Second:(Second:(Second:($t@216@01))))))))))|]
(assert (<
  j@222@01
  (Seq_length
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@216@01))))))))))))))
; [eval] i != j
(pop) ; 10
(pop) ; 9
; Joined path conditions
; Joined path conditions
(assert (or
  (<
    j@222@01
    (Seq_length
      ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@216@01)))))))))))))
  (not
    (<
      j@222@01
      (Seq_length
        ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@216@01))))))))))))))))
(pop) ; 8
(pop) ; 7
; Joined path conditions
; Joined path conditions
(assert (=>
  (>= j@222@01 0)
  (and
    (>= j@222@01 0)
    (or
      (<
        j@222@01
        (Seq_length
          ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@216@01)))))))))))))
      (not
        (<
          j@222@01
          (Seq_length
            ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@216@01))))))))))))))))))
(assert (or (>= j@222@01 0) (not (>= j@222@01 0))))
(pop) ; 6
(pop) ; 5
; Joined path conditions
; Joined path conditions
(assert (=>
  (<
    i@221@01
    (Seq_length
      ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@216@01)))))))))))))
  (and
    (<
      i@221@01
      (Seq_length
        ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@216@01)))))))))))))
    (=>
      (>= j@222@01 0)
      (and
        (>= j@222@01 0)
        (or
          (<
            j@222@01
            (Seq_length
              ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@216@01)))))))))))))
          (not
            (<
              j@222@01
              (Seq_length
                ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@216@01)))))))))))))))))
    (or (>= j@222@01 0) (not (>= j@222@01 0))))))
(assert (or
  (<
    i@221@01
    (Seq_length
      ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@216@01)))))))))))))
  (not
    (<
      i@221@01
      (Seq_length
        ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@216@01))))))))))))))))
(pop) ; 4
(pop) ; 3
; Joined path conditions
; Joined path conditions
(assert (=>
  (>= i@221@01 0)
  (and
    (>= i@221@01 0)
    (=>
      (<
        i@221@01
        (Seq_length
          ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@216@01)))))))))))))
      (and
        (<
          i@221@01
          (Seq_length
            ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@216@01)))))))))))))
        (=>
          (>= j@222@01 0)
          (and
            (>= j@222@01 0)
            (or
              (<
                j@222@01
                (Seq_length
                  ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@216@01)))))))))))))
              (not
                (<
                  j@222@01
                  (Seq_length
                    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@216@01)))))))))))))))))
        (or (>= j@222@01 0) (not (>= j@222@01 0)))))
    (or
      (<
        i@221@01
        (Seq_length
          ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@216@01)))))))))))))
      (not
        (<
          i@221@01
          (Seq_length
            ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@216@01))))))))))))))))))
(assert (or (>= i@221@01 0) (not (>= i@221@01 0))))
(push) ; 3
; [then-branch: 100 | i@221@01 >= 0 && i@221@01 < |First:(Second:(Second:(Second:(Second:(Second:(Second:(Second:(Second:(Second:($t@216@01))))))))))| && j@222@01 >= 0 && j@222@01 < |First:(Second:(Second:(Second:(Second:(Second:(Second:(Second:(Second:(Second:($t@216@01))))))))))| && i@221@01 != j@222@01 | live]
; [else-branch: 100 | !(i@221@01 >= 0 && i@221@01 < |First:(Second:(Second:(Second:(Second:(Second:(Second:(Second:(Second:(Second:($t@216@01))))))))))| && j@222@01 >= 0 && j@222@01 < |First:(Second:(Second:(Second:(Second:(Second:(Second:(Second:(Second:(Second:($t@216@01))))))))))| && i@221@01 != j@222@01) | live]
(push) ; 4
; [then-branch: 100 | i@221@01 >= 0 && i@221@01 < |First:(Second:(Second:(Second:(Second:(Second:(Second:(Second:(Second:(Second:($t@216@01))))))))))| && j@222@01 >= 0 && j@222@01 < |First:(Second:(Second:(Second:(Second:(Second:(Second:(Second:(Second:(Second:($t@216@01))))))))))| && i@221@01 != j@222@01]
(assert (and
  (>= i@221@01 0)
  (and
    (<
      i@221@01
      (Seq_length
        ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@216@01)))))))))))))
    (and
      (>= j@222@01 0)
      (and
        (<
          j@222@01
          (Seq_length
            ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@216@01)))))))))))))
        (not (= i@221@01 j@222@01)))))))
; [eval] diz.demo__tmp[i] != diz.demo__tmp[j]
; [eval] diz.demo__tmp[i]
(push) ; 5
(set-option :timeout 10)
(assert (not (< $Perm.No $k@218@01)))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
; [eval] diz.demo__tmp[j]
(set-option :timeout 0)
(push) ; 5
(set-option :timeout 10)
(assert (not (< $Perm.No $k@218@01)))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(pop) ; 4
(set-option :timeout 0)
(push) ; 4
; [else-branch: 100 | !(i@221@01 >= 0 && i@221@01 < |First:(Second:(Second:(Second:(Second:(Second:(Second:(Second:(Second:(Second:($t@216@01))))))))))| && j@222@01 >= 0 && j@222@01 < |First:(Second:(Second:(Second:(Second:(Second:(Second:(Second:(Second:(Second:($t@216@01))))))))))| && i@221@01 != j@222@01)]
(assert (not
  (and
    (>= i@221@01 0)
    (and
      (<
        i@221@01
        (Seq_length
          ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@216@01)))))))))))))
      (and
        (>= j@222@01 0)
        (and
          (<
            j@222@01
            (Seq_length
              ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@216@01)))))))))))))
          (not (= i@221@01 j@222@01))))))))
(pop) ; 4
(pop) ; 3
; Joined path conditions
(assert (=>
  (and
    (>= i@221@01 0)
    (and
      (<
        i@221@01
        (Seq_length
          ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@216@01)))))))))))))
      (and
        (>= j@222@01 0)
        (and
          (<
            j@222@01
            (Seq_length
              ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@216@01)))))))))))))
          (not (= i@221@01 j@222@01))))))
  (and
    (>= i@221@01 0)
    (<
      i@221@01
      (Seq_length
        ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@216@01)))))))))))))
    (>= j@222@01 0)
    (<
      j@222@01
      (Seq_length
        ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@216@01)))))))))))))
    (not (= i@221@01 j@222@01)))))
; Joined path conditions
(assert (or
  (not
    (and
      (>= i@221@01 0)
      (and
        (<
          i@221@01
          (Seq_length
            ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@216@01)))))))))))))
        (and
          (>= j@222@01 0)
          (and
            (<
              j@222@01
              (Seq_length
                ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@216@01)))))))))))))
            (not (= i@221@01 j@222@01)))))))
  (and
    (>= i@221@01 0)
    (and
      (<
        i@221@01
        (Seq_length
          ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@216@01)))))))))))))
      (and
        (>= j@222@01 0)
        (and
          (<
            j@222@01
            (Seq_length
              ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@216@01)))))))))))))
          (not (= i@221@01 j@222@01))))))))
(pop) ; 2
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall ((i@221@01 Int) (j@222@01 Int)) (!
  (and
    (=>
      (>= i@221@01 0)
      (and
        (>= i@221@01 0)
        (=>
          (<
            i@221@01
            (Seq_length
              ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@216@01)))))))))))))
          (and
            (<
              i@221@01
              (Seq_length
                ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@216@01)))))))))))))
            (=>
              (>= j@222@01 0)
              (and
                (>= j@222@01 0)
                (or
                  (<
                    j@222@01
                    (Seq_length
                      ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@216@01)))))))))))))
                  (not
                    (<
                      j@222@01
                      (Seq_length
                        ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@216@01)))))))))))))))))
            (or (>= j@222@01 0) (not (>= j@222@01 0)))))
        (or
          (<
            i@221@01
            (Seq_length
              ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@216@01)))))))))))))
          (not
            (<
              i@221@01
              (Seq_length
                ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@216@01)))))))))))))))))
    (or (>= i@221@01 0) (not (>= i@221@01 0)))
    (=>
      (and
        (>= i@221@01 0)
        (and
          (<
            i@221@01
            (Seq_length
              ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@216@01)))))))))))))
          (and
            (>= j@222@01 0)
            (and
              (<
                j@222@01
                (Seq_length
                  ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@216@01)))))))))))))
              (not (= i@221@01 j@222@01))))))
      (and
        (>= i@221@01 0)
        (<
          i@221@01
          (Seq_length
            ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@216@01)))))))))))))
        (>= j@222@01 0)
        (<
          j@222@01
          (Seq_length
            ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@216@01)))))))))))))
        (not (= i@221@01 j@222@01))))
    (or
      (not
        (and
          (>= i@221@01 0)
          (and
            (<
              i@221@01
              (Seq_length
                ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@216@01)))))))))))))
            (and
              (>= j@222@01 0)
              (and
                (<
                  j@222@01
                  (Seq_length
                    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@216@01)))))))))))))
                (not (= i@221@01 j@222@01)))))))
      (and
        (>= i@221@01 0)
        (and
          (<
            i@221@01
            (Seq_length
              ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@216@01)))))))))))))
          (and
            (>= j@222@01 0)
            (and
              (<
                j@222@01
                (Seq_length
                  ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@216@01)))))))))))))
              (not (= i@221@01 j@222@01))))))))
  :pattern ((Seq_index
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@216@01)))))))))))
    i@221@01) (Seq_index
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@216@01)))))))))))
    j@222@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/third_party/test_binomial_noauto.vpr@225@12@225@148-aux|)))
(assert (forall ((i@221@01 Int) (j@222@01 Int)) (!
  (=>
    (and
      (>= i@221@01 0)
      (and
        (<
          i@221@01
          (Seq_length
            ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@216@01)))))))))))))
        (and
          (>= j@222@01 0)
          (and
            (<
              j@222@01
              (Seq_length
                ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@216@01)))))))))))))
            (not (= i@221@01 j@222@01))))))
    (not
      (=
        (Seq_index
          ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@216@01)))))))))))
          i@221@01)
        (Seq_index
          ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@216@01)))))))))))
          j@222@01))))
  :pattern ((Seq_index
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@216@01)))))))))))
    i@221@01) (Seq_index
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@216@01)))))))))))
    j@222@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/third_party/test_binomial_noauto.vpr@225@12@225@148|)))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@216@01)))))))))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@216@01))))))))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@216@01)))))))))))))))))
(declare-const _x_tid@223@01 Int)
(push) ; 2
; [eval] 0 <= _x_tid && _x_tid < gsize
; [eval] 0 <= _x_tid
(push) ; 3
; [then-branch: 101 | !(0 <= _x_tid@223@01) | live]
; [else-branch: 101 | 0 <= _x_tid@223@01 | live]
(push) ; 4
; [then-branch: 101 | !(0 <= _x_tid@223@01)]
(assert (not (<= 0 _x_tid@223@01)))
(pop) ; 4
(push) ; 4
; [else-branch: 101 | 0 <= _x_tid@223@01]
(assert (<= 0 _x_tid@223@01))
; [eval] _x_tid < gsize
(pop) ; 4
(pop) ; 3
; Joined path conditions
; Joined path conditions
(assert (or (<= 0 _x_tid@223@01) (not (<= 0 _x_tid@223@01))))
(assert (and (<= 0 _x_tid@223@01) (< _x_tid@223@01 gsize@211@01)))
; [eval] diz.demo__ar[_x_tid]
(push) ; 3
(set-option :timeout 10)
(assert (not (< $Perm.No $k@217@01)))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(assert (not (>= _x_tid@223@01 0)))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(push) ; 3
(assert (not (<
  _x_tid@223@01
  (Seq_length
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@216@01)))))))))))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(pop) ; 2
(declare-fun inv@224@01 ($Ref) Int)
(declare-fun img@225@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
(assert (forall ((_x_tid@223@01 Int)) (!
  (=>
    (and (<= 0 _x_tid@223@01) (< _x_tid@223@01 gsize@211@01))
    (or (<= 0 _x_tid@223@01) (not (<= 0 _x_tid@223@01))))
  :pattern ((Seq_index
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@216@01)))))))))
    _x_tid@223@01))
  :qid |Ref__Integer_value-aux|)))
; Check receiver injectivity
(push) ; 2
(assert (not (forall ((_x_tid1@223@01 Int) (_x_tid2@223@01 Int)) (!
  (=>
    (and
      (and (<= 0 _x_tid1@223@01) (< _x_tid1@223@01 gsize@211@01))
      (and (<= 0 _x_tid2@223@01) (< _x_tid2@223@01 gsize@211@01))
      (=
        (Seq_index
          ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@216@01)))))))))
          _x_tid1@223@01)
        (Seq_index
          ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@216@01)))))))))
          _x_tid2@223@01)))
    (= _x_tid1@223@01 _x_tid2@223@01))
  
  :qid |Ref__Integer_value-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 2
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((_x_tid@223@01 Int)) (!
  (=>
    (and (<= 0 _x_tid@223@01) (< _x_tid@223@01 gsize@211@01))
    (and
      (=
        (inv@224@01 (Seq_index
          ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@216@01)))))))))
          _x_tid@223@01))
        _x_tid@223@01)
      (img@225@01 (Seq_index
        ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@216@01)))))))))
        _x_tid@223@01))))
  :pattern ((Seq_index
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@216@01)))))))))
    _x_tid@223@01))
  :qid |quant-u-8510|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@225@01 r)
      (and (<= 0 (inv@224@01 r)) (< (inv@224@01 r) gsize@211@01)))
    (=
      (Seq_index
        ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@216@01)))))))))
        (inv@224@01 r))
      r))
  :pattern ((inv@224@01 r))
  :qid |Ref__Integer_value-fctOfInv|)))
; Permissions are non-negative
; Field permissions are at most one
; Permission implies non-null receiver
(assert (forall ((_x_tid@223@01 Int)) (!
  (=>
    (and (<= 0 _x_tid@223@01) (< _x_tid@223@01 gsize@211@01))
    (not
      (=
        (Seq_index
          ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@216@01)))))))))
          _x_tid@223@01)
        $Ref.null)))
  :pattern ((Seq_index
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@216@01)))))))))
    _x_tid@223@01))
  :qid |Ref__Integer_value-permImpliesNonNull|)))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@216@01))))))))))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@216@01)))))))))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@216@01))))))))))))))))))
(declare-const _x_tid@226@01 Int)
(push) ; 2
; [eval] 0 <= _x_tid && _x_tid < gsize
; [eval] 0 <= _x_tid
(push) ; 3
; [then-branch: 102 | !(0 <= _x_tid@226@01) | live]
; [else-branch: 102 | 0 <= _x_tid@226@01 | live]
(push) ; 4
; [then-branch: 102 | !(0 <= _x_tid@226@01)]
(assert (not (<= 0 _x_tid@226@01)))
(pop) ; 4
(push) ; 4
; [else-branch: 102 | 0 <= _x_tid@226@01]
(assert (<= 0 _x_tid@226@01))
; [eval] _x_tid < gsize
(pop) ; 4
(pop) ; 3
; Joined path conditions
; Joined path conditions
(assert (or (<= 0 _x_tid@226@01) (not (<= 0 _x_tid@226@01))))
(assert (and (<= 0 _x_tid@226@01) (< _x_tid@226@01 gsize@211@01)))
; [eval] diz.demo__tmp[_x_tid]
(push) ; 3
(set-option :timeout 10)
(assert (not (< $Perm.No $k@218@01)))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(assert (not (>= _x_tid@226@01 0)))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(push) ; 3
(assert (not (<
  _x_tid@226@01
  (Seq_length
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@216@01)))))))))))))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(pop) ; 2
(declare-fun inv@227@01 ($Ref) Int)
(declare-fun img@228@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
(assert (forall ((_x_tid@226@01 Int)) (!
  (=>
    (and (<= 0 _x_tid@226@01) (< _x_tid@226@01 gsize@211@01))
    (or (<= 0 _x_tid@226@01) (not (<= 0 _x_tid@226@01))))
  :pattern ((Seq_index
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@216@01)))))))))))
    _x_tid@226@01))
  :qid |Ref__Integer_value-aux|)))
; Check receiver injectivity
(push) ; 2
(assert (not (forall ((_x_tid1@226@01 Int) (_x_tid2@226@01 Int)) (!
  (=>
    (and
      (and (<= 0 _x_tid1@226@01) (< _x_tid1@226@01 gsize@211@01))
      (and (<= 0 _x_tid2@226@01) (< _x_tid2@226@01 gsize@211@01))
      (=
        (Seq_index
          ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@216@01)))))))))))
          _x_tid1@226@01)
        (Seq_index
          ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@216@01)))))))))))
          _x_tid2@226@01)))
    (= _x_tid1@226@01 _x_tid2@226@01))
  
  :qid |Ref__Integer_value-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 2
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((_x_tid@226@01 Int)) (!
  (=>
    (and (<= 0 _x_tid@226@01) (< _x_tid@226@01 gsize@211@01))
    (and
      (=
        (inv@227@01 (Seq_index
          ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@216@01)))))))))))
          _x_tid@226@01))
        _x_tid@226@01)
      (img@228@01 (Seq_index
        ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@216@01)))))))))))
        _x_tid@226@01))))
  :pattern ((Seq_index
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@216@01)))))))))))
    _x_tid@226@01))
  :qid |quant-u-8512|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@228@01 r)
      (and (<= 0 (inv@227@01 r)) (< (inv@227@01 r) gsize@211@01)))
    (=
      (Seq_index
        ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@216@01)))))))))))
        (inv@227@01 r))
      r))
  :pattern ((inv@227@01 r))
  :qid |Ref__Integer_value-fctOfInv|)))
; Permissions are non-negative
; Field permissions are at most one
; Permission implies non-null receiver
(assert (forall ((_x_tid@226@01 Int)) (!
  (=>
    (and (<= 0 _x_tid@226@01) (< _x_tid@226@01 gsize@211@01))
    (not
      (=
        (Seq_index
          ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@216@01)))))))))))
          _x_tid@226@01)
        $Ref.null)))
  :pattern ((Seq_index
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@216@01)))))))))))
    _x_tid@226@01))
  :qid |Ref__Integer_value-permImpliesNonNull|)))
(push) ; 2
(set-option :timeout 10)
(assert (not (forall ((r $Ref)) (!
  (and
    (=
      (Seq_index
        ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@216@01)))))))))))
        _x_tid@226@01)
      (Seq_index
        ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@216@01)))))))))
        _x_tid@223@01))
    (=
      (and
        (img@228@01 r)
        (and (<= 0 (inv@227@01 r)) (< (inv@227@01 r) gsize@211@01)))
      (and
        (img@225@01 r)
        (and (<= 0 (inv@224@01 r)) (< (inv@224@01 r) gsize@211@01)))))
  
  :qid |quant-u-8513|))))
(check-sat)
; unknown
(pop) ; 2
; 0.00s
; (get-info :all-statistics)
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@216@01)))))))))))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@216@01))))))))))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@216@01)))))))))))))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@216@01))))))))))))))))
  $Snap.unit))
; [eval] gsize > 1
(assert (> gsize@211@01 1))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@216@01))))))))))))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@216@01)))))))))))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@216@01))))))))))))))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@216@01)))))))))))))))))
  $Snap.unit))
; [eval] 0 < N
(assert (< 0 N@215@01))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@216@01)))))))))))))))))
  $Snap.unit))
; [eval] N < gsize
(assert (< N@215@01 gsize@211@01))
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
(set-option :timeout 0)
(push) ; 2
(declare-const $t@229@01 $Snap)
(assert (= $t@229@01 ($Snap.combine ($Snap.first $t@229@01) ($Snap.second $t@229@01))))
(assert (= ($Snap.first $t@229@01) $Snap.unit))
; [eval] 0 <= tid
(assert (=
  ($Snap.second $t@229@01)
  ($Snap.combine
    ($Snap.first ($Snap.second $t@229@01))
    ($Snap.second ($Snap.second $t@229@01)))))
(assert (= ($Snap.first ($Snap.second $t@229@01)) $Snap.unit))
; [eval] tid < tcount
(assert (=
  ($Snap.second ($Snap.second $t@229@01))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second $t@229@01)))
    ($Snap.second ($Snap.second ($Snap.second $t@229@01))))))
(assert (= ($Snap.first ($Snap.second ($Snap.second $t@229@01))) $Snap.unit))
; [eval] tid == lid
(assert (=
  ($Snap.second ($Snap.second ($Snap.second $t@229@01)))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@229@01))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@229@01)))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@229@01))))
  $Snap.unit))
; [eval] tcount == gsize
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@229@01))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@229@01)))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@229@01))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@229@01)))))
  $Snap.unit))
; [eval] gid == 0
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@229@01)))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@229@01))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@229@01)))))))))
(declare-const $k@230@01 $Perm)
(assert ($Perm.isReadVar $k@230@01))
(assert (<= $Perm.No $k@230@01))
(assert (<= $k@230@01 $Perm.Write))
(assert (=> (< $Perm.No $k@230@01) (not (= diz@208@01 $Ref.null))))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@229@01))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@229@01)))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@229@01))))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@229@01)))))))
  $Snap.unit))
; [eval] |diz.demo__ar| == gsize
; [eval] |diz.demo__ar|
(push) ; 3
(set-option :timeout 10)
(assert (not (< $Perm.No $k@230@01)))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(assert (=
  (Seq_length
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@229@01))))))))
  gsize@211@01))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@229@01)))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@229@01))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@229@01)))))))))))
(declare-const $k@231@01 $Perm)
(assert ($Perm.isReadVar $k@231@01))
(assert (<= $Perm.No $k@231@01))
(assert (<= $k@231@01 $Perm.Write))
(assert (=> (< $Perm.No $k@231@01) (not (= diz@208@01 $Ref.null))))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@229@01))))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@229@01)))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@229@01))))))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@229@01)))))))))
  $Snap.unit))
; [eval] |diz.demo__tmp| == gsize
; [eval] |diz.demo__tmp|
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (< $Perm.No $k@231@01)))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(assert (=
  (Seq_length
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@229@01))))))))))
  gsize@211@01))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@229@01)))))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@229@01))))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@229@01)))))))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@229@01))))))))))
  $Snap.unit))
; [eval] diz.demo__ar == old(diz.demo__ar)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (< $Perm.No $k@230@01)))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; [eval] old(diz.demo__ar)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (< $Perm.No $k@217@01)))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(assert (Seq_equal
  ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@229@01)))))))
  ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@216@01)))))))))))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@229@01))))))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@229@01)))))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@229@01))))))))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@229@01)))))))))))
  $Snap.unit))
; [eval] diz.demo__tmp == old(diz.demo__tmp)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (< $Perm.No $k@231@01)))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; [eval] old(diz.demo__tmp)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (< $Perm.No $k@218@01)))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(assert (Seq_equal
  ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@229@01)))))))))
  ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@216@01)))))))))))))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@229@01)))))))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@229@01))))))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@229@01)))))))))))))))
; [eval] tid < gsize - 1
; [eval] gsize - 1
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (not (< tid@212@01 (- gsize@211@01 1)))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (< tid@212@01 (- gsize@211@01 1))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; [then-branch: 103 | tid@212@01 < gsize@211@01 - 1 | live]
; [else-branch: 103 | !(tid@212@01 < gsize@211@01 - 1) | live]
(set-option :timeout 0)
(push) ; 3
; [then-branch: 103 | tid@212@01 < gsize@211@01 - 1]
(assert (< tid@212@01 (- gsize@211@01 1)))
; [eval] diz.demo__tmp[tid]
(push) ; 4
(set-option :timeout 10)
(assert (not (< $Perm.No $k@231@01)))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 4
(assert (not (>= tid@212@01 0)))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(push) ; 4
(assert (not (<
  tid@212@01
  (Seq_length
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@229@01)))))))))))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(declare-const sm@232@01 $FVF<Ref__Integer_value>)
; Definitional axioms for singleton-SM's value
(assert (=
  ($FVF.lookup_Ref__Integer_value (as sm@232@01  $FVF<Ref__Integer_value>) (Seq_index
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@229@01)))))))))
    tid@212@01))
  ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@229@01)))))))))))))))
(assert (<=
  $Perm.No
  (ite
    (=
      (Seq_index
        ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@229@01)))))))))
        tid@212@01)
      (Seq_index
        ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@229@01)))))))))
        tid@212@01))
    $Perm.Write
    $Perm.No)))
(assert (<=
  (ite
    (=
      (Seq_index
        ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@229@01)))))))))
        tid@212@01)
      (Seq_index
        ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@229@01)))))))))
        tid@212@01))
    $Perm.Write
    $Perm.No)
  $Perm.Write))
(assert (=>
  (=
    (Seq_index
      ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@229@01)))))))))
      tid@212@01)
    (Seq_index
      ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@229@01)))))))))
      tid@212@01))
  (not
    (=
      (Seq_index
        ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@229@01)))))))))
        tid@212@01)
      $Ref.null))))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@229@01))))))))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@229@01)))))))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@229@01))))))))))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@229@01)))))))))))))
  $Snap.unit))
; [eval] gsize > 1
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@229@01)))))))))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@229@01))))))))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@229@01)))))))))))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@229@01))))))))))))))
  $Snap.unit))
; [eval] 0 < N
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@229@01))))))))))))))
  $Snap.unit))
; [eval] N < gsize
(pop) ; 3
(push) ; 3
; [else-branch: 103 | !(tid@212@01 < gsize@211@01 - 1)]
(assert (not (< tid@212@01 (- gsize@211@01 1))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@229@01))))))))))))
  $Snap.unit))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@229@01))))))))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@229@01)))))))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@229@01))))))))))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@229@01)))))))))))))
  $Snap.unit))
; [eval] gsize > 1
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@229@01)))))))))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@229@01))))))))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@229@01)))))))))))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@229@01))))))))))))))
  $Snap.unit))
; [eval] 0 < N
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@229@01))))))))))))))
  $Snap.unit))
; [eval] N < gsize
(pop) ; 3
(pop) ; 2
(push) ; 2
; [eval] 0 <= tid
; [eval] tid < tcount
; [eval] tid == lid
; [eval] tcount == gsize
; [eval] gid == 0
(declare-const $k@233@01 $Perm)
(assert ($Perm.isReadVar $k@233@01))
(push) ; 3
(set-option :timeout 10)
(assert (not (not (= $k@217@01 $Perm.No))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(assert (< $k@233@01 $k@217@01))
(assert (<= $Perm.No (- $k@217@01 $k@233@01)))
(assert (<= (- $k@217@01 $k@233@01) $Perm.Write))
(assert (=> (< $Perm.No (- $k@217@01 $k@233@01)) (not (= diz@208@01 $Ref.null))))
; [eval] |diz.demo__ar| == gsize
; [eval] |diz.demo__ar|
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (< $Perm.No $k@217@01)))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(declare-const $k@234@01 $Perm)
(assert ($Perm.isReadVar $k@234@01))
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (not (= $k@218@01 $Perm.No))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(assert (< $k@234@01 $k@218@01))
(assert (<= $Perm.No (- $k@218@01 $k@234@01)))
(assert (<= (- $k@218@01 $k@234@01) $Perm.Write))
(assert (=> (< $Perm.No (- $k@218@01 $k@234@01)) (not (= diz@208@01 $Ref.null))))
; [eval] |diz.demo__tmp| == gsize
; [eval] |diz.demo__tmp|
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (< $Perm.No $k@218@01)))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; [eval] diz.demo__ar == old(diz.demo__ar)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (< $Perm.No $k@217@01)))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; [eval] old(diz.demo__ar)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (< $Perm.No $k@217@01)))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; [eval] diz.demo__tmp == old(diz.demo__tmp)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (< $Perm.No $k@218@01)))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; [eval] old(diz.demo__tmp)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (< $Perm.No $k@218@01)))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; [eval] tid < gsize - 1
; [eval] gsize - 1
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (not (< tid@212@01 (- gsize@211@01 1)))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (< tid@212@01 (- gsize@211@01 1))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; [then-branch: 104 | tid@212@01 < gsize@211@01 - 1 | live]
; [else-branch: 104 | !(tid@212@01 < gsize@211@01 - 1) | live]
(set-option :timeout 0)
(push) ; 3
; [then-branch: 104 | tid@212@01 < gsize@211@01 - 1]
(assert (< tid@212@01 (- gsize@211@01 1)))
; [eval] diz.demo__tmp[tid]
(push) ; 4
(set-option :timeout 10)
(assert (not (< $Perm.No $k@218@01)))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 4
(assert (not (>= tid@212@01 0)))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(push) ; 4
(assert (not (<
  tid@212@01
  (Seq_length
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@216@01)))))))))))))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; Precomputing data for removing quantified permissions
(define-fun pTaken@235@01 ((r $Ref)) $Perm
  (ite
    (=
      r
      (Seq_index
        ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@216@01)))))))))))
        tid@212@01))
    ($Perm.min
      (ite
        (and
          (img@228@01 r)
          (and (<= 0 (inv@227@01 r)) (< (inv@227@01 r) gsize@211@01)))
        $Perm.Write
        $Perm.No)
      $Perm.Write)
    $Perm.No))
(define-fun pTaken@236@01 ((r $Ref)) $Perm
  (ite
    (=
      r
      (Seq_index
        ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@216@01)))))))))))
        tid@212@01))
    ($Perm.min
      (ite
        (and
          (img@225@01 r)
          (and (<= 0 (inv@224@01 r)) (< (inv@224@01 r) gsize@211@01)))
        $Perm.Write
        $Perm.No)
      (- $Perm.Write (pTaken@235@01 r)))
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
          (img@228@01 r)
          (and (<= 0 (inv@227@01 r)) (< (inv@227@01 r) gsize@211@01)))
        $Perm.Write
        $Perm.No)
      (pTaken@235@01 r))
    $Perm.No)
  
  :qid |quant-u-8515|))))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not (forall ((r $Ref)) (!
  (= (pTaken@235@01 r) $Perm.No)
  
  :qid |quant-u-8516|))))
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
        ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@216@01)))))))))))
        tid@212@01))
    (= (- $Perm.Write (pTaken@235@01 r)) $Perm.No))
  
  :qid |quant-u-8517|))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; Final check if taken enough permissions
; Done removing quantified permissions
; [eval] gsize > 1
; [eval] 0 < N
; [eval] N < gsize
(pop) ; 3
(set-option :timeout 0)
(push) ; 3
; [else-branch: 104 | !(tid@212@01 < gsize@211@01 - 1)]
(assert (not (< tid@212@01 (- gsize@211@01 1))))
; [eval] gsize > 1
; [eval] 0 < N
; [eval] N < gsize
(pop) ; 3
(pop) ; 2
(pop) ; 1
