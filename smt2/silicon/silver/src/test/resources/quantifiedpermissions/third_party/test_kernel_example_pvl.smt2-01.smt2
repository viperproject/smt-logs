(get-info :version)
; (:version "4.12.1")
; Started: 2024-12-27 10:00:17
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
(declare-sort $FVF<Ref__a> 0)
(declare-sort $FVF<Ref__b> 0)
(declare-sort $FVF<Ref__c> 0)
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
(declare-fun $SortWrappers.$FVF<Ref__a>To$Snap ($FVF<Ref__a>) $Snap)
(declare-fun $SortWrappers.$SnapTo$FVF<Ref__a> ($Snap) $FVF<Ref__a>)
(assert (forall ((x $FVF<Ref__a>)) (!
    (= x ($SortWrappers.$SnapTo$FVF<Ref__a>($SortWrappers.$FVF<Ref__a>To$Snap x)))
    :pattern (($SortWrappers.$FVF<Ref__a>To$Snap x))
    :qid |$Snap.$SnapTo$FVF<Ref__a>To$Snap|
    )))
(assert (forall ((x $Snap)) (!
    (= x ($SortWrappers.$FVF<Ref__a>To$Snap($SortWrappers.$SnapTo$FVF<Ref__a> x)))
    :pattern (($SortWrappers.$SnapTo$FVF<Ref__a> x))
    :qid |$Snap.$FVF<Ref__a>To$SnapTo$FVF<Ref__a>|
    )))
(declare-fun $SortWrappers.$FVF<Ref__b>To$Snap ($FVF<Ref__b>) $Snap)
(declare-fun $SortWrappers.$SnapTo$FVF<Ref__b> ($Snap) $FVF<Ref__b>)
(assert (forall ((x $FVF<Ref__b>)) (!
    (= x ($SortWrappers.$SnapTo$FVF<Ref__b>($SortWrappers.$FVF<Ref__b>To$Snap x)))
    :pattern (($SortWrappers.$FVF<Ref__b>To$Snap x))
    :qid |$Snap.$SnapTo$FVF<Ref__b>To$Snap|
    )))
(assert (forall ((x $Snap)) (!
    (= x ($SortWrappers.$FVF<Ref__b>To$Snap($SortWrappers.$SnapTo$FVF<Ref__b> x)))
    :pattern (($SortWrappers.$SnapTo$FVF<Ref__b> x))
    :qid |$Snap.$FVF<Ref__b>To$SnapTo$FVF<Ref__b>|
    )))
(declare-fun $SortWrappers.$FVF<Ref__c>To$Snap ($FVF<Ref__c>) $Snap)
(declare-fun $SortWrappers.$SnapTo$FVF<Ref__c> ($Snap) $FVF<Ref__c>)
(assert (forall ((x $FVF<Ref__c>)) (!
    (= x ($SortWrappers.$SnapTo$FVF<Ref__c>($SortWrappers.$FVF<Ref__c>To$Snap x)))
    :pattern (($SortWrappers.$FVF<Ref__c>To$Snap x))
    :qid |$Snap.$SnapTo$FVF<Ref__c>To$Snap|
    )))
(assert (forall ((x $Snap)) (!
    (= x ($SortWrappers.$FVF<Ref__c>To$Snap($SortWrappers.$SnapTo$FVF<Ref__c> x)))
    :pattern (($SortWrappers.$SnapTo$FVF<Ref__c> x))
    :qid |$Snap.$FVF<Ref__c>To$SnapTo$FVF<Ref__c>|
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
; /field_value_functions_declarations.smt2 [Ref__a: Seq[Ref]]
(declare-fun $FVF.domain_Ref__a ($FVF<Ref__a>) Set<$Ref>)
(declare-fun $FVF.lookup_Ref__a ($FVF<Ref__a> $Ref) Seq<$Ref>)
(declare-fun $FVF.after_Ref__a ($FVF<Ref__a> $FVF<Ref__a>) Bool)
(declare-fun $FVF.loc_Ref__a (Seq<$Ref> $Ref) Bool)
(declare-fun $FVF.perm_Ref__a ($FPM $Ref) $Perm)
(declare-const $fvfTOP_Ref__a $FVF<Ref__a>)
; /field_value_functions_declarations.smt2 [Ref__b: Seq[Ref]]
(declare-fun $FVF.domain_Ref__b ($FVF<Ref__b>) Set<$Ref>)
(declare-fun $FVF.lookup_Ref__b ($FVF<Ref__b> $Ref) Seq<$Ref>)
(declare-fun $FVF.after_Ref__b ($FVF<Ref__b> $FVF<Ref__b>) Bool)
(declare-fun $FVF.loc_Ref__b (Seq<$Ref> $Ref) Bool)
(declare-fun $FVF.perm_Ref__b ($FPM $Ref) $Perm)
(declare-const $fvfTOP_Ref__b $FVF<Ref__b>)
; /field_value_functions_declarations.smt2 [Ref__c: Seq[Ref]]
(declare-fun $FVF.domain_Ref__c ($FVF<Ref__c>) Set<$Ref>)
(declare-fun $FVF.lookup_Ref__c ($FVF<Ref__c> $Ref) Seq<$Ref>)
(declare-fun $FVF.after_Ref__c ($FVF<Ref__c> $FVF<Ref__c>) Bool)
(declare-fun $FVF.loc_Ref__c (Seq<$Ref> $Ref) Bool)
(declare-fun $FVF.perm_Ref__c ($FPM $Ref) $Perm)
(declare-const $fvfTOP_Ref__c $FVF<Ref__c>)
; /field_value_functions_declarations.smt2 [Ref__Integer_value: Int]
(declare-fun $FVF.domain_Ref__Integer_value ($FVF<Ref__Integer_value>) Set<$Ref>)
(declare-fun $FVF.lookup_Ref__Integer_value ($FVF<Ref__Integer_value> $Ref) Int)
(declare-fun $FVF.after_Ref__Integer_value ($FVF<Ref__Integer_value> $FVF<Ref__Integer_value>) Bool)
(declare-fun $FVF.loc_Ref__Integer_value (Int $Ref) Bool)
(declare-fun $FVF.perm_Ref__Integer_value ($FPM $Ref) $Perm)
(declare-const $fvfTOP_Ref__Integer_value $FVF<Ref__Integer_value>)
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
; /field_value_functions_axioms.smt2 [Ref__a: Seq[Ref]]
(assert (forall ((vs $FVF<Ref__a>) (ws $FVF<Ref__a>)) (!
    (=>
      (and
        (Set_equal ($FVF.domain_Ref__a vs) ($FVF.domain_Ref__a ws))
        (forall ((x $Ref)) (!
          (=>
            (Set_in x ($FVF.domain_Ref__a vs))
            (= ($FVF.lookup_Ref__a vs x) ($FVF.lookup_Ref__a ws x)))
          :pattern (($FVF.lookup_Ref__a vs x) ($FVF.lookup_Ref__a ws x))
          :qid |qp.$FVF<Ref__a>-eq-inner|
          )))
      (= vs ws))
    :pattern (($SortWrappers.$FVF<Ref__a>To$Snap vs)
              ($SortWrappers.$FVF<Ref__a>To$Snap ws)
              )
    :qid |qp.$FVF<Ref__a>-eq-outer|
    )))
(assert (forall ((r $Ref) (pm $FPM)) (!
    ($Perm.isValidVar ($FVF.perm_Ref__a pm r))
    :pattern (($FVF.perm_Ref__a pm r)))))
(assert (forall ((r $Ref) (f Seq<$Ref>)) (!
    (= ($FVF.loc_Ref__a f r) true)
    :pattern (($FVF.loc_Ref__a f r)))))
; /field_value_functions_axioms.smt2 [Ref__b: Seq[Ref]]
(assert (forall ((vs $FVF<Ref__b>) (ws $FVF<Ref__b>)) (!
    (=>
      (and
        (Set_equal ($FVF.domain_Ref__b vs) ($FVF.domain_Ref__b ws))
        (forall ((x $Ref)) (!
          (=>
            (Set_in x ($FVF.domain_Ref__b vs))
            (= ($FVF.lookup_Ref__b vs x) ($FVF.lookup_Ref__b ws x)))
          :pattern (($FVF.lookup_Ref__b vs x) ($FVF.lookup_Ref__b ws x))
          :qid |qp.$FVF<Ref__b>-eq-inner|
          )))
      (= vs ws))
    :pattern (($SortWrappers.$FVF<Ref__b>To$Snap vs)
              ($SortWrappers.$FVF<Ref__b>To$Snap ws)
              )
    :qid |qp.$FVF<Ref__b>-eq-outer|
    )))
(assert (forall ((r $Ref) (pm $FPM)) (!
    ($Perm.isValidVar ($FVF.perm_Ref__b pm r))
    :pattern (($FVF.perm_Ref__b pm r)))))
(assert (forall ((r $Ref) (f Seq<$Ref>)) (!
    (= ($FVF.loc_Ref__b f r) true)
    :pattern (($FVF.loc_Ref__b f r)))))
; /field_value_functions_axioms.smt2 [Ref__c: Seq[Ref]]
(assert (forall ((vs $FVF<Ref__c>) (ws $FVF<Ref__c>)) (!
    (=>
      (and
        (Set_equal ($FVF.domain_Ref__c vs) ($FVF.domain_Ref__c ws))
        (forall ((x $Ref)) (!
          (=>
            (Set_in x ($FVF.domain_Ref__c vs))
            (= ($FVF.lookup_Ref__c vs x) ($FVF.lookup_Ref__c ws x)))
          :pattern (($FVF.lookup_Ref__c vs x) ($FVF.lookup_Ref__c ws x))
          :qid |qp.$FVF<Ref__c>-eq-inner|
          )))
      (= vs ws))
    :pattern (($SortWrappers.$FVF<Ref__c>To$Snap vs)
              ($SortWrappers.$FVF<Ref__c>To$Snap ws)
              )
    :qid |qp.$FVF<Ref__c>-eq-outer|
    )))
(assert (forall ((r $Ref) (pm $FPM)) (!
    ($Perm.isValidVar ($FVF.perm_Ref__c pm r))
    :pattern (($FVF.perm_Ref__c pm r)))))
(assert (forall ((r $Ref) (f Seq<$Ref>)) (!
    (= ($FVF.loc_Ref__c f r) true)
    :pattern (($FVF.loc_Ref__c f r)))))
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
; End function- and predicate-related preamble
; ------------------------------------------------------------
; ---------- Ref__main_main ----------
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
; [eval] |diz.Ref__a| == tcount
; [eval] |diz.Ref__a|
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
  tcount@9@01))
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
; [eval] |diz.Ref__b| == tcount
; [eval] |diz.Ref__b|
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
  tcount@9@01))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@14@01)))))))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@14@01))))))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@14@01)))))))))))))))
(declare-const $k@17@01 $Perm)
(assert ($Perm.isReadVar $k@17@01))
(assert (<= $Perm.No $k@17@01))
(assert (<= $k@17@01 $Perm.Write))
(assert (=> (< $Perm.No $k@17@01) (not (= diz@7@01 $Ref.null))))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@14@01))))))))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@14@01)))))))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@14@01))))))))))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@14@01)))))))))))))
  $Snap.unit))
; [eval] |diz.Ref__c| == tcount
; [eval] |diz.Ref__c|
(set-option :timeout 0)
(push) ; 2
(set-option :timeout 10)
(assert (not (< $Perm.No $k@17@01)))
(check-sat)
; unsat
(pop) ; 2
; 0.00s
; (get-info :all-statistics)
(assert (=
  (Seq_length
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@14@01))))))))))))))
  tcount@9@01))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@14@01)))))))))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@14@01))))))))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@14@01)))))))))))))))))
; [eval] diz.Ref__a[tid]
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
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@14@01))))))))))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@14@01)))))))))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@14@01))))))))))))))))))
; [eval] diz.Ref__b[tid]
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
; [eval] diz.Ref__c[tid]
(set-option :timeout 0)
(push) ; 2
(set-option :timeout 10)
(assert (not (< $Perm.No $k@17@01)))
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
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@14@01)))))))))))))))))
(check-sat)
; unsat
(pop) ; 2
; 0.00s
; (get-info :all-statistics)
(push) ; 2
(set-option :timeout 10)
(assert (not (=
  (Seq_index
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@14@01)))))))))))
    tid@11@01)
  (Seq_index
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@14@01)))))))))))))
    tid@11@01))))
(check-sat)
; unknown
(pop) ; 2
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 2
(set-option :timeout 10)
(assert (not (=
  (Seq_index
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@14@01)))))))))
    tid@11@01)
  (Seq_index
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@14@01)))))))))))))
    tid@11@01))))
(check-sat)
; unknown
(pop) ; 2
; 0.00s
; (get-info :all-statistics)
(assert (not
  (=
    (Seq_index
      ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@14@01)))))))))))))
      tid@11@01)
    $Ref.null)))
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
(set-option :timeout 0)
(push) ; 2
(declare-const $t@18@01 $Snap)
(assert (= $t@18@01 ($Snap.combine ($Snap.first $t@18@01) ($Snap.second $t@18@01))))
(assert (= ($Snap.first $t@18@01) $Snap.unit))
; [eval] 0 <= tid
(assert (=
  ($Snap.second $t@18@01)
  ($Snap.combine
    ($Snap.first ($Snap.second $t@18@01))
    ($Snap.second ($Snap.second $t@18@01)))))
(assert (= ($Snap.first ($Snap.second $t@18@01)) $Snap.unit))
; [eval] tid < tcount
(assert (=
  ($Snap.second ($Snap.second $t@18@01))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second $t@18@01)))
    ($Snap.second ($Snap.second ($Snap.second $t@18@01))))))
(assert (= ($Snap.first ($Snap.second ($Snap.second $t@18@01))) $Snap.unit))
; [eval] tid == lid
(assert (=
  ($Snap.second ($Snap.second ($Snap.second $t@18@01)))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@18@01))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@18@01)))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@18@01))))
  $Snap.unit))
; [eval] tcount == gsize
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@18@01))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@18@01)))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@18@01))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@18@01)))))
  $Snap.unit))
; [eval] gid == 0
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@18@01)))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@18@01))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@18@01)))))))))
(declare-const $k@19@01 $Perm)
(assert ($Perm.isReadVar $k@19@01))
(assert (<= $Perm.No $k@19@01))
(assert (<= $k@19@01 $Perm.Write))
(assert (=> (< $Perm.No $k@19@01) (not (= diz@7@01 $Ref.null))))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@18@01))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@18@01)))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@18@01))))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@18@01)))))))
  $Snap.unit))
; [eval] |diz.Ref__a| == tcount
; [eval] |diz.Ref__a|
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
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@18@01))))))))
  tcount@9@01))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@18@01)))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@18@01))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@18@01)))))))))))
(declare-const $k@20@01 $Perm)
(assert ($Perm.isReadVar $k@20@01))
(assert (<= $Perm.No $k@20@01))
(assert (<= $k@20@01 $Perm.Write))
(assert (=> (< $Perm.No $k@20@01) (not (= diz@7@01 $Ref.null))))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@18@01))))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@18@01)))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@18@01))))))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@18@01)))))))))
  $Snap.unit))
; [eval] |diz.Ref__b| == tcount
; [eval] |diz.Ref__b|
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (< $Perm.No $k@20@01)))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(assert (=
  (Seq_length
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@18@01))))))))))
  tcount@9@01))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@18@01)))))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@18@01))))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@18@01)))))))))))))
(declare-const $k@21@01 $Perm)
(assert ($Perm.isReadVar $k@21@01))
(assert (<= $Perm.No $k@21@01))
(assert (<= $k@21@01 $Perm.Write))
(assert (=> (< $Perm.No $k@21@01) (not (= diz@7@01 $Ref.null))))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@18@01))))))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@18@01)))))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@18@01))))))))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@18@01)))))))))))
  $Snap.unit))
; [eval] |diz.Ref__c| == tcount
; [eval] |diz.Ref__c|
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (< $Perm.No $k@21@01)))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(assert (=
  (Seq_length
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@18@01))))))))))))
  tcount@9@01))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@18@01)))))))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@18@01))))))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@18@01)))))))))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@18@01))))))))))))
  $Snap.unit))
; [eval] diz.Ref__a == old(diz.Ref__a)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (< $Perm.No $k@19@01)))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; [eval] old(diz.Ref__a)
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
  ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@18@01)))))))
  ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@14@01)))))))))))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@18@01))))))))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@18@01)))))))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@18@01))))))))))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@18@01)))))))))))))
  $Snap.unit))
; [eval] diz.Ref__b == old(diz.Ref__b)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (< $Perm.No $k@20@01)))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; [eval] old(diz.Ref__b)
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
  ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@18@01)))))))))
  ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@14@01)))))))))))))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@18@01)))))))))))))
  $Snap.unit))
; [eval] diz.Ref__c == old(diz.Ref__c)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (< $Perm.No $k@21@01)))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; [eval] old(diz.Ref__c)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (< $Perm.No $k@17@01)))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(assert (Seq_equal
  ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@18@01)))))))))))
  ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@14@01)))))))))))))))
(pop) ; 2
(set-option :timeout 0)
(push) ; 2
; [exec]
; var __last_barrier: Int
(declare-const __last_barrier@22@01 Int)
; [exec]
; var __flatten_1: Int
(declare-const __flatten_1@23@01 Int)
; [exec]
; var __flatten_2: Ref
(declare-const __flatten_2@24@01 $Ref)
; [exec]
; var __flatten_3: Int
(declare-const __flatten_3@25@01 Int)
; [exec]
; var __flatten_4: Ref
(declare-const __flatten_4@26@01 $Ref)
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
; var __flatten_10: Ref
(declare-const __flatten_10@31@01 $Ref)
; [exec]
; var __flatten_11: Int
(declare-const __flatten_11@32@01 Int)
; [exec]
; var __flatten_12: Ref
(declare-const __flatten_12@33@01 $Ref)
; [exec]
; __last_barrier := 0
; [exec]
; __flatten_2 := diz.Ref__b[tid]
; [eval] diz.Ref__b[tid]
(push) ; 3
(set-option :timeout 10)
(assert (not (< $Perm.No $k@16@01)))
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
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@14@01)))))))))))))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(declare-const __flatten_2@34@01 $Ref)
(assert (=
  __flatten_2@34@01
  (Seq_index
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@14@01)))))))))))
    tid@11@01)))
; [exec]
; __flatten_4 := diz.Ref__c[tid]
; [eval] diz.Ref__c[tid]
(push) ; 3
(set-option :timeout 10)
(assert (not (< $Perm.No $k@17@01)))
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
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@14@01)))))))))))))))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(declare-const __flatten_4@35@01 $Ref)
(assert (=
  __flatten_4@35@01
  (Seq_index
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@14@01)))))))))))))
    tid@11@01)))
; [exec]
; __flatten_3 := __flatten_4.Ref__Integer_value
(push) ; 3
(set-option :timeout 10)
(assert (not (=
  (Seq_index
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@14@01)))))))))))))
    tid@11@01)
  __flatten_4@35@01)))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(declare-const __flatten_3@36@01 Int)
(assert (=
  __flatten_3@36@01
  ($SortWrappers.$SnapToInt ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@14@01))))))))))))))))))
; [exec]
; __flatten_2.Ref__Integer_value := __flatten_3
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (=
  (Seq_index
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@14@01)))))))))))))
    tid@11@01)
  __flatten_2@34@01)))
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
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@14@01)))))))))))
    tid@11@01)
  __flatten_2@34@01)))
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
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@14@01)))))))))))))
    tid@11@01)
  __flatten_2@34@01)))
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
  __flatten_2@34@01)))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(assert (not (= __flatten_2@34@01 $Ref.null)))
; [exec]
; __flatten_1 := Ref__main_barrier(diz, current_thread_id, tcount, gsize, tid,
;   gid, lid, 1, __last_barrier)
; [eval] diz != null
; [eval] current_thread_id >= 0
; [eval] this_barrier == 1 ==> false || last_barrier == 0
; [eval] this_barrier == 1
(set-option :timeout 0)
(push) ; 3
(push) ; 4
(set-option :timeout 10)
(assert (not false))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; [then-branch: 0 | True | live]
; [else-branch: 0 | False | dead]
(set-option :timeout 0)
(push) ; 4
; [then-branch: 0 | True]
; [eval] false || last_barrier == 0
(push) ; 5
; [then-branch: 1 | False | live]
; [else-branch: 1 | True | live]
(push) ; 6
; [then-branch: 1 | False]
(assert false)
(pop) ; 6
(push) ; 6
; [else-branch: 1 | True]
; [eval] last_barrier == 0
(pop) ; 6
(pop) ; 5
; Joined path conditions
; Joined path conditions
(pop) ; 4
(pop) ; 3
; Joined path conditions
; [eval] 0 <= tid
; [eval] tid < tcount
; [eval] tid == lid
; [eval] tcount == gsize
; [eval] gid == 0
(declare-const $k@37@01 $Perm)
(assert ($Perm.isReadVar $k@37@01))
(push) ; 3
(set-option :timeout 10)
(assert (not (not (= $k@15@01 $Perm.No))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(assert (< $k@37@01 $k@15@01))
(assert (<= $Perm.No (- $k@15@01 $k@37@01)))
(assert (<= (- $k@15@01 $k@37@01) $Perm.Write))
(assert (=> (< $Perm.No (- $k@15@01 $k@37@01)) (not (= diz@7@01 $Ref.null))))
; [eval] |diz.Ref__a| == tcount
; [eval] |diz.Ref__a|
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (< $Perm.No $k@15@01)))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(declare-const $k@38@01 $Perm)
(assert ($Perm.isReadVar $k@38@01))
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (not (= $k@16@01 $Perm.No))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(assert (< $k@38@01 $k@16@01))
(assert (<= $Perm.No (- $k@16@01 $k@38@01)))
(assert (<= (- $k@16@01 $k@38@01) $Perm.Write))
(assert (=> (< $Perm.No (- $k@16@01 $k@38@01)) (not (= diz@7@01 $Ref.null))))
; [eval] |diz.Ref__b| == tcount
; [eval] |diz.Ref__b|
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (< $Perm.No $k@16@01)))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(declare-const $k@39@01 $Perm)
(assert ($Perm.isReadVar $k@39@01))
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (not (= $k@17@01 $Perm.No))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(assert (< $k@39@01 $k@17@01))
(assert (<= $Perm.No (- $k@17@01 $k@39@01)))
(assert (<= (- $k@17@01 $k@39@01) $Perm.Write))
(assert (=> (< $Perm.No (- $k@17@01 $k@39@01)) (not (= diz@7@01 $Ref.null))))
; [eval] |diz.Ref__c| == tcount
; [eval] |diz.Ref__c|
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (< $Perm.No $k@17@01)))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; [eval] last_barrier == 1
; [then-branch: 2 | False | dead]
; [else-branch: 2 | True | live]
(set-option :timeout 0)
(push) ; 3
; [else-branch: 2 | True]
; [eval] last_barrier == 0
(push) ; 4
(set-option :timeout 10)
(assert (not false))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; [then-branch: 3 | True | live]
; [else-branch: 3 | False | dead]
(set-option :timeout 0)
(push) ; 4
; [then-branch: 3 | True]
; [eval] diz.Ref__a[tid]
(push) ; 5
(set-option :timeout 10)
(assert (not (< $Perm.No $k@15@01)))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 5
(assert (not (>= tid@11@01 0)))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(push) ; 5
(assert (not (<
  tid@11@01
  (Seq_length
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@14@01)))))))))))))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
; [eval] diz.Ref__b[tid]
(push) ; 5
(set-option :timeout 10)
(assert (not (< $Perm.No $k@16@01)))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 5
(assert (not (>= tid@11@01 0)))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(push) ; 5
(assert (not (<
  tid@11@01
  (Seq_length
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@14@01)))))))))))))))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
; [eval] diz.Ref__c[tid]
(push) ; 5
(set-option :timeout 10)
(assert (not (< $Perm.No $k@17@01)))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 5
(assert (not (>= tid@11@01 0)))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(push) ; 5
(assert (not (<
  tid@11@01
  (Seq_length
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@14@01)))))))))))))))))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(declare-const sys__result@40@01 Int)
(declare-const $t@41@01 $Snap)
(assert (= $t@41@01 ($Snap.combine ($Snap.first $t@41@01) ($Snap.second $t@41@01))))
(assert (= ($Snap.first $t@41@01) $Snap.unit))
; [eval] 0 <= tid
(assert (=
  ($Snap.second $t@41@01)
  ($Snap.combine
    ($Snap.first ($Snap.second $t@41@01))
    ($Snap.second ($Snap.second $t@41@01)))))
(assert (= ($Snap.first ($Snap.second $t@41@01)) $Snap.unit))
; [eval] tid < tcount
(assert (=
  ($Snap.second ($Snap.second $t@41@01))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second $t@41@01)))
    ($Snap.second ($Snap.second ($Snap.second $t@41@01))))))
(assert (= ($Snap.first ($Snap.second ($Snap.second $t@41@01))) $Snap.unit))
; [eval] tid == lid
(assert (=
  ($Snap.second ($Snap.second ($Snap.second $t@41@01)))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@41@01))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@41@01)))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@41@01))))
  $Snap.unit))
; [eval] tcount == gsize
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@41@01))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@41@01)))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@41@01))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@41@01)))))
  $Snap.unit))
; [eval] gid == 0
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@41@01)))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@41@01))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@41@01)))))))))
(declare-const $k@42@01 $Perm)
(assert ($Perm.isReadVar $k@42@01))
(declare-const $t@43@01 Seq<$Ref>)
(assert (and
  (=>
    (< $Perm.No (- $k@15@01 $k@37@01))
    (Seq_equal
      $t@43@01
      ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@14@01)))))))))))
  (=>
    (< $Perm.No $k@42@01)
    (Seq_equal
      $t@43@01
      ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@41@01)))))))))))
(assert (<= $Perm.No (+ (- $k@15@01 $k@37@01) $k@42@01)))
(assert (<= (+ (- $k@15@01 $k@37@01) $k@42@01) $Perm.Write))
(assert (=> (< $Perm.No (+ (- $k@15@01 $k@37@01) $k@42@01)) (not (= diz@7@01 $Ref.null))))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@41@01))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@41@01)))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@41@01))))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@41@01)))))))
  $Snap.unit))
; [eval] |diz.Ref__a| == tcount
; [eval] |diz.Ref__a|
(push) ; 5
(set-option :timeout 10)
(assert (not (< $Perm.No (+ (- $k@15@01 $k@37@01) $k@42@01))))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(assert (= (Seq_length $t@43@01) tcount@9@01))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@41@01)))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@41@01))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@41@01)))))))))))
(declare-const $k@44@01 $Perm)
(assert ($Perm.isReadVar $k@44@01))
(declare-const $t@45@01 Seq<$Ref>)
(assert (and
  (=>
    (< $Perm.No (- $k@16@01 $k@38@01))
    (Seq_equal
      $t@45@01
      ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@14@01)))))))))))))
  (=>
    (< $Perm.No $k@44@01)
    (Seq_equal
      $t@45@01
      ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@41@01)))))))))))))
(assert (<= $Perm.No (+ (- $k@16@01 $k@38@01) $k@44@01)))
(assert (<= (+ (- $k@16@01 $k@38@01) $k@44@01) $Perm.Write))
(assert (=> (< $Perm.No (+ (- $k@16@01 $k@38@01) $k@44@01)) (not (= diz@7@01 $Ref.null))))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@41@01))))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@41@01)))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@41@01))))))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@41@01)))))))))
  $Snap.unit))
; [eval] |diz.Ref__b| == tcount
; [eval] |diz.Ref__b|
(set-option :timeout 0)
(push) ; 5
(set-option :timeout 10)
(assert (not (< $Perm.No (+ (- $k@16@01 $k@38@01) $k@44@01))))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(assert (= (Seq_length $t@45@01) tcount@9@01))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@41@01)))))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@41@01))))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@41@01)))))))))))))
(declare-const $k@46@01 $Perm)
(assert ($Perm.isReadVar $k@46@01))
(declare-const $t@47@01 Seq<$Ref>)
(assert (and
  (=>
    (< $Perm.No (- $k@17@01 $k@39@01))
    (Seq_equal
      $t@47@01
      ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@14@01)))))))))))))))
  (=>
    (< $Perm.No $k@46@01)
    (Seq_equal
      $t@47@01
      ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@41@01)))))))))))))))
(assert (<= $Perm.No (+ (- $k@17@01 $k@39@01) $k@46@01)))
(assert (<= (+ (- $k@17@01 $k@39@01) $k@46@01) $Perm.Write))
(assert (=> (< $Perm.No (+ (- $k@17@01 $k@39@01) $k@46@01)) (not (= diz@7@01 $Ref.null))))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@41@01))))))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@41@01)))))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@41@01))))))))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@41@01)))))))))))
  $Snap.unit))
; [eval] |diz.Ref__c| == tcount
; [eval] |diz.Ref__c|
(set-option :timeout 0)
(push) ; 5
(set-option :timeout 10)
(assert (not (< $Perm.No (+ (- $k@17@01 $k@39@01) $k@46@01))))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(assert (= (Seq_length $t@47@01) tcount@9@01))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@41@01)))))))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@41@01))))))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@41@01)))))))))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@41@01))))))))))))
  $Snap.unit))
; [eval] diz.Ref__a == old(diz.Ref__a)
(set-option :timeout 0)
(push) ; 5
(set-option :timeout 10)
(assert (not (< $Perm.No (+ (- $k@15@01 $k@37@01) $k@42@01))))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
; [eval] old(diz.Ref__a)
(set-option :timeout 0)
(push) ; 5
(set-option :timeout 10)
(assert (not (< $Perm.No $k@15@01)))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(assert (Seq_equal
  $t@43@01
  ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@14@01)))))))))))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@41@01))))))))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@41@01)))))))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@41@01))))))))))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@41@01)))))))))))))
  $Snap.unit))
; [eval] diz.Ref__b == old(diz.Ref__b)
(set-option :timeout 0)
(push) ; 5
(set-option :timeout 10)
(assert (not (< $Perm.No (+ (- $k@16@01 $k@38@01) $k@44@01))))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
; [eval] old(diz.Ref__b)
(set-option :timeout 0)
(push) ; 5
(set-option :timeout 10)
(assert (not (< $Perm.No $k@16@01)))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(assert (Seq_equal
  $t@45@01
  ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@14@01)))))))))))))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@41@01)))))))))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@41@01))))))))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@41@01)))))))))))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@41@01))))))))))))))
  $Snap.unit))
; [eval] diz.Ref__c == old(diz.Ref__c)
(set-option :timeout 0)
(push) ; 5
(set-option :timeout 10)
(assert (not (< $Perm.No (+ (- $k@17@01 $k@39@01) $k@46@01))))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
; [eval] old(diz.Ref__c)
(set-option :timeout 0)
(push) ; 5
(set-option :timeout 10)
(assert (not (< $Perm.No $k@17@01)))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(assert (Seq_equal
  $t@47@01
  ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@14@01)))))))))))))))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@41@01))))))))))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@41@01)))))))))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@41@01))))))))))))))))))
; [eval] sys__result == 1
(set-option :timeout 0)
(push) ; 5
(set-option :timeout 10)
(assert (not (not (= sys__result@40@01 1))))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 5
(set-option :timeout 10)
(assert (not (= sys__result@40@01 1)))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
; [then-branch: 4 | sys__result@40@01 == 1 | live]
; [else-branch: 4 | sys__result@40@01 != 1 | live]
(set-option :timeout 0)
(push) ; 5
; [then-branch: 4 | sys__result@40@01 == 1]
(assert (= sys__result@40@01 1))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@41@01)))))))))))))))
  ($Snap.combine
    ($Snap.first ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@41@01))))))))))))))))
    ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@41@01)))))))))))))))))))
; [eval] diz.Ref__a[tid]
(push) ; 6
(set-option :timeout 10)
(assert (not (< $Perm.No (+ (- $k@15@01 $k@37@01) $k@42@01))))
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
(assert (not (< tid@11@01 (Seq_length $t@43@01))))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(assert (not (= (Seq_index $t@43@01 tid@11@01) $Ref.null)))
(assert (=
  ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@41@01))))))))))))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@41@01)))))))))))))))))
    ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@41@01))))))))))))))))))))
; [eval] diz.Ref__b[tid]
(push) ; 6
(set-option :timeout 10)
(assert (not (< $Perm.No (+ (- $k@16@01 $k@38@01) $k@44@01))))
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
(assert (not (< tid@11@01 (Seq_length $t@45@01))))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(push) ; 6
(set-option :timeout 10)
(assert (not (= (Seq_index $t@43@01 tid@11@01) (Seq_index $t@45@01 tid@11@01))))
(check-sat)
; unknown
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(assert (not (= (Seq_index $t@45@01 tid@11@01) $Ref.null)))
; [eval] tid > 0
(set-option :timeout 0)
(push) ; 6
(set-option :timeout 10)
(assert (not (not (> tid@11@01 0))))
(check-sat)
; unknown
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 6
(set-option :timeout 10)
(assert (not (> tid@11@01 0)))
(check-sat)
; unknown
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
; [then-branch: 5 | tid@11@01 > 0 | live]
; [else-branch: 5 | !(tid@11@01 > 0) | live]
(set-option :timeout 0)
(push) ; 6
; [then-branch: 5 | tid@11@01 > 0]
(assert (> tid@11@01 0))
; [eval] diz.Ref__b[tid - 1]
(push) ; 7
(set-option :timeout 10)
(assert (not (< $Perm.No (+ (- $k@16@01 $k@38@01) $k@44@01))))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
; [eval] tid - 1
(set-option :timeout 0)
(push) ; 7
(assert (not (>= (- tid@11@01 1) 0)))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(push) ; 7
(assert (not (< (- tid@11@01 1) (Seq_length $t@45@01))))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(push) ; 7
(set-option :timeout 10)
(assert (not (= (Seq_index $t@45@01 tid@11@01) (Seq_index $t@45@01 (- tid@11@01 1)))))
(check-sat)
; unknown
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 7
(set-option :timeout 10)
(assert (not (= (Seq_index $t@43@01 tid@11@01) (Seq_index $t@45@01 (- tid@11@01 1)))))
(check-sat)
; unknown
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(assert (not (= (Seq_index $t@45@01 (- tid@11@01 1)) $Ref.null)))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@41@01)))))))))))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@41@01))))))))))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@41@01)))))))))))))))))))
; [eval] sys__result == 0
(set-option :timeout 0)
(push) ; 7
(set-option :timeout 10)
(assert (not (not (= sys__result@40@01 0))))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
; [then-branch: 6 | sys__result@40@01 == 0 | dead]
; [else-branch: 6 | sys__result@40@01 != 0 | live]
(set-option :timeout 0)
(push) ; 7
; [else-branch: 6 | sys__result@40@01 != 0]
(assert (not (= sys__result@40@01 0)))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@41@01))))))))))))))))
  $Snap.unit))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@41@01))))))))))))))))
  $Snap.unit))
; [eval] sys__result == this_barrier
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
; [exec]
; __last_barrier := __flatten_1
; [eval] tid > 0
(set-option :timeout 0)
(push) ; 8
(set-option :timeout 10)
(assert (not (not (> tid@11@01 0))))
(check-sat)
; unknown
(pop) ; 8
; 0.00s
; (get-info :all-statistics)
; [then-branch: 7 | tid@11@01 > 0 | live]
; [else-branch: 7 | !(tid@11@01 > 0) | dead]
(set-option :timeout 0)
(push) ; 8
; [then-branch: 7 | tid@11@01 > 0]
; [exec]
; __flatten_6 := diz.Ref__a[tid]
; [eval] diz.Ref__a[tid]
(push) ; 9
(set-option :timeout 10)
(assert (not (< $Perm.No (+ (- $k@15@01 $k@37@01) $k@42@01))))
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
(assert (not (< tid@11@01 (Seq_length $t@43@01))))
(check-sat)
; unsat
(pop) ; 9
; 0.00s
; (get-info :all-statistics)
(declare-const __flatten_6@48@01 $Ref)
(assert (= __flatten_6@48@01 (Seq_index $t@43@01 tid@11@01)))
; [exec]
; __flatten_8 := diz.Ref__b[tid - 1]
; [eval] diz.Ref__b[tid - 1]
(push) ; 9
(set-option :timeout 10)
(assert (not (< $Perm.No (+ (- $k@16@01 $k@38@01) $k@44@01))))
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
(assert (not (< (- tid@11@01 1) (Seq_length $t@45@01))))
(check-sat)
; unsat
(pop) ; 9
; 0.00s
; (get-info :all-statistics)
(declare-const __flatten_8@49@01 $Ref)
(assert (= __flatten_8@49@01 (Seq_index $t@45@01 (- tid@11@01 1))))
; [exec]
; __flatten_9 := diz.Ref__b[tid]
; [eval] diz.Ref__b[tid]
(push) ; 9
(set-option :timeout 10)
(assert (not (< $Perm.No (+ (- $k@16@01 $k@38@01) $k@44@01))))
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
(assert (not (< tid@11@01 (Seq_length $t@45@01))))
(check-sat)
; unsat
(pop) ; 9
; 0.00s
; (get-info :all-statistics)
(declare-const __flatten_9@50@01 $Ref)
(assert (= __flatten_9@50@01 (Seq_index $t@45@01 tid@11@01)))
; [exec]
; __flatten_7 := __flatten_8.Ref__Integer_value +
;   __flatten_9.Ref__Integer_value
; [eval] __flatten_8.Ref__Integer_value + __flatten_9.Ref__Integer_value
(push) ; 9
(set-option :timeout 10)
(assert (not (= (Seq_index $t@45@01 (- tid@11@01 1)) __flatten_8@49@01)))
(check-sat)
; unsat
(pop) ; 9
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 9
(set-option :timeout 10)
(assert (not (= (Seq_index $t@45@01 (- tid@11@01 1)) __flatten_9@50@01)))
(check-sat)
; unknown
(pop) ; 9
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 9
(set-option :timeout 10)
(assert (not (= (Seq_index $t@45@01 tid@11@01) __flatten_9@50@01)))
(check-sat)
; unsat
(pop) ; 9
; 0.00s
; (get-info :all-statistics)
(declare-const __flatten_7@51@01 Int)
(assert (=
  __flatten_7@51@01
  (+
    ($SortWrappers.$SnapToInt ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@41@01))))))))))))))))))
    ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@41@01)))))))))))))))))))))
; [exec]
; __flatten_6.Ref__Integer_value := __flatten_7
(set-option :timeout 0)
(push) ; 9
(set-option :timeout 10)
(assert (not (= (Seq_index $t@45@01 (- tid@11@01 1)) __flatten_6@48@01)))
(check-sat)
; unknown
(pop) ; 9
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 9
(set-option :timeout 10)
(assert (not (= (Seq_index $t@45@01 tid@11@01) __flatten_6@48@01)))
(check-sat)
; unknown
(pop) ; 9
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 9
(set-option :timeout 10)
(assert (not (= (Seq_index $t@43@01 tid@11@01) __flatten_6@48@01)))
(check-sat)
; unsat
(pop) ; 9
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 9
(set-option :timeout 10)
(assert (not (= (Seq_index $t@45@01 (- tid@11@01 1)) __flatten_6@48@01)))
(check-sat)
; unknown
(pop) ; 9
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 9
(set-option :timeout 10)
(assert (not (= (Seq_index $t@45@01 tid@11@01) __flatten_6@48@01)))
(check-sat)
; unknown
(pop) ; 9
; 0.00s
; (get-info :all-statistics)
(assert (not (= __flatten_6@48@01 $Ref.null)))
; [eval] 0 <= tid
; [eval] tid < tcount
; [eval] tid == lid
; [eval] tcount == gsize
; [eval] gid == 0
(declare-const $k@52@01 $Perm)
(assert ($Perm.isReadVar $k@52@01))
(set-option :timeout 0)
(push) ; 9
(set-option :timeout 10)
(assert (not (not (= (+ (- $k@15@01 $k@37@01) $k@42@01) $Perm.No))))
(check-sat)
; unsat
(pop) ; 9
; 0.00s
; (get-info :all-statistics)
(assert (< $k@52@01 (+ (- $k@15@01 $k@37@01) $k@42@01)))
(assert (<= $Perm.No (- (+ (- $k@15@01 $k@37@01) $k@42@01) $k@52@01)))
(assert (<= (- (+ (- $k@15@01 $k@37@01) $k@42@01) $k@52@01) $Perm.Write))
(assert (=>
  (< $Perm.No (- (+ (- $k@15@01 $k@37@01) $k@42@01) $k@52@01))
  (not (= diz@7@01 $Ref.null))))
; [eval] |diz.Ref__a| == tcount
; [eval] |diz.Ref__a|
(set-option :timeout 0)
(push) ; 9
(set-option :timeout 10)
(assert (not (< $Perm.No (+ (- $k@15@01 $k@37@01) $k@42@01))))
(check-sat)
; unsat
(pop) ; 9
; 0.00s
; (get-info :all-statistics)
(declare-const $k@53@01 $Perm)
(assert ($Perm.isReadVar $k@53@01))
(set-option :timeout 0)
(push) ; 9
(set-option :timeout 10)
(assert (not (not (= (+ (- $k@16@01 $k@38@01) $k@44@01) $Perm.No))))
(check-sat)
; unsat
(pop) ; 9
; 0.00s
; (get-info :all-statistics)
(assert (< $k@53@01 (+ (- $k@16@01 $k@38@01) $k@44@01)))
(assert (<= $Perm.No (- (+ (- $k@16@01 $k@38@01) $k@44@01) $k@53@01)))
(assert (<= (- (+ (- $k@16@01 $k@38@01) $k@44@01) $k@53@01) $Perm.Write))
(assert (=>
  (< $Perm.No (- (+ (- $k@16@01 $k@38@01) $k@44@01) $k@53@01))
  (not (= diz@7@01 $Ref.null))))
; [eval] |diz.Ref__b| == tcount
; [eval] |diz.Ref__b|
(set-option :timeout 0)
(push) ; 9
(set-option :timeout 10)
(assert (not (< $Perm.No (+ (- $k@16@01 $k@38@01) $k@44@01))))
(check-sat)
; unsat
(pop) ; 9
; 0.00s
; (get-info :all-statistics)
(declare-const $k@54@01 $Perm)
(assert ($Perm.isReadVar $k@54@01))
(set-option :timeout 0)
(push) ; 9
(set-option :timeout 10)
(assert (not (not (= (+ (- $k@17@01 $k@39@01) $k@46@01) $Perm.No))))
(check-sat)
; unsat
(pop) ; 9
; 0.00s
; (get-info :all-statistics)
(assert (< $k@54@01 (+ (- $k@17@01 $k@39@01) $k@46@01)))
(assert (<= $Perm.No (- (+ (- $k@17@01 $k@39@01) $k@46@01) $k@54@01)))
(assert (<= (- (+ (- $k@17@01 $k@39@01) $k@46@01) $k@54@01) $Perm.Write))
(assert (=>
  (< $Perm.No (- (+ (- $k@17@01 $k@39@01) $k@46@01) $k@54@01))
  (not (= diz@7@01 $Ref.null))))
; [eval] |diz.Ref__c| == tcount
; [eval] |diz.Ref__c|
(set-option :timeout 0)
(push) ; 9
(set-option :timeout 10)
(assert (not (< $Perm.No (+ (- $k@17@01 $k@39@01) $k@46@01))))
(check-sat)
; unsat
(pop) ; 9
; 0.00s
; (get-info :all-statistics)
; [eval] diz.Ref__a == old(diz.Ref__a)
(set-option :timeout 0)
(push) ; 9
(set-option :timeout 10)
(assert (not (< $Perm.No (+ (- $k@15@01 $k@37@01) $k@42@01))))
(check-sat)
; unsat
(pop) ; 9
; 0.00s
; (get-info :all-statistics)
; [eval] old(diz.Ref__a)
(set-option :timeout 0)
(push) ; 9
(set-option :timeout 10)
(assert (not (< $Perm.No $k@15@01)))
(check-sat)
; unsat
(pop) ; 9
; 0.00s
; (get-info :all-statistics)
; [eval] diz.Ref__b == old(diz.Ref__b)
(set-option :timeout 0)
(push) ; 9
(set-option :timeout 10)
(assert (not (< $Perm.No (+ (- $k@16@01 $k@38@01) $k@44@01))))
(check-sat)
; unsat
(pop) ; 9
; 0.00s
; (get-info :all-statistics)
; [eval] old(diz.Ref__b)
(set-option :timeout 0)
(push) ; 9
(set-option :timeout 10)
(assert (not (< $Perm.No $k@16@01)))
(check-sat)
; unsat
(pop) ; 9
; 0.00s
; (get-info :all-statistics)
; [eval] diz.Ref__c == old(diz.Ref__c)
(set-option :timeout 0)
(push) ; 9
(set-option :timeout 10)
(assert (not (< $Perm.No (+ (- $k@17@01 $k@39@01) $k@46@01))))
(check-sat)
; unsat
(pop) ; 9
; 0.00s
; (get-info :all-statistics)
; [eval] old(diz.Ref__c)
(set-option :timeout 0)
(push) ; 9
(set-option :timeout 10)
(assert (not (< $Perm.No $k@17@01)))
(check-sat)
; unsat
(pop) ; 9
; 0.00s
; (get-info :all-statistics)
(pop) ; 8
; [eval] !(tid > 0)
; [eval] tid > 0
; [then-branch: 8 | !(tid@11@01 > 0) | dead]
; [else-branch: 8 | tid@11@01 > 0 | live]
(set-option :timeout 0)
(push) ; 8
; [else-branch: 8 | tid@11@01 > 0]
(pop) ; 8
(pop) ; 7
(pop) ; 6
(push) ; 6
; [else-branch: 5 | !(tid@11@01 > 0)]
(assert (not (> tid@11@01 0)))
(assert (=
  ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@41@01)))))))))))))))))
  $Snap.unit))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@41@01)))))))))))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@41@01))))))))))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@41@01)))))))))))))))))))
; [eval] sys__result == 0
(push) ; 7
(set-option :timeout 10)
(assert (not (not (= sys__result@40@01 0))))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
; [then-branch: 9 | sys__result@40@01 == 0 | dead]
; [else-branch: 9 | sys__result@40@01 != 0 | live]
(set-option :timeout 0)
(push) ; 7
; [else-branch: 9 | sys__result@40@01 != 0]
(assert (not (= sys__result@40@01 0)))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@41@01))))))))))))))))
  $Snap.unit))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@41@01))))))))))))))))
  $Snap.unit))
; [eval] sys__result == this_barrier
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
; [exec]
; __last_barrier := __flatten_1
; [eval] tid > 0
; [then-branch: 10 | tid@11@01 > 0 | dead]
; [else-branch: 10 | !(tid@11@01 > 0) | live]
(set-option :timeout 0)
(push) ; 8
; [else-branch: 10 | !(tid@11@01 > 0)]
(pop) ; 8
; [eval] !(tid > 0)
; [eval] tid > 0
(push) ; 8
(set-option :timeout 10)
(assert (not (> tid@11@01 0)))
(check-sat)
; unknown
(pop) ; 8
; 0.00s
; (get-info :all-statistics)
; [then-branch: 11 | !(tid@11@01 > 0) | live]
; [else-branch: 11 | tid@11@01 > 0 | dead]
(set-option :timeout 0)
(push) ; 8
; [then-branch: 11 | !(tid@11@01 > 0)]
; [exec]
; __flatten_10 := diz.Ref__a[tid]
; [eval] diz.Ref__a[tid]
(push) ; 9
(set-option :timeout 10)
(assert (not (< $Perm.No (+ (- $k@15@01 $k@37@01) $k@42@01))))
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
(assert (not (< tid@11@01 (Seq_length $t@43@01))))
(check-sat)
; unsat
(pop) ; 9
; 0.00s
; (get-info :all-statistics)
(declare-const __flatten_10@55@01 $Ref)
(assert (= __flatten_10@55@01 (Seq_index $t@43@01 tid@11@01)))
; [exec]
; __flatten_12 := diz.Ref__b[tid]
; [eval] diz.Ref__b[tid]
(push) ; 9
(set-option :timeout 10)
(assert (not (< $Perm.No (+ (- $k@16@01 $k@38@01) $k@44@01))))
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
(assert (not (< tid@11@01 (Seq_length $t@45@01))))
(check-sat)
; unsat
(pop) ; 9
; 0.00s
; (get-info :all-statistics)
(declare-const __flatten_12@56@01 $Ref)
(assert (= __flatten_12@56@01 (Seq_index $t@45@01 tid@11@01)))
; [exec]
; __flatten_11 := __flatten_12.Ref__Integer_value
(push) ; 9
(set-option :timeout 10)
(assert (not (= (Seq_index $t@45@01 tid@11@01) __flatten_12@56@01)))
(check-sat)
; unsat
(pop) ; 9
; 0.00s
; (get-info :all-statistics)
(declare-const __flatten_11@57@01 Int)
(assert (=
  __flatten_11@57@01
  ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@41@01))))))))))))))))))))
; [exec]
; __flatten_10.Ref__Integer_value := __flatten_11
(set-option :timeout 0)
(push) ; 9
(set-option :timeout 10)
(assert (not (= (Seq_index $t@45@01 tid@11@01) __flatten_10@55@01)))
(check-sat)
; unknown
(pop) ; 9
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 9
(set-option :timeout 10)
(assert (not (= (Seq_index $t@43@01 tid@11@01) __flatten_10@55@01)))
(check-sat)
; unsat
(pop) ; 9
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 9
(set-option :timeout 10)
(assert (not (= (Seq_index $t@45@01 tid@11@01) __flatten_10@55@01)))
(check-sat)
; unknown
(pop) ; 9
; 0.00s
; (get-info :all-statistics)
(assert (not (= __flatten_10@55@01 $Ref.null)))
; [eval] 0 <= tid
; [eval] tid < tcount
; [eval] tid == lid
; [eval] tcount == gsize
; [eval] gid == 0
(declare-const $k@58@01 $Perm)
(assert ($Perm.isReadVar $k@58@01))
(set-option :timeout 0)
(push) ; 9
(set-option :timeout 10)
(assert (not (not (= (+ (- $k@15@01 $k@37@01) $k@42@01) $Perm.No))))
(check-sat)
; unsat
(pop) ; 9
; 0.00s
; (get-info :all-statistics)
(assert (< $k@58@01 (+ (- $k@15@01 $k@37@01) $k@42@01)))
(assert (<= $Perm.No (- (+ (- $k@15@01 $k@37@01) $k@42@01) $k@58@01)))
(assert (<= (- (+ (- $k@15@01 $k@37@01) $k@42@01) $k@58@01) $Perm.Write))
(assert (=>
  (< $Perm.No (- (+ (- $k@15@01 $k@37@01) $k@42@01) $k@58@01))
  (not (= diz@7@01 $Ref.null))))
; [eval] |diz.Ref__a| == tcount
; [eval] |diz.Ref__a|
(set-option :timeout 0)
(push) ; 9
(set-option :timeout 10)
(assert (not (< $Perm.No (+ (- $k@15@01 $k@37@01) $k@42@01))))
(check-sat)
; unsat
(pop) ; 9
; 0.00s
; (get-info :all-statistics)
(declare-const $k@59@01 $Perm)
(assert ($Perm.isReadVar $k@59@01))
(set-option :timeout 0)
(push) ; 9
(set-option :timeout 10)
(assert (not (not (= (+ (- $k@16@01 $k@38@01) $k@44@01) $Perm.No))))
(check-sat)
; unsat
(pop) ; 9
; 0.00s
; (get-info :all-statistics)
(assert (< $k@59@01 (+ (- $k@16@01 $k@38@01) $k@44@01)))
(assert (<= $Perm.No (- (+ (- $k@16@01 $k@38@01) $k@44@01) $k@59@01)))
(assert (<= (- (+ (- $k@16@01 $k@38@01) $k@44@01) $k@59@01) $Perm.Write))
(assert (=>
  (< $Perm.No (- (+ (- $k@16@01 $k@38@01) $k@44@01) $k@59@01))
  (not (= diz@7@01 $Ref.null))))
; [eval] |diz.Ref__b| == tcount
; [eval] |diz.Ref__b|
(set-option :timeout 0)
(push) ; 9
(set-option :timeout 10)
(assert (not (< $Perm.No (+ (- $k@16@01 $k@38@01) $k@44@01))))
(check-sat)
; unsat
(pop) ; 9
; 0.00s
; (get-info :all-statistics)
(declare-const $k@60@01 $Perm)
(assert ($Perm.isReadVar $k@60@01))
(set-option :timeout 0)
(push) ; 9
(set-option :timeout 10)
(assert (not (not (= (+ (- $k@17@01 $k@39@01) $k@46@01) $Perm.No))))
(check-sat)
; unsat
(pop) ; 9
; 0.00s
; (get-info :all-statistics)
(assert (< $k@60@01 (+ (- $k@17@01 $k@39@01) $k@46@01)))
(assert (<= $Perm.No (- (+ (- $k@17@01 $k@39@01) $k@46@01) $k@60@01)))
(assert (<= (- (+ (- $k@17@01 $k@39@01) $k@46@01) $k@60@01) $Perm.Write))
(assert (=>
  (< $Perm.No (- (+ (- $k@17@01 $k@39@01) $k@46@01) $k@60@01))
  (not (= diz@7@01 $Ref.null))))
; [eval] |diz.Ref__c| == tcount
; [eval] |diz.Ref__c|
(set-option :timeout 0)
(push) ; 9
(set-option :timeout 10)
(assert (not (< $Perm.No (+ (- $k@17@01 $k@39@01) $k@46@01))))
(check-sat)
; unsat
(pop) ; 9
; 0.00s
; (get-info :all-statistics)
; [eval] diz.Ref__a == old(diz.Ref__a)
(set-option :timeout 0)
(push) ; 9
(set-option :timeout 10)
(assert (not (< $Perm.No (+ (- $k@15@01 $k@37@01) $k@42@01))))
(check-sat)
; unsat
(pop) ; 9
; 0.00s
; (get-info :all-statistics)
; [eval] old(diz.Ref__a)
(set-option :timeout 0)
(push) ; 9
(set-option :timeout 10)
(assert (not (< $Perm.No $k@15@01)))
(check-sat)
; unsat
(pop) ; 9
; 0.00s
; (get-info :all-statistics)
; [eval] diz.Ref__b == old(diz.Ref__b)
(set-option :timeout 0)
(push) ; 9
(set-option :timeout 10)
(assert (not (< $Perm.No (+ (- $k@16@01 $k@38@01) $k@44@01))))
(check-sat)
; unsat
(pop) ; 9
; 0.00s
; (get-info :all-statistics)
; [eval] old(diz.Ref__b)
(set-option :timeout 0)
(push) ; 9
(set-option :timeout 10)
(assert (not (< $Perm.No $k@16@01)))
(check-sat)
; unsat
(pop) ; 9
; 0.00s
; (get-info :all-statistics)
; [eval] diz.Ref__c == old(diz.Ref__c)
(set-option :timeout 0)
(push) ; 9
(set-option :timeout 10)
(assert (not (< $Perm.No (+ (- $k@17@01 $k@39@01) $k@46@01))))
(check-sat)
; unsat
(pop) ; 9
; 0.00s
; (get-info :all-statistics)
; [eval] old(diz.Ref__c)
(set-option :timeout 0)
(push) ; 9
(set-option :timeout 10)
(assert (not (< $Perm.No $k@17@01)))
(check-sat)
; unsat
(pop) ; 9
; 0.00s
; (get-info :all-statistics)
(pop) ; 8
(pop) ; 7
(pop) ; 6
(pop) ; 5
(set-option :timeout 0)
(push) ; 5
; [else-branch: 4 | sys__result@40@01 != 1]
(assert (not (= sys__result@40@01 1)))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@41@01)))))))))))))))
  $Snap.unit))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@41@01)))))))))))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@41@01))))))))))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@41@01)))))))))))))))))))
; [eval] sys__result == 0
(push) ; 6
(set-option :timeout 10)
(assert (not (not (= sys__result@40@01 0))))
(check-sat)
; unknown
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 6
(set-option :timeout 10)
(assert (not (= sys__result@40@01 0)))
(check-sat)
; unknown
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
; [then-branch: 12 | sys__result@40@01 == 0 | live]
; [else-branch: 12 | sys__result@40@01 != 0 | live]
(set-option :timeout 0)
(push) ; 6
; [then-branch: 12 | sys__result@40@01 == 0]
(assert (= sys__result@40@01 0))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@41@01))))))))))))))))
  ($Snap.combine
    ($Snap.first ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@41@01)))))))))))))))))
    ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@41@01))))))))))))))))))))
; [eval] diz.Ref__a[tid]
(push) ; 7
(set-option :timeout 10)
(assert (not (< $Perm.No (+ (- $k@15@01 $k@37@01) $k@42@01))))
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
(assert (not (< tid@11@01 (Seq_length $t@43@01))))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(assert (not (= (Seq_index $t@43@01 tid@11@01) $Ref.null)))
(assert (=
  ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@41@01)))))))))))))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@41@01))))))))))))))))))
    ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@41@01)))))))))))))))))))))
; [eval] diz.Ref__b[tid]
(push) ; 7
(set-option :timeout 10)
(assert (not (< $Perm.No (+ (- $k@16@01 $k@38@01) $k@44@01))))
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
(assert (not (< tid@11@01 (Seq_length $t@45@01))))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(push) ; 7
(set-option :timeout 10)
(assert (not (= (Seq_index $t@43@01 tid@11@01) (Seq_index $t@45@01 tid@11@01))))
(check-sat)
; unknown
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(assert (not (= (Seq_index $t@45@01 tid@11@01) $Ref.null)))
; [eval] diz.Ref__c[tid]
(set-option :timeout 0)
(push) ; 7
(set-option :timeout 10)
(assert (not (< $Perm.No (+ (- $k@17@01 $k@39@01) $k@46@01))))
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
(assert (not (< tid@11@01 (Seq_length $t@47@01))))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(push) ; 7
(set-option :timeout 10)
(assert (not (= (Seq_index $t@45@01 tid@11@01) (Seq_index $t@47@01 tid@11@01))))
(check-sat)
; unknown
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 7
(set-option :timeout 10)
(assert (not (= (Seq_index $t@43@01 tid@11@01) (Seq_index $t@47@01 tid@11@01))))
(check-sat)
; unknown
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(assert (not (= (Seq_index $t@47@01 tid@11@01) $Ref.null)))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@41@01))))))))))))))))
  $Snap.unit))
; [eval] sys__result == this_barrier
(assert (= sys__result@40@01 1))
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unsat
; [exec]
; __last_barrier := __flatten_1
; [eval] tid > 0
(set-option :timeout 0)
(push) ; 7
(set-option :timeout 10)
(assert (not (not (> tid@11@01 0))))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
; [then-branch: 13 | tid@11@01 > 0 | dead]
; [else-branch: 13 | !(tid@11@01 > 0) | live]
(set-option :timeout 0)
(push) ; 7
; [else-branch: 13 | !(tid@11@01 > 0)]
(assert (not (> tid@11@01 0)))
(pop) ; 7
; [eval] !(tid > 0)
; [eval] tid > 0
(push) ; 7
(set-option :timeout 10)
(assert (not (> tid@11@01 0)))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
; [then-branch: 14 | !(tid@11@01 > 0) | dead]
; [else-branch: 14 | tid@11@01 > 0 | live]
(set-option :timeout 0)
(push) ; 7
; [else-branch: 14 | tid@11@01 > 0]
(assert (> tid@11@01 0))
(pop) ; 7
(pop) ; 6
(push) ; 6
; [else-branch: 12 | sys__result@40@01 != 0]
(assert (not (= sys__result@40@01 0)))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@41@01))))))))))))))))
  $Snap.unit))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@41@01))))))))))))))))
  $Snap.unit))
; [eval] sys__result == this_barrier
(assert (= sys__result@40@01 1))
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unsat
; [exec]
; __last_barrier := __flatten_1
; [eval] tid > 0
(set-option :timeout 0)
(push) ; 7
(set-option :timeout 10)
(assert (not (not (> tid@11@01 0))))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
; [then-branch: 15 | tid@11@01 > 0 | dead]
; [else-branch: 15 | !(tid@11@01 > 0) | live]
(set-option :timeout 0)
(push) ; 7
; [else-branch: 15 | !(tid@11@01 > 0)]
(assert (not (> tid@11@01 0)))
(pop) ; 7
; [eval] !(tid > 0)
; [eval] tid > 0
(push) ; 7
(set-option :timeout 10)
(assert (not (> tid@11@01 0)))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
; [then-branch: 16 | !(tid@11@01 > 0) | dead]
; [else-branch: 16 | tid@11@01 > 0 | live]
(set-option :timeout 0)
(push) ; 7
; [else-branch: 16 | tid@11@01 > 0]
(assert (> tid@11@01 0))
(pop) ; 7
(pop) ; 6
(pop) ; 5
(pop) ; 4
(pop) ; 3
(pop) ; 2
(pop) ; 1
; ---------- Ref__main_barrier ----------
(declare-const diz@61@01 $Ref)
(declare-const current_thread_id@62@01 Int)
(declare-const tcount@63@01 Int)
(declare-const gsize@64@01 Int)
(declare-const tid@65@01 Int)
(declare-const gid@66@01 Int)
(declare-const lid@67@01 Int)
(declare-const this_barrier@68@01 Int)
(declare-const last_barrier@69@01 Int)
(declare-const sys__result@70@01 Int)
(declare-const diz@71@01 $Ref)
(declare-const current_thread_id@72@01 Int)
(declare-const tcount@73@01 Int)
(declare-const gsize@74@01 Int)
(declare-const tid@75@01 Int)
(declare-const gid@76@01 Int)
(declare-const lid@77@01 Int)
(declare-const this_barrier@78@01 Int)
(declare-const last_barrier@79@01 Int)
(declare-const sys__result@80@01 Int)
(push) ; 1
(declare-const $t@81@01 $Snap)
(assert (= $t@81@01 ($Snap.combine ($Snap.first $t@81@01) ($Snap.second $t@81@01))))
(assert (= ($Snap.first $t@81@01) $Snap.unit))
; [eval] diz != null
(assert (not (= diz@71@01 $Ref.null)))
(assert (=
  ($Snap.second $t@81@01)
  ($Snap.combine
    ($Snap.first ($Snap.second $t@81@01))
    ($Snap.second ($Snap.second $t@81@01)))))
(assert (= ($Snap.first ($Snap.second $t@81@01)) $Snap.unit))
; [eval] current_thread_id >= 0
(assert (>= current_thread_id@72@01 0))
(assert (=
  ($Snap.second ($Snap.second $t@81@01))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second $t@81@01)))
    ($Snap.second ($Snap.second ($Snap.second $t@81@01))))))
(assert (= ($Snap.first ($Snap.second ($Snap.second $t@81@01))) $Snap.unit))
; [eval] this_barrier == 1 ==> false || last_barrier == 0
; [eval] this_barrier == 1
(push) ; 2
(push) ; 3
(set-option :timeout 10)
(assert (not (not (= this_barrier@78@01 1))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (= this_barrier@78@01 1)))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; [then-branch: 17 | this_barrier@78@01 == 1 | live]
; [else-branch: 17 | this_barrier@78@01 != 1 | live]
(set-option :timeout 0)
(push) ; 3
; [then-branch: 17 | this_barrier@78@01 == 1]
(assert (= this_barrier@78@01 1))
; [eval] false || last_barrier == 0
(push) ; 4
; [then-branch: 18 | False | live]
; [else-branch: 18 | True | live]
(push) ; 5
; [then-branch: 18 | False]
(assert false)
(pop) ; 5
(push) ; 5
; [else-branch: 18 | True]
; [eval] last_barrier == 0
(pop) ; 5
(pop) ; 4
; Joined path conditions
; Joined path conditions
(pop) ; 3
(push) ; 3
; [else-branch: 17 | this_barrier@78@01 != 1]
(assert (not (= this_barrier@78@01 1)))
(pop) ; 3
(pop) ; 2
; Joined path conditions
; Joined path conditions
(assert (or (not (= this_barrier@78@01 1)) (= this_barrier@78@01 1)))
(assert (=> (= this_barrier@78@01 1) (= last_barrier@79@01 0)))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second $t@81@01)))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@81@01))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@81@01)))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@81@01))))
  $Snap.unit))
; [eval] 0 <= tid
(assert (<= 0 tid@75@01))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@81@01))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@81@01)))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@81@01))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@81@01)))))
  $Snap.unit))
; [eval] tid < tcount
(assert (< tid@75@01 tcount@73@01))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@81@01)))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@81@01))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@81@01)))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@81@01))))))
  $Snap.unit))
; [eval] tid == lid
(assert (= tid@75@01 lid@77@01))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@81@01))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@81@01)))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@81@01))))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@81@01)))))))
  $Snap.unit))
; [eval] tcount == gsize
(assert (= tcount@73@01 gsize@74@01))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@81@01)))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@81@01))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@81@01)))))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@81@01))))))))
  $Snap.unit))
; [eval] gid == 0
(assert (= gid@76@01 0))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@81@01))))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@81@01)))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@81@01))))))))))))
(declare-const $k@82@01 $Perm)
(assert ($Perm.isReadVar $k@82@01))
(assert (<= $Perm.No $k@82@01))
(assert (<= $k@82@01 $Perm.Write))
(assert (=> (< $Perm.No $k@82@01) (not (= diz@71@01 $Ref.null))))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@81@01)))))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@81@01))))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@81@01)))))))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@81@01))))))))))
  $Snap.unit))
; [eval] |diz.Ref__a| == tcount
; [eval] |diz.Ref__a|
(push) ; 2
(set-option :timeout 10)
(assert (not (< $Perm.No $k@82@01)))
(check-sat)
; unsat
(pop) ; 2
; 0.00s
; (get-info :all-statistics)
(assert (=
  (Seq_length
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@81@01)))))))))))
  tcount@73@01))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@81@01))))))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@81@01)))))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@81@01))))))))))))))
(declare-const $k@83@01 $Perm)
(assert ($Perm.isReadVar $k@83@01))
(assert (<= $Perm.No $k@83@01))
(assert (<= $k@83@01 $Perm.Write))
(assert (=> (< $Perm.No $k@83@01) (not (= diz@71@01 $Ref.null))))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@81@01)))))))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@81@01))))))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@81@01)))))))))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@81@01))))))))))))
  $Snap.unit))
; [eval] |diz.Ref__b| == tcount
; [eval] |diz.Ref__b|
(set-option :timeout 0)
(push) ; 2
(set-option :timeout 10)
(assert (not (< $Perm.No $k@83@01)))
(check-sat)
; unsat
(pop) ; 2
; 0.00s
; (get-info :all-statistics)
(assert (=
  (Seq_length
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@81@01)))))))))))))
  tcount@73@01))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@81@01))))))))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@81@01)))))))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@81@01))))))))))))))))
(declare-const $k@84@01 $Perm)
(assert ($Perm.isReadVar $k@84@01))
(assert (<= $Perm.No $k@84@01))
(assert (<= $k@84@01 $Perm.Write))
(assert (=> (< $Perm.No $k@84@01) (not (= diz@71@01 $Ref.null))))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@81@01)))))))))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@81@01))))))))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@81@01)))))))))))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@81@01))))))))))))))
  $Snap.unit))
; [eval] |diz.Ref__c| == tcount
; [eval] |diz.Ref__c|
(set-option :timeout 0)
(push) ; 2
(set-option :timeout 10)
(assert (not (< $Perm.No $k@84@01)))
(check-sat)
; unsat
(pop) ; 2
; 0.00s
; (get-info :all-statistics)
(assert (=
  (Seq_length
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@81@01)))))))))))))))
  tcount@73@01))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@81@01))))))))))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@81@01)))))))))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@81@01))))))))))))))))))
; [eval] last_barrier == 1
(set-option :timeout 0)
(push) ; 2
(set-option :timeout 10)
(assert (not (not (= last_barrier@79@01 1))))
(check-sat)
; unknown
(pop) ; 2
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 2
(set-option :timeout 10)
(assert (not (= last_barrier@79@01 1)))
(check-sat)
; unknown
(pop) ; 2
; 0.00s
; (get-info :all-statistics)
; [then-branch: 19 | last_barrier@79@01 == 1 | live]
; [else-branch: 19 | last_barrier@79@01 != 1 | live]
(set-option :timeout 0)
(push) ; 2
; [then-branch: 19 | last_barrier@79@01 == 1]
(assert (= last_barrier@79@01 1))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@81@01)))))))))))))))
  ($Snap.combine
    ($Snap.first ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@81@01))))))))))))))))
    ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@81@01)))))))))))))))))))
; [eval] diz.Ref__a[tid]
(push) ; 3
(set-option :timeout 10)
(assert (not (< $Perm.No $k@82@01)))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(assert (not (>= tid@75@01 0)))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(push) ; 3
(assert (not (<
  tid@75@01
  (Seq_length
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@81@01))))))))))))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(assert (not
  (=
    (Seq_index
      ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@81@01))))))))))
      tid@75@01)
    $Ref.null)))
(assert (=
  ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@81@01))))))))))))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@81@01)))))))))))))))))
    ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@81@01))))))))))))))))))))
; [eval] diz.Ref__b[tid]
(push) ; 3
(set-option :timeout 10)
(assert (not (< $Perm.No $k@83@01)))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(assert (not (>= tid@75@01 0)))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(push) ; 3
(assert (not (<
  tid@75@01
  (Seq_length
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@81@01))))))))))))))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(push) ; 3
(set-option :timeout 10)
(assert (not (=
  (Seq_index
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@81@01))))))))))
    tid@75@01)
  (Seq_index
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@81@01))))))))))))
    tid@75@01))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(assert (not
  (=
    (Seq_index
      ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@81@01))))))))))))
      tid@75@01)
    $Ref.null)))
; [eval] tid > 0
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (not (> tid@75@01 0))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (> tid@75@01 0)))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; [then-branch: 20 | tid@75@01 > 0 | live]
; [else-branch: 20 | !(tid@75@01 > 0) | live]
(set-option :timeout 0)
(push) ; 3
; [then-branch: 20 | tid@75@01 > 0]
(assert (> tid@75@01 0))
; [eval] diz.Ref__b[tid - 1]
(push) ; 4
(set-option :timeout 10)
(assert (not (< $Perm.No $k@83@01)))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; [eval] tid - 1
(set-option :timeout 0)
(push) ; 4
(assert (not (>= (- tid@75@01 1) 0)))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(push) ; 4
(assert (not (<
  (- tid@75@01 1)
  (Seq_length
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@81@01))))))))))))))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(push) ; 4
(set-option :timeout 10)
(assert (not (=
  (Seq_index
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@81@01))))))))))))
    tid@75@01)
  (Seq_index
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@81@01))))))))))))
    (- tid@75@01 1)))))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not (=
  (Seq_index
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@81@01))))))))))
    tid@75@01)
  (Seq_index
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@81@01))))))))))))
    (- tid@75@01 1)))))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(assert (not
  (=
    (Seq_index
      ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@81@01))))))))))))
      (- tid@75@01 1))
    $Ref.null)))
; [eval] last_barrier == 0
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not (not (= last_barrier@79@01 0))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; [then-branch: 21 | last_barrier@79@01 == 0 | dead]
; [else-branch: 21 | last_barrier@79@01 != 0 | live]
(set-option :timeout 0)
(push) ; 4
; [else-branch: 21 | last_barrier@79@01 != 0]
(assert (not (= last_barrier@79@01 0)))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@81@01)))))))))))))))
  $Snap.unit))
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
(set-option :timeout 0)
(push) ; 5
(declare-const $t@85@01 $Snap)
(assert (= $t@85@01 ($Snap.combine ($Snap.first $t@85@01) ($Snap.second $t@85@01))))
(assert (= ($Snap.first $t@85@01) $Snap.unit))
; [eval] 0 <= tid
(assert (=
  ($Snap.second $t@85@01)
  ($Snap.combine
    ($Snap.first ($Snap.second $t@85@01))
    ($Snap.second ($Snap.second $t@85@01)))))
(assert (= ($Snap.first ($Snap.second $t@85@01)) $Snap.unit))
; [eval] tid < tcount
(assert (=
  ($Snap.second ($Snap.second $t@85@01))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second $t@85@01)))
    ($Snap.second ($Snap.second ($Snap.second $t@85@01))))))
(assert (= ($Snap.first ($Snap.second ($Snap.second $t@85@01))) $Snap.unit))
; [eval] tid == lid
(assert (=
  ($Snap.second ($Snap.second ($Snap.second $t@85@01)))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@85@01))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@85@01)))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@85@01))))
  $Snap.unit))
; [eval] tcount == gsize
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@85@01))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@85@01)))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@85@01))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@85@01)))))
  $Snap.unit))
; [eval] gid == 0
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@85@01)))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@85@01))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@85@01)))))))))
(declare-const $k@86@01 $Perm)
(assert ($Perm.isReadVar $k@86@01))
(assert (<= $Perm.No $k@86@01))
(assert (<= $k@86@01 $Perm.Write))
(assert (=> (< $Perm.No $k@86@01) (not (= diz@71@01 $Ref.null))))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@85@01))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@85@01)))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@85@01))))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@85@01)))))))
  $Snap.unit))
; [eval] |diz.Ref__a| == tcount
; [eval] |diz.Ref__a|
(push) ; 6
(set-option :timeout 10)
(assert (not (< $Perm.No $k@86@01)))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(assert (=
  (Seq_length
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@85@01))))))))
  tcount@73@01))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@85@01)))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@85@01))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@85@01)))))))))))
(declare-const $k@87@01 $Perm)
(assert ($Perm.isReadVar $k@87@01))
(assert (<= $Perm.No $k@87@01))
(assert (<= $k@87@01 $Perm.Write))
(assert (=> (< $Perm.No $k@87@01) (not (= diz@71@01 $Ref.null))))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@85@01))))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@85@01)))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@85@01))))))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@85@01)))))))))
  $Snap.unit))
; [eval] |diz.Ref__b| == tcount
; [eval] |diz.Ref__b|
(set-option :timeout 0)
(push) ; 6
(set-option :timeout 10)
(assert (not (< $Perm.No $k@87@01)))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(assert (=
  (Seq_length
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@85@01))))))))))
  tcount@73@01))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@85@01)))))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@85@01))))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@85@01)))))))))))))
(declare-const $k@88@01 $Perm)
(assert ($Perm.isReadVar $k@88@01))
(assert (<= $Perm.No $k@88@01))
(assert (<= $k@88@01 $Perm.Write))
(assert (=> (< $Perm.No $k@88@01) (not (= diz@71@01 $Ref.null))))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@85@01))))))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@85@01)))))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@85@01))))))))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@85@01)))))))))))
  $Snap.unit))
; [eval] |diz.Ref__c| == tcount
; [eval] |diz.Ref__c|
(set-option :timeout 0)
(push) ; 6
(set-option :timeout 10)
(assert (not (< $Perm.No $k@88@01)))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(assert (=
  (Seq_length
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@85@01))))))))))))
  tcount@73@01))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@85@01)))))))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@85@01))))))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@85@01)))))))))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@85@01))))))))))))
  $Snap.unit))
; [eval] diz.Ref__a == old(diz.Ref__a)
(set-option :timeout 0)
(push) ; 6
(set-option :timeout 10)
(assert (not (< $Perm.No $k@86@01)))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
; [eval] old(diz.Ref__a)
(set-option :timeout 0)
(push) ; 6
(set-option :timeout 10)
(assert (not (< $Perm.No $k@82@01)))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(assert (Seq_equal
  ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@85@01)))))))
  ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@81@01))))))))))))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@85@01))))))))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@85@01)))))))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@85@01))))))))))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@85@01)))))))))))))
  $Snap.unit))
; [eval] diz.Ref__b == old(diz.Ref__b)
(set-option :timeout 0)
(push) ; 6
(set-option :timeout 10)
(assert (not (< $Perm.No $k@87@01)))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
; [eval] old(diz.Ref__b)
(set-option :timeout 0)
(push) ; 6
(set-option :timeout 10)
(assert (not (< $Perm.No $k@83@01)))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(assert (Seq_equal
  ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@85@01)))))))))
  ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@81@01))))))))))))))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@85@01)))))))))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@85@01))))))))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@85@01)))))))))))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@85@01))))))))))))))
  $Snap.unit))
; [eval] diz.Ref__c == old(diz.Ref__c)
(set-option :timeout 0)
(push) ; 6
(set-option :timeout 10)
(assert (not (< $Perm.No $k@88@01)))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
; [eval] old(diz.Ref__c)
(set-option :timeout 0)
(push) ; 6
(set-option :timeout 10)
(assert (not (< $Perm.No $k@84@01)))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(assert (Seq_equal
  ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@85@01)))))))))))
  ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@81@01))))))))))))))))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@85@01))))))))))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@85@01)))))))))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@85@01))))))))))))))))))
; [eval] sys__result == 1
(set-option :timeout 0)
(push) ; 6
(set-option :timeout 10)
(assert (not (not (= sys__result@80@01 1))))
(check-sat)
; unknown
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 6
(set-option :timeout 10)
(assert (not (= sys__result@80@01 1)))
(check-sat)
; unknown
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
; [then-branch: 22 | sys__result@80@01 == 1 | live]
; [else-branch: 22 | sys__result@80@01 != 1 | live]
(set-option :timeout 0)
(push) ; 6
; [then-branch: 22 | sys__result@80@01 == 1]
(assert (= sys__result@80@01 1))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@85@01)))))))))))))))
  ($Snap.combine
    ($Snap.first ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@85@01))))))))))))))))
    ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@85@01)))))))))))))))))))
; [eval] diz.Ref__a[tid]
(push) ; 7
(set-option :timeout 10)
(assert (not (< $Perm.No $k@86@01)))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 7
(assert (not (>= tid@75@01 0)))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(push) ; 7
(assert (not (<
  tid@75@01
  (Seq_length
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@85@01)))))))))))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(assert (not
  (=
    (Seq_index
      ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@85@01)))))))
      tid@75@01)
    $Ref.null)))
(assert (=
  ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@85@01))))))))))))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@85@01)))))))))))))))))
    ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@85@01))))))))))))))))))))
; [eval] diz.Ref__b[tid]
(push) ; 7
(set-option :timeout 10)
(assert (not (< $Perm.No $k@87@01)))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 7
(assert (not (>= tid@75@01 0)))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(push) ; 7
(assert (not (<
  tid@75@01
  (Seq_length
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@85@01)))))))))))))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(push) ; 7
(set-option :timeout 10)
(assert (not (=
  (Seq_index
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@85@01)))))))
    tid@75@01)
  (Seq_index
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@85@01)))))))))
    tid@75@01))))
(check-sat)
; unknown
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(assert (not
  (=
    (Seq_index
      ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@85@01)))))))))
      tid@75@01)
    $Ref.null)))
; [eval] tid > 0
(set-option :timeout 0)
(push) ; 7
(set-option :timeout 10)
(assert (not (not (> tid@75@01 0))))
(check-sat)
; unknown
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
; [then-branch: 23 | tid@75@01 > 0 | live]
; [else-branch: 23 | !(tid@75@01 > 0) | dead]
(set-option :timeout 0)
(push) ; 7
; [then-branch: 23 | tid@75@01 > 0]
; [eval] diz.Ref__b[tid - 1]
(push) ; 8
(set-option :timeout 10)
(assert (not (< $Perm.No $k@87@01)))
(check-sat)
; unsat
(pop) ; 8
; 0.00s
; (get-info :all-statistics)
; [eval] tid - 1
(set-option :timeout 0)
(push) ; 8
(assert (not (>= (- tid@75@01 1) 0)))
(check-sat)
; unsat
(pop) ; 8
; 0.00s
; (get-info :all-statistics)
(push) ; 8
(assert (not (<
  (- tid@75@01 1)
  (Seq_length
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@85@01)))))))))))))
(check-sat)
; unsat
(pop) ; 8
; 0.00s
; (get-info :all-statistics)
(push) ; 8
(set-option :timeout 10)
(assert (not (=
  (Seq_index
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@85@01)))))))))
    tid@75@01)
  (Seq_index
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@85@01)))))))))
    (- tid@75@01 1)))))
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
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@85@01)))))))
    tid@75@01)
  (Seq_index
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@85@01)))))))))
    (- tid@75@01 1)))))
(check-sat)
; unknown
(pop) ; 8
; 0.00s
; (get-info :all-statistics)
(assert (not
  (=
    (Seq_index
      ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@85@01)))))))))
      (- tid@75@01 1))
    $Ref.null)))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@85@01)))))))))))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@85@01))))))))))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@85@01)))))))))))))))))))
; [eval] sys__result == 0
(set-option :timeout 0)
(push) ; 8
(set-option :timeout 10)
(assert (not (not (= sys__result@80@01 0))))
(check-sat)
; unsat
(pop) ; 8
; 0.00s
; (get-info :all-statistics)
; [then-branch: 24 | sys__result@80@01 == 0 | dead]
; [else-branch: 24 | sys__result@80@01 != 0 | live]
(set-option :timeout 0)
(push) ; 8
; [else-branch: 24 | sys__result@80@01 != 0]
(assert (not (= sys__result@80@01 0)))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@85@01))))))))))))))))
  $Snap.unit))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@85@01))))))))))))))))
  $Snap.unit))
; [eval] sys__result == this_barrier
(assert (= sys__result@80@01 this_barrier@78@01))
(pop) ; 8
(pop) ; 7
(pop) ; 6
(push) ; 6
; [else-branch: 22 | sys__result@80@01 != 1]
(assert (not (= sys__result@80@01 1)))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@85@01)))))))))))))))
  $Snap.unit))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@85@01)))))))))))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@85@01))))))))))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@85@01)))))))))))))))))))
; [eval] sys__result == 0
(push) ; 7
(set-option :timeout 10)
(assert (not (not (= sys__result@80@01 0))))
(check-sat)
; unknown
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 7
(set-option :timeout 10)
(assert (not (= sys__result@80@01 0)))
(check-sat)
; unknown
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
; [then-branch: 25 | sys__result@80@01 == 0 | live]
; [else-branch: 25 | sys__result@80@01 != 0 | live]
(set-option :timeout 0)
(push) ; 7
; [then-branch: 25 | sys__result@80@01 == 0]
(assert (= sys__result@80@01 0))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@85@01))))))))))))))))
  ($Snap.combine
    ($Snap.first ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@85@01)))))))))))))))))
    ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@85@01))))))))))))))))))))
; [eval] diz.Ref__a[tid]
(push) ; 8
(set-option :timeout 10)
(assert (not (< $Perm.No $k@86@01)))
(check-sat)
; unsat
(pop) ; 8
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 8
(assert (not (>= tid@75@01 0)))
(check-sat)
; unsat
(pop) ; 8
; 0.00s
; (get-info :all-statistics)
(push) ; 8
(assert (not (<
  tid@75@01
  (Seq_length
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@85@01)))))))))))
(check-sat)
; unsat
(pop) ; 8
; 0.00s
; (get-info :all-statistics)
(assert (not
  (=
    (Seq_index
      ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@85@01)))))))
      tid@75@01)
    $Ref.null)))
(assert (=
  ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@85@01)))))))))))))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@85@01))))))))))))))))))
    ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@85@01)))))))))))))))))))))
; [eval] diz.Ref__b[tid]
(push) ; 8
(set-option :timeout 10)
(assert (not (< $Perm.No $k@87@01)))
(check-sat)
; unsat
(pop) ; 8
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 8
(assert (not (>= tid@75@01 0)))
(check-sat)
; unsat
(pop) ; 8
; 0.00s
; (get-info :all-statistics)
(push) ; 8
(assert (not (<
  tid@75@01
  (Seq_length
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@85@01)))))))))))))
(check-sat)
; unsat
(pop) ; 8
; 0.00s
; (get-info :all-statistics)
(push) ; 8
(set-option :timeout 10)
(assert (not (=
  (Seq_index
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@85@01)))))))
    tid@75@01)
  (Seq_index
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@85@01)))))))))
    tid@75@01))))
(check-sat)
; unknown
(pop) ; 8
; 0.00s
; (get-info :all-statistics)
(assert (not
  (=
    (Seq_index
      ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@85@01)))))))))
      tid@75@01)
    $Ref.null)))
; [eval] diz.Ref__c[tid]
(set-option :timeout 0)
(push) ; 8
(set-option :timeout 10)
(assert (not (< $Perm.No $k@88@01)))
(check-sat)
; unsat
(pop) ; 8
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 8
(assert (not (>= tid@75@01 0)))
(check-sat)
; unsat
(pop) ; 8
; 0.00s
; (get-info :all-statistics)
(push) ; 8
(assert (not (<
  tid@75@01
  (Seq_length
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@85@01)))))))))))))))
(check-sat)
; unsat
(pop) ; 8
; 0.00s
; (get-info :all-statistics)
(push) ; 8
(set-option :timeout 10)
(assert (not (=
  (Seq_index
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@85@01)))))))))
    tid@75@01)
  (Seq_index
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@85@01)))))))))))
    tid@75@01))))
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
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@85@01)))))))
    tid@75@01)
  (Seq_index
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@85@01)))))))))))
    tid@75@01))))
(check-sat)
; unknown
(pop) ; 8
; 0.00s
; (get-info :all-statistics)
(assert (not
  (=
    (Seq_index
      ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@85@01)))))))))))
      tid@75@01)
    $Ref.null)))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@85@01))))))))))))))))
  $Snap.unit))
; [eval] sys__result == this_barrier
(assert (= sys__result@80@01 this_barrier@78@01))
(pop) ; 7
(set-option :timeout 0)
(push) ; 7
; [else-branch: 25 | sys__result@80@01 != 0]
(assert (not (= sys__result@80@01 0)))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@85@01))))))))))))))))
  $Snap.unit))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@85@01))))))))))))))))
  $Snap.unit))
; [eval] sys__result == this_barrier
(assert (= sys__result@80@01 this_barrier@78@01))
(pop) ; 7
(pop) ; 6
(pop) ; 5
(push) ; 5
; [exec]
; inhale false
(pop) ; 5
(pop) ; 4
(pop) ; 3
(push) ; 3
; [else-branch: 20 | !(tid@75@01 > 0)]
(assert (not (> tid@75@01 0)))
(assert (=
  ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@81@01)))))))))))))))))
  $Snap.unit))
; [eval] last_barrier == 0
(push) ; 4
(set-option :timeout 10)
(assert (not (not (= last_barrier@79@01 0))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; [then-branch: 26 | last_barrier@79@01 == 0 | dead]
; [else-branch: 26 | last_barrier@79@01 != 0 | live]
(set-option :timeout 0)
(push) ; 4
; [else-branch: 26 | last_barrier@79@01 != 0]
(assert (not (= last_barrier@79@01 0)))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@81@01)))))))))))))))
  $Snap.unit))
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
(set-option :timeout 0)
(push) ; 5
(declare-const $t@89@01 $Snap)
(assert (= $t@89@01 ($Snap.combine ($Snap.first $t@89@01) ($Snap.second $t@89@01))))
(assert (= ($Snap.first $t@89@01) $Snap.unit))
; [eval] 0 <= tid
(assert (=
  ($Snap.second $t@89@01)
  ($Snap.combine
    ($Snap.first ($Snap.second $t@89@01))
    ($Snap.second ($Snap.second $t@89@01)))))
(assert (= ($Snap.first ($Snap.second $t@89@01)) $Snap.unit))
; [eval] tid < tcount
(assert (=
  ($Snap.second ($Snap.second $t@89@01))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second $t@89@01)))
    ($Snap.second ($Snap.second ($Snap.second $t@89@01))))))
(assert (= ($Snap.first ($Snap.second ($Snap.second $t@89@01))) $Snap.unit))
; [eval] tid == lid
(assert (=
  ($Snap.second ($Snap.second ($Snap.second $t@89@01)))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@89@01))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@89@01)))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@89@01))))
  $Snap.unit))
; [eval] tcount == gsize
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@89@01))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@89@01)))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@89@01))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@89@01)))))
  $Snap.unit))
; [eval] gid == 0
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@89@01)))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@89@01))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@89@01)))))))))
(declare-const $k@90@01 $Perm)
(assert ($Perm.isReadVar $k@90@01))
(assert (<= $Perm.No $k@90@01))
(assert (<= $k@90@01 $Perm.Write))
(assert (=> (< $Perm.No $k@90@01) (not (= diz@71@01 $Ref.null))))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@89@01))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@89@01)))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@89@01))))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@89@01)))))))
  $Snap.unit))
; [eval] |diz.Ref__a| == tcount
; [eval] |diz.Ref__a|
(push) ; 6
(set-option :timeout 10)
(assert (not (< $Perm.No $k@90@01)))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(assert (=
  (Seq_length
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@89@01))))))))
  tcount@73@01))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@89@01)))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@89@01))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@89@01)))))))))))
(declare-const $k@91@01 $Perm)
(assert ($Perm.isReadVar $k@91@01))
(assert (<= $Perm.No $k@91@01))
(assert (<= $k@91@01 $Perm.Write))
(assert (=> (< $Perm.No $k@91@01) (not (= diz@71@01 $Ref.null))))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@89@01))))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@89@01)))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@89@01))))))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@89@01)))))))))
  $Snap.unit))
; [eval] |diz.Ref__b| == tcount
; [eval] |diz.Ref__b|
(set-option :timeout 0)
(push) ; 6
(set-option :timeout 10)
(assert (not (< $Perm.No $k@91@01)))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(assert (=
  (Seq_length
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@89@01))))))))))
  tcount@73@01))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@89@01)))))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@89@01))))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@89@01)))))))))))))
(declare-const $k@92@01 $Perm)
(assert ($Perm.isReadVar $k@92@01))
(assert (<= $Perm.No $k@92@01))
(assert (<= $k@92@01 $Perm.Write))
(assert (=> (< $Perm.No $k@92@01) (not (= diz@71@01 $Ref.null))))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@89@01))))))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@89@01)))))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@89@01))))))))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@89@01)))))))))))
  $Snap.unit))
; [eval] |diz.Ref__c| == tcount
; [eval] |diz.Ref__c|
(set-option :timeout 0)
(push) ; 6
(set-option :timeout 10)
(assert (not (< $Perm.No $k@92@01)))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(assert (=
  (Seq_length
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@89@01))))))))))))
  tcount@73@01))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@89@01)))))))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@89@01))))))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@89@01)))))))))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@89@01))))))))))))
  $Snap.unit))
; [eval] diz.Ref__a == old(diz.Ref__a)
(set-option :timeout 0)
(push) ; 6
(set-option :timeout 10)
(assert (not (< $Perm.No $k@90@01)))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
; [eval] old(diz.Ref__a)
(set-option :timeout 0)
(push) ; 6
(set-option :timeout 10)
(assert (not (< $Perm.No $k@82@01)))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(assert (Seq_equal
  ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@89@01)))))))
  ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@81@01))))))))))))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@89@01))))))))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@89@01)))))))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@89@01))))))))))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@89@01)))))))))))))
  $Snap.unit))
; [eval] diz.Ref__b == old(diz.Ref__b)
(set-option :timeout 0)
(push) ; 6
(set-option :timeout 10)
(assert (not (< $Perm.No $k@91@01)))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
; [eval] old(diz.Ref__b)
(set-option :timeout 0)
(push) ; 6
(set-option :timeout 10)
(assert (not (< $Perm.No $k@83@01)))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(assert (Seq_equal
  ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@89@01)))))))))
  ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@81@01))))))))))))))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@89@01)))))))))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@89@01))))))))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@89@01)))))))))))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@89@01))))))))))))))
  $Snap.unit))
; [eval] diz.Ref__c == old(diz.Ref__c)
(set-option :timeout 0)
(push) ; 6
(set-option :timeout 10)
(assert (not (< $Perm.No $k@92@01)))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
; [eval] old(diz.Ref__c)
(set-option :timeout 0)
(push) ; 6
(set-option :timeout 10)
(assert (not (< $Perm.No $k@84@01)))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(assert (Seq_equal
  ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@89@01)))))))))))
  ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@81@01))))))))))))))))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@89@01))))))))))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@89@01)))))))))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@89@01))))))))))))))))))
; [eval] sys__result == 1
(set-option :timeout 0)
(push) ; 6
(set-option :timeout 10)
(assert (not (not (= sys__result@80@01 1))))
(check-sat)
; unknown
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 6
(set-option :timeout 10)
(assert (not (= sys__result@80@01 1)))
(check-sat)
; unknown
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
; [then-branch: 27 | sys__result@80@01 == 1 | live]
; [else-branch: 27 | sys__result@80@01 != 1 | live]
(set-option :timeout 0)
(push) ; 6
; [then-branch: 27 | sys__result@80@01 == 1]
(assert (= sys__result@80@01 1))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@89@01)))))))))))))))
  ($Snap.combine
    ($Snap.first ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@89@01))))))))))))))))
    ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@89@01)))))))))))))))))))
; [eval] diz.Ref__a[tid]
(push) ; 7
(set-option :timeout 10)
(assert (not (< $Perm.No $k@90@01)))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 7
(assert (not (>= tid@75@01 0)))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(push) ; 7
(assert (not (<
  tid@75@01
  (Seq_length
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@89@01)))))))))))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(assert (not
  (=
    (Seq_index
      ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@89@01)))))))
      tid@75@01)
    $Ref.null)))
(assert (=
  ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@89@01))))))))))))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@89@01)))))))))))))))))
    ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@89@01))))))))))))))))))))
; [eval] diz.Ref__b[tid]
(push) ; 7
(set-option :timeout 10)
(assert (not (< $Perm.No $k@91@01)))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 7
(assert (not (>= tid@75@01 0)))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(push) ; 7
(assert (not (<
  tid@75@01
  (Seq_length
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@89@01)))))))))))))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(push) ; 7
(set-option :timeout 10)
(assert (not (=
  (Seq_index
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@89@01)))))))
    tid@75@01)
  (Seq_index
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@89@01)))))))))
    tid@75@01))))
(check-sat)
; unknown
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(assert (not
  (=
    (Seq_index
      ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@89@01)))))))))
      tid@75@01)
    $Ref.null)))
; [eval] tid > 0
; [then-branch: 28 | tid@75@01 > 0 | dead]
; [else-branch: 28 | !(tid@75@01 > 0) | live]
(set-option :timeout 0)
(push) ; 7
; [else-branch: 28 | !(tid@75@01 > 0)]
(assert (=
  ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@89@01)))))))))))))))))
  $Snap.unit))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@89@01)))))))))))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@89@01))))))))))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@89@01)))))))))))))))))))
; [eval] sys__result == 0
(push) ; 8
(set-option :timeout 10)
(assert (not (not (= sys__result@80@01 0))))
(check-sat)
; unsat
(pop) ; 8
; 0.00s
; (get-info :all-statistics)
; [then-branch: 29 | sys__result@80@01 == 0 | dead]
; [else-branch: 29 | sys__result@80@01 != 0 | live]
(set-option :timeout 0)
(push) ; 8
; [else-branch: 29 | sys__result@80@01 != 0]
(assert (not (= sys__result@80@01 0)))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@89@01))))))))))))))))
  $Snap.unit))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@89@01))))))))))))))))
  $Snap.unit))
; [eval] sys__result == this_barrier
(assert (= sys__result@80@01 this_barrier@78@01))
(pop) ; 8
(pop) ; 7
(pop) ; 6
(push) ; 6
; [else-branch: 27 | sys__result@80@01 != 1]
(assert (not (= sys__result@80@01 1)))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@89@01)))))))))))))))
  $Snap.unit))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@89@01)))))))))))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@89@01))))))))))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@89@01)))))))))))))))))))
; [eval] sys__result == 0
(push) ; 7
(set-option :timeout 10)
(assert (not (not (= sys__result@80@01 0))))
(check-sat)
; unknown
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 7
(set-option :timeout 10)
(assert (not (= sys__result@80@01 0)))
(check-sat)
; unknown
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
; [then-branch: 30 | sys__result@80@01 == 0 | live]
; [else-branch: 30 | sys__result@80@01 != 0 | live]
(set-option :timeout 0)
(push) ; 7
; [then-branch: 30 | sys__result@80@01 == 0]
(assert (= sys__result@80@01 0))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@89@01))))))))))))))))
  ($Snap.combine
    ($Snap.first ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@89@01)))))))))))))))))
    ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@89@01))))))))))))))))))))
; [eval] diz.Ref__a[tid]
(push) ; 8
(set-option :timeout 10)
(assert (not (< $Perm.No $k@90@01)))
(check-sat)
; unsat
(pop) ; 8
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 8
(assert (not (>= tid@75@01 0)))
(check-sat)
; unsat
(pop) ; 8
; 0.00s
; (get-info :all-statistics)
(push) ; 8
(assert (not (<
  tid@75@01
  (Seq_length
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@89@01)))))))))))
(check-sat)
; unsat
(pop) ; 8
; 0.00s
; (get-info :all-statistics)
(assert (not
  (=
    (Seq_index
      ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@89@01)))))))
      tid@75@01)
    $Ref.null)))
(assert (=
  ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@89@01)))))))))))))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@89@01))))))))))))))))))
    ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@89@01)))))))))))))))))))))
; [eval] diz.Ref__b[tid]
(push) ; 8
(set-option :timeout 10)
(assert (not (< $Perm.No $k@91@01)))
(check-sat)
; unsat
(pop) ; 8
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 8
(assert (not (>= tid@75@01 0)))
(check-sat)
; unsat
(pop) ; 8
; 0.00s
; (get-info :all-statistics)
(push) ; 8
(assert (not (<
  tid@75@01
  (Seq_length
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@89@01)))))))))))))
(check-sat)
; unsat
(pop) ; 8
; 0.00s
; (get-info :all-statistics)
(push) ; 8
(set-option :timeout 10)
(assert (not (=
  (Seq_index
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@89@01)))))))
    tid@75@01)
  (Seq_index
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@89@01)))))))))
    tid@75@01))))
(check-sat)
; unknown
(pop) ; 8
; 0.00s
; (get-info :all-statistics)
(assert (not
  (=
    (Seq_index
      ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@89@01)))))))))
      tid@75@01)
    $Ref.null)))
; [eval] diz.Ref__c[tid]
(set-option :timeout 0)
(push) ; 8
(set-option :timeout 10)
(assert (not (< $Perm.No $k@92@01)))
(check-sat)
; unsat
(pop) ; 8
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 8
(assert (not (>= tid@75@01 0)))
(check-sat)
; unsat
(pop) ; 8
; 0.00s
; (get-info :all-statistics)
(push) ; 8
(assert (not (<
  tid@75@01
  (Seq_length
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@89@01)))))))))))))))
(check-sat)
; unsat
(pop) ; 8
; 0.00s
; (get-info :all-statistics)
(push) ; 8
(set-option :timeout 10)
(assert (not (=
  (Seq_index
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@89@01)))))))))
    tid@75@01)
  (Seq_index
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@89@01)))))))))))
    tid@75@01))))
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
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@89@01)))))))
    tid@75@01)
  (Seq_index
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@89@01)))))))))))
    tid@75@01))))
(check-sat)
; unknown
(pop) ; 8
; 0.00s
; (get-info :all-statistics)
(assert (not
  (=
    (Seq_index
      ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@89@01)))))))))))
      tid@75@01)
    $Ref.null)))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@89@01))))))))))))))))
  $Snap.unit))
; [eval] sys__result == this_barrier
(assert (= sys__result@80@01 this_barrier@78@01))
(pop) ; 7
(set-option :timeout 0)
(push) ; 7
; [else-branch: 30 | sys__result@80@01 != 0]
(assert (not (= sys__result@80@01 0)))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@89@01))))))))))))))))
  $Snap.unit))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@89@01))))))))))))))))
  $Snap.unit))
; [eval] sys__result == this_barrier
(assert (= sys__result@80@01 this_barrier@78@01))
(pop) ; 7
(pop) ; 6
(pop) ; 5
(push) ; 5
; [exec]
; inhale false
(pop) ; 5
(pop) ; 4
(pop) ; 3
(pop) ; 2
(push) ; 2
; [else-branch: 19 | last_barrier@79@01 != 1]
(assert (not (= last_barrier@79@01 1)))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@81@01)))))))))))))))
  $Snap.unit))
; [eval] last_barrier == 0
(push) ; 3
(set-option :timeout 10)
(assert (not (not (= last_barrier@79@01 0))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (= last_barrier@79@01 0)))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; [then-branch: 31 | last_barrier@79@01 == 0 | live]
; [else-branch: 31 | last_barrier@79@01 != 0 | live]
(set-option :timeout 0)
(push) ; 3
; [then-branch: 31 | last_barrier@79@01 == 0]
(assert (= last_barrier@79@01 0))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@81@01)))))))))))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@81@01))))))))))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@81@01)))))))))))))))))))
; [eval] diz.Ref__a[tid]
(push) ; 4
(set-option :timeout 10)
(assert (not (< $Perm.No $k@82@01)))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 4
(assert (not (>= tid@75@01 0)))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(push) ; 4
(assert (not (<
  tid@75@01
  (Seq_length
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@81@01))))))))))))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(assert (not
  (=
    (Seq_index
      ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@81@01))))))))))
      tid@75@01)
    $Ref.null)))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@81@01))))))))))))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@81@01)))))))))))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@81@01))))))))))))))))))))
; [eval] diz.Ref__b[tid]
(push) ; 4
(set-option :timeout 10)
(assert (not (< $Perm.No $k@83@01)))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 4
(assert (not (>= tid@75@01 0)))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(push) ; 4
(assert (not (<
  tid@75@01
  (Seq_length
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@81@01))))))))))))))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(push) ; 4
(set-option :timeout 10)
(assert (not (=
  (Seq_index
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@81@01))))))))))
    tid@75@01)
  (Seq_index
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@81@01))))))))))))
    tid@75@01))))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(assert (not
  (=
    (Seq_index
      ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@81@01))))))))))))
      tid@75@01)
    $Ref.null)))
; [eval] diz.Ref__c[tid]
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not (< $Perm.No $k@84@01)))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 4
(assert (not (>= tid@75@01 0)))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(push) ; 4
(assert (not (<
  tid@75@01
  (Seq_length
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@81@01))))))))))))))))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(push) ; 4
(set-option :timeout 10)
(assert (not (=
  (Seq_index
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@81@01))))))))))))
    tid@75@01)
  (Seq_index
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@81@01))))))))))))))
    tid@75@01))))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not (=
  (Seq_index
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@81@01))))))))))
    tid@75@01)
  (Seq_index
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@81@01))))))))))))))
    tid@75@01))))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(assert (not
  (=
    (Seq_index
      ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@81@01))))))))))))))
      tid@75@01)
    $Ref.null)))
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
(set-option :timeout 0)
(push) ; 4
(declare-const $t@93@01 $Snap)
(assert (= $t@93@01 ($Snap.combine ($Snap.first $t@93@01) ($Snap.second $t@93@01))))
(assert (= ($Snap.first $t@93@01) $Snap.unit))
; [eval] 0 <= tid
(assert (=
  ($Snap.second $t@93@01)
  ($Snap.combine
    ($Snap.first ($Snap.second $t@93@01))
    ($Snap.second ($Snap.second $t@93@01)))))
(assert (= ($Snap.first ($Snap.second $t@93@01)) $Snap.unit))
; [eval] tid < tcount
(assert (=
  ($Snap.second ($Snap.second $t@93@01))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second $t@93@01)))
    ($Snap.second ($Snap.second ($Snap.second $t@93@01))))))
(assert (= ($Snap.first ($Snap.second ($Snap.second $t@93@01))) $Snap.unit))
; [eval] tid == lid
(assert (=
  ($Snap.second ($Snap.second ($Snap.second $t@93@01)))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@93@01))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@93@01)))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@93@01))))
  $Snap.unit))
; [eval] tcount == gsize
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@93@01))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@93@01)))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@93@01))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@93@01)))))
  $Snap.unit))
; [eval] gid == 0
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@93@01)))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@93@01))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@93@01)))))))))
(declare-const $k@94@01 $Perm)
(assert ($Perm.isReadVar $k@94@01))
(assert (<= $Perm.No $k@94@01))
(assert (<= $k@94@01 $Perm.Write))
(assert (=> (< $Perm.No $k@94@01) (not (= diz@71@01 $Ref.null))))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@93@01))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@93@01)))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@93@01))))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@93@01)))))))
  $Snap.unit))
; [eval] |diz.Ref__a| == tcount
; [eval] |diz.Ref__a|
(push) ; 5
(set-option :timeout 10)
(assert (not (< $Perm.No $k@94@01)))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(assert (=
  (Seq_length
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@93@01))))))))
  tcount@73@01))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@93@01)))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@93@01))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@93@01)))))))))))
(declare-const $k@95@01 $Perm)
(assert ($Perm.isReadVar $k@95@01))
(assert (<= $Perm.No $k@95@01))
(assert (<= $k@95@01 $Perm.Write))
(assert (=> (< $Perm.No $k@95@01) (not (= diz@71@01 $Ref.null))))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@93@01))))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@93@01)))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@93@01))))))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@93@01)))))))))
  $Snap.unit))
; [eval] |diz.Ref__b| == tcount
; [eval] |diz.Ref__b|
(set-option :timeout 0)
(push) ; 5
(set-option :timeout 10)
(assert (not (< $Perm.No $k@95@01)))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(assert (=
  (Seq_length
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@93@01))))))))))
  tcount@73@01))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@93@01)))))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@93@01))))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@93@01)))))))))))))
(declare-const $k@96@01 $Perm)
(assert ($Perm.isReadVar $k@96@01))
(assert (<= $Perm.No $k@96@01))
(assert (<= $k@96@01 $Perm.Write))
(assert (=> (< $Perm.No $k@96@01) (not (= diz@71@01 $Ref.null))))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@93@01))))))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@93@01)))))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@93@01))))))))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@93@01)))))))))))
  $Snap.unit))
; [eval] |diz.Ref__c| == tcount
; [eval] |diz.Ref__c|
(set-option :timeout 0)
(push) ; 5
(set-option :timeout 10)
(assert (not (< $Perm.No $k@96@01)))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(assert (=
  (Seq_length
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@93@01))))))))))))
  tcount@73@01))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@93@01)))))))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@93@01))))))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@93@01)))))))))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@93@01))))))))))))
  $Snap.unit))
; [eval] diz.Ref__a == old(diz.Ref__a)
(set-option :timeout 0)
(push) ; 5
(set-option :timeout 10)
(assert (not (< $Perm.No $k@94@01)))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
; [eval] old(diz.Ref__a)
(set-option :timeout 0)
(push) ; 5
(set-option :timeout 10)
(assert (not (< $Perm.No $k@82@01)))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(assert (Seq_equal
  ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@93@01)))))))
  ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@81@01))))))))))))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@93@01))))))))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@93@01)))))))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@93@01))))))))))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@93@01)))))))))))))
  $Snap.unit))
; [eval] diz.Ref__b == old(diz.Ref__b)
(set-option :timeout 0)
(push) ; 5
(set-option :timeout 10)
(assert (not (< $Perm.No $k@95@01)))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
; [eval] old(diz.Ref__b)
(set-option :timeout 0)
(push) ; 5
(set-option :timeout 10)
(assert (not (< $Perm.No $k@83@01)))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(assert (Seq_equal
  ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@93@01)))))))))
  ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@81@01))))))))))))))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@93@01)))))))))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@93@01))))))))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@93@01)))))))))))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@93@01))))))))))))))
  $Snap.unit))
; [eval] diz.Ref__c == old(diz.Ref__c)
(set-option :timeout 0)
(push) ; 5
(set-option :timeout 10)
(assert (not (< $Perm.No $k@96@01)))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
; [eval] old(diz.Ref__c)
(set-option :timeout 0)
(push) ; 5
(set-option :timeout 10)
(assert (not (< $Perm.No $k@84@01)))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(assert (Seq_equal
  ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@93@01)))))))))))
  ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@81@01))))))))))))))))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@93@01))))))))))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@93@01)))))))))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@93@01))))))))))))))))))
; [eval] sys__result == 1
(set-option :timeout 0)
(push) ; 5
(set-option :timeout 10)
(assert (not (not (= sys__result@80@01 1))))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 5
(set-option :timeout 10)
(assert (not (= sys__result@80@01 1)))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
; [then-branch: 32 | sys__result@80@01 == 1 | live]
; [else-branch: 32 | sys__result@80@01 != 1 | live]
(set-option :timeout 0)
(push) ; 5
; [then-branch: 32 | sys__result@80@01 == 1]
(assert (= sys__result@80@01 1))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@93@01)))))))))))))))
  ($Snap.combine
    ($Snap.first ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@93@01))))))))))))))))
    ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@93@01)))))))))))))))))))
; [eval] diz.Ref__a[tid]
(push) ; 6
(set-option :timeout 10)
(assert (not (< $Perm.No $k@94@01)))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 6
(assert (not (>= tid@75@01 0)))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(push) ; 6
(assert (not (<
  tid@75@01
  (Seq_length
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@93@01)))))))))))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(assert (not
  (=
    (Seq_index
      ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@93@01)))))))
      tid@75@01)
    $Ref.null)))
(assert (=
  ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@93@01))))))))))))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@93@01)))))))))))))))))
    ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@93@01))))))))))))))))))))
; [eval] diz.Ref__b[tid]
(push) ; 6
(set-option :timeout 10)
(assert (not (< $Perm.No $k@95@01)))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 6
(assert (not (>= tid@75@01 0)))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(push) ; 6
(assert (not (<
  tid@75@01
  (Seq_length
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@93@01)))))))))))))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(push) ; 6
(set-option :timeout 10)
(assert (not (=
  (Seq_index
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@93@01)))))))
    tid@75@01)
  (Seq_index
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@93@01)))))))))
    tid@75@01))))
(check-sat)
; unknown
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(assert (not
  (=
    (Seq_index
      ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@93@01)))))))))
      tid@75@01)
    $Ref.null)))
; [eval] tid > 0
(set-option :timeout 0)
(push) ; 6
(set-option :timeout 10)
(assert (not (not (> tid@75@01 0))))
(check-sat)
; unknown
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 6
(set-option :timeout 10)
(assert (not (> tid@75@01 0)))
(check-sat)
; unknown
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
; [then-branch: 33 | tid@75@01 > 0 | live]
; [else-branch: 33 | !(tid@75@01 > 0) | live]
(set-option :timeout 0)
(push) ; 6
; [then-branch: 33 | tid@75@01 > 0]
(assert (> tid@75@01 0))
; [eval] diz.Ref__b[tid - 1]
(push) ; 7
(set-option :timeout 10)
(assert (not (< $Perm.No $k@95@01)))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
; [eval] tid - 1
(set-option :timeout 0)
(push) ; 7
(assert (not (>= (- tid@75@01 1) 0)))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(push) ; 7
(assert (not (<
  (- tid@75@01 1)
  (Seq_length
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@93@01)))))))))))))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(push) ; 7
(set-option :timeout 10)
(assert (not (=
  (Seq_index
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@93@01)))))))))
    tid@75@01)
  (Seq_index
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@93@01)))))))))
    (- tid@75@01 1)))))
(check-sat)
; unknown
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 7
(set-option :timeout 10)
(assert (not (=
  (Seq_index
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@93@01)))))))
    tid@75@01)
  (Seq_index
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@93@01)))))))))
    (- tid@75@01 1)))))
(check-sat)
; unknown
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(assert (not
  (=
    (Seq_index
      ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@93@01)))))))))
      (- tid@75@01 1))
    $Ref.null)))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@93@01)))))))))))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@93@01))))))))))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@93@01)))))))))))))))))))
; [eval] sys__result == 0
(set-option :timeout 0)
(push) ; 7
(set-option :timeout 10)
(assert (not (not (= sys__result@80@01 0))))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
; [then-branch: 34 | sys__result@80@01 == 0 | dead]
; [else-branch: 34 | sys__result@80@01 != 0 | live]
(set-option :timeout 0)
(push) ; 7
; [else-branch: 34 | sys__result@80@01 != 0]
(assert (not (= sys__result@80@01 0)))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@93@01))))))))))))))))
  $Snap.unit))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@93@01))))))))))))))))
  $Snap.unit))
; [eval] sys__result == this_barrier
(assert (= sys__result@80@01 this_barrier@78@01))
(pop) ; 7
(pop) ; 6
(push) ; 6
; [else-branch: 33 | !(tid@75@01 > 0)]
(assert (not (> tid@75@01 0)))
(assert (=
  ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@93@01)))))))))))))))))
  $Snap.unit))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@93@01)))))))))))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@93@01))))))))))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@93@01)))))))))))))))))))
; [eval] sys__result == 0
(push) ; 7
(set-option :timeout 10)
(assert (not (not (= sys__result@80@01 0))))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
; [then-branch: 35 | sys__result@80@01 == 0 | dead]
; [else-branch: 35 | sys__result@80@01 != 0 | live]
(set-option :timeout 0)
(push) ; 7
; [else-branch: 35 | sys__result@80@01 != 0]
(assert (not (= sys__result@80@01 0)))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@93@01))))))))))))))))
  $Snap.unit))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@93@01))))))))))))))))
  $Snap.unit))
; [eval] sys__result == this_barrier
(assert (= sys__result@80@01 this_barrier@78@01))
(pop) ; 7
(pop) ; 6
(pop) ; 5
(push) ; 5
; [else-branch: 32 | sys__result@80@01 != 1]
(assert (not (= sys__result@80@01 1)))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@93@01)))))))))))))))
  $Snap.unit))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@93@01)))))))))))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@93@01))))))))))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@93@01)))))))))))))))))))
; [eval] sys__result == 0
(push) ; 6
(set-option :timeout 10)
(assert (not (not (= sys__result@80@01 0))))
(check-sat)
; unknown
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 6
(set-option :timeout 10)
(assert (not (= sys__result@80@01 0)))
(check-sat)
; unknown
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
; [then-branch: 36 | sys__result@80@01 == 0 | live]
; [else-branch: 36 | sys__result@80@01 != 0 | live]
(set-option :timeout 0)
(push) ; 6
; [then-branch: 36 | sys__result@80@01 == 0]
(assert (= sys__result@80@01 0))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@93@01))))))))))))))))
  ($Snap.combine
    ($Snap.first ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@93@01)))))))))))))))))
    ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@93@01))))))))))))))))))))
; [eval] diz.Ref__a[tid]
(push) ; 7
(set-option :timeout 10)
(assert (not (< $Perm.No $k@94@01)))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 7
(assert (not (>= tid@75@01 0)))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(push) ; 7
(assert (not (<
  tid@75@01
  (Seq_length
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@93@01)))))))))))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(assert (not
  (=
    (Seq_index
      ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@93@01)))))))
      tid@75@01)
    $Ref.null)))
(assert (=
  ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@93@01)))))))))))))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@93@01))))))))))))))))))
    ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@93@01)))))))))))))))))))))
; [eval] diz.Ref__b[tid]
(push) ; 7
(set-option :timeout 10)
(assert (not (< $Perm.No $k@95@01)))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 7
(assert (not (>= tid@75@01 0)))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(push) ; 7
(assert (not (<
  tid@75@01
  (Seq_length
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@93@01)))))))))))))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(push) ; 7
(set-option :timeout 10)
(assert (not (=
  (Seq_index
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@93@01)))))))
    tid@75@01)
  (Seq_index
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@93@01)))))))))
    tid@75@01))))
(check-sat)
; unknown
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(assert (not
  (=
    (Seq_index
      ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@93@01)))))))))
      tid@75@01)
    $Ref.null)))
; [eval] diz.Ref__c[tid]
(set-option :timeout 0)
(push) ; 7
(set-option :timeout 10)
(assert (not (< $Perm.No $k@96@01)))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 7
(assert (not (>= tid@75@01 0)))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(push) ; 7
(assert (not (<
  tid@75@01
  (Seq_length
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@93@01)))))))))))))))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(push) ; 7
(set-option :timeout 10)
(assert (not (=
  (Seq_index
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@93@01)))))))))
    tid@75@01)
  (Seq_index
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@93@01)))))))))))
    tid@75@01))))
(check-sat)
; unknown
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 7
(set-option :timeout 10)
(assert (not (=
  (Seq_index
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@93@01)))))))
    tid@75@01)
  (Seq_index
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@93@01)))))))))))
    tid@75@01))))
(check-sat)
; unknown
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(assert (not
  (=
    (Seq_index
      ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@93@01)))))))))))
      tid@75@01)
    $Ref.null)))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@93@01))))))))))))))))
  $Snap.unit))
; [eval] sys__result == this_barrier
(assert (= sys__result@80@01 this_barrier@78@01))
(pop) ; 6
(set-option :timeout 0)
(push) ; 6
; [else-branch: 36 | sys__result@80@01 != 0]
(assert (not (= sys__result@80@01 0)))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@93@01))))))))))))))))
  $Snap.unit))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@93@01))))))))))))))))
  $Snap.unit))
; [eval] sys__result == this_barrier
(assert (= sys__result@80@01 this_barrier@78@01))
(pop) ; 6
(pop) ; 5
(pop) ; 4
(push) ; 4
; [exec]
; inhale false
(pop) ; 4
(pop) ; 3
(push) ; 3
; [else-branch: 31 | last_barrier@79@01 != 0]
(assert (not (= last_barrier@79@01 0)))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@81@01)))))))))))))))
  $Snap.unit))
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
(set-option :timeout 0)
(push) ; 4
(declare-const $t@97@01 $Snap)
(assert (= $t@97@01 ($Snap.combine ($Snap.first $t@97@01) ($Snap.second $t@97@01))))
(assert (= ($Snap.first $t@97@01) $Snap.unit))
; [eval] 0 <= tid
(assert (=
  ($Snap.second $t@97@01)
  ($Snap.combine
    ($Snap.first ($Snap.second $t@97@01))
    ($Snap.second ($Snap.second $t@97@01)))))
(assert (= ($Snap.first ($Snap.second $t@97@01)) $Snap.unit))
; [eval] tid < tcount
(assert (=
  ($Snap.second ($Snap.second $t@97@01))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second $t@97@01)))
    ($Snap.second ($Snap.second ($Snap.second $t@97@01))))))
(assert (= ($Snap.first ($Snap.second ($Snap.second $t@97@01))) $Snap.unit))
; [eval] tid == lid
(assert (=
  ($Snap.second ($Snap.second ($Snap.second $t@97@01)))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@97@01))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@97@01)))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@97@01))))
  $Snap.unit))
; [eval] tcount == gsize
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@97@01))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@97@01)))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@97@01))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@97@01)))))
  $Snap.unit))
; [eval] gid == 0
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@97@01)))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@97@01))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@97@01)))))))))
(declare-const $k@98@01 $Perm)
(assert ($Perm.isReadVar $k@98@01))
(assert (<= $Perm.No $k@98@01))
(assert (<= $k@98@01 $Perm.Write))
(assert (=> (< $Perm.No $k@98@01) (not (= diz@71@01 $Ref.null))))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@97@01))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@97@01)))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@97@01))))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@97@01)))))))
  $Snap.unit))
; [eval] |diz.Ref__a| == tcount
; [eval] |diz.Ref__a|
(push) ; 5
(set-option :timeout 10)
(assert (not (< $Perm.No $k@98@01)))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(assert (=
  (Seq_length
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@97@01))))))))
  tcount@73@01))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@97@01)))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@97@01))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@97@01)))))))))))
(declare-const $k@99@01 $Perm)
(assert ($Perm.isReadVar $k@99@01))
(assert (<= $Perm.No $k@99@01))
(assert (<= $k@99@01 $Perm.Write))
(assert (=> (< $Perm.No $k@99@01) (not (= diz@71@01 $Ref.null))))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@97@01))))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@97@01)))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@97@01))))))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@97@01)))))))))
  $Snap.unit))
; [eval] |diz.Ref__b| == tcount
; [eval] |diz.Ref__b|
(set-option :timeout 0)
(push) ; 5
(set-option :timeout 10)
(assert (not (< $Perm.No $k@99@01)))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(assert (=
  (Seq_length
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@97@01))))))))))
  tcount@73@01))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@97@01)))))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@97@01))))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@97@01)))))))))))))
(declare-const $k@100@01 $Perm)
(assert ($Perm.isReadVar $k@100@01))
(assert (<= $Perm.No $k@100@01))
(assert (<= $k@100@01 $Perm.Write))
(assert (=> (< $Perm.No $k@100@01) (not (= diz@71@01 $Ref.null))))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@97@01))))))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@97@01)))))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@97@01))))))))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@97@01)))))))))))
  $Snap.unit))
; [eval] |diz.Ref__c| == tcount
; [eval] |diz.Ref__c|
(set-option :timeout 0)
(push) ; 5
(set-option :timeout 10)
(assert (not (< $Perm.No $k@100@01)))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(assert (=
  (Seq_length
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@97@01))))))))))))
  tcount@73@01))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@97@01)))))))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@97@01))))))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@97@01)))))))))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@97@01))))))))))))
  $Snap.unit))
; [eval] diz.Ref__a == old(diz.Ref__a)
(set-option :timeout 0)
(push) ; 5
(set-option :timeout 10)
(assert (not (< $Perm.No $k@98@01)))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
; [eval] old(diz.Ref__a)
(set-option :timeout 0)
(push) ; 5
(set-option :timeout 10)
(assert (not (< $Perm.No $k@82@01)))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(assert (Seq_equal
  ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@97@01)))))))
  ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@81@01))))))))))))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@97@01))))))))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@97@01)))))))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@97@01))))))))))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@97@01)))))))))))))
  $Snap.unit))
; [eval] diz.Ref__b == old(diz.Ref__b)
(set-option :timeout 0)
(push) ; 5
(set-option :timeout 10)
(assert (not (< $Perm.No $k@99@01)))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
; [eval] old(diz.Ref__b)
(set-option :timeout 0)
(push) ; 5
(set-option :timeout 10)
(assert (not (< $Perm.No $k@83@01)))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(assert (Seq_equal
  ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@97@01)))))))))
  ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@81@01))))))))))))))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@97@01)))))))))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@97@01))))))))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@97@01)))))))))))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@97@01))))))))))))))
  $Snap.unit))
; [eval] diz.Ref__c == old(diz.Ref__c)
(set-option :timeout 0)
(push) ; 5
(set-option :timeout 10)
(assert (not (< $Perm.No $k@100@01)))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
; [eval] old(diz.Ref__c)
(set-option :timeout 0)
(push) ; 5
(set-option :timeout 10)
(assert (not (< $Perm.No $k@84@01)))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(assert (Seq_equal
  ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@97@01)))))))))))
  ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@81@01))))))))))))))))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@97@01))))))))))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@97@01)))))))))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@97@01))))))))))))))))))
; [eval] sys__result == 1
(set-option :timeout 0)
(push) ; 5
(set-option :timeout 10)
(assert (not (not (= sys__result@80@01 1))))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 5
(set-option :timeout 10)
(assert (not (= sys__result@80@01 1)))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
; [then-branch: 37 | sys__result@80@01 == 1 | live]
; [else-branch: 37 | sys__result@80@01 != 1 | live]
(set-option :timeout 0)
(push) ; 5
; [then-branch: 37 | sys__result@80@01 == 1]
(assert (= sys__result@80@01 1))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@97@01)))))))))))))))
  ($Snap.combine
    ($Snap.first ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@97@01))))))))))))))))
    ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@97@01)))))))))))))))))))
; [eval] diz.Ref__a[tid]
(push) ; 6
(set-option :timeout 10)
(assert (not (< $Perm.No $k@98@01)))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 6
(assert (not (>= tid@75@01 0)))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(push) ; 6
(assert (not (<
  tid@75@01
  (Seq_length
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@97@01)))))))))))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(assert (not
  (=
    (Seq_index
      ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@97@01)))))))
      tid@75@01)
    $Ref.null)))
(assert (=
  ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@97@01))))))))))))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@97@01)))))))))))))))))
    ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@97@01))))))))))))))))))))
; [eval] diz.Ref__b[tid]
(push) ; 6
(set-option :timeout 10)
(assert (not (< $Perm.No $k@99@01)))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 6
(assert (not (>= tid@75@01 0)))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(push) ; 6
(assert (not (<
  tid@75@01
  (Seq_length
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@97@01)))))))))))))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(push) ; 6
(set-option :timeout 10)
(assert (not (=
  (Seq_index
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@97@01)))))))
    tid@75@01)
  (Seq_index
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@97@01)))))))))
    tid@75@01))))
(check-sat)
; unknown
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(assert (not
  (=
    (Seq_index
      ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@97@01)))))))))
      tid@75@01)
    $Ref.null)))
; [eval] tid > 0
(set-option :timeout 0)
(push) ; 6
(set-option :timeout 10)
(assert (not (not (> tid@75@01 0))))
(check-sat)
; unknown
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 6
(set-option :timeout 10)
(assert (not (> tid@75@01 0)))
(check-sat)
; unknown
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
; [then-branch: 38 | tid@75@01 > 0 | live]
; [else-branch: 38 | !(tid@75@01 > 0) | live]
(set-option :timeout 0)
(push) ; 6
; [then-branch: 38 | tid@75@01 > 0]
(assert (> tid@75@01 0))
; [eval] diz.Ref__b[tid - 1]
(push) ; 7
(set-option :timeout 10)
(assert (not (< $Perm.No $k@99@01)))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
; [eval] tid - 1
(set-option :timeout 0)
(push) ; 7
(assert (not (>= (- tid@75@01 1) 0)))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(push) ; 7
(assert (not (<
  (- tid@75@01 1)
  (Seq_length
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@97@01)))))))))))))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(push) ; 7
(set-option :timeout 10)
(assert (not (=
  (Seq_index
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@97@01)))))))))
    tid@75@01)
  (Seq_index
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@97@01)))))))))
    (- tid@75@01 1)))))
(check-sat)
; unknown
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 7
(set-option :timeout 10)
(assert (not (=
  (Seq_index
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@97@01)))))))
    tid@75@01)
  (Seq_index
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@97@01)))))))))
    (- tid@75@01 1)))))
(check-sat)
; unknown
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(assert (not
  (=
    (Seq_index
      ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@97@01)))))))))
      (- tid@75@01 1))
    $Ref.null)))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@97@01)))))))))))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@97@01))))))))))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@97@01)))))))))))))))))))
; [eval] sys__result == 0
(set-option :timeout 0)
(push) ; 7
(set-option :timeout 10)
(assert (not (not (= sys__result@80@01 0))))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
; [then-branch: 39 | sys__result@80@01 == 0 | dead]
; [else-branch: 39 | sys__result@80@01 != 0 | live]
(set-option :timeout 0)
(push) ; 7
; [else-branch: 39 | sys__result@80@01 != 0]
(assert (not (= sys__result@80@01 0)))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@97@01))))))))))))))))
  $Snap.unit))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@97@01))))))))))))))))
  $Snap.unit))
; [eval] sys__result == this_barrier
(assert (= sys__result@80@01 this_barrier@78@01))
(pop) ; 7
(pop) ; 6
(push) ; 6
; [else-branch: 38 | !(tid@75@01 > 0)]
(assert (not (> tid@75@01 0)))
(assert (=
  ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@97@01)))))))))))))))))
  $Snap.unit))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@97@01)))))))))))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@97@01))))))))))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@97@01)))))))))))))))))))
; [eval] sys__result == 0
(push) ; 7
(set-option :timeout 10)
(assert (not (not (= sys__result@80@01 0))))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
; [then-branch: 40 | sys__result@80@01 == 0 | dead]
; [else-branch: 40 | sys__result@80@01 != 0 | live]
(set-option :timeout 0)
(push) ; 7
; [else-branch: 40 | sys__result@80@01 != 0]
(assert (not (= sys__result@80@01 0)))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@97@01))))))))))))))))
  $Snap.unit))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@97@01))))))))))))))))
  $Snap.unit))
; [eval] sys__result == this_barrier
(assert (= sys__result@80@01 this_barrier@78@01))
(pop) ; 7
(pop) ; 6
(pop) ; 5
(push) ; 5
; [else-branch: 37 | sys__result@80@01 != 1]
(assert (not (= sys__result@80@01 1)))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@97@01)))))))))))))))
  $Snap.unit))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@97@01)))))))))))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@97@01))))))))))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@97@01)))))))))))))))))))
; [eval] sys__result == 0
(push) ; 6
(set-option :timeout 10)
(assert (not (not (= sys__result@80@01 0))))
(check-sat)
; unknown
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 6
(set-option :timeout 10)
(assert (not (= sys__result@80@01 0)))
(check-sat)
; unknown
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
; [then-branch: 41 | sys__result@80@01 == 0 | live]
; [else-branch: 41 | sys__result@80@01 != 0 | live]
(set-option :timeout 0)
(push) ; 6
; [then-branch: 41 | sys__result@80@01 == 0]
(assert (= sys__result@80@01 0))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@97@01))))))))))))))))
  ($Snap.combine
    ($Snap.first ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@97@01)))))))))))))))))
    ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@97@01))))))))))))))))))))
; [eval] diz.Ref__a[tid]
(push) ; 7
(set-option :timeout 10)
(assert (not (< $Perm.No $k@98@01)))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 7
(assert (not (>= tid@75@01 0)))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(push) ; 7
(assert (not (<
  tid@75@01
  (Seq_length
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@97@01)))))))))))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(assert (not
  (=
    (Seq_index
      ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@97@01)))))))
      tid@75@01)
    $Ref.null)))
(assert (=
  ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@97@01)))))))))))))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@97@01))))))))))))))))))
    ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@97@01)))))))))))))))))))))
; [eval] diz.Ref__b[tid]
(push) ; 7
(set-option :timeout 10)
(assert (not (< $Perm.No $k@99@01)))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 7
(assert (not (>= tid@75@01 0)))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(push) ; 7
(assert (not (<
  tid@75@01
  (Seq_length
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@97@01)))))))))))))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(push) ; 7
(set-option :timeout 10)
(assert (not (=
  (Seq_index
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@97@01)))))))
    tid@75@01)
  (Seq_index
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@97@01)))))))))
    tid@75@01))))
(check-sat)
; unknown
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(assert (not
  (=
    (Seq_index
      ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@97@01)))))))))
      tid@75@01)
    $Ref.null)))
; [eval] diz.Ref__c[tid]
(set-option :timeout 0)
(push) ; 7
(set-option :timeout 10)
(assert (not (< $Perm.No $k@100@01)))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 7
(assert (not (>= tid@75@01 0)))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(push) ; 7
(assert (not (<
  tid@75@01
  (Seq_length
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@97@01)))))))))))))))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(push) ; 7
(set-option :timeout 10)
(assert (not (=
  (Seq_index
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@97@01)))))))))
    tid@75@01)
  (Seq_index
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@97@01)))))))))))
    tid@75@01))))
(check-sat)
; unknown
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 7
(set-option :timeout 10)
(assert (not (=
  (Seq_index
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@97@01)))))))
    tid@75@01)
  (Seq_index
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@97@01)))))))))))
    tid@75@01))))
(check-sat)
; unknown
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(assert (not
  (=
    (Seq_index
      ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@97@01)))))))))))
      tid@75@01)
    $Ref.null)))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@97@01))))))))))))))))
  $Snap.unit))
; [eval] sys__result == this_barrier
(assert (= sys__result@80@01 this_barrier@78@01))
(pop) ; 6
(set-option :timeout 0)
(push) ; 6
; [else-branch: 41 | sys__result@80@01 != 0]
(assert (not (= sys__result@80@01 0)))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@97@01))))))))))))))))
  $Snap.unit))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@97@01))))))))))))))))
  $Snap.unit))
; [eval] sys__result == this_barrier
(assert (= sys__result@80@01 this_barrier@78@01))
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
; ---------- Ref__main_resources_of_1 ----------
(declare-const diz@101@01 $Ref)
(declare-const current_thread_id@102@01 Int)
(declare-const tcount@103@01 Int)
(declare-const gsize@104@01 Int)
(declare-const gid@105@01 Int)
(declare-const diz@106@01 $Ref)
(declare-const current_thread_id@107@01 Int)
(declare-const tcount@108@01 Int)
(declare-const gsize@109@01 Int)
(declare-const gid@110@01 Int)
(push) ; 1
(declare-const $t@111@01 $Snap)
(assert (= $t@111@01 ($Snap.combine ($Snap.first $t@111@01) ($Snap.second $t@111@01))))
(assert (= ($Snap.first $t@111@01) $Snap.unit))
; [eval] diz != null
(assert (not (= diz@106@01 $Ref.null)))
(assert (=
  ($Snap.second $t@111@01)
  ($Snap.combine
    ($Snap.first ($Snap.second $t@111@01))
    ($Snap.second ($Snap.second $t@111@01)))))
(assert (= ($Snap.first ($Snap.second $t@111@01)) $Snap.unit))
; [eval] current_thread_id >= 0
(assert (>= current_thread_id@107@01 0))
(assert (=
  ($Snap.second ($Snap.second $t@111@01))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second $t@111@01)))
    ($Snap.second ($Snap.second ($Snap.second $t@111@01))))))
(assert (= ($Snap.first ($Snap.second ($Snap.second $t@111@01))) $Snap.unit))
; [eval] tcount == gsize
(assert (= tcount@108@01 gsize@109@01))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second $t@111@01)))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@111@01))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@111@01)))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@111@01))))
  $Snap.unit))
; [eval] gid == 0
(assert (= gid@110@01 0))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@111@01))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@111@01)))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@111@01))))))))
(declare-const $k@112@01 $Perm)
(assert ($Perm.isReadVar $k@112@01))
(assert (<= $Perm.No $k@112@01))
(assert (<= $k@112@01 $Perm.Write))
(assert (=> (< $Perm.No $k@112@01) (not (= diz@106@01 $Ref.null))))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@111@01)))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@111@01))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@111@01)))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@111@01))))))
  $Snap.unit))
; [eval] |diz.Ref__a| == tcount
; [eval] |diz.Ref__a|
(push) ; 2
(set-option :timeout 10)
(assert (not (< $Perm.No $k@112@01)))
(check-sat)
; unsat
(pop) ; 2
; 0.00s
; (get-info :all-statistics)
(assert (=
  (Seq_length
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@111@01)))))))
  tcount@108@01))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@111@01))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@111@01)))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@111@01))))))))))
(declare-const $k@113@01 $Perm)
(assert ($Perm.isReadVar $k@113@01))
(assert (<= $Perm.No $k@113@01))
(assert (<= $k@113@01 $Perm.Write))
(assert (=> (< $Perm.No $k@113@01) (not (= diz@106@01 $Ref.null))))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@111@01)))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@111@01))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@111@01)))))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@111@01))))))))
  $Snap.unit))
; [eval] |diz.Ref__b| == tcount
; [eval] |diz.Ref__b|
(set-option :timeout 0)
(push) ; 2
(set-option :timeout 10)
(assert (not (< $Perm.No $k@113@01)))
(check-sat)
; unsat
(pop) ; 2
; 0.00s
; (get-info :all-statistics)
(assert (=
  (Seq_length
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@111@01)))))))))
  tcount@108@01))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@111@01))))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@111@01)))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@111@01))))))))))))
(declare-const $k@114@01 $Perm)
(assert ($Perm.isReadVar $k@114@01))
(assert (<= $Perm.No $k@114@01))
(assert (<= $k@114@01 $Perm.Write))
(assert (=> (< $Perm.No $k@114@01) (not (= diz@106@01 $Ref.null))))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@111@01)))))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@111@01))))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@111@01)))))))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@111@01))))))))))
  $Snap.unit))
; [eval] |diz.Ref__c| == tcount
; [eval] |diz.Ref__c|
(set-option :timeout 0)
(push) ; 2
(set-option :timeout 10)
(assert (not (< $Perm.No $k@114@01)))
(check-sat)
; unsat
(pop) ; 2
; 0.00s
; (get-info :all-statistics)
(assert (=
  (Seq_length
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@111@01)))))))))))
  tcount@108@01))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@111@01))))))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@111@01)))))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@111@01))))))))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@111@01)))))))))))
  $Snap.unit))
; [eval] (forall i: Int, j: Int :: { diz.Ref__a[i], diz.Ref__a[j] } i >= 0 && (i < |diz.Ref__a| && (j >= 0 && (j < |diz.Ref__a| && i != j))) ==> diz.Ref__a[i] != diz.Ref__a[j])
(declare-const i@115@01 Int)
(declare-const j@116@01 Int)
(set-option :timeout 0)
(push) ; 2
; [eval] i >= 0 && (i < |diz.Ref__a| && (j >= 0 && (j < |diz.Ref__a| && i != j))) ==> diz.Ref__a[i] != diz.Ref__a[j]
; [eval] i >= 0 && (i < |diz.Ref__a| && (j >= 0 && (j < |diz.Ref__a| && i != j)))
; [eval] i >= 0
(push) ; 3
; [then-branch: 42 | !(i@115@01 >= 0) | live]
; [else-branch: 42 | i@115@01 >= 0 | live]
(push) ; 4
; [then-branch: 42 | !(i@115@01 >= 0)]
(assert (not (>= i@115@01 0)))
(pop) ; 4
(push) ; 4
; [else-branch: 42 | i@115@01 >= 0]
(assert (>= i@115@01 0))
; [eval] i < |diz.Ref__a|
; [eval] |diz.Ref__a|
(push) ; 5
(set-option :timeout 10)
(assert (not (< $Perm.No $k@112@01)))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 5
; [then-branch: 43 | !(i@115@01 < |First:(Second:(Second:(Second:(Second:($t@111@01)))))|) | live]
; [else-branch: 43 | i@115@01 < |First:(Second:(Second:(Second:(Second:($t@111@01)))))| | live]
(push) ; 6
; [then-branch: 43 | !(i@115@01 < |First:(Second:(Second:(Second:(Second:($t@111@01)))))|)]
(assert (not
  (<
    i@115@01
    (Seq_length
      ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@111@01))))))))))
(pop) ; 6
(push) ; 6
; [else-branch: 43 | i@115@01 < |First:(Second:(Second:(Second:(Second:($t@111@01)))))|]
(assert (<
  i@115@01
  (Seq_length
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@111@01)))))))))
; [eval] j >= 0
(push) ; 7
; [then-branch: 44 | !(j@116@01 >= 0) | live]
; [else-branch: 44 | j@116@01 >= 0 | live]
(push) ; 8
; [then-branch: 44 | !(j@116@01 >= 0)]
(assert (not (>= j@116@01 0)))
(pop) ; 8
(push) ; 8
; [else-branch: 44 | j@116@01 >= 0]
(assert (>= j@116@01 0))
; [eval] j < |diz.Ref__a|
; [eval] |diz.Ref__a|
(push) ; 9
(set-option :timeout 10)
(assert (not (< $Perm.No $k@112@01)))
(check-sat)
; unsat
(pop) ; 9
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 9
; [then-branch: 45 | !(j@116@01 < |First:(Second:(Second:(Second:(Second:($t@111@01)))))|) | live]
; [else-branch: 45 | j@116@01 < |First:(Second:(Second:(Second:(Second:($t@111@01)))))| | live]
(push) ; 10
; [then-branch: 45 | !(j@116@01 < |First:(Second:(Second:(Second:(Second:($t@111@01)))))|)]
(assert (not
  (<
    j@116@01
    (Seq_length
      ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@111@01))))))))))
(pop) ; 10
(push) ; 10
; [else-branch: 45 | j@116@01 < |First:(Second:(Second:(Second:(Second:($t@111@01)))))|]
(assert (<
  j@116@01
  (Seq_length
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@111@01)))))))))
; [eval] i != j
(pop) ; 10
(pop) ; 9
; Joined path conditions
; Joined path conditions
(assert (or
  (<
    j@116@01
    (Seq_length
      ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@111@01))))))))
  (not
    (<
      j@116@01
      (Seq_length
        ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@111@01)))))))))))
(pop) ; 8
(pop) ; 7
; Joined path conditions
; Joined path conditions
(assert (=>
  (>= j@116@01 0)
  (and
    (>= j@116@01 0)
    (or
      (<
        j@116@01
        (Seq_length
          ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@111@01))))))))
      (not
        (<
          j@116@01
          (Seq_length
            ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@111@01)))))))))))))
(assert (or (>= j@116@01 0) (not (>= j@116@01 0))))
(pop) ; 6
(pop) ; 5
; Joined path conditions
; Joined path conditions
(assert (=>
  (<
    i@115@01
    (Seq_length
      ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@111@01))))))))
  (and
    (<
      i@115@01
      (Seq_length
        ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@111@01))))))))
    (=>
      (>= j@116@01 0)
      (and
        (>= j@116@01 0)
        (or
          (<
            j@116@01
            (Seq_length
              ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@111@01))))))))
          (not
            (<
              j@116@01
              (Seq_length
                ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@111@01))))))))))))
    (or (>= j@116@01 0) (not (>= j@116@01 0))))))
(assert (or
  (<
    i@115@01
    (Seq_length
      ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@111@01))))))))
  (not
    (<
      i@115@01
      (Seq_length
        ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@111@01)))))))))))
(pop) ; 4
(pop) ; 3
; Joined path conditions
; Joined path conditions
(assert (=>
  (>= i@115@01 0)
  (and
    (>= i@115@01 0)
    (=>
      (<
        i@115@01
        (Seq_length
          ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@111@01))))))))
      (and
        (<
          i@115@01
          (Seq_length
            ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@111@01))))))))
        (=>
          (>= j@116@01 0)
          (and
            (>= j@116@01 0)
            (or
              (<
                j@116@01
                (Seq_length
                  ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@111@01))))))))
              (not
                (<
                  j@116@01
                  (Seq_length
                    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@111@01))))))))))))
        (or (>= j@116@01 0) (not (>= j@116@01 0)))))
    (or
      (<
        i@115@01
        (Seq_length
          ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@111@01))))))))
      (not
        (<
          i@115@01
          (Seq_length
            ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@111@01)))))))))))))
(assert (or (>= i@115@01 0) (not (>= i@115@01 0))))
(push) ; 3
; [then-branch: 46 | i@115@01 >= 0 && i@115@01 < |First:(Second:(Second:(Second:(Second:($t@111@01)))))| && j@116@01 >= 0 && j@116@01 < |First:(Second:(Second:(Second:(Second:($t@111@01)))))| && i@115@01 != j@116@01 | live]
; [else-branch: 46 | !(i@115@01 >= 0 && i@115@01 < |First:(Second:(Second:(Second:(Second:($t@111@01)))))| && j@116@01 >= 0 && j@116@01 < |First:(Second:(Second:(Second:(Second:($t@111@01)))))| && i@115@01 != j@116@01) | live]
(push) ; 4
; [then-branch: 46 | i@115@01 >= 0 && i@115@01 < |First:(Second:(Second:(Second:(Second:($t@111@01)))))| && j@116@01 >= 0 && j@116@01 < |First:(Second:(Second:(Second:(Second:($t@111@01)))))| && i@115@01 != j@116@01]
(assert (and
  (>= i@115@01 0)
  (and
    (<
      i@115@01
      (Seq_length
        ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@111@01))))))))
    (and
      (>= j@116@01 0)
      (and
        (<
          j@116@01
          (Seq_length
            ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@111@01))))))))
        (not (= i@115@01 j@116@01)))))))
; [eval] diz.Ref__a[i] != diz.Ref__a[j]
; [eval] diz.Ref__a[i]
(push) ; 5
(set-option :timeout 10)
(assert (not (< $Perm.No $k@112@01)))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
; [eval] diz.Ref__a[j]
(set-option :timeout 0)
(push) ; 5
(set-option :timeout 10)
(assert (not (< $Perm.No $k@112@01)))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(pop) ; 4
(set-option :timeout 0)
(push) ; 4
; [else-branch: 46 | !(i@115@01 >= 0 && i@115@01 < |First:(Second:(Second:(Second:(Second:($t@111@01)))))| && j@116@01 >= 0 && j@116@01 < |First:(Second:(Second:(Second:(Second:($t@111@01)))))| && i@115@01 != j@116@01)]
(assert (not
  (and
    (>= i@115@01 0)
    (and
      (<
        i@115@01
        (Seq_length
          ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@111@01))))))))
      (and
        (>= j@116@01 0)
        (and
          (<
            j@116@01
            (Seq_length
              ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@111@01))))))))
          (not (= i@115@01 j@116@01))))))))
(pop) ; 4
(pop) ; 3
; Joined path conditions
(assert (=>
  (and
    (>= i@115@01 0)
    (and
      (<
        i@115@01
        (Seq_length
          ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@111@01))))))))
      (and
        (>= j@116@01 0)
        (and
          (<
            j@116@01
            (Seq_length
              ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@111@01))))))))
          (not (= i@115@01 j@116@01))))))
  (and
    (>= i@115@01 0)
    (<
      i@115@01
      (Seq_length
        ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@111@01))))))))
    (>= j@116@01 0)
    (<
      j@116@01
      (Seq_length
        ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@111@01))))))))
    (not (= i@115@01 j@116@01)))))
; Joined path conditions
(assert (or
  (not
    (and
      (>= i@115@01 0)
      (and
        (<
          i@115@01
          (Seq_length
            ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@111@01))))))))
        (and
          (>= j@116@01 0)
          (and
            (<
              j@116@01
              (Seq_length
                ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@111@01))))))))
            (not (= i@115@01 j@116@01)))))))
  (and
    (>= i@115@01 0)
    (and
      (<
        i@115@01
        (Seq_length
          ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@111@01))))))))
      (and
        (>= j@116@01 0)
        (and
          (<
            j@116@01
            (Seq_length
              ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@111@01))))))))
          (not (= i@115@01 j@116@01))))))))
(pop) ; 2
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall ((i@115@01 Int) (j@116@01 Int)) (!
  (and
    (=>
      (>= i@115@01 0)
      (and
        (>= i@115@01 0)
        (=>
          (<
            i@115@01
            (Seq_length
              ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@111@01))))))))
          (and
            (<
              i@115@01
              (Seq_length
                ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@111@01))))))))
            (=>
              (>= j@116@01 0)
              (and
                (>= j@116@01 0)
                (or
                  (<
                    j@116@01
                    (Seq_length
                      ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@111@01))))))))
                  (not
                    (<
                      j@116@01
                      (Seq_length
                        ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@111@01))))))))))))
            (or (>= j@116@01 0) (not (>= j@116@01 0)))))
        (or
          (<
            i@115@01
            (Seq_length
              ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@111@01))))))))
          (not
            (<
              i@115@01
              (Seq_length
                ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@111@01))))))))))))
    (or (>= i@115@01 0) (not (>= i@115@01 0)))
    (=>
      (and
        (>= i@115@01 0)
        (and
          (<
            i@115@01
            (Seq_length
              ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@111@01))))))))
          (and
            (>= j@116@01 0)
            (and
              (<
                j@116@01
                (Seq_length
                  ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@111@01))))))))
              (not (= i@115@01 j@116@01))))))
      (and
        (>= i@115@01 0)
        (<
          i@115@01
          (Seq_length
            ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@111@01))))))))
        (>= j@116@01 0)
        (<
          j@116@01
          (Seq_length
            ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@111@01))))))))
        (not (= i@115@01 j@116@01))))
    (or
      (not
        (and
          (>= i@115@01 0)
          (and
            (<
              i@115@01
              (Seq_length
                ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@111@01))))))))
            (and
              (>= j@116@01 0)
              (and
                (<
                  j@116@01
                  (Seq_length
                    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@111@01))))))))
                (not (= i@115@01 j@116@01)))))))
      (and
        (>= i@115@01 0)
        (and
          (<
            i@115@01
            (Seq_length
              ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@111@01))))))))
          (and
            (>= j@116@01 0)
            (and
              (<
                j@116@01
                (Seq_length
                  ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@111@01))))))))
              (not (= i@115@01 j@116@01))))))))
  :pattern ((Seq_index
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@111@01))))))
    i@115@01) (Seq_index
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@111@01))))))
    j@116@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/third_party/test_kernel_example_pvl.vpr@126@12@126@136-aux|)))
(assert (forall ((i@115@01 Int) (j@116@01 Int)) (!
  (=>
    (and
      (>= i@115@01 0)
      (and
        (<
          i@115@01
          (Seq_length
            ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@111@01))))))))
        (and
          (>= j@116@01 0)
          (and
            (<
              j@116@01
              (Seq_length
                ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@111@01))))))))
            (not (= i@115@01 j@116@01))))))
    (not
      (=
        (Seq_index
          ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@111@01))))))
          i@115@01)
        (Seq_index
          ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@111@01))))))
          j@116@01))))
  :pattern ((Seq_index
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@111@01))))))
    i@115@01) (Seq_index
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@111@01))))))
    j@116@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/third_party/test_kernel_example_pvl.vpr@126@12@126@136|)))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@111@01)))))))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@111@01))))))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@111@01)))))))))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@111@01))))))))))))
  $Snap.unit))
; [eval] (forall i: Int, j: Int :: { diz.Ref__b[i], diz.Ref__b[j] } i >= 0 && (i < |diz.Ref__b| && (j >= 0 && (j < |diz.Ref__b| && i != j))) ==> diz.Ref__b[i] != diz.Ref__b[j])
(declare-const i@117@01 Int)
(declare-const j@118@01 Int)
(push) ; 2
; [eval] i >= 0 && (i < |diz.Ref__b| && (j >= 0 && (j < |diz.Ref__b| && i != j))) ==> diz.Ref__b[i] != diz.Ref__b[j]
; [eval] i >= 0 && (i < |diz.Ref__b| && (j >= 0 && (j < |diz.Ref__b| && i != j)))
; [eval] i >= 0
(push) ; 3
; [then-branch: 47 | !(i@117@01 >= 0) | live]
; [else-branch: 47 | i@117@01 >= 0 | live]
(push) ; 4
; [then-branch: 47 | !(i@117@01 >= 0)]
(assert (not (>= i@117@01 0)))
(pop) ; 4
(push) ; 4
; [else-branch: 47 | i@117@01 >= 0]
(assert (>= i@117@01 0))
; [eval] i < |diz.Ref__b|
; [eval] |diz.Ref__b|
(push) ; 5
(set-option :timeout 10)
(assert (not (< $Perm.No $k@113@01)))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 5
; [then-branch: 48 | !(i@117@01 < |First:(Second:(Second:(Second:(Second:(Second:(Second:($t@111@01)))))))|) | live]
; [else-branch: 48 | i@117@01 < |First:(Second:(Second:(Second:(Second:(Second:(Second:($t@111@01)))))))| | live]
(push) ; 6
; [then-branch: 48 | !(i@117@01 < |First:(Second:(Second:(Second:(Second:(Second:(Second:($t@111@01)))))))|)]
(assert (not
  (<
    i@117@01
    (Seq_length
      ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@111@01))))))))))))
(pop) ; 6
(push) ; 6
; [else-branch: 48 | i@117@01 < |First:(Second:(Second:(Second:(Second:(Second:(Second:($t@111@01)))))))|]
(assert (<
  i@117@01
  (Seq_length
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@111@01)))))))))))
; [eval] j >= 0
(push) ; 7
; [then-branch: 49 | !(j@118@01 >= 0) | live]
; [else-branch: 49 | j@118@01 >= 0 | live]
(push) ; 8
; [then-branch: 49 | !(j@118@01 >= 0)]
(assert (not (>= j@118@01 0)))
(pop) ; 8
(push) ; 8
; [else-branch: 49 | j@118@01 >= 0]
(assert (>= j@118@01 0))
; [eval] j < |diz.Ref__b|
; [eval] |diz.Ref__b|
(push) ; 9
(set-option :timeout 10)
(assert (not (< $Perm.No $k@113@01)))
(check-sat)
; unsat
(pop) ; 9
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 9
; [then-branch: 50 | !(j@118@01 < |First:(Second:(Second:(Second:(Second:(Second:(Second:($t@111@01)))))))|) | live]
; [else-branch: 50 | j@118@01 < |First:(Second:(Second:(Second:(Second:(Second:(Second:($t@111@01)))))))| | live]
(push) ; 10
; [then-branch: 50 | !(j@118@01 < |First:(Second:(Second:(Second:(Second:(Second:(Second:($t@111@01)))))))|)]
(assert (not
  (<
    j@118@01
    (Seq_length
      ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@111@01))))))))))))
(pop) ; 10
(push) ; 10
; [else-branch: 50 | j@118@01 < |First:(Second:(Second:(Second:(Second:(Second:(Second:($t@111@01)))))))|]
(assert (<
  j@118@01
  (Seq_length
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@111@01)))))))))))
; [eval] i != j
(pop) ; 10
(pop) ; 9
; Joined path conditions
; Joined path conditions
(assert (or
  (<
    j@118@01
    (Seq_length
      ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@111@01))))))))))
  (not
    (<
      j@118@01
      (Seq_length
        ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@111@01)))))))))))))
(pop) ; 8
(pop) ; 7
; Joined path conditions
; Joined path conditions
(assert (=>
  (>= j@118@01 0)
  (and
    (>= j@118@01 0)
    (or
      (<
        j@118@01
        (Seq_length
          ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@111@01))))))))))
      (not
        (<
          j@118@01
          (Seq_length
            ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@111@01)))))))))))))))
(assert (or (>= j@118@01 0) (not (>= j@118@01 0))))
(pop) ; 6
(pop) ; 5
; Joined path conditions
; Joined path conditions
(assert (=>
  (<
    i@117@01
    (Seq_length
      ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@111@01))))))))))
  (and
    (<
      i@117@01
      (Seq_length
        ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@111@01))))))))))
    (=>
      (>= j@118@01 0)
      (and
        (>= j@118@01 0)
        (or
          (<
            j@118@01
            (Seq_length
              ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@111@01))))))))))
          (not
            (<
              j@118@01
              (Seq_length
                ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@111@01))))))))))))))
    (or (>= j@118@01 0) (not (>= j@118@01 0))))))
(assert (or
  (<
    i@117@01
    (Seq_length
      ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@111@01))))))))))
  (not
    (<
      i@117@01
      (Seq_length
        ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@111@01)))))))))))))
(pop) ; 4
(pop) ; 3
; Joined path conditions
; Joined path conditions
(assert (=>
  (>= i@117@01 0)
  (and
    (>= i@117@01 0)
    (=>
      (<
        i@117@01
        (Seq_length
          ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@111@01))))))))))
      (and
        (<
          i@117@01
          (Seq_length
            ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@111@01))))))))))
        (=>
          (>= j@118@01 0)
          (and
            (>= j@118@01 0)
            (or
              (<
                j@118@01
                (Seq_length
                  ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@111@01))))))))))
              (not
                (<
                  j@118@01
                  (Seq_length
                    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@111@01))))))))))))))
        (or (>= j@118@01 0) (not (>= j@118@01 0)))))
    (or
      (<
        i@117@01
        (Seq_length
          ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@111@01))))))))))
      (not
        (<
          i@117@01
          (Seq_length
            ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@111@01)))))))))))))))
(assert (or (>= i@117@01 0) (not (>= i@117@01 0))))
(push) ; 3
; [then-branch: 51 | i@117@01 >= 0 && i@117@01 < |First:(Second:(Second:(Second:(Second:(Second:(Second:($t@111@01)))))))| && j@118@01 >= 0 && j@118@01 < |First:(Second:(Second:(Second:(Second:(Second:(Second:($t@111@01)))))))| && i@117@01 != j@118@01 | live]
; [else-branch: 51 | !(i@117@01 >= 0 && i@117@01 < |First:(Second:(Second:(Second:(Second:(Second:(Second:($t@111@01)))))))| && j@118@01 >= 0 && j@118@01 < |First:(Second:(Second:(Second:(Second:(Second:(Second:($t@111@01)))))))| && i@117@01 != j@118@01) | live]
(push) ; 4
; [then-branch: 51 | i@117@01 >= 0 && i@117@01 < |First:(Second:(Second:(Second:(Second:(Second:(Second:($t@111@01)))))))| && j@118@01 >= 0 && j@118@01 < |First:(Second:(Second:(Second:(Second:(Second:(Second:($t@111@01)))))))| && i@117@01 != j@118@01]
(assert (and
  (>= i@117@01 0)
  (and
    (<
      i@117@01
      (Seq_length
        ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@111@01))))))))))
    (and
      (>= j@118@01 0)
      (and
        (<
          j@118@01
          (Seq_length
            ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@111@01))))))))))
        (not (= i@117@01 j@118@01)))))))
; [eval] diz.Ref__b[i] != diz.Ref__b[j]
; [eval] diz.Ref__b[i]
(push) ; 5
(set-option :timeout 10)
(assert (not (< $Perm.No $k@113@01)))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
; [eval] diz.Ref__b[j]
(set-option :timeout 0)
(push) ; 5
(set-option :timeout 10)
(assert (not (< $Perm.No $k@113@01)))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(pop) ; 4
(set-option :timeout 0)
(push) ; 4
; [else-branch: 51 | !(i@117@01 >= 0 && i@117@01 < |First:(Second:(Second:(Second:(Second:(Second:(Second:($t@111@01)))))))| && j@118@01 >= 0 && j@118@01 < |First:(Second:(Second:(Second:(Second:(Second:(Second:($t@111@01)))))))| && i@117@01 != j@118@01)]
(assert (not
  (and
    (>= i@117@01 0)
    (and
      (<
        i@117@01
        (Seq_length
          ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@111@01))))))))))
      (and
        (>= j@118@01 0)
        (and
          (<
            j@118@01
            (Seq_length
              ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@111@01))))))))))
          (not (= i@117@01 j@118@01))))))))
(pop) ; 4
(pop) ; 3
; Joined path conditions
(assert (=>
  (and
    (>= i@117@01 0)
    (and
      (<
        i@117@01
        (Seq_length
          ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@111@01))))))))))
      (and
        (>= j@118@01 0)
        (and
          (<
            j@118@01
            (Seq_length
              ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@111@01))))))))))
          (not (= i@117@01 j@118@01))))))
  (and
    (>= i@117@01 0)
    (<
      i@117@01
      (Seq_length
        ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@111@01))))))))))
    (>= j@118@01 0)
    (<
      j@118@01
      (Seq_length
        ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@111@01))))))))))
    (not (= i@117@01 j@118@01)))))
; Joined path conditions
(assert (or
  (not
    (and
      (>= i@117@01 0)
      (and
        (<
          i@117@01
          (Seq_length
            ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@111@01))))))))))
        (and
          (>= j@118@01 0)
          (and
            (<
              j@118@01
              (Seq_length
                ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@111@01))))))))))
            (not (= i@117@01 j@118@01)))))))
  (and
    (>= i@117@01 0)
    (and
      (<
        i@117@01
        (Seq_length
          ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@111@01))))))))))
      (and
        (>= j@118@01 0)
        (and
          (<
            j@118@01
            (Seq_length
              ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@111@01))))))))))
          (not (= i@117@01 j@118@01))))))))
(pop) ; 2
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall ((i@117@01 Int) (j@118@01 Int)) (!
  (and
    (=>
      (>= i@117@01 0)
      (and
        (>= i@117@01 0)
        (=>
          (<
            i@117@01
            (Seq_length
              ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@111@01))))))))))
          (and
            (<
              i@117@01
              (Seq_length
                ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@111@01))))))))))
            (=>
              (>= j@118@01 0)
              (and
                (>= j@118@01 0)
                (or
                  (<
                    j@118@01
                    (Seq_length
                      ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@111@01))))))))))
                  (not
                    (<
                      j@118@01
                      (Seq_length
                        ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@111@01))))))))))))))
            (or (>= j@118@01 0) (not (>= j@118@01 0)))))
        (or
          (<
            i@117@01
            (Seq_length
              ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@111@01))))))))))
          (not
            (<
              i@117@01
              (Seq_length
                ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@111@01))))))))))))))
    (or (>= i@117@01 0) (not (>= i@117@01 0)))
    (=>
      (and
        (>= i@117@01 0)
        (and
          (<
            i@117@01
            (Seq_length
              ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@111@01))))))))))
          (and
            (>= j@118@01 0)
            (and
              (<
                j@118@01
                (Seq_length
                  ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@111@01))))))))))
              (not (= i@117@01 j@118@01))))))
      (and
        (>= i@117@01 0)
        (<
          i@117@01
          (Seq_length
            ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@111@01))))))))))
        (>= j@118@01 0)
        (<
          j@118@01
          (Seq_length
            ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@111@01))))))))))
        (not (= i@117@01 j@118@01))))
    (or
      (not
        (and
          (>= i@117@01 0)
          (and
            (<
              i@117@01
              (Seq_length
                ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@111@01))))))))))
            (and
              (>= j@118@01 0)
              (and
                (<
                  j@118@01
                  (Seq_length
                    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@111@01))))))))))
                (not (= i@117@01 j@118@01)))))))
      (and
        (>= i@117@01 0)
        (and
          (<
            i@117@01
            (Seq_length
              ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@111@01))))))))))
          (and
            (>= j@118@01 0)
            (and
              (<
                j@118@01
                (Seq_length
                  ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@111@01))))))))))
              (not (= i@117@01 j@118@01))))))))
  :pattern ((Seq_index
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@111@01))))))))
    i@117@01) (Seq_index
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@111@01))))))))
    j@118@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/third_party/test_kernel_example_pvl.vpr@127@12@127@136-aux|)))
(assert (forall ((i@117@01 Int) (j@118@01 Int)) (!
  (=>
    (and
      (>= i@117@01 0)
      (and
        (<
          i@117@01
          (Seq_length
            ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@111@01))))))))))
        (and
          (>= j@118@01 0)
          (and
            (<
              j@118@01
              (Seq_length
                ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@111@01))))))))))
            (not (= i@117@01 j@118@01))))))
    (not
      (=
        (Seq_index
          ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@111@01))))))))
          i@117@01)
        (Seq_index
          ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@111@01))))))))
          j@118@01))))
  :pattern ((Seq_index
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@111@01))))))))
    i@117@01) (Seq_index
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@111@01))))))))
    j@118@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/third_party/test_kernel_example_pvl.vpr@127@12@127@136|)))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@111@01))))))))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@111@01)))))))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@111@01))))))))))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@111@01)))))))))))))
  $Snap.unit))
; [eval] (forall i: Int, j: Int :: { diz.Ref__c[i], diz.Ref__c[j] } i >= 0 && (i < |diz.Ref__c| && (j >= 0 && (j < |diz.Ref__c| && i != j))) ==> diz.Ref__c[i] != diz.Ref__c[j])
(declare-const i@119@01 Int)
(declare-const j@120@01 Int)
(push) ; 2
; [eval] i >= 0 && (i < |diz.Ref__c| && (j >= 0 && (j < |diz.Ref__c| && i != j))) ==> diz.Ref__c[i] != diz.Ref__c[j]
; [eval] i >= 0 && (i < |diz.Ref__c| && (j >= 0 && (j < |diz.Ref__c| && i != j)))
; [eval] i >= 0
(push) ; 3
; [then-branch: 52 | !(i@119@01 >= 0) | live]
; [else-branch: 52 | i@119@01 >= 0 | live]
(push) ; 4
; [then-branch: 52 | !(i@119@01 >= 0)]
(assert (not (>= i@119@01 0)))
(pop) ; 4
(push) ; 4
; [else-branch: 52 | i@119@01 >= 0]
(assert (>= i@119@01 0))
; [eval] i < |diz.Ref__c|
; [eval] |diz.Ref__c|
(push) ; 5
(set-option :timeout 10)
(assert (not (< $Perm.No $k@114@01)))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 5
; [then-branch: 53 | !(i@119@01 < |First:(Second:(Second:(Second:(Second:(Second:(Second:(Second:(Second:($t@111@01)))))))))|) | live]
; [else-branch: 53 | i@119@01 < |First:(Second:(Second:(Second:(Second:(Second:(Second:(Second:(Second:($t@111@01)))))))))| | live]
(push) ; 6
; [then-branch: 53 | !(i@119@01 < |First:(Second:(Second:(Second:(Second:(Second:(Second:(Second:(Second:($t@111@01)))))))))|)]
(assert (not
  (<
    i@119@01
    (Seq_length
      ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@111@01))))))))))))))
(pop) ; 6
(push) ; 6
; [else-branch: 53 | i@119@01 < |First:(Second:(Second:(Second:(Second:(Second:(Second:(Second:(Second:($t@111@01)))))))))|]
(assert (<
  i@119@01
  (Seq_length
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@111@01)))))))))))))
; [eval] j >= 0
(push) ; 7
; [then-branch: 54 | !(j@120@01 >= 0) | live]
; [else-branch: 54 | j@120@01 >= 0 | live]
(push) ; 8
; [then-branch: 54 | !(j@120@01 >= 0)]
(assert (not (>= j@120@01 0)))
(pop) ; 8
(push) ; 8
; [else-branch: 54 | j@120@01 >= 0]
(assert (>= j@120@01 0))
; [eval] j < |diz.Ref__c|
; [eval] |diz.Ref__c|
(push) ; 9
(set-option :timeout 10)
(assert (not (< $Perm.No $k@114@01)))
(check-sat)
; unsat
(pop) ; 9
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 9
; [then-branch: 55 | !(j@120@01 < |First:(Second:(Second:(Second:(Second:(Second:(Second:(Second:(Second:($t@111@01)))))))))|) | live]
; [else-branch: 55 | j@120@01 < |First:(Second:(Second:(Second:(Second:(Second:(Second:(Second:(Second:($t@111@01)))))))))| | live]
(push) ; 10
; [then-branch: 55 | !(j@120@01 < |First:(Second:(Second:(Second:(Second:(Second:(Second:(Second:(Second:($t@111@01)))))))))|)]
(assert (not
  (<
    j@120@01
    (Seq_length
      ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@111@01))))))))))))))
(pop) ; 10
(push) ; 10
; [else-branch: 55 | j@120@01 < |First:(Second:(Second:(Second:(Second:(Second:(Second:(Second:(Second:($t@111@01)))))))))|]
(assert (<
  j@120@01
  (Seq_length
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@111@01)))))))))))))
; [eval] i != j
(pop) ; 10
(pop) ; 9
; Joined path conditions
; Joined path conditions
(assert (or
  (<
    j@120@01
    (Seq_length
      ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@111@01))))))))))))
  (not
    (<
      j@120@01
      (Seq_length
        ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@111@01)))))))))))))))
(pop) ; 8
(pop) ; 7
; Joined path conditions
; Joined path conditions
(assert (=>
  (>= j@120@01 0)
  (and
    (>= j@120@01 0)
    (or
      (<
        j@120@01
        (Seq_length
          ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@111@01))))))))))))
      (not
        (<
          j@120@01
          (Seq_length
            ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@111@01)))))))))))))))))
(assert (or (>= j@120@01 0) (not (>= j@120@01 0))))
(pop) ; 6
(pop) ; 5
; Joined path conditions
; Joined path conditions
(assert (=>
  (<
    i@119@01
    (Seq_length
      ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@111@01))))))))))))
  (and
    (<
      i@119@01
      (Seq_length
        ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@111@01))))))))))))
    (=>
      (>= j@120@01 0)
      (and
        (>= j@120@01 0)
        (or
          (<
            j@120@01
            (Seq_length
              ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@111@01))))))))))))
          (not
            (<
              j@120@01
              (Seq_length
                ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@111@01))))))))))))))))
    (or (>= j@120@01 0) (not (>= j@120@01 0))))))
(assert (or
  (<
    i@119@01
    (Seq_length
      ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@111@01))))))))))))
  (not
    (<
      i@119@01
      (Seq_length
        ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@111@01)))))))))))))))
(pop) ; 4
(pop) ; 3
; Joined path conditions
; Joined path conditions
(assert (=>
  (>= i@119@01 0)
  (and
    (>= i@119@01 0)
    (=>
      (<
        i@119@01
        (Seq_length
          ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@111@01))))))))))))
      (and
        (<
          i@119@01
          (Seq_length
            ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@111@01))))))))))))
        (=>
          (>= j@120@01 0)
          (and
            (>= j@120@01 0)
            (or
              (<
                j@120@01
                (Seq_length
                  ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@111@01))))))))))))
              (not
                (<
                  j@120@01
                  (Seq_length
                    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@111@01))))))))))))))))
        (or (>= j@120@01 0) (not (>= j@120@01 0)))))
    (or
      (<
        i@119@01
        (Seq_length
          ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@111@01))))))))))))
      (not
        (<
          i@119@01
          (Seq_length
            ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@111@01)))))))))))))))))
(assert (or (>= i@119@01 0) (not (>= i@119@01 0))))
(push) ; 3
; [then-branch: 56 | i@119@01 >= 0 && i@119@01 < |First:(Second:(Second:(Second:(Second:(Second:(Second:(Second:(Second:($t@111@01)))))))))| && j@120@01 >= 0 && j@120@01 < |First:(Second:(Second:(Second:(Second:(Second:(Second:(Second:(Second:($t@111@01)))))))))| && i@119@01 != j@120@01 | live]
; [else-branch: 56 | !(i@119@01 >= 0 && i@119@01 < |First:(Second:(Second:(Second:(Second:(Second:(Second:(Second:(Second:($t@111@01)))))))))| && j@120@01 >= 0 && j@120@01 < |First:(Second:(Second:(Second:(Second:(Second:(Second:(Second:(Second:($t@111@01)))))))))| && i@119@01 != j@120@01) | live]
(push) ; 4
; [then-branch: 56 | i@119@01 >= 0 && i@119@01 < |First:(Second:(Second:(Second:(Second:(Second:(Second:(Second:(Second:($t@111@01)))))))))| && j@120@01 >= 0 && j@120@01 < |First:(Second:(Second:(Second:(Second:(Second:(Second:(Second:(Second:($t@111@01)))))))))| && i@119@01 != j@120@01]
(assert (and
  (>= i@119@01 0)
  (and
    (<
      i@119@01
      (Seq_length
        ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@111@01))))))))))))
    (and
      (>= j@120@01 0)
      (and
        (<
          j@120@01
          (Seq_length
            ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@111@01))))))))))))
        (not (= i@119@01 j@120@01)))))))
; [eval] diz.Ref__c[i] != diz.Ref__c[j]
; [eval] diz.Ref__c[i]
(push) ; 5
(set-option :timeout 10)
(assert (not (< $Perm.No $k@114@01)))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
; [eval] diz.Ref__c[j]
(set-option :timeout 0)
(push) ; 5
(set-option :timeout 10)
(assert (not (< $Perm.No $k@114@01)))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(pop) ; 4
(set-option :timeout 0)
(push) ; 4
; [else-branch: 56 | !(i@119@01 >= 0 && i@119@01 < |First:(Second:(Second:(Second:(Second:(Second:(Second:(Second:(Second:($t@111@01)))))))))| && j@120@01 >= 0 && j@120@01 < |First:(Second:(Second:(Second:(Second:(Second:(Second:(Second:(Second:($t@111@01)))))))))| && i@119@01 != j@120@01)]
(assert (not
  (and
    (>= i@119@01 0)
    (and
      (<
        i@119@01
        (Seq_length
          ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@111@01))))))))))))
      (and
        (>= j@120@01 0)
        (and
          (<
            j@120@01
            (Seq_length
              ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@111@01))))))))))))
          (not (= i@119@01 j@120@01))))))))
(pop) ; 4
(pop) ; 3
; Joined path conditions
(assert (=>
  (and
    (>= i@119@01 0)
    (and
      (<
        i@119@01
        (Seq_length
          ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@111@01))))))))))))
      (and
        (>= j@120@01 0)
        (and
          (<
            j@120@01
            (Seq_length
              ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@111@01))))))))))))
          (not (= i@119@01 j@120@01))))))
  (and
    (>= i@119@01 0)
    (<
      i@119@01
      (Seq_length
        ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@111@01))))))))))))
    (>= j@120@01 0)
    (<
      j@120@01
      (Seq_length
        ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@111@01))))))))))))
    (not (= i@119@01 j@120@01)))))
; Joined path conditions
(assert (or
  (not
    (and
      (>= i@119@01 0)
      (and
        (<
          i@119@01
          (Seq_length
            ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@111@01))))))))))))
        (and
          (>= j@120@01 0)
          (and
            (<
              j@120@01
              (Seq_length
                ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@111@01))))))))))))
            (not (= i@119@01 j@120@01)))))))
  (and
    (>= i@119@01 0)
    (and
      (<
        i@119@01
        (Seq_length
          ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@111@01))))))))))))
      (and
        (>= j@120@01 0)
        (and
          (<
            j@120@01
            (Seq_length
              ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@111@01))))))))))))
          (not (= i@119@01 j@120@01))))))))
(pop) ; 2
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall ((i@119@01 Int) (j@120@01 Int)) (!
  (and
    (=>
      (>= i@119@01 0)
      (and
        (>= i@119@01 0)
        (=>
          (<
            i@119@01
            (Seq_length
              ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@111@01))))))))))))
          (and
            (<
              i@119@01
              (Seq_length
                ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@111@01))))))))))))
            (=>
              (>= j@120@01 0)
              (and
                (>= j@120@01 0)
                (or
                  (<
                    j@120@01
                    (Seq_length
                      ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@111@01))))))))))))
                  (not
                    (<
                      j@120@01
                      (Seq_length
                        ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@111@01))))))))))))))))
            (or (>= j@120@01 0) (not (>= j@120@01 0)))))
        (or
          (<
            i@119@01
            (Seq_length
              ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@111@01))))))))))))
          (not
            (<
              i@119@01
              (Seq_length
                ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@111@01))))))))))))))))
    (or (>= i@119@01 0) (not (>= i@119@01 0)))
    (=>
      (and
        (>= i@119@01 0)
        (and
          (<
            i@119@01
            (Seq_length
              ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@111@01))))))))))))
          (and
            (>= j@120@01 0)
            (and
              (<
                j@120@01
                (Seq_length
                  ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@111@01))))))))))))
              (not (= i@119@01 j@120@01))))))
      (and
        (>= i@119@01 0)
        (<
          i@119@01
          (Seq_length
            ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@111@01))))))))))))
        (>= j@120@01 0)
        (<
          j@120@01
          (Seq_length
            ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@111@01))))))))))))
        (not (= i@119@01 j@120@01))))
    (or
      (not
        (and
          (>= i@119@01 0)
          (and
            (<
              i@119@01
              (Seq_length
                ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@111@01))))))))))))
            (and
              (>= j@120@01 0)
              (and
                (<
                  j@120@01
                  (Seq_length
                    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@111@01))))))))))))
                (not (= i@119@01 j@120@01)))))))
      (and
        (>= i@119@01 0)
        (and
          (<
            i@119@01
            (Seq_length
              ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@111@01))))))))))))
          (and
            (>= j@120@01 0)
            (and
              (<
                j@120@01
                (Seq_length
                  ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@111@01))))))))))))
              (not (= i@119@01 j@120@01))))))))
  :pattern ((Seq_index
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@111@01))))))))))
    i@119@01) (Seq_index
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@111@01))))))))))
    j@120@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/third_party/test_kernel_example_pvl.vpr@128@12@128@136-aux|)))
(assert (forall ((i@119@01 Int) (j@120@01 Int)) (!
  (=>
    (and
      (>= i@119@01 0)
      (and
        (<
          i@119@01
          (Seq_length
            ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@111@01))))))))))))
        (and
          (>= j@120@01 0)
          (and
            (<
              j@120@01
              (Seq_length
                ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@111@01))))))))))))
            (not (= i@119@01 j@120@01))))))
    (not
      (=
        (Seq_index
          ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@111@01))))))))))
          i@119@01)
        (Seq_index
          ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@111@01))))))))))
          j@120@01))))
  :pattern ((Seq_index
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@111@01))))))))))
    i@119@01) (Seq_index
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@111@01))))))))))
    j@120@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/third_party/test_kernel_example_pvl.vpr@128@12@128@136|)))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@111@01)))))))))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@111@01))))))))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@111@01)))))))))))))))))
(declare-const tid@121@01 Int)
(push) ; 2
; [eval] 0 <= tid && tid < gsize
; [eval] 0 <= tid
(push) ; 3
; [then-branch: 57 | !(0 <= tid@121@01) | live]
; [else-branch: 57 | 0 <= tid@121@01 | live]
(push) ; 4
; [then-branch: 57 | !(0 <= tid@121@01)]
(assert (not (<= 0 tid@121@01)))
(pop) ; 4
(push) ; 4
; [else-branch: 57 | 0 <= tid@121@01]
(assert (<= 0 tid@121@01))
; [eval] tid < gsize
(pop) ; 4
(pop) ; 3
; Joined path conditions
; Joined path conditions
(assert (or (<= 0 tid@121@01) (not (<= 0 tid@121@01))))
(assert (and (<= 0 tid@121@01) (< tid@121@01 gsize@109@01)))
; [eval] diz.Ref__a[tid]
(push) ; 3
(set-option :timeout 10)
(assert (not (< $Perm.No $k@112@01)))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(assert (not (>= tid@121@01 0)))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(push) ; 3
(assert (not (<
  tid@121@01
  (Seq_length
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@111@01))))))))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(pop) ; 2
(declare-fun inv@122@01 ($Ref) Int)
(declare-fun img@123@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
(assert (forall ((tid@121@01 Int)) (!
  (=>
    (and (<= 0 tid@121@01) (< tid@121@01 gsize@109@01))
    (or (<= 0 tid@121@01) (not (<= 0 tid@121@01))))
  :pattern ((Seq_index
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@111@01))))))
    tid@121@01))
  :qid |Ref__Integer_value-aux|)))
; Check receiver injectivity
(push) ; 2
(assert (not (forall ((tid1@121@01 Int) (tid2@121@01 Int)) (!
  (=>
    (and
      (and (<= 0 tid1@121@01) (< tid1@121@01 gsize@109@01))
      (and (<= 0 tid2@121@01) (< tid2@121@01 gsize@109@01))
      (=
        (Seq_index
          ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@111@01))))))
          tid1@121@01)
        (Seq_index
          ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@111@01))))))
          tid2@121@01)))
    (= tid1@121@01 tid2@121@01))
  
  :qid |Ref__Integer_value-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 2
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((tid@121@01 Int)) (!
  (=>
    (and (<= 0 tid@121@01) (< tid@121@01 gsize@109@01))
    (and
      (=
        (inv@122@01 (Seq_index
          ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@111@01))))))
          tid@121@01))
        tid@121@01)
      (img@123@01 (Seq_index
        ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@111@01))))))
        tid@121@01))))
  :pattern ((Seq_index
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@111@01))))))
    tid@121@01))
  :qid |quant-u-7062|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@123@01 r)
      (and (<= 0 (inv@122@01 r)) (< (inv@122@01 r) gsize@109@01)))
    (=
      (Seq_index
        ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@111@01))))))
        (inv@122@01 r))
      r))
  :pattern ((inv@122@01 r))
  :qid |Ref__Integer_value-fctOfInv|)))
; Permissions are non-negative
; Field permissions are at most one
; Permission implies non-null receiver
(assert (forall ((tid@121@01 Int)) (!
  (=>
    (and (<= 0 tid@121@01) (< tid@121@01 gsize@109@01))
    (not
      (=
        (Seq_index
          ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@111@01))))))
          tid@121@01)
        $Ref.null)))
  :pattern ((Seq_index
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@111@01))))))
    tid@121@01))
  :qid |Ref__Integer_value-permImpliesNonNull|)))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@111@01))))))))))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@111@01)))))))))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@111@01))))))))))))))))))
(declare-const tid@124@01 Int)
(push) ; 2
; [eval] 0 <= tid && tid < gsize
; [eval] 0 <= tid
(push) ; 3
; [then-branch: 58 | !(0 <= tid@124@01) | live]
; [else-branch: 58 | 0 <= tid@124@01 | live]
(push) ; 4
; [then-branch: 58 | !(0 <= tid@124@01)]
(assert (not (<= 0 tid@124@01)))
(pop) ; 4
(push) ; 4
; [else-branch: 58 | 0 <= tid@124@01]
(assert (<= 0 tid@124@01))
; [eval] tid < gsize
(pop) ; 4
(pop) ; 3
; Joined path conditions
; Joined path conditions
(assert (or (<= 0 tid@124@01) (not (<= 0 tid@124@01))))
(assert (and (<= 0 tid@124@01) (< tid@124@01 gsize@109@01)))
; [eval] diz.Ref__b[tid]
(push) ; 3
(set-option :timeout 10)
(assert (not (< $Perm.No $k@113@01)))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(assert (not (>= tid@124@01 0)))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(push) ; 3
(assert (not (<
  tid@124@01
  (Seq_length
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@111@01))))))))))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(pop) ; 2
(declare-fun inv@125@01 ($Ref) Int)
(declare-fun img@126@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
(assert (forall ((tid@124@01 Int)) (!
  (=>
    (and (<= 0 tid@124@01) (< tid@124@01 gsize@109@01))
    (or (<= 0 tid@124@01) (not (<= 0 tid@124@01))))
  :pattern ((Seq_index
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@111@01))))))))
    tid@124@01))
  :qid |Ref__Integer_value-aux|)))
; Check receiver injectivity
(push) ; 2
(assert (not (forall ((tid1@124@01 Int) (tid2@124@01 Int)) (!
  (=>
    (and
      (and (<= 0 tid1@124@01) (< tid1@124@01 gsize@109@01))
      (and (<= 0 tid2@124@01) (< tid2@124@01 gsize@109@01))
      (=
        (Seq_index
          ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@111@01))))))))
          tid1@124@01)
        (Seq_index
          ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@111@01))))))))
          tid2@124@01)))
    (= tid1@124@01 tid2@124@01))
  
  :qid |Ref__Integer_value-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 2
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((tid@124@01 Int)) (!
  (=>
    (and (<= 0 tid@124@01) (< tid@124@01 gsize@109@01))
    (and
      (=
        (inv@125@01 (Seq_index
          ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@111@01))))))))
          tid@124@01))
        tid@124@01)
      (img@126@01 (Seq_index
        ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@111@01))))))))
        tid@124@01))))
  :pattern ((Seq_index
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@111@01))))))))
    tid@124@01))
  :qid |quant-u-7064|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@126@01 r)
      (and (<= 0 (inv@125@01 r)) (< (inv@125@01 r) gsize@109@01)))
    (=
      (Seq_index
        ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@111@01))))))))
        (inv@125@01 r))
      r))
  :pattern ((inv@125@01 r))
  :qid |Ref__Integer_value-fctOfInv|)))
; Permissions are non-negative
; Field permissions are at most one
; Permission implies non-null receiver
(assert (forall ((tid@124@01 Int)) (!
  (=>
    (and (<= 0 tid@124@01) (< tid@124@01 gsize@109@01))
    (not
      (=
        (Seq_index
          ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@111@01))))))))
          tid@124@01)
        $Ref.null)))
  :pattern ((Seq_index
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@111@01))))))))
    tid@124@01))
  :qid |Ref__Integer_value-permImpliesNonNull|)))
(push) ; 2
(set-option :timeout 10)
(assert (not (forall ((r $Ref)) (!
  (and
    (=
      (Seq_index
        ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@111@01))))))))
        tid@124@01)
      (Seq_index
        ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@111@01))))))
        tid@121@01))
    (=
      (and
        (img@126@01 r)
        (and (<= 0 (inv@125@01 r)) (< (inv@125@01 r) gsize@109@01)))
      (and
        (img@123@01 r)
        (and (<= 0 (inv@122@01 r)) (< (inv@122@01 r) gsize@109@01)))))
  
  :qid |quant-u-7065|))))
(check-sat)
; unknown
(pop) ; 2
; 0.00s
; (get-info :all-statistics)
(declare-const tid@127@01 Int)
(set-option :timeout 0)
(push) ; 2
; [eval] 0 <= tid && tid < gsize
; [eval] 0 <= tid
(push) ; 3
; [then-branch: 59 | !(0 <= tid@127@01) | live]
; [else-branch: 59 | 0 <= tid@127@01 | live]
(push) ; 4
; [then-branch: 59 | !(0 <= tid@127@01)]
(assert (not (<= 0 tid@127@01)))
(pop) ; 4
(push) ; 4
; [else-branch: 59 | 0 <= tid@127@01]
(assert (<= 0 tid@127@01))
; [eval] tid < gsize
(pop) ; 4
(pop) ; 3
; Joined path conditions
; Joined path conditions
(assert (or (<= 0 tid@127@01) (not (<= 0 tid@127@01))))
(assert (and (<= 0 tid@127@01) (< tid@127@01 gsize@109@01)))
; [eval] diz.Ref__c[tid]
(push) ; 3
(set-option :timeout 10)
(assert (not (< $Perm.No $k@114@01)))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(assert (not (>= tid@127@01 0)))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(push) ; 3
(assert (not (<
  tid@127@01
  (Seq_length
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@111@01))))))))))))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(pop) ; 2
(declare-fun inv@128@01 ($Ref) Int)
(declare-fun img@129@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
(assert (forall ((tid@127@01 Int)) (!
  (=>
    (and (<= 0 tid@127@01) (< tid@127@01 gsize@109@01))
    (or (<= 0 tid@127@01) (not (<= 0 tid@127@01))))
  :pattern ((Seq_index
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@111@01))))))))))
    tid@127@01))
  :qid |Ref__Integer_value-aux|)))
; Check receiver injectivity
(push) ; 2
(assert (not (forall ((tid1@127@01 Int) (tid2@127@01 Int)) (!
  (=>
    (and
      (and (<= 0 tid1@127@01) (< tid1@127@01 gsize@109@01))
      (and (<= 0 tid2@127@01) (< tid2@127@01 gsize@109@01))
      (=
        (Seq_index
          ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@111@01))))))))))
          tid1@127@01)
        (Seq_index
          ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@111@01))))))))))
          tid2@127@01)))
    (= tid1@127@01 tid2@127@01))
  
  :qid |Ref__Integer_value-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 2
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((tid@127@01 Int)) (!
  (=>
    (and (<= 0 tid@127@01) (< tid@127@01 gsize@109@01))
    (and
      (=
        (inv@128@01 (Seq_index
          ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@111@01))))))))))
          tid@127@01))
        tid@127@01)
      (img@129@01 (Seq_index
        ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@111@01))))))))))
        tid@127@01))))
  :pattern ((Seq_index
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@111@01))))))))))
    tid@127@01))
  :qid |quant-u-7067|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@129@01 r)
      (and (<= 0 (inv@128@01 r)) (< (inv@128@01 r) gsize@109@01)))
    (=
      (Seq_index
        ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@111@01))))))))))
        (inv@128@01 r))
      r))
  :pattern ((inv@128@01 r))
  :qid |Ref__Integer_value-fctOfInv|)))
; Permissions are non-negative
; Field permissions are at most one
; Permission implies non-null receiver
(assert (forall ((tid@127@01 Int)) (!
  (=>
    (and (<= 0 tid@127@01) (< tid@127@01 gsize@109@01))
    (not
      (=
        (Seq_index
          ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@111@01))))))))))
          tid@127@01)
        $Ref.null)))
  :pattern ((Seq_index
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@111@01))))))))))
    tid@127@01))
  :qid |Ref__Integer_value-permImpliesNonNull|)))
(push) ; 2
(set-option :timeout 10)
(assert (not (forall ((r $Ref)) (!
  (and
    (=
      (Seq_index
        ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@111@01))))))))))
        tid@127@01)
      (Seq_index
        ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@111@01))))))))
        tid@124@01))
    (=
      (and
        (img@129@01 r)
        (and (<= 0 (inv@128@01 r)) (< (inv@128@01 r) gsize@109@01)))
      (and
        (img@126@01 r)
        (and (<= 0 (inv@125@01 r)) (< (inv@125@01 r) gsize@109@01)))))
  
  :qid |quant-u-7068|))))
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
    (=
      (Seq_index
        ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@111@01))))))))))
        tid@127@01)
      (Seq_index
        ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@111@01))))))
        tid@121@01))
    (=
      (and
        (img@129@01 r)
        (and (<= 0 (inv@128@01 r)) (< (inv@128@01 r) gsize@109@01)))
      (and
        (img@123@01 r)
        (and (<= 0 (inv@122@01 r)) (< (inv@122@01 r) gsize@109@01)))))
  
  :qid |quant-u-7069|))))
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
(declare-const $t@130@01 $Snap)
(assert (= $t@130@01 ($Snap.combine ($Snap.first $t@130@01) ($Snap.second $t@130@01))))
(assert (= ($Snap.first $t@130@01) $Snap.unit))
; [eval] tcount == gsize
(assert (=
  ($Snap.second $t@130@01)
  ($Snap.combine
    ($Snap.first ($Snap.second $t@130@01))
    ($Snap.second ($Snap.second $t@130@01)))))
(assert (= ($Snap.first ($Snap.second $t@130@01)) $Snap.unit))
; [eval] gid == 0
(assert (=
  ($Snap.second ($Snap.second $t@130@01))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second $t@130@01)))
    ($Snap.second ($Snap.second ($Snap.second $t@130@01))))))
(declare-const $k@131@01 $Perm)
(assert ($Perm.isReadVar $k@131@01))
(assert (<= $Perm.No $k@131@01))
(assert (<= $k@131@01 $Perm.Write))
(assert (=> (< $Perm.No $k@131@01) (not (= diz@106@01 $Ref.null))))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second $t@130@01)))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@130@01))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@130@01)))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@130@01))))
  $Snap.unit))
; [eval] |diz.Ref__a| == tcount
; [eval] |diz.Ref__a|
(push) ; 3
(set-option :timeout 10)
(assert (not (< $Perm.No $k@131@01)))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(assert (=
  (Seq_length
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second $t@130@01)))))
  tcount@108@01))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@130@01))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@130@01)))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@130@01))))))))
(declare-const $k@132@01 $Perm)
(assert ($Perm.isReadVar $k@132@01))
(assert (<= $Perm.No $k@132@01))
(assert (<= $k@132@01 $Perm.Write))
(assert (=> (< $Perm.No $k@132@01) (not (= diz@106@01 $Ref.null))))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@130@01)))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@130@01))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@130@01)))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@130@01))))))
  $Snap.unit))
; [eval] |diz.Ref__b| == tcount
; [eval] |diz.Ref__b|
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (< $Perm.No $k@132@01)))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(assert (=
  (Seq_length
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@130@01)))))))
  tcount@108@01))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@130@01))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@130@01)))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@130@01))))))))))
(declare-const $k@133@01 $Perm)
(assert ($Perm.isReadVar $k@133@01))
(assert (<= $Perm.No $k@133@01))
(assert (<= $k@133@01 $Perm.Write))
(assert (=> (< $Perm.No $k@133@01) (not (= diz@106@01 $Ref.null))))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@130@01)))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@130@01))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@130@01)))))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@130@01))))))))
  $Snap.unit))
; [eval] |diz.Ref__c| == tcount
; [eval] |diz.Ref__c|
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (< $Perm.No $k@133@01)))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(assert (=
  (Seq_length
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@130@01)))))))))
  tcount@108@01))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@130@01))))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@130@01)))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@130@01))))))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@130@01)))))))))
  $Snap.unit))
; [eval] diz.Ref__a == old(diz.Ref__a)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (< $Perm.No $k@131@01)))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; [eval] old(diz.Ref__a)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (< $Perm.No $k@112@01)))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(assert (Seq_equal
  ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second $t@130@01))))
  ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@111@01))))))))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@130@01)))))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@130@01))))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@130@01)))))))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@130@01))))))))))
  $Snap.unit))
; [eval] diz.Ref__b == old(diz.Ref__b)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (< $Perm.No $k@132@01)))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; [eval] old(diz.Ref__b)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (< $Perm.No $k@113@01)))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(assert (Seq_equal
  ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@130@01))))))
  ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@111@01))))))))))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@130@01))))))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@130@01)))))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@130@01))))))))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@130@01)))))))))))
  $Snap.unit))
; [eval] diz.Ref__c == old(diz.Ref__c)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (< $Perm.No $k@133@01)))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; [eval] old(diz.Ref__c)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (< $Perm.No $k@114@01)))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(assert (Seq_equal
  ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@130@01))))))))
  ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@111@01))))))))))))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@130@01)))))))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@130@01))))))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@130@01)))))))))))))))
(declare-const tid@134@01 Int)
(set-option :timeout 0)
(push) ; 3
; [eval] 0 <= tid && tid < gsize
; [eval] 0 <= tid
(push) ; 4
; [then-branch: 60 | !(0 <= tid@134@01) | live]
; [else-branch: 60 | 0 <= tid@134@01 | live]
(push) ; 5
; [then-branch: 60 | !(0 <= tid@134@01)]
(assert (not (<= 0 tid@134@01)))
(pop) ; 5
(push) ; 5
; [else-branch: 60 | 0 <= tid@134@01]
(assert (<= 0 tid@134@01))
; [eval] tid < gsize
(pop) ; 5
(pop) ; 4
; Joined path conditions
; Joined path conditions
(assert (or (<= 0 tid@134@01) (not (<= 0 tid@134@01))))
(assert (and (<= 0 tid@134@01) (< tid@134@01 gsize@109@01)))
; [eval] diz.Ref__a[tid]
(push) ; 4
(set-option :timeout 10)
(assert (not (< $Perm.No $k@131@01)))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 4
(assert (not (>= tid@134@01 0)))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(push) ; 4
(assert (not (<
  tid@134@01
  (Seq_length
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second $t@130@01))))))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(pop) ; 3
(declare-fun inv@135@01 ($Ref) Int)
(declare-fun img@136@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
(assert (forall ((tid@134@01 Int)) (!
  (=>
    (and (<= 0 tid@134@01) (< tid@134@01 gsize@109@01))
    (or (<= 0 tid@134@01) (not (<= 0 tid@134@01))))
  :pattern ((Seq_index
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second $t@130@01))))
    tid@134@01))
  :qid |Ref__Integer_value-aux|)))
; Check receiver injectivity
(push) ; 3
(assert (not (forall ((tid1@134@01 Int) (tid2@134@01 Int)) (!
  (=>
    (and
      (and (<= 0 tid1@134@01) (< tid1@134@01 gsize@109@01))
      (and (<= 0 tid2@134@01) (< tid2@134@01 gsize@109@01))
      (=
        (Seq_index
          ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second $t@130@01))))
          tid1@134@01)
        (Seq_index
          ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second $t@130@01))))
          tid2@134@01)))
    (= tid1@134@01 tid2@134@01))
  
  :qid |Ref__Integer_value-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((tid@134@01 Int)) (!
  (=>
    (and (<= 0 tid@134@01) (< tid@134@01 gsize@109@01))
    (and
      (=
        (inv@135@01 (Seq_index
          ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second $t@130@01))))
          tid@134@01))
        tid@134@01)
      (img@136@01 (Seq_index
        ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second $t@130@01))))
        tid@134@01))))
  :pattern ((Seq_index
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second $t@130@01))))
    tid@134@01))
  :qid |quant-u-7071|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@136@01 r)
      (and (<= 0 (inv@135@01 r)) (< (inv@135@01 r) gsize@109@01)))
    (=
      (Seq_index
        ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second $t@130@01))))
        (inv@135@01 r))
      r))
  :pattern ((inv@135@01 r))
  :qid |Ref__Integer_value-fctOfInv|)))
; Permissions are non-negative
; Field permissions are at most one
; Permission implies non-null receiver
(assert (forall ((tid@134@01 Int)) (!
  (=>
    (and (<= 0 tid@134@01) (< tid@134@01 gsize@109@01))
    (not
      (=
        (Seq_index
          ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second $t@130@01))))
          tid@134@01)
        $Ref.null)))
  :pattern ((Seq_index
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second $t@130@01))))
    tid@134@01))
  :qid |Ref__Integer_value-permImpliesNonNull|)))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@130@01))))))))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@130@01)))))))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@130@01))))))))))))))))
(declare-const tid@137@01 Int)
(push) ; 3
; [eval] 0 <= tid && tid < gsize
; [eval] 0 <= tid
(push) ; 4
; [then-branch: 61 | !(0 <= tid@137@01) | live]
; [else-branch: 61 | 0 <= tid@137@01 | live]
(push) ; 5
; [then-branch: 61 | !(0 <= tid@137@01)]
(assert (not (<= 0 tid@137@01)))
(pop) ; 5
(push) ; 5
; [else-branch: 61 | 0 <= tid@137@01]
(assert (<= 0 tid@137@01))
; [eval] tid < gsize
(pop) ; 5
(pop) ; 4
; Joined path conditions
; Joined path conditions
(assert (or (<= 0 tid@137@01) (not (<= 0 tid@137@01))))
(assert (and (<= 0 tid@137@01) (< tid@137@01 gsize@109@01)))
; [eval] diz.Ref__b[tid]
(push) ; 4
(set-option :timeout 10)
(assert (not (< $Perm.No $k@132@01)))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 4
(assert (not (>= tid@137@01 0)))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(push) ; 4
(assert (not (<
  tid@137@01
  (Seq_length
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@130@01))))))))))
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
(assert (forall ((tid@137@01 Int)) (!
  (=>
    (and (<= 0 tid@137@01) (< tid@137@01 gsize@109@01))
    (or (<= 0 tid@137@01) (not (<= 0 tid@137@01))))
  :pattern ((Seq_index
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@130@01))))))
    tid@137@01))
  :qid |Ref__Integer_value-aux|)))
; Check receiver injectivity
(push) ; 3
(assert (not (forall ((tid1@137@01 Int) (tid2@137@01 Int)) (!
  (=>
    (and
      (and (<= 0 tid1@137@01) (< tid1@137@01 gsize@109@01))
      (and (<= 0 tid2@137@01) (< tid2@137@01 gsize@109@01))
      (=
        (Seq_index
          ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@130@01))))))
          tid1@137@01)
        (Seq_index
          ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@130@01))))))
          tid2@137@01)))
    (= tid1@137@01 tid2@137@01))
  
  :qid |Ref__Integer_value-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((tid@137@01 Int)) (!
  (=>
    (and (<= 0 tid@137@01) (< tid@137@01 gsize@109@01))
    (and
      (=
        (inv@138@01 (Seq_index
          ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@130@01))))))
          tid@137@01))
        tid@137@01)
      (img@139@01 (Seq_index
        ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@130@01))))))
        tid@137@01))))
  :pattern ((Seq_index
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@130@01))))))
    tid@137@01))
  :qid |quant-u-7073|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@139@01 r)
      (and (<= 0 (inv@138@01 r)) (< (inv@138@01 r) gsize@109@01)))
    (=
      (Seq_index
        ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@130@01))))))
        (inv@138@01 r))
      r))
  :pattern ((inv@138@01 r))
  :qid |Ref__Integer_value-fctOfInv|)))
; Permissions are non-negative
; Field permissions are at most one
; Permission implies non-null receiver
(assert (forall ((tid@137@01 Int)) (!
  (=>
    (and (<= 0 tid@137@01) (< tid@137@01 gsize@109@01))
    (not
      (=
        (Seq_index
          ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@130@01))))))
          tid@137@01)
        $Ref.null)))
  :pattern ((Seq_index
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@130@01))))))
    tid@137@01))
  :qid |Ref__Integer_value-permImpliesNonNull|)))
(push) ; 3
(set-option :timeout 10)
(assert (not (forall ((r $Ref)) (!
  (and
    (=
      (Seq_index
        ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@130@01))))))
        tid@137@01)
      (Seq_index
        ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second $t@130@01))))
        tid@134@01))
    (=
      (and
        (img@139@01 r)
        (and (<= 0 (inv@138@01 r)) (< (inv@138@01 r) gsize@109@01)))
      (and
        (img@136@01 r)
        (and (<= 0 (inv@135@01 r)) (< (inv@135@01 r) gsize@109@01)))))
  
  :qid |quant-u-7074|))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(declare-const tid@140@01 Int)
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
; [then-branch: 62 | True | live]
; [else-branch: 62 | False | dead]
(set-option :timeout 0)
(push) ; 5
; [then-branch: 62 | True]
(pop) ; 5
(pop) ; 4
; Joined path conditions
(push) ; 4
; [then-branch: 63 | !(0 <= tid@140@01) | live]
; [else-branch: 63 | 0 <= tid@140@01 | live]
(push) ; 5
; [then-branch: 63 | !(0 <= tid@140@01)]
(assert (not (<= 0 tid@140@01)))
(pop) ; 5
(push) ; 5
; [else-branch: 63 | 0 <= tid@140@01]
(assert (<= 0 tid@140@01))
; [eval] tid < gsize - 1
; [eval] gsize - 1
(pop) ; 5
(pop) ; 4
; Joined path conditions
; Joined path conditions
(assert (or (<= 0 tid@140@01) (not (<= 0 tid@140@01))))
(assert (and (<= 0 tid@140@01) (< tid@140@01 (- gsize@109@01 1))))
; [eval] diz.Ref__b[tid]
(push) ; 4
(set-option :timeout 10)
(assert (not (< $Perm.No $k@132@01)))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 4
(assert (not (>= tid@140@01 0)))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(push) ; 4
(assert (not (<
  tid@140@01
  (Seq_length
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@130@01))))))))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(pop) ; 3
(declare-fun inv@141@01 ($Ref) Int)
(declare-fun img@142@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
(assert (forall ((tid@140@01 Int)) (!
  (=>
    (and (<= 0 tid@140@01) (< tid@140@01 (- gsize@109@01 1)))
    (or (<= 0 tid@140@01) (not (<= 0 tid@140@01))))
  :pattern ((Seq_index
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@130@01))))))
    tid@140@01))
  :qid |Ref__Integer_value-aux|)))
; Check receiver injectivity
(push) ; 3
(assert (not (forall ((tid1@140@01 Int) (tid2@140@01 Int)) (!
  (=>
    (and
      (and (<= 0 tid1@140@01) (< tid1@140@01 (- gsize@109@01 1)))
      (and (<= 0 tid2@140@01) (< tid2@140@01 (- gsize@109@01 1)))
      (=
        (Seq_index
          ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@130@01))))))
          tid1@140@01)
        (Seq_index
          ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@130@01))))))
          tid2@140@01)))
    (= tid1@140@01 tid2@140@01))
  
  :qid |Ref__Integer_value-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((tid@140@01 Int)) (!
  (=>
    (and (<= 0 tid@140@01) (< tid@140@01 (- gsize@109@01 1)))
    (and
      (=
        (inv@141@01 (Seq_index
          ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@130@01))))))
          tid@140@01))
        tid@140@01)
      (img@142@01 (Seq_index
        ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@130@01))))))
        tid@140@01))))
  :pattern ((Seq_index
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@130@01))))))
    tid@140@01))
  :qid |quant-u-7076|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@142@01 r)
      (and (<= 0 (inv@141@01 r)) (< (inv@141@01 r) (- gsize@109@01 1))))
    (=
      (Seq_index
        ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@130@01))))))
        (inv@141@01 r))
      r))
  :pattern ((inv@141@01 r))
  :qid |Ref__Integer_value-fctOfInv|)))
; Permissions are non-negative
; Field permissions are at most one
; Permission implies non-null receiver
(assert (forall ((tid@140@01 Int)) (!
  (=>
    (and (<= 0 tid@140@01) (< tid@140@01 (- gsize@109@01 1)))
    (not
      (=
        (Seq_index
          ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@130@01))))))
          tid@140@01)
        $Ref.null)))
  :pattern ((Seq_index
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@130@01))))))
    tid@140@01))
  :qid |Ref__Integer_value-permImpliesNonNull|)))
(push) ; 3
(set-option :timeout 10)
(assert (not (forall ((r $Ref)) (!
  (and
    (=
      (Seq_index
        ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@130@01))))))
        tid@140@01)
      (Seq_index
        ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@130@01))))))
        tid@137@01))
    (=
      (and
        (img@142@01 r)
        (and (<= 0 (inv@141@01 r)) (< (inv@141@01 r) (- gsize@109@01 1))))
      (and
        (img@139@01 r)
        (and (<= 0 (inv@138@01 r)) (< (inv@138@01 r) gsize@109@01)))))
  
  :qid |quant-u-7077|))))
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
    (=
      (Seq_index
        ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@130@01))))))
        tid@140@01)
      (Seq_index
        ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second $t@130@01))))
        tid@134@01))
    (=
      (and
        (img@142@01 r)
        (and (<= 0 (inv@141@01 r)) (< (inv@141@01 r) (- gsize@109@01 1))))
      (and
        (img@136@01 r)
        (and (<= 0 (inv@135@01 r)) (< (inv@135@01 r) gsize@109@01)))))
  
  :qid |quant-u-7078|))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(pop) ; 2
(set-option :timeout 0)
(push) ; 2
; [eval] tcount == gsize
; [eval] gid == 0
(declare-const $k@143@01 $Perm)
(assert ($Perm.isReadVar $k@143@01))
(push) ; 3
(set-option :timeout 10)
(assert (not (not (= $k@112@01 $Perm.No))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(assert (< $k@143@01 $k@112@01))
(assert (<= $Perm.No (- $k@112@01 $k@143@01)))
(assert (<= (- $k@112@01 $k@143@01) $Perm.Write))
(assert (=> (< $Perm.No (- $k@112@01 $k@143@01)) (not (= diz@106@01 $Ref.null))))
; [eval] |diz.Ref__a| == tcount
; [eval] |diz.Ref__a|
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (< $Perm.No $k@112@01)))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(declare-const $k@144@01 $Perm)
(assert ($Perm.isReadVar $k@144@01))
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (not (= $k@113@01 $Perm.No))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(assert (< $k@144@01 $k@113@01))
(assert (<= $Perm.No (- $k@113@01 $k@144@01)))
(assert (<= (- $k@113@01 $k@144@01) $Perm.Write))
(assert (=> (< $Perm.No (- $k@113@01 $k@144@01)) (not (= diz@106@01 $Ref.null))))
; [eval] |diz.Ref__b| == tcount
; [eval] |diz.Ref__b|
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (< $Perm.No $k@113@01)))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(declare-const $k@145@01 $Perm)
(assert ($Perm.isReadVar $k@145@01))
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (not (= $k@114@01 $Perm.No))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(assert (< $k@145@01 $k@114@01))
(assert (<= $Perm.No (- $k@114@01 $k@145@01)))
(assert (<= (- $k@114@01 $k@145@01) $Perm.Write))
(assert (=> (< $Perm.No (- $k@114@01 $k@145@01)) (not (= diz@106@01 $Ref.null))))
; [eval] |diz.Ref__c| == tcount
; [eval] |diz.Ref__c|
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (< $Perm.No $k@114@01)))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; [eval] diz.Ref__a == old(diz.Ref__a)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (< $Perm.No $k@112@01)))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; [eval] old(diz.Ref__a)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (< $Perm.No $k@112@01)))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; [eval] diz.Ref__b == old(diz.Ref__b)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (< $Perm.No $k@113@01)))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; [eval] old(diz.Ref__b)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (< $Perm.No $k@113@01)))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; [eval] diz.Ref__c == old(diz.Ref__c)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (< $Perm.No $k@114@01)))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; [eval] old(diz.Ref__c)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (< $Perm.No $k@114@01)))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(declare-const tid@146@01 Int)
(set-option :timeout 0)
(push) ; 3
; [eval] 0 <= tid && tid < gsize
; [eval] 0 <= tid
(push) ; 4
; [then-branch: 64 | !(0 <= tid@146@01) | live]
; [else-branch: 64 | 0 <= tid@146@01 | live]
(push) ; 5
; [then-branch: 64 | !(0 <= tid@146@01)]
(assert (not (<= 0 tid@146@01)))
(pop) ; 5
(push) ; 5
; [else-branch: 64 | 0 <= tid@146@01]
(assert (<= 0 tid@146@01))
; [eval] tid < gsize
(pop) ; 5
(pop) ; 4
; Joined path conditions
; Joined path conditions
(assert (or (<= 0 tid@146@01) (not (<= 0 tid@146@01))))
(assert (and (<= 0 tid@146@01) (< tid@146@01 gsize@109@01)))
; [eval] diz.Ref__a[tid]
(push) ; 4
(set-option :timeout 10)
(assert (not (< $Perm.No $k@112@01)))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 4
(assert (not (>= tid@146@01 0)))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(push) ; 4
(assert (not (<
  tid@146@01
  (Seq_length
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@111@01))))))))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(pop) ; 3
(declare-fun inv@147@01 ($Ref) Int)
(declare-fun img@148@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
(assert (forall ((tid@146@01 Int)) (!
  (=>
    (and (<= 0 tid@146@01) (< tid@146@01 gsize@109@01))
    (or (<= 0 tid@146@01) (not (<= 0 tid@146@01))))
  :pattern ((Seq_index
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@111@01))))))
    tid@146@01))
  :qid |Ref__Integer_value-aux|)))
; Check receiver injectivity
(push) ; 3
(assert (not (forall ((tid1@146@01 Int) (tid2@146@01 Int)) (!
  (=>
    (and
      (and (<= 0 tid1@146@01) (< tid1@146@01 gsize@109@01))
      (and (<= 0 tid2@146@01) (< tid2@146@01 gsize@109@01))
      (=
        (Seq_index
          ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@111@01))))))
          tid1@146@01)
        (Seq_index
          ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@111@01))))))
          tid2@146@01)))
    (= tid1@146@01 tid2@146@01))
  
  :qid |Ref__Integer_value-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((tid@146@01 Int)) (!
  (=>
    (and (<= 0 tid@146@01) (< tid@146@01 gsize@109@01))
    (and
      (=
        (inv@147@01 (Seq_index
          ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@111@01))))))
          tid@146@01))
        tid@146@01)
      (img@148@01 (Seq_index
        ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@111@01))))))
        tid@146@01))))
  :pattern ((Seq_index
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@111@01))))))
    tid@146@01))
  :qid |Ref__Integer_value-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@148@01 r)
      (and (<= 0 (inv@147@01 r)) (< (inv@147@01 r) gsize@109@01)))
    (=
      (Seq_index
        ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@111@01))))))
        (inv@147@01 r))
      r))
  :pattern ((inv@147@01 r))
  :qid |Ref__Integer_value-fctOfInv|)))
(push) ; 3
(set-option :timeout 10)
(assert (not (forall ((tid@146@01 Int)) (!
  (=
    (Seq_index
      ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@111@01))))))
      tid@146@01)
    (Seq_index
      ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@111@01))))))))
      tid@146@01))
  
  :qid |quant-u-7080|))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (forall ((tid@146@01 Int)) (!
  (=
    (Seq_index
      ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@111@01))))))
      tid@146@01)
    (Seq_index
      ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@111@01))))))))))
      tid@146@01))
  
  :qid |quant-u-7081|))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Precomputing data for removing quantified permissions
(define-fun pTaken@149@01 ((r $Ref)) $Perm
  (ite
    (and
      (and (<= 0 (inv@147@01 r)) (< (inv@147@01 r) gsize@109@01))
      (img@148@01 r)
      (=
        r
        (Seq_index
          ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@111@01))))))
          (inv@147@01 r))))
    ($Perm.min
      (ite
        (and
          (img@123@01 r)
          (and (<= 0 (inv@122@01 r)) (< (inv@122@01 r) gsize@109@01)))
        $Perm.Write
        $Perm.No)
      $Perm.Write)
    $Perm.No))
(define-fun pTaken@150@01 ((r $Ref)) $Perm
  (ite
    (and
      (and (<= 0 (inv@147@01 r)) (< (inv@147@01 r) gsize@109@01))
      (img@148@01 r)
      (=
        r
        (Seq_index
          ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@111@01))))))
          (inv@147@01 r))))
    ($Perm.min
      (ite
        (and
          (img@126@01 r)
          (and (<= 0 (inv@125@01 r)) (< (inv@125@01 r) gsize@109@01)))
        $Perm.Write
        $Perm.No)
      (- $Perm.Write (pTaken@149@01 r)))
    $Perm.No))
(define-fun pTaken@151@01 ((r $Ref)) $Perm
  (ite
    (and
      (and (<= 0 (inv@147@01 r)) (< (inv@147@01 r) gsize@109@01))
      (img@148@01 r)
      (=
        r
        (Seq_index
          ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@111@01))))))
          (inv@147@01 r))))
    ($Perm.min
      (ite
        (and
          (img@129@01 r)
          (and (<= 0 (inv@128@01 r)) (< (inv@128@01 r) gsize@109@01)))
        (/ (to_real 1) (to_real 4))
        $Perm.No)
      (- (- $Perm.Write (pTaken@149@01 r)) (pTaken@150@01 r)))
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
          (img@123@01 r)
          (and (<= 0 (inv@122@01 r)) (< (inv@122@01 r) gsize@109@01)))
        $Perm.Write
        $Perm.No)
      (pTaken@149@01 r))
    $Perm.No)
  
  :qid |quant-u-7083|))))
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
      (and (<= 0 (inv@147@01 r)) (< (inv@147@01 r) gsize@109@01))
      (img@148@01 r)
      (=
        r
        (Seq_index
          ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@111@01))))))
          (inv@147@01 r))))
    (= (- $Perm.Write (pTaken@149@01 r)) $Perm.No))
  
  :qid |quant-u-7084|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Final check if taken enough permissions
; Done removing quantified permissions
(declare-const tid@152@01 Int)
(set-option :timeout 0)
(push) ; 3
; [eval] 0 <= tid && tid < gsize
; [eval] 0 <= tid
(push) ; 4
; [then-branch: 65 | !(0 <= tid@152@01) | live]
; [else-branch: 65 | 0 <= tid@152@01 | live]
(push) ; 5
; [then-branch: 65 | !(0 <= tid@152@01)]
(assert (not (<= 0 tid@152@01)))
(pop) ; 5
(push) ; 5
; [else-branch: 65 | 0 <= tid@152@01]
(assert (<= 0 tid@152@01))
; [eval] tid < gsize
(pop) ; 5
(pop) ; 4
; Joined path conditions
; Joined path conditions
(assert (or (<= 0 tid@152@01) (not (<= 0 tid@152@01))))
(assert (and (<= 0 tid@152@01) (< tid@152@01 gsize@109@01)))
; [eval] diz.Ref__b[tid]
(push) ; 4
(set-option :timeout 10)
(assert (not (< $Perm.No $k@113@01)))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 4
(assert (not (>= tid@152@01 0)))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(push) ; 4
(assert (not (<
  tid@152@01
  (Seq_length
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@111@01))))))))))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(pop) ; 3
(declare-fun inv@153@01 ($Ref) Int)
(declare-fun img@154@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
(assert (forall ((tid@152@01 Int)) (!
  (=>
    (and (<= 0 tid@152@01) (< tid@152@01 gsize@109@01))
    (or (<= 0 tid@152@01) (not (<= 0 tid@152@01))))
  :pattern ((Seq_index
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@111@01))))))))
    tid@152@01))
  :qid |Ref__Integer_value-aux|)))
; Check receiver injectivity
(push) ; 3
(assert (not (forall ((tid1@152@01 Int) (tid2@152@01 Int)) (!
  (=>
    (and
      (and (<= 0 tid1@152@01) (< tid1@152@01 gsize@109@01))
      (and (<= 0 tid2@152@01) (< tid2@152@01 gsize@109@01))
      (=
        (Seq_index
          ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@111@01))))))))
          tid1@152@01)
        (Seq_index
          ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@111@01))))))))
          tid2@152@01)))
    (= tid1@152@01 tid2@152@01))
  
  :qid |Ref__Integer_value-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((tid@152@01 Int)) (!
  (=>
    (and (<= 0 tid@152@01) (< tid@152@01 gsize@109@01))
    (and
      (=
        (inv@153@01 (Seq_index
          ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@111@01))))))))
          tid@152@01))
        tid@152@01)
      (img@154@01 (Seq_index
        ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@111@01))))))))
        tid@152@01))))
  :pattern ((Seq_index
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@111@01))))))))
    tid@152@01))
  :qid |Ref__Integer_value-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@154@01 r)
      (and (<= 0 (inv@153@01 r)) (< (inv@153@01 r) gsize@109@01)))
    (=
      (Seq_index
        ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@111@01))))))))
        (inv@153@01 r))
      r))
  :pattern ((inv@153@01 r))
  :qid |Ref__Integer_value-fctOfInv|)))
(push) ; 3
(set-option :timeout 10)
(assert (not (forall ((tid@152@01 Int)) (!
  (=
    (Seq_index
      ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@111@01))))))))
      tid@152@01)
    (Seq_index
      ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@111@01))))))))))
      tid@152@01))
  
  :qid |quant-u-7086|))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Precomputing data for removing quantified permissions
(define-fun pTaken@155@01 ((r $Ref)) $Perm
  (ite
    (and
      (and (<= 0 (inv@153@01 r)) (< (inv@153@01 r) gsize@109@01))
      (img@154@01 r)
      (=
        r
        (Seq_index
          ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@111@01))))))))
          (inv@153@01 r))))
    ($Perm.min
      (ite
        (and
          (img@126@01 r)
          (and (<= 0 (inv@125@01 r)) (< (inv@125@01 r) gsize@109@01)))
        $Perm.Write
        $Perm.No)
      (/ (to_real 1) (to_real 4)))
    $Perm.No))
(define-fun pTaken@156@01 ((r $Ref)) $Perm
  (ite
    (and
      (and (<= 0 (inv@153@01 r)) (< (inv@153@01 r) gsize@109@01))
      (img@154@01 r)
      (=
        r
        (Seq_index
          ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@111@01))))))))
          (inv@153@01 r))))
    ($Perm.min
      (ite
        (and
          (img@129@01 r)
          (and (<= 0 (inv@128@01 r)) (< (inv@128@01 r) gsize@109@01)))
        (/ (to_real 1) (to_real 4))
        $Perm.No)
      (- (/ (to_real 1) (to_real 4)) (pTaken@155@01 r)))
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
          (img@126@01 r)
          (and (<= 0 (inv@125@01 r)) (< (inv@125@01 r) gsize@109@01)))
        $Perm.Write
        $Perm.No)
      (pTaken@155@01 r))
    $Perm.No)
  
  :qid |quant-u-7088|))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (forall ((r $Ref)) (!
  (= (pTaken@155@01 r) $Perm.No)
  
  :qid |quant-u-7089|))))
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
      (and (<= 0 (inv@153@01 r)) (< (inv@153@01 r) gsize@109@01))
      (img@154@01 r)
      (=
        r
        (Seq_index
          ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@111@01))))))))
          (inv@153@01 r))))
    (= (- (/ (to_real 1) (to_real 4)) (pTaken@155@01 r)) $Perm.No))
  
  :qid |quant-u-7090|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Final check if taken enough permissions
; Done removing quantified permissions
(declare-const tid@157@01 Int)
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
; [then-branch: 66 | True | live]
; [else-branch: 66 | False | dead]
(set-option :timeout 0)
(push) ; 5
; [then-branch: 66 | True]
(pop) ; 5
(pop) ; 4
; Joined path conditions
(push) ; 4
; [then-branch: 67 | !(0 <= tid@157@01) | live]
; [else-branch: 67 | 0 <= tid@157@01 | live]
(push) ; 5
; [then-branch: 67 | !(0 <= tid@157@01)]
(assert (not (<= 0 tid@157@01)))
(pop) ; 5
(push) ; 5
; [else-branch: 67 | 0 <= tid@157@01]
(assert (<= 0 tid@157@01))
; [eval] tid < gsize - 1
; [eval] gsize - 1
(pop) ; 5
(pop) ; 4
; Joined path conditions
; Joined path conditions
(assert (or (<= 0 tid@157@01) (not (<= 0 tid@157@01))))
(assert (and (<= 0 tid@157@01) (< tid@157@01 (- gsize@109@01 1))))
; [eval] diz.Ref__b[tid]
(push) ; 4
(set-option :timeout 10)
(assert (not (< $Perm.No $k@113@01)))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 4
(assert (not (>= tid@157@01 0)))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(push) ; 4
(assert (not (<
  tid@157@01
  (Seq_length
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@111@01))))))))))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(pop) ; 3
(declare-fun inv@158@01 ($Ref) Int)
(declare-fun img@159@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
(assert (forall ((tid@157@01 Int)) (!
  (=>
    (and (<= 0 tid@157@01) (< tid@157@01 (- gsize@109@01 1)))
    (or (<= 0 tid@157@01) (not (<= 0 tid@157@01))))
  :pattern ((Seq_index
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@111@01))))))))
    tid@157@01))
  :qid |Ref__Integer_value-aux|)))
; Check receiver injectivity
(push) ; 3
(assert (not (forall ((tid1@157@01 Int) (tid2@157@01 Int)) (!
  (=>
    (and
      (and (<= 0 tid1@157@01) (< tid1@157@01 (- gsize@109@01 1)))
      (and (<= 0 tid2@157@01) (< tid2@157@01 (- gsize@109@01 1)))
      (=
        (Seq_index
          ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@111@01))))))))
          tid1@157@01)
        (Seq_index
          ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@111@01))))))))
          tid2@157@01)))
    (= tid1@157@01 tid2@157@01))
  
  :qid |Ref__Integer_value-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((tid@157@01 Int)) (!
  (=>
    (and (<= 0 tid@157@01) (< tid@157@01 (- gsize@109@01 1)))
    (and
      (=
        (inv@158@01 (Seq_index
          ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@111@01))))))))
          tid@157@01))
        tid@157@01)
      (img@159@01 (Seq_index
        ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@111@01))))))))
        tid@157@01))))
  :pattern ((Seq_index
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@111@01))))))))
    tid@157@01))
  :qid |Ref__Integer_value-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@159@01 r)
      (and (<= 0 (inv@158@01 r)) (< (inv@158@01 r) (- gsize@109@01 1))))
    (=
      (Seq_index
        ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@111@01))))))))
        (inv@158@01 r))
      r))
  :pattern ((inv@158@01 r))
  :qid |Ref__Integer_value-fctOfInv|)))
(push) ; 3
(set-option :timeout 10)
(assert (not (forall ((tid@157@01 Int)) (!
  (=
    (Seq_index
      ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@111@01))))))))
      tid@157@01)
    (Seq_index
      ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@111@01))))))))))
      tid@157@01))
  
  :qid |quant-u-7092|))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Precomputing data for removing quantified permissions
(define-fun pTaken@160@01 ((r $Ref)) $Perm
  (ite
    (and
      (and (<= 0 (inv@158@01 r)) (< (inv@158@01 r) (- gsize@109@01 1)))
      (img@159@01 r)
      (=
        r
        (Seq_index
          ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@111@01))))))))
          (inv@158@01 r))))
    ($Perm.min
      (ite
        (and
          (img@126@01 r)
          (and (<= 0 (inv@125@01 r)) (< (inv@125@01 r) gsize@109@01)))
        (- $Perm.Write (pTaken@155@01 r))
        $Perm.No)
      (/ (to_real 1) (to_real 4)))
    $Perm.No))
(define-fun pTaken@161@01 ((r $Ref)) $Perm
  (ite
    (and
      (and (<= 0 (inv@158@01 r)) (< (inv@158@01 r) (- gsize@109@01 1)))
      (img@159@01 r)
      (=
        r
        (Seq_index
          ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@111@01))))))))
          (inv@158@01 r))))
    ($Perm.min
      (ite
        (and
          (img@129@01 r)
          (and (<= 0 (inv@128@01 r)) (< (inv@128@01 r) gsize@109@01)))
        (/ (to_real 1) (to_real 4))
        $Perm.No)
      (- (/ (to_real 1) (to_real 4)) (pTaken@160@01 r)))
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
          (img@126@01 r)
          (and (<= 0 (inv@125@01 r)) (< (inv@125@01 r) gsize@109@01)))
        (- $Perm.Write (pTaken@155@01 r))
        $Perm.No)
      (pTaken@160@01 r))
    $Perm.No)
  
  :qid |quant-u-7094|))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (forall ((r $Ref)) (!
  (= (pTaken@160@01 r) $Perm.No)
  
  :qid |quant-u-7095|))))
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
      (and (<= 0 (inv@158@01 r)) (< (inv@158@01 r) (- gsize@109@01 1)))
      (img@159@01 r)
      (=
        r
        (Seq_index
          ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@111@01))))))))
          (inv@158@01 r))))
    (= (- (/ (to_real 1) (to_real 4)) (pTaken@160@01 r)) $Perm.No))
  
  :qid |quant-u-7096|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Final check if taken enough permissions
; Done removing quantified permissions
(pop) ; 2
(pop) ; 1
; ---------- Ref__main_post_check_1 ----------
(declare-const diz@162@01 $Ref)
(declare-const current_thread_id@163@01 Int)
(declare-const tcount@164@01 Int)
(declare-const gsize@165@01 Int)
(declare-const tid@166@01 Int)
(declare-const gid@167@01 Int)
(declare-const lid@168@01 Int)
(declare-const diz@169@01 $Ref)
(declare-const current_thread_id@170@01 Int)
(declare-const tcount@171@01 Int)
(declare-const gsize@172@01 Int)
(declare-const tid@173@01 Int)
(declare-const gid@174@01 Int)
(declare-const lid@175@01 Int)
(set-option :timeout 0)
(push) ; 1
(declare-const $t@176@01 $Snap)
(assert (= $t@176@01 ($Snap.combine ($Snap.first $t@176@01) ($Snap.second $t@176@01))))
(assert (= ($Snap.first $t@176@01) $Snap.unit))
; [eval] diz != null
(assert (not (= diz@169@01 $Ref.null)))
(assert (=
  ($Snap.second $t@176@01)
  ($Snap.combine
    ($Snap.first ($Snap.second $t@176@01))
    ($Snap.second ($Snap.second $t@176@01)))))
(assert (= ($Snap.first ($Snap.second $t@176@01)) $Snap.unit))
; [eval] current_thread_id >= 0
(assert (>= current_thread_id@170@01 0))
(assert (=
  ($Snap.second ($Snap.second $t@176@01))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second $t@176@01)))
    ($Snap.second ($Snap.second ($Snap.second $t@176@01))))))
(assert (= ($Snap.first ($Snap.second ($Snap.second $t@176@01))) $Snap.unit))
; [eval] 0 <= tid
(assert (<= 0 tid@173@01))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second $t@176@01)))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@176@01))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@176@01)))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@176@01))))
  $Snap.unit))
; [eval] tid < tcount
(assert (< tid@173@01 tcount@171@01))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@176@01))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@176@01)))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@176@01))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@176@01)))))
  $Snap.unit))
; [eval] tid == lid
(assert (= tid@173@01 lid@175@01))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@176@01)))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@176@01))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@176@01)))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@176@01))))))
  $Snap.unit))
; [eval] tcount == gsize
(assert (= tcount@171@01 gsize@172@01))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@176@01))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@176@01)))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@176@01))))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@176@01)))))))
  $Snap.unit))
; [eval] gid == 0
(assert (= gid@174@01 0))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@176@01)))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@176@01))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@176@01)))))))))))
(declare-const $k@177@01 $Perm)
(assert ($Perm.isReadVar $k@177@01))
(assert (<= $Perm.No $k@177@01))
(assert (<= $k@177@01 $Perm.Write))
(assert (=> (< $Perm.No $k@177@01) (not (= diz@169@01 $Ref.null))))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@176@01))))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@176@01)))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@176@01))))))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@176@01)))))))))
  $Snap.unit))
; [eval] |diz.Ref__a| == tcount
; [eval] |diz.Ref__a|
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
  tcount@171@01))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@176@01)))))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@176@01))))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@176@01)))))))))))))
(declare-const $k@178@01 $Perm)
(assert ($Perm.isReadVar $k@178@01))
(assert (<= $Perm.No $k@178@01))
(assert (<= $k@178@01 $Perm.Write))
(assert (=> (< $Perm.No $k@178@01) (not (= diz@169@01 $Ref.null))))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@176@01))))))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@176@01)))))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@176@01))))))))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@176@01)))))))))))
  $Snap.unit))
; [eval] |diz.Ref__b| == tcount
; [eval] |diz.Ref__b|
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
  tcount@171@01))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@176@01)))))))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@176@01))))))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@176@01)))))))))))))))
(declare-const $k@179@01 $Perm)
(assert ($Perm.isReadVar $k@179@01))
(assert (<= $Perm.No $k@179@01))
(assert (<= $k@179@01 $Perm.Write))
(assert (=> (< $Perm.No $k@179@01) (not (= diz@169@01 $Ref.null))))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@176@01))))))))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@176@01)))))))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@176@01))))))))))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@176@01)))))))))))))
  $Snap.unit))
; [eval] |diz.Ref__c| == tcount
; [eval] |diz.Ref__c|
(set-option :timeout 0)
(push) ; 2
(set-option :timeout 10)
(assert (not (< $Perm.No $k@179@01)))
(check-sat)
; unsat
(pop) ; 2
; 0.00s
; (get-info :all-statistics)
(assert (=
  (Seq_length
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@176@01))))))))))))))
  tcount@171@01))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@176@01)))))))))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@176@01))))))))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@176@01)))))))))))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@176@01))))))))))))))
  $Snap.unit))
; [eval] (forall i: Int, j: Int :: { diz.Ref__a[i], diz.Ref__a[j] } i >= 0 && (i < |diz.Ref__a| && (j >= 0 && (j < |diz.Ref__a| && i != j))) ==> diz.Ref__a[i] != diz.Ref__a[j])
(declare-const i@180@01 Int)
(declare-const j@181@01 Int)
(set-option :timeout 0)
(push) ; 2
; [eval] i >= 0 && (i < |diz.Ref__a| && (j >= 0 && (j < |diz.Ref__a| && i != j))) ==> diz.Ref__a[i] != diz.Ref__a[j]
; [eval] i >= 0 && (i < |diz.Ref__a| && (j >= 0 && (j < |diz.Ref__a| && i != j)))
; [eval] i >= 0
(push) ; 3
; [then-branch: 68 | !(i@180@01 >= 0) | live]
; [else-branch: 68 | i@180@01 >= 0 | live]
(push) ; 4
; [then-branch: 68 | !(i@180@01 >= 0)]
(assert (not (>= i@180@01 0)))
(pop) ; 4
(push) ; 4
; [else-branch: 68 | i@180@01 >= 0]
(assert (>= i@180@01 0))
; [eval] i < |diz.Ref__a|
; [eval] |diz.Ref__a|
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
; [then-branch: 69 | !(i@180@01 < |First:(Second:(Second:(Second:(Second:(Second:(Second:(Second:($t@176@01))))))))|) | live]
; [else-branch: 69 | i@180@01 < |First:(Second:(Second:(Second:(Second:(Second:(Second:(Second:($t@176@01))))))))| | live]
(push) ; 6
; [then-branch: 69 | !(i@180@01 < |First:(Second:(Second:(Second:(Second:(Second:(Second:(Second:($t@176@01))))))))|)]
(assert (not
  (<
    i@180@01
    (Seq_length
      ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@176@01)))))))))))))
(pop) ; 6
(push) ; 6
; [else-branch: 69 | i@180@01 < |First:(Second:(Second:(Second:(Second:(Second:(Second:(Second:($t@176@01))))))))|]
(assert (<
  i@180@01
  (Seq_length
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@176@01))))))))))))
; [eval] j >= 0
(push) ; 7
; [then-branch: 70 | !(j@181@01 >= 0) | live]
; [else-branch: 70 | j@181@01 >= 0 | live]
(push) ; 8
; [then-branch: 70 | !(j@181@01 >= 0)]
(assert (not (>= j@181@01 0)))
(pop) ; 8
(push) ; 8
; [else-branch: 70 | j@181@01 >= 0]
(assert (>= j@181@01 0))
; [eval] j < |diz.Ref__a|
; [eval] |diz.Ref__a|
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
; [then-branch: 71 | !(j@181@01 < |First:(Second:(Second:(Second:(Second:(Second:(Second:(Second:($t@176@01))))))))|) | live]
; [else-branch: 71 | j@181@01 < |First:(Second:(Second:(Second:(Second:(Second:(Second:(Second:($t@176@01))))))))| | live]
(push) ; 10
; [then-branch: 71 | !(j@181@01 < |First:(Second:(Second:(Second:(Second:(Second:(Second:(Second:($t@176@01))))))))|)]
(assert (not
  (<
    j@181@01
    (Seq_length
      ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@176@01)))))))))))))
(pop) ; 10
(push) ; 10
; [else-branch: 71 | j@181@01 < |First:(Second:(Second:(Second:(Second:(Second:(Second:(Second:($t@176@01))))))))|]
(assert (<
  j@181@01
  (Seq_length
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@176@01))))))))))))
; [eval] i != j
(pop) ; 10
(pop) ; 9
; Joined path conditions
; Joined path conditions
(assert (or
  (<
    j@181@01
    (Seq_length
      ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@176@01)))))))))))
  (not
    (<
      j@181@01
      (Seq_length
        ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@176@01))))))))))))))
(pop) ; 8
(pop) ; 7
; Joined path conditions
; Joined path conditions
(assert (=>
  (>= j@181@01 0)
  (and
    (>= j@181@01 0)
    (or
      (<
        j@181@01
        (Seq_length
          ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@176@01)))))))))))
      (not
        (<
          j@181@01
          (Seq_length
            ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@176@01))))))))))))))))
(assert (or (>= j@181@01 0) (not (>= j@181@01 0))))
(pop) ; 6
(pop) ; 5
; Joined path conditions
; Joined path conditions
(assert (=>
  (<
    i@180@01
    (Seq_length
      ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@176@01)))))))))))
  (and
    (<
      i@180@01
      (Seq_length
        ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@176@01)))))))))))
    (=>
      (>= j@181@01 0)
      (and
        (>= j@181@01 0)
        (or
          (<
            j@181@01
            (Seq_length
              ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@176@01)))))))))))
          (not
            (<
              j@181@01
              (Seq_length
                ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@176@01)))))))))))))))
    (or (>= j@181@01 0) (not (>= j@181@01 0))))))
(assert (or
  (<
    i@180@01
    (Seq_length
      ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@176@01)))))))))))
  (not
    (<
      i@180@01
      (Seq_length
        ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@176@01))))))))))))))
(pop) ; 4
(pop) ; 3
; Joined path conditions
; Joined path conditions
(assert (=>
  (>= i@180@01 0)
  (and
    (>= i@180@01 0)
    (=>
      (<
        i@180@01
        (Seq_length
          ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@176@01)))))))))))
      (and
        (<
          i@180@01
          (Seq_length
            ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@176@01)))))))))))
        (=>
          (>= j@181@01 0)
          (and
            (>= j@181@01 0)
            (or
              (<
                j@181@01
                (Seq_length
                  ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@176@01)))))))))))
              (not
                (<
                  j@181@01
                  (Seq_length
                    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@176@01)))))))))))))))
        (or (>= j@181@01 0) (not (>= j@181@01 0)))))
    (or
      (<
        i@180@01
        (Seq_length
          ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@176@01)))))))))))
      (not
        (<
          i@180@01
          (Seq_length
            ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@176@01))))))))))))))))
(assert (or (>= i@180@01 0) (not (>= i@180@01 0))))
(push) ; 3
; [then-branch: 72 | i@180@01 >= 0 && i@180@01 < |First:(Second:(Second:(Second:(Second:(Second:(Second:(Second:($t@176@01))))))))| && j@181@01 >= 0 && j@181@01 < |First:(Second:(Second:(Second:(Second:(Second:(Second:(Second:($t@176@01))))))))| && i@180@01 != j@181@01 | live]
; [else-branch: 72 | !(i@180@01 >= 0 && i@180@01 < |First:(Second:(Second:(Second:(Second:(Second:(Second:(Second:($t@176@01))))))))| && j@181@01 >= 0 && j@181@01 < |First:(Second:(Second:(Second:(Second:(Second:(Second:(Second:($t@176@01))))))))| && i@180@01 != j@181@01) | live]
(push) ; 4
; [then-branch: 72 | i@180@01 >= 0 && i@180@01 < |First:(Second:(Second:(Second:(Second:(Second:(Second:(Second:($t@176@01))))))))| && j@181@01 >= 0 && j@181@01 < |First:(Second:(Second:(Second:(Second:(Second:(Second:(Second:($t@176@01))))))))| && i@180@01 != j@181@01]
(assert (and
  (>= i@180@01 0)
  (and
    (<
      i@180@01
      (Seq_length
        ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@176@01)))))))))))
    (and
      (>= j@181@01 0)
      (and
        (<
          j@181@01
          (Seq_length
            ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@176@01)))))))))))
        (not (= i@180@01 j@181@01)))))))
; [eval] diz.Ref__a[i] != diz.Ref__a[j]
; [eval] diz.Ref__a[i]
(push) ; 5
(set-option :timeout 10)
(assert (not (< $Perm.No $k@177@01)))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
; [eval] diz.Ref__a[j]
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
; [else-branch: 72 | !(i@180@01 >= 0 && i@180@01 < |First:(Second:(Second:(Second:(Second:(Second:(Second:(Second:($t@176@01))))))))| && j@181@01 >= 0 && j@181@01 < |First:(Second:(Second:(Second:(Second:(Second:(Second:(Second:($t@176@01))))))))| && i@180@01 != j@181@01)]
(assert (not
  (and
    (>= i@180@01 0)
    (and
      (<
        i@180@01
        (Seq_length
          ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@176@01)))))))))))
      (and
        (>= j@181@01 0)
        (and
          (<
            j@181@01
            (Seq_length
              ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@176@01)))))))))))
          (not (= i@180@01 j@181@01))))))))
(pop) ; 4
(pop) ; 3
; Joined path conditions
(assert (=>
  (and
    (>= i@180@01 0)
    (and
      (<
        i@180@01
        (Seq_length
          ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@176@01)))))))))))
      (and
        (>= j@181@01 0)
        (and
          (<
            j@181@01
            (Seq_length
              ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@176@01)))))))))))
          (not (= i@180@01 j@181@01))))))
  (and
    (>= i@180@01 0)
    (<
      i@180@01
      (Seq_length
        ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@176@01)))))))))))
    (>= j@181@01 0)
    (<
      j@181@01
      (Seq_length
        ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@176@01)))))))))))
    (not (= i@180@01 j@181@01)))))
; Joined path conditions
(assert (or
  (not
    (and
      (>= i@180@01 0)
      (and
        (<
          i@180@01
          (Seq_length
            ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@176@01)))))))))))
        (and
          (>= j@181@01 0)
          (and
            (<
              j@181@01
              (Seq_length
                ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@176@01)))))))))))
            (not (= i@180@01 j@181@01)))))))
  (and
    (>= i@180@01 0)
    (and
      (<
        i@180@01
        (Seq_length
          ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@176@01)))))))))))
      (and
        (>= j@181@01 0)
        (and
          (<
            j@181@01
            (Seq_length
              ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@176@01)))))))))))
          (not (= i@180@01 j@181@01))))))))
(pop) ; 2
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall ((i@180@01 Int) (j@181@01 Int)) (!
  (and
    (=>
      (>= i@180@01 0)
      (and
        (>= i@180@01 0)
        (=>
          (<
            i@180@01
            (Seq_length
              ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@176@01)))))))))))
          (and
            (<
              i@180@01
              (Seq_length
                ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@176@01)))))))))))
            (=>
              (>= j@181@01 0)
              (and
                (>= j@181@01 0)
                (or
                  (<
                    j@181@01
                    (Seq_length
                      ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@176@01)))))))))))
                  (not
                    (<
                      j@181@01
                      (Seq_length
                        ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@176@01)))))))))))))))
            (or (>= j@181@01 0) (not (>= j@181@01 0)))))
        (or
          (<
            i@180@01
            (Seq_length
              ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@176@01)))))))))))
          (not
            (<
              i@180@01
              (Seq_length
                ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@176@01)))))))))))))))
    (or (>= i@180@01 0) (not (>= i@180@01 0)))
    (=>
      (and
        (>= i@180@01 0)
        (and
          (<
            i@180@01
            (Seq_length
              ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@176@01)))))))))))
          (and
            (>= j@181@01 0)
            (and
              (<
                j@181@01
                (Seq_length
                  ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@176@01)))))))))))
              (not (= i@180@01 j@181@01))))))
      (and
        (>= i@180@01 0)
        (<
          i@180@01
          (Seq_length
            ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@176@01)))))))))))
        (>= j@181@01 0)
        (<
          j@181@01
          (Seq_length
            ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@176@01)))))))))))
        (not (= i@180@01 j@181@01))))
    (or
      (not
        (and
          (>= i@180@01 0)
          (and
            (<
              i@180@01
              (Seq_length
                ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@176@01)))))))))))
            (and
              (>= j@181@01 0)
              (and
                (<
                  j@181@01
                  (Seq_length
                    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@176@01)))))))))))
                (not (= i@180@01 j@181@01)))))))
      (and
        (>= i@180@01 0)
        (and
          (<
            i@180@01
            (Seq_length
              ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@176@01)))))))))))
          (and
            (>= j@181@01 0)
            (and
              (<
                j@181@01
                (Seq_length
                  ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@176@01)))))))))))
              (not (= i@180@01 j@181@01))))))))
  :pattern ((Seq_index
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@176@01)))))))))
    i@180@01) (Seq_index
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@176@01)))))))))
    j@181@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/third_party/test_kernel_example_pvl.vpr@163@12@163@136-aux|)))
(assert (forall ((i@180@01 Int) (j@181@01 Int)) (!
  (=>
    (and
      (>= i@180@01 0)
      (and
        (<
          i@180@01
          (Seq_length
            ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@176@01)))))))))))
        (and
          (>= j@181@01 0)
          (and
            (<
              j@181@01
              (Seq_length
                ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@176@01)))))))))))
            (not (= i@180@01 j@181@01))))))
    (not
      (=
        (Seq_index
          ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@176@01)))))))))
          i@180@01)
        (Seq_index
          ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@176@01)))))))))
          j@181@01))))
  :pattern ((Seq_index
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@176@01)))))))))
    i@180@01) (Seq_index
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@176@01)))))))))
    j@181@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/third_party/test_kernel_example_pvl.vpr@163@12@163@136|)))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@176@01))))))))))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@176@01)))))))))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@176@01))))))))))))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@176@01)))))))))))))))
  $Snap.unit))
; [eval] (forall i: Int, j: Int :: { diz.Ref__b[i], diz.Ref__b[j] } i >= 0 && (i < |diz.Ref__b| && (j >= 0 && (j < |diz.Ref__b| && i != j))) ==> diz.Ref__b[i] != diz.Ref__b[j])
(declare-const i@182@01 Int)
(declare-const j@183@01 Int)
(push) ; 2
; [eval] i >= 0 && (i < |diz.Ref__b| && (j >= 0 && (j < |diz.Ref__b| && i != j))) ==> diz.Ref__b[i] != diz.Ref__b[j]
; [eval] i >= 0 && (i < |diz.Ref__b| && (j >= 0 && (j < |diz.Ref__b| && i != j)))
; [eval] i >= 0
(push) ; 3
; [then-branch: 73 | !(i@182@01 >= 0) | live]
; [else-branch: 73 | i@182@01 >= 0 | live]
(push) ; 4
; [then-branch: 73 | !(i@182@01 >= 0)]
(assert (not (>= i@182@01 0)))
(pop) ; 4
(push) ; 4
; [else-branch: 73 | i@182@01 >= 0]
(assert (>= i@182@01 0))
; [eval] i < |diz.Ref__b|
; [eval] |diz.Ref__b|
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
; [then-branch: 74 | !(i@182@01 < |First:(Second:(Second:(Second:(Second:(Second:(Second:(Second:(Second:(Second:($t@176@01))))))))))|) | live]
; [else-branch: 74 | i@182@01 < |First:(Second:(Second:(Second:(Second:(Second:(Second:(Second:(Second:(Second:($t@176@01))))))))))| | live]
(push) ; 6
; [then-branch: 74 | !(i@182@01 < |First:(Second:(Second:(Second:(Second:(Second:(Second:(Second:(Second:(Second:($t@176@01))))))))))|)]
(assert (not
  (<
    i@182@01
    (Seq_length
      ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@176@01)))))))))))))))
(pop) ; 6
(push) ; 6
; [else-branch: 74 | i@182@01 < |First:(Second:(Second:(Second:(Second:(Second:(Second:(Second:(Second:(Second:($t@176@01))))))))))|]
(assert (<
  i@182@01
  (Seq_length
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@176@01))))))))))))))
; [eval] j >= 0
(push) ; 7
; [then-branch: 75 | !(j@183@01 >= 0) | live]
; [else-branch: 75 | j@183@01 >= 0 | live]
(push) ; 8
; [then-branch: 75 | !(j@183@01 >= 0)]
(assert (not (>= j@183@01 0)))
(pop) ; 8
(push) ; 8
; [else-branch: 75 | j@183@01 >= 0]
(assert (>= j@183@01 0))
; [eval] j < |diz.Ref__b|
; [eval] |diz.Ref__b|
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
; [then-branch: 76 | !(j@183@01 < |First:(Second:(Second:(Second:(Second:(Second:(Second:(Second:(Second:(Second:($t@176@01))))))))))|) | live]
; [else-branch: 76 | j@183@01 < |First:(Second:(Second:(Second:(Second:(Second:(Second:(Second:(Second:(Second:($t@176@01))))))))))| | live]
(push) ; 10
; [then-branch: 76 | !(j@183@01 < |First:(Second:(Second:(Second:(Second:(Second:(Second:(Second:(Second:(Second:($t@176@01))))))))))|)]
(assert (not
  (<
    j@183@01
    (Seq_length
      ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@176@01)))))))))))))))
(pop) ; 10
(push) ; 10
; [else-branch: 76 | j@183@01 < |First:(Second:(Second:(Second:(Second:(Second:(Second:(Second:(Second:(Second:($t@176@01))))))))))|]
(assert (<
  j@183@01
  (Seq_length
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@176@01))))))))))))))
; [eval] i != j
(pop) ; 10
(pop) ; 9
; Joined path conditions
; Joined path conditions
(assert (or
  (<
    j@183@01
    (Seq_length
      ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@176@01)))))))))))))
  (not
    (<
      j@183@01
      (Seq_length
        ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@176@01))))))))))))))))
(pop) ; 8
(pop) ; 7
; Joined path conditions
; Joined path conditions
(assert (=>
  (>= j@183@01 0)
  (and
    (>= j@183@01 0)
    (or
      (<
        j@183@01
        (Seq_length
          ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@176@01)))))))))))))
      (not
        (<
          j@183@01
          (Seq_length
            ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@176@01))))))))))))))))))
(assert (or (>= j@183@01 0) (not (>= j@183@01 0))))
(pop) ; 6
(pop) ; 5
; Joined path conditions
; Joined path conditions
(assert (=>
  (<
    i@182@01
    (Seq_length
      ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@176@01)))))))))))))
  (and
    (<
      i@182@01
      (Seq_length
        ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@176@01)))))))))))))
    (=>
      (>= j@183@01 0)
      (and
        (>= j@183@01 0)
        (or
          (<
            j@183@01
            (Seq_length
              ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@176@01)))))))))))))
          (not
            (<
              j@183@01
              (Seq_length
                ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@176@01)))))))))))))))))
    (or (>= j@183@01 0) (not (>= j@183@01 0))))))
(assert (or
  (<
    i@182@01
    (Seq_length
      ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@176@01)))))))))))))
  (not
    (<
      i@182@01
      (Seq_length
        ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@176@01))))))))))))))))
(pop) ; 4
(pop) ; 3
; Joined path conditions
; Joined path conditions
(assert (=>
  (>= i@182@01 0)
  (and
    (>= i@182@01 0)
    (=>
      (<
        i@182@01
        (Seq_length
          ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@176@01)))))))))))))
      (and
        (<
          i@182@01
          (Seq_length
            ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@176@01)))))))))))))
        (=>
          (>= j@183@01 0)
          (and
            (>= j@183@01 0)
            (or
              (<
                j@183@01
                (Seq_length
                  ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@176@01)))))))))))))
              (not
                (<
                  j@183@01
                  (Seq_length
                    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@176@01)))))))))))))))))
        (or (>= j@183@01 0) (not (>= j@183@01 0)))))
    (or
      (<
        i@182@01
        (Seq_length
          ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@176@01)))))))))))))
      (not
        (<
          i@182@01
          (Seq_length
            ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@176@01))))))))))))))))))
(assert (or (>= i@182@01 0) (not (>= i@182@01 0))))
(push) ; 3
; [then-branch: 77 | i@182@01 >= 0 && i@182@01 < |First:(Second:(Second:(Second:(Second:(Second:(Second:(Second:(Second:(Second:($t@176@01))))))))))| && j@183@01 >= 0 && j@183@01 < |First:(Second:(Second:(Second:(Second:(Second:(Second:(Second:(Second:(Second:($t@176@01))))))))))| && i@182@01 != j@183@01 | live]
; [else-branch: 77 | !(i@182@01 >= 0 && i@182@01 < |First:(Second:(Second:(Second:(Second:(Second:(Second:(Second:(Second:(Second:($t@176@01))))))))))| && j@183@01 >= 0 && j@183@01 < |First:(Second:(Second:(Second:(Second:(Second:(Second:(Second:(Second:(Second:($t@176@01))))))))))| && i@182@01 != j@183@01) | live]
(push) ; 4
; [then-branch: 77 | i@182@01 >= 0 && i@182@01 < |First:(Second:(Second:(Second:(Second:(Second:(Second:(Second:(Second:(Second:($t@176@01))))))))))| && j@183@01 >= 0 && j@183@01 < |First:(Second:(Second:(Second:(Second:(Second:(Second:(Second:(Second:(Second:($t@176@01))))))))))| && i@182@01 != j@183@01]
(assert (and
  (>= i@182@01 0)
  (and
    (<
      i@182@01
      (Seq_length
        ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@176@01)))))))))))))
    (and
      (>= j@183@01 0)
      (and
        (<
          j@183@01
          (Seq_length
            ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@176@01)))))))))))))
        (not (= i@182@01 j@183@01)))))))
; [eval] diz.Ref__b[i] != diz.Ref__b[j]
; [eval] diz.Ref__b[i]
(push) ; 5
(set-option :timeout 10)
(assert (not (< $Perm.No $k@178@01)))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
; [eval] diz.Ref__b[j]
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
; [else-branch: 77 | !(i@182@01 >= 0 && i@182@01 < |First:(Second:(Second:(Second:(Second:(Second:(Second:(Second:(Second:(Second:($t@176@01))))))))))| && j@183@01 >= 0 && j@183@01 < |First:(Second:(Second:(Second:(Second:(Second:(Second:(Second:(Second:(Second:($t@176@01))))))))))| && i@182@01 != j@183@01)]
(assert (not
  (and
    (>= i@182@01 0)
    (and
      (<
        i@182@01
        (Seq_length
          ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@176@01)))))))))))))
      (and
        (>= j@183@01 0)
        (and
          (<
            j@183@01
            (Seq_length
              ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@176@01)))))))))))))
          (not (= i@182@01 j@183@01))))))))
(pop) ; 4
(pop) ; 3
; Joined path conditions
(assert (=>
  (and
    (>= i@182@01 0)
    (and
      (<
        i@182@01
        (Seq_length
          ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@176@01)))))))))))))
      (and
        (>= j@183@01 0)
        (and
          (<
            j@183@01
            (Seq_length
              ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@176@01)))))))))))))
          (not (= i@182@01 j@183@01))))))
  (and
    (>= i@182@01 0)
    (<
      i@182@01
      (Seq_length
        ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@176@01)))))))))))))
    (>= j@183@01 0)
    (<
      j@183@01
      (Seq_length
        ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@176@01)))))))))))))
    (not (= i@182@01 j@183@01)))))
; Joined path conditions
(assert (or
  (not
    (and
      (>= i@182@01 0)
      (and
        (<
          i@182@01
          (Seq_length
            ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@176@01)))))))))))))
        (and
          (>= j@183@01 0)
          (and
            (<
              j@183@01
              (Seq_length
                ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@176@01)))))))))))))
            (not (= i@182@01 j@183@01)))))))
  (and
    (>= i@182@01 0)
    (and
      (<
        i@182@01
        (Seq_length
          ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@176@01)))))))))))))
      (and
        (>= j@183@01 0)
        (and
          (<
            j@183@01
            (Seq_length
              ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@176@01)))))))))))))
          (not (= i@182@01 j@183@01))))))))
(pop) ; 2
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall ((i@182@01 Int) (j@183@01 Int)) (!
  (and
    (=>
      (>= i@182@01 0)
      (and
        (>= i@182@01 0)
        (=>
          (<
            i@182@01
            (Seq_length
              ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@176@01)))))))))))))
          (and
            (<
              i@182@01
              (Seq_length
                ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@176@01)))))))))))))
            (=>
              (>= j@183@01 0)
              (and
                (>= j@183@01 0)
                (or
                  (<
                    j@183@01
                    (Seq_length
                      ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@176@01)))))))))))))
                  (not
                    (<
                      j@183@01
                      (Seq_length
                        ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@176@01)))))))))))))))))
            (or (>= j@183@01 0) (not (>= j@183@01 0)))))
        (or
          (<
            i@182@01
            (Seq_length
              ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@176@01)))))))))))))
          (not
            (<
              i@182@01
              (Seq_length
                ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@176@01)))))))))))))))))
    (or (>= i@182@01 0) (not (>= i@182@01 0)))
    (=>
      (and
        (>= i@182@01 0)
        (and
          (<
            i@182@01
            (Seq_length
              ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@176@01)))))))))))))
          (and
            (>= j@183@01 0)
            (and
              (<
                j@183@01
                (Seq_length
                  ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@176@01)))))))))))))
              (not (= i@182@01 j@183@01))))))
      (and
        (>= i@182@01 0)
        (<
          i@182@01
          (Seq_length
            ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@176@01)))))))))))))
        (>= j@183@01 0)
        (<
          j@183@01
          (Seq_length
            ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@176@01)))))))))))))
        (not (= i@182@01 j@183@01))))
    (or
      (not
        (and
          (>= i@182@01 0)
          (and
            (<
              i@182@01
              (Seq_length
                ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@176@01)))))))))))))
            (and
              (>= j@183@01 0)
              (and
                (<
                  j@183@01
                  (Seq_length
                    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@176@01)))))))))))))
                (not (= i@182@01 j@183@01)))))))
      (and
        (>= i@182@01 0)
        (and
          (<
            i@182@01
            (Seq_length
              ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@176@01)))))))))))))
          (and
            (>= j@183@01 0)
            (and
              (<
                j@183@01
                (Seq_length
                  ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@176@01)))))))))))))
              (not (= i@182@01 j@183@01))))))))
  :pattern ((Seq_index
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@176@01)))))))))))
    i@182@01) (Seq_index
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@176@01)))))))))))
    j@183@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/third_party/test_kernel_example_pvl.vpr@164@12@164@136-aux|)))
(assert (forall ((i@182@01 Int) (j@183@01 Int)) (!
  (=>
    (and
      (>= i@182@01 0)
      (and
        (<
          i@182@01
          (Seq_length
            ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@176@01)))))))))))))
        (and
          (>= j@183@01 0)
          (and
            (<
              j@183@01
              (Seq_length
                ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@176@01)))))))))))))
            (not (= i@182@01 j@183@01))))))
    (not
      (=
        (Seq_index
          ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@176@01)))))))))))
          i@182@01)
        (Seq_index
          ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@176@01)))))))))))
          j@183@01))))
  :pattern ((Seq_index
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@176@01)))))))))))
    i@182@01) (Seq_index
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@176@01)))))))))))
    j@183@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/third_party/test_kernel_example_pvl.vpr@164@12@164@136|)))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@176@01)))))))))))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@176@01))))))))))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@176@01)))))))))))))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@176@01))))))))))))))))
  $Snap.unit))
; [eval] (forall i: Int, j: Int :: { diz.Ref__c[i], diz.Ref__c[j] } i >= 0 && (i < |diz.Ref__c| && (j >= 0 && (j < |diz.Ref__c| && i != j))) ==> diz.Ref__c[i] != diz.Ref__c[j])
(declare-const i@184@01 Int)
(declare-const j@185@01 Int)
(push) ; 2
; [eval] i >= 0 && (i < |diz.Ref__c| && (j >= 0 && (j < |diz.Ref__c| && i != j))) ==> diz.Ref__c[i] != diz.Ref__c[j]
; [eval] i >= 0 && (i < |diz.Ref__c| && (j >= 0 && (j < |diz.Ref__c| && i != j)))
; [eval] i >= 0
(push) ; 3
; [then-branch: 78 | !(i@184@01 >= 0) | live]
; [else-branch: 78 | i@184@01 >= 0 | live]
(push) ; 4
; [then-branch: 78 | !(i@184@01 >= 0)]
(assert (not (>= i@184@01 0)))
(pop) ; 4
(push) ; 4
; [else-branch: 78 | i@184@01 >= 0]
(assert (>= i@184@01 0))
; [eval] i < |diz.Ref__c|
; [eval] |diz.Ref__c|
(push) ; 5
(set-option :timeout 10)
(assert (not (< $Perm.No $k@179@01)))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 5
; [then-branch: 79 | !(i@184@01 < |First:(Second:(Second:(Second:(Second:(Second:(Second:(Second:(Second:(Second:(Second:(Second:($t@176@01))))))))))))|) | live]
; [else-branch: 79 | i@184@01 < |First:(Second:(Second:(Second:(Second:(Second:(Second:(Second:(Second:(Second:(Second:(Second:($t@176@01))))))))))))| | live]
(push) ; 6
; [then-branch: 79 | !(i@184@01 < |First:(Second:(Second:(Second:(Second:(Second:(Second:(Second:(Second:(Second:(Second:(Second:($t@176@01))))))))))))|)]
(assert (not
  (<
    i@184@01
    (Seq_length
      ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@176@01)))))))))))))))))
(pop) ; 6
(push) ; 6
; [else-branch: 79 | i@184@01 < |First:(Second:(Second:(Second:(Second:(Second:(Second:(Second:(Second:(Second:(Second:(Second:($t@176@01))))))))))))|]
(assert (<
  i@184@01
  (Seq_length
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@176@01))))))))))))))))
; [eval] j >= 0
(push) ; 7
; [then-branch: 80 | !(j@185@01 >= 0) | live]
; [else-branch: 80 | j@185@01 >= 0 | live]
(push) ; 8
; [then-branch: 80 | !(j@185@01 >= 0)]
(assert (not (>= j@185@01 0)))
(pop) ; 8
(push) ; 8
; [else-branch: 80 | j@185@01 >= 0]
(assert (>= j@185@01 0))
; [eval] j < |diz.Ref__c|
; [eval] |diz.Ref__c|
(push) ; 9
(set-option :timeout 10)
(assert (not (< $Perm.No $k@179@01)))
(check-sat)
; unsat
(pop) ; 9
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 9
; [then-branch: 81 | !(j@185@01 < |First:(Second:(Second:(Second:(Second:(Second:(Second:(Second:(Second:(Second:(Second:(Second:($t@176@01))))))))))))|) | live]
; [else-branch: 81 | j@185@01 < |First:(Second:(Second:(Second:(Second:(Second:(Second:(Second:(Second:(Second:(Second:(Second:($t@176@01))))))))))))| | live]
(push) ; 10
; [then-branch: 81 | !(j@185@01 < |First:(Second:(Second:(Second:(Second:(Second:(Second:(Second:(Second:(Second:(Second:(Second:($t@176@01))))))))))))|)]
(assert (not
  (<
    j@185@01
    (Seq_length
      ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@176@01)))))))))))))))))
(pop) ; 10
(push) ; 10
; [else-branch: 81 | j@185@01 < |First:(Second:(Second:(Second:(Second:(Second:(Second:(Second:(Second:(Second:(Second:(Second:($t@176@01))))))))))))|]
(assert (<
  j@185@01
  (Seq_length
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@176@01))))))))))))))))
; [eval] i != j
(pop) ; 10
(pop) ; 9
; Joined path conditions
; Joined path conditions
(assert (or
  (<
    j@185@01
    (Seq_length
      ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@176@01)))))))))))))))
  (not
    (<
      j@185@01
      (Seq_length
        ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@176@01))))))))))))))))))
(pop) ; 8
(pop) ; 7
; Joined path conditions
; Joined path conditions
(assert (=>
  (>= j@185@01 0)
  (and
    (>= j@185@01 0)
    (or
      (<
        j@185@01
        (Seq_length
          ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@176@01)))))))))))))))
      (not
        (<
          j@185@01
          (Seq_length
            ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@176@01))))))))))))))))))))
(assert (or (>= j@185@01 0) (not (>= j@185@01 0))))
(pop) ; 6
(pop) ; 5
; Joined path conditions
; Joined path conditions
(assert (=>
  (<
    i@184@01
    (Seq_length
      ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@176@01)))))))))))))))
  (and
    (<
      i@184@01
      (Seq_length
        ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@176@01)))))))))))))))
    (=>
      (>= j@185@01 0)
      (and
        (>= j@185@01 0)
        (or
          (<
            j@185@01
            (Seq_length
              ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@176@01)))))))))))))))
          (not
            (<
              j@185@01
              (Seq_length
                ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@176@01)))))))))))))))))))
    (or (>= j@185@01 0) (not (>= j@185@01 0))))))
(assert (or
  (<
    i@184@01
    (Seq_length
      ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@176@01)))))))))))))))
  (not
    (<
      i@184@01
      (Seq_length
        ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@176@01))))))))))))))))))
(pop) ; 4
(pop) ; 3
; Joined path conditions
; Joined path conditions
(assert (=>
  (>= i@184@01 0)
  (and
    (>= i@184@01 0)
    (=>
      (<
        i@184@01
        (Seq_length
          ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@176@01)))))))))))))))
      (and
        (<
          i@184@01
          (Seq_length
            ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@176@01)))))))))))))))
        (=>
          (>= j@185@01 0)
          (and
            (>= j@185@01 0)
            (or
              (<
                j@185@01
                (Seq_length
                  ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@176@01)))))))))))))))
              (not
                (<
                  j@185@01
                  (Seq_length
                    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@176@01)))))))))))))))))))
        (or (>= j@185@01 0) (not (>= j@185@01 0)))))
    (or
      (<
        i@184@01
        (Seq_length
          ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@176@01)))))))))))))))
      (not
        (<
          i@184@01
          (Seq_length
            ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@176@01))))))))))))))))))))
(assert (or (>= i@184@01 0) (not (>= i@184@01 0))))
(push) ; 3
; [then-branch: 82 | i@184@01 >= 0 && i@184@01 < |First:(Second:(Second:(Second:(Second:(Second:(Second:(Second:(Second:(Second:(Second:(Second:($t@176@01))))))))))))| && j@185@01 >= 0 && j@185@01 < |First:(Second:(Second:(Second:(Second:(Second:(Second:(Second:(Second:(Second:(Second:(Second:($t@176@01))))))))))))| && i@184@01 != j@185@01 | live]
; [else-branch: 82 | !(i@184@01 >= 0 && i@184@01 < |First:(Second:(Second:(Second:(Second:(Second:(Second:(Second:(Second:(Second:(Second:(Second:($t@176@01))))))))))))| && j@185@01 >= 0 && j@185@01 < |First:(Second:(Second:(Second:(Second:(Second:(Second:(Second:(Second:(Second:(Second:(Second:($t@176@01))))))))))))| && i@184@01 != j@185@01) | live]
(push) ; 4
; [then-branch: 82 | i@184@01 >= 0 && i@184@01 < |First:(Second:(Second:(Second:(Second:(Second:(Second:(Second:(Second:(Second:(Second:(Second:($t@176@01))))))))))))| && j@185@01 >= 0 && j@185@01 < |First:(Second:(Second:(Second:(Second:(Second:(Second:(Second:(Second:(Second:(Second:(Second:($t@176@01))))))))))))| && i@184@01 != j@185@01]
(assert (and
  (>= i@184@01 0)
  (and
    (<
      i@184@01
      (Seq_length
        ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@176@01)))))))))))))))
    (and
      (>= j@185@01 0)
      (and
        (<
          j@185@01
          (Seq_length
            ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@176@01)))))))))))))))
        (not (= i@184@01 j@185@01)))))))
; [eval] diz.Ref__c[i] != diz.Ref__c[j]
; [eval] diz.Ref__c[i]
(push) ; 5
(set-option :timeout 10)
(assert (not (< $Perm.No $k@179@01)))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
; [eval] diz.Ref__c[j]
(set-option :timeout 0)
(push) ; 5
(set-option :timeout 10)
(assert (not (< $Perm.No $k@179@01)))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(pop) ; 4
(set-option :timeout 0)
(push) ; 4
; [else-branch: 82 | !(i@184@01 >= 0 && i@184@01 < |First:(Second:(Second:(Second:(Second:(Second:(Second:(Second:(Second:(Second:(Second:(Second:($t@176@01))))))))))))| && j@185@01 >= 0 && j@185@01 < |First:(Second:(Second:(Second:(Second:(Second:(Second:(Second:(Second:(Second:(Second:(Second:($t@176@01))))))))))))| && i@184@01 != j@185@01)]
(assert (not
  (and
    (>= i@184@01 0)
    (and
      (<
        i@184@01
        (Seq_length
          ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@176@01)))))))))))))))
      (and
        (>= j@185@01 0)
        (and
          (<
            j@185@01
            (Seq_length
              ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@176@01)))))))))))))))
          (not (= i@184@01 j@185@01))))))))
(pop) ; 4
(pop) ; 3
; Joined path conditions
(assert (=>
  (and
    (>= i@184@01 0)
    (and
      (<
        i@184@01
        (Seq_length
          ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@176@01)))))))))))))))
      (and
        (>= j@185@01 0)
        (and
          (<
            j@185@01
            (Seq_length
              ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@176@01)))))))))))))))
          (not (= i@184@01 j@185@01))))))
  (and
    (>= i@184@01 0)
    (<
      i@184@01
      (Seq_length
        ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@176@01)))))))))))))))
    (>= j@185@01 0)
    (<
      j@185@01
      (Seq_length
        ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@176@01)))))))))))))))
    (not (= i@184@01 j@185@01)))))
; Joined path conditions
(assert (or
  (not
    (and
      (>= i@184@01 0)
      (and
        (<
          i@184@01
          (Seq_length
            ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@176@01)))))))))))))))
        (and
          (>= j@185@01 0)
          (and
            (<
              j@185@01
              (Seq_length
                ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@176@01)))))))))))))))
            (not (= i@184@01 j@185@01)))))))
  (and
    (>= i@184@01 0)
    (and
      (<
        i@184@01
        (Seq_length
          ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@176@01)))))))))))))))
      (and
        (>= j@185@01 0)
        (and
          (<
            j@185@01
            (Seq_length
              ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@176@01)))))))))))))))
          (not (= i@184@01 j@185@01))))))))
(pop) ; 2
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall ((i@184@01 Int) (j@185@01 Int)) (!
  (and
    (=>
      (>= i@184@01 0)
      (and
        (>= i@184@01 0)
        (=>
          (<
            i@184@01
            (Seq_length
              ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@176@01)))))))))))))))
          (and
            (<
              i@184@01
              (Seq_length
                ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@176@01)))))))))))))))
            (=>
              (>= j@185@01 0)
              (and
                (>= j@185@01 0)
                (or
                  (<
                    j@185@01
                    (Seq_length
                      ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@176@01)))))))))))))))
                  (not
                    (<
                      j@185@01
                      (Seq_length
                        ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@176@01)))))))))))))))))))
            (or (>= j@185@01 0) (not (>= j@185@01 0)))))
        (or
          (<
            i@184@01
            (Seq_length
              ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@176@01)))))))))))))))
          (not
            (<
              i@184@01
              (Seq_length
                ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@176@01)))))))))))))))))))
    (or (>= i@184@01 0) (not (>= i@184@01 0)))
    (=>
      (and
        (>= i@184@01 0)
        (and
          (<
            i@184@01
            (Seq_length
              ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@176@01)))))))))))))))
          (and
            (>= j@185@01 0)
            (and
              (<
                j@185@01
                (Seq_length
                  ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@176@01)))))))))))))))
              (not (= i@184@01 j@185@01))))))
      (and
        (>= i@184@01 0)
        (<
          i@184@01
          (Seq_length
            ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@176@01)))))))))))))))
        (>= j@185@01 0)
        (<
          j@185@01
          (Seq_length
            ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@176@01)))))))))))))))
        (not (= i@184@01 j@185@01))))
    (or
      (not
        (and
          (>= i@184@01 0)
          (and
            (<
              i@184@01
              (Seq_length
                ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@176@01)))))))))))))))
            (and
              (>= j@185@01 0)
              (and
                (<
                  j@185@01
                  (Seq_length
                    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@176@01)))))))))))))))
                (not (= i@184@01 j@185@01)))))))
      (and
        (>= i@184@01 0)
        (and
          (<
            i@184@01
            (Seq_length
              ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@176@01)))))))))))))))
          (and
            (>= j@185@01 0)
            (and
              (<
                j@185@01
                (Seq_length
                  ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@176@01)))))))))))))))
              (not (= i@184@01 j@185@01))))))))
  :pattern ((Seq_index
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@176@01)))))))))))))
    i@184@01) (Seq_index
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@176@01)))))))))))))
    j@185@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/third_party/test_kernel_example_pvl.vpr@165@12@165@136-aux|)))
(assert (forall ((i@184@01 Int) (j@185@01 Int)) (!
  (=>
    (and
      (>= i@184@01 0)
      (and
        (<
          i@184@01
          (Seq_length
            ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@176@01)))))))))))))))
        (and
          (>= j@185@01 0)
          (and
            (<
              j@185@01
              (Seq_length
                ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@176@01)))))))))))))))
            (not (= i@184@01 j@185@01))))))
    (not
      (=
        (Seq_index
          ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@176@01)))))))))))))
          i@184@01)
        (Seq_index
          ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@176@01)))))))))))))
          j@185@01))))
  :pattern ((Seq_index
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@176@01)))))))))))))
    i@184@01) (Seq_index
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@176@01)))))))))))))
    j@185@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/third_party/test_kernel_example_pvl.vpr@165@12@165@136|)))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@176@01))))))))))))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@176@01)))))))))))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@176@01))))))))))))))))))))
(declare-const _x_tid@186@01 Int)
(push) ; 2
; [eval] 0 <= _x_tid && _x_tid < gsize
; [eval] 0 <= _x_tid
(push) ; 3
; [then-branch: 83 | !(0 <= _x_tid@186@01) | live]
; [else-branch: 83 | 0 <= _x_tid@186@01 | live]
(push) ; 4
; [then-branch: 83 | !(0 <= _x_tid@186@01)]
(assert (not (<= 0 _x_tid@186@01)))
(pop) ; 4
(push) ; 4
; [else-branch: 83 | 0 <= _x_tid@186@01]
(assert (<= 0 _x_tid@186@01))
; [eval] _x_tid < gsize
(pop) ; 4
(pop) ; 3
; Joined path conditions
; Joined path conditions
(assert (or (<= 0 _x_tid@186@01) (not (<= 0 _x_tid@186@01))))
(assert (and (<= 0 _x_tid@186@01) (< _x_tid@186@01 gsize@172@01)))
; [eval] diz.Ref__a[_x_tid]
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
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@176@01)))))))))))))
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
    (and (<= 0 _x_tid@186@01) (< _x_tid@186@01 gsize@172@01))
    (or (<= 0 _x_tid@186@01) (not (<= 0 _x_tid@186@01))))
  :pattern ((Seq_index
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@176@01)))))))))
    _x_tid@186@01))
  :qid |Ref__Integer_value-aux|)))
; Check receiver injectivity
(push) ; 2
(assert (not (forall ((_x_tid1@186@01 Int) (_x_tid2@186@01 Int)) (!
  (=>
    (and
      (and (<= 0 _x_tid1@186@01) (< _x_tid1@186@01 gsize@172@01))
      (and (<= 0 _x_tid2@186@01) (< _x_tid2@186@01 gsize@172@01))
      (=
        (Seq_index
          ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@176@01)))))))))
          _x_tid1@186@01)
        (Seq_index
          ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@176@01)))))))))
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
    (and (<= 0 _x_tid@186@01) (< _x_tid@186@01 gsize@172@01))
    (and
      (=
        (inv@187@01 (Seq_index
          ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@176@01)))))))))
          _x_tid@186@01))
        _x_tid@186@01)
      (img@188@01 (Seq_index
        ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@176@01)))))))))
        _x_tid@186@01))))
  :pattern ((Seq_index
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@176@01)))))))))
    _x_tid@186@01))
  :qid |quant-u-7098|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@188@01 r)
      (and (<= 0 (inv@187@01 r)) (< (inv@187@01 r) gsize@172@01)))
    (=
      (Seq_index
        ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@176@01)))))))))
        (inv@187@01 r))
      r))
  :pattern ((inv@187@01 r))
  :qid |Ref__Integer_value-fctOfInv|)))
; Permissions are non-negative
; Field permissions are at most one
; Permission implies non-null receiver
(assert (forall ((_x_tid@186@01 Int)) (!
  (=>
    (and (<= 0 _x_tid@186@01) (< _x_tid@186@01 gsize@172@01))
    (not
      (=
        (Seq_index
          ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@176@01)))))))))
          _x_tid@186@01)
        $Ref.null)))
  :pattern ((Seq_index
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@176@01)))))))))
    _x_tid@186@01))
  :qid |Ref__Integer_value-permImpliesNonNull|)))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@176@01)))))))))))))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@176@01))))))))))))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@176@01)))))))))))))))))))))
(declare-const _x_tid@189@01 Int)
(push) ; 2
; [eval] 0 <= _x_tid && _x_tid < gsize
; [eval] 0 <= _x_tid
(push) ; 3
; [then-branch: 84 | !(0 <= _x_tid@189@01) | live]
; [else-branch: 84 | 0 <= _x_tid@189@01 | live]
(push) ; 4
; [then-branch: 84 | !(0 <= _x_tid@189@01)]
(assert (not (<= 0 _x_tid@189@01)))
(pop) ; 4
(push) ; 4
; [else-branch: 84 | 0 <= _x_tid@189@01]
(assert (<= 0 _x_tid@189@01))
; [eval] _x_tid < gsize
(pop) ; 4
(pop) ; 3
; Joined path conditions
; Joined path conditions
(assert (or (<= 0 _x_tid@189@01) (not (<= 0 _x_tid@189@01))))
(assert (and (<= 0 _x_tid@189@01) (< _x_tid@189@01 gsize@172@01)))
; [eval] diz.Ref__b[_x_tid]
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
(assert (not (>= _x_tid@189@01 0)))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(push) ; 3
(assert (not (<
  _x_tid@189@01
  (Seq_length
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@176@01)))))))))))))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(pop) ; 2
(declare-fun inv@190@01 ($Ref) Int)
(declare-fun img@191@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
(assert (forall ((_x_tid@189@01 Int)) (!
  (=>
    (and (<= 0 _x_tid@189@01) (< _x_tid@189@01 gsize@172@01))
    (or (<= 0 _x_tid@189@01) (not (<= 0 _x_tid@189@01))))
  :pattern ((Seq_index
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@176@01)))))))))))
    _x_tid@189@01))
  :qid |Ref__Integer_value-aux|)))
; Check receiver injectivity
(push) ; 2
(assert (not (forall ((_x_tid1@189@01 Int) (_x_tid2@189@01 Int)) (!
  (=>
    (and
      (and (<= 0 _x_tid1@189@01) (< _x_tid1@189@01 gsize@172@01))
      (and (<= 0 _x_tid2@189@01) (< _x_tid2@189@01 gsize@172@01))
      (=
        (Seq_index
          ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@176@01)))))))))))
          _x_tid1@189@01)
        (Seq_index
          ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@176@01)))))))))))
          _x_tid2@189@01)))
    (= _x_tid1@189@01 _x_tid2@189@01))
  
  :qid |Ref__Integer_value-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 2
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((_x_tid@189@01 Int)) (!
  (=>
    (and (<= 0 _x_tid@189@01) (< _x_tid@189@01 gsize@172@01))
    (and
      (=
        (inv@190@01 (Seq_index
          ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@176@01)))))))))))
          _x_tid@189@01))
        _x_tid@189@01)
      (img@191@01 (Seq_index
        ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@176@01)))))))))))
        _x_tid@189@01))))
  :pattern ((Seq_index
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@176@01)))))))))))
    _x_tid@189@01))
  :qid |quant-u-7100|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@191@01 r)
      (and (<= 0 (inv@190@01 r)) (< (inv@190@01 r) gsize@172@01)))
    (=
      (Seq_index
        ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@176@01)))))))))))
        (inv@190@01 r))
      r))
  :pattern ((inv@190@01 r))
  :qid |Ref__Integer_value-fctOfInv|)))
; Permissions are non-negative
; Field permissions are at most one
; Permission implies non-null receiver
(assert (forall ((_x_tid@189@01 Int)) (!
  (=>
    (and (<= 0 _x_tid@189@01) (< _x_tid@189@01 gsize@172@01))
    (not
      (=
        (Seq_index
          ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@176@01)))))))))))
          _x_tid@189@01)
        $Ref.null)))
  :pattern ((Seq_index
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@176@01)))))))))))
    _x_tid@189@01))
  :qid |Ref__Integer_value-permImpliesNonNull|)))
(push) ; 2
(set-option :timeout 10)
(assert (not (forall ((r $Ref)) (!
  (and
    (=
      (Seq_index
        ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@176@01)))))))))))
        _x_tid@189@01)
      (Seq_index
        ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@176@01)))))))))
        _x_tid@186@01))
    (=
      (and
        (img@191@01 r)
        (and (<= 0 (inv@190@01 r)) (< (inv@190@01 r) gsize@172@01)))
      (and
        (img@188@01 r)
        (and (<= 0 (inv@187@01 r)) (< (inv@187@01 r) gsize@172@01)))))
  
  :qid |quant-u-7101|))))
(check-sat)
; unknown
(pop) ; 2
; 0.00s
; (get-info :all-statistics)
(declare-const _x_tid@192@01 Int)
(set-option :timeout 0)
(push) ; 2
; [eval] 0 <= _x_tid && _x_tid < gsize
; [eval] 0 <= _x_tid
(push) ; 3
; [then-branch: 85 | !(0 <= _x_tid@192@01) | live]
; [else-branch: 85 | 0 <= _x_tid@192@01 | live]
(push) ; 4
; [then-branch: 85 | !(0 <= _x_tid@192@01)]
(assert (not (<= 0 _x_tid@192@01)))
(pop) ; 4
(push) ; 4
; [else-branch: 85 | 0 <= _x_tid@192@01]
(assert (<= 0 _x_tid@192@01))
; [eval] _x_tid < gsize
(pop) ; 4
(pop) ; 3
; Joined path conditions
; Joined path conditions
(assert (or (<= 0 _x_tid@192@01) (not (<= 0 _x_tid@192@01))))
(assert (and (<= 0 _x_tid@192@01) (< _x_tid@192@01 gsize@172@01)))
; [eval] diz.Ref__c[_x_tid]
(push) ; 3
(set-option :timeout 10)
(assert (not (< $Perm.No $k@179@01)))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(assert (not (>= _x_tid@192@01 0)))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(push) ; 3
(assert (not (<
  _x_tid@192@01
  (Seq_length
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@176@01)))))))))))))))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(pop) ; 2
(declare-fun inv@193@01 ($Ref) Int)
(declare-fun img@194@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
(assert (forall ((_x_tid@192@01 Int)) (!
  (=>
    (and (<= 0 _x_tid@192@01) (< _x_tid@192@01 gsize@172@01))
    (or (<= 0 _x_tid@192@01) (not (<= 0 _x_tid@192@01))))
  :pattern ((Seq_index
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@176@01)))))))))))))
    _x_tid@192@01))
  :qid |Ref__Integer_value-aux|)))
; Check receiver injectivity
(push) ; 2
(assert (not (forall ((_x_tid1@192@01 Int) (_x_tid2@192@01 Int)) (!
  (=>
    (and
      (and (<= 0 _x_tid1@192@01) (< _x_tid1@192@01 gsize@172@01))
      (and (<= 0 _x_tid2@192@01) (< _x_tid2@192@01 gsize@172@01))
      (=
        (Seq_index
          ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@176@01)))))))))))))
          _x_tid1@192@01)
        (Seq_index
          ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@176@01)))))))))))))
          _x_tid2@192@01)))
    (= _x_tid1@192@01 _x_tid2@192@01))
  
  :qid |Ref__Integer_value-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 2
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((_x_tid@192@01 Int)) (!
  (=>
    (and (<= 0 _x_tid@192@01) (< _x_tid@192@01 gsize@172@01))
    (and
      (=
        (inv@193@01 (Seq_index
          ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@176@01)))))))))))))
          _x_tid@192@01))
        _x_tid@192@01)
      (img@194@01 (Seq_index
        ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@176@01)))))))))))))
        _x_tid@192@01))))
  :pattern ((Seq_index
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@176@01)))))))))))))
    _x_tid@192@01))
  :qid |quant-u-7103|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@194@01 r)
      (and (<= 0 (inv@193@01 r)) (< (inv@193@01 r) gsize@172@01)))
    (=
      (Seq_index
        ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@176@01)))))))))))))
        (inv@193@01 r))
      r))
  :pattern ((inv@193@01 r))
  :qid |Ref__Integer_value-fctOfInv|)))
; Permissions are non-negative
; Field permissions are at most one
; Permission implies non-null receiver
(assert (forall ((_x_tid@192@01 Int)) (!
  (=>
    (and (<= 0 _x_tid@192@01) (< _x_tid@192@01 gsize@172@01))
    (not
      (=
        (Seq_index
          ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@176@01)))))))))))))
          _x_tid@192@01)
        $Ref.null)))
  :pattern ((Seq_index
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@176@01)))))))))))))
    _x_tid@192@01))
  :qid |Ref__Integer_value-permImpliesNonNull|)))
(push) ; 2
(set-option :timeout 10)
(assert (not (forall ((r $Ref)) (!
  (and
    (=
      (Seq_index
        ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@176@01)))))))))))))
        _x_tid@192@01)
      (Seq_index
        ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@176@01)))))))))))
        _x_tid@189@01))
    (=
      (and
        (img@194@01 r)
        (and (<= 0 (inv@193@01 r)) (< (inv@193@01 r) gsize@172@01)))
      (and
        (img@191@01 r)
        (and (<= 0 (inv@190@01 r)) (< (inv@190@01 r) gsize@172@01)))))
  
  :qid |quant-u-7104|))))
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
    (=
      (Seq_index
        ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@176@01)))))))))))))
        _x_tid@192@01)
      (Seq_index
        ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@176@01)))))))))
        _x_tid@186@01))
    (=
      (and
        (img@194@01 r)
        (and (<= 0 (inv@193@01 r)) (< (inv@193@01 r) gsize@172@01)))
      (and
        (img@188@01 r)
        (and (<= 0 (inv@187@01 r)) (< (inv@187@01 r) gsize@172@01)))))
  
  :qid |quant-u-7105|))))
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
(declare-const $t@195@01 $Snap)
(assert (= $t@195@01 ($Snap.combine ($Snap.first $t@195@01) ($Snap.second $t@195@01))))
(assert (= ($Snap.first $t@195@01) $Snap.unit))
; [eval] 0 <= tid
(assert (=
  ($Snap.second $t@195@01)
  ($Snap.combine
    ($Snap.first ($Snap.second $t@195@01))
    ($Snap.second ($Snap.second $t@195@01)))))
(assert (= ($Snap.first ($Snap.second $t@195@01)) $Snap.unit))
; [eval] tid < tcount
(assert (=
  ($Snap.second ($Snap.second $t@195@01))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second $t@195@01)))
    ($Snap.second ($Snap.second ($Snap.second $t@195@01))))))
(assert (= ($Snap.first ($Snap.second ($Snap.second $t@195@01))) $Snap.unit))
; [eval] tid == lid
(assert (=
  ($Snap.second ($Snap.second ($Snap.second $t@195@01)))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@195@01))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@195@01)))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@195@01))))
  $Snap.unit))
; [eval] tcount == gsize
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@195@01))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@195@01)))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@195@01))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@195@01)))))
  $Snap.unit))
; [eval] gid == 0
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@195@01)))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@195@01))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@195@01)))))))))
(declare-const $k@196@01 $Perm)
(assert ($Perm.isReadVar $k@196@01))
(assert (<= $Perm.No $k@196@01))
(assert (<= $k@196@01 $Perm.Write))
(assert (=> (< $Perm.No $k@196@01) (not (= diz@169@01 $Ref.null))))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@195@01))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@195@01)))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@195@01))))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@195@01)))))))
  $Snap.unit))
; [eval] |diz.Ref__a| == tcount
; [eval] |diz.Ref__a|
(push) ; 3
(set-option :timeout 10)
(assert (not (< $Perm.No $k@196@01)))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(assert (=
  (Seq_length
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@195@01))))))))
  tcount@171@01))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@195@01)))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@195@01))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@195@01)))))))))))
(declare-const $k@197@01 $Perm)
(assert ($Perm.isReadVar $k@197@01))
(assert (<= $Perm.No $k@197@01))
(assert (<= $k@197@01 $Perm.Write))
(assert (=> (< $Perm.No $k@197@01) (not (= diz@169@01 $Ref.null))))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@195@01))))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@195@01)))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@195@01))))))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@195@01)))))))))
  $Snap.unit))
; [eval] |diz.Ref__b| == tcount
; [eval] |diz.Ref__b|
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (< $Perm.No $k@197@01)))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(assert (=
  (Seq_length
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@195@01))))))))))
  tcount@171@01))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@195@01)))))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@195@01))))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@195@01)))))))))))))
(declare-const $k@198@01 $Perm)
(assert ($Perm.isReadVar $k@198@01))
(assert (<= $Perm.No $k@198@01))
(assert (<= $k@198@01 $Perm.Write))
(assert (=> (< $Perm.No $k@198@01) (not (= diz@169@01 $Ref.null))))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@195@01))))))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@195@01)))))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@195@01))))))))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@195@01)))))))))))
  $Snap.unit))
; [eval] |diz.Ref__c| == tcount
; [eval] |diz.Ref__c|
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (< $Perm.No $k@198@01)))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(assert (=
  (Seq_length
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@195@01))))))))))))
  tcount@171@01))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@195@01)))))))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@195@01))))))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@195@01)))))))))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@195@01))))))))))))
  $Snap.unit))
; [eval] diz.Ref__a == old(diz.Ref__a)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (< $Perm.No $k@196@01)))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; [eval] old(diz.Ref__a)
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
  ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@195@01)))))))
  ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@176@01)))))))))))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@195@01))))))))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@195@01)))))))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@195@01))))))))))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@195@01)))))))))))))
  $Snap.unit))
; [eval] diz.Ref__b == old(diz.Ref__b)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (< $Perm.No $k@197@01)))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; [eval] old(diz.Ref__b)
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
  ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@195@01)))))))))
  ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@176@01)))))))))))))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@195@01)))))))))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@195@01))))))))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@195@01)))))))))))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@195@01))))))))))))))
  $Snap.unit))
; [eval] diz.Ref__c == old(diz.Ref__c)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (< $Perm.No $k@198@01)))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; [eval] old(diz.Ref__c)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (< $Perm.No $k@179@01)))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(assert (Seq_equal
  ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@195@01)))))))))))
  ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@176@01)))))))))))))))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@195@01))))))))))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@195@01)))))))))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@195@01))))))))))))))))))
; [eval] diz.Ref__a[tid]
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (< $Perm.No $k@196@01)))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(assert (not (>= tid@173@01 0)))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(push) ; 3
(assert (not (<
  tid@173@01
  (Seq_length
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@195@01)))))))))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(declare-const sm@199@01 $FVF<Ref__Integer_value>)
; Definitional axioms for singleton-SM's value
(assert (=
  ($FVF.lookup_Ref__Integer_value (as sm@199@01  $FVF<Ref__Integer_value>) (Seq_index
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@195@01)))))))
    tid@173@01))
  ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@195@01))))))))))))))))))
(assert (<=
  $Perm.No
  (ite
    (=
      (Seq_index
        ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@195@01)))))))
        tid@173@01)
      (Seq_index
        ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@195@01)))))))
        tid@173@01))
    $Perm.Write
    $Perm.No)))
(assert (<=
  (ite
    (=
      (Seq_index
        ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@195@01)))))))
        tid@173@01)
      (Seq_index
        ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@195@01)))))))
        tid@173@01))
    $Perm.Write
    $Perm.No)
  $Perm.Write))
(assert (=>
  (=
    (Seq_index
      ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@195@01)))))))
      tid@173@01)
    (Seq_index
      ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@195@01)))))))
      tid@173@01))
  (not
    (=
      (Seq_index
        ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@195@01)))))))
        tid@173@01)
      $Ref.null))))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@195@01)))))))))))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@195@01))))))))))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@195@01)))))))))))))))))))
; [eval] diz.Ref__b[tid]
(push) ; 3
(set-option :timeout 10)
(assert (not (< $Perm.No $k@197@01)))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(assert (not (>= tid@173@01 0)))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(push) ; 3
(assert (not (<
  tid@173@01
  (Seq_length
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@195@01)))))))))))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(declare-const sm@200@01 $FVF<Ref__Integer_value>)
; Definitional axioms for singleton-SM's value
(assert (=
  ($FVF.lookup_Ref__Integer_value (as sm@200@01  $FVF<Ref__Integer_value>) (Seq_index
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@195@01)))))))))
    tid@173@01))
  ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@195@01)))))))))))))))))))
(push) ; 3
(set-option :timeout 10)
(assert (not (and
  (and
    (=
      (Seq_index
        ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@195@01)))))))))
        tid@173@01)
      (Seq_index
        ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@195@01)))))))))
        tid@173@01))
    (=
      (Seq_index
        ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@195@01)))))))
        tid@173@01)
      (Seq_index
        ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@195@01)))))))
        tid@173@01)))
  (=
    (Seq_index
      ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@195@01)))))))))
      tid@173@01)
    (Seq_index
      ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@195@01)))))))
      tid@173@01)))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(assert (<=
  $Perm.No
  (ite
    (=
      (Seq_index
        ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@195@01)))))))))
        tid@173@01)
      (Seq_index
        ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@195@01)))))))))
        tid@173@01))
    (/ (to_real 1) (to_real 4))
    $Perm.No)))
(assert (<=
  (ite
    (=
      (Seq_index
        ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@195@01)))))))))
        tid@173@01)
      (Seq_index
        ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@195@01)))))))))
        tid@173@01))
    (/ (to_real 1) (to_real 4))
    $Perm.No)
  $Perm.Write))
(assert (=>
  (=
    (Seq_index
      ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@195@01)))))))))
      tid@173@01)
    (Seq_index
      ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@195@01)))))))))
      tid@173@01))
  (not
    (=
      (Seq_index
        ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@195@01)))))))))
        tid@173@01)
      $Ref.null))))
; [eval] tid > 0
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (not (> tid@173@01 0))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (> tid@173@01 0)))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; [then-branch: 86 | tid@173@01 > 0 | live]
; [else-branch: 86 | !(tid@173@01 > 0) | live]
(set-option :timeout 0)
(push) ; 3
; [then-branch: 86 | tid@173@01 > 0]
(assert (> tid@173@01 0))
; [eval] diz.Ref__b[tid - 1]
(push) ; 4
(set-option :timeout 10)
(assert (not (< $Perm.No $k@197@01)))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; [eval] tid - 1
(set-option :timeout 0)
(push) ; 4
(assert (not (>= (- tid@173@01 1) 0)))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(push) ; 4
(assert (not (<
  (- tid@173@01 1)
  (Seq_length
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@195@01)))))))))))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(declare-const sm@201@01 $FVF<Ref__Integer_value>)
; Definitional axioms for singleton-SM's value
(assert (=
  ($FVF.lookup_Ref__Integer_value (as sm@201@01  $FVF<Ref__Integer_value>) (Seq_index
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@195@01)))))))))
    (- tid@173@01 1)))
  ($SortWrappers.$SnapToInt ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@195@01)))))))))))))))))))
(push) ; 4
(set-option :timeout 10)
(assert (not (and
  (and
    (=
      (Seq_index
        ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@195@01)))))))))
        (- tid@173@01 1))
      (Seq_index
        ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@195@01)))))))))
        (- tid@173@01 1)))
    (=
      (Seq_index
        ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@195@01)))))))))
        tid@173@01)
      (Seq_index
        ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@195@01)))))))))
        tid@173@01)))
  (=
    (Seq_index
      ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@195@01)))))))))
      (- tid@173@01 1))
    (Seq_index
      ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@195@01)))))))))
      tid@173@01)))))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not (and
  (and
    (=
      (Seq_index
        ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@195@01)))))))))
        (- tid@173@01 1))
      (Seq_index
        ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@195@01)))))))))
        (- tid@173@01 1)))
    (=
      (Seq_index
        ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@195@01)))))))
        tid@173@01)
      (Seq_index
        ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@195@01)))))))
        tid@173@01)))
  (=
    (Seq_index
      ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@195@01)))))))))
      (- tid@173@01 1))
    (Seq_index
      ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@195@01)))))))
      tid@173@01)))))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(assert (<=
  $Perm.No
  (ite
    (=
      (Seq_index
        ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@195@01)))))))))
        (- tid@173@01 1))
      (Seq_index
        ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@195@01)))))))))
        (- tid@173@01 1)))
    (/ (to_real 1) (to_real 4))
    $Perm.No)))
(assert (<=
  (ite
    (=
      (Seq_index
        ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@195@01)))))))))
        (- tid@173@01 1))
      (Seq_index
        ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@195@01)))))))))
        (- tid@173@01 1)))
    (/ (to_real 1) (to_real 4))
    $Perm.No)
  $Perm.Write))
(assert (=>
  (=
    (Seq_index
      ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@195@01)))))))))
      (- tid@173@01 1))
    (Seq_index
      ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@195@01)))))))))
      (- tid@173@01 1)))
  (not
    (=
      (Seq_index
        ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@195@01)))))))))
        (- tid@173@01 1))
      $Ref.null))))
(pop) ; 3
(set-option :timeout 0)
(push) ; 3
; [else-branch: 86 | !(tid@173@01 > 0)]
(assert (not (> tid@173@01 0)))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@195@01))))))))))))))))
  $Snap.unit))
(pop) ; 3
(pop) ; 2
(push) ; 2
; [eval] 0 <= tid
; [eval] tid < tcount
; [eval] tid == lid
; [eval] tcount == gsize
; [eval] gid == 0
(declare-const $k@202@01 $Perm)
(assert ($Perm.isReadVar $k@202@01))
(push) ; 3
(set-option :timeout 10)
(assert (not (not (= $k@177@01 $Perm.No))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(assert (< $k@202@01 $k@177@01))
(assert (<= $Perm.No (- $k@177@01 $k@202@01)))
(assert (<= (- $k@177@01 $k@202@01) $Perm.Write))
(assert (=> (< $Perm.No (- $k@177@01 $k@202@01)) (not (= diz@169@01 $Ref.null))))
; [eval] |diz.Ref__a| == tcount
; [eval] |diz.Ref__a|
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (< $Perm.No $k@177@01)))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(declare-const $k@203@01 $Perm)
(assert ($Perm.isReadVar $k@203@01))
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (not (= $k@178@01 $Perm.No))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(assert (< $k@203@01 $k@178@01))
(assert (<= $Perm.No (- $k@178@01 $k@203@01)))
(assert (<= (- $k@178@01 $k@203@01) $Perm.Write))
(assert (=> (< $Perm.No (- $k@178@01 $k@203@01)) (not (= diz@169@01 $Ref.null))))
; [eval] |diz.Ref__b| == tcount
; [eval] |diz.Ref__b|
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (< $Perm.No $k@178@01)))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(declare-const $k@204@01 $Perm)
(assert ($Perm.isReadVar $k@204@01))
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (not (= $k@179@01 $Perm.No))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(assert (< $k@204@01 $k@179@01))
(assert (<= $Perm.No (- $k@179@01 $k@204@01)))
(assert (<= (- $k@179@01 $k@204@01) $Perm.Write))
(assert (=> (< $Perm.No (- $k@179@01 $k@204@01)) (not (= diz@169@01 $Ref.null))))
; [eval] |diz.Ref__c| == tcount
; [eval] |diz.Ref__c|
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (< $Perm.No $k@179@01)))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; [eval] diz.Ref__a == old(diz.Ref__a)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (< $Perm.No $k@177@01)))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; [eval] old(diz.Ref__a)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (< $Perm.No $k@177@01)))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; [eval] diz.Ref__b == old(diz.Ref__b)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (< $Perm.No $k@178@01)))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; [eval] old(diz.Ref__b)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (< $Perm.No $k@178@01)))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; [eval] diz.Ref__c == old(diz.Ref__c)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (< $Perm.No $k@179@01)))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; [eval] old(diz.Ref__c)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (< $Perm.No $k@179@01)))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; [eval] diz.Ref__a[tid]
(set-option :timeout 0)
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
(assert (not (>= tid@173@01 0)))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(push) ; 3
(assert (not (<
  tid@173@01
  (Seq_length
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@176@01)))))))))))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Precomputing data for removing quantified permissions
(define-fun pTaken@205@01 ((r $Ref)) $Perm
  (ite
    (=
      r
      (Seq_index
        ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@176@01)))))))))
        tid@173@01))
    ($Perm.min
      (ite
        (and
          (img@188@01 r)
          (and (<= 0 (inv@187@01 r)) (< (inv@187@01 r) gsize@172@01)))
        $Perm.Write
        $Perm.No)
      $Perm.Write)
    $Perm.No))
(define-fun pTaken@206@01 ((r $Ref)) $Perm
  (ite
    (=
      r
      (Seq_index
        ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@176@01)))))))))
        tid@173@01))
    ($Perm.min
      (ite
        (and
          (img@191@01 r)
          (and (<= 0 (inv@190@01 r)) (< (inv@190@01 r) gsize@172@01)))
        $Perm.Write
        $Perm.No)
      (- $Perm.Write (pTaken@205@01 r)))
    $Perm.No))
(define-fun pTaken@207@01 ((r $Ref)) $Perm
  (ite
    (=
      r
      (Seq_index
        ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@176@01)))))))))
        tid@173@01))
    ($Perm.min
      (ite
        (and
          (img@194@01 r)
          (and (<= 0 (inv@193@01 r)) (< (inv@193@01 r) gsize@172@01)))
        (/ (to_real 1) (to_real 4))
        $Perm.No)
      (- (- $Perm.Write (pTaken@205@01 r)) (pTaken@206@01 r)))
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
          (img@188@01 r)
          (and (<= 0 (inv@187@01 r)) (< (inv@187@01 r) gsize@172@01)))
        $Perm.Write
        $Perm.No)
      (pTaken@205@01 r))
    $Perm.No)
  
  :qid |quant-u-7107|))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (forall ((r $Ref)) (!
  (= (pTaken@205@01 r) $Perm.No)
  
  :qid |quant-u-7108|))))
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
    (=
      r
      (Seq_index
        ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@176@01)))))))))
        tid@173@01))
    (= (- $Perm.Write (pTaken@205@01 r)) $Perm.No))
  
  :qid |quant-u-7109|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Final check if taken enough permissions
; Done removing quantified permissions
; [eval] diz.Ref__b[tid]
(set-option :timeout 0)
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
(assert (not (>= tid@173@01 0)))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(push) ; 3
(assert (not (<
  tid@173@01
  (Seq_length
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@176@01)))))))))))))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Precomputing data for removing quantified permissions
(define-fun pTaken@208@01 ((r $Ref)) $Perm
  (ite
    (=
      r
      (Seq_index
        ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@176@01)))))))))))
        tid@173@01))
    ($Perm.min
      (ite
        (and
          (img@191@01 r)
          (and (<= 0 (inv@190@01 r)) (< (inv@190@01 r) gsize@172@01)))
        $Perm.Write
        $Perm.No)
      (/ (to_real 1) (to_real 4)))
    $Perm.No))
(define-fun pTaken@209@01 ((r $Ref)) $Perm
  (ite
    (=
      r
      (Seq_index
        ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@176@01)))))))))))
        tid@173@01))
    ($Perm.min
      (ite
        (and
          (img@194@01 r)
          (and (<= 0 (inv@193@01 r)) (< (inv@193@01 r) gsize@172@01)))
        (/ (to_real 1) (to_real 4))
        $Perm.No)
      (- (/ (to_real 1) (to_real 4)) (pTaken@208@01 r)))
    $Perm.No))
(define-fun pTaken@210@01 ((r $Ref)) $Perm
  (ite
    (=
      r
      (Seq_index
        ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@176@01)))))))))))
        tid@173@01))
    ($Perm.min
      (ite
        (and
          (img@188@01 r)
          (and (<= 0 (inv@187@01 r)) (< (inv@187@01 r) gsize@172@01)))
        (- $Perm.Write (pTaken@205@01 r))
        $Perm.No)
      (- (- (/ (to_real 1) (to_real 4)) (pTaken@208@01 r)) (pTaken@209@01 r)))
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
          (img@191@01 r)
          (and (<= 0 (inv@190@01 r)) (< (inv@190@01 r) gsize@172@01)))
        $Perm.Write
        $Perm.No)
      (pTaken@208@01 r))
    $Perm.No)
  
  :qid |quant-u-7111|))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (forall ((r $Ref)) (!
  (= (pTaken@208@01 r) $Perm.No)
  
  :qid |quant-u-7112|))))
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
    (=
      r
      (Seq_index
        ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@176@01)))))))))))
        tid@173@01))
    (= (- (/ (to_real 1) (to_real 4)) (pTaken@208@01 r)) $Perm.No))
  
  :qid |quant-u-7113|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Final check if taken enough permissions
; Done removing quantified permissions
; [eval] tid > 0
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (not (> tid@173@01 0))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (> tid@173@01 0)))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; [then-branch: 87 | tid@173@01 > 0 | live]
; [else-branch: 87 | !(tid@173@01 > 0) | live]
(set-option :timeout 0)
(push) ; 3
; [then-branch: 87 | tid@173@01 > 0]
(assert (> tid@173@01 0))
; [eval] diz.Ref__b[tid - 1]
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
(assert (not (>= (- tid@173@01 1) 0)))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(push) ; 4
(assert (not (<
  (- tid@173@01 1)
  (Seq_length
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@176@01)))))))))))))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; Precomputing data for removing quantified permissions
(define-fun pTaken@211@01 ((r $Ref)) $Perm
  (ite
    (=
      r
      (Seq_index
        ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@176@01)))))))))))
        (- tid@173@01 1)))
    ($Perm.min
      (ite
        (and
          (img@191@01 r)
          (and (<= 0 (inv@190@01 r)) (< (inv@190@01 r) gsize@172@01)))
        (- $Perm.Write (pTaken@208@01 r))
        $Perm.No)
      (/ (to_real 1) (to_real 4)))
    $Perm.No))
(define-fun pTaken@212@01 ((r $Ref)) $Perm
  (ite
    (=
      r
      (Seq_index
        ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@176@01)))))))))))
        (- tid@173@01 1)))
    ($Perm.min
      (ite
        (and
          (img@188@01 r)
          (and (<= 0 (inv@187@01 r)) (< (inv@187@01 r) gsize@172@01)))
        (- $Perm.Write (pTaken@205@01 r))
        $Perm.No)
      (- (/ (to_real 1) (to_real 4)) (pTaken@211@01 r)))
    $Perm.No))
(define-fun pTaken@213@01 ((r $Ref)) $Perm
  (ite
    (=
      r
      (Seq_index
        ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@176@01)))))))))))
        (- tid@173@01 1)))
    ($Perm.min
      (ite
        (and
          (img@194@01 r)
          (and (<= 0 (inv@193@01 r)) (< (inv@193@01 r) gsize@172@01)))
        (/ (to_real 1) (to_real 4))
        $Perm.No)
      (- (- (/ (to_real 1) (to_real 4)) (pTaken@211@01 r)) (pTaken@212@01 r)))
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
          (img@191@01 r)
          (and (<= 0 (inv@190@01 r)) (< (inv@190@01 r) gsize@172@01)))
        (- $Perm.Write (pTaken@208@01 r))
        $Perm.No)
      (pTaken@211@01 r))
    $Perm.No)
  
  :qid |quant-u-7115|))))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not (forall ((r $Ref)) (!
  (= (pTaken@211@01 r) $Perm.No)
  
  :qid |quant-u-7116|))))
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
        (- tid@173@01 1)))
    (= (- (/ (to_real 1) (to_real 4)) (pTaken@211@01 r)) $Perm.No))
  
  :qid |quant-u-7117|))))
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
; [else-branch: 87 | !(tid@173@01 > 0)]
(assert (not (> tid@173@01 0)))
(pop) ; 3
(pop) ; 2
(pop) ; 1
